#ifndef CHARACTERS_H
#define CHARACTERS_H

#define CHAR_FLAG(X, Y) (CharData[X].Flags & (Y))
#define SET_CHAR_FLAG(X, Y) {CharData[X].Flags |= (Y);}
#define RESET_CHAR_FLAG(X, Y) {CharData[X].Flags &= ~(Y);}

#define CHAR_POSITION(X, Y) (CharData[X].Positions & (Y))
#define SET_CHAR_POSITION(X, Y) {CharData[X].Positions |= (Y);}
#define RESET_CHAR_POSITION(X, Y) {CharData[X].Positions &= ~(Y);}

#define CHAR_OBSTACLE(X, Y) (CharData[X].Obstacles & (Y))
#define SET_CHAR_OBSTACLE(X, Y) {CharData[X].Obstacles |= (Y);}
#define RESET_CHAR_OBSTACLE(X, Y) {CharData[X].Obstacles &= ~(Y);}

#define GET_CHAR_ROW(C) (CharData[C].Y >> 8)
#define GET_CHAR_COL(C) (CharData[C].X >> 8)

#define LEFT_DIRECTION(X) ((X) < 0)

/************ CHAR STATE FLAGS ************/
#define CF_SUSPENDED	(0x04)
#define CF_DRAWABLE		(0x08)
#define CF_REMOVED		(0x10)
#define CF_NOT_REDRAWN	(0x40)
#define CF_ACTIVE		(0x80)

/************ CHARACTER POSITIONS ************/
#define P_AT_SWAMP		(0x01)
// TODO: Check, if P_JUST_KILLED flag became obsolete
#define P_JUST_KILLED	(0x02)
#define P_AT_WATER		(0x04)
#define P_VERT_JUMP		(0x08)
#define P_LEFT_EDGE		(0x10)
#define P_RIGHT_EDGE	(0x20)
#define P_BOTTOM_EDGE	(0x40)
#define P_TOP_EDGE		(0x80)

/************ OBSTACLE FLAGS ************/
#define O_NO_EXIT		(0x01)
#define O_POLE_JUMP		(0x02)
#define O_JUST_SHOOT	(0x04)
#define O_AT_JUMP		(0x08)
#define O_AT_LEFT		(0x10)
#define O_AT_RIGHT		(0x20)
#define O_AT_BOTTOM		(0x40)
#define O_AT_TOP		(0x80)

#define NO_COLLISION    (0x00)
#define COLLISION       (0x01)

/*
typedef __packed struct {
    int8_t F;
    int8_t I;
} Fixed_t;

typedef union {
    Fixed_t F;
    int16_t Value;
} Number_t;
*/

typedef __packed struct {
    unsigned char Duration;
    signed char HSpeed;
    signed char VSpeed;

} MotionPhase_t;

typedef __packed struct {
    unsigned char Delay;
    unsigned char Right_First;
    unsigned char Right_Last;
    unsigned char Left_First;
    unsigned char Left_Last;
    void  *Script;
    unsigned short Unknown;
    unsigned char Extras;
    void *ExtraData;
} CustomData_t;

typedef __packed struct {
	unsigned char Flags;
        union {
          unsigned int AnimationCounter;
          unsigned int Impulse;
        };

	signed short AltX;
	signed short AltY;
	unsigned char AltAnimation;
	unsigned char AltFrame;
	unsigned char AltObstacles;
	unsigned char AltJumpPower;

	signed short X;
	signed short Y;
	unsigned char Animation;
	unsigned char AnimDelay;
	unsigned char Frame;
	unsigned char Obstacles;
	unsigned char JumpPower;

	signed short HSpeed;
	signed short VSpeed;
	unsigned char AnimationDelay;
	unsigned char XOffset;
	unsigned char AnimWidth;
	unsigned char AnimHeight;
    union {
        char Positions;
        char MotionPhase;
    };
	unsigned char Order;
    CustomData_t *ExtraData;
} CharData_t;

unsigned int Chars_CheckForCollision(CharData_t *Char1, CharData_t *Char2);

#endif /* CHARACTERS_H */
