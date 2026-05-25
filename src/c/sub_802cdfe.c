#include "EWRAM.h"

/* Reads u32 at 0x0203CFB0, shifts left 16 (drops high half), stores
   back; same for the u32 at 0x0203CFBC (=0x0203CFB0 + 12). */
void sub_802CDFE_c(void)
{
    u32 *p = (u32 *) 0x0203CFB0u;
    p[0] <<= 16;
    p[3] <<= 16;        /* +12 bytes = +3 u32s */
}
