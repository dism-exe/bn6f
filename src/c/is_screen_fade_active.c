#include "types.h"

extern u8 eScreenFade[];

// Reads eScreenFade[r3 + 3] where r3 is the prelude-set offset
// (0 for the IsScreenFadeActive entry, 0x20 for isScreenFadeActive_80062FC).
// Returns the byte; the wrapper applies the flag-set semantics.
static u32 IsScreenFadeActive_impl(u32 fade_offset)
{
    return eScreenFade[fade_offset + 3u];
}

// ASM trampoline parks r3 in r12 before jumping here (the standard
// trampoline would clobber r3 — we can't use it). This wrapper
// recovers the offset from r12, calls the impl, then issues
// `cmp r0, #1` so callers' `beq` / `bne` see the same Z flag as the
// original ASM's `cmp r0, r1=1; mov pc, lr` sequence.
__attribute__((naked)) void IsScreenFadeActive_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "mov  r0, r12\n\t"
        "bl   IsScreenFadeActive_impl\n\t"
        "cmp  r0, #1\n\t"
        "pop  {pc}\n\t"
    );
}
