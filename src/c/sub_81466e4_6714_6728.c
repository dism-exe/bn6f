#include "EWRAM.h"

/* sub_81466E4 — returns address of byte_2009750[idx_lobyte * 8].
   (lsls 24, lsrs 21 = mask low byte then *8.) */
u32 sub_81466E4_c(u32 idx)
{
    return 0x02009750u + (idx & 0xFFu) * 8u;
}

/* sub_8146714 — same, but stride 16 and base 0x020098B0. */
u32 sub_8146714_c(u32 idx)
{
    return 0x020098B0u + (idx & 0xFFu) * 16u;
}

/* sub_8146728 — returns u16 read at p+11/+12 (unaligned hword). */
u32 sub_8146728_c(u8 *p)
{
    return (u32)p[11] | ((u32)p[12] << 8);
}
