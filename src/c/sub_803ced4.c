#include "EWRAM.h"

extern u8  GetCurPETNavi_c(void);
extern u16 GetCurPETNaviStatsHword_c(u32 navi_idx, u32 offset);
extern void SetCurPETNaviStatsHword_c(u32 navi_idx, u32 offset, u16 value);

// Reads NaviStats halfword at offset 0x3E, adds the u16 at
// *eToolkit->Unk2004334_Ptr, stores back at offset 0x42.
void sub_803CED4_c(void)
{
    u8  navi = GetCurPETNavi_c();
    u16 base = GetCurPETNaviStatsHword_c(navi, 0x3E);
    u16 adj  = *eToolkit->Unk2004334_Ptr;
    SetCurPETNaviStatsHword_c(navi, 0x42, (u16)(base + adj));
}
