.ifndef INC_ASM37_1
.equ INC_ASM37_1, 0

/* Public Symbols */
.global sub_81418E4
.global sub_81418F0
.global sub_8142050
.global sub_8142068
.global sub_8142080
.global sub_81420B0
.global sub_81420C8
.global sub_81420F0
.global sub_814216E
.global sub_8142184
.global sub_8142190
.global sub_814219C
.global sub_81421B2
.global sub_81421C8
.global sub_81421D0
.global sub_81421D8
.global sub_81421E0
.global sub_8142204
.global sub_8142224
.global sub_814223E
.global sub_81422B4
.global sub_81426CE
.global sub_81427A4
.global sub_81427CE
.global sub_8142816
.global sub_8142868
.global sub_8142896
.global sub_81428C2
.global sub_81428D4
.global sub_8142990
.global sub_81429CA
.global sub_8142A84
.global sub_8142ADA
.global sub_8142B04
.global sub_8142B58
.global sub_8142BB6
.global sub_8142BF4
.global sub_8142BFA
.global sub_8142C20
.global sub_8142C46
.global sub_8142C94
.global sub_8142CB0
.global sub_8142CC8
.global sub_8142D4C
.global sub_8143088
.global sub_81430B6
.global sub_8143198
.global sub_81431F8
.global sub_8143204
.global sub_8143220
.global sub_8143294
.global sub_81433DA
.global sub_81433E4
.global dword_81434E4
.global dword_81436B4
.global dword_81436C4
.global dword_81436E4
.global dword_8143704
.global dword_8143724
.global dword_814375C
.global dword_8143794
.global dword_81437CC
.global sub_8143B5E
.global sub_8143B88
.global sub_8143D4C
.global sub_8143DBC
.global sub_8143F90
.global sub_8144010
.global sub_81440D8
.global sub_8144240
.global sub_8144250
.global sub_81445F8
.global sub_8144CE0
.global sub_8144D04
.global sub_8144D18
.global sub_8144D24
.global sub_8144D30
.global sub_8144EEC
.global sub_814656C
.global sub_8146588
.global sub_81465BC
.global sub_814665C
.global sub_81466E4
.global sub_8146714
.global sub_8146724
.global sub_8146728
.global sub_8146738
.global sub_814673C
.global sub_81467A0
.global sub_8146808
.global sub_8146888
.global sub_81468BC
.global sub_81468C8
.global sub_81468E0
.global sub_81468F4
.global sub_814690C
.global sub_8146918
.global sub_814692C
.global sub_8146938
.global sub_814695C
.global sub_81469A0
.global sub_81469BC
.global sub_81469DC
.global sub_81469E8
.global sub_8146B70
.global sub_8146BB8
.global sub_8146BF4
.global sub_8146C20
.global sub_8146CFC
.global sub_8146D20
.global sub_8146D40
.global sub_8146D98
.global sub_8146E5C
.global sub_8146E60
.global sub_8146E78
.global sub_8147350
.global sub_81475D4
.global sub_8147B24
.global sub_8147B3C
.global sub_8147F98
.global sub_8148214
.global sub_8148224
.global sub_8148540
.global sub_8148884
.global sub_8148D24
.global sub_8148FC0
.global sub_8149568
.global sub_8149644
.global sub_8149718
.global sub_814A828
.global SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
.global SWI_CpuSet // (void *src, void *dest, int mode) -> void
.global SWI_Div
.global SWI_LZ77UnCompReadNormalWrite16bit
.global SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
.global SWI_Sqrt
.global sub_814D8F0
.global sub_814D954
.global sub_814D9C4
.global sub_814DA9C
.global loc_814E0DE
.global sub_814E8A0
.global sub_814E918
.global sub_814EA58
.global sub_814EE2C
.global sub_814F00C


/* External Symbols */
.include "asm00_0.inc"
// .global sound_play // () -> void
// .global CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
// .global CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
// .global initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
// .global loc_8000AC8
// .global sub_8000E3A
// .global getPETNaviSelect // () -> u8
// .global sub_80010D4
// .global sub_80010EC
// .global calcAngle_800117C
// .global sub_80014D4
// .global sub_800151C

.include "asm00_1.inc"
// .global sub_8003A64
// .global sub_8004822
// .global engine_isScreeneffectAnimating // () -> zf

.include "asm03_0.inc"
// .global sub_802D064
// .global sub_802F110
// .global sub_802F114 // (int a1) -> void
// .global sub_802F12C // (int a1, int a2) -> void
// .global loc_802F130
// .global sub_802F164 // (int a1, int a2) -> zf
// .global zf_802F168
// .global sub_802F1A8 // (int a3, int a2) -> void
// .global loc_802F1AC
// .global sub_80302A8
// .global sub_80307D8
// .global sub_8030A60
// .global sub_8036E90
// .global sub_8036F36
// .global sub_803C514
// .global sub_803DE88
// .global sub_803ECFC
// .global sub_803F030
// .global sub_803F05C
// .global sub_803F334
// .global sub_803F618

.include "chatbox.inc"
// .global chatbox_8045F3C

.include "asm03_1.inc"
// .global sub_8046818
// .global sub_8046854
// .global sub_80468BA
// .global sub_80468C6
// .global sub_804691A

.include "asm24.inc"
// .global dword_808BF48
// .global dword_808BF48

.include "asm28_0.inc"
// .global sub_809E1AE
// .global sub_809E2B8
// .global sub_809E462

.include "asm32.inc"
// .global sub_811E0BA
// .global sub_811E744
// .global sub_811EBE0

.include "asm37_0.inc"
// .global sub_813D760
// .global sub_813D78C
// .global sub_813D7B8
// .global sub_813D8C4
// .global sub_813D8D0
// .global sub_813D924
// .global sub_813D934
// .global sub_813D94C
// .global sub_813D960
// .global sub_813D978
// .global sub_813D98C

.include "reqBBS.inc"
// .global reqBBS_8140A00
// .global reqBBS_8140A0C


/* Undeclared Symbols */
.equ byte_2000780, 0x2000780
.equ byte_2000783, 0x2000783
.equ byte_200078B, 0x200078B
.equ byte_200078D, 0x200078D
.equ byte_200078E, 0x200078E
.equ dword_2000790, 0x2000790
.equ dword_2000790, 0x2000790
.equ dword_2000790, 0x2000790
.equ dword_2000790, 0x2000790
.equ dword_2000798, 0x2000798
.equ dword_20007A8, 0x20007A8
.equ unk_2000B40, 0x2000B40
.equ byte_2000B48, 0x2000B48
.equ byte_2000B49, 0x2000B49
.equ unk_2000BE0, 0x2000BE0
.equ byte_2000D20, 0x2000D20
.equ byte_2000D21, 0x2000D21
.equ dword_2000D28, 0x2000D28
.equ dword_2000D2C, 0x2000D2C
.equ byte_2001010, 0x2001010
.equ byte_2001013, 0x2001013
.equ byte_2001018, 0x2001018
.equ byte_2001019, 0x2001019
.equ byte_200101A, 0x200101A
.equ dword_200101C, 0x200101C
.equ dword_200101C, 0x200101C
.equ dword_200101C, 0x200101C
.equ dword_2001020, 0x2001020
.equ dword_2001024, 0x2001024
.equ dword_2001024, 0x2001024
.equ dword_2001024, 0x2001024
.equ dword_2001028, 0x2001028
.equ dword_2001028, 0x2001028
.equ dword_2001028, 0x2001028
.equ dword_2001028, 0x2001028
.equ dword_200102C, 0x200102C
.equ dword_2001030, 0x2001030
.equ dword_2001034, 0x2001034
.equ byte_2001038, 0x2001038
.equ byte_2001039, 0x2001039
.equ byte_200103A, 0x200103A
.equ byte_200103B, 0x200103B
.equ unk_2006670, 0x2006670
.equ word_2006674, 0x2006674
.equ byte_2006676, 0x2006676
.equ word_2006DFC, 0x2006DFC
.equ byte_2006DFE, 0x2006DFE
.equ byte_2006E00, 0x2006E00
.equ byte_2006E01, 0x2006E01
.equ word_2006E02, 0x2006E02
.equ word_2006E04, 0x2006E04
.equ unk_2006E08, 0x2006E08
.equ byte_2009470, 0x2009470
.equ unk_2009480, 0x2009480
.equ unk_2009750, 0x2009750
.equ unk_20098B0, 0x20098B0
.equ byte_200AF80, 0x200AF80
.equ byte_200AF81, 0x200AF81
.equ byte_200AF82, 0x200AF82
.equ byte_200AF84, 0x200AF84
.equ byte_200AF85, 0x200AF85
.equ byte_200BC50, 0x200BC50
.equ byte_200BC55, 0x200BC55
.equ word_200BC58, 0x200BC58
.equ byte_200BE70, 0x200BE70
.equ dword_200BE7C, 0x200BE7C
.equ byte_200DD10, 0x200DD10
.equ byte_200F440, 0x200F440
.equ byte_200F448, 0x200F448
.equ unk_200F44C, 0x200F44C
.equ byte_200F44D, 0x200F44D
.equ byte_200F450, 0x200F450
.equ byte_200F454, 0x200F454
.equ byte_200F460, 0x200F460
.equ byte_200F461, 0x200F461
.equ byte_200F462, 0x200F462
.equ byte_200F463, 0x200F463
.equ dword_200F464, 0x200F464
.equ dword_200F468, 0x200F468
.equ byte_200F46C, 0x200F46C
.equ byte_200F46D, 0x200F46D
.equ byte_200F470, 0x200F470
.equ byte_200F471, 0x200F471
.equ byte_200F472, 0x200F472
.equ byte_200F473, 0x200F473
.equ byte_200F474, 0x200F474
.equ byte_200F475, 0x200F475
.equ word_200F476, 0x200F476
.equ byte_200F488, 0x200F488
.equ byte_200F489, 0x200F489
.equ byte_200F670, 0x200F670
.equ byte_200F671, 0x200F671
.equ byte_200FDF4, 0x200FDF4
.equ byte_200FDF5, 0x200FDF5
.equ byte_200FE00, 0x200FE00
.equ byte_200FE01, 0x200FE01
.equ byte_200FE02, 0x200FE02
.equ byte_200FE03, 0x200FE03
.equ byte_200FE04, 0x200FE04
.equ byte_200FE05, 0x200FE05
.equ byte_200FE06, 0x200FE06
.equ byte_200FE07, 0x200FE07
.equ byte_200FE08, 0x200FE08
.equ byte_200FE09, 0x200FE09
.equ byte_200FE0A, 0x200FE0A
.equ byte_200FE0B, 0x200FE0B
.equ byte_200FE0C, 0x200FE0C
.equ byte_200FE0D, 0x200FE0D
.equ byte_200FE0E, 0x200FE0E
.equ byte_200FE0F, 0x200FE0F
.equ byte_200FE10, 0x200FE10
.equ byte_200FE11, 0x200FE11
.equ byte_200FE12, 0x200FE12
.equ word_200FE14, 0x200FE14
.equ word_200FE16, 0x200FE16
.equ word_200FE18, 0x200FE18
.equ word_200FE1A, 0x200FE1A
.equ word_200FE1C, 0x200FE1C
.equ word_200FE1E, 0x200FE1E
.equ dword_200FE20, 0x200FE20
.equ byte_200FE24, 0x200FE24
.equ word_200FE26, 0x200FE26
.equ byte_200FE30, 0x200FE30
.equ word_200FE32, 0x200FE32
.equ dword_200FE3C, 0x200FE3C
.equ dword_200FE40, 0x200FE40
.equ dword_200FE44, 0x200FE44
.equ word_200FE50, 0x200FE50
.equ byte_200FE60, 0x200FE60
.equ byte_200FE62, 0x200FE62
.equ unk_200FE63, 0x200FE63
.equ byte_200FE64, 0x200FE64
.equ byte_200FE80, 0x200FE80
.equ unk_200FE90, 0x200FE90
.equ byte_200FFE4, 0x200FFE4
.equ unk_200FFF0, 0x200FFF0
.equ unk_2010150, 0x2010150
.equ byte_201015A, 0x201015A
.equ byte_201015B, 0x201015B
.equ byte_201015C, 0x201015C
.equ byte_2010160, 0x2010160
.equ byte_2010164, 0x2010164
.equ word_2010168, 0x2010168
.equ byte_20101B0, 0x20101B0
.equ byte_20101B4, 0x20101B4
.equ byte_20101D0, 0x20101D0
.equ byte_20101D4, 0x20101D4
.equ byte_20101E0, 0x20101E0
.equ unk_20101EC, 0x20101EC
.equ byte_201021C, 0x201021C
.equ byte_201021D, 0x201021D
.equ byte_2010220, 0x2010220
.equ unk_2010230, 0x2010230
.equ byte_2010270, 0x2010270
.equ byte_2010274, 0x2010274
.equ byte_2010280, 0x2010280
.equ byte_2010284, 0x2010284
.equ byte_2010288, 0x2010288
.equ byte_201028C, 0x201028C
.equ byte_2010290, 0x2010290
.equ byte_2010291, 0x2010291
.equ byte_2010292, 0x2010292
.equ byte_2010293, 0x2010293
.equ unk_2010294, 0x2010294
.equ word_20102C6, 0x20102C6
.equ word_20102D0, 0x20102D0
.equ unk_20102E0, 0x20102E0
.equ byte_2010324, 0x2010324
.equ byte_2010328, 0x2010328
.equ unk_2010330, 0x2010330
.equ word_2010338, 0x2010338
.equ byte_201033C, 0x201033C
.equ byte_2010340, 0x2010340
.equ unk_2010350, 0x2010350
.equ word_2010352, 0x2010352
.equ byte_2010368, 0x2010368
.equ byte_2010390, 0x2010390
.equ byte_201039C, 0x201039C
.equ unk_20103A0, 0x20103A0
.equ byte_20103DC, 0x20103DC
.equ byte_20103E0, 0x20103E0
.equ byte_20103E4, 0x20103E4
.equ byte_20103F0, 0x20103F0
.equ byte_20103F4, 0x20103F4
.equ byte_20103F8, 0x20103F8
.equ word_2010400, 0x2010400
.equ byte_2010408, 0x2010408
.equ unk_2010410, 0x2010410
.equ dword_2010418, 0x2010418
.equ word_2010420, 0x2010420
.equ word_2010428, 0x2010428
.equ byte_2010430, 0x2010430
.equ byte_2010434, 0x2010434
.equ unk_2010440, 0x2010440
.equ byte_201047C, 0x201047C
.equ byte_2010480, 0x2010480
.equ unk_2010690, 0x2010690
.equ byte_2010B90, 0x2010B90
.equ dword_2010CA0, 0x2010CA0
.equ dword_2010CAC, 0x2010CAC
.equ dword_2010CB0, 0x2010CB0
.equ dword_2010CC0, 0x2010CC0
.equ dword_2010CC4, 0x2010CC4
.equ dword_2010CC8, 0x2010CC8
.equ dword_2010CCC, 0x2010CCC
.equ byte_2010CD0, 0x2010CD0
.equ byte_2010CD1, 0x2010CD1
.equ word_2010CD2, 0x2010CD2
.equ word_2010CD4, 0x2010CD4
.equ word_2010CD6, 0x2010CD6
.equ word_2010CDA, 0x2010CDA
.equ unk_2011EA0, 0x2011EA0
.equ byte_2011EE0, 0x2011EE0
.equ unk_20399F0, 0x20399F0
.equ word_3000000, 0x3000000
.equ byte_30000F0, 0x30000F0
.equ word_30000FA, 0x30000FA
.equ dword_3000E8C, 0x3000E8C
.equ unk_30045C0, 0x30045C0
.equ dword_3005570, 0x3005570
.equ dword_3005574, 0x3005574
.equ dword_3005590, 0x3005590
.equ dword_30055B4, 0x30055B4
.equ dword_30055BC, 0x30055BC
.equ dword_30055E0, 0x30055E0
.equ dword_30055E4, 0x30055E4
.equ dword_30055E8, 0x30055E8
.equ dword_30055EC, 0x30055EC
.equ dword_30055F0, 0x30055F0
.equ dword_30055F4, 0x30055F4
.equ dword_30055F8, 0x30055F8
.equ dword_30055FC, 0x30055FC
.equ unk_3005600, 0x3005600
.equ loc_3005700, 0x3005700
.equ loc_3007FF0, 0x3007FF0
.equ VerticalCounter_LY_, 0x4000006
.equ Channel1Sweepregister_NR10_, 0x4000060
.equ Channel1Sweepregister_NR10_, 0x4000060
.equ Channel1Duty_Length_Envelope_NR11_NR12_, 0x4000062
.equ Channel1Frequency_Control_NR13_NR14_, 0x4000064
.equ Channel1Frequency_Control_NR13_NR14_, 0x4000064
.equ Channel2Duty_Length_Envelope_NR21_NR22_, 0x4000068
.equ Channel2Frequency_Control_NR23_NR24_, 0x400006C
.equ Channel2Frequency_Control_NR23_NR24_, 0x400006C
.equ Channel3Stop_WaveRAMselect_NR30_, 0x4000070
.equ Channel3Stop_WaveRAMselect_NR30_, 0x4000070
.equ Channel3Length_Volume_NR31_NR32_, 0x4000072
.equ Channel3Frequency_Control_NR33_NR34_, 0x4000074
.equ Channel4Length_Envelope_NR41_NR42_, 0x4000078
.equ Channel4Frequency_Control_NR43_NR44_, 0x400007C
.equ Channel4Frequency_Control_NR43_NR44_, 0x400007C
.equ ControlStereo_Volume_Enable_NR50_NR51_, 0x4000080
.equ ControlStereo_Volume_Enable_NR50_NR51_, 0x4000080
.equ ControlMixing_DMAControl, 0x4000082
.equ ControlSoundon_off_NR52_, 0x4000084
.equ SoundPWMControl, 0x4000088
.equ Channel3WavePatternRAM_2banks___, 0x4000090
.equ dword_4000094, 0x4000094
.equ dword_4000098, 0x4000098
.equ dword_400009C, 0x400009C
.equ ChannelAFIFO_Data0_3, 0x40000A0
.equ ChannelBFIFO_Data0_3, 0x40000A4
.equ DMA1SourceAddress, 0x40000BC
.equ DMA1DestinationAddress, 0x40000C0
.equ DMA1WordCount, 0x40000C4
.equ DMA1Control, 0x40000C6
.equ DMA2SourceAddress, 0x40000C8
.equ DMA2DestinationAddress, 0x40000CC
.equ DMA2WordCount, 0x40000D0
.equ DMA2Control, 0x40000D2
.equ DMA3SourceAddress, 0x40000D4
.equ DMA3DestinationAddress, 0x40000D8
.equ DMA3WordCount, 0x40000DC
.equ Timer0Counter_Reload, 0x4000100
.equ Timer0Control, 0x4000102
.equ Timer2Counter_Reload, 0x4000108
.equ Timer2Control, 0x400010A
.equ Timer3Counter_Reload, 0x400010C
.equ Timer3Control, 0x400010E
.equ SIOData0_Parent__Multi_PlayerMode_, 0x4000120
.equ SIOData2_2ndChild__Multi_PlayerMode_, 0x4000124
.equ SIOControlRegister, 0x4000128
.equ SIOData_Normal_8bitandUARTMode_, 0x400012A
.equ SIOModeSelect_GeneralPurposeData, 0x4000134
.equ InterruptEnableRegister, 0x4000200
.equ InterruptRequestFlags_IRQAcknowledge, 0x4000202
.equ GamePakWaitstateControl, 0x4000204
.equ InterruptMasterEnableRegister, 0x4000208
// .global dword_8072BCC
.equ dword_8073610, 0x8073610
.equ dword_808A128, 0x808A128
.equ dword_814FE90, 0x814FE90
.equ dword_814FE94, 0x814FE94
.equ off_8158278, 0x8158278
.equ off_815827C, 0x815827C
.equ byte_8158280, 0x8158280
.equ word_8158282, 0x8158282
.equ sound_MusicTable, 0x81583F8
.equ dword_81C03AC, 0x81C03AC
.equ byte_81C03D8, 0x81C03D8
.equ aNintendosio32i, 0x81C03E4
.equ off_81C0418, 0x81C0418
.equ unk_81C04A8, 0x81C04A8
.equ byte_81C055A, 0x81C055A
.equ byte_81C055B, 0x81C055B
.equ dword_81C055C, 0x81C055C
.equ dword_81C058C, 0x81C058C
.equ byte_81C05A4, 0x81C05A4
.equ byte_81C05A5, 0x81C05A5
.equ byte_81C0626, 0x81C0626
.equ byte_81C0627, 0x81C0627
.equ dword_81C0628, 0x81C0628
.equ byte_81C0640, 0x81C0640
.equ byte_81C067B, 0x81C067B
.equ dword_81C067C, 0x81C067C
.equ unk_81C068C, 0x81C068C
.equ off_81C06C0, 0x81C06C0
.equ dword_8619730, 0x8619730
.equ dword_8619B50, 0x8619B50
.equ dword_8619B90, 0x8619B90

.endif // INC_ASM37_1
