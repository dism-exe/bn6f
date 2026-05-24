#include "types.h"

// Trampoline target for asm/asm00_0.s::CopyBytes.
//
// Original ASM:
//     CopyBytes:
//         subs r2, #1
//         ldrb r3, [r0, r2]
//         strb r3, [r1, r2]
//         bne  CopyBytes
//         mov  pc, lr
//
// r0=src, r1=dst, r2=count. Backwards copy (count-1 down to 0).
// Caller contract: count > 0. count == 0 underflows count-- to UINT32_MAX
// and copies into 4 GB of memory — the original has the same hazard.
void CopyBytes_c(const u8 *src, u8 *dst, u32 count)
{
    while (count-- > 0) {
        dst[count] = src[count];
    }
}
