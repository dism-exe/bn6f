#include "EWRAM.h"

/* Returns Z flag based on byte at 0x02018600 + idx*88. Callers
   branch on Z, so wrap with DECOMP_FLAG_WRAPPER. */
static u32 sub_804691A_impl(u32 idx)
{
    return ((u8 *) 0x02018600u)[idx * 88u];
}
DECOMP_FLAG_WRAPPER(sub_804691A_c, sub_804691A_impl)
