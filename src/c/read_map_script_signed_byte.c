#include "types.h"

// r6 = offset, r7 = script cmd ptr → r4 = sign-extended s8 at *(r7+r6).
__attribute__((naked)) void ReadMapScriptSignedByte_c(void)
{
    asm volatile(
        "push {r7, lr}\n\t"
        "add r7, r7, r6\n\t"
        "ldrb r4, [r7]\n\t"
        "lsl r4, r4, #0x18\n\t"
        "asr r4, r4, #0x18\n\t"
        "pop {r7, pc}\n\t"
    );
}
