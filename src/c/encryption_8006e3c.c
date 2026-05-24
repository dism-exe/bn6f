#include "EWRAM.h"

extern u8 byte_20004E0[];

// Same shape as encryption_applyPack_8006e70 but XORs with 0x6F and
// writes to Unk2004a8c (toolkit offset 0x78) instead of Unk2004c20.
void encryption_8006e3c_c(u32 offset)
{
    eToolkit->Unk2004a8c_Ptr[offset] = byte_20004E0[offset] ^ 0x6Fu;
}
