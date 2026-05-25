#include "EWRAM.h"

/* Two index-into-table calculators.
   sub_802D064 -> 0x0203C4A0 + idx * 32   (stride 32)
   sub_802E070 -> 0x02036120 + idx * 464  (stride 464 = 232*2) */

u32 sub_802D064_c(u32 idx)
{
    return 0x0203C4A0u + idx * 32u;
}

u32 sub_802E070_c(u32 idx)
{
    return 0x02036120u + idx * 464u;
}
