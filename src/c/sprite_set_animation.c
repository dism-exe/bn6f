#include "types.h"

// r5 = ambient ObjectHeader*; r0 = animation byte (Unk_00).
void sprite_setAnimation_c(u8 anim)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    spr[0] = anim;
}
