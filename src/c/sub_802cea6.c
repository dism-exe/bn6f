#include "EWRAM.h"

/* On slot[idx*16] at 0x02036720: zero hwords +0/+2/+4 and word +8.
   If word at +12 is non-null, write byte 1 at [+12]+5 and zero +12. */
void sub_802CEA6_c(u32 idx)
{
    u8 *slot = (u8 *) 0x02036720u + idx * 16u;
    u8 *aux;
    *(u16 *)(slot + 0) = 0u;
    *(u16 *)(slot + 4) = 0u;
    *(u16 *)(slot + 2) = 0u;
    *(u32 *)(slot + 8) = 0u;
    aux = *(u8 **)(slot + 12);
    if (aux) {
        aux[5] = 1;
        *(u32 *)(slot + 12) = 0u;
    }
}
