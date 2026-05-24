#include "types.h"

#define eToolkit_Unk2004190_Ptr (*(u32 **)0x0200940Cu)  // toolkit + 0x5c
#define eToolkit_Unk200414c_Ptr (*(u32 **)0x02009408u)  // toolkit + 0x58

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_813B934_c(void)
{
    ZeroFillByWord_c(eToolkit_Unk2004190_Ptr, 0x188);
    ZeroFillByWord_c(eToolkit_Unk200414c_Ptr, 0x40);
}
