#include "EWRAM.h"

// RenderInfo.Unk_00 is the LCDControl (DISPCNT) shadow, halfword at +0.
void SetRenderInfoLCDControl_c(u16 a_00)
{
    eToolkit->RenderInfoPtr->Unk_00 = a_00;
}
