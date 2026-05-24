#include "types.h"

extern u8 byte_200DCA0[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);
extern void HalfwordFill_c(u16 *dst, u32 byte_count, u16 value);
extern void ByteFill_c(u8 *dst, u32 count, u8 byte);

// Initialise the 0x50-byte sprite state at byte_200DCA0:
//   - zero the whole block
//   - store the caller-supplied frame ptr at offset 0x4C
//   - fill 0x18 bytes of halfwords at +4 with 0x7FFF
//   - fill 0x30 bytes at +0x1C with 0xFF
void initUncompSpriteState_80028d4_c(u32 frame_ptr)
{
    ZeroFillByWord_c((u32 *)byte_200DCA0, 0x50);
    *(u32 *)(byte_200DCA0 + 0x4C) = frame_ptr;
    HalfwordFill_c((u16 *)(byte_200DCA0 + 4), 0x18, 0x7FFF);
    ByteFill_c(byte_200DCA0 + 0x1C, 0x30, 0xFF);
}
