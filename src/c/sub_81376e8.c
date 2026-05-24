#include "EWRAM.h"

// Clears 4 halfwords per 0xC-byte entry, 0x140 times. Each entry has
// halfwords at byte offsets 4, 6, 8, 0xA from its base. We work
// through a byte pointer since the entry size (0xC) is not a u32
// stride.
void sub_81376E8_c(void)
{
    u8 *p = (u8 *)eToolkit->Unk2002230_Ptr;
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
