#include "types.h"

#define eToolkit_RenderInfoPtr (*(u16 **)0x020093B8u)

// Writes a single halfword at RenderInfo.Unk_00 (offset 0).
void SetRenderInfoLCDControl_c(u16 a_00)
{
    eToolkit_RenderInfoPtr[0] = a_00;
}
