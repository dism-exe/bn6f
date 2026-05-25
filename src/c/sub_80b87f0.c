#include "EWRAM.h"

/* If p[9] == 8 then p[9] = 4 and (u16)p[10] = 0. */
void sub_80B87F0_c(u8 *p)
{
    if (p[9] == 8) {
        p[9] = 4;
        *(u16 *)(p + 10) = 0u;
    }
}
