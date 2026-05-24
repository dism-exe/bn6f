#include "types.h"

// Toolkit.GameStatePtr at offset 0x3c -> 0x020093EC.
// GameState.CurPETNavi at offset 0x1.
#define eToolkit_GameStatePtr (*(u8 **)0x020093ECu)

u8 GetCurPETNavi_c(void)
{
    return eToolkit_GameStatePtr[1];
}
