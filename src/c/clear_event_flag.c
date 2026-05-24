#include "EWRAM.h"

// Mirror of SetEventFlag but clears the bit (ASM uses BIC).
void ClearEventFlag_c(u32 flag)
{
    u8 *flags = (u8 *)eToolkit->EventFlagsPtr;
    flags[flag >> 3] &= (u8)~(0x80u >> (flag & 7u));
}
