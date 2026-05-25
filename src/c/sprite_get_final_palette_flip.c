#include "EWRAM.h"

/* Same slot-base pattern as sprite_getPalette: byte[+2] >> 4
   names a 16-byte slot off the sprite ptr; FinalPalette is the
   high nibble of slot[+0x15]; Flip is bits 4-5 of slot[+0x16]. */

u32 sprite_getFinalPalette_c(u8 *sprite)
{
    u8 *base = sprite + ((sprite[2] >> 4) << 4);
    return base[0x15] & 0xF0u;
}

u32 sprite_getFlip_c(u8 *sprite)
{
    u8 *base = sprite + ((sprite[2] >> 4) << 4);
    return (base[0x16] & 0x30u) >> 4;
}
