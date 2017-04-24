#ifndef GRAPHICS_H
#define GRAPHICS_H


#define BUFFER_WIDTH 40
#define BUFFER_HEIGHT 20

#define TRANSPARENT_COLOR       (0x00)
#define BACKGROUND_COLOR        (0x0000)

typedef enum {NORMAL, INVERSE} DrawStyle_t;

void DrawWpnSelection(unsigned int Weapon, DrawStyle_t Style);
void RefreshDisplay();
unsigned int GetTileAt(int Row, int Col);
void SetTileAt(int Row, int Col, unsigned int Tile);
void DrawTile(int Row, int Col, char Tile, unsigned char const *Tileset);
void DrawFooter();
void DrawSingleGauge(int n, unsigned int Value, unsigned short Color);
void BuildBackground(int l);
void DrawPrimaryBuffer();
void DrawSprite(int x, int y, int Animation, int Frame);
void DrawChar(int c);
void CopyAltToMain(int c);

#endif /* GRAPHICS_H */
