.ifndef INC_MAIN
.equ INC_MAIN, 0

/* Public Symbols */
.extern main_


/* External Symbols */
.include "asm03.inc"
// .extern Load_cb_802F544
// .extern sub_802FDB0
// .extern objRender_802FE0C
// .extern sub_802FF2C
// .extern cb_jack_80341B6
// .extern sub_8036ED4
// .extern sub_8036F24
// .extern cb_8038AD0
// .extern cb_80395A4
// .extern cb_803CBA6
// .extern cb_803CCD6
// .extern sub_803D1A8
// .extern cb_803D1CA
// .extern sub_803DE5C
// .extern sub_803E900
// .extern sub_803EBC8
// .extern sub_803F4C8
// .extern cb_803FB3C
// .extern sub_803FCF0
// .extern chatbox_onUpdate_803FEB4
// .extern sub_804657C
// .extern sub_80467D8
// .extern cb_8046CF8
// .extern cb_8048FD4
// .extern cb_8049E04
// .extern cb_804A304

.include "start.inc"
// .extern start_800023C
// .extern start_800024C

.include "asm32.inc"
// .extern menuControl_cb_openSubmenu

.include "asm37.inc"
// .extern sub_813D60C
// .extern sub_813D960
// .extern reqBBS_cb_draw_813E0A4
// .extern reqBBS_cb_813F404
// .extern sub_8144240
// .extern sub_814E8A0
// .extern sub_814EE2C

.include "asm33.inc"
// .extern menuControl_cb_email

.include "asm36.inc"
// .extern cb_81382AC

.include "asm00.inc"
// .extern sub_80007B2
// .extern sub_80007BE
// .extern CpuSet_ZeroFillWord
// .extern sub_8000A3C
// .extern objRender_8000A44
// .extern sub_8000E10
// .extern sub_8001514
// .extern sub_800154C
// .extern sub_80015B4
// .extern render_80015D0
// .extern render_800172C
// .extern sub_8001778
// .extern main_static_80017EC
// .extern renderPalletes_8001808
// .extern sub_8001820
// .extern sub_800182E
// .extern sub_8001850
// .extern sub_8001974
// .extern cb_call_200A880
// .extern loc_80019A0
// .extern sub_8001AFC
// .extern PET_onUpdate_8001B94
// .extern sub_8002368
// .extern getPalleteAndTransition_80023E0
// .extern sub_80024A2
// .extern sub_800260C
// .extern renderPalletesAndObjs_8002650
// .extern sub_80027C4
// .extern handleObjSprites_800289C
// .extern sub_8003962
// .extern sub_8003AB2
// .extern sub_8004D48
// .extern sub_8004DF0
// .extern cb_80050EC
// .extern sub_80062EC
// .extern engine_isScreeneffectAnimating
// .extern subsystem_triggerTransition_800630A
// .extern sub_8006910
// .extern CpuSet_toolKit
// .extern sub_8006C22
// .extern sub_80071B4
// .extern zf_checkSameSubsystem_800A732


/* Undeclared Symbols */
.equ dword_2009930, 0x2009930
.equ dword_2009CC0, 0x2009CC0
.equ dword_200A870, 0x200A870
.equ dword_3000E70, 0x3000E70
.equ loc_3006814, 0x3006814
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyStatus, 0x4000130

.endif // INC_MAIN
