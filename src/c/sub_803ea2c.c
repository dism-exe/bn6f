#include "EWRAM.h"

/* Returns 1 if `*(u8 *)0x020099D0 == 12`, else 0. */
u32 sub_803EA2C_c(void)
{
    return (*(u8 *) 0x020099D0u == 12u) ? 1u : 0u;
}
