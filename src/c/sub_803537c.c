#include "types.h"

extern u16 word_80353B8[];
extern void ClearEventFlag_c(u32 flag);
extern void SetEventFlag_c(u32 flag);
extern u32 TestEventFlag_c(u32 flag);

// r10 = ambient Toolkit*. Clears EVENT_28, then walks a (map_pair,
// event_flag) table at word_80353B8. For each entry whose map_pair
// matches GameState's (MapGroup,MapNumber) packed halfword, tests the
// associated event flag — if set, sets EVENT_28 and returns. A 0
// map_pair terminates the table.
//
// Toolkit.GameStatePtr = 0x3C, GameState.MapGroup = u8 at +4,
// MapNumber = u8 at +5 (read as halfword for the comparison).
void sub_803537C_c(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    u16 mg_pair;
    u16 *p;
    asm volatile("" : "=r"(r10p));

    ClearEventFlag_c(0x28u);

    p = word_80353B8;
    gs = *(u8 **)(r10p + 0x3C);
    mg_pair = *(u16 *)(gs + 4);

    while (*p != 0u) {
        if (*p == mg_pair) {
            if (TestEventFlag_c((u32)p[1]) != 0u) {
                SetEventFlag_c(0x28u);
                return;
            }
        }
        p += 2;
    }
}
