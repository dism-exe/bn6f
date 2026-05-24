#include "types.h"

extern u8 ePETMenuData[];

u32 TestPETMenuDataFlag_impl(u32 mask)
{
    return mask & (u32)ePETMenuData[5];
}

DECOMP_FLAG_WRAPPER(TestPETMenuDataFlag_c, TestPETMenuDataFlag_impl)
