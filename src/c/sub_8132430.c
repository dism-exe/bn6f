#include "EWRAM.h"

extern u32 sub_803DD60_c(void);

/* Classifier over two 16-byte entries at p[0..15] and p[16..31].
   Each entry's u16 at +8 (call it `a` and `b`) is a flag bitfield;
   the classification picks a priority level 1..4 based on which of
   {8, 4} appears in which slot, with the order flipped depending on
   whether sub_803DD60 says we're in the "primary" frame:

     primary  : prefer a == 8 → 1, b == 8 → 2,
                else b == 4 → 3, a == 4 → 4
     secondary: prefer b == 8 → 1, a == 8 → 2,
                else a == 4 → 3, b == 4 → 4

   Returns 0xFF if neither entry has its +8 hword > 2 (no candidate
   to classify). */
u32 sub_8132430_c(u8 *p)
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
        if (b != 4u) return 0xFFu;
        if (a == 4u) return 4u;
        return 3u;
    } else {
        if (b == 8u) return 1u;
        if (a == 8u) return 2u;
        if (a != 4u) return 0xFFu;
        if (b == 4u) return 4u;
        return 3u;
    }
}
