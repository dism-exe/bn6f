#include "types.h"

// Thin wrapper: indirect-bx into sub_30068E8 (which lives in IWRAM).
// All caller-provided r0..r3 args pass through unchanged. The orig
// uses `mov lr, pc; bx r4` (a CALL via bx) so we just mirror that
// in inline asm.
__attribute__((naked)) void sub_802FE28_c(void)
{
    asm volatile(
        "push {r4, lr}\n\t"
        "ldr r4, =sub_30068E8+1\n\t"
        "mov lr, pc\n\t"
        "bx r4\n\t"
        "pop {r4, pc}\n\t"
    );
}
