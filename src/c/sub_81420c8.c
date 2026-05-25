#include "EWRAM.h"

extern u32 TestEventFlag_c(u32 flag);

/* For row `idx` in the (u16 base, u16 count) table at 0x08142120,
   count how many of the `count` consecutive event flags starting at
   `base` are set.  Returns the running count. */
u32 sub_81420C8_c(u32 idx)
{
    u16 *row = (u16 *)(0x08142120u + idx * 4u);
    u16 base  = row[0];
    u16 count = row[1];
    u32 set = 0;
    u32 i;
    for (i = 0; (s32)i < (s32)count; i++) {
        if (TestEventFlag_c((u32)base + i)) set++;
    }
    return set;
}
