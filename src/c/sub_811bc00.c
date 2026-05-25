#include "EWRAM.h"

/* If slot `idx` in the 0x02008450 array (stride 88) is non-empty
   (first byte non-zero), write three fields into it:

     +0x0e (u16) = `a`
     +0x18 (u16) = `b`
     +0x09 (u8)  = (u8)`c`

   No-op if the slot is empty.  (Inlines getStructFrom2008450 because
   that helper signals the empty case via the Z flag, which the C
   trampoline form doesn't expose.) */
void sub_811BC00_c(u32 a, u32 c, u32 idx, u32 b)
{
    u8 *p;
    p = (u8 *) 0x02008450u + idx * 88u;
    if (*p == 0u) return;
    *(u16 *)(p + 0x0e) = (u16)a;
    *(u16 *)(p + 0x18) = (u16)b;
    *(u8  *)(p + 0x09) = (u8)c;
}
