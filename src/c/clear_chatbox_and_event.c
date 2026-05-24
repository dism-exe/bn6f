#include "types.h"

// Toolkit.ChatboxPtr at offset 0x2c -> 0x020093DC.
#define eToolkit_ChatboxPtr (*(u32 **)0x020093DCu)

extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);
extern void chatbox_clear_eFlags2009F38_c(u32 mask);

void clearChatboxAndEvent_c(void)
{
    ZeroFillByWord_c(eToolkit_ChatboxPtr, 0x230);
    chatbox_clear_eFlags2009F38_c(0xC8);
}
