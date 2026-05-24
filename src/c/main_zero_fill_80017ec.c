#include "types.h"

extern u16 palette_3001960;
extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

void main_zeroFill_80017EC_c(void)
{
    ZeroFillByHalfword_c(&palette_3001960, 2);
    ZeroFillByHalfword_c((u16 *)0x05000000u, 2);
}
