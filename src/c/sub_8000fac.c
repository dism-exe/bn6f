#include "types.h"

extern void ClearEventFlag_c(u32 flag);
extern u32 TestEventFlag_c(u32 flag);

// r10 = ambient Toolkit*. If EVENT_170C is clear and the (group,
// number) pair matches the LastMap pair, skip the reset; otherwise
// zero GameState.CurBattleDataPtr (0x1C) and S2001c04 fields at
// 0x1C, 0x28, 0x2C. Always clear EVENT_170C at the end.
//
// Toolkit.GameStatePtr = 0x3C, S2001c04_Ptr = 0x40.
// GameState: MapGroup=4, MapNumber=5, LastMapGroup=0xC, LastMapNumber=0xD.
void sub_8000FAC_c(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    u8 *s2;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    if ((TestEventFlag_c(0x170Cu) != 0u) ||
        (gs[4] != gs[0xC]) || (gs[5] != gs[0xD])) {
        *(u32 *)(gs + 0x1C) = 0u;
        s2 = *(u8 **)(r10p + 0x40);
        *(u32 *)(s2 + 0x1C) = 0u;
        *(u32 *)(s2 + 0x2C) = 0u;
        *(u32 *)(s2 + 0x28) = 0u;
    }
    ClearEventFlag_c(0x170Cu);
}
