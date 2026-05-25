#include "EWRAM.h"

/* Saturating-add of delta into table_2_0203EAE0[row*16][col]. */
void sub_800AB46_c(u32 row, u32 col, u32 delta)
{
    u8 *p = (u8 *) 0x0203EAE0u + row * 16u;
    u32 v = p[col] + delta;
    if ((s32)v > 255) v = 255u;
    p[col] = (u8)v;
}
