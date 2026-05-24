#include "types.h"

extern u8 unk_2000090[];
extern void ZeroFillByByte_c(u8 *dst, u32 byte_count);

void sub_813C324_c(void)
{
    ZeroFillByByte_c(unk_2000090, 8);
}
