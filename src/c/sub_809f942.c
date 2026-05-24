#include "types.h"

extern u8 byte_2000210[];
extern u32 TestEventFlag_c(u32 flag);
extern void sub_809F90C_c(void);

// r10 = ambient Toolkit*. Searches a list of NPC pointers in
// byte_2000210+0x10 (count at byte_2000210[0]) for one that's
// within a diamond-shaped distance of the player and on the same Z.
// On match: clear via sub_809F90C, record at byte_2000210+8, return ptr.
// No match: clear and return 0. Early-out if EVENT_1708 is set.
//
// Player coords: X=0x1C, Y=0x20, Z=0x24 (OWPlayerObject).
// NPC coords:    X=0x24, Y=0x28, Z=0x2C (OverworldNPCObject).
//
// Diamond bounds: -0x380000 <= dx-dy <= 0x240000
//                 -0x1C0000 <= dx+dy <= 0x1C0000
u8 *sub_809F942_c(void)
{
    register u8 *r10p asm("r10");
    u8 *player;
    u8 **entries;
    s32 i;
    asm volatile("" : "=r"(r10p));

    if (TestEventFlag_c(0x1708u) != 0u) {
        return (u8 *)0;
    }

    player = *(u8 **)(*(u8 **)(r10p + 0x3C) + 0x18);   // GameState.OverworldPlayerObjectPtr
    entries = (u8 **)(byte_2000210 + 0x10);

    for (i = (s32)byte_2000210[0] - 1; i >= 0; i--) {
        u8 *npc = entries[(byte_2000210[0] - 1) - i];
        // Same Z?
        if (*(u32 *)(npc + 0x2C) != *(u32 *)(player + 0x24)) {
            continue;
        }
        {
            s32 dx = *(s32 *)(npc + 0x24) - *(s32 *)(player + 0x1C);
            s32 dy = *(s32 *)(npc + 0x28) - *(s32 *)(player + 0x20);
            s32 diff = dx - dy;
            s32 sum = dx + dy;
            if (diff > 0x240000) continue;
            if (diff < -0x380000) continue;
            if (sum > 0x1C0000) continue;
            if (sum < -0x1C0000) continue;
            sub_809F90C_c();
            *(u8 **)(byte_2000210 + 8) = npc;
            return npc;
        }
    }
    sub_809F90C_c();
    return (u8 *)0;
}
