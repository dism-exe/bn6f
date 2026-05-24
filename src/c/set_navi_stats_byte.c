#include "types.h"

// r10 = ambient Toolkit*. Writes val into NaviStatsPtr[normalized*0x64 + off],
// where normalized = (structSel != 0). Toolkit.NaviStatsPtr is at 0x74,
// NaviStats.Size is 0x64.
void SetNaviStatsByte_c(u32 structSel, u32 off, u8 val)
{
    register u8 *r10p asm("r10");
    u8 *ns;
    u32 idx;
    asm volatile("" : "=r"(r10p));

    idx = (structSel != 0u) ? 1u : 0u;
    ns = *(u8 **)(r10p + 0x74);
    ns[idx * 0x64 + off] = val;
}
