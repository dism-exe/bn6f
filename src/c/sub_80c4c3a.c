#include "EWRAM.h"

/* Writes 8 at +0x08 (u32) on the passed struct, then zeros the
   u32 that the +0x64 field points at. */
void sub_80C4C3A_c(u8 *p)
{
    *(u32 *)(p + 8) = 8u;
    **(u32 **)(p + 0x64) = 0u;
}
