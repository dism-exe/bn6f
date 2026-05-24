#include "types.h"

// Ambient "current sprite" pointer convention: r5 holds an ObjectHeader*.
// The sprite sub-block starts at offset (hdr[2] & 0xF0) — byte 2 is
// TypeAndSpriteOffset, upper nibble × 16 = sprite offset. Within the
// sprite block, Unk_06 (the color shader) lives at offset 6.
void sprite_zeroColorShader_c(void)
{
    register u8 *r5p asm("r5");
    u8 *spr;
    asm volatile("" : "=r"(r5p));

    spr = r5p + (r5p[2] & 0xF0);
    *(u16 *)(spr + 6) = 0;
}
