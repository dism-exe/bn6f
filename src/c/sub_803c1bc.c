#include "EWRAM.h"

/* Reverse of sub_803C168 (tile-id stream renderer): walk `src` as
   u16 codepoints, look each up in the 8-byte-per-entry table at
   0x02026A02 (only the u16 at +0 of each entry is the codepoint),
   and write the matched entry-index back to `dst` as a u8.
   First clears `dst[0..16]` so unwritten slots read as 0.

   Per-character behaviour:
     - first byte = 0xE5 or 0xE6 : terminator, stop
     - first byte = 0           : "not found" sentinel (index 32)
     - else                     : linear-search the table for the
                                  matching u16; if absent fall back
                                  to index 32. */
void sub_803C1BC_c(u8 *dst, u8 *src, u32 count)
{
    u8 *table = (u8 *) 0x02026A02u;

    *(u32 *)(dst + 0)  = 0;
    *(u32 *)(dst + 4)  = 0;
    *(u32 *)(dst + 8)  = 0;
    *(u32 *)(dst + 12) = 0;

    while ((s32)count > 0) {
        u32 first;
        u32 idx_bytes;
        u8  result;

        first = *src;
        if (first == 0xE6u || first == 0xE5u) {
            return;
        }
        if (first == 0u) {
            idx_bytes = 33u << 3;   /* "not found" path */
        } else {
            u16 wanted = *(u16 *)src;
            idx_bytes = 0;
            for (;;) {
                if (table[idx_bytes] == 0xE6u) {
                    idx_bytes = 33u << 3;
                    break;
                }
                if (*(u16 *)(table + idx_bytes) == wanted) {
                    idx_bytes += 8;
                    break;
                }
                idx_bytes += 8;
            }
        }

        result = (u8)((idx_bytes >> 3) - 1u);
        *dst = result;
        dst++;
        src += 2;
        count--;
    }
}
