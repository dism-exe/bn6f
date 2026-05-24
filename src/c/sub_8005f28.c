#include "types.h"

// r10 = Toolkit*. Returns Warp2011bb0.Unk_10. All callers use the
// resulting Z flag (`bne ...`) — flag-wrapped so Z = (Unk_10 == 0).
// Toolkit.Warp2011bb0_Ptr = 0x14.
u32 sub_8005F28_impl(void)
{
    register u8 *r10p asm("r10");
    u8 *warp;
    asm volatile("" : "=r"(r10p));

    warp = *(u8 **)(r10p + 0x14);
    return (u32)warp[0x10];
}

DECOMP_FLAG_WRAPPER(sub_8005F28_c, sub_8005F28_impl)
