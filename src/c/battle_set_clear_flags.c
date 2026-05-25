#include "EWRAM.h"

void battle_setFlags_c(u32 mask)
{
    eToolkit->BattleStatePtr->Unk_32 |= (u16)mask;
}

void battle_clearFlags_c(u32 mask)
{
    eToolkit->BattleStatePtr->Unk_32 &= (u16)~mask;
}
