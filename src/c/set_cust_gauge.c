#include "EWRAM.h"

/* Clamps val to <= 0x4000 then writes to the u16 at
   off_801E0D8 (=0x02035280) + 0x20 = 0x020352A0. */
void SetCustGauge_c(u32 val)
{
    if (val > 0x4000u) val = 0x4000u;
    *(u16 *) 0x020352A0u = (u16)val;
}
