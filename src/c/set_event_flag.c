#include "EWRAM.h"

// Sets bit (0x80 >> (flag & 7)) at byte offset (flag >> 3) in the
// EventFlags bitfield. eToolkit->EventFlagsPtr is what ASM reaches via
// `mov r3,r10; ldr r3,[r3,#oToolkit_EventFlagsPtr]`.
void SetEventFlag_c(u32 flag)
{
    u8 *flags = (u8 *)eToolkit->EventFlagsPtr;
    flags[flag >> 3] |= (u8)(0x80u >> (flag & 7u));
}
