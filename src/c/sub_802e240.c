#include "types.h"

extern u32 off_802E260[];   // table of byte_X pointers
extern u8  unk_2008170[];
extern void CopyHalfwords_c(const u16 *src, u16 *dst, u32 byte_count);

// Indexed dispatch: CopyHalfwords(off_802E260[idx], unk_2008170, 0x3c).
void sub_802E240_c(u32 idx)
{
    const u16 *src = (const u16 *)off_802E260[idx];
    CopyHalfwords_c(src, (u16 *)unk_2008170, 0x3c);
}
