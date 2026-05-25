#include "EWRAM.h"

/* Writes hword `val` at 0x02009940 + r1*2 + r2*8. */
void sub_803F618_c(u32 val, u32 r1, u32 r2)
{
    *(u16 *)(0x02009940u + r1 * 2u + r2 * 8u) = (u16)val;
}
