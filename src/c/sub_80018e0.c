#include "types.h"

// 5-reg-arg: r0=x_seed, r1=y_block, r2=page, r3=src_halfwords*, r4=count.
// r10 = ambient Toolkit*. Writes `count` halfwords from src into a
// per-(page, y_block, x_seed) tile-id slot inside iBGTileIdBlocks_Ptr,
// wrapping x within a 32-tile row each iteration.
//
// Toolkit.iBGTileIdBlocks_Ptr is at 0x28.
//
// The original leaks r4 (= 0 at exit for positive initial count) — it
// decrements r4 in-loop without saving/restoring. Match that by writing
// the body in inline asm inside a naked wrapper, so we control register
// allocation precisely.
//
// Second-entry bytes (0x8001908..) inside this function are dead code
// (no callers); the wrap replaces them with nops.
__attribute__((naked)) void sub_80018E0_c(void)
{
    asm volatile(
        "push {r6, r7, lr}\n\t"
        "mov r6, r10\n\t"
        "ldr r6, [r6, #0x28]\n\t"      // r6 = iBGTileIdBlocks_Ptr
        "lsl r2, r2, #11\n\t"          // page << 11 (0x800)
        "add r6, r6, r2\n\t"
        "lsl r1, r1, #6\n\t"           // y_block << 6 (0x40)
        "add r6, r6, r1\n\t"
        "mov r1, #0x1f\n\t"
        "and r0, r1\n\t"               // x &= 0x1F
        "1:\n\t"
        "ldrh r7, [r3]\n\t"
        "lsl r1, r0, #1\n\t"
        "strh r7, [r6, r1]\n\t"
        "add r0, #1\n\t"
        "mov r1, #0x1f\n\t"
        "and r0, r1\n\t"
        "add r3, #2\n\t"
        "sub r4, #1\n\t"
        "cmp r4, #0\n\t"
        "bgt 1b\n\t"
        "pop {r6, r7, pc}\n\t"
    );
}
