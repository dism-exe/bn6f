#include "types.h"

extern u32 eActiveOWPlayerObjectBitfield;
extern u8 eOWPlayerObject[];
extern u8 eOWPlayerObjectEnd[];

// 5-reg-arg function: r0=idx, r1=x, r2=y, r3=z, r4=movement-related.
// Like SpawnOverworldNPCObject but with 0xC8-byte slots, flag byte
// 0x09 (writes #9 unconditionally — not the OBJECT_FLAG combo), and no
// ZeroFillByWord call. Returns the slot in r5 or 0 on failure.
#define OWPO_SIZE 0xC8u

static u8 *SpawnOWPlayerObject_impl(u32 idx, u32 x, u32 y, u32 z, u32 r4_arg)
{
    u32 active = eActiveOWPlayerObjectBitfield;
    u32 bit = 0x80000000u;
    u8 *slot = eOWPlayerObject;

    while ((active & bit) != 0u) {
        bit >>= 1;
        slot += OWPO_SIZE;
        if (slot >= eOWPlayerObjectEnd) {
            return (u8 *)0;
        }
    }

    eActiveOWPlayerObjectBitfield = active | bit;
    slot[0x00] = 0x09;
    slot[0x01] = (u8)idx;
    *(u32 *)(slot + 0x1C) = x;
    *(u32 *)(slot + 0x20) = y;
    *(u32 *)(slot + 0x24) = z;
    *(u32 *)(slot + 0x04) = r4_arg;
    *(u32 *)(slot + 0x08) = 0u;
    return slot;
}

__attribute__((naked)) void SpawnOWPlayerObject_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "push {r4}\n\t"
        "bl SpawnOWPlayerObject_impl\n\t"
        "add sp, #4\n\t"
        "mov r5, r0\n\t"
        "pop {pc}\n\t"
    );
}
