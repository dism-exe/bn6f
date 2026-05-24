#include "types.h"

#define eToolkit_Unk2004348_Ptr (*(u32 **)0x02009420u)  // toolkit + 0x70

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

void zeroFill_e2004348_c(void)
{
    ZeroFillByEightWords_c(eToolkit_Unk2004348_Ptr, 0x480);
}
