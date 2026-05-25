#include "EWRAM.h"

extern u32  GetBattleNaviStatsAddr_c(u32 idx);
extern void initNaviStats_WithDefaultStatsMaybe_8013438_c(u8 *stats);

/* Initialise the BattleNaviStats slot for `chip_idx` from the
   16-byte default-config row at byte_80210DD + naviIdx*16.
   The slot at GetBattleNaviStatsAddr(chip_idx) gets first
   default-zeroed (initNaviStats_WithDefaultStatsMaybe), then the
   following fields are stamped from the config row:

     slot[41]       = naviIdx
     u16 +64/+66/+62 = config[0] * 2   (HPmax / HPcur / HPother)
     slot[35] = config[1]
     slot[27] = config[2]
     slot[28] = config[3]
     slot[29] = config[4]
     slot[6]  = config[5]
     slot[11] = config[6]
     slot[12] = config[7]
     slot[4]  = config[8]
     slot[5]  = config[9]
     slot[7]  = config[10]
     u16 +70  = config[11]
     u16 +74  = config[12]
     u16 +72  = config[13]
     slot[0]  = config[14]
     slot[57] = config[15] */
void init_8013B64_c(u32 chip_idx, u32 naviIdx)
{
    u8 *slot = (u8 *) GetBattleNaviStatsAddr_c(chip_idx);
    u8 *cfg  = (u8 *) 0x080210DDu + naviIdx * 16u;
    u32 hp;

    initNaviStats_WithDefaultStatsMaybe_8013438_c(slot);

    slot[41] = (u8)naviIdx;

    hp = (u32)cfg[0] * 2u;
    *(u16 *)(slot + 64) = (u16)hp;
    *(u16 *)(slot + 66) = (u16)hp;
    *(u16 *)(slot + 62) = (u16)hp;

    slot[35] = cfg[1];
    slot[27] = cfg[2];
    slot[28] = cfg[3];
    slot[29] = cfg[4];
    slot[6]  = cfg[5];
    slot[11] = cfg[6];
    slot[12] = cfg[7];
    slot[4]  = cfg[8];
    slot[5]  = cfg[9];
    slot[7]  = cfg[10];
    *(u16 *)(slot + 70) = cfg[11];
    *(u16 *)(slot + 74) = cfg[12];
    *(u16 *)(slot + 72) = cfg[13];
    slot[0]  = cfg[14];
    slot[57] = cfg[15];
}
