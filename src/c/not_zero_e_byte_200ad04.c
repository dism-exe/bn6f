#include "types.h"

extern u16 word_200AD04[];

u32 notZero_eByte200AD04_impl(void)
{
    return (u32)(*(u8 *)word_200AD04);
}

DECOMP_FLAG_WRAPPER(notZero_eByte200AD04_c, notZero_eByte200AD04_impl)
