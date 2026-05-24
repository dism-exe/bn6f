#include "types.h"

extern u32 byte_80025CC[];
extern u32 byte_3001730[];
extern void CopyByEightWords_c(const u32 *src, u32 *dst, u32 byte_count);

// Entered at loc_8002678 from either of two prelude entry points:
//   copy_8002668: does an extra CopyByEightWords(dword_86A5500,
//                 byte_3001710, 0x20) first, then falls through here.
//   call_8002676: just `push {lr}` then falls through here.
// Shared tail: CopyByEightWords(byte_80025CC, byte_3001730, 0x20).
void copy_8002668_c(void)
{
    CopyByEightWords_c(byte_80025CC, byte_3001730, 0x20);
}
