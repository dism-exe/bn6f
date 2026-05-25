#include "EWRAM.h"

extern void SetNaviStatsByte_c(u32 structSel, u32 off, u8 val);

/* Clear the +0x0E byte (Mood) for each of the 7 navis. */
void ZeroAllNaviStatsMood_c(void)
{
    u32 i;
    for (i = 0; i < 7u; i++) {
        SetNaviStatsByte_c(i, 14u, 0);
    }
}
