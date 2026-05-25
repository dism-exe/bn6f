#include "EWRAM.h"

/* GFX-anim table at 0x020094C0, stride 24; byte[+0] is the "active"
   flag.  Returns nonzero iff active. Callers branch on Z, so wrap
   with DECOMP_FLAG_WRAPPER. */
static u32 IsGFXAnimActive_impl(u32 idx)
{
    return ((u8 *) 0x020094C0u)[idx * 24u];
}

DECOMP_FLAG_WRAPPER(IsGFXAnimActive_c, IsGFXAnimActive_impl)
