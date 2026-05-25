#include "EWRAM.h"

extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

/* Cust-gauge / chip-window reset:
   - *(u32 *)0x0203F7D8 = 0
   - *(u16 *)(0x02036782) = 0     (off_80200B8 +2)
   - *(u8  *)(0x02036784) = 0xFF  (off_80200B8 +4)
   - ZeroFillByEightWords(0x0203F4A0, 0x200)
   - ZeroFillByEightWords(0x0203CBE0, 0x100) */
void sub_801FE00_c(void)
{
    *(u32 *) 0x0203F7D8u = 0u;
    *(u16 *) 0x02036782u = 0u;
    *(u8  *) 0x02036784u = 0xFFu;
    ZeroFillByEightWords_c((u32 *) 0x0203F4A0u, 0x200u);
    ZeroFillByEightWords_c((u32 *) 0x0203CBE0u, 0x100u);
}
