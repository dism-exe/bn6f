#include "types.h"

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

// r10 = ambient Toolkit*. Zero 0x16 bytes (11 halfwords) at
// EventFlagsPtr+0x2C8.
void sub_802F0F4_c(void)
{
    register u8 *r10p asm("r10");
    u8 *ef;
    asm volatile("" : "=r"(r10p));

    ef = *(u8 **)(r10p + 0x44);
    ZeroFillByHalfword_c((u16 *)(ef + 0x2C8), 0x16);
}
