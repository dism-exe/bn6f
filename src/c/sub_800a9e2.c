#include "types.h"

// r10 = ambient Toolkit*. Reads a byte from BattleState[idx + 0x14].
// Toolkit.BattleStatePtr is at offset 0x18.
u32 sub_800A9E2_c(u32 idx)
{
    register u8 *r10p asm("r10");
    u8 *bs;
    asm volatile("" : "=r"(r10p));

    bs = *(u8 **)(r10p + 0x18);
    return (u32)bs[idx + 0x14];
}
