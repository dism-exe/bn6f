#include "types.h"

extern u8 eStartScreenAnimationControl200B1A0[];
extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);

// Zero 8 bytes then set byte 3 to 0xB4.
void init_eStartScreenAnimationControl200B1A0_1_c(void)
{
    ZeroFillByByte_c(eStartScreenAnimationControl200B1A0, 8);
    eStartScreenAnimationControl200B1A0[3] = 0xB4;
}
