#include "EWRAM.h"

extern u32 TestEventFlag_c(u32 flag);

/* Tests EVENT_1720.  Caller branches on Z, so wrap with
   DECOMP_FLAG_WRAPPER.  The original ASM also has dead code that
   would test EVENT_1723 — an unconditional `b` between the two
   tests makes the second comparison unreachable, so the C version
   collapses to the single live test. */
static u32 sub_813BF1C_impl(void)
{
    return TestEventFlag_c(0x1720u);
}

DECOMP_FLAG_WRAPPER(sub_813BF1C_c, sub_813BF1C_impl)
