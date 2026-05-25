#include "EWRAM.h"

/* Returns 1 if arg is none of {0xD3, 0xDA, 0xE9, 0xEA}, else 0. */
u32 sub_800F486_c(u32 arg)
{
    switch (arg) {
        case 0xD3: case 0xDA: case 0xE9: case 0xEA:
            return 0u;
        default:
            return 1u;
    }
}
