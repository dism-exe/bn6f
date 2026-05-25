#include "types.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

/* Allocate an AIData slot from the 32-bit `eUsedAIDataBitfield` (only
 * the top 8 bits are valid slot bits, scanned bit-31 down to bit-24).
 * On success: set the bit, zero-fill the three sub-blocks of the new
 * AIData and return its base pointer.  On failure return NULL. */
void *object_createAIData_c(void)
{
    u32 *bitfield;
    u32 used;
    u32 slot_mask;
    s32 slot_idx;
    u8 *p;

    bitfield = (u32 *) 0x0203F6A0u;
    used = *bitfield;
    slot_mask = 0x80000000u;
    slot_idx = 0;
    p = (u8 *) 0x02034080u;

    while ((used & slot_mask) != 0u) {
        slot_idx++;
        if (slot_idx >= 8) return (void *) 0;
        p += 0x100u;
        slot_mask >>= 1;
        if (slot_mask == 0u) return (void *) 0;
    }

    *bitfield = used | slot_mask;
    ZeroFillByWord_c((u32 *) p,           0x7Cu);
    ZeroFillByWord_c((u32 *) (p + 0x80u), 0x20u);
    ZeroFillByWord_c((u32 *) (p + 0xA0u), 0x50u);
    return p;
}
