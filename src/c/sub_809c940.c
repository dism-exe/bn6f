#include "EWRAM.h"

extern void ClearEventFlag_c(u32 flag);

/* Reads u32* at 0x02011C50+0x70, then u32 at +0x14 of that, and
   passes it to ClearEventFlag. */
void sub_809C940_c(void)
{
    u32 *block = *(u32 **)(0x02011C50u + 0x70u);
    ClearEventFlag_c(block[5]);   /* +0x14 / 4 */
}
