#include "EWRAM.h"

/* eS200BC50 + 6 holds a u8; eS200BC50 + 8 holds a u16. */

u32 sub_813D5D0_c(void)
{
    return *(u8 *) 0x0200BC56u;
}

void sub_813D9A0_c(u32 val)
{
    *(u16 *) 0x0200BC58u = (u16)val;
}
