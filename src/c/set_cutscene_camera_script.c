#include "types.h"

extern u32 eCutsceneCameraInfo[];
extern void camera_writeUnk03_14_80301b2_c(u32 v03, u32 v14);

// Set the cutscene camera script pointer + reset timer/command-init,
// then poke camera Unk_03=0 and camera Unk_14 = &eCutsceneCameraInfo.
void SetCutsceneCameraScript_c(u32 script_ptr)
{
    eCutsceneCameraInfo[0] = script_ptr;          // CutsceneCameraScriptPtr
    eCutsceneCameraInfo[1] = 0;                   // Timer_CommandInitialized (offset 4)
    camera_writeUnk03_14_80301b2_c(0, (u32)eCutsceneCameraInfo);
}
