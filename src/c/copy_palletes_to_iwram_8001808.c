#include "types.h"

extern u32 iPalette3001B60[];
extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count);

// Despite the name, the destination is BG palette RAM at 0x05000000,
// not IWRAM. ASM does `mov r2,#0x20; lsl r2,r2,#4` = 0x200 bytes.
void copyPalletesToIWRAM_8001808_c(void)
{
    CopyByEightWords_c(iPalette3001B60, (u32 *)0x05000000u, 0x200);
}
