#include "types.h"

extern u8 eScreenFade[];

// Init a per-region ScreenFade slot: write region_byte_offset >> 4 into
// slot.Unk_0C, zero Unk_03, Unk_00, Unk_02, Unk_0D.
// `region_byte_offset` is added to eScreenFade base to select the slot.
void sub_800634C_c(u32 region_byte_offset)
{
    u8 *sf = eScreenFade + region_byte_offset;
    sf[0x0C] = (u8)(region_byte_offset >> 4);
    sf[0x03] = 0;
    sf[0x00] = 0;
    sf[0x02] = 0;
    sf[0x0D] = 0;
}
