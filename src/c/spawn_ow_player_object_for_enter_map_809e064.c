#include "types.h"

extern u8 *SpawnOWPlayerObject_impl(u32 idx, u32 x, u32 y, u32 z, u32 r4_arg);

// Leaves the freshly-spawned slot (or NULL) in r5 — the orig doesn't
// push/pop r5, so the side effect is visible to callers. The naked
// wrapper handles the r5 dance.
//
// Calls SpawnOWPlayerObject_impl directly (NOT the SpawnOWPlayerObject_c
// trampoline target) because that wrapper expects r4 to be the 5th arg
// from the ASM caller — from C land r4 is a callee-saved local.
//
// Toolkit.GameStatePtr = 0x3C; GameState.PlayerX/Y/Z at 0x24/0x28/0x2C;
// FacingDirectionAfterWarp = 0x30; OverworldPlayerObjectPtr = 0x18.
// OWPlayerObject.X/Y/Z at 0x1C/0x20/0x24; FacingDirection = 0x10.
static u8 *spawnOWPlayerObjectForEnterMap_impl(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    u8 *slot;

    asm volatile("" : "=r"(r10p));

    slot = SpawnOWPlayerObject_impl(0u, 0u, 0u, 0u, 0u);
    if (slot == (u8 *)0) {
        return slot;
    }

    gs = *(u8 **)(r10p + 0x3C);
    *(u8 **)(gs + 0x18) = slot;
    *(u32 *)(slot + 0x1C) = *(u32 *)(gs + 0x24);
    *(u32 *)(slot + 0x20) = *(u32 *)(gs + 0x28);
    *(u32 *)(slot + 0x24) = *(u32 *)(gs + 0x2C);
    slot[0x10] = (u8)(*(u32 *)(gs + 0x30));
    return slot;
}

__attribute__((naked)) void spawnOWPlayerObjectForEnterMap_809e064_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "bl spawnOWPlayerObjectForEnterMap_impl\n\t"
        "mov r5, r0\n\t"
        "pop {pc}\n\t"
    );
}
