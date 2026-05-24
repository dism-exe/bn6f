#include "EWRAM.h"

// Clears RenderInfo.Unk_02.
void renderInfo_80017A0_c(void)
{
    eToolkit->RenderInfoPtr->Unk_02 = 0;
}
