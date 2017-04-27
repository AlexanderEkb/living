#include "Game.h"
#include "Player.h"
#include "Graphics.h"
#include "LocScripts.h"

#define LOG_LENGTH          (10)
#define LOG_DIR_NONE        (0)
#define LOG_DIR_RIGHT       (1)
#define LOG_DIR_LEFT        (2)
#define LOG_DIR_DOWN        (3)
#define LOG_PERIOD          (5)

extern const unsigned char WorldTiles[];

void Log_Wipe();
void Log_Draw();

void LocScripts_Log0() {
    if((Game.TileUnderPlayer == TILE_LOG) && (Game.Log.State == LOG_DIR_NONE)) {
        Game.Log.Row = 16;
        Game.Log.Col = 20;
        Game.Log.State = LOG_DIR_RIGHT;
        Game.Log.Counter = 5;
    }
}

void LocScripts_Log1() {
    unsigned int Tile;
    signed int Row;
    signed int Col = Game.Log.Col;
    if(Game.Log.State == LOG_DIR_NONE)
        return;

    // If log has no visible part...
    if((Col < 0) && (Col + LOG_LENGTH < 0)) {
        Game.Log.State = LOG_DIR_NONE;
        return;
    }
    if(Col >= 40) {
        Game.Log.State = LOG_DIR_NONE;
        return;
    }

    Game.Log.Counter++;
    if(Game.Log.Counter < 6)
        return;
    Game.Log.Counter = 0;
    Row = Game.Log.Row;
    Col = Game.Log.Col;
    if(Col >= 0) {
        Tile = GetTileAt(Row+1, Col);
        if(Tile == TILE_AIR)
            Game.Log.State = LOG_DIR_DOWN;
    }
    if((Col + LOG_LENGTH < 39) &&
       (Game.Log.State == LOG_DIR_RIGHT) &&
       (GetTileAt(Row, Col + LOG_LENGTH + 1) != TILE_AIR))
        Game.Log.State = LOG_DIR_LEFT;

    if((Col >= 0) &&
       (Game.Log.State == LOG_DIR_LEFT) &&
       (GetTileAt(Row, Col - 1) != TILE_AIR))
        Game.Log.State = LOG_DIR_RIGHT;

    Tile = GetTileUnder(PLAYER);
    Log_Wipe();
    switch(Game.Log.State) {
    case LOG_DIR_LEFT:
        Game.Log.Col--;
        if(Tile == TILE_LOG) {
            Player->X -= 0x0100;
            Pole->X -= 0x0100;
        }
        break;
    case LOG_DIR_RIGHT:
        Game.Log.Col++;
        if(Tile == TILE_LOG) {
            Player->X += 0x0100;
            Pole->X += 0x0100;
        }
        break;
    case LOG_DIR_DOWN:
        Game.Log.Row++;
        if(Tile == TILE_LOG) {
            Player->Y += 0x0100;
            Pole->Y += 0x0100;
        }
        break;
    }
    Log_Draw();
}

void LocScripts_Log2() {
    Game.Log.Row = 4;
    Game.Log.Col = -3;
    Game.Log.State = LOG_DIR_RIGHT;
    Game.Log.Counter = 5;
}

/*
 *    __
 *   / /  ___  ___ _
 *  / /__/ _ \/ _ `/
 * /____/\___/\_, /
 *           /___/
 *
 */

void Log_Wipe() {
    unsigned int i, begin, end;

    begin = (Game.Log.Col >= 0)?Game.Log.Col:0;
    end = (Game.Log.Col +  LOG_LENGTH < 40)?(Game.Log.Col +  LOG_LENGTH):39;
    for(i=begin;i<=end;i++) {
        SetTileAt(Game.Log.Row, i, TILE_AIR);
        DrawTile(Game.Log.Row, i, TILE_AIR, WorldTiles);
    }
}

void Log_Draw() {
    unsigned int i, begin, end;

    if(Game.Log.Col >= 0) {
        SetTileAt(Game.Log.Row, Game.Log.Col, TILE_LOG_LEFT);
        DrawTile(Game.Log.Row, Game.Log.Col, TILE_LOG_LEFT, WorldTiles);
        begin = Game.Log.Col + 1;
    } else
        begin = 0;

    if(Game.Log.Col + LOG_LENGTH < 40) {
        SetTileAt(Game.Log.Row, Game.Log.Col + LOG_LENGTH, TILE_LOG_RIGHT);
        DrawTile(Game.Log.Row, Game.Log.Col + LOG_LENGTH, TILE_LOG_RIGHT, WorldTiles);
        end = Game.Log.Col + LOG_LENGTH - 1;
    } else
        end = 39;

    for(i=begin;i<=end;i++) {
        SetTileAt(Game.Log.Row, i, TILE_LOG);
        DrawTile(Game.Log.Row, i, TILE_LOG, WorldTiles);
    }
}