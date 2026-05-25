#include "EWRAM.h"

void sub_803C320_c(void)
{
    u8 *p = (u8 *) 0x0200A290u;
    *(u16 *)(p + 0x20) = 0u;
    p[0x16] = 0u;
}
