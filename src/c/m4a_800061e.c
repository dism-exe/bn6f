#include "types.h"

// r0/r2 pass-through from caller. Saves r10, sets r1=r10 and
// r3=m4a_SongNumStart+1, then jumps into sound_8000808. The
// pass-through is non-APCS; written verbatim in naked asm.
__attribute__((naked)) void m4a_800061E_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "mov r1, r10\n\t"
        "push {r1}\n\t"
        "ldr r3, =m4a_SongNumStart+1\n\t"
        "bl sound_8000808\n\t"
        "pop {r1}\n\t"
        "mov r10, r1\n\t"
        "pop {pc}\n\t"
    );
}
