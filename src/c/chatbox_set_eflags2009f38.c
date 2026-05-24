#include "types.h"

extern u32 eFlags2009F38;

void chatbox_set_eFlags2009F38_c(u32 mask)
{
    eFlags2009F38 |= mask;
}
