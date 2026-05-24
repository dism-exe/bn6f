#include "types.h"

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

// r10 = ambient Toolkit*. Zero one halfword at EventFlagsPtr+0x2DE.
void sub_802F0D8_c(void)
{
    register u8 *r10p asm("r10");
    u8 *ef;
    asm volatile("" : "=r"(r10p));

    ef = *(u8 **)(r10p + 0x44);
    ZeroFillByHalfword_c((u16 *)(ef + 0x2DE), 2);
}
