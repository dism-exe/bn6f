#include "EWRAM.h"

extern void ByteFill_c(u8 *dst, u32 byte_count, u8 byte);
extern u32  TestEventFlag_c(u32 flag);

/* For each of the 27 event-flag entries in word_802B2E0
   (flags 0x197..0x19F, 0x1A1, 0x1A2, 0x1A4..0x1B4 — a few holes in
   the run), test whether the flag is set; if so, write
   (flag - 0x197 + 1) as a u16 into the slot at dst[i*2].
   Initialises `dst` to 0xFFFF halfwords first so unset entries are
   distinguishable.  Returns the total slot count (always 27 — fixed
   by the table size in dword_802B350). */
u32 sub_802B2A0_c(u8 *dst)
{
    u32 *table = (u32 *) 0x0802B2E0u;
    u32 n = 0x1Bu;          /* dword_802B350 — 27 entries */
    u32 base = 0x197u;      /* dword_802B354 — first flag */
    u32 i;

    ByteFill_c(dst, n * 2u, 0xFFu);

    for (i = 0; i < n; i++) {
        u32 flag = table[i];
        if (TestEventFlag_c(flag)) {
            *(u16 *)(dst + i * 2u) = (u16)(flag - base + 1u);
        }
    }
    return n;
}
