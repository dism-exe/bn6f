#include "types.h"

extern u8 *off_803385C[];   // [REAL_WORLD_NUM_GROUPS]
extern u8 *off_8033878[];   // [REAL_WORLD_NUM_GROUPS] (some entries NULL)
extern void sub_80015FC_c(u32 idx);

#define INTERNET_MAP_GROUP_START 0x80

// Look up the music ID for (group, number) from the real-world or
// internet group tables, then forward to sub_80015FC.
void map_8001708_c(u32 group, u32 number)
{
    u8 **table;
    u8 *entry;

    if (group >= INTERNET_MAP_GROUP_START) {
        table = off_8033878;
        group -= INTERNET_MAP_GROUP_START;
    } else {
        table = off_803385C;
    }
    entry = table[group];
    sub_80015FC_c((u32)entry[number]);
}
