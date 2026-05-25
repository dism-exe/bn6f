#include "EWRAM.h"

/* Directional comparator: high nibble encodes sign of (r0-r2),
   low nibble encodes sign of (r1-r3), ORed together.
   (>) = 8|2, (<) = 4|1, (=) = 0|0.  Signed compare. */
u32 sub_801BE04_c(s32 a, s32 b, s32 c, s32 d)
{
    u32 hi, lo;
    if      (a > c) hi = 8u;
    else if (a < c) hi = 4u;
    else            hi = 0u;
    if      (b > d) lo = 2u;
    else if (b < d) lo = 1u;
    else            lo = 0u;
    return hi | lo;
}
