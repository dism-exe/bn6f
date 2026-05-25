#include "EWRAM.h"

/* If byte at 0x02036848 (= 0x02036840 + 8) is 2 or 4, write 0x2D
   to byte at 0x02036847. */
void sub_801E780_c(void)
{
    u8 *p = (u8 *) 0x02036840u;
    u8 v = p[8];
    if (v == 4 || v == 2) {
        p[7] = 0x2D;
    }
}
