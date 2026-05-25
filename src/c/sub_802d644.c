#include "EWRAM.h"

/* Saturating byte increment at byte_2000070[idx]; never exceeds 0xFF.
   (Compare > 255 is on the post-increment u32 value, so 255 stays at 255.) */
void sub_802D644_c(u32 idx)
{
    u8 *table = (u8 *) 0x02000070u;
    u32 v = table[idx] + 1u;
    if ((s32)v <= 255) table[idx] = (u8)v;
}
