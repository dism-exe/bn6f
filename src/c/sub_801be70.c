#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

/* Cust gauge / chip select state reset:
   - ZeroFillByWord(0x02035280, 0x60)
   - On that block: u16 +0x22 = 32, u16 +0x26 = 0xFFFF (-1)
   - ZeroFillByWord(0x020352E0, 0x30)
   - ZeroFillByWord(0x0203EB50, 0x50)
   - Zero u32s at 0x0203CA48 and +4
   - Zero u32 at 0x020367E0 */
void sub_801BE70_c(void)
{
    u8 *base = (u8 *) 0x02035280u;

    ZeroFillByWord_c((u32 *) base, 0x60u);
    *(u16 *)(base + 0x22) = 32u;
    *(u16 *)(base + 0x26) = (u16) (0u - 1u);

    ZeroFillByWord_c((u32 *) 0x020352E0u, 0x30u);
    ZeroFillByWord_c((u32 *) 0x0203EB50u, 0x50u);

    *(u32 *) 0x0203CA48u = 0u;
    *(u32 *) 0x0203CA4Cu = 0u;
    *(u32 *) 0x020367E0u = 0u;
}
