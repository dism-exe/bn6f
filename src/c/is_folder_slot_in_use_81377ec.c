#include "types.h"

extern u8 unk_20018EC[];

// Returns the index (0..2) where the upper nibble of unk_20018EC[i]
// matches the upper nibble of (r0 >> 4) — actually the upper nibble
// of r0 since `lsr r0,r0,#4` shifts first. Returns 3 if no match.
u32 isFolderSlotInUse_81377EC_c(u32 r0)
{
    u32 nibble = r0 >> 4;
    u32 i;
    for (i = 0; i < 3; i++) {
        if ((unk_20018EC[i] >> 4) == nibble) {
            return i;
        }
    }
    return 3;
}
