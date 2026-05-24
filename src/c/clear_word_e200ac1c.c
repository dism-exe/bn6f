#include "types.h"

extern u32 dword_200AC1C;

// Original ASM:
//     ldr r0, =dword_200AC1C
//     mov r1, #0
//     str r1, [r0]
//     mov pc, lr
void clearWord_e200AC1C_c(void)
{
    dword_200AC1C = 0;
}
