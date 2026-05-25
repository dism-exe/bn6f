#include "EWRAM.h"

/* Sprite struct: byte at +2 holds (parent_index << 4 | flags); the
   high nibble names a 16-byte slot whose base is r0 + (slot << 4).
   ColorShader is the u16 at +6 within that slot; Palette is the u8
   at +4.  When parent_index == 0 the slot starts at r0 itself. */

u32 sprite_getColorShader_c(u8 *sprite)
{
    u8 *base = sprite + ((sprite[2] >> 4) << 4);
    return *(u16 *)(base + 6);
}

u32 sprite_getPalette_c(u8 *sprite)
{
    u8 *base = sprite + ((sprite[2] >> 4) << 4);
    return base[4];
}
