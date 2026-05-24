#include "types.h"

extern u8 byte_2006530[];
extern u32 dword_2001140;
extern void ByteFill_c(u8 *dst, u32 byte_count, u8 byte);

void sub_802F2C8_c(void)
{
    ByteFill_c(byte_2006530, 0x80, 0x80);
    dword_2001140 = 0;
}
