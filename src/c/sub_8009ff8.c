#include "EWRAM.h"

/* Append-to-queue: write (a,b,c,d) into slot 0x03002180[i*16]
   where i = *(u32 *)0x03000EA8, then bump that counter. */
void sub_8009FF8_c(u32 a, u32 b, u32 c, u32 d)
{
    u32 *count = (u32 *) 0x03000EA8u;
    u32 i = *count;
    u32 *slot = (u32 *)(0x03002180u + (i << 4));
    slot[0] = a;
    slot[1] = b;
    slot[2] = c;
    slot[3] = d;
    *count = i + 1u;
}
