#include "EWRAM.h"

/* sub_81325E4 — byte LUT in ROM at 0x081325F0. */
u32 sub_81325E4_c(u32 idx)
{
    return ((u8 *) 0x081325F0u)[idx];
}

/* sub_81376CC — reads u16 at (r0 - r1 + r1*2 + 4) = (r0 + r1 + 4).
   The dead load of *off_8137710 from 0x020065B4 is omitted (EWRAM,
   no side effect). */
u32 sub_81376CC_c(u32 r0, u32 r1)
{
    return *(u16 *)(r0 + r1 + 4u);
}
