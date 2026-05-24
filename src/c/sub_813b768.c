#include "EWRAM.h"

extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);

void sub_813B768_c(void)
{
    eToolkit->Unk2004334_Ptr[0] = 0;
    ZeroFillByByte_c(eToolkit->Unk200431c_Ptr, 0x10);
}
