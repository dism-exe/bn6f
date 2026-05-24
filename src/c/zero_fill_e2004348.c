#include "EWRAM.h"

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

void zeroFill_e2004348_c(void)
{
    ZeroFillByEightWords_c(eToolkit->Unk2004348_Ptr, 0x480);
}
