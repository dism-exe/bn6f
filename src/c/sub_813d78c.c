#include "EWRAM.h"

/* `*(u32 *)(p + 28) |= byte_813D7A0[idx*4 .. +3]` — actually it
   reads a u32 from a 4-byte-stride table at 0x0813D7A0 indexed by
   `idx*4`, then ORs that u32 into `p[+28]`.  The table is a packed
   set of 8 u32 bitmasks (1, 4, 0x10, 0x40, 0x100, …). */
void sub_813D78C_c(u32 idx, u8 *p)
{
    u32 mask = *(u32 *)(0x0813D7A0u + idx * 4u);
    *(u32 *)(p + 28) |= mask;
}
