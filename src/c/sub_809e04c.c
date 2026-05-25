#include "EWRAM.h"

/* Zeros bytes +13/+14/+15 on the block at 0x02009F40.  The ASM
   push/pop of r0/r1 preserves the caller's r0/r1 unchanged. */
void sub_809E04C_c(void)
{
    u8 *p = (u8 *) 0x02009F40u;
    p[13] = 0;
    p[14] = 0;
    p[15] = 0;
}
