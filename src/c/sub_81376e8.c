#include "types.h"

#define eToolkit_Unk2002230_Ptr (*(u8 **)0x020093FCu)  // toolkit + 0x4c

// Clears 4 halfwords per 0xC-byte entry, 0x140 times. The first
// entry's offsets are 4, 6, 8, 0xa.
void sub_81376E8_c(void)
{
    u8 *p = eToolkit_Unk2002230_Ptr;
    s32 n = 0x140;
    do {
        *(u16 *)(p + 4) = 0;
        *(u16 *)(p + 6) = 0;
        *(u16 *)(p + 8) = 0;
        *(u16 *)(p + 0xA) = 0;
        p += 0xC;
        n--;
    } while (n > 0);
}
