#include "types.h"

#define eToolkit_GameStatePtr (*(u8 **)0x020093ECu)

extern u8 byte_8037694[];      // 50 bytes (25 pairs)
extern u8 gameProgressBuffer_20010f0[];

// Copies the even-indexed byte of each ROM pair to gameProgressBuffer,
// then clears GameState.GameProgress.
void initGameProgressBuffer_803532c_c(void)
{
    u32 i;
    for (i = 0; i < 25; i++) {
        gameProgressBuffer_20010f0[i] = byte_8037694[i * 2];
    }
    eToolkit_GameStatePtr[6] = 0;
}
