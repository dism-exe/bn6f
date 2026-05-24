#include "types.h"

extern u8 eOverworldNPCObjects[];

// For each of the 16 NPC objects (entries of 0xD8 bytes), clear the
// u32 at relative offset 0xA0 + 0x24 = 0xC4.
void sub_8004702_c(void)
{
    u32 i;
    for (i = 0; i < 16; i++) {
        *(u32 *)(&eOverworldNPCObjects[i * 0xD8 + 0xC4]) = 0;
    }
}
