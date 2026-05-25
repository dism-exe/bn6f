#include "EWRAM.h"

#define byte_203CED0 ((u8 *) 0x0203CED0)

void sub_8015952_c(u32 b0, u32 b1, u32 b3)
{
    byte_203CED0[0] = (u8)b0;
    byte_203CED0[1] = (u8)b1;
    byte_203CED0[3] = (u8)b3;
}
