#include "types.h"

extern u32 ToolkitExtraPtrsOffsets[];

// r10 = Toolkit*. For i in 0..22, toolkit[0x3C + i*4] = eGameState
// (0x02001B80) + ToolkitExtraPtrsOffsets[i].
//
// The orig loop bound is `(end - start + 4)`, so it iterates ONE extra
// element past the table — reading 4 garbage bytes at
// `&encryption_initAll_8006d00` (the function that immediately follows
// in ROM). Mirroring that "off-by-one" exactly so the final Toolkit
// state matches the oracle.
//
// Also drops the orig's `and r3, r4 ; mov r4, #0` no-op
// (r3 always ends up 0).
void SetExtraToolkitPointers_c(void)
{
    register u8 *r10p asm("r10");
    u32 *toolkit_ptrs;
    u32 i;
    asm volatile("" : "=r"(r10p));

    toolkit_ptrs = (u32 *)(r10p + 0x3C);
    for (i = 0u; i < 22u; i++) {
        toolkit_ptrs[i] = 0x02001B80u + ToolkitExtraPtrsOffsets[i];
    }
}
