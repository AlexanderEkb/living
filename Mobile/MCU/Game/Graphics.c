#include <string.h>

#include "Game.h"
#include "Graphics.h"

#include "FooterTiles.h"
#include "WorldTiles.c"
#include "WorldBlocks.c"
#include "WorldBackgrounds.c"
#include "Animations.h"
#include "ChrScripts.h"
#include "Locations.h"

#include "DisplayDriver.h"

#define TILES_PER_COL 25
#define TILES_PER_ROW	40

#define GAUGE_LENGTH	    (120)

#define TILE_UNTOUCHED      (0x00)
#define TILE_REDRAWN        (0x01)
#define TILE_PENDING        (0x02)

#define WPN_ICON_SIZE  (2)          // size of weapon's representation at
                                    // footer, n*n

#define TILES_PER_ICON (WPN_ICON_SIZE*WPN_ICON_SIZE)

#define WPN_ICONS_START     (0x31)  // N of the first weapon's first tile.
                                    // FooterTiles[0x31] is the top-left corner
                                    // of boomerang's image
#define ICONS_FIRST_ROW     (22)    // First row on screen, occupied by
                                    // weapon's icons
#define ICONS_FIRST_COL     (27)    // First column on screen, occupied by
                                    // weapon's icons
#define SPACE_BTW_ICONS     (1)

#define CHAR_TERMINATOR 0xff

#define BYTES_PER_TILE (TILE_WIDTH * TILE_HEIGHT)

#define UnpackPixel(p) (p==TRANSPARENT_COLOR?BACKGROUND_COLOR:(((p & 0xe0)<<8) | ((p & 0x1D) << 6) | ((p & 0x03) << 3)))
#define GetWidth(x) ((x.r) - (x.l) + 1)
#define GetHeight(x) ((x.b) - (x.t) + 1)

typedef enum {NEW_POSITION, OLD_POSITION} Pos_t;

typedef struct {
    unsigned int l;
    unsigned int t;
    unsigned int r;
    unsigned int b;
} Rect_t;

unsigned char PrimaryBuffer[BUFFER_HEIGHT*BUFFER_WIDTH];
unsigned char SecondaryBuffer[4096];

void RefreshOneSprite(unsigned int n);
void WipeAfterOneSprite(unsigned int n);
void WipeAllDirtyTiles();
void CalculateBounds(unsigned int n, Rect_t *r, Pos_t Position);
unsigned int BelongsToRect(unsigned int r, unsigned int c, Rect_t *rect);

void DrawWpnSelection(unsigned int Weapon, DrawStyle_t Style) {
    unsigned int Row, Col, PixelIdx, TilesIdx;
    unsigned int LCDRow, LCDCol, j;
    unsigned char Pixel;
    unsigned char buf[TILE_WIDTH * TILE_HEIGHT];

    Weapon -= 1;    // Because weapon indexes in the game begins from 1
    for(Row=0;Row<WPN_ICON_SIZE;Row++)
        for(Col=0;Col<WPN_ICON_SIZE;Col++)
            for(PixelIdx=0;PixelIdx<TILE_WIDTH*TILE_HEIGHT;PixelIdx++) {
                TilesIdx = (WPN_ICONS_START + Weapon * TILES_PER_ICON + Row * WPN_ICON_SIZE + Col) * TILE_WIDTH * TILE_HEIGHT + PixelIdx;
                Pixel = FooterTiles[TilesIdx];
                buf[PixelIdx] = (Style == INVERSE)?~Pixel:Pixel;
                LCDRow = ICONS_FIRST_ROW + Row;
                LCDCol = ICONS_FIRST_COL + Weapon * (WPN_ICON_SIZE + SPACE_BTW_ICONS) + Col;
                LCD_SetWindow(LCDCol*TILE_WIDTH, (LCDRow*TILE_HEIGHT) + 20, (LCDCol + 1)*TILE_WIDTH-1, DISPLAY_HEIGHT);
                LCD_WriteRAM_Prepare();
                for(j=0;j<TILE_WIDTH*TILE_HEIGHT;j++)
                        LCD_WriteRAM(UnpackPixel(buf[j]));
            }
}

void CopyNewToOld(int c) {
    // c = Game.Chain[c];

	CharData[c].AltX = CharData[c].X;
	CharData[c].AltY = CharData[c].Y;
	CharData[c].AltAnimation = CharData[c].Animation;
	CharData[c].AltFrame = CharData[c].Frame;
	CharData[c].AltObstacles = CharData[c].Obstacles;
	CharData[c].AltJumpPower = CharData[c].JumpPower;
}

void RefreshDisplay() {
	unsigned int i;

    // Prepare buffer
    memset(SecondaryBuffer, TILE_UNTOUCHED, sizeof(SecondaryBuffer));


    // Pass every sprite - at first, for actual position,
    // at last - for previous, that needs to be erased.
	for(i=0;i<MAX_CHARACTERS_COUNT;i++){
		if(Game.Chain[i] == UNUSED)
			break;
        if(CHAR_FLAG(Game.Chain[i], CF_REMOVED)) {
            if(!CHAR_FLAG(Game.Chain[i], CF_NOT_REDRAWN))
                WipeAfterOneSprite(i);
            RemoveChar(i);
        }
    }
	for(i=0;i<MAX_CHARACTERS_COUNT;i++){
        if(Game.Chain[i] == UNUSED)
			break;
        // Phase 1 - redraw actual view
        if(!CHAR_FLAG(Game.Chain[i], CF_SUSPENDED)) {
            RefreshOneSprite(i);
            WipeAfterOneSprite(i);
            CopyNewToOld(Game.Chain[i]);
            CharData[Game.Chain[i]].Flags &= ~(CF_NOT_REDRAWN);
        }
	}
    WipeAllDirtyTiles();
}

void WipeAfterOneSprite(unsigned int n) {
    Rect_t Rect;
    unsigned int r, c, t;

    CalculateBounds(n, &Rect, OLD_POSITION);

    for(r=Rect.t;r<=Rect.b;r++)
      for(c=Rect.l;c<=Rect.r;c++) {
        t = SecondaryBuffer[r * TILES_PER_ROW + c];
        if(t == TILE_UNTOUCHED)
            SecondaryBuffer[r * TILES_PER_ROW + c] = TILE_PENDING;
      }

}

void WipeAllDirtyTiles() {
    unsigned int r, c, t;

    for(r=0;r<TILES_PER_COL;r++)
        for(c=0;c<TILES_PER_ROW;c++)
            if(SecondaryBuffer[r * TILES_PER_ROW + c] == TILE_PENDING) {
                t = GetTileAt(r, c);
                DrawTile(r, c, t, WorldTiles);
            }
}

void RefreshOneSprite(unsigned int n) {
    int i, Ptr;
    unsigned int Tile;
    unsigned int Row, Col;
    unsigned int TileRow, TileCol;
    signed int SpriteRow, SpriteCol;
    int x, y;
    signed int ActualWidth, ActualHeight;
    void **Animation;
    Sprite_t *Sprite;
    Rect_t Origin, Rect;
    CharData_t *chr;
    unsigned char TileBuffer[TILE_WIDTH * TILE_HEIGHT];
    unsigned char pixel;

    CalculateBounds(n, &Origin, NEW_POSITION);
    for(Row = Origin.t;Row <= Origin.b;Row++)
        for(Col = Origin.l;Col <= Origin.r;Col++) {
            // Check if this tile is already drawn
            if(SecondaryBuffer[Row * TILES_PER_ROW + Col] == TILE_REDRAWN)
                continue;
            // Peparing the background
            Tile = GetTileAt(Row, Col);
            memcpy(TileBuffer, &WorldTiles[Tile * TILE_WIDTH * TILE_HEIGHT], TILE_WIDTH * TILE_HEIGHT);
            // Draw every sprite, intersecting this tile
            for(i = n;i < MAX_CHARACTERS_COUNT;i++) {
                if(Game.Chain[i] == UNUSED)
                    break;
                chr = &CharData[Game.Chain[i]];
                CalculateBounds(i, &Rect, NEW_POSITION);
                if(BelongsToRect(Row, Col, &Rect)) {
                    // Draw appropriate part of the sprite to the tile buffer
                    // Figure out sprite's data:
                    Animation = (void *)Animations[chr->Animation];
                    Sprite = (Sprite_t *)(Animation[chr->Frame]);

                    TileRow = (Row == (char)(chr->Y >> 8))?((chr->Y) >> 5) & 0x07:0;
                    TileCol = (Col == (char)(chr->X >> 8))?((chr->X) >> 5) & 0x07:0;

                    SpriteRow = (Row - (char)(chr->Y >> 8)) * TILE_HEIGHT -
                      ((chr->Y >> 5) & 0x07);
                    if(SpriteRow < 0)
                      SpriteRow = 0;
                    SpriteCol = (Col - (char)(chr->X >> 8)) * TILE_HEIGHT -
                      ((chr->X >> 5) & 0x07);
                    if(SpriteCol < 0)
                      SpriteCol = 0;

                    ActualWidth = TILE_WIDTH;
                    if(ActualWidth + SpriteCol > Sprite->Width)
                      ActualWidth = Sprite->Width - SpriteCol;
                    if(ActualWidth + TileCol > TILE_WIDTH)
                      ActualWidth = TILE_WIDTH - TileCol;
                    ActualHeight = TILE_HEIGHT;
                    if(ActualHeight + SpriteRow > Sprite->Height)
                      ActualHeight = Sprite->Height - SpriteRow;
                    if(ActualHeight + TileRow > TILE_HEIGHT)
                      ActualHeight = TILE_HEIGHT - TileRow;

                    for(y=0;y<ActualHeight;y++)
                      for(x=0;x<ActualWidth;x++) {
                        pixel = ((unsigned char *)(Sprite->Data))[((y + SpriteRow) * Sprite->Width + SpriteCol + x)];
                        if(pixel != TRANSPARENT_COLOR)
                          TileBuffer[(y + TileRow) * TILE_WIDTH + (x + TileCol)] = pixel;
                      }
                }
            }

            LCD_SetWindow(Col*TILE_WIDTH, (Row*TILE_HEIGHT)+20, (Col+1)*TILE_WIDTH-1, DISPLAY_HEIGHT);
            LCD_WriteRAM_Prepare();
            for(Ptr=0;Ptr<TILE_WIDTH*TILE_HEIGHT;Ptr++)
              LCD_WriteRAM(UnpackPixel(TileBuffer[Ptr]));
            SecondaryBuffer[Row * TILES_PER_ROW + Col] = TILE_REDRAWN;
        }

}

void CalculateBounds(unsigned int n, Rect_t *rect, Pos_t Position) {
    CharData_t *chr = &CharData[Game.Chain[n]];
    void **Animation = (void *)Animations[chr->Animation];
    Sprite_t *Sprite = (Sprite_t *)(Animation[chr->Frame]);

    signed int l, r, t, b;

    if(Position == OLD_POSITION) {
      l = chr->AltX >> 5;
      t = chr->AltY >> 5;
    } else {
      l = chr->X >> 5;
      t = chr->Y >> 5;
    }
    r = l + Sprite->Width - 1;
    b = t + Sprite->Height - 1;

    if(l<0)
      l = 0;
    if(t<0)
      t = 0;
    if(r >= BUFFER_WIDTH * TILE_WIDTH)
      r = BUFFER_WIDTH * TILE_WIDTH - 1;
//    if(b >= DISPLAY_HEIGHT / TILE_HEIGHT)
    if(b >= BUFFER_HEIGHT * TILE_HEIGHT)
      b = BUFFER_HEIGHT * TILE_HEIGHT - 1;

    rect->l = l >> 3;
    rect->t = t >> 3;
    rect->r = r >> 3;
    rect->b = b >> 3;
}

unsigned int BelongsToRect(unsigned int r, unsigned int c, Rect_t *rect) {
    if((r >= rect->t) && (r <= rect->b) && (c >= rect->l) && (c <= rect->r))
        return 1;
    else
        return 0;
}

unsigned int GetTileAt(int Row, int Col) {
	return PrimaryBuffer[Row * TILES_PER_ROW + Col];
}

void SetTileAt(int Row, int Col, unsigned int Tile) {
    PrimaryBuffer[Row * TILES_PER_ROW + Col] = Tile;
}

void DrawTile(int Row, int Col, char Tile, unsigned char const *Tileset) {
		int i;
		unsigned char const *pixel = &Tileset[TILE_WIDTH*TILE_HEIGHT*Tile];

		LCD_SetWindow(Col*TILE_WIDTH, (Row*TILE_HEIGHT)+20, (Col+1)*TILE_WIDTH-1, DISPLAY_HEIGHT);
		LCD_WriteRAM_Prepare();
		for(i=0;i<TILE_WIDTH*TILE_HEIGHT;i++) {
				LCD_WriteRAM(UnpackPixel(*pixel));
				pixel++;
		}
}

void DrawFooter() {
		int i = 0;
		char c, Row, Col;

		for(;;) {
				c = Footer[i++];
				if(c==CHAR_TERMINATOR)
						break;
				else if(c==0x00) {
						Row = Footer[i++];
						Col = Footer[i++];
				} else {
						DrawTile(Row, Col, c, FooterTiles);
						if(++Col>=TILES_PER_ROW) {
								Col=0;
								if(++Row>=TILES_PER_COL)
										Row=0;
						}

				}
		}
}

void DrawSingleGauge(int n, unsigned int Value, unsigned short Color) {
	int i;
	int r;
	int y = 22*TILE_HEIGHT + n*3 + 20;
	unsigned short c;

	Value <<= 1;
	for(r=0;r<2;r++) {
		LCD_SetWindow(24, y, 143, y);
		LCD_WriteRAM_Prepare();
		for(i=0;i<GAUGE_LENGTH;i++) {
			c = i<=Value?Color:0;
			LCD_WriteRAM(c);
		}
		y++;
	}
}

void ClearPrimaryBuffer() {
		memset(PrimaryBuffer, 0x00, BUFFER_WIDTH*BUFFER_HEIGHT);
}

void BuildBackground(int l) {
	const Background_t *bkg = WorldBackgrounds[l];

	int Block;
	int Row;
	int Col;
	int Width;
	int Height;
	int r, c, p;
	char const *b;
	char Tile;

	ClearPrimaryBuffer();
	for(Block = 0;Block<bkg->Count;Block++) {
			Row = bkg->parts[Block].Row;
			Col = bkg->parts[Block].Col;
			b = bkg->parts[Block].block;
			Width = b[0];
			Height = b[1];
			p = 2;
			for(r=0;r<Height;r++)
					for(c=0;c<Width;c++){
						Tile = b[p++];
						if(Tile)
							PrimaryBuffer[(Row+r)*TILES_PER_ROW+Col+c] = Tile;
					}
	}
}

void DrawPrimaryBuffer() {
		int Row, Col;
		unsigned char *Tile = PrimaryBuffer;

		for(Row=0;Row<BUFFER_HEIGHT;Row++)
				for(Col=0;Col<BUFFER_WIDTH;Col++) {
						DrawTile(Row, Col, *Tile, WorldTiles);
						Tile++;
				}
}

void DrawSprite(int SpriteX, int SpriteY, int Animation, int Frame) {
	int Row, Col;
	int Left, Top, Right, Bot;
	int i;
	int Width, Height;
	int R, C;
	unsigned int X, Y, XOff, YOff;
	char Tile;
	unsigned char *pixel;
	unsigned char Color;
	Sprite_t *Sprite = ((Sprite_t *)*((void const **)Animations[Animation]))+Frame;
	Col = SpriteX >> 8;
	Row = SpriteY >> 8;
	Width = Sprite->Width / TILE_WIDTH + 1;
	Height = Sprite->Height / TILE_HEIGHT + 1;

	Left = Col>0?Col-1:0;
	Right = (Col+Width)>=(TILES_PER_ROW)?TILES_PER_ROW-1:Col+Width;
	Top = Row>0?Row-1:0;
	Bot = (Row+Height)>=TILES_PER_COL?TILES_PER_COL-1:Row+Height;

	Width = Right-Left+1;
	Height = Bot-Top+1;

	// Draw background

	for(R=0;R<Height;R++)
		for(C=0;C<Width;C++) {
			Tile = GetTileAt(Top+R, Left+C);
    		for(Y=0;Y<TILE_HEIGHT;Y++)
        		memcpy(&SecondaryBuffer[R*TILE_WIDTH*TILE_HEIGHT*Width+C*TILE_WIDTH+Y*TILE_WIDTH*Width],
                	&WorldTiles[TILE_WIDTH*TILE_HEIGHT*Tile+Y*TILE_WIDTH],
					8);
		}

	// Draw sprite
	Width *= TILE_WIDTH;
	Height *= TILE_HEIGHT;

	pixel = Sprite->Data;
	XOff = (Col-Left)*TILE_WIDTH + ((SpriteX & 0xff) >> 5);
	YOff = (Row-Top)*TILE_HEIGHT + ((SpriteY & 0xff) >> 5);
	for(Y=0;Y<Sprite->Height;Y++)
		for(X=0;X<Sprite->Width;X++) {
			Color = pixel[Y*Sprite->Width+X];
			if(Color)
				SecondaryBuffer[(Y+YOff)*Width+X+XOff] = Color;
		}

	int count = Width*Height;
	pixel = SecondaryBuffer;
	X = Left*TILE_WIDTH;
	Y = Top*TILE_HEIGHT+20;

	LCD_SetWindow(X, Y, X+Width-1, Y+Height-1);
	LCD_WriteRAM_Prepare();
	for(i=0;i<count;i++) {
		LCD_WriteRAM(UnpackPixel(*pixel));
		pixel++;
	}
}

void PopulateLocation(int Location) {
		LocationInfo_t *l = ((LocationInfo_t *)Locations[Location]);
		void **Items = l->Items;
		LocationItem_t *Item;
		int i;

		for(i=0;i<l->ItemsCount;i++) {
				Item = ((LocationItem_t *)Items[i]);
				DrawSprite(Item->X, Item->Y, Item->Animation, Item->Frame);
		}
}


