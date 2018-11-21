.ifndef INC_ASM_MAIN
.equ INC_ASM_MAIN, 0

/* Public Symbols */
.global main_


/* External Symbols */
.include "asm/asm38.inc"
// .global loc_3006814

.include "asm/start.inc"
// .global start_800023C // () -> void
// .global start_800024C

.include "asm/asm00_0.inc"
// .global sub_80007B2
// .global sub_80007BE
// .global ZeroFillByWord // (void *memBlock, int size) -> void
// .global sub_8000A3C
// .global objRender_8000A44
// .global sub_8000E10
// .global sub_8001514 // () -> void
// .global rng_800154C // () -> void
// .global sub_80015B4
// .global render_80015D0
// .global render_800172C
// .global sub_8001778
// .global main_static_80017EC
// .global renderPalletes_8001808
// .global sub_8001820
// .global sub_800182E
// .global sub_8001850
// .global sub_8001974
// .global cb_call_200A880
// .global sub_80019A0
// .global sub_8001AFC
// .global PET_onUpdate_8001B94
// .global sub_8002368
// .global getPalleteAndTransition_80023E0
// .global sub_80024A2
// .global sub_800260C
// .global renderPalletesAndObjs_8002650

.include "asm/sprite.inc"
// .global sub_80027C4
// .global sprite_handleObjSprites_800289C

.include "asm/asm00_1.inc"
// .global sub_8003962
// .global sub_8003AB2
// .global sub_8004D48
// .global sub_8004DF0
// .global cb_80050EC // () -> void
// .global sub_80062EC
// .global engine_isScreeneffectAnimating // () -> zf
// .global subsystem_triggerTransition_800630A
// .global sub_8006910
// .global CpuSet_toolKit // () -> void
// .global sub_8006C22
// .global sub_80071B4
// .global isSameSubsystem_800A732 // () -> zf

.include "asm/asm03_0.inc"
// .global Load_ho_802F544
// .global sub_802FDB0
// .global objRender_802FE0C
// .global sub_802FF2C

.include "asm/asm03_1.inc"
// .global ho_jackIn_80341B6
// .global sub_8036ED4
// .global sub_8036F24
// .global cb_8038AD0
// .global cb_80395A4
// .global cb_803CBA6
// .global cb_803CCD6
// .global sub_803D1A8 // () -> void
// .global cb_803D1CA
// .global sub_803DE5C
// .global sub_803E900
// .global sub_803EBC8
// .global clear_200AD04 // () -> void
// .global cb_803FB3C
// .global sub_803FCF0

.include "asm/chatbox.inc"
// .global chatbox_onUpdate_803FEB4

.include "asm/asm03_2.inc"
// .global sub_804657C // () -> void
// .global sub_80467D8
// .global cb_8046CF8
// .global cb_8048FD4
// .global cb_8049E04
// .global cb_804A304

.include "asm/asm32.inc"
// .global menuControl_cb_openSubmenu // () -> void

.include "asm/asm33.inc"
// .global menuControl_cb_email

.include "asm/asm36.inc"
// .global cb_81382AC

.include "asm/asm37_0.inc"
// .global sub_813D60C
// .global sub_813D960

.include "asm/reqBBS.inc"
// .global reqBBS_cb_draw_813E0A4
// .global reqBBS_cb_813F404

.include "asm/libs.inc"
// .global sub_8144240
// .global sub_814E8A0
// .global sub_814EE2C


/* Undeclared Symbols */
// .equ dword_2009930, 0x2009930
// .equ dword_2009CC0, 0x2009CC0
// .equ dword_200A870, 0x200A870
// .equ off_3000E70, 0x3000E70
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyStatus, 0x4000130
.equ IWRAMRoutinesROMLocation, 0x81D6000

.endif // INC_ASM_MAIN
