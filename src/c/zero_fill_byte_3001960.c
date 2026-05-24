#include "types.h"

extern u16 palette_3001960;
extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

void ZeroFill_byte_3001960_c(void)
{
    ZeroFillByHalfword_c(&palette_3001960, 2);
}
