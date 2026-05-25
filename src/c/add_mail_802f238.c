#include "EWRAM.h"

extern void SetEventFlag_c(u32 flag);

/* Insert a new mail entry at the head of the mail array at
   0x02006530.  Each entry is 1 byte (mail id, offset from base
   0x1CA0 of the event-flag namespace).  *(u32 *)0x02001140 is the
   running entry count.

   Steps:
     - SetEventFlag(flag)           (the canonical mail flag)
     - SetEventFlag(flag + 0x80)    (paired "read" flag)
     - Shift bytes [0..count-1] of the array right by one to free
       index 0.
     - Write (flag - 0x1CA0) at index 0.
     - Bump count. */
void addMail_802f238_c(u32 flag)
{
    u8 *arr   = (u8  *) 0x02006530u;
    u32 *cnt  = (u32 *) 0x02001140u;
    u32 base  = 0x1CA0u;
    s32 n, i;

    SetEventFlag_c(flag);
    SetEventFlag_c(flag + 0x80u);

    n = (s32)*cnt;
    for (i = n - 1; i >= 0; i--) {
        arr[i + 1] = arr[i];
    }
    arr[0] = (u8)(flag - base);
    *cnt = (u32)(n + 1);
}
