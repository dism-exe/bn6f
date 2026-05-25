#include "EWRAM.h"

extern void encryption_applyPack_8006e70_c(u32 offset);
extern void SetEventFlag_c(u32 flag);
extern u8 ChipDataArr_8021DA8[];
extern void setUnkFieldOfChipCodeInChipPack_81376b8_c(u32 r0, u32 r1);

/* Give `qty` chips of (chip_idx, code) to the player.
 *
 *   1. Re-encrypt the pack region.
 *   2. If qty == 0, return 0 (no-op).
 *   3. Set the chip-collected event flag (0x1e20 + chip_idx).
 *   4. Find which of the four codes at ChipDataArr[chip_idx * 44 +
 *      0..3] matches `code` (or 0 if none); compute the slot pointer
 *      at Toolkit.Unk2002230_Ptr + 12 * chip_idx + match_idx.
 *   5. Bump the slot's count, clamped at 99:
 *        already 99 → status 1
 *        sum  <= 99 → status 0
 *        sum  >  99 → clamp to 99, status 2
 *   6. Call setUnkFieldOfChipCodeInChipPack with (slot_ptr,
 *      match_idx) — writes the u16 at 0x020065B4 into the slot and
 *      decrements the source.
 *
 * The original ASM inlines getOffsetToQuantityOfChipCodeMaybe and
 * addChipsToChipPackOffset's effects via r0/r3 register-pair returns;
 * the C helpers don't preserve that pair across the BL, so we
 * recompute both inline.  Returns the add status. */
u32 GiveChips_c(s32 chip_idx, s32 code, s32 qty)
{
    const u8 *codes;
    u8 *ptr;
    u32 found;
    u32 i;
    u8 v;
    u32 status;

    encryption_applyPack_8006e70_c((u32)chip_idx);
    if (qty == 0) return 0u;

    SetEventFlag_c(0x1E20u + (u32)chip_idx);

    codes = &ChipDataArr_8021DA8[chip_idx * 44];
    found = 0u;
    for (i = 0u; i < 4u; i++) {
        if (codes[i] == (u8)code) { found = i; break; }
    }
    ptr = (u8 *) eToolkit->Unk2002230_Ptr + 12u * (u32)chip_idx + found;

    v = *ptr;
    if (v == 99u) {
        status = 1u;
    } else {
        v = (u8)(v + (u8)qty);
        if (v > 99u) {
            v = 99u;
            status = 2u;
        } else {
            status = 0u;
        }
    }
    *ptr = v;

    setUnkFieldOfChipCodeInChipPack_81376b8_c((u32)ptr, found);

    return status;
}
