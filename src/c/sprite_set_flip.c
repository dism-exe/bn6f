#include "types.h"

// r5 = ambient ObjectHeader*. Sprite Unk_13 bits 4..5 get (r0 & 3) << 4,
// and the same masked bits in Unk_16 mirror that field.
void sprite_setFlip_c(u32 flip)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    u8 unk13;
    u8 unk16;
    u8 new13bits;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    unk13 = spr[0x13];
    unk13 &= ~0x30;
    unk13 |= (u8)((flip << 4) & 0x30);
    spr[0x13] = unk13;
    new13bits = unk13 & 0x30;

    unk16 = spr[0x16];
    unk16 &= ~0x30;
    unk16 |= new13bits;
    spr[0x16] = unk16;
}
