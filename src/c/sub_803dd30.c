#include "EWRAM.h"

extern u32 eStruct200BC30_getJumpOffset00_c(void);

/* Z-flag predicate (flag-dep callers): returns 1 in two cases:
     - jo == 8                          (always)
     - jo not in {4, 8} AND
       (*(u32 *)(0x020099D0+0x48) & 3) != 0
   Returns 0 in the {jo==4} and {jo==0 AND bits clear} cases. */
static u32 sub_803DD30_impl(void)
{
    u32 jo = eStruct200BC30_getJumpOffset00_c();
    if (jo != 0u) {
        if (jo == 4u) return 0u;
        if (jo == 8u) return 1u;
        /* fall through to bit-check */
    }
    return *(u32 *)(0x020099D0u + 0x48u) & 3u;
}

DECOMP_FLAG_WRAPPER(sub_803DD30_c, sub_803DD30_impl)
