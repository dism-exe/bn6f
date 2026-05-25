#include "EWRAM.h"

/* Scan-down search: walk `table` from index `i_init/4 - 1` toward 0,
   for each entry probing a per-entry u16 stream (whose cursor lives
   in `cursors[i]`) for a halfword equal to `wanted`. Returns:

     - the index i where we stopped, when either the cursor's current
       hword is 0 (terminator) OR after a match the *next* u32 is 0,
     - 0xFF when no entry remains.

   On a successful match the cursor for that entry is bumped +2. */
u32 sub_8012792_c(u32 i_init, u32 wanted, u8 **table, u8 *cursors)
{
    s32 i = (s32)i_init;
    u8 *p;
    u32 c, h;
    while (1) {
        i -= 4;
        if (i < 0) return 0xFFu;
        cursors--;
        p = *(u8 **)((u8 *)table + i);
        c = *cursors;
        h = *(u16 *)(p + c);
        if (h == 0u) return (u32)i >> 2;
        if (h != wanted) continue;
        c += 2u;
        *cursors = (u8)c;
        if (*(u32 *)(p + c) == 0u) return (u32)i >> 2;
    }
}
