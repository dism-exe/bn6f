#include "EWRAM.h"

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);
extern void chatbox_clear_eFlags2009F38_c(u32 mask);

void clearChatboxAndEvent_c(void)
{
    ZeroFillByWord_c((u32 *)eToolkit->ChatboxPtr, 0x230);
    chatbox_clear_eFlags2009F38_c(0xC8);
}
