#include "types.h"

extern u32 ePrimaryRngSeed;

// Original ASM:
//     push {r7, lr}
//     ldr  r7, =ePrimaryRngSeed
//     ldr  r0, [r7]
//     ldr  r1, =0x873ca9e5
//     lsl  r2, r0, #1
//     lsr  r3, r0, #31
//     add  r0, r2, r3      ; r0 = (seed << 1) + (seed >> 31)  (rotate-left-by-1 in this register layout)
//     add  r0, #1
//     eor  r0, r1
//     str  r0, [r7]
//     pop  {r7, pc}        ; return value in r0
//
// Equivalent C: the `add r0, r2, r3` step is `(seed << 1) + (seed >> 31)`,
// equivalent to OR since lsl-by-1 clears bit 0 (where the >>31 contributes).
// Match the ASM with `+` to keep arithmetic identical even at the cycle
// level (in case anything reads r2/r3 separately — nothing here does).
u32 GetRNG_c(void)
{
    u32 seed = ePrimaryRngSeed;
    u32 next = ((seed << 1) + (seed >> 31) + 1) ^ 0x873ca9e5u;
    ePrimaryRngSeed = next;
    return next;
}
