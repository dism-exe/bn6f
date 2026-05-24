#include "types.h"

extern u8 byte_20098A8[];

void sub_80027C4_c(void)
{
    byte_20098A8[1] = 0;
    byte_20098A8[0] = 0x0C;
    *(u16 *)(byte_20098A8 + 2) = 0x032Fu;
}
