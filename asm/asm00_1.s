.include "asm/asm00_1.inc"

.func
.thumb_func
sub_8002DC8:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb R0, [R3,#0x15]
	mov R1, #0xF0
	and R1, R0
	mov PC, LR
.endfunc // sub_8002DC8

.func
.thumb_func
sub_8002DD8:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#0x15]
	mov R1, #0xF0
	bic R0, R1
	strb R0, [R3,#0x15]
	mov PC, LR
.endfunc // sub_8002DD8

.func
.thumb_func
sub_8002DEA:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#2]
	ldrb R1, [R3,#1]
	cmp R1, #0
	beq loc_8002DFE
	mov R1, #0xC0
	bic R0, R1
loc_8002DFE:
	ldrb R1, [R3]
	ldrb R2, [R3]
	mov PC, LR
.endfunc // sub_8002DEA

.func
.thumb_func
sub_8002E04:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#3]
	mov R1, #8
	and R0, R1
	mov PC, LR
.endfunc // sub_8002E04

.func
.thumb_func
sub_8002E14:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R2, #0xC
	ldrb R1, [R3,#0x15]
	bic R1, R2
	lsl r0, r0, #2
	orr R1, R0
	strb R1, [R3,#0x15]
	mov PC, LR
.endfunc // sub_8002E14

.func
.thumb_func
sub_8002E2A:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R1, #0xC
	ldrb R0, [R3,#0x15]
	and R0, R1
	lsr r0, r0, #2
	mov PC, LR
.endfunc // sub_8002E2A

.func
.thumb_func
sub_8002E3C:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#3]
	mov R1, #1
	orr R0, R1
	mov R1, #4
	bic R0, R1
	strb R0, [R3,#3]
	mov PC, LR
.endfunc // sub_8002E3C

.func
.thumb_func
sub_8002E52:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#3]
	mov R1, #1
	bic R0, R1
	mov R1, #4
	bic R0, R1
	strb R0, [R3,#3]
	mov PC, LR
.endfunc // sub_8002E52

.func
.thumb_func
sub_8002E68:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldr R0, [R3,#0x1C]
	ldr R0, [R0]
	ldr R1, [R3,#0x18]
	add r0, r0, r1
	ldr R0, [R0]
	lsr r0, r0, #5
	mov PC, LR
.endfunc // sub_8002E68

.func
.thumb_func
sub_8002E7E:
	ldrb R0, [R5]
	tst R0, R0
	beq loc_8002EA4
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R2, #0xC
	ldrsh R1, [R3,R2]
	mov R2, #0xE
	ldrsb R2, [R3,R2]
	mov R0, #0x10
	lsl r0, r0, #4
	add R0, #0xFF
	and R1, R0
	mov R0, #0xFF
	and R2, R0
	mov R0, #1
	mov PC, LR
loc_8002EA4:
	mov R0, #0
	mov R1, #0
	mov R2, #0
	mov PC, LR
.endfunc // sub_8002E7E

.func
.thumb_func
sub_8002EAC:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#0x16]
	mov R1, #2
	orr R0, R1
	strb R0, [R3,#0x16]
	mov PC, LR
.endfunc // sub_8002EAC

.func
.thumb_func
sub_8002EBE:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#0x16]
	mov R1, #2
	bic R0, R1
	strb R0, [R3,#0x16]
	mov PC, LR
.endfunc // sub_8002EBE

.func
.thumb_func
sub_8002ED0:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strh R0, [R3,#6]
	mov PC, LR
.endfunc // sub_8002ED0

.func
.thumb_func
sub_8002EDC:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrh R0, [R3,#6]
	mov PC, LR
.endfunc // sub_8002EDC

.func
.thumb_func
sub_8002EE8:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R0, #0
	strh R0, [R3,#6]
	mov PC, LR
.endfunc // sub_8002EE8

.func
.thumb_func
sub_8002EF6:
	lsl r1, r1, #4
	orr R0, R1
	mov R2, #0x10
	b loc_8002F06
	mov R2, #0x10
	b loc_8002F06
loc_8002F02:
	tst R2, R2
	beq sub_8002F2C
loc_8002F06:
	tst R0, R0
	beq sub_8002F2C
	lsl r0, r0, #8
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x11]
	orr R1, R2
	strb R1, [R3,#0x11]
	mov R3, R10
	ldr R3, [R3,#8]
	ldrh R1, [R3,#2]
	mov R2, #0xFF
	lsl r2, r2, #8
	bic R1, R2
	orr R1, R0
	strh R1, [R3,#2]
	mov PC, LR
.endfunc // sub_8002EF6

.func
.thumb_func
sub_8002F2C:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x11]
	mov R0, #0x10
	bic R1, R0
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_8002F2C

.func
.thumb_func
sub_8002F3E:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb R0, [R3,#0x11]
	mov R2, #0x10
	and R2, R0
	mov R3, R10
	ldr R3, [R3,#8]
	ldrh R0, [R3,#2]
	mov R1, #0xFF
	bic R0, R1
	lsr r0, r0, #8
	mov PC, LR
	.hword 0x2000
.endfunc // sub_8002F3E

.func
.thumb_func
sub_8002F5C:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R2, [R3,#0x13]
	mov r1, #0x30
	bic R2, R1
	lsl r0, r0, #4
	orr R2, R0
	strb R2, [R3,#0x13]
	and R2, R1
	ldrb R1, [R3,#0x16]
	mov r0, #0x30
	bic R1, R0
	orr R1, R2
	strb R1, [R3,#0x16]
	mov PC, LR
.endfunc // sub_8002F5C

.func
.thumb_func
sub_8002F7E:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb R0, [R3,#0x16]
	mov r1, #0x30
	and R0, R1
	lsr r0, r0, #4
	mov PC, LR
.endfunc // sub_8002F7E

.func
.thumb_func
// () -> void
sub_8002F90:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#3]
	mov R1, #4
	orr R0, R1
	mov R1, #1
	bic R0, R1
	strb R0, [R3,#3]
	mov PC, LR
.endfunc // sub_8002F90

.func
.thumb_func
sub_8002FA6:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	str R0, [R3,#0x2C]
	mov PC, LR
.endfunc // sub_8002FA6

.func
.thumb_func
sub_8002FB2:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldr R0, [R3,#0x2C]
	mov PC, LR
.endfunc // sub_8002FB2

.func
.thumb_func
sub_8002FBE:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R1, #0x80
	lsl r1, r1, #0x18
	lsr R1, R0
	ldr R0, [R3,#0x2C]
	orr R0, R1
	str R0, [R3,#0x2C]
	mov PC, LR
.endfunc // sub_8002FBE

.func
.thumb_func
sub_8002FD4:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R1, #0x80
	lsl r1, r1, #0x18
	lsr R1, R0
	ldr R0, [R3,#0x2C]
	bic R0, R1
	str R0, [R3,#0x2C]
	mov PC, LR
.endfunc // sub_8002FD4

	mov R0, #0
.func
.thumb_func
sub_8002FEC:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	str R0, [R3,#0x30]
	mov PC, LR
.endfunc // sub_8002FEC

	mov R0, #0
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	str R0, [R3,#0x34]
	mov PC, LR
.func
.thumb_func
sub_8003006:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#3]
	mov r1, #0x20
	orr R0, R1
	strb R0, [R3,#3]
	mov PC, LR
.endfunc // sub_8003006

.func
.thumb_func
sub_8003018:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#3]
	mov r1, #0x20
	bic R0, R1
	strb R0, [R3,#3]
	mov PC, LR
.endfunc // sub_8003018

.func
.thumb_func
sub_800302A:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x16]
	mov R2, #0xC
	bic R1, R2
	mov R2, #2
	lsl R0, R2
	orr R1, R0
	strb R1, [R3,#0x16]
	ldrb R0, [R3,#3]
	mov r1, #0x40
	orr R0, R1
	strb R0, [R3,#3]
	mov PC, LR
.endfunc // sub_800302A

.func
.thumb_func
sub_800304A:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x15]
	mov R2, #0xF0
	bic R1, R2
	lsl r0, r0, #4
	orr R1, R0
	strb R1, [R3,#0x15]
	mov PC, LR
.endfunc // sub_800304A

.func
.thumb_func
sub_8003060:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb R0, [R3,#0xA]
	mov PC, LR
.endfunc // sub_8003060

.func
.thumb_func
sub_800306C:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strh R0, [R3,#8]
	mov R0, #0
	str R0, [R3,#0x24]
	mov PC, LR
.endfunc // sub_800306C

.func
.thumb_func
sub_800307C:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strh R0, [R3,#0xC]
	strh R1, [R3,#0xE]
	mov PC, LR
.endfunc // sub_800307C

.func
.thumb_func
sub_800308A:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R2, #0xC
	ldrsh R2, [R3,R2]
	add r0, r0, r2
	mov R2, #0xC
	strh R0, [R3,R2]
	mov R2, #0xE
	ldrsh R2, [R3,R2]
	add r1, r1, r2
	mov R2, #0xE
	strh R1, [R3,R2]
	mov PC, LR
.endfunc // sub_800308A

.func
.thumb_func
sub_80030A8:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov R0, #0xC
	ldrsh R0, [R3,R0]
	mov R1, #0xE
	ldrsh R1, [R3,R1]
	mov PC, LR
.endfunc // sub_80030A8

.func
.thumb_func
sub_80030BA:
	push {R4-R7,lr}
	add r5, r0, #0
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	ldr R3, [R5,#0x20]
	ldrb R2, [R3]
	lsl r2, r2, #2
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#0xC]
	ldr R3, [R5,#0x18]
	add r3, r3, r0
	ldr R2, [R3,R2]
	add r2, r2, r3
	mov R4, #0
loc_80030DA:
	ldrb R3, [R2]
	cmp R3, #0xFF
	beq loc_80030F4
	cmp R4, R1
	beq loc_80030EA
	add R4, #1
	add R2, #5
	b loc_80030DA
loc_80030EA:
	mov R0, #1
	ldrsb R0, [R2,R0]
	mov R1, #2
	ldrsb R1, [R2,R1]
	pop {R4-R7,pc}
loc_80030F4:
	mov R0, #0
	mov R1, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
jt_80030FC: .word sub_8003B4C+1
	.word object_spawnType1+1
	.word sub_80045C0+1
	.word object_spawnType3+1
	.word object_spawnType4+1
	.word sub_80047E0+1
off_8003114: .word sub_8003B86+1
	.word object_freeMemory+1
	.word sub_8004602+1
	.word object_freeMemory+1
	.word object_freeMemory+1
	.word sub_80048B2+1
off_800312C: .word eOWPlayerObject
	.word eBattleObjectPlayerFlags
	.word eOverworldNPCObjects
	.word byte_203CFE0
	.word unk_2036870
	.word byte_2011EE0
off_8003144: .word dword_2009F34
	.word unk_2034000
	.word map_activeNPCs
	.word unk_2034F54
	.word unk_2036710
	.word unk_2011E50
byte_800315C: .byte 0xC8, 0x0, 0x0, 0x0, 0xD8, 0x0, 0x0, 0x0, 0xD8, 0x0, 0x0, 0x0, 0xD8
	.byte 0x0, 0x0, 0x0, 0xC8, 0x0, 0x0, 0x0, 0x78, 0x0, 0x0, 0x0
byte_8003174: .byte 0x1, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0x20, 0x0
	.byte 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x38, 0x0, 0x0, 0x0
.endfunc // sub_80030BA

.func
.thumb_func
sub_800318C:
	ldr R0, off_80031A4 // =dword_2009380
	ldr R1, off_80031A8 // =dword_2009AB0
	ldr R2, off_80031A0 // =dword_200AF70
	mov R3, #0
	str R3, [R2]
	str R3, [R0]
	str R1, [R0,#0x4] // (dword_2009384 - 0x2009380)
	str R0, [R1]
	str R3, [R1,#0x4] // (dword_2009AB4 - 0x2009AB0)
	mov PC, LR
off_80031A0: .word dword_200AF70
off_80031A4: .word dword_2009380
off_80031A8: .word dword_2009AB0
.endfunc // sub_800318C

.func
.thumb_func
sub_80031AC:
	push {R4-R7,lr}
	sub sp, sp, #0x10
	bl sub_800371A
	mov R0, #0
	str R0, [SP]
	ldr R7, off_8003214 // =dword_2009380
loc_80031BA:
	ldr R7, [R7,#4] // linked list
	ldr R0, off_8003218 // =dword_2009AB0
	cmp R7, R0
	beq loc_8003208
	ldr R0, off_8003234 // =dword_200AF70
	str R7, [R0]
	mov R5, #0x10
	add r5, r5, r7
	ldrb R4, [R5]
	mov R6, R10
	ldr R6, [R6,#0x3C]
	ldrb R0, [R6,#0xA]
	tst R0, R0
	beq loc_80031DC
	mov R0, #4
	tst R4, R0
	beq loc_8003202
loc_80031DC:
	bl battle_isTimeStop
	beq loc_80031E8
	mov R0, #0x10
	tst R4, R0
	beq loc_8003202
loc_80031E8:
	ldrb R0, [R5,#2]
	mov R1, #0xF
	and R0, R1
	lsl r0, r0, #2
	ldr R1, off_800321C // =dword_8003220
	ldr R0, [R0,R1]
	ldrb R1, [R5,#1]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	push {r7}
	mov LR, PC
	bx r0
	pop {r7}
loc_8003202:
	bl sub_800372A
	b loc_80031BA
loc_8003208:
	mov R0, #0
	ldr R1, off_8003234 // =dword_200AF70
	str R0, [R1]
	add sp, sp, #0x10
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8003214: .word dword_2009380
off_8003218: .word dword_2009AB0
off_800321C: .word dword_8003220
dword_8003220: .word 0x0
	.word off_8003C9C
	.word 0x0
	.word off_8003EC4
	.word off_80042C8
off_8003234: .word dword_200AF70
	.word off_800323C
off_800323C: .word word_8003250
	.word word_8003258
	.word word_8003260
	.word word_8003268
	.word word_8003270
word_8003250: .hword 0x1B
	.asciz "P%02x"
word_8003258: .hword 0x1B
	.asciz "E%02x"
word_8003260: .hword 0x1B
	.asciz "M%02x"
word_8003268: .hword 0x1B
	.asciz "S%02x"
word_8003270: .hword 0x1B
	.asciz "F%02x"
.endfunc // sub_80031AC

.func
.thumb_func
sub_8003278:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R1, [SP]
	mov R1, #0xF
	and R0, R1
	lsl r0, r0, #4
	ldr R1, off_80032CC // =dword_80032D0
	add r7, r0, r1
	ldr R1, [R7]
	mov R2, #1
	lsl r2, r2, #0x1f
	ldr R3, [R7,#8]
	ldrb R4, [R7,#0xC]
	ldr R5, [R7,#4]
	ldr R6, [R1]
loc_8003296:
	tst R6, R2
	beq loc_80032A6
	lsr r2, r2, #1
	add r5, r5, r4
	cmp R5, R3
	blt loc_8003296
	mov R5, #0
	b loc_80032C8
loc_80032A6:
	orr R6, R2
	str R6, [R1]
	add R5, #0x10
	mov R0, #4
	// memBlock
	add r0, r0, r5
	// size
	ldrb R1, [R7,#0xD]
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldrb R0, [R7,#0xE]
	strb R0, [R5]
	ldr R7, [SP]
	ldmia R7!, {R0-R4}
	strb R0, [R5,#1]
	str R1, [R5,#0x34]
	str R2, [R5,#0x38]
	str R3, [R5,#0x3C]
	str R4, [R5,#4]
loc_80032C8:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
off_80032CC: .word dword_80032D0
dword_80032D0: .word 0x0, 0x0, 0x0, 0x0
	.word unk_2034000
	.word unk_203A9A0
	.word byte_203C4A0
	.word 0x198CD8, 0x0, 0x0, 0x0, 0x0
	.word unk_2034F54
	.word byte_203CFD0
	.word dword_203EAD0
	.word 0x98CD8
	.word unk_2036710
	.word unk_2036860
	.word unk_2038160
	.word 0x197CC8
.endfunc // sub_8003278

.func
.thumb_func
object_spawnType1:
	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #1
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_8003338
	bl sub_8003400
loc_8003338:
	add sp, sp, #0x14
	pop {r7,pc}
.endfunc // object_spawnType1

	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #1
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_8003354
	bl sub_8003428
loc_8003354:
	add sp, sp, #0x14
	pop {r7,pc}
.func
.thumb_func
object_spawnType3:
	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #3
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_8003370
	bl sub_8003400
loc_8003370:
	add sp, sp, #0x14
	pop {r7,pc}
.endfunc // object_spawnType3

.func
.thumb_func
sub_8003374:
	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #3
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_800338C
	bl sub_8003428
loc_800338C:
	add sp, sp, #0x14
	pop {r7,pc}
.endfunc // sub_8003374

	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #3
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_80033A8
	bl sub_8003440
loc_80033A8:
	add sp, sp, #0x14
	pop {r7,pc}
.func
.thumb_func
object_spawnType4:
	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #4
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_80033C4
	bl sub_8003400
loc_80033C4:
	add sp, sp, #0x14
	pop {r7,pc}
.endfunc // object_spawnType4

	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #4
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_80033E0
	bl sub_8003428
loc_80033E0:
	add sp, sp, #0x14
	pop {r7,pc}
.func
.thumb_func
sub_80033E4:
	push {r7,lr}
	sub sp, sp, #0x14
	mov R7, SP
	stmia R7!, {R0-R4}
	mov R0, #4
	mov R1, SP
	bl sub_8003278
	tst R5, R5
	beq loc_80033FC
	bl sub_8003440
loc_80033FC:
	add sp, sp, #0x14
	pop {r7,pc}
.endfunc // sub_80033E4

.func
.thumb_func
sub_8003400:
	push {lr}
	mov R0, #0x10
	sub r0, r5, r0
	ldr R1, off_8003424 // =dword_200AF70
	ldr R1, [R1]
	cmp R0, R1
	beq loc_800341E
	tst R1, R1
	beq loc_800341E
	str R1, [R0]
	ldr R2, [R1,#4]
	str R0, [R1,#4]
	str R2, [R0,#4]
	str R0, [R2]
	b locret_8003422
loc_800341E:
	bl sub_8003428
locret_8003422:
	pop {pc}
off_8003424: .word dword_200AF70
.endfunc // sub_8003400

.func
.thumb_func
sub_8003428:
	mov R0, #0x10
	sub r0, r5, r0
	ldr R1, off_800343C // =dword_2009AB0
	ldr R2, [R1]
	str R0, [R2,#4]
	str R2, [R0]
	str R1, [R0,#4]
	str R0, [R1]
	mov PC, LR
	.balign 4, 0x00
off_800343C: .word dword_2009AB0
.endfunc // sub_8003428

.func
.thumb_func
sub_8003440:
	mov R0, #0x10
	sub r0, r5, r0
	ldr R1, off_8003454 // =dword_2009380
	ldr R2, [R1,#0x4] // (dword_2009384 - 0x2009380)
	str R0, [R1,#0x4] // (dword_2009384 - 0x2009380)
	str R2, [R0,#4]
	str R1, [R0]
	str R0, [R2]
	mov PC, LR
	.balign 4, 0x00
off_8003454: .word dword_2009380
.endfunc // sub_8003440

.func
.thumb_func
object_freeMemory:
	push {r5,lr}
	mov R1, #0
	strb R1, [R5]
	ldrb R1, [R5,#2]
	mov R2, #0xF
	and R1, R2
	lsl r1, r1, #2
	ldr R2, off_800348C // =off_8003144
	ldr R1, [R2,R1]
	ldrb R2, [R5,#3]
	mov R3, #1
	lsl r3, r3, #0x1f
	lsr R3, R2
	ldr R2, [R1]
	bic R2, R3
	str R2, [R1]
	mov R0, #0x10
	sub r0, r5, r0
	ldr R1, [R0]
	ldr R2, [R0,#4]
	str R2, [R1,#4]
	str R1, [R2]
	bl sprite_makeUnscalable
	pop {r5,pc}
	.balign 4, 0x00
off_800348C: .word off_8003144
.endfunc // object_freeMemory

.func
.thumb_func
sub_8003490:
	push {r4,r7,lr}
	ldr R7, off_80034CC // =off_80034D0
	lsl r1, r0, #4
	add r7, r7, r1 // StructInitializationTable + r0 * 16
	lsl r1, r0, #2
	ldr R4, off_8003530 // =off_8003144
	// memBlock
	ldr R0, [R4,R1] // r0 = [off_8003144 + r0 * 4]
	ldrb R1, [R7,#0xC] // r1 = StructInitializationTable[r0] + 0xc
	add R1, #0x1F
	lsr r1, r1, #5
	lsl r1, r1, #2
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	ldr R0, [R7]
	// size
	ldrh R1, [R7,#8]
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R0, [R7,#4]
	mov R1, #0
	ldrb R2, [R7,#0xA]
	ldrb R3, [R7,#0xC]
	ldrb R4, [R7,#0xB]
loc_80034BC:
	strb R2, [R0,#2]
	strb R1, [R0,#3]
	add r0, r0, r4
	add R1, #1
	cmp R1, R3
	blt loc_80034BC
	pop {r4,r7,pc}
	.balign 4, 0x00
off_80034CC: .word off_80034D0
off_80034D0:
	// word 1 is part of a linked list?
	// word 2 is the actual list of structs
	// byte 1 is struct offset part 2?
	// apparently there's hypothetical support for 32 enemies, but unk_203A9A0 only supports 4 pointers
	// maybe for virus battler?
	//
	// OWPlayer struct
	.word eOWPlayerObject, eOWPlayerObject
	.hword 0xC8
	.byte 0x90
	.byte 0xC8, 0x1
	.byte  0
	.byte  0
	.byte  0
	// apparently there's hypothetical support for 32 enemies, but unk_203A9A0 only supports 4 pointers
	// maybe for virus battler?
	.word unk_203A9A0
	.word eBattleObjectPlayerFlags
	.hword NUM_BATTLE_OBJECTS * oBattleObjectSize
	.byte 0x91
	.byte 0xD8, 0x20
	.byte  0
	.byte  0
	.byte  0
	.word eOverworldNPCObjects
	.word eOverworldNPCObjects
	.word 0xD8A20D80
	.word 0x10
	.word byte_203CFD0
	.word byte_203CFE0
	.word 0xD8931B00
	.word 0x20
	.word unk_2036860
	.word unk_2036870
	.word 0xC8841900
	.word 0x20
	.word byte_2011EE0
	.word byte_2011EE0
	.word 0x78451A40
	.word 0x38
off_8003530: .word off_8003144
.endfunc // sub_8003490

.func
.thumb_func
sub_8003534:
	push {lr}
	mov R0, #0
	bl sub_8003490
	pop {pc}
.endfunc // sub_8003534

.func
.thumb_func
sub_800353E:
	push {lr}
	mov R0, #1
	bl sub_8003490
	pop {pc}
.endfunc // sub_800353E

.func
.thumb_func
sub_8003548:
	push {lr}
	mov R0, #3
	bl sub_8003490
	pop {pc}
.endfunc // sub_8003548

.func
.thumb_func
sub_8003552:
	push {lr}
	mov R0, #4
	bl sub_8003490
	pop {pc}
.endfunc // sub_8003552

.func
.thumb_func
sub_800355C:
	push {lr}
	mov R0, #2
	bl sub_8003490
	pop {pc}
.endfunc // sub_800355C

.func
.thumb_func
sub_8003566:
	push {lr}
	mov R0, #5
	bl sub_8003490
	pop {pc}
.endfunc // sub_8003566

.func
.thumb_func
sub_8003570:
	push {R4-R7,lr}
	add r7, r0, #0
	mov R4, #0
loc_8003576:
	ldr R0, off_800377C // =jt_80030FC
	ldrb R1, [R7]
	cmp R1, #0xFF
	beq loc_800359E
	lsl r1, r1, #2
	ldr R6, [R0,R1]
	push {r4,r7}
	ldrb R0, [R7,#1]
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	ldr R3, [R7,#0xC]
	ldr R4, [R7,#0x10]
	mov LR, PC
	bx r6
	pop {r4,r7}
	tst R5, R5
	beq loc_800359A
	add R4, #1
loc_800359A:
	add R7, #0x14
	b loc_8003576
loc_800359E:
	add r0, r4, #0
	pop {R4-R7,pc}
.endfunc // sub_8003570

.func
.thumb_func
sub_80035A2:
	push {R4-R7,lr}
	sub sp, sp, #0x18
	ldr R1, off_8003618 // =off_8003114
	ldr R2, off_800361C // =off_800312C
	ldr R3, off_8003620 // =off_8003144
	ldr R4, off_8003624 // =byte_800315C
	ldr R5, off_8003628 // =byte_8003174
loc_80035B0:
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	str R4, [SP,#0x10]
	str R5, [SP,#0x14]
	tst R0, R0
	beq loc_8003614
	mov R1, #1
	tst R0, R1
	beq loc_80035FA
	ldr R5, [SP,#8]
	ldr R5, [R5]
	mov R7, #0x80
	lsl r7, r7, #0x18
	mov R6, #0
loc_80035D0:
	ldr R0, [SP,#0xC]
	ldr R0, [R0]
	lsr r1, r6, #5
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	tst R0, R7
	beq loc_80035E6
	ldr R0, [SP,#4]
	ldr R0, [R0]
	mov LR, PC
	bx r0
loc_80035E6:
	mov R0, #1
	ror R7, R0
	ldr R0, [SP,#0x10]
	ldr R0, [R0]
	add r5, r5, r0
	add R6, #1
	ldr R0, [SP,#0x14]
	ldr R0, [R0]
	cmp R6, R0
	blt loc_80035D0
loc_80035FA:
	ldr R0, [SP]
	ldr R1, [SP,#4]
	ldr R2, [SP,#8]
	ldr R3, [SP,#0xC]
	ldr R4, [SP,#0x10]
	ldr R5, [SP,#0x14]
	lsr r0, r0, #1
	add R1, #4
	add R2, #4
	add R3, #4
	add R4, #4
	add R5, #4
	b loc_80035B0
loc_8003614:
	add sp, sp, #0x18
	pop {R4-R7,pc}
off_8003618: .word off_8003114
off_800361C: .word off_800312C
off_8003620: .word off_8003144
off_8003624: .word byte_800315C
off_8003628: .word byte_8003174
.endfunc // sub_80035A2

.func
.thumb_func
sub_800362C:
	push {R4-R7,lr}
	mov R3, R10
	ldr R3, [R3,#0xC]
	mov R2, #2
	ldrsh R1, [R0,R2]
	ldr R4, [R3,#0x3C]
	asr r4, r4, #0x10
	sub r1, r1, r4
	ldr R6, off_8003690 // =sCamera+76
	ldrb R6, [R6]
	tst R6, R6
	beq loc_8003646
	neg R1, R1
loc_8003646:
	add r1, #0x78
	mov R2, #6
	ldrsh R6, [R0,R2]
	ldr R4, [R3,#0x40]
	asr r4, r4, #0x10
	sub r6, r6, r4
	add r6, #0x50
	mov R2, #0xA
	ldrsh R4, [R0,R2]
	ldr R2, [R3,#0x44]
	asr r2, r2, #0x10
	sub r4, r4, r2
	sub r6, r6, r4
	mov r2, #0x20
	neg R2, R2
	cmp R1, R2
	blt loc_8003688
	mov R2, #0xF0
	add r2, #0x20
	cmp R1, R2
	bge loc_8003688
	mov r2, #0x20
	neg R2, R2
	cmp R6, R2
	blt loc_8003688
	mov R2, #0xA0
	add r2, #0x40
	cmp R6, R2
	bge loc_8003688
	add r0, r1, #0
	add r1, r6, #0
	mov R2, #1
	pop {R4-R7,pc}
loc_8003688:
	mov R0, #0xA0
	mov r1, #0x50
	mov R2, #0
	pop {R4-R7,pc}
off_8003690: .word sCamera+0x4C // sCamera.unk_4C
.endfunc // sub_800362C

.func
.thumb_func
sub_8003694:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	push {r4,r5}
	mov R3, R10
	ldr R3, [R3,#0xC]
	ldr R1, [R0]
	ldr R4, [R3,#0x3C]
	sub r1, r1, r4
	mov R8, R1
	ldr R6, [R0,#4]
	ldr R4, [R3,#0x40]
	sub r6, r6, r4
	add r1, r1, r6
	asr r1, r1, #0x10
	add r1, #0x78
	mov R2, R8
	sub r6, r6, r2
	asr r6, r6, #1
	add r7, r6, #0
	ldr R2, [R3,#0x44]
	mov R4, #0x80
	lsl r4, r4, #0x10
	add r2, r2, r4
	add r4, r2, r6
	asr r4, r4, #0x10
	mov R9, R4
	ldr R4, [R0,#8]
	sub r6, r6, r4
	ldr R2, [R3,#0x44]
	add r6, r6, r2
	asr r6, r6, #0x10
	add r6, #0x52
	mov r2, #0x20
	neg R2, R2
	cmp R1, R2
	blt loc_8003708
	mov R2, #0xF0
	add r2, #0x20
	cmp R1, R2
	bge loc_8003708
	mov r2, #0x20
	neg R2, R2
	cmp R6, R2
	blt loc_8003708
	mov R2, #0xA0
	add r2, #0x40
	cmp R6, R2
	bge loc_8003708
	add r0, r1, #0
	add r1, r6, #0
	mov R2, #1
	mov R3, R9
	add r3, #0x60
	pop {r4,r5}
	mov R8, R4
	mov R9, R5
	pop {R4-R7,pc}
loc_8003708:
	add r0, r1, #0
	add r1, r6, #0
	mov R2, #0
	mov R3, R9
	add r3, #0x60
	pop {r4,r5}
	mov R8, R4
	mov R9, R5
	pop {R4-R7,pc}
.endfunc // sub_8003694

.func
.thumb_func
sub_800371A:
	mov R0, #0
	ldr R1, off_8003780 // =byte_2036778
	strb R0, [R1]
	ldr R1, off_8003784 // =dword_203CA7C
	strb R0, [R1]
	ldr R1, off_8003788 // =byte_2036830
	strb R0, [R1]
	mov PC, LR
.endfunc // sub_800371A

.func
.thumb_func
sub_800372A:
	ldrb R0, [R5,#2]
	mov R1, #0xF
	and R0, R1
	lsl r0, r0, #3
	ldr R1, off_8003748 // =dword_800374C
	add r0, r0, r1
	ldr R1, [R0]
	ldr R2, [R0,#4]
	ldrb R0, [R2]
	lsl r3, r0, #2
	str R5, [R1,R3]
	add R0, #1
	strb R0, [R2]
	mov PC, LR
	.balign 4, 0x00
off_8003748: .word dword_800374C
dword_800374C: .word 0x0, 0x0
	.word dword_2039A10
	.word byte_2036778
	.word 0x0, 0x0
	.word dword_203A010
	.word dword_203CA7C
	.word byte_203F750
	.word byte_2036830
	.word 0x0, 0x0
off_800377C: .word jt_80030FC
off_8003780: .word byte_2036778
off_8003784: .word dword_203CA7C
off_8003788: .word byte_2036830
.endfunc // sub_800372A

.func
.thumb_func
sub_800378C:
	push {lr}
	// memBlock
	ldr R0, off_80037A0 // =unk_20081D0
	// size
	ldr R1, off_80037A4 // =0x280
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R0, off_80037A8 // =dword_200AC18
	mov R1, #0
	str R1, [R0]
	pop {pc}
	.balign 4, 0x00
off_80037A0: .word unk_20081D0
off_80037A4: .word 0x280
off_80037A8: .word dword_200AC18
.endfunc // sub_800378C

.func
.thumb_func
sub_80037AC:
	push {r7,lr}
	mov R7, #0x80
	lsl r7, r7, #8
	add r0, r0, r7
	lsr r0, r0, #0x10
	add r1, r1, r7
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	orr R1, R0
	add r2, r2, r7
	lsr r2, r2, #0x10
	lsl r3, r3, #0x10
	orr R2, R3
	ldr R7, off_80037EC // =dword_200AC18
	ldr R0, [R7]
	cmp r0, #0x20
	blt loc_80037D0
	pop {r7,pc}
loc_80037D0:
	mov R7, #0x14
	mul R7, R0
	ldr R0, off_80037F0 // =unk_20081D0
	add r7, r7, r0
	str R1, [R7]
	str R2, [R7,#4]
	str R4, [R7,#8]
	str R5, [R7,#0xC]
	str R6, [R7,#0x10]
	ldr R7, off_80037EC // =dword_200AC18
	ldr R0, [R7]
	add R0, #1
	str R0, [R7]
	pop {r7,pc}
off_80037EC: .word dword_200AC18
off_80037F0: .word unk_20081D0
.endfunc // sub_80037AC

.func
.thumb_func
sub_80037F4:
	push {r5,lr}
	ldr R0, off_8003884 // =dword_200AC18
	ldr R0, [R0]
	cmp R0, #1
	ble loc_800387C
	ldr R5, off_8003888 // =unk_20081D0
	mov R6, #0
loc_8003802:
	mov R0, #0x14
	mul R0, R6
	.hword 0x182B
	mov R7, #0
loc_800380A:
	cmp R6, R7
	beq loc_800386A
	mov R0, #0x14
	mul R0, R7
	add r4, r5, r0
	ldr R0, [R3,#0xC]
	ldr R1, [R4,#8]
	tst R0, R1
	beq loc_800386A
	add r0, r3, #0
	add r1, r4, #0
	push {R3-R7}
	bl sub_8003894
	pop {R3-R7}
	tst R0, R0
	beq loc_800386A
	push {r7}
	ldr R0, [R3,#0xC]
	ldr R1, [R4,#8]
	and R0, R1
	ldr R7, [R3,#0x10]
	ldr R1, [R7]
	orr R0, R1
	str R0, [R7]
	ldr R0, [R3,#8]
	ldr R1, dword_8003890 // =0x200000
	tst R0, R1
	beq loc_800385C
	push {R0-R2}
	ldr R0, off_800388C // =eOWPlayerObject
	ldrh R1, [R4]
	mov R2, #0x72 // (word_2009FB2 - 0x2009F40)
	strh R1, [R0,R2]
	ldrh R1, [R4,#2]
	mov R2, #0x74 // (word_2009FB4 - 0x2009F40)
	strh R1, [R0,R2]
	ldrh R1, [R4,#4]
	mov R2, #0x76 // (word_2009FB6 - 0x2009F40)
	strh R1, [R0,R2]
	pop {R0-R2}
loc_800385C:
	ldr R1, [R4,#0xC]
	and R0, R1
	ldr R7, [R4,#0x10]
	ldr R1, [R7]
	orr R0, R1
	str R0, [R7]
	pop {r7}
loc_800386A:
	add R7, #1
	ldr R0, off_8003884 // =dword_200AC18
	ldr R0, [R0]
	cmp R0, R7
	bgt loc_800380A
	add R6, #1
	cmp R0, R6
	beq loc_800387C
	b loc_8003802
loc_800387C:
	mov R0, #0
	ldr R1, off_8003884 // =dword_200AC18
	str R0, [R1]
	pop {r5,pc}
off_8003884: .word dword_200AC18
off_8003888: .word unk_20081D0
off_800388C: .word eOWPlayerObject
dword_8003890: .word 0x200000
.endfunc // sub_80037F4

.func
.thumb_func
sub_8003894:
	push {lr}
	mov R6, #0
	ldrsh R2, [R0,R6]
	ldrsh R3, [R1,R6]
	sub r2, r2, r3
	mov R6, #2
	ldrsh R3, [R0,R6]
	ldrsh R4, [R1,R6]
	sub r3, r3, r4
	add r5, r2, #0
	mul R2, R5
	add r5, r3, #0
	mul R3, R5
	add r2, r2, r3
	ldrb R3, [R0,#6]
	ldrb R4, [R1,#6]
	add r3, r3, r4
	add r4, r3, #0
	mul R3, R4
	cmp R2, R3
	blt loc_80038C2
	mov R0, #0
	pop {pc}
loc_80038C2:
	mov R6, #4
	ldrsh R2, [R0,R6]
	ldrsh R3, [R1,R6]
	cmp R2, R3
	blt loc_80038D8
	ldrb R4, [R1,#7]
	add r3, r3, r4
	cmp R2, R3
	ble loc_80038E4
	mov R0, #0
	pop {pc}
loc_80038D8:
	ldrb R4, [R0,#7]
	add r2, r2, r4
	cmp R3, R2
	ble loc_80038E4
	mov R0, #0
	pop {pc}
loc_80038E4:
	mov R0, #1
	pop {pc}
jt_80038E8: .word sub_8142248+1
	.word 0x0
	.word 0x0
	.word 0x1
	.word sub_808FEA4+1
	.word 0x0
	.word 0x0
	.word 0x1
.endfunc // sub_8003894

.func
.thumb_func
sub_8003908:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_80039F0 // =byte_2000780
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R4-R7,pc}
.endfunc // sub_8003908

.func
.thumb_func
sub_8003914:
	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	push {r0}
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r0}
	strb R0, [R5,#0x1] // (byte_2000781 - 0x2000780)
	ldr R7, off_80039F4 // =jt_80038E8
	mov R1, #0x10
	ldrb R0, [R5,#0x1] // (byte_2000781 - 0x2000780)
	mul R0, R1
	add r7, r7, r0
	ldr R0, [R7,#8]
	str R0, [R5,#0x4] // (dword_2000784 - 0x2000780)
	ldr R0, [R7,#0xC]
	strb R0, [R5,#0x2] // (byte_2000782 - 0x2000780)
	mov R0, #1
	strb R0, [R5]
	strb R0, [R5,#0x3] // (byte_2000783 - 0x2000780)
	pop {R4-R7,pc}
.endfunc // sub_8003914

.func
.thumb_func
sub_8003940:
	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	ldr R7, off_80039F4 // =jt_80038E8
	mov R1, #0x10
	ldrb R0, [R5,#0x1] // (byte_2000781 - 0x2000780)
	mul R0, R1
	add r7, r7, r0
	ldr R0, [R7,#4]
	tst R0, R0
	beq loc_8003958
	mov LR, PC
	bx r0
loc_8003958:
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R4-R7,pc}
.endfunc // sub_8003940

.func
.thumb_func
sub_8003962:
	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	ldrb R0, [R5,#0x2] // (byte_2000782 - 0x2000780)
	tst R0, R0
	bne loc_8003974
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
loc_8003974:
	mov R0, #1
	strb R0, [R5,#0x3] // (byte_2000783 - 0x2000780)
	pop {R4-R7,pc}
.endfunc // sub_8003962

	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	mov R0, #1
	strb R0, [R5,#0x3] // (byte_2000783 - 0x2000780)
	pop {R4-R7,pc}
.func
.thumb_func
sub_8003984:
	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	mov R0, #1
	ldrb R0, [R5]
	tst R0, R0
	beq locret_8003998
	mov R1, #0x80
	ldrb R0, [R5]
	orr R0, R1
	strb R0, [R5]
locret_8003998:
	pop {R4-R7,pc}
.endfunc // sub_8003984

.func
.thumb_func
sub_800399A:
	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	mov R0, #1
	ldrb R0, [R5]
	mov R1, #0x7F
	and R0, R1
	strb R0, [R5]
	pop {R4-R7,pc}
.endfunc // sub_800399A

.func
.thumb_func
sub_80039AA:
	push {R4-R7,lr}
	ldr R5, off_80039F0 // =byte_2000780
	ldrb R0, [R5]
	tst R0, R0
	beq locret_80039CA
	mov R1, #0x80
	tst R0, R1
	bne locret_80039CA
	ldr R7, off_80039F4 // =jt_80038E8
	mov R1, #0x10
	ldrb R0, [R5,#0x1] // (byte_2000781 - 0x2000780)
	mul R0, R1
	add r7, r7, r0
	ldr R0, [R7]
	mov LR, PC
	bx r0
locret_80039CA:
	pop {R4-R7,pc}
.endfunc // sub_80039AA

.func
.thumb_func
sub_80039CC:
	ldr R1, off_80039F0 // =byte_2000780
	ldrb R0, [R1]
	tst R0, R0
	mov PC, LR
.endfunc // sub_80039CC

.func
.thumb_func
sub_80039D4:
	push {R4-R7,lr}
	add r7, r0, #0
	mov R4, #0
	bl sub_80039CC
	beq loc_80039EA
	ldr R0, off_80039F0 // =byte_2000780
	ldrb R0, [R0,#0x1] // (byte_2000781 - 0x2000780)
	cmp R0, R7
	bne loc_80039EA
	mov R4, #1
loc_80039EA:
	add r0, r4, #0
	tst R0, R0
	pop {R4-R7,pc}
off_80039F0: .word byte_2000780
off_80039F4: .word jt_80038E8
off_80039F8: .word sub_81419A0+1
	.word 0x0, 0x0
	.word 0x1, 0x0, 0x0
	.word 0xFFFFFFFF, 0x0
	.word sub_8143482+1
	.word 0x0, 0x0
	.word 0x1, 0x0, 0x0
	.word 0xFFFFFFFF, 0x0, 0x0, 0x0
	.word 0xFFFFFFFF, 0x0
	.word sub_8144048+1
	.word 0x0, 0x0
	.word 0x1
.endfunc // sub_80039D4

.func
.thumb_func
sub_8003A58:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_8003B40 // =byte_2001010
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R4-R7,pc}
.endfunc // sub_8003A58

.func
.thumb_func
sub_8003A64:
	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	push {r0}
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r0}
	strb R0, [R5,#0x1] // (byte_2001011 - 0x2001010)
	ldr R7, off_8003B44 // =off_80039F8
	mov R1, #0x10
	ldrb R0, [R5,#0x1] // (byte_2001011 - 0x2001010)
	mul R0, R1
	add r7, r7, r0
	ldr R0, [R7,#8]
	str R0, [R5,#0x4] // (dword_2001014 - 0x2001010)
	ldr R0, [R7,#0xC]
	strb R0, [R5,#0x2] // (byte_2001012 - 0x2001010)
	mov R0, #1
	strb R0, [R5]
	strb R0, [R5,#0x3] // (byte_2001013 - 0x2001010)
	pop {R4-R7,pc}
.endfunc // sub_8003A64

loc_8003A90:
	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	ldr R7, off_8003B44 // =off_80039F8
	mov R1, #0x10
	ldrb R0, [R5,#0x1] // (byte_2001011 - 0x2001010)
	mul R0, R1
	add r7, r7, r0
	ldr R0, [R7,#4]
	tst R0, R0
	beq loc_8003AA8
	mov LR, PC
	bx r0
loc_8003AA8:
	add r0, r5, #0
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {R4-R7,pc}
.func
.thumb_func
sub_8003AB2:
	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	ldrb R0, [R5,#0x2] // (byte_2001012 - 0x2001010)
	tst R0, R0
	bne loc_8003AC4
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x48
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
loc_8003AC4:
	mov R0, #1
	strb R0, [R5,#0x3] // (byte_2001013 - 0x2001010)
	pop {R4-R7,pc}
.endfunc // sub_8003AB2

	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	mov R0, #1
	strb R0, [R5,#0x3] // (byte_2001013 - 0x2001010)
	pop {R4-R7,pc}
.func
.thumb_func
sub_8003AD4:
	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	mov R0, #1
	ldrb R0, [R5]
	tst R0, R0
	beq locret_8003AE8
	mov R1, #0x80
	ldrb R0, [R5]
	orr R0, R1
	strb R0, [R5]
locret_8003AE8:
	pop {R4-R7,pc}
.endfunc // sub_8003AD4

.func
.thumb_func
sub_8003AEA:
	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	mov R0, #1
	ldrb R0, [R5]
	mov R1, #0x7F
	and R0, R1
	strb R0, [R5]
	pop {R4-R7,pc}
.endfunc // sub_8003AEA

.func
.thumb_func
sub_8003AFA:
	push {R4-R7,lr}
	ldr R5, off_8003B40 // =byte_2001010
	ldrb R0, [R5]
	tst R0, R0
	beq locret_8003B1A
	mov R1, #0x80
	tst R0, R1
	bne locret_8003B1A
	ldr R7, off_8003B44 // =off_80039F8
	mov R1, #0x10
	ldrb R0, [R5,#0x1] // (byte_2001011 - 0x2001010)
	mul R0, R1
	add r7, r7, r0
	ldr R0, [R7]
	mov LR, PC
	bx r0
locret_8003B1A:
	pop {R4-R7,pc}
.endfunc // sub_8003AFA

.func
.thumb_func
sub_8003B1C:
	ldr R1, off_8003B40 // =byte_2001010
	ldrb R0, [R1]
	tst R0, R0
	mov PC, LR
.endfunc // sub_8003B1C

	push {R4-R7,lr}
	add r7, r0, #0
	mov R4, #0
	bl sub_8003B1C
	beq loc_8003B3A
	ldr R0, off_8003B40 // =byte_2001010
	ldrb R0, [R0,#0x1] // (byte_2001011 - 0x2001010)
	cmp R0, R7
	bne loc_8003B3A
	mov R4, #1
loc_8003B3A:
	add r0, r4, #0
	tst R0, R0
	pop {R4-R7,pc}
off_8003B40: .word byte_2001010
off_8003B44: .word off_80039F8
off_8003B48: .word loc_809D19C+1
.func
.thumb_func
sub_8003B4C:
	push {R0-R4,lr}
	ldr R0, off_8003C90 // =dword_2009F34
	ldr R2, [R0]
	mov R1, #0x80
	lsl r1, r1, #0x18
	ldr R5, off_8003C94 // =eOWPlayerObject
	ldr R3, off_8003C98 // =byte_200A008
loc_8003B5A:
	tst R2, R1
	beq loc_8003B68
	lsr r1, r1, #1
	add R5, #0xC8
	cmp R5, R3
	bge loc_8003B82
	b loc_8003B5A
loc_8003B68:
	orr R2, R1
	str R2, [R0]
	mov R0, #9
	strb R0, [R5]
	pop {R0-R4}
	strb R0, [R5,#1]
	str R1, [R5,#0x1C]
	str R2, [R5,#0x20]
	str R3, [R5,#0x24]
	str R4, [R5,#4]
	mov R0, #0
	str R0, [R5,#8]
	pop {pc}
loc_8003B82:
	mov R5, #0
	pop {R0-R4,pc}
.endfunc // sub_8003B4C

.func
.thumb_func
sub_8003B86:
	push {lr}
	mov R0, #0x80
	lsl r0, r0, #0x18
	ldrb R1, [R5,#3]
	lsr R0, R1
	ldr R1, off_8003C90 // =dword_2009F34
	ldr R2, [R1]
	bic R2, R0
	str R2, [R1]
	mov R1, #0
	strb R1, [R5]
	bl sprite_makeUnscalable
	pop {pc}
.endfunc // sub_8003B86

.func
.thumb_func
sub_8003BA2:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	sub sp, sp, #8
	ldr R5, off_8003C94 // =eOWPlayerObject
	ldr R0, off_8003BF0 // =off_8003B48
	ldr R1, off_8003C98 // =byte_200A008
	str R0, [SP]
	str R1, [SP,#4]
loc_8003BB8:
	mov R1, #1
	ldrb R0, [R5]
	tst R0, R1
	beq loc_8003BDC
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R1, [R7,#0xA]
	tst R1, R1
	beq loc_8003BD0
	mov R1, #4
	tst R0, R1
	beq loc_8003BDC
loc_8003BD0:
	ldr R0, [SP]
	ldrb R1, [R5,#0x1] // (byte_2009F41 - 0x2009F40)
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
loc_8003BDC:
	add R5, #0xC8
	ldr R0, [SP,#4]
	cmp R5, R0
	blt loc_8003BB8
	add sp, sp, #8
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
off_8003BF0: .word off_8003B48
.endfunc // sub_8003BA2

.func
.thumb_func
sub_8003BF4:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	mov R0, #1
	mov R1, #0
	ldr R5, off_8003C94 // =eOWPlayerObject
loc_8003C04:
	ldrb R2, [R5]
	mov R3, #2
	tst R2, R3
	beq loc_8003C30
	push {r0,r1,r5}
	add r0, r5, #0
	add R0, #0x1C
	ldr R1, off_8003C68 // =loc_30061E8+1
	mov LR, PC
	bx r1
	mov R0, #0
	ldr R1, off_8003C64 // =sub_3006028+1
	mov LR, PC
	bx r1
	mov R0, #2
	mov r1, #0x60
	add R5, #0x90
	ldr R2, off_8003C6C // =loc_3006440+1
	mov LR, PC
	bx r2
	pop {r0,r1,r5}
	b loc_8003C4C
loc_8003C30:
	add r4, r5, #0
	add R4, #0x90
	mov R3, #0
	str R3, [R4,#0x24]
	mov R3, #1
	tst R2, R3
	beq loc_8003C4C
	push {r0,r1,r5}
	add r0, r5, #0
	add R0, #0x1C
	ldr R1, off_8003C68 // =loc_30061E8+1
	mov LR, PC
	bx r1
	pop {r0,r1,r5}
loc_8003C4C:
	add R1, #1
	add R5, #0xC8
	cmp R1, R0
	blt loc_8003C04
	mov R0, #0
	bl sub_80028C0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
off_8003C64: .word sub_3006028+1
off_8003C68: .word loc_30061E8+1
off_8003C6C: .word loc_3006440+1
.endfunc // sub_8003BF4

.func
.thumb_func
sub_8003C70:
	push {lr}
	mov R0, #0
	bl sub_80028C0
	pop {pc}
.endfunc // sub_8003C70

	mov R0, #0
	ldr R3, off_8003C94 // =eOWPlayerObject
loc_8003C7E:
	add r1, r3, #0
	add R1, #0x90
	mov R2, #0
	str R2, [R1,#0x24]
	add R3, #0xC8
	add R0, #1
	cmp R0, #1
	blt loc_8003C7E
	mov PC, LR
off_8003C90: .word dword_2009F34
off_8003C94: .word eOWPlayerObject
off_8003C98: .word byte_200A008
off_8003C9C: .word sub_80B81EC+1
	.word sub_80B8210+1
	.word sub_80B85E0+1
	.word sub_80B88D0+1
	.word sub_80B8A18+1
	.word sub_80B8CD8+1
	.word sub_80B8EA0+1
	.word loc_80B9078+1
	.word loc_80B92B8+1
	.word loc_80B94BC+1
	.word loc_80B97C0+1
	.word loc_80B99C0+1
	.word loc_80B9C14+1
	.word loc_80B9F44+1
	.word sub_80BA364+1
	.word loc_80BA708+1
	.word sub_80BAA8C+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80BAF50+1
	.word sub_80BB2A0+1
	.word loc_80BB608+1
	.word loc_80BB914+1
	.word loc_80BBB98+1
	.word loc_80BBF0C+1
	.word loc_80BC17C+1
	.word loc_80BC4FC+1
	.word loc_80BC650+1
	.word loc_80BC87C+1
	.word loc_80BCA04+1
	.word loc_80BCB50+1
	.word loc_80BCD14+1
	.word loc_80BD388+1
	.word loc_80BDBA4+1
	.word loc_80BE4D8+1
	.word loc_80BE798+1
	.word loc_80BF260+1
	.word loc_80BF6EC+1
	.word loc_80BFDFC+1
	.word loc_80BFF68+1
	.word loc_80C0178+1
	.word loc_80C0334+1
	.word loc_80C04AC+1
	.word loc_80C065C+1
	.word loc_80C07BC+1
	.word loc_80C0E04+1
	.word loc_80C0F6C+1
	.word loc_80C11AC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80C1570+1
	.word sub_80C1A10+1
	.word loc_80C2138+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word loc_80C26F0+1
	.word loc_80C2A78+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word loc_80C3000+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word loc_80C3218+1
	.word loc_80C34E0+1
	.word loc_80C3734+1
	.word sub_80B81EC+1
	.word loc_80C3970+1
	.word loc_80C3CE8+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word loc_80C3EE0+1
	.word loc_80C40D8+1
	.word loc_80C4348+1
	.word loc_80C4530+1
	.word loc_80C46FC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word sub_80B81EC+1
	.word loc_80C4828+1
	.word loc_80C4B18+1
.func
.thumb_func
sub_8003E18:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	ldr R6, off_8003EBC // =byte_2036778
	ldrb R6, [R6]
	ldr R7, off_8003EC0 // =dword_2039A10
loc_8003E28:
	sub R6, #1
	blt loc_8003E7A
	ldr R5, [R7]
	ldrb R2, [R5]
	mov R3, #2
	tst R2, R3
	beq loc_8003E5A
	push {r4,r6,r7}
	add r0, r5, #0
	add r0, #0x34
	ldr R1, off_8003E90 // =loc_30061E8+1
	mov LR, PC
	bx r1
	mov R0, #1
	ldr R1, off_8003E8C // =sub_3006028+1
	mov LR, PC
	bx r1
	mov R0, #2
	mov r1, #0x40
	add R5, #0x90
	ldr R2, off_8003E94 // =loc_3006440+1
	mov LR, PC
	bx r2
	pop {r4,r6,r7}
	b loc_8003E76
loc_8003E5A:
	add r0, r5, #0
	add R0, #0x90
	mov R3, #0
	str R3, [R0,#0x24]
	mov R3, #1
	tst R2, R3
	beq loc_8003E76
	push {r4,r6,r7}
	add r0, r5, #0
	add r0, #0x34
	ldr R1, off_8003E90 // =loc_30061E8+1
	mov LR, PC
	bx r1
	pop {r4,r6,r7}
loc_8003E76:
	add R7, #4
	b loc_8003E28
loc_8003E7A:
	mov R0, #1
	bl sub_80028C0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8003E8C: .word sub_3006028+1
off_8003E90: .word loc_30061E8+1
off_8003E94: .word loc_3006440+1
.endfunc // sub_8003E18

.func
.thumb_func
sub_8003E98:
	push {lr}
	mov R0, #1
	bl sub_80028C0
	pop {pc}
	mov R0, #0
	ldr R3, off_8003EB8 // =eBattleObjectPlayerFlags
loc_8003EA6:
	add r1, r3, #0
	add R1, #oBattleObjectUnkSpriteData_90
	mov R2, #0
	str R2, [R1,#0x24]
	add R3, #oBattleObjectSize
	add R0, #1
	cmp r0, #0x20
	blt loc_8003EA6
	mov PC, LR
off_8003EB8: .word eBattleObjectPlayerFlags
off_8003EBC: .word byte_2036778
off_8003EC0: .word dword_2039A10
off_8003EC4: .word loc_80C4E58+1
	.word loc_80C50B8+1
	.word loc_80C51AC+1
	.word loc_80C52B0+1
	.word loc_80C53C0+1
	.word loc_80C55B0+1
	.word sub_80C57C0+1
	.word loc_80C5A34+1
	.word loc_80C5BB0+1
	.word loc_80C5DDC+1
	.word loc_80C5F60+1
	.word loc_80C60A8+1
	.word loc_80C4E58+1
	.word loc_80C4E58+1
	.word loc_80C6280+1
	.word loc_80C6414+1
	.word loc_80C6580+1
	.word loc_80C67F8+1
	.word loc_80C6946+1
	.word loc_80C4E58+1
	.word loc_80C4E58+1
	.word loc_80C4E58+1
	.word loc_80C6B40+1
	.word loc_80C6DCC+1
	.word loc_80C7074+1
	.word loc_80C71A4+1
	.word loc_80C740C+1
	.word loc_80C793C+1
	.word loc_80C7C18+1
	.word loc_80C7D78+1
	.word loc_80C7F40+1
	.word loc_80C8098+1
	.word loc_80C81CC+1
	.word loc_80C8388+1
	.word loc_80C853C+1
	.word loc_80C86D8+1
	.word loc_80C882C+1
	.word loc_80C8AA4+1
	.word loc_80C8C74+1
	.word loc_80C8E08+1
	.word loc_80C8FFC+1
	.word loc_80C91A0+1
	.word loc_80C93CC+1
	.word sub_80C96A0+1
	.word locret_80C980C+1
	.word locret_80C9814+1
	.word loc_80C9824+1
	.word loc_80C9BC4+1
	.word loc_80C9D00+1
	.word loc_80C9F78+1
	.word loc_80CA2A8+1
	.word loc_80CA544+1
	.word loc_80CA6B8+1
	.word loc_80CA938+1
	.word loc_80CAB68+1
	.word loc_80CAD28+1
	.word loc_80CAEF0+1
	.word loc_80CB0DC+1
	.word loc_80CB284+1
	.word sub_80CB49C+1
	.word loc_80CB6F8+1
	.word loc_80CB900+1
	.word loc_80CBB44+1
	.word loc_80CC044+1
	.word sub_80CC0E8+1
	.word loc_80CC4C4+1
	.word loc_80CC5A8+1
	.word loc_80CC76C+1
	.word loc_80CC944+1
	.word loc_80CCA40+1
	.word loc_80CCC48+1
	.word loc_80CCD70+1
	.word sub_80CCFDC+1
	.word loc_80CD2EC+1
	.word loc_80CD4EC+1
	.word sub_80CD8EC+1
	.word loc_80CDD44+1
	.word loc_80CDF84+1
	.word loc_80CE118+1
	.word loc_80CE24C+1
	.word sub_80CE530+1
	.word loc_80CE70C+1
	.word loc_80CE81C+1
	.word loc_80CEB00+1
	.word sub_80CEE78+1
	.word sub_80CF0D0+1
	.word sub_80CF3BE+1
	.word loc_80CF5C8+1
	.word loc_80CF7F0+1
	.word loc_80CF954+1
	.word loc_80CFC08+1
	.word loc_80CFCF8+1
	.word loc_80CFEC4+1
	.word loc_80D00A0+1
	.word loc_80D0268+1
	.word loc_80D0394+1
	.word loc_80D0500+1
	.word loc_80D0610+1
	.word loc_80D07CC+1
	.word loc_80D0AA8+1
	.word loc_80D0D7C+1
	.word loc_80D0F8C+1
	.word loc_80D1218+1
	.word loc_80D1514+1
	.word loc_80D17A4+1
	.word loc_80D18D8+1
	.word loc_80D1A08+1
	.word loc_80D1B48+1
	.word loc_80D1C20+1
	.word sub_80D2034+1
	.word sub_80D2290+1
	.word sub_80D2460+1
	.word sub_80D25D4+1
	.word loc_80D2A94+1
	.word loc_80D2BDC+1
	.word loc_80D2EBC+1
	.word loc_80D30D0+1
	.word sub_80D34CC+1
	.word loc_80D385C+1
	.word sub_80D39BC+1
	.word loc_80D4088+1
	.word loc_80D4440+1
	.word loc_80D46B8+1
	.word loc_80D4A28+1
	.word loc_80D4B68+1
	.word loc_80D4C84+1
	.word loc_80D5028+1
	.word loc_80D5138+1
	.word loc_80D535C+1
	.word loc_80D5580+1
	.word loc_80D5740+1
	.word loc_80D58B4+1
	.word loc_80D5ABC+1
	.word loc_80D5C48+1
	.word loc_80D5D54+1
	.word loc_80D5F08+1
	.word loc_80D622C+1
	.word loc_80D655C+1
	.word loc_80D67EC+1
	.word loc_80D6924+1
	.word loc_80D6A20+1
	.word loc_80D6BD4+1
	.word loc_80D6D80+1
	.word sub_80D6EE0+1
	.word loc_80D7068+1
	.word loc_80D7278+1
	.word loc_80D7400+1
	.word loc_80D75FC+1
	.word loc_80D7ACC+1
	.word loc_80D7DE4+1
	.word loc_80D807C+1
	.word loc_80D825C+1
	.word loc_80D8444+1
	.word loc_80D8620+1
	.word loc_80D879C+1
	.word loc_80D88E0+1
	.word loc_80D8C5C+1
	.word loc_80D8E10+1
	.word loc_80D8FC4+1
	.word loc_80D9154+1
	.word loc_80D9350+1
	.word loc_80D96A4+1
	.word loc_80D954C+1
	.word loc_80D984C+1
	.word loc_80D9A50+1
	.word loc_80D9D4C+1
	.word loc_80DA050+1
	.word loc_80DA470+1
	.word loc_80DA5FC+1
	.word loc_80DA80C+1
	.word loc_80DAA28+1
	.word loc_80DACE4+1
	.word loc_80DAE94+1
	.word loc_80DB0E4+1
	.word loc_80DB304+1
	.word sub_80DB570+1
	.word sub_80DB6A4+1
	.word loc_80DB8CC+1
	.word loc_80DB994+1
	.word loc_80DBB40+1
	.word loc_80DBCEC+1
	.word sub_80DBEE6+1
	.word loc_80DC0E8+1
	.word loc_80DC260+1
	.word loc_80DC3F8+1
	.word loc_80DC4FC+1
	.word loc_80DC5F8+1
	.word loc_80DC70C+1
	.word loc_80DCB1C+1
	.word loc_80DCCD4+1
	.word loc_80DCE38+1
	.word loc_80DCEF4+1
	.word loc_80DD0AC+1
	.word loc_80DD34C+1
	.word loc_80DD764+1
	.word loc_80DD940+1
	.word loc_80DDA84+1
	.word loc_80DDC10+1
	.word loc_80DDDF0+1
	.word loc_80DE000+1
	.word loc_80DE13C+1
	.word loc_80DE404+1
	.word loc_80DE7F4+1
	.word loc_80DEA7C+1
	.word loc_80DEE60+1
	.word loc_80DF0A4+1
	.word loc_80DF188+1
	.word loc_80DF328+1
	.word loc_80DF4FC+1
	.word loc_80DF90C+1
	.word loc_80DFC38+1
	.word loc_80DFE40+1
	.word loc_80DFFB8+1
.endfunc // sub_8003E98

.func
.thumb_func
sub_8004218:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	ldr R6, off_80042C0 // =dword_203CA7C
	ldrb R6, [R6]
	ldr R7, off_80042C4 // =dword_203A010
loc_8004228:
	sub R6, #1
	blt loc_800427A
	ldr R5, [R7]
	ldrb R2, [R5]
	mov R3, #2
	tst R2, R3
	beq loc_800425A
	push {r4,r6,r7}
	add r0, r5, #0
	add r0, #0x34
	ldr R1, off_8004290 // =loc_30061E8+1
	mov LR, PC
	bx r1
	mov R0, #3
	ldr R1, off_800428C // =sub_3006028+1
	mov LR, PC
	bx r1
	mov R0, #2
	mov r1, #0x40
	add R5, #0x90
	ldr R2, off_8004294 // =loc_3006440+1
	mov LR, PC
	bx r2
	pop {r4,r6,r7}
	b loc_8004276
loc_800425A:
	add r0, r5, #0
	add R0, #0x90
	mov R3, #0
	str R3, [R0,#0x24]
	mov R3, #1
	tst R2, R3
	beq loc_8004276
	push {r4,r6,r7}
	add r0, r5, #0
	add r0, #0x34
	ldr R1, off_8004290 // =loc_30061E8+1
	mov LR, PC
	bx r1
	pop {r4,r6,r7}
loc_8004276:
	add R7, #4
	b loc_8004228
loc_800427A:
	mov R0, #3
	bl sub_80028C0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_800428C: .word sub_3006028+1
off_8004290: .word loc_30061E8+1
off_8004294: .word loc_3006440+1
.endfunc // sub_8004218

.func
.thumb_func
sub_8004298:
	push {lr}
	mov R0, #3
	bl sub_80028C0
	pop {pc}
.endfunc // sub_8004298

	mov r0, #0x30
	ldr R3, off_80042BC // =byte_203CFD0
loc_80042A6:
	add r1, r3, #0
	add R1, #0x90
	mov R2, #0
	str R2, [R1,#0x24]
	add R3, #0xD8
	add R0, #1
	cmp r0, #0x20
	blt loc_80042A6
	mov PC, LR
	.word byte_203CFE0
off_80042BC: .word byte_203CFD0
off_80042C0: .word dword_203CA7C
off_80042C4: .word dword_203A010
off_80042C8: .word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E0638+1
	.word loc_80E0710+1
	.word loc_80E0844+1
	.word locret_80E08E0+1
	.word loc_80E08FC+1
	.word loc_80E0AD4+1
	.word loc_80E0DF0+1
	.word loc_80E0FA0+1
	.word loc_80E10A4+1
	.word loc_80E0548+1
	.word loc_80E11FC+1
	.word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E1520+1
	.word loc_80E17E8+1
	.word loc_80E19BC+1
	.word loc_80E1A90+1
	.word loc_80E1B48+1
	.word loc_80E1CF8+1
	.word loc_80E1D88+1
	.word loc_80E1E4C+1
	.word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E2080+1
	.word loc_80E21D8+1
	.word loc_80E225C+1
	.word loc_80E23A4+1
	.word loc_80E24E4+1
	.word loc_80E25D0+1
	.word loc_80E28A8+1
	.word loc_80E2AE8+1
	.word loc_80E2B7C+1
	.word loc_80E2CA4+1
	.word loc_80E2E34+1
	.word sub_80E2F56+1
	.word loc_80E309C+1
	.word loc_80E3150+1
	.word loc_80E31D8+1
	.word loc_80E32B8+1
	.word loc_80E342C+1
	.word loc_80E34C0+1
	.word loc_80E35A4+1
	.word loc_80E3728+1
	.word loc_80E37F4+1
	.word loc_80E39A0+1
	.word loc_80E3AB8+1
	.word loc_80E3B70+1
	.word loc_80E3D68+1
	.word loc_80E3FD0+1
	.word loc_80E40EC+1
	.word loc_80E4188+1
	.word sub_80E4344+1
	.word loc_80E440C+1
	.word loc_80E4634+1
	.word loc_80E46D8+1
	.word loc_80E47B4+1
	.word loc_80E4848+1
	.word loc_80E4910+1
	.word loc_80E4A1C+1
	.word loc_80E0548+1
	.word loc_80E4CB8+1
	.word loc_80E4DB0+1
	.word loc_80E50C4+1
	.word loc_80E5244+1
	.word loc_80E5470+1
	.word loc_80E55C0+1
	.word loc_80E5710+1
	.word loc_80E5944+1
	.word loc_80E59E8+1
	.word locret_80E5B60+1
	.word sub_80E5C2C+1
	.word loc_80E5D44+1
	.word loc_80E5E00+1
	.word loc_80E5ECC+1
	.word loc_80E5F9C+1
	.word sub_80E5FBC+1
	.word loc_80E6088+1
	.word loc_80E6254+1
	.word loc_80E6480+1
	.word loc_80E655C+1
	.word loc_80E6758+1
	.word loc_80E680C+1
	.word loc_80E689C+1
	.word loc_80E6A90+1
	.word loc_80E6BDC+1
	.word loc_80E6E44+1
	.word loc_80E6F88+1
	.word loc_80E702C+1
	.word loc_80E70C8+1
	.word loc_80E71C4+1
	.word loc_80E7260+1
	.word loc_80E74D4+1
	.word loc_80E7568+1
	.word loc_80E7624+1
	.word loc_80E76F8+1
	.word loc_80E7788+1
	.word loc_80E78BC+1
	.word loc_80E795C+1
	.word loc_80E7ACC+1
	.word loc_80E7BFC+1
	.word loc_80E7CCC+1
	.word loc_80E7DC4+1
	.word loc_80E7E9C+1
	.word loc_80E7F38+1
	.word loc_80E7FDC+1
	.word loc_80E807C+1
	.word loc_80E8138+1
	.word loc_80E81D8+1
	.word loc_80E8268+1
	.word loc_80E83B8+1
	.word loc_80E857C+1
	.word loc_80E8688+1
	.word loc_80E8794+1
	.word loc_80E88A0+1
	.word loc_80E8938+1
	.word loc_80E8A60+1
	.word loc_80E8B00+1
	.word loc_80E8DF0+1
	.word loc_80E8EE0+1
	.word loc_80E8FE0+1
	.word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E9120+1
	.word loc_80E0548+1
	.word loc_80E91E4+1
	.word loc_80E9310+1
	.word loc_80E9460+1
	.word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E9570+1
	.word loc_80E0548+1
	.word loc_80E0548+1
	.word loc_80E97F0+1
	.word loc_80E9994+1
	.word loc_80E9AF0+1
	.word loc_80E9C88+1
	.word loc_80E9DF0+1
	.word loc_80EA010+1
	.word loc_80EA14C+1
	.word loc_80E0548+1
	.word loc_80EA258+1
	.word loc_80EA364+1
	.word loc_80E0548+1
.func
.thumb_func
sub_8004510:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	ldr R6, off_80045B4 // =byte_2036830
	ldrb R6, [R6]
	ldr R7, off_80045B8 // =byte_203F750
loc_8004520:
	sub R6, #1
	blt loc_8004572
	ldr R5, [R7]
	ldrb R2, [R5]
	mov R3, #2
	tst R2, R3
	beq loc_8004552
	push {r4,r6,r7}
	add r0, r5, #0
	add r0, #0x34
	ldr R1, off_8004588 // =loc_30061E8+1
	mov LR, PC
	bx r1
	mov R0, #4
	ldr R1, off_8004584 // =sub_3006028+1
	mov LR, PC
	bx r1
	mov R0, #2
	mov r1, #0x40
	add R5, #0x80
	ldr R2, off_800458C // =loc_3006440+1
	mov LR, PC
	bx r2
	pop {r4,r6,r7}
	b loc_800456E
loc_8004552:
	add r0, r5, #0
	add R0, #0x80
	mov R3, #0
	str R3, [R0,#0x24]
	mov R3, #1
	tst R2, R3
	beq loc_800456E
	push {r4,r6,r7}
	add r0, r5, #0
	add r0, #0x34
	ldr R1, off_8004588 // =loc_30061E8+1
	mov LR, PC
	bx r1
	pop {r4,r6,r7}
loc_800456E:
	add R7, #4
	b loc_8004520
loc_8004572:
	mov R0, #4
	bl sub_80028C0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8004584: .word sub_3006028+1
off_8004588: .word loc_30061E8+1
off_800458C: .word loc_3006440+1
.endfunc // sub_8004510

.func
.thumb_func
sub_8004590:
	push {lr}
	mov R0, #4
	bl sub_80028C0
	pop {pc}
.endfunc // sub_8004590

.func
.thumb_func
dead_800459A:
	mov R0, #0
	ldr R3, off_80045B0 // =unk_2036870
loc_800459E:
	add r1, r3, #0
	add R1, #0x80
	mov R2, #0
	str R2, [R1,#0x24]
	add R3, #0xC8
	add R0, #1
	cmp r0, #0x20
	blt loc_800459E
	mov PC, LR
off_80045B0: .word unk_2036870
off_80045B4: .word byte_2036830
off_80045B8: .word byte_203F750
off_80045BC: .word npc_809E570+1
.endfunc // dead_800459A

.func
.thumb_func
sub_80045C0:
	push {R0-R4,lr}
	ldr R0, off_8004718 // =map_activeNPCs
	ldr R2, [R0]
	mov R1, #0x80
	lsl r1, r1, #0x18
	ldr R5, off_800471C // =eOverworldNPCObjects
	ldr R3, off_8004720 // =byte_2006530
loc_80045CE:
	tst R2, R1
	beq loc_80045DC
	lsr r1, r1, #1
	add R5, #0xD8
	cmp R5, R3
	bge loc_80045FE
	b loc_80045CE
loc_80045DC:
	orr R2, R1
	str R2, [R0]
	mov R0, #4
	// memBlock
	add r0, r0, r5
	mov r1, #0x4e
	lsl r1, r1, #1
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R0, #9
	strb R0, [R5]
	pop {R0-R4}
	strb R0, [R5,#1]
	str R1, [R5,#0x24]
	str R2, [R5,#0x28]
	str R3, [R5,#0x2C]
	str R4, [R5,#4]
	pop {pc}
loc_80045FE:
	mov R5, #0
	pop {R0-R4,pc}
.endfunc // sub_80045C0

.func
.thumb_func
sub_8004602:
	push {lr}
	mov R0, #0x80
	lsl r0, r0, #0x18
	ldrb R1, [R5,#3]
	lsr R0, R1
	ldr R1, off_8004718 // =map_activeNPCs
	ldr R2, [R1]
	bic R2, R0
	str R2, [R1]
	mov R1, #0
	strb R1, [R5]
	bl sprite_makeUnscalable
	pop {pc}
.endfunc // sub_8004602

.func
.thumb_func
// [break] continuously called
// [disable] - NPCs are no longer loaded, if they were already loaded, they are not interactable. Some are exceptions, like Central Robo Dog.
// - Scenes don't seem to load, either
npc_800461E:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #1
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_800466C
	sub sp, sp, #8
	ldr R5, off_800471C // =eOverworldNPCObjects
	ldr R0, off_8004678 // =off_80045BC
	ldr R1, off_8004720 // =byte_2006530
	str R0, [SP]
	str R1, [SP,#4]
loc_800463E:
	mov R1, #1
	ldrb R0, [R5]
	tst R0, R1
	beq loc_8004662
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R1, [R7,#0xA]
	tst R1, R1
	beq loc_8004656
	mov R1, #4
	tst R0, R1
	beq loc_8004662
loc_8004656:
	ldr R0, [SP]
	ldrb R1, [R5,#1]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
loc_8004662:
	add R5, #0xD8
	ldr R0, [SP,#4]
	cmp R5, R0
	blt loc_800463E
	add sp, sp, #8
loc_800466C:
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8004678: .word off_80045BC
.endfunc // npc_800461E

.func
.thumb_func
sub_800467C:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	mov R0, #0x10
	mov R1, #0
	ldr R5, off_800471C // =eOverworldNPCObjects
loc_800468C:
	ldrb R2, [R5]
	mov R3, #2
	tst R2, R3
	beq loc_80046B8
	push {r0,r1,r5}
	add r0, r5, #0
	add r0, #0x24
	ldr R1, off_80046F0 // =loc_30061E8+1
	mov LR, PC
	bx r1
	mov R0, #2
	ldr R1, off_80046EC // =sub_3006028+1
	mov LR, PC
	bx r1
	mov R0, #2
	mov r1, #0x60
	add R5, #0xA0
	ldr R2, off_80046F4 // =loc_3006440+1
	mov LR, PC
	bx r2
	pop {r0,r1,r5}
	b loc_80046D4
loc_80046B8:
	add r4, r5, #0
	add R4, #0xA0
	mov R3, #0
	str R3, [R4,#0x24]
	mov R3, #1
	tst R2, R3
	beq loc_80046D4
	push {r0,r1,r5}
	add r0, r5, #0
	add r0, #0x24
	ldr R1, off_80046F0 // =loc_30061E8+1
	mov LR, PC
	bx r1
	pop {r0,r1,r5}
loc_80046D4:
	add R1, #1
	add R5, #0xD8
	cmp R1, R0
	blt loc_800468C
	mov R0, #2
	bl sub_80028C0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
off_80046EC: .word sub_3006028+1
off_80046F0: .word loc_30061E8+1
off_80046F4: .word loc_3006440+1
.endfunc // sub_800467C

.func
.thumb_func
sub_80046F8:
	push {lr}
	mov R0, #2
	bl sub_80028C0
	pop {pc}
.endfunc // sub_80046F8

.func
.thumb_func
sub_8004702:
	mov R0, #0
	ldr R3, off_800471C // =eOverworldNPCObjects
loc_8004706:
	add r1, r3, #0
	add R1, #0xA0
	mov R2, #0
	str R2, [R1,#0x24]
	add R3, #0xD8
	add R0, #1
	cmp R0, #0x10
	blt loc_8004706
	mov PC, LR
off_8004718: .word map_activeNPCs
off_800471C: .word eOverworldNPCObjects
off_8004720: .word byte_2006530
off_8004724: .word ho_80A4984+1
	.word loc_80A4A98+1
	.word loc_80A4BDC+1
	.word loc_80A51C4+1
	.word loc_80A5428+1
	.word loc_80A54F0+1
	.word loc_80A57AC+1
	.word loc_80A5AD4+1
	.word sub_80A6A16+1
	.word loc_80A6E98+1
	.word loc_80A72B4+1
	.word loc_80A77A8+1
	.word loc_80A781C+1
	.word loc_80A78B8+1
	.word loc_80A7C84+1
	.word loc_80A7D90+1
	.word loc_80A8208+1
	.word loc_80A8394+1
	.word loc_80A8654+1
	.word loc_80A8728+1
	.word loc_80A87F0+1
	.word 0x0
	.word loc_80A8870+1
	.word loc_80A89DC+1
	.word loc_80A8AB4+1
	.word 0x0
	.word loc_80A8E74+1
	.word loc_80A92B8+1
	.word loc_80A9430+1
	.word loc_80A9658+1
	.word loc_80A9824+1
	.word loc_80A98D4+1
	.word loc_80A9A0C+1
	.word 0x0, 0x0, 0x0, 0x0
	.word loc_80A9B70+1
	.byte 0, 0, 0, 0
	.word loc_80A9D10+1
	.word loc_80A9ECC+1
	.word loc_80A9F58+1
	.word loc_80AA058+1
	.word loc_80AA140+1
	.word loc_80AA1E0+1
	.word loc_80AA2D8+1
	.word loc_80AA374+1
.endfunc // sub_8004702

.func
.thumb_func
sub_80047E0:
	push {R0-R4,r6,lr}
	mov R1, #0x80
	lsl r1, r1, #0x18
	ldr R5, off_80049D4 // =byte_2011EE0
	mov R6, #0
loc_80047EA:
	ldr R0, off_80049D0 // =unk_2011E50
	lsr r3, r6, #5
	lsl r3, r3, #2
	ldr R2, [R0,R3]
	tst R2, R1
	beq loc_8004804
	mov R2, #1
	ror R1, R2
	add r5, #0x78
	add R6, #1
	cmp r6, #0x38
	bge loc_800481E
	b loc_80047EA
loc_8004804:
	orr R2, R1
	str R2, [R0,R3]
	mov R0, #9
	strb R0, [R5]
	pop {R0-R4,r6}
	strb R0, [R5,#1]
	str R1, [R5,#0xC]
	str R2, [R5,#0x10]
	str R3, [R5,#0x14]
	str R4, [R5,#4]
	mov R0, #0
	str R0, [R5,#8]
	pop {pc}
loc_800481E:
	mov R5, #0
	pop {R0-R4,r6,pc}
.endfunc // sub_80047E0

.func
.thumb_func
sub_8004822:
	push {R0-R4,r6,lr}
	ldr R5, off_80049DC // =byte_20138A8
	mov r6, #0x37
loc_8004828:
	mov R2, #0x1F
	and R2, R6
	mov R1, #0x80
	lsl r1, r1, #0x18
	lsr R1, R2
	ldr R0, off_80049D0 // =unk_2011E50
	lsr r3, r6, #5
	lsl r3, r3, #2
	ldr R2, [R0,R3]
	tst R2, R1
	beq loc_8004846
	sub r5, #0x78
	sub R6, #1
	blt loc_8004860
	b loc_8004828
loc_8004846:
	orr R2, R1
	str R2, [R0,R3]
	mov R0, #9
	strb R0, [R5]
	pop {R0-R4,r6}
	strb R0, [R5,#1]
	str R1, [R5,#0xC]
	str R2, [R5,#0x10]
	str R3, [R5,#0x14]
	str R4, [R5,#4]
	mov R0, #0
	str R0, [R5,#8]
	pop {pc}
loc_8004860:
	mov R5, #0
	pop {R0-R4,r6,pc}
.endfunc // sub_8004822

	push {R0-R4,r6,lr}
	mov R1, #0x80
	lsl r1, r1, #0x18
	mov R6, #0x1F
	and R6, R5
	lsr R1, R6
	add r6, r5, #0
	ldr R5, off_80049D4 // =byte_2011EE0
	mov r3, #0x78
	mul R3, R6
	add r5, r5, r3
loc_800487A:
	ldr R0, off_80049D0 // =unk_2011E50
	lsr r3, r6, #5
	lsl r3, r3, #2
	ldr R2, [R0,R3]
	tst R2, R1
	beq loc_8004894
	mov R2, #1
	ror R1, R2
	add r5, #0x78
	add R6, #1
	cmp r6, #0x38
	bge loc_80048AE
	b loc_800487A
loc_8004894:
	orr R2, R1
	str R2, [R0,R3]
	mov R0, #9
	strb R0, [R5]
	pop {R0-R4,r6}
	strb R0, [R5,#1]
	str R1, [R5,#0xC]
	str R2, [R5,#0x10]
	str R3, [R5,#0x14]
	str R4, [R5,#4]
	mov R0, #0
	str R0, [R5,#8]
	pop {pc}
loc_80048AE:
	mov R5, #0
	pop {R0-R4,r6,pc}
.func
.thumb_func
sub_80048B2:
	push {lr}
	mov R0, #0x80
	lsl r0, r0, #0x18
	ldrb R1, [R5,#3]
	ror R0, R1
	ldr R2, off_80049D0 // =unk_2011E50
	lsr r1, r1, #5
	lsl r1, r1, #2
	ldr R3, [R2,R1]
	bic R3, R0
	str R3, [R2,R1]
	mov R1, #0
	strb R1, [R5]
	bl sprite_makeUnscalable
	pop {pc}
.endfunc // sub_80048B2

.func
.thumb_func
sub_80048D2:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8004920
	sub sp, sp, #8
	ldr R5, off_80049D4 // =byte_2011EE0
	ldr R0, off_800492C // =off_8004724
	ldr R1, off_80049D8 // =dword_2013920
	str R0, [SP]
	str R1, [SP,#4]
loc_80048F2:
	mov R1, #1
	ldrb R0, [R5]
	tst R0, R1
	beq loc_8004916
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R1, [R7,#0xA]
	tst R1, R1
	beq loc_800490A
	mov R1, #4
	tst R0, R1
	beq loc_8004916
loc_800490A:
	ldr R0, [SP]
	ldrb R1, [R5,#1]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
loc_8004916:
	add r5, #0x78
	ldr R0, [SP,#4]
	cmp R5, R0
	blt loc_80048F2
	add sp, sp, #8
loc_8004920:
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_800492C: .word off_8004724
	.word dword_2013920
.endfunc // sub_80048D2

.func
.thumb_func
sub_8004934:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	mov r0, #0x38
	mov R1, #0
	ldr R5, off_80049D4 // =byte_2011EE0
loc_8004944:
	ldrb R2, [R5]
	mov R3, #2
	tst R2, R3
	beq loc_8004970
	push {r0,r1,r5}
	add r0, r5, #0
	add R0, #0xC
	ldr R1, off_80049A8 // =loc_30061E8+1
	mov LR, PC
	bx r1
	mov R0, #5
	ldr R1, off_80049A4 // =sub_3006028+1
	mov LR, PC
	bx r1
	mov R0, #2
	mov r1, #0x60
	add r5, #0x40
	ldr R2, off_80049AC // =loc_3006440+1
	mov LR, PC
	bx r2
	pop {r0,r1,r5}
	b loc_800498C
loc_8004970:
	add r4, r5, #0
	add r4, #0x40
	mov R3, #0
	str R3, [R4,#0x24]
	mov R3, #1
	tst R2, R3
	beq loc_800498C
	push {r0,r1,r5}
	add r0, r5, #0
	add R0, #0xC
	ldr R1, off_80049A8 // =loc_30061E8+1
	mov LR, PC
	bx r1
	pop {r0,r1,r5}
loc_800498C:
	add R1, #1
	add r5, #0x78
	cmp R1, R0
	blt loc_8004944
	mov R0, #5
	bl sub_80028C0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
off_80049A4: .word sub_3006028+1
off_80049A8: .word loc_30061E8+1
off_80049AC: .word loc_3006440+1
.endfunc // sub_8004934

.func
.thumb_func
sub_80049B0:
	push {lr}
	mov R0, #5
	bl sub_80028C0
	pop {pc}
.endfunc // sub_80049B0

	mov R0, #0
	ldr R3, off_80049D4 // =byte_2011EE0
loc_80049BE:
	add r1, r3, #0
	add r1, #0x40
	mov R2, #0
	str R2, [R1,#0x24]
	add r3, #0x78
	add R0, #1
	cmp r0, #0x38
	blt loc_80049BE
	mov PC, LR
off_80049D0: .word unk_2011E50
off_80049D4: .word byte_2011EE0
off_80049D8: .word dword_2013920
off_80049DC: .word byte_20138A8
	push {lr}
	ldr R0, off_8004D2C // =byte_2006848
	ldr R1, off_80049F4 // =0x400
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, off_8004D28 // =dword_2006C48
	ldr R1, off_8004D2C // =byte_2006848
	str R1, [R0]
	pop {pc}
	.balign 4, 0x00
off_80049F4: .word 0x400
	push {lr}
	pop {pc}
	push {R0-R7}
	sub sp, sp, #0x24
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	str R4, [SP,#0xC]
	str R5, [SP,#0x10]
	str R6, [SP,#0x14]
	str R7, [SP,#0x18]
	mov R7, #0
	str R7, [SP,#0x1C]
	mov R7, R8
	str R7, [SP,#0x20]
	ldr R5, off_8004B0C // =unk_2006C46
	mov R1, #0
	mov R8, R1
	ldr R1, off_8004D28 // =dword_2006C48
	ldr R1, [R1]
	cmp R1, R5
	bge loc_8004AB0
	ldrb R2, [R0]
	strb R2, [R1]
	add R0, #1
	add R1, #1
	ldrb R2, [R0]
	strb R2, [R1]
	add R0, #1
	add R1, #1
loc_8004A34:
	ldrb R2, [R0]
	mov R3, #0
	cmp R2, R3
	beq loc_8004AA6
	mov R3, #0xA
	cmp R2, R3
	bne loc_8004A4A
	mov R3, #0xFE
	strh R3, [R1]
	add R1, #2
	b loc_8004AA2
loc_8004A4A:
	mov r3, #0x20
	cmp R2, R3
	blt loc_8004AA2
	mov r3, #0x60
	cmp R2, R3
	bge loc_8004AA2
	cmp R1, R5
	bge loc_8004AA6
	mov r3, #0x25
	cmp R2, R3
	bne loc_8004A9C
	mov R3, #0
	mov R8, R3
loc_8004A64:
	add R0, #1
	ldrb R2, [R0]
	ldr R3, off_8004B10 // =byte_8004B14
loc_8004A6A:
	ldrb R4, [R3]
	cmp R4, #0
	beq loc_8004AA2
	cmp R2, R4
	beq loc_8004A78
	add R3, #1
	b loc_8004A6A
loc_8004A78:
	ldr R2, [SP,#0x1C]
	add r4, r2, #0
	add R4, #4
	str R4, [SP,#0x1C]
	add R2, SP
	ldr R2, [R2]
	ldr R4, off_8004B10 // =byte_8004B14
	sub r3, r3, r4
	lsl r3, r3, #2
	ldr R4, off_8004ABC // =off_8004AC0
	add r4, r4, r3
	ldr R4, [R4]
	lsr r3, r3, #2
	mov LR, PC
	bx r4
	cmp R4, #0
	beq loc_8004A64
	b loc_8004AA2
loc_8004A9C:
	sub r2, #0x20
	strh R2, [R1]
	add R1, #2
loc_8004AA2:
	add R0, #1
	b loc_8004A34
loc_8004AA6:
	mov R2, #0xFF
	strh R2, [R1]
	add R1, #2
	ldr R0, off_8004D28 // =dword_2006C48
	str R1, [R0]
loc_8004AB0:
	ldr R7, [SP,#0x20]
	mov R8, R7
	add sp, sp, #0x24
	pop {R0-R7}
	pop {pc}
	.balign 4, 0x00
off_8004ABC: .word off_8004AC0
off_8004AC0: .word sub_8004B72+1
	.word sub_8004B72+1
	.word sub_8004BC8+1
	.word sub_8004BC8+1
	.word sub_8004C62+1
	.word sub_8004C62+1
	.word loc_8004CAE+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004C90+1
	.word sub_8004CBE+1
	.word sub_8004CBE+1
off_8004B0C: .word unk_2006C46
off_8004B10: .word byte_8004B14
byte_8004B14: .byte 0x44, 0x64, 0x58, 0x78, 0x53, 0x73, 0x25, 0x30, 0x31, 0x32
	.byte 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x42, 0x62, 0x0
.func
.thumb_func
sub_8004B28:
	push {R4-R7,lr}
	ldr R4, off_8004D2C // =byte_2006848
	mov R7, #0xF2
	lsl r7, r7, #8
	add R7, #0xA0
	ldr R5, off_8004D28 // =dword_2006C48
	ldr R5, [R5]
	sub r5, r5, r4
	mov R2, #0
loc_8004B3A:
	cmp R5, #0
	beq loc_8004B6A
	ldrb R6, [R4]
	add r0, r6, #0
	ldrb R1, [R4,#1]
	add R4, #2
	sub R5, #2
loc_8004B48:
	ldrb R3, [R4]
	add R4, #2
	sub R5, #2
	cmp R3, #0xFF
	beq loc_8004B3A
	cmp R3, #0xFE
	bne loc_8004B5C
	add r0, r6, #0
	add R1, #1
	b loc_8004B48
loc_8004B5C:
	push {R0-R7}
	add r3, r3, r7
	bl sub_800187C
	pop {R0-R7}
	add R0, #1
	b loc_8004B48
loc_8004B6A:
	ldr R4, off_8004D28 // =dword_2006C48
	ldr R1, off_8004D2C // =byte_2006848
	str R1, [R4]
	pop {R4-R7,pc}
.endfunc // sub_8004B28

.func
.thumb_func
sub_8004B72:
	push {r0,R5-R7,lr}
	cmp R2, #0
	bge loc_8004B8E
	cmp R1, R5
	bge loc_8004B96
	push {r3}
	mov R3, #0xD
	strh R3, [R1]
	add R1, #2
	mov R3, #0
	mvn R3, R3
	eor R2, R3
	add R2, #1
	pop {r3}
loc_8004B8E:
	ldr R0, off_8004B9C // =dword_8004BA0
	mov R6, #0xA
	bl sub_8004BFC
loc_8004B96:
	mov R4, #1
	pop {r0,R5-R7,pc}
	.balign 4, 0x00
off_8004B9C: .word dword_8004BA0
dword_8004BA0: .word 0x3B9ACA00, 0x5F5E100, 0x989680, 0xF4240, 0x186A0
	.word 0x2710, 0x3E8, 0x64, 0xA, 0x1
.endfunc // sub_8004B72

.func
.thumb_func
sub_8004BC8:
	push {r0,R5-R7,lr}
	sub R3, #2
	ldr R0, off_8004BD8 // =dword_8004BDC
	mov R6, #8
	bl sub_8004BFC
	mov R4, #1
	pop {r0,R5-R7,pc}
off_8004BD8: .word dword_8004BDC
dword_8004BDC: .word 0x10000000, 0x1000000, 0x100000, 0x10000, 0x1000, 0x100
	.word 0x10, 0x1
.endfunc // sub_8004BC8

.func
.thumb_func
sub_8004BFC:
	mov R7, R8
	cmp R7, #0
	beq loc_8004C06
	cmp R7, R6
	blt loc_8004C08
loc_8004C06:
	add r7, r6, #0
loc_8004C08:
	sub r6, r6, r7
	mov R8, R6
	add r7, r3, #0
loc_8004C0E:
	mov R3, #0
	ldr R4, [R0]
loc_8004C12:
	cmp R2, #0
	blt loc_8004C20
	cmp R2, R4
	blt loc_8004C2A
	sub r2, r2, r4
	add R3, #1
	b loc_8004C12
loc_8004C20:
	cmp R2, R4
	bge loc_8004C2A
	sub r2, r2, r4
	add R3, #1
	b loc_8004C12
loc_8004C2A:
	mov R6, R8
	cmp R6, #0
	beq loc_8004C36
	sub R6, #1
	mov R8, R6
	b loc_8004C5A
loc_8004C36:
	mov R6, #1
	and R6, R7
	bne loc_8004C44
	cmp R4, #1
	beq loc_8004C44
	cmp R3, #0
	beq loc_8004C5A
loc_8004C44:
	mov R6, #1
	orr R7, R6
	cmp R1, R5
	bge locret_8004C60
	ldr R6, off_8004D30 // =a0123456789abcd
	add r6, r6, r3
	ldrb R3, [R6]
	sub r3, #0x20
	strh R3, [R1]
	mov R3, #0
	add R1, #2
loc_8004C5A:
	add R0, #4
	cmp R4, #1
	bne loc_8004C0E
locret_8004C60:
	mov PC, LR
.endfunc // sub_8004BFC

.func
.thumb_func
sub_8004C62:
	push {r0,R5-R7,lr}
	mov R7, R8
	cmp R7, #0
	bne loc_8004C6E
	mov R6, #0xFF
	mov R8, R6
loc_8004C6E:
	mov R6, R8
	cmp R6, #0
	beq loc_8004C8C
	sub R6, #1
	mov R8, R6
	ldrb R3, [R2]
	cmp R3, #0
	beq loc_8004C8C
	cmp R1, R5
	bge loc_8004C8C
	sub r3, #0x20
	strh R3, [R1]
	add R1, #2
	add R2, #1
	b loc_8004C6E
loc_8004C8C:
	mov R4, #1
	pop {r0,R5-R7,pc}
.endfunc // sub_8004C62

.func
.thumb_func
sub_8004C90:
	ldr R2, [SP,#0x1C]
	sub R2, #4
	str R2, [SP,#0x1C]
	mov R3, #0
	mov R4, #0
loc_8004C9A:
	add R3, R8
	add R4, #1
	cmp R4, #0xA
	blt loc_8004C9A
	ldrb R4, [R0]
	sub r4, #0x30
	add r3, r3, r4
	mov R8, R3
	mov R4, #0
	mov PC, LR
.endfunc // sub_8004C90

loc_8004CAE:
	ldr R2, [SP,#0x1C]
	sub R2, #4
	str R2, [SP,#0x1C]
	mov R3, #5
	strh R3, [R1]
	add R1, #2
	mov R4, #0
	mov PC, LR
.func
.thumb_func
sub_8004CBE:
	push {r0,R5-R7,lr}
	sub R3, #0x11
	mov r6, #0x20
	bl loc_8004CCC
	mov R4, #1
	pop {r0,R5-R7,pc}
.endfunc // sub_8004CBE

loc_8004CCC:
	mov R7, R8
	cmp R7, #0
	beq loc_8004CD6
	cmp R7, R6
	blt loc_8004CD8
loc_8004CD6:
	add r7, r6, #0
loc_8004CD8:
	sub r6, r6, r7
	mov R8, R6
	add r7, r3, #0
	mov R4, #0x80
	lsl r4, r4, #0x18
loc_8004CE2:
	mov R3, #0
loc_8004CE4:
	tst R2, R4
	beq loc_8004CEE
	bic R2, R4
	add R3, #1
	b loc_8004CE4
loc_8004CEE:
	mov R6, R8
	cmp R6, #0
	beq loc_8004CFA
	sub R6, #1
	mov R8, R6
	b loc_8004D1E
loc_8004CFA:
	mov R6, #1
	and R6, R7
	bne loc_8004D08
	cmp R4, #1
	beq loc_8004D08
	cmp R3, #0
	beq loc_8004D1E
loc_8004D08:
	mov R6, #1
	orr R7, R6
	cmp R1, R5
	bge dword_8004D24
	ldr R6, off_8004D30 // =a0123456789abcd
	add r6, r6, r3
	ldrb R3, [R6]
	sub r3, #0x20
	strh R3, [R1]
	mov R3, #0
	add R1, #2
loc_8004D1E:
	lsr r4, r4, #1
	cmp R4, #0
	bne loc_8004CE2
dword_8004D24: .word 0x46F7
off_8004D28: .word dword_2006C48
off_8004D2C: .word byte_2006848
off_8004D30: .word a0123456789abcd
a0123456789abcd: .asciz "0123456789ABCDEF"
	.byte 0x0, 0x0, 0x0
.func
.thumb_func
sub_8004D48:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	strb R0, [R5]
	mov R0, #8
	strb R0, [R5,#0x16]
	mov R0, #0x10
	strb R0, [R5,#0x17]
	mov R0, #0
	strb R0, [R5,#0xE]
	strb R0, [R5,#3]
	strb R0, [R5,#0x15]
	strb R0, [R5,#0xA]
	str R0, [R5,#0x74]
	mov r0, #0x63
	strb R0, [R5,#0xF]
	mov R0, #0
	strb R0, [R5,#0x11]
	strb R0, [R5,#0x10]
	ldr R1, off_8004DE4 // =byte_200F410
	strb R0, [R1]
	ldr R1, off_8004DE0 // =byte_200ACE0
	mov R0, #0
	strb R0, [R1]
	str R0, [R1,#0x18] // (dword_200ACF8 - 0x200ACE0)
	str R0, [R1,#0x20] // (dword_200AD00 - 0x200ACE0)
	mov R0, #0xFF
	strb R0, [R1,#0x1C] // (byte_200ACFC - 0x200ACE0)
	bl setFlag3_2e2_2001C88
	mov R0, #0
	ldr R1, off_8004DE8 // =sCamera+76
	strb R0, [R1]
	ldr R1, off_8004DEC // =dword_20096D0
	strb R0, [R1]
	bl sub_8004702
	mov R0, #0x17
	mov R1, #3
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov R1, #0x1B
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov R1, #0x15
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x2d
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_800399A
	bl sub_8003AEA
	bl sub_811EC00
	bl sub_800B110
	mov R0, #0
	mov R1, #0x91
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_803C3E0
	beq loc_8004DDA
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x91
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_8004DDA:
	bl sub_8048C98
	pop {R4-R7,pc}
off_8004DE0: .word byte_200ACE0
off_8004DE4: .word byte_200F410
off_8004DE8: .word sCamera+0x4C // sCamera.unk_4C
off_8004DEC: .word dword_20096D0
.endfunc // sub_8004D48

.func
.thumb_func
sub_8004DF0:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C] // Toolkit.gamestate
	mov R0, #0
	str R0, [R5,#0x20] // GameState.unk_20
	mvn R0, R0
	strh R0, [R5,#0xC] // GameState.unk_0C
	mov R0, #0
	str R0, [R5,#0x5C] // GameState.protected_zennies
	str R0, [R5,#0x60] // GameState.protected_bugFrags
	str R0, [R5,#0x74] // GameState.pad_74
	mvn R0, R0
	str R0, [R5,#0x6C] // GameState.unk_6C
	str R0, [R5,#0x70] // GameState.unk_70
	mov R1, R10
	ldr R1, [R1,#0x40] // Toolkit.unk_2001C04
	mov R0, #0
	str R0, [R1,#0x18]
	mov R0, #1
	strb R0, [R1,#5]
	mov R0, #0
	strh R0, [R1,#0x12]
	strh R0, [R1,#0x14]
	str R0, [R1,#0x1C]
	str R0, [R5,#0x1C]
	strh R0, [R1,#8]
	strh R0, [R1,#0xA]
	strh R0, [R1,#0xC]
	strh R0, [R1,#0x10]
	str R0, [R1]
	str R0, [R1,#0x30]
	mov R0, #0
	strb R0, [R5,#2]
	str R0, [R1,#0x24]
	str R0, [R1,#0x28]
	mov r0, #0x63
	strb R0, [R1,#4]
	mov R0, #0
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R1,#0x16]
	mov R0, #0xFF
	strb R0, [R5,#0x12]
	bl sub_802F0C4
	bl sub_8006D00
	bl sub_803CD74
	mov R0, #0
	strb R0, [R5,#0x13]
	str R0, [R5,#0x78]
	bl sub_802F2C8
	bl sub_81284A4
	bl sub_809E2C2
	bl sub_809E2F4
	bl sub_809E304
	bl sub_809E2FC
	bl sub_809E312
	bl sub_809E3AA
	bl sub_809E3B2
	bl sub_8003908
	bl sub_8003A58
	bl sub_809F9C8
	bl sub_809FAF4
	bl sub_809F9DC
	bl sub_8049CF8
	bl sub_804A17A
	bl sub_811FB78
	bl sub_8048C68
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x1D
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #4
	// byteFlagIdx
	mov R1, #1
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #4
	mov R1, #0xE7
	mov R2, #2
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #4
	// byteFlagIdx
	mov r1, #0x6d
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #4
	// byteFlagIdx
	mov R1, #0x83
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	mov R1, #1
	mov R2, #3
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #4
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	mov R1, #6
	mov R2, #8
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov R0, #0
	mov R1, #0xF
	mov R2, #2
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov R0, #5
	mov R1, #0xEE
	mov R2, #3
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov R0, #0
	mov r1, #0x31
	mov R2, #2
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov R0, #0
	mov r1, #0x3b
	mov R2, #3
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov r1, #0x72
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	mov r1, #0x73
	mov R2, #7
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov R0, #9
	mov R1, #0xF6
	mov R2, #9
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x87
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x89
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #8
	// byteFlagIdx
	mov r1, #0x7d
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0xA
	// byteFlagIdx
	mov R1, #0x99
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0xB
	mov R1, #0xFD
	mov R2, #3
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov r1, #0x70
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x8A
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0xC
	mov R1, #0xD7
	mov R2, #4
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x8C
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0xC
	// byteFlagIdx
	mov R1, #0xE6
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0xF
	mov R1, #0xF9
	mov R2, #7
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x36
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #1
	mov r1, #0x38
	mov R2, #2
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x3a
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #1
	mov r1, #0x64
	mov R2, #0x19
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov r1, #0x7b
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x7F
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x81
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #1
	mov R1, #0x8E
	mov R2, #9
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x86
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #1
	mov R1, #0xCE
	mov R2, #6
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0x10
	// byteFlagIdx
	mov R1, #1
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #6
	// byteFlagIdx
	mov R1, #0x8E
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #6
	mov R1, #0x8F
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	mov R1, #0x82
	mov R2, #2
	bl setFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x85
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_80355A8
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov r1, #0x39
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0x11
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	bl sub_80AA004
	mov R0, #0
	bl sub_80AA104
	bl sub_802D638
	bl sub_80356EC
	ldr R0, off_80050E4 // =0x100
	strh R0, [R5,#4]
	str R0, [R5,#0x44]
	str R0, [R5,#0x58]
	mov R0, #0
	strb R0, [R5,#6]
	strb R0, [R5,#7]
	strb R0, [R5,#8]
	mov R0, #0
	str R0, [R5,#0x24]
	str R0, [R5,#0x34]
	str R0, [R5,#0x48]
	str R0, [R5,#0x28]
	str R0, [R5,#0x38]
	str R0, [R5,#0x4C]
	str R0, [R5,#0x2C]
	str R0, [R5,#0x3C]
	str R0, [R5,#0x50]
	mov R0, #4
	str R0, [R5,#0x30]
	str R0, [R5,#0x40]
	str R0, [R5,#0x54]
	bl sub_803532C
	bl sub_8021D36
	mov R0, R10
	// memBlock
	ldr R0, [R0,#0x48]
	mov r1, #0x3c
	mov R2, #3
	mul R1, R2
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_8021C68
	ldr R0, off_80050E8 // =byte_80213AC
	mov R1, #0
	bl sub_8021AB4
	bl sub_81376E8
	bl sub_8137700
	bl sub_8137808
	bl sub_80133EC
	bl sub_813B768
	bl sub_813B934
	bl sub_813C324
	bl sub_8121144
	bl sub_800AAF2
	bl sub_800AB22
	mov R0, #1
	bl sub_802E240
	bl reqBBS_813E616
	bl reqBBS_initMemory_813F9DA
	mov R0, #0x17
	mov r1, #0x3a
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x3d
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x3e
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x3f
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl reqBBS_8140984
	pop {R4-R7,pc}
off_80050E4: .word 0x100
off_80050E8: .word byte_80213AC
.endfunc // sub_8004DF0

.func
.thumb_func
// () -> void
cb_80050EC:
	push {R4-R7,lr}
	ldr R0, off_8005108 // =GameStateJumptable
	mov R5, R10
	ldr R5, [R5,#0x3C] // Toolkit.gamestate
	ldrb R1, [R5]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl change_20013F0_800151C // () -> int
	bl rng_800154C // () -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8005108: .word GameStateJumptable
GameStateJumptable: .word sub_8005148+1, sub_8005268+1, sub_80052D8+1, sub_8005360+1
	.word sub_800536E+1, sub_80053E4+1, sub_8005462+1, sub_800555A+1
	.word sub_8005642+1, sub_80056B8+1, sub_800572C+1, sub_80057A0+1
	.word sub_80055CE+1, sub_8005814+1, sub_800585A+1
.endfunc // cb_80050EC

.func
.thumb_func
sub_8005148:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	bne loc_8005152
	pop {pc}
loc_8005152:
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_8003566
	bl sub_8002668
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_802F0D8
	bl sub_802F0F4
	bl sub_8036EFE
	bl sub_8036F24
	bl sub_809F90C
	mov R0, #0x17
	mov r1, #0x31
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	bl sub_803F6B0
	bl sub_803F500
	bl sub_8006C22
	mov R0, #0x17
	mov r1, #0x41
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80051AA
	bl sub_813C3AC
loc_80051AA:
	mov R5, R10
	ldr R5, [R5,#0x3C]
	bl sub_8000FAC
	bl sub_80355EC
	mov R0, #0
	bl sub_8001172
	mov R0, #0
	strb R0, [R5,#0x15]
	strb R0, [R5,#0xE]
	strb R0, [R5,#3]
	str R0, [R5,#0x68]
	mov R0, #0x17
	mov R1, #0x19
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov R1, #1
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov R1, #2
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov R1, #0
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov R1, #7
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x39
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x32
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #1
	mov R1, #0xBB
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_8033948
	ldr R0, off_8005264 // =0x1740
	bl sub_8001778
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	bl sub_8030A30
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	bl sub_8001708
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	bl sub_8034B4C
	ldrb R0, [R5,#4]
	bl sub_8030A00
	mov R0, #0x17
	mov r1, #0x3d
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x3e
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x3f
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldrb R0, [R5,#0x16]
	ldrb R1, [R5,#0x17]
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #8
	strb R0, [R5,#0x16]
	mov R0, #0x10
	strb R0, [R5,#0x17]
	mov R0, R10
	ldr R0, [R0,#0x14]
	mov R1, #0
	strb R1, [R0,#0x10]
	mov R0, #4
	strb R0, [R5]
	pop {pc}
off_8005264: .word 0x1740
.endfunc // sub_8005148

.func
.thumb_func
sub_8005268:
	push {lr}
	bl sub_8036F24
	bl sub_8034BB8
	mov R0, #0
	strb R0, [R5,#0xE]
	bl sub_800378C
	bl sub_8003BA2
	bl npc_800461E
	bl sub_80048D2
	bl sub_809F942
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80037F4
	bl loc_802FFF4
	bl sub_8030580
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl loc_80058D0
	bl sub_8005A8C
	bl sub_8005B6A
	bl sub_8005AF4
	pop {pc}
.endfunc // sub_8005268

.func
.thumb_func
sub_80052D8:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl sub_803F530
	bne locret_800531A
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_800531A
	bl sub_800531C
locret_800531A:
	pop {pc}
.endfunc // sub_80052D8

.func
.thumb_func
sub_800531C:
	push {lr}
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0xC
	strb R0, [R5]
	ldr R0, [R5,#0x1C]
	bl sub_80071D4
.endfunc // sub_800531C

	ldr R0, off_8005358 // =byte_2011800
	ldr R1, off_800535C // =0x2180
	mov R2, #0
	mvn R2, R2
	bl sub_800098C
	pop {pc}
off_8005358: .word byte_2011800
off_800535C: .word 0x2180
.func
.thumb_func
sub_8005360:
	push {lr}
	bl loc_8007800
	bne locret_800536C
	mov R0, #0
	strb R0, [R5]
locret_800536C:
	pop {pc}
.endfunc // sub_8005360

.func
.thumb_func
sub_800536E:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_80053DA
	ldr R0, [R5,#0x68]
	sub R0, #1
	blt loc_80053D2
	str R0, [R5,#0x68]
	cmp r0, #0x29
	bne loc_80053BC
	mov r0, #0x72
	add R0, #0xFF
	bl sound_play // () -> void
	b locret_80053DA
loc_80053BC:
	cmp R0, #0x9E
	bne locret_80053DA
	ldrb R0, [R5,#5]
	cmp R0, #1
	bgt locret_80053DA
	ldr R1, off_80053DC // =byte_80053E0
	lsl r0, r0, #1
	ldrh R0, [R1,R0]
	bl sound_play // () -> void
	b locret_80053DA
loc_80053D2:
	bl chatbox_8040818
	bl sub_8005C04
locret_80053DA:
	pop {pc}
off_80053DC: .word byte_80053E0
byte_80053E0: .byte 0xE7, 0x0, 0xEC, 0x0
.endfunc // sub_800536E

.func
.thumb_func
sub_80053E4:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_800545C
	bl chatbox_8040818
	mov r0, #0x25
	bl sub_80035A2
	bl sub_80341AA
	mov R7, R10
	ldr R0, [R7]
	mov R1, #8
	strb R1, [R0]
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldr R0, sub_8005460 // =0x40
	bl sub_8001778
locret_800545C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_80053E4

.func
.thumb_func
sub_8005460:
	lsl r0, r0, #1
.endfunc // sub_8005460

.func
.thumb_func
// () -> void
sub_8005462:
	push {r7,lr}
	ldr R7, off_8005520 // =byte_200DF20
	ldrb R0, [R7,#0x8] // (byte_200DF28 - 0x200DF20)
	tst R0, R0
	bne loc_8005474
	mov R0, #1
	strb R0, [R7,#0x8] // (byte_200DF28 - 0x200DF20)
	bl sub_811EC50
loc_8005474:
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	ldr R7, off_8005520 // =byte_200DF20
	ldrb R0, [R7,#0x1] // (byte_200DF21 - 0x200DF20)
	cmp R0, #4
	bne loc_80054D6
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_80054D6
	bl sub_8001850
	bl sub_8001820
	bl sub_800182E
	bl sub_811F6C0
	bl sub_8005524
	mov R0, #0x11
	bl sub_8001B6C
	bl sub_8046664 // () -> void
	bl chatbox_8040818
	b locret_800551C
loc_80054D6:
	bl ho_811ED1C // () -> void
	ldrb R0, [R7,#0x1] // (byte_200DF21 - 0x200DF20)
	cmp R0, #4
	bne loc_80054EA
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_800551C
loc_80054EA:
	ldrb R0, [R7,#0x1] // (byte_200DF21 - 0x200DF20)
	cmp R0, #8
	bne locret_800551C
	mov R0, #4
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#0xE]
	bl sub_809E04C
	mov R0, #7
	mov r1, #0x42
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #7
	mov r1, #0x43
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #9
	mov r1, #0x62
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #9
	mov r1, #0x63
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
locret_800551C:
	pop {r7,pc}
	.byte 0, 0
off_8005520: .word byte_200DF20
.endfunc // sub_8005462

.func
.thumb_func
sub_8005524:
	push {lr}
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
.endfunc // sub_8005524

	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x28
	strb R1, [R0]
	pop {pc}
.func
.thumb_func
sub_800555A:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_80055CC
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x24
	strb R1, [R0]
locret_80055CC:
	pop {pc}
.endfunc // sub_800555A

.func
.thumb_func
sub_80055CE:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8005640
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x44
	strb R1, [R0]
locret_8005640:
	pop {pc}
.endfunc // sub_80055CE

.func
.thumb_func
sub_8005642:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_80056B4
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x2c
	strb R1, [R0]
locret_80056B4:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8005642

.func
.thumb_func
sub_80056B8:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_800572A
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x34
	strb R1, [R0]
locret_800572A:
	pop {pc}
.endfunc // sub_80056B8

.func
.thumb_func
sub_800572C:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_800579E
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x3c
	strb R1, [R0]
locret_800579E:
	pop {pc}
.endfunc // sub_800572C

.func
.thumb_func
sub_80057A0:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8005812
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x40
	strb R1, [R0]
locret_8005812:
	pop {pc}
.endfunc // sub_80057A0

.func
.thumb_func
sub_8005814:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8005858
	bl chatbox_8040818
	bl sub_811F6E0
	bl sub_8005524
locret_8005858:
	pop {pc}
.endfunc // sub_8005814

.func
.thumb_func
sub_800585A:
	push {lr}
	bl sub_80339CC
	bl sub_80039AA
	bl sub_8003AFA
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003BF4
	bl sub_8003E98
	bl sub_800467C
	bl sub_8004298
	bl sub_8004590
	bl sub_8004934
	bl sub_80024AE
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_80058CC
	bl chatbox_8040818
	mov r0, #0x21
	bl sub_80035A2
	bl sub_8004702
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	bl sub_813C3AC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R7, R10
	ldr R0, [R7]
	mov r1, #0x50
	strb R1, [R0]
locret_80058CC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_800585A

loc_80058D0:
	push {r5,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R0, [R5]
	cmp R0, #4
	bne locret_800593C
	bl sub_809E462
	bne locret_800593C
	bl sub_8005F28
	bne locret_800593C
	mov R0, #1
	bl sub_811EBE0
	bne locret_800593C
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_800593C
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne locret_800593C
	ldr R0, [R5,#0x18]
	add R0, #0x1C
	bl sub_8031A7A
	add r4, r1, #0
	cmp R4, #1
	blt locret_800593C
	cmp R4, #0xF
	bgt locret_800593C
	ldr R1, off_8005940 // =0x16F0
	add r1, r1, r4
	add r0, r1, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne locret_800593C
	mov R2, R10
	ldr R2, [R2,#0x14]
	mov R0, #1
	strb R0, [R2,#0x10]
	strb R4, [R2,#0x11]
	mov R0, #0
	strb R0, [R2,#0x12]
	ldr R2, [R2,#0x14]
	mov R0, #0x10
	sub R4, #1
	mul R4, R0
	add r2, r2, r4
	ldrb R0, [R2,#2]
	ldr R1, off_8005944 // =off_8005948
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
locret_800593C:
	pop {r5,pc}
	.byte 0, 0
off_8005940: .word 0x16F0
off_8005944: .word off_8005948
off_8005948: .word sub_800596C+1
	.word sub_8005990+1
	.word sub_80059B4+1
	.word sub_80059D0+1
	.word sub_80059EC+1
	.word sub_8005A00+1
	.word sub_8005A0C+1
	.word sub_8005A28+1
	.word sub_8005A50+1
.func
.thumb_func
sub_800596C:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8035738
	mov R0, #0x10
	strb R0, [R5]
	pop {pc}
.endfunc // sub_800596C

.func
.thumb_func
sub_8005990:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #4
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8035738
	mov R0, #0x10
	strb R0, [R5]
	pop {pc}
.endfunc // sub_8005990

.func
.thumb_func
sub_80059B4:
	push {lr}
	mov R0, #0x17
	mov R1, #3
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8005A78 // =byte_8098A02
	mov R1, #0
	bl init_s_02011C50_8036E90
	pop {pc}
.endfunc // sub_80059B4

.func
.thumb_func
sub_80059D0:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8005A80 // =dword_8098A78
	mov R1, #0
	bl init_s_02011C50_8036E90
	pop {pc}
.endfunc // sub_80059D0

.func
.thumb_func
sub_80059EC:
	push {lr}
	mov R0, #0x17
	mov R1, #3
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8005A7C // =unk_8098A2E
	mov R1, #0
	bl init_s_02011C50_8036E90
	pop {pc}
.endfunc // sub_80059EC

.func
.thumb_func
sub_8005A00:
	push {lr}
	ldr R0, off_8005A84 // =unk_809B5AD
	mov R1, #0
	bl init_s_02011C50_8036E90
	pop {pc}
.endfunc // sub_8005A00

.func
.thumb_func
sub_8005A0C:
	push {lr}
	mov R0, #0x17
	mov R1, #3
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8005A88 // =dword_8098B1C
	mov R1, #0
	bl init_s_02011C50_8036E90
	pop {pc}
.endfunc // sub_8005A0C

.func
.thumb_func
sub_8005A28:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8035738
	mov r0, #0x3c
	str R0, [R5,#0x68]
	mov R0, #0x10
	strb R0, [R5]
	pop {pc}
.endfunc // sub_8005A28

.func
.thumb_func
sub_8005A50:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x38
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8035738
	mov R0, #0xA0
	str R0, [R5,#0x68]
	mov R0, #0x10
	strb R0, [R5]
	pop {pc}
off_8005A78: .word byte_8098A02
off_8005A7C: .word unk_8098A2E
off_8005A80: .word dword_8098A78
off_8005A84: .word unk_809B5AD
off_8005A88: .word dword_8098B1C
.endfunc // sub_8005A50

.func
.thumb_func
sub_8005A8C:
	push {r5,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R0, [R5]
	cmp R0, #4
	bne locret_8005AF2
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x17
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005AF2
	bl sub_809E462
	bne locret_8005AF2
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005AF2
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x3e
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005AF2
	bl sub_8005F28
	bne locret_8005AF2
	mov R0, #1
	bl sub_811EBE0
	bne locret_8005AF2
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8005AF2
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne locret_8005AF2
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8005AF2
	bl sub_80AA4C0
	beq locret_8005AF2
	mov R1, #1
	bl gameState_8005BC8 // (BattleSettings *bt, bool a2) -> void
	mov r0, #0x2c
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8005AF2:
	pop {r5,pc}
.endfunc // sub_8005A8C

.func
.thumb_func
sub_8005AF4:
	push {r5,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R0, [R5]
	cmp R0, #4
	bne locret_8005B68
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x17
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005B68
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x3d
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005B68
	bl sub_809E462
	bne locret_8005B68
	bl sub_8005F28
	bne locret_8005B68
	mov R0, #1
	bl sub_811EBE0
	bne loc_8005B64
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8005B68
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne locret_8005B68
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8005B68
	mov R0, #8
	bl sub_811F7EC
	beq locret_8005B68
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #7
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005B68
	mov r0, #0x79
	bl sound_play // () -> void
	bl updatePlayerGameState_800107A // () -> void
	bl sub_811EC10
	bl sub_8003962
	bl sub_8003AB2
loc_8005B64:
	mov R0, #0x18
	strb R0, [R5]
locret_8005B68:
	pop {r5,pc}
.endfunc // sub_8005AF4

.func
.thumb_func
sub_8005B6A:
	push {r5,lr}
	pop {r5,pc}
.endfunc // sub_8005B6A

	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R0, [R5]
	cmp R0, #4
	bne locret_8005BC6
	mov R0, #0x17
	mov R1, #0x17
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005BC6
	bl sub_809E462
	bne locret_8005BC6
	bl sub_8005F28
	bne locret_8005BC6
	mov R0, #1
	bl sub_811EBE0
	bne locret_8005BC6
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8005BC6
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne locret_8005BC6
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8005BC6
	mov R0, #0x17
	mov r1, #0x39
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_8005BC6
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R1, [R0]
	ldrh R0, [R0,#2]
	mov R2, #4
	tst R0, R2
	beq locret_8005BC6
	bl sub_8005E86
locret_8005BC6:
	pop {r5,pc}
.func
.thumb_func
// (BattleSettings *bt, bool a2) -> void
gameState_8005BC8:
	push {R4-R7,lr}
	add r7, r1, #0
	mov R5, R10
	ldr R5, [R5,#0x3C] // Toolkit.gamestate
	mov R6, R10
	ldr R6, [R6,#0x40] // Toolkit.unk_2001C04
	str R0, [R5,#0x1C] // GameState.currBattleData
	bl sub_802D254 // () -> int
	ldr R1, dword_8005C00 // =0x4000
	tst R0, R1
	beq loc_8005BE4
	ldr R0, [R5,#0x1C] // GameState.currBattleData
	str R0, [R6,#0x1C]
loc_8005BE4:
	ldrh R0, [R5,#0x4] // GameState.MapSelect
	strh R0, [R5,#0xC] // GameState.unk_0C
	tst R7, R7
	beq loc_8005BF0
	bl updatePlayerGameState_800107A // () -> void
loc_8005BF0:
	mov R0, #8
	strb R0, [R5]
	bl musicGameState_8000784 // () -> void
	mov r0, #0x78
	bl sound_play // () -> void
	pop {R4-R7,pc}
dword_8005C00: .word 0x4000
.endfunc // gameState_8005BC8

.func
.thumb_func
sub_8005C04:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	str R0, [R5,#0x20]
	mov r0, #0x25
	bl sub_80035A2
	mov R5, R10
	ldr R1, [R5,#0x14]
	ldr R0, [R1,#0x14]
	mov R2, #0x10
	ldrb R3, [R1,#0x11]
	sub R3, #1
	mul R3, R2
	add r0, r0, r3
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	bl sub_8001708
	ldr R0, off_8005CE4 // =0x40
	bl sub_8001778
	mov R5, R10
	ldr R7, [R5,#0x14]
	ldr R5, [R5,#0x3C]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x1B
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8005C80
	ldrb R1, [R7]
	ldrb R2, [R5,#4]
	mov R3, #0x80
	add r4, r1, #0
	eor R4, R2
	tst R4, R3
	beq loc_8005C80
	tst R1, R3
	bne loc_8005C60
	mov r6, #0x48
	b loc_8005C62
loc_8005C60:
	mov r6, #0x34
loc_8005C62:
	ldr R0, [R5,#0x18]
	ldr R1, [R0,#0x1C]
	ldr R2, [R0,#0x20]
	ldr R3, [R0,#0x24]
	ldrb R4, [R0,#0x10]
	add r6, r6, r5
	str R1, [R6]
	str R2, [R6,#4]
	str R3, [R6,#8]
	str R4, [R6,#0xC]
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	lsl r1, r1, #8
	orr R1, R0
	str R1, [R6,#0x10]
loc_8005C80:
	mov R0, #0x17
	mov R1, #0x1B
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldrb R0, [R7,#0x12]
	cmp R0, #1
	beq loc_8005CA2
	cmp R0, #2
	beq loc_8005CAE
	mov R1, #2
	strb R1, [R7,#0x10]
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	ldr R3, [R7,#0xC]
	ldrb R4, [R7,#3]
	ldrh R6, [R7]
	b loc_8005CB8
loc_8005CA2:
	ldr R1, [R5,#0x34]
	ldr R2, [R5,#0x38]
	ldr R3, [R5,#0x3C]
	ldr R4, [R5,#0x40]
	ldr R6, [R5,#0x44]
	b loc_8005CB8
loc_8005CAE:
	ldr R1, [R5,#0x48]
	ldr R2, [R5,#0x4C]
	ldr R3, [R5,#0x50]
	ldr R4, [R5,#0x54]
	ldr R6, [R5,#0x58]
loc_8005CB8:
	str R1, [R5,#0x24]
	str R2, [R5,#0x28]
	str R3, [R5,#0x2C]
	str R4, [R5,#0x30]
	lsr r7, r6, #8
	mov R0, #0xFF
	and R6, R0
	mov R1, #0
	strb R1, [R5]
	ldrb R1, [R5,#5]
	strb R1, [R5,#0xD]
	ldrb R1, [R5,#4]
	ldrb R2, [R5,#0xC]
	strb R1, [R5,#0xC]
	strb R6, [R5,#4]
	strb R7, [R5,#5]
	mov R7, R10
	ldr R7, [R7,#0x40]
	mov R0, #0
	strh R0, [R7,#0x12]
	strh R0, [R7,#0x14]
	pop {R4-R7,pc}
off_8005CE4: .word 0x40
.endfunc // sub_8005C04

.func
.thumb_func
subsystem_launchBBS:
	push {R4-R7,lr}
	bl reqBBS_813E07C
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrh R0, [R5,#4]
	strh R0, [R5,#0xC]
	bl updatePlayerGameState_800107A // () -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x1C
	strb R0, [R5]
	pop {R4-R7,pc}
.endfunc // subsystem_launchBBS

.func
.thumb_func
subsystem_launchReqBBS:
	push {R4-R7,lr}
	bl reqBBS_init_s_2005780
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrh R0, [R5,#4]
	strh R0, [R5,#0xC]
	bl updatePlayerGameState_800107A // () -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x30
	strb R0, [R5]
	pop {R4-R7,pc}
.endfunc // subsystem_launchReqBBS

.func
.thumb_func
subsystem_launchShop:
	push {R4-R7,lr}
	bl sub_8046CC8
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrh R0, [R5,#4]
	strh R0, [R5,#0xC]
	bl updatePlayerGameState_800107A // () -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r1, #0x20
	strb R1, [R5]
	pop {R4-R7,pc}
.endfunc // subsystem_launchShop

.func
.thumb_func
subsystem_launchChipTrader:
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_8120A38
	add r0, r0, r1
	add r0, r0, r3
	cmp R0, R4
	bge loc_8005D5C
	mov R0, #1
	pop {r4,r5,pc}
loc_8005D5C:
	add r0, r4, #0
	bl sub_804A2CC
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldr R1, [R5,#0x18]
	ldr R0, [R1,#0x1C]
	str R0, [R5,#0x24]
	ldr R0, [R1,#0x20]
	str R0, [R5,#0x28]
	ldr R0, [R1,#0x24]
	str R0, [R5,#0x2C]
	ldrb R0, [R1,#0x10]
	str R0, [R5,#0x30]
	mov r1, #0x24
	strb R1, [R5]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	pop {r4,r5,pc}
.endfunc // subsystem_launchChipTrader

.func
.thumb_func
sub_8005D88:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	str R0, [R5,#0x20]
	mov r0, #0x25
	bl sub_80035A2
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_80385F0
	bl sub_8006C22
	bl sub_813C3AC
	pop {R4-R7,pc}
.endfunc // sub_8005D88

.func
.thumb_func
sub_8005DBE:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	str R0, [R5,#0x20]
	mov r0, #0x25
	bl sub_80035A2
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_803FB28
	bl sub_813C3AC
	pop {R4-R7,pc}
.endfunc // sub_8005DBE

.func
.thumb_func
dead_8005DF0:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	str R0, [R5,#0x20]
	mov r0, #0x25
	bl sub_80035A2
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8138294
	bl sub_813C3AC
	pop {R4-R7,pc}
.endfunc // dead_8005DF0

.func
.thumb_func
dead_8005E22:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	str R0, [R5,#0x20]
	mov r0, #0x25
	bl sub_80035A2
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8038A9C
	bl sub_813C3AC
	pop {R4-R7,pc}
.endfunc // dead_8005E22

.func
.thumb_func
dead_8005E54:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	mov R0, #0
	str R0, [R5,#0x20]
	mov r0, #0x25
	bl sub_80035A2
	bl sub_8005F40
	bl sub_8005F6C
	bl sub_80027C4
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl loc_803D1AC // () -> void
	bl sub_813C3AC
	pop {R4-R7,pc}
.endfunc // dead_8005E54

.func
.thumb_func
sub_8005E86:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrh R0, [R5,#4]
	strh R0, [R5,#0xC]
	bl updatePlayerGameState_800107A // () -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x28
	strb R0, [R5]
	pop {R4-R7,pc}
.endfunc // sub_8005E86

.func
.thumb_func
sub_8005EA2:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrh R0, [R5,#4]
	strh R0, [R5,#0xC]
	bl updatePlayerGameState_800107A // () -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r1, #0x2c
	strb R1, [R5]
	pop {R4-R7,pc}
	.byte 0, 0
.endfunc // sub_8005EA2

.func
.thumb_func
subsystem_launchMail:
	push {r4,r5,lr}
	bl sub_8127990
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldr R1, [R5,#0x18]
	ldr R0, [R1,#0x1C]
	str R0, [R5,#0x24]
	ldr R0, [R1,#0x20]
	str R0, [R5,#0x28]
	ldr R0, [R1,#0x24]
	str R0, [R5,#0x2C]
	ldrb R0, [R1,#0x10]
	str R0, [R5,#0x30]
	mov r1, #0x34
	strb R1, [R5]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	pop {r4,r5,pc}
.endfunc // subsystem_launchMail

.func
.thumb_func
sub_8005EEC:
	push {R4-R7,lr}
	mov R4, R10
	ldr R4, [R4,#0x14]
	mov R3, #1
	strb R3, [R4,#0x10]
	add r3, r1, #1
	strb R3, [R4,#0x11]
	str R0, [R4,#0x14]
	strb R2, [R4,#0x12]
	pop {R4-R7,pc}
.endfunc // sub_8005EEC

.func
.thumb_func
sub_8005F00:
	push {R4-R7,lr}
	bl sub_8005EEC
	mov R4, R10
	ldr R4, [R4,#0x3C]
	mov R0, #0x10
	strb R0, [R4]
	bl sub_8035738
	pop {R4-R7,pc}
.endfunc // sub_8005F00

.func
.thumb_func
sub_8005F14:
	push {R4-R7,lr}
	bl sub_8005EEC
	mov R4, R10
	ldr R4, [R4,#0x3C]
	mov R0, #0x14
	strb R0, [R4]
	bl sub_8035738
	pop {R4-R7,pc}
.endfunc // sub_8005F14

.func
.thumb_func
sub_8005F28:
	mov R0, R10
	ldr R0, [R0,#0x14]
	ldrb R1, [R0,#0x10]
	cmp R1, #0
	mov PC, LR
.endfunc // sub_8005F28

.func
.thumb_func
sub_8005F32:
	mov R3, R10
	ldr R3, [R3,#0x14]
	ldr R0, [R3,#0x14]
	ldrb R1, [R3,#0x11]
	sub R1, #1
	ldrb R2, [R3,#0x12]
	mov PC, LR
.endfunc // sub_8005F32

.func
.thumb_func
sub_8005F40:
	push {R4-R7,lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_8001974
.endfunc // sub_8005F40

	bl sub_8001AFC
	bl sub_80023A8
	bl sub_8001820
	bl sub_800182E
	bl sub_80024A2
	bl sub_8001788
	bl sub_80017A0
	pop {R4-R7,pc}
.func
.thumb_func
sub_8005F6C:
	push {R4-R7,lr}
	bl sub_802FDB0
	bl sub_802FF2C
	pop {R4-R7,pc}
.endfunc // sub_8005F6C

.func
.thumb_func
sub_8005F78:
	push {R4-R7,lr}
	bl loc_802FDB4
	bl sub_802FF2C
	pop {R4-R7,pc}
.endfunc // sub_8005F78

.func
.thumb_func
sub_8005F84:
	push {R4-R7,lr}
	ldr R0, off_8005FB0 // =0x40
	bl sub_8001778
	bl sub_809F68C
	bl chatbox_8040818
	mov r0, #0x40
	bl chatbox_8045F2C // (int a1) ->
	mov R7, R10
	ldr R0, [R7]
	mov R1, #4
	strb R1, [R0]
	ldr R0, [R7,#0x3C]
	mov R1, #0
	strb R1, [R0]
	mov R1, #8
	strb R1, [R0,#0x16]
	pop {R4-R7,pc}
	.byte 0, 0
off_8005FB0: .word 0x40
off_8005FB4: .word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word loc_80064BE+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_80063C0+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
	.word sub_8006366+1
	.word sub_800647C+1
off_8006040: .word unk_3001B60
	.word byte_3001750
	.word 0xFF
	.word 0x81010
	.word 0x3001B60
	.word 0x3001750
	.byte 0xFF
	.word 0x10000000
	.word 0x60100810
	.word 0x5003001B
	.word 0xFF030017
	.word 0x10000000
	.word 0x60000C10
	.word 0x5003001B
	.word 0xFF030017
	.word 0x10000000
	.word 0x60100C10
	.word 0x5003001B
	.word 0xFF030017
	.word 0x9000000
	.word 0x60000C0A
	.word 0x5003001B
	.word 0xFF030017
	.word 0x9000000
	.word 0x60040C0A
	.word 0x5003001B
	.word 0xFF030017
	.word 0xF000000
	.word 0x60000C0D
	.word 0x5003001B
	.word 0xFF030017
	.word 0xF000000
	.word 0x60100C0D
	.word 0x5003001B
	.word 0xFF030017
	.word 0xF000000
	.word 0x6000080D
	.word 0x5003001B
	.word 0xFF030017
	.word 0xF000000
	.word 0x6010080D
	.word 0x5003001B
	.word 0xFF030017
	.word 0x10000000
	.word 0x60000810
	.word 0x5003001B
	.word 0xFF030017
	.word 0x10000000
	.word 0x60100810
	.word 0xF003001B
	.word 0xFF030018
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  1
	.byte  8
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0xF0
	.byte 0x18
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  1
	.byte  8
	.byte 0x10
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte  0
	.byte 0xC
	.byte  4
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0xC
	.byte 0x10
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  1
	.byte  0
	.byte 0xC
	.byte 0x10
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte 0xA
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte 0xA
	.byte 0xC
	.byte  5
	.byte 0x80
	.byte 0x1C
	.byte  0
	.byte  3
	.byte 0x90
	.byte 0x18
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  5
	.byte  4
	.byte 0xC
	.byte  0
	.byte 0x80
	.byte 0x1C
	.byte  0
	.byte  3
	.byte 0x90
	.byte 0x18
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  5
	.byte  4
	.byte 0xC
	.byte  3
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0xE
	.byte 0xB
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.word loc_80C0B0E
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.word loc_80C0B0E
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x70
	.byte 0x18
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  1
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x70
	.byte 0x18
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  1
	.byte 0xC
	.byte 0x10
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0xF
	.byte 0xF
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte 0xF
	.byte 0xF
	.byte 0xC
	.byte 0x10
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte 0xC
	.byte 0x10
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x60
	.byte 0x1B
	.byte  0
	.byte  3
	.byte 0x50
	.byte 0x17
	.byte  0
	.byte  3
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte  0
	.byte 0xC
	.byte 0x10
.endfunc // sub_8005F84

.func
.thumb_func
// (int a1, int a2) -> void
engine_setScreeneffect:
	mov R3, #0
	b loc_8006276
loc_8006274:
	mov r3, #0x20
loc_8006276:
	push {r5,lr}
	cmp R0, #0xFF
	beq locret_80062C0
	ldr R5, off_80063BC // =byte_200A440
	add r5, r5, r3
	push {r0,r1}
	add r0, r3, #0
	bl sub_8006330
	pop {r0,r1}
	strb R0, [R5,#0x1] // (byte_200A441 - 0x200A440)
	ldr R2, off_80062C4 // =off_8006040
	lsl r0, r0, #2
	add r2, r2, r0
	ldr R0, [R2]
	str R0, [R5,#0x10] // (off_200A450 - 0x200A440)
	ldr R0, [R2,#4]
	str R0, [R5,#0x14] // (off_200A454 - 0x200A440)
	ldrb R0, [R2,#0xC]
	strh R0, [R5,#0x18] // (word_200A458 - 0x200A440)
	ldrb R0, [R2,#0xD]
	strh R0, [R5,#0x1C] // (word_200A45C - 0x200A440)
	ldrb R0, [R2,#0xE]
	strh R0, [R5,#0x8] // (word_200A448 - 0x200A440)
	ldrb R0, [R2,#0xF]
	lsl r0, r0, #4
	strh R0, [R5,#0xA] // (word_200A44A - 0x200A440)
	mov R0, #1
	strb R0, [R5]
	mov R0, #1
	strb R0, [R5,#0x3] // (byte_200A443 - 0x200A440)
	mov R0, #0
	strb R0, [R5,#0x2] // (byte_200A442 - 0x200A440)
	cmp R1, #0xFF
	bne loc_80062BE
	add R1, #1
loc_80062BE:
	strh R1, [R5,#0x4] // (word_200A444 - 0x200A440)
locret_80062C0:
	pop {r5,pc}
	.balign 4, 0x00
off_80062C4: .word off_8006040
.endfunc // engine_setScreeneffect

.func
.thumb_func
sub_80062C8:
	ldr R0, off_80063BC // =byte_200A440
	ldrb R1, [R0,#0x3] // (byte_200A443 - 0x200A440)
	ldrb R0, [R0,#0x1] // (byte_200A441 - 0x200A440)
	mov PC, LR
.endfunc // sub_80062C8

.func
.thumb_func
sub_80062D0:
	push {r5,lr}
	mov R0, #0
	b loc_80062DA
.endfunc // sub_80062D0

.func
.thumb_func
sub_80062D6:
	push {r5,lr}
	mov r0, #0x20
loc_80062DA:
	ldr R5, off_80063BC // =byte_200A440
	add r5, r5, r0
	bl sub_8006330
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x20
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r5,pc}
.endfunc // sub_80062D6

.func
.thumb_func
sub_80062EC:
	push {lr}
	bl sub_80062D0
	bl sub_80062D6
	pop {pc}
.endfunc // sub_80062EC

.func
.thumb_func
// () -> zf
engine_isScreeneffectAnimating:
	mov R3, #0
	b loc_80062FE
loc_80062FC:
	mov r3, #0x20
loc_80062FE:
	ldr R0, off_80063BC // =byte_200A440
	add r0, r0, r3
	ldrb R0, [R0,#0x3] // (byte_200A443 - 0x200A440)
	mov R1, #1
	cmp R0, R1
	mov PC, LR
.endfunc // engine_isScreeneffectAnimating

.func
.thumb_func
subsystem_triggerTransition_800630A:
	push {R4-R7,lr}
	ldr R5, off_80063BC // =byte_200A440
	mov R4, #0
loc_8006310:
	ldrb R0, [R5]
	mov R1, #1
	cmp R0, R1
	bne loc_8006322
	ldrb R2, [R5,#1]
	ldr R0, off_800632C // =off_8005FB4
	ldr R0, [R0,R2]
	mov LR, PC
	bx r0
loc_8006322:
	add r5, #0x20
	add R4, #1
	cmp R4, #2
	blt loc_8006310
	pop {R4-R7,pc}
off_800632C: .word off_8005FB4
.endfunc // subsystem_triggerTransition_800630A

.func
.thumb_func
sub_8006330:
	push {r5,lr}
	ldr R5, off_80063BC // =byte_200A440
	add r5, r5, r0
	bl sub_800634C
	ldrb R0, [R5,#0xC]
	add R0, #0x12
	bl sub_800239A
	ldrb R0, [R5,#0xC]
	add R0, #0x13
	bl sub_800239A
	pop {r5,pc}
.endfunc // sub_8006330

.func
.thumb_func
sub_800634C:
	push {r5,lr}
	ldr R5, off_80063BC // =byte_200A440
	add r5, r5, r0
	lsr r2, r0, #4
	strb R2, [R5,#0xC]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#0xD]
	pop {r5,pc}
.endfunc // sub_800634C

.func
.thumb_func
sub_8006366:
	push {R4-R7,lr}
	ldrh R1, [R5,#6]
	ldrh R2, [R5,#4]
	ldrb R3, [R5,#2]
	mov R4, #1
	strb R4, [R5,#2]
	tst R3, R3
	beq loc_800637C
	sub r1, r1, r2
	bge loc_800637C
	mov R1, #0
loc_800637C:
	strh R1, [R5,#6]
	ldrh R2, [R5,#0xA]
	cmp R1, R2
	ble loc_80063B0
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr R1, R2
	orr R1, R3
	add r6, r1, #0
	ldrh R0, [R5,#8]
	ldrh R2, [R5,#0x18]
	ldrb R3, [R5,#0xC]
	add R3, #0x12
	ldr R4, [R5,#0x10]
	bl sub_8002378
	ldrh R0, [R5,#8]
	add r1, r6, #0
	ldrh R2, [R5,#0x1C]
	ldrb R3, [R5,#0xC]
	add R3, #0x13
	ldr R4, [R5,#0x14]
	bl sub_8002378
	pop {R4-R7,pc}
loc_80063B0:
	ldr R0, off_80063BC // =byte_200A440
	sub r0, r5, r0
	bl sub_8006330
	pop {R4-R7,pc}
	.balign 4, 0x00
off_80063BC: .word byte_200A440
.endfunc // sub_8006366

.func
.thumb_func
sub_80063C0:
	push {R4-R7,lr}
	ldrh R1, [R5,#6]
	ldrh R2, [R5,#4]
	ldrb R3, [R5,#2]
	mov R4, #1
	strb R4, [R5,#2]
	tst R3, R3
	beq loc_80063D6
	sub r1, r1, r2
	bge loc_80063D6
	mov R1, #0
loc_80063D6:
	strh R1, [R5,#6]
	ldrh R2, [R5,#0xA]
	cmp R1, R2
	ble loc_800640E
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr R1, R2
	orr R1, R3
	add r6, r1, #0
	ldrh R0, [R5,#8]
	ldrh R2, [R5,#0x18]
	ldrb R3, [R5,#0xC]
	add R3, #0x12
	ldr R4, [R5,#0x10]
	bl sub_8002378
	ldrh R0, [R5,#8]
	add r1, r6, #0
	ldrh R2, [R5,#0x1C]
	ldrb R3, [R5,#0xC]
	add R3, #0x13
	ldr R4, [R5,#0x14]
	bl sub_8002378
	bl sub_8006414
	pop {R4-R7,pc}
loc_800640E:
	bl sub_8006444
	pop {R4-R7,pc}
.endfunc // sub_80063C0

.func
.thumb_func
sub_8006414:
	push {R4-R7,lr}
	ldr R4, [R5,#0x10]
	ldrh R0, [R5,#0x18]
	lsl r0, r0, #5
	add r4, r4, r0
	ldrh R0, [R5,#8]
	add r1, r6, #0
	mov R2, #2
	ldrb R3, [R5,#0xC]
	add R3, #0x14
	bl sub_8002378
	ldr R4, [R5,#0x14]
	ldrh R0, [R5,#0x1C]
	lsl r0, r0, #5
	add r4, r4, r0
	ldrh R0, [R5,#8]
	add r1, r6, #0
	mov R2, #4
	ldrb R3, [R5,#0xC]
	add R3, #0x15
	bl sub_8002378
	pop {R4-R7,pc}
.endfunc // sub_8006414

.func
.thumb_func
sub_8006444:
	push {r6,lr}
	ldr R2, dword_8006474 // =0x10
	cmp R1, R2
	blt loc_800645E
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr R1, R2
	orr R1, R3
	add r6, r1, #0
	bl sub_8006414
	pop {r6,pc}
loc_800645E:
	ldr R0, off_8006478 // =byte_200A440
	sub r0, r5, r0
	bl sub_800634C
	mov r0, #0x64
	mov R1, #0xFF
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_800647C
	pop {r6,pc}
dword_8006474: .word 0x10
off_8006478: .word byte_200A440
.endfunc // sub_8006444

.func
.thumb_func
sub_800647C:
	push {R4-R7,lr}
	ldrh R1, [R5,#6]
	ldrh R2, [R5,#4]
	add r1, r1, r2
	ldrh R2, [R5,#0xA]
	cmp R1, R2
	blt loc_8006490
	mov R0, #0
	strb R0, [R5,#3]
	add r1, r2, #0
loc_8006490:
	strh R1, [R5,#6]
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr R1, R2
	orr R1, R3
	add r6, r1, #0
	ldrh R0, [R5,#8]
	ldrh R2, [R5,#0x18]
	ldrb R3, [R5,#0xC]
	add R3, #0x12
	ldr R4, [R5,#0x10]
	bl sub_8002378
	ldrh R0, [R5,#8]
	add r1, r6, #0
	ldrh R2, [R5,#0x1C]
	ldrb R3, [R5,#0xC]
	add R3, #0x13
	ldr R4, [R5,#0x14]
	bl sub_8002378
	pop {R4-R7,pc}
.endfunc // sub_800647C

loc_80064BE:
	push {R4-R7,lr}
	ldrh R1, [R5,#6]
	ldrh R2, [R5,#4]
	add r1, r1, r2
	mov R7, #0
	ldrh R2, [R5,#0xA]
	cmp R1, R2
	blt loc_80064D6
	mov R0, #0
	strb R0, [R5,#3]
	mov R7, #4
	add r1, r2, #0
loc_80064D6:
	strh R1, [R5,#6]
	lsr r1, r1, #4
	lsl r2, r1, #5
	lsl r3, r1, #0xa
	orr R1, R2
	orr R1, R3
	add r6, r1, #0
	ldrh R0, [R5,#8]
	ldrh R2, [R5,#0x18]
	ldrb R3, [R5,#0xC]
	add R3, #0x12
	ldr R4, [R5,#0x10]
	bl sub_8002378
	ldrh R0, [R5,#8]
	add r1, r6, #0
	ldrh R2, [R5,#0x1C]
	ldrb R3, [R5,#0xC]
	add R3, #0x13
	ldr R4, [R5,#0x14]
	bl sub_8002378
	ldr R0, off_800650C // =off_8006510
	ldr R0, [R0,R7]
	mov LR, PC
	bx r0
	pop {R4-R7,pc}
off_800650C: .word off_8006510
off_8006510: .word sub_8006518+1
	.word sub_8006580+1
.func
.thumb_func
sub_8006518:
	push {R4-R7,lr}
	mov R0, #0
	ldr R1, off_80065B8 // =byte_80065BC
	ldrb R2, [R5,#0xD]
	lsl r2, r2, #1
	ldrh R1, [R1,R2]
	mov R2, #0x10
	mov R3, #0x14
	ldr R4, [R5,#0x10]
	bl sub_8002378
	mov R0, #0
	ldr R1, off_80065B8 // =byte_80065BC
	ldrb R2, [R5,#0xD]
	lsl r2, r2, #1
	ldrh R1, [R1,R2]
	mov R2, #0x10
	mov R3, #0x15
	ldr R4, [R5,#0x14]
	bl sub_8002378
	ldr R0, off_80065B4 // =dword_20096D0
	mov r1, #0x40
	str R1, [R0]
	ldrb R0, [R5,#0xD]
	add R0, #1
	cmp R0, #0x10
	bge loc_8006552
	strb R0, [R5,#0xD]
loc_8006552:
	mov R0, R10
	ldr R0, [R0,#8]
	mov r2, #0x40
	ldrh R1, [R0,#6]
	orr R1, R2
	strh R1, [R0,#6]
	ldrh R1, [R0,#8]
	orr R1, R2
	strh R1, [R0,#8]
	ldrh R1, [R0,#0xA]
	orr R1, R2
	strh R1, [R0,#0xA]
	ldrh R2, [R5,#6]
	lsr r2, r2, #4
	mov R1, #0
	orr R1, R2
	lsl r2, r2, #4
	lsl r2, r2, #4
	orr R1, R2
	lsl r2, r2, #4
	orr R1, R2
	strh R1, [R0,#2]
	pop {R4-R7,pc}
.endfunc // sub_8006518

.func
.thumb_func
sub_8006580:
	push {R4-R7,lr}
	mov R0, #0x14
	bl sub_800239A
	mov R0, #0x15
	bl sub_800239A
	ldr R0, off_80065B4 // =dword_20096D0
	mov R1, #0
	str R1, [R0]
	strb R1, [R5,#0xD]
	mov R0, R10
	ldr R0, [R0,#8]
	mov r2, #0x40
	ldrh R1, [R0,#6]
	bic R1, R2
	strh R1, [R0,#6]
	ldrh R1, [R0,#8]
	bic R1, R2
	strh R1, [R0,#8]
	ldrh R1, [R0,#0xA]
	bic R1, R2
	strh R1, [R0,#0xA]
	mov R1, #0
	strh R1, [R0,#2]
	pop {R4-R7,pc}
off_80065B4: .word dword_20096D0
off_80065B8: .word byte_80065BC
byte_80065BC: .byte 0x0, 0x10, 0x0, 0x18, 0x0, 0x20, 0x0, 0x28, 0x0, 0x30, 0x0, 0x38
	.byte 0x0, 0x40, 0x0, 0x48, 0x0, 0x50, 0x0, 0x58, 0x0, 0x60, 0x0, 0x68
	.byte 0x0, 0x70, 0x0, 0x78, 0x0, 0x7C, 0x0, 0x7C, 0x0, 0x7C, 0x0, 0x0
byte_80065E0: .byte 0x0, 0x0, 0x6, 0x0, 0xC, 0x0, 0x12, 0x0, 0x19, 0x0, 0x1F, 0x0, 0x25
	.byte 0x0, 0x2B, 0x0, 0x31, 0x0, 0x38, 0x0, 0x3E, 0x0, 0x44, 0x0, 0x4A, 0x0
	.byte 0x50, 0x0, 0x56, 0x0, 0x5C, 0x0, 0x61, 0x0, 0x67, 0x0, 0x6D, 0x0, 0x73
	.byte 0x0, 0x78, 0x0, 0x7E, 0x0, 0x83, 0x0, 0x88, 0x0, 0x8E, 0x0, 0x93, 0x0
	.byte 0x98, 0x0, 0x9D, 0x0, 0xA2, 0x0, 0xA7, 0x0, 0xAB, 0x0, 0xB0, 0x0, 0xB5
	.byte 0x0, 0xB9, 0x0, 0xBD, 0x0, 0xC1, 0x0, 0xC5, 0x0, 0xC9, 0x0, 0xCD, 0x0
	.byte 0xD1, 0x0, 0xD4, 0x0, 0xD8, 0x0, 0xDB, 0x0, 0xDE, 0x0, 0xE1, 0x0, 0xE4
	.byte 0x0, 0xE7, 0x0, 0xEA, 0x0, 0xEC, 0x0, 0xEE, 0x0, 0xF1, 0x0, 0xF3, 0x0
	.byte 0xF4, 0x0, 0xF6, 0x0, 0xF8, 0x0, 0xF9, 0x0, 0xFB, 0x0, 0xFC, 0x0, 0xFD
	.byte 0x0, 0xFE, 0x0, 0xFE, 0x0, 0xFF, 0x0, 0xFF, 0x0, 0xFF, 0x0
byte_8006660: .byte 0x0, 0x1, 0xFF, 0x0, 0xFF, 0x0, 0xFF, 0x0, 0xFE, 0x0, 0xFE, 0x0
	.byte 0xFD, 0x0, 0xFC, 0x0, 0xFB, 0x0, 0xF9, 0x0, 0xF8, 0x0, 0xF6, 0x0
	.byte 0xF4, 0x0, 0xF3, 0x0, 0xF1, 0x0, 0xEE, 0x0, 0xEC, 0x0, 0xEA, 0x0
	.byte 0xE7, 0x0, 0xE4, 0x0, 0xE1, 0x0, 0xDE, 0x0, 0xDB, 0x0, 0xD8, 0x0
	.byte 0xD4, 0x0, 0xD1, 0x0, 0xCD, 0x0, 0xC9, 0x0, 0xC5, 0x0, 0xC1, 0x0
	.byte 0xBD, 0x0, 0xB9, 0x0, 0xB5, 0x0, 0xB0, 0x0, 0xAB, 0x0, 0xA7, 0x0
	.byte 0xA2, 0x0, 0x9D, 0x0, 0x98, 0x0, 0x93, 0x0, 0x8E, 0x0, 0x88, 0x0
	.byte 0x83, 0x0, 0x7E, 0x0, 0x78, 0x0, 0x73, 0x0, 0x6D, 0x0, 0x67, 0x0
	.byte 0x61, 0x0, 0x5C, 0x0, 0x56, 0x0, 0x50, 0x0, 0x4A, 0x0, 0x44, 0x0
	.byte 0x3E, 0x0, 0x38, 0x0, 0x31, 0x0, 0x2B, 0x0, 0x25, 0x0, 0x1F, 0x0
	.byte 0x19, 0x0, 0x12, 0x0, 0xC, 0x0, 0x6, 0x0
byte_80066E0: .byte 0x0, 0x0, 0xFA, 0xFF, 0xF4, 0xFF, 0xEE, 0xFF, 0xE7, 0xFF
	.byte 0xE1, 0xFF, 0xDB, 0xFF, 0xD5, 0xFF, 0xCF, 0xFF, 0xC8, 0xFF
	.byte 0xC2, 0xFF, 0xBC, 0xFF, 0xB6, 0xFF, 0xB0, 0xFF, 0xAA, 0xFF
	.byte 0xA4, 0xFF, 0x9F, 0xFF, 0x99, 0xFF, 0x93, 0xFF, 0x8D, 0xFF
	.byte 0x88, 0xFF, 0x82, 0xFF, 0x7D, 0xFF, 0x78, 0xFF, 0x72, 0xFF
	.byte 0x6D, 0xFF, 0x68, 0xFF, 0x63, 0xFF, 0x5E, 0xFF, 0x59, 0xFF
	.byte 0x55, 0xFF, 0x50, 0xFF, 0x4B, 0xFF, 0x47, 0xFF, 0x43, 0xFF
	.byte 0x3F, 0xFF, 0x3B, 0xFF, 0x37, 0xFF, 0x33, 0xFF, 0x2F, 0xFF
	.byte 0x2C, 0xFF, 0x28, 0xFF, 0x25, 0xFF, 0x22, 0xFF, 0x1F, 0xFF
	.byte 0x1C, 0xFF, 0x19, 0xFF, 0x16, 0xFF, 0x14, 0xFF, 0x12, 0xFF
	.byte 0xF, 0xFF, 0xD, 0xFF, 0xC, 0xFF, 0xA, 0xFF, 0x8, 0xFF
	.byte 0x7, 0xFF, 0x5, 0xFF, 0x4, 0xFF, 0x3, 0xFF, 0x2, 0xFF
	.byte 0x2, 0xFF, 0x1, 0xFF, 0x1, 0xFF, 0x1, 0xFF, 0x0, 0xFF
	.byte 0x1, 0xFF, 0x1, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x2, 0xFF
	.byte 0x3, 0xFF, 0x4, 0xFF, 0x5, 0xFF, 0x7, 0xFF, 0x8, 0xFF
	.byte 0xA, 0xFF, 0xC, 0xFF, 0xD, 0xFF, 0xF, 0xFF, 0x12, 0xFF
	.byte 0x14, 0xFF, 0x16, 0xFF, 0x19, 0xFF, 0x1C, 0xFF, 0x1F, 0xFF
	.byte 0x22, 0xFF, 0x25, 0xFF, 0x28, 0xFF, 0x2C, 0xFF, 0x2F, 0xFF
	.byte 0x33, 0xFF, 0x37, 0xFF, 0x3B, 0xFF, 0x3F, 0xFF, 0x43, 0xFF
	.byte 0x47, 0xFF, 0x4B, 0xFF, 0x50, 0xFF, 0x55, 0xFF, 0x59, 0xFF
	.byte 0x5E, 0xFF, 0x63, 0xFF, 0x68, 0xFF, 0x6D, 0xFF, 0x72, 0xFF
	.byte 0x78, 0xFF, 0x7D, 0xFF, 0x82, 0xFF, 0x88, 0xFF, 0x8D, 0xFF
	.byte 0x93, 0xFF, 0x99, 0xFF, 0x9F, 0xFF, 0xA4, 0xFF, 0xAA, 0xFF
	.byte 0xB0, 0xFF, 0xB6, 0xFF, 0xBC, 0xFF, 0xC2, 0xFF, 0xC8, 0xFF
	.byte 0xCF, 0xFF, 0xD5, 0xFF, 0xDB, 0xFF, 0xE1, 0xFF, 0xE7, 0xFF
	.byte 0xEE, 0xFF, 0xF4, 0xFF, 0xFA, 0xFF, 0x0, 0x0, 0x6, 0x0
	.byte 0xC, 0x0, 0x12, 0x0, 0x19, 0x0, 0x1F, 0x0, 0x25, 0x0
	.byte 0x2B, 0x0, 0x31, 0x0, 0x38, 0x0, 0x3E, 0x0, 0x44, 0x0
	.byte 0x4A, 0x0, 0x50, 0x0, 0x56, 0x0, 0x5C, 0x0, 0x61, 0x0
	.byte 0x67, 0x0, 0x6D, 0x0, 0x73, 0x0, 0x78, 0x0, 0x7E, 0x0
	.byte 0x83, 0x0, 0x88, 0x0, 0x8E, 0x0, 0x93, 0x0, 0x98, 0x0
	.byte 0x9D, 0x0, 0xA2, 0x0, 0xA7, 0x0, 0xAB, 0x0, 0xB0, 0x0
	.byte 0xB5, 0x0, 0xB9, 0x0, 0xBD, 0x0, 0xC1, 0x0, 0xC5, 0x0
	.byte 0xC9, 0x0, 0xCD, 0x0, 0xD1, 0x0, 0xD4, 0x0, 0xD8, 0x0
	.byte 0xDB, 0x0, 0xDE, 0x0, 0xE1, 0x0, 0xE4, 0x0, 0xE7, 0x0
	.byte 0xEA, 0x0, 0xEC, 0x0, 0xEE, 0x0, 0xF1, 0x0, 0xF3, 0x0
	.byte 0xF4, 0x0, 0xF6, 0x0, 0xF8, 0x0, 0xF9, 0x0, 0xFB, 0x0
	.byte 0xFC, 0x0, 0xFD, 0x0, 0xFE, 0x0, 0xFE, 0x0, 0xFF, 0x0
	.byte 0xFF, 0x0, 0xFF, 0x0, 0x0, 0x1, 0xFF, 0x0, 0xFF, 0x0
	.byte 0xFF, 0x0, 0xFE, 0x0, 0xFE, 0x0, 0xFD, 0x0, 0xFC, 0x0
	.byte 0xFB, 0x0, 0xF9, 0x0, 0xF8, 0x0, 0xF6, 0x0, 0xF4, 0x0
	.byte 0xF3, 0x0, 0xF1, 0x0, 0xEE, 0x0, 0xEC, 0x0, 0xEA, 0x0
	.byte 0xE7, 0x0, 0xE4, 0x0, 0xE1, 0x0, 0xDE, 0x0, 0xDB, 0x0
	.byte 0xD8, 0x0, 0xD4, 0x0, 0xD1, 0x0, 0xCD, 0x0, 0xC9, 0x0
	.byte 0xC5, 0x0, 0xC1, 0x0, 0xBD, 0x0, 0xB9, 0x0, 0xB5, 0x0
	.byte 0xB0, 0x0, 0xAB, 0x0, 0xA7, 0x0, 0xA2, 0x0, 0x9D, 0x0
	.byte 0x98, 0x0, 0x93, 0x0, 0x8E, 0x0, 0x88, 0x0, 0x83, 0x0
	.byte 0x7E, 0x0, 0x78, 0x0, 0x73, 0x0, 0x6D, 0x0, 0x67, 0x0
	.byte 0x61, 0x0, 0x5C, 0x0, 0x56, 0x0, 0x50, 0x0, 0x4A, 0x0
	.byte 0x44, 0x0, 0x3E, 0x0, 0x38, 0x0, 0x31, 0x0, 0x2B, 0x0
	.byte 0x25, 0x0, 0x1F, 0x0, 0x19, 0x0, 0x12, 0x0, 0xC, 0x0
	.byte 0x6, 0x0
.endfunc // sub_8006580

.func
.thumb_func
sub_80068E0:
	push {lr}
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
.endfunc // sub_80068E0

.func
.thumb_func
sub_80068E8:
	push {R4-R7,lr}
	b loc_80068F2
.endfunc // sub_80068E8

.func
.thumb_func
sub_80068EC:
	push {R4-R7,lr}
	ldr R4, off_8006908 // =unk_2008E80
	ldr R5, off_800690C // =0x500
loc_80068F2:
	ldr R7, off_800691C // =byte_20081B0
	strb R2, [R7,#0x1] // (byte_20081B1 - 0x20081B0)
	lsr r3, r3, #0x10
	strh R3, [R7,#0x2] // (word_20081B2 - 0x20081B0)
	str R0, [R7,#0x4] // (dword_20081B4 - 0x20081B0)
	str R1, [R7,#0x8] // (dword_20081B8 - 0x20081B0)
	str R4, [R7,#0xC] // (dword_20081BC - 0x20081B0)
	str R5, [R7,#0x10] // (dword_20081C0 - 0x20081B0)
	mov R0, #1
	strb R0, [R7]
	pop {R4-R7,pc}
off_8006908: .word unk_2008E80
off_800690C: .word 0x500
.endfunc // sub_80068EC

.func
.thumb_func
sub_8006910:
	push {lr}
	ldr R1, off_800691C // =byte_20081B0
	mov R0, #0x80
	strb R0, [R1]
	pop {pc}
	.balign 4, 0x00
off_800691C: .word byte_20081B0
.endfunc // sub_8006910

.func
.thumb_func
sub_8006920:
	push {R4-R7,lr}
	add r4, r0, #0
	ldr R5, off_8006B8C // =unk_20096A0
	add r0, r5, #0
	mov r1, #0x30
	ldr R2, off_8006988 // =CpuSet_ZeroFillWord+1
	mov LR, PC
	bx r2
	mov R0, #0
	strh R0, [R5,#0x4] // (dword_20096A4 - 0x20096A0)
	mov R0, #2
	lsl r0, r0, #0x10
	str R0, [R5,#0xC] // (dword_20096AC - 0x20096A0)
	ldr R0, [R4]
	str R0, [R5,#0x8] // (dword_20096A8 - 0x20096A0)
	ldr R0, [R4,#4]
	str R0, [R5,#0x10] // (dword_20096B0 - 0x20096A0)
	ldr R0, [R4,#8]
	str R0, [R5,#0x14] // (dword_20096B4 - 0x20096A0)
	ldr R0, [R4,#0xC]
	str R0, [R5,#0x18] // (dword_20096B8 - 0x20096A0)
	ldr R0, [R4,#0x10]
	str R0, [R5,#0x1C] // (dword_20096BC - 0x20096A0)
	ldr R0, [R4,#0x14]
	str R0, [R5,#0x20] // (dword_20096C0 - 0x20096A0)
	ldr R0, [R4,#0x18]
	str R0, [R5,#0x24] // (dword_20096C4 - 0x20096A0)
	ldr R0, [R4,#0x1C]
	str R0, [R5,#0x28] // (dword_20096C8 - 0x20096A0)
	ldr R0, [R4,#0x20]
	str R0, [R5,#0x2C] // (dword_20096CC - 0x20096A0)
	ldr R0, [R4,#0x24]
	strb R0, [R5,#0x3] // (byte_20096A3 - 0x20096A0)
	ldr R0, off_8006B88 // =unk_2008980
	mov R1, #0xA0
	lsl r1, r1, #3
	mov R2, #0xA0
	bl sub_8006B94
	ldr R0, off_8006B88 // =unk_2008980
	ldr R1, off_8006980 // =Window0HorizontalDimensions
	mov R2, #4
	ldr R3, dword_8006984 // =0xA2600000
	ldr R4, off_800698C // =sub_80068EC+1
	mov LR, PC
	bx r4
	pop {R4-R7,pc}
	.byte 0, 0
off_8006980: .word Window0HorizontalDimensions
dword_8006984: .word 0xA2600000
off_8006988: .word CpuSet_ZeroFillWord+1
off_800698C: .word sub_80068EC+1
.endfunc // sub_8006920

.func
.thumb_func
sub_8006990:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	ldr R5, off_8006B8C // =unk_20096A0
	mov R7, R10
	ldr R6, [R7,#0x1C]
	mov r0, #0x3f
	strb R0, [R6,#8]
	mov R0, #0x17
	strb R0, [R6,#0xA]
	add r0, r5, #0
	add r0, #0x24
	ldr R1, off_8006A58 // =sub_8003694+1
	mov LR, PC
	bx r1
	tst R2, R2
	beq loc_80069D0
	ldrh R2, [R5,#0x4] // (dword_20096A4 - 0x20096A0)
	cmp R2, #0xFF
	bpl loc_80069D0
	push {R0-R2}
	bl sub_8006A6C
	pop {R0-R2}
	bl sub_8006B3A
	ldr R6, [R7,#0x1C]
	strh R0, [R6]
	mov R0, #1
	strh R0, [R6,#4]
loc_80069D0:
	ldr R6, [R7,#0x20]
	mov r0, #0x48
	strb R0, [R6]
	mov r0, #0x37
	strb R0, [R6,#1]
	mov R0, #0x10
	strb R0, [R6,#3]
	ldr R0, [R5,#0xC] // (dword_20096AC - 0x20096A0)
	lsr r0, r0, #0x10
	strb R0, [R6,#2]
	ldr R0, [R5,#0x4] // (dword_20096A4 - 0x20096A0)
	ldr R1, [R5,#0x8] // (dword_20096A8 - 0x20096A0)
	ldr R2, [R5,#0x14] // (dword_20096B4 - 0x20096A0)
	add r1, r1, r2
	ldr R3, [R5,#0x1C] // (dword_20096BC - 0x20096A0)
	cmp R1, R3
	bgt loc_80069F4
	str R1, [R5,#0x8] // (dword_20096A8 - 0x20096A0)
loc_80069F4:
	lsr r1, r1, #0x10
	add r0, r0, r1
	ldrb R3, [R5,#0x3] // (byte_20096A3 - 0x20096A0)
	cmp R0, R3
	bgt loc_8006A02
	str R0, [R5,#0x4] // (dword_20096A4 - 0x20096A0)
	b loc_8006A04
loc_8006A02:
	str R3, [R5,#0x4] // (dword_20096A4 - 0x20096A0)
loc_8006A04:
	ldr R0, [R5,#0xC] // (dword_20096AC - 0x20096A0)
	ldr R1, [R5,#0x10] // (dword_20096B0 - 0x20096A0)
	ldr R2, [R5,#0x18] // (dword_20096B8 - 0x20096A0)
	add r1, r1, r2
	ldr R3, [R5,#0x20] // (dword_20096C0 - 0x20096A0)
	cmp R1, R3
	bgt loc_8006A14
	str R1, [R5,#0x10] // (dword_20096B0 - 0x20096A0)
loc_8006A14:
	add r0, r0, r1
	ldrb R3, [R5,#0x3] // (byte_20096A3 - 0x20096A0)
	lsl r3, r3, #0x10
	cmp R0, R3
	bgt loc_8006A22
	str R0, [R5,#0xC] // (dword_20096AC - 0x20096A0)
	b loc_8006A24
loc_8006A22:
	str R3, [R5,#0xC] // (dword_20096AC - 0x20096A0)
loc_8006A24:
	ldr R0, [R5,#0xC] // (dword_20096AC - 0x20096A0)
	lsr r0, r0, #0x10
	cmp R0, #0x10
	blt loc_8006A32
	mov R0, #0x10
	lsl r0, r0, #0x10
	str R0, [R5,#0xC] // (dword_20096AC - 0x20096A0)
loc_8006A32:
	ldr R0, [R5,#0x4] // (dword_20096A4 - 0x20096A0)
	cmp R0, #0xFF
	blt loc_8006A44
	mov R0, #1
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
loc_8006A44:
	mov R0, #0
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.word dword_8006A54
dword_8006A54: .word 0xFFFF1FFF
off_8006A58: .word sub_8003694+1
.endfunc // sub_8006990

.func
.thumb_func
sub_8006A5C:
	push {R4-R7,lr}
	ldr R0, off_8006A68 // =sub_8006910+1
	mov LR, PC
	bx r0
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8006A68: .word sub_8006910+1
.endfunc // sub_8006A5C

.func
.thumb_func
sub_8006A6C:
	push {r5,r7,lr}
	sub sp, sp, #8
	str R1, [SP]
	str R2, [SP,#4]
	mov R12, R0
	lsl r5, r2, #3
	sub R5, #8
	mov R8, R5
	mov R9, R2
	ldr R5, off_8006B88 // =unk_2008980
	sub r7, r1, r2
	add r4, r1, #0
	lsl r6, r1, #3
	lsl r3, r7, #0x10
	ble loc_8006AA6
	cmp R7, #0xA0
	bmi loc_8006A9C
	ldr R0, off_8006B88 // =unk_2008980
	mov R2, #0xA0
	lsl r1, r2, #3
	bl sub_8006B94
	add sp, sp, #8
	pop {r5,r7,pc}
loc_8006A9C:
	ldr R0, off_8006B88 // =unk_2008980
	add r2, r7, #0
	lsl r1, r2, #3
	bl sub_8006B94
loc_8006AA6:
	ldr R2, [SP,#4]
	mov R1, R9
	mov R0, R9
	mul R1, R0
	add r0, r2, #0
	mul R2, R0
	sub r0, r2, r1
	svc 8
	lsl r1, r7, #3
	mov R2, R12
	add r4, r0, r2
	lsl r4, r4, #0x10
	bmi loc_8006AD8
	lsr r4, r4, #0x10
	cmp R4, #0xF0
	bmi loc_8006AC8
	mov R4, #0xF0
loc_8006AC8:
	sub r3, r2, r0
	lsl r3, r3, #0x10
	bpl loc_8006AD2
	mov R3, #0
	b loc_8006ADC
loc_8006AD2:
	lsr r3, r3, #0x10
	cmp R3, #0xF0
	bmi loc_8006ADC
loc_8006AD8:
	mov R4, #0
	mov R3, #0xFF
loc_8006ADC:
	lsl r0, r3, #8
	orr R0, R4
	lsl r1, r1, #0x10
	bmi loc_8006AF0
	lsr r1, r1, #0x10
	mov R3, #0xA0
	lsl r3, r3, #3
	cmp R1, R3
	bpl loc_8006AF0
	strh R0, [R5,R1]
loc_8006AF0:
	add r1, r6, #0
	mov R2, R8
	add r1, r1, r2
	lsl r1, r1, #0x10
	bmi loc_8006B06
	lsr r1, r1, #0x10
	mov R3, #0xA0
	lsl r3, r3, #3
	cmp R1, R3
	bpl loc_8006B06
	strh R0, [R5,R1]
loc_8006B06:
	sub R2, #8
	mov R8, R2
	mov R0, R9
	sub R0, #1
	mov R9, R0
	add R7, #1
	ldr R4, [SP]
	cmp R7, R4
	blt loc_8006AA6
	ldr R2, [SP,#4]
	add r7, r7, r2
	lsl r7, r7, #0x10
	lsr r7, r7, #0x10
	cmp R7, #0xA0
	bpl loc_8006B36
	lsl r3, r7, #3
	ldr R0, off_8006B88 // =unk_2008980
	add r0, r0, r3
	mov R1, #0xA0
	sub r1, r1, r7
	lsl r1, r1, #3
	mov R2, #0xA0
	bl sub_8006B94
loc_8006B36:
	add sp, sp, #8
	pop {r5,r7,pc}
.endfunc // sub_8006A6C

.func
.thumb_func
sub_8006B3A:
	push {lr}
	mov R12, R0
	sub r4, r1, r2
	mov R3, #0
	mvn R3, R3
	eor R4, R3
	bmi loc_8006B82
	sub r1, r2, r4
	add r4, r1, #0
	mul R1, R4
	add r0, r2, #0
	mul R0, R2
	sub r0, r0, r1
	svc 8
	mov R2, R12
	add r4, r0, r2
	lsl r4, r4, #0x10
	bmi loc_8006B78
	bcs loc_8006B78
	lsr r4, r4, #0x10
	cmp R4, #0xF0
	bmi loc_8006B68
	mov R4, #0xF0
loc_8006B68:
	sub r3, r2, r0
	lsl r3, r3, #0x10
	bpl loc_8006B72
	mov R3, #0
	b loc_8006B7C
loc_8006B72:
	lsr r3, r3, #0x10
	cmp R3, #0xF0
	bmi loc_8006B7C
loc_8006B78:
	mov R4, #0
	mov R3, #0xFF
loc_8006B7C:
	lsl r0, r3, #8
	orr R0, R4
	pop {pc}
loc_8006B82:
	mov R0, #0
	pop {pc}
	.balign 4, 0x00
off_8006B88: .word unk_2008980
off_8006B8C: .word unk_20096A0
	.word byte_20081B0
.endfunc // sub_8006B3A

.func
.thumb_func
sub_8006B94:
	push {r5,lr}
	add r3, r2, #1
	lsl r2, r2, #8
	orr R2, R3
	ldr R3, dword_8006BB4 // =0xFFFF0000
	orr R2, R3
	ldr R3, dword_8006BB8 // =0xFFFFFF00
	ldr R5, off_8006BBC // =0x101
	sub R1, #4
loc_8006BA6:
	str R2, [R0,R1]
	sub R1, #4
	str R3, [R0,R1]
	sub r2, r2, r5
	sub R1, #4
	bpl loc_8006BA6
	pop {r5,pc}
dword_8006BB4: .word 0xFFFF0000
dword_8006BB8: .word 0xFFFFFF00
off_8006BBC: .word 0x101
.endfunc // sub_8006B94

.func
.thumb_func
// () -> void
CpuSet_toolKit:
	push {lr}
	ldr R0, .Lp_ToolkitPointers // =ToolkitPointers
	ldr R1, off_8006BD4 // =eToolkit
	mov R2, #0x3C // (ToolkitPointersEnd+4 - ToolkitPointers)
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_8006BD4 // =eToolkit
	mov R10, R0
	pop {r0}
	bx r0
off_8006BD4: .word eToolkit
.Lp_ToolkitPointers: .word ToolkitPointers
ToolkitPointers: .word i_joGameSubsysSel
	.word sJoystick
	.word unk_200AC40
	.word sCamera
	.word unk_2011C50
	.word unk_2011BB0
	.word s_2034880
	.word unk_200F3A0
	.word unk_2009740
	.word iCurrFrame
	.word unk_30025C0
	.word sChatbox
	.word unk_20384F0
	.word sSubmenu
ToolkitPointersEnd: .word byte_200A220
.endfunc // CpuSet_toolKit

.func
.thumb_func
CpuSet_toolkit_wrapper:
	push {lr}
	bl CpuSet_toolKit // () -> void
	pop {r0}
	bx r0
.endfunc // CpuSet_toolkit_wrapper

.func
.thumb_func
sub_8006C22:
	push {lr}
	push {R4-R7}
	bl change_20013F0_800151C // () -> int
	// anti-cheat stuff? this block up to the copy
	// seems to do nothing due to the ands which zero
	// r5 was supposedly an offset to be added to the pointers
	// in sGameState
	mov R1, #0
	and R0, R1
	add r4, r0, #0
	ldr R5, off_8006C98 // =eUnusedGameStateBaseOffset
	ldr R3, [R5]
	mov R0, #0
	and R3, R0
	str R4, [R5]
	ldr R0, off_8006C94 // =eGameState
	// src
	add r0, r0, r3
	ldr R1, off_8006C94 // =eGameState
	// dest
	add r1, r1, r4
	// size
	ldr R2, dword_8006C9C // =0x35BC
	ldr R3, off_8006CA0 // =copyWords_80014EC+1
	mov LR, PC
	// copyWords_80014EC(&sGameState, &sGameState, 0x35BC);
	bx r3
	mov R0, R10
	mov R1, #0x3C // (ToolkitPointersEnd - ToolkitPointers)
	add r0, r0, r1
	mov R1, #0
	ldr R2, off_8006C94 // =eGameState
	ldr R3, [R5]
	add r2, r2, r3
	ldr R3, off_8006CA8 // =GameStateOffsets
copy22Words_8006C5A:
	// GameStateOffsets
	ldr R4, [R3,R1]
	// sGameState + offset
	add r4, r4, r2
	// store in eToolkit
	str R4, [R0,R1]
	add R1, #4
	cmp r1, #(GameStateOffsetsEnd - GameStateOffsets + 8)
	blt copy22Words_8006C5A
	pop {R4-R7}
	pop {r0}
	bx r0
.endfunc // sub_8006C22

.func
.thumb_func
sub_8006C6C:
	push {R4-R7,lr}
	ldr R5, off_8006C98 // =eUnusedGameStateBaseOffset
	mov R0, R10
	mov r1, #0x3c
	add r0, r0, r1
	mov R1, #0
	ldr R2, off_8006C94 // =eGameState
	ldr R3, [R5]
	mov R4, #0
	and R3, R4
	add r2, r2, r3
	ldr R3, off_8006CA8 // =GameStateOffsets
loc_8006C84:
	ldr R4, [R3,R1]
	add r4, r4, r2
	str R4, [R0,R1]
	add R1, #4
	cmp r1, #(GameStateOffsetsEnd - GameStateOffsets + 8)
	blt loc_8006C84
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8006C94: .word eGameState
off_8006C98: .word eUnusedGameStateBaseOffset
dword_8006C9C: .word 0x35BC
off_8006CA0: .word copyWords_80014EC+1
	// unused?
	.word eToolkit
off_8006CA8: .word GameStateOffsets
GameStateOffsets: .word 0x0
	.word 0x84
	.word 0x108
	.word 0x5F8
	.word 0x6B0
	.word 0x15B4
	.word 0x1748
	.word 0x25CC
	.word 0x2610
	.word 0x279C
	.word 0x27B0
	.word 0x27B4
	.word 0x27B8
	.word 0x27C8
	.word 0x2C4C
	.word 0x2F0C
	.word 0x30A0
	.word 0x32A4
	.word 0x34A8
	.word 0x34B0
GameStateOffsetsEnd: .word 0x34B8
.endfunc // sub_8006C6C

.func
.thumb_func
sub_8006D00:
	push {R4-R7,lr}
	ldr R5, off_8006E38 // =eUnusedGameStateBaseOffset
	ldr R4, [R5]
	// memBlock
	add r0, r5, #0
	// size
	mov R1, #0x80
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R0, #0
	and R4, R0
	str R4, [R5]
	bl change_20013F0_800151C // () -> int
	str R0, [R5,#0x4] // (dword_2001064 - 0x2001060)
	mov R6, R10
	mov r0, #0x78
	ldr R6, [R6,R0]
	ldr R4, off_8006DC4 // =byte_20004E0
	ldr R7, off_8006DC8 // =0x200
loc_8006D24:
	sub R7, #1
	blt loc_8006D40
loc_8006D28:
	bl change_20013F0_800151C // () -> int
	mov R1, #0xFF
	and R0, R1
	mov r1, #0x6f
	eor R0, R1
	tst R0, R0
	beq loc_8006D28
	strb R0, [R4,R7]
	mvn R0, R0
	strb R0, [R6,R7]
	b loc_8006D24
loc_8006D40:
	mov R6, R10
	mov r0, #0x7c
	ldr R6, [R6,R0]
	ldr R4, off_8006DCC // =byte_20008A0
	ldr R7, dword_8006DD0 // =0x200
loc_8006D4A:
	sub R7, #1
	blt loc_8006D66
loc_8006D4E:
	bl change_20013F0_800151C // () -> int
	mov R1, #0xFF
	and R0, R1
	mov R1, #0x81
	eor R0, R1
	tst R0, R0
	beq loc_8006D4E
	strb R0, [R4,R7]
	mvn R0, R0
	strb R0, [R6,R7]
	b loc_8006D4A
loc_8006D66:
	mov R6, R10
	mov R0, #0x80
	ldr R6, [R6,R0]
	ldr R4, off_8006DD4 // =byte_2001600
	ldr R7, dword_8006DD8 // =0x4
loc_8006D70:
	sub R7, #1
	blt loc_8006D8C
loc_8006D74:
	bl change_20013F0_800151C // () -> int
	mov R1, #0xFF
	and R0, R1
	mov R1, #0xFE
	eor R0, R1
	tst R0, R0
	beq loc_8006D74
	strb R0, [R4,R7]
	mvn R0, R0
	strb R0, [R6,R7]
	b loc_8006D70
loc_8006D8C:
	ldr R4, off_8006DDC // =dword_2000060
	ldr R6, off_8006DE0 // =dword_802412C
loc_8006D90:
	bl change_20013F0_800151C // () -> int
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	eor R0, R6
	tst R0, R0
	beq loc_8006D90
	str R0, [R4]
	bl sub_8006F54
	ldr R4, off_8006DE4 // =dword_20018B8
	ldr R6, off_8006DE8 // =loc_803ED90
loc_8006DA8:
	bl change_20013F0_800151C // () -> int
	lsl r0, r0, #0xc
	lsr r0, r0, #0xc
	eor R0, R6
	tst R0, R0
	beq loc_8006DA8
	str R0, [R4]
	bl sub_8006FAC
	bl sub_8007036
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8006DC4: .word byte_20004E0
off_8006DC8: .word 0x200
off_8006DCC: .word byte_20008A0
dword_8006DD0: .word 0x200
off_8006DD4: .word byte_2001600
dword_8006DD8: .word 0x4
off_8006DDC: .word dword_2000060
off_8006DE0: .word dword_802412C
off_8006DE4: .word dword_20018B8
off_8006DE8: .word loc_803ED90
.endfunc // sub_8006D00

.func
.thumb_func
sub_8006DEC:
	push {R4-R7,lr}
	mov R4, R10
	ldr R4, [R4,#0x3C]
	ldr R0, [R4,#0x74]
	pop {R4-R7,pc}
.endfunc // sub_8006DEC

.func
.thumb_func
sub_8006DF6:
	push {R4-R7,lr}
	ldr R7, off_8006E38 // =eUnusedGameStateBaseOffset
	ldr R7, [R7,#0x4] // (dword_2001064 - 0x2001060)
	sub R1, #1
loc_8006DFE:
	ldrb R3, [R0,R1]
	eor R3, R7
	strb R3, [R0,R1]
	sub R1, #1
	bge loc_8006DFE
	ldr R0, off_8006E38 // =eUnusedGameStateBaseOffset
	str R7, [R0,#0x4] // (dword_2001064 - 0x2001060)
	pop {R4-R7,pc}
.endfunc // sub_8006DF6

.func
.thumb_func
// (u8 *mem, int size) -> void
save_memSetFlags_8006E0E:
	push {R4-R7,lr}
	ldr R7, off_8006E38 // =eUnusedGameStateBaseOffset
	ldr R7, [R7,#4]
	sub R1, #1
memSetFlags_8006E16:
	ldrb R3, [R0,R1]
	eor R3, R7
	strb R3, [R0,R1]
	sub R1, #1
	// while (a2_size >= 0);
	bge memSetFlags_8006E16
	ldr R0, off_8006E38 // =eUnusedGameStateBaseOffset
	str R7, [R0,#4]
	pop {R4-R7,pc}
.endfunc // save_memSetFlags_8006E0E

.func
.thumb_func
save_8006E26:
	push {R4-R7,lr}
	ldr R7, off_8006E38 // =eUnusedGameStateBaseOffset
loc_8006E2A:
	bl change_20013F0_800151C // () -> int
	mvn R0, R0
	tst R0, R0
	beq loc_8006E2A
	str R0, [R7,#0x4] // (dword_2001064 - 0x2001060)
	pop {R4-R7,pc}
off_8006E38: .word eUnusedGameStateBaseOffset
.endfunc // save_8006E26

.func
.thumb_func
load_8006E3C:
	push {R1-R7,lr}
	ldr R5, off_8006E6C // =byte_20004E0
	mov R7, R10
	mov r1, #0x78
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov r2, #0x6f
	eor R1, R2
	strb R1, [R7,R0]
	pop {R1-R7,pc}
.endfunc // load_8006E3C

.func
.thumb_func
sub_8006E50:
	push {R1-R7,lr}
	ldr R5, off_8006E6C // =byte_20004E0
	mov R7, R10
	mov r1, #0x78
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov r2, #0x6f
	eor R1, R2
	ldrb R2, [R7,R0]
	cmp R1, R2
	beq locret_8006E68
	mov R0, #1
locret_8006E68:
	pop {R1-R7,pc}
	.balign 4, 0x00
off_8006E6C: .word byte_20004E0
.endfunc // sub_8006E50

.func
.thumb_func
// (int idx_2008A0) -> void
modifyToolkit_unk7C_using_2008A0:
	push {R1-R7,lr}
	ldr R5, off_8006EA0 // =byte_20008A0
	mov R7, R10
	mov R1, #0x7C // Toolkit.unk_2004C20
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov R2, #0x81
	eor R1, R2
	strb R1, [R7,R0]
	pop {R1-R7,pc}
.endfunc // modifyToolkit_unk7C_using_2008A0

.func
.thumb_func
sub_8006E84:
	push {R1-R7,lr}
	ldr R5, off_8006EA0 // =byte_20008A0
	mov R7, R10
	mov r1, #0x7c
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov R2, #0x81
	eor R1, R2
	ldrb R2, [R7,R0]
	cmp R1, R2
	beq locret_8006E9C
	mov R0, #1
locret_8006E9C:
	pop {R1-R7,pc}
	.byte 0, 0
off_8006EA0: .word byte_20008A0
.endfunc // sub_8006E84

.func
.thumb_func
sub_8006EA4:
	push {R1-R7,lr}
	add r7, r0, #0
	add r4, r1, #0
	bl sub_8006E84
	bne loc_8006EE4
	cmp R4, #0xFF
	beq loc_8006EE0
	// idx
	add r0, r7, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R3, [R0]
	cmp R3, R4
	beq loc_8006ED2
	ldrb R3, [R0,#1]
	cmp R3, R4
	beq loc_8006ED2
	ldrb R3, [R0,#2]
	cmp R3, R4
	beq loc_8006ED2
	ldrb R3, [R0,#3]
	cmp R3, R4
	bne loc_8006EE4
loc_8006ED2:
	// idx
	add r0, r7, #0
	// searchItem
	add r1, r4, #0
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	ldrb R0, [R0]
	tst R0, R0
	beq loc_8006EE4
loc_8006EE0:
	mov R0, #0
	pop {R1-R7,pc}
loc_8006EE4:
	mov R0, #1
	pop {R1-R7,pc}
.endfunc // sub_8006EA4

.func
.thumb_func
// (int idx_8021DA8, int a2) -> bool
sub_8006EE8:
	push {R1-R7,lr}
	add r7, r0, #0
	add r4, r1, #0
	bl sub_8006E84
	bne loc_8006F1A
	cmp R4, #0xFF
	beq loc_8006F16
	// idx
	add r0, r7, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R3, [R0]
	cmp R3, R4
	beq loc_8006F16
	ldrb R3, [R0,#0x1] // ChipData.unk_01
	cmp R3, R4
	beq loc_8006F16
	ldrb R3, [R0,#0x2] // ChipData.unk_02
	cmp R3, R4
	beq loc_8006F16
	ldrb R3, [R0,#0x3] // ChipData.unk_03
	cmp R3, R4
	bne loc_8006F1A
loc_8006F16:
	mov R0, #0
	pop {R1-R7,pc}
loc_8006F1A:
	mov R0, #1
	pop {R1-R7,pc}
.endfunc // sub_8006EE8

.func
.thumb_func
sub_8006F1E:
	push {R1-R7,lr}
	add r7, r0, #0
	add r4, r1, #0
	bl sub_80070E6
	bne loc_8006F50
	cmp R4, #0xFF
	beq loc_8006F4C
	// idx
	add r0, r7, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R3, [R0]
	cmp R3, R4
	beq loc_8006F4C
	ldrb R3, [R0,#0x1] // ChipData.unk_01
	cmp R3, R4
	beq loc_8006F4C
	ldrb R3, [R0,#0x2] // ChipData.unk_02
	cmp R3, R4
	beq loc_8006F4C
	ldrb R3, [R0,#0x3] // ChipData.unk_03
	cmp R3, R4
	bne loc_8006F50
loc_8006F4C:
	mov R0, #0
	pop {R1-R7,pc}
loc_8006F50:
	mov R0, #1
	pop {R1-R7,pc}
.endfunc // sub_8006F1E

.func
.thumb_func
sub_8006F54:
	push {R0-R7,lr}
	mov R4, R10
	ldr R4, [R4,#0x3C] // Toolkit.gamestate
	ldr R0, [R4,#0x5C] // GameState.protected_zennies
	ldr R1, [R4,#0x74] // GameState.pad_74
	mov R2, #1
	tst R1, R2
	bne loc_8006F68
	mvn R1, R0
	str R1, [R4,#0x6C] // GameState.unk_6C
loc_8006F68:
	ldr R1, off_8006FA8 // =dword_2000060
	ldr R1, [R1]
	eor R0, R1
	mov R1, R10
	mov R2, #0x84
	ldr R1, [R1,R2]
	str R0, [R1]
	pop {R0-R7,pc}
.endfunc // sub_8006F54

.func
.thumb_func
sub_8006F78:
	push {R0-R7,lr}
	mov R4, R10
	ldr R4, [R4,#0x3C] // Toolkit.gamestate
	ldr R0, [R4,#0x5C] // GameState.protected_zennies
	ldr R1, [R4,#0x6C] // GameState.unk_6C
	mvn R1, R1
	cmp R0, R1
	beq loc_8006F90
	ldr R1, [R4,#0x74] // GameState.pad_74
	mov R2, #1
	orr R1, R2
	str R1, [R4,#0x74] // GameState.pad_74
loc_8006F90:
	ldr R1, off_8006FA8 // =dword_2000060
	ldr R1, [R1]
	eor R0, R1
	mov R1, R10
	mov R2, #0x84
	ldr R1, [R1,R2]
	ldr R1, [R1]
	cmp R0, R1
	beq locret_8006FA4
	mov R0, #1
locret_8006FA4:
	pop {R0-R7,pc}
	.balign 4, 0x00
off_8006FA8: .word dword_2000060
.endfunc // sub_8006F78

.func
.thumb_func
sub_8006FAC:
	push {R0-R7,lr}
	mov R4, R10
	ldr R4, [R4,#0x3C]
	ldr R0, [R4,#0x60]
	ldr R1, [R4,#0x74]
	mov R2, #2
	tst R1, R2
	bne loc_8006FC0
	mvn R1, R0
	str R1, [R4,#0x70]
loc_8006FC0:
	ldr R1, off_8007000 // =dword_20018B8
	ldr R1, [R1]
	eor R0, R1
	mov R1, R10
	mov R2, #0x88
	ldr R1, [R1,R2]
	str R0, [R1]
	pop {R0-R7,pc}
.endfunc // sub_8006FAC

.func
.thumb_func
sub_8006FD0:
	push {R0-R7,lr}
	mov R4, R10
	ldr R4, [R4,#0x3C]
	ldr R0, [R4,#0x60]
	ldr R1, [R4,#0x70]
	mvn R1, R1
	cmp R0, R1
	beq loc_8006FE8
	ldr R1, [R4,#0x74]
	mov R2, #2
	orr R1, R2
	str R1, [R4,#0x74]
loc_8006FE8:
	ldr R1, off_8007000 // =dword_20018B8
	ldr R1, [R1]
	eor R0, R1
	mov R1, R10
	mov R2, #0x88
	ldr R1, [R1,R2]
	ldr R1, [R1]
	cmp R0, R1
	beq locret_8006FFC
	mov R0, #1
locret_8006FFC:
	pop {R0-R7,pc}
	.byte 0, 0
off_8007000: .word dword_20018B8
.endfunc // sub_8006FD0

	push {R1-R7,lr}
	bl sub_800708C
	ldr R5, off_8007088 // =unk_2000670
	mov R7, R10
	mov R1, #0x8C
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov R2, #0x8D
	eor R1, R2
	strb R1, [R7,R0]
	pop {R1-R7,pc}
	push {R1-R7,lr}
	bl sub_800708C
	ldr R5, off_8007088 // =unk_2000670
	mov R7, R10
	mov R1, #0x8C
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov R2, #0x8D
	eor R1, R2
	mvn R1, R1
	strb R1, [R7,R0]
	pop {R1-R7,pc}
.func
.thumb_func
sub_8007036:
	push {R1-R7,lr}
	mov R6, R10
	mov R0, #0x8C
	ldr R6, [R6,R0]
	ldr R4, off_8007060 // =unk_2000670
	ldr R7, off_8007064 // =0x100
loc_8007042:
	sub R7, #1
	blt locret_800705E
loc_8007046:
	bl change_20013F0_800151C // () -> int
	mov R1, #0xFF
	and R0, R1
	mov R1, #0x8D
	eor R0, R1
	tst R0, R0
	beq loc_8007046
	strb R0, [R4,R7]
	mvn R0, R0
	strb R0, [R6,R7]
	b loc_8007042
locret_800705E:
	pop {R1-R7,pc}
off_8007060: .word unk_2000670
off_8007064: .word 0x100
.endfunc // sub_8007036

	push {R1-R7,lr}
	bl sub_800708C
	ldr R5, off_8007088 // =unk_2000670
	mov R7, R10
	mov R1, #0x8C
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov R2, #0x8D
	eor R1, R2
	ldrb R2, [R7,R0]
	cmp R1, R2
	beq locret_8007084
	mov R0, #1
locret_8007084:
	pop {R1-R7,pc}
	.balign 4, 0x00
off_8007088: .word unk_2000670
.func
.thumb_func
sub_800708C:
	push {R1-R7,lr}
	ldr R7, off_80070A8 // =word_80070AC
	mov R4, #0
loc_8007092:
	ldrh R3, [R7]
	cmp R3, R0
	beq loc_80070A2
	add R7, #4
	add R4, #1
	cmp R4, #4
	blt loc_8007092
loc_80070A0:
	b loc_80070A0
loc_80070A2:
	ldrh R3, [R7,#2]
	add r0, r3, r1
	pop {R1-R7,pc}
off_80070A8: .word word_80070AC
word_80070AC: .hword 0x1000
byte_80070AE: .byte 0x0, 0x0, 0x10, 0x10, 0x50, 0x0, 0x20, 0x10, 0xDC, 0x0, 0x40
	.byte 0x10, 0xE6, 0x0
.endfunc // sub_800708C

.func
.thumb_func
sub_80070BC:
	push {R1-R7,lr}
	ldr R5, off_8007170 // =byte_2001600
	ldr R4, off_8007174 // =0x2020
	ldr R6, off_8007178 // =0x200
	mov R7, #0
loc_80070C6:
	add r0, r4, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_80070DC
	mov R0, R10
	mov R1, #0x80
	ldr R0, [R0,R1]
	ldrb R1, [R5,R7]
	mov R2, #0xFE
	eor R1, R2
	strb R1, [R0,R7]
loc_80070DC:
	add R4, #1
	add R7, #1
	cmp R7, R6
	blt loc_80070C6
	pop {R1-R7,pc}
.endfunc // sub_80070BC

.func
.thumb_func
sub_80070E6:
	push {R1-R7,lr}
	push {r0}
	bl sub_8006E84
	pop {r0}
	beq locret_8007108
	ldr R5, off_8007170 // =byte_2001600
	mov R7, R10
	mov R1, #0x80
	ldr R7, [R7,R1]
	ldrb R1, [R5,R0]
	mov R2, #0xFE
	eor R1, R2
	ldrb R2, [R7,R0]
	cmp R1, R2
	beq locret_8007108
	mov R0, #1
locret_8007108:
	pop {R1-R7,pc}
.endfunc // sub_80070E6

.func
.thumb_func
sub_800710A:
	push {R1-R7,lr}
	ldr R4, off_8007174 // =0x2020
	ldr R6, off_8007178 // =0x200
	mov R7, #0
loc_8007112:
	add r0, r4, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8007122
	add r0, r7, #0
	bl sub_80070E6
	bne loc_800716A
loc_8007122:
	add R4, #1
	add R7, #1
	cmp R7, R6
	blt loc_8007112
	ldr R4, off_800717C // =0x2220
	ldr R6, off_8007180 // =0x200
	mov R7, #0
loc_8007130:
	add r0, r4, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8007140
	add r0, r7, #0
	bl sub_80070E6
	bne loc_800716A
loc_8007140:
	add R4, #1
	add R7, #1
	cmp R7, R6
	blt loc_8007130
	ldr R4, off_8007184 // =0x1E20
	ldr R6, off_8007188 // =0x200
	mov R7, #0
loc_800714E:
	add r0, r4, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_800715E
	add r0, r7, #0
	bl sub_8006E84
	bne loc_800716A
loc_800715E:
	add R4, #1
	add R7, #1
	cmp R7, R6
	blt loc_800714E
	mov R0, #0
	pop {R1-R7,pc}
loc_800716A:
	mov R0, #1
	pop {R1-R7,pc}
	.byte 0, 0
off_8007170: .word byte_2001600
off_8007174: .word 0x2020
off_8007178: .word 0x200
off_800717C: .word 0x2220
off_8007180: .word 0x200
off_8007184: .word 0x1E20
off_8007188: .word 0x200
.endfunc // sub_800710A

	ldr R1, off_80071BC // =dword_20093A4
	ldr R1, [R1]
	tst R0, R1
	mov PC, LR
	ldr R0, off_80071C0 // =dword_20093A4
	ldr R0, [R0]
	mov PC, LR
.func
.thumb_func
sub_800719A:
	ldr R1, off_80071C4 // =dword_20093A4
	ldr R2, [R1]
	orr R2, R0
	str R2, [R1]
	mov PC, LR
.endfunc // sub_800719A

.func
.thumb_func
sub_80071A4:
	ldr R1, off_80071C8 // =dword_20093A4
	ldr R2, [R1]
	bic R2, R0
	str R2, [R1]
	mov PC, LR
.endfunc // sub_80071A4

	ldr R1, off_80071CC // =dword_20093A4
	str R0, [R1]
	mov PC, LR
.func
.thumb_func
sub_80071B4:
	ldr R1, off_80071D0 // =dword_20093A4
	mov R0, #0
	str R0, [R1]
	mov PC, LR
off_80071BC: .word dword_20093A4
off_80071C0: .word dword_20093A4
off_80071C4: .word dword_20093A4
off_80071C8: .word dword_20093A4
off_80071CC: .word dword_20093A4
off_80071D0: .word dword_20093A4
.endfunc // sub_80071B4

.func
.thumb_func
sub_80071D4:
	push {r4,r5,r7,lr}
	mov R7, #0
	push {r0}
	// memBlock
	ldr R0, off_8007320 // =dword_2033000
	// size
	ldr R1, dword_8007324 // =0x6AA0
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	ldr R0, off_8007328 // =unk_2039ADC
	ldr R1, off_800732C // =byte_203CCE0
	// size
	sub r1, r1, r0
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	ldr R0, off_8007330 // =byte_203CDA8
	ldr R1, dword_8007334 // =0x2040000
	// size
	sub r1, r1, r0
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl CpuSet_toolkit_wrapper
	pop {r0}
	b loc_8007208
loc_80071FE:
	push {r4,r5,r7,lr}
	mov R7, #1
	b loc_8007208
loc_8007204:
	push {r4,r5,r7,lr}
	mov R7, #0
loc_8007208:
	add r4, r0, #0
	mov R5, R10
	ldr R5, [R5,#0x18] // Toolkit.s_2034880
	// memBlock
	add r0, r5, #0
	// size
	mov R1, #0xF0
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	str R4, [R5,#0x3C]
	mov R0, #1
	strb R0, [R5,#0xA]
	bl sub_8005F40
	bl sub_8005F78
	bl sub_802D234
	cmp R0, #1
	beq loc_8007232
	bl sub_80027D4
	b loc_8007236
loc_8007232:
	bl sub_80027E4
loc_8007236:
	mov R0, #1
	bl sub_800719A
	bl batle_clearEnemyFadeinList
	mov R0, #1
	strb R0, [R5,#0x1B]
	ldr R0, off_8007308 // =dword_2036820
	mov R1, #0x10
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	mov R0, R10
	ldr R0, [R0,#0x28]
	mov R1, #8
	lsl r1, r1, #8
	add r0, r0, r1
	mov R1, #0x18
	lsl r1, r1, #8
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	mov R0, #0
	ldr R1, off_800730C // =sCamera+76
	strb R0, [R1]
	bl sub_800A01C
	bl sub_80075CA
	bl sub_8080D90
	bl sub_8080DA0
	bl sub_8007628
	bl sub_801FE00
	bl sub_8020134
	bl sub_800ED00
	mov R0, #0
	bl sub_8013422
	mov R0, #1
	bl sub_8013422
	bl sub_800BF66
	bl sub_800A2F8
	bl sub_800A954
	bl sub_800AB70
	bl sub_802CE54
	bl sub_800A79C
	bl sub_800A032
	bl sub_800371A
	cmp R7, #2
	beq loc_80072BA
	bl sub_802DFFC
	b loc_80072BE
loc_80072BA:
	bl sub_802E014
loc_80072BE:
	bl sub_8021D08
	ldr R0, off_8007310 // =dword_20364C0
	ldr R1, dword_8007314 // =0x6014000
	str R1, [R0]
	add r1, r0, #0
	add R1, #8
	str R1, [R0,#0x4] // (dword_20364C4 - 0x20364C0)
	mov R0, #0x17
	mov r1, #0x33
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	cmp R7, #1
	beq loc_80072E2
	mov R0, #0x17
	mov r1, #0x35
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_80072E2:
	mov R0, #0
	bl sub_800B6CE
	mov R0, #0
	bl sub_800B6DA
	mov R0, #0
	bl sub_800B6B6
	bl sub_800B75A
	mov R0, #0
	bl sub_802D08C
	mov R0, #1
	bl sub_802D08C
	pop {r4,r5,r7,pc}
	.balign 4, 0x00
off_8007308: .word dword_2036820
off_800730C: .word sCamera+0x4C // sCamera.unk_4C
off_8007310: .word dword_20364C0
dword_8007314: .word 0x6014000
	.word dword_2033000
	.word 0xD000
off_8007320: .word dword_2033000
dword_8007324: .word 0x6AA0
off_8007328: .word unk_2039ADC
off_800732C: .word byte_203CCE0
off_8007330: .word byte_203CDA8
dword_8007334: .word 0x2040000
.endfunc // sub_80071D4

.func
.thumb_func
sub_8007338:
	push {lr}
	bl sub_80303E8
	mov R0, #0
	mov R1, #0
	mov R2, #0
	mov R3, #0xF0
	mov R4, #0
	bl sub_802FF4C
	mov R0, #0
	bl sub_80301B2
	pop {pc}
	.byte 0x0, 0x0, 0x10, 0x0
.endfunc // sub_8007338

.func
.thumb_func
sub_8007358:
	push {lr}
	ldr R0, [R5,#0x3C]
	ldr R0, [R0,#0xC]
	bl sub_8007368
	bl sub_80AA88C
	pop {pc}
.endfunc // sub_8007358

.func
.thumb_func
sub_8007368:
	push {r6,lr}
	add r6, r0, #0
loc_800736C:
	ldrb R0, [R6]
	mov R1, #0xF0
	and R0, R1
	cmp R0, #0xF0
	beq loc_8007384
	lsr r0, r0, #2
	ldr R1, off_800739C // =off_80073A0
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	add R6, #4
	b loc_800736C
loc_8007384:
	ldrh R0, [R5,#4]
	strh R0, [R5,#0x12]
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R0, #0x80
	add r0, r0, r2
	mov R1, #0xD0
	add r1, r1, r2
	mov r2, #0x20
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r6,pc}
off_800739C: .word off_80073A0
off_80073A0: .word byte_80073CD
	.word sub_80073E2+1
	.word sub_8007424+1
	.word sub_8007450+1
	.word locret_80074C4+1
	.word locret_80074C6+1
	.word sub_80074C8+1
	.word sub_80074DE+1
	.word sub_80074FA+1
	.word sub_800751C+1
	.word sub_800748A+1
	.byte 0x0
byte_80073CD: .byte 0xB5, 0x70, 0x78, 0x1, 0x9, 0x40, 0x7, 0x40, 0xF, 0x32, 0x78
	.byte 0x1, 0x23, 0x1A, 0x40, 0x0, 0xF0, 0xAE, 0xF8, 0x0, 0xBD
.endfunc // sub_8007368

.func
.thumb_func
sub_80073E2:
	push {r5,lr}
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add r2, r1, #0
	add r1, r0, #0
	ldrb R0, [R6,#2]
	ldrb R3, [R6,#3]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x14
	add r0, r0, r3
	ldrb R3, [R6]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	mov R5, #0
	push {R1-R3}
	push {r0}
	bl get_802D246 // () -> int
	ldr R1, dword_8007420 // =0x8000
	tst R0, R1
	pop {r0}
	bne loc_8007416
	bl sub_800EC80
loc_8007416:
	pop {R1-R3}
	bl dead_800768C
	pop {r5,pc}
	.balign 4, 0x00
dword_8007420: .word 0x8000
.endfunc // sub_80073E2

.func
.thumb_func
sub_8007424:
	push {r4,lr}
	bl sub_8001532
	mov R1, #0xF
	svc 6
	ldrb R0, [R6,#2]
	mov R2, #0xF
	and R2, R0
	cmp R0, R1
	ble locret_800744E
	lsr r0, r0, #4
	bl sub_80DA9FE
	add r4, r0, #0
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov R2, #0
	bl sub_80DA9DC
locret_800744E:
	pop {r4,pc}
.endfunc // sub_8007424

.func
.thumb_func
sub_8007450:
	push {r4,r6,r7,lr}
	mov R7, #0xB8
	add r7, r7, r5
	ldr R0, [R7]
	tst R0, R0
	beq loc_8007464
	add R7, #4
	ldr R0, [R7]
	tst R0, R0
	bne locret_8007488
loc_8007464:
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl object_getPanelParameters
	mov r1, #0x20
	and R0, R1
	lsr r4, r0, #5
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov R2, #0
	mov R6, #0xC8
	bl sub_80D2430
	str R0, [R7]
locret_8007488:
	pop {r4,r6,r7,pc}
.endfunc // sub_8007450

.func
.thumb_func
sub_800748A:
	push {r4,r6,r7,lr}
	mov R7, #0xB8
	add r7, r7, r5
	ldr R0, [R7]
	tst R0, R0
	beq loc_800749E
	add R7, #4
	ldr R0, [R7]
	tst R0, R0
	bne locret_80074C2
loc_800749E:
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl object_getPanelParameters
	mov r1, #0x20
	and R0, R1
	lsr r4, r0, #5
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov R2, #0
	mov r6, #0x64
	bl sub_80D85F0
	str R0, [R7]
locret_80074C2:
	pop {r4,r6,r7,pc}
.endfunc // sub_800748A

locret_80074C4:
	mov PC, LR
locret_80074C6:
	mov PC, LR
.func
.thumb_func
sub_80074C8:
	push {r4,lr}
	mov R4, #1
	lsl r4, r4, #8
	ldrb R0, [R6,#2]
	add r4, r4, r0
	lsl r4, r4, #8
	ldrb R0, [R6,#3]
	add r4, r4, r0
	bl sub_80E5368
	pop {r4,pc}
.endfunc // sub_80074C8

.func
.thumb_func
sub_80074DE:
	push {lr}
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add r2, r1, #0
	add r1, r0, #0
	ldrb R3, [R6,#2]
	lsr r4, r3, #7
	lsl r3, r3, #0x19
	lsr r3, r3, #0x16
	bl sub_80D8D5A
	pop {pc}
.endfunc // sub_80074DE

.func
.thumb_func
sub_80074FA:
	push {r4,r6,lr}
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	push {r0,r1}
	bl sub_800C90A
	ldrb R2, [R0,#3]
	pop {r0,r1}
	ldrb R3, [R6,#2]
	ldr R4, dword_80077F4 // =0x30000
	add r4, r4, r3
	mov R6, #0xC8
	bl sub_80CFBC4
	pop {r4,r6,pc}
.endfunc // sub_80074FA

.func
.thumb_func
sub_800751C:
	push {r4,r6,lr}
	ldrb R0, [R6,#1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	push {r0,r1}
	bl sub_800C90A
	ldrb R2, [R0,#3]
	pop {r0,r1}
	ldrb R3, [R6,#2]
	mov R4, #1
	ldr R6, dword_80077F4+4 // =0xA800C8
	bl sub_80D4FA6
	pop {r4,r6,pc}
.endfunc // sub_800751C

.func
.thumb_func
sub_800753C:
	push {r4,r5,lr}
	push {R0-R2}
	mov R4, #0
	mov R0, #0
	bl object_spawnType1
	pop {R0-R2}
	tst R5, R5
	beq locret_80075C8
	strb R2, [R5,#0x16]
	strb R0, [R5,#0x12]
	strb R1, [R5,#0x13]
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	str R0, [R5,#0x34]
	str R1, [R5,#0x38]
	mov R2, #0
	str R2, [R5,#0x3C]
	ldrb R0, [R5]
	mov R1, #4
	orr R0, R1
	strb R0, [R5]
	bl object_createAIData
	add r4, r0, #0
	tst R0, R0
	str R0, [R5,#0x58]
	bne loc_800757E
	bl object_freeMemory
	pop {r4,r5,pc}
loc_800757E:
	mov R1, #2
	strb R1, [R0]
	ldrb R0, [R5,#0x16]
	mov r1, #0x29
	bl sub_80136CC
	add R0, #0xFF
	add R0, #0xA1
	strh R0, [R5,#0x28]
	bl sub_8007778
	tst R0, R0
	bne loc_80075A2
	ldr R0, [R5,#0x58]
	bl sub_800ED80
	bl object_freeMemory
loc_80075A2:
	ldrh R0, [R5,#0x28]
	bl sub_80182B4
	ldrb R1, [R0]
	strb R1, [R4,#0x16]
	strb R1, [R4,#0x17]
	ldrb R1, [R0,#1]
	strb R1, [R4]
	ldrb R1, [R0,#2]
	strb R1, [R4,#1]
	ldrh R0, [R5,#0x28]
	bl sub_800F214
	ldrb R1, [R0,#2]
	strb R1, [R4,#3]
	mov R0, #0xFF
	strb R0, [R4,#0xE]
	bl sub_80077D2
locret_80075C8:
	pop {r4,r5,pc}
.endfunc // sub_800753C

.func
.thumb_func
sub_80075CA:
	push {r5,lr}
	// memBlock
	ldr R0, dword_8007624 // =0x6008000
	// size
	mov r1, #0x40
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	ldr R0, dword_8007618 // =0x6008000
	// size
	mov r1, #0x40
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// dataList
	ldr R0, dataList // =off_80075F0
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	ldr R0, off_800761C // =unk_86DDBA0
	ldr R1, dword_8007620 // =0x6001460
	bl SWI_LZ77UnCompReadNormalWrite16bit
	pop {r5,pc}
dataList: .word off_80075F0
off_80075F0: .word dword_86E08F8
	.word unk_3001980
	.word 0x100
	.word dword_86E09F8
	.word byte_3001960
	.word 0x20
	.word dword_86E09F8
	.word byte_3001690
	.word 0x20
	.word 0x0
dword_8007618: .word 0x6008000
off_800761C: .word unk_86DDBA0
dword_8007620: .word 0x6001460
dword_8007624: .word 0x6008000
.endfunc // sub_80075CA

.func
.thumb_func
sub_8007628:
	mov R0, R10
	ldr R0, [R0,#8]
	ldr R1, off_8007654 // =word_800765C
loc_800762E:
	ldrh R2, [R1]
	cmp R2, #0xFF
	beq loc_800763C
	ldrh R3, [R1,#2]
	strh R3, [R0,R2]
	add R1, #4
	b loc_800762E
loc_800763C:
	mov R0, R10
	ldr R0, [R0,#0x1C]
	ldr R1, off_8007658 // =word_8007672
loc_8007642:
	ldrh R2, [R1]
	cmp R2, #0xFF
	beq locret_8007650
	ldrh R3, [R1,#2]
	strh R3, [R0,R2]
	add R1, #4
	b loc_8007642
locret_8007650:
	mov PC, LR
	.balign 4, 0x00
off_8007654: .word word_800765C
off_8007658: .word word_8007672
word_800765C: .hword 0x4
word_800765E: .hword 0x1C08
	.word 0x1D030006, 0x1E020008, 0x1F00000A, 0x7F600000
	.byte 0xFF, 0x0
word_8007672: .hword 0x0
word_8007674: .hword 0xF000
	.word 0xF0000002
	.word 0xA0000004
	.word 0xA0000006
	.word 0x3F3F0008
	.word 0x3F3F000A
	.hword 0xFF
.endfunc // sub_8007628

.func
.thumb_func
dead_800768C:
	push {R4-R7,lr}
	sub sp, sp, #0x14
	mov R4, #0
	str R4, [SP,#0x10]
	b loc_80076A8
.endfunc // dead_800768C

.func
.thumb_func
dead_8007696:
	push {R4-R7,lr}
	sub sp, sp, #0x14
	mov R4, #1
	str R4, [SP,#0x10]
	b loc_80076A8
.endfunc // dead_8007696

.func
.thumb_func
sub_80076A0:
	push {R4-R7,lr}
	sub sp, sp, #0x14
	mov R4, #0
	str R4, [SP,#0x10]
loc_80076A8:
	mov R6, R10
	ldr R6, [R6,#0x18]
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	str R5, [SP,#0x14]
	ldr R0, [SP]
	bl sub_80182B4
	add r7, r0, #0
	ldr R0, [SP,#4]
	ldr R1, [SP,#8]
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	mov R3, #0
	add r2, r1, #0
	add r1, r0, #0
	mov R0, #0
	ldrb R4, [R7]
	bl object_spawnType1
	tst R5, R5
	bne loc_80076DA
	b loc_8007774
loc_80076DA:
	ldr R0, [SP,#0xC]
	strb R0, [R5,#0x16]
	bl object_createAIData
	str R0, [R5,#0x58]
	add r4, r0, #0
	bne loc_80076EE
	bl object_freeMemory
	b loc_8007774
loc_80076EE:
	ldr R1, [SP,#0x10]
	strb R1, [R4,#2]
	strb R1, [R5,#5]
	bl sub_8007778
	tst R0, R0
	bne loc_8007708
	bl object_freeMemory
	ldr R0, [R5,#0x58]
	bl sub_800ED80
	b loc_8007774
loc_8007708:
	ldrb R0, [R5]
	mov R1, #4
	orr R0, R1
	strb R0, [R5]
	ldr R0, [SP]
	strh R0, [R5,#0x28]
	ldr R0, [SP]
	bl sub_80182B4
	ldrb R1, [R0]
	strb R1, [R4,#0x16]
	strb R1, [R4,#0x17]
	ldrb R1, [R0,#1]
	strb R1, [R4]
	ldrb R1, [R0,#2]
	strb R1, [R4,#1]
	ldr R0, [SP]
	bl sub_800F214
	ldrb R1, [R0,#2]
	strb R1, [R4,#3]
	ldr R0, [SP]
	bl sub_800F23C
	ldrh R1, [R0]
	add r2, r1, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	strh R2, [R5,#0x24]
	strh R2, [R5,#0x26]
	lsr r1, r1, #0xc
	strb R1, [R5,#0xE]
	ldrh R1, [R0,#4]
	strh R1, [R5,#0x2C]
	mov R0, #0xA
	strh R0, [R5,#0x2E]
	ldr R0, [SP,#4]
	ldr R1, [SP,#8]
	strb R0, [R5,#0x12]
	strb R1, [R5,#0x13]
	strb R0, [R5,#0x14]
	strb R1, [R5,#0x15]
	ldr R1, [SP,#0x14]
	str R1, [R4,#0x54]
	ldr R0, dword_80077FC // =0xFFFF
	strh R0, [R5,#0x2A]
	mov R0, #0xFF
	strb R0, [R4,#0xE]
	ldr R0, [SP,#0x10]
	cmp R0, #0
	bne loc_8007772
	bl sub_80077D2
loc_8007772:
	add r0, r5, #0
loc_8007774:
	add sp, sp, #0x14
	pop {R4-R7,pc}
.endfunc // sub_80076A0

.func
.thumb_func
sub_8007778:
	push {lr}
	ldrb R0, [R5,#0x16]
	mov R1, #0x10
	mul R1, R0
	add R1, #0x80
	mov R0, R10
	ldr R0, [R0,#0x18]
	add r3, r0, r1
	mov R1, #0
loc_800778A:
	ldr R2, [R3]
	tst R2, R2
	bne loc_80077A8
	str R5, [R3]
	ldr R1, [R5,#0x58]
	ldrb R2, [R1,#2]
	cmp R2, #1
	beq loc_80077A4
	ldrb R1, [R5,#0x16]
	add R1, #4
	ldrb R2, [R0,R1]
	add R2, #1
	strb R2, [R0,R1]
loc_80077A4:
	mov R0, #1
	pop {pc}
loc_80077A8:
	add R3, #4
	add R1, #1
	cmp R1, #4
	blt loc_800778A
	mov R0, #0
	pop {pc}
.endfunc // sub_8007778

.func
.thumb_func
sub_80077B4:
	push {lr}
	mov R1, R10
	ldr R1, [R1,#0x18]
	add R1, #0x80
	mov R3, #0
loc_80077BE:
	ldr R2, [R1]
	cmp R2, R0
	bne loc_80077C8
	mov R2, #0
	str R2, [R1]
loc_80077C8:
	add R1, #4
	add R3, #1
	cmp R3, #8
	blt loc_80077BE
	pop {pc}
.endfunc // sub_80077B4

.func
.thumb_func
sub_80077D2:
	push {r4,r6,lr}
	ldrh R0, [R5,#0x28]
	ldrh R1, [R5,#0x16]
	mov R3, R10
	ldr R3, [R3,#0x18]
	mov R2, #8
	add r2, r2, r1
	ldrb R4, [R3,R2]
	add r6, r4, #1
	strb R6, [R3,R2]
	add r4, r4, r4
	lsl r1, r1, #3
	add r1, #0x4c
	add r1, r1, r4
	strh R0, [R3,R1]
	pop {r4,r6,pc}
	.balign 4, 0x00
dword_80077F4: .word 0x30000, 0xA800C8
dword_80077FC: .word 0xFFFF
.endfunc // sub_80077D2

loc_8007800:
	push {r4,r5,lr}
	bl sub_801FE6C
	bl sub_8020140
	mov R5, R10
	ldr R5, [R5,#0x18]
	ldr R1, off_8007834 // =off_8007838
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldr R0, [R5,#0x60]
	add R0, #1
	str R0, [R5,#0x60]
	bl get_802D246 // () -> int
	add r4, r0, #0
	bl sub_800A832
	add r2, r1, #0
	add r1, r0, #0
	ldrb R0, [R5,#0xA]
	add r3, r4, #0
	tst R0, R0
	pop {r4,r5,pc}
off_8007834: .word off_8007838
off_8007838: .word loc_8007850+1
	.word loc_8007A44+1
	.word sub_8007B80+1
	.word sub_8007E62+1
	.word sub_8007F4E+1
	.word byte_8007FEB
loc_8007850:
	push {r4,lr}
	bl sub_801FEE8
	add r4, r0, #0
	cmp R4, #4
	bne loc_80078C6
	ldr R1, off_800793C // =dword_200F3B0
	mov R0, #0xFF
	str R0, [R1]
loc_8007862:
	bl sub_803EA60
	cmp R0, #4
	beq loc_8007872
	cmp R0, #8
	beq loc_8007872
	bl sub_81440D8 // static () -> void
loc_8007872:
	bl sub_801FE64
	mov R4, #5
	bl sub_803EA60
	cmp R0, #4
	beq loc_8007884
	cmp R0, #8
	bne loc_8007898
loc_8007884:
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #8
	beq loc_8007892
	cmp R0, #2
	bne loc_8007898
loc_8007892:
	bl sub_8144EEC
	mov R4, #9
loc_8007898:
	add r0, r4, #0
	bl sub_800A840
	mov R0, #8
	strb R0, [R5]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne locret_8007936
	mov R0, #0x17
	mov r1, #0x33
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x35
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_8007936
loc_80078C6:
	cmp R4, #2
	beq loc_80078D6
	bl sub_803EA60
	mov R1, #0xC
	tst R0, R1
	bne loc_80078D6
	b loc_8007918
loc_80078D6:
	bl sub_802015E
	cmp R0, #0
	beq loc_8007900
	mov R1, #9
	cmp R0, #1
	beq loc_80078EC
	mov R1, #0xA
	cmp R0, #1
	beq loc_80078EC
	b loc_80078EC
loc_80078EC:
	add r0, r1, #0
	bl sub_800A840
	mov R0, #8
	strb R0, [R5]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8007936
loc_8007900:
	add r0, r4, #0
	bl loc_801FEEE
	mov R0, #8
	and R4, R0
	bne locret_8007936
	ldr R1, off_8007938 // =off_8007940
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r4,pc}
loc_8007918:
	bl sub_803EA60
	cmp R0, #4
	beq locret_8007936
	cmp R0, #8
	beq locret_8007936
	ldrh R0, [R5,#0x20]
	add R0, #1
	strh R0, [R5,#0x20]
	cmp R0, #0xB4
	blt locret_8007936
	ldr R1, off_800793C // =dword_200F3B0
	mov R0, #0xEE
	str R0, [R1]
	b loc_8007862
locret_8007936:
	pop {r4,pc}
off_8007938: .word off_8007940
off_800793C: .word dword_200F3B0
off_8007940: .word sub_800794C+1
	.word loc_8007978+1
	.word sub_8007A0C+1
.func
.thumb_func
sub_800794C:
	push {lr}
	bl sub_800318C
	bl sub_800353E
	bl sub_8003548
	bl sub_8003552
	bl sub_802E112
	bl sub_8007338
	bl sub_800A0C6
	bl sub_801BE70
	bl sub_8002668
	mov R0, #4
	strb R0, [R5,#1]
	pop {pc}
.endfunc // sub_800794C

loc_8007978:
	push {lr}
	ldr R1, off_8007988 // =off_800798C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8007988: .word off_800798C
off_800798C: .word sub_800799C+1
	.word sub_80079A8+1
	.word sub_80079D0+1
	.word sub_80079F0+1
.func
.thumb_func
sub_800799C:
	push {lr}
	bl sub_801FE24
	mov R0, #4
	strb R0, [R5,#2]
	pop {pc}
.endfunc // sub_800799C

.func
.thumb_func
sub_80079A8:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_80079B8
	mov R0, #0
	b loc_80079BC
loc_80079B8:
	bl sub_803DD60
loc_80079BC:
	strb R0, [R5,#0xD]
	ldr R1, off_80079CC // =sCamera+76
	strb R0, [R1]
	bl sub_800B144
	mov R0, #8
	strb R0, [R5,#2]
	pop {pc}
off_80079CC: .word sCamera+0x4C // sCamera.unk_4C
.endfunc // sub_80079A8

.func
.thumb_func
sub_80079D0:
	push {lr}
	ldr R0, dword_80079EC // =0x12345678
	bl sub_800B46C
	tst R0, R0
	beq locret_80079EA
	bl sub_800B460
	bl sub_800B2D8
	mov R0, #0xC
	strb R0, [R5,#2]
	b locret_80079EA
locret_80079EA:
	pop {pc}
dword_80079EC: .word 0x12345678
.endfunc // sub_80079D0

.func
.thumb_func
sub_80079F0:
	push {lr}
	bl sub_802D26A
	add r1, r0, #0
	ldrb R0, [R5,#6]
	bl sub_800BF88
	bl sub_800A3E4
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_80079F0

.func
.thumb_func
sub_8007A0C:
	push {lr}
	bl sub_801986C
	bl sub_800C8F0
.endfunc // sub_8007A0C

	bl sub_800318C
	bl sub_800BFC4
	ldr R0, off_8007A40 // =byte_2011800
	bl sub_80028D4
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_8007A36
	ldr R0, [R5,#0x3C]
	ldr R0, [R0,#0xC]
	bl sub_80029A8
loc_8007A36:
	bl batle_clearEnemyFadeinList
	mov R0, #4
	str R0, [R5]
	pop {pc}
off_8007A40: .word byte_2011800
loc_8007A44:
	push {r4,lr}
	bl sub_801FEE8
	cmp R0, #4
	bne loc_8007A6C
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #8
	bne loc_8007A5E
	bl sub_8144EEC
	b loc_8007A62
loc_8007A5E:
	cmp R0, #2
	bne loc_8007A66
loc_8007A62:
	mov R1, #9
	b loc_8007A8E
loc_8007A66:
	mov R0, #0xC
	str R0, [R5]
	b loc_8007B10
loc_8007A6C:
	add r4, r0, #0
	bl loc_801FEEE
	mov R0, #8
	and R0, R4
	bne loc_8007B10
	bl sub_802015E
	cmp R0, #0
	beq loc_8007A9A
	mov R1, #9
	cmp R0, #1
	beq loc_8007A8E
	mov R1, #0xA
	cmp R0, #1
	beq loc_8007A8E
	b loc_8007A8E
loc_8007A8E:
	add r0, r1, #0
	bl sub_800A840
	mov R0, #0x10
	str R0, [R5]
	b loc_8007B10
loc_8007A9A:
	bl sub_800A01C
	bl sub_802D234
	lsl r0, r0, #2
	ldr R1, off_8007B4C // =off_8007B50
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	bl sub_80031AC
	bl loc_802FFF4
	bl sub_800BFC4
	bl sub_800FDC0
	bl sub_801BEE0
	bl sub_802CEC8
	bl sub_800AEE8
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R0, [R7,#0xA]
	tst R0, R0
	bne loc_8007AF4
	bl battle_isTimeStop
	bne loc_8007AF0
	ldrb R0, [R5,#0xE]
	add R0, #1
	cmp R0, #0x14
	blt loc_8007AE2
	mov R0, #0
loc_8007AE2:
	strb R0, [R5,#0xE]
	ldrb R0, [R5,#0x16]
	add R0, #1
	cmp R0, #0xB4
	blt loc_8007AEE
	mov R0, #0
loc_8007AEE:
	strb R0, [R5,#0x16]
loc_8007AF0:
	bl sub_802CDFE
loc_8007AF4:
	mov R0, #0
	bl sub_80102AC
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8007B0A
	mov R0, #1
	bl sub_80102AC
loc_8007B0A:
	ldr R0, [R5,#0x64]
	add R0, #1
	str R0, [R5,#0x64]
loc_8007B10:
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003E18
	bl sub_8004218
	bl sub_8004510
	bl sub_800C5E0
	bl sub_801BF64
	bl sub_802E156
	bl sub_8003C70
	bl sub_80046F8
	bl sub_80049B0
	bl sub_8009FCC
	mov R0, #0xE0
	mov R1, #0x90
	bl sub_803C59C
	pop {r4,pc}
	.balign 4, 0x00
off_8007B4C: .word off_8007B50
off_8007B50: .word loc_8009158+1
	.word loc_8009158+1
	.word loc_8009158+1
	.word loc_8009158+1
	.word loc_8009158+1
	.word loc_8009158+1
	.word loc_800961C+1
	.word loc_80099A4+1
	.word loc_8009158+1
	.word loc_8009C94+1
	.word loc_8009158+1
	.word loc_8009158+1
.func
.thumb_func
sub_8007B80:
	push {lr}
	ldr R1, off_8007B90 // =off_8007B94
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_8007B90: .word off_8007B94
off_8007B94: .word sub_8007B9C+1
	.word sub_8007CA0+1
.endfunc // sub_8007B80

.func
.thumb_func
sub_8007B9C:
	push {lr}
	bl sub_800A01C
	ldr R1, off_8007BC4 // =off_8007BC8
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_80031AC
	bl sub_800BFC4
	bl sub_80027B4
	bl sub_800286C
	bl sub_800A01C
	pop {pc}
	.balign 4, 0x00
off_8007BC4: .word off_8007BC8
off_8007BC8: .word sub_8007BD0+1
	.word loc_8007BF0+1
.endfunc // sub_8007B9C

.func
.thumb_func
sub_8007BD0:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8007BE2
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8007BEE
loc_8007BE2:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8007BEE
	mov R0, #4
	strh R0, [R5,#2]
locret_8007BEE:
	pop {pc}
.endfunc // sub_8007BD0

loc_8007BF0:
	push {lr}
	bl sub_803EA60
	ldr R1, off_8007C00 // =off_8007C04
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
off_8007C00: .word off_8007C04
off_8007C04: .word sub_8007C14+1
	.word sub_8007C50+1
	.word sub_8007C50+1
	.word sub_8007C14+1
.func
.thumb_func
sub_8007C14:
	push {lr}
	bl sub_801FE5E
	tst R0, R0
	beq loc_8007C44
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8007C2E
	bl sub_803DDA4
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8007C4C
loc_8007C2E:
	bl sub_803DE24
	tst R0, R0
	beq loc_8007C3C
	ldrb R0, [R4,#1]
	cmp R0, #2
	beq locret_8007C4C
loc_8007C3C:
	bl sub_81440D8 // static () -> void
	bl sub_801FE64
loc_8007C44:
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8007C4C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_8007C14

.func
.thumb_func
sub_8007C50:
	push {lr}
	bl get_802D246 // () -> int
	ldr R1, off_8007C9C // =0x400
	tst R0, R1
	beq loc_8007C74
	bl sub_800A832
	cmp R0, #5
	beq loc_8007C74
	cmp R0, #9
	beq loc_8007C74
	cmp R0, #0xA
	beq loc_8007C74
	bl sub_800AF50
	tst R0, R0
	beq loc_8007C90
loc_8007C74:
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8007C84
	mov R0, #4
	strb R0, [R5,#3]
	bl sub_803C754
	b locret_8007C98
loc_8007C84:
	bl sub_813D60C
	tst R0, R0
	bne locret_8007C98
	bl sub_801FE64
loc_8007C90:
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8007C98:
	pop {pc}
	.balign 4, 0x00
off_8007C9C: .word 0x400
.endfunc // sub_8007C50

.func
.thumb_func
sub_8007CA0:
	push {r4,r6,r7,lr}
	bl musicGameState_8000784 // () -> void
	mov R4, R10
	ldr R4, [R4,#0x40] // Toolkit.unk_2001C04
	mov R6, R10
	ldr R6, [R6]
	mov R7, R10
	ldr R7, [R7,#0x3C] // Toolkit.gamestate
	bl get_802D246 // () -> int
	ldr R1, dword_8007FEC // =0x400
	tst R0, R1
	beq loc_8007D06
	bl sub_800A832
	cmp R0, #5
	beq loc_8007D06
	cmp R0, #9
	beq loc_8007D06
	cmp R0, #0xA
	beq loc_8007D06
	bl sub_800AF50
	tst R0, R0
	bne loc_8007CF2
	bl sub_8001974
	bl sub_8001AFC
	bl sub_80023A8
	ldr R1, [R5,#0x18]
	push {r1}
	bl battleSettings_802D2B2 // () -> BattleSettings*
	bl loc_8007204
	pop {r1}
	str R1, [R5,#0x18]
	b locret_8007E60
loc_8007CF2:
	mov R1, #3
	cmp R0, #2
	beq loc_8007D00
	mov R1, #1
	cmp R0, #1
	beq loc_8007D00
	mov R1, #2
loc_8007D00:
	add r0, r1, #0
	bl sub_800A840
loc_8007D06:
	bl sub_800A832
	cmp R0, #1
	bne loc_8007D1A
	ldr R1, off_8007FF0 // =dword_2000B30
	ldrh R2, [R1]
	cmp R2, #0x11
	bge loc_8007D1A
	add R2, #1
	strh R2, [R1]
loc_8007D1A:
	cmp R0, #5
	bne loc_8007D4E
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8007D2A
	b loc_8007E38
loc_8007D2A:
	mov R0, #0
	bl sub_803F4EC
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x33
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8007E38
	bl sub_8001974
	bl sub_8001AFC
	bl sub_80023A8
	ldr R0, [R5,#0x3C]
	bl loc_80071FE
	b locret_8007E60
loc_8007D4E:
	bl sub_800FAE0
	bl sub_800A86E
	bl get_802D246 // () -> int
	mov r1, #0x40
	tst R0, R1
	beq loc_8007D72
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40
	ldrh R2, [R5,#0x34]
	cmp R2, #0
	bne loc_8007D6E
	mov R2, #1
loc_8007D6E:
	bl sub_80137E6
loc_8007D72:
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_8007DE4
	mov R2, #0x80
	ldr R1, dword_8007FF4 // =0x10000
	tst R0, R1
	bne loc_8007D8A
	ldrb R0, [R5,#0xD]
	bl sub_8015B54
loc_8007D8A:
	push {r2}
	bl getPETNaviSelect // () -> u8
	pop {r2}
	mov R1, #0xE
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	bl get_802D246 // () -> int
	add r1, r0, #0
	mov R0, #3
	ldr R2, dword_8007FF8 // =0x400000
	tst R1, R2
	bne loc_8007DC4
	ldrb R0, [R5,#0xD]
	mov r1, #0x21
	bl sub_80136CC
	push {r0}
	ldrb R0, [R5,#0xD]
	mov R1, #2
	bl sub_800AB3A
	cmp R0, #0
	pop {r0}
	bne loc_8007DC4
	cmp R0, #3
	bge loc_8007DC4
	add R0, #1
loc_8007DC4:
	push {r0}
	bl getPETNaviSelect // () -> u8
	pop {r2}
	mov r1, #0x21
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	bl sub_800A832
	cmp R0, #1
	bne loc_8007DDE
	bl sub_802C9B8
loc_8007DDE:
	mov R0, #0
	strh R0, [R4,#0x12]
	strh R0, [R4,#0x14]
loc_8007DE4:
	bl sub_800A832
	cmp R0, #2
	bne loc_8007E26
	bl get_802D246 // () -> int
	ldr R1, dword_8007FFC // =0x800000
	tst R0, R1
	beq loc_8007DFE
	push {r0}
	bl sub_803CEB8
	pop {r0}
loc_8007DFE:
	ldr R1, off_8008000 // =0x1000
	tst R0, R1
	beq loc_8007E14
	push {r0}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x21
	mov R2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r0}
loc_8007E14:
	ldr R1, dword_8008004 // =0x40000
	tst R0, R1
	beq loc_8007E26
	bl getPETNaviSelect // () -> u8
	mov R1, #0xE
	mov R2, #0x80
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8007E26:
	bl get_802D246 // () -> int
	mov R1, #0x10
	tst R0, R1
	beq loc_8007E34
	bl sub_803CEB8
loc_8007E34:
	bl sub_802CA82
loc_8007E38:
	mov R0, #0
	strb R0, [R7,#0xA]
	bl sub_8002368
	mov r0, #0x40
	bl sub_8001778
	bl sub_800A892
	mov R0, #1
	bl sub_80071A4
	mov R0, #0x17
	mov r1, #0x22
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0
	strb R0, [R5,#0xA]
	bl CpuSet_toolKit // () -> void
locret_8007E60:
	pop {r4,r6,r7,pc}
.endfunc // sub_8007CA0

.func
.thumb_func
sub_8007E62:
	push {lr}
	ldr R1, off_8007EA8 // =off_8007EAC
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003E18
	bl sub_8004218
	bl sub_8004510
	bl sub_800C5E0
	bl sub_801BF64
	bl sub_802E156
	bl sub_8003C70
	bl sub_80046F8
	bl sub_80049B0
	bl sub_8009FCC
	ldr R1, off_8008008 // =byte_203F7D8
	mov R0, #2
	strb R0, [R1,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	pop {pc}
	.balign 4, 0x00
off_8007EA8: .word off_8007EAC
off_8007EAC: .word sub_8007EB8+1
	.word sub_8007F14+1
	.word sub_8007F2C+1
.endfunc // sub_8007E62

.func
.thumb_func
sub_8007EB8:
	push {r4,lr}
	bl sub_800A028
	bl sub_81440D8 // static () -> void
	bl sub_801FE64
	ldr R0, dword_800800C // =0x280000
	bl sub_801BED6
	ldr R0, dword_800800C // =0x280000
	bl sub_801DACC
	mov R0, #5
	bl sub_800A840
	bl sub_80062EC
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	bl get_802D246 // () -> int
	ldr R1, dword_8008010 // =0x200000
	tst R0, R1
	beq loc_8007EEE
	mov R4, #0
loc_8007EEE:
	mov R1, #8
	tst R0, R1
	bne loc_8007F04
	mov R1, #4
	mul R4, R1
	mov r1, #0x20
	tst R0, R1
	bne loc_8007F00
	add R4, #3
loc_8007F00:
	add r1, r4, #0
	b loc_8007F08
loc_8007F04:
	mov r1, #0x5c
	add r1, r1, r4
loc_8007F08:
	ldr R0, off_8008014 // =scripts_commErr_87370C0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#1]
	pop {r4,pc}
.endfunc // sub_8007EB8

.func
.thumb_func
sub_8007F14:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8007F2A
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #8
	strb R0, [R5,#1]
locret_8007F2A:
	pop {pc}
.endfunc // sub_8007F14

.func
.thumb_func
sub_8007F2C:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_8007F4C
	bl musicGameState_8000784 // () -> void
	mov R0, #0x1A
	bl sub_80035A2
	mov R0, #8
	strb R0, [R5]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8007F4C:
	pop {pc}
.endfunc // sub_8007F2C

.func
.thumb_func
sub_8007F4E:
	push {lr}
	bl sub_800A01C
	ldr R1, off_8007F98 // =off_8007F9C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_80027B4
	bl sub_800286C
	bl sub_8003E18
	bl sub_8004218
	bl sub_8004510
	bl sub_800C5E0
	bl sub_801BF64
	bl sub_802E156
	bl sub_8003C70
	bl sub_80046F8
	bl sub_80049B0
	bl sub_8009FCC
	ldr R1, off_8008018 // =byte_203F7D8
	mov R0, #2
	strb R0, [R1,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	pop {pc}
	.balign 4, 0x00
off_8007F98: .word off_8007F9C
off_8007F9C: .word sub_8007FA4+1
	.word sub_8007FD2+1
.endfunc // sub_8007F4E

.func
.thumb_func
sub_8007FA4:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8007FC4
	bl sub_800A028
	bl sub_801FE64
	bl sub_80062EC
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
loc_8007FC4:
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_8007FD0
	mov R0, #4
	strh R0, [R5,#2]
locret_8007FD0:
	pop {pc}
.endfunc // sub_8007FA4

.func
.thumb_func
sub_8007FD2:
	push {lr}
	bl sub_813D60C
	tst R0, R0
	bne locret_8007FE8
	mov R0, #8
	strb R0, [R5]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8007FE8:
	pop {pc}
	.byte 0x0
byte_8007FEB: .byte 0x0
dword_8007FEC: .word 0x400
off_8007FF0: .word dword_2000B30
dword_8007FF4: .word 0x10000
dword_8007FF8: .word 0x400000
dword_8007FFC: .word 0x800000
off_8008000: .word 0x1000
dword_8008004: .word 0x40000
off_8008008: .word byte_203F7D8
dword_800800C: .word 0x280000
dword_8008010: .word 0x200000
off_8008014: .word scripts_commErr_87370C0
off_8008018: .word byte_203F7D8
.endfunc // sub_8007FD2

.func
.thumb_func
sub_800801C:
	push {r5,lr}
	ldr R5, off_8008060 // =dword_203CA70
	ldr R1, off_8008034 // =off_8008038
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_802DE5C
	ldrb R0, [R5,#0x4] // (byte_203CA74 - 0x203CA70)
	pop {r5,pc}
	.balign 4, 0x00
off_8008034: .word off_8008038
off_8008038: .word sub_800840C+1
	.word sub_8008064+1
	.word sub_80080D2+1
	.word sub_80081A4+1
	.word sub_800825A+1
	.word sub_80082DC+1
	.word sub_800834A+1
	.word sub_80083E4+1
	.word sub_8008452+1
	.word sub_8008492+1
off_8008060: .word dword_203CA70
.endfunc // sub_800801C

.func
.thumb_func
sub_8008064:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80080B2
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	bl sub_800A97A
	tst R0, R0
	beq loc_8008096
	mov R0, #0xA5
	lsl r0, r0, #2
	sub R0, #1
	strh R0, [R5,#0xA]
	mov R0, #0x10
	mov R1, #0
	b loc_80080AE
loc_8008096:
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_80080A6
	mov R0, #0
	mov R1, #0
	b loc_80080AE
loc_80080A6:
	mov R0, #0xC
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#7]
loc_80080AE:
	bl loc_801E792
loc_80080B2:
	bl sub_801E754
	cmp R0, #0
	bne locret_80080D0
	mov R0, #0xFF
	mov R1, #0
	bl sub_801E724
	mov R0, #0xFF
	lsl r0, r0, #8
	add R0, #0xFF
	bl sub_801E0C8
	mov R0, #8
	str R0, [R5]
locret_80080D0:
	pop {pc}
.endfunc // sub_8008064

.func
.thumb_func
sub_80080D2:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	bl sub_800A032
	mov R0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst R0, R0
	beq loc_80080FE
	bl sub_800AB7C
loc_80080FE:
	bl sub_800A152
	cmp R0, #1
	bne loc_8008122
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrh R0, [R1,#0x3A]
	cmp R0, #0
	beq loc_8008116
	bl sub_800AAD6
	b locret_80081A2
loc_8008116:
	ldrb R0, [R1,#0x18]
	add R0, #1
	strb R0, [R1,#0x18]
	mov R0, #0xC
	str R0, [R5]
	b locret_80081A2
loc_8008122:
	cmp R0, #2
	bne loc_8008136
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x19]
	add R0, #1
	strb R0, [R1,#0x19]
	mov R0, #0x10
	str R0, [R5]
	b locret_80081A2
loc_8008136:
	cmp R0, #7
	bne loc_8008140
	mov R0, #0x18
	str R0, [R5]
	b locret_80081A2
loc_8008140:
	bl sub_800A046
	cmp R0, #0xFF
	beq loc_8008158
	strb R0, [R5,#5]
	bl sub_800A028
	mov R0, #0x1C
	str R0, [R5]
	bl sub_801E15C
	b locret_80081A2
loc_8008158:
	bl sub_800A8F8
	cmp R0, #0
	bne loc_8008168
	bl sub_800A1D0
	beq locret_80081A2
	b loc_800819A
loc_8008168:
	bl sub_800A244
	beq locret_80081A2
	push {r0}
	mov R1, #1
	tst R0, R1
	beq loc_8008184
	mov R0, #0
	bl sub_802E070
	ldrh R1, [R0,#0x28]
	ldr R2, off_80084D0 // =0x2900
	sub r1, r1, r2
	strh R1, [R0,#0x28]
loc_8008184:
	pop {r0}
	mov R1, #2
	tst R0, R1
	beq loc_800819A
	mov R0, #1
	bl sub_802E070
	ldrh R1, [R0,#0x28]
	ldr R2, off_80084D0 // =0x2900
	sub r1, r1, r2
	strh R1, [R0,#0x28]
loc_800819A:
	bl sub_800A028
	mov r0, #0x20
	str R0, [R5]
locret_80081A2:
	pop {pc}
.endfunc // sub_80080D2

.func
.thumb_func
sub_80081A4:
	push {r4,r6,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008232
	ldr R0, dword_80084D4 // =0xE4C53
	bl sub_801DACC
	ldr R0, dword_80084D4 // =0xE4C53
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	strb R1, [R0,#0x10]
	mov R0, #4
	strb R0, [R5,#3]
	ldr R1, dword_80084D8 // =0x173
	ldr R2, dword_80084DC // =0x17E
	bl sub_800A7A6
	tst R0, R0
	beq loc_80081DE
	mov r0, #0x66
	strh R0, [R5,#8]
	b loc_8008232
loc_80081DE:
	bl sub_802D234
	cmp R0, #4
	beq loc_80081EE
	cmp R0, #5
	beq loc_80081EE
	cmp R0, #8
	bne loc_80081F4
loc_80081EE:
	mov R2, #0x19
	mov r4, #0x5e
	b loc_8008206
loc_80081F4:
	bl get_802D246 // () -> int
	mov r4, #0x5e
	mov R2, #0x19
	mov R1, #2
	tst R0, R1
	bne loc_8008206
	mov R2, #0x1F
	mov r4, #0x66
loc_8008206:
	add r0, r2, #0
	bl sound_bgmusic_play // (int a1) -> void
	strh R4, [R5,#8]
	mov R6, #4
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8008222
	bl sub_800A8D4
	add r6, r0, #0
	b loc_800822C
loc_8008222:
	bl sub_800A152
	cmp R0, #7
	bne loc_800822C
	mov R6, #0x14
loc_800822C:
	add r0, r6, #0
	bl loc_801E792
loc_8008232:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008258
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_8008258
	mov R0, #1
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #0
	bl sub_800B6C2
locret_8008258:
	pop {r4,r6,pc}
.endfunc // sub_80081A4

.func
.thumb_func
sub_800825A:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80082B4
	ldr R0, dword_80084D4 // =0xE4C53
	bl sub_801DACC
	ldr R0, dword_80084D4 // =0xE4C53
	bl sub_801BED6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	mov R2, #1
	eor R1, R2
	strb R1, [R0,#0x10]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800828A
	mov R0, #0x1A
	bl sound_bgmusic_play // (int a1) -> void
loc_800828A:
	bl get_802D246 // () -> int
	mov R1, #2
	tst R0, R1
	bne loc_8008298
	mov r4, #0x66
	b loc_800829A
loc_8008298:
	mov r4, #0x5e
loc_800829A:
	strh R4, [R5,#8]
	bl sub_800A152
	add r4, r0, #0
	bl sub_800A8B2
	cmp R4, #7
	bne loc_80082AC
	mov R0, #0x18
loc_80082AC:
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
loc_80082B4:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_80082DA
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_80082DA
	mov R0, #2
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_80082DA:
	pop {r4,pc}
.endfunc // sub_800825A

.func
.thumb_func
sub_80082DC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80082FE
	ldr R0, dword_80084D4 // =0xE4C53
	bl sub_801DACC
	ldr R0, dword_80084D4 // =0xE4C53
	bl sub_801BED6
	mov r0, #0x66
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0x1C
	bl loc_801E792
loc_80082FE:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008348
	ldrh R0, [R5,#8]
	tst R0, R0
	blt locret_8008348
	bl get_802D246 // () -> int
	ldr R1, off_80084E0 // =0x400
	tst R0, R1
	beq loc_8008338
	bl sub_800AF50
	cmp R0, #0
	beq loc_8008338
	cmp R0, #2
	beq loc_8008338
	cmp R0, #1
	bne loc_8008332
	mov R0, #0xC
	str R0, [R5]
	b locret_8008348
loc_8008332:
	mov R0, #0x10
	str R0, [R5]
	b locret_8008348
loc_8008338:
	mov R0, #3
	bl sub_800A840
	mov R0, #3
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	strb R0, [R5,#4]
locret_8008348:
	pop {pc}
.endfunc // sub_80082DC

.func
.thumb_func
sub_800834A:
	push {lr}
	ldr R1, off_8008358 // =off_800835C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_8008358: .word off_800835C
off_800835C: .word sub_8008364+1
	.word sub_800838A+1
.endfunc // sub_800834A

.func
.thumb_func
sub_8008364:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008374
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008374:
	ldrh R0, [R5,#8]
	add R0, #1
	strh R0, [R5,#8]
	cmp r0, #0x3c
	blt locret_8008388
	ldr R0, off_80084E4 // =0x800
	bl sub_801DACC
	mov R0, #4
	strh R0, [R5,#2]
locret_8008388:
	pop {pc}
.endfunc // sub_8008364

.func
.thumb_func
sub_800838A:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80083AE
	mov R0, #1
	bl sub_801055E
	push {r0}
	mov R0, #0
	bl sub_801055E
	add r1, r0, #0
	pop {r0}
	bl sub_802CB38
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80083E2
loc_80083AE:
	bl loc_802CB78
	tst R0, R0
	bne locret_80083E2
	cmp R1, #1
	bne loc_80083CA
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x18]
	add R0, #1
	strb R0, [R1,#0x18]
	mov R0, #0xC
	str R0, [R5]
	b locret_80083E2
loc_80083CA:
	cmp R1, #2
	bne loc_80083DE
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x19]
	add R0, #1
	strb R0, [R1,#0x19]
	mov R0, #0x10
	str R0, [R5]
	b locret_80083E2
loc_80083DE:
	mov R0, #0x14
	str R0, [R5]
locret_80083E2:
	pop {pc}
.endfunc // sub_800838A

.func
.thumb_func
sub_80083E4:
	push {lr}
	ldrb R0, [R5,#5]
	bl sub_800A07C
	tst R0, R0
	beq locret_8008400
	mov R0, #0x9F
	bl sound_play // () -> void
	mov R0, #8
	str R0, [R5]
	ldr R0, off_8008408 // =0x200
	bl sub_801DACC
locret_8008400:
	pop {pc}
	.balign 4, 0x00
	.word dword_2036820
off_8008408: .word 0x200
.endfunc // sub_80083E4

.func
.thumb_func
sub_800840C:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008420
	ldr R0, off_80084E8 // =byte_203F558
	ldr R1, off_80084EC // =byte_203F658
	bl sub_80147E4
	mov R0, #4
	strb R0, [R5,#3]
loc_8008420:
	bl loc_801483C
	tst R0, R0
	bne locret_8008450
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_8008438
	bl sub_801482C
	mov R0, #4
	strb R0, [R5,#2]
	pop {pc}
loc_8008438:
	mov R0, #0
	bl sub_80103BC
	bl sub_8015A38
	mov R0, #1
	bl sub_80103BC
	bl sub_8015A38
	mov R0, #4
	str R0, [R5]
locret_8008450:
	pop {pc}
.endfunc // sub_800840C

.func
.thumb_func
sub_8008452:
	push {lr}
	bl sub_802D234
	cmp R0, #5
	beq loc_8008462
	bl sub_802E09A
	bne loc_800848C
loc_8008462:
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008484
	bl sub_802D6A0
	mov R0, #0
	bl sub_80103BC
	bl sub_8015A16
	mov R0, #1
	bl sub_80103BC
	bl sub_8015A16
	mov R0, #4
	strb R0, [R5,#3]
loc_8008484:
	bl sub_802D6C4
	tst R0, R0
	bne locret_8008490
loc_800848C:
	mov r0, #0x24
	str R0, [R5]
locret_8008490:
	pop {pc}
.endfunc // sub_8008452

.func
.thumb_func
sub_8008492:
	push {lr}
	bl sub_802D234
	cmp R0, #5
	beq loc_80084A2
	bl sub_802E09A
	bne loc_80084BA
loc_80084A2:
	bl loc_801483C
	tst R0, R0
	bne locret_80084BE
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_80084BA
	bl sub_801482C
	mov R0, #4
	strb R0, [R5,#2]
	pop {pc}
loc_80084BA:
	mov R0, #6
	strb R0, [R5,#4]
locret_80084BE:
	pop {pc}
.endfunc // sub_8008492

.func
.thumb_func
sub_80084C0:
	push {r5,lr}
	// memBlock
	ldr R0, off_80084CC // =dword_203CA70
	// size
	mov R1, #0xC
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r5,pc}
off_80084CC: .word dword_203CA70
off_80084D0: .word 0x2900
dword_80084D4: .word 0xE4C53
dword_80084D8: .word 0x173
dword_80084DC: .word 0x17E
off_80084E0: .word 0x400
off_80084E4: .word 0x800
off_80084E8: .word byte_203F558
off_80084EC: .word byte_203F658
.endfunc // sub_80084C0

.func
.thumb_func
sub_80084F0:
	push {r5,lr}
	ldr R5, off_8008524 // =dword_203CA70
	ldr R1, off_8008504 // =off_8008508
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldrb R0, [R5,#0x4] // (byte_203CA74 - 0x203CA70)
	pop {r5,pc}
	.balign 4, 0x00
off_8008504: .word off_8008508
off_8008508: .word sub_8008528+1
	.word sub_800855E+1
	.word sub_8008664+1
	.word sub_8008764+1
	.word sub_80087D8+1
	.word sub_8008840+1
	.word sub_8008900+1
off_8008524: .word dword_203CA70
.endfunc // sub_80084F0

.func
.thumb_func
sub_8008528:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008550
	mov R0, #0
	strb R0, [R5,#4]
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0
	mov R1, #0
	bl loc_801E792
loc_8008550:
	bl sub_801E754
	cmp R0, #0
	bne locret_800855C
	mov R0, #4
	str R0, [R5]
locret_800855C:
	pop {pc}
.endfunc // sub_8008528

.func
.thumb_func
sub_800855E:
	push {lr}
	bl sub_80085FE
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	bl sub_800A032
	mov R0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst R0, R0
	beq loc_800858E
	bl sub_800AB7C
loc_800858E:
	bl sub_800A152
	cmp R0, #1
	bne loc_80085A6
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x18]
	add R0, #1
	strb R0, [R1,#0x18]
	mov R0, #8
	str R0, [R5]
	b locret_80085FC
loc_80085A6:
	cmp R0, #2
	bne loc_80085BA
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x19]
	add R0, #1
	strb R0, [R1,#0x19]
	mov R0, #0xC
	str R0, [R5]
	b locret_80085FC
loc_80085BA:
	cmp R0, #7
	bne loc_80085C4
	mov R0, #0x14
	str R0, [R5]
	b locret_80085FC
loc_80085C4:
	bl sub_800A046
	cmp R0, #0xFF
	beq loc_80085DC
	strb R0, [R5,#5]
	bl sub_800A028
	mov R0, #0x18
	str R0, [R5]
	bl sub_801E15C
	b locret_80085FC
loc_80085DC:
	bl battle_isTimeStop
	bne loc_80085E8
	mov R0, #0xD
	bl sub_801DFB8
loc_80085E8:
	bl sub_800A21C
	cmp R0, #0
	beq locret_80085FC
	cmp R0, #1
	bne locret_80085FC
	bl sub_800A028
	mov R0, #0x14
	str R0, [R5]
locret_80085FC:
	pop {pc}
.endfunc // sub_800855E

.func
.thumb_func
sub_80085FE:
	push {r5,lr}
	mov R5, R10
	ldr R5, [R5,#0x18]
	mov R0, #0x80
	ldr R0, [R5,R0]
	mov R1, #0x84
	ldr R1, [R5,R1]
	ldrb R2, [R5,#4]
	bl sub_8008622
	mov R0, #0x90
	ldr R0, [R5,R0]
	mov R1, #0x94
	ldr R1, [R5,R1]
	ldrb R2, [R5,#5]
	bl sub_8008622
	pop {r5,pc}
.endfunc // sub_80085FE

.func
.thumb_func
sub_8008622:
	push {lr}
	cmp R2, #2
	bge loc_8008630
	mov R2, #0
	cmp R0, #0
	bne locret_8008662
	b loc_800863A
loc_8008630:
	mov R2, #0
	cmp R0, #0
	beq loc_800863A
	cmp R1, #0
	bne loc_800864C
loc_800863A:
	push {R0-R2}
	ldr R0, dword_8008938 // =0x820080
	bl sub_801DACC
	ldr R0, dword_8008938 // =0x820080
	bl sub_801BED6
	pop {R0-R2}
	b loc_8008656
loc_800864C:
	ldrh R2, [R0,#0x24]
	ldrh R3, [R1,#0x24]
	cmp R2, R3
	blt loc_8008656
	add r2, r3, #0
loc_8008656:
	tst R0, R0
	beq loc_800865C
	strh R2, [R0,#0x24]
loc_800865C:
	tst R1, R1
	beq locret_8008662
	strh R2, [R1,#0x24]
locret_8008662:
	pop {pc}
.endfunc // sub_8008622

.func
.thumb_func
sub_8008664:
	push {lr}
	ldr R1, off_8008674 // =off_8008678
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008674: .word off_8008678
off_8008678: .word sub_8008688+1
	.word sub_80086F8+1
	.word sub_8008716+1
	.word sub_800873A+1
.endfunc // sub_8008664

.func
.thumb_func
sub_8008688:
	push {r4,r6,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80086DC
	bl sub_800A84E
	add r6, r0, #0
	ldr R0, dword_800893C // =0x824C43
	bl sub_801DACC
	ldr R0, dword_800893C // =0x824C43
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	strb R1, [R0,#0x10]
	mov R0, #4
	strb R0, [R5,#3]
	bl get_802D246 // () -> int
	mov R2, #0x19
	mov r4, #0x41
	mov R1, #2
	tst R0, R1
	bne loc_80086C8
	mov R2, #0x1F
	mov r4, #0x66
loc_80086C8:
	cmp R6, #1
	bne loc_80086CE
	mov r2, #0x24
loc_80086CE:
	add r0, r2, #0
	bl sound_bgmusic_play // (int a1) -> void
	strh R4, [R5,#8]
	mov R0, #0x14
	bl loc_801E792
loc_80086DC:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_80086F6
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_80086F6
	mov R0, #0xC
	strh R0, [R5,#2]
locret_80086F6:
	pop {r4,r6,pc}
.endfunc // sub_8008688

.func
.thumb_func
sub_80086F8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008708
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008708:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008714
	mov R0, #8
	strh R0, [R5,#2]
locret_8008714:
	pop {pc}
.endfunc // sub_80086F8

.func
.thumb_func
sub_8008716:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800872C
	mov r0, #0x58
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_800872C:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008738
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8008738:
	pop {pc}
.endfunc // sub_8008716

.func
.thumb_func
sub_800873A:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800874A
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_800874A:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008762
	mov R0, #1
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #0
	bl sub_800B6C2
locret_8008762:
	pop {pc}
.endfunc // sub_800873A

.func
.thumb_func
sub_8008764:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80087B0
	ldr R0, dword_800893C // =0x824C43
	bl sub_801DACC
	ldr R0, dword_800893C // =0x824C43
	bl sub_801BED6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	mov R2, #1
	eor R1, R2
	strb R1, [R0,#0x10]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8008794
	mov R0, #0x1A
	bl sound_bgmusic_play // (int a1) -> void
loc_8008794:
	bl get_802D246 // () -> int
	mov R1, #2
	tst R0, R1
	bne loc_80087A2
	mov r4, #0x66
	b loc_80087A4
loc_80087A2:
	mov r4, #0x41
loc_80087A4:
	strh R4, [R5,#8]
	mov R0, #0x18
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
loc_80087B0:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_80087D6
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_80087D6
	mov R0, #2
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_80087D6:
	pop {r4,pc}
.endfunc // sub_8008764

.func
.thumb_func
sub_80087D8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80087FA
	ldr R0, dword_800893C // =0x824C43
	bl sub_801DACC
	ldr R0, dword_800893C // =0x824C43
	bl sub_801BED6
	mov r0, #0x66
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0x1C
	bl loc_801E792
loc_80087FA:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_800883E
	ldrh R0, [R5,#8]
	tst R0, R0
	blt locret_800883E
	bl get_802D246 // () -> int
	ldr R1, off_8008940 // =0x400
	tst R0, R1
	beq loc_8008834
	bl sub_800AF50
	cmp R0, #0
	beq loc_8008834
	cmp R0, #2
	beq loc_8008834
	cmp R0, #1
	bne loc_800882E
	mov R0, #8
	str R0, [R5]
	b locret_800883E
loc_800882E:
	mov R0, #0xC
	str R0, [R5]
	b locret_800883E
loc_8008834:
	mov R0, #3
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
locret_800883E:
	pop {pc}
.endfunc // sub_80087D8

.func
.thumb_func
sub_8008840:
	push {lr}
	ldr R1, off_8008850 // =off_8008854
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_8008850: .word off_8008854
off_8008854: .word sub_8008864+1
	.word sub_8008894+1
	.word sub_80088B2+1
	.word sub_80088D6+1
.endfunc // sub_8008840

.func
.thumb_func
sub_8008864:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008886
	ldr R0, dword_800893C // =0x824C43
	bl sub_801DACC
	ldr R0, dword_800893C // =0x824C43
	bl sub_801BED6
	mov r0, #0x54
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008886:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008892
	mov R0, #4
	strh R0, [R5,#2]
locret_8008892:
	pop {pc}
.endfunc // sub_8008864

.func
.thumb_func
sub_8008894:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80088A4
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_80088A4:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_80088B0
	mov R0, #8
	strh R0, [R5,#2]
locret_80088B0:
	pop {pc}
.endfunc // sub_8008894

.func
.thumb_func
sub_80088B2:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80088C8
	mov R0, #0x1C
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_80088C8:
	bl sub_801E754
	cmp R0, #0
	bne locret_80088D4
	mov R0, #0xC
	strh R0, [R5,#2]
locret_80088D4:
	pop {pc}
.endfunc // sub_80088B2

.func
.thumb_func
sub_80088D6:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80088E6
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_80088E6:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_80088FE
	mov R0, #7
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_80088FE:
	pop {pc}
.endfunc // sub_80088D6

.func
.thumb_func
sub_8008900:
	push {lr}
	ldrb R0, [R5,#5]
	bl sub_800A07C
	tst R0, R0
	beq locret_800891C
	mov R0, #0x9F
	bl sound_play // () -> void
	mov R0, #4
	str R0, [R5]
	ldr R0, off_8008924 // =0x200
	bl sub_801DACC
locret_800891C:
	pop {pc}
	.byte 0, 0
	.word dword_2036820
off_8008924: .word 0x200
.endfunc // sub_8008900

.func
.thumb_func
sub_8008928:
	push {lr}
	// memBlock
	ldr R0, off_8008934 // =dword_203CA70
	// size
	mov R1, #0xC
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_8008934: .word dword_203CA70
dword_8008938: .word 0x820080
dword_800893C: .word 0x824C43
off_8008940: .word 0x400
	.word 0, 0
	.byte 0, 0, 0, 0
.endfunc // sub_8008928

loc_8008950:
	push {r5,lr}
	ldr R5, off_8008988 // =dword_203CA70
	ldr R1, off_8008968 // =off_800896C
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_802DE5C
	ldrb R0, [R5,#0x4] // (byte_203CA74 - 0x203CA70)
	pop {r5,pc}
	.balign 4, 0x00
off_8008968: .word off_800896C
off_800896C: .word sub_800898C+1
	.word sub_80089CC+1
	.word sub_8008A7C+1
	.word sub_8008B7C+1
	.word sub_8008BF0+1
	.word sub_8008C58+1
	.word sub_8008D18+1
off_8008988: .word dword_203CA70
.func
.thumb_func
sub_800898C:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80089BE
	mov R0, #0
	strb R0, [R5,#4]
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	bl sub_801DF0C
	mov R0, #0
	bl sub_801DFA2
	mov R0, #0
	mov R1, #0
	bl loc_801E792
loc_80089BE:
	bl sub_801E754
	cmp R0, #0
	bne locret_80089CA
	mov R0, #4
	str R0, [R5]
locret_80089CA:
	pop {pc}
.endfunc // sub_800898C

.func
.thumb_func
sub_80089CC:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	bl sub_800A032
	mov R0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst R0, R0
	beq loc_80089F8
	bl sub_800AB7C
loc_80089F8:
	bl sub_800A152
	cmp R0, #1
	bne loc_8008A16
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x18]
	add R0, #1
	strb R0, [R1,#0x18]
	ldr R0, dword_8008D50 // =0x4000
	bl sub_801DFA2
	mov R0, #8
	str R0, [R5]
	b locret_8008A60
loc_8008A16:
	cmp R0, #2
	bne loc_8008A2A
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x19]
	add R0, #1
	strb R0, [R1,#0x19]
	mov R0, #0xC
	str R0, [R5]
	b locret_8008A60
loc_8008A2A:
	cmp R0, #7
	bne loc_8008A34
	mov R0, #0x14
	str R0, [R5]
	b locret_8008A60
loc_8008A34:
	bl sub_800A046
	cmp R0, #0xFF
	beq loc_8008A4C
	strb R0, [R5,#5]
	bl sub_800A028
	mov R0, #0x18
	str R0, [R5]
	bl sub_801E15C
	b locret_8008A60
loc_8008A4C:
	bl sub_800A21C
	cmp R0, #0
	beq locret_8008A60
	cmp R0, #1
	bne locret_8008A60
	bl sub_800A028
	mov R0, #0x14
	str R0, [R5]
locret_8008A60:
	pop {pc}
	.word 0, 0, 0
	.byte 0, 0
	.word dword_8008A74
dword_8008A74: .word 0x33250010, 0x64
.endfunc // sub_80089CC

.func
.thumb_func
sub_8008A7C:
	push {lr}
	ldr R1, off_8008A8C // =off_8008A90
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008A8C: .word off_8008A90
off_8008A90: .word sub_8008AA0+1
	.word sub_8008B10+1
	.word sub_8008B2E+1
	.word sub_8008B52+1
.endfunc // sub_8008A7C

.func
.thumb_func
sub_8008AA0:
	push {r4,r6,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008AF4
	bl sub_800A84E
	add r6, r0, #0
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	strb R1, [R0,#0x10]
	mov R0, #4
	strb R0, [R5,#3]
	bl get_802D246 // () -> int
	mov R2, #0x19
	mov r4, #0x41
	mov R1, #2
	tst R0, R1
	bne loc_8008AE0
	mov R2, #0x1F
	mov r4, #0x66
loc_8008AE0:
	cmp R6, #1
	bne loc_8008AE6
	mov r2, #0x24
loc_8008AE6:
	add r0, r2, #0
	bl sound_bgmusic_play // (int a1) -> void
	strh R4, [R5,#8]
	mov R0, #0x14
	bl loc_801E792
loc_8008AF4:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008B0E
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_8008B0E
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8008B0E:
	pop {r4,r6,pc}
.endfunc // sub_8008AA0

.func
.thumb_func
sub_8008B10:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008B20
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008B20:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008B2C
	mov R0, #8
	strh R0, [R5,#2]
locret_8008B2C:
	pop {pc}
.endfunc // sub_8008B10

.func
.thumb_func
sub_8008B2E:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008B44
	mov r0, #0x58
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008B44:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008B50
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8008B50:
	pop {pc}
.endfunc // sub_8008B2E

.func
.thumb_func
sub_8008B52:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008B62
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008B62:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008B7A
	mov R0, #1
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #0
	bl sub_800B6C2
locret_8008B7A:
	pop {pc}
.endfunc // sub_8008B52

.func
.thumb_func
sub_8008B7C:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008BC8
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801BED6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	mov R2, #1
	eor R1, R2
	strb R1, [R0,#0x10]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8008BAC
	mov R0, #0x1A
	bl sound_bgmusic_play // (int a1) -> void
loc_8008BAC:
	bl get_802D246 // () -> int
	mov R1, #2
	tst R0, R1
	bne loc_8008BBA
	mov r4, #0x66
	b loc_8008BBC
loc_8008BBA:
	mov r4, #0x41
loc_8008BBC:
	strh R4, [R5,#8]
	mov R0, #0x18
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
loc_8008BC8:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008BEE
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_8008BEE
	mov R0, #2
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_8008BEE:
	pop {r4,pc}
.endfunc // sub_8008B7C

.func
.thumb_func
sub_8008BF0:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008C12
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801BED6
	mov r0, #0x66
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0x1C
	bl loc_801E792
loc_8008C12:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008C56
	ldrh R0, [R5,#8]
	tst R0, R0
	blt locret_8008C56
	bl get_802D246 // () -> int
	ldr R1, off_8008D58 // =0x400
	tst R0, R1
	beq loc_8008C4C
	bl sub_800AF50
	cmp R0, #0
	beq loc_8008C4C
	cmp R0, #2
	beq loc_8008C4C
	cmp R0, #1
	bne loc_8008C46
	mov R0, #8
	str R0, [R5]
	b locret_8008C56
loc_8008C46:
	mov R0, #0xC
	str R0, [R5]
	b locret_8008C56
loc_8008C4C:
	mov R0, #3
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
locret_8008C56:
	pop {pc}
.endfunc // sub_8008BF0

.func
.thumb_func
sub_8008C58:
	push {lr}
	ldr R1, off_8008C68 // =off_8008C6C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008C68: .word off_8008C6C
off_8008C6C: .word sub_8008C7C+1
	.word sub_8008CAC+1
	.word sub_8008CCA+1
	.word sub_8008CEE+1
.endfunc // sub_8008C58

.func
.thumb_func
sub_8008C7C:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008C9E
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8008D54 // =0x4C43
	bl sub_801BED6
	mov r0, #0x54
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008C9E:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008CAA
	mov R0, #4
	strh R0, [R5,#2]
locret_8008CAA:
	pop {pc}
.endfunc // sub_8008C7C

.func
.thumb_func
sub_8008CAC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008CBC
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008CBC:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008CC8
	mov R0, #8
	strh R0, [R5,#2]
locret_8008CC8:
	pop {pc}
.endfunc // sub_8008CAC

.func
.thumb_func
sub_8008CCA:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008CE0
	mov R0, #0x1C
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008CE0:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008CEC
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8008CEC:
	pop {pc}
.endfunc // sub_8008CCA

.func
.thumb_func
sub_8008CEE:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008CFE
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008CFE:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008D16
	mov R0, #7
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_8008D16:
	pop {pc}
.endfunc // sub_8008CEE

.func
.thumb_func
sub_8008D18:
	push {lr}
	ldrb R0, [R5,#5]
	bl sub_800A07C
	tst R0, R0
	beq locret_8008D34
	mov R0, #0x9F
	bl sound_play // () -> void
	mov R0, #4
	str R0, [R5]
	ldr R0, off_8008D3C // =0x200
	bl sub_801DACC
locret_8008D34:
	pop {pc}
	.balign 4, 0x00
	.word dword_2036820
off_8008D3C: .word 0x200
.endfunc // sub_8008D18

.func
.thumb_func
sub_8008D40:
	push {lr}
	// memBlock
	ldr R0, off_8008D4C // =dword_203CA70
	// size
	mov R1, #0xC
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_8008D4C: .word dword_203CA70
dword_8008D50: .word 0x4000
dword_8008D54: .word 0x4C43
off_8008D58: .word 0x400
	.byte 0, 0, 0, 0
.endfunc // sub_8008D40

loc_8008D60:
	push {r5,lr}
	ldr R5, off_8008D98 // =dword_203CA70
	ldr R1, off_8008D78 // =off_8008D7C
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_802DE5C
	ldrb R0, [R5,#0x4] // (byte_203CA74 - 0x203CA70)
	pop {r5,pc}
	.balign 4, 0x00
off_8008D78: .word off_8008D7C
off_8008D7C: .word sub_8008D9C+1
	.word sub_8008DDC+1
	.word sub_8008E7C+1
	.word sub_8008F7C+1
	.word sub_8008FF0+1
	.word sub_8009058+1
	.word sub_8009118+1
off_8008D98: .word dword_203CA70
.func
.thumb_func
sub_8008D9C:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008DCE
	mov R0, #0
	strb R0, [R5,#4]
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	bl sub_801DF0C
	mov R0, #0
	bl sub_801DFA2
	mov R0, #0
	mov R1, #0
	bl loc_801E792
loc_8008DCE:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008DDA
	mov R0, #4
	str R0, [R5]
locret_8008DDA:
	pop {pc}
.endfunc // sub_8008D9C

.func
.thumb_func
sub_8008DDC:
	push {lr}
	mov R0, #0
	bl sub_8012DFC
	mov R0, #1
	bl sub_8012DFC
	bl sub_800A032
	mov R0, #1
	bl battle_setFlags
	bl sub_800AE0C
	bl sub_800A6A6
	bl sub_800A97A
	tst R0, R0
	beq loc_8008E08
	bl sub_800AB7C
loc_8008E08:
	bl sub_800A152
	cmp R0, #1
	bne loc_8008E20
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x18]
	add R0, #1
	strb R0, [R1,#0x18]
	mov R0, #8
	str R0, [R5]
	b locret_8008E6A
loc_8008E20:
	cmp R0, #2
	bne loc_8008E34
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x19]
	add R0, #1
	strb R0, [R1,#0x19]
	mov R0, #0xC
	str R0, [R5]
	b locret_8008E6A
loc_8008E34:
	cmp R0, #7
	bne loc_8008E3E
	mov R0, #0x14
	str R0, [R5]
	b locret_8008E6A
loc_8008E3E:
	bl sub_800A046
	cmp R0, #0xFF
	beq loc_8008E56
	strb R0, [R5,#5]
	bl sub_800A028
	mov R0, #0x18
	str R0, [R5]
	bl sub_801E15C
	b locret_8008E6A
loc_8008E56:
	bl sub_800A21C
	cmp R0, #0
	beq locret_8008E6A
	cmp R0, #1
	bne locret_8008E6A
	bl sub_800A028
	mov R0, #0x14
	str R0, [R5]
locret_8008E6A:
	pop {pc}
	.byte 0, 0, 0, 0
	.word dword_8008E74
dword_8008E74: .word 0x33250010, 0x64
.endfunc // sub_8008DDC

.func
.thumb_func
sub_8008E7C:
	push {lr}
	ldr R1, off_8008E8C // =off_8008E90
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8008E8C: .word off_8008E90
off_8008E90: .word sub_8008EA0+1
	.word sub_8008F10+1
	.word sub_8008F2E+1
	.word sub_8008F52+1
.endfunc // sub_8008E7C

.func
.thumb_func
sub_8008EA0:
	push {r4,r6,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008EF4
	bl sub_800A84E
	add r6, r0, #0
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801BED6
	bl sub_800A7E2
	bl sub_8014040
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	strb R1, [R0,#0x10]
	mov R0, #4
	strb R0, [R5,#3]
	bl get_802D246 // () -> int
	mov R2, #0x19
	mov r4, #0x41
	mov R1, #2
	tst R0, R1
	bne loc_8008EE0
	mov R2, #0x1F
	mov r4, #0x66
loc_8008EE0:
	cmp R6, #1
	bne loc_8008EE6
	mov r2, #0x24
loc_8008EE6:
	add r0, r2, #0
	bl sound_bgmusic_play // (int a1) -> void
	strh R4, [R5,#8]
	mov R0, #0x14
	bl loc_801E792
loc_8008EF4:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008F0E
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_8008F0E
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8008F0E:
	pop {r4,r6,pc}
.endfunc // sub_8008EA0

.func
.thumb_func
sub_8008F10:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008F20
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008F20:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008F2C
	mov R0, #8
	strh R0, [R5,#2]
locret_8008F2C:
	pop {pc}
.endfunc // sub_8008F10

.func
.thumb_func
sub_8008F2E:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008F44
	mov r0, #0x58
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008F44:
	bl sub_801E754
	cmp R0, #0
	bne locret_8008F50
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8008F50:
	pop {pc}
.endfunc // sub_8008F2E

.func
.thumb_func
sub_8008F52:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008F62
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_8008F62:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8008F7A
	mov R0, #1
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #0
	bl sub_800B6C2
locret_8008F7A:
	pop {pc}
.endfunc // sub_8008F52

.func
.thumb_func
sub_8008F7C:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8008FC8
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801BED6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0xD]
	mov R2, #1
	eor R1, R2
	strb R1, [R0,#0x10]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8008FAC
	mov R0, #0x1A
	bl sound_bgmusic_play // (int a1) -> void
loc_8008FAC:
	bl get_802D246 // () -> int
	mov R1, #2
	tst R0, R1
	bne loc_8008FBA
	mov r4, #0x66
	b loc_8008FBC
loc_8008FBA:
	mov r4, #0x41
loc_8008FBC:
	strh R4, [R5,#8]
	mov R0, #0x18
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
loc_8008FC8:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8008FEE
	mov R0, #8
	ldrsh R0, [R5,R0]
	tst R0, R0
	bgt locret_8008FEE
	mov R0, #2
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_8008FEE:
	pop {r4,pc}
.endfunc // sub_8008F7C

.func
.thumb_func
sub_8008FF0:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009012
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801BED6
	mov r0, #0x66
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0x1C
	bl loc_801E792
loc_8009012:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bl sub_801E754
	cmp R0, #0
	bne locret_8009056
	ldrh R0, [R5,#8]
	tst R0, R0
	blt locret_8009056
	bl get_802D246 // () -> int
	ldr R1, off_8009154 // =0x400
	tst R0, R1
	beq loc_800904C
	bl sub_800AF50
	cmp R0, #0
	beq loc_800904C
	cmp R0, #2
	beq loc_800904C
	cmp R0, #1
	bne loc_8009046
	mov R0, #8
	str R0, [R5]
	b locret_8009056
loc_8009046:
	mov R0, #0xC
	str R0, [R5]
	b locret_8009056
loc_800904C:
	mov R0, #3
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
locret_8009056:
	pop {pc}
.endfunc // sub_8008FF0

.func
.thumb_func
sub_8009058:
	push {lr}
	ldr R1, off_8009068 // =off_800906C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009068: .word off_800906C
off_800906C: .word sub_800907C+1
	.word sub_80090AC+1
	.word sub_80090CA+1
	.word sub_80090EE+1
.endfunc // sub_8009058

.func
.thumb_func
sub_800907C:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800909E
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801DACC
	ldr R0, dword_8009150 // =0x4C43
	bl sub_801BED6
	mov r0, #0x54
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_800909E:
	bl sub_801E754
	cmp R0, #0
	bne locret_80090AA
	mov R0, #4
	strh R0, [R5,#2]
locret_80090AA:
	pop {pc}
.endfunc // sub_800907C

.func
.thumb_func
sub_80090AC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80090BC
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_80090BC:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_80090C8
	mov R0, #8
	strh R0, [R5,#2]
locret_80090C8:
	pop {pc}
.endfunc // sub_80090AC

.func
.thumb_func
sub_80090CA:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80090E0
	mov R0, #0x1C
	bl loc_801E792
	mov R0, #0
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_80090E0:
	bl sub_801E754
	cmp R0, #0
	bne locret_80090EC
	mov R0, #0xC
	strh R0, [R5,#2]
locret_80090EC:
	pop {pc}
.endfunc // sub_80090CA

.func
.thumb_func
sub_80090EE:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80090FE
	mov R0, #0x1E
	strh R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#3]
loc_80090FE:
	ldrh R0, [R5,#8]
	sub R0, #1
	strh R0, [R5,#8]
	bgt locret_8009116
	mov R0, #7
	strb R0, [R5,#4]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	strb R0, [R1,#0x14]
	mov R0, #1
	bl sub_800B6C2
locret_8009116:
	pop {pc}
.endfunc // sub_80090EE

.func
.thumb_func
sub_8009118:
	push {lr}
	ldrb R0, [R5,#5]
	bl sub_800A07C
	tst R0, R0
	beq locret_8009134
	mov R0, #0x9F
	bl sound_play // () -> void
	mov R0, #4
	str R0, [R5]
	ldr R0, off_800913C // =0x200
	bl sub_801DACC
locret_8009134:
	pop {pc}
	.balign 4, 0x00
	.word dword_2036820
off_800913C: .word 0x200
.endfunc // sub_8009118

.func
.thumb_func
sub_8009140:
	push {lr}
	// memBlock
	ldr R0, off_800914C // =dword_203CA70
	// size
	mov R1, #0xC
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_800914C: .word dword_203CA70
dword_8009150: .word 0x4C43
off_8009154: .word 0x400
.endfunc // sub_8009140

loc_8009158:
	push {lr}
	ldr R1, off_80091B8 // =off_80091BC
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_80091B6
	bl sub_80103EC
	ldrh R1, [R0,#0x26]
	ldrh R0, [R0,#0x24]
	lsr r1, r1, #2
	cmp R0, R1
	bgt loc_800919A
	ldrh R0, [R5,#0x20]
	cmp R0, #0
	bne locret_80091B6
	mov R0, #1
	strh R0, [R5,#0x20]
	mov R0, #0x1F
	ldr R1, dword_80091E4 // =0xFFFF
	ldr R2, off_80091E8 // =0x100
	bl sub_800065A
	mov R0, #0x1F
	ldr R1, dword_80091EC // =0x11A
	bl sound_8000672
	b locret_80091B6
loc_800919A:
	ldrh R0, [R5,#0x20]
	cmp R0, #0
	beq locret_80091B6
	mov R0, #0
	strh R0, [R5,#0x20]
	mov R0, #0x1F
	ldr R1, dword_80091E4 // =0xFFFF
	mov R2, #0
	bl sub_800065A
	mov R0, #0x1F
	ldr R1, off_80091E8 // =0x100
	bl sound_8000672
locret_80091B6:
	pop {pc}
off_80091B8: .word off_80091BC
off_80091BC: .word sub_80091F0+1
	.word sub_80092A0+1
	.word sub_8009338+1
	.word sub_800938A+1
	.word sub_800945C+1
	.word sub_80094DA+1
	.word sub_800951E+1
	.word sub_8009552+1
	.word sub_8009594+1
	.word sub_80095C8+1
dword_80091E4: .word 0xFFFF
off_80091E8: .word 0x100
dword_80091EC: .word 0x11A
.func
.thumb_func
sub_80091F0:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009240
	bl get_802D246 // () -> int
	ldr R1, off_8009278 // =0x400
	tst R0, R1
	bne loc_800920A
	ldr R1, [R5,#0x3C]
	ldrb R1, [R1,#5]
	strb R1, [R5,#0x1A]
	b loc_8009210
loc_800920A:
	ldrb R1, [R5,#0x1A]
	add R1, #1
	strb R1, [R5,#0x1A]
loc_8009210:
	bl sub_80E06F8
	bl sub_8007358
	bl sub_800A028
	bl sub_8014178
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800922E
	mov R0, #0x15
	b loc_8009232
loc_800922E:
	ldr R0, [R5,#0x3C]
	ldrb R0, [R0,#2]
loc_8009232:
	cmp r0, #0x63
	beq loc_800923A
	bl sound_bgmusic_play // (int a1) -> void
loc_800923A:
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009276
loc_8009240:
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_800924E
	bl sub_800927C
	mov R0, #4
	strb R0, [R5,#2]
loc_800924E:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_8009276
	mov R0, #1
	bl sub_801DA48
	mov R0, #1
	bl sub_801BECC
	mov R4, #4
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x35
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8009270
	mov r4, #0x24
loc_8009270:
	strb R4, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009276:
	pop {r4,r6,r7,pc}
off_8009278: .word 0x400
.endfunc // sub_80091F0

.func
.thumb_func
sub_800927C:
	push {lr}
	ldr R0, off_800929C // =0x484
	bl sub_801BECC
	ldr R0, off_800929C // =0x484
	bl sub_801DA48
	bl sub_801E5F8
	bl sub_801DA24
	mov R0, #0
	mov R1, #0
	bl sub_801E0A0
	pop {pc}
off_800929C: .word 0x484
.endfunc // sub_800927C

.func
.thumb_func
sub_80092A0:
	push {lr}
	ldr R1, off_80092B0 // =off_80092B4
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_80092B0: .word off_80092B4
off_80092B4: .word sub_80092C0+1
	.word sub_80092F0+1
	.word sub_8009314+1
.endfunc // sub_80092A0

.func
.thumb_func
sub_80092C0:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80092D8
	ldrb R1, [R5,#0x1A]
	tst R1, R1
	beq loc_80092E6
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80092EE
loc_80092D8:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_80092EE
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_80092E6:
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80092EE:
	pop {pc}
.endfunc // sub_80092C0

.func
.thumb_func
sub_80092F0:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009306
	mov R0, #0
	ldrb R1, [R5,#0x1A]
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009312
loc_8009306:
	bl sub_801E754
	tst R0, R0
	bne locret_8009312
	mov R0, #8
	strh R0, [R5,#2]
locret_8009312:
	pop {pc}
.endfunc // sub_80092F0

.func
.thumb_func
sub_8009314:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009326
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009336
loc_8009326:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8009336
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009336:
	pop {pc}
.endfunc // sub_8009314

.func
.thumb_func
sub_8009338:
	push {lr}
	ldrb R0, [R5,#3]
	cmp R0, #0
	bne loc_800934E
	mov R0, #4
	bl sub_800A9CA
	mov R0, #1
	strb R0, [R5,#3]
	bl sub_8026840
loc_800934E:
	bl loc_8026A28
	cmp R0, #0
	beq locret_8009388
	cmp R0, #2
	bne loc_8009360
	bl sub_800AABC
	b locret_8009388
loc_8009360:
	mov R0, #0
	bl sub_80103BC
	cmp R0, #0
	beq loc_8009370
	ldr R0, [R0,#0x58]
	mov R1, #1
	strb R1, [R0,#0xF]
loc_8009370:
	mov R0, #1
	bl sub_80103BC
	cmp R0, #0
	beq loc_8009380
	ldr R0, [R0,#0x58]
	mov R1, #1
	strb R1, [R0,#0xF]
loc_8009380:
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009388:
	pop {pc}
.endfunc // sub_8009338

.func
.thumb_func
sub_800938A:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800939A
	bl sub_80084C0
	mov R0, #4
	strb R0, [R5,#3]
loc_800939A:
	bl sub_800801C
	bl sub_800B090
	cmp R0, #6
	bne loc_80093B0
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_800945A
loc_80093B0:
	cmp R0, #0
	beq locret_800945A
	push {r0}
	ldrb R0, [R5,#7]
	bl sub_800B6E6
	pop {r0}
	cmp R0, #1
	bne loc_8009414
	mov R0, #1
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl sub_800B6F2
	bl sub_802D234
	mov R2, #0x18
	cmp R0, #4
	beq loc_8009454
	mov R2, #0x1C
	cmp R0, #5
	beq loc_8009454
	mov r2, #0x20
	cmp R0, #8
	beq loc_8009454
	bl get_802D246 // () -> int
	mov R1, #2
	tst R0, R1
	beq loc_8009452
	bl get_802D246 // () -> int
	mov R2, #0x10
	ldr R1, off_80095F8 // =0x400
	tst R0, R1
	beq loc_8009454
	push {r2}
	bl sub_800AF50
	tst R0, R0
	pop {r2}
	beq loc_8009452
	cmp R0, #2
	beq loc_8009452
	b loc_8009454
loc_8009414:
	cmp R0, #2
	bne loc_8009452
	mov R0, #2
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8009452
	mov R1, #2
	tst R0, R1
	beq loc_8009452
	mov R2, #0x10
	ldr R1, off_80095F8 // =0x400
	tst R0, R1
	beq loc_8009454
	push {r2}
	bl sub_800AF50
	tst R0, R0
	pop {r2}
	beq loc_8009452
	cmp R0, #2
	beq loc_8009452
	b loc_8009454
loc_8009452:
	mov R2, #0x14
loc_8009454:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_800945A:
	pop {r4,pc}
.endfunc // sub_800938A

.func
.thumb_func
sub_800945C:
	push {lr}
	ldr R1, off_800946C // =off_8009470
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_800946C: .word off_8009470
off_8009470: .word sub_8009478+1
	.word sub_80094B6+1
.endfunc // sub_800945C

.func
.thumb_func
sub_8009478:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800948E
	bl sub_800B428
	mov R0, #0
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80094B4
loc_800948E:
	ldr R0, dword_80095FC // =0x1F2F3F4F
	bl sub_800B46C
	tst R0, R0
	beq loc_80094A6
	bl sub_800B460
	bl sub_800B444
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_80094A6:
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	cmp R0, #0xB4
	ble locret_80094B4
	mov R0, #0xC
	str R0, [R5]
locret_80094B4:
	pop {pc}
.endfunc // sub_8009478

.func
.thumb_func
sub_80094B6:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80094C8
	ldr R0, off_8009600 // =unk_2035260
	bl sub_802C34E
	mov R0, #4
	strb R0, [R5,#3]
loc_80094C8:
	bl sub_802BD60
	tst R0, R0
	bne locret_80094D8
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80094D8:
	pop {pc}
.endfunc // sub_80094B6

.func
.thumb_func
sub_80094DA:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009508
	ldr R1, dword_8009604 // =0x173
	ldr R2, dword_8009608 // =0x17E
	bl sub_800A7A6
	cmp R0, #0
	beq loc_80094FA
	bl sub_800A832
	cmp R0, #1
	bne loc_80094FA
	mov R0, #4
	b loc_80094FC
loc_80094FA:
	mov R0, #0xC
loc_80094FC:
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_800951C
loc_8009508:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_800951C
	bl musicGameState_8000784 // () -> void
	mov R0, #0x1A
	bl sub_80035A2
	mov R0, #8
	str R0, [R5]
locret_800951C:
	pop {pc}
.endfunc // sub_80094DA

.func
.thumb_func
sub_800951E:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009534
	ldr R0, off_800960C // =scripts_fullSynchro_86F3F5C
	mov R1, #0xA
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009550
loc_8009534:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8009550
	bl get_802D246 // () -> int
	mov R2, #0x10
	mov R1, #2
	tst R0, R1
	bne loc_800954A
	mov R2, #0x14
loc_800954A:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009550:
	pop {pc}
.endfunc // sub_800951E

.func
.thumb_func
sub_8009552:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009576
	mov R2, R10
	ldr R2, [R2,#0x18]
	ldrb R0, [R2,#7]
	cmp R0, #1
	bgt loc_8009568
	mov R1, #0x10
	b loc_800956A
loc_8009568:
	mov r1, #0x20
loc_800956A:
	ldr R0, off_8009610 // =scripts_dad_cybeastTut_86F4498
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009592
loc_8009576:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8009592
	bl get_802D246 // () -> int
	mov R2, #0x10
	mov R1, #2
	tst R0, R1
	bne loc_800958C
	mov R2, #0x14
loc_800958C:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009592:
	pop {pc}
.endfunc // sub_8009552

.func
.thumb_func
sub_8009594:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80095AA
	ldr R0, off_8009614 // =scripts_shuko_crossTut_86F53CC
	mov R1, #3
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80095C6
loc_80095AA:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_80095C6
	bl get_802D246 // () -> int
	mov R2, #0x10
	mov R1, #2
	tst R0, R1
	bne loc_80095C0
	mov R2, #0x14
loc_80095C0:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80095C6:
	pop {pc}
.endfunc // sub_8009594

.func
.thumb_func
sub_80095C8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80095E4
	bl getPETNaviSelect // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr R0, off_8009618 // =scripts_commErr_87370C0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80095F4
loc_80095E4:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_80095F4
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80095F4:
	pop {pc}
	.balign 4, 0x00
off_80095F8: .word 0x400
dword_80095FC: .word 0x1F2F3F4F
off_8009600: .word unk_2035260
dword_8009604: .word 0x173
dword_8009608: .word 0x17E
off_800960C: .word scripts_fullSynchro_86F3F5C
off_8009610: .word scripts_dad_cybeastTut_86F4498
off_8009614: .word scripts_shuko_crossTut_86F53CC
off_8009618: .word scripts_commErr_87370C0
.endfunc // sub_80095C8

loc_800961C:
	push {lr}
	ldr R1, off_800962C // =off_8009630
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_800962C: .word off_8009630
off_8009630: .word sub_8009658+1
	.word sub_8009734+1
	.word sub_80097CC+1
	.word sub_800980E+1
	.word sub_80098BC+1
	.word sub_800993A+1
	.word 0x0, 0x0, 0x0
	.word sub_8009966+1
.func
.thumb_func
sub_8009658:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80096A8
	bl get_802D246 // () -> int
	ldr R1, off_8009994 // =0x400
	tst R0, R1
	bne loc_8009672
	ldr R1, [R5,#0x3C]
	ldrb R1, [R1,#5]
	strb R1, [R5,#0x1A]
	b loc_8009678
loc_8009672:
	ldrb R1, [R5,#0x1A]
	add R1, #1
	strb R1, [R5,#0x1A]
loc_8009678:
	bl sub_80E06F8
	bl sub_8007358
	bl sub_800A028
	bl sub_8014178
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8009696
	mov R0, #0x15
	b loc_800969A
loc_8009696:
	ldr R0, [R5,#0x3C]
	ldrb R0, [R0,#2]
loc_800969A:
	cmp r0, #0x63
	beq loc_80096A2
	bl sound_bgmusic_play // (int a1) -> void
loc_80096A2:
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80096DE
loc_80096A8:
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_80096B6
	bl sub_80096E0
	mov R0, #4
	strb R0, [R5,#2]
loc_80096B6:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_80096DE
	mov R0, #1
	bl sub_801DA48
	mov R0, #1
	bl sub_801BECC
	mov R4, #4
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x35
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_80096D8
	mov r4, #0x24
loc_80096D8:
	strb R4, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80096DE:
	pop {r4,r6,r7,pc}
.endfunc // sub_8009658

.func
.thumb_func
sub_80096E0:
	push {lr}
	ldr R0, off_8009700 // =0x404
	bl sub_801BECC
	ldr R0, off_8009700 // =0x404
	bl sub_801DA48
	bl sub_801DA24
	bl sub_801DF0C
	mov R0, #0
	bl sub_801DFA2
	pop {pc}
	.byte 0, 0
off_8009700: .word 0x404
.endfunc // sub_80096E0

.func
.thumb_func
sub_8009704:
	push {lr}
	mov R0, #0x80
	ldr R0, [R5,R0]
	mov R1, #0x84
	ldr R1, [R5,R1]
	bl sub_8009720
	mov R0, #0x90
	ldr R0, [R5,R0]
	mov R1, #0x94
	ldr R1, [R5,R1]
	bl sub_8009720
	pop {pc}
.endfunc // sub_8009704

.func
.thumb_func
sub_8009720:
	cmp R0, #0
	beq locret_8009732
	cmp R1, #0
	beq locret_8009732
	ldr R2, [R0,#0x24]
	ldr R3, [R1,#0x24]
	add r2, r2, r3
	str R2, [R0,#0x24]
	str R2, [R1,#0x24]
locret_8009732:
	mov PC, LR
.endfunc // sub_8009720

.func
.thumb_func
sub_8009734:
	push {lr}
	ldr R1, off_8009744 // =off_8009748
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009744: .word off_8009748
off_8009748: .word sub_8009754+1
	.word sub_8009784+1
	.word sub_80097A8+1
.endfunc // sub_8009734

.func
.thumb_func
sub_8009754:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800976C
	ldrb R1, [R5,#0x1A]
	tst R1, R1
	beq loc_800977A
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009782
loc_800976C:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8009782
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_800977A:
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009782:
	pop {pc}
.endfunc // sub_8009754

.func
.thumb_func
sub_8009784:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800979A
	mov R0, #0
	ldrb R1, [R5,#0x1A]
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80097A6
loc_800979A:
	bl sub_801E754
	tst R0, R0
	bne locret_80097A6
	mov R0, #8
	strh R0, [R5,#2]
locret_80097A6:
	pop {pc}
.endfunc // sub_8009784

.func
.thumb_func
sub_80097A8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80097BA
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_80097CA
loc_80097BA:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_80097CA
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80097CA:
	pop {pc}
.endfunc // sub_80097A8

.func
.thumb_func
sub_80097CC:
	push {lr}
	ldrb R0, [R5,#3]
	cmp R0, #0
	bne loc_80097E8
	mov R0, #4
	bl sub_800A9CA
	mov R0, #1
	strb R0, [R5,#3]
	bl sub_802A866
	mov R0, #1
	bl battle_setFlags
loc_80097E8:
	bl loc_802A87C
	cmp R0, #0
	beq locret_800980C
	cmp R0, #2
	bne loc_80097FA
	bl sub_800AABC
	b locret_800980C
loc_80097FA:
	mov R0, #4
	bl sub_800A9D6
	bl sub_8009704
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_800980C:
	pop {pc}
.endfunc // sub_80097CC

.func
.thumb_func
sub_800980E:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_800981E
	bl sub_8008928
	mov R0, #4
	strb R0, [R5,#3]
loc_800981E:
	bl sub_80084F0
	bl sub_800B090
	cmp R0, #0
	beq locret_80098BA
	push {r0}
	ldrb R0, [R5,#7]
	bl sub_800B6E6
	pop {r0}
	cmp R0, #1
	bne loc_8009870
	mov R0, #1
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl sub_800B6F2
	bl get_802D246 // () -> int
	mov R1, #2
	tst R0, R1
	beq loc_80098B2
	bl get_802D246 // () -> int
	mov R2, #0x10
	ldr R1, off_8009994 // =0x400
	tst R0, R1
	beq loc_80098B4
	push {r2}
	bl sub_800AF50
	tst R0, R0
	pop {r2}
	beq loc_80098B2
	b loc_80098B4
loc_8009870:
	cmp R0, #2
	bne loc_80098A8
	mov R0, #2
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_80098B2
	mov R1, #2
	tst R0, R1
	beq loc_80098B2
	ldr R1, off_8009994 // =0x400
	tst R0, R1
	beq loc_80098B4
	push {r2}
	bl sub_800AF50
	tst R0, R0
	pop {r2}
	beq loc_80098B2
	b loc_80098B4
loc_80098A8:
	cmp R0, #7
	bne loc_80098B2
	mov R0, #7
	bl sub_800A840
loc_80098B2:
	mov R2, #0x14
loc_80098B4:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80098BA:
	pop {r4,pc}
.endfunc // sub_800980E

.func
.thumb_func
sub_80098BC:
	push {lr}
	ldr R1, off_80098CC // =off_80098D0
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_80098CC: .word off_80098D0
off_80098D0: .word sub_80098D8+1
	.word sub_8009916+1
.endfunc // sub_80098BC

.func
.thumb_func
sub_80098D8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_80098EE
	bl sub_800B428
	mov R0, #0
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009914
loc_80098EE:
	ldr R0, dword_8009998 // =0x1F2F3F4F
	bl sub_800B46C
	tst R0, R0
	beq loc_8009906
	bl sub_800B460
	bl sub_800B444
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_8009906:
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	cmp R0, #0xB4
	ble locret_8009914
	mov R0, #0xC
	str R0, [R5]
locret_8009914:
	pop {pc}
.endfunc // sub_80098D8

.func
.thumb_func
sub_8009916:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009928
	ldr R0, off_800999C // =unk_2035260
	bl sub_802C34E
	mov R0, #4
	strb R0, [R5,#3]
loc_8009928:
	bl sub_802BD60
	tst R0, R0
	bne locret_8009938
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009938:
	pop {pc}
.endfunc // sub_8009916

.func
.thumb_func
sub_800993A:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009950
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009964
loc_8009950:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8009964
	bl musicGameState_8000784 // () -> void
	mov R0, #0x1A
	bl sub_80035A2
	mov R0, #8
	str R0, [R5]
locret_8009964:
	pop {pc}
.endfunc // sub_800993A

.func
.thumb_func
sub_8009966:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009982
	bl getPETNaviSelect // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr R0, off_80099A0 // =scripts_commErr_87370C0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009992
loc_8009982:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8009992
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009992:
	pop {pc}
off_8009994: .word 0x400
dword_8009998: .word 0x1F2F3F4F
off_800999C: .word unk_2035260
off_80099A0: .word scripts_commErr_87370C0
.endfunc // sub_8009966

loc_80099A4:
	push {lr}
	ldr R1, off_80099B4 // =off_80099B8
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_80099B4: .word off_80099B8
off_80099B8: .word sub_80099E0+1
	.word sub_8009A88+1
	.word 0x0
	.word sub_8009B20+1
	.word sub_8009BAC+1
	.word sub_8009C2A+1
	.word 0x0, 0x0, 0x0
	.word sub_8009C56+1
.func
.thumb_func
sub_80099E0:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009A30
	bl get_802D246 // () -> int
	ldr R1, off_8009C84 // =0x400
	tst R0, R1
	bne loc_80099FA
	ldr R1, [R5,#0x3C]
	ldrb R1, [R1,#5]
	strb R1, [R5,#0x1A]
	b loc_8009A00
loc_80099FA:
	ldrb R1, [R5,#0x1A]
	add R1, #1
	strb R1, [R5,#0x1A]
loc_8009A00:
	bl sub_80E06F8
	bl sub_8007358
	bl sub_800A028
	bl sub_8014178
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8009A1E
	mov R0, #0x15
	b loc_8009A22
loc_8009A1E:
	ldr R0, [R5,#0x3C]
	ldrb R0, [R0,#2]
loc_8009A22:
	cmp r0, #0x63
	beq loc_8009A2A
	bl sound_bgmusic_play // (int a1) -> void
loc_8009A2A:
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009A66
loc_8009A30:
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_8009A3E
	bl sub_8009A68
	mov R0, #4
	strb R0, [R5,#2]
loc_8009A3E:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_8009A66
	mov R0, #1
	bl sub_801DA48
	mov R0, #1
	bl sub_801BECC
	mov R4, #4
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x35
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8009A60
	mov r4, #0x24
loc_8009A60:
	strb R4, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009A66:
	pop {r4,r6,r7,pc}
.endfunc // sub_80099E0

.func
.thumb_func
sub_8009A68:
	push {lr}
	ldr R0, off_8009A84 // =0x404
	bl sub_801BECC
	ldr R0, off_8009A84 // =0x404
	bl sub_801DA48
	bl sub_801DA24
	mov R0, #0
	mov R1, #0
	bl sub_801E0A0
	pop {pc}
off_8009A84: .word 0x404
.endfunc // sub_8009A68

.func
.thumb_func
sub_8009A88:
	push {lr}
	ldr R1, off_8009A98 // =off_8009A9C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009A98: .word off_8009A9C
off_8009A9C: .word sub_8009AA8+1
	.word sub_8009AD8+1
	.word sub_8009AFC+1
.endfunc // sub_8009A88

.func
.thumb_func
sub_8009AA8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009AC0
	ldrb R1, [R5,#0x1A]
	tst R1, R1
	beq loc_8009ACE
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009AD6
loc_8009AC0:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8009AD6
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_8009ACE:
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009AD6:
	pop {pc}
.endfunc // sub_8009AA8

.func
.thumb_func
sub_8009AD8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009AEE
	mov R0, #0
	ldrb R1, [R5,#0x1A]
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009AFA
loc_8009AEE:
	bl sub_801E754
	tst R0, R0
	bne locret_8009AFA
	mov R0, #8
	strh R0, [R5,#2]
locret_8009AFA:
	pop {pc}
.endfunc // sub_8009AD8

.func
.thumb_func
sub_8009AFC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009B0E
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009B1E
loc_8009B0E:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8009B1E
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009B1E:
	pop {pc}
.endfunc // sub_8009AFC

.func
.thumb_func
sub_8009B20:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009B30
	bl sub_8008D40
	mov R0, #4
	strb R0, [R5,#3]
loc_8009B30:
	bl loc_8008950
	bl sub_800B090
	cmp R0, #0
	beq locret_8009BAA
	push {r0}
	ldrb R0, [R5,#7]
	bl sub_800B6E6
	pop {r0}
	cmp R0, #1
	bne loc_8009B60
	mov R0, #1
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl sub_800B6F2
	b loc_8009BA2
loc_8009B60:
	cmp R0, #2
	bne loc_8009B98
	mov R0, #2
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8009BA2
	mov R1, #2
	tst R0, R1
	beq loc_8009BA2
	ldr R1, off_8009C84 // =0x400
	tst R0, R1
	beq loc_8009BA4
	push {r2}
	bl sub_800AF50
	tst R0, R0
	pop {r2}
	beq loc_8009BA2
	b loc_8009BA4
loc_8009B98:
	cmp R0, #7
	bne loc_8009BA2
	mov R0, #7
	bl sub_800A840
loc_8009BA2:
	mov R2, #0x14
loc_8009BA4:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009BAA:
	pop {r4,pc}
.endfunc // sub_8009B20

.func
.thumb_func
sub_8009BAC:
	push {lr}
	ldr R1, off_8009BBC // =off_8009BC0
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009BBC: .word off_8009BC0
off_8009BC0: .word sub_8009BC8+1
	.word sub_8009C06+1
.endfunc // sub_8009BAC

.func
.thumb_func
sub_8009BC8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009BDE
	bl sub_800B428
	mov R0, #0
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009C04
loc_8009BDE:
	ldr R0, dword_8009C88 // =0x1F2F3F4F
	bl sub_800B46C
	tst R0, R0
	beq loc_8009BF6
	bl sub_800B460
	bl sub_800B444
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_8009BF6:
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	cmp R0, #0xB4
	ble locret_8009C04
	mov R0, #0xC
	str R0, [R5]
locret_8009C04:
	pop {pc}
.endfunc // sub_8009BC8

.func
.thumb_func
sub_8009C06:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009C18
	ldr R0, off_8009C8C // =unk_2035260
	bl sub_802C34E
	mov R0, #4
	strb R0, [R5,#3]
loc_8009C18:
	bl sub_802BD60
	tst R0, R0
	bne locret_8009C28
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009C28:
	pop {pc}
.endfunc // sub_8009C06

.func
.thumb_func
sub_8009C2A:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009C40
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009C54
loc_8009C40:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8009C54
	bl musicGameState_8000784 // () -> void
	mov R0, #0x1A
	bl sub_80035A2
	mov R0, #8
	str R0, [R5]
locret_8009C54:
	pop {pc}
.endfunc // sub_8009C2A

.func
.thumb_func
sub_8009C56:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009C72
	bl getPETNaviSelect // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr R0, off_8009C90 // =scripts_commErr_87370C0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009C82
loc_8009C72:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8009C82
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009C82:
	pop {pc}
off_8009C84: .word 0x400
dword_8009C88: .word 0x1F2F3F4F
off_8009C8C: .word unk_2035260
off_8009C90: .word scripts_commErr_87370C0
.endfunc // sub_8009C56

loc_8009C94:
	push {lr}
	ldr R1, off_8009CA4 // =off_8009CA8
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009CA4: .word off_8009CA8
off_8009CA8: .word sub_8009CD0+1
	.word sub_8009D78+1
	.word sub_8009E10+1
	.word sub_8009E56+1
	.word loc_8009EE2+1
	.word sub_8009F5E+1
	.word 0x0, 0x0, 0x0
	.word sub_8009F8A+1
.func
.thumb_func
sub_8009CD0:
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009D20
	bl get_802D246 // () -> int
	ldr R1, off_8009FB8 // =0x400
	tst R0, R1
	bne loc_8009CEA
	ldr R1, [R5,#0x3C]
	ldrb R1, [R1,#5]
	strb R1, [R5,#0x1A]
	b loc_8009CF0
loc_8009CEA:
	ldrb R1, [R5,#0x1A]
	add R1, #1
	strb R1, [R5,#0x1A]
loc_8009CF0:
	bl sub_80E06F8
	bl sub_8007358
	bl sub_800A028
	bl sub_8014178
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8009D0E
	mov R0, #0x15
	b loc_8009D12
loc_8009D0E:
	ldr R0, [R5,#0x3C]
	ldrb R0, [R0,#2]
loc_8009D12:
	cmp r0, #0x63
	beq loc_8009D1A
	bl sound_bgmusic_play // (int a1) -> void
loc_8009D1A:
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009D56
loc_8009D20:
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_8009D2E
	bl sub_8009D58
	mov R0, #4
	strb R0, [R5,#2]
loc_8009D2E:
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_8009D56
	mov R0, #1
	bl sub_801DA48
	mov R0, #1
	bl sub_801BECC
	mov R4, #4
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x35
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8009D50
	mov r4, #0x24
loc_8009D50:
	strb R4, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009D56:
	pop {r4,r6,r7,pc}
.endfunc // sub_8009CD0

.func
.thumb_func
sub_8009D58:
	push {lr}
	ldr R0, off_8009D74 // =0x404
	bl sub_801BECC
	ldr R0, off_8009D74 // =0x404
	bl sub_801DA48
	bl sub_801DA24
	mov R0, #0
	mov R1, #0
	bl sub_801E0A0
	pop {pc}
off_8009D74: .word 0x404
.endfunc // sub_8009D58

.func
.thumb_func
sub_8009D78:
	push {lr}
	ldr R1, off_8009D88 // =off_8009D8C
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8009D88: .word off_8009D8C
off_8009D8C: .word sub_8009D98+1
	.word sub_8009DC8+1
	.word sub_8009DEC+1
.endfunc // sub_8009D78

.func
.thumb_func
sub_8009D98:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009DB0
	ldrb R1, [R5,#0x1A]
	tst R1, R1
	beq loc_8009DBE
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009DC6
loc_8009DB0:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8009DC6
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_8009DBE:
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009DC6:
	pop {pc}
.endfunc // sub_8009D98

.func
.thumb_func
sub_8009DC8:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009DDE
	mov R0, #0
	ldrb R1, [R5,#0x1A]
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009DEA
loc_8009DDE:
	bl sub_801E754
	tst R0, R0
	bne locret_8009DEA
	mov R0, #8
	strh R0, [R5,#2]
locret_8009DEA:
	pop {pc}
.endfunc // sub_8009DC8

.func
.thumb_func
sub_8009DEC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009DFE
	mov R0, #0xA
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009E0E
loc_8009DFE:
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bge locret_8009E0E
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009E0E:
	pop {pc}
.endfunc // sub_8009DEC

.func
.thumb_func
sub_8009E10:
	push {lr}
	ldr R1, off_8009E20 // =off_8009E24
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_8009E20: .word off_8009E24
off_8009E24: .word sub_8009E2C+1
	.word sub_8009E40+1
.endfunc // sub_8009E10

.func
.thumb_func
sub_8009E2C:
	push {lr}
	mov R0, #0x90
	ldr R0, [R5,R0]
	ldrb R1, [R0,#4]
	ldr R0, off_8009FBC // =dword_87F2F68
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_8009E2C

.func
.thumb_func
sub_8009E40:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne locret_8009E54
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009E54:
	pop {pc}
.endfunc // sub_8009E40

.func
.thumb_func
sub_8009E56:
	push {r4,lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009E66
	bl sub_8009140
	mov R0, #4
	strb R0, [R5,#3]
loc_8009E66:
	bl loc_8008D60
	bl sub_800B090
	cmp R0, #0
	beq locret_8009EE0
	push {r0}
	ldrb R0, [R5,#7]
	bl sub_800B6E6
	pop {r0}
	cmp R0, #1
	bne loc_8009E96
	mov R0, #1
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl sub_800B6F2
	b loc_8009ED8
loc_8009E96:
	cmp R0, #2
	bne loc_8009ECE
	mov R0, #2
	bl sub_800A840
	bl sub_800AF84
	strb R0, [R5,#0x1E]
	bl sub_800B6B6
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8009ED8
	mov R1, #2
	tst R0, R1
	beq loc_8009ED8
	ldr R1, off_8009FB8 // =0x400
	tst R0, R1
	beq loc_8009EDA
	push {r2}
	bl sub_800AF50
	tst R0, R0
	pop {r2}
	beq loc_8009ED8
	b loc_8009EDA
loc_8009ECE:
	cmp R0, #7
	bne loc_8009ED8
	mov R0, #7
	bl sub_800A840
loc_8009ED8:
	mov R2, #0x14
loc_8009EDA:
	strb R2, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009EE0:
	pop {r4,pc}
.endfunc // sub_8009E56

loc_8009EE2:
	push {lr}
	ldr R1, off_8009EF0 // =off_8009EF4
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_8009EF0: .word off_8009EF4
off_8009EF4: .word sub_8009EFC+1
	.word sub_8009F3A+1
.func
.thumb_func
sub_8009EFC:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009F12
	bl sub_800B428
	mov R0, #0
	strh R0, [R5,#0x28]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009F38
loc_8009F12:
	ldr R0, dword_8009FC0 // =0x1F2F3F4F
	bl sub_800B46C
	tst R0, R0
	beq loc_8009F2A
	bl sub_800B460
	bl sub_800B444
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
loc_8009F2A:
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	cmp R0, #0xB4
	ble locret_8009F38
	mov R0, #0xC
	str R0, [R5]
locret_8009F38:
	pop {pc}
.endfunc // sub_8009EFC

.func
.thumb_func
sub_8009F3A:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009F4C
	ldr R0, off_8009FC4 // =unk_2035260
	bl sub_802C34E
	mov R0, #4
	strb R0, [R5,#3]
loc_8009F4C:
	bl sub_802BD60
	tst R0, R0
	bne locret_8009F5C
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009F5C:
	pop {pc}
.endfunc // sub_8009F3A

.func
.thumb_func
sub_8009F5E:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009F74
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009F88
loc_8009F74:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8009F88
	bl musicGameState_8000784 // () -> void
	mov R0, #0x1A
	bl sub_80035A2
	mov R0, #8
	str R0, [R5]
locret_8009F88:
	pop {pc}
.endfunc // sub_8009F5E

.func
.thumb_func
sub_8009F8A:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8009FA6
	bl getPETNaviSelect // () -> u8
	mov r1, #0x73
	add r1, r1, r0
	ldr R0, off_8009FC8 // =scripts_commErr_87370C0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8009FB6
loc_8009FA6:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8009FB6
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8009FB6:
	pop {pc}
off_8009FB8: .word 0x400
off_8009FBC: .word dword_87F2F68
dword_8009FC0: .word 0x1F2F3F4F
off_8009FC4: .word unk_2035260
off_8009FC8: .word scripts_commErr_87370C0
.endfunc // sub_8009F8A

.func
.thumb_func
sub_8009FCC:
	push {R5-R7,lr}
	ldr R6, off_8009FF4 // =byte_3000EA8
	ldr R6, [R6]
	ldr R7, off_8009FF0 // =dword_3002180
loc_8009FD4:
	tst R6, R6
	beq locret_8009FEE
	sub R6, #1
	ldr R0, [R7]
	ldr R1, [R7,#0x4] // (dword_3002184 - 0x3002180)
	ldr R2, [R7,#0x8] // (dword_3002188 - 0x3002180)
	ldr R3, [R7,#0xC] // (dword_300218C - 0x3002180)
	push {r6,r7}
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r6,r7}
	add R7, #0x10
	b loc_8009FD4
locret_8009FEE:
	pop {R5-R7,pc}
off_8009FF0: .word dword_3002180
off_8009FF4: .word byte_3000EA8
.endfunc // sub_8009FCC

.func
.thumb_func
sub_8009FF8:
	push {r4,r6,r7,lr}
	ldr R6, off_800A018 // =byte_3000EA8
	ldr R4, [R6]
	ldr R7, off_800A014 // =dword_3002180
	lsl r4, r4, #4
	add r7, r7, r4
	str R0, [R7]
	str R1, [R7,#4]
	str R2, [R7,#8]
	str R3, [R7,#0xC]
	lsr r4, r4, #4
	add R4, #1
	str R4, [R6]
	pop {r4,r6,r7,pc}
off_800A014: .word dword_3002180
off_800A018: .word byte_3000EA8
.endfunc // sub_8009FF8

.func
.thumb_func
sub_800A01C:
	mov R0, #0
	ldr R1, off_800A024 // =byte_3000EA8
	str R0, [R1]
	mov PC, LR
off_800A024: .word byte_3000EA8
.endfunc // sub_800A01C

.func
.thumb_func
sub_800A028:
	mov R1, R10
	ldr R1, [R1,#0x3C]
	mov R0, #1
	strb R0, [R1,#0xA]
	mov PC, LR
.endfunc // sub_800A028

.func
.thumb_func
sub_800A032:
	mov R1, R10
	ldr R1, [R1,#0x3C]
	mov R0, #0
	strb R0, [R1,#0xA]
	mov PC, LR
.endfunc // sub_800A032

.func
.thumb_func
battle_isPaused:
	mov R1, R10
	ldr R1, [R1,#0x3C]
	ldrb R0, [R1,#0xA]
	tst R0, R0
	mov PC, LR
.endfunc // battle_isPaused

.func
.thumb_func
sub_800A046:
	push {lr}
	bl battle_isBattleOver
	add r1, r0, #0
	mov R0, #0xFF
	tst R1, R1
	bne locret_800A076
	bl battle_isTimeStop
	add r1, r0, #0
	mov R0, #0xFF
	tst R1, R1
	bne locret_800A076
	ldr R3, off_800A078 // =dword_2036820
	ldrh R1, [R3,#0x4] // (dword_2036824 - 0x2036820)
	mov R2, #8
	tst R1, R2
	beq loc_800A06E
	mov R0, #0
	pop {pc}
loc_800A06E:
	ldrh R1, [R3,#0xC] // (dword_203682C - 0x2036820)
	tst R1, R2
	beq locret_800A076
	mov R0, #1
locret_800A076:
	pop {pc}
off_800A078: .word dword_2036820
.endfunc // sub_800A046

.func
.thumb_func
sub_800A07C:
	mov R2, #8
	mul R0, R2
	ldr R3, off_800A094 // =dword_2036820
	add r3, r3, r0
	ldrh R1, [R3,#4]
	mov R2, #8
	mov R0, #0
	tst R1, R2
	beq locret_800A090
	mov R0, #1
locret_800A090:
	mov PC, LR
	.balign 4, 0x00
off_800A094: .word dword_2036820
.endfunc // sub_800A07C

.func
.thumb_func
battle_isTimeStop:
	push {lr}
	bl battle_getFlags
	mov R1, #4
	and R0, R1
	pop {pc}
.endfunc // battle_isTimeStop

.func
.thumb_func
sub_800A0A4:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A0C2
	bl battle_isPaused
	tst R0, R0
	beq loc_800A0C2
	bl battle_getFlags
	mov r1, #0x20
	tst R0, R1
	bne loc_800A0C2
	mov R0, #0
	pop {pc}
loc_800A0C2:
	mov R0, #1
	pop {pc}
.endfunc // sub_800A0A4

.func
.thumb_func
sub_800A0C6:
	ldr R0, off_800A0F0 // =dword_2036820
	mov R1, #0
	str R1, [R0]
	str R1, [R0,#0x4] // (dword_2036824 - 0x2036820)
	add R0, #8
	str R1, [R0]
	str R1, [R0,#0x4] // (dword_203682C - 0x2036828)
	mov PC, LR
.endfunc // sub_800A0C6

.func
.thumb_func
sub_800A0D6:
	lsl r0, r0, #3
	ldr R3, off_800A0F0 // =dword_2036820
	add r3, r3, r0
	ldrh R2, [R3,#2]
	strh R1, [R3,#2]
	mvn R0, R2
	and R0, R1
	strh R0, [R3,#4]
	mvn R0, R1
	and R2, R0
	strh R2, [R3,#6]
	mov PC, LR
	.byte 0, 0
off_800A0F0: .word dword_2036820
.endfunc // sub_800A0D6

	mov R1, #8
	mul R0, R1
	ldr R1, off_800A100 // =dword_2036820
	add r0, r0, r1
	mov PC, LR
	.byte 0, 0
off_800A100: .word dword_2036820
.func
.thumb_func
sub_800A104:
	ldr R0, [R5,#0x58]
	ldrb R0, [R0,#2]
	cmp R0, #0
	bne locret_800A11A
	ldrb R0, [R5,#0x16]
	add R0, #4
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R2, [R1,R0]
	sub R2, #1
	strb R2, [R1,R0]
locret_800A11A:
	mov PC, LR
.endfunc // sub_800A104

.func
.thumb_func
sub_800A11C:
	ldrb R0, [R5,#0x16]
	add R0, #0x12
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R2, [R1,R0]
	sub R2, #1
	strb R2, [R1,R0]
	mov R2, #0
	add R1, #0x80
loc_800A12E:
	ldr R0, [R1]
	cmp R0, R5
	bne loc_800A138
	mov R0, #0
	str R0, [R1]
loc_800A138:
	add R1, #4
	add R2, #1
	cmp R2, #8
	blt loc_800A12E
	mov PC, LR
.endfunc // sub_800A11C

	ldrb R0, [R5,#0x16]
	add R0, #0x12
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R2, [R1,R0]
	sub R2, #1
	strb R2, [R1,R0]
	mov PC, LR
.func
.thumb_func
sub_800A152:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A18A
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R2, [R0,#0xD]
	ldrb R1, [R0,#4]
	tst R1, R1
	bne loc_800A170
	mov R0, #2
	tst R2, R2
	beq locret_800A18C
	mov R0, #1
	b locret_800A18C
loc_800A170:
	ldrb R1, [R0,#5]
	tst R1, R1
	bne loc_800A180
	mov R0, #1
	tst R2, R2
	beq locret_800A18C
	mov R0, #2
	b locret_800A18C
loc_800A180:
	ldrb R1, [R0,#0xB]
	tst R1, R1
	beq loc_800A18A
	mov R0, #7
	b locret_800A18C
loc_800A18A:
	mov R0, #0
locret_800A18C:
	pop {pc}
.endfunc // sub_800A152

.func
.thumb_func
battle_isBattleOver:
	mov R0, #1
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R1, [R3,#0x12]
	tst R1, R1
	beq locret_800A1A8
	ldrb R1, [R3,#0x13]
	tst R1, R1
	beq locret_800A1A8
	ldrb R1, [R3,#0xB]
	tst R1, R1
	bne locret_800A1A8
	mov R0, #0
locret_800A1A8:
	mov PC, LR
.endfunc // battle_isBattleOver

	push {lr}
	bl battle_isTimeStop
	bne loc_800A1C8
	bl battle_isBattleOver
	tst R0, R0
	bne loc_800A1C8
	bl sub_800A70C
	ldr R1, off_800A1CC // =0x2D0
	cmp R0, R1
	blt loc_800A1C8
	mov R0, #1
	pop {pc}
loc_800A1C8:
	mov R0, #0
	pop {pc}
off_800A1CC: .word 0x2D0
.func
.thumb_func
sub_800A1D0:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A218
	bl battle_isBattleOver
	tst R0, R0
	bne loc_800A218
	mov R0, #0
	mov r1, #0x2c
	bl sub_80136CC
	cmp R0, #0x17
	beq loc_800A200
	cmp R0, #0x18
	beq loc_800A200
	mov R0, #1
	mov r1, #0x2c
	bl sub_80136CC
	cmp R0, #0x17
	beq loc_800A200
	cmp R0, #0x18
	bne loc_800A20A
loc_800A200:
	bl battle_getFlags
	mov R1, #2
	tst R0, R1
	bne loc_800A214
loc_800A20A:
	bl battle_getFlags
	mov R1, #0x10
	tst R0, R1
	beq loc_800A218
loc_800A214:
	mov R0, #1
	pop {pc}
loc_800A218:
	mov R0, #0
	pop {pc}
.endfunc // sub_800A1D0

.func
.thumb_func
sub_800A21C:
	push {lr}
	bl battle_isTimeStop
	bne loc_800A23A
	bl battle_isBattleOver
	tst R0, R0
	bne loc_800A23A
	bl sub_801DFE4
	ldr R1, dword_800A240 // =0x4000
	cmp R0, R1
	bne loc_800A23A
	mov R0, #1
	pop {pc}
loc_800A23A:
	mov R0, #0
	pop {pc}
	.byte 0, 0
dword_800A240: .word 0x4000
.endfunc // sub_800A21C

.func
.thumb_func
sub_800A244:
	push {lr}
	bl sub_800A8F8
	cmp R0, #1
	bne loc_800A296
	bl battle_isTimeStop
	bne loc_800A296
	bl battle_isBattleOver
	tst R0, R0
	bne loc_800A296
	mov R0, #0
	bl sub_802E070
	mov r1, #0x50
	ldrb R0, [R0,R1]
	push {r0}
	mov R0, #1
	bl sub_802E070
	mov r1, #0x50
	ldrb R1, [R0,R1]
	pop {r0}
	orr R0, R1
	bne loc_800A296
	mov R0, #0
	bl sub_800A29A
	push {r0}
	bl get_802D246 // () -> int
	mov R1, #8
	and R0, R1
	beq loc_800A290
	mov R0, #1
	bl sub_800A29A
loc_800A290:
	pop {r1}
	orr R0, R1
	pop {pc}
loc_800A296:
	mov R0, #0
	pop {pc}
.endfunc // sub_800A244

.func
.thumb_func
sub_800A29A:
	push {r4,lr}
	add r4, r0, #0
	bl sub_802E070
	ldrh R0, [R0,#0x28]
	ldr R1, off_800A2C8 // =0x2900
	cmp R0, R1
	blt loc_800A2C0
	mov R1, #8
	mul R1, R4
	add R1, #4
	ldr R2, off_800A2C4 // =dword_2036820
	ldrh R1, [R2,R1]
	ldr R2, off_800A2CC // =0x300
	tst R1, R2
	beq loc_800A2C0
	mov R0, #1
	lsl R0, R4
	b locret_800A2C2
loc_800A2C0:
	mov R0, #0
locret_800A2C2:
	pop {r4,pc}
off_800A2C4: .word dword_2036820
off_800A2C8: .word 0x2900
off_800A2CC: .word 0x300
.endfunc // sub_800A29A

	mov R1, R10
	ldr R1, [R1,#0x18]
	strh R0, [R1,#0x32]
	mov PC, LR
.func
.thumb_func
battle_setFlags:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrh R2, [R1,#0x32]
	orr R2, R0
	strh R2, [R1,#0x32]
	mov PC, LR
.endfunc // battle_setFlags

.func
.thumb_func
battle_clearFlags:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrh R2, [R1,#0x32]
	bic R2, R0
	strh R2, [R1,#0x32]
	mov PC, LR
.endfunc // battle_clearFlags

.func
.thumb_func
battle_getFlags:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrh R0, [R1,#0x32]
	mov PC, LR
.endfunc // battle_getFlags

.func
.thumb_func
sub_800A2F8:
	push {r4,lr}
	mov R4, R10
	ldr R4, [R4,#0x74]
	ldrh R0, [R4,#0x3E]
	mov r1, #0x64
	svc 6
	mov r1, #0x2b
	strb R0, [R4,R1]
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldr R1, [R3,#0x3C]
	ldrb R0, [R1,#3]
	strb R0, [R3,#0xF]
	ldrb R0, [R1]
	strb R0, [R3,#6]
	pop {r4,pc}
.endfunc // sub_800A2F8

	push {R4-R7,lr}
	mov R7, #0
	bl get_802D246 // () -> int
	add r4, r0, #0
	ldr R1, dword_800A564 // =0x200000
	tst R0, R1
	beq loc_800A32C
	ldr R0, off_800A568 // =unk_2039AA0
	b loc_800A33E
loc_800A32C:
	bl sub_802D234
	lsl r0, r0, #2
	ldr R1, off_800A3DC // =dword_802137C
	ldr R0, [R1,R0]
	tst R0, R0
	bne loc_800A33E
	mov R0, R10
	ldr R0, [R0,#0x48]
loc_800A33E:
	mov R1, R10
	ldr R1, [R1,#0x48]
	cmp R0, R1
	bne loc_800A35C
	push {r0}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x2d
	bl sub_800A540
	mov r2, #0x3c
	mul R2, R0
	pop {r0}
	add r0, r0, r2
	mov R7, #1
loc_800A35C:
	push {r0}
	ldr R1, off_800A3E0 // =byte_203CDB0
	mov r2, #0x3c
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r0}
	tst R7, R7
	bne loc_800A370
	bl sub_800A7EA
loc_800A370:
	mov R0, #0x80
	tst R0, R4
	beq locret_800A3D8
	mov R7, #0
	bl sub_800A4E0
	add r3, r0, r0
	cmp R0, #0xFF
	beq loc_800A394
	ldr R0, off_800A3E0 // =byte_203CDB0
	ldrh R4, [R0]
	ldrh R5, [R0,R3]
	strh R5, [R0]
	strh R4, [R0,R3]
	mov R3, R10
	ldr R3, [R3,#0x18]
	mov R7, #1
	strb R7, [R3,#0x17]
loc_800A394:
	mov R6, #0
	bl sub_800A506
	add r2, r0, r0
	add r3, r1, r1
	cmp R0, #0xFF
	beq loc_800A3CE
	ldr R0, off_800A3E0 // =byte_203CDB0
	cmp r3, #0x38
	beq loc_800A3B2
	ldrh R4, [R0,#0x38] // (word_203CDE8 - 0x203CDB0)
	ldrh R5, [R0,R2]
	strh R5, [R0,#0x38] // (word_203CDE8 - 0x203CDB0)
	strh R4, [R0,R2]
	b loc_800A3BC
loc_800A3B2:
	ldrh R4, [R0,#0x3A] // (byte_203CDEA - 0x203CDB0)
	ldrh R5, [R0,R2]
	strh R5, [R0,#0x3A] // (byte_203CDEA - 0x203CDB0)
	strh R4, [R0,R2]
	b loc_800A3C4
loc_800A3BC:
	ldrh R4, [R0,#0x3A] // (byte_203CDEA - 0x203CDB0)
	ldrh R5, [R0,R3]
	strh R5, [R0,#0x3A] // (byte_203CDEA - 0x203CDB0)
	strh R4, [R0,R3]
loc_800A3C4:
	mov R3, R10
	ldr R3, [R3,#0x18]
	mov R6, #1
	mov r2, #0x44
	strb R6, [R3,R2]
loc_800A3CE:
	ldr R0, off_800A3E0 // =byte_203CDB0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_800A570
locret_800A3D8:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_800A3DC: .word dword_802137C
off_800A3E0: .word byte_203CDB0
.func
.thumb_func
sub_800A3E4:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	mov R0, #0xFF
	str R0, [SP]
	str R0, [SP,#4]
	str R0, [SP,#8]
	mov R7, #0
	bl get_802D246 // () -> int
	add r4, r0, #0
	ldr R1, dword_800A564 // =0x200000
	tst R0, R1
	beq loc_800A402
	ldr R0, off_800A56C // =unk_2039AA0
	b loc_800A414
loc_800A402:
	bl sub_802D234
	lsl r0, r0, #2
	ldr R1, off_800A4D8 // =dword_802137C
	ldr R0, [R1,R0]
	tst R0, R0
	bne loc_800A414
	mov R0, R10
	ldr R0, [R0,#0x48]
loc_800A414:
	mov R1, R10
	ldr R1, [R1,#0x48]
	cmp R0, R1
	bne loc_800A432
	push {r0}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x2d
	bl sub_800A540
	mov r2, #0x3c
	mul R2, R0
	pop {r0}
	add r0, r0, r2
	mov R7, #1
loc_800A432:
	add r6, r0, #0
	mov R0, #0x80
	tst R0, R4
	beq loc_800A468
	bl sub_800A4E0
	add r1, r0, r0
	cmp R0, #0xFF
	beq loc_800A44E
	str R1, [SP]
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R1, #1
	strb R1, [R2,#0x17]
loc_800A44E:
	bl sub_800A506
	add r2, r0, r0
	add r3, r1, r1
	cmp R0, #0xFF
	beq loc_800A468
	str R2, [SP,#4]
	str R3, [SP,#8]
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R1, #1
	mov r3, #0x44
	strb R1, [R2,R3]
loc_800A468:
	mov R2, #0
	mov R3, #0
	ldr R0, [SP]
	cmp R0, #0xFF
	beq loc_800A474
	mov R3, #2
loc_800A474:
	ldr R0, [SP]
	cmp R0, R2
	bne loc_800A482
	ldrh R0, [R6,R2]
	ldr R1, off_800A4DC // =byte_203CDB0
	strh R0, [R1]
	b loc_800A4A6
loc_800A482:
	ldr R0, [SP,#4]
	cmp R0, R2
	bne loc_800A490
	ldrh R0, [R6,R2]
	ldr R1, off_800A4DC // =byte_203CDB0
	strh R0, [R1,#0x38] // (word_203CDE8 - 0x203CDB0)
	b loc_800A4A6
loc_800A490:
	ldr R0, [SP,#8]
	cmp R0, R2
	bne loc_800A49E
	ldrh R0, [R6,R2]
	ldr R1, off_800A4DC // =byte_203CDB0
	strh R0, [R1,#0x3A] // (byte_203CDEA - 0x203CDB0)
	b loc_800A4A6
loc_800A49E:
	ldrh R0, [R6,R2]
	ldr R1, off_800A4DC // =byte_203CDB0
	strh R0, [R1,R3]
	add R3, #2
loc_800A4A6:
	add R2, #2
	cmp r2, #0x3c
	blt loc_800A474
	add r0, r6, #0
	tst R7, R7
	bne loc_800A4B6
	bl sub_800A7EA
loc_800A4B6:
	mov R0, #0x80
	tst R0, R4
	beq loc_800A4D2
	ldr R0, off_800A4DC // =byte_203CDB0
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R3, #0x17
	ldrb R1, [R2,R3]
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov r3, #0x44
	ldrb R2, [R2,R3]
	bl sub_800A570
loc_800A4D2:
	add sp, sp, #0xc
	pop {R4-R7,pc}
	.balign 4, 0x00
off_800A4D8: .word dword_802137C
off_800A4DC: .word byte_203CDB0
.endfunc // sub_800A3E4

.func
.thumb_func
sub_800A4E0:
	push {r4,lr}
	bl sub_802D234
	cmp R0, #1
	bne loc_800A4EE
	mov R0, #0xFF
	b locret_800A504
loc_800A4EE:
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	mov r1, #0x2d
	bl sub_800A540
	mov r1, #0x2e
	add r1, r1, r0
	add r0, r4, #0
	bl sub_800A540
locret_800A504:
	pop {r4,pc}
.endfunc // sub_800A4E0

.func
.thumb_func
sub_800A506:
	push {r4,r6,lr}
	bl sub_802D234
	cmp R0, #1
	bne loc_800A516
	mov R0, #0xFF
	mov R1, #0xFF
	b locret_800A53E
loc_800A516:
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	mov r1, #0x2d
	bl sub_800A540
	lsl r6, r0, #1
	mov r1, #0x56
	add r1, r1, r6
	add r0, r4, #0
	bl sub_800A540
	mov r1, #0x57
	add r1, r1, r6
	push {r0}
	add r0, r4, #0
	bl sub_800A540
	add r1, r0, #0
	pop {r0}
locret_800A53E:
	pop {r4,r6,pc}
.endfunc // sub_800A506

.func
.thumb_func
sub_800A540:
	push {r4,r6,lr}
	add r6, r0, #0
	add r4, r1, #0
	bl get_802D246 // () -> int
	ldr R1, dword_800A564 // =0x200000
	tst R0, R1
	beq loc_800A558
	add r1, r4, #0
	bl sub_8013884
	b locret_800A560
loc_800A558:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
locret_800A560:
	pop {r4,r6,pc}
	.balign 4, 0x00
dword_800A564: .word 0x200000
off_800A568: .word unk_2039AA0
off_800A56C: .word unk_2039AA0
.endfunc // sub_800A540

.func
.thumb_func
sub_800A570:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	add r7, r0, #0
	mov R5, #0
	mov R6, #0
	mov R4, #0
loc_800A582:
	ldrh R0, [R7]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#0x7] // ChipData.elemIdx
	cmp R1, #2
	beq loc_800A59E
	add r1, r5, r5
	ldr R2, off_800A910 // =dword_2033000
	ldrh R0, [R7]
	strh R0, [R2,R1]
	add R5, #1
	b loc_800A5A8
loc_800A59E:
	add r1, r6, r6
	ldr R2, off_800A914 // =word_2033040
	ldrh R0, [R7]
	strh R0, [R2,R1]
	add R6, #1
loc_800A5A8:
	add R7, #2
	add R4, #1
	cmp R4, #0x1E
	blt loc_800A582
	ldr R0, off_800A918 // =dword_2033000
	add r1, r5, #0
	beq loc_800A5D2
	add r2, r5, #0
	ldr R3, [SP,#4]
	tst R3, R3
	beq loc_800A5C4
	ldr R0, dword_800A91C // =dword_2033000
	sub R1, #1
	sub R2, #1
loc_800A5C4:
	ldr R3, [SP,#8]
	tst R3, R3
	beq loc_800A5CE
	sub R1, #2
	sub R2, #2
loc_800A5CE:
	bl sub_8000D12
loc_800A5D2:
	ldr R0, off_800A920 // =word_2033040
	add r1, r6, #0
	beq loc_800A634
	add r2, r6, #0
	bl sub_8000D12
	bl sub_802D234
	cmp R0, #1
	beq loc_800A610
	mov R4, #0
loc_800A5E8:
	bl rng_8001562
	mov R1, #0xC
	neg R1, R1
	add r1, r1, r5
	svc 6
	mov R3, #0xA
	add r3, r3, r1
	ldr R0, off_800A924 // =dword_2033000
	add r1, r5, #0
	add r2, r4, r4
	ldr R7, off_800A928 // =word_2033040
	ldrh R2, [R7,R2]
	bl sub_800A672
	add r5, r0, #0
	add R4, #1
	cmp R4, R6
	blt loc_800A5E8
	b loc_800A634
loc_800A610:
	mov R4, #0
loc_800A612:
	bl rng_8001562
	mov R1, #0xB
	svc 6
	mov R3, #8
	add r3, r3, r1
	ldr R0, off_800A92C // =dword_2033000
	add r1, r5, #0
	add r2, r4, r4
	ldr R7, off_800A930 // =word_2033040
	ldrh R2, [R7,R2]
	bl sub_800A672
	add r5, r0, #0
	add R4, #1
	cmp R4, R6
	blt loc_800A612
loc_800A634:
	ldr R0, [SP,#8]
	tst R0, R0
	beq loc_800A664
	bl rng_8001562
	mov R1, #0x13
	svc 6
	mov R0, #1
	add r1, r1, r0
	mov R3, R10
	ldr R3, [R3,#0x18]
	mov r2, #0x45
	strb R1, [R3,R2]
	lsl r1, r1, #1
	ldr R0, off_800A934 // =dword_2033000
	ldrh R3, [R0,#0x38] // (word_2033038 - 0x2033000)
	ldrh R4, [R0,R1]
	strh R4, [R0,#0x38] // (word_2033038 - 0x2033000)
	strh R3, [R0,R1]
	add R1, #2
	ldrh R3, [R0,#0x3A] // (word_203303A - 0x2033000)
	ldrh R4, [R0,R1]
	strh R4, [R0,#0x3A] // (word_203303A - 0x2033000)
	strh R3, [R0,R1]
loc_800A664:
	// src
	ldr R0, off_800A938 // =dword_2033000
	// dest
	ldr R1, [SP]
	// halfwordCount
	mov r2, #0x3c
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	add sp, sp, #0xc
	pop {R4-R7,pc}
.endfunc // sub_800A570

.func
.thumb_func
sub_800A672:
	push {lr}
	sub sp, sp, #0x10
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	cmp R3, R1
	bgt loc_800A6A2
	sub r2, r1, #1
	add r3, r2, r2
	add r0, r0, r3
loc_800A688:
	ldr R3, [SP,#0xC]
	cmp R2, R3
	blt loc_800A698
	ldrh R3, [R0]
	strh R3, [R0,#2]
	sub R2, #1
	sub R0, #2
	b loc_800A688
loc_800A698:
	add R0, #2
	ldr R1, [SP,#8]
	strh R1, [R0]
	ldr R0, [SP,#4]
	add R0, #1
loc_800A6A2:
	add sp, sp, #0x10
	pop {pc}
.endfunc // sub_800A672

.func
.thumb_func
sub_800A6A6:
	push {lr}
	bl battle_isTimeStop
	bne locret_800A6D6
	bl battle_isPaused
	bne locret_800A6D6
	bl battle_isBattleOver
	bne locret_800A6D6
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_800A6D6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R1, [R0,#0x40]
	add R1, #1
	ldr R2, dword_800A93C // =0x8C9F
	cmp R1, R2
	blt loc_800A6D4
	add r1, r2, #0
loc_800A6D4:
	str R1, [R0,#0x40]
locret_800A6D6:
	pop {pc}
.endfunc // sub_800A6A6

	push {lr}
	bl battle_isTimeStop
	bne locret_800A702
	bl battle_isPaused
	bne locret_800A702
	bl battle_isBattleOver
	tst R0, R0
	bne locret_800A702
	bl battle_getFlags
	mov R1, #1
	tst R0, R1
	beq locret_800A702
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrh R1, [R0,#0x38]
	add R1, #1
	strh R1, [R0,#0x38]
locret_800A702:
	pop {pc}
.func
.thumb_func
sub_800A704:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R0, [R0,#0x40]
	mov PC, LR
.endfunc // sub_800A704

.func
.thumb_func
sub_800A70C:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrh R0, [R0,#0x38]
	mov PC, LR
.endfunc // sub_800A70C

	mov R1, #0
	mov R0, R10
	ldr R0, [R0,#0x18]
	strh R1, [R0,#0x38]
	mov PC, LR
.func
.thumb_func
// (int battleSettingsIdx) -> BattleSettings*
getBattleSettingsFromList0:
	mov R1, #0x10
	mul R1, R0
	ldr R0, off_800A940 // =battleSettingsList0
	add r0, r0, r1
	mov PC, LR
.endfunc // getBattleSettingsFromList0

.func
.thumb_func
// (int battleSettingsIdx) -> BattleSettings*
getBattleSettingsFromList1:
	mov R1, #0x10
	mul R1, R0
	ldr R0, off_800A944 // =BattleSettingsList1
	add r0, r0, r1
	mov PC, LR
.endfunc // getBattleSettingsFromList1

.func
.thumb_func
// () -> zf
isSameSubsystem_800A732:
	push {r4,lr}
	mov R4, #1
	bl sub_800A7D0 // () -> (zf, int)
	beq loc_800A748
	ldr R3, off_800A750 // =byte_203F7D8
	ldrb R1, [R3,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	mov R2, #2
	tst R1, R2
	bne loc_800A748
	mov R4, #0
loc_800A748:
	add r0, r4, #0
	tst R0, R0
	pop {r4,pc}
	.byte 0, 0
off_800A750: .word byte_203F7D8
.endfunc // isSameSubsystem_800A732

	push {lr}
	push {r0}
	bl sub_800139A
	pop {r2}
	mov R1, #4
	tst R2, R2
	beq loc_800A766
	mov R1, #8
loc_800A766:
	tst R0, R1
	beq loc_800A76E
	mov R0, #1
	pop {pc}
loc_800A76E:
	mov R0, #0
	pop {pc}
.func
.thumb_func
sub_800A772:
	push {lr}
	push {r0}
	ldr R0, [R5,#0x58]
	ldrb R1, [R0,#0x19]
	tst R1, R1
	pop {r0}
	bne loc_800A798
	push {r0}
	bl sub_800139A
	pop {r2}
	mov R1, #4
	tst R2, R2
	beq loc_800A790
	mov R1, #8
loc_800A790:
	tst R0, R1
	beq loc_800A798
	mov R0, #1
	pop {pc}
loc_800A798:
	mov R0, #0
	pop {pc}
.endfunc // sub_800A772

.func
.thumb_func
sub_800A79C:
	push {lr}
	mov R0, #0xC
	bl sub_80013A2
	pop {pc}
.endfunc // sub_800A79C

.func
.thumb_func
sub_800A7A6:
	push {R4-R7,lr}
	mov R6, R10
	ldr R6, [R6,#0x18]
	add R6, #0xE0
	mov R3, #0
	mov R4, #0
loc_800A7B2:
	ldr R7, [R6,R3]
	cmp R7, #0
	beq loc_800A7C4
	ldrh R5, [R7,#0x28]
	cmp R5, R1
	blt loc_800A7C4
	cmp R5, R2
	bgt loc_800A7C4
	add R4, #1
loc_800A7C4:
	add R3, #4
	cmp R3, #0x10
	blt loc_800A7B2
	add r0, r4, #0
	pop {R4-R7,pc}
	.byte 0, 0
.endfunc // sub_800A7A6

.func
.thumb_func
// () -> (zf, int)
sub_800A7D0:
	mov R0, #0
	ldr R1, off_800A948 // =dword_20093A4
	ldr R1, [R1]
	mov R2, #1
	tst R1, R2
	beq loc_800A7DE
	mov R0, #1
loc_800A7DE:
	tst R0, R0
	mov PC, LR
.endfunc // sub_800A7D0

.func
.thumb_func
sub_800A7E2:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov PC, LR
.endfunc // sub_800A7E2

.func
.thumb_func
sub_800A7EA:
	push {r4,r6,lr}
	add r4, r0, #0
	mov R6, #0
loc_800A7F0:
	ldrh R0, [R4]
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov R2, #0
	push {r0}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	pop {r0}
	add R4, #2
	add R6, #1
	cmp R6, #0x1E
	blt loc_800A7F0
	pop {r4,r6,pc}
.endfunc // sub_800A7EA

	push {r4,r5,lr}
	add r4, r0, #0
	mov R5, #0
loc_800A812:
	ldrh R0, [R4]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#7]
	cmp R0, #2
	beq loc_800A82E
	add R4, #2
	add R5, #1
	cmp R5, #0xA
	blt loc_800A812
	mov R0, #0
	pop {r4,r5,pc}
loc_800A82E:
	mov R0, #1
	pop {r4,r5,pc}
.func
.thumb_func
sub_800A832:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0x1F]
	lsr r1, r0, #4
	mov R2, #0xF
	and R0, R2
	mov PC, LR
.endfunc // sub_800A832

.func
.thumb_func
sub_800A840:
	push {lr}
	mov R1, R10
	ldr R1, [R1,#0x18]
	strb R0, [R1,#0x1F]
	bl sub_800B6AA
	pop {pc}
.endfunc // sub_800A840

.func
.thumb_func
sub_800A84E:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	mov PC, LR
.endfunc // sub_800A84E

.func
.thumb_func
sub_800A856:
	mov R0, #0
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R1, [R3,#0x12]
	tst R1, R1
	bne loc_800A864
	add R0, #1
loc_800A864:
	ldrb R1, [R3,#0x13]
	tst R1, R1
	bne locret_800A86C
	add R0, #2
locret_800A86C:
	mov PC, LR
.endfunc // sub_800A856

.func
.thumb_func
sub_800A86E:
	push {r4,r7,lr}
	mov R4, #0
	mov R7, R10
	ldr R7, [R7,#0x18]
	add R7, #0x80
loc_800A878:
	ldr R3, [R7]
	tst R3, R3
	beq loc_800A888
	ldr R2, [R3,#0x58]
	ldrb R0, [R2,#0xE]
	cmp R0, #0xFF
	beq loc_800A888
	ldrh R1, [R3,#0x24]
loc_800A888:
	add R7, #4
	add R4, #1
	cmp R4, #8
	blt loc_800A878
	pop {r4,r7,pc}
.endfunc // sub_800A86E

.func
.thumb_func
sub_800A892:
	push {lr}
	bl get_802D246 // () -> int
	ldr R1, off_800A94C // =0x100
	tst R0, R1
	beq locret_800A8B0
	mov R1, #8
	tst R0, R1
	bne locret_800A8B0
	bl sub_800A832
	cmp R0, #2
	bne locret_800A8B0
	bl sub_8005DBE
locret_800A8B0:
	pop {pc}
.endfunc // sub_800A892

.func
.thumb_func
sub_800A8B2:
	push {lr}
	bl sub_800A7E2
	mov r1, #0x29
	bl sub_80136CC
	ldr R1, off_800A8C4 // =dword_800A8C8
	ldrb R0, [R0,R1]
	pop {pc}
off_800A8C4: .word dword_800A8C8
dword_800A8C8: .word 0x6C686408, 0x7C787470, 0x8C888480
.endfunc // sub_800A8B2

.func
.thumb_func
sub_800A8D4:
	push {lr}
	bl sub_800A7E2
	mov r1, #0x29
	bl sub_80136CC
	ldr R1, off_800A8E8 // =byte_800A8EC
	ldrb R0, [R0,R1]
	pop {pc}
	.balign 4, 0x00
off_800A8E8: .word byte_800A8EC
byte_800A8EC: .byte 0x38, 0x90, 0x94, 0x98, 0x9C, 0xA0, 0xA4, 0xA8, 0xAC
	.byte 0xB0, 0xB4, 0xB8
.endfunc // sub_800A8D4

.func
.thumb_func
sub_800A8F8:
	push {r4,lr}
	mov R4, #0
	bl sub_802E09A
	beq loc_800A904
	mov R4, #1
loc_800A904:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_800A8F8

.func
.thumb_func
sub_800A908:
	mov R0, #0
	ldr R1, off_800A950 // =dword_2000B30
	str R0, [R1]
	mov PC, LR
off_800A910: .word dword_2033000
off_800A914: .word word_2033040
off_800A918: .word dword_2033000
dword_800A91C: .word 0x2033002
off_800A920: .word word_2033040
off_800A924: .word dword_2033000
off_800A928: .word word_2033040
off_800A92C: .word dword_2033000
off_800A930: .word word_2033040
off_800A934: .word dword_2033000
off_800A938: .word dword_2033000
dword_800A93C: .word 0x8C9F
off_800A940: .word battleSettingsList0
off_800A944: .word BattleSettingsList1
off_800A948: .word dword_20093A4
off_800A94C: .word 0x100
off_800A950: .word dword_2000B30
.endfunc // sub_800A908

.func
.thumb_func
sub_800A954:
	push {lr}
	ldr R0, off_800ABF0 // =byte_20349C0
	bl sub_800A964
	ldr R0, off_800ABF4 // =byte_2034A10
	bl sub_800A964
	pop {pc}
.endfunc // sub_800A954

.func
.thumb_func
sub_800A964:
	push {r4,lr}
	add r4, r0, #0
	// size
	mov r1, #0x50
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// mem
	add r0, r4, #2
	// byteCount
	mov R1, #0xC
	// byte
	mov R2, #0xFF
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	pop {r4,pc}
.endfunc // sub_800A964

.func
.thumb_func
sub_800A97A:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800A994
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R1, [R3,#7]
	cmp R1, #0xF
	blt loc_800A994
	mov R0, #1
	pop {pc}
loc_800A994:
	mov R0, #0
	pop {pc}
.endfunc // sub_800A97A

.func
.thumb_func
sub_800A998:
	push {r4,lr}
	add r2, r0, #0
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R1, [R3,#0xD]
	mov R0, #1
	eor R0, R1
	mov R1, #0x10
	mul R0, R1
	add R0, #0x80
	add r3, r3, r0
	mov R0, #0
	mov R4, #0
loc_800A9B2:
	ldr R1, [R3]
	tst R1, R1
	beq loc_800A9BE
	ldrh R1, [R1,#0x28]
	strh R1, [R2,R0]
	add R0, #2
loc_800A9BE:
	add R3, #4
	add R4, #1
	cmp R4, #4
	blt loc_800A9B2
	lsr r0, r0, #1
	pop {r4,pc}
.endfunc // sub_800A998

.func
.thumb_func
sub_800A9CA:
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R1, [R3,#0x11]
	orr R1, R0
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_800A9CA

.func
.thumb_func
sub_800A9D6:
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R1, [R3,#0x11]
	bic R1, R0
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_800A9D6

.func
.thumb_func
sub_800A9E2:
	mov R3, R10
	ldr R3, [R3,#0x18]
	add R0, #0x14
	ldrb R0, [R3,R0]
	mov PC, LR
.endfunc // sub_800A9E2

.func
.thumb_func
battle_networkInvert:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R2, [R1,#0xD]
	eor R0, R2
	mov PC, LR
.endfunc // battle_networkInvert

.func
.thumb_func
batle_clearEnemyFadeinList:
	push {lr}
	mov R0, #0
	bl sub_800AAAE
	// size
	mov R1, #0x80
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // batle_clearEnemyFadeinList

.func
.thumb_func
sub_800AA06:
	push {lr}
	bl sub_800AAAE
	mov R2, #0
	ldr R0, [R0]
	cmp R0, R5
	bne loc_800AA16
	mov R2, #1
loc_800AA16:
	add r0, r2, #0
	pop {pc}
.endfunc // sub_800AA06

.func
.thumb_func
sub_800AA1A:
	push {r7,lr}
	bl sub_800AAAE
	add r7, r0, #0
	mov R0, #0
loc_800AA24:
	ldr R1, [R7,R0]
	cmp R1, R5
	beq loc_800AA38
	cmp R1, #0
	bne loc_800AA32
	str R5, [R7,R0]
	b loc_800AA3C
loc_800AA32:
	add R0, #4
	cmp r0, #0x20
	bne loc_800AA24
loc_800AA38:
	mov R0, #0
	pop {r7,pc}
loc_800AA3C:
	mov R0, #1
	pop {r7,pc}
.endfunc // sub_800AA1A

.func
.thumb_func
sub_800AA40:
	push {lr}
	push {r0}
	bl sub_800AAAE
	add r3, r0, #0
	mov R0, #0
loc_800AA4C:
	ldr R1, [R3,R0]
	cmp R1, R5
	bne loc_800AA56
	mov R1, #0
	str R1, [R3,R0]
loc_800AA56:
	add R0, #4
	cmp r0, #0x20
	bne loc_800AA4C
	pop {r0}
	bl sub_800AA64
	pop {pc}
.endfunc // sub_800AA40

.func
.thumb_func
sub_800AA64:
	push {r4,lr}
	bl sub_800AAAE
	add r3, r0, #0
	add r1, r3, #0
	mov R4, #0x1C
	add r4, r4, r3
	mov R0, #0
loc_800AA74:
	ldr R0, [R3]
	cmp R0, #0
	beq loc_800AA7E
	str R0, [R1]
	add R1, #4
loc_800AA7E:
	add R3, #4
	cmp R3, R4
	bne loc_800AA74
	mov R0, #0
loc_800AA86:
	cmp R1, R4
	beq locret_800AA90
	str R0, [R1]
	add R1, #4
	b loc_800AA86
locret_800AA90:
	pop {r4,pc}
.endfunc // sub_800AA64

.func
.thumb_func
sub_800AA92:
	push {lr}
	bl sub_800AAAE
	add r3, r0, #0
	mov R0, #0
	mov R2, #0
loc_800AA9E:
	ldr R1, [R3,R2]
	cmp R1, #0
	beq loc_800AAA6
	add R0, #1
loc_800AAA6:
	add R2, #4
	cmp r2, #0x20
	blt loc_800AA9E
	pop {pc}
.endfunc // sub_800AA92

.func
.thumb_func
sub_800AAAE:
	mov r1, #0x20
	mul R0, R1
	ldr R1, off_800AAB8 // =unk_2038170
	add r0, r0, r1
	mov PC, LR
off_800AAB8: .word unk_2038170
.endfunc // sub_800AAAE

.func
.thumb_func
sub_800AABC:
	push {r5,lr}
	mov R5, R10
	ldr R5, [R5,#0x18]
	mov R0, #4
	bl sub_800A840
	mov R0, R10
	ldr R0, [R0,#0x18]
	mov R1, #0x14
	strb R1, [R0,#1]
	mov R1, #0
	strh R1, [R0,#2]
	pop {r5,pc}
.endfunc // sub_800AABC

.func
.thumb_func
sub_800AAD6:
	push {r5,lr}
	bl sub_800AABC
	mov R5, R10
	ldr R5, [R5,#0x18]
	mov R0, #2
	bl sub_800A840
	pop {r5,pc}
.endfunc // sub_800AAD6

	mov R1, R10
	ldr R1, [R1,#0x18]
	mov R0, #1
	strh R0, [R1,#0x3A]
	mov PC, LR
.func
.thumb_func
sub_800AAF2:
	push {lr}
	mov R0, #0
	bl sub_800AAFC
	pop {pc}
.endfunc // sub_800AAF2

.func
.thumb_func
sub_800AAFC:
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0x28
	mul R0, R1
	ldr R2, off_800ABF8 // =unk_20018C0
	add r0, r0, r2
	mov R2, #0
	mvn R2, R2
	bl sub_800098C
	mov r1, #0x28
	mul R4, R1
	ldr R0, off_800ABFC // =unk_2000260
	add r0, r0, r4
	mov R2, #0
	mvn R2, R2
	bl sub_800098C
	pop {r4,pc}
.endfunc // sub_800AAFC

.func
.thumb_func
sub_800AB22:
	push {lr}
	ldr R0, off_800AC00 // =word_2000FA0
	mov R1, #0x1A
	bl sub_80008C0
	pop {pc}
.endfunc // sub_800AB22

.func
.thumb_func
sub_800AB2E:
	mov R3, #0x10
	mul R0, R3
	ldr R3, off_800AC04 // =byte_203EAE0
	add r3, r3, r0
	strb R2, [R3,R1]
	mov PC, LR
.endfunc // sub_800AB2E

.func
.thumb_func
sub_800AB3A:
	mov R3, #0x10
	mul R0, R3
	ldr R3, off_800AC08 // =byte_203EAE0
	add r3, r3, r0
	ldrb R0, [R3,R1]
	mov PC, LR
.endfunc // sub_800AB3A

.func
.thumb_func
sub_800AB46:
	mov R3, #0x10
	mul R0, R3
	ldr R3, off_800AC0C // =byte_203EAE0
	add r3, r3, r0
	ldrb R0, [R3,R1]
	add r0, r0, r2
	cmp R0, #0xFF
	ble loc_800AB58
	mov R0, #0xFF
loc_800AB58:
	strb R0, [R3,R1]
	mov PC, LR
.endfunc // sub_800AB46

	mov R3, #0x10
	mul R0, R3
	ldr R3, off_800AC10 // =byte_203EAE0
	add r3, r3, r0
	ldrb R0, [R3,R1]
	sub r0, r0, r2
	bge loc_800AB6C
	mov R0, #0
loc_800AB6C:
	strb R0, [R3,R1]
	mov PC, LR
.func
.thumb_func
sub_800AB70:
	push {lr}
	// memBlock
	ldr R0, off_800AC14 // =byte_203EAE0
	// size
	mov r1, #0x20
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_800AB70

.func
.thumb_func
sub_800AB7C:
	push {r4,lr}
	ldr R4, off_800AC18 // =dword_203CA70
	bl battle_isPaused
	tst R0, R0
	bne loc_800ABAC
	bl battle_isTimeStop
	tst R0, R0
	bne loc_800ABAC
	bl battle_isBattleOver
	tst R0, R0
	bne loc_800ABB8
	ldrh R0, [R4,#0xA] // (word_203CA7A - 0x203CA70)
	cmp r0, #0x3c
	blt loc_800ABA4
	sub R0, #1
	strh R0, [R4,#0xA] // (word_203CA7A - 0x203CA70)
	b loc_800ABAC
loc_800ABA4:
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R0, #1
	strb R0, [R2,#0xB]
loc_800ABAC:
	ldrh R0, [R4,#0xA] // (word_203CA7A - 0x203CA70)
	mov r1, #0x3c
	svc 6
	bl sub_801E398
	pop {r4,pc}
loc_800ABB8:
	ldr R0, off_800AC1C // =0x800
	bl sub_801DACC
	ldr R0, off_800AC1C // =0x800
	bl sub_801BED6
	pop {r4,pc}
.endfunc // sub_800AB7C

.func
.thumb_func
sub_800ABC6:
	push {r4,lr}
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r1, #0
	add r1, r0, #0
	mov R3, #0x10
	lsl r3, r3, #0x10
	add r2, r2, r3
	add r3, r3, r3
	mov R4, R10
	ldr R4, [R4,#0x18]
	ldrb R4, [R4,#0xD]
	lsl r4, r4, #8
	add r4, #0x46
	mov R0, #1
	bl sub_80E05F6
	mov R0, #0xA5
	bl sound_play // () -> void
	pop {r4,pc}
off_800ABF0: .word byte_20349C0
off_800ABF4: .word byte_2034A10
off_800ABF8: .word unk_20018C0
off_800ABFC: .word unk_2000260
off_800AC00: .word word_2000FA0
off_800AC04: .word byte_203EAE0
off_800AC08: .word byte_203EAE0
off_800AC0C: .word byte_203EAE0
off_800AC10: .word byte_203EAE0
off_800AC14: .word byte_203EAE0
off_800AC18: .word dword_203CA70
off_800AC1C: .word 0x800
.endfunc // sub_800ABC6

.func
.thumb_func
sub_800AC20:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x14
	ldr R2, dword_800ADD8 // =0x18F
	cmp R0, #2
	bne loc_800AC2C
	mov R2, #0xF1
loc_800AC2C:
	str R0, [SP]
	str R2, [SP,#0x10]
	str R1, [SP,#0x14]
	mov R0, #0
	str R0, [SP,#4]
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800AC6C
	bl sub_800A704
	bl sub_8000D84
	ldr R2, [SP]
	mov R1, #0xC
	mul R1, R2
	ldr R7, off_800ADD0 // =off_800ADDC
	add r7, r7, r1
	mov R2, #0
loc_800AC52:
	ldr R1, [R7]
	cmp R0, R1
	ble loc_800AC60
	add R7, #4
	add R2, #1
	cmp R2, #3
	blt loc_800AC52
loc_800AC60:
	ldr R1, [SP]
	lsl r1, r1, #2
	ldr R7, off_800ADD4 // =byte_800AE00
	add r7, r7, r1
	ldrb R0, [R7,R2]
	str R0, [SP,#4]
loc_800AC6C:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800AC90
	ldr R0, [SP,#0x14]
	mov R1, #3
	bl sub_800AB3A
	cmp R0, #4
	bge loc_800AC86
	neg R0, R0
	add R0, #1
	b loc_800AC8A
loc_800AC86:
	mov R0, #0
	sub R0, #3
loc_800AC8A:
	ldr R1, [SP,#4]
	add r1, r1, r0
	str R1, [SP,#4]
loc_800AC90:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800ACAE
	ldr R0, [SP,#0x14]
	mov R1, #4
	bl sub_800AB3A
	mov R1, #1
	cmp R0, #2
	ble loc_800ACA8
	mov R1, #0
loc_800ACA8:
	ldr R0, [SP,#4]
	add r0, r0, r1
	str R0, [SP,#4]
loc_800ACAE:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800ACC6
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x1B]
	sub R0, #1
	add r0, r0, r0
	ldr R1, [SP,#4]
	add r1, r1, r0
	str R1, [SP,#4]
loc_800ACC6:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800ACFE
	ldr R0, [SP,#0x14]
	bl sub_80103BC
	tst R0, R0
	beq loc_800ACFE
	ldrh R2, [R0,#0x24]
	ldrh R3, [R0,#0x26]
	mov R0, #0
	lsr r4, r3, #1
	cmp R2, R4
	blt loc_800ACF8
	mov R0, #1
	lsr r4, r3, #2
	lsr r1, r3, #1
	add r4, r4, r1
	cmp R2, R4
	blt loc_800ACF8
	mov R0, #2
	cmp R2, R3
	blt loc_800ACF8
	mov R0, #3
loc_800ACF8:
	ldr R1, [SP,#4]
	add r1, r1, r0
	str R1, [SP,#4]
loc_800ACFE:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800AD30
	ldr R0, [SP,#0x14]
	mov R1, #5
	bl sub_800AB3A
	mov R1, #0
	tst R0, R0
	beq loc_800AD2A
	cmp R0, #1
	bne loc_800AD1C
	mov R1, #1
	b loc_800AD28
loc_800AD1C:
	cmp R0, #4
	blt loc_800AD22
	mov R0, #3
loc_800AD22:
	add r1, r0, #0
	sub R1, #1
	add r1, r1, r1
loc_800AD28:
	neg R1, R1
loc_800AD2A:
	ldr R0, [SP,#4]
	add r0, r0, r1
	str R0, [SP,#4]
loc_800AD30:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800AD7E
	ldr R0, [SP,#0x14]
	bl sub_80103BC
	tst R0, R0
	beq loc_800AD7E
	ldrh R6, [R0,#0x26]
	ldr R0, [SP,#0x14]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	tst R0, R0
	beq loc_800AD7E
	ldrh R7, [R0,#0x26]
	mov R4, #0
	sub r6, r6, r7
	bge loc_800AD5E
	mov R4, #1
	neg R6, R6
loc_800AD5E:
	add r0, r6, #0
	mov r1, #0x64
	svc 6
	cmp R0, #1
	ble loc_800AD72
	lsr r0, r0, #1
	lsl r0, r0, #1
	cmp R0, #4
	ble loc_800AD72
	mov R0, #4
loc_800AD72:
	tst R4, R4
	bne loc_800AD78
	neg R0, R0
loc_800AD78:
	ldr R1, [SP,#4]
	add r1, r1, r0
	str R1, [SP,#4]
loc_800AD7E:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800AD9E
	ldr R0, [SP,#0x14]
	mov R1, #8
	bl sub_800AB3A
	cmp R0, #0
	beq loc_800AD9E
	cmp R0, #3
	ble loc_800AD98
	mov R0, #3
loc_800AD98:
	ldr R1, [SP,#4]
	add r1, r1, r0
	str R1, [SP,#4]
loc_800AD9E:
	ldr R0, [SP,#0x10]
	lsr r0, r0, #1
	str R0, [SP,#0x10]
	bcc loc_800ADB8
	ldr R0, [SP,#0x14]
	mov R1, #0xB
	bl sub_800AB3A
	cmp R0, #0
	bne loc_800ADB8
	ldr R1, [SP,#4]
	add R1, #1
	str R1, [SP,#4]
loc_800ADB8:
	ldr R0, [SP,#4]
	tst R0, R0
	ble loc_800ADC6
	cmp R0, #0xB
	ble loc_800ADC8
	mov R0, #0xB
	b loc_800ADC8
loc_800ADC6:
	mov R0, #1
loc_800ADC8:
	str R0, [SP,#4]
	ldr R0, [SP,#4]
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
off_800ADD0: .word off_800ADDC
off_800ADD4: .word byte_800AE00
dword_800ADD8: .word 0x18F
off_800ADDC: .word 0x500
	.word 0x1200
	.word 0x3600
	.word 0x3000
	.word 0x4000, 0x5000, 0x3000, 0x4500, 0x10000
byte_800AE00: .byte 0x6, 0x5, 0x4, 0x3, 0xA, 0x8, 0x6, 0x4, 0xA, 0x8, 0x6, 0x4
.endfunc // sub_800AC20

.func
.thumb_func
sub_800AE0C:
	push {r4,lr}
	mov R4, R10
	ldr R4, [R4,#0x18]
	ldrb R0, [R4,#0x1C]
	ldrb R1, [R4,#0x1B]
	cmp R0, R1
	ble loc_800AE32
	strb R0, [R4,#0x1B]
	cmp R0, #2
	blt loc_800AE32
	push {r0}
	bl sub_802D234
	cmp R0, #6
	pop {r0}
	beq loc_800AE32
	sub R0, #2
	bl sub_801E228
loc_800AE32:
	ldrb R0, [R4,#0x1D]
	tst R0, R0
	beq loc_800AE3E
	sub R0, #1
	strb R0, [R4,#0x1D]
	b locret_800AE42
loc_800AE3E:
	mov R0, #0
	strb R0, [R4,#0x1C]
locret_800AE42:
	pop {r4,pc}
.endfunc // sub_800AE0C

.func
.thumb_func
sub_800AE44:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0x1C]
	add R0, #1
	strb R0, [R1,#0x1C]
	mov R0, #0xA
	strb R0, [R1,#0x1D]
	mov PC, LR
.endfunc // sub_800AE44

.func
.thumb_func
sub_800AE54:
	push {r4,r6,r7,lr}
	mov R3, R10
	ldr R3, [R3,#0x18]
	lsl r2, r2, #1
	ldr R4, off_800AE88 // =dword_800AE8C
	add r4, r4, r2
	ldrb R2, [R4]
	add r3, r3, r2
	ldrb R2, [R4,#1]
loc_800AE66:
	ldr R4, [R3]
	tst R4, R4
	beq loc_800AE7C
	ldrb R6, [R4,#0x12]
	cmp R6, R0
	bne loc_800AE7C
	ldrb R6, [R4,#0x13]
	cmp R6, R1
	bne loc_800AE7C
	add r0, r4, #0
	pop {r4,r6,r7,pc}
loc_800AE7C:
	add R3, #4
	sub R2, #1
	bne loc_800AE66
	mov R0, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_800AE88: .word dword_800AE8C
dword_800AE8C: .word 0x4900480
.endfunc // sub_800AE54

.func
.thumb_func
sub_800AE90:
	push {R5-R7,lr}
	push {r0,r1}
	mov R7, R10
	ldr R7, [R7,#0x24]
	ldrh R2, [R7]
	mov R3, #0xF
	and R2, R3
	bne loc_800AEA6
	mov R0, #0x91
	bl sound_play // () -> void
loc_800AEA6:
	pop {r0,r1}
	mov R2, #0x10
	add r2, r2, r0
	cmp R2, #0xFF
	bcs locret_800AEE0
	mov R2, #0x10
	add r2, r2, r1
	cmp R2, #0xB0
	bcs locret_800AEE0
	mov R7, R10
	ldr R7, [R7,#0x24]
	ldrh R2, [R7]
	mov R3, #8
	and R2, R3
	lsr r2, r2, #1
	ldr R6, dword_800AEE4 // =0xD3CA
	add r6, r6, r2
	push {r0,r1,r6}
	mov r2, #0x40
	lsl r2, r2, #8
	orr R0, R2
	lsl r0, r0, #0x10
	orr R0, R1
	add r1, r6, #0
	mov R2, #0
	mov R3, #0
	bl sub_8009FF8
	pop {r0,r1,r6}
locret_800AEE0:
	pop {R5-R7,pc}
	.balign 4, 0x00
dword_800AEE4: .word 0xD3CA
.endfunc // sub_800AE90

.func
.thumb_func
sub_800AEE8:
	push {R4-R6,lr}
	ldr R4, off_800B138 // =byte_20349C0
	ldrb R0, [R4]
	add r0, r0, r0
	add R0, #2
	add r5, r4, r0
	// idx
	ldrh R0, [R5]
	add r6, r0, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #0x80
	tst R1, R2
	beq loc_800AF0E
	add r0, r6, #0
	mov R1, #0
	bl sub_80109A4
	strh R0, [R5,#0xC]
loc_800AF0E:
	add r4, #0x50
	ldrb R0, [R4]
	add r0, r0, r0
	add R0, #2
	add r5, r4, r0
	// idx
	ldrh R0, [R5]
	add r6, r0, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#9]
	mov R2, #0x80
	tst R1, R2
	beq locret_800AF32
	add r0, r6, #0
	mov R1, #1
	bl sub_80109A4
	strh R0, [R5,#0xC]
locret_800AF32:
	pop {R4-R6,pc}
.endfunc // sub_800AEE8

.func
.thumb_func
sub_800AF34:
	push {lr}
	bl sub_800A8F8
	tst R0, R0
	bne loc_800AF46
	ldr R0, dword_800B13C // =0x4000
	bl sub_801DFA2
	pop {pc}
loc_800AF46:
	ldrb R0, [R5,#0x16]
	ldr R1, dword_800B140 // =0x1555
	bl sub_802E032
	pop {pc}
.endfunc // sub_800AF34

.func
.thumb_func
sub_800AF50:
	push {r4,r5,lr}
	mov R5, R10
	ldr R5, [R5,#0x18]
	ldrb R0, [R5,#0x18]
	ldrb R1, [R5,#0x19]
	ldrb R2, [R5,#0x1A]
	neg R4, R2
	add R4, #3
	add r5, r1, r4
	cmp R0, R5
	bgt loc_800AF72
	add r5, r0, r4
	cmp R1, R5
	bgt loc_800AF76
	cmp R2, #3
	bge loc_800AF7C
	b loc_800AF80
loc_800AF72:
	mov R0, #1
	b locret_800AF82
loc_800AF76:
	mov R0, #1
	neg R0, R0
	b locret_800AF82
loc_800AF7C:
	mov R0, #2
	b locret_800AF82
loc_800AF80:
	mov R0, #0
locret_800AF82:
	pop {r4,r5,pc}
.endfunc // sub_800AF50

.func
.thumb_func
sub_800AF84:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_800AFA0
	add r2, r0, #0
	mov R0, #0
	mov R1, #0
	mov R3, #1
	tst R2, R3
	beq loc_800AFB4
	mov R0, #1
	b loc_800AFB4
loc_800AFA0:
	bl sub_800A832
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	cmp R0, #1
	beq loc_800AFB2
	mov R2, #1
	eor R1, R2
loc_800AFB2:
	mov R0, #2
loc_800AFB4:
	bl sub_800AC20
	pop {pc}
.endfunc // sub_800AF84

.func
.thumb_func
sub_800AFBA:
	push {R1-R7,lr}
	add r4, r0, #0
	mov R6, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800AFCC
	mov R6, #1
loc_800AFCC:
	bl sub_802E09A
	orr R6, R0
	push {r6}
	lsr r0, r4, #9
	cmp R0, #0x1B
	beq loc_800B00C
	cmp R0, #0x1C
	beq loc_800B00C
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#7]
	cmp R6, #1
	beq loc_800AFF0
	cmp R6, #2
	bne loc_800B00C
loc_800AFF0:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov R1, #0xA
	add r1, r1, r6
	bl sub_80136CC
	ldr R1, off_800B108 // =dword_20367E0
	ldrb R1, [R1,R6]
	cmp R1, R0
	ble loc_800B00C
	mov R0, #0
	cmp R0, #1
	b loc_800B01C
loc_800B00C:
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	ldr R1, dword_800B104 // =0x19B
	cmp R0, R1
	bge loc_800B01C
	bl sub_8006E84
	b loc_800B01E
loc_800B01C:
	cmp R0, R0
loc_800B01E:
	pop {r0}
	pop {R1-R7,pc}
.endfunc // sub_800AFBA

.func
.thumb_func
// (int a1) ->
sub_800B022:
	push {R1-R7,lr}
	add r4, r0, #0
	mov R6, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800B034
	mov R6, #1
loc_800B034:
	bl sub_802E09A
	orr R6, R0
	push {r6}
	lsr r0, r4, #9
	cmp R0, #0x1B
	beq loc_800B074
	cmp R0, #0x1C
	beq loc_800B074
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#7]
	cmp R6, #1
	beq loc_800B058
	cmp R6, #2
	bne loc_800B074
loc_800B058:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov R1, #0xA
	add r1, r1, r6
	bl sub_80136CC
	ldr R1, off_800B108 // =dword_20367E0
	ldrb R1, [R1,R6]
	cmp R1, R0
	ble loc_800B074
	mov R0, #0
	cmp R0, #1
	b loc_800B08C
loc_800B074:
	lsr r1, r4, #9
	lsl r0, r4, #0x17
	lsr r0, r0, #0x17
	cmp R1, #0x1B
	bne loc_800B080
	mov R1, #0xFF
loc_800B080:
	ldr R2, dword_800B104 // =0x19B
	cmp R0, R2
	blt loc_800B088
	mov R1, #0xFF
loc_800B088:
	bl sub_8006EE8 // (int idx_8021DA8, int a2) -> bool
loc_800B08C:
	pop {r0}
	pop {R1-R7,pc}
.endfunc // sub_800B022

.func
.thumb_func
sub_800B090:
	push {R0-R7,lr}
	mov R0, R8
	mov R1, R9
	push {r0,r1}
	bl sub_802E09A
	cmp R0, #0
	bne loc_800B0FA
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_8010018
	add r6, r0, #0
	mov R9, R0
	ldrb R0, [R6]
	mov R8, R0
	lsl r0, r0, #1
	add R0, #2
	add r6, r6, r0
	ldrh R0, [R6]
	add r4, r0, #0
	mov R1, #0xFF
	lsl r1, r1, #8
	add R1, #0xFF
	cmp R0, R1
	beq loc_800B0FA
	mov R1, #0xFF
	bl sub_8006EE8 // (int idx_8021DA8, int a2) -> bool
	bne loc_800B0F6
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R7, [R0,#0x7] // ChipData.elemIdx
	cmp R7, #1
	beq loc_800B0DE
	cmp R7, #2
	bne loc_800B0FA
loc_800B0DE:
	mov R0, R10
	ldr R0, [R0,#0x18] // Toolkit.s_2034880
	ldrb R0, [R0,#0xD]
	mov R1, #0xA
	add r1, r1, r7
	bl sub_80136CC
	mov R0, R9
	ldr R1, off_800B108 // =dword_20367E0
	ldrb R1, [R1,R7]
	cmp R1, R0
	blt loc_800B0FA
loc_800B0F6:
	ldr R0, dword_800B10C // =0x185
	strh R0, [R6]
loc_800B0FA:
	pop {r0,r1}
	mov R8, R0
	mov R9, R1
	pop {R0-R7,pc}
	.balign 4, 0x00
dword_800B104: .word 0x19B
off_800B108: .word dword_20367E0
dword_800B10C: .word 0x185
.endfunc // sub_800B090

.func
.thumb_func
sub_800B110:
	push {r4,lr}
	ldr R4, off_800B124 // =word_800B128
loc_800B114:
	// idx_2008A0
	ldrh R0, [R4]
	cmp R0, #0
	beq locret_800B122
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	add R4, #2
	b loc_800B114
locret_800B122:
	pop {r4,pc}
off_800B124: .word word_800B128
word_800B128: .hword 0x195
	.hword 0x196
	.word 0x1980197, 0x19A0199, 0x0
off_800B138: .word byte_20349C0
dword_800B13C: .word 0x4000
dword_800B140: .word 0x1555
.endfunc // sub_800B110

.func
.thumb_func
sub_800B144:
	push {r4,r6,lr}
	ldr R4, off_800B2BC // =dword_203CBE0
	ldr R0, off_800B2C0 // =dword_20013F0
	ldr R0, [R0]
	str R0, [R4,#0x4] // (dword_203CBE4 - 0x203CBE0)
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R0, [R0,#0x3C]
	str R0, [R4,#0x8] // (byte_203CBE8 - 0x203CBE0)
	bl get_802D246 // () -> int
	ldr R1, dword_800B2C4 // =0x200000
	tst R0, R1
	bne loc_800B1F0
	bl sub_802D234
	cmp R0, #1
	beq loc_800B1C8
	cmp R0, #2
	beq loc_800B1D2
	cmp R0, #3
	beq loc_800B1D2
	cmp R0, #4
	beq loc_800B1D2
	cmp R0, #5
	beq loc_800B220
	cmp R0, #8
	beq loc_800B220
	cmp R0, #7
	beq loc_800B1DC
	cmp R0, #9
	beq loc_800B1E6
	bl getPETNaviSelect // () -> u8
	bl sub_801401E
	mov R1, #0xC
	add r1, r1, r4
	add r6, r1, #0
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800B1A8
	mov R0, #3
	mov R1, #0x21 // (byte_203CC0D - 0x203CBEC)
	strb R0, [R6,R1]
loc_800B1A8:
	bl sub_800A8F8
	cmp R0, #0
	beq loc_800B242
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_800B242
	bl getPETNaviSelect // () -> u8
	cmp R0, #0
	bne loc_800B242
	mov R0, #0xC
	strb R0, [R6,#0x17] // (byte_203CC03 - 0x203CBEC)
	b loc_800B242
loc_800B1C8:
	mov R0, #0xC
	add r0, r0, r4
	bl sub_80134C8
	b loc_800B242
loc_800B1D2:
	mov R0, #0xC
	add r0, r0, r4
	bl initStruct_8013438 // (void *struc) -> void
	b loc_800B242
loc_800B1DC:
	mov R0, #0xC
	add r0, r0, r4
	bl sub_8013554
	b loc_800B242
loc_800B1E6:
	mov R0, #0xC
	add r0, r0, r4
	bl sub_80135E8
	b loc_800B242
loc_800B1F0:
	mov R0, #0
	bl sub_8013854
	mov R1, #0xC
	add r1, r1, r4
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B2C8 // =0x474
	mov r1, #0x70
	add r1, r1, r4
	mov R2, #0x14
loc_800B208:
	strh R0, [R1]
	add R1, #2
	sub R2, #1
	bne loc_800B208
	mov R1, #0x98
	add r1, r1, r4
	mov R2, #0x14
loc_800B216:
	strh R0, [R1]
	add R1, #2
	sub R2, #1
	bne loc_800B216
	b loc_800B25A
loc_800B220:
	mov R0, #0xC
	add r0, r0, r4
	bl initStruct_8013438 // (void *struc) -> void
	mov R0, #0
	bl sub_801401E
	mov R1, #0xC
	add r1, r1, r4
	ldrh R2, [R0,#0x3E]
	strh R2, [R1,#0x3E] // (word_203CC2A - 0x203CBEC)
	ldr R2, [R0,#0x40]
	lsr r3, r2, #0x10
	lsl r2, r3, #0x10
	orr R2, R3
	str R2, [R1,#0x40] // (byte_203CC2C - 0x203CBEC)
	b loc_800B242
loc_800B242:
	ldr R0, off_800B2CC // =unk_20018C0
	mov r1, #0x70
	add r1, r1, r4
	mov r2, #0x28
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B2D0 // =unk_2000260
	mov R1, #0x98
	add r1, r1, r4
	mov r2, #0x28
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_800B25A:
	mov R0, #1
	bl sub_81209DC
	mov R2, #0xC8 // (byte_203CCA8 - 0x203CBE0)
	strb R0, [R4,R2]
	mov R2, #0xC9 // (byte_203CCA9 - 0x203CBE0)
	strb R1, [R4,R2]
	mov R0, #1
	bl sub_81209DC
	mov R2, #0xCA // (byte_203CCAA - 0x203CBE0)
	strb R0, [R4,R2]
	mov R2, #0xCB // (byte_203CCAB - 0x203CBE0)
	strb R1, [R4,R2]
	mov R0, R10
	ldr R0, [R0,#0x44]
	ldr R1, off_800B440 // =0x3C4
	add r0, r0, r1
	mov R1, #0xCC
	add r1, r1, r4
	mov r2, #0x28
	bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	bl sub_8010D20
	mov R1, #0xF4 // (byte_203CCD4 - 0x203CBE0)
	str R0, [R4,R1]
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_800B2A0
	bl sub_8121198
	b loc_800B2A2
loc_800B2A0:
	mov R0, #0xFF
loc_800B2A2:
	mov R1, #0xC0 // (dword_203CCA0 - 0x203CBE0)
	str R0, [R4,R1]
	bl sub_803D0F4
	mov R1, #0xC4 // (dword_203CCA4 - 0x203CBE0)
	str R0, [R4,R1]
	ldr R0, dword_800B2D4 // =0x12345678
	str R0, [R4]
	mov r0, #0x3e
	bl sub_80200A4
	pop {r4,r6,pc}
	.balign 4, 0x00
off_800B2BC: .word dword_203CBE0
off_800B2C0: .word dword_20013F0
dword_800B2C4: .word 0x200000
off_800B2C8: .word 0x474
off_800B2CC: .word unk_20018C0
off_800B2D0: .word unk_2000260
dword_800B2D4: .word 0x12345678
.endfunc // sub_800B144

.func
.thumb_func
sub_800B2D8:
	push {r4,r5,lr}
	ldr R0, off_800B560 // =byte_203F4AC
	ldr R1, off_800B564 // =byte_203CE00
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B568 // =byte_203F4AC
	ldr R1, off_800B56C // =byte_203CB10
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B570 // =byte_203F4AC
	ldr R1, off_800B574 // =unk_2034A60
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B578 // =byte_203F4AC
	ldr R1, off_800B57C // =byte_203C9E4
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800B334
	ldr R0, off_800B580 // =byte_203F5AC
	ldr R1, off_800B584 // =byte_203CE64
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B588 // =byte_203F5AC
	ldr R1, off_800B58C // =byte_203CB74
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B590 // =byte_203F5AC
	ldr R1, off_800B594 // =unk_2034AC4
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B598 // =byte_203F5AC
	ldr R1, off_800B59C // =byte_203C980
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_800B334:
	ldr R0, off_800B5A0 // =byte_203F4A4
	ldr R0, [R0]
	ldr R1, off_800B5A4 // =dword_20013F0
	str R0, [R1]
	ldr R0, off_800B5A8 // =byte_203F510
	ldr R1, off_800B5AC // =byte_203EB00
	mov r2, #0x28
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B5B0 // =byte_203F610
	ldr R1, off_800B5B4 // =byte_203EB28
	mov r2, #0x28
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B5B8 // =byte_203F538
	ldr R1, off_800B5BC // =unk_2036790
	mov r2, #0x28
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B5C0 // =byte_203F638
	ldr R1, off_800B5C4 // =unk_20367B8
	mov r2, #0x28
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B5C8 // =dword_203F568
	ldr R0, [R0]
	ldr R1, off_800B5CC // =byte_203CA50
	str R0, [R1]
	ldr R0, off_800B5D0 // =byte_203F56C
	ldr R1, off_800B5D4 // =byte_203F66C
	ldr R2, off_800B5D8 // =unk_2036750
	bl sub_80AAB88
	ldr R2, off_800B5DC // =dword_203CDF0
	ldr R0, off_800B5E0 // =byte_203F594
	ldr R0, [R0]
	str R0, [R2]
	ldr R0, off_800B5E4 // =byte_203F694
	ldr R0, [R0]
	str R0, [R2,#0x4] // (byte_203CDF4 - 0x203CDF0)
	ldr R2, off_800B5E8 // =dword_203CFA0
	ldr R0, off_800B5EC // =dword_203F560
	ldr R0, [R0]
	str R0, [R2]
	ldr R0, off_800B5F0 // =dword_203F660
	ldr R0, [R0]
	str R0, [R2,#0x4] // (byte_203CFA4 - 0x203CFA0)
	ldr R2, off_800B5F4 // =dword_203F7E0
	ldr R0, off_800B5F8 // =dword_203F564
	ldr R0, [R0]
	str R0, [R2]
	ldr R0, off_800B5FC // =byte_203F664
	ldr R0, [R0]
	str R0, [R2,#0x4] // (byte_203F7E4 - 0x203F7E0)
	pop {r4,r5,pc}
.endfunc // sub_800B2D8

.func
.thumb_func
sub_800B3A2:
	push {lr}
	ldr R0, off_800B600 // =byte_20366C0
	ldr R1, off_800B604 // =dword_203CBE4
	mov r2, #0x50
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, dword_800B608 // =0x56789123
	ldr R1, off_800B60C // =dword_203CBE0
	str R0, [R1]
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#0xD]
	bl sub_8013682 // (int idx) -> void*
	ldr R1, off_800B610 // =byte_203CC34
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B614 // =byte_203CED0
	ldr R1, off_800B618 // =byte_203CC98
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, #0x32
	bl sub_80200A4
	pop {pc}
.endfunc // sub_800B3A2

.func
.thumb_func
sub_800B3D8:
	push {r4,lr}
	ldr R4, off_800B61C // =byte_203F4A4
	ldrb R1, [R4]
	cmp R1, #0xFF
	beq loc_800B3EC
	add r0, r4, #0
	ldr R1, off_800B620 // =byte_20349C0
	mov r2, #0x50
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_800B3EC:
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_800B408
	ldr R4, off_800B624 // =byte_203F5A4
	ldrb R1, [R4]
	cmp R1, #0xFF
	beq loc_800B408
	add r0, r4, #0
	ldr R1, off_800B628 // =byte_2034A10
	mov r2, #0x50
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_800B408:
	ldr R0, off_800B62C // =byte_203F4F4
	ldr R1, off_800B630 // =byte_203CE00
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_800B426
	ldr R0, off_800B634 // =byte_203F5F4
	ldr R1, off_800B638 // =byte_203CE64
	mov r2, #0x64
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
locret_800B426:
	pop {r4,pc}
.endfunc // sub_800B3D8

.func
.thumb_func
sub_800B428:
	push {lr}
	ldr R0, off_800B63C // =dword_203CBE4
	bl sub_802C8FA
	ldr R0, dword_800B640 // =0x1F2F3F4F
	ldr R1, off_800B644 // =dword_203CBE0
	str R0, [R1]
	mov R0, #4
	bl sub_80200A4
	pop {pc}
	.byte 0, 0
off_800B440: .word 0x3C4
.endfunc // sub_800B428

.func
.thumb_func
sub_800B444:
	push {lr}
	ldr R0, off_800B648 // =byte_203F4A4
	ldr R1, off_800B64C // =unk_2035260
	mov R2, #0xC
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_800B650 // =byte_203F5A4
	ldr R1, off_800B654 // =unk_203526C
	mov R2, #0xC
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	bl sub_802C9EA
	pop {pc}
.endfunc // sub_800B444

.func
.thumb_func
sub_800B460:
	mov R0, #0
	ldr R1, off_800B658 // =dword_203F4A0
	str R0, [R1]
	ldr R1, off_800B65C // =dword_203F5A0
	str R0, [R1]
	mov PC, LR
.endfunc // sub_800B460

.func
.thumb_func
sub_800B46C:
	add r3, r0, #0
	mov R0, #0
	ldr R1, off_800B660 // =dword_203F4A0
	ldr R1, [R1]
	ldr R2, off_800B664 // =dword_203F5A0
	ldr R2, [R2]
	cmp R1, R3
	bne locret_800B482
	cmp R2, R3
	bne locret_800B482
	mov R0, #1
locret_800B482:
	mov PC, LR
.endfunc // sub_800B46C

	push {r4,lr}
	ldr R0, dword_800B668 // =0xF1F1F1F1
	ldr R1, off_800B66C // =dword_203CBE0
	str R0, [R1]
	ldr R0, off_800B670 // =byte_203F6D0
	ldr R1, off_800B674 // =dword_203CBE4
	mov r2, #0x3c
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R0, #0x10
	bl sub_80200A4
	pop {r4,pc}
	push {r6,r7,lr}
	mov R0, #0
	ldr R1, off_800B678 // =byte_203F4A4
	bl sub_802E45E
	mov R0, #1
	ldr R1, off_800B67C // =byte_203F5A4
	bl sub_802E45E
	pop {r6,r7,pc}
	push {r4,r5,lr}
	add r5, r1, #0
	bl sub_800B4CE
	ldr R0, dword_800B680 // =0xA9B8C7D6
	ldr R1, off_800B684 // =dword_203CBE0
	str R0, [R1]
	ldr R1, off_800B688 // =dword_203CBE4
	str R4, [R1]
	str R5, [R1,#0x4] // (byte_203CBE8 - 0x203CBE4)
	mov R0, #3
	bl sub_80200A4
	pop {r4,r5,pc}
.func
.thumb_func
sub_800B4CE:
	push {lr}
	add r4, r0, #0
	mov R0, R10
	ldr R0, [R0,#0x18]
	mov R1, #0x90
loc_800B4D8:
	ldr R2, [R0,R1]
	cmp R2, R4
	bne loc_800B4F0
	add r4, r1, #0
	cmp R1, #0x90
	bne locret_800B50C
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_800B50C
	b loc_800B50A
loc_800B4F0:
	add R1, #4
	cmp R1, #0xC0
	bne loc_800B4D8
	mov R1, #0xA0
	mov R3, #8
loc_800B4FA:
	ldr R2, [R0,R1]
	cmp R2, R4
	bne loc_800B504
	add r4, r1, #0
	b locret_800B50C
loc_800B504:
	add R1, #4
	sub R3, #1
	bne loc_800B4FA
loc_800B50A:
	mov R4, #0
locret_800B50C:
	pop {pc}
.endfunc // sub_800B4CE

	push {lr}
	mov R0, #0
	bl sub_802E070
	ldr R1, off_800B68C // =byte_203F4A4
	ldr R2, [R1]
	mov R3, #0
	bl sub_800B548
	str R2, [R0,#0x44]
	ldr R2, [R1,#4]
	strb R2, [R0,#0xE]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_800B546
	mov R0, #1
	bl sub_802E070
	ldr R1, off_800B690 // =byte_203F5A4
	ldr R2, [R1]
	mov R3, #1
	bl sub_800B548
	str R2, [R0,#0x44]
	ldr R2, [R1,#4]
	strb R2, [R0,#0xE]
locret_800B546:
	pop {pc}
.func
.thumb_func
sub_800B548:
	push {r0,r1,lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	cmp R2, #0
	bne loc_800B55A
	mov R2, #0x80
	tst R3, R3
	bne loc_800B55A
	mov R2, #0x90
loc_800B55A:
	ldr R2, [R0,R2]
	pop {r0,r1,pc}
	.byte 0, 0
off_800B560: .word byte_203F4AC
off_800B564: .word byte_203CE00
off_800B568: .word byte_203F4AC
off_800B56C: .word byte_203CB10
off_800B570: .word byte_203F4AC
off_800B574: .word unk_2034A60
off_800B578: .word byte_203F4AC
off_800B57C: .word byte_203C9E4
off_800B580: .word byte_203F5AC
off_800B584: .word byte_203CE64
off_800B588: .word byte_203F5AC
off_800B58C: .word byte_203CB74
off_800B590: .word byte_203F5AC
off_800B594: .word unk_2034AC4
off_800B598: .word byte_203F5AC
off_800B59C: .word byte_203C980
off_800B5A0: .word byte_203F4A4
off_800B5A4: .word dword_20013F0
off_800B5A8: .word byte_203F510
off_800B5AC: .word byte_203EB00
off_800B5B0: .word byte_203F610
off_800B5B4: .word byte_203EB28
off_800B5B8: .word byte_203F538
off_800B5BC: .word unk_2036790
off_800B5C0: .word byte_203F638
off_800B5C4: .word unk_20367B8
off_800B5C8: .word dword_203F568
off_800B5CC: .word byte_203CA50
off_800B5D0: .word byte_203F56C
off_800B5D4: .word byte_203F66C
off_800B5D8: .word unk_2036750
off_800B5DC: .word dword_203CDF0
off_800B5E0: .word byte_203F594
off_800B5E4: .word byte_203F694
off_800B5E8: .word dword_203CFA0
off_800B5EC: .word dword_203F560
off_800B5F0: .word dword_203F660
off_800B5F4: .word dword_203F7E0
off_800B5F8: .word dword_203F564
off_800B5FC: .word byte_203F664
off_800B600: .word byte_20366C0
off_800B604: .word dword_203CBE4
dword_800B608: .word 0x56789123
off_800B60C: .word dword_203CBE0
off_800B610: .word byte_203CC34
off_800B614: .word byte_203CED0
off_800B618: .word byte_203CC98
off_800B61C: .word byte_203F4A4
off_800B620: .word byte_20349C0
off_800B624: .word byte_203F5A4
off_800B628: .word byte_2034A10
off_800B62C: .word byte_203F4F4
off_800B630: .word byte_203CE00
off_800B634: .word byte_203F5F4
off_800B638: .word byte_203CE64
off_800B63C: .word dword_203CBE4
dword_800B640: .word 0x1F2F3F4F
off_800B644: .word dword_203CBE0
off_800B648: .word byte_203F4A4
off_800B64C: .word unk_2035260
off_800B650: .word byte_203F5A4
off_800B654: .word unk_203526C
off_800B658: .word dword_203F4A0
off_800B65C: .word dword_203F5A0
off_800B660: .word dword_203F4A0
off_800B664: .word dword_203F5A0
dword_800B668: .word 0xF1F1F1F1
off_800B66C: .word dword_203CBE0
off_800B670: .word byte_203F6D0
off_800B674: .word dword_203CBE4
off_800B678: .word byte_203F4A4
off_800B67C: .word byte_203F5A4
dword_800B680: .word 0xA9B8C7D6
off_800B684: .word dword_203CBE0
off_800B688: .word dword_203CBE4
off_800B68C: .word byte_203F4A4
off_800B690: .word byte_203F5A4
.endfunc // sub_800B548

	ldr R3, off_800B828 // =byte_200A008
	ldr R0, dword_800B82C // =0xFFFF
	strh R0, [R3,#0x4] // (word_200A00C - 0x200A008)
	strh R0, [R3,#0x6] // (word_200A00E - 0x200A008)
	mov R0, #0
	strb R0, [R3]
	mov R0, #0
	strb R0, [R3,#0x1] // (byte_200A009 - 0x200A008)
	mov R0, #0
	strb R0, [R3,#0x2] // (byte_200A00A - 0x200A008)
	mov PC, LR
.func
.thumb_func
sub_800B6AA:
	ldr R1, off_800B830 // =byte_200A008
	strb R0, [R1,#0x1] // (byte_200A009 - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6AA

.func
.thumb_func
sub_800B6B0:
	ldr R1, off_800B834 // =byte_200A008
	ldrb R0, [R1,#0x1] // (byte_200A009 - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6B0

.func
.thumb_func
sub_800B6B6:
	ldr R1, off_800B838 // =byte_200A008
	strb R0, [R1]
	mov PC, LR
.endfunc // sub_800B6B6

	ldr R1, off_800B83C // =byte_200A008
	ldrb R0, [R1]
	mov PC, LR
.func
.thumb_func
sub_800B6C2:
	ldr R1, off_800B840 // =byte_200A008
	strb R0, [R1,#0x2] // (byte_200A00A - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6C2

	ldr R1, off_800B844 // =byte_200A008
	ldrb R0, [R1,#0x2] // (byte_200A00A - 0x200A008)
	mov PC, LR
.func
.thumb_func
sub_800B6CE:
	ldr R1, off_800B848 // =byte_200A008
	strh R0, [R1,#0x4] // (word_200A00C - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6CE

.func
.thumb_func
sub_800B6D4:
	ldr R1, off_800B84C // =byte_200A008
	ldrh R0, [R1,#0x4] // (word_200A00C - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6D4

.func
.thumb_func
sub_800B6DA:
	ldr R1, off_800B850 // =byte_200A008
	strh R0, [R1,#0x6] // (word_200A00E - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6DA

.func
.thumb_func
sub_800B6E0:
	ldr R1, off_800B854 // =byte_200A008
	ldrh R0, [R1,#0x6] // (word_200A00E - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6E0

.func
.thumb_func
sub_800B6E6:
	ldr R1, off_800B858 // =byte_200A008
	strb R0, [R1,#0x3] // (byte_200A00B - 0x200A008)
	mov PC, LR
.endfunc // sub_800B6E6

	ldr R1, off_800B85C // =byte_200A008
	ldrb R0, [R1,#0x3] // (byte_200A00B - 0x200A008)
	mov PC, LR
.func
.thumb_func
sub_800B6F2:
	push {r4,r6,r7,lr}
	mov R7, R10
	ldr R7, [R7,#0x18]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne locret_800B732
	ldr R1, dword_800B860 // =0x80000
	tst R0, R1
	bne locret_800B732
	bl sub_800A7E2
	mov R1, #1
	eor R0, R1
	add r1, r0, #4
	ldrb R6, [R7,R1]
	lsl r0, r0, #3
	add r0, #0x4c
	add r7, r7, r0
loc_800B71A:
	ldrh R0, [R7]
	ldr R1, off_800B864 // =0x100
	sub r0, r0, r1
	blt loc_800B72C
	ldr R1, off_800B868 // =0x300
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
loc_800B72C:
	add R7, #2
	sub R6, #1
	bgt loc_800B71A
locret_800B732:
	pop {r4,r6,r7,pc}
.endfunc // sub_800B6F2

.func
.thumb_func
sub_800B734:
	ldr R0, off_800B86C // =word_2000FA0
	mov R1, #1
	mov R3, #0
loc_800B73A:
	ldrh R2, [R0]
	add r3, r3, r2
	add R0, #2
	add R1, #1
	cmp R1, #0xD
	blt loc_800B73A
	mov R0, #0
	ldr R1, off_800B870 // =0x2A30
	cmp R3, R1
	bgt locret_800B758
	mov R0, #1
	ldr R1, off_800B874 // =0x1C20
	cmp R3, R1
	bgt locret_800B758
	mov R0, #2
locret_800B758:
	mov PC, LR
.endfunc // sub_800B734

.func
.thumb_func
sub_800B75A:
	ldr R0, off_800B878 // =byte_203C960
	mov R1, #0xFF
	strb R1, [R0]
	mov PC, LR
.endfunc // sub_800B75A

	push {r4,r6,lr}
	lsl r4, r1, #1
	bl sub_8010018
	ldr R6, dword_800B82C // =0xFFFF
	add r0, r0, r4
	add r1, r0, #2
loc_800B770:
	ldrh R2, [R1,#0xE]
	strh R2, [R0,#0xE]
	ldrh R2, [R1,#0x1A]
	strh R2, [R0,#0x1A]
	ldrh R2, [R1,#0x26]
	strh R2, [R0,#0x26]
	ldrh R2, [R1,#0x32]
	strh R2, [R0,#0x32]
	mov r3, #0x3e
	ldrb R2, [R1,R3]
	strb R2, [R0,R3]
	mov r3, #0x44
	ldrb R2, [R1,R3]
	strb R2, [R0,R3]
	ldrh R2, [R1,#2]
	strh R2, [R0,#2]
	add R0, #2
	add R1, #2
	cmp R2, R6
	bne loc_800B770
	pop {r4,r6,pc}
loc_800B79A:
	push {lr}
	ldr R1, dword_800B87C // =0x122
	cmp R0, R1
	bgt locret_800B7B4
	ldr R1, dword_800B880 // =0x11E
	cmp R0, R1
	blt locret_800B7B4
	sub r0, r0, r1
	ldr R1, off_800B7B8 // =off_800B7BC
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
locret_800B7B4:
	pop {pc}
	.balign 4, 0x00
off_800B7B8: .word off_800B7BC
off_800B7BC: .word sub_800B7D0+1
	.word sub_800B7E8+1
	.word sub_800B800+1
	.word nullsub_2+1
	.word sub_800B80E+1
.func
.thumb_func
sub_800B7D0:
	push {lr}
	mov R1, #0x18
	bl sub_8013774
	add r2, r0, #2
	cmp R2, #7
	ble loc_800B7E0
	mov R2, #7
loc_800B7E0:
	mov R1, #0x18
	bl sub_8013754
	pop {pc}
.endfunc // sub_800B7D0

.func
.thumb_func
sub_800B7E8:
	push {lr}
	mov R1, #0x18
	bl sub_8013774
	add r2, r0, #1
	cmp R2, #7
	ble loc_800B7F8
	mov R2, #7
loc_800B7F8:
	mov R1, #0x18
	bl sub_8013754
	pop {pc}
.endfunc // sub_800B7E8

.func
.thumb_func
sub_800B800:
	push {lr}
	mov R1, #0x18
	mov R2, #7
	bl sub_8013754
	pop {pc}
.endfunc // sub_800B800

.func
.thumb_func
nullsub_2:
	mov PC, LR
.endfunc // nullsub_2

.func
.thumb_func
sub_800B80E:
	push {lr}
	mov R1, #0x18
	bl sub_8013774
	add r2, r0, #4
	cmp R2, #7
	ble loc_800B81E
	mov R2, #7
loc_800B81E:
	mov R1, #0x18
	bl sub_8013754
	pop {pc}
	.balign 4, 0x00
off_800B828: .word byte_200A008
dword_800B82C: .word 0xFFFF
off_800B830: .word byte_200A008
off_800B834: .word byte_200A008
off_800B838: .word byte_200A008
off_800B83C: .word byte_200A008
off_800B840: .word byte_200A008
off_800B844: .word byte_200A008
off_800B848: .word byte_200A008
off_800B84C: .word byte_200A008
off_800B850: .word byte_200A008
off_800B854: .word byte_200A008
off_800B858: .word byte_200A008
off_800B85C: .word byte_200A008
dword_800B860: .word 0x80000
off_800B864: .word 0x100
off_800B868: .word 0x300
off_800B86C: .word word_2000FA0
off_800B870: .word 0x2A30
off_800B874: .word 0x1C20
off_800B878: .word byte_203C960
dword_800B87C: .word 0x122
dword_800B880: .word 0x11E
.endfunc // sub_800B80E

.func
.thumb_func
sub_800B884:
	push {lr}
	push {r1}
	bl sub_800BF5C
	pop {r1}
	strb R1, [R0,#1]
	pop {pc}
.endfunc // sub_800B884

.func
.thumb_func
sub_800B892:
	push {lr}
	bl sub_800BF5C
	ldrb R0, [R0,#1]
	pop {pc}
.endfunc // sub_800B892

.func
.thumb_func
sub_800B89C:
	push {lr}
	bl sub_800BF5C
	mov R1, #0
	strb R1, [R0,#1]
	mov R1, #0
	str R1, [R0,#8]
	pop {pc}
.endfunc // sub_800B89C

.func
.thumb_func
sub_800B8AC:
	push {r4,lr}
	add r4, r0, #0
	mov R0, #0
	bl sub_800BF5C
	strb R4, [R0]
	mov R0, #1
	bl sub_800BF5C
	strb R4, [R0]
	pop {r4,pc}
.endfunc // sub_800B8AC

.func
.thumb_func
sub_800B8C2:
	push {lr}
	push {r0}
	bl sub_800BF5C
	ldrb R1, [R0]
	pop {r2}
	mov R0, #0
	cmp R1, R2
	bne locret_800B8D6
	mov R0, #1
locret_800B8D6:
	pop {pc}
.endfunc // sub_800B8C2

.func
.thumb_func
sub_800B8D8:
	push {lr}
	push {r0}
	bl sub_800BF5C
	ldrb R1, [R0,#3]
	pop {r2}
	mov R0, #0
	cmp R1, R2
	bne locret_800B8EC
	mov R0, #1
locret_800B8EC:
	pop {pc}
.endfunc // sub_800B8D8

.func
.thumb_func
sub_800B8EE:
	push {r4,lr}
	mov R1, #1
	eor R0, R1
	mov R1, #3
	mul R0, R1
	add R0, #2
	mov R1, #4
	bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
	add r2, r1, #0
	add r1, r0, #0
	mov r3, #0x78
	lsl r3, r3, #0x10
	mov R4, #0x1E
	bl sub_80E05F6
	mov R0, #0xA5
	bl sound_play // () -> void
	pop {r4,pc}
.endfunc // sub_800B8EE

.func
.thumb_func
sub_800B916:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	bne loc_800B928
	mov r0, #0x40
	bl sub_801DACC
loc_800B928:
	ldrb R0, [R5,#0x16]
	bl sub_800B8D8
	tst R0, R0
	beq loc_800B938
	mov R0, #4
	bl battle_setFlags
loc_800B938:
	ldrb R0, [R5,#0x16]
	lsl r0, r0, #2
	ldr R1, off_800B948 // =unk_200F3B8
	mov R2, #0
	str R2, [R1,R0]
	mov R0, #4
	strb R0, [R5,#8]
	pop {pc}
off_800B948: .word unk_200F3B8
.endfunc // sub_800B916

.func
.thumb_func
sub_800B94C:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800B964
	mov r0, #0x3c
	mov R1, #4
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	strh R0, [R5,#0x20]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_800B964:
	ldrh R0, [R5,#0x20]
	add R0, #1
	strh R0, [R5,#0x20]
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_800B97C
	ldrb R0, [R5,#9]
	add R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_800B97C:
	pop {pc}
.endfunc // sub_800B94C

.func
.thumb_func
sub_800B97E:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800B996
	mov r0, #0x78
	mov R1, #0x80
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	strh R0, [R5,#0x20]
	mov R0, #4
	strb R0, [R5,#0xB]
loc_800B996:
	ldrh R0, [R5,#0x20]
	add R0, #1
	strh R0, [R5,#0x20]
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_800B9AE
	ldrb R0, [R5,#9]
	add R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_800B9AE:
	pop {pc}
.endfunc // sub_800B97E

.func
.thumb_func
sub_800B9B0:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800BA28
	ldrb R0, [R5,#0x16]
	mov R1, #2
	bl sub_800B884
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #3
	beq loc_800B9D4
	cmp R0, #0
	beq loc_800B9D4
	b locret_800BA88
loc_800B9D4:
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801BED6
	mov R0, #1
	lsl r0, r0, #0x10
	bl sub_801DACC
	// idx
	ldrh R0, [R5,#0x30]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	mov R1, #0
	mov R2, #0
	ldrb R3, [R0,#9]
	lsr r3, r3, #2
	bcc loc_800B9F8
	ldrh R1, [R5,#0x2C]
	ldrh R2, [R5,#0x32]
loc_800B9F8:
	ldrh R0, [R5,#0x30]
	push {R0-R2}
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	pop {R0-R2}
	bne loc_800BA12
	add r3, r0, #0
	mov r0, #0x4c
	bl loc_801E792
	b loc_800BA1A
loc_800BA12:
	add r3, r0, #0
	mov r0, #0x50
	bl loc_801E792
loc_800BA1A:
	mov r0, #0x74
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#0xB]
	b locret_800BA88
loc_800BA28:
	bl sub_801E754
	tst R0, R0
	bne locret_800BA88
	ldrb R0, [R5,#0x16]
	bl sub_800B8C2
	tst R0, R0
	bne loc_800BA56
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #0
	beq loc_800BA56
	cmp R0, #5
	beq loc_800BA56
	ldrb R0, [R5,#0x16]
	mov R1, #3
	bl sub_800B884
	b locret_800BA88
loc_800BA56:
	ldrb R0, [R5,#0x16]
	mov R1, #4
	bl sub_800B884
	ldrb R0, [R5,#0x16]
	bl sub_800BF5C
	ldrb R1, [R0,#2]
	tst R1, R1
	bne loc_800BA7E
	ldr R1, [R0,#0xC]
	ldrh R2, [R1,#0x24]
	tst R2, R2
	bne loc_800BA7E
	ldrb R0, [R5,#9]
	add R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b locret_800BA88
loc_800BA7E:
	ldrb R0, [R5,#9]
	add R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_800BA88:
	pop {pc}
.endfunc // sub_800B9B0

.func
.thumb_func
sub_800BA8A:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800BB08
	ldrb R0, [R5,#0x16]
	bl sub_800B892
	cmp R0, #4
	beq loc_800BAB8
	ldrb R0, [R5,#0x16]
	mov R1, #2
	bl sub_800B884
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #3
	beq loc_800BAB8
	cmp R0, #0
	beq loc_800BAB8
	b locret_800BB9E
loc_800BAB8:
	ldr R0, dword_800BBA0 // =0x10000
	bl sub_801BED6
	ldr R0, dword_800BBA0 // =0x10000
	bl sub_801DACC
	// idx
	ldrh R0, [R5,#0x30]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	mov R1, #0
	mov R2, #0
	ldrb R3, [R0,#9]
	lsr r3, r3, #2
	bcc loc_800BAD8
	ldrh R1, [R5,#0x2C]
	ldrh R2, [R5,#0x32]
loc_800BAD8:
	ldrh R0, [R5,#0x30]
	push {R0-R2}
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	pop {R0-R2}
	bne loc_800BAF2
	add r3, r0, #0
	mov r0, #0x4c
	bl loc_801E792
	b loc_800BAFA
loc_800BAF2:
	add r3, r0, #0
	mov r0, #0x50
	bl loc_801E792
loc_800BAFA:
	mov r0, #0x74
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#0xB]
	b locret_800BB9E
loc_800BB08:
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	bne loc_800BB18
	bl sub_801E754
	b loc_800BB1C
loc_800BB18:
	bl sub_801E754
loc_800BB1C:
	tst R0, R0
	bne locret_800BB9E
	ldrb R0, [R5,#0x16]
	bl sub_800B8C2
	tst R0, R0
	bne loc_800BB46
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #0
	beq loc_800BB46
	cmp R0, #5
	beq loc_800BB46
	ldrb R0, [R5,#0x16]
	mov R1, #3
	bl sub_800B884
	b locret_800BB9E
loc_800BB46:
	ldrb R0, [R5,#0x16]
	mov R1, #4
	bl sub_800B884
	ldrb R0, [R5,#0x16]
	bl sub_800BF5C
	ldr R1, [R0,#0xC]
	ldrh R2, [R1,#0x24]
	tst R2, R2
	bne loc_800BB72
	ldrb R1, [R5,#0x16]
	lsl r1, r1, #2
	ldr R0, off_800BBA4 // =unk_200F3B8
	mov R2, #1
	str R2, [R0,R1]
	ldrb R0, [R5,#9]
	add R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b locret_800BB9E
loc_800BB72:
	ldrh R0, [R5,#0x30]
	sub R0, #0xDD
	cmp r0, #0x3b
	bhi loc_800BB88
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_802CE78
	cmp R0, #0xBA
	beq loc_800BB94
loc_800BB88:
	ldrb R0, [R5,#9]
	add R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b locret_800BB9E
loc_800BB94:
	ldrb R0, [R5,#9]
	sub R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_800BB9E:
	pop {pc}
dword_800BBA0: .word 0x10000
off_800BBA4: .word unk_200F3B8
.endfunc // sub_800BA8A

.func
.thumb_func
sub_800BBA8:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800BC2C
	ldrb R0, [R5,#0x16]
	mov R1, #2
	bl sub_800B884
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #3
	beq loc_800BBCC
	cmp R0, #0
	beq loc_800BBCC
	b locret_800BC86
loc_800BBCC:
	ldr R0, dword_800BF74 // =0x10000
	bl sub_801BED6
	ldr R0, dword_800BF74 // =0x10000
	bl sub_801DACC
	// idx
	ldrh R0, [R5,#0x30]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	mov R1, #0
	mov R2, #0
	ldrb R3, [R0,#9]
	lsr r3, r3, #2
	bcc loc_800BBEC
	ldrh R1, [R5,#0x2C]
	ldrh R2, [R5,#0x32]
loc_800BBEC:
	ldrh R0, [R5,#0x30]
	push {R0-R2}
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	pop {R0-R2}
	bne loc_800BC12
	ldrb R3, [R5,#7]
	cmp R3, #1
	bne loc_800BC08
	ldr R0, off_800BF78 // =0x171
	mov R1, #0
	mov R2, #0
loc_800BC08:
	add r3, r0, #0
	mov r0, #0x4c
	bl loc_801E792
	b loc_800BC1E
loc_800BC12:
	ldr R3, off_800BF78 // =0x171
	mov R1, #0
	mov R2, #0
	mov r0, #0x50
	bl loc_801E792
loc_800BC1E:
	mov r0, #0x74
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#0xB]
	b locret_800BC86
loc_800BC2C:
	bl sub_801E754
	tst R0, R0
	bne locret_800BC86
	ldrb R0, [R5,#0x16]
	bl sub_800B8C2
	tst R0, R0
	bne loc_800BC5A
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #0
	beq loc_800BC5A
	cmp R0, #5
	beq loc_800BC5A
	ldrb R0, [R5,#0x16]
	mov R1, #3
	bl sub_800B884
	b locret_800BC86
loc_800BC5A:
	ldrb R0, [R5,#0x16]
	mov R1, #4
	bl sub_800B884
	ldrb R0, [R5,#0x16]
	bl sub_800BF5C
	ldr R1, [R0,#0xC]
	ldrh R2, [R1,#0x24]
	tst R2, R2
	bne loc_800BC7C
	ldrb R0, [R5,#9]
	add R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	b locret_800BC86
loc_800BC7C:
	ldrb R0, [R5,#9]
	add R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
locret_800BC86:
	pop {pc}
.endfunc // sub_800BBA8

.func
.thumb_func
sub_800BC88:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800BCB0
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #5
	beq loc_800BCA4
	cmp R0, #0
	beq loc_800BCA4
	b loc_800BCB8
loc_800BCA4:
	mov r0, #0x38
	mov R1, #4
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#0xB]
loc_800BCB0:
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_800BCBC
loc_800BCB8:
	mov R0, #8
	str R0, [R5,#8]
locret_800BCBC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_800BC88

.func
.thumb_func
sub_800BCC0:
	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800BCE8
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #5
	beq loc_800BCDC
	cmp R0, #0
	beq loc_800BCDC
	b loc_800BCF0
loc_800BCDC:
	mov r0, #0x74
	mov R1, #0x80
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#0xB]
loc_800BCE8:
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_800BCF4
loc_800BCF0:
	mov R0, #8
	str R0, [R5,#8]
locret_800BCF4:
	pop {pc}
.endfunc // sub_800BCC0

	push {lr}
	ldrb R0, [R5,#0xB]
	tst R0, R0
	bne loc_800BD26
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_800B892
	cmp R0, #5
	beq loc_800BD1A
	cmp R0, #0
	beq loc_800BD1A
	mov r0, #0x3c
	ldr R1, off_800BF7C // =0x100
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_800BD22
loc_800BD1A:
	mov R0, #0x84
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_800BD22:
	mov R0, #4
	strb R0, [R5,#0xB]
loc_800BD26:
	bl engine_isScreeneffectAnimating // () -> zf
	tst R0, R0
	bne locret_800BD32
	mov R0, #8
	str R0, [R5,#8]
locret_800BD32:
	pop {pc}
/*For debugging purposes, connect comment at any range!*/
