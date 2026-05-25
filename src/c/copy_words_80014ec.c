#include "EWRAM.h"

/* memcpy of u32s with overlap handling: if dst < src, forward copy;
   else (overlap possible) reverse copy.  byte_count must be a
   multiple of 4 and > 0 in the forward case. */
void copyWords_80014EC_c(u32 *src, u32 *dst, u32 byte_count)
{
    s32 n = (s32)byte_count;
    if ((u32)src < (u32)dst) {
        /* dst > src: copy backwards so the tail of src isn't
           overwritten before we read it. */
        u8 *s = (u8 *)src + (n - 4);
        u8 *d = (u8 *)dst + (n - 4);
        for (; n >= 0; n -= 4) {
            *(u32 *)d = *(u32 *)s;
            s -= 4;
            d -= 4;
        }
    } else {
        for (; n > 0; n -= 4) {
            *dst++ = *src++;
        }
    }
}
