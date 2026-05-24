#include "types.h"

extern u8 eStruct2000aa0[];

void sub_809E3B2_c(void)
{
    eStruct2000aa0[0x0B] = 0;
    *(u16 *)(eStruct2000aa0 + 0x0C) = 0;
    *(u16 *)(eStruct2000aa0 + 0x10) = 0;
    *(u16 *)(eStruct2000aa0 + 0x14) = 0;
    *(u16 *)(eStruct2000aa0 + 0x18) = 0;
}
