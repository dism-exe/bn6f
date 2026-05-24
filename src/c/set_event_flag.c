#include "types.h"

// eToolkit->EventFlagsPtr lives at offset 0x44 of the toolkit struct
// (eToolkit base = 0x020093B0). r10 holds eToolkit, so this is the
// direct address of the EventFlagsPtr field.
#define eToolkit_EventFlagsPtr (*(u8 **)0x020093F4u)

// Sets bit (0x80 >> (flag & 7)) at byte offset (flag >> 3) in the
// EventFlags bitfield. ASM does `mov r1,#0x80; lsr r1,r0`.
void SetEventFlag_c(u32 flag)
{
    u8 *flags = eToolkit_EventFlagsPtr;
    flags[flag >> 3] |= (u8)(0x80u >> (flag & 7u));
}
