#include "types.h"

// All neighbours here are FLAG_WRAPPER'd in their own .c files; the
// wrappers preserve r0 (cmp/tst doesn't clobber it), so declaring them
// as `u32` lets us read the return value directly. We don't go through
// the *_impl version because some of them are static.
extern u32 IsScreenFadeActive_c(void);
extern u32 TestEventFlag_c(u32 flag);
extern u32 sub_809E462_c(void);
extern u32 chatbox_mask_eFlags2009F38_c(u32 mask);
extern u32 IsCutsceneScriptNonNull_c(void);

// "Can the player advance forward?" — returns 1 only when none of the
// six gates trip. Callers do `bl sub_8034C36; beq <skip>` so we wrap
// with DECOMP_FLAG_WRAPPER to maintain that Z-flag contract.
u32 sub_8034C36_impl(void)
{
    if (IsScreenFadeActive_c() == 1) return 0;
    if (TestEventFlag_c(0x1717u)) return 0;  // EVENT_1717_PLAYER_ADVANCE_FORWARD
    if (TestEventFlag_c(0x173Du)) return 0;  // EVENT_IN_SLIPRUN_STATE
    if (sub_809E462_c()) return 0;
    if (chatbox_mask_eFlags2009F38_c(0x80u)) return 0;
    if (IsCutsceneScriptNonNull_c()) return 0;
    return 1;
}

DECOMP_FLAG_WRAPPER(sub_8034C36_c, sub_8034C36_impl)
