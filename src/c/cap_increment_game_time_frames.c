#include "EWRAM.h"

// ASM does `mov r3,r10; ldr r3,[r3,#oToolkit_S2001c04_Ptr]; ldr r0,[r3,#0x18]`.
// r10 is canonically the Toolkit base (0x020093B0), so eToolkit->S2001c04_Ptr
// is the same word the ASM loads.
void CapIncrementGameTimeFrames_c(void)
{
    S2001c04 *s = eToolkit->S2001c04_Ptr;
    u32 t = s->GameTimeFrames + 1u;
    if (t > 0x014988F0u) {
        t = 0x014988F0u;
    }
    s->GameTimeFrames = t;
}
