#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_e2009740_c(void)
{
    ZeroFillByWord_c(eToolkit->Unk2009740_Ptr, 8);
}
