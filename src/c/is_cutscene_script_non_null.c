#include "types.h"

// r10 = ambient Toolkit*. Reads CutsceneState.CutsceneScriptPos.
// Toolkit.CutsceneStatePtr = 0x10; CutsceneState.CutsceneScriptPos = 0x1C.
// Wrapped with DECOMP_FLAG_WRAPPER so callers' `bl ...; beq/bne ...`
// chains continue to work — the wrapper does `tst r0, r0` before
// returning so Z is set iff CutsceneScriptPos is NULL.
u32 IsCutsceneScriptNonNull_impl(void)
{
    register u8 *r10p asm("r10");
    u8 *cs;
    asm volatile("" : "=r"(r10p));

    cs = *(u8 **)(r10p + 0x10);
    return *(u32 *)(cs + 0x1C);
}

DECOMP_FLAG_WRAPPER(IsCutsceneScriptNonNull_c, IsCutsceneScriptNonNull_impl)
