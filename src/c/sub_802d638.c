#include "types.h"

extern u32 byte_2000070;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void sub_802D638_c(void)
{
    ZeroFillByWord_c(&byte_2000070, 0x20);
}
