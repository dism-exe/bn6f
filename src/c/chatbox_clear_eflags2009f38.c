#include "types.h"

extern u32 eFlags2009F38;

// Clears bits in eFlags2009F38 indicated by mask.
void chatbox_clear_eFlags2009F38_c(u32 mask)
{
    eFlags2009F38 &= ~mask;
}
