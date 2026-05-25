#include "EWRAM.h"

extern u32 sub_803DD60_c(void);

/* Variant of sub_8132430 with an extra "both entries are 8" priority
   level (returns 8 when both `a` and `b` equal 8 — earlier rule):

     primary    : if a == 8: b == 8 → 8, else → 1
                  else b == 8 → 2, b == 4 → 3 (and a == 4 → 4)
     secondary  : if b == 8: a == 8 → 8, else → 1
                  else a == 8 → 2, a == 4 → 3 (and b == 4 → 4)

   Returns 0xFF when no entry's +8 hword is greater than 2. */
u32 sub_81324A8_c(u8 *p)
{
    u32 a = *(u16 *)(p + 8);
    u32 b = *(u16 *)(p + 24);
    u32 count = 0;
    u32 prim;

    if ((s32)a > 2) count++;
    if ((s32)b > 2) count++;
    if (count == 0) return 0xFFu;

    prim = sub_803DD60_c();
    if (prim) {
        if (a == 8u) {
            return (b == 8u) ? 8u : 1u;
        }
        if (b == 8u) return 2u;
        if (b != 4u) return 0xFFu;
        if (a == 4u) return 4u;
        return 3u;
    } else {
        if (b == 8u) {
            return (a == 8u) ? 8u : 1u;
        }
        if (a == 8u) return 2u;
        if (a != 4u) return 0xFFu;
        if (b == 4u) return 4u;
        return 3u;
    }
}
