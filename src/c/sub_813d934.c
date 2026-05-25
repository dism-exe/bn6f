#include "EWRAM.h"

/* Writes arg byte to eS200BC50+0.  If the *old* byte differs from arg,
   also zero bytes at +2/+3/+4 and hword at +10. */
void sub_813D934_c(u32 arg)
{
    u8 *p = (u8 *) 0x0200BC50u;
    u8 old = p[0];
    p[0] = (u8)arg;
    if ((u8)arg != old) {
        p[2] = 0;
        p[3] = 0;
        p[4] = 0;
        *(u16 *)(p + 10) = 0u;
    }
}
