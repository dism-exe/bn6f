#include "types.h"

// r5 = ambient ObjectHeader*. Toggle sprite Unk_03: set bit 0, clear bit 2.
void sprite_hasShadow_c(void)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    u8 v;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    v = spr[3];
    v |= 1;
    v &= ~4;
    spr[3] = v;
}
