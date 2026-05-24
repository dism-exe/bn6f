#include "EWRAM.h"

// Clears RenderInfo halfwords at offsets 0xc, 0xe, 0x10, 0x12, 0x14,
// 0x16, 0x1a, 0x18 (ASM writes 0x1a before 0x18 — preserved here).
void renderInfo_8001788_c(void)
{
    RenderInfo *ri = eToolkit->RenderInfoPtr;
    ri->Unk_0c = 0;
    ri->Unk_0e = 0;
    ri->Unk_10 = 0;
    ri->Unk_12 = 0;
    ri->Unk_14 = 0;
    ri->Unk_16 = 0;
    ri->Unk_1a = 0;
    ri->Unk_18 = 0;
}
