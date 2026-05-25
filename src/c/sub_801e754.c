#include "EWRAM.h"

/* Returns 2 if the +0x40 u32 at 0x02035280 has bit 15 set AND
   byte_2036848 is in {2,4} AND byte_2036840 == 4.  Returns 1 if just
   the high-level "bit 15 set" path matches but the secondary check
   fails.  Else 0. */
u32 sub_801E754_c(void)
{
    u32 f = *(u32 *)(0x02035280u + 0x40u);
    u32 r;
    u8 *flags2;
    if ((f & 0x8000u) == 0) return 0u;
    r = 1u;
    flags2 = (u8 *) 0x02036840u;
    if (flags2[8] != 4 && flags2[8] != 2) return r;
    if (flags2[0] != 4) return r;
    return 2u;
}
