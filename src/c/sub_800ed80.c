#include "EWRAM.h"

/* Clears the bits set in *(u32 *)(p+0x7C) from the u32 at 0x0203F6A0. */
void sub_800ED80_c(u8 *p)
{
    u32 mask = *(u32 *)(p + 0x7C);
    *(u32 *) 0x0203F6A0u &= ~mask;
}
