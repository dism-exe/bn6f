#include "types.h"

extern u16 unk_2000AF0;
extern u32 TextScriptJap8021D88[];
extern u32 byte_8021D8A[];
extern u32 unk_2001184[];
extern u32 unk_200119C[];
extern u32 byte_20007D6[];
extern u32 byte_200083A[];

extern void ZeroFillByHalfword_c(u16 *dst, u32 byte_count);
extern void CopyWords_c(const u32 *src, u32 *dst, u32 byte_count);

void sub_8021D36_c(void)
{
    ZeroFillByHalfword_c(&unk_2000AF0, 0x40);
    CopyWords_c(TextScriptJap8021D88, unk_2001184, 8);
    CopyWords_c(TextScriptJap8021D88, unk_200119C, 8);
    CopyWords_c(byte_8021D8A, byte_20007D6, 8);
    CopyWords_c(byte_8021D8A, byte_200083A, 8);
}
