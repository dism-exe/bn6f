#include "EWRAM.h"

extern void encryption_applyPack_8006e70_c(u32 offset);
extern const u8 *getOffsetToQuantityOfChipCodeMaybe_8021c7c_c(
    s32 chip_idx, s32 search_item, s32 unused);

/* If qty != 0: apply encryption pack to chip_idx, then write qty
   into the byte returned by getOffsetToQuantityOfChipCodeMaybe. */
void sub_8021B78_c(u32 chip_idx, s32 search_item, u32 qty)
{
    u8 *p;
    if (qty != 0u) {
        encryption_applyPack_8006e70_c(chip_idx);
    }
    p = (u8 *)getOffsetToQuantityOfChipCodeMaybe_8021c7c_c(
        (s32)chip_idx, search_item, (s32)qty);
    *p = (u8)qty;
}
