#include "types.h"

// Original ASM:
//   push {r0-r3, lr}
//   mov r3, r2           ; r3 = fill value
//   ldr r2, =0x01000000   ; mask: 16-bit fill mode for CpuSet
//   lsr r1, r1, #1        ; r1 = byte_count / 2 = halfword count
//   orr r2, r1            ; r2 = mask | halfword_count
//   mov r1, r0            ; r1 = dst
//   sub sp, sp, #4
//   str r3, [sp]          ; *sp = fill value
//   mov r0, sp            ; r0 = pointer to source word
//   bl SWI_CpuSet
//   add sp, sp, #4
//   pop {r0-r3, pc}
//
// C version is a plain halfword fill loop. byte_count is halved into
// halfword count, as in the original.
//
// Args: r0=dst, r1=byte_count, r2=value (only low 16 bits used).
void HalfwordFill_c(u16 *dst, u32 byte_count, u16 value)
{
    u32 halfwords = byte_count >> 1;
    u32 i;
    for (i = 0; i < halfwords; i++) {
        dst[i] = value;
    }
}
