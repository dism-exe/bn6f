#include "types.h"

extern u32 dword_2009A2C;
extern u32 word_200A6F0;
extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

void cleareMemory_802FF2C_c(void)
{
    dword_2009A2C = 0;
    ZeroFillByEightWords_c(&word_200A6F0, 0x180);
}
