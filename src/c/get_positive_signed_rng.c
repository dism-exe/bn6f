#include "EWRAM.h"

/* LFSR-style PRNG: state = (rotate-left-by-1(state) + 1) XOR 0x873CA9E5,
   then return the positive value (clear sign bit).
   GetPositiveSignedRNG uses the state at 0x020013F0;
   the *Secondary variant uses 0x02001120. */

#define RNG_XOR_CONST 0x873CA9E5u

static u32 step_rng(u32 *slot)
{
    u32 s = *slot;
    s = ((s << 1) | (s >> 31)) + 1u;
    s ^= RNG_XOR_CONST;
    *slot = s;
    return s & 0x7FFFFFFFu;
}

u32 GetPositiveSignedRNG_c(void)
{
    return step_rng((u32 *) 0x020013F0u);
}

u32 GetPositiveSignedRNGSecondary_c(void)
{
    return step_rng((u32 *) 0x02001120u);
}
