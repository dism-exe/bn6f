#include "EWRAM.h"

extern void sub_803C168_c(u8 *src, u16 *dst, u32 count, u32 cap);

/* Two-up call into sub_803C168: render up to 8 chars from `src1`
   into `dst1`, then 10 chars from `src2` into `dst2`, both with
   capacity 0x20 (tile-id pair-stream renderer; see sub_803C168). */
void sub_8049DC4_c(u8 *src1, u16 *dst1, u8 *src2, u16 *dst2)
{
    sub_803C168_c(src1, dst1, 8u, 0x20u);
    sub_803C168_c(src2, dst2, 0xau, 0x20u);
}
