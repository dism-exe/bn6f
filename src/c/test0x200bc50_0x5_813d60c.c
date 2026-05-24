#include "types.h"

extern u8 eS200BC50[];

u32 test0x200bc50_0x5_813D60C_impl(void)
{
    return (u32)eS200BC50[5];
}

DECOMP_FLAG_WRAPPER(test0x200bc50_0x5_813D60C_c, test0x200bc50_0x5_813D60C_impl)
