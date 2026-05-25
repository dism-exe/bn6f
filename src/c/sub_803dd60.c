#include "EWRAM.h"

extern u32 eStruct200BC30_getJumpOffset00_c(void);

/* Returns 1 iff (jumpOffset00 != 0 AND jumpOffset00 ∈ {4, 8}) OR
   (else branch): (*(u32 *)(0x020099D0 + 0x48) & 3) != 0. */
u32 sub_803DD60_c(void)
{
    u32 jo = eStruct200BC30_getJumpOffset00_c();
    if (jo != 0u) {
        if (jo == 4u) return 0u;
        if (jo == 8u) return 1u;
    }
    if ((*(u32 *)(0x020099D0u + 0x48u) & 3u) != 0u) return 1u;
    return 0u;
}
