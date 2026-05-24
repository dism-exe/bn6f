#include "types.h"

extern u8 ePalette20097a0[];

// Palette20097a0 entries are 12 bytes (oPalette20097a0_Size). Clear
// the Unk_00 byte of entry `idx`.
void Terminate_ePalette20097a0_Transform_c(u32 idx)
{
    ePalette20097a0[idx * 12] = 0;
}
