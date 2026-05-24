#include "types.h"

extern u32 dword_200A490;

// Append a 4-word record to the queue at dword_200A490 (capped at
// 0x20 entries). The 32-bit count lives at dword_200A490 itself;
// entries start 0xC bytes after, 16 bytes each.
//
// 4-arg function — needs the r3-safe trampoline.
void sound_8000808_c(u32 a0, u32 a1, u32 a2, u32 a3)
{
    u32 count = dword_200A490;
    u32 *entry;

    if (count >= 0x20u) {
        return;
    }
    dword_200A490 = count + 1u;
    entry = (u32 *)((u8 *)&dword_200A490 + 0xCu + count * 16u);
    entry[0] = a0;
    entry[1] = a1;
    entry[2] = a2;
    entry[3] = a3;
}
