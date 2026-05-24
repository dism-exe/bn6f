#include "types.h"

extern u32 eActiveOverworldNPCObjectsBitfield;
extern u8 eOverworldNPCObjects[];
extern u8 byte_2006530[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

#define OBJ_FLAG_ACTIVE             0x01u
#define OBJ_FLAG_STOP_SPRITE_UPDATE 0x08u
#define NPC_SIZE 0xD8u

// 5-reg-arg function: r0=idx, r1=x, r2=y, r3=z, r4=movement-pack.
// Returns the freshly-allocated slot pointer in r5 (NOT r0!), or 0
// on failure. The naked wrapper handles the r5-output convention;
// the impl returns the slot in r0 and the wrapper copies r0 -> r5.
static u8 *SpawnOverworldNPCObject_impl(u32 idx, u32 x, u32 y, u32 z, u32 mvpack)
{
    u32 active = eActiveOverworldNPCObjectsBitfield;
    u32 bit = 0x80000000u;
    u8 *slot = eOverworldNPCObjects;

    while ((active & bit) != 0u) {
        bit >>= 1;
        slot += NPC_SIZE;
        if (slot >= byte_2006530) {
            return (u8 *)0;
        }
    }

    eActiveOverworldNPCObjectsBitfield = active | bit;
    ZeroFillByWord_c((u32 *)(slot + 4), 0x9Cu);
    slot[0x00] = (u8)(OBJ_FLAG_ACTIVE | OBJ_FLAG_STOP_SPRITE_UPDATE);
    slot[0x01] = (u8)idx;
    *(u32 *)(slot + 0x04) = mvpack;
    *(u32 *)(slot + 0x24) = x;
    *(u32 *)(slot + 0x28) = y;
    *(u32 *)(slot + 0x2C) = z;
    return slot;
}

__attribute__((naked)) void SpawnOverworldNPCObject_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "push {r4}\n\t"               // 5th stack arg = mvpack
        "bl SpawnOverworldNPCObject_impl\n\t"
        "add sp, #4\n\t"
        "mov r5, r0\n\t"
        "pop {pc}\n\t"
    );
}
