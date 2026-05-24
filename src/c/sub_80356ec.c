#include "types.h"

extern u32 dword_2000DC0;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void sub_80356EC_c(void)
{
    ZeroFillByWord_c(&dword_2000DC0, 0x100);
}
