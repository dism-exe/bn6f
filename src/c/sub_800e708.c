#include "EWRAM.h"

/* IsR2BetweenR0AndR1 sibling: returns 1 if v ∈ {a, b}, or
   v is strictly between min(a,b) and max(a,b), with inclusivity on
   max (exclusive on min). */
u32 sub_800E708_c(s32 a, s32 b, s32 v)
{
    if (v == a || v == b) return 1u;
    if (a <= b) {
        if (v <= a) return 0u;
        if (v >  b) return 0u;
    } else {
        if (v <  b) return 0u;
        if (v >  a) return 0u;
    }
    return 1u;
}
