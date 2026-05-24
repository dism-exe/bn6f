#include "types.h"

extern u8 *off_80360E4[];

// r10 = ambient Toolkit*. Picks an event-byte-keyed (MapGroup,MapNumber)
// → music table from off_80360E4, walks 8-byte records, and writes the
// matching music ID to S2001c04.MapMusic. 0x63 is the not-found sentinel.
// Toolkit.GameStatePtr = 0x3C, S2001c04_Ptr = 0x40.
// GameState.MapGroup=4, MapNumber=5, Unk_07=7. S2001c04.MapMusic=4.
void playCertainMapMusicBasedOnEventByte_8036e44_c(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    u8 *s2;
    u8 *entry;
    u8 group;
    u8 number;
    u8 unk07;
    u8 *target;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    s2 = *(u8 **)(r10p + 0x40);
    group = gs[4];
    number = gs[5];
    unk07 = gs[7];

    entry = off_80360E4[unk07];
    while (1) {
        u8 cur = entry[0];
        if (cur == 0xFF) {
            s2[4] = 0x63;
            return;
        }
        if (cur == group) {
            target = *(u8 **)(entry + 4);
            s2[4] = target[number];
            return;
        }
        entry += 8;
    }
}
