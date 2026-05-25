#include "EWRAM.h"

/* Variant of sub_811BC00 that loops idx from `idx_start` up to (but
   not including) 4, writing 3 fields into each non-empty slot:

     +0x0e u16 ← a
     +0x0c u8  ← b
     +0x18 u16 ← c

   Always executes at least one iteration (do/while), and treats the
   index comparison as signed, so passing a negative `idx_start`
   degenerates to looping until i reaches 4. */
void sub_811A1F4_c(u32 a, u32 b, u32 idx_start, u32 c)
{
    s32 i;
    u8 *p;
    i = (s32)idx_start;
    do {
        p = (u8 *) 0x02008450u + (u32)i * 88u;
        if (*p != 0u) {
            *(u16 *)(p + 0x0e) = (u16)a;
            *(u8  *)(p + 0x0c) = (u8)b;
            *(u16 *)(p + 0x18) = (u16)c;
        }
        i++;
    } while (i < 4);
}
