#include "EWRAM.h"

/* Clear `*(u32 *)0x02000B30`.  Caller sandwiched between
   ClearEventFlagFromImmediate(EVENT_1700) etc. — looks like
   a per-area state reset. */
void sub_800A908_c(void)
{
    *(u32 *) 0x02000B30u = 0u;
}
