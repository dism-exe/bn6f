#include "types.h"

#define eToolkit_Unk2009740_Ptr (*(u32 **)0x020093D0u)

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_e2009740_c(void)
{
    ZeroFillByWord_c(eToolkit_Unk2009740_Ptr, 8);
}
