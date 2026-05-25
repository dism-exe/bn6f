#include "EWRAM.h"

void CallBGScrollCallback0_c(void)
{
    ((void (*)(void))eBGScrollCallbacks->Callback0)();
}
