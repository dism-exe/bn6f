#include "types.h"

// r10 = ambient Toolkit*. Returns &Unk2004190_Ptr_base[idx], where each
// entry is 8 bytes. Toolkit.Unk2004190_Ptr is at offset 0x5C.
u32 sub_813B9FC_c(u32 idx)
{
    register u8 *r10p asm("r10");
    u8 *base;
    asm volatile("" : "=r"(r10p));

    base = *(u8 **)(r10p + 0x5C);
    return (u32)(base + idx * 8);
}
