#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_800BF66_c(void)
{
    ZeroFillByWord_c((u32 *) 0x0203CF00u, 0xA0u);
}
