#include "types.h"

// Zero-fill specialization of HalfwordFill (BIOS SWI_CpuSet halfword
// fill with a hardcoded zero source).
//
// Args: r0=dst, r1=byte_count.
void ZeroFillByHalfword_c(u16 *dst, u32 byte_count)
{
    u32 halfwords = byte_count >> 1;
    u32 i;
    for (i = 0; i < halfwords; i++) {
        dst[i] = 0;
    }
}
