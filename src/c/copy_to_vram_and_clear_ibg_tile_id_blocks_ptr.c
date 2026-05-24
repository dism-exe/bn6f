#include "EWRAM.h"

extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count);
extern void FillByEightWords_c(u32 *dst, u32 byte_count, u32 word);

// Pushes the BG tile-ID cache to VRAM at 0x0600E000 (8 KB), then
// fills the same 0x800 bytes of the cache with 0x02FF02FF (the
// "clear" pattern — two copies of a "blank tile" tile-id).
void copyToVRAMAndClear_iBGTileIdBlocks_Ptr_c(void)
{
    u32 *blocks = eToolkit->iBGTileIdBlocks_Ptr;
    CopyByEightWords_c(blocks, (u32 *)0x0600E000u, 0x2000);
    FillByEightWords_c(blocks, 0x800, 0x02FF02FFu);
}
