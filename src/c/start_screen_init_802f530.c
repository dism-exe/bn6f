#include "types.h"

#define eToolkit_MainJumptableIndexPtr (*(u8 **)0x020093B0u)  // toolkit + 0

extern u32 eStartScreen;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// Zeroes the StartScreen state (0x20 bytes) and resets the main
// jumptable index byte to 0 (handing control to startscreen_render).
void startScreen_init_802F530_c(void)
{
    ZeroFillByWord_c(&eStartScreen, 0x20);
    eToolkit_MainJumptableIndexPtr[0] = 0;
}
