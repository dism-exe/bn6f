#include "types.h"

extern void sub_802FDB0_c(u32 r0_idx);
extern void cleareMemory_802FF2C_c(void);

void sub_8005F6C_c(void)
{
    sub_802FDB0_c(0);
    cleareMemory_802FF2C_c();
}
