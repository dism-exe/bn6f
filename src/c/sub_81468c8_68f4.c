#include "EWRAM.h"

/* sub_81468C8 — slot ptr: 0x02010294 + (idx & 0xFF) * 10. */
u32 sub_81468C8_c(u32 idx)
{
    return 0x02010294u + (idx & 0xFFu) * 10u;
}

/* sub_81468F4 — *(u16 *)(0x0200FE28 + 2 * byte_20103E0). */
u32 sub_81468F4_c(void)
{
    u32 b = *(u8 *) 0x020103E0u;
    return *(u16 *)(0x0200FE28u + 2u * b);
}
