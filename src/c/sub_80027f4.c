#include "EWRAM.h"

/* Like sub_80027D4/E4 but +0 byte = 16 (instead of 10 or 8). */
void sub_80027F4_c(void)
{
    u8 *p = (u8 *) 0x020098A8u;
    p[1] = 0;
    p[0] = 16;
    *(u16 *)(p + 2) = 0x02FFu;
}
