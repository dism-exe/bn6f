#include "EWRAM.h"

extern u8 *getOffsetToQuantityOfChipCodeMaybe_8021c7c_c(s32 chip_idx,
                                                       s32 search_item,
                                                       s32 unused);

/* Decrement the quantity-byte for chip (chip_idx, code) by `qty`:

     0 → success
     1 → no chips of that code in the pack
     2 → would underflow (decrement larger than current count)

   The original always re-stores the byte (even unchanged), so do the
   same. */
u32 TakeChips_c(s32 chip_idx, s32 code, s32 qty)
{
    u8 *p;
    u32 curr;
    u32 newval;
    u32 ret;
    s32 diff;

    p = getOffsetToQuantityOfChipCodeMaybe_8021c7c_c(chip_idx, code, qty);
    curr = *p;
    newval = curr;
    ret = 1u;
    if (curr != 0u) {
        diff = (s32)curr - qty;
        ret = 0u;
        if (diff < 0) {
            ret = 2u;
        } else {
            newval = (u32)diff;
        }
    }
    *p = (u8)newval;
    return ret;
}
