#include "types.h"

extern u8 byte_20004E0[];

// r10 = ambient Toolkit*. Compares (byte_20004E0[idx] ^ 0x6F) with
// Unk2004a8c_Ptr[idx]; returns 0 if equal, 1 if not.
// Toolkit.Unk2004a8c_Ptr is at offset 0x78.
u32 encryption_navicustMaybe_8006e50_c(u32 idx)
{
    register u8 *r10p asm("r10");
    u8 *p;
    asm volatile("" : "=r"(r10p));

    p = *(u8 **)(r10p + 0x78);
    return ((u8)(byte_20004E0[idx] ^ 0x6F) == p[idx]) ? 0u : 1u;
}
