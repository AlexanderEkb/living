#ifndef GAME_H
#define GAME_H

#include <stdint.h>
#include "chars.h"

#define NO_ROOM		        (0xffff)
#define UNUSED	            (0xffff) /* Value to mark unused cells in crh chain */
#define NOT_FOUND           (0xffff)

/* Macros used by game routines */
#define GAME_FLAG(X) (Game.Flags & (X))


/************ GAME CHARACTERS AND ITEMS ************/
#define PLAYER          0x0
#define BOOMERANG       0x1
#define KNIFE           0x2
#define BOMB            0x3
#define POLE            0x4
#define BONUSSCORE      0x5
#define EXPLODE         0x6
#define BIRD            0x7
#define BUBBLES         0x8
#define HUNGRYPLANT     0x9
#define SWITCH          0x0A
#define SCARYEYES       0x0B
#define MONKEY          0x0C
#define MINER           0x0D
#define DARTSMAN        0x0E
#define SPEARMAN        0x0F
#define ARCHER          0x10
#define STINKYIDOL      0x11
#define COCONUT         0x12
#define PICK            0x13
#define DART            0x14
#define SPEAR           0x15
#define ARROW           0x16
#define STINK           0x17
#define WAGON           0x18
#define MINEGAS         0x19
#define SCORPION        0x1A
#define LIZARD          0x1B
#define BAT             0x1C
#define BATONTHROWER    0x1D
#define MERMAID         0x1E
#define BATON           0x1F
#define HEART           0x20
#define WHIRLWIND       0x21
#define VERTICALARROW1  0x22
#define VERTICALARROW2  0x23
#define DANCINGSTATUE   0x24
#define LIVINGSTONE     0x25
#define FLYINGDEVIL     0x26
#define STAR            0x27
#define GEM             0x28
#define FOOD            0x29
#define WATER           0x2A
#define SNAKE           0x2B
#define SPIDER          0x2C
#define RIFLEMAN        0x2D
#define BULLET          0x2E
#define BIGFISH         0x2F
#define SMALLFISH       0x30
#define CROCODILE       0x31
#define DRUMMER         0x32
#define PIECEOFGOLD2    0x33
#define OPERASOFT       0x34
#define SUPONGO         0x35
#define PLAYERPHRASES   0x36
#define LIVINGSTONEPHRASES  0x37

/************ GAME STATE FLAGS ************/
#define GF_CUTSCENE		(0x02)
#define GF_DEATH		(0x08)
#define GF_COCONUTED	(0x10)
#define GF_EATEN		(0x20)
#define GF_SUSPENDED	(0x80)

/************ VALUABLE TILES ************/
#define FLOOR_CAPABLE_TILE	(0xA2)
#define WALL_CAPABLE_TILE	(0xB9)
#define TILE_AIR            (0x00)
#define TILE_WATER			(0x8A)
#define TILE_SWAMP			(0x89)
#define TILE_LOG_LEFT       (0xDE)
#define TILE_LOG            (0xD9)
#define TILE_LOG_RIGHT      (0x84)

#define MAX_CHARACTERS_COUNT (12)

#define FIRST_ENEMY_DATA	(5)

#define LEFT_FRAMESET		(0x11)
#define MAX_JUMP_POWER		(0x0C)
#define MAX_LIVES			(7)     /* Max lives */
#define MAX_VALUE			(60)    /* Max value of food and water*/

/* Value used at HandlePlayer() as conditional player width */
#define COND_WIDTH			(3)

/* Controls mapping */
#define KEY_START CTL_BUTTON_START
#define KEY_BOOMERANG (CTL_BUTTON_A)
#define KEY_KNIFE (CTL_BUTTON_B)
#define KEY_BOMB (CTL_BUTTON_C)
#define KEY_POLE (CTL_BUTTON_SELECT)
#define KEY_LEFT CTL_BUTTON_LEFT
#define KEY_RIGHT CTL_BUTTON_RIGHT
#define KEY_UP CTL_BUTTON_UP
#define KEY_DOWN CTL_BUTTON_DOWN
#define KEY_FIRE (KEY_BOOMERANG | KEY_KNIFE | KEY_BOMB | KEY_POLE)

#define FORCE_GAUGE	        (0)     /* */
#define FOOD_GAUGE	        (1)
#define WATER_GAUGE	        (2)
#define FORCE_GAUGE_COLOR	(0xffff)
#define FOOD_GAUGE_COLOR	(0xf800)
#define WATER_GAUGE_COLOR	(0xffe0)

typedef struct {
    signed int Row;
    signed int Col;
    unsigned int Counter;
    unsigned int State;
} LogData_t;

typedef struct {
	/* ----------- Affected by ClearGameData ----------- */
	unsigned int Flags;
	unsigned int Force;
	signed int Boom_State;
    unsigned int Boom_Counter;
    unsigned int Boom_Force;
	unsigned int SelectedWeapon;
	LogData_t Log;
    unsigned int TileUnderPlayer;
	unsigned int Candles;
	unsigned int byte_DDB4;
	unsigned int byte_DDC0;
	unsigned int byte_DDC2;
	unsigned int GemsFound;
	unsigned int PitEscapeFlag;
	signed short OrgX;
	signed short OrgY;
	signed short OrgHSpeed;
    unsigned int PlayerState;   // Newly added
	/* ------------------------------------------------- */
	unsigned int Score;
	unsigned int Lives;
	unsigned int Weapon;
    unsigned int PrevWeapon;
	unsigned int Location;
	unsigned int CharCount;
	unsigned int Controls;
	unsigned int GameOver;
	signed int PoleJump_Increment;
	unsigned int Chain[MAX_CHARACTERS_COUNT];
	unsigned int Food;
	unsigned int Water;
	unsigned int FoodstuffTimer;
} GameData_t;

extern const __packed unsigned char StandbyScript[];
extern CharData_t CharData[MAX_CHARACTERS_COUNT];
extern GameData_t Game;

extern CharData_t *Boomerang;
extern CharData_t *Knife;
extern CharData_t *Bomb;

void Game_Initialize();
unsigned int NewChar();
void InsertChar(int c, int o);
void RemoveChar(int i);
void ClearChar(int c);
void CopyOldToNew(int c);
void LoadCharData(int c, void *s);
unsigned int GetTileUnder(unsigned int Char);
void UpdateFrameData(int c);

void DoCustomMotion(CharData_t *chr);
unsigned int FindCharByAnimation(unsigned int Animation);
#endif /* GAME_H */
