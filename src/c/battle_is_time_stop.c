#include "types.h"

extern u32 battle_getFlags_c(void);

// Returns battle_getFlags() & 4 (the timestop bit).
// All ASM callers branch on the Z flag after the bl (beq/bne) so the
// trampoline uses DECOMP_FLAG_WRAPPER to ensure Z reflects the
// return value on exit.
static u32 battle_isTimeStop_impl(void)
{
    return battle_getFlags_c() & 4u;
}

DECOMP_FLAG_WRAPPER(battle_isTimeStop_c, battle_isTimeStop_impl)
