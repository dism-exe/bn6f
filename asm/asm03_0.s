	.include "asm/asm03_0.inc"

	thumb_local_start
sub_8026450:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str r6, [sp]
	str r7, [sp,#4]
	str r0, [sp,#8]
	str r1, [sp,#0xc]
	mov r4, r2
	bl object_getFrontDirection // () -> int
	mov r6, r0
loc_8026464:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_80264A2
	mul r0, r6
	ldr r2, [sp,#8]
	add r0, r0, r2
	bmi loc_802649E
	cmp r0, #6
	bgt loc_802649E
	mov r1, r0
	mul r1, r6
	ldr r2, [sp]
	mul r2, r6
	cmp r1, r2
	bgt loc_802649E
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0xc]
	add r1, r1, r2
	bmi loc_802649E
	cmp r1, #3
	bgt loc_802649E
	push {r0,r1}
	bl sub_800E680
	cmp r0, #0
	pop {r0,r1}
	bne loc_80264A4
loc_802649E:
	add r4, #2
	b loc_8026464
loc_80264A2:
	mov r0, #0
loc_80264A4:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8026450

	thumb_local_start
sub_80264A8:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str r6, [sp]
	str r7, [sp,#4]
	str r0, [sp,#8]
	str r1, [sp,#0xc]
	mov r4, r2
	bl object_getFrontDirection // () -> int
	mov r6, r0
loc_80264BC:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_802650A
	mul r0, r6
	ldr r2, [sp,#8]
	add r0, r0, r2
	bmi loc_8026506
	cmp r0, #6
	bgt loc_8026506
	mov r1, r0
	mul r1, r6
	ldr r2, [sp]
	mul r2, r6
	cmp r1, r2
	bgt loc_8026506
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0xc]
	add r1, r1, r2
	bmi loc_8026506
	cmp r1, #3
	bgt loc_8026506
	push {r0,r1}
	bl sub_800E680
	cmp r0, #0
	pop {r0,r1}
	beq loc_8026506
	ldr r2, [sp]
	ldr r3, [sp,#4]
	push {r0,r1}
	bl sub_8026510
	cmp r0, #0
	pop {r0,r1}
	bne loc_802650C
loc_8026506:
	add r4, #2
	b loc_80264BC
loc_802650A:
	mov r0, #0
loc_802650C:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80264A8

	thumb_local_start
sub_8026510:
	push {r4,r6,r7,lr}
	mov r6, r2
	mov r7, r3
	push {r0,r1}
	bl object_getFrontDirection // () -> int
	mov r4, r0
	pop {r0,r1}
loc_8026520:
	push {r0,r1}
	ldr r3, off_8026540 // =byte_8026544
	bl sub_81096FA
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	beq loc_802653C
	add r0, r0, r4
	cmp r0, r6
	bne loc_8026520
	mov r0, #1
	b locret_802653E
loc_802653C:
	mov r0, #0
locret_802653E:
	pop {r4,r6,r7,pc}
off_8026540: .word byte_8026544
byte_8026544: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80
	.byte 0xA
	thumb_func_end sub_8026510

	thumb_func_start ho_8026554
ho_8026554:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	cmp r0, #1
	blt loc_802656A
	cmp r0, #6
	bgt loc_802656A
	cmp r1, #1
	blt loc_802656A
	cmp r1, #3
	ble loc_802656C
loc_802656A:
	mov r2, #0
loc_802656C:
	lsl r2, r2, #2
	ldr r3, off_8026580 // =jt_8026584 
	ldr r2, [r3,r2]
	mov lr, pc
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
	thumb_func_end ho_8026554

	thumb_local_start
sub_80265D0:
	push {r4,lr}
	push {r0}
	mov r0, r6
	ldr r4, off_80267E8 // =byte_8026735 
loc_80265D8:
	ldr r2, [sp]
	mov r1, r7
	bl sub_8026450
	cmp r0, #0
	bne loc_80265FA
	bl object_getFrontDirection // () -> int
	mov r1, #0
	ldrsb r1, [r4,r1]
	cmp r1, #0x7f
	beq loc_80265F8
	add r4, #1
	mul r0, r1
	add r0, r0, r6
	b loc_80265D8
loc_80265F8:
	mov r0, #0
loc_80265FA:
	add sp, sp, #4
	pop {r4,pc}
	thumb_func_end sub_80265D0

	thumb_local_start
sub_80265FE:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	mov r1, #2
	beq locret_802661A
	mov r1, #2
	push {r0,r1}
	bl sub_800E680
	cmp r0, #0
	pop {r0,r1}
	bne locret_802661A
	mov r0, r6
	mov r1, r7
locret_802661A:
	pop {r6,r7,pc}
	thumb_func_end sub_80265FE

	thumb_local_start
sub_802661C:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov pc, lr
	thumb_func_end sub_802661C

	thumb_local_start
sub_8026622:
	push {r4,lr}
	mov r1, r7
	ldr r2, off_80267EC // =byte_802673C 
	ldrb r3, [r5,#oBattleObject_PanelY]
	cmp r1, r3
	bne loc_8026630
	ldr r2, off_80267F0 // =byte_802673A 
loc_8026630:
	ldr r4, off_80267F4 // =byte_8026730 
loc_8026632:
	ldrb r0, [r5,#oBattleObject_PanelX]
	bl sub_8026450
	cmp r0, #0
	bne locret_802664E
	mov r1, #0
	ldrsb r1, [r4,r1]
	cmp r1, #0x7f
	beq locret_802664E
	add r4, #1
	add r1, r1, r7
	mov r0, r6
	ldr r2, off_80267F8 // =byte_802673C 
	b loc_8026632
locret_802664E:
	pop {r4,pc}
	thumb_func_end sub_8026622

	thumb_local_start
sub_8026650:
	push {lr}
	ldr r0, off_80267FC // =byte_8026753 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_8026650

	thumb_local_start
sub_802665A:
	push {lr}
	ldr r0, off_8026800 // =byte_802675A 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
	thumb_func_end sub_802665A

	thumb_local_start
sub_8026668:
	push {lr}
	ldr r0, off_8026804 // =byte_8026761 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_8026668

	thumb_local_start
sub_8026672:
	push {lr}
	ldr r0, off_8026808 // =byte_802676E 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_8026672

	thumb_local_start
sub_802667C:
	push {lr}
	ldr r0, off_802680C // =byte_8026781 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
	thumb_func_end sub_802667C

	thumb_local_start
sub_802668A:
	push {lr}
	ldr r0, off_8026810 // =byte_802678E 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_802668A

	thumb_local_start
sub_8026694:
	push {lr}
	ldr r0, off_8026814 // =byte_8026791 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_8026694

	thumb_local_start
sub_802669E:
	push {lr}
	ldr r0, off_8026818 // =byte_8026794 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
	thumb_func_end sub_802669E

	thumb_local_start
sub_80266AC:
	push {lr}
	mov r0, r6
	mov r1, r7
	ldr r2, off_802681C // =byte_802679B 
	bl sub_80264A8
	pop {pc}
	thumb_func_end sub_80266AC

	thumb_local_start
sub_80266BA:
	push {lr}
	mov r2, #0
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	mov r1, #1
	eor r0, r1
	mov r1, #5
	mul r0, r1
	add r0, #1
	cmp r0, r6
	bne loc_80266D4
	mov r2, #2
loc_80266D4:
	ldr r0, off_8026820 // =byte_80267A6 
	add r0, r0, r2
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_80266BA

	thumb_local_start
sub_80266DE:
	push {lr}
	ldr r0, off_8026824 // =byte_80267AB 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_80266DE

	thumb_local_start
sub_80266E8:
	push {lr}
	ldr r0, off_8026828 // =byte_80267AE 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_80266E8

	thumb_local_start
sub_80266F2:
	push {lr}
	mov r0, r6
	mov r1, r7
	ldr r2, off_802682C // =byte_802679B 
	bl sub_8026450
	bl sub_80265FE
	pop {pc}
	thumb_func_end sub_80266F2

	thumb_local_start
sub_8026704:
	push {lr}
	ldr r0, off_8026830 // =byte_80267B9 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_8026704

	thumb_local_start
sub_802670E:
	push {lr}
	ldr r0, off_8026834 // =byte_8026791 
	bl sub_80265D0
	bl sub_80265FE
	pop {pc}
	thumb_func_end sub_802670E

	thumb_local_start
sub_802671C:
	push {lr}
	ldr r0, off_8026838 // =byte_80267CC 
	bl sub_80265D0
	pop {pc}
	thumb_func_end sub_802671C

	thumb_local_start
sub_8026726:
	push {lr}
	ldr r0, off_802683C // =byte_80267D5 
	bl sub_80265D0
	pop {pc}
byte_8026730: .byte 0xFF, 0x1, 0xFE, 0x2, 0x7F
byte_8026735: .byte 0xFF, 0xFE, 0xFD, 0xFC, 0x7F
byte_802673A: .byte 0x1, 0x0
byte_802673C: .byte 0x0, 0x0, 0x1, 0x0, 0xFF, 0x0, 0x2, 0x0, 0xFE, 0x0, 0x3, 0x0, 0xFD, 0x0
	.byte 0x4, 0x0, 0xFC, 0x0, 0x5, 0x0, 0xFB, 0x0, 0x7F
byte_8026753: .byte 0xFF, 0x0, 0xFF, 0xFF, 0xFF, 0x1, 0x7F
byte_802675A: .byte 0xFF, 0xFF, 0xFF, 0x1, 0xFF, 0x0, 0x7F
byte_8026761: .byte 0xFE, 0x0, 0xFF
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
off_8026804: .word byte_8026761
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
	thumb_func_end sub_8026726

	thumb_func_start sub_8026840
sub_8026840:
	push {r4-r7,lr}
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	ldrb r0, [r2,#7]
	cmp r0, #0
	bne loc_8026858
	// memBlock
	ldr r0, off_80269CC // =dword_20349A0 
	// size
	mov r1, #0x14
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_802A210
loc_8026858:
	bl sub_801DF92
	ldr r0, dword_8026994 // =0x30172 
	bl sub_801DACC
	ldr r0, off_8026998 // =0x400 
	bl sub_801DACC
	ldr r0, dword_802699C // =0x20130 
	bl sub_801BED6
	mov r4, #0
	ldr r5, off_8026BF0 // =dword_20364C0 
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x29 
	bl sub_80136CC
	cmp r0, #0
	bne loc_8026898
	bl sub_8029F70
	tst r0, r0
	beq loc_8026898
	bl sub_802A564
	cmp r0, #5
	beq loc_8026898
	bl sub_8029EC8
	mov r4, r0
loc_8026898:
	ldr r0, off_80269A0 // =byte_86E625C 
	tst r4, r4
	beq loc_80268A0
	ldr r0, off_80269A4 // =byte_86E64B4 
loc_80268A0:
	ldr r1, off_80269C8 // =unk_2035000 
	ldr r2, off_80269A8 // =0x258 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	mov r2, #0x9b
	ldr r6, off_80269AC // =byte_8027B2C 
loc_80268AC:
	ldr r0, dword_80269B0 // =0xfff 
	and r0, r2
	ldrb r2, [r6,#4]
	lsl r2, r2, #0xc
	orr r2, r0
	ldrb r0, [r6]
	ldrb r1, [r6,#1]
	ldrb r3, [r6,#2]
	ldrb r4, [r6,#3]
	ldrb r5, [r6,#5]
	bl sub_8027CCC
	add r6, #6
	ldrb r0, [r6]
	cmp r0, #0xff
	bne loc_80268AC
	// memBlock
	ldr r0, off_8026BF0 // =dword_20364C0 
	// size
	mov r1, #0x70 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r5, off_8026BF0 // =dword_20364C0 
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x29 
	bl sub_80136CC
	strb r0, [r5,#0x10] // (byte_20364D0 - 0x20364c0)
	strb r0, [r5,#0x11] // (byte_20364D1 - 0x20364c0)
	strb r0, [r5,#0x15] // (byte_20364D5 - 0x20364c0)
	mov r0, #0
	strh r0, [r5,#0x3a] // (word_20364FA - 0x20364c0)
	strh r0, [r5,#0x38] // (word_20364F8 - 0x20364c0)
	ldr r5, off_8026BF0 // =dword_20364C0 
	mov r1, #1
	strb r1, [r5,#0x4] // (dword_20364C4 - 0x20364c0)
	mov r0, #0xff
	strb r0, [r5,#0xc] // (byte_20364CC - 0x20364c0)
	bl sub_8029F70
	tst r0, r0
	beq loc_802690E
	bl sub_802A564
	cmp r0, #5
	beq loc_802690E
	bl sub_8029EF8
	strb r0, [r5,#0x18] // (dword_20364D8 - 0x20364c0)
loc_802690E:
	bl sub_802811C
	mov r0, #0x1a
	strb r0, [r5,#0x9] // (byte_20364C9 - 0x20364c0)
	mov r0, #0
	sub r0, #1
	strh r0, [r5,#0x20] // (word_20364E0 - 0x20364c0)
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	ldrb r0, [r2,#7]
	add r1, r0, #1
	strb r1, [r2,#7]
	cmp r0, #0
	bne loc_8026936
	bl sub_802D234
	ldr r1, off_80269B8 // =byte_80269BC
	ldrb r0, [r1,r0]
	strb r0, [r5,#0xc] // (byte_20364CC - 0x20364c0)
	b loc_802694C
loc_8026936:
	bl sub_802D234
	mov r1, #5
	cmp r0, r1
	bne loc_802694C
	bl sub_802A564
	tst r3, r3
	bne loc_802694C
	mov r0, #5
	strb r0, [r5,#0xc] // (byte_20364CC - 0x20364c0)
loc_802694C:
	bl sub_802A49C
	bl sub_802A40C
	bl sub_802945A
	bl sub_802A646
	bl sub_8027D58
	strb r0, [r5,#0x5] // (dword_20364C4+1 - 0x20364c0)
	bl sub_8027E2C
	mov r0, #1
	bl sub_8028250
	mov r1, #4
loc_802696E:
	ldr r0, dword_80269B4 // =0x1ff 
	push {r1}
	bl sub_80281D4
	ldr r0, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_8029CD4
	pop {r1}
	sub r1, #1
	bpl loc_802696E
	bl sub_8028476
	bl sub_8015940
	bl sub_802A0EC
	pop {r4-r7,pc}
dword_8026994: .word 0x30172
off_8026998: .word 0x400
dword_802699C: .word 0x20130
off_80269A0: .word byte_86E625C
off_80269A4: .word byte_86E64B4
off_80269A8: .word 0x258
off_80269AC: .word byte_8027B2C
dword_80269B0: .word 0xFFF
dword_80269B4: .word 0x1FF
off_80269B8: .word byte_80269BC
byte_80269BC: .byte 0xFF, 0xFF, 0x0, 0x1, 0x2, 0x3, 0xFF, 0xFF, 0x6, 0xFF, 0xFF
	.byte 0xFF
off_80269C8: .word unk_2035000
off_80269CC: .word dword_20349A0
	thumb_func_end sub_8026840

	thumb_local_start
sub_80269D0:
	push {lr}
	mov r0, #0
	bl sub_800A9E2
	mov r1, #5
	and r0, r1
	beq locret_80269E0
	mov r0, #1
locret_80269E0:
	pop {pc}
	thumb_func_end sub_80269D0

	thumb_local_start
sub_80269E2:
	push {r5,lr}
	mov r0, #0
	ldr r5, off_8026BF0 // =dword_20364C0 
	ldrb r1, [r5]
	cmp r1, #0
	beq loc_8026A24
	cmp r1, #8
	beq loc_8026A24
	ldrb r1, [r5,#0x1] // (dword_20364C0+1 - 0x20364c0)
	cmp r1, #0
	beq loc_8026A24
	cmp r1, #8
	beq loc_8026A24
	cmp r1, #4
	beq loc_8026A24
	cmp r1, #0xc
	beq loc_8026A24
	cmp r1, #0x2c 
	beq loc_8026A24
	cmp r1, #0x30 
	beq loc_8026A24
	cmp r1, #0x34 
	beq loc_8026A24
	cmp r1, #0x10
	beq loc_8026A24
	cmp r1, #0x14
	beq loc_8026A24
	cmp r1, #0x18
	beq loc_8026A24
	cmp r1, #0x1c
	beq loc_8026A24
	cmp r1, #0x20 
	bne locret_8026A26
loc_8026A24:
	mov r0, #1
locret_8026A26:
	pop {r5,pc}
	thumb_func_end sub_80269E2

	thumb_func_start sub_8026A28
sub_8026A28:
	push {r5,lr}
	ldr r5, off_8026BF0 // =dword_20364C0 
	ldr r1, off_8026A38 // =off_8026A3C 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r5,pc}
off_8026A38: .word off_8026A3C
off_8026A3C: .word sub_8026A50+1
	.word sub_8026A88+1
	.word sub_8026A6C+1
	.word 0x100
	.word eStruct200F360
	thumb_func_end sub_8026A28

	thumb_local_start
sub_8026A50:
	push {lr}
	bl sub_802FE48
	strb r0, [r5,#0xe]
	mov r3, r0
	mov r1, #0x40 
	mov r2, #0x40 
	mov r0, #0
	bl sub_802FE7A
	mov r0, #4
	str r0, [r5]
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8026A50

	thumb_local_start
sub_8026A6C:
	push {lr}
	bl sub_8027D78
	ldrb r0, [r5,#0xe]
	bl sub_802FE6A
	bl sub_80062EC
	bl sub_802A3CC
	bl sub_802A0F8
	ldrb r0, [r5,#4]
	pop {pc}
	thumb_func_end sub_8026A6C

	thumb_local_start
sub_8026A88:
	push {r5,lr}
	ldr r5, off_8026BF0 // =dword_20364C0 
	ldr r1, off_8026AA0 // =off_8026AA4 
	ldrb r0, [r5,#0x1] // (dword_20364C0+1 - 0x20364c0)
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_802A2B0
	mov r0, #0
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
	.word sub_8026E98+1
	.word sub_8026FC0+1
	.word sub_8027044+1
	.word sub_80271F8+1
	.word sub_802728C+1
	.word sub_80273A4+1
	.word sub_80273EC+1
	.word sub_8027406+1
	.word sub_802753E+1
	.word sub_8027548+1
	.word sub_80275EC+1
	.word sub_802770C+1
	.word sub_8027834+1
	.word sub_802790C+1
	.word sub_802794A+1
	.word sub_8026E78+1
	.word sub_8027A58+1
	thumb_func_end sub_8026A88

	thumb_local_start
sub_8026B04:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_8026B38
	mov r0, #0x79 
	bl sound_play // () -> void
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	mov r0, #0x78 
	strh r0, [r1,#0x18]
	mov r0, #0
	bl sub_801E71C
	mov r0, #0x80
	bl sub_801DACC
	mov r0, #0xf
	mov r1, #0
	bl sub_801E0A0
	mov r0, #0xf
	str r0, [r5,#0x44]
	mov r0, #0x78 
	str r0, [r5,#0x40]
	strb r0, [r5,#2]
loc_8026B38:
	ldr r0, [r5,#0x40]
	sub r0, #0xc
	push {r0,r4,r6,r7}
	mov r6, #4
	and r6, r0
	lsr r6, r6, #2
	add r6, #1
loc_8026B46:
	ldr r0, [r5,#0x44]
	sub r0, #1
	str r0, [r5,#0x44]
	ldr r4, off_8026DAC // =unk_2035000 
	lsl r0, r0, #1
	add r4, r4, r0
	lsr r0, r0, #1
	mov r1, #0
	mov r2, #3
	mov r7, #0x14
loc_8026B5A:
	push {r0,r1}
	ldrh r3, [r4]
	mov r2, #3
	bl sub_800187C
	pop {r0,r1}
	add r1, #1
	add r4, #0x1e
	sub r7, #1
	bne loc_8026B5A
	sub r6, #1
	bne loc_8026B46
	pop {r0,r4,r6,r7}
	push {r0}
	bl sub_802D234
	cmp r0, #1
	pop {r0}
	beq loc_8026B8C
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	ldr r1, [r2,#0x34]
	ldr r3, dword_8026CC8 // =0x18000 
	sub r1, r1, r3
	str r1, [r2,#0x34]
loc_8026B8C:
	str r0, [r5,#0x40]
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r0, [r1,#0x18]
	push {r0}
	mov r1, r0
	mov r0, #0x78 
	sub r0, r0, r1
	bl sub_801E71C
	pop {r0}
	cmp r0, #0
	bne loc_8026BE8
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#7]
	cmp r0, #1
	bne loc_8026BB6
	bl sub_801E574
	b loc_8026BC2
loc_8026BB6:
	mov r0, #0
	bl sub_8013FD0
	mov r0, #1
	bl sub_8013FD0
loc_8026BC2:
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq loc_8026BE0
	cmp r0, #5
	bne loc_8026BD6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#7]
	cmp r0, #5
	bge loc_8026BE0
loc_8026BD6:
	mov r0, #0x2c 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b loc_8026BE8
loc_8026BE0:
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_8026BE8:
	bl sub_8029C08
	pop {pc}
	.byte 0, 0
off_8026BF0: .word dword_20364C0
	thumb_func_end sub_8026B04

	thumb_local_start
sub_8026BF4:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_8026C14
	str r0, [r5,#0x44]
	str r0, [r5,#0x40]
	mov r0, #1
	strb r0, [r5,#2]
	ldr r0, off_8026CC4 // =0x2000 
	bl sub_801DACC
	bl sub_8029D80
	mov r0, #4
	bl sub_800A9D6
loc_8026C14:
	ldr r0, [r5,#0x40]
	add r0, #0xc
	push {r0,r4-r7}
	mov r7, r5
	mov r6, #4
	and r6, r0
	lsr r6, r6, #2
	mov r0, #1
	eor r6, r0
	add r6, #1
loc_8026C28:
	ldr r0, [r7,#0x44]
	add r0, #1
	str r0, [r7,#0x44]
	// j
	sub r0, #1
	// i
	mov r1, #0
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8026C84 // =byte_8026C88
	mov r4, #1
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	sub r6, #1
	bne loc_8026C28
	pop {r0,r4-r7}
	push {r0}
	bl sub_802D234
	cmp r0, #1
	pop {r0}
	beq loc_8026C5C
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	ldr r1, [r2,#0x34]
	ldr r3, dword_8026CC8 // =0x18000 
	add r1, r1, r3
	str r1, [r2,#0x34]
loc_8026C5C:
	str r0, [r5,#0x40]
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r0, [r1,#0x18]
	push {r0}
	mov r1, r0
	mov r0, #0x78 
	sub r0, r0, r1
	bl sub_801E71C
	pop {r0}
	cmp r0, #0x78 
	bne loc_8026C7E
	ldrb r0, [r5,#0xb]
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
loc_8026C7E:
	bl sub_8029C08
	pop {pc}
off_8026C84: .word byte_8026C88
byte_8026C88: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8026CC4: .word 0x2000
dword_8026CC8: .word 0x18000
	thumb_func_end sub_8026BF4

	thumb_local_start
sub_8026CCC:
	push {r7,lr}
	bl sub_802A220
	cmp r0, #0xff
	beq loc_8026CE6
	strh r0, [r5,#0x38]
	mov r0, #0x40 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	mov r0, #0
	str r0, [r5,#0x40]
	b locret_8026D04
loc_8026CE6:
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	bl sub_8028B74
	bl sub_8028820
	bl sub_8029C08
	bl sub_802899C
	bl sub_8029D34
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
locret_8026D04:
	pop {r7,pc}
	thumb_func_end sub_8026CCC

	thumb_local_start
sub_8026D06:
	push {r4,r5,lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_RenderInfoPtr]
	ldrb r0, [r5,#2]
	cmp r0, #2
	beq loc_8026D9A
	cmp r0, #0
	bne loc_8026D46
	mov r0, #1
	strb r0, [r5,#2]
	mov r0, #0x78 
	strh r0, [r3,#0x18]
	mov r0, #0
	bl sub_801E71C
	ldr r0, off_8026DA8 // =0x2000 
	bl sub_801DACC
	bl sub_8029D80
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0xf
	mov r5, #0x14
	bl sub_80018D0
	mov r0, #0x80
	bl sound_play // () -> void
	b locret_8026DA6
loc_8026D46:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	cmp r0, #0
	bne loc_8026D5C
	push {r3}
	bl sub_802A220
	pop {r3}
	cmp r0, #0xff
	beq locret_8026DA6
loc_8026D5C:
	mov r0, #2
	strb r0, [r5,#2]
	mov r0, #0
	strh r0, [r3,#0x18]
	mov r0, #0x78 
	bl sub_801E71C
	push {r4,r5}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8026DAC // =unk_2035000 
	mov r4, #0xf
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5}
	bl sub_8029C08
	mov r0, #0x80
	bl sound_play // () -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#7]
	cmp r0, #1
	bne locret_8026DA6
	ldr r0, off_8026DA8 // =0x2000 
	bl sub_801DA48
	b locret_8026DA6
loc_8026D9A:
	bl sub_8029C08
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8026DA6:
	pop {r4,r5,pc}
off_8026DA8: .word 0x2000
off_8026DAC: .word unk_2035000
	thumb_func_end sub_8026D06

	thumb_local_start
sub_8026DB0:
	push {lr}
	bl sub_802B734
	cmp r0, #0
	beq locret_8026DC2
	mov r0, #0x14
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8026DC2:
	pop {pc}
	thumb_func_end sub_8026DB0

	thumb_local_start
sub_8026DC4:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_8026DEC
	bl sub_8027D78
	mov r0, #1
	strb r0, [r5,#2]
	bl sub_802A4FC
	bl sub_800B3A2
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8026DEC
	mov r0, #0
	bl sub_801E474
loc_8026DEC:
	ldr r0, dword_8026E44 // =0x56789123 
	bl sub_800B46C
	tst r0, r0
	beq locret_8026E40
	bl sub_800B460
	bl sub_800B3D8
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8026E14
	ldr r0, off_8026E48 // =0x1000 
	bl sub_801BED6
	ldr r0, off_8026E48 // =0x1000 
	bl sub_801DACC
loc_8026E14:
	mov r0, #2
	bl sub_801DA48
	mov r0, #2
	bl sub_801BECC
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq loc_8026E3C
	cmp r0, #3
	beq loc_8026E3C
	cmp r0, #4
	beq loc_8026E3C
	cmp r0, #5
	beq loc_8026E3C
	mov r0, #0x30 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8026E40
loc_8026E3C:
	mov r0, #8
	strb r0, [r5]
locret_8026E40:
	pop {pc}
	.balign 4, 0x00
dword_8026E44: .word 0x56789123
off_8026E48: .word 0x1000
	thumb_func_end sub_8026DC4

	thumb_local_start
sub_8026E4C:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	beq loc_8026E64
	bl sub_802A220
	cmp r0, #0xff
	beq loc_8026E72
	bl chatbox_8040818
loc_8026E64:
	mov r0, #0x9e
	bl sound_play // () -> void
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_8026E72:
	bl sub_8029C08
	pop {pc}
	thumb_func_end sub_8026E4C

	thumb_local_start
sub_8026E78:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	bne loc_8026E92
	mov r0, #0x9e
	bl sound_play // () -> void
	mov r0, #0x54 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_8026E92:
	bl sub_8029C08
	pop {pc}
	thumb_func_end sub_8026E78

	thumb_local_start
sub_8026E98:
	push {r4,lr}
	mov r4, #0
	bl sub_802D246 // () -> int
	ldr r1, dword_8027040 // =0x200000 
	tst r0, r1
	beq loc_8026EA8
	mov r4, #4
loc_8026EA8:
	ldr r1, off_8026EB8 // =off_8026EBC 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_8029C08
	pop {r4,pc}
off_8026EB8: .word off_8026EBC
off_8026EBC: .word sub_8026EC8+1
	.word sub_8026F1A+1
	.word sub_8026FAA+1
	thumb_func_end sub_8026E98

	thumb_local_start
sub_8026EC8:
	push {lr}
	bl sub_802D246 // () -> int
	mov r1, #0x20 
	tst r0, r1
	bne loc_8026F04
	mov r0, #8
	strh r0, [r5,#2]
	bl sub_802D234
	cmp r0, #5
	bne loc_8026EEA
	ldr r0, off_802702C // =TextScriptFirstBattleTutorials
	mov r1, #0xc // (TextScriptPtrArr8027BDC - 0x8027bd0)
	ldr r0, [r0,r1]
	mov r1, #0x23 
	b loc_8026F0E
loc_8026EEA:
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq loc_8026EFE
	ldr r0, off_802702C // =TextScriptFirstBattleTutorials
	ldrb r1, [r5,#0xc]
	lsl r2, r1, #2
	ldr r0, [r0,r2]
	ldr r2, off_8027030 // =byte_8027034
	ldrb r1, [r2,r1]
	b loc_8026F0E
loc_8026EFE:
	mov r1, #3
	add r1, r1, r4
	b loc_8026F0C
loc_8026F04:
	mov r0, #4
	strh r0, [r5,#2]
	mov r1, #0
	add r1, r1, r4
loc_8026F0C:
	ldr r0, off_8027008 // =TextScriptBattleRunDialog
loc_8026F0E:
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x7b 
	bl sound_play // () -> void
	pop {pc}
	thumb_func_end sub_8026EC8

	thumb_local_start
sub_8026F1A:
	push {r4,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	beq loc_8026F34
	bl sub_802A220
	cmp r0, #0xff
	beq locret_8026FA8
	bl chatbox_8040818
	b loc_8026FA0
loc_8026F34:
	bl chatbox_8045F4C
	cmp r0, #1
	beq loc_8026FA0
	mov r0, #0xff
	ldr r1, off_802700C // =byte_20366C0 
	strb r0, [r1]
	bl sub_802D258
	mov r4, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x3e 
	bl sub_80136E4
	add r0, #4
	mov r1, #5
	svc 6
	cmp r0, r4
	bgt loc_8026F8E
	mov r3, #8
	lsr r2, r0, #1
	add r0, r0, r2
	cmp r4, r0
	blt loc_8026F72
	sub r3, #4
	add r0, r0, r2
	cmp r4, r0
	blt loc_8026F72
	sub r3, #4
loc_8026F72:
	ldr r2, off_8027010 // =off_8027014 
	ldr r3, [r2,r3]
	ldr r1, off_802703C // =dword_20349A0 
	ldr r0, [r1,#0x8] // (dword_20349A8 - 0x20349a0)
	add r2, r0, #1
	str r2, [r1,#0x8] // (dword_20349A8 - 0x20349a0)
	ldrb r4, [r3,r0]
	bl GetRNG1 // () -> void
	mov r1, #1
	mov r2, #0xf
	and r0, r2
	cmp r0, r4
	bge loc_8026F92
loc_8026F8E:
	mov r0, #2
	strb r0, [r5,#4]
loc_8026F92:
	mov r0, #0x20 
	strb r0, [r5,#0xb]
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8026FA8
loc_8026FA0:
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8026FA8:
	pop {r4,pc}
	thumb_func_end sub_8026F1A

	thumb_local_start
sub_8026FAA:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	bne locret_8026FBE
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8026FBE:
	pop {pc}
	thumb_func_end sub_8026FAA

	thumb_local_start
sub_8026FC0:
	push {r4,lr}
	mov r4, #0
	bl sub_802D246 // () -> int
	ldr r1, dword_8027040 // =0x200000 
	tst r0, r1
	beq loc_8026FD0
	mov r4, #4
loc_8026FD0:
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_8026FF2
	mov r0, #1
	strb r0, [r5,#2]
	bl sub_802A0EC
	mov r1, #1
	ldrb r0, [r5,#4]
	cmp r0, #2
	beq loc_8026FE8
	mov r1, #2
loc_8026FE8:
	add r1, r1, r4
	ldr r0, off_8027008 // =TextScriptBattleRunDialog
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b locret_8027004
loc_8026FF2:
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	bne locret_8027004
	mov r0, #0x14
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8027004:
	pop {r4,pc}
	.balign 4, 0x00
off_8027008: .word TextScriptBattleRunDialog
off_802700C: .word byte_20366C0
off_8027010: .word off_8027014
off_8027014: .word byte_8027020
	.word byte_8027023
	.word byte_8027026
byte_8027020: .byte 0x4, 0x8, 0xF
byte_8027023: .byte 0x8, 0xC, 0xF
byte_8027026: .byte 0xC, 0xE, 0xF, 0x0, 0x0, 0x0
off_802702C: .word TextScriptFirstBattleTutorials
off_8027030: .word byte_8027034
byte_8027034: .byte 0xD, 0xE, 0xC, 0x23, 0x23, 0x23, 0x6, 0x0
off_802703C: .word dword_20349A0
dword_8027040: .word 0x200000
	thumb_func_end sub_8026FC0

	thumb_local_start
sub_8027044:
	push {lr}
	ldr r1, off_802705C // =off_8027060 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_8027044

	thumb_local_start
sub_802707C:
	push {r4,lr}
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #0xb
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrb r0, [r4,#6]
	cmp r0, #0
	beq loc_8027094
	mov r0, #0xd
	b loc_8027096
loc_8027094:
	ldrb r0, [r4,#5]
loc_8027096:
	mov r1, #0x80
	mul r0, r1
	ldr r1, off_80270CC // =byte_8725894 
	add r0, r0, r1
	ldr r1, dword_80270C0 // =0x60172c0 
	mov r2, #0x80
	bl sub_8000AC8
	ldrb r0, [r5,#8]
	mov r1, #0x10
	mul r0, r1
	add r0, #0x18
	str r0, [r5,#0x44]
	ldr r0, off_80270C4 // =byte_872CF94 
	ldr r1, off_80270C8 // =byte_30016F0 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r0, #4
	strh r0, [r5,#2]
	pop {r4,pc}
dword_80270C0: .word 0x60172C0
off_80270C4: .word byte_872CF94
off_80270C8: .word byte_30016F0
off_80270CC: .word byte_8725894
	thumb_func_end sub_802707C

	thumb_local_start
sub_80270D0:
	push {lr}
	bl sub_80298D8
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x10
	blt locret_80270E8
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #8
	strh r0, [r5,#2]
locret_80270E8:
	pop {pc}
	thumb_func_end sub_80270D0

	thumb_local_start
sub_80270EA:
	push {lr}
	ldr r0, [r5,#0x44]
	sub r0, #2
	str r0, [r5,#0x44]
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #8
	blt loc_8027112
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #0x34 
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x91
	bl sound_play // () -> void
	mov r0, #0xc
	strh r0, [r5,#2]
loc_8027112:
	bl sub_80298D8
	pop {pc}
	thumb_func_end sub_80270EA

	thumb_local_start
sub_8027118:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne loc_802712E
	mov r0, #0x10
	strh r0, [r5,#2]
	mov r0, #0x30 
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_802712E:
	bl sub_80298D8
	pop {pc}
	thumb_func_end sub_8027118

	thumb_local_start
sub_8027134:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne loc_802714A
	mov r0, #4
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strh r0, [r5,#2]
loc_802714A:
	bl sub_80298D8
	pop {pc}
	thumb_func_end sub_8027134

	thumb_local_start
sub_8027150:
	push {r4,lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne loc_80271BC
	ldrb r3, [r5,#8]
	sub r3, #1
	mov r2, #0x48 
	add r2, r2, r3
	add r2, r2, r5
loc_8027164:
	cmp r3, #0
	beq loc_8027188
	sub r2, #1
	ldrb r0, [r2]
	strb r0, [r2,#1]
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r1, r3
	bl sub_80281D4
	pop {r2,r3}
	sub r3, #1
	b loc_8027164
loc_8027188:
	mov r0, #0xb
	strb r0, [r2]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #2
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	cmp r1, #0
	beq loc_802719E
	mov r0, #0xd
	b loc_80271A0
loc_802719E:
	ldrb r0, [r0,#5]
loc_80271A0:
	mov r1, #0
	bl sub_80281E4
	bl sub_8028E32
	mov r0, #0
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x92
	bl sound_play // () -> void
	mov r0, #0x18
	strh r0, [r5,#2]
loc_80271BC:
	bl sub_80298D8
	pop {r4,pc}
	thumb_func_end sub_8027150

	thumb_local_start
sub_80271C2:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_80271F2
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	ldrb r2, [r5,#0xc]
	cmp r2, #3
	bne locret_80271F2
	ldr r0, off_80271F4 // =TextScriptFirstBattleTutorials
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov r1, #0xa
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #4
	strb r0, [r5,#0xd]
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_80271F2:
	pop {pc}
off_80271F4: .word TextScriptFirstBattleTutorials
	thumb_func_end sub_80271C2

	thumb_local_start
sub_80271F8:
	push {lr}
	ldr r1, off_8027210 // =off_8027214 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
	.byte 0, 0
off_8027210: .word off_8027214
off_8027214: .word sub_802721C+1
	.word sub_802723A+1
	thumb_func_end sub_80271F8

	thumb_local_start
sub_802721C:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x40]
	bl sub_8029788
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #2
	strb r1, [r0,#7]
	bl sub_8028E32
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_802721C

	thumb_local_start
sub_802723A:
	push {lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	mov r1, #3
	and r1, r0
	bne locret_802728A
	lsr r0, r0, #2
	cmp r0, #8
	blt loc_802727A
	bl sub_802983C
	ldrb r0, [r5,#0x16]
	add r0, #1
	strb r0, [r5,#0x16]
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r2, #0
	ldrb r1, [r0,#4]
	sub r1, #1
	strb r1, [r0,#4]
	bne loc_802726A
	mov r2, #1
loc_802726A:
	strb r2, [r0,#7]
	bl sub_8028476
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b loc_802727E
loc_802727A:
	bl sub_8029688
loc_802727E:
	bl sub_8028E32
	mov r0, #0x14
	add r0, #0xff
	bl sound_play // () -> void
locret_802728A:
	pop {pc}
	thumb_func_end sub_802723A

	thumb_local_start
sub_802728C:
	push {r4,lr}
	ldr r4, [r5,#0x40]
	ldr r1, off_80272A0 // =off_80272A4 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_8029C08
	pop {r4,pc}
off_80272A0: .word off_80272A4
off_80272A4: .word sub_80272B8+1
	.word sub_80272D0+1
	.word sub_8027320+1
	.word sub_8027332+1
	.word sub_8027394+1
	thumb_func_end sub_802728C

	thumb_local_start
sub_80272B8:
	push {lr}
	ldrb r0, [r5,#0xc]
	lsl r0, r0, #2
	ldr r1, off_80272CC // =off_8027BEC 
	ldr r0, [r1,r0]
	str r0, [r5,#0x40]
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	.balign 4, 0x00
off_80272CC: .word off_8027BEC
	thumb_func_end sub_80272B8

	thumb_local_start
sub_80272D0:
	push {lr}
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_80272E6
	cmp r0, #1
	beq loc_80272FE
	cmp r0, #2
	beq loc_8027308
	mov r0, #0x10
	strh r0, [r5,#2]
	b locret_8027318
loc_80272E6:
	mov r0, #8
	strh r0, [r5,#2]
	ldr r0, off_802731C // =TextScriptFirstBattleTutorials
	ldrb r1, [r5,#0xc]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r1, [r4,#1]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	add r4, #2
	str r4, [r5,#0x40]
	b locret_8027318
loc_80272FE:
	mov r0, #0xc
	strh r0, [r5,#2]
	mov r0, #0x50 
	str r0, [r5,#0x44]
	b locret_8027318
loc_8027308:
	ldrb r1, [r4,#1]
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	bl sub_8015BEC
	add r4, #2
	str r4, [r5,#0x40]
locret_8027318:
	pop {pc}
	.balign 4, 0x00
off_802731C: .word TextScriptFirstBattleTutorials
	thumb_func_end sub_80272D0

	thumb_local_start
sub_8027320:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	bne locret_8027330
	mov r0, #4
	strh r0, [r5,#2]
locret_8027330:
	pop {pc}
	thumb_func_end sub_8027320

	thumb_local_start
sub_8027332:
	push {lr}
	add r4, #1
loc_8027336:
	push {r4}
	ldrb r0, [r4,#2]
	mov r1, #0x80
	bic r0, r1
	lsl r0, r0, #2
	ldr r2, off_8027384 // =byte_8027388
	ldr r2, [r2,r0]
	ldr r3, dword_8027390 // =0xb37a 
	ldrb r0, [r4]
	ldrb r1, [r4,#1]
	mov r4, #1
	bl sub_8001040
	pop {r4}
	ldrb r0, [r4,#2]
	add r4, #3
	mov r1, #0x80
	tst r0, r1
	beq loc_8027336
	ldr r0, [r5,#0x44]
	sub r0, #1
	str r0, [r5,#0x44]
	beq loc_802737C
	cmp r0, #0x44 
	bgt locret_8027382
	mov r3, r10
	ldr r3, [r3,#oToolkit_JoypadPtr]
	ldrh r0, [r3,#2]
	mov r1, #1
	tst r0, r1
	bne loc_802737C
	ldrh r0, [r3,#4]
	mov r1, #2
	tst r0, r1
	beq locret_8027382
loc_802737C:
	str r4, [r5,#0x40]
	mov r0, #4
	strh r0, [r5,#2]
locret_8027382:
	pop {pc}
off_8027384: .word byte_8027388
byte_8027388: .byte 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x60
dword_8027390: .word 0xB37A
	thumb_func_end sub_8027332

	thumb_local_start
sub_8027394:
	push {lr}
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	pop {pc}
	.word dword_20349A0
	thumb_func_end sub_8027394

	thumb_local_start
sub_80273A4:
	push {r4,lr}
	ldr r4, [r5,#0x40]
	ldr r1, off_80273B4 // =off_80273B8 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,pc}
off_80273B4: .word off_80273B8
off_80273B8: .word sub_80273CC+1
	.word sub_80272D0+1
	.word sub_8027320+1
	.word sub_8027332+1
	.word sub_80273E4+1
	thumb_func_end sub_80273A4

	thumb_local_start
sub_80273CC:
	push {lr}
	ldrb r0, [r5,#0xc]
	lsl r0, r0, #2
	ldr r1, off_80273E0 // =off_8027C84 
	ldr r0, [r1,r0]
	str r0, [r5,#0x40]
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	.byte 0, 0
off_80273E0: .word off_8027C84
	thumb_func_end sub_80273CC

	thumb_local_start
sub_80273E4:
	push {lr}
	mov r0, #8
	strb r0, [r5]
	pop {pc}
	thumb_func_end sub_80273E4

	thumb_local_start
sub_80273EC:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	bne loc_8027400
	ldrb r0, [r5,#0xd]
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_8027400:
	bl sub_8029C08
	pop {pc}
	thumb_func_end sub_80273EC

	thumb_local_start
sub_8027406:
	push {r4,lr}
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldr r1, off_8027424 // =off_8027428 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_8029C08
	bl sub_802899C
	pop {r4,pc}
off_8027424: .word off_8027428
off_8027428: .word sub_8027434+1
	.word sub_8027458+1
	.word sub_802750C+1
	thumb_func_end sub_8027406

	thumb_local_start
sub_8027434:
	push {lr}
	mov r0, #0x18
	str r0, [r5,#0x40]
	mov r0, #0
	str r0, [r5,#0x44]
	mov r0, #0
	mov r1, #0x5f 
	strb r0, [r5,r1]
loc_8027444:
	ldr r1, dword_8027508 // =0xffff 
	mov r2, #0x60 
	add r2, r2, r5
	strh r1, [r2,r0]
	add r0, #2
	cmp r0, #0x10
	blt loc_8027444
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_8027434

	thumb_local_start
sub_8027458:
	push {r4,r6,lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	mov r1, #0x19
	svc 6
	tst r1, r1
	bne loc_80274CE
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_80274F0
	add r0, #0x47 
	ldrb r0, [r5,r0]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_80274F0
	ldrb r1, [r0,#4]
	mov r2, #1
	tst r1, r2
	beq loc_802748E
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r1, #0
	strb r1, [r2,#0x17]
loc_802748E:
	ldr r2, [r0,#8]
	ldrh r0, [r2]
	ldr r3, dword_8027508 // =0xffff 
	strh r3, [r2]
	mov r1, #0x5f 
	ldrb r1, [r5,r1]
	lsl r2, r1, #1
	mov r3, #0x60 
	add r3, r3, r2
	strh r0, [r5,r3]
	add r1, #1
	mov r2, #0x5f 
	strb r1, [r5,r2]
	ldrb r1, [r5,#8]
	sub r1, #1
	strb r1, [r5,#8]
	ldr r0, dword_8027504 // =0x1ff 
	bl sub_80281D4
	ldrb r0, [r5,#8]
	mov r1, #0
	mov r2, #0
	bl sub_8029CD4
	bl sub_8028476
	mov r0, #0x97
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0x14
	str r0, [r5,#0x44]
loc_80274CE:
	ldr r0, [r5,#0x44]
	tst r0, r0
	beq loc_80274E4
	sub r0, #1
	str r0, [r5,#0x44]
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #3
	strb r1, [r0,#7]
	b locret_8027500
loc_80274E4:
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #0
	strb r1, [r0,#7]
	b locret_8027500
loc_80274F0:
	bl sub_802945A
	bl sub_80294E0
	bl sub_802A61A
	mov r0, #8
	strh r0, [r5,#2]
locret_8027500:
	pop {r4,r6,pc}
	.balign 4, 0x00
dword_8027504: .word 0x1FF
dword_8027508: .word 0xFFFF
	thumb_func_end sub_8027458

	thumb_local_start
sub_802750C:
	push {lr}
	ldr r0, [r5,#0x30]
	add r0, #1
	str r0, [r5,#0x30]
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r2, #0
	ldrb r1, [r0,#4]
	sub r1, #1
	strb r1, [r0,#4]
	bne loc_8027526
	mov r2, #2
loc_8027526:
	strb r2, [r0,#7]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0x83
	add r0, #0xff
	bl sound_play // () -> void
	bl sub_8028E32
	pop {pc}
	thumb_func_end sub_802750C

	thumb_local_start
sub_802753E:
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov pc, lr
	thumb_func_end sub_802753E

	thumb_local_start
sub_8027548:
	push {lr}
	ldr r1, off_8027560 // =off_8027564 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_8027548

	thumb_local_start
sub_8027574:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_8027574

	thumb_local_start
sub_8027580:
	push {lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x10
	blt locret_802759C
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #4
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strh r0, [r5,#2]
locret_802759C:
	pop {pc}
	thumb_func_end sub_8027580

	thumb_local_start
sub_802759E:
	push {r4,lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_80275D2
	mov r0, #0
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrh r0, [r5,#0x38]
	strh r0, [r5,#0x3a]
	ldrh r0, [r5,#0x3a]
	mov r1, #1
	lsl r1, r0
	ldr r3, off_80275D4 // =dword_20349A0 
	ldrh r0, [r3,#0xe] // (word_20349AE - 0x20349a0)
	orr r0, r1
	strh r0, [r3,#0xe] // (word_20349AE - 0x20349a0)
	ldrh r0, [r5,#0x3a]
	bl sub_802A0C8
	mov r0, #0x92
	bl sound_play // () -> void
	mov r0, #0xc
	strh r0, [r5,#2]
locret_80275D2:
	pop {r4,pc}
off_80275D4: .word dword_20349A0
	thumb_func_end sub_802759E

	thumb_local_start
sub_80275D8:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_80275EA
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_80275EA:
	pop {pc}
	thumb_func_end sub_80275D8

	thumb_local_start
sub_80275EC:
	push {lr}
	ldr r1, off_8027600 // =off_8027604 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_80275EC

	thumb_local_start
sub_8027618:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_8027618

	thumb_local_start
sub_8027624:
	push {lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x10
	blt locret_8027656
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #0x64 
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #1
	mov r1, #0x28 
	bl sub_80302B6
	mov r0, #0x94
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0xbc
	bl sound_play // () -> void
	mov r0, #8
	strh r0, [r5,#2]
locret_8027656:
	pop {pc}
	thumb_func_end sub_8027624

	thumb_local_start
sub_8027658:
	push {r4,r6,lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x32 
	blt locret_8027670
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_8027670
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8027670:
	pop {r4,r6,pc}
	thumb_func_end sub_8027658

	thumb_local_start
sub_8027672:
	push {r4,r6,lr}
	mov r0, #0
	bl sub_802A040
	ldrb r3, [r5,#8]
	sub r3, #1
	mov r2, #0x48 
	add r2, r2, r3
	add r2, r2, r5
	ldrb r6, [r2]
loc_8027686:
	cmp r3, #0
	beq loc_80276AA
	sub r2, #1
	ldrb r0, [r2]
	strb r0, [r2,#1]
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r1, r3
	bl sub_80281D4
	pop {r2,r3}
	sub r3, #1
	b loc_8027686
loc_80276AA:
	mov r1, #0x48 
	add r1, r1, r5
	strb r6, [r1]
	mov r0, r6
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r1, #0
	bl sub_80281D4
	bl sub_8028E32
	mov r0, #0x60 
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x10
	strh r0, [r5,#2]
	pop {r4,r6,pc}
	thumb_func_end sub_8027672

	thumb_local_start
sub_80276D6:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_8027706
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	ldrb r2, [r5,#0xc]
	cmp r2, #3
	bne locret_8027706
	ldr r0, off_8027708 // =TextScriptFirstBattleTutorials
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov r1, #0xa
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #4
	strb r0, [r5,#0xd]
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8027706:
	pop {pc}
off_8027708: .word TextScriptFirstBattleTutorials
	thumb_func_end sub_80276D6

	thumb_local_start
sub_802770C:
	push {lr}
	ldr r1, off_8027720 // =off_8027724 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_802770C

	thumb_local_start
sub_8027738:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #1
	strb r0, [r5,#0x17]
	mov r0, #1
	strb r0, [r5,#0xf]
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_8027738

	thumb_local_start
sub_802774C:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #0x64 
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #1
	mov r1, #0x28 
	bl sub_80302B6
	mov r0, #0x94
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0xbc
	bl sound_play // () -> void
	mov r0, #8
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_802774C

	thumb_local_start
sub_802777C:
	push {r4,r6,lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x32 
	blt locret_8027794
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_8027794
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8027794:
	pop {r4,r6,pc}
	thumb_func_end sub_802777C

	thumb_local_start
sub_8027796:
	push {r4,r6,lr}
	mov r4, #0
	bl sub_802A564
	cmp r0, #1
	bne loc_80277A4
	mov r4, #0xc
loc_80277A4:
	mov r0, r4
	bl sub_802A040
	ldrb r3, [r5,#8]
	sub r3, #1
	mov r2, #0x48 
	add r2, r2, r3
	add r2, r2, r5
	ldrb r6, [r2]
loc_80277B6:
	cmp r3, #0
	beq loc_80277DA
	sub r2, #1
	ldrb r0, [r2]
	strb r0, [r2,#1]
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r1, r3
	bl sub_80281D4
	pop {r2,r3}
	sub r3, #1
	b loc_80277B6
loc_80277DA:
	mov r1, #0x48 
	add r1, r1, r5
	strb r6, [r1]
	bl sub_802A034
	mov r1, #0
	bl sub_80281D4
	mov r0, #0xb
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #2
	strb r1, [r0,#7]
	bl sub_8028E32
	mov r0, #0x60 
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x10
	strh r0, [r5,#2]
	pop {r4,r6,pc}
	thumb_func_end sub_8027796

	thumb_local_start
sub_8027806:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_802782E
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	ldrb r2, [r5,#0xc]
	cmp r2, #3
	bne locret_802782E
	mov r0, #4
	strb r0, [r5,#0xc]
	mov r0, #4
	strb r0, [r5,#0xd]
	mov r0, #0x2c 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_802782E:
	pop {pc}
	.word TextScriptFirstBattleTutorials
	thumb_func_end sub_8027806

	thumb_local_start
sub_8027834:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_802784A
	str r0, [r5,#0x44]
	str r0, [r5,#0x40]
	mov r0, #1
	strb r0, [r5,#2]
	mov r0, #0x7a 
	bl sound_play // () -> void
loc_802784A:
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x14
	bgt loc_80278C8
	mov r1, #3
	svc 6
	tst r1, r1
	bne loc_80278D6
	ldr r0, [r5,#0x44]
	cmp r0, #3
	bge loc_802786A
	lsl r0, r0, #2
	ldr r1, off_80278DC // =off_80278E0 
	ldr r0, [r1,r0]
	b loc_8027876
loc_802786A:
	ldrb r0, [r5,#0x18]
	sub r0, #1
	lsl r0, r0, #2
	add r0, #0xc
	ldr r1, off_80278DC // =off_80278E0 
	ldr r0, [r1,r0]
loc_8027876:
	ldr r1, off_8027B24 // =unk_2035000 
	ldr r2, off_8027900 // =0x258 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	push {r4-r6}
	mov r2, #0xe1
	ldr r6, off_8027904 // =byte_8027B4A 
loc_8027884:
	ldr r0, dword_8027908 // =0xfff 
	and r0, r2
	ldrb r2, [r6,#4]
	lsl r2, r2, #0xc
	orr r2, r0
	ldrb r0, [r6]
	ldrb r1, [r6,#1]
	ldrb r3, [r6,#2]
	ldrb r4, [r6,#3]
	ldrb r5, [r6,#5]
	bl sub_8027CCC
	add r6, #6
	ldrb r0, [r6]
	cmp r0, #0xff
	bne loc_8027884
	pop {r4-r6}
	push {r4,r5}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8027B24 // =unk_2035000 
	mov r4, #0xf
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5}
	ldr r0, [r5,#0x44]
	cmp r0, #3
	bge loc_80278C8
	ldr r0, [r5,#0x44]
	add r0, #1
	str r0, [r5,#0x44]
	b loc_80278D6
loc_80278C8:
	mov r0, #0x54 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
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
	thumb_func_end sub_8027834

	thumb_local_start
sub_802790C:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_8027922
	str r0, [r5,#0x44]
	str r0, [r5,#0x40]
	mov r0, #1
	strb r0, [r5,#2]
	mov r0, #0x7d 
	bl sound_play // () -> void
loc_8027922:
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #5
	ble loc_8027940
	bl sub_80279FC
	bl sub_80279C8
	bl sub_8028476
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_8027940:
	bl sub_8029C08
	bl sub_802899C
	pop {pc}
	thumb_func_end sub_802790C

	thumb_local_start
sub_802794A:
	push {r7,lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_802795C
	str r0, [r5,#0x44]
	str r0, [r5,#0x40]
	mov r0, #1
	strb r0, [r5,#2]
	b loc_8027964
loc_802795C:
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	bl sub_8028A78
loc_8027964:
	bl sub_80279C8
	mov r4, #0
loc_802796A:
	ldrb r1, [r5,#0x1b]
	cmp r4, r1
	bne loc_802798A
	mov r2, #0
	ldr r1, dword_80279C4 // =0x55 
	add r1, r1, r4
	ldrb r0, [r5,r1]
	cmp r0, #0
	beq loc_802797E
	mov r2, #5
loc_802797E:
	ldr r1, off_80279C0 // =0x50 
	add r1, r1, r4
	ldrb r0, [r5,r1]
	add r0, r0, r2
	bl sub_8029EAC
loc_802798A:
	add r4, #1
	ldrb r2, [r5,#0x18]
	cmp r4, r2
	blt loc_802796A
	mov r0, #0
loc_8027994:
	mov r2, #2
	ldrb r1, [r5,#0x1b]
	cmp r0, r1
	bne loc_802799E
	mov r2, #0
loc_802799E:
	ldr r1, off_80279C0 // =0x50 
	add r1, r1, r0
	ldrb r1, [r5,r1]
	push {r0}
	bl sub_8029D94
	pop {r0}
	add r0, #1
	ldrb r2, [r5,#0x18]
	cmp r0, r2
	blt loc_8027994
	bl sub_80289E4
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	pop {r7,pc}
off_80279C0: .word 0x50
dword_80279C4: .word 0x55
	thumb_func_end sub_802794A

	thumb_local_start
sub_80279C8:
	push {r4,lr}
	bl sub_8029C08
	bl sub_802899C
	bl sub_8029D34
	mov r4, #4
loc_80279D8:
	mov r0, r4
	mov r1, #0
	ldrb r2, [r5,#8]
	sub r2, #1
	cmp r0, r2
	bgt loc_80279E6
	mov r1, #1
loc_80279E6:
	mov r2, #0
	bl sub_8029CD4
	sub r4, #1
	bpl loc_80279D8
	bl sub_8028E32
	pop {r4,pc}
	.balign 4, 0x00
	.word 0x1FF
	thumb_func_end sub_80279C8

	thumb_local_start
sub_80279FC:
	push {lr}
	ldr r0, off_8027A48 // =byte_86E64B4 
	ldr r1, off_8027B24 // =unk_2035000 
	ldr r2, off_8027A4C // =0x258 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	push {r4-r6}
	mov r2, #0x9b
	ldr r6, off_8027A50 // =byte_8027B2C 
loc_8027A0E:
	ldr r0, dword_8027A54 // =0xfff 
	and r0, r2
	ldrb r2, [r6,#4]
	lsl r2, r2, #0xc
	orr r2, r0
	ldrb r0, [r6]
	ldrb r1, [r6,#1]
	ldrb r3, [r6,#2]
	ldrb r4, [r6,#3]
	ldrb r5, [r6,#5]
	bl sub_8027CCC
	add r6, #6
	ldrb r0, [r6]
	cmp r0, #0xff
	bne loc_8027A0E
	pop {r4-r6}
	push {r4,r5}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8027B24 // =unk_2035000 
	mov r4, #0xf
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5}
	pop {pc}
	.balign 4, 0x00
off_8027A48: .word byte_86E64B4
off_8027A4C: .word 0x258
off_8027A50: .word byte_8027B2C
dword_8027A54: .word 0xFFF
	thumb_func_end sub_80279FC

	thumb_local_start
sub_8027A58:
	push {lr}
	ldr r1, off_8027A70 // =off_8027A74 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_8027A58

	thumb_local_start
sub_8027A84:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #4
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_8027A84

	thumb_local_start
sub_8027A90:
	push {lr}
	ldr r0, [r5,#0x40]
	add r0, #1
	str r0, [r5,#0x40]
	cmp r0, #0x10
	blt locret_8027AAC
	mov r0, #0
	str r0, [r5,#0x40]
	mov r0, #4
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strh r0, [r5,#2]
locret_8027AAC:
	pop {pc}
	thumb_func_end sub_8027A90

	thumb_local_start
sub_8027AAE:
	push {r4,r6,lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_8027ADC
	mov r0, #0
	mov r1, #0x20 
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrb r0, [r5,#0x1a]
	bl sub_802A088
	bl sub_80279FC
	bl sub_80279C8
	bl sub_8028476
	mov r0, #0x92
	bl sound_play // () -> void
	mov r0, #0xc
	strh r0, [r5,#2]
locret_8027ADC:
	pop {r4,r6,pc}
	thumb_func_end sub_8027AAE

	thumb_local_start
sub_8027ADE:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_8027B1A
	bl sub_80279FC
	bl sub_80279C8
	bl sub_8028476
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	ldrb r2, [r5,#0xc]
	cmp r2, #6
	bne locret_8027B1A
	ldr r0, off_8027B1C // =TextScriptFirstBattleTutorials
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov r1, #2
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #4
	strb r0, [r5,#0xd]
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8027B1A:
	pop {pc}
off_8027B1C: .word TextScriptFirstBattleTutorials
	.word dword_20364C0
off_8027B24: .word unk_2035000
	.word dword_20349A0
byte_8027B2C: .byte 0x2
byte_8027B2D: .byte 0x1
byte_8027B2E: .byte 0x8
byte_8027B2F: .byte 0x2
byte_8027B30: .byte 0x9
byte_8027B31: .byte 0x1, 0x2, 0x3, 0x7, 0x6, 0xA, 0x0, 0x2, 0x9, 0x1, 0x2, 0x9, 0x0, 0x3, 0x9, 0x2, 0x2
	.byte 0xB, 0x0, 0x6, 0x9, 0x3, 0x2, 0x9, 0x1
byte_8027B4A: .byte 0x1
byte_8027B4B: .byte 0xD
byte_8027B4C: .byte 0x2
byte_8027B4D: .byte 0x2
byte_8027B4E: .byte 0xB
byte_8027B4F: .byte 0x0, 0x1, 0xF, 0x2, 0x1, 0x9, 0x0, 0x3, 0xD, 0x2, 0x2, 0xB, 0x0, 0x3, 0xF
	.byte 0x2, 0x1, 0x9, 0x0, 0x5, 0xD, 0x2, 0x2, 0xB, 0x0, 0x5, 0xF, 0x2, 0x1, 0x9
	.byte 0x0, 0x7, 0xD, 0x2, 0x2, 0xB, 0x0, 0x7, 0xF, 0x2, 0x1, 0x9, 0x0, 0x9, 0xD
	.byte 0x2, 0x2, 0xB, 0x0, 0x9, 0xF, 0x2, 0x1, 0x9, 0x0, 0x1, 0x10, 0x2, 0x2, 0xB
	.byte 0x0, 0x1, 0x12, 0x2, 0x1, 0x9, 0x0, 0x3, 0x10, 0x2, 0x2, 0xB, 0x0, 0x3, 0x12
	.byte 0x2, 0x1, 0x9, 0x0, 0x5, 0x10, 0x2, 0x2, 0xB, 0x0, 0x5, 0x12, 0x2, 0x1, 0x9
	.byte 0x0, 0x7, 0x10, 0x2, 0x2, 0xB, 0x0, 0x7, 0x12, 0x2, 0x1, 0x9, 0x0, 0x9, 0x10
	.byte 0x2, 0x2, 0xB, 0x0, 0x9, 0x12, 0x2, 0x1, 0x9, 0x0, 0xB, 0x11, 0x4, 0x2, 0x9
	.byte 0x0, 0xC, 0x3, 0x2, 0xA, 0xB, 0x0, 0xFF, 0x0
TextScriptFirstBattleTutorials: .word TextScriptBattleTut1
	.word TextScriptBattleTutAreaGrab
	.word TextScriptBattleTutFullSyncrho
TextScriptPtrArr8027BDC: .word TextScriptDadCybeastTut
	.word TextScriptDadCybeastTut
	.word TextScriptDadCybeastTut
	.word TextScriptShukoCrossTut
off_8027BEC: .word byte_8027C08
	.word byte_8027C38
	.word byte_8027C50
	.word byte_8027C64
	.word byte_8027C70
	.word dword_8027C7C
	.word dword_8027C80
byte_8027C08: .byte 0x0, 0x0, 0x1, 0x78, 0x4E, 0x80, 0x0, 0x2, 0x1, 0x40, 0x80, 0x80
	.byte 0x0, 0x3, 0x1, 0x4A, 0x30, 0x80, 0x0, 0x4, 0x1, 0x42, 0x56, 0x80
	.byte 0x0, 0x5, 0x1, 0x8E, 0x58, 0x1, 0xB6, 0x88, 0x81, 0x0, 0x6, 0x1
	.byte 0x12, 0x72, 0x0, 0x32, 0x72, 0x80, 0x0, 0x8, 0x3, 0x0, 0x0, 0x0
byte_8027C38: .byte 0x0, 0x0, 0x1, 0x12, 0x72, 0x80, 0x0, 0x1, 0x1, 0x22, 0x72, 0x80
	.byte 0x0, 0x2, 0x1, 0x10, 0x7E, 0x0, 0x20, 0x7E, 0x80, 0x0, 0x4, 0x3
byte_8027C50: .byte 0x0, 0x0, 0x1, 0xA2, 0x20, 0x80, 0x0, 0x3, 0x2, 0xFF, 0x1, 0xA2
	.byte 0x20, 0x80, 0x0, 0x4, 0x3, 0x0, 0x0, 0x0
byte_8027C64: .byte 0x0, 0x0, 0x1, 0x6A, 0x7D, 0x81, 0x0, 0x1, 0x3, 0x0, 0x0, 0x0
byte_8027C70: .byte 0x0, 0x5, 0x1, 0xA2, 0x20, 0x80, 0x0, 0xA, 0x3, 0x0, 0x0, 0x0
dword_8027C7C: .word 0x31900
dword_8027C80: .word 0x30100
off_8027C84: .word byte_8027CA0
	.word byte_8027CB5
	.word byte_8027CC4
	.word byte_8027CC5
	.word byte_8027CC6
	.word byte_8027CC7
	.word dword_8027CC8
byte_8027CA0: .byte 0x0, 0x11, 0x1, 0x2E, 0xE, 0x80, 0x0, 0x12, 0x1, 0x48, 0x40
	.byte 0x80, 0x0, 0x13, 0x1, 0x78, 0x10, 0x80, 0x0, 0x15, 0x3
byte_8027CB5: .byte 0x0, 0x10, 0x1, 0x8C, 0x52, 0x0, 0x8C, 0x6A, 0x0, 0x8C, 0x82
	.byte 0x80, 0x0, 0x11, 0x3
byte_8027CC4: .byte 0x3
byte_8027CC5: .byte 0x3
byte_8027CC6: .byte 0x3
byte_8027CC7: .byte 0x3
dword_8027CC8: .word 0x3
	thumb_func_end sub_8027ADE

	thumb_local_start
sub_8027CCC:
	push {r0,r1,r3-r7,lr}
	mov r6, #1
	cmp r5, #1
	bne loc_8027CD6
	mul r6, r4
loc_8027CD6:
	mov r5, #0x1e
	mul r1, r5
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, off_8027D0C // =unk_2035000 
	add r1, r1, r0
	mov r5, r3
	mov r7, r2
loc_8027CE6:
	mov r0, r1
	mov r3, r5
	mov r2, r7
loc_8027CEC:
	strh r2, [r0]
	add r0, #2
	add r2, r2, r6
	sub r3, #1
	bne loc_8027CEC
	add r1, #0x1e
	cmp r6, #1
	beq loc_8027D04
	add r7, #1
	sub r2, r2, r6
	add r2, #1
	b loc_8027D06
loc_8027D04:
	mov r7, r2
loc_8027D06:
	sub r4, #1
	bne loc_8027CE6
	pop {r0,r1,r3-r7,pc}
off_8027D0C: .word unk_2035000
	thumb_func_end sub_8027CCC

	thumb_func_start sub_8027D10
sub_8027D10:
	mov r1, r0
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	ldr r0, off_8027D28 // =off_8027D2C 
	cmp r1, #0xff
	ble loc_8027D22
	add r0, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
loc_8027D22:
	ldr r0, [r0]
	mov pc, lr
	.balign 4, 0x00
off_8027D28: .word off_8027D2C
off_8027D2C: .word dword_86EA94C
off_8027D30: .word TextScriptEnemyNames86EB354
	thumb_func_end sub_8027D10

// (int chipID) -> void*
	thumb_local_start
chip_getScript_8027D34:
	mov r1, r0
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	ldr r0, off_8027D4C // =off_8027D50 
	cmp r1, #0xff
	ble loc_8027D46
	add r0, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
loc_8027D46:
	ldr r0, [r0]
	mov pc, lr
	.balign 4, 0x00
off_8027D4C: .word off_8027D50
off_8027D50: .word byte_86EB8B8
off_8027D54: .word dword_86EE0CC
	thumb_func_end chip_getScript_8027D34

	thumb_local_start
sub_8027D58:
	push {r4,lr}
	ldr r2, off_8027F0C // =byte_203CDB0 
	ldr r1, dword_8027D74 // =0xffff 
	mov r3, #0x1e
loc_8027D60:
	ldrh r4, [r2]
	cmp r4, r1
	beq loc_8027D6C
	add r2, #2
	sub r3, #1
	bne loc_8027D60
loc_8027D6C:
	mov r0, #0x1e
	sub r0, r0, r3
	pop {r4,pc}
	.balign 4, 0x00
dword_8027D74: .word 0xFFFF
	thumb_func_end sub_8027D58

	thumb_local_start
sub_8027D78:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	mov r0, #0
	strh r0, [r1,#0x18]
	bl sub_801E71C
	mov r0, #0x80
	bl sub_801DACC
	mov r0, #0
	mov r1, #0
	bl sub_801E0A0
	ldr r0, off_8027E14 // =0x400 
	bl sub_801BECC
	ldr r0, off_8027E14 // =0x400 
	bl sub_801DA48
	bl sub_800A97A
	tst r0, r0
	bne locret_8027E10
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#7]
	cmp r0, #1
	bne loc_8027DD4
	bl sub_800A8F8
	cmp r0, #0
	beq loc_8027DC0
	bl sub_801DF0C
	b locret_8027E10
loc_8027DC0:
	bl sub_802D234
	cmp r0, #1
	bne loc_8027DCE
	bl sub_801DEEE
	b locret_8027E10
loc_8027DCE:
	bl sub_801DED0
	b locret_8027E10
loc_8027DD4:
	bl sub_800A8F8
	cmp r0, #0
	beq loc_8027DEA
	ldr r0, dword_8027E18 // =0x20000 
	bl sub_801DA48
	ldr r0, dword_8027E18 // =0x20000 
	bl sub_801BECC
	b locret_8027E10
loc_8027DEA:
	bl sub_801DF92
	bl sub_802D234
	cmp r0, #1
	bne loc_8027E04
	mov r0, #0x20 
	bl sub_801DA48
	mov r0, #0x20 
	bl sub_801BECC
	b locret_8027E10
loc_8027E04:
	mov r0, #0x10
	bl sub_801DA48
	mov r0, #0x10
	bl sub_801BECC
locret_8027E10:
	pop {pc}
	.balign 4, 0x00
off_8027E14: .word 0x400
dword_8027E18: .word 0x20000
	thumb_func_end sub_8027D78

// (int a1) -> void*
	thumb_local_start
getLocOfActiveChips_8027E1C:
	mov r1, #0xc
	mul r0, r1
	ldr r1, off_8027E28 // =unk_20365C0 
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_8027E28: .word unk_20365C0
	thumb_func_end getLocOfActiveChips_8027E1C

	thumb_local_start
sub_8027E2C:
	push {r4,r6,r7,lr}
	mov r0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	// size
	mov r1, #0x90
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_802A40C
	bl sub_8027E90
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0x17]
	cmp r0, #0
	beq loc_8027E52
	mov r0, #1
	strb r0, [r4,#4]
loc_8027E52:
	ldrb r6, [r5,#6]
	bl sub_8027EE8
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	ldrb r1, [r5,#0x10]
	cmp r1, #0
	bne loc_8027E70
	ldrb r2, [r5,#0x15]
	cmp r1, r2
	beq loc_8027E70
	bl sub_8015B5C
	b loc_8027E74
loc_8027E70:
	bl sub_8015B54
loc_8027E74:
	mov r7, r1
	bl sub_8027F10
	bl sub_80280E0
	bl sub_80280A2
	bl sub_8027F42
	bl sub_8028050
	bl sub_802806C
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8027E2C

	thumb_local_start
sub_8027E90:
	push {r6,lr}
	mov r3, #0xc
	mov r2, r4
	ldr r1, off_8027EE4 // =dword_802A7CC 
loc_8027E98:
	ldr r0, [r1]
	str r0, [r2]
	mov r0, #0
	str r0, [r2,#4]
	str r0, [r2,#8]
	add r1, #4
	add r2, #0xc
	sub r3, #1
	bne loc_8027E98
	bl sub_802D234
	cmp r0, #1
	bne loc_8027EC2
	ldr r0, off_8028118 // =dword_20349A0 
	ldrb r0, [r0,#0x4] // (byte_20349A4 - 0x20349a0)
	cmp r0, #0
	bne locret_8027EE0
	mov r0, #3
	mov r1, #0x84
	strb r0, [r4,r1]
	b locret_8027EE0
loc_8027EC2:
	bl sub_8029FB4
	tst r0, r0
	beq locret_8027EE0
	mov r6, #1
	bl sub_802A57E
	tst r0, r0
	beq loc_8027ED6
	mov r6, #0
loc_8027ED6:
	mov r0, #2
	mov r1, #0x84
	strb r0, [r4,r1]
	mov r1, #0x8b
	strb r6, [r4,r1]
locret_8027EE0:
	pop {r6,pc}
	.balign 4, 0x00
off_8027EE4: .word dword_802A7CC
	thumb_func_end sub_8027E90

	thumb_local_start
sub_8027EE8:
	push {r4,r6,lr}
	ldrb r3, [r5,#5]
	cmp r3, #0
	beq locret_8027F0A
	cmp r6, #0
	beq locret_8027F0A
	cmp r3, r6
	blt loc_8027EFA
	mov r3, r6
loc_8027EFA:
	mov r2, #0
	ldr r1, off_8027F0C // =byte_203CDB0 
loc_8027EFE:
	strb r2, [r4]
	str r1, [r4,#8]
	add r4, #0xc
	add r1, #2
	sub r3, #1
	bne loc_8027EFE
locret_8027F0A:
	pop {r4,r6,pc}
off_8027F0C: .word byte_203CDB0
	thumb_func_end sub_8027EE8

	thumb_local_start
sub_8027F10:
	push {r4,r6,lr}
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	bne locret_8027F40
	cmp r7, #0xa
	beq loc_8027F20
	cmp r7, #0x16
	bne loc_8027F38
loc_8027F20:
	mov r0, #8
	mov r1, #0x60 
	add r1, r1, r4
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1,#0xc]
	mov r0, #1
	ldr r2, [r5,#0x30]
	sub r0, r0, r2
	strb r0, [r1,#4]
	mov r0, #1
	strb r0, [r1,#7]
loc_8027F38:
	mov r0, #0xb
	strb r0, [r1,#3]
	mov r0, #7
	strb r0, [r1,#0xe]
locret_8027F40:
	pop {r4,r6,pc}
	thumb_func_end sub_8027F10

	thumb_local_start
sub_8027F42:
	push {r4,r6,r7,lr}
	mov r6, #0xb
loc_8027F46:
	mov r0, r6
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r7, r0
	ldrb r0, [r7]
	cmp r0, #0xa
	beq loc_8027F64
	cmp r0, #0xb
	beq loc_8027F64
	bl sub_8027F6A
	bl sub_8027F84
	bl sub_8027FDC
loc_8027F64:
	sub r6, #1
	bpl loc_8027F46
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8027F42

	thumb_local_start
sub_8027F6A:
	push {r7,lr}
	ldrb r0, [r7,#1]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r0, [r0]
	mov r1, #0xff
	cmp r0, #0xa
	beq loc_8027F7E
	cmp r0, #0xb
	bne locret_8027F82
loc_8027F7E:
	mov r0, #0xff
	strb r0, [r7,#1]
locret_8027F82:
	pop {r7,pc}
	thumb_func_end sub_8027F6A

	thumb_local_start
sub_8027F84:
	push {r6,r7,lr}
	ldrb r0, [r7,#2]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r0, [r0]
	mov r1, #0xff
	cmp r0, #0xa
	beq loc_8027F98
	cmp r0, #0xb
	bne locret_8027FC2
loc_8027F98:
	ldr r0, off_8027FC4 // =off_802A7FC 
	cmp r6, #0xa
	beq loc_8027FB0
	cmp r6, #5
	blt loc_8027FB0
	ldr r0, off_8027FC8 // =byte_802A804 
	ldrb r1, [r7]
	cmp r1, #9
	beq loc_8027FAE
	cmp r1, #5
	bne loc_8027FB0
loc_8027FAE:
	sub r6, #1
loc_8027FB0:
	ldr r1, off_8027FCC // =byte_8027FD0
	ldrb r1, [r1,r6]
	add r0, r0, r1
	bl sub_8028034
	cmp r0, r6
	bne loc_8027FC0
	mov r0, #0xff
loc_8027FC0:
	strb r0, [r7,#2]
locret_8027FC2:
	pop {r6,r7,pc}
off_8027FC4: .word off_802A7FC
off_8027FC8: .word byte_802A804
off_8027FCC: .word byte_8027FD0
byte_8027FD0: .byte 0x7, 0x6, 0x5, 0x4, 0x2, 0x11, 0x10, 0xF, 0x7, 0x1, 0x0, 0x0
	thumb_func_end sub_8027F84

	thumb_local_start
sub_8027FDC:
	push {r6,r7,lr}
	ldrb r0, [r7,#3]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r0, [r0]
	mov r1, #0xff
	cmp r0, #0xa
	beq loc_8027FF0
	cmp r0, #0xb
	bne locret_802801A
loc_8027FF0:
	ldr r0, off_802801C // =byte_802A817
	cmp r6, #0xa
	beq loc_8028008
	cmp r6, #5
	blt loc_8028008
	ldr r0, off_8028020 // =byte_802A81F 
	ldrb r1, [r7]
	cmp r1, #8
	beq loc_8028006
	cmp r1, #4
	bne loc_8028008
loc_8028006:
	add r6, #1
loc_8028008:
	ldr r1, off_8028024 // =byte_8028028
	ldrb r1, [r1,r6]
	add r0, r0, r1
	bl sub_8028034
	cmp r0, r6
	bne loc_8028018
	mov r0, #0xff
loc_8028018:
	strb r0, [r7,#3]
locret_802801A:
	pop {r6,r7,pc}
off_802801C: .word byte_802A817
off_8028020: .word byte_802A81F
off_8028024: .word byte_8028028
byte_8028028: .byte 0x1, 0x2, 0x3, 0x5, 0x7, 0x1, 0x2, 0x3, 0x4, 0x5, 0x0, 0x0
	thumb_func_end sub_8027FDC

	thumb_local_start
sub_8028034:
	push {r4,lr}
	mov r4, r0
loc_8028038:
	ldrb r0, [r4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r0, [r0]
	cmp r0, #0xa
	beq loc_8028048
	cmp r0, #0xb
	bne loc_802804C
loc_8028048:
	add r4, #1
	b loc_8028038
loc_802804C:
	ldrb r0, [r4]
	pop {r4,pc}
	thumb_func_end sub_8028034

	thumb_local_start
sub_8028050:
	push {r4,r6,lr}
	mov r6, #0
loc_8028054:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq loc_802805E
	cmp r0, #0xb
	bne loc_8028068
loc_802805E:
	add r4, #0xc
	add r6, #1
	cmp r6, #0xc
	bne loc_8028054
	mov r6, #0xa
loc_8028068:
	strb r6, [r5,#7]
	pop {r4,r6,pc}
	thumb_func_end sub_8028050

	thumb_local_start
sub_802806C:
	push {r4,r6,lr}
	ldrb r0, [r5,#7]
	cmp r0, #0
	bne locret_80280A0
	mov r6, #0
loc_8028076:
	ldrb r0, [r4]
	cmp r0, #0
	bne loc_8028094
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl sub_802A53C
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #0x20 
	tst r0, r1
	bne loc_802809E
loc_8028094:
	add r4, #0xc
	add r6, #1
	cmp r6, #0xa
	bne loc_8028076
	b locret_80280A0
loc_802809E:
	strb r6, [r5,#7]
locret_80280A0:
	pop {r4,r6,pc}
	thumb_func_end sub_802806C

	thumb_local_start
sub_80280A2:
	push {r4,lr}
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	beq locret_80280DA
	cmp r0, #0xb
	bgt locret_80280DA
	ldr r1, off_8028118 // =dword_20349A0 
	ldrh r1, [r1,#0xc] // (word_20349AC - 0x20349a0)
	mov r2, #1
	lsl r2, r0
	tst r1, r2
	bne locret_80280DA
	sub r0, #1
	lsl r0, r0, #1
	ldr r1, off_80280DC // =byte_802A828 
	add r4, r0, r1
	ldrh r0, [r4]
	strh r0, [r5,#0x22]
	mov r0, #9
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #0
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0,#4]
	mov r1, #0x22 
	add r1, r1, r5
	str r1, [r0,#8]
locret_80280DA:
	pop {r4,pc}
off_80280DC: .word byte_802A828
	thumb_func_end sub_80280A2

	thumb_local_start
sub_80280E0:
	push {r4,lr}
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	bne locret_8028114
	bl sub_802A5DA
	tst r0, r0
	beq locret_8028114
	mov r0, #4
	mov r1, #0x60 
	add r1, r1, r4
	strb r0, [r1]
	mov r0, #5
	strb r0, [r1,#0xc]
	mov r0, #1
	ldrb r2, [r5,#0x16]
	sub r0, r0, r2
	strb r0, [r1,#4]
	tst r0, r0
	bne loc_802810C
	mov r0, #1
	strb r0, [r1,#7]
loc_802810C:
	mov r0, #0xb
	strb r0, [r1,#3]
	mov r0, #7
	strb r0, [r1,#0xe]
locret_8028114:
	pop {r4,pc}
	.balign 4, 0x00
off_8028118: .word dword_20349A0
	thumb_func_end sub_80280E0

	thumb_local_start
sub_802811C:
	push {lr}
	// dataList
	ldr r0, off_8028154 // =off_802A744 
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	ldrb r0, [r5,#0x10]
	bl sub_802812C
	pop {pc}
	thumb_func_end sub_802811C

	thumb_local_start
sub_802812C:
	push {r4,lr}
	mov r4, r0
	bl sub_8028164
	ldr r1, dword_8028158 // =0x60170e0 
	mov r2, #0x40 
	bl sub_8000AC8
	add r0, r0, r2
	ldr r1, dword_802815C // =0x6017160 
	bl sub_8000AC8
	mov r0, r4
	bl sub_8028172
	ldr r1, off_8028160 // =byte_30016B0 
	mov r2, #0x20 
	bl sub_8000AC8
	pop {r4,pc}
off_8028154: .word off_802A744
dword_8028158: .word 0x60170E0
dword_802815C: .word 0x6017160
off_8028160: .word byte_30016B0
	thumb_func_end sub_802812C

	thumb_local_start
sub_8028164:
	ldr r1, off_8028198 // =byte_802819C 
	ldrb r0, [r1,r0]
	mov r1, #0x80
	mul r0, r1
	ldr r1, off_8028180 // =byte_86F5834
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_8028164

	thumb_local_start
sub_8028172:
	ldr r1, off_8028188 // =off_802818C 
	ldrb r0, [r1,r0]
	mov r1, #0x20 
	mul r0, r1
	ldr r1, off_8028184 // =byte_86E56FC 
	add r0, r0, r1
	mov pc, lr
off_8028180: .word byte_86F5834
off_8028184: .word byte_86E56FC
off_8028188: .word off_802818C
off_802818C: .word unk_2010100
	.byte 0x3, 0x0, 0x4, 0x1, 0x5, 0x2, 0x6, 0x0
off_8028198: .word byte_802819C
byte_802819C: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
	thumb_func_end sub_8028172

	thumb_local_start
sub_80281A8:
	push {r1,r2,lr}
	ldr r2, dword_80283AC // =0x1ff 
	and r0, r2
	cmp r0, r2
	bne loc_80281B6
	ldr r0, off_80281C0 // =byte_86E601C 
	pop {r1,r2,pc}
loc_80281B6:
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldr r0, [r0,#0x20]
	pop {r1,r2,pc}
	.byte 0, 0
off_80281C0: .word byte_86E601C
	thumb_func_end sub_80281A8

	thumb_local_start
sub_80281C4:
	push {r2,r3,lr}
	bl sub_80281A8
	mov r2, #0x80
	bl sub_8000AC8
	add r1, #0x80
	pop {r2,r3,pc}
	thumb_func_end sub_80281C4

	thumb_local_start
sub_80281D4:
	push {r1,r2,lr}
	mov r2, #0x80
	mul r2, r1
	ldr r1, dword_80281FC // =0x600a4a0 
	add r1, r1, r2
	bl sub_80281C4
	pop {r1,r2,pc}
	thumb_func_end sub_80281D4

	thumb_local_start
sub_80281E4:
	push {r1-r3,lr}
	mov r2, #0x80
	mul r1, r2
	ldr r3, dword_80281FC // =0x600a4a0 
	add r1, r1, r3
	mul r0, r2
	ldr r3, off_8028200 // =byte_8725894 
	add r0, r0, r3
	bl sub_8000AC8
	pop {r1-r3,pc}
	.balign 4, 0x00
dword_80281FC: .word 0x600A4A0
off_8028200: .word byte_8725894
	thumb_func_end sub_80281E4

	thumb_local_start
sub_8028204:
	push {r2,r3,lr}
	bl sub_8028214
	mov r2, #0x40 
	bl sub_8000AC8
	add r1, #0x40 
	pop {r2,r3,pc}
	thumb_func_end sub_8028204

	thumb_local_start
sub_8028214:
	push {r2,lr}
	cmp r0, #0x1b
	beq loc_802822A
	cmp r0, #0x1c
	beq loc_802822A
	blt loc_8028222
	mov r0, #0x1b
loc_8028222:
	lsl r0, r0, #6
	ldr r2, off_8028230 // =dword_86E591C 
	add r0, r0, r2
	pop {r2,pc}
loc_802822A:
	ldr r0, off_8028234 // =byte_802A700 
	pop {r2,pc}
	.byte 0, 0
off_8028230: .word dword_86E591C
off_8028234: .word byte_802A700
	thumb_func_end sub_8028214

	thumb_local_start
sub_8028238:
	push {lr}
	mov r1, #0xc0
	mul r0, r1
	ldr r1, dword_802824C // =0x6009c20 
	add r1, r1, r0
	ldr r0, dword_80283AC // =0x1ff 
	bl sub_80281C4
	pop {pc}
	.balign 4, 0x00
dword_802824C: .word 0x6009C20
	thumb_func_end sub_8028238

	thumb_local_start
sub_8028250:
	push {r4-r7,lr}
	push {r0}
	mov r0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	mov r7, #0xc
	ldr r1, dword_8028358 // =0x6009c20 
loc_8028260:
	ldrb r0, [r4]
	lsl r0, r0, #2
	ldr r2, off_802836C // =off_8028370 
	ldr r0, [r2,r0]
	mov lr, pc
	bx r0
	add r4, #0xc
	sub r7, #1
	bne loc_8028260
	pop {r0}
	cmp r0, #0
	bne loc_802827E
	bl sub_80283B0
	b locret_8028282
loc_802827E:
	bl sub_80283C8
locret_8028282:
	pop {r4-r7,pc}
	thumb_func_end sub_8028250

	thumb_local_start
sub_8028284:
	push {r4,lr}
	ldrb r0, [r4,#7]
	cmp r0, #2
	bne loc_8028290
	ldr r0, dword_80283AC // =0x1ff 
	b loc_8028298
loc_8028290:
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
loc_8028298:
	bl sub_80281C4
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	lsr r0, r0, #9
	bl sub_8028204
	pop {r4,pc}
	thumb_func_end sub_8028284

	thumb_local_start
nullsub_14:
	mov pc, lr
	thumb_func_end nullsub_14

	thumb_local_start
sub_80282AE:
	push {lr}
	ldr r0, off_80283A0 // =byte_86E79CC
	ldr r2, off_80283A4 // =0x100 
	ldrb r3, [r4,#7]
	cmp r3, #0
	beq loc_80282BC
	add r0, r0, r2
loc_80282BC:
	bl sub_8000AC8
	pop {pc}
	thumb_func_end sub_80282AE

	thumb_local_start
sub_80282C2:
	push {lr}
	ldr r0, off_80283A0 // =byte_86E79CC
	ldr r2, off_80283A4 // =0x100 
	add r0, r0, r2
	add r0, r0, r2
	bl sub_8000AC8
	pop {pc}
	thumb_func_end sub_80282C2

	thumb_local_start
sub_80282D2:
	push {lr}
	ldr r0, off_802835C // =dword_86E441C 
	ldr r2, off_8028364 // =0x180 
	ldrb r3, [r4,#7]
	mul r3, r2
	add r0, r0, r3
	bl sub_8000AC8
	add r1, #0xc0
	add r1, #0xc0
	pop {pc}
	thumb_func_end sub_80282D2

	thumb_local_start
sub_80282E8:
	push {lr}
	ldrb r0, [r4,#7]
	cmp r0, #2
	bne loc_80282F4
	ldr r0, dword_80283AC // =0x1ff 
	b loc_80282FC
loc_80282F4:
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
loc_80282FC:
	bl sub_80281C4
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	lsr r0, r0, #9
	bl sub_8028204
	pop {pc}
	thumb_func_end sub_80282E8

	thumb_local_start
sub_8028310:
	push {lr}
	ldr r0, dword_80283AC // =0x1ff 
	bl sub_80281C4
	mov r0, #0x1d
	bl sub_8028204
	pop {pc}
	thumb_func_end sub_8028310

	thumb_local_start
sub_8028320:
	push {lr}
	cmp r7, #1
	bne loc_8028334
	ldr r0, off_80283A0 // =byte_86E79CC
	ldr r2, off_80283A8 // =0x300 
	add r0, r0, r2
	ldr r2, off_80283A4 // =0x100 
	bl sub_8000AC8
	b locret_802833E
loc_8028334:
	ldr r0, off_8028368 // =byte_802A700 
	mov r3, #3
	bl sub_802868C
	add r1, #0xc0
locret_802833E:
	pop {pc}
	thumb_func_end sub_8028320

	thumb_local_start
sub_8028340:
	push {lr}
	ldr r0, off_8028360 // =dword_86E4D9C 
	ldr r2, off_8028364 // =0x180 
	ldrb r3, [r4,#7]
	mul r3, r2
	add r0, r0, r3
	bl sub_8000AC8
	add r1, #0xc0
	add r1, #0xc0
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
off_80283A0: .word byte_86E79CC
off_80283A4: .word 0x100
off_80283A8: .word 0x300
dword_80283AC: .word 0x1FF
	thumb_func_end sub_8028340

	thumb_local_start
sub_80283B0:
	push {r4,r5,lr}
	bl sub_80283C8
	// j
	mov r0, #0
	// i
	mov r1, #0xd
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8028468 // =unk_2035186 
	mov r4, #0xf
	mov r5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5,pc}
	thumb_func_end sub_80283B0

	thumb_local_start
sub_80283C8:
	push {r4,r5,lr}
	mov r0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r7, r0
	mov r6, #0
loc_80283D4:
	mov r2, #0
	ldrb r0, [r7]
	cmp r0, #1
	beq loc_802842C
	cmp r0, #2
	beq loc_802842C
	cmp r0, #3
	beq loc_802842C
	cmp r0, #0xa
	beq loc_8028400
	cmp r0, #6
	beq loc_80283F8
	cmp r0, #7
	beq loc_80283F8
	cmp r0, #0
	beq loc_80283F8
	mov r2, #4
	b loc_8028400
loc_80283F8:
	ldrb r0, [r7,#7]
	cmp r0, #1
	bne loc_8028400
	mov r2, #2
loc_8028400:
	ldr r4, off_8028438 // =off_802843C 
	lsl r0, r6, #2
	ldr r4, [r4,r0]
	ldr r1, off_802846C // =byte_8028470
	ldrh r2, [r1,r2]
	ldr r1, dword_8028464 // =0x3ff 
	ldrh r0, [r4]
	and r0, r1
	orr r0, r2
	strh r0, [r4]
	ldrh r0, [r4,#2]
	and r0, r1
	orr r0, r2
	strh r0, [r4,#2]
	ldrh r0, [r4,#0x1e]
	and r0, r1
	orr r0, r2
	strh r0, [r4,#0x1e]
	ldrh r0, [r4,#0x20]
	and r0, r1
	orr r0, r2
	strh r0, [r4,#0x20]
loc_802842C:
	add r7, #0xc
	add r6, #1
	cmp r6, #0xa
	blt loc_80283D4
	pop {r4,r5,pc}
	.balign 4, 0x00
off_8028438: .word off_802843C
off_802843C: .word unk_2035188
	.word unk_203518C
	.word unk_2035190
	.word unk_2035194
	.word unk_2035198
	.byte 0xE2, 0x51, 0x3, 0x2, 0xE6, 0x51, 0x3, 0x2, 0xEA, 0x51, 0x3
	.byte 0x2, 0xEE, 0x51, 0x3, 0x2, 0xF2, 0x51, 0x3, 0x2
dword_8028464: .word 0x3FF
off_8028468: .word unk_2035186
off_802846C: .word byte_8028470
byte_8028470: .byte 0x0, 0xB0, 0x0, 0xC0, 0x0, 0x90
	thumb_func_end sub_80283C8

	thumb_local_start
sub_8028476:
	push {lr}
	ldrb r0, [r5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #0
	beq loc_80284AA
	cmp r1, #1
	beq loc_80284B8
	cmp r1, #2
	beq loc_80284BE
	cmp r1, #4
	beq loc_80284C4
	cmp r1, #5
	beq loc_80284C4
	cmp r1, #6
	beq loc_80284CA
	cmp r1, #7
	beq loc_80284CA
	cmp r1, #3
	beq loc_80284D4
	cmp r1, #8
	beq loc_80284DA
	cmp r1, #9
	beq loc_80284DA
	b locret_80284E0
loc_80284AA:
	ldr r0, [r0,#8]
	ldrh r0, [r0]
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
	ldr r0, [r0,#8]
	ldrh r0, [r0]
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
	thumb_func_end sub_8028476

	thumb_local_start
sub_80284E2:
	push {r4,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	push {r0-r7}
	bl sub_8027D10
	ldr r2, off_8028674 // =byte_203C4E0 
	ldr r3, dword_8028678 // =0x6009360 
	mov r4, #8
	mov r5, #1
	ldr r6, off_802867C // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
	pop {r0-r7}
	ldr r0, [sp]
	ldr r1, dword_8028688 // =0x1ff 
	and r0, r1
	push {r0}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#0xd]
	bl sub_80109A4
	str r0, [sp,#0x10]
	pop {r0}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	str r0, [sp,#4]
	ldr r0, [r0,#0x24]
	cmp r0, #0
	beq loc_8028536
	ldr r1, dword_802865C // =0x6009560 
	ldr r2, dword_8028660 // =0x540
	bl sub_8000AC8
	ldr r0, [sp,#4]
	ldr r0, [r0,#0x28]
	ldr r1, off_8028664 // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
loc_8028536:
	ldr r1, [sp,#4]
	ldrb r0, [r1,#7]
	ldrb r1, [r1,#9]
	cmp r0, #2
	ble loc_8028544
	mov r0, #0
	b loc_802854C
loc_8028544:
	mov r2, #0x20 
	tst r1, r2
	beq loc_802854C
	mov r0, #3
loc_802854C:
	mov r2, #0x20 
	mul r0, r2
	ldr r1, off_8028818 // =byte_86E587C 
	add r0, r0, r1
	ldr r1, off_802881C // =unk_3001A80 
	bl sub_8000AC8
	ldr r0, [sp]
	lsr r0, r0, #9
	cmp r0, #0x1c
	bne loc_8028564
	mov r0, #0x1b
loc_8028564:
	mov r1, #0x40 
	mul r0, r1
	ldr r1, off_8028640 // =dword_86E2E98 
	add r0, r0, r1
	ldr r1, dword_8028644 // =0x6009aa0 
	mov r2, #0x40 
	bl sub_8000AC8
	ldr r0, [sp,#4]
	ldrb r1, [r0,#9]
	mov r2, #0x12
	and r1, r2
	str r1, [sp,#8]
	ldrb r0, [r0,#6]
	push {r0}
	mov r2, #0x80
	mul r0, r2
	ldr r1, off_8028648 // =dword_86E3598 
	add r0, r0, r1
	ldr r1, dword_802864C // =0x6009ae0 
	bl sub_8000AC8
	pop {r0}
	mov r2, #0xc
	mul r0, r2
	ldr r1, off_8028680 // =dword_86E3B18 
	add r0, r0, r1
	ldr r1, off_8028684 // =unk_3001AD4 
	bl sub_8000AC4
	ldr r0, [sp,#8]
	cmp r0, #0
	beq loc_80285C6
	ldr r0, [sp]
	cmp r0, #0x55 
	bne loc_80285B8
	mov r4, #0xaa
	lsl r4, r4, #4
	add r4, #0xa
	mov r0, #3
	str r0, [sp,#8]
	b loc_80285D4
loc_80285B8:
	ldr r0, [sp,#0xc]
	bl sub_8000C00
	mov r4, r0
	bl sub_8000C5C
	str r0, [sp,#8]
loc_80285C6:
	mov r3, #3
	sub r3, r3, r0
	beq loc_80285D4
	ldr r0, off_8028668 // =byte_802A6C0 
	ldr r1, dword_8028654 // =0x6009b60 
	bl sub_802868C
loc_80285D4:
	ldr r3, [sp,#8]
	cmp r3, #0
	beq loc_80285FA
	ldr r1, dword_8028658 // =0x6009be0 
loc_80285DC:
	mov r0, #0xf
	and r0, r4
	lsr r4, r4, #4
	mov r2, #0x40 
	mul r0, r2
	ldr r2, off_8028650 // =dword_86E411C 
	add r0, r0, r2
	mov r2, #0x40 
	push {r3}
	bl sub_8000AC8
	pop {r3}
	sub r1, #0x40 
	sub r3, #1
	bne loc_80285DC
loc_80285FA:
	add sp, sp, #0x10
	pop {r4,pc}
	thumb_func_end sub_80284E2

	thumb_local_start
sub_80285FE:
	push {r4,lr}
	push {r0-r7}
	bl sub_8027D10
	ldr r2, off_8028674 // =byte_203C4E0 
	ldr r3, dword_8028678 // =0x6009360 
	mov r4, #8
	mov r5, #1
	ldr r6, off_802867C // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
	pop {r0-r7}
	ldr r1, dword_8028688 // =0x1ff 
	and r0, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldr r0, [r0,#0x24]
	cmp r0, #0
	beq loc_802863A
	ldr r1, dword_802865C // =0x6009560 
	ldr r2, dword_8028660 // =0x540
	bl sub_8000AC8
	ldr r0, [r4,#0x28]
	ldr r1, off_8028664 // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
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
dword_8028660: .word 0x540
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
	thumb_func_end sub_80285FE

	thumb_local_start
sub_802868C:
	push {r0-r4,lr}
	mov r4, r3
	mov r2, #0x40 
loc_8028692:
	bl sub_8000AC8
	add r1, r1, r2
	sub r4, #1
	bne loc_8028692
	pop {r0-r4,pc}
	thumb_func_end sub_802868C

	thumb_local_start
sub_802869E:
	push {lr}
	ldr r1, dword_80286C0 // =0x6009aa0 
	ldr r0, off_80286D0 // =byte_802A6C0 
	mov r3, #1
	bl sub_802868C
	ldr r1, dword_80286C4 // =0x6009ae0 
	ldr r0, off_80286CC // =byte_802A680 
	mov r3, #2
	bl sub_802868C
	ldr r1, dword_80286C8 // =0x6009b60 
	ldr r0, off_80286D0 // =byte_802A6C0 
	mov r3, #3
	bl sub_802868C
	pop {pc}
dword_80286C0: .word 0x6009AA0
dword_80286C4: .word 0x6009AE0
dword_80286C8: .word 0x6009B60
off_80286CC: .word byte_802A680
off_80286D0: .word byte_802A6C0
	thumb_func_end sub_802869E

	thumb_local_start
sub_80286D4:
	push {lr}
	bl sub_80287D2
	ldr r0, off_8028704 // =off_8028708 
	ldrb r1, [r5,#8]
	cmp r1, #0
	beq loc_80286E4
	mov r1, #4
loc_80286E4:
	push {r1}
	ldr r0, [r0,r1]
	ldr r1, dword_80287F0 // =0x6009560 
	ldr r2, dword_80287F4 // =0x540
	bl sub_8000AC8
	pop {r1}
	ldr r0, off_8028710 // =off_8028714 
	ldr r0, [r0,r1]
	ldr r1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
	bl sub_802869E
	pop {pc}
off_8028704: .word off_8028708
off_8028708: .word dword_8722AF4
	.word dword_87225B4
off_8028710: .word off_8028714
off_8028714: .word dword_8725874
	.word dword_87257F4
	thumb_func_end sub_80286D4

	thumb_local_start
sub_802871C:
	push {lr}
	bl sub_80287D2
	ldr r0, off_802874C // =byte_8723034 
	ldr r1, dword_80287F0 // =0x6009560 
	ldr r2, dword_80287F4 // =0x540
	bl sub_8000AC8
	mov r0, #0xb
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r0, [r0,#6]
	mov r1, #0x20 
	mul r1, r0
	ldr r0, off_8028750 // =dword_8725814 
	add r0, r0, r1
	ldr r1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
	bl sub_802869E
	pop {pc}
	.balign 4, 0x00
off_802874C: .word byte_8723034
off_8028750: .word dword_8725814
	thumb_func_end sub_802871C

	thumb_local_start
sub_8028754:
	push {lr}
	bl sub_80287D2
	ldr r0, off_8028774 // =dword_87225B4 
	ldr r1, dword_80287F0 // =0x6009560 
	ldr r2, dword_80287F4 // =0x540
	bl sub_8000AC8
	ldr r0, off_8028778 // =dword_87257D4 
	ldr r1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
	bl sub_802869E
	pop {pc}
off_8028774: .word dword_87225B4
off_8028778: .word dword_87257D4
	thumb_func_end sub_8028754

	thumb_local_start
sub_802877C:
	push {lr}
	bl sub_80287D2
	ldr r0, off_802879C // =dword_8733E74 
	ldr r1, dword_80287F0 // =0x6009560 
	ldr r2, dword_80287F4 // =0x540
	bl sub_8000AC8
	ldr r0, off_80287A0 // =dword_87343D4 
	ldr r1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
	bl sub_802869E
	pop {pc}
off_802879C: .word dword_8733E74
off_80287A0: .word dword_87343D4
	thumb_func_end sub_802877C

	thumb_local_start
sub_80287A4:
	push {lr}
	ldrb r1, [r0]
	cmp r1, #5
	bne loc_80287AE
	sub r0, #0xc
loc_80287AE:
	ldrb r0, [r0,#4]
	push {r0}
	bl sub_80287D2
	ldr r0, off_80287EC // =dword_8722AF4 
	ldr r1, dword_80287F0 // =0x6009560 
	ldr r2, dword_80287F4 // =0x540
	bl sub_8000AC8
	ldr r0, off_80287F8 // =dword_8725854 
	ldr r1, off_80287FC // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
	bl sub_802869E
	pop {r0}
	pop {pc}
	thumb_func_end sub_80287A4

	thumb_local_start
sub_80287D2:
	push {lr}
	ldr r1, dword_8028808 // =0x6009360 
	ldr r0, off_802880C // =byte_802A6C0 
	mov r3, #8
	bl sub_802868C
	ldr r0, off_8028818 // =byte_86E587C 
	ldr r1, off_802881C // =unk_3001A80 
	mov r2, #0x20 
	bl sub_8000AC8
	pop {pc}
	.balign 4, 0x00
off_80287EC: .word dword_8722AF4
dword_80287F0: .word 0x6009560
dword_80287F4: .word 0x540
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
	thumb_func_end sub_80287D2

	thumb_local_start
sub_8028820:
	push {r4-r6,lr}
	ldrb r0, [r5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r1, off_8028868 // =jt_802886C 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	ldr r5, [r5,#0x40]
	mov r4, #1
	lsr r5, r5, #3
	and r5, r4
	sub r0, #3
	sub r1, #3
	lsl r0, r0, #0x10
	add r0, r0, r1
	mov r4, r0
	mov r2, #1
	mov r3, #0
	ldr r1, dword_8028864 // =0xb764 
	add r1, r1, r5
	lsl r5, r5, #4
	add r5, r5, r6
	mov r6, #0xc
loc_8028854:
	ldr r0, [r5,r6]
	add r0, r0, r4
	bl sub_8009FF8
	sub r6, #4
	bpl loc_8028854
	pop {r4-r6,pc}
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
	thumb_func_end sub_8028820

	thumb_local_start
sub_8028894:
	push {lr}
	ldr r6, off_80288AC // =byte_80288B0
	mov r1, #0
	ldrb r0, [r5,#7]
	cmp r0, #5
	blt loc_80288A4
	mov r1, #0x18
	sub r0, #5
loc_80288A4:
	lsl r0, r0, #4
	add r0, #8
	add r1, #0x68 
	pop {pc}
off_80288AC: .word byte_80288B0
byte_80288B0: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE, 0x10, 0xE, 0x0, 0xE, 0x30, 0xE
	.byte 0x0, 0x0, 0x20, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0xC, 0x10, 0xC, 0x0
	.byte 0xC, 0x30, 0xC, 0x0, 0x1, 0x20
	thumb_func_end sub_8028894

	thumb_local_start
sub_80288D0:
	push {lr}
	mov r0, #0x58 
	mov r1, #0x70 
	add r0, #3
	sub r1, #2
	ldr r6, off_80288E0 // =byte_80288E4
	pop {pc}
	.byte 0, 0
off_80288E0: .word byte_80288E4
byte_80288E4: .byte 0x2, 0x0, 0x1, 0x0, 0x2, 0x0, 0x16, 0x10, 0x14, 0x0, 0x16, 0x30
	.byte 0x14, 0x0, 0x1, 0x20, 0x4, 0x0, 0x3, 0x0, 0x4, 0x0, 0x14, 0x10
	.byte 0x12, 0x0, 0x14, 0x30, 0x12, 0x0, 0x3, 0x20
	thumb_func_end sub_80288D0

	thumb_local_start
sub_8028904:
	push {lr}
	mov r0, #0x58 
	mov r1, #0x88
	add r0, #3
	sub r1, #1
	ldr r6, off_8028914 // =byte_8028918
	pop {pc}
	.balign 4, 0x00
off_8028914: .word byte_8028918
byte_8028918: .byte 0x2, 0x0, 0x1, 0x0, 0x2, 0x0, 0x16, 0x10, 0xE, 0x0, 0x16, 0x30, 0xE
	.byte 0x0, 0x1, 0x20, 0x3, 0x0, 0x2, 0x0, 0x3, 0x0, 0x15, 0x10, 0xD, 0x0
	.byte 0x15, 0x30, 0xD, 0x0, 0x2, 0x20
	thumb_func_end sub_8028904

	thumb_local_start
sub_8028938:
	push {lr}
	mov r0, #0x38 
	mov r1, #0x80
	ldr r6, off_8028944 // =byte_8028948 
	pop {pc}
	.balign 4, 0x00
off_8028944: .word byte_8028948
byte_8028948: .byte 0x2, 0x0, 0x2, 0x0, 0x2, 0x0, 0x1C, 0x10, 0x14, 0x0, 0x1C, 0x30
	.byte 0x14, 0x0, 0x2, 0x20, 0x4, 0x0, 0x4, 0x0, 0x4, 0x0, 0x1A, 0x10
	.byte 0x12, 0x0, 0x1A, 0x30, 0x12, 0x0, 0x4, 0x20
	thumb_func_end sub_8028938

	thumb_local_start
sub_8028968:
	push {lr}
	mov r0, #0x58 
	mov r1, #0x88
	add r0, #3
	sub r1, #2
	ldr r6, off_8028978 // =byte_802897C
	pop {pc}
	.balign 4, 0x00
off_8028978: .word byte_802897C
byte_802897C: .byte 0x2, 0x0, 0x2, 0x0, 0x2, 0x0, 0x16, 0x10, 0xE, 0x0, 0x16, 0x30, 0xE
	.byte 0x0, 0x2, 0x20, 0x3, 0x0, 0x3, 0x0, 0x3, 0x0, 0x15, 0x10, 0xD, 0x0
	.byte 0x15, 0x30, 0xD, 0x0, 0x3, 0x20
	thumb_func_end sub_8028968

	thumb_local_start
sub_802899C:
	push {r4-r6,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0x17]
	cmp r0, #0
	beq locret_80289CE
	ldr r5, [r5,#0x40]
	mov r4, #7
	and r4, r5
	bne loc_80289C2
	mov r3, #8
	and r3, r5
	lsl r3, r3, #6
	ldr r0, off_80289D8 // =dword_86E1238 
	ldr r1, dword_80289DC // =0x6016cc0 
	ldr r2, dword_80289E0 // =0x200
	add r0, r0, r3
	bl sub_8000AC8
loc_80289C2:
	ldr r0, dword_80289D0 // =0x80020064 
	ldr r1, dword_80289D4 // =0xb766 
	mov r2, #1
	mov r3, #0
	bl sub_8009FF8
locret_80289CE:
	pop {r4-r6,pc}
dword_80289D0: .word 0x80020064
dword_80289D4: .word 0xB766
off_80289D8: .word dword_86E1238
dword_80289DC: .word 0x6016CC0
dword_80289E0: .word 0x200
	thumb_func_end sub_802899C

	thumb_local_start
sub_80289E4:
	push {r4-r6,lr}
	mov r0, #8
	mov r1, #8
	ldrb r2, [r5,#0x1b]
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	ldr r5, [r5,#0x40]
	mov r4, #1
	lsr r5, r5, #3
	and r5, r4
	sub r0, #3
	sub r1, #3
	lsl r0, r0, #0x10
	add r0, r0, r1
	mov r4, r0
	mov r2, #1
	mov r3, #0
	ldr r1, dword_8028A28 // =0xe792 
	add r1, r1, r5
	add r1, r1, r5
	ldr r5, off_8028A2C // =byte_8028A30 
	mov r6, #0
loc_8028A12:
	ldr r0, [r5,r6]
	add r0, r0, r4
	cmp r6, #0x10
	bne loc_8028A1C
	add r1, #1
loc_8028A1C:
	bl sub_8009FF8
	add r6, #4
	cmp r6, #0x48 
	blt loc_8028A12
	pop {r4-r6,pc}
dword_8028A28: .word 0xE792
off_8028A2C: .word byte_8028A30
byte_8028A30: .byte 0x2, 0x0, 0x3, 0x0, 0x2, 0x0, 0x43, 0x10, 0xC, 0x0, 0x43, 0x30, 0xC
	.byte 0x0, 0x3, 0x20, 0x2, 0x0, 0xB, 0x0, 0x2, 0x0, 0x13, 0x0, 0x2, 0x0
	.byte 0x1B, 0x0, 0x2, 0x0, 0x23, 0x0, 0x2, 0x0, 0x2B, 0x0, 0x2, 0x0, 0x33
	.byte 0x0, 0x2, 0x0, 0x3B, 0x0, 0xC, 0x0, 0xB, 0x20, 0xC, 0x0, 0x13, 0x20
	.byte 0xC, 0x0, 0x1B, 0x20, 0xC, 0x0, 0x23, 0x20, 0xC, 0x0, 0x2B, 0x20, 0xC
	.byte 0x0, 0x33, 0x20, 0xC, 0x0, 0x3B, 0x20
	thumb_func_end sub_80289E4

	thumb_local_start
sub_8028A78:
	push {r4,lr}
	ldrb r4, [r5,#0x1b]
	ldrb r0, [r5,#0x19]
	tst r0, r0
	bne loc_8028B00
	ldrh r0, [r7,#4]
	mov r1, #0x40 
	tst r0, r1
	beq loc_8028A98
	sub r4, #1
	cmp r4, #0
	bge loc_8028AAA
	ldrb r1, [r5,#0x18]
	sub r1, #1
	mov r4, r1
	b loc_8028AAA
loc_8028A98:
	mov r1, #0x80
	tst r0, r1
	beq loc_8028ABA
	add r4, #1
	ldrb r1, [r5,#0x18]
	sub r1, #1
	cmp r4, r1
	ble loc_8028AAA
	mov r4, #0
loc_8028AAA:
	strb r4, [r5,#0x1b]
	ldrb r0, [r5,#0x18]
	cmp r0, #1
	ble locret_8028B66
	mov r0, #0x7f
	bl sound_play // () -> void
	b locret_8028B66
loc_8028ABA:
	ldrh r0, [r7,#2]
	mov r1, #1
	tst r0, r1
	beq loc_8028B00
	bl sub_80298F4
	cmp r0, #0
	bne locret_8028B66
	mov r0, r4
	ldr r1, dword_8028B70 // =0x55 
	add r1, r1, r0
	ldrb r0, [r5,r1]
	cmp r0, #1
	beq loc_8028AF8
	mov r0, #1
	strb r0, [r5,r1]
	mov r0, r4
	ldr r1, off_8028B6C // =0x50 
	add r1, r1, r0
	ldrb r0, [r5,r1]
	strb r0, [r5,#0x1a]
	mov r0, #1
	strb r0, [r5,#0x19]
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0x5c 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8028B66
loc_8028AF8:
	mov r0, #0x69 
	bl sound_play // () -> void
	b locret_8028B66
loc_8028B00:
	ldrh r0, [r7,#2]
	mov r1, #2
	tst r0, r1
	beq loc_8028B1A
	bl sub_8029B1C
	cmp r0, #0
	bne locret_8028B66
	mov r0, #0x50 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8028B66
loc_8028B1A:
	mov r1, #8
	tst r0, r1
	beq loc_8028B34
	mov r1, #0xa
	strb r1, [r5,#7]
	mov r0, #0x50 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0x7f
	bl sound_play // () -> void
	b locret_8028B66
loc_8028B34:
	mov r1, #4
	tst r0, r1
	beq loc_8028B3C
	b locret_8028B66
loc_8028B3C:
	ldr r1, off_8028CC4 // =0x100 
	tst r0, r1
	beq locret_8028B66
	ldrb r0, [r5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldr r0, off_8028B68 // =TextScriptChipDesc86EF4D4
	ldrb r1, [r5,#0x1b]
	ldr r2, off_8028B6C // =0x50 
	add r2, r2, r1
	ldrb r1, [r5,r2]
	add r1, #5
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x9c
	bl sound_play // () -> void
	mov r0, #0x58 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8028B66:
	pop {r4,pc}
off_8028B68: .word TextScriptChipDesc86EF4D4
off_8028B6C: .word 0x50
dword_8028B70: .word 0x55
	thumb_func_end sub_8028A78

	thumb_local_start
sub_8028B74:
	push {r4,lr}
	ldrb r0, [r5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrh r0, [r7,#4]
	mov r1, #0xc0
	tst r0, r1
	beq loc_8028BC2
	push {r0}
	bl sub_802D234
	cmp r0, #1
	pop {r0}
	beq loc_8028BBE
	ldrb r2, [r5,#0x10]
	cmp r2, #0
	bne loc_8028BBE
	ldrb r2, [r5,#0x17]
	tst r2, r2
	bne loc_8028BBE
	ldrb r2, [r5,#0x18]
	tst r2, r2
	beq loc_8028BBE
	mov r1, #0x40 
	tst r0, r1
	beq loc_8028BBE
	ldrb r0, [r5,#7]
	cmp r0, #0xa
	beq loc_8028BB4
	cmp r0, #4
	bgt loc_8028BBE
loc_8028BB4:
	mov r0, #0x4c 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8028C96
loc_8028BBE:
	ldrb r0, [r4,#1]
	b loc_8028BD4
loc_8028BC2:
	mov r1, #0x20 
	tst r0, r1
	beq loc_8028BCC
	ldrb r0, [r4,#2]
	b loc_8028BD4
loc_8028BCC:
	mov r1, #0x10
	tst r0, r1
	beq loc_8028BEC
	ldrb r0, [r4,#3]
loc_8028BD4:
	cmp r0, #0xff
	beq locret_8028C96
loc_8028BD8:
	ldrb r1, [r5,#7]
	cmp r0, r1
	beq loc_8028BE6
	strb r0, [r5,#7]
	mov r0, #0x7f
	bl sound_play // () -> void
loc_8028BE6:
	bl sub_8028476
	b locret_8028C96
loc_8028BEC:
	ldrh r0, [r7,#2]
	mov r1, #1
	tst r0, r1
	beq loc_8028C18
	bl sub_80298F4
	cmp r0, #0
	bne locret_8028C96
	ldrb r0, [r4]
	lsl r0, r0, #2
	ldr r1, off_8028C98 // =off_8028C9C 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	cmp r0, #0
	bne locret_8028C96
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq locret_8028C96
	bl sub_8029A56
	b locret_8028C96
loc_8028C18:
	mov r1, #2
	tst r0, r1
	beq loc_8028C2C
	bl sub_8029B1C
	cmp r0, #0
	bne locret_8028C96
	bl sub_8029032
	b locret_8028C96
loc_8028C2C:
	mov r1, #8
	tst r0, r1
	beq loc_8028C36
	mov r0, #0xa
	b loc_8028BD8
loc_8028C36:
	mov r1, #4
	tst r0, r1
	beq loc_8028C46
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8028C96
loc_8028C46:
	ldr r1, off_8028CC4 // =0x100 
	tst r0, r1
	beq loc_8028C80
	ldrb r0, [r5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #6
	beq loc_8028C60
	cmp r1, #7
	beq loc_8028C60
	cmp r1, #0
	bne locret_8028C96
loc_8028C60:
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	bl chip_getScript_8027D34 // (int chipID) -> void*
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x9c
	bl sound_play // () -> void
	mov r0, #0x18
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8028C96
loc_8028C80:
	ldr r1, off_8028CC8 // =0x200 
	tst r0, r1
	beq locret_8028C96
	bl sub_802D234
	cmp r0, #1
	beq locret_8028C96
	mov r0, #0x1c
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8028C96:
	pop {r4,pc}
off_8028C98: .word off_8028C9C
off_8028C9C: .word sub_8028CCC+1
	.word sub_8028D3A+1
	.word sub_8028D6C+1
	.word sub_8028DBC+1
	.word sub_8028DD6+1
	.word sub_8028DD6+1
	.word nullsub_59+1
	.word nullsub_59+1
	.word sub_8028E04+1
	.word sub_8028E04+1
off_8028CC4: .word 0x100
off_8028CC8: .word 0x200
	thumb_func_end sub_8028B74

	thumb_local_start
sub_8028CCC:
	push {lr}
	ldrb r0, [r4,#7]
	cmp r0, #0
	bne loc_8028D30
	ldrb r0, [r5,#8]
	cmp r0, #5
	bge loc_8028D30
	add r1, r0, #1
	strb r1, [r5,#8]
	add r0, #0x48 
	ldrb r1, [r5,#7]
	strb r1, [r5,r0]
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	ldrb r1, [r5,#8]
	sub r1, #1
	bl sub_80281D4
	ldrb r0, [r5,#8]
	sub r0, #1
	mov r1, #1
	mov r2, #0
	bl sub_8029CD4
	ldrb r0, [r5,#7]
	bl sub_8028238
	mov r0, #2
	strb r0, [r4,#7]
	bl sub_8028E32
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #1
	strb r0, [r5,#0xf]
	mov r0, #0
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl sub_802A00C
	tst r0, r0
	beq locret_8028D38
	mov r0, #0x44 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_8028D38
loc_8028D30:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #1
locret_8028D38:
	pop {pc}
	thumb_func_end sub_8028CCC

	thumb_local_start
sub_8028D3A:
	push {lr}
	bl sub_8029110
	bl sub_80293F8
	ldrb r0, [r5,#0x19]
	tst r0, r0
	beq loc_8028D50
	bl sub_802937A
	b loc_8028D5A
loc_8028D50:
	ldrh r0, [r5,#0x3a]
	tst r0, r0
	beq loc_8028D5A
	bl sub_80293B0
loc_8028D5A:
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0x82
	bl sound_play // () -> void
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8028D3A

	thumb_local_start
sub_8028D6C:
	push {lr}
	ldrb r0, [r4,#7]
	cmp r0, #0
	bne loc_8028DB2
	ldrb r0, [r5,#8]
	cmp r0, #5
	bge loc_8028DB2
	add r1, r0, #1
	strb r1, [r5,#8]
	add r0, #0x48 
	ldrb r1, [r5,#7]
	strb r1, [r5,r0]
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl sub_802A034
	ldrb r1, [r5,#8]
	sub r1, #1
	bl sub_80281D4
	ldrb r0, [r5,#8]
	sub r0, #1
	mov r1, #1
	mov r2, #0
	bl sub_8029CD4
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0x48 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0
	b locret_8028DBA
loc_8028DB2:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #1
locret_8028DBA:
	pop {pc}
	thumb_func_end sub_8028D6C

	thumb_local_start
sub_8028DBC:
	push {lr}
	bl sub_800A7E2
	bl sub_802D064
	mov r1, #1
	strb r1, [r0,#8]
	ldr r0, off_8028F80 // =dword_20349A0 
	strb r1, [r0,#0x4] // (byte_20349A4 - 0x20349a0)
	bl sub_8028D3A
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8028DBC

	thumb_local_start
sub_8028DD6:
	push {lr}
	ldrb r1, [r4]
	cmp r1, #5
	bne loc_8028DE0
	sub r4, #0xc
loc_8028DE0:
	ldrb r0, [r4,#7]
	cmp r0, #0
	bne loc_8028DFA
	mov r0, #0x28 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0x83
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0
	b locret_8028E02
loc_8028DFA:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #1
locret_8028E02:
	pop {pc}
	thumb_func_end sub_8028DD6

	thumb_local_start
sub_8028E04:
	push {r6,r7,lr}
	ldrb r1, [r4]
	cmp r1, #9
	bne loc_8028E0E
	sub r4, #0xc
loc_8028E0E:
	ldrb r0, [r4,#7]
	cmp r0, #0
	bne loc_8028E26
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0x38 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0
	b locret_8028E2E
loc_8028E26:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #1
locret_8028E2E:
	pop {r6,r7,pc}
	thumb_func_end sub_8028E04

	thumb_local_start
nullsub_59:
	mov pc, lr
	thumb_func_end nullsub_59

	thumb_local_start
sub_8028E32:
	push {lr}
	bl sub_8028E4C
	bl updateCustomScreen_WhenUnselectingChip_8028EC8 // () -> void
	bl sub_8028F48
	bl sub_8028F84
	mov r0, #0
	bl sub_8028250
	pop {pc}
	thumb_func_end sub_8028E32

	thumb_local_start
sub_8028E4C:
	push {r4,r6,r7,lr}
	mov r6, #0
	sub r6, #1
	mov r7, #0x1a
	mov r0, #0
	strb r0, [r5,#0xa]
	ldrb r3, [r5,#8]
	cmp r3, #0
	beq loc_8028EC2
	mov r4, #0x48 
loc_8028E60:
	push {r3}
	ldrb r0, [r5,r4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_8028EBC
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	push {r0}
	bl chipIDIs13f_8029FF4 // (int a1) -> bool
	tst r0, r0
	pop {r0}
	bne loc_8028EBC
	cmp r1, #0x1b
	blt loc_8028E96
	cmp r1, #0x1c
	bgt loc_8028E96
	strb r1, [r5,#0xa]
	b loc_8028EBC
loc_8028E96:
	cmp r1, #0x1a
	beq loc_8028EA8
	cmp r7, #0x1a
	beq loc_8028EA6
	cmp r7, r1
	beq loc_8028EA8
	mov r7, #0xff
	b loc_8028EA8
loc_8028EA6:
	mov r7, r1
loc_8028EA8:
	mov r1, #0
	sub r1, #1
	cmp r1, r6
	beq loc_8028EBA
	cmp r0, r6
	beq loc_8028EBC
	mov r6, #0
	sub r6, #2
	b loc_8028EBC
loc_8028EBA:
	mov r6, r0
loc_8028EBC:
	add r4, #1
	sub r3, #1
	bne loc_8028E60
loc_8028EC2:
	strh r6, [r5,#0x20]
	strb r7, [r5,#9]
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8028E4C

// () -> void
	thumb_local_start
updateCustomScreen_WhenUnselectingChip_8028EC8:
	push {r4,r6,r7,lr}
	mov r0, #0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	// save active chips
	mov r4, r0
	// max 10 in memory
	mov r3, #0xa
chipCodeSelectLoopStar_8028ED4:
	// check if the slot contains a chip?
	ldrb r0, [r4]
	cmp r0, #0
	bne chipCodeSelectLoopInc_8028F40
	// check if the chip is already selected
	ldrb r0, [r4,#7]
	cmp r0, #2
	beq chipCodeSelectLoopInc_8028F40
	// check number of selected chips
	ldrb r0, [r5,#8]
	cmp r0, #5
	bge chipCodeSelectFalse_8028F3C
	// load pointer
	// load chip data
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	// code
	lsr r1, r0, #9
	// ID
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	// assume chip can be selected
	mov r6, #0
	push {r0}
	bl chipIDIs13f_8029FF4 // (int a1) -> bool
	tst r0, r0
	pop {r0}
	bne chipCodeSelectTrue_8028F3E
	// codes 0x1b, 0x1c are special codes
	cmp r1, #0x1b
	blt chipCodeSelectNormal_8028F16
	cmp r1, #0x1c
	bgt chipCodeSelectNormal_8028F16
	// special active chip code
	ldrb r0, [r5,#0xa]
	cmp r0, #0
	beq chipCodeSelectTrue_8028F3E
	// if the active code is not the special chip codoe
	// return false!
	cmp r0, r1
	bne chipCodeSelectFalse_8028F3C
	b chipCodeSelectTrue_8028F3E
chipCodeSelectNormal_8028F16:
	mov r7, #0x20 
	// r2 = active chip
	ldrsh r2, [r5,r7]
	mov r7, #0
	sub r7, #1
	// if active chip == -1: any chip works
	cmp r2, r7
	beq chipCodeSelectMonocode_8028F26
	// the only case chip code is ignores is
	// if all chips are the same type
	cmp r0, r2
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectMonocode_8028F26:
	// at this point, all chips are different?
	// if not monocode, can't be selected
	ldrb r2, [r5,#9]
	cmp r2, #0xff
	beq chipCodeSelectFalse_8028F3C
	// check if all chips are (*) so far
	cmp r2, #0x1a
	bgt chipCodeSelectNotStar_8028F32
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectNotStar_8028F32:
	// check if selected chip is (*)
	cmp r1, #0x1a
	bgt chipCodeSelectNotStar2_8028F38
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectNotStar2_8028F38:
	// check if the selected chip has the same code as active code
	cmp r1, r2
	beq chipCodeSelectTrue_8028F3E
chipCodeSelectFalse_8028F3C:
	mov r6, #1
chipCodeSelectTrue_8028F3E:
	strb r6, [r4,#7]
chipCodeSelectLoopInc_8028F40:
	// increment loop
	add r4, #0xc
	sub r3, #1
	bne chipCodeSelectLoopStar_8028ED4
	pop {r4,r6,r7,pc}
	thumb_func_end updateCustomScreen_WhenUnselectingChip_8028EC8

	thumb_local_start
sub_8028F48:
	push {r4,r6,r7,lr}
	mov r0, #0xb
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #2
	bne locret_8028F7C
	ldrb r0, [r4,#7]
	cmp r0, #2
	beq locret_8028F7C
	ldrb r0, [r5,#8]
	cmp r0, #5
	bge loc_8028F78
	bl sub_802A57E
	tst r0, r0
	beq loc_8028F78
	ldrb r0, [r5,#0x19]
	tst r0, r0
	bne loc_8028F78
	mov r0, #0
	strb r0, [r4,#7]
	b locret_8028F7C
loc_8028F78:
	mov r0, #1
	strb r0, [r4,#7]
locret_8028F7C:
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_8028F80: .word dword_20349A0
	thumb_func_end sub_8028F48

	thumb_local_start
sub_8028F84:
	push {r4,r6,r7,lr}
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #8
	bne locret_8028FBE
	ldrb r0, [r4,#7]
	cmp r0, #2
	beq locret_8028FBE
	ldrb r0, [r4,#7]
	cmp r0, #3
	beq loc_8028FBA
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_8028FBA
	add r0, #0x47 
	ldrb r0, [r5,r0]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_8028FBA
	mov r0, #0
	strb r0, [r4,#7]
	b locret_8028FBE
loc_8028FBA:
	mov r0, #1
	strb r0, [r4,#7]
locret_8028FBE:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8028F84

	thumb_local_start
sub_8028FC0:
	push {r4,r6,r7,lr}
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #6
	bne locret_8029030
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_802901C
	add r0, #0x47 
	ldrb r0, [r5,r0]
	mov r7, r0
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_802901C
	ldrb r1, [r0,#5]
	cmp r1, #0
	bne loc_802901C
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r6, r0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #2
	tst r0, r1
	beq loc_802901C
	ldrb r0, [r4,#7]
	cmp r0, #2
	beq loc_8029010
	mov r0, #0
	strb r0, [r4,#7]
loc_8029010:
	ldrb r0, [r4,#0x13]
	cmp r0, #2
	beq locret_8029030
	mov r0, #0
	strb r0, [r4,#0x13]
	b locret_8029030
loc_802901C:
	ldrb r0, [r4,#7]
	cmp r0, #2
	beq loc_8029026
	mov r0, #1
	strb r0, [r4,#7]
loc_8029026:
	ldrb r0, [r4,#0x13]
	cmp r0, #2
	beq locret_8029030
	mov r0, #1
	strb r0, [r4,#0x13]
locret_8029030:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8028FC0

	thumb_local_start
sub_8029032:
	push {r4,lr}
	ldrb r0, [r5,#8]
	cmp r0, #0
	bne loc_8029066
	ldrb r0, [r5,#0x19]
	tst r0, r0
	bne loc_8029048
	mov r0, #0x69 
	bl sound_play // () -> void
	b locret_8029104
loc_8029048:
	ldrb r0, [r5,#0x1b]
	ldr r1, dword_802910C // =0x55 
	add r1, r1, r0
	mov r0, #0
	strb r0, [r5,r1]
	mov r0, #0
	strb r0, [r5,#0x1a]
	strb r0, [r5,#0x19]
	mov r0, #0xd3
	add r0, #0xff
	bl sound_play // () -> void
	bl sub_802A0EC
	b loc_80290F6
loc_8029066:
	add r0, #0x47 
	ldrb r0, [r5,r0]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #2
	bne loc_80290A4
	ldrb r1, [r5,#8]
	sub r1, #1
	strb r1, [r5,#8]
	ldr r0, dword_8029108 // =0x1ff 
	bl sub_80281D4
	ldrb r0, [r5,#8]
	mov r1, #0
	mov r2, #0
	bl sub_8029CD4
	bl sub_802A0EC
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xd3
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0
	strb r0, [r5,#0x17]
	b loc_80290F2
loc_80290A4:
	ldr r0, [r4,#8]
	ldrh r0, [r0]
	bl sub_802A00C
	tst r0, r0
	beq loc_80290C2
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xd3
	add r0, #0xff
	bl sound_play // () -> void
	bl sub_802A0EC
loc_80290C2:
	ldrb r1, [r5,#8]
	sub r1, #1
	strb r1, [r5,#8]
	ldr r0, dword_8029108 // =0x1ff 
	bl sub_80281D4
	ldrb r0, [r5,#8]
	mov r1, #0
	mov r2, #0
	bl sub_8029CD4
	ldrb r0, [r4,#5]
	cmp r0, #0
	beq loc_80290F2
	mov r1, #0
	strb r1, [r4,#5]
	ldrb r1, [r4,#4]
	mov r2, #0x3e 
	bic r1, r2
	strb r1, [r4,#4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	mov r1, #0
	strb r1, [r0,#7]
loc_80290F2:
	mov r0, #0
	strb r0, [r4,#7]
loc_80290F6:
	bl sub_8028E32
	bl sub_8028476
	mov r0, #0x83
	bl sound_play // () -> void
locret_8029104:
	pop {r4,pc}
	.balign 4, 0x00
dword_8029108: .word 0x1FF
dword_802910C: .word 0x55
	thumb_func_end sub_8029032

	thumb_local_start
sub_8029110:
	push {r4,r6,r7,lr}
	mov r0, #0x14
	strb r0, [r5,#0xb]
	// memBlock
	ldr r0, off_80293D4 // =dword_2033000 
	// size
	mov r1, #0x48 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r4, off_80293D4 // =dword_2033000 
	ldr r6, off_80293CC // =byte_20366C0 
	mov r3, #6
	mov r0, #0
	sub r0, #1
loc_8029128:
	strh r0, [r4]
	strh r0, [r6,#0x32]
	add r4, #2
	add r6, #2
	sub r3, #1
	bne loc_8029128
	ldr r4, off_80293D4 // =dword_2033000 
	ldrb r7, [r5,#8]
	cmp r7, #0
	beq loc_80291E6
	mov r6, #0x48 
	ldr r3, off_80293CC // =byte_20366C0 
loc_8029140:
	ldrb r0, [r5,r6]
	push {r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb r1, [r0]
	cmp r1, #2
	bne loc_8029156
	bl sub_8029344
	b loc_80291AC
loc_8029156:
	cmp r1, #0
	bne loc_802915E
	ldrb r1, [r0,#4]
	strh r1, [r4,#0x3c]
loc_802915E:
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	strh r0, [r3,#0x32]
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	strh r0, [r4]
	strh r1, [r4,#0x30]
	ldr r1, off_80293D8 // =0x190 
	cmp r0, r1
	blt loc_802918C
	push {r0}
	sub r0, r0, r1
	add r0, #1
	mov r1, #1
	lsl r1, r0
	ldr r0, dword_80293F4 // =dword_20349A0
	ldrh r2, [r0,#0xc] // (word_20349AC - 0x20349a0)
	orr r2, r1
	strh r2, [r0,#0xc] // (word_20349AC - 0x20349a0)
	pop {r0}
loc_802918C:
	push {r3}
	push {r0}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#0xd]
	bl sub_80109A4
	strh r0, [r4,#0xc]
	pop {r0}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#6]
	strh r1, [r4,#0x24]
	pop {r3}
	add r4, #2
	add r3, #2
loc_80291AC:
	add r6, #1
	sub r7, #1
	bne loc_8029140
	ldr r0, off_80293CC // =byte_20366C0 
	add r0, #0x32 
	mov r1, #0
	bl sub_8029520
	cmp r0, #0
	beq loc_80291E2
	push {r0-r2}
	bl sub_8029328
	cmp r0, #0
	pop {r0-r2}
	bne loc_80291E2
	push {r0-r2}
	bl sub_80292CC
	pop {r0-r2}
	lsr r1, r1, #1
	ldr r3, off_80293CC // =byte_20366C0 
	add r3, #0x32 
	bl sub_802B6F2
	mov r0, #0x10
	strb r0, [r5,#0xb]
loc_80291E2:
	bl sub_8029224
loc_80291E6:
	ldr r2, off_80293D4 // =dword_2033000 
	ldr r6, off_80293CC // =byte_20366C0 
	ldr r4, off_80293D0 // =byte_20366FE 
	mov r0, #0
	ldrb r3, [r5,#8]
	cmp r3, #0
	bne loc_80291F6
	mov r0, #0xff
loc_80291F6:
	strb r0, [r6]
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#7]
	sub r0, #1
	mov r3, #6
loc_8029202:
	ldrh r7, [r2]
	strh r7, [r6,#2]
	ldrh r7, [r2,#0xc]
	strh r7, [r6,#0xe]
	ldrh r7, [r2,#0x18]
	strh r7, [r6,#0x1a]
	mov r1, #0
	strh r1, [r6,#0x26]
	strb r0, [r4]
	ldrh r7, [r2,#0x3c]
	strb r7, [r4,#6]
	add r6, #2
	add r4, #1
	add r2, #2
	sub r3, #1
	bne loc_8029202
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8029110

	thumb_local_start
sub_8029224:
	push {r4,r6,r7,lr}
	ldr r4, off_80293D4 // =dword_2033000 
	add r4, #2
	mov r7, #0
	sub r7, #1
	mov r6, #0
loc_8029230:
	ldrsh r0, [r4,r6]
	cmp r0, r7
	beq locret_80292CA
	cmp r0, #0xc0
	beq loc_8029252
	cmp r0, #0xc1
	beq loc_802924C
	cmp r0, #0xc3
	beq loc_8029252
	cmp r0, #0xb8
	beq loc_8029252
	cmp r0, #0xb9
	beq loc_8029258
	b loc_80292C6
loc_802924C:
	mov r1, #4
	mov r2, #0
	b loc_802925C
loc_8029252:
	mov r1, #2
	mov r2, #0
	b loc_802925C
loc_8029258:
	mov r1, #2
	mov r2, #1
loc_802925C:
	sub r0, r4, #2
	// idx
	ldrh r0, [r0]
	push {r1,r2}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	pop {r1,r2}
	ldrb r0, [r0,#9]
	tst r0, r1
	beq loc_80292C6
	tst r0, r2
	bne loc_80292C6
	ldrsh r0, [r4,r6]
	cmp r0, #0xb8
	beq loc_8029286
	cmp r0, #0xb9
	beq loc_8029292
	ldrh r0, [r4,#0xc]
	ldrh r1, [r4,#0x16]
	add r1, r1, r0
	strh r1, [r4,#0x16]
	b loc_802929C
loc_8029286:
	sub r0, r4, #2
	ldrh r1, [r0,#0x3c]
	mov r2, #2
	orr r1, r2
	strh r1, [r0,#0x3c]
	b loc_802929C
loc_8029292:
	sub r0, r4, #2
	ldrh r1, [r0,#0x3c]
	mov r2, #4
	orr r1, r2
	strh r1, [r0,#0x3c]
loc_802929C:
	ldrh r0, [r3,#0x3c]
	mov r1, #1
	and r1, r0
	ldrh r0, [r3,#0x3a]
	orr r0, r1
	strh r0, [r3,#0x3a]
	mov r2, r4
	add r3, r4, #2
loc_80292AC:
	ldrh r0, [r3,#0x3c]
	strh r0, [r2,#0x3c]
	ldrh r0, [r3,#0xc]
	strh r0, [r2,#0xc]
	ldrh r0, [r3,#0x24]
	strh r0, [r2,#0x24]
	ldrsh r0, [r3,r6]
	strh r0, [r2,r6]
	add r3, #2
	add r2, #2
	cmp r0, r7
	bne loc_80292AC
	sub r4, #2
loc_80292C6:
	add r4, #2
	b loc_8029230
locret_80292CA:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8029224

	thumb_local_start
sub_80292CC:
	push {r4,r6,r7,lr}
	ldr r4, off_80293D4 // =dword_2033000 
	add r4, r4, r1
	lsl r3, r2, #1
	add r6, r4, r3
	sub r7, r2, #1
	strh r0, [r4]
	push {r0}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#0xd]
	bl sub_80109A4
	strh r0, [r4,#0xc]
	pop {r0}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#6]
	strh r1, [r4,#0x24]
	mov r2, #0x3e 
loc_80292F4:
	ldrh r0, [r4,r2]
	mov r1, #1
	and r1, r0
	ldrh r0, [r4,#0x3c]
	orr r0, r1
	strh r0, [r4,#0x3c]
	add r2, #2
	sub r7, #1
	bne loc_80292F4
	add r4, #2
	mov r7, #0
	sub r7, #1
	mov r1, #0
loc_802930E:
	ldrh r0, [r6,#0x3c]
	strh r0, [r4,#0x3c]
	ldrh r0, [r6,#0xc]
	strh r0, [r4,#0xc]
	ldrh r0, [r6,#0x24]
	strh r0, [r4,#0x24]
	ldrsh r0, [r6,r1]
	strh r0, [r4,r1]
	add r6, #2
	add r4, #2
	cmp r0, r7
	bne loc_802930E
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80292CC

	thumb_local_start
sub_8029328:
	push {r4,lr}
	ldr r4, off_80293D4 // =dword_2033000 
	add r4, r4, r1
	add r4, #0x3c 
	mov r3, #0xfe
	mov r0, #0
loc_8029334:
	ldrh r1, [r4]
	and r1, r3
	beq loc_802933C
	add r0, #1
loc_802933C:
	add r4, #2
	sub r2, #1
	bne loc_8029334
	pop {r4,pc}
	thumb_func_end sub_8029328

	thumb_local_start
sub_8029344:
	push {r0-r4,r6,lr}
	mov r0, #0
	bl sub_802A11C
	mov r6, r0
	bl sub_802A564
	cmp r0, #1
	bne loc_802935A
	ldr r4, dword_80293E4 // =0x18 
	b loc_8029368
loc_802935A:
	cmp r1, #0
	bne loc_8029362
	ldr r4, dword_80293E0 // =0xc 
	b loc_8029368
loc_8029362:
	ldr r4, dword_80293EC // =0x12 
	sub r1, #6
	add r4, r4, r1
loc_8029368:
	mov r0, r4
	mov r1, #0
	mov r2, r6
	bl sub_8015952
	mov r0, #1
	ldr r1, dword_80293F4 // =dword_20349A0
	strb r0, [r1,#0x10] // (byte_20349B0 - 0x20349a0)
	pop {r0-r4,r6,pc}
	thumb_func_end sub_8029344

	thumb_local_start
sub_802937A:
	push {r0-r4,lr}
	ldr r4, dword_80293E8 // =0x6 
	bl sub_802A564
	cmp r1, #0xb
	blt loc_8029388
	ldr r4, dword_80293EC // =0x12 
loc_8029388:
	mov r0, #1
	bl sub_802A11C
	mov r2, r0
	ldrb r0, [r5,#0x1a]
	add r0, r0, r4
	mov r1, #0
	bl sub_8015952
	ldrb r0, [r5,#0x1a]
	ldr r1, dword_80293E8 // =0x6 
	add r0, r0, r1
	sub r0, #1
	mov r3, #1
	lsl r3, r0
	ldr r2, dword_80293F4 // =dword_20349A0
	ldr r1, [r2]
	orr r1, r3
	str r1, [r2]
	pop {r0-r4,pc}
	thumb_func_end sub_802937A

	thumb_local_start
sub_80293B0:
	push {r0-r4,lr}
	ldrh r0, [r5,#0x3a]
	sub r0, #1
	ldr r1, dword_80293F0 // =0xd 
	add r0, r0, r1
	mov r1, #0
	mov r2, #3
	bl sub_8015952
	ldrb r0, [r3,#5]
	add r0, #1
	strb r0, [r3,#5]
	pop {r0-r4,pc}
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
dword_80293F4: .word 0x20349A0
	thumb_func_end sub_80293B0

	thumb_local_start
sub_80293F8:
	push {r4,r6,r7,lr}
	mov r7, #0
	sub r7, #1
	ldrb r4, [r5,#8]
	cmp r4, #0
	beq locret_8029458
	mov r6, #0x48 
loc_8029406:
	ldrb r0, [r5,r6]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #2
	bne loc_8029426
	push {r0,r1}
	bl sub_802D234
	cmp r0, #1
	pop {r0,r1}
	bne loc_8029452
	ldrb r0, [r0,#4]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
loc_8029426:
	cmp r1, #0
	bne loc_8029452
	ldrb r1, [r0,#4]
	mov r2, #1
	tst r1, r2
	beq loc_802943A
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r1, #0
	strb r1, [r2,#0x17]
loc_802943A:
	ldr r0, [r0,#8]
	strh r7, [r0]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	mov r1, #0x44 
	ldrb r3, [r2,r1]
	tst r3, r3
	beq loc_8029452
	mov r1, #0x45 
	ldrb r3, [r2,r1]
	sub r3, #1
	strb r3, [r2,r1]
loc_8029452:
	add r6, #1
	sub r4, #1
	bne loc_8029406
locret_8029458:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80293F8

	thumb_local_start
sub_802945A:
	push {r4,r6,r7,lr}
	ldr r3, off_8029510 // =byte_203CDB0 
	mov r4, #0
	mov r6, #0
	mov r2, #0x1e
	mov r7, #0
	sub r7, #1
loc_8029468:
	ldrsh r0, [r3,r4]
	cmp r0, r7
	beq loc_8029474
	strh r0, [r3,r6]
	add r6, #2
	sub r2, #1
loc_8029474:
	add r4, #2
	cmp r4, #0x3c 
	blt loc_8029468
	cmp r2, #0
	beq locret_8029486
loc_802947E:
	strh r7, [r3,r6]
	add r6, #2
	sub r2, #1
	bne loc_802947E
locret_8029486:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802945A

	thumb_local_start
sub_8029488:
	push {r4,r6,r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	mov r0, #0x44 
	ldrb r0, [r4,r0]
	tst r0, r0
	beq locret_80294DE
	mov r0, #0x45 
	ldrb r6, [r4,r0]
	ldrb r1, [r5,#6]
	sub r2, r1, #1
	cmp r6, r2
	beq loc_80294A8
	cmp r6, r2
	blt loc_80294D8
	b locret_80294DE
loc_80294A8:
	ldr r3, off_8029510 // =byte_203CDB0 
	lsl r6, r6, #1
	add r3, r3, r6
	mov r7, #4
	ldrsh r0, [r3,r7]
	mov r1, #0
	sub r1, #1
	cmp r0, r1
	beq loc_80294D8
	mov r7, #0
	ldrsh r1, [r3,r7]
	mov r7, #2
	ldrsh r2, [r3,r7]
	mov r7, #0
	strh r0, [r3,r7]
	mov r7, #2
	strh r1, [r3,r7]
	mov r7, #4
	strh r2, [r3,r7]
	mov r0, #0x45 
	ldrb r1, [r4,r0]
	add r1, #1
	strb r1, [r4,r0]
	b locret_80294DE
loc_80294D8:
	mov r0, #0x44 
	mov r1, #0
	strb r1, [r4,r0]
locret_80294DE:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8029488

	thumb_local_start
sub_80294E0:
	push {r4,r6,r7,lr}
	mov r0, #0x5f 
	ldrb r6, [r5,r0]
loc_80294E6:
	ldr r3, off_8029510 // =byte_203CDB0 
	mov r4, #0
	mov r7, #0
	sub r7, #1
loc_80294EE:
	ldrsh r1, [r3,r4]
	cmp r1, r7
	bne loc_8029502
	sub r1, r6, #1
	lsl r1, r1, #1
	mov r2, #0x60 
	add r2, r2, r1
	ldrh r0, [r5,r2]
	strh r0, [r3,r4]
	b loc_8029508
loc_8029502:
	add r4, #2
	cmp r4, #0x3c 
	blt loc_80294EE
loc_8029508:
	sub r6, #1
	cmp r6, #0
	bgt loc_80294E6
	pop {r4,r6,r7,pc}
off_8029510: .word byte_203CDB0
	thumb_func_end sub_80294E0

	thumb_local_start
sub_8029514:
	push {r4-r7,lr}
	sub sp, sp, #0x20
	mov r7, sp
	mov r2, #1
	str r2, [r7,#0x1c]
	b loc_802952A
	thumb_func_end sub_8029514

	thumb_local_start
sub_8029520:
	push {r4-r7,lr}
	sub sp, sp, #0x20
	mov r7, sp
	mov r2, #0
	str r2, [r7,#0x1c]
loc_802952A:
	str r1, [r7,#0x18]
	mov r4, #0
	sub r4, #1
	mov r5, #0
	mov r6, #0xa
loc_8029534:
	ldrsh r1, [r0,r5]
	cmp r1, r4
	beq loc_802954C
	lsr r2, r1, #9
	lsl r1, r1, #0x17
	lsr r1, r1, #0x17
	strh r1, [r7,r5]
	strh r2, [r7,r6]
	add r5, #2
	add r6, #2
	cmp r5, #0xa
	bne loc_8029534
loc_802954C:
	mov r0, #0
	lsr r5, r5, #1
	cmp r5, #3
	blt loc_80295B0
	mov r6, #0
loc_8029556:
	ldr r4, off_80295B4 // =off_802BCB0 
	ldr r0, [r7,#0x1c]
	cmp r0, #0
	beq loc_8029560
	ldr r4, off_80295B8 // =off_802BC60 
loc_8029560:
	ldr r3, [r4]
	cmp r3, #0
	beq loc_80295A6
	ldrb r2, [r3]
	cmp r5, r2
	blt loc_80295A2
	ldrb r0, [r3,#1]
	ldr r1, off_80295BC // =off_80295C0 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	cmp r0, #0
	beq loc_80295A2
	push {r1-r3}
	ldr r1, [r7,#0x18]
	bl sub_8029652
	pop {r1-r3}
	cmp r0, #0
	beq loc_80295A2
	push {r0-r3}
	ldr r0, [r7,#0x1c]
	cmp r0, #0
	pop {r0-r3}
	beq loc_802959C
	push {r0-r3}
	ldr r0, [r7,#0x18]
	cmp r0, #0
	pop {r0-r3}
	bne loc_80295B0
loc_802959C:
	bl sub_802963C
	b loc_80295B0
loc_80295A2:
	add r4, #4
	b loc_8029560
loc_80295A6:
	add r6, #2
	sub r5, #1
	cmp r5, #3
	bge loc_8029556
	mov r0, #0
loc_80295B0:
	add sp, sp, #0x20
	pop {r4-r7,pc}
off_80295B4: .word off_802BCB0
off_80295B8: .word off_802BC60
off_80295BC: .word off_80295C0
off_80295C0: .word sub_80295C8+1
	.word sub_802961A+1
	thumb_func_end sub_8029520

	thumb_local_start
sub_80295C8:
	push {r2,r4-r6,lr}
	mov r5, r2
	ldrh r1, [r3,#4]
loc_80295CE:
	ldrh r0, [r7,r6]
	cmp r0, r1
	bne loc_8029616
	add r6, #2
	sub r2, #1
	bne loc_80295CE
	mov r2, #0
	add r6, #8
	ldrh r0, [r7,r6]
	add r0, #1
loc_80295E2:
	ldrh r1, [r7,r6]
	cmp r1, #0x1a
	bne loc_80295FA
	cmp r2, #0
	bne loc_80295F6
	cmp r0, #0x1b
	bne loc_80295F6
	sub r0, r6, #2
	ldrh r0, [r7,r0]
	add r0, #2
loc_80295F6:
	sub r1, r0, #1
	add r2, #1
loc_80295FA:
	sub r0, #1
	cmp r0, r1
	bne loc_8029616
	sub r6, #2
	sub r5, #1
	bne loc_80295E2
	cmp r2, #1
	bgt loc_8029616
	cmp r0, #0
	blt loc_8029616
	ldrh r0, [r3,#2]
	mov r1, r6
	sub r1, #8
	b locret_8029618
loc_8029616:
	mov r0, #0
locret_8029618:
	pop {r2,r4-r6,pc}
	thumb_func_end sub_80295C8

	thumb_local_start
sub_802961A:
	push {r2,r4,r7,lr}
	mov r4, r3
	add r4, #4
	add r7, r7, r6
loc_8029622:
	ldrh r0, [r7]
	ldrh r1, [r4]
	cmp r0, r1
	bne loc_8029638
	add r4, #2
	add r7, #2
	sub r2, #1
	bne loc_8029622
	ldrh r0, [r3,#2]
	mov r1, r6
	b locret_802963A
loc_8029638:
	mov r0, #0
locret_802963A:
	pop {r2,r4,r7,pc}
	thumb_func_end sub_802961A

	thumb_local_start
sub_802963C:
	push {r0-r3,lr}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	ldr r1, off_802967C // =0x140 
	sub r0, r0, r1
	ldr r1, off_8029680 // =0x1f60 
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	pop {r0-r3,pc}
	thumb_func_end sub_802963C

	thumb_local_start
sub_8029652:
	push {r4,lr}
	ldr r3, off_8029684 // =dword_203CA48 
	lsl r1, r1, #2
	add r3, r3, r1
	ldr r2, off_802967C // =0x140 
	sub r2, r0, r2
	mov r1, #7
	and r1, r2
	lsr r2, r2, #3
	add r3, r3, r2
	ldrb r4, [r3]
	mov r2, #1
	lsl r2, r1
	tst r4, r2
	beq loc_8029674
	mov r0, #0
	b locret_8029678
loc_8029674:
	orr r4, r2
	strb r4, [r3]
locret_8029678:
	pop {r4,pc}
	.balign 4, 0x00
off_802967C: .word 0x140
off_8029680: .word 0x1F60
off_8029684: .word dword_203CA48
	thumb_func_end sub_8029652

	thumb_local_start
sub_8029688:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	mov r0, #0x44 
	ldrb r0, [r1,r0]
	tst r0, r0
	beq loc_80296A2
	mov r0, #0x45 
	ldrb r0, [r1,r0]
	str r0, [sp]
loc_80296A2:
	ldr r7, off_8029784 // =dword_2033000 
	ldr r6, off_80298D4 // =byte_203CDB0 
	ldrb r4, [r5,#6]
	cmp r4, #0
	beq loc_80296DE
	mov r3, #0
	mov r2, #0
loc_80296B0:
	mov r0, r3
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r2,r3}
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_80296D8
	ldrb r1, [r0,#7]
	cmp r1, #2
	beq loc_80296D6
	ldrb r1, [r0,#4]
	mov r0, #1
	tst r1, r0
	bne loc_80296D6
	ldrh r0, [r6]
	strh r0, [r7]
	add r7, #2
	add r2, #1
loc_80296D6:
	add r6, #2
loc_80296D8:
	add r3, #1
	sub r4, #1
	bne loc_80296B0
loc_80296DE:
	ldrb r3, [r5,#5]
	ldrb r0, [r5,#6]
	sub r3, r3, r0
	bmi loc_802970C
	beq loc_802970C
loc_80296E8:
	ldr r0, [sp]
	tst r0, r0
	beq loc_80296FE
	lsl r0, r0, #1
	ldr r1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp r0, r6
	bne loc_80296FE
	add r6, #4
	sub r3, #2
	b loc_802970A
loc_80296FE:
	ldrh r0, [r6]
	strh r0, [r7]
	add r6, #2
	add r7, #2
	add r2, #1
	sub r3, #1
loc_802970A:
	bne loc_80296E8
loc_802970C:
	cmp r2, #0
	beq loc_802977E
	ldr r0, off_8029784 // =dword_2033000 
	mov r7, r0
	mov r1, r2
	bl sub_8000D12
	ldrb r4, [r5,#6]
	cmp r4, #0
	beq loc_8029750
	ldr r6, off_80298D4 // =byte_203CDB0 
	mov r3, #0
loc_8029724:
	mov r0, r3
	push {r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_802974A
	ldrb r1, [r0,#7]
	cmp r1, #2
	beq loc_8029748
	ldrb r1, [r0,#4]
	mov r0, #1
	tst r1, r0
	bne loc_8029748
	ldrh r0, [r7]
	strh r0, [r6]
	add r7, #2
loc_8029748:
	add r6, #2
loc_802974A:
	add r3, #1
	sub r4, #1
	bne loc_8029724
loc_8029750:
	ldrb r3, [r5,#5]
	ldrb r0, [r5,#6]
	sub r3, r3, r0
	bmi loc_802977E
	beq loc_802977E
loc_802975A:
	ldr r0, [sp]
	tst r0, r0
	beq loc_8029770
	lsl r0, r0, #1
	ldr r1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp r0, r6
	bne loc_8029770
	add r6, #4
	sub r3, #2
	b loc_802977C
loc_8029770:
	ldrh r0, [r7]
	strh r0, [r6]
	add r6, #2
	add r7, #2
	add r2, #1
	sub r3, #1
loc_802977C:
	bne loc_802975A
loc_802977E:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_8029784: .word dword_2033000
	thumb_func_end sub_8029688

	thumb_local_start
sub_8029788:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	mov r0, #0x44 
	ldrb r0, [r1,r0]
	tst r0, r0
	beq loc_80297A2
	mov r0, #0x45 
	ldrb r0, [r1,r0]
	str r0, [sp]
loc_80297A2:
	ldr r7, off_80298C0 // =word_2036660 
	ldr r6, off_80298D4 // =byte_203CDB0 
	mov r3, #0
	mov r2, #0
	ldrb r4, [r5,#6]
	cmp r4, #0
	beq loc_80297E0
loc_80297B0:
	mov r0, r3
	push {r2,r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r2,r3}
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_80297D8
	ldrb r1, [r0,#7]
	cmp r1, #2
	beq loc_80297D6
	ldrb r1, [r0,#4]
	mov r0, #1
	tst r1, r0
	bne loc_80297D6
	ldrh r0, [r6]
	strh r0, [r7]
	add r7, #2
	add r2, #1
loc_80297D6:
	add r6, #2
loc_80297D8:
	add r3, #1
	sub r4, #1
	bne loc_80297B0
	mov r4, r2
loc_80297E0:
	ldrb r3, [r5,#5]
	ldrb r0, [r5,#6]
	sub r3, r3, r0
	bmi loc_802980E
	beq loc_802980E
loc_80297EA:
	ldr r0, [sp]
	tst r0, r0
	beq loc_8029800
	lsl r0, r0, #1
	ldr r1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp r0, r6
	bne loc_8029800
	add r6, #4
	sub r3, #2
	b loc_802980C
loc_8029800:
	ldrh r0, [r6]
	strh r0, [r7]
	add r6, #2
	add r7, #2
	add r2, #1
	sub r3, #1
loc_802980C:
	bne loc_80297EA
loc_802980E:
	cmp r2, #0
	beq loc_8029838
	ldr r0, off_80298C0 // =word_2036660 
	push {r0,r2}
	ldr r1, off_80298C4 // =byte_80298C8
	ldrb r3, [r1,r4]
	cmp r3, #0
	beq loc_802982A
	mov r1, r4
	mov r2, r4
	push {r3}
	bl sub_8000D12
	pop {r3}
loc_802982A:
	pop {r0,r2}
	sub r2, r2, r3
	lsl r3, r3, #1
	add r0, r0, r3
	mov r1, r2
	bl sub_8000D12
loc_8029838:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8029788

	thumb_local_start
sub_802983C:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	mov r0, #0x44 
	ldrb r0, [r1,r0]
	tst r0, r0
	beq loc_8029856
	mov r0, #0x45 
	ldrb r0, [r1,r0]
	str r0, [sp]
loc_8029856:
	ldr r7, off_80298C0 // =word_2036660 
	ldr r6, off_80298D4 // =byte_203CDB0 
	ldrb r4, [r5,#6]
	cmp r4, #0
	beq loc_802988E
	mov r3, #0
loc_8029862:
	mov r0, r3
	push {r3}
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	pop {r3}
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_8029888
	ldrb r1, [r0,#7]
	cmp r1, #2
	beq loc_8029886
	ldrb r1, [r0,#4]
	mov r0, #1
	tst r1, r0
	bne loc_8029886
	ldrh r0, [r7]
	strh r0, [r6]
	add r7, #2
loc_8029886:
	add r6, #2
loc_8029888:
	add r3, #1
	sub r4, #1
	bne loc_8029862
loc_802988E:
	ldrb r3, [r5,#5]
	ldrb r0, [r5,#6]
	sub r3, r3, r0
	bmi loc_80298BC
	beq loc_80298BC
loc_8029898:
	ldr r0, [sp]
	tst r0, r0
	beq loc_80298AE
	lsl r0, r0, #1
	ldr r1, off_80298D4 // =byte_203CDB0 
	add r0, r0, r1
	cmp r0, r6
	bne loc_80298AE
	add r6, #4
	sub r3, #2
	b loc_80298BA
loc_80298AE:
	ldrh r0, [r7]
	strh r0, [r6]
	add r6, #2
	add r7, #2
	add r2, #1
	sub r3, #1
loc_80298BA:
	bne loc_8029898
loc_80298BC:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
off_80298C0: .word word_2036660
off_80298C4: .word byte_80298C8
byte_80298C8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80298D4: .word byte_203CDB0
	thumb_func_end sub_802983C

	thumb_local_start
sub_80298D8:
	push {lr}
	ldr r0, dword_80298EC // =0x40600000 
	ldr r1, [r5,#0x44]
	add r0, r0, r1
	ldr r1, dword_80298F0 // =0xd796 
	mov r2, #1
	mov r3, #0
	bl sub_8009FF8
	pop {pc}
dword_80298EC: .word 0x40600000
dword_80298F0: .word 0xD796
	thumb_func_end sub_80298D8

	thumb_local_start
sub_80298F4:
	push {lr}
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq loc_80299B2
	cmp r0, #0
	beq loc_8029918
	cmp r0, #1
	beq loc_8029924
	cmp r0, #3
	beq loc_8029930
	cmp r0, #4
	beq loc_802993C
	cmp r0, #5
	beq loc_802993C
	cmp r0, #6
	beq loc_8029948
	mov r0, #0
	b locret_802996C
loc_8029918:
	bl sub_802996E
	cmp r0, #0
	beq locret_802996C
	mov r1, r0
	b loc_8029952
loc_8029924:
	bl sub_80299B6
	cmp r0, #0
	beq locret_802996C
	mov r1, r0
	b loc_8029952
loc_8029930:
	bl sub_80299FA
	cmp r0, #0
	beq locret_802996C
	mov r1, r0
	b loc_8029952
loc_802993C:
	bl sub_8029A1E
	cmp r0, #0
	beq locret_802996C
	mov r1, r0
	b loc_8029952
loc_8029948:
	bl sub_8029A36
	cmp r0, #0
	beq locret_802996C
	mov r1, r0
loc_8029952:
	ldr r0, off_8029C04 // =TextScriptFirstBattleTutorials
	ldrb r2, [r5,#0xc]
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldrb r0, [r5,#1]
	strb r0, [r5,#0xd]
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #1
locret_802996C:
	pop {pc}
	thumb_func_end sub_80298F4

	thumb_local_start
sub_802996E:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #0xa
	bne loc_80299B2
	ldrb r0, [r5,#8]
	cmp r0, #0
	bne loc_8029980
	mov r0, #0xc
	b locret_80299B4
loc_8029980:
	cmp r0, #2
	bge loc_8029994
	mov r3, #0x48 
	ldrb r0, [r5,r3]
	cmp r0, #0
	beq loc_8029990
	cmp r0, #2
	bne loc_80299AE
loc_8029990:
	mov r0, #0xb
	b locret_80299B4
loc_8029994:
	mov r3, #0x48 
	add r3, r3, r5
	ldrb r0, [r3]
	ldrb r1, [r3,#1]
	cmp r0, r1
	blt loc_80299A6
	mov r2, r0
	mov r0, r1
	mov r1, r2
loc_80299A6:
	cmp r0, #0
	bne loc_80299AE
	cmp r1, #2
	beq loc_80299B2
loc_80299AE:
	mov r0, #0x17
	b locret_80299B4
loc_80299B2:
	mov r0, #0
locret_80299B4:
	pop {pc}
	thumb_func_end sub_802996E

	thumb_local_start
sub_80299B6:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #0xa
	bne loc_80299F6
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_80299F2
	cmp r0, #1
	beq loc_80299E6
	mov r3, #0x48 
	ldrb r0, [r5,r3]
	add r3, #1
	ldrb r1, [r5,r3]
	cmp r0, #0
	bne loc_80299DA
	cmp r1, #1
	beq loc_80299F6
	b loc_80299EE
loc_80299DA:
	cmp r0, #1
	bne loc_80299F2
	cmp r1, #0
	bne loc_80299F2
	mov r0, #9
	b locret_80299F8
loc_80299E6:
	mov r3, #0x48 
	ldrb r0, [r5,r3]
	cmp r0, #0
	bne loc_80299F2
loc_80299EE:
	mov r0, #0xd
	b locret_80299F8
loc_80299F2:
	mov r0, #8
	b locret_80299F8
loc_80299F6:
	mov r0, #0
locret_80299F8:
	pop {pc}
	thumb_func_end sub_80299B6

	thumb_local_start
sub_80299FA:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #0xa
	beq loc_8029A10
	cmp r0, #0xb
	beq loc_8029A1A
	ldrb r0, [r5,#0x17]
	tst r0, r0
	bne loc_8029A1A
	mov r0, #0x24 
	b locret_8029A1C
loc_8029A10:
	ldrb r0, [r5,#0x17]
	tst r0, r0
	bne loc_8029A1A
	mov r0, #0x25 
	b locret_8029A1C
loc_8029A1A:
	mov r0, #0
locret_8029A1C:
	pop {pc}
	thumb_func_end sub_80299FA

	thumb_local_start
sub_8029A1E:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #0xb
	bne loc_8029A32
	bl sub_802A564
	tst r3, r3
	bne loc_8029A32
	mov r0, #0x26 
	b locret_8029A34
loc_8029A32:
	mov r0, #0
locret_8029A34:
	pop {pc}
	thumb_func_end sub_8029A1E

	thumb_local_start
sub_8029A36:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#7]
	cmp r0, #1
	bne loc_8029A52
	ldrb r0, [r5,#0x19]
	tst r0, r0
	bne loc_8029A52
	ldrb r0, [r5,#1]
	cmp r0, #0x54 
	beq loc_8029A52
	mov r0, #4
	b locret_8029A54
loc_8029A52:
	mov r0, #0
locret_8029A54:
	pop {pc}
	thumb_func_end sub_8029A36

	thumb_local_start
sub_8029A56:
	push {lr}
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq locret_8029AA8
	cmp r0, #0
	beq loc_8029A6C
	cmp r0, #1
	beq loc_8029A78
	cmp r0, #3
	beq loc_8029A84
	b locret_8029AA8
loc_8029A6C:
	bl sub_8029AAA
	cmp r0, #0
	beq locret_8029AA8
	mov r1, r0
	b loc_8029A90
loc_8029A78:
	bl sub_8029ADA
	cmp r0, #0
	beq locret_8029AA8
	mov r1, r0
	b loc_8029A90
loc_8029A84:
	bl sub_8029B16
	cmp r0, #0
	beq locret_8029AA8
	mov r1, r0
	b loc_8029A90
loc_8029A90:
	ldr r0, off_8029C04 // =TextScriptFirstBattleTutorials
	ldrb r2, [r5,#0xc]
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldrb r0, [r5,#1]
	strb r0, [r5,#0xd]
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_8029AA8:
	pop {pc}
	thumb_func_end sub_8029A56

	thumb_local_start
sub_8029AAA:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #0
	beq loc_8029AC4
	cmp r0, #2
	beq loc_8029AC4
	cmp r0, #0xa
	beq loc_8029AD2
	ldrb r0, [r5,#8]
	cmp r0, #2
	bgt loc_8029AD6
	mov r0, #0x16
	b locret_8029AD8
loc_8029AC4:
	ldrb r0, [r5,#8]
	cmp r0, #1
	bne loc_8029ACE
	mov r0, #9
	b locret_8029AD8
loc_8029ACE:
	mov r0, #0xe
	b locret_8029AD8
loc_8029AD2:
	mov r0, #0x10
	b locret_8029AD8
loc_8029AD6:
	mov r0, #0
locret_8029AD8:
	pop {pc}
	thumb_func_end sub_8029AAA

	thumb_local_start
sub_8029ADA:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #0
	beq loc_8029AF4
	cmp r0, #1
	beq loc_8029AFE
	cmp r0, #0xa
	beq loc_8029B0E
	ldrb r0, [r5,#8]
	cmp r0, #2
	bge loc_8029B12
	mov r0, #7
	b locret_8029B14
loc_8029AF4:
	ldrb r0, [r5,#8]
	cmp r0, #1
	bne loc_8029B12
	mov r0, #5
	b locret_8029B14
loc_8029AFE:
	ldrb r0, [r5,#8]
	cmp r0, #2
	blt loc_8029B0A
	bne loc_8029B12
	mov r0, #0xa
	b locret_8029B14
loc_8029B0A:
	mov r0, #6
	b locret_8029B14
loc_8029B0E:
	mov r0, #0xf
	b locret_8029B14
loc_8029B12:
	mov r0, #0
locret_8029B14:
	pop {pc}
	thumb_func_end sub_8029ADA

	thumb_local_start
sub_8029B16:
	push {lr}
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8029B16

	thumb_local_start
sub_8029B1C:
	push {lr}
	ldrb r0, [r5,#0xc]
	cmp r0, #0xff
	beq loc_8029BA8
	cmp r0, #0
	beq loc_8029B3C
	cmp r0, #1
	beq loc_8029B48
	cmp r0, #3
	beq loc_8029B54
	cmp r0, #4
	beq loc_8029B54
	cmp r0, #6
	beq loc_8029B60
	mov r0, #0
	b locret_8029B84
loc_8029B3C:
	bl sub_8029B86
	cmp r0, #0
	beq locret_8029B84
	mov r1, r0
	b loc_8029B6A
loc_8029B48:
	bl sub_8029BAC
	cmp r0, #0
	beq locret_8029B84
	mov r1, r0
	b loc_8029B6A
loc_8029B54:
	bl sub_8029BD6
	cmp r0, #0
	beq locret_8029B84
	mov r1, r0
	b loc_8029B6A
loc_8029B60:
	bl sub_8029BE6
	cmp r0, #0
	beq locret_8029B84
	mov r1, r0
loc_8029B6A:
	ldr r0, off_8029C04 // =TextScriptFirstBattleTutorials
	ldrb r2, [r5,#0xc]
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldrb r0, [r5,#1]
	strb r0, [r5,#0xd]
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #1
locret_8029B84:
	pop {pc}
	thumb_func_end sub_8029B1C

	thumb_local_start
sub_8029B86:
	push {lr}
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_8029BA8
	cmp r0, #2
	bgt loc_8029BA8
	mov r3, #0x47 
	add r3, r3, r0
	ldrb r3, [r5,r3]
	cmp r3, #0
	beq loc_8029BA0
	cmp r3, #2
	bne loc_8029BA8
loc_8029BA0:
	mov r1, #5
	mul r0, r1
	add r0, #5
	b locret_8029BAA
loc_8029BA8:
	mov r0, #0
locret_8029BAA:
	pop {pc}
	thumb_func_end sub_8029B86

	thumb_local_start
sub_8029BAC:
	push {lr}
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_8029BD2
	cmp r0, #2
	bgt loc_8029BD2
	mov r3, #0x47 
	add r3, r3, r0
	ldrb r3, [r5,r3]
	cmp r0, #1
	bne loc_8029BCA
	cmp r3, #0
	bne loc_8029BD2
	mov r0, #0xb
	b locret_8029BD4
loc_8029BCA:
	cmp r3, #1
	bne loc_8029BD2
	mov r0, #0xc
	b locret_8029BD4
loc_8029BD2:
	mov r0, #0
locret_8029BD4:
	pop {pc}
	thumb_func_end sub_8029BAC

	thumb_local_start
sub_8029BD6:
	push {lr}
	ldrb r0, [r5,#8]
	cmp r0, #1
	bne loc_8029BE2
	mov r0, #0x27 
	b locret_8029BE4
loc_8029BE2:
	mov r0, #0
locret_8029BE4:
	pop {pc}
	thumb_func_end sub_8029BD6

	thumb_local_start
sub_8029BE6:
	push {lr}
	ldrb r0, [r5,#8]
	cmp r0, #0
	bne loc_8029BFE
	ldrb r0, [r5,#0x19]
	tst r0, r0
	beq loc_8029BFE
	ldrb r0, [r5,#1]
	cmp r0, #0x54 
	beq loc_8029BFE
	mov r0, #5
	b locret_8029C00
loc_8029BFE:
	mov r0, #0
locret_8029C00:
	pop {pc}
	.balign 4, 0x00
off_8029C04: .word TextScriptFirstBattleTutorials
	thumb_func_end sub_8029BE6

	thumb_local_start
sub_8029C08:
	push {lr}
	ldrb r0, [r5,#1]
	cmp r0, #0x48 
	beq loc_8029C14
	cmp r0, #0x44 
	bne loc_8029C18
loc_8029C14:
	mov r1, #0
	b loc_8029C22
loc_8029C18:
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	ldrh r1, [r1,#0x18]
	cmp r1, #0x67 
	bgt locret_8029C9A
loc_8029C22:
	mov r0, #0x57 
	sub r0, r0, r1
	ldr r1, dword_8029CA4 // =0x1ff 
	and r0, r1
	lsl r0, r0, #0x10
	ldr r1, dword_8029C9C // =0x800001fc 
	add r0, r0, r1
	ldrb r1, [r5,#0xf]
	cmp r1, #2
	blt loc_8029C46
	cmp r1, #6
	bgt loc_8029C46
	sub r0, #1
	cmp r1, #3
	blt loc_8029C46
	cmp r1, #4
	bgt loc_8029C46
	sub r0, #1
loc_8029C46:
	cmp r1, #5
	blt loc_8029C54
	cmp r1, #0xb
	bgt loc_8029C54
	mov r1, #1
	lsl r1, r1, #0x10
	add r0, r0, r1
loc_8029C54:
	cmp r1, #2
	blt loc_8029C62
	cmp r1, #3
	bgt loc_8029C62
	mov r1, #1
	lsl r1, r1, #0x10
	sub r0, r0, r1
loc_8029C62:
	ldrb r1, [r5,#0xe]
	lsl r1, r1, #0x19
	orr r0, r1
	ldr r1, dword_8029CA0 // =0xb782 
	mov r2, #1
	mov r3, #0
	bl sub_8009FF8
	ldrb r0, [r5,#0xf]
	cmp r0, #0
	beq locret_8029C9A
	cmp r0, #0x14
	blt loc_8029C82
	mov r0, #0
	strb r0, [r5,#0xf]
	b locret_8029C9A
loc_8029C82:
	add r1, r0, #1
	strb r1, [r5,#0xf]
	sub r0, #1
	ldr r1, off_8029CA8 // =byte_8029CAC
	lsl r0, r0, #1
	add r2, r0, #1
	ldrb r2, [r1,r2]
	ldrb r0, [r1,r0]
	mov r1, r2
	ldrb r3, [r5,#0xe]
	bl sub_802FE7A
locret_8029C9A:
	pop {pc}
dword_8029C9C: .word 0x800001FC
dword_8029CA0: .word 0xB782
dword_8029CA4: .word 0x1FF
off_8029CA8: .word byte_8029CAC
byte_8029CAC: .byte 0x0, 0x40, 0x20, 0x3C, 0x40, 0x3A, 0x60, 0x38, 0x80
	.byte 0x37, 0xA0, 0x36, 0xB0, 0x36, 0xC0, 0x36, 0xD0, 0x37
	.byte 0xD8, 0x38, 0xE0, 0x39, 0xE8, 0x3A, 0xEC, 0x3B, 0xF0
	.byte 0x3C, 0xF4, 0x3D, 0xF8, 0x3E, 0xFB, 0x3F, 0xFE, 0x40
	.byte 0x0, 0x40, 0x0, 0x0
	thumb_func_end sub_8029C08

	thumb_local_start
sub_8029CD4:
	push {r4-r6,lr}
	mov r4, #0x89
	lsl r1, r1, #1
	add r4, r4, r1
	mov r1, #0x1e
	lsl r0, r0, #1
	add r0, #3
	mul r0, r1
	add r0, #0x16
	ldr r1, off_8029D30 // =unk_2035000 
	add r1, r1, r0
	ldr r3, off_8029D14 // =byte_8029D18
	mov r5, #0
loc_8029CEE:
	ldrh r6, [r3,r5]
	add r5, #2
	ldrh r0, [r3,r5]
	add r5, #2
	add r0, r0, r4
	strh r0, [r1,r6]
	cmp r5, #0x10
	bne loc_8029CEE
	cmp r2, #0
	bne locret_8029D12
	// j
	mov r0, #0
	// i
	mov r1, #3
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8029D28 // =unk_203505A 
	mov r4, #0xf
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_8029D12:
	pop {r4-r6,pc}
off_8029D14: .word byte_8029D18
byte_8029D18: .byte 0x0, 0x0, 0x0, 0x90, 0x1E, 0x0, 0x1, 0x90, 0x6, 0x0, 0x0, 0x94, 0x24
	.byte 0x0, 0x1, 0x94
off_8029D28: .word unk_203505A
	.word 0x3FF
off_8029D30: .word unk_2035000
	thumb_func_end sub_8029CD4

	thumb_local_start
sub_8029D34:
	push {r4,r5,lr}
	bl sub_800A97A
	cmp r0, #0
	beq locret_8029D5E
	ldr r0, [r5,#0x40]
	mov r1, #0x1f
	and r0, r1
	cmp r0, #0x1c
	blt loc_8029D4E
	bl sub_8029D80
	b locret_8029D5E
loc_8029D4E:
	// j
	mov r0, #0xf
	// i
	mov r1, #4
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8029D60 // =byte_8029D64 
	mov r4, #7
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_8029D5E:
	pop {r4,r5,pc}
off_8029D60: .word byte_8029D64
byte_8029D64: .byte 0x8D, 0x90, 0x8E, 0x90, 0x8F, 0x90, 0x90, 0x90, 0x91
	.byte 0x90, 0x92, 0x90, 0x93, 0x90, 0x94, 0x90, 0x95, 0x90
	.byte 0x96, 0x90, 0x97, 0x90, 0x98, 0x90, 0x99, 0x90, 0x9A
	.byte 0x90
	thumb_func_end sub_8029D34

	thumb_local_start
sub_8029D80:
	push {r4,r5,lr}
	mov r0, #0xf
	mov r1, #4
	mov r2, #3
	mov r3, #0
	mov r4, #7
	mov r5, #2
	bl sub_80018D0
	pop {r4,r5,pc}
	thumb_func_end sub_8029D80

	thumb_local_start
sub_8029D94:
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	mov r0, #0
	cmp r2, #2
	blt loc_8029DA2
	mov r0, #5
loc_8029DA2:
	add r0, r0, r1
	ldr r1, off_8029DDC // =0x240 
	mul r0, r1
	ldr r1, off_8029DD8 // =dword_86E7DCC 
	add r0, r0, r1
	ldr r1, off_8029DDC // =0x240 
	mov r2, r6
	mul r1, r2
	ldr r2, dword_8029DE0 // =0x600a720 
	add r1, r1, r2
	ldr r2, off_8029DDC // =0x240 
	bl sub_8000AC8
	mov r0, #1
	mov r1, #1
	lsl r6, r6, #1
	add r1, r1, r6
	mov r2, #3
	ldr r3, off_8029DE4 // =byte_8029DF8 
	mov r4, #0x12
	mul r4, r6
	add r3, r3, r4
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
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
	thumb_func_end sub_8029D94

	thumb_local_start
sub_8029EAC:
	push {lr}
	mov r1, #0x20 
	mul r0, r1
	ldr r1, off_8029EC0 // =dword_86E944C 
	add r0, r0, r1
	ldr r1, off_8029EC4 // =unk_3001AA0 
	mov r2, #0x20 
	bl sub_8000AC8
	pop {pc}
off_8029EC0: .word dword_86E944C
off_8029EC4: .word unk_3001AA0
	thumb_func_end sub_8029EAC

	thumb_local_start
sub_8029EC8:
	push {r4,r6,lr}
	mov r4, #0
	mov r6, #0
loc_8029ECE:
	mov r0, r4
	lsl r0, r0, #2
	ldr r1, off_8029F48 // =byte_8029F4C
	ldr r0, [r1,r0]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8029EEE
	ldr r3, off_8029F6C // =dword_20349A0 
	ldr r3, [r3]
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #5
	and r3, r0
	bne loc_8029EEE
	add r6, #1
loc_8029EEE:
	add r4, #1
	cmp r4, #5
	blt loc_8029ECE
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_8029EC8

	thumb_local_start
sub_8029EF8:
	push {r4-r6,lr}
	mov r4, #0
	mov r6, #0
loc_8029EFE:
	mov r0, r4
	lsl r0, r0, #2
	ldr r1, off_8029F48 // =byte_8029F4C
	ldr r0, [r1,r0]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8029F3C
	ldr r3, off_8029F6C // =dword_20349A0 
	ldr r3, [r3]
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #5
	and r3, r0
	bne loc_8029F3C
	mov r0, #0
	mov r1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldr r1, dword_8029F68 // =0x6 
	add r1, r1, r4
	cmp r0, r1
	beq loc_8029F3C
	ldr r2, off_8029F60 // =0x50 
	add r2, r2, r6
	strb r4, [r5,r2]
	ldr r2, dword_8029F64 // =0x55 
	add r2, r2, r6
	mov r3, #0
	strb r3, [r5,r2]
	add r6, #1
loc_8029F3C:
	add r4, #1
	cmp r4, #5
	blt loc_8029EFE
	mov r0, r6
	pop {r4-r6,pc}
	.balign 4, 0x00
off_8029F48: .word byte_8029F4C
byte_8029F4C: .byte 0xE7, 0x0, 0x0, 0x0, 0xE8, 0x0, 0x0, 0x0, 0xE9, 0x0, 0x0, 0x0, 0xEA
	.byte 0x0, 0x0, 0x0, 0xEB, 0x0, 0x0, 0x0
off_8029F60: .word 0x50
dword_8029F64: .word 0x55
dword_8029F68: .word 0x6
off_8029F6C: .word dword_20349A0
	thumb_func_end sub_8029EF8

	thumb_local_start
sub_8029F70:
	push {r4,lr}
	mov r4, #0
	bl sub_802D234
	cmp r0, #8
	beq loc_8029FAA
	cmp r0, #0
	beq loc_8029F88
	cmp r0, #0xa
	beq loc_8029F88
	cmp r0, #0xb
	bne loc_8029FAC
loc_8029F88:
	bl sub_802D246 // () -> int
	ldr r1, dword_8029FB0 // =0x200000 
	tst r0, r1
	bne loc_8029FAC
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8029FA4
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	beq loc_8029FAA
	b loc_8029FAC
loc_8029FA4:
	bl sub_802E09A
	bne loc_8029FAC
loc_8029FAA:
	mov r4, #1
loc_8029FAC:
	mov r0, r4
	pop {r4,pc}
dword_8029FB0: .word 0x200000
	thumb_func_end sub_8029F70

	thumb_local_start
sub_8029FB4:
	push {r4,lr}
	mov r4, #0
	bl sub_802D234
	cmp r0, #5
	beq loc_8029FEA
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	bne loc_8029FEC
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8029FEC
	bl sub_802E09A
	bne loc_8029FEC
	bl sub_802D246 // () -> int
	ldr r1, dword_8029FF0 // =0x200000 
	tst r0, r1
	bne loc_8029FEC
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0xe0
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8029FEC
loc_8029FEA:
	mov r4, #1
loc_8029FEC:
	mov r0, r4
	pop {r4,pc}
dword_8029FF0: .word 0x200000
	thumb_func_end sub_8029FB4

// (int a1) -> bool
	thumb_local_start
chipIDIs13f_8029FF4:
	push {r1-r7,lr}
	mov r3, #0
	ldr r1, off_802A028 // =dword_802A02C 
	ldr r2, [r1]
	cmp r0, r2
	beq loc_802A006
	ldr r2, [r1,#0x4] // (dword_802A030 - 0x802a02c)
	cmp r0, r2
	bne loc_802A008
loc_802A006:
	mov r3, #1
loc_802A008:
	mov r0, r3
	pop {r1-r7,pc}
	thumb_func_end chipIDIs13f_8029FF4

	thumb_local_start
sub_802A00C:
	push {r1-r7,lr}
	mov r3, #0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	ldr r1, off_802A028 // =dword_802A02C 
	ldr r2, [r1]
	cmp r0, r2
	beq loc_802A022
	ldr r2, [r1,#0x4] // (dword_802A030 - 0x802a02c)
	cmp r0, r2
	bne loc_802A024
loc_802A022:
	mov r3, #1
loc_802A024:
	mov r0, r3
	pop {r1-r7,pc}
off_802A028: .word dword_802A02C
dword_802A02C: .word 0x13F
dword_802A030: .word 0x13F
	thumb_func_end sub_802A00C

	thumb_local_start
sub_802A034:
	push {r1-r7,lr}
	ldr r0, dword_802A03C // =0x13f 
	pop {r1-r7,pc}
	.balign 4, 0x00
dword_802A03C: .word 0x13F
	thumb_func_end sub_802A034

	thumb_local_start
sub_802A040:
	push {r4,r6,r7,lr}
	ldr r1, dword_802A084 // =0xc 
	add r6, r0, r1
	tst r0, r0
	bne loc_802A072
	push {r5}
	ldr r5, off_802A114 // =eStruct2035280 
	ldr r0, [r5,#0x48] // (dword_20352C8 - 0x2035280)
	ldrb r0, [r0,#0x16]
	ldrb r1, [r5,#0x17] // (eStruct2035280_NaviStatusGfxIdx17 - 0x2035280)
	cmp r1, #0
	beq loc_802A064
	ldrb r1, [r5,#0x16] // (byte_2035296 - 0x2035280)
	cmp r1, #0
	bne loc_802A064
	bl sub_8015B54
	b loc_802A068
loc_802A064:
	bl sub_8015B5C
loc_802A068:
	pop {r5}
	cmp r1, #0
	beq loc_802A072
	ldr r2, dword_802A0E4 // =0xc 
	add r6, r1, r2
loc_802A072:
	push {r5}
	ldr r5, off_802A114 // =eStruct2035280 
	mov r0, r6
	bl sub_801E660
	mov r2, #0x4c // (byte_20352CC - 0x2035280)
	strb r0, [r5,r2]
	pop {r5}
	pop {r4,r6,r7,pc}
dword_802A084: .word 0xC
	thumb_func_end sub_802A040

	thumb_local_start
sub_802A088:
	push {r4,r6,r7,lr}
	ldr r1, dword_802A0E0 // =0x6 
	add r6, r0, r1
	push {r5}
	ldr r5, off_802A114 // =eStruct2035280 
	ldr r0, [r5,#0x48] // (dword_20352C8 - 0x2035280)
	ldrb r0, [r0,#0x16]
	ldrb r1, [r5,#0x17] // (eStruct2035280_NaviStatusGfxIdx17 - 0x2035280)
	cmp r1, #0
	beq loc_802A0A8
	ldrb r1, [r5,#0x16] // (byte_2035296 - 0x2035280)
	cmp r1, #0
	bne loc_802A0A8
	bl sub_8015B54
	b loc_802A0AC
loc_802A0A8:
	bl sub_8015B5C
loc_802A0AC:
	pop {r5}
	cmp r1, #0xb
	blt loc_802A0B6
	ldr r2, dword_802A0E4 // =0xc 
	add r6, r6, r2
loc_802A0B6:
	push {r5}
	ldr r5, off_802A114 // =eStruct2035280 
	mov r0, r6
	bl sub_801E660
	mov r2, #0x4c // (byte_20352CC - 0x2035280)
	strb r0, [r5,r2]
	pop {r5}
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802A088

	thumb_local_start
sub_802A0C8:
	push {lr}
	sub r0, #1
	ldr r1, dword_802A0E8 // =0xd 
	add r0, r0, r1
	push {r5}
	ldr r5, off_802A114 // =eStruct2035280 
	bl sub_801E660
	mov r2, #0x4c // (byte_20352CC - 0x2035280)
	strb r0, [r5,r2]
	pop {r5}
	pop {pc}
dword_802A0E0: .word 0x6
dword_802A0E4: .word 0xC
dword_802A0E8: .word 0xD
	thumb_func_end sub_802A0C8

	thumb_local_start
sub_802A0EC:
	push {lr}
	ldr r0, off_802A114 // =eStruct2035280 
	mov r1, #0
	mov r2, #0x4c // (byte_20352CC - 0x2035280)
	strb r1, [r0,r2]
	pop {pc}
	thumb_func_end sub_802A0EC

	thumb_local_start
sub_802A0F8:
	push {lr}
	ldr r0, off_802A114 // =eStruct2035280 
	mov r1, #0
	mov r2, #0x4c // (byte_20352CC - 0x2035280)
	ldrb r1, [r0,r2]
	tst r1, r1
	beq loc_802A10C
	ldr r0, dword_802A118 // =0x4000 
	bl sub_801DACC
loc_802A10C:
	bl sub_802A0EC
	pop {pc}
	.balign 4, 0x00
off_802A114: .word eStruct2035280
dword_802A118: .word 0x4000
	thumb_func_end sub_802A0F8

	thumb_local_start
sub_802A11C:
	push {r4,lr}
	ldr r1, off_802A144 // =byte_802A148
	lsl r0, r0, #2
	ldr r4, [r1,r0]
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x32 
	bl sub_80136D8
	add r0, r0, r4
	cmp r0, #9
	ble loc_802A13A
	mov r0, #9
	b locret_802A140
loc_802A13A:
	cmp r0, #0
	bge locret_802A140
	mov r0, #1
locret_802A140:
	pop {r4,pc}
	.balign 4, 0x00
off_802A144: .word byte_802A148
byte_802A148: .byte 0x1, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0xD0, 0xB5, 0xFF, 0x24, 0x3
	.byte 0xF0, 0x6E, 0xF8, 0x0, 0x28, 0x2C, 0xD1, 0x17, 0x4F, 0x78, 0x79, 0xFF, 0x28
	.byte 0x28, 0xD0, 0xF6, 0xF0, 0xF6, 0xFC, 0xFF, 0x28, 0x24, 0xD0, 0x6, 0x1C, 0x29
	.byte 0x7C, 0x88, 0x42, 0x20, 0xD0, 0x0, 0x28, 0x4, 0xD1, 0x3, 0xF0, 0x65, 0xF8
	.byte 0x8, 0x21, 0x8, 0x42, 0x18, 0xD1, 0x69, 0x7D, 0x88, 0x42, 0x11, 0xD0, 0xF9
	.byte 0x89, 0x1, 0x22, 0x82, 0x40, 0x11, 0x42, 0x11, 0xD1, 0x3, 0xF0, 0x58, 0xF8
	.byte 0x8, 0x21, 0x8, 0x42, 0x4, 0xD1, 0x30, 0x1C, 0x0, 0x20, 0x0, 0x28, 0x8
	.byte 0xD0, 0x6, 0xE0, 0x78, 0x79, 0x2, 0x28, 0x4, 0xDA, 0x30, 0x1C, 0x0, 0x20
	.byte 0x0, 0x28, 0x0, 0xD0, 0x34, 0x1C, 0x20, 0x1C, 0xD0, 0xBD, 0x0, 0x0, 0xA0
	.byte 0x49, 0x3, 0x2, 0x80, 0xB5, 0x82, 0xB0, 0x6F, 0x46, 0x3, 0xF0, 0x3E, 0xF8
	.byte 0x8, 0x21, 0x8, 0x42, 0x18, 0xD1, 0xFF, 0x21, 0x38, 0x1C, 0x1, 0x80, 0x41
	.byte 0x80, 0x81, 0x80, 0xC1, 0x80, 0xE0, 0xF7, 0xDC, 0xFB, 0x38, 0x88, 0x9, 0x49
	.byte 0x88, 0x42, 0xC, 0xDB, 0x8, 0x4A, 0x90, 0x42, 0x9, 0xDC, 0x40, 0x1A, 0x6
	.byte 0x21, 0x6, 0xDF, 0x1, 0x30, 0x1, 0x21, 0x81, 0x40, 0x2C, 0x4B, 0xD8, 0x89
	.byte 0x8, 0x43, 0xD8, 0x81, 0x2, 0xB0, 0x80, 0xBD, 0x0, 0x0, 0x1, 0x1, 0x0
	.byte 0x0, 0x42, 0x1, 0x0, 0x0
	thumb_func_end sub_802A11C

	thumb_local_start
sub_802A210:
	push {lr}
	ldrb r0, [r5,#0x15]
	cmp r0, #0
	beq locret_802A21E
	ldr r3, off_802A2AC // =dword_20349A0 
	mov r0, #0xff
	strb r0, [r3,#0x5] // (byte_20349A5 - 0x20349a0)
locret_802A21E:
	pop {pc}
	thumb_func_end sub_802A210

	thumb_local_start
sub_802A220:
	push {r4,r6,r7,lr}
	mov r4, #0xff
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_802A2A2
	bl sub_802D246 // () -> int
	ldr r1, dword_802A2A8 // =0x200000 
	tst r0, r1
	bne loc_802A2A2
	bl sub_802D234
	cmp r0, #0
	beq loc_802A248
	cmp r0, #0xa
	beq loc_802A248
	cmp r0, #0xb
	bne loc_802A2A2
loc_802A248:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x29 
	bl sub_80136CC
	cmp r0, #1
	blt loc_802A25C
	cmp r0, #0xb
	ble loc_802A2A2
loc_802A25C:
	ldr r7, off_802A2AC // =dword_20349A0 
	ldrb r0, [r7,#0x5] // (byte_20349A5 - 0x20349a0)
	cmp r0, #0xff
	beq loc_802A2A2
	bl sub_8120B54
	cmp r0, #0xff
	beq loc_802A2A2
	mov r6, r0
	ldrh r1, [r5,#0x3a]
	cmp r0, r1
	beq loc_802A2A2
	ldrh r1, [r7,#0xe] // (word_20349AE - 0x20349a0)
	mov r2, #1
	lsl r2, r0
	tst r1, r2
	bne loc_802A2A2
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_802A292
	mov r0, r6
	mov r0, #1
	cmp r0, #0
	beq loc_802A2A2
	b loc_802A2A0
loc_802A292:
	ldrb r0, [r7,#0x5] // (byte_20349A5 - 0x20349a0)
	cmp r0, #2
	bge loc_802A2A2
	mov r0, r6
	mov r0, #1
	cmp r0, #0
	beq loc_802A2A2
loc_802A2A0:
	mov r4, r6
loc_802A2A2:
	mov r0, r4
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
dword_802A2A8: .word 0x200000
off_802A2AC: .word dword_20349A0
	thumb_func_end sub_802A220

	thumb_local_start
sub_802A2B0:
	push {lr}
	ldr r1, off_802A2D4 // =off_802A2D8 
	ldrb r0, [r5,#0x12]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r5,#0x14]
	add r0, #1
	mov r1, #0x3f 
	and r0, r1
	strb r0, [r5,#0x14]
	bne locret_802A2D2
	ldrb r0, [r5,#0x12]
	cmp r0, #0
	beq locret_802A2D2
	cmp r0, #3
	beq locret_802A2D2
locret_802A2D2:
	pop {pc}
off_802A2D4: .word off_802A2D8
off_802A2D8: .word sub_802A2E8+1
	.word sub_802A30C+1
	.word sub_802A33E+1
	.word sub_802A362+1
	thumb_func_end sub_802A2B0

	thumb_local_start
sub_802A2E8:
	push {lr}
	bl sub_802A394
	cmp r0, #0
	beq locret_802A30A
	mov r0, #0x54 
	mov r1, #0xa
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x5c 
	mov r1, #0xa
	bl loc_8006274 // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #4
	strb r0, [r5,#0x12]
locret_802A30A:
	pop {pc}
	thumb_func_end sub_802A2E8

	thumb_local_start
sub_802A30C:
	push {r4,lr}
	ldrb r4, [r5,#0x13]
	ldr r2, off_802A3E8 // =byte_802A3F4 
	ldrh r2, [r2,r4]
	ldr r1, dword_802A3F0 // =0xffff 
	mov r0, #0x1f
	bl sub_8000642
	ldr r2, off_802A3EC // =byte_802A400 
	ldrh r2, [r2,r4]
	ldr r1, dword_802A3F0 // =0xffff 
	mov r0, #0x16
	bl sub_8000642
	add r4, #2
	strb r4, [r5,#0x13]
	bl IsPaletteFadeActive // () -> zf
	bl loc_80062FC // () -> zf
	cmp r0, #0
	bne locret_802A33C
	mov r0, #8
	strb r0, [r5,#0x12]
locret_802A33C:
	pop {r4,pc}
	thumb_func_end sub_802A30C

	thumb_local_start
sub_802A33E:
	push {lr}
	bl sub_802A394
	cmp r0, #0
	bne locret_802A360
	mov r0, #0x50 
	mov r1, #0xa
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x58 
	mov r1, #0xa
	bl loc_8006274 // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #0xc
	strb r0, [r5,#0x12]
locret_802A360:
	pop {pc}
	thumb_func_end sub_802A33E

	thumb_local_start
sub_802A362:
	push {r4,lr}
	ldrb r4, [r5,#0x13]
	ldr r2, off_802A3EC // =byte_802A400 
	ldrh r2, [r2,r4]
	ldr r1, dword_802A3F0 // =0xffff 
	mov r0, #0x1f
	bl sub_8000642
	ldr r2, off_802A3E8 // =byte_802A3F4 
	ldrh r2, [r2,r4]
	ldr r1, dword_802A3F0 // =0xffff 
	mov r0, #0x16
	bl sub_8000642
	add r4, #2
	strb r4, [r5,#0x13]
	bl IsPaletteFadeActive // () -> zf
	bl loc_80062FC // () -> zf
	cmp r0, #0
	bne locret_802A392
	mov r0, #0
	strb r0, [r5,#0x12]
locret_802A392:
	pop {r4,pc}
	thumb_func_end sub_802A362

	thumb_local_start
sub_802A394:
	push {r4,lr}
	mov r4, #0
	ldrb r0, [r5,#1]
	cmp r0, #0x18
	beq loc_802A3A2
	cmp r0, #4
	bne loc_802A3C8
loc_802A3A2:
	ldrb r0, [r5,#7]
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_802A3C8
	ldr r0, [r0,#8]
	ldrh r0, [r0]
	bl getChipID_802A54E // (int a1) -> int
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #0x20 
	tst r0, r1
	beq loc_802A3C8
	mov r4, #1
loc_802A3C8:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_802A394

	thumb_local_start
sub_802A3CC:
	push {lr}
	mov r0, #0x1f
	ldr r1, dword_802A3F0 // =0xffff 
	mov r2, #0x80
	add r2, #0x80
	bl sub_8000642
	mov r0, #0x16
	ldr r1, dword_802A3F0 // =0xffff 
	mov r2, #0x80
	add r2, #0x80
	bl sub_8000642
	pop {pc}
off_802A3E8: .word byte_802A3F4
off_802A3EC: .word byte_802A400
dword_802A3F0: .word 0xFFFF
byte_802A3F4: .byte 0x0, 0x1, 0xE0, 0x0, 0xC0, 0x0, 0xA0, 0x0, 0x80, 0x0, 0x80, 0x0
byte_802A400: .byte 0x80, 0x0, 0x80, 0x0, 0xA0, 0x0, 0xC0, 0x0, 0xE0, 0x0, 0x0, 0x1
	thumb_func_end sub_802A3CC

	thumb_local_start
sub_802A40C:
	push {r4,r6,r7,lr}
	mov r7, #0
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	bl sub_802D234
	cmp r0, #2
	beq loc_802A42C
	cmp r0, #3
	beq loc_802A42C
	cmp r0, #4
	beq loc_802A42C
	cmp r0, #5
	beq loc_802A42C
	cmp r0, #8
	bne loc_802A430
loc_802A42C:
	mov r0, #5
	b loc_802A498
loc_802A430:
	ldrb r0, [r6,#0xd]
	bl sub_8015B54
	mov r4, #1
	cmp r1, #0xa
	beq loc_802A442
	cmp r1, #0x16
	beq loc_802A442
	mov r4, #0
loc_802A442:
	ldrb r0, [r6,#0xd]
	mov r1, #0xa
	bl sub_80136CC
	ldr r1, off_802A4F8 // =dword_20349A0 
	ldrb r1, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
	add r0, r0, r1
	cmp r0, #8
	ble loc_802A45A
	mov r7, r0
	sub r7, #8
	mov r0, #8
loc_802A45A:
	tst r4, r4
	bne loc_802A470
	push {r0}
	bl sub_802A5A0
	tst r0, r0
	pop {r0}
	beq loc_802A470
	mov r0, #0xa
	ldr r7, off_802A4F8 // =dword_20349A0 
	ldrb r7, [r7,#0x11] // (byte_20349B1 - 0x20349a0)
loc_802A470:
	push {r0}
	ldrb r0, [r6,#0xd]
	mov r1, #0x63 
	bl sub_80136CC
	mov r1, r0
	pop {r0}
	cmp r1, #0
	beq loc_802A498
	ldrb r2, [r6,#7]
	cmp r2, r1
	blt loc_802A498
	sub r2, r2, r1
	add r2, #1
	sub r7, r7, r2
	bpl loc_802A498
	add r0, r0, r7
	cmp r0, #2
	bge loc_802A498
	mov r0, #2
loc_802A498:
	strb r0, [r5,#6]
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802A40C

	thumb_local_start
sub_802A49C:
	push {lr}
	bl sub_802D234
	cmp r0, #2
	beq loc_802A4F0
	cmp r0, #3
	beq loc_802A4F0
	cmp r0, #4
	beq loc_802A4F0
	cmp r0, #5
	beq loc_802A4F0
	cmp r0, #8
	beq loc_802A4F0
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	bne loc_802A4F0
	ldrb r1, [r5,#0x15]
	cmp r0, r1
	bne loc_802A4CE
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	bl sub_8015B54
	b loc_802A4D8
loc_802A4CE:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	bl sub_8015B5C
loc_802A4D8:
	cmp r1, #5
	beq loc_802A4E0
	cmp r1, #0x11
	bne loc_802A4F0
loc_802A4E0:
	ldr r1, off_802A4F8 // =dword_20349A0 
	ldrb r0, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
	add r0, #1
	cmp r0, #3
	ble loc_802A4EC
	mov r0, #3
loc_802A4EC:
	strb r0, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
	b locret_802A4F6
loc_802A4F0:
	ldr r1, off_802A4F8 // =dword_20349A0 
	mov r0, #0
	strb r0, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
locret_802A4F6:
	pop {pc}
off_802A4F8: .word dword_20349A0
	thumb_func_end sub_802A49C

	thumb_local_start
sub_802A4FC:
	push {r4,r6,r7,lr}
	ldr r0, off_802A534 // =byte_20366C0 
	ldrb r0, [r0]
	cmp r0, #0xff
	beq locret_802A532
	ldr r4, off_802A534 // =byte_20366C0 
	mov r0, #0x32 
	add r4, r4, r0
	mov r6, #0xff
	lsl r6, r6, #8
	add r6, #0xff
	ldr r7, off_802A538 // =dword_20367E0 
loc_802A514:
	ldrh r0, [r4]
	cmp r0, r6
	beq locret_802A532
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#7]
	cmp r0, #2
	bgt loc_802A52E
	ldrb r1, [r7,r0]
	add r1, #1
	strb r1, [r7,r0]
loc_802A52E:
	add r4, #2
	b loc_802A514
locret_802A532:
	pop {r4,r6,r7,pc}
off_802A534: .word byte_20366C0
off_802A538: .word dword_20367E0
	thumb_func_end sub_802A4FC

	thumb_local_start
sub_802A53C:
	push {r1-r7,lr}
	mov r4, r0
	bl sub_800AFBA
	bne loc_802A54A
	mov r0, r4
	pop {r1-r7,pc}
loc_802A54A:
	ldr r0, dword_802A560 // =0x3785 
	pop {r1-r7,pc}
	thumb_func_end sub_802A53C

// (int a1) -> int
	thumb_local_start
getChipID_802A54E:
	push {r1-r7,lr}
	mov r4, r0
	bl sub_800B022 // (int a1) ->
	bne loc_802A55C
	mov r0, r4
	pop {r1-r7,pc}
loc_802A55C:
	ldr r0, dword_802A560 // =0x3785 
	pop {r1-r7,pc}
dword_802A560: .word 0x3785
	thumb_func_end getChipID_802A54E

	thumb_local_start
sub_802A564:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	ldrb r1, [r5,#0x15]
	cmp r1, #0
	bne loc_802A578
	bl sub_8015B54
	b locret_802A57C
loc_802A578:
	bl sub_8015B5C
locret_802A57C:
	pop {pc}
	thumb_func_end sub_802A564

	thumb_local_start
sub_802A57E:
	push {r4,lr}
	mov r4, #0
	bl sub_802A564
	cmp r0, #5
	beq loc_802A59C
	cmp r0, #1
	bne loc_802A596
	ldr r0, off_802A740 // =dword_20349A0 
	ldrb r0, [r0,#0x10] // (byte_20349B0 - 0x20349a0)
	tst r0, r0
	beq loc_802A59C
loc_802A596:
	cmp r1, #0xb
	bge loc_802A59C
	mov r4, #1
loc_802A59C:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_802A57E

	thumb_local_start
sub_802A5A0:
	push {r4,lr}
	mov r4, #0
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #8
	beq loc_802A5D6
	bl sub_802D234
	cmp r0, #1
	beq loc_802A5D6
	cmp r0, #6
	beq loc_802A5D6
	cmp r0, #7
	beq loc_802A5D6
	cmp r0, #9
	beq loc_802A5D6
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x61 
	bl sub_80136CC
	cmp r0, #1
	bne loc_802A5D6
	mov r4, #1
loc_802A5D6:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_802A5A0

	thumb_local_start
sub_802A5DA:
	push {r4,lr}
	mov r4, #0
	mov r0, #8
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0]
	cmp r1, #8
	beq loc_802A616
	bl sub_802D234
	cmp r0, #0
	beq loc_802A604
	cmp r0, #5
	beq loc_802A604
	cmp r0, #8
	beq loc_802A604
	cmp r0, #0xa
	beq loc_802A604
	cmp r0, #0xb
	beq loc_802A604
	b loc_802A616
loc_802A604:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x60 
	bl sub_80136CC
	cmp r0, #1
	bne loc_802A616
	mov r4, #1
loc_802A616:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_802A5DA

	thumb_local_start
sub_802A61A:
	push {r4,r6,lr}
	mov r4, #0
	bl sub_8027D58
	ldrb r1, [r5,#6]
	cmp r0, r1
	bge loc_802A62C
	mov r6, r0
	b loc_802A62E
loc_802A62C:
	mov r6, r1
loc_802A62E:
	mov r0, r4
	bl getLocOfActiveChips_8027E1C // (int a1) -> void*
	ldrb r1, [r0,#7]
	cmp r1, #2
	bne loc_802A63E
	mov r1, #0
	strb r1, [r0,#7]
loc_802A63E:
	add r4, #1
	cmp r4, r6
	blt loc_802A62E
	pop {r4,r6,pc}
	thumb_func_end sub_802A61A

	thumb_local_start
sub_802A646:
	push {lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	mov r0, #0x44 
	ldrb r0, [r3,r0]
	tst r0, r0
	beq locret_802A664
	mov r0, #0x45 
	ldrb r0, [r3,r0]
	ldrb r1, [r5,#6]
	cmp r0, r1
	bge locret_802A664
	mov r0, #0x44 
	mov r1, #0
	strb r1, [r3,r0]
locret_802A664:
	pop {pc}
	.balign 4, 0x00
	.word dword_20364C0
	.word unk_2035000
	.word unk_20365C0
	.word byte_203CDB0
	.byte 0xFF, 0x1, 0x0, 0x0, 0x20, 0x9C, 0x0, 0x6
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
	.word dword_86E57FC
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
off_802A7FC: .word EnterMap_RealWorldMapGroupJumptable
	.word 0xA000102
byte_802A804: .byte 0x9, 0x8, 0x7, 0x6, 0x5, 0xB, 0xA, 0x7, 0x6, 0x5, 0x2, 0x1, 0x0, 0xB, 0xA
	.byte 0x6, 0x5, 0xB, 0xA
byte_802A817: .byte 0x0
	.word loc_8030200+1
	.byte 0x4, 0x9, 0xA
byte_802A81F: .byte 0x5, 0x6, 0x7, 0x8, 0x9, 0xB, 0xA, 0x0, 0x0
byte_802A828: .byte 0x90, 0xF, 0x91, 0x9, 0x92, 0x25, 0x93, 0x15, 0x94, 0x5
	.byte 0x95, 0x1, 0x96, 0x27, 0x97, 0x27, 0x98, 0xD, 0x99, 0x7
	.byte 0x9A, 0x3, 0x0, 0x0
byte_802A840: .byte 0x6C, 0xB3, 0x68, 0xB3, 0x64, 0xB3, 0xFF, 0xFF
byte_802A848: .byte 0x73, 0xB3, 0x73, 0xB3, 0x73, 0xB3, 0x73, 0xB3, 0x73
	.byte 0xB3, 0x73, 0xB3, 0x72, 0xB3, 0x72, 0xB3, 0x72, 0xB3
	.byte 0x72, 0xB3, 0x72, 0xB3, 0x72, 0xB3, 0x0, 0x0
dword_802A862: .word 0xB374
	thumb_func_end sub_802A646

	thumb_func_start sub_802A866
sub_802A866:
	push {lr}
	bl sub_802B298
	// size
	mov r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_802B298
	mov r1, #1
	strb r1, [r0,#7]
	pop {pc}
	thumb_func_end sub_802A866

	thumb_func_start sub_802A87C
sub_802A87C:
	push {r5,lr}
	bl sub_802B298
	mov r5, r0
	ldr r1, off_802A894 // =off_802A898 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r5,#4]
	pop {r5,pc}
	.balign 4, 0x00
off_802A894: .word off_802A898
off_802A898: .word sub_802A8A4+1
	.word sub_802A974+1
	.word sub_802A934+1
	thumb_func_end sub_802A87C

	thumb_local_start
sub_802A8A4:
	push {lr}
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x97
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xad
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl decomp_802B060
	ldr r0, off_802A918 // =unk_2035000 
	ldr r1, dword_802A91C // =0x9070 
	ldr r2, dword_802A920 // =0x6008e00 
	bl sub_802B4D4
	ldr r0, off_802A918 // =unk_2035000 
	ldr r1, dword_802A924 // =0x90d4 
	ldr r2, dword_802A928 // =0x6009a80 
	bl sub_802B51C
	ldr r0, off_802A914 // =unk_2031000 
	bl sub_802B2A0
	strh r0, [r5,#0x1e]
	mov r0, #0
	ldr r1, off_802A90C // =dword_8129180 
	bl sub_8120CC8
	strb r0, [r5,#0xc]
	strb r1, [r5,#0xd]
	mov r0, #0
	strb r0, [r5,#0xf]
	strb r0, [r5,#0x12]
	mvn r0, r0
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	ldr r0, off_802A914 // =unk_2031000 
	ldr r1, off_802A92C // =decomp_2032000 
	bl sub_802B358
	ldr r0, off_802A930 // =unk_2030E60 
	ldr r1, off_802A914 // =unk_2031000 
	bl sub_802B438
	mov r0, #4
	str r0, [r5]
	ldr r0, dword_802A910 // =0x20000 
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
	thumb_func_end sub_802A8A4

	thumb_local_start
sub_802A934:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r2, [r1,#4]
	strb r2, [r1,#0x12]
	mov r0, #0x80
	add r0, r0, r1
	add r1, #0xd0
	lsl r2, r2, #2
	beq loc_802A966
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r0, dword_802A96C // =0x820080 
	bl sub_801DA48
	ldr r0, dword_802A96C // =0x820080 
	bl sub_801BECC
	ldr r0, dword_802A970 // =0x4 
	bl sub_801DACC
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	mov r0, #0
	strh r0, [r1,#0x18]
loc_802A966:
	mov r0, #1
	strb r0, [r5,#4]
	pop {pc}
dword_802A96C: .word 0x820080
dword_802A970: .word 0x4
	thumb_func_end sub_802A934

	thumb_local_start
sub_802A974:
	push {r5,lr}
	ldr r1, off_802A984 // =off_802A988 
	ldrb r0, [r5,#1]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_802A974

	thumb_local_start
sub_802A9B4:
	push {lr}
	bl sub_802AF6C
	bne locret_802A9CC
	mov r0, #4
	strb r0, [r5,#1]
	mov r1, #0
	ldrb r0, [r5,#0x10]
	cmp r0, #0xff
	beq loc_802A9CA
	mov r1, #1
loc_802A9CA:
	strb r1, [r5,#2]
locret_802A9CC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_802A9B4

	thumb_local_start
sub_802A9D0:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	ldrh r0, [r5,#0x20]
	strh r0, [r5,#0x22]
	ldrb r0, [r5,#2]
	tst r0, r0
	beq loc_802AA7C
	bl sub_802B0EC
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #1
	tst r0, r1
	beq loc_802AA0E
	ldrb r0, [r5,#0x10]
	cmp r0, #0xff
	bne loc_802A9FE
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_802AB98
loc_802A9FE:
	mov r0, #0x82
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	b loc_802AA54
loc_802AA0E:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #2
	tst r0, r1
	beq loc_802AA54
	ldrb r0, [r5,#0x11]
	cmp r0, #0xff
	beq loc_802AA2A
	bl sub_802B5B0
	mov r0, #0xff
	strb r0, [r5,#0x11]
	b loc_802AA38
loc_802AA2A:
	ldrb r0, [r5,#0x10]
	cmp r0, #0xff
	beq loc_802AA38
	bl sub_802B5B0
	mov r0, #0xff
	strb r0, [r5,#0x10]
loc_802AA38:
	mov r0, #0
	strb r0, [r5,#2]
	ldr r0, off_802ABB4 // =unk_2031000 
	ldr r1, off_802ABB8 // =decomp_2032000 
	bl sub_802B358
	ldr r0, off_802ABCC // =unk_2030E60 
	ldr r1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_802AB98
loc_802AA54:
	ldrb r0, [r5,#0x10]
	cmp r0, #0xff
	beq loc_802AA62
	ldrb r0, [r5,#0x11]
	cmp r0, #0xff
	beq loc_802AA62
	b loc_802AB98
loc_802AA62:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x20 
	tst r0, r1
	bne loc_802AA70
	b loc_802AB98
loc_802AA70:
	mov r0, #0
	strb r0, [r5,#2]
	mov r0, #0x7f
	bl sound_play // () -> void
	b loc_802AB98
loc_802AA7C:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	ldr r1, off_802ABC8 // =0x200 
	tst r0, r1
	beq loc_802AA9A
	mov r0, #0x1c
	strb r0, [r5,#1]
	mov r0, #0
	bl RunTextScriptBattleRunDialog
	mov r0, #0x7b 
	bl sound_play // () -> void
	b loc_802AB98
loc_802AA9A:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	ldr r1, off_802ABC4 // =0x100 
	tst r0, r1
	beq loc_802AAC8
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, off_802ABB4 // =unk_2031000 
	ldrh r0, [r1,r0]
	ldr r1, dword_802ABBC // =0xffff 
	cmp r0, r1
	beq loc_802AB98
	bl sub_802B5DC
	mov r0, #0x18
	strb r0, [r5,#1]
	mov r0, #0x9c
	bl sound_play // () -> void
	b loc_802AB98
loc_802AAC8:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x10
	tst r0, r1
	beq loc_802AAE0
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0x7f
	bl sound_play // () -> void
	b loc_802AB98
loc_802AAE0:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	tst r0, r0
	beq loc_802AB20
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x26]
	cmp r0, r1
	bne loc_802AB0E
	ldrh r0, [r5,#0x20]
	ldrh r1, [r5,#0x22]
	cmp r0, r1
	beq loc_802AB98
	ldr r0, off_802ABCC // =unk_2030E60 
	ldr r1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	b loc_802AB98
loc_802AB0E:
	ldr r0, off_802ABB4 // =unk_2031000 
	ldr r1, off_802ABB8 // =decomp_2032000 
	bl sub_802B358
	ldr r0, off_802ABCC // =unk_2030E60 
	ldr r1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	b loc_802AB98
loc_802AB20:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #1
	tst r0, r1
	beq loc_802AB94
	mov r3, #0x10
	ldrb r0, [r5,#0x10]
	cmp r0, #0xff
	beq loc_802AB36
	mov r3, #0x11
loc_802AB36:
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r0, r0, r1
	ldr r7, off_802ABB4 // =unk_2031000 
	lsl r4, r0, #1
	ldrh r6, [r7,r4]
	ldr r2, dword_802ABBC // =0xffff 
	cmp r6, r2
	beq loc_802AB64
	ldr r7, off_802ABC0 // =byte_802B5FC
	lsl r4, r6, #3
	add r4, #4
	ldrh r6, [r7,r4]
	ldrh r4, [r5,#0x12]
	add r4, r4, r6
	cmp r4, #0x32 
	bgt loc_802AB64
	ldrb r1, [r5,#0x10]
	cmp r0, r1
	beq loc_802AB64
	ldrb r1, [r5,#0x11]
	cmp r0, r1
	bne loc_802AB6C
loc_802AB64:
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_802AB98
loc_802AB6C:
	strb r0, [r5,r3]
	ldrb r0, [r5,#0x12]
	add r0, r0, r6
	strb r0, [r5,#0x12]
	cmp r3, #0x11
	bne loc_802AB7C
	mov r0, #4
	strb r0, [r5,#2]
loc_802AB7C:
	ldr r0, off_802ABB4 // =unk_2031000 
	ldr r1, off_802ABB8 // =decomp_2032000 
	bl sub_802B358
	ldr r0, off_802ABCC // =unk_2030E60 
	ldr r1, off_802ABB4 // =unk_2031000 
	bl sub_802B438
	mov r0, #0x81
	bl sound_play // () -> void
	b loc_802AB98
loc_802AB94:
	bl sub_802B560
loc_802AB98:
	mov r0, #0x10
	bl sub_802B15C
	mov r0, #0x11
	bl sub_802B15C
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_802ABAE
	bl sub_802B1E4
loc_802ABAE:
	bl sub_802B270
	pop {r4-r7,pc}
off_802ABB4: .word unk_2031000
off_802ABB8: .word decomp_2032000
dword_802ABBC: .word 0xFFFF
off_802ABC0: .word byte_802B5FC
off_802ABC4: .word 0x100
off_802ABC8: .word 0x200
off_802ABCC: .word unk_2030E60
	thumb_func_end sub_802A9D0

	thumb_local_start
sub_802ABD0:
	push {lr}
	bl sub_802AFD4
	bne locret_802ABEC
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	ldrb r0, [r5,#0x10]
	lsl r0, r0, #1
	ldr r1, off_802ABF0 // =unk_2031000 
	ldrh r0, [r1,r0]
	strb r0, [r5,#7]
locret_802ABEC:
	pop {pc}
	.byte 0, 0
off_802ABF0: .word unk_2031000
	thumb_func_end sub_802ABD0

	thumb_local_start
sub_802ABF4:
	push {lr}
	ldr r1, off_802AC04 // =off_802AC08 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802AC04: .word off_802AC08
off_802AC08: .word sub_802AC10+1
	.word sub_802AC6E+1
	thumb_func_end sub_802ABF4

	thumb_local_start
sub_802AC10:
	push {lr}
	ldrb r0, [r5,#3]
	cmp r0, #0
	bne loc_802AC4E
	mov r0, #1
	strb r0, [r5,#3]
	ldrb r0, [r5,#5]
	cmp r0, #2
	blt loc_802AC2C
	mov r0, #0
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_802AC6C
loc_802AC2C:
	ldrb r0, [r5,#7]
	sub r0, #1
	mov r1, #6
	mul r0, r1
	add r0, #1
	bl sub_802AEEA
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	add r2, #0x30 
	str r0, [r5,r2]
	ldrb r2, [r5,#5]
	add r2, #0xa
	strb r1, [r5,r2]
	mov r0, #2
	strb r0, [r5,#8]
	strb r0, [r5,#9]
loc_802AC4E:
	bl sub_802AF38
	ldrb r1, [r0,#9]
	cmp r1, #1
	bne locret_802AC6C
	mov r1, #0
	strh r1, [r0,#0x12]
	bl sub_802AF28
	mov r0, #0x28 
	strb r0, [r5,#1]
	mov r0, #4
	strh r0, [r5,#2]
	mov r0, #8
	str r0, [r5,#0x3c]
locret_802AC6C:
	pop {pc}
	thumb_func_end sub_802AC10

	thumb_local_start
sub_802AC6E:
	push {lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_JoypadPtr]
	ldrh r0, [r3,#4]
	mov r1, #0x40 
	tst r0, r1
	beq loc_802AC8C
	ldrb r1, [r5,#9]
	cmp r1, #1
	ble loc_802AC8C
	sub r1, #1
	strb r1, [r5,#9]
	bl sub_802B5D0
	b loc_802AD48
loc_802AC8C:
	mov r1, #0x80
	tst r0, r1
	beq loc_802ACA2
	ldrb r1, [r5,#9]
	cmp r1, #3
	bge loc_802ACA2
	add r1, #1
	strb r1, [r5,#9]
	bl sub_802B5D0
	b loc_802AD48
loc_802ACA2:
	mov r1, #0x20 
	tst r0, r1
	beq loc_802ACB8
	ldrb r1, [r5,#8]
	cmp r1, #1
	ble loc_802ACB8
	sub r1, #1
	strb r1, [r5,#8]
	bl sub_802B5D0
	b loc_802AD48
loc_802ACB8:
	mov r1, #0x10
	tst r0, r1
	beq loc_802ACCE
	ldrb r1, [r5,#8]
	cmp r1, #3
	bge loc_802ACCE
	add r1, #1
	strb r1, [r5,#8]
	bl sub_802B5D0
	b loc_802AD48
loc_802ACCE:
	mov r1, #1
	tst r0, r1
	beq loc_802AD34
	ldrb r0, [r5,#8]
	ldrb r1, [r5,#9]
	bl object_getPanelParameters
	ldr r1, dword_802AD6C // =0xf800000 
	tst r0, r1
	bne loc_802ACEA
	ldr r1, dword_802AD70 // =0x10 
	and r0, r1
	cmp r0, r1
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
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	cmp r0, #2
	blt loc_802AD1C
loc_802AD0A:
	ldr r0, off_802AD78 // =byte_8736D74
	mov r1, #0x28 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x14
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b loc_802AD48
loc_802AD1C:
	ldrb r0, [r5,#0x11]
	cmp r0, #0xff
	beq loc_802AD0A
	lsl r0, r0, #1
	ldr r1, off_802AD74 // =unk_2031000 
	ldrh r0, [r1,r0]
	strb r0, [r5,#7]
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b loc_802AD48
loc_802AD34:
	mov r1, #2
	tst r0, r1
	beq loc_802AD48
	mov r0, #0x68 
	bl sound_play // () -> void
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_802AD48:
	ldr r0, dword_802AD80 // =0x2a0000 
	push {r0}
	mov r0, sp
	ldrb r1, [r5,#8]
	mov r2, #5
	mul r1, r2
	sub r1, #3
	strb r1, [r0]
	ldrb r1, [r5,#9]
	mov r2, #3
	mul r1, r2
	add r1, #7
	strb r1, [r0,#1]
	pop {r0}
	bl sub_802AF0E
	pop {pc}
	.balign 4, 0x00
dword_802AD6C: .word 0xF800000
dword_802AD70: .word 0x10
off_802AD74: .word unk_2031000
off_802AD78: .word byte_8736D74
	.word 0x0
dword_802AD80: .word 0x2A0000
	thumb_func_end sub_802AC6E

	thumb_local_start
sub_802AD84:
	push {lr}
	ldrb r0, [r5,#3]
	cmp r0, #0
	bne loc_802ADB0
	mov r0, #1
	strb r0, [r5,#3]
	bl sub_802AF38
	mov r5, r0
	ldr r2, [r0,#0x58]
	mov r1, #1
	strb r1, [r2,#2]
	bl sub_800EC3C
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#8]
	sub r0, #1
	strb r0, [r1,#8]
	ldrb r0, [r1,#4]
	sub r0, #1
	strb r0, [r1,#4]
loc_802ADB0:
	bl sub_802AF38
	ldrb r1, [r0]
	cmp r1, #0
	bne locret_802ADF8
	ldrb r0, [r5,#5]
	add r0, #0xa
	ldrb r0, [r5,r0]
	cmp r0, #0
	beq loc_802ADC8
	bl sub_8002ADE
loc_802ADC8:
	ldrb r0, [r5,#5]
	tst r0, r0
	bne loc_802ADD8
	mov r0, #0
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_802ADF8
loc_802ADD8:
	sub r0, #1
	strb r0, [r5,#5]
	bl sub_802AF38
	ldrb r1, [r0,#0x12]
	strb r1, [r5,#8]
	ldrb r1, [r0,#0x13]
	strb r1, [r5,#9]
	mov r1, #0
	strh r1, [r0,#0x12]
	bl sub_802AF28
	mov r0, #0x28 
	strb r0, [r5,#1]
	mov r0, #8
	str r0, [r5,#0x3c]
locret_802ADF8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_802AD84

	thumb_local_start
sub_802ADFC:
	push {lr}
	ldr r0, [r5,#0x3c]
	sub r0, #1
	str r0, [r5,#0x3c]
	bne locret_802AE12
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #4
	strh r0, [r5,#2]
	bl sub_802AF0E
locret_802AE12:
	pop {pc}
	thumb_func_end sub_802ADFC

	thumb_local_start
sub_802AE14:
	push {lr}
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq locret_802AE5A
	bl chatbox_8045F4C
	tst r0, r0
	beq loc_802AE52
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	ldrb r0, [r5,#5]
	sub r0, #1
	strb r0, [r5,#5]
	bl sub_802AF38
	ldrb r1, [r0,#0x12]
	strb r1, [r5,#8]
	ldrb r1, [r0,#0x13]
	strb r1, [r5,#9]
	mov r1, #0
	strh r1, [r0,#0x12]
	bl sub_802AF28
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #4
	strh r0, [r5,#2]
	b loc_802AE56
loc_802AE52:
	mov r0, #8
	str r0, [r5]
loc_802AE56:
	bl chatbox_8040818
locret_802AE5A:
	pop {pc}
	thumb_func_end sub_802AE14

	thumb_local_start
sub_802AE5C:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_802AE70
	mov r0, #0x9e
	bl sound_play // () -> void
	mov r0, #4
	strb r0, [r5,#1]
loc_802AE70:
	mov r0, #0x10
	bl sub_802B15C
	mov r0, #0x11
	bl sub_802B15C
	bl sub_802B270
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_802AE5C

	thumb_local_start
sub_802AE84:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_802AEA6
	bl chatbox_8045F4C
	tst r0, r0
	beq loc_802AE9C
	mov r0, #4
	strb r0, [r5,#1]
	b loc_802AEA6
loc_802AE9C:
	mov r0, #1
	bl RunTextScriptBattleRunDialog
	mov r0, #0x20 
	strb r0, [r5,#1]
loc_802AEA6:
	mov r0, #0x10
	bl sub_802B15C
	mov r0, #0x11
	bl sub_802B15C
	bl sub_802B270
	pop {pc}
	thumb_func_end sub_802AE84

	thumb_local_start
sub_802AEB8:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_802AEC6
	mov r0, #0x24 
	strb r0, [r5,#1]
loc_802AEC6:
	mov r0, #0x10
	bl sub_802B15C
	mov r0, #0x11
	bl sub_802B15C
	bl sub_802B270
	pop {pc}
	thumb_func_end sub_802AEB8

	thumb_local_start
sub_802AED8:
	push {lr}
	bl sub_802AFD4
	bne locret_802AEE8
	bl sub_800AABC
	mov r0, #8
	strb r0, [r5]
locret_802AEE8:
	pop {pc}
	thumb_func_end sub_802AED8

	thumb_local_start
sub_802AEEA:
	push {r5-r7,lr}
	mov r6, r0
	bl enemy_getStruct1
	ldrb r1, [r0,#1]
	ldrb r0, [r0]
	bl sub_8002A64
	mov r7, r0
	mov r0, r6
	mov r1, #2
	mov r2, #2
	mov r3, #0
	mov r5, #0
	bl sub_80076A0
	mov r1, r7
	pop {r5-r7,pc}
	thumb_func_end sub_802AEEA

	thumb_local_start
sub_802AF0E:
	push {r5,lr}
	bl sub_802AF38
	ldrb r1, [r5,#8]
	strb r1, [r0,#0x12]
	strb r1, [r0,#0x14]
	ldrb r1, [r5,#9]
	strb r1, [r0,#0x13]
	strb r1, [r0,#0x15]
	mov r5, r0
	bl object_setCoordinatesFromPanels // () -> void
	pop {r5,pc}
	thumb_func_end sub_802AF0E

	thumb_local_start
sub_802AF28:
	push {r5,lr}
	mov r5, r0
	ldr r0, dword_802AF34 // =0x80000 
	bl object_setFlag2
	pop {r5,pc}
dword_802AF34: .word 0x80000
	thumb_func_end sub_802AF28

	thumb_local_start
sub_802AF38:
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	add r0, #0x30 
	ldr r0, [r5,r0]
	mov pc, lr
	thumb_func_end sub_802AF38

	thumb_local_start
sub_802AF42:
	push {r5,lr}
	ldrb r0, [r5,#5]
	sub r0, #1
	strb r0, [r5,#5]
	bl sub_802AF38
	mov r5, r0
	ldr r2, [r0,#0x58]
	mov r1, #1
	strb r1, [r2,#2]
	bl sub_800EC3C
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#8]
	sub r0, #1
	strb r0, [r1,#8]
	ldrb r0, [r1,#4]
	sub r0, #1
	strb r0, [r1,#4]
	pop {r5,pc}
	thumb_func_end sub_802AF42

	thumb_local_start
sub_802AF6C:
	push {r4-r7,lr}
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_802AF8C
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	mov r0, #0x78 
	strh r0, [r1,#0x18]
	mov r0, #0x79 
	bl sound_play // () -> void
	mov r0, #0xf
	str r0, [r5,#0x3c]
	mov r0, #0x78 
	str r0, [r5,#0x38]
	strb r0, [r5,#2]
loc_802AF8C:
	ldr r0, [r5,#0x38]
	sub r0, #0xc
	push {r0,r4,r6,r7}
	mov r6, #4
	and r6, r0
	lsr r6, r6, #2
	add r6, #1
loc_802AF9A:
	ldr r0, [r5,#0x3c]
	sub r0, #1
	str r0, [r5,#0x3c]
	ldr r4, off_802B08C // =unk_2035000 
	lsl r0, r0, #1
	add r4, r4, r0
	lsr r0, r0, #1
	mov r1, #0
	mov r2, #3
	mov r7, #0x14
loc_802AFAE:
	push {r0,r1}
	ldrh r3, [r4]
	mov r2, #3
	bl sub_800187C
	pop {r0,r1}
	add r1, #1
	add r4, #0x1e
	sub r7, #1
	bne loc_802AFAE
	sub r6, #1
	bne loc_802AF9A
	pop {r0,r4,r6,r7}
	str r0, [r5,#0x38]
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r0, [r1,#0x18]
	cmp r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_802AF6C

	thumb_local_start
sub_802AFD4:
	push {r4-r7,lr}
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_802AFE4
	str r0, [r5,#0x3c]
	str r0, [r5,#0x38]
	mov r0, #4
	strb r0, [r5,#2]
loc_802AFE4:
	ldr r0, [r5,#0x38]
	add r0, #0xc
	push {r0,r4-r7}
	mov r7, r5
	mov r6, #4
	and r6, r0
	lsr r6, r6, #2
	mov r0, #1
	eor r6, r0
	add r6, #1
loc_802AFF8:
	ldr r0, [r7,#0x3c]
	add r0, #1
	str r0, [r7,#0x3c]
	// j
	sub r0, #1
	// i
	mov r1, #0
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_802B020 // =byte_802B024
	mov r4, #1
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	sub r6, #1
	bne loc_802AFF8
	pop {r0,r4-r7}
	str r0, [r5,#0x38]
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	strh r0, [r1,#0x18]
	cmp r0, #0x78 
	pop {r4-r7,pc}
off_802B020: .word byte_802B024
byte_802B024: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802AFD4

	thumb_local_start
decomp_802B060:
	push {lr}
	// a1; src: (*a1)<<1>>1, dest= (u32)a1[8]
	ldr r0, initRefs // =initRefs_802B070 
	bl decompAndCopyData // (u32 *initRefs) -> void
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
	.word byte_86C9D6C
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
	.word eTextScript2030860
	.word decomp_2032000
	.word 0x0
	thumb_func_end decomp_802B060

	thumb_local_start
sub_802B0EC:
	push {r4-r7,lr}
	mov r7, #4
	ldr r6, off_802B118 // =dword_802B11C 
loc_802B0F2:
	ldr r0, [r6]
	lsl r0, r0, #0x10
	ldr r1, [r6,#4]
	orr r0, r1
	ldr r1, dword_802B114 // =0x10002 
	ldrb r2, [r5,#0xf]
	ldr r3, off_802B110 // =byte_802A848 
	ldr r4, [r6,#8]
	bl sub_811FAF4
	add r6, #0x10
	sub r7, #1
	bgt loc_802B0F2
	strb r0, [r5,#0xf]
	pop {r4-r7,pc}
off_802B110: .word byte_802A848
dword_802B114: .word 0x10002
off_802B118: .word dword_802B11C
dword_802B11C: .word 0x56
dword_802B120: .word 0x79
byte_802B124: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6A, 0x0, 0x0, 0x0, 0x79, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x56, 0x0, 0x0, 0x0, 0x8A, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x6A, 0x0, 0x0, 0x0, 0x8A
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802B0EC

	thumb_local_start
sub_802B15C:
	push {r4-r7,lr}
	ldrb r2, [r5,r0]
	cmp r2, #0xff
	beq locret_802B194
	ldrh r0, [r5,#0x24]
	cmp r2, r0
	blt locret_802B194
	add r1, r0, #5
	cmp r2, r1
	bge locret_802B194
	sub r5, r2, r0
	lsl r5, r5, #4
	mov r7, #4
	ldr r6, off_802B1A0 // =dword_802B1A4 
loc_802B178:
	ldr r0, [r6]
	lsl r0, r0, #0x10
	ldr r1, [r6,#4]
	add r1, r1, r5
	orr r0, r1
	ldr r1, dword_802B19C // =0x10002 
	mov r2, #0
	ldr r3, off_802B198 // =dword_802A862
	ldr r4, [r6,#8]
	bl sub_811FAF4
	add r6, #0x10
	sub r7, #1
	bgt loc_802B178
locret_802B194:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802B198: .word dword_802A862
dword_802B19C: .word 0x10002
off_802B1A0: .word dword_802B1A4
dword_802B1A4: .word 0xC
dword_802B1A8: .word 0xF
byte_802B1AC: .byte 0x0, 0x40, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4E, 0x0, 0x0, 0x0, 0xF, 0x0, 0x0
	.byte 0x0, 0x0, 0x40, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0x1B, 0x0
	.byte 0x0, 0x0, 0x0, 0x40, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x4E, 0x0, 0x0, 0x0, 0x1B
	.byte 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802B15C

	thumb_local_start
sub_802B1E4:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_802B1FE
	mov r0, #2
	mov r1, #0x12
	mov r2, #0x20 
	mov r3, #0xc
	ldr r4, off_802B200 // =byte_802A840 
	ldr r6, dword_802B208 // =0x40000000 
	ldr r7, dword_802B204 // =0x10002 
	bl sub_802B20C
locret_802B1FE:
	pop {r4-r7,pc}
off_802B200: .word byte_802A840
dword_802B204: .word 0x10002
dword_802B208: .word 0x40000000
	thumb_func_end sub_802B1E4

	thumb_local_start
sub_802B20C:
	push {r4-r7,lr}
	sub sp, sp, #0x1c
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r6, [sp,#0x10]
	lsl r0, r0, #0x10
	ldr r1, [sp]
	ldr r3, [sp,#4]
	tst r3, r3
	bne loc_802B228
	mov r2, #0
	b loc_802B22A
loc_802B228:
	ldrh r2, [r5,r3]
loc_802B22A:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	mov r1, r7
	ldr r2, [sp,#8]
	ldrb r2, [r5,r2]
	str r2, [sp,#0x14]
	mov r3, #0xf
	and r2, r3
	ldr r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	bl sub_811FAF4
	ldr r1, [sp,#0x14]
	lsr r1, r1, #4
	sub r1, #1
	bne loc_802B258
	ldr r1, off_802B26C // =dword_8129180 
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_802B258:
	ldr r2, [sp,#8]
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r3
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #0x1c
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802B26C: .word dword_8129180
	thumb_func_end sub_802B20C

	thumb_local_start
sub_802B270:
	push {r4-r7,lr}
	ldr r0, dword_802B28C // =0x62 
	mov r1, #0xc
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_802B290 // =0x10002 
	ldrh r2, [r5,#0x1e]
	ldrh r3, [r5,#0x24]
	mov r4, #7
	ldr r6, dword_802B294 // =0xb370 
	mov r7, #0x48 
	bl sub_811FA98
	pop {r4-r7,pc}
dword_802B28C: .word 0x62
dword_802B290: .word 0x10002
dword_802B294: .word 0xB370
	thumb_func_end sub_802B270

	thumb_local_start
sub_802B298:
	ldr r0, off_802B29C // =dword_20364C0 
	mov pc, lr
off_802B29C: .word dword_20364C0
	thumb_func_end sub_802B298

	thumb_func_start sub_802B2A0
sub_802B2A0:
	push {r4-r7,lr}
	mov r7, r0
	ldr r1, dword_802B350 // =0x1b 
	lsl r1, r1, #1
	// byte
	mov r2, #0xff
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	mov r6, #0
	mov r4, #0
loc_802B2B2:
	ldr r0, off_802B2DC // =byte_802B2E0
	lsl r1, r4, #2
	ldr r0, [r0,r1]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_802B2CE
	ldr r1, dword_802B354 // =0x197 
	ldr r0, off_802B2DC // =byte_802B2E0
	lsl r2, r4, #2
	ldr r0, [r0,r2]
	sub r0, r0, r1
	add r0, #1
	strh r0, [r7,r6]
loc_802B2CE:
	add r6, #2
	add r4, #1
	ldr r0, dword_802B350 // =0x1b 
	cmp r4, r0
	blt loc_802B2B2
	lsr r0, r6, #1
	pop {r4-r7,pc}
off_802B2DC: .word byte_802B2E0
byte_802B2E0: .byte 0x97, 0x1, 0x0, 0x0, 0x98, 0x1, 0x0, 0x0, 0x99, 0x1, 0x0, 0x0, 0x9A
	.byte 0x1, 0x0, 0x0, 0x9B, 0x1, 0x0, 0x0, 0x9C, 0x1, 0x0, 0x0, 0x9D, 0x1
	.byte 0x0, 0x0, 0x9E, 0x1, 0x0, 0x0, 0x9F, 0x1, 0x0, 0x0, 0xA1, 0x1, 0x0
	.byte 0x0, 0xA2, 0x1, 0x0, 0x0, 0xA4, 0x1, 0x0, 0x0, 0xA5, 0x1, 0x0, 0x0
	.byte 0xA6, 0x1, 0x0, 0x0, 0xA7, 0x1, 0x0, 0x0, 0xA8, 0x1, 0x0, 0x0, 0xA9
	.byte 0x1, 0x0, 0x0, 0xAA, 0x1, 0x0, 0x0, 0xAB, 0x1, 0x0, 0x0, 0xAC, 0x1
	.byte 0x0, 0x0, 0xAD, 0x1, 0x0, 0x0, 0xAE, 0x1, 0x0, 0x0, 0xAF, 0x1, 0x0
	.byte 0x0, 0xB0, 0x1, 0x0, 0x0, 0xB1, 0x1, 0x0, 0x0, 0xB2, 0x1, 0x0, 0x0
	.byte 0xB3, 0x1, 0x0, 0x0, 0xB4, 0x1, 0x0, 0x0
dword_802B350: .word 0x1B
dword_802B354: .word 0x197
	thumb_func_end sub_802B2A0

	thumb_func_start sub_802B358
sub_802B358:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp,#4]
	mov r4, r0
	mov r6, #0
	str r6, [sp]
loc_802B364:
	mov r7, #8
	ldrh r0, [r5,#0x24]
	add r6, r6, r0
	ldrb r1, [r5,#0x10]
	cmp r1, #0xff
	beq loc_802B380
	cmp r6, r1
	beq loc_802B37E
	ldrb r1, [r5,#0x11]
	cmp r1, #0xff
	beq loc_802B380
	cmp r6, r1
	bne loc_802B380
loc_802B37E:
	mov r7, #0xc
loc_802B380:
	lsl r6, r6, #1
	ldrh r0, [r4,r6]
	ldr r1, dword_802B3E0 // =0xffff 
	cmp r0, r1
	bne loc_802B392
	mov r1, #0x29 
	ldr r0, off_802B3DC // =byte_8736D74
	mov r7, #0xc
	b loc_802B3AC
loc_802B392:
	lsl r2, r0, #3
	add r2, #4
	ldr r1, off_802B3D8 // =byte_802B5FC
	ldrh r1, [r1,r2]
	ldrb r2, [r5,#0x12]
	add r1, r1, r2
	cmp r1, #0x32 
	ble loc_802B3A4
	mov r7, #0xc
loc_802B3A4:
	lsl r0, r0, #1
	ldr r1, off_802B3F4 // =byte_802B3F8
	ldrh r1, [r1,r0]
	ldr r0, off_802B3F0 // =dword_86F047C 
loc_802B3AC:
	ldr r6, [sp]
	mov r2, #0x28 
	lsl r2, r2, #4
	mul r6, r2
	ldr r2, [sp,#4]
	push {r4-r7}
	add r2, r2, r6
	ldr r3, dword_802B3E8 // =0x6008e00 
	add r3, r3, r6
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_802B3E4 // =dword_86B7AE0 
	bl renderTextGfx_8045F8C
	pop {r4-r7}
	ldr r6, [sp]
	add r6, #1
	str r6, [sp]
	cmp r6, #5
	blt loc_802B364
	add sp, sp, #8
	pop {r4-r7,pc}
off_802B3D8: .word byte_802B5FC
off_802B3DC: .word byte_8736D74
dword_802B3E0: .word 0xFFFF
off_802B3E4: .word dword_86B7AE0
dword_802B3E8: .word 0x6008E00
	.word decomp_2032000
off_802B3F0: .word dword_86F047C
off_802B3F4: .word byte_802B3F8
byte_802B3F8: .byte 0x0, 0x0, 0x1, 0x0, 0x7, 0x0, 0xD, 0x0, 0x13, 0x0, 0x19, 0x0, 0x1F, 0x0
	.byte 0x25, 0x0, 0x2B, 0x0, 0x31, 0x0, 0x37, 0x0, 0x3D, 0x0, 0x43, 0x0, 0x49, 0x0
	.byte 0x4F, 0x0, 0x55, 0x0, 0x5B, 0x0, 0x61, 0x0, 0x67, 0x0, 0x6D, 0x0, 0x73, 0x0
	.byte 0x79, 0x0, 0x7F, 0x0, 0x85, 0x0, 0x8B, 0x0, 0x91, 0x0, 0x97, 0x0, 0x9D, 0x0
	.byte 0xA3, 0x0, 0xA9, 0x0, 0xAF, 0x0, 0x1F, 0x0
	thumb_func_end sub_802B358

	thumb_func_start sub_802B438
sub_802B438:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	str r0, [sp,#0x10]
	str r1, [sp,#0x14]
	mov r0, #0
	str r0, [sp,#4]
	str r0, [sp]
	str r0, [sp,#0xc]
loc_802B448:
	ldr r4, [sp,#0x14]
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r1, r1, r0
	lsl r1, r1, #1
	ldrh r0, [r4,r1]
	ldr r1, dword_802B4D0 // =0xffff 
	cmp r0, r1
	bne loc_802B45E
	mov r0, #0
	b loc_802B46E
loc_802B45E:
	lsl r1, r0, #3
	ldr r2, [sp,#4]
	lsl r2, r2, #1
	add r1, r1, r2
	ldr r4, off_802B4C8 // =byte_802B5FC
	ldrh r0, [r4,r1]
	bl sub_8000C00
loc_802B46E:
	mov r7, r0
	mov r6, #0x10
loc_802B472:
	mov r1, #0x20 
	sub r1, r1, r6
	mov r2, r7
	lsl r2, r1
	lsr r2, r1
	sub r6, #4
	lsr r2, r6
	tst r2, r2
	bne loc_802B492
	ldr r0, [sp,#0xc]
	tst r0, r0
	bne loc_802B492
	tst r6, r6
	beq loc_802B492
	mov r2, #0xa
	b loc_802B496
loc_802B492:
	mov r0, #1
	str r0, [sp,#0xc]
loc_802B496:
	mov r0, #0x20 
	mul r0, r2
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	ldr r1, dword_802B4CC // =0x6009a80 
	ldr r3, [sp]
	mov r2, #0x20 
	mul r3, r2
	add r1, r1, r3
	bl sub_8000AC4
	ldr r0, [sp]
	add r0, #1
	str r0, [sp]
	cmp r6, #0
	bgt loc_802B472
	mov r0, #0
	str r0, [sp,#0xc]
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
	cmp r0, #3
	blt loc_802B448
	add sp, sp, #0x18
	pop {r4-r7,pc}
off_802B4C8: .word byte_802B5FC
dword_802B4CC: .word 0x6009A80
dword_802B4D0: .word 0xFFFF
	thumb_func_end sub_802B438

	thumb_func_start sub_802B4D4
sub_802B4D4:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r7, r0
	add r7, #4
	add r7, #0x3c 
	mov r1, #0x1e
	add r4, r7, r1
	mov r0, r2
	ldr r1, off_802B518 // =0xc80 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	mov r5, #5
loc_802B4EE:
	mov r6, #0
	ldr r3, [sp]
	push {r4,r7}
loc_802B4F4:
	strh r3, [r7]
	add r3, #1
	strh r3, [r4]
	add r3, #1
	add r7, #2
	add r4, #2
	add r6, #1
	cmp r6, #0xa
	blt loc_802B4F4
	pop {r4,r7}
	str r3, [sp]
	add r7, #0x3c 
	add r4, #0x3c 
	sub r5, #1
	bgt loc_802B4EE
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802B518: .word 0xC80
	thumb_func_end sub_802B4D4

	thumb_func_start sub_802B51C
sub_802B51C:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r7, r0
	add r7, #0xa
	ldr r3, off_802B55C // =0x1a4 
	add r7, r7, r3
	mov r1, #0x1e
	add r4, r7, r1
	mov r5, #3
loc_802B530:
	mov r6, #0
	ldr r3, [sp]
	push {r4,r7}
loc_802B536:
	strh r3, [r7]
	add r3, #1
	add r7, #2
	add r6, #1
	cmp r6, #4
	blt loc_802B536
	pop {r4,r7}
	str r3, [sp]
	add r7, #0x3c 
	sub r5, #1
	cmp r5, #1
	bgt loc_802B530
	sub r7, #2
	tst r5, r5
	bne loc_802B530
	add sp, sp, #4
	pop {r4-r7,pc}
	.word 0x180
off_802B55C: .word 0x1A4
	thumb_func_end sub_802B51C

	thumb_local_start
sub_802B560:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #2
	tst r0, r1
	beq locret_802B5A2
	mov r1, #0x11
	ldrb r0, [r5,r1]
	cmp r0, #0xff
	bne loc_802B57E
	mov r1, #0x10
	ldrb r0, [r5,r1]
	cmp r0, #0xff
	beq locret_802B5A2
loc_802B57E:
	push {r1}
	ldrb r0, [r5,r1]
	bl sub_802B5B0
	pop {r1}
	mov r0, #0xff
	strb r0, [r5,r1]
	ldr r0, off_802B5A4 // =unk_2031000 
	ldr r1, off_802B5A8 // =decomp_2032000 
	bl sub_802B358
	ldr r0, off_802B5AC // =unk_2030E60 
	ldr r1, off_802B5A4 // =unk_2031000 
	bl sub_802B438
	mov r0, #0x83
	bl sound_play // () -> void
locret_802B5A2:
	pop {pc}
off_802B5A4: .word unk_2031000
off_802B5A8: .word decomp_2032000
off_802B5AC: .word unk_2030E60
	thumb_func_end sub_802B560

	thumb_local_start
sub_802B5B0:
	lsl r0, r0, #1
	ldr r1, off_802B5C8 // =unk_2031000 
	ldrh r0, [r1,r0]
	lsl r0, r0, #3
	add r0, #4
	ldr r1, off_802B5CC // =byte_802B5FC
	ldrh r0, [r1,r0]
	ldrb r1, [r5,#0x12]
	sub r1, r1, r0
	strb r1, [r5,#0x12]
	mov pc, lr
	.balign 4, 0x00
off_802B5C8: .word unk_2031000
off_802B5CC: .word byte_802B5FC
	thumb_func_end sub_802B5B0

	thumb_local_start
sub_802B5D0:
	push {lr}
	mov r0, #0x66 
	bl sound_play // () -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_802B5D0

	thumb_local_start
sub_802B5DC:
	push {lr}
	mov r1, r0
	ldr r0, off_802B5E8 // =eTextScript2030860
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {pc}
off_802B5E8: .word eTextScript2030860
	thumb_func_end sub_802B5DC

	thumb_local_start
RunTextScriptBattleRunDialog:
	push {lr}
	mov r1, r0
	ldr r0, off_802B5F8 // =TextScriptBattleRunDialog
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {pc}
off_802B5F8: .word TextScriptBattleRunDialog
byte_802B5FC:
	// this looks like text
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x28, 0x0, 0xA, 0x0, 0xA, 0x0, 0x0
	.byte 0x0, 0x46, 0x0, 0x14, 0x0, 0xA, 0x0, 0x0, 0x0, 0x82, 0x0, 0x28, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0x5A, 0x0, 0x1E, 0x0, 0x14, 0x0, 0x0, 0x0, 0x64, 0x0, 0x32, 0x0, 0x1E
	.byte 0x0, 0x0, 0x0, 0x50, 0x0, 0x14, 0x0, 0xA, 0x0, 0x0, 0x0, 0x82, 0x0, 0x46, 0x0
	.byte 0x1E, 0x0, 0x0, 0x0, 0x3C, 0x0, 0x14, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x82, 0x0, 0x0
	.byte 0x0, 0x1E, 0x0, 0x0, 0x0, 0x50, 0x0, 0x0, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x50, 0x0
	.byte 0x14, 0x0, 0x14, 0x0, 0x0, 0x0, 0x96, 0x0, 0x32, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x64, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x50, 0x0, 0xA, 0x0, 0x14, 0x0, 0x0, 0x0
	.byte 0x3C, 0x0, 0x14, 0x0, 0x14, 0x0, 0x0, 0x0, 0xC8, 0x0, 0x64, 0x0, 0x28, 0x0, 0x0
	.byte 0x0, 0x64, 0x0, 0x1E, 0x0, 0x28, 0x0, 0x0, 0x0, 0x78, 0x0, 0x28, 0x0, 0x1E, 0x0
	.byte 0x0, 0x0, 0x64, 0x0, 0x1E, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x8C, 0x0, 0x1E, 0x0, 0x14
	.byte 0x0, 0x0, 0x0, 0x64, 0x0, 0x14, 0x0, 0xA, 0x0, 0x0, 0x0, 0x82, 0x0, 0x5, 0x0
	.byte 0x14, 0x0, 0x0, 0x0, 0x3C, 0x0, 0xA, 0x0, 0x14, 0x0, 0x0, 0x0, 0x8C, 0x0, 0x14
	.byte 0x0, 0x1E, 0x0, 0x0, 0x0, 0xB4, 0x0, 0x64, 0x0, 0x28, 0x0, 0x0, 0x0, 0x82, 0x0
	.byte 0x3C, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x64, 0x0, 0x14, 0x0, 0x14, 0x0, 0x0, 0x0, 0x78
	.byte 0x0, 0x32, 0x0, 0x28, 0x0, 0x0, 0x0, 0x64, 0x0, 0x28, 0x0, 0x1E, 0x0, 0x0, 0x0
	thumb_func_end RunTextScriptBattleRunDialog

	thumb_func_start sub_802B6EC
sub_802B6EC:
	push {r4-r7,lr}
	mov r6, #1
	b loc_802B6F6
	thumb_func_end sub_802B6EC

	thumb_local_start
sub_802B6F2:
	push {r4-r7,lr}
	mov r6, #0
loc_802B6F6:
	push {r0-r3}
	// memBlock
	ldr r0, off_802BA44 // =word_2036660 
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r7, #0
	cmp r6, #0
	beq loc_802B708
	mov r7, #0x1c
loc_802B708:
	lsl r7, r7, #9
	pop {r0-r3}
	ldr r5, off_802BA44 // =word_2036660 
	strh r0, [r5,#0x4] // (word_2036664 - 0x2036660)
	strb r1, [r5,#0x6] // (byte_2036666 - 0x2036660)
	strb r2, [r5,#0x7] // (byte_2036667 - 0x2036660)
	mov r6, r5
	add r6, #0x14
	mov r1, #0
	sub r1, #1
	mov r4, #0xff
	mov r2, #0
loc_802B720:
	add r4, #1
	ldrsh r0, [r3,r2]
	orr r0, r7
	strh r0, [r6]
	add r3, #2
	add r6, #2
	cmp r0, r1
	bne loc_802B720
	strb r4, [r5,#0x8] // (byte_2036668 - 0x2036660)
	pop {r4-r7,pc}
	thumb_func_end sub_802B6F2

	thumb_func_start sub_802B734
sub_802B734:
	push {r5,lr}
	ldr r5, off_802BA44 // =word_2036660 
	ldr r0, [r5,#0xc] // (dword_203666C - 0x2036660)
	add r0, #1
	str r0, [r5,#0xc] // (dword_203666C - 0x2036660)
	ldr r1, off_802B74C // =off_802B750 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r5,pc}
	.balign 4, 0x00
off_802B74C: .word off_802B750
off_802B750: .word sub_802B75C+1
	.word sub_802B76C+1
	.word sub_802B766+1
	thumb_func_end sub_802B734

	thumb_local_start
sub_802B75C:
	push {lr}
	mov r0, #4
	str r0, [r5]
	mov r0, #0
	pop {pc}
	thumb_func_end sub_802B75C

	thumb_local_start
sub_802B766:
	push {lr}
	mov r0, #1
	pop {pc}
	thumb_func_end sub_802B766

	thumb_local_start
sub_802B76C:
	push {r5,lr}
	ldr r5, off_802BA44 // =word_2036660 
	ldr r1, off_802B780 // =off_802B784 
	ldrb r0, [r5,#0x1] // (word_2036660+1 - 0x2036660)
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	mov r0, #0
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
	thumb_func_end sub_802B76C

	thumb_local_start
sub_802B7A0:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_802B7BC
	mov r0, #1
	strb r0, [r5,#2]
	mov r0, #0
	bl sub_802B9FE
	mov r0, #0x14
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_802B7DE
loc_802B7BC:
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_802B7DE
	mov r0, #0x24 
	ldrb r1, [r5,#7]
	cmp r1, #0
	bne loc_802B7CE
	mov r0, #0x34 
loc_802B7CE:
	bl loc_801E792
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0
	str r0, [r5,#0x10]
locret_802B7DE:
	pop {pc}
	thumb_func_end sub_802B7A0

	thumb_local_start
sub_802B7E0:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #0
	bne loc_802B7F4
	bl sub_801E754
	cmp r0, #2
	bne locret_802B80A
	mov r0, #1
	strb r0, [r5,#2]
loc_802B7F4:
	ldr r0, [r5,#0x10]
	add r0, #1
	cmp r0, #0x14
	blt loc_802B808
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0
	str r0, [r5,#0xc]
loc_802B808:
	str r0, [r5,#0x10]
locret_802B80A:
	pop {pc}
	thumb_func_end sub_802B7E0

	thumb_local_start
sub_802B80C:
	push {lr}
	bl sub_802B9E4
	ldr r0, [r5,#0x10]
	add r1, r0, #1
	str r1, [r5,#0x10]
	mov r1, #7
	tst r0, r1
	bne locret_802B8AE
	mov r3, r0
	lsr r0, r0, #2
	add r0, #0x14
	ldrh r0, [r5,r0]
	push {r0-r7}
	bl sub_8027D10
	ldr r2, off_802B990 // =0x48 
	mul r2, r3
	ldr r3, dword_802B9A4 // =0x6009560 
	add r3, r3, r2
	ldr r2, off_802B9A0 // =byte_203C4E0 
	mov r4, #9
	mov r5, #1
	ldr r6, off_802B9A8 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0-r7}
	push {r3-r7}
	lsl r2, r0, #0x17
	lsr r2, r2, #0x17
	ldr r1, off_802B99C // =0x160 
	cmp r2, r1
	bge loc_802B86A
	lsr r1, r0, #9
	ldr r0, off_802B9AC // =byte_86F0300 
	ldr r2, off_802B990 // =0x48 
	mul r2, r3
	ldr r3, dword_802B9B4 // =0x6009760 
	add r3, r3, r2
	ldr r2, off_802B9B0 // =byte_203C6E0 
	mov r4, #1
	mov r5, #1
	ldr r6, off_802B9A8 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
loc_802B86A:
	pop {r3-r7}
	ldr r0, [r5,#0x10]
	lsr r0, r0, #3
	ldrb r1, [r5,#6]
	cmp r0, r1
	blt loc_802B888
	sub r0, r0, r1
	ldrb r1, [r5,#7]
	cmp r0, r1
	bge loc_802B888
	mov r0, #0x91
	bl sound_play // () -> void
	ldr r0, dword_802B998 // =0xa0ab 
	b loc_802B88A
loc_802B888:
	ldr r0, dword_802B994 // =0xd0ab 
loc_802B88A:
	mov r2, #0x12
	lsr r3, r3, #3
	mul r2, r3
	add r0, r0, r2
	ldr r1, [r5,#0x10]
	lsr r1, r1, #3
	bl sub_802B8B0
	ldr r0, [r5,#0x10]
	lsr r0, r0, #3
	add r0, #1
	ldrb r1, [r5,#8]
	cmp r0, r1
	blt locret_802B8AE
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0
	str r0, [r5,#0x10]
locret_802B8AE:
	pop {pc}
	thumb_func_end sub_802B80C

	thumb_local_start
sub_802B8B0:
	push {r4,r5,lr}
	sub sp, sp, #0x24
	mov r2, sp
	mov r3, #9
loc_802B8B8:
	strh r0, [r2]
	add r0, #1
	strh r0, [r2,#0x12]
	add r0, #1
	add r2, #2
	sub r3, #1
	bne loc_802B8B8
	mov r3, sp
	mov r0, #3
	mul r1, r0
	add r1, #5
	bl sub_802BA18
	mov r2, #3
	mov r4, #9
	mov r5, #2
	bl sub_802BA24
	add sp, sp, #0x24
	pop {r4,r5,pc}
	thumb_func_end sub_802B8B0

	thumb_local_start
sub_802B8E0:
	push {lr}
	bl sub_802B9E4
	ldr r0, [r5,#0x10]
	add r0, #1
	str r0, [r5,#0x10]
	cmp r0, #0x18
	blt locret_802B91E
	push {r4-r7}
	ldrb r1, [r5,#6]
	mov r0, #3
	mul r1, r0
	add r1, #5
	ldrb r5, [r5,#7]
	mul r5, r0
	sub r5, #1
	ldr r0, off_802BA44 // =word_2036660 
	bl sub_802BA18
	mov r2, #3
	mov r3, #0
	mov r4, #9
	bl sub_802BA34
	pop {r4-r7}
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0
	str r0, [r5,#0x10]
locret_802B91E:
	pop {pc}
	thumb_func_end sub_802B8E0

	thumb_local_start
sub_802B920:
	push {lr}
	bl sub_802B9E4
	ldr r0, [r5,#0x10]
	add r0, #1
	str r0, [r5,#0x10]
	cmp r0, #0x60 
	bge loc_802B96E
	cmp r0, #0x10
	bne locret_802B98C
	ldr r0, dword_802B998 // =0xa0ab 
	mov r2, #0x12
	ldrb r1, [r5,#6]
	mul r2, r1
	add r0, r0, r2
	bl sub_802B8B0
	push {r4-r7}
	ldrh r0, [r5,#4]
	bl sub_8027D10
	ldr r2, off_802B990 // =0x48 
	ldrb r3, [r5,#6]
	lsl r3, r3, #3
	mul r2, r3
	ldr r3, dword_802B9A4 // =0x6009560 
	add r3, r3, r2
	ldr r2, off_802B9A0 // =byte_203C4E0 
	mov r4, #9
	mov r5, #1
	ldr r6, off_802B9A8 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7}
	mov r0, #0x92
	bl sound_play // () -> void
	b locret_802B98C
loc_802B96E:
	mov r0, #0x14
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	bl sub_801E780
	bl sub_802BA18
	mov r1, #5
	mov r2, #3
	mov r3, #0
	mov r4, #9
	mov r5, #0xe
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
	thumb_func_end sub_802B920

	thumb_local_start
sub_802B9B8:
	push {lr}
	bl sub_801E754
	cmp r0, #0
	bne locret_802B9D2
	mov r0, #0x18
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	mov r0, #0x10
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_802B9D2:
	pop {pc}
	thumb_func_end sub_802B9B8

	thumb_local_start
sub_802B9D4:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	cmp r0, #0
	bne locret_802B9E2
	mov r0, #8
	str r0, [r5]
locret_802B9E2:
	pop {pc}
	thumb_func_end sub_802B9D4

	thumb_local_start
sub_802B9E4:
	push {r0,r1,lr}
	ldr r0, [r5,#0xc]
	mov r1, #3
	tst r0, r1
	bne locret_802B9FC
	lsr r0, r0, #4
	and r0, r1
	cmp r0, #3
	bne loc_802B9F8
	mov r0, #1
loc_802B9F8:
	bl sub_802B9FE
locret_802B9FC:
	pop {r0,r1,pc}
	thumb_func_end sub_802B9E4

	thumb_local_start
sub_802B9FE:
	push {r1-r3,lr}
	lsl r0, r0, #3
	ldr r1, off_802BA10 // =byte_802BA48 
	add r0, r0, r1
	ldr r1, off_802BA14 // =unk_3001AA0 
	mov r2, #8
	bl sub_8000AC8
	pop {r1-r3,pc}
off_802BA10: .word byte_802BA48
off_802BA14: .word unk_3001AA0
	thumb_func_end sub_802B9FE

	thumb_local_start
sub_802BA18:
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldrh r0, [r0,#0x18]
	asr r0, r0, #3
	add r0, #1
	mov pc, lr
	thumb_func_end sub_802BA18

	thumb_local_start
sub_802BA24:
	push {r6,lr}
	ldr r6, off_802BA44 // =word_2036660 
	ldrb r6, [r6,#0x7] // (byte_2036667 - 0x2036660)
	cmp r6, #0
	beq locret_802BA32
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_802BA32:
	pop {r6,pc}
	thumb_func_end sub_802BA24

	thumb_local_start
sub_802BA34:
	push {r6,lr}
	ldr r6, off_802BA44 // =word_2036660 
	ldrb r6, [r6,#0x7] // (byte_2036667 - 0x2036660)
	cmp r6, #0
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
	thumb_func_end sub_802BA34

	thumb_func_start sub_802BD60
sub_802BD60:
	push {r5,lr}
	ldr r5, off_802BDAC // =dword_20364C0 
	mov r0, #1
	strb r0, [r5,#0x5] // (dword_20364C4+1 - 0x20364c0)
	bl sub_802C8EA
	str r0, [r5,#0x18] // (dword_20364D8 - 0x20364c0)
	ldrb r0, [r5,#0x6] // (dword_20364C4+2 - 0x20364c0)
	strb r0, [r5,#0x7] // (dword_20364C4+3 - 0x20364c0)
	ldr r1, off_802BD9C // =off_802BDA0 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	push {r5}
	mov r1, #0x6 // (dword_20364C4+2 - 0x20364c0)
	// j
	ldrsb r0, [r5,r1]
	// i
	mov r1, #2
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_802BDB0 // =unk_2034B30 
	mov r4, #0x18
	mov r5, #0x12
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	bl sub_802C460
	ldrb r0, [r5,#5]
	pop {r5,pc}
	.balign 4, 0x00
off_802BD9C: .word off_802BDA0
off_802BDA0: .word sub_802BDB4+1
	.word sub_802BDC0+1
	.word sub_802C348+1
off_802BDAC: .word dword_20364C0
off_802BDB0: .word unk_2034B30
	thumb_func_end sub_802BD60

	thumb_local_start
sub_802BDB4:
	push {lr}
	bl sub_802C97E
	mov r0, #4
	str r0, [r5]
	pop {pc}
	thumb_func_end sub_802BDB4

	thumb_local_start
sub_802BDC0:
	push {lr}
	ldr r1, off_802BDD8 // =off_802BDDC 
	ldrb r0, [r5,#1]
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_802BDC0

	thumb_local_start
sub_802BDF0:
	push {lr}
	ldr r1, off_802BE00 // =off_802BE04 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_802BE00: .word off_802BE04
off_802BE04: .word sub_802BE0C+1
	.word sub_802BE36+1
	thumb_func_end sub_802BDF0

	thumb_local_start
sub_802BE0C:
	push {r4,r5,lr}
	push {r5}
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #6
	mov r5, #2
	bl sub_80018D0
	pop {r5}
	mov r3, r10
	ldr r3, [r3,#oToolkit_RenderInfoPtr]
	mov r0, #0
	strh r0, [r3,#0x18]
	mov r1, #0
	bl sub_801E0A0
	mov r0, #4
	strh r0, [r5,#2]
	pop {r4,r5,pc}
	thumb_func_end sub_802BE0C

	thumb_local_start
sub_802BE36:
	push {lr}
	mov r1, #6
	ldrsb r0, [r5,r1]
	add r0, #2
	strb r0, [r5,#6]
	cmp r0, #3
	blt loc_802BE50
	mov r0, #3
	strb r0, [r5,#6]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
loc_802BE50:
	ldrb r0, [r5,#4]
	cmp r0, #2
	beq locret_802BE66
	mov r1, #0
	ldr r0, [r5,#0x1c]
	ldrb r1, [r5,#0xe]
	bl sub_802C4E8
	ldrb r0, [r5,#8]
	bl sub_802C6EC
locret_802BE66:
	pop {pc}
pool_802BE68: .word byte_802BE6C
byte_802BE6C: .byte 0x0, 0x5, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x0, 0x36, 0x0, 0x0, 0x0, 0x30
	.byte 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x50, 0x0, 0x0, 0x0, 0x30, 0x0, 0x0
	.byte 0x0, 0x45, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0
	thumb_func_end sub_802BE36

	thumb_local_start
sub_802BE90:
	push {lr}
	ldr r1, off_802BEA0 // =off_802BEA4 
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_802BEA0: .word off_802BEA4
off_802BEA4: .word sub_802BEB4+1
	.word sub_802BF4C+1
	.word sub_802C170+1
	.word sub_802C1D4+1
	thumb_func_end sub_802BE90

	thumb_local_start
sub_802BEB4:
	push {lr}
	ldr r1, off_802BEC4 // =off_802BEC8 
	ldrb r0, [r5,#3]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802BEC4: .word off_802BEC8
off_802BEC8: .word sub_802BED4+1
	.word sub_802BEFC+1
	.word sub_802BF0C+1
	thumb_func_end sub_802BEB4

	thumb_local_start
sub_802BED4:
	push {lr}
	bl sub_802C8D4
	tst r0, r0
	bne loc_802BEE8
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b locret_802BEFA
loc_802BEE8:
	strh r0, [r5,#0x10]
	mov r0, #1
	ldrb r1, [r5,#0xc]
	tst r1, r1
	bne loc_802BEF4
	mov r0, #0x1e
loc_802BEF4:
	strb r0, [r5,#0xb]
	mov r0, #4
	strb r0, [r5,#3]
locret_802BEFA:
	pop {pc}
	thumb_func_end sub_802BED4

	thumb_local_start
sub_802BEFC:
	push {lr}
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	bne locret_802BF0A
	mov r0, #8
	strb r0, [r5,#3]
locret_802BF0A:
	pop {pc}
	thumb_func_end sub_802BEFC

	thumb_local_start
sub_802BF0C:
	push {lr}
	ldr r7, off_802BF48 // =dword_2036820 
	ldrh r0, [r7,#0x4] // (dword_2036824 - 0x2036820)
	add r7, #8
	ldrh r1, [r7,#0x4] // (dword_203682C - 0x2036828)
	orr r0, r1
	mov r1, #1
	tst r0, r1
	beq loc_802BF34
	ldrb r0, [r5,#0xc]
	cmp r0, #1
	ble loc_802BF28
	mov r0, #0xc
	b loc_802BF2A
loc_802BF28:
	mov r0, #4
loc_802BF2A:
	strh r0, [r5,#2]
	mov r0, #0
	bl sub_802C810
	b locret_802BF44
loc_802BF34:
	mov r7, r10
	ldr r7, [r7,#oToolkit_CurFramePtr]
	ldrh r0, [r7]
	mov r1, #8
	and r0, r1
	lsr r0, r0, #3
	bl sub_802C810
locret_802BF44:
	pop {pc}
	.balign 4, 0x00
off_802BF48: .word dword_2036820
	thumb_func_end sub_802BF0C

	thumb_local_start
sub_802BF4C:
	push {lr}
	ldr r1, off_802BF5C // =off_802BF60 
	ldrb r0, [r5,#3]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802BF5C: .word off_802BF60
off_802BF60: .word sub_802BF6C+1
	.word sub_802C044+1
	.word sub_802C0A4+1
	thumb_func_end sub_802BF4C

	thumb_local_start
sub_802BF6C:
	push {lr}
	mov r0, #0
	ldr r7, off_802C01C // =unk_2035320 
loc_802BF72:
	strb r0, [r7,r0]
	add r0, #1
	cmp r0, #0x2a 
	bmi loc_802BF72
	mov r0, r7
	mov r1, #0x2a 
	mov r2, #0x2a 
	bl sub_8000C72
	ldrh r0, [r5,#0x10]
	ldr r1, dword_802C040 // =0xffff 
	cmp r0, r1
	beq loc_802BFC0
	bl sub_802C54C
	tst r0, r0
	bne loc_802BFA2
	// idx
	mov r0, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r7, r0
	ldr r0, [r7,#0x24]
	ldr r1, [r7,#0x28]
	b loc_802BFE4
loc_802BFA2:
	cmp r0, #1
	bne loc_802BFAC
	ldr r0, off_802C014 // =dword_8732E54 
	ldr r1, off_802C018 // =dword_8733394 
	b loc_802BFE4
loc_802BFAC:
	cmp r0, #2
	bne loc_802BFC0
	tst r1, r1
	beq loc_802BFBA
	ldr r0, off_802C020 // =dword_87333B4 
	ldr r1, off_802C024 // =dword_87338F4 
	b loc_802BFE4
loc_802BFBA:
	ldr r0, off_802C028 // =dword_8733914 
	ldr r1, off_802C02C // =dword_8733E54 
	b loc_802BFE4
loc_802BFC0:
	cmp r0, #3
	bne loc_802BFE0
	mov r2, #0
	cmp r1, #1
	ble loc_802BFD8
	mov r2, #0x20 
	cmp r1, #2
	ble loc_802BFD8
	mov r2, #0x40 
	cmp r1, #3
	ble loc_802BFD8
	mov r2, #0x60 
loc_802BFD8:
	ldr r0, off_802C03C // =dword_87343F4 
	ldr r1, off_802C038 // =dword_8734934 
	add r1, r1, r2
	b loc_802BFE4
loc_802BFE0:
	ldr r0, off_802C030 // =dword_8733E74 
	ldr r1, off_802C034 // =dword_87343B4 
loc_802BFE4:
	push {r5}
	push {r1}
	ldr r1, dword_802C00C // =0x600bd00 
	mov r2, #0x2a 
	lsl r2, r2, #6
	bl sub_8000AC8
	pop {r1}
	mov r0, r1
	ldr r1, off_802C010 // =unk_3001AE0 
	mov r2, #0x20 
	bl sub_8000AC8
	pop {r5}
	mov r0, #0
	strb r0, [r5,#0xb]
	mov r0, #4
	strb r0, [r5,#3]
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
	thumb_func_end sub_802BF6C

	thumb_local_start
sub_802C044:
	push {lr}
	sub sp, sp, #0x74
	mov r6, sp
	add r0, r6, #4
	bl sub_802C588
	ldrb r0, [r5,#0xb]
	cmp r0, #0x2a 
	bmi loc_802C060
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #0x1e
	strb r0, [r5,#0xb]
	b loc_802C09A
loc_802C060:
	push {r0,r5}
	ldr r7, off_802C0A0 // =unk_2035320 
	ldrb r0, [r7,r0]
	lsl r1, r0, #1
	add r1, #4
	ldrh r1, [r6,r1]
	strh r1, [r6]
	mov r1, #7
	svc 6
	mov r2, r0
	mov r0, r1
	mov r1, r2
	add r0, #0xe
	add r1, #0xa
	mov r2, r6
	mov r3, #1
	mov r4, #1
	bl sub_802C4B6
	pop {r0,r5}
	add r0, #1
	strb r0, [r5,#0xb]
	mov r1, #3
	and r0, r1
	cmp r0, #3
	bne loc_802C09A
	mov r0, #0x7e 
	bl sound_play // () -> void
loc_802C09A:
	add sp, sp, #0x74
	pop {pc}
	.byte 0, 0
off_802C0A0: .word unk_2035320
	thumb_func_end sub_802C044

	thumb_local_start
sub_802C0A4:
	push {lr}
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	bne locret_802C160
	ldrh r0, [r5,#0x10]
	ldr r1, dword_802C164 // =0xffff 
	cmp r0, r1
	beq loc_802C15C
	bl sub_802C54C
	tst r0, r0
	bne loc_802C114
	// idx
	mov r0, r1
	mov r1, r2
	mov r2, #1
	push {r0,r1}
	ldrb r3, [r5,#4]
	cmp r3, #2
	beq loc_802C106
	push {r0-r2,r4,r6,r7}
	mov r4, r1
	ldr r1, dword_802C16C // =0x136 
	cmp r0, r1
	bgt loc_802C0E2
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldr r1, [r0]
	ldr r2, dword_802C168 // =0xffffffff 
	cmp r1, r2
	bne loc_802C0E6
loc_802C0E2:
	pop {r0-r2,r4,r6,r7}
	b loc_802C106
loc_802C0E6:
	ldrb r1, [r0]
	cmp r1, r4
	beq loc_802C0FE
	ldrb r1, [r0,#1]
	cmp r1, r4
	beq loc_802C0FE
	ldrb r1, [r0,#2]
	cmp r1, r4
	beq loc_802C0FE
	ldrb r1, [r0,#3]
	cmp r1, r4
	bne loc_802C0E2
loc_802C0FE:
	pop {r0-r2,r4,r6,r7}
	push {r0}
	pop {r0}
	b loc_802C106
loc_802C106:
	pop {r0,r1}
	bl sub_802C75C
	mov r0, #0x96
	bl sound_play // () -> void
	b loc_802C15C
loc_802C114:
	cmp r0, #1
	bne loc_802C12A
	mov r0, r1
	push {r0}
	pop {r0}
	bl sub_802C5B0
	mov r0, #0x95
	bl sound_play // () -> void
	b loc_802C15C
loc_802C12A:
	cmp r0, #2
	bne loc_802C148
	mov r0, r1
	bl sub_802C646
	mov r0, #0x95
	bl sound_play // () -> void
	mov r0, #0x1e
	strb r0, [r5,#0xb]
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	b locret_802C160
loc_802C148:
	cmp r0, #3
	bne loc_802C15C
	mov r0, r1
	push {r0}
	pop {r0}
	bl sub_802C5E6
	mov r0, #0x95
	bl sound_play // () -> void
loc_802C15C:
	mov r0, #0
	strh r0, [r5,#2]
locret_802C160:
	pop {pc}
	.balign 4, 0x00
dword_802C164: .word 0xFFFF
dword_802C168: .word 0xFFFFFFFF
dword_802C16C: .word 0x136
	thumb_func_end sub_802C0A4

	thumb_local_start
sub_802C170:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_802C1B8
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	bne locret_802C1CC
	ldrh r0, [r5,#0x10]
	bl sub_802C54C
	mov r0, r1
	push {r0,r5}
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	push {r0}
	bl sub_80103EC
	mov r5, r0
	pop {r0}
	tst r0, r0
	bne loc_802C1A2
	ldrh r0, [r5,#0x26]
	strh r0, [r5,#0x24]
	b loc_802C1A6
loc_802C1A2:
	bl object_addHP
loc_802C1A6:
	mov r0, #0x8a
	bl sound_play // () -> void
	ldrh r0, [r5,#0x24]
	strh r0, [r7,#0x34]
	pop {r0,r5}
	mov r0, #4
	strb r0, [r5,#3]
	b locret_802C1CC
loc_802C1B8:
	ldr r7, [r5,#0x18]
	ldrh r0, [r7,#4]
	add r7, #8
	ldrh r1, [r7,#4]
	orr r0, r1
	mov r1, #9
	tst r0, r1
	beq loc_802C1C8
loc_802C1C8:
	mov r0, #0
	strh r0, [r5,#2]
locret_802C1CC:
	pop {pc}
	.byte 0, 0
	.word eStruct2035280
	thumb_func_end sub_802C170

	thumb_local_start
sub_802C1D4:
	push {lr}
	ldr r1, off_802C1E4 // =off_802C1E8 
	ldrb r0, [r5,#3]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802C1E4: .word off_802C1E8
off_802C1E8: .word sub_802C1F0+1
	.word sub_802C218+1
	thumb_func_end sub_802C1D4

	thumb_local_start
sub_802C1F0:
	push {lr}
	mov r0, #0
	ldr r7, off_802C214 // =unk_2035320 
loc_802C1F6:
	strb r0, [r7,r0]
	add r0, #1
	cmp r0, #0x2a 
	bmi loc_802C1F6
	mov r0, r7
	mov r1, #0x2a 
	mov r2, #0x2a 
	bl sub_8000C72
	mov r0, #0
	strb r0, [r5,#0xb]
	mov r0, #4
	strb r0, [r5,#3]
	pop {pc}
	.balign 4, 0x00
off_802C214: .word unk_2035320
	thumb_func_end sub_802C1F0

	thumb_local_start
sub_802C218:
	push {lr}
	sub sp, sp, #0x74
	mov r6, sp
	add r0, r6, #4
	bl sub_802C59C
	b loc_802C22C
	ldrb r0, [r5,#0xb]
	cmp r0, #0x2a 
	bmi loc_802C244
loc_802C22C:
	mov r0, #0xe
	mov r1, #0xa
	add r2, r6, #4
	mov r3, #7
	mov r4, #6
	bl sub_802C4B6
	mov r0, #4
	strh r0, [r5,#2]
	mov r0, #0x1e
	strb r0, [r5,#0xb]
	b loc_802C278
loc_802C244:
	push {r0,r5}
	ldr r7, off_802C27C // =unk_2035320 
	ldrb r0, [r7,r0]
	lsl r1, r0, #1
	add r1, #4
	ldrh r1, [r6,r1]
	strh r1, [r6]
	mov r1, #7
	svc 6
	mov r2, r0
	mov r0, r1
	mov r1, r2
	add r0, #0xe
	add r1, #9
	mov r2, r6
	mov r3, #1
	mov r4, #1
	bl sub_802C4B6
	pop {r0,r5}
	add r0, #1
	strb r0, [r5,#0xb]
	mov r1, #3
	and r0, r1
	cmp r0, #3
	bne loc_802C278
loc_802C278:
	add sp, sp, #0x74
	pop {pc}
off_802C27C: .word unk_2035320
	thumb_func_end sub_802C218

	thumb_local_start
sub_802C280:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_802C2A2
	ldr r7, off_802C2CC // =dword_2036820 
	ldrh r0, [r7,#0x4] // (dword_2036824 - 0x2036820)
	add r7, #8
	ldrh r1, [r7,#0x4] // (dword_203682C - 0x2036828)
	orr r0, r1
	mov r1, #9
	tst r0, r1
	beq locret_802C2C8
	mov r0, #0x14
	strb r0, [r5,#0xb]
	mov r0, #4
	strb r0, [r5,#3]
	b locret_802C2C8
loc_802C2A2:
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	bne locret_802C2C8
	mov r0, #0
	mov r1, #0xa
	bl sub_800AB3A
	cmp r0, #0
	beq loc_802C2C0
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	b loc_802C4B2
loc_802C2C0:
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_802C2C8:
	pop {pc}
	.balign 4, 0x00
off_802C2CC: .word dword_2036820
	thumb_func_end sub_802C280

	thumb_local_start
sub_802C2D0:
	push {lr}
	ldrb r0, [r5,#2]
	cmp r0, #1
	beq loc_802C2FA
	mov r1, #6
	ldrsb r0, [r5,r1]
	add r0, #2
	strb r0, [r5,#6]
	cmp r0, #0x1e
	blt locret_802C320
	mov r0, #0
	mov r1, #0xa
	bl sub_800AB3A
	mov r1, r0
	ldr r0, off_802C324 // =TextScriptYouGotNewVirusData
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #1
	strb r0, [r5,#2]
	b locret_802C320
loc_802C2FA:
	push {r5}
	mov r0, #0x1d
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r4, #1
	mov r5, #0x12
	bl sub_80018D0
	pop {r5}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	cmp r0, #0
	bne locret_802C320
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_802C320:
	pop {pc}
	.balign 4, 0x00
off_802C324: .word TextScriptYouGotNewVirusData
	thumb_func_end sub_802C2D0

	thumb_local_start
sub_802C328:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_802C33C
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#3]
loc_802C33C:
	bl IsPaletteFadeActive // () -> zf
	beq locret_802C346
	mov r0, #8
	str r0, [r5]
locret_802C346:
	pop {pc}
	thumb_func_end sub_802C328

	thumb_local_start
sub_802C348:
	mov r0, #0
	strb r0, [r5,#5]
	mov pc, lr
	thumb_func_end sub_802C348

	thumb_func_start sub_802C34E
sub_802C34E:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#0xd]
	mov r2, #0xc
	mul r1, r2
	add r0, r0, r1
	mov r4, r0
	ldr r0, off_802C3F4 // =dword_20364C0 
	mov r7, r0
	mov r1, #0x20 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldrb r0, [r4]
	strb r0, [r7,#0x4] // (dword_20364C4 - 0x20364c0)
	ldrb r0, [r4,#1]
	strb r0, [r7,#0x8] // (byte_20364C8 - 0x20364c0)
	ldrb r0, [r4,#3]
	strb r0, [r7,#0xd] // (byte_20364CD - 0x20364c0)
	ldr r0, [r4,#4]
	str r0, [r7,#0x1c] // (dword_20364DC - 0x20364c0)
	ldr r0, [r4,#8]
	str r0, [r7,#0x14] // (unk_20364D4 - 0x20364c0)
	ldrh r0, [r7,#0x14] // (unk_20364D4 - 0x20364c0)
	bl eStruct200A008_setUnk04
	ldrh r0, [r7,#0x16] // (word_20364D6 - 0x20364c0)
	bl eStruct200A008_setUnk06
	mov r1, #0xe2
	strb r1, [r7,#0x6] // (dword_20364C4+2 - 0x20364c0)
	ldrb r0, [r7,#0x4] // (dword_20364C4 - 0x20364c0)
	ldr r6, off_802C430 // =off_802C434 
	lsl r1, r0, #2
	ldr r0, [r6,r1]
	ldr r1, off_802C440 // =unk_2034B30 
	mov r2, #0x36 
	lsl r2, r2, #4
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldrb r0, [r7,#0x4] // (dword_20364C4 - 0x20364c0)
	ldr r7, off_802C3F8 // =off_802C3FC 
	mov r1, #0xc
	mul r1, r0
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_8000AC8
	mov r0, #0
	mov r1, #0x60 
	mul r0, r1
	ldr r7, off_802C420 // =off_802C424 
	ldr r1, [r7]
	add r0, r0, r1
	ldr r1, [r7,#0x4] // (off_802C428 - 0x802c424)
	ldr r2, [r7,#0x8] // (off_802C42C - 0x802c424)
	bl sub_8000AC8
	ldr r7, off_802C444 // =off_802C448 
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (dword_802C44C - 0x802c448)
	ldr r2, [r7,#0x8] // (off_802C450 - 0x802c448)
	bl sub_8000AC8
	bl getPETNaviSelect // () -> u8
	bl sub_8028164
	ldr r1, dword_802C458 // =0x6014000 
	mov r2, #0x80
	bl sub_8000AC8
	bl getPETNaviSelect // () -> u8
	bl sub_8028172
	ldr r1, off_802C45C // =byte_30016B0 
	mov r2, #0x20 
	bl sub_8000AC8
	pop {r4-r7,pc}
off_802C3F4: .word dword_20364C0
off_802C3F8: .word off_802C3FC
off_802C3FC: .word byte_872F3F4
	.word 0x6008020
	.word 0xE60
	.word byte_8730254
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
dword_802C44C: .word 0x6009400
off_802C450: .word 0x5E0
	.word 0xFFFF
dword_802C458: .word 0x6014000
off_802C45C: .word byte_30016B0
	thumb_func_end sub_802C34E

	thumb_local_start
sub_802C460:
	push {r4,r5,lr}
	mov r0, #6
	ldrsb r0, [r5,r0]
	mov r1, #7
	ldrsb r1, [r5,r1]
	cmp r0, r1
	beq locret_802C48E
	bgt loc_802C476
	sub r4, r1, r0
	add r0, #0x18
	b loc_802C47A
loc_802C476:
	sub r4, r0, r1
	mov r0, r1
loc_802C47A:
	mov r1, #2
	mov r5, #0x12
	bl sub_802C490
	tst r2, r2
	beq locret_802C48E
	mov r2, #3
	mov r3, #0
	bl sub_80018D0
locret_802C48E:
	pop {r4,r5,pc}
	thumb_func_end sub_802C460

	thumb_local_start
sub_802C490:
	push {r6,lr}
	mov r6, #0
	add r2, r0, r4
	cmp r0, #0x1d
	bgt loc_802C4B2
	cmp r0, #0
	bge loc_802C4A0
	mov r0, #0
loc_802C4A0:
	cmp r2, #0
	blt loc_802C4B2
	cmp r2, #0x1d
	ble loc_802C4AA
	mov r2, #0x1d
loc_802C4AA:
	sub r4, r2, r0
	tst r4, r4
	beq loc_802C4B2
	mov r6, #1
loc_802C4B2:
	mov r2, r6
	pop {r6,pc}
	thumb_func_end sub_802C490

	thumb_local_start
sub_802C4B6:
	push {r5-r7,lr}
	ldr r7, off_802C4E4 // =unk_2034B30 
	mov r5, #0x18
	mul r1, r5
	add r0, r0, r1
	add r0, r0, r0
	add r7, r7, r0
	mov r5, r7
	mov r1, #0
loc_802C4C8:
	mov r0, #0
loc_802C4CA:
	ldrh r6, [r2]
	strh r6, [r7]
	add r7, #2
	add r2, #2
	add r0, #1
	cmp r0, r3
	bne loc_802C4CA
	add r5, #0x30 
	mov r7, r5
	add r1, #1
	cmp r1, r4
	bne loc_802C4C8
	pop {r5-r7,pc}
off_802C4E4: .word unk_2034B30
	thumb_func_end sub_802C4B6

	thumb_local_start
sub_802C4E8:
	push {r5,lr}
	sub sp, sp, #4
	mov r6, sp
	push {r1}
	bl sub_8000D84
	ldr r1, dword_802C548 // =0x95999 
	cmp r0, r1
	ble loc_802C4FC
	mov r0, r1
loc_802C4FC:
	pop {r1}
	add r1, #9
	lsl r1, r1, #0xc
	ldr r4, off_802C544 // =0xa0 
	orr r4, r1
	mov r3, #0
	ldr r7, off_802C540 // =byte_802C538
loc_802C50A:
	mov r1, #0xf
	and r1, r0
	add r1, r1, r1
	mov r2, r4
	add r2, r2, r1
	strh r2, [r6]
	add r2, #1
	strh r2, [r6,#2]
	push {r0,r3,r4,r6,r7}
	ldrb r0, [r7,r3]
	mov r1, #4
	mov r2, r6
	mov r3, #1
	mov r4, #2
	bl sub_802C4B6
	pop {r0,r3,r4,r6,r7}
	lsr r0, r0, #4
	add r3, #1
	cmp r3, #5
	bmi loc_802C50A
	add sp, sp, #4
	pop {r5,pc}
byte_802C538: .byte 0x14, 0x13, 0x11, 0x10, 0xE, 0x0, 0x0, 0x0
off_802C540: .word byte_802C538
off_802C544: .word 0xA0
dword_802C548: .word 0x95999
	thumb_func_end sub_802C4E8

	thumb_local_start
sub_802C54C:
	ldr r1, dword_802C584 // =0xffff 
	cmp r0, r1
	beq loc_802C580
	lsr r1, r0, #0xe
	bne loc_802C560
	lsr r2, r0, #9
	lsl r1, r0, #0x17
	lsr r1, r1, #0x17
	mov r0, #0
	b locret_802C582
loc_802C560:
	cmp r1, #1
	bne loc_802C56C
	lsl r1, r0, #0x12
	lsr r1, r1, #0x12
	mov r0, #1
	b locret_802C582
loc_802C56C:
	cmp r1, #2
	bne loc_802C578
	lsl r1, r0, #0x12
	lsr r1, r1, #0x12
	mov r0, #2
	b locret_802C582
loc_802C578:
	lsl r1, r0, #0x12
	lsr r1, r1, #0x12
	mov r0, #3
	b locret_802C582
loc_802C580:
	mov r0, #0xff
locret_802C582:
	mov pc, lr
dword_802C584: .word 0xFFFF
	thumb_func_end sub_802C54C

	thumb_local_start
sub_802C588:
	ldr r1, dword_802C598 // =0xc1e8 
	mov r2, #0x2a 
loc_802C58C:
	strh r1, [r0]
	add r1, #1
	add r0, #2
	sub r2, #1
	bne loc_802C58C
	mov pc, lr
dword_802C598: .word 0xC1E8
	thumb_func_end sub_802C588

	thumb_local_start
sub_802C59C:
	ldr r1, dword_802C5AC // =0x90c6 
	mov r2, #0x2a 
loc_802C5A0:
	strh r1, [r0]
	add r0, #2
	sub r2, #1
	bne loc_802C5A0
	mov pc, lr
	.balign 4, 0x00
dword_802C5AC: .word 0x90C6
	thumb_func_end sub_802C59C

	thumb_local_start
sub_802C5B0:
	push {r4-r7,lr}
	sub sp, sp, #0x70
	mov r6, sp
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk200a220_Ptr]
	str r0, [r7,#8]
	push {r6}
	ldr r0, off_802C6AC // =byte_8736D74
	mov r1, #5
	ldr r2, off_802C6A8 // =unk_2035320 
	ldr r3, dword_802C6B4 // =0x600ba80 
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_802C6B0 // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
	mov r0, #2
	mov r1, #0xc
	ldr r2, off_802C6C0 // =byte_802C6C4
	mov r3, #0xa
	mov r4, #2
	bl sub_802C4B6
	pop {r6}
	add sp, sp, #0x70
	pop {r4-r7,pc}
	thumb_func_end sub_802C5B0

	thumb_local_start
sub_802C5E6:
	push {r5,lr}
	sub sp, sp, #8
	tst r0, r0
	bne loc_802C5F4
	mov r0, #4
	str r0, [sp,#4]
	b loc_802C61C
loc_802C5F4:
	str r0, [sp]
	bl sub_8000C00
	bl sub_8000C5C
	str r0, [sp,#4]
	ldr r0, [sp]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk200a220_Ptr]
	str r0, [r7,#8]
	ldr r0, off_802C6AC // =byte_8736D74
	mov r1, #6
	ldr r2, off_802C6BC // =unk_20354E0 
	ldr r3, dword_802C6B8 // =0x600bc40 
	mov r4, #3
	mov r5, #1
	ldr r6, off_802C6B0 // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
loc_802C61C:
	ldr r0, [sp,#4]
	mov r1, #1
	ldr r2, off_802C6A8 // =unk_2035320 
	ldr r3, dword_802C6B4 // =0x600ba80 
	mov r4, #0xa
	sub r4, r4, r0
	mov r5, #1
	ldr r6, off_802C6B0 // =dword_86B7AE0 
	mov r7, #8
	ldr r0, off_802C6AC // =byte_8736D74
	bl renderTextGfx_8045F8C
	mov r0, #2
	mov r1, #0xc
	ldr r2, off_802C6C0 // =byte_802C6C4
	mov r3, #0xa
	mov r4, #2
	bl sub_802C4B6
	add sp, sp, #8
	pop {r5,pc}
	thumb_func_end sub_802C5E6

	thumb_local_start
sub_802C646:
	push {r5,lr}
	sub sp, sp, #8
	tst r0, r0
	bne loc_802C654
	mov r0, #4
	str r0, [sp,#4]
	b loc_802C67C
loc_802C654:
	str r0, [sp]
	bl sub_8000C00
	bl sub_8000C5C
	str r0, [sp,#4]
	ldr r0, [sp]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk200a220_Ptr]
	str r0, [r7,#8]
	ldr r0, off_802C6AC // =byte_8736D74
	mov r1, #6
	ldr r2, off_802C6BC // =unk_20354E0 
	ldr r3, dword_802C6B8 // =0x600bc40 
	mov r4, #3
	mov r5, #1
	ldr r6, off_802C6B0 // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
loc_802C67C:
	ldr r0, [sp,#4]
	add r1, r0, #6
	ldr r2, off_802C6A8 // =unk_2035320 
	ldr r3, dword_802C6B4 // =0x600ba80 
	mov r4, #0xa
	sub r4, r4, r0
	mov r5, #1
	ldr r6, off_802C6B0 // =dword_86B7AE0 
	mov r7, #8
	ldr r0, off_802C6AC // =byte_8736D74
	bl renderTextGfx_8045F8C
	mov r0, #2
	mov r1, #0xc
	ldr r2, off_802C6C0 // =byte_802C6C4
	mov r3, #0xa
	mov r4, #2
	bl sub_802C4B6
	add sp, sp, #8
	pop {r5,pc}
	.balign 4, 0x00
off_802C6A8: .word unk_2035320
off_802C6AC: .word byte_8736D74
off_802C6B0: .word dword_86B7AE0
dword_802C6B4: .word 0x600BA80
dword_802C6B8: .word 0x600BC40
off_802C6BC: .word unk_20354E0
off_802C6C0: .word byte_802C6C4
byte_802C6C4: .byte 0xD4, 0x91, 0xD6, 0x91, 0xD8, 0x91, 0xDA, 0x91, 0xDC
	.byte 0x91, 0xDE, 0x91, 0xE0, 0x91, 0xE2, 0x91, 0xE4, 0x91
	.byte 0xE6, 0x91, 0xD5, 0x91, 0xD7, 0x91, 0xD9, 0x91, 0xDB
	.byte 0x91, 0xDD, 0x91, 0xDF, 0x91, 0xE1, 0x91, 0xE3, 0x91
	.byte 0xE5, 0x91, 0xE7, 0x91
	thumb_func_end sub_802C646

	thumb_local_start
sub_802C6EC:
	push {r4-r6,lr}
	sub sp, sp, #0x1c
	cmp r0, #0xb
	ble loc_802C6F6
	mov r0, #0xb
loc_802C6F6:
	str r0, [sp,#0x14]
	ldr r0, dword_802C758 // =0x90a0 
	add r0, #0x14
	mov r3, #5
	add r2, sp, #0
loc_802C700:
	strh r0, [r2]
	add r1, r0, #1
	strh r1, [r2,#0xa]
	add r2, #2
	sub r3, #1
	bgt loc_802C700
	mov r4, #8
	add r4, sp
	ldr r6, dword_802C758 // =0x90a0 
	ldr r0, [sp,#0x14]
	cmp r0, #0xb
	blt loc_802C724
	mov r1, #1
	lsl r1, r1, #0xc
	add r6, r6, r1
	mov r5, #0xb
	mov r0, #1
	b loc_802C72E
loc_802C724:
	bl sub_8000C00
	mov r5, r0
	bl sub_8000C5C
loc_802C72E:
	mov r1, #0xf
	and r1, r5
	add r1, r1, r1
	add r1, r1, r6
	strh r1, [r4]
	add r2, r1, #1
	strh r2, [r4,#0xa]
	lsr r5, r5, #4
	sub r4, #2
	sub r0, #1
	bgt loc_802C72E
	mov r0, #0x10
	mov r1, #6
	add r2, sp, #0
	mov r3, #5
	mov r4, #2
	bl sub_802C4B6
	add sp, sp, #0x1c
	pop {r4-r6,pc}
	.balign 4, 0x00
dword_802C758: .word 0x90A0
	thumb_func_end sub_802C6EC

	thumb_local_start
sub_802C75C:
	push {r5,lr}
	sub sp, sp, #0x70
	mov r6, sp
	push {r0,r1,r6}
	mov r1, #0xff
	and r1, r0
	lsr r0, r0, #8
	lsl r0, r0, #2
	ldr r2, off_802C7C0 // =off_802C7C4 
	ldr r0, [r2,r0]
	ldr r2, off_802C7CC // =unk_2035320 
	ldr r3, dword_802C7D0 // =0x600ba80 
	mov r4, #8
	mov r5, #1
	ldr r6, off_802C7D4 // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
	mov r0, #2
	mov r1, #0xc
	ldr r2, off_802C7E8 // =byte_802C7EC 
	mov r3, #9
	mov r4, #2
	bl sub_802C4B6
	pop {r0,r1,r6}
	push {r0,r1,r6}
	ldr r2, dword_802C7E0 // =0x91e4 
	strh r2, [r6]
	add r2, #1
	strh r2, [r6,#2]
	mov r0, #0xb
	mov r1, #0xc
	mov r2, r6
	mov r3, #1
	mov r4, #2
	bl sub_802C4B6
	pop {r0,r1,r6}
	ldr r0, off_802C7D8 // =byte_86EF71C 
	ldr r2, off_802C7E4 // =unk_2035520 
	ldr r3, dword_802C7DC // =0x600bc80 
	mov r4, #1
	mov r5, #1
	ldr r6, off_802C7D4 // =dword_86B7AE0 
	mov r7, #8
	bl renderTextGfx_8045F8C
	add sp, sp, #0x70
	pop {r5,pc}
off_802C7C0: .word off_802C7C4
off_802C7C4: .word dword_86EA94C
	.word TextScriptEnemyNames86EB354
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
	thumb_func_end sub_802C75C

	thumb_local_start
sub_802C810:
	push {r5,lr}
	ldr r2, off_802C828 // =off_802C82C 
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	mov r0, #2
	mov r1, #0xe
	mov r3, #0xa
	mov r4, #1
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
	thumb_func_end sub_802C810

	thumb_local_start
sub_802C85C:
	push {lr}
	ldrb r0, [r5,#0xf]
	tst r0, r0
	beq locret_802C882
	mov r7, r10
	ldr r7, [r7,#oToolkit_CurFramePtr]
	ldrh r0, [r7]
	mov r1, #0x10
	and r0, r1
	lsr r0, r0, #4
	lsl r0, r0, #2
	ldr r2, off_802C884 // =off_802C888 
	ldr r2, [r2,r0]
	mov r0, #0xa
	mov r1, #4
	mov r3, #4
	mov r4, #2
	bl sub_802C4B6
locret_802C882:
	pop {pc}
off_802C884: .word off_802C888
off_802C888: .word byte_802C890
	.word byte_802C8A0
byte_802C890: .byte 0xB4, 0x90, 0xB4, 0x90, 0xB4, 0x90, 0xB4, 0x90, 0xB5
	.byte 0x90, 0xB5, 0x90, 0xB5, 0x90, 0xB5, 0x90
byte_802C8A0: .byte 0xC7, 0x90, 0xC8, 0x90, 0xC9, 0x90, 0xCA, 0x90, 0xCB
	.byte 0x90, 0xCC, 0x90, 0xCD, 0x90, 0xCE, 0x90
	thumb_func_end sub_802C85C

	thumb_local_start
sub_802C8B0:
	push {lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#8]
	bl GetPositiveSignedRNG2
	lsr r0, r0, #8
	ldr r1, [sp,#8]
	svc 6
	mov r0, #0
	ldr r7, [sp]
loc_802C8C6:
	ldrb r2, [r7,r0]
	sub r1, r1, r2
	blt loc_802C8D0
	add r0, #1
	b loc_802C8C6
loc_802C8D0:
	add sp, sp, #0xc
	pop {pc}
	thumb_func_end sub_802C8B0

	thumb_local_start
sub_802C8D4:
	mov r0, #0
	ldrb r1, [r5,#0xc]
	ldrb r2, [r5,#0xd]
	cmp r1, r2
	bge locret_802C8E8
	add r2, r1, r1
	add r2, #0x14
	ldrh r0, [r5,r2]
	add r1, #1
	strb r1, [r5,#0xc]
locret_802C8E8:
	mov pc, lr
	thumb_func_end sub_802C8D4

	thumb_local_start
sub_802C8EA:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r2, [r1,#0xd]
	mov r1, #8
	mul r2, r1
	ldr r0, off_802CAFC // =dword_2036820 
	add r0, r0, r2
	mov pc, lr
	thumb_func_end sub_802C8EA

	thumb_func_start sub_802C8FA
sub_802C8FA:
	push {r5-r7,lr}
	mov r7, r0
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_802C90C
	mov r0, #0
	b loc_802C91A
loc_802C90C:
	bl sub_800A832
	mov r2, r0
	mov r0, #1
	cmp r2, #1
	beq loc_802C91A
	mov r0, #2
loc_802C91A:
	strb r0, [r7]
	bl sub_800A704
	str r0, [r7,#4]
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0x1e]
	strb r0, [r7,#1]
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_802C960
	bl sub_80103EC
	mov r5, r0
	ldrb r2, [r5,#0x16]
	mov r1, #1
	eor r2, r1
	lsl r0, r2, #3
	add r0, #0x4c 
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	add r0, r0, r6
	add r2, #8
	ldrb r1, [r6,r2]
	ldrb r2, [r7,#1]
	ldrh r3, [r5,#0x24]
	ldrh r4, [r5,#0x26]
	ldrb r5, [r5,#0x16]
	bl sub_80AA8E0
	strh r0, [r7,#8]
	strh r1, [r7,#0xa]
	b loc_802C96C
loc_802C960:
	ldrb r0, [r7,#1]
	bl sub_80AAC8C
	strh r0, [r7,#8]
	mov r1, #0
	strh r1, [r7,#0xa]
loc_802C96C:
	mov r2, #0
	tst r0, r0
	beq loc_802C974
	add r2, #1
loc_802C974:
	tst r1, r1
	beq loc_802C97A
	add r2, #1
loc_802C97A:
	strb r2, [r7,#3]
	pop {r5-r7,pc}
	thumb_func_end sub_802C8FA

	thumb_local_start
sub_802C97E:
	push {r4,lr}
	mov r4, #0
	bl sub_800A7E2
	bl sub_802CA1E
	cmp r0, #0xff
	beq loc_802C9B2
	mov r4, #2
	ldr r1, off_802CB00 // =unk_20018C0 
	add r0, r0, r0
	ldrh r2, [r1,r0]
	ldr r3, [r5,#0x1c]
	cmp r3, r2
	bge loc_802C99E
	b loc_802C9AE
loc_802C99E:
	mov r4, #1
	ldr r1, off_802CB04 // =unk_2000260 
	ldrh r2, [r1,r0]
	ldr r3, [r5,#0x1c]
	cmp r3, r2
	blt loc_802C9AE
	mov r4, #0
	b loc_802C9B2
loc_802C9AE:
	mov r0, #1
	strb r0, [r5,#0xf]
loc_802C9B2:
	mov r0, r4
	strb r0, [r5,#0xe]
	pop {r4,pc}
	thumb_func_end sub_802C97E

	thumb_func_start sub_802C9B8
sub_802C9B8:
	push {r4,lr}
	bl sub_800A704
	mov r4, r0
	bl sub_800A7E2
	bl sub_802CA1E
	cmp r0, #0xff
	beq locret_802C9E8
	ldr r1, off_802CB08 // =unk_20018C0 
	add r0, r0, r0
	ldrh r2, [r1,r0]
	cmp r4, r2
	bge loc_802C9DE
	strh r4, [r1,r0]
	ldr r1, off_802CB0C // =unk_2000260 
	strh r4, [r1,r0]
	b locret_802C9E8
loc_802C9DE:
	ldr r1, off_802CB10 // =unk_2000260 
	ldrh r2, [r1,r0]
	cmp r4, r2
	bge locret_802C9E8
	strh r4, [r1,r0]
locret_802C9E8:
	pop {r4,pc}
	thumb_func_end sub_802C9B8

	thumb_func_start sub_802C9EA
sub_802C9EA:
	push {lr}
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_802CA1C
	ldr r6, off_802CB14 // =unk_203526C 
	ldr r7, off_802CB18 // =unk_2035260 
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0x10]
	tst r0, r0
	beq loc_802CA08
	ldr r6, off_802CB1C // =unk_2035260 
	ldr r7, off_802CB20 // =unk_203526C 
loc_802CA08:
	ldr r0, [r6,#8]
	str r0, [r7,#8]
	ldrh r0, [r6,#8]
	ldr r1, dword_802CB24 // =0xffff 
	cmp r0, r1
	bne locret_802CA1C
	ldrb r0, [r7,#1]
	bl sub_80AABA4
	strh r0, [r7,#8]
locret_802CA1C:
	pop {pc}
	thumb_func_end sub_802C9EA

	thumb_local_start
sub_802CA1E:
	push {r4,r5,lr}
	mov r1, #1
	eor r0, r1
	mov r1, #8
	mul r0, r1
	add r0, #0x4c 
	mov r5, r10
	ldr r5, [r5,#oToolkit_BattleStatePtr]
	add r5, r5, r0
	mov r4, #0
loc_802CA32:
	ldrh r0, [r5]
	bl sub_80182B4
	ldrb r1, [r0,#1]
	cmp r1, #1
	bne loc_802CA50
	ldrb r1, [r0,#2]
	cmp r1, #0x14
	bge loc_802CA50
	ldrb r1, [r0]
	cmp r1, #2
	bne loc_802CA50
	ldrb r0, [r0,#2]
	sub r0, #1
	pop {r4,r5,pc}
loc_802CA50:
	add r5, #2
	add r4, #1
	cmp r4, #4
	blt loc_802CA32
	mov r0, #0xff
	pop {r4,r5,pc}
	thumb_func_end sub_802CA1E

	thumb_local_start
sub_802CA5C:
	push {lr}
	mov r0, #6
	ldrsb r0, [r5,r0]
	lsl r0, r0, #3
	add r0, #0xd
	ldr r1, dword_802CB28 // =0x1ff 
	and r0, r1
	lsl r0, r0, #0x10
	add r0, #0x15
	ldr r1, dword_802CB2C // =0xffff00ff 
	and r0, r1
	ldr r1, dword_802CB30 // =0x40000000 
	add r0, r0, r1
	ldr r1, dword_802CB34 // =0xb200 
	mov r2, #0
	mov r3, #0
	bl sub_8009FF8
	pop {pc}
	thumb_func_end sub_802CA5C

	thumb_func_start sub_802CA82
sub_802CA82:
	push {r4,lr}
	bl eStruct200A008_getUnk04
	cmp r0, #0
	beq loc_802CA94
	bl sub_802C54C
	bl sub_802CAA6
loc_802CA94:
	bl eStruct200A008_getUnk06
	cmp r0, #0
	beq locret_802CAA4
	bl sub_802C54C
	bl sub_802CAA6
locret_802CAA4:
	pop {r4,pc}
	thumb_func_end sub_802CA82

	thumb_local_start
sub_802CAA6:
	push {lr}
	cmp r0, #0
	bne loc_802CADE
	mov r0, r1
	mov r1, r2
	mov r2, #1
	push {r0-r2}
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_802CACE
	bl sub_800A832
	cmp r0, #1
	beq loc_802CACE
	cmp r0, #2
	beq loc_802CAD6
	pop {r0-r2}
	pop {pc}
loc_802CACE:
	pop {r0-r2}
	bl sub_8021AEE
	pop {pc}
loc_802CAD6:
	pop {r0-r2}
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	pop {pc}
loc_802CADE:
	cmp r0, #1
	bne loc_802CAEA
	mov r0, r1
	bl sub_803CFF8
	pop {pc}
loc_802CAEA:
	cmp r0, #2
	bne loc_802CAF0
	pop {pc}
loc_802CAF0:
	cmp r0, #3
	bne locret_802CAFA
	mov r0, r1
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
	thumb_func_end sub_802CAA6

	thumb_func_start sub_802CB38
sub_802CB38:
	push {r4,r6,r7,lr}
	ldr r7, off_802CB74 // =dword_203EAD0 
	strh r0, [r7,#0x8] // (word_203EAD8 - 0x203ead0)
	strh r1, [r7,#0xa] // (word_203EADA - 0x203ead0)
	mov r2, #0xff
	cmp r0, r1
	beq loc_802CB4E
	mov r2, #0
	cmp r0, r1
	blt loc_802CB4E
	mov r2, #1
loc_802CB4E:
	strb r2, [r5,#0x10]
	mov r4, #3
	cmp r2, #0xff
	beq loc_802CB66
	mov r6, r2
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r4, #2
	eor r0, r6
	beq loc_802CB66
	mov r4, #1
loc_802CB66:
	strb r4, [r7,#0x7] // (dword_203EAD4+3 - 0x203ead0)
	mov r0, #0
	str r0, [r7]
	strh r0, [r7,#0xc] // (word_203EADC - 0x203ead0)
	strh r0, [r7,#0xe] // (word_203EADE - 0x203ead0)
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
off_802CB74: .word dword_203EAD0
	thumb_func_end sub_802CB38

	thumb_func_start sub_802CB78
sub_802CB78:
	push {r5,lr}
	ldr r5, off_802CBA0 // =dword_203EAD0 
	mov r0, #1
	strb r0, [r5,#0x4] // (dword_203EAD4 - 0x203ead0)
	ldr r1, off_802CB90 // =off_802CB94 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r5,#0x4] // (dword_203EAD4 - 0x203ead0)
	ldrb r1, [r5,#0x7] // (dword_203EAD4+3 - 0x203ead0)
	pop {r5,pc}
off_802CB90: .word off_802CB94
off_802CB94: .word sub_802CBA4+1
	.word sub_802CBAC+1
	.word sub_802CCAE+1
off_802CBA0: .word dword_203EAD0
	thumb_func_end sub_802CB78

	thumb_local_start
sub_802CBA4:
	push {lr}
	mov r0, #4
	str r0, [r5]
	pop {pc}
	thumb_func_end sub_802CBA4

	thumb_local_start
sub_802CBAC:
	push {lr}
	ldr r1, off_802CBBC // =off_802CBC0 
	ldrb r0, [r5,#1]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802CBBC: .word off_802CBC0
off_802CBC0: .word sub_802CBCC+1
	.word sub_802CBF2+1
	.word sub_802CC8C+1
	thumb_func_end sub_802CBAC

	thumb_local_start
sub_802CBCC:
	push {lr}
	ldrh r1, [r5,#8]
	ldrh r2, [r5,#0xa]
	mov r3, r10
	ldr r3, [r3,#oToolkit_BattleStatePtr]
	ldrb r3, [r3,#0xd]
	tst r3, r3
	beq loc_802CBE2
	mov r3, r2
	mov r2, r1
	mov r1, r3
loc_802CBE2:
	mov r0, #0x28 
	bl loc_801E792
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
	pop {pc}
	thumb_func_end sub_802CBCC

	thumb_local_start
sub_802CBF2:
	push {lr}
	ldr r1, off_802CC00 // =off_802CC04
	ldrb r0, [r5,#2]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_802CC00: .word off_802CC04
off_802CC04: .word sub_802CC10+1
	.word sub_802CC1A+1
	.word sub_802CC50+1
	thumb_func_end sub_802CBF2

	thumb_local_start
sub_802CC10:
	mov r0, #0x3c // word_3C
	strb r0, [r5,#5]
	mov r0, #4
	strb r0, [r5,#2]
	mov pc, lr
	thumb_func_end sub_802CC10

	thumb_local_start
sub_802CC1A:
	push {lr}
	ldrb r0, [r5,#5]
	sub r0, #1
	strb r0, [r5,#5]
	beq loc_802CC3E
	bl GetPositiveSignedRNG2
	mov r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r1, dword_802CC4C // =0x270e 
	svc 6
	strh r1, [r5,#0xc]
	lsr r0, r4, #0x10
	ldr r1, dword_802CC4C // =0x270e 
	svc 6
	strh r1, [r5,#0xe]
	b loc_802CC42
loc_802CC3E:
	mov r0, #8
	strh r0, [r5,#2]
loc_802CC42:
	ldrh r0, [r5,#0xc]
	ldrh r1, [r5,#0xe]
	bl sub_801E914
	pop {pc}
dword_802CC4C: .word 0x270E
	thumb_func_end sub_802CC1A

	thumb_local_start
sub_802CC50:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_802CC60
	mov r0, #0x78 
	strb r0, [r5,#5]
	mov r0, #4
	strb r0, [r5,#3]
loc_802CC60:
	ldrb r0, [r5,#5]
	sub r0, #1
	strb r0, [r5,#5]
	beq loc_802CC82
	ldrh r0, [r5,#8]
	ldrh r1, [r5,#0xa]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	ldrb r2, [r2,#0xd]
	tst r2, r2
	beq loc_802CC7C
	mov r2, r1
	mov r1, r0
	mov r0, r2
loc_802CC7C:
	bl sub_801E914
	b locret_802CC8A
loc_802CC82:
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_802CC8A:
	pop {pc}
	thumb_func_end sub_802CC50

	thumb_local_start
sub_802CC8C:
	push {lr}
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_802CCA0
	bl sub_801E780
	mov r0, #0x1e
	strb r0, [r5,#5]
	mov r0, #4
	strb r0, [r5,#2]
loc_802CCA0:
	ldrb r0, [r5,#5]
	sub r0, #1
	strb r0, [r5,#5]
	bne locret_802CCAC
	mov r0, #8
	str r0, [r5]
locret_802CCAC:
	pop {pc}
	thumb_func_end sub_802CC8C

	thumb_local_start
sub_802CCAE:
	mov r0, #0
	strb r0, [r5,#4]
	mov pc, lr
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
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_80E91B8+1
	.word sub_80E943E+1
	.word sub_80E979C+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
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
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_80BD9A2+1
	.word sub_80BE3E8+1
	.word sub_80BF160+1
	.word sub_80EA11C+1
	.word sub_80BFCD0+1
	.word sub_80BF6AE+1
	.word sub_80C3B30+1
	.word sub_80C3E98+1
	.word sub_80C2F96+1
	thumb_func_end sub_802CCAE

	thumb_func_start sub_802CDD0
sub_802CDD0:
	ldr r0, off_802CE50 // =dword_203CFB0 
	ldrb r1, [r5,#oBattleObject_Alliance]
	tst r1, r1
	beq loc_802CDDA
	add r0, #0xc
loc_802CDDA:
	ldr r1, [r0,#8]
	cmp r1, r5
	bne locret_802CDE4
	mov r1, #0
	str r1, [r0,#8]
locret_802CDE4:
	mov pc, lr
	thumb_func_end sub_802CDD0

	thumb_func_start sub_802CDE6
sub_802CDE6:
	ldr r0, off_802CE50 // =dword_203CFB0 
	ldrb r1, [r5,#oBattleObject_Alliance]
	tst r1, r1
	bne loc_802CDF0
	add r0, #0xc
loc_802CDF0:
	ldr r1, [r0,#4]
	cmp r1, r5
	bne locret_802CDFC
	mov r1, #0
	str r1, [r0,#4]
	str r1, [r0,#8]
locret_802CDFC:
	mov pc, lr
	thumb_func_end sub_802CDE6

	thumb_func_start sub_802CDFE
sub_802CDFE:
	ldr r0, off_802CE50 // =dword_203CFB0 
	ldr r1, [r0]
	lsl r1, r1, #0x10
	str r1, [r0]
	add r0, #0xc
	ldr r1, [r0]
	lsl r1, r1, #0x10
	str r1, [r0]
	mov pc, lr
	thumb_func_end sub_802CDFE

	thumb_func_start sub_802CE10
sub_802CE10:
	ldr r1, off_802CE50 // =dword_203CFB0 
	ldrb r2, [r5,#oBattleObject_Alliance]
	tst r2, r2
	beq loc_802CE1A
	add r1, #0xc
loc_802CE1A:
	ldr r2, [r1,#8]
	cmp r5, r2
	bne loc_802CE26
	ldrh r3, [r1,#2]
	add r0, r0, r3
	mov pc, lr
loc_802CE26:
	ldrh r3, [r1]
	cmp r0, r3
	bls locret_802CE2E
	strh r0, [r1]
locret_802CE2E:
	mov pc, lr
	thumb_func_end sub_802CE10

	thumb_func_start sub_802CE30
sub_802CE30:
	ldr r0, off_802CE50 // =dword_203CFB0 
	ldrb r1, [r5,#oBattleObject_Alliance]
	tst r1, r1
	bne loc_802CE3A
	add r0, #0xc
loc_802CE3A:
	ldr r1, [r0,#4]
	cmp r1, r5
	bne loc_802CE4A
	ldr r1, [r0,#8]
	tst r1, r1
	beq loc_802CE4A
	mov r0, #1
	mov pc, lr
loc_802CE4A:
	mov r0, #0
	mov pc, lr
	.byte 0, 0
off_802CE50: .word dword_203CFB0
	thumb_func_end sub_802CE30

	thumb_func_start sub_802CE54
sub_802CE54:
	push {lr}
	// memBlock
	ldr r0, off_802D020 // =unk_2036720 
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end sub_802CE54

	thumb_func_start sub_802CE60
sub_802CE60:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#0xd]
	eor r0, r1
	mov r1, #0x10
	mul r0, r1
	ldr r1, off_802D024 // =unk_2036720 
	add r0, r0, r1
	ldr r1, [r0,#4]
	ldrh r2, [r0,#2]
	ldrh r0, [r0]
	mov pc, lr
	thumb_func_end sub_802CE60

	thumb_func_start sub_802CE78
sub_802CE78:
	mov r1, #0x10
	mul r0, r1
	ldr r1, off_802D028 // =unk_2036720 
	add r0, r0, r1
	ldr r3, [r0,#8]
	ldr r1, [r0,#4]
	ldrh r2, [r0,#2]
	ldrh r0, [r0]
	mov pc, lr
	thumb_func_end sub_802CE78

	thumb_func_start sub_802CE8A
sub_802CE8A:
	push {r4-r6,lr}
	mov r6, r2
	mov r5, r3
	ldrb r2, [r0,#oBattleObject_Alliance]
	mov r3, #0x10
	mul r2, r3
	ldr r3, off_802D02C // =unk_2036720 
	add r3, r3, r2
	strh r1, [r3]
	str r6, [r3,#4]
	strh r5, [r3,#2]
	str r0, [r3,#8]
	str r4, [r3,#0xc]
	pop {r4-r6,pc}
	thumb_func_end sub_802CE8A

	thumb_func_start sub_802CEA6
sub_802CEA6:
	mov r1, #0x10
	mul r1, r0
	ldr r0, off_802D030 // =unk_2036720 
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0,#4]
	strh r1, [r0,#2]
	str r1, [r0,#8]
	ldr r1, [r0,#0xc]
	tst r1, r1
	beq locret_802CEC6
	mov r2, #1
	strb r2, [r1,#5]
	mov r1, #0
	str r1, [r0,#0xc]
locret_802CEC6:
	mov pc, lr
	thumb_func_end sub_802CEA6

	thumb_func_start sub_802CEC8
sub_802CEC8:
	push {lr}
	ldr r4, off_802D034 // =unk_2036720 
	ldr r0, [r4,#0x8] // (dword_2036728 - 0x2036720)
	tst r0, r0
	beq loc_802CEDE
	ldrh r1, [r0,#0x24]
	tst r1, r1
	bne loc_802CEDE
	ldrb r0, [r0,#0x16]
	bl sub_802CEA6
loc_802CEDE:
	add r4, #0x10
	ldr r0, [r4,#0x8] // (dword_2036738 - 0x2036730)
	tst r0, r0
	beq locret_802CEF2
	ldrh r1, [r0,#0x24]
	tst r1, r1
	bne locret_802CEF2
	ldrb r0, [r0,#0x16]
	bl sub_802CEA6
locret_802CEF2:
	pop {pc}
	thumb_func_end sub_802CEC8

	thumb_func_start sub_802CEF4
sub_802CEF4:
	push {r4,r6,r7,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	bl sub_801032C
	ldr r1, dword_802D038 // =0x200000 
	tst r0, r1
	beq loc_802CF30
	mov r1, #0x84
	ldrh r1, [r4,r1]
	cmp r1, #0
	bne loc_802CF30
	mov r0, #0x82
	add r0, r0, r4
	ldrh r2, [r0]
	ldrh r1, [r0,#4]
	orr r2, r1
	ldrh r1, [r0,#6]
	orr r2, r1
	ldrh r1, [r0,#8]
	orr r2, r1
	cmp r2, #0
	beq loc_802CFB8
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	add r3, #0xa0
	mov r0, #1
	str r0, [r3,#oAIAttackVars_Unk_30]
	mov r0, #0x6e 
	bl sound_play // () -> void
	b loc_802CFB8
loc_802CF30:
	mov r6, #0xa
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802CE78
	mov r7, r0
	cmp r0, #0xbb
	beq loc_802CF56
	ldr r1, dword_802D03C // =0x157 
	cmp r0, r1
	beq loc_802CF56
	push {r0}
	bl sub_801032C
	ldr r1, off_802D040 // =0x800 
	tst r0, r1
	pop {r0}
	beq loc_802CF96
	mov r7, #0xbb
	mov r6, #1
loc_802CF56:
	bl sub_800FFFE
	ldr r1, dword_802D044 // =0x8200 
	tst r0, r1
	bne loc_802CFB8
	ldr r0, [r4,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_802D048 // =0xff800000 
	tst r0, r1
	beq locret_802CFF6
	mov r0, #0x82
	add r0, r0, r4
	ldrh r2, [r0]
	ldrh r1, [r0,#2]
	add r2, r2, r1
	ldrh r1, [r0,#4]
	add r2, r2, r1
	ldrh r1, [r0,#6]
	add r2, r2, r1
	ldrh r1, [r0,#8]
	add r2, r2, r1
	cmp r2, r6
	bge loc_802CF88
	cmp r6, #1
	beq loc_802CFB8
	b locret_802CFF6
loc_802CF88:
	ldr r0, off_802D04C // =0x200 
	cmp r7, #0xbb
	beq loc_802CF90
	ldr r0, dword_802D050 // =0x8000 
loc_802CF90:
	bl sub_800FFE4
	b loc_802CFB8
loc_802CF96:
	cmp r0, #0xbc
	bne locret_802CFF6
	bl sub_800FFFE
	ldr r1, off_802D054 // =0x400 
	tst r0, r1
	bne loc_802CFB8
	ldr r0, [r4,#oCollisionData_FlagsFromCollision]
	ldr r1, off_802D058 // =0x2000 
	tst r0, r1
	beq locret_802CFF6
	ldr r1, dword_802D05C // =0x20000 
	tst r0, r1
	bne locret_802CFF6
	ldr r0, off_802D054 // =0x400 
	bl sub_800FFE4
loc_802CFB8:
	mov r0, #0
	mov r1, #0x82
	add r1, r1, r4
	strh r0, [r1]
	strh r0, [r1,#2]
	strh r0, [r1,#4]
	strh r0, [r1,#6]
	strh r0, [r1,#8]
	mov r1, #0x8e
	strh r0, [r4,r1]
	mov r1, #0x90
	strh r0, [r4,r1]
	mov r1, #0x92
	strh r0, [r4,r1]
	mov r1, #0x74 
	str r0, [r4,r1]
	strb r0, [r4,#oCollisionData_HitModifierFinal]
	strb r0, [r4,#oCollisionData_StatusEffectFinal]
	mov r1, #0xa4
	strh r0, [r4,r1]
	strh r0, [r4,#oCollisionData_Unk_1c]
	strh r0, [r4,#oCollisionData_Unk_2a]
	strh r0, [r4,#oCollisionData_Unk_2c]
	mov r1, #0x40 
	ldr r0, [r4,#oCollisionData_FlagsFromCollision]
	bic r0, r1
	str r0, [r4,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_802D060 // =0x301be 
	ldr r0, [r4,#oCollisionData_ObjectFlags2]
	bic r0, r1
	str r0, [r4,#oCollisionData_ObjectFlags2]
locret_802CFF6:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802CEF4

	thumb_func_start sub_802CFF8
sub_802CFF8:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x76 
	ldrb r0, [r4,r1]
	mov r1, #0x40 
	tst r0, r1
	beq locret_802D01C
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802CE78
	cmp r0, #0
	beq locret_802D01C
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802CEA6
	mov r0, #0x8e
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
	thumb_func_end sub_802CFF8

	thumb_func_start sub_802D064
sub_802D064:
	mov r1, #0x20 
	mul r0, r1
	ldr r1, off_802D214 // =byte_203C4A0 
	add r0, r0, r1
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_802D064

	thumb_func_start sub_802D070
sub_802D070:
	push {lr}
	bl sub_802D064
	push {r0}
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r3}
	mov r0, #0
	strb r0, [r3,#0x10]
	mov r0, #0x64 
	strb r0, [r3,#0xd]
	strb r0, [r3,#0xf]
	pop {pc}
	thumb_func_end sub_802D070

	thumb_func_start sub_802D08C
sub_802D08C:
	push {lr}
	bl sub_802D064
	mov r1, #0
	strb r1, [r0,#0x10]
	mov r1, #0x64 
	strb r1, [r0,#0xd]
	strb r1, [r0,#0xf]
	pop {pc}
	thumb_func_end sub_802D08C

	thumb_local_start
sub_802D09E:
	push {r4,r6,lr}
	mov r6, r0
	mov r4, r1
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	mov r3, #0x10
	lsl r3, r3, #0x10
	mul r3, r4
	mov r0, r4
	mov r0, r6
	mov r1, #7
	bl sub_800AB46
	pop {r4,r6,pc}
	thumb_func_end sub_802D09E

	thumb_local_start
sub_802D0BA:
	push {lr}
	bl sub_802D064
	mov r1, #0
	str r1, [r0]
	str r1, [r0,#4]
	pop {pc}
	thumb_func_end sub_802D0BA

	thumb_local_start
sub_802D0C8:
	push {r4,r7,lr}
	sub sp, sp, #0x10
	bl sub_802D064
	mov r7, r0
	bl sub_800A7E2
	bl sub_80103BC
	mov r2, r0
	ldrh r0, [r2,#0x24]
	mov r1, #0x64 
	mul r0, r1
	ldrh r1, [r2,#0x26]
	sub r2, r1, #1
	add r0, r0, r2
	svc 6
	strb r0, [r7,#0xc]
	bl sub_800A7E2
	mov r3, #1
	eor r3, r0
	ldr r1, dword_802D218 // =0x17f 
	ldr r2, dword_802D218 // =0x17f 
	add r0, sp, #0
	bl object_getEnemyByNameRange
	tst r0, r0
	beq loc_802D112
	ldr r2, [sp]
	ldrh r0, [r2,#0x24]
	mov r1, #0x64 
	mul r0, r1
	ldrh r1, [r2,#0x26]
	sub r2, r1, #1
	add r0, r0, r2
	svc 6
loc_802D112:
	strb r0, [r7,#0xe]
	add sp, sp, #0x10
	pop {r4,r7,pc}
	thumb_func_end sub_802D0C8

	thumb_local_start
sub_802D118:
	push {r6,r7,lr}
	bl sub_802D064
	mov r7, r0
	bl sub_800A856
	mov r1, #0
	cmp r0, #0
	beq loc_802D138
	mov r1, #1
	cmp r0, #2
	beq loc_802D138
	mov r1, #2
	cmp r0, #1
	beq loc_802D138
	mov r1, #0
loc_802D138:
	strb r1, [r7,#0x11]
	strb r1, [r7,#0x10]
	bl sub_800A70C
	strh r0, [r7,#0x14]
	pop {r6,r7,pc}
	thumb_func_end sub_802D118

	thumb_local_start
sub_802D144:
	push {lr}
	bl sub_802D064
	mov r1, #0
	strb r1, [r0,#8]
	pop {pc}
	thumb_func_end sub_802D144

	thumb_func_start sub_802D150
sub_802D150:
	ldr r1, off_802D21C // =dword_2006740 
	mov r0, #0
	str r0, [r1]
	mov pc, lr
	thumb_func_end sub_802D150

	thumb_func_start sub_802D158
sub_802D158:
	ldr r1, off_802D220 // =dword_2006740 
	str r0, [r1]
	mov pc, lr
	thumb_func_end sub_802D158

	thumb_func_start sub_802D15E
sub_802D15E:
	ldr r1, off_802D224 // =dword_2006740 
	ldr r0, [r1]
	mov pc, lr
	thumb_func_end sub_802D15E

	thumb_local_start
sub_802D164:
	ldr r1, off_802D228 // =dword_2006740
	ldr r2, [r1]
	add r2, r2, r0
	ldr r3, dword_802D22C // =0xf423f 
	cmp r2, r3
	ble loc_802D172
	mov r2, r3
loc_802D172:
	str r2, [r1]
	mov pc, lr
	thumb_func_end sub_802D164

	thumb_local_start
sub_802D176:
	ldr r1, off_802D230 // =dword_2006740
	ldr r2, [r1]
	sub r2, r2, r0
	bge loc_802D180
	mov r2, #0
loc_802D180:
	str r2, [r1]
	mov pc, lr
	thumb_func_end sub_802D176

	thumb_local_start
sub_802D184:
	push {r4,r7,lr}
	mov r4, r0
	mov r7, #0
	bl sub_800A832
	cmp r0, #1
	bne loc_802D194
	add r7, #0xa
loc_802D194:
	mov r0, r4
	mov r1, #9
	bl sub_800AB3A
	tst r0, r0
	beq loc_802D1A2
	add r7, #0xa
loc_802D1A2:
	mov r0, r4
	mov r1, #7
	bl sub_800AB3A
	mov r1, #2
	mul r0, r1
	add r7, r7, r0
	mov r0, r7
	pop {r4,r7,pc}
	thumb_func_end sub_802D184

	thumb_func_start sub_802D1B4
sub_802D1B4:
	push {lr}
	bl sub_802D064
	ldrb r0, [r0,#0xd]
	pop {pc}
	thumb_func_end sub_802D1B4

	thumb_func_start sub_802D1BE
sub_802D1BE:
	push {lr}
	bl sub_802D064
	ldrb r0, [r0,#0xf]
	pop {pc}
	thumb_func_end sub_802D1BE

	thumb_local_start
sub_802D1C8:
	push {r4,r5,lr}
	mov r1, #0xc
	mul r0, r1
	add r0, #0x84
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	add r4, r4, r0
	mov r5, #0
loc_802D1D8:
	ldr r0, [r4]
	tst r0, r0
	beq loc_802D1E2
	bl sub_800EC3C
loc_802D1E2:
	add r4, #4
	add r5, #1
	cmp r5, #3
	blt loc_802D1D8
	pop {r4,r5,pc}
	thumb_func_end sub_802D1C8

	thumb_local_start
sub_802D1EC:
	push {lr}
	bl sub_800A7E2
	bl sub_802D064
	ldrb r1, [r0,#0x12]
	cmp r1, #0
	bne loc_802D1FE
	pop {pc}
loc_802D1FE:
	cmp r1, #2
	bne loc_802D208
	mov r2, #0
	strb r2, [r0,#0xd]
	pop {pc}
loc_802D208:
	cmp r1, #1
	bne locret_802D212
	mov r2, #0
	strb r2, [r0,#0xf]
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
	thumb_func_end sub_802D1EC

	thumb_func_start sub_802D234
sub_802D234:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#oBattleState_Unk_3c]
	bl sub_802D242
	pop {pc}
	thumb_func_end sub_802D234

	thumb_local_start
sub_802D242:
	ldrb r0, [r0,#3]
	mov pc, lr
	thumb_func_end sub_802D242

// () -> int
	thumb_func_start sub_802D246
sub_802D246:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#0x3c]
	bl sub_802D254 // () -> int
	pop {pc}
	thumb_func_end sub_802D246

// () -> int
	thumb_func_start sub_802D254
sub_802D254:
	ldr r0, [r0,#8]
	mov pc, lr
	thumb_func_end sub_802D254

	thumb_local_start
sub_802D258:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#0x3c]
	bl sub_802D266
	pop {pc}
	thumb_func_end sub_802D258

	thumb_func_start sub_802D266
sub_802D266:
	ldrb r0, [r0,#1]
	mov pc, lr
	thumb_func_end sub_802D266

	thumb_func_start sub_802D26A
sub_802D26A:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r0, [r0,#oBattleState_Unk_3c]
	bl sub_802D278
	pop {pc}
	thumb_func_end sub_802D26A

	thumb_local_start
sub_802D278:
	ldrb r0, [r0,#6]
	mov pc, lr
	thumb_func_end sub_802D278

// () -> BattleSettings*
	thumb_func_start getBattleSettings_200AF60
getBattleSettings_200AF60:
	ldr r0, off_802D2E4 // =BattleSettings_200AF60 
	mov pc, lr
	thumb_func_end getBattleSettings_200AF60

// (BattleSettings *src) -> void
	thumb_func_start copyBattleSettingsTo_200AF60
copyBattleSettingsTo_200AF60:
	push {lr}
	ldr r1, off_802D2E8 // =BattleSettings_200AF60 
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	thumb_func_end copyBattleSettingsTo_200AF60

// (int mask) -> void
	thumb_func_start battleSettings_setFlags_unkSettings
battleSettings_setFlags_unkSettings:
	ldr r1, off_802D2EC // =BattleSettings_200AF60 
	ldr r2, [r1,#0x8] // BattleSettings.UnknownOptionalSettings
	orr r2, r0
	str r2, [r1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov pc, lr
	thumb_func_end battleSettings_setFlags_unkSettings

// (int mask) -> void
	thumb_local_start
battlteSettings_clearFlags_UnkSettings:
	ldr r1, off_802D2F0 // =BattleSettings_200AF60 
	ldr r2, [r1,#0x8] // BattleSettings.UnknownOptionalSettings
	bic r2, r0
	str r2, [r1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov pc, lr
	thumb_func_end battlteSettings_clearFlags_UnkSettings

// () -> u32
	thumb_local_start
battleSettings_getUnkOptSettings:
	ldr r1, off_802D2F4 // =BattleSettings_200AF60 
	ldr r0, [r1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov pc, lr
	thumb_func_end battleSettings_getUnkOptSettings

// (u32 unkOptSettings) -> void
	thumb_local_start
battleSettings_setUnkOptSettings:
	ldr r1, off_802D2F8 // =BattleSettings_200AF60 
	str r0, [r1,#0x8] // BattleSettings.UnknownOptionalSettings
	mov pc, lr
	thumb_func_end battleSettings_setUnkOptSettings

// (u8 background) -> void
	thumb_func_start battleSettings_setBackground
battleSettings_setBackground:
	ldr r1, off_802D2FC // =BattleSettings_200AF60 
	strb r0, [r1,#0x4] // BattleSettings.background
	mov pc, lr
	thumb_func_end battleSettings_setBackground

// () -> BattleSettings*
	thumb_func_start battleSettings_802D2B2
battleSettings_802D2B2:
	push {r4,r6,r7,lr}
	bl battleSettings_getUnkOptSettings // () -> u32
	mov r4, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	ldrb r0, [r7,#0x1a]
	sub r0, #1
	add r0, r0, r0
	ldr r6, off_802D300 // =byte_203CA50 
	add r6, r6, r0
	ldrb r0, [r6]
	bl getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
	bl copyBattleSettingsTo_200AF60 // (BattleSettings *src) -> void
	mov r0, r4
	bl battleSettings_setUnkOptSettings // (u32 unkOptSettings) -> void
	ldrb r0, [r6,#1]
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
	thumb_func_end battleSettings_802D2B2

	thumb_func_start sub_802D310
sub_802D310:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	sub r0, #0xf
	add r0, #0xff
	mov r1, #0
	str r1, [r0]
	str r1, [r0,#4]
	str r1, [r0,#8]
	str r1, [r0,#0xc]
	mov pc, lr
	thumb_func_end sub_802D310

	thumb_func_start sub_802D322
sub_802D322:
	push {r4,r6,r7,lr}
	ldr r6, [r5,#0x58]
	sub r6, #0xf
	add r6, #0xff
	ldr r7, [r5,#0x58]
	add r7, #0xa0
	ldrb r0, [r6,#8]
	cmp r0, #0
	bne loc_802D33C
	mov r0, #1
	strb r0, [r6,#8]
	mov r0, #8
	strh r0, [r6]
loc_802D33C:
	ldr r1, off_802D348 // =off_802D34C 
	ldrb r0, [r6]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,r7,pc}
off_802D348: .word off_802D34C
off_802D34C: .word sub_802D358+1
	.word sub_802D3A8+1
	.word sub_802D3CA+1
	thumb_func_end sub_802D322

	thumb_local_start
sub_802D358:
	push {r4,lr}
	ldrh r0, [r6,#4]
	cmp r0, #3
	bgt loc_802D37A
	bl sub_80E164A
	ldrb r2, [r5,#0x16]
	bl sub_80E7486
	mov r4, r0
	beq loc_802D37A
	ldr r0, [r4,#0x54]
	ldr r0, [r0,#0x3c]
	mov r1, #1
	lsl r1, r1, #9
	tst r0, r1
	bne loc_802D3A0
loc_802D37A:
	bl sub_8010004
	ldr r3, dword_802D628 // =0xffff 
	cmp r0, r3
	beq loc_802D3A0
	mov r0, #4
	bl sub_800FFE4
	bl sub_800FB54
	ldr r3, dword_802D628 // =0xffff 
	cmp r0, r3
	beq loc_802D3A0
	mov r0, #0
	strh r0, [r6,#4]
	mov r0, #8
	strh r0, [r6]
	mov r0, #1
	b locret_802D3A6
loc_802D3A0:
	mov r0, #4
	strh r0, [r6]
	mov r0, #0
locret_802D3A6:
	pop {r4,pc}
	thumb_func_end sub_802D358

	thumb_local_start
sub_802D3A8:
	push {lr}
	mov r0, #8
	strh r0, [r6]
	ldrh r0, [r6,#4]
	cmp r0, #2
	bgt loc_802D3BE
	ldrb r0, [r5,#0x13]
	bl sub_810971A
	cmp r0, #0
	beq loc_802D3C6
loc_802D3BE:
	mov r0, #0
	strh r0, [r6,#4]
	mov r0, #2
	b locret_802D3C8
loc_802D3C6:
	mov r0, #0
locret_802D3C8:
	pop {pc}
	thumb_func_end sub_802D3A8

	thumb_local_start
sub_802D3CA:
	push {lr}
	bl object_getFlag // () -> int
	ldr r3, off_802D62C // =byte_802D410 
	mov r1, #0x10
	tst r0, r1
	beq loc_802D3DA
	ldr r3, off_802D630 // =byte_802D420
loc_802D3DA:
	bl sub_81096FA
	bl sub_802D430
	strb r0, [r7,#0x16]
	strb r1, [r7,#0x17]
	mov r0, #0
	str r0, [r7,#0x2c]
	str r0, [r7,#0x30]
	mov r1, #8
	mov r2, #2
	mov r0, #5
	bl sub_80116AE
	ldrh r0, [r6,#4]
	add r0, #1
	strh r0, [r6,#4]
	mov r0, #0
	strh r0, [r6]
	mov r0, #3
	pop {pc}
	.word 0, 0
	.byte 0, 0, 0, 0
byte_802D410: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
byte_802D420: .byte 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_802D3CA

	thumb_local_start
sub_802D430:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x20
	str r2, [sp]
	str r3, [sp,#4]
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	bl object_reservePanel
	add r7, sp, #8
	mov r4, #1
	mov r6, #0
loc_802D446:
	mov r0, r4
	bl sub_810971A
	cmp r0, #0
	beq loc_802D46C
	ldr r2, [sp]
	ldr r3, [sp,#4]
	push {r4}
	mov r4, #0
	bl sub_8015CC0
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7]
	cmp r0, #0
	beq loc_802D468
	add r6, #1
loc_802D468:
	add r7, #1
	pop {r4}
loc_802D46C:
	add r4, #1
	cmp r4, #3
	ble loc_802D446
	cmp r6, #0
	bne loc_802D4A4
	add r7, sp, #8
	mov r4, #1
	mov r6, #0
loc_802D47C:
	mov r0, r4
	bl sub_810971A
	cmp r0, #0
	beq loc_802D494
	mov r0, r4
	ldr r2, [sp]
	ldr r3, [sp,#4]
	bl object_getPanelsInRowFiltered
	add r6, r6, r0
	add r7, r7, r0
loc_802D494:
	add r4, #1
	cmp r4, #3
	ble loc_802D47C
	cmp r6, #0
	bne loc_802D4A4
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	b loc_802D4B6
loc_802D4A4:
	bl GetPositiveSignedRNG2
	mov r1, r6
	svc 6
	add r0, sp, #8
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_802D4B6:
	push {r0,r1}
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	bl object_removePanelReserve
	pop {r0,r1}
	add sp, sp, #0x20
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802D430

	thumb_func_start sub_802D4C6
sub_802D4C6:
	push {r4,r6,r7,lr}
	ldr r6, [r5,#0x58]
	sub r6, #0xf
	add r6, #0xff
	ldr r7, [r5,#0x58]
	add r7, #0xa0
	ldr r1, off_802D4E0 // =off_802D4E4 
	ldrb r0, [r6]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_802D4E0: .word off_802D4E4
off_802D4E4: .word sub_802D4F0+1
	.word sub_802D588+1
	.word sub_802D3CA+1
	thumb_func_end sub_802D4C6

	thumb_local_start
sub_802D4F0:
	push {r4,lr}
	ldrb r0, [r6,#8]
	cmp r0, #0
	bne loc_802D504
	mov r0, #1
	strb r0, [r6,#8]
	mov r0, #0x83
	add r0, #0xff
	bl sound_play // () -> void
loc_802D504:
	ldrh r0, [r6,#4]
	cmp r0, #3
	bgt loc_802D524
	bl sub_80E164A
	ldrb r2, [r5,#0x16]
	bl sub_80E7486
	mov r4, r0
	beq loc_802D524
	ldr r0, [r4,#0x54]
	ldr r0, [r0,#0x3c]
	mov r1, #1
	lsl r1, r1, #9
	tst r0, r1
	bne loc_802D56C
loc_802D524:
	mov r0, #0
	strh r0, [r6,#4]
	bl sub_802D5A8
	strh r0, [r7,#0x14]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldrb r1, [r4,#0xc]
	strb r1, [r7,#3]
	ldr r1, [r4,#0x10]
	str r1, [r7,#0xc]
	ldrh r1, [r4,#0x1a]
	strh r1, [r7,#8]
	ldrb r1, [r4,#0xa]
	mov r0, #0x80
	orr r1, r0
	strh r1, [r7,#0xa]
	ldrh r0, [r7,#0x14]
	ldr r1, dword_802D634 // =0x153 
	cmp r0, r1
	bne loc_802D55A
	// idx
	mov r0, #0x52 
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r1, [r0,#0x1a]
	strh r1, [r7,#8]
loc_802D55A:
	ldrb r0, [r4,#0xb]
	bl object_setAttack5
	ldrb r0, [r4,#0xf]
	strb r0, [r7,#0x1d]
	mov r0, #8
	strh r0, [r6]
	mov r0, #1
	b locret_802D586
loc_802D56C:
	mov r0, #4
	strh r0, [r6]
	mov r1, #0x2c 
	bl sub_8013774
	mov r1, #6
	cmp r0, #0xb
	beq loc_802D580
	cmp r0, #0xc
	bne loc_802D582
loc_802D580:
	mov r0, #2
loc_802D582:
	strh r0, [r6,#6]
	mov r0, #0
locret_802D586:
	pop {r4,pc}
	thumb_func_end sub_802D4F0

	thumb_local_start
sub_802D588:
	push {lr}
	ldrb r0, [r5,#0x13]
	bl sub_810971A
	cmp r0, #0
	beq loc_802D5A0
	ldrh r0, [r6,#6]
	sub r0, #1
	strh r0, [r6,#6]
	beq loc_802D5A0
	mov r0, #2
	b locret_802D5A6
loc_802D5A0:
	mov r0, #8
	strh r0, [r6]
	mov r0, #0
locret_802D5A6:
	pop {pc}
	thumb_func_end sub_802D588

	thumb_local_start
sub_802D5A8:
	push {r4,r6,lr}
	mov r1, #0x3e 
	bl sub_8013790
	mov r1, #0x64 
	svc 6
	mov r1, #0
	cmp r0, #1
	ble loc_802D5C2
	sub r1, r0, #1
	cmp r1, #9
	ble loc_802D5C2
	mov r1, #9
loc_802D5C2:
	mov r6, r1
	mov r0, #6
	mul r0, r1
	ldr r4, off_802D5E0 // =byte_802D5E4
	add r4, r4, r0
	bl GetPositiveSignedRNG2
	mov r1, #3
	cmp r6, #9
	bne loc_802D5D8
	mov r1, #6
loc_802D5D8:
	svc 6
	lsl r1, r1, #1
	ldrh r0, [r4,r1]
	pop {r4,r6,pc}
off_802D5E0: .word byte_802D5E4
byte_802D5E4: .byte 0x1, 0x0, 0x36, 0x0, 0x48, 0x0, 0x1, 0x0, 0x37, 0x0, 0x48, 0x0, 0x2
	.byte 0x0, 0x38, 0x0, 0x49, 0x0, 0xC, 0x0, 0x15, 0x0, 0x4C, 0x0, 0x3, 0x0
	.byte 0x19, 0x0, 0x4D, 0x0, 0xD, 0x0, 0x20, 0x0, 0x4E, 0x0, 0x10, 0x0, 0x29
	.byte 0x0, 0x4F, 0x0, 0xE, 0x0, 0x34, 0x0, 0x54, 0x0, 0xE, 0x0, 0x32, 0x0
	.byte 0x53, 0x1, 0x16, 0x0, 0x1A, 0x0, 0x21, 0x0, 0x2A, 0x0, 0x8, 0x0, 0x53
	.byte 0x1, 0x0, 0x0
dword_802D628: .word 0xFFFF
off_802D62C: .word byte_802D410
off_802D630: .word byte_802D420
dword_802D634: .word 0x153
	thumb_func_end sub_802D5A8

	thumb_func_start sub_802D638
sub_802D638:
	push {lr}
	// memBlock
	ldr r0, off_802D68C // =byte_2000070 
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end sub_802D638

	thumb_func_start sub_802D644
sub_802D644:
	ldr r1, off_802D690 // =byte_2000070 
	ldrb r2, [r1,r0]
	add r2, #1
	cmp r2, #0xff
	bgt locret_802D650
	strb r2, [r1,r0]
locret_802D650:
	mov pc, lr
	thumb_func_end sub_802D644

	thumb_func_start sub_802D652
sub_802D652:
	ldr r1, off_802D694 // =byte_2000070 
	ldrb r0, [r1,r0]
	mov pc, lr
	thumb_func_end sub_802D652

	thumb_local_start
sub_802D658:
	ldr r2, off_802D698 // =byte_2000070
	strb r1, [r2,r0]
	mov pc, lr
	thumb_func_end sub_802D658

	thumb_func_start sub_802D65E
sub_802D65E:
	push {r4,lr}
	mov r4, r0
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xd8
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_802D68A
	ldr r1, dword_802D69C // =0x196 
	add r1, r1, r4
	mov r0, r1
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne locret_802D68A
	cmp r4, #0xd
	beq locret_802D68A
	cmp r4, #0xa
	beq locret_802D68A
	mov r0, #0
	mov r1, #0xa
	mov r2, r4
	bl sub_800AB2E
locret_802D68A:
	pop {r4,pc}
off_802D68C: .word byte_2000070
off_802D690: .word byte_2000070
off_802D694: .word byte_2000070
off_802D698: .word byte_2000070
dword_802D69C: .word 0x196
	thumb_func_end sub_802D65E

	thumb_func_start sub_802D6A0
sub_802D6A0:
	push {r5-r7,lr}
	ldr r5, off_802D6C0 // =dword_203C970 
	mov r0, #0
	str r0, [r5]
	mov r0, #0
	bl sub_80103BC
	str r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
	mov r0, #1
	bl sub_80103BC
	str r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
	mov r0, #1
	strb r0, [r5,#0x4] // (byte_203C974 - 0x203c970)
	pop {r5-r7,pc}
	.byte 0, 0
off_802D6C0: .word dword_203C970
	thumb_func_end sub_802D6A0

	thumb_func_start sub_802D6C4
sub_802D6C4:
	push {r5,lr}
	ldr r5, off_802D710 // =dword_203C970 
	ldrb r0, [r5,#0x3] // (dword_203C970+3 - 0x203c970)
	tst r0, r0
	bne loc_802D6F4
	ldr r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
	bl sub_802DD1E
	tst r0, r0
	beq loc_802D6DE
	ldr r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
	bl sub_802DD10
loc_802D6DE:
	ldr r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
	bl sub_802DD1E
	tst r0, r0
	beq loc_802D6EE
	ldr r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
	bl sub_802DD10
loc_802D6EE:
	mov r0, #4
	strb r0, [r5,#0x3] // (dword_203C970+3 - 0x203c970)
	b loc_802D70C
loc_802D6F4:
	ldr r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
	bl sub_802DD4A
	tst r0, r0
	bne loc_802D70C
	ldr r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
	bl sub_802DD4A
	tst r0, r0
	bne loc_802D70C
	mov r0, #0
	strb r0, [r5,#0x4] // (byte_203C974 - 0x203c970)
loc_802D70C:
	ldrb r0, [r5,#0x4] // (byte_203C974 - 0x203c970)
	pop {r5,pc}
off_802D710: .word dword_203C970
	thumb_func_end sub_802D6C4

	thumb_func_start sub_802D714
sub_802D714:
	push {lr}
	ldr r1, off_802D728 // =off_802D72C 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_801BCD0
	pop {pc}
	.balign 4, 0x00
off_802D728: .word off_802D72C
off_802D72C: .word sub_802D738+1
	.word sub_802D7A0+1
	.word sub_802D8F0+1
	thumb_func_end sub_802D714

	thumb_local_start
sub_802D738:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_802D78A
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	bl object_updateCollisionPanels
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	ldr r0, dword_802D798 // =0x1c41 
	bl object_clearFlag // (int bitfield) -> void
	ldr r1, dword_802D79C // =0x10 
	bl object_clearFlag2
	mov r0, #4
	bl object_setAnimation
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_802D78A:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_802D796
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_802D796:
	pop {pc}
dword_802D798: .word 0x1C41
dword_802D79C: .word 0x10
	thumb_func_end sub_802D738

	thumb_local_start
sub_802D7A0:
	push {r4,lr}
	mov r1, #0x2c 
	bl sub_8013774
	bl sub_8011384
	bl sub_8011020
	bl sub_80143A6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x29 
	bl sub_801382E
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	cmp r0, r1
	bne loc_802D7E8
	ldrh r2, [r5,#oBattleObject_HP]
	mov r1, #0x40 
	bl sub_8013764
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_8013682 // (int idx) -> void*
	ldrb r1, [r5,#oBattleObject_Alliance]
	mov r2, #0x64 
	mul r2, r1
	ldr r1, off_802D8EC // =unk_2034A60 
	add r1, r1, r2
	mov r2, #0x64 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
loc_802D7E8:
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x29 
	bl sub_801382E
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802DCCC
	pop {r1}
	cmp r0, r1
	bne loc_802D81A
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_8013682 // (int idx) -> void*
	mov r1, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r2, #0x64 
	mul r2, r0
	ldr r0, off_802D8EC // =unk_2034A60 
	add r0, r0, r2
	mov r2, #0x64 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	b loc_802D822
loc_802D81A:
	mov r1, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl init_8013B64 // (int idx, int a2) -> void
loc_802D822:
	bl sub_801393A
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x29 
	bl sub_80136CC
	strb r0, [r4,#oAIData_AIIndex]
	add r0, #0xff
	add r0, #0xa1
	strh r0, [r5,#oBattleObject_NameID]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPalette // (int pallete) -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r1, #0x29 
	bl sub_8013774
	cmp r0, #0
	bne loc_802D88C
	mov r1, #0x2c 
	bl sub_8013774
	bl sub_8011268
	b loc_802D890
loc_802D88C:
	bl sub_8010DD0
loc_802D890:
	bl sub_800F378
	bl sub_801A264
	bl sub_80143A6
	mov r1, #0x29 
	bl sub_8013774
	cmp r0, #0
	bne loc_802D8B8
	mov r1, #0x42 
	bl sub_8013790
	push {r0}
	mov r1, #0x40 
	bl sub_8013790
	pop {r1}
	b loc_802D8C0
loc_802D8B8:
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_802DD70
	mov r1, r0
loc_802D8C0:
	strh r0, [r5,#oBattleObject_HP]
	strh r1, [r5,#oBattleObject_MaxHP]
	mov r0, #1
	bl sub_801E0D0
	bl sub_801DBD4
	bl sub_800EA0E
	ldr r0, off_802DCA4 // =0x8000000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801086C
	bl sub_8014216
	bl sub_800EB08
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	.balign 4, 0x00
off_802D8EC: .word unk_2034A60
	thumb_func_end sub_802D7A0

	thumb_local_start
sub_802D8F0:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_802D900
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_802D900:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_802D924
	mov r0, #0
	bl sub_801E0D0
	ldr r0, dword_802DCA8 // =0x4000 
	bl sub_8010312
	ldr r0, off_802DCAC // =0x1800 
	bl sub_801031C
	ldr r0, dword_802DCB0 // =0x8600 
	bl sub_800FFEE
	bl object_exitAttackState
locret_802D924:
	pop {pc}
	thumb_func_end sub_802D8F0

	thumb_func_start sub_802D926
sub_802D926:
	push {lr}
	ldr r1, off_802D940 // =off_802D944 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	cmp r0, #0
	bne locret_802D93C
	bl sub_801BCD0
locret_802D93C:
	pop {pc}
	.byte 0, 0
off_802D940: .word off_802D944
off_802D944: .word sub_802D950+1
	.word sub_802D9B0+1
	.word sub_802DA78+1
	thumb_func_end sub_802D926

	thumb_local_start
sub_802D950:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_802D9A2
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	bl object_updateCollisionPanels
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	ldr r0, dword_802DCB4 // =0x1c41 
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x10
	bl object_clearFlag2
	mov r0, #4
	bl object_setAnimation
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	str r0, [r1,#oAIData_Unk_5c]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_802D9A2:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_802D9AE
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_802D9AE:
	pop {pc}
	thumb_func_end sub_802D950

	thumb_local_start
sub_802D9B0:
	push {r4,lr}
	bl sub_8011020
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_8013682 // (int idx) -> void*
	mov r1, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r2, #0x64 
	mul r2, r0
	ldr r0, off_802DCB8 // =unk_2034A60 
	add r0, r0, r2
	mov r2, #0x64 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x29 
	bl sub_80136CC
	strb r0, [r4,#oAIData_AIIndex]
	add r0, #0xff
	add r0, #0xa1
	strh r0, [r5,#oBattleObject_NameID]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPalette // (int pallete) -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sub_8010DD0
	mov r1, #0x2c 
	bl sub_8013774
	mov r2, #0
	bl sub_8011268
	bl sub_801A264
	bl sub_80144C0
	bl sub_80143B4
	mov r1, #0x40 
	bl sub_8013790
	strh r0, [r5,#oBattleObject_HP]
	mov r1, #0x42 
	bl sub_8013790
	strh r0, [r5,#oBattleObject_MaxHP]
	mov r0, #1
	bl sub_801E0D0
	bl sub_801DBD4
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_80108FC
	bl sub_800EA0E
	ldr r0, off_802DCA4 // =0x8000000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801086C
	bl sub_8014216
	bl sub_800EB08
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	thumb_func_end sub_802D9B0

	thumb_local_start
sub_802DA78:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_802DA88
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_802DA88:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_802DAA6
	mov r0, #0
	bl sub_801E0D0
	ldr r0, dword_802DCBC // =0x6800 
	bl sub_801031C
	ldr r0, dword_802DCC0 // =0x4008600 
	bl sub_800FFEE
	bl object_exitAttackState
locret_802DAA6:
	pop {pc}
	thumb_func_end sub_802DA78

	thumb_local_start
sub_802DAA8:
	push {lr}
	ldr r1, off_802DAB8 // =off_802DABC 
	ldrb r0, [r7]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_802DAB8: .word off_802DABC
off_802DABC: .word sub_802DACC+1
	.word sub_802DB58+1
	.word sub_802DB80+1
	.word sub_802DC66+1
	thumb_func_end sub_802DAA8

	thumb_local_start
sub_802DACC:
	push {lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#1]
	tst r0, r0
	bne loc_802DB4A
	mov r0, #4
	bl battle_setFlags
	ldrb r0, [r5,#0x14]
	strb r0, [r5,#0x12]
	ldrb r1, [r5,#0x15]
	strb r1, [r5,#0x13]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0
	str r0, [r5,#0x3c]
	bl object_updateCollisionPanels
	bl sub_800F46C
	strb r0, [r5,#0x17]
	bl sub_800F2C6
	ldrb r0, [r5,#0x14]
	ldrb r1, [r5,#0x15]
	bl object_reservePanel
	bl object_clearCollisionRegion // () -> void
	ldr r0, dword_802DCB4 // =0x1c41 
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x10
	bl object_clearFlag2
	mov r0, #2
	bl object_setAnimation
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #3
	bl SpawnT4BattleObjectWithId0
	bl SpawnT4BattleObjectWithId0
	mov r0, #0
	str r0, [r5,#0x4c]
	ldr r1, [r5,#0x58]
	str r0, [r1,#0x68]
	ldr r1, [r5,#0x58]
	mov r0, #0
	str r0, [r1,#0x5c]
	mov r0, #0x6c 
	bl sound_play // () -> void
	mov r0, #0xa
	strh r0, [r7,#0x10]
	mov r0, #4
	strb r0, [r7,#1]
loc_802DB4A:
	ldrh r0, [r7,#0x10]
	sub r0, #1
	strh r0, [r7,#0x10]
	bgt locret_802DB56
	mov r0, #4
	strh r0, [r7]
locret_802DB56:
	pop {pc}
	thumb_func_end sub_802DACC

	thumb_local_start
sub_802DB58:
	push {lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#1]
	tst r0, r0
	bne loc_802DB72
	mov r0, #4
	bl object_setAnimation
	mov r0, #4
	strh r0, [r7,#0x10]
	mov r0, #4
	strb r0, [r7,#1]
loc_802DB72:
	ldrh r0, [r7,#0x10]
	sub r0, #1
	strh r0, [r7,#0x10]
	bgt locret_802DB7E
	mov r0, #8
	strh r0, [r7]
locret_802DB7E:
	pop {pc}
	thumb_func_end sub_802DB58

	thumb_local_start
sub_802DB80:
	push {r4,lr}
	bl sub_8011020
	ldrb r0, [r5,#0x16]
	bl sub_8013682 // (int idx) -> void*
	mov r1, r0
	ldrb r0, [r5,#0x16]
	mov r2, #0x64 
	mul r2, r0
	ldr r0, off_802DCC4 // =unk_2034A60 
	add r0, r0, r2
	mov r2, #0x64 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r4, [r5,#0x58]
	ldrb r0, [r5,#0x16]
	mov r1, #0x29 
	bl sub_80136CC
	strb r0, [r4,#1]
	add r0, #0xff
	add r0, #0xa1
	strh r0, [r5,#0x28]
	mov r1, #0x2c 
	bl sub_8013774
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #3
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPalette // (int pallete) -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sub_8010DD0
	mov r1, #0x2c 
	bl sub_8013774
	mov r2, #0
	bl sub_8011268
	bl sub_801A264
	bl sub_80144C0
	bl sub_80143B4
	mov r1, #0x40 
	bl sub_8013790
	strh r0, [r5,#0x24]
	mov r1, #0x42 
	bl sub_8013790
	strh r0, [r5,#0x26]
	mov r0, #1
	bl sub_801E0D0
	bl sub_801DBD4
	ldrb r0, [r5,#0x16]
	bl sub_80108FC
	bl sub_800EA0E
	bl sub_801A66C
	ldrb r0, [r5,#0x14]
	ldrb r1, [r5,#0x15]
	bl object_removePanelReserve
	ldr r0, off_802DCA4 // =0x8000000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801086C
	bl sub_8014216
	bl sub_800EB08
	ldrb r0, [r5,#0x16]
	bl battle_networkInvert
	tst r0, r0
	beq loc_802DC60
	mov r0, #0
	mov r1, #0
	bl sub_801DC7C
loc_802DC60:
	mov r0, #0xc
	strh r0, [r7]
	pop {r4,pc}
	thumb_func_end sub_802DB80

	thumb_local_start
sub_802DC66:
	push {lr}
	ldrb r0, [r7,#1]
	tst r0, r0
	bne loc_802DC7C
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #4
	strh r0, [r7,#0x10]
	mov r0, #4
	strb r0, [r7,#1]
loc_802DC7C:
	ldrh r0, [r7,#0x10]
	sub r0, #1
	strh r0, [r7,#0x10]
	bgt locret_802DCA0
	mov r0, #0
	bl sub_801E0D0
	ldr r0, dword_802DCBC // =0x6800 
	bl sub_801031C
	ldr r0, dword_802DCC8 // =0xc008600 
	bl sub_800FFEE
	mov r0, #4
	bl battle_clearFlags
	bl object_exitAttackState
locret_802DCA0:
	pop {pc}
	.balign 4, 0x00
off_802DCA4: .word 0x8000000
dword_802DCA8: .word 0x4000
off_802DCAC: .word 0x1800
dword_802DCB0: .word 0x8600
dword_802DCB4: .word 0x1C41
off_802DCB8: .word unk_2034A60
dword_802DCBC: .word 0x6800
dword_802DCC0: .word 0x4008600
off_802DCC4: .word unk_2034A60
dword_802DCC8: .word 0xC008600
	thumb_func_end sub_802DC66

	thumb_local_start
sub_802DCCC:
	mov r1, #0x10
	mul r0, r1
	ldr r1, off_802DE40 // =unk_203A980 
	add r1, r1, r0
	ldrb r0, [r1,#4]
	mov pc, lr
	thumb_func_end sub_802DCCC

	thumb_local_start
sub_802DCD8:
	ldr r1, off_802DE44 // =byte_203CED0
	strb r0, [r1,#0x4] // (dword_203CED4 - 0x203ced0)
	mov pc, lr
	thumb_func_end sub_802DCD8

	thumb_func_start sub_802DCDE
sub_802DCDE:
	push {r5,lr}
	mov r5, r0
	beq locret_802DCEA
	ldr r0, off_802DE48 // =0x4000000 
	bl sub_800FFE4
locret_802DCEA:
	pop {r5,pc}
	thumb_func_end sub_802DCDE

	thumb_func_start sub_802DCEC
sub_802DCEC:
	push {r5,r7,lr}
	mov r7, #0
	mov r5, r0
	beq loc_802DD0C
	mov r7, #1
	bl sub_801032C
	ldr r1, off_802DE4C // =0x1000 
	tst r0, r1
	bne loc_802DD0C
	bl sub_800FFFE
	ldr r1, off_802DE48 // =0x4000000 
	tst r0, r1
	bne loc_802DD0C
	mov r7, #0
loc_802DD0C:
	mov r0, r7
	pop {r5,r7,pc}
	thumb_func_end sub_802DCEC

	thumb_local_start
sub_802DD10:
	push {r5,lr}
	mov r5, r0
	beq locret_802DD1C
	ldr r0, off_802DE50 // =0x8000000 
	bl sub_800FFE4
locret_802DD1C:
	pop {r5,pc}
	thumb_func_end sub_802DD10

	thumb_local_start
sub_802DD1E:
	push {r5,r7,lr}
	mov r7, #0
	mov r5, r0
	beq loc_802DD26
loc_802DD26:
	mov r0, r7
	pop {r5,r7,pc}
	thumb_func_end sub_802DD1E

	thumb_func_start sub_802DD2A
sub_802DD2A:
	push {r7,lr}
	mov r7, #0
	mov r1, #0x29 
	bl sub_8013774
	cmp r0, #0
	beq loc_802DD46
	bl sub_801032C
	ldr r1, dword_802DE54 // =0x4000 
	tst r0, r1
	beq loc_802DD46
	ldr r1, off_802DE58 // =0x2000 
	mov r7, #1
loc_802DD46:
	mov r0, r7
	pop {r7,pc}
	thumb_func_end sub_802DD2A

	thumb_local_start
sub_802DD4A:
	push {r5,lr}
	mov r5, r0
	beq locret_802DD60
	bl sub_801032C
	mov r2, #0
	ldr r1, off_802DE58 // =0x2000 
	tst r0, r1
	beq loc_802DD5E
	mov r2, #1
loc_802DD5E:
	mov r0, r2
locret_802DD60:
	pop {r5,pc}
	thumb_func_end sub_802DD4A

	thumb_local_start
sub_802DD62:
	ldr r1, [r0,#0x58]
	ldrb r2, [r1,#0x18]
	tst r2, r2
	beq locret_802DD6E
	sub r2, #1
	strb r2, [r1,#0x18]
locret_802DD6E:
	mov pc, lr
	thumb_func_end sub_802DD62

	thumb_local_start
sub_802DD70:
	push {r4,lr}
	mov r4, #0xe
	mul r4, r0
	mov r0, r1
	add r0, r0, r0
	add r4, r4, r0
	ldr r1, off_802DD84 // =byte_802DD88
	ldrh r0, [r1,r4]
	pop {r4,pc}
	.balign 4, 0x00
off_802DD84: .word byte_802DD88
byte_802DD88: .byte 0xE7, 0x3, 0xE7, 0x3, 0xE7, 0x3, 0xE7, 0x3, 0xE7, 0x3, 0xE7
	.byte 0x3, 0xE7, 0x3, 0x64, 0x0, 0x96, 0x0, 0xB4, 0x0, 0xC8, 0x0
	.byte 0xE6, 0x0, 0xFA, 0x0, 0x2C, 0x1, 0x82, 0x0, 0x82, 0x0, 0x82
	.byte 0x0, 0x96, 0x0, 0xB4, 0x0, 0xC8, 0x0, 0xFA, 0x0, 0x96, 0x0
	.byte 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0xB4, 0x0, 0xE6
	.byte 0x0, 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0xB4, 0x0
	.byte 0xC8, 0x0, 0xFA, 0x0, 0xC8, 0x0, 0xC8, 0x0, 0xFA, 0x0, 0x18
	.byte 0x1, 0x2C, 0x1, 0x4A, 0x1, 0xC2, 0x1, 0x96, 0x0, 0x96, 0x0
	.byte 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0xC8, 0x0, 0x64
	.byte 0x0, 0x96, 0x0, 0xB4, 0x0, 0xC8, 0x0, 0xE6, 0x0, 0xFA, 0x0
	.byte 0x2C, 0x1, 0x64, 0x0, 0x96, 0x0, 0x82, 0x0, 0x96, 0x0, 0xB4
	.byte 0x0, 0xC8, 0x0, 0xFA, 0x0, 0xB4, 0x0, 0xB4, 0x0, 0xB4, 0x0
	.byte 0xB4, 0x0, 0xB4, 0x0, 0xB4, 0x0, 0xE6, 0x0, 0x96, 0x0, 0x96
	.byte 0x0, 0x96, 0x0, 0x96, 0x0, 0xB4, 0x0, 0xC8, 0x0, 0xFA, 0x0
	.byte 0xC8, 0x0, 0xC8, 0x0, 0xFA, 0x0, 0x18, 0x1, 0x2C, 0x1, 0x4A
	.byte 0x1, 0xC2, 0x1, 0x96, 0x0, 0x96, 0x0, 0x96, 0x0, 0x96, 0x0
	.byte 0x96, 0x0, 0x96, 0x0, 0xC8, 0x0, 0x0, 0x0
off_802DE40: .word unk_203A980
off_802DE44: .word byte_203CED0
off_802DE48: .word 0x4000000
off_802DE4C: .word 0x1000
off_802DE50: .word 0x8000000
dword_802DE54: .word 0x4000
off_802DE58: .word 0x2000
	thumb_func_end sub_802DD70

	thumb_func_start sub_802DE5C
sub_802DE5C:
	push {lr}
	bl sub_802E09A
	beq locret_802DE70
	mov r0, #0
	bl sub_802E2C4
	mov r0, #1
	bl sub_802E2C4
locret_802DE70:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_802DE5C

	thumb_local_start
sub_802DE74:
	push {r7,lr}
	ldrb r0, [r5,#0x16]
	bl sub_8010018
	mov r7, r0
	ldrb r0, [r7,#1]
	tst r0, r0
	beq loc_802DEA0
	sub r0, #1
	strb r0, [r7,#1]
	add r2, r7, #2
	mov r3, #0
loc_802DE8C:
	ldrh r0, [r2,#2]
	strh r0, [r2]
	ldrh r0, [r2,#0xe]
	strh r0, [r2,#0xc]
	ldrh r0, [r2,#0x1a]
	strh r0, [r2,#0x18]
	add r2, #2
	add r3, #1
	cmp r3, #5
	blt loc_802DE8C
loc_802DEA0:
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	mov r1, #1
	mov r2, #0x53 
	strb r1, [r0,r2]
	pop {r7,pc}
	thumb_func_end sub_802DE74

	thumb_local_start
sub_802DEAE:
	push {r4,lr}
	ldr r4, dword_802DED0 // =0xffff 
	ldr r1, [r5,#0x58]
	ldrb r1, [r1,#0x19]
	tst r1, r1
	bne loc_802DECC
	bl object_getFlag // () -> int
	ldr r1, off_802DED4 // =0x1000 
	tst r0, r1
	bne loc_802DECC
	ldrb r0, [r5,#0x16]
	bl sub_8010018
	ldrh r4, [r0,#2]
loc_802DECC:
	mov r0, r4
	pop {r4,pc}
dword_802DED0: .word 0xFFFF
off_802DED4: .word 0x1000
	thumb_func_end sub_802DEAE

	thumb_local_start
sub_802DED8:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	mov r6, r0
	ldrb r0, [r5,#0x16]
	bl sub_8010018
	ldrh r2, [r0,#0x1a]
	ldrh r1, [r0,#0xe]
	ldrh r0, [r0,#2]
	ldr r3, dword_802DF30 // =0xffff 
	cmp r0, r3
	beq locret_802DF2E
	push {r0}
	mov r7, r2
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldrb r0, [r4,#9]
	mov r1, #2
	tst r0, r1
	beq loc_802DF14
	ldrh r3, [r6,#0x36]
	add r7, r7, r3
	mov r1, #4
	tst r0, r1
	beq loc_802DF14
	ldrh r3, [r6,#0x38]
	add r7, r7, r3
loc_802DF14:
	mov r2, r7
	pop {r0}
	push {r0,r2}
	ldrb r1, [r5,#0x16]
	bl sub_80109A4
	mov r1, r0
	pop {r0,r2}
	push {r0-r2}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r3, r0
	pop {r0-r2}
locret_802DF2E:
	pop {r4,r6,r7,pc}
dword_802DF30: .word 0xFFFF
	thumb_func_end sub_802DED8

	thumb_local_start
sub_802DF34:
	push {r4,r7,lr}
	push {r1,r2}
	ldr r7, [r5,#0x58]
	add r7, #0xa0
	strh r0, [r7,#0x14]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	pop {r1,r2}
	strh r1, [r7,#8]
	strh r2, [r7,#6]
	ldrb r1, [r0,#0xa]
	strh r1, [r7,#0xa]
	ldrh r1, [r0,#4]
	strh r1, [r7,#2]
	ldr r1, [r0,#0x10]
	str r1, [r7,#0xc]
	ldrb r1, [r0,#0xc]
	strb r1, [r7,#3]
	ldrb r1, [r0,#0x14]
	strb r1, [r7,#5]
	mov r1, #0
	strh r1, [r7]
	strb r1, [r7,#4]
	ldrb r0, [r0,#0xb]
	bl object_setAttack0
	mov r0, #0x40 
	bl sub_801DACC
	ldrb r0, [r5,#0x16]
	ldrh r1, [r7,#0x14]
	bl sub_8021D14
	ldrb r0, [r4,#9]
	mov r1, #4
	tst r0, r1
	beq locret_802DF8A
	ldrb r0, [r5,#0x16]
	mov r1, #6
	mov r2, #1
	bl sub_800AB46
locret_802DF8A:
	pop {r4,r7,pc}
	thumb_func_end sub_802DF34

	thumb_local_start
sub_802DF8C:
	push {r7,lr}
	push {r1,r2}
	ldr r7, [r5,#0x58]
	add r7, #0xa0
	strh r0, [r7,#0x14]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	pop {r1,r2}
	strh r1, [r7,#8]
	strh r2, [r7,#6]
	ldrb r1, [r0,#0xa]
	strh r1, [r7,#0xa]
	ldrh r1, [r0,#4]
	strh r1, [r7,#2]
	ldr r1, [r0,#0x10]
	str r1, [r7,#0xc]
	ldrb r1, [r0,#0xc]
	strb r1, [r7,#3]
	ldrb r1, [r0,#0x14]
	strb r1, [r7,#5]
	mov r1, #0
	strh r1, [r7]
	strb r1, [r7,#4]
	ldrb r0, [r0,#0xb]
	bl object_setAttack0
	mov r0, #0x40 
	bl sub_801DACC
	pop {r7,pc}
	thumb_func_end sub_802DF8C

	thumb_func_start sub_802DFC8
sub_802DFC8:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	mov r4, r0
	mov r1, #0xe8
	// size
	add r1, r1, r1
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_800A8F8
	beq locret_802DFFA
	mov r0, #1
	strb r0, [r4]
	mov r0, #0xff
	strb r0, [r4,#0xb]
	mov r0, #1
	strb r0, [r4,#0x10]
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r4,#0x11]
	mov r0, #3
	strb r0, [r4,#0xe]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E07C
locret_802DFFA:
	pop {r4,pc}
	thumb_func_end sub_802DFC8

	thumb_func_start sub_802DFFC
sub_802DFFC:
	push {r4,lr}
	// memBlock
	ldr r0, off_802E208 // =unk_2036120 
	mov r1, #0xe8
	lsl r1, r1, #2
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, off_802E20C // =eT1BattleObject0 
	ldr r1, off_802E210 // =unk_20362F0 
	str r0, [r1,#0x44] // (dword_2036334 - 0x20362f0)
	bl sub_802E544
	pop {r4,pc}
	thumb_func_end sub_802DFFC

	thumb_func_start sub_802E014
sub_802E014:
	push {r4,lr}
	// memBlock
	ldr r0, off_802E214 // =unk_2036120 
	// size
	mov r1, #0x60 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	// memBlock
	ldr r0, off_802E218 // =unk_20362F0 
	// size
	mov r1, #0x60 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, off_802E21C // =eT1BattleObject0 
	ldr r1, off_802E220 // =unk_20362F0 
	str r0, [r1,#0x44] // (dword_2036334 - 0x20362f0)
	bl sub_802E544
	pop {r4,pc}
	thumb_func_end sub_802E014

	thumb_func_start sub_802E032
sub_802E032:
	push {lr}
	push {r1}
	bl sub_802E070
	pop {r1}
	mov r2, r0
	ldrh r0, [r2,#0x28]
	add r0, r0, r1
	ldr r1, dword_802E224 // =0x4000 
	cmp r0, r1
	ble loc_802E04A
	mov r0, r1
loc_802E04A:
	strh r0, [r2,#0x28]
	pop {pc}
	thumb_func_end sub_802E032

	thumb_func_start sub_802E04E
sub_802E04E:
	push {lr}
	push {r1}
	bl sub_802E070
	pop {r1}
	mov r2, r0
	ldrh r0, [r2,#0x28]
	sub r0, r0, r1
	bge loc_802E062
	mov r0, #0
loc_802E062:
	strh r0, [r2,#0x28]
	pop {pc}
	thumb_func_end sub_802E04E

	thumb_func_start sub_802E066
sub_802E066:
	push {lr}
	bl sub_802E070
	ldrh r0, [r0,#0x28]
	pop {pc}
	thumb_func_end sub_802E066

	thumb_func_start sub_802E070
sub_802E070:
	mov r1, #0xe8
	add r1, r1, r1
	mul r0, r1
	ldr r1, off_802E228 // =unk_2036120 
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_802E070

	thumb_local_start
sub_802E07C:
	push {lr}
	bl sub_802E070
	mov r1, #0
	strb r1, [r0,#3]
	strh r1, [r0,#0x2a]
	mov r2, #0x50 
	strb r1, [r0,r2]
	mvn r1, r1
	str r1, [r0,#0x18]
	str r1, [r0,#0x1c]
	str r1, [r0,#0x20]
	mov r1, #0xb4
	strb r1, [r0,#2]
	pop {pc}
	thumb_func_end sub_802E07C

	thumb_func_start sub_802E09A
sub_802E09A:
	push {lr}
	bl battle_getFlags
	mov r1, #0x40 
	and r0, r1
	pop {pc}
	thumb_func_end sub_802E09A

	thumb_local_start
sub_802E0A6:
	push {lr}
	bl GetPositiveSignedRNG2
	mov r4, #7
	and r4, r0
	mov r1, #0x29 
	bl sub_8013774
	ldr r1, off_802E0C0 // =byte_802E0C4
	ldrb r0, [r1,r0]
	add r0, r0, r4
	pop {pc}
	.byte 0, 0
off_802E0C0: .word byte_802E0C4
byte_802E0C4: .byte 0xC, 0x5, 0x1E, 0xA, 0x5, 0xF, 0x14, 0x3, 0x14, 0x1E, 0x1E
	.byte 0xA, 0x28, 0x0, 0x0, 0x0
	thumb_func_end sub_802E0A6

	thumb_local_start
sub_802E0D4:
	push {r7,lr}
	ldr r7, [r5,#0x58]
	add r7, #0xa0
	push {r0-r2}
	mov r1, #0x29
	bl sub_8013774
	mov r3, r0
	pop {r0-r2}
	strb r0, [r7,#0x16]
	strb r1, [r7,#0x17]
	strh r2, [r7,#0x18]
	mov r0, #2
	strb r0, [r7,#3]
	mov r0, #0x10
	bl object_setAttack4
	bl sub_80EB04C
	pop {r7,pc}
	strb r0, [r7,#0x16]
	strb r1, [r7,#0x17]
	strh r2, [r7,#0x18]
	mov r0, #2
	strb r0, [r7,#3]
	mov r0, #0x3f
	bl object_setAttack4
	bl sub_80EB234
	pop {r7,pc}
	thumb_func_end sub_802E0D4

	thumb_func_start sub_802E112
sub_802E112:
	push {lr}
	bl sub_802D234
	cmp r0, #1
	beq locret_802E154
	cmp r0, #7
	beq locret_802E154
	cmp r0, #9
	beq locret_802E154
	cmp r0, #6
	beq locret_802E154
	bl sub_802D246 // () -> int
	ldr r1, dword_802E22C // =0x200000 
	tst r0, r1
	bne locret_802E154
	bl notZero_eByte200AD04
	cmp r0, #0
	bne loc_802E14E
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_802E154
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x22 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_802E154
loc_802E14E:
	mov r0, #0x40 
	bl battle_setFlags
locret_802E154:
	pop {pc}
	thumb_func_end sub_802E112

	thumb_func_start sub_802E156
sub_802E156:
	push {r4,lr}
	bl sub_802E09A
	beq locret_802E170
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	bl sub_802E070
	mov r4, r0
	ldrh r0, [r0,#0x28]
	bl sub_801DFA2
locret_802E170:
	pop {r4,pc}
	.balign 4, 0x00
	.word DebugStr802E180
	.word DebugStr802E187
	.word DebugStr802E1A2
DebugStr802E180:
    .hword 0x20D
    .asciz "%04x"
DebugStr802E187:
    .hword 0x219
    .ascii "%04x\n"
    .ascii "%04x\n"
    .ascii "%04x\n"
    .ascii "%04x\n"
    .asciz "%04x"
DebugStr802E1A2:
    .hword 0x814
    .asciz "%02x,%02x,%04x"
	.byte 0x0
	thumb_func_end sub_802E156

	thumb_local_start
sub_802E1B4:
	ldr r2, off_802E230 // =0x139 
	cmp r0, r2
	ble locret_802E1BC
	mov r0, #0
locret_802E1BC:
	mov pc, lr
	thumb_func_end sub_802E1B4

	thumb_func_start sub_802E1BE
sub_802E1BE:
	push {r7,lr}
	ldr r7, off_802E234 // =0x1e0 
	bl sub_800A8F8
	tst r0, r0
	beq loc_802E1CC
	ldr r7, off_802E238 // =0x168 
loc_802E1CC:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	strb r4, [r0,#0xb]
	strh r7, [r0,#0x2e]
	pop {r7,pc}
	thumb_func_end sub_802E1BE

	thumb_func_start sub_802E1D8
sub_802E1D8:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	ldrh r1, [r0,#0x30]
	cmp r1, #0
	beq locret_802E1EA
	sub r1, #1
	strh r1, [r0,#0x30]
locret_802E1EA:
	pop {pc}
	thumb_func_end sub_802E1D8

	thumb_local_start
sub_802E1EC:
	push {lr}
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	mov r1, #0
	mov r2, #0x40 
	strb r1, [r0,r2]
	mov r2, #0x41 
	strb r1, [r0,r2]
	ldr r0, dword_802E23C // =0x1f00000 
	bl sub_800FFEE
	pop {pc}
	.balign 4, 0x00
off_802E208: .word unk_2036120
off_802E20C: .word eT1BattleObject0
off_802E210: .word unk_20362F0
off_802E214: .word unk_2036120
off_802E218: .word unk_20362F0
off_802E21C: .word eT1BattleObject0
off_802E220: .word unk_20362F0
dword_802E224: .word 0x4000
off_802E228: .word unk_2036120
dword_802E22C: .word 0x200000
off_802E230: .word 0x139
off_802E234: .word 0x1E0
off_802E238: .word 0x168
dword_802E23C: .word 0x1F00000
	thumb_func_end sub_802E1EC

	thumb_func_start sub_802E240
sub_802E240:
	push {lr}
	lsl r0, r0, #2
	ldr r1, off_802E25C // =off_802E260 
	// src
	ldr r0, [r1,r0]
	// dest
	ldr r1, off_802E280 // =unk_2008170 
	// halfwordCount
	mov r2, #0x3c 
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {pc}
	thumb_func_end sub_802E240

	thumb_local_start
sub_802E252:
	lsl r0, r0, #2
	ldr r1, off_802E25C // =off_802E260 
	ldr r0, [r1,r0]
	mov pc, lr
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
	thumb_func_end sub_802E252

	thumb_local_start
sub_802E284:
	lsl r0, r0, #2
	ldr r1, off_802E28C // =off_802E290 
	ldr r0, [r1,r0]
	mov pc, lr
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
	thumb_func_end sub_802E284

	thumb_local_start
sub_802E2C4:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r6, r0
	bl sub_802E070
	mov r7, r0
	ldrb r0, [r7]
	tst r0, r0
	bne loc_802E2D8
	b loc_802E40A
loc_802E2D8:
	mov r0, r6
	bl sub_802E558
	str r1, [sp]
	ldr r1, dword_802E428 // =0x1ff 
	and r0, r1
	strh r0, [r7,#0x24]
	bl battle_isPaused
	tst r0, r0
	beq loc_802E2F0
	b loc_802E406
loc_802E2F0:
	bl battle_isTimeStop
	beq loc_802E2F8
	b loc_802E406
loc_802E2F8:
	mov r0, r6
	bl sub_802E69C
	mov r1, r0
	mov r0, r6
	bl sub_802E032
	bl battle_isBattleOver
	tst r0, r0
	beq loc_802E310
	b loc_802E406
loc_802E310:
	mov r4, #1
	mov r0, #0x50 
	ldrb r0, [r7,r0]
	tst r0, r0
	bne loc_802E31C
	mov r4, #0
loc_802E31C:
	ldrh r0, [r7,#0x24]
	tst r0, r0
	bne loc_802E324
	b loc_802E406
loc_802E324:
	ldrh r1, [r7,#0x26]
	cmp r0, r1
	bne loc_802E32C
	b loc_802E406
loc_802E32C:
	// idx
	ldrh r0, [r7,#0x24]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r5, r0
	tst r4, r4
	bne loc_802E396
	ldrb r0, [r5,#9]
	mov r1, #0x20 
	tst r0, r1
	beq loc_802E344
	mov r0, #1
	b loc_802E346
loc_802E344:
	ldrb r0, [r5,#7]
loc_802E346:
	add r0, r0, r0
	ldr r1, off_802E414 // =byte_802E430 
	ldrh r2, [r1,r0]
	ldrh r1, [r7,#0x28]
	cmp r1, r2
	blt loc_802E37A
	ldr r0, [sp]
	cmp r0, #0
	bne loc_802E366
	mov r0, r6
	ldrh r1, [r7,#0x24]
	bl sub_802E82A
	cmp r0, #0xff
	bne loc_802E366
	b loc_802E37A
loc_802E366:
	ldrh r1, [r7,#0x24]
	mov r0, r6
	ldr r2, [sp]
	bl sub_802E62A
	tst r0, r0
	beq loc_802E37A
	b loc_802E406
	mov r1, #0
	b loc_802E37C
loc_802E37A:
	mov r1, #1
loc_802E37C:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	cmp r0, r6
	bne loc_802E406
	tst r1, r1
	beq loc_802E390
	mov r0, #0x69 
	bl sound_play // () -> void
loc_802E390:
	bl sub_801EC44
	b loc_802E406
loc_802E396:
	ldrh r0, [r7,#0x28]
	ldr r1, off_802E418 // =0x1500 
	cmp r0, r1
	blt loc_802E37A
	ldr r2, [sp]
	cmp r2, #0
	bne loc_802E3C2
	mov r0, r6
	ldrh r1, [r7,#0x24]
	bl sub_802E830
	cmp r0, #0xff
	beq loc_802E406
	push {r0}
	mov r0, r6
	bl battle_networkInvert
	tst r0, r0
	pop {r0}
	bne loc_802E3C2
	bl sub_801E2BA
loc_802E3C2:
	ldrh r1, [r7,#0x24]
	mov r0, r6
	ldr r2, [sp]
	bl sub_802E5FC
	push {r4}
	mov r0, r6
	bl battle_networkInvert
	mov r1, r0
	mov r0, #0x18
	add r0, r0, r7
	mov r4, r6
	bl sub_8029514
	pop {r4}
	strh r0, [r7,#0x2a]
	strb r1, [r7,#4]
	strb r2, [r7,#5]
	tst r0, r0
	beq loc_802E402
	mov r0, r6
	ldrh r1, [r7,#0x2a]
	ldr r2, [sp]
	bl sub_802E62A
	mov r0, r6
	bl sub_802E07C
	mov r0, #0
	strh r0, [r7,#0x28]
	b loc_802E406
loc_802E402:
	mov r0, #0xb4
	strb r0, [r7,#2]
loc_802E406:
	ldrh r0, [r7,#0x24]
	strh r0, [r7,#0x26]
loc_802E40A:
	mov r0, r6
	bl sub_802E790
	add sp, sp, #4
	pop {r4-r7,pc}
off_802E414: .word byte_802E430
off_802E418: .word 0x1500
	.word byte_802E43A
	.word 0x4
	.word 0x8
dword_802E428: .word 0x1FF
	.word word_200F3C4
byte_802E430: .byte 0x0, 0x15, 0x0, 0x2A, 0x0, 0x40, 0xFF, 0xFF, 0xFF, 0xFF
byte_802E43A: .byte 0x1, 0x1, 0x1, 0x0, 0x0, 0x0
	thumb_func_end sub_802E2C4

	thumb_func_start sub_802E440
sub_802E440:
	push {lr}
	bl sub_802E490
	ldrh r0, [r0]
	pop {pc}
	thumb_func_end sub_802E440

	thumb_func_start sub_802E44A
sub_802E44A:
	push {lr}
	bl sub_802E490
	ldrh r0, [r0,#2]
	pop {pc}
	thumb_func_end sub_802E44A

	thumb_func_start sub_802E454
sub_802E454:
	push {lr}
	bl sub_802E490
	ldrh r0, [r0,#4]
	pop {pc}
	thumb_func_end sub_802E454

	thumb_func_start sub_802E45E
sub_802E45E:
	push {r4,r5,lr}
	mov r4, r1
	bl sub_802E490
	mov r5, r0
	add r0, #6
	mov r1, #0x3c 
	ldr r2, dword_802E48C // =0xffff 
	bl HalfwordFill
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r0, [r4,#2]
	strh r0, [r5,#2]
	ldrh r0, [r4,#4]
	strh r0, [r5,#4]
	// src
	add r0, r4, #6
	// dest
	add r1, r5, #6
	// halfwordCount
	mov r2, #0x36 
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r4,r5,pc}
	.balign 4, 0x00
dword_802E48C: .word 0xFFFF
	thumb_func_end sub_802E45E

	thumb_local_start
sub_802E490:
	mov r1, #0x42 
	mul r0, r1
	ldr r1, off_802E49C // =byte_203CA80 
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_802E49C: .word byte_203CA80
	thumb_func_end sub_802E490

	thumb_local_start
sub_802E4A0:
	push {r6,lr}
	ldr r1, [r5,#0x58]
	mov r0, #0
	strb r0, [r1,#0x1e]
	bl sub_8012EA8
	ldr r0, dword_802E4B4 // =0x40000 
	bl sub_800FFEE
	pop {r6,pc}
dword_802E4B4: .word 0x40000
	thumb_func_end sub_802E4A0

	thumb_func_start sub_802E4B8
sub_802E4B8:
	push {r7,lr}
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	mov r7, r0
	mov r0, #0x50 
	ldrb r0, [r7,r0]
	tst r0, r0
	beq loc_802E4CE
	mov r0, #9
	pop {r7,pc}
loc_802E4CE:
	mov r1, #0x54 
	ldrb r0, [r7,r1]
	tst r0, r0
	beq loc_802E4DA
	mov r0, #0xd
	pop {r7,pc}
loc_802E4DA:
	mov r0, #1
	pop {r7,pc}
	.byte 0, 0
	.word 0xA000
	thumb_func_end sub_802E4B8

	thumb_func_start sub_802E4E4
sub_802E4E4:
	push {r7,lr}
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	mov r7, r0
	bl sub_800FFFE
	ldr r1, off_802E534 // =timer_2000000 
	tst r0, r1
	beq loc_802E508
	mov r0, r1
	bl sub_800FFEE
	mov r0, #1
	mov r1, #0x50 
	strb r0, [r7,r1]
	bl sub_802E1EC
loc_802E508:
	bl sub_800FFFE
	ldr r1, dword_802E538 // =0x20000000 
	tst r0, r1
	beq locret_802E530
	mov r0, r1
	bl sub_800FFEE
	mov r0, #1
	mov r1, #0x54 
	strb r0, [r7,r1]
	bl sub_802E1EC
	ldr r0, off_802E53C // =0x1e0 
	strh r0, [r7,#0x30]
	ldr r0, dword_802E540 // =0xffff 
	bl object_setInvulnerableTime
	bl sub_802D310
locret_802E530:
	pop {r7,pc}
	.byte 0x0, 0x0
off_802E534: .word timer_2000000
dword_802E538: .word 0x20000000
off_802E53C: .word 0x1E0
dword_802E540: .word 0xFFFF
	thumb_func_end sub_802E4E4

	thumb_local_start
sub_802E544:
	push {lr}
	ldr r0, off_802E554 // =unk_20000A0 
	mov r1, #0x71 
	add r1, #0xff
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {pc}
	.balign 4, 0x00
off_802E554: .word unk_20000A0
	thumb_func_end sub_802E544

	thumb_local_start
sub_802E558:
	push {r4,r6,r7,lr}
	mov r6, r0
	bl sub_802E070
	ldrh r0, [r7,#0x2c]
	ldr r1, dword_802E584 // =0xffff 
	cmp r0, r1
	beq loc_802E574
	bl sub_802E1B4
	tst r0, r0
	beq loc_802E574
	mov r1, #0
	pop {r4,r6,r7,pc}
loc_802E574:
	mov r1, #0x4c 
	ldrb r0, [r7,r1]
	tst r0, r0
	bne loc_802E57C
loc_802E57C:
	mov r0, #0
	pop {r4,r6,r7,pc}
	mov r0, #0
	pop {r4,r6,r7,pc}
dword_802E584: .word 0xFFFF
	thumb_func_end sub_802E558

	thumb_local_start
sub_802E588:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	bl sub_8010018
	mov r7, r0
	ldr r0, [sp]
	bl sub_802E070
	mov r6, r0
	ldr r0, [sp,#4]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldrb r0, [r7,#1]
	cmp r0, #5
	bge loc_802E5CA
	add r0, r0, r0
	add r0, #2
	add r5, r7, r0
	ldr r0, [sp,#4]
	strh r0, [r5]
	ldrh r1, [r4,#0x1a]
	strh r1, [r5,#0xc]
	mov r0, #0
	strh r0, [r5,#0x18]
	strh r0, [r5,#0x24]
	ldrb r0, [r7,#1]
	add r0, #1
	strb r0, [r7,#1]
	b loc_802E5CE
loc_802E5CA:
	mov r0, #0
	b loc_802E5F4
loc_802E5CE:
	ldr r0, [sp]
	ldr r1, [sp,#8]
	bl sub_802E674
	ldr r0, [sp]
	tst r0, r0
	bne loc_802E5F2
	ldr r0, [sp,#8]
	cmp r0, #0
	bne loc_802E5F2
	ldr r0, off_802E5F8 // =0x2020 
	ldr r1, [sp,#4]
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	bl sub_80070BC
loc_802E5F2:
	mov r0, #1
loc_802E5F4:
	add sp, sp, #0xc
	pop {r4-r7,pc}
off_802E5F8: .word 0x2020
	thumb_func_end sub_802E588

	thumb_local_start
sub_802E5FC:
	push {r4-r6,lr}
	mov r4, r0
	mov r5, r1
	mov r6, r2
	bl sub_802E070
	ldrb r1, [r0,#3]
	cmp r1, #5
	bge loc_802E626
	add r1, r1, r1
	add r1, #0x18
	strh r5, [r0,r1]
	ldrb r1, [r0,#3]
	add r1, #1
	strb r1, [r0,#3]
	mov r0, r4
	mov r1, r6
	bl sub_802E674
	mov r0, #1
	b locret_802E628
loc_802E626:
	mov r0, #0
locret_802E628:
	pop {r4-r6,pc}
	thumb_func_end sub_802E5FC

	thumb_local_start
sub_802E62A:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	ldr r0, [sp]
	bl sub_802E070
	ldr r1, [sp,#4]
	strh r1, [r0,#0x34]
	ldr r0, [sp]
	tst r0, r0
	bne loc_802E65A
	ldr r0, [sp,#8]
	cmp r0, #0
	bne loc_802E65A
	ldr r0, off_802E670 // =0x2020 
	ldr r1, [sp,#4]
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	bl sub_80070BC
loc_802E65A:
	ldr r0, [sp]
	bl sub_80103BC
	mov r5, r0
	ldr r0, dword_802E944 // =0x10000 
	bl sub_800FFE4
	mov r0, #1
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.byte 0, 0
off_802E670: .word 0x2020
	thumb_func_end sub_802E62A

	thumb_local_start
sub_802E674:
	push {r7,lr}
	mov r7, r1
	tst r1, r1
	beq locret_802E696
	bl sub_802E490
	ldr r2, dword_802E698 // =0xffff 
	sub r7, #1
	add r7, r7, r7
	add r7, #0
	ldrh r1, [r0,#6]
	strh r1, [r0,r7]
	strh r2, [r0,#6]
	add r0, #6
	mov r1, #0x1e
	bl sub_8000EB6
locret_802E696:
	pop {r7,pc}
dword_802E698: .word 0xFFFF
	thumb_func_end sub_802E674

	thumb_local_start
sub_802E69C:
	push {lr}
	mov r0, #0x50 
	ldrb r0, [r7,r0]
	tst r0, r0
	bne locret_802E6D4
	ldrb r1, [r7,#6]
	cmp r1, #1
	beq locret_802E6D4
	ldrh r0, [r7,#0x28]
	ldr r1, off_802E6D8 // =word_802E6DC 
	mov r3, #0
loc_802E6B2:
	ldrh r2, [r1]
	cmp r0, r2
	blt loc_802E6C0
	add r1, #4
	add r3, #1
	cmp r3, #3
	blt loc_802E6B2
loc_802E6C0:
	ldrh r0, [r1,#2]
	ldrh r1, [r7,#0x3a]
	tst r1, r1
	beq loc_802E6CA
	add r0, r0, r0
loc_802E6CA:
	ldrh r1, [r7,#0x3c]
	tst r1, r1
	beq locret_802E6D4
	add r0, #1
	lsr r0, r0, #1
locret_802E6D4:
	pop {pc}
	.balign 4, 0x00
off_802E6D8: .word word_802E6DC
word_802E6DC: .hword 0x1500
word_802E6DE: .hword 0x19
	.byte 0x0, 0x29, 0x19, 0x0, 0x0, 0x40, 0xC, 0x0, 0x0, 0x40, 0xC, 0x0
	thumb_func_end sub_802E69C

	thumb_local_start
sub_802E6EC:
	push {r5-r7,lr}
	sub sp, sp, #0x3c
	bl sub_802E490
	mov r7, r0
	add r0, sp, #0
	mov r1, #0x3c 
	ldr r2, dword_802E948 // =0xffff 
	bl HalfwordFill
	add r6, sp, #0
	ldr r2, dword_802E948 // =0xffff 
	mov r3, #0
	ldrh r0, [r7]
	cmp r0, r2
	beq loc_802E712
	add r1, r3, r3
	strh r0, [r6,r1]
	add r3, #1
loc_802E712:
	ldrh r0, [r7,#2]
	cmp r0, r2
	beq loc_802E71E
	add r1, r3, r3
	strh r0, [r6,r1]
	add r3, #1
loc_802E71E:
	ldrh r0, [r7,#4]
	cmp r0, r2
	beq loc_802E72A
	add r1, r3, r3
	strh r0, [r6,r1]
	add r3, #1
loc_802E72A:
	add r5, r7, #6
loc_802E72C:
	ldrh r0, [r5]
	cmp r0, r2
	beq loc_802E73C
	add r1, r3, r3
	strh r0, [r6,r1]
	add r3, #1
	add r5, #2
	b loc_802E72C
loc_802E73C:
	tst r3, r3
	beq loc_802E78C
	add r0, sp, #0
	mov r1, r3
	mov r2, r3
	push {r3}
	bl sub_8000CDA
	pop {r3}
	add r6, sp, #0
	ldr r2, dword_802E948 // =0xffff 
	ldrh r0, [r7]
	cmp r0, r2
	beq loc_802E760
	ldrh r0, [r6]
	strh r0, [r7]
	add r6, #2
	sub r3, #1
loc_802E760:
	ldrh r0, [r7,#2]
	cmp r0, r2
	beq loc_802E76E
	ldrh r0, [r6]
	strh r0, [r7,#2]
	add r6, #2
	sub r3, #1
loc_802E76E:
	ldrh r0, [r7,#4]
	cmp r0, r2
	beq loc_802E77C
	ldrh r0, [r6]
	strh r0, [r7,#4]
	add r6, #2
	sub r3, #1
loc_802E77C:
	add r5, r7, #6
loc_802E77E:
	ldrh r0, [r6]
	sub r3, #1
	blt loc_802E78C
	strh r0, [r5]
	add r5, #2
	add r6, #2
	b loc_802E77E
loc_802E78C:
	add sp, sp, #0x3c
	pop {r5-r7,pc}
	thumb_func_end sub_802E6EC

	thumb_local_start
sub_802E790:
	push {r6,r7,lr}
	mov r6, r0
	bl sub_802E070
	mov r7, r0
	bl battle_isBattleOver
	tst r0, r0
	bne locret_802E828
	mov r1, #0x4c 
	ldrb r0, [r7,r1]
	tst r0, r0
	beq locret_802E828
	mov r1, #0x4d 
	ldrb r0, [r7,r1]
	tst r0, r0
	bne loc_802E7E2
	mov r0, r6
	bl battle_networkInvert
	tst r0, r0
	bne loc_802E7C8
	ldr r0, dword_802E94C // =0x80000 
	bl sub_801BED6
	ldr r0, dword_802E94C // =0x80000 
	bl sub_801BEC2
loc_802E7C8:
	mov r0, r6
	bl battle_networkInvert
	tst r0, r0
	bne loc_802E7D6
	bl sub_801E408
loc_802E7D6:
	mov r0, #0x32 
	mov r1, #0x4e 
	strb r0, [r7,r1]
	mov r0, #1
	mov r1, #0x4d 
	strb r0, [r7,r1]
loc_802E7E2:
	mov r1, #0x4e 
	ldrb r0, [r7,r1]
	sub r0, #1
	strb r0, [r7,r1]
	blt loc_802E80C
	mov r1, #0xa
	svc 6
	cmp r1, #9
	bne locret_802E828
	mov r0, r6
	bl sub_802E6EC
	mov r0, r6
	bl battle_networkInvert
	tst r0, r0
	bne locret_802E80A
	mov r0, #0x80
	bl sound_play // () -> void
locret_802E80A:
	pop {r6,r7,pc}
loc_802E80C:
	mov r0, r6
	bl battle_networkInvert
	tst r0, r0
	bne loc_802E822
	ldr r0, dword_802E94C // =0x80000 
	bl sub_801BECC
	ldr r0, dword_802E94C // =0x80000 
	bl sub_801BEB8
loc_802E822:
	mov r0, #0
	mov r1, #0x4c 
	strb r0, [r7,r1]
locret_802E828:
	pop {r6,r7,pc}
	thumb_func_end sub_802E790

	thumb_local_start
sub_802E82A:
	push {r4-r7,lr}
	mov r7, #0
	b loc_802E834
	thumb_func_end sub_802E82A

	thumb_func_start sub_802E830
sub_802E830:
	push {r4-r7,lr}
	mov r7, #1
loc_802E834:
	mov r4, r0
	mov r5, r1
	// idx
	mov r0, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r6, r0
	mov r0, r4
	bl sub_802E070
	add r0, #0x60 
	ldrb r2, [r0,r5]
	ldrb r1, [r6,#0x1e]
	cmp r2, r1
	bge loc_802E85C
	add r2, #1
	cmp r7, #0
	beq loc_802E858
	strb r2, [r0,r5]
loc_802E858:
	sub r0, r1, r2
	pop {r4-r7,pc}
loc_802E85C:
	mov r0, #0xff
	pop {r4-r7,pc}
	thumb_func_end sub_802E830

	thumb_local_start
sub_802E860:
	push {lr}
	bl sub_802E070
	mov r1, #0x4c 
	ldrb r0, [r0,r1]
	pop {pc}
	thumb_func_end sub_802E860

	thumb_local_start
sub_802E86C:
	push {r4,r5,lr}
	ldr r5, dword_802E948 // =0xffff 
	mov r4, r0
	bl sub_802E440
	cmp r0, r5
	bne loc_802E892
	mov r0, r4
	bl sub_802E44A
	cmp r0, r5
	bne loc_802E892
	mov r0, r4
	bl sub_802E454
	cmp r0, r5
	bne loc_802E892
	mov r0, #0
	pop {r4,r5,pc}
loc_802E892:
	mov r0, #1
	pop {r4,r5,pc}
	thumb_func_end sub_802E86C

	thumb_local_start
sub_802E896:
	push {lr}
	ldr r0, off_802E950 // =unk_2000370 
	mov r1, #0x71 
	add r1, #0xff
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {pc}
	thumb_func_end sub_802E896

	thumb_local_start
sub_802E8A4:
	push {r6,r7,lr}
	ldr r2, off_802E954 // =0x170 
	mul r2, r0
	ldr r0, off_802E958 // =unk_203A0A0 
	add r0, r0, r2
	ldr r6, dword_802E948 // =0xffff 
	mov r7, #0
	mov r2, #0
loc_802E8B4:
	ldrb r1, [r0,r2]
	tst r1, r1
	beq loc_802E8D2
	cmp r1, r7
	blt loc_802E8D2
	bgt loc_802E8CE
	push {r0-r2}
	bl GetRNG1 // () -> void
	lsr r3, r0, #0x1c
	lsr r0, r3
	pop {r0-r2}
	bcc loc_802E8D2
loc_802E8CE:
	mov r6, r2
	mov r7, r1
loc_802E8D2:
	add r2, #1
	ldr r3, off_802E954 // =0x170 
	cmp r2, r3
	blt loc_802E8B4
	mov r0, r6
	pop {r6,r7,pc}
	thumb_func_end sub_802E8A4

	thumb_local_start
sub_802E8DE:
	push {r4,r5,lr}
	mov r4, #0
	mov r5, #0
	bl sub_802E490
	ldr r2, dword_802E948 // =0xffff 
loc_802E8EA:
	ldrh r1, [r0]
	cmp r1, r2
	beq loc_802E8F2
	add r4, #1
loc_802E8F2:
	add r0, #2
	add r5, #1
	cmp r5, #0x21 
	blt loc_802E8EA
	mov r0, r4
	pop {r4,r5,pc}
	thumb_func_end sub_802E8DE

	thumb_local_start
sub_802E8FE:
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	mov r5, r2
	mov r0, r2
	bl object_getAllianceDirection
	mov r4, r0
loc_802E90E:
	add r6, r6, r4
	mov r0, r6
	mov r1, r7
	bl object_isValidPanel
	beq loc_802E92E
	mov r0, r6
	mov r1, r7
	bl object_getPanelParameters
	lsl r1, r5, #2
	ldr r2, off_802E938 // =off_802E93C 
	ldr r1, [r2,r1]
	tst r0, r1
	bne loc_802E932
	b loc_802E90E
loc_802E92E:
	mov r0, #0
	pop {r4-r7,pc}
loc_802E932:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802E938: .word off_802E93C
off_802E93C: .word 0x4000000
	.word 0x8000000
dword_802E944: .word 0x10000
dword_802E948: .word 0xFFFF
dword_802E94C: .word 0x80000
off_802E950: .word unk_2000370
off_802E954: .word 0x170
off_802E958: .word unk_203A0A0
	thumb_func_end sub_802E8FE

	thumb_local_start
sub_802E95C:
	push {r4,r6,r7,lr}
	mov r7, r0
	mov r1, #0x29 
	bl sub_8013774
	mov r4, r0
	ldr r6, [r5,#0x58]
	add r6, #0xa0
	bl sub_800A8F8
	tst r0, r0
	bne loc_802E978
	ldr r1, off_802E9D4 // =off_802E9D8 
	b loc_802E97A
loc_802E978:
	ldr r1, off_802EA04 // =off_802EA08 
loc_802E97A:
	lsl r0, r7, #2
	ldr r1, [r1,r0]
	lsl r0, r4, #2
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	push {r0}
	push {r0}
	mov r1, #0x3c 
	bl sub_8013774
	ldr r2, off_802E9E4 // =off_802E9E8 
	lsl r1, r7, #2
	ldr r2, [r1,r2]
	add r1, r4, r4
	ldrh r1, [r2,r1]
	pop {r2}
	cmp r2, #2
	bne loc_802E9A8
	tst r0, r0
	beq loc_802E9AA
	mov r1, #0xa
	b loc_802E9AA
loc_802E9A8:
	lsl r1, r0
loc_802E9AA:
	strh r1, [r6,#8]
	ldr r2, off_802E9F4 // =off_802E9F8 
	lsl r1, r7, #2
	ldr r2, [r1,r2]
	ldrb r1, [r2,r4]
	mov r0, #0x80
	tst r1, r0
	bne loc_802E9C4
	lsl r1, r1, #8
	ldrb r0, [r5,#0x16]
	bl sub_802E032
	b loc_802E9D0
loc_802E9C4:
	mov r0, #0x7f
	and r1, r0
	lsl r1, r1, #8
	ldrb r0, [r5,#0x16]
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
	thumb_func_end sub_802E95C

	thumb_local_start
sub_802EB5C:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_802EB5C

	thumb_local_start
sub_802EB60:
	push {lr}
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #0
	strb r0, [r6,#3]
	strb r0, [r6,#4]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strb r0, [r6,#5]
	mov r0, #0
	str r0, [r6,#0xc]
	mov r0, #0x11
	bl object_setAttack0
	mov r0, #2
	pop {pc}
	thumb_func_end sub_802EB60

	thumb_local_start
sub_802EB80:
	push {lr}
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #3
	strb r0, [r6,#3]
	mov r0, #0
	strb r0, [r6,#4]
	strb r0, [r6,#5]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strh r0, [r6,#8]
	ldr r0, off_802EBA4 // =0x23c 
	str r0, [r6,#0xc]
	mov r0, #0x2b 
	bl object_setAttack0
	mov r0, #1
	pop {pc}
off_802EBA4: .word 0x23C
	thumb_func_end sub_802EB80

	thumb_local_start
sub_802EBA8:
	push {lr}
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #3
	strb r0, [r6,#3]
	mov r0, #0
	strb r0, [r6,#4]
	strb r0, [r6,#5]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strh r0, [r6,#8]
	ldr r0, off_802EBCC // =0x13c 
	str r0, [r6,#0xc]
	mov r0, #0x2b 
	bl object_setAttack0
	mov r0, #1
	pop {pc}
off_802EBCC: .word 0x13C
	thumb_func_end sub_802EBA8

	thumb_local_start
sub_802EBD0:
	push {r6,lr}
	mov r1, #2
	mov r2, #4
	bl sub_8013754
	ldr r6, [r5,#0x58]
	add r6, #0xa0
	bl sub_802ECFE
	pop {r6,pc}
	thumb_func_end sub_802EBD0

	thumb_local_start
sub_802EBE4:
	push {r6,lr}
	ldrb r0, [r5,#0x16]
	mov r1, #2
	bl sub_8013816
	mov r2, r0
	mov r1, #2
	bl sub_8013754
	ldr r6, [r5,#0x58]
	add r6, #0xa0
	bl sub_802ECFE
	pop {r6,pc}
	thumb_func_end sub_802EBE4

	thumb_local_start
sub_802EC00:
	push {r4,r6,r7,lr}
	mov r7, r0
	mov r1, #0x29 
	bl sub_8013774
	mov r4, r0
	mov r2, #4
	mov r1, #2
	bl sub_8013754
	ldr r6, [r5,#0x58]
	add r6, #0xa0
	ldr r1, off_802EC28 // =off_802EC2C 
	lsl r0, r7, #2
	ldr r1, [r1,r0]
	lsl r0, r4, #2
	ldr r1, [r1,r0]
	mov lr, pc
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
	thumb_func_end sub_802EC00

	thumb_local_start
nullsub_34:
	mov pc, lr
	thumb_func_end nullsub_34

	thumb_local_start
sub_802ECFE:
	push {lr}
	bl sub_8013D5E
	cmp r0, #0
	beq loc_802ED0E
	bl sub_802ED68
	pop {pc}
loc_802ED0E:
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #0
	strb r0, [r6,#3]
	strb r0, [r6,#4]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strb r0, [r6,#5]
	mov r0, #0
	str r0, [r6,#0xc]
	mov r1, #0x29 
	bl sub_8013774
	ldr r1, off_802ED4C // =byte_802ED5C 
	ldrb r0, [r1,r0]
	strh r0, [r6,#8]
	mov r1, #0x29 
	bl sub_8013774
	ldr r1, off_802ED48 // =byte_802ED50 
	ldrb r0, [r0,r1]
	bl sub_802EEA2
	mov r0, #0x11
	bl object_setAttack0
	mov r0, #0
	mov r1, #0
	pop {pc}
off_802ED48: .word byte_802ED50
off_802ED4C: .word byte_802ED5C
byte_802ED50: .byte 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2
byte_802ED5C: .byte 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3
	thumb_func_end sub_802ECFE

	thumb_local_start
sub_802ED68:
	push {lr}
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #0
	strb r0, [r6,#3]
	strb r0, [r6,#4]
	strb r0, [r6,#5]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strh r0, [r6,#8]
	str r0, [r6,#0xc]
	mov r0, #0x33 
	bl object_setAttack0
	mov r0, #0
	mov r1, #0
	pop {pc}
	thumb_func_end sub_802ED68

	thumb_local_start
sub_802ED8A:
	push {lr}
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #3
	strb r0, [r6,#3]
	mov r0, #0
	strb r0, [r6,#4]
	strb r0, [r6,#5]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strh r0, [r6,#8]
	ldr r0, off_802EDB8 // =0x23c 
	str r0, [r6,#0xc]
	mov r0, #0x8b
	bl sub_802EEA2
	mov r0, #0x2b 
	bl object_setAttack0
	mov r0, #1
	mov r1, #0
	pop {pc}
	.balign 4, 0x00
off_802EDB8: .word 0x23C
	thumb_func_end sub_802ED8A

	thumb_local_start
sub_802EDBC:
	push {lr}
	mov r0, #0
	strb r0, [r6,#2]
	mov r0, #0
	strb r0, [r6,#3]
	strb r0, [r6,#4]
	strh r0, [r6,#6]
	strh r0, [r6,#0xa]
	strb r0, [r6,#5]
	mov r0, #0
	str r0, [r6,#0xc]
	mov r0, #0x28 
	strh r0, [r6,#8]
	mov r0, #0xa
	bl sub_802EEA2
	mov r0, #0x16
	bl object_setAttack0
	mov r0, #1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_802EDBC

	thumb_local_start
sub_802EDE8:
	push {lr}
	pop {pc}
	thumb_func_end sub_802EDE8

	thumb_local_start
sub_802EDEC:
	push {lr}
	mov r0, #0x8c
	strh r0, [r6,#8]
	mov r0, #0x94
	strh r0, [r6,#0xa]
	mov r0, #0
	str r0, [r6,#0xc]
	mov r0, #1
	strb r0, [r6,#3]
	mov r0, #1
	strb r0, [r6,#4]
	mov r0, #0x13
	bl object_setAttack0
	mov r0, #0x95
	bl sub_802EEA2
	mov r0, #1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_802EDEC

	thumb_local_start
sub_802EE14:
	push {lr}
	pop {pc}
	thumb_func_end sub_802EE14

	thumb_local_start
sub_802EE18:
	push {lr}
	bl GetPositiveSignedRNG2
	mov r4, #7
	and r4, r0
	mov r1, #0x29 
	bl sub_8013774
	ldr r1, off_802EE30 // =byte_802EE34
	ldrb r0, [r1,r0]
	add r0, r0, r4
	pop {pc}
off_802EE30: .word byte_802EE34
byte_802EE34: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802EE18

	thumb_local_start
sub_802EE40:
	push {lr}
	cmp r0, #3
	beq loc_802EE5C
	push {r0}
	mov r1, #0x29 
	bl sub_8013774
	pop {r1}
	mov r2, #3
	mul r0, r2
	add r0, r0, r1
	ldr r1, off_802EE60 // =byte_802EE64 
	ldrb r0, [r1,r0]
	pop {pc}
loc_802EE5C:
	mov r0, #0
	pop {pc}
off_802EE60: .word byte_802EE64
byte_802EE64: .byte 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0
	.byte 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C
	.byte 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0x3C, 0x0, 0x0, 0xB5, 0x3
	.byte 0xB4, 0x3C, 0x21, 0xE4, 0xF7, 0x71, 0xFC, 0x6, 0xBC, 0x0, 0x42, 0x2, 0xD0
	.byte 0x9, 0x42, 0x0, 0xD1, 0x8, 0x22, 0x10, 0x1C, 0x0, 0xBD
	thumb_func_end sub_802EE40

	thumb_local_start
sub_802EEA2:
	push {lr}
	mov r1, #0x80
	tst r0, r1
	bne loc_802EEB4
	lsl r1, r0, #8
	ldrb r0, [r5,#0x16]
	bl sub_802E032
	b locret_802EEC0
loc_802EEB4:
	mov r1, #0x7f
	and r1, r0
	lsl r1, r1, #8
	ldrb r0, [r5,#0x16]
	bl sub_802E04E
locret_802EEC0:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_802EEA2

	thumb_local_start
sub_802EEC4:
	push {r4,r7,lr}
	sub sp, sp, #8
	ldrb r0, [r5,#0x16]
	bl sub_802EFEE
	mov r7, r0
	beq loc_802EF44
	bl object_getEnemyDirection
	neg r4, r0
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	ldrb r1, [r0,#0xe]
	mul r1, r4
	ldrb r0, [r7,#0x12]
	add r0, r0, r1
	ldrb r1, [r7,#0x13]
	str r0, [sp]
	str r1, [sp,#4]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_802EF00
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sub_802EFD8
	beq loc_802EF18
	b loc_802EF12
loc_802EF00:
	mov r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bgt loc_802EF0A
	mov r1, #1
loc_802EF0A:
	ldrb r0, [r5,#0x16]
	eor r0, r1
	beq loc_802EF18
	b loc_802EF2E
loc_802EF12:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	b loc_802EF3A
loc_802EF18:
	ldrb r0, [r5,#0x16]
	ldr r3, off_802EF48 // =byte_802EF4C 
	lsl r2, r0, #3
	add r3, r3, r2
	ldr r2, [r3]
	ldr r3, [r3,#4]
	ldr r1, [sp,#4]
	bl object_getClosestPanelMatchingRowFiltered
	ldr r1, [sp,#4]
	b loc_802EF44
loc_802EF2E:
	ldrb r0, [r5,#0x16]
	mov r1, #5
	mul r0, r1
	add r0, #1
	str r0, [sp]
	ldr r1, [sp,#4]
loc_802EF3A:
	bl sub_802EFD8
	beq loc_802EF44
	ldr r0, [sp]
	ldr r1, [sp,#4]
loc_802EF44:
	add sp, sp, #8
	pop {r4,r7,pc}
off_802EF48: .word byte_802EF4C
byte_802EF4C: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_802EEC4

	thumb_func_start sub_802EF5C
sub_802EF5C:
	push {lr}
	bl sub_800A8F8
	cmp r0, #0
	beq locret_802EF72
	mov r0, #0
	bl sub_802EF74
	mov r0, #1
	bl sub_802EF74
locret_802EF72:
	pop {pc}
	thumb_func_end sub_802EF5C

	thumb_local_start
sub_802EF74:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	bl sub_800A8F8
	cmp r0, #0
	beq loc_802EFD4
	mov r4, #4
	mov r7, #0
	ldr r0, [sp]
	mov r1, #1
	eor r0, r1
	bl sub_802EFEE
	tst r0, r0
	beq loc_802EFD4
	cmp r0, r5
	bne loc_802EFD4
	ldr r0, [sp]
	lsl r0, r0, #4
	add r0, #0x80
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	add r0, r0, r1
loc_802EFA4:
	ldr r6, [r0]
	tst r6, r6
	beq loc_802EFC0
	tst r7, r7
	bne loc_802EFB2
	mov r7, r6
	b loc_802EFC0
loc_802EFB2:
	push {r0}
	mov r0, r6
	mov r1, r7
	bl sub_802F006
	mov r7, r0
	pop {r0}
loc_802EFC0:
	add r0, #4
	sub r4, #1
	bgt loc_802EFA4
	ldr r0, [sp]
	mov r1, #1
	eor r0, r1
	mov r1, r7
	bl sub_802EFF8
	mov r0, r7
loc_802EFD4:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802EF74

	thumb_local_start
sub_802EFD8:
	push {lr}
	bl object_getPanelDataOffset
	ldrb r1, [r0,#3]
	ldrb r0, [r5,#0x16]
	cmp r0, r1
	beq loc_802EFEA
	mov r0, #0
	pop {pc}
loc_802EFEA:
	mov r0, #1
	pop {pc}
	thumb_func_end sub_802EFD8

	thumb_local_start
sub_802EFEE:
	push {lr}
	bl sub_802E070
	ldr r0, [r0,#0x44]
	pop {pc}
	thumb_func_end sub_802EFEE

	thumb_local_start
sub_802EFF8:
	push {lr}
	push {r1}
	bl sub_802E070
	pop {r1}
	str r1, [r0,#0x44]
	pop {pc}
	thumb_func_end sub_802EFF8

	thumb_local_start
sub_802F006:
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103BC
	mov r5, r0
	beq loc_802F05E
	bl object_getEnemyDirection
	ldrb r2, [r5,#oBattleObject_PanelX]
	add r2, r2, r0
	ldrb r0, [r6,#oBattleObject_PanelX]
	sub r0, r0, r2
	ldrb r1, [r7,#oBattleObject_PanelX]
	sub r1, r1, r2
	ldrb r2, [r5,#oBattleObject_Alliance]
	tst r2, r2
	beq loc_802F034
	neg r0, r0
	neg r1, r1
loc_802F034:
	cmp r0, r1
	bcc loc_802F05E
	bhi loc_802F062
	ldrb r2, [r5,#oBattleObject_PanelY]
	ldrb r0, [r6,#oBattleObject_PanelY]
	sub r0, r0, r2
	cmp r0, #0
	bge loc_802F046
	neg r0, r0
loc_802F046:
	ldrb r1, [r7,#oBattleObject_PanelY]
	sub r1, r1, r2
	cmp r1, #0
	bge loc_802F050
	neg r1, r1
loc_802F050:
	cmp r0, r1
	blt loc_802F05E
	bgt loc_802F062
	ldrb r0, [r6,#oBattleObject_PanelY]
	ldrb r1, [r7,#oBattleObject_PanelY]
	cmp r0, r1
	bge loc_802F062
loc_802F05E:
	mov r0, r6
	pop {r4-r7,pc}
loc_802F062:
	mov r0, r7
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_802F006

	thumb_func_start sub_802F068
sub_802F068:
	push {r7,lr}
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	mov r7, r0
	ldrb r0, [r7,#2]
	tst r0, r0
	beq loc_802F07E
	sub r0, #1
	strb r0, [r7,#2]
	bne locret_802F082
loc_802F07E:
	bl sub_802F084
locret_802F082:
	pop {r7,pc}
	thumb_func_end sub_802F068

	thumb_local_start
sub_802F084:
	push {lr}
	ldrb r0, [r5,#0x16]
	bl sub_802E070
	ldrb r1, [r0,#3]
	tst r1, r1
	beq loc_802F096
	mov r1, #0
	strh r1, [r0,#0x28]
loc_802F096:
	ldrb r0, [r5,#0x16]
	bl sub_802E07C
	ldr r0, off_802F0A4 // =timer_2000000 
	bl sub_800FFEE
	pop {pc}
off_802F0A4: .word timer_2000000
// event flags, pooled here for some reason
dword_802F0A8:
	.hword 0x3E8, 0x3E8, 0x44C, 0x44C
	.hword 0x4B0, 0x514, 0x384, 0x3E8
	.hword 0x4B0, 0x3E8, 0x44C, 0x514
	.hword 0x384, 0x0
	thumb_func_end sub_802F084

	thumb_func_start sub_802F0C4
sub_802F0C4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_EventFlagsPtr]
	ldr r1, off_802F0D4 // =0x4ec 
	bl ZeroFillByHalfword
	pop {pc}
	.balign 4, 0x00
off_802F0D4: .word 630 * 2
	thumb_func_end sub_802F0C4

	thumb_func_start sub_802F0D8
sub_802F0D8:
	push {lr}
	ldr r0, dword_802F0EC // =0x2de 
	mov r1, r10
	ldr r1, [r1,#oToolkit_EventFlagsPtr]
	add r0, r0, r1
	ldr r1, dword_802F0F0 // =0x2 
	bl ZeroFillByHalfword
	pop {pc}
	.balign 4, 0x00
dword_802F0EC: .word 0x2DE
dword_802F0F0: .word 0x2
	thumb_func_end sub_802F0D8

	thumb_func_start sub_802F0F4
sub_802F0F4:
	push {lr}
	ldr r0, off_802F108 // =0x2c8 
	mov r1, r10
	ldr r1, [r1,#oToolkit_EventFlagsPtr]
	add r0, r0, r1
	ldr r1, dword_802F10C // =0x16 
	bl ZeroFillByHalfword
	pop {pc}
	.balign 4, 0x00
off_802F108: .word 0x2C8
dword_802F10C: .word 0x16
	thumb_func_end sub_802F0F4

// The following event flag related functions have an additional way to enter the function
// where it interprets the event flag as two 8 bit registers
// This takes less space as it only requires 4 bytes to load two 8bit immediates into two registers
// than to load a halfword from memory into a single register
// it would also require aligning to a word boundary which may take additional space

/* (r0:u8 flagUpper, r1:u8 flagLower) -> void
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start SetEventFlagFromImmediate
SetEventFlagFromImmediate:
// merge r0 and r1 into a halfword
	lsl r0, r0, #8
	orr r0, r1
// fallthrough

// Sets a flag at eEventFlags
// r0 - flag to set

/* (r0:u16 flagToSet) -> void
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start SetEventFlag
SetEventFlag:
	mov r3, r10
	ldr r3, [r3,#oToolkit_EventFlagsPtr]

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29 // r0 &= 0x7. gets bit offset of flag

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0 // r1 = 0x80 >> r0

	// set the flag
	ldrb r0, [r3]
	orr r0, r1
	strb r0, [r3]
	mov pc, lr
	thumb_func_end SetEventFlag
	thumb_func_end SetEventFlagFromImmediate

/* (r0:u8 flagUpper, r1:u8 flagLower) -> void
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11-r12 */
	thumb_func_start ClearEventFlagFromImmediate
ClearEventFlagFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough

// Clears a flag at eEventFlags
// r0 - flag to clear

/* (r0:u16 flagToClear) -> void
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start ClearEventFlag
ClearEventFlag:
	mov r3, r10
	ldr r3, [r3,#oToolkit_EventFlagsPtr] // Toolkit.eEventFlags

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29 // r0 &= 0x7. gets bit offset of flag

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0 // r1 = 0x80 >> r0

	// clear the flag
	ldrb r0, [r3]
	bic r0, r1
	strb r0, [r3]
	mov pc, lr
	thumb_func_end ClearEventFlag
	thumb_func_end ClearEventFlagFromImmediate

/* (r0:u8 flagUpper, r1:u8 flagLower) -> void
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start ToggleEventFlagFromImmediate
ToggleEventFlagFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough
	thumb_func_end ToggleEventFlagFromImmediate

// Toggle a flag at eEventFlags
// r0 - flag to toggle

/* (r0:u16 flagToToggle) -> void
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start ToggleEventFlag
ToggleEventFlag:
	mov r3, r10
	ldr r3, [r3,#oToolkit_EventFlagsPtr] // Toolkit.eEventFlags

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0 // r1 = 0x80 >> r0

	// toggle the flag
	ldrb r0, [r3]
	eor r0, r1
	strb r0, [r3]
	mov pc, lr
	thumb_func_end ToggleEventFlag

/* (r0:u8 flagUpper, r1:u8 flagLower) -> zf
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start TestEventFlagFromImmediate
TestEventFlagFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough
    thumb_func_end TestEventFlagFromImmediate

// Test a flag at eEventFlags
// r0 - flag to test

/* (r0:u16 flagToTest) -> zf
   clobbers: r0,r1,r3
   ignores: r2,r4-r9,r11,r12 */
	thumb_func_start TestEventFlag
TestEventFlag:
	mov r3, r10
	ldr r3, [r3,#oToolkit_EventFlagsPtr] // Toolkit.eEventFlags

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0 // r1 = 0x80 >> r0

	// test the flag
	ldrb r0, [r3]
	tst r0, r1
	mov pc, lr
	thumb_func_end TestEventFlag

/* (r0:u8 flagUpper, r1:u8 flagLower, r2:uint numEntries) -> void
   preserves: r4,r5,lr
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start SetEventFlagRangeFromImmediate
SetEventFlagRangeFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough
    thumb_func_end SetEventFlagRangeFromImmediate


// Set multiple flags in sequence starting at the flag in r0 (i.e. r0, r0+1, r0+2 etc.)
// Number of flags to set is in r2

/* (r0:u16 flagRangeStart, r2:uint numEntries) -> void
   preserves: r4,r5,lr
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start SetEventFlagRange
SetEventFlagRange:
	push {r4,r5,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr] // Toolkit.eEventFlags
	mov r5, r0

// r2 = number of event flags left to set
// r4 = eEventFlags
// r5 = current event flag
.setEventFlagRangeLoop
	// load invariants
	mov r3, r4
	mov r0, r5

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0

	// set the flag
	ldrb r0, [r3]
	orr r0, r1
	strb r0, [r3]

	// loop check
	add r5, #1 // current event flag + 1
	sub r2, #1 // loop counter
	bgt .setEventFlagRangeLoop
	pop {r4,r5,pc}
	thumb_func_end SetEventFlagRange

/* (r0:u8 flagUpper, r1:u8 flagLower, r2:uint numEntries) -> void
   preserves: r4,r5,lr
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start ClearEventFlagRangeFromImmediate
ClearEventFlagRangeFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough
    thumb_func_end ClearEventFlagRangeFromImmediate

// Clears multiple flags in sequence starting at the flag in r0 (i.e. r0, r0+1, r0+2 etc.)
// Number of flags to clear is in r2

/* (r0:u16 flagRangeStart, r2:uint numEntries) -> void
   preserves: r4,r5,lr
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start ClearEventFlagRange
ClearEventFlagRange:
	push {r4,r5,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr] // Toolkit.eEventFlags
	mov r5, r0

// r2 = number of event flags left to clear
// r4 = eEventFlags
// r5 = current event flag
.clearEventFlagRangeLoop
	// load invariants
	mov r3, r4
	mov r0, r5

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0

	// clear the flag
	ldrb r0, [r3]
	bic r0, r1
	strb r0, [r3]

	// loop check
	add r5, #1 // current event flag + 1
	sub r2, #1 // loop counter
	bgt .clearEventFlagRangeLoop
	pop {r4,r5,pc}
	thumb_func_end ClearEventFlagRange

/* (r0:u8 flagUpper, r1:u8 flagLower, r2:uint numEntries) -> void
   preserves: r4,r5,lr
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start ToggleEventFlagRangeFromImmediate
ToggleEventFlagRangeFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough
	thumb_func_end ToggleEventFlagRangeFromImmediate

// Toggles multiple flags in sequence starting at the flag in r0 (i.e. r0, r0+1, r0+2 etc.)
// Number of flags to toggle is in r2

/* (r0:u16 flagRangeStart, r2:uint numEntries) -> void
   preserves: r4,r5
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start ToggleEventFlagRange
ToggleEventFlagRange:
	push {r4,r5,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr] // Toolkit.eEventFlags
	mov r5, r0

// r2 = number of event flags left to toggle
// r4 = eEventFlags
// r5 = current event flag
.toggleEventFlagRangeLoop
	// load invariants
	mov r3, r4
	mov r0, r5

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0

	// toggle the flag
	ldrb r0, [r3]
	eor r0, r1
	strb r0, [r3]

	// loop check
	add r5, #1 // current event flag + 1
	sub r2, #1 // loop counter
	bgt .toggleEventFlagRangeLoop
	pop {r4,r5,pc}
	thumb_func_end ToggleEventFlagRange

/* (r0:u8 flagUpper, r1:u8 flagLower, r2:uint numEntries) -> zf
   preserves: r4-r7,lr
   clobbers: r0-r3
   ignores: r6-r9,r11,r12*/
	thumb_func_start TestEventFlagRangeFromImmediate
TestEventFlagRangeFromImmediate:
	lsl r0, r0, #8
	orr r0, r1
// fallthrough
	thumb_func_end TestEventFlagRangeFromImmediate

// Tests multiple flags in sequence starting at the flag in r0 (i.e. r0, r0+1, r0+2 etc.)
// Number of flags to tests is in r2

/* (r0:u16 flagRangeStart, r2:uint numEntries) -> zf
   preserves: r4-r7,lr
   clobbers: r0-r3
   ignores: r8-r9,r11,r12*/
	thumb_func_start TestEventFlagRange
TestEventFlagRange:
	push {r4-r7,lr}
	mov r7, r2
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr]
	mov r5, r0
	mov r6, #0

// r2 = number of event flags left to test
// r4 = eEventFlags
// r5 = current event flag
// r6 = number of event flags set
// r7 = range of event flags to test
.testEventFlagRangeLoop
	// load invariants
	mov r3, r4
	mov r0, r5

	// get byte offset of flag in memory
	lsr r1, r0, #3
	add r3, r3, r1 // r3 = r3 + (flag >> 3)

	// get bit number of flag in memory
	lsl r0, r0, #29
	lsr r0, r0, #29

	// translate that bit number into a bitmask
	mov r1, #0x80
	lsr r1, r0

	// test the flag and increment counter if set
	ldrb r0, [r3]
	tst r0, r1
	beq .flagNotSet
	add r6, #1
.flagNotSet
	// loop check
	add r5, #1 // current event flag + 1
	sub r2, #1 // loop counter
	bgt .testEventFlagRangeLoop

// return zero if not all flags were set
	mov r0, #0
	cmp r6, r7
	bne .notAllFlagsSet
	mov r0, #1
.notAllFlagsSet
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end TestEventFlagRange

// file boundary?
	.balign 4, 0x00

	thumb_func_start sub_802F238
sub_802F238:
	push {r4,r6,r7,lr}
	mov r7, r0
	mov r0, r0
	bl SetEventFlag
	mov r0, r7
	add r0, #0x80
	mov r0, r0
	bl SetEventFlag
	ldr r1, off_802F2C4 // =0x1ca0 
	sub r7, r7, r1
	ldr r2, off_802F2DC // =byte_2006530 
	ldr r6, off_802F2E0 // =dword_2001140 
	ldr r0, [r6]
	mov r4, r0
	tst r4, r4
	beq loc_802F268
	sub r1, r0, #1
loc_802F25E:
	ldrb r3, [r2,r1]
	strb r3, [r2,r0]
	sub r0, #1
	sub r1, #1
	bge loc_802F25E
loc_802F268:
	strb r7, [r2]
	add r4, #1
	str r4, [r6]
	pop {r4,r6,r7,pc}
	thumb_func_end sub_802F238

	thumb_local_start
sub_802F270:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r1, off_802F2C4 // =0x1ca0 
	sub r7, r0, r1
	ldr r6, off_802F2E0 // =dword_2001140 
	ldr r1, [r6]
	ldr r2, off_802F2DC // =byte_2006530 
loc_802F280:
	ldrb r0, [r2]
	cmp r0, r7
	beq loc_802F28E
	add r2, #1
	sub r1, #1
	bgt loc_802F280
	b loc_802F2BC
loc_802F28E:
	cmp r1, #1
	ble loc_802F29E
	add r3, r2, #1
	ldrb r0, [r3]
	strb r0, [r2]
	add r2, #1
	sub r1, #1
	b loc_802F28E
loc_802F29E:
	mov r0, #0x80
	strb r0, [r2]
	ldrb r0, [r6]
	sub r0, #1
	str r0, [r6]
	ldr r0, [sp]
	mov r7, r0
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	mov r0, r7
	add r0, #0x80
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_802F2BC:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.word 0x1D20
off_802F2C4: .word 0x1CA0
	thumb_func_end sub_802F270

	thumb_func_start sub_802F2C8
sub_802F2C8:
	push {lr}
	// mem
	ldr r0, off_802F2DC // =byte_2006530 
	// byteCount
	mov r1, #0x80
	// byte
	mov r2, #0x80
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	ldr r0, off_802F2E0 // =dword_2001140 
	mov r1, #0
	str r1, [r0]
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
	.word iPallete3001750
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
	thumb_func_end sub_802F2C8

	thumb_func_start sub_802F530
sub_802F530:
	push {lr}
	// memBlock
	ldr r0, off_802F570 // =eStartScreen
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r1, r10
	ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
	mov r0, #0
	strb r0, [r1]
	pop {pc}
	thumb_func_end sub_802F530

	thumb_func_start startscreen_802F544
startscreen_802F544:
	push {r4-r7,lr}
	bl sub_803E938
	ldr r5, off_802F570 // =eStartScreen
	ldr r0, off_802F55C // =jt_802F560 
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl GetRNG2 // () -> int
	pop {r4-r7,pc}
off_802F55C: .word jt_802F560
jt_802F560: .word startScreen_802F574+1
	.word startscreen_802F60C+1
	.word ho_802F63C+1
	.word sub_802F756+1
off_802F570: .word eStartScreen
	thumb_func_end startscreen_802F544

	thumb_local_start
startScreen_802F574:
	push {lr}
	mov r0, #0xb
	bl sub_80015FC
	ldr r0, off_802F7E4 // =0x1140 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	bl startScreen_initGfx_802FCC0
	mov r0, #0xc
	mov r1, #0xff
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl musicGameState_8000784 // () -> void
	ldr r0, off_802F5EC // =pt_802F5F0 
	bl sub_8002354
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#2]
	bl sub_803FA42
	bl sub_803F838
	bne loc_802F5BE
	mov r0, #1
	strb r0, [r5,#2]
	bl sub_8000EE4
	strb r0, [r5,#0xc]
	strh r1, [r5,#0xa]
loc_802F5BE:
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_802F5D4
	mov r6, #0
	mov r7, #1
	bl sub_803E930
	beq loc_802F5E2
	mov r0, #0
	mov r7, #2
	b loc_802F5E2
loc_802F5D4:
	mov r6, #1
	mov r7, #2
	bl sub_803E930
	beq loc_802F5E2
	mov r6, #1
	mov r7, #3
loc_802F5E2:
	strb r6, [r5,#8]
	strb r7, [r5,#9]
	mov r0, #0
	strb r0, [r5,#3]
	pop {pc}
off_802F5EC: .word pt_802F5F0
pt_802F5F0: .word off_802F350
	.word off_802F3A0
	.word off_802F3F0
	.word off_802F440
	.word off_802F490
	.word off_802F4E0
	.word 0xFFFFFFFF
	thumb_func_end startScreen_802F574

	thumb_local_start
startscreen_802F60C:
	push {lr}
	ldr r0, off_802F61C // =off_802F620 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_802F61C: .word off_802F620
off_802F620: .word sub_802F624+1
	thumb_func_end startscreen_802F60C

	thumb_local_start
sub_802F624:
	push {lr}
	ldr r0, dword_802F638 // =0x1741 
	bl sRender_08_setRenderingState
	mov r0, #8
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	pop {pc}
	.balign 4, 0x00
dword_802F638: .word 0x1741
	thumb_func_end sub_802F624

// () -> void
	thumb_local_start
ho_802F63C:
	push {lr}
	ldr r0, off_802F650 // =jt_802F654 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_802FB10 // () -> void
	pop {pc}
	.balign 4, 0x00
off_802F650: .word jt_802F654
jt_802F654:
	.word sub_802F668+1
	.word sub_802F6A4+1
	.word sub_802F6B2+1
	.word sub_802F704+1
	.word sub_802F710+1
	thumb_func_end ho_802F63C

	thumb_local_start
sub_802F668:
	push {lr}
	mov r0, #0
	strb r0, [r5,#0xe]
	strb r0, [r5,#0xf]
	ldr r0, dword_802F69C // =0xa46 
	strh r0, [r5,#4]
	mov r0, #1
	bl sub_80005F2
	mov r0, #0xa
	bl sub_80015FC
	ldr r0, off_802F6A0 // =0x1340 
	bl sRender_08_setRenderingState
	mov r0, #0
	strb r0, [r5,#6]
	bl sub_802FD3C
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#1]
	pop {pc}
dword_802F69C: .word 0xA46
off_802F6A0: .word 0x1340
	thumb_func_end sub_802F668

	thumb_local_start
sub_802F6A4:
	push {r4,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_802F6B0
	mov r0, #8
	strb r0, [r5,#1]
locret_802F6B0:
	pop {r4,pc}
	thumb_func_end sub_802F6A4

	thumb_local_start
sub_802F6B2:
	push {r4,lr}
	ldrh r0, [r5,#4]
	cmp r0, #0
	bgt loc_802F6C8
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_802F6FA
loc_802F6C8:
	sub r0, #1
	strh r0, [r5,#4]
	ldr r1, off_802F6FC // =0x12c 
	cmp r0, r1
	bne loc_802F6E0
	push {r0,r5}
	mov r0, #0x1f
	mov r1, #0x10
	bl sub_800068A
	pop {r0,r5}
	b locret_802F6FA
loc_802F6E0:
	ldrh r0, [r5,#4]
	ldr r1, dword_802F700 // =0xa0a 
	cmp r0, r1
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
	thumb_func_end sub_802F6B2

	thumb_local_start
sub_802F704:
	push {lr}
	bl sub_802F81C
	bl sub_802F8D8
	pop {pc}
	thumb_func_end sub_802F704

	thumb_local_start
sub_802F710:
	push {lr}
	ldrh r0, [r5,#4]
	cmp r0, #0
	ble loc_802F71C
	bl sub_802F8D8
loc_802F71C:
	bl IsPaletteFadeActive // () -> zf
	beq locret_802F754
	ldrh r0, [r5,#4]
	cmp r0, #0
	ble loc_802F72E
	mov r0, #0xc
	strh r0, [r5]
	b locret_802F754
loc_802F72E:
	bl zeroFill_e20094C0
	bl sub_80023A8
	bl loc_803D1AC // () -> void
	bl sub_81440D8 // static () -> void
	bl sub_813D960
	bl clear_e200AD04 // () -> void
	mov r0, #0
	bl sub_803F6B0
	bl loc_803F512
	bl sub_803E900
locret_802F754:
	pop {pc}
	thumb_func_end sub_802F710

	thumb_local_start
sub_802F756:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	mov r1, #4
	strb r1, [r0]
	ldr r0, off_802F7E4 // =0x1140 
	bl sRender_08_setRenderingState
	bl sub_813D960
	ldrb r0, [r5,#8]
	cmp r0, #0
	beq loc_802F776
	cmp r0, #1
	beq loc_802F79A
	b loc_802F7B6
loc_802F776:
	bl sub_800260C
	bl reqBBS_init_8004DF0
	bl sub_8004D48
	bl sub_81440D8 // static () -> void
	bl sub_8149644
	ldrb r0, [r5,#2]
	tst r0, r0
	beq locret_802F7E0
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #4
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_802F7E0
loc_802F79A:
	ldrb r0, [r5,#2]
	tst r0, r0
	beq loc_802F7B6
	bl sub_8004D48
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #4
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_81440D8 // static () -> void
	bl sub_8149644
	b locret_802F7E0
loc_802F7B6:
	mov r0, #0
	bl sub_813D90C
	bl sub_8004D48
	bl sub_8039570
	bl sub_803EBAC
	mov r0, #0xc
	bl eStruct200BC30_setJumpOffset00
	ldrb r0, [r5,#2]
	tst r0, r0
	beq loc_802F7DC
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #4
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_802F7DC:
	bl sub_81440D8 // static () -> void
locret_802F7E0:
	pop {pc}
	.balign 4, 0x00
off_802F7E4: .word 0x1140
	thumb_func_end sub_802F756

	thumb_local_start
sub_802F7E8:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#2]
	mov r1, #8
	tst r1, r0
	beq locret_802F810
	bl sub_813D960
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0x67 
	bl sound_play // () -> void
	ldr r0, off_802F814 // =byte_802F2E4 
	bl sub_8001B1C
	ldr r0, off_802F818 // =dword_802F334 
	bl sub_8001B1C
locret_802F810:
	pop {pc}
	.balign 4, 0x00
off_802F814: .word byte_802F2E4
off_802F818: .word dword_802F334
	thumb_func_end sub_802F7E8

	thumb_local_start
sub_802F81C:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #9
	tst r1, r0
	beq loc_802F848
	bl IsPaletteFadeActive // () -> zf
	beq locret_802F88C
	bl musicGameState_8000784 // () -> void
	mov r0, #0x9d
	bl sound_play // () -> void
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_802F88C
loc_802F848:
	ldrh r0, [r7,#4]
	mov r1, #0x40 
	tst r1, r0
	beq loc_802F86A
	ldrb r0, [r5,#8]
	mov r1, r0
	sub r0, #1
	bge loc_802F85C
	ldrb r0, [r5,#9]
	sub r0, #1
loc_802F85C:
	strb r0, [r5,#8]
	cmp r0, r1
	beq locret_802F88C
	mov r0, #0x66 
	bl sound_play // () -> void
	b locret_802F88C
loc_802F86A:
	ldrh r0, [r7,#4]
	mov r1, #0x80
	tst r1, r0
	beq locret_802F88C
	ldrb r0, [r5,#8]
	mov r1, r0
	add r0, #1
	ldrb r2, [r5,#9]
	cmp r0, r2
	blt loc_802F880
	mov r0, #0
loc_802F880:
	strb r0, [r5,#8]
	cmp r0, r1
	beq locret_802F88C
	mov r0, #0x66 
	bl sound_play // () -> void
locret_802F88C:
	pop {pc}
	thumb_func_end sub_802F81C

	thumb_local_start
sub_802F88E:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	mov r1, #0x3f 
	and r0, r1
	cmp r0, #0x20 
	bgt locret_802F8A4
	ldr r0, off_802F8A8 // =byte_802F8AC
	bl sub_8001158 // () -> void
locret_802F8A4:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802F8A8: .word byte_802F8AC
byte_802F8AC: .byte 0x78, 0x40, 0x34, 0x80, 0x1, 0x20, 0x0, 0x0, 0x78, 0x40
	.byte 0x54, 0x80, 0x9, 0x20, 0x0, 0x0, 0x78, 0x40, 0x74, 0x80
	.byte 0x11, 0x20, 0x0, 0x0, 0x78, 0x40, 0x94, 0x80, 0x19, 0x20
	.byte 0x0, 0x0, 0x78, 0x80, 0xB4, 0x0, 0x21, 0x20, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802F88E

	thumb_local_start
sub_802F8D8:
	push {r4-r7,lr}
	ldrb r0, [r5,#6]
	add r0, #1
	cmp r0, #0x12
	blt loc_802F8E4
	mov r0, #0
loc_802F8E4:
	strb r0, [r5,#6]
	ldrb r0, [r5,#7]
	add r0, #1
	cmp r0, #0x40 
	blt loc_802F8F0
	mov r0, #0
loc_802F8F0:
	strb r0, [r5,#7]
	ldrb r0, [r5,#6]
	lsl r0, r0, #1
	ldr r1, off_802F96C // =byte_802F970
	ldrh r1, [r1,r0]
	ldrb r2, [r5,#8]
	lsl r2, r2, #2
	ldr r0, off_802F95C // =byte_802F960
	ldr r0, [r0,r2]
	mov r2, #0
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldrb r0, [r5,#8]
	bl sub_802F994
	ldrb r0, [r5,#2]
	tst r0, r0
	bne loc_802F924
	bl notZero_eByte200AD04
	bne loc_802F936
	bl sub_803E930
	beq loc_802F936
	b loc_802F936
loc_802F924:
	ldrb r0, [r5,#8]
	bl sub_802F9EC
	bl notZero_eByte200AD04
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
	pop {r4-r7,pc}
off_802F95C: .word byte_802F960
byte_802F960: .byte 0x71, 0x0, 0x49, 0x40, 0x80, 0x0, 0x49, 0x40, 0x91, 0x0
	.byte 0x49, 0x40
off_802F96C: .word byte_802F970
byte_802F970: .byte 0x40, 0x11, 0x40, 0x11, 0x40, 0x11, 0x40, 0x11, 0x40
	.byte 0x11, 0x40, 0x11, 0x44, 0x11, 0x44, 0x11, 0x44, 0x11
	.byte 0x44, 0x11, 0x44, 0x11, 0x44, 0x11, 0x48, 0x11, 0x48
	.byte 0x11, 0x48, 0x11, 0x48, 0x11, 0x48, 0x11, 0x48, 0x11
	thumb_func_end sub_802F8D8

	thumb_local_start
sub_802F994:
	push {r4-r7,lr}
	ldr r1, off_802F9A4 // =off_802F9A8 
	lsl r0, r0, #2
	ldr r0, [r0,r1]
	bl sub_8001158 // () -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802F9A4: .word off_802F9A8
off_802F9A8: .word byte_802F9B4
	.word byte_802F9D0
	.word byte_802F9D0
byte_802F9B4: .byte 0x70, 0x40, 0x58, 0x80, 0x23, 0x30, 0x0, 0x0, 0x70, 0x40
	.byte 0x78, 0x80, 0x2B, 0x30, 0x0, 0x0, 0x70, 0x0, 0x98, 0x40
	.byte 0x33, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802F9D0: .byte 0x70, 0x40, 0x58, 0x80, 0x23, 0x40, 0x0, 0x0, 0x70, 0x40
	.byte 0x78, 0x80, 0x2B, 0x40, 0x0, 0x0, 0x70, 0x0, 0x98, 0x40
	.byte 0x33, 0x40, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802F994

	thumb_local_start
sub_802F9EC:
	push {r4-r7,lr}
	ldr r1, off_802F9FC // =off_802FA00 
	lsl r0, r0, #2
	ldr r0, [r0,r1]
	bl sub_8001158 // () -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802F9FC: .word off_802FA00
off_802FA00: .word byte_802FA28
	.word byte_802FA0C
	.word byte_802FA28
byte_802FA0C: .byte 0x7F, 0x40, 0x58, 0x80, 0x37, 0x30, 0x0, 0x0, 0x7F, 0x40
	.byte 0x78, 0x80, 0x3F, 0x30, 0x0, 0x0, 0x7F, 0x0, 0x98, 0x40
	.byte 0x47, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802FA28: .byte 0x7F, 0x40, 0x58, 0x80, 0x37, 0x40, 0x0, 0x0, 0x7F, 0x40
	.byte 0x78, 0x80, 0x3F, 0x40, 0x0, 0x0, 0x7F, 0x0, 0x98, 0x40
	.byte 0x47, 0x40, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802F9EC

	thumb_local_start
sub_802FA44:
	push {r4-r7,lr}
	ldrb r1, [r5,#9]
	cmp r1, #3
	blt loc_802FA58
	ldr r1, off_802FA70 // =off_802FA74 
	lsl r0, r0, #2
	ldr r0, [r0,r1]
	bl sub_8001158 // () -> void
	b locret_802FA62
loc_802FA58:
	ldr r1, off_802FA64 // =off_802FA68 
	lsl r0, r0, #2
	ldr r0, [r0,r1]
	bl sub_8001158 // () -> void
locret_802FA62:
	pop {r4-r7,pc}
off_802FA64: .word off_802FA68
off_802FA68: .word byte_802FAEC
	.word byte_802FAC8
off_802FA70: .word off_802FA74
off_802FA74: .word byte_802FAA4
	.word byte_802FAA4
	.word byte_802FA80
byte_802FA80: .byte 0x80, 0x40, 0x58, 0x80, 0x4B, 0x30, 0x0, 0x0, 0x80, 0x40
	.byte 0x78, 0x80, 0x53, 0x30, 0x0, 0x0, 0x80, 0x0, 0x98, 0x40
	.byte 0x5B, 0x30, 0x0, 0x0, 0x80, 0x80, 0xA8, 0x0, 0x5F, 0x30
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802FAA4: .byte 0x80, 0x40, 0x58, 0x80, 0x4B, 0x40, 0x0, 0x0, 0x80, 0x40
	.byte 0x78, 0x80, 0x53, 0x40, 0x0, 0x0, 0x80, 0x0, 0x98, 0x40
	.byte 0x5B, 0x40, 0x0, 0x0, 0x80, 0x80, 0xA8, 0x0, 0x5F, 0x40
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802FAC8: .byte 0x70, 0x40, 0x58, 0x80, 0x4B, 0x30, 0x0, 0x0, 0x70, 0x40
	.byte 0x78, 0x80, 0x53, 0x30, 0x0, 0x0, 0x70, 0x0, 0x98, 0x40
	.byte 0x5B, 0x30, 0x0, 0x0, 0x70, 0x80, 0xA8, 0x0, 0x5F, 0x30
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_802FAEC: .byte 0x70, 0x40, 0x58, 0x80, 0x4B, 0x40, 0x0, 0x0, 0x70, 0x40
	.byte 0x78, 0x80, 0x53, 0x40, 0x0, 0x0, 0x70, 0x0, 0x98, 0x40
	.byte 0x5B, 0x40, 0x0, 0x0, 0x70, 0x80, 0xA8, 0x0, 0x5F, 0x40
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FA44

// () -> void
	thumb_local_start
sub_802FB10:
	push {r4-r7,lr}
	ldr r0, off_802FB1C // =byte_802FB20
	bl sub_8001158 // () -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802FB1C: .word byte_802FB20
byte_802FB20: .byte 0x7E, 0x0, 0x0, 0x80, 0x80, 0x61, 0x0, 0x0, 0x7E, 0x0, 0x20
	.byte 0x80, 0x90, 0x61, 0x0, 0x0, 0x7E, 0x0, 0x40, 0x80, 0xA0, 0x61
	.byte 0x0, 0x0, 0x7E, 0x0, 0x60, 0x80, 0xB0, 0x61, 0x0, 0x0, 0x7E
	.byte 0x0, 0x80, 0x80, 0xC0, 0x61, 0x0, 0x0, 0x7E, 0x0, 0xA0, 0x80
	.byte 0xD0, 0x61, 0x0, 0x0, 0x7E, 0x0, 0xC0, 0x80, 0xE0, 0x61, 0x0
	.byte 0x0, 0x7E, 0x0, 0xE0, 0x80, 0xF0, 0x61, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_802FB10

	thumb_local_start
sub_802FB64:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #0x80
	tst r0, r1
	beq locret_802FB74
	ldr r0, off_802FB78 // =byte_802FB7C
	bl sub_8001158 // () -> void
locret_802FB74:
	pop {pc}
	.balign 4, 0x00
off_802FB78: .word byte_802FB7C
byte_802FB7C: .byte 0x2, 0x40, 0x4, 0x80, 0x80, 0x92, 0x0, 0x0, 0x12, 0x40, 0x4
	.byte 0x40, 0x88, 0x92, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FB64

	thumb_local_start
sub_802FB90:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #0x40 
	tst r0, r1
	beq locret_802FBA0
	ldr r0, off_802FBA4 // =byte_802FBA8
	bl sub_8001158 // () -> void
locret_802FBA0:
	pop {pc}
	.balign 4, 0x00
off_802FBA4: .word byte_802FBA8
byte_802FBA8: .byte 0x4, 0x40, 0x2C, 0x80, 0x20, 0x82, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FB90

	thumb_local_start
sub_802FBB4:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #0x20 
	tst r0, r1
	beq locret_802FBC4
	ldr r0, off_802FBC8 // =byte_802FBCC
	bl sub_8001158 // () -> void
locret_802FBC4:
	pop {pc}
	.balign 4, 0x00
off_802FBC8: .word byte_802FBCC
byte_802FBCC: .byte 0x4, 0x40, 0x54, 0x80, 0x30, 0x82, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FBB4

	thumb_local_start
sub_802FBD8:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #0x10
	tst r0, r1
	beq locret_802FBE8
	ldr r0, off_802FBEC // =byte_802FBF0
	bl sub_8001158 // () -> void
locret_802FBE8:
	pop {pc}
	.balign 4, 0x00
off_802FBEC: .word byte_802FBF0
byte_802FBF0: .byte 0x4, 0x40, 0x7C, 0x80, 0x40, 0x82, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FBD8

	thumb_local_start
sub_802FBFC:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #8
	tst r0, r1
	beq locret_802FC0C
	ldr r0, off_802FC10 // =byte_802FC14
	bl sub_8001158 // () -> void
locret_802FC0C:
	pop {pc}
	.byte 0, 0
off_802FC10: .word byte_802FC14
byte_802FC14: .byte 0x14, 0x40, 0x8E, 0x80, 0x10, 0x72, 0x0, 0x0, 0x24, 0x40
	.byte 0x8E, 0x40, 0x18, 0x72, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FBFC

	thumb_local_start
sub_802FC28:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #4
	tst r0, r1
	beq locret_802FC38
	ldr r0, off_802FC3C // =byte_802FC40
	bl sub_8001158 // () -> void
locret_802FC38:
	pop {pc}
	.balign 4, 0x00
off_802FC3C: .word byte_802FC40
byte_802FC40: .byte 0x4, 0x40, 0xA4, 0x80, 0x50, 0x82, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FC28

	thumb_local_start
sub_802FC4C:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #2
	tst r0, r1
	beq locret_802FC5C
	ldr r0, off_802FC60 // =byte_802FC64
	bl sub_8001158 // () -> void
locret_802FC5C:
	pop {pc}
	.byte 0, 0
off_802FC60: .word byte_802FC64
byte_802FC64: .byte 0x4, 0x40, 0xCC, 0x80, 0x60, 0x82, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FC4C

	thumb_local_start
sub_802FC70:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #0x10
	lsl r1, r1, #4
	tst r0, r1
	beq locret_802FC82
	ldr r0, off_802FC84 // =byte_802FC88
	bl sub_8001158 // () -> void
locret_802FC82:
	pop {pc}
off_802FC84: .word byte_802FC88
byte_802FC88: .byte 0x14, 0x40, 0x40, 0x80, 0x0, 0x72, 0x0, 0x0, 0x24, 0x40
	.byte 0x40, 0x40, 0x8, 0x72, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_802FC70

	thumb_local_start
sub_802FC9C:
	push {lr}
	ldrh r0, [r5,#0xa]
	mov r1, #0x20 
	lsl r1, r1, #4
	tst r0, r1
	beq locret_802FCAE
	ldr r0, off_802FCB0 // =byte_802FCB4
	bl sub_8001158 // () -> void
locret_802FCAE:
	pop {pc}
off_802FCB0: .word byte_802FCB4
byte_802FCB4: .byte 0x16, 0x40, 0x6C, 0x80, 0x70, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_802FC9C

	thumb_local_start
startScreen_initGfx_802FCC0:
	push {r4-r7,lr}
	bl zeroFillVRAM
	// initRefs
	ldr r0, off_802FCD4 // =initRefs_802FCD8 
	bl decompAndCopyData // (u32 *initRefs) -> void
	bl ZeroFillGFX30025c0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802FCD4: .word initRefs_802FCD8
initRefs_802FCD8: .word comp_87F36A0 + 1<<31
	.word 0x6013000
	.word eDecompBuffer2013A00
	.word byte_87F40F4
	.word byte_3001610
	.word 0xA0
	.word comp_87F3370 + 1<<31
	.word 0x6010020
	.word eDecompBuffer2013A00
	.word dword_87F3620
	.word byte_3001590
	.word 0x80
	.word comp_87F4394 + 1<<31
	.word 0x6000000
	.word eDecompBuffer2013A00
	.word dword_87F4194
	.word byte_3001960
	.word 0x1C0
	.word byte_86A48C0
	.word 0x6012800
	.word 0x180
	.word dword_86A5500
	.word byte_3001570
	.word 0x20
	.word 0x0
	thumb_func_end startScreen_initGfx_802FCC0

	thumb_local_start
sub_802FD3C:
	push {r5,lr}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_802FD50 // =byte_87F8EB0 
	mov r4, #0x20 
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5,pc}
off_802FD50: .word byte_87F8EB0
	thumb_func_end sub_802FD3C

	thumb_local_start
sub_802FD54:
	push {r4-r7,lr}
	bl sub_803E930
	beq locret_802FD68
	mov r1, #2
	ldrb r0, [r5,#2]
	tst r0, r0
	beq loc_802FD66
	mov r1, #3
loc_802FD66:
	strb r1, [r5,#9]
locret_802FD68:
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word byte_200B1A0
off_802FD70: .word unk_30025B0
dword_802FD74: .word 0x8
	.word unk_3002580
	.byte 0x4, 0x0, 0x0, 0x0, 0xB0, 0xE, 0x0, 0x3, 0xA0, 0x2, 0x0, 0x0, 0x70, 0x21
	.byte 0x0, 0x3, 0x4, 0x0, 0x0, 0x0
byte_802FD90: .byte 0xB0, 0x25, 0x0, 0x3, 0x8, 0x0, 0x0, 0x0, 0x80, 0x25, 0x0, 0x3, 0x4
	.byte 0x0, 0x0, 0x0, 0xB0, 0xE, 0x0, 0x3, 0xE0, 0x0, 0x0, 0x0, 0x70, 0x21
	.byte 0x0, 0x3, 0x4, 0x0, 0x0, 0x0
	thumb_func_end sub_802FD54

	thumb_func_start sub_802FDB0
sub_802FDB0:
	mov r0, #0
	b loc_802FDB6
loc_802FDB4:
	mov r0, #4
loc_802FDB6:
	ldr r1, off_802FDF0 // =off_802FDF4 
	ldr r0, [r1,r0]
	push {r4,lr}
	mov r4, r0
	ldr r1, off_802FE08 // =dword_3002590 
	mov r2, #0x20 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r2, #0
	mvn r2, r2
	mov r3, r4
	mov r4, #4
loc_802FDCE:
	ldr r0, [r3]
	ldr r1, [r3,#4]
	bl WordFill
	add r3, #8
	sub r4, #1
	cmp r4, #0
	bgt loc_802FDCE
	ldr r0, off_802FE04 // =byte_3001150 
	ldr r1, off_802FDFC // =0x400 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, off_802FE00 // =byte_3001950 
	mov r1, #0
	str r1, [r0]
	pop {r4,pc}
	.byte 0, 0
off_802FDF0: .word off_802FDF4
off_802FDF4: .word off_802FD70
	.word byte_802FD90
off_802FDFC: .word 0x400
off_802FE00: .word byte_3001950
off_802FE04: .word byte_3001150
off_802FE08: .word dword_3002590
	thumb_func_end sub_802FDB0

	thumb_func_start copyObjAttributesToIWRAM_802FE0C
copyObjAttributesToIWRAM_802FE0C:
	push {lr}
	ldr r0, off_802FE1C // =iObjectAttr3001D70 
	ldr r1, dword_802FE20 // =0x7000000 
	ldr r2, off_802FE24 // =0x400 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {pc}
	.balign 4, 0x00
off_802FE1C: .word iObjectAttr3001D70
dword_802FE20: .word 0x7000000
off_802FE24: .word 0x400
	thumb_func_end copyObjAttributesToIWRAM_802FE0C

// (u32 a1, u16 a2, int notUsed, int a4) -> void
	thumb_func_start sub_802FE28
sub_802FE28:
	push {r4,lr}
	ldr r4, off_802FE34 // =sub_30068E8+1 
	mov lr, pc
	bx r4
	pop {r4,pc}
	.balign 4, 0x00
off_802FE34: .word sub_30068E8+1
	thumb_func_end sub_802FE28

	thumb_local_start
sub_802FE38:
	push {r4,lr}
	ldr r4, off_802FE44 // =sub_3006920+1 
	mov lr, pc
	bx r4
	pop {r4,pc}
	.balign 4, 0x00
off_802FE44: .word sub_3006920+1
	thumb_func_end sub_802FE38

	thumb_func_start sub_802FE48
sub_802FE48:
	ldr r3, off_802FF44 // =dword_2009A2C 
	ldr r1, [r3]
	mov r2, #0x80
	lsl r2, r2, #0x18
	mov r0, #0
loc_802FE52:
	tst r1, r2
	beq loc_802FE60
	lsr r2, r2, #1
	add r0, #1
	cmp r0, #0x10
	bge loc_802FE66
	b loc_802FE52
loc_802FE60:
	orr r1, r2
	str r1, [r3]
	mov pc, lr
loc_802FE66:
	mov r0, #0xff
	mov pc, lr
	thumb_func_end sub_802FE48

	thumb_func_start sub_802FE6A
sub_802FE6A:
	ldr r3, off_802FF44 // =dword_2009A2C 
	ldr r1, [r3]
	mov r2, #0x80
	lsl r2, r2, #0x18
	lsr r2, r0
	bic r1, r2
	str r1, [r3]
	mov pc, lr
	thumb_func_end sub_802FE6A

	thumb_func_start sub_802FE7A
sub_802FE7A:
	push {r4-r7,lr}
	lsr r1, r1, #2
	lsr r2, r2, #2
	push {r0-r2}
	ldr r0, off_802FF48 // =word_200A6F0 
	mov r6, r0
	mov r1, #0xc
	mul r1, r3
	add r0, r0, r1
	add r3, #0x10
	mov r1, #0xc
	mul r1, r3
	add r6, r6, r1
	mov r5, #0
	mov r2, #0
	strb r2, [r6,#8]
	pop {r2}
	strb r2, [r0,#8]
	lsl r2, r2, #1
	pop {r3}
	mov r7, r3
	bl sub_802FF10
	strb r3, [r0,#9]
	mov r3, r7
	ldr r1, off_802FF0C // =math_cosTable 
	ldrsh r4, [r1,r5]
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r6]
	ldrsh r4, [r1,r2]
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r0]
	ldr r1, off_802FF08 // =math_sinTable 
	ldrsh r4, [r1,r5]
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r6,#2]
	ldrsh r4, [r1,r2]
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r0,#2]
	pop {r3}
	mov r7, r3
	bl sub_802FF10
	strb r3, [r0,#0xa]
	mov r3, r7
	ldr r1, off_802FF0C // =math_cosTable 
	ldrsh r4, [r1,r5]
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r6,#6]
	ldrsh r4, [r1,r2]
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r0,#6]
	ldr r1, off_802FF08 // =math_sinTable 
	ldrsh r4, [r1,r5]
	neg r4, r4
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r6,#4]
	ldrsh r4, [r1,r2]
	neg r4, r4
	mul r4, r3
	lsr r4, r4, #4
	strh r4, [r0,#4]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_802FF08: .word math_sinTable
off_802FF0C: .word math_cosTable
	thumb_func_end sub_802FE7A

	thumb_local_start
sub_802FF10:
	push {r1,r2}
	mov r1, #0x10
	lsl r1, r1, #4
	mov r2, #0
	cmp r3, #0
	beq loc_802FF26
loc_802FF1C:
	cmp r1, r3
	blt loc_802FF26
	sub r1, r1, r3
	add r2, #1
	b loc_802FF1C
loc_802FF26:
	mov r3, r2
	pop {r1,r2}
	mov pc, lr
	thumb_func_end sub_802FF10

	thumb_func_start cleareMemory_802FF2C
cleareMemory_802FF2C:
	push {lr}
	ldr r0, off_802FF44 // =dword_2009A2C 
	mov r1, #0
	str r1, [r0]
	ldr r0, off_802FF48 // =word_200A6F0 
	ldr r1, off_802FF40 // =0x180 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
off_802FF40: .word 0x180
off_802FF44: .word dword_2009A2C
off_802FF48: .word word_200A6F0
	thumb_func_end cleareMemory_802FF2C

	thumb_func_start camera_802FF4C
camera_802FF4C:
	push {r5-r7,lr}
	mov r5, r8
	mov r6, r9
	mov r7, r12
	push {r5-r7}
	push {r3,r4}
	push {r0-r2}
	mov r5, r10
	ldr r5, [r5,#oToolkit_CameraPtr]
	ldrb r0, [r5,#3]
	ldr r1, [r5,#0x14]
	push {r0,r1,r5}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_CameraPtr]
	// size
	mov r1, #0x4c 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0,r1,r5}
	strb r0, [r5,#3]
	str r1, [r5,#0x14]
	ldr r0, off_802FFF0 // =eStruct200BE70 
	ldrb r3, [r0]
	sub r3, #0x1e
	lsl r3, r3, #0x12
	str r3, [r5,#0x1c]
	neg r3, r3
	str r3, [r5,#0x18]
	ldrb r3, [r0,#0x1] // (byte_200BE71 - 0x200be70)
	sub r3, #0x14
	lsl r3, r3, #0x12
	str r3, [r5,#0x20]
	neg r3, r3
	str r3, [r5,#0x24]
	pop {r1-r3}
	str r1, [r5,#0x30]
	str r2, [r5,#0x34]
	str r3, [r5,#0x38]
	mov r1, #0
	strh r1, [r5,#4]
	strh r1, [r5,#6]
	pop {r0,r1}
	cmp r0, #0xf0
	bge loc_802FFB8
	cmp r0, #0xe0
	bge loc_802FFBC
	cmp r0, #0xd0
	bge loc_802FFC0
	cmp r0, #0x80
	bge loc_802FFB2
	ldr r3, off_802FFE8 // =off_8033770 
	b loc_802FFC4
loc_802FFB2:
	ldr r3, off_802FFEC // =off_803378C 
	sub r0, #0x80
	b loc_802FFC4
loc_802FFB8:
	mov r0, #8
	b loc_802FFCA
loc_802FFBC:
	mov r0, #0xc
	b loc_802FFCA
loc_802FFC0:
	mov r0, #0x10
	b loc_802FFCA
loc_802FFC4:
	lsl r0, r0, #2
	ldr r3, [r3,r0]
	ldr r0, [r3,r1]
loc_802FFCA:
	strb r0, [r5,#2]
	bl sub_80301E8
	bl sub_8030054
	bl sub_80302D0
	bl sub_803011A
	pop {r5-r7}
	mov r8, r5
	mov r9, r6
	mov r12, r7
	pop {r5-r7,pc}
	.balign 4, 0x00
off_802FFE8: .word off_8033770
off_802FFEC: .word off_803378C
off_802FFF0: .word eStruct200BE70
	thumb_func_end camera_802FF4C

	thumb_func_start sub_802FFF4
sub_802FFF4:
	push {r4-r7,lr}
	mov r0, r8
	mov r1, r9
	mov r2, r12
	push {r0-r2}
	mov r5, r10
	ldr r5, [r5,#oToolkit_CameraPtr]
	ldr r0, off_8030030 // =off_8030034 
	ldrb r1, [r5,#3]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80301E8
	bl sub_8030054
	ldr r0, off_803003C // =off_8030040
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_803011A
	pop {r0-r2}
	mov r8, r0
	mov r9, r1
	mov r12, r2
	pop {r4-r7,pc}
	.byte 0, 0
off_8030030: .word off_8030034
off_8030034: .word nullsub_7+1
	.word sub_8030126+1
off_803003C: .word off_8030040
off_8030040: .word sub_8030136+1
	.word sub_8030136+1
	.word sub_8030158+1
	.word sub_8030194+1
	.word sub_8030136+1
	thumb_func_end sub_802FFF4

	thumb_local_start
sub_8030054:
	push {lr}
	ldr r0, off_8030064 // =off_8030068
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8030064: .word off_8030068
off_8030068: .word sub_803007C+1
	.word sub_803007C+1
	.word sub_80300AC+1
	.word sub_8030104+1
	.word sub_803007C+1
	thumb_func_end sub_8030054

	thumb_local_start
sub_803007C:
	mov r1, #0x0 // byte_0
	ldr r4, [r5,#0x3c]
	sub r1, r1, r4
	mov r6, #0
	ldr r4, [r5,#0x40]
	sub r6, r6, r4
	mov r7, r6
	mov r8, r1
	add r1, r1, r6
	asr r1, r1, #0x10
	neg r1, r1
	strh r1, [r5,#4]
	mov r6, r7
	mov r2, r8
	sub r6, r6, r2
	asr r6, r6, #1
	mov r4, #0
	sub r6, r6, r4
	ldr r2, [r5,#0x44]
	add r6, r6, r2
	asr r6, r6, #0x10
	neg r6, r6
	strh r6, [r5,#6]
	mov pc, lr
	thumb_func_end sub_803007C

	thumb_local_start
sub_80300AC:
	ldr r1, [r5,#0x3c]
	ldr r2, [r5,#0x18]
	cmp r1, r2
	bge loc_80300B6
	mov r1, r2
loc_80300B6:
	ldr r2, [r5,#0x1c]
	cmp r1, r2
	ble loc_80300BE
	mov r1, r2
loc_80300BE:
	str r1, [r5,#0x3c]
	asr r1, r1, #0x10
	strh r1, [r5,#4]
	ldr r6, [r5,#0x44]
	ldr r4, [r5,#0x40]
	ldr r2, [r5,#0x24]
	add r2, r2, r6
	cmp r4, r2
	bge loc_80300D2
	mov r4, r2
loc_80300D2:
	ldr r2, [r5,#0x20]
	add r2, r2, r6
	cmp r4, r2
	ble loc_80300DC
	mov r4, r2
loc_80300DC:
	str r4, [r5,#0x40]
	mov r6, r4
	ldr r4, [r5,#0x44]
	ldr r2, [r5,#0x24]
	add r2, r2, r6
	str r2, [r5,#0x2c]
	cmp r4, r2
	bge loc_80300EE
	mov r4, r2
loc_80300EE:
	ldr r2, [r5,#0x20]
	add r2, r2, r6
	str r2, [r5,#0x28]
	cmp r4, r2
	ble loc_80300FA
	mov r4, r2
loc_80300FA:
	str r4, [r5,#0x44]
	sub r6, r6, r4
	asr r6, r6, #0x10
	strh r6, [r5,#6]
locret_8030102:
	mov pc, lr
	thumb_func_end sub_80300AC

	thumb_local_start
sub_8030104:
	ldr r4, [r5,#0x3c]
	asr r4, r4, #0x10
	add r4, #0x80
	add r4, #8
	strh r4, [r5,#4]
	ldr r4, [r5,#0x40]
	asr r4, r4, #0x10
	add r4, #0x80
	add r4, #0x30 
	strh r4, [r5,#6]
	mov pc, lr
	thumb_func_end sub_8030104

	thumb_local_start
sub_803011A:
	ldrh r1, [r5,#4]
	strh r1, [r5,#8]
	ldrh r1, [r5,#6]
	strh r1, [r5,#0xa]
	mov pc, lr
	thumb_func_end sub_803011A

	thumb_local_start
nullsub_7:
	mov pc, lr
	thumb_func_end nullsub_7

	thumb_local_start
sub_8030126:
	ldr r7, [r5,#0x14]
	ldr r2, [r7]
	str r2, [r5,#0x30]
	ldr r2, [r7,#4]
	str r2, [r5,#0x34]
	ldr r2, [r7,#8]
	str r2, [r5,#0x38]
	mov pc, lr
	thumb_func_end sub_8030126

	thumb_local_start
sub_8030136:
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#8]
	sub r1, r1, r2
	ldrh r4, [r5,#6]
	ldrh r2, [r5,#0xa]
	sub r4, r4, r2
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldrh r6, [r0,#0x10]
	add r6, r6, r1
	ldrh r7, [r0,#0x12]
	add r7, r7, r4
	strh r6, [r0,#0x10]
	strh r7, [r0,#0x12]
	strh r6, [r0,#0x14]
	strh r7, [r0,#0x16]
	mov pc, lr
	thumb_func_end sub_8030136

	thumb_local_start
sub_8030158:
	push {r4-r7,lr}
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#8]
	sub r1, r1, r2
	ldrh r4, [r5,#6]
	ldrh r2, [r5,#0xa]
	sub r4, r4, r2
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldrh r6, [r0,#0x14]
	add r6, r6, r1
	ldrh r7, [r0,#0x16]
	add r7, r7, r4
	strh r6, [r0,#0x14]
	strh r7, [r0,#0x16]
	push {r1,r4}
	bl sub_80269E2
	pop {r1,r4}
	tst r0, r0
	bne locret_8030192
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldrh r6, [r0,#0x18]
	add r6, r6, r1
	ldrh r7, [r0,#0x1a]
	add r7, r7, r4
	strh r6, [r0,#0x18]
	strh r7, [r0,#0x1a]
locret_8030192:
	pop {r4-r7,pc}
	thumb_func_end sub_8030158

	thumb_local_start
sub_8030194:
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#8]
	sub r1, r1, r2
	ldrh r4, [r5,#6]
	ldrh r2, [r5,#0xa]
	sub r4, r4, r2
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldrh r6, [r0,#0x10]
	add r6, r6, r1
	ldrh r7, [r0,#0x12]
	add r7, r7, r4
	strh r6, [r0,#0x10]
	strh r7, [r0,#0x12]
	mov pc, lr
	thumb_func_end sub_8030194

	thumb_func_start sub_80301B2
sub_80301B2:
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	strb r0, [r2,#3]
	str r1, [r2,#0x14]
	mov pc, lr
	thumb_func_end sub_80301B2

	thumb_func_start sub_80301BC
sub_80301BC:
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	mov r0, #1
	strb r0, [r2,#3]
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldr r1, [r1,#oGameState_OverworldPlayerObjectPtr]
	add r1, #0x1c
	str r1, [r2,#0x14]
	mov pc, lr
	thumb_func_end sub_80301BC

	thumb_func_start sub_80301D0
sub_80301D0:
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	ldr r0, [r3,#0x30]
	ldr r1, [r3,#0x34]
	ldr r2, [r3,#0x38]
	mov pc, lr
	thumb_func_end sub_80301D0

	thumb_func_start sub_80301DC
sub_80301DC:
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	str r0, [r3,#0x30]
	str r1, [r3,#0x34]
	str r2, [r3,#0x38]
	mov pc, lr
	thumb_func_end sub_80301DC

	thumb_local_start
sub_80301E8:
	push {lr}
	bl sub_80269D0
	tst r0, r0
	bne loc_8030200
	bl sub_800A7D0 // () -> (zf, int)
	beq loc_8030200
	bl sub_800A0A4
	tst r0, r0
	beq loc_8030214
loc_8030200:
	ldrh r0, [r5,#0xc]
loc_8030202:
	cmp r0, #0
	beq loc_8030214
	ldrh r6, [r5,#0xe]
	lsl r6, r6, #3
	ldr r7, off_8030280 // =byte_8030284
	add r7, r7, r6
	sub r1, r0, #1
	strh r1, [r5,#0xc]
	b loc_8030226
loc_8030214:
	ldrh r0, [r5,#0x10]
	cmp r0, #0
	beq loc_8030266
	ldrh r6, [r5,#0x12]
	lsl r6, r6, #3
	ldr r7, off_8030280 // =byte_8030284
	add r7, r7, r6
	sub r1, r0, #1
	strh r1, [r5,#0x10]
loc_8030226:
	bl GetRNG1 // () -> void
	ldr r2, [r7]
	and r0, r2
	lsl r0, r0, #0x10
	ldr r2, [r7,#4]
	sub r0, r0, r2
	ldr r2, [r5,#0x30]
	add r2, r2, r0
	str r2, [r5,#0x3c]
	mov r4, #0
	str r4, [r5,#0x48]
	ldr r4, off_803027C // =eCamera+76 
	ldrb r4, [r4]
	tst r4, r4
	beq loc_803024C
	neg r0, r0
	lsl r0, r0, #1
	str r0, [r5,#0x48]
loc_803024C:
	bl GetRNG1 // () -> void
	ldr r2, [r7]
	and r0, r2
	lsl r0, r0, #0x10
	ldr r2, [r7,#4]
	sub r0, r0, r2
	ldr r2, [r5,#0x34]
	add r2, r2, r0
	str r2, [r5,#0x40]
	ldr r2, [r5,#0x38]
	str r2, [r5,#0x44]
	pop {pc}
loc_8030266:
	mov r2, #0
	strh r2, [r5,#0xe]
	ldr r2, [r5,#0x30]
	str r2, [r5,#0x3c]
	ldr r2, [r5,#0x34]
	str r2, [r5,#0x40]
	ldr r2, [r5,#0x38]
	str r2, [r5,#0x44]
	mov r2, #0
	str r2, [r5,#0x48]
	pop {pc}
off_803027C: .word eCamera+0x4C // eCamera.unk_4C
off_8030280: .word byte_8030284
byte_8030284: .byte 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x7
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0xF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x20
	.byte 0x0, 0x21
	thumb_func_end sub_80301E8

	thumb_func_start sub_80302A8
sub_80302A8:
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	strh r0, [r2,#0xe]
	strh r1, [r2,#0xc]
	mov pc, lr
	.word 0x21002000
	thumb_func_end sub_80302A8

	thumb_func_start sub_80302B6
sub_80302B6:
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	strh r0, [r2,#0x12]
	strh r1, [r2,#0x10]
	mov pc, lr
	thumb_func_end sub_80302B6

	thumb_func_start sub_80302C0
sub_80302C0:
	mov r2, r10
	ldr r2, [r2,#oToolkit_CameraPtr]
	ldrh r3, [r2,#0xe]
	cmp r0, r3
	blt locret_80302CE
	strh r0, [r2,#0xe]
	strh r1, [r2,#0xc]
locret_80302CE:
	mov pc, lr
	thumb_func_end sub_80302C0

	thumb_local_start
sub_80302D0:
	push {lr}
	ldr r0, off_80302E0 // =off_80302E4
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_80302E0: .word off_80302E4
off_80302E4: .word sub_80302F8+1
	.word sub_8030316+1
	.word sub_8030336+1
	.word sub_803035E+1
	.word nullsub_60+1
	thumb_func_end sub_80302D0

	thumb_local_start
sub_80302F8:
	mov r7, r10
	ldr r5, [r7,#oToolkit_CameraPtr]
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#6]
	ldr r3, [r7,#oToolkit_RenderInfoPtr]
	mov r4, #0xff
	and r1, r4
	strh r1, [r3,#0x10]
	strh r1, [r3,#0x14]
	strh r1, [r3,#0x18]
	and r2, r4
	strh r2, [r3,#0x12]
	strh r2, [r3,#0x16]
	strh r2, [r3,#0x1a]
	mov pc, lr
	thumb_func_end sub_80302F8

	thumb_local_start
sub_8030316:
	mov r7, r10
	ldr r5, [r7,#oToolkit_CameraPtr]
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#6]
	ldr r3, [r7,#oToolkit_RenderInfoPtr]
	mov r4, #0xff
	and r1, r4
	strh r1, [r3,#0x10]
	strh r1, [r3,#0x14]
	and r2, r4
	strh r2, [r3,#0x12]
	strh r2, [r3,#0x16]
	mov r1, #0
	strh r1, [r3,#0x18]
	strh r1, [r3,#0x1a]
	mov pc, lr
	thumb_func_end sub_8030316

	thumb_local_start
sub_8030336:
	mov r7, r10
	ldr r5, [r7,#oToolkit_CameraPtr]
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#6]
	ldr r3, [r7,#oToolkit_RenderInfoPtr]
	mov r4, #0xff
	and r1, r4
	strh r1, [r3,#0x10]
	strh r1, [r3,#0x14]
	strh r1, [r3,#0x18]
	and r2, r4
	strh r2, [r3,#0x12]
	strh r2, [r3,#0x16]
	strh r2, [r3,#0x1a]
	mov r1, #0
	strh r1, [r3,#0x10]
	strh r1, [r3,#0x12]
	strh r1, [r3,#0x18]
	strh r1, [r3,#0x1a]
	mov pc, lr
	thumb_func_end sub_8030336

	thumb_local_start
sub_803035E:
	mov r7, r10
	ldr r5, [r7,#oToolkit_CameraPtr]
	ldrh r1, [r5,#4]
	ldrh r2, [r5,#6]
	ldr r3, [r7,#oToolkit_RenderInfoPtr]
	mov r4, #0xff
	lsl r4, r4, #1
	add r4, #1
	and r1, r4
	strh r1, [r3,#0x10]
	sub r2, #8
	and r2, r4
	strh r2, [r3,#0x12]
	mov pc, lr
	thumb_func_end sub_803035E

	thumb_local_start
nullsub_60:
	mov pc, lr
	thumb_func_end nullsub_60

	thumb_func_start sub_803037C
sub_803037C:
	push {r4-r7,lr}
	mov r2, r8
	mov r3, r9
	mov r4, r12
	push {r2-r4}
	ldr r5, off_80305E0 // =eStruct200BE70 
	cmp r0, #0x80
	bge loc_8030392
	ldr r3, off_80303D8 // =off_80329A8 
	ldr r4, off_80303DC // =off_8032F6C 
	b loc_8030398
loc_8030392:
	ldr r3, off_80303E0 // =off_80329C4 
	ldr r4, off_80303E4 // =off_8032F88 
	sub r0, #0x80
loc_8030398:
	lsl r0, r0, #2
	ldr r3, [r3,r0]
	mov r2, #0xc
	mul r2, r1
	add r3, r3, r2
	str r3, [r5,#0x8] // (dword_200BE78 - 0x200be70)
	ldr r4, [r4,r0]
	mov r2, #0xc
	mul r2, r1
	add r4, r4, r2
	ldr r2, [r4]
	str r2, [r5,#0x18] // (dword_200BE88 - 0x200be70)
	ldr r2, [r4,#4]
	str r2, [r5,#0x1c] // (dword_200BE8C - 0x200be70)
	ldr r2, [r4,#8]
	str r2, [r5,#0x20] // (dword_200BE90 - 0x200be70)
	ldr r0, [r3,#8]
	ldr r1, off_803057C // =eDecompBuffer2013A00
	ldrb r2, [r0]
	strb r2, [r5]
	ldrb r2, [r0,#1]
	strb r2, [r5,#0x1] // (byte_200BE71 - 0x200be70)
	ldr r2, [r3,#4]
	str r2, [r5,#0x10] // (dword_200BE80 - 0x200be70)
	ldr r2, [r3]
	str r2, [r5,#0x14] // (dword_200BE84 - 0x200be70)
	str r1, [r5,#0xc] // (dword_200BE7C - 0x200be70)
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
off_80303D8: .word off_80329A8
off_80303DC: .word off_8032F6C
off_80303E0: .word off_80329C4
off_80303E4: .word off_8032F88
	thumb_func_end sub_803037C

	thumb_func_start sub_80303E8
sub_80303E8:
	ldr r1, off_80305E0 // =eStruct200BE70 
	mov r0, #0x20 
	strb r0, [r1]
	strb r0, [r1,#0x1] // (byte_200BE71 - 0x200be70)
	mov pc, lr
	thumb_func_end sub_80303E8

	thumb_func_start sub_80303F2
sub_80303F2:
	ldr r1, off_80305E0 // =eStruct200BE70 
	mov r0, #0x40 
	strb r0, [r1]
	strb r0, [r1,#0x1] // (byte_200BE71 - 0x200be70)
	mov pc, lr
	thumb_func_end sub_80303F2

	thumb_func_start sub_80303FC
sub_80303FC:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	push {r4,r5}
	mov r5, r0
	mov r1, #0
	ldr r4, [r5]
	sub r1, r1, r4
	mov r6, #0
	ldr r4, [r5,#4]
	sub r6, r6, r4
	mov r7, r6
	mov r8, r1
	add r1, r1, r6
	asr r1, r1, #0x10
	neg r1, r1
	mov r6, r7
	mov r2, r8
	sub r6, r6, r2
	asr r6, r6, #1
	mov r4, #0
	sub r6, r6, r4
	ldr r2, [r5,#8]
	add r6, r6, r2
	asr r6, r6, #0x10
	neg r6, r6
	ldr r5, off_80305E0 // =eStruct200BE70 
	asr r1, r1, #3
	asr r6, r6, #3
	ldrb r2, [r5]
	lsr r2, r2, #1
	ldrb r3, [r5,#0x1] // (byte_200BE71 - 0x200be70)
	lsr r3, r3, #1
	add r1, r1, r2
	add r6, r6, r3
	cmp r1, #0
	bge loc_8030448
	b loc_8030468
loc_8030448:
	ldrb r2, [r5]
	cmp r1, r2
	blt loc_8030450
	b loc_8030468
loc_8030450:
	cmp r6, #0
	bge loc_8030456
	b loc_8030468
loc_8030456:
	ldrb r3, [r5,#0x1] // (byte_200BE71 - 0x200be70)
	cmp r6, r3
	blt loc_803045E
	b loc_8030468
loc_803045E:
	pop {r4,r5}
	mov r8, r4
	mov r9, r5
	mov r0, #0
	pop {r4-r7,pc}
loc_8030468:
	pop {r4,r5}
	mov r8, r4
	mov r9, r5
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80303FC

	thumb_func_start sub_8030472
sub_8030472:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_80305E0 // =eStruct200BE70 
	ldr r0, [r5,#0x10] // (dword_200BE80 - 0x200be70)
	mov r2, #0xd
	lsl r2, r2, #5
	add r0, #4
	ldr r1, off_80304E0 // =byte_3001960 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	mov r0, #0
	ldr r7, [r5,#0x14] // (dword_200BE84 - 0x200be70)
	mov r6, r7
loc_8030492:
	push {r0,r6}
	ldr r0, [r7,#4]
	// src
	add r0, r0, r6
	// dest
	ldr r1, off_803057C // =eDecompBuffer2013A00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, off_803057C // =eDecompBuffer2013A00
	ldr r1, [r7,#8]
	ldr r2, dword_80304E4 // =0x6000000 
	add r1, r1, r2
	ldr r2, [r7]
	lsl r2, r2, #2
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	add r7, #0xc
	pop {r0,r6}
	add r0, #1
	cmp r0, #2
	blt loc_8030492
	ldr r3, [r5,#0x8] // (dword_200BE78 - 0x200be70)
	ldr r0, [r3,#8]
	ldr r1, off_803057C // =eDecompBuffer2013A00
	mov r2, #0xc
	push {r0,r1}
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r0,r1}
	// src
	add r0, #0xc
	// dest
	add r1, #0xc
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, [r5,#0x1c] // (dword_200BE8C - 0x200be70)
	mov lr, pc
	bx r0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
off_80304E0: .word byte_3001960
dword_80304E4: .word 0x6000000
	thumb_func_end sub_8030472

	thumb_func_start sub_80304E8
sub_80304E8:
	push {r4-r7,lr}
	mov r5, r0
	ldr r0, [r5,#0x10]
	tst r0, r0
	beq loc_80304FC
	add r0, #4
	ldr r1, [r5,#0x14]
	ldr r2, [r5,#0x18]
	bl sub_8000AC8
loc_80304FC:
	ldr r7, [r5]
	tst r7, r7
	beq locret_803053A
	ldr r0, [r7,#4]
	// src
	add r0, r0, r7
	// dest
	ldr r1, src // =unk_2034A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, src // =unk_2034A00 
	ldr r1, [r5,#4]
	ldr r2, [r7]
	lsl r2, r2, #2
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r0, [r5,#8]
	// dest
	ldr r1, src // =unk_2034A00 
	// src
	add r0, #0xc
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, src // =unk_2034A00 
	ldr r1, [r5,#0xc]
	mov r2, r10
	ldr r2, [r2,#oToolkit_GFX30025c0_Ptr]
	add r1, r1, r2
	ldr r3, [r5,#8]
	ldrb r2, [r3]
	ldrb r3, [r3,#1]
	mul r2, r3
	lsl r2, r2, #1
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
locret_803053A:
	pop {r4-r7,pc}
src: .word unk_2034A00
	thumb_func_end sub_80304E8

	thumb_func_start sub_8030540
sub_8030540:
	push {r4-r7,lr}
	mov r5, r0
	ldr r0, [r5,#0x10]
	tst r0, r0
	beq loc_8030554
	add r0, #4
	ldr r1, [r5,#0x14]
	ldr r2, [r5,#0x18]
	bl sub_8000AC8
loc_8030554:
	ldr r0, [r5,#8]
	// dest
	ldr r1, off_8030578 // =unk_2034A00 
	// src
	add r0, #0xc
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, off_8030578 // =unk_2034A00 
	ldr r1, [r5,#0xc]
	mov r2, r10
	ldr r2, [r2,#oToolkit_GFX30025c0_Ptr]
	add r1, r1, r2
	ldr r3, [r5,#8]
	ldrb r2, [r3]
	ldrb r3, [r3,#1]
	mul r2, r3
	lsl r2, r2, #1
	bl sub_8000AC8
	pop {r4-r7,pc}
off_8030578: .word unk_2034A00
off_803057C: .word eDecompBuffer2013A00
	thumb_func_end sub_8030540

	thumb_func_start sub_8030580
sub_8030580:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	ldr r5, off_80305E0 // =eStruct200BE70 
	mov r4, #4
	ldrsh r0, [r3,r4]
	mov r4, #6
	ldrsh r1, [r3,r4]
	asr r0, r0, #3
	asr r1, r1, #3
	mov r4, #0x4 // (word_200BE74 - 0x200be70)
	ldrsh r2, [r5,r4]
	cmp r0, r2
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
	mov r4, #0x6 // (word_200BE76 - 0x200be70)
	ldrsh r2, [r5,r4]
	cmp r1, r2
	beq loc_80305D4
	bgt loc_80305CE
	sub r2, r2, r1
	bl sub_8030722
	b loc_80305D4
loc_80305CE:
	sub r2, r1, r2
	bl sub_803077C
loc_80305D4:
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
	.byte 0, 0
off_80305E0: .word eStruct200BE70
	thumb_func_end sub_8030580

	thumb_local_start
sub_80305E4:
	cmp r0, #0
	bge loc_80305EA
	b loc_8030622
loc_80305EA:
	ldrb r6, [r5]
	cmp r0, r6
	blt loc_80305F2
	b loc_8030622
loc_80305F2:
	cmp r1, #0
	bge loc_80305F8
	b loc_8030622
loc_80305F8:
	ldrb r6, [r5,#1]
	cmp r1, r6
	blt loc_8030600
	b loc_8030622
loc_8030600:
	ldr r3, [r5,#0xc]
	mov r4, #8
loc_8030604:
	ldrb r7, [r5]
	lsl r7, r7, #1
loc_8030608:
	ldr r2, [r3,r4]
	add r2, r2, r3
	lsl r6, r0, #1
	add r2, r2, r6
	mov r6, r1
	mul r6, r7
	ldrh r2, [r2,r6]
	push {r2}
	sub r4, #4
	cmp r4, #0
	bgt loc_8030608
	pop {r0,r1}
	mov pc, lr
loc_8030622:
	mov r0, #0
	mov r1, #0
	b loc_8030600
	thumb_func_end sub_80305E4

	thumb_func_start sub_8030628
sub_8030628:
	push {r0,r1}
	mov r2, #1
loc_803062C:
	pop {r0}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GFX30025c0_Ptr]
	lsl r6, r2, #0xb
	add r7, r7, r6
	lsl r6, r3, #1
	add r7, r7, r6
	lsl r6, r4, #6
	strh r0, [r7,r6]
	add r2, #1
	cmp r2, #2
	ble loc_803062C
	mov pc, lr
	thumb_func_end sub_8030628

	thumb_local_start
sub_8030646:
	mov r2, #2
	mov r7, r10
	ldr r7, [r7,#oToolkit_GFX30025c0_Ptr]
	lsl r6, r2, #0xb
	add r7, r7, r6
	lsl r6, r3, #1
	add r7, r7, r6
	lsl r6, r4, #6
	strh r1, [r7,r6]
	mov pc, lr
	thumb_func_end sub_8030646

	thumb_local_start
sub_803065A:
	mov r2, #1
	mov r7, r10
	ldr r7, [r7,#oToolkit_GFX30025c0_Ptr]
	lsl r6, r2, #0xb
	add r7, r7, r6
	lsl r6, r3, #1
	add r7, r7, r6
	lsl r6, r4, #6
	strh r1, [r7,r6]
	mov pc, lr
	thumb_func_end sub_803065A

	thumb_local_start
sub_803066E:
	push {lr}
	strh r0, [r5,#4]
	cmp r2, #5
	blt loc_803067E
	ldr r3, [r5,#0x20]
	mov lr, pc
	bx r3
	b locret_80306C6
loc_803067E:
	push {r1}
	mov r7, #0
loc_8030682:
	push {r2,r7}
	mov r8, r0
	mov r9, r1
	sub r0, #0xf
	sub r1, #0xa
	ldrb r6, [r5]
	lsr r6, r6, #1
	ldrb r7, [r5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov r4, r9
	mov r3, r8
	sub r3, #0x20 
	mov r6, #0x1f
	and r3, r6
	and r4, r6
	ldr r6, [r5,#0x18]
	mov lr, pc
	bx r6
	pop {r2,r7}
	mov r0, r8
	mov r1, r9
	add r1, #1
	add r7, #1
	cmp r7, #0x20 
	blt loc_8030682
	pop {r1}
	add r0, #1
	sub r2, #1
	cmp r2, #0
	bgt loc_803067E
locret_80306C6:
	pop {pc}
	thumb_func_end sub_803066E

	thumb_local_start
sub_80306C8:
	push {lr}
	strh r0, [r5,#4]
	cmp r2, #5
	blt loc_80306D8
	ldr r3, [r5,#0x20]
	mov lr, pc
	bx r3
	b locret_8030720
loc_80306D8:
	push {r1}
	mov r7, #0
loc_80306DC:
	push {r2,r7}
	mov r8, r0
	mov r9, r1
	add r0, #0xf
	sub r1, #0xa
	ldrb r6, [r5]
	lsr r6, r6, #1
	ldrb r7, [r5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov r4, r9
	mov r3, r8
	add r3, #0x1e
	mov r6, #0x1f
	and r3, r6
	and r4, r6
	ldr r6, [r5,#0x18]
	mov lr, pc
	bx r6
	pop {r2,r7}
	mov r0, r8
	mov r1, r9
	add r1, #1
	add r7, #1
	cmp r7, #0x20 
	blt loc_80306DC
	pop {r1}
	sub r0, #1
	sub r2, #1
	cmp r2, #0
	bgt loc_80306D8
locret_8030720:
	pop {pc}
	thumb_func_end sub_80306C8

	thumb_local_start
sub_8030722:
	push {lr}
	strh r1, [r5,#6]
	cmp r2, #5
	blt loc_8030732
	ldr r3, [r5,#0x20]
	mov lr, pc
	bx r3
	b locret_803077A
loc_8030732:
	push {r0}
	mov r7, #0
loc_8030736:
	push {r2,r7}
	mov r8, r0
	mov r9, r1
	sub r0, #0xf
	sub r1, #0xa
	ldrb r6, [r5]
	lsr r6, r6, #1
	ldrb r7, [r5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov r4, r9
	mov r3, r8
	sub r4, #0x20 
	mov r6, #0x1f
	and r3, r6
	and r4, r6
	ldr r6, [r5,#0x18]
	mov lr, pc
	bx r6
	pop {r2,r7}
	mov r0, r8
	mov r1, r9
	add r0, #1
	add r7, #1
	cmp r7, #0x20 
	blt loc_8030736
	pop {r0}
	add r1, #1
	sub r2, #1
	cmp r2, #0
	bgt loc_8030732
locret_803077A:
	pop {pc}
	thumb_func_end sub_8030722

	thumb_local_start
sub_803077C:
	push {lr}
	strh r1, [r5,#6]
	cmp r2, #5
	blt loc_803078C
	ldr r3, [r5,#0x20]
	mov lr, pc
	bx r3
	b locret_80307D4
loc_803078C:
	push {r0}
	mov r7, #0
loc_8030790:
	push {r2,r7}
	mov r8, r0
	mov r9, r1
	sub r0, #0xf
	add r1, #0xa
	ldrb r6, [r5]
	lsr r6, r6, #1
	ldrb r7, [r5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	bl sub_80305E4
	mov r4, r9
	mov r3, r8
	add r4, #0x14
	mov r6, #0x1f
	and r3, r6
	and r4, r6
	ldr r6, [r5,#0x18]
	mov lr, pc
	bx r6
	pop {r2,r7}
	mov r0, r8
	mov r1, r9
	add r0, #1
	add r7, #1
	cmp r7, #0x20 
	blt loc_8030790
	pop {r0}
	sub r1, #1
	sub r2, #1
	cmp r2, #0
	bgt loc_803078C
locret_80307D4:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_803077C

	thumb_func_start sub_80307D8
sub_80307D8:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	mov r4, #4
	ldrsh r0, [r3,r4]
	mov r4, #6
	ldrsh r1, [r3,r4]
	asr r0, r0, #3
	asr r1, r1, #3
	ldr r5, off_8030804 // =eStruct200BE70 
	bl sub_803086C
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8030804: .word eStruct200BE70
	thumb_func_end sub_80307D8

	thumb_func_start sub_8030808
sub_8030808:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_CameraPtr]
	mov r1, #4
	ldrsh r3, [r0,r1]
	mov r1, #6
	ldrsh r4, [r0,r1]
	asr r3, r3, #3
	asr r4, r4, #3
	strh r3, [r5,#4]
	strh r4, [r5,#6]
	mov r1, #0
loc_8030820:
	push {r3}
	mov r0, #0
loc_8030824:
	push {r0,r1}
	mov r0, r3
	mov r1, r4
	sub r0, #0xf
	sub r1, #0xa
	ldrb r6, [r5]
	lsr r6, r6, #1
	ldrb r7, [r5,#1]
	lsr r7, r7, #1
	add r0, r0, r6
	add r1, r1, r7
	mov r8, r3
	mov r9, r4
loc_803083E:
	bl sub_80305E4
	mov r3, r8
	mov r4, r9
	mov r6, #0x1f
	and r3, r6
	and r4, r6
	ldr r6, [r5,#0x18]
	mov lr, pc
	bx r6
	mov r3, r8
	mov r4, r9
	add r3, #1
	pop {r0,r1}
	add r0, #1
	cmp r0, #0x20 
	blt loc_8030824
	pop {r3}
	add r4, #1
	add r1, #1
	cmp r1, #0x20 
	blt loc_8030820
	pop {pc}
	thumb_func_end sub_8030808

	thumb_func_start sub_803086C
sub_803086C:
	push {r4-r7,lr}
	mov r8, r0
	mov r9, r1
	ldr r4, [r5,#0xc]
	ldr r0, [r4,#4]
	add r0, r0, r4
	mov r1, #1
	ldrb r2, [r5]
	ldrb r3, [r5,#1]
	bl sub_8030892
	ldr r0, [r4,#8]
	add r0, r0, r4
	mov r1, #2
	ldrb r2, [r5]
	ldrb r3, [r5,#1]
	bl sub_8030892
	pop {r4-r7,pc}
	thumb_func_end sub_803086C

	thumb_local_start
sub_8030892:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r2, [sp]
	str r3, [sp,#4]
	mov r7, r0
	mov r6, r1
	mov r5, #0
loc_80308A0:
	mov r0, r8
	mov r1, r9
	add r1, r1, r5
	sub r0, #0xf
	sub r1, #0xa
	ldr r2, [sp]
	lsr r2, r2, #1
	ldr r3, [sp,#4]
	lsr r3, r3, #1
	add r0, r0, r2
	add r1, r1, r3
	blt loc_80308E0
	ldr r2, [sp,#4]
	cmp r1, r2
	bge loc_80308E0
	ldr r2, [sp]
	lsl r2, r2, #1
	lsl r0, r0, #1
	mul r2, r1
	add r3, r0, r2
	mov r0, r8
	mov r1, r9
	add r1, r1, r5
	mov r2, #0x1f
	and r0, r2
	and r1, r2
	mov r2, r6
	add r3, r3, r7
	mov r4, #0x20 
	bl sub_80018E0
	b loc_80308FA
loc_80308E0:
	push {r5}
	mov r0, #0
	mov r1, r9
	add r1, r1, r5
	mov r2, #0x1f
	and r1, r2
	mov r2, r6
	mov r3, #0
	mov r4, #0x20 
	mov r5, #1
	bl sub_80018D0
	pop {r5}
loc_80308FA:
	add r5, #1
	cmp r5, #0x20 
	blt loc_80308A0
	add sp, sp, #8
	pop {r4-r7,pc}
EnterMap_RealWorldMapGroupJumptable: .word sub_804CE90+1
off_8030908: .word sub_804E62C+1
	.word sub_8052688+1
	.word sub_80595B8+1
	.word sub_805DF08+1
	.word sub_806036C+1
	.word sub_8062AB0+1
UnkRealWorldMapGroupJumptable_8030920: .word sub_804CF32+1
	.word sub_804E6D0+1
	.word sub_8052764+1
	.word sub_8059664+1
	.word sub_805DFA2+1
	.word sub_8060406+1
	.word sub_8062B64+1
EnterMap_InternetMapGroupJumptable: .word sub_80663D0+1
	.word sub_8067B5C+1
	.word sub_8069038+1
	.word sub_8069FE8+1
	.word nullsub_61+1
	.word sub_806AA00+1
	.word nullsub_61+1
	.word nullsub_61+1
	.word sub_806C23C+1
	.word nullsub_61+1
	.word nullsub_61+1
	.word nullsub_61+1
	.word sub_806D8F8+1
	.word sub_806FC08+1
	.word nullsub_61+1
	.word nullsub_61+1
	.word sub_8071B50+1
	.word sub_807544C+1
	.word sub_8077D00+1
	.word sub_807931C+1
	.word sub_807A8E0+1
	.word sub_807CDEC+1
	.word sub_807ECD0+1
UnkInternetMapGroupJumptable_8030998: .word sub_8066450+1
	.word sub_8067BE4+1
	.word sub_80690C2+1
	.word sub_806A070+1
	.word nullsub_62+1
	.word sub_806AAAA+1
	.word nullsub_62+1
	.word nullsub_62+1
	.word sub_806C2E2+1
	.word nullsub_62+1
	.word nullsub_62+1
	.word nullsub_62+1
	.word sub_806D9FC+1
	.word sub_806FCF8+1
	.word nullsub_62+1
	.word nullsub_62+1
	.word sub_8071BE4+1
	.word sub_80754E2+1
	.word sub_8077D8A+1
	.word sub_807939A+1
	.word sub_807A974+1
	.word sub_807CE90+1
	.word sub_807ED6C+1
EnterMap_UnkMapGroupJumptable: .word nullsub_61+1
UnkMapGroupRangeMapGroupJumptable_80309f8: .word nullsub_62+1
	thumb_func_end sub_8030892

	thumb_local_start
nullsub_61:
	mov pc, lr
	thumb_func_end nullsub_61

	thumb_local_start
nullsub_62:
	mov pc, lr
	thumb_func_end nullsub_62

	thumb_func_start EnterMap_RunMapGroupAsmFunction_8030A00
EnterMap_RunMapGroupAsmFunction_8030A00: // 8030A00
	push {lr}
	cmp r0, #UNKNOWN_MAP_GROUP_START // 0xf0
	bge .unknownMapGroupRange
	cmp r0, #INTERNET_MAP_GROUP_START
	bge .isInternetMap
	ldr r1, =EnterMap_RealWorldMapGroupJumptable
	b .runMapGroupFunction
.isInternetMap
	ldr r1, =EnterMap_InternetMapGroupJumptable
	sub r0, #INTERNET_MAP_GROUP_START
	b .runMapGroupFunction
.unknownMapGroupRange
	ldr r1, =EnterMap_UnkMapGroupJumptable
	sub r0, #UNKNOWN_MAP_GROUP_START
.runMapGroupFunction
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
	.pool
	thumb_func_end EnterMap_RunMapGroupAsmFunction_8030A00

	thumb_func_start map_8030A30
// r0 map group, r1 map number
map_8030A30:
	push {lr}
	cmp r0, #UNKNOWN_MAP_GROUP_START
	bge .unknownMapGroupRange
	cmp r0, #INTERNET_MAP_GROUP_START
	bge .isInternetMap
	ldr r2, =UnkRealWorldMapGroupJumptable_8030920
	b .runMapGroupFunction
.isInternetMap
	ldr r2, =UnkInternetMapGroupJumptable_8030998
	sub r0, #INTERNET_MAP_GROUP_START
	b .runMapGroupFunction
.unknownMapGroupRange
	ldr r2, =UnkMapGroupRangeMapGroupJumptable_80309f8
	sub r0, #UNKNOWN_MAP_GROUP_START
.runMapGroupFunction
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	mov lr, pc
	bx r2
	pop {pc}
	.balign 4, 0
	.pool
	thumb_func_end map_8030A30

	thumb_func_start sub_8030A60
sub_8030A60:
	push {r4-r6,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r1, [r4,#oGameState_Unk_20]
	cmp r0, r1
	beq locret_8030A8A
	str r0, [r4,#oGameState_Unk_20]
	push {r0}
	mov r0, #4
	bl sub_80035A2
	pop {r0}
	mov r1, #0
loc_8030A7A:
	ldr r2, [r0]
	cmp r2, #0xff
	beq locret_8030A8A
	bl sub_8030A8C
	add r1, #1
	add r0, #4
	b loc_8030A7A
locret_8030A8A:
	pop {r4-r6,pc}
	thumb_func_end sub_8030A60

	thumb_local_start
sub_8030A8C:
	push {lr}
	push {r0-r2}
	mov r0, #0
	bl SpawnOverworldNPCObject
	pop {r0-r2}
	tst r5, r5
	beq locret_8030AA0
	strb r1, [r5,#0x10]
	str r2, [r5,#0x60]
locret_8030AA0:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8030A8C

	thumb_func_start sub_8030AA4
// coordinate effect 
sub_8030AA4: // JP 0x8031A60
	push {r4-r7,lr}
	mov r2, r8
	mov r3, r9
	mov r4, r12
	push {r2-r4}
	cmp r0, #0x80
	bge loc_8030AB6
	ldr r3, off_8030B00 // =pt_8033530 
	b loc_8030ABA
loc_8030AB6:
	ldr r3, off_8030B04 // =pt_803354C 
	sub r0, #0x80
loc_8030ABA:
	lsl r0, r0, #2 // map group
	add r3, r3, r0
	ldr r3, [r3]
	lsl r1, r1, #2 // map number
	add r3, r3, r1
	ldr r0, [r3]
	push {r0}
	// src
	add r0, #0x10
	// dest
	ldr r1, off_8030B08 // =unk_2027A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r6}
	ldr r7, off_8030B08 // =unk_2027A00 
	ldr r0, [r6]
	add r0, r0, r7
	bl sub_8030B0C
	ldr r0, [r6,#4]
	add r0, r0, r7
	bl sub_8031600
	ldr r0, [r6,#8]
	add r0, r0, r7
	bl sub_803189C
	ldr r0, [r6,#0xc]
	add r0, r0, r7
	bl sub_8031A68
	pop {r2-r4}
	mov r8, r2
	mov r9, r3
	mov r12, r4
	pop {r4-r7,pc}
	.byte 0, 0
off_8030B00: .word pt_8033530 // JP Falzar 0x80344ec
off_8030B04: .word pt_803354C // JP Falzar 0x8034508
off_8030B08: .word unk_2027A00
	thumb_func_end sub_8030AA4

	thumb_local_start
sub_8030B0C:
	ldr r5, off_8030E10 // =dword_2011D10 
	ldr r1, [r0]
	strh r1, [r5,#0x4] // (word_2011D14 - 0x2011d10)
	add r0, #4
	str r0, [r5]
	mov r0, #0xfe
	strb r0, [r5,#0x8] // (byte_2011D18 - 0x2011d10)
	strb r0, [r5,#0x9] // (byte_2011D19 - 0x2011d10)
	mov pc, lr
	thumb_func_end sub_8030B0C

	thumb_local_start
sub_8030B1E:
	push {lr}
	ldrh r2, [r5,#oUnk_Ex2011a20_Unk_04]
	cmp r2, #0
	beq .loc_8030B66
	mov r2, #0
	ldrh r3, [r5,#oUnk_Ex2011a20_Unk_04]
	ldr r6, [r5,#oUnk_Ex2011a20_UnkPtr_00]
	mov r8, r6

// this is a binary search
// will document later
// r3 = unk04
.loop
	.align 1, 0
	add r4, r2, r3
	lsr r4, r4, #1
	lsl r7, r4, #2
	mov r6, r8
	add r6, r6, r7
	// read hword from [UnkPtr_00 + ((r2 + r3) & ~1) * 2]
	ldrh r7, [r6]
	cmp r1, r7
	beq .loc_8030B4C
	bgt .loc_8030B44
	// r3 = r4, which is (r2 + r3) / 2 from current iteration
	mov r3, r4
	b .loc_8030B48
.loc_8030B44:
	.align 1, 0
	mov r2, r4
	add r2, #1
.loc_8030B48:
	.align 1, 0
	cmp r2, r3
	blt .loop

.loc_8030B4C:
	.align 1, 0
	cmp r1, r7
	bne .loc_8030B66
	ldr r2, [r5]
.loc_8030B52:
	.align 1, 0
	sub r6, #4
	cmp r6, r2
	blt .loc_8030B60
	ldrh r7, [r6]
	cmp r1, r7
	bne .loc_8030B60
	b .loc_8030B52
.loc_8030B60:
	.align 1, 0
	add r6, #4
	mov r2, r6
	pop {pc}
.loc_8030B66:
	.align 1, 0
	mov r2, #0
	pop {pc}
	thumb_func_end sub_8030B1E

	thumb_func_start sub_8030B6A
sub_8030B6A:
	push {r4-r7,lr}
	mov r2, r8
	mov r3, r9
	mov r4, r12
	push {r2-r4}
	ldr r5, off_8030E10 // =dword_2011D10 
	ldr r2, off_8030C38 // =dword_200F3D0 
	str r0, [r2]
	mov r4, #0
	mov r12, r4
	strb r4, [r5,#0xb] // (byte_2011D1B - 0x2011d10)
loc_8030B80: .align 1, 0
	mov r1, r5
	add r1, #0x18
	str r1, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
	mov r1, #0
	strb r1, [r5,#0xa] // (byte_2011D1A - 0x2011d10)
	neg r1, r1
	strh r1, [r5,#0x6] // (word_2011D16 - 0x2011d10)
	bl sub_8030CAC
	mov r2, #0x18
	add r2, r2, r5
	str r2, [r5,#0x10] // (dword_2011D20 - 0x2011d10)
loc_8030B98: .align 1, 0
	ldr r1, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
	cmp r2, r1
	beq loc_8030C0E
	ldrh r1, [r2]
	bl sub_8030B1E
	cmp r2, #0
	bne loc_8030BB0
loc_8030BA8: .align 1, 0
	ldr r2, [r5,#0x10] // (dword_2011D20 - 0x2011d10)
	add r2, #0x10
	str r2, [r5,#0x10] // (dword_2011D20 - 0x2011d10)
	b loc_8030B98
loc_8030BB0: .align 1, 0
	ldrh r4, [r2]
	cmp r1, r4
	bne loc_8030BA8
	ldrh r7, [r2,#2]
	ldr r4, [r5]
	add r7, r7, r4
	mov r4, #0
	ldrsb r4, [r7,r4]
	mov r6, #0xa
	ldrsh r3, [r0,r6]
	cmp r3, r4
	blt loc_8030C0A
	ldrb r6, [r7,#2]
	add r4, r4, r6
	cmp r3, r4
	bgt loc_8030C0A
	ldrb r6, [r7,#1]
	strb r6, [r5,#0xc] // (byte_2011D1C - 0x2011d10)
	mov r4, #0x80
	tst r6, r4
	beq loc_8030BEE
	push {r0-r2}
	mov r4, #0x7f
	and r6, r4
	ldr r0, dword_8030CA8 // =0x1640 
	add r0, r0, r6
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0-r2}
	bne loc_8030C0A
loc_8030BEE: .align 1, 0
	ldrb r6, [r7,#3]
	lsl r6, r6, #2
	ldr r4, off_8030C3C // =dword_8030C40 
	add r4, r4, r6
	ldr r4, [r4]
	mov lr, pc
	bx r4
	ldrb r4, [r5,#0xb] // (byte_2011D1B - 0x2011d10)
	add r4, r4, r3
	strb r4, [r5,#0xb] // (byte_2011D1B - 0x2011d10)
	cmp r4, #4
	bge loc_8030C1A
	cmp r3, #0
	bne loc_8030B80
loc_8030C0A: .align 1, 0
	add r2, #4
	b loc_8030BB0
loc_8030C0E: .align 1, 0
	mov r0, r12
	pop {r2-r4}
	mov r8, r2
	mov r9, r3
	mov r12, r4
	pop {r4-r7,pc}
loc_8030C1A: .align 1, 0
	ldr r0, off_8030C38 // =dword_200F3D0 
	ldr r0, [r0]
	ldr r6, [r0,#0xc]
	str r6, [r0]
	ldr r6, [r0,#0x10]
	str r6, [r0,#4]
	ldr r6, [r0,#0x14]
	str r6, [r0,#8]
	mov r0, #0
	pop {r2-r4}
	mov r8, r2
	mov r9, r3
	mov r12, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8030C38: .word dword_200F3D0
off_8030C3C: .word dword_8030C40
dword_8030C40: .word 0x0
	.word sub_8031388+1 // 0x01 up left
	.word sub_80313B0+1 // 0x02 down right
	.word sub_80313D4+1 // 0x03 down left
	.word sub_80313FC+1 // 0x04 up right
	.word sub_8031420+1 // 0x05 corner right
	.word sub_8031478+1 // 0x06 corner down
	.word sub_80314CC+1 // 0x07 corner up
	.word sub_8031520+1 // 0x08 corner left
	.word sub_80311F4+1 // 0x09 vertical right
	.word sub_803123E+1 // 0x0a horizontal down
	.word sub_8031264+1 // 0x0b horizontal up
	.word sub_803128E+1 // 0x0c vertical left
	.word sub_80312D0+1 // 0x0d ??? weird version of 0x9, used partially for the judge tree comp stump walls https://i.imgur.com/dcfOYtJ.png
	.word sub_8031302+1 // 0x0e ??? likely a weird version of 0xa
	.word sub_8031330+1 // 0x0f ??? weird version of 0xb, used partially for the judge tree comp stump walls https://i.imgur.com/3tXbSRb.png
	.word sub_803135E+1 // 0x10 ??? likely a weird version of 0xc
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
dword_8030CA8: .word 0x1640
	thumb_func_end sub_8030B6A

	thumb_local_start
// r0 - pointer to coords
// r5 - pointer to 2011d10
sub_8030CAC:
	push {lr}
	push {r0,r5}
	mov r2, #oOWObjectCoords_NextX
	ldrsh r4, [r0,r2]
	mov r2, #oOWObjectCoords_NextY
	ldrsh r7, [r0,r2]
	bl sub_8030DA2
	mov r2, #2
	ldrsh r1, [r0,r2]
	mov r2, #0xe
	ldrsh r2, [r0,r2]
	sub r1, r1, r2
	mov r6, r1
	cmp r6, #0
	bge loc_8030CCE
	neg r6, r6
loc_8030CCE:
	mov r3, #6
	ldrsh r2, [r0,r3]
	mov r3, #0x12
	ldrsh r3, [r0,r3]
	sub r2, r2, r3
	mov r7, r2
	cmp r7, #0
	bge loc_8030CE0
	neg r7, r7
loc_8030CE0:
	cmp r6, r7
	bgt loc_8030CEC
	blt loc_8030D28
	cmp r1, #0
	bne loc_8030D64
	b loc_8030D92
loc_8030CEC:
	mov r3, #0xe
	ldrsh r4, [r0,r3]
	mov r3, #2
	ldrsh r6, [r0,r3]
	mov r3, #0x12
	ldrsh r7, [r0,r3]
	mov r3, #1
	mov r0, #1
	cmp r1, #0
	bge loc_8030D04
	neg r3, r3
	neg r1, r1
loc_8030D04:
	cmp r2, #0
	bge loc_8030D0C
	neg r0, r0
	neg r2, r2
loc_8030D0C:
	mvn r5, r1
loc_8030D0E:
	add r4, r4, r3
	cmp r4, r6
	beq loc_8030D92
	add r5, r5, r2
	add r5, r5, r2
	cmp r5, r1
	blt loc_8030D22
	add r7, r7, r0
	sub r5, r5, r1
	sub r5, r5, r1
loc_8030D22:
	bl sub_8030DA2
	b loc_8030D0E
loc_8030D28:
	mov r3, #0x12
	ldrsh r7, [r0,r3]
	mov r3, #6
	ldrsh r6, [r0,r3]
	mov r3, #0xe
	ldrsh r4, [r0,r3]
	mov r3, #1
	mov r0, #1
	cmp r1, #0
	bge loc_8030D40
	neg r3, r3
	neg r1, r1
loc_8030D40:
	cmp r2, #0
	bge loc_8030D48
	neg r0, r0
	neg r2, r2
loc_8030D48:
	mvn r5, r2
loc_8030D4A:
	add r7, r7, r0
	cmp r7, r6
	beq loc_8030D92
	add r5, r5, r1
	add r5, r5, r1
	cmp r5, r2
	blt loc_8030D5E
	add r4, r4, r3
	sub r5, r5, r2
	sub r5, r5, r2
loc_8030D5E:
	bl sub_8030DA2
	b loc_8030D4A
loc_8030D64:
	mov r3, #0x12
	ldrsh r7, [r0,r3]
	mov r3, #6
	ldrsh r6, [r0,r3]
	mov r3, #0xe
	ldrsh r4, [r0,r3]
	mov r3, #1
	mov r0, #1
	cmp r1, #0
	bge loc_8030D7C
	neg r3, r3
	neg r1, r1
loc_8030D7C:
	cmp r2, #0
	bge loc_8030D84
	neg r0, r0
	neg r2, r2
loc_8030D84:
	add r7, r7, r0
	cmp r7, r6
	beq loc_8030D92
	add r4, r4, r3
	bl sub_8030DA2
	b loc_8030D84
loc_8030D92:
	pop {r0,r5}
	mov r2, #2
	ldrsh r4, [r0,r2]
	mov r2, #6
	ldrsh r7, [r0,r2]
	bl sub_8030DA2
	pop {pc}
	thumb_func_end sub_8030CAC

	thumb_local_start
// r0 - pointer to coords
// r5 - pointer to 2011d10
// r4 - next x
// r7 - next y
sub_8030DA2:
	sub sp, sp, #0x10
	str r0, [sp]
	str r5, [sp,#4]
	str r4, [sp,#8]
	str r7, [sp,#0xc]
	asr r4, r4, #3
	asr r7, r7, #3
	ldr r5, off_8030E10 // =dword_2011D10 
	ldrb r0, [r5,#0x9] // (byte_2011D19 - 0x2011d10)
	lsr r0, r0, #1
	add r7, r7, r0
	ldrb r0, [r5,#0x8] // (byte_2011D18 - 0x2011d10)
	lsr r0, r0, #1
	add r4, r4, r0
	lsl r0, r0, #1
	mul r7, r0
	add r7, r7, r4
	ldrh r0, [r5,#0x6] // (word_2011D16 - 0x2011d10)
	cmp r0, r7
	beq loc_8030E02
	ldrb r0, [r5,#0xa] // (byte_2011D1A - 0x2011d10)
	add r4, r0, #1
	cmp r4, #0x10
	bge loc_8030E02
	strh r7, [r5,#0x6] // (word_2011D16 - 0x2011d10)
	strb r4, [r5,#0xa] // (byte_2011D1A - 0x2011d10)
	ldr r4, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
	add r4, #0x10
	str r4, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
	mov r4, #0x10
	mul r4, r0
	add r4, #0x18
	add r5, r5, r4
	strh r7, [r5]
	ldr r4, [sp,#8]
	ldr r7, [sp,#0xc]
	mov r0, #7
	mov r8, r4
	bic r4, r0
	str r4, [r5,#4]
	mov r4, r7
	bic r4, r0
	str r4, [r5,#8]
	mov r4, r8
	ldr r0, [sp]
	ldr r5, [sp,#4]
	add sp, sp, #0x10
	mov pc, lr
loc_8030E02:
	ldr r0, [sp]
	ldr r5, [sp,#4]
	ldr r4, [sp,#8]
	ldr r7, [sp,#0xc]
	add sp, sp, #0x10
	mov pc, lr
	.byte 0, 0
off_8030E10: .word dword_2011D10
	thumb_func_end sub_8030DA2

	thumb_local_start
sub_8030E14:
	push {lr}
	mov r8, r6
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	bge loc_8030E86
	mov r3, r8
	cmp r3, #1
	beq loc_8030E4C
	ldr r3, [r0,#0xc]
	ldr r4, [r0,#0x10]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	blt loc_8030E86
loc_8030E4C:
	ldr r3, [r0]
	mul r3, r6
	add r3, r3, r2
	neg r3, r3
	mov r4, r7
	push {r6,r7}
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0,#4]
	sub r4, r7, r4
	mov r8, r4
	pop {r6,r7}
	ldr r3, [r0,#4]
	mul r3, r7
	add r3, r3, r2
	neg r3, r3
	mov r4, r6
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0]
	sub r4, r7, r4
	mov r9, r4
	mov r0, r9
	mov r1, r8
	pop {pc}
loc_8030E86:
	mov r0, #0
	mov r1, #0
	pop {pc}
	thumb_func_end sub_8030E14

	thumb_local_start
sub_8030E8C:
	push {lr}
	mov r8, r6
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	bge loc_8030EFE
	mov r3, r8
	cmp r3, #1
	beq loc_8030EC4
	ldr r3, [r0,#0xc]
	ldr r4, [r0,#0x10]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	blt loc_8030EFE
loc_8030EC4:
	ldr r3, [r0]
	mul r3, r6
	add r3, r3, r2
	neg r3, r3
	mov r4, r7
	push {r6,r7}
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0,#4]
	sub r4, r7, r4
	mov r8, r4
	pop {r6,r7}
	ldr r3, [r0,#4]
	mul r3, r7
	add r3, r3, r2
	neg r3, r3
	mov r4, r6
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0]
	sub r4, r7, r4
	mov r9, r4
	mov r0, r9
	mov r1, r8
	pop {pc}
loc_8030EFE:
	mov r0, #0
	mov r1, #0
	pop {pc}
	thumb_func_end sub_8030E8C

	thumb_local_start
sub_8030F04:
	push {lr}
	mov r8, r6
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	ble loc_8030F76
	mov r3, r8
	cmp r3, #1
	beq loc_8030F3C
	ldr r3, [r0,#0xc]
	ldr r4, [r0,#0x10]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	bgt loc_8030F76
loc_8030F3C:
	ldr r3, [r0]
	mul r3, r6
	add r3, r3, r2
	neg r3, r3
	mov r4, r7
	push {r6,r7}
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0,#4]
	sub r4, r7, r4
	mov r8, r4
	pop {r6,r7}
	ldr r3, [r0,#4]
	mul r3, r7
	add r3, r3, r2
	neg r3, r3
	mov r4, r6
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0]
	sub r4, r7, r4
	mov r9, r4
	mov r0, r9
	mov r1, r8
	pop {pc}
loc_8030F76:
	mov r0, #0
	mov r1, #0
	pop {pc}
	thumb_func_end sub_8030F04

	thumb_local_start
sub_8030F7C:
	push {lr}
	mov r8, r6
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	ble loc_8030FEE
	mov r3, r8
	cmp r3, #1
	beq loc_8030FB4
	ldr r3, [r0,#0xc]
	ldr r4, [r0,#0x10]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	bgt loc_8030FEE
loc_8030FB4:
	ldr r3, [r0]
	mul r3, r6
	add r3, r3, r2
	neg r3, r3
	mov r4, r7
	push {r6,r7}
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0,#4]
	sub r4, r7, r4
	mov r8, r4
	pop {r6,r7}
	ldr r3, [r0,#4]
	mul r3, r7
	add r3, r3, r2
	neg r3, r3
	mov r4, r6
	mov r6, r3
	mov r7, r4
	bl sub_8031048
	ldr r4, [r0]
	sub r4, r7, r4
	mov r9, r4
	mov r0, r9
	mov r1, r8
	pop {pc}
loc_8030FEE:
	mov r0, #0
	mov r1, #0
	pop {pc}
DebugStrings8030FF4: .word DebugStr8031004
	.word DebugStr8031015
	.word DebugStr8031026
	.word DebugStr8031037
DebugStr8031004:
    .hword 0xD00
    .asciz "00 X:%8X Y:%8X"
DebugStr8031015:
    .hword 0xE00
    .asciz "01 X:%8X Y:%8X"
DebugStr8031026:
    .hword 0xF00
    .asciz "02 X:%8X Y:%8X"
DebugStr8031037:
    .hword 0x1000
    .asciz "03 X:%8X Y:%8X"
	thumb_func_end sub_8030F7C

	thumb_local_start
sub_8031048:
	push {r2,r3,lr}
	mov r2, #0
	mov r3, #0
	cmp r7, #0
	beq loc_803106C
	cmp r6, #0
	bge loc_803105A
	neg r6, r6
	mvn r3, r3
loc_803105A:
	cmp r7, #0
	bge loc_8031062
	neg r7, r7
	mvn r3, r3
loc_8031062:
	cmp r6, r7
	blt loc_803106C
	sub r6, r6, r7
	add r2, #1
	b loc_8031062
loc_803106C:
	mov r7, r2
	cmp r3, #0
	beq locret_8031076
	neg r7, r7
	neg r6, r6
locret_8031076:
	pop {r2,r3,pc}
	thumb_func_end sub_8031048

	thumb_local_start
sub_8031078:
	push {r2,r3,lr}
	mov r2, #0
	mov r3, #0
	cmp r7, #0
	beq loc_803109C
	cmp r6, #0
	bge loc_803108A
	neg r6, r6
	mvn r3, r3
loc_803108A:
	cmp r7, #0
	bge loc_8031092
	neg r7, r7
	mvn r3, r3
loc_8031092:
	cmp r6, r7
	blt loc_803109C
	sub r6, r6, r7
	add r2, #1
	b loc_8031092
loc_803109C:
	lsr r7, r7, #1
	cmp r6, r7
	blt loc_80310A4
	add r2, #1
loc_80310A4:
	mov r7, r2
	cmp r3, #0
	beq locret_80310AE
	neg r7, r7
	neg r6, r6
locret_80310AE:
	pop {r2,r3,pc}
	thumb_func_end sub_8031078

	thumb_local_start
sub_80310B0:
	push {lr}
	lsl r0, r0, #0xe
	lsl r1, r1, #0xe
	mov r3, #1
	cmp r0, #0
	beq loc_80310BE
	b loc_80310C6
loc_80310BE:
	cmp r1, #0
	beq loc_80310C4
	b loc_80310C6
loc_80310C4:
	mov r3, #0
loc_80310C6:
	cmp r3, #0
	beq locret_80310E4
	ldr r5, off_80310E8 // =dword_200F3D0 
	ldr r5, [r5]
	ldr r4, off_80311F0 // =dword_200F3E0 
	ldr r6, [r5]
	add r6, r6, r0
	ldr r2, [r4,#0x18] // (dword_200F3F8 - 0x200f3e0)
	add r6, r6, r2
	str r6, [r5]
	ldr r6, [r5,#4]
	add r6, r6, r1
	ldr r2, [r4,#0x1c] // (dword_200F3FC - 0x200f3e0)
	add r6, r6, r2
	str r6, [r5,#4]
locret_80310E4:
	pop {pc}
	.balign 4, 0x00
off_80310E8: .word dword_200F3D0
	thumb_func_end sub_80310B0

	thumb_local_start
sub_80310EC:
	push {lr}
	ldr r4, [r5,#0x10]
	ldr r2, [r4,#4]
	lsl r2, r2, #2
	ldr r5, [r4,#8]
	lsl r5, r5, #2
	ldr r7, [r6]
	ldr r3, [r0,#0x18]
	add r7, r7, r3
	asr r7, r7, #0xe
	sub r7, r7, r2
	str r7, [r0]
	ldr r7, [r6,#4]
	ldr r3, [r0,#0x1c]
	add r7, r7, r3
	asr r7, r7, #0xe
	sub r7, r7, r5
	str r7, [r0,#4]
	ldr r7, [r6,#0xc]
	asr r7, r7, #0xe
	sub r7, r7, r2
	str r7, [r0,#0xc]
	ldr r7, [r6,#0x10]
	asr r7, r7, #0xe
	sub r7, r7, r5
	str r7, [r0,#0x10]
	pop {pc}
	thumb_func_end sub_80310EC

	thumb_local_start
sub_8031122:
	push {lr}
	mov r6, r0
	ldr r0, off_80311F0 // =dword_200F3E0 
	mov r2, #0
	mov r3, #0
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	bl sub_80310EC
	pop {pc}
	thumb_func_end sub_8031122

	thumb_local_start
sub_8031136:
	push {lr}
	mov r6, r0
	ldr r0, off_80311F0 // =dword_200F3E0 
	ldr r2, [r6,#0xc]
	ldr r7, [r6]
	sub r7, r7, r2
	str r7, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	ldr r2, [r6,#0x10]
	ldr r7, [r6,#4]
	sub r7, r7, r2
	str r7, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	ldr r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	ldr r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	cmp r2, #0
	bgt loc_8031158
	blt loc_8031168
	b loc_8031168
loc_8031158:
	cmp r3, #0
	bgt loc_803115E
	b loc_8031168
loc_803115E:
	cmp r2, r3
	bne loc_8031168
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	b loc_8031170
loc_8031168:
	mov r2, #0
	mov r3, #0
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
loc_8031170:
	bl sub_80310EC
	pop {pc}
	thumb_func_end sub_8031136

	thumb_local_start
sub_8031176:
	push {lr}
	mov r6, r0
	ldr r0, off_80311F0 // =dword_200F3E0 
	ldr r2, [r6,#0xc]
	ldr r7, [r6]
	sub r7, r7, r2
	str r7, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	ldr r2, [r6,#0x10]
	ldr r7, [r6,#4]
	sub r7, r7, r2
	str r7, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	ldr r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	ldr r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	cmp r2, #0
	bgt loc_80311A8
	blt loc_8031198
	b loc_80311A8
loc_8031198:
	cmp r3, #0
	blt loc_803119E
	b loc_80311A8
loc_803119E:
	cmp r2, r3
	bne loc_80311A8
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	b loc_80311B0
loc_80311A8:
	mov r2, #0
	mov r3, #0
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
loc_80311B0:
	bl sub_80310EC
	pop {pc}
	thumb_func_end sub_8031176

	thumb_local_start
sub_80311B6:
	push {lr}
	mov r6, r0
	ldr r0, off_80311F0 // =dword_200F3E0 
	ldr r2, [r6,#0xc]
	ldr r7, [r6]
	sub r7, r7, r2
	str r7, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	ldr r2, [r6,#0x10]
	ldr r7, [r6,#4]
	sub r7, r7, r2
	str r7, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	ldr r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	ldr r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	cmp r2, #0
	beq loc_80311DA
	cmp r3, #0
	beq loc_80311DA
	b loc_80311E0
loc_80311DA:
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
	b loc_80311E8
loc_80311E0:
	mov r2, #0
	mov r3, #0
	str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
	str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
loc_80311E8:
	bl sub_80310EC
	pop {pc}
	.byte 0, 0
off_80311F0: .word dword_200F3E0
	thumb_func_end sub_80311B6

	thumb_local_start
sub_80311F4:
	push {lr}
	push {r0-r2,r5}
	bl sub_8031122
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0
	bl sub_8031570
	mov r3, #0
	cmp r0, #0
	beq loc_8031234
	pop {r0-r2,r5}
	push {r0-r2,r5}
	bl sub_80311B6
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0
	mov r6, #1
	bl sub_8030E14
	neg r0, r0
	lsr r0, r0, #1
	neg r0, r0
	neg r1, r1
	lsr r1, r1, #1
	neg r1, r1
	bl sub_80310B0
loc_8031234:
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_80311F4

	thumb_local_start
sub_803123E:
	push {r0-r2,r5,lr}
	bl sub_8031122
	mov r2, #0
	mov r4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #1
	bl sub_8030E8C
	lsr r0, r0, #1
	asr r1, r1, #1
	bl sub_80310B0
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_803123E

	thumb_local_start
sub_8031264:
	push {r0-r2,r5,lr}
	bl sub_8031122
	mov r2, #0
	mov r4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #1
	bl sub_8030F04
	neg r0, r0
	lsr r0, r0, #1
	neg r0, r0
	lsr r1, r1, #1
	bl sub_80310B0
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_8031264

	thumb_local_start
sub_803128E:
	push {lr}
	push {r0-r2,r5}
	bl sub_8031122
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0
	bl sub_80315DC
	mov r3, #0
	cmp r0, #0
	beq loc_80312C6
	pop {r0-r2,r5}
	push {r0-r2,r5}
	bl sub_80311B6
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0
	mov r6, #1
	bl sub_8030F7C
	lsr r0, r0, #1
	lsr r1, r1, #1
	bl sub_80310B0
loc_80312C6:
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_803128E

	thumb_local_start
sub_80312D0:
	push {r0-r2,r5,lr}
	bl sub_80311B6
	mov r2, #0
	mov r4, #0x20 
	sub r4, #0x20 
	mov r3, #0x20 
	mov r5, #0
	sub r5, #0x20 
	mov r6, #1
	bl sub_8030E14
	neg r0, r0
	lsr r0, r0, #1
	neg r0, r0
	neg r1, r1
	lsr r1, r1, #1
	neg r1, r1
	bl sub_80310B0
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_80312D0

	thumb_local_start
sub_8031302:
	push {r0-r2,r5,lr}
	bl sub_8031122
	mov r2, #0
	mov r4, #0
	sub r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	sub r5, #0x20 
	mov r6, #1
	bl sub_8030E8C
	lsr r0, r0, #1
	neg r1, r1
	lsr r1, r1, #1
	neg r1, r1
	bl sub_80310B0
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_8031302

	thumb_local_start
sub_8031330:
	push {r0-r2,r5,lr}
	bl sub_8031122
	mov r2, #0
	mov r4, #0
	add r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	add r5, #0x20 
	mov r6, #1
	bl sub_8030F04
	neg r0, r0
	lsr r0, r0, #1
	neg r0, r0
	lsr r1, r1, #1
	bl sub_80310B0
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_8031330

	thumb_local_start
sub_803135E:
	push {r0-r2,r5,lr}
	bl sub_80311B6
	mov r2, #0
	mov r4, #0x20 
	add r4, #0x20 
	mov r3, #0x20 
	mov r5, #0
	add r5, #0x20 
	mov r6, #1
	bl sub_8030F7C
	lsr r0, r0, #1
	lsr r1, r1, #1
	bl sub_80310B0
	mov r0, r12
	mov r1, #3
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_803135E

	thumb_local_start
sub_8031388:
	push {r0-r2,r5,lr}
	bl sub_8031136
	mov r2, #0
	sub r2, #1
	mov r4, #0x20 
	mov r3, #0
	sub r3, #1
	mov r5, #0
	mov r6, #1
	bl sub_8030E14
	mov r1, #0
	bl sub_80310B0
	mov r0, r12
	mov r1, #1
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_8031388

	thumb_local_start
sub_80313B0:
	push {r0-r2,r5,lr}
	bl sub_8031176
	mov r2, #0x20 
	mov r4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #1
	bl sub_8030E8C
	mov r1, #0
	bl sub_80310B0
	mov r0, r12
	mov r1, #1
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_80313B0

	thumb_local_start
sub_80313D4:
	push {r0-r2,r5,lr}
	bl sub_8031136
	mov r2, #0x20 
	mov r4, #0
	sub r4, #1
	mov r3, #0
	mov r5, #0
	sub r5, #1
	mov r6, #1
	bl sub_8030F04
	mov r0, #0
	bl sub_80310B0
	mov r0, r12
	mov r1, #2
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_80313D4

	thumb_local_start
sub_80313FC:
	push {r0-r2,r5,lr}
	bl sub_8031176
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #1
	bl sub_8030F7C
	mov r0, #0
	bl sub_80310B0
	mov r0, r12
	mov r1, #2
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5,pc}
	thumb_func_end sub_80313FC

	thumb_local_start
sub_8031420:
	push {lr}
	push {r0-r2,r5}
	bl sub_8031136
	mov r2, #0
	sub r2, #1
	mov r4, #0x20 
	mov r3, #0
	sub r3, #1
	mov r5, #0
	mov r6, #0
	bl sub_8030E14
	mov r1, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #0
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
	cmp r3, #1
	beq locret_8031476
	push {r0-r2,r5}
	bl sub_8031136
	mov r2, #0x20 
	mov r4, #0
	sub r4, #1
	mov r3, #0
	mov r5, #0
	sub r5, #1
	mov r6, #0
	bl sub_8030F04
	mov r0, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #1
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
locret_8031476:
	pop {pc}
	thumb_func_end sub_8031420

	thumb_local_start
sub_8031478:
	push {lr}
	push {r0-r2,r5}
	bl sub_8031176
	mov r2, #0x20 
	mov r4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #0
	bl sub_8030E8C
	mov r1, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #0
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
	cmp r3, #1
	beq locret_80314CA
	push {r0-r2,r5}
	bl sub_8031136
	mov r2, #0x20 
	mov r4, #0
	sub r4, #1
	mov r3, #0
	mov r5, #0
	sub r5, #1
	mov r6, #0
	bl sub_8030F04
	mov r0, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #1
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
locret_80314CA:
	pop {pc}
	thumb_func_end sub_8031478

	thumb_local_start
sub_80314CC:
	push {lr}
	push {r0-r2,r5}
	bl sub_8031136
	mov r2, #0
	sub r2, #1
	mov r4, #0x20 
	mov r3, #0
	sub r3, #1
	mov r5, #0
	mov r6, #0
	bl sub_8030E14
	mov r1, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #0
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
	cmp r3, #1
	beq locret_803151E
	push {r0-r2,r5}
	bl sub_8031176
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #0
loc_803150A:
	bl sub_8030F7C
loc_803150E:
	mov r0, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #1
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
locret_803151E:
	pop {pc}
	thumb_func_end sub_80314CC

	thumb_local_start
sub_8031520:
	push {lr}
	push {r0-r2,r5}
	bl sub_8031176
	mov r2, #0x20 
	mov r4, #0
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #0
	bl sub_8030E8C
	mov r1, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #0
loc_8031540:
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
	cmp r3, #1
	beq locret_803156E
	push {r0-r2,r5}
	bl sub_8031176
loc_8031550:
	mov r2, #0
	mov r4, #0x20 
	mov r3, #0x20 
	mov r5, #0x20 
	mov r6, #0
	bl sub_8030F7C
	mov r0, #0
	bl sub_80310B0
	mov r0, r12
	lsl r1, r3, #1
	orr r0, r1
	mov r12, r0
	pop {r0-r2,r5}
locret_803156E:
	pop {pc}
	thumb_func_end sub_8031520

	thumb_local_start
sub_8031570:
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
loc_8031584:
	add r3, r3, r4
	add r5, r5, r3
loc_8031588:
	cmp r5, #0
	bge loc_8031590
loc_803158C:
	mov r0, #1
	mov pc, lr
loc_8031590:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_8031570

	thumb_local_start
sub_8031594:
//  ((x*2 - (x & ~7)*2) * (r5 - r4)) + ((y*2 - (y & ~7)*2) * (r2 - r3)) + (r3 * r4 - r2 * r5)
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	bge loc_80315B4
	mov r0, #1
	mov pc, lr
loc_80315B4:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_8031594

	thumb_local_start
sub_80315B8:
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
loc_80315CC: // likely fake pointer
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	ble loc_80315D8
	mov r0, #1
	mov pc, lr
loc_80315D8:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_80315B8

	thumb_local_start
sub_80315DC:
	sub r6, r5, r4
	sub r7, r2, r3
	mul r3, r4
	mul r2, r5
	sub r2, r3, r2
	ldr r3, [r0]
	ldr r4, [r0,#4]
	mov r5, r2
	mul r3, r6
	mul r4, r7
	add r3, r3, r4
	add r5, r5, r3
	cmp r5, #0
	ble loc_80315FC
	mov r0, #1
	mov pc, lr
loc_80315FC:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_80315DC

	thumb_local_start
sub_8031600:
	ldr r5, off_8031780 // =dword_2011A20 
	ldr r1, [r0]
	strh r1, [r5,#0x4] // (word_2011A24 - 0x2011a20)
	add r0, #4
	str r0, [r5]
	mov r0, #0xfe
	strb r0, [r5,#0x6] // (byte_2011A26 - 0x2011a20)
	strb r0, [r5,#0x7] // (byte_2011A27 - 0x2011a20)
	mov pc, lr
	thumb_func_end sub_8031600

	thumb_func_start sub_8031612
sub_8031612:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r5, off_8031780 // =dword_2011A20
	ldr r2, off_8031688 // =dword_200F3D0 
	str r0, [r2]
	bl sub_80316F8
	bl sub_8030B1E
	cmp r2, #0
	beq loc_8031678
	mov r3, #0
loc_8031630: .align 1, 0
	ldrh r4, [r2]
	cmp r1, r4
	bne loc_8031658
	ldrh r7, [r2,#2]
	ldr r4, [r5]
	add r7, r7, r4
	mov r4, #0
	ldrsb r4, [r7,r4]
	mov r6, #0xa
	ldrsh r6, [r0,r6]
	cmp r6, r4
	blt loc_803165E
	cmp r3, #0
	beq loc_8031654
	mov r6, #0
	ldrsb r6, [r3,r6]
	cmp r6, r4
	bgt loc_803165E
loc_8031654: .align 1, 0
	mov r3, r7
	b loc_803165E
loc_8031658: .align 1, 0
	cmp r3, #0
	beq loc_8031678
	b loc_8031662
loc_803165E: .align 1, 0
	add r2, #4
	b loc_8031630
loc_8031662: .align 1, 0
	str r3, [r5,#0x14] // (dword_2011A34 - 0x2011a20)
	ldrb r6, [r3,#3]
	cmp r6, #0xff
	beq loc_8031678
	lsl r6, r6, #2
	ldr r4, off_803168C // =dword_8031690 
	add r4, r4, r6
	ldr r4, [r4]
	mov lr, pc
	bx r4
	b loc_803167C
loc_8031678: .align 1, 0
	mov r0, #0
	mov r1, #0
loc_803167C: .align 1, 0
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8031688: .word dword_200F3D0
off_803168C: .word dword_8031690
dword_8031690: .word 0x0
	.word sub_803178A+1
	.word sub_80317A6+1
	.word sub_80317C2+1
	.word sub_80317DE+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_80317FA+1
	.word sub_8031808+1
	.word sub_803182A+1
	.word sub_8031852+1
	.word sub_8031874+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8031612

	thumb_local_start
sub_80316F8:
	mov r2, #oOWObjectCoords_X
	ldrsh r1, [r0,r2]
	mov r2, #oOWObjectCoords_Y
	ldrsh r2, [r0,r2]
	asr r1, r1, #3
	asr r2, r2, #3

	// at a glance, unk07 and unk06 seem to be always 0xfe
	ldrb r3, [r5,#oUnk_Ex2011a20_Unk_07]
	lsr r3, r3, #1

	// y/8 + unk07/2
	add r2, r2, r3

	ldrb r3, [r5,#oUnk_Ex2011a20_Unk_06]	
	lsr r3, r3, #1

	// x/8 + unk06/2
	add r1, r1, r3

	lsl r3, r3, #1
	mul r2, r3

	// r2 = unk06 * (y/8 + unk07/2) + x/8 + unk06/2
	add r2, r2, r1
	strh r2, [r5,#oUnk_Ex2011a20_Unk_08]

	mov r2, #oOWObjectCoords_X
	ldrsh r1, [r0,r2]
	mov r2, #oOWObjectCoords_Y
	ldrsh r2, [r0,r2]

	// store x and y with lower 3 bits truncated into unk0c and unk10
	mov r3, #7
	bic r1, r3
	str r1, [r5,#oUnk_Ex2011a20_Unk_0c]
	bic r2, r3
	str r2, [r5,#oUnk_Ex2011a20_Unk_10]

	// return value
	ldrh r1, [r5,#oUnk_Ex2011a20_Unk_08]
	mov pc, lr
	thumb_func_end sub_80316F8

	thumb_local_start
sub_803172E:
	mov r6, r0
	ldr r0, off_803175C // =dword_200F3E0 
	ldr r2, [r5,#0xc]
	lsl r2, r2, #1
	ldr r5, [r5,#0x10]
	lsl r5, r5, #1
	ldr r7, [r6]
	asr r7, r7, #0xf
	sub r7, r7, r2
	// (x * 2 - tx * 2)
	str r7, [r0]

	ldr r7, [r6,#4]
	asr r7, r7, #0xf
	sub r7, r7, r5
	// (y * 2 - ty * 2)
	str r7, [r0,#0x4] // (dword_200F3E4 - 0x200f3e0)
	
	ldr r7, [r6,#0xc]
	asr r7, r7, #0xf
	sub r7, r7, r2
	// nextx * 2 - tx * 2
	str r7, [r0,#0xc] // (dword_200F3EC - 0x200f3e0)
	
	ldr r7, [r6,#0x10]
	asr r7, r7, #0xf
	sub r7, r7, r5
	// nexty * 2 - ty * 2
	str r7, [r0,#0x10] // (dword_200F3F0 - 0x200f3e0)
	mov pc, lr
off_803175C: .word dword_200F3E0
	thumb_func_end sub_803172E

	thumb_local_start
sub_8031760:
	ldr r5, off_8031780 // =dword_2011A20 
	cmp r0, #1
	beq loc_8031768
	b loc_8031774
loc_8031768:
	ldr r2, [r5,#0x14] // (dword_2011A34 - 0x2011a20)
	mov r0, #0
	ldrsb r0, [r2,r0]
	ldrb r1, [r2,#2]
	ldrb r3, [r2,#1]
	mov pc, lr
loc_8031774:
	ldr r2, [r5,#0x14] // (dword_2011A34 - 0x2011a20)
	mov r0, #0
	ldrsb r0, [r2,r0]
	mov r1, #0
	ldrb r3, [r2,#1]
	mov pc, lr
off_8031780: .word dword_2011A20
	thumb_func_end sub_8031760

	thumb_local_start
sub_8031784:
	push {lr}
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8031784

	thumb_local_start
sub_803178A:
	push {lr}
	bl sub_803172E
	mov r2, #4
	mov r4, #0
	mov r3, #4
	mov r5, #0x10
	bl sub_8031594
	bl sub_8031760
	add r0, r0, r1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_803178A

	thumb_local_start
sub_80317A6:
	push {lr}
	bl sub_803172E
	mov r2, #8
	mov r4, #0
	mov r3, #8
	mov r5, #0x10
	bl sub_80315B8
	bl sub_8031760
	add r0, r0, r1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_80317A6

	thumb_local_start
sub_80317C2:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #8
	mov r3, #0x10
	mov r5, #8
	bl sub_80315B8
	bl sub_8031760
	add r0, r0, r1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_80317C2

	thumb_local_start
sub_80317DE:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0xc
	mov r3, #0x10
	mov r5, #0xc
	bl sub_8031594
	bl sub_8031760
	add r0, r0, r1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_80317DE

	thumb_local_start
sub_80317FA:
	push {lr}
	mov r0, #1
	bl sub_8031760
	add r0, r0, r1
	mov r1, #0
	pop {pc}
	thumb_func_end sub_80317FA

	thumb_local_start
sub_8031808:
	push {lr}
	bl sub_803172E
	push {r0}
	mov r0, #1
	bl sub_8031760
	add r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr r2, [r1]
	asr r2, r3
	sub r0, r0, r2
	asr r0, r0, #1
	mov r1, #2
	lsr r1, r3
	pop {pc}
	thumb_func_end sub_8031808

	thumb_local_start
sub_803182A:
	push {lr}
	bl sub_803172E
	push {r0}
	mov r0, #1
	bl sub_8031760
	add r0, r0, r1
	mov r1, #8
	asr r1, r3
	sub r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr r2, [r1]
	asr r2, r3
	add r0, r0, r2
	asr r0, r0, #1
	mov r1, #2
	lsr r1, r3
	pop {pc}
	thumb_func_end sub_803182A

	thumb_local_start
sub_8031852:
	push {lr}
	bl sub_803172E
	push {r0}
	mov r0, #1
	bl sub_8031760
	add r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr r2, [r1,#4]
	asr r2, r3
	sub r0, r0, r2
	asr r0, r0, #1
	mov r1, #2
	lsr r1, r3
	pop {pc}
	thumb_func_end sub_8031852

	thumb_local_start
sub_8031874:
	push {lr}
	bl sub_803172E
	push {r0}
	mov r0, #1
	bl sub_8031760
	add r0, r0, r1
	mov r1, #8
	asr r1, r3
	sub r0, r0, r1
	lsl r0, r0, #1
	pop {r1}
	ldr r2, [r1,#4]
	asr r2, r3
	add r0, r0, r2
	asr r0, r0, #1
	mov r1, #2
	lsr r1, r3
	pop {pc}
	thumb_func_end sub_8031874

	thumb_local_start
sub_803189C:
	ldr r5, off_8031994 // =dword_2013940 
	ldr r1, [r0]
	strh r1, [r5,#0x4] // (word_2013944 - 0x2013940)
	add r0, #4
	str r0, [r5]
	mov r0, #0xfe
	strb r0, [r5,#0x6] // (byte_2013946 - 0x2013940)
	strb r0, [r5,#0x7] // (byte_2013947 - 0x2013940)
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_803189C

	thumb_func_start sub_80318B0
sub_80318B0:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_8031994 // =dword_2013940 
	ldr r2, off_8031910 // =dword_200F3D0 
	str r0, [r2]
	bl sub_80316F8
	bl sub_8030B1E
	cmp r2, #0
	beq loc_8031904
loc_80318CC: .align 1, 0
	ldrh r4, [r2]
	cmp r1, r4
	bne loc_8031904
	ldrh r7, [r2,#2]
	ldr r4, [r5]
	add r7, r7, r4
	mov r4, #0
	ldrsb r4, [r7,r4]
	mov r6, #0xa
	ldrsh r6, [r0,r6]
	cmp r6, r4
	blt loc_80318EE
	ldrb r3, [r7,#2]
	add r4, r4, r3
	cmp r6, r4
	bgt loc_80318EE
	b loc_80318F2
loc_80318EE: .align 1, 0
	add r2, #4
	b loc_80318CC
loc_80318F2: .align 1, 0
	str r7, [r5,#0x14] // (dword_2013954 - 0x2013940)
	ldrb r6, [r7,#3]
	lsl r6, r6, #2
	ldr r4, off_8031914 // =dword_8031918 
	add r4, r4, r6
	ldr r4, [r4]
	mov lr, pc
	bx r4
	b loc_8031906
loc_8031904: .align 1, 0
	mov r0, #2
loc_8031906: .align 1, 0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
off_8031910: .word dword_200F3D0
off_8031914: .word dword_8031918
dword_8031918: .word 0x0
	.word sub_803199E+1
	.word sub_80319B6+1
	.word sub_80319CE+1
	.word sub_80319E6+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_80319FE+1
	.word sub_8031A16+1
	.word sub_8031A2E+1
	.word sub_8031A46+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_8031A5E+1
	.word 0, 0, 0, 0, 0, 0, 0
	.byte 0, 0, 0, 0
	thumb_func_end sub_80318B0

	thumb_local_start
sub_8031980:
	push {lr}
	ldr r5, off_8031994 // =dword_2013940 
	cmp r0, #1
	beq loc_803198A
	b loc_803198E
loc_803198A:
	mov r0, #3
	pop {pc}
loc_803198E:
	mov r0, #2
	pop {pc}
	.balign 4, 0x00
off_8031994: .word dword_2013940
	thumb_func_end sub_8031980

	thumb_local_start
sub_8031998:
	push {lr}
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8031998

	thumb_local_start
sub_803199E:
	push {lr}
	bl sub_803172E
	mov r2, #4
	mov r4, #0
	mov r3, #4
	mov r5, #0x10
	bl sub_8031594
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_803199E

	thumb_local_start
sub_80319B6:
	push {lr}
	bl sub_803172E
	mov r2, #8
	mov r4, #0
	mov r3, #8
	mov r5, #0x10
	bl sub_80315B8
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_80319B6

	thumb_local_start
sub_80319CE:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #8
	mov r3, #0x10
	mov r5, #8
	bl sub_80315B8
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_80319CE

	thumb_local_start
sub_80319E6:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0xc
	mov r3, #0x10
	mov r5, #0xc
	bl sub_8031594
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_80319E6

	thumb_local_start
sub_80319FE:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0x10
	mov r3, #0x10
	mov r5, #0
	bl sub_8031570
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_80319FE

	thumb_local_start
sub_8031A16:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0
	mov r3, #0x10
	mov r5, #0x10
	bl sub_8031594
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_8031A16

	thumb_local_start
sub_8031A2E:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0
	mov r3, #0x10
	mov r5, #0x10
	bl sub_80315B8
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_8031A2E

	thumb_local_start
sub_8031A46:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0x10
	mov r3, #0x10
	mov r5, #0
	bl sub_80315DC
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_8031A46

	thumb_local_start
sub_8031A5E:
	push {lr}
	mov r0, #1
	bl sub_8031980
	pop {pc}
	thumb_func_end sub_8031A5E

	thumb_local_start
sub_8031A68:
	ldr r5, off_8031B90 // =dword_2013920 
	ldr r1, [r0]
	strh r1, [r5,#0x4] // (word_2013924 - 0x2013920)
	add r0, #4
	str r0, [r5]
	mov r0, #0xfe
	strb r0, [r5,#0x6] // (byte_2013926 - 0x2013920)
	strb r0, [r5,#0x7] // (byte_2013927 - 0x2013920)
	mov pc, lr
	thumb_func_end sub_8031A68

	thumb_func_start sub_8031A7A
sub_8031A7A:
	push {r4-r7,lr}
	mov r3, r8
	mov r4, r9
	mov r5, r12
	push {r3-r5}
	ldr r5, off_8031B90 // =dword_2013920 
	ldr r2, off_8031B08 // =dword_200F3D0 
	str r0, [r2]
	bl sub_80316F8
	bl sub_8030B1E
	cmp r2, #0
	beq loc_8031AF6
loc_8031A96:
	.align 1, 0
	ldrh r4, [r2]
	cmp r1, r4
	bne loc_8031AF6
	ldrh r7, [r2,#2]
	ldr r4, [r5]
	add r7, r7, r4
	mov r4, #0
	ldrsb r4, [r7,r4]
	mov r6, #0xa
	ldrsh r6, [r0,r6]
	cmp r6, r4
	blt loc_8031AB8
	ldrb r3, [r7,#2]
	add r4, r4, r3
	cmp r6, r4
	bgt loc_8031AB8
	b loc_8031ABC
loc_8031AB8:
	.align 1, 0
	add r2, #4
	b loc_8031A96
loc_8031ABC:
	.align 1, 0
	str r7, [r5,#0x14] // (dword_2013934 - 0x2013920)
	ldrb r6, [r7,#3]
	mov r12, r6
	lsl r6, r6, #2
	ldr r4, off_8031B0C // =jt_8031B10 
	add r4, r4, r6
	ldr r4, [r4]
	push {r0-r2}
	mov lr, pc
	bx r4
	mov r3, r0
	tst r0, r0
	pop {r0-r2}
	beq loc_8031AB8
	mov r0, r3
	mov r1, r3
	mov r2, r12
	cmp r0, #0xe
	bgt loc_8031AFC
	push {r0-r2}
	ldr r1, dword_8031B78 // =0x16ef 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0-r2}
	bne loc_8031AFC
	mov r0, #0
	b loc_8031AFC
loc_8031AF6:
	.align 1, 0
	mov r0, #0
	mov r1, #0
	mov r2, #0
loc_8031AFC:
	.align 1, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r12, r5
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8031B08: .word dword_200F3D0
off_8031B0C: .word jt_8031B10
jt_8031B10: .word 0x0
	.word sub_8031B9A+1 // 0x01
	.word sub_8031BB2+1 // 0x02
	.word sub_8031BCA+1 // 0x03
	.word sub_8031BE2+1 // 0x04
	.word 0x0 // 0x05
	.word 0x0 // 0x06
	.word 0x0 // 0x07
	.word 0x0 // 0x08
	.word sub_8031BFA+1 // 0x09
	.word sub_8031C12+1 // 0x0a
	.word sub_8031C2A+1 // 0x0b
	.word sub_8031C42+1 // 0x0c
	.word 0x0 // 0x0d
	.word 0x0 // 0x0e
	.word 0x0 // 0x0f
	.word 0x0 // 0x10
	.word sub_8031C5A+1 // 0x11
	.word sub_8031C5A+1 // 0x12
	.word sub_8031C5A+1 // 0x13
	.word sub_8031C5A+1 // 0x14
	.word sub_8031C5A+1 // 0x15
	.word sub_8031C64+1 // 0x16
	.word sub_8031C7C+1 // 0x17
	.word sub_8031C94+1 // 0x18
	.word sub_8031CAC+1 // 0x19
dword_8031B78: .word 0x16EF
	thumb_func_end sub_8031A7A

	thumb_local_start
sub_8031B7C:
	ldr r5, off_8031B90 // =dword_2013920 
	cmp r0, #1
	beq loc_8031B84
	b loc_8031B8A
loc_8031B84:
	ldr r2, [r5,#0x14] // (dword_2013934 - 0x2013920)
	ldrb r0, [r2,#1]
	mov pc, lr
loc_8031B8A:
	mov r0, #0
	mov pc, lr
	.byte 0, 0
off_8031B90: .word dword_2013920
	thumb_func_end sub_8031B7C

	thumb_local_start
sub_8031B94:
	push {lr}
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8031B94

	thumb_local_start
sub_8031B9A:
	push {lr}
	bl sub_803172E
	mov r2, #4
	mov r4, #0
	mov r3, #4
	mov r5, #0x10
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031B9A

	thumb_local_start
sub_8031BB2:
	push {lr}
	bl sub_803172E
	mov r2, #8
	mov r4, #0
	mov r3, #8
	mov r5, #0x10
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031BB2

	thumb_local_start
sub_8031BCA:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #8
	mov r3, #0x10
	mov r5, #8
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031BCA

	thumb_local_start
sub_8031BE2:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0xc
	mov r3, #0x10
	mov r5, #0xc
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031BE2

	thumb_local_start
sub_8031BFA:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0x10
	mov r3, #0x10
	mov r5, #0
	bl sub_8031570
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031BFA

	thumb_local_start
sub_8031C12:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0
	mov r3, #0x10
	mov r5, #0x10
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C12

	thumb_local_start
sub_8031C2A:
	push {lr}
	bl sub_803172E
	mov r2, #1
	mov r4, #1
	mov r3, #0x10
	mov r5, #0x10
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C2A

	thumb_local_start
sub_8031C42:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0xe
	mov r3, #0xe
	mov r5, #0
	bl sub_80315DC
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C42

	thumb_local_start
sub_8031C5A:
	push {lr}
	mov r0, #1
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C5A

	thumb_local_start
sub_8031C64:
	push {lr}
	bl sub_803172E
	mov r2, #2
	mov r4, #0
	mov r3, #2
	mov r5, #0x10
	bl sub_8031594
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C64

	thumb_local_start
sub_8031C7C:
	push {lr}
	bl sub_803172E
	mov r2, #0xe
	mov r4, #0
	mov r3, #0xe
	mov r5, #0x10
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C7C

	thumb_local_start
sub_8031C94:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #2
	mov r3, #0x10
	mov r5, #2
	bl sub_80315B8
	bl sub_8031B7C
	pop {pc}
	thumb_func_end sub_8031C94

	thumb_local_start
sub_8031CAC:
	push {lr}
	bl sub_803172E
	mov r2, #0
	mov r4, #0xe
	mov r3, #0x10
	mov r5, #0xe
	bl sub_8031594
	bl sub_8031B7C
	// <endpool>
	pop {pc}
	thumb_func_end sub_8031CAC

/*For debugging purposes, connect comment at any range!*/
