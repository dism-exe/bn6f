#include "types.h"

extern u8 CurPETNaviToNaviStatsIndexTable[];

// Table lookup: maps PET navi enum (r0) to NaviStats index. MegaMan
// returns 0, everything else returns 1 in vanilla BN6F.
bool8 GetNaviStatsIndexGivenCurPETNavi_c(u32 navi_idx)
{
    return CurPETNaviToNaviStatsIndexTable[navi_idx];
}
