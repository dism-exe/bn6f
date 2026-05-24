#include "types.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// Initializes a 0x64-byte NaviStats block. ASM first zero-fills via
// ZeroFillByWord, then writes a bunch of specific defaults — many of
// which overlap the just-zeroed region (matching ASM literally).
void initNaviStats_WithDefaultStatsMaybe_8013438_c(u8 *stats)
{
    u32 i;
    ZeroFillByWord_c((u32 *)stats, 0x64);

    stats[0x05] = 1;
    stats[0x07] = 0xff;
    stats[0x08] = 0;
    stats[0x09] = 4;
    stats[0x0a] = 5;
    stats[0x0b] = 5;
    stats[0x0c] = 1;
    stats[0x0d] = 0;
    stats[0x0e] = 0x99;
    stats[0x12] = 0xff;
    stats[0x18] = 0;
    stats[0x19] = 0;
    stats[0x20] = 1;
    stats[0x26] = 0;
    stats[0x27] = 0x1f;
    stats[0x28] = 0;
    stats[0x2c] = 0;
    stats[0x2d] = 0;
    for (i = 0x2e; i <= 0x30; i++) stats[i] = 0xff;
    *(u16 *)(stats + 0x3e) = 0x64;
    *(u16 *)(stats + 0x40) = 0x64;
    *(u16 *)(stats + 0x42) = 0x64;
    for (i = 0x56; i <= 0x5b; i++) stats[i] = 0xff;
    stats[0x21] = 3;
}
