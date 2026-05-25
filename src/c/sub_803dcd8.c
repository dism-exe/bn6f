#include "EWRAM.h"

/* Writes triple at 0x020099D0: u32 +28 = a, u16 +10 = b, u16 +14 = c. */
void sub_803DCD8_c(u32 a, u32 b, u32 c)
{
    u8 *p = (u8 *) 0x020099D0u;
    *(u32 *)(p + 28) = a;
    *(u16 *)(p + 10) = (u16)b;
    *(u16 *)(p + 14) = (u16)c;
}
