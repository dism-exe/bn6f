#include "EWRAM.h"

extern u32 TestBattleFlag_0x40_c(void);

/* Boolean form: 1 iff TestBattleFlag_0x40 returns nonzero, else 0. */
u32 sub_800A8F8_c(void)
{
    return TestBattleFlag_0x40_c() ? 1u : 0u;
}
