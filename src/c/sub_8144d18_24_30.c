#include "EWRAM.h"

u32 sub_8144D18_c(void)
{
    return *(u8 *) 0x0200F440u;
}

u32 sub_8144D24_c(void)
{
    return *(u8 *) 0x0200F448u;
}

void sub_8144D30_c(void)
{
    *(u8 *) 0x0200F461u = 5u;
}
