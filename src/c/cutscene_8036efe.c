#include "types.h"

extern u32 DummyCutsceneScript[];
extern void ClearEventFlag_c(u32 flag);

// r10 = ambient Toolkit*. Resets all four cutscene script-position
// slots to DummyCutsceneScript (with slot1 = MAGIC_VALUE_0x1), zeroes
// AfterCutsceneSkip, then clears event flag 0x1731.
// Toolkit.CutsceneStatePtr = 0x10.
void cutscene_8036EFE_c(void)
{
    register u8 *r10p asm("r10");
    u8 *cs;
    u32 dummy;
    asm volatile("" : "=r"(r10p));

    cs = *(u8 **)(r10p + 0x10);
    dummy = (u32)DummyCutsceneScript;
    *(u32 *)(cs + 0x1C) = 1;       // CutsceneScriptPos = MAGIC_VALUE_0x1
    *(u32 *)(cs + 0x20) = dummy;   // CutsceneScriptPos2
    *(u32 *)(cs + 0x24) = dummy;   // CutsceneScriptPos3
    *(u32 *)(cs + 0x28) = dummy;   // CutsceneScriptPos4
    *(u32 *)(cs + 0x38) = 0;       // CutsceneScriptAfterCutsceneSkip
    ClearEventFlag_c(0x1731);
}
