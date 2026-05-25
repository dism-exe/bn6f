#include "EWRAM.h"

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

void sub_8021D08_c(void)
{
    ZeroFillByHalfword_c((u16 *) 0x0203A0A0u, 0x2E0u);
}
