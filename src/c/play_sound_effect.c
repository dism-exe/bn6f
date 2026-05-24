#include "types.h"

// Tail call into m4a_800061E. The push {r1-r7} preserves the
// (caller-supplied) r1..r3 across the call so m4a_800061E can read
// them as pass-through. Mirrored exactly in naked asm.
__attribute__((naked)) void PlaySoundEffect_c(void)
{
    asm volatile(
        "push {r1-r7, lr}\n\t"
        "bl m4a_800061E_c\n\t"
        "pop {r1-r7, pc}\n\t"
    );
}
