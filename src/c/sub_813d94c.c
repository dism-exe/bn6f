#include "EWRAM.h"

/* Returns 1 if eS200BC50 +0 byte != arg, else 0. */
u32 sub_813D94C_c(u32 arg)
{
    return (*(u8 *) 0x0200BC50u == (u8)arg) ? 0u : 1u;
}
