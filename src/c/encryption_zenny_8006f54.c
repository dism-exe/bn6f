#include "types.h"

// Toolkit offsets: GameStatePtr=0x3c, Unk2005028_Ptr=0x84
#define eToolkit_GameStatePtr      (*(u32 **)0x020093ECu)
#define eToolkit_Unk2005028_Ptr    (*(u32 **)0x02009434u)

extern u32 dword_2000060;

// Encrypts the ProtectedZenny field via XOR with dword_2000060 and
// writes the result to *Unk2005028_Ptr. Conditionally also stores
// the bitwise-NOT of zenny to GameState.Unk_6c (skipped when
// Unk_74 bit 0 is set).
//
// GameState offsets: ProtectedZenny=0x5c, Unk_6c=0x6c, Unk_74=0x74.
void encryption_zenny_8006f54_c(void)
{
    u32 *gs = eToolkit_GameStatePtr;
    u32 zenny = gs[0x5C / 4];
    u32 unk74 = gs[0x74 / 4];
    u32 key;
    if ((unk74 & 1u) == 0) {
        gs[0x6C / 4] = ~zenny;
    }
    key = dword_2000060;
    *eToolkit_Unk2005028_Ptr = zenny ^ key;
}
