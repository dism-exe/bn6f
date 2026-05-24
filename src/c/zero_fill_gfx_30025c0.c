#include "EWRAM.h"

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

void ZeroFillGFX30025c0_c(void)
{
    ZeroFillByEightWords_c(eToolkit->iBGTileIdBlocks_Ptr, 0x2000);
}
