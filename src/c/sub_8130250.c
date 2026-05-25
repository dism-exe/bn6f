#include "EWRAM.h"

extern void sub_802FE28_c(u32 a, u32 b, u32 c, u32 d);

/* Call sub_802FE28(a, b, 0, 5) eight times, advancing a by
   0x80000 and b by 2 per iteration.  Initial values come from
   *(u32 *)0x08130280 (0x00058018) and *(u32 *)0x0813028C
   (0x0000B860). */
void sub_8130250_c(void)
{
    u32 a = *(u32 *) 0x08130280u;
    u32 b = *(u32 *) 0x0813028Cu;
    u32 i;
    for (i = 0; i < 8u; i++) {
        sub_802FE28_c(a, b, 0u, 5u);
        a += 0x80000u;
        b += 2u;
    }
}
