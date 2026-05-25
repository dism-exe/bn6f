#include "EWRAM.h"

extern u32 TestEventFlag_c(u32 flag);
extern void sub_800AB2E_c(u32 row, u32 col, u32 val);

/* Flag-gated counter writer for the 2D byte table at 0x0203EAE0:
     if EVENT_01D8 set AND EVENT_(0x196 + arg) clear AND arg ∉ {10,13}:
        sub_800AB2E(row=0, col=10, val=arg)
   (See sub_800AB2E_c — that's `table_203EAE0[0*16 + 10] = arg`.) */
void sub_802D65E_c(u32 arg)
{
    /* EVENT_01D8 = (1 << 8) | 0xD8 = 0x01D8 in TestEventFlagFromImmediate
       (r0=1, r1=0xD8) → packed flag = (1 << 8) | 0xD8 = 0x01D8. */
    if (!TestEventFlag_c(0x01D8u)) return;
    if (TestEventFlag_c(arg + 0x196u)) return;
    if (arg == 13u || arg == 10u) return;
    sub_800AB2E_c(0u, 10u, arg);
}
