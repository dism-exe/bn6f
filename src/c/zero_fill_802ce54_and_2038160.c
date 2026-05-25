#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_802CE54_c(void)
{
    ZeroFillByWord_c((u32 *) 0x02036720u, 32u);
}

void eStruct2038160_clearStruct_c(void)
{
    ZeroFillByWord_c((u32 *) 0x02038160u, 4u);
}
