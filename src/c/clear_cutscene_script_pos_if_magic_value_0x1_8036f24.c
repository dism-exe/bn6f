#include "types.h"

// Toolkit.CutsceneStatePtr at offset 0x10 -> 0x020093C0.
// CutsceneState.CutsceneScriptPos at 0x1c, originalCutsceneScriptPos_40 at 0x40.
#define eToolkit_CutsceneStatePtr (*(u32 **)0x020093C0u)

void clearCutsceneScriptPosIfMagicValue0x1_8036F24_c(void)
{
    u32 *cs = eToolkit_CutsceneStatePtr;
    if (cs[0x1C / 4] == 0x1u) {
        cs[0x1C / 4] = 0;
        cs[0x40 / 4] = 0;
    }
}
