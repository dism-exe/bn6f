#include "types.h"

extern u8 byte_2001400[];
extern u32 unk_2000FC0;
extern u32 unk_2000FF0;

extern void ByteFill_c(u8 *dst, u32 byte_count, u8 byte);
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void reqBBS_813E616_c(void)
{
    ByteFill_c(byte_2001400, 0x200, 0x40);
    ZeroFillByWord_c(&unk_2000FC0, 0x20);
    ZeroFillByWord_c(&unk_2000FF0, 0x20);
}
