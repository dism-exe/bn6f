#include "types.h"

extern u8 dword_86C0D20[];
extern u8 byte_86C1F80[];
extern u8 byte_86C1F20[];
extern u8 byte_30016D0[];
extern void QueueEightWordAlignedGFXTransfer_c(u32 src, u32 dst, u32 size, u32 type);
extern void gfxTransfer_8033DA0_c(u32 src_offset);

// r10 = ambient Toolkit*. Routes the GFX transfer based on whether
// the player is in the real world or internet:
//   - real world (group < 0x80): queue 0x100 bytes of dword_86C0D20
//     to VRAM 0x6017200, then run gfxTransfer_8033DA0(0).
//   - internet (group >= 0x80): queue 0x340 bytes of byte_86C1F80 to
//     VRAM 0x6017200, then 0x20 bytes of byte_86C1F20 to byte_30016D0.
void gfxTransfer_8033978_c(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    if (gs[4] < 0x80) {
        QueueEightWordAlignedGFXTransfer_c((u32)dword_86C0D20, 0x6017200u, 0x100u, 4u);
        gfxTransfer_8033DA0_c(0u);
    } else {
        QueueEightWordAlignedGFXTransfer_c((u32)byte_86C1F80, 0x6017200u, 0x340u, 4u);
        QueueEightWordAlignedGFXTransfer_c((u32)byte_86C1F20, (u32)byte_30016D0, 0x20u, 4u);
    }
}
