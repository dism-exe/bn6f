#include "types.h"

// r10 = Toolkit*. Returns GameState.Unk_10. Flag-wrapped so callers'
// `bl ...; beq/bne ...` keep working.
u32 sub_809E462_impl(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    return (u32)gs[0x10];
}

DECOMP_FLAG_WRAPPER(sub_809E462_c, sub_809E462_impl)
