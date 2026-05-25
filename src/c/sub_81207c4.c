#include "EWRAM.h"

/* Packs a u16 stream at `dst` by repacking u32s at each slot's +0x1C
   field, walking 30 slots of 32 bytes from `base`:

     w   = *(u32 *)(slot + 0x1C)        — only the low 16 bits matter
     hi9 = (w >> 7) & 0x1FF             — bits 7..15  of w (9-bit field)
     lo7 = (w     ) & 0x7F              — bits 0..6  of w (7-bit field)
     if hi9 != 0: *(u16 *)dst = (lo7 << 9) | hi9
     dst += 2 unconditionally; slot += 32. */
void sub_81207C4_c(u8 *base, u16 *dst)
{
    u8 *limit = base + 30u * 32u;
    while (base < limit) {
        u32 w   = *(u32 *)(base + 0x1C);
        u32 hi9 = (w >> 7) & 0x1FFu;
        u32 lo7 = w & 0x7Fu;
        if (hi9 != 0u) {
            *dst = (u16)((lo7 << 9) | hi9);
        }
        dst++;
        base += 32u;
    }
}
