#include "EWRAM.h"

/* Find the lowest-index clear bit (scanning MSB-down) in the u32
   at 0x02009A2C, set it, and return its position (0..15).  Returns
   0xFF if all 16 high bits are set. */
u32 sub_802FE48_c(void)
{
    u32 *slot = (u32 *) 0x02009A2Cu;
    u32 word = *slot;
    u32 mask = 0x80000000u;
    u32 idx  = 0u;

    while (word & mask) {
        mask >>= 1;
        idx++;
        if (idx >= 16u) return 0xFFu;
    }
    *slot = word | mask;
    return idx;
}
