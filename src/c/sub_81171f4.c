#include "EWRAM.h"

/* Toggle bit 1 (mask 0x02) at offset +6 of the 0x02008450 slot for
   `idx` (stride 88), based on `flag`:

     - flag == 0 → set bit  (p[6] |= 0x02)
     - flag != 0 → clear bit (p[6] &= ~0x02)

   No-op if the slot is empty (first byte zero).  Inlines
   getStructFrom2008450 — see sub_811BC00 for the same reasoning. */
void sub_81171F4_c(u32 flag, u32 idx)
{
    u8 *p;
    p = (u8 *) 0x02008450u + idx * 88u;
    if (*p == 0u) return;
    if (flag == 0u) {
        p[6] |= 0x02u;
    } else {
        p[6] &= (u8) ~0x02u;
    }
}
