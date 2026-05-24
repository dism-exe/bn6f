#include "types.h"

extern u8 eStartScreenAnimationControl200B1A0[];

// Returns the first byte of eStartScreenAnimationControl200B1A0. Z flag
// after the wrapper reflects (byte == 2), matching original `cmp r0, #2`.
// (Standard DECOMP_FLAG_WRAPPER does `tst r0, r0` which would test
// against 0 instead — wrong sense here.)
static u32 sub_803E928_impl(void)
{
    return (u32)eStartScreenAnimationControl200B1A0[0];
}

__attribute__((naked)) void sub_803E928_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "bl sub_803E928_impl\n\t"
        "cmp r0, #2\n\t"
        "pop {pc}\n\t"
    );
}
