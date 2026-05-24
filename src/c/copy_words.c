#include "types.h"

// Original ASM wrapped a BIOS SWI_CpuSet call. The C version is a plain
// loop — equivalent observable effect (each word in [dst, dst+words)
// gets the corresponding src word). r0-r3 are scratch per APCS so any
// callee divergence there is benign; SP is balanced; r4-r11 preserved
// by the C compiler. The harness's EWRAM diff catches the actual write
// behavior.
//
// Args (matching the ASM): r0=src, r1=dst, r2=byte_count. The ASM
// converts byte_count to word count via `lsr r2, #2`.
void CopyWords_c(const u32 *src, u32 *dst, u32 byte_count)
{
    u32 words = byte_count >> 2;
    u32 i;
    for (i = 0; i < words; i++) {
        dst[i] = src[i];
    }
}
