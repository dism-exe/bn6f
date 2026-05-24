#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_e200F3A0_c(void)
{
    ZeroFillByWord_c(eToolkit->Unk200f3a0_Ptr, 0xC);
}
