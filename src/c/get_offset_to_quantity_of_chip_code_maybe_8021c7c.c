#include "types.h"

#define eToolkit_Unk2002230_Ptr (*(u8 **)0x020093FCu)  // toolkit + 0x4c

extern const u8 *getChip8021DA8_c(s32 which_chip);

// Multi-return: r0 = pointer into Unk2002230, r3 = matched-code index
// (0..3) or 0 if not found. agbcc honours `register asm("r3")` for
// the final return value because we keep the binding live through to
// the very last asm volatile barrier.
const u8 *getOffsetToQuantityOfChipCodeMaybe_8021c7c_c(
    s32 chip_idx, s32 search_item, s32 unused)
{
    const u8 *codes = getChip8021DA8_c(chip_idx);
    u32 i;
    u32 found;
    const u8 *result;

    found = 0;
    for (i = 0; i < 4; i++) {
        if (codes[i] == (u8)search_item) {
            found = i;
            break;
        }
    }

    result = eToolkit_Unk2002230_Ptr + 12 * (u32)chip_idx + found;

    {
        register u32 r3_out asm("r3") = found;
        asm volatile("" : "+r"(r3_out));
        (void)r3_out;
    }
    return result;
}
