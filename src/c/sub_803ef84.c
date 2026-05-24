#include "types.h"

extern u32 eLinkState[];

// eLinkState[0x34/4] (= eCamera.unk_84 alias) = arg.
void sub_803EF84_c(u32 v)
{
    eLinkState[0x34u / 4u] = v;
}
