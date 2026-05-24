#include "types.h"

extern u32 eGFXAnimStates;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_e20094C0_c(void)
{
    ZeroFillByWord_c(&eGFXAnimStates, 0x1B0);
}
