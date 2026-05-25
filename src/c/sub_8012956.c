#include "EWRAM.h"

/* 3-slot rolling state machine on the 10-byte block at `p`:
     p[0]  — "frozen" flag; once set, every entry returns 0.
     p[1]  — round-robin index 0..2 (which of the three u16 slots
             at p+4/p+6/p+8 gets the next sample).
     p[2]  — sample counter; if it exceeds 12, freeze and return 0.

   Behaviour:
     - If frozen, return 0.
     - Increment p[2].  If > 12, freeze, return 0.
     - Store `arg` (low u16) into the round-robin slot, advance p[1].
     - If the OR of all three slots has bits 0x22 set, freeze AND
       return 1.  Otherwise return 0. */
u32 sub_8012956_c(u8 *p, u32 arg)
{
    u32 old_idx, new_idx, combined;

    if (p[0] != 0) return 0u;

    p[2] = (u8)(p[2] + 1u);
    if ((s32)(s8)p[2] > 12) {
        p[0] = 1;
        return 0u;
    }

    old_idx = p[1];
    new_idx = old_idx + 1u;
    if ((s32)new_idx >= 3) new_idx = 0u;
    p[1] = (u8)new_idx;

    *(u16 *)(p + 2u * old_idx + 4u) = (u16)arg;

    combined = (u32)*(u16 *)(p + 4) |
               (u32)*(u16 *)(p + 6) |
               (u32)*(u16 *)(p + 8);
    if ((combined & 0x22u) == 0x22u) {
        p[0] = 1;
        return 1u;
    }
    return 0u;
}
