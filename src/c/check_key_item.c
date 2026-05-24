#include "types.h"

extern u32 encryption_navicustMaybe_8006e50_c(u32 idx);

// r10 = Toolkit*. If the encryption-check function returns nonzero,
// return 0. Otherwise return KeyItemsPtr[r0]. Toolkit.KeyItemsPtr = 0x50.
u32 CheckKeyItem_impl(u32 idx)
{
    register u8 *r10p asm("r10");
    u8 *kp;
    asm volatile("" : "=r"(r10p));

    if (encryption_navicustMaybe_8006e50_c(idx) != 0u) {
        return 0u;
    }
    kp = *(u8 **)(r10p + 0x50);
    return (u32)kp[idx];
}

DECOMP_FLAG_WRAPPER(CheckKeyItem_c, CheckKeyItem_impl)
