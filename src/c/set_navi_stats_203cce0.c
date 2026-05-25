#include "EWRAM.h"

/* Bug or quirk: the ASM ignores idx and forces 0, so the write is
   always at the BASE of the table. Mirror that. */

void SetNaviStats203CCE0Byte_c(u32 idx_ignored, u32 offset, u32 val)
{
    *(u8 *)(0x0203CCE0u + offset) = (u8)val;
    (void)idx_ignored;
}

void SetNaviStats203CCE0Hword_c(u32 idx_ignored, u32 offset, u32 val)
{
    *(u16 *)(0x0203CCE0u + offset) = (u16)val;
    (void)idx_ignored;
}
