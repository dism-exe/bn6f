#include "types.h"

extern u8 eScreenFade[];
extern void sub_800634C_c(u32 region_byte_offset);
extern void Terminate_ePalette20097a0_Transform_c(u32 idx);

// Init a ScreenFade slot at `region_byte_offset`, then call the
// palette-transform terminator twice with palette indices
// slot.Unk_0C + 0x12 and + 0x13.
void sub_8006330_c(u32 region_byte_offset)
{
    u8 *sf = eScreenFade + region_byte_offset;
    sub_800634C_c(region_byte_offset);
    Terminate_ePalette20097a0_Transform_c((u32)sf[0x0C] + 0x12u);
    Terminate_ePalette20097a0_Transform_c((u32)sf[0x0C] + 0x13u);
}
