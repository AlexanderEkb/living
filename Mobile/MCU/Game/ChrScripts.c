#include "Game.h"
#include "ChrScripts.h"
#include "Animations.h"
#include "PLayer.h"

#define BOOMERANG_KEEP      (0x00)
#define BOOMERANG_REMOVE    (0x01)

unsigned int AnimateEnemy(CharData_t *Enemy);

static unsigned int MoveBoomerang();
static void RemoveBoomerang();

/******************************************************************************/
/**              Scripts, binded to every object of certain type             **/
/******************************************************************************/
void BoomerangScript(CharData_t *Char) {
    FrameSequence_t fs;

    if(MoveBoomerang() == BOOMERANG_REMOVE) {
        RemoveBoomerang();
        return;
    }

    if((Boomerang->X > 39 /* Viewport in tiles */) && (Boomerang->X < 0)) {
        RemoveBoomerang();
        return;
    }
    GetTileUnder(BOOMERANG);
    if(CHAR_POSITION(BOOMERANG, P_LEFT_EDGE |
                     P_RIGHT_EDGE |
                     P_TOP_EDGE |
                         P_BOTTOM_EDGE)) {
        RemoveBoomerang();
        return;
    }
    if((Game.Boom_State != 0x01) &&
       (Game.Boom_State != 0x84) &&
       (Chars_CheckForCollision(Player, Boomerang))) {
           RemoveBoomerang();
           return;
    }
    fs.FirstFrame = 0x00;
    fs.LastFrame = 0x03;
    fs.Delay = 0x00;
    Animate(Char, &fs, WITHOUT_SPEEDS);

}

void KnifeScript(CharData_t *Char) {
    volatile static unsigned int outOfScreen, atBottom;

    if(Char->VSpeed < 127)
        Char->VSpeed++;
    Char->X += Char->HSpeed * 3;
    Char->Y += Char->VSpeed;

    outOfScreen = ((Char->X >> 8) >= 38) ||
        ((Char->X >> 8) < 0);
    GetTileUnder(KNIFE);
    atBottom = (Char->Obstacles | Char->Positions) & P_BOTTOM_EDGE;

    if(outOfScreen || atBottom)
        Char->Flags |= CF_SUSPENDED | CF_REMOVED;
}

void BombScript(CharData_t *Char) {

    // TODO: Try to kill player
    if(Bomb->VSpeed >= 0)
        Bomb->VSpeed = 127;
    else
        Bomb->VSpeed += 3;

    Char->X += Char->HSpeed * 2;
    Char->Y += Char->VSpeed;

    GetTileUnder(BOMB);
    if(CHAR_POSITION(BOMB, P_TOP_EDGE) ||
       CHAR_POSITION(BOMB, P_BOTTOM_EDGE) ||
       CHAR_POSITION(BOMB, P_LEFT_EDGE) ||
           CHAR_POSITION(BOMB, P_RIGHT_EDGE)) {
        SET_CHAR_FLAG(BOMB, CF_REMOVED);
    } else if(CHAR_OBSTACLE(BOMB, O_AT_BOTTOM)) {
        Bomb->Animation = EXPLODE;
        // TODO: PlaySound(Sound1);
    }

}

void BonusScoreScript(CharData_t *Char) {
}

void ExplodeScript(CharData_t *Char) {
    FrameSequence_t fs;
    unsigned int Result;

    // TODO: Try to kill player
    fs.FirstFrame = 0;
    fs.LastFrame = 3;
    fs.Delay = 3;
    Result = Animate(Char, &fs, WITHOUT_SPEEDS);
    if(Result & ANIM_IS_OVER)
        SET_CHAR_FLAG(BOMB, CF_SUSPENDED | CF_REMOVED);
}

void BirdScript(CharData_t *Char) {
}

void BubblesScript(CharData_t *Char) {
    FrameSequence_t fs = {4, 0, 3, 0, 0};
    Animate(Char, &fs, WITHOUT_SPEEDS);
    Char->X = Player->X + 0x0100;
    Char->Y = Player->Y;
}

void HungryPlantScript(CharData_t *Char) {
FrameSequence_t fs;

    if(CharData[PLAYER].X < Char->X) {
        fs.FirstFrame = 0;
        fs.LastFrame = 1;
    } else if(CharData[PLAYER].X < Char->X) {
        fs.FirstFrame = 2;
        fs.LastFrame = 2;
    } else {
        fs.FirstFrame = 3;
        fs.LastFrame = 4;
    }
    fs.Delay = 0x07;
    Animate(Char, &fs, WITHOUT_SPEEDS);
}

void SwitchScript(CharData_t *Char) {
}

void WagonScript(CharData_t *Char) {
}

void MineGasScript(CharData_t *Char) {
}

void Arrow1Script(CharData_t *Char) {
}

void Arrow2Script(CharData_t *Char) {
}

void StarScript(CharData_t *Char) {
}

void BulletScript(CharData_t *Char) {
}

void PieceOfGoldScript(CharData_t *Char) {
}


void SimpleScript(void *e) {
    CharData_t *Enemy = e;
    MotionPhase_t *Phases;
    unsigned int PhaseNo;

    // 1. Check, if this enemy is kicked;
    // 2. If yes - animate its death and remove it from the chain
    // 3. If no - check for collision with player;
    // 4. Animate enemy;
    // 5. If there was a collision at step 3 - kill the player;
    // Chars_CheckForCollision(Enemy, Player);
    if(Enemy->AnimationCounter) {
        if(AnimateEnemy(Enemy) != FRAME_NOT_CHANGED) {
            Enemy->AnimationCounter--;
            DoCustomMotion(Enemy);
        }
    } else {
        if(Enemy->MotionPhase >= Enemy->ExtraData->Extras)
            Enemy->MotionPhase = 0;
        else {
            PhaseNo = Enemy->MotionPhase;
            Phases = ((MotionPhase_t *)Enemy->ExtraData->ExtraData) + PhaseNo;
            Enemy->AnimationCounter = Phases->Duration;
            Enemy->HSpeed = Phases->HSpeed;
            Enemy->VSpeed = Phases->VSpeed;
            Enemy->MotionPhase++;
        }
    }
}

unsigned int AnimateEnemy(CharData_t *Enemy) {
    FrameSequence_t fs;
    CustomData_t *cd = Enemy->ExtraData;

    fs.Delay = cd->Delay;
    if(LEFT_DIRECTION(Enemy->HSpeed)) {
        fs.FirstFrame = cd->Left_First;
        fs.LastFrame = cd->Left_Last;
    } else {
        fs.FirstFrame = cd->Right_First;
        fs.LastFrame = cd->Right_Last;
    }
    return Animate(Enemy, &fs, WITHOUT_SPEEDS);
}

static unsigned int MoveBoomerang() {
    unsigned int stage = Game.Boom_State & 0x0f;

    if((stage > 4) || (stage < 1))
        return BOOMERANG_REMOVE;

    switch(stage) {
    case 1:
        Boomerang->HSpeed--;
        Boomerang->VSpeed--;
        break;
    case 2:
        Boomerang->HSpeed--;
        Boomerang->VSpeed++;
        break;
    case 3:
        Boomerang->HSpeed++;
        Boomerang->VSpeed++;
        break;
    case 4:
        Boomerang->HSpeed++;
        Boomerang->VSpeed--;
        break;
    }

    Game.Boom_Counter--;
    if(Game.Boom_Counter) {
        Boomerang->X += Boomerang->HSpeed * 3;
        Boomerang->Y += Boomerang->VSpeed;
    } else {
        Game.Boom_Counter = Game.Boom_Force;
        if(Game.Boom_State & 0x80)
            Game.Boom_State--;
        else
            Game.Boom_State++;
    }

    return BOOMERANG_KEEP;
}

static void RemoveBoomerang() {
    SET_CHAR_FLAG(BOOMERANG, CF_REMOVED);
    Game.Weapon &= ~FIRED_BOOMERANG;
    CopyOldToNew(BOOMERANG);

}
