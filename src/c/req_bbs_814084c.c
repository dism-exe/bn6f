#include "EWRAM.h"

extern u32  TestEventFlag_c(u32 flag);
extern u32 *reqBBS_textualPointers[];

// Looks up `reqBBS_textualPointers[6]` (offset 0x18 / 4 = entry 6),
// adds r0 to that base, calls TestEventFlag(combined) and returns
// 1 if set, 0 otherwise.
u32 reqBBS_814084C_impl(u32 r0)
{
    u32 base = (u32)reqBBS_textualPointers[6];
    return TestEventFlag_c(base + r0) ? 1u : 0u;
}

// Called via `bl reqBBS_814084C; tst r0, r0; beq <skip>` — flag-dep.
DECOMP_FLAG_WRAPPER(reqBBS_814084C_c, reqBBS_814084C_impl)
