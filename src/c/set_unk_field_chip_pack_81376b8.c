#include "EWRAM.h"

/* Reads u16 at 0x020065B4 (off_8137710), writes it into the slot at
   (r0 + r1 + 4) (same address math as sub_81376CC), then decrements
   the source u16. */
void setUnkFieldOfChipCodeInChipPack_81376b8_c(u32 r0, u32 r1)
{
    u16 *src = (u16 *) 0x020065B4u;
    u16 val = *src;
    *(u16 *)(r0 + r1 + 4u) = val;
    *src = (u16)(val - 1u);
}
