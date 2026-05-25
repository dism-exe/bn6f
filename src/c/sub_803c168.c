#include "EWRAM.h"

extern void HalfwordFill_c(u16 *dst, u32 byte_count, u32 halfword);

/* Render `count` characters of `src` into `dst` as tile-id hwords,
   converting each byte through a 8-byte-per-entry table at
   0x02026A02 (the tile id is the u16 at +0 of each 8-byte entry).
   First fills `dst` with 0xE5E5 (blank tile) over `cap` halfwords,
   stamps an 0xE6 (terminator) byte at `dst[count*2]`, then streams
   bytes until either `count` runs out or a 0 byte is hit. */
void sub_803C168_c(u8 *src, u16 *dst, u32 count, u32 cap)
{
    u8 *tile_table = (u8 *) 0x02026A02u;
    s32 left;

    HalfwordFill_c(dst, cap, 0xE5E5u);
    ((u8 *)dst)[count * 2u] = 0xE6u;

    left = (s32)count;
    while (left > 0) {
        u8 ch = *src;
        if (ch == 0) break;
        *dst = *(u16 *)(tile_table + ch * 8u);
        src++;
        dst++;
        left--;
    }
}
