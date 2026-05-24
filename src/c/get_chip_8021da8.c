#include "types.h"

extern u8 ChipDataArr_8021DA8[];

// ChipData entries are 44 bytes; return &arr[which_chip * 44].
// Original ASM is just `mul r0, #44; add r0, r1; mov pc, lr`.
const u8 *getChip8021DA8_c(s32 which_chip)
{
    return &ChipDataArr_8021DA8[which_chip * 44];
}
