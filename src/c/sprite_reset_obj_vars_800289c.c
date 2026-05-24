#include "types.h"

extern u32 dword_20093A8;
extern u32 dword_200A890[];
extern void WordFill_c(u32 *dst, u32 byte_count, u32 word);

// ASM zeroes dword_20093A8 then fills 0x388 bytes at dword_200A890
// with 0xFFFFFFFF (via `mov r2,#0; mvn r2,r2`).
void sprite_resetObjVars_800289C_c(void)
{
    dword_20093A8 = 0;
    WordFill_c(dword_200A890, 0x388, 0xFFFFFFFFu);
}
