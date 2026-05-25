#include "EWRAM.h"

/* Returns 1 iff *(u32 *)0x0203F4A0 == arg AND *(u32 *)0x0203F5A0 == arg. */
u32 sub_800B46C_c(u32 arg)
{
    if (*(u32 *) 0x0203F4A0u != arg) return 0u;
    if (*(u32 *) 0x0203F5A0u != arg) return 0u;
    return 1u;
}
