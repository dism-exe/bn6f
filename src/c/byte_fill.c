#include "types.h"

// Trampoline target for asm/asm00_0.s::ByteFill.
//
// Fills `count` bytes at `*dst` with `byte`, iterating backwards
// (count-1 down to 0) — matches the original ASM exactly:
//
//     ByteFill:
//         subs r1, #1
//         strb r2, [r0, r1]
//         bne  ByteFill
//         mov  pc, lr
//
// Backwards iteration is preserved so any potential reader/writer race
// against a concurrent observer (DMA / IRQ peeking at the buffer
// mid-fill) sees the same write order as the original.
//
// Caller contract (matches the ASM): count > 0. count == 0 underflows
// `count--` to UINT32_MAX and walks off the buffer; the original ASM
// has the same hazard.
void ByteFill_c(u8 *dst, u32 count, u8 byte)
{
    while (count-- > 0) {
        dst[count] = byte;
    }
}
