#include "types.h"

/* Identical algorithm to reqBBS_81406FC at a different address; the
   original ROM duplicates the whole staircase-XOR routine.  Same
   r5-ambient capture, same two staircase computations, same inlined
   sprite_setUnk0x2c-via-eStructArr2008450 write.  See
   reqBBS_81406FC for the field-by-field documentation. */
void reqBBS_813EE58_c(void)
{
    register u8 *r5p asm("r5");
    u32 mask;
    u32 v1, t1, b1, d1;
    u32 v2, t2, b2, d2;
    u8 *p;
    u8 *spr;

    asm volatile("" : "=r"(r5p));

    mask = 0x3FFFFFFFu;

    v1 = *(u16 *)(r5p + 0x1e);
    if      (v1 >= 0x28u) { t1 = 0x28u; b1 = 0xau; }
    else if (v1 >= 0x1eu) { t1 = 0x1eu; b1 = 0xbu; }
    else if (v1 >= 0x14u) { t1 = 0x14u; b1 = 0xcu; }
    else if (v1 >= 0x0au) { t1 = 0x0au; b1 = 0xdu; }
    else                   { t1 = 0u;    b1 = 0xeu; }
    mask ^= (1u << b1);
    d1 = v1 - t1;
    mask ^= (1u << (9u - d1));

    v2 = r5p[5];
    if      (v2 >= 0x28u) { t2 = 0x28u; b2 = 0x19u; }
    else if (v2 >= 0x1eu) { t2 = 0x1eu; b2 = 0x1au; }
    else if (v2 >= 0x14u) { t2 = 0x14u; b2 = 0x1bu; }
    else if (v2 >= 0x0au) { t2 = 0x0au; b2 = 0x1cu; }
    else                   { t2 = 0u;    b2 = 0x1du; }
    mask ^= (1u << b2);
    d2 = v2 - t2;
    mask ^= (1u << ((9u - d2) + 0xfu));

    p   = (u8 *) 0x02008450u;
    spr = p + (p[2] & 0xf0u);
    *(u32 *)(spr + 0x2c) = mask;
}
