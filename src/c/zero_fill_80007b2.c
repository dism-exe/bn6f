#include "types.h"

extern u32 dword_200A490;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_80007B2_c(void)
{
    ZeroFillByWord_c(&dword_200A490, 0x20C);
}
