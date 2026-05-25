#include "EWRAM.h"

extern u32  sub_8034C36_c(void);
extern u32  reqBBS_81407D8_c(void);
extern void StartCutscene_c(const u8 *script, u32 param);
extern u8   byte_809CEB4[];

// Gate: only if sub_8034C36 says the player can move AND
// reqBBS_81407D8 says a new BBS request is ready: kick off the
// CutsceneScript at byte_809CEB4 with param = (TotalPointsIdx - 1
// + 0x32). The 0x32 base picks the right line of dialogue out of
// the cutscene's TalkScripts table.
void sub_809CF2C_c(void)
{
    u32 idx;

    if (!sub_8034C36_c()) return;
    if (!reqBBS_81407D8_c()) return;

    idx = sReqBBS_GUI->TotalPointsIdx;
    StartCutscene_c(byte_809CEB4, (idx - 1u) + 0x32u);
}
