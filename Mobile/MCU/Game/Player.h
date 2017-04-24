#ifndef PLAYER_H
#define PLAYER_H

#define PASS            (0)
#define BREAK           (1)
#define GAMEOVER    	(2)
#define ON_THE_GROUND   (3)
#define IN_THE_AIR      (4)

#define MAX_FORCE   (0x3C)
#define FORCE_STEP  (2)

#define FIRED_POLE (0x10)
#define FIRED_BOMB (0x20)
#define FIRED_KNIFE (0x40)
#define FIRED_BOOMERANG (0x80)
#define FIRED_MASK (FIRED_POLE | FIRED_BOMB | FIRED_KNIFE | FIRED_BOOMERANG)

extern CharData_t *Player;
extern CharData_t *Pole;

unsigned int HandlePlayer(unsigned int Controls);
void Player_KillHim();

#endif /* PLAYER_H */