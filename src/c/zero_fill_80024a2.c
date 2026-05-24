#include "types.h"

extern u32 eStruct200a6a0;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_80024A2_c(void)
{
    ZeroFillByWord_c(&eStruct200a6a0, 0x50);
}
