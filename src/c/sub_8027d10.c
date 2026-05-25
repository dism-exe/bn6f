#include "EWRAM.h"

/* Returns *(u32 *)0x08027D2C if (idx & 0x1FF) <= 255, else
   *(u32 *)0x08027D30.  In effect: bit-8 of idx picks between two
   ROM table pointers (0x086EA94C vs 0x086EB354). */
u32 sub_8027D10_c(u32 idx)
{
    u32 *base = (u32 *) 0x08027D2Cu;
    if ((idx & 0x1FFu) > 255u) base++;
    return *base;
}
