#include "types.h"

// r10 = ambient Toolkit*. Writes byte r0 to GameState.Unk_09.
// Toolkit.GameStatePtr is at 0x3C; GameState.Unk_09 is at 0x09.
void sub_8001172_c(u8 v)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    gs[9] = v;
}
