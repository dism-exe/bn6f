#include "EWRAM.h"

/* Sum 12 consecutive u16s starting at 0x02000FA0 (signed
   accumulate); classify result against two thresholds:
     sum >  0x2A30 -> 0  (high)
     sum >  0x1C20 -> 1  (mid)
     else          -> 2  (low) */
u32 sub_800B734_c(void)
{
    u16 *p = (u16 *) 0x02000FA0u;
    s32 sum = 0;
    u32 i;
    for (i = 0; i < 12u; i++) {
        sum += p[i];
    }
    if (sum > 0x2A30) return 0u;
    if (sum > 0x1C20) return 1u;
    return 2u;
}
