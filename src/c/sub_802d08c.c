#include "EWRAM.h"

extern u32 sub_802D064_c(u32 idx);

/* On the 32-byte slot the index points at: byte +16 = 0;
   bytes +13 and +15 = 100. */
void sub_802D08C_c(u32 idx)
{
    u8 *p = (u8 *) sub_802D064_c(idx);
    p[16] = 0;
    p[13] = 100;
    p[15] = 100;
}
