#include "EWRAM.h"

extern u32 dword_20018B8;

// Mirror of encryption_zenny_8006f54 but for ProtectedBugfrags
// and Unk_70 (instead of Unk_6c). Unk_74 bit 1 (mask 2) gates the
// "store ~bugfrags" write.
void encryption_bugfrags_8006fac_c(void)
{
    GameState *gs = eToolkit->GameStatePtr;
    u32 bugfrags = gs->ProtectedBugfrags;
    u32 unk74 = gs->Unk_74;
    u32 key;
    if ((unk74 & 2u) == 0) {
        gs->Unk_70 = ~bugfrags;
    }
    key = dword_20018B8;
    *eToolkit->Unk2005030_Ptr = bugfrags ^ key;
}
