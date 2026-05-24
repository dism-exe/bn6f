#include "types.h"

#define eToolkit_GameStatePtr   (*(u32 **)0x020093ECu)
#define eToolkit_Unk2005030_Ptr (*(u32 **)0x02009438u)  // toolkit + 0x88

extern u32 dword_20018B8;

// Mirror of encryption_zenny_8006f54 but for ProtectedBugfrags
// (offset 0x60) and Unk_70 (instead of Unk_6c). Unk_74 bit 1
// (mask 2) gates the "store ~bugfrags" write.
void encryption_bugfrags_8006fac_c(void)
{
    u32 *gs = eToolkit_GameStatePtr;
    u32 bugfrags = gs[0x60 / 4];
    u32 unk74 = gs[0x74 / 4];
    u32 key;
    if ((unk74 & 2u) == 0) {
        gs[0x70 / 4] = ~bugfrags;
    }
    key = dword_20018B8;
    *eToolkit_Unk2005030_Ptr = bugfrags ^ key;
}
