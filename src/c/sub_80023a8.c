#include "types.h"

extern u32 ePalette20097a0;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void sub_80023A8_c(void)
{
    ZeroFillByWord_c(&ePalette20097a0, 0xD8);
}
