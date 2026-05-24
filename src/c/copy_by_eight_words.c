#include "types.h"

// Original ASM called BIOS SWI_CpuFastSet, which copies in 8-word
// (32-byte) chunks and requires the count be a multiple of 8 words.
// A plain word loop produces the same memory outcome — if the caller
// passes a non-multiple-of-8 count the BIOS would over- or under-copy
// in implementation-defined ways; the C loop here matches the
// implied contract (`byte_count / 4` words copied exactly).
void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count)
{
    u32 words = byte_count >> 2;
    u32 i;
    for (i = 0; i < words; i++) {
        dst[i] = src[i];
    }
}
