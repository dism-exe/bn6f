#include "types.h"

extern u32 dword_86A5520[];
extern u32 byte_86BEC80[];
extern u32 unk_3001B40[];
extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count);

// Two CopyByEightWords calls: first copies 0x800 bytes from ROM
// dword_86A5520 to VRAM 0x0600D400; second copies 0x20 bytes from
// ROM byte_86BEC80 to IWRAM unk_3001B40.
void copyMemory_8001850_c(void)
{
    CopyByEightWords_c(dword_86A5520, (u32 *)0x0600D400u, 0x800);
    CopyByEightWords_c(byte_86BEC80, unk_3001B40, 0x20);
}
