#include "EWRAM.h"

/* Look up an offset in the 4-byte byte_804A25C table and return
   0x02001850 + that offset.  Bytes at 0x0804A25C are `00 20 40 00`,
   so the lookup picks one of {0x02001850, 0x02001870, 0x02001890,
   0x02001850} depending on idx ∈ {0,1,2,3}. */
u32 sub_804A24C_c(u32 idx)
{
    u8 off = ((u8 *) 0x0804A25Cu)[idx];
    return 0x02001850u + off;
}
