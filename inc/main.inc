.ifndef INC_MAIN
.equ INC_MAIN, 0

/* Public Symbols */
.extern main_


/* External Symbols */
.include "asm03.inc"
.equ Load_cb_802F544, 0x802F544
.equ sub_802FDB0, 0x802FDB0
.equ objRender_802FE0C, 0x802FE0C
.equ sub_802FF2C, 0x802FF2C
.equ cb_jack_80341B6, 0x80341B6
.equ sub_8036ED4, 0x8036ED4
.equ sub_8036F24, 0x8036F24
.equ cb_8038AD0, 0x8038AD0
.equ cb_80395A4, 0x80395A4
.equ cb_803CBA6, 0x803CBA6
.equ cb_803CCD6, 0x803CCD6
.equ sub_803D1A8, 0x803D1A8
.equ cb_803D1CA, 0x803D1CA
.equ sub_803DE5C, 0x803DE5C
.equ sub_803E900, 0x803E900
.equ sub_803EBC8, 0x803EBC8
.equ sub_803F4C8, 0x803F4C8
.equ cb_803FB3C, 0x803FB3C
.equ sub_803FCF0, 0x803FCF0
.equ chatbox_onUpdate_803FEB4, 0x803FEB4
.equ sub_804657C, 0x804657C
.equ sub_80467D8, 0x80467D8
.equ cb_8046CF8, 0x8046CF8
.equ cb_8048FD4, 0x8048FD4
.equ cb_8049E04, 0x8049E04
.equ cb_804A304, 0x804A304

.include "start.inc"
.equ start_800023C, 0x800023C
.equ start_800024C, 0x800024C

.include "asm32.inc"
.equ menuControl_cb_openSubmenu, 0x811F774

.include "asm37.inc"
.equ sub_813D60C, 0x813D60C
.equ sub_813D960, 0x813D960
.equ reqBBS_cb_draw_813E0A4, 0x813E0A4
.equ reqBBS_cb_813F404, 0x813F404
.equ sub_8144240, 0x8144240
.equ sub_814E8A0, 0x814E8A0
.equ sub_814EE2C, 0x814EE2C

.include "asm33.inc"
.equ menuControl_cb_email, 0x81279F8

.include "asm36.inc"
.equ cb_81382AC, 0x81382AC

.include "asm00.inc"
.equ sub_80007B2, 0x80007B2
.equ sub_80007BE, 0x80007BE
.equ CpuSet_ZeroFillWord, 0x80008E0
.equ sub_8000A3C, 0x8000A3C
.equ objRender_8000A44, 0x8000A44
.equ sub_8000E10, 0x8000E10
.equ sub_8001514, 0x8001514
.equ sub_800154C, 0x800154C
.equ sub_80015B4, 0x80015B4
.equ render_80015D0, 0x80015D0
.equ render_800172C, 0x800172C
.equ sub_8001778, 0x8001778
.equ main_static_80017EC, 0x80017EC
.equ renderPalletes_8001808, 0x8001808
.equ sub_8001820, 0x8001820
.equ sub_800182E, 0x800182E
.equ sub_8001850, 0x8001850
.equ sub_8001974, 0x8001974
.equ cb_call_200A880, 0x8001994
.equ loc_80019A0, 0x80019A0
.equ sub_8001AFC, 0x8001AFC
.equ PET_onUpdate_8001B94, 0x8001B94
.equ sub_8002368, 0x8002368
.equ getPalleteAndTransition_80023E0, 0x80023E0
.equ sub_80024A2, 0x80024A2
.equ sub_800260C, 0x800260C
.equ renderPalletesAndObjs_8002650, 0x8002650
.equ sub_80027C4, 0x80027C4
.equ handleObjSprites_800289C, 0x800289C
.equ sub_8003962, 0x8003962
.equ sub_8003AB2, 0x8003AB2
.equ sub_8004D48, 0x8004D48
.equ sub_8004DF0, 0x8004DF0
.equ cb_80050EC, 0x80050EC
.equ sub_80062EC, 0x80062EC
.equ engine_isScreeneffectAnimating, 0x80062F8
.equ subsystem_triggerTransition_800630A, 0x800630A
.equ sub_8006910, 0x8006910
.equ CpuSet_toolKit, 0x8006BC0
.equ sub_8006C22, 0x8006C22
.equ sub_80071B4, 0x80071B4
.equ zf_checkSameSubsystem_800A732, 0x800A732


/* Undeclared Symbols */
.equ dword_2009930, 0x2009930
.equ dword_2009CC0, 0x2009CC0
.equ dword_200A870, 0x200A870
.equ dword_3000E70, 0x3000E70
.equ loc_3006814, 0x3006814
.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
.equ KeyStatus, 0x4000130

.endif // INC_MAIN
