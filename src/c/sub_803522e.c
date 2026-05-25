#include "EWRAM.h"

extern void SetEventFlag_c(u32 flag);

/* Walks the (trigger_key:u16, event_flag:u16) table at 0x08035250
   until it sees a 0xFFFF terminator.  Every row whose `trigger_key`
   matches the caller's `key` fires SetEventFlag on the row's flag.
   Multiple rows can match (the walk continues until 0xFFFF). */
void sub_803522E_c(u32 key)
{
    u16 *entry = (u16 *) 0x08035250u;
    while (entry[0] != 0xFFFFu) {
        if ((u16)key == entry[0]) {
            SetEventFlag_c(entry[1]);
        }
        entry += 2;
    }
}
