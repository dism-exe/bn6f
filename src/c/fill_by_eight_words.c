#include "types.h"

// Original wrapped BIOS SWI_CpuFastSet for 32-bit word fill in 8-word
// bursts. Plain word loop here — harness's banked-stack skip absorbs
// the missing SVC writes.
//
// Args (matching ASM): r0=dst, r1=byte_count, r2=word.
void FillByEightWords_c(u32 *dst, u32 byte_count, u32 word)
{
    u32 words = byte_count >> 2;
    u32 i;
    for (i = 0; i < words; i++) {
        dst[i] = word;
    }
}
