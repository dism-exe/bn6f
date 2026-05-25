#include "EWRAM.h"

extern u32 TestEventFlag_c(u32 flag);
extern u32 reqBBS_814084C_c(u32 r0);
extern u8  byte_8140828[];

// Returns 1 iff EVENT_173A is set AND reqBBS_814084C(gui->Unk_0F)
// returns nonzero AND byte_8140828[gui->TotalPointsIdx] is nonzero
// AND that byte is <= gui->NumPoints. Side effect on success:
// gui->TotalPointsIdx++.
u32 reqBBS_81407D8_impl(void)
{
    ReqBBSGui *gui;
    u32 idx_byte;

    if (!TestEventFlag_c(0x173Au)) return 0;
    if (!reqBBS_814084C_c(sReqBBS_GUI->Unk_0F)) return 0;

    gui = sReqBBS_GUI;
    idx_byte = byte_8140828[gui->TotalPointsIdx];
    if (idx_byte == 0) return 0;
    if (idx_byte > gui->NumPoints) return 0;

    gui->TotalPointsIdx = (u8)(gui->TotalPointsIdx + 1u);
    return 1;
}

// Callers `bl reqBBS_81407D8; tst r0, r0; beq …` — flag-dep.
DECOMP_FLAG_WRAPPER(reqBBS_81407D8_c, reqBBS_81407D8_impl)
