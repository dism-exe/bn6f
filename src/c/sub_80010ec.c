#include "EWRAM.h"

extern u32  GetCurPETNaviStatsHword_c(u32 idx, u32 off);
extern void SetCurPETNaviStatsHword_c(u32 idx, u32 off, u32 val);

/* Set the cur HP for navi `idx` (hword at offset 64), clamped to
   the max HP (hword at offset 66). */
void sub_80010EC_c(u32 idx, u32 hp)
{
    u32 maxhp = GetCurPETNaviStatsHword_c(idx, 66u);
    if (hp > maxhp) hp = maxhp;
    SetCurPETNaviStatsHword_c(idx, 64u, hp);
}
