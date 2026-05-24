#include "types.h"

// Unconditionally sets GameState.BGMusicIndicator = arg, then
// dispatches to sound_8000630 (song == 0x63) or m4a_800061E.
// Naked wrapper to preserve r1..r3 pass-through.
__attribute__((naked)) void music_80005F2_c(void)
{
    asm volatile(
        "push {r1-r7, lr}\n\t"
        "mov r7, r10\n\t"
        "ldr r7, [r7, #0x3C]\n\t"
        "strb r0, [r7, #0xF]\n\t"
        "cmp r0, #0x63\n\t"
        "bne 1f\n\t"
        "bl sound_8000630_c\n\t"
        "b 2f\n\t"
        "1:\n\t"
        "bl m4a_800061E_c\n\t"
        "2:\n\t"
        "pop {r1-r7, pc}\n\t"
    );
}
