#include "types.h"

extern u8 byte_80210DD[];
extern void initNaviStats_WithDefaultStatsMaybe_8013438_c(u8 *stats);

// r10 = ambient Toolkit*. Normalises r0 to 0 or 1, selects a NaviStats
// slot (NaviStatsPtr + idx*0x64), then runs the loc_8013B6E shared
// tail: zero-init via initNaviStats, then splatter byte/halfword fields
// from byte_80210DD[naviIdx*16] across the slot.
//
// Originally falls through into init_8013B64's shared tail at
// loc_8013B6E; the body is inlined here so a self-contained C function
// covers both the entry-specific setup and the shared writes.
//
// Toolkit.NaviStatsPtr is at 0x74. NaviStats_Size = 0x64.
void init_8013B4E_c(u32 structSel, u32 naviIdx)
{
    register u8 *r10p asm("r10");
    u8 *navi;
    u8 *tbl;
    u16 hp2;
    u32 sel;

    asm volatile("" : "=r"(r10p));

    sel = (structSel != 0u) ? 1u : 0u;
    navi = *(u8 **)(r10p + 0x74) + sel * 0x64u;

    initNaviStats_WithDefaultStatsMaybe_8013438_c(navi);

    tbl = byte_80210DD + naviIdx * 0x10u;
    navi[0x29] = (u8)naviIdx;                    // NaviIndex

    hp2 = (u16)((u32)tbl[0] * 2u);
    *(u16 *)(navi + 0x40) = hp2;                 // CurHP
    *(u16 *)(navi + 0x42) = hp2;                 // MaxHP
    *(u16 *)(navi + 0x3E) = hp2;                 // MaxBaseHP

    navi[0x23] = tbl[1];                         // SuperArmor
    navi[0x1B] = tbl[2];                         // FloatShoes
    navi[0x1C] = tbl[3];                         // AirShoes
    navi[0x1D] = tbl[4];                         // UnderShirt
    navi[0x06] = tbl[5];                         // FstBarr
    navi[0x0B] = tbl[6];                         // MegaLevel
    navi[0x0C] = tbl[7];                         // GigaLevel
    navi[0x04] = tbl[8];                         // BButton
    navi[0x05] = tbl[9];                         // BPwrAtk
    navi[0x07] = tbl[10];                        // BLeftAbility

    *(u16 *)(navi + 0x46) = (u16)tbl[11];
    *(u16 *)(navi + 0x4A) = (u16)tbl[12];
    *(u16 *)(navi + 0x48) = (u16)tbl[13];
    navi[0x00] = tbl[14];
    navi[0x39] = tbl[15];
}
