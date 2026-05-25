#include "EWRAM.h"

/* Decrements u16 at p+36 by one if it's currently > 0. */
void sub_8116878_c(u8 *p)
{
    u16 *q = (u16 *)(p + 36);
    if ((s16)*q > 0) {
        *q = (u16)(*q - 1u);
    }
}
