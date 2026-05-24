#include "types.h"

extern u32 sub_8002986_c(u32 key);
extern void sprite_initialize_c(u32 src_ptr);
extern u8 *SpritePointersList[];
extern u8 spriteWhiteDot[];

// r5 = ambient ObjectHeader*. Function modifies r5 (advances to the
// sprite block) then calls sprite_initialize which reads the same r5.
// The orig leaks the advanced r5 to the caller — that's an
// APCS-violation we mirror via a naked wrapper.
//
//   r5[0] &= ~0x08;                         // clear STOP_SPRITE_UPDATE
//   r5 += (r5[2] & 0xF0);                   // advance to sprite block
//   ptr = sub_8002986((cat << 8) | idx);    // custom override?
//   if (!ptr) {
//       ptr = SpritePointersList[cat byte-offset][idx];
//       if ((s32)ptr < 0) ptr = spriteWhiteDot;
//   }
//   sprite_initialize(ptr);
//   r5[3] = byte_param;
__attribute__((naked)) void sprite_load_c(void)
{
    asm volatile(
        "push {r4, r5, lr}\n\t"
        "ldrb r3, [r5, #0]\n\t"
        "mov r4, #8\n\t"
        "bic r3, r4\n\t"
        "strb r3, [r5, #0]\n\t"
        "ldrb r3, [r5, #2]\n\t"
        "lsr r3, r3, #4\n\t"
        "lsl r3, r3, #4\n\t"
        "add r5, r5, r3\n\t"
        "push {r0-r2}\n\t"
        "lsl r0, r1, #8\n\t"
        "orr r0, r2\n\t"
        "bl sub_8002986_c\n\t"
        "pop {r1-r3}\n\t"
        "tst r0, r0\n\t"
        "bne 2f\n\t"
        "ldr r4, =SpritePointersList\n\t"
        "ldr r4, [r4, r2]\n\t"
        "lsl r3, r3, #2\n\t"
        "ldr r0, [r4, r3]\n\t"
        "cmp r0, #0\n\t"
        "bge 2f\n\t"
        "ldr r0, =spriteWhiteDot\n\t"
        "2:\n\t"
        "push {r1}\n\t"
        "bl sprite_initialize_c\n\t"
        "pop {r1}\n\t"
        "strb r1, [r5, #3]\n\t"
        "pop {r4, r5, pc}\n\t"
    );
}
