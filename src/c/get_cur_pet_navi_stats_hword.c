#include "EWRAM.h"

extern bool8 GetNaviStatsIndexGivenCurPETNavi_c(u32 navi_idx);

u16 GetCurPETNaviStatsHword_c(u32 navi_idx, u32 offset)
{
    u8 *stats;
    u32 idx;

    idx = GetNaviStatsIndexGivenCurPETNavi_c(navi_idx);
    stats = (u8 *)eToolkit->NaviStatsPtr + idx * 0x64u;
    return *(u16 *)(stats + offset);
}
