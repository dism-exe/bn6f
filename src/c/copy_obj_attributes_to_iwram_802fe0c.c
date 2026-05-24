#include "types.h"

extern u32 iObjectAttr3001D70[];
extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count);

// Pushes the IWRAM OAM cache (iObjectAttr3001D70) to OAM at 0x07000000.
// 0x400 bytes (full OAM, 128 entries × 8 bytes).
void copyObjAttributesToIWRAM_802FE0C_c(void)
{
    CopyByEightWords_c(iObjectAttr3001D70, (u32 *)0x07000000u, 0x400);
}
