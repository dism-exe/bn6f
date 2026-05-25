#include "EWRAM.h"

/* Same shape as sub_811A1F4 but the upper bound is `idx_start + 3`
   (3 slots from idx_start, signed-compare, do/while) instead of a
   hard 4.  Per non-empty slot writes:

     +0x0e u16 ← a
     +0x0c u8  ← b
     +0x18 u16 ← c
*/
void sub_811980C_c(u32 a, u32 b, u32 idx_start, u32 c)
{
    s32 i;
    s32 end;
    u8 *p;
    i = (s32)idx_start;
    end = i + 3;
    do {
        p = (u8 *) 0x02008450u + (u32)i * 88u;
        if (*p != 0u) {
            *(u16 *)(p + 0x0e) = (u16)a;
            *(u8  *)(p + 0x0c) = (u8)b;
            *(u16 *)(p + 0x18) = (u16)c;
        }
        i++;
    } while (i < end);
}
