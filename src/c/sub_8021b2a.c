#include "types.h"

extern void encryption_applyPack_8006e70_c(u32 idx);
extern void SetEventFlag_c(u32 flag);
extern const u8 *getOffsetToQuantityOfChipCodeMaybe_8021c7c_c(s32 chip_idx, s32 search_item, s32 unused);
extern u32 addChipsToChipPackOffset_8021b5a_c(u8 *p, u32 r1, u32 add_qty);

// Returns the status code from addChipsToChipPackOffset (0/1/2), or
// 0 immediately when qty == 0.
u32 sub_8021B2A_c(u32 chip_idx, u32 search_item, u32 qty)
{
    encryption_applyPack_8006e70_c(chip_idx);
    if (qty == 0u) {
        return 0u;
    }
    SetEventFlag_c(0x1e20u + chip_idx);
    {
        u8 *p = (u8 *)getOffsetToQuantityOfChipCodeMaybe_8021c7c_c((s32)chip_idx, (s32)search_item, (s32)qty);
        return addChipsToChipPackOffset_8021b5a_c(p, search_item, qty);
    }
}
