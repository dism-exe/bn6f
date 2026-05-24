#include "types.h"

// eToolkit lives at 0x020093B0 and is pinned to r10 throughout the
// game's main loop. The ASM does `mov r3,r10; ldr r3,[r3,#0x40]` to
// fetch eToolkit->S2001c04_Ptr; we read the same EWRAM word directly
// since r10 is canonically that pointer.
#define eToolkit_S2001c04_Ptr (*(u32 **)0x020093F0u)

// S2001c04.GameTimeFrames sits at offset 0x18 (= 6 words).
#define S2001c04_GameTimeFrames_INDEX 6

void CapIncrementGameTimeFrames_c(void)
{
    u32 *s = eToolkit_S2001c04_Ptr;
    u32 t = s[S2001c04_GameTimeFrames_INDEX] + 1;
    if (t > 0x014988F0u) {
        t = 0x014988F0u;
    }
    s[S2001c04_GameTimeFrames_INDEX] = t;
}
