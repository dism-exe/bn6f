#include "types.h"

extern u32 DummyCutsceneScript[];
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// r10 = ambient Toolkit*. Resets the entire CutsceneState block then
// programs slot 1 with the supplied script + param. Slot1's "original"
// position is also recorded for later cutscene-skip checks. Slots 2/3/4
// get the dummy script, TextArchivePtr gets a hard-coded ROM addr
// (eTextScript202DA04), and Unk_34 gets the off_8036EC4 IO-base marker.
//
// Toolkit.CutsceneStatePtr = 0x10. CutsceneState fields:
//   0x04 Unk_04 (param), 0x1C/20/24/28 CutsceneScriptPos[1..4],
//   0x30 TextArchivePtr, 0x34 Unk_34, 0x40 originalCutsceneScriptPos_40.
// Total CutsceneState size = 0x90 (per the ZeroFillByWord call).
//
// 5 of the 46 ASM callsites do `bl ...; beq/bne`. The function leaves
// r0 = address of off_8036EC4 (always nonzero), so Z=0 after the call.
// Wrap with DECOMP_FLAG_WRAPPER so the C version delivers the same Z.
static u8 *start_cutscene_impl(u32 script_ptr, u32 param)
{
    register u8 *r10p asm("r10");
    u8 *cs;
    u32 dummy;
    asm volatile("" : "=r"(r10p));

    cs = *(u8 **)(r10p + 0x10);
    ZeroFillByWord_c((u32 *)cs, 0x90);

    *(u32 *)(cs + 0x1C) = script_ptr;       // CutsceneScriptPos
    *(u32 *)(cs + 0x40) = script_ptr;       // originalCutsceneScriptPos_40
    *(u32 *)(cs + 0x04) = param;

    dummy = (u32)DummyCutsceneScript;
    *(u32 *)(cs + 0x20) = dummy;
    *(u32 *)(cs + 0x24) = dummy;
    *(u32 *)(cs + 0x28) = dummy;
    *(u32 *)(cs + 0x30) = 0x202DA04u;       // eTextScript202DA04 ROM addr

    // off_8036EC4 ROM addr — return a stable nonzero value so callers'
    // `bl ...; beq/bne ...` matches the original (which left r0 = that ROM
    // address). The exact value doesn't have to match; only nonzero-ness.
    *(u32 *)(cs + 0x34) = 0x08036EC4u;
    return cs;  // return nonzero so wrapper's tst sets Z=0
}

DECOMP_FLAG_WRAPPER(StartCutscene_c, start_cutscene_impl)
