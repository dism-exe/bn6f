#include "types.h"

#define eToolkit_Unk2002230_Ptr (*(u32 **)0x020093FCu)  // toolkit + 0x4c

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_e2002230_c(void)
{
    ZeroFillByWord_c(eToolkit_Unk2002230_Ptr, 0xF00);
}
