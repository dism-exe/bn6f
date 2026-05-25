#include "EWRAM.h"

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

/* Both take dst (r0) from the caller; only count differs. */
void sub_811FE34_c(u32 *dst)
{
    ZeroFillByEightWords_c(dst, 0x3C0u);
}

void sub_811FF6C_c(u32 *dst)
{
    ZeroFillByEightWords_c(dst, 0xA000u);
}
