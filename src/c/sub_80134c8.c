#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

/* 100-byte block initializer (looks like a NaviStats variant).
   Zeroes the whole 100 bytes via ZeroFillByWord, then stamps in
   the small set of non-zero defaults. */
void sub_80134C8_c(u8 *p)
{
    ZeroFillByWord_c((u32 *)p, 100u);

    p[32] = 1;
    p[5]  = 1;
    p[7]  = 0xFF;
    p[24] = 0;
    p[25] = 0;
    p[8]  = 0;
    p[9]  = 4;
    p[10] = 5;
    p[11] = 5;
    p[12] = 1;
    p[13] = 0;
    p[38] = 0;
    p[18] = 0xFF;
    p[39] = 0x1F;
    p[40] = 0;
    p[14] = 0x99;
    *(u16 *)(p + 64) = 0x01F4;
    *(u16 *)(p + 66) = 0x01F4;
    *(u16 *)(p + 62) = 0x01F4;
    p[1]  = 2;
    p[2]  = 2;
    p[3]  = 2;
    p[44] = 0;
    p[46] = 0xFF;
    p[47] = 0xFF;
    p[48] = 0xFF;
    p[33] = 1;
}
