#include "EWRAM.h"

/* Saturating-add of arg into the u16 at 0x020352A0 (=off_801E0D8+0x20),
   clamped to 0x4000.  The Cust gauge fill counterpart of
   ClearCustGauge / SetCustGauge. */
void sub_801DFB8_c(u32 arg)
{
    u16 *p = (u16 *) 0x020352A0u;
    u32 v = *p + arg;
    if ((s32)v > 0x4000) v = 0x4000u;
    *p = (u16)v;
}
