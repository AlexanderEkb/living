#ifndef LOCATIONS_H
#define LOCATIONS_H

#include <stdint.h>
#include "Game.h"

#define DO_NOT_LOAD         (0x80)
#define PICKABLES_COUNT		(19)

typedef __packed struct {
    unsigned char Delay;
    unsigned char HSpeed;
    unsigned char VSpeed;
} EnemyAnimation_t;

typedef __packed struct {
	unsigned char LowerLeftExit;
	unsigned char UpperLeftExit;
	unsigned char UpperRightExit;
	unsigned char LowerRightExit;
	unsigned char ItemsCount;
	void *Items;
    void *Scripts;
} LocationInfo_t;

typedef __packed struct {
		unsigned char Flags;
		unsigned char Animation;
		unsigned char Frame;
		uint16_t Y;
		uint16_t X;
        void *ExtraData;
} LocationItem_t;

extern const void *Locations[];
extern const LocationItem_t *Pickables[PICKABLES_COUNT];

unsigned int LoadLocation();


#endif /* LOCATIONS_H */
