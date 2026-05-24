#include "types.h"

extern u8 word_2001800[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);
extern void HalfwordFill_c(u16 *dst, u32 byte_count, u32 halfword);

// Initialize a chip-data-style struct at word_2001800:
//   ZeroFillByWord(base, 0x48);
//   HalfwordFill(base+8, 0x20, 0xe5e5);
//   base[0x18] = 0xe6;
//   HalfwordFill(base+0x28, 0x20, 0xe5e5);
//   base[0x3c] = 0xe6;
void sub_8049CF8_c(void)
{
    u8 *base = word_2001800;
    ZeroFillByWord_c((u32 *)base, 0x48);

    HalfwordFill_c((u16 *)(base + 8), 0x20, 0xE5E5u);
    base[8 + 0x10] = 0xE6;

    HalfwordFill_c((u16 *)(base + 0x28), 0x20, 0xE5E5u);
    base[0x28 + 0x14] = 0xE6;
}
