#include "types.h"

extern u8 eStruct2001010[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_8003AB2_c(void)
{
    if (eStruct2001010[2] == 0) {
        ZeroFillByWord_c((u32 *)eStruct2001010, 0x48);
    }
    eStruct2001010[3] = 1;
}
