#include "types.h"

// The function pulls r0/r2 from whatever the caller had — they aren't
// declared args to musicGameState_8000784 itself, just passed through
// to sound_8000808. Writing this as a regular C function would lose
// that pass-through (GCC would put its own values in r0/r2), so we
// keep the original body verbatim in inline asm.
//
// After the queue-append, sets GameState.BGMusicIndicator (offset 0xF
// from Toolkit.GameStatePtr at 0x3C) to 0xFF.
__attribute__((naked)) void musicGameState_8000784_c(void)
{
    asm volatile(
        "push {r7, lr}\n\t"
        "mov r1, r10\n\t"            // r1 = r10 (passed as 2nd arg)
        "push {r1}\n\t"              // save r10
        "ldr r3, =sub_814EA58+1\n\t"
        "bl sound_8000808\n\t"        // (r0, r1, r2, r3) — r0/r2 pass-through
        "pop {r1}\n\t"
        "mov r10, r1\n\t"             // restore r10
        "mov r7, r10\n\t"
        "ldr r7, [r7, #0x3C]\n\t"     // GameStatePtr
        "mov r0, #0xFF\n\t"
        "strb r0, [r7, #0xF]\n\t"     // BGMusicIndicator
        "pop {r7, pc}\n\t"
    );
}
