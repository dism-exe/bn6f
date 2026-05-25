#include "EWRAM.h"

/* Adds r0, r1, r2 to bytes +0, +1, +2 of 0x02000AA0. */
void owPlayer_offsetS2000aa0_param0x0to0x2_809e2dc_c(u32 a, u32 b, u32 c)
{
    u8 *p = (u8 *) 0x02000AA0u;
    p[0] = (u8)(p[0] + a);
    p[1] = (u8)(p[1] + b);
    p[2] = (u8)(p[2] + c);
}
