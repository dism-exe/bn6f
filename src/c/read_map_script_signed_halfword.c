#include "types.h"

__attribute__((naked)) void ReadMapScriptSignedHalfword_c(void)
{
    asm volatile(
        "push {r7, lr}\n\t"
        "add r7, r7, r6\n\t"
        "ldrb r4, [r7, #1]\n\t"
        "ldrb r6, [r7]\n\t"
        "lsl r4, r4, #8\n\t"
        "orr r4, r6\n\t"
        "lsl r4, r4, #0x10\n\t"
        "asr r4, r4, #0x10\n\t"
        "pop {r7, pc}\n\t"
    );
}
