#include "EWRAM.h"

/* Rotate-in a new "navi-status gfx" entry into eStruct2035280:

     +0x1f ← old +0x17 (or +0x15 if +0x17 was 0xFF)
     +0x16 ← new icon byte (arg b)
     +0x17 ← new gfx index (arg a)
     +0x13 ← 0xFF (sentinel) */
void sub_801E724_c(u32 a, u32 b)
{
    u8 *p;
    u32 v;
    p = (u8 *) 0x02035280u;
    v = p[0x17];
    if (v == 0xffu) v = p[0x15];
    p[0x1f] = (u8)v;
    p[0x16] = (u8)b;
    p[0x17] = (u8)a;
    p[0x13] = 0xffu;
}
