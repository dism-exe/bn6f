#include "types.h"

extern u8 GetCurPETNavi_c(void);
extern u32 TestEventFlag_c(u32 flag);
extern u32 notZero_eByte200AD04_c(void);
extern void QueueEightWordAlignedGFXTransfer_c(u32 src, u32 dst, u32 size, u32 type);
extern u8 *off_8033DD4[];
extern u8 byte_30016D0[];

// Picks a GFX source from off_8033DD4[idx] (idx = GetCurPETNavi or
// 0xC if EVENT_163 is clear AND byte_200AD04[0] != 0), adds the
// passed offset, and queues an 8-word-aligned GFX transfer to
// byte_30016D0 (0x20 bytes, type 4).
void gfxTransfer_8033DA0_c(u32 src_offset)
{
    u32 idx;

    idx = (u32)GetCurPETNavi_c();
    if ((TestEventFlag_c(0x163) == 0u) && (notZero_eByte200AD04_c() != 0u)) {
        idx = 0xCu;
    }
    QueueEightWordAlignedGFXTransfer_c(
        (u32)off_8033DD4[idx] + src_offset,
        (u32)byte_30016D0,
        0x20u,
        4u);
}
