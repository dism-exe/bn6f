#include "types.h"

// Original wrapped BIOS SWI_CpuSet for 16-bit halfword copy. Replaced
// with a plain loop; the harness's banked-stack-skip handles the lack
// of SVC stack writes.
//
// Args (matching ASM): r0=src, r1=dst, r2=byte_count. The ASM does
// `lsr r2, #1` to derive halfword count.
void CopyHalfwords_c(const u16 *src, u16 *dst, u32 byte_count)
{
    u32 halfwords = byte_count >> 1;
    u32 i;
    for (i = 0; i < halfwords; i++) {
        dst[i] = src[i];
    }
}
