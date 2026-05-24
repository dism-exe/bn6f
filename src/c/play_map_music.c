#include "types.h"

// Reads S2001c04.MapMusic and forwards to PlayMusic.
// Naked wrapper to preserve r1..r3 pass-through that PlayMusic /
// m4a_800061E ultimately use.
__attribute__((naked)) void PlayMapMusic_c(void)
{
    asm volatile(
        "push {r4-r7, lr}\n\t"
        "mov r0, r10\n\t"
        "ldr r0, [r0, #0x40]\n\t"      // Toolkit.S2001c04_Ptr
        "ldrb r0, [r0, #4]\n\t"         // S2001c04.MapMusic
        "bl PlayMusic_c\n\t"
        "pop {r4-r7, pc}\n\t"
    );
}
