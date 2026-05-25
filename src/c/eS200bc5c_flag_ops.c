#include "EWRAM.h"

#define eS200BC5C (*(u32 *) 0x0200BC5C)

void sub_803CB00_c(u32 mask)
{
    eS200BC5C |= mask;
}

void sub_803CB0C_c(u32 mask)
{
    eS200BC5C &= ~mask;
}

u32 sub_803CB18_impl(u32 mask)
{
    return eS200BC5C & mask;
}

DECOMP_FLAG_WRAPPER(sub_803CB18_c, sub_803CB18_impl)
