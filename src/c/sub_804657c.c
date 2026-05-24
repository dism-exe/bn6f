#include "types.h"

extern u8 eStructArr2008450[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// Mirror of sub_80467D8 but on eStructArr2008450 (0x528 bytes, 15
// entries of 0x58 each).
void sub_804657C_c(void)
{
    u32 i;
    ZeroFillByWord_c((u32 *)eStructArr2008450, 0x528);
    for (i = 0; i < 15; i++) {
        eStructArr2008450[i * 0x58 + 2] = 0x20;
        eStructArr2008450[i * 0x58 + 3] = (u8)i;
    }
}
