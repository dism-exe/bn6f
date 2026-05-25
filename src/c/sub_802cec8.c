#include "EWRAM.h"

extern void sub_802CEA6_c(u32 idx);

/* Two slot resets on the 0x02036720 table (stride 16):
   for each of slots[0] and slots[1], if [slot+8] != NULL AND that
   pointer's +0x24 hword is 0, call sub_802CEA6 with the byte
   read at +0x16 of the pointer. */
static void try_reset(u32 *slot_base)
{
    u8 *p = *(u8 **)((u8 *)slot_base + 8);
    if (p == 0) return;
    if (*(u16 *)(p + 0x24) != 0) return;
    sub_802CEA6_c(p[0x16]);
}

void sub_802CEC8_c(void)
{
    u32 *base = (u32 *) 0x02036720u;
    try_reset(base);
    try_reset((u32 *)((u8 *)base + 16));
}
