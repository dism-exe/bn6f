#include "EWRAM.h"

/* Returns 1 if (1 <= x <= 6) and (1 <= y <= 3), else 0. Callers
   sometimes `beq` directly on Z so wrap with DECOMP_FLAG_WRAPPER. */
static u32 object_isValidPanel_impl(u32 x, u32 y)
{
    return (x - 1u < 6u && y - 1u < 3u) ? 1u : 0u;
}

DECOMP_FLAG_WRAPPER(object_isValidPanel_c, object_isValidPanel_impl)
