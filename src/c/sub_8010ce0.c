#include "EWRAM.h"

extern const u8 *getChip8021DA8_c(s32 which_chip);

/* Looks up the +0x1A hword of chip `idx`.  If it's below 0x3E9 the
   value is returned directly.  Otherwise it indexes a secondary
   per-chip table at 0x08020E5E (= 0x08020E54 + 10), stride 22, with
   key (val - 0x3E9), and returns *that* hword. */
u32 sub_8010CE0_c(s32 idx)
{
    const u8 *chip = getChip8021DA8_c(idx);
    u32 val = *(u16 *)(chip + 26);
    if (val < 0x3E9u) {
        return val;
    }
    val -= 0x3E9u;
    return *(u16 *)(0x08020E5Eu + val * 22u);
}
