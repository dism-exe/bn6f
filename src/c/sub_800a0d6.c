#include "EWRAM.h"

/* On slot (0x02036820 + idx*8): swap +2 hword to new (`val`),
   then store delta-set (newly_set) at +4 and delta-clear
   (newly_cleared) at +6. */
void sub_800A0D6_c(u32 idx, u32 val)
{
    u16 *slot = (u16 *)(0x02036820u + idx * 8u);
    u16 old = slot[1];                  /* +2 */
    slot[1] = (u16)val;                 /* +2 = new */
    slot[2] = (u16)((~old) & val);      /* +4 = newly set */
    slot[3] = (u16)((~val) & old);      /* +6 = newly cleared */
}
