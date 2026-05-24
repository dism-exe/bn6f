#include "EWRAM.h"

// CutsceneState fields at byte offsets 0x1C (CutsceneScriptPos) and
// 0x40 (originalCutsceneScriptPos_40). Use byte arithmetic since the
// generated CutsceneState.h's field names differ.
void clearCutsceneScriptPosIfMagicValue0x1_8036F24_c(void)
{
    u8 *cs = (u8 *)eToolkit->CutsceneStatePtr;
    if (*(u32 *)(cs + 0x1C) == 0x1u) {
        *(u32 *)(cs + 0x1C) = 0;
        *(u32 *)(cs + 0x40) = 0;
    }
}
