#include "EWRAM.h"

u32 Is_eStruct200a6a0_Initialized_impl(void)
{
    return *(u8 *) 0x0200A6A0u;
}

DECOMP_FLAG_WRAPPER(Is_eStruct200a6a0_Initialized_c, Is_eStruct200a6a0_Initialized_impl)
