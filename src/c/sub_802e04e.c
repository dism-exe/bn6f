#include "EWRAM.h"

extern u32 sub_802E070_c(u32 idx);

/* On the slot returned by sub_802E070(idx): the hword at +40 is
   decremented by `dec` and floored at 0. */
void sub_802E04E_c(u32 idx, u32 dec)
{
    u8 *slot = (u8 *) sub_802E070_c(idx);
    s32 v = (s32)(*(u16 *)(slot + 40)) - (s32)dec;
    if (v < 0) v = 0;
    *(u16 *)(slot + 40) = (u16)v;
}
