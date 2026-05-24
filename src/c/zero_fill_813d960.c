#include "types.h"

extern u8 eS200BC50[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

void zeroFill_813D960_c(void)
{
    u8 saved = eS200BC50[7];
    ZeroFillByWord_c((u32 *)eS200BC50, 0x10);
    eS200BC50[7] = saved;
}
