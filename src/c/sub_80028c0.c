#include "types.h"

extern u32 dword_200F340;
extern u8 byte_200F389[];

void sub_80028C0_c(u32 idx)
{
    byte_200F389[idx] = (u8)dword_200F340;
}
