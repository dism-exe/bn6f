#include "EWRAM.h"

extern bool8 GetNaviStatsIndexGivenCurPETNavi_c(u32 navi_idx);

// Args: r0 = navi_idx, r1 = offset within NaviStats, r2 = byte to store.
// ASM pushes/pops r1 and r2 around the GetNaviStats call so they
// survive — C just keeps them in locals.
void SetCurPETNaviStatsByte_c(u32 navi_idx, u32 offset, u8 value)
{
    u8 *stats;
    u32 idx;

    idx = GetNaviStatsIndexGivenCurPETNavi_c(navi_idx);
    stats = (u8 *)eToolkit->NaviStatsPtr + idx * 0x64u;
    stats[offset] = value;
}
