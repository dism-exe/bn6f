#include "EWRAM.h"

/* Z=1 iff `*(u8 *)0x02009A30 == 32`.  Callers branch on Z (beq),
   so wrap with DECOMP_FLAG_WRAPPER; impl returns 0 in the
   match case so tst sets Z. */
static u32 sub_81355D8_impl(void)
{
    return (*(u8 *) 0x02009A30u == 32u) ? 0u : 1u;
}

DECOMP_FLAG_WRAPPER(sub_81355D8_c, sub_81355D8_impl)
