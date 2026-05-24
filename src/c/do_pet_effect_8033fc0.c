#include "types.h"

// Sets eS2011E30.Unk_07 = 0, Idx_04 = arg. If arg == 3, also plays
// sound effect 0x9B. Naked wrapper to keep the r1..r3 pass-through
// that PlaySoundEffect ultimately funnels into sound_8000808.
__attribute__((naked)) void doPETEffect_8033fc0_c(void)
{
    asm volatile(
        "push {r5, lr}\n\t"
        "ldr r5, =eS2011E30\n\t"
        "mov r1, #0\n\t"
        "strb r1, [r5, #7]\n\t"
        "strb r0, [r5, #4]\n\t"
        "cmp r0, #3\n\t"
        "bne 1f\n\t"
        "mov r0, #0x9B\n\t"
        "bl PlaySoundEffect_c\n\t"
        "1:\n\t"
        "pop {r5, pc}\n\t"
    );
}
