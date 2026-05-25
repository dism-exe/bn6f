#include "EWRAM.h"

extern void sub_803C1BC_c(u8 *dst, u8 *src, u32 count);

/* Two-up call into sub_803C1BC: render 8 chars from 0x02001808 into
   `dst1`, then 10 chars from 0x02001828 into `dst2`.  (Looks like a
   name + title pair render.) */
void sub_8049DA0_c(u8 *dst1, u8 *dst2)
{
    sub_803C1BC_c(dst1, (u8 *) 0x02001808u, 8u);
    sub_803C1BC_c(dst2, (u8 *) 0x02001828u, 10u);
}
