#include "EWRAM.h"

u32 sub_81468BC_c(void)
{
    return *(u8 *) 0x02010293u;
}

u32 sub_814690C_c(void)
{
    return *(u16 *) 0x0200FE26u;
}

void sub_81469DC_c(u32 val)
{
    *(u8 *) 0x0201015Au = (u8)val;
}
