#include "types.h"

extern u32 TestEventFlag_c(u32 flag);
extern u32 IsCutsceneScriptNonNull_c(void);

// Returns 1 iff EVENT_IN_SLIPRUN_STATE (0x173D) is clear AND the
// CutsceneScriptPos is NULL. Flag-wrapped so callers' Z reflects
// (return == 0).
u32 IsNotSlipRunningAndNotInCutscene_impl(void)
{
    if (TestEventFlag_c(0x173Du) != 0u) {
        return 0u;
    }
    if (IsCutsceneScriptNonNull_c() != 0u) {
        return 0u;
    }
    return 1u;
}

DECOMP_FLAG_WRAPPER(IsNotSlipRunningAndNotInCutscene_c, IsNotSlipRunningAndNotInCutscene_impl)
