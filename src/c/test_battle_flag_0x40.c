#include "EWRAM.h"

extern u32 battle_getFlags_c(void);

static u32 TestBattleFlag_0x40_impl(void)
{
    return battle_getFlags_c() & 0x40u;
}

DECOMP_FLAG_WRAPPER(TestBattleFlag_0x40_c, TestBattleFlag_0x40_impl)
