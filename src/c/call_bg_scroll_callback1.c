#include "EWRAM.h"

void CallBGScrollCallback1_c(void)
{
    ((void (*)(void))eBGScrollCallbacks->Callback1)();
}
