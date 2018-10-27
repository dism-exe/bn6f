.ifndef INC_ASM_ASM29
.equ INC_ASM_ASM29, 0

/* Public Symbols */
.global ho_80A4984
.global loc_80A4A98
.global loc_80A4BDC
.global loc_80A51C4
.global loc_80A5428
.global loc_80A54F0
.global loc_80A57AC
.global loc_80A5AD4
.global sub_80A6A16
.global loc_80A6E98
.global loc_80A72B4
.global loc_80A77A8
.global loc_80A781C
.global loc_80A78B8
.global loc_80A7C84
.global loc_80A7D90
.global loc_80A8208
.global loc_80A8394
.global loc_80A8654
.global loc_80A8728
.global loc_80A87F0
.global loc_80A8870
.global loc_80A89DC
.global loc_80A8AB4
.global loc_80A8E74
.global loc_80A92B8
.global loc_80A9430
.global loc_80A9658
.global loc_80A9824
.global loc_80A98D4
.global loc_80A9A0C
.global loc_80A9B70
.global loc_80A9D10
.global loc_80A9ECC
.global loc_80A9F58
.global sub_80AA004
.global loc_80AA058
.global sub_80AA104
.global loc_80AA140
.global loc_80AA1E0
.global loc_80AA2D8
.global loc_80AA374
.global sub_80AA4C0
.global sub_80AA5E4
.global sub_80AA5F4
.global sub_80AA86E
.global sub_80AA88C
.global sub_80AA8E0
.global sub_80AAB88
.global sub_80AABA4
.global sub_80AAC8C


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
// .global getPETNaviSelect // () -> u8
// .global sub_8001172
// .global calcAngle_800117C
// .global sub_800118A
// .global sub_80011D6
// .global sub_80014D4
// .global change_20013F0_800151C // () -> int
// .global sub_8001532

.include "asm/sprite.inc"
// .global sprite_loadAnimationData // () -> void
// .global sprite_update
// .global sprite_load // (int a1, int a2, int a3) ->
// .global sprite_setScaleParameters
// .global sub_8002C7A
// .global sub_8002CCE
// .global sprite_makeScalable
// .global sprite_makeUnscalable
// .global sprite_setPallete // (int pallete) -> void
// .global sprite_setAnimation // (u8 a1) -> void
// .global sprite_forceWhitePallete

.include "asm/asm00_1.inc"
// .global sub_8002DEA
// .global sub_8002E04
// .global sub_8002E14
// .global sub_8002E3C
// .global sub_8002E52
// .global sub_8002ED0
// .global sub_8002EF6
// .global sub_8002F2C
// .global sub_8002F5C
// .global sub_8002F90 // () -> void
// .global sub_8002FA6
// .global sub_8003694
// .global sub_80037AC
// .global sub_80047E0
// .global sub_80048B2
// .global sub_80062C8
// .global engine_isScreeneffectAnimating // () -> zf
// .global byte_80065E0
// .global byte_8006660

.include "asm/asm00_2.inc"
// .global sub_800F23C
// .global sub_80136CC
// .global sub_80137B6 // (int a1, int a2) -> u8
// .global sub_80137FE
// .global sub_80182B4

.include "asm/asm01.inc"
// .global off_8020170
// .global off_8020174
// .global off_8020178
// .global off_802017C
// .global off_8020180
// .global off_8020184
// .global off_8020188
// .global off_802018C
// .global off_8020190
// .global off_80201E4
// .global pt_8020240
// .global pt_802029C
// .global off_80202F8

.include "data/dat01.inc"
// .global dword_8020B9C
// .global dword_8020C5C
// .global dword_8020CE4

.include "asm/asm02.inc"
// .global getChip_8021DA8 // (int chip_idx) -> ChipData*
// .global sub_8021B2A
// .global sub_8021B92 // (int idx, int searchItem, int off) -> void*

.include "asm/asm03_0.inc"
// .global sub_802D266
// .global sub_802D652
// .global setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global SetEventFlag // (u16 entryFlagBitfield) -> void
// .global clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
// .global ClearEventFlag // (u16 entryFlagBitfield) -> void
// .global isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
// .global TestEventFlag // (u16 entryFlagBitfield) -> zf
// .global sub_80302A8
// .global sub_8031612
// .global sub_8031A7A

.include "asm/asm03_1.inc"
// .global sub_8034C36
// .global sub_8035694
// .global init_s_02011C50_8036E90
// .global s_2011C50_ptr_1C_isNull // () -> zf
// .global s_2011C50_8036F40 // () -> zf
// .global sub_8036F58
// .global sub_8036F70

.include "asm/chatbox.inc"
// .global chatbox_8045F3C
// .global chatbox_8045F4C

.include "data/dat22.inc"
// .global dword_808850C
// .global dword_80886B8

.include "data/dat23.inc"
// .global dword_8089D64
// .global dword_8089DF4
// .global dword_8089DF4

.include "asm/asm24.inc"
// .global dword_808C684

.include "asm/asm28_0.inc"
// .global sub_809BA14
// .global sub_809C890
// .global sub_809C940
// .global updateFlags_809E0B0 // () -> void
// .global sub_809E122
// .global sub_809E13C
// .global sub_809E1AE
// .global sub_809E2AE
// .global sub_809E2B8
// .global sub_809E3A2
// .global sub_809E462

.include "data/dat28.inc"
// .global dword_80A3A44

.include "data/dat29.inc"
// .global dword_80AAEA8

.include "asm/asm30_0.inc"
// .global sub_80AED50

.include "asm/asm32.inc"
// .global sub_811EBE0

.include "asm/asm33.inc"
// .global sub_81279A8

.include "asm/reqBBS.inc"
// .global reqBBS_81409D0 // (int a1) -> int
// .global reqBBS_81409E4
// .global reqBBS_81409F4
// .global reqBBS_setFlag_e17b0f7_8140A00
// .global reqBBS_clearFlag_8140A0C
// .global reqBBS_runDialog_8140A70
// .global dword_8140C60
// .global dword_8140C68
// .global dword_8140C7C
// .global dword_8140C90
// .global dword_8140CA4
// .global dword_8140CB8
// .global dword_8140CCC
// .global dword_8140CE0
// .global dword_8140CF4
// .global dword_8140D10
// .global dword_8140D1C
// .global dword_8140D58
// .global dword_8140D6C
// .global dword_8140E6C
// .global dword_8140FBC
// .global dword_814122C
// .global dword_81414CC
// .global dword_814154C
// .global dword_81415F4
// .global dword_814172C

.include "asm/asm37_1.inc"
// .global sub_81418E4
// .global sub_81418F0
// .global sub_8142050
// .global sub_8142068
// .global sub_8142080
// .global sub_81420B0
// .global sub_81420C8
// .global sub_81420F0
// .global sub_8142184
// .global sub_8142190
// .global sub_81421D0
// .global sub_81421D8
// .global sub_8142204
// .global sub_81427A4
// .global sub_8142816
// .global sub_8142868
// .global sub_8142896
// .global sub_81428C2
// .global sub_8142990
// .global sub_8142B04
// .global sub_8143088
// .global sub_81430B6
// .global sub_81431F8
// .global sub_8143204
// .global sub_8143220
// .global sub_81433E4
// .global dword_81436B4
// .global dword_81436C4
// .global dword_81436E4
// .global dword_8143704
// .global dword_8143724
// .global dword_814375C
// .global dword_8143794
// .global dword_81437CC
// .global sub_8143B5E


/* Undeclared Symbols */
// .equ unk_2000310, 0x2000310
// .equ dword_2000B30, 0x2000B30
// .equ dword_2000B30, 0x2000B30
// .equ unk_2000B40, 0x2000B40
// .equ byte_2000EC0, 0x2000EC0
// .equ byte_2000EC6, 0x2000EC6
// .equ byte_2000ED6, 0x2000ED6
// .equ dword_2000F88, 0x2000F88
// .equ dword_2000F94, 0x2000F94
// .equ dword_2000F98, 0x2000F98
// .equ dword_2000F9C, 0x2000F9C
// .equ unk_2001130, 0x2001130
// .equ unk_20018B0, 0x20018B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOverworldNPCObjects, 0x20057B0
// .equ eOWPlayerObject, 0x2009F40
// .equ dword_2009F5C, 0x2009F5C
// .equ pCoords, 0x2009F60
// .equ dword_2009F64, 0x2009F64
// .equ iCurrFrame, 0x200A210
// .equ byte_200A6A0, 0x200A6A0
// .equ dword_200A6AC, 0x200A6AC
// .equ unk_2010000, 0x2010000
// .equ unk_2011A90, 0x2011A90
// .equ unk_2011B30, 0x2011B30
// .equ unk_2011C50, 0x2011C50
// .equ byte_2011C58, 0x2011C58
// .equ dword_2011EEC, 0x2011EEC
// .equ unk_2013960, 0x2013960
// .equ dword_2033000, 0x2033000
// .equ dword_203300C, 0x203300C
// .equ unk_2036750, 0x2036750

.endif // INC_ASM_ASM29
