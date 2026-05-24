#include "types.h"

// Toolkit.BattleStatePtr at offset 0x18 -> 0x020093C8.
// BattleState.Unk_32 is a u16 at offset 0x32.
//
// Flag meanings (from the original comment):
//   0x2 - cust gauge full
//   0x4 - timestop
#define eToolkit_BattleStatePtr (*(u8 **)0x020093C8u)

u32 battle_getFlags_c(void)
{
    return (u32)(*(u16 *)(eToolkit_BattleStatePtr + 0x32));
}
