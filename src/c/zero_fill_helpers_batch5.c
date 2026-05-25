#include "EWRAM.h"

extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void sub_803EBB8_c(void)
{
    ZeroFillByByte_c((u8 *) 0x0200BC32u, 32u);
}

void sub_8080D90_c(void)
{
    ZeroFillByByte_c((u8 *) 0x02009690u, 8u);
}

void sub_813DA84_c(void)
{
    ZeroFillByWord_c((u32 *) 0x02010290u, 16u);
}
