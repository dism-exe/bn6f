#include "types.h"

extern u8 byte_2011860[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// Zero 0x1b8 bytes, then for i in 0..5: at offset i*0x58, write
// byte[2]=0x20, byte[3]=i.
void sub_80467D8_c(void)
{
    u32 i;
    ZeroFillByWord_c((u32 *)byte_2011860, 0x1B8);
    for (i = 0; i < 5; i++) {
        byte_2011860[i * 0x58 + 2] = 0x20;
        byte_2011860[i * 0x58 + 3] = (u8)i;
    }
}
