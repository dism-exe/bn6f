#include "types.h"

extern void chatbox_clear_eFlags2009F38_c(u32 mask);

// r10 = ambient Toolkit*. Sets Chatbox.Visible = 0 and clears bits 0xC8
// in eFlags2009F38. Toolkit.ChatboxPtr is at offset 0x2C.
void chatbox_8040818_c(void)
{
    register u8 *r10p asm("r10");
    u8 *cb;
    asm volatile("" : "=r"(r10p));

    cb = *(u8 **)(r10p + 0x2C);
    cb[0] = 0;  // oChatbox_Visible
    chatbox_clear_eFlags2009F38_c(0xC8);
}
