#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_e2002230_c(void)
{
    ZeroFillByWord_c(eToolkit->Unk2002230_Ptr, 0xF00);
}
