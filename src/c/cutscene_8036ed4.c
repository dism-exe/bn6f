#include "types.h"

#define eToolkit_CutsceneStatePtr (*(u32 **)0x020093C0u)
#define eToolkit_S2001c04_Ptr     (*(u8  **)0x020093F0u)

extern u8 DummyCutsceneScript[];
extern void ClearEventFlag_c(u32 flag);

// Resets all four cutscene-script-pos slots (writing the magic 0x1 to
// slot 0 and the DummyCutsceneScript pointer to slots 1..3), clears
// the after-skip pointer and two S2001c04 halfwords, then clears
// EVENT_1731 (= 0x1731).
void cutscene_8036ED4_c(void)
{
    u32 *cs = eToolkit_CutsceneStatePtr;
    u8  *s;

    cs[0x1C / 4] = 0x1u;
    cs[0x20 / 4] = (u32)DummyCutsceneScript;
    cs[0x24 / 4] = (u32)DummyCutsceneScript;
    cs[0x28 / 4] = (u32)DummyCutsceneScript;
    cs[0x38 / 4] = 0;

    s = eToolkit_S2001c04_Ptr;
    *(u16 *)(s + 0x12) = 0;
    *(u16 *)(s + 0x14) = 0;

    ClearEventFlag_c(0x1731u);
}
