#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void sub_80341AA_c(void)
{
    ZeroFillByWord_c((u32 *) 0x02011A40u, 12u);
}
