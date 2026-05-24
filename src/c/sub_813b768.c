#include "types.h"

#define eToolkit_Unk2004334_Ptr (*(u16 **)0x02009418u)  // toolkit + 0x68
#define eToolkit_Unk200431c_Ptr (*(u8 **)0x02009410u)   // toolkit + 0x60

extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);

void sub_813B768_c(void)
{
    eToolkit_Unk2004334_Ptr[0] = 0;
    ZeroFillByByte_c(eToolkit_Unk200431c_Ptr, 0x10);
}
