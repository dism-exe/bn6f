#include "types.h"

// Same pattern as m4a_800061E but with sub_814EA58 as the target —
// passes through caller's r0/r2, sets r1=r10 and r3=sub_814EA58+1,
// then jumps into sound_8000808.
__attribute__((naked)) void sound_8000630_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "mov r1, r10\n\t"
        "push {r1}\n\t"
        "ldr r3, =sub_814EA58+1\n\t"
        "bl sound_8000808\n\t"
        "pop {r1}\n\t"
        "mov r10, r1\n\t"
        "pop {pc}\n\t"
    );
}
