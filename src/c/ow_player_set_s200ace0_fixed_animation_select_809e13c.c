#include "types.h"

extern u8 eStruct200ace0[];
extern void SetEventFlag_c(u32 flag);

// Set eStruct200ace0.owPlayerFixedAnimationSelect_02 = arg, then
// flag EVENT_1719 (= 0x1719).
void owPlayer_setS200ace0_fixedAnimationSelect_809e13c_c(u8 anim)
{
    eStruct200ace0[2] = anim;
    SetEventFlag_c(0x1719u);
}
