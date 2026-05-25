#include "types.h"

extern void sub_802FE6A_c(u32 scale_param);

// r5 = ambient ObjectHeader*.
//
// If the sprite's Unk_11 has either of bits 0/1 set, clear both, then
// extract bits 1..5 of Unk_13 as a 5-bit value, clear those bits in
// Unk_13, and pass the extracted value to sub_802FE6A.
void sprite_makeUnscalable_c(void)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    u8 v11;
    u8 v13;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);

    v11 = spr[0x11];
    if ((v11 & 3u) == 0u) return;

    spr[0x11] = v11 & ~3u;

    v13 = spr[0x13];
    spr[0x13] = v13 & ~0x3eu;
    sub_802FE6A_c((u32)((v13 & 0x3eu) >> 1));
}
