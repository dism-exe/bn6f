#include "types.h"

// Original wrapped BIOS SWI_CpuSet for 32-bit word fill (mode bit
// 0x5000000 = word + fill). Plain word loop here.
//
// Args (matching ASM): r0=dst, r1=byte_count, r2=word.
void WordFill_c(u32 *dst, u32 byte_count, u32 word)
{
    u32 words = byte_count >> 2;
    u32 i;
    for (i = 0; i < words; i++) {
        dst[i] = word;
    }
}
