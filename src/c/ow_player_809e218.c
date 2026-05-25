#include "EWRAM.h"

/* If the OWPlayer "valid" byte at +0x15 is set, write val into the
   u16 at +0x1A. */
void owPlayer_809e218_c(u32 val)
{
    u8 *base = (u8 *) 0x0200ACE0u;
    if (base[0x15] != 0) {
        *(u16 *)(base + 0x1A) = (u16)val;
    }
}
