#include "types.h"

extern u16 word_200DCF0;
extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

void sub_8121144_c(void)
{
    ZeroFillByHalfword_c(&word_200DCF0, 0x18);
}
