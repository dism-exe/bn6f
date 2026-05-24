#include "EWRAM.h"

extern void CopyWords_c(const u32 *src, u32 *dst, u32 byte_count);
extern void CopyHalfwords_c(const u16 *src, u16 *dst, u32 byte_count);

// Per-frame: pushes RenderInfo / window / blend state to LCD I/O.
//   RenderInfo+2  -> 0x0400004C (MOSAIC)
//   RenderInfo+4  -> 0x04000008 (BG0CNT..0x4000044), 0x38 bytes
//   Unk200f3a0    -> 0x04000040 (WIN0H..), 0xC bytes
//   Unk2009740[0] -> 0x04000050 (BLDCNT + BLDALPHA, 32-bit write)
//   Unk2009740[1] -> 0x04000054 (BLDALPHA, overwriting hi half above)
//   RenderInfo+0  -> 0x04000000 (DISPCNT)
void render_800172C_c(void)
{
    RenderInfo *ri = eToolkit->RenderInfoPtr;
    u32 *u9740;

    *(u16 *)0x0400004Cu = ri->Unk_02;
    CopyWords_c((u32 *)((u8 *)ri + 4), (u32 *)0x04000008u, 0x38);
    CopyHalfwords_c((u16 *)eToolkit->Unk200f3a0_Ptr, (u16 *)0x04000040u, 0xC);

    u9740 = eToolkit->Unk2009740_Ptr;
    *(u32 *)0x04000050u = u9740[0];
    *(u16 *)0x04000054u = *(u16 *)((u8 *)u9740 + 4);

    *(u16 *)0x04000000u = ri->Unk_00;
}
