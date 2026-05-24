#include "EWRAM.h"

// Battle flag meanings (from the original comment):
//   0x2 - cust gauge full
//   0x4 - timestop
u32 battle_getFlags_c(void)
{
    return (u32)(*(u16 *)((u8 *)eToolkit->BattleStatePtr + 0x32));
}
