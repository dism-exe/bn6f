#include "types.h"

#define eToolkit_Unk2004c20_Ptr (*(u8 **)0x0200942Cu)  // toolkit + 0x7c

extern u8 byte_20008A0[];

// XORs a single byte of byte_20008A0 with 0x81 and writes it into the
// per-game Unk2004c20 buffer at the same offset.
void encryption_applyPack_8006e70_c(u32 offset)
{
    eToolkit_Unk2004c20_Ptr[offset] = byte_20008A0[offset] ^ 0x81u;
}
