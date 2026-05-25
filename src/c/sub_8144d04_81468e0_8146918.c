#include "EWRAM.h"

/* sub_8144D04 — byte_2000F48A[idx & 0xFF]. (0x0200F460 + 42.) */
u32 sub_8144D04_c(u32 idx)
{
    return ((u8 *) 0x0200F48Au)[idx & 0xFFu];
}

/* sub_81468E0 — base + (idx & 0xFF) * 13.  Returns a slot ptr. */
u32 sub_81468E0_c(u32 idx)
{
    return 0x020102E0u + (idx & 0xFFu) * 13u;
}

/* sub_8146918 — *(u16 *)(0x0200FE34 + 2*(idx & 0xFF)).
   (lsls 24 then lsrs 23 = mask-low-byte * 2.) */
u32 sub_8146918_c(u32 idx)
{
    return *(u16 *)(0x0200FE34u + 2u * (idx & 0xFFu));
}
