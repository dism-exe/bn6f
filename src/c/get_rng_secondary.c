#include "types.h"

extern u32 eSecondaryRngSeed;

// Same algorithm as GetRNG (rol1 + 1, xor 0x873ca9e5) but on the
// secondary RNG seed. Original ASM annotates the return as void;
// callers don't read r0.
void GetRNGSecondary_c(void)
{
    u32 seed = eSecondaryRngSeed;
    u32 next = ((seed << 1) + (seed >> 31) + 1u) ^ 0x873ca9e5u;
    eSecondaryRngSeed = next;
}
