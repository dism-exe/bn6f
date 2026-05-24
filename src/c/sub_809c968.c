#include "EWRAM.h"

// Forward decls — these all live in src/c/, reachable via in-range bl
// since we're all in .c_code.
extern u32  sub_8034C36_c(void);
extern u32  TestEventFlag_c(u32 flag);
extern u32  IsCutsceneScriptNonNull_c(void);
extern void SetEventFlag_c(u32 flag);
extern void ClearEventFlag_c(u32 flag);
extern u32  CheckKeyItem_c(u32 item);
extern void StartCutscene_c(const u8 *script, u32 param);
extern void PlaySoundEffect_c(u32 sound_id);

// Linked ROM globals: the OW player object's per-coord byte 0x83
// (eOWPlayerObject lives at 0x02009F40), the 2D pointer table that
// maps (MapGroup-0x90, MapNumber) → interaction-area-array, and the
// CutsceneScript that runs when a jack-in succeeds.
extern u8  eOWPlayerObject[];
extern u32 off_809C0F0[];
extern u8  byte_809C354[];

// Player overworld "jack-in" gate: complicated state machine driven
// by EVENT_1B9 (jack-in pending) and EVENT_1BA (animation in
// progress). Three branches:
//   1) Both flags clear + MapGroup>=0x80 + no script + coord in
//      [0x30..0x33]: latch the coord into eOWPlayerObject[0x83],
//      set 1B9, return (no cleanup).
//   2) 1B9 set, 1BA clear: set 1BA, return (no cleanup).
//   3) Both 1B9 and 1BA set + coord==0: look up interaction at
//      table[map_group][map_number] + (saved_coord-0x30)*0x18.
//      Check Unk_10 (event flag gate) and CheckKeyItem(0x2C) >=
//      entry->Unk_0d+1. If OK → StartCutscene(byte_809C354, entry).
//      Else → PlaySoundEffect(CANT_JACK_IN). Either way → cleanup.
//   Any other path → cleanup (clear both 1B9 and 1BA, return).
//
// Returns void in spirit; the original is a `pop {r4-r7,pc}`-only
// epilogue and callers don't read r0.
void sub_809C968_c(void)
{
    GameState *gs;
    u8 coord;
    u8 saved_coord;
    u8 map_group;
    u8 map_number;
    u32 *level_table;
    u8 *entry;

    if (!sub_8034C36_c()) goto cleanup;
    if (!TestEventFlag_c(0x224u)) goto cleanup;

    if (TestEventFlag_c(0x1B9u)) {
        /* 1B9 already set */
        if (!TestEventFlag_c(0x1BAu)) {
            SetEventFlag_c(0x1BAu);
            return;
        }
        /* 1B9 + 1BA both set: check interaction */
        gs = eToolkit->GameStatePtr;
        coord = gs->CoordInteractionValue;
        if (coord != 0) goto cleanup;

        saved_coord = eOWPlayerObject[0x83];
        map_group = gs->MapGroup;
        map_number = gs->MapNumber;

        level_table = (u32 *)off_809C0F0[map_group - 0x90];
        if (level_table == 0) goto cleanup;
        entry = (u8 *)level_table[map_number];
        if (entry == 0) goto cleanup;
        entry += (saved_coord - 0x30) * 0x18u;

        if (TestEventFlag_c(*(u32 *)(entry + 0x10))) goto cleanup;

        if (CheckKeyItem_c(0x2Cu) < (u32)(entry[0xD] + 1)) {
            PlaySoundEffect_c(0x69u);  /* SOUND_CANT_JACK_IN */
            goto cleanup;
        }
        StartCutscene_c(byte_809C354, (u32)entry);
        goto cleanup;
    }

    /* 1B9 not set: latch coord if conditions met */
    gs = eToolkit->GameStatePtr;
    if (gs->MapGroup < 0x80) goto cleanup;
    if (IsCutsceneScriptNonNull_c()) goto cleanup;
    coord = gs->CoordInteractionValue;
    if (coord == 0) goto cleanup;
    if (coord < 0x30 || coord > 0x33) goto cleanup;

    eOWPlayerObject[0x83] = coord;
    SetEventFlag_c(0x1B9u);
    return;

cleanup:
    ClearEventFlag_c(0x1BAu);
    ClearEventFlag_c(0x1B9u);
}
