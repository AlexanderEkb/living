#include "Chars.h"
#include "Animations.h"

typedef struct {
    signed int position;
    unsigned int length;
} Interval_t;

unsigned int Chars_CheckForIntersection(Interval_t *i1, Interval_t *i2 );

unsigned int Chars_CheckForCollision(CharData_t *char1, CharData_t *char2) {
    Interval_t i1, i2;
    Sprite_t *sprite1, *sprite2;

    sprite1 = ((Sprite_t **)Animations[char1->Animation])[char1->Frame];
    sprite2 = ((Sprite_t **)Animations[char2->Animation])[char2->Frame];

    i1.position = char1->X;
    i1.length = sprite1->Width << 5;

    i2.position = char2->X;
    i2.length = sprite2->Width << 5;

    if(Chars_CheckForIntersection(&i1, &i2 ) == NO_COLLISION)
        return NO_COLLISION;

    i1.position = char1->Y;
    i1.length = sprite1->Height << 5;

    i2.position = char2->Y;
    i2.length = sprite2->Height << 5;

    if(Chars_CheckForIntersection(&i1, &i2 ) == NO_COLLISION)
        return NO_COLLISION;

    return COLLISION;
}

unsigned int Chars_CheckForIntersection(Interval_t *i1, Interval_t *i2 ) {
    Interval_t *aux;

    if(i1->position > i2->position) {
        aux = i1;
        i1 = i2;
        i2 = aux;
    }
    if((i1->position + i1->length) < i2->position)
        return NO_COLLISION;

    return COLLISION;
}
