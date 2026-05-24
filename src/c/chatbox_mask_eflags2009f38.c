#include "types.h"

extern u32 eFlags2009F38;

u32 chatbox_mask_eFlags2009F38_impl(u32 mask)
{
    return mask & eFlags2009F38;
}

DECOMP_FLAG_WRAPPER(chatbox_mask_eFlags2009F38_c, chatbox_mask_eFlags2009F38_impl)
