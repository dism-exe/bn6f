#include "types.h"

extern void sub_802FE6A_c(u32 idx);

/* r5 = ambient BattleObject*.
 *
 *   - Clear the Flags byte at +0.
 *   - Clear bit (0x80000000 >> ListIndex) in
 *     ActiveObjectBitfieldPointers[Type & 0xF] (table at 0x08003144).
 *   - Unlink from the LinkedList block (which lives 0x10 bytes *before*
 *     the BattleObject — Prev at -0x10, Next at -0xC).
 *   - Inline sprite_makeUnscalable (avoid a second r5-ambient C call):
 *     locate the ObjectSprite at bo + (bo[2] & 0xF0); if its Unk_11
 *     low two bits are set, clear them, also clear bits 1..5 of
 *     Unk_13 and call sub_802FE6A((Unk_13 & 0x3E) >> 1).
 */
void object_freeMemory_c(void)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u8 *spr;
    u8 *ll;
    u8 *prev;
    u8 *next;
    u32 **bf_table;
    u32 *bf;
    u8 v11;
    u8 v13;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    bo[0] = 0;

    bf_table = (u32 **) 0x08003144u;
    bf = bf_table[bo[2] & 0xfu];
    *bf &= ~(0x80000000u >> bo[3]);

    ll   = bo - 0x10;
    prev = *(u8 **)(ll + 0);
    next = *(u8 **)(ll + 4);
    *(u8 **)(prev + 4) = next;
    *(u8 **)(next + 0) = prev;

    spr = bo + (bo[2] & 0xf0u);
    v11 = spr[0x11];
    if ((v11 & 3u) == 0u) return;
    spr[0x11] = v11 & (u8) ~3u;

    v13 = spr[0x13];
    spr[0x13] = v13 & (u8) ~0x3eu;
    sub_802FE6A_c((u32)((v13 & 0x3eu) >> 1));
}
