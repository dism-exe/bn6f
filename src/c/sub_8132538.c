#include "EWRAM.h"

extern u32 sub_803DD60_c(void);

/* Variant of sub_8132430 that treats hword 0x84 as an alias of 4 in
   the secondary-path "is this a `4`-class?" check.  Levels otherwise
   unchanged:

     primary    : a==8 → 1, b==8 → 2,
                  b ∈ {0x84,4} → 3, a ∈ {0x84,4} → 4
     secondary  : b==8 → 1, a==8 → 2,
                  a ∈ {0x84,4} → 3, b ∈ {0x84,4} → 4

   Returns 0xFF when no entry's +8 hword is greater than 2. */
u32 sub_8132538_c(u8 *p)
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
        if (a == 8u) return 1u;
        if (b == 8u) return 2u;
        if (b != 0x84u && b != 4u) return 0xFFu;
        if (a == 0x84u || a == 4u) return 4u;
        return 3u;
    } else {
        if (b == 8u) return 1u;
        if (a == 8u) return 2u;
        if (a != 0x84u && a != 4u) return 0xFFu;
        if (b == 0x84u || b == 4u) return 4u;
        return 3u;
    }
}
