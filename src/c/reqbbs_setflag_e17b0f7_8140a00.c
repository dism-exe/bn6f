#include "EWRAM.h"

extern void SetEventFlag_c(u32 flag);

/* The ASM falls through SetEventFlagFromImmediate (which does
   r0 = (r0 << 8) | r1) into SetEventFlag.  Args are r0=0x17, r1=0,
   so the resulting flag is 0x1700. */
void reqBBS_setFlag_e17b0f7_8140A00_c(void)
{
    SetEventFlag_c(0x1700u);
}
