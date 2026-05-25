#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void sub_803EBAC_c(void)
{
    ZeroFillByWord_c((u32 *) 0x0200BC30u, 0x20u);
}
