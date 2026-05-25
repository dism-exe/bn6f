#include "EWRAM.h"

/* Identical shape to sub_8119C74 — write byte 0x23 (flag != 0) or 1
   (flag == 0) into 0x02008450[idx][0], no-op when slot is empty. */
void sub_811B48C_c(u32 flag, u32 idx)
{
    u8 *p;
    p = (u8 *) 0x02008450u + idx * 88u;
    if (*p == 0u) return;
    *p = (u8)(flag != 0u ? 0x23u : 1u);
}
