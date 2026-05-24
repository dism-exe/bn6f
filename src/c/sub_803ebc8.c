#include "types.h"

extern u32 dword_200B1B0;
extern u32 eStruct200BC30[];
extern void sub_803EF84_c(u32 v);
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);
extern void sub_803EF60_c(void);

void sub_803EBC8_c(void)
{
    sub_803EF84_c((u32)&dword_200B1B0);
    ZeroFillByWord_c(eStruct200BC30, 0x20u);
    sub_803EF60_c();
}
