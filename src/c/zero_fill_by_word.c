#include "types.h"

// Zero-fill specialization of WordFill (BIOS SWI_CpuSet word-mode
// with a hardcoded zero source).
//
// Args: r0=dst, r1=byte_count.
void ZeroFillByWord_c(u32 *dst, u32 byte_count)
{
    u32 words = byte_count >> 2;
    u32 i;
    for (i = 0; i < words; i++) {
        dst[i] = 0;
    }
}
