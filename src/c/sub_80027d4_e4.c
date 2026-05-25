#include "EWRAM.h"

/* Both write a small descriptor block to 0x020098A8: byte +0 (kind),
   byte +1 (flag=4 in both), hword +2 (0x02FF in both). The two
   differ only in the +0 byte: D4 writes 10, E4 writes 8. */

void sub_80027D4_c(void)
{
    u8 *p = (u8 *) 0x020098A8u;
    p[1] = 4u;
    p[0] = 10u;
    *(u16 *)(p + 2) = 0x02FFu;
}

void sub_80027E4_c(void)
{
    u8 *p = (u8 *) 0x020098A8u;
    p[1] = 4u;
    p[0] = 8u;
    *(u16 *)(p + 2) = 0x02FFu;
}
