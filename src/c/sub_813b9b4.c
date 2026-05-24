#include "types.h"

// r10 = Toolkit*. Returns Unk200414c_Ptr[r0 + r1*7]. Toolkit.Unk200414c
// is at 0x58.
u32 sub_813B9B4_impl(u32 r0, u32 r1)
{
    register u8 *r10p asm("r10");
    u8 *base;
    asm volatile("" : "=r"(r10p));

    base = *(u8 **)(r10p + 0x58);
    return (u32)base[r0 + r1 * 7u];
}

DECOMP_FLAG_WRAPPER(sub_813B9B4_c, sub_813B9B4_impl)
