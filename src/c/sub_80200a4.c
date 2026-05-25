#include "EWRAM.h"

/* Tiny stamper for the block at 0x0203F7D8:
     byte +3 = arg
     byte +2 |= 1  (set the "dirty" bit) */
void sub_80200A4_c(u32 arg)
{
    u8 *p = (u8 *) 0x0203F7D8u;
    p[3] = (u8)arg;
    p[2] |= 1u;
}
