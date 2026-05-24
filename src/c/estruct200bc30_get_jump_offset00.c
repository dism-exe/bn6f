#include "types.h"

extern u8 eStruct200BC30;

// Original ASM:
//     ldr  r1, =eStruct200BC30
//     ldrb r0, [r1]
//     mov  pc, lr
//
// Returns the first byte of eStruct200BC30 in r0.
u8 eStruct200BC30_getJumpOffset00_c(void)
{
    return eStruct200BC30;
}
