#include "types.h"

#define eToolkit_RenderInfoPtr (*(u16 **)0x020093B8u)

// Clears RenderInfo halfwords at offsets 0xc, 0xe, 0x10, 0x12, 0x14,
// 0x16, 0x1a, 0x18 (ASM writes 0x1a before 0x18 — preserved here).
void renderInfo_8001788_c(void)
{
    u16 *ri = eToolkit_RenderInfoPtr;
    ri[6]  = 0;  // 0x0c
    ri[7]  = 0;  // 0x0e
    ri[8]  = 0;  // 0x10
    ri[9]  = 0;  // 0x12
    ri[10] = 0;  // 0x14
    ri[11] = 0;  // 0x16
    ri[13] = 0;  // 0x1a (out-of-order vs 0x18 below)
    ri[12] = 0;  // 0x18
}
