#include "types.h"

extern u8 eLinkState[];
extern u16 byte_200DD10;
extern u16 unk_2009480;
extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);

// 3 zero-fills then store r0 at eLinkState[0x58] (dword_2009A28).
void sub_803DE88_c(u32 a0)
{
    ZeroFillByHalfword_c((u16 *)eLinkState, 0x58);
    ZeroFillByHalfword_c(&byte_200DD10, 0x10);
    ZeroFillByHalfword_c(&unk_2009480, 0x40);
    *(u32 *)(eLinkState + 0x58) = a0;
}
