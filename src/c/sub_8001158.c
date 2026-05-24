#include "types.h"

extern void sub_802FE28_c(u32 a, u32 b, u32 c, u32 d);

// Walk an array of (u32, u32) pairs terminated by an entry whose first
// u32 is zero. Call sub_802FE28(entry[0], entry[1], 0, 0) for each.
void sub_8001158_c(u32 *table)
{
    while (*table != 0u) {
        sub_802FE28_c(table[0], table[1], 0u, 0u);
        table += 2;
    }
}
