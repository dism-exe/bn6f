#include "EWRAM.h"

extern u32 sub_802D064_c(u32 idx);
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

/* Reset a 32-byte slot: ZeroFillByWord, then bytes +13/+15 = 100,
   +16 = 0.  Same post-conditions as sub_802D08C but starts with a
   clean wipe of the whole slot. */
void sub_802D070_c(u32 idx)
{
    u8 *p = (u8 *) sub_802D064_c(idx);
    ZeroFillByWord_c((u32 *)p, 32u);
    p[16] = 0;
    p[13] = 100;
    p[15] = 100;
}
