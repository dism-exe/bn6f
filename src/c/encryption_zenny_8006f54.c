#include "EWRAM.h"

extern u32 dword_2000060;

// Encrypts the ProtectedZenny field via XOR with dword_2000060 and
// writes the result to *Unk2005028_Ptr. Conditionally also stores
// the bitwise-NOT of zenny to GameState.Unk_6c (skipped when
// Unk_74 bit 0 is set).
void encryption_zenny_8006f54_c(void)
{
    GameState *gs = eToolkit->GameStatePtr;
    u32 zenny = gs->ProtectedZenny;
    u32 unk74 = gs->Unk_74;
    u32 key;
    if ((unk74 & 1u) == 0) {
        gs->Unk_6c = ~zenny;
    }
    key = dword_2000060;
    *eToolkit->Unk2005028_Ptr = zenny ^ key;
}
