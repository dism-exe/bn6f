#include "types.h"

extern u8 eStruct200ace0[];
extern u8 byte_200F410;
extern u8 eCamera[];
extern u32 dword_20096D0;

extern void SetPlayerCanMoveEventFlag_c(void);
extern void sub_8004702_c(void);
extern void ClearEventFlag_c(u32 flag);
extern void SetEventFlag_c(u32 flag);
extern void sub_800399A_c(void);
extern void sub_8003AEA_c(void);
extern void sub_811EC00_c(void);
extern void sub_800B110_c(void);
extern u32 sub_803C3E0_c(void);
extern void copy_8048C98_c(void);

// "EnterMap" GameState init — called via the cbGameState_80050EC
// jumptable when subsystem switches in. r10 = ambient Toolkit*.
//
// GameState offsets: SubsystemIndex=0, Unk_03=3, BattlePaused=0xA,
// CoordInteractionValue=0xE, BGMusicIndicator=0xF, Unk_10=0x10,
// Unk_11=0x11, Unk_15=0x15, EnterMapFadeParam1=0x16, ...Param2=0x17,
// Unk_74=0x74.
//
// eStruct200ace0 fields written: [0]=0, [0x18]=0, [0x20]=0, [0x1C]=0xFF.
void sub_8004D48_c(void)
{
    register u8 *r10p asm("r10");
    u8 *gs;
    asm volatile("" : "=r"(r10p));

    gs = *(u8 **)(r10p + 0x3C);
    gs[0x00] = 0;           // SubsystemIndex (trigger EnterMap)
    gs[0x16] = 8;           // EnterMapFadeParam1
    gs[0x17] = 0x10;        // EnterMapFadeParam2
    gs[0x0E] = 0;           // CoordInteractionValue
    gs[0x03] = 0;           // Unk_03
    gs[0x15] = 0;           // Unk_15
    gs[0x0A] = 0;           // BattlePaused
    *(u32 *)(gs + 0x74) = 0;
    gs[0x0F] = 0x63;        // BGMusicIndicator
    gs[0x11] = 0;
    gs[0x10] = 0;
    byte_200F410 = 0;

    eStruct200ace0[0x00] = 0;
    *(u32 *)(eStruct200ace0 + 0x18) = 0;
    *(u32 *)(eStruct200ace0 + 0x20) = 0;
    eStruct200ace0[0x1C] = 0xFF;

    SetPlayerCanMoveEventFlag_c();

    eCamera[0x4C] = 0;
    *(u8 *)&dword_20096D0 = 0;

    sub_8004702_c();

    ClearEventFlag_c(0x1703u);
    ClearEventFlag_c(0x171Bu);
    ClearEventFlag_c(0x1715u);   // EVENT_EVENT_CUR_DIR_LOCKED
    ClearEventFlag_c(0x172Du);

    sub_800399A_c();
    sub_8003AEA_c();
    sub_811EC00_c();
    sub_800B110_c();

    ClearEventFlag_c(0x91u);

    // Orig: `bl sub_803C3E0; beq skip; SetEventFlag(EVENT_91); skip:`
    // beq taken when r0 == 0, so SetEventFlag happens when r0 != 0.
    if (sub_803C3E0_c() != 0u) {
        SetEventFlag_c(0x91u);
    }
    copy_8048C98_c();
}
