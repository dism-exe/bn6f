#include "types.h"

extern u32 ePrimaryRngSeed;

// Original ASM:
//     ldr r0, =0xa338244f
//     ldr r1, =ePrimaryRngSeed
//     str r0, [r1]
//     mov pc, lr
void SeedRNG_c(void)
{
    ePrimaryRngSeed = 0xa338244fu;
}
