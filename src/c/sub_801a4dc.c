#include "EWRAM.h"

/* Iterate the 32-bit `Unk_7c` bitmask on r5_ambient's CollisionData,
   most-significant bit first.  For each set bit, write the matching
   `eCollisionData[i].ParentObjectPtr` into the caller's `outArr` and
   advance it.  Stop when `count_x4` capacity (in bytes) drops below
   4 or the bitmask is exhausted.  Returns the number of items
   written. */
u32 sub_801A4DC_c(u32 *outArr, u32 count_x4)
{
    register u8 *r5_in asm("r5");
    u8 *bo;
    u8 *coll;
    u8 *entry;
    u32 bitmask;
    s32 cap;
    s32 count;
    u32 prev;

    asm volatile("" : "=r"(r5_in));
    bo = r5_in;

    coll = *(u8 **)(bo + 0x54);
    bitmask = *(u32 *)(coll + 0x7c);
    entry = (u8 *) 0x020384F0u;
    cap = (s32)count_x4;
    count = 0;

    while (cap >= 4 && bitmask != 0u) {
        prev = bitmask;
        bitmask <<= 1;
        if (prev & 0x80000000u) {
            *outArr = *(u32 *)(entry + 0x38);
            outArr++;
            count++;
            cap -= 4;
        }
        entry += 0xa8;
    }

    return (u32)count;
}
