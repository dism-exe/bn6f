#include "types.h"

// Multi-return (r0, r1): r0 = low 9 bits, r1 = upper 23 bits.
// APCS packs u64 into (r0=low, r1=high), so a u64 return with the
// right halves lands the bits where ASM callers expect them.
u64 split9BitsFromBitfield_8021AE0_c(u32 x)
{
    u32 low = x & 0x1FFu;
    u32 high = x >> 9;
    return ((u64)high << 32) | (u64)low;
}
