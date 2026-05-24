#include "EWRAM.h"

extern u8 eLogoScreenState[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// Entered at loc_803D1AE via fall-through from either:
//   logoScreen_init_803D1A8: mov r0, #1; b loc_803D1AE
//   call_803D1AC:            mov r0, #0
// r0 selects whether the boot/intro variant flag is set.
void logoScreen_init_803D1A8_c(u32 v)
{
    ZeroFillByWord_c((u32 *)eLogoScreenState, 8);
    eLogoScreenState[5] = (u8)v;
    eToolkit->MainJumptableIndexPtr[0] = 0x10;
}
