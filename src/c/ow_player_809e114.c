#include "EWRAM.h"

/* Zeros byte at OWPlayer +0x15 and the two u32 fields at +0x18, +0x20. */
void owPlayer_809E114_c(void)
{
    u8 *base = (u8 *) 0x0200ACE0u;
    base[0x15] = 0;
    *(u32 *)(base + 0x18) = 0u;
    *(u32 *)(base + 0x20) = 0u;
}
