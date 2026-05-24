#include "types.h"

extern u8 eGFXAnimStates[];
extern void Terminate_ePalette20097a0_Transform_c(u32 idx);

// eGFXAnimStates[idx] is a 0x18-byte GFXAnimState. Clear IsActive (offset
// 0) then forward to the palette-transform terminator.
void TerminateGFXAnim_c(u32 idx)
{
    eGFXAnimStates[idx * 0x18] = 0;
    Terminate_ePalette20097a0_Transform_c(idx);
}
