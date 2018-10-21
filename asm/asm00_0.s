.include "asm/asm00_0.inc"

.func
.thumb_func
sub_80005AC:
	push {lr}
	bl sub_814E918
	pop {pc}
	.word unk_2006840
	.word dword_80005BC
dword_80005BC: .word 0x4425121C, 0x0
.endfunc // sub_80005AC

.func
.thumb_func
sub_80005C4:
	push {lr}
	bl sub_814F00C
	pop {pc}
.endfunc // sub_80005C4

.func
.thumb_func
// () -> void
sound_play:
	push {R1-R7,lr}
	bl m4a_800061E // () -> void
	pop {R1-R7,pc}
.endfunc // sound_play

.func
.thumb_func
// (int a1) -> void
sound_bgmusic_play:
	push {R1-R7,lr}
	mov R7, R10
	ldr R7, [R7,#0x3C] // Toolkit.gamestate
	ldrb R1, [R7,#0xF]
	cmp R0, R1
	beq locret_80005F0
	strb R0, [R7,#0xF]
	cmp r0, #0x63 
	bne loc_80005EC
	bl sub_8000630
	b locret_80005F0
loc_80005EC:
	bl m4a_800061E // () -> void
locret_80005F0:
	pop {R1-R7,pc}
.endfunc // sound_bgmusic_play

.func
.thumb_func
sub_80005F2:
	push {R1-R7,lr}
	mov R7, R10
	ldr R7, [R7,#0x3C]
	strb R0, [R7,#0xF]
	cmp r0, #0x63 
	bne loc_8000604
	bl sub_8000630
	b locret_8000608
loc_8000604:
	bl m4a_800061E // () -> void
locret_8000608:
	pop {R1-R7,pc}
.endfunc // sub_80005F2

.func
.thumb_func
sub_800060A:
	push {R1-R7,lr}
	ldr R1, off_8000864 // =byte_2010B90 
	ldrb R1, [R1]
	cmp R1, #0
	bne loc_8000616
	mov R1, #0xFF
loc_8000616:
	ldr R3, off_8000868 // =sub_8000822+1 
	bl sound_8000808 // () -> void
	pop {R1-R7,pc}
.endfunc // sub_800060A

.func
.thumb_func
// () -> void
m4a_800061E:
	push {lr}
	mov R1, R10
	push {r1}
	ldr R3, off_800086C // =m4a_SongNumStart+1 
	bl sound_8000808 // () -> void
	pop {r1}
	mov R10, R1
	pop {pc}
.endfunc // m4a_800061E

.func
.thumb_func
sub_8000630:
	push {lr}
	mov R1, R10
	push {r1}
	ldr R3, off_8000870 // =sub_814EA58+1 
	bl sound_8000808 // () -> void
	pop {r1}
	mov R10, R1
	pop {pc}
.endfunc // sub_8000630

.func
.thumb_func
sub_8000642:
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R7, off_8000700 // =off_8000704 
	ldr R0, [R7,R0]
	mov R3, R10
	push {r3}
	ldr R3, off_8000874 // =sub_814F9AC+1 
	bl sound_8000808 // () -> void
	pop {r3}
	mov R10, R3
	pop {R4-R7,pc}
.endfunc // sub_8000642

.func
.thumb_func
sub_800065A:
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R7, off_8000700 // =off_8000704 
	ldr R0, [R7,R0]
	mov R3, R10
	push {r3}
	ldr R3, off_8000878 // =sub_814FA14+1 
	bl sound_8000808 // () -> void
	pop {r3}
	mov R10, R3
	pop {R4-R7,pc}
.endfunc // sub_800065A

.func
.thumb_func
sound_8000672:
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R7, off_8000700 // =off_8000704 
	ldr R0, [R7,R0]
	mov R3, R10
	push {r3}
	ldr R3, off_800087C // =sub_814F988+1 
	bl sound_8000808 // () -> void
	pop {r3}
	mov R10, R3
	pop {R4-R7,pc}
.endfunc // sound_8000672

.func
.thumb_func
sub_800068A:
	push {R4-R7,lr}
	ldr R7, off_8000700 // =off_8000704 
	lsl r0, r0, #2
	ldr R0, [R7,R0]
	mov R2, R10
	push {r2}
	ldr R3, off_8000880 // =sub_814E87C+1 
	bl sound_8000808 // () -> void
	pop {r2}
	mov R10, R2
	pop {R4-R7,pc}
.endfunc // sub_800068A

.func
.thumb_func
sub_80006A2:
	push {R4-R7,lr}
	cmp r0, #0x25 
	bgt loc_80006B0
	mov R7, R10
	ldr R7, [R7,#0x3C]
	strb R0, [R7,#0xF]
	b loc_80006B0
loc_80006B0:
	mov R4, R12
	mov R5, R8
	mov R6, R9
	mov R7, R10
	push {R4-R7}
	ldr R7, off_8000700 // =off_8000704 
	lsl r2, r2, #2
	ldr R7, [R7,R2]
	add r4, r0, #0
	add r5, r1, #0
	ldr R3, off_8000884 // =m4a_SongNumStart+1 
	bl sound_8000808 // () -> void
	add r0, r7, #0
	ldr R3, off_8000888 // =sub_814EB1C+1 
	bl sound_8000808 // () -> void
	add r0, r7, #0
	mov R1, #0xFF
	mov R2, #0
	ldr R3, off_800088C // =sub_814F9AC+1 
	bl sound_8000808 // () -> void
	add r0, r4, #0
	ldr R3, off_8000890 // =sub_814E9F0+1 
	bl sound_8000808 // () -> void
	add r0, r7, #0
	add r1, r5, #0
	ldr R3, off_8000894 // =sub_814EAF0+1 
	bl sound_8000808 // () -> void
	pop {R4-R7}
	mov R12, R4
	mov R8, R5
	mov R9, R6
	mov R10, R7
	pop {R4-R7,pc}
	.word unk_2010890
off_8000700: .word off_8000704
off_8000704: .word unk_2010690
	.word unk_2010910
	.word unk_2010950
	.word unk_2010C20
	.word unk_2010B50
	.word unk_2010550
	.word unk_2010650
	.word unk_20108D0
	.word unk_2010BE0
	.word unk_2010610
	.word unk_2010990
	.word unk_2010C60
	.word unk_2010AD0
	.word unk_2010510
	.word unk_2010810
	.word unk_2010A90
	.word unk_20105D0
	.word unk_2010B10
	.word unk_20107D0
	.word unk_2010490
	.word unk_2010710
	.word unk_2010790
	.word unk_2010A50
	.word unk_20104D0
	.word unk_2010750
	.word unk_20109D0
	.word unk_20106D0
	.word unk_2010BA0
	.word unk_2010850
	.word unk_2010A10
	.word unk_2010590
	.word unk_2010890
.endfunc // sub_80006A2

.func
.thumb_func
// () -> void
musicGameState_8000784:
	push {r7,lr}
	mov R1, R10
	push {r1}
	ldr R3, off_8000898 // =sub_814EA58+1 
	bl sound_8000808 // () -> void
	pop {r1}
	mov R10, R1
	mov R7, R10
	ldr R7, [R7,#0x3C] // Toolkit.gamestate
	mov R0, #0xFF
	strb R0, [R7,#0xF] // GameState.bgMusicIndicator
	pop {r7,pc}
	.byte 0, 0
.endfunc // musicGameState_8000784

	push {R1-R7,lr}
	mov R1, R10
	push {r1}
	ldr R3, off_800089C // =sub_814E9F0+1 
	bl sound_8000808 // () -> void
	pop {r1}
	mov R10, R1
	pop {R1-R7,pc}
.func
.thumb_func
sub_80007B2:
	push {lr}
	// memBlock
	ldr R0, memBlock // =dword_200A490 
	// size
	ldr R1, numWords // =0x20C 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_80007B2

.func
.thumb_func
sub_80007BE:
	push {R4-R7,lr}
	ldr R5, memBlock // =dword_200A490 
	ldr R7, [R5]
	cmp R7, #0
	beq loc_80007F0
	ldrb R0, [R5,#0x4] // (byte_200A494 - 0x200A490)
	add R0, #1
	cmp R0, #0x1A
	blt loc_80007D2
	mov R0, #0
loc_80007D2:
	strb R0, [R5,#0x4] // (byte_200A494 - 0x200A490)
	mov R0, #0
	str R0, [R5,#0x8] // (dword_200A498 - 0x200A490)
	mov R6, #0xC
	add r6, r6, r5
loc_80007DC:
	ldmia R6!, {R0-R3}
	mov R4, R10
	push {r4}
	ldr R4, off_8000804 // =loc_80007E8+1 
	mov LR, R4
	bx r3
loc_80007E8:
	pop {r4}
	mov R10, R4
	sub R7, #1
	bne loc_80007DC
loc_80007F0:
	mov R0, #0
	str R0, [R5]
	ldr R6, [R5,#0x8] // (dword_200A498 - 0x200A490)
	cmp R6, #0
	beq locret_8000800
	ldmia R6!, {R0-R3}
	bl sound_8000808 // () -> void
locret_8000800:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8000804: .word loc_80007E8+1
.endfunc // sub_80007BE

.func
.thumb_func
// () -> void
sound_8000808:
	push {R4-R7,lr}
	ldr R5, memBlock // =dword_200A490 
	ldr R7, [R5]
	cmp r7, #0x20 
	blt loc_8000814
	b locret_8000820
loc_8000814:
	add r6, r7, #1
	str R6, [R5]
	lsl r7, r7, #4
	add R7, #0xC
	add r7, r7, r5
	stmia R7!, {R0-R3}
locret_8000820:
	pop {R4-R7,pc}
.endfunc // sound_8000808

.func
.thumb_func
sub_8000822:
	push {R4-R7,lr}
	ldr R3, off_80008A4 // =byte_2010B90 
	ldrb R2, [R3]
	cmp R1, R2
	beq loc_8000854
	mov R2, #0
	strb R2, [R3]
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R1, [R7,#0xF]
	cmp R0, R1
	beq locret_800085A
	strb R0, [R7,#0xF]
	cmp r0, #0x63 
	bne loc_8000844
	ldr R3, off_80008A8 // =sub_814EA58+1 
	b loc_8000846
loc_8000844:
	ldr R3, off_80008AC // =m4a_SongNumStart+1 
loc_8000846:
	push {r4}
	ldr R4, off_80008B0 // =loc_800084E+1 
	mov LR, R4
	bx r3
loc_800084E:
	pop {r4}
	mov R10, R4
	b locret_800085A
loc_8000854:
	add r0, r6, #0
	sub R0, #0x10
	str R0, [R5,#8]
locret_800085A:
	pop {R4-R7,pc}
memBlock: .word dword_200A490
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
.endfunc // sub_8000822

.func
.thumb_func
// (void *mem, int size) -> void
clearBackwards_80008B4:
	push {R0-R2,lr}
	mov R2, #0
loc_80008B8:
	sub R1, #1
	strb R2, [R0,R1]
	bne loc_80008B8
	pop {R0-R2,pc}
.endfunc // clearBackwards_80008B4

.func
.thumb_func
sub_80008C0:
	push {R0-R3,lr}
	ldr R2, dword_80008DC // =0x1000000 
	lsr r1, r1, #1
	orr R2, R1
	add r1, r0, #0
	sub sp, sp, #4
	mov R0, #0
	str R0, [SP]
	mov R0, SP
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_80008DC: .word 0x1000000
.endfunc // sub_80008C0

.func
.thumb_func
// (void *memBlock, int size) -> void
CpuSet_ZeroFillWord:
	push {R0-R3,lr}
	ldr R2, dword_80008FC // =0x5000000 
	lsr r1, r1, #2
	orr R2, R1
	add r1, r0, #0
	sub sp, sp, #4
	mov R0, #0
	str R0, [SP]
	mov R0, SP
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_80008FC: .word 0x5000000
.endfunc // CpuSet_ZeroFillWord

.func
.thumb_func
// (int a1, int a2) -> void
CpuFastSet_8000900:
	push {R0-R3,lr}
	ldr R2, dword_800091C // =0x1000000 
	lsr r1, r1, #2
	orr R2, R1
	add r1, r0, #0
	sub sp, sp, #4
	mov R0, #0
	str R0, [SP]
	mov R0, SP
	bl SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
	add sp, sp, #4
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_800091C: .word 0x1000000
.endfunc // CpuFastSet_8000900

.func
.thumb_func
// (u8 *src, u8 *dest, int byteCount) -> void
copyBytes:
	sub R2, #1
	ldrb R3, [R0,R2]
	strb R3, [R1,R2]
	bne copyBytes
	mov PC, LR
.endfunc // copyBytes

.func
.thumb_func
// (u16 *src, u16 *dest, int halfwordCount) -> void
CpuSet_copyHalfwords:
	push {R0-R3,lr}
	ldr R3, dword_8000938 // =0x0 
	lsr r2, r2, #1
	orr R2, R3
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	pop {R0-R3,pc}
dword_8000938: .word 0x0
.endfunc // CpuSet_copyHalfwords

.func
.thumb_func
// (u32 *src, u32 *dest, int size) -> void
CpuSet_copyWords:
	push {R0-R3,lr}
	ldr R3, dword_800094C // =LCDControl 
	// byteCount -> wordCount
	lsr r2, r2, #2
	orr R2, R3
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_800094C: .word 0x4000000
.endfunc // CpuSet_copyWords

.func
.thumb_func
// (u32 *src, u32 *dest, int byteCount) -> void
CpuFastSet_byteCount:
	push {R0-R3,lr}
	ldr R3, dword_8000960 // =0x0 
	lsr r2, r2, #2
	orr R2, R3
	bl SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
	pop {R0-R3,pc}
	.byte 0, 0
dword_8000960: .word 0x0
.endfunc // CpuFastSet_byteCount

.func
.thumb_func
// (u8 *mem, int byteCount, u8 byte) -> void
initMemblockToByte:
	// byteCount
	sub R1, #1
	strb R2, [R0,R1]
	bne initMemblockToByte
	mov PC, LR
.endfunc // initMemblockToByte

.func
.thumb_func
sub_800096C:
	push {R0-R3,lr}
	add r3, r2, #0
	ldr R2, dword_8000988 // =0x1000000 
	lsr r1, r1, #1
	orr R2, R1
	add r1, r0, #0
	sub sp, sp, #4
	str R3, [SP]
	mov R0, SP
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_8000988: .word 0x1000000
.endfunc // sub_800096C

.func
.thumb_func
sub_800098C:
	push {R0-R3,lr}
	add r3, r2, #0
	ldr R2, dword_80009A8 // =0x5000000 
	lsr r1, r1, #2
	orr R2, R1
	add r1, r0, #0
	sub sp, sp, #4
	str R3, [SP]
	mov R0, SP
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_80009A8: .word 0x5000000
.endfunc // sub_800098C

.func
.thumb_func
CpuFastSet_80009AC:
	push {R0-R3,lr}
	add r3, r2, #0
	ldr R2, dword_80009C8 // =0x1000000 
	lsr r1, r1, #2
	orr R2, R1
	add r1, r0, #0
	sub sp, sp, #4
	str R3, [SP]
	mov R0, SP
	bl SWI_CpuFastSet // (u32 *src, u32 *dest, int mode) -> void
	add sp, sp, #4
	pop {R0-R3,pc}
	.balign 4, 0x00
dword_80009C8: .word 0x1000000
.endfunc // CpuFastSet_80009AC

.func
.thumb_func
sub_80009CC:
	push {R4-R7,lr}
	lsl r3, r3, #2
	ldr R5, off_80009E8 // =off_80009EC 
	ldr R5, [R5,R3]
	mov R3, #8
	ldr R7, dword_8000A38 // =0x80000000 
loc_80009D8:
	ldr R6, [R5,R3]
	and R6, R7
	bne loc_80009D8
	str R0, [R5]
	str R1, [R5,#4]
	orr R4, R2
	str R4, [R5,#8]
	pop {R4-R7,pc}
off_80009E8: .word off_80009EC
off_80009EC: .word DMA0SourceAddress
	.word DMA1SourceAddress
	.word DMA2SourceAddress
	.word DMA3SourceAddress
.endfunc // sub_80009CC

.func
.thumb_func
sub_80009FC:
	push {r4,lr}
	ldr R3, off_8000A34 // =DMA0SourceAddress 
loc_8000A00:
	mov R1, #0
	mov R4, #1
	tst R0, R4
	beq loc_8000A0C
	ldr R2, [R3,#0x8] // (DMA0WordCount - 0x40000B0)
	orr R1, R2
loc_8000A0C:
	mov R4, #2
	tst R0, R4
	beq loc_8000A16
	ldr R2, [R3,#0x14] // (DMA1WordCount - 0x40000B0)
	orr R1, R2
loc_8000A16:
	mov R4, #4
	tst R0, R4
	beq loc_8000A20
	ldr R2, [R3,#0x20] // (DMA2WordCount - 0x40000B0)
	orr R1, R2
loc_8000A20:
	mov R4, #8
	tst R0, R4
	beq loc_8000A2A
	ldr R2, [R3,#0x2C] // (DMA3WordCount - 0x40000B0)
	orr R1, R2
loc_8000A2A:
	ldr R2, dword_8000A38 // =0x80000000 
	and R1, R2
	bne loc_8000A00
	pop {r4,pc}
	.balign 4, 0x00
off_8000A34: .word DMA0SourceAddress
dword_8000A38: .word 0x80000000
.endfunc // sub_80009FC

.func
.thumb_func
sub_8000A3C:
	ldr R0, off_8000B10 // =dword_200AC1C 
	mov R1, #0
	str R1, [R0]
	mov PC, LR
.endfunc // sub_8000A3C

.func
.thumb_func
objRender_8000A44:
	push {lr}
	mov R0, R8
	mov R1, R9
	push {r0,r1,R4-R7}
	ldr R0, off_8000B10 // =dword_200AC1C 
	ldr R1, [R0]
	ldr R2, off_8000B14 // =dword_200B4B0 
loc_8000A52:
	sub R1, #1
	blt loc_8000A96
	mov R8, R1
	mov R9, R2
	ldr R4, [R2,#0x10]
	cmp R4, #1
	bge loc_8000A7C
	ldr R4, [R2,#0xC]
	ldr R0, [R2]
	ldr R1, [R2,#4]
	ldr R2, [R2,#8]
	lsr r2, r2, #2
	mov R3, #3
	bl sub_80009CC
	mov R0, #8
	bl sub_80009FC
	mov R1, R8
	mov R2, R9
	b loc_8000A92
loc_8000A7C:
	sub R4, #1
	lsl r4, r4, #2
	ldr R0, [R2]
	ldr R1, [R2,#4]
	ldr R2, [R2,#8]
	ldr R3, off_8000AA4 // =off_8000AA8 
	ldr R3, [R3,R4]
	mov LR, PC
	bx r3
	mov R1, R8
	mov R2, R9
loc_8000A92:
	add R2, #0x14
	b loc_8000A52
loc_8000A96:
	bl sub_8000A3C
	pop {r0,r1,R4-R7}
	mov R8, R0
	mov R9, R1
	pop {pc}
	.balign 4, 0x00
off_8000AA4: .word off_8000AA8
off_8000AA8: .word copyBytes+1
	.word CpuSet_copyHalfwords+1
	.word CpuSet_copyWords+1
	.word CpuFastSet_byteCount+1
.endfunc // objRender_8000A44

.func
.thumb_func
sub_8000AB8:
	mov R3, #0
	b loc_8000ACA
loc_8000ABC:
	mov R3, #1
	b loc_8000ACA
loc_8000AC0:
	mov R3, #2
	b loc_8000ACA
loc_8000AC4:
	mov R3, #3
	b loc_8000ACA
loc_8000AC8:
	mov R3, #4
loc_8000ACA:
	push {R4-R7}
	add r7, r3, #0
	ldr R3, off_8000B10 // =dword_200AC1C 
	ldr R4, [R3]
	cmp r4, #0x60 
	bge loc_8000AF4
	add r5, r4, #0
	add R4, #1
	str R4, [R3]
	ldr R4, off_8000B14 // =dword_200B4B0 
	mov R6, #0x14
	mul R5, R6
	add r4, r4, r5
	str R0, [R4]
	str R1, [R4,#4]
	str R2, [R4,#8]
	str R7, [R4,#0x10]
	ldr R3, off_8000AF8 // =off_8000AF8+4 
	lsl r7, r7, #2
	ldr R3, [R3,R7]
	str R3, [R4,#0xC]
loc_8000AF4:
	pop {R4-R7}
	mov PC, LR
off_8000AF8: .word off_8000AF8+4, 0x84000000, 0xFFFFFFFF, 0xFFFFFFFF
	.word 0xFFFFFFFF, 0xFFFFFFFF
off_8000B10: .word dword_200AC1C
off_8000B14: .word dword_200B4B0
.endfunc // sub_8000AB8

.func
.thumb_func
sub_8000B18:
	push {R4-R7,lr}
	add r7, r0, #0
loc_8000B1C:
	ldr R0, [R7]
	tst R0, R0
	beq locret_8000B2E
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	bl sub_8000AB8
	add R7, #0xC
	b loc_8000B1C
locret_8000B2E:
	pop {R4-R7,pc}
.endfunc // sub_8000B18

.func
.thumb_func
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
decompAndCopyData_8000B30:
	push {R4-R7,lr}
	add r7, r0, #0
loop_processArr_8000B34:
	ldr R0, [R7]
	tst R0, R0
	beq ret_reachedTerminator_8000B8C
	lsl r0, r0, #1
	bcs isCompressedRef_8000B46
	lsr r0, r0, #1
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	b switch_8000B5E
isCompressedRef_8000B46:
	// src: (a1[0]<<1)>>1 (carry flag) first itr
	lsr r0, r0, #1
	// dest: a1[2]
	ldr R1, [R7,#8]
	add r4, r1, #0
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	// dest
	ldr R1, [R7,#4]
	tst R1, R1
	beq continue_advance3Elements_8000B88
	// a1[1] != 0: perform additionaly copy operations
	add r0, r4, #4
	ldr R2, [R4]
	lsr r2, r2, #8
	// halfwordCount
	sub R2, #4
switch_8000B5E:
	// determine operation based on enabled bits in a1[1]
	mov R3, #1
	tst R3, R2
	bne bit0_set_8000B72
	mov R3, #3
	tst R3, R2
	bne bit1_set_8000B78
	mov R3, #0x1F
	tst R3, R2
	// if any bit from 2 to 5 are set
	bne bits5to0_set_8000B7E
	b default_8000B84
bit0_set_8000B72:
	bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	b continue_advance3Elements_8000B88
bit1_set_8000B78:
	// if bit 0 or bit 1 are set. Since bit 0 was checked already, 
	// this is for bit 1
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	b continue_advance3Elements_8000B88
bits5to0_set_8000B7E:
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	b continue_advance3Elements_8000B88
default_8000B84:
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
continue_advance3Elements_8000B88:
	add R7, #0xC
	b loop_processArr_8000B34
ret_reachedTerminator_8000B8C:
	pop {R4-R7,pc}
.endfunc // decompAndCopyData_8000B30

.func
.thumb_func
// (u32 *dataRefs) -> void
// [break] open PET
decomp_initGfx_8000B8E:
	push {R4-R7,lr}
	add r7, r0, #0
loc_8000B92:
	ldr R0, [R7]
	tst R0, R0
	beq locret_8000BEA
	lsl r0, r0, #1
	bcs loc_8000BA4
	lsr r0, r0, #1
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	b loc_8000BBC
loc_8000BA4:
	lsr r0, r0, #1
	// dest
	ldr R1, [R7,#8]
	add r4, r1, #0
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R1, [R7,#4]
	tst R1, R1
	beq loc_8000BE6
	add r0, r4, #4
	ldr R2, [R4]
	lsr r2, r2, #8
	sub R2, #4
loc_8000BBC:
	mov R3, #1
	tst R3, R2
	bne loc_8000BD0
	mov R3, #3
	tst R3, R2
	bne loc_8000BD6
	mov R3, #0x1F
	tst R3, R2
	bne loc_8000BDC
	b loc_8000BE2
loc_8000BD0:
	bl loc_8000ABC
	b loc_8000BE6
loc_8000BD6:
	bl loc_8000AC0
	b loc_8000BE6
loc_8000BDC:
	bl loc_8000AC4
	b loc_8000BE6
loc_8000BE2:
	bl loc_8000AC8
loc_8000BE6:
	add R7, #0xC
	b loc_8000B92
locret_8000BEA:
	pop {R4-R7,pc}
.endfunc // decomp_initGfx_8000B8E

.func
.thumb_func
sub_8000BEC:
	ldr R0, off_8000BF8 // =VerticalCounter_LY_ 
	ldrh R0, [R0]
	ldr R1, off_8000BFC // =dword_2009CC0 
	ldr R1, [R1]
	add r0, r0, r1
	mov PC, LR
off_8000BF8: .word VerticalCounter_LY_
off_8000BFC: .word dword_2009CC0
.endfunc // sub_8000BEC

.func
.thumb_func
sub_8000C00:
	push {r4,r7,lr}
	ldr R1, dword_8000C54 // =0x5F5E0FF 
	cmp R0, R1
	bmi loc_8000C0C
	ldr R0, dword_8000C58 // =0x99999999 
	b locret_8000C2C
loc_8000C0C:
	ldr R7, off_8000C30 // =dword_8000C34 
	mov R2, #0
	mov R3, #8
loc_8000C12:
	lsl r2, r2, #4
	ldr R1, [R7]
	mov R4, #0
loc_8000C18:
	cmp R0, R1
	bmi loc_8000C22
	sub r0, r0, r1
	add R4, #1
	b loc_8000C18
loc_8000C22:
	orr R2, R4
	add R7, #4
	sub R3, #1
	bne loc_8000C12
	add r0, r2, #0
locret_8000C2C:
	pop {r4,r7,pc}
	.byte 0, 0
off_8000C30: .word dword_8000C34
dword_8000C34: .word 0x989680
	.word 0xF4240, 0x186A0, 0x2710, 0x3E8, 0x64, 0xA, 0x1
dword_8000C54: .word 0x5F5E0FF
dword_8000C58: .word 0x99999999
.endfunc // sub_8000C00

.func
.thumb_func
sub_8000C5C:
	mov R1, #1
	tst R0, R0
	beq loc_8000C6E
	mov R1, #0
loc_8000C64:
	tst R0, R0
	beq loc_8000C6E
	add R1, #1
	lsr r0, r0, #4
	b loc_8000C64
loc_8000C6E:
	add r0, r1, #0
	mov PC, LR
.endfunc // sub_8000C5C

.func
.thumb_func
sub_8000C72:
	push {R4-R6,lr}
loc_8000C74:
	push {r0,r2}
	push {r1}
	bl sub_8001532
	pop {r1}
	push {r1}
	svc 6
	add r3, r1, #0
	pop {r1}
	push {r1,r3}
	bl sub_8001532
	pop {r1}
	push {r1}
	svc 6
	add r4, r1, #0
	pop {r1,r3}
	pop {r0,r2}
	ldrb R5, [R0,R3]
	ldrb R6, [R0,R4]
	strb R6, [R0,R3]
	strb R5, [R0,R4]
	sub R2, #1
	bne loc_8000C74
	pop {R4-R6,pc}
.endfunc // sub_8000C72

	push {R4-R6,lr}
loc_8000CA8:
	push {r0,r2}
	push {r1}
	bl rng_8001562
	pop {r1}
	push {r1}
	svc 6
	add r3, r1, #0
	pop {r1}
	push {r1,r3}
	bl rng_8001562
	pop {r1}
	push {r1}
	svc 6
	add r4, r1, #0
	pop {r1,r3}
	pop {r0,r2}
	ldrb R5, [R0,R3]
	ldrb R6, [R0,R4]
	strb R6, [R0,R3]
	strb R5, [R0,R4]
	sub R2, #1
	bne loc_8000CA8
	pop {R4-R6,pc}
.func
.thumb_func
sub_8000CDA:
	push {R4-R6,lr}
loc_8000CDC:
	push {r0,r2}
	push {r1}
	bl sub_8001532
	pop {r1}
	push {r1}
	svc 6
	add r3, r1, #0
	pop {r1}
	push {r1,r3}
	bl sub_8001532
	pop {r1}
	push {r1}
	svc 6
	add r4, r1, #0
	pop {r1,r3}
	pop {r0,r2}
	add r3, r3, r3
	add r4, r4, r4
	ldrh R5, [R0,R3]
	ldrh R6, [R0,R4]
	strh R6, [R0,R3]
	strh R5, [R0,R4]
	sub R2, #1
	bne loc_8000CDC
	pop {R4-R6,pc}
.endfunc // sub_8000CDA

.func
.thumb_func
sub_8000D12:
	push {R4-R6,lr}
loc_8000D14:
	push {r0,r2}
	push {r1}
	bl rng_8001562
	pop {r1}
	push {r1}
	svc 6
	add r3, r1, #0
	pop {r1}
	push {r1,r3}
	bl rng_8001562
	pop {r1}
	push {r1}
	svc 6
	add r4, r1, #0
	pop {r1,r3}
	pop {r0,r2}
	add r3, r3, r3
	add r4, r4, r4
	ldrh R5, [R0,R3]
	ldrh R6, [R0,R4]
	strh R6, [R0,R3]
	strh R5, [R0,R4]
	sub R2, #1
	bne loc_8000D14
	pop {R4-R6,pc}
.endfunc // sub_8000D12

	push {r7,lr}
	add r7, r0, #0
	push {r1,r7}
	bl sub_8001532
	pop {r1,r7}
	bl SWI_Div
	ldrb R0, [R7,R1]
	pop {r7,pc}
	push {r4,r6,lr}
	cmp R1, #2
	bmi locret_8000D82
	mov R3, #1
loc_8000D66:
	ldrb R2, [R0,R3]
	mov R4, #0
loc_8000D6A:
	ldrb R6, [R0,R4]
	cmp R2, R6
	bhi loc_8000D74
	strb R2, [R0,R4]
	add r2, r6, #0
loc_8000D74:
	add R4, #1
	cmp R4, R3
	bmi loc_8000D6A
	strb R2, [R0,R3]
	add R3, #1
	cmp R3, R1
	bmi loc_8000D66
locret_8000D82:
	pop {r4,r6,pc}
.func
.thumb_func
sub_8000D84:
	push {lr}
	sub sp, sp, #0x10
	ldr R1, dword_8000DD8 // =0x1499727 
	cmp R0, R1
	ble loc_8000D92
	ldr R0, dword_8000DDC // =0x99595999 
	b loc_8000DD4
loc_8000D92:
	bl sub_8000DE0
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	bl sub_8000C00
	str R0, [SP]
	ldr R0, [SP,#4]
	bl sub_8000C00
	str R0, [SP,#4]
	ldr R0, [SP,#8]
	bl sub_8000C00
	str R0, [SP,#8]
	ldr R0, [SP,#0xC]
	mov r1, #0x64 
	mul R0, R1
	mov r1, #0x3c 
	svc 6
	bl sub_8000C00
	ldr R1, [SP]
	ldr R2, [SP,#4]
	ldr R3, [SP,#8]
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
.endfunc // sub_8000D84

.func
.thumb_func
sub_8000DE0:
	push {lr}
	sub sp, sp, #0x10
	ldr R1, dword_8000E04 // =0x34BC0 
	svc 6
	str R0, [SP]
	add r0, r1, #0
	ldr R1, off_8000E08 // =0xE10 
	svc 6
	str R0, [SP,#4]
	add r0, r1, #0
	ldr R1, off_8000E0C // =0x3C 
	svc 6
	add r2, r0, #0
	add r3, r1, #0
	ldr R0, [SP]
	ldr R1, [SP,#4]
	add sp, sp, #0x10
	pop {pc}
dword_8000E04: .word 0x34BC0
off_8000E08: .word 0xE10
off_8000E0C: .word 0x3C
.endfunc // sub_8000DE0

.func
.thumb_func
sub_8000E10:
	mov R3, R10
	ldr R3, [R3,#0x40]
	ldr R0, [R3,#0x18]
	add R0, #1
	ldr R1, dword_8000E24 // =0x14988F0 
	cmp R0, R1
	ble loc_8000E20
	add r0, r1, #0
loc_8000E20:
	str R0, [R3,#0x18]
	mov PC, LR
dword_8000E24: .word 0x14988F0
.endfunc // sub_8000E10

.func
.thumb_func
sub_8000E28:
	mov R3, R10
	ldr R3, [R3,#0x40]
	ldr R0, [R3,#0x18]
	mov PC, LR
.endfunc // sub_8000E28

.func
.thumb_func
sub_8000E30:
	push {R4-R7,lr}
	mov R4, #0
	add r0, r4, #0
	tst R0, R0
	pop {R4-R7,pc}
.endfunc // sub_8000E30

.func
.thumb_func
sub_8000E3A:
	push {R4-R7,lr}
	add r4, r1, #0
	push {r0,r1}
	push {r4}
	bl change_20013F0_800151C // () -> int
	lsr r4, r0, #0x1e
	mov R0, R10
	ldr R0, [R0,#0x24]
	ldrh R0, [R0]
	mov R1, #3
	and R0, R1
	add r4, r4, r0
loc_8000E54:
	bl change_20013F0_800151C // () -> int
	sub R4, #1
	bge loc_8000E54
	pop {r4}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r6,r7}
	sub R7, #1
	push {r6,r7}
	mov R1, #0
loc_8000E6A:
	ldrb R3, [R6,R7]
	add r1, r1, r3
	sub R7, #1
	bge loc_8000E6A
	svc 6
	add R1, #1
	mov R2, #0
	pop {r6,r7}
	mov R0, #0
loc_8000E7C:
	ldrb R3, [R6,R2]
	add r0, r0, r3
	cmp R0, R1
	bge loc_8000E8C
	add R2, #1
	cmp R2, R4
	blt loc_8000E7C
	mov R2, #0
loc_8000E8C:
	add r0, r2, #0
	pop {R4-R7,pc}
.endfunc // sub_8000E3A

	push {r5,r6,lr}
	add r5, r0, r1
	add r6, r0, #0
	add r7, r0, #0
loc_8000E98:
	ldrb R2, [R6]
	cmp R2, #0xFF
	beq loc_8000EA2
	strb R2, [R7]
	add R7, #1
loc_8000EA2:
	add R6, #1
	sub R1, #1
	bne loc_8000E98
	mov R1, #0xFF
loc_8000EAA:
	cmp R7, R5
	beq locret_8000EB4
	strb R1, [R7]
	add R7, #1
	b loc_8000EAA
locret_8000EB4:
	pop {r5,r6,pc}
.func
.thumb_func
sub_8000EB6:
	push {R5-R7,lr}
	add r2, r1, r1
	add r5, r0, r2
	add r6, r0, #0
	add r7, r0, #0
	ldr R3, dword_8000EE0 // =0xFFFF 
loc_8000EC2:
	ldrh R2, [R6]
	cmp R2, R3
	beq loc_8000ECC
	strh R2, [R7]
	add R7, #2
loc_8000ECC:
	add R6, #2
	sub R1, #1
	bne loc_8000EC2
loc_8000ED2:
	cmp R7, R5
	beq locret_8000EDC
	strh R3, [R7]
	add R7, #2
	b loc_8000ED2
locret_8000EDC:
	pop {R5-R7,pc}
	.byte 0, 0
dword_8000EE0: .word 0xFFFF
.endfunc // sub_8000EB6

.func
.thumb_func
sub_8000EE4:
	push {R4-R7,lr}
	mov R4, #0
	mov R7, #0
	// entryIdx
	mov R0, #0xE
	// byteFlagIdx
	mov R1, #0
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8000EFA
	add R4, #1
	mov R0, #0x80
	orr R7, R0
loc_8000EFA:
	mov R0, #0
	bl sub_81207F8
	cmp R0, #0xC8
	blt loc_8000F0A
	add R4, #1
	mov r0, #0x40 
	orr R7, R0
loc_8000F0A:
	mov R0, #1
	bl sub_81207F8
	cmp r0, #0x27 
	blt loc_8000F1A
	add R4, #1
	mov r0, #0x20 
	orr R7, R0
loc_8000F1A:
	mov R0, #2
	bl sub_81207F8
	cmp R0, #5
	blt loc_8000F2A
	add R4, #1
	mov R0, #0x10
	orr R7, R0
loc_8000F2A:
	mov R0, #5
	bl sub_81207F8
	cmp R0, #0xF
	blt loc_8000F3A
	add R4, #1
	mov R0, #8
	orr R7, R0
loc_8000F3A:
	mov R0, #4
	bl sub_81207F8
	cmp R0, #0x1D
	blt loc_8000F4A
	add R4, #1
	mov R0, #4
	orr R7, R0
loc_8000F4A:
	// entryIdx
	mov R0, #3
	// byteFlagIdx
	mov r1, #0x70 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8000F5A
	add R4, #1
	mov R0, #2
	orr R7, R0
loc_8000F5A:
	// entryIdx
	mov R0, #3
	// byteFlagIdx
	mov r1, #0x40 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8000F6C
	add R4, #1
	mov R0, #0x10
	lsl r0, r0, #4
	orr R7, R0
loc_8000F6C:
	mov R0, #3
	mov R1, #0xBD
	mov R2, #5
	bl sub_802F1FC // (int a3, int a2) ->
	beq loc_8000F80
	add R4, #1
	mov r0, #0x20 
	lsl r0, r0, #4
	orr R7, R0
loc_8000F80:
	add r0, r4, #0
	add r1, r7, #0
	pop {R4-R7,pc}
.endfunc // sub_8000EE4

.func
.thumb_func
sub_8000F86:
	push {R4-R7,lr}
	add r4, r0, #0
	bl sub_803F838
	bne locret_8000FAA
	// flag 7 @ 0x2001C88[0xE<<5 + 0x0] (=2001E48)
	mov R0, #0xE
	mov R1, #0
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// flag 6 @ 0x2001C88[0x10<<5 + 0x0] (=2001E88)
	mov R0, #0x10
	mov R1, #1
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, R10
	ldr R0, [R0,#0x40]
	str R4, [R0,#0x18]
	bl sub_803F79E
locret_8000FAA:
	pop {R4-R7,pc}
.endfunc // sub_8000F86

.func
.thumb_func
sub_8000FAC:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C] // Toolkit.gamestate
	// flag 3 @ 0x2001C88[0x17<<5 + 0x1] (=2001F69)
	mov R0, #0x17
	mov R1, #0xC
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8000FCE
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#0xC]
	cmp R0, R1
	bne loc_8000FCE
	ldrb R0, [R5,#5]
	ldrb R1, [R5,#0xD]
	cmp R0, R1
	bne loc_8000FCE
	b loc_8000FDC
loc_8000FCE:
	mov R0, #0
	str R0, [R5,#0x1C]
	mov R6, R10
	ldr R6, [R6,#0x40]
	str R0, [R6,#0x1C]
	str R0, [R6,#0x2C]
	str R0, [R6,#0x28]
loc_8000FDC:
	mov R0, #0x17
	mov R1, #0xC
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {R4-R7,pc}
.endfunc // sub_8000FAC

.func
.thumb_func
sub_8000FE6:
	push {R4-R7,lr}
	add r6, r0, #0
	add r4, r1, #0
loc_8000FEC:
	add r0, r6, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_8000FFA
	add r0, r6, #0
	bl reqBBS_813E5DC
loc_8000FFA:
	add R6, #1
	sub R4, #1
	bgt loc_8000FEC
	pop {R4-R7,pc}
.endfunc // sub_8000FE6

.func
.thumb_func
sub_8001002:
	push {R4-R7,lr}
	ldr R0, off_8001010 // =0x17A0 
	mov R1, #0xA
	bl sub_8000FE6
	pop {R4-R7,pc}
	.byte 0, 0
off_8001010: .word 0x17A0
.endfunc // sub_8001002

.func
.thumb_func
sub_8001014:
	push {R4-R7,lr}
	add r6, r0, #0
	add r4, r1, #0
loc_800101A:
	add r0, r6, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_8001028
	add r0, r6, #0
	bl reqBBS_813F9A0
loc_8001028:
	add R6, #1
	sub R4, #1
	bgt loc_800101A
	pop {R4-R7,pc}
.endfunc // sub_8001014

	push {R4-R7,lr}
	ldr R0, off_800103C // =0x17A0 
	mov R1, #0xA
	bl sub_8001014
	pop {R4-R7,pc}
off_800103C: .word 0x17A0
.func
.thumb_func
sub_8001040:
	push {R4-R7,lr}
	mov R5, #1
	lsl r5, r5, #0x10
	b loc_800104A
loc_8001048:
	push {R4-R7,lr}
loc_800104A:
	mov R6, R10
	ldr R6, [R6,#0x24]
	ldrh R6, [R6]
	lsl r0, r0, #0x10
	orr R0, R1
	orr R0, R2
	mov R7, #0x10
	and R7, R6
	lsr r7, r7, #2
	add r1, r3, r7
	mov R3, #0xFF
	and R3, R5
	lsr r2, r5, #0x10
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	tst R4, R4
	beq locret_8001078
	mov R7, #0xF
	and R7, R6
	bne locret_8001078
	mov R0, #0x91
	bl sound_play // () -> void
locret_8001078:
	pop {R4-R7,pc}
.endfunc // sub_8001040

.func
.thumb_func
// () -> void
updatePlayerGameState_800107A:
	mov R3, R10
	ldr R3, [R3,#0x3C] // Toolkit.gamestate
	ldr R1, [R3,#0x18] // GameState.player
	ldr R0, [R1,#0x1C] // NPC.scriptArrayOffset
	str R0, [R3,#0x24] // GameState.player_x
	ldr R0, [R1,#0x20] // NPC.animationTimer
	str R0, [R3,#0x28] // GameState.player_y
	ldr R0, [R1,#0x24]
	str R0, [R3,#0x2C]
	ldrb R0, [R1,#0x10]
	str R0, [R3,#0x30]
	mov PC, LR
.endfunc // updatePlayerGameState_800107A

	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	str R0, [R5,#0x34]
	str R1, [R5,#0x38]
	str R2, [R5,#0x3C]
	str R3, [R5,#0x40]
	str R4, [R5,#0x44]
	pop {R4-R7,pc}
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	str R0, [R5,#0x48]
	str R1, [R5,#0x4C]
	str R2, [R5,#0x50]
	str R3, [R5,#0x54]
	str R4, [R5,#0x58]
	pop {R4-R7,pc}
.func
.thumb_func
// () -> u8
getPETNaviSelect:
	mov R3, R10
	ldr R3, [R3,#0x3C] // Toolkit.gamestate
	ldrb R0, [R3,#0x1] // GameState.PET_naviSelect
	mov PC, LR
.endfunc // getPETNaviSelect

.func
.thumb_func
sub_80010BE:
	mov R3, R10
	ldr R3, [R3,#0x3C]
	strb R0, [R3,#1]
	mov PC, LR
.endfunc // sub_80010BE

.func
.thumb_func
sub_80010C6:
	push {lr}
	bl getPETNaviSelect // () -> u8
	mov R3, R10
	ldr R3, [R3,#0x40]
	strb R0, [R3,#7]
	pop {pc}
.endfunc // sub_80010C6

.func
.thumb_func
sub_80010D4:
	push {R4-R7,lr}
	add r4, r0, #0
	mov r1, #0x42 
	bl sub_80137FE
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x40 
	bl sub_80137FE
	add r1, r6, #0
	pop {R4-R7,pc}
.endfunc // sub_80010D4

.func
.thumb_func
sub_80010EC:
	push {R4-R7,lr}
	add r4, r0, #0
	add r6, r1, #0
	mov r1, #0x42 
	bl sub_80137FE
	cmp R6, R0
	ble loc_80010FE
	add r6, r0, #0
loc_80010FE:
	add r0, r4, #0
	mov r1, #0x40 
	add r2, r6, #0
	bl sub_80137E6
	pop {R4-R7,pc}
.endfunc // sub_80010EC

	push {R4-R7,lr}
	ldr R6, off_8001140 // =loc_8001144 
	add r7, r0, #0
	sub r5, r1, #2
	mov R4, #0xF
loc_8001114:
	ldrh R0, [R7,R5]
	lsr r3, r0, #0xc
	and R3, R4
	lsr r2, r0, #8
	and R2, R4
	lsr r1, r0, #4
	and R1, R4
	and R0, R4
	ldrb R0, [R6,R0]
	ldrb R1, [R6,R1]
	lsl r1, r1, #4
	orr R0, R1
	ldrb R2, [R6,R2]
	lsl r2, r2, #8
	orr R0, R2
	ldrb R3, [R6,R3]
	lsl r3, r3, #0xc
	orr R0, R3
	strh R0, [R7,R5]
	sub R5, #2
	bge loc_8001114
	pop {R4-R7,pc}
off_8001140: .word loc_8001144
loc_8001144:
	lsl r0, r0, #4
	lsl r2, r0, #0xc
	lsl r0, r0, #0x14
	lsl r6, r0, #0x1c
	lsr r0, r0, #4
	lsr r2, r1, #0xc
	lsr r0, r0, #0x14
	lsr r6, r1, #0x1c
.func
.thumb_func
sub_8001154:
	push {R4-R7,lr}
	pop {R4-R7,pc}
.endfunc // sub_8001154

.func
.thumb_func
// () -> void
sub_8001158:
	push {R4-R7,lr}
	add r7, r0, #0
loc_800115C:
	ldr R0, [R7]
	tst R0, R0
	beq locret_8001170
	ldr R1, [R7,#4]
	mov R2, #0
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add R7, #8
	b loc_800115C
locret_8001170:
	pop {R4-R7,pc}
.endfunc // sub_8001158

.func
.thumb_func
sub_8001172:
	mov R3, R10
	ldr R3, [R3,#0x3C]
	strb R0, [R3,#9]
	mov PC, LR
	.balign 4, 0x00
.endfunc // sub_8001172

.func
.thumb_func
calcAngle_800117C:
	push {lr}
	asr r2, r0, #0x10
	asr r0, r1, #0x10
	add r1, r2, #0
	svc 0xa
	lsr r0, r0, #8
	pop {pc}
.endfunc // calcAngle_800117C

.func
.thumb_func
sub_800118A:
	push {lr}
	add r2, r0, #0
	orr R2, R1
	beq locret_800119E
	bl calcAngle_800117C
	add r0, #0x20 
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	add R0, #1
locret_800119E:
	pop {pc}
.endfunc // sub_800118A

.func
.thumb_func
sub_80011A0:
	lsl r0, r0, #1
	ldr R2, off_80011B8 // =byte_8006660 
	ldrsh R3, [R2,R0]
	ldr R2, off_80011BC // =byte_80066E0 
	ldrsh R2, [R2,R0]
	neg R2, R2
	mul R3, R1
	asr r0, r3, #8
	mul R2, R1
	asr r1, r2, #8
	mov PC, LR
	.balign 4, 0x00
off_80011B8: .word byte_8006660
off_80011BC: .word byte_80066E0
.endfunc // sub_80011A0

	push {lr}
	tst R0, R0
	beq loc_80011D0
	sub R0, #1
	lsl r0, r0, #6
	bl sub_80011A0
	pop {pc}
loc_80011D0:
	mov R0, #0
	mov R1, #0
	pop {pc}
.func
.thumb_func
sub_80011D6:
	sub r0, r0, r2
	add r0, r0, r4
	lsl r2, r4, #1
	cmp R0, R2
	bcs loc_80011EC
	sub r1, r1, r3
	add r1, r1, r4
	cmp R1, R2
	bcs loc_80011EC
	mov R0, #1
	mov PC, LR
loc_80011EC:
	mov R0, #0
	mov PC, LR
.endfunc // sub_80011D6

	sub r0, r0, r2
	sub r1, r1, r3
	add r2, r4, #0
	mul R4, R2
	add r2, r0, #0
	mul R0, R2
	add r2, r1, #0
	mul R1, R2
	add r0, r0, r1
	cmp R4, R0
	bmi loc_800120A
	mov R0, #1
	mov PC, LR
loc_800120A:
	mov R0, #0
	mov PC, LR
.func
.thumb_func
sub_800120E:
	push {r5,lr}
	tst R4, R4
	bne loc_800123C
loc_8001214:
	ldr R0, [R0,#8]
	sub r0, r3, r0
	bmi loc_8001220
	add r0, r4, #0
	mov R1, #0
	pop {r5,pc}
loc_8001220:
	lsr r1, r6, #8
	bl SWI_Div
	bl SWI_Sqrt
	mov R2, #0
	mov R1, #0xFF
	tst R0, R1
	beq loc_8001234
	mov R2, #1
loc_8001234:
	lsr r0, r0, #8
	add r1, r0, r2
	mov R0, #0
	pop {r5,pc}
loc_800123C:
	ldmia R0!, {R5,R7}
	push {r0,r3}
	sub r1, r1, r5
	asr r1, r1, #8
	add r5, r1, #0
	mul R1, R5
	sub r2, r2, r7
	asr r2, r2, #8
	add r5, r2, #0
	mul R2, R5
	add r0, r1, r2
	bl SWI_Sqrt
	lsl r0, r0, #8
	push {r4}
	add r1, r4, #0
	bl SWI_Div
	pop {r4}
	lsr r4, r4, #1
	cmp R1, R4
	bmi loc_800126A
	add R0, #1
loc_800126A:
	add r1, r0, #0
	pop {r0,r3}
	tst R1, R1
	beq loc_8001214
	ldr R0, [R0]
	sub r0, r3, r0
	push {r1}
	bl SWI_Div
	pop {r1}
	neg R2, R6
	mul R2, R1
	lsr r2, r2, #1
	add r0, r0, r2
	pop {r5,pc}
.endfunc // sub_800120E

	push {lr}
	ldr R7, [R0]
	sub r1, r1, r7
	ldr R7, [R0,#4]
	sub r2, r2, r7
	push {r1,r2}
	lsl r0, r3, #1
	neg R1, R4
	bl SWI_Div
	lsr r3, r3, #1
	cmp R1, R3
	bmi loc_80012A4
	add R0, #1
loc_80012A4:
	pop {r1,r2}
	push {r0,r1}
	add r1, r0, #0
	add r0, r2, #0
	bl SWI_Div
	add r2, r0, #0
	pop {r0,r1}
	push {r0,r2}
	add r2, r1, #0
	add r1, r0, #0
	add r0, r2, #0
	bl SWI_Div
	add r1, r0, #0
	pop {r0,r2}
	pop {pc}
	push {lr}
	mov R7, R8
	push {r7}
	sub sp, sp, #8
	str R5, [SP]
	push {r4,r6}
	ldmia R0!, {R3-R5}
	sub r0, r2, r4
	sub r1, r1, r3
	push {r0,r1}
	bl calcAngle_800117C
	mov R8, R0
	add r4, r0, #0
	pop {r0,r1}
	asr r0, r0, #8
	add r2, r0, #0
	mul R0, R2
	asr r1, r1, #8
	add r2, r1, #0
	mul R1, R2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #8
	add r1, r6, #0
	lsl r1, r1, #1
	svc 6
	add r1, r0, #0
	add r0, r4, #0
	bl sub_80011A0
	pop {r4,r6}
	push {r0,r1}
	lsl r0, r4, #1
	add r1, r6, #0
	mul R1, R6
	lsl r0, r0, #0x10
	bl SWI_Div
	neg R3, R0
	mul R0, R6
	add r2, r0, #0
	pop {r0,r1}
	ldr R5, [SP]
	add sp, sp, #8
	mov R4, R8
	add r4, #0x20 
	mov R6, #0xE0
	and R4, R6
	lsr r4, r4, #5
	pop {r7}
	mov R8, R7
	pop {pc}
.func
.thumb_func
sub_8001330:
	push {R4-R6,lr}
	push {r3,r4,r6}
	add r6, r4, #0
	ldmia R0!, {R3-R5}
	push {r5}
	sub r0, r2, r4
	sub r1, r1, r3
	push {r0,r1}
	bl calcAngle_800117C
	add r4, r0, #0
	pop {r0,r1}
	asr r0, r0, #8
	add r2, r0, #0
	mul R0, R2
	asr r1, r1, #8
	add r2, r1, #0
	mul R1, R2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #8
	add r1, r6, #0
	svc 6
	add r1, r0, #0
	add r0, r4, #0
	bl sub_80011A0
	pop {r5}
	pop {r3,r4,r6}
	push {r0,r1}
	add r0, r4, #0
	mul R0, R4
	mul R0, R6
	asr r0, r0, #1
	sub r3, r3, r5
	sub r0, r3, r0
	add r1, r4, #0
	svc 6
	add r2, r0, #0
	pop {r0,r1}
	pop {R4-R6,pc}
.endfunc // sub_8001330

.func
.thumb_func
sub_8001382:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldr R2, [R1,#0x5C]
	orr R2, R0
	str R2, [R1,#0x5C]
	mov PC, LR
.endfunc // sub_8001382

	mov R1, R10
	ldr R1, [R1,#0x18]
	ldr R2, [R1,#0x5C]
	bic R2, R0
	str R2, [R1,#0x5C]
	mov PC, LR
.func
.thumb_func
sub_800139A:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R0, [R0,#0x5C]
	mov PC, LR
.endfunc // sub_800139A

.func
.thumb_func
sub_80013A2:
	mov R1, R10
	ldr R1, [R1,#0x18]
	str R0, [R1,#0x5C]
	mov PC, LR
.endfunc // sub_80013A2

	push {R4-R7,lr}
	sub sp, sp, #0x40
	str R6, [SP,#4]
	str R7, [SP,#0x10]
	ldr R7, off_80014B8 // =sCamera+76 
	ldrb R7, [R7]
	str R3, [SP,#0x24]
	str R4, [SP,#0x28]
	str R2, [SP]
	mov R2, #0xFF
	and R2, R1
	str R2, [SP,#0x20]
	add r2, r1, #0
	lsl r2, r2, #0x17
	lsr r2, r2, #0x1f
	eor R2, R7
	str R2, [SP,#0x38]
	neg R2, R2
	add r2, r2, r2
	add R2, #1
	str R2, [SP,#0x18]
	add r2, r1, #0
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	str R2, [SP,#0x3C]
	neg R2, R2
	add r2, r2, r2
	add R2, #1
	str R2, [SP,#0x1C]
	lsl r5, r5, #0xc
	str R5, [SP,#0x2C]
	ldr R1, [SP,#0x20]
	lsl r1, r1, #2
	ldr R1, [R0,R1]
	add r1, r1, r0
	ldr R2, [R1,#4]
	add r2, r2, r0
	str R2, [SP,#0xC]
	ldr R2, [R1]
	add r2, r2, r0
	str R2, [SP,#8]
	ldr R2, [R1,#8]
	ldr R3, [R2,R0]
	add r2, r2, r3
	add r2, r2, r0
	ldrb R2, [R2]
	lsl r2, r2, #2
	ldr R3, [R1,#0xC]
	add r3, r3, r0
	ldr R2, [R3,R2]
	add r3, r3, r2
	ldr R2, [SP]
	ldr R4, [SP,#4]
	mov R1, #0
	str R1, [SP,#0x14]
loc_8001418:
	ldrb R0, [R3]
	cmp R0, #0xFF
	beq loc_80014A8
	ldr R1, [SP,#0x10]
	sub R1, #8
	str R1, [SP,#0x10]
	blt loc_80014A8
	ldr R1, [SP,#0x2C]
	add r0, r0, r1
	ldr R1, [SP,#4]
	add r0, r0, r1
	str R0, [R2,#4]
	ldrb R0, [R3,#4]
	ldrb R1, [R3,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsl r4, r0, #2
	add r4, r4, r1
	add r4, r4, r4
	ldr R5, off_80014B4 // =dword_80014BC 
loc_8001440:
	add r4, r4, r5
	ldrb R5, [R4]
	ldr R6, [SP,#0x38]
	mul R5, R6
	str R5, [SP,#0x30]
	ldrb R5, [R4,#1]
	ldr R6, [SP,#0x3C]
	mul R5, R6
	str R5, [SP,#0x34]
	lsl r0, r0, #0xe
	lsl r1, r1, #0x1e
	add r0, r0, r1
	mov R1, #2
	ldrsb R4, [R3,R1]
	ldr R1, [SP,#0x1C]
	mul R1, R4
	ldr R4, [SP,#0x28]
	add r1, r1, r4
	ldr R4, [SP,#0x34]
	sub r1, r1, r4
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	add r0, r0, r1
	mov R1, #1
	ldrsb R1, [R3,R1]
	ldr R4, [SP,#0x18]
	mul R1, R4
	ldr R4, [SP,#0x24]
	add r1, r1, r4
	ldr R4, [SP,#0x30]
	sub r1, r1, r4
	lsl r1, r1, #0x17
	lsr r1, r1, #7
	add r0, r0, r1
	ldr R1, [SP,#0x38]
	lsl r1, r1, #0x1c
	ldrb R4, [R3,#3]
	mov R5, #0xF0
	and R5, R4
	lsl r5, r5, #0x16
	eor R1, R5
	add r0, r0, r1
	ldr R1, [SP,#0x3C]
	lsl r1, r1, #0x1d
	add r0, r0, r1
	str R0, [R2]
	ldr R1, [SP,#0x14]
	add R1, #1
	str R1, [SP,#0x14]
	add R2, #8
	add R3, #5
	b loc_8001418
loc_80014A8:
	ldr R0, [SP,#8]
	ldr R1, [SP,#0xC]
	ldr R2, [SP,#0x14]
	add sp, sp, #0x40
	pop {R4-R7,pc}
	.balign 4, 0x00
off_80014B4: .word dword_80014BC
off_80014B8: .word sCamera+0x4C // sCamera.unk_4C
dword_80014BC: .word 0x10100808
	.word 0x40402020
	.word byte_8200810
	.word 0x20401020
	.word 0x20081008
	.word 0x40202010
.func
.thumb_func
sub_80014D4:
	push {lr}
	asr r0, r0, #0xc
	add r2, r0, #0
	mul R0, R2
	asr r1, r1, #0xc
	add r2, r1, #0
	mul R1, R2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #0xc
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_80014D4

.func
.thumb_func
// (void *src, void *dest, int size) -> void
copyWords_80014EC:
	push {R0-R7,lr}
	cmp R0, R1
	blt setPointersToLastElem_8001500
copyWords_80014F2:
	ldr R3, [R0]
	str R3, [R1]
	add R0, #4
	add R1, #4
	sub R2, #4
	// while (a3_size > 0);
	bgt copyWords_80014F2
	pop {R0-R7,pc}
setPointersToLastElem_8001500:
	sub R2, #4
	add r0, r0, r2
	add r1, r1, r2
reverseCopyWords_8001506:
	ldr R3, [R0]
	str R3, [R1]
	sub R0, #4
	sub R1, #4
	sub R2, #4
	// while (a3_size >= 0);
	bge reverseCopyWords_8001506
	pop {R0-R7,pc}
.endfunc // copyWords_80014EC

.func
.thumb_func
// () -> void
sub_8001514:
	ldr R0, rng_8001594 // =0xA338244F 
	ldr R1, off_8001598 // =dword_20013F0 
	str R0, [R1]
	mov PC, LR
.endfunc // sub_8001514

.func
.thumb_func
// () -> int
change_20013F0_800151C:
	push {r7,lr}
	ldr R7, off_800159C // =dword_20013F0 
	ldr R0, [R7]
	ldr R1, rng_80015A0 // =0x873CA9E5 
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add R0, #1
	eor R0, R1
	str R0, [R7]
	pop {r7,pc}
.endfunc // change_20013F0_800151C

.func
.thumb_func
sub_8001532:
	push {r7,lr}
	ldr R7, off_80015A4 // =dword_20013F0 
	ldr R0, [R7]
	ldr R1, rng_80015A0 // =0x873CA9E5 
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add R0, #1
	eor R0, R1
	str R0, [R7]
	lsl r0, r0, #1
	lsr r0, r0, #1
	pop {r7,pc}
.endfunc // sub_8001532

.func
.thumb_func
// () -> void
rng_800154C:
	push {r7,lr}
	ldr R7, off_80015A8 // =rngSeed_2001120 
	ldr R0, [R7]
	ldr R1, rng_80015A0 // =0x873CA9E5 
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add R0, #1
	eor R0, R1
	str R0, [R7]
	pop {r7,pc}
.endfunc // rng_800154C

.func
.thumb_func
rng_8001562:
	push {r7,lr}
	ldr R7, off_80015AC // =rngSeed_2001120 
	ldr R0, [R7]
	ldr R1, rng_80015A0 // =0x873CA9E5 
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add R0, #1
	eor R0, R1
	str R0, [R7]
	lsl r0, r0, #1
	lsr r0, r0, #1
	pop {r7,pc}
.endfunc // rng_8001562

.func
.thumb_func
dead_rng_800157C:
	push {r7,lr}
	ldr R7, off_80015B0 // =dword_20018E8 
	ldr R0, [R7]
	ldr R1, rng_80015A0 // =0x873CA9E5 
	lsl r2, r0, #1
	lsr r3, r0, #0x1f
	add r0, r2, r3
	add R0, #1
	eor R0, R1
	str R0, [R7]
	pop {r7,pc}
	.balign 4, 0x00
rng_8001594: .word 0xA338244F
off_8001598: .word dword_20013F0
off_800159C: .word dword_20013F0
rng_80015A0: .word 0x873CA9E5
off_80015A4: .word dword_20013F0
off_80015A8: .word rngSeed_2001120
off_80015AC: .word rngSeed_2001120
off_80015B0: .word dword_20018E8
.endfunc // dead_rng_800157C

.func
.thumb_func
sub_80015B4:
	push {lr}
	ldr R0, dword_80015C8 // =0x600E000 
	ldr R1, dword_80015CC // =0x2000 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	bl sub_800183C
	bl sub_8001850
	pop {pc}
dword_80015C8: .word 0x600E000
dword_80015CC: .word 0x2000
.endfunc // sub_80015B4

.func
.thumb_func
render_80015D0:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x28]
	ldr R1, dword_80015EC // =0x600E000 
	ldr R2, dword_80015F0 // =0x2000 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	mov R0, R10
	ldr R0, [R0,#0x28]
	ldr R1, dword_80015F4 // =0x800 
	ldr R2, dword_80015F8 // =0x2FF02FF 
	bl CpuFastSet_80009AC
	pop {pc}
dword_80015EC: .word 0x600E000
dword_80015F0: .word 0x2000
dword_80015F4: .word 0x800
dword_80015F8: .word 0x2FF02FF
.endfunc // render_80015D0

.func
.thumb_func
sub_80015FC:
	ldr R1, off_8001614 // =dword_8001618 
	lsl r0, r0, #3
	add r1, r1, r0
	mov R3, R10
	ldr R2, [R3,#8]
	add R2, #4
	ldr R0, [R1]
	str R0, [R2]
	ldr R0, [R1,#4]
	str R0, [R2,#4]
	mov PC, LR
	.balign 4, 0x00
off_8001614: .word dword_8001618
dword_8001618: .word 0x0, 0x0
	.word 0x3C08
	.byte 0, 0, 0, 0
	.word 0x3D013C08, 0x0
	.word 0x3C08
	.byte 0, 0, 0, 0
	.word 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F0B3E02, 0x3D833C08
	.word 0x3F8D3E82, 0x3D833C08, 0x3F8D3E0E, 0x3D033C08, 0x3F093E02
	.word 0x3D033C08, 0x0
	.word 0x3D833C08, 0x3F813E02, 0x3D033C08, 0x3F815E02, 0x3D033C08
	.word 0x3F853E02, 0x3D833C08, 0x3F093E02, 0x3D033C08, 0x3F053E02
	.word 0x3D033C08, 0x3F053E02, 0x3D033C08, 0x3F093E02, 0x3D033C08
	.word 0x3F013E02, 0x3D033C08, 0x3F013E02, 0x3D033C08, 0x3F093E0A
	.word 0x3D033C08, 0x3F013E02, 0x3D033C08, 0x3F093E02, 0x3D033C08
	.word 0x3F093E02, 0x3D033C08, 0x3F093E02, 0x3D033C08, 0x3F093E02
	.word 0x3D033C08, 0x3F083E01, 0x3D033C08, 0x3F053E02, 0xE1033C08
	.word 0x3F013E02, 0x3D033C08, 0x3F013E02, 0x3D033C08, 0x3F093E02
.endfunc // sub_80015FC

.func
.thumb_func
sub_8001708:
	push {lr}
	cmp R0, #0x80
	bge loc_8001712
	ldr R3, off_8001724 // =off_803385C 
	b loc_8001716
loc_8001712:
	ldr R3, off_8001728 // =off_8033878 
	sub R0, #0x80
loc_8001716:
	lsl r0, r0, #2
	ldr R3, [R3,R0]
	add r3, r3, r1
	ldrb R0, [R3]
	bl sub_80015FC
	pop {pc}
off_8001724: .word off_803385C
off_8001728: .word off_8033878
.endfunc // sub_8001708

.func
.thumb_func
render_800172C:
	push {R4-R7,lr}
	mov R7, R10
	ldr R5, [R7,#8]
	ldr R1, off_8001768 // =MosaicSize 
	ldrh R2, [R5,#2]
	strh R2, [R1]
	add r0, r5, #0
	add R0, #4
	ldr R1, off_800176C // =BG0Control 
	mov r2, #0x38 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	// src
	ldr R0, [R7,#0x1C]
	// dest
	ldr R1, off_8001770 // =Window0HorizontalDimensions 
	// halfwordCount
	mov R2, #0xC
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	ldr R5, [R7,#0x20]
	ldr R1, off_8001774 // =ColorSpecialEffectsSelection 
	ldr R2, [R5]
	str R2, [R1]
	ldrh R2, [R5,#4]
	strh R2, [R1,#0x4] // (Brightness_Fade_In_Out_Coefficient - 0x4000050)
	ldr R5, [R7,#8]
	ldr R1, off_8001764 // =LCDControl 
	ldrh R2, [R5]
	strh R2, [R1]
	pop {R4-R7,pc}
off_8001764: .word LCDControl
off_8001768: .word MosaicSize
off_800176C: .word BG0Control
off_8001770: .word Window0HorizontalDimensions
off_8001774: .word ColorSpecialEffectsSelection
.endfunc // render_800172C

.func
.thumb_func
sub_8001778:
	mov R1, R10
	ldr R1, [R1,#8]
	strh R0, [R1]
	mov PC, LR
.endfunc // sub_8001778

.func
.thumb_func
sub_8001780:
	mov R1, R10
	ldr R1, [R1,#8]
	ldrh R0, [R1]
	mov PC, LR
.endfunc // sub_8001780

.func
.thumb_func
sub_8001788:
	mov R0, R10
	ldr R0, [R0,#8]
	mov R1, #0
	strh R1, [R0,#0xC]
	strh R1, [R0,#0xE]
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x1A]
	strh R1, [R0,#0x18]
	mov PC, LR
.endfunc // sub_8001788

.func
.thumb_func
sub_80017A0:
	mov R0, R10
	ldr R0, [R0,#8]
	mov R1, #0
	strh R1, [R0,#2]
	mov PC, LR
.endfunc // sub_80017A0

.func
.thumb_func
sub_80017AA:
	push {lr}
	ldr R0, dword_80017D0 // =0x6000000 
	mov r1, #0x40 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, dword_80017D4 // =0x6004000 
	mov r1, #0x40 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, dword_80017D8 // =0x6008000 
	mov r1, #0x40 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, dword_80017DC // =0x600C000 
	mov r1, #0x20 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
dword_80017D0: .word 0x6000000
dword_80017D4: .word 0x6004000
dword_80017D8: .word 0x6008000
dword_80017DC: .word 0x600C000
.endfunc // sub_80017AA

.func
.thumb_func
sub_80017E0:
	push {lr}
	ldr R0, off_8001800 // =byte_3001960 
	mov R1, #2
	bl sub_80008C0
	pop {pc}
.endfunc // sub_80017E0

.func
.thumb_func
main_static_80017EC:
	push {lr}
	ldr R0, off_8001800 // =byte_3001960 
	mov R1, #2
	bl sub_80008C0
	ldr R0, dword_8001804 // =0x5000000 
	mov R1, #2
	bl sub_80008C0
	pop {pc}
off_8001800: .word byte_3001960
dword_8001804: .word 0x5000000
.endfunc // main_static_80017EC

.func
.thumb_func
renderPalletes_8001808:
	push {lr}
	ldr R0, off_8001818 // =unk_3001B60 
	ldr R1, dword_800181C // =0x5000000 
	mov r2, #0x20 
	lsl r2, r2, #4
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8001818: .word unk_3001B60
dword_800181C: .word 0x5000000
.endfunc // renderPalletes_8001808

.func
.thumb_func
sub_8001820:
	push {lr}
	mov R2, R10
	// memBlock
	ldr R0, [R2,#0x20]
	// size
	mov R1, #8
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_8001820

.func
.thumb_func
sub_800182E:
	push {lr}
	mov R2, R10
	// memBlock
	ldr R0, [R2,#0x1C]
	// size
	mov R1, #0xC
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_800182E

.func
.thumb_func
sub_800183C:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x28]
	ldr R1, dword_800184C // =0x2000 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	pop {pc}
	.balign 4, 0x00
dword_800184C: .word 0x2000
.endfunc // sub_800183C

.func
.thumb_func
sub_8001850:
	push {lr}
	ldr R0, off_8001868 // =dword_86A5520 
	ldr R1, dword_800186C // =0x600D400 
	ldr R2, dword_8001870 // =0x800 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	ldr R0, off_8001874 // =byte_86BEC80 
	ldr R1, off_8001878 // =unk_3001B40 
	mov r2, #0x20 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8001868: .word dword_86A5520
dword_800186C: .word 0x600D400
dword_8001870: .word 0x800
off_8001874: .word byte_86BEC80
off_8001878: .word unk_3001B40
.endfunc // sub_8001850

.func
.thumb_func
sub_800187C:
	lsl r0, r0, #1
	lsl r1, r1, #6
	lsl r2, r2, #0xb
	add r0, r0, r1
	add r0, r0, r2
	mov R1, R10
	ldr R1, [R1,#0x28]
	add r1, r1, r0
	strh R3, [R1]
	mov PC, LR
.endfunc // sub_800187C

.func
.thumb_func
sub_8001890:
	push {R4-R7,lr}
	mov R6, R10
	ldr R6, [R6,#0x28]
	lsl r2, r2, #0xb
	add r6, r6, r2
	lsl r0, r0, #1
	add r6, r6, r0
	lsl r1, r1, #6
	add r6, r6, r1
	mov R2, #0
	add r1, r6, #0
loc_80018A6:
	ldrh R7, [R3]
	strh R7, [R6]
	add R3, #2
	add R6, #2
	add R2, #1
	cmp R2, R4
	blt loc_80018A6
	mov R2, #0
	add r1, #0x40 
	add r6, r1, #0
	sub R5, #1
	cmp R5, #0
	bgt loc_80018A6
	pop {R4-R7,pc}
.endfunc // sub_8001890

.func
.thumb_func
// (int j, int i, int cpyOff, u16 *tileRefs) -> void
copyTiles:
	push {r6,r7,lr}
	ldr R7, off_80018CC // =copyTiles_iram+1 
	mov LR, PC
	bx r7
	pop {r6,r7,pc}
off_80018CC: .word copyTiles_iram+1
.endfunc // copyTiles

.func
.thumb_func
sub_80018D0:
	push {r6,r7,lr}
	ldr R7, off_80018DC // =sub_3005EBA+1 
	mov LR, PC
	bx r7
	pop {r6,r7,pc}
	.balign 4, 0x00
off_80018DC: .word sub_3005EBA+1
.endfunc // sub_80018D0

.func
.thumb_func
sub_80018E0:
	push {r6,r7,lr}
	mov R6, R10
	ldr R6, [R6,#0x28]
	lsl r2, r2, #0xb
	add r6, r6, r2
	lsl r1, r1, #6
	add r6, r6, r1
	mov R1, #0x1F
	and R0, R1
loc_80018F2:
	ldrh R7, [R3]
	lsl r1, r0, #1
	strh R7, [R6,R1]
	add R0, #1
	mov R1, #0x1F
	and R0, R1
	add R3, #2
	sub R4, #1
	cmp R4, #0
	bgt loc_80018F2
	pop {r6,r7,pc}
	push {r6,r7,lr}
	mov R6, R10
	ldr R6, [R6,#0x28]
	lsl r2, r2, #0xb
	add r6, r6, r2
	lsl r0, r0, #1
	add r6, r6, r0
	mov R0, #0x1F
	and R1, R0
loc_800191A:
	ldrh R7, [R3]
	lsl r0, r1, #6
	strh R7, [R6,R0]
	add R1, #1
	mov R0, #0x1F
	and R1, R0
	add R3, #2
	sub R4, #1
	cmp R4, #0
	bgt loc_800191A
	pop {r6,r7,pc}
.endfunc // sub_80018E0

.func
.thumb_func
sub_8001930:
	push {R4-R7,lr}
	lsl r2, r2, #2
	lsl r1, r1, #0xc
	orr R0, R1
	mov R5, #0
loc_800193A:
	strh R0, [R4]
	add R0, #1
	strh R0, [R4,#2]
	add R0, #1
	add r1, r4, r2
	strh R0, [R1]
	add R0, #1
	strh R0, [R1,#2]
	add R0, #1
	add R4, #4
	add R5, #4
	cmp R5, R2
	blt loc_800193A
	sub R3, #1
	blt loc_800193A
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_8001930

.func
.thumb_func
sub_800195C:
	push {lr}
	tst R0, R0
	beq locret_8001972
	ldr R3, off_80019AC // =dword_200A880 
	str R0, [R3]
	str R1, [R3,#0x8] // (dword_200A888 - 0x200A880)
	str R2, [R3,#0x4] // (dword_200A884 - 0x200A880)
	mov R0, #4
	add r1, r2, #0
	bl start_800024C
locret_8001972:
	pop {pc}
.endfunc // sub_800195C

.func
.thumb_func
sub_8001974:
	push {lr}
	ldr R2, off_80019AC // =dword_200A880 
	ldr R0, off_800198C // =locret_8001AB4+1 
	str R0, [R2]
	str R0, [R2,#0x8] // (dword_200A888 - 0x200A880)
	ldr R1, dword_8001990 // =unk_3005CD9 
	str R1, [R2,#0x4] // (dword_200A884 - 0x200A880)
	mov R0, #4
	bl start_800024C
	pop {pc}
	.balign 4, 0x00
off_800198C: .word locret_8001AB4+1
dword_8001990: .word 0x3005CD9
.endfunc // sub_8001974

.func
.thumb_func
cb_call_200A880:
	push {lr}
	ldr R1, off_80019AC // =dword_200A880 
	ldr R0, [R1]
	mov LR, PC
	bx r0
	pop {pc}
.endfunc // cb_call_200A880

.func
.thumb_func
sub_80019A0:
	push {lr}
	ldr R1, off_80019AC // =dword_200A880 
	ldr R0, [R1,#0x8] // (dword_200A888 - 0x200A880)
	mov LR, PC
	bx r0
	pop {pc}
off_80019AC: .word dword_200A880
.endfunc // sub_80019A0

.func
.thumb_func
nullsub_35:
	mov PC, LR
.endfunc // nullsub_35

.func
.thumb_func
nullsub_36:
	mov PC, LR
.endfunc // nullsub_36

.func
.thumb_func
sub_80019B4:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	sub R2, #8
	str R2, [R1]
	lsr r2, r2, #4
	ldr R3, [R1,#0x4] // (dword_2009694 - 0x2009690)
	sub R3, #4
	str R3, [R1,#0x4] // (dword_2009694 - 0x2009690)
	lsr r3, r3, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x10]
	strh R3, [R1,#0x12]
	mov PC, LR
.endfunc // sub_80019B4

.func
.thumb_func
sub_80019D0:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	sub R2, #8
	str R2, [R1]
	lsr r2, r2, #4
	ldr R3, [R1,#0x4] // (dword_2009694 - 0x2009690)
	sub R3, #4
	str R3, [R1,#0x4] // (dword_2009694 - 0x2009690)
	lsr r3, r3, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x18]
	strh R3, [R1,#0x1A]
	mov PC, LR
.endfunc // sub_80019D0

.func
.thumb_func
sub_80019EC:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R3, [R1]
	sub R3, #4
	str R3, [R1]
	lsr r3, r3, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R3, [R1,#0x12]
	mov PC, LR
.endfunc // sub_80019EC

.func
.thumb_func
sub_80019FE:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R3, [R1]
	sub R3, #4
	str R3, [R1]
	lsr r3, r3, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R3, [R1,#0x1A]
	mov PC, LR
.endfunc // sub_80019FE

.func
.thumb_func
sub_8001A10:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	add R2, #4
	str R2, [R1]
	lsr r2, r2, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x12]
	mov PC, LR
.endfunc // sub_8001A10

.func
.thumb_func
sub_8001A22:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	add R2, #4
	str R2, [R1]
	lsr r2, r2, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x1A]
	mov PC, LR
.endfunc // sub_8001A22

.func
.thumb_func
sub_8001A34:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	add R2, #1
	str R2, [R1]
	lsr r2, r2, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x10]
	mov PC, LR
.endfunc // sub_8001A34

.func
.thumb_func
sub_8001A46:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	add R2, #1
	str R2, [R1]
	lsr r2, r2, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x18]
	mov PC, LR
.endfunc // sub_8001A46

.func
.thumb_func
sub_8001A58:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	sub R2, #8
	str R2, [R1]
	lsr r2, r2, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x10]
	mov PC, LR
.endfunc // sub_8001A58

.func
.thumb_func
sub_8001A6A:
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	sub R2, #8
	str R2, [R1]
	lsr r2, r2, #4
	mov R1, R10
	ldr R1, [R1,#8]
	strh R2, [R1,#0x18]
	mov PC, LR
.endfunc // sub_8001A6A

.func
.thumb_func
sub_8001A7C:
	push {lr}
	bl sub_800139A
	mov R1, #0x10
	tst R0, R1
	beq locret_8001AAC
	ldr R1, off_8001AB0 // =dword_2009690 
	ldr R2, [R1]
	mov R3, #1
	lsl r3, r3, #0xa
	sub r2, r2, r3
	mov R3, #4
	lsl r3, r3, #0x10
	neg R3, R3
	cmp R2, R3
	bge loc_8001A9E
	add r2, r3, #0
loc_8001A9E:
	str R2, [R1]
	asr r2, r2, #0x10
	mov R1, R10
	ldr R1, [R1,#8]
	ldrh R3, [R1,#0x12]
	sub r3, r3, r2
	strh R3, [R1,#0x12]
locret_8001AAC:
	pop {pc}
	.byte 0, 0
off_8001AB0: .word dword_2009690
.endfunc // sub_8001A7C

locret_8001AB4:
	mov PC, LR
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
.func
.thumb_func
sub_8001AFC:
	push {lr}
	// memBlock
	ldr R0, off_8001C40 // =byte_20094C0 
	// size
	ldr R1, off_8001B08 // =0x1B0 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_8001B08: .word 0x1B0
.endfunc // sub_8001AFC

	push {R4-R7,lr}
	ldr R1, off_8001B18 // =off_8001AB8 
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8001B18: .word off_8001AB8
.func
.thumb_func
sub_8001B1C:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R7, off_8001C40 // =byte_20094C0 
	ldrb R1, [R0,#9]
	mov R2, #0x18
	mul R2, R1
	add r7, r7, r2
	strb R1, [R7,#1]
	ldr R1, [R0]
	str R1, [R7,#0xC]
	ldr R2, [R0,#4]
	str R2, [R7,#0x10]
	ldr R3, [R0,#8]
	str R3, [R7,#0x14]
	add R0, #0xC
	mov R6, #1
	cmp R3, #8
	beq loc_8001B48
	ldr R6, [R0,#4]
loc_8001B48:
	strh R6, [R7,#2]
	mov R6, #1
	strb R6, [R7]
	str R0, [R7,#4]
	str R0, [R7,#8]
	ldr R6, off_8001B68 // =off_8001C24 
	ldrb R1, [R7,#0x14]
	ldr R6, [R6,R1]
	mov LR, PC
	bx r6
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8001B68: .word off_8001C24
.endfunc // sub_8001B1C

.func
.thumb_func
sub_8001B6C:
	push {R4-R7,lr}
	push {r0}
	ldr R7, off_8001C40 // =byte_20094C0 
	mov R1, #0x18
	mul R1, R0
	add r7, r7, r1
	mov R0, #0
	strb R0, [R7]
	pop {r0}
	bl sub_800239A
	pop {R4-R7,pc}
.endfunc // sub_8001B6C

.func
.thumb_func
sub_8001B84:
	push {R4-R7,lr}
	ldr R7, off_8001C40 // =byte_20094C0 
	mov R1, #0x18
	mul R1, R0
	add r7, r7, r1
	ldrb R0, [R7]
	tst R0, R0
	pop {R4-R7,pc}
.endfunc // sub_8001B84

.func
.thumb_func
PET_onUpdate_8001B94:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R7, off_8001C40 // =byte_20094C0 
	mov R4, #0
loc_8001BA2:
	ldrb R1, [R7]
	tst R1, R1
	bne loc_8001BB2
loc_8001BA8:
	add R7, #0x18
	add R4, #1
	cmp R4, #0x12
	bge loc_8001BF4
	b loc_8001BA2
loc_8001BB2:
	ldrh R1, [R7,#2]
	sub R1, #1
	strh R1, [R7,#2]
	cmp R1, #0
	bgt loc_8001BA8
	ldr R0, [R7,#8]
	ldr R1, off_8001C00 // =dword_8001C08 
	ldrb R2, [R7,#0x14]
	ldr R1, [R1,R2]
	add r0, r0, r1
	ldr R1, [R0]
	cmp R1, #0
	beq loc_8001BEE
	cmp R1, #2
	beq loc_8001BD8
	cmp R1, #1
	bne loc_8001BDC
	ldr R0, [R7,#4]
	b loc_8001BDC
loc_8001BD8:
	ldr R0, [R0,#4]
	str R0, [R7,#4]
loc_8001BDC:
	str R0, [R7,#8]
	ldr R1, [R0,#4]
	strh R1, [R7,#2]
	ldr R6, off_8001C04 // =off_8001C24 
	ldrb R1, [R7,#0x14]
	ldr R6, [R6,R1]
	mov LR, PC
	bx r6
	b loc_8001BA8
loc_8001BEE:
	mov R1, #0
	strb R1, [R7]
	b loc_8001BA8
loc_8001BF4:
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
	.byte 0, 0
off_8001C00: .word dword_8001C08
off_8001C04: .word off_8001C24
dword_8001C08: .word 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
off_8001C24: .word sub_8001C44+1
	.word loc_8001C94+1
	.word sub_8001C52+1
	.word sub_8002310+1
	.word sub_800232A+1
	.word sub_8002338+1
	.word loc_8001CFC+1
off_8001C40: .word byte_20094C0
.endfunc // PET_onUpdate_8001B94

.func
.thumb_func
sub_8001C44:
	push {lr}
	ldr R0, [R0]
	ldr R1, [R7,#0xC]
	ldr R2, [R7,#0x10]
	bl loc_8000AC8
.endfunc // sub_8001C44

	pop {pc}
.func
.thumb_func
sub_8001C52:
	push {lr}
	ldr R5, off_8001C90 // =byte_200BE70 
	ldr R5, [R5,#0xC] // (dword_200BE7C - 0x200BE70)
	ldrb R2, [R7,#0x17]
	lsl r2, r2, #2
	add R2, #4
	ldr R2, [R5,R2]
	add r5, r5, r2
	mov R6, #0xF0
	lsl r6, r6, #8
	ldrb R2, [R7,#0x16]
	mov R8, R7
loc_8001C6A:
	ldr R1, [R0]
	ldr R7, [R0,#4]
	ldrh R3, [R5,R1]
	and R3, R6
	orr R3, R7
	strh R3, [R5,R1]
	add R0, #8
	sub R2, #1
	bgt loc_8001C6A
	mov R7, R8
	push {r4,r7}
	ldr R5, off_8001C90 // =byte_200BE70 
	bl sub_8030808
	pop {r4,r7}
	mov R0, #0
	strb R0, [R7]
	pop {pc}
	.byte 0, 0
off_8001C90: .word byte_200BE70
.endfunc // sub_8001C52

loc_8001C94:
	push {r4,r7,lr}
	ldr R6, [R0]
	ldr R5, off_8001CE4 // =off_8001AB8 
	ldrb R4, [R7,#0x17]
	lsl r4, r4, #2
	ldr R5, [R5,R4]
	ldr R4, [R7,#0xC]
	mov R1, #0
	push {r0}
loc_8001CA6:
	ldrh R2, [R6,R1]
	lsl r3, r2, #0x16
	lsr r3, r3, #0x16
	lsl r3, r3, #5
	push {r4,r6}
	add r4, r4, r3
	ldr R0, off_8001CE8 // =loc_8001CEC 
	lsr r2, r2, #0xa
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	mov LR, PC
	bx r0
	pop {r4,r6}
	add r5, #0x20 
	add R1, #2
	ldrb R2, [R7,#0x16]
	lsl r2, r2, #1
	cmp R1, R2
	blt loc_8001CA6
	pop {r0}
	ldr R0, off_8001CE4 // =off_8001AB8 
	ldrb R1, [R7,#0x17]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	ldr R1, [R7,#0x10]
	ldrb R2, [R7,#0x16]
	lsl r2, r2, #5
	bl loc_8000AC8
	pop {r4,r7,pc}
	.balign 4, 0x00
off_8001CE4: .word off_8001AB8
off_8001CE8: .word loc_8001CEC
loc_8001CEC:
	add r5, r4, #5
	lsr r0, r0, #0x20
	add r7, r0, #6
	lsr r0, r0, #0x20
	sub r7, r5, #2
	lsr r0, r0, #0x20
	sub r1, r2, #3
	lsr r0, r0, #0x20
loc_8001CFC:
	push {r4,r7,lr}
	ldr R6, [R0]
	ldr R5, off_8001D4C // =off_8001AB8 
	ldrb R4, [R7,#0x17]
	lsl r4, r4, #2
	ldr R5, [R5,R4]
	ldr R4, [R7,#0xC]
	mov R1, #0
	push {r0}
loc_8001D0E:
	ldrh R2, [R6,R1]
	lsl r3, r2, #0x16
	lsr r3, r3, #0x16
	lsl r3, r3, #6
	push {r4,r6}
	add r4, r4, r3
	ldr R0, off_8001D50 // =loc_8001D54 
	lsr r2, r2, #0xa
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	mov LR, PC
	bx r0
	pop {r4,r6}
	add r5, #0x40 
	add R1, #2
	ldrb R2, [R7,#0x16]
	lsl r2, r2, #1
	cmp R1, R2
	blt loc_8001D0E
	pop {r0}
	ldr R0, off_8001D4C // =off_8001AB8 
	ldrb R1, [R7,#0x17]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	ldr R1, [R7,#0x10]
	ldrb R2, [R7,#0x16]
	lsl r2, r2, #6
	bl loc_8000AC8
	pop {r4,r7,pc}
	.balign 4, 0x00
off_8001D4C: .word off_8001AB8
off_8001D50: .word loc_8001D54
loc_8001D54:
	mov R0, #1
	lsr r0, r0, #0x20
	mov r0, #0x43 
	lsr r0, r0, #0x20
	mov R1, #0x8D
	lsr r0, r0, #0x20
	mov R1, #0xCF
	lsr r0, r0, #0x20
	ldr R0, [R4]
	str R0, [R5]
	ldr R0, [R4,#4]
	str R0, [R5,#4]
	ldr R0, [R4,#8]
	str R0, [R5,#8]
	ldr R0, [R4,#0xC]
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x10]
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x14]
	str R0, [R5,#0x14]
	ldr R0, [R4,#0x18]
	str R0, [R5,#0x18]
	ldr R0, [R4,#0x1C]
	str R0, [R5,#0x1C]
	mov PC, LR
	ldr R2, dword_8001FFC // =0xF0F0F0F0 
	mov R9, R2
	ldr R2, dword_8001FF8 // =0xFF00FF00 
	mov R8, R2
	ldr R0, [R4]
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5]
	ldr R0, [R4,#4]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#4]
	ldr R0, [R4,#8]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#8]
	ldr R0, [R4,#0xC]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x10]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x14]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x14]
	ldr R0, [R4,#0x18]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x18]
	ldr R0, [R4,#0x1C]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x1C]
	mov PC, LR
	ldr R0, [R4]
	str R0, [R5,#0x1C]
	ldr R0, [R4,#4]
	str R0, [R5,#0x18]
	ldr R0, [R4,#8]
	str R0, [R5,#0x14]
	ldr R0, [R4,#0xC]
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x10]
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x14]
	str R0, [R5,#8]
	ldr R0, [R4,#0x18]
	str R0, [R5,#4]
	ldr R0, [R4,#0x1C]
	str R0, [R5]
	mov PC, LR
	ldr R2, dword_8001FFC // =0xF0F0F0F0 
	mov R9, R2
	ldr R2, dword_8001FF8 // =0xFF00FF00 
	mov R8, R2
	ldr R0, [R4]
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x1C]
	ldr R0, [R4,#4]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x18]
	ldr R0, [R4,#8]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x14]
	ldr R0, [R4,#0xC]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x10]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x14]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#8]
	ldr R0, [R4,#0x18]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5,#4]
	ldr R0, [R4,#0x1C]
	mov R2, R8
	lsr r3, r2, #8
	and R2, R0
	and R3, R0
	lsr r0, r2, #8
	lsl r3, r3, #8
	orr R0, R3
	mov R2, #0x10
	ror R0, R2
	mov R2, R9
	lsr r3, r2, #4
	and R2, R0
	and R3, R0
	lsr r0, r2, #4
	lsl r3, r3, #4
	orr R0, R3
	str R0, [R5]
	mov PC, LR
dword_8001FF8: .word 0xFF00FF00
dword_8001FFC: .word 0xF0F0F0F0
	ldr R0, [R4]
	str R0, [R5]
	ldr R0, [R4,#4]
	str R0, [R5,#4]
	ldr R0, [R4,#8]
	str R0, [R5,#8]
	ldr R0, [R4,#0xC]
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x10]
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x14]
	str R0, [R5,#0x14]
	ldr R0, [R4,#0x18]
	str R0, [R5,#0x18]
	ldr R0, [R4,#0x1C]
	str R0, [R5,#0x1C]
	ldr R0, [R4,#0x20]
	str R0, [R5,#0x20]
	ldr R0, [R4,#0x24]
	str R0, [R5,#0x24]
	ldr R0, [R4,#0x28]
	str R0, [R5,#0x28]
	ldr R0, [R4,#0x2C]
	str R0, [R5,#0x2C]
	ldr R0, [R4,#0x30]
	str R0, [R5,#0x30]
	ldr R0, [R4,#0x34]
	str R0, [R5,#0x34]
	ldr R0, [R4,#0x38]
	str R0, [R5,#0x38]
	ldr R0, [R4,#0x3C]
	str R0, [R5,#0x3C]
	mov PC, LR
	ldr R2, dword_8002188 // =0xFF00FF00 
	mvn R3, R2
	ldr R0, [R4]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5]
	ldr R0, [R4,#4]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#4]
	ldr R0, [R4,#8]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#8]
	ldr R0, [R4,#0xC]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x10]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x14]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x14]
	ldr R0, [R4,#0x18]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x18]
	ldr R0, [R4,#0x1C]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x1C]
	ldr R0, [R4,#0x20]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x20]
	ldr R0, [R4,#0x24]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x24]
	ldr R0, [R4,#0x28]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x28]
	ldr R0, [R4,#0x2C]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x2C]
	ldr R0, [R4,#0x30]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x30]
	ldr R0, [R4,#0x34]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x34]
	ldr R0, [R4,#0x38]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x38]
	ldr R0, [R4,#0x3C]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x3C]
	mov PC, LR
dword_8002188: .word 0xFF00FF00
	ldr R0, [R4]
	str R0, [R5,#0x1C]
	ldr R0, [R4,#4]
	str R0, [R5,#0x18]
	ldr R0, [R4,#8]
	str R0, [R5,#0x14]
	ldr R0, [R4,#0xC]
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x10]
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x14]
	str R0, [R5,#8]
	ldr R0, [R4,#0x18]
	str R0, [R5,#4]
	ldr R0, [R4,#0x1C]
	str R0, [R5]
	ldr R0, [R4,#0x20]
	str R0, [R5,#0x3C]
	ldr R0, [R4,#0x24]
	str R0, [R5,#0x38]
	ldr R0, [R4,#0x28]
	str R0, [R5,#0x34]
	ldr R0, [R4,#0x2C]
	str R0, [R5,#0x30]
	ldr R0, [R4,#0x30]
	str R0, [R5,#0x2C]
	ldr R0, [R4,#0x34]
	str R0, [R5,#0x28]
	ldr R0, [R4,#0x38]
	str R0, [R5,#0x24]
	ldr R0, [R4,#0x3C]
	str R0, [R5,#0x20]
	mov PC, LR
	ldr R0, [R4]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x1C]
	ldr R0, [R4,#4]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x18]
	ldr R0, [R4,#8]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x14]
	ldr R0, [R4,#0xC]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x10]
	ldr R0, [R4,#0x10]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0xC]
	ldr R0, [R4,#0x14]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#8]
	ldr R0, [R4,#0x18]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#4]
	ldr R0, [R4,#0x1C]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5]
	ldr R0, [R4,#0x20]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x3C]
	ldr R0, [R4,#0x24]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x38]
	ldr R0, [R4,#0x28]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x34]
	ldr R0, [R4,#0x2C]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x30]
	ldr R0, [R4,#0x30]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x2C]
	ldr R0, [R4,#0x34]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x28]
	ldr R0, [R4,#0x38]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x24]
	ldr R0, [R4,#0x3C]
	add r1, r0, #0
	and R0, R2
	and R1, R3
	lsr r0, r0, #8
	lsl r1, r1, #8
	orr R0, R1
	mov R1, #0x10
	ror R0, R1
	str R0, [R5,#0x20]
	mov PC, LR
.func
.thumb_func
sub_8002310:
	push {lr}
	push {r4,r7}
	ldr R1, [R0]
	lsl r1, r1, #1
	lsr r1, r1, #1
	ldrb R0, [R7,#0xC]
	ldrb R2, [R7,#0x16]
	ldrb R3, [R7,#1]
	ldr R4, [R7,#0x10]
	bl sub_8002378
	pop {r4,r7}
	pop {pc}
.endfunc // sub_8002310

.func
.thumb_func
sub_800232A:
	push {lr}
	ldr R0, [R0]
	cmp R0, #0
	blt locret_8002336
	bl sound_play // () -> void
locret_8002336:
	pop {pc}
.endfunc // sub_800232A

.func
.thumb_func
sub_8002338:
	push {lr}
	ldr R0, [R0]
	cmp R0, #0
	blt loc_8002348
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	b locret_8002352
loc_8002348:
	lsl r0, r0, #1
	lsr r0, r0, #1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
locret_8002352:
	pop {pc}
.endfunc // sub_8002338

.func
.thumb_func
sub_8002354:
	push {r5,lr}
	add r5, r0, #0
loc_8002358:
	ldr R0, [R5]
	cmp R0, #0
	blt locret_8002366
	bl sub_8001B1C
	add R5, #4
	b loc_8002358
locret_8002366:
	pop {r5,pc}
.endfunc // sub_8002354

.func
.thumb_func
sub_8002368:
	push {lr}
	// memBlock
	ldr R0, off_8002464 // =byte_20097A0 
	// size
	ldr R1, off_8002374 // =0x108 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_8002374: .word 0x108
.endfunc // sub_8002368

.func
.thumb_func
sub_8002378:
	push {R5-R7,lr}
	ldr R7, off_8002464 // =byte_20097A0 
	mov R6, #0xC
	mul R3, R6
	add r7, r7, r3
	mov R3, #0
	tst R1, R1
	beq loc_8002396
	tst R2, R2
	beq loc_8002396
	strb R0, [R7,#1]
	str R1, [R7,#4]
	strb R2, [R7,#2]
	mov R3, #1
	str R4, [R7,#8]
loc_8002396:
	strb R3, [R7]
	pop {R5-R7,pc}
.endfunc // sub_8002378

.func
.thumb_func
sub_800239A:
	ldr R2, off_8002464 // =byte_20097A0 
	mov R1, #0xC
	mul R0, R1
	add r2, r2, r0
	mov R0, #0
	strb R0, [R2]
	mov PC, LR
.endfunc // sub_800239A

.func
.thumb_func
sub_80023A8:
	push {lr}
	// memBlock
	ldr R0, off_8002464 // =byte_20097A0 
	// size
	ldr R1, off_80023B4 // =0xD8 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_80023B4: .word 0xD8
.endfunc // sub_80023A8

	ldr R2, off_8002464 // =byte_20097A0 
	mov R1, #0xC
	mul R1, R0
	add r2, r2, r1
	ldrb R0, [R2]
	tst R0, R0
	mov PC, LR
	ldr R2, off_8002464 // =byte_20097A0 
	ldr R3, off_80023DC // =0x108 
loc_80023CA:
	ldrb R0, [R2]
	tst R0, R0
	bne locret_80023D8
	add R2, #0xC
	cmp R2, R3
	blt loc_80023CA
	mov R0, #0
locret_80023D8:
	mov PC, LR
	.balign 4, 0x00
off_80023DC: .word 0x108
getPalleteAndTransition_80023E0:
	push {R5-R7,lr}
	ldr R0, off_800243C // =byte_3001960 
	ldr R1, off_8002440 // =unk_3001B60 
	mov r2, #0x20 
	lsl r2, r2, #4
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	ldr R0, off_8002444 // =byte_3001550 
	ldr R1, off_8002448 // =byte_3001750 
	mov r2, #0x20 
	lsl r2, r2, #4
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	ldr R5, off_8002464 // =byte_20097A0 
loc_80023FC:
	ldrb R0, [R5]
	tst R0, R0
	beq loc_8002428
	ldr R0, [R5,#0x4] // (dword_20097A4 - 0x20097A0)
	ldrb R2, [R5,#0x1] // (byte_20097A1 - 0x20097A0)
	ldrb R6, [R5,#0x2] // (byte_20097A2 - 0x20097A0)
	ldr R7, [R5,#0x8] // (dword_20097A8 - 0x20097A0)
	cmp R7, #6
	bge loc_800241E
	ldr R6, off_8002438 // =unk_200F388 
	add r7, r7, r6
	ldrb R1, [R7]
	ldrb R6, [R7,#1]
	sub r6, r6, r1
	ldr R7, off_8002448 // =byte_3001750 
	lsl r1, r1, #5
	add r7, r7, r1
loc_800241E:
	lsl r6, r6, #5
	ldr R3, off_800244C // =dword_8002450 
	ldr R3, [R3,R2]
	mov LR, PC
	bx r3
loc_8002428:
	add R5, #0xC
	ldr R6, off_8002464 // =byte_20097A0 
	ldr R0, off_8002460 // =0x108 
	add r6, r6, r0
	cmp R5, R6
	blt loc_80023FC
	pop {R5-R7,pc}
	.balign 4, 0x00
off_8002438: .word unk_200F388
off_800243C: .word byte_3001960
off_8002440: .word unk_3001B60
off_8002444: .word byte_3001550
off_8002448: .word byte_3001750
off_800244C: .word dword_8002450
dword_8002450: .word 0x3005EF1, 0x3005EF1, 0x3005F79, 0x3005F79
off_8002460: .word 0x108
off_8002464: .word byte_20097A0
.func
.thumb_func
sub_8002468:
	push {R4-R7,lr}
	ldr R5, off_80024C8 // =byte_200A6A0 
	push {R0-R2}
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x50 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R0-R2}
	str R0, [R5,#0x4] // (dword_200A6A4 - 0x200A6A0)
	str R1, [R5,#0x8] // (dword_200A6A8 - 0x200A6A0)
	str R2, [R5,#0xC] // (dword_200A6AC - 0x200A6A0)
	mov R0, #1
	strb R0, [R5]
	pop {R4-R7,pc}
.endfunc // sub_8002468

.func
.thumb_func
sub_8002484:
	push {R4-R7,lr}
	ldr R5, off_80024C8 // =byte_200A6A0 
	ldrb R0, [R5]
	tst R0, R0
	beq loc_8002498
	ldr R0, [R5,#0x8] // (dword_200A6A8 - 0x200A6A0)
	tst R0, R0
	beq loc_8002498
	mov LR, PC
	bx r0
loc_8002498:
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x50 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R4-R7,pc}
.endfunc // sub_8002484

.func
.thumb_func
sub_80024A2:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_80024C8 // =byte_200A6A0 
	// size
	mov r1, #0x50 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R4-R7,pc}
.endfunc // sub_80024A2

.func
.thumb_func
sub_80024AE:
	push {R4-R7,lr}
	ldr R5, off_80024C8 // =byte_200A6A0 
	ldrb R0, [R5]
	tst R0, R0
	beq locret_80024BE
	ldr R0, [R5,#0x4] // (dword_200A6A4 - 0x200A6A0)
	mov LR, PC
	bx r0
locret_80024BE:
	pop {R4-R7,pc}
.endfunc // sub_80024AE

.func
.thumb_func
sub_80024C0:
	ldr R1, off_80024C8 // =byte_200A6A0 
	ldrb R0, [R1]
	tst R0, R0
	mov PC, LR
off_80024C8: .word byte_200A6A0
.endfunc // sub_80024C0

.func
.thumb_func
sub_80024CC:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	push {r4,r5}
	mov R4, #4
	b loc_80024E2
loc_80024D8:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	push {r4,r5}
	mov R4, #0
loc_80024E2:
	ldr R6, off_80025C0 // =dword_80025C4 
	add r6, r6, r4
	mov R8, R6
	mov R9, R1
	add r4, r2, #0
	mov R6, #1
	tst R2, R6
	beq loc_80024F4
	add R2, #1
loc_80024F4:
	lsr r7, r2, #1
	add r5, r3, #0
	tst R3, R6
	beq loc_80024FE
	add R3, #1
loc_80024FE:
	lsr r6, r3, #1
	bl sub_8003694
	push {r0,r1}
	sub r0, #0x78 
	sub r1, #0x50 
	neg R0, R0
	neg R1, R1
	mov R2, #0xF0
	sub r2, r2, r4
	lsr r2, r2, #1
	sub r0, r0, r2
	mov R2, #0xA0
	sub r2, r2, r5
	lsr r2, r2, #1
	sub r1, r1, r2
	mov R2, R10
	ldr R2, [R2,#8]
	mov R3, R8
	ldrb R3, [R3]
	strh R0, [R2,R3]
	mov R3, R8
	ldrb R3, [R3,#0x1] // (byte_80025C9 - 0x80025C8)
	strh R1, [R2,R3]
	mov R2, R8
	// cpyOff
	ldrb R2, [R2,#0x2] // (byte_80025CA - 0x80025C8)
	// tileRefs
	mov R3, R9
	lsr r4, r4, #3
	// j
	mov R0, #0
	// i
	mov R1, #0
	lsr r5, r5, #3
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r0,r1}
	mov R5, R10
	ldr R5, [R5,#0x1C]
	cmp R0, R7
	bge loc_800254E
	mov R2, #0
	b loc_800255E
loc_800254E:
	mov R4, #0xF0
	add r4, r4, r7
	cmp R0, R4
	ble loc_800255A
	mov R2, #0xF0
	b loc_800255E
loc_800255A:
	add r4, r7, #0
	sub r2, r0, r4
loc_800255E:
	strb R2, [R5,#3]
	add r4, r7, #0
	neg R4, R4
	cmp R0, R4
	bge loc_800256C
	mov R2, #0
	b loc_800257C
loc_800256C:
	mov R3, #0xF0
	sub r3, r3, r7
	cmp R0, R3
	ble loc_8002578
	mov R2, #0xF0
	b loc_800257C
loc_8002578:
	add r4, r7, #0
	add r2, r0, r4
loc_800257C:
	strb R2, [R5,#2]
	mov R4, #0xA0
	add r4, r4, r6
	cmp R1, R6
	bge loc_800258A
	mov R2, #0
	b loc_8002596
loc_800258A:
	cmp R1, R4
	ble loc_8002592
	mov R2, #0xA0
	b loc_8002596
loc_8002592:
	add r4, r6, #0
	sub r2, r1, r4
loc_8002596:
	strb R2, [R5,#7]
	add r4, r6, #0
	neg R4, R4
	cmp R1, R4
	bge loc_80025A4
	mov R2, #0
	b loc_80025B4
loc_80025A4:
	mov R3, #0xA0
	sub r3, r3, r6
	cmp R1, R3
	ble loc_80025B0
	mov R2, #0xA0
	b loc_80025B4
loc_80025B0:
	add r4, r6, #0
	add r2, r1, r4
loc_80025B4:
	strb R2, [R5,#6]
	pop {r4,r5}
	mov R8, R4
	mov R9, R5
	pop {R4-R7,pc}
	.byte 0, 0
off_80025C0: .word dword_80025C4
dword_80025C4: .word 0xFF031A18
byte_80025C8: .byte 0x14
byte_80025C9: .byte 0x16
byte_80025CA: .byte 0x2
	.byte 0xFF
dword_80025CC: .word 0x7FFF0000, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF
	.word 0x7FFF7FFF, 0x7FFF7FFF, 0x7FFF7FFF, 0x0, 0x0
	.word 0x0, 0x0, 0x0, 0x0, 0x0
	.word 0x0
.endfunc // sub_80024CC

.func
.thumb_func
sub_800260C:
	push {r4,lr}
	ldr R0, dword_800263C // =0x7000000 
	ldr R1, off_8002640 // =0x400 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, dword_8002644 // =0x6010000 
	ldr R1, dword_8002648 // =0x8000 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	bl sub_8002668
	bl sub_8003534
	bl sub_800355C
	bl sub_8003566
	bl sprite_handleObjSprites_800289C
	ldr R0, off_800264C // =unk_200F388 
	mov R1, #7
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {r4,pc}
dword_800263C: .word 0x7000000
off_8002640: .word 0x400
dword_8002644: .word 0x6010000
dword_8002648: .word 0x8000
off_800264C: .word unk_200F388
.endfunc // sub_800260C

.func
.thumb_func
renderPalletesAndObjs_8002650:
	push {lr}
	ldr R0, off_8002660 // =byte_3001750 
	ldr R1, dword_8002664 // =0x5000200 
	mov r2, #0x20 
	lsl r2, r2, #4
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8002660: .word byte_3001750
dword_8002664: .word 0x5000200
.endfunc // renderPalletesAndObjs_8002650

.func
.thumb_func
sub_8002668:
	push {lr}
	ldr R0, off_800268C // =dword_86A5500 
	ldr R1, off_8002690 // =byte_3001710 
	mov r2, #0x20 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	b loc_8002678
loc_8002676:
	push {lr}
loc_8002678:
	ldr R0, off_8002684 // =dword_80025CC 
	ldr R1, off_8002688 // =byte_3001730 
	mov r2, #0x20 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
off_8002684: .word dword_80025CC
off_8002688: .word byte_3001730
off_800268C: .word dword_86A5500
off_8002690: .word byte_3001710
.endfunc // sub_8002668

.func
.thumb_func
sub_8002694:
	push {lr}
	ldr R2, off_80026A0 // =loc_3006440+1 
	mov LR, PC
	bx r2
	pop {pc}
	.byte 0, 0
off_80026A0: .word loc_3006440+1
.endfunc // sub_8002694

/*For debugging purposes, connect comment at any range!*/
