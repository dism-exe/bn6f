#include "EWRAM.h"

/* On the block at 0x02000AA0: write 4 u32s (a,b,c,d) at +12/16/20/24
   and set byte +11 = 1. */
void sub_809E3C4_c(u32 a, u32 b, u32 c, u32 d)
{
    u8 *p = (u8 *) 0x02000AA0u;
    *(u32 *)(p + 12) = a;
    *(u32 *)(p + 16) = b;
    *(u32 *)(p + 20) = c;
    *(u32 *)(p + 24) = d;
    p[11] = 1;
}
