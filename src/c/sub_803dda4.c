#include "EWRAM.h"

/* Constants writer for the block at 0x020099D0:
   +0=16, +1=12, +8=0, +12=hword 16. */
void sub_803DDA4_c(void)
{
    u8 *p = (u8 *) 0x020099D0u;
    p[0] = 16;
    p[1] = 12;
    *(u16 *)(p + 12) = 16u;
    p[8] = 0;
}
