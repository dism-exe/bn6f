#include "types.h"

extern u8 eStruct200BC30_getJumpOffset00_c(void);

// Wrapper that just `push {lr}; bl eStruct200BC30_getJumpOffset00; pop {pc}`.
u8 eStruct200BC30_getJumpOffset00_pushpop_c(void)
{
    return eStruct200BC30_getJumpOffset00_c();
}
