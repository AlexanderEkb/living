#ifndef ANIMATIONS_H
#define ANIMATIONS_H

#include <stdint.h>
#include "Game.h"

#define WITHOUT_SPEEDS		(0)
#define WITH_SPEEDS			(1)

#define FRAME_NOT_CHANGED	(0x00)
#define FRAME_CHANGED		(0x01)
#define ANIM_IS_OVER		(0x02)

__packed typedef struct {
		int Width;
		int Height;
		void *Data;
} Sprite_t;

__packed typedef struct {
		unsigned char Delay;
		unsigned char FirstFrame;
		unsigned char LastFrame;
		signed char HSpeed;
		signed char VSpeed;
} FrameSequence_t;

typedef struct {
	unsigned int Animation;
	unsigned int Frame;
	unsigned int X;
	unsigned int Y;
	int16_t HSpeed;
} AnimInitStruct_t;

typedef __packed struct {
	unsigned short W;
	unsigned short H;
} OverallDims_t;

extern __packed const OverallDims_t OverallDims[];
extern const void *Animations[];

extern const FrameSequence_t WalkRight;
extern const FrameSequence_t JumpRight;
extern const FrameSequence_t DuckRight;
extern const FrameSequence_t ThrowRight;
extern const FrameSequence_t FallRight;
extern const FrameSequence_t DieRight;
extern const FrameSequence_t CoconutedRight;
extern const FrameSequence_t EatenRight;
extern const FrameSequence_t SwampedRight;

extern const FrameSequence_t WalkLeft;
extern const FrameSequence_t JumpLeft;
extern const FrameSequence_t DuckLeft;
extern const FrameSequence_t ThrowLeft;
extern const FrameSequence_t FallLeft;
extern const FrameSequence_t DieLeft;
extern const FrameSequence_t CoconutedLeft;
extern const FrameSequence_t EatenLeft;
extern const FrameSequence_t SwampedLeft;

unsigned int Animate(CharData_t *ch, const FrameSequence_t *fs, unsigned int UpdateSpeed);
void UpdateCharAnimation(int c, AnimInitStruct_t *is);
#endif /*ANIMATIONS_H*/
