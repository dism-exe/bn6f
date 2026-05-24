#include "types.h"

extern u8 eOWObjectInteractionAreas[];
extern u32 eNumOWObjectInteractionAreas;

// 7-register-arg function: r0=x, r1=y, r2=z, r3=radius/zreach,
// r4/r5/r6 = flags / flags2 / mem_ptr. Pushes a new 0x14-byte record
// into eOWObjectInteractionAreas[] up to a cap of 0x20, packing
// (x>>16, y>>16) and (z>>16, radius<<16) each after adding 0x8000
// (round-to-nearest-16k offset).
//
// We can't use `register asm("rN")` for r5/r6 directly: agbcc's
// prologue moves r8/r9/r10 through r5/r6/r7 to push them, clobbering
// r5/r6 before we get a chance to read them. Instead the naked wrapper
// pushes r4/r5/r6 onto the stack right at entry, then calls a regular
// 7-arg C impl (the first 4 args in r0-r3, the rest as stack slots
// per APCS).
static void createOWObjectInteractionArea_impl(u32 x, u32 y, u32 z, u32 radius,
                                               u32 flags, u32 flags2, u32 mem_ptr)
{
    u32 count;
    u8 *area;

    count = eNumOWObjectInteractionAreas;
    if (count >= 0x20u) {
        return;
    }

    area = eOWObjectInteractionAreas + count * 0x14u;
    *(u32 *)(area + 0x00) = ((y + 0x8000u) & 0xFFFF0000u) | ((x + 0x8000u) >> 16);
    *(u32 *)(area + 0x04) = ((z + 0x8000u) >> 16) | (radius << 16);
    *(u32 *)(area + 0x08) = flags;
    *(u32 *)(area + 0x0C) = flags2;
    *(u32 *)(area + 0x10) = mem_ptr;
    eNumOWObjectInteractionAreas = count + 1u;
}

__attribute__((naked)) void createOWObjectInteractionArea_80037ac_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "push {r4, r5, r6}\n\t"     // turn the high-reg args into 5th/6th/7th stack args
        "bl createOWObjectInteractionArea_impl\n\t"
        "add sp, #12\n\t"
        "pop {pc}\n\t"
    );
}
