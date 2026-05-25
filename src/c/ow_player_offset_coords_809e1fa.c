#include "EWRAM.h"

/* Adds r0/r1/r2 to the u32s at OWPlayer +0x08 / +0x0C / +0x10. */
void owPlayer_offsetS200ace0Coords_809e1fa_c(u32 a, u32 b, u32 c)
{
    u8 *p = (u8 *) 0x0200ACE0u;
    *(u32 *)(p + 8)  += a;
    *(u32 *)(p + 12) += b;
    *(u32 *)(p + 16) += c;
}
