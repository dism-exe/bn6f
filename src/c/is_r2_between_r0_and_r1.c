#include "EWRAM.h"

/* Returns 1 iff r2 is strictly between min(r0,r1) and max(r0,r1)
   (signed compare; min-exclusive on the order of the two args).
   - If r0 <= r1: returns 1 iff r0 < r2 <= r1.
   - If r0 >  r1: returns 1 iff r1 < r2 <= r0. */
u32 IsR2BetweenR0AndR1_c(s32 a, s32 b, s32 v)
{
    if (a <= b) {
        return (v > a && v <= b) ? 1u : 0u;
    } else {
        return (v > b && v <= a) ? 1u : 0u;
    }
}
