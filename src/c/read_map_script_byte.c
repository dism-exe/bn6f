#include "types.h"

// Non-APCS convention: r6 = offset, r7 = script cmd ptr, returns
// the byte at *(r7 + r6) in r4 (preserving r6/r7). Mirrored
// verbatim in inline asm.
__attribute__((naked)) void ReadMapScriptByte_c(void)
{
    asm volatile(
        "push {r7, lr}\n\t"
        "add r7, r7, r6\n\t"
        "ldrb r4, [r7]\n\t"
        "pop {r7, pc}\n\t"
    );
}
