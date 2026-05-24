#include "types.h"

#define eToolkit_EventFlagsPtr (*(u8 **)0x020093F4u)

// Mirror of SetEventFlag but clears the bit (ASM uses BIC).
void ClearEventFlag_c(u32 flag)
{
    u8 *flags = eToolkit_EventFlagsPtr;
    flags[flag >> 3] &= (u8)~(0x80u >> (flag & 7u));
}
