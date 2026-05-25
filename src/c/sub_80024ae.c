#include "EWRAM.h"

#define eStruct200a6a0_Init     (*(u8  *) 0x0200A6A0)
#define eStruct200a6a0_Callback (*(u32 *) 0x0200A6A4)

void sub_80024AE_c(void)
{
    if (eStruct200a6a0_Init) {
        ((void (*)(void))eStruct200a6a0_Callback)();
    }
}
