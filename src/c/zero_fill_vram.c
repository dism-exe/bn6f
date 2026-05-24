#include "types.h"

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

// Four-region VRAM clear: 0x40 bytes each at the four BG/sprite tile
// banks plus a 0x20-byte hole at the OBJ tile base. ASM does each
// chunk as a separate ZeroFillByEightWords call.
void zeroFillVRAM_c(void)
{
    ZeroFillByEightWords_c((u32 *)0x06000000u, 0x40);
    ZeroFillByEightWords_c((u32 *)0x06004000u, 0x40);
    ZeroFillByEightWords_c((u32 *)0x06008000u, 0x40);
    ZeroFillByEightWords_c((u32 *)0x0600C000u, 0x20);
}
