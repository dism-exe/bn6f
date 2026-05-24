#include "types.h"

extern void m4a_800061E_c(void);
extern void sound_8000630_c(void);

// r10 = ambient Toolkit*. If GameState.BGMusicIndicator already equals
// the requested song, no-op. Otherwise update the indicator and call
// either sound_8000630 (song == 0x63) or m4a_800061E.
//
// The orig pushes r1-r7 to preserve all of r1-r3 across the call.
// Naked wrapper to mirror that pass-through (sound_8000630_c +
// m4a_800061E_c both read r0/r2 from caller).
//
// Toolkit.GameStatePtr = 0x3C; GameState.BGMusicIndicator = byte at +0xF.
__attribute__((naked)) void PlayMusic_c(void)
{
    asm volatile(
        "push {r1-r7, lr}\n\t"
        "mov r7, r10\n\t"
        "ldr r7, [r7, #0x3C]\n\t"
        "ldrb r1, [r7, #0xF]\n\t"
        "cmp r0, r1\n\t"
        "beq 2f\n\t"
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
