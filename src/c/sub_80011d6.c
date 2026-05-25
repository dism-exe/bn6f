#include "EWRAM.h"

/* Bounding-box check: returns 1 iff
     (r0 - r2 + r4) < 2*r4   AND   (r1 - r3 + r4) < 2*r4
   (unsigned compare).  In effect: |r0-r2| < r4 AND |r1-r3| < r4. */
u32 sub_80011D6_c(u32 a, u32 b, u32 c, u32 d, u32 e)
{
    u32 lim = e << 1;
    if ((a - c + e) >= lim) return 0u;
    if ((b - d + e) >= lim) return 0u;
    return 1u;
}
