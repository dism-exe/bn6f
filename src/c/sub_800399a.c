#include "types.h"

extern u8 eScenarioEffectState2000780;

// Clears bit 0x80 of the first byte. ASM does `mov r0,#1; ldrb r0,[r5];
// mov r1,#0x7f; and r0,r1` — the `mov r0,#1` is dead code (immediately
// overwritten by the ldrb), but harmless.
void sub_800399A_c(void)
{
    eScenarioEffectState2000780 &= 0x7Fu;
}
