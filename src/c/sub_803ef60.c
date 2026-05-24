#include "types.h"

extern u32 sub_803EF7C_c(void);
extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

// sub_803EF7C returns a pointer; this then ZeroFillByEightWords(that, 0x100).
void sub_803EF60_c(void)
{
    u32 *p = (u32 *)sub_803EF7C_c();
    ZeroFillByEightWords_c(p, 0x100);
}
