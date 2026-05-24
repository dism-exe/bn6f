#include "types.h"

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);
extern void ZeroFillGFX30025c0_c(void);
extern void copyMemory_8001850_c(void);

void sub_80015B4_c(void)
{
    ZeroFillByEightWords_c((u32 *)0x0600E000u, 0x2000);
    ZeroFillGFX30025c0_c();
    copyMemory_8001850_c();
}
