#include "EWRAM.h"

void sub_8001382_c(u32 mask)
{
    eToolkit->BattleStatePtr->Unk_5c |= mask;
}
