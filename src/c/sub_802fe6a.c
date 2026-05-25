#include "EWRAM.h"

/* Clears bit (0x80000000 >> idx) in *(u32 *)0x02009A2C. */
void sub_802FE6A_c(u32 idx)
{
    *(u32 *) 0x02009A2Cu &= ~(0x80000000u >> idx);
}
