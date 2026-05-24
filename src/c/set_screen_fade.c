#include "types.h"

// Multi-entry function with two preludes that converge at loc_8006276:
//   SetScreenFade entry:  r3 = 0     (full-screen region)
//   loc_8006274 entry:    r3 = 0x20  (offset region)
// Wrapped at loc_8006276 via --from-label + r3safe trampoline, so r3
// (the region byte offset) survives across the trampoline jump.
//
// Args: r0 = fade type byte (0xFF = no-op), r1 = timer halfword
// (0xFF widens to 0x100). r3 = region byte offset.
//
// Body translated 1:1 in inline asm (calls C versions of
// sub_8006330 + the eScreenFade globals).
__attribute__((naked)) void SetScreenFade_c(void)
{
    asm volatile(
        "push {r5, lr}\n\t"
        "cmp r0, #0xff\n\t"
        "beq 2f\n\t"
        "ldr r5, =eScreenFade\n\t"
        "add r5, r5, r3\n\t"
        "push {r0, r1}\n\t"
        "mov r0, r3\n\t"
        "bl sub_8006330_c\n\t"
        "pop {r0, r1}\n\t"
        "strb r0, [r5, #1]\n\t"
        "ldr r2, =off_8006040\n\t"
        "lsl r0, r0, #2\n\t"
        "add r2, r2, r0\n\t"
        "ldr r0, [r2, #0]\n\t"           // Ptr_00
        "str r0, [r5, #0x10]\n\t"
        "ldr r0, [r2, #4]\n\t"            // Ptr_04
        "str r0, [r5, #0x14]\n\t"
        "ldrb r0, [r2, #0xC]\n\t"         // Unk_0c
        "strh r0, [r5, #0x18]\n\t"
        "ldrb r0, [r2, #0xD]\n\t"         // Unk_0d
        "strh r0, [r5, #0x1C]\n\t"
        "ldrb r0, [r2, #0xE]\n\t"         // Unk_0e
        "strh r0, [r5, #8]\n\t"
        "ldrb r0, [r2, #0xF]\n\t"         // Unk_0f
        "lsl r0, r0, #4\n\t"
        "strh r0, [r5, #0xA]\n\t"
        "mov r0, #1\n\t"
        "strb r0, [r5]\n\t"
        "mov r0, #1\n\t"
        "strb r0, [r5, #3]\n\t"            // ScreenFade.Unk_03
        "mov r0, #0\n\t"
        "strb r0, [r5, #2]\n\t"
        "cmp r1, #0xff\n\t"
        "bne 1f\n\t"
        "add r1, #1\n\t"
        "1:\n\t"
        "strh r1, [r5, #4]\n\t"
        "2:\n\t"
        "pop {r5, pc}\n\t"
    );
}
