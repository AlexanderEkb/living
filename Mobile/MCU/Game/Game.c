/* Standard includes */
#include <string.h>
#include <stdlib.h>

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/* Game includes */
#include "Chars.h"
#include "Control.h"
#include "Graphics.h"
#include "Animations.h"
#include "Player.h"
#include "ChrScripts.h"
#include "LocScripts.h"
#include "Locations.h"
#include "Game.h"
#include "FooterTiles.h"

#define WEAPON_IS_VALID(X)  (((X) >= BOOMERANG) && ((X) <= POLE))
#define ONE_EIGHTH		    (32)	/* One-eighth part of tile unit*/
#define FOODSTUFFS_TIMEOUT	(2000)     /* x2 sec */
#define DEMO		        (0x01)
#define GAME		        (0x02)
#define INTRO_LOCATION	    (0x3D)
#define START_LOCATION	    (0x06)  /* Location where game begins */
#define INTRO_ROUNDS	    (4)     /* No of intro rounds before demo */
#define END			        (0xff)

#define LOWEST_ORDER        (100)   /* Max order value */

#define ITEM_PICKED	        (0x80)

#define TWO_SECONDS	        (200)
#define THIRTY_MSEC			(30)

#define NO_EXIT				(0xff)
#define ESCAPE				(0xfe)
#define FLOATING			(0x80)
#define FALLING				(0x40)

#define MIDDLE				(0x0a00)	/* 10 dec */

#define AT_LEFT				(0x0000)
#define AT_RIGHT			(0x2500)	/* 37 dec */

#define CONST_LOG_Y			(0x00c0)

#define LOWER				(Player->Y>MIDDLE)

#define ITS_WEAPON          (0x80)

typedef struct {
    void *Prev;
    void *Next;
    unsigned char Order;
    unsigned char Flags;
	char Spare;

	signed short AltX;
	signed short AltY;
	unsigned char AltAnimation;
	unsigned char AltFrame;
	unsigned char AltObstacles;
	unsigned char AltJumpPower;

	signed int X;
	signed int Y;
	unsigned char Animation;
	unsigned char AnimDelay;
	unsigned char Frame;
	unsigned char Obstacles;
	unsigned char JumpPower;

	signed int HSpeed;
	signed int VSpeed;
	unsigned char AnimationDelay;
	unsigned char XOffset;
	unsigned char AnimWidth;
	unsigned char AnimHeight;
	char Positions;
	Sprite_t *FrameAddr;
} Link_t;

/* Variable definitions */
// static const CharData_t *Player = &CharData[PLAYER];
static Link_t Root;
static xTaskHandle foo;
static xSemaphoreHandle FoodStuffSemphr;
GameData_t Game;
CharData_t CharData[MAX_CHARACTERS_COUNT];

/* Common game tasks */
void GameTask(void *p);
void StarvingTask(void *p);
unsigned int TimeToStarve();
unsigned int ShowIntro();
void ShowDemo();
void PlayGame();
unsigned int DoIteration(unsigned int Controls);

/* Game-related utilities */
void InitFooter();
void InitLivesAndWpn();
void ResetPickables();
unsigned int AdjustFoodstuffs();
void CleanupEnemiesTable();
void CleanupCharData();
void ClearGameData();

unsigned int GetControls();
void ChangeLocation();
void RunLocationScripts();
void RunChrScripts();

static void ManageWeapons();
/* Char management routines */
void OnDeath();

/*
 * Engine initialization.
 *
 * Configures and runs game task.
 *
 */

void Game_Initialize() {
		Game.FoodstuffTimer = 0;
		vSemaphoreCreateBinary(FoodStuffSemphr);
		xSemaphoreTake(FoodStuffSemphr, 0);
		xTaskCreate(GameTask, "game", configMINIMAL_STACK_SIZE, NULL, 3, &foo);
		xTaskCreate(StarvingTask, "starving", configMINIMAL_STACK_SIZE, NULL, 3, &foo);
}

/*
 * Main game task.
 *
 * Routine runs game superloop.
 *
 */
void GameTask(void *p) {
	while(pdTRUE) {
		Game.GemsFound = 0;

		if(ShowIntro() == GAME)
			PlayGame();
		else
			ShowDemo();
	}
}

void StarvingTask(void *p) {
	while(pdTRUE) {
		vTaskDelay(TWO_SECONDS);
		xSemaphoreGive(FoodStuffSemphr);
	}
}

unsigned int TimeToStarve() {
	return xSemaphoreTake(FoodStuffSemphr, 0);
}

unsigned int ShowIntro() {
	unsigned int i;
    unsigned int Step;
	unsigned int IP;
	unsigned int Controls;
	unsigned int StartPressed = 0;
    unsigned int SomeCounter;

	ClearGameData();
	ResetPickables();
	Game.Location = INTRO_LOCATION;
	InitLivesAndWpn();
	InitFooter();
	Game.CharCount = LoadLocation();
	for(i=0;i<INTRO_ROUNDS;i++)
        IP = 0;
        SomeCounter = 0;
		do {
			Step = StandbyScript[IP];
            if(Step == 0xff)
                break;
            if(Step & ITS_WEAPON) {
                Game.SelectedWeapon = Step & 0x0f;
                // SwitchWeapon();
                Step = StandbyScript[++IP];
            }
            if(SomeCounter == 0) {
                SomeCounter = Step;
                Step = StandbyScript[++IP];
            }
            Controls = 0;
            if(Step & 0x01) Controls |= KEY_UP;
            if(Step & 0x02) Controls |= KEY_DOWN;
            if(Step & 0x04) Controls |= KEY_LEFT;
            if(Step & 0x08) Controls |= KEY_RIGHT;
            if(Step & 0x10) Controls |= KEY_FIRE;
            SomeCounter--;
            if(!SomeCounter)
                IP++;
			DoIteration(Controls);
			Controls = GetControls();
			if(Controls & KEY_START)
				StartPressed = pdTRUE;
			else if(StartPressed)
				return GAME;
		} while(1);

	return DEMO;
}

void PlayGame() {
    unsigned int Controls;

	ClearGameData();
	ResetPickables();
	Game.Location = START_LOCATION;
	InitLivesAndWpn();
	InitFooter();
	Game.CharCount = LoadLocation();
	Game.GameOver = 0;
	do {
        Controls = GetControls();
		DoIteration(Controls);
	} while (!Game.GameOver);

}

void ShowDemo() {
}

void InitFooter() {
	DrawFooter();
	Game.Water = MAX_VALUE;
	Game.Food = MAX_VALUE;
	Game.Force = 0;

	DrawSingleGauge(FORCE_GAUGE, Game.Force, FORCE_GAUGE_COLOR);
	DrawSingleGauge(FOOD_GAUGE, Game.Food, FOOD_GAUGE_COLOR);
	DrawSingleGauge(WATER_GAUGE, Game.Water, WATER_GAUGE_COLOR);
}

void ResetPickables() {
	int i;

	for(i=0;i<PICKABLES_COUNT;i++) {
		LocationItem_t *p = (LocationItem_t *)Pickables[i];
		p->Flags &= ~ITEM_PICKED;
	}
}

void ClearGameData() {
	Game.Flags = 0;
	Game.Force = 0;
	Game.Boom_State = 0;
	Game.SelectedWeapon = 0;
	Game.Log.State = 0;
    Game.Log.Counter = 0;
	Game.Log.Row= 0;
    Game.Log.Col = 0;
	Game.Candles = 0;
	Game.byte_DDB4 = 0;
	Game.byte_DDC0 = 0;
	Game.byte_DDC2 = 0;
	Game.GemsFound = 0;
	Game.PitEscapeFlag = 0;
}



unsigned int AdjustFoodstuffs() {
	if(Game.GameOver || !TimeToStarve())
		return pdTRUE;
	if(++Game.FoodstuffTimer >= FOODSTUFFS_TIMEOUT) {
		Game.FoodstuffTimer = 0;
		if(Game.Food)
			Game.Food--;
		if(Game.Water)
			Game.Water--;
		DrawSingleGauge(FOOD_GAUGE, Game.Food, FOOD_GAUGE_COLOR);
		DrawSingleGauge(WATER_GAUGE, Game.Water, WATER_GAUGE_COLOR);
	}
	return Game.Food && Game.Water;
}

unsigned int DoIteration(unsigned int Controls) {
	portTickType Time = xTaskGetTickCount();

	if(!AdjustFoodstuffs())
		OnDeath();
	ManageWeapons();
	RunLocationScripts();
	HandlePlayer(Controls);
	RunChrScripts();
	ChangeLocation();
	RefreshDisplay();
	// CheckIfPauseRequested
	vTaskDelayUntil(&Time, THIRTY_MSEC);

	return 0;
}

void OnDeath() {
	//SET_CHAR_POSITION(PLAYER, P_JUST_KILLED);
    Player_KillHim();
	CharData[PLAYER].Obstacles = 0;
	// TODO: RemovePole
	Game.Flags |= GF_DEATH;
}

inline static unsigned int CrossingLeft() {
	return CHAR_POSITION(PLAYER, P_LEFT_EDGE) && LEFT_DIRECTION(Player->HSpeed);
}

inline static unsigned int CrossingRight() {
	return CHAR_POSITION(PLAYER, P_RIGHT_EDGE) && !LEFT_DIRECTION(Player->HSpeed);
}

inline static unsigned int CrossingBottom() {
	return CHAR_POSITION(PLAYER, P_BOTTOM_EDGE);
}

void ChangeLocation() {
	LocationInfo_t *loc = (LocationInfo_t *)Locations[Game.Location];
	unsigned int NewLocation = NO_EXIT;
	signed int NewX;

	if(GAME_FLAG(GF_SUSPENDED))
		return;
	if(CHAR_POSITION(PLAYER, P_LEFT_EDGE | P_RIGHT_EDGE | P_BOTTOM_EDGE)) {
		if(CrossingBottom()) {
		   // Things about falling down
		} else if(CrossingRight()) {
		   NewLocation = LOWER?loc->LowerRightExit:loc->UpperRightExit;
		   NewX = AT_LEFT;
		} else if(CrossingLeft()){
		   NewLocation = LOWER?loc->LowerLeftExit:loc->UpperLeftExit;
		   NewX = AT_RIGHT;
		} else
		   return;
		if(NewLocation == NO_EXIT)
		   return;
		else if(NewLocation == ESCAPE) {
		} else {
		   if(NewLocation & FLOATING) {
			   CharData[PLAYER].Y = CONST_LOG_Y;
			   NewLocation &= ~FLOATING;
		   }
		   CharData[PLAYER].X = NewX;
		   Game.Flags = 0;
		   for(int i=BOOMERANG;i<MAX_CHARACTERS_COUNT;i++)
			   memset(&CharData[i], 0, sizeof(CharData_t));
		   Game.OrgX = Player->X;
		   Game.OrgY = Player->Y;
		   Game.OrgHSpeed = Player->HSpeed;
		   Game.Location = NewLocation;
		   CleanupEnemiesTable();
		   Game.CharCount = LoadLocation();
		}
	}
}

unsigned int GetControls() {
		unsigned int c = Ctl_GetDiscreteControlsState();
        if(c & KEY_BOOMERANG)
            Game.SelectedWeapon = BOOMERANG;
        else if(c & KEY_KNIFE)
            Game.SelectedWeapon = KNIFE;
        else if(c & KEY_BOMB)
            Game.SelectedWeapon = BOMB;
        else if(c & KEY_POLE)
            Game.SelectedWeapon = POLE;

		return c;
}

void RunLocationScripts() {
    LocationInfo_t *Location = (LocationInfo_t *)Locations[Game.Location];
    LocScript_t *Ptr = (LocScript_t *)Location->Scripts;
    LocScript_t Script;
    
    if(Ptr)
        while(*Ptr) {
            Script = *Ptr;
            Script();
            Ptr++;
        }
}

unsigned int GetTileUnder(unsigned int Char) {
	int OverallWidth, OverallHeight;
	int Right, Bottom;
	int Row, Col;
	int Tile;

	// Now clear related obstacle and position flags
    CharData[Char].Obstacles &= ~O_AT_BOTTOM;
	CharData[Char].Positions &= ~(P_LEFT_EDGE | P_RIGHT_EDGE |
		P_BOTTOM_EDGE | P_TOP_EDGE);
	// Calculate overall dimensions
	OverallWidth = OverallDims[CharData[Char].Animation].W;
	OverallHeight = OverallDims[CharData[Char].Animation].H;
	Right = OverallWidth + CharData[Char].X;
	Bottom = OverallHeight + CharData[Char].Y;
	// Set edge flags
	if(GET_CHAR_ROW(Char) <= 0)
		SET_CHAR_POSITION(Char, P_TOP_EDGE);
	if((Bottom >> 8) > 19)
		SET_CHAR_POSITION(Char, P_BOTTOM_EDGE);
	if(!GET_CHAR_COL(Char))
		SET_CHAR_POSITION(Char, P_LEFT_EDGE);
	if((Right >> 8) > 38)
		SET_CHAR_POSITION(Char, P_RIGHT_EDGE);
	Row = (CharData[Char].Y + OverallHeight + ONE_EIGHTH) >> 8;
	Col = (CharData[Char].X + (OverallWidth >> 1)) >> 8;

	Tile = GetTileAt(Row, Col);
	if(Tile >= FLOOR_CAPABLE_TILE)
		SET_CHAR_OBSTACLE(Char, O_AT_BOTTOM);

	return Tile;
}

/*
 * Updates character structure with new:
 *		Animation;
 *		Start frame
 * 		Position
 *		Horizontal speed
 */

void UpdateFrameData(int c) {
	void **a = (void *)Animations[CharData[c].Animation];
	Sprite_t *s = (Sprite_t *)a[CharData[c].Frame];
	CharData[c].AnimWidth = s->Width;
	CharData[c].XOffset = 0;
}

/******************************************************************************
 *                                  <CHAIN>                                   *
 ******************************************************************************/

void CleanupEnemiesTable() {
	Game.CharCount = 1;
	Game.Chain[PLAYER] = PLAYER;
	Game.Chain[1] = UNUSED;
	CharData[PLAYER].Order = 0;
}

void RemoveChar(int i) {
	int j;

    CharData[Game.Chain[i]].Flags = 0;
	for(j=i;j<MAX_CHARACTERS_COUNT-1;j++)
		Game.Chain[j] = Game.Chain[j+1];
	Game.CharCount--;
}

void InsertChar(int Index, int Order) {
	int i, j;

	if(!Index)
		Index = 1;
	CharData[Index].Order = Order;
    // TODO: Remove CF_ACTIVE and place it to the correct place
    CharData[Index].Flags |= CF_ACTIVE | CF_NOT_REDRAWN;
    CharData[Index].Flags &= ~(CF_REMOVED);
	for(i=0;i<Game.CharCount;i++) {
		if(Game.Chain[i] == UNUSED)
			break;
		if(CharData[Game.Chain[i]].Order >= Order) {
			for(j=MAX_CHARACTERS_COUNT-1;j>i;j--)
				Game.Chain[j] = Game.Chain[j-1];
			Game.Chain[i] = Index;
			Game.CharCount++;
			return;
		}
	}
	if(i<MAX_CHARACTERS_COUNT) {
		Game.Chain[i] = Index;
		Game.CharCount++;
	}
	if(i+1<MAX_CHARACTERS_COUNT)
		Game.Chain[i+1] = UNUSED;
}

unsigned int NewChar() {
	int i;

	for(i=FIRST_ENEMY_DATA;i<MAX_CHARACTERS_COUNT;i++) {
		if(!CHAR_FLAG(i, CF_ACTIVE)) {
			InsertChar(i, LOWEST_ORDER);
			return i;
		}
	}

	return NO_ROOM;
}

/******************************************************************************
 *                                  </CHAIN>                                  *
 ******************************************************************************/

void ClearChar(int c) {
	memset(&CharData[c], 0, sizeof(CharData_t));
	SET_CHAR_FLAG(c, CF_ACTIVE | CF_NOT_REDRAWN);
}

void LoadCharData(int c, void *s) {
	ClearChar(c);
	CharData[c].AltJumpPower = ((LocationItem_t *)s)->Flags;
	CharData[c].AltAnimation = ((LocationItem_t *)s)->Animation;
	CharData[c].AltFrame = ((LocationItem_t *)s)->Frame;
	CharData[c].AltX = ((LocationItem_t *)s)->X;
	CharData[c].AltY = ((LocationItem_t *)s)->Y;
    CharData[c].ExtraData = ((LocationItem_t *)s)->ExtraData;
	UpdateFrameData(c);
	CopyOldToNew(c);
}

unsigned int FindCharByAnimation(unsigned int Animation) {
    unsigned int i;

    for(i=0;i<MAX_CHARACTERS_COUNT;i++)
        if(Game.Chain[i] == UNUSED)
            return NOT_FOUND;
        else if(CharData[Game.Chain[i]].Animation == Animation)
            return Game.Chain[i];

    return NOT_FOUND;
}

void InitLivesAndWpn() {
	Game.Lives = MAX_LIVES;
	Game.Weapon = 0;
	CleanupCharData();
}

void CleanupCharData() {
	memset(CharData, 0, sizeof(CharData));
	Game.Score = 0;
	CleanupEnemiesTable();
}

void DoCustomMotion(CharData_t *chr) {
	chr->X = chr->AltX + chr->HSpeed;
	chr->Y = chr->AltY + chr->VSpeed;
}

unsigned int Intersect(CharData_t *a, CharData_t *b) {
	if((a->X+(a->AnimWidth << 8) < b->X) ||
	   (a->X > b->X+(b->AnimWidth) << 8))
		return pdFALSE;
	else if((a->Y+(a->AnimHeight << 8) < b->Y) ||
			(a->Y > b->Y+(b->AnimHeight << 8)))
		return pdFALSE;
	else
		return pdTRUE;
}

/******************************************************************************
 *                                  <CHAIN_EX>                                *
 ******************************************************************************/
/*
void ClearLocation() {
    Link_t *l = Root.Next;
    Link_t *n;

    while(l) {
        n = l->Next;
        free(l);
        l = n;
    }
}

void RemoveLink(Link_t *l) {
    ((Link_t *)l->Prev)->Next = l->Next;
    ((Link_t *)l->Next)->Prev = l->Prev;
    free(l);
}

Link_t *AddToBack() {
    Link_t *l = &Root;
    Link_t *n;
    while(l->Next)
        l = l->Next;

    n = malloc(sizeof(Link_t));
    if(n) {
        l->Next = n;
        n->Prev = l;
    }
    return n;
}

Link_t *AddByOrder(unsigned int Order) {
    Link_t *l = &Root;
    Link_t *n;
    while(l->Next) {
        if(((Link_t *)l->Next)->Order > Order)
            break;
        l = l->Next;
    }

    n = malloc(sizeof(Link_t));
    if(n) {
        n->Prev = l;
        n->Next = l->Next;
        l->Next = n;
        if(n->Next)
            ((Link_t *)n->Next)->Prev = n;
    }
    return n;
}
*/

void CopyOldToNew(int c) {
	CharData[c].X = CharData[c].AltX;
	CharData[c].Y = CharData[c].AltY;
	CharData[c].Animation = CharData[c].AltAnimation;
	CharData[c].Frame = CharData[c].AltFrame;
	CharData[c].Obstacles = CharData[c].AltObstacles;
	CharData[c].JumpPower = CharData[c].AltJumpPower;
}

void RunChrScripts() {

    unsigned int i;
    CharData_t *Char;
    ChrScript_t Script;

    for(i=0;i<MAX_CHARACTERS_COUNT;i++) {
        if(Game.Chain[i] == UNUSED)
            break;
        Char = &CharData[Game.Chain[i]];
        switch(Char->Animation) {
        case BOOMERANG: BoomerangScript(Char); break;
        case KNIFE: KnifeScript(Char); break;
        case BOMB: BombScript(Char); break;
        case BONUSSCORE: BonusScoreScript(Char); break;
        case EXPLODE: ExplodeScript(Char); break;
        case BIRD: BirdScript(Char); break;
        case BUBBLES: BubblesScript(Char); break;
        case HUNGRYPLANT: HungryPlantScript(Char); break;
        case SWITCH: SwitchScript(Char); break;
        case WAGON: WagonScript(Char); break;
        case WHIRLWIND:
        case MINEGAS: MineGasScript(Char); break;
        case VERTICALARROW1: Arrow1Script(Char); break;
        case VERTICALARROW2: Arrow2Script(Char); break;
        case STAR: StarScript(Char); break;
        case BULLET: BulletScript(Char); break;
        case PIECEOFGOLD2: PieceOfGoldScript(Char); break;
        default :
            if((Char->ExtraData) && (Char->ExtraData->Script)) {
                Script = ((ChrScript_t)Char->ExtraData->Script);
                Script((void *)Char);
            }
        }
    }
}

static void ManageWeapons() {
    unsigned char Selection = Game.SelectedWeapon;

    if(Game.PrevWeapon != Game.SelectedWeapon) {
        if(WEAPON_IS_VALID(Game.PrevWeapon))
            DrawWpnSelection(Game.PrevWeapon, NORMAL);
        if(WEAPON_IS_VALID(Game.SelectedWeapon))
            DrawWpnSelection(Game.SelectedWeapon, INVERSE);

        // Redraw selection
        switch(Selection) {
        case BOOMERANG: Game.Weapon = FIRED_BOOMERANG | Selection; break;
        case KNIFE: Game.Weapon = FIRED_KNIFE | Selection; break;
        case BOMB: Game.Weapon = FIRED_BOMB | Selection; break;
        case POLE: Game.Weapon = FIRED_POLE | Selection; break;
        }
        Game.PrevWeapon = Game.SelectedWeapon;
    }
}
