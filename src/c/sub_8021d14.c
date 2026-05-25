#include "EWRAM.h"

/* Saturating-increment of byte at 0x0203A0A0 + row*0x170 + col.
   Caps at 255 by `>= 255 -> skip the increment`. */
void sub_8021D14_c(u32 row, u32 col)
{
    u8 *p = (u8 *) 0x0203A0A0u + row * 0x170u;
    u8 v = p[col];
    if (v < 255u) {
        p[col] = (u8)(v + 1);
    }
}
