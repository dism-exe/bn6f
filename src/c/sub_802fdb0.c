#include "types.h"

extern u32 off_802FD70;
extern u32 byte_802FD90;
extern u32 tupleArr_3002590;
extern u32 iObjectAttr3001150;
extern u32 byte_3001950;

extern void CopyWords_c(const u32 *src, u32 *dst, u32 byte_count);
extern void WordFill_c(u32 *dst, u32 byte_count, u32 word);
extern void ZeroFillByEightWords_c(u32 *dst, u32 byte_count);

// Entered via loc_802FDB6 from either of two preludes:
//   sub_802FDB0: mov r0, #0; b loc_802FDB6   (table entry 0 -> off_802FD70)
//   loc_802FDB4: mov r0, #4                  (table entry 1 -> byte_802FD90)
// r0 acts as a byte offset into a two-pointer dispatch table.
//
// The body copies the selected table (0x20 bytes of 4 (dest, count)
// pairs) to tupleArr_3002590, then runs each pair through WordFill
// with a 0xFFFFFFFF value. Finally it zero-fills 0x400 bytes of OAM
// cache and clears byte_3001950.
void sub_802FDB0_c(u32 r0_idx)
{
    static const u32 *const tables[2] = { &off_802FD70, &byte_802FD90 };
    const u32 *ptr = tables[r0_idx >> 2];
    s32 i;
    const u32 *p;

    CopyWords_c(ptr, &tupleArr_3002590, 0x20);

    p = ptr;
    for (i = 0; i < 4; i++) {
        WordFill_c((u32 *)p[0], p[1], 0xFFFFFFFFu);
        p += 2;
    }

    ZeroFillByEightWords_c(&iObjectAttr3001150, 0x400);
    byte_3001950 = 0;
}
