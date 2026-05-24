#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_813B934_c(void)
{
    ZeroFillByWord_c(eToolkit->Unk2004190_Ptr, 0x188);
    ZeroFillByWord_c(eToolkit->Unk200414c_Ptr, 0x40);
}
