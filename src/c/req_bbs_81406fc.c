#include "types.h"

/* r5 = ambient ObjectHeader*.
 *
 * Compose a 30-bit XOR mask from two staircase-scored fields:
 *
 *   - hword at +0x1e (call it `v1`) → tier in {0x28,0x1e,0x14,0xa,0},
 *     toggles a fixed "tier bit" (0xa..0xe) plus a "delta bit"
 *     at position (9 - (v1 - tier)).
 *
 *   - byte at +0x5 (`v2`) → same staircase, tier bits 0x19..0x1d,
 *     delta bit at position ((9 - (v2 - tier)) + 0xf).
 *
 * Starts from 0x3FFFFFFF and XOR-clears each contributing bit, then
 * stuffs the result into the ObjectSprite at eStructArr2008450 — the
 * original calls sprite_setUnk0x2c with r5 = 0x02008450, so we
 * inline that store to avoid the second r5-rebind. */
void reqBBS_81406FC_c(void)
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

    /* Inlined sprite_setUnk0x2c with r5 forced to eStructArr2008450. */
    p   = (u8 *) 0x02008450u;
    spr = p + (p[2] & 0xf0u);
    *(u32 *)(spr + 0x2c) = mask;
}
