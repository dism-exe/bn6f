#include "EWRAM.h"

/* On OWPlayer at 0x0200ACE0: set byte +0x15 = 1, u32 +0x18 = 0,
   then u32 +0x20 = 0x0809CF5C (a ROM script ptr).  (The original
   ASM also writes 0 to +0x20 first, but it's overwritten one
   instruction later, so the C version drops the dead store.) */
void owPlayer_809E0FC_c(void)
{
    u8 *p = (u8 *) 0x0200ACE0u;
    p[0x15] = 1;
    *(u32 *)(p + 0x18) = 0u;
    *(u32 *)(p + 0x20) = 0x0809CF5Cu;
}
