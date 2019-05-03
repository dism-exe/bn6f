	.equ iStack, 0x3007e00

	.equ dword_3007FF0, 0x3007ff0 // SOUND_INFO_PTR
	.equ unk_3007FFC, 0x3007ffc // INTR_VECTOR

	// VRAM layout
	.equ vBGTileIds, 0x600E000 // BG0 and BG2
	.equ vObjectTiles, 0x6010000 // 4bpp

	// I/O
	.equ LCDControl, 0x4000000
	.equ Undocumented_GreenSwap, 0x4000002
	.equ GeneralLCDStatus_STAT_LYC_, 0x4000004
	.equ VerticalCounter_LY_, 0x4000006
	.equ BG0Control, 0x4000008
	.equ BG1X_Offset, 0x4000014
	.equ BG2Rotation_ScalingParameterA_dx_, 0x4000020
	.equ Window0HorizontalDimensions, 0x4000040
	.equ MosaicSize, 0x400004C
	.equ ColorSpecialEffectsSelection, 0x4000050
	.equ Brightness_Fade_In_Out_Coefficient, 0x4000054
	.equ Channel1Sweepregister_NR10_, 0x4000060
	.equ Channel1Duty_Length_Envelope_NR11_NR12_, 0x4000062
	.equ Channel1Frequency_Control_NR13_NR14_, 0x4000064
	.equ Channel2Duty_Length_Envelope_NR21_NR22_, 0x4000068
	.equ Channel2Frequency_Control_NR23_NR24_, 0x400006C
	.equ Channel3Stop_WaveRAMselect_NR30_, 0x4000070
	.equ Channel3Length_Volume_NR31_NR32_, 0x4000072
	.equ Channel3Frequency_Control_NR33_NR34_, 0x4000074
	.equ Channel4Length_Envelope_NR41_NR42_, 0x4000078
	.equ Channel4Frequency_Control_NR43_NR44_, 0x400007C
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
	.equ DMA0SourceAddress, 0x40000B0
	.equ DMA0DestinationAddress, 0x40000B4
	.equ DMA0WordCount, 0x40000B8
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
	.equ KeyStatus, 0x4000130
	.equ KeyInterruptControl, 0x4000132
	.equ SIOModeSelect_GeneralPurposeData, 0x4000134
	.equ unk_4000190, 0x4000190
	.equ InterruptEnableRegister, 0x4000200
	.equ InterruptRequestFlags_IRQAcknowledge, 0x4000202
	.equ GamePakWaitstateControl, 0x4000204
	.equ InterruptMasterEnableRegister, 0x4000208
	.equ unk_400020C, 0x400020C
