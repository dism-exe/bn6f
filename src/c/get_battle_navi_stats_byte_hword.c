#include "EWRAM.h"

extern u32 GetBattleNaviStatsAddr_c(u32 idx);

u32 GetBattleNaviStatsByte_c(u32 idx, u32 offset)
{
    return *(u8 *)(GetBattleNaviStatsAddr_c(idx) + offset);
}

u32 GetBattleNaviStatsHword_c(u32 idx, u32 offset)
{
    return *(u16 *)(GetBattleNaviStatsAddr_c(idx) + offset);
}

s32 GetBattleNaviStatsSignedByte_c(u32 idx, u32 offset)
{
    return *(s8 *)(GetBattleNaviStatsAddr_c(idx) + offset);
}
