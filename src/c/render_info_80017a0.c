#include "types.h"

#define eToolkit_RenderInfoPtr (*(u16 **)0x020093B8u)

// Clears RenderInfo.Unk_02 (offset 2).
void renderInfo_80017A0_c(void)
{
    eToolkit_RenderInfoPtr[1] = 0;  // index 1 = byte offset 2
}
