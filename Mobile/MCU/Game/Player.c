#include "Game.h"
#include "Control.h"
#include "Graphics.h"
#include "Animations.h"
#include "Player.h"
#include "FooterTiles.h"

// Converts int to fixed-point number
#define ITOF(X)			((X) << 8)

// Does reverse conversion
#define GET_ROW(X)      ((X) >> 8)

// The same thing. Added for readability
#define GET_COL(X)      GET_ROW(X)

// TODO: Decide if it's really needed
#define SET_PLAYER_STATE(X) {Game.PlayerState = X;}

// Returns GF_CUTSCENE state
#define CUTSCENE        (GAME_FLAG(GF_CUTSCENE))

// Returns GF_SUSPENDED state
#define GAME_SUSPENDED  (GAME_FLAG(GF_SUSPENDED))

// Constant fractional part of Player->Y, when staying on ground
#define GROUND_LEVEL    (0x0040)

// Mask for weapon index
#define WEAPON_INDEX_MASK   (0x0f)

// Macros, which executes some branch of the main player's function and
// breaks execution if result is negative. Almost all that function
// consists from many such trials.
//
// unsigned int Result should be defined to use this macros;
#define Try(X)          {Result = X; if(Result != PASS) return Result;}

// Macros adjusts fractional part of Player->Y when staying on the ground
#define AdjustPlayerY(X)   {Player->Y &= 0xff00; Player->Y |= X;}

#define HATS_X					(22)
#define HATS_Y					(21)
#define HAT_L					(0x2f)
#define HAT_R					(0x30)

#define SWAMP_DEATH_LENGTH		(20)

typedef enum {LEFT, RIGHT} Direction_t;

typedef enum {ALMOST_DEAD, KILLED, COCONUTED, POLE_JUMP, JUST_SHOOT, JUMP,
    WALKING, FALLING} PlayerState_t;

CharData_t *Player = &CharData[PLAYER];
CharData_t *Boomerang = &CharData[BOOMERANG];
CharData_t *Knife = &CharData[KNIFE];
CharData_t *Bomb = &CharData[BOMB];
CharData_t *Pole = &CharData[POLE];
static void RemovePole();
static unsigned int IfDeathInProgress();
static unsigned int IsPlayerHasToSink();
static unsigned int DeathInSwamp();
static unsigned int DeathInWater();
static unsigned int FinishHim();
static void CheckForObstacles();
static unsigned int IfPlayerIsKilled();
static unsigned int IfPlayerIsCoconuted();
static void ResetForceToZero();
static void IncreaseForce();
static void DoJumpOrDuck(unsigned int Controls);
static unsigned int DoJump();
static unsigned int DoWalk(unsigned int Controls);
static void Player_Walk(Direction_t d);
static void StopHim();
static void Respawn();
static unsigned int Player_Flight();
static void RestorePosition();
static void UpdateHats();
static void Player_HandleWeapons(unsigned int Controls);
static void Player_PoleJump_Begin();
static unsigned int Player_PoleJump_Init();
static unsigned int Player_PoleJump_Occurs(unsigned int Controls);
static unsigned int Player_PoleJump_Terminate();
static unsigned int Player_JustFired();
static void Player_Fire();
static void Player_ThrowBoomerang();
static void Player_ThrowKnife();
static void Player_ThrowBomb();

unsigned int HandlePlayer(unsigned int Controls) {
    unsigned int Result;

	if(CUTSCENE)                    // Nothing to do, if we in the
		return BREAK;               // script-based scene.
	if(GAME_SUSPENDED) {
        RemovePole();               // Remove pole if player is suspended
        return BREAK;
    }

    Try(IfDeathInProgress());       // Handle special cases, related to continious
                                    // non-controllable scenes: death - from
                                    // plant, water and swamp - in progress.
                                    // CONDITION - GF_EATEN | P_AT_WATER | P_AT_SWAMP;
                                    // STATE - ALMOST_DEAD

    Try(IsPlayerHasToSink());       // Look under player's feet - if there is
                                    // water or swamp under him?

    CheckForObstacles();            // Look around and set appropriate flags,
                                    // if there are obstacles ahead, behind or
                                    // beyond player.

    Try(IfPlayerIsKilled());        // Another set of special cases. Player
    Try(IfPlayerIsCoconuted());     // might be killed or coconuted.
                                    // CONDITIONS - P_JUST_KILLED, GF_COCONUTED;
                                    // STATES - KILLED, COCONUTED

    Player_HandleWeapons(Controls); // If we can reach here - check if keys
                                    // pressed or released and do all needed things
                                    // STATES - ???

    Try(Player_PoleJump_Occurs(Controls)); // Check if player isn't finished
                                    // pole jump
                                    // CONDITION - O_POLE_JUMP;
                                    // STATE - POLE_JUMP

    Try(Player_JustFired());        // Check if player just fired some weapon
                                    // CONDITIONS - O_JUST_SHOOT;
                                    // STATE - JUST_SHOOT
	DoJumpOrDuck(Controls);         // Handle situations, when player begins to
                                    // jump (without pole) or duck.
                                    // STATES - ???

    Try(DoJump());                  // Handle player in continious jump.
                                    // CONDITION - O_AT_JUMP;
                                    // STATE - JUMP
    if(DoWalk(Controls) == IN_THE_AIR)
                                    // STATE - WALKING
        Try(Player_Flight());         // CONDITIONS - O_NO_EXIT | !P_BOTTOM_EDGE;
                                    // STATE - FALLING

	return PASS;
}

/*
 *  _____                _    _
 * |  __ \              | |  | |
 * | |  | |  ___   __ _ | |_ | |__
 * | |  | | / _ \ / _` || __|| '_ \
 * | |__| ||  __/| (_| || |_ | | | | _                       _
 * |_____/  \___| \__,_| \__||_| |_|( )                     | |
 *  _ __  ___  ___  _ __    __ _ __ |/   __ _ __        ___ | |_  ___
 * | '__|/ _ \/ __|| '_ \  / _` |\ \ /\ / /| '_ \      / _ \| __|/ __|
 * | |  |  __/\__ \| |_) || (_| | \ V  V / | | | | _  |  __/| |_| (__  _
 * |_|   \___||___/| .__/  \__,_|  \_/\_/  |_| |_|( )  \___| \__|\___|(_)
 *                 | |                            |/
 *                 |_|
 */

void Player_KillHim() {
    SET_PLAYER_STATE(KILLED);
    SET_CHAR_POSITION(PLAYER, P_JUST_KILLED);
}

/*
 * Function decrements number of player's lives, wipes one hat in the footer
 * and calls Respawn(), if player isn't finally dead.
 *
 * if no more lives left, function returns GAMEOVER.
 */
static unsigned int FinishHim() {
	if(Game.Lives) {
		Game.Lives--;
		UpdateHats();
		Respawn();
		return BREAK;
	} else {
		Game.GameOver = 1;
		return GAMEOVER;
	}
}

/*
 * Function checks, if player is killed by something, and animates all phases
 * of his death.
 *
 * In case of player's death, calling function should terminate.
 * It can be done by using the macro Try();
 * In other case, execution should be continued.
 */
static unsigned int IfPlayerIsKilled() {
    FrameSequence_t const *fs;

    if(CHAR_POSITION(PLAYER, P_JUST_KILLED)) {
        if(!CHAR_OBSTACLE(PLAYER, O_AT_BOTTOM)) {
            Player->VSpeed = 127;
            DoCustomMotion(Player);
        } else {
            fs = LEFT_DIRECTION(Player->HSpeed)?&DieLeft:&DieRight;
            if(Animate(Player, fs, WITH_SPEEDS) & ANIM_IS_OVER)
                return FinishHim();
        }
        return BREAK;
    }
    return PASS;
}

/*
 * Function refreshes all needed values and display contents,
 * when player respawns.
 */
static void Respawn() {
	Game.Food = MAX_VALUE;
	Game.Water = MAX_VALUE;
	Player->Obstacles = 0;
	Player->Positions = 0;
	RefreshDisplay();
	RestorePosition();
	Game.Flags = 0;
}

/*
 * Function restores player's position after he has been killed
 * and then respawned.
 */
static void RestorePosition() {
	Player->X = Game.OrgX;
	Player->Y = Game.OrgY;
	Player->HSpeed = Game.OrgHSpeed;
}

/*
 * Function redraws hats at footer, according to the number of remaining lives.
 */
static void UpdateHats() {
	unsigned int i;
	unsigned int L, R;
	for(i=0;i<MAX_LIVES;i++) {
		if(i<Game.Lives) {
			L = HAT_L;
			R = HAT_R;
		} else
		{
			L = 0;
			R = 0;
		}
		DrawTile(HATS_Y, HATS_X + i*2, L, FooterTiles);
		DrawTile(HATS_Y, HATS_X + i*2 + 1, R, FooterTiles);
	}
}

/*
 *  ______            _                                      _        _
 * |  ____|          (_)                                    | |      | |
 * | |__   _ ____   ___ _ __ ___  _ __  _ __ ___   ___ _ __ | |_ __ _| |
 * |  __| | '_ \ \ / / | '__/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __/ _` | |
 * | |____| | | \ V /| | | | (_) | | | | | | | | |  __/ | | | || (_| | |
 * |______|_| |_|\_/ |_|_|  \___/|_| |_|_| |_| |_|\___|_| |_|\__\__,_|_|
 *     | |          | | | |
 *   __| | ___  __ _| |_| |__     ___ __ _ ___  ___  ___
 *  / _` |/ _ \/ _` | __| '_ \   / __/ _` / __|/ _ \/ __|
 * | (_| |  __/ (_| | |_| | | | | (_| (_| \__ \  __/\__ \
 *  \__,_|\___|\__,_|\__|_| |_|  \___\__,_|___/\___||___/
 */

/*
 * Function checks, if player is already catch by hungry plant, or by swamp,
 * or by water. If so, appropriate function is called.
 *
 * In case of continious death, calling function should terminate.
 * It can be done by using the macro Try();
 * In other case, execution should be continued.
 */
static unsigned int IfDeathInProgress() {
    if(GAME_FLAG(GF_EATEN)) {
        return BREAK;
    } else if(CHAR_POSITION(PLAYER, P_AT_WATER)) {
        return DeathInWater();
    } else if(CHAR_POSITION(PLAYER, P_AT_SWAMP))
        return DeathInSwamp();
    else
        return PASS;
}

/*
 * Function animates player's death in swamp.
 */
static unsigned int DeathInSwamp() {
	if(!CHAR_POSITION(PLAYER, P_AT_SWAMP)) {
		SET_CHAR_POSITION(PLAYER, P_AT_SWAMP);
		Player->Obstacles = 0;
		// RemovePole();
		signed short d = LEFT_DIRECTION(Player->HSpeed)?0xff00:0x0100;
		Player->X += d;
		Player->X &= 0xff00;
		Player->AnimationCounter = SWAMP_DEATH_LENGTH;
	}
	if(Animate(Player, &SwampedRight, WITHOUT_SPEEDS) & ANIM_IS_OVER) {
		if(!--Player->AnimationCounter)
			return FinishHim();
	}

	return BREAK;
}

/*
 * Function animates player's death in water.
 */
static unsigned int DeathInWater() {
	FrameSequence_t *fs;
    unsigned int Bubbles;

	if(!CHAR_POSITION(PLAYER, P_AT_WATER)) {
		Player->Y += ITOF(2);
		SET_CHAR_POSITION(PLAYER, P_AT_WATER);
		unsigned int Bubbles = NewChar();
		if(Bubbles != NO_ROOM) {
			CharData[Bubbles].X = Player->X + 0x0100;
			CharData[Bubbles].Y = Player->Y - 0x0100;
			CharData[Bubbles].Animation = BUBBLES;
			CharData[Bubbles].Frame = 0;
			CharData[Bubbles].HSpeed = 0;
            CharData[Bubbles].VSpeed = Player->VSpeed;
		}
	}

	fs = LEFT_DIRECTION(Player->HSpeed)?(FrameSequence_t *)&DieLeft:(FrameSequence_t *)&DieRight;
	unsigned int AnimResult = Animate(Player, fs, WITH_SPEEDS);
    // Animate bubbles too
    if(GetTileUnder(PLAYER) == TILE_WATER)
        Player->Y += ITOF(1);

    if(AnimResult & ANIM_IS_OVER) {
        Bubbles = FindCharByAnimation(BUBBLES);
        if(Bubbles != NOT_FOUND)
            CharData[Bubbles].Flags |= CF_SUSPENDED | CF_REMOVED;
        return FinishHim();
    } else
        return BREAK;
}

/*
 * Function checks tile under player's feet and, if it is water or swamp,
 * initiates appropriate kind of death.
 *
 * In case of player's death, calling function should terminate.
 * It can be done by using the macro Try();
 * In other case, execution should be continued.
 */
static unsigned int IsPlayerHasToSink() {
	int TileUnderFeet = GetTileUnder(PLAYER);

    Game.TileUnderPlayer = TileUnderFeet;
	if(TileUnderFeet == TILE_WATER) {
		return DeathInWater();
	} else if(TileUnderFeet == TILE_SWAMP) {
		return DeathInSwamp();
	} else
        return PASS;

}

/*
 *       _                       _
 *      | |                     (_)
 *      | |_   _ _ __ ___  _ __  _ _ __   __ _
 *  _   | | | | | '_ ` _ \| '_ \| | '_ \ / _` |
 * | |__| | |_| | | | | | | |_) | | | | | (_| |
 *  \____/ \__,_|_| |_| |_| .__/|_|_| |_|\__, |
 *                        | |             __/ |
 *                        |_|            |___/
 */

/*
 * Function checks, if player is trying to initiate jump or duck.
 * If conditions allows this, function does all needed job.
 *
 * In case of successfully initiated jump (or duck) calling function
 * should terminate. It can be done by using the macro Try();
 * In other case, execution should be continued.
 */
static void DoJumpOrDuck(unsigned int Controls) {
	FrameSequence_t const *fs;

	if(CHAR_OBSTACLE(PLAYER, O_AT_JUMP))
	   return;
	if(!CHAR_OBSTACLE(PLAYER, O_AT_BOTTOM))
		return;
	if(Controls & KEY_UP) {
		// Simple jump
		fs = LEFT_DIRECTION(Player->HSpeed)?&JumpLeft:&JumpRight;
		Animate(Player, fs, WITH_SPEEDS);
		SET_CHAR_OBSTACLE(PLAYER, O_AT_JUMP);
		if(Player->AnimationCounter) {
			// TODO: PlaySound(DiagonalJump)
			return;
		} else if(Player->Y >= 0x0200) {
			Player->HSpeed = LEFT_DIRECTION(Player->HSpeed)?-1:1;
			SET_CHAR_POSITION(PLAYER, P_VERT_JUMP);
			Player->JumpPower = 8;
			Player->Y -= 0x0200;
		   // TODO: PlaySound(VertJump)
		   return;
		}
		return;
	} else if(Controls & KEY_DOWN) {
		// Duck
		fs = LEFT_DIRECTION(Player->HSpeed)?&DuckLeft:&DuckRight;
		Animate(Player, fs, WITH_SPEEDS);
		return;
	}
}

/*
 * Function animates jump. More precisely, its ascending phase.
 * If conditions allows this, function does all needed job.
 *
 * In case of a continious ascending phase of the jump calling function
 * should terminate. It can be done by using the macro Try();
 * If no jump occurs, execution should be continued.
 */
static unsigned int DoJump() {
    unsigned int Obstacle, Position;
    FrameSequence_t const *fs;

    if(CHAR_OBSTACLE(PLAYER, O_AT_JUMP)) {
		// Positive Y_Acceleration
		if(CHAR_POSITION(PLAYER, P_VERT_JUMP)) {
			// Vertical Jump
			if(!--Player->JumpPower) {
				RESET_CHAR_OBSTACLE(PLAYER, O_AT_JUMP);
				RESET_CHAR_POSITION(PLAYER, P_VERT_JUMP);
			}
			return BREAK;
		} else {
			// Diagonal jump
			if(Player->AnimationCounter) {
				Player->AnimationCounter--;
				if(CHAR_OBSTACLE(PLAYER, O_AT_TOP) ||
				   CHAR_POSITION(PLAYER, P_TOP_EDGE)) {
					   Player->AnimationCounter = 0;
					   RESET_CHAR_OBSTACLE(PLAYER, O_AT_JUMP);
					   return BREAK;
				   } else {
					   if(LEFT_DIRECTION(Player->HSpeed)) {
						   Obstacle = O_AT_LEFT;
						   Position = P_LEFT_EDGE;
						   fs = &JumpLeft;
					   } else {
						   Obstacle = O_AT_RIGHT;
						   Position = P_RIGHT_EDGE;
						   fs = &JumpRight;
					   }
					   if(CHAR_POSITION(PLAYER, Position) ||
						  CHAR_OBSTACLE(PLAYER, Obstacle)) {
							  Player->AnimationCounter = 0;
							  RESET_CHAR_OBSTACLE(PLAYER, O_AT_JUMP);
						  } else {
							  Animate(Player, fs, WITH_SPEEDS);
							  Player->Frame = fs->FirstFrame;
							  DoCustomMotion(Player);
						  }
				   }
			} else {
				Player->AnimationCounter = 0;
				RESET_CHAR_OBSTACLE(PLAYER, O_AT_JUMP);
			}
		}
	}
    return PASS;
}

/*
 * __          __   _ _    _
 * \ \        / /  | | |  (_)
 *  \ \  /\  / /_ _| | | ___ _ __   __ _
 *   \ \/  \/ / _` | | |/ / | '_ \ / _` |
 *    \  /\  / (_| | |   <| | | | | (_| |
 *     \/  \/ \__,_|_|_|\_\_|_| |_|\__, |
 *                                  __/ |
 *                                 |___/
 */

/*
 * Function checks, if player is trying to walk.
 * If conditions allows this, function does all needed job.
 *
 * Depending on current player position, function returns one of two possible
 * values - ON_THE_GROUND or IN_THE_AIR. Returned value determines the further
 * action.
 */
static unsigned int DoWalk(unsigned int Controls) {
    if(CHAR_OBSTACLE(PLAYER, O_AT_BOTTOM)) {
        // Things that can be done on the ground
        RESET_CHAR_OBSTACLE(PLAYER, O_NO_EXIT);
        AdjustPlayerY(GROUND_LEVEL);
        if(Controls & KEY_LEFT) {
            // Running left
            Player_Walk(LEFT);
        } else if(Controls & KEY_RIGHT) {
            // Running right
            Player_Walk(RIGHT);
        } else {
            // Stop
            if(!(Controls & (KEY_UP | KEY_DOWN)))
            StopHim();
        }
        return ON_THE_GROUND;
    } else
        return IN_THE_AIR;
}

/*
 * Function animates the player's walking.
 */
static void Player_Walk(Direction_t d) {
	FrameSequence_t const *fs;
	unsigned int p;
	unsigned int o;
	signed short dx;
	if(d == LEFT) {
		fs = &WalkLeft;
		p = P_LEFT_EDGE;
		o = O_AT_LEFT;
		dx = -0x0100;
	} else if(d == RIGHT) {
		fs = &WalkRight;
		p = P_RIGHT_EDGE;
		o = O_AT_RIGHT;
		dx = 0x0100;
	} else return;
	if(Player->Impulse < 12)
		Player->Impulse++;
	if(Animate(Player, fs, WITH_SPEEDS) & FRAME_CHANGED)
		if(!CHAR_POSITION(PLAYER, p) && !CHAR_OBSTACLE(PLAYER, o))
			Player->X += dx;
}

/*
 * Function does all needed job, when player stops his walking.
 */
static inline void StopHim() {
	Player->Impulse = 0;
	if(LEFT_DIRECTION(Player->HSpeed))
		Player->Frame = WalkLeft.FirstFrame;
	else
		Player->Frame = WalkRight.FirstFrame;
}

/*
 *  ______ _ _       _     _                         _    __      _ _
 * |  ____| (_)     | |   | |                       | |  / _|    | | |
 * | |__  | |_  __ _| |__ | |_ ___    __ _ _ __   __| | | |_ __ _| | |___
 * |  __| | | |/ _` | '_ \| __/ __|  / _` | '_ \ / _` | |  _/ _` | | / __|
 * | |    | | | (_| | | | | |_\__ \ | (_| | | | | (_| | | || (_| | | \__ \
 * |_|    |_|_|\__, |_| |_|\__|___/  \__,_|_| |_|\__,_| |_| \__,_|_|_|___/
 *              __/ |
 *             |___/
 */

/*
 * Function animates player, when he falls down after jump, or just
 * walks out from any elevation. Also handles situations, when player crosses
 * screen bounds and changes location at flight.
 *
 * At the end of player's falling function returns BREAK, so calling function
 * should terminate. It can be done by using the macro Try();
 * In other cases execution should continue.
 */
static unsigned int Player_Flight() {
	signed int HSpeed;
	unsigned int Obstacle, Position, Result;
	FrameSequence_t const *fs;

    // Things that can be done in the air
    if(CHAR_OBSTACLE(PLAYER, O_NO_EXIT)) {
        // TODO: Adjust player's animation depending on upwards or downwards
        // he moves
        if(CHAR_POSITION(PLAYER, P_TOP_EDGE))       // Fall quickiest if breaks
           Player->VSpeed = 127;                    // into the ceiling
        if(LEFT_DIRECTION(Player->HSpeed))
            Result = CHAR_OBSTACLE(PLAYER, O_AT_LEFT);
        else
            Result = CHAR_OBSTACLE(PLAYER, O_AT_RIGHT);
        if(Result) {
            RESET_CHAR_OBSTACLE(PLAYER, O_NO_EXIT);
            return BREAK;
        }
        Position = LEFT_DIRECTION(Player->HSpeed)?P_LEFT_EDGE:P_RIGHT_EDGE;
        if(CHAR_POSITION(PLAYER, Position))
           return BREAK;
        Player->X = Player->AltX + Player->HSpeed;
        Player->Y = Player->AltY + Player->VSpeed;
        Player->X += Player->HSpeed;
        if(Player->VSpeed < 0)
            Player->VSpeed += 3;
        else
            Player->VSpeed = 127;

    } else {
        if(CHAR_POSITION(PLAYER, P_BOTTOM_EDGE))
            return BREAK;
        fs = LEFT_DIRECTION(Player->HSpeed)?&FallLeft:&FallRight;
        if(Animate(Player, fs, WITH_SPEEDS) & FRAME_CHANGED) {
            if(LEFT_DIRECTION(Player->HSpeed)) {
                Obstacle = O_AT_LEFT;
                Position = P_LEFT_EDGE;
                HSpeed = -1;
            } else {
                Obstacle = O_AT_RIGHT;
                Position = P_RIGHT_EDGE;
                HSpeed = 1;
            }
            if(CHAR_OBSTACLE(PLAYER, Obstacle) ||
               CHAR_POSITION(PLAYER, Position))
                Player->HSpeed = HSpeed;
            DoCustomMotion(Player);
        }
    }
    return PASS;
}

/*
 *  ______ _      _
 * |  ____(_)    (_)
 * | |__   _ _ __ _ _ __   __ _  __      _____  __ _ _ __   ___  _ __  ___
 * |  __| | | '__| | '_ \ / _` | \ \ /\ / / _ \/ _` | '_ \ / _ \| '_ \/ __|
 * | |    | | |  | | | | | (_| |  \ V  V /  __/ (_| | |_) | (_) | | | \__ \
 * |_|    |_|_|  |_|_| |_|\__, |   \_/\_/ \___|\__,_| .__/ \___/|_| |_|___/
 *                         __/ |                    | |
 *                        |___/                     |_|
 */

/*
 * Function does some job, related to using any weapons or jumping pole.
 * At first, pole jump is initiated in this function, if pole was chosen as
 * active weapon.
 * At second,
 */
static void Player_HandleWeapons(unsigned int Controls) {
    FrameSequence_t const *fs;

    if(CHAR_OBSTACLE(PLAYER, O_POLE_JUMP) ||    // Nothing to do, if we are
       CHAR_OBSTACLE(PLAYER, O_JUST_SHOOT))     // preparing to pole jump or
        return;                                 // just fired some weapon

	// Work related to weapon fire or pole jump
    if(Controls & KEY_FIRE) {                   // Fire key is down?
        if(Game.Weapon & POLE)                  // If pole is selected -
            Player_PoleJump_Begin();             // begin preparation to jump
        else
            IncreaseForce();                    // Else just increase force.
    } else if(Game.Force) {                     // Fire key released
        // TODO: Figure out, why O_POLE_JUMP was mentioned here.
        //RESET_CHAR_OBSTACLE(PLAYER, O_POLE_JUMP | O_AT_JUMP);
        RESET_CHAR_OBSTACLE(PLAYER, O_AT_JUMP);
        SET_CHAR_OBSTACLE(PLAYER, O_JUST_SHOOT);
        fs = (LEFT_DIRECTION(Player->HSpeed))?(FrameSequence_t *)&ThrowLeft:(FrameSequence_t *)&ThrowRight;
        Player->Frame = fs->FirstFrame;
    }
}

static unsigned int Player_JustFired() {
    FrameSequence_t const *fs;

    if(CHAR_OBSTACLE(PLAYER, O_JUST_SHOOT)) {
        fs = LEFT_DIRECTION(Player->HSpeed)?&ThrowLeft:&ThrowRight;
        if(Animate(Player, fs, WITHOUT_SPEEDS) & ANIM_IS_OVER) {
            RESET_CHAR_OBSTACLE(PLAYER, O_JUST_SHOOT);
            RESET_CHAR_POSITION(PLAYER, P_VERT_JUMP);
            Player_Fire();
            Game.Force = 0;
        }
        return BREAK;
    } else
        return PASS;
}

static void Player_Fire() {
    unsigned int Weapon = Game.Weapon & WEAPON_INDEX_MASK;

    if(!CHAR_FLAG(Weapon, CF_ACTIVE)) {
        switch(Weapon) {
        case BOOMERANG:
            Player_ThrowBoomerang();
            break;
        case KNIFE:
            Player_ThrowKnife();
            break;
        case BOMB:
            Player_ThrowBomb();
            break;
        }
    }
}

static void Player_ThrowBoomerang() {
    AnimInitStruct_t is;

    is.Animation = BOOMERANG;
    is.Frame = 0;

    if(LEFT_DIRECTION(Player->HSpeed)) {
        is.X = Player->X;
        is.HSpeed = -(Game.Force << 1);
        Game.Boom_State = 0x84;
    } else {
        is.X = Player->X + 0x0200;
        is.HSpeed = Game.Force << 1;
        Game.Boom_State = 0x01;
    }
    is.Y = Player->Y + 0x0100;
    UpdateCharAnimation(BOOMERANG, &is);
    InsertChar(BOOMERANG, BOOMERANG);
    Boomerang->VSpeed = 0;
    Game.Boom_Counter = Game.Force << 1;
    Game.Boom_Force = Game.Force << 1;

    // TODO: Play sound_7
}

static void Player_ThrowKnife() {
    AnimInitStruct_t is;

    is.Animation = KNIFE;
    is.Y = Player->Y + 0x0100;

    if(LEFT_DIRECTION(Player->HSpeed)) {
        is.X = Player->X;
        is.HSpeed = -(Game.Force << 1);
        is.Frame = 1;
    } else {
        is.X = Player->X + 0x0200;
        is.HSpeed = (Game.Force << 1);
        is.Frame = 0;
    }
    UpdateCharAnimation(KNIFE, &is);
    InsertChar(KNIFE, KNIFE);
    CharData[KNIFE].VSpeed = 0;
    // TODO: Play sound_5
}

static void Player_ThrowBomb() {
    AnimInitStruct_t is;

    is.Animation = BOMB;
    is.Frame = 0;
    is.Y = Player->Y - 0x0100;
    if(is.Y <= 0)
    return;
    if(LEFT_DIRECTION(Player->HSpeed)) {
        is.X = Player->X;
        is.HSpeed = -Game.Force;
    } else {
        is.X = Player->X + 0x0200;
        is.HSpeed = Game.Force;
    }
    UpdateCharAnimation(BOMB, &is);
    InsertChar(BOMB, BOMB);
    CharData[BOMB].VSpeed = -(Game.Force << 1);
}

/*
 * Function increases force value, if it is possible, and refreshes
 * corresponding gauge at the footer.
 */
static void IncreaseForce() {
    if(Game.Force < MAX_FORCE) {
        Game.Force += FORCE_STEP;
        DrawSingleGauge(FORCE_GAUGE, Game.Force, FORCE_GAUGE_COLOR);
    }
}

/*
 * Function resets force value to zero and refreshes corresponding gauge at
 * the footer. This is done when player begins using its weapons or pole.
 */
static void ResetForceToZero() {
	Game.Force = 0;
    DrawSingleGauge(FORCE_GAUGE, Game.Force, FORCE_GAUGE_COLOR);
}

/*
 *  _____      _             _                       _
 * |  __ \    | |           | |                     (_)
 * | |__) |__ | | ___       | |_   _ _ __ ___  _ __  _ _ __   __ _
 * |  ___/ _ \| |/ _ \  _   | | | | | '_ ` _ \| '_ \| | '_ \ / _` |
 * | |  | (_) | |  __/ | |__| | |_| | | | | | | |_) | | | | | (_| |
 * |_|   \___/|_|\___|  \____/ \__,_|_| |_| |_| .__/|_|_| |_|\__, |
 *                                            | |             __/ |
 *                                            |_|            |___/
 */

/*
 * Function implements zero phase of pole jump.
 * It initializes neccesary variables and adds pole to the list of active
 * "characters".
 * It is called from Player_HandleWeapons();
 */
static void Player_PoleJump_Begin() {
    AnimInitStruct_t is;

    SET_CHAR_OBSTACLE(PLAYER, O_POLE_JUMP);
    SET_PLAYER_STATE(POLE_JUMP);
    if(LEFT_DIRECTION(Player->HSpeed)) {
        Game.PoleJump_Increment = 0xff00;
        is.X = Player->X - 0x0500;	// -5 from INT
        is.Frame = 7;								// Pole - left
        is.HSpeed = -5;
    } else {
        Game.PoleJump_Increment = 0x0100;
        is.X = Player->X + 0x0100;	// +1 toINT
        is.Frame = 0;								// Pole - right
        is.HSpeed = 1;
    }
    is.Y = Player->Y + 0x01C0;
    is.Animation = POLE;
    if(CHAR_OBSTACLE(PLAYER, O_AT_BOTTOM)) {
        UpdateCharAnimation(POLE, &is);
        InsertChar(POLE, POLE);
    } else {
        RESET_CHAR_OBSTACLE(PLAYER, O_POLE_JUMP);
        ResetForceToZero();
    }

}

static unsigned int Player_PoleJump_Init() {
    unsigned int Row, Col, LeftCol;
    unsigned int i;
    unsigned int Tile;

    Row = GET_ROW(CharData[POLE].Y);
    // Free end of pole is located here
    Col = CharData[POLE].Frame==0?6:0;
    Col += GET_COL(CharData[POLE].X);
    if(Col > 39)
        return Player_PoleJump_Terminate();
    LeftCol = GET_COL(CharData[POLE].X);
    for(i=0;i<6;i++) {
        Tile = GetTileAt(Row, LeftCol + i);
        if(Tile >= WALL_CAPABLE_TILE)
            return Player_PoleJump_Terminate();
    }
    Row = CharData[POLE].Y + 0x0140;
    Tile = GetTileAt(GET_ROW(Row), Col);
    if(Tile < FLOOR_CAPABLE_TILE)
        return Player_PoleJump_Terminate();
    return PASS;
}

static unsigned int Player_PoleJump_Occurs(unsigned int Controls) {
    unsigned int Result;
    unsigned int Frame;
    unsigned int Row, Col, Condition, Force;
    FrameSequence_t fs;

    if(CHAR_OBSTACLE(PLAYER, O_POLE_JUMP)) {
        if(CharData[POLE].Flags & CF_NOT_REDRAWN)
            Try(Player_PoleJump_Init());
        if(!CHAR_OBSTACLE(POLE, O_AT_JUMP)) {
            if(Controls & KEY_FIRE) {
                IncreaseForce();
                Frame = (LEFT_DIRECTION(Player->HSpeed))?WalkLeft.FirstFrame:WalkRight.FirstFrame;
                Player->Frame = Frame;
                return BREAK;
            } else
                SET_CHAR_OBSTACLE(POLE, O_AT_JUMP);
        }
        if(LEFT_DIRECTION(Player->HSpeed)) {
            fs.FirstFrame = 7;
            fs.LastFrame = 13;
        } else {
            fs.FirstFrame = 0;
            fs.LastFrame = 6;
        }
        fs.Delay = 1;
        Result = Animate(Pole, &fs, WITHOUT_SPEEDS);
        if(!(Result & FRAME_CHANGED))
            return BREAK;
        if(Result & ANIM_IS_OVER) {
            // Pole removed. Go to free flight!
            Force = Game.Force << 1;
            Player->VSpeed = -Force;
            Force -= 0x0c;
            Force |= 0x01;
            Player->HSpeed = LEFT_DIRECTION(Player->HSpeed)?-Force:Force;
            SET_CHAR_OBSTACLE(PLAYER, O_NO_EXIT);
            Pole->Frame = LEFT_DIRECTION(Player->HSpeed)?0x0d:0x06;
            Player_PoleJump_Terminate();
            return BREAK;
        } else {
            Frame = Pole->Frame;
            if((Frame == 1) || (Frame == 8)) {
                Player->Frame = (Frame == 1)?JumpRight.FirstFrame:JumpLeft.FirstFrame;
                return BREAK;
            } else {
                GetTileUnder(POLE);
                Row = Pole->Y;
                Col = Pole->X;
                if(!LEFT_DIRECTION(CharData[POLE].HSpeed))
                    Col += Game.PoleJump_Increment;
                Row -= 0x0100;
                Pole->X = Col;
                Pole->Y = Row;
                if(LEFT_DIRECTION(Player->HSpeed))
                    Condition = (Player->Positions | Player->Obstacles) &
                        (P_RIGHT_EDGE | P_TOP_EDGE);
                else
                    Condition = (Player->Positions | Player->Obstacles) &
                        (P_LEFT_EDGE | P_TOP_EDGE);

                if(Condition) {
                    Try(Player_PoleJump_Terminate());
                } else {
                    Row = Player->Y;
                    Col = Player->X;
                    Col += Game.PoleJump_Increment;
                    Row -= 0x0100;
                    Player->X = Col;
                    Player->Y = Row;
                }
            }

        }
        return BREAK;
    } else
        return PASS;
}

static unsigned int Player_PoleJump_Terminate() {
    RESET_CHAR_OBSTACLE(PLAYER, O_POLE_JUMP);
    SET_PLAYER_STATE(FALLING);
    SET_CHAR_FLAG(POLE, CF_SUSPENDED | CF_REMOVED);
    RESET_CHAR_OBSTACLE(POLE, O_AT_JUMP);
    CopyNewToOld(POLE);
    Game.Force = 0;

    return BREAK;
}

/*
 * Function removes pole, if game is suspended.
 */
static inline void RemovePole() {
    if(CHAR_FLAG(POLE, CF_ACTIVE))
       SET_CHAR_FLAG(POLE, CF_SUSPENDED | CF_REMOVED);
}

/*
 *   ____  _   _                       _   _ _ _ _   _
 *  / __ \| | | |                     | | (_) (_) | (_)
 * | |  | | |_| |__   ___ _ __   _   _| |_ _| |_| |_ _  ___  ___
 * | |  | | __| '_ \ / _ \ '__| | | | | __| | | | __| |/ _ \/ __|
 * | |__| | |_| | | |  __/ |    | |_| | |_| | | | |_| |  __/\__ \
 *  \____/ \__|_| |_|\___|_|     \__,_|\__|_|_|_|\__|_|\___||___/
 *
 */

/*
 * Function checks for obstacles ahead, behind and beyond the player.
 * It sets corresponding flags in player's data structure.
 */
static void CheckForObstacles() {
    unsigned int i;
	int Row = GET_CHAR_ROW(PLAYER);
	int Col = GET_CHAR_COL(PLAYER);
    	CharData[PLAYER].Obstacles &= ~(O_AT_LEFT | O_AT_RIGHT |
		O_AT_TOP);

	for(i=0;i<3;i++) {
		if(GetTileAt(Row, Col+i) >= WALL_CAPABLE_TILE)
			Player->Obstacles |= O_AT_TOP;
		if(GetTileAt(Row+i, Col) >= WALL_CAPABLE_TILE)
			Player->Obstacles |= O_AT_LEFT;
		if(GetTileAt(Row+i, Col+COND_WIDTH) >= WALL_CAPABLE_TILE)
			Player->Obstacles |= O_AT_RIGHT;
	}
}

/*
 * TODO: Stub! Should be rewritten!!!
 */
static unsigned int IfPlayerIsCoconuted() {
    if(GAME_FLAG(GF_COCONUTED))
        return BREAK;
    else
        return PASS;
}

