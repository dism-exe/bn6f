#include "EWRAM.h"

/* Returns Z flag based on byte at 0x02008450 + idx*88. Callers
   branch on Z, so wrap with DECOMP_FLAG_WRAPPER. */
static u32 getStructFrom2008450_impl(u32 idx)
{
    return ((u8 *) 0x02008450u)[idx * 88u];
}
DECOMP_FLAG_WRAPPER(getStructFrom2008450_c, getStructFrom2008450_impl)
