#include "types.h"

// r10 = Toolkit*. Returns EventFlagsBits[flag >> 3] & (0x80 >> (flag & 7)).
// Toolkit.EventFlagsPtr = 0x44.
u32 TestEventFlag_impl(u32 flag)
{
    register u8 *r10p asm("r10");
    u8 *ef;
    u8 byte;
    u8 mask;
    asm volatile("" : "=r"(r10p));

    ef = *(u8 **)(r10p + 0x44);
    byte = ef[flag >> 3];
    mask = (u8)(0x80u >> (flag & 7u));
    return (u32)(byte & mask);
}

DECOMP_FLAG_WRAPPER(TestEventFlag_c, TestEventFlag_impl)
