#include "EWRAM.h"

/* Write byte 0x23 or 1 into the first byte of slot `idx` of the
   0x02008450 array (stride 88), no-op if the slot is empty:

     - flag != 0 → write 0x23
     - flag == 0 → write 1

   Same inlined-getStructFrom2008450 pattern as sub_811BC00. */
void sub_8119C74_c(u32 flag, u32 idx)
{
    u8 *p;
    p = (u8 *) 0x02008450u + idx * 88u;
    if (*p == 0u) return;
    *p = (u8)(flag != 0u ? 0x23u : 1u);
}
