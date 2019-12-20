
	thumb_func_start call_m4aSoundMain
call_m4aSoundMain:
	push {lr}
	bl m4aSoundMain
	pop {pc}
	.word unk_2006840
	.word dword_80005BC
dword_80005BC: .hword 0x121c
	.asciz "%D"
	.balign 4, 0
	thumb_func_end call_m4aSoundMain

	thumb_func_start call_m4a_2_814F00C
call_m4a_2_814F00C:
	push {lr}
	bl m4a_2_814F00C
	pop {pc}
	thumb_func_end call_m4a_2_814F00C

	thumb_func_start PlaySoundEffect
// (enum SoundEffect idx) -> void
// this can play any song in the song array but
// usage-wise it is only be used for sound effects
PlaySoundEffect:
	push {r1-r7,lr}
	bl m4a_800061E // () -> void
	pop {r1-r7,pc}
	thumb_func_end PlaySoundEffect

	thumb_func_start PlayMusic
// (enum Song idx) -> void
PlayMusic:
	push {r1-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r1, [r7,#oGameState_BGMusicIndicator]
	cmp r0, r1
	beq locret_80005F0
	strb r0, [r7,#oGameState_BGMusicIndicator]
	cmp r0, #0x63
	bne loc_80005EC
	bl sub_8000630
	b locret_80005F0
loc_80005EC:
	bl m4a_800061E // () -> void
locret_80005F0:
	pop {r1-r7,pc}
	thumb_func_end PlayMusic

	thumb_func_start sub_80005F2
sub_80005F2:
	push {r1-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	strb r0, [r7,#oGameState_BGMusicIndicator]
	cmp r0, #0x63
	bne loc_8000604
	bl sub_8000630
	b locret_8000608
loc_8000604:
	bl m4a_800061E // () -> void
locret_8000608:
	pop {r1-r7,pc}
	thumb_func_end sub_80005F2

	thumb_func_start sub_800060A
sub_800060A:
	push {r1-r7,lr}
	ldr r1, off_8000864 // =byte_2010B90
	ldrb r1, [r1]
	cmp r1, #0
	bne loc_8000616
	mov r1, #0xff
loc_8000616:
	ldr r3, off_8000868 // =sub_8000822+1
	bl sound_8000808 // () -> void
	pop {r1-r7,pc}
	thumb_func_end sub_800060A

// () -> void
	thumb_local_start
m4a_800061E:
	push {lr}
	mov r1, r10
	push {r1}
	ldr r3, off_800086C // =m4a_SongNumStart+1
	bl sound_8000808 // () -> void
	pop {r1}
	mov r10, r1
	pop {pc}
	thumb_func_end m4a_800061E

	thumb_local_start
sub_8000630:
	push {lr}
	mov r1, r10
	push {r1}
	ldr r3, off_8000870 // =sub_814EA58+1
	bl sound_8000808 // () -> void
	pop {r1}
	mov r10, r1
	pop {pc}
	thumb_func_end sub_8000630

	thumb_func_start sub_8000642
sub_8000642:
	push {r4-r7,lr}
	lsl r0, r0, #2
	ldr r7, off_8000700 // =off_8000704
	ldr r0, [r7,r0]
	mov r3, r10
	push {r3}
	ldr r3, off_8000874 // =sub_814F9AC+1
	bl sound_8000808 // () -> void
	pop {r3}
	mov r10, r3
	pop {r4-r7,pc}
	thumb_func_end sub_8000642

	thumb_func_start sub_800065A
sub_800065A:
	push {r4-r7,lr}
	lsl r0, r0, #2
	ldr r7, off_8000700 // =off_8000704
	ldr r0, [r7,r0]
	mov r3, r10
	push {r3}
	ldr r3, off_8000878 // =sub_814FA14+1
	bl sound_8000808 // () -> void
	pop {r3}
	mov r10, r3
	pop {r4-r7,pc}
	thumb_func_end sub_800065A

	thumb_func_start sound_8000672
sound_8000672:
	push {r4-r7,lr}
	lsl r0, r0, #2
	ldr r7, off_8000700 // =off_8000704
	ldr r0, [r7,r0]
	mov r3, r10
	push {r3}
	ldr r3, off_800087C // =sub_814F988+1
	bl sound_8000808 // () -> void
	pop {r3}
	mov r10, r3
	pop {r4-r7,pc}
	thumb_func_end sound_8000672

	thumb_func_start sound_800068A
sound_800068A:
	push {r4-r7,lr}
	ldr r7, off_8000700 // =off_8000704
	lsl r0, r0, #2
	ldr r0, [r7,r0]
	mov r2, r10
	push {r2}
	ldr r3, off_8000880 // =sub_814E87C+1
	bl sound_8000808 // () -> void
	pop {r2}
	mov r10, r2
	pop {r4-r7,pc}
	thumb_func_end sound_800068A

	thumb_func_start sound_80006A2
sound_80006A2:
	push {r4-r7,lr}
	cmp r0, #0x25
	bgt loc_80006B0
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	strb r0, [r7,#oGameState_BGMusicIndicator]
	b loc_80006B0
loc_80006B0:
	mov r4, r12
	mov r5, r8
	mov r6, r9
	mov r7, r10
	push {r4-r7}
	ldr r7, off_8000700 // =off_8000704
	lsl r2, r2, #2
	ldr r7, [r7,r2]
	mov r4, r0
	mov r5, r1
	ldr r3, off_8000884 // =m4a_SongNumStart+1
	bl sound_8000808 // () -> void
	mov r0, r7
	ldr r3, off_8000888 // =sub_814EB1C+1
	bl sound_8000808 // () -> void
	mov r0, r7
	mov r1, #0xff
	mov r2, #0
	ldr r3, off_800088C // =sub_814F9AC+1
	bl sound_8000808 // () -> void
	mov r0, r4
	ldr r3, off_8000890 // =sub_814E9F0+1
	bl sound_8000808 // () -> void
	mov r0, r7
	mov r1, r5
	ldr r3, off_8000894 // =sub_814EAF0+1
	bl sound_8000808 // () -> void
	pop {r4-r7}
	mov r12, r4
	mov r8, r5
	mov r9, r6
	mov r10, r7
	pop {r4-r7,pc}
	.word off_2010890
off_8000700: .word off_8000704
off_8000704: .word byte_2010690
	.word byte_2010910
	.word byte_2010950
	.word byte_2010C20
	.word byte_2010B50
	.word byte_2010550
	.word byte_2010650
	.word byte_20108D0
	.word byte_2010BE0
	.word byte_2010610
	.word byte_2010990
	.word byte_2010C60
	.word byte_2010AD0
	.word byte_2010510
	.word byte_2010810
	.word byte_2010A90
	.word byte_20105D0
	.word byte_2010B10
	.word byte_20107D0
	.word unk_2010490
	.word byte_2010710
	.word byte_2010790
	.word byte_2010A50
	.word unk_20104D0
	.word byte_2010750
	.word byte_20109D0
	.word byte_20106D0
	.word byte_2010BA0
	.word byte_2010850
	.word byte_2010A10
	.word byte_2010590
	.word off_2010890
	thumb_func_end sound_80006A2

// () -> void
	thumb_func_start musicGameState_8000784
musicGameState_8000784:
	push {r7,lr}
	mov r1, r10
	push {r1}
	ldr r3, off_8000898 // =sub_814EA58+1
	bl sound_8000808 // () -> void
	pop {r1}
	mov r10, r1
	mov r7, r10
	ldr r7, [r7,#0x3c] // Toolkit.gamestate
	mov r0, #0xff
	strb r0, [r7,#0xf] // GameState.bgMusicIndicator
	pop {r7,pc}
	.byte 0, 0
	thumb_func_end musicGameState_8000784

	thumb_local_start
sub_80007A0:
	push {r1-r7,lr}
	mov r1, r10
	push {r1}
	ldr r3, off_800089C // =sub_814E9F0+1
	bl sound_8000808 // () -> void
	pop {r1}
	mov r10, r1
	pop {r1-r7,pc}
	thumb_func_end sub_80007A0

	thumb_func_start zeroFill_80007B2
zeroFill_80007B2:
	push {lr}
	// memBlock
	ldr r0, dword_200A490_p
	// size
	ldr r1, numWords // =0x20c
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end zeroFill_80007B2

	thumb_func_start sub_80007BE
sub_80007BE:
	push {r4-r7,lr}
	ldr r5, dword_200A490_p
	ldr r7, [r5]
	cmp r7, #0
	beq loc_80007F0
	ldrb r0, [r5,#0x4] // (byte_200A494 - 0x200a490)
	add r0, #1
	cmp r0, #0x1a
	blt loc_80007D2
	mov r0, #0
loc_80007D2:
	strb r0, [r5,#0x4] // (byte_200A494 - 0x200a490)
	mov r0, #0
	str r0, [r5,#0x8] // (dword_200A498 - 0x200a490)
	mov r6, #0xc
	add r6, r6, r5
loc_80007DC:
	ldmia r6!, {r0-r3}
	mov r4, r10
	push {r4}
	ldr r4, off_8000804 // =loc_80007E8+1
	mov lr, r4
	bx r3
loc_80007E8:
	pop {r4}
	mov r10, r4
	sub r7, #1
	bne loc_80007DC
loc_80007F0:
	mov r0, #0
	str r0, [r5]
	ldr r6, [r5,#0x8] // (dword_200A498 - 0x200a490)
	cmp r6, #0
	beq locret_8000800
	ldmia r6!, {r0-r3}
	bl sound_8000808 // () -> void
locret_8000800:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8000804: .word loc_80007E8+1
	thumb_func_end sub_80007BE

// () -> void
	thumb_local_start
sound_8000808:
	push {r4-r7,lr}
	ldr r5, dword_200A490_p
	ldr r7, [r5]
	cmp r7, #0x20
	blt loc_8000814
	b locret_8000820
loc_8000814:
	add r6, r7, #1
	str r6, [r5]
	lsl r7, r7, #4
	add r7, #0xc
	add r7, r7, r5
	stmia r7!, {r0-r3}
locret_8000820:
	pop {r4-r7,pc}
	thumb_func_end sound_8000808

	thumb_local_start
sub_8000822:
	push {r4-r7,lr}
	ldr r3, off_80008A4 // =byte_2010B90
	ldrb r2, [r3]
	cmp r1, r2
	beq loc_8000854
	mov r2, #0
	strb r2, [r3]
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r1, [r7,#oGameState_BGMusicIndicator]
	cmp r0, r1
	beq locret_800085A
	strb r0, [r7,#oGameState_BGMusicIndicator]
	cmp r0, #0x63
	bne loc_8000844
	ldr r3, off_80008A8 // =sub_814EA58+1
	b loc_8000846
loc_8000844:
	ldr r3, off_80008AC // =m4a_SongNumStart+1
loc_8000846:
	push {r4}
	ldr r4, off_80008B0 // =loc_800084E+1
	mov lr, r4
	bx r3
loc_800084E:
	pop {r4}
	mov r10, r4
	b locret_800085A
loc_8000854:
	mov r0, r6
	sub r0, #0x10
	str r0, [r5,#8]
locret_800085A:
	pop {r4-r7,pc}
dword_200A490_p: .word dword_200A490
	.word unk_200F390
off_8000864: .word byte_2010B90
off_8000868: .word sub_8000822+1
off_800086C: .word m4a_SongNumStart+1
off_8000870: .word sub_814EA58+1
off_8000874: .word sub_814F9AC+1
off_8000878: .word sub_814FA14+1
off_800087C: .word sub_814F988+1
off_8000880: .word sub_814E87C+1
off_8000884: .word m4a_SongNumStart+1
off_8000888: .word sub_814EB1C+1
off_800088C: .word sub_814F9AC+1
off_8000890: .word sub_814E9F0+1
off_8000894: .word sub_814EAF0+1
off_8000898: .word sub_814EA58+1
off_800089C: .word sub_814E9F0+1
numWords: .word 0x20C
off_80008A4: .word byte_2010B90
off_80008A8: .word sub_814EA58+1
off_80008AC: .word m4a_SongNumStart+1
off_80008B0: .word loc_800084E+1
	thumb_func_end sub_8000822

// (void *mem, int size) -> void

// Fill r0 with zero.
// Size is in r1, in bytes.
// Does a backwards fill for speed
	thumb_func_start ZeroFillByByte
ZeroFillByByte:
	push {r0-r2,lr}
	mov r2, #0
loc_80008B8:
	sub r1, #1
	strb r2, [r0,r1]
	bne loc_80008B8
	pop {r0-r2,pc}
	thumb_func_end ZeroFillByByte

// Fill r0 with zero, using halfwords.
// Size is in r1, in bytes.
// Source, destination, and size must be halfword compatible
	thumb_func_start ZeroFillByHalfword
ZeroFillByHalfword:
	push {r0-r3,lr}
	ldr r2, .HalfwordFillCpuSetMask_80008DC // =0x1000000
	lsr r1, r1, #1
	orr r2, r1
	mov r1, r0
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {r0-r3,pc}
	.balign 4, 0
.HalfwordFillCpuSetMask_80008DC: .word 0x1000000
	thumb_func_end ZeroFillByHalfword

// (void *memBlock, int size) -> void

// Fill r0 with zero, using words.
// Size is in r1, in bytes.
// Source, destination, and size must be word compatible
	thumb_func_start ZeroFillByWord
ZeroFillByWord:
	push {r0-r3,lr}
	ldr r2, .WordFillCpuSetMask_80008FC // =0x5000000
	lsr r1, r1, #2
	orr r2, r1
	mov r1, r0
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {r0-r3,pc}
	.balign 4, 0
.WordFillCpuSetMask_80008FC: .word 0x5000000
	thumb_func_end ZeroFillByWord

// (int a1, int a2) -> void
// Fill r0 with zero, in blocks of eight words.
// Size is in r1, in bytes.
// CpuFastSet will round up the amount of bytes filled to a multiple of eight words
// even though the size specified is converted to a word count
// Source and destination must be word compatible
// Size must be a multiple of eight words
	thumb_func_start ZeroFillByEightWords
ZeroFillByEightWords:
	push {r0-r3,lr}
	ldr r2, .FillCpuFastSetMask_800091C // =0x1000000
	lsr r1, r1, #2
	orr r2, r1
	mov r1, r0
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	mov r0, sp
	bl SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
	add sp, sp, #4
	pop {r0-r3,pc}
	.balign 4, 0
.FillCpuFastSetMask_800091C: .word 0x1000000
	thumb_func_end ZeroFillByEightWords

// (u8 *src, u8 *dest, int byteCount) -> void

// Copy r2 bytes from r0 to r1, in units of bytes.
	thumb_func_start CopyBytes
CopyBytes:
	sub r2, #1
	ldrb r3, [r0,r2]
	strb r3, [r1,r2]
	bne CopyBytes
	mov pc, lr
	thumb_func_end CopyBytes

// (u16 *src, u16 *dest, int halfwordCount) -> void

// Copy r2 bytes from r0 to r1, in units of halfwords.
// Note that size is specified in bytes, which is then converted to halfword count in function
// Source, destination, and size must be halfword compatible.
	thumb_func_start CopyHalfwords
CopyHalfwords:
	push {r0-r3,lr}
	ldr r3, .HalfwordCopyCpuSetMask_8000938 // =0x0
	lsr r2, r2, #1
	orr r2, r3
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	pop {r0-r3,pc}
	.balign 4, 0
.HalfwordCopyCpuSetMask_8000938: .word 0x0
	thumb_func_end CopyHalfwords

// (u32 *src, u32 *dest, int size) -> void

// Copy r2 bytes from r0 to r1, in units of words.
// Note r2 represents byte count, which is then converted to word count in function
// Source, destination, and size must be word compatible.
	thumb_func_start CopyWords
CopyWords:
	push {r0-r3,lr}
	ldr r3, .WordCopyCpuSetMask_800094C
	lsr r2, r2, #2
	orr r2, r3
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	pop {r0-r3,pc}
	.balign 4, 0
.WordCopyCpuSetMask_800094C: .word 0x4000000
	thumb_func_end CopyWords

// (u32 *src, u32 *dest, int byteCount) -> void

// Copy r2 bytes from r0 to r1, in units of eight words, rounded up.
// Note r2 represents byte count, which is then converted to word count in function
// However, CpuFastSet will copy in chunks of eight words (0x20), therefore rounding
// up the word count to a multiple of eight words.
// Source and destination must be word compatible.
// Size must be a multiple of eight words
	thumb_func_start CopyByEightWords
CopyByEightWords:
	push {r0-r3,lr}
	ldr r3, .CopyFastCpuSetMask_8000960 // =0x0
	lsr r2, r2, #2
	orr r2, r3
	bl SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
	pop {r0-r3,pc}
	.balign 4, 0
.CopyFastCpuSetMask_8000960: .word 0x0
	thumb_func_end CopyByEightWords

// (u8 *mem, int byteCount, u8 byte) -> void
// Fill r0 with r2, where r2 is treated as a byte.
// Size is in r1, in bytes.
// Does a backwards fill for speed
	thumb_func_start ByteFill
ByteFill:
	// byteCount
	sub r1, #1
	strb r2, [r0,r1]
	bne ByteFill
	mov pc, lr
	thumb_func_end ByteFill

// Fill r0 with r2, where r2 is treated as a halfword.
// Size is in r1, in bytes.
// Source, destination, and size must be halfword compatible
	thumb_func_start HalfwordFill
HalfwordFill:
	push {r0-r3,lr}
	mov r3, r2
	ldr r2, .HalfwordFillCpuSetMask_8000988 // =0x1000000
	lsr r1, r1, #1
	orr r2, r1
	mov r1, r0
	sub sp, sp, #4
	str r3, [sp]
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {r0-r3,pc}
	.balign 4, 0
.HalfwordFillCpuSetMask_8000988: .word 0x1000000
	thumb_func_end HalfwordFill

// Fill r0 with r2, where r2 is treated as a word.
// Size is in r1, in bytes.
// Source, destination, and size must be word compatible
	thumb_func_start WordFill
WordFill:
	push {r0-r3,lr}
	mov r3, r2
	ldr r2, .WordFillCpuSetMask_80009A8 // =0x5000000
	lsr r1, r1, #2
	orr r2, r1
	mov r1, r0
	sub sp, sp, #4
	str r3, [sp]
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {r0-r3,pc}
	.balign 4, 0
.WordFillCpuSetMask_80009A8: .word 0x5000000
	thumb_func_end WordFill

// Fill r0 with r2, where r2 is treated as a word.
// Size is in r1, in bytes.
// CpuFastSet will round up the amount of bytes filled to a multiple of eight words
// even though the size specified is converted to a word count
// Source and destination must be word compatible
// Size must be a multiple of eight words
	thumb_func_start FillByEightWords
FillByEightWords:
	push {r0-r3,lr}
	mov r3, r2
	ldr r2, .FillCpuFastSetMask_80009C8 // =0x1000000
	lsr r1, r1, #2
	orr r2, r1
	mov r1, r0
	sub sp, sp, #4
	str r3, [sp]
	mov r0, sp
	bl SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
	add sp, sp, #4
	pop {r0-r3,pc}
	.balign 4, 0
.FillCpuFastSetMask_80009C8: .word 0x1000000
	thumb_func_end FillByEightWords

	thumb_local_start
sub_80009CC:
	push {r4-r7,lr}
	lsl r3, r3, #2
	ldr r5, off_80009E8 // =off_80009EC
	ldr r5, [r5,r3]
	mov r3, #8
	ldr r7, dword_8000A38 // =0x80000000
loc_80009D8:
	ldr r6, [r5,r3]
	and r6, r7
	bne loc_80009D8
	str r0, [r5]
	str r1, [r5,#4]
	orr r4, r2
	str r4, [r5,#8]
	pop {r4-r7,pc}
off_80009E8: .word off_80009EC
off_80009EC: .word DMA0SourceAddress
	.word DMA1SourceAddress
	.word DMA2SourceAddress
	.word DMA3SourceAddress
	thumb_func_end sub_80009CC

	thumb_local_start
sub_80009FC:
	push {r4,lr}
	ldr r3, off_8000A34 // =DMA0SourceAddress
loc_8000A00:
	mov r1, #0
	mov r4, #1
	tst r0, r4
	beq loc_8000A0C
	ldr r2, [r3,#0x8] // (DMA0WordCount - 0x40000b0)
	orr r1, r2
loc_8000A0C:
	mov r4, #2
	tst r0, r4
	beq loc_8000A16
	ldr r2, [r3,#0x14] // (DMA1WordCount - 0x40000b0)
	orr r1, r2
loc_8000A16:
	mov r4, #4
	tst r0, r4
	beq loc_8000A20
	ldr r2, [r3,#0x20] // (DMA2WordCount - 0x40000b0)
	orr r1, r2
loc_8000A20:
	mov r4, #8
	tst r0, r4
	beq loc_8000A2A
	ldr r2, [r3,#0x2c] // (DMA3WordCount - 0x40000b0)
	orr r1, r2
loc_8000A2A:
	ldr r2, dword_8000A38 // =0x80000000
	and r1, r2
	bne loc_8000A00
	pop {r4,pc}
	.balign 4, 0x00
off_8000A34: .word DMA0SourceAddress
dword_8000A38: .word 0x80000000
	thumb_func_end sub_80009FC

	thumb_func_start clearWord_e200AC1C
clearWord_e200AC1C:
	ldr r0, off_8000B10 // =dword_200AC1C
	mov r1, #0
	str r1, [r0]
	mov pc, lr
	thumb_func_end clearWord_e200AC1C

	thumb_func_start ProcessGFXTransferQueue
ProcessGFXTransferQueue:
	push {lr}
	mov r0, r8
	mov r1, r9
	push {r0,r1,r4-r7}
	ldr r0, off_8000B10 // =dword_200AC1C
	ldr r1, [r0]
	ldr r2, off_8000B14 // =fiveWordArr200B4B0
loc_8000A52:
	sub r1, #1
	blt loc_8000A96
	mov r8, r1
	mov r9, r2
	ldr r4, [r2,#0x10]
	cmp r4, #1
	bge loc_8000A7C
	ldr r4, [r2,#0xc]
	ldr r0, [r2]
	ldr r1, [r2,#4]
	ldr r2, [r2,#8]
	lsr r2, r2, #2
	mov r3, #3
	bl sub_80009CC
	mov r0, #8
	bl sub_80009FC
	mov r1, r8
	mov r2, r9
	b loc_8000A92
loc_8000A7C:
	sub r4, #1
	lsl r4, r4, #2
	ldr r0, [r2]
	ldr r1, [r2,#4]
	ldr r2, [r2,#8]
	ldr r3, off_8000AA4 // =CopyJumpTable8000AA8
	ldr r3, [r3,r4]
	mov lr, pc
	bx r3
	mov r1, r8
	mov r2, r9
loc_8000A92:
	add r2, #0x14
	b loc_8000A52
loc_8000A96:
	bl clearWord_e200AC1C
	pop {r0,r1,r4-r7}
	mov r8, r0
	mov r9, r1
	pop {pc}
	.balign 4, 0x00
off_8000AA4: .word CopyJumpTable8000AA8
CopyJumpTable8000AA8: .word CopyBytes+1
	.word CopyHalfwords+1
	.word CopyWords+1
	.word CopyByEightWords+1
	thumb_func_end ProcessGFXTransferQueue

	thumb_local_start
QueueUnk00GFXTransfer:
	mov r3, #0
	b loc_8000ACA

	thumb_local_start
QueueByteAlignedGFXTransfer:
	mov r3, #1
	b loc_8000ACA

	thumb_local_start
QueueHwordAlignedGFXTransfer:
	mov r3, #2
	b loc_8000ACA

	thumb_func_start QueueWordAlignedGFXTransfer
QueueWordAlignedGFXTransfer:
	mov r3, #3
	b loc_8000ACA

	thumb_func_start QueueEightWordAlignedGFXTransfer
QueueEightWordAlignedGFXTransfer:
	mov r3, #4

// r0 - queued source
// r1 - queued dest
// r2 - queued size
// r3 - copy type (preset)
// preserves r0-r2
loc_8000ACA:
	push {r4-r7}
	mov r7, r3
	ldr r3, off_8000B10 // =dword_200AC1C 
	// r4 = count of something?
	ldr r4, [r3]
	cmp r4, #0x60
	bge loc_8000AF4
	mov r5, r4
	add r4, #1
	str r4, [r3]
	ldr r4, off_8000B14 // =fiveWordArr200B4B0
	mov r6, #0x14
	// r5 = count * sizeof(fiveWordArr200B4B0)
	mul r5, r6
	// r4 = fiveWordArr200B4B0[top]
	add r4, r4, r5
	str r0, [r4]
	str r1, [r4,#4]
	str r2, [r4,#8]
	str r7, [r4,#0x10]
	ldr r3, off_8000AF8 // =dword_8000AFC
	lsl r7, r7, #2
	ldr r3, [r3,r7]
	str r3, [r4,#0xc]
loc_8000AF4:
	pop {r4-r7}
	mov pc, lr
off_8000AF8: .word dword_8000AFC
dword_8000AFC: .word 0x84000000
	.word 0xffffffff
	.word 0xffffffff
	.word 0xffffffff
	.word 0xffffffff
off_8000B10: .word dword_200AC1C
off_8000B14: .word fiveWordArr200B4B0
	thumb_func_end QueueUnk00GFXTransfer
	thumb_func_end QueueByteAlignedGFXTransfer
	thumb_func_end QueueHwordAlignedGFXTransfer
	thumb_func_end QueueWordAlignedGFXTransfer
	thumb_func_end QueueEightWordAlignedGFXTransfer

	thumb_local_start
sub_8000B18:
	push {r4-r7,lr}
	mov r7, r0
loc_8000B1C:
	ldr r0, [r7]
	tst r0, r0
	beq locret_8000B2E
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl QueueUnk00GFXTransfer
	add r7, #0xc
	b loc_8000B1C
locret_8000B2E:
	pop {r4-r7,pc}
	thumb_func_end sub_8000B18

// (u32 *initRefs) -> void
// This processes an array and performs different actions based on
// the type of u32 element in it.
// If the last bit of the elem is set, then it is a reference to
// compressed data: x_addr = x & ~0x80000000
// Elements are processed in triplets.
// In case of decompression:
//   .word src | 1<<32
//   .word
//   .word dest
	thumb_func_start decompAndCopyData
decompAndCopyData:
	push {r4-r7,lr}
	mov r7, r0
loop_processArr_8000B34:
	ldr r0, [r7]
	tst r0, r0
	beq ret_reachedTerminator_8000B8C
	lsl r0, r0, #1
	bcs isCompressedRef_8000B46
	lsr r0, r0, #1
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	b switch_8000B5E
isCompressedRef_8000B46:
	// src: (a1[0]<<1)>>1 (carry flag) first itr
	lsr r0, r0, #1
	// dest: a1[2]
	ldr r1, [r7,#8]
	mov r4, r1
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	// dest
	ldr r1, [r7,#4]
	tst r1, r1
	beq continue_advance3Elements_8000B88
	// a1[1] != 0: perform additionaly copy operations
	add r0, r4, #4
	ldr r2, [r4]
	lsr r2, r2, #8
	// halfwordCount
	sub r2, #4
switch_8000B5E:
	// determine operation based on enabled bits in a1[1]
	mov r3, #1
	tst r3, r2
	bne bit0_set_8000B72
	mov r3, #3
	tst r3, r2
	bne bit1_set_8000B78
	mov r3, #0x1f
	tst r3, r2
	// if any bit from 2 to 5 are set
	bne bits5to0_set_8000B7E
	b default_8000B84
bit0_set_8000B72:
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	b continue_advance3Elements_8000B88
bit1_set_8000B78:
	// if bit 0 or bit 1 are set. Since bit 0 was checked already,
	// this is for bit 1
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	b continue_advance3Elements_8000B88
bits5to0_set_8000B7E:
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	b continue_advance3Elements_8000B88
default_8000B84:
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
continue_advance3Elements_8000B88:
	add r7, #0xc
	b loop_processArr_8000B34
ret_reachedTerminator_8000B8C:
	pop {r4-r7,pc}
	thumb_func_end decompAndCopyData

// (u32 *dataRefs) -> void
// [break] open PET
	thumb_func_start QueueGFXTransfersInList
QueueGFXTransfersInList:
	push {r4-r7,lr}
	mov r7, r0
loc_8000B92:
	ldr r0, [r7]
	tst r0, r0
	beq locret_8000BEA
	lsl r0, r0, #1
	bcs loc_8000BA4
	lsr r0, r0, #1
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	b loc_8000BBC
loc_8000BA4:
	lsr r0, r0, #1
	// dest
	ldr r1, [r7,#8]
	mov r4, r1
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r1, [r7,#4]
	tst r1, r1
	beq loc_8000BE6
	add r0, r4, #4
	ldr r2, [r4]
	lsr r2, r2, #8
	sub r2, #4
loc_8000BBC:
	mov r3, #1
	tst r3, r2
	bne loc_8000BD0
	mov r3, #3
	tst r3, r2
	bne loc_8000BD6
	mov r3, #0x1f
	tst r3, r2
	bne loc_8000BDC
	b loc_8000BE2
loc_8000BD0:
	bl QueueByteAlignedGFXTransfer
	b loc_8000BE6
loc_8000BD6:
	bl QueueHwordAlignedGFXTransfer
	b loc_8000BE6
loc_8000BDC:
	bl QueueWordAlignedGFXTransfer
	b loc_8000BE6
loc_8000BE2:
	bl QueueEightWordAlignedGFXTransfer
loc_8000BE6:
	add r7, #0xc
	b loc_8000B92
locret_8000BEA:
	pop {r4-r7,pc}
	thumb_func_end QueueGFXTransfersInList

	thumb_local_start
sub_8000BEC:
	ldr r0, off_8000BF8 // =VerticalCounter_LY_
	ldrh r0, [r0]
	ldr r1, off_8000BFC // =dword_2009CC0
	ldr r1, [r1]
	add r0, r0, r1
	mov pc, lr
off_8000BF8: .word VerticalCounter_LY_
off_8000BFC: .word dword_2009CC0
	thumb_func_end sub_8000BEC

	thumb_func_start sub_8000C00
sub_8000C00: // converts a number to BCD for printing?
	push {r4,r7,lr}
	ldr r1, dword_8000C54 // =0x5f5e0ff
	cmp r0, r1
	bmi loc_8000C0C
	ldr r0, dword_8000C58 // =0x99999999
	b locret_8000C2C
loc_8000C0C:
	ldr r7, off_8000C30 // =off_8000C34
	mov r2, #0
	mov r3, #8
loc_8000C12:
	lsl r2, r2, #4
	ldr r1, [r7]
	mov r4, #0
loc_8000C18:
	cmp r0, r1
	bmi loc_8000C22
	sub r0, r0, r1
	add r4, #1
	b loc_8000C18
loc_8000C22:
	orr r2, r4
	add r7, #4
	sub r3, #1
	bne loc_8000C12
	mov r0, r2
locret_8000C2C:
	pop {r4,r7,pc}
	.byte 0, 0
off_8000C30: .word off_8000C34
off_8000C34:
	.word 10000000
	.word 1000000
	.word 100000
	.word 10000
	.word 1000
	.word 100
	.word 10
	.word 1
dword_8000C54: .word   99999999
dword_8000C58: .word 0x99999999
	thumb_func_end sub_8000C00

	thumb_func_start sub_8000C5C
// get num bcd digits?
sub_8000C5C:
	mov r1, #1
	tst r0, r0
	beq loc_8000C6E
	mov r1, #0
loc_8000C64:
	tst r0, r0
	beq loc_8000C6E
	add r1, #1
	lsr r0, r0, #4
	b loc_8000C64
loc_8000C6E:
	mov r0, r1
	mov pc, lr
	thumb_func_end sub_8000C5C

	thumb_func_start sub_8000C72
sub_8000C72:
	push {r4-r6,lr}
loc_8000C74:
	push {r0,r2}
	push {r1}
	bl GetPositiveSignedRNG2
	pop {r1}
	push {r1}
	svc 6
	mov r3, r1
	pop {r1}
	push {r1,r3}
	bl GetPositiveSignedRNG2
	pop {r1}
	push {r1}
	svc 6
	mov r4, r1
	pop {r1,r3}
	pop {r0,r2}
	ldrb r5, [r0,r3]
	ldrb r6, [r0,r4]
	strb r6, [r0,r3]
	strb r5, [r0,r4]
	sub r2, #1
	bne loc_8000C74
	pop {r4-r6,pc}
	thumb_func_end sub_8000C72

	thumb_local_start
sub_8000CA6:
	push {r4-r6,lr}
loc_8000CA8:
	push {r0,r2}
	push {r1}
	bl GetPositiveSignedRNG1
	pop {r1}
	push {r1}
	svc 6
	mov r3, r1
	pop {r1}
	push {r1,r3}
	bl GetPositiveSignedRNG1
	pop {r1}
	push {r1}
	svc 6
	mov r4, r1
	pop {r1,r3}
	pop {r0,r2}
	ldrb r5, [r0,r3]
	ldrb r6, [r0,r4]
	strb r6, [r0,r3]
	strb r5, [r0,r4]
	sub r2, #1
	bne loc_8000CA8
	pop {r4-r6,pc}
	thumb_func_end sub_8000CA6

	thumb_func_start sub_8000CDA
sub_8000CDA:
	push {r4-r6,lr}
loc_8000CDC:
	push {r0,r2}
	push {r1}
	bl GetPositiveSignedRNG2
	pop {r1}
	push {r1}
	svc 6
	mov r3, r1
	pop {r1}
	push {r1,r3}
	bl GetPositiveSignedRNG2
	pop {r1}
	push {r1}
	svc 6
	mov r4, r1
	pop {r1,r3}
	pop {r0,r2}
	add r3, r3, r3
	add r4, r4, r4
	ldrh r5, [r0,r3]
	ldrh r6, [r0,r4]
	strh r6, [r0,r3]
	strh r5, [r0,r4]
	sub r2, #1
	bne loc_8000CDC
	pop {r4-r6,pc}
	thumb_func_end sub_8000CDA

	thumb_func_start sub_8000D12
sub_8000D12:
	push {r4-r6,lr}
loc_8000D14:
	push {r0,r2}
	push {r1}
	bl GetPositiveSignedRNG1
	pop {r1}
	push {r1}
	svc 6
	mov r3, r1
	pop {r1}
	push {r1,r3}
	bl GetPositiveSignedRNG1
	pop {r1}
	push {r1}
	svc 6
	mov r4, r1
	pop {r1,r3}
	pop {r0,r2}
	add r3, r3, r3
	add r4, r4, r4
	ldrh r5, [r0,r3]
	ldrh r6, [r0,r4]
	strh r6, [r0,r3]
	strh r5, [r0,r4]
	sub r2, #1
	bne loc_8000D14
	pop {r4-r6,pc}
	thumb_func_end sub_8000D12

	thumb_local_start
sub_8000D4A:
	push {r7,lr}
	mov r7, r0
	push {r1,r7}
	bl GetPositiveSignedRNG2
	pop {r1,r7}
	bl SWI_Div
	ldrb r0, [r7,r1]
	pop {r7,pc}
	thumb_func_end sub_8000D4A

	thumb_local_start
sub_8000D5E:
	push {r4,r6,lr}
	cmp r1, #2
	bmi locret_8000D82
	mov r3, #1
loc_8000D66:
	ldrb r2, [r0,r3]
	mov r4, #0
loc_8000D6A:
	ldrb r6, [r0,r4]
	cmp r2, r6
	bhi loc_8000D74
	strb r2, [r0,r4]
	mov r2, r6
loc_8000D74:
	add r4, #1
	cmp r4, r3
	bmi loc_8000D6A
	strb r2, [r0,r3]
	add r3, #1
	cmp r3, r1
	bmi loc_8000D66
locret_8000D82:
	pop {r4,r6,pc}
	thumb_func_end sub_8000D5E

	thumb_func_start sub_8000D84
sub_8000D84:
	push {lr}
	sub sp, sp, #0x10
	ldr r1, dword_8000DD8 // =0x1499727
	cmp r0, r1
	ble loc_8000D92
	ldr r0, dword_8000DDC // =0x99595999
	b loc_8000DD4
loc_8000D92:
	bl sub_8000DE0
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	bl sub_8000C00
	str r0, [sp]
	ldr r0, [sp,#4]
	bl sub_8000C00
	str r0, [sp,#4]
	ldr r0, [sp,#8]
	bl sub_8000C00
	str r0, [sp,#8]
	ldr r0, [sp,#0xc]
	mov r1, #0x64
	mul r0, r1
	mov r1, #0x3c
	svc 6
	bl sub_8000C00
	ldr r1, [sp]
	ldr r2, [sp,#4]
	ldr r3, [sp,#8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x10
	lsl r3, r3, #8
	add r0, r0, r1
	add r0, r0, r2
	add r0, r0, r3
loc_8000DD4:
	add sp, sp, #0x10
	pop {pc}
dword_8000DD8: .word 0x1499727
dword_8000DDC: .word 0x99595999
	thumb_func_end sub_8000D84

	thumb_func_start sub_8000DE0
sub_8000DE0:
	push {lr}
	sub sp, sp, #0x10
	ldr r1, dword_8000E04 // =0x34bc0
	svc 6
	str r0, [sp]
	mov r0, r1
	ldr r1, off_8000E08 // =0xe10
	svc 6
	str r0, [sp,#4]
	mov r0, r1
	ldr r1, off_8000E0C // =0x3c
	svc 6
	mov r2, r0
	mov r3, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	add sp, sp, #0x10
	pop {pc}
dword_8000E04: .word 0x34BC0
off_8000E08: .word 0xE10
off_8000E0C: .word 0x3C
	thumb_func_end sub_8000DE0

	thumb_func_start sub_8000E10
sub_8000E10:
	mov r3, r10
	ldr r3, [r3,#oToolkit_S2001c04_Ptr]
	ldr r0, [r3,#0x18]
	add r0, #1
	ldr r1, dword_8000E24 // =0x14988f0
	cmp r0, r1
	ble loc_8000E20
	mov r0, r1
loc_8000E20:
	str r0, [r3,#0x18]
	mov pc, lr
dword_8000E24: .word 0x14988F0
	thumb_func_end sub_8000E10

	thumb_func_start sub_8000E28
sub_8000E28:
	mov r3, r10
	ldr r3, [r3,#oToolkit_S2001c04_Ptr]
	ldr r0, [r3,#0x18]
	mov pc, lr
	thumb_func_end sub_8000E28

	thumb_func_start sub_8000E30
sub_8000E30:
	push {r4-r7,lr}
	mov r4, #0
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8000E30

	thumb_func_start sub_8000E3A
sub_8000E3A:
	push {r4-r7,lr}
	mov r4, r1
	push {r0,r1}
	push {r4}
	bl GetRNG2 // () -> int
	lsr r4, r0, #0x1e
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	mov r1, #3
	and r0, r1
	add r4, r4, r0
loc_8000E54:
	bl GetRNG2 // () -> int
	sub r4, #1
	bge loc_8000E54
	pop {r4}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r6,r7}
	sub r7, #1
	push {r6,r7}
	mov r1, #0
loc_8000E6A:
	ldrb r3, [r6,r7]
	add r1, r1, r3
	sub r7, #1
	bge loc_8000E6A
	svc 6
	add r1, #1
	mov r2, #0
	pop {r6,r7}
	mov r0, #0
loc_8000E7C:
	ldrb r3, [r6,r2]
	add r0, r0, r3
	cmp r0, r1
	bge loc_8000E8C
	add r2, #1
	cmp r2, r4
	blt loc_8000E7C
	mov r2, #0
loc_8000E8C:
	mov r0, r2
	pop {r4-r7,pc}
	thumb_func_end sub_8000E3A

	thumb_local_start
sub_8000E90:
	push {r5,r6,lr}
	add r5, r0, r1
	mov r6, r0
	mov r7, r0
loc_8000E98:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq loc_8000EA2
	strb r2, [r7]
	add r7, #1
loc_8000EA2:
	add r6, #1
	sub r1, #1
	bne loc_8000E98
	mov r1, #0xff
loc_8000EAA:
	cmp r7, r5
	beq locret_8000EB4
	strb r1, [r7]
	add r7, #1
	b loc_8000EAA
locret_8000EB4:
	pop {r5,r6,pc}
	thumb_func_end sub_8000E90

	thumb_func_start sub_8000EB6
sub_8000EB6:
	push {r5-r7,lr}
	add r2, r1, r1
	add r5, r0, r2
	mov r6, r0
	mov r7, r0
	ldr r3, dword_8000EE0 // =0xffff
loc_8000EC2:
	ldrh r2, [r6]
	cmp r2, r3
	beq loc_8000ECC
	strh r2, [r7]
	add r7, #2
loc_8000ECC:
	add r6, #2
	sub r1, #1
	bne loc_8000EC2
loc_8000ED2:
	cmp r7, r5
	beq locret_8000EDC
	strh r3, [r7]
	add r7, #2
	b loc_8000ED2
locret_8000EDC:
	pop {r5-r7,pc}
	.byte 0, 0
dword_8000EE0: .word 0xFFFF
	thumb_func_end sub_8000EB6

	thumb_func_start GetTitleScreenIconCount
GetTitleScreenIconCount:
	push {r4-r7,lr}
	mov r4, #0
	mov r7, #0
	mov r0, #0xe
	mov r1, #0
	bl TestEventFlagFromImmediate
	beq loc_8000EFA
	add r4, #1
	mov r0, #0x80
	orr r7, r0
loc_8000EFA:
	mov r0, #0
	bl sub_81207F8
	cmp r0, #0xc8
	blt loc_8000F0A
	add r4, #1
	mov r0, #0x40
	orr r7, r0
loc_8000F0A:
	mov r0, #1
	bl sub_81207F8
	cmp r0, #0x27
	blt loc_8000F1A
	add r4, #1
	mov r0, #0x20
	orr r7, r0
loc_8000F1A:
	mov r0, #2
	bl sub_81207F8
	cmp r0, #5
	blt loc_8000F2A
	add r4, #1
	mov r0, #0x10
	orr r7, r0
loc_8000F2A:
	mov r0, #5
	bl sub_81207F8
	cmp r0, #0xf
	blt loc_8000F3A
	add r4, #1
	mov r0, #8
	orr r7, r0
loc_8000F3A:
	mov r0, #4
	bl sub_81207F8
	cmp r0, #0x1d
	blt loc_8000F4A
	add r4, #1
	mov r0, #4
	orr r7, r0
loc_8000F4A:
	mov r0, #3
	mov r1, #0x70
	bl TestEventFlagFromImmediate
	beq loc_8000F5A
	add r4, #1
	mov r0, #2
	orr r7, r0
loc_8000F5A:
	mov r0, #3
	mov r1, #0x40
	bl TestEventFlagFromImmediate
	beq loc_8000F6C
	add r4, #1
	mov r0, #0x10
	lsl r0, r0, #4
	orr r7, r0
loc_8000F6C:
	mov r0, #3
	mov r1, #0xbd
	mov r2, #5
	bl TestEventFlagRangeFromImmediate // (int a3, int a2) ->
	beq loc_8000F80
	add r4, #1
	mov r0, #0x20
	lsl r0, r0, #4
	orr r7, r0
loc_8000F80:
	mov r0, r4
	mov r1, r7
	pop {r4-r7,pc}
	thumb_func_end GetTitleScreenIconCount

	thumb_func_start sub_8000F86
sub_8000F86:
	push {r4-r7,lr}
	mov r4, r0
	bl sub_803F838
	bne locret_8000FAA
	// flag 7 @ 0x2001C88[0xE<<5 + 0x0] (=2001E48)
	mov r0, #0xe
	mov r1, #0
	bl SetEventFlagFromImmediate
	// flag 6 @ 0x2001C88[0x10<<5 + 0x0] (=2001E88)
	mov r0, #0x10
	mov r1, #1
	bl SetEventFlagFromImmediate
	mov r0, r10
	ldr r0, [r0,#oToolkit_S2001c04_Ptr]
	str r4, [r0,#0x18]
	bl sub_803F79E
locret_8000FAA:
	pop {r4-r7,pc}
	thumb_func_end sub_8000F86

	thumb_func_start sub_8000FAC
sub_8000FAC:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	// flag 3 @ 0x2001C88[0x17<<5 + 0x1] (=2001F69)
	movflag EVENT_170C
	bl TestEventFlagFromImmediate
	bne loc_8000FCE
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_LastMapGroup]
	cmp r0, r1
	bne loc_8000FCE
	ldrb r0, [r5,#oGameState_MapNumber]
	ldrb r1, [r5,#oGameState_LastMapNumber]
	cmp r0, r1
	bne loc_8000FCE
	b loc_8000FDC
loc_8000FCE:
	mov r0, #0
	str r0, [r5,#oGameState_CurBattleDataPtr]
	mov r6, r10
	ldr r6, [r6,#oToolkit_S2001c04_Ptr]
	str r0, [r6,#0x1c]
	str r0, [r6,#0x2c]
	str r0, [r6,#0x28]
loc_8000FDC:
	movflag EVENT_170C
	bl ClearEventFlagFromImmediate
	pop {r4-r7,pc}
	thumb_func_end sub_8000FAC

	thumb_local_start
sub_8000FE6:
	push {r4-r7,lr}
	mov r6, r0
	mov r4, r1
loc_8000FEC:
	mov r0, r6
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8000FFA
	mov r0, r6
	bl reqBBS_addBBSMessage_813e5dc
loc_8000FFA:
	add r6, #1
	sub r4, #1
	bgt loc_8000FEC
	pop {r4-r7,pc}
	thumb_func_end sub_8000FE6

	thumb_local_start
sub_8001002:
	push {r4-r7,lr}
	ldr r0, off_8001010 // =0x17a0
	mov r1, #0xa
	bl sub_8000FE6
	pop {r4-r7,pc}
	.byte 0, 0
off_8001010: .word 0x17A0
	thumb_func_end sub_8001002

	thumb_local_start
sub_8001014:
	push {r4-r7,lr}
	mov r6, r0
	mov r4, r1
loc_800101A:
	mov r0, r6
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8001028
	mov r0, r6
	bl reqBBS_addRequest_813F9A0
loc_8001028:
	add r6, #1
	sub r4, #1
	bgt loc_800101A
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r0, off_800103C // =0x17a0
	mov r1, #0xa
	bl sub_8001014
	pop {r4-r7,pc}
off_800103C: .word 0x17A0
	thumb_func_end sub_8001014

	thumb_func_start sub_8001040
sub_8001040:
	push {r4-r7,lr}
	mov r5, #1
	lsl r5, r5, #0x10
	b loc_800104A
loc_8001048:
	push {r4-r7,lr}
loc_800104A:
	mov r6, r10
	ldr r6, [r6,#oToolkit_CurFramePtr]
	ldrh r6, [r6]
	lsl r0, r0, #0x10
	orr r0, r1
	orr r0, r2
	mov r7, #0x10
	and r7, r6
	lsr r7, r7, #2
	add r1, r3, r7
	mov r3, #0xff
	and r3, r5
	lsr r2, r5, #0x10
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	tst r4, r4
	beq locret_8001078
	mov r7, #0xf
	and r7, r6
	bne locret_8001078
	mov r0, #0x91
	bl PlaySoundEffect
locret_8001078:
	pop {r4-r7,pc}
	thumb_func_end sub_8001040

// () -> void
	thumb_func_start updatePlayerGameState_800107A
updatePlayerGameState_800107A:
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldr r1, [r3,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r1,#0x1c] // NPC.scriptArrayOffset
	str r0, [r3,#oGameState_PlayerX]
	ldr r0, [r1,#0x20] // NPC.animationTimer
	str r0, [r3,#oGameState_PlayerY]
	ldr r0, [r1,#0x24]
	str r0, [r3,#oGameState_Unk_2c]
	ldrb r0, [r1,#0x10]
	str r0, [r3,#oGameState_facingDirectionAfterWarp_30]
	mov pc, lr
	thumb_func_end updatePlayerGameState_800107A

	thumb_local_start
sub_8001092:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	str r0, [r5,#oGameState_Unk_34]
	str r1, [r5,#oGameState_Unk_38]
	str r2, [r5,#oGameState_Unk_3c]
	str r3, [r5,#oGameState_Unk_40]
	str r4, [r5,#oGameState_Unk_44]
	pop {r4-r7,pc}
	thumb_func_end sub_8001092

	thumb_local_start
sub_80010A4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	str r0, [r5,#oGameState_Unk_48]
	str r1, [r5,#0x4c]
	str r2, [r5,#0x50]
	str r3, [r5,#0x54]
	str r4, [r5,#0x58]
	pop {r4-r7,pc}
	thumb_func_end sub_80010A4

// () -> u8
	thumb_func_start GetCurPETNavi
GetCurPETNavi:
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r0, [r3,#oGameState_CurPETNavi]
	mov pc, lr
	thumb_func_end GetCurPETNavi

	thumb_func_start SetCurPETNavi
SetCurPETNavi:
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	strb r0, [r3,#oGameState_CurPETNavi]
	mov pc, lr
	thumb_func_end SetCurPETNavi

	thumb_func_start writeCurPETNaviToS2001c04_Unk07_80010c6
writeCurPETNaviToS2001c04_Unk07_80010c6:
	push {lr}
	bl GetCurPETNavi // () -> u8
	mov r3, r10
	ldr r3, [r3,#oToolkit_S2001c04_Ptr]
	strb r0, [r3,#oS2001c04_Unk_07]
	pop {pc}
	thumb_func_end writeCurPETNaviToS2001c04_Unk07_80010c6

	thumb_func_start sub_80010D4
sub_80010D4:
	push {r4-r7,lr}
	mov r4, r0
	mov r1, #0x42
	bl GetCurPETNaviStatsHword
	mov r6, r0
	mov r0, r4
	mov r1, #0x40
	bl GetCurPETNaviStatsHword
	mov r1, r6
	pop {r4-r7,pc}
	thumb_func_end sub_80010D4

	thumb_func_start sub_80010EC
sub_80010EC:
	push {r4-r7,lr}
	mov r4, r0
	mov r6, r1
	mov r1, #0x42
	bl GetCurPETNaviStatsHword
	cmp r6, r0
	ble loc_80010FE
	mov r6, r0
loc_80010FE:
	mov r0, r4
	mov r1, #0x40
	mov r2, r6
	bl SetCurPETNaviStatsHword
	pop {r4-r7,pc}
	thumb_func_end sub_80010EC

	thumb_local_start
sub_800110A:
	push {r4-r7,lr}
	ldr r6, off_8001140 // =byte_8001144
	mov r7, r0
	sub r5, r1, #2
	mov r4, #0xf
loc_8001114:
	ldrh r0, [r7,r5]
	lsr r3, r0, #0xc
	and r3, r4
	lsr r2, r0, #8
	and r2, r4
	lsr r1, r0, #4
	and r1, r4
	and r0, r4
	ldrb r0, [r6,r0]
	ldrb r1, [r6,r1]
	lsl r1, r1, #4
	orr r0, r1
	ldrb r2, [r6,r2]
	lsl r2, r2, #8
	orr r0, r2
	ldrb r3, [r6,r3]
	lsl r3, r3, #0xc
	orr r0, r3
	strh r0, [r7,r5]
	sub r5, #2
	bge loc_8001114
	pop {r4-r7,pc}
off_8001140: .word byte_8001144
byte_8001144: .byte 0x0, 0x1, 0x2, 0x3, 0x0, 0x5, 0x6, 0x7, 0x0, 0x9, 0xA, 0xB, 0x0, 0xD, 0xE
	.byte 0xF
	thumb_func_end sub_800110A

	thumb_func_start sub_8001154
sub_8001154:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_8001154

// () -> void
	thumb_func_start sub_8001158
sub_8001158:
	push {r4-r7,lr}
	mov r7, r0
loc_800115C:
	ldr r0, [r7]
	tst r0, r0
	beq locret_8001170
	ldr r1, [r7,#4]
	mov r2, #0
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	b loc_800115C
locret_8001170:
	pop {r4-r7,pc}
	thumb_func_end sub_8001158

	thumb_func_start sub_8001172
sub_8001172:
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	strb r0, [r3,#oGameState_Unk_09]
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_8001172

	thumb_func_start calcAngle_800117C
calcAngle_800117C:
	push {lr}
	asr r2, r0, #0x10
	asr r0, r1, #0x10
	mov r1, r2
	svc 0xa
	lsr r0, r0, #8
	pop {pc}
	thumb_func_end calcAngle_800117C

	thumb_func_start sub_800118A
sub_800118A:
	push {lr}
	mov r2, r0
	orr r2, r1
	beq locret_800119E
	bl calcAngle_800117C
	add r0, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	add r0, #1
locret_800119E:
	pop {pc}
	thumb_func_end sub_800118A

	thumb_func_start sub_80011A0
sub_80011A0:
	lsl r0, r0, #1
	ldr r2, off_80011B8 // =math_cosTable
	ldrsh r3, [r2,r0]
	ldr r2, off_80011BC // =byte_80066E0
	ldrsh r2, [r2,r0]
	neg r2, r2
	mul r3, r1
	asr r0, r3, #8
	mul r2, r1
	asr r1, r2, #8
	mov pc, lr
	.balign 4, 0x00
off_80011B8: .word math_cosTable
off_80011BC: .word byte_80066E0
	thumb_func_end sub_80011A0

	thumb_local_start
sub_80011C0:
	push {lr}
	tst r0, r0
	beq loc_80011D0
	sub r0, #1
	lsl r0, r0, #6
	bl sub_80011A0
	pop {pc}
loc_80011D0:
	mov r0, #0
	mov r1, #0
	pop {pc}
	thumb_func_end sub_80011C0

	thumb_func_start sub_80011D6
sub_80011D6:
	sub r0, r0, r2
	add r0, r0, r4
	lsl r2, r4, #1
	cmp r0, r2
	bcs loc_80011EC
	sub r1, r1, r3
	add r1, r1, r4
	cmp r1, r2
	bcs loc_80011EC
	mov r0, #1
	mov pc, lr
loc_80011EC:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_80011D6

	thumb_local_start
sub_80011F0:
	sub r0, r0, r2
	sub r1, r1, r3
	mov r2, r4
	mul r4, r2
	mov r2, r0
	mul r0, r2
	mov r2, r1
	mul r1, r2
	add r0, r0, r1
	cmp r4, r0
	bmi loc_800120A
	mov r0, #1
	mov pc, lr
loc_800120A:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_80011F0

	thumb_func_start sub_800120E
sub_800120E:
	push {r5,lr}
	tst r4, r4
	bne loc_800123C
loc_8001214:
	ldr r0, [r0,#8]
	sub r0, r3, r0
	bmi loc_8001220
	mov r0, r4
	mov r1, #0
	pop {r5,pc}
loc_8001220:
	lsr r1, r6, #8
	bl SWI_Div
	bl SWI_Sqrt
	mov r2, #0
	mov r1, #0xff
	tst r0, r1
	beq loc_8001234
	mov r2, #1
loc_8001234:
	lsr r0, r0, #8
	add r1, r0, r2
	mov r0, #0
	pop {r5,pc}
loc_800123C:
	ldmia r0!, {r5,r7}
	push {r0,r3}
	sub r1, r1, r5
	asr r1, r1, #8
	mov r5, r1
	mul r1, r5
	sub r2, r2, r7
	asr r2, r2, #8
	mov r5, r2
	mul r2, r5
	add r0, r1, r2
	bl SWI_Sqrt
	lsl r0, r0, #8
	push {r4}
	mov r1, r4
	bl SWI_Div
	pop {r4}
	lsr r4, r4, #1
	cmp r1, r4
	bmi loc_800126A
	add r0, #1
loc_800126A:
	mov r1, r0
	pop {r0,r3}
	tst r1, r1
	beq loc_8001214
	ldr r0, [r0]
	sub r0, r3, r0
	push {r1}
	bl SWI_Div
	pop {r1}
	neg r2, r6
	mul r2, r1
	lsr r2, r2, #1
	add r0, r0, r2
	pop {r5,pc}
	thumb_func_end sub_800120E

	thumb_local_start
sub_8001288:
	push {lr}
	ldr r7, [r0]
	sub r1, r1, r7
	ldr r7, [r0,#4]
	sub r2, r2, r7
	push {r1,r2}
	lsl r0, r3, #1
	neg r1, r4
	bl SWI_Div
	lsr r3, r3, #1
	cmp r1, r3
	bmi loc_80012A4
	add r0, #1
loc_80012A4:
	pop {r1,r2}
	push {r0,r1}
	mov r1, r0
	mov r0, r2
	bl SWI_Div
	mov r2, r0
	pop {r0,r1}
	push {r0,r2}
	mov r2, r1
	mov r1, r0
	mov r0, r2
	bl SWI_Div
	mov r1, r0
	pop {r0,r2}
	pop {pc}
	thumb_func_end sub_8001288

	thumb_local_start
sub_80012C6:
	push {lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	str r5, [sp]
	push {r4,r6}
	ldmia r0!, {r3-r5}
	sub r0, r2, r4
	sub r1, r1, r3
	push {r0,r1}
	bl calcAngle_800117C
	mov r8, r0
	mov r4, r0
	pop {r0,r1}
	asr r0, r0, #8
	mov r2, r0
	mul r0, r2
	asr r1, r1, #8
	mov r2, r1
	mul r1, r2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #8
	mov r1, r6
	lsl r1, r1, #1
	svc 6
	mov r1, r0
	mov r0, r4
	bl sub_80011A0
	pop {r4,r6}
	push {r0,r1}
	lsl r0, r4, #1
	mov r1, r6
	mul r1, r6
	lsl r0, r0, #0x10
	bl SWI_Div
	neg r3, r0
	mul r0, r6
	mov r2, r0
	pop {r0,r1}
	ldr r5, [sp]
	add sp, sp, #8
	mov r4, r8
	add r4, #0x20
	mov r6, #0xe0
	and r4, r6
	lsr r4, r4, #5
	pop {r7}
	mov r8, r7
	pop {pc}
	thumb_func_end sub_80012C6

	thumb_func_start sub_8001330
sub_8001330:
	push {r4-r6,lr}
	push {r3,r4,r6}
	mov r6, r4
	ldmia r0!, {r3-r5}
	push {r5}
	sub r0, r2, r4
	sub r1, r1, r3
	push {r0,r1}
	bl calcAngle_800117C
	mov r4, r0
	pop {r0,r1}
	asr r0, r0, #8
	mov r2, r0
	mul r0, r2
	asr r1, r1, #8
	mov r2, r1
	mul r1, r2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #8
	mov r1, r6
	svc 6
	mov r1, r0
	mov r0, r4
	bl sub_80011A0
	pop {r5}
	pop {r3,r4,r6}
	push {r0,r1}
	mov r0, r4
	mul r0, r4
	mul r0, r6
	asr r0, r0, #1
	sub r3, r3, r5
	sub r0, r3, r0
	mov r1, r4
	svc 6
	mov r2, r0
	pop {r0,r1}
	pop {r4-r6,pc}
	thumb_func_end sub_8001330

	thumb_func_start sub_8001382
sub_8001382:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldr r2, [r1,#oBattleState_Unk_5c]
	orr r2, r0
	str r2, [r1,#oBattleState_Unk_5c]
	mov pc, lr
	thumb_func_end sub_8001382

	thumb_local_start
sub_800138E:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldr r2, [r1,#oBattleState_Unk_5c]
	bic r2, r0
	str r2, [r1,#oBattleState_Unk_5c]
	mov pc, lr
	thumb_func_end sub_800138E

	thumb_func_start sub_800139A
sub_800139A:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#oBattleState_Unk_5c]
	mov pc, lr
	thumb_func_end sub_800139A

	thumb_func_start sub_80013A2
sub_80013A2:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	str r0, [r1,#oBattleState_Unk_5c]
	mov pc, lr
	thumb_func_end sub_80013A2

	thumb_local_start
sub_80013AA:
	push {r4-r7,lr}
	sub sp, sp, #0x40
	str r6, [sp,#4]
	str r7, [sp,#0x10]
	ldr r7, off_80014B8 // =eCamera+76
	ldrb r7, [r7]
	str r3, [sp,#0x24]
	str r4, [sp,#0x28]
	str r2, [sp]
	mov r2, #0xff
	and r2, r1
	str r2, [sp,#0x20]
	mov r2, r1
	lsl r2, r2, #0x17
	lsr r2, r2, #0x1f
	eor r2, r7
	str r2, [sp,#0x38]
	neg r2, r2
	add r2, r2, r2
	add r2, #1
	str r2, [sp,#0x18]
	mov r2, r1
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	str r2, [sp,#0x3c]
	neg r2, r2
	add r2, r2, r2
	add r2, #1
	str r2, [sp,#0x1c]
	lsl r5, r5, #0xc
	str r5, [sp,#0x2c]
	ldr r1, [sp,#0x20]
	lsl r1, r1, #2
	ldr r1, [r0,r1]
	add r1, r1, r0
	ldr r2, [r1,#4]
	add r2, r2, r0
	str r2, [sp,#0xc]
	ldr r2, [r1]
	add r2, r2, r0
	str r2, [sp,#8]
	ldr r2, [r1,#8]
	ldr r3, [r2,r0]
	add r2, r2, r3
	add r2, r2, r0
	ldrb r2, [r2]
	lsl r2, r2, #2
	ldr r3, [r1,#0xc]
	add r3, r3, r0
	ldr r2, [r3,r2]
	add r3, r3, r2
	ldr r2, [sp]
	ldr r4, [sp,#4]
	mov r1, #0
	str r1, [sp,#0x14]
loc_8001418:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq loc_80014A8
	ldr r1, [sp,#0x10]
	sub r1, #8
	str r1, [sp,#0x10]
	blt loc_80014A8
	ldr r1, [sp,#0x2c]
	add r0, r0, r1
	ldr r1, [sp,#4]
	add r0, r0, r1
	str r0, [r2,#4]
	ldrb r0, [r3,#4]
	ldrb r1, [r3,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsl r4, r0, #2
	add r4, r4, r1
	add r4, r4, r4
	ldr r5, off_80014B4 // =byte_80014BC
loc_8001440:
	add r4, r4, r5
	ldrb r5, [r4]
	ldr r6, [sp,#0x38]
	mul r5, r6
	str r5, [sp,#0x30]
	ldrb r5, [r4,#1]
	ldr r6, [sp,#0x3c]
	mul r5, r6
	str r5, [sp,#0x34]
	lsl r0, r0, #0xe
	lsl r1, r1, #0x1e
	add r0, r0, r1
	mov r1, #2
	ldrsb r4, [r3,r1]
	ldr r1, [sp,#0x1c]
	mul r1, r4
	ldr r4, [sp,#0x28]
	add r1, r1, r4
	ldr r4, [sp,#0x34]
	sub r1, r1, r4
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	add r0, r0, r1
	mov r1, #1
	ldrsb r1, [r3,r1]
	ldr r4, [sp,#0x18]
	mul r1, r4
	ldr r4, [sp,#0x24]
	add r1, r1, r4
	ldr r4, [sp,#0x30]
	sub r1, r1, r4
	lsl r1, r1, #0x17
	lsr r1, r1, #7
	add r0, r0, r1
	ldr r1, [sp,#0x38]
	lsl r1, r1, #0x1c
	ldrb r4, [r3,#3]
	mov r5, #0xf0
	and r5, r4
	lsl r5, r5, #0x16
	eor r1, r5
	add r0, r0, r1
	ldr r1, [sp,#0x3c]
	lsl r1, r1, #0x1d
	add r0, r0, r1
	str r0, [r2]
	ldr r1, [sp,#0x14]
	add r1, #1
	str r1, [sp,#0x14]
	add r2, #8
	add r3, #5
	b loc_8001418
loc_80014A8:
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	ldr r2, [sp,#0x14]
	add sp, sp, #0x40
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80014B4: .word byte_80014BC
off_80014B8: .word eCamera+0x4C // eCamera.unk_4C
byte_80014BC: .byte 0x8, 0x8, 0x10, 0x10, 0x20, 0x20, 0x40, 0x40
	.word byte_8200810
	.word 0x20401020
	.word 0x20081008
	.word 0x40202010
	thumb_func_end sub_80013AA

	thumb_func_start sub_80014D4
sub_80014D4:
	push {lr}
	asr r0, r0, #0xc
	mov r2, r0
	mul r0, r2
	asr r1, r1, #0xc
	mov r2, r1
	mul r1, r2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #0xc
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80014D4

// Another function for copying words
// except it will do a backwards copy if
// source < dest, otherwise it will do a
// forwards copy. This may possibly be
// for when the source and dest overlap

/* (r0:uint * src, r1:uint * dest, r2:int size) -> void
   preserves: r0-r7,lr
   ignores: r4-r12*/
	thumb_func_start copyWords_80014EC
copyWords_80014EC: // 80014EC
	push {r0-r7,lr}
	cmp r0, r1
	blt .doReverseCopy
.forwardsCopyLoop
	ldr r3, [r0]
	str r3, [r1]
	add r0, #4
	add r1, #4
	sub r2, #4
	// while (a3_size > 0);
	bgt .forwardsCopyLoop
	pop {r0-r7,pc}
.doReverseCopy
	sub r2, #4
	add r0, r0, r2
	add r1, r1, r2
.reverseCopyLoop
	ldr r3, [r0]
	str r3, [r1]
	sub r0, #4
	sub r1, #4
	sub r2, #4
	// while (a3_size >= 0);
	bge .reverseCopyLoop
	pop {r0-r7,pc}
	thumb_func_end copyWords_80014EC

// () -> void
	thumb_func_start SeedRNG2
SeedRNG2:
	ldr r0, rng_8001594 // =0xa338244f
	ldr r1, off_8001598 // =eRngSeed20013F0
	str r0, [r1]
	mov pc, lr
	thumb_func_end SeedRNG2

// () -> int
	thumb_func_start GetRNG2
GetRNG2:
	push {r7,lr}
	ldr r7, off_800159C // =eRngSeed20013F0
	ldr r0, [r7]
	ldr r1, rng_80015A0 // =0x873ca9e5
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add r0, #1
	eor r0, r1
	str r0, [r7]
	pop {r7,pc}
	thumb_func_end GetRNG2

	thumb_func_start GetPositiveSignedRNG2
GetPositiveSignedRNG2:
	push {r7,lr}
	ldr r7, off_80015A4 // =eRngSeed20013F0
	ldr r0, [r7]
	ldr r1, rng_80015A0 // =0x873ca9e5
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add r0, #1
	eor r0, r1
	str r0, [r7]
	lsl r0, r0, #1
	lsr r0, r0, #1
	pop {r7,pc}
	thumb_func_end GetPositiveSignedRNG2

// () -> void
	thumb_func_start GetRNG1
GetRNG1:
	push {r7,lr}
	ldr r7, off_80015A8 // =rngSeed_2001120
	ldr r0, [r7]
	ldr r1, rng_80015A0 // =0x873ca9e5
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add r0, #1
	eor r0, r1
	str r0, [r7]
	pop {r7,pc}
	thumb_func_end GetRNG1

	thumb_func_start GetPositiveSignedRNG1
GetPositiveSignedRNG1:
	push {r7,lr}
	ldr r7, off_80015AC // =rngSeed_2001120
	ldr r0, [r7]
	ldr r1, rng_80015A0 // =0x873ca9e5
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add r0, #1
	eor r0, r1
	str r0, [r7]
	lsl r0, r0, #1
	lsr r0, r0, #1
	pop {r7,pc}
	thumb_func_end GetPositiveSignedRNG1

	thumb_local_start
dead_rng_800157C:
	push {r7,lr}
	ldr r7, off_80015B0 // =dword_20018E8
	ldr r0, [r7]
	ldr r1, rng_80015A0 // =0x873ca9e5
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add r0, #1
	eor r0, r1
	str r0, [r7]
	pop {r7,pc}
	.balign 4, 0x00
rng_8001594: .word 0xA338244F
off_8001598: .word eRngSeed20013F0
off_800159C: .word eRngSeed20013F0
rng_80015A0: .word 0x873CA9E5
off_80015A4: .word eRngSeed20013F0
off_80015A8: .word rngSeed_2001120
off_80015AC: .word rngSeed_2001120
off_80015B0: .word dword_20018E8
	thumb_func_end dead_rng_800157C

	thumb_func_start sub_80015B4
sub_80015B4:
	push {lr}
	ldr r0, dword_80015C8 // =0x600e000
	ldr r1, dword_80015CC // =0x2000
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	pop {pc}
dword_80015C8: .word 0x600E000
dword_80015CC: .word 0x2000
	thumb_func_end sub_80015B4

	thumb_func_start copyToVRAMAndClear_iBGTileIdBlocks_Ptr
copyToVRAMAndClear_iBGTileIdBlocks_Ptr:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_iBGTileIdBlocks_Ptr]
	// copies
	ldr r1, dword_80015EC // =0x600e000
	ldr r2, dword_80015F0 // =0x2000
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_iBGTileIdBlocks_Ptr]
	ldr r1, dword_80015F4 // =0x800
	ldr r2, fill // =0x2ff02ff
	bl FillByEightWords
	pop {pc}
dword_80015EC: .word 0x600E000
dword_80015F0: .word 0x2000
dword_80015F4: .word 0x800
fill: .word 0x2FF02FF
	thumb_func_end copyToVRAMAndClear_iBGTileIdBlocks_Ptr

	thumb_func_start sub_80015FC
sub_80015FC:
	ldr r1, off_8001614 // =byte_8001618
	lsl r0, r0, #3
	add r1, r1, r0
	mov r3, r10
	ldr r2, [r3,#oToolkit_RenderInfoPtr]
	add r2, #4
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1,#4]
	str r0, [r2,#4]
	mov pc, lr
	.balign 4, 0x00
off_8001614: .word byte_8001618
byte_8001618: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x3C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x8, 0x3C, 0x1, 0x3D, 0x0, 0x0, 0x0, 0x0, 0x8, 0x3C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x5, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0xB, 0x3F
	.byte 0x8, 0x3C, 0x83, 0x3D, 0x82, 0x3E, 0x8D, 0x3F, 0x8, 0x3C, 0x83, 0x3D, 0xE, 0x3E, 0x8D, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x0, 0x0, 0x0, 0x0
	.byte 0x8, 0x3C, 0x83, 0x3D, 0x2, 0x3E, 0x81, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x5E, 0x81, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x85, 0x3F, 0x8, 0x3C, 0x83, 0x3D, 0x2, 0x3E, 0x9, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x5, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x5, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x1, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x1, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0xA, 0x3E, 0x9, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x1, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x1, 0x3E, 0x8, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x5, 0x3F, 0x8, 0x3C, 0x3, 0xE1, 0x2, 0x3E, 0x1, 0x3F
	.byte 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x1, 0x3F, 0x8, 0x3C, 0x3, 0x3D, 0x2, 0x3E, 0x9, 0x3F
	thumb_func_end sub_80015FC

	thumb_func_start map_8001708
map_8001708:
	push {lr}
	cmp r0, #INTERNET_MAP_GROUP_START
	bge loc_8001712
	ldr r3, off_8001724 // =off_803385C
	b loc_8001716
loc_8001712:
	ldr r3, off_8001728 // =off_8033878
	sub r0, #INTERNET_MAP_GROUP_START
loc_8001716:
	lsl r0, r0, #2
	ldr r3, [r3,r0]
	add r3, r3, r1
	ldrb r0, [r3]
	bl sub_80015FC
	pop {pc}
off_8001724: .word off_803385C
off_8001728: .word off_8033878
	thumb_func_end map_8001708

	thumb_func_start render_800172C
render_800172C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r5, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, off_8001768 // =MosaicSize
	ldrh r2, [r5,#2]
	strh r2, [r1]
	mov r0, r5
	add r0, #4
	ldr r1, off_800176C // =BG0Control
	mov r2, #0x38
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	// src
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	// dest
	ldr r1, off_8001770 // =Window0HorizontalDimensions
	// halfwordCount
	mov r2, #0xc
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	ldr r5, [r7,#oToolkit_Unk2009740_Ptr]
	ldr r1, off_8001774 // =ColorSpecialEffectsSelection
	ldr r2, [r5]
	str r2, [r1]
	ldrh r2, [r5,#4]
	strh r2, [r1,#0x4] // (Brightness_Fade_In_Out_Coefficient - 0x4000050)
	ldr r5, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, off_8001764 // =LCDControl
	ldrh r2, [r5]
	strh r2, [r1]
	pop {r4-r7,pc}
off_8001764: .word LCDControl
off_8001768: .word MosaicSize
off_800176C: .word BG0Control
off_8001770: .word Window0HorizontalDimensions
off_8001774: .word ColorSpecialEffectsSelection
	thumb_func_end render_800172C

	thumb_func_start SetRenderInfoLCDControl
SetRenderInfoLCDControl:
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r0, [r1,#oRenderInfo_Unk_00]
	mov pc, lr
	thumb_func_end SetRenderInfoLCDControl

	thumb_func_start GetRenderInfoLCDControl
GetRenderInfoLCDControl:
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1,#oRenderInfo_Unk_00]
	mov pc, lr
	thumb_func_end GetRenderInfoLCDControl

	thumb_func_start renderInfo_8001788
renderInfo_8001788:
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	mov r1, #0
	strh r1, [r0,#0xc]
	strh r1, [r0,#0xe]
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x1a]
	strh r1, [r0,#0x18]
	mov pc, lr
	thumb_func_end renderInfo_8001788

	thumb_func_start renderInfo_80017A0
renderInfo_80017A0:
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	mov r1, #0
	strh r1, [r0,#2]
	mov pc, lr
	thumb_func_end renderInfo_80017A0

	thumb_func_start zeroFillVRAM
zeroFillVRAM:
	push {lr}
	ldr r0, dword_80017D0 // =0x6000000
	mov r1, #0x40
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, dword_80017D4 // =0x6004000
	mov r1, #0x40
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, dword_80017D8 // =0x6008000
	mov r1, #0x40
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, dword_80017DC // =0x600c000
	mov r1, #0x20
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
dword_80017D0: .word 0x6000000
dword_80017D4: .word 0x6004000
dword_80017D8: .word 0x6008000
dword_80017DC: .word 0x600C000
	thumb_func_end zeroFillVRAM

	thumb_func_start ZeroFill_byte_3001960
ZeroFill_byte_3001960:
	push {lr}
	ldr r0, off_8001800 // =palette_3001960
	mov r1, #2
	bl ZeroFillByHalfword
	pop {pc}
	thumb_func_end ZeroFill_byte_3001960

	thumb_func_start main_zeroFill_80017EC
main_zeroFill_80017EC:
	push {lr}
	ldr r0, off_8001800 // =palette_3001960
	mov r1, #2
	bl ZeroFillByHalfword
	ldr r0, dword_8001804 // =0x5000000
	mov r1, #2
	bl ZeroFillByHalfword
	pop {pc}
off_8001800: .word palette_3001960
dword_8001804: .word 0x5000000
	thumb_func_end main_zeroFill_80017EC

	thumb_func_start copyPalletesToIWRAM_8001808
copyPalletesToIWRAM_8001808:
	push {lr}
	ldr r0, off_8001818 // =iPalette3001B60
	ldr r1, dword_800181C // =0x5000000
	mov r2, #0x20
	lsl r2, r2, #4
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8001818: .word iPalette3001B60
dword_800181C: .word 0x5000000
	thumb_func_end copyPalletesToIWRAM_8001808

	thumb_func_start zeroFill_e2009740
zeroFill_e2009740:
	push {lr}
	mov r2, r10
	// memBlock
	ldr r0, [r2,#oToolkit_Unk2009740_Ptr]
	// size
	mov r1, #8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end zeroFill_e2009740

	thumb_func_start zeroFill_e200F3A0
zeroFill_e200F3A0:
	push {lr}
	mov r2, r10
	// memBlock
	ldr r0, [r2,#oToolkit_Unk200f3a0_Ptr]
	// size
	mov r1, #0xc
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end zeroFill_e200F3A0

	thumb_func_start ZeroFillGFX30025c0
ZeroFillGFX30025c0:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_iBGTileIdBlocks_Ptr]
	ldr r1, dword_800184C // =0x2000
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {pc}
	.balign 4, 0x00
dword_800184C: .word 0x2000
	thumb_func_end ZeroFillGFX30025c0

	thumb_func_start copyMemory_8001850
copyMemory_8001850:
	push {lr}
	ldr r0, off_8001868 // =dword_86A5520
	ldr r1, dword_800186C // =0x600d400
	ldr r2, dword_8001870 // =0x800
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r0, off_8001874 // =byte_86BEC80
	ldr r1, off_8001878 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8001868: .word dword_86A5520
dword_800186C: .word 0x600D400
dword_8001870: .word 0x800
off_8001874: .word byte_86BEC80
off_8001878: .word unk_3001B40
	thumb_func_end copyMemory_8001850

	thumb_func_start sub_800187C
sub_800187C:
	lsl r0, r0, #1
	lsl r1, r1, #6
	lsl r2, r2, #0xb
	add r0, r0, r1
	add r0, r0, r2
	mov r1, r10
	ldr r1, [r1,#oToolkit_iBGTileIdBlocks_Ptr]
	add r1, r1, r0
	strh r3, [r1]
	mov pc, lr
	thumb_func_end sub_800187C

	thumb_func_start sub_8001890
sub_8001890:
	push {r4-r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_iBGTileIdBlocks_Ptr]
	lsl r2, r2, #0xb
	add r6, r6, r2
	lsl r0, r0, #1
	add r6, r6, r0
	lsl r1, r1, #6
	add r6, r6, r1
	mov r2, #0
	mov r1, r6
loc_80018A6:
	ldrh r7, [r3]
	strh r7, [r6]
	add r3, #2
	add r6, #2
	add r2, #1
	cmp r2, r4
	blt loc_80018A6
	mov r2, #0
	add r1, #0x40
	mov r6, r1
	sub r5, #1
	cmp r5, #0
	bgt loc_80018A6
	pop {r4-r7,pc}
	thumb_func_end sub_8001890

	thumb_func_start CopyBackgroundTiles
// (int j, int i, int tileBlock32x32, u16 *tileIds, int j_size@R4, int i_size@R5) -> void
// this is copying Tiles for BG0 and BG2
CopyBackgroundTiles:
	push {r6,r7,lr}
	ldr r7, off_80018CC // =iCopyBackgroundTiles+1
	mov lr, pc
	bx r7
	pop {r6,r7,pc}
off_80018CC: .word iCopyBackgroundTiles+1
	thumb_func_end CopyBackgroundTiles

	thumb_func_start call_sub_3005EBA
call_sub_3005EBA:
	push {r6,r7,lr}
	ldr r7, off_80018DC // =sub_3005EBA+1
	mov lr, pc
	bx r7
	pop {r6,r7,pc}
	.balign 4, 0x00
off_80018DC: .word sub_3005EBA+1
	thumb_func_end call_sub_3005EBA

	thumb_func_start sub_80018E0
sub_80018E0:
	push {r6,r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_iBGTileIdBlocks_Ptr]
	lsl r2, r2, #0xb
	add r6, r6, r2
	lsl r1, r1, #6
	add r6, r6, r1
	mov r1, #0x1f
	and r0, r1
loc_80018F2:
	ldrh r7, [r3]
	lsl r1, r0, #1
	strh r7, [r6,r1]
	add r0, #1
	mov r1, #0x1f
	and r0, r1
	add r3, #2
	sub r4, #1
	cmp r4, #0
	bgt loc_80018F2
	pop {r6,r7,pc}
	push {r6,r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_iBGTileIdBlocks_Ptr]
	lsl r2, r2, #0xb
	add r6, r6, r2
	lsl r0, r0, #1
	add r6, r6, r0
	mov r0, #0x1f
	and r1, r0
loc_800191A:
	ldrh r7, [r3]
	lsl r0, r1, #6
	strh r7, [r6,r0]
	add r1, #1
	mov r0, #0x1f
	and r1, r0
	add r3, #2
	sub r4, #1
	cmp r4, #0
	bgt loc_800191A
	pop {r6,r7,pc}
	thumb_func_end sub_80018E0

	thumb_func_start sub_8001930
sub_8001930:
	push {r4-r7,lr}
	lsl r2, r2, #2
	lsl r1, r1, #0xc
	orr r0, r1
	mov r5, #0
loc_800193A:
	strh r0, [r4]
	add r0, #1
	strh r0, [r4,#2]
	add r0, #1
	add r1, r4, r2
	strh r0, [r1]
	add r0, #1
	strh r0, [r1,#2]
	add r0, #1
	add r4, #4
	add r5, #4
	cmp r5, r2
	blt loc_800193A
	sub r3, #1
	blt loc_800193A
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8001930

	thumb_func_start SetBGScrollCallbacks
// set the bg scroll callback
// is actually just an arbitrary callback
// but all calls to this function pass
// a callback that modifies BG scroll
// registers (modifies eRenderInfo_Unk_10 to
// eRenderInfo_Unk_1a, which are copied to the
// bg scroll registers)
// r0 - callback 0
// r1 - callback 1
// r2 - hblank interrupt callback
SetBGScrollCallbacks:
	push {lr}
	tst r0, r0
	beq .callbackZeroNotSet
	ldr r3, off_80019AC // =eBGScrollCallbacks
	str r0, [r3,#oBGScrollCallbacks_Callback0]
	str r1, [r3,#oBGScrollCallbacks_Callback1] // (off_200A888 - 0x200a880)
	str r2, [r3,#oBGScrollCallbacks_HBlankCallback] // (doff_200A884 - 0x200a880)
	mov r0, #4 // hblank
	mov r1, r2
	bl SetInterruptCallback
.callbackZeroNotSet
	pop {pc}
	thumb_func_end SetBGScrollCallbacks

	thumb_func_start SetDummyBGScrollCallbacks
// set all bg callbacks to nullsubs
SetDummyBGScrollCallbacks:
	push {lr}
	ldr r2, off_80019AC // =eBGScrollCallbacks
	ldr r0, off_800198C // =nullsub_39+1
	str r0, [r2,#oBGScrollCallbacks_Callback0]
	str r0, [r2,#oBGScrollCallbacks_Callback1] // (off_200A888 - 0x200a880)
	ldr r1, dword_8001990 // =nullsub_38+1
	str r1, [r2,#oBGScrollCallbacks_HBlankCallback] // (doff_200A884 - 0x200a880)
	mov r0, #4 // hblank
	bl SetInterruptCallback
	pop {pc}
	.balign 4, 0
off_800198C: .word nullsub_39+1
dword_8001990: .word nullsub_38+1
	thumb_func_end SetDummyBGScrollCallbacks

	thumb_func_start CallBGScrollCallback0
CallBGScrollCallback0:
	push {lr}
	ldr r1, off_80019AC // =eBGScrollCallbacks
	ldr r0, [r1,#oBGScrollCallbacks_Callback0]
	mov lr, pc
	bx r0
	pop {pc}
	thumb_func_end CallBGScrollCallback0

	thumb_func_start CallBGScrollCallback1
CallBGScrollCallback1:
	push {lr}
	ldr r1, off_80019AC // =eBGScrollCallbacks
	ldr r0, [r1,#oBGScrollCallbacks_Callback1] // (off_200A888 - 0x200a880)
	mov lr, pc
	bx r0
	pop {pc}
off_80019AC: .word eBGScrollCallbacks
	thumb_func_end CallBGScrollCallback1

	thumb_func_start nullsub_35
nullsub_35:
	mov pc, lr
	thumb_func_end nullsub_35

	thumb_func_start nullsub_36
nullsub_36:
	mov pc, lr
	thumb_func_end nullsub_36

	thumb_func_start BGScrollCB_BG1Diagonal3to2Scroll
BGScrollCB_BG1Diagonal3to2Scroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	sub r2, #8
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	ldr r3, [r1,#oBGScrollCBCounters_Counter1] // (dword_2009694 - 0x2009690)
	sub r3, #4
	str r3, [r1,#oBGScrollCBCounters_Counter1] // (dword_2009694 - 0x2009690)
	lsr r3, r3, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_10]
	strh r3, [r1,#oRenderInfo_Unk_12]
	mov pc, lr
	thumb_func_end BGScrollCB_BG1Diagonal3to2Scroll

	thumb_func_start BGScrollCB_BG3Diagonal3to2Scroll
BGScrollCB_BG3Diagonal3to2Scroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	sub r2, #8
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	ldr r3, [r1,#oBGScrollCBCounters_Counter1] // (dword_2009694 - 0x2009690)
	sub r3, #4
	str r3, [r1,#oBGScrollCBCounters_Counter1] // (dword_2009694 - 0x2009690)
	lsr r3, r3, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_18]
	strh r3, [r1,#oRenderInfo_Unk_1a]
	mov pc, lr
	thumb_func_end BGScrollCB_BG3Diagonal3to2Scroll

	thumb_func_start BGScrollCB_BG1UpScroll
BGScrollCB_BG1UpScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r3, [r1,#oBGScrollCBCounters_Counter0]
	sub r3, #4
	str r3, [r1,#oBGScrollCBCounters_Counter0]
	lsr r3, r3, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r3, [r1,#oRenderInfo_Unk_12]
	mov pc, lr
	thumb_func_end BGScrollCB_BG1UpScroll

	thumb_func_start BGScrollCB_BG3UpScroll
BGScrollCB_BG3UpScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r3, [r1,#oBGScrollCBCounters_Counter0]
	sub r3, #4
	str r3, [r1,#oBGScrollCBCounters_Counter0]
	lsr r3, r3, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r3, [r1,#oRenderInfo_Unk_1a]
	mov pc, lr
	thumb_func_end BGScrollCB_BG3UpScroll

	thumb_func_start BGScrollCB_BG1DownScroll
BGScrollCB_BG1DownScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	add r2, #4
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_12]
	mov pc, lr
	thumb_func_end BGScrollCB_BG1DownScroll

	thumb_func_start BGScrollCB_BG3DownScroll
BGScrollCB_BG3DownScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	add r2, #4
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_1a]
	mov pc, lr
	thumb_func_end BGScrollCB_BG3DownScroll

	thumb_func_start BGScrollCB_BG1SlowRightScroll
BGScrollCB_BG1SlowRightScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	add r2, #1
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_10]
	mov pc, lr
	thumb_func_end BGScrollCB_BG1SlowRightScroll

	thumb_func_start BGScrollCB_BG3SlowRightScroll
BGScrollCB_BG3SlowRightScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	add r2, #1
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_18]
	mov pc, lr
	thumb_func_end BGScrollCB_BG3SlowRightScroll

	thumb_func_start BGScrollCB_BG1FastLeftScroll
BGScrollCB_BG1FastLeftScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	sub r2, #8
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_10]
	mov pc, lr
	thumb_func_end BGScrollCB_BG1FastLeftScroll

	thumb_func_start BGScrollCB_BG3FastLeftScroll
BGScrollCB_BG3FastLeftScroll:
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	sub r2, #8
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	lsr r2, r2, #4
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r2, [r1,#oRenderInfo_Unk_18]
	mov pc, lr
	thumb_func_end BGScrollCB_BG3FastLeftScroll

	thumb_local_start
BGScrollCB_BG1AccelToVeryFastDownScroll:
	push {lr}
	bl sub_800139A
	mov r1, #0x10
	tst r0, r1
	beq locret_8001AAC
	ldr r1, off_8001AB0 // =eBGScrollCBCounters
	ldr r2, [r1,#oBGScrollCBCounters_Counter0]
	mov r3, #1
	lsl r3, r3, #0xa
	sub r2, r2, r3
	mov r3, #4
	lsl r3, r3, #0x10
	neg r3, r3
	cmp r2, r3
	bge loc_8001A9E
	mov r2, r3
loc_8001A9E:
	str r2, [r1,#oBGScrollCBCounters_Counter0]
	asr r2, r2, #0x10
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	ldrh r3, [r1,#oRenderInfo_Unk_12]
	sub r3, r3, r2
	strh r3, [r1,#oRenderInfo_Unk_12]
locret_8001AAC:
	pop {pc}
	.balign 4, 0
off_8001AB0: .word eBGScrollCBCounters
	thumb_func_end BGScrollCB_BG1AccelToVeryFastDownScroll

	thumb_func_start nullsub_39
nullsub_39:
	mov pc, lr
	.balign 4, 0x00
off_8001AB8: .word unk_200DF40
	.word unk_200DF40
	.word unk_200E580
	.word unk_200E640
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200E440
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	.word unk_200DF40
	thumb_func_end nullsub_39

	thumb_func_start zeroFill_e20094C0
zeroFill_e20094C0:
	push {lr}
	// memBlock
	ldr r0, off_8001C40 // =eGFXAnimStates
	// size
	ldr r1, off_8001B08 // =0x1b0
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
off_8001B08: .word 0x1B0
	thumb_func_end zeroFill_e20094C0

	thumb_local_start
sub_8001B0C:
	push {r4-r7,lr}
	ldr r1, off_8001B18 // =off_8001AB8
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8001B18: .word off_8001AB8
	thumb_func_end sub_8001B0C

	thumb_func_start LoadGFXAnim
// r0 struct format: word0 word4 word8 byte9 (multiple fields depending on command)
LoadGFXAnim:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}

	ldr r7, off_8001C40 // =eGFXAnimStates
	ldrb r1, [r0,#oGFXAnimData_Index]
	mov r2, #oGFXAnimState_Size
	mul r2, r1
	add r7, r7, r2
	strb r1, [r7,#oGFXAnimState_Index]

	ldr r1, [r0,#oGFXAnimData_Param0]
	str r1, [r7,#oGFXAnimState_Param0]

	ldr r2, [r0,#oGFXAnimData_Param1]
	str r2, [r7,#oGFXAnimState_Param1]

	ldr r3, [r0,#oGFXAnimData_Command]
	str r3, [r7,#oGFXAnimState_Command_Param2to3]

	add r0, #oGFXAnimData_ParamNext
	mov r6, #1
	cmp r3, #8
	beq loc_8001B48
	ldr r6, [r0,#oGFXAnimData_Delay - oGFXAnimData_ParamNext]
loc_8001B48:
	strh r6, [r7,#oGFXAnimState_Timer]
	mov r6, #1
	strb r6, [r7,#oGFXAnimState_IsActive]
	str r0, [r7,#oGFXAnimState_LoopAddress]
	str r0, [r7,#oGFXAnimState_CommandPos]
	ldr r6, off_8001B68 // =off_8001C24
	ldrb r1, [r7,#oGFXAnimState_Command]
	ldr r6, [r6,r1]
	mov lr, pc
	bx r6
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8001B68: .word off_8001C24
	thumb_func_end LoadGFXAnim

	thumb_func_start TerminateGFXAnim
TerminateGFXAnim:
	push {r4-r7,lr}
	push {r0}
	ldr r7, off_8001C40 // =eGFXAnimStates
	mov r1, #oGFXAnimState_Size
	mul r1, r0
	add r7, r7, r1
	mov r0, #0
	strb r0, [r7]
	pop {r0}
	bl Terminate_ePalette20097a0_Transform
	pop {r4-r7,pc}
	thumb_func_end TerminateGFXAnim

	thumb_func_start IsGFXAnimActive
IsGFXAnimActive:
	push {r4-r7,lr}
	ldr r7, off_8001C40 // =eGFXAnimStates
	mov r1, #oGFXAnimState_Size
	mul r1, r0
	add r7, r7, r1
	ldrb r0, [r7]
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end IsGFXAnimActive

	thumb_func_start ProcessGFXAnims
ProcessGFXAnims:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r7, off_8001C40 // =eGFXAnimStates
	mov r4, #0
.loopStruct
	ldrb r1, [r7,#oGFXAnimState_IsActive]
	tst r1, r1
	bne .structIsActive
.doneThisStruct
	add r7, #oGFXAnimState_Size
	add r4, #1
	cmp r4, #NUM_S20094C0_STRUCTS // 0x12
	bge .doneAllStructs
	b .loopStruct
.structIsActive

	ldrh r1, [r7,#oGFXAnimState_Timer]
	sub r1, #1
	strh r1, [r7,#oGFXAnimState_Timer]
	cmp r1, #0
	bgt .doneThisStruct

	ldr r0, [r7,#oGFXAnimState_CommandPos] // extended data start pointer (S8001b1c + 0xc)
	ldr r1, off_8001C00 // =byte_8001C08
	ldrb r2, [r7,#oGFXAnimState_Command] // read LoadGFXAnim type
	ldr r1, [r1,r2]
	add r0, r0, r1

	ldr r1, [r0]
	cmp r1, #0
	beq .noMoreEntries

	cmp r1, #2
	beq .setLoopAddressAndJump

	cmp r1, #1
	bne .gotGFXAnimCommandPos

	ldr r0, [r7,#oGFXAnimState_LoopAddress]
	b .gotGFXAnimCommandPos

.setLoopAddressAndJump
	ldr r0, [r0,#4]
	str r0, [r7,#oGFXAnimState_LoopAddress]
.gotGFXAnimCommandPos
	str r0, [r7,#oGFXAnimState_CommandPos]
	ldr r1, [r0,#4]
	strh r1, [r7,#oGFXAnimState_Timer]

	ldr r6, off_8001C04 // =off_8001C24
	ldrb r1, [r7,#oGFXAnimState_Command]
	ldr r6, [r6,r1]
	mov lr, pc
	bx r6

	b .doneThisStruct
.noMoreEntries
	mov r1, #0
	strb r1, [r7]
	b .doneThisStruct
.doneAllStructs
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
	.balign 4, 0
off_8001C00: .word byte_8001C08
off_8001C04: .word off_8001C24
byte_8001C08:
	.word 0x8
	.word 0x8
	.word 0x8
	.word 0x8
	.word 0x8
	.word 0x8
	.word 0x8
off_8001C24:
	.word sub_8001C44+1 // 0x0 copy palette
	.word sub_8001C94+1 // 0x4 copy 0x20 sized tiles
	.word sub_8001C52+1 // 0x8 ???
	.word sub_8002310+1 // 0xc manual palette transform
	.word sub_800232A+1 // 0x10 play sound effect
	.word sub_8002338+1 // 0x14 set or clear event flag
	.word sub_8001CFC+1 // 0x18 copy 0x40 sized tiles
off_8001C40: .word eGFXAnimStates
	thumb_func_end ProcessGFXAnims

	thumb_local_start
sub_8001C44:
	push {lr}
	ldr r0, [r0,#oGFXAnimData_ParamNext - oGFXAnimData_ParamNext]
	ldr r1, [r7,#oGFXAnimState_Param0]
	ldr r2, [r7,#oGFXAnimState_Param1]
	bl QueueEightWordAlignedGFXTransfer
	pop {pc}
	thumb_func_end sub_8001C44

	thumb_local_start
sub_8001C52:
	push {lr}
	ldr r5, off_8001C90 // =eStruct200BE70
	ldr r5, [r5,#0xc] // (dword_200BE7C - 0x200be70)
	ldrb r2, [r7,#oGFXAnimState_Param3]
	lsl r2, r2, #2
	add r2, #4
	ldr r2, [r5,r2]
	add r5, r5, r2
	mov r6, #0xf0
	lsl r6, r6, #8
	ldrb r2, [r7,#oGFXAnimState_Param2]
	mov r8, r7
loc_8001C6A:
	ldr r1, [r0,#oGFXAnimData_ParamNext - oGFXAnimData_ParamNext]
	ldr r7, [r0,#oGFXAnimData_Delay - oGFXAnimData_ParamNext]
	ldrh r3, [r5,r1]
	and r3, r6
	orr r3, r7
	strh r3, [r5,r1]
	add r0, #8
	sub r2, #1
	bgt loc_8001C6A
	mov r7, r8
	push {r4,r7}
	ldr r5, off_8001C90 // =eStruct200BE70
	bl sub_8030808
	pop {r4,r7}
	mov r0, #0
	strb r0, [r7,#oGFXAnimState_IsActive]
	pop {pc}
	.byte 0, 0
off_8001C90: .word eStruct200BE70
	thumb_func_end sub_8001C52

	thumb_local_start
sub_8001C94:
	push {r4,r7,lr}

	// read pointer
	ldr r6, [r0,#oGFXAnimData_ParamNext - oGFXAnimData_ParamNext]

	// get some ewram address?
	ldr r5, off_8001CE4 // =off_8001AB8
	ldrb r4, [r7,#oGFXAnimState_Param3]
	lsl r4, r4, #2
	ldr r5, [r5,r4]

	// read pointer
	ldr r4, [r7,#oGFXAnimState_Param0]
	mov r1, #0
	push {r0}

loc_8001CA6:
	// read from memory
	ldrh r2, [r6,r1]
	// & 0x3ff
	lsl r3, r2, #0x16
	lsr r3, r3, #0x16
	// r3 has mask 0xffc0
	lsl r3, r3, #5
	push {r4,r6}
	// add r3 as offset to r4 pointer
	add r4, r4, r3
	// jumptable
	ldr r0, off_8001CE8 // =off_8001CEC
	// use these bits of r2 for jumptable index
	//    ||
	//    vv
	// 0b 1111 1111 1111
	lsr r2, r2, #0xa
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov lr, pc
	bx r0
	pop {r4,r6}
	add r5, #0x20
	add r1, #2

	// upper limit
	ldrb r2, [r7,#oGFXAnimState_Param2]
	lsl r2, r2, #1
	cmp r1, r2
	blt loc_8001CA6
	pop {r0}

	// read same ewram address again
	ldr r0, off_8001CE4 // =off_8001AB8
	ldrb r1, [r7,#oGFXAnimState_Param3]
	lsl r1, r1, #2
	ldr r0, [r0,r1]

	// dest pointer
	ldr r1, [r7,#oGFXAnimState_Param1]

	// size
	ldrb r2, [r7,#oGFXAnimState_Param2]
	lsl r2, r2, #5
	bl QueueEightWordAlignedGFXTransfer
	pop {r4,r7,pc}
	.balign 4, 0x00
off_8001CE4: .word off_8001AB8
off_8001CE8: .word off_8001CEC
off_8001CEC: .word sub_8001D64+1
	.word sub_8001D86+1
	.word sub_8001EAE+1
	.word sub_8001ED0+1
	thumb_func_end sub_8001C94

	thumb_local_start
sub_8001CFC:
	push {r4,r7,lr}

	// read pointer
	ldr r6, [r0,#oGFXAnimData_ParamNext - oGFXAnimData_ParamNext]

	// get some ewram address?
	ldr r5, off_8001D4C // =off_8001AB8
	ldrb r4, [r7,#oGFXAnimState_Param3]
	lsl r4, r4, #2
	ldr r5, [r5,r4]

	// read pointer
	ldr r4, [r7,#oGFXAnimState_Param0]
	mov r1, #0
	push {r0}

loc_8001D0E:
	// read from memory
	ldrh r2, [r6,r1]
	// & 0x3ff
	lsl r3, r2, #0x16
	lsr r3, r3, #0x16
	// r3 has mask 0xffc0
	lsl r3, r3, #6
	push {r4,r6}
	// add r3 as offset to r4 pointer
	add r4, r4, r3
	// jumptable
	ldr r0, off_8001D50 // =off_8001D54
	// use these bits of r2 for jumptable index
	//    ||
	//    vv
	// 0b 1111 1111 1111
	lsr r2, r2, #0xa
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov lr, pc
	bx r0
	pop {r4,r6}
	add r5, #0x40
	add r1, #2

	// upper limit
	ldrb r2, [r7,#oGFXAnimState_Param2]
	lsl r2, r2, #1
	cmp r1, r2
	blt loc_8001D0E
	pop {r0}

	// read same ewram address again
	ldr r0, off_8001D4C // =off_8001AB8
	ldrb r1, [r7,#oGFXAnimState_Param3]
	lsl r1, r1, #2
	ldr r0, [r0,r1]

	// dest pointer
	ldr r1, [r7,#oGFXAnimState_Param1]

	// size
	ldrb r2, [r7,#oGFXAnimState_Param2]
	lsl r2, r2, #6
	bl QueueEightWordAlignedGFXTransfer
	pop {r4,r7,pc}
	.balign 4, 0x00
off_8001D4C: .word off_8001AB8
off_8001D50: .word off_8001D54
off_8001D54: .word sub_8002000+1
	.word sub_8002042+1
	.word sub_800218C+1
	.word sub_80021CE+1
	thumb_func_end sub_8001CFC

	thumb_local_start
sub_8001D64:
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, [r4,#4]
	str r0, [r5,#4]
	ldr r0, [r4,#8]
	str r0, [r5,#8]
	ldr r0, [r4,#0xc]
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x10]
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x14]
	str r0, [r5,#0x14]
	ldr r0, [r4,#0x18]
	str r0, [r5,#0x18]
	ldr r0, [r4,#0x1c]
	str r0, [r5,#0x1c]
	mov pc, lr
	thumb_func_end sub_8001D64

	thumb_local_start
sub_8001D86:
	ldr r2, dword_8001FFC // =0xf0f0f0f0
	mov r9, r2
	ldr r2, dword_8001FF8 // =0xff00ff00
	mov r8, r2
	ldr r0, [r4]
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5]
	ldr r0, [r4,#4]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#4]
	ldr r0, [r4,#8]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#8]
	ldr r0, [r4,#0xc]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x10]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x14]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x14]
	ldr r0, [r4,#0x18]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x18]
	ldr r0, [r4,#0x1c]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x1c]
	mov pc, lr
	thumb_func_end sub_8001D86

	thumb_local_start
sub_8001EAE:
	ldr r0, [r4]
	str r0, [r5,#0x1c]
	ldr r0, [r4,#4]
	str r0, [r5,#0x18]
	ldr r0, [r4,#8]
	str r0, [r5,#0x14]
	ldr r0, [r4,#0xc]
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x10]
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x14]
	str r0, [r5,#8]
	ldr r0, [r4,#0x18]
	str r0, [r5,#4]
	ldr r0, [r4,#0x1c]
	str r0, [r5]
	mov pc, lr
	thumb_func_end sub_8001EAE

	thumb_local_start
sub_8001ED0:
	ldr r2, dword_8001FFC // =0xf0f0f0f0
	mov r9, r2
	ldr r2, dword_8001FF8 // =0xff00ff00
	mov r8, r2
	ldr r0, [r4]
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x1c]
	ldr r0, [r4,#4]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x18]
	ldr r0, [r4,#8]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x14]
	ldr r0, [r4,#0xc]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x10]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x14]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#8]
	ldr r0, [r4,#0x18]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5,#4]
	ldr r0, [r4,#0x1c]
	mov r2, r8
	lsr r3, r2, #8
	and r2, r0
	and r3, r0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr r0, r3
	mov r2, #0x10
	ror r0, r2
	mov r2, r9
	lsr r3, r2, #4
	and r2, r0
	and r3, r0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr r0, r3
	str r0, [r5]
	mov pc, lr
dword_8001FF8: .word 0xFF00FF00
dword_8001FFC: .word 0xF0F0F0F0
	thumb_func_end sub_8001ED0

	thumb_local_start
sub_8002000:
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, [r4,#4]
	str r0, [r5,#4]
	ldr r0, [r4,#8]
	str r0, [r5,#8]
	ldr r0, [r4,#0xc]
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x10]
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x14]
	str r0, [r5,#0x14]
	ldr r0, [r4,#0x18]
	str r0, [r5,#0x18]
	ldr r0, [r4,#0x1c]
	str r0, [r5,#0x1c]
	ldr r0, [r4,#0x20]
	str r0, [r5,#0x20]
	ldr r0, [r4,#0x24]
	str r0, [r5,#0x24]
	ldr r0, [r4,#0x28]
	str r0, [r5,#0x28]
	ldr r0, [r4,#0x2c]
	str r0, [r5,#0x2c]
	ldr r0, [r4,#0x30]
	str r0, [r5,#0x30]
	ldr r0, [r4,#0x34]
	str r0, [r5,#0x34]
	ldr r0, [r4,#0x38]
	str r0, [r5,#0x38]
	ldr r0, [r4,#0x3c]
	str r0, [r5,#0x3c]
	mov pc, lr
	thumb_func_end sub_8002000

	thumb_local_start
sub_8002042:
	ldr r2, dword_8002188 // =0xff00ff00
	mvn r3, r2
	ldr r0, [r4]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5]
	ldr r0, [r4,#4]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#4]
	ldr r0, [r4,#8]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#8]
	ldr r0, [r4,#0xc]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x10]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x14]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x14]
	ldr r0, [r4,#0x18]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x18]
	ldr r0, [r4,#0x1c]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x1c]
	ldr r0, [r4,#0x20]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x20]
	ldr r0, [r4,#0x24]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x24]
	ldr r0, [r4,#0x28]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x28]
	ldr r0, [r4,#0x2c]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x2c]
	ldr r0, [r4,#0x30]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x30]
	ldr r0, [r4,#0x34]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x34]
	ldr r0, [r4,#0x38]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x38]
	ldr r0, [r4,#0x3c]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x3c]
	mov pc, lr
dword_8002188: .word 0xFF00FF00
	thumb_func_end sub_8002042

	thumb_local_start
sub_800218C:
	ldr r0, [r4]
	str r0, [r5,#0x1c]
	ldr r0, [r4,#4]
	str r0, [r5,#0x18]
	ldr r0, [r4,#8]
	str r0, [r5,#0x14]
	ldr r0, [r4,#0xc]
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x10]
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x14]
	str r0, [r5,#8]
	ldr r0, [r4,#0x18]
	str r0, [r5,#4]
	ldr r0, [r4,#0x1c]
	str r0, [r5]
	ldr r0, [r4,#0x20]
	str r0, [r5,#0x3c]
	ldr r0, [r4,#0x24]
	str r0, [r5,#0x38]
	ldr r0, [r4,#0x28]
	str r0, [r5,#0x34]
	ldr r0, [r4,#0x2c]
	str r0, [r5,#0x30]
	ldr r0, [r4,#0x30]
	str r0, [r5,#0x2c]
	ldr r0, [r4,#0x34]
	str r0, [r5,#0x28]
	ldr r0, [r4,#0x38]
	str r0, [r5,#0x24]
	ldr r0, [r4,#0x3c]
	str r0, [r5,#0x20]
	mov pc, lr
	thumb_func_end sub_800218C

	thumb_local_start
sub_80021CE:
	ldr r0, [r4]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x1c]
	ldr r0, [r4,#4]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x18]
	ldr r0, [r4,#8]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x14]
	ldr r0, [r4,#0xc]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x10]
	ldr r0, [r4,#0x10]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0xc]
	ldr r0, [r4,#0x14]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#8]
	ldr r0, [r4,#0x18]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#4]
	ldr r0, [r4,#0x1c]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5]
	ldr r0, [r4,#0x20]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x3c]
	ldr r0, [r4,#0x24]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x38]
	ldr r0, [r4,#0x28]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x34]
	ldr r0, [r4,#0x2c]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x30]
	ldr r0, [r4,#0x30]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x2c]
	ldr r0, [r4,#0x34]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x28]
	ldr r0, [r4,#0x38]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x24]
	ldr r0, [r4,#0x3c]
	mov r1, r0
	and r0, r2
	and r1, r3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr r0, r1
	mov r1, #0x10
	ror r0, r1
	str r0, [r5,#0x20]
	mov pc, lr
	thumb_func_end sub_80021CE

	thumb_local_start
// r0 = [oGFXAnimData_Param0] - jumptable index
// r1 = [oGFXAnimData_ParamNext] - param
// r2 = [oGFXAnimData_Param2] - num palettes
// r3 = [oGFXAnimData_Index] - S20094c0 index
// r4 = [oGFXAnimData_Param1] - dest?
sub_8002310:
	push {lr}
	push {r4,r7}
	ldr r1, [r0,#oGFXAnimData_ParamNext - oGFXAnimData_ParamNext]
	lsl r1, r1, #1
	lsr r1, r1, #1
	ldrb r0, [r7,#oGFXAnimState_Param0]
	ldrb r2, [r7,#oGFXAnimState_Param2]
	ldrb r3, [r7,#oGFXAnimState_Index]
	ldr r4, [r7,#oGFXAnimState_Param1]
	bl sub_8002378
	pop {r4,r7}
	pop {pc}
	thumb_func_end sub_8002310

	thumb_local_start
sub_800232A:
	push {lr}
	ldr r0, [r0,#oGFXAnimData_ParamNext - oGFXAnimData_ParamNext]
	cmp r0, #0
	blt .noSound
	bl PlaySoundEffect
.noSound
	pop {pc}
	thumb_func_end sub_800232A

	thumb_local_start
sub_8002338:
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	blt .clearEventFlag
	mov r0, r0
	bl SetEventFlag
	b .done
.clearEventFlag
	lsl r0, r0, #1
	lsr r0, r0, #1
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
.done
	pop {pc}
	thumb_func_end sub_8002338

	thumb_func_start LoadGFXAnims
LoadGFXAnims:
	push {r5,lr}
	mov r5, r0
.loadGFXAnimLoop
	ldr r0, [r5]
	cmp r0, #0
	blt .done
	bl LoadGFXAnim
	add r5, #4
	b .loadGFXAnimLoop
.done
	pop {r5,pc}
	thumb_func_end LoadGFXAnims

	thumb_func_start zeroFill_e20097A0
zeroFill_e20097A0:
	push {lr}
	// memBlock
	ldr r0, off_8002464 // =ePalette20097a0
	// size
	ldr r1, off_8002374 // =0x108
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
off_8002374: .word 0x108
	thumb_func_end zeroFill_e20097A0

	thumb_func_start sub_8002378
sub_8002378:
	push {r5-r7,lr}
	ldr r7, off_8002464 // =ePalette20097a0
	mov r6, #oPalette20097a0_Size
	mul r3, r6
	add r7, r7, r3
	mov r3, #0
	tst r1, r1
	beq loc_8002396
	tst r2, r2
	beq loc_8002396
	strb r0, [r7,#oPalette20097a0_Unk_01]
	str r1, [r7,#oPalette20097a0_Unk_04]
	strb r2, [r7,#oPalette20097a0_Unk_02]
	mov r3, #1
	str r4, [r7,#oPalette20097a0_Unk_08]
loc_8002396:
	strb r3, [r7,#oPalette20097a0_Unk_00]
	pop {r5-r7,pc}
	thumb_func_end sub_8002378

	thumb_func_start Terminate_ePalette20097a0_Transform
Terminate_ePalette20097a0_Transform:
	ldr r2, off_8002464 // =ePalette20097a0
	mov r1, #oPalette20097a0_Size
	mul r0, r1
	add r2, r2, r0
	mov r0, #0
	strb r0, [r2,#oPalette20097a0_Unk_00]
	mov pc, lr
	thumb_func_end Terminate_ePalette20097a0_Transform

	thumb_func_start sub_80023A8
sub_80023A8:
	push {lr}
	// memBlock
	ldr r0, off_8002464 // =ePalette20097a0
	// size
	ldr r1, off_80023B4 // =0xd8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
off_80023B4: .word 0xd8
	thumb_func_end sub_80023A8

	thumb_local_start
sub_80023B8:
	ldr r2, off_8002464 // =ePalette20097a0
	mov r1, #oPalette20097a0_Size
	mul r1, r0
	add r2, r2, r1
	ldrb r0, [r2,#oPalette20097a0_Unk_00]
	tst r0, r0
	mov pc, lr
	thumb_func_end sub_80023B8

	thumb_local_start
sub_80023C6:
	ldr r2, off_8002464 // =ePalette20097a0
	ldr r3, off_80023DC // =0x108
loc_80023CA:
	ldrb r0, [r2]
	tst r0, r0
	bne locret_80023D8
	add r2, #oPalette20097a0_Size
	cmp r2, r3
	blt loc_80023CA
	mov r0, #0
locret_80023D8:
	mov pc, lr
	.balign 4, 0x00
off_80023DC: .word 0x108
	thumb_func_end sub_80023C6

	thumb_func_start getPalleteAndTransition_80023E0
getPalleteAndTransition_80023E0:
	push {r5-r7,lr}
	ldr r0, off_800243C // =palette_3001960
	ldr r1, off_8002440 // =iPalette3001B60
	mov r2, #0x20
	lsl r2, r2, #4
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r0, off_8002444 // =byte_3001550
	ldr r1, off_8002448 // =iPallete3001750
	mov r2, #0x20
	lsl r2, r2, #4
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r5, off_8002464 // =ePalette20097a0
loc_80023FC:
	ldrb r0, [r5,#oPalette20097a0_Unk_00]
	tst r0, r0
	beq loc_8002428
	ldr r0, [r5,#oPalette20097a0_Unk_04] // (dword_20097A4 - 0x20097a0)
	ldrb r2, [r5,#oPalette20097a0_Unk_01] // (byte_20097A1 - 0x20097a0)
	ldrb r6, [r5,#oPalette20097a0_Unk_02] // (byte_20097A2 - 0x20097a0)
	ldr r7, [r5,#oPalette20097a0_Unk_08] // (dword_20097A8 - 0x20097a0)
	cmp r7, #6
	bge loc_800241E
	ldr r6, off_8002438 // =unk_200F388
	add r7, r7, r6
	ldrb r1, [r7]
	ldrb r6, [r7,#1]
	sub r6, r6, r1
	ldr r7, off_8002448 // =iPallete3001750
	lsl r1, r1, #5
	add r7, r7, r1
loc_800241E:
	lsl r6, r6, #5
	ldr r3, off_800244C // =byte_8002450
	ldr r3, [r3,r2]
	mov lr, pc
	bx r3
loc_8002428:
	add r5, #oPalette20097a0_Size
	ldr r6, off_8002464 // =ePalette20097a0
	ldr r0, off_8002460 // =0x108
	add r6, r6, r0
	cmp r5, r6
	blt loc_80023FC
	pop {r5-r7,pc}
	.balign 4, 0x00
off_8002438: .word unk_200F388
off_800243C: .word palette_3001960
off_8002440: .word iPalette3001B60
off_8002444: .word byte_3001550
off_8002448: .word iPallete3001750
off_800244C: .word byte_8002450
byte_8002450:
	.word sub_3005EF0+1
	.word sub_3005EF0+1
	.word sub_3005F78+1
	.word sub_3005F78+1
off_8002460: .word 0x108
off_8002464: .word ePalette20097a0
	thumb_func_end getPalleteAndTransition_80023E0

	thumb_func_start Initialize_eStruct200a6a0
Initialize_eStruct200a6a0:
	push {r4-r7,lr}
	ldr r5, off_80024C8 // =eStruct200a6a0
	push {r0-r2}
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x50
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0-r2}
	str r0, [r5,#0x4] // (dword_200A6A4 - 0x200a6a0)
	str r1, [r5,#0x8] // (dword_200A6A8 - 0x200a6a0)
	str r2, [r5,#0xc] // (dword_200A6AC - 0x200a6a0)
	mov r0, #1
	strb r0, [r5]
	pop {r4-r7,pc}
	thumb_func_end Initialize_eStruct200a6a0

	thumb_func_start run_eStruct200a6a0_Callback_8002484
run_eStruct200a6a0_Callback_8002484:
	push {r4-r7,lr}
	ldr r5, off_80024C8 // =eStruct200a6a0
	ldrb r0, [r5]
	tst r0, r0
	beq loc_8002498
	ldr r0, [r5,#0x8] // (dword_200A6A8 - 0x200a6a0)
	tst r0, r0
	beq loc_8002498
	mov lr, pc
	bx r0
loc_8002498:
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x50
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r4-r7,pc}
	thumb_func_end run_eStruct200a6a0_Callback_8002484

	thumb_func_start zeroFill_80024A2
zeroFill_80024A2:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_80024C8 // =eStruct200a6a0
	// size
	mov r1, #0x50
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r4-r7,pc}
	thumb_func_end zeroFill_80024A2

	thumb_func_start sub_80024AE
sub_80024AE:
	push {r4-r7,lr}
	ldr r5, off_80024C8 // =eStruct200a6a0
	ldrb r0, [r5]
	tst r0, r0
	beq locret_80024BE
	ldr r0, [r5,#0x4] // (dword_200A6A4 - 0x200a6a0)
	mov lr, pc
	bx r0
locret_80024BE:
	pop {r4-r7,pc}
	thumb_func_end sub_80024AE

	thumb_func_start Is_eStruct200a6a0_Initialized
Is_eStruct200a6a0_Initialized:
	ldr r1, off_80024C8 // =eStruct200a6a0
	ldrb r0, [r1]
	tst r0, r0
	mov pc, lr
off_80024C8: .word eStruct200a6a0
	thumb_func_end Is_eStruct200a6a0_Initialized

	thumb_local_start
sub_80024CC:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	push {r4,r5}
	mov r4, #4
	b loc_80024E2
loc_80024D8:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	push {r4,r5}
	mov r4, #0
loc_80024E2:
	ldr r6, off_80025C0 // =dword_80025C4
	add r6, r6, r4
	mov r8, r6
	mov r9, r1
	mov r4, r2
	mov r6, #1
	tst r2, r6
	beq loc_80024F4
	add r2, #1
loc_80024F4:
	lsr r7, r2, #1
	mov r5, r3
	tst r3, r6
	beq loc_80024FE
	add r3, #1
loc_80024FE:
	lsr r6, r3, #1
	bl sub_8003694
	push {r0,r1}
	sub r0, #0x78
	sub r1, #0x50
	neg r0, r0
	neg r1, r1
	mov r2, #0xf0
	sub r2, r2, r4
	lsr r2, r2, #1
	sub r0, r0, r2
	mov r2, #0xa0
	sub r2, r2, r5
	lsr r2, r2, #1
	sub r1, r1, r2
	mov r2, r10
	ldr r2, [r2,#oToolkit_RenderInfoPtr]
	mov r3, r8
	ldrb r3, [r3]
	strh r0, [r2,r3]
	mov r3, r8
	ldrb r3, [r3,#0x1] // (byte_80025C9 - 0x80025c8)
	strh r1, [r2,r3]
	mov r2, r8
	// tileBlock32x32
	ldrb r2, [r2,#0x2] // (byte_80025CA - 0x80025c8)
	// tileIds
	mov r3, r9
	lsr r4, r4, #3
	// j
	mov r0, #0
	// i
	mov r1, #0
	lsr r5, r5, #3
	bl CopyBackgroundTiles
	pop {r0,r1}
	mov r5, r10
	ldr r5, [r5,#oToolkit_Unk200f3a0_Ptr]
	cmp r0, r7
	bge loc_800254E
	mov r2, #0
	b loc_800255E
loc_800254E:
	mov r4, #0xf0
	add r4, r4, r7
	cmp r0, r4
	ble loc_800255A
	mov r2, #0xf0
	b loc_800255E
loc_800255A:
	mov r4, r7
	sub r2, r0, r4
loc_800255E:
	strb r2, [r5,#3]
	mov r4, r7
	neg r4, r4
	cmp r0, r4
	bge loc_800256C
	mov r2, #0
	b loc_800257C
loc_800256C:
	mov r3, #0xf0
	sub r3, r3, r7
	cmp r0, r3
	ble loc_8002578
	mov r2, #0xf0
	b loc_800257C
loc_8002578:
	mov r4, r7
	add r2, r0, r4
loc_800257C:
	strb r2, [r5,#2]
	mov r4, #0xa0
	add r4, r4, r6
	cmp r1, r6
	bge loc_800258A
	mov r2, #0
	b loc_8002596
loc_800258A:
	cmp r1, r4
	ble loc_8002592
	mov r2, #0xa0
	b loc_8002596
loc_8002592:
	mov r4, r6
	sub r2, r1, r4
loc_8002596:
	strb r2, [r5,#7]
	mov r4, r6
	neg r4, r4
	cmp r1, r4
	bge loc_80025A4
	mov r2, #0
	b loc_80025B4
loc_80025A4:
	mov r3, #0xa0
	sub r3, r3, r6
	cmp r1, r3
	ble loc_80025B0
	mov r2, #0xa0
	b loc_80025B4
loc_80025B0:
	mov r4, r6
	add r2, r1, r4
loc_80025B4:
	strb r2, [r5,#6]
	pop {r4,r5}
	mov r8, r4
	mov r9, r5
	pop {r4-r7,pc}
	.byte 0, 0
off_80025C0: .word dword_80025C4
dword_80025C4: .word 0xFF031A18
byte_80025C8: .byte 0x14
byte_80025C9: .byte 0x16
byte_80025CA: .byte 0x2, 0xFF
byte_80025CC: .byte 0x0, 0x0, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0xFF, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_80024CC

	thumb_func_start sub_800260C
sub_800260C:
	push {r4,lr}
	ldr r0, dword_800263C // =0x7000000
	ldr r1, off_8002640 // =0x400
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, dword_8002644 // =0x6010000
	ldr r1, dword_8002648 // =0x8000
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl sub_8002668
	bl InitializeOWPlayerObjectStruct
	bl InitializeOverworldNPCObjectStructs
	bl InitializeOverworldMapObjectStructs
	bl sprite_resetObjVars_800289C
	ldr r0, off_800264C // =unk_200F388
	mov r1, #7
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {r4,pc}
dword_800263C: .word 0x7000000
off_8002640: .word 0x400
dword_8002644: .word 0x6010000
dword_8002648: .word 0x8000
off_800264C: .word unk_200F388
	thumb_func_end sub_800260C

	thumb_func_start copyPalletesToIWRAM_8002650
copyPalletesToIWRAM_8002650:
	push {lr}
	ldr r0, off_8002660 // =iPallete3001750
	ldr r1, dword_8002664 // =0x5000200
	mov r2, #0x20
	lsl r2, r2, #4
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8002660: .word iPallete3001750
dword_8002664: .word 0x5000200
	thumb_func_end copyPalletesToIWRAM_8002650

	thumb_func_start sub_8002668
sub_8002668:
	push {lr}
	ldr r0, off_800268C // =dword_86A5500
	ldr r1, off_8002690 // =byte_3001710
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	b loc_8002678
loc_8002676:
	push {lr}
loc_8002678:
	ldr r0, off_8002684 // =byte_80025CC
	ldr r1, off_8002688 // =byte_3001730
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8002684: .word byte_80025CC
off_8002688: .word byte_3001730
off_800268C: .word dword_86A5500
off_8002690: .word byte_3001710
	thumb_func_end sub_8002668

	thumb_func_start sub_8002694
sub_8002694:
	push {lr}
	ldr r2, off_80026A0 // =sub_3006440+1
	mov lr, pc
	bx r2
	pop {pc}
	.balign 4, 0x00
off_80026A0: .word sub_3006440+1
	thumb_func_end sub_8002694

/*For debugging purposes, connect comment at any range!*/
