#include "types.h"

extern u32 iPallete3001750[];
extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count);

// Mirror of copyPalletesToIWRAM_8001808 for OBJ palette RAM at
// 0x05000200. 0x200 bytes.
void copyPalletesToIWRAM_8002650_c(void)
{
    CopyByEightWords_c(iPallete3001750, (u32 *)0x05000200u, 0x200);
}
