#include "types.h"

#define eToolkit_iBGTileIdBlocks_Ptr (*(u32 **)0x020093D8u)

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

void ZeroFillGFX30025c0_c(void)
{
    ZeroFillByEightWords_c(eToolkit_iBGTileIdBlocks_Ptr, 0x2000);
}
