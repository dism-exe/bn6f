.ifndef INC_ASM00_0
.equ INC_ASM00_0, 0

/* Public Symbols */
.global sub_80005AC
.global sub_80005C4
.global sound_play // () -> void
.global sound_bgmusic_play // (int a1) -> void
.global sub_80005F2
.global sub_800060A
.global sub_8000642
.global sub_800065A
.global sound_8000672
.global sub_800068A
.global sub_80006A2
.global sub_8000784
.global sub_80007B2
.global sub_80007BE
.global sub_80008B4
.global sub_80008C0
.global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
.global CpuFastSet_8000900 // (int a1, int a2) -> void
.global copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
.global CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
.global CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
.global CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
.global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
.global sub_800096C
.global sub_800098C
.global CpuFastSet_80009AC
.global sub_8000A3C
.global objRender_8000A44
.global loc_8000AC4
.global loc_8000AC8
.global loc_8000ACA
.global decompAndCopyGfx_8000B30 // (u32 *initRefs) -> void
.global decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
.global sub_8000C00
.global sub_8000C5C
.global sub_8000C72
.global sub_8000CDA
.global sub_8000D12
.global sub_8000D84
.global sub_8000DE0
.global sub_8000E10
.global sub_8000E28
.global sub_8000E3A
.global sub_8000EB6
.global sub_8000EE4
.global sub_8000F86
.global sub_8000FAC
.global sub_8001040
.global loc_8001048
.global sub_800107A
.global getPETNaviSelect // () -> u8
.global sub_80010BE
.global sub_80010C6
.global sub_80010D4
.global sub_80010EC
.global sub_8001158 // () -> void
.global sub_8001172
.global calcAngle_800117C
.global sub_800118A
.global sub_80011A0
.global sub_80011D6
.global sub_800120E
.global sub_8001330
.global sub_8001382
.global sub_800139A
.global sub_80013A2
.global sub_80014D4
.global sub_80014EC
.global sub_8001514
.global sub_800151C
.global sub_8001532
.global sub_800154C // () -> void
.global sub_8001562
.global sub_80015B4
.global render_80015D0
.global sub_80015FC
.global sub_8001708
.global render_800172C
.global sub_8001778
.global sub_8001780
.global sub_8001788
.global sub_80017A0
.global sub_80017AA
.global sub_80017E0
.global main_static_80017EC
.global off_8001800
.global renderPalletes_8001808
.global sub_8001820
.global sub_800182E
.global sub_800183C
.global sub_8001850
.global sub_800187C
.global sub_8001890
.global copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.global sub_80018D0
.global sub_80018E0
.global sub_8001930
.global sub_800195C
.global sub_8001974
.global cb_call_200A880
.global loc_80019A0
.global locret_80019B2
.global loc_80019B4
.global sub_8001AFC
.global sub_8001B1C
.global sub_8001B6C
.global sub_8001B84
.global PET_onUpdate_8001B94
.global sub_8002354
.global sub_8002368
.global sub_8002378
.global sub_800239A
.global sub_80023A8
.global getPalleteAndTransition_80023E0
.global sub_8002468
.global sub_8002484
.global sub_80024A2
.global sub_80024AE
.global sub_80024C0
.global sub_800260C
.global renderPalletesAndObjs_8002650
.global sub_8002668
.global loc_8002676
.global sub_8002694


/* External Symbols */
.include "start.inc"
// .global start_800024C

.include "sprite.inc"
// .global sprite_handleObjSprites_800289C

.include "asm00_1.inc"
// .global sub_8003534
// .global sub_800355C
// .global sub_8003566
// .global sub_8003694
// .global dword_8006660
// .global unk_80066E0

.include "asm00_2.inc"
// .global sub_80137E6
// .global sub_80137FE

.include "asm03_0.inc"
// .global sub_802F110
// .global sub_802F114 // (int a1) -> void
// .global sub_802F12C // (int a1, int a2) -> void
// .global loc_802F130
// .global sub_802F164 // (int a1, int a2) -> zf
// .global zf_802F168
// .global sub_802F1FC // (int a3, int a2) ->
// .global sub_802FE28
// .global sub_8030808
// .global off_803385C
// .global dword_8033878
// .global sub_803F79E
// .global sub_803F838

.include "asm32.inc"
// .global sub_81207F8

.include "reqBBS.inc"
// .global reqBBS_813E5DC
// .global reqBBS_813F9A0

.include "asm37_1.inc"
// .global SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
// .global SWI_CpuSet // (void *src, void *dest, int mode) -> void
// .global SWI_Div
// .global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
// .global SWI_Sqrt
// .global sub_814E87C
// .global sub_814E918
// .global m4a_SongNumStart
// .global sub_814E9F0
// .global sub_814EA58
// .global sub_814EAF0
// .global sub_814EB1C
// .global sub_814F00C
// .global sub_814F988
// .global sub_814F9AC
// .global sub_814FA14


/* Undeclared Symbols */
.equ dword_2001120, 0x2001120
.equ dword_20013F0, 0x20013F0
.equ dword_20018E8, 0x20018E8
.equ unk_2006840, 0x2006840
.equ byte_20094C0, 0x20094C0
.equ word_20094C2, 0x20094C2
.equ dword_20094C4, 0x20094C4
.equ dword_20094C8, 0x20094C8
.equ byte_20094D4, 0x20094D4
.equ dword_2009690, 0x2009690
.equ dword_2009694, 0x2009694
.equ byte_20097A0, 0x20097A0
.equ byte_20097A1, 0x20097A1
.equ byte_20097A2, 0x20097A2
.equ dword_20097A4, 0x20097A4
.equ dword_20097A8, 0x20097A8
.equ sCamera, 0x2009980
.equ dword_2009CC0, 0x2009CC0
.equ dword_200A490, 0x200A490
.equ byte_200A494, 0x200A494
.equ dword_200A498, 0x200A498
.equ byte_200A6A0, 0x200A6A0
.equ dword_200A6A4, 0x200A6A4
.equ dword_200A6A8, 0x200A6A8
.equ dword_200A6AC, 0x200A6AC
.equ dword_200A880, 0x200A880
.equ dword_200A884, 0x200A884
.equ dword_200A888, 0x200A888
.equ dword_200AC1C, 0x200AC1C
.equ dword_200B4B0, 0x200B4B0
.equ dword_200B4B4, 0x200B4B4
.equ dword_200B4B8, 0x200B4B8
.equ dword_200B4BC, 0x200B4BC
.equ dword_200B4C0, 0x200B4C0
.equ byte_200BE70, 0x200BE70
.equ dword_200BE7C, 0x200BE7C
.equ unk_200DF40, 0x200DF40
.equ unk_200E440, 0x200E440
.equ unk_200E580, 0x200E580
.equ unk_200E640, 0x200E640
.equ unk_200F388, 0x200F388
.equ unk_200F390, 0x200F390
.equ unk_2010490, 0x2010490
.equ unk_20104D0, 0x20104D0
.equ unk_2010510, 0x2010510
.equ unk_2010550, 0x2010550
.equ unk_2010590, 0x2010590
.equ unk_20105D0, 0x20105D0
.equ unk_2010610, 0x2010610
.equ unk_2010650, 0x2010650
.equ unk_2010690, 0x2010690
.equ unk_20106D0, 0x20106D0
.equ unk_2010710, 0x2010710
.equ unk_2010750, 0x2010750
.equ unk_2010790, 0x2010790
.equ unk_20107D0, 0x20107D0
.equ unk_2010810, 0x2010810
.equ unk_2010850, 0x2010850
.equ unk_2010890, 0x2010890
.equ unk_20108D0, 0x20108D0
.equ unk_2010910, 0x2010910
.equ unk_2010950, 0x2010950
.equ unk_2010990, 0x2010990
.equ unk_20109D0, 0x20109D0
.equ unk_2010A10, 0x2010A10
.equ unk_2010A50, 0x2010A50
.equ unk_2010A90, 0x2010A90
.equ unk_2010AD0, 0x2010AD0
.equ unk_2010B10, 0x2010B10
.equ unk_2010B50, 0x2010B50
.equ byte_2010B90, 0x2010B90
.equ unk_2010BA0, 0x2010BA0
.equ unk_2010BE0, 0x2010BE0
.equ unk_2010C20, 0x2010C20
.equ unk_2010C60, 0x2010C60
.equ unk_3001550, 0x3001550
.equ unk_3001710, 0x3001710
.equ unk_3001730, 0x3001730
.equ unk_3001750, 0x3001750
.equ word_3001960, 0x3001960
.equ unk_3001B40, 0x3001B40
.equ unk_3001B60, 0x3001B60
.equ copyTiles_iram, 0x3005E80
.equ sub_3005EBA, 0x3005EBA
.equ loc_3006440, 0x3006440
.equ LCDControl, 0x4000000
.equ VerticalCounter_LY_, 0x4000006
.equ BG0Control, 0x4000008
.equ Window0HorizontalDimensions, 0x4000040
.equ MosaicSize, 0x400004C
.equ ColorSpecialEffectsSelection, 0x4000050
.equ Brightness_Fade_In_Out_Coefficient, 0x4000054
.equ DMA0SourceAddress, 0x40000B0
.equ DMA0WordCount, 0x40000B8
.equ DMA1SourceAddress, 0x40000BC
.equ DMA1WordCount, 0x40000C4
.equ DMA2SourceAddress, 0x40000C8
.equ DMA2WordCount, 0x40000D0
.equ DMA3SourceAddress, 0x40000D4
.equ DMA3WordCount, 0x40000DC
.equ dword_86A5500, 0x86A5500
.equ dword_86A5520, 0x86A5520
.equ dword_86BEC80, 0x86BEC80

.endif // INC_ASM00_0
