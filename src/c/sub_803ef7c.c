#include "types.h"

extern u32 eLinkState[];

// Returns eLinkState[0x34/4] (the unk_84 field).
u32 sub_803EF7C_c(void)
{
    return eLinkState[0x34 / 4];
}
