#include "types.h"

// r6 = offset, r7 = script cmd ptr → r4 = u16 (little-endian) at *(r7+r6).
// Spoils r6 (unlike ReadMapScriptByte which preserves it).
__attribute__((naked)) void ReadMapScriptHalfword_c(void)
{
    asm volatile(
        "push {r7, lr}\n\t"
        "add r7, r7, r6\n\t"
        "ldrb r4, [r7, #1]\n\t"
        "ldrb r6, [r7]\n\t"
        "lsl r4, r4, #8\n\t"
        "orr r4, r6\n\t"
        "pop {r7, pc}\n\t"
    );
}
