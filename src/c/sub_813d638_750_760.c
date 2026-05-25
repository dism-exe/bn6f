#include "EWRAM.h"

/* sub_813D638 — predicate test on byte at 0x02009470.
   Caller branches on Z so wrap with DECOMP_FLAG_WRAPPER. */
static u32 sub_813D638_impl(void)
{
    return *(u8 *) 0x02009470u;
}
DECOMP_FLAG_WRAPPER(sub_813D638_c, sub_813D638_impl)

/* sub_813D750 — write hword 11 at eS200BC50+8. */
void sub_813D750_c(void)
{
    *(u16 *) 0x0200BC58u = 11u;
}

/* sub_813D760 — write byte 0 at eS200BC50+5. */
void sub_813D760_c(void)
{
    *(u8 *) 0x0200BC55u = 0u;
}
