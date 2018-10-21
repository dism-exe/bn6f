.include "asm/asm03_0.inc"

.func
.thumb_func
sub_8026450:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str R6, [SP]
	str R7, [SP,#4]
	str R0, [SP,#8]
	str R1, [SP,#0xC]
	add r4, r2, #0
	bl object_getFlipDirection_800E2CA // () -> int
	add r6, r0, #0
loc_8026464:
	mov R0, #0
	ldrsb R0, [R4,R0]
	cmp R0, #0x7F
	beq loc_80264A2
	mul R0, R6
	ldr R2, [SP,#8]
	add r0, r0, r2
	bmi loc_802649E
	cmp R0, #6
	bgt loc_802649E
	add r1, r0, #0
	mul R1, R6
	ldr R2, [SP]
	mul R2, R6
	cmp R1, R2
	bgt loc_802649E
	mov R1, #1
	ldrsb R1, [R4,R1]
	ldr R2, [SP,#0xC]
	add r1, r1, r2
	bmi loc_802649E
	cmp R1, #3
	bgt loc_802649E
	push {r0,r1}
	bl sub_800E680
	cmp R0, #0
	pop {r0,r1}
	bne loc_80264A4
loc_802649E:
	add R4, #2
	b loc_8026464
loc_80264A2:
	mov R0, #0
loc_80264A4:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
.endfunc // sub_8026450

.func
.thumb_func
sub_80264A8:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str R6, [SP]
	str R7, [SP,#4]
	str R0, [SP,#8]
	str R1, [SP,#0xC]
	add r4, r2, #0
	bl object_getFlipDirection_800E2CA // () -> int
	add r6, r0, #0
loc_80264BC:
	mov R0, #0
	ldrsb R0, [R4,R0]
	cmp R0, #0x7F
	beq loc_802650A
	mul R0, R6
	ldr R2, [SP,#8]
	add r0, r0, r2
	bmi loc_8026506
	cmp R0, #6
	bgt loc_8026506
	add r1, r0, #0
	mul R1, R6
	ldr R2, [SP]
	mul R2, R6
	cmp R1, R2
	bgt loc_8026506
	mov R1, #1
	ldrsb R1, [R4,R1]
	ldr R2, [SP,#0xC]
	add r1, r1, r2
	bmi loc_8026506
	cmp R1, #3
	bgt loc_8026506
	push {r0,r1}
	bl sub_800E680
	cmp R0, #0
	pop {r0,r1}
	beq loc_8026506
	ldr R2, [SP]
	ldr R3, [SP,#4]
	push {r0,r1}
	bl sub_8026510
	cmp R0, #0
	pop {r0,r1}
	bne loc_802650C
loc_8026506:
	add R4, #2
	b loc_80264BC
loc_802650A:
	mov R0, #0
loc_802650C:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
.endfunc // sub_80264A8

.func
.thumb_func
sub_8026510:
	push {r4,r6,r7,lr}
	add r6, r2, #0
	add r7, r3, #0
	push {r0,r1}
	bl object_getFlipDirection_800E2CA // () -> int
	add r4, r0, #0
	pop {r0,r1}
loc_8026520:
	push {r0,r1}
	ldr R3, off_8026540 // =dword_8026544 
	bl sub_81096FA
	bl object_checkPanelParameters
.endfunc // sub_8026510

	cmp R0, #0
	pop {r0,r1}
	beq loc_802653C
	add r0, r0, r4
	cmp R0, R6
	bne loc_8026520
	mov R0, #1
	b locret_802653E
loc_802653C:
	mov R0, #0
locret_802653E:
	pop {r4,r6,r7,pc}
off_8026540: .word dword_8026544
dword_8026544: .word 0x0
	.word 0x5800000, 0x0
	.byte  0
	.byte  0
	.byte 0x80
	.byte 0xA
.func
.thumb_func
ho_8026554:
	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	cmp R0, #1
	blt loc_802656A
	cmp R0, #6
	bgt loc_802656A
	cmp R1, #1
	blt loc_802656A
	cmp R1, #3
	ble loc_802656C
loc_802656A:
	mov R2, #0
loc_802656C:
	lsl r2, r2, #2
	ldr R3, off_8026580 // =jt_8026584 
	ldr R2, [R3,R2]
	mov LR, PC
	bx r2
	pop {r6,r7,pc}
	.word 0
	.byte 0, 0, 0, 0
off_8026580: .word jt_8026584
jt_8026584: .word sub_802661C+1
	.word sub_8026622+1
	.word sub_8026650+1
	.word sub_802665A+1
	.word sub_8026668+1
	.word sub_8026672+1
	.word sub_802667C+1
	.word sub_802668A+1
	.word sub_8026694+1
	.word sub_802669E+1
	.word sub_80266AC+1
	.word sub_80266BA+1
	.word sub_80266DE+1
	.word sub_80266E8+1
	.word sub_80266F2+1
	.word sub_8026704+1
	.word sub_802670E+1
	.word sub_802671C+1
	.word sub_8026726+1
.endfunc // ho_8026554

.func
.thumb_func
sub_80265D0:
	push {r4,lr}
	push {r0}
	add r0, r6, #0
	ldr R4, off_80267E8 // =byte_8026735 
loc_80265D8:
	ldr R2, [SP]
	add r1, r7, #0
	bl sub_8026450
	cmp R0, #0
	bne loc_80265FA
	bl object_getFlipDirection_800E2CA // () -> int
	mov R1, #0
	ldrsb R1, [R4,R1]
	cmp R1, #0x7F
	beq loc_80265F8
	add R4, #1
	mul R0, R1
	add r0, r0, r6
	b loc_80265D8
loc_80265F8:
	mov R0, #0
loc_80265FA:
	add sp, sp, #4
	pop {r4,pc}
.endfunc // sub_80265D0

.func
.thumb_func
sub_80265FE:
	push {r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	mov R1, #2
	beq locret_802661A
	mov R1, #2
	push {r0,r1}
	bl sub_800E680
	cmp R0, #0
	pop {r0,r1}
	bne locret_802661A
	add r0, r6, #0
	add r1, r7, #0
locret_802661A:
	pop {r6,r7,pc}
.endfunc // sub_80265FE

.func
.thumb_func
sub_802661C:
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov PC, LR
.endfunc // sub_802661C

.func
.thumb_func
sub_8026622:
	push {r4,lr}
	add r1, r7, #0
	ldr R2, off_80267EC // =byte_802673C 
	ldrb R3, [R5,#0x13]
	cmp R1, R3
	bne loc_8026630
	ldr R2, off_80267F0 // =byte_802673A 
loc_8026630:
	ldr R4, off_80267F4 // =byte_8026730 
loc_8026632:
	ldrb R0, [R5,#0x12]
	bl sub_8026450
	cmp R0, #0
	bne locret_802664E
	mov R1, #0
	ldrsb R1, [R4,R1]
	cmp R1, #0x7F
	beq locret_802664E
	add R4, #1
	add r1, r1, r7
	add r0, r6, #0
	ldr R2, off_80267F8 // =byte_802673C 
	b loc_8026632
locret_802664E:
	pop {r4,pc}
.endfunc // sub_8026622

.func
.thumb_func
sub_8026650:
	push {lr}
	ldr R0, off_80267FC // =byte_8026753 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_8026650

.func
.thumb_func
sub_802665A:
	push {lr}
	ldr R0, off_8026800 // =byte_802675A 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
.endfunc // sub_802665A

.func
.thumb_func
sub_8026668:
	push {lr}
	ldr R0, off_8026804 // =byte_802675A+7 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_8026668

.func
.thumb_func
sub_8026672:
	push {lr}
	ldr R0, off_8026808 // =byte_802676E 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_8026672

.func
.thumb_func
sub_802667C:
	push {lr}
	ldr R0, off_802680C // =byte_8026781 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
.endfunc // sub_802667C

.func
.thumb_func
sub_802668A:
	push {lr}
	ldr R0, off_8026810 // =byte_802678E 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_802668A

.func
.thumb_func
sub_8026694:
	push {lr}
	ldr R0, off_8026814 // =byte_8026791 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_8026694

.func
.thumb_func
sub_802669E:
	push {lr}
	ldr R0, off_8026818 // =byte_8026794 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
.endfunc // sub_802669E

.func
.thumb_func
sub_80266AC:
	push {lr}
	add r0, r6, #0
	add r1, r7, #0
	ldr R2, off_802681C // =byte_802679B 
	bl sub_80264A8
	pop {pc}
.endfunc // sub_80266AC

.func
.thumb_func
sub_80266BA:
	push {lr}
	mov R2, #0
	ldrb R0, [R5,#0x16]
	ldrb R1, [R5,#0x17]
	eor R0, R1
	mov R1, #1
	eor R0, R1
	mov R1, #5
	mul R0, R1
	add R0, #1
	cmp R0, R6
	bne loc_80266D4
	mov R2, #2
loc_80266D4:
	ldr R0, off_8026820 // =byte_80267A6 
	add r0, r0, r2
	bl sub_80265D0
	pop {pc}
.endfunc // sub_80266BA

.func
.thumb_func
sub_80266DE:
	push {lr}
	ldr R0, off_8026824 // =byte_80267AB 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_80266DE

.func
.thumb_func
sub_80266E8:
	push {lr}
	ldr R0, off_8026828 // =byte_80267AE 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_80266E8

.func
.thumb_func
sub_80266F2:
	push {lr}
	add r0, r6, #0
	add r1, r7, #0
	ldr R2, off_802682C // =byte_802679B 
	bl sub_8026450
	bl sub_80265FE
	pop {pc}
.endfunc // sub_80266F2

.func
.thumb_func
sub_8026704:
	push {lr}
	ldr R0, off_8026830 // =byte_80267B9 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_8026704

.func
.thumb_func
sub_802670E:
	push {lr}
	ldr R0, off_8026834 // =byte_8026791 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
.endfunc // sub_802670E

.func
.thumb_func
sub_802671C:
	push {lr}
	ldr R0, off_8026838 // =byte_80267CC 
	bl sub_80265D0
	pop {pc}
.endfunc // sub_802671C

.func
.thumb_func
sub_8026726:
	push {lr}
	ldr R0, off_802683C // =byte_80267D5 
	bl sub_80265D0
	pop {pc}
byte_8026730: .byte 0xFF
	.byte 0x1, 0xFE, 0x2
	.byte 0x7F
byte_8026735: .byte 0xFF
	.hword 0xFDFE
	.byte 0xFC
	.byte 0x7F 
byte_802673A: .byte 0x1, 0x0
byte_802673C: .byte 0x0, 0x0, 0x1, 0x0, 0xFF, 0x0, 0x2, 0x0, 0xFE, 0x0, 0x3, 0x0, 0xFD, 0x0
	.byte 0x4, 0x0, 0xFC, 0x0, 0x5, 0x0, 0xFB, 0x0, 0x7F
byte_8026753: .byte 0xFF, 0x0, 0xFF, 0xFF, 0xFF, 0x1, 0x7F
byte_802675A: .byte 0xFF, 0xFF, 0xFF, 0x1, 0xFF, 0x0, 0x7F, 0xFE, 0x0, 0xFF
	.byte 0x0, 0xFE, 0xFF, 0xFF, 0xFF, 0xFE, 0x1, 0xFF, 0x1, 0x7F
byte_802676E: .byte 0xFD, 0x0, 0xFE, 0x0, 0xFF, 0x0, 0xFD, 0xFF, 0xFE, 0xFF
	.byte 0xFF, 0xFF, 0xFD, 0x1, 0xFE, 0x1, 0xFF, 0x1, 0x7F
byte_8026781: .byte 0xFF, 0x0, 0xFF, 0xFF, 0xFF, 0x1, 0xFE, 0x0, 0xFE, 0xFF
	.byte 0xFE, 0x1, 0x7F
byte_802678E: .byte 0xFE, 0x0, 0x7F
byte_8026791: .byte 0xFD, 0x0, 0x7F
byte_8026794: .byte 0xFE, 0x0, 0xFE, 0xFF, 0xFE, 0x1, 0x7F
byte_802679B: .byte 0xFB, 0x0, 0xFC, 0x0, 0xFD, 0x0, 0xFE, 0x0, 0xFF, 0x0, 0x7F
byte_80267A6: .byte 0x0, 0x0, 0xFE, 0x0, 0x7F
byte_80267AB: .byte 0xFF, 0x0, 0x7F
byte_80267AE: .byte 0xFF, 0x0, 0xFE, 0xFF, 0xFE, 0x1, 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_80267B9: .byte 0xFD, 0x0, 0xFC, 0x0, 0xFD, 0xFF, 0xFD, 0x1, 0xFC, 0xFF
	.byte 0xFC, 0x1, 0xFE, 0x0, 0xFE, 0xFF, 0xFE, 0x1, 0x7F
byte_80267CC: .byte 0xFE, 0x0, 0xFE, 0xFF, 0xFE, 0x1, 0xFF, 0x0, 0x7F
byte_80267D5: .byte 0xFF, 0x0, 0xFF, 0xFF, 0xFF, 0x1, 0x0, 0xFF, 0x0, 0x1, 0x1, 0xFF
	.byte 0x1, 0x1, 0x1, 0x0, 0x7F, 0x0, 0x0
off_80267E8: .word byte_8026735
off_80267EC: .word byte_802673C
off_80267F0: .word byte_802673A
off_80267F4: .word byte_8026730
off_80267F8: .word byte_802673C
off_80267FC: .word byte_8026753
off_8026800: .word byte_802675A
off_8026804: .word byte_802675A+7
off_8026808: .word byte_802676E
off_802680C: .word byte_8026781
off_8026810: .word byte_802678E
off_8026814: .word byte_8026791
off_8026818: .word byte_8026794
off_802681C: .word byte_802679B
off_8026820: .word byte_80267A6
off_8026824: .word byte_80267AB
off_8026828: .word byte_80267AE
off_802682C: .word byte_802679B
off_8026830: .word byte_80267B9
off_8026834: .word byte_8026791
off_8026838: .word byte_80267CC
off_802683C: .word byte_80267D5
.endfunc // sub_8026726

.func
.thumb_func
sub_8026840:
	push {R4-R7,lr}
	mov R2, R10
	ldr R2, [R2,#0x18]
	ldrb R0, [R2,#7]
	cmp R0, #0
	bne loc_8026858
	// memBlock
	ldr R0, off_80269CC // =dword_20349A0 
	// size
	mov R1, #0x14
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_802A210
loc_8026858:
	bl sub_801DF92
	ldr R0, dword_8026994 // =0x30172 
	bl sub_801DACC
	ldr R0, off_8026998 // =0x400 
	bl sub_801DACC
	ldr R0, dword_802699C // =0x20130 
	bl sub_801BED6
	mov R4, #0
	ldr R5, off_8026BF0 // =dword_20364C0 
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x29 
	bl sub_80136CC
	cmp R0, #0
	bne loc_8026898
	bl sub_8029F70
	tst R0, R0
	beq loc_8026898
	bl sub_802A564
	cmp R0, #5
	beq loc_8026898
	bl sub_8029EC8
	add r4, r0, #0
loc_8026898:
	ldr R0, off_80269A0 // =byte_86E625C 
	tst R4, R4
	beq loc_80268A0
	ldr R0, off_80269A4 // =byte_86E64B4 
loc_80268A0:
	ldr R1, off_80269C8 // =unk_2035000 
	ldr R2, off_80269A8 // =0x258 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	mov R2, #0x9B
	ldr R6, off_80269AC // =byte_8027B2C 
loc_80268AC:
	ldr R0, dword_80269B0 // =0xFFF 
	and R0, R2
	ldrb R2, [R6,#4]
	lsl r2, r2, #0xc
	orr R2, R0
	ldrb R0, [R6]
	ldrb R1, [R6,#1]
	ldrb R3, [R6,#2]
	ldrb R4, [R6,#3]
	ldrb R5, [R6,#5]
	bl sub_8027CCC
	add R6, #6
	ldrb R0, [R6]
	cmp R0, #0xFF
	bne loc_80268AC
	// memBlock
	ldr R0, off_8026BF0 // =dword_20364C0 
	// size
	mov r1, #0x70 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R5, off_8026BF0 // =dword_20364C0 
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x29 
	bl sub_80136CC
	strb R0, [R5,#0x10] // (byte_20364D0 - 0x20364C0)
	strb R0, [R5,#0x11] // (byte_20364D1 - 0x20364C0)
	strb R0, [R5,#0x15] // (byte_20364D5 - 0x20364C0)
	mov R0, #0
	strh R0, [R5,#0x3A] // (word_20364FA - 0x20364C0)
	strh R0, [R5,#0x38] // (word_20364F8 - 0x20364C0)
	ldr R5, off_8026BF0 // =dword_20364C0 
	mov R1, #1
	strb R1, [R5,#0x4] // (dword_20364C4 - 0x20364C0)
	mov R0, #0xFF
	strb R0, [R5,#0xC] // (byte_20364CC - 0x20364C0)
	bl sub_8029F70
	tst R0, R0
	beq loc_802690E
	bl sub_802A564
	cmp R0, #5
	beq loc_802690E
	bl sub_8029EF8
	strb R0, [R5,#0x18] // (dword_20364D8 - 0x20364C0)
loc_802690E:
	bl sub_802811C
	mov R0, #0x1A
	strb R0, [R5,#0x9] // (byte_20364C9 - 0x20364C0)
	mov R0, #0
	sub R0, #1
	strh R0, [R5,#0x20] // (word_20364E0 - 0x20364C0)
	mov R2, R10
	ldr R2, [R2,#0x18]
	ldrb R0, [R2,#7]
	add r1, r0, #1
	strb R1, [R2,#7]
	cmp R0, #0
	bne loc_8026936
	bl sub_802D234
	ldr R1, off_80269B8 // =dword_80269BC 
	ldrb R0, [R1,R0]
	strb R0, [R5,#0xC] // (byte_20364CC - 0x20364C0)
	b loc_802694C
loc_8026936:
	bl sub_802D234
	mov R1, #5
	cmp R0, R1
	bne loc_802694C
	bl sub_802A564
	tst R3, R3
	bne loc_802694C
	mov R0, #5
	strb R0, [R5,#0xC] // (byte_20364CC - 0x20364C0)
loc_802694C:
	bl sub_802A49C
	bl sub_802A40C
	bl sub_802945A
	bl sub_802A646
	bl sub_8027D58
	strb R0, [R5,#0x5] // (dword_20364C4+1 - 0x20364C0)
	bl sub_8027E2C
	mov R0, #1
	bl loc_8028250
	mov R1, #4
loc_802696E:
	ldr R0, dword_80269B4 // =0x1FF 
	push {r1}
	bl sub_80281D4
	ldr R0, [SP]
	mov R1, #0
	mov R2, #1
	bl sub_8029CD4
	pop {r1}
	sub R1, #1
	bpl loc_802696E
	bl sub_8028476
	bl sub_8015940
	bl sub_802A0EC
	pop {R4-R7,pc}
dword_8026994: .word 0x30172
off_8026998: .word 0x400
dword_802699C: .word 0x20130
off_80269A0: .word byte_86E625C
off_80269A4: .word byte_86E64B4
off_80269A8: .word 0x258
off_80269AC: .word byte_8027B2C
dword_80269B0: .word 0xFFF
dword_80269B4: .word 0x1FF
off_80269B8: .word dword_80269BC
dword_80269BC: .word 0x100FFFF, 0xFFFF0302, 0xFFFFFF06
off_80269C8: .word unk_2035000
off_80269CC: .word dword_20349A0
.endfunc // sub_8026840

.func
.thumb_func
sub_80269D0:
	push {lr}
	mov R0, #0
	bl sub_800A9E2
	mov R1, #5
	and R0, R1
	beq locret_80269E0
	mov R0, #1
locret_80269E0:
	pop {pc}
.endfunc // sub_80269D0

.func
.thumb_func
sub_80269E2:
	push {r5,lr}
	mov R0, #0
	ldr R5, off_8026BF0 // =dword_20364C0 
	ldrb R1, [R5]
	cmp R1, #0
	beq loc_8026A24
	cmp R1, #8
	beq loc_8026A24
	ldrb R1, [R5,#0x1] // (dword_20364C0+1 - 0x20364C0)
	cmp R1, #0
	beq loc_8026A24
	cmp R1, #8
	beq loc_8026A24
	cmp R1, #4
	beq loc_8026A24
	cmp R1, #0xC
	beq loc_8026A24
	cmp r1, #0x2c 
	beq loc_8026A24
	cmp r1, #0x30 
	beq loc_8026A24
	cmp r1, #0x34 
	beq loc_8026A24
	cmp R1, #0x10
	beq loc_8026A24
	cmp R1, #0x14
	beq loc_8026A24
	cmp R1, #0x18
	beq loc_8026A24
	cmp R1, #0x1C
	beq loc_8026A24
	cmp r1, #0x20 
	bne locret_8026A26
loc_8026A24:
	mov R0, #1
locret_8026A26:
	pop {r5,pc}
.endfunc // sub_80269E2

loc_8026A28:
	push {r5,lr}
	ldr R5, off_8026BF0 // =dword_20364C0 
	ldr R1, off_8026A38 // =off_8026A3C 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r5,pc}
off_8026A38: .word off_8026A3C
off_8026A3C: .word sub_8026A50+1
	.word loc_8026A88+1
	.word sub_8026A6C+1
	.word 0x100
	.word byte_200F360
.func
.thumb_func
sub_8026A50:
	push {lr}
	bl sub_802FE48
	strb R0, [R5,#0xE]
	add r3, r0, #0
	mov r1, #0x40 
	mov r2, #0x40 
	mov R0, #0
	bl sub_802FE7A
	mov R0, #4
	str R0, [R5]
	mov R0, #0
	pop {pc}
.endfunc // sub_8026A50

.func
.thumb_func
sub_8026A6C:
	push {lr}
	bl sub_8027D78
	ldrb R0, [R5,#0xE]
	bl sub_802FE6A
	bl sub_80062EC
	bl sub_802A3CC
	bl sub_802A0F8
	ldrb R0, [R5,#4]
	pop {pc}
.endfunc // sub_8026A6C

loc_8026A88:
	push {r5,lr}
	ldr R5, off_8026BF0 // =dword_20364C0 
	ldr R1, off_8026AA0 // =off_8026AA4 
	ldrb R0, [R5,#0x1] // (dword_20364C0+1 - 0x20364C0)
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_802A2B0
	mov R0, #0
	pop {r5,pc}
	.byte 0, 0
off_8026AA0: .word off_8026AA4
off_8026AA4: .word sub_8026B04+1
	.word sub_8026CCC+1
	.word sub_8026BF4+1
	.word sub_8026D06+1
	.word sub_8026DB0+1
	.word sub_8026DC4+1
	.word sub_8026E4C+1
	.word loc_8026E98+1
	.word sub_8026FC0+1
	.word sub_8027044+1
	.word sub_80271F8+1
	.word loc_802728C+1
	.word loc_80273A4+1
	.word sub_80273EC+1
	.word loc_8027406+1
	.word sub_802753E+1
	.word sub_8027548+1
	.word sub_80275EC+1
	.word sub_802770C+1
	.word sub_8027834+1
	.word sub_802790C+1
	.word sub_802794A+1
	.word sub_8026E78+1
	.word sub_8027A58+1
.func
.thumb_func
sub_8026B04:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_8026B38
	mov r0, #0x79 
	bl sound_play // () -> void
	mov R1, R10
	ldr R1, [R1,#8]
	mov r0, #0x78 
	strh R0, [R1,#0x18]
	mov R0, #0
	bl sub_801E71C
	mov R0, #0x80
	bl sub_801DACC
	mov R0, #0xF
	mov R1, #0
	bl sub_801E0A0
	mov R0, #0xF
	str R0, [R5,#0x44]
	mov r0, #0x78 
	str R0, [R5,#0x40]
	strb R0, [R5,#2]
loc_8026B38:
	ldr R0, [R5,#0x40]
	sub R0, #0xC
	push {r0,r4,r6,r7}
	mov R6, #4
	and R6, R0
	lsr r6, r6, #2
	add R6, #1
loc_8026B46:
	ldr R0, [R5,#0x44]
	sub R0, #1
	str R0, [R5,#0x44]
	ldr R4, off_8026DAC // =unk_2035000 
	lsl r0, r0, #1
	add r4, r4, r0
	lsr r0, r0, #1
	mov R1, #0
	mov R2, #3
	mov R7, #0x14
loc_8026B5A:
	push {r0,r1}
	ldrh R3, [R4]
	mov R2, #3
	bl sub_800187C
	pop {r0,r1}
	add R1, #1
	add R4, #0x1E
	sub R7, #1
	bne loc_8026B5A
	sub R6, #1
	bne loc_8026B46
	pop {r0,r4,r6,r7}
	push {r0}
	bl sub_802D234
	cmp R0, #1
	pop {r0}
	beq loc_8026B8C
	mov R2, R10
	ldr R2, [R2,#0xC]
	ldr R1, [R2,#0x34]
	ldr R3, dword_8026CC8 // =0x18000 
	sub r1, r1, r3
	str R1, [R2,#0x34]
loc_8026B8C:
	str R0, [R5,#0x40]
	mov R1, R10
	ldr R1, [R1,#8]
	strh R0, [R1,#0x18]
	push {r0}
	add r1, r0, #0
	mov r0, #0x78 
	sub r0, r0, r1
	bl sub_801E71C
	pop {r0}
	cmp R0, #0
	bne loc_8026BE8
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	bne loc_8026BB6
	bl sub_801E574
	b loc_8026BC2
loc_8026BB6:
	mov R0, #0
	bl sub_8013FD0
	mov R0, #1
	bl sub_8013FD0
loc_8026BC2:
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq loc_8026BE0
	cmp R0, #5
	bne loc_8026BD6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #5
	bge loc_8026BE0
loc_8026BD6:
	mov r0, #0x2c 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b loc_8026BE8
loc_8026BE0:
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_8026BE8:
	bl sub_8029C08
	pop {pc}
	.byte 0, 0
off_8026BF0: .word dword_20364C0
.endfunc // sub_8026B04

.func
.thumb_func
sub_8026BF4:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_8026C14
	str R0, [R5,#0x44]
	str R0, [R5,#0x40]
	mov R0, #1
	strb R0, [R5,#2]
	ldr R0, off_8026CC4 // =0x2000 
	bl sub_801DACC
	bl sub_8029D80
	mov R0, #4
	bl sub_800A9D6
loc_8026C14:
	ldr R0, [R5,#0x40]
	add R0, #0xC
	push {r0,R4-R7}
	add r7, r5, #0
	mov R6, #4
	and R6, R0
	lsr r6, r6, #2
	mov R0, #1
	eor R6, R0
	add R6, #1
loc_8026C28:
	ldr R0, [R7,#0x44]
	add R0, #1
	str R0, [R7,#0x44]
	// j
	sub R0, #1
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8026C84 // =dword_8026C88 
	mov R4, #1
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	sub R6, #1
	bne loc_8026C28
	pop {r0,R4-R7}
	push {r0}
	bl sub_802D234
	cmp R0, #1
	pop {r0}
	beq loc_8026C5C
	mov R2, R10
	ldr R2, [R2,#0xC]
	ldr R1, [R2,#0x34]
	ldr R3, dword_8026CC8 // =0x18000 
	add r1, r1, r3
	str R1, [R2,#0x34]
loc_8026C5C:
	str R0, [R5,#0x40]
	mov R1, R10
	ldr R1, [R1,#8]
	strh R0, [R1,#0x18]
	push {r0}
	add r1, r0, #0
	mov r0, #0x78 
	sub r0, r0, r1
	bl sub_801E71C
	pop {r0}
	cmp r0, #0x78 
	bne loc_8026C7E
	ldrb R0, [R5,#0xB]
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
loc_8026C7E:
	bl sub_8029C08
	pop {pc}
off_8026C84: .word dword_8026C88
dword_8026C88: .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8026CC4: .word 0x2000
dword_8026CC8: .word 0x18000
.endfunc // sub_8026BF4

.func
.thumb_func
sub_8026CCC:
	push {r7,lr}
	bl sub_802A220
	cmp R0, #0xFF
	beq loc_8026CE6
	strh R0, [R5,#0x38]
	mov r0, #0x40 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	mov R0, #0
	str R0, [R5,#0x40]
	b locret_8026D04
loc_8026CE6:
	mov R7, R10
	ldr R7, [R7,#4]
	bl sub_8028B74
	bl sub_8028820
	bl sub_8029C08
	bl sub_802899C
	bl sub_8029D34
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
locret_8026D04:
	pop {r7,pc}
.endfunc // sub_8026CCC

.func
.thumb_func
sub_8026D06:
	push {r4,r5,lr}
	mov R3, R10
	ldr R3, [R3,#8]
	ldrb R0, [R5,#2]
	cmp R0, #2
	beq loc_8026D9A
	cmp R0, #0
	bne loc_8026D46
	mov R0, #1
	strb R0, [R5,#2]
	mov r0, #0x78 
	strh R0, [R3,#0x18]
	mov R0, #0
	bl sub_801E71C
	ldr R0, off_8026DA8 // =0x2000 
	bl sub_801DACC
	bl sub_8029D80
	mov R0, #0
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #0xF
	mov R5, #0x14
	bl sub_80018D0
	mov R0, #0x80
	bl sound_play // () -> void
	b locret_8026DA6
loc_8026D46:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	cmp R0, #0
	bne loc_8026D5C
	push {r3}
	bl sub_802A220
	pop {r3}
	cmp R0, #0xFF
	beq locret_8026DA6
loc_8026D5C:
	mov R0, #2
	strb R0, [R5,#2]
	mov R0, #0
	strh R0, [R3,#0x18]
	mov r0, #0x78 
	bl sub_801E71C
	push {r4,r5}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8026DAC // =unk_2035000 
	mov R4, #0xF
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5}
	bl sub_8029C08
	mov R0, #0x80
	bl sound_play // () -> void
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	bne locret_8026DA6
	ldr R0, off_8026DA8 // =0x2000 
	bl sub_801DA48
	b locret_8026DA6
loc_8026D9A:
	bl sub_8029C08
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8026DA6:
	pop {r4,r5,pc}
off_8026DA8: .word 0x2000
off_8026DAC: .word unk_2035000
.endfunc // sub_8026D06

.func
.thumb_func
sub_8026DB0:
	push {lr}
	bl loc_802B734
	cmp R0, #0
	beq locret_8026DC2
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8026DC2:
	pop {pc}
.endfunc // sub_8026DB0

.func
.thumb_func
sub_8026DC4:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_8026DEC
	bl sub_8027D78
	mov R0, #1
	strb R0, [R5,#2]
	bl sub_802A4FC
	bl sub_800B3A2
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8026DEC
	mov R0, #0
	bl sub_801E474
loc_8026DEC:
	ldr R0, dword_8026E44 // =0x56789123 
	bl sub_800B46C
	tst R0, R0
	beq locret_8026E40
	bl sub_800B460
	bl sub_800B3D8
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_8026E14
	ldr R0, off_8026E48 // =0x1000 
	bl sub_801BED6
	ldr R0, off_8026E48 // =0x1000 
	bl sub_801DACC
loc_8026E14:
	mov R0, #2
	bl sub_801DA48
	mov R0, #2
	bl sub_801BECC
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq loc_8026E3C
	cmp R0, #3
	beq loc_8026E3C
	cmp R0, #4
	beq loc_8026E3C
	cmp R0, #5
	beq loc_8026E3C
	mov r0, #0x30 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8026E40
loc_8026E3C:
	mov R0, #8
	strb R0, [R5]
locret_8026E40:
	pop {pc}
	.balign 4, 0x00
dword_8026E44: .word 0x56789123
off_8026E48: .word 0x1000
.endfunc // sub_8026DC4

.func
.thumb_func
sub_8026E4C:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	beq loc_8026E64
	bl sub_802A220
	cmp R0, #0xFF
	beq loc_8026E72
	bl chatbox_8040818
loc_8026E64:
	mov R0, #0x9E
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_8026E72:
	bl sub_8029C08
	pop {pc}
.endfunc // sub_8026E4C

.func
.thumb_func
sub_8026E78:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne loc_8026E92
	mov R0, #0x9E
	bl sound_play // () -> void
	mov r0, #0x54 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_8026E92:
	bl sub_8029C08
	pop {pc}
.endfunc // sub_8026E78

loc_8026E98:
	push {r4,lr}
	mov R4, #0
	bl get_802D246 // () -> int
	ldr R1, dword_8027040 // =0x200000 
	tst R0, R1
	beq loc_8026EA8
	mov R4, #4
loc_8026EA8:
	ldr R1, off_8026EB8 // =off_8026EBC 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	pop {r4,pc}
off_8026EB8: .word off_8026EBC
off_8026EBC: .word sub_8026EC8+1
	.word sub_8026F1A+1
	.word sub_8026FAA+1
.func
.thumb_func
sub_8026EC8:
	push {lr}
	bl get_802D246 // () -> int
	mov r1, #0x20 
	tst R0, R1
	bne loc_8026F04
	mov R0, #8
	strh R0, [R5,#2]
	bl sub_802D234
	cmp R0, #5
	bne loc_8026EEA
	ldr R0, off_802702C // =off_8027BD0 
	mov R1, #0xC // (off_8027BDC - 0x8027BD0)
	ldr R0, [R0,R1]
	mov r1, #0x23 
	b loc_8026F0E
loc_8026EEA:
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq loc_8026EFE
	ldr R0, off_802702C // =off_8027BD0 
	ldrb R1, [R5,#0xC]
	lsl r2, r1, #2
	ldr R0, [R0,R2]
	ldr R2, off_8027030 // =dword_8027034 
	ldrb R1, [R2,R1]
	b loc_8026F0E
loc_8026EFE:
	mov R1, #3
	add r1, r1, r4
	b loc_8026F0C
loc_8026F04:
	mov R0, #4
	strh R0, [R5,#2]
	mov R1, #0
	add r1, r1, r4
loc_8026F0C:
	ldr R0, off_8027008 // =notAdded_scripts_86EF78C 
loc_8026F0E:
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x7b 
	bl sound_play // () -> void
	pop {pc}
.endfunc // sub_8026EC8

.func
.thumb_func
sub_8026F1A:
	push {r4,lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	beq loc_8026F34
	bl sub_802A220
	cmp R0, #0xFF
	beq locret_8026FA8
	bl chatbox_8040818
	b loc_8026FA0
loc_8026F34:
	bl chatbox_8045F4C
	cmp R0, #1
	beq loc_8026FA0
	mov R0, #0xFF
	ldr R1, off_802700C // =byte_20366C0 
	strb R0, [R1]
	bl sub_802D258
	add r4, r0, #0
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x3e 
	bl sub_80136E4
	add R0, #4
	mov R1, #5
	svc 6
	cmp R0, R4
	bgt loc_8026F8E
	mov R3, #8
	lsr r2, r0, #1
	add r0, r0, r2
	cmp R4, R0
	blt loc_8026F72
	sub R3, #4
	add r0, r0, r2
	cmp R4, R0
	blt loc_8026F72
	sub R3, #4
loc_8026F72:
	ldr R2, off_8027010 // =off_8027014 
	ldr R3, [R2,R3]
	ldr R1, off_802703C // =dword_20349A0 
	ldr R0, [R1,#0x8] // (dword_20349A8 - 0x20349A0)
	add r2, r0, #1
	str R2, [R1,#0x8] // (dword_20349A8 - 0x20349A0)
	ldrb R4, [R3,R0]
	bl rng_800154C // () -> void
	mov R1, #1
	mov R2, #0xF
	and R0, R2
	cmp R0, R4
	bge loc_8026F92
loc_8026F8E:
	mov R0, #2
	strb R0, [R5,#4]
loc_8026F92:
	mov r0, #0x20 
	strb R0, [R5,#0xB]
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8026FA8
loc_8026FA0:
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8026FA8:
	pop {r4,pc}
.endfunc // sub_8026F1A

.func
.thumb_func
sub_8026FAA:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne locret_8026FBE
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8026FBE:
	pop {pc}
.endfunc // sub_8026FAA

.func
.thumb_func
sub_8026FC0:
	push {r4,lr}
	mov R4, #0
	bl get_802D246 // () -> int
	ldr R1, dword_8027040 // =0x200000 
	tst R0, R1
	beq loc_8026FD0
	mov R4, #4
loc_8026FD0:
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_8026FF2
	mov R0, #1
	strb R0, [R5,#2]
	bl sub_802A0EC
	mov R1, #1
	ldrb R0, [R5,#4]
	cmp R0, #2
	beq loc_8026FE8
	mov R1, #2
loc_8026FE8:
	add r1, r1, r4
	ldr R0, off_8027008 // =notAdded_scripts_86EF78C 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b locret_8027004
loc_8026FF2:
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne locret_8027004
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8027004:
	pop {r4,pc}
	.balign 4, 0x00
off_8027008: .word notAdded_scripts_86EF78C
off_802700C: .word byte_20366C0
off_8027010: .word off_8027014
off_8027014: .word byte_8027020
	.word byte_8027023
	.word byte_8027026
byte_8027020: .byte 0x4, 0x8, 0xF
byte_8027023: .byte 0x8, 0xC, 0xF
byte_8027026: .byte 0xC, 0xE, 0xF, 0x0, 0x0, 0x0
off_802702C: .word off_8027BD0
off_8027030: .word dword_8027034
dword_8027034: .word 0x230C0E0D, 0x62323
off_802703C: .word dword_20349A0
dword_8027040: .word 0x200000
.endfunc // sub_8026FC0

.func
.thumb_func
sub_8027044:
	push {lr}
	ldr R1, off_802705C // =off_8027060 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
	.balign 4, 0x00
off_802705C: .word off_8027060
off_8027060: .word sub_802707C+1
	.word sub_80270D0+1
	.word sub_80270EA+1
	.word sub_8027118+1
	.word sub_8027134+1
	.word sub_8027150+1
	.word sub_80271C2+1
.endfunc // sub_8027044

.func
.thumb_func
sub_802707C:
	push {r4,lr}
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #0xB
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrb R0, [R4,#6]
	cmp R0, #0
	beq loc_8027094
	mov R0, #0xD
	b loc_8027096
loc_8027094:
	ldrb R0, [R4,#5]
loc_8027096:
	mov R1, #0x80
	mul R0, R1
	ldr R1, off_80270CC // =byte_8725894 
	add r0, r0, r1
	ldr R1, dword_80270C0 // =0x60172C0 
	mov R2, #0x80
	bl loc_8000AC8
.endfunc // sub_802707C

	ldrb R0, [R5,#8]
	mov R1, #0x10
	mul R0, R1
	add R0, #0x18
	str R0, [R5,#0x44]
	ldr R0, off_80270C4 // =byte_872CF94 
	ldr R1, off_80270C8 // =byte_30016F0 
	mov r2, #0x20 
	bl loc_8000AC8
	mov R0, #4
	strh R0, [R5,#2]
	pop {r4,pc}
dword_80270C0: .word 0x60172C0
off_80270C4: .word byte_872CF94
off_80270C8: .word byte_30016F0
off_80270CC: .word byte_8725894
.func
.thumb_func
sub_80270D0:
	push {lr}
	bl sub_80298D8
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #0x10
	blt locret_80270E8
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #8
	strh R0, [R5,#2]
locret_80270E8:
	pop {pc}
.endfunc // sub_80270D0

.func
.thumb_func
sub_80270EA:
	push {lr}
	ldr R0, [R5,#0x44]
	sub R0, #2
	str R0, [R5,#0x44]
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #8
	blt loc_8027112
	mov R0, #0
	str R0, [R5,#0x40]
	mov r0, #0x34 
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x91
	bl sound_play // () -> void
	mov R0, #0xC
	strh R0, [R5,#2]
loc_8027112:
	bl sub_80298D8
	pop {pc}
.endfunc // sub_80270EA

.func
.thumb_func
sub_8027118:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne loc_802712E
	mov R0, #0x10
	strh R0, [R5,#2]
	mov r0, #0x30 
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_802712E:
	bl sub_80298D8
	pop {pc}
.endfunc // sub_8027118

.func
.thumb_func
sub_8027134:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne loc_802714A
	mov R0, #4
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x14
	strh R0, [R5,#2]
loc_802714A:
	bl sub_80298D8
	pop {pc}
.endfunc // sub_8027134

.func
.thumb_func
sub_8027150:
	push {r4,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne loc_80271BC
	ldrb R3, [R5,#8]
	sub R3, #1
	mov r2, #0x48 
	add r2, r2, r3
	add r2, r2, r5
loc_8027164:
	cmp R3, #0
	beq loc_8027188
	sub R2, #1
	ldrb R0, [R2]
	strb R0, [R2,#1]
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	add r1, r3, #0
	bl sub_80281D4
	pop {r2,r3}
	sub R3, #1
	b loc_8027164
loc_8027188:
	mov R0, #0xB
	strb R0, [R2]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #2
	strb R1, [R0,#7]
	ldrb R1, [R0,#6]
	cmp R1, #0
	beq loc_802719E
	mov R0, #0xD
	b loc_80271A0
loc_802719E:
	ldrb R0, [R0,#5]
loc_80271A0:
	mov R1, #0
	bl sub_80281E4
	bl sub_8028E32
	mov R0, #0
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x92
	bl sound_play // () -> void
	mov R0, #0x18
	strh R0, [R5,#2]
loc_80271BC:
	bl sub_80298D8
	pop {r4,pc}
.endfunc // sub_8027150

.func
.thumb_func
sub_80271C2:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_80271F2
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	ldrb R2, [R5,#0xC]
	cmp R2, #3
	bne locret_80271F2
	ldr R0, off_80271F4 // =off_8027BD0 
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	mov R1, #0xA
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#0xD]
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80271F2:
	pop {pc}
off_80271F4: .word off_8027BD0
.endfunc // sub_80271C2

.func
.thumb_func
sub_80271F8:
	push {lr}
	ldr R1, off_8027210 // =off_8027214 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
	.byte 0, 0
off_8027210: .word off_8027214
off_8027214: .word sub_802721C+1
	.word sub_802723A+1
.endfunc // sub_80271F8

.func
.thumb_func
sub_802721C:
	push {lr}
	mov R0, #0
	str R0, [R5,#0x40]
	bl sub_8029788
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #2
	strb R1, [R0,#7]
	bl sub_8028E32
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_802721C

.func
.thumb_func
sub_802723A:
	push {lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	mov R1, #3
	and R1, R0
	bne locret_802728A
	lsr r0, r0, #2
	cmp R0, #8
	blt loc_802727A
	bl sub_802983C
	ldrb R0, [R5,#0x16]
	add R0, #1
	strb R0, [R5,#0x16]
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R2, #0
	ldrb R1, [R0,#4]
	sub R1, #1
	strb R1, [R0,#4]
	bne loc_802726A
	mov R2, #1
loc_802726A:
	strb R2, [R0,#7]
	bl sub_8028476
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b loc_802727E
loc_802727A:
	bl sub_8029688
loc_802727E:
	bl sub_8028E32
	mov R0, #0x14
	add R0, #0xFF
	bl sound_play // () -> void
locret_802728A:
	pop {pc}
.endfunc // sub_802723A

loc_802728C:
	push {r4,lr}
	ldr R4, [R5,#0x40]
	ldr R1, off_80272A0 // =off_80272A4 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	pop {r4,pc}
off_80272A0: .word off_80272A4
off_80272A4: .word sub_80272B8+1
	.word sub_80272D0+1
	.word sub_8027320+1
	.word sub_8027332+1
	.word sub_8027394+1
.func
.thumb_func
sub_80272B8:
	push {lr}
	ldrb R0, [R5,#0xC]
	lsl r0, r0, #2
	ldr R1, off_80272CC // =off_8027BEC 
	ldr R0, [R1,R0]
	str R0, [R5,#0x40]
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
	.balign 4, 0x00
off_80272CC: .word off_8027BEC
.endfunc // sub_80272B8

.func
.thumb_func
sub_80272D0:
	push {lr}
	ldrb R0, [R4]
	cmp R0, #0
	beq loc_80272E6
	cmp R0, #1
	beq loc_80272FE
	cmp R0, #2
	beq loc_8027308
	mov R0, #0x10
	strh R0, [R5,#2]
	b locret_8027318
loc_80272E6:
	mov R0, #8
	strh R0, [R5,#2]
	ldr R0, off_802731C // =off_8027BD0 
	ldrb R1, [R5,#0xC]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	ldrb R1, [R4,#1]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	add R4, #2
	str R4, [R5,#0x40]
	b locret_8027318
loc_80272FE:
	mov R0, #0xC
	strh R0, [R5,#2]
	mov r0, #0x50 
	str R0, [R5,#0x44]
	b locret_8027318
loc_8027308:
	ldrb R1, [R4,#1]
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_8015BEC
	add R4, #2
	str R4, [R5,#0x40]
locret_8027318:
	pop {pc}
	.balign 4, 0x00
off_802731C: .word off_8027BD0
.endfunc // sub_80272D0

.func
.thumb_func
sub_8027320:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne locret_8027330
	mov R0, #4
	strh R0, [R5,#2]
locret_8027330:
	pop {pc}
.endfunc // sub_8027320

.func
.thumb_func
sub_8027332:
	push {lr}
	add R4, #1
loc_8027336:
	push {r4}
	ldrb R0, [R4,#2]
	mov R1, #0x80
	bic R0, R1
	lsl r0, r0, #2
	ldr R2, off_8027384 // =dword_8027388 
	ldr R2, [R2,R0]
	ldr R3, dword_8027390 // =0xB37A 
	ldrb R0, [R4]
	ldrb R1, [R4,#1]
	mov R4, #1
	bl sub_8001040
.endfunc // sub_8027332

	pop {r4}
	ldrb R0, [R4,#2]
	add R4, #3
	mov R1, #0x80
	tst R0, R1
	beq loc_8027336
	ldr R0, [R5,#0x44]
	sub R0, #1
	str R0, [R5,#0x44]
	beq loc_802737C
	cmp r0, #0x44 
	bgt locret_8027382
	mov R3, R10
	ldr R3, [R3,#4]
	ldrh R0, [R3,#2]
	mov R1, #1
	tst R0, R1
	bne loc_802737C
	ldrh R0, [R3,#4]
	mov R1, #2
	tst R0, R1
	beq locret_8027382
loc_802737C:
	str R4, [R5,#0x40]
	mov R0, #4
	strh R0, [R5,#2]
locret_8027382:
	pop {pc}
off_8027384: .word dword_8027388
dword_8027388: .word 0x40000000, 0x60000000
dword_8027390: .word 0xB37A
.func
.thumb_func
sub_8027394:
	push {lr}
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	pop {pc}
	.word dword_20349A0
.endfunc // sub_8027394

loc_80273A4:
	push {r4,lr}
	ldr R4, [R5,#0x40]
	ldr R1, off_80273B4 // =off_80273B8 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r4,pc}
off_80273B4: .word off_80273B8
off_80273B8: .word sub_80273CC+1
	.word sub_80272D0+1
	.word sub_8027320+1
	.word sub_8027332+1
	.word sub_80273E4+1
.func
.thumb_func
sub_80273CC:
	push {lr}
	ldrb R0, [R5,#0xC]
	lsl r0, r0, #2
	ldr R1, off_80273E0 // =off_8027C84 
	ldr R0, [R1,R0]
	str R0, [R5,#0x40]
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
	.byte 0, 0
off_80273E0: .word off_8027C84
.endfunc // sub_80273CC

.func
.thumb_func
sub_80273E4:
	push {lr}
	mov R0, #8
	strb R0, [R5]
	pop {pc}
.endfunc // sub_80273E4

.func
.thumb_func
sub_80273EC:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne loc_8027400
	ldrb R0, [R5,#0xD]
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_8027400:
	bl sub_8029C08
	pop {pc}
.endfunc // sub_80273EC

loc_8027406:
	push {r4,lr}
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldr R1, off_8027424 // =off_8027428 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {r4,pc}
off_8027424: .word off_8027428
off_8027428: .word sub_8027434+1
	.word sub_8027458+1
	.word sub_802750C+1
.func
.thumb_func
sub_8027434:
	push {lr}
	mov R0, #0x18
	str R0, [R5,#0x40]
	mov R0, #0
	str R0, [R5,#0x44]
	mov R0, #0
	mov r1, #0x5f 
	strb R0, [R5,R1]
loc_8027444:
	ldr R1, dword_8027508 // =0xFFFF 
	mov r2, #0x60 
	add r2, r2, r5
	strh R1, [R2,R0]
	add R0, #2
	cmp R0, #0x10
	blt loc_8027444
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_8027434

.func
.thumb_func
sub_8027458:
	push {r4,r6,lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	mov R1, #0x19
	svc 6
	tst R1, R1
	bne loc_80274CE
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_80274F0
	add r0, #0x47 
	ldrb R0, [R5,R0]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_80274F0
	ldrb R1, [R0,#4]
	mov R2, #1
	tst R1, R2
	beq loc_802748E
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R1, #0
	strb R1, [R2,#0x17]
loc_802748E:
	ldr R2, [R0,#8]
	ldrh R0, [R2]
	ldr R3, dword_8027508 // =0xFFFF 
	strh R3, [R2]
	mov r1, #0x5f 
	ldrb R1, [R5,R1]
	lsl r2, r1, #1
	mov r3, #0x60 
	add r3, r3, r2
	strh R0, [R5,R3]
	add R1, #1
	mov r2, #0x5f 
	strb R1, [R5,R2]
	ldrb R1, [R5,#8]
	sub R1, #1
	strb R1, [R5,#8]
	ldr R0, dword_8027504 // =0x1FF 
	bl sub_80281D4
	ldrb R0, [R5,#8]
	mov R1, #0
	mov R2, #0
	bl sub_8029CD4
	bl sub_8028476
	mov R0, #0x97
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0x14
	str R0, [R5,#0x44]
loc_80274CE:
	ldr R0, [R5,#0x44]
	tst R0, R0
	beq loc_80274E4
	sub R0, #1
	str R0, [R5,#0x44]
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #3
	strb R1, [R0,#7]
	b locret_8027500
loc_80274E4:
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #0
	strb R1, [R0,#7]
	b locret_8027500
loc_80274F0:
	bl sub_802945A
	bl sub_80294E0
	bl sub_802A61A
	mov R0, #8
	strh R0, [R5,#2]
locret_8027500:
	pop {r4,r6,pc}
	.balign 4, 0x00
dword_8027504: .word 0x1FF
dword_8027508: .word 0xFFFF
.endfunc // sub_8027458

.func
.thumb_func
sub_802750C:
	push {lr}
	ldr R0, [R5,#0x30]
	add R0, #1
	str R0, [R5,#0x30]
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R2, #0
	ldrb R1, [R0,#4]
	sub R1, #1
	strb R1, [R0,#4]
	bne loc_8027526
	mov R2, #2
loc_8027526:
	strb R2, [R0,#7]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0x83
	add R0, #0xFF
	bl sound_play // () -> void
	bl sub_8028E32
	pop {pc}
.endfunc // sub_802750C

.func
.thumb_func
sub_802753E:
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov PC, LR
.endfunc // sub_802753E

.func
.thumb_func
sub_8027548:
	push {lr}
	ldr R1, off_8027560 // =off_8027564 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
	.byte 0, 0
off_8027560: .word off_8027564
off_8027564: .word sub_8027574+1
	.word sub_8027580+1
	.word sub_802759E+1
	.word sub_80275D8+1
.endfunc // sub_8027548

.func
.thumb_func
sub_8027574:
	push {lr}
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_8027574

.func
.thumb_func
sub_8027580:
	push {lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #0x10
	blt locret_802759C
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #4
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #8
	strh R0, [R5,#2]
locret_802759C:
	pop {pc}
.endfunc // sub_8027580

.func
.thumb_func
sub_802759E:
	push {r4,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_80275D2
	mov R0, #0
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrh R0, [R5,#0x38]
	strh R0, [R5,#0x3A]
	ldrh R0, [R5,#0x3A]
	mov R1, #1
	lsl R1, R0
	ldr R3, off_80275D4 // =dword_20349A0 
	ldrh R0, [R3,#0xE] // (word_20349AE - 0x20349A0)
	orr R0, R1
	strh R0, [R3,#0xE] // (word_20349AE - 0x20349A0)
	ldrh R0, [R5,#0x3A]
	bl sub_802A0C8
	mov R0, #0x92
	bl sound_play // () -> void
	mov R0, #0xC
	strh R0, [R5,#2]
locret_80275D2:
	pop {r4,pc}
off_80275D4: .word dword_20349A0
.endfunc // sub_802759E

.func
.thumb_func
sub_80275D8:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_80275EA
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_80275EA:
	pop {pc}
.endfunc // sub_80275D8

.func
.thumb_func
sub_80275EC:
	push {lr}
	ldr R1, off_8027600 // =off_8027604 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	pop {pc}
	.byte 0, 0
off_8027600: .word off_8027604
off_8027604: .word sub_8027618+1
	.word sub_8027624+1
	.word sub_8027658+1
	.word sub_8027672+1
	.word sub_80276D6+1
.endfunc // sub_80275EC

.func
.thumb_func
sub_8027618:
	push {lr}
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_8027618

.func
.thumb_func
sub_8027624:
	push {lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #0x10
	blt locret_8027656
	mov R0, #0
	str R0, [R5,#0x40]
	mov r0, #0x64 
	mov R1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #1
	mov r1, #0x28 
	bl sub_80302B6
	mov R0, #0x94
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0xBC
	bl sound_play // () -> void
	mov R0, #8
	strh R0, [R5,#2]
locret_8027656:
	pop {pc}
.endfunc // sub_8027624

.func
.thumb_func
sub_8027658:
	push {r4,r6,lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp r0, #0x32 
	blt locret_8027670
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_8027670
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8027670:
	pop {r4,r6,pc}
.endfunc // sub_8027658

.func
.thumb_func
sub_8027672:
	push {r4,r6,lr}
	mov R0, #0
	bl sub_802A040
	ldrb R3, [R5,#8]
	sub R3, #1
	mov r2, #0x48 
	add r2, r2, r3
	add r2, r2, r5
	ldrb R6, [R2]
loc_8027686:
	cmp R3, #0
	beq loc_80276AA
	sub R2, #1
	ldrb R0, [R2]
	strb R0, [R2,#1]
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	add r1, r3, #0
	bl sub_80281D4
	pop {r2,r3}
	sub R3, #1
	b loc_8027686
loc_80276AA:
	mov r1, #0x48 
	add r1, r1, r5
	strb R6, [R1]
	add r0, r6, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov R1, #0
	bl sub_80281D4
	bl sub_8028E32
	mov r0, #0x60 
	mov R1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x10
	strh R0, [R5,#2]
	pop {r4,r6,pc}
.endfunc // sub_8027672

.func
.thumb_func
sub_80276D6:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_8027706
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	ldrb R2, [R5,#0xC]
	cmp R2, #3
	bne locret_8027706
	ldr R0, off_8027708 // =off_8027BD0 
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	mov R1, #0xA
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#0xD]
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8027706:
	pop {pc}
off_8027708: .word off_8027BD0
.endfunc // sub_80276D6

.func
.thumb_func
sub_802770C:
	push {lr}
	ldr R1, off_8027720 // =off_8027724 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	pop {pc}
	.byte 0, 0
off_8027720: .word off_8027724
off_8027724: .word sub_8027738+1
	.word sub_802774C+1
	.word sub_802777C+1
	.word sub_8027796+1
	.word sub_8027806+1
.endfunc // sub_802770C

.func
.thumb_func
sub_8027738:
	push {lr}
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #1
	strb R0, [R5,#0x17]
	mov R0, #1
	strb R0, [R5,#0xF]
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_8027738

.func
.thumb_func
sub_802774C:
	push {lr}
	mov R0, #0
	str R0, [R5,#0x40]
	mov r0, #0x64 
	mov R1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #1
	mov r1, #0x28 
	bl sub_80302B6
	mov R0, #0x94
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, #0xBC
	bl sound_play // () -> void
	mov R0, #8
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_802774C

.func
.thumb_func
sub_802777C:
	push {r4,r6,lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp r0, #0x32 
	blt locret_8027794
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_8027794
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8027794:
	pop {r4,r6,pc}
.endfunc // sub_802777C

.func
.thumb_func
sub_8027796:
	push {r4,r6,lr}
	mov R4, #0
	bl sub_802A564
	cmp R0, #1
	bne loc_80277A4
	mov R4, #0xC
loc_80277A4:
	add r0, r4, #0
	bl sub_802A040
	ldrb R3, [R5,#8]
	sub R3, #1
	mov r2, #0x48 
	add r2, r2, r3
	add r2, r2, r5
	ldrb R6, [R2]
loc_80277B6:
	cmp R3, #0
	beq loc_80277DA
	sub R2, #1
	ldrb R0, [R2]
	strb R0, [R2,#1]
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	add r1, r3, #0
	bl sub_80281D4
	pop {r2,r3}
	sub R3, #1
	b loc_80277B6
loc_80277DA:
	mov r1, #0x48 
	add r1, r1, r5
	strb R6, [R1]
	bl sub_802A034
	mov R1, #0
	bl sub_80281D4
	mov R0, #0xB
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #2
	strb R1, [R0,#7]
	bl sub_8028E32
	mov r0, #0x60 
	mov R1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x10
	strh R0, [R5,#2]
	pop {r4,r6,pc}
.endfunc // sub_8027796

.func
.thumb_func
sub_8027806:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_802782E
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	ldrb R2, [R5,#0xC]
	cmp R2, #3
	bne locret_802782E
	mov R0, #4
	strb R0, [R5,#0xC]
	mov R0, #4
	strb R0, [R5,#0xD]
	mov r0, #0x2c 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_802782E:
	pop {pc}
	.word off_8027BD0
.endfunc // sub_8027806

.func
.thumb_func
sub_8027834:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_802784A
	str R0, [R5,#0x44]
	str R0, [R5,#0x40]
	mov R0, #1
	strb R0, [R5,#2]
	mov r0, #0x7a 
	bl sound_play // () -> void
loc_802784A:
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #0x14
	bgt loc_80278C8
	mov R1, #3
	svc 6
	tst R1, R1
	bne loc_80278D6
	ldr R0, [R5,#0x44]
	cmp R0, #3
	bge loc_802786A
	lsl r0, r0, #2
	ldr R1, off_80278DC // =off_80278E0 
	ldr R0, [R1,R0]
	b loc_8027876
loc_802786A:
	ldrb R0, [R5,#0x18]
	sub R0, #1
	lsl r0, r0, #2
	add R0, #0xC
	ldr R1, off_80278DC // =off_80278E0 
	ldr R0, [R1,R0]
loc_8027876:
	ldr R1, off_8027B24 // =unk_2035000 
	ldr R2, off_8027900 // =0x258 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	push {R4-R6}
	mov R2, #0xE1
	ldr R6, off_8027904 // =byte_8027B4A 
loc_8027884:
	ldr R0, dword_8027908 // =0xFFF 
	and R0, R2
	ldrb R2, [R6,#4]
	lsl r2, r2, #0xc
	orr R2, R0
	ldrb R0, [R6]
	ldrb R1, [R6,#1]
	ldrb R3, [R6,#2]
	ldrb R4, [R6,#3]
	ldrb R5, [R6,#5]
	bl sub_8027CCC
	add R6, #6
	ldrb R0, [R6]
	cmp R0, #0xFF
	bne loc_8027884
	pop {R4-R6}
	push {r4,r5}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8027B24 // =unk_2035000 
	mov R4, #0xF
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5}
	ldr R0, [R5,#0x44]
	cmp R0, #3
	bge loc_80278C8
	ldr R0, [R5,#0x44]
	add R0, #1
	str R0, [R5,#0x44]
	b loc_80278D6
loc_80278C8:
	mov r0, #0x54 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	bl sub_802794A
	b locret_80278DA
loc_80278D6:
	bl sub_80279C8
locret_80278DA:
	pop {pc}
off_80278DC: .word off_80278E0
off_80278E0: .word byte_86E670C
	.word byte_86E6964
	.word byte_86E6BBC
	.word byte_86E6E14
	.word byte_86E706C
	.word byte_86E72C4
	.word byte_86E751C
	.word byte_86E7774
off_8027900: .word 0x258
off_8027904: .word byte_8027B4A
dword_8027908: .word 0xFFF
.endfunc // sub_8027834

.func
.thumb_func
sub_802790C:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_8027922
	str R0, [R5,#0x44]
	str R0, [R5,#0x40]
	mov R0, #1
	strb R0, [R5,#2]
	mov r0, #0x7d 
	bl sound_play // () -> void
loc_8027922:
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #5
	ble loc_8027940
	bl sub_80279FC
	bl sub_80279C8
	bl sub_8028476
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_8027940:
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
.endfunc // sub_802790C

.func
.thumb_func
sub_802794A:
	push {r7,lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_802795C
	str R0, [R5,#0x44]
	str R0, [R5,#0x40]
	mov R0, #1
	strb R0, [R5,#2]
	b loc_8027964
loc_802795C:
	mov R7, R10
	ldr R7, [R7,#4]
	bl sub_8028A78
loc_8027964:
	bl sub_80279C8
	mov R4, #0
loc_802796A:
	ldrb R1, [R5,#0x1B]
	cmp R4, R1
	bne loc_802798A
	mov R2, #0
	ldr R1, dword_80279C4 // =0x55 
	add r1, r1, r4
	ldrb R0, [R5,R1]
	cmp R0, #0
	beq loc_802797E
	mov R2, #5
loc_802797E:
	ldr R1, off_80279C0 // =0x50 
	add r1, r1, r4
	ldrb R0, [R5,R1]
	add r0, r0, r2
	bl sub_8029EAC
loc_802798A:
	add R4, #1
	ldrb R2, [R5,#0x18]
	cmp R4, R2
	blt loc_802796A
	mov R0, #0
loc_8027994:
	mov R2, #2
	ldrb R1, [R5,#0x1B]
	cmp R0, R1
	bne loc_802799E
	mov R2, #0
loc_802799E:
	ldr R1, off_80279C0 // =0x50 
	add r1, r1, r0
	ldrb R1, [R5,R1]
	push {r0}
	bl sub_8029D94
	pop {r0}
	add R0, #1
	ldrb R2, [R5,#0x18]
	cmp R0, R2
	blt loc_8027994
	bl sub_80289E4
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	pop {r7,pc}
off_80279C0: .word 0x50
dword_80279C4: .word 0x55
.endfunc // sub_802794A

.func
.thumb_func
sub_80279C8:
	push {r4,lr}
	bl sub_8029C08
	bl sub_802899C
	bl sub_8029D34
	mov R4, #4
loc_80279D8:
	add r0, r4, #0
	mov R1, #0
	ldrb R2, [R5,#8]
	sub R2, #1
	cmp R0, R2
	bgt loc_80279E6
	mov R1, #1
loc_80279E6:
	mov R2, #0
	bl sub_8029CD4
	sub R4, #1
	bpl loc_80279D8
	bl sub_8028E32
	pop {r4,pc}
	.balign 4, 0x00
	.word 0x1FF
.endfunc // sub_80279C8

.func
.thumb_func
sub_80279FC:
	push {lr}
	ldr R0, off_8027A48 // =byte_86E64B4 
	ldr R1, off_8027B24 // =unk_2035000 
	ldr R2, off_8027A4C // =0x258 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	push {R4-R6}
	mov R2, #0x9B
	ldr R6, off_8027A50 // =byte_8027B2C 
loc_8027A0E:
	ldr R0, dword_8027A54 // =0xFFF 
	and R0, R2
	ldrb R2, [R6,#4]
	lsl r2, r2, #0xc
	orr R2, R0
	ldrb R0, [R6]
	ldrb R1, [R6,#1]
	ldrb R3, [R6,#2]
	ldrb R4, [R6,#3]
	ldrb R5, [R6,#5]
	bl sub_8027CCC
	add R6, #6
	ldrb R0, [R6]
	cmp R0, #0xFF
	bne loc_8027A0E
	pop {R4-R6}
	push {r4,r5}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8027B24 // =unk_2035000 
	mov R4, #0xF
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5}
	pop {pc}
	.balign 4, 0x00
off_8027A48: .word byte_86E64B4
off_8027A4C: .word 0x258
off_8027A50: .word byte_8027B2C
dword_8027A54: .word 0xFFF
.endfunc // sub_80279FC

.func
.thumb_func
sub_8027A58:
	push {lr}
	ldr R1, off_8027A70 // =off_8027A74 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
	.byte 0, 0
off_8027A70: .word off_8027A74
off_8027A74: .word sub_8027A84+1
	.word sub_8027A90+1
	.word sub_8027AAE+1
	.word sub_8027ADE+1
.endfunc // sub_8027A58

.func
.thumb_func
sub_8027A84:
	push {lr}
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #4
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_8027A84

.func
.thumb_func
sub_8027A90:
	push {lr}
	ldr R0, [R5,#0x40]
	add R0, #1
	str R0, [R5,#0x40]
	cmp R0, #0x10
	blt locret_8027AAC
	mov R0, #0
	str R0, [R5,#0x40]
	mov R0, #4
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #8
	strh R0, [R5,#2]
locret_8027AAC:
	pop {pc}
.endfunc // sub_8027A90

.func
.thumb_func
sub_8027AAE:
	push {r4,r6,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_8027ADC
	mov R0, #0
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrb R0, [R5,#0x1A]
	bl sub_802A088
	bl sub_80279FC
	bl sub_80279C8
	bl sub_8028476
	mov R0, #0x92
	bl sound_play // () -> void
	mov R0, #0xC
	strh R0, [R5,#2]
locret_8027ADC:
	pop {r4,r6,pc}
.endfunc // sub_8027AAE

.func
.thumb_func
sub_8027ADE:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_8027B1A
	bl sub_80279FC
	bl sub_80279C8
	bl sub_8028476
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	ldrb R2, [R5,#0xC]
	cmp R2, #6
	bne locret_8027B1A
	ldr R0, off_8027B1C // =off_8027BD0 
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	mov R1, #2
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #4
	strb R0, [R5,#0xD]
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8027B1A:
	pop {pc}
off_8027B1C: .word off_8027BD0
	.word dword_20364C0
off_8027B24: .word unk_2035000
	.word dword_20349A0
byte_8027B2C: .byte 0x2
byte_8027B2D: .byte 0x1
byte_8027B2E: .byte 0x8
byte_8027B2F: .byte 0x2
byte_8027B30: .byte 0x9
byte_8027B31: .byte 0x1
	.hword 0x302
	.word 0xA0607, 0x2010902, 0x9030009, 0xB0202, 0x2030906
	.byte 0x9, 0x1
byte_8027B4A: .byte 0x1
byte_8027B4B: .byte 0xD
byte_8027B4C: .byte 0x2
byte_8027B4D: .byte 0x2
byte_8027B4E: .byte 0xB
byte_8027B4F: .byte 0x0
	.word 0x1020F01, 0xD030009, 0xB0202, 0x1020F03, 0xD050009
	.word 0xB0202, 0x1020F05, 0xD070009, 0xB0202, 0x1020F07
	.word 0xD090009, 0xB0202, 0x1020F09, 0x10010009, 0xB0202
	.word 0x1021201, 0x10030009, 0xB0202, 0x1021203, 0x10050009
	.word 0xB0202, 0x1021205, 0x10070009, 0xB0202, 0x1021207
	.word 0x10090009, 0xB0202, 0x1021209, 0x110B0009, 0x90204
	.word 0xA02030C, 0xFF000B
off_8027BD0: .word dword_86F2E60
	.word dword_86F3868
	.word scripts_fullSynchro_86F3F5C
off_8027BDC: .word scripts_dad_cybeastTut_86F4498
	.word scripts_dad_cybeastTut_86F4498
	.word scripts_dad_cybeastTut_86F4498
	.word scripts_shuko_crossTut_86F53CC
off_8027BEC: .word dword_8027C08
	.word dword_8027C38
	.word dword_8027C50
	.word dword_8027C64
	.word dword_8027C70
	.word dword_8027C7C
	.word dword_8027C80
dword_8027C08: .word 0x78010000, 0x200804E, 0x80804001, 0x4A010300, 0x4008030
	.word 0x80564201, 0x8E010500, 0x88B60158, 0x1060081, 0x32007212
	.word 0x8008072, 0x3
dword_8027C38: .word 0x12010000, 0x1008072, 0x80722201, 0x10010200, 0x7E20007E
	.word 0x3040080
dword_8027C50: .word 0xA2010000, 0x3008020, 0xA201FF02, 0x4008020, 0x3
dword_8027C64: .word 0x6A010000, 0x100817D, 0x3
dword_8027C70: .word 0xA2010500, 0xA008020, 0x3
dword_8027C7C: .word 0x31900
dword_8027C80: .word 0x30100
off_8027C84: .word dword_8027CA0
	.word byte_8027CB5
	.word byte_8027CC4
	.word byte_8027CC5
	.word byte_8027CC6
	.word byte_8027CC7
	.word byte_8027CC8
dword_8027CA0: .word 0x2E011100, 0x1200800E, 0x80404801, 0x78011300
	.word 0x15008010
	.byte  3
byte_8027CB5: .byte 0x0, 0x10, 0x1, 0x8C, 0x52, 0x0, 0x8C, 0x6A, 0x0, 0x8C, 0x82
	.byte 0x80, 0x0, 0x11, 0x3
byte_8027CC4: .byte 0x3
byte_8027CC5: .byte 0x3
byte_8027CC6: .byte 0x3
byte_8027CC7: .byte 0x3
byte_8027CC8: .byte 0x3, 0x0, 0x0, 0x0
.endfunc // sub_8027ADE

.func
.thumb_func
sub_8027CCC:
	push {r0,r1,R3-R7,lr}
	mov R6, #1
	cmp R5, #1
	bne loc_8027CD6
	mul R6, R4
loc_8027CD6:
	mov R5, #0x1E
	mul R1, R5
	lsl r0, r0, #1
	add r1, r1, r0
	ldr R0, off_8027D0C // =unk_2035000 
	add r1, r1, r0
	add r5, r3, #0
	add r7, r2, #0
loc_8027CE6:
	add r0, r1, #0
	add r3, r5, #0
	add r2, r7, #0
loc_8027CEC:
	strh R2, [R0]
	add R0, #2
	add r2, r2, r6
	sub R3, #1
	bne loc_8027CEC
	add R1, #0x1E
	cmp R6, #1
	beq loc_8027D04
	add R7, #1
	sub r2, r2, r6
	add R2, #1
	b loc_8027D06
loc_8027D04:
	add r7, r2, #0
loc_8027D06:
	sub R4, #1
	bne loc_8027CE6
	pop {r0,r1,R3-R7,pc}
off_8027D0C: .word unk_2035000
.endfunc // sub_8027CCC

.func
.thumb_func
sub_8027D10:
	add r1, r0, #0
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	ldr R0, off_8027D28 // =off_8027D2C 
	cmp R1, #0xFF
	ble loc_8027D22
	add R0, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
loc_8027D22:
	ldr R0, [R0]
	mov PC, LR
	.balign 4, 0x00
off_8027D28: .word off_8027D2C
off_8027D2C: .word byte_86EA94C
off_8027D30: .word byte_86EB354
.endfunc // sub_8027D10

.func
.thumb_func
// (int chipID) -> void*
chip_getScript_8027D34:
	add r1, r0, #0
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	ldr R0, off_8027D4C // =off_8027D50 
	cmp R1, #0xFF
	ble loc_8027D46
	add R0, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
loc_8027D46:
	ldr R0, [R0]
	mov PC, LR
	.balign 4, 0x00
off_8027D4C: .word off_8027D50
off_8027D50: .word unk_86EB8B8
off_8027D54: .word unk_86EE0CC
.endfunc // chip_getScript_8027D34

.func
.thumb_func
sub_8027D58:
	push {r4,lr}
	ldr R2, off_8027F0C // =byte_203CDB0 
	ldr R1, dword_8027D74 // =0xFFFF 
	mov R3, #0x1E
loc_8027D60:
	ldrh R4, [R2]
	cmp R4, R1
	beq loc_8027D6C
	add R2, #2
	sub R3, #1
	bne loc_8027D60
loc_8027D6C:
	mov R0, #0x1E
	sub r0, r0, r3
	pop {r4,pc}
	.balign 4, 0x00
dword_8027D74: .word 0xFFFF
.endfunc // sub_8027D58

.func
.thumb_func
sub_8027D78:
	push {lr}
	mov R1, R10
	ldr R1, [R1,#8]
	mov R0, #0
	strh R0, [R1,#0x18]
	bl sub_801E71C
	mov R0, #0x80
	bl sub_801DACC
	mov R0, #0
	mov R1, #0
	bl sub_801E0A0
	ldr R0, off_8027E14 // =0x400 
	bl sub_801BECC
	ldr R0, off_8027E14 // =0x400 
	bl sub_801DA48
	bl sub_800A97A
	tst R0, R0
	bne locret_8027E10
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	bne loc_8027DD4
	bl sub_800A8F8
	cmp R0, #0
	beq loc_8027DC0
	bl sub_801DF0C
	b locret_8027E10
loc_8027DC0:
	bl sub_802D234
	cmp R0, #1
	bne loc_8027DCE
	bl sub_801DEEE
	b locret_8027E10
loc_8027DCE:
	bl sub_801DED0
	b locret_8027E10
loc_8027DD4:
	bl sub_800A8F8
	cmp R0, #0
	beq loc_8027DEA
	ldr R0, dword_8027E18 // =0x20000 
	bl sub_801DA48
	ldr R0, dword_8027E18 // =0x20000 
	bl sub_801BECC
	b locret_8027E10
loc_8027DEA:
	bl sub_801DF92
	bl sub_802D234
	cmp R0, #1
	bne loc_8027E04
	mov r0, #0x20 
	bl sub_801DA48
	mov r0, #0x20 
	bl sub_801BECC
	b locret_8027E10
loc_8027E04:
	mov R0, #0x10
	bl sub_801DA48
	mov R0, #0x10
	bl sub_801BECC
locret_8027E10:
	pop {pc}
	.balign 4, 0x00
off_8027E14: .word 0x400
dword_8027E18: .word 0x20000
.endfunc // sub_8027D78

.func
.thumb_func
// (int a1) -> void*
getLocOfActiveChips_8027E1C:
	mov R1, #0xC
	mul R0, R1
	ldr R1, off_8027E28 // =unk_20365C0 
	add r0, r0, r1
	mov PC, LR
	.balign 4, 0x00
off_8027E28: .word unk_20365C0
.endfunc // getLocOfActiveChips_8027E1C

.func
.thumb_func
sub_8027E2C:
	push {r4,r6,r7,lr}
	mov R0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	// size
	mov R1, #0x90
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_802A40C
	bl sub_8027E90
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0x17]
	cmp R0, #0
	beq loc_8027E52
	mov R0, #1
	strb R0, [R4,#4]
loc_8027E52:
	ldrb R6, [R5,#6]
	bl sub_8027EE8
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	ldrb R1, [R5,#0x10]
	cmp R1, #0
	bne loc_8027E70
	ldrb R2, [R5,#0x15]
	cmp R1, R2
	beq loc_8027E70
	bl sub_8015B5C
	b loc_8027E74
loc_8027E70:
	bl sub_8015B54
loc_8027E74:
	add r7, r1, #0
	bl sub_8027F10
	bl sub_80280E0
	bl sub_80280A2
	bl sub_8027F42
	bl sub_8028050
	bl sub_802806C
	pop {r4,r6,r7,pc}
.endfunc // sub_8027E2C

.func
.thumb_func
sub_8027E90:
	push {r6,lr}
	mov R3, #0xC
	add r2, r4, #0
	ldr R1, off_8027EE4 // =dword_802A7CC 
loc_8027E98:
	ldr R0, [R1]
	str R0, [R2]
	mov R0, #0
	str R0, [R2,#4]
	str R0, [R2,#8]
	add R1, #4
	add R2, #0xC
	sub R3, #1
	bne loc_8027E98
	bl sub_802D234
	cmp R0, #1
	bne loc_8027EC2
	ldr R0, off_8028118 // =dword_20349A0 
	ldrb R0, [R0,#0x4] // (byte_20349A4 - 0x20349A0)
	cmp R0, #0
	bne locret_8027EE0
	mov R0, #3
	mov R1, #0x84
	strb R0, [R4,R1]
	b locret_8027EE0
loc_8027EC2:
	bl sub_8029FB4
	tst R0, R0
	beq locret_8027EE0
	mov R6, #1
	bl sub_802A57E
	tst R0, R0
	beq loc_8027ED6
	mov R6, #0
loc_8027ED6:
	mov R0, #2
	mov R1, #0x84
	strb R0, [R4,R1]
	mov R1, #0x8B
	strb R6, [R4,R1]
locret_8027EE0:
	pop {r6,pc}
	.balign 4, 0x00
off_8027EE4: .word dword_802A7CC
.endfunc // sub_8027E90

.func
.thumb_func
sub_8027EE8:
	push {r4,r6,lr}
	ldrb R3, [R5,#5]
	cmp R3, #0
	beq locret_8027F0A
	cmp R6, #0
	beq locret_8027F0A
	cmp R3, R6
	blt loc_8027EFA
	add r3, r6, #0
loc_8027EFA:
	mov R2, #0
	ldr R1, off_8027F0C // =byte_203CDB0 
loc_8027EFE:
	strb R2, [R4]
	str R1, [R4,#8]
	add R4, #0xC
	add R1, #2
	sub R3, #1
	bne loc_8027EFE
locret_8027F0A:
	pop {r4,r6,pc}
off_8027F0C: .word byte_203CDB0
.endfunc // sub_8027EE8

.func
.thumb_func
sub_8027F10:
	push {r4,r6,lr}
	ldrb R0, [R5,#0x10]
	cmp R0, #0
	bne locret_8027F40
	cmp R7, #0xA
	beq loc_8027F20
	cmp R7, #0x16
	bne loc_8027F38
loc_8027F20:
	mov R0, #8
	mov r1, #0x60 
	add r1, r1, r4
	strb R0, [R1]
	mov R0, #9
	strb R0, [R1,#0xC]
	mov R0, #1
	ldr R2, [R5,#0x30]
	sub r0, r0, r2
	strb R0, [R1,#4]
	mov R0, #1
	strb R0, [R1,#7]
loc_8027F38:
	mov R0, #0xB
	strb R0, [R1,#3]
	mov R0, #7
	strb R0, [R1,#0xE]
locret_8027F40:
	pop {r4,r6,pc}
.endfunc // sub_8027F10

.func
.thumb_func
sub_8027F42:
	push {r4,r6,r7,lr}
	mov R6, #0xB
loc_8027F46:
	add r0, r6, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r7, r0, #0
	ldrb R0, [R7]
	cmp R0, #0xA
	beq loc_8027F64
	cmp R0, #0xB
	beq loc_8027F64
	bl sub_8027F6A
	bl sub_8027F84
	bl sub_8027FDC
loc_8027F64:
	sub R6, #1
	bpl loc_8027F46
	pop {r4,r6,r7,pc}
.endfunc // sub_8027F42

.func
.thumb_func
sub_8027F6A:
	push {r7,lr}
	ldrb R0, [R7,#1]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R0, [R0]
	mov R1, #0xFF
	cmp R0, #0xA
	beq loc_8027F7E
	cmp R0, #0xB
	bne locret_8027F82
loc_8027F7E:
	mov R0, #0xFF
	strb R0, [R7,#1]
locret_8027F82:
	pop {r7,pc}
.endfunc // sub_8027F6A

.func
.thumb_func
sub_8027F84:
	push {r6,r7,lr}
	ldrb R0, [R7,#2]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R0, [R0]
	mov R1, #0xFF
	cmp R0, #0xA
	beq loc_8027F98
	cmp R0, #0xB
	bne locret_8027FC2
loc_8027F98:
	ldr R0, off_8027FC4 // =off_802A7FC 
	cmp R6, #0xA
	beq loc_8027FB0
	cmp R6, #5
	blt loc_8027FB0
	ldr R0, off_8027FC8 // =byte_802A804 
	ldrb R1, [R7]
	cmp R1, #9
	beq loc_8027FAE
	cmp R1, #5
	bne loc_8027FB0
loc_8027FAE:
	sub R6, #1
loc_8027FB0:
	ldr R1, off_8027FCC // =dword_8027FD0 
	ldrb R1, [R1,R6]
	add r0, r0, r1
	bl sub_8028034
	cmp R0, R6
	bne loc_8027FC0
	mov R0, #0xFF
loc_8027FC0:
	strb R0, [R7,#2]
locret_8027FC2:
	pop {r6,r7,pc}
off_8027FC4: .word off_802A7FC
off_8027FC8: .word byte_802A804
off_8027FCC: .word dword_8027FD0
dword_8027FD0: .word 0x4050607, 0xF101102, 0x107
.endfunc // sub_8027F84

.func
.thumb_func
sub_8027FDC:
	push {r6,r7,lr}
	ldrb R0, [R7,#3]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R0, [R0]
	mov R1, #0xFF
	cmp R0, #0xA
	beq loc_8027FF0
	cmp R0, #0xB
	bne locret_802801A
loc_8027FF0:
	ldr R0, off_802801C // =unk_802A817 
	cmp R6, #0xA
	beq loc_8028008
	cmp R6, #5
	blt loc_8028008
	ldr R0, off_8028020 // =byte_802A81F 
	ldrb R1, [R7]
	cmp R1, #8
	beq loc_8028006
	cmp R1, #4
	bne loc_8028008
loc_8028006:
	add R6, #1
loc_8028008:
	ldr R1, off_8028024 // =dword_8028028 
	ldrb R1, [R1,R6]
	add r0, r0, r1
	bl sub_8028034
	cmp R0, R6
	bne loc_8028018
	mov R0, #0xFF
loc_8028018:
	strb R0, [R7,#3]
locret_802801A:
	pop {r6,r7,pc}
off_802801C: .word unk_802A817
off_8028020: .word byte_802A81F
off_8028024: .word dword_8028028
dword_8028028: .word 0x5030201, 0x3020107, 0x504
.endfunc // sub_8027FDC

.func
.thumb_func
sub_8028034:
	push {r4,lr}
	add r4, r0, #0
loc_8028038:
	ldrb R0, [R4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R0, [R0]
	cmp R0, #0xA
	beq loc_8028048
	cmp R0, #0xB
	bne loc_802804C
loc_8028048:
	add R4, #1
	b loc_8028038
loc_802804C:
	ldrb R0, [R4]
	pop {r4,pc}
.endfunc // sub_8028034

.func
.thumb_func
sub_8028050:
	push {r4,r6,lr}
	mov R6, #0
loc_8028054:
	ldrb R0, [R4]
	cmp R0, #0xA
	beq loc_802805E
	cmp R0, #0xB
	bne loc_8028068
loc_802805E:
	add R4, #0xC
	add R6, #1
	cmp R6, #0xC
	bne loc_8028054
	mov R6, #0xA
loc_8028068:
	strb R6, [R5,#7]
	pop {r4,r6,pc}
.endfunc // sub_8028050

.func
.thumb_func
sub_802806C:
	push {r4,r6,lr}
	ldrb R0, [R5,#7]
	cmp R0, #0
	bne locret_80280A0
	mov R6, #0
loc_8028076:
	ldrb R0, [R4]
	cmp R0, #0
	bne loc_8028094
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl sub_802A53C
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov r1, #0x20 
	tst R0, R1
	bne loc_802809E
loc_8028094:
	add R4, #0xC
	add R6, #1
	cmp R6, #0xA
	bne loc_8028076
	b locret_80280A0
loc_802809E:
	strb R6, [R5,#7]
locret_80280A0:
	pop {r4,r6,pc}
.endfunc // sub_802806C

.func
.thumb_func
sub_80280A2:
	push {r4,lr}
	ldrb R0, [R5,#0x10]
	cmp R0, #0
	beq locret_80280DA
	cmp R0, #0xB
	bgt locret_80280DA
	ldr R1, off_8028118 // =dword_20349A0 
	ldrh R1, [R1,#0xC] // (word_20349AC - 0x20349A0)
	mov R2, #1
	lsl R2, R0
	tst R1, R2
	bne locret_80280DA
	sub R0, #1
	lsl r0, r0, #1
	ldr R1, off_80280DC // =byte_802A828 
	add r4, r0, r1
	ldrh R0, [R4]
	strh R0, [R5,#0x22]
	mov R0, #9
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #0
	strb R1, [R0]
	mov R1, #0
	strb R1, [R0,#4]
	mov r1, #0x22 
	add r1, r1, r5
	str R1, [R0,#8]
locret_80280DA:
	pop {r4,pc}
off_80280DC: .word byte_802A828
.endfunc // sub_80280A2

.func
.thumb_func
sub_80280E0:
	push {r4,lr}
	ldrb R0, [R5,#0x10]
	cmp R0, #0
	bne locret_8028114
	bl sub_802A5DA
	tst R0, R0
	beq locret_8028114
	mov R0, #4
	mov r1, #0x60 
	add r1, r1, r4
	strb R0, [R1]
	mov R0, #5
	strb R0, [R1,#0xC]
	mov R0, #1
	ldrb R2, [R5,#0x16]
	sub r0, r0, r2
	strb R0, [R1,#4]
	tst R0, R0
	bne loc_802810C
	mov R0, #1
	strb R0, [R1,#7]
loc_802810C:
	mov R0, #0xB
	strb R0, [R1,#3]
	mov R0, #7
	strb R0, [R1,#0xE]
locret_8028114:
	pop {r4,pc}
	.balign 4, 0x00
off_8028118: .word dword_20349A0
.endfunc // sub_80280E0

.func
.thumb_func
sub_802811C:
	push {lr}
	// dataList
	ldr R0, off_8028154 // =off_802A744 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	ldrb R0, [R5,#0x10]
	bl sub_802812C
	pop {pc}
.endfunc // sub_802811C

.func
.thumb_func
sub_802812C:
	push {r4,lr}
	add r4, r0, #0
	bl sub_8028164
	ldr R1, dword_8028158 // =0x60170E0 
	mov r2, #0x40 
	bl loc_8000AC8
.endfunc // sub_802812C

	add r0, r0, r2
	ldr R1, dword_802815C // =0x6017160 
	bl loc_8000AC8
	add r0, r4, #0
	bl sub_8028172
	ldr R1, off_8028160 // =byte_30016B0 
	mov r2, #0x20 
	bl loc_8000AC8
	pop {r4,pc}
off_8028154: .word off_802A744
dword_8028158: .word 0x60170E0
dword_802815C: .word 0x6017160
off_8028160: .word byte_30016B0
.func
.thumb_func
sub_8028164:
	ldr R1, off_8028198 // =byte_802819C 
	ldrb R0, [R1,R0]
	mov R1, #0x80
	mul R0, R1
	ldr R1, off_8028180 // =unk_86F5834 
	add r0, r0, r1
	mov PC, LR
.endfunc // sub_8028164

.func
.thumb_func
sub_8028172:
	ldr R1, off_8028188 // =off_802818C 
	ldrb R0, [R1,R0]
	mov r1, #0x20 
	mul R0, R1
	ldr R1, off_8028184 // =byte_86E56FC 
	add r0, r0, r1
	mov PC, LR
off_8028180: .word unk_86F5834
off_8028184: .word byte_86E56FC
off_8028188: .word off_802818C
off_802818C: .word unk_2010100
	.word 0x1040003, 0x60205
off_8028198: .word byte_802819C
byte_802819C: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
.endfunc // sub_8028172

.func
.thumb_func
sub_80281A8:
	push {r1,r2,lr}
	ldr R2, dword_80283AC // =0x1FF 
	and R0, R2
	cmp R0, R2
	bne loc_80281B6
	ldr R0, off_80281C0 // =byte_86E601C 
	pop {r1,r2,pc}
loc_80281B6:
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldr R0, [R0,#0x20]
	pop {r1,r2,pc}
	.byte 0, 0
off_80281C0: .word byte_86E601C
.endfunc // sub_80281A8

.func
.thumb_func
sub_80281C4:
	push {r2,r3,lr}
	bl sub_80281A8
	mov R2, #0x80
	bl loc_8000AC8
.endfunc // sub_80281C4

	add R1, #0x80
	pop {r2,r3,pc}
.func
.thumb_func
sub_80281D4:
	push {r1,r2,lr}
	mov R2, #0x80
	mul R2, R1
	ldr R1, dword_80281FC // =0x600A4A0 
	add r1, r1, r2
	bl sub_80281C4
	pop {r1,r2,pc}
.endfunc // sub_80281D4

.func
.thumb_func
sub_80281E4:
	push {R1-R3,lr}
	mov R2, #0x80
	mul R1, R2
	ldr R3, dword_80281FC // =0x600A4A0 
	add r1, r1, r3
	mul R0, R2
	ldr R3, off_8028200 // =byte_8725894 
	add r0, r0, r3
	bl loc_8000AC8
.endfunc // sub_80281E4

	pop {R1-R3,pc}
	.balign 4, 0x00
dword_80281FC: .word 0x600A4A0
off_8028200: .word byte_8725894
.func
.thumb_func
sub_8028204:
	push {r2,r3,lr}
	bl sub_8028214
	mov r2, #0x40 
	bl loc_8000AC8
.endfunc // sub_8028204

	add r1, #0x40 
	pop {r2,r3,pc}
.func
.thumb_func
sub_8028214:
	push {r2,lr}
	cmp R0, #0x1B
	beq loc_802822A
	cmp R0, #0x1C
	beq loc_802822A
	blt loc_8028222
	mov R0, #0x1B
loc_8028222:
	lsl r0, r0, #6
	ldr R2, off_8028230 // =dword_86E591C 
	add r0, r0, r2
	pop {r2,pc}
loc_802822A:
	ldr R0, off_8028234 // =byte_802A700 
	pop {r2,pc}
	.byte 0, 0
off_8028230: .word dword_86E591C
off_8028234: .word byte_802A700
.endfunc // sub_8028214

.func
.thumb_func
sub_8028238:
	push {lr}
	mov R1, #0xC0
	mul R0, R1
	ldr R1, dword_802824C // =0x6009C20 
	add r1, r1, r0
	ldr R0, dword_80283AC // =0x1FF 
	bl sub_80281C4
	pop {pc}
	.balign 4, 0x00
dword_802824C: .word 0x6009C20
.endfunc // sub_8028238

loc_8028250:
	push {R4-R7,lr}
	push {r0}
	mov R0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	mov R7, #0xC
	ldr R1, dword_8028358 // =0x6009C20 
loc_8028260:
	ldrb R0, [R4]
	lsl r0, r0, #2
	ldr R2, off_802836C // =off_8028370 
	ldr R0, [R2,R0]
	mov LR, PC
	bx r0
	add R4, #0xC
	sub R7, #1
	bne loc_8028260
	pop {r0}
	cmp R0, #0
	bne loc_802827E
	bl sub_80283B0
	b locret_8028282
loc_802827E:
	bl sub_80283C8
locret_8028282:
	pop {R4-R7,pc}
.func
.thumb_func
sub_8028284:
	push {r4,lr}
	ldrb R0, [R4,#7]
	cmp R0, #2
	bne loc_8028290
	ldr R0, dword_80283AC // =0x1FF 
	b loc_8028298
loc_8028290:
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
loc_8028298:
	bl sub_80281C4
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	lsr r0, r0, #9
	bl sub_8028204
	pop {r4,pc}
.endfunc // sub_8028284

.func
.thumb_func
nullsub_14:
	mov PC, LR
.endfunc // nullsub_14

.func
.thumb_func
sub_80282AE:
	push {lr}
	ldr R0, off_80283A0 // =unk_86E79CC 
	ldr R2, off_80283A4 // =0x100 
	ldrb R3, [R4,#7]
	cmp R3, #0
	beq loc_80282BC
	add r0, r0, r2
loc_80282BC:
	bl loc_8000AC8
	pop {pc}
.endfunc // sub_80282AE

.func
.thumb_func
sub_80282C2:
	push {lr}
	ldr R0, off_80283A0 // =unk_86E79CC 
	ldr R2, off_80283A4 // =0x100 
	add r0, r0, r2
	add r0, r0, r2
	bl loc_8000AC8
	pop {pc}
.endfunc // sub_80282C2

.func
.thumb_func
sub_80282D2:
	push {lr}
	ldr R0, off_802835C // =dword_86E441C 
	ldr R2, off_8028364 // =0x180 
	ldrb R3, [R4,#7]
	mul R3, R2
	add r0, r0, r3
	bl loc_8000AC8
	add R1, #0xC0
	add R1, #0xC0
	pop {pc}
.endfunc // sub_80282D2

.func
.thumb_func
sub_80282E8:
	push {lr}
	ldrb R0, [R4,#7]
	cmp R0, #2
	bne loc_80282F4
	ldr R0, dword_80283AC // =0x1FF 
	b loc_80282FC
loc_80282F4:
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
loc_80282FC:
	bl sub_80281C4
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	lsr r0, r0, #9
	bl sub_8028204
	pop {pc}
.endfunc // sub_80282E8

.func
.thumb_func
sub_8028310:
	push {lr}
	ldr R0, dword_80283AC // =0x1FF 
	bl sub_80281C4
	mov R0, #0x1D
	bl sub_8028204
	pop {pc}
.endfunc // sub_8028310

.func
.thumb_func
sub_8028320:
	push {lr}
	cmp R7, #1
	bne loc_8028334
	ldr R0, off_80283A0 // =unk_86E79CC 
	ldr R2, off_80283A8 // =0x300 
	add r0, r0, r2
	ldr R2, off_80283A4 // =0x100 
	bl loc_8000AC8
	b locret_802833E
loc_8028334:
	ldr R0, off_8028368 // =byte_802A700 
	mov R3, #3
	bl sub_802868C
	add R1, #0xC0
locret_802833E:
	pop {pc}
.endfunc // sub_8028320

.func
.thumb_func
sub_8028340:
	push {lr}
	ldr R0, off_8028360 // =dword_86E4D9C 
	ldr R2, off_8028364 // =0x180 
	ldrb R3, [R4,#7]
	mul R3, R2
	add r0, r0, r3
	bl loc_8000AC8
	add R1, #0xC0
	add R1, #0xC0
	pop {pc}
	.balign 4, 0x00
dword_8028358: .word 0x6009C20
off_802835C: .word dword_86E441C
off_8028360: .word dword_86E4D9C
off_8028364: .word 0x180
off_8028368: .word byte_802A700
off_802836C: .word off_8028370
off_8028370: .word sub_8028284+1
	.word nullsub_14+1
	.word sub_80282AE+1
	.word sub_80282C2+1
	.word sub_80282D2+1
	.word nullsub_14+1
	.word sub_80282E8+1
	.word sub_80282E8+1
	.word sub_8028340+1
	.word nullsub_14+1
	.word sub_8028310+1
	.word sub_8028320+1
off_80283A0: .word unk_86E79CC
off_80283A4: .word 0x100
off_80283A8: .word 0x300
dword_80283AC: .word 0x1FF
.endfunc // sub_8028340

.func
.thumb_func
sub_80283B0:
	push {r4,r5,lr}
	bl sub_80283C8
	// j
	mov R0, #0
	// i
	mov R1, #0xD
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8028468 // =unk_2035186 
	mov R4, #0xF
	mov R5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5,pc}
.endfunc // sub_80283B0

.func
.thumb_func
sub_80283C8:
	push {r4,r5,lr}
	mov R0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r7, r0, #0
	mov R6, #0
loc_80283D4:
	mov R2, #0
	ldrb R0, [R7]
	cmp R0, #1
	beq loc_802842C
	cmp R0, #2
	beq loc_802842C
	cmp R0, #3
	beq loc_802842C
	cmp R0, #0xA
	beq loc_8028400
	cmp R0, #6
	beq loc_80283F8
	cmp R0, #7
	beq loc_80283F8
	cmp R0, #0
	beq loc_80283F8
	mov R2, #4
	b loc_8028400
loc_80283F8:
	ldrb R0, [R7,#7]
	cmp R0, #1
	bne loc_8028400
	mov R2, #2
loc_8028400:
	ldr R4, off_8028438 // =off_802843C 
	lsl r0, r6, #2
	ldr R4, [R4,R0]
	ldr R1, off_802846C // =dword_8028470 
	ldrh R2, [R1,R2]
	ldr R1, dword_8028464 // =0x3FF 
	ldrh R0, [R4]
	and R0, R1
	orr R0, R2
	strh R0, [R4]
	ldrh R0, [R4,#2]
	and R0, R1
	orr R0, R2
	strh R0, [R4,#2]
	ldrh R0, [R4,#0x1E]
	and R0, R1
	orr R0, R2
	strh R0, [R4,#0x1E]
	ldrh R0, [R4,#0x20]
	and R0, R1
	orr R0, R2
	strh R0, [R4,#0x20]
loc_802842C:
	add R7, #0xC
	add R6, #1
	cmp R6, #0xA
	blt loc_80283D4
	pop {r4,r5,pc}
	.balign 4, 0x00
off_8028438: .word off_802843C
off_802843C: .word unk_2035188
	.word unk_203518C
	.word unk_2035190
	.word unk_2035194
	.word unk_2035198
	.word 0x20351E2, 0x20351E6, 0x20351EA, 0x20351EE, 0x20351F2
dword_8028464: .word 0x3FF
off_8028468: .word unk_2035186
off_802846C: .word dword_8028470
dword_8028470: .word 0xC000B000
	.byte  0
	.byte 0x90
.endfunc // sub_80283C8

.func
.thumb_func
sub_8028476:
	push {lr}
	ldrb R0, [R5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #0
	beq loc_80284AA
	cmp R1, #1
	beq loc_80284B8
	cmp R1, #2
	beq loc_80284BE
	cmp R1, #4
	beq loc_80284C4
	cmp R1, #5
	beq loc_80284C4
	cmp R1, #6
	beq loc_80284CA
	cmp R1, #7
	beq loc_80284CA
	cmp R1, #3
	beq loc_80284D4
	cmp R1, #8
	beq loc_80284DA
	cmp R1, #9
	beq loc_80284DA
	b locret_80284E0
loc_80284AA:
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	bl sub_80284E2
	b locret_80284E0
loc_80284B8:
	bl sub_80286D4
	b locret_80284E0
loc_80284BE:
	bl sub_802871C
	b locret_80284E0
loc_80284C4:
	bl sub_80287A4
	b locret_80284E0
loc_80284CA:
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl sub_80285FE
	b locret_80284E0
loc_80284D4:
	bl sub_8028754
	b locret_80284E0
loc_80284DA:
	bl sub_802877C
	b locret_80284E0
locret_80284E0:
	pop {pc}
.endfunc // sub_8028476

.func
.thumb_func
sub_80284E2:
	push {r4,lr}
	sub sp, sp, #0x10
	str R0, [SP]
	push {R0-R7}
	bl sub_8027D10
	ldr R2, off_8028674 // =byte_203C4E0 
	ldr R3, dword_8028678 // =0x6009360 
	mov R4, #8
	mov R5, #1
	ldr R6, off_802867C // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
.endfunc // sub_80284E2

	pop {R0-R7}
	ldr R0, [SP]
	ldr R1, dword_8028688 // =0x1FF 
	and R0, R1
	push {r0}
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	bl sub_80109A4
	str R0, [SP,#0x10]
	pop {r0}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	str R0, [SP,#4]
	ldr R0, [R0,#0x24]
	cmp R0, #0
	beq loc_8028536
	ldr R1, dword_802865C // =0x6009560 
	ldr R2, off_8028660 // =0x540 
	bl loc_8000AC8
	ldr R0, [SP,#4]
	ldr R0, [R0,#0x28]
	ldr R1, off_8028664 // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
loc_8028536:
	ldr R1, [SP,#4]
	ldrb R0, [R1,#7]
	ldrb R1, [R1,#9]
	cmp R0, #2
	ble loc_8028544
	mov R0, #0
	b loc_802854C
loc_8028544:
	mov r2, #0x20 
	tst R1, R2
	beq loc_802854C
	mov R0, #3
loc_802854C:
	mov r2, #0x20 
	mul R0, R2
	ldr R1, off_8028818 // =byte_86E587C 
	add r0, r0, r1
	ldr R1, off_802881C // =unk_3001A80 
	bl loc_8000AC8
	ldr R0, [SP]
	lsr r0, r0, #9
	cmp R0, #0x1C
	bne loc_8028564
	mov R0, #0x1B
loc_8028564:
	mov r1, #0x40 
	mul R0, R1
	ldr R1, off_8028640 // =dword_86E2E98 
	add r0, r0, r1
	ldr R1, dword_8028644 // =0x6009AA0 
	mov r2, #0x40 
	bl loc_8000AC8
	ldr R0, [SP,#4]
	ldrb R1, [R0,#9]
	mov R2, #0x12
	and R1, R2
	str R1, [SP,#8]
	ldrb R0, [R0,#6]
	push {r0}
	mov R2, #0x80
	mul R0, R2
	ldr R1, off_8028648 // =dword_86E3598 
	add r0, r0, r1
	ldr R1, dword_802864C // =0x6009AE0 
	bl loc_8000AC8
	pop {r0}
	mov R2, #0xC
	mul R0, R2
	ldr R1, off_8028680 // =dword_86E3B18 
	add r0, r0, r1
	ldr R1, off_8028684 // =unk_3001AD4 
	bl loc_8000AC4
	ldr R0, [SP,#8]
	cmp R0, #0
	beq loc_80285C6
	ldr R0, [SP]
	cmp r0, #0x55 
	bne loc_80285B8
	mov R4, #0xAA
	lsl r4, r4, #4
	add R4, #0xA
	mov R0, #3
	str R0, [SP,#8]
	b loc_80285D4
loc_80285B8:
	ldr R0, [SP,#0xC]
	bl sub_8000C00
	add r4, r0, #0
	bl sub_8000C5C
	str R0, [SP,#8]
loc_80285C6:
	mov R3, #3
	sub r3, r3, r0
	beq loc_80285D4
	ldr R0, off_8028668 // =byte_802A6C0 
	ldr R1, dword_8028654 // =0x6009B60 
	bl sub_802868C
loc_80285D4:
	ldr R3, [SP,#8]
	cmp R3, #0
	beq loc_80285FA
	ldr R1, dword_8028658 // =0x6009BE0 
loc_80285DC:
	mov R0, #0xF
	and R0, R4
	lsr r4, r4, #4
	mov r2, #0x40 
	mul R0, R2
	ldr R2, off_8028650 // =dword_86E411C 
	add r0, r0, r2
	mov r2, #0x40 
	push {r3}
	bl loc_8000AC8
	pop {r3}
	sub r1, #0x40 
	sub R3, #1
	bne loc_80285DC
loc_80285FA:
	add sp, sp, #0x10
	pop {r4,pc}
.func
.thumb_func
sub_80285FE:
	push {r4,lr}
	push {R0-R7}
	bl sub_8027D10
	ldr R2, off_8028674 // =byte_203C4E0 
	ldr R3, dword_8028678 // =0x6009360 
	mov R4, #8
	mov R5, #1
	ldr R6, off_802867C // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
.endfunc // sub_80285FE

	pop {R0-R7}
	ldr R1, dword_8028688 // =0x1FF 
	and R0, R1
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldr R0, [R0,#0x24]
	cmp R0, #0
	beq loc_802863A
	ldr R1, dword_802865C // =0x6009560 
	ldr R2, off_8028660 // =0x540 
	bl loc_8000AC8
	ldr R0, [R4,#0x28]
	ldr R1, off_8028664 // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
loc_802863A:
	bl sub_802869E
	pop {r4,pc}
off_8028640: .word dword_86E2E98
dword_8028644: .word 0x6009AA0
off_8028648: .word dword_86E3598
dword_802864C: .word 0x6009AE0
off_8028650: .word dword_86E411C
dword_8028654: .word 0x6009B60
dword_8028658: .word 0x6009BE0
dword_802865C: .word 0x6009560
off_8028660: .word 0x540
off_8028664: .word unk_3001AA0
off_8028668: .word byte_802A6C0
	.word byte_802A680
	.word byte_203C4E0
off_8028674: .word byte_203C4E0
dword_8028678: .word 0x6009360
off_802867C: .word dword_86B7AE0
off_8028680: .word dword_86E3B18
off_8028684: .word unk_3001AD4
dword_8028688: .word 0x1FF
.func
.thumb_func
sub_802868C:
	push {R0-R4,lr}
	add r4, r3, #0
	mov r2, #0x40 
loc_8028692:
	bl loc_8000AC8
.endfunc // sub_802868C

	add r1, r1, r2
	sub R4, #1
	bne loc_8028692
	pop {R0-R4,pc}
.func
.thumb_func
sub_802869E:
	push {lr}
	ldr R1, dword_80286C0 // =0x6009AA0 
	ldr R0, off_80286D0 // =byte_802A6C0 
	mov R3, #1
	bl sub_802868C
	ldr R1, dword_80286C4 // =0x6009AE0 
	ldr R0, off_80286CC // =byte_802A680 
	mov R3, #2
	bl sub_802868C
	ldr R1, dword_80286C8 // =0x6009B60 
	ldr R0, off_80286D0 // =byte_802A6C0 
	mov R3, #3
	bl sub_802868C
	pop {pc}
dword_80286C0: .word 0x6009AA0
dword_80286C4: .word 0x6009AE0
dword_80286C8: .word 0x6009B60
off_80286CC: .word byte_802A680
off_80286D0: .word byte_802A6C0
.endfunc // sub_802869E

.func
.thumb_func
sub_80286D4:
	push {lr}
	bl sub_80287D2
	ldr R0, off_8028704 // =off_8028708 
	ldrb R1, [R5,#8]
	cmp R1, #0
	beq loc_80286E4
	mov R1, #4
loc_80286E4:
	push {r1}
	ldr R0, [R0,R1]
	ldr R1, dword_80287F0 // =0x6009560 
	ldr R2, off_80287F4 // =0x540 
	bl loc_8000AC8
.endfunc // sub_80286D4

	pop {r1}
	ldr R0, off_8028710 // =off_8028714 
	ldr R0, [R0,R1]
	ldr R1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
	bl sub_802869E
	pop {pc}
off_8028704: .word off_8028708
off_8028708: .word dword_8722AF4
	.word dword_87225B4
off_8028710: .word off_8028714
off_8028714: .word dword_8725874
	.word dword_87257F4
.func
.thumb_func
sub_802871C:
	push {lr}
	bl sub_80287D2
	ldr R0, off_802874C // =byte_8723034 
	ldr R1, dword_80287F0 // =0x6009560 
	ldr R2, off_80287F4 // =0x540 
	bl loc_8000AC8
.endfunc // sub_802871C

	mov R0, #0xB
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R0, [R0,#6]
	mov r1, #0x20 
	mul R1, R0
	ldr R0, off_8028750 // =dword_8725814 
	add r0, r0, r1
	ldr R1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
	bl sub_802869E
	pop {pc}
	.balign 4, 0x00
off_802874C: .word byte_8723034
off_8028750: .word dword_8725814
.func
.thumb_func
sub_8028754:
	push {lr}
	bl sub_80287D2
	ldr R0, off_8028774 // =dword_87225B4 
	ldr R1, dword_80287F0 // =0x6009560 
	ldr R2, off_80287F4 // =0x540 
	bl loc_8000AC8
.endfunc // sub_8028754

	ldr R0, off_8028778 // =dword_87257D4 
	ldr R1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
	bl sub_802869E
	pop {pc}
off_8028774: .word dword_87225B4
off_8028778: .word dword_87257D4
.func
.thumb_func
sub_802877C:
	push {lr}
	bl sub_80287D2
	ldr R0, off_802879C // =dword_8733E74 
	ldr R1, dword_80287F0 // =0x6009560 
	ldr R2, off_80287F4 // =0x540 
	bl loc_8000AC8
.endfunc // sub_802877C

	ldr R0, off_80287A0 // =dword_87343D4 
	ldr R1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
	bl sub_802869E
	pop {pc}
off_802879C: .word dword_8733E74
off_80287A0: .word dword_87343D4
.func
.thumb_func
sub_80287A4:
	push {lr}
	ldrb R1, [R0]
	cmp R1, #5
	bne loc_80287AE
	sub R0, #0xC
loc_80287AE:
	ldrb R0, [R0,#4]
	push {r0}
	bl sub_80287D2
	ldr R0, off_80287EC // =dword_8722AF4 
	ldr R1, dword_80287F0 // =0x6009560 
	ldr R2, off_80287F4 // =0x540 
	bl loc_8000AC8
.endfunc // sub_80287A4

	ldr R0, off_80287F8 // =dword_8725854 
	ldr R1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
	bl sub_802869E
	pop {r0}
	pop {pc}
.func
.thumb_func
sub_80287D2:
	push {lr}
	ldr R1, dword_8028808 // =0x6009360 
	ldr R0, off_802880C // =byte_802A6C0 
	mov R3, #8
	bl sub_802868C
	ldr R0, off_8028818 // =byte_86E587C 
	ldr R1, off_802881C // =unk_3001A80 
	mov r2, #0x20 
	bl loc_8000AC8
.endfunc // sub_80287D2

	pop {pc}
	.balign 4, 0x00
off_80287EC: .word dword_8722AF4
dword_80287F0: .word 0x6009560
off_80287F4: .word 0x540
off_80287F8: .word dword_8725854
off_80287FC: .word unk_3001AA0
	.word 0x6009AA0
	.word byte_802A6C0
dword_8028808: .word 0x6009360
off_802880C: .word byte_802A6C0
	.word dword_86E411C
	.word 0x6009BE0
off_8028818: .word byte_86E587C
off_802881C: .word unk_3001A80
.func
.thumb_func
sub_8028820:
	push {R4-R6,lr}
	ldrb R0, [R5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R0, [R0]
	lsl r0, r0, #2
	ldr R1, off_8028868 // =jt_802886C 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	ldr R5, [R5,#0x40]
	mov R4, #1
	lsr r5, r5, #3
	and R5, R4
	sub R0, #3
	sub R1, #3
	lsl r0, r0, #0x10
	add r0, r0, r1
	add r4, r0, #0
	mov R2, #1
	mov R3, #0
	ldr R1, dword_8028864 // =0xB764 
	add r1, r1, r5
	lsl r5, r5, #4
	add r5, r5, r6
	mov R6, #0xC
loc_8028854:
	ldr R0, [R5,R6]
	add r0, r0, r4
	bl sub_8009FF8
	sub R6, #4
	bpl loc_8028854
	pop {R4-R6,pc}
	.balign 4, 0x00
dword_8028864: .word 0xB764
off_8028868: .word jt_802886C
jt_802886C: .word sub_8028894+1
	.word sub_80288D0+1
	.word sub_8028904+1
	.word sub_8028968+1
	.word sub_8028938+1
	.word sub_8028938+1
	.word sub_8028894+1
	.word sub_8028894+1
	.word sub_8028938+1
	.word sub_8028938+1
.endfunc // sub_8028820

.func
.thumb_func
sub_8028894:
	push {lr}
	ldr R6, off_80288AC // =dword_80288B0 
	mov R1, #0
	ldrb R0, [R5,#7]
	cmp R0, #5
	blt loc_80288A4
	mov R1, #0x18
	sub R0, #5
loc_80288A4:
	lsl r0, r0, #4
	add R0, #8
	add r1, #0x68 
	pop {pc}
off_80288AC: .word dword_80288B0
dword_80288B0: .word 0x0
	.word 0x100E0000, 0x300E000E, 0x2000000E, 0x10001, 0x100C0001
	.word 0x300C000C, 0x2001000C
.endfunc // sub_8028894

.func
.thumb_func
sub_80288D0:
	push {lr}
	mov r0, #0x58 
	mov r1, #0x70 
	add R0, #3
	sub R1, #2
	ldr R6, off_80288E0 // =dword_80288E4 
	pop {pc}
	.byte 0, 0
off_80288E0: .word dword_80288E4
dword_80288E4: .word 0x10002
	.word 0x10160002
	.word 0x30160014
	.word 0x20010014
	.word 0x30004
	.word 0x10140004
	.word 0x30140012
	.word 0x20030012
.endfunc // sub_80288D0

.func
.thumb_func
sub_8028904:
	push {lr}
	mov r0, #0x58 
	mov R1, #0x88
	add R0, #3
	sub R1, #1
	ldr R6, off_8028914 // =dword_8028918 
	pop {pc}
	.balign 4, 0x00
off_8028914: .word dword_8028918
dword_8028918: .word 0x10002
	.word 0x10160002
	.word 0x3016000E
	.word 0x2001000E
	.word 0x20003
	.word 0x10150003
	.word 0x3015000D
	.word 0x2002000D
.endfunc // sub_8028904

.func
.thumb_func
sub_8028938:
	push {lr}
	mov r0, #0x38 
	mov R1, #0x80
	ldr R6, off_8028944 // =byte_8028948 
	pop {pc}
	.balign 4, 0x00
off_8028944: .word byte_8028948
byte_8028948: .byte 0x2, 0x0, 0x2, 0x0, 0x2, 0x0, 0x1C, 0x10, 0x14, 0x0, 0x1C, 0x30
	.byte 0x14, 0x0, 0x2, 0x20, 0x4, 0x0, 0x4, 0x0, 0x4, 0x0, 0x1A, 0x10
	.byte 0x12, 0x0, 0x1A, 0x30, 0x12, 0x0, 0x4, 0x20
.endfunc // sub_8028938

.func
.thumb_func
sub_8028968:
	push {lr}
	mov r0, #0x58 
	mov R1, #0x88
	add R0, #3
	sub R1, #2
	ldr R6, off_8028978 // =dword_802897C 
	pop {pc}
	.balign 4, 0x00
off_8028978: .word dword_802897C
dword_802897C: .word 0x20002
	.word 0x10160002
	.word 0x3016000E
	.word 0x2002000E
	.word 0x30003
	.word 0x10150003
	.word 0x3015000D
	.word 0x2003000D
.endfunc // sub_8028968

.func
.thumb_func
sub_802899C:
	push {R4-R6,lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0x17]
	cmp R0, #0
	beq locret_80289CE
	ldr R5, [R5,#0x40]
	mov R4, #7
	and R4, R5
	bne loc_80289C2
	mov R3, #8
	and R3, R5
	lsl r3, r3, #6
	ldr R0, off_80289D8 // =dword_86E1238 
	ldr R1, dword_80289DC // =0x6016CC0 
	ldr R2, off_80289E0 // =0x200 
	add r0, r0, r3
	bl loc_8000AC8
loc_80289C2:
	ldr R0, dword_80289D0 // =0x80020064 
	ldr R1, dword_80289D4 // =0xB766 
	mov R2, #1
	mov R3, #0
	bl sub_8009FF8
locret_80289CE:
	pop {R4-R6,pc}
dword_80289D0: .word 0x80020064
dword_80289D4: .word 0xB766
off_80289D8: .word dword_86E1238
dword_80289DC: .word 0x6016CC0
off_80289E0: .word 0x200
.endfunc // sub_802899C

.func
.thumb_func
sub_80289E4:
	push {R4-R6,lr}
	mov R0, #8
	mov R1, #8
	ldrb R2, [R5,#0x1B]
	mov R3, #0x10
	mul R2, R3
	add r1, r1, r2
	ldr R5, [R5,#0x40]
	mov R4, #1
	lsr r5, r5, #3
	and R5, R4
	sub R0, #3
	sub R1, #3
	lsl r0, r0, #0x10
	add r0, r0, r1
	add r4, r0, #0
	mov R2, #1
	mov R3, #0
	ldr R1, dword_8028A28 // =0xE792 
	add r1, r1, r5
	add r1, r1, r5
	ldr R5, off_8028A2C // =byte_8028A30 
	mov R6, #0
loc_8028A12:
	ldr R0, [R5,R6]
	add r0, r0, r4
	cmp R6, #0x10
	bne loc_8028A1C
	add R1, #1
loc_8028A1C:
	bl sub_8009FF8
	add R6, #4
	cmp r6, #0x48 
	blt loc_8028A12
	pop {R4-R6,pc}
dword_8028A28: .word 0xE792
off_8028A2C: .word byte_8028A30
byte_8028A30: .byte 0x2, 0x0, 0x3, 0x0, 0x2, 0x0, 0x43, 0x10, 0xC, 0x0, 0x43, 0x30, 0xC
	.byte 0x0, 0x3, 0x20, 0x2, 0x0, 0xB, 0x0, 0x2, 0x0, 0x13, 0x0, 0x2, 0x0
	.byte 0x1B, 0x0, 0x2, 0x0, 0x23, 0x0, 0x2, 0x0, 0x2B, 0x0, 0x2, 0x0, 0x33
	.byte 0x0, 0x2, 0x0, 0x3B, 0x0, 0xC, 0x0, 0xB, 0x20, 0xC, 0x0, 0x13, 0x20
	.byte 0xC, 0x0, 0x1B, 0x20, 0xC, 0x0, 0x23, 0x20, 0xC, 0x0, 0x2B, 0x20, 0xC
	.byte 0x0, 0x33, 0x20, 0xC, 0x0, 0x3B, 0x20
.endfunc // sub_80289E4

.func
.thumb_func
sub_8028A78:
	push {r4,lr}
	ldrb R4, [R5,#0x1B]
	ldrb R0, [R5,#0x19]
	tst R0, R0
	bne loc_8028B00
	ldrh R0, [R7,#4]
	mov r1, #0x40 
	tst R0, R1
	beq loc_8028A98
	sub R4, #1
	cmp R4, #0
	bge loc_8028AAA
	ldrb R1, [R5,#0x18]
	sub R1, #1
	add r4, r1, #0
	b loc_8028AAA
loc_8028A98:
	mov R1, #0x80
	tst R0, R1
	beq loc_8028ABA
	add R4, #1
	ldrb R1, [R5,#0x18]
	sub R1, #1
	cmp R4, R1
	ble loc_8028AAA
	mov R4, #0
loc_8028AAA:
	strb R4, [R5,#0x1B]
	ldrb R0, [R5,#0x18]
	cmp R0, #1
	ble locret_8028B66
	mov R0, #0x7F
	bl sound_play // () -> void
	b locret_8028B66
loc_8028ABA:
	ldrh R0, [R7,#2]
	mov R1, #1
	tst R0, R1
	beq loc_8028B00
	bl sub_80298F4
	cmp R0, #0
	bne locret_8028B66
	add r0, r4, #0
	ldr R1, dword_8028B70 // =0x55 
	add r1, r1, r0
	ldrb R0, [R5,R1]
	cmp R0, #1
	beq loc_8028AF8
	mov R0, #1
	strb R0, [R5,R1]
	add r0, r4, #0
	ldr R1, off_8028B6C // =0x50 
	add r1, r1, r0
	ldrb R0, [R5,R1]
	strb R0, [R5,#0x1A]
	mov R0, #1
	strb R0, [R5,#0x19]
	mov R0, #0x81
	bl sound_play // () -> void
	mov r0, #0x5c 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8028B66
loc_8028AF8:
	mov r0, #0x69 
	bl sound_play // () -> void
	b locret_8028B66
loc_8028B00:
	ldrh R0, [R7,#2]
	mov R1, #2
	tst R0, R1
	beq loc_8028B1A
	bl sub_8029B1C
	cmp R0, #0
	bne locret_8028B66
	mov r0, #0x50 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8028B66
loc_8028B1A:
	mov R1, #8
	tst R0, R1
	beq loc_8028B34
	mov R1, #0xA
	strb R1, [R5,#7]
	mov r0, #0x50 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0x7F
	bl sound_play // () -> void
	b locret_8028B66
loc_8028B34:
	mov R1, #4
	tst R0, R1
	beq loc_8028B3C
	b locret_8028B66
loc_8028B3C:
	ldr R1, off_8028CC4 // =0x100 
	tst R0, R1
	beq locret_8028B66
	ldrb R0, [R5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr R0, off_8028B68 // =dword_86EF4D4 
	ldrb R1, [R5,#0x1B]
	ldr R2, off_8028B6C // =0x50 
	add r2, r2, r1
	ldrb R1, [R5,R2]
	add R1, #5
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #0x9C
	bl sound_play // () -> void
	mov r0, #0x58 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8028B66:
	pop {r4,pc}
off_8028B68: .word dword_86EF4D4
off_8028B6C: .word 0x50
dword_8028B70: .word 0x55
.endfunc // sub_8028A78

.func
.thumb_func
sub_8028B74:
	push {r4,lr}
	ldrb R0, [R5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrh R0, [R7,#4]
	mov R1, #0xC0
	tst R0, R1
	beq loc_8028BC2
	push {r0}
	bl sub_802D234
	cmp R0, #1
	pop {r0}
	beq loc_8028BBE
	ldrb R2, [R5,#0x10]
	cmp R2, #0
	bne loc_8028BBE
	ldrb R2, [R5,#0x17]
	tst R2, R2
	bne loc_8028BBE
	ldrb R2, [R5,#0x18]
	tst R2, R2
	beq loc_8028BBE
	mov r1, #0x40 
	tst R0, R1
	beq loc_8028BBE
	ldrb R0, [R5,#7]
	cmp R0, #0xA
	beq loc_8028BB4
	cmp R0, #4
	bgt loc_8028BBE
loc_8028BB4:
	mov r0, #0x4c 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8028C96
loc_8028BBE:
	ldrb R0, [R4,#1]
	b loc_8028BD4
loc_8028BC2:
	mov r1, #0x20 
	tst R0, R1
	beq loc_8028BCC
	ldrb R0, [R4,#2]
	b loc_8028BD4
loc_8028BCC:
	mov R1, #0x10
	tst R0, R1
	beq loc_8028BEC
	ldrb R0, [R4,#3]
loc_8028BD4:
	cmp R0, #0xFF
	beq locret_8028C96
loc_8028BD8:
	ldrb R1, [R5,#7]
	cmp R0, R1
	beq loc_8028BE6
	strb R0, [R5,#7]
	mov R0, #0x7F
	bl sound_play // () -> void
loc_8028BE6:
	bl sub_8028476
	b locret_8028C96
loc_8028BEC:
	ldrh R0, [R7,#2]
	mov R1, #1
	tst R0, R1
	beq loc_8028C18
	bl sub_80298F4
	cmp R0, #0
	bne locret_8028C96
	ldrb R0, [R4]
	lsl r0, r0, #2
	ldr R1, off_8028C98 // =off_8028C9C 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	cmp R0, #0
	bne locret_8028C96
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq locret_8028C96
	bl sub_8029A56
	b locret_8028C96
loc_8028C18:
	mov R1, #2
	tst R0, R1
	beq loc_8028C2C
	bl sub_8029B1C
	cmp R0, #0
	bne locret_8028C96
	bl sub_8029032
	b locret_8028C96
loc_8028C2C:
	mov R1, #8
	tst R0, R1
	beq loc_8028C36
	mov R0, #0xA
	b loc_8028BD8
loc_8028C36:
	mov R1, #4
	tst R0, R1
	beq loc_8028C46
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8028C96
loc_8028C46:
	ldr R1, off_8028CC4 // =0x100 
	tst R0, R1
	beq loc_8028C80
	ldrb R0, [R5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #6
	beq loc_8028C60
	cmp R1, #7
	beq loc_8028C60
	cmp R1, #0
	bne locret_8028C96
loc_8028C60:
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	bl chip_getScript_8027D34 // (int chipID) -> void*
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #0x9C
	bl sound_play // () -> void
	mov R0, #0x18
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8028C96
loc_8028C80:
	ldr R1, off_8028CC8 // =0x200 
	tst R0, R1
	beq locret_8028C96
	bl sub_802D234
	cmp R0, #1
	beq locret_8028C96
	mov R0, #0x1C
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8028C96:
	pop {r4,pc}
off_8028C98: .word off_8028C9C
off_8028C9C: .word sub_8028CCC+1
	.word sub_8028D3A+1
	.word sub_8028D6C+1
	.word sub_8028DBC+1
	.word sub_8028DD6+1
	.word sub_8028DD6+1
	.word locret_8028E30+1
	.word locret_8028E30+1
	.word sub_8028E04+1
	.word sub_8028E04+1
off_8028CC4: .word 0x100
off_8028CC8: .word 0x200
.endfunc // sub_8028B74

.func
.thumb_func
sub_8028CCC:
	push {lr}
	ldrb R0, [R4,#7]
	cmp R0, #0
	bne loc_8028D30
	ldrb R0, [R5,#8]
	cmp R0, #5
	bge loc_8028D30
	add r1, r0, #1
	strb R1, [R5,#8]
	add r0, #0x48 
	ldrb R1, [R5,#7]
	strb R1, [R5,R0]
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	ldrb R1, [R5,#8]
	sub R1, #1
	bl sub_80281D4
	ldrb R0, [R5,#8]
	sub R0, #1
	mov R1, #1
	mov R2, #0
	bl sub_8029CD4
	ldrb R0, [R5,#7]
	bl sub_8028238
	mov R0, #2
	strb R0, [R4,#7]
	bl sub_8028E32
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, #1
	strb R0, [R5,#0xF]
	mov R0, #0
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl sub_802A00C
	tst R0, R0
	beq locret_8028D38
	mov r0, #0x44 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_8028D38
loc_8028D30:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov R0, #1
locret_8028D38:
	pop {pc}
.endfunc // sub_8028CCC

.func
.thumb_func
sub_8028D3A:
	push {lr}
	bl sub_8029110
	bl sub_80293F8
	ldrb R0, [R5,#0x19]
	tst R0, R0
	beq loc_8028D50
	bl sub_802937A
	b loc_8028D5A
loc_8028D50:
	ldrh R0, [R5,#0x3A]
	tst R0, R0
	beq loc_8028D5A
	bl sub_80293B0
loc_8028D5A:
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0x82
	bl sound_play // () -> void
	mov R0, #0
	pop {pc}
.endfunc // sub_8028D3A

.func
.thumb_func
sub_8028D6C:
	push {lr}
	ldrb R0, [R4,#7]
	cmp R0, #0
	bne loc_8028DB2
	ldrb R0, [R5,#8]
	cmp R0, #5
	bge loc_8028DB2
	add r1, r0, #1
	strb R1, [R5,#8]
	add r0, #0x48 
	ldrb R1, [R5,#7]
	strb R1, [R5,R0]
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl sub_802A034
	ldrb R1, [R5,#8]
	sub R1, #1
	bl sub_80281D4
	ldrb R0, [R5,#8]
	sub R0, #1
	mov R1, #1
	mov R2, #0
	bl sub_8029CD4
	mov R0, #0x81
	bl sound_play // () -> void
	mov r0, #0x48 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0
	b locret_8028DBA
loc_8028DB2:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov R0, #1
locret_8028DBA:
	pop {pc}
.endfunc // sub_8028D6C

.func
.thumb_func
sub_8028DBC:
	push {lr}
	bl sub_800A7E2
	bl sub_802D064
	mov R1, #1
	strb R1, [R0,#8]
	ldr R0, off_8028F80 // =dword_20349A0 
	strb R1, [R0,#0x4] // (byte_20349A4 - 0x20349A0)
	bl sub_8028D3A
	mov R0, #0
	pop {pc}
.endfunc // sub_8028DBC

.func
.thumb_func
sub_8028DD6:
	push {lr}
	ldrb R1, [R4]
	cmp R1, #5
	bne loc_8028DE0
	sub R4, #0xC
loc_8028DE0:
	ldrb R0, [R4,#7]
	cmp R0, #0
	bne loc_8028DFA
	mov r0, #0x28 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0x83
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0
	b locret_8028E02
loc_8028DFA:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov R0, #1
locret_8028E02:
	pop {pc}
.endfunc // sub_8028DD6

.func
.thumb_func
sub_8028E04:
	push {r6,r7,lr}
	ldrb R1, [R4]
	cmp R1, #9
	bne loc_8028E0E
	sub R4, #0xC
loc_8028E0E:
	ldrb R0, [R4,#7]
	cmp R0, #0
	bne loc_8028E26
	mov R0, #0x81
	bl sound_play // () -> void
	mov r0, #0x38 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0
	b locret_8028E2E
loc_8028E26:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov R0, #1
locret_8028E2E:
	pop {r6,r7,pc}
.endfunc // sub_8028E04

locret_8028E30:
	mov PC, LR
.func
.thumb_func
sub_8028E32:
	push {lr}
	bl sub_8028E4C
	bl updateCustomScreen_WhenUnselectingChip_8028EC8 // () -> void
	bl sub_8028F48
	bl sub_8028F84
	mov R0, #0
	bl loc_8028250
	pop {pc}
.endfunc // sub_8028E32

.func
.thumb_func
sub_8028E4C:
	push {r4,r6,r7,lr}
	mov R6, #0
	sub R6, #1
	mov R7, #0x1A
	mov R0, #0
	strb R0, [R5,#0xA]
	ldrb R3, [R5,#8]
	cmp R3, #0
	beq loc_8028EC2
	mov r4, #0x48 
loc_8028E60:
	push {r3}
	ldrb R0, [R5,R4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_8028EBC
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	push {r0}
	bl chipIDIs13f_8029FF4 // (int a1) -> bool
	tst R0, R0
	pop {r0}
	bne loc_8028EBC
	cmp R1, #0x1B
	blt loc_8028E96
	cmp R1, #0x1C
	bgt loc_8028E96
	strb R1, [R5,#0xA]
	b loc_8028EBC
loc_8028E96:
	cmp R1, #0x1A
	beq loc_8028EA8
	cmp R7, #0x1A
	beq loc_8028EA6
	cmp R7, R1
	beq loc_8028EA8
	mov R7, #0xFF
	b loc_8028EA8
loc_8028EA6:
	add r7, r1, #0
loc_8028EA8:
	mov R1, #0
	sub R1, #1
	cmp R1, R6
	beq loc_8028EBA
	cmp R0, R6
	beq loc_8028EBC
	mov R6, #0
	sub R6, #2
	b loc_8028EBC
loc_8028EBA:
	add r6, r0, #0
loc_8028EBC:
	add R4, #1
	sub R3, #1
	bne loc_8028E60
loc_8028EC2:
	strh R6, [R5,#0x20]
	strb R7, [R5,#9]
	pop {r4,r6,r7,pc}
.endfunc // sub_8028E4C

.func
.thumb_func
// () -> void
updateCustomScreen_WhenUnselectingChip_8028EC8:
	push {r4,r6,r7,lr}
	mov R0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	// save active chips
	add r4, r0, #0
	// max 10 in memory
	mov R3, #0xA
chipCodeSelectLoopStar_8028ED4:
	// check if the slot contains a chip?
	ldrb R0, [R4]
	cmp R0, #0
	bne chipCodeSelectLoopInc_8028F40
	// check if the chip is already selected
	ldrb R0, [R4,#7]
	cmp R0, #2
	beq chipCodeSelectLoopInc_8028F40
	// check number of selected chips
	ldrb R0, [R5,#8]
	cmp R0, #5
	bge chipCodeSelectFalse_8028F3C
	// load pointer
	// load chip data
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	// code
	lsr r1, r0, #9
	// ID
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	// assume chip can be selected
	mov R6, #0
	push {r0}
	bl chipIDIs13f_8029FF4 // (int a1) -> bool
	tst R0, R0
	pop {r0}
	bne chipCodeSelectTrue_8028F3E
	// codes 0x1b, 0x1c are special codes
	cmp R1, #0x1B
	blt chipCodeSelectNormal_8028F16
	cmp R1, #0x1C
	bgt chipCodeSelectNormal_8028F16
	// special active chip code
	ldrb R0, [R5,#0xA]
	cmp R0, #0
	beq chipCodeSelectTrue_8028F3E
	// if the active code is not the special chip codoe
	// return false!
	cmp R0, R1
	bne chipCodeSelectFalse_8028F3C
	b chipCodeSelectTrue_8028F3E
chipCodeSelectNormal_8028F16:
	mov r7, #0x20 
	// r2 = active chip
	ldrsh R2, [R5,R7]
	mov R7, #0
	sub R7, #1
	// if active chip == -1: any chip works
	cmp R2, R7
	beq chipCodeSelectMonocode_8028F26
	// the only case chip code is ignores is
	// if all chips are the same type
	cmp R0, R2
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectMonocode_8028F26:
	// at this point, all chips are different?
	// if not monocode, can't be selected
	ldrb R2, [R5,#9]
	cmp R2, #0xFF
	beq chipCodeSelectFalse_8028F3C
	// check if all chips are (*) so far
	cmp R2, #0x1A
	bgt chipCodeSelectNotStar_8028F32
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectNotStar_8028F32:
	// check if selected chip is (*)
	cmp R1, #0x1A
	bgt chipCodeSelectNotStar2_8028F38
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectNotStar2_8028F38:
	// check if the selected chip has the same code as active code
	cmp R1, R2
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectFalse_8028F3C:
	mov R6, #1
chipCodeSelectTrue_8028F3E:
	strb R6, [R4,#7]
chipCodeSelectLoopInc_8028F40:
	// increment loop
	add R4, #0xC
	sub R3, #1
	bne chipCodeSelectLoopStar_8028ED4
	pop {r4,r6,r7,pc}
.endfunc // updateCustomScreen_WhenUnselectingChip_8028EC8

.func
.thumb_func
sub_8028F48:
	push {r4,r6,r7,lr}
	mov R0, #0xB
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrb R0, [R4]
	cmp R0, #2
	bne locret_8028F7C
	ldrb R0, [R4,#7]
	cmp R0, #2
	beq locret_8028F7C
	ldrb R0, [R5,#8]
	cmp R0, #5
	bge loc_8028F78
	bl sub_802A57E
	tst R0, R0
	beq loc_8028F78
	ldrb R0, [R5,#0x19]
	tst R0, R0
	bne loc_8028F78
	mov R0, #0
	strb R0, [R4,#7]
	b locret_8028F7C
loc_8028F78:
	mov R0, #1
	strb R0, [R4,#7]
locret_8028F7C:
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_8028F80: .word dword_20349A0
.endfunc // sub_8028F48

.func
.thumb_func
sub_8028F84:
	push {r4,r6,r7,lr}
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrb R0, [R4]
	cmp R0, #8
	bne locret_8028FBE
	ldrb R0, [R4,#7]
	cmp R0, #2
	beq locret_8028FBE
	ldrb R0, [R4,#7]
	cmp R0, #3
	beq loc_8028FBA
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_8028FBA
	add r0, #0x47 
	ldrb R0, [R5,R0]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_8028FBA
	mov R0, #0
	strb R0, [R4,#7]
	b locret_8028FBE
loc_8028FBA:
	mov R0, #1
	strb R0, [R4,#7]
locret_8028FBE:
	pop {r4,r6,r7,pc}
.endfunc // sub_8028F84

	push {r4,r6,r7,lr}
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrb R0, [R4]
	cmp R0, #6
	bne locret_8029030
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_802901C
	add r0, #0x47 
	ldrb R0, [R5,R0]
	add r7, r0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_802901C
	ldrb R1, [R0,#5]
	cmp R1, #0
	bne loc_802901C
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	add r6, r0, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov R1, #2
	tst R0, R1
	beq loc_802901C
	ldrb R0, [R4,#7]
	cmp R0, #2
	beq loc_8029010
	mov R0, #0
	strb R0, [R4,#7]
loc_8029010:
	ldrb R0, [R4,#0x13]
	cmp R0, #2
	beq locret_8029030
	mov R0, #0
	strb R0, [R4,#0x13]
	b locret_8029030
loc_802901C:
	ldrb R0, [R4,#7]
	cmp R0, #2
	beq loc_8029026
	mov R0, #1
	strb R0, [R4,#7]
loc_8029026:
	ldrb R0, [R4,#0x13]
	cmp R0, #2
	beq locret_8029030
	mov R0, #1
	strb R0, [R4,#0x13]
locret_8029030:
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_8029032:
	push {r4,lr}
	ldrb R0, [R5,#8]
	cmp R0, #0
	bne loc_8029066
	ldrb R0, [R5,#0x19]
	tst R0, R0
	bne loc_8029048
	mov r0, #0x69 
	bl sound_play // () -> void
	b locret_8029104
loc_8029048:
	ldrb R0, [R5,#0x1B]
	ldr R1, dword_802910C // =0x55 
	add r1, r1, r0
	mov R0, #0
	strb R0, [R5,R1]
	mov R0, #0
	strb R0, [R5,#0x1A]
	strb R0, [R5,#0x19]
	mov R0, #0xD3
	add R0, #0xFF
	bl sound_play // () -> void
	bl sub_802A0EC
	b loc_80290F6
loc_8029066:
	add r0, #0x47 
	ldrb R0, [R5,R0]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	add r4, r0, #0
	ldrb R0, [R4]
	cmp R0, #2
	bne loc_80290A4
	ldrb R1, [R5,#8]
	sub R1, #1
	strb R1, [R5,#8]
	ldr R0, dword_8029108 // =0x1FF 
	bl sub_80281D4
	ldrb R0, [R5,#8]
	mov R1, #0
	mov R2, #0
	bl sub_8029CD4
	bl sub_802A0EC
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xD3
	add R0, #0xFF
	bl sound_play // () -> void
	mov R0, #0
	strb R0, [R5,#0x17]
	b loc_80290F2
loc_80290A4:
	ldr R0, [R4,#8]
	ldrh R0, [R0]
	bl sub_802A00C
	tst R0, R0
	beq loc_80290C2
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xD3
	add R0, #0xFF
	bl sound_play // () -> void
	bl sub_802A0EC
loc_80290C2:
	ldrb R1, [R5,#8]
	sub R1, #1
	strb R1, [R5,#8]
	ldr R0, dword_8029108 // =0x1FF 
	bl sub_80281D4
	ldrb R0, [R5,#8]
	mov R1, #0
	mov R2, #0
	bl sub_8029CD4
	ldrb R0, [R4,#5]
	cmp R0, #0
	beq loc_80290F2
	mov R1, #0
	strb R1, [R4,#5]
	ldrb R1, [R4,#4]
	mov r2, #0x3e 
	bic R1, R2
	strb R1, [R4,#4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov R1, #0
	strb R1, [R0,#7]
loc_80290F2:
	mov R0, #0
	strb R0, [R4,#7]
loc_80290F6:
	bl sub_8028E32
	bl sub_8028476
	mov R0, #0x83
	bl sound_play // () -> void
locret_8029104:
	pop {r4,pc}
	.balign 4, 0x00
dword_8029108: .word 0x1FF
dword_802910C: .word 0x55
.endfunc // sub_8029032

.func
.thumb_func
sub_8029110:
	push {r4,r6,r7,lr}
	mov R0, #0x14
	strb R0, [R5,#0xB]
	// memBlock
	ldr R0, off_80293D4 // =dword_2033000 
	// size
	mov r1, #0x48 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R4, off_80293D4 // =dword_2033000 
	ldr R6, off_80293CC // =byte_20366C0 
	mov R3, #6
	mov R0, #0
	sub R0, #1
loc_8029128:
	strh R0, [R4]
	strh R0, [R6,#0x32]
	add R4, #2
	add R6, #2
	sub R3, #1
	bne loc_8029128
	ldr R4, off_80293D4 // =dword_2033000 
	ldrb R7, [R5,#8]
	cmp R7, #0
	beq loc_80291E6
	mov r6, #0x48 
	ldr R3, off_80293CC // =byte_20366C0 
loc_8029140:
	ldrb R0, [R5,R6]
	push {r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb R1, [R0]
	cmp R1, #2
	bne loc_8029156
	bl sub_8029344
	b loc_80291AC
loc_8029156:
	cmp R1, #0
	bne loc_802915E
	ldrb R1, [R0,#4]
	strh R1, [R4,#0x3C]
loc_802915E:
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	strh R0, [R3,#0x32]
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	strh R0, [R4]
	strh R1, [R4,#0x30]
	ldr R1, off_80293D8 // =0x190 
	cmp R0, R1
	blt loc_802918C
	push {r0}
	sub r0, r0, r1
	add R0, #1
	mov R1, #1
	lsl R1, R0
	ldr R0, off_80293F4 // =dword_20349A0 
	ldrh R2, [R0,#0xC] // (word_20349AC - 0x20349A0)
	orr R2, R1
	strh R2, [R0,#0xC] // (word_20349AC - 0x20349A0)
	pop {r0}
loc_802918C:
	push {r3}
	push {r0}
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	bl sub_80109A4
	strh R0, [R4,#0xC]
	pop {r0}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#6]
	strh R1, [R4,#0x24]
	pop {r3}
	add R4, #2
	add R3, #2
loc_80291AC:
	add R6, #1
	sub R7, #1
	bne loc_8029140
	ldr R0, off_80293CC // =byte_20366C0 
	add r0, #0x32 
	mov R1, #0
	bl loc_8029520
	cmp R0, #0
	beq loc_80291E2
	push {R0-R2}
	bl sub_8029328
	cmp R0, #0
	pop {R0-R2}
	bne loc_80291E2
	push {R0-R2}
	bl sub_80292CC
	pop {R0-R2}
	lsr r1, r1, #1
	ldr R3, off_80293CC // =byte_20366C0 
	add r3, #0x32 
	bl sub_802B6F2
	mov R0, #0x10
	strb R0, [R5,#0xB]
loc_80291E2:
	bl sub_8029224
loc_80291E6:
	ldr R2, off_80293D4 // =dword_2033000 
	ldr R6, off_80293CC // =byte_20366C0 
	ldr R4, off_80293D0 // =byte_20366FE 
	mov R0, #0
	ldrb R3, [R5,#8]
	cmp R3, #0
	bne loc_80291F6
	mov R0, #0xFF
loc_80291F6:
	strb R0, [R6]
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	sub R0, #1
	mov R3, #6
loc_8029202:
	ldrh R7, [R2]
	strh R7, [R6,#2]
	ldrh R7, [R2,#0xC]
	strh R7, [R6,#0xE]
	ldrh R7, [R2,#0x18]
	strh R7, [R6,#0x1A]
	mov R1, #0
	strh R1, [R6,#0x26]
	strb R0, [R4]
	ldrh R7, [R2,#0x3C]
	strb R7, [R4,#6]
	add R6, #2
	add R4, #1
	add R2, #2
	sub R3, #1
	bne loc_8029202
	pop {r4,r6,r7,pc}
.endfunc // sub_8029110

.func
.thumb_func
sub_8029224:
	push {r4,r6,r7,lr}
	ldr R4, off_80293D4 // =dword_2033000 
	add R4, #2
	mov R7, #0
	sub R7, #1
	mov R6, #0
loc_8029230:
	ldrsh R0, [R4,R6]
	cmp R0, R7
	beq locret_80292CA
	cmp R0, #0xC0
	beq loc_8029252
	cmp R0, #0xC1
	beq loc_802924C
	cmp R0, #0xC3
	beq loc_8029252
	cmp R0, #0xB8
	beq loc_8029252
	cmp R0, #0xB9
	beq loc_8029258
	b loc_80292C6
loc_802924C:
	mov R1, #4
	mov R2, #0
	b loc_802925C
loc_8029252:
	mov R1, #2
	mov R2, #0
	b loc_802925C
loc_8029258:
	mov R1, #2
	mov R2, #1
loc_802925C:
	sub r0, r4, #2
	// idx
	ldrh R0, [R0]
	push {r1,r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r1,r2}
	ldrb R0, [R0,#9]
	tst R0, R1
	beq loc_80292C6
	tst R0, R2
	bne loc_80292C6
	ldrsh R0, [R4,R6]
	cmp R0, #0xB8
	beq loc_8029286
	cmp R0, #0xB9
	beq loc_8029292
	ldrh R0, [R4,#0xC]
	ldrh R1, [R4,#0x16]
	add r1, r1, r0
	strh R1, [R4,#0x16]
	b loc_802929C
loc_8029286:
	sub r0, r4, #2
	ldrh R1, [R0,#0x3C]
	mov R2, #2
	orr R1, R2
	strh R1, [R0,#0x3C]
	b loc_802929C
loc_8029292:
	sub r0, r4, #2
	ldrh R1, [R0,#0x3C]
	mov R2, #4
	orr R1, R2
	strh R1, [R0,#0x3C]
loc_802929C:
	ldrh R0, [R3,#0x3C]
	mov R1, #1
	and R1, R0
	ldrh R0, [R3,#0x3A]
	orr R0, R1
	strh R0, [R3,#0x3A]
	add r2, r4, #0
	add r3, r4, #2
loc_80292AC:
	ldrh R0, [R3,#0x3C]
	strh R0, [R2,#0x3C]
	ldrh R0, [R3,#0xC]
	strh R0, [R2,#0xC]
	ldrh R0, [R3,#0x24]
	strh R0, [R2,#0x24]
	ldrsh R0, [R3,R6]
	strh R0, [R2,R6]
	add R3, #2
	add R2, #2
	cmp R0, R7
	bne loc_80292AC
	sub R4, #2
loc_80292C6:
	add R4, #2
	b loc_8029230
locret_80292CA:
	pop {r4,r6,r7,pc}
.endfunc // sub_8029224

.func
.thumb_func
sub_80292CC:
	push {r4,r6,r7,lr}
	ldr R4, off_80293D4 // =dword_2033000 
	add r4, r4, r1
	lsl r3, r2, #1
	add r6, r4, r3
	sub r7, r2, #1
	strh R0, [R4]
	push {r0}
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	bl sub_80109A4
	strh R0, [R4,#0xC]
	pop {r0}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R1, [R0,#6]
	strh R1, [R4,#0x24]
	mov r2, #0x3e 
loc_80292F4:
	ldrh R0, [R4,R2]
	mov R1, #1
	and R1, R0
	ldrh R0, [R4,#0x3C]
	orr R0, R1
	strh R0, [R4,#0x3C]
	add R2, #2
	sub R7, #1
	bne loc_80292F4
	add R4, #2
	mov R7, #0
	sub R7, #1
	mov R1, #0
loc_802930E:
	ldrh R0, [R6,#0x3C]
	strh R0, [R4,#0x3C]
	ldrh R0, [R6,#0xC]
	strh R0, [R4,#0xC]
	ldrh R0, [R6,#0x24]
	strh R0, [R4,#0x24]
	ldrsh R0, [R6,R1]
	strh R0, [R4,R1]
	add R6, #2
	add R4, #2
	cmp R0, R7
	bne loc_802930E
	pop {r4,r6,r7,pc}
.endfunc // sub_80292CC

.func
.thumb_func
sub_8029328:
	push {r4,lr}
	ldr R4, off_80293D4 // =dword_2033000 
	add r4, r4, r1
	add r4, #0x3c 
	mov R3, #0xFE
	mov R0, #0
loc_8029334:
	ldrh R1, [R4]
	and R1, R3
	beq loc_802933C
	add R0, #1
loc_802933C:
	add R4, #2
	sub R2, #1
	bne loc_8029334
	pop {r4,pc}
.endfunc // sub_8029328

.func
.thumb_func
sub_8029344:
	push {R0-R4,r6,lr}
	mov R0, #0
	bl sub_802A11C
	add r6, r0, #0
	bl sub_802A564
	cmp R0, #1
	bne loc_802935A
	ldr R4, dword_80293E4 // =0x18 
	b loc_8029368
loc_802935A:
	cmp R1, #0
	bne loc_8029362
	ldr R4, dword_80293E0 // =0xC 
	b loc_8029368
loc_8029362:
	ldr R4, dword_80293EC // =0x12 
	sub R1, #6
	add r4, r4, r1
loc_8029368:
	add r0, r4, #0
	mov R1, #0
	add r2, r6, #0
	bl sub_8015952
	mov R0, #1
	ldr R1, off_80293F4 // =dword_20349A0 
	strb R0, [R1,#0x10] // (byte_20349B0 - 0x20349A0)
	pop {R0-R4,r6,pc}
.endfunc // sub_8029344

.func
.thumb_func
sub_802937A:
	push {R0-R4,lr}
	ldr R4, dword_80293E8 // =0x6 
	bl sub_802A564
	cmp R1, #0xB
	blt loc_8029388
	ldr R4, dword_80293EC // =0x12 
loc_8029388:
	mov R0, #1
	bl sub_802A11C
	add r2, r0, #0
	ldrb R0, [R5,#0x1A]
	add r0, r0, r4
	mov R1, #0
	bl sub_8015952
	ldrb R0, [R5,#0x1A]
	ldr R1, dword_80293E8 // =0x6 
	add r0, r0, r1
	sub R0, #1
	mov R3, #1
	lsl R3, R0
	ldr R2, off_80293F4 // =dword_20349A0 
	ldr R1, [R2]
	orr R1, R3
	str R1, [R2]
	pop {R0-R4,pc}
.endfunc // sub_802937A

.func
.thumb_func
sub_80293B0:
	push {R0-R4,lr}
	ldrh R0, [R5,#0x3A]
	sub R0, #1
	ldr R1, dword_80293F0 // =0xD 
	add r0, r0, r1
	mov R1, #0
	mov R2, #3
	bl sub_8015952
	ldrb R0, [R3,#5]
	add R0, #1
	strb R0, [R3,#5]
	pop {R0-R4,pc}
	.balign 4, 0x00
off_80293CC: .word byte_20366C0
off_80293D0: .word byte_20366FE
off_80293D4: .word dword_2033000
off_80293D8: .word 0x190
	.word byte_20349C0
dword_80293E0: .word 0xC
dword_80293E4: .word 0x18
dword_80293E8: .word 0x6
dword_80293EC: .word 0x12
dword_80293F0: .word 0xD
off_80293F4: .word dword_20349A0
.endfunc // sub_80293B0

.func
.thumb_func
sub_80293F8:
	push {r4,r6,r7,lr}
	mov R7, #0
	sub R7, #1
	ldrb R4, [R5,#8]
	cmp R4, #0
	beq locret_8029458
	mov r6, #0x48 
loc_8029406:
	ldrb R0, [R5,R6]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #2
	bne loc_8029426
	push {r0,r1}
	bl sub_802D234
	cmp R0, #1
	pop {r0,r1}
	bne loc_8029452
	ldrb R0, [R0,#4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
loc_8029426:
	cmp R1, #0
	bne loc_8029452
	ldrb R1, [R0,#4]
	mov R2, #1
	tst R1, R2
	beq loc_802943A
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov R1, #0
	strb R1, [R2,#0x17]
loc_802943A:
	ldr R0, [R0,#8]
	strh R7, [R0]
	mov R2, R10
	ldr R2, [R2,#0x18]
	mov r1, #0x44 
	ldrb R3, [R2,R1]
	tst R3, R3
	beq loc_8029452
	mov r1, #0x45 
	ldrb R3, [R2,R1]
	sub R3, #1
	strb R3, [R2,R1]
loc_8029452:
	add R6, #1
	sub R4, #1
	bne loc_8029406
locret_8029458:
	pop {r4,r6,r7,pc}
.endfunc // sub_80293F8

.func
.thumb_func
sub_802945A:
	push {r4,r6,r7,lr}
	ldr R3, off_8029510 // =byte_203CDB0 
	mov R4, #0
	mov R6, #0
	mov R2, #0x1E
	mov R7, #0
	sub R7, #1
loc_8029468:
	ldrsh R0, [R3,R4]
	cmp R0, R7
	beq loc_8029474
	strh R0, [R3,R6]
	add R6, #2
	sub R2, #1
loc_8029474:
	add R4, #2
	cmp r4, #0x3c 
	blt loc_8029468
	cmp R2, #0
	beq locret_8029486
loc_802947E:
	strh R7, [R3,R6]
	add R6, #2
	sub R2, #1
	bne loc_802947E
locret_8029486:
	pop {r4,r6,r7,pc}
.endfunc // sub_802945A

	push {r4,r6,r7,lr}
	mov R4, R10
	ldr R4, [R4,#0x18]
	mov r0, #0x44 
	ldrb R0, [R4,R0]
	tst R0, R0
	beq locret_80294DE
	mov r0, #0x45 
	ldrb R6, [R4,R0]
	ldrb R1, [R5,#6]
	sub r2, r1, #1
	cmp R6, R2
	beq loc_80294A8
	cmp R6, R2
	blt loc_80294D8
	b locret_80294DE
loc_80294A8:
	ldr R3, off_8029510 // =byte_203CDB0 
	lsl r6, r6, #1
	add r3, r3, r6
	mov R7, #4
	ldrsh R0, [R3,R7]
	mov R1, #0
	sub R1, #1
	cmp R0, R1
	beq loc_80294D8
	mov R7, #0
	ldrsh R1, [R3,R7]
	mov R7, #2
	ldrsh R2, [R3,R7]
	mov R7, #0
	strh R0, [R3,R7]
	mov R7, #2
	strh R1, [R3,R7]
	mov R7, #4
	strh R2, [R3,R7]
	mov r0, #0x45 
	ldrb R1, [R4,R0]
	add R1, #1
	strb R1, [R4,R0]
	b locret_80294DE
loc_80294D8:
	mov r0, #0x44 
	mov R1, #0
	strb R1, [R4,R0]
locret_80294DE:
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_80294E0:
	push {r4,r6,r7,lr}
	mov r0, #0x5f 
	ldrb R6, [R5,R0]
loc_80294E6:
	ldr R3, off_8029510 // =byte_203CDB0 
	mov R4, #0
	mov R7, #0
	sub R7, #1
loc_80294EE:
	ldrsh R1, [R3,R4]
	cmp R1, R7
	bne loc_8029502
	sub r1, r6, #1
	lsl r1, r1, #1
	mov r2, #0x60 
	add r2, r2, r1
	ldrh R0, [R5,R2]
	strh R0, [R3,R4]
	b loc_8029508
loc_8029502:
	add R4, #2
	cmp r4, #0x3c 
	blt loc_80294EE
loc_8029508:
	sub R6, #1
	cmp R6, #0
	bgt loc_80294E6
	pop {r4,r6,r7,pc}
off_8029510: .word byte_203CDB0
.endfunc // sub_80294E0

.func
.thumb_func
sub_8029514:
	push {R4-R7,lr}
	sub sp, sp, #0x20
	mov R7, SP
	mov R2, #1
	str R2, [R7,#0x1C]
	b loc_802952A
.endfunc // sub_8029514

loc_8029520:
	push {R4-R7,lr}
	sub sp, sp, #0x20
	mov R7, SP
	mov R2, #0
	str R2, [R7,#0x1C]
loc_802952A:
	str R1, [R7,#0x18]
	mov R4, #0
	sub R4, #1
	mov R5, #0
	mov R6, #0xA
loc_8029534:
	ldrsh R1, [R0,R5]
	cmp R1, R4
	beq loc_802954C
	lsr r2, r1, #9
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	strh R1, [R7,R5]
	strh R2, [R7,R6]
	add R5, #2
	add R6, #2
	cmp R5, #0xA
	bne loc_8029534
loc_802954C:
	mov R0, #0
	lsr r5, r5, #1
	cmp R5, #3
	blt loc_80295B0
	mov R6, #0
loc_8029556:
	ldr R4, off_80295B4 // =off_802BCB0 
	ldr R0, [R7,#0x1C]
	cmp R0, #0
	beq loc_8029560
	ldr R4, off_80295B8 // =off_802BC60 
loc_8029560:
	ldr R3, [R4]
	cmp R3, #0
	beq loc_80295A6
	ldrb R2, [R3]
	cmp R5, R2
	blt loc_80295A2
	ldrb R0, [R3,#1]
	ldr R1, off_80295BC // =off_80295C0 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	cmp R0, #0
	beq loc_80295A2
	push {R1-R3}
	ldr R1, [R7,#0x18]
	bl sub_8029652
	pop {R1-R3}
	cmp R0, #0
	beq loc_80295A2
	push {R0-R3}
	ldr R0, [R7,#0x1C]
	cmp R0, #0
	pop {R0-R3}
	beq loc_802959C
	push {R0-R3}
	ldr R0, [R7,#0x18]
	cmp R0, #0
	pop {R0-R3}
	bne loc_80295B0
loc_802959C:
	bl sub_802963C
	b loc_80295B0
loc_80295A2:
	add R4, #4
	b loc_8029560
loc_80295A6:
	add R6, #2
	sub R5, #1
	cmp R5, #3
	bge loc_8029556
	mov R0, #0
loc_80295B0:
	add sp, sp, #0x20
	pop {R4-R7,pc}
off_80295B4: .word off_802BCB0
off_80295B8: .word off_802BC60
off_80295BC: .word off_80295C0
off_80295C0: .word sub_80295C8+1
	.word sub_802961A+1
.func
.thumb_func
sub_80295C8:
	push {r2,R4-R6,lr}
	add r5, r2, #0
	ldrh R1, [R3,#4]
loc_80295CE:
	ldrh R0, [R7,R6]
	cmp R0, R1
	bne loc_8029616
	add R6, #2
	sub R2, #1
	bne loc_80295CE
	mov R2, #0
	add R6, #8
	ldrh R0, [R7,R6]
	add R0, #1
loc_80295E2:
	ldrh R1, [R7,R6]
	cmp R1, #0x1A
	bne loc_80295FA
	cmp R2, #0
	bne loc_80295F6
	cmp R0, #0x1B
	bne loc_80295F6
	sub r0, r6, #2
	ldrh R0, [R7,R0]
	add R0, #2
loc_80295F6:
	sub r1, r0, #1
	add R2, #1
loc_80295FA:
	sub R0, #1
	cmp R0, R1
	bne loc_8029616
	sub R6, #2
	sub R5, #1
	bne loc_80295E2
	cmp R2, #1
	bgt loc_8029616
	cmp R0, #0
	blt loc_8029616
	ldrh R0, [R3,#2]
	add r1, r6, #0
	sub R1, #8
	b locret_8029618
loc_8029616:
	mov R0, #0
locret_8029618:
	pop {r2,R4-R6,pc}
.endfunc // sub_80295C8

.func
.thumb_func
sub_802961A:
	push {r2,r4,r7,lr}
	add r4, r3, #0
	add R4, #4
	add r7, r7, r6
loc_8029622:
	ldrh R0, [R7]
	ldrh R1, [R4]
	cmp R0, R1
	bne loc_8029638
	add R4, #2
	add R7, #2
	sub R2, #1
	bne loc_8029622
	ldrh R0, [R3,#2]
	add r1, r6, #0
	b locret_802963A
loc_8029638:
	mov R0, #0
locret_802963A:
	pop {r2,r4,r7,pc}
.endfunc // sub_802961A

.func
.thumb_func
sub_802963C:
	push {R0-R3,lr}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	ldr R1, off_802967C // =0x140 
	sub r0, r0, r1
	ldr R1, off_8029680 // =0x1F60 
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	pop {R0-R3,pc}
.endfunc // sub_802963C

.func
.thumb_func
sub_8029652:
	push {r4,lr}
	ldr R3, off_8029684 // =dword_203CA48 
	lsl r1, r1, #2
	add r3, r3, r1
	ldr R2, off_802967C // =0x140 
	sub r2, r0, r2
	mov R1, #7
	and R1, R2
	lsr r2, r2, #3
	add r3, r3, r2
	ldrb R4, [R3]
	mov R2, #1
	lsl R2, R1
	tst R4, R2
	beq loc_8029674
	mov R0, #0
	b locret_8029678
loc_8029674:
	orr R4, R2
	strb R4, [R3]
locret_8029678:
	pop {r4,pc}
	.balign 4, 0x00
off_802967C: .word 0x140
off_8029680: .word 0x1F60
off_8029684: .word dword_203CA48
.endfunc // sub_8029652

.func
.thumb_func
sub_8029688:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov R0, #0
	str R0, [SP]
	mov R1, R10
	ldr R1, [R1,#0x18]
	mov r0, #0x44 
	ldrb R0, [R1,R0]
	tst R0, R0
	beq loc_80296A2
	mov r0, #0x45 
	ldrb R0, [R1,R0]
	str R0, [SP]
loc_80296A2:
	ldr R7, off_8029784 // =dword_2033000 
	ldr R6, off_80298D4 // =byte_203CDB0 
	ldrb R4, [R5,#6]
	cmp R4, #0
	beq loc_80296DE
	mov R3, #0
	mov R2, #0
loc_80296B0:
	add r0, r3, #0
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r2,r3}
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_80296D8
	ldrb R1, [R0,#7]
	cmp R1, #2
	beq loc_80296D6
	ldrb R1, [R0,#4]
	mov R0, #1
	tst R1, R0
	bne loc_80296D6
	ldrh R0, [R6]
	strh R0, [R7]
	add R7, #2
	add R2, #1
loc_80296D6:
	add R6, #2
loc_80296D8:
	add R3, #1
	sub R4, #1
	bne loc_80296B0
loc_80296DE:
	ldrb R3, [R5,#5]
	ldrb R0, [R5,#6]
	sub r3, r3, r0
	bmi loc_802970C
	beq loc_802970C
loc_80296E8:
	ldr R0, [SP]
	tst R0, R0
	beq loc_80296FE
	lsl r0, r0, #1
	ldr R1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp R0, R6
	bne loc_80296FE
	add R6, #4
	sub R3, #2
	b loc_802970A
loc_80296FE:
	ldrh R0, [R6]
	strh R0, [R7]
	add R6, #2
	add R7, #2
	add R2, #1
	sub R3, #1
loc_802970A:
	bne loc_80296E8
loc_802970C:
	cmp R2, #0
	beq loc_802977E
	ldr R0, off_8029784 // =dword_2033000 
	add r7, r0, #0
	add r1, r2, #0
	bl sub_8000D12
	ldrb R4, [R5,#6]
	cmp R4, #0
	beq loc_8029750
	ldr R6, off_80298D4 // =byte_203CDB0 
	mov R3, #0
loc_8029724:
	add r0, r3, #0
	push {r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_802974A
	ldrb R1, [R0,#7]
	cmp R1, #2
	beq loc_8029748
	ldrb R1, [R0,#4]
	mov R0, #1
	tst R1, R0
	bne loc_8029748
	ldrh R0, [R7]
	strh R0, [R6]
	add R7, #2
loc_8029748:
	add R6, #2
loc_802974A:
	add R3, #1
	sub R4, #1
	bne loc_8029724
loc_8029750:
	ldrb R3, [R5,#5]
	ldrb R0, [R5,#6]
	sub r3, r3, r0
	bmi loc_802977E
	beq loc_802977E
loc_802975A:
	ldr R0, [SP]
	tst R0, R0
	beq loc_8029770
	lsl r0, r0, #1
	ldr R1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp R0, R6
	bne loc_8029770
	add R6, #4
	sub R3, #2
	b loc_802977C
loc_8029770:
	ldrh R0, [R7]
	strh R0, [R6]
	add R6, #2
	add R7, #2
	add R2, #1
	sub R3, #1
loc_802977C:
	bne loc_802975A
loc_802977E:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_8029784: .word dword_2033000
.endfunc // sub_8029688

.func
.thumb_func
sub_8029788:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov R0, #0
	str R0, [SP]
	mov R1, R10
	ldr R1, [R1,#0x18]
	mov r0, #0x44 
	ldrb R0, [R1,R0]
	tst R0, R0
	beq loc_80297A2
	mov r0, #0x45 
	ldrb R0, [R1,R0]
	str R0, [SP]
loc_80297A2:
	ldr R7, off_80298C0 // =word_2036660 
	ldr R6, off_80298D4 // =byte_203CDB0 
	mov R3, #0
	mov R2, #0
	ldrb R4, [R5,#6]
	cmp R4, #0
	beq loc_80297E0
loc_80297B0:
	add r0, r3, #0
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r2,r3}
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_80297D8
	ldrb R1, [R0,#7]
	cmp R1, #2
	beq loc_80297D6
	ldrb R1, [R0,#4]
	mov R0, #1
	tst R1, R0
	bne loc_80297D6
	ldrh R0, [R6]
	strh R0, [R7]
	add R7, #2
	add R2, #1
loc_80297D6:
	add R6, #2
loc_80297D8:
	add R3, #1
	sub R4, #1
	bne loc_80297B0
	add r4, r2, #0
loc_80297E0:
	ldrb R3, [R5,#5]
	ldrb R0, [R5,#6]
	sub r3, r3, r0
	bmi loc_802980E
	beq loc_802980E
loc_80297EA:
	ldr R0, [SP]
	tst R0, R0
	beq loc_8029800
	lsl r0, r0, #1
	ldr R1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp R0, R6
	bne loc_8029800
	add R6, #4
	sub R3, #2
	b loc_802980C
loc_8029800:
	ldrh R0, [R6]
	strh R0, [R7]
	add R6, #2
	add R7, #2
	add R2, #1
	sub R3, #1
loc_802980C:
	bne loc_80297EA
loc_802980E:
	cmp R2, #0
	beq loc_8029838
	ldr R0, off_80298C0 // =word_2036660 
	push {r0,r2}
	ldr R1, off_80298C4 // =dword_80298C8 
	ldrb R3, [R1,R4]
	cmp R3, #0
	beq loc_802982A
	add r1, r4, #0
	add r2, r4, #0
	push {r3}
	bl sub_8000D12
	pop {r3}
loc_802982A:
	pop {r0,r2}
	sub r2, r2, r3
	lsl r3, r3, #1
	add r0, r0, r3
	add r1, r2, #0
	bl sub_8000D12
loc_8029838:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_8029788

.func
.thumb_func
sub_802983C:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov R0, #0
	str R0, [SP]
	mov R1, R10
	ldr R1, [R1,#0x18]
	mov r0, #0x44 
	ldrb R0, [R1,R0]
	tst R0, R0
	beq loc_8029856
	mov r0, #0x45 
	ldrb R0, [R1,R0]
	str R0, [SP]
loc_8029856:
	ldr R7, off_80298C0 // =word_2036660 
	ldr R6, off_80298D4 // =byte_203CDB0 
	ldrb R4, [R5,#6]
	cmp R4, #0
	beq loc_802988E
	mov R3, #0
loc_8029862:
	add r0, r3, #0
	push {r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_8029888
	ldrb R1, [R0,#7]
	cmp R1, #2
	beq loc_8029886
	ldrb R1, [R0,#4]
	mov R0, #1
	tst R1, R0
	bne loc_8029886
	ldrh R0, [R7]
	strh R0, [R6]
	add R7, #2
loc_8029886:
	add R6, #2
loc_8029888:
	add R3, #1
	sub R4, #1
	bne loc_8029862
loc_802988E:
	ldrb R3, [R5,#5]
	ldrb R0, [R5,#6]
	sub r3, r3, r0
	bmi loc_80298BC
	beq loc_80298BC
loc_8029898:
	ldr R0, [SP]
	tst R0, R0
	beq loc_80298AE
	lsl r0, r0, #1
	ldr R1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp R0, R6
	bne loc_80298AE
	add R6, #4
	sub R3, #2
	b loc_80298BA
loc_80298AE:
	ldrh R0, [R7]
	strh R0, [R6]
	add R6, #2
	add R7, #2
	add R2, #1
	sub R3, #1
loc_80298BA:
	bne loc_8029898
loc_80298BC:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
off_80298C0: .word word_2036660
off_80298C4: .word dword_80298C8
dword_80298C8: .word 0x0, 0x0, 0x0
off_80298D4: .word byte_203CDB0
.endfunc // sub_802983C

.func
.thumb_func
sub_80298D8:
	push {lr}
	ldr R0, dword_80298EC // =0x40600000 
	ldr R1, [R5,#0x44]
	add r0, r0, r1
	ldr R1, dword_80298F0 // =0xD796 
	mov R2, #1
	mov R3, #0
	bl sub_8009FF8
	pop {pc}
dword_80298EC: .word 0x40600000
dword_80298F0: .word 0xD796
.endfunc // sub_80298D8

.func
.thumb_func
sub_80298F4:
	push {lr}
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq loc_80299B2
	cmp R0, #0
	beq loc_8029918
	cmp R0, #1
	beq loc_8029924
	cmp R0, #3
	beq loc_8029930
	cmp R0, #4
	beq loc_802993C
	cmp R0, #5
	beq loc_802993C
	cmp R0, #6
	beq loc_8029948
	mov R0, #0
	b locret_802996C
loc_8029918:
	bl sub_802996E
	cmp R0, #0
	beq locret_802996C
	add r1, r0, #0
	b loc_8029952
loc_8029924:
	bl sub_80299B6
	cmp R0, #0
	beq locret_802996C
	add r1, r0, #0
	b loc_8029952
loc_8029930:
	bl sub_80299FA
	cmp R0, #0
	beq locret_802996C
	add r1, r0, #0
	b loc_8029952
loc_802993C:
	bl sub_8029A1E
	cmp R0, #0
	beq locret_802996C
	add r1, r0, #0
	b loc_8029952
loc_8029948:
	bl sub_8029A36
	cmp R0, #0
	beq locret_802996C
	add r1, r0, #0
loc_8029952:
	ldr R0, off_8029C04 // =off_8027BD0 
	ldrb R2, [R5,#0xC]
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldrb R0, [R5,#1]
	strb R0, [R5,#0xD]
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #1
locret_802996C:
	pop {pc}
.endfunc // sub_80298F4

.func
.thumb_func
sub_802996E:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #0xA
	bne loc_80299B2
	ldrb R0, [R5,#8]
	cmp R0, #0
	bne loc_8029980
	mov R0, #0xC
	b locret_80299B4
loc_8029980:
	cmp R0, #2
	bge loc_8029994
	mov r3, #0x48 
	ldrb R0, [R5,R3]
	cmp R0, #0
	beq loc_8029990
	cmp R0, #2
	bne loc_80299AE
loc_8029990:
	mov R0, #0xB
	b locret_80299B4
loc_8029994:
	mov r3, #0x48 
	add r3, r3, r5
	ldrb R0, [R3]
	ldrb R1, [R3,#1]
	cmp R0, R1
	blt loc_80299A6
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
loc_80299A6:
	cmp R0, #0
	bne loc_80299AE
	cmp R1, #2
	beq loc_80299B2
loc_80299AE:
	mov R0, #0x17
	b locret_80299B4
loc_80299B2:
	mov R0, #0
locret_80299B4:
	pop {pc}
.endfunc // sub_802996E

.func
.thumb_func
sub_80299B6:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #0xA
	bne loc_80299F6
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_80299F2
	cmp R0, #1
	beq loc_80299E6
	mov r3, #0x48 
	ldrb R0, [R5,R3]
	add R3, #1
	ldrb R1, [R5,R3]
	cmp R0, #0
	bne loc_80299DA
	cmp R1, #1
	beq loc_80299F6
	b loc_80299EE
loc_80299DA:
	cmp R0, #1
	bne loc_80299F2
	cmp R1, #0
	bne loc_80299F2
	mov R0, #9
	b locret_80299F8
loc_80299E6:
	mov r3, #0x48 
	ldrb R0, [R5,R3]
	cmp R0, #0
	bne loc_80299F2
loc_80299EE:
	mov R0, #0xD
	b locret_80299F8
loc_80299F2:
	mov R0, #8
	b locret_80299F8
loc_80299F6:
	mov R0, #0
locret_80299F8:
	pop {pc}
.endfunc // sub_80299B6

.func
.thumb_func
sub_80299FA:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #0xA
	beq loc_8029A10
	cmp R0, #0xB
	beq loc_8029A1A
	ldrb R0, [R5,#0x17]
	tst R0, R0
	bne loc_8029A1A
	mov r0, #0x24 
	b locret_8029A1C
loc_8029A10:
	ldrb R0, [R5,#0x17]
	tst R0, R0
	bne loc_8029A1A
	mov r0, #0x25 
	b locret_8029A1C
loc_8029A1A:
	mov R0, #0
locret_8029A1C:
	pop {pc}
.endfunc // sub_80299FA

.func
.thumb_func
sub_8029A1E:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #0xB
	bne loc_8029A32
	bl sub_802A564
	tst R3, R3
	bne loc_8029A32
	mov r0, #0x26 
	b locret_8029A34
loc_8029A32:
	mov R0, #0
locret_8029A34:
	pop {pc}
.endfunc // sub_8029A1E

.func
.thumb_func
sub_8029A36:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#7]
	cmp R0, #1
	bne loc_8029A52
	ldrb R0, [R5,#0x19]
	tst R0, R0
	bne loc_8029A52
	ldrb R0, [R5,#1]
	cmp r0, #0x54 
	beq loc_8029A52
	mov R0, #4
	b locret_8029A54
loc_8029A52:
	mov R0, #0
locret_8029A54:
	pop {pc}
.endfunc // sub_8029A36

.func
.thumb_func
sub_8029A56:
	push {lr}
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq locret_8029AA8
	cmp R0, #0
	beq loc_8029A6C
	cmp R0, #1
	beq loc_8029A78
	cmp R0, #3
	beq loc_8029A84
	b locret_8029AA8
loc_8029A6C:
	bl sub_8029AAA
	cmp R0, #0
	beq locret_8029AA8
	add r1, r0, #0
	b loc_8029A90
loc_8029A78:
	bl sub_8029ADA
	cmp R0, #0
	beq locret_8029AA8
	add r1, r0, #0
	b loc_8029A90
loc_8029A84:
	bl sub_8029B16
	cmp R0, #0
	beq locret_8029AA8
	add r1, r0, #0
	b loc_8029A90
loc_8029A90:
	ldr R0, off_8029C04 // =off_8027BD0 
	ldrb R2, [R5,#0xC]
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldrb R0, [R5,#1]
	strb R0, [R5,#0xD]
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_8029AA8:
	pop {pc}
.endfunc // sub_8029A56

.func
.thumb_func
sub_8029AAA:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #0
	beq loc_8029AC4
	cmp R0, #2
	beq loc_8029AC4
	cmp R0, #0xA
	beq loc_8029AD2
	ldrb R0, [R5,#8]
	cmp R0, #2
	bgt loc_8029AD6
	mov R0, #0x16
	b locret_8029AD8
loc_8029AC4:
	ldrb R0, [R5,#8]
	cmp R0, #1
	bne loc_8029ACE
	mov R0, #9
	b locret_8029AD8
loc_8029ACE:
	mov R0, #0xE
	b locret_8029AD8
loc_8029AD2:
	mov R0, #0x10
	b locret_8029AD8
loc_8029AD6:
	mov R0, #0
locret_8029AD8:
	pop {pc}
.endfunc // sub_8029AAA

.func
.thumb_func
sub_8029ADA:
	push {lr}
	ldrb R0, [R5,#7]
	cmp R0, #0
	beq loc_8029AF4
	cmp R0, #1
	beq loc_8029AFE
	cmp R0, #0xA
	beq loc_8029B0E
	ldrb R0, [R5,#8]
	cmp R0, #2
	bge loc_8029B12
	mov R0, #7
	b locret_8029B14
loc_8029AF4:
	ldrb R0, [R5,#8]
	cmp R0, #1
	bne loc_8029B12
	mov R0, #5
	b locret_8029B14
loc_8029AFE:
	ldrb R0, [R5,#8]
	cmp R0, #2
	blt loc_8029B0A
	bne loc_8029B12
	mov R0, #0xA
	b locret_8029B14
loc_8029B0A:
	mov R0, #6
	b locret_8029B14
loc_8029B0E:
	mov R0, #0xF
	b locret_8029B14
loc_8029B12:
	mov R0, #0
locret_8029B14:
	pop {pc}
.endfunc // sub_8029ADA

.func
.thumb_func
sub_8029B16:
	push {lr}
	mov R0, #0
	pop {pc}
.endfunc // sub_8029B16

.func
.thumb_func
sub_8029B1C:
	push {lr}
	ldrb R0, [R5,#0xC]
	cmp R0, #0xFF
	beq loc_8029BA8
	cmp R0, #0
	beq loc_8029B3C
	cmp R0, #1
	beq loc_8029B48
	cmp R0, #3
	beq loc_8029B54
	cmp R0, #4
	beq loc_8029B54
	cmp R0, #6
	beq loc_8029B60
	mov R0, #0
	b locret_8029B84
loc_8029B3C:
	bl sub_8029B86
	cmp R0, #0
	beq locret_8029B84
	add r1, r0, #0
	b loc_8029B6A
loc_8029B48:
	bl sub_8029BAC
	cmp R0, #0
	beq locret_8029B84
	add r1, r0, #0
	b loc_8029B6A
loc_8029B54:
	bl sub_8029BD6
	cmp R0, #0
	beq locret_8029B84
	add r1, r0, #0
	b loc_8029B6A
loc_8029B60:
	bl sub_8029BE6
	cmp R0, #0
	beq locret_8029B84
	add r1, r0, #0
loc_8029B6A:
	ldr R0, off_8029C04 // =off_8027BD0 
	ldrb R2, [R5,#0xC]
	lsl r2, r2, #2
	ldr R0, [R0,R2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldrb R0, [R5,#1]
	strb R0, [R5,#0xD]
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #1
locret_8029B84:
	pop {pc}
.endfunc // sub_8029B1C

.func
.thumb_func
sub_8029B86:
	push {lr}
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_8029BA8
	cmp R0, #2
	bgt loc_8029BA8
	mov r3, #0x47 
	add r3, r3, r0
	ldrb R3, [R5,R3]
	cmp R3, #0
	beq loc_8029BA0
	cmp R3, #2
	bne loc_8029BA8
loc_8029BA0:
	mov R1, #5
	mul R0, R1
	add R0, #5
	b locret_8029BAA
loc_8029BA8:
	mov R0, #0
locret_8029BAA:
	pop {pc}
.endfunc // sub_8029B86

.func
.thumb_func
sub_8029BAC:
	push {lr}
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_8029BD2
	cmp R0, #2
	bgt loc_8029BD2
	mov r3, #0x47 
	add r3, r3, r0
	ldrb R3, [R5,R3]
	cmp R0, #1
	bne loc_8029BCA
	cmp R3, #0
	bne loc_8029BD2
	mov R0, #0xB
	b locret_8029BD4
loc_8029BCA:
	cmp R3, #1
	bne loc_8029BD2
	mov R0, #0xC
	b locret_8029BD4
loc_8029BD2:
	mov R0, #0
locret_8029BD4:
	pop {pc}
.endfunc // sub_8029BAC

.func
.thumb_func
sub_8029BD6:
	push {lr}
	ldrb R0, [R5,#8]
	cmp R0, #1
	bne loc_8029BE2
	mov r0, #0x27 
	b locret_8029BE4
loc_8029BE2:
	mov R0, #0
locret_8029BE4:
	pop {pc}
.endfunc // sub_8029BD6

.func
.thumb_func
sub_8029BE6:
	push {lr}
	ldrb R0, [R5,#8]
	cmp R0, #0
	bne loc_8029BFE
	ldrb R0, [R5,#0x19]
	tst R0, R0
	beq loc_8029BFE
	ldrb R0, [R5,#1]
	cmp r0, #0x54 
	beq loc_8029BFE
	mov R0, #5
	b locret_8029C00
loc_8029BFE:
	mov R0, #0
locret_8029C00:
	pop {pc}
	.balign 4, 0x00
off_8029C04: .word off_8027BD0
.endfunc // sub_8029BE6

.func
.thumb_func
sub_8029C08:
	push {lr}
	ldrb R0, [R5,#1]
	cmp r0, #0x48 
	beq loc_8029C14
	cmp r0, #0x44 
	bne loc_8029C18
loc_8029C14:
	mov R1, #0
	b loc_8029C22
loc_8029C18:
	mov R1, R10
	ldr R1, [R1,#8]
	ldrh R1, [R1,#0x18]
	cmp r1, #0x67 
	bgt locret_8029C9A
loc_8029C22:
	mov r0, #0x57 
	sub r0, r0, r1
	ldr R1, dword_8029CA4 // =0x1FF 
	and R0, R1
	lsl r0, r0, #0x10
	ldr R1, dword_8029C9C // =0x800001FC 
	add r0, r0, r1
	ldrb R1, [R5,#0xF]
	cmp R1, #2
	blt loc_8029C46
	cmp R1, #6
	bgt loc_8029C46
	sub R0, #1
	cmp R1, #3
	blt loc_8029C46
	cmp R1, #4
	bgt loc_8029C46
	sub R0, #1
loc_8029C46:
	cmp R1, #5
	blt loc_8029C54
	cmp R1, #0xB
	bgt loc_8029C54
	mov R1, #1
	lsl r1, r1, #0x10
	add r0, r0, r1
loc_8029C54:
	cmp R1, #2
	blt loc_8029C62
	cmp R1, #3
	bgt loc_8029C62
	mov R1, #1
	lsl r1, r1, #0x10
	sub r0, r0, r1
loc_8029C62:
	ldrb R1, [R5,#0xE]
	lsl r1, r1, #0x19
	orr R0, R1
	ldr R1, dword_8029CA0 // =0xB782 
	mov R2, #1
	mov R3, #0
	bl sub_8009FF8
	ldrb R0, [R5,#0xF]
	cmp R0, #0
	beq locret_8029C9A
	cmp R0, #0x14
	blt loc_8029C82
	mov R0, #0
	strb R0, [R5,#0xF]
	b locret_8029C9A
loc_8029C82:
	add r1, r0, #1
	strb R1, [R5,#0xF]
	sub R0, #1
	ldr R1, off_8029CA8 // =dword_8029CAC 
	lsl r0, r0, #1
	add r2, r0, #1
	ldrb R2, [R1,R2]
	ldrb R0, [R1,R0]
	add r1, r2, #0
	ldrb R3, [R5,#0xE]
	bl sub_802FE7A
locret_8029C9A:
	pop {pc}
dword_8029C9C: .word 0x800001FC
dword_8029CA0: .word 0xB782
dword_8029CA4: .word 0x1FF
off_8029CA8: .word dword_8029CAC
dword_8029CAC: .word 0x3C204000, 0x38603A40, 0x36A03780, 0x36C036B0, 0x38D837D0
	.word 0x3AE839E0, 0x3CF03BEC, 0x3EF83DF4, 0x40FE3FFB, 0x4000
.endfunc // sub_8029C08

.func
.thumb_func
sub_8029CD4:
	push {R4-R6,lr}
	mov R4, #0x89
	lsl r1, r1, #1
	add r4, r4, r1
	mov R1, #0x1E
	lsl r0, r0, #1
	add R0, #3
	mul R0, R1
	add R0, #0x16
	ldr R1, off_8029D30 // =unk_2035000 
	add r1, r1, r0
	ldr R3, off_8029D14 // =dword_8029D18 
	mov R5, #0
loc_8029CEE:
	ldrh R6, [R3,R5]
	add R5, #2
	ldrh R0, [R3,R5]
	add R5, #2
	add r0, r0, r4
	strh R0, [R1,R6]
	cmp R5, #0x10
	bne loc_8029CEE
	cmp R2, #0
	bne locret_8029D12
	// j
	mov R0, #0
	// i
	mov R1, #3
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8029D28 // =unk_203505A 
	mov R4, #0xF
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_8029D12:
	pop {R4-R6,pc}
off_8029D14: .word dword_8029D18
dword_8029D18: .word 0x90000000, 0x9001001E, 0x94000006, 0x94010024
off_8029D28: .word unk_203505A
	.word 0x3FF
off_8029D30: .word unk_2035000
.endfunc // sub_8029CD4

.func
.thumb_func
sub_8029D34:
	push {r4,r5,lr}
	bl sub_800A97A
	cmp R0, #0
	beq locret_8029D5E
	ldr R0, [R5,#0x40]
	mov R1, #0x1F
	and R0, R1
	cmp R0, #0x1C
	blt loc_8029D4E
	bl sub_8029D80
	b locret_8029D5E
loc_8029D4E:
	// j
	mov R0, #0xF
	// i
	mov R1, #4
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8029D60 // =byte_8029D64 
	mov R4, #7
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_8029D5E:
	pop {r4,r5,pc}
off_8029D60: .word byte_8029D64
byte_8029D64: .byte 0x8D, 0x90, 0x8E, 0x90, 0x8F, 0x90, 0x90, 0x90, 0x91
	.byte 0x90, 0x92, 0x90, 0x93, 0x90, 0x94, 0x90, 0x95, 0x90
	.byte 0x96, 0x90, 0x97, 0x90, 0x98, 0x90, 0x99, 0x90, 0x9A
	.byte 0x90
.endfunc // sub_8029D34

.func
.thumb_func
sub_8029D80:
	push {r4,r5,lr}
	mov R0, #0xF
	mov R1, #4
	mov R2, #3
	mov R3, #0
	mov R4, #7
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_8029D80

	pop {r4,r5,pc}
.func
.thumb_func
sub_8029D94:
	push {R4-R7,lr}
	add r6, r0, #0
	add r7, r1, #0
	mov R0, #0
	cmp R2, #2
	blt loc_8029DA2
	mov R0, #5
loc_8029DA2:
	add r0, r0, r1
	ldr R1, off_8029DDC // =0x240 
	mul R0, R1
	ldr R1, off_8029DD8 // =dword_86E7DCC 
	add r0, r0, r1
	ldr R1, off_8029DDC // =0x240 
	add r2, r6, #0
	mul R1, R2
	ldr R2, dword_8029DE0 // =0x600A720 
	add r1, r1, r2
	ldr R2, off_8029DDC // =0x240 
	bl loc_8000AC8
	mov R0, #1
	mov R1, #1
	lsl r6, r6, #1
	add r1, r1, r6
	mov R2, #3
	ldr R3, off_8029DE4 // =byte_8029DF8 
	mov R4, #0x12
	mul R4, R6
	add r3, r3, r4
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
off_8029DD8: .word dword_86E7DCC
off_8029DDC: .word 0x240
dword_8029DE0: .word 0x600A720
off_8029DE4: .word byte_8029DF8
	.word byte_8029E1C
	.word byte_8029E40
	.word byte_8029E64
	.word byte_8029E88
byte_8029DF8: .byte 0x39, 0xA1, 0x3A, 0xA1, 0x3B, 0xA1, 0x3C, 0xA1, 0x3D
	.byte 0xA1, 0x3E, 0xA1, 0x3F, 0xA1, 0x40, 0xA1, 0x41, 0xA1
	.byte 0x42, 0xA1, 0x43, 0xA1, 0x44, 0xA1, 0x45, 0xA1, 0x46
	.byte 0xA1, 0x47, 0xA1, 0x48, 0xA1, 0x49, 0xA1, 0x4A, 0xA1
byte_8029E1C: .byte 0x4B, 0xA1, 0x4C, 0xA1, 0x4D, 0xA1, 0x4E, 0xA1, 0x4F
	.byte 0xA1, 0x50, 0xA1, 0x51, 0xA1, 0x52, 0xA1, 0x53, 0xA1
	.byte 0x54, 0xA1, 0x55, 0xA1, 0x56, 0xA1, 0x57, 0xA1, 0x58
	.byte 0xA1, 0x59, 0xA1, 0x5A, 0xA1, 0x5B, 0xA1, 0x5C, 0xA1
byte_8029E40: .byte 0x5D, 0xA1, 0x5E, 0xA1, 0x5F, 0xA1, 0x60, 0xA1, 0x61
	.byte 0xA1, 0x62, 0xA1, 0x63, 0xA1, 0x64, 0xA1, 0x65, 0xA1
	.byte 0x66, 0xA1, 0x67, 0xA1, 0x68, 0xA1, 0x69, 0xA1, 0x6A
	.byte 0xA1, 0x6B, 0xA1, 0x6C, 0xA1, 0x6D, 0xA1, 0x6E, 0xA1
byte_8029E64: .byte 0x6F, 0xA1, 0x70, 0xA1, 0x71, 0xA1, 0x72, 0xA1, 0x73
	.byte 0xA1, 0x74, 0xA1, 0x75, 0xA1, 0x76, 0xA1, 0x77, 0xA1
	.byte 0x78, 0xA1, 0x79, 0xA1, 0x7A, 0xA1, 0x7B, 0xA1, 0x7C
	.byte 0xA1, 0x7D, 0xA1, 0x7E, 0xA1, 0x7F, 0xA1, 0x80, 0xA1
byte_8029E88: .byte 0x81, 0xA1, 0x82, 0xA1, 0x83, 0xA1, 0x84, 0xA1, 0x85
	.byte 0xA1, 0x86, 0xA1, 0x87, 0xA1, 0x88, 0xA1, 0x89, 0xA1
	.byte 0x8A, 0xA1, 0x8B, 0xA1, 0x8C, 0xA1, 0x8D, 0xA1, 0x8E
	.byte 0xA1, 0x8F, 0xA1, 0x90, 0xA1, 0x91, 0xA1, 0x92, 0xA1
.endfunc // sub_8029D94

.func
.thumb_func
sub_8029EAC:
	push {lr}
	mov r1, #0x20 
	mul R0, R1
	ldr R1, off_8029EC0 // =dword_86E944C 
	add r0, r0, r1
	ldr R1, off_8029EC4 // =unk_3001AA0 
	mov r2, #0x20 
	bl loc_8000AC8
.endfunc // sub_8029EAC

	pop {pc}
off_8029EC0: .word dword_86E944C
off_8029EC4: .word unk_3001AA0
.func
.thumb_func
sub_8029EC8:
	push {r4,r6,lr}
	mov R4, #0
	mov R6, #0
loc_8029ECE:
	add r0, r4, #0
	lsl r0, r0, #2
	ldr R1, off_8029F48 // =dword_8029F4C 
	ldr R0, [R1,R0]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8029EEE
	ldr R3, off_8029F6C // =dword_20349A0 
	ldr R3, [R3]
	mov R0, #1
	lsl R0, R4
	lsl r0, r0, #5
	and R3, R0
	bne loc_8029EEE
	add R6, #1
loc_8029EEE:
	add R4, #1
	cmp R4, #5
	blt loc_8029ECE
	add r0, r6, #0
	pop {r4,r6,pc}
.endfunc // sub_8029EC8

.func
.thumb_func
sub_8029EF8:
	push {R4-R6,lr}
	mov R4, #0
	mov R6, #0
loc_8029EFE:
	add r0, r4, #0
	lsl r0, r0, #2
	ldr R1, off_8029F48 // =dword_8029F4C 
	ldr R0, [R1,R0]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8029F3C
	ldr R3, off_8029F6C // =dword_20349A0 
	ldr R3, [R3]
	mov R0, #1
	lsl R0, R4
	lsl r0, r0, #5
	and R3, R0
	bne loc_8029F3C
	mov R0, #0
	mov R1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldr R1, dword_8029F68 // =0x6 
	add r1, r1, r4
	cmp R0, R1
	beq loc_8029F3C
	ldr R2, off_8029F60 // =0x50 
	add r2, r2, r6
	strb R4, [R5,R2]
	ldr R2, dword_8029F64 // =0x55 
	add r2, r2, r6
	mov R3, #0
	strb R3, [R5,R2]
	add R6, #1
loc_8029F3C:
	add R4, #1
	cmp R4, #5
	blt loc_8029EFE
	add r0, r6, #0
	pop {R4-R6,pc}
	.balign 4, 0x00
off_8029F48: .word dword_8029F4C
dword_8029F4C: .word 0xE7
	.word 0xE8
	.word 0xE9
	.word 0xEA
	.word 0xEB
off_8029F60: .word 0x50
dword_8029F64: .word 0x55
dword_8029F68: .word 0x6
off_8029F6C: .word dword_20349A0
.endfunc // sub_8029EF8

.func
.thumb_func
sub_8029F70:
	push {r4,lr}
	mov R4, #0
	bl sub_802D234
	cmp R0, #8
	beq loc_8029FAA
	cmp R0, #0
	beq loc_8029F88
	cmp R0, #0xA
	beq loc_8029F88
	cmp R0, #0xB
	bne loc_8029FAC
loc_8029F88:
	bl get_802D246 // () -> int
	ldr R1, dword_8029FB0 // =0x200000 
	tst R0, R1
	bne loc_8029FAC
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8029FA4
	ldrb R0, [R5,#0x10]
	cmp R0, #0
	beq loc_8029FAA
	b loc_8029FAC
loc_8029FA4:
	bl sub_802E09A
	bne loc_8029FAC
loc_8029FAA:
	mov R4, #1
loc_8029FAC:
	add r0, r4, #0
	pop {r4,pc}
dword_8029FB0: .word 0x200000
.endfunc // sub_8029F70

.func
.thumb_func
sub_8029FB4:
	push {r4,lr}
	mov R4, #0
	bl sub_802D234
	cmp R0, #5
	beq loc_8029FEA
	ldrb R0, [R5,#0x10]
	cmp R0, #0
	bne loc_8029FEC
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8029FEC
	bl sub_802E09A
	bne loc_8029FEC
	bl get_802D246 // () -> int
	ldr R1, dword_8029FF0 // =0x200000 
	tst R0, R1
	bne loc_8029FEC
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0xE0
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8029FEC
loc_8029FEA:
	mov R4, #1
loc_8029FEC:
	add r0, r4, #0
	pop {r4,pc}
dword_8029FF0: .word 0x200000
.endfunc // sub_8029FB4

.func
.thumb_func
// (int a1) -> bool
chipIDIs13f_8029FF4:
	push {R1-R7,lr}
	mov R3, #0
	ldr R1, off_802A028 // =dword_802A02C 
	ldr R2, [R1]
	cmp R0, R2
	beq loc_802A006
	ldr R2, [R1,#0x4] // (dword_802A030 - 0x802A02C)
	cmp R0, R2
	bne loc_802A008
loc_802A006:
	mov R3, #1
loc_802A008:
	add r0, r3, #0
	pop {R1-R7,pc}
.endfunc // chipIDIs13f_8029FF4

.func
.thumb_func
sub_802A00C:
	push {R1-R7,lr}
	mov R3, #0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	ldr R1, off_802A028 // =dword_802A02C 
	ldr R2, [R1]
	cmp R0, R2
	beq loc_802A022
	ldr R2, [R1,#0x4] // (dword_802A030 - 0x802A02C)
	cmp R0, R2
	bne loc_802A024
loc_802A022:
	mov R3, #1
loc_802A024:
	add r0, r3, #0
	pop {R1-R7,pc}
off_802A028: .word dword_802A02C
dword_802A02C: .word 0x13F
dword_802A030: .word 0x13F
.endfunc // sub_802A00C

.func
.thumb_func
sub_802A034:
	push {R1-R7,lr}
	ldr R0, dword_802A03C // =0x13F 
	pop {R1-R7,pc}
	.balign 4, 0x00
dword_802A03C: .word 0x13F
.endfunc // sub_802A034

.func
.thumb_func
sub_802A040:
	push {r4,r6,r7,lr}
	ldr R1, dword_802A084 // =0xC 
	add r6, r0, r1
	tst R0, R0
	bne loc_802A072
	push {r5}
	ldr R5, off_802A114 // =byte_2035280 
	ldr R0, [R5,#0x48] // (dword_20352C8 - 0x2035280)
	ldrb R0, [R0,#0x16]
	ldrb R1, [R5,#0x17] // (byte_2035297 - 0x2035280)
	cmp R1, #0
	beq loc_802A064
	ldrb R1, [R5,#0x16] // (byte_2035296 - 0x2035280)
	cmp R1, #0
	bne loc_802A064
	bl sub_8015B54
	b loc_802A068
loc_802A064:
	bl sub_8015B5C
loc_802A068:
	pop {r5}
	cmp R1, #0
	beq loc_802A072
	ldr R2, dword_802A0E4 // =0xC 
	add r6, r1, r2
loc_802A072:
	push {r5}
	ldr R5, off_802A114 // =byte_2035280 
	add r0, r6, #0
	bl sub_801E660
	mov R2, #0x4C // (byte_20352CC - 0x2035280)
	strb R0, [R5,R2]
	pop {r5}
	pop {r4,r6,r7,pc}
dword_802A084: .word 0xC
.endfunc // sub_802A040

.func
.thumb_func
sub_802A088:
	push {r4,r6,r7,lr}
	ldr R1, dword_802A0E0 // =0x6 
	add r6, r0, r1
	push {r5}
	ldr R5, off_802A114 // =byte_2035280 
	ldr R0, [R5,#0x48] // (dword_20352C8 - 0x2035280)
	ldrb R0, [R0,#0x16]
	ldrb R1, [R5,#0x17] // (byte_2035297 - 0x2035280)
	cmp R1, #0
	beq loc_802A0A8
	ldrb R1, [R5,#0x16] // (byte_2035296 - 0x2035280)
	cmp R1, #0
	bne loc_802A0A8
	bl sub_8015B54
	b loc_802A0AC
loc_802A0A8:
	bl sub_8015B5C
loc_802A0AC:
	pop {r5}
	cmp R1, #0xB
	blt loc_802A0B6
	ldr R2, dword_802A0E4 // =0xC 
	add r6, r6, r2
loc_802A0B6:
	push {r5}
	ldr R5, off_802A114 // =byte_2035280 
	add r0, r6, #0
	bl sub_801E660
	mov R2, #0x4C // (byte_20352CC - 0x2035280)
	strb R0, [R5,R2]
	pop {r5}
	pop {r4,r6,r7,pc}
.endfunc // sub_802A088

.func
.thumb_func
sub_802A0C8:
	push {lr}
	sub R0, #1
	ldr R1, dword_802A0E8 // =0xD 
	add r0, r0, r1
	push {r5}
	ldr R5, off_802A114 // =byte_2035280 
	bl sub_801E660
	mov R2, #0x4C // (byte_20352CC - 0x2035280)
	strb R0, [R5,R2]
	pop {r5}
	pop {pc}
dword_802A0E0: .word 0x6
dword_802A0E4: .word 0xC
dword_802A0E8: .word 0xD
.endfunc // sub_802A0C8

.func
.thumb_func
sub_802A0EC:
	push {lr}
	ldr R0, off_802A114 // =byte_2035280 
	mov R1, #0
	mov R2, #0x4C // (byte_20352CC - 0x2035280)
	strb R1, [R0,R2]
	pop {pc}
.endfunc // sub_802A0EC

.func
.thumb_func
sub_802A0F8:
	push {lr}
	ldr R0, off_802A114 // =byte_2035280 
	mov R1, #0
	mov R2, #0x4C // (byte_20352CC - 0x2035280)
	ldrb R1, [R0,R2]
	tst R1, R1
	beq loc_802A10C
	ldr R0, dword_802A118 // =0x4000 
	bl sub_801DACC
loc_802A10C:
	bl sub_802A0EC
	pop {pc}
	.balign 4, 0x00
off_802A114: .word byte_2035280
dword_802A118: .word 0x4000
.endfunc // sub_802A0F8

.func
.thumb_func
sub_802A11C:
	push {r4,lr}
	ldr R1, off_802A144 // =dword_802A148 
	lsl r0, r0, #2
	ldr R4, [R1,R0]
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x32 
	bl sub_80136D8
	add r0, r0, r4
	cmp R0, #9
	ble loc_802A13A
	mov R0, #9
	b locret_802A140
loc_802A13A:
	cmp R0, #0
	bge locret_802A140
	mov R0, #1
locret_802A140:
	pop {r4,pc}
	.balign 4, 0x00
off_802A144: .word dword_802A148
dword_802A148: .word 0x1, 0x3, 0x24FFB5D0, 0xF86EF003, 0xD12C2800, 0x79784F17
	.word 0xD02828FF, 0xFCF6F0F6, 0xD02428FF, 0x7C291C06, 0xD0204288, 0xD1042800
	.word 0xF865F003, 0x42082108, 0x7D69D118, 0xD0114288, 0x220189F9, 0x42114082
	.word 0xF003D111, 0x2108F858, 0xD1044208, 0x20001C30, 0xD0082800, 0x7978E006
	.word 0xDA042802, 0x20001C30, 0xD0002800, 0x1C201C34, 0xBDD0, 0x20349A0
	.word 0xB082B580, 0xF003466F, 0x2108F83E, 0xD1184208, 0x1C3821FF, 0x80418001
	.word 0x80C18081, 0xFBDCF7E0, 0x49098838, 0xDB0C4288, 0x42904A08, 0x1A40DC09
	.word 0xDF062106, 0x21013001, 0x4B2C4081, 0x430889D8, 0xB00281D8, 0xBD80
	.word 0x101, 0x142
.endfunc // sub_802A11C

.func
.thumb_func
sub_802A210:
	push {lr}
	ldrb R0, [R5,#0x15]
	cmp R0, #0
	beq locret_802A21E
	ldr R3, off_802A2AC // =dword_20349A0 
	mov R0, #0xFF
	strb R0, [R3,#0x5] // (byte_20349A5 - 0x20349A0)
locret_802A21E:
	pop {pc}
.endfunc // sub_802A210

.func
.thumb_func
sub_802A220:
	push {r4,r6,r7,lr}
	mov R4, #0xFF
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_802A2A2
	bl get_802D246 // () -> int
	ldr R1, dword_802A2A8 // =0x200000 
	tst R0, R1
	bne loc_802A2A2
	bl sub_802D234
	cmp R0, #0
	beq loc_802A248
	cmp R0, #0xA
	beq loc_802A248
	cmp R0, #0xB
	bne loc_802A2A2
loc_802A248:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x29 
	bl sub_80136CC
	cmp R0, #1
	blt loc_802A25C
	cmp R0, #0xB
	ble loc_802A2A2
loc_802A25C:
	ldr R7, off_802A2AC // =dword_20349A0 
	ldrb R0, [R7,#0x5] // (byte_20349A5 - 0x20349A0)
	cmp R0, #0xFF
	beq loc_802A2A2
	bl sub_8120B54
	cmp R0, #0xFF
	beq loc_802A2A2
	add r6, r0, #0
	ldrh R1, [R5,#0x3A]
	cmp R0, R1
	beq loc_802A2A2
	ldrh R1, [R7,#0xE] // (word_20349AE - 0x20349A0)
	mov R2, #1
	lsl R2, R0
	tst R1, R2
	bne loc_802A2A2
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_802A292
	add r0, r6, #0
	mov R0, #1
	cmp R0, #0
	beq loc_802A2A2
	b loc_802A2A0
loc_802A292:
	ldrb R0, [R7,#0x5] // (byte_20349A5 - 0x20349A0)
	cmp R0, #2
	bge loc_802A2A2
	add r0, r6, #0
	mov R0, #1
	cmp R0, #0
	beq loc_802A2A2
loc_802A2A0:
	add r4, r6, #0
loc_802A2A2:
	add r0, r4, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
dword_802A2A8: .word 0x200000
off_802A2AC: .word dword_20349A0
.endfunc // sub_802A220

.func
.thumb_func
sub_802A2B0:
	push {lr}
	ldr R1, off_802A2D4 // =off_802A2D8 
	ldrb R0, [R5,#0x12]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldrb R0, [R5,#0x14]
	add R0, #1
	mov r1, #0x3f 
	and R0, R1
	strb R0, [R5,#0x14]
	bne locret_802A2D2
	ldrb R0, [R5,#0x12]
	cmp R0, #0
	beq locret_802A2D2
	cmp R0, #3
	beq locret_802A2D2
locret_802A2D2:
	pop {pc}
off_802A2D4: .word off_802A2D8
off_802A2D8: .word sub_802A2E8+1
	.word sub_802A30C+1
	.word sub_802A33E+1
	.word sub_802A362+1
.endfunc // sub_802A2B0

.func
.thumb_func
sub_802A2E8:
	push {lr}
	bl sub_802A394
	cmp R0, #0
	beq locret_802A30A
	mov r0, #0x54 
	mov R1, #0xA
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x5c 
	mov R1, #0xA
	bl loc_8006274 // (int a1, int a2) -> void
	mov R0, #0
	strb R0, [R5,#0x13]
	mov R0, #4
	strb R0, [R5,#0x12]
locret_802A30A:
	pop {pc}
.endfunc // sub_802A2E8

.func
.thumb_func
sub_802A30C:
	push {r4,lr}
	ldrb R4, [R5,#0x13]
	ldr R2, off_802A3E8 // =byte_802A3F4 
	ldrh R2, [R2,R4]
	ldr R1, dword_802A3F0 // =0xFFFF 
	mov R0, #0x1F
	bl sub_8000642
	ldr R2, off_802A3EC // =byte_802A400 
	ldrh R2, [R2,R4]
	ldr R1, dword_802A3F0 // =0xFFFF 
	mov R0, #0x16
	bl sub_8000642
	add R4, #2
	strb R4, [R5,#0x13]
	bl engine_isScreeneffectAnimating // () -> zf
	bl loc_80062FC // () -> zf
	cmp R0, #0
	bne locret_802A33C
	mov R0, #8
	strb R0, [R5,#0x12]
locret_802A33C:
	pop {r4,pc}
.endfunc // sub_802A30C

.func
.thumb_func
sub_802A33E:
	push {lr}
	bl sub_802A394
	cmp R0, #0
	bne locret_802A360
	mov r0, #0x50 
	mov R1, #0xA
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x58 
	mov R1, #0xA
	bl loc_8006274 // (int a1, int a2) -> void
	mov R0, #0
	strb R0, [R5,#0x13]
	mov R0, #0xC
	strb R0, [R5,#0x12]
locret_802A360:
	pop {pc}
.endfunc // sub_802A33E

.func
.thumb_func
sub_802A362:
	push {r4,lr}
	ldrb R4, [R5,#0x13]
	ldr R2, off_802A3EC // =byte_802A400 
	ldrh R2, [R2,R4]
	ldr R1, dword_802A3F0 // =0xFFFF 
	mov R0, #0x1F
	bl sub_8000642
	ldr R2, off_802A3E8 // =byte_802A3F4 
	ldrh R2, [R2,R4]
	ldr R1, dword_802A3F0 // =0xFFFF 
	mov R0, #0x16
	bl sub_8000642
	add R4, #2
	strb R4, [R5,#0x13]
	bl engine_isScreeneffectAnimating // () -> zf
	bl loc_80062FC // () -> zf
	cmp R0, #0
	bne locret_802A392
	mov R0, #0
	strb R0, [R5,#0x12]
locret_802A392:
	pop {r4,pc}
.endfunc // sub_802A362

.func
.thumb_func
sub_802A394:
	push {r4,lr}
	mov R4, #0
	ldrb R0, [R5,#1]
	cmp R0, #0x18
	beq loc_802A3A2
	cmp R0, #4
	bne loc_802A3C8
loc_802A3A2:
	ldrb R0, [R5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #0
	bne loc_802A3C8
	ldr R0, [R0,#8]
	ldrh R0, [R0]
	bl getChipID_802A54E // (int a1) -> int
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov r1, #0x20 
	tst R0, R1
	beq loc_802A3C8
	mov R4, #1
loc_802A3C8:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_802A394

.func
.thumb_func
sub_802A3CC:
	push {lr}
	mov R0, #0x1F
	ldr R1, dword_802A3F0 // =0xFFFF 
	mov R2, #0x80
	add R2, #0x80
	bl sub_8000642
	mov R0, #0x16
	ldr R1, dword_802A3F0 // =0xFFFF 
	mov R2, #0x80
	add R2, #0x80
	bl sub_8000642
	pop {pc}
off_802A3E8: .word byte_802A3F4
off_802A3EC: .word byte_802A400
dword_802A3F0: .word 0xFFFF
byte_802A3F4: .byte 0x0, 0x1, 0xE0, 0x0, 0xC0, 0x0, 0xA0, 0x0, 0x80, 0x0, 0x80, 0x0
byte_802A400: .byte 0x80, 0x0, 0x80, 0x0, 0xA0, 0x0, 0xC0, 0x0, 0xE0, 0x0, 0x0, 0x1
.endfunc // sub_802A3CC

.func
.thumb_func
sub_802A40C:
	push {r4,r6,r7,lr}
	mov R7, #0
	mov R6, R10
	ldr R6, [R6,#0x18]
	bl sub_802D234
	cmp R0, #2
	beq loc_802A42C
	cmp R0, #3
	beq loc_802A42C
	cmp R0, #4
	beq loc_802A42C
	cmp R0, #5
	beq loc_802A42C
	cmp R0, #8
	bne loc_802A430
loc_802A42C:
	mov R0, #5
	b loc_802A498
loc_802A430:
	ldrb R0, [R6,#0xD]
	bl sub_8015B54
	mov R4, #1
	cmp R1, #0xA
	beq loc_802A442
	cmp R1, #0x16
	beq loc_802A442
	mov R4, #0
loc_802A442:
	ldrb R0, [R6,#0xD]
	mov R1, #0xA
	bl sub_80136CC
	ldr R1, off_802A4F8 // =dword_20349A0 
	ldrb R1, [R1,#0x11] // (byte_20349B1 - 0x20349A0)
	add r0, r0, r1
	cmp R0, #8
	ble loc_802A45A
	add r7, r0, #0
	sub R7, #8
	mov R0, #8
loc_802A45A:
	tst R4, R4
	bne loc_802A470
	push {r0}
	bl sub_802A5A0
	tst R0, R0
	pop {r0}
	beq loc_802A470
	mov R0, #0xA
	ldr R7, off_802A4F8 // =dword_20349A0 
	ldrb R7, [R7,#0x11] // (byte_20349B1 - 0x20349A0)
loc_802A470:
	push {r0}
	ldrb R0, [R6,#0xD]
	mov r1, #0x63 
	bl sub_80136CC
	add r1, r0, #0
	pop {r0}
	cmp R1, #0
	beq loc_802A498
	ldrb R2, [R6,#7]
	cmp R2, R1
	blt loc_802A498
	sub r2, r2, r1
	add R2, #1
	sub r7, r7, r2
	bpl loc_802A498
	add r0, r0, r7
	cmp R0, #2
	bge loc_802A498
	mov R0, #2
loc_802A498:
	strb R0, [R5,#6]
	pop {r4,r6,r7,pc}
.endfunc // sub_802A40C

.func
.thumb_func
sub_802A49C:
	push {lr}
	bl sub_802D234
	cmp R0, #2
	beq loc_802A4F0
	cmp R0, #3
	beq loc_802A4F0
	cmp R0, #4
	beq loc_802A4F0
	cmp R0, #5
	beq loc_802A4F0
	cmp R0, #8
	beq loc_802A4F0
	ldrb R0, [R5,#0x10]
	cmp R0, #0
	bne loc_802A4F0
	ldrb R1, [R5,#0x15]
	cmp R0, R1
	bne loc_802A4CE
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_8015B54
	b loc_802A4D8
loc_802A4CE:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_8015B5C
loc_802A4D8:
	cmp R1, #5
	beq loc_802A4E0
	cmp R1, #0x11
	bne loc_802A4F0
loc_802A4E0:
	ldr R1, off_802A4F8 // =dword_20349A0 
	ldrb R0, [R1,#0x11] // (byte_20349B1 - 0x20349A0)
	add R0, #1
	cmp R0, #3
	ble loc_802A4EC
	mov R0, #3
loc_802A4EC:
	strb R0, [R1,#0x11] // (byte_20349B1 - 0x20349A0)
	b locret_802A4F6
loc_802A4F0:
	ldr R1, off_802A4F8 // =dword_20349A0 
	mov R0, #0
	strb R0, [R1,#0x11] // (byte_20349B1 - 0x20349A0)
locret_802A4F6:
	pop {pc}
off_802A4F8: .word dword_20349A0
.endfunc // sub_802A49C

.func
.thumb_func
sub_802A4FC:
	push {r4,r6,r7,lr}
	ldr R0, off_802A534 // =byte_20366C0 
	ldrb R0, [R0]
	cmp R0, #0xFF
	beq locret_802A532
	ldr R4, off_802A534 // =byte_20366C0 
	mov r0, #0x32 
	add r4, r4, r0
	mov R6, #0xFF
	lsl r6, r6, #8
	add R6, #0xFF
	ldr R7, off_802A538 // =dword_20367E0 
loc_802A514:
	ldrh R0, [R4]
	cmp R0, R6
	beq locret_802A532
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#7]
	cmp R0, #2
	bgt loc_802A52E
	ldrb R1, [R7,R0]
	add R1, #1
	strb R1, [R7,R0]
loc_802A52E:
	add R4, #2
	b loc_802A514
locret_802A532:
	pop {r4,r6,r7,pc}
off_802A534: .word byte_20366C0
off_802A538: .word dword_20367E0
.endfunc // sub_802A4FC

.func
.thumb_func
sub_802A53C:
	push {R1-R7,lr}
	add r4, r0, #0
	bl sub_800AFBA
	bne loc_802A54A
	add r0, r4, #0
	pop {R1-R7,pc}
loc_802A54A:
	ldr R0, dword_802A560 // =0x3785 
	pop {R1-R7,pc}
.endfunc // sub_802A53C

.func
.thumb_func
// (int a1) -> int
getChipID_802A54E:
	push {R1-R7,lr}
	add r4, r0, #0
	bl sub_800B022 // (int a1) ->
	bne loc_802A55C
	add r0, r4, #0
	pop {R1-R7,pc}
loc_802A55C:
	ldr R0, dword_802A560 // =0x3785 
	pop {R1-R7,pc}
dword_802A560: .word 0x3785
.endfunc // getChipID_802A54E

.func
.thumb_func
sub_802A564:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	ldrb R1, [R5,#0x15]
	cmp R1, #0
	bne loc_802A578
	bl sub_8015B54
	b locret_802A57C
loc_802A578:
	bl sub_8015B5C
locret_802A57C:
	pop {pc}
.endfunc // sub_802A564

.func
.thumb_func
sub_802A57E:
	push {r4,lr}
	mov R4, #0
	bl sub_802A564
	cmp R0, #5
	beq loc_802A59C
	cmp R0, #1
	bne loc_802A596
	ldr R0, off_802A740 // =dword_20349A0 
	ldrb R0, [R0,#0x10] // (byte_20349B0 - 0x20349A0)
	tst R0, R0
	beq loc_802A59C
loc_802A596:
	cmp R1, #0xB
	bge loc_802A59C
	mov R4, #1
loc_802A59C:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_802A57E

.func
.thumb_func
sub_802A5A0:
	push {r4,lr}
	mov R4, #0
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #8
	beq loc_802A5D6
	bl sub_802D234
	cmp R0, #1
	beq loc_802A5D6
	cmp R0, #6
	beq loc_802A5D6
	cmp R0, #7
	beq loc_802A5D6
	cmp R0, #9
	beq loc_802A5D6
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x61 
	bl sub_80136CC
	cmp R0, #1
	bne loc_802A5D6
	mov R4, #1
loc_802A5D6:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_802A5A0

.func
.thumb_func
sub_802A5DA:
	push {r4,lr}
	mov R4, #0
	mov R0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0]
	cmp R1, #8
	beq loc_802A616
	bl sub_802D234
	cmp R0, #0
	beq loc_802A604
	cmp R0, #5
	beq loc_802A604
	cmp R0, #8
	beq loc_802A604
	cmp R0, #0xA
	beq loc_802A604
	cmp R0, #0xB
	beq loc_802A604
	b loc_802A616
loc_802A604:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov r1, #0x60 
	bl sub_80136CC
	cmp R0, #1
	bne loc_802A616
	mov R4, #1
loc_802A616:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_802A5DA

.func
.thumb_func
sub_802A61A:
	push {r4,r6,lr}
	mov R4, #0
	bl sub_8027D58
	ldrb R1, [R5,#6]
	cmp R0, R1
	bge loc_802A62C
	add r6, r0, #0
	b loc_802A62E
loc_802A62C:
	add r6, r1, #0
loc_802A62E:
	add r0, r4, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb R1, [R0,#7]
	cmp R1, #2
	bne loc_802A63E
	mov R1, #0
	strb R1, [R0,#7]
loc_802A63E:
	add R4, #1
	cmp R4, R6
	blt loc_802A62E
	pop {r4,r6,pc}
.endfunc // sub_802A61A

.func
.thumb_func
sub_802A646:
	push {lr}
	mov R3, R10
	ldr R3, [R3,#0x18]
	mov r0, #0x44 
	ldrb R0, [R3,R0]
	tst R0, R0
	beq locret_802A664
	mov r0, #0x45 
	ldrb R0, [R3,R0]
	ldrb R1, [R5,#6]
	cmp R0, R1
	bge locret_802A664
	mov r0, #0x44 
	mov R1, #0
	strb R1, [R3,R0]
locret_802A664:
	pop {pc}
	.balign 4, 0x00
	.word dword_20364C0
	.word unk_2035000
	.word unk_20365C0
	.word byte_203CDB0
	.byte 0xFF
	.byte  1
	.byte  0
	.byte  0
	.byte 0x20
	.byte 0x9C
	.byte  0
	.byte  6
byte_802A680: .byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x77
byte_802A6C0: .byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
	.byte 0x88
byte_802A700: .byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11, 0x11
	.byte 0x11
off_802A740: .word dword_20349A0
off_802A744: .word dword_86E55BC
	.word 0x6016C80
	.word 0x40
	.word dword_86E55FC
	.word 0x6016F40
	.word 0x100
	.word byte_86E587C
	.word 0x3001A80
	.word 0x20
	.word unk_86E57FC
	.word 0x6017240
	.word 0x80
	.word dword_86B7AE0
	.word 0x6017040
	.word 0x40
	.word dword_86B7AE0
	.word 0x6017080
	.word 0x40
	.word dword_86B7AE0
	.word 0x60170C0
	.word 0x20
	.word dword_86B7AE0
	.word 0x6017120
	.word 0x40
	.word dword_86B7AE0
	.word 0x60171A0
	.word 0x40
	.word dword_86B7AE0
	.word 0x60171E0
	.word 0x40
	.word dword_86B7AE0
	.word 0x6017220
	.word 0x20
	.word 0x0
dword_802A7CC: .word 0x10A050A
	.word 0x200060A
	.word 0x301070A
	.word 0x402080A
	.word 0xA03090A
	.word 0x60B000A
	.word 0x705010A
	.word byte_806020A
	.word 0x907030B
	.word 0xB08040B
	.word 0x40B01
	.word 0x5090A0B
off_802A7FC: .word off_8030904
	.word 0xA000102
byte_802A804: .byte 0x9, 0x8, 0x7, 0x6, 0x5, 0xB, 0xA, 0x7, 0x6, 0x5, 0x2, 0x1, 0x0, 0xB, 0xA
	.byte 0x6, 0x5, 0xB, 0xA
unk_802A817: .byte  0
	.word loc_8030200+1
	.byte  4
	.byte  9
	.byte 0xA
byte_802A81F: .byte 0x5, 0x6, 0x7, 0x8, 0x9, 0xB, 0xA, 0x0, 0x0
byte_802A828: .byte 0x90, 0xF, 0x91, 0x9, 0x92, 0x25, 0x93, 0x15, 0x94, 0x5
	.byte 0x95, 0x1, 0x96, 0x27, 0x97, 0x27, 0x98, 0xD, 0x99, 0x7
	.byte 0x9A, 0x3, 0x0, 0x0
byte_802A840: .byte 0x6C, 0xB3, 0x68, 0xB3, 0x64, 0xB3, 0xFF, 0xFF
byte_802A848: .byte 0x73, 0xB3, 0x73, 0xB3, 0x73, 0xB3, 0x73, 0xB3, 0x73
	.byte 0xB3, 0x73, 0xB3, 0x72, 0xB3, 0x72, 0xB3, 0x72, 0xB3
	.byte 0x72, 0xB3, 0x72, 0xB3, 0x72, 0xB3, 0x0, 0x0
unk_802A862: .byte 0x74 
	.byte 0xB3
	.byte 0x0, 0x0
.endfunc // sub_802A646

.func
.thumb_func
sub_802A866:
	push {lr}
	bl sub_802B298
	// size
	mov r1, #0x40 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_802B298
	mov R1, #1
	strb R1, [R0,#7]
	pop {pc}
.endfunc // sub_802A866

loc_802A87C:
	push {r5,lr}
	bl sub_802B298
	add r5, r0, #0
	ldr R1, off_802A894 // =off_802A898 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldrb R0, [R5,#4]
	pop {r5,pc}
	.balign 4, 0x00
off_802A894: .word off_802A898
off_802A898: .word sub_802A8A4+1
	.word sub_802A974+1
	.word sub_802A934+1
.func
.thumb_func
sub_802A8A4:
	push {lr}
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov R1, #0x97
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov R1, #0xAD
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl decomp_802B060
	ldr R0, off_802A918 // =unk_2035000 
	ldr R1, dword_802A91C // =0x9070 
	ldr R2, dword_802A920 // =0x6008E00 
	bl sub_802B4D4
	ldr R0, off_802A918 // =unk_2035000 
	ldr R1, dword_802A924 // =0x90D4 
	ldr R2, dword_802A928 // =0x6009A80 
	bl sub_802B51C
	ldr R0, off_802A914 // =unk_2031000 
	bl sub_802B2A0
	strh R0, [R5,#0x1E]
	mov R0, #0
	ldr R1, off_802A90C // =dword_8129180 
	bl sub_8120CC8
	strb R0, [R5,#0xC]
	strb R1, [R5,#0xD]
	mov R0, #0
	strb R0, [R5,#0xF]
	strb R0, [R5,#0x12]
	mvn R0, R0
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
	ldr R0, off_802A914 // =unk_2031000 
	ldr R1, off_802A92C // =decomp_2032000 
	bl sub_802B358
.endfunc // sub_802A8A4

	ldr R0, off_802A930 // =unk_2030E60 
	ldr R1, off_802A914 // =unk_2031000 
	bl sub_802B438
	mov R0, #4
	str R0, [R5]
	ldr R0, dword_802A910 // =0x20000 
	bl sub_801DACC
	pop {pc}
	.balign 4, 0x00
off_802A90C: .word dword_8129180
dword_802A910: .word 0x20000
off_802A914: .word unk_2031000
off_802A918: .word unk_2035000
dword_802A91C: .word 0x9070
dword_802A920: .word 0x6008E00
dword_802A924: .word 0x90D4
dword_802A928: .word 0x6009A80
off_802A92C: .word decomp_2032000
off_802A930: .word unk_2030E60
.func
.thumb_func
sub_802A934:
	push {lr}
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R2, [R1,#4]
	strb R2, [R1,#0x12]
	mov R0, #0x80
	add r0, r0, r1
	add R1, #0xD0
	lsl r2, r2, #2
	beq loc_802A966
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, dword_802A96C // =0x820080 
	bl sub_801DA48
	ldr R0, dword_802A96C // =0x820080 
	bl sub_801BECC
	ldr R0, dword_802A970 // =0x4 
	bl sub_801DACC
	mov R1, R10
	ldr R1, [R1,#8]
	mov R0, #0
	strh R0, [R1,#0x18]
loc_802A966:
	mov R0, #1
	strb R0, [R5,#4]
	pop {pc}
dword_802A96C: .word 0x820080
dword_802A970: .word 0x4
.endfunc // sub_802A934

.func
.thumb_func
sub_802A974:
	push {r5,lr}
	ldr R1, off_802A984 // =off_802A988 
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r5,pc}
	.balign 4, 0x00
off_802A984: .word off_802A988
off_802A988: .word sub_802A9B4+1
	.word sub_802A9D0+1
	.word sub_802ABD0+1
	.word sub_802ABF4+1
	.word sub_802AD84+1
	.word sub_802AE14+1
	.word sub_802AE5C+1
	.word sub_802AE84+1
	.word sub_802AEB8+1
	.word sub_802AED8+1
	.word sub_802ADFC+1
.endfunc // sub_802A974

.func
.thumb_func
sub_802A9B4:
	push {lr}
	bl sub_802AF6C
	bne locret_802A9CC
	mov R0, #4
	strb R0, [R5,#1]
	mov R1, #0
	ldrb R0, [R5,#0x10]
	cmp R0, #0xFF
	beq loc_802A9CA
	mov R1, #1
loc_802A9CA:
	strb R1, [R5,#2]
locret_802A9CC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_802A9B4

.func
.thumb_func
sub_802A9D0:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x24]
	strh R0, [R5,#0x26]
	ldrh R0, [R5,#0x20]
	strh R0, [R5,#0x22]
	ldrb R0, [R5,#2]
	tst R0, R0
	beq loc_802AA7C
	bl sub_802B0EC
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #1
	tst R0, R1
	beq loc_802AA0E
	ldrb R0, [R5,#0x10]
	cmp R0, #0xFF
	bne loc_802A9FE
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_802AB98
loc_802A9FE:
	mov R0, #0x82
	bl sound_play // () -> void
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	b loc_802AA54
loc_802AA0E:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #2
	tst R0, R1
	beq loc_802AA54
	ldrb R0, [R5,#0x11]
	cmp R0, #0xFF
	beq loc_802AA2A
	bl sub_802B5B0
	mov R0, #0xFF
	strb R0, [R5,#0x11]
	b loc_802AA38
loc_802AA2A:
	ldrb R0, [R5,#0x10]
	cmp R0, #0xFF
	beq loc_802AA38
	bl sub_802B5B0
	mov R0, #0xFF
	strb R0, [R5,#0x10]
loc_802AA38:
	mov R0, #0
	strb R0, [R5,#2]
	ldr R0, off_802ABB4 // =unk_2031000 
	ldr R1, off_802ABB8 // =decomp_2032000 
	bl sub_802B358
	ldr R0, off_802ABCC // =unk_2030E60 
	ldr R1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	mov R0, #0x83
	bl sound_play // () -> void
	b loc_802AB98
loc_802AA54:
	ldrb R0, [R5,#0x10]
	cmp R0, #0xFF
	beq loc_802AA62
	ldrb R0, [R5,#0x11]
	cmp R0, #0xFF
	beq loc_802AA62
	b loc_802AB98
loc_802AA62:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov r1, #0x20 
	tst R0, R1
	bne loc_802AA70
	b loc_802AB98
loc_802AA70:
	mov R0, #0
	strb R0, [R5,#2]
	mov R0, #0x7F
	bl sound_play // () -> void
	b loc_802AB98
loc_802AA7C:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	ldr R1, off_802ABC8 // =0x200 
	tst R0, R1
	beq loc_802AA9A
	mov R0, #0x1C
	strb R0, [R5,#1]
	mov R0, #0
	bl sub_802B5EC
	mov r0, #0x7b 
	bl sound_play // () -> void
	b loc_802AB98
loc_802AA9A:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	ldr R1, off_802ABC4 // =0x100 
	tst R0, R1
	beq loc_802AAC8
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x20]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr R1, off_802ABB4 // =unk_2031000 
	ldrh R0, [R1,R0]
	ldr R1, dword_802ABBC // =0xFFFF 
	cmp R0, R1
	beq loc_802AB98
	bl sub_802B5DC
	mov R0, #0x18
	strb R0, [R5,#1]
	mov R0, #0x9C
	bl sound_play // () -> void
	b loc_802AB98
loc_802AAC8:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #0x10
	tst R0, R1
	beq loc_802AAE0
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0x7F
	bl sound_play // () -> void
	b loc_802AB98
loc_802AAE0:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #5
	mov R2, #0
	mov R3, #0
	bl sub_811F7F8
	tst R0, R0
	beq loc_802AB20
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x26]
	cmp R0, R1
	bne loc_802AB0E
	ldrh R0, [R5,#0x20]
	ldrh R1, [R5,#0x22]
	cmp R0, R1
	beq loc_802AB98
	ldr R0, off_802ABCC // =unk_2030E60 
	ldr R1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	b loc_802AB98
loc_802AB0E:
	ldr R0, off_802ABB4 // =unk_2031000 
	ldr R1, off_802ABB8 // =decomp_2032000 
	bl sub_802B358
	ldr R0, off_802ABCC // =unk_2030E60 
	ldr R1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	b loc_802AB98
loc_802AB20:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #1
	tst R0, R1
	beq loc_802AB94
	mov R3, #0x10
	ldrb R0, [R5,#0x10]
	cmp R0, #0xFF
	beq loc_802AB36
	mov R3, #0x11
loc_802AB36:
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x20]
	add r0, r0, r1
	ldr R7, off_802ABB4 // =unk_2031000 
	lsl r4, r0, #1
	ldrh R6, [R7,R4]
	ldr R2, dword_802ABBC // =0xFFFF 
	cmp R6, R2
	beq loc_802AB64
	ldr R7, off_802ABC0 // =dword_802B5FC 
	lsl r4, r6, #3
	add R4, #4
	ldrh R6, [R7,R4]
	ldrh R4, [R5,#0x12]
	add r4, r4, r6
	cmp r4, #0x32 
	bgt loc_802AB64
	ldrb R1, [R5,#0x10]
	cmp R0, R1
	beq loc_802AB64
	ldrb R1, [R5,#0x11]
	cmp R0, R1
	bne loc_802AB6C
loc_802AB64:
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_802AB98
loc_802AB6C:
	strb R0, [R5,R3]
	ldrb R0, [R5,#0x12]
	add r0, r0, r6
	strb R0, [R5,#0x12]
	cmp R3, #0x11
	bne loc_802AB7C
	mov R0, #4
	strb R0, [R5,#2]
loc_802AB7C:
	ldr R0, off_802ABB4 // =unk_2031000 
	ldr R1, off_802ABB8 // =decomp_2032000 
	bl sub_802B358
	ldr R0, off_802ABCC // =unk_2030E60 
	ldr R1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	mov R0, #0x81
	bl sound_play // () -> void
	b loc_802AB98
loc_802AB94:
	bl sub_802B560
loc_802AB98:
	mov R0, #0x10
	bl sub_802B15C
	mov R0, #0x11
	bl sub_802B15C
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_802ABAE
	bl sub_802B1E4
loc_802ABAE:
	bl sub_802B270
	pop {R4-R7,pc}
off_802ABB4: .word unk_2031000
off_802ABB8: .word decomp_2032000
dword_802ABBC: .word 0xFFFF
off_802ABC0: .word dword_802B5FC
off_802ABC4: .word 0x100
off_802ABC8: .word 0x200
off_802ABCC: .word unk_2030E60
.endfunc // sub_802A9D0

.func
.thumb_func
sub_802ABD0:
	push {lr}
	bl sub_802AFD4
	bne locret_802ABEC
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	ldrb R0, [R5,#0x10]
	lsl r0, r0, #1
	ldr R1, off_802ABF0 // =unk_2031000 
	ldrh R0, [R1,R0]
	strb R0, [R5,#7]
locret_802ABEC:
	pop {pc}
	.byte 0, 0
off_802ABF0: .word unk_2031000
.endfunc // sub_802ABD0

.func
.thumb_func
sub_802ABF4:
	push {lr}
	ldr R1, off_802AC04 // =off_802AC08 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802AC04: .word off_802AC08
off_802AC08: .word sub_802AC10+1
	.word sub_802AC6E+1
.endfunc // sub_802ABF4

.func
.thumb_func
sub_802AC10:
	push {lr}
	ldrb R0, [R5,#3]
	cmp R0, #0
	bne loc_802AC4E
	mov R0, #1
	strb R0, [R5,#3]
	ldrb R0, [R5,#5]
	cmp R0, #2
	blt loc_802AC2C
	mov R0, #0
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_802AC6C
loc_802AC2C:
	ldrb R0, [R5,#7]
	sub R0, #1
	mov R1, #6
	mul R0, R1
	add R0, #1
	bl sub_802AEEA
	ldrb R2, [R5,#5]
	lsl r2, r2, #2
	add r2, #0x30 
	str R0, [R5,R2]
	ldrb R2, [R5,#5]
	add R2, #0xA
	strb R1, [R5,R2]
	mov R0, #2
	strb R0, [R5,#8]
	strb R0, [R5,#9]
loc_802AC4E:
	bl sub_802AF38
	ldrb R1, [R0,#9]
	cmp R1, #1
	bne locret_802AC6C
	mov R1, #0
	strh R1, [R0,#0x12]
	bl sub_802AF28
	mov r0, #0x28 
	strb R0, [R5,#1]
	mov R0, #4
	strh R0, [R5,#2]
	mov R0, #8
	str R0, [R5,#0x3C]
locret_802AC6C:
	pop {pc}
.endfunc // sub_802AC10

.func
.thumb_func
sub_802AC6E:
	push {lr}
	mov R3, R10
	ldr R3, [R3,#4]
	ldrh R0, [R3,#4]
	mov r1, #0x40 
	tst R0, R1
	beq loc_802AC8C
	ldrb R1, [R5,#9]
	cmp R1, #1
	ble loc_802AC8C
	sub R1, #1
	strb R1, [R5,#9]
	bl sub_802B5D0
	b loc_802AD48
loc_802AC8C:
	mov R1, #0x80
	tst R0, R1
	beq loc_802ACA2
	ldrb R1, [R5,#9]
	cmp R1, #3
	bge loc_802ACA2
	add R1, #1
	strb R1, [R5,#9]
	bl sub_802B5D0
	b loc_802AD48
loc_802ACA2:
	mov r1, #0x20 
	tst R0, R1
	beq loc_802ACB8
	ldrb R1, [R5,#8]
	cmp R1, #1
	ble loc_802ACB8
	sub R1, #1
	strb R1, [R5,#8]
	bl sub_802B5D0
	b loc_802AD48
loc_802ACB8:
	mov R1, #0x10
	tst R0, R1
	beq loc_802ACCE
	ldrb R1, [R5,#8]
	cmp R1, #3
	bge loc_802ACCE
	add R1, #1
	strb R1, [R5,#8]
	bl sub_802B5D0
	b loc_802AD48
loc_802ACCE:
	mov R1, #1
	tst R0, R1
	beq loc_802AD34
	ldrb R0, [R5,#8]
	ldrb R1, [R5,#9]
	bl object_getPanelParameters
	ldr R1, dword_802AD6C // =0xF800000 
	tst R0, R1
	bne loc_802ACEA
	ldr R1, dword_802AD70 // =0x10 
	and R0, R1
	cmp R0, R1
	beq loc_802ACF2
loc_802ACEA:
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_802AD48
loc_802ACF2:
	bl sub_802AF38
	bl sub_802AF28
	mov r0, #0x67 
	bl sound_play // () -> void
	ldrb R0, [R5,#5]
	add R0, #1
	strb R0, [R5,#5]
	cmp R0, #2
	blt loc_802AD1C
loc_802AD0A:
	ldr R0, off_802AD78 // =aTuDhr 
	mov r1, #0x28 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b loc_802AD48
loc_802AD1C:
	ldrb R0, [R5,#0x11]
	cmp R0, #0xFF
	beq loc_802AD0A
	lsl r0, r0, #1
	ldr R1, off_802AD74 // =unk_2031000 
	ldrh R0, [R1,R0]
	strb R0, [R5,#7]
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b loc_802AD48
loc_802AD34:
	mov R1, #2
	tst R0, R1
	beq loc_802AD48
	mov r0, #0x68 
	bl sound_play // () -> void
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_802AD48:
	ldr R0, dword_802AD80 // =0x2A0000 
	push {r0}
	mov R0, SP
	ldrb R1, [R5,#8]
	mov R2, #5
	mul R1, R2
	sub R1, #3
	strb R1, [R0]
	ldrb R1, [R5,#9]
	mov R2, #3
	mul R1, R2
	add R1, #7
	strb R1, [R0,#1]
	pop {r0}
	bl sub_802AF0E
	pop {pc}
	.balign 4, 0x00
dword_802AD6C: .word 0xF800000
dword_802AD70: .word 0x10
off_802AD74: .word unk_2031000
off_802AD78: .word aTuDhr
	.byte 0, 0, 0, 0
dword_802AD80: .word 0x2A0000
.endfunc // sub_802AC6E

.func
.thumb_func
sub_802AD84:
	push {lr}
	ldrb R0, [R5,#3]
	cmp R0, #0
	bne loc_802ADB0
	mov R0, #1
	strb R0, [R5,#3]
	bl sub_802AF38
	add r5, r0, #0
	ldr R2, [R0,#0x58]
	mov R1, #1
	strb R1, [R2,#2]
	bl sub_800EC3C
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#8]
	sub R0, #1
	strb R0, [R1,#8]
	ldrb R0, [R1,#4]
	sub R0, #1
	strb R0, [R1,#4]
loc_802ADB0:
	bl sub_802AF38
	ldrb R1, [R0]
	cmp R1, #0
	bne locret_802ADF8
	ldrb R0, [R5,#5]
	add R0, #0xA
	ldrb R0, [R5,R0]
	cmp R0, #0
	beq loc_802ADC8
	bl sub_8002ADE
loc_802ADC8:
	ldrb R0, [R5,#5]
	tst R0, R0
	bne loc_802ADD8
	mov R0, #0
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_802ADF8
loc_802ADD8:
	sub R0, #1
	strb R0, [R5,#5]
	bl sub_802AF38
	ldrb R1, [R0,#0x12]
	strb R1, [R5,#8]
	ldrb R1, [R0,#0x13]
	strb R1, [R5,#9]
	mov R1, #0
	strh R1, [R0,#0x12]
	bl sub_802AF28
	mov r0, #0x28 
	strb R0, [R5,#1]
	mov R0, #8
	str R0, [R5,#0x3C]
locret_802ADF8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_802AD84

.func
.thumb_func
sub_802ADFC:
	push {lr}
	ldr R0, [R5,#0x3C]
	sub R0, #1
	str R0, [R5,#0x3C]
	bne locret_802AE12
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #4
	strh R0, [R5,#2]
	bl sub_802AF0E
locret_802AE12:
	pop {pc}
.endfunc // sub_802ADFC

.func
.thumb_func
sub_802AE14:
	push {lr}
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq locret_802AE5A
	bl chatbox_8045F4C
	tst R0, R0
	beq loc_802AE52
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	ldrb R0, [R5,#5]
	sub R0, #1
	strb R0, [R5,#5]
	bl sub_802AF38
	ldrb R1, [R0,#0x12]
	strb R1, [R5,#8]
	ldrb R1, [R0,#0x13]
	strb R1, [R5,#9]
	mov R1, #0
	strh R1, [R0,#0x12]
	bl sub_802AF28
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #4
	strh R0, [R5,#2]
	b loc_802AE56
loc_802AE52:
	mov R0, #8
	str R0, [R5]
loc_802AE56:
	bl chatbox_8040818
locret_802AE5A:
	pop {pc}
.endfunc // sub_802AE14

.func
.thumb_func
sub_802AE5C:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	bne loc_802AE70
	mov R0, #0x9E
	bl sound_play // () -> void
	mov R0, #4
	strb R0, [R5,#1]
loc_802AE70:
	mov R0, #0x10
	bl sub_802B15C
	mov R0, #0x11
	bl sub_802B15C
	bl sub_802B270
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_802AE5C

.func
.thumb_func
sub_802AE84:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	bne loc_802AEA6
	bl chatbox_8045F4C
	tst R0, R0
	beq loc_802AE9C
	mov R0, #4
	strb R0, [R5,#1]
	b loc_802AEA6
loc_802AE9C:
	mov R0, #1
	bl sub_802B5EC
	mov r0, #0x20 
	strb R0, [R5,#1]
loc_802AEA6:
	mov R0, #0x10
	bl sub_802B15C
	mov R0, #0x11
	bl sub_802B15C
	bl sub_802B270
	pop {pc}
.endfunc // sub_802AE84

.func
.thumb_func
sub_802AEB8:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	bne loc_802AEC6
	mov r0, #0x24 
	strb R0, [R5,#1]
loc_802AEC6:
	mov R0, #0x10
	bl sub_802B15C
	mov R0, #0x11
	bl sub_802B15C
	bl sub_802B270
	pop {pc}
.endfunc // sub_802AEB8

.func
.thumb_func
sub_802AED8:
	push {lr}
	bl sub_802AFD4
.endfunc // sub_802AED8

	bne locret_802AEE8
	bl sub_800AABC
	mov R0, #8
	strb R0, [R5]
locret_802AEE8:
	pop {pc}
.func
.thumb_func
sub_802AEEA:
	push {R5-R7,lr}
	add r6, r0, #0
	bl sub_800F214
	ldrb R1, [R0,#1]
	ldrb R0, [R0]
	bl sub_8002A64
	add r7, r0, #0
	add r0, r6, #0
	mov R1, #2
	mov R2, #2
	mov R3, #0
	mov R5, #0
	bl sub_80076A0
	add r1, r7, #0
	pop {R5-R7,pc}
.endfunc // sub_802AEEA

.func
.thumb_func
sub_802AF0E:
	push {r5,lr}
	bl sub_802AF38
	ldrb R1, [R5,#8]
	strb R1, [R0,#0x12]
	strb R1, [R0,#0x14]
	ldrb R1, [R5,#9]
	strb R1, [R0,#0x13]
	strb R1, [R0,#0x15]
	add r5, r0, #0
	bl sub_800E29C // () -> void
	pop {r5,pc}
.endfunc // sub_802AF0E

.func
.thumb_func
sub_802AF28:
	push {r5,lr}
	add r5, r0, #0
	ldr R0, dword_802AF34 // =0x80000 
	bl sub_801A16C
	pop {r5,pc}
dword_802AF34: .word 0x80000
.endfunc // sub_802AF28

.func
.thumb_func
sub_802AF38:
	ldrb R0, [R5,#5]
	lsl r0, r0, #2
	add r0, #0x30 
	ldr R0, [R5,R0]
	mov PC, LR
.endfunc // sub_802AF38

.func
.thumb_func
sub_802AF42:
	push {r5,lr}
	ldrb R0, [R5,#5]
	sub R0, #1
	strb R0, [R5,#5]
	bl sub_802AF38
	add r5, r0, #0
	ldr R2, [R0,#0x58]
	mov R1, #1
	strb R1, [R2,#2]
	bl sub_800EC3C
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R0, [R1,#8]
	sub R0, #1
	strb R0, [R1,#8]
	ldrb R0, [R1,#4]
	sub R0, #1
	strb R0, [R1,#4]
	pop {r5,pc}
.endfunc // sub_802AF42

.func
.thumb_func
sub_802AF6C:
	push {R4-R7,lr}
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_802AF8C
	mov R1, R10
	ldr R1, [R1,#8]
	mov r0, #0x78 
	strh R0, [R1,#0x18]
	mov r0, #0x79 
	bl sound_play // () -> void
	mov R0, #0xF
	str R0, [R5,#0x3C]
	mov r0, #0x78 
	str R0, [R5,#0x38]
	strb R0, [R5,#2]
loc_802AF8C:
	ldr R0, [R5,#0x38]
	sub R0, #0xC
	push {r0,r4,r6,r7}
	mov R6, #4
	and R6, R0
	lsr r6, r6, #2
	add R6, #1
loc_802AF9A:
	ldr R0, [R5,#0x3C]
	sub R0, #1
	str R0, [R5,#0x3C]
	ldr R4, off_802B08C // =unk_2035000 
	lsl r0, r0, #1
	add r4, r4, r0
	lsr r0, r0, #1
	mov R1, #0
	mov R2, #3
	mov R7, #0x14
loc_802AFAE:
	push {r0,r1}
	ldrh R3, [R4]
	mov R2, #3
	bl sub_800187C
	pop {r0,r1}
	add R1, #1
	add R4, #0x1E
	sub R7, #1
	bne loc_802AFAE
	sub R6, #1
	bne loc_802AF9A
	pop {r0,r4,r6,r7}
	str R0, [R5,#0x38]
	mov R1, R10
	ldr R1, [R1,#8]
	strh R0, [R1,#0x18]
	cmp R0, #0
	pop {R4-R7,pc}
.endfunc // sub_802AF6C

.func
.thumb_func
sub_802AFD4:
	push {R4-R7,lr}
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_802AFE4
	str R0, [R5,#0x3C]
	str R0, [R5,#0x38]
	mov R0, #4
	strb R0, [R5,#2]
loc_802AFE4:
	ldr R0, [R5,#0x38]
	add R0, #0xC
	push {r0,R4-R7}
	add r7, r5, #0
	mov R6, #4
	and R6, R0
	lsr r6, r6, #2
	mov R0, #1
	eor R6, R0
	add R6, #1
loc_802AFF8:
	ldr R0, [R7,#0x3C]
	add R0, #1
	str R0, [R7,#0x3C]
	// j
	sub R0, #1
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_802B020 // =dword_802B024 
	mov R4, #1
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	sub R6, #1
	bne loc_802AFF8
	pop {r0,R4-R7}
	str R0, [R5,#0x38]
	mov R1, R10
	ldr R1, [R1,#8]
	strh R0, [R1,#0x18]
	cmp r0, #0x78 
	pop {R4-R7,pc}
off_802B020: .word dword_802B024
dword_802B024: .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.endfunc // sub_802AFD4

.func
.thumb_func
decomp_802B060:
	push {lr}
	// a1; src: (*a1)<<1>>1, dest= (u32)a1[8]
	ldr R0, initRefs // =initRefs_802B070 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
initRefs: .word initRefs_802B070
initRefs_802B070: .word comp_86DD59C + 1<<31
	.word 0x6008020
	.word decomp_2032000
	.word comp_86DDAD0 + 1<<31
	.word unk_2030E60
	.word decomp_2032000
	.word comp_86DD9B4 + 1<<31
off_802B08C: .word unk_2035000
	.word decomp_2032000
	.word byte_86DDB24
	.word unk_3001A80
	.word 0x20
	.word unk_86C9D6C
	.word byte_30016B0
	.word 0x20
	.word comp_86C9BD4 + 1<<31
	.word 0x6016C80
	.word decomp_2032000
	.word comp_86C9D38 + 1<<31
	.word 0x6016E00
	.word decomp_2032000
	.word comp_86DDB44 + 1<<31
	.word 0x6016E40
	.word decomp_2032000
	.word comp_86DDB7C + 1<<31
	.word 0x6016E80
	.word decomp_2032000
	.word comp_86D6974 + 1<<31
	.word comp_2030860
	.word decomp_2032000
	.word 0x0
.endfunc // decomp_802B060

.func
.thumb_func
sub_802B0EC:
	push {R4-R7,lr}
	mov R7, #4
	ldr R6, off_802B118 // =dword_802B11C 
loc_802B0F2:
	ldr R0, [R6]
	lsl r0, r0, #0x10
	ldr R1, [R6,#4]
	orr R0, R1
	ldr R1, dword_802B114 // =0x10002 
	ldrb R2, [R5,#0xF]
	ldr R3, off_802B110 // =byte_802A848 
	ldr R4, [R6,#8]
	bl sub_811FAF4
	add R6, #0x10
	sub R7, #1
	bgt loc_802B0F2
	strb R0, [R5,#0xF]
	pop {R4-R7,pc}
off_802B110: .word byte_802A848
dword_802B114: .word 0x10002
off_802B118: .word dword_802B11C
dword_802B11C: .word 0x56
dword_802B120: .word 0x79
dword_802B124: .word 0x0
	.word 0x0
	.word 0x6A, 0x79, 0x10000000, 0x0
	.word 0x56, 0x8A, 0x20000000, 0x0
	.word 0x6A, 0x8A, 0x30000000, 0x0
.endfunc // sub_802B0EC

.func
.thumb_func
sub_802B15C:
	push {R4-R7,lr}
	ldrb R2, [R5,R0]
	cmp R2, #0xFF
	beq locret_802B194
	ldrh R0, [R5,#0x24]
	cmp R2, R0
	blt locret_802B194
	add r1, r0, #5
	cmp R2, R1
	bge locret_802B194
	sub r5, r2, r0
	lsl r5, r5, #4
	mov R7, #4
	ldr R6, off_802B1A0 // =dword_802B1A4 
loc_802B178:
	ldr R0, [R6]
	lsl r0, r0, #0x10
	ldr R1, [R6,#4]
	add r1, r1, r5
	orr R0, R1
	ldr R1, dword_802B19C // =0x10002 
	mov R2, #0
	ldr R3, off_802B198 // =unk_802A862 
	ldr R4, [R6,#8]
	bl sub_811FAF4
	add R6, #0x10
	sub R7, #1
	bgt loc_802B178
locret_802B194:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802B198: .word unk_802A862
dword_802B19C: .word 0x10002
off_802B1A0: .word dword_802B1A4
dword_802B1A4: .word 0xC
dword_802B1A8: .word 0xF
dword_802B1AC: .word 0x4000
	.word 0x0
	.word 0x4E, 0xF, 0x10004000, 0x0
	.word 0xC, 0x1B, 0x20004000, 0x0
	.word 0x4E, 0x1B, 0x30004000, 0x0
.endfunc // sub_802B15C

.func
.thumb_func
sub_802B1E4:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_802B1FE
	mov R0, #2
	mov R1, #0x12
	mov r2, #0x20 
	mov R3, #0xC
	ldr R4, off_802B200 // =byte_802A840 
	ldr R6, dword_802B208 // =0x40000000 
	ldr R7, dword_802B204 // =0x10002 
	bl sub_802B20C
locret_802B1FE:
	pop {R4-R7,pc}
off_802B200: .word byte_802A840
dword_802B204: .word 0x10002
dword_802B208: .word 0x40000000
.endfunc // sub_802B1E4

.func
.thumb_func
sub_802B20C:
	push {R4-R7,lr}
	sub sp, sp, #0x1c
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	str R4, [SP,#0xC]
	str R6, [SP,#0x10]
	lsl r0, r0, #0x10
	ldr R1, [SP]
	ldr R3, [SP,#4]
	tst R3, R3
	bne loc_802B228
	mov R2, #0
	b loc_802B22A
loc_802B228:
	ldrh R2, [R5,R3]
loc_802B22A:
	mov R3, #0x10
	mul R2, R3
	add r1, r1, r2
	orr R0, R1
	add r1, r7, #0
	ldr R2, [SP,#8]
	ldrb R2, [R5,R2]
	str R2, [SP,#0x14]
	mov R3, #0xF
	and R2, R3
	ldr R3, [SP,#0xC]
	ldr R4, [SP,#0x10]
	bl sub_811FAF4
	ldr R1, [SP,#0x14]
	lsr r1, r1, #4
	sub R1, #1
	bne loc_802B258
	ldr R1, off_802B26C // =dword_8129180 
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_802B258:
	ldr R2, [SP,#8]
	ldrb R0, [R5,R2]
	mov R3, #0xF
	and R0, R3
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,R2]
	add sp, sp, #0x1c
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802B26C: .word dword_8129180
.endfunc // sub_802B20C

.func
.thumb_func
sub_802B270:
	push {R4-R7,lr}
	ldr R0, dword_802B28C // =0x62 
	mov R1, #0xC
	lsl r0, r0, #0x10
	orr R0, R1
	ldr R1, dword_802B290 // =0x10002 
	ldrh R2, [R5,#0x1E]
	ldrh R3, [R5,#0x24]
	mov R4, #7
	ldr R6, dword_802B294 // =0xB370 
	mov r7, #0x48 
	bl sub_811FA98
	pop {R4-R7,pc}
dword_802B28C: .word 0x62
dword_802B290: .word 0x10002
dword_802B294: .word 0xB370
.endfunc // sub_802B270

.func
.thumb_func
sub_802B298:
	ldr R0, off_802B29C // =dword_20364C0 
	mov PC, LR
off_802B29C: .word dword_20364C0
.endfunc // sub_802B298

.func
.thumb_func
sub_802B2A0:
	push {R4-R7,lr}
	add r7, r0, #0
	ldr R1, dword_802B350 // =0x1B 
	lsl r1, r1, #1
	// byte
	mov R2, #0xFF
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	mov R6, #0
	mov R4, #0
loc_802B2B2:
	ldr R0, off_802B2DC // =dword_802B2E0 
	lsl r1, r4, #2
	ldr R0, [R0,R1]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_802B2CE
	ldr R1, dword_802B354 // =0x197 
	ldr R0, off_802B2DC // =dword_802B2E0 
	lsl r2, r4, #2
	ldr R0, [R0,R2]
	sub r0, r0, r1
	add R0, #1
	strh R0, [R7,R6]
loc_802B2CE:
	add R6, #2
	add R4, #1
	ldr R0, dword_802B350 // =0x1B 
	cmp R4, R0
	blt loc_802B2B2
	lsr r0, r6, #1
	pop {R4-R7,pc}
off_802B2DC: .word dword_802B2E0
dword_802B2E0: .word 0x197, 0x198, 0x199, 0x19A, 0x19B, 0x19C, 0x19D, 0x19E
	.word 0x19F, 0x1A1, 0x1A2, 0x1A4, 0x1A5, 0x1A6, 0x1A7, 0x1A8
	.word 0x1A9, 0x1AA, 0x1AB, 0x1AC, 0x1AD, 0x1AE, 0x1AF, 0x1B0
	.word 0x1B1, 0x1B2, 0x1B3, 0x1B4
dword_802B350: .word 0x1B
dword_802B354: .word 0x197
.endfunc // sub_802B2A0

.func
.thumb_func
sub_802B358:
	push {R4-R7,lr}
	sub sp, sp, #8
	str R1, [SP,#4]
	add r4, r0, #0
	mov R6, #0
	str R6, [SP]
loc_802B364:
	mov R7, #8
	ldrh R0, [R5,#0x24]
	add r6, r6, r0
	ldrb R1, [R5,#0x10]
	cmp R1, #0xFF
	beq loc_802B380
	cmp R6, R1
	beq loc_802B37E
	ldrb R1, [R5,#0x11]
	cmp R1, #0xFF
	beq loc_802B380
	cmp R6, R1
	bne loc_802B380
loc_802B37E:
	mov R7, #0xC
loc_802B380:
	lsl r6, r6, #1
	ldrh R0, [R4,R6]
	ldr R1, dword_802B3E0 // =0xFFFF 
	cmp R0, R1
	bne loc_802B392
	mov r1, #0x29 
	ldr R0, off_802B3DC // =aTuDhr 
	mov R7, #0xC
	b loc_802B3AC
loc_802B392:
	lsl r2, r0, #3
	add R2, #4
	ldr R1, off_802B3D8 // =dword_802B5FC 
	ldrh R1, [R1,R2]
	ldrb R2, [R5,#0x12]
	add r1, r1, r2
	cmp r1, #0x32 
	ble loc_802B3A4
	mov R7, #0xC
loc_802B3A4:
	lsl r0, r0, #1
	ldr R1, off_802B3F4 // =dword_802B3F8 
	ldrh R1, [R1,R0]
	ldr R0, off_802B3F0 // =dword_86F047C 
loc_802B3AC:
	ldr R6, [SP]
	mov r2, #0x28 
	lsl r2, r2, #4
	mul R6, R2
	ldr R2, [SP,#4]
	push {R4-R7}
	add r2, r2, r6
	ldr R3, dword_802B3E8 // =0x6008E00 
	add r3, r3, r6
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_802B3E4 // =dword_86B7AE0 
	bl render_graphicalText_8045F8C
.endfunc // sub_802B358

	pop {R4-R7}
	ldr R6, [SP]
	add R6, #1
	str R6, [SP]
	cmp R6, #5
	blt loc_802B364
	add sp, sp, #8
	pop {R4-R7,pc}
off_802B3D8: .word dword_802B5FC
off_802B3DC: .word aTuDhr
dword_802B3E0: .word 0xFFFF
off_802B3E4: .word dword_86B7AE0
dword_802B3E8: .word 0x6008E00
	.word decomp_2032000
off_802B3F0: .word dword_86F047C
off_802B3F4: .word dword_802B3F8
dword_802B3F8: .word 0x10000, 0xD0007, 0x190013, 0x25001F, 0x31002B, 0x3D0037
	.word 0x490043, 0x55004F, 0x61005B, 0x6D0067, 0x790073, 0x85007F
	.word 0x91008B, 0x9D0097, 0xA900A3, 0x1F00AF
.func
.thumb_func
sub_802B438:
	push {R4-R7,lr}
	sub sp, sp, #0x18
	str R0, [SP,#0x10]
	str R1, [SP,#0x14]
	mov R0, #0
	str R0, [SP,#4]
	str R0, [SP]
	str R0, [SP,#0xC]
loc_802B448:
	ldr R4, [SP,#0x14]
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x20]
	add r1, r1, r0
	lsl r1, r1, #1
	ldrh R0, [R4,R1]
	ldr R1, dword_802B4D0 // =0xFFFF 
	cmp R0, R1
	bne loc_802B45E
	mov R0, #0
	b loc_802B46E
loc_802B45E:
	lsl r1, r0, #3
	ldr R2, [SP,#4]
	lsl r2, r2, #1
	add r1, r1, r2
	ldr R4, off_802B4C8 // =dword_802B5FC 
	ldrh R0, [R4,R1]
	bl sub_8000C00
loc_802B46E:
	add r7, r0, #0
	mov R6, #0x10
loc_802B472:
	mov r1, #0x20 
	sub r1, r1, r6
	add r2, r7, #0
	lsl R2, R1
	lsr R2, R1
	sub R6, #4
	lsr R2, R6
	tst R2, R2
	bne loc_802B492
	ldr R0, [SP,#0xC]
	tst R0, R0
	bne loc_802B492
	tst R6, R6
	beq loc_802B492
	mov R2, #0xA
	b loc_802B496
loc_802B492:
	mov R0, #1
	str R0, [SP,#0xC]
loc_802B496:
	mov r0, #0x20 
	mul R0, R2
	ldr R1, [SP,#0x10]
	add r0, r0, r1
	ldr R1, dword_802B4CC // =0x6009A80 
	ldr R3, [SP]
	mov r2, #0x20 
	mul R3, R2
	add r1, r1, r3
	bl loc_8000AC4
.endfunc // sub_802B438

	ldr R0, [SP]
	add R0, #1
	str R0, [SP]
	cmp R6, #0
	bgt loc_802B472
	mov R0, #0
	str R0, [SP,#0xC]
	ldr R0, [SP,#4]
	add R0, #1
	str R0, [SP,#4]
	cmp R0, #3
	blt loc_802B448
	add sp, sp, #0x18
	pop {R4-R7,pc}
off_802B4C8: .word dword_802B5FC
dword_802B4CC: .word 0x6009A80
dword_802B4D0: .word 0xFFFF
.func
.thumb_func
sub_802B4D4:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r7, r0, #0
	add R7, #4
	add r7, #0x3c 
	mov R1, #0x1E
	add r4, r7, r1
	add r0, r2, #0
	ldr R1, off_802B518 // =0xC80 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	mov R5, #5
loc_802B4EE:
	mov R6, #0
	ldr R3, [SP]
	push {r4,r7}
loc_802B4F4:
	strh R3, [R7]
	add R3, #1
	strh R3, [R4]
	add R3, #1
	add R7, #2
	add R4, #2
	add R6, #1
	cmp R6, #0xA
	blt loc_802B4F4
	pop {r4,r7}
	str R3, [SP]
	add r7, #0x3c 
	add r4, #0x3c 
	sub R5, #1
	bgt loc_802B4EE
	add sp, sp, #4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802B518: .word 0xC80
.endfunc // sub_802B4D4

.func
.thumb_func
sub_802B51C:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r7, r0, #0
	add R7, #0xA
	ldr R3, off_802B55C // =0x1A4 
	add r7, r7, r3
	mov R1, #0x1E
	add r4, r7, r1
	mov R5, #3
loc_802B530:
	mov R6, #0
	ldr R3, [SP]
	push {r4,r7}
loc_802B536:
	strh R3, [R7]
	add R3, #1
	add R7, #2
	add R6, #1
	cmp R6, #4
	blt loc_802B536
	pop {r4,r7}
	str R3, [SP]
	add r7, #0x3c 
	sub R5, #1
	cmp R5, #1
	bgt loc_802B530
	sub R7, #2
	tst R5, R5
	bne loc_802B530
	add sp, sp, #4
	pop {R4-R7,pc}
	.word 0x180
off_802B55C: .word 0x1A4
.endfunc // sub_802B51C

.func
.thumb_func
sub_802B560:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #2
	tst R0, R1
	beq locret_802B5A2
	mov R1, #0x11
	ldrb R0, [R5,R1]
	cmp R0, #0xFF
	bne loc_802B57E
	mov R1, #0x10
	ldrb R0, [R5,R1]
	cmp R0, #0xFF
	beq locret_802B5A2
loc_802B57E:
	push {r1}
	ldrb R0, [R5,R1]
	bl sub_802B5B0
	pop {r1}
	mov R0, #0xFF
	strb R0, [R5,R1]
	ldr R0, off_802B5A4 // =unk_2031000 
	ldr R1, off_802B5A8 // =decomp_2032000 
	bl sub_802B358
	ldr R0, off_802B5AC // =unk_2030E60 
	ldr R1, off_802B5A4 // =unk_2031000 
	bl sub_802B438
	mov R0, #0x83
	bl sound_play // () -> void
locret_802B5A2:
	pop {pc}
off_802B5A4: .word unk_2031000
off_802B5A8: .word decomp_2032000
off_802B5AC: .word unk_2030E60
.endfunc // sub_802B560

.func
.thumb_func
sub_802B5B0:
	lsl r0, r0, #1
	ldr R1, off_802B5C8 // =unk_2031000 
	ldrh R0, [R1,R0]
	lsl r0, r0, #3
	add R0, #4
	ldr R1, off_802B5CC // =dword_802B5FC 
	ldrh R0, [R1,R0]
	ldrb R1, [R5,#0x12]
	sub r1, r1, r0
	strb R1, [R5,#0x12]
	mov PC, LR
	.balign 4, 0x00
off_802B5C8: .word unk_2031000
off_802B5CC: .word dword_802B5FC
.endfunc // sub_802B5B0

.func
.thumb_func
sub_802B5D0:
	push {lr}
	mov r0, #0x66 
	bl sound_play // () -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_802B5D0

.func
.thumb_func
sub_802B5DC:
	push {lr}
	add r1, r0, #0
	ldr R0, off_802B5E8 // =comp_2030860 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {pc}
off_802B5E8: .word comp_2030860
.endfunc // sub_802B5DC

.func
.thumb_func
sub_802B5EC:
	push {lr}
	add r1, r0, #0
	ldr R0, off_802B5F8 // =notAdded_scripts_86EF78C 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {pc}
off_802B5F8: .word notAdded_scripts_86EF78C
dword_802B5FC:
	// this looks like text
	.word 0x0
	.word 0x0
	.word 0xA0028
	.word 0xA
	.word 0x140046
	.word 0xA
	.word 0x280082
	.word 0x14
	.word 0x1E005A
	.word 0x14
	.word 0x320064
	.word 0x1E
	.word 0x140050
	.word 0xA
	.byte 0x82
	.byte  0
	.byte 0x46 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x3C 
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x82
	.byte  0
	.byte  0
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte 0xA
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0x3C 
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0xC8
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x28 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte 0x28 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x78 
	.byte  0
	.byte 0x28 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x8C
	.byte  0
	.byte 0x1E
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0xA
	.byte  0
	.byte  0
	.byte  0
	.byte 0x82
	.byte  0
	.byte  5
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0x3C 
	.byte  0
	.byte 0xA
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0x8C
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0xB4
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x28 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x3C 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte 0x78 
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x28 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x64 
	.byte  0
	.byte 0x28 
	.byte  0
	.byte 0x1E
	.byte  0
	.byte  0
	.byte  0
.endfunc // sub_802B5EC

.func
.thumb_func
sub_802B6EC:
	push {R4-R7,lr}
	mov R6, #1
	b loc_802B6F6
.endfunc // sub_802B6EC

.func
.thumb_func
sub_802B6F2:
	push {R4-R7,lr}
	mov R6, #0
loc_802B6F6:
	push {R0-R3}
	// memBlock
	ldr R0, off_802BA44 // =word_2036660 
	// size
	mov r1, #0x20 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R7, #0
	cmp R6, #0
	beq loc_802B708
	mov R7, #0x1C
loc_802B708:
	lsl r7, r7, #9
	pop {R0-R3}
	ldr R5, off_802BA44 // =word_2036660 
	strh R0, [R5,#0x4] // (word_2036664 - 0x2036660)
	strb R1, [R5,#0x6] // (byte_2036666 - 0x2036660)
	strb R2, [R5,#0x7] // (byte_2036667 - 0x2036660)
	add r6, r5, #0
	add R6, #0x14
	mov R1, #0
	sub R1, #1
	mov R4, #0xFF
	mov R2, #0
loc_802B720:
	add R4, #1
	ldrsh R0, [R3,R2]
	orr R0, R7
	strh R0, [R6]
	add R3, #2
	add R6, #2
	cmp R0, R1
	bne loc_802B720
	strb R4, [R5,#0x8] // (byte_2036668 - 0x2036660)
	pop {R4-R7,pc}
.endfunc // sub_802B6F2

loc_802B734:
	push {r5,lr}
	ldr R5, off_802BA44 // =word_2036660 
	ldr R0, [R5,#0xC] // (dword_203666C - 0x2036660)
	add R0, #1
	str R0, [R5,#0xC] // (dword_203666C - 0x2036660)
	ldr R1, off_802B74C // =off_802B750 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r5,pc}
	.balign 4, 0x00
off_802B74C: .word off_802B750
off_802B750: .word sub_802B75C+1
	.word loc_802B76C+1
	.word sub_802B766+1
.func
.thumb_func
sub_802B75C:
	push {lr}
	mov R0, #4
	str R0, [R5]
	mov R0, #0
	pop {pc}
.endfunc // sub_802B75C

.func
.thumb_func
sub_802B766:
	push {lr}
	mov R0, #1
	pop {pc}
.endfunc // sub_802B766

loc_802B76C:
	push {r5,lr}
	ldr R5, off_802BA44 // =word_2036660 
	ldr R1, off_802B780 // =off_802B784 
	ldrb R0, [R5,#0x1] // (word_2036660+1 - 0x2036660)
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	mov R0, #0
	pop {r5,pc}
	.byte 0, 0
off_802B780: .word off_802B784
off_802B784: .word sub_802B7A0+1
	.word sub_802B7E0+1
	.word sub_802B80C+1
	.word sub_802B8E0+1
	.word sub_802B920+1
	.word sub_802B9B8+1
	.word sub_802B9D4+1
.func
.thumb_func
sub_802B7A0:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_802B7BC
	mov R0, #1
	strb R0, [R5,#2]
	mov R0, #0
	bl sub_802B9FE
	mov R0, #0x14
	mov R1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_802B7DE
loc_802B7BC:
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_802B7DE
	mov r0, #0x24 
	ldrb R1, [R5,#7]
	cmp R1, #0
	bne loc_802B7CE
	mov r0, #0x34 
loc_802B7CE:
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0
	str R0, [R5,#0x10]
locret_802B7DE:
	pop {pc}
.endfunc // sub_802B7A0

.func
.thumb_func
sub_802B7E0:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #0
	bne loc_802B7F4
	bl sub_801E754
	cmp R0, #2
	bne locret_802B80A
	mov R0, #1
	strb R0, [R5,#2]
loc_802B7F4:
	ldr R0, [R5,#0x10]
	add R0, #1
	cmp R0, #0x14
	blt loc_802B808
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0
	str R0, [R5,#0xC]
loc_802B808:
	str R0, [R5,#0x10]
locret_802B80A:
	pop {pc}
.endfunc // sub_802B7E0

.func
.thumb_func
sub_802B80C:
	push {lr}
	bl sub_802B9E4
	ldr R0, [R5,#0x10]
	add r1, r0, #1
	str R1, [R5,#0x10]
	mov R1, #7
	tst R0, R1
	bne locret_802B8AE
	add r3, r0, #0
	lsr r0, r0, #2
	add R0, #0x14
	ldrh R0, [R5,R0]
	push {R0-R7}
	bl sub_8027D10
	ldr R2, off_802B990 // =0x48 
	mul R2, R3
	ldr R3, dword_802B9A4 // =0x6009560 
	add r3, r3, r2
	ldr R2, off_802B9A0 // =byte_203C4E0 
	mov R4, #9
	mov R5, #1
	ldr R6, off_802B9A8 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R0-R7}
	push {R3-R7}
	lsl r2, r0, #0x17
	lsr r2, r2, #0x17
	ldr R1, off_802B99C // =0x160 
	cmp R2, R1
	bge loc_802B86A
	lsr r1, r0, #9
	ldr R0, off_802B9AC // =byte_86F0300 
	ldr R2, off_802B990 // =0x48 
	mul R2, R3
	ldr R3, dword_802B9B4 // =0x6009760 
	add r3, r3, r2
	ldr R2, off_802B9B0 // =byte_203C6E0 
	mov R4, #1
	mov R5, #1
	ldr R6, off_802B9A8 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
loc_802B86A:
	pop {R3-R7}
	ldr R0, [R5,#0x10]
	lsr r0, r0, #3
	ldrb R1, [R5,#6]
	cmp R0, R1
	blt loc_802B888
	sub r0, r0, r1
	ldrb R1, [R5,#7]
	cmp R0, R1
	bge loc_802B888
	mov R0, #0x91
	bl sound_play // () -> void
	ldr R0, dword_802B998 // =0xA0AB 
	b loc_802B88A
loc_802B888:
	ldr R0, dword_802B994 // =0xD0AB 
loc_802B88A:
	mov R2, #0x12
	lsr r3, r3, #3
	mul R2, R3
	add r0, r0, r2
	ldr R1, [R5,#0x10]
	lsr r1, r1, #3
	bl sub_802B8B0
	ldr R0, [R5,#0x10]
	lsr r0, r0, #3
	add R0, #1
	ldrb R1, [R5,#8]
	cmp R0, R1
	blt locret_802B8AE
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	str R0, [R5,#0x10]
locret_802B8AE:
	pop {pc}
.endfunc // sub_802B80C

.func
.thumb_func
sub_802B8B0:
	push {r4,r5,lr}
	sub sp, sp, #0x24
	mov R2, SP
	mov R3, #9
loc_802B8B8:
	strh R0, [R2]
	add R0, #1
	strh R0, [R2,#0x12]
	add R0, #1
	add R2, #2
	sub R3, #1
	bne loc_802B8B8
	mov R3, SP
	mov R0, #3
	mul R1, R0
	add R1, #5
	bl sub_802BA18
	mov R2, #3
	mov R4, #9
	mov R5, #2
	bl sub_802BA24
	add sp, sp, #0x24
	pop {r4,r5,pc}
.endfunc // sub_802B8B0

.func
.thumb_func
sub_802B8E0:
	push {lr}
	bl sub_802B9E4
	ldr R0, [R5,#0x10]
	add R0, #1
	str R0, [R5,#0x10]
	cmp R0, #0x18
	blt locret_802B91E
	push {R4-R7}
	ldrb R1, [R5,#6]
	mov R0, #3
	mul R1, R0
	add R1, #5
	ldrb R5, [R5,#7]
	mul R5, R0
	sub R5, #1
	ldr R0, off_802BA44 // =word_2036660 
	bl sub_802BA18
	mov R2, #3
	mov R3, #0
	mov R4, #9
	bl sub_802BA34
	pop {R4-R7}
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0
	str R0, [R5,#0x10]
locret_802B91E:
	pop {pc}
.endfunc // sub_802B8E0

.func
.thumb_func
sub_802B920:
	push {lr}
	bl sub_802B9E4
	ldr R0, [R5,#0x10]
	add R0, #1
	str R0, [R5,#0x10]
	cmp r0, #0x60 
	bge loc_802B96E
	cmp R0, #0x10
	bne locret_802B98C
	ldr R0, dword_802B998 // =0xA0AB 
	mov R2, #0x12
	ldrb R1, [R5,#6]
	mul R2, R1
	add r0, r0, r2
	bl sub_802B8B0
	push {R4-R7}
	ldrh R0, [R5,#4]
	bl sub_8027D10
	ldr R2, off_802B990 // =0x48 
	ldrb R3, [R5,#6]
	lsl r3, r3, #3
	mul R2, R3
	ldr R3, dword_802B9A4 // =0x6009560 
	add r3, r3, r2
	ldr R2, off_802B9A0 // =byte_203C4E0 
	mov R4, #9
	mov R5, #1
	ldr R6, off_802B9A8 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R4-R7}
	mov R0, #0x92
	bl sound_play // () -> void
	b locret_802B98C
loc_802B96E:
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	bl sub_801E780
	bl sub_802BA18
	mov R1, #5
	mov R2, #3
	mov R3, #0
	mov R4, #9
	mov R5, #0xE
	bl sub_802BA34
locret_802B98C:
	pop {pc}
	.byte 0, 0
off_802B990: .word 0x48
dword_802B994: .word 0xD0AB
dword_802B998: .word 0xA0AB
off_802B99C: .word 0x160
off_802B9A0: .word byte_203C4E0
dword_802B9A4: .word 0x6009560
off_802B9A8: .word dword_86B7AE0
off_802B9AC: .word byte_86F0300
off_802B9B0: .word byte_203C6E0
dword_802B9B4: .word 0x6009760
.endfunc // sub_802B920

.func
.thumb_func
sub_802B9B8:
	push {lr}
	bl sub_801E754
	cmp R0, #0
	bne locret_802B9D2
	mov R0, #0x18
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	mov R0, #0x10
	mov R1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_802B9D2:
	pop {pc}
.endfunc // sub_802B9B8

.func
.thumb_func
sub_802B9D4:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	cmp R0, #0
	bne locret_802B9E2
	mov R0, #8
	str R0, [R5]
locret_802B9E2:
	pop {pc}
.endfunc // sub_802B9D4

.func
.thumb_func
sub_802B9E4:
	push {r0,r1,lr}
	ldr R0, [R5,#0xC]
	mov R1, #3
	tst R0, R1
	bne locret_802B9FC
	lsr r0, r0, #4
	and R0, R1
	cmp R0, #3
	bne loc_802B9F8
	mov R0, #1
loc_802B9F8:
	bl sub_802B9FE
locret_802B9FC:
	pop {r0,r1,pc}
.endfunc // sub_802B9E4

.func
.thumb_func
sub_802B9FE:
	push {R1-R3,lr}
	lsl r0, r0, #3
	ldr R1, off_802BA10 // =byte_802BA48 
	add r0, r0, r1
	ldr R1, off_802BA14 // =unk_3001AA0 
	mov R2, #8
	bl loc_8000AC8
.endfunc // sub_802B9FE

	pop {R1-R3,pc}
off_802BA10: .word byte_802BA48
off_802BA14: .word unk_3001AA0
.func
.thumb_func
sub_802BA18:
	mov R0, R10
	ldr R0, [R0,#8]
	ldrh R0, [R0,#0x18]
	asr r0, r0, #3
	add R0, #1
	mov PC, LR
.endfunc // sub_802BA18

.func
.thumb_func
sub_802BA24:
	push {r6,lr}
	ldr R6, off_802BA44 // =word_2036660 
	ldrb R6, [R6,#0x7] // (byte_2036667 - 0x2036660)
	cmp R6, #0
	beq locret_802BA32
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_802BA32:
	pop {r6,pc}
.endfunc // sub_802BA24

.func
.thumb_func
sub_802BA34:
	push {r6,lr}
	ldr R6, off_802BA44 // =word_2036660 
	ldrb R6, [R6,#0x7] // (byte_2036667 - 0x2036660)
	cmp R6, #0
	beq locret_802BA42
	bl sub_80018D0
locret_802BA42:
	pop {r6,pc}
off_802BA44: .word word_2036660
byte_802BA48: .byte 0x0, 0x0, 0xFF, 0x7F, 0xA5, 0x14, 0x0, 0x0, 0x0, 0x0, 0xF0, 0x43
	.byte 0xA5, 0x14, 0x0, 0x0, 0x0, 0x0, 0x1F, 0x42, 0xA5, 0x14, 0x0, 0x0
byte_802BA60: .byte 0x3, 0x4, 0x53, 0x1, 0x47, 0x0, 0x48, 0x0, 0x49, 0x0
byte_802BA6A: .byte 0x3, 0x4, 0x53, 0x1, 0x47, 0x0, 0x4A, 0x0, 0x4B, 0x0
byte_802BA74: .byte 0x3, 0x4, 0x56, 0x1, 0x46, 0x0, 0x46, 0x0, 0x98, 0x0
byte_802BA7E: .byte 0x3, 0x4, 0x57, 0x1, 0xBA, 0x0, 0xBC, 0x0, 0xBB, 0x0
byte_802BA88: .byte 0x3, 0x4, 0x4E, 0x1, 0x22, 0x0, 0x23, 0x0, 0x24, 0x0
byte_802BA92: .byte 0x3, 0x4, 0x58, 0x1, 0x4A, 0x0, 0x4B, 0x0, 0xE2, 0x0
byte_802BA9C: .byte 0x3, 0x4, 0x59, 0x1, 0x96, 0x0, 0x96, 0x0, 0x2D, 0x1
byte_802BAA6: .byte 0x3, 0x4, 0x59, 0x1, 0x96, 0x0, 0x96, 0x0, 0x32, 0x1
byte_802BAB0: .byte 0x3, 0x4, 0x5B, 0x1, 0x8B, 0x0, 0xC3, 0x0, 0xB9, 0x0
byte_802BABA: .byte 0x3, 0x4, 0x5C, 0x1, 0xE2, 0x0, 0xBA, 0x0, 0x10, 0x1
byte_802BAC4: .byte 0x3, 0x4, 0x5C, 0x1, 0x12, 0x1, 0xBA, 0x0, 0xE0, 0x0
byte_802BACE: .byte 0x3, 0x4, 0x5D, 0x1, 0x16, 0x1, 0x17, 0x1, 0x18, 0x1
byte_802BAD8: .byte 0x4, 0x4, 0x5A, 0x1, 0x6D, 0x0, 0x3F, 0x0, 0x24, 0x0, 0x27, 0x0
byte_802BAE4: .byte 0x3, 0x0, 0x40, 0x1, 0x1, 0x0
byte_802BAEA: .byte 0x3, 0x0, 0x41, 0x1, 0x2, 0x0
byte_802BAF0: .byte 0x3, 0x0, 0x42, 0x1, 0x3, 0x0
byte_802BAF6: .byte 0x3, 0x0, 0x51, 0x1, 0x17, 0x0
byte_802BAFC: .byte 0x3, 0x0, 0x43, 0x1, 0x14, 0x0
byte_802BB02: .byte 0x3, 0x0, 0x44, 0x1, 0x15, 0x0
byte_802BB08: .byte 0x3, 0x0, 0x45, 0x1, 0x16, 0x0
byte_802BB0E: .byte 0x3, 0x0, 0x46, 0x1, 0x6B, 0x0
byte_802BB14: .byte 0x3, 0x0, 0x47, 0x1, 0x6C, 0x0
byte_802BB1A: .byte 0x3, 0x0, 0x48, 0x1, 0x6D, 0x0
byte_802BB20: .byte 0x3, 0x0, 0x52, 0x1, 0x9, 0x0
byte_802BB26: .byte 0x3, 0x0, 0x52, 0x1, 0xA, 0x0
byte_802BB2C: .byte 0x3, 0x0, 0x52, 0x1, 0xB, 0x0
byte_802BB32: .byte 0x3, 0x0, 0x55, 0x1, 0x32, 0x0
byte_802BB38: .byte 0x3, 0x0, 0x54, 0x1, 0x13, 0x0
byte_802BB3E: .byte 0x3, 0x0, 0x4F, 0x1, 0x90, 0x0
byte_802BB44: .byte 0x3, 0x0, 0x4F, 0x1, 0xC8, 0x0
byte_802BB4A: .byte 0x3, 0x0, 0x4F, 0x1, 0xC9, 0x0
byte_802BB50: .byte 0x3, 0x0, 0x49, 0x1, 0x5C, 0x0
byte_802BB56: .byte 0x3, 0x0, 0x4A, 0x1, 0x5D, 0x0
byte_802BB5C: .byte 0x3, 0x0, 0x4B, 0x1, 0x5E, 0x0
byte_802BB62: .byte 0x3, 0x0, 0x4C, 0x1, 0x40, 0x0
byte_802BB68: .byte 0x3, 0x0, 0x4C, 0x1, 0x41, 0x0
byte_802BB6E: .byte 0x3, 0x0, 0x4C, 0x1, 0x42, 0x0
byte_802BB74: .byte 0x3, 0x0, 0x4D, 0x1, 0x7B, 0x0
byte_802BB7A: .byte 0x3, 0x0, 0x4D, 0x1, 0x7C, 0x0
byte_802BB80: .byte 0x3, 0x0, 0x4D, 0x1, 0x7D, 0x0
byte_802BB86: .byte 0x3, 0x0, 0x50, 0x1, 0x5F, 0x0
byte_802BB8C: .byte 0x3, 0x0, 0x50, 0x1, 0x60, 0x0
byte_802BB92: .byte 0x3, 0x0, 0x50, 0x1, 0x61, 0x0
byte_802BB98: .byte 0x3, 0x4, 0x40, 0x1, 0x1, 0x0, 0x1, 0x0, 0xC, 0x0
byte_802BBA2: .byte 0x3, 0x4, 0x41, 0x1, 0x2, 0x0, 0x2, 0x0, 0xD, 0x0
byte_802BBAC: .byte 0x3, 0x4, 0x42, 0x1, 0x3, 0x0, 0x3, 0x0, 0xE, 0x0
byte_802BBB6: .byte 0x3, 0x4, 0x43, 0x1, 0x14, 0x0, 0x14, 0x0, 0x6E, 0x0
byte_802BBC0: .byte 0x3, 0x4, 0x44, 0x1, 0x15, 0x0, 0x15, 0x0, 0x6F, 0x0
byte_802BBCA: .byte 0x3, 0x4, 0x45, 0x1, 0x16, 0x0, 0x16, 0x0, 0x70, 0x0
byte_802BBD4: .byte 0x3, 0x4, 0x46, 0x1, 0x6B, 0x0, 0x6B, 0x0, 0x2E, 0x0
byte_802BBDE: .byte 0x3, 0x4, 0x47, 0x1, 0x6C, 0x0, 0x6C, 0x0, 0x2E, 0x0
byte_802BBE8: .byte 0x3, 0x4, 0x48, 0x1, 0x6D, 0x0, 0x6D, 0x0, 0x2E, 0x0
byte_802BBF2: .byte 0x3, 0x4, 0x49, 0x1, 0x5C, 0x0, 0x5C, 0x0, 0x5, 0x0
byte_802BBFC: .byte 0x3, 0x4, 0x4A, 0x1, 0x5D, 0x0, 0x5D, 0x0, 0x6, 0x0
byte_802BC06: .byte 0x3, 0x4, 0x4B, 0x1, 0x5E, 0x0, 0x5E, 0x0, 0x7, 0x0
byte_802BC10: .byte 0x3, 0x4, 0x4C, 0x1, 0x40, 0x0, 0x41, 0x0, 0x42, 0x0
byte_802BC1A: .byte 0x3, 0x4, 0x4D, 0x1, 0x7B, 0x0, 0x7C, 0x0, 0x7D, 0x0
byte_802BC24: .byte 0x3, 0x4, 0x4F, 0x1, 0x90, 0x0, 0xC8, 0x0, 0xC9, 0x0
byte_802BC2E: .byte 0x3, 0x4, 0x50, 0x1, 0x5F, 0x0, 0x60, 0x0, 0x61, 0x0
byte_802BC38: .byte 0x3, 0x4, 0x51, 0x1, 0x17, 0x0, 0x17, 0x0, 0x30, 0x0
byte_802BC42: .byte 0x3, 0x4, 0x52, 0x1, 0x9, 0x0, 0xA, 0x0, 0xB, 0x0
byte_802BC4C: .byte 0x3, 0x4, 0x55, 0x1, 0x32, 0x0, 0x32, 0x0, 0x33, 0x0
byte_802BC56: .byte 0x3, 0x4, 0x54, 0x1, 0x13, 0x0, 0x13, 0x0, 0x4A, 0x0
off_802BC60: .word byte_802BB98
	.word byte_802BBA2
	.word byte_802BBAC
	.word byte_802BBB6
	.word byte_802BBC0
	.word byte_802BBCA
	.word byte_802BBD4
	.word byte_802BBDE
	.word byte_802BBE8
	.word byte_802BBF2
	.word byte_802BBFC
	.word byte_802BC06
	.word byte_802BC10
	.word byte_802BC1A
	.word byte_802BC24
	.word byte_802BC2E
	.word byte_802BC38
	.word byte_802BC42
	.word byte_802BC4C
	.word byte_802BC56
off_802BCB0: .word byte_802BA60
	.word byte_802BA6A
	.word byte_802BA74
	.word byte_802BA7E
	.word byte_802BA88
	.word byte_802BA92
	.word byte_802BA9C
	.word byte_802BAA6
	.word byte_802BAB0
	.word byte_802BABA
	.word byte_802BAC4
	.word byte_802BACE
	.word byte_802BAD8
	.word byte_802BAE4
	.word byte_802BAEA
	.word byte_802BAF0
	.word byte_802BAF6
	.word byte_802BAFC
	.word byte_802BB02
	.word byte_802BB08
	.word byte_802BB0E
	.word byte_802BB14
	.word byte_802BB1A
	.word byte_802BB20
	.word byte_802BB26
	.word byte_802BB2C
	.word byte_802BB32
	.word byte_802BB38
	.word byte_802BB3E
	.word byte_802BB44
	.word byte_802BB4A
	.word byte_802BB50
	.word byte_802BB56
	.word byte_802BB5C
	.word byte_802BB62
	.word byte_802BB68
	.word byte_802BB6E
	.word byte_802BB74
	.word byte_802BB7A
	.word byte_802BB80
	.word byte_802BB86
	.word byte_802BB8C
	.word byte_802BB92
	.word 0x0
.endfunc // sub_802BA34

.func
.thumb_func
sub_802BD60:
	push {r5,lr}
	ldr R5, off_802BDAC // =dword_20364C0 
	mov R0, #1
	strb R0, [R5,#0x5] // (dword_20364C4+1 - 0x20364C0)
	bl sub_802C8EA
	str R0, [R5,#0x18] // (dword_20364D8 - 0x20364C0)
	ldrb R0, [R5,#0x6] // (dword_20364C4+2 - 0x20364C0)
	strb R0, [R5,#0x7] // (dword_20364C4+3 - 0x20364C0)
	ldr R1, off_802BD9C // =off_802BDA0 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	push {r5}
	mov R1, #0x6 // (dword_20364C4+2 - 0x20364C0)
	// j
	ldrsb R0, [R5,R1]
	// i
	mov R1, #2
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_802BDB0 // =unk_2034B30 
	mov R4, #0x18
	mov R5, #0x12
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	bl sub_802C460
	ldrb R0, [R5,#5]
	pop {r5,pc}
	.balign 4, 0x00
off_802BD9C: .word off_802BDA0
off_802BDA0: .word sub_802BDB4+1
	.word sub_802BDC0+1
	.word sub_802C348+1
off_802BDAC: .word dword_20364C0
off_802BDB0: .word unk_2034B30
.endfunc // sub_802BD60

.func
.thumb_func
sub_802BDB4:
	push {lr}
	bl sub_802C97E
	mov R0, #4
	str R0, [R5]
	pop {pc}
.endfunc // sub_802BDB4

.func
.thumb_func
sub_802BDC0:
	push {lr}
	ldr R1, off_802BDD8 // =off_802BDDC 
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_802C85C
	bl sub_802CA5C
	pop {pc}
	.balign 4, 0x00
off_802BDD8: .word off_802BDDC
off_802BDDC: .word sub_802BDF0+1
	.word sub_802BE90+1
	.word sub_802C280+1
	.word sub_802C2D0+1
	.word sub_802C328+1
.endfunc // sub_802BDC0

.func
.thumb_func
sub_802BDF0:
	push {lr}
	ldr R1, off_802BE00 // =off_802BE04 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_802BE00: .word off_802BE04
off_802BE04: .word sub_802BE0C+1
	.word sub_802BE36+1
.endfunc // sub_802BDF0

.func
.thumb_func
sub_802BE0C:
	push {r4,r5,lr}
	push {r5}
	mov R0, #0
	mov R1, #0
	mov R2, #3
	mov R3, #0
	mov R4, #6
	mov R5, #2
	bl sub_80018D0
	pop {r5}
	mov R3, R10
	ldr R3, [R3,#8]
	mov R0, #0
	strh R0, [R3,#0x18]
	mov R1, #0
	bl sub_801E0A0
	mov R0, #4
	strh R0, [R5,#2]
	pop {r4,r5,pc}
.endfunc // sub_802BE0C

.func
.thumb_func
sub_802BE36:
	push {lr}
	mov R1, #6
	ldrsb R0, [R5,R1]
	add R0, #2
	strb R0, [R5,#6]
	cmp R0, #3
	blt loc_802BE50
	mov R0, #3
	strb R0, [R5,#6]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
loc_802BE50:
	ldrb R0, [R5,#4]
	cmp R0, #2
	beq locret_802BE66
	mov R1, #0
	ldr R0, [R5,#0x1C]
	ldrb R1, [R5,#0xE]
	bl sub_802C4E8
	ldrb R0, [R5,#8]
	bl sub_802C6EC
locret_802BE66:
	pop {pc}
pool_802BE68: .word dword_802BE6C
dword_802BE6C: .word 0x500, 0x1200, 0x3600, 0x3000, 0x4000
	.word 0x5000, 0x3000, 0x4500, 0x10000
.endfunc // sub_802BE36

.func
.thumb_func
sub_802BE90:
	push {lr}
	ldr R1, off_802BEA0 // =off_802BEA4 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_802BEA0: .word off_802BEA4
off_802BEA4: .word sub_802BEB4+1
	.word sub_802BF4C+1
	.word sub_802C170+1
	.word sub_802C1D4+1
.endfunc // sub_802BE90

.func
.thumb_func
sub_802BEB4:
	push {lr}
	ldr R1, off_802BEC4 // =off_802BEC8 
	ldrb R0, [R5,#3]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802BEC4: .word off_802BEC8
off_802BEC8: .word sub_802BED4+1
	.word sub_802BEFC+1
	.word sub_802BF0C+1
.endfunc // sub_802BEB4

.func
.thumb_func
sub_802BED4:
	push {lr}
	bl sub_802C8D4
	tst R0, R0
	bne loc_802BEE8
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b locret_802BEFA
loc_802BEE8:
	strh R0, [R5,#0x10]
	mov R0, #1
	ldrb R1, [R5,#0xC]
	tst R1, R1
	bne loc_802BEF4
	mov R0, #0x1E
loc_802BEF4:
	strb R0, [R5,#0xB]
	mov R0, #4
	strb R0, [R5,#3]
locret_802BEFA:
	pop {pc}
.endfunc // sub_802BED4

.func
.thumb_func
sub_802BEFC:
	push {lr}
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	bne locret_802BF0A
	mov R0, #8
	strb R0, [R5,#3]
locret_802BF0A:
	pop {pc}
.endfunc // sub_802BEFC

.func
.thumb_func
sub_802BF0C:
	push {lr}
	ldr R7, off_802BF48 // =dword_2036820 
	ldrh R0, [R7,#0x4] // (dword_2036824 - 0x2036820)
	add R7, #8
	ldrh R1, [R7,#0x4] // (dword_203682C - 0x2036828)
	orr R0, R1
	mov R1, #1
	tst R0, R1
	beq loc_802BF34
	ldrb R0, [R5,#0xC]
	cmp R0, #1
	ble loc_802BF28
	mov R0, #0xC
	b loc_802BF2A
loc_802BF28:
	mov R0, #4
loc_802BF2A:
	strh R0, [R5,#2]
	mov R0, #0
	bl sub_802C810
	b locret_802BF44
loc_802BF34:
	mov R7, R10
	ldr R7, [R7,#0x24]
	ldrh R0, [R7]
	mov R1, #8
	and R0, R1
	lsr r0, r0, #3
	bl sub_802C810
locret_802BF44:
	pop {pc}
	.balign 4, 0x00
off_802BF48: .word dword_2036820
.endfunc // sub_802BF0C

.func
.thumb_func
sub_802BF4C:
	push {lr}
	ldr R1, off_802BF5C // =off_802BF60 
	ldrb R0, [R5,#3]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802BF5C: .word off_802BF60
off_802BF60: .word sub_802BF6C+1
	.word sub_802C044+1
	.word sub_802C0A4+1
.endfunc // sub_802BF4C

.func
.thumb_func
sub_802BF6C:
	push {lr}
	mov R0, #0
	ldr R7, off_802C01C // =unk_2035320 
loc_802BF72:
	strb R0, [R7,R0]
	add R0, #1
	cmp r0, #0x2a 
	bmi loc_802BF72
	add r0, r7, #0
	mov r1, #0x2a 
	mov r2, #0x2a 
	bl sub_8000C72
	ldrh R0, [R5,#0x10]
	ldr R1, dword_802C040 // =0xFFFF 
	cmp R0, R1
	beq loc_802BFC0
	bl sub_802C54C
	tst R0, R0
	bne loc_802BFA2
	// idx
	add r0, r1, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r7, r0, #0
	ldr R0, [R7,#0x24]
	ldr R1, [R7,#0x28]
	b loc_802BFE4
loc_802BFA2:
	cmp R0, #1
	bne loc_802BFAC
	ldr R0, off_802C014 // =dword_8732E54 
	ldr R1, off_802C018 // =dword_8733394 
	b loc_802BFE4
loc_802BFAC:
	cmp R0, #2
	bne loc_802BFC0
	tst R1, R1
	beq loc_802BFBA
	ldr R0, off_802C020 // =dword_87333B4 
	ldr R1, off_802C024 // =dword_87338F4 
	b loc_802BFE4
loc_802BFBA:
	ldr R0, off_802C028 // =dword_8733914 
	ldr R1, off_802C02C // =dword_8733E54 
	b loc_802BFE4
loc_802BFC0:
	cmp R0, #3
	bne loc_802BFE0
	mov R2, #0
	cmp R1, #1
	ble loc_802BFD8
	mov r2, #0x20 
	cmp R1, #2
	ble loc_802BFD8
	mov r2, #0x40 
	cmp R1, #3
	ble loc_802BFD8
	mov r2, #0x60 
loc_802BFD8:
	ldr R0, off_802C03C // =dword_87343F4 
	ldr R1, off_802C038 // =dword_8734934 
	add r1, r1, r2
	b loc_802BFE4
loc_802BFE0:
	ldr R0, off_802C030 // =dword_8733E74 
	ldr R1, off_802C034 // =dword_87343B4 
loc_802BFE4:
	push {r5}
	push {r1}
	ldr R1, dword_802C00C // =0x600BD00 
	mov r2, #0x2a 
	lsl r2, r2, #6
	bl loc_8000AC8
	pop {r1}
	add r0, r1, #0
	ldr R1, off_802C010 // =unk_3001AE0 
	mov r2, #0x20 
	bl loc_8000AC8
	pop {r5}
	mov R0, #0
	strb R0, [R5,#0xB]
	mov R0, #4
	strb R0, [R5,#3]
	pop {pc}
	.balign 4, 0x00
dword_802C00C: .word 0x600BD00
off_802C010: .word unk_3001AE0
off_802C014: .word dword_8732E54
off_802C018: .word dword_8733394
off_802C01C: .word unk_2035320
off_802C020: .word dword_87333B4
off_802C024: .word dword_87338F4
off_802C028: .word dword_8733914
off_802C02C: .word dword_8733E54
off_802C030: .word dword_8733E74
off_802C034: .word dword_87343B4
off_802C038: .word dword_8734934
off_802C03C: .word dword_87343F4
dword_802C040: .word 0xFFFF
.endfunc // sub_802BF6C

.func
.thumb_func
sub_802C044:
	push {lr}
	sub sp, sp, #0x74
	mov R6, SP
	add r0, r6, #4
	bl sub_802C588
	ldrb R0, [R5,#0xB]
	cmp r0, #0x2a 
	bmi loc_802C060
	mov R0, #8
	strb R0, [R5,#3]
	mov R0, #0x1E
	strb R0, [R5,#0xB]
	b loc_802C09A
loc_802C060:
	push {r0,r5}
	ldr R7, off_802C0A0 // =unk_2035320 
	ldrb R0, [R7,R0]
	lsl r1, r0, #1
	add R1, #4
	ldrh R1, [R6,R1]
	strh R1, [R6]
	mov R1, #7
	svc 6
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add R0, #0xE
	add R1, #0xA
	add r2, r6, #0
	mov R3, #1
	mov R4, #1
	bl sub_802C4B6
	pop {r0,r5}
	add R0, #1
	strb R0, [R5,#0xB]
	mov R1, #3
	and R0, R1
	cmp R0, #3
	bne loc_802C09A
	mov r0, #0x7e 
	bl sound_play // () -> void
loc_802C09A:
	add sp, sp, #0x74
	pop {pc}
	.byte 0, 0
off_802C0A0: .word unk_2035320
.endfunc // sub_802C044

.func
.thumb_func
sub_802C0A4:
	push {lr}
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	bne locret_802C160
	ldrh R0, [R5,#0x10]
	ldr R1, dword_802C164 // =0xFFFF 
	cmp R0, R1
	beq loc_802C15C
	bl sub_802C54C
	tst R0, R0
	bne loc_802C114
	// idx
	add r0, r1, #0
	add r1, r2, #0
	mov R2, #1
	push {r0,r1}
	ldrb R3, [R5,#4]
	cmp R3, #2
	beq loc_802C106
	push {R0-R2,r4,r6,r7}
	add r4, r1, #0
	ldr R1, dword_802C16C // =0x136 
	cmp R0, R1
	bgt loc_802C0E2
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldr R1, [R0]
	ldr R2, dword_802C168 // =0xFFFFFFFF 
	cmp R1, R2
	bne loc_802C0E6
loc_802C0E2:
	pop {R0-R2,r4,r6,r7}
	b loc_802C106
loc_802C0E6:
	ldrb R1, [R0]
	cmp R1, R4
	beq loc_802C0FE
	ldrb R1, [R0,#1]
	cmp R1, R4
	beq loc_802C0FE
	ldrb R1, [R0,#2]
	cmp R1, R4
	beq loc_802C0FE
	ldrb R1, [R0,#3]
	cmp R1, R4
	bne loc_802C0E2
loc_802C0FE:
	pop {R0-R2,r4,r6,r7}
	push {r0}
	pop {r0}
	b loc_802C106
loc_802C106:
	pop {r0,r1}
	bl sub_802C75C
	mov R0, #0x96
	bl sound_play // () -> void
	b loc_802C15C
loc_802C114:
	cmp R0, #1
	bne loc_802C12A
	add r0, r1, #0
	push {r0}
	pop {r0}
	bl sub_802C5B0
	mov R0, #0x95
	bl sound_play // () -> void
	b loc_802C15C
loc_802C12A:
	cmp R0, #2
	bne loc_802C148
	add r0, r1, #0
	bl sub_802C646
	mov R0, #0x95
	bl sound_play // () -> void
	mov R0, #0x1E
	strb R0, [R5,#0xB]
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	b locret_802C160
loc_802C148:
	cmp R0, #3
	bne loc_802C15C
	add r0, r1, #0
	push {r0}
	pop {r0}
	bl sub_802C5E6
	mov R0, #0x95
	bl sound_play // () -> void
loc_802C15C:
	mov R0, #0
	strh R0, [R5,#2]
locret_802C160:
	pop {pc}
	.balign 4, 0x00
dword_802C164: .word 0xFFFF
dword_802C168: .word 0xFFFFFFFF
dword_802C16C: .word 0x136
.endfunc // sub_802C0A4

.func
.thumb_func
sub_802C170:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_802C1B8
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	bne locret_802C1CC
	ldrh R0, [R5,#0x10]
	bl sub_802C54C
	add r0, r1, #0
	push {r0,r5}
	mov R7, R10
	ldr R7, [R7,#0x18]
	push {r0}
	bl sub_80103EC
	add r5, r0, #0
	pop {r0}
	tst R0, R0
	bne loc_802C1A2
	ldrh R0, [R5,#0x26]
	strh R0, [R5,#0x24]
	b loc_802C1A6
loc_802C1A2:
	bl object_addHP
loc_802C1A6:
	mov R0, #0x8A
	bl sound_play // () -> void
	ldrh R0, [R5,#0x24]
	strh R0, [R7,#0x34]
	pop {r0,r5}
	mov R0, #4
	strb R0, [R5,#3]
	b locret_802C1CC
loc_802C1B8:
	ldr R7, [R5,#0x18]
	ldrh R0, [R7,#4]
	add R7, #8
	ldrh R1, [R7,#4]
	orr R0, R1
	mov R1, #9
	tst R0, R1
	beq loc_802C1C8
loc_802C1C8:
	mov R0, #0
	strh R0, [R5,#2]
locret_802C1CC:
	pop {pc}
	.byte 0, 0
	.word byte_2035280
.endfunc // sub_802C170

.func
.thumb_func
sub_802C1D4:
	push {lr}
	ldr R1, off_802C1E4 // =off_802C1E8 
	ldrb R0, [R5,#3]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802C1E4: .word off_802C1E8
off_802C1E8: .word sub_802C1F0+1
	.word sub_802C218+1
.endfunc // sub_802C1D4

.func
.thumb_func
sub_802C1F0:
	push {lr}
	mov R0, #0
	ldr R7, off_802C214 // =unk_2035320 
loc_802C1F6:
	strb R0, [R7,R0]
	add R0, #1
	cmp r0, #0x2a 
	bmi loc_802C1F6
	add r0, r7, #0
	mov r1, #0x2a 
	mov r2, #0x2a 
	bl sub_8000C72
	mov R0, #0
	strb R0, [R5,#0xB]
	mov R0, #4
	strb R0, [R5,#3]
	pop {pc}
	.balign 4, 0x00
off_802C214: .word unk_2035320
.endfunc // sub_802C1F0

.func
.thumb_func
sub_802C218:
	push {lr}
	sub sp, sp, #0x74
	mov R6, SP
	add r0, r6, #4
	bl sub_802C59C
	b loc_802C22C
	ldrb R0, [R5,#0xB]
	cmp r0, #0x2a 
	bmi loc_802C244
loc_802C22C:
	mov R0, #0xE
	mov R1, #0xA
	add r2, r6, #4
	mov R3, #7
	mov R4, #6
	bl sub_802C4B6
	mov R0, #4
	strh R0, [R5,#2]
	mov R0, #0x1E
	strb R0, [R5,#0xB]
	b loc_802C278
loc_802C244:
	push {r0,r5}
	ldr R7, off_802C27C // =unk_2035320 
	ldrb R0, [R7,R0]
	lsl r1, r0, #1
	add R1, #4
	ldrh R1, [R6,R1]
	strh R1, [R6]
	mov R1, #7
	svc 6
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add R0, #0xE
	add R1, #9
	add r2, r6, #0
	mov R3, #1
	mov R4, #1
	bl sub_802C4B6
	pop {r0,r5}
	add R0, #1
	strb R0, [R5,#0xB]
	mov R1, #3
	and R0, R1
	cmp R0, #3
	bne loc_802C278
loc_802C278:
	add sp, sp, #0x74
	pop {pc}
off_802C27C: .word unk_2035320
.endfunc // sub_802C218

.func
.thumb_func
sub_802C280:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_802C2A2
	ldr R7, off_802C2CC // =dword_2036820 
	ldrh R0, [R7,#0x4] // (dword_2036824 - 0x2036820)
	add R7, #8
	ldrh R1, [R7,#0x4] // (dword_203682C - 0x2036828)
	orr R0, R1
	mov R1, #9
	tst R0, R1
	beq locret_802C2C8
	mov R0, #0x14
	strb R0, [R5,#0xB]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_802C2C8
loc_802C2A2:
	ldrb R0, [R5,#0xB]
	sub R0, #1
	strb R0, [R5,#0xB]
	bne locret_802C2C8
	mov R0, #0
	mov R1, #0xA
	bl sub_800AB3A
	cmp R0, #0
	beq loc_802C2C0
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	b loc_802C4B2
loc_802C2C0:
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_802C2C8:
	pop {pc}
	.balign 4, 0x00
off_802C2CC: .word dword_2036820
.endfunc // sub_802C280

.func
.thumb_func
sub_802C2D0:
	push {lr}
	ldrb R0, [R5,#2]
	cmp R0, #1
	beq loc_802C2FA
	mov R1, #6
	ldrsb R0, [R5,R1]
	add R0, #2
	strb R0, [R5,#6]
	cmp R0, #0x1E
	blt locret_802C320
	mov R0, #0
	mov R1, #0xA
	bl sub_800AB3A
	add r1, r0, #0
	ldr R0, off_802C324 // =aF_0 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov R0, #1
	strb R0, [R5,#2]
	b locret_802C320
loc_802C2FA:
	push {r5}
	mov R0, #0x1D
	mov R1, #2
	mov R2, #3
	mov R3, #0
	mov R4, #1
	mov R5, #0x12
	bl sub_80018D0
	pop {r5}
	mov R0, #0x80
	bl chatbox_8045F3C
	cmp R0, #0
	bne locret_802C320
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_802C320:
	pop {pc}
	.balign 4, 0x00
off_802C324: .word aF_0
.endfunc // sub_802C2D0

.func
.thumb_func
sub_802C328:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_802C33C
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#3]
loc_802C33C:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_802C346
	mov R0, #8
	str R0, [R5]
locret_802C346:
	pop {pc}
.endfunc // sub_802C328

.func
.thumb_func
sub_802C348:
	mov R0, #0
	strb R0, [R5,#5]
	mov PC, LR
.endfunc // sub_802C348

.func
.thumb_func
sub_802C34E:
	push {R4-R7,lr}
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	mov R2, #0xC
	mul R1, R2
	add r0, r0, r1
	add r4, r0, #0
	ldr R0, off_802C3F4 // =dword_20364C0 
	add r7, r0, #0
	mov r1, #0x20 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldrb R0, [R4]
	strb R0, [R7,#0x4] // (dword_20364C4 - 0x20364C0)
	ldrb R0, [R4,#1]
	strb R0, [R7,#0x8] // (byte_20364C8 - 0x20364C0)
	ldrb R0, [R4,#3]
	strb R0, [R7,#0xD] // (byte_20364CD - 0x20364C0)
	ldr R0, [R4,#4]
	str R0, [R7,#0x1C] // (dword_20364DC - 0x20364C0)
	ldr R0, [R4,#8]
	str R0, [R7,#0x14] // (unk_20364D4 - 0x20364C0)
	ldrh R0, [R7,#0x14] // (unk_20364D4 - 0x20364C0)
	bl sub_800B6CE
	ldrh R0, [R7,#0x16] // (word_20364D6 - 0x20364C0)
	bl sub_800B6DA
	mov R1, #0xE2
	strb R1, [R7,#0x6] // (dword_20364C4+2 - 0x20364C0)
	ldrb R0, [R7,#0x4] // (dword_20364C4 - 0x20364C0)
	ldr R6, off_802C430 // =off_802C434 
	lsl r1, r0, #2
	ldr R0, [R6,R1]
	ldr R1, off_802C440 // =unk_2034B30 
	mov r2, #0x36 
	lsl r2, r2, #4
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	ldrb R0, [R7,#0x4] // (dword_20364C4 - 0x20364C0)
	ldr R7, off_802C3F8 // =off_802C3FC 
	mov R1, #0xC
	mul R1, R0
	add r7, r7, r1
	ldr R0, [R7]
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	bl loc_8000AC8
	mov R0, #0
	mov r1, #0x60 
	mul R0, R1
	ldr R7, off_802C420 // =off_802C424 
	ldr R1, [R7]
	add r0, r0, r1
	ldr R1, [R7,#0x4] // (off_802C428 - 0x802C424)
	ldr R2, [R7,#0x8] // (off_802C42C - 0x802C424)
	bl loc_8000AC8
	ldr R7, off_802C444 // =off_802C448 
	ldr R0, [R7]
	ldr R1, [R7,#0x4] // (unk_802C44C - 0x802C448)
	ldr R2, [R7,#0x8] // (off_802C450 - 0x802C448)
	bl loc_8000AC8
	bl getPETNaviSelect // () -> u8
	bl sub_8028164
	ldr R1, dword_802C458 // =0x6014000 
	mov R2, #0x80
	bl loc_8000AC8
	bl getPETNaviSelect // () -> u8
	bl sub_8028172
	ldr R1, off_802C45C // =byte_30016B0 
	mov r2, #0x20 
	bl loc_8000AC8
	pop {R4-R7,pc}
off_802C3F4: .word dword_20364C0
off_802C3F8: .word off_802C3FC
off_802C3FC: .word dword_872F3F4
	.word 0x6008020
	.word 0xE60
	.word dword_8730254
	.word 0x6008020
	.word 0xF00
	.word dword_8731154
	.word 0x6008020
	.word 0xCA0
off_802C420: .word off_802C424
off_802C424: .word dword_8732814
off_802C428: .word unk_3001A80
off_802C42C: .word 0x60
off_802C430: .word off_802C434
off_802C434: .word dword_8731DF4
	.word dword_8732154
	.word dword_87324B4
off_802C440: .word unk_2034B30
off_802C444: .word off_802C448
off_802C448: .word dword_8732874
unk_802C44C: .byte  0
	.byte 0x94, 0x0, 0x6
off_802C450: .word 0x5E0
	.word 0xFFFF
dword_802C458: .word 0x6014000
off_802C45C: .word byte_30016B0
.endfunc // sub_802C34E

.func
.thumb_func
sub_802C460:
	push {r4,r5,lr}
	mov R0, #6
	ldrsb R0, [R5,R0]
	mov R1, #7
	ldrsb R1, [R5,R1]
	cmp R0, R1
	beq locret_802C48E
	bgt loc_802C476
	sub r4, r1, r0
	add R0, #0x18
	b loc_802C47A
loc_802C476:
	sub r4, r0, r1
	add r0, r1, #0
loc_802C47A:
	mov R1, #2
	mov R5, #0x12
	bl sub_802C490
	tst R2, R2
	beq locret_802C48E
	mov R2, #3
	mov R3, #0
	bl sub_80018D0
locret_802C48E:
	pop {r4,r5,pc}
.endfunc // sub_802C460

.func
.thumb_func
sub_802C490:
	push {r6,lr}
	mov R6, #0
	add r2, r0, r4
	cmp R0, #0x1D
	bgt loc_802C4B2
	cmp R0, #0
	bge loc_802C4A0
	mov R0, #0
loc_802C4A0:
	cmp R2, #0
	blt loc_802C4B2
	cmp R2, #0x1D
	ble loc_802C4AA
	mov R2, #0x1D
loc_802C4AA:
	sub r4, r2, r0
	tst R4, R4
	beq loc_802C4B2
	mov R6, #1
loc_802C4B2:
	add r2, r6, #0
	pop {r6,pc}
.endfunc // sub_802C490

.func
.thumb_func
sub_802C4B6:
	push {R5-R7,lr}
	ldr R7, off_802C4E4 // =unk_2034B30 
	mov R5, #0x18
	mul R1, R5
	add r0, r0, r1
	add r0, r0, r0
	add r7, r7, r0
	add r5, r7, #0
	mov R1, #0
loc_802C4C8:
	mov R0, #0
loc_802C4CA:
	ldrh R6, [R2]
	strh R6, [R7]
	add R7, #2
	add R2, #2
	add R0, #1
	cmp R0, R3
	bne loc_802C4CA
	add r5, #0x30 
	add r7, r5, #0
	add R1, #1
	cmp R1, R4
	bne loc_802C4C8
	pop {R5-R7,pc}
off_802C4E4: .word unk_2034B30
.endfunc // sub_802C4B6

.func
.thumb_func
sub_802C4E8:
	push {r5,lr}
	sub sp, sp, #4
	mov R6, SP
	push {r1}
	bl sub_8000D84
	ldr R1, dword_802C548 // =0x95999 
	cmp R0, R1
	ble loc_802C4FC
	add r0, r1, #0
loc_802C4FC:
	pop {r1}
	add R1, #9
	lsl r1, r1, #0xc
	ldr R4, off_802C544 // =0xA0 
	orr R4, R1
	mov R3, #0
	ldr R7, off_802C540 // =dword_802C538 
loc_802C50A:
	mov R1, #0xF
	and R1, R0
	add r1, r1, r1
	add r2, r4, #0
	add r2, r2, r1
	strh R2, [R6]
	add R2, #1
	strh R2, [R6,#2]
	push {r0,r3,r4,r6,r7}
	ldrb R0, [R7,R3]
	mov R1, #4
	add r2, r6, #0
	mov R3, #1
	mov R4, #2
	bl sub_802C4B6
	pop {r0,r3,r4,r6,r7}
	lsr r0, r0, #4
	add R3, #1
	cmp R3, #5
	bmi loc_802C50A
	add sp, sp, #4
	pop {r5,pc}
dword_802C538: .word 0x10111314, 0xE
off_802C540: .word dword_802C538
off_802C544: .word 0xA0
dword_802C548: .word 0x95999
.endfunc // sub_802C4E8

.func
.thumb_func
sub_802C54C:
	ldr R1, dword_802C584 // =0xFFFF 
	cmp R0, R1
	beq loc_802C580
	lsr r1, r0, #0xe
	bne loc_802C560
	lsr r2, r0, #9
	lsl r1, r0, #0x17
	lsr r1, r1, #0x17
	mov R0, #0
	b locret_802C582
loc_802C560:
	cmp R1, #1
	bne loc_802C56C
	lsl r1, r0, #0x12
	lsr r1, r1, #0x12
	mov R0, #1
	b locret_802C582
loc_802C56C:
	cmp R1, #2
	bne loc_802C578
	lsl r1, r0, #0x12
	lsr r1, r1, #0x12
	mov R0, #2
	b locret_802C582
loc_802C578:
	lsl r1, r0, #0x12
	lsr r1, r1, #0x12
	mov R0, #3
	b locret_802C582
loc_802C580:
	mov R0, #0xFF
locret_802C582:
	mov PC, LR
dword_802C584: .word 0xFFFF
.endfunc // sub_802C54C

.func
.thumb_func
sub_802C588:
	ldr R1, dword_802C598 // =0xC1E8 
	mov r2, #0x2a 
loc_802C58C:
	strh R1, [R0]
	add R1, #1
	add R0, #2
	sub R2, #1
	bne loc_802C58C
	mov PC, LR
dword_802C598: .word 0xC1E8
.endfunc // sub_802C588

.func
.thumb_func
sub_802C59C:
	ldr R1, dword_802C5AC // =0x90C6 
	mov r2, #0x2a 
loc_802C5A0:
	strh R1, [R0]
	add R0, #2
	sub R2, #1
	bne loc_802C5A0
	mov PC, LR
	.balign 4, 0x00
dword_802C5AC: .word 0x90C6
.endfunc // sub_802C59C

.func
.thumb_func
sub_802C5B0:
	push {R4-R7,lr}
	sub sp, sp, #0x70
	mov R6, SP
	mov R7, R10
	ldr R7, [R7,#0x38]
	str R0, [R7,#8]
	push {r6}
	ldr R0, off_802C6AC // =aTuDhr 
	mov R1, #5
	ldr R2, off_802C6A8 // =unk_2035320 
	ldr R3, dword_802C6B4 // =0x600BA80 
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_802C6B0 // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
.endfunc // sub_802C5B0

	mov R0, #2
	mov R1, #0xC
	ldr R2, off_802C6C0 // =dword_802C6C4 
	mov R3, #0xA
	mov R4, #2
	bl sub_802C4B6
	pop {r6}
	add sp, sp, #0x70
	pop {R4-R7,pc}
.func
.thumb_func
sub_802C5E6:
	push {r5,lr}
	sub sp, sp, #8
	tst R0, R0
	bne loc_802C5F4
	mov R0, #4
	str R0, [SP,#4]
	b loc_802C61C
loc_802C5F4:
	str R0, [SP]
	bl sub_8000C00
	bl sub_8000C5C
	str R0, [SP,#4]
	ldr R0, [SP]
	mov R7, R10
	ldr R7, [R7,#0x38]
	str R0, [R7,#8]
	ldr R0, off_802C6AC // =aTuDhr 
	mov R1, #6
	ldr R2, off_802C6BC // =unk_20354E0 
	ldr R3, dword_802C6B8 // =0x600BC40 
	mov R4, #3
	mov R5, #1
	ldr R6, off_802C6B0 // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
loc_802C61C:
	ldr R0, [SP,#4]
	mov R1, #1
	ldr R2, off_802C6A8 // =unk_2035320 
	ldr R3, dword_802C6B4 // =0x600BA80 
	mov R4, #0xA
	sub r4, r4, r0
	mov R5, #1
	ldr R6, off_802C6B0 // =dword_86B7AE0 
	mov R7, #8
	ldr R0, off_802C6AC // =aTuDhr 
	bl render_graphicalText_8045F8C
.endfunc // sub_802C5E6

	mov R0, #2
	mov R1, #0xC
	ldr R2, off_802C6C0 // =dword_802C6C4 
	mov R3, #0xA
	mov R4, #2
	bl sub_802C4B6
	add sp, sp, #8
	pop {r5,pc}
.func
.thumb_func
sub_802C646:
	push {r5,lr}
	sub sp, sp, #8
	tst R0, R0
	bne loc_802C654
	mov R0, #4
	str R0, [SP,#4]
	b loc_802C67C
loc_802C654:
	str R0, [SP]
	bl sub_8000C00
	bl sub_8000C5C
	str R0, [SP,#4]
	ldr R0, [SP]
	mov R7, R10
	ldr R7, [R7,#0x38]
	str R0, [R7,#8]
	ldr R0, off_802C6AC // =aTuDhr 
	mov R1, #6
	ldr R2, off_802C6BC // =unk_20354E0 
	ldr R3, dword_802C6B8 // =0x600BC40 
	mov R4, #3
	mov R5, #1
	ldr R6, off_802C6B0 // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
loc_802C67C:
	ldr R0, [SP,#4]
	add r1, r0, #6
	ldr R2, off_802C6A8 // =unk_2035320 
	ldr R3, dword_802C6B4 // =0x600BA80 
	mov R4, #0xA
	sub r4, r4, r0
	mov R5, #1
	ldr R6, off_802C6B0 // =dword_86B7AE0 
	mov R7, #8
	ldr R0, off_802C6AC // =aTuDhr 
	bl render_graphicalText_8045F8C
.endfunc // sub_802C646

	mov R0, #2
	mov R1, #0xC
	ldr R2, off_802C6C0 // =dword_802C6C4 
	mov R3, #0xA
	mov R4, #2
	bl sub_802C4B6
	add sp, sp, #8
	pop {r5,pc}
	.balign 4, 0x00
off_802C6A8: .word unk_2035320
off_802C6AC: .word aTuDhr
off_802C6B0: .word dword_86B7AE0
dword_802C6B4: .word 0x600BA80
dword_802C6B8: .word 0x600BC40
off_802C6BC: .word unk_20354E0
off_802C6C0: .word dword_802C6C4
dword_802C6C4: .word 0x91D691D4
	.word 0x91DA91D8
	.word 0x91DE91DC
	.word 0x91E291E0
	.word 0x91E691E4
	.word 0x91D791D5
	.word 0x91DB91D9
	.word 0x91DF91DD
	.word 0x91E391E1
	.word 0x91E791E5
.func
.thumb_func
sub_802C6EC:
	push {R4-R6,lr}
	sub sp, sp, #0x1c
	cmp R0, #0xB
	ble loc_802C6F6
	mov R0, #0xB
loc_802C6F6:
	str R0, [SP,#0x14]
	ldr R0, dword_802C758 // =0x90A0 
	add R0, #0x14
	mov R3, #5
	add r2, sp, #0
loc_802C700:
	strh R0, [R2]
	add r1, r0, #1
	strh R1, [R2,#0xA]
	add R2, #2
	sub R3, #1
	bgt loc_802C700
	mov R4, #8
	add R4, SP
	ldr R6, dword_802C758 // =0x90A0 
	ldr R0, [SP,#0x14]
	cmp R0, #0xB
	blt loc_802C724
	mov R1, #1
	lsl r1, r1, #0xc
	add r6, r6, r1
	mov R5, #0xB
	mov R0, #1
	b loc_802C72E
loc_802C724:
	bl sub_8000C00
	add r5, r0, #0
	bl sub_8000C5C
loc_802C72E:
	mov R1, #0xF
	and R1, R5
	add r1, r1, r1
	add r1, r1, r6
	strh R1, [R4]
	add r2, r1, #1
	strh R2, [R4,#0xA]
	lsr r5, r5, #4
	sub R4, #2
	sub R0, #1
	bgt loc_802C72E
	mov R0, #0x10
	mov R1, #6
	add r2, sp, #0
	mov R3, #5
	mov R4, #2
	bl sub_802C4B6
	add sp, sp, #0x1c
	pop {R4-R6,pc}
	.balign 4, 0x00
dword_802C758: .word 0x90A0
.endfunc // sub_802C6EC

.func
.thumb_func
sub_802C75C:
	push {r5,lr}
	sub sp, sp, #0x70
	mov R6, SP
	push {r0,r1,r6}
	mov R1, #0xFF
	and R1, R0
	lsr r0, r0, #8
	lsl r0, r0, #2
	ldr R2, off_802C7C0 // =off_802C7C4 
	ldr R0, [R2,R0]
	ldr R2, off_802C7CC // =unk_2035320 
	ldr R3, dword_802C7D0 // =0x600BA80 
	mov R4, #8
	mov R5, #1
	ldr R6, off_802C7D4 // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
.endfunc // sub_802C75C

	mov R0, #2
	mov R1, #0xC
	ldr R2, off_802C7E8 // =byte_802C7EC 
	mov R3, #9
	mov R4, #2
	bl sub_802C4B6
	pop {r0,r1,r6}
	push {r0,r1,r6}
	ldr R2, dword_802C7E0 // =0x91E4 
	strh R2, [R6]
	add R2, #1
	strh R2, [R6,#2]
	mov R0, #0xB
	mov R1, #0xC
	add r2, r6, #0
	mov R3, #1
	mov R4, #2
	bl sub_802C4B6
	pop {r0,r1,r6}
	ldr R0, off_802C7D8 // =byte_86EF71C 
	ldr R2, off_802C7E4 // =unk_2035520 
	ldr R3, dword_802C7DC // =0x600BC80 
	mov R4, #1
	mov R5, #1
	ldr R6, off_802C7D4 // =dword_86B7AE0 
	mov R7, #8
	bl render_graphicalText_8045F8C
	add sp, sp, #0x70
	pop {r5,pc}
off_802C7C0: .word off_802C7C4
off_802C7C4: .word byte_86EA94C
	.word byte_86EB354
off_802C7CC: .word unk_2035320
dword_802C7D0: .word 0x600BA80
off_802C7D4: .word dword_86B7AE0
off_802C7D8: .word byte_86EF71C
dword_802C7DC: .word 0x600BC80
dword_802C7E0: .word 0x91E4
off_802C7E4: .word unk_2035520
off_802C7E8: .word byte_802C7EC
byte_802C7EC: .byte 0xD4, 0x91, 0xD6, 0x91, 0xD8, 0x91, 0xDA, 0x91, 0xDC
	.byte 0x91, 0xDE, 0x91, 0xE0, 0x91, 0xE2, 0x91, 0xC5, 0x90
	.byte 0xD5, 0x91, 0xD7, 0x91, 0xD9, 0x91, 0xDB, 0x91, 0xDD
	.byte 0x91, 0xDF, 0x91, 0xE1, 0x91, 0xE3, 0x91, 0xC5, 0x90
.func
.thumb_func
sub_802C810:
	push {r5,lr}
	ldr R2, off_802C828 // =off_802C82C 
	lsl r0, r0, #2
	ldr R2, [R2,R0]
	mov R0, #2
	mov R1, #0xE
	mov R3, #0xA
	mov R4, #1
	bl sub_802C4B6
	pop {r5,pc}
	.balign 4, 0x00
off_802C828: .word off_802C82C
off_802C82C: .word byte_802C834
	.word byte_802C848
byte_802C834: .byte 0xC4, 0x90, 0xC4, 0x90, 0xC4, 0x90, 0xC4, 0x90, 0xC4
	.byte 0x90, 0xC4, 0x90, 0xC4, 0x90, 0xC4, 0x90, 0xC4, 0x90
	.byte 0xC4, 0x90
byte_802C848: .byte 0xBA, 0x90, 0xBB, 0x90, 0xBC, 0x90, 0xBD, 0x90, 0xBE
	.byte 0x90, 0xBF, 0x90, 0xC0, 0x90, 0xC1, 0x90, 0xC2, 0x90
	.byte 0xC3, 0x90
.endfunc // sub_802C810

.func
.thumb_func
sub_802C85C:
	push {lr}
	ldrb R0, [R5,#0xF]
	tst R0, R0
	beq locret_802C882
	mov R7, R10
	ldr R7, [R7,#0x24]
	ldrh R0, [R7]
	mov R1, #0x10
	and R0, R1
	lsr r0, r0, #4
	lsl r0, r0, #2
	ldr R2, off_802C884 // =off_802C888 
	ldr R2, [R2,R0]
	mov R0, #0xA
	mov R1, #4
	mov R3, #4
	mov R4, #2
	bl sub_802C4B6
locret_802C882:
	pop {pc}
off_802C884: .word off_802C888
off_802C888: .word loc_802C890
	.word loc_802C8A0
.endfunc // sub_802C85C

loc_802C890:
	str R0, [SP,#0x2D0]
	str R0, [SP,#0x2D0]
	str R0, [SP,#0x2D0]
	str R0, [SP,#0x2D0]
	str R0, [SP,#0x2D4]
	str R0, [SP,#0x2D4]
	str R0, [SP,#0x2D4]
	str R0, [SP,#0x2D4]
loc_802C8A0:
	str R0, [SP,#0x31C]
	str R0, [SP,#0x320]
	str R0, [SP,#0x324]
	str R0, [SP,#0x328]
	str R0, [SP,#0x32C]
	str R0, [SP,#0x330]
	str R0, [SP,#0x334]
	str R0, [SP,#0x338]
	push {lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#8]
	bl sub_8001532
	lsr r0, r0, #8
	ldr R1, [SP,#8]
	svc 6
	mov R0, #0
	ldr R7, [SP]
loc_802C8C6:
	ldrb R2, [R7,R0]
	sub r1, r1, r2
	blt loc_802C8D0
	add R0, #1
	b loc_802C8C6
loc_802C8D0:
	add sp, sp, #0xc
	pop {pc}
.func
.thumb_func
sub_802C8D4:
	mov R0, #0
	ldrb R1, [R5,#0xC]
	ldrb R2, [R5,#0xD]
	cmp R1, R2
	bge locret_802C8E8
	add r2, r1, r1
	add R2, #0x14
	ldrh R0, [R5,R2]
	add R1, #1
	strb R1, [R5,#0xC]
locret_802C8E8:
	mov PC, LR
.endfunc // sub_802C8D4

.func
.thumb_func
sub_802C8EA:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R2, [R1,#0xD]
	mov R1, #8
	mul R2, R1
	ldr R0, off_802CAFC // =dword_2036820 
	add r0, r0, r2
	mov PC, LR
.endfunc // sub_802C8EA

.func
.thumb_func
sub_802C8FA:
	push {R5-R7,lr}
	add r7, r0, #0
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_802C90C
	mov R0, #0
	b loc_802C91A
loc_802C90C:
	bl sub_800A832
	add r2, r0, #0
	mov R0, #1
	cmp R2, #1
	beq loc_802C91A
	mov R0, #2
loc_802C91A:
	strb R0, [R7]
	bl sub_800A704
	str R0, [R7,#4]
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0x1E]
	strb R0, [R7,#1]
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_802C960
	bl sub_80103EC
	add r5, r0, #0
	ldrb R2, [R5,#0x16]
	mov R1, #1
	eor R2, R1
	lsl r0, r2, #3
	add r0, #0x4c 
	mov R6, R10
	ldr R6, [R6,#0x18]
	add r0, r0, r6
	add R2, #8
	ldrb R1, [R6,R2]
	ldrb R2, [R7,#1]
	ldrh R3, [R5,#0x24]
	ldrh R4, [R5,#0x26]
	ldrb R5, [R5,#0x16]
	bl sub_80AA8E0
	strh R0, [R7,#8]
	strh R1, [R7,#0xA]
	b loc_802C96C
loc_802C960:
	ldrb R0, [R7,#1]
	bl sub_80AAC8C
	strh R0, [R7,#8]
	mov R1, #0
	strh R1, [R7,#0xA]
loc_802C96C:
	mov R2, #0
	tst R0, R0
	beq loc_802C974
	add R2, #1
loc_802C974:
	tst R1, R1
	beq loc_802C97A
	add R2, #1
loc_802C97A:
	strb R2, [R7,#3]
	pop {R5-R7,pc}
.endfunc // sub_802C8FA

.func
.thumb_func
sub_802C97E:
	push {r4,lr}
	mov R4, #0
	bl sub_800A7E2
	bl sub_802CA1E
	cmp R0, #0xFF
	beq loc_802C9B2
	mov R4, #2
	ldr R1, off_802CB00 // =unk_20018C0 
	add r0, r0, r0
	ldrh R2, [R1,R0]
	ldr R3, [R5,#0x1C]
	cmp R3, R2
	bge loc_802C99E
	b loc_802C9AE
loc_802C99E:
	mov R4, #1
	ldr R1, off_802CB04 // =unk_2000260 
	ldrh R2, [R1,R0]
	ldr R3, [R5,#0x1C]
	cmp R3, R2
	blt loc_802C9AE
	mov R4, #0
	b loc_802C9B2
loc_802C9AE:
	mov R0, #1
	strb R0, [R5,#0xF]
loc_802C9B2:
	add r0, r4, #0
	strb R0, [R5,#0xE]
	pop {r4,pc}
.endfunc // sub_802C97E

.func
.thumb_func
sub_802C9B8:
	push {r4,lr}
	bl sub_800A704
	add r4, r0, #0
	bl sub_800A7E2
	bl sub_802CA1E
	cmp R0, #0xFF
	beq locret_802C9E8
	ldr R1, off_802CB08 // =unk_20018C0 
	add r0, r0, r0
	ldrh R2, [R1,R0]
	cmp R4, R2
	bge loc_802C9DE
	strh R4, [R1,R0]
	ldr R1, off_802CB0C // =unk_2000260 
	strh R4, [R1,R0]
	b locret_802C9E8
loc_802C9DE:
	ldr R1, off_802CB10 // =unk_2000260 
	ldrh R2, [R1,R0]
	cmp R4, R2
	bge locret_802C9E8
	strh R4, [R1,R0]
locret_802C9E8:
	pop {r4,pc}
.endfunc // sub_802C9B8

.func
.thumb_func
sub_802C9EA:
	push {lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_802CA1C
	ldr R6, off_802CB14 // =unk_203526C 
	ldr R7, off_802CB18 // =unk_2035260 
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0x10]
	tst R0, R0
	beq loc_802CA08
	ldr R6, off_802CB1C // =unk_2035260 
	ldr R7, off_802CB20 // =unk_203526C 
loc_802CA08:
	ldr R0, [R6,#8]
	str R0, [R7,#8]
	ldrh R0, [R6,#8]
	ldr R1, dword_802CB24 // =0xFFFF 
	cmp R0, R1
	bne locret_802CA1C
	ldrb R0, [R7,#1]
	bl sub_80AABA4
	strh R0, [R7,#8]
locret_802CA1C:
	pop {pc}
.endfunc // sub_802C9EA

.func
.thumb_func
sub_802CA1E:
	push {r4,r5,lr}
	mov R1, #1
	eor R0, R1
	mov R1, #8
	mul R0, R1
	add r0, #0x4c 
	mov R5, R10
	ldr R5, [R5,#0x18]
	add r5, r5, r0
	mov R4, #0
loc_802CA32:
	ldrh R0, [R5]
	bl sub_80182B4
	ldrb R1, [R0,#1]
	cmp R1, #1
	bne loc_802CA50
	ldrb R1, [R0,#2]
	cmp R1, #0x14
	bge loc_802CA50
	ldrb R1, [R0]
	cmp R1, #2
	bne loc_802CA50
	ldrb R0, [R0,#2]
	sub R0, #1
	pop {r4,r5,pc}
loc_802CA50:
	add R5, #2
	add R4, #1
	cmp R4, #4
	blt loc_802CA32
	mov R0, #0xFF
	pop {r4,r5,pc}
.endfunc // sub_802CA1E

.func
.thumb_func
sub_802CA5C:
	push {lr}
	mov R0, #6
	ldrsb R0, [R5,R0]
	lsl r0, r0, #3
	add R0, #0xD
	ldr R1, dword_802CB28 // =0x1FF 
	and R0, R1
	lsl r0, r0, #0x10
	add R0, #0x15
	ldr R1, dword_802CB2C // =0xFFFF00FF 
	and R0, R1
	ldr R1, dword_802CB30 // =0x40000000 
	add r0, r0, r1
	ldr R1, dword_802CB34 // =0xB200 
	mov R2, #0
	mov R3, #0
	bl sub_8009FF8
	pop {pc}
.endfunc // sub_802CA5C

.func
.thumb_func
sub_802CA82:
	push {r4,lr}
	bl sub_800B6D4
	cmp R0, #0
	beq loc_802CA94
	bl sub_802C54C
	bl sub_802CAA6
loc_802CA94:
	bl sub_800B6E0
	cmp R0, #0
	beq locret_802CAA4
	bl sub_802C54C
	bl sub_802CAA6
locret_802CAA4:
	pop {r4,pc}
.endfunc // sub_802CA82

.func
.thumb_func
sub_802CAA6:
	push {lr}
	cmp R0, #0
	bne loc_802CADE
	add r0, r1, #0
	add r1, r2, #0
	mov R2, #1
	push {R0-R2}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq loc_802CACE
	bl sub_800A832
	cmp R0, #1
	beq loc_802CACE
	cmp R0, #2
	beq loc_802CAD6
	pop {R0-R2}
	pop {pc}
loc_802CACE:
	pop {R0-R2}
	bl sub_8021AEE
	pop {pc}
loc_802CAD6:
	pop {R0-R2}
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	pop {pc}
loc_802CADE:
	cmp R0, #1
	bne loc_802CAEA
	add r0, r1, #0
	bl sub_803CFF8
	pop {pc}
loc_802CAEA:
	cmp R0, #2
	bne loc_802CAF0
	pop {pc}
loc_802CAF0:
	cmp R0, #3
	bne locret_802CAFA
	add r0, r1, #0
	bl sub_803D080
locret_802CAFA:
	pop {pc}
off_802CAFC: .word dword_2036820
off_802CB00: .word unk_20018C0
off_802CB04: .word unk_2000260
off_802CB08: .word unk_20018C0
off_802CB0C: .word unk_2000260
off_802CB10: .word unk_2000260
off_802CB14: .word unk_203526C
off_802CB18: .word unk_2035260
off_802CB1C: .word unk_2035260
off_802CB20: .word unk_203526C
dword_802CB24: .word 0xFFFF
dword_802CB28: .word 0x1FF
dword_802CB2C: .word 0xFFFF00FF
dword_802CB30: .word 0x40000000
dword_802CB34: .word 0xB200
.endfunc // sub_802CAA6

.func
.thumb_func
sub_802CB38:
	push {r4,r6,r7,lr}
	ldr R7, off_802CB74 // =dword_203EAD0 
	strh R0, [R7,#0x8] // (word_203EAD8 - 0x203EAD0)
	strh R1, [R7,#0xA] // (word_203EADA - 0x203EAD0)
	mov R2, #0xFF
	cmp R0, R1
	beq loc_802CB4E
	mov R2, #0
	cmp R0, R1
	blt loc_802CB4E
	mov R2, #1
loc_802CB4E:
	strb R2, [R5,#0x10]
	mov R4, #3
	cmp R2, #0xFF
	beq loc_802CB66
	add r6, r2, #0
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	mov R4, #2
	eor R0, R6
	beq loc_802CB66
	mov R4, #1
loc_802CB66:
	strb R4, [R7,#0x7] // (dword_203EAD4+3 - 0x203EAD0)
	mov R0, #0
	str R0, [R7]
	strh R0, [R7,#0xC] // (word_203EADC - 0x203EAD0)
	strh R0, [R7,#0xE] // (word_203EADE - 0x203EAD0)
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_802CB74: .word dword_203EAD0
.endfunc // sub_802CB38

loc_802CB78:
	push {r5,lr}
	ldr R5, off_802CBA0 // =dword_203EAD0 
	mov R0, #1
	strb R0, [R5,#0x4] // (dword_203EAD4 - 0x203EAD0)
	ldr R1, off_802CB90 // =off_802CB94 
	ldrb R0, [R5]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldrb R0, [R5,#0x4] // (dword_203EAD4 - 0x203EAD0)
	ldrb R1, [R5,#0x7] // (dword_203EAD4+3 - 0x203EAD0)
	pop {r5,pc}
off_802CB90: .word off_802CB94
off_802CB94: .word sub_802CBA4+1
	.word sub_802CBAC+1
	.word sub_802CCAE+1
off_802CBA0: .word dword_203EAD0
.func
.thumb_func
sub_802CBA4:
	push {lr}
	mov R0, #4
	str R0, [R5]
	pop {pc}
.endfunc // sub_802CBA4

.func
.thumb_func
sub_802CBAC:
	push {lr}
	ldr R1, off_802CBBC // =off_802CBC0 
	ldrb R0, [R5,#1]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802CBBC: .word off_802CBC0
off_802CBC0: .word sub_802CBCC+1
	.word loc_802CBF2+1
	.word sub_802CC8C+1
.endfunc // sub_802CBAC

.func
.thumb_func
sub_802CBCC:
	push {lr}
	ldrh R1, [R5,#8]
	ldrh R2, [R5,#0xA]
	mov R3, R10
	ldr R3, [R3,#0x18]
	ldrb R3, [R3,#0xD]
	tst R3, R3
	beq loc_802CBE2
	add r3, r2, #0
	add r2, r1, #0
	add r1, r3, #0
loc_802CBE2:
	mov r0, #0x28 
	bl loc_801E792
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
	pop {pc}
.endfunc // sub_802CBCC

loc_802CBF2:
	push {lr}
	ldr R1, off_802CC00 // =loc_802CC04 
	ldrb R0, [R5,#2]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
off_802CC00: .word loc_802CC04
loc_802CC04:
	ldmia R4, {R0,R4}
	lsr r2, r0, #0x20
	ldmia R4, {R0,R1,R3,R4}
	lsr r2, r0, #0x20
	ldmia R4, {R0,R4,R6}
	lsr r2, r0, #0x20
	mov r0, #0x3c 
	strb R0, [R5,#5]
	mov R0, #4
	strb R0, [R5,#2]
	mov PC, LR
	push {lr}
	ldrb R0, [R5,#5]
	sub R0, #1
	strb R0, [R5,#5]
	beq loc_802CC3E
	bl sub_8001532
	add r4, r0, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr R1, dword_802CC4C // =0x270E 
	svc 6
	strh R1, [R5,#0xC]
	lsr r0, r4, #0x10
	ldr R1, dword_802CC4C // =0x270E 
	svc 6
	strh R1, [R5,#0xE]
	b loc_802CC42
loc_802CC3E:
	mov R0, #8
	strh R0, [R5,#2]
loc_802CC42:
	ldrh R0, [R5,#0xC]
	ldrh R1, [R5,#0xE]
	bl sub_801E914
	pop {pc}
dword_802CC4C: .word 0x270E
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_802CC60
	mov r0, #0x78 
	strb R0, [R5,#5]
	mov R0, #4
	strb R0, [R5,#3]
loc_802CC60:
	ldrb R0, [R5,#5]
	sub R0, #1
	strb R0, [R5,#5]
	beq loc_802CC82
	ldrh R0, [R5,#8]
	ldrh R1, [R5,#0xA]
	mov R2, R10
	ldr R2, [R2,#0x18]
	ldrb R2, [R2,#0xD]
	tst R2, R2
	beq loc_802CC7C
	add r2, r1, #0
	add r1, r0, #0
	add r0, r2, #0
loc_802CC7C:
	bl sub_801E914
	b locret_802CC8A
loc_802CC82:
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strh R0, [R5,#2]
locret_802CC8A:
	pop {pc}
.func
.thumb_func
sub_802CC8C:
	push {lr}
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_802CCA0
	bl sub_801E780
	mov R0, #0x1E
	strb R0, [R5,#5]
	mov R0, #4
	strb R0, [R5,#2]
loc_802CCA0:
	ldrb R0, [R5,#5]
	sub R0, #1
	strb R0, [R5,#5]
	bne locret_802CCAC
	mov R0, #8
	str R0, [R5]
locret_802CCAC:
	pop {pc}
.endfunc // sub_802CC8C

.func
.thumb_func
sub_802CCAE:
	mov R0, #0
	strb R0, [R5,#4]
	mov PC, LR
off_802CCB4: .word sub_80E07E0+1
	.word sub_80E7546+1
	.word sub_80E2F24+1
	.word sub_80E2566+1
	.word sub_80E3B50+1
	.word sub_80E2B5A+1
	.word sub_80E46B6+1
	.word sub_80E7464+1
	.word sub_80E3128+1
	.word sub_80E5EA8+1
	.word sub_80E3242+1
	.word sub_80E349E+1
	.word sub_80E59C6+1
	.word sub_80E5F78+1
	.word sub_80E67E6+1
	.word sub_80E2D76+1
	.word sub_80E4288+1
	.word sub_80E4164+1
	.word sub_80E76D4+1
	.word sub_80E7600+1
	.word sub_80E353E+1
	.word sub_80E7008+1
	.word sub_80E7FBA+1
	.word sub_80E70A6+1
	.word sub_80E723E+1
	.word sub_80E24B8+1
	.word sub_80E49A2+1
	.word sub_80E64E8+1
	.word sub_80E7CA8+1
	.word sub_80E7F16+1
	.word sub_80E8058+1
	.word sub_80E81B4+1
	.word sub_80E8BC0+1
	.word sub_80E8ADC+1
	.word 0x0, 0x0
	.word sub_80E91B8+1
	.word sub_80E943E+1
	.word sub_80E979C+1
	.word 0x0, 0x0
	.word sub_80E92EE+1
off_802CD5C: .word sub_80C0DD8+1
	.word sub_80C2A4C+1
	.word sub_80B921A+1
	.word sub_80B9432+1
	.word sub_80BA1B0+1
	.word sub_80BB7F6+1
	.word sub_80BBAC6+1
	.word sub_80B9750+1
	.word sub_80B999A+1
	.word sub_80B9F0E+1
	.word sub_80BBDE8+1
	.word sub_80BC0DA+1
	.word sub_80B9014+1
	.word sub_80B9B6E+1
	.word sub_80BA660+1
	.word sub_80BA920+1
	.word sub_80BAE16+1
	.word sub_80B84EC+1
	.word 0x0, 0x0
	.word sub_80BD9A2+1
	.word sub_80BE3E8+1
	.word sub_80BF160+1
	.word sub_80EA11C+1
	.word sub_80BFCD0+1
	.word sub_80BF6AE+1
	.word sub_80C3B30+1
	.word sub_80C3E98+1
	.word sub_80C2F96+1
.endfunc // sub_802CCAE

.func
.thumb_func
sub_802CDD0:
	ldr R0, off_802CE50 // =dword_203CFB0 
	ldrb R1, [R5,#0x16]
	tst R1, R1
	beq loc_802CDDA
	add R0, #0xC
loc_802CDDA:
	ldr R1, [R0,#8]
	cmp R1, R5
	bne locret_802CDE4
	mov R1, #0
	str R1, [R0,#8]
locret_802CDE4:
	mov PC, LR
.endfunc // sub_802CDD0

.func
.thumb_func
sub_802CDE6:
	ldr R0, off_802CE50 // =dword_203CFB0 
	ldrb R1, [R5,#0x16]
	tst R1, R1
	bne loc_802CDF0
	add R0, #0xC
loc_802CDF0:
	ldr R1, [R0,#4]
	cmp R1, R5
	bne locret_802CDFC
	mov R1, #0
	str R1, [R0,#4]
	str R1, [R0,#8]
locret_802CDFC:
	mov PC, LR
.endfunc // sub_802CDE6

.func
.thumb_func
sub_802CDFE:
	ldr R0, off_802CE50 // =dword_203CFB0 
	ldr R1, [R0]
	lsl r1, r1, #0x10
	str R1, [R0]
	add R0, #0xC
	ldr R1, [R0]
	lsl r1, r1, #0x10
	str R1, [R0]
	mov PC, LR
.endfunc // sub_802CDFE

.func
.thumb_func
sub_802CE10:
	ldr R1, off_802CE50 // =dword_203CFB0 
	ldrb R2, [R5,#0x16]
	tst R2, R2
	beq loc_802CE1A
	add R1, #0xC
loc_802CE1A:
	ldr R2, [R1,#8]
	cmp R5, R2
	bne loc_802CE26
	ldrh R3, [R1,#2]
	add r0, r0, r3
	mov PC, LR
loc_802CE26:
	ldrh R3, [R1]
	cmp R0, R3
	bls locret_802CE2E
	strh R0, [R1]
locret_802CE2E:
	mov PC, LR
.endfunc // sub_802CE10

.func
.thumb_func
sub_802CE30:
	ldr R0, off_802CE50 // =dword_203CFB0 
	ldrb R1, [R5,#0x16]
	tst R1, R1
	bne loc_802CE3A
	add R0, #0xC
loc_802CE3A:
	ldr R1, [R0,#4]
	cmp R1, R5
	bne loc_802CE4A
	ldr R1, [R0,#8]
	tst R1, R1
	beq loc_802CE4A
	mov R0, #1
	mov PC, LR
loc_802CE4A:
	mov R0, #0
	mov PC, LR
	.byte 0, 0
off_802CE50: .word dword_203CFB0
.endfunc // sub_802CE30

.func
.thumb_func
sub_802CE54:
	push {lr}
	// memBlock
	ldr R0, off_802D020 // =unk_2036720 
	// size
	mov r1, #0x20 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_802CE54

.func
.thumb_func
sub_802CE60:
	mov R1, R10
	ldr R1, [R1,#0x18]
	ldrb R1, [R1,#0xD]
	eor R0, R1
	mov R1, #0x10
	mul R0, R1
	ldr R1, off_802D024 // =unk_2036720 
	add r0, r0, r1
	ldr R1, [R0,#4]
	ldrh R2, [R0,#2]
	ldrh R0, [R0]
	mov PC, LR
.endfunc // sub_802CE60

.func
.thumb_func
sub_802CE78:
	mov R1, #0x10
	mul R0, R1
	ldr R1, off_802D028 // =unk_2036720 
	add r0, r0, r1
	ldr R3, [R0,#8]
	ldr R1, [R0,#4]
	ldrh R2, [R0,#2]
	ldrh R0, [R0]
	mov PC, LR
.endfunc // sub_802CE78

.func
.thumb_func
sub_802CE8A:
	push {R4-R6,lr}
	add r6, r2, #0
	add r5, r3, #0
	ldrb R2, [R0,#0x16]
	mov R3, #0x10
	mul R2, R3
	ldr R3, off_802D02C // =unk_2036720 
	add r3, r3, r2
	strh R1, [R3]
	str R6, [R3,#4]
	strh R5, [R3,#2]
	str R0, [R3,#8]
	str R4, [R3,#0xC]
	pop {R4-R6,pc}
.endfunc // sub_802CE8A

.func
.thumb_func
sub_802CEA6:
	mov R1, #0x10
	mul R1, R0
	ldr R0, off_802D030 // =unk_2036720 
	add r0, r0, r1
	mov R1, #0
	strh R1, [R0]
	strh R1, [R0,#4]
	strh R1, [R0,#2]
	str R1, [R0,#8]
	ldr R1, [R0,#0xC]
	tst R1, R1
	beq locret_802CEC6
	mov R2, #1
	strb R2, [R1,#5]
	mov R1, #0
	str R1, [R0,#0xC]
locret_802CEC6:
	mov PC, LR
.endfunc // sub_802CEA6

.func
.thumb_func
sub_802CEC8:
	push {lr}
	ldr R4, off_802D034 // =unk_2036720 
	ldr R0, [R4,#0x8] // (dword_2036728 - 0x2036720)
	tst R0, R0
	beq loc_802CEDE
	ldrh R1, [R0,#0x24]
	tst R1, R1
	bne loc_802CEDE
	ldrb R0, [R0,#0x16]
	bl sub_802CEA6
loc_802CEDE:
	add R4, #0x10
	ldr R0, [R4,#0x8] // (dword_2036738 - 0x2036730)
	tst R0, R0
	beq locret_802CEF2
	ldrh R1, [R0,#0x24]
	tst R1, R1
	bne locret_802CEF2
	ldrb R0, [R0,#0x16]
	bl sub_802CEA6
locret_802CEF2:
	pop {pc}
.endfunc // sub_802CEC8

.func
.thumb_func
sub_802CEF4:
	push {r4,r6,r7,lr}
	ldr R4, [R5,#0x54]
	bl sub_801032C
	ldr R1, dword_802D038 // =0x200000 
	tst R0, R1
	beq loc_802CF30
	mov R1, #0x84
	ldrh R1, [R4,R1]
	cmp R1, #0
	bne loc_802CF30
	mov R0, #0x82
	add r0, r0, r4
	ldrh R2, [R0]
	ldrh R1, [R0,#4]
	orr R2, R1
	ldrh R1, [R0,#6]
	orr R2, R1
	ldrh R1, [R0,#8]
	orr R2, R1
	cmp R2, #0
	beq loc_802CFB8
	ldr R3, [R5,#0x58]
	add R3, #0xA0
	mov R0, #1
	str R0, [R3,#0x30]
	mov r0, #0x6e 
	bl sound_play // () -> void
	b loc_802CFB8
loc_802CF30:
	mov R6, #0xA
	ldrb R0, [R5,#0x16]
	bl sub_802CE78
	add r7, r0, #0
	cmp R0, #0xBB
	beq loc_802CF56
	ldr R1, dword_802D03C // =0x157 
	cmp R0, R1
	beq loc_802CF56
	push {r0}
	bl sub_801032C
	ldr R1, off_802D040 // =0x800 
	tst R0, R1
	pop {r0}
	beq loc_802CF96
	mov R7, #0xBB
	mov R6, #1
loc_802CF56:
	bl sub_800FFFE
	ldr R1, dword_802D044 // =0x8200 
	tst R0, R1
	bne loc_802CFB8
	ldr R0, [R4,#0x70]
	ldr R1, dword_802D048 // =0xFF800000 
	tst R0, R1
	beq locret_802CFF6
	mov R0, #0x82
	add r0, r0, r4
	ldrh R2, [R0]
	ldrh R1, [R0,#2]
	add r2, r2, r1
	ldrh R1, [R0,#4]
	add r2, r2, r1
	ldrh R1, [R0,#6]
	add r2, r2, r1
	ldrh R1, [R0,#8]
	add r2, r2, r1
	cmp R2, R6
	bge loc_802CF88
	cmp R6, #1
	beq loc_802CFB8
	b locret_802CFF6
loc_802CF88:
	ldr R0, off_802D04C // =0x200 
	cmp R7, #0xBB
	beq loc_802CF90
	ldr R0, dword_802D050 // =0x8000 
loc_802CF90:
	bl sub_800FFE4
	b loc_802CFB8
loc_802CF96:
	cmp R0, #0xBC
	bne locret_802CFF6
	bl sub_800FFFE
	ldr R1, off_802D054 // =0x400 
	tst R0, R1
	bne loc_802CFB8
	ldr R0, [R4,#0x70]
	ldr R1, off_802D058 // =0x2000 
	tst R0, R1
	beq locret_802CFF6
	ldr R1, dword_802D05C // =0x20000 
	tst R0, R1
	bne locret_802CFF6
	ldr R0, off_802D054 // =0x400 
	bl sub_800FFE4
loc_802CFB8:
	mov R0, #0
	mov R1, #0x82
	add r1, r1, r4
	strh R0, [R1]
	strh R0, [R1,#2]
	strh R0, [R1,#4]
	strh R0, [R1,#6]
	strh R0, [R1,#8]
	mov R1, #0x8E
	strh R0, [R4,R1]
	mov R1, #0x90
	strh R0, [R4,R1]
	mov R1, #0x92
	strh R0, [R4,R1]
	mov r1, #0x74 
	str R0, [R4,R1]
	strb R0, [R4,#0xF]
	strb R0, [R4,#0x11]
	mov R1, #0xA4
	strh R0, [R4,R1]
	strh R0, [R4,#0x1C]
	strh R0, [R4,#0x2A]
	strh R0, [R4,#0x2C]
	mov r1, #0x40 
	ldr R0, [R4,#0x70]
	bic R0, R1
	str R0, [R4,#0x70]
	ldr R1, dword_802D060 // =0x301BE 
	ldr R0, [R4,#0x40]
	bic R0, R1
	str R0, [R4,#0x40]
locret_802CFF6:
	pop {r4,r6,r7,pc}
.endfunc // sub_802CEF4

.func
.thumb_func
sub_802CFF8:
	push {r4,lr}
	ldr R4, [R5,#0x54]
	mov r1, #0x76 
	ldrb R0, [R4,R1]
	mov r1, #0x40 
	tst R0, R1
	beq locret_802D01C
	ldrb R0, [R5,#0x16]
	bl sub_802CE78
	cmp R0, #0
	beq locret_802D01C
	ldrb R0, [R5,#0x16]
	bl sub_802CEA6
	mov R0, #0x8E
	bl sound_play // () -> void
locret_802D01C:
	pop {r4,pc}
	.byte 0, 0
off_802D020: .word unk_2036720
off_802D024: .word unk_2036720
off_802D028: .word unk_2036720
off_802D02C: .word unk_2036720
off_802D030: .word unk_2036720
off_802D034: .word unk_2036720
dword_802D038: .word 0x200000
dword_802D03C: .word 0x157
off_802D040: .word 0x800
dword_802D044: .word 0x8200
dword_802D048: .word 0xFF800000
off_802D04C: .word 0x200
dword_802D050: .word 0x8000
off_802D054: .word 0x400
off_802D058: .word 0x2000
dword_802D05C: .word 0x20000
dword_802D060: .word 0x301BE
.endfunc // sub_802CFF8

.func
.thumb_func
sub_802D064:
	mov r1, #0x20 
	mul R0, R1
	ldr R1, off_802D214 // =byte_203C4A0 
	add r0, r0, r1
	mov PC, LR
	.byte 0, 0
.endfunc // sub_802D064

.func
.thumb_func
sub_802D070:
	push {lr}
	bl sub_802D064
	push {r0}
	// size
	mov r1, #0x20 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r3}
	mov R0, #0
	strb R0, [R3,#0x10]
	mov r0, #0x64 
	strb R0, [R3,#0xD]
	strb R0, [R3,#0xF]
	pop {pc}
.endfunc // sub_802D070

.func
.thumb_func
sub_802D08C:
	push {lr}
	bl sub_802D064
	mov R1, #0
	strb R1, [R0,#0x10]
	mov r1, #0x64 
	strb R1, [R0,#0xD]
	strb R1, [R0,#0xF]
	pop {pc}
.endfunc // sub_802D08C

	push {r4,r6,lr}
	add r6, r0, #0
	add r4, r1, #0
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	mov R3, #0x10
	lsl r3, r3, #0x10
	mul R3, R4
	add r0, r4, #0
	add r0, r6, #0
	mov R1, #7
	bl sub_800AB46
	pop {r4,r6,pc}
	push {lr}
	bl sub_802D064
	mov R1, #0
	str R1, [R0]
	str R1, [R0,#4]
	pop {pc}
	push {r4,r7,lr}
	sub sp, sp, #0x10
	bl sub_802D064
	add r7, r0, #0
	bl sub_800A7E2
	bl sub_80103BC
	add r2, r0, #0
	ldrh R0, [R2,#0x24]
	mov r1, #0x64 
	mul R0, R1
	ldrh R1, [R2,#0x26]
	sub r2, r1, #1
	add r0, r0, r2
	svc 6
	strb R0, [R7,#0xC]
	bl sub_800A7E2
	mov R3, #1
	eor R3, R0
	ldr R1, dword_802D218 // =0x17F 
	ldr R2, dword_802D218 // =0x17F 
	add r0, sp, #0
	bl object_getEnemyByNameRange
	tst R0, R0
	beq loc_802D112
	ldr R2, [SP]
	ldrh R0, [R2,#0x24]
	mov r1, #0x64 
	mul R0, R1
	ldrh R1, [R2,#0x26]
	sub r2, r1, #1
	add r0, r0, r2
	svc 6
loc_802D112:
	strb R0, [R7,#0xE]
	add sp, sp, #0x10
	pop {r4,r7,pc}
	push {r6,r7,lr}
	bl sub_802D064
	add r7, r0, #0
	bl sub_800A856
	mov R1, #0
	cmp R0, #0
	beq loc_802D138
	mov R1, #1
	cmp R0, #2
	beq loc_802D138
	mov R1, #2
	cmp R0, #1
	beq loc_802D138
	mov R1, #0
loc_802D138:
	strb R1, [R7,#0x11]
	strb R1, [R7,#0x10]
	bl sub_800A70C
	strh R0, [R7,#0x14]
	pop {r6,r7,pc}
	push {lr}
	bl sub_802D064
	mov R1, #0
	strb R1, [R0,#8]
	pop {pc}
.func
.thumb_func
sub_802D150:
	ldr R1, off_802D21C // =dword_2006740 
	mov R0, #0
	str R0, [R1]
	mov PC, LR
.endfunc // sub_802D150

.func
.thumb_func
sub_802D158:
	ldr R1, off_802D220 // =dword_2006740 
	str R0, [R1]
	mov PC, LR
.endfunc // sub_802D158

.func
.thumb_func
sub_802D15E:
	ldr R1, off_802D224 // =dword_2006740 
	ldr R0, [R1]
	mov PC, LR
.endfunc // sub_802D15E

	ldr R1, off_802D228 // =dword_2006740 
	ldr R2, [R1]
	add r2, r2, r0
	ldr R3, dword_802D22C // =0xF423F 
	cmp R2, R3
	ble loc_802D172
	add r2, r3, #0
loc_802D172:
	str R2, [R1]
	mov PC, LR
	ldr R1, off_802D230 // =dword_2006740 
	ldr R2, [R1]
	sub r2, r2, r0
	bge loc_802D180
	mov R2, #0
loc_802D180:
	str R2, [R1]
	mov PC, LR
	push {r4,r7,lr}
	add r4, r0, #0
	mov R7, #0
	bl sub_800A832
	cmp R0, #1
	bne loc_802D194
	add R7, #0xA
loc_802D194:
	add r0, r4, #0
	mov R1, #9
	bl sub_800AB3A
	tst R0, R0
	beq loc_802D1A2
	add R7, #0xA
loc_802D1A2:
	add r0, r4, #0
	mov R1, #7
	bl sub_800AB3A
	mov R1, #2
	mul R0, R1
	add r7, r7, r0
	add r0, r7, #0
	pop {r4,r7,pc}
.func
.thumb_func
sub_802D1B4:
	push {lr}
	bl sub_802D064
	ldrb R0, [R0,#0xD]
	pop {pc}
.endfunc // sub_802D1B4

.func
.thumb_func
sub_802D1BE:
	push {lr}
	bl sub_802D064
	ldrb R0, [R0,#0xF]
	pop {pc}
.endfunc // sub_802D1BE

	push {r4,r5,lr}
	mov R1, #0xC
	mul R0, R1
	add R0, #0x84
	mov R4, R10
	ldr R4, [R4,#0x18]
	add r4, r4, r0
	mov R5, #0
loc_802D1D8:
	ldr R0, [R4]
	tst R0, R0
	beq loc_802D1E2
	bl sub_800EC3C
loc_802D1E2:
	add R4, #4
	add R5, #1
	cmp R5, #3
	blt loc_802D1D8
	pop {r4,r5,pc}
	push {lr}
	bl sub_800A7E2
	bl sub_802D064
	ldrb R1, [R0,#0x12]
	cmp R1, #0
	bne loc_802D1FE
	pop {pc}
loc_802D1FE:
	cmp R1, #2
	bne loc_802D208
	mov R2, #0
	strb R2, [R0,#0xD]
	pop {pc}
loc_802D208:
	cmp R1, #1
	bne locret_802D212
	mov R2, #0
	strb R2, [R0,#0xF]
	pop {pc}
locret_802D212:
	pop {pc}
off_802D214: .word byte_203C4A0
dword_802D218: .word 0x17F
off_802D21C: .word dword_2006740
off_802D220: .word dword_2006740
off_802D224: .word dword_2006740
off_802D228: .word dword_2006740
dword_802D22C: .word 0xF423F
off_802D230: .word dword_2006740
.func
.thumb_func
sub_802D234:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R0, [R0,#0x3C]
	bl sub_802D242
	pop {pc}
.endfunc // sub_802D234

.func
.thumb_func
sub_802D242:
	ldrb R0, [R0,#3]
	mov PC, LR
.endfunc // sub_802D242

.func
.thumb_func
// () -> int
get_802D246:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18] // Toolkit.s_2034880
	ldr R0, [R0,#0x3C]
	bl sub_802D254 // () -> int
	pop {pc}
.endfunc // get_802D246

.func
.thumb_func
// () -> int
sub_802D254:
	ldr R0, [R0,#8]
	mov PC, LR
.endfunc // sub_802D254

.func
.thumb_func
sub_802D258:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R0, [R0,#0x3C]
	bl sub_802D266
	pop {pc}
.endfunc // sub_802D258

.func
.thumb_func
sub_802D266:
	ldrb R0, [R0,#1]
	mov PC, LR
.endfunc // sub_802D266

.func
.thumb_func
sub_802D26A:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldr R0, [R0,#0x3C]
	bl sub_802D278
	pop {pc}
.endfunc // sub_802D26A

.func
.thumb_func
sub_802D278:
	ldrb R0, [R0,#6]
	mov PC, LR
.endfunc // sub_802D278

.func
.thumb_func
// () -> BattleSettings*
getBattleSettings_200AF60:
	ldr R0, off_802D2E4 // =BattleSettings_200AF60 
	mov PC, LR
.endfunc // getBattleSettings_200AF60

.func
.thumb_func
// (BattleSettings *src) -> void
copyBattleSettingsTo_200AF60:
	push {lr}
	ldr R1, off_802D2E8 // =BattleSettings_200AF60 
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
.endfunc // copyBattleSettingsTo_200AF60

.func
.thumb_func
// (int mask) -> void
battleSettings_setFlags_unkSettings:
	ldr R1, off_802D2EC // =BattleSettings_200AF60 
	ldr R2, [R1,#0x8] // BattleSettings.UnknownOptionalSettings
	orr R2, R0
	str R2, [R1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov PC, LR
.endfunc // battleSettings_setFlags_unkSettings

.func
.thumb_func
// (int mask) -> void
battlteSettings_clearFlags_UnkSettings:
	ldr R1, off_802D2F0 // =BattleSettings_200AF60 
	ldr R2, [R1,#0x8] // BattleSettings.UnknownOptionalSettings
	bic R2, R0
	str R2, [R1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov PC, LR
.endfunc // battlteSettings_clearFlags_UnkSettings

.func
.thumb_func
// () -> u32
battleSettings_getUnkOptSettings:
	ldr R1, off_802D2F4 // =BattleSettings_200AF60 
	ldr R0, [R1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov PC, LR
.endfunc // battleSettings_getUnkOptSettings

.func
.thumb_func
// (u32 unkOptSettings) -> void
battleSettings_setUnkOptSettings:
	ldr R1, off_802D2F8 // =BattleSettings_200AF60 
	str R0, [R1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov PC, LR
.endfunc // battleSettings_setUnkOptSettings

.func
.thumb_func
// (u8 background) -> void
battleSettings_setBackground:
	ldr R1, off_802D2FC // =BattleSettings_200AF60 
	strb R0, [R1,#0x4] // BattleSettings.background
	mov PC, LR
.endfunc // battleSettings_setBackground

.func
.thumb_func
// () -> BattleSettings*
battleSettings_802D2B2:
	push {r4,r6,r7,lr}
	bl battleSettings_getUnkOptSettings // () -> u32
	add r4, r0, #0
	mov R7, R10
	ldr R7, [R7,#0x18] // Toolkit.s_2034880
	ldrb R0, [R7,#0x1A]
	sub R0, #1
	add r0, r0, r0
	ldr R6, off_802D300 // =byte_203CA50 
	add r6, r6, r0
	ldrb R0, [R6]
	bl getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
	bl copyBattleSettingsTo_200AF60 // (BattleSettings *src) -> void
	add r0, r4, #0
	bl battleSettings_setUnkOptSettings // (u32 unkOptSettings) -> void
	ldrb R0, [R6,#1]
	bl battleSettings_setBackground // (u8 background) -> void
	bl getBattleSettings_200AF60 // () -> BattleSettings*
	pop {r4,r6,r7,pc}
off_802D2E4: .word BattleSettings_200AF60
off_802D2E8: .word BattleSettings_200AF60
off_802D2EC: .word BattleSettings_200AF60
off_802D2F0: .word BattleSettings_200AF60
off_802D2F4: .word BattleSettings_200AF60
off_802D2F8: .word BattleSettings_200AF60
off_802D2FC: .word BattleSettings_200AF60
off_802D300: .word byte_203CA50
	.word 0, 0
	.byte 0, 0, 0, 0
.endfunc // battleSettings_802D2B2

.func
.thumb_func
sub_802D310:
	ldr R0, [R5,#0x58]
	sub R0, #0xF
	add R0, #0xFF
	mov R1, #0
	str R1, [R0]
	str R1, [R0,#4]
	str R1, [R0,#8]
	str R1, [R0,#0xC]
	mov PC, LR
.endfunc // sub_802D310

.func
.thumb_func
sub_802D322:
	push {r4,r6,r7,lr}
	ldr R6, [R5,#0x58]
	sub R6, #0xF
	add R6, #0xFF
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	ldrb R0, [R6,#8]
	cmp R0, #0
	bne loc_802D33C
	mov R0, #1
	strb R0, [R6,#8]
	mov R0, #8
	strh R0, [R6]
loc_802D33C:
	ldr R1, off_802D348 // =off_802D34C 
	ldrb R0, [R6]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r4,r6,r7,pc}
off_802D348: .word off_802D34C
off_802D34C: .word sub_802D358+1
	.word sub_802D3A8+1
	.word sub_802D3CA+1
.endfunc // sub_802D322

.func
.thumb_func
sub_802D358:
	push {r4,lr}
	ldrh R0, [R6,#4]
	cmp R0, #3
	bgt loc_802D37A
	bl sub_80E164A
	ldrb R2, [R5,#0x16]
	bl sub_80E7486
	add r4, r0, #0
	beq loc_802D37A
	ldr R0, [R4,#0x54]
	ldr R0, [R0,#0x3C]
	mov R1, #1
	lsl r1, r1, #9
	tst R0, R1
	bne loc_802D3A0
loc_802D37A:
	bl sub_8010004
	ldr R3, dword_802D628 // =0xFFFF 
	cmp R0, R3
	beq loc_802D3A0
	mov R0, #4
	bl sub_800FFE4
	bl sub_800FB54
	ldr R3, dword_802D628 // =0xFFFF 
	cmp R0, R3
	beq loc_802D3A0
	mov R0, #0
	strh R0, [R6,#4]
	mov R0, #8
	strh R0, [R6]
	mov R0, #1
	b locret_802D3A6
loc_802D3A0:
	mov R0, #4
	strh R0, [R6]
	mov R0, #0
locret_802D3A6:
	pop {r4,pc}
.endfunc // sub_802D358

.func
.thumb_func
sub_802D3A8:
	push {lr}
	mov R0, #8
	strh R0, [R6]
	ldrh R0, [R6,#4]
	cmp R0, #2
	bgt loc_802D3BE
	ldrb R0, [R5,#0x13]
	bl sub_810971A
	cmp R0, #0
	beq loc_802D3C6
loc_802D3BE:
	mov R0, #0
	strh R0, [R6,#4]
	mov R0, #2
	b locret_802D3C8
loc_802D3C6:
	mov R0, #0
locret_802D3C8:
	pop {pc}
.endfunc // sub_802D3A8

.func
.thumb_func
sub_802D3CA:
	push {lr}
	bl object_getFlag // () -> int
	ldr R3, off_802D62C // =byte_802D410 
	mov R1, #0x10
	tst R0, R1
	beq loc_802D3DA
	ldr R3, off_802D630 // =unk_802D420 
loc_802D3DA:
	bl sub_81096FA
	bl sub_802D430
.endfunc // sub_802D3CA

	strb R0, [R7,#0x16]
	strb R1, [R7,#0x17]
	mov R0, #0
	str R0, [R7,#0x2C]
	str R0, [R7,#0x30]
	mov R1, #8
	mov R2, #2
	mov R0, #5
	bl sub_80116AE
	ldrh R0, [R6,#4]
	add R0, #1
	strh R0, [R6,#4]
	mov R0, #0
	strh R0, [R6]
	mov R0, #3
	pop {pc}
	.word 0, 0
	.byte 0, 0, 0, 0
byte_802D410: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
unk_802D420: .byte  0
	.byte  0
	.byte  0
	.byte  0
	.word 0xF8800A0, 0x20, 0xF880080
.func
.thumb_func
sub_802D430:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x20
	str R2, [SP]
	str R3, [SP,#4]
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	bl sub_801BB1C
.endfunc // sub_802D430

	add r7, sp, #8
	mov R4, #1
	mov R6, #0
loc_802D446:
	add r0, r4, #0
	bl sub_810971A
	cmp R0, #0
	beq loc_802D46C
	ldr R2, [SP]
	ldr R3, [SP,#4]
	push {r4}
	mov R4, #0
	bl sub_8015CC0
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R7]
	cmp R0, #0
	beq loc_802D468
	add R6, #1
loc_802D468:
	add R7, #1
	pop {r4}
loc_802D46C:
	add R4, #1
	cmp R4, #3
	ble loc_802D446
	cmp R6, #0
	bne loc_802D4A4
	add r7, sp, #8
	mov R4, #1
	mov R6, #0
loc_802D47C:
	add r0, r4, #0
	bl sub_810971A
	cmp R0, #0
	beq loc_802D494
	add r0, r4, #0
	ldr R2, [SP]
	ldr R3, [SP,#4]
	bl sub_800D012
	add r6, r6, r0
	add r7, r7, r0
loc_802D494:
	add R4, #1
	cmp R4, #3
	ble loc_802D47C
	cmp R6, #0
	bne loc_802D4A4
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	b loc_802D4B6
loc_802D4A4:
	bl sub_8001532
	add r1, r6, #0
	svc 6
	add r0, sp, #8
	ldrb R0, [R0,R1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_802D4B6:
	push {r0,r1}
	ldrb R0, [R5,#0x12]
	ldrb R1, [R5,#0x13]
	bl sub_801BB46
	pop {r0,r1}
	add sp, sp, #0x20
	pop {r4,r6,r7,pc}
loc_802D4C6:
	push {r4,r6,r7,lr}
	ldr R6, [R5,#0x58]
	sub R6, #0xF
	add R6, #0xFF
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	ldr R1, off_802D4E0 // =off_802D4E4 
	ldrb R0, [R6]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_802D4E0: .word off_802D4E4
off_802D4E4: .word sub_802D4F0+1
	.word sub_802D588+1
	.word sub_802D3CA+1
.func
.thumb_func
sub_802D4F0:
	push {r4,lr}
	ldrb R0, [R6,#8]
	cmp R0, #0
	bne loc_802D504
	mov R0, #1
	strb R0, [R6,#8]
	mov R0, #0x83
	add R0, #0xFF
	bl sound_play // () -> void
loc_802D504:
	ldrh R0, [R6,#4]
	cmp R0, #3
	bgt loc_802D524
	bl sub_80E164A
	ldrb R2, [R5,#0x16]
	bl sub_80E7486
	add r4, r0, #0
	beq loc_802D524
	ldr R0, [R4,#0x54]
	ldr R0, [R0,#0x3C]
	mov R1, #1
	lsl r1, r1, #9
	tst R0, R1
	bne loc_802D56C
loc_802D524:
	mov R0, #0
	strh R0, [R6,#4]
	bl sub_802D5A8
	strh R0, [R7,#0x14]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldrb R1, [R4,#0xC]
	strb R1, [R7,#3]
	ldr R1, [R4,#0x10]
	str R1, [R7,#0xC]
	ldrh R1, [R4,#0x1A]
	strh R1, [R7,#8]
	ldrb R1, [R4,#0xA]
	mov R0, #0x80
	orr R1, R0
	strh R1, [R7,#0xA]
	ldrh R0, [R7,#0x14]
	ldr R1, dword_802D634 // =0x153 
	cmp R0, R1
	bne loc_802D55A
	// idx
	mov r0, #0x52 
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrh R1, [R0,#0x1A]
	strh R1, [R7,#8]
loc_802D55A:
	ldrb R0, [R4,#0xB]
	bl loc_8011694
	ldrb R0, [R4,#0xF]
	strb R0, [R7,#0x1D]
	mov R0, #8
	strh R0, [R6]
	mov R0, #1
	b locret_802D586
loc_802D56C:
	mov R0, #4
	strh R0, [R6]
	mov r1, #0x2c 
	bl sub_8013774
	mov R1, #6
	cmp R0, #0xB
	beq loc_802D580
	cmp R0, #0xC
	bne loc_802D582
loc_802D580:
	mov R0, #2
loc_802D582:
	strh R0, [R6,#6]
	mov R0, #0
locret_802D586:
	pop {r4,pc}
.endfunc // sub_802D4F0

.func
.thumb_func
sub_802D588:
	push {lr}
	ldrb R0, [R5,#0x13]
	bl sub_810971A
.endfunc // sub_802D588

	cmp R0, #0
	beq loc_802D5A0
	ldrh R0, [R6,#6]
	sub R0, #1
	strh R0, [R6,#6]
	beq loc_802D5A0
	mov R0, #2
	b locret_802D5A6
loc_802D5A0:
	mov R0, #8
	strh R0, [R6]
	mov R0, #0
locret_802D5A6:
	pop {pc}
.func
.thumb_func
sub_802D5A8:
	push {r4,r6,lr}
	mov r1, #0x3e 
	bl sub_8013790
	mov r1, #0x64 
	svc 6
	mov R1, #0
	cmp R0, #1
	ble loc_802D5C2
	sub r1, r0, #1
	cmp R1, #9
	ble loc_802D5C2
	mov R1, #9
loc_802D5C2:
	add r6, r1, #0
	mov R0, #6
	mul R0, R1
	ldr R4, off_802D5E0 // =dword_802D5E4 
	add r4, r4, r0
	bl sub_8001532
	mov R1, #3
	cmp R6, #9
	bne loc_802D5D8
	mov R1, #6
loc_802D5D8:
	svc 6
	lsl r1, r1, #1
	ldrh R0, [R4,R1]
	pop {r4,r6,pc}
off_802D5E0: .word dword_802D5E4
dword_802D5E4: .word 0x360001, 0x10048, 0x480037, 0x380002, 0xC0049, 0x4C0015
	.word 0x190003, 0xD004D, 0x4E0020, 0x290010, 0xE004F, 0x540034
	.word 0x32000E, 0x160153, 0x21001A, 0x8002A, 0x153
dword_802D628: .word 0xFFFF
off_802D62C: .word byte_802D410
off_802D630: .word unk_802D420
dword_802D634: .word 0x153
.endfunc // sub_802D5A8

.func
.thumb_func
sub_802D638:
	push {lr}
	// memBlock
	ldr R0, off_802D68C // =unk_2000070 
	// size
	mov r1, #0x20 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_802D638

.func
.thumb_func
sub_802D644:
	ldr R1, off_802D690 // =unk_2000070 
	ldrb R2, [R1,R0]
	add R2, #1
	cmp R2, #0xFF
	bgt locret_802D650
	strb R2, [R1,R0]
locret_802D650:
	mov PC, LR
.endfunc // sub_802D644

.func
.thumb_func
sub_802D652:
	ldr R1, off_802D694 // =unk_2000070 
	ldrb R0, [R1,R0]
	mov PC, LR
.endfunc // sub_802D652

	ldr R2, off_802D698 // =unk_2000070 
	strb R1, [R2,R0]
	mov PC, LR
.func
.thumb_func
sub_802D65E:
	push {r4,lr}
	add r4, r0, #0
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov R1, #0xD8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_802D68A
	ldr R1, dword_802D69C // =0x196 
	add r1, r1, r4
	add r0, r1, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne locret_802D68A
	cmp R4, #0xD
	beq locret_802D68A
	cmp R4, #0xA
	beq locret_802D68A
	mov R0, #0
	mov R1, #0xA
	add r2, r4, #0
	bl sub_800AB2E
locret_802D68A:
	pop {r4,pc}
off_802D68C: .word unk_2000070
off_802D690: .word unk_2000070
off_802D694: .word unk_2000070
off_802D698: .word unk_2000070
dword_802D69C: .word 0x196
.endfunc // sub_802D65E

.func
.thumb_func
sub_802D6A0:
	push {R5-R7,lr}
	ldr R5, off_802D6C0 // =dword_203C970 
	mov R0, #0
	str R0, [R5]
	mov R0, #0
	bl sub_80103BC
	str R0, [R5,#0x8] // (dword_203C978 - 0x203C970)
	mov R0, #1
	bl sub_80103BC
	str R0, [R5,#0xC] // (dword_203C97C - 0x203C970)
	mov R0, #1
	strb R0, [R5,#0x4] // (byte_203C974 - 0x203C970)
	pop {R5-R7,pc}
	.byte 0, 0
off_802D6C0: .word dword_203C970
.endfunc // sub_802D6A0

.func
.thumb_func
sub_802D6C4:
	push {r5,lr}
	ldr R5, off_802D710 // =dword_203C970 
	ldrb R0, [R5,#0x3] // (dword_203C970+3 - 0x203C970)
	tst R0, R0
	bne loc_802D6F4
	ldr R0, [R5,#0x8] // (dword_203C978 - 0x203C970)
	bl sub_802DD1E
	tst R0, R0
	beq loc_802D6DE
	ldr R0, [R5,#0x8] // (dword_203C978 - 0x203C970)
	bl sub_802DD10
loc_802D6DE:
	ldr R0, [R5,#0xC] // (dword_203C97C - 0x203C970)
	bl sub_802DD1E
	tst R0, R0
	beq loc_802D6EE
	ldr R0, [R5,#0xC] // (dword_203C97C - 0x203C970)
	bl sub_802DD10
loc_802D6EE:
	mov R0, #4
	strb R0, [R5,#0x3] // (dword_203C970+3 - 0x203C970)
	b loc_802D70C
loc_802D6F4:
	ldr R0, [R5,#0x8] // (dword_203C978 - 0x203C970)
	bl sub_802DD4A
	tst R0, R0
	bne loc_802D70C
	ldr R0, [R5,#0xC] // (dword_203C97C - 0x203C970)
	bl sub_802DD4A
	tst R0, R0
	bne loc_802D70C
	mov R0, #0
	strb R0, [R5,#0x4] // (byte_203C974 - 0x203C970)
loc_802D70C:
	ldrb R0, [R5,#0x4] // (byte_203C974 - 0x203C970)
	pop {r5,pc}
off_802D710: .word dword_203C970
.endfunc // sub_802D6C4

loc_802D714:
	push {lr}
	ldr R1, off_802D728 // =off_802D72C 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	bl sub_801BCD0
	pop {pc}
	.balign 4, 0x00
off_802D728: .word off_802D72C
off_802D72C: .word sub_802D738+1
	.word sub_802D7A0+1
	.word sub_802D8F0+1
.func
.thumb_func
sub_802D738:
	push {lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802D78A
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	mov R0, #0
	str R0, [R5,#0x3C]
	bl sub_801A04C
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	ldr R0, dword_802D798 // =0x1C41 
	bl object_clearFlag // (int bitfield) -> void
	ldr R1, dword_802D79C // =0x10 
	bl sub_801A176
	mov R0, #4
	bl sub_800F2B6
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	mov R0, #1
	bl sub_801A07C
	mov R0, #4
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802D78A:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_802D796
	mov R0, #4
	strh R0, [R7]
locret_802D796:
	pop {pc}
dword_802D798: .word 0x1C41
dword_802D79C: .word 0x10
.endfunc // sub_802D738

.func
.thumb_func
sub_802D7A0:
	push {r4,lr}
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011384
	bl sub_8011020
	bl sub_80143A6
	ldrb R0, [R5,#0x16]
	mov r1, #0x29 
	bl sub_801382E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	cmp R0, R1
	bne loc_802D7E8
	ldrh R2, [R5,#0x24]
	mov r1, #0x40 
	bl sub_8013764
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	ldrb R1, [R5,#0x16]
	mov r2, #0x64 
	mul R2, R1
	ldr R1, off_802D8EC // =unk_2034A60 
	add r1, r1, r2
	mov r2, #0x64 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_802D7E8:
	ldr R4, [R5,#0x58]
	ldrb R0, [R5,#0x16]
	mov r1, #0x29 
	bl sub_801382E
	push {r0}
	ldrb R0, [R5,#0x16]
	bl sub_802DCCC
	pop {r1}
	cmp R0, R1
	bne loc_802D81A
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	add r1, r0, #0
	ldrb R0, [R5,#0x16]
	mov r2, #0x64 
	mul R2, R0
	ldr R0, off_802D8EC // =unk_2034A60 
	add r0, r0, r2
	mov r2, #0x64 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	b loc_802D822
loc_802D81A:
	add r1, r0, #0
	ldrb R0, [R5,#0x16]
	bl init_8013B64 // (int idx, int a2) -> void
loc_802D822:
	bl sub_801393A
	ldrb R0, [R5,#0x16]
	mov r1, #0x29 
	bl sub_80136CC
	strb R0, [R4,#1]
	add R0, #0xFF
	add R0, #0xA1
	strh R0, [R5,#0x28]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_802D7A0

	bl sub_8002E3C
	mov R0, #3
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPallete // (int pallete) -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_802D88C
	mov r1, #0x2c 
	bl sub_8013774
	bl loc_8011268
	b loc_802D890
loc_802D88C:
	bl sub_8010DD0
loc_802D890:
	bl sub_800F378
	bl sub_801A264
	bl sub_80143A6
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	bne loc_802D8B8
	mov r1, #0x42 
	bl sub_8013790
	push {r0}
	mov r1, #0x40 
	bl sub_8013790
	pop {r1}
	b loc_802D8C0
loc_802D8B8:
	ldrb R1, [R5,#0x16]
	bl sub_802DD70
	add r1, r0, #0
loc_802D8C0:
	strh R0, [R5,#0x24]
	strh R1, [R5,#0x26]
	mov R0, #1
	bl sub_801E0D0
	bl sub_801DBD4
	bl sub_800EA0E
	ldr R0, off_802DCA4 // =start_ 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801086C
	bl loc_8014216
	bl sub_800EB08
	mov R0, #8
	strh R0, [R7]
	pop {r4,pc}
	.balign 4, 0x00
off_802D8EC: .word unk_2034A60
.func
.thumb_func
sub_802D8F0:
	push {lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802D900
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802D900:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_802D924
	mov R0, #0
	bl sub_801E0D0
	ldr R0, dword_802DCA8 // =0x4000 
	bl sub_8010312
	ldr R0, off_802DCAC // =0x1800 
	bl sub_801031C
	ldr R0, dword_802DCB0 // =0x8600 
	bl sub_800FFEE
	bl sub_8011714
locret_802D924:
	pop {pc}
.endfunc // sub_802D8F0

loc_802D926:
	push {lr}
	ldr R1, off_802D940 // =off_802D944 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	ldrb R0, [R7,#3]
	cmp R0, #0
	bne locret_802D93C
	bl sub_801BCD0
locret_802D93C:
	pop {pc}
	.byte 0, 0
off_802D940: .word off_802D944
off_802D944: .word sub_802D950+1
	.word sub_802D9B0+1
	.word sub_802DA78+1
.func
.thumb_func
sub_802D950:
	push {lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802D9A2
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	mov R0, #0
	str R0, [R5,#0x3C]
	bl sub_801A04C
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	ldr R0, dword_802DCB4 // =0x1C41 
	bl object_clearFlag // (int bitfield) -> void
	mov R1, #0x10
	bl sub_801A176
	mov R0, #4
	bl sub_800F2B6
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldr R1, [R5,#0x58]
	mov R0, #0
	str R0, [R1,#0x5C]
	mov R0, #4
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802D9A2:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_802D9AE
	mov R0, #4
	strh R0, [R7]
locret_802D9AE:
	pop {pc}
.endfunc // sub_802D950

.func
.thumb_func
sub_802D9B0:
	push {r4,lr}
	bl sub_8011020
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	add r1, r0, #0
	ldrb R0, [R5,#0x16]
	mov r2, #0x64 
	mul R2, R0
	ldr R0, off_802DCB8 // =unk_2034A60 
	add r0, r0, r2
	mov r2, #0x64 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R4, [R5,#0x58]
	ldrb R0, [R5,#0x16]
	mov r1, #0x29 
	bl sub_80136CC
	strb R0, [R4,#1]
	add R0, #0xFF
	add R0, #0xA1
	strh R0, [R5,#0x28]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_802D9B0

	bl sub_8002E3C
	mov R0, #3
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPallete // (int pallete) -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_8010DD0
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	bl loc_8011268
	bl sub_801A264
	bl sub_80144C0
	bl loc_80143B4
	mov r1, #0x40 
	bl sub_8013790
	strh R0, [R5,#0x24]
	mov r1, #0x42 
	bl sub_8013790
	strh R0, [R5,#0x26]
	mov R0, #1
	bl sub_801E0D0
	bl sub_801DBD4
	ldrb R0, [R5,#0x16]
	bl sub_80108FC
	bl sub_800EA0E
	ldr R0, off_802DCA4 // =start_ 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801086C
	bl loc_8014216
	bl sub_800EB08
	mov R0, #8
	strh R0, [R7]
	pop {r4,pc}
.func
.thumb_func
sub_802DA78:
	push {lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802DA88
	mov R0, #0x14
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802DA88:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bge locret_802DAA6
	mov R0, #0
	bl sub_801E0D0
	ldr R0, dword_802DCBC // =0x6800 
	bl sub_801031C
	ldr R0, dword_802DCC0 // =0x4008600 
	bl sub_800FFEE
	bl sub_8011714
locret_802DAA6:
	pop {pc}
.endfunc // sub_802DA78

	push {lr}
	ldr R1, off_802DAB8 // =off_802DABC 
	ldrb R0, [R7]
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802DAB8: .word off_802DABC
off_802DABC: .word sub_802DACC+1
	.word sub_802DB58+1
	.word sub_802DB80+1
	.word sub_802DC66+1
.func
.thumb_func
sub_802DACC:
	push {lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802DB4A
	mov R0, #4
	bl battle_setFlags
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x12]
	ldrb R1, [R5,#0x15]
	strb R1, [R5,#0x13]
	bl sub_801BB46
	bl sub_800E29C // () -> void
	mov R0, #0
	str R0, [R5,#0x3C]
	bl sub_801A04C
	bl sub_800F46C
	strb R0, [R5,#0x17]
	bl sub_800F2C6
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB1C
	bl sub_801A074 // () -> void
	ldr R0, dword_802DCB4 // =0x1C41 
	bl object_clearFlag // (int bitfield) -> void
	mov R1, #0x10
	bl sub_801A176
	mov R0, #2
	bl sub_800F2B6
	mov r0, #0x34 
	add r0, r0, r5
	ldmia R0!, {R1-R3}
	mov R4, #3
	bl sub_80E05F6
	bl sub_80E05F6
	mov R0, #0
	str R0, [R5,#0x4C]
	ldr R1, [R5,#0x58]
	str R0, [R1,#0x68]
	ldr R1, [R5,#0x58]
	mov R0, #0
	str R0, [R1,#0x5C]
	mov r0, #0x6c 
	bl sound_play // () -> void
	mov R0, #0xA
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802DB4A:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_802DB56
	mov R0, #4
	strh R0, [R7]
locret_802DB56:
	pop {pc}
.endfunc // sub_802DACC

.func
.thumb_func
sub_802DB58:
	push {lr}
	bl sprite_forceWhitePallete
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802DB72
	mov R0, #4
	bl sub_800F2B6
	mov R0, #4
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802DB72:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_802DB7E
	mov R0, #8
	strh R0, [R7]
locret_802DB7E:
	pop {pc}
.endfunc // sub_802DB58

.func
.thumb_func
sub_802DB80:
	push {r4,lr}
	bl sub_8011020
	ldrb R0, [R5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	add r1, r0, #0
	ldrb R0, [R5,#0x16]
	mov r2, #0x64 
	mul R2, R0
	ldr R0, off_802DCC4 // =unk_2034A60 
	add r0, r0, r2
	mov r2, #0x64 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R4, [R5,#0x58]
	ldrb R0, [R5,#0x16]
	mov r1, #0x29 
	bl sub_80136CC
	strb R0, [R4,#1]
	add R0, #0xFF
	add R0, #0xA1
	strh R0, [R5,#0x28]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov R0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_802DB80

	bl sub_8002E3C
	mov R0, #3
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPallete // (int pallete) -> void
	bl sub_800E456 // () -> int
	bl sub_8002F5C
	bl sub_8010DD0
	mov r1, #0x2c 
	bl sub_8013774
	mov R2, #0
	bl loc_8011268
	bl sub_801A264
	bl sub_80144C0
	bl loc_80143B4
	mov r1, #0x40 
	bl sub_8013790
	strh R0, [R5,#0x24]
	mov r1, #0x42 
	bl sub_8013790
	strh R0, [R5,#0x26]
	mov R0, #1
	bl sub_801E0D0
	bl sub_801DBD4
	ldrb R0, [R5,#0x16]
	bl sub_80108FC
	bl sub_800EA0E
	bl sub_801A66C
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	bl sub_801BB46
	ldr R0, off_802DCA4 // =start_ 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801086C
	bl loc_8014216
	bl sub_800EB08
	ldrb R0, [R5,#0x16]
	bl battle_networkInvert
	tst R0, R0
	beq loc_802DC60
	mov R0, #0
	mov R1, #0
	bl sub_801DC7C
loc_802DC60:
	mov R0, #0xC
	strh R0, [R7]
	pop {r4,pc}
.func
.thumb_func
sub_802DC66:
	push {lr}
	ldrb R0, [R7,#1]
	tst R0, R0
	bne loc_802DC7C
	mov R0, #1
	bl sub_801A07C
	mov R0, #4
	strh R0, [R7,#0x10]
	mov R0, #4
	strb R0, [R7,#1]
loc_802DC7C:
	ldrh R0, [R7,#0x10]
	sub R0, #1
	strh R0, [R7,#0x10]
	bgt locret_802DCA0
	mov R0, #0
	bl sub_801E0D0
	ldr R0, dword_802DCBC // =0x6800 
	bl sub_801031C
	ldr R0, dword_802DCC8 // =0xC008600 
	bl sub_800FFEE
	mov R0, #4
	bl battle_clearFlags
	bl sub_8011714
locret_802DCA0:
	pop {pc}
	.balign 4, 0x00
off_802DCA4: .word start_
dword_802DCA8: .word 0x4000
off_802DCAC: .word 0x1800
dword_802DCB0: .word 0x8600
dword_802DCB4: .word 0x1C41
off_802DCB8: .word unk_2034A60
dword_802DCBC: .word 0x6800
dword_802DCC0: .word 0x4008600
off_802DCC4: .word unk_2034A60
dword_802DCC8: .word 0xC008600
.endfunc // sub_802DC66

.func
.thumb_func
sub_802DCCC:
	mov R1, #0x10
	mul R0, R1
	ldr R1, off_802DE40 // =unk_203A980 
	add r1, r1, r0
	ldrb R0, [R1,#4]
	mov PC, LR
.endfunc // sub_802DCCC

	ldr R1, off_802DE44 // =byte_203CED0 
	strb R0, [R1,#0x4] // (dword_203CED4 - 0x203CED0)
	mov PC, LR
.func
.thumb_func
sub_802DCDE:
	push {r5,lr}
	add r5, r0, #0
	beq locret_802DCEA
	ldr R0, off_802DE48 // =LCDControl 
	bl sub_800FFE4
locret_802DCEA:
	pop {r5,pc}
.endfunc // sub_802DCDE

.func
.thumb_func
sub_802DCEC:
	push {r5,r7,lr}
	mov R7, #0
	add r5, r0, #0
	beq loc_802DD0C
	mov R7, #1
	bl sub_801032C
	ldr R1, off_802DE4C // =0x1000 
	tst R0, R1
	bne loc_802DD0C
	bl sub_800FFFE
	ldr R1, off_802DE48 // =LCDControl 
	tst R0, R1
	bne loc_802DD0C
	mov R7, #0
loc_802DD0C:
	add r0, r7, #0
	pop {r5,r7,pc}
.endfunc // sub_802DCEC

.func
.thumb_func
sub_802DD10:
	push {r5,lr}
	add r5, r0, #0
	beq locret_802DD1C
	ldr R0, off_802DE50 // =start_ 
	bl sub_800FFE4
locret_802DD1C:
	pop {r5,pc}
.endfunc // sub_802DD10

.func
.thumb_func
sub_802DD1E:
	push {r5,r7,lr}
	mov R7, #0
	add r5, r0, #0
	beq loc_802DD26
loc_802DD26:
	add r0, r7, #0
	pop {r5,r7,pc}
.endfunc // sub_802DD1E

.func
.thumb_func
sub_802DD2A:
	push {r7,lr}
	mov R7, #0
	mov r1, #0x29 
	bl sub_8013774
	cmp R0, #0
	beq loc_802DD46
	bl sub_801032C
	ldr R1, dword_802DE54 // =0x4000 
	tst R0, R1
	beq loc_802DD46
	ldr R1, off_802DE58 // =0x2000 
	mov R7, #1
loc_802DD46:
	add r0, r7, #0
	pop {r7,pc}
.endfunc // sub_802DD2A

.func
.thumb_func
sub_802DD4A:
	push {r5,lr}
	add r5, r0, #0
	beq locret_802DD60
	bl sub_801032C
	mov R2, #0
	ldr R1, off_802DE58 // =0x2000 
	tst R0, R1
	beq loc_802DD5E
	mov R2, #1
loc_802DD5E:
	add r0, r2, #0
locret_802DD60:
	pop {r5,pc}
.endfunc // sub_802DD4A

	ldr R1, [R0,#0x58]
	ldrb R2, [R1,#0x18]
	tst R2, R2
	beq locret_802DD6E
	sub R2, #1
	strb R2, [R1,#0x18]
locret_802DD6E:
	mov PC, LR
.func
.thumb_func
sub_802DD70:
	push {r4,lr}
	mov R4, #0xE
	mul R4, R0
	add r0, r1, #0
	add r0, r0, r0
	add r4, r4, r0
	ldr R1, off_802DD84 // =dword_802DD88 
	ldrh R0, [R1,R4]
	pop {r4,pc}
	.balign 4, 0x00
off_802DD84: .word dword_802DD88
dword_802DD88: .word 0x3E703E7, 0x3E703E7, 0x3E703E7, 0x6403E7, 0xB40096
	.word 0xE600C8, 0x12C00FA, 0x820082, 0x960082, 0xC800B4
	.word 0x9600FA, 0x960096, 0x960096, 0xE600B4, 0x960096
	.word 0x960096, 0xC800B4, 0xC800FA, 0xFA00C8, 0x12C0118
	.word 0x1C2014A, 0x960096, 0x960096, 0x960096, 0x6400C8
	.word 0xB40096, 0xE600C8, 0x12C00FA, 0x960064, 0x960082
	.word 0xC800B4, 0xB400FA, 0xB400B4, 0xB400B4, 0xE600B4
	.word 0x960096, 0x960096, 0xC800B4, 0xC800FA, 0xFA00C8
	.word 0x12C0118, 0x1C2014A, 0x960096, 0x960096, 0x960096
	.word 0xC8
off_802DE40: .word unk_203A980
off_802DE44: .word byte_203CED0
off_802DE48: .word LCDControl
off_802DE4C: .word 0x1000
off_802DE50: .word start_
dword_802DE54: .word 0x4000
off_802DE58: .word 0x2000
.endfunc // sub_802DD70

.func
.thumb_func
sub_802DE5C:
	push {lr}
	bl sub_802E09A
	beq locret_802DE70
	mov R0, #0
	bl sub_802E2C4
	mov R0, #1
	bl sub_802E2C4
locret_802DE70:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_802DE5C

	push {r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	add r7, r0, #0
	ldrb R0, [R7,#1]
	tst R0, R0
	beq loc_802DEA0
	sub R0, #1
	strb R0, [R7,#1]
	add r2, r7, #2
	mov R3, #0
loc_802DE8C:
	ldrh R0, [R2,#2]
	strh R0, [R2]
	ldrh R0, [R2,#0xE]
	strh R0, [R2,#0xC]
	ldrh R0, [R2,#0x1A]
	strh R0, [R2,#0x18]
	add R2, #2
	add R3, #1
	cmp R3, #5
	blt loc_802DE8C
loc_802DEA0:
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	mov R1, #1
	mov r2, #0x53 
	strb R1, [R0,R2]
	pop {r7,pc}
	push {r4,lr}
	ldr R4, dword_802DED0 // =0xFFFF 
	ldr R1, [R5,#0x58]
	ldrb R1, [R1,#0x19]
	tst R1, R1
	bne loc_802DECC
	bl object_getFlag // () -> int
	ldr R1, off_802DED4 // =0x1000 
	tst R0, R1
	bne loc_802DECC
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	ldrh R4, [R0,#2]
loc_802DECC:
	add r0, r4, #0
	pop {r4,pc}
dword_802DED0: .word 0xFFFF
off_802DED4: .word 0x1000
	push {r4,r6,r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r6, r0, #0
	ldrb R0, [R5,#0x16]
	bl sub_8010018
	ldrh R2, [R0,#0x1A]
	ldrh R1, [R0,#0xE]
	ldrh R0, [R0,#2]
	ldr R3, dword_802DF30 // =0xFFFF 
	cmp R0, R3
	beq locret_802DF2E
	push {r0}
	add r7, r2, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldrb R0, [R4,#9]
	mov R1, #2
	tst R0, R1
	beq loc_802DF14
	ldrh R3, [R6,#0x36]
	add r7, r7, r3
	mov R1, #4
	tst R0, R1
	beq loc_802DF14
	ldrh R3, [R6,#0x38]
	add r7, r7, r3
loc_802DF14:
	add r2, r7, #0
	pop {r0}
	push {r0,r2}
	ldrb R1, [R5,#0x16]
	bl sub_80109A4
	add r1, r0, #0
	pop {r0,r2}
	push {R0-R2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r3, r0, #0
	pop {R0-R2}
locret_802DF2E:
	pop {r4,r6,r7,pc}
dword_802DF30: .word 0xFFFF
	push {r4,r7,lr}
	push {r1,r2}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	strh R0, [R7,#0x14]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	pop {r1,r2}
	strh R1, [R7,#8]
	strh R2, [R7,#6]
	ldrb R1, [R0,#0xA]
	strh R1, [R7,#0xA]
	ldrh R1, [R0,#4]
	strh R1, [R7,#2]
	ldr R1, [R0,#0x10]
	str R1, [R7,#0xC]
	ldrb R1, [R0,#0xC]
	strb R1, [R7,#3]
	ldrb R1, [R0,#0x14]
	strb R1, [R7,#5]
	mov R1, #0
	strh R1, [R7]
	strb R1, [R7,#4]
	ldrb R0, [R0,#0xB]
	bl sub_8011680
	mov r0, #0x40 
	bl sub_801DACC
	ldrb R0, [R5,#0x16]
	ldrh R1, [R7,#0x14]
	bl sub_8021D14
	ldrb R0, [R4,#9]
	mov R1, #4
	tst R0, R1
	beq locret_802DF8A
	ldrb R0, [R5,#0x16]
	mov R1, #6
	mov R2, #1
	bl sub_800AB46
locret_802DF8A:
	pop {r4,r7,pc}
	push {r7,lr}
	push {r1,r2}
	ldr R7, [R5,#0x58]
	add R7, #0xA0
	strh R0, [R7,#0x14]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r1,r2}
	strh R1, [R7,#8]
	strh R2, [R7,#6]
	ldrb R1, [R0,#0xA]
	strh R1, [R7,#0xA]
	ldrh R1, [R0,#4]
	strh R1, [R7,#2]
	ldr R1, [R0,#0x10]
	str R1, [R7,#0xC]
	ldrb R1, [R0,#0xC]
	strb R1, [R7,#3]
	ldrb R1, [R0,#0x14]
	strb R1, [R7,#5]
	mov R1, #0
	strh R1, [R7]
	strb R1, [R7,#4]
	ldrb R0, [R0,#0xB]
	bl sub_8011680
	mov r0, #0x40 
	bl sub_801DACC
	pop {r7,pc}
.func
.thumb_func
sub_802DFC8:
	push {r4,lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r4, r0, #0
	mov R1, #0xE8
	// size
	add r1, r1, r1
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_800A8F8
	beq locret_802DFFA
	mov R0, #1
	strb R0, [R4]
	mov R0, #0xFF
	strb R0, [R4,#0xB]
	mov R0, #1
	strb R0, [R4,#0x10]
	ldrb R0, [R5,#0x12]
	strb R0, [R4,#0x11]
	mov R0, #3
	strb R0, [R4,#0xE]
	ldrb R0, [R5,#0x16]
	bl sub_802E07C
locret_802DFFA:
	pop {r4,pc}
.endfunc // sub_802DFC8

.func
.thumb_func
sub_802DFFC:
	push {r4,lr}
	// memBlock
	ldr R0, off_802E208 // =unk_2036120 
	mov R1, #0xE8
	lsl r1, r1, #2
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R0, off_802E20C // =eBattleObjectPlayerFlags 
	ldr R1, off_802E210 // =unk_20362F0 
	str R0, [R1,#0x44] // (dword_2036334 - 0x20362F0)
	bl sub_802E544
	pop {r4,pc}
.endfunc // sub_802DFFC

.func
.thumb_func
sub_802E014:
	push {r4,lr}
	// memBlock
	ldr R0, off_802E214 // =unk_2036120 
	// size
	mov r1, #0x60 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	ldr R0, off_802E218 // =unk_20362F0 
	// size
	mov r1, #0x60 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldr R0, off_802E21C // =eBattleObjectPlayerFlags 
	ldr R1, off_802E220 // =unk_20362F0 
	str R0, [R1,#0x44] // (dword_2036334 - 0x20362F0)
	bl sub_802E544
	pop {r4,pc}
.endfunc // sub_802E014

.func
.thumb_func
sub_802E032:
	push {lr}
	push {r1}
	bl sub_802E070
	pop {r1}
	add r2, r0, #0
	ldrh R0, [R2,#0x28]
	add r0, r0, r1
	ldr R1, dword_802E224 // =0x4000 
	cmp R0, R1
	ble loc_802E04A
	add r0, r1, #0
loc_802E04A:
	strh R0, [R2,#0x28]
	pop {pc}
.endfunc // sub_802E032

.func
.thumb_func
sub_802E04E:
	push {lr}
	push {r1}
	bl sub_802E070
	pop {r1}
	add r2, r0, #0
	ldrh R0, [R2,#0x28]
	sub r0, r0, r1
	bge loc_802E062
	mov R0, #0
loc_802E062:
	strh R0, [R2,#0x28]
	pop {pc}
.endfunc // sub_802E04E

.func
.thumb_func
sub_802E066:
	push {lr}
	bl sub_802E070
	ldrh R0, [R0,#0x28]
	pop {pc}
.endfunc // sub_802E066

.func
.thumb_func
sub_802E070:
	mov R1, #0xE8
	add r1, r1, r1
	mul R0, R1
	ldr R1, off_802E228 // =unk_2036120 
	add r0, r0, r1
	mov PC, LR
.endfunc // sub_802E070

.func
.thumb_func
sub_802E07C:
	push {lr}
	bl sub_802E070
	mov R1, #0
	strb R1, [R0,#3]
	strh R1, [R0,#0x2A]
	mov r2, #0x50 
	strb R1, [R0,R2]
	mvn R1, R1
	str R1, [R0,#0x18]
	str R1, [R0,#0x1C]
	str R1, [R0,#0x20]
	mov R1, #0xB4
	strb R1, [R0,#2]
	pop {pc}
.endfunc // sub_802E07C

.func
.thumb_func
sub_802E09A:
	push {lr}
	bl battle_getFlags
	mov r1, #0x40 
	and R0, R1
	pop {pc}
.endfunc // sub_802E09A

	push {lr}
	bl sub_8001532
	mov R4, #7
	and R4, R0
	mov r1, #0x29 
	bl sub_8013774
	ldr R1, off_802E0C0 // =dword_802E0C4 
	ldrb R0, [R1,R0]
	add r0, r0, r4
	pop {pc}
	.byte 0, 0
off_802E0C0: .word dword_802E0C4
dword_802E0C4: .word 0xA1E050C, 0x3140F05, 0xA1E1E14, 0x28, 0x6DAFB580
	.word 0xB40737A0, 0xF7E52129, 0x1C03FB49, 0x75B8BC07, 0x833A75F9
	.word 0x70F82002, 0xF7E32010, 0xF0BCFACD, 0xBD80FFA9, 0x75F975B8
	.word 0x2002833A, 0x203F70F8, 0xFAC2F7E3, 0xF892F0BD
	pop {r7,pc}
.func
.thumb_func
sub_802E112:
	push {lr}
	bl sub_802D234
	cmp R0, #1
	beq locret_802E154
	cmp R0, #7
	beq locret_802E154
	cmp R0, #9
	beq locret_802E154
	cmp R0, #6
	beq locret_802E154
	bl get_802D246 // () -> int
	ldr R1, dword_802E22C // =0x200000 
	tst R0, R1
	bne locret_802E154
	bl sub_803F524
	cmp R0, #0
	bne loc_802E14E
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	beq locret_802E154
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x22 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_802E154
loc_802E14E:
	mov r0, #0x40 
	bl battle_setFlags
locret_802E154:
	pop {pc}
.endfunc // sub_802E112

.func
.thumb_func
sub_802E156:
	push {r4,lr}
	bl sub_802E09A
	beq locret_802E170
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	bl sub_802E070
	add r4, r0, #0
	ldrh R0, [R0,#0x28]
	bl sub_801DFA2
locret_802E170:
	pop {r4,pc}
	.balign 4, 0x00
	.word byte_802E180
	.word byte_802E187
	.word byte_802E1A2
byte_802E180: .byte 0xD, 0x2, 0x25, 0x30, 0x34
	.byte 0x78, 0x0
byte_802E187: .byte 0x19, 0x2, 0x25, 0x30, 0x34, 0x78, 0xA, 0x25, 0x30, 0x34
	.byte 0x78, 0xA, 0x25, 0x30, 0x34, 0x78, 0xA, 0x25, 0x30, 0x34
	.byte 0x78, 0xA, 0x25, 0x30, 0x34, 0x78, 0x0
byte_802E1A2: .byte 0x14, 0x8, 0x25, 0x30, 0x32, 0x78, 0x2C, 0x25, 0x30
	.byte 0x32, 0x78, 0x2C, 0x25, 0x30, 0x34, 0x78, 0x0, 0x0
.endfunc // sub_802E156

.func
.thumb_func
sub_802E1B4:
	ldr R2, off_802E230 // =0x139 
	cmp R0, R2
	ble locret_802E1BC
	mov R0, #0
locret_802E1BC:
	mov PC, LR
.endfunc // sub_802E1B4

.func
.thumb_func
sub_802E1BE:
	push {r7,lr}
	ldr R7, off_802E234 // =0x1E0 
	bl sub_800A8F8
	tst R0, R0
	beq loc_802E1CC
	ldr R7, off_802E238 // =0x168 
loc_802E1CC:
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	strb R4, [R0,#0xB]
	strh R7, [R0,#0x2E]
	pop {r7,pc}
.endfunc // sub_802E1BE

.func
.thumb_func
sub_802E1D8:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	ldrh R1, [R0,#0x30]
	cmp R1, #0
	beq locret_802E1EA
	sub R1, #1
	strh R1, [R0,#0x30]
locret_802E1EA:
	pop {pc}
.endfunc // sub_802E1D8

.func
.thumb_func
sub_802E1EC:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	mov R1, #0
	mov r2, #0x40 
	strb R1, [R0,R2]
	mov r2, #0x41 
	strb R1, [R0,R2]
	ldr R0, dword_802E23C // =0x1F00000 
	bl sub_800FFEE
	pop {pc}
	.balign 4, 0x00
off_802E208: .word unk_2036120
off_802E20C: .word eBattleObjectPlayerFlags
off_802E210: .word unk_20362F0
off_802E214: .word unk_2036120
off_802E218: .word unk_20362F0
off_802E21C: .word eBattleObjectPlayerFlags
off_802E220: .word unk_20362F0
dword_802E224: .word 0x4000
off_802E228: .word unk_2036120
dword_802E22C: .word 0x200000
off_802E230: .word 0x139
off_802E234: .word 0x1E0
off_802E238: .word 0x168
dword_802E23C: .word 0x1F00000
.endfunc // sub_802E1EC

.func
.thumb_func
sub_802E240:
	push {lr}
	lsl r0, r0, #2
	ldr R1, off_802E25C // =off_802E260 
	// src
	ldr R0, [R1,R0]
	// dest
	ldr R1, off_802E280 // =unk_2008170 
	// halfwordCount
	mov r2, #0x3c 
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {pc}
.endfunc // sub_802E240

	lsl r0, r0, #2
	ldr R1, off_802E25C // =off_802E260 
	ldr R0, [R1,R0]
	mov PC, LR
	.balign 4, 0x00
off_802E25C: .word off_802E260
off_802E260: .word byte_802167C
	.word byte_8021820
	.word byte_802185C
	.word byte_8021898
	.word byte_80218D4
	.word byte_8021910
	.word byte_802194C
	.word byte_8021988
off_802E280: .word unk_2008170
	lsl r0, r0, #2
	ldr R1, off_802E28C // =off_802E290 
	ldr R0, [R1,R0]
	mov PC, LR
off_802E28C: .word off_802E290
off_802E290: .word byte_802167C
	.word byte_80216B8
	.word byte_80216F4
	.word byte_8021730
	.word byte_802176C
	.word byte_80217A8
	.word byte_80217E4
	.word byte_8021820
	.word byte_802185C
	.word byte_8021898
	.word byte_80218D4
	.word byte_8021910
	.word byte_802194C
.func
.thumb_func
sub_802E2C4:
	push {R4-R7,lr}
	sub sp, sp, #4
	add r6, r0, #0
	bl sub_802E070
	add r7, r0, #0
	ldrb R0, [R7]
	tst R0, R0
	bne loc_802E2D8
	b loc_802E40A
loc_802E2D8:
	add r0, r6, #0
	bl sub_802E558
	str R1, [SP]
	ldr R1, dword_802E428 // =0x1FF 
	and R0, R1
	strh R0, [R7,#0x24]
	bl battle_isPaused
	tst R0, R0
	beq loc_802E2F0
	b loc_802E406
loc_802E2F0:
	bl battle_isTimeStop
	beq loc_802E2F8
	b loc_802E406
loc_802E2F8:
	add r0, r6, #0
	bl sub_802E69C
	add r1, r0, #0
	add r0, r6, #0
	bl sub_802E032
	bl battle_isBattleOver
	tst R0, R0
	beq loc_802E310
	b loc_802E406
loc_802E310:
	mov R4, #1
	mov r0, #0x50 
	ldrb R0, [R7,R0]
	tst R0, R0
	bne loc_802E31C
	mov R4, #0
loc_802E31C:
	ldrh R0, [R7,#0x24]
	tst R0, R0
	bne loc_802E324
	b loc_802E406
loc_802E324:
	ldrh R1, [R7,#0x26]
	cmp R0, R1
	bne loc_802E32C
	b loc_802E406
loc_802E32C:
	// idx
	ldrh R0, [R7,#0x24]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r5, r0, #0
	tst R4, R4
	bne loc_802E396
	ldrb R0, [R5,#9]
	mov r1, #0x20 
	tst R0, R1
	beq loc_802E344
	mov R0, #1
	b loc_802E346
loc_802E344:
	ldrb R0, [R5,#7]
loc_802E346:
	add r0, r0, r0
	ldr R1, off_802E414 // =byte_802E430 
	ldrh R2, [R1,R0]
	ldrh R1, [R7,#0x28]
	cmp R1, R2
	blt loc_802E37A
	ldr R0, [SP]
	cmp R0, #0
	bne loc_802E366
	add r0, r6, #0
	ldrh R1, [R7,#0x24]
	bl sub_802E82A
	cmp R0, #0xFF
	bne loc_802E366
	b loc_802E37A
loc_802E366:
	ldrh R1, [R7,#0x24]
	add r0, r6, #0
	ldr R2, [SP]
	bl sub_802E62A
	tst R0, R0
	beq loc_802E37A
	b loc_802E406
	mov R1, #0
	b loc_802E37C
loc_802E37A:
	mov R1, #1
loc_802E37C:
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R0, [R0,#0xD]
	cmp R0, R6
	bne loc_802E406
	tst R1, R1
	beq loc_802E390
	mov r0, #0x69 
	bl sound_play // () -> void
loc_802E390:
	bl sub_801EC44
	b loc_802E406
loc_802E396:
	ldrh R0, [R7,#0x28]
	ldr R1, off_802E418 // =0x1500 
	cmp R0, R1
	blt loc_802E37A
	ldr R2, [SP]
	cmp R2, #0
	bne loc_802E3C2
	add r0, r6, #0
	ldrh R1, [R7,#0x24]
	bl sub_802E830
	cmp R0, #0xFF
	beq loc_802E406
	push {r0}
	add r0, r6, #0
	bl battle_networkInvert
	tst R0, R0
	pop {r0}
	bne loc_802E3C2
	bl sub_801E2BA
loc_802E3C2:
	ldrh R1, [R7,#0x24]
	add r0, r6, #0
	ldr R2, [SP]
	bl sub_802E5FC
	push {r4}
	add r0, r6, #0
	bl battle_networkInvert
	add r1, r0, #0
	mov R0, #0x18
	add r0, r0, r7
	add r4, r6, #0
	bl sub_8029514
	pop {r4}
	strh R0, [R7,#0x2A]
	strb R1, [R7,#4]
	strb R2, [R7,#5]
	tst R0, R0
	beq loc_802E402
	add r0, r6, #0
	ldrh R1, [R7,#0x2A]
	ldr R2, [SP]
	bl sub_802E62A
	add r0, r6, #0
	bl sub_802E07C
	mov R0, #0
	strh R0, [R7,#0x28]
	b loc_802E406
loc_802E402:
	mov R0, #0xB4
	strb R0, [R7,#2]
loc_802E406:
	ldrh R0, [R7,#0x24]
	strh R0, [R7,#0x26]
loc_802E40A:
	add r0, r6, #0
	bl sub_802E790
	add sp, sp, #4
	pop {R4-R7,pc}
off_802E414: .word byte_802E430
off_802E418: .word 0x1500
	.word byte_802E43A
	.word 0x4
	.word 0x8
dword_802E428: .word 0x1FF
	.word unk_200F3C4
byte_802E430: .byte 0x0, 0x15, 0x0, 0x2A, 0x0
	.byte 0x40, 0xFF, 0xFF, 0xFF, 0xFF
byte_802E43A: .byte 0x1, 0x1, 0x1, 0x0, 0x0
	.byte 0x0
.endfunc // sub_802E2C4

.func
.thumb_func
sub_802E440:
	push {lr}
	bl sub_802E490
	ldrh R0, [R0]
	pop {pc}
.endfunc // sub_802E440

.func
.thumb_func
sub_802E44A:
	push {lr}
	bl sub_802E490
	ldrh R0, [R0,#2]
	pop {pc}
.endfunc // sub_802E44A

.func
.thumb_func
sub_802E454:
	push {lr}
	bl sub_802E490
	ldrh R0, [R0,#4]
	pop {pc}
.endfunc // sub_802E454

.func
.thumb_func
sub_802E45E:
	push {r4,r5,lr}
	add r4, r1, #0
	bl sub_802E490
	add r5, r0, #0
	add R0, #6
	mov r1, #0x3c 
	ldr R2, dword_802E48C // =0xFFFF 
	bl sub_800096C
	ldrh R0, [R4]
	strh R0, [R5]
	ldrh R0, [R4,#2]
	strh R0, [R5,#2]
	ldrh R0, [R4,#4]
	strh R0, [R5,#4]
	// src
	add r0, r4, #6
	// dest
	add r1, r5, #6
	// halfwordCount
	mov r2, #0x36 
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r4,r5,pc}
	.balign 4, 0x00
dword_802E48C: .word 0xFFFF
.endfunc // sub_802E45E

.func
.thumb_func
sub_802E490:
	mov r1, #0x42 
	mul R0, R1
	ldr R1, off_802E49C // =byte_203CA80 
	add r0, r0, r1
	mov PC, LR
	.balign 4, 0x00
off_802E49C: .word byte_203CA80
.endfunc // sub_802E490

	push {r6,lr}
	ldr R1, [R5,#0x58]
	mov R0, #0
	strb R0, [R1,#0x1E]
	bl sub_8012EA8
	ldr R0, dword_802E4B4 // =0x40000 
	bl sub_800FFEE
	pop {r6,pc}
dword_802E4B4: .word 0x40000
.func
.thumb_func
sub_802E4B8:
	push {r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r7, r0, #0
	mov r0, #0x50 
	ldrb R0, [R7,R0]
	tst R0, R0
	beq loc_802E4CE
	mov R0, #9
	pop {r7,pc}
loc_802E4CE:
	mov r1, #0x54 
	ldrb R0, [R7,R1]
	tst R0, R0
	beq loc_802E4DA
	mov R0, #0xD
	pop {r7,pc}
loc_802E4DA:
	mov R0, #1
	pop {r7,pc}
	.byte 0, 0
	.byte  0
	.byte 0xA0
	.byte  0
	.byte  0
.endfunc // sub_802E4B8

.func
.thumb_func
sub_802E4E4:
	push {r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r7, r0, #0
	bl sub_800FFFE
	ldr R1, off_802E534 // =timer_2000000 
	tst R0, R1
	beq loc_802E508
	add r0, r1, #0
	bl sub_800FFEE
	mov R0, #1
	mov r1, #0x50 
	strb R0, [R7,R1]
	bl sub_802E1EC
loc_802E508:
	bl sub_800FFFE
	ldr R1, dword_802E538 // =0x20000000 
	tst R0, R1
	beq locret_802E530
	add r0, r1, #0
	bl sub_800FFEE
	mov R0, #1
	mov r1, #0x54 
	strb R0, [R7,R1]
	bl sub_802E1EC
	ldr R0, off_802E53C // =0x1E0 
	strh R0, [R7,#0x30]
	ldr R0, dword_802E540 // =0xFFFF 
	bl object_setInvulnerableTime
	bl sub_802D310
locret_802E530:
	pop {r7,pc}
	.byte  0
	.byte  0
off_802E534: .word timer_2000000
dword_802E538: .word 0x20000000
off_802E53C: .word 0x1E0
dword_802E540: .word 0xFFFF
.endfunc // sub_802E4E4

.func
.thumb_func
sub_802E544:
	push {lr}
	ldr R0, off_802E554 // =unk_20000A0 
	mov r1, #0x71 
	add R1, #0xFF
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {pc}
	.balign 4, 0x00
off_802E554: .word unk_20000A0
.endfunc // sub_802E544

.func
.thumb_func
sub_802E558:
	push {r4,r6,r7,lr}
	add r6, r0, #0
	bl sub_802E070
	ldrh R0, [R7,#0x2C]
	ldr R1, dword_802E584 // =0xFFFF 
	cmp R0, R1
	beq loc_802E574
	bl sub_802E1B4
	tst R0, R0
	beq loc_802E574
	mov R1, #0
	pop {r4,r6,r7,pc}
loc_802E574:
	mov r1, #0x4c 
	ldrb R0, [R7,R1]
	tst R0, R0
	bne loc_802E57C
loc_802E57C:
	mov R0, #0
	pop {r4,r6,r7,pc}
.endfunc // sub_802E558

	mov R0, #0
	pop {r4,r6,r7,pc}
dword_802E584: .word 0xFFFF
	push {R4-R7,lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	bl sub_8010018
	add r7, r0, #0
	ldr R0, [SP]
	bl sub_802E070
	add r6, r0, #0
	ldr R0, [SP,#4]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r4, r0, #0
	ldrb R0, [R7,#1]
	cmp R0, #5
	bge loc_802E5CA
	add r0, r0, r0
	add R0, #2
	add r5, r7, r0
	ldr R0, [SP,#4]
	strh R0, [R5]
	ldrh R1, [R4,#0x1A]
	strh R1, [R5,#0xC]
	mov R0, #0
	strh R0, [R5,#0x18]
	strh R0, [R5,#0x24]
	ldrb R0, [R7,#1]
	add R0, #1
	strb R0, [R7,#1]
	b loc_802E5CE
loc_802E5CA:
	mov R0, #0
	b loc_802E5F4
loc_802E5CE:
	ldr R0, [SP]
	ldr R1, [SP,#8]
	bl sub_802E674
	ldr R0, [SP]
	tst R0, R0
	bne loc_802E5F2
	ldr R0, [SP,#8]
	cmp R0, #0
	bne loc_802E5F2
	ldr R0, off_802E5F8 // =0x2020 
	ldr R1, [SP,#4]
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	bl sub_80070BC
loc_802E5F2:
	mov R0, #1
loc_802E5F4:
	add sp, sp, #0xc
	pop {R4-R7,pc}
off_802E5F8: .word 0x2020
.func
.thumb_func
sub_802E5FC:
	push {R4-R6,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_802E070
	ldrb R1, [R0,#3]
	cmp R1, #5
	bge loc_802E626
	add r1, r1, r1
	add R1, #0x18
	strh R5, [R0,R1]
	ldrb R1, [R0,#3]
	add R1, #1
	strb R1, [R0,#3]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_802E674
	mov R0, #1
	b locret_802E628
loc_802E626:
	mov R0, #0
locret_802E628:
	pop {R4-R6,pc}
.endfunc // sub_802E5FC

.func
.thumb_func
sub_802E62A:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	ldr R0, [SP]
	bl sub_802E070
	ldr R1, [SP,#4]
	strh R1, [R0,#0x34]
	ldr R0, [SP]
	tst R0, R0
	bne loc_802E65A
	ldr R0, [SP,#8]
	cmp R0, #0
	bne loc_802E65A
	ldr R0, off_802E670 // =0x2020 
	ldr R1, [SP,#4]
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	bl sub_80070BC
loc_802E65A:
	ldr R0, [SP]
	bl sub_80103BC
	add r5, r0, #0
	ldr R0, dword_802E944 // =0x10000 
	bl sub_800FFE4
	mov R0, #1
	add sp, sp, #0xc
	pop {R4-R7,pc}
	.byte 0, 0
off_802E670: .word 0x2020
.endfunc // sub_802E62A

.func
.thumb_func
sub_802E674:
	push {r7,lr}
	add r7, r1, #0
	tst R1, R1
	beq locret_802E696
	bl sub_802E490
	ldr R2, dword_802E698 // =0xFFFF 
	sub R7, #1
	add r7, r7, r7
	add R7, #0
	ldrh R1, [R0,#6]
	strh R1, [R0,R7]
	strh R2, [R0,#6]
	add R0, #6
	mov R1, #0x1E
	bl sub_8000EB6
locret_802E696:
	pop {r7,pc}
dword_802E698: .word 0xFFFF
.endfunc // sub_802E674

.func
.thumb_func
sub_802E69C:
	push {lr}
	mov r0, #0x50 
	ldrb R0, [R7,R0]
	tst R0, R0
	bne locret_802E6D4
	ldrb R1, [R7,#6]
	cmp R1, #1
	beq locret_802E6D4
	ldrh R0, [R7,#0x28]
	ldr R1, off_802E6D8 // =word_802E6DC 
	mov R3, #0
loc_802E6B2:
	ldrh R2, [R1]
	cmp R0, R2
	blt loc_802E6C0
	add R1, #4
	add R3, #1
	cmp R3, #3
	blt loc_802E6B2
loc_802E6C0:
	ldrh R0, [R1,#2]
	ldrh R1, [R7,#0x3A]
	tst R1, R1
	beq loc_802E6CA
	add r0, r0, r0
loc_802E6CA:
	ldrh R1, [R7,#0x3C]
	tst R1, R1
	beq locret_802E6D4
	add R0, #1
	lsr r0, r0, #1
locret_802E6D4:
	pop {pc}
	.balign 4, 0x00
off_802E6D8: .word word_802E6DC
word_802E6DC: .hword 0x1500
word_802E6DE: .hword 0x19
	.byte  0
	.byte 0x29 
	.byte 0x19
	.byte  0
	.byte  0
	.byte 0x40 
	.byte 0xC
	.byte  0
	.byte  0
	.byte 0x40 
	.byte 0xC
	.byte  0
.endfunc // sub_802E69C

.func
.thumb_func
sub_802E6EC:
	push {R5-R7,lr}
	sub sp, sp, #0x3c
	bl sub_802E490
	add r7, r0, #0
	add r0, sp, #0
	mov r1, #0x3c 
	ldr R2, dword_802E948 // =0xFFFF 
	bl sub_800096C
	add r6, sp, #0
	ldr R2, dword_802E948 // =0xFFFF 
	mov R3, #0
	ldrh R0, [R7]
	cmp R0, R2
	beq loc_802E712
	add r1, r3, r3
	strh R0, [R6,R1]
	add R3, #1
loc_802E712:
	ldrh R0, [R7,#2]
	cmp R0, R2
	beq loc_802E71E
	add r1, r3, r3
	strh R0, [R6,R1]
	add R3, #1
loc_802E71E:
	ldrh R0, [R7,#4]
	cmp R0, R2
	beq loc_802E72A
	add r1, r3, r3
	strh R0, [R6,R1]
	add R3, #1
loc_802E72A:
	add r5, r7, #6
loc_802E72C:
	ldrh R0, [R5]
	cmp R0, R2
	beq loc_802E73C
	add r1, r3, r3
	strh R0, [R6,R1]
	add R3, #1
	add R5, #2
	b loc_802E72C
loc_802E73C:
	tst R3, R3
	beq loc_802E78C
	add r0, sp, #0
	add r1, r3, #0
	add r2, r3, #0
	push {r3}
	bl sub_8000CDA
	pop {r3}
	add r6, sp, #0
	ldr R2, dword_802E948 // =0xFFFF 
	ldrh R0, [R7]
	cmp R0, R2
	beq loc_802E760
	ldrh R0, [R6]
	strh R0, [R7]
	add R6, #2
	sub R3, #1
loc_802E760:
	ldrh R0, [R7,#2]
	cmp R0, R2
	beq loc_802E76E
	ldrh R0, [R6]
	strh R0, [R7,#2]
	add R6, #2
	sub R3, #1
loc_802E76E:
	ldrh R0, [R7,#4]
	cmp R0, R2
	beq loc_802E77C
	ldrh R0, [R6]
	strh R0, [R7,#4]
	add R6, #2
	sub R3, #1
loc_802E77C:
	add r5, r7, #6
loc_802E77E:
	ldrh R0, [R6]
	sub R3, #1
	blt loc_802E78C
	strh R0, [R5]
	add R5, #2
	add R6, #2
	b loc_802E77E
loc_802E78C:
	add sp, sp, #0x3c
	pop {R5-R7,pc}
.endfunc // sub_802E6EC

.func
.thumb_func
sub_802E790:
	push {r6,r7,lr}
	add r6, r0, #0
	bl sub_802E070
	add r7, r0, #0
	bl battle_isBattleOver
	tst R0, R0
	bne locret_802E828
	mov r1, #0x4c 
	ldrb R0, [R7,R1]
	tst R0, R0
	beq locret_802E828
	mov r1, #0x4d 
	ldrb R0, [R7,R1]
	tst R0, R0
	bne loc_802E7E2
	add r0, r6, #0
	bl battle_networkInvert
	tst R0, R0
	bne loc_802E7C8
	ldr R0, dword_802E94C // =0x80000 
	bl sub_801BED6
	ldr R0, dword_802E94C // =0x80000 
	bl sub_801BEC2
loc_802E7C8:
	add r0, r6, #0
	bl battle_networkInvert
	tst R0, R0
	bne loc_802E7D6
	bl sub_801E408
loc_802E7D6:
	mov r0, #0x32 
	mov r1, #0x4e 
	strb R0, [R7,R1]
	mov R0, #1
	mov r1, #0x4d 
	strb R0, [R7,R1]
loc_802E7E2:
	mov r1, #0x4e 
	ldrb R0, [R7,R1]
	sub R0, #1
	strb R0, [R7,R1]
	blt loc_802E80C
	mov R1, #0xA
	svc 6
	cmp R1, #9
	bne locret_802E828
	add r0, r6, #0
	bl sub_802E6EC
	add r0, r6, #0
	bl battle_networkInvert
	tst R0, R0
	bne locret_802E80A
	mov R0, #0x80
	bl sound_play // () -> void
locret_802E80A:
	pop {r6,r7,pc}
loc_802E80C:
	add r0, r6, #0
	bl battle_networkInvert
	tst R0, R0
	bne loc_802E822
	ldr R0, dword_802E94C // =0x80000 
	bl sub_801BECC
	ldr R0, dword_802E94C // =0x80000 
	bl sub_801BEB8
loc_802E822:
	mov R0, #0
	mov r1, #0x4c 
	strb R0, [R7,R1]
locret_802E828:
	pop {r6,r7,pc}
.endfunc // sub_802E790

.func
.thumb_func
sub_802E82A:
	push {R4-R7,lr}
	mov R7, #0
	b loc_802E834
.endfunc // sub_802E82A

.func
.thumb_func
sub_802E830:
	push {R4-R7,lr}
	mov R7, #1
loc_802E834:
	add r4, r0, #0
	add r5, r1, #0
	// idx
	add r0, r1, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r6, r0, #0
	add r0, r4, #0
	bl sub_802E070
	add r0, #0x60 
	ldrb R2, [R0,R5]
	ldrb R1, [R6,#0x1E]
	cmp R2, R1
	bge loc_802E85C
	add R2, #1
	cmp R7, #0
	beq loc_802E858
	strb R2, [R0,R5]
loc_802E858:
	sub r0, r1, r2
	pop {R4-R7,pc}
loc_802E85C:
	mov R0, #0xFF
	pop {R4-R7,pc}
.endfunc // sub_802E830

	push {lr}
	bl sub_802E070
	mov r1, #0x4c 
	ldrb R0, [R0,R1]
	pop {pc}
	push {r4,r5,lr}
	ldr R5, dword_802E948 // =0xFFFF 
	add r4, r0, #0
	bl sub_802E440
	cmp R0, R5
	bne loc_802E892
	add r0, r4, #0
	bl sub_802E44A
	cmp R0, R5
	bne loc_802E892
	add r0, r4, #0
	bl sub_802E454
	cmp R0, R5
	bne loc_802E892
	mov R0, #0
	pop {r4,r5,pc}
loc_802E892:
	mov R0, #1
	pop {r4,r5,pc}
	push {lr}
	ldr R0, off_802E950 // =unk_2000370 
	mov r1, #0x71 
	add R1, #0xFF
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {pc}
	push {r6,r7,lr}
	ldr R2, off_802E954 // =0x170 
	mul R2, R0
	ldr R0, off_802E958 // =unk_203A0A0 
	add r0, r0, r2
	ldr R6, dword_802E948 // =0xFFFF 
	mov R7, #0
	mov R2, #0
loc_802E8B4:
	ldrb R1, [R0,R2]
	tst R1, R1
	beq loc_802E8D2
	cmp R1, R7
	blt loc_802E8D2
	bgt loc_802E8CE
	push {R0-R2}
	bl rng_800154C // () -> void
	lsr r3, r0, #0x1c
	lsr R0, R3
	pop {R0-R2}
	bcc loc_802E8D2
loc_802E8CE:
	add r6, r2, #0
	add r7, r1, #0
loc_802E8D2:
	add R2, #1
	ldr R3, off_802E954 // =0x170 
	cmp R2, R3
	blt loc_802E8B4
	add r0, r6, #0
	pop {r6,r7,pc}
	push {r4,r5,lr}
	mov R4, #0
	mov R5, #0
	bl sub_802E490
	ldr R2, dword_802E948 // =0xFFFF 
loc_802E8EA:
	ldrh R1, [R0]
	cmp R1, R2
	beq loc_802E8F2
	add R4, #1
loc_802E8F2:
	add R0, #2
	add R5, #1
	cmp r5, #0x21 
	blt loc_802E8EA
	add r0, r4, #0
	pop {r4,r5,pc}
	push {R4-R7,lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r0, r2, #0
	bl sub_800E2C2
	add r4, r0, #0
loc_802E90E:
	add r6, r6, r4
	add r0, r6, #0
	add r1, r7, #0
	bl object_isValidPanel
	beq loc_802E92E
	add r0, r6, #0
	add r1, r7, #0
	bl object_getPanelParameters
	lsl r1, r5, #2
	ldr R2, off_802E938 // =off_802E93C 
	ldr R1, [R2,R1]
	tst R0, R1
	bne loc_802E932
	b loc_802E90E
loc_802E92E:
	mov R0, #0
	pop {R4-R7,pc}
loc_802E932:
	mov R0, #1
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802E938: .word off_802E93C
off_802E93C: .word LCDControl
	.word start_
dword_802E944: .word 0x10000
dword_802E948: .word 0xFFFF
dword_802E94C: .word 0x80000
off_802E950: .word unk_2000370
off_802E954: .word 0x170
off_802E958: .word unk_203A0A0
.func
.thumb_func
sub_802E95C:
	push {r4,r6,r7,lr}
	add r7, r0, #0
	mov r1, #0x29 
	bl sub_8013774
	add r4, r0, #0
	ldr R6, [R5,#0x58]
	add R6, #0xA0
	bl sub_800A8F8
	tst R0, R0
	bne loc_802E978
	ldr R1, off_802E9D4 // =off_802E9D8 
	b loc_802E97A
loc_802E978:
	ldr R1, off_802EA04 // =off_802EA08 
loc_802E97A:
	lsl r0, r7, #2
	ldr R1, [R1,R0]
	lsl r0, r4, #2
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	push {r0}
	push {r0}
	mov r1, #0x3c 
	bl sub_8013774
	ldr R2, off_802E9E4 // =off_802E9E8 
	lsl r1, r7, #2
	ldr R2, [R1,R2]
	add r1, r4, r4
	ldrh R1, [R2,R1]
	pop {r2}
	cmp R2, #2
	bne loc_802E9A8
	tst R0, R0
	beq loc_802E9AA
	mov R1, #0xA
	b loc_802E9AA
loc_802E9A8:
	lsl R1, R0
loc_802E9AA:
	strh R1, [R6,#8]
	ldr R2, off_802E9F4 // =off_802E9F8 
	lsl r1, r7, #2
	ldr R2, [R1,R2]
	ldrb R1, [R2,R4]
	mov R0, #0x80
	tst R1, R0
	bne loc_802E9C4
	lsl r1, r1, #8
	ldrb R0, [R5,#0x16]
	bl sub_802E032
	b loc_802E9D0
loc_802E9C4:
	mov R0, #0x7F
	and R1, R0
	lsl r1, r1, #8
	ldrb R0, [R5,#0x16]
	bl sub_802E04E
loc_802E9D0:
	pop {r0}
	pop {r4,r6,r7,pc}
off_802E9D4: .word off_802E9D8
off_802E9D8: .word off_802EA14
	.word off_802EA7C
	.word off_802EAB0
off_802E9E4: .word off_802E9E8
off_802E9E8: .word byte_802EAE4
	.word byte_802EAFE
	.word byte_802EB18
off_802E9F4: .word off_802E9F8
off_802E9F8: .word byte_802EB32
	.word byte_802EB3F
	.word byte_802EB4C
off_802EA04: .word off_802EA08
off_802EA08: .word off_802EA48
	.word off_802EA7C
	.word off_802EAB0
off_802EA14: .word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
off_802EA48: .word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
	.word sub_802EB5C+1
off_802EA7C: .word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EBA8+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
	.word sub_802EB60+1
off_802EAB0: .word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
	.word sub_802EB80+1
byte_802EAE4: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802EAFE: .byte 0x1, 0x0, 0x1, 0x0, 0x3, 0x0, 0x2, 0x0, 0x1, 0x0, 0x2, 0x0, 0x2, 0x0, 0x0, 0x0, 0x1
	.byte 0x0, 0x3, 0x0, 0x2, 0x0, 0x1, 0x0, 0x3, 0x0
byte_802EB18: .byte 0x0, 0x0, 0x5, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x2, 0x0, 0xA, 0x0, 0xA, 0x0, 0xA
	.byte 0x0, 0x0, 0x0, 0xA, 0x0, 0xA, 0x0, 0x5, 0x0, 0xA, 0x0
byte_802EB32: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802EB3F: .byte 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x85, 0x2, 0x2, 0x2, 0x2, 0x2
byte_802EB4C: .byte 0x85, 0xA, 0xA, 0x0, 0xA, 0xA, 0xA, 0x5, 0x85, 0xA, 0xA
	.byte 0xA, 0xA, 0x0, 0x0, 0x0
.endfunc // sub_802E95C

.func
.thumb_func
sub_802EB5C:
	mov R0, #0
	mov PC, LR
.endfunc // sub_802EB5C

.func
.thumb_func
sub_802EB60:
	push {lr}
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #0
	strb R0, [R6,#3]
	strb R0, [R6,#4]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strb R0, [R6,#5]
	mov R0, #0
	str R0, [R6,#0xC]
	mov R0, #0x11
	bl sub_8011680
	mov R0, #2
	pop {pc}
.endfunc // sub_802EB60

.func
.thumb_func
sub_802EB80:
	push {lr}
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #3
	strb R0, [R6,#3]
	mov R0, #0
	strb R0, [R6,#4]
	strb R0, [R6,#5]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strh R0, [R6,#8]
	ldr R0, off_802EBA4 // =0x23C 
	str R0, [R6,#0xC]
	mov r0, #0x2b 
	bl sub_8011680
	mov R0, #1
	pop {pc}
off_802EBA4: .word 0x23C
.endfunc // sub_802EB80

.func
.thumb_func
sub_802EBA8:
	push {lr}
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #3
	strb R0, [R6,#3]
	mov R0, #0
	strb R0, [R6,#4]
	strb R0, [R6,#5]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strh R0, [R6,#8]
	ldr R0, off_802EBCC // =0x13C 
	str R0, [R6,#0xC]
	mov r0, #0x2b 
	bl sub_8011680
	mov R0, #1
	pop {pc}
off_802EBCC: .word 0x13C
.endfunc // sub_802EBA8

.func
.thumb_func
sub_802EBD0:
	push {r6,lr}
	mov R1, #2
	mov R2, #4
	bl sub_8013754
	ldr R6, [R5,#0x58]
	add R6, #0xA0
	bl sub_802ECFE
	pop {r6,pc}
.endfunc // sub_802EBD0

.func
.thumb_func
sub_802EBE4:
	push {r6,lr}
	ldrb R0, [R5,#0x16]
	mov R1, #2
	bl sub_8013816
	add r2, r0, #0
	mov R1, #2
	bl sub_8013754
	ldr R6, [R5,#0x58]
	add R6, #0xA0
	bl sub_802ECFE
	pop {r6,pc}
.endfunc // sub_802EBE4

.func
.thumb_func
sub_802EC00:
	push {r4,r6,r7,lr}
	add r7, r0, #0
	mov r1, #0x29 
	bl sub_8013774
	add r4, r0, #0
	mov R2, #4
	mov R1, #2
	bl sub_8013754
	ldr R6, [R5,#0x58]
	add R6, #0xA0
	ldr R1, off_802EC28 // =off_802EC2C 
	lsl r0, r7, #2
	ldr R1, [R1,R0]
	lsl r0, r4, #2
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {r4,r6,r7,pc}
off_802EC28: .word off_802EC2C
off_802EC2C: .word off_802EC3C
	.word off_802EC6C
	.word off_802EC9C
	.word off_802ECCC
off_802EC3C: .word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
	.word sub_802ECFE+1
off_802EC6C: .word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
	.word sub_802EDBC+1
off_802EC9C: .word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
	.word sub_802ED8A+1
off_802ECCC: .word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
	.word sub_802EDE8+1
.endfunc // sub_802EC00

.func
.thumb_func
nullsub_34:
	mov PC, LR
.endfunc // nullsub_34

.func
.thumb_func
sub_802ECFE:
	push {lr}
	bl sub_8013D5E
	cmp R0, #0
	beq loc_802ED0E
	bl sub_802ED68
	pop {pc}
loc_802ED0E:
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #0
	strb R0, [R6,#3]
	strb R0, [R6,#4]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strb R0, [R6,#5]
	mov R0, #0
	str R0, [R6,#0xC]
	mov r1, #0x29 
	bl sub_8013774
	ldr R1, off_802ED4C // =byte_802ED5C 
	ldrb R0, [R1,R0]
	strh R0, [R6,#8]
	mov r1, #0x29 
	bl sub_8013774
	ldr R1, off_802ED48 // =byte_802ED50 
	ldrb R0, [R0,R1]
	bl sub_802EEA2
	mov R0, #0x11
	bl sub_8011680
	mov R0, #0
	mov R1, #0
	pop {pc}
off_802ED48: .word byte_802ED50
off_802ED4C: .word byte_802ED5C
byte_802ED50: .byte 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2
byte_802ED5C: .byte 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3
.endfunc // sub_802ECFE

.func
.thumb_func
sub_802ED68:
	push {lr}
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #0
	strb R0, [R6,#3]
	strb R0, [R6,#4]
	strb R0, [R6,#5]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strh R0, [R6,#8]
	str R0, [R6,#0xC]
	mov r0, #0x33 
	bl sub_8011680
	mov R0, #0
	mov R1, #0
	pop {pc}
.endfunc // sub_802ED68

.func
.thumb_func
sub_802ED8A:
	push {lr}
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #3
	strb R0, [R6,#3]
	mov R0, #0
	strb R0, [R6,#4]
	strb R0, [R6,#5]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strh R0, [R6,#8]
	ldr R0, off_802EDB8 // =0x23C 
	str R0, [R6,#0xC]
	mov R0, #0x8B
	bl sub_802EEA2
	mov r0, #0x2b 
	bl sub_8011680
	mov R0, #1
	mov R1, #0
	pop {pc}
	.balign 4, 0x00
off_802EDB8: .word 0x23C
.endfunc // sub_802ED8A

.func
.thumb_func
sub_802EDBC:
	push {lr}
	mov R0, #0
	strb R0, [R6,#2]
	mov R0, #0
	strb R0, [R6,#3]
	strb R0, [R6,#4]
	strh R0, [R6,#6]
	strh R0, [R6,#0xA]
	strb R0, [R6,#5]
	mov R0, #0
	str R0, [R6,#0xC]
	mov r0, #0x28 
	strh R0, [R6,#8]
	mov R0, #0xA
	bl sub_802EEA2
	mov R0, #0x16
	bl sub_8011680
	mov R0, #1
	mov R1, #0
	pop {pc}
.endfunc // sub_802EDBC

.func
.thumb_func
sub_802EDE8:
	push {lr}
	pop {pc}
.endfunc // sub_802EDE8

.func
.thumb_func
sub_802EDEC:
	push {lr}
	mov R0, #0x8C
	strh R0, [R6,#8]
	mov R0, #0x94
	strh R0, [R6,#0xA]
	mov R0, #0
	str R0, [R6,#0xC]
	mov R0, #1
	strb R0, [R6,#3]
	mov R0, #1
	strb R0, [R6,#4]
	mov R0, #0x13
	bl sub_8011680
	mov R0, #0x95
	bl sub_802EEA2
	mov R0, #1
	mov R1, #0
	pop {pc}
.endfunc // sub_802EDEC

.func
.thumb_func
sub_802EE14:
	push {lr}
	pop {pc}
.endfunc // sub_802EE14

.func
.thumb_func
sub_802EE18:
	push {lr}
	bl sub_8001532
	mov R4, #7
	and R4, R0
	mov r1, #0x29 
	bl sub_8013774
	ldr R1, off_802EE30 // =dword_802EE34 
	ldrb R0, [R1,R0]
	add r0, r0, r4
	pop {pc}
off_802EE30: .word dword_802EE34
dword_802EE34: .word 0x0, 0x0, 0x0
.endfunc // sub_802EE18

.func
.thumb_func
sub_802EE40:
	push {lr}
	cmp R0, #3
	beq loc_802EE5C
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	mov R2, #3
	mul R0, R2
	add r0, r0, r1
	ldr R1, off_802EE60 // =byte_802EE64 
	ldrb R0, [R1,R0]
	pop {pc}
loc_802EE5C:
	mov R0, #0
	pop {pc}
off_802EE60: .word byte_802EE64
byte_802EE64: .byte 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0
	.byte 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C
	.byte 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0xB5, 0x3
	.byte 0xB4, 0x3C, 0x21, 0xE4, 0xF7, 0x71, 0xFC, 0x6, 0xBC, 0x0, 0x42, 0x2, 0xD0
	.byte 0x9, 0x42, 0x0, 0xD1, 0x8, 0x22, 0x10, 0x1C, 0x0, 0xBD
.endfunc // sub_802EE40

.func
.thumb_func
sub_802EEA2:
	push {lr}
	mov R1, #0x80
	tst R0, R1
	bne loc_802EEB4
	lsl r1, r0, #8
	ldrb R0, [R5,#0x16]
	bl sub_802E032
	b locret_802EEC0
loc_802EEB4:
	mov R1, #0x7F
	and R1, R0
	lsl r1, r1, #8
	ldrb R0, [R5,#0x16]
	bl sub_802E04E
locret_802EEC0:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_802EEA2

.func
.thumb_func
sub_802EEC4:
	push {r4,r7,lr}
	sub sp, sp, #8
	ldrb R0, [R5,#0x16]
	bl sub_802EFEE
	add r7, r0, #0
	beq loc_802EF44
	bl sub_800E2C0
	neg R4, R0
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	ldrb R1, [R0,#0xE]
	mul R1, R4
	ldrb R0, [R7,#0x12]
	add r0, r0, r1
	ldrb R1, [R7,#0x13]
	str R0, [SP]
	str R1, [SP,#4]
	bl sub_800C90A
	tst R0, R0
	beq loc_802EF00
	ldr R0, [SP]
	ldr R1, [SP,#4]
	bl sub_802EFD8
	beq loc_802EF18
	b loc_802EF12
loc_802EF00:
	mov R1, #0
	ldr R0, [SP]
	cmp R0, #1
	bgt loc_802EF0A
	mov R1, #1
loc_802EF0A:
	ldrb R0, [R5,#0x16]
	eor R0, R1
	beq loc_802EF18
	b loc_802EF2E
loc_802EF12:
	ldr R0, [SP]
	ldr R1, [SP,#4]
	b loc_802EF3A
loc_802EF18:
	ldrb R0, [R5,#0x16]
	ldr R3, off_802EF48 // =byte_802EF4C 
	lsl r2, r0, #3
	add r3, r3, r2
	ldr R2, [R3]
	ldr R3, [R3,#4]
	ldr R1, [SP,#4]
	bl sub_800D086
	ldr R1, [SP,#4]
	b loc_802EF44
loc_802EF2E:
	ldrb R0, [R5,#0x16]
	mov R1, #5
	mul R0, R1
	add R0, #1
	str R0, [SP]
	ldr R1, [SP,#4]
loc_802EF3A:
	bl sub_802EFD8
	beq loc_802EF44
	ldr R0, [SP]
	ldr R1, [SP,#4]
loc_802EF44:
	add sp, sp, #8
	pop {r4,r7,pc}
off_802EF48: .word byte_802EF4C
byte_802EF4C: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
.endfunc // sub_802EEC4

.func
.thumb_func
sub_802EF5C:
	push {lr}
	bl sub_800A8F8
	cmp R0, #0
	beq locret_802EF72
	mov R0, #0
	bl sub_802EF74
	mov R0, #1
	bl sub_802EF74
locret_802EF72:
	pop {pc}
.endfunc // sub_802EF5C

.func
.thumb_func
sub_802EF74:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	bl sub_800A8F8
	cmp R0, #0
	beq loc_802EFD4
	mov R4, #4
	mov R7, #0
	ldr R0, [SP]
	mov R1, #1
	eor R0, R1
	bl sub_802EFEE
	tst R0, R0
	beq loc_802EFD4
	cmp R0, R5
	bne loc_802EFD4
	ldr R0, [SP]
	lsl r0, r0, #4
	add R0, #0x80
	mov R1, R10
	ldr R1, [R1,#0x18]
	add r0, r0, r1
loc_802EFA4:
	ldr R6, [R0]
	tst R6, R6
	beq loc_802EFC0
	tst R7, R7
	bne loc_802EFB2
	add r7, r6, #0
	b loc_802EFC0
loc_802EFB2:
	push {r0}
	add r0, r6, #0
	add r1, r7, #0
	bl sub_802F006
	add r7, r0, #0
	pop {r0}
loc_802EFC0:
	add R0, #4
	sub R4, #1
	bgt loc_802EFA4
	ldr R0, [SP]
	mov R1, #1
	eor R0, R1
	add r1, r7, #0
	bl sub_802EFF8
	add r0, r7, #0
loc_802EFD4:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
.endfunc // sub_802EF74

.func
.thumb_func
sub_802EFD8:
	push {lr}
	bl sub_800C90A
	ldrb R1, [R0,#3]
	ldrb R0, [R5,#0x16]
	cmp R0, R1
	beq loc_802EFEA
	mov R0, #0
	pop {pc}
loc_802EFEA:
	mov R0, #1
	pop {pc}
.endfunc // sub_802EFD8

.func
.thumb_func
sub_802EFEE:
	push {lr}
	bl sub_802E070
	ldr R0, [R0,#0x44]
	pop {pc}
.endfunc // sub_802EFEE

.func
.thumb_func
sub_802EFF8:
	push {lr}
	push {r1}
	bl sub_802E070
	pop {r1}
	str R1, [R0,#0x44]
	pop {pc}
.endfunc // sub_802EFF8

.func
.thumb_func
sub_802F006:
	push {R4-R7,lr}
	add r6, r0, #0
	add r7, r1, #0
	ldrb R0, [R5,#0x16]
	mov R1, #1
	eor R0, R1
	bl sub_80103BC
	add r5, r0, #0
	beq loc_802F05E
	bl sub_800E2C0
	ldrb R2, [R5,#0x12]
	add r2, r2, r0
	ldrb R0, [R6,#0x12]
	sub r0, r0, r2
	ldrb R1, [R7,#0x12]
	sub r1, r1, r2
	ldrb R2, [R5,#0x16]
	tst R2, R2
	beq loc_802F034
	neg R0, R0
	neg R1, R1
loc_802F034:
	cmp R0, R1
	bcc loc_802F05E
	bhi loc_802F062
	ldrb R2, [R5,#0x13]
	ldrb R0, [R6,#0x13]
	sub r0, r0, r2
	cmp R0, #0
	bge loc_802F046
	neg R0, R0
loc_802F046:
	ldrb R1, [R7,#0x13]
	sub r1, r1, r2
	cmp R1, #0
	bge loc_802F050
	neg R1, R1
loc_802F050:
	cmp R0, R1
	blt loc_802F05E
	bgt loc_802F062
	ldrb R0, [R6,#0x13]
	ldrb R1, [R7,#0x13]
	cmp R0, R1
	bge loc_802F062
loc_802F05E:
	add r0, r6, #0
	pop {R4-R7,pc}
loc_802F062:
	add r0, r7, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_802F006

.func
.thumb_func
sub_802F068:
	push {r7,lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	add r7, r0, #0
	ldrb R0, [R7,#2]
	tst R0, R0
	beq loc_802F07E
	sub R0, #1
	strb R0, [R7,#2]
	bne locret_802F082
loc_802F07E:
	bl sub_802F084
locret_802F082:
	pop {r7,pc}
.endfunc // sub_802F068

.func
.thumb_func
sub_802F084:
	push {lr}
	ldrb R0, [R5,#0x16]
	bl sub_802E070
	ldrb R1, [R0,#3]
	tst R1, R1
	beq loc_802F096
	mov R1, #0
	strh R1, [R0,#0x28]
loc_802F096:
	ldrb R0, [R5,#0x16]
	bl sub_802E07C
	ldr R0, off_802F0A4 // =timer_2000000 
	bl sub_800FFEE
	pop {pc}
off_802F0A4: .word timer_2000000
dword_802F0A8: .word 0x3E803E8, 0x44C044C, 0x51404B0, 0x3E80384, 0x3E804B0
	.word 0x514044C, 0x384
.endfunc // sub_802F084

.func
.thumb_func
sub_802F0C4:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x44]
	ldr R1, off_802F0D4 // =0x4EC 
	bl sub_80008C0
	pop {pc}
	.balign 4, 0x00
off_802F0D4: .word 0x4EC
.endfunc // sub_802F0C4

.func
.thumb_func
sub_802F0D8:
	push {lr}
	ldr R0, dword_802F0EC // =0x2DE 
	mov R1, R10
	ldr R1, [R1,#0x44]
	add r0, r0, r1
	ldr R1, dword_802F0F0 // =0x2 
	bl sub_80008C0
	pop {pc}
	.balign 4, 0x00
dword_802F0EC: .word 0x2DE
dword_802F0F0: .word 0x2
.endfunc // sub_802F0D8

.func
.thumb_func
sub_802F0F4:
	push {lr}
	ldr R0, off_802F108 // =0x2C8 
	mov R1, R10
	ldr R1, [R1,#0x44]
	add r0, r0, r1
	ldr R1, dword_802F10C // =0x16 
	bl sub_80008C0
	pop {pc}
	.balign 4, 0x00
off_802F108: .word 0x2C8
dword_802F10C: .word 0x16
.endfunc // sub_802F0F4

.func
.thumb_func
// (u8 entryIdx, u8 byteFlagIdx) -> void
setFlag_2001C88_entry:
	// Each entry is 32 bytes, which are indexed by a1
	// a2 addresses the 32 bytes, but also the flag to set in those bytes
	lsl r0, r0, #8
	orr R0, R1
.endfunc // setFlag_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> void
setFlag_2001C88_bitfield:
	// LSB 3 bits of a1 are used to determines the flag to set (7-a1&7)
	// a1_bitfield >> 3 is used to offset into off_2001C88 to locate the byte to set a flag at
	// [disable] - Talking to evil navis doesn't trigger a battle.
	// - Jacking in or pressing L teleports to middle of map, and then 
	// player can't move
	mov R3, R10
	ldr R3, [R3,#0x44] // Toolkit.flags_2001C88
	lsr r1, r0, #3
	add r3, r3, r1
	// compute last 3 bits of a0_bitfield
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	orr R0, R1
	strb R0, [R3]
	mov PC, LR
.endfunc // setFlag_2001C88_bitfield

.func
.thumb_func
// (u8 entryIdx, u8 byteFlagIdx) -> void
clearFlag_2001C88_entry:
	lsl r0, r0, #8
	orr R0, R1
.endfunc // clearFlag_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> void
clearFlag_2001C88_bitfield:
	// LSB 3 bits of a1 are used to determines the flag to clear (7-a1&7)
	// a1_bitfield >> 3 is used to offset into off_2001C88 to locate the byte to clear a flag at
	mov R3, R10
	ldr R3, [R3,#0x44] // Toolkit.flags_2001C88
	lsr r1, r0, #3
	add r3, r3, r1
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	bic R0, R1
	strb R0, [R3]
	mov PC, LR
.endfunc // clearFlag_2001C88_bitfield

.func
.thumb_func
// (u8 entryIdx, u8 byteFlagIdx) -> void
toggleFlag_2001C88_entry:
	lsl r0, r0, #8
	orr R0, R1
.endfunc // toggleFlag_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> void
toggleFlag_2001C88_bitfield:
	mov R3, R10
	ldr R3, [R3,#0x44] // Toolkit.flags_2001C88
	lsr r1, r0, #3
	add r3, r3, r1
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	eor R0, R1
	strb R0, [R3]
	mov PC, LR
.endfunc // toggleFlag_2001C88_bitfield

.func
.thumb_func
// (int entryIdx, int byteFlagIdx) -> zf
isActiveFlag_2001C88_entry:
	lsl r0, r0, #8
	// int v1 = (a1 << 8) | a2 or a1; // r0
	orr R0, R1
.endfunc // isActiveFlag_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> zf
isActiveFlag_2001C88_bitfield:
	mov R3, R10
	ldr R3, [R3,#0x44] // Toolkit.flags_2001C88
	lsr r1, r0, #3
	// void *v2 = tk->unk_2001C88 + v1 // r3
	add r3, r3, r1
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	tst R0, R1
	mov PC, LR
.endfunc // isActiveFlag_2001C88_bitfield

.func
.thumb_func
// (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
setFlags_multEntries_2001C88_entry:
	lsl r0, r0, #8
	orr R0, R1
.endfunc // setFlags_multEntries_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> void
setFlags_multEntries_2001C88_bitfield:
	push {r4,r5,lr}
	mov R4, R10
	ldr R4, [R4,#0x44] // Toolkit.flags_2001C88
	add r5, r0, #0
loc_802F18A:
	add r3, r4, #0
	add r0, r5, #0
	lsr r1, r0, #3
	add r3, r3, r1
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	orr R0, R1
	strb R0, [R3]
	add R5, #1
	sub R2, #1
	bgt loc_802F18A
	pop {r4,r5,pc}
.endfunc // setFlags_multEntries_2001C88_bitfield

.func
.thumb_func
// (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
clearFlags_multEntries_2001C88_entry:
	lsl r0, r0, #8
	orr R0, R1
.endfunc // clearFlags_multEntries_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> void
clearFlags_multEntries_2001C88_bitfield:
	push {r4,r5,lr}
	mov R4, R10
	ldr R4, [R4,#0x44] // Toolkit.flags_2001C88
	add r5, r0, #0
loc_802F1B4:
	add r3, r4, #0
	add r0, r5, #0
	lsr r1, r0, #3
	add r3, r3, r1
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	bic R0, R1
	strb R0, [R3]
	add R5, #1
	sub R2, #1
	bgt loc_802F1B4
	pop {r4,r5,pc}
.endfunc // clearFlags_multEntries_2001C88_bitfield

.func
.thumb_func
// (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
togglelFlags_multEntries_2001C88_entry:
	lsl r0, r0, #8
	orr R0, R1
.endfunc // togglelFlags_multEntries_2001C88_entry

.func
.thumb_func
// (u16 entryFlagBitfield) -> void
togglelFlags_multEntries_2001C88_bitfield:
	push {r4,r5,lr}
	mov R4, R10
	ldr R4, [R4,#0x44] // Toolkit.flags_2001C88
	add r5, r0, #0
loc_802F1DE:
	add r3, r4, #0
	add r0, r5, #0
	lsr r1, r0, #3
	add r3, r3, r1
	lsl r0, r0, #29
	lsr r0, r0, #29
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	eor R0, R1
	strb R0, [R3]
	add R5, #1
	sub R2, #1
	bgt loc_802F1DE
	pop {r4,r5,pc}
.endfunc // togglelFlags_multEntries_2001C88_bitfield

.func
.thumb_func
// (int a3, int a2) ->
sub_802F1FC:
	lsl r0, r0, #8
	orr R0, R1
loc_802F200:
	push {R4-R7,lr}
	add r7, r2, #0
	mov R4, R10
	ldr R4, [R4,#0x44]
	add r5, r0, #0
	mov R6, #0
loc_802F20C:
	add r3, r4, #0
	add r0, r5, #0
	lsr r1, r0, #3
	add r3, r3, r1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov R1, #0x80
	lsr R1, R0
	ldrb R0, [R3]
	tst R0, R1
	beq loc_802F224
	add R6, #1
loc_802F224:
	add R5, #1
	sub R2, #1
	bgt loc_802F20C
	mov R0, #0
	cmp R6, R7
	bne loc_802F232
	mov R0, #1
loc_802F232:
	tst R0, R0
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_802F1FC

.func
.thumb_func
sub_802F238:
	push {r4,r6,r7,lr}
	add r7, r0, #0
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	add r0, r7, #0
	add R0, #0x80
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	ldr R1, off_802F2C4 // =0x1CA0 
	sub r7, r7, r1
	ldr R2, off_802F2DC // =byte_2006530 
	ldr R6, off_802F2E0 // =dword_2001140 
	ldr R0, [R6]
	add r4, r0, #0
	tst R4, R4
	beq loc_802F268
	sub r1, r0, #1
loc_802F25E:
	ldrb R3, [R2,R1]
	strb R3, [R2,R0]
	sub R0, #1
	sub R1, #1
	bge loc_802F25E
loc_802F268:
	strb R7, [R2]
	add R4, #1
	str R4, [R6]
	pop {r4,r6,r7,pc}
.endfunc // sub_802F238

.func
.thumb_func
sub_802F270:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str R0, [SP]
	ldr R1, off_802F2C4 // =0x1CA0 
	sub r7, r0, r1
	ldr R6, off_802F2E0 // =dword_2001140 
	ldr R1, [R6]
	ldr R2, off_802F2DC // =byte_2006530 
loc_802F280:
	ldrb R0, [R2]
	cmp R0, R7
	beq loc_802F28E
	add R2, #1
	sub R1, #1
	bgt loc_802F280
	b loc_802F2BC
loc_802F28E:
	cmp R1, #1
	ble loc_802F29E
	add r3, r2, #1
	ldrb R0, [R3]
	strb R0, [R2]
	add R2, #1
	sub R1, #1
	b loc_802F28E
loc_802F29E:
	mov R0, #0x80
	strb R0, [R2]
	ldrb R0, [R6]
	sub R0, #1
	str R0, [R6]
	ldr R0, [SP]
	add r7, r0, #0
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	add r0, r7, #0
	add R0, #0x80
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
loc_802F2BC:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.word 0x1D20
off_802F2C4: .word 0x1CA0
.endfunc // sub_802F270

.func
.thumb_func
sub_802F2C8:
	push {lr}
	// mem
	ldr R0, off_802F2DC // =byte_2006530 
	// byteCount
	mov R1, #0x80
	// byte
	mov R2, #0x80
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	ldr R0, off_802F2E0 // =dword_2001140 
	mov R1, #0
	str R1, [R0]
	pop {pc}
off_802F2DC: .word byte_2006530
off_802F2E0: .word dword_2001140
byte_802F2E4: .byte 0x4, 0x0, 0x0, 0x0, 0x60, 0x1B, 0x0, 0x3, 0xC, 0x0, 0xE, 0xFF, 0x42
	.byte 0x8, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
byte_802F2F8: .byte 0x84, 0x10, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0xC6, 0x18, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0x8, 0x21, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x4A, 0x29, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x8C, 0x31, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0xCE, 0x39, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x10, 0x42, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_802F334: .word 0x4
	.word byte_3001750
	.word 0xFF01010C
	.word 0x80000842
	.word 0x1
	.word 0x2
	.word byte_802F2F8
off_802F350: .word unk_3001A40
	.word 0x20
	.word 0xFFFF0400
	.word byte_87F93B4
	.word 0x24
	.word byte_87F93D4
	.word 0x7
	.word byte_87F93F4
	.word 0x7
	.word byte_87F9414
	.word 0x7
	.word byte_87F9434
	.word 0x24
	.word byte_87F9414
	.word 0x7
	.word byte_87F93F4
	.word 0x7
	.word byte_87F93D4
	.word 0x7
	.word 0x1
off_802F3A0: .word unk_3001A60
	.word 0x20
	.word 0xFFFF0500
	.word byte_87F9454
	.word 0x24
	.word byte_87F9474
	.word 0x7
	.word byte_87F9494
	.word 0x7
	.word byte_87F94B4
	.word 0x7
	.word byte_87F94D4
	.word 0x24
	.word byte_87F94B4
	.word 0x7
	.word byte_87F9494
	.word 0x7
	.word byte_87F9474
	.word 0x7
	.word 0x1
off_802F3F0: .word unk_3001A80
	.word 0x20
	.word 0xFFFF0600
	.word byte_87F94F4
	.word 0x24
	.word byte_87F9514
	.word 0x7
	.word byte_87F9534
	.word 0x7
	.word byte_87F9554
	.word 0x7
	.word byte_87F9574
	.word 0x24
	.word byte_87F9554
	.word 0x7
	.word byte_87F9534
	.word 0x7
	.word byte_87F9514
	.word 0x7
	.word 0x1
off_802F440: .word unk_3001AA0
	.word 0x20
	.word 0xFFFF0700
	.word byte_87F9594
	.word 0x24
	.word byte_87F95B4
	.word 0x7
	.word byte_87F95D4
	.word 0x7
	.word byte_87F95F4
	.word 0x7
	.word byte_87F9614
	.word 0x24
	.word byte_87F95F4
	.word 0x7
	.word byte_87F95D4
	.word 0x7
	.word byte_87F95B4
	.word 0x7
	.word 0x1
off_802F490: .word byte_3001B00
	.word 0x20
	.word 0xFFFF0800
	.word byte_87F96D4
	.word 0x24
	.word byte_87F96F4
	.word 0x7
	.word byte_87F9714
	.word 0x7
	.word byte_87F9734
	.word 0x7
	.word byte_87F9754
	.word 0x24
	.word byte_87F9734
	.word 0x7
	.word byte_87F9714
	.word 0x7
	.word byte_87F96F4
	.word 0x7
	.word 0x1
off_802F4E0: .word unk_3001B20
	.word 0x20
	.word 0xFFFF0900
	.word byte_87F9774
	.word 0x24
	.word byte_87F9794
	.word 0x7
	.word byte_87F97B4
	.word 0x7
	.word byte_87F97D4
	.word 0x7
	.word byte_87F97F4
	.word 0x24
	.word byte_87F97D4
	.word 0x7
	.word byte_87F97B4
	.word 0x7
	.word byte_87F9794
	.word 0x7
	.word 0x1
.endfunc // sub_802F2C8

.func
.thumb_func
sub_802F530:
	push {lr}
	// memBlock
	ldr R0, off_802F570 // =sStartScr 
	// size
	mov r1, #0x20 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R1, R10
	ldr R1, [R1]
	mov R0, #0
	strb R0, [R1]
	pop {pc}
.endfunc // sub_802F530

.func
.thumb_func
Load_ho_802F544:
	push {R4-R7,lr}
	bl sub_803E938
	ldr R5, off_802F570 // =sStartScr 
	ldr R0, off_802F55C // =jt_802F560 
	ldrb R1, [R5]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl change_20013F0_800151C // () -> int
	pop {R4-R7,pc}
off_802F55C: .word jt_802F560
jt_802F560: .word startScreen_802F574+1, sub_802F60C+1, ho_802F63C+1, sub_802F756+1
off_802F570: .word sStartScr
.endfunc // Load_ho_802F544

.func
.thumb_func
startScreen_802F574:
	push {lr}
	mov R0, #0xB
	bl sub_80015FC
	ldr R0, off_802F7E4 // =0x1140 
	bl sub_8001778
	bl sub_8001788
	bl sub_80017A0
	bl startScreen_initGfx_802FCC0
	mov R0, #0xC
	mov R1, #0xFF
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl musicGameState_8000784 // () -> void
	ldr R0, off_802F5EC // =pt_802F5F0 
	bl sub_8002354
	mov R0, #4
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#2]
	bl sub_803FA42
	bl sub_803F838
	bne loc_802F5BE
	mov R0, #1
	strb R0, [R5,#2]
	bl sub_8000EE4
	strb R0, [R5,#0xC]
	strh R1, [R5,#0xA]
loc_802F5BE:
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_802F5D4
	mov R6, #0
	mov R7, #1
	bl sub_803E930
	beq loc_802F5E2
	mov R0, #0
	mov R7, #2
	b loc_802F5E2
loc_802F5D4:
	mov R6, #1
	mov R7, #2
	bl sub_803E930
	beq loc_802F5E2
	mov R6, #1
	mov R7, #3
loc_802F5E2:
	strb R6, [R5,#8]
	strb R7, [R5,#9]
	mov R0, #0
	strb R0, [R5,#3]
	pop {pc}
off_802F5EC: .word pt_802F5F0
pt_802F5F0: .word off_802F350
	.word off_802F3A0
	.word off_802F3F0
	.word off_802F440
	.word off_802F490
	.word off_802F4E0
	.word 0xFFFFFFFF
.endfunc // startScreen_802F574

.func
.thumb_func
sub_802F60C:
	push {lr}
	ldr R0, off_802F61C // =off_802F620 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_802F61C: .word off_802F620
off_802F620: .word sub_802F624+1
.endfunc // sub_802F60C

.func
.thumb_func
sub_802F624:
	push {lr}
	ldr R0, dword_802F638 // =0x1741 
	bl sub_8001778
	mov R0, #8
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#1]
	pop {pc}
	.balign 4, 0x00
dword_802F638: .word 0x1741
.endfunc // sub_802F624

.func
.thumb_func
// () -> void
ho_802F63C:
	push {lr}
	ldr R0, off_802F650 // =jt_802F654 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_802FB10 // () -> void
	pop {pc}
	.byte 0, 0
off_802F650: .word jt_802F654
jt_802F654: .word sub_802F668+1
	.word sub_802F6A4+1
	.word sub_802F6B2+1
	.word sub_802F704+1
	.word sub_802F710+1
.endfunc // ho_802F63C

.func
.thumb_func
sub_802F668:
	push {lr}
	mov R0, #0
	strb R0, [R5,#0xE]
	strb R0, [R5,#0xF]
	ldr R0, dword_802F69C // =0xA46 
	strh R0, [R5,#4]
	mov R0, #1
	bl sub_80005F2
	mov R0, #0xA
	bl sub_80015FC
	ldr R0, off_802F6A0 // =0x1340 
	bl sub_8001778
	mov R0, #0
	strb R0, [R5,#6]
	bl sub_802FD3C
.endfunc // sub_802F668

	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#1]
	pop {pc}
dword_802F69C: .word 0xA46
off_802F6A0: .word 0x1340
.func
.thumb_func
sub_802F6A4:
	push {r4,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_802F6B0
	mov R0, #8
	strb R0, [R5,#1]
locret_802F6B0:
	pop {r4,pc}
.endfunc // sub_802F6A4

.func
.thumb_func
sub_802F6B2:
	push {r4,lr}
	ldrh R0, [R5,#4]
	cmp R0, #0
	bgt loc_802F6C8
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_802F6FA
loc_802F6C8:
	sub R0, #1
	strh R0, [R5,#4]
	ldr R1, off_802F6FC // =0x12C 
	cmp R0, R1
	bne loc_802F6E0
	push {r0,r5}
	mov R0, #0x1F
	mov R1, #0x10
	bl sub_800068A
	pop {r0,r5}
	b locret_802F6FA
loc_802F6E0:
	ldrh R0, [R5,#4]
	ldr R1, dword_802F700 // =0xA0A 
	cmp R0, R1
	bge locret_802F6FA
	bl sub_803E928
	bne locret_802F6FA
	bl sub_802FD54
	bl sub_802F7E8
	bl sub_802F88E
locret_802F6FA:
	pop {r4,pc}
off_802F6FC: .word 0x12C
dword_802F700: .word 0xA0A
.endfunc // sub_802F6B2

.func
.thumb_func
sub_802F704:
	push {lr}
	bl sub_802F81C
	bl sub_802F8D8
.endfunc // sub_802F704

	pop {pc}
.func
.thumb_func
sub_802F710:
	push {lr}
	ldrh R0, [R5,#4]
	cmp R0, #0
	ble loc_802F71C
	bl sub_802F8D8
loc_802F71C:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_802F754
	ldrh R0, [R5,#4]
	cmp R0, #0
	ble loc_802F72E
	mov R0, #0xC
	strh R0, [R5]
	b locret_802F754
loc_802F72E:
	bl sub_8001AFC
	bl sub_80023A8
	bl loc_803D1AC // () -> void
	bl sub_81440D8 // static () -> void
	bl sub_813D960
	bl clear_200AD04 // () -> void
	mov R0, #0
	bl sub_803F6B0
	bl loc_803F512
	bl sub_803E900
locret_802F754:
	pop {pc}
.endfunc // sub_802F710

.func
.thumb_func
sub_802F756:
	push {lr}
	mov R7, R10
	ldr R0, [R7]
	mov R1, #4
	strb R1, [R0]
	ldr R0, off_802F7E4 // =0x1140 
	bl sub_8001778
	bl sub_813D960
	ldrb R0, [R5,#8]
	cmp R0, #0
	beq loc_802F776
	cmp R0, #1
	beq loc_802F79A
	b loc_802F7B6
loc_802F776:
	bl sub_800260C
	bl sub_8004DF0
	bl sub_8004D48
	bl sub_81440D8 // static () -> void
	bl sub_8149644
	ldrb R0, [R5,#2]
	tst R0, R0
	beq locret_802F7E0
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #4
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_802F7E0
loc_802F79A:
	ldrb R0, [R5,#2]
	tst R0, R0
	beq loc_802F7B6
	bl sub_8004D48
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #4
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_81440D8 // static () -> void
	bl sub_8149644
	b locret_802F7E0
loc_802F7B6:
	mov R0, #0
	bl sub_813D90C
	bl sub_8004D48
	bl sub_8039570
	bl sub_803EBAC
	mov R0, #0xC
	bl sub_803EA70
	ldrb R0, [R5,#2]
	tst R0, R0
	beq loc_802F7DC
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #4
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_802F7DC:
	bl sub_81440D8 // static () -> void
locret_802F7E0:
	pop {pc}
	.balign 4, 0x00
off_802F7E4: .word 0x1140
.endfunc // sub_802F756

.func
.thumb_func
sub_802F7E8:
	push {lr}
	mov R7, R10
	ldr R0, [R7,#4]
	ldrh R0, [R0,#2]
	mov R1, #8
	tst R1, R0
	beq locret_802F810
	bl sub_813D960
	mov R0, #0xC
	strb R0, [R5,#1]
	mov r0, #0x67 
	bl sound_play // () -> void
	ldr R0, off_802F814 // =byte_802F2E4 
	bl sub_8001B1C
	ldr R0, off_802F818 // =dword_802F334 
	bl sub_8001B1C
locret_802F810:
	pop {pc}
	.balign 4, 0x00
off_802F814: .word byte_802F2E4
off_802F818: .word dword_802F334
.endfunc // sub_802F7E8

.func
.thumb_func
sub_802F81C:
	push {lr}
	mov R7, R10
	ldr R7, [R7,#4]
	ldrh R0, [R7,#2]
	mov R1, #9
	tst R1, R0
	beq loc_802F848
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_802F88C
	bl musicGameState_8000784 // () -> void
	mov R0, #0x9D
	bl sound_play // () -> void
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_802F88C
loc_802F848:
	ldrh R0, [R7,#4]
	mov r1, #0x40 
	tst R1, R0
	beq loc_802F86A
	ldrb R0, [R5,#8]
	add r1, r0, #0
	sub R0, #1
	bge loc_802F85C
	ldrb R0, [R5,#9]
	sub R0, #1
loc_802F85C:
	strb R0, [R5,#8]
	cmp R0, R1
	beq locret_802F88C
	mov r0, #0x66 
	bl sound_play // () -> void
	b locret_802F88C
loc_802F86A:
	ldrh R0, [R7,#4]
	mov R1, #0x80
	tst R1, R0
	beq locret_802F88C
	ldrb R0, [R5,#8]
	add r1, r0, #0
	add R0, #1
	ldrb R2, [R5,#9]
	cmp R0, R2
	blt loc_802F880
	mov R0, #0
loc_802F880:
	strb R0, [R5,#8]
	cmp R0, R1
	beq locret_802F88C
	mov r0, #0x66 
	bl sound_play // () -> void
locret_802F88C:
	pop {pc}
.endfunc // sub_802F81C

.func
.thumb_func
sub_802F88E:
	push {R4-R7,lr}
	mov R0, R10
	ldr R0, [R0,#0x24]
	ldrh R0, [R0]
	mov r1, #0x3f 
	and R0, R1
	cmp r0, #0x20 
	bgt locret_802F8A4
	ldr R0, off_802F8A8 // =dword_802F8AC 
	bl sub_8001158 // () -> void
locret_802F8A4:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802F8A8: .word dword_802F8AC
dword_802F8AC: .word 0x80344078, 0x2001, 0x80544078, 0x2009, 0x80744078
	.word 0x2011, 0x80944078, 0x2019, 0xB48078, 0x2021
	.word 0x0
.endfunc // sub_802F88E

.func
.thumb_func
sub_802F8D8:
	push {R4-R7,lr}
	ldrb R0, [R5,#6]
	add R0, #1
	cmp R0, #0x12
	blt loc_802F8E4
	mov R0, #0
loc_802F8E4:
	strb R0, [R5,#6]
	ldrb R0, [R5,#7]
	add R0, #1
	cmp r0, #0x40 
	blt loc_802F8F0
	mov R0, #0
loc_802F8F0:
	strb R0, [R5,#7]
	ldrb R0, [R5,#6]
	lsl r0, r0, #1
	ldr R1, off_802F96C // =dword_802F970 
	ldrh R1, [R1,R0]
	ldrb R2, [R5,#8]
	lsl r2, r2, #2
	ldr R0, off_802F95C // =dword_802F960 
	ldr R0, [R0,R2]
	mov R2, #0
	mov R3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
.endfunc // sub_802F8D8

	ldrb R0, [R5,#8]
	bl sub_802F994
	ldrb R0, [R5,#2]
	tst R0, R0
	bne loc_802F924
	bl sub_803F524
	bne loc_802F936
	bl sub_803E930
	beq loc_802F936
	b loc_802F936
loc_802F924:
	ldrb R0, [R5,#8]
	bl sub_802F9EC
	bl sub_803F524
	bne loc_802F936
	bl sub_803E930
	beq loc_802F936
loc_802F936:
	bl sub_802FC9C
	bl sub_802FC70
	bl sub_802FB64
	bl sub_802FB90
	bl sub_802FBB4
	bl sub_802FBD8
	bl sub_802FBFC
	bl sub_802FC28
	bl sub_802FC4C
	pop {R4-R7,pc}
off_802F95C: .word dword_802F960
dword_802F960: .word 0x40490071, 0x40490080, 0x40490091
off_802F96C: .word dword_802F970
dword_802F970: .word 0x11401140
	.word 0x11401140
	.word 0x11401140
	.word 0x11441144
	.word 0x11441144
	.word 0x11441144
	.word 0x11481148
	.word 0x11481148
	.word 0x11481148
.func
.thumb_func
sub_802F994:
	push {R4-R7,lr}
	ldr R1, off_802F9A4 // =off_802F9A8 
	lsl r0, r0, #2
	ldr R0, [R0,R1]
	bl sub_8001158 // () -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802F9A4: .word off_802F9A8
off_802F9A8: .word dword_802F9B4
	.word dword_802F9D0
	.word dword_802F9D0
dword_802F9B4: .word 0x80584070, 0x3023, 0x80784070, 0x302B, 0x40980070
	.word 0x3033, 0x0
dword_802F9D0: .word 0x80584070, 0x4023, 0x80784070, 0x402B, 0x40980070
	.word 0x4033, 0x0
.endfunc // sub_802F994

.func
.thumb_func
sub_802F9EC:
	push {R4-R7,lr}
	ldr R1, off_802F9FC // =off_802FA00 
	lsl r0, r0, #2
	ldr R0, [R0,R1]
	bl sub_8001158 // () -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802F9FC: .word off_802FA00
off_802FA00: .word dword_802FA28
	.word dword_802FA0C
	.word dword_802FA28
dword_802FA0C: .word 0x8058407F, 0x3037, 0x8078407F, 0x303F, 0x4098007F
	.word 0x3047, 0x0
dword_802FA28: .word 0x8058407F, 0x4037, 0x8078407F, 0x403F, 0x4098007F
	.word 0x4047, 0x0
.endfunc // sub_802F9EC

	push {R4-R7,lr}
	ldrb R1, [R5,#9]
	cmp R1, #3
	blt loc_802FA58
	ldr R1, off_802FA70 // =off_802FA74 
	lsl r0, r0, #2
	ldr R0, [R0,R1]
	bl sub_8001158 // () -> void
	b locret_802FA62
loc_802FA58:
	ldr R1, off_802FA64 // =off_802FA68 
	lsl r0, r0, #2
	ldr R0, [R0,R1]
	bl sub_8001158 // () -> void
locret_802FA62:
	pop {R4-R7,pc}
off_802FA64: .word off_802FA68
off_802FA68: .word dword_802FAEC
	.word dword_802FAC8
off_802FA70: .word off_802FA74
off_802FA74: .word dword_802FAA4
	.word dword_802FAA4
	.word dword_802FA80
dword_802FA80: .word 0x80584080, 0x304B, 0x80784080, 0x3053, 0x40980080
	.word 0x305B, 0xA88080, 0x305F, 0x0
dword_802FAA4: .word 0x80584080, 0x404B, 0x80784080, 0x4053, 0x40980080
	.word 0x405B, 0xA88080, 0x405F, 0x0
dword_802FAC8: .word 0x80584070, 0x304B, 0x80784070, 0x3053, 0x40980070
	.word 0x305B, 0xA88070, 0x305F, 0x0
dword_802FAEC: .word 0x80584070, 0x404B, 0x80784070, 0x4053, 0x40980070
	.word 0x405B, 0xA88070, 0x405F, 0x0
.func
.thumb_func
// () -> void
sub_802FB10:
	push {R4-R7,lr}
	ldr R0, off_802FB1C // =dword_802FB20 
	bl sub_8001158 // () -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802FB1C: .word dword_802FB20
dword_802FB20: .word 0x8000007E, 0x6180, 0x8020007E, 0x6190, 0x8040007E
	.word 0x61A0, 0x8060007E, 0x61B0, 0x8080007E, 0x61C0
	.word 0x80A0007E, 0x61D0, 0x80C0007E, 0x61E0, 0x80E0007E
	.word 0x61F0, 0x0
.endfunc // sub_802FB10

.func
.thumb_func
sub_802FB64:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov R1, #0x80
	tst R0, R1
	beq locret_802FB74
	ldr R0, off_802FB78 // =dword_802FB7C 
	bl sub_8001158 // () -> void
locret_802FB74:
	pop {pc}
	.balign 4, 0x00
off_802FB78: .word dword_802FB7C
dword_802FB7C: .word 0x80044002, 0x9280, 0x40044012, 0x9288, 0x0
.endfunc // sub_802FB64

.func
.thumb_func
sub_802FB90:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov r1, #0x40 
	tst R0, R1
	beq locret_802FBA0
	ldr R0, off_802FBA4 // =dword_802FBA8 
	bl sub_8001158 // () -> void
locret_802FBA0:
	pop {pc}
	.balign 4, 0x00
off_802FBA4: .word dword_802FBA8
dword_802FBA8: .word 0x802C4004, 0x8220, 0x0
.endfunc // sub_802FB90

.func
.thumb_func
sub_802FBB4:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov r1, #0x20 
	tst R0, R1
	beq locret_802FBC4
	ldr R0, off_802FBC8 // =dword_802FBCC 
	bl sub_8001158 // () -> void
locret_802FBC4:
	pop {pc}
	.balign 4, 0x00
off_802FBC8: .word dword_802FBCC
dword_802FBCC: .word 0x80544004, 0x8230, 0x0
.endfunc // sub_802FBB4

.func
.thumb_func
sub_802FBD8:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov R1, #0x10
	tst R0, R1
	beq locret_802FBE8
	ldr R0, off_802FBEC // =dword_802FBF0 
	bl sub_8001158 // () -> void
locret_802FBE8:
	pop {pc}
	.balign 4, 0x00
off_802FBEC: .word dword_802FBF0
dword_802FBF0: .word 0x807C4004, 0x8240, 0x0
.endfunc // sub_802FBD8

.func
.thumb_func
sub_802FBFC:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov R1, #8
	tst R0, R1
	beq locret_802FC0C
	ldr R0, off_802FC10 // =dword_802FC14 
	bl sub_8001158 // () -> void
locret_802FC0C:
	pop {pc}
	.byte 0, 0
off_802FC10: .word dword_802FC14
dword_802FC14: .word 0x808E4014, 0x7210, 0x408E4024, 0x7218, 0x0
.endfunc // sub_802FBFC

.func
.thumb_func
sub_802FC28:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov R1, #4
	tst R0, R1
	beq locret_802FC38
	ldr R0, off_802FC3C // =dword_802FC40 
	bl sub_8001158 // () -> void
locret_802FC38:
	pop {pc}
	.balign 4, 0x00
off_802FC3C: .word dword_802FC40
dword_802FC40: .word 0x80A44004, 0x8250, 0x0
.endfunc // sub_802FC28

.func
.thumb_func
sub_802FC4C:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov R1, #2
	tst R0, R1
	beq locret_802FC5C
	ldr R0, off_802FC60 // =dword_802FC64 
	bl sub_8001158 // () -> void
locret_802FC5C:
	pop {pc}
	.byte 0, 0
off_802FC60: .word dword_802FC64
dword_802FC64: .word 0x80CC4004, 0x8260, 0x0
.endfunc // sub_802FC4C

.func
.thumb_func
sub_802FC70:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov R1, #0x10
	lsl r1, r1, #4
	tst R0, R1
	beq locret_802FC82
	ldr R0, off_802FC84 // =dword_802FC88 
	bl sub_8001158 // () -> void
locret_802FC82:
	pop {pc}
off_802FC84: .word dword_802FC88
dword_802FC88: .word 0x80404014, 0x7200, 0x40404024, 0x7208, 0x0
.endfunc // sub_802FC70

.func
.thumb_func
sub_802FC9C:
	push {lr}
	ldrh R0, [R5,#0xA]
	mov r1, #0x20 
	lsl r1, r1, #4
	tst R0, R1
	beq locret_802FCAE
	ldr R0, off_802FCB0 // =dword_802FCB4 
	bl sub_8001158 // () -> void
locret_802FCAE:
	pop {pc}
off_802FCB0: .word dword_802FCB4
dword_802FCB4: .word 0x806C4016, 0xA270, 0x0
.endfunc // sub_802FC9C

.func
.thumb_func
startScreen_initGfx_802FCC0:
	push {R4-R7,lr}
	bl sub_80017AA
	// initRefs
	ldr R0, off_802FCD4 // =initRefs_802FCD8 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	bl sub_800183C
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802FCD4: .word initRefs_802FCD8
initRefs_802FCD8: .word comp_87F36A0 + 1<<31
	.word 0x6013000
	.word decomp_2013A00
	.word byte_87F40F4
	.word byte_3001610
	.word 0xA0
	.word comp_87F3370 + 1<<31
	.word 0x6010020
	.word decomp_2013A00
	.word unk_87F3620
	.word byte_3001590
	.word 0x80
	.word comp_87F4394 + 1<<31
	.word 0x6000000
	.word decomp_2013A00
	.word unk_87F4194
	.word byte_3001960
	.word 0x1C0
	.word unk_86A48C0
	.word 0x6012800
	.word 0x180
	.word dword_86A5500
	.word byte_3001570
	.word 0x20
	.word 0x0
.endfunc // startScreen_initGfx_802FCC0

.func
.thumb_func
sub_802FD3C:
	push {r5,lr}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_802FD50 // =byte_87F8EB0 
	mov r4, #0x20 
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_802FD3C

	pop {r5,pc}
off_802FD50: .word byte_87F8EB0
.func
.thumb_func
sub_802FD54:
	push {R4-R7,lr}
	bl sub_803E930
	beq locret_802FD68
	mov R1, #2
	ldrb R0, [R5,#2]
	tst R0, R0
	beq loc_802FD66
	mov R1, #3
loc_802FD66:
	strb R1, [R5,#9]
locret_802FD68:
	pop {R4-R7,pc}
	.balign 4, 0x00
	.word byte_200B1A0
off_802FD70: .word unk_30025B0
dword_802FD74: .word 0x8
	.word unk_3002580
	.byte  4
	.byte  0
	.byte  0
	.byte  0
	.byte 0xB0
	.byte 0xE
	.byte  0
	.byte  3
	.byte 0xA0
	.byte  2
	.byte  0
	.byte  0
	.byte 0x70 
	.byte 0x21 
	.byte  0
	.byte  3
	.byte  4
	.byte  0
	.byte  0
	.byte  0
byte_802FD90: .byte 0xB0, 0x25, 0x0, 0x3, 0x8, 0x0, 0x0, 0x0, 0x80, 0x25, 0x0, 0x3, 0x4
	.byte 0x0, 0x0, 0x0, 0xB0, 0xE, 0x0, 0x3, 0xE0, 0x0, 0x0, 0x0, 0x70, 0x21
	.byte 0x0, 0x3, 0x4, 0x0, 0x0, 0x0
.endfunc // sub_802FD54

.func
.thumb_func
sub_802FDB0:
	mov R0, #0
	b loc_802FDB6
loc_802FDB4:
	mov R0, #4
loc_802FDB6:
	ldr R1, off_802FDF0 // =off_802FDF4 
	ldr R0, [R1,R0]
	push {r4,lr}
	add r4, r0, #0
	ldr R1, off_802FE08 // =dword_3002590 
	mov r2, #0x20 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R2, #0
	mvn R2, R2
	add r3, r4, #0
	mov R4, #4
loc_802FDCE:
	ldr R0, [R3]
	ldr R1, [R3,#4]
	bl sub_800098C
	add R3, #8
	sub R4, #1
	cmp R4, #0
	bgt loc_802FDCE
	ldr R0, off_802FE04 // =byte_3001150 
	ldr R1, off_802FDFC // =0x400 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, off_802FE00 // =byte_3001950 
	mov R1, #0
	str R1, [R0]
	pop {r4,pc}
	.byte 0, 0
off_802FDF0: .word off_802FDF4
off_802FDF4: .word off_802FD70
	.word byte_802FD90
off_802FDFC: .word 0x400
off_802FE00: .word byte_3001950
off_802FE04: .word byte_3001150
off_802FE08: .word dword_3002590
.endfunc // sub_802FDB0

.func
.thumb_func
objRender_802FE0C:
	push {lr}
	ldr R0, off_802FE1C // =dword_3001D70 
	ldr R1, dword_802FE20 // =0x7000000 
	ldr R2, off_802FE24 // =0x400 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
	.balign 4, 0x00
off_802FE1C: .word dword_3001D70
dword_802FE20: .word 0x7000000
off_802FE24: .word 0x400
.endfunc // objRender_802FE0C

.func
.thumb_func
// (u32 a1, u16 a2, int notUsed, int a4) -> void
sub_802FE28:
	push {r4,lr}
	ldr R4, off_802FE34 // =sub_30068E8+1 
	mov LR, PC
	bx r4
	pop {r4,pc}
	.balign 4, 0x00
off_802FE34: .word sub_30068E8+1
.endfunc // sub_802FE28

.func
.thumb_func
sub_802FE38:
	push {r4,lr}
	ldr R4, off_802FE44 // =sub_3006920+1 
	mov LR, PC
	bx r4
	pop {r4,pc}
	.balign 4, 0x00
off_802FE44: .word sub_3006920+1
.endfunc // sub_802FE38

.func
.thumb_func
sub_802FE48:
	ldr R3, off_802FF44 // =dword_2009A2C 
	ldr R1, [R3]
	mov R2, #0x80
	lsl r2, r2, #0x18
	mov R0, #0
loc_802FE52:
	tst R1, R2
	beq loc_802FE60
	lsr r2, r2, #1
	add R0, #1
	cmp R0, #0x10
	bge loc_802FE66
	b loc_802FE52
loc_802FE60:
	orr R1, R2
	str R1, [R3]
	mov PC, LR
loc_802FE66:
	mov R0, #0xFF
	mov PC, LR
.endfunc // sub_802FE48

.func
.thumb_func
sub_802FE6A:
	ldr R3, off_802FF44 // =dword_2009A2C 
	ldr R1, [R3]
	mov R2, #0x80
	lsl r2, r2, #0x18
	lsr R2, R0
	bic R1, R2
	str R1, [R3]
	mov PC, LR
.endfunc // sub_802FE6A

.func
.thumb_func
sub_802FE7A:
	push {R4-R7,lr}
	lsr r1, r1, #2
	lsr r2, r2, #2
	push {R0-R2}
	ldr R0, off_802FF48 // =word_200A6F0 
	add r6, r0, #0
	mov R1, #0xC
	mul R1, R3
	add r0, r0, r1
	add R3, #0x10
	mov R1, #0xC
	mul R1, R3
	add r6, r6, r1
	mov R5, #0
	mov R2, #0
	strb R2, [R6,#8]
	pop {r2}
	strb R2, [R0,#8]
	lsl r2, r2, #1
	pop {r3}
	add r7, r3, #0
	bl sub_802FF10
	strb R3, [R0,#9]
	add r3, r7, #0
	ldr R1, off_802FF0C // =byte_8006660 
	ldrsh R4, [R1,R5]
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R6]
	ldrsh R4, [R1,R2]
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R0]
	ldr R1, off_802FF08 // =byte_80065E0 
	ldrsh R4, [R1,R5]
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R6,#2]
	ldrsh R4, [R1,R2]
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R0,#2]
	pop {r3}
	add r7, r3, #0
	bl sub_802FF10
	strb R3, [R0,#0xA]
	add r3, r7, #0
	ldr R1, off_802FF0C // =byte_8006660 
	ldrsh R4, [R1,R5]
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R6,#6]
	ldrsh R4, [R1,R2]
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R0,#6]
	ldr R1, off_802FF08 // =byte_80065E0 
	ldrsh R4, [R1,R5]
	neg R4, R4
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R6,#4]
	ldrsh R4, [R1,R2]
	neg R4, R4
	mul R4, R3
	lsr r4, r4, #4
	strh R4, [R0,#4]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_802FF08: .word byte_80065E0
off_802FF0C: .word byte_8006660
.endfunc // sub_802FE7A

.func
.thumb_func
sub_802FF10:
	push {r1,r2}
	mov R1, #0x10
	lsl r1, r1, #4
	mov R2, #0
	cmp R3, #0
	beq loc_802FF26
loc_802FF1C:
	cmp R1, R3
	blt loc_802FF26
	sub r1, r1, r3
	add R2, #1
	b loc_802FF1C
loc_802FF26:
	add r3, r2, #0
	pop {r1,r2}
	mov PC, LR
.endfunc // sub_802FF10

.func
.thumb_func
sub_802FF2C:
	push {lr}
	ldr R0, off_802FF44 // =dword_2009A2C 
	mov R1, #0
	str R1, [R0]
	ldr R0, off_802FF48 // =word_200A6F0 
	ldr R1, off_802FF40 // =0x180 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
off_802FF40: .word 0x180
off_802FF44: .word dword_2009A2C
off_802FF48: .word word_200A6F0
.endfunc // sub_802FF2C

.func
.thumb_func
sub_802FF4C:
	push {R5-R7,lr}
	mov R5, R8
	mov R6, R9
	mov R7, R12
	push {R5-R7}
	push {r3,r4}
	push {R0-R2}
	mov R5, R10
	ldr R5, [R5,#0xC]
	ldrb R0, [R5,#3]
	ldr R1, [R5,#0x14]
	push {r0,r1,r5}
	mov R0, R10
	// memBlock
	ldr R0, [R0,#0xC]
	// size
	mov r1, #0x4c 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r0,r1,r5}
	strb R0, [R5,#3]
	str R1, [R5,#0x14]
	ldr R0, off_802FFF0 // =byte_200BE70 
	ldrb R3, [R0]
	sub R3, #0x1E
	lsl r3, r3, #0x12
	str R3, [R5,#0x1C]
	neg R3, R3
	str R3, [R5,#0x18]
	ldrb R3, [R0,#0x1] // (byte_200BE71 - 0x200BE70)
	sub R3, #0x14
	lsl r3, r3, #0x12
	str R3, [R5,#0x20]
	neg R3, R3
	str R3, [R5,#0x24]
	pop {R1-R3}
	str R1, [R5,#0x30]
	str R2, [R5,#0x34]
	str R3, [R5,#0x38]
	mov R1, #0
	strh R1, [R5,#4]
	strh R1, [R5,#6]
	pop {r0,r1}
	cmp R0, #0xF0
	bge loc_802FFB8
	cmp R0, #0xE0
	bge loc_802FFBC
	cmp R0, #0xD0
	bge loc_802FFC0
	cmp R0, #0x80
	bge loc_802FFB2
	ldr R3, off_802FFE8 // =off_8033770 
	b loc_802FFC4
loc_802FFB2:
	ldr R3, off_802FFEC // =off_803378C 
	sub R0, #0x80
	b loc_802FFC4
loc_802FFB8:
	mov R0, #8
	b loc_802FFCA
loc_802FFBC:
	mov R0, #0xC
	b loc_802FFCA
loc_802FFC0:
	mov R0, #0x10
	b loc_802FFCA
loc_802FFC4:
	lsl r0, r0, #2
	ldr R3, [R3,R0]
	ldr R0, [R3,R1]
loc_802FFCA:
	strb R0, [R5,#2]
	bl sub_80301E8
	bl sub_8030054
	bl loc_80302D0
	bl sub_803011A
	pop {R5-R7}
	mov R8, R5
	mov R9, R6
	mov R12, R7
	pop {R5-R7,pc}
	.balign 4, 0x00
off_802FFE8: .word off_8033770
off_802FFEC: .word off_803378C
off_802FFF0: .word byte_200BE70
.endfunc // sub_802FF4C

loc_802FFF4:
	push {R4-R7,lr}
	mov R0, R8
	mov R1, R9
	mov R2, R12
	push {R0-R2}
	mov R5, R10
	ldr R5, [R5,#0xC]
	ldr R0, off_8030030 // =off_8030034 
	ldrb R1, [R5,#3]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	.hword 0xF000
	.word 0xF000F8EB, 0x4809F81F, 0x584078A9, 0x470046FE, 0xF87BF000
	.word 0x4680BC07, 0x46944689, 0xBDF0
off_8030030: .word off_8030034
off_8030034: .word nullsub_7+1
	.word sub_8030126+1
	.word off_8030040
off_8030040: .word sub_8030136+1
	.word sub_8030136+1
	.word sub_8030158+1
	.word sub_8030194+1
	.word sub_8030136+1
.func
.thumb_func
sub_8030054:
	push {lr}
	ldr R0, off_8030064 // =loc_8030068 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8030064: .word loc_8030068
.endfunc // sub_8030054

loc_8030068:
	lsl r5, r7, #1
	lsr r3, r0, #0x20
	lsl r5, r7, #1
	lsr r3, r0, #0x20
	lsl r5, r5, #2
	lsr r3, r0, #0x20
	lsl r5, r0, #4
	lsr r3, r0, #0x20
	lsl r5, r7, #1
	lsr r3, r0, #0x20
	mov R1, #0
	ldr R4, [R5,#0x3C]
	sub r1, r1, r4
	mov R6, #0
	ldr R4, [R5,#0x40]
	sub r6, r6, r4
	add r7, r6, #0
	mov R8, R1
	add r1, r1, r6
	asr r1, r1, #0x10
	neg R1, R1
	strh R1, [R5,#4]
	add r6, r7, #0
	mov R2, R8
	sub r6, r6, r2
	asr r6, r6, #1
	mov R4, #0
	sub r6, r6, r4
	ldr R2, [R5,#0x44]
	add r6, r6, r2
	asr r6, r6, #0x10
	neg R6, R6
	strh R6, [R5,#6]
	mov PC, LR
	ldr R1, [R5,#0x3C]
	ldr R2, [R5,#0x18]
	cmp R1, R2
	bge loc_80300B6
	add r1, r2, #0
loc_80300B6:
	ldr R2, [R5,#0x1C]
	cmp R1, R2
	ble loc_80300BE
	add r1, r2, #0
loc_80300BE:
	str R1, [R5,#0x3C]
	asr r1, r1, #0x10
	strh R1, [R5,#4]
	ldr R6, [R5,#0x44]
	ldr R4, [R5,#0x40]
	ldr R2, [R5,#0x24]
	add r2, r2, r6
	cmp R4, R2
	bge loc_80300D2
	add r4, r2, #0
loc_80300D2:
	ldr R2, [R5,#0x20]
	add r2, r2, r6
	cmp R4, R2
	ble loc_80300DC
	add r4, r2, #0
loc_80300DC:
	str R4, [R5,#0x40]
	add r6, r4, #0
	ldr R4, [R5,#0x44]
	ldr R2, [R5,#0x24]
	add r2, r2, r6
	str R2, [R5,#0x2C]
	cmp R4, R2
	bge loc_80300EE
	add r4, r2, #0
loc_80300EE:
	ldr R2, [R5,#0x20]
	add r2, r2, r6
	str R2, [R5,#0x28]
	cmp R4, R2
	ble loc_80300FA
	add r4, r2, #0
loc_80300FA:
	str R4, [R5,#0x44]
	sub r6, r6, r4
	asr r6, r6, #0x10
	strh R6, [R5,#6]
locret_8030102:
	mov PC, LR
	ldr R4, [R5,#0x3C]
	asr r4, r4, #0x10
	add R4, #0x80
	add R4, #8
	strh R4, [R5,#4]
	ldr R4, [R5,#0x40]
	asr r4, r4, #0x10
	add R4, #0x80
	add r4, #0x30 
	strh R4, [R5,#6]
	mov PC, LR
.func
.thumb_func
sub_803011A:
	ldrh R1, [R5,#4]
	strh R1, [R5,#8]
	ldrh R1, [R5,#6]
	strh R1, [R5,#0xA]
	mov PC, LR
.endfunc // sub_803011A

.func
.thumb_func
nullsub_7:
	mov PC, LR
.endfunc // nullsub_7

.func
.thumb_func
sub_8030126:
	ldr R7, [R5,#0x14]
	ldr R2, [R7]
	str R2, [R5,#0x30]
	ldr R2, [R7,#4]
	str R2, [R5,#0x34]
	ldr R2, [R7,#8]
	str R2, [R5,#0x38]
	mov PC, LR
.endfunc // sub_8030126

.func
.thumb_func
sub_8030136:
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#8]
	sub r1, r1, r2
	ldrh R4, [R5,#6]
	ldrh R2, [R5,#0xA]
	sub r4, r4, r2
	mov R0, R10
	ldr R0, [R0,#8]
	ldrh R6, [R0,#0x10]
	add r6, r6, r1
	ldrh R7, [R0,#0x12]
	add r7, r7, r4
	strh R6, [R0,#0x10]
	strh R7, [R0,#0x12]
	strh R6, [R0,#0x14]
	strh R7, [R0,#0x16]
	mov PC, LR
.endfunc // sub_8030136

.func
.thumb_func
sub_8030158:
	push {R4-R7,lr}
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#8]
	sub r1, r1, r2
	ldrh R4, [R5,#6]
	ldrh R2, [R5,#0xA]
	sub r4, r4, r2
	mov R0, R10
	ldr R0, [R0,#8]
	ldrh R6, [R0,#0x14]
	add r6, r6, r1
	ldrh R7, [R0,#0x16]
	add r7, r7, r4
	strh R6, [R0,#0x14]
	strh R7, [R0,#0x16]
	push {r1,r4}
	bl sub_80269E2
	pop {r1,r4}
	tst R0, R0
	bne locret_8030192
	mov R0, R10
	ldr R0, [R0,#8]
	ldrh R6, [R0,#0x18]
	add r6, r6, r1
	ldrh R7, [R0,#0x1A]
	add r7, r7, r4
	strh R6, [R0,#0x18]
	strh R7, [R0,#0x1A]
locret_8030192:
	pop {R4-R7,pc}
.endfunc // sub_8030158

.func
.thumb_func
sub_8030194:
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#8]
	sub r1, r1, r2
	ldrh R4, [R5,#6]
	ldrh R2, [R5,#0xA]
	sub r4, r4, r2
	mov R0, R10
	ldr R0, [R0,#8]
	ldrh R6, [R0,#0x10]
	add r6, r6, r1
	ldrh R7, [R0,#0x12]
	add r7, r7, r4
	strh R6, [R0,#0x10]
	strh R7, [R0,#0x12]
	mov PC, LR
.endfunc // sub_8030194

.func
.thumb_func
sub_80301B2:
	mov R2, R10
	ldr R2, [R2,#0xC]
	strb R0, [R2,#3]
	str R1, [R2,#0x14]
	mov PC, LR
.endfunc // sub_80301B2

	mov R2, R10
	ldr R2, [R2,#0xC]
	mov R0, #1
	strb R0, [R2,#3]
	mov R1, R10
	ldr R1, [R1,#0x3C]
	ldr R1, [R1,#0x18]
	add R1, #0x1C
	str R1, [R2,#0x14]
	mov PC, LR
.func
.thumb_func
sub_80301D0:
	mov R3, R10
	ldr R3, [R3,#0xC]
	ldr R0, [R3,#0x30]
	ldr R1, [R3,#0x34]
	ldr R2, [R3,#0x38]
	mov PC, LR
.endfunc // sub_80301D0

.func
.thumb_func
sub_80301DC:
	mov R3, R10
	ldr R3, [R3,#0xC]
	str R0, [R3,#0x30]
	str R1, [R3,#0x34]
	str R2, [R3,#0x38]
	mov PC, LR
.endfunc // sub_80301DC

.func
.thumb_func
sub_80301E8:
	push {lr}
	bl sub_80269D0
	tst R0, R0
	bne loc_8030200
	bl sub_800A7D0 // () -> (zf, int)
	beq loc_8030200
	bl sub_800A0A4
	tst R0, R0
	beq loc_8030214
loc_8030200:
	ldrh R0, [R5,#0xC]
loc_8030202:
	cmp R0, #0
	beq loc_8030214
	ldrh R6, [R5,#0xE]
	lsl r6, r6, #3
	ldr R7, off_8030280 // =dword_8030284 
	add r7, r7, r6
	sub r1, r0, #1
	strh R1, [R5,#0xC]
	b loc_8030226
loc_8030214:
	ldrh R0, [R5,#0x10]
	cmp R0, #0
	beq loc_8030266
	ldrh R6, [R5,#0x12]
	lsl r6, r6, #3
	ldr R7, off_8030280 // =dword_8030284 
	add r7, r7, r6
	sub r1, r0, #1
	strh R1, [R5,#0x10]
loc_8030226:
	bl rng_800154C // () -> void
	ldr R2, [R7]
	and R0, R2
	lsl r0, r0, #0x10
	ldr R2, [R7,#4]
	sub r0, r0, r2
	ldr R2, [R5,#0x30]
	add r2, r2, r0
	str R2, [R5,#0x3C]
	mov R4, #0
	str R4, [R5,#0x48]
	ldr R4, off_803027C // =sCamera+76 
	ldrb R4, [R4]
	tst R4, R4
	beq loc_803024C
	neg R0, R0
	lsl r0, r0, #1
	str R0, [R5,#0x48]
loc_803024C:
	bl rng_800154C // () -> void
	ldr R2, [R7]
	and R0, R2
	lsl r0, r0, #0x10
	ldr R2, [R7,#4]
	sub r0, r0, r2
	ldr R2, [R5,#0x34]
	add r2, r2, r0
	str R2, [R5,#0x40]
	ldr R2, [R5,#0x38]
	str R2, [R5,#0x44]
	pop {pc}
loc_8030266:
	mov R2, #0
	strh R2, [R5,#0xE]
	ldr R2, [R5,#0x30]
	str R2, [R5,#0x3C]
	ldr R2, [R5,#0x34]
	str R2, [R5,#0x40]
	ldr R2, [R5,#0x38]
	str R2, [R5,#0x44]
	mov R2, #0
	str R2, [R5,#0x48]
	pop {pc}
off_803027C: .word sCamera+0x4C // sCamera.unk_4C
off_8030280: .word dword_8030284
dword_8030284: .word 0x1, 0x10000, 0x3, 0x20000, 0x7, 0x40000, 0xF, 0x80000, 0x21002000
.endfunc // sub_80301E8

.func
.thumb_func
sub_80302A8:
	mov R2, R10
	ldr R2, [R2,#0xC]
	strh R0, [R2,#0xE]
	strh R1, [R2,#0xC]
	mov PC, LR
	.byte  0
	.byte 0x20
	.byte  0
	.byte 0x21 
.endfunc // sub_80302A8

.func
.thumb_func
sub_80302B6:
	mov R2, R10
	ldr R2, [R2,#0xC]
	strh R0, [R2,#0x12]
	strh R1, [R2,#0x10]
	mov PC, LR
.endfunc // sub_80302B6

.func
.thumb_func
sub_80302C0:
	mov R2, R10
	ldr R2, [R2,#0xC]
	ldrh R3, [R2,#0xE]
	cmp R0, R3
	blt locret_80302CE
	strh R0, [R2,#0xE]
	strh R1, [R2,#0xC]
locret_80302CE:
	mov PC, LR
.endfunc // sub_80302C0

loc_80302D0:
	push {lr}
	ldr R0, off_80302E0 // =loc_80302E4 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.byte 0, 0
off_80302E0: .word loc_80302E4
loc_80302E4:
	lsl r1, r7, #0xb
	lsr r3, r0, #0x20
	lsl r7, r2, #0xc
	lsr r3, r0, #0x20
	lsl r7, r6, #0xc
	lsr r3, r0, #0x20
	lsl r7, r3, #0xd
	lsr r3, r0, #0x20
	lsl r3, r7, #0xd
	lsr r3, r0, #0x20
	mov R7, R10
	ldr R5, [R7,#0xC]
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#6]
	ldr R3, [R7,#8]
	mov R4, #0xFF
	and R1, R4
	strh R1, [R3,#0x10]
loc_8030308:
	strh R1, [R3,#0x14]
	strh R1, [R3,#0x18]
	and R2, R4
	strh R2, [R3,#0x12]
	strh R2, [R3,#0x16]
	strh R2, [R3,#0x1A]
	mov PC, LR
	mov R7, R10
	ldr R5, [R7,#0xC]
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#6]
	ldr R3, [R7,#8]
	mov R4, #0xFF
	and R1, R4
	strh R1, [R3,#0x10]
	strh R1, [R3,#0x14]
	and R2, R4
	strh R2, [R3,#0x12]
	strh R2, [R3,#0x16]
	mov R1, #0
	strh R1, [R3,#0x18]
	strh R1, [R3,#0x1A]
	mov PC, LR
	mov R7, R10
	ldr R5, [R7,#0xC]
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#6]
	ldr R3, [R7,#8]
	mov R4, #0xFF
	and R1, R4
	strh R1, [R3,#0x10]
	strh R1, [R3,#0x14]
	strh R1, [R3,#0x18]
	and R2, R4
	strh R2, [R3,#0x12]
	strh R2, [R3,#0x16]
	strh R2, [R3,#0x1A]
	mov R1, #0
	strh R1, [R3,#0x10]
	strh R1, [R3,#0x12]
	strh R1, [R3,#0x18]
	strh R1, [R3,#0x1A]
	mov PC, LR
	mov R7, R10
	ldr R5, [R7,#0xC]
	ldrh R1, [R5,#4]
	ldrh R2, [R5,#6]
	ldr R3, [R7,#8]
	mov R4, #0xFF
	lsl r4, r4, #1
	add R4, #1
	and R1, R4
	strh R1, [R3,#0x10]
	sub R2, #8
	and R2, R4
	strh R2, [R3,#0x12]
	mov PC, LR
	mov PC, LR
.func
.thumb_func
sub_803037C:
	push {R4-R7,lr}
	mov R2, R8
	mov R3, R9
	mov R4, R12
	push {R2-R4}
	ldr R5, off_80305E0 // =byte_200BE70 
	cmp R0, #0x80
	bge loc_8030392
	ldr R3, off_80303D8 // =off_80329A8 
	ldr R4, off_80303DC // =off_8032F6C 
	b loc_8030398
loc_8030392:
	ldr R3, off_80303E0 // =off_80329C4 
	ldr R4, off_80303E4 // =off_8032F88 
	sub R0, #0x80
loc_8030398:
	lsl r0, r0, #2
	ldr R3, [R3,R0]
	mov R2, #0xC
	mul R2, R1
	add r3, r3, r2
	str R3, [R5,#0x8] // (dword_200BE78 - 0x200BE70)
	ldr R4, [R4,R0]
	mov R2, #0xC
	mul R2, R1
	add r4, r4, r2
	ldr R2, [R4]
	str R2, [R5,#0x18] // (dword_200BE88 - 0x200BE70)
	ldr R2, [R4,#4]
	str R2, [R5,#0x1C] // (dword_200BE8C - 0x200BE70)
	ldr R2, [R4,#8]
	str R2, [R5,#0x20] // (dword_200BE90 - 0x200BE70)
	ldr R0, [R3,#8]
	ldr R1, off_803057C // =decomp_2013A00 
	ldrb R2, [R0]
	strb R2, [R5]
	ldrb R2, [R0,#1]
	strb R2, [R5,#0x1] // (byte_200BE71 - 0x200BE70)
	ldr R2, [R3,#4]
	str R2, [R5,#0x10] // (dword_200BE80 - 0x200BE70)
	ldr R2, [R3]
	str R2, [R5,#0x14] // (dword_200BE84 - 0x200BE70)
	str R1, [R5,#0xC] // (dword_200BE7C - 0x200BE70)
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
off_80303D8: .word off_80329A8
off_80303DC: .word off_8032F6C
off_80303E0: .word off_80329C4
off_80303E4: .word off_8032F88
.endfunc // sub_803037C

.func
.thumb_func
sub_80303E8:
	ldr R1, off_80305E0 // =byte_200BE70 
	mov r0, #0x20 
	strb R0, [R1]
	strb R0, [R1,#0x1] // (byte_200BE71 - 0x200BE70)
	mov PC, LR
.endfunc // sub_80303E8

.func
.thumb_func
sub_80303F2:
	ldr R1, off_80305E0 // =byte_200BE70 
	mov r0, #0x40 
	strb R0, [R1]
	strb R0, [R1,#0x1] // (byte_200BE71 - 0x200BE70)
	mov PC, LR
.endfunc // sub_80303F2

	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	push {r4,r5}
	add r5, r0, #0
	mov R1, #0
	ldr R4, [R5]
	sub r1, r1, r4
	mov R6, #0
	ldr R4, [R5,#4]
	sub r6, r6, r4
	add r7, r6, #0
	mov R8, R1
	add r1, r1, r6
	asr r1, r1, #0x10
	neg R1, R1
	add r6, r7, #0
	mov R2, R8
	sub r6, r6, r2
	asr r6, r6, #1
	mov R4, #0
	sub r6, r6, r4
	ldr R2, [R5,#8]
	add r6, r6, r2
	asr r6, r6, #0x10
	neg R6, R6
	ldr R5, off_80305E0 // =byte_200BE70 
	asr r1, r1, #3
	asr r6, r6, #3
	ldrb R2, [R5]
	lsr r2, r2, #1
	ldrb R3, [R5,#0x1] // (byte_200BE71 - 0x200BE70)
	lsr r3, r3, #1
	add r1, r1, r2
	add r6, r6, r3
	cmp R1, #0
	bge loc_8030448
	b loc_8030468
loc_8030448:
	ldrb R2, [R5]
	cmp R1, R2
	blt loc_8030450
	b loc_8030468
loc_8030450:
	cmp R6, #0
	bge loc_8030456
	b loc_8030468
loc_8030456:
	ldrb R3, [R5,#0x1] // (byte_200BE71 - 0x200BE70)
	cmp R6, R3
	blt loc_803045E
	b loc_8030468
loc_803045E:
	pop {r4,r5}
	mov R8, R4
	mov R9, R5
	mov R0, #0
	pop {R4-R7,pc}
loc_8030468:
	pop {r4,r5}
	mov R8, R4
	mov R9, R5
	mov R0, #1
	pop {R4-R7,pc}
loc_8030472:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R5, off_80305E0 // =byte_200BE70 
	ldr R0, [R5,#0x10] // (dword_200BE80 - 0x200BE70)
	mov R2, #0xD
	lsl r2, r2, #5
	add R0, #4
	ldr R1, off_80304E0 // =byte_3001960 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	mov R0, #0
	ldr R7, [R5,#0x14] // (dword_200BE84 - 0x200BE70)
	add r6, r7, #0
loc_8030492:
	push {r0,r6}
	ldr R0, [R7,#4]
	add r0, r0, r6
	ldr R1, off_803057C // =decomp_2013A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R0, off_803057C // =decomp_2013A00 
	ldr R1, [R7,#8]
	ldr R2, dword_80304E4 // =0x6000000 
	add r1, r1, r2
	ldr R2, [R7]
	lsl r2, r2, #2
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	add R7, #0xC
	pop {r0,r6}
	add R0, #1
	cmp R0, #2
	blt loc_8030492
	ldr R3, [R5,#0x8] // (dword_200BE78 - 0x200BE70)
	ldr R0, [R3,#8]
	ldr R1, off_803057C // =decomp_2013A00 
	mov R2, #0xC
	push {r0,r1}
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r0,r1}
	add R0, #0xC
	add R1, #0xC
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R0, [R5,#0x1C] // (dword_200BE8C - 0x200BE70)
	mov LR, PC
	bx r0
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
off_80304E0: .word byte_3001960
dword_80304E4: .word 0x6000000
.func
.thumb_func
sub_80304E8:
	push {R4-R7,lr}
	add r5, r0, #0
	ldr R0, [R5,#0x10]
	tst R0, R0
	beq loc_80304FC
	add R0, #4
	ldr R1, [R5,#0x14]
	ldr R2, [R5,#0x18]
	bl loc_8000AC8
loc_80304FC:
	ldr R7, [R5]
	tst R7, R7
	beq locret_803053A
	ldr R0, [R7,#4]
	// src
	add r0, r0, r7
	// dest
	ldr R1, src // =unk_2034A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R0, src // =unk_2034A00 
	ldr R1, [R5,#4]
	ldr R2, [R7]
	lsl r2, r2, #2
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	ldr R0, [R5,#8]
	// dest
	ldr R1, src // =unk_2034A00 
	// src
	add R0, #0xC
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R0, src // =unk_2034A00 
	ldr R1, [R5,#0xC]
	mov R2, R10
	ldr R2, [R2,#0x28]
	add r1, r1, r2
	ldr R3, [R5,#8]
	ldrb R2, [R3]
	ldrb R3, [R3,#1]
	mul R2, R3
	lsl r2, r2, #1
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
locret_803053A:
	pop {R4-R7,pc}
src: .word unk_2034A00
.endfunc // sub_80304E8

.func
.thumb_func
sub_8030540:
	push {R4-R7,lr}
	add r5, r0, #0
	ldr R0, [R5,#0x10]
	tst R0, R0
	beq loc_8030554
	add R0, #4
	ldr R1, [R5,#0x14]
	ldr R2, [R5,#0x18]
	bl loc_8000AC8
loc_8030554:
	ldr R0, [R5,#8]
	// dest
	ldr R1, off_8030578 // =unk_2034A00 
	// src
	add R0, #0xC
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R0, off_8030578 // =unk_2034A00 
	ldr R1, [R5,#0xC]
	mov R2, R10
	ldr R2, [R2,#0x28]
	add r1, r1, r2
	ldr R3, [R5,#8]
	ldrb R2, [R3]
	ldrb R3, [R3,#1]
	mul R2, R3
	lsl r2, r2, #1
	bl loc_8000AC8
	pop {R4-R7,pc}
off_8030578: .word unk_2034A00
off_803057C: .word decomp_2013A00
.endfunc // sub_8030540

.func
.thumb_func
sub_8030580:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	mov R3, R10
	ldr R3, [R3,#0xC]
	ldr R5, off_80305E0 // =byte_200BE70 
	mov R4, #4
	ldrsh R0, [R3,R4]
	mov R4, #6
	ldrsh R1, [R3,R4]
	asr r0, r0, #3
	asr r1, r1, #3
	mov R4, #0x4 // (word_200BE74 - 0x200BE70)
	ldrsh R2, [R5,R4]
	cmp R0, R2
	beq loc_80305BC
	bgt loc_80305B2
	sub r2, r2, r0
	push {r0,r1}
	bl sub_803066E
	pop {r0,r1}
	b loc_80305BC
loc_80305B2:
	sub r2, r0, r2
	push {r0,r1}
	bl sub_80306C8
	pop {r0,r1}
loc_80305BC:
	mov R4, #0x6 // (word_200BE76 - 0x200BE70)
	ldrsh R2, [R5,R4]
	cmp R1, R2
	beq loc_80305D4
	bgt loc_80305CE
	sub r2, r2, r1
	bl loc_8030722
	b loc_80305D4
loc_80305CE:
	sub r2, r1, r2
	bl loc_803077C
loc_80305D4:
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
	.byte 0, 0
off_80305E0: .word byte_200BE70
.endfunc // sub_8030580

.func
.thumb_func
sub_80305E4:
	cmp R0, #0
	bge loc_80305EA
	b loc_8030622
loc_80305EA:
	ldrb R6, [R5]
	cmp R0, R6
	blt loc_80305F2
	b loc_8030622
loc_80305F2:
	cmp R1, #0
	bge loc_80305F8
	b loc_8030622
loc_80305F8:
	ldrb R6, [R5,#1]
	cmp R1, R6
	blt loc_8030600
	b loc_8030622
loc_8030600:
	ldr R3, [R5,#0xC]
	mov R4, #8
	ldrb R7, [R5]
	lsl r7, r7, #1
loc_8030608:
	ldr R2, [R3,R4]
	add r2, r2, r3
	lsl r6, r0, #1
	add r2, r2, r6
	add r6, r1, #0
	mul R6, R7
	ldrh R2, [R2,R6]
	push {r2}
	sub R4, #4
	cmp R4, #0
	bgt loc_8030608
	pop {r0,r1}
	mov PC, LR
loc_8030622:
	mov R0, #0
	mov R1, #0
	b loc_8030600
.endfunc // sub_80305E4

.func
.thumb_func
sub_8030628:
	push {r0,r1}
	mov R2, #1
loc_803062C:
	pop {r0}
	mov R7, R10
	ldr R7, [R7,#0x28]
	lsl r6, r2, #0xb
	add r7, r7, r6
	lsl r6, r3, #1
	add r7, r7, r6
	lsl r6, r4, #6
	strh R0, [R7,R6]
	add R2, #1
	cmp R2, #2
	ble loc_803062C
	mov PC, LR
.endfunc // sub_8030628

.func
.thumb_func
sub_8030646:
	mov R2, #2
	mov R7, R10
	ldr R7, [R7,#0x28]
	lsl r6, r2, #0xb
	add r7, r7, r6
	lsl r6, r3, #1
	add r7, r7, r6
	lsl r6, r4, #6
	strh R1, [R7,R6]
	mov PC, LR
.endfunc // sub_8030646

.func
.thumb_func
sub_803065A:
	mov R2, #1
	mov R7, R10
	ldr R7, [R7,#0x28]
	lsl r6, r2, #0xb
	add r7, r7, r6
	lsl r6, r3, #1
	add r7, r7, r6
	lsl r6, r4, #6
	strh R1, [R7,R6]
	mov PC, LR
.endfunc // sub_803065A

.func
.thumb_func
sub_803066E:
	push {lr}
	strh R0, [R5,#4]
	cmp R2, #5
	blt loc_803067E
	ldr R3, [R5,#0x20]
	mov LR, PC
	bx r3
	b locret_80306C6
loc_803067E:
	push {r1}
	mov R7, #0
loc_8030682:
	push {r2,r7}
	mov R8, R0
	mov R9, R1
	sub R0, #0xF
	sub R1, #0xA
	ldrb R6, [R5]
	lsr r6, r6, #1
	ldrb R7, [R5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov R4, R9
	mov R3, R8
	sub r3, #0x20 
	mov R6, #0x1F
	and R3, R6
	and R4, R6
	ldr R6, [R5,#0x18]
	mov LR, PC
	bx r6
	pop {r2,r7}
	mov R0, R8
	mov R1, R9
	add R1, #1
	add R7, #1
	cmp r7, #0x20 
	blt loc_8030682
	pop {r1}
	add R0, #1
	sub R2, #1
	cmp R2, #0
	bgt loc_803067E
locret_80306C6:
	pop {pc}
.endfunc // sub_803066E

.func
.thumb_func
sub_80306C8:
	push {lr}
	strh R0, [R5,#4]
	cmp R2, #5
	blt loc_80306D8
	ldr R3, [R5,#0x20]
	mov LR, PC
	bx r3
	b locret_8030720
loc_80306D8:
	push {r1}
	mov R7, #0
loc_80306DC:
	push {r2,r7}
	mov R8, R0
	mov R9, R1
	add R0, #0xF
	sub R1, #0xA
	ldrb R6, [R5]
	lsr r6, r6, #1
	ldrb R7, [R5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov R4, R9
	mov R3, R8
	add R3, #0x1E
	mov R6, #0x1F
	and R3, R6
	and R4, R6
	ldr R6, [R5,#0x18]
	mov LR, PC
	bx r6
	pop {r2,r7}
	mov R0, R8
	mov R1, R9
	add R1, #1
	add R7, #1
	cmp r7, #0x20 
	blt loc_80306DC
	pop {r1}
	sub R0, #1
	sub R2, #1
	cmp R2, #0
	bgt loc_80306D8
locret_8030720:
	pop {pc}
.endfunc // sub_80306C8

loc_8030722:
	push {lr}
	strh R1, [R5,#6]
	cmp R2, #5
	blt loc_8030732
	ldr R3, [R5,#0x20]
	mov LR, PC
	bx r3
	b locret_803077A
loc_8030732:
	push {r0}
	mov R7, #0
loc_8030736:
	push {r2,r7}
	mov R8, R0
	mov R9, R1
	sub R0, #0xF
	sub R1, #0xA
	ldrb R6, [R5]
	lsr r6, r6, #1
	ldrb R7, [R5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov R4, R9
	mov R3, R8
	sub r4, #0x20 
	mov R6, #0x1F
	and R3, R6
	and R4, R6
	ldr R6, [R5,#0x18]
	mov LR, PC
	bx r6
	pop {r2,r7}
	mov R0, R8
	mov R1, R9
	add R0, #1
	add R7, #1
	cmp r7, #0x20 
	blt loc_8030736
	pop {r0}
	add R1, #1
	sub R2, #1
	cmp R2, #0
	bgt loc_8030732
locret_803077A:
	pop {pc}
loc_803077C:
	push {lr}
	strh R1, [R5,#6]
	cmp R2, #5
	blt loc_803078C
	ldr R3, [R5,#0x20]
	mov LR, PC
	bx r3
	b locret_80307D4
loc_803078C:
	push {r0}
	mov R7, #0
loc_8030790:
	push {r2,r7}
	mov R8, R0
	mov R9, R1
	sub R0, #0xF
	add R1, #0xA
	ldrb R6, [R5]
	lsr r6, r6, #1
	ldrb R7, [R5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov R4, R9
	mov R3, R8
	add R4, #0x14
	mov R6, #0x1F
	and R3, R6
	and R4, R6
	ldr R6, [R5,#0x18]
	mov LR, PC
	bx r6
	pop {r2,r7}
	mov R0, R8
	mov R1, R9
	add R0, #1
	add R7, #1
	cmp r7, #0x20 
	blt loc_8030790
	pop {r0}
	sub R1, #1
	sub R2, #1
	cmp R2, #0
	bgt loc_803078C
locret_80307D4:
	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_80307D8:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	mov R3, R10
	ldr R3, [R3,#0xC]
	mov R4, #4
	ldrsh R0, [R3,R4]
	mov R4, #6
	ldrsh R1, [R3,R4]
	asr r0, r0, #3
	asr r1, r1, #3
	ldr R5, off_8030804 // =byte_200BE70 
	bl sub_803086C
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8030804: .word byte_200BE70
.endfunc // sub_80307D8

.func
.thumb_func
sub_8030808:
	push {lr}
	mov R7, R10
	ldr R0, [R7,#0xC]
	mov R1, #4
	ldrsh R3, [R0,R1]
	mov R1, #6
	ldrsh R4, [R0,R1]
	asr r3, r3, #3
	asr r4, r4, #3
	strh R3, [R5,#4]
	strh R4, [R5,#6]
	mov R1, #0
loc_8030820:
	push {r3}
	mov R0, #0
loc_8030824:
	push {r0,r1}
	add r0, r3, #0
	add r1, r4, #0
	sub R0, #0xF
	sub R1, #0xA
	ldrb R6, [R5]
	lsr r6, r6, #1
	ldrb R7, [R5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	mov R8, R3
	mov R9, R4
loc_803083E:
	bl sub_80305E4
	mov R3, R8
	mov R4, R9
	mov R6, #0x1F
	and R3, R6
	and R4, R6
	ldr R6, [R5,#0x18]
	mov LR, PC
	bx r6
	mov R3, R8
	mov R4, R9
	add R3, #1
	pop {r0,r1}
	add R0, #1
	cmp r0, #0x20 
	blt loc_8030824
	pop {r3}
	add R4, #1
	add R1, #1
	cmp r1, #0x20 
	blt loc_8030820
	pop {pc}
.endfunc // sub_8030808

.func
.thumb_func
sub_803086C:
	push {R4-R7,lr}
	mov R8, R0
	mov R9, R1
	ldr R4, [R5,#0xC]
	ldr R0, [R4,#4]
	add r0, r0, r4
	mov R1, #1
	ldrb R2, [R5]
	ldrb R3, [R5,#1]
	bl sub_8030892
	ldr R0, [R4,#8]
	add r0, r0, r4
	mov R1, #2
	ldrb R2, [R5]
	ldrb R3, [R5,#1]
	bl sub_8030892
	pop {R4-R7,pc}
.endfunc // sub_803086C

.func
.thumb_func
sub_8030892:
	push {R4-R7,lr}
	sub sp, sp, #8
	str R2, [SP]
	str R3, [SP,#4]
	add r7, r0, #0
	add r6, r1, #0
	mov R5, #0
loc_80308A0:
	mov R0, R8
	mov R1, R9
	add r1, r1, r5
	sub R0, #0xF
	sub R1, #0xA
	ldr R2, [SP]
	lsr r2, r2, #1
	ldr R3, [SP,#4]
	lsr r3, r3, #1
	add r0, r0, r2
	add r1, r1, r3
	blt loc_80308E0
	ldr R2, [SP,#4]
	cmp R1, R2
	bge loc_80308E0
	ldr R2, [SP]
	lsl r2, r2, #1
	lsl r0, r0, #1
	mul R2, R1
	add r3, r0, r2
	mov R0, R8
	mov R1, R9
	add r1, r1, r5
	mov R2, #0x1F
	and R0, R2
	and R1, R2
	add r2, r6, #0
	add r3, r3, r7
	mov r4, #0x20 
	bl sub_80018E0
	b loc_80308FA
loc_80308E0:
	push {r5}
	mov R0, #0
	mov R1, R9
	add r1, r1, r5
	mov R2, #0x1F
	and R1, R2
	add r2, r6, #0
	mov R3, #0
	mov r4, #0x20 
	mov R5, #1
	bl sub_80018D0
	pop {r5}
loc_80308FA:
	add R5, #1
	cmp r5, #0x20 
	blt loc_80308A0
	add sp, sp, #8
	pop {R4-R7,pc}
off_8030904: .word sub_804CE90+1
off_8030908: .word sub_804E62C+1
	.word sub_8052688+1
	.word sub_80595B8+1
	.word sub_805DF08+1
	.word sub_806036C+1
	.word sub_8062AB0+1
off_8030920: .word sub_804CF32+1
	.word sub_804E6D0+1
	.word sub_8052764+1
	.word sub_8059664+1
	.word sub_805DFA2+1
	.word sub_8060406+1
	.word sub_8062B64+1
off_803093C: .word sub_80663D0+1
	.word sub_8067B5C+1
	.word sub_8069038+1
	.word sub_8069FE8+1
	.word locret_80309FC+1
	.word sub_806AA00+1
	.word locret_80309FC+1
	.word locret_80309FC+1
	.word sub_806C23C+1
	.word locret_80309FC+1
	.word locret_80309FC+1
	.word locret_80309FC+1
	.word sub_806D8F8+1
	.word sub_806FC08+1
	.word locret_80309FC+1
	.word locret_80309FC+1
	.word sub_8071B50+1
	.word sub_807544C+1
	.word sub_8077D00+1
	.word sub_807931C+1
	.word sub_807A8E0+1
	.word sub_807CDEC+1
	.word sub_807ECD0+1
off_8030998: .word sub_8066450+1
	.word sub_8067BE4+1
	.word sub_80690C2+1
	.word sub_806A070+1
	.word locret_80309FE+1
	.word sub_806AAAA+1
	.word locret_80309FE+1
	.word locret_80309FE+1
	.word sub_806C2E2+1
	.word locret_80309FE+1
	.word locret_80309FE+1
	.word locret_80309FE+1
	.word sub_806D9FC+1
	.word sub_806FCF8+1
	.word locret_80309FE+1
	.word locret_80309FE+1
	.word sub_8071BE4+1
	.word sub_80754E2+1
	.word sub_8077D8A+1
	.word sub_807939A+1
	.word sub_807A974+1
	.word sub_807CE90+1
	.word sub_807ED6C+1
off_80309F4: .word locret_80309FC+1
off_80309F8: .word locret_80309FE+1
.endfunc // sub_8030892

locret_80309FC:
	mov PC, LR
locret_80309FE:
	mov PC, LR
.func
.thumb_func
sub_8030A00:
	push {lr}
	cmp R0, #0xF0
	bge loc_8030A14
	cmp R0, #0x80
	bge loc_8030A0E
	ldr R1, off_8030A24 // =off_8030904 
	b loc_8030A18
loc_8030A0E:
	ldr R1, off_8030A28 // =off_803093C 
	sub R0, #0x80
	b loc_8030A18
loc_8030A14:
	ldr R1, off_8030A2C // =off_80309F4 
	sub R0, #0xF0
loc_8030A18:
	lsl r0, r0, #2
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8030A24: .word off_8030904
off_8030A28: .word off_803093C
off_8030A2C: .word off_80309F4
.endfunc // sub_8030A00

.func
.thumb_func
sub_8030A30:
	push {lr}
	cmp R0, #0xF0
	bge loc_8030A44
	cmp R0, #0x80
	bge loc_8030A3E
	ldr R2, off_8030A54 // =off_8030920 
	b loc_8030A48
loc_8030A3E:
	ldr R2, off_8030A58 // =off_8030998 
	sub R0, #0x80
	b loc_8030A48
loc_8030A44:
	ldr R2, off_8030A5C // =off_80309F8 
	sub R0, #0xF0
loc_8030A48:
	lsl r0, r0, #2
	ldr R2, [R2,R0]
	mov LR, PC
	bx r2
	pop {pc}
	.balign 4, 0x00
off_8030A54: .word off_8030920
off_8030A58: .word off_8030998
off_8030A5C: .word off_80309F8
.endfunc // sub_8030A30

.func
.thumb_func
sub_8030A60:
	push {R4-R6,lr}
	mov R4, R10
	ldr R4, [R4,#0x3C] // Toolkit.gamestate
	ldr R1, [R4,#0x20] // GameState.unk_20
	cmp R0, R1
	beq locret_8030A8A
	str R0, [R4,#0x20] // GameState.unk_20
	push {r0}
	mov R0, #4
	bl sub_80035A2
	pop {r0}
	mov R1, #0
loc_8030A7A:
	ldr R2, [R0]
	cmp R2, #0xFF
	beq locret_8030A8A
	bl sub_8030A8C
	add R1, #1
	add R0, #4
	b loc_8030A7A
locret_8030A8A:
	pop {R4-R6,pc}
.endfunc // sub_8030A60

.func
.thumb_func
sub_8030A8C:
	push {lr}
	push {R0-R2}
	mov R0, #0
	bl sub_80045C0
	pop {R0-R2}
	tst R5, R5
	beq locret_8030AA0
	strb R1, [R5,#0x10]
	str R2, [R5,#0x60]
locret_8030AA0:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8030A8C

.func
.thumb_func
sub_8030AA4:
	push {R4-R7,lr}
	mov R2, R8
	mov R3, R9
	mov R4, R12
	push {R2-R4}
	cmp R0, #0x80
	bge loc_8030AB6
	ldr R3, off_8030B00 // =pt_8033530 
	b loc_8030ABA
loc_8030AB6:
	ldr R3, off_8030B04 // =pt_803354C 
	sub R0, #0x80
loc_8030ABA:
	lsl r0, r0, #2
	add r3, r3, r0
	ldr R3, [R3]
	lsl r1, r1, #2
	add r3, r3, r1
	ldr R0, [R3]
	push {r0}
	// src
	add R0, #0x10
	// dest
	ldr R1, off_8030B08 // =unk_2027A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r6}
	ldr R7, off_8030B08 // =unk_2027A00 
	ldr R0, [R6]
	add r0, r0, r7
	bl sub_8030B0C
	ldr R0, [R6,#4]
	add r0, r0, r7
	bl sub_8031600
	ldr R0, [R6,#8]
	add r0, r0, r7
	bl sub_803189C
	ldr R0, [R6,#0xC]
	add r0, r0, r7
	bl sub_8031A68
	pop {R2-R4}
	mov R8, R2
	mov R9, R3
	mov R12, R4
	pop {R4-R7,pc}
	.byte 0, 0
off_8030B00: .word pt_8033530
off_8030B04: .word pt_803354C
off_8030B08: .word unk_2027A00
.endfunc // sub_8030AA4

.func
.thumb_func
sub_8030B0C:
	ldr R5, off_8030E10 // =dword_2011D10 
	ldr R1, [R0]
	strh R1, [R5,#0x4] // (word_2011D14 - 0x2011D10)
	add R0, #4
	str R0, [R5]
	mov R0, #0xFE
	strb R0, [R5,#0x8] // (byte_2011D18 - 0x2011D10)
	strb R0, [R5,#0x9] // (byte_2011D19 - 0x2011D10)
	mov PC, LR
.endfunc // sub_8030B0C

.func
.thumb_func
sub_8030B1E:
	push {lr}
	ldrh R2, [R5,#4]
	cmp R2, #0
	beq loc_8030B66
	mov R2, #0
	ldrh R3, [R5,#4]
	ldr R6, [R5]
	mov R8, R6
loc_8030B2E:
	add r4, r2, r3
	lsr r4, r4, #1
	lsl r7, r4, #2
	mov R6, R8
	add r6, r6, r7
	ldrh R7, [R6]
	cmp R1, R7
	beq loc_8030B4C
	bgt loc_8030B44
	add r3, r4, #0
	b loc_8030B48
loc_8030B44:
	add r2, r4, #0
	add R2, #1
loc_8030B48:
	cmp R2, R3
	blt loc_8030B2E
loc_8030B4C:
	cmp R1, R7
	bne loc_8030B66
	ldr R2, [R5]
loc_8030B52:
	sub R6, #4
	cmp R6, R2
	blt loc_8030B60
	ldrh R7, [R6]
	cmp R1, R7
	bne loc_8030B60
	b loc_8030B52
loc_8030B60:
	add R6, #4
	add r2, r6, #0
	pop {pc}
loc_8030B66:
	mov R2, #0
	pop {pc}
.endfunc // sub_8030B1E

.func
.thumb_func
sub_8030B6A:
	push {R4-R7,lr}
	mov R2, R8
	mov R3, R9
	mov R4, R12
	push {R2-R4}
	ldr R5, off_8030E10 // =dword_2011D10 
	ldr R2, off_8030C38 // =dword_200F3D0 
	str R0, [R2]
	mov R4, #0
	mov R12, R4
	strb R4, [R5,#0xB] // (byte_2011D1B - 0x2011D10)
loc_8030B80:
	add r1, r5, #0
	add R1, #0x18
	str R1, [R5,#0x14] // (dword_2011D24 - 0x2011D10)
	mov R1, #0
	strb R1, [R5,#0xA] // (byte_2011D1A - 0x2011D10)
	neg R1, R1
	strh R1, [R5,#0x6] // (word_2011D16 - 0x2011D10)
	bl sub_8030CAC
	mov R2, #0x18
	add r2, r2, r5
	str R2, [R5,#0x10] // (dword_2011D20 - 0x2011D10)
loc_8030B98:
	ldr R1, [R5,#0x14] // (dword_2011D24 - 0x2011D10)
	cmp R2, R1
	beq loc_8030C0E
	ldrh R1, [R2]
	bl sub_8030B1E
	cmp R2, #0
	bne loc_8030BB0
loc_8030BA8:
	ldr R2, [R5,#0x10] // (dword_2011D20 - 0x2011D10)
	add R2, #0x10
	str R2, [R5,#0x10] // (dword_2011D20 - 0x2011D10)
	b loc_8030B98
loc_8030BB0:
	ldrh R4, [R2]
	cmp R1, R4
	bne loc_8030BA8
	ldrh R7, [R2,#2]
	ldr R4, [R5]
	add r7, r7, r4
	mov R4, #0
	ldrsb R4, [R7,R4]
	mov R6, #0xA
	ldrsh R3, [R0,R6]
	cmp R3, R4
	blt loc_8030C0A
	ldrb R6, [R7,#2]
	add r4, r4, r6
	cmp R3, R4
	bgt loc_8030C0A
	ldrb R6, [R7,#1]
	strb R6, [R5,#0xC] // (byte_2011D1C - 0x2011D10)
	mov R4, #0x80
	tst R6, R4
	beq loc_8030BEE
	push {R0-R2}
	mov R4, #0x7F
	and R6, R4
	ldr R0, dword_8030CA8 // =0x1640 
	add r0, r0, r6
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	pop {R0-R2}
	bne loc_8030C0A
loc_8030BEE:
	ldrb R6, [R7,#3]
	lsl r6, r6, #2
	ldr R4, off_8030C3C // =dword_8030C40 
	add r4, r4, r6
	ldr R4, [R4]
	mov LR, PC
	bx r4
	ldrb R4, [R5,#0xB] // (byte_2011D1B - 0x2011D10)
	add r4, r4, r3
	strb R4, [R5,#0xB] // (byte_2011D1B - 0x2011D10)
	cmp R4, #4
	bge loc_8030C1A
	cmp R3, #0
	bne loc_8030B80
loc_8030C0A:
	add R2, #4
	b loc_8030BB0
loc_8030C0E:
	mov R0, R12
	pop {R2-R4}
	mov R8, R2
	mov R9, R3
	mov R12, R4
	pop {R4-R7,pc}
loc_8030C1A:
	ldr R0, off_8030C38 // =dword_200F3D0 
	ldr R0, [R0]
	ldr R6, [R0,#0xC]
	str R6, [R0]
	ldr R6, [R0,#0x10]
	str R6, [R0,#4]
	ldr R6, [R0,#0x14]
	str R6, [R0,#8]
	mov R0, #0
	pop {R2-R4}
	mov R8, R2
	mov R9, R3
	mov R12, R4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8030C38: .word dword_200F3D0
off_8030C3C: .word dword_8030C40
dword_8030C40: .word 0x0
	.word sub_8031388+1
	.word sub_80313B0+1
	.word sub_80313D4+1
	.word sub_80313FC+1
	.word sub_8031420+1
	.word sub_8031478+1
	.word sub_80314CC+1
	.word sub_8031520+1
	.word sub_80311F4+1
	.word sub_803123E+1
	.word sub_8031264+1
	.word sub_803128E+1
	.word sub_80312D0+1
	.word sub_8031302+1
	.word sub_8031330+1
	.word sub_803135E+1
	.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_8030CA8: .word 0x1640
.endfunc // sub_8030B6A

.func
.thumb_func
sub_8030CAC:
	push {lr}
	push {r0,r5}
	mov R2, #0xE
	ldrsh R4, [R0,R2]
	mov R2, #0x12
	ldrsh R7, [R0,R2]
	bl sub_8030DA2
	mov R2, #2
	ldrsh R1, [R0,R2]
	mov R2, #0xE
	ldrsh R2, [R0,R2]
	sub r1, r1, r2
	add r6, r1, #0
	cmp R6, #0
	bge loc_8030CCE
	neg R6, R6
loc_8030CCE:
	mov R3, #6
	ldrsh R2, [R0,R3]
	mov R3, #0x12
	ldrsh R3, [R0,R3]
	sub r2, r2, r3
	add r7, r2, #0
	cmp R7, #0
	bge loc_8030CE0
	neg R7, R7
loc_8030CE0:
	cmp R6, R7
	bgt loc_8030CEC
	blt loc_8030D28
	cmp R1, #0
	bne loc_8030D64
	b loc_8030D92
loc_8030CEC:
	mov R3, #0xE
	ldrsh R4, [R0,R3]
	mov R3, #2
	ldrsh R6, [R0,R3]
	mov R3, #0x12
	ldrsh R7, [R0,R3]
	mov R3, #1
	mov R0, #1
	cmp R1, #0
	bge loc_8030D04
	neg R3, R3
	neg R1, R1
loc_8030D04:
	cmp R2, #0
	bge loc_8030D0C
	neg R0, R0
	neg R2, R2
loc_8030D0C:
	mvn R5, R1
loc_8030D0E:
	add r4, r4, r3
	cmp R4, R6
	beq loc_8030D92
	add r5, r5, r2
	add r5, r5, r2
	cmp R5, R1
	blt loc_8030D22
	add r7, r7, r0
	sub r5, r5, r1
	sub r5, r5, r1
loc_8030D22:
	bl sub_8030DA2
	b loc_8030D0E
loc_8030D28:
	mov R3, #0x12
	ldrsh R7, [R0,R3]
	mov R3, #6
	ldrsh R6, [R0,R3]
	mov R3, #0xE
	ldrsh R4, [R0,R3]
	mov R3, #1
	mov R0, #1
	cmp R1, #0
	bge loc_8030D40
	neg R3, R3
	neg R1, R1
loc_8030D40:
	cmp R2, #0
	bge loc_8030D48
	neg R0, R0
	neg R2, R2
loc_8030D48:
	mvn R5, R2
loc_8030D4A:
	add r7, r7, r0
	cmp R7, R6
	beq loc_8030D92
	add r5, r5, r1
	add r5, r5, r1
	cmp R5, R2
	blt loc_8030D5E
	add r4, r4, r3
	sub r5, r5, r2
	sub r5, r5, r2
loc_8030D5E:
	bl sub_8030DA2
	b loc_8030D4A
loc_8030D64:
	mov R3, #0x12
	ldrsh R7, [R0,R3]
	mov R3, #6
	ldrsh R6, [R0,R3]
	mov R3, #0xE
	ldrsh R4, [R0,R3]
	mov R3, #1
	mov R0, #1
	cmp R1, #0
	bge loc_8030D7C
	neg R3, R3
	neg R1, R1
loc_8030D7C:
	cmp R2, #0
	bge loc_8030D84
	neg R0, R0
	neg R2, R2
loc_8030D84:
	add r7, r7, r0
	cmp R7, R6
	beq loc_8030D92
	add r4, r4, r3
	bl sub_8030DA2
	b loc_8030D84
loc_8030D92:
	pop {r0,r5}
	mov R2, #2
	ldrsh R4, [R0,R2]
	mov R2, #6
	ldrsh R7, [R0,R2]
	bl sub_8030DA2
	pop {pc}
.endfunc // sub_8030CAC

.func
.thumb_func
sub_8030DA2:
	sub sp, sp, #0x10
	str R0, [SP]
	str R5, [SP,#4]
	str R4, [SP,#8]
	str R7, [SP,#0xC]
	asr r4, r4, #3
	asr r7, r7, #3
	ldr R5, off_8030E10 // =dword_2011D10 
	ldrb R0, [R5,#0x9] // (byte_2011D19 - 0x2011D10)
	lsr r0, r0, #1
	add r7, r7, r0
	ldrb R0, [R5,#0x8] // (byte_2011D18 - 0x2011D10)
	lsr r0, r0, #1
	add r4, r4, r0
	lsl r0, r0, #1
	mul R7, R0
	add r7, r7, r4
	ldrh R0, [R5,#0x6] // (word_2011D16 - 0x2011D10)
	cmp R0, R7
	beq loc_8030E02
	ldrb R0, [R5,#0xA] // (byte_2011D1A - 0x2011D10)
	add r4, r0, #1
	cmp R4, #0x10
	bge loc_8030E02
	strh R7, [R5,#0x6] // (word_2011D16 - 0x2011D10)
	strb R4, [R5,#0xA] // (byte_2011D1A - 0x2011D10)
	ldr R4, [R5,#0x14] // (dword_2011D24 - 0x2011D10)
	add R4, #0x10
	str R4, [R5,#0x14] // (dword_2011D24 - 0x2011D10)
	mov R4, #0x10
	mul R4, R0
	add R4, #0x18
	add r5, r5, r4
	strh R7, [R5]
	ldr R4, [SP,#8]
	ldr R7, [SP,#0xC]
	mov R0, #7
	mov R8, R4
	bic R4, R0
	str R4, [R5,#4]
	add r4, r7, #0
	bic R4, R0
	str R4, [R5,#8]
	mov R4, R8
	ldr R0, [SP]
	ldr R5, [SP,#4]
	add sp, sp, #0x10
	mov PC, LR
loc_8030E02:
	ldr R0, [SP]
	ldr R5, [SP,#4]
	ldr R4, [SP,#8]
	ldr R7, [SP,#0xC]
	add sp, sp, #0x10
	mov PC, LR
	.byte 0, 0
off_8030E10: .word dword_2011D10
.endfunc // sub_8030DA2

.func
.thumb_func
sub_8030E14:
	push {lr}
	mov R8, R6
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	bge loc_8030E86
	mov R3, R8
	cmp R3, #1
	beq loc_8030E4C
	ldr R3, [R0,#0xC]
	ldr R4, [R0,#0x10]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	blt loc_8030E86
loc_8030E4C:
	ldr R3, [R0]
	mul R3, R6
	add r3, r3, r2
	neg R3, R3
	add r4, r7, #0
	push {r6,r7}
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0,#4]
	sub r4, r7, r4
	mov R8, R4
	pop {r6,r7}
	ldr R3, [R0,#4]
	mul R3, R7
	add r3, r3, r2
	neg R3, R3
	add r4, r6, #0
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0]
	sub r4, r7, r4
	mov R9, R4
	mov R0, R9
	mov R1, R8
	pop {pc}
loc_8030E86:
	mov R0, #0
	mov R1, #0
	pop {pc}
.endfunc // sub_8030E14

.func
.thumb_func
sub_8030E8C:
	push {lr}
	mov R8, R6
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	bge loc_8030EFE
	mov R3, R8
	cmp R3, #1
	beq loc_8030EC4
	ldr R3, [R0,#0xC]
	ldr R4, [R0,#0x10]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	blt loc_8030EFE
loc_8030EC4:
	ldr R3, [R0]
	mul R3, R6
	add r3, r3, r2
	neg R3, R3
	add r4, r7, #0
	push {r6,r7}
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0,#4]
	sub r4, r7, r4
	mov R8, R4
	pop {r6,r7}
	ldr R3, [R0,#4]
	mul R3, R7
	add r3, r3, r2
	neg R3, R3
	add r4, r6, #0
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0]
	sub r4, r7, r4
	mov R9, R4
	mov R0, R9
	mov R1, R8
	pop {pc}
loc_8030EFE:
	mov R0, #0
	mov R1, #0
	pop {pc}
.endfunc // sub_8030E8C

.func
.thumb_func
sub_8030F04:
	push {lr}
	mov R8, R6
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	ble loc_8030F76
	mov R3, R8
	cmp R3, #1
	beq loc_8030F3C
	ldr R3, [R0,#0xC]
	ldr R4, [R0,#0x10]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	bgt loc_8030F76
loc_8030F3C:
	ldr R3, [R0]
	mul R3, R6
	add r3, r3, r2
	neg R3, R3
	add r4, r7, #0
	push {r6,r7}
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0,#4]
	sub r4, r7, r4
	mov R8, R4
	pop {r6,r7}
	ldr R3, [R0,#4]
	mul R3, R7
	add r3, r3, r2
	neg R3, R3
	add r4, r6, #0
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0]
	sub r4, r7, r4
	mov R9, R4
	mov R0, R9
	mov R1, R8
	pop {pc}
loc_8030F76:
	mov R0, #0
	mov R1, #0
	pop {pc}
.endfunc // sub_8030F04

.func
.thumb_func
sub_8030F7C:
	push {lr}
	mov R8, R6
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	ble loc_8030FEE
	mov R3, R8
	cmp R3, #1
	beq loc_8030FB4
	ldr R3, [R0,#0xC]
	ldr R4, [R0,#0x10]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	bgt loc_8030FEE
loc_8030FB4:
	ldr R3, [R0]
	mul R3, R6
	add r3, r3, r2
	neg R3, R3
	add r4, r7, #0
	push {r6,r7}
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0,#4]
	sub r4, r7, r4
	mov R8, R4
	pop {r6,r7}
	ldr R3, [R0,#4]
	mul R3, R7
	add r3, r3, r2
	neg R3, R3
	add r4, r6, #0
	add r6, r3, #0
	add r7, r4, #0
	bl sub_8031048
	ldr R4, [R0]
	sub r4, r7, r4
	mov R9, R4
	mov R0, R9
	mov R1, R8
	pop {pc}
loc_8030FEE:
	mov R0, #0
	mov R1, #0
	pop {pc}
pt_8030FF4: .word byte_8031004
	.word byte_8031015
	.word byte_8031026
	.word byte_8031037
byte_8031004: .byte 0x0, 0xD, 0x30, 0x30, 0x20, 0x58, 0x3A, 0x25, 0x38, 0x58
	.byte 0x20, 0x59, 0x3A, 0x25, 0x38, 0x58, 0x0
byte_8031015: .byte 0x0, 0xE, 0x30, 0x31, 0x20, 0x58, 0x3A, 0x25, 0x38, 0x58
	.byte 0x20, 0x59, 0x3A, 0x25, 0x38, 0x58, 0x0
byte_8031026: .byte 0x0, 0xF, 0x30, 0x32, 0x20, 0x58, 0x3A, 0x25, 0x38, 0x58
	.byte 0x20, 0x59, 0x3A, 0x25, 0x38, 0x58, 0x0
byte_8031037: .byte 0x0, 0x10, 0x30, 0x33, 0x20, 0x58, 0x3A, 0x25, 0x38
	.byte 0x58, 0x20, 0x59, 0x3A, 0x25, 0x38, 0x58, 0x0
.endfunc // sub_8030F7C

.func
.thumb_func
sub_8031048:
	push {r2,r3,lr}
	mov R2, #0
	mov R3, #0
	cmp R7, #0
	beq loc_803106C
	cmp R6, #0
	bge loc_803105A
	neg R6, R6
	mvn R3, R3
loc_803105A:
	cmp R7, #0
	bge loc_8031062
	neg R7, R7
	mvn R3, R3
loc_8031062:
	cmp R6, R7
	blt loc_803106C
	sub r6, r6, r7
	add R2, #1
	b loc_8031062
loc_803106C:
	add r7, r2, #0
	cmp R3, #0
	beq locret_8031076
	neg R7, R7
	neg R6, R6
locret_8031076:
	pop {r2,r3,pc}
.endfunc // sub_8031048

.func
.thumb_func
sub_8031078:
	push {r2,r3,lr}
	mov R2, #0
	mov R3, #0
	cmp R7, #0
	beq loc_803109C
	cmp R6, #0
	bge loc_803108A
	neg R6, R6
	mvn R3, R3
loc_803108A:
	cmp R7, #0
	bge loc_8031092
	neg R7, R7
	mvn R3, R3
loc_8031092:
	cmp R6, R7
	blt loc_803109C
	sub r6, r6, r7
	add R2, #1
	b loc_8031092
loc_803109C:
	lsr r7, r7, #1
	cmp R6, R7
	blt loc_80310A4
	add R2, #1
loc_80310A4:
	add r7, r2, #0
	cmp R3, #0
	beq locret_80310AE
	neg R7, R7
	neg R6, R6
locret_80310AE:
	pop {r2,r3,pc}
.endfunc // sub_8031078

.func
.thumb_func
sub_80310B0:
	push {lr}
	lsl r0, r0, #0xe
	lsl r1, r1, #0xe
	mov R3, #1
	cmp R0, #0
	beq loc_80310BE
	b loc_80310C6
loc_80310BE:
	cmp R1, #0
	beq loc_80310C4
	b loc_80310C6
loc_80310C4:
	mov R3, #0
loc_80310C6:
	cmp R3, #0
	beq locret_80310E4
	ldr R5, off_80310E8 // =dword_200F3D0 
	ldr R5, [R5]
	ldr R4, off_80311F0 // =dword_200F3E0 
	ldr R6, [R5]
	add r6, r6, r0
	ldr R2, [R4,#0x18] // (dword_200F3F8 - 0x200F3E0)
	add r6, r6, r2
	str R6, [R5]
	ldr R6, [R5,#4]
	add r6, r6, r1
	ldr R2, [R4,#0x1C] // (dword_200F3FC - 0x200F3E0)
	add r6, r6, r2
	str R6, [R5,#4]
locret_80310E4:
	pop {pc}
	.balign 4, 0x00
off_80310E8: .word dword_200F3D0
.endfunc // sub_80310B0

.func
.thumb_func
sub_80310EC:
	push {lr}
	ldr R4, [R5,#0x10]
	ldr R2, [R4,#4]
	lsl r2, r2, #2
	ldr R5, [R4,#8]
	lsl r5, r5, #2
	ldr R7, [R6]
	ldr R3, [R0,#0x18]
	add r7, r7, r3
	asr r7, r7, #0xe
	sub r7, r7, r2
	str R7, [R0]
	ldr R7, [R6,#4]
	ldr R3, [R0,#0x1C]
	add r7, r7, r3
	asr r7, r7, #0xe
	sub r7, r7, r5
	str R7, [R0,#4]
	ldr R7, [R6,#0xC]
	asr r7, r7, #0xe
	sub r7, r7, r2
	str R7, [R0,#0xC]
	ldr R7, [R6,#0x10]
	asr r7, r7, #0xe
	sub r7, r7, r5
	str R7, [R0,#0x10]
	pop {pc}
.endfunc // sub_80310EC

.func
.thumb_func
sub_8031122:
	push {lr}
	add r6, r0, #0
	ldr R0, off_80311F0 // =dword_200F3E0 
	mov R2, #0
	mov R3, #0
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	bl sub_80310EC
	pop {pc}
.endfunc // sub_8031122

.func
.thumb_func
sub_8031136:
	push {lr}
	add r6, r0, #0
	ldr R0, off_80311F0 // =dword_200F3E0 
	ldr R2, [R6,#0xC]
	ldr R7, [R6]
	sub r7, r7, r2
	str R7, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	ldr R2, [R6,#0x10]
	ldr R7, [R6,#4]
	sub r7, r7, r2
	str R7, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	ldr R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	ldr R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	cmp R2, #0
	bgt loc_8031158
	blt loc_8031168
	b loc_8031168
loc_8031158:
	cmp R3, #0
	bgt loc_803115E
	b loc_8031168
loc_803115E:
	cmp R2, R3
	bne loc_8031168
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	b loc_8031170
loc_8031168:
	mov R2, #0
	mov R3, #0
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
loc_8031170:
	bl sub_80310EC
	pop {pc}
.endfunc // sub_8031136

.func
.thumb_func
sub_8031176:
	push {lr}
	add r6, r0, #0
	ldr R0, off_80311F0 // =dword_200F3E0 
	ldr R2, [R6,#0xC]
	ldr R7, [R6]
	sub r7, r7, r2
	str R7, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	ldr R2, [R6,#0x10]
	ldr R7, [R6,#4]
	sub r7, r7, r2
	str R7, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	ldr R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	ldr R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	cmp R2, #0
	bgt loc_80311A8
	blt loc_8031198
	b loc_80311A8
loc_8031198:
	cmp R3, #0
	blt loc_803119E
	b loc_80311A8
loc_803119E:
	cmp R2, R3
	bne loc_80311A8
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	b loc_80311B0
loc_80311A8:
	mov R2, #0
	mov R3, #0
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
loc_80311B0:
	bl sub_80310EC
	pop {pc}
.endfunc // sub_8031176

.func
.thumb_func
sub_80311B6:
	push {lr}
	add r6, r0, #0
	ldr R0, off_80311F0 // =dword_200F3E0 
	ldr R2, [R6,#0xC]
	ldr R7, [R6]
	sub r7, r7, r2
	str R7, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	ldr R2, [R6,#0x10]
	ldr R7, [R6,#4]
	sub r7, r7, r2
	str R7, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	ldr R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	ldr R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	cmp R2, #0
	beq loc_80311DA
	cmp R3, #0
	beq loc_80311DA
	b loc_80311E0
loc_80311DA:
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
	b loc_80311E8
loc_80311E0:
	mov R2, #0
	mov R3, #0
	str R2, [R0,#0x18] // (dword_200F3F8 - 0x200F3E0)
	str R3, [R0,#0x1C] // (dword_200F3FC - 0x200F3E0)
loc_80311E8:
	bl sub_80310EC
	pop {pc}
	.byte 0, 0
off_80311F0: .word dword_200F3E0
.endfunc // sub_80311B6

.func
.thumb_func
sub_80311F4:
	push {lr}
	push {R0-R2,r5}
	bl sub_8031122
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov R5, #0
	bl sub_8031570
	mov R3, #0
	cmp R0, #0
	beq loc_8031234
	pop {R0-R2,r5}
	push {R0-R2,r5}
	bl sub_80311B6
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov R5, #0
	mov R6, #1
	bl sub_8030E14
	neg R0, R0
	lsr r0, r0, #1
	neg R0, R0
	neg R1, R1
	lsr r1, r1, #1
	neg R1, R1
	bl sub_80310B0
loc_8031234:
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_80311F4

.func
.thumb_func
sub_803123E:
	push {R0-R2,r5,lr}
	bl sub_8031122
	mov R2, #0
	mov R4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #1
	bl sub_8030E8C
	lsr r0, r0, #1
	asr r1, r1, #1
	bl sub_80310B0
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_803123E

.func
.thumb_func
sub_8031264:
	push {R0-R2,r5,lr}
	bl sub_8031122
	mov R2, #0
	mov R4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #1
	bl sub_8030F04
	neg R0, R0
	lsr r0, r0, #1
	neg R0, R0
	lsr r1, r1, #1
	bl sub_80310B0
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_8031264

.func
.thumb_func
sub_803128E:
	push {lr}
	push {R0-R2,r5}
	bl sub_8031122
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov R5, #0
	bl sub_80315DC
	mov R3, #0
	cmp R0, #0
	beq loc_80312C6
	pop {R0-R2,r5}
	push {R0-R2,r5}
	bl sub_80311B6
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov R5, #0
	mov R6, #1
	bl sub_8030F7C
	lsr r0, r0, #1
	lsr r1, r1, #1
	bl sub_80310B0
loc_80312C6:
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_803128E

.func
.thumb_func
sub_80312D0:
	push {R0-R2,r5,lr}
	bl sub_80311B6
	mov R2, #0
	mov r4, #0x20 
	sub r4, #0x20 
	mov r3, #0x20 
	mov R5, #0
	sub r5, #0x20 
	mov R6, #1
	bl sub_8030E14
	neg R0, R0
	lsr r0, r0, #1
	neg R0, R0
	neg R1, R1
	lsr r1, r1, #1
	neg R1, R1
	bl sub_80310B0
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_80312D0

.func
.thumb_func
sub_8031302:
	push {R0-R2,r5,lr}
	bl sub_8031122
	mov R2, #0
	mov R4, #0
	sub r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	sub r5, #0x20 
	mov R6, #1
	bl sub_8030E8C
	lsr r0, r0, #1
	neg R1, R1
	lsr r1, r1, #1
	neg R1, R1
	bl sub_80310B0
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_8031302

.func
.thumb_func
sub_8031330:
	push {R0-R2,r5,lr}
	bl sub_8031122
	mov R2, #0
	mov R4, #0
	add r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	add r5, #0x20 
	mov R6, #1
	bl sub_8030F04
	neg R0, R0
	lsr r0, r0, #1
	neg R0, R0
	lsr r1, r1, #1
	bl sub_80310B0
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_8031330

.func
.thumb_func
sub_803135E:
	push {R0-R2,r5,lr}
	bl sub_80311B6
	mov R2, #0
	mov r4, #0x20 
	add r4, #0x20 
	mov r3, #0x20 
	mov R5, #0
	add r5, #0x20 
	mov R6, #1
	bl sub_8030F7C
	lsr r0, r0, #1
	lsr r1, r1, #1
	bl sub_80310B0
	mov R0, R12
	mov R1, #3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_803135E

.func
.thumb_func
sub_8031388:
	push {R0-R2,r5,lr}
	bl sub_8031136
	mov R2, #0
	sub R2, #1
	mov r4, #0x20 
	mov R3, #0
	sub R3, #1
	mov R5, #0
	mov R6, #1
	bl sub_8030E14
	mov R1, #0
	bl sub_80310B0
	mov R0, R12
	mov R1, #1
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_8031388

.func
.thumb_func
sub_80313B0:
	push {R0-R2,r5,lr}
	bl sub_8031176
	mov r2, #0x20 
	mov R4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #1
	bl sub_8030E8C
	mov R1, #0
	bl sub_80310B0
	mov R0, R12
	mov R1, #1
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_80313B0

.func
.thumb_func
sub_80313D4:
	push {R0-R2,r5,lr}
	bl sub_8031136
	mov r2, #0x20 
	mov R4, #0
	sub R4, #1
	mov R3, #0
	mov R5, #0
	sub R5, #1
	mov R6, #1
	bl sub_8030F04
	mov R0, #0
	bl sub_80310B0
	mov R0, R12
	mov R1, #2
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_80313D4

.func
.thumb_func
sub_80313FC:
	push {R0-R2,r5,lr}
	bl sub_8031176
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #1
	bl sub_8030F7C
	mov R0, #0
	bl sub_80310B0
	mov R0, R12
	mov R1, #2
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5,pc}
.endfunc // sub_80313FC

.func
.thumb_func
sub_8031420:
	push {lr}
	push {R0-R2,r5}
	bl sub_8031136
	mov R2, #0
	sub R2, #1
	mov r4, #0x20 
	mov R3, #0
	sub R3, #1
	mov R5, #0
	mov R6, #0
	bl sub_8030E14
	mov R1, #0
	bl sub_80310B0
	mov R0, R12
	// <mkdata>
	.hword 0x19 // MOV R1, R3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
	cmp R3, #1
	beq locret_8031476
	push {R0-R2,r5}
	bl sub_8031136
	mov r2, #0x20 
	mov R4, #0
	sub R4, #1
	mov R3, #0
	mov R5, #0
	sub R5, #1
	mov R6, #0
	bl sub_8030F04
	mov R0, #0
	bl sub_80310B0
	mov R0, R12
	lsl r1, r3, #1
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
locret_8031476:
	pop {pc}
.endfunc // sub_8031420

.func
.thumb_func
sub_8031478:
	push {lr}
	push {R0-R2,r5}
	bl sub_8031176
	mov r2, #0x20 
	mov R4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #0
	bl sub_8030E8C
	mov R1, #0
	bl sub_80310B0
	mov R0, R12
	// <mkdata>
	.hword 0x19 // MOV R1, R3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
	cmp R3, #1
	beq locret_80314CA
	push {R0-R2,r5}
	bl sub_8031136
	mov r2, #0x20 
	mov R4, #0
	sub R4, #1
	mov R3, #0
	mov R5, #0
	sub R5, #1
	mov R6, #0
	bl sub_8030F04
	mov R0, #0
	bl sub_80310B0
	mov R0, R12
	lsl r1, r3, #1
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
locret_80314CA:
	pop {pc}
.endfunc // sub_8031478

.func
.thumb_func
sub_80314CC:
	push {lr}
	push {R0-R2,r5}
	bl sub_8031136
	mov R2, #0
	sub R2, #1
	mov r4, #0x20 
	mov R3, #0
	sub R3, #1
	mov R5, #0
	mov R6, #0
	bl sub_8030E14
	mov R1, #0
	bl sub_80310B0
	mov R0, R12
	// <mkdata>
	.hword 0x19 // MOV R1, R3
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
	cmp R3, #1
	beq locret_803151E
	push {R0-R2,r5}
	bl sub_8031176
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #0
loc_803150A:
	bl sub_8030F7C
loc_803150E:
	mov R0, #0
	bl sub_80310B0
	mov R0, R12
	lsl r1, r3, #1
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
locret_803151E:
	pop {pc}
.endfunc // sub_80314CC

.func
.thumb_func
sub_8031520:
	push {lr}
	push {R0-R2,r5}
	bl sub_8031176
	mov r2, #0x20 
	mov R4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #0
	bl sub_8030E8C
	mov R1, #0
	bl sub_80310B0
	mov R0, R12
	// <mkdata>
	.hword 0x19 // MOV R1, R3
loc_8031540:
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
	cmp R3, #1
	beq locret_803156E
	push {R0-R2,r5}
	bl sub_8031176
loc_8031550:
	mov R2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	mov R6, #0
	bl sub_8030F7C
	mov R0, #0
	bl sub_80310B0
	mov R0, R12
	lsl r1, r3, #1
	orr R0, R1
	mov R12, R0
	pop {R0-R2,r5}
locret_803156E:
	pop {pc}
.endfunc // sub_8031520

.func
.thumb_func
sub_8031570:
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
loc_8031584:
	add r3, r3, r4
	add r5, r5, r3
loc_8031588:
	cmp R5, #0
	bge loc_8031590
loc_803158C:
	mov R0, #1
	mov PC, LR
loc_8031590:
	mov R0, #0
	mov PC, LR
.endfunc // sub_8031570

.func
.thumb_func
sub_8031594:
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	bge loc_80315B4
	mov R0, #1
	mov PC, LR
loc_80315B4:
	mov R0, #0
	mov PC, LR
.endfunc // sub_8031594

.func
.thumb_func
sub_80315B8:
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
loc_80315CC:
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	ble loc_80315D8
	mov R0, #1
	mov PC, LR
loc_80315D8:
	mov R0, #0
	mov PC, LR
.endfunc // sub_80315B8

.func
.thumb_func
sub_80315DC:
	sub r6, r5, r4
	sub r7, r2, r3
	mul R3, R4
	mul R2, R5
	sub r2, r3, r2
	ldr R3, [R0]
	ldr R4, [R0,#4]
	add r5, r2, #0
	mul R3, R6
	mul R4, R7
	add r3, r3, r4
	add r5, r5, r3
	cmp R5, #0
	ble loc_80315FC
	mov R0, #1
	mov PC, LR
loc_80315FC:
	mov R0, #0
	mov PC, LR
.endfunc // sub_80315DC

.func
.thumb_func
sub_8031600:
	ldr R5, off_8031780 // =dword_2011A20 
	ldr R1, [R0]
	strh R1, [R5,#0x4] // (word_2011A24 - 0x2011A20)
	add R0, #4
	str R0, [R5]
	mov R0, #0xFE
	strb R0, [R5,#0x6] // (byte_2011A26 - 0x2011A20)
	strb R0, [R5,#0x7] // (byte_2011A27 - 0x2011A20)
	mov PC, LR
.endfunc // sub_8031600

.func
.thumb_func
sub_8031612:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	ldr R5, off_8031780 // =dword_2011A20 
	ldr R2, off_8031688 // =dword_200F3D0 
	str R0, [R2]
	bl sub_80316F8
	bl sub_8030B1E
	cmp R2, #0
	beq loc_8031678
	mov R3, #0
loc_8031630:
	ldrh R4, [R2]
	cmp R1, R4
	bne loc_8031658
	ldrh R7, [R2,#2]
	ldr R4, [R5]
	add r7, r7, r4
	mov R4, #0
	ldrsb R4, [R7,R4]
	mov R6, #0xA
	ldrsh R6, [R0,R6]
	cmp R6, R4
	blt loc_803165E
	cmp R3, #0
	beq loc_8031654
	mov R6, #0
	ldrsb R6, [R3,R6]
	cmp R6, R4
	bgt loc_803165E
loc_8031654:
	add r3, r7, #0
	b loc_803165E
loc_8031658:
	cmp R3, #0
	beq loc_8031678
	b loc_8031662
loc_803165E:
	add R2, #4
	b loc_8031630
loc_8031662:
	str R3, [R5,#0x14] // (dword_2011A34 - 0x2011A20)
	ldrb R6, [R3,#3]
	cmp R6, #0xFF
	beq loc_8031678
	lsl r6, r6, #2
	ldr R4, off_803168C // =dword_8031690 
	add r4, r4, r6
	ldr R4, [R4]
	mov LR, PC
	bx r4
	b loc_803167C
loc_8031678:
	mov R0, #0
	mov R1, #0
loc_803167C:
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8031688: .word dword_200F3D0
off_803168C: .word dword_8031690
dword_8031690: .word 0x0
	.word sub_803178A+1
	.word sub_80317A6+1
	.word sub_80317C2+1
	.word sub_80317DE+1
	.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_80317FA+1
	.word sub_8031808+1
	.word sub_803182A+1
	.word sub_8031852+1
	.word sub_8031874+1
	.word 0x0, 0x0, 0x0, 0x0
.endfunc // sub_8031612

.func
.thumb_func
sub_80316F8:
	mov R2, #2
	ldrsh R1, [R0,R2]
	mov R2, #6
	ldrsh R2, [R0,R2]
	asr r1, r1, #3
	asr r2, r2, #3
	ldrb R3, [R5,#7]
	lsr r3, r3, #1
	add r2, r2, r3
	ldrb R3, [R5,#6]
	lsr r3, r3, #1
	add r1, r1, r3
	lsl r3, r3, #1
	mul R2, R3
	add r2, r2, r1
	strh R2, [R5,#8]
	mov R2, #2
	ldrsh R1, [R0,R2]
	mov R2, #6
	ldrsh R2, [R0,R2]
	mov R3, #7
	bic R1, R3
	str R1, [R5,#0xC]
	bic R2, R3
	str R2, [R5,#0x10]
	ldrh R1, [R5,#8]
	mov PC, LR
.endfunc // sub_80316F8

.func
.thumb_func
sub_803172E:
	add r6, r0, #0
	ldr R0, off_803175C // =dword_200F3E0 
	ldr R2, [R5,#0xC]
	lsl r2, r2, #1
	ldr R5, [R5,#0x10]
	lsl r5, r5, #1
	ldr R7, [R6]
	asr r7, r7, #0xf
	sub r7, r7, r2
	str R7, [R0]
	ldr R7, [R6,#4]
	asr r7, r7, #0xf
	sub r7, r7, r5
	str R7, [R0,#0x4] // (dword_200F3E4 - 0x200F3E0)
	ldr R7, [R6,#0xC]
	asr r7, r7, #0xf
	sub r7, r7, r2
	str R7, [R0,#0xC] // (dword_200F3EC - 0x200F3E0)
	ldr R7, [R6,#0x10]
	asr r7, r7, #0xf
	sub r7, r7, r5
	str R7, [R0,#0x10] // (dword_200F3F0 - 0x200F3E0)
	mov PC, LR
off_803175C: .word dword_200F3E0
.endfunc // sub_803172E

.func
.thumb_func
sub_8031760:
	ldr R5, off_8031780 // =dword_2011A20 
	cmp R0, #1
	beq loc_8031768
	b loc_8031774
loc_8031768:
	ldr R2, [R5,#0x14] // (dword_2011A34 - 0x2011A20)
	mov R0, #0
	ldrsb R0, [R2,R0]
	ldrb R1, [R2,#2]
	ldrb R3, [R2,#1]
	mov PC, LR
loc_8031774:
	ldr R2, [R5,#0x14] // (dword_2011A34 - 0x2011A20)
	mov R0, #0
	ldrsb R0, [R2,R0]
	mov R1, #0
	ldrb R3, [R2,#1]
	mov PC, LR
off_8031780: .word dword_2011A20
.endfunc // sub_8031760

	push {lr}
	mov R0, #0
	pop {pc}
.func
.thumb_func
sub_803178A:
	push {lr}
	bl sub_803172E
	mov R2, #4
	mov R4, #0
	mov R3, #4
	mov R5, #0x10
	bl sub_8031594
	bl sub_8031760
	add r0, r0, r1
	mov R1, #0
	pop {pc}
.endfunc // sub_803178A

.func
.thumb_func
sub_80317A6:
	push {lr}
	bl sub_803172E
	mov R2, #8
	mov R4, #0
	mov R3, #8
	mov R5, #0x10
	bl sub_80315B8
	bl sub_8031760
	add r0, r0, r1
	mov R1, #0
	pop {pc}
.endfunc // sub_80317A6

.func
.thumb_func
sub_80317C2:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #8
	mov R3, #0x10
	mov R5, #8
	bl sub_80315B8
	bl sub_8031760
	add r0, r0, r1
	mov R1, #0
	pop {pc}
.endfunc // sub_80317C2

.func
.thumb_func
sub_80317DE:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0xC
	mov R3, #0x10
	mov R5, #0xC
	bl sub_8031594
	bl sub_8031760
	add r0, r0, r1
	mov R1, #0
	pop {pc}
.endfunc // sub_80317DE

.func
.thumb_func
sub_80317FA:
	push {lr}
	mov R0, #1
	bl sub_8031760
	add r0, r0, r1
	mov R1, #0
	pop {pc}
.endfunc // sub_80317FA

.func
.thumb_func
sub_8031808:
	push {lr}
	bl sub_803172E
	push {r0}
	mov R0, #1
	bl sub_8031760
	add r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr R2, [R1]
	asr R2, R3
	sub r0, r0, r2
	asr r0, r0, #1
	mov R1, #2
	lsr R1, R3
	pop {pc}
.endfunc // sub_8031808

.func
.thumb_func
sub_803182A:
	push {lr}
	bl sub_803172E
	push {r0}
	mov R0, #1
	bl sub_8031760
	add r0, r0, r1
	mov R1, #8
	asr R1, R3
	sub r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr R2, [R1]
	asr R2, R3
	add r0, r0, r2
	asr r0, r0, #1
	mov R1, #2
	lsr R1, R3
	pop {pc}
.endfunc // sub_803182A

.func
.thumb_func
sub_8031852:
	push {lr}
	bl sub_803172E
	push {r0}
	mov R0, #1
	bl sub_8031760
	add r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr R2, [R1,#4]
	asr R2, R3
	sub r0, r0, r2
	asr r0, r0, #1
	mov R1, #2
	lsr R1, R3
	pop {pc}
.endfunc // sub_8031852

.func
.thumb_func
sub_8031874:
	push {lr}
	bl sub_803172E
	push {r0}
	mov R0, #1
	bl sub_8031760
	add r0, r0, r1
	mov R1, #8
	asr R1, R3
	sub r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr R2, [R1,#4]
	asr R2, R3
	add r0, r0, r2
	asr r0, r0, #1
	mov R1, #2
	lsr R1, R3
	pop {pc}
.endfunc // sub_8031874

.func
.thumb_func
sub_803189C:
	ldr R5, off_8031994 // =dword_2013940 
	ldr R1, [R0]
	strh R1, [R5,#0x4] // (word_2013944 - 0x2013940)
	add R0, #4
	str R0, [R5]
	mov R0, #0xFE
	strb R0, [R5,#0x6] // (byte_2013946 - 0x2013940)
	strb R0, [R5,#0x7] // (byte_2013947 - 0x2013940)
	mov PC, LR
	.byte 0, 0
.endfunc // sub_803189C

loc_80318B0:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R5, off_8031994 // =dword_2013940 
	ldr R2, off_8031910 // =dword_200F3D0 
	str R0, [R2]
	bl sub_80316F8
	bl sub_8030B1E
	cmp R2, #0
	beq loc_8031904
loc_80318CC:
	ldrh R4, [R2]
	cmp R1, R4
	bne loc_8031904
	ldrh R7, [R2,#2]
	ldr R4, [R5]
	add r7, r7, r4
	mov R4, #0
	ldrsb R4, [R7,R4]
	mov R6, #0xA
	ldrsh R6, [R0,R6]
	cmp R6, R4
	blt loc_80318EE
	ldrb R3, [R7,#2]
	add r4, r4, r3
	cmp R6, R4
	bgt loc_80318EE
	b loc_80318F2
loc_80318EE:
	add R2, #4
	b loc_80318CC
loc_80318F2:
	str R7, [R5,#0x14] // (dword_2013954 - 0x2013940)
	ldrb R6, [R7,#3]
	lsl r6, r6, #2
	ldr R4, off_8031914 // =dword_8031918 
	add r4, r4, r6
	ldr R4, [R4]
	mov LR, PC
	bx r4
	b loc_8031906
loc_8031904:
	mov R0, #2
loc_8031906:
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
off_8031910: .word dword_200F3D0
off_8031914: .word dword_8031918
dword_8031918: .word 0x0
	.word sub_803199E+1
	.word sub_80319B6+1
	.word sub_80319CE+1
	.word sub_80319E6+1
	.word 0x0, 0x0, 0x0, 0x0
	.word sub_80319FE+1
	.word sub_8031A16+1
	.word sub_8031A2E+1
	.word sub_8031A46+1
	.word 0x0, 0x0, 0x0, 0x0
	.word sub_8031A5E+1
	.word 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0
.func
.thumb_func
sub_8031980:
	push {lr}
	ldr R5, off_8031994 // =dword_2013940 
	cmp R0, #1
	beq loc_803198A
	b loc_803198E
loc_803198A:
	mov R0, #3
	pop {pc}
loc_803198E:
	mov R0, #2
	pop {pc}
	.balign 4, 0x00
off_8031994: .word dword_2013940
.endfunc // sub_8031980

	push {lr}
	mov R0, #0
	pop {pc}
.func
.thumb_func
sub_803199E:
	push {lr}
	bl sub_803172E
	mov R2, #4
	mov R4, #0
	mov R3, #4
	mov R5, #0x10
	bl sub_8031594
	bl sub_8031980
	pop {pc}
.endfunc // sub_803199E

.func
.thumb_func
sub_80319B6:
	push {lr}
	bl sub_803172E
	mov R2, #8
	mov R4, #0
	mov R3, #8
	mov R5, #0x10
	bl sub_80315B8
	bl sub_8031980
	pop {pc}
.endfunc // sub_80319B6

.func
.thumb_func
sub_80319CE:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #8
	mov R3, #0x10
	mov R5, #8
	bl sub_80315B8
	bl sub_8031980
	pop {pc}
.endfunc // sub_80319CE

.func
.thumb_func
sub_80319E6:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0xC
	mov R3, #0x10
	mov R5, #0xC
	bl sub_8031594
	bl sub_8031980
	pop {pc}
.endfunc // sub_80319E6

.func
.thumb_func
sub_80319FE:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0x10
	mov R3, #0x10
	mov R5, #0
	bl sub_8031570
	bl sub_8031980
	pop {pc}
.endfunc // sub_80319FE

.func
.thumb_func
sub_8031A16:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0
	mov R3, #0x10
	mov R5, #0x10
	bl sub_8031594
	bl sub_8031980
	pop {pc}
.endfunc // sub_8031A16

.func
.thumb_func
sub_8031A2E:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0
	mov R3, #0x10
	mov R5, #0x10
	bl sub_80315B8
	bl sub_8031980
	pop {pc}
.endfunc // sub_8031A2E

.func
.thumb_func
sub_8031A46:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0x10
	mov R3, #0x10
	mov R5, #0
	bl sub_80315DC
	bl sub_8031980
	pop {pc}
.endfunc // sub_8031A46

.func
.thumb_func
sub_8031A5E:
	push {lr}
	mov R0, #1
	bl sub_8031980
	pop {pc}
.endfunc // sub_8031A5E

.func
.thumb_func
sub_8031A68:
	ldr R5, off_8031B90 // =dword_2013920 
	ldr R1, [R0]
	strh R1, [R5,#0x4] // (word_2013924 - 0x2013920)
	add R0, #4
	str R0, [R5]
	mov R0, #0xFE
	strb R0, [R5,#0x6] // (byte_2013926 - 0x2013920)
	strb R0, [R5,#0x7] // (byte_2013927 - 0x2013920)
	mov PC, LR
.endfunc // sub_8031A68

.func
.thumb_func
sub_8031A7A:
	push {R4-R7,lr}
	mov R3, R8
	mov R4, R9
	mov R5, R12
	push {R3-R5}
	ldr R5, off_8031B90 // =dword_2013920 
	ldr R2, off_8031B08 // =dword_200F3D0 
	str R0, [R2]
	bl sub_80316F8
	bl sub_8030B1E
	cmp R2, #0
	beq loc_8031AF6
loc_8031A96:
	ldrh R4, [R2]
	cmp R1, R4
	bne loc_8031AF6
	ldrh R7, [R2,#2]
	ldr R4, [R5]
	add r7, r7, r4
	mov R4, #0
	ldrsb R4, [R7,R4]
	mov R6, #0xA
	ldrsh R6, [R0,R6]
	cmp R6, R4
	blt loc_8031AB8
	ldrb R3, [R7,#2]
	add r4, r4, r3
	cmp R6, R4
	bgt loc_8031AB8
	b loc_8031ABC
loc_8031AB8:
	add R2, #4
	b loc_8031A96
loc_8031ABC:
	str R7, [R5,#0x14] // (dword_2013934 - 0x2013920)
	ldrb R6, [R7,#3]
	mov R12, R6
	lsl r6, r6, #2
	ldr R4, off_8031B0C // =jt_8031B10 
	add r4, r4, r6
	ldr R4, [R4]
	push {R0-R2}
	mov LR, PC
	bx r4
	add r3, r0, #0
	tst R0, R0
	pop {R0-R2}
	beq loc_8031AB8
	add r0, r3, #0
	add r1, r3, #0
	mov R2, R12
	cmp R0, #0xE
	bgt loc_8031AFC
	push {R0-R2}
	ldr R1, dword_8031B78 // =0x16EF 
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	pop {R0-R2}
	bne loc_8031AFC
	mov R0, #0
	b loc_8031AFC
loc_8031AF6:
	mov R0, #0
	mov R1, #0
	mov R2, #0
loc_8031AFC:
	pop {R3-R5}
	mov R8, R3
	mov R9, R4
	mov R12, R5
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8031B08: .word dword_200F3D0
off_8031B0C: .word jt_8031B10
jt_8031B10: .word 0x0
	.word sub_8031B9A+1
	.word sub_8031BB2+1
	.word sub_8031BCA+1
	.word sub_8031BE2+1
	.word 0x0, 0x0, 0x0, 0x0
	.word sub_8031BFA+1
	.word sub_8031C12+1
	.word sub_8031C2A+1
	.word sub_8031C42+1
	.word 0x0, 0x0, 0x0, 0x0
	.word sub_8031C5A+1
	.word sub_8031C5A+1
	.word sub_8031C5A+1
	.word sub_8031C5A+1
	.word sub_8031C5A+1
	.word sub_8031C64+1
	.word sub_8031C7C+1
	.word sub_8031C94+1
	.word sub_8031CAC+1
dword_8031B78: .word 0x16EF
.endfunc // sub_8031A7A

.func
.thumb_func
sub_8031B7C:
	ldr R5, off_8031B90 // =dword_2013920 
	cmp R0, #1
	beq loc_8031B84
	b loc_8031B8A
loc_8031B84:
	ldr R2, [R5,#0x14] // (dword_2013934 - 0x2013920)
	ldrb R0, [R2,#1]
	mov PC, LR
loc_8031B8A:
	mov R0, #0
	mov PC, LR
	.byte 0, 0
off_8031B90: .word dword_2013920
.endfunc // sub_8031B7C

.func
.thumb_func
sub_8031B94:
	push {lr}
	mov R0, #0
	pop {pc}
.endfunc // sub_8031B94

.func
.thumb_func
sub_8031B9A:
	push {lr}
	bl sub_803172E
	mov R2, #4
	mov R4, #0
	mov R3, #4
	mov R5, #0x10
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031B9A

.func
.thumb_func
sub_8031BB2:
	push {lr}
	bl sub_803172E
	mov R2, #8
	mov R4, #0
	mov R3, #8
	mov R5, #0x10
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031BB2

.func
.thumb_func
sub_8031BCA:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #8
	mov R3, #0x10
	mov R5, #8
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031BCA

.func
.thumb_func
sub_8031BE2:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0xC
	mov R3, #0x10
	mov R5, #0xC
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031BE2

.func
.thumb_func
sub_8031BFA:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0x10
	mov R3, #0x10
	mov R5, #0
	bl sub_8031570
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031BFA

.func
.thumb_func
sub_8031C12:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0
	mov R3, #0x10
	mov R5, #0x10
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C12

.func
.thumb_func
sub_8031C2A:
	push {lr}
	bl sub_803172E
	mov R2, #1
	mov R4, #1
	mov R3, #0x10
	mov R5, #0x10
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C2A

.func
.thumb_func
sub_8031C42:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0xE
	mov R3, #0xE
	mov R5, #0
	bl sub_80315DC
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C42

.func
.thumb_func
sub_8031C5A:
	push {lr}
	mov R0, #1
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C5A

.func
.thumb_func
sub_8031C64:
	push {lr}
	bl sub_803172E
	mov R2, #2
	mov R4, #0
	mov R3, #2
	mov R5, #0x10
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C64

.func
.thumb_func
sub_8031C7C:
	push {lr}
	bl sub_803172E
	mov R2, #0xE
	mov R4, #0
	mov R3, #0xE
	mov R5, #0x10
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C7C

.func
.thumb_func
sub_8031C94:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #2
	mov R3, #0x10
	mov R5, #2
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
.endfunc // sub_8031C94

.func
.thumb_func
sub_8031CAC:
	push {lr}
	bl sub_803172E
	mov R2, #0
	mov R4, #0xE
	mov R3, #0x10
	mov R5, #0xE
	bl sub_8031594
	bl sub_8031B7C
	// <endpool>
	pop {pc}
.endfunc // sub_8031CAC

/*For debugging purposes, connect comment at any range!*/
