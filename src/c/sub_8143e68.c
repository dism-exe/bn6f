#include "EWRAM.h"

/* Two-byte color blend: take the low and high bytes of `color` as
   independent channels and shift each by a signed delta read from
   the byte-pair table at 0x08143E94 (stride 2), scaled by `amount`.
   Returns the recombined u16-as-u32. */
u32 sub_8143E68_c(u32 color, u32 idx, u32 amount)
{
    s8 *table = (s8 *) 0x08143E94u;
    s32 d_lo = table[idx * 2u + 0];
    s32 d_hi = table[idx * 2u + 1];
    /* The ASM doesn't mask before OR-ing, so a low byte that
       overflows past 0xFF can carry into the high byte's bit 8.
       Preserve that exactly by replicating the raw add. */
    u32 lo = (color & 0xFFu) + (u32)(d_lo * (s32)amount);
    u32 hi = (color >> 8)    + (u32)(d_hi * (s32)amount);
    return lo | (hi << 8);
}
