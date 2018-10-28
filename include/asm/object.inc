.ifndef INC_ASM_OBJECT
.equ INC_ASM_OBJECT, 0

/* Public Symbols */
.global object_timefreezeEnd
.global sub_800BDB2
.global sub_800BEDA
.global sub_800BF16
.global loc_800BF30
.global sub_800BF5C
.global sub_800BF66
.global dword_800BF74
.global off_800BF78
.global off_800BF7C
.global sub_800BF88
.global sub_800BFC4
.global sub_800C5E0
.global sub_800C8F0
.global object_getPanelParameters
.global sub_800C90A
.global object_crackPanel
.global object_crackPanelDup1
.global object_breakPanel
.global object_breakPanel_dup1
.global object_breakPanel_dup2
.global object_breakPanel_dup3
.global object_breakPanelLoud
.global object_panel_setPoison
.global object_highlightPanel
.global object_setPanelType
.global object_setPanelAlliance
.global object_setPanelAllianceTimerLong
.global object_setPanelAllianceTimerShort
.global object_setPanelTypeBlink
.global object_isCurrentPanelValid
.global object_isValidPanel
.global object_checkPanelParameters
.global object_isCurrentPanelSolid
.global object_isPanelSolid
.global object_highlightCurrentCollisionPanels
.global object_highlightPanelRegion
.global object_highlightPanelRegionBlue
.global object_hidePanel
.global object_getPanelsExceptCurrentFilterred
.global sub_800CEA0
.global sub_800CF14
.global sub_800CF42
.global sub_800CF70
.global sub_800CFA6
.global sub_800CFDC
.global sub_800D012
.global sub_800D06A
.global sub_800D086
.global sub_800D0BC
.global sub_800D120
.global sub_800D15A
.global sub_800D3FE
.global sub_800D45C
.global sub_800D4C2
.global sub_800D4D0
.global sub_800D58C
.global sub_800D5F0
.global sub_800D618
.global sub_800D668
.global sub_800E24C
.global sub_800E258
.global sub_800E276 // (int a1, int a2) -> (int n1, int n2)
.global sub_800E29C // () -> void
.global sub_800E2AC
.global sub_800E2C0
.global sub_800E2C2
.global object_getFlipDirection_800E2CA // () -> int
.global object_getFlipDirection // (int a1, int a2) -> int
.global object_subtractHP
.global object_addHP
.global sub_800E2FC
.global sub_800E3BE
.global sub_800E3DE
.global object_calculateFinalDamage2
.global sub_800E456 // () -> int
.global sub_800E45E
.global sub_800E468
.global sub_800E5AC
.global object_canMove
.global sub_800E5FC
.global sub_800E618
.global sub_800E680
.global sub_800E6E8
.global sub_800E708
.global sub_800E730
.global sub_800E994
.global object_setCounterTime
.global sub_800E9FA
.global sub_800EA0E
.global sub_800EA22
.global sub_800EA90
.global sub_800EABA
.global sub_800EAC4
.global sub_800EADA
.global object_setInvulnerableTime
.global sub_800EB08
.global sub_800EB26
.global sub_800EB6C
.global object_spawnHiteffect
.global object_getEnemyByNameRange
.global sub_800EC3C
.global sub_800EC48
.global sub_800EC56
.global sub_800EC80
.global sub_800ED00
.global object_createAIData


/* External Symbols */
.include "asm/asm00_0.inc"
// .global sound_play // () -> void
// .global ZeroFillHalfword
// .global ZeroFillWord // (void *memBlock, int size) -> void
// .global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
// .global sub_8000E30
// .global sub_8001532
// .global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void

.include "asm/asm00_1.inc"
// .global object_freeMemory
// .global battle_isPaused
// .global battle_isTimeStop
// .global battle_clearFlags
// .global battle_networkInvert
// .global sub_800ABC6
// .global sub_800B884
// .global sub_800B892
// .global sub_800B89C
// .global sub_800B8AC
// .global sub_800B8D8

.include "asm/asm00_2.inc"
// .global sub_80103BC
// .global sub_8014150
// .global sub_80182B4
// .global off_8019B78
// .global dword_8019C34
// .global object_setFlag // (int a1) -> void
// .global object_clearFlag // (int bitfield) -> void
// .global object_getFlag // () -> int
// .global sub_801A16C
// .global sub_801A176
// .global sub_801A180
// .global sub_801BDDE
// .global sub_801E754
// .global loc_801E792

.include "asm/asm03_0.inc"
// .global sub_802CE10
// .global sub_802CE78
// .global sub_802CEA6
// .global sub_802D234
// .global get_802D246 // () -> int

.include "asm/asm31.inc"
// .global sub_80C5B76
// .global sub_80E05F6
// .global sub_80E08C4
// .global sub_80E09EE
// .global sub_80E37D2
// .global sub_80E4B34
// .global sub_80E9BDC

.include "data/dat38_85.inc"
// .global byte_86DFA98
// .global dword_86E0458
// .global dword_86E0478
// .global byte_86E0498
// .global byte_86E04D8
// .global byte_86E04F8
// .global byte_86E0518
// .global byte_86E0538
// .global byte_86E0558
// .global byte_86E0578
// .global byte_86E0598
// .global byte_86E05B8
// .global byte_86E05D8
// .global byte_86E05F8
// .global byte_86E0618
// .global byte_86E0638
// .global byte_86E0658
// .global byte_86E0678
// .global byte_86E06D8
// .global byte_86E06F8
// .global byte_86E0718
// .global byte_86E0738
// .global byte_86E0758
// .global byte_86E0778
// .global byte_86E0798
// .global byte_86E07B8
// .global byte_86E07D8
// .global byte_86E07F8
// .global byte_86E0818
// .global byte_86E0838
// .global byte_86E0858
// .global byte_86E0878
// .global byte_86E0918
// .global byte_86E0938
// .global byte_86E0958
// .global byte_86E0998
// .global byte_86E09B8
// .global byte_86E09D8
// .global dword_86F047C
// .global dword_86F0D7C


/* Undeclared Symbols */
// .equ unk_2034010, 0x2034010
// .equ unk_2034018, 0x2034018
// .equ byte_2034019, 0x2034019
// .equ byte_203401A, 0x203401A
// .equ byte_203401B, 0x203401B
// .equ byte_203401C, 0x203401C
// .equ byte_203401D, 0x203401D
// .equ word_203401E, 0x203401E
// .equ unk_2034080, 0x2034080
// .equ dword_20340FC, 0x20340FC
// .equ byte_2036740, 0x2036740
// .equ byte_2036742, 0x2036742
// .equ byte_2036743, 0x2036743
// .equ byte_2036744, 0x2036744
// .equ byte_2036745, 0x2036745
// .equ byte_2036746, 0x2036746
// .equ byte_2036747, 0x2036747
// .equ byte_2036748, 0x2036748
// .equ byte_2036749, 0x2036749
// .equ byte_203674A, 0x203674A
// .equ byte_203674B, 0x203674B
// .equ byte_203674C, 0x203674C
// .equ byte_203674D, 0x203674D
// .equ byte_2039AE0, 0x2039AE0
// .equ byte_2039AE1, 0x2039AE1
// .equ byte_2039AE6, 0x2039AE6
// .equ byte_2039AE7, 0x2039AE7
// .equ byte_2039AE8, 0x2039AE8
// .equ byte_2039AE9, 0x2039AE9
// .equ byte_2039AEA, 0x2039AEA
// .equ byte_2039AEB, 0x2039AEB
// .equ byte_2039AEC, 0x2039AEC
// .equ byte_2039AED, 0x2039AED
// .equ unk_2039C00, 0x2039C00
// .equ byte_2039C02, 0x2039C02
// .equ dword_2039C18, 0x2039C18
// .equ byte_203CB04, 0x203CB04
// .equ byte_203CF00, 0x203CF00
// .equ byte_203F6A0, 0x203F6A0
// .equ byte_203F6B0, 0x203F6B0
// .equ byte_203F6B1, 0x203F6B1
// .equ byte_203F6B2, 0x203F6B2
// .equ byte_203F6B3, 0x203F6B3
// .equ unk_30019A0, 0x30019A0
// .equ unk_30019C0, 0x30019C0
// .equ unk_30019E0, 0x30019E0
// .equ unk_3001A20, 0x3001A20
// .equ unk_3001A40, 0x3001A40
// .equ unk_3001A60, 0x3001A60
// .equ copyTiles_iram, 0x3005E80
// .equ loc_30078C8, 0x30078C8
// .equ sub_30078E0, 0x30078E0
// .equ sub_3007958, 0x3007958
// .equ sub_30079A4, 0x30079A4

.endif // INC_ASM_OBJECT
