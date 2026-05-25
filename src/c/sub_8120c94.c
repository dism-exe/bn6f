#include "EWRAM.h"

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

/* Fill a 2D u16 grid in row-pairs with sequential numbers, starting
   at `start`.  Layout per outer iteration (one row-pair):
     row[0]: start+0, start+2, start+4, ...
     row[1]: start+1, start+3, start+5, ...
   `cols` = halfwords per row.  `pairs` = number of row-pairs (so
   2*pairs rows total).  `start` is post-increment after each pair.

   Note the initial ZeroFillByHalfword zeros `cols*2 * pairs` bytes
   — that's only HALF the grid we then write to.  The original ASM
   has the same off-by-2 (probably a bug or intentional "second half
   already cleared from previous use"); we reproduce it. */
void sub_8120C94_c(u16 *dst, u32 cols, u32 pairs, u32 start)
{
    u32 row_bytes;
    u32 p;

    ZeroFillByHalfword_c(dst, cols * 2u * pairs);

    row_bytes = cols * 2u;
    for (p = 0; (s32)p < (s32)pairs; p++) {
        u32 o = 0;
        while ((s32)o < (s32)row_bytes) {
            *(u16 *)((u8 *)dst + o) = (u16)start; start++;
            *(u16 *)((u8 *)dst + row_bytes + o) = (u16)start; start++;
            o += 2u;
        }
        /* original advances r7 by row_bytes + o (= 2*row_bytes when
           inner loop just exited); equivalently, skip 2 rows. */
        dst = (u16 *)((u8 *)dst + row_bytes + o);
    }
}
