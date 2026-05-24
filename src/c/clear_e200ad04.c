#include "types.h"

extern u8 word_200AD04;
extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);

void clear_e200AD04_c(void)
{
    ZeroFillByByte_c(&word_200AD04, 4);
}
