#include "EWRAM.h"

extern u32 sub_802E070_c(u32 idx);

/* Saturating-add `add` into the u16 at offset +40 of sub_802E070(idx),
   clamped at 0x4000. Counterpart of sub_802E04E (saturating-sub). */
void sub_802E032_c(u32 idx, u32 add)
{
    u8 *slot = (u8 *) sub_802E070_c(idx);
    s32 v = (s32)(*(u16 *)(slot + 40)) + (s32)add;
    if (v > 0x4000) v = 0x4000;
    *(u16 *)(slot + 40) = (u16)v;
}
