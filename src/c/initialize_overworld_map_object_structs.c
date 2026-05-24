#include "EWRAM.h"

extern void InitializeStructsOfObjectType(u32 object_type);

// OVERWORLD_MAP_OBJECT is the first object-type enum value.
#define OVERWORLD_MAP_OBJECT 5

void InitializeOverworldMapObjectStructs_c(void)
{
    InitializeStructsOfObjectType(OVERWORLD_MAP_OBJECT);
}
