#include "types.h"

extern void camera_writeUnk03_14_80301b2_c(u32 v03, u32 v14);

// r10 = ambient Toolkit*. Sets Camera.Unk_03 = 1 and Camera.Unk_14 to
// the address of the OWPlayerObject.Coords field.
// Toolkit.GameStatePtr = 0x3C; GameState.OverworldPlayerObjectPtr = 0x18;
// OWPlayerObject.Coords offset = 0x1C.
void cutsceneCamera_focusCameraOnPlayerMaybe_8036faa_c(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    u8 *opo;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    opo = *(u8 **)(gs + 0x18);
    camera_writeUnk03_14_80301b2_c(1, (u32)(opo + 0x1C));
}
