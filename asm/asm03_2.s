	.include "asm/asm03_2.inc"

	thumb_func_start renderTextGfx_8045F8C
renderTextGfx_8045F8C:
	push {lr}
	push {r7}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk200a220_Ptr]
	str r0, [r7,#0x40]
	pop {r7}
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	mov r1, r8
	push {r1}
	mov r1, r9
	push {r1}
	ldr r1, off_8045FB8 // =sub_3006B94+1 
	mov lr, pc
	bx r1
	pop {r1}
	mov r9, r1
	pop {r1}
	mov r8, r1
	pop {pc}
	.balign 4, 0x00
off_8045FB8: .word sub_3006B94+1
	thumb_func_end renderTextGfx_8045F8C

	thumb_func_start sub_8045FBC
sub_8045FBC:
	push {lr}
	push {r0-r3}
	mov r0, #0
	mov r3, #0
	b loc_8045FEE
	thumb_func_end sub_8045FBC

	thumb_func_start sub_8045FC6
sub_8045FC6:
	push {lr}
	push {r0-r3}
	mov r0, #1
	mov r3, #0
	b loc_8045FEE
	thumb_func_end sub_8045FC6

	thumb_func_start sub_8045FD0
sub_8045FD0:
	push {lr}
	push {r0-r3}
	mov r0, #1
	mov r3, #1
	b loc_8045FEE
	push {lr}
	push {r0-r3}
	mov r0, #0
	mov r3, #1
	b loc_8045FEE
loc_8045FE4:
	push {lr}
	push {r0-r3}
	mov r0, #2
	mov r3, #0
	b loc_8045FEE
loc_8045FEE:
	mov r2, r10
	ldr r2, [r2,#oToolkit_Unk200a220_Ptr]
	strb r0, [r2,#3]
	strb r3, [r2,#4]
	lsr r0, r1, #0x10
	ldr r1, off_8046030 // =dword_3006B84
	ldr r0, [r1,r0]
	str r0, [r2,#0x38]
	pop {r0-r3}
	lsl r1, r1, #0x10
	lsr r1, r1, #0xf
	ldrh r1, [r0,r1]
	add r0, r0, r1
	mov r1, r12
	push {r1}
	mov r1, r9
	push {r1}
	mov r1, r8
	push {r1}
	ldr r1, off_804602C // =sub_8046154+1 
	mov lr, pc
	bx r1
	pop {r1}
	mov r8, r1
	pop {r1}
	mov r9, r1
	pop {r1}
	mov r12, r1
	ldr r1, off_8046034 // =byte_200A220 
	ldr r0, [r1,#0x3c] // (dword_200A25C - 0x200a220)
	pop {pc}
off_804602C: .word sub_8046154+1
off_8046030: .word dword_3006B84
off_8046034: .word byte_200A220
	thumb_func_end sub_8045FD0

	thumb_local_start
sub_8046038:
	push {r6,r7,lr}
	mov r1, r8
	push {r1}
	mov r1, r9
	push {r1}
	mov r1, r12
	push {r1}
	sub sp, sp, #0x10
	mov r8, r2
	str r2, [sp,#8]
	mov r9, r3
	mov r7, r4
	str r4, [sp,#4]
	mov r1, #8
	mul r0, r1
	ldr r6, off_80460B8 // =byte_80460BC
	add r6, r6, r0
	ldr r0, dword_80460B4 // =0x40000000 
	mov r12, r0
	ldr r1, [r6]
	str r1, [sp]
loc_8046062:
	lsl r4, r4, #0x10
	orr r0, r4
	orr r0, r5
	ldrb r2, [r6,#5]
	lsl r2, r2, #0xa
	orr r1, r2
	ldrb r2, [r6,#4]
	ldrb r3, [r6,#6]
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r2, #0x10
	add r7, r7, r2
	mov r4, r7
	mov r0, r12
	ldr r1, [sp]
	add r1, #4
	str r1, [sp]
	mov r2, r8
	sub r2, #1
	mov r8, r2
	cmp r2, #0
	bgt loc_8046062
	add r5, #0x10
	ldr r4, [sp,#4]
	mov r7, r4
	ldr r2, [sp,#8]
	mov r8, r2
	mov r2, r9
	sub r2, #1
	mov r9, r2
	cmp r2, #0
	bgt loc_8046062
	add sp, sp, #0x10
	pop {r1}
	mov r12, r1
	pop {r1}
	mov r9, r1
	pop {r1}
	mov r8, r1
	pop {r6,r7,pc}
	.balign 4, 0x00
dword_80460B4: .word 0x40000000
off_80460B8: .word byte_80460BC
byte_80460BC: .byte 0xB8, 0xE2, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xB0, 0xE0, 0x0, 0x0
	.byte 0x0, 0x3, 0x1, 0xFF, 0xB0, 0xE0, 0x0, 0x0, 0x0, 0x3, 0x1, 0xFF
	.byte 0x40, 0x83, 0x0, 0x0, 0x0, 0x3, 0x0, 0xFF, 0x40, 0xE3, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xFF, 0x40, 0xE3, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
	.byte 0x40, 0xE3, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
off_80460F4: .word sub_3006C38+1
	.word sub_804634C+1
	.word sub_3006F42+1
	.word sub_3006F74
	.word sub_8046356+1
	.word sub_3006C8E+1
	.word 0x0
	.word sub_3006CA8+1
	.word 0x0
	.word sub_3006F20+1
	.word sub_3006F24+1
	.word 0x0
	.word sub_3006F48+1
	.word sub_80463A0+1
	.word 0x0
	.word 0x0
	.word sub_3006F5C
	.word sub_3006F70
	.word 0x0
	.word 0x0
	.word 0x0
	.word sub_8046450+1
	.word 0x0
	.word 0x0
	thumb_func_end sub_8046038

	thumb_local_start
sub_8046154:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk200a220_Ptr]
	lsl r4, r4, #3
	strb r4, [r1]
	strb r5, [r1,#2]
	str r6, [r1,#0x18]
	mov r6, #0
	strb r6, [r1,#1]
	str r6, [r1,#0x1c]
	str r6, [r1,#0x34]
	str r6, [r1,#0x30]
	str r2, [r1,#0x20]
	str r7, [r1,#0x24]
	str r6, [r1,#0x3c]
	mov r6, r0
	push {r3}
	mov r0, r2
	lsl r5, r5, #4
	mul r4, r5
	ldr r2, [r1,#0x38]
	mov r1, r4
	bl FillByEightWords
	mov r0, r7
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	mov r0, r6
	mov r3, #1
loc_804618E:
	cmp r3, #0
	beq loc_80461BE
	ldrb r1, [r0]
	cmp r1, #0xe5
	blt loc_80461A6
	sub r1, #0xe5
	lsl r1, r1, #2
	ldr r7, off_80461C8 // =off_80460F4 
	ldr r1, [r7,r1]
	mov lr, pc
	bx r1
	b loc_804618E
loc_80461A6:
	cmp r1, #0xe4
	beq loc_80461B2
	bl sub_80461D0
	add r0, #1
	b loc_804618E
loc_80461B2:
	ldrb r1, [r0,#1]
	add r1, #0xe4
	bl sub_80461D0
	add r0, #2
	b loc_804618E
loc_80461BE:
	pop {r0}
	bl sub_8046290
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80461C8: .word off_80460F4
	.word byte_200A220
	thumb_func_end sub_8046154

	thumb_local_start
sub_80461D0:
	push {r0,r3,lr}
	mov r3, r10
	push {r3}
	mov r3, r8
	push {r3}
	sub sp, sp, #4
	ldr r5, off_804627C // =byte_200A220 
	ldr r6, [r5,#0x38] // (dword_200A258 - 0x200a220)
	str r6, [sp]
	ldr r6, [r5,#0x1c] // (dword_200A23C - 0x200a220)
	lsr r7, r6, #5
	lsl r7, r7, #2
	ldr r4, [r5,#0x20] // (dword_200A240 - 0x200a220)
	add r7, r7, r4
	mov r8, r7
	mov r4, #0x1f
	and r6, r4
	mov r9, r6
	ldr r0, [r5,#0x18] // (dword_200A238 - 0x200a220)
	mov r7, #0x60 
	mul r7, r1
	add r7, r7, r0
	ldr r4, off_8046280 // =off_8046284 
	ldrb r6, [r5,#0x3] // (byte_200A223 - 0x200a220)
	lsl r6, r6, #2
	ldr r4, [r4,r6]
	ldrb r3, [r4,r1]
	ldr r4, [r5,#0x3c] // (dword_200A25C - 0x200a220)
	add r4, r4, r3
	str r4, [r5,#0x3c] // (dword_200A25C - 0x200a220)
	lsl r3, r3, #2
	ldr r4, [r5,#0x1c] // (dword_200A23C - 0x200a220)
	add r4, r4, r3
	str r4, [r5,#0x1c] // (dword_200A23C - 0x200a220)
	mov r2, #0x40 
	sub r2, r3, r2
	neg r2, r2
	mov r10, r2
	mov r6, #0xb
	add r3, r9
	mov r12, r3
loc_8046222:
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [sp]
	add r0, r0, r2
	add r1, r1, r2
	mov r2, r10
	lsl r1, r2
	lsr r1, r2
	mov r3, r9
	mov r5, #0x20 
	sub r4, r5, r3
	mov r5, r1
	lsr r5, r4
	mov r2, r5
	lsl r1, r3
	mov r5, r0
	lsr r5, r4
	orr r1, r5
	lsl r0, r3
	mov r5, r8
	ldr r3, [r5]
	lsl r3, r4
	lsr r3, r4
	orr r0, r3
	str r0, [r5]
	mov r4, r12
	sub r4, #0x20 
	ble loc_8046262
	str r1, [r5,#4]
	sub r4, #0x20 
	ble loc_8046262
	str r2, [r5,#8]
loc_8046262:
	mov r0, #8
	add r7, r7, r0
	ldr r0, off_804627C // =byte_200A220 
	ldrb r0, [r0]
	add r8, r0
	sub r6, #1
	bge loc_8046222
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r3}
	mov r10, r3
	pop {r0,r3,pc}
off_804627C: .word byte_200A220
off_8046280: .word off_8046284
off_8046284: .word byte_8043CA4
	.word byte_8043E84
	.word byte_8044064
	thumb_func_end sub_80461D0

	thumb_local_start
sub_8046290:
	push {r0,lr}
	mov r1, r12
	push {r1}
	sub sp, sp, #0x10
	ldr r7, off_8046348 // =byte_200A220 
	ldrb r1, [r7,#0x2] // (byte_200A222 - 0x200a220)
	str r1, [sp,#4]
	ldrb r1, [r7]
	lsr r3, r1, #3
	mov r9, r3
	lsl r2, r1, #1
	ldr r6, [r7,#0x20] // (dword_200A240 - 0x200a220)
	ldr r7, [r7,#0x24] // (dword_200A244 - 0x200a220)
	mov r5, #0
	mov r12, r5
	str r6, [sp]
loc_80462B0:
	ldr r6, [sp]
	add r6, r6, r5
	mov r0, r9
	tst r0, r0
	beq loc_8046308
	sub r0, #1
	mov r9, r0
	mov r3, #2
loc_80462C0:
	mov r8, r6
	mov r4, #2
loc_80462C4:
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6,r1]
	str r0, [r7,#4]
	add r6, r6, r2
	ldr r0, [r6]
	str r0, [r7,#8]
	ldr r0, [r6,r1]
	str r0, [r7,#0xc]
	add r6, r6, r2
	ldr r0, [r6]
	str r0, [r7,#0x10]
	ldr r0, [r6,r1]
	str r0, [r7,#0x14]
	add r6, r6, r2
	ldr r0, [r6]
	str r0, [r7,#0x18]
	ldr r0, [r6,r1]
	str r0, [r7,#0x1c]
	mov r6, r8
	add r6, #4
	add r7, #0x20 
	mov r8, r6
	sub r4, #1
	bgt loc_80462C4
	mov r0, #8
	mul r0, r1
	sub r0, #8
	add r6, r6, r0
	sub r3, #1
	cmp r3, #0
	bgt loc_80462C0
	add r5, #8
	b loc_80462B0
loc_8046308:
	mov r0, r12
	add r0, #1
	mov r12, r0
	ldr r6, [sp]
	mov r3, r1
	lsl r3, r3, #4
	add r6, r6, r3
	str r6, [sp]
	mov r5, #0
	lsr r3, r1, #3
	mov r9, r3
	ldr r3, [sp,#4]
	cmp r0, r3
	bne loc_80462B0
	add sp, sp, #0x10
	pop {r1}
	mov r12, r1
	pop {r1}
	ldr r6, off_8046348 // =byte_200A220 
	ldr r0, [r6,#0x24] // (dword_200A244 - 0x200a220)
	sub r7, r7, r0
	mov r2, r7
	ldrb r3, [r6,#0x4] // (byte_200A224 - 0x200a220)
	tst r3, r3
	bne loc_804633E
	bl sub_8000AC8
loc_804633E:
	mov r0, r7
	pop {pc}
	.balign 4, 0x00
	.word 0xF00
off_8046348: .word byte_200A220
	thumb_func_end sub_8046290

	thumb_local_start
sub_804634C:
	push {lr}
	bl sub_8046356
	mov r3, #0
	pop {pc}
	thumb_func_end sub_804634C

	thumb_local_start
sub_8046356:
	push {r0}
	ldr r2, off_804644C // =byte_200A220 
	ldr r6, [r2,#0x1c] // (dword_200A23C - 0x200a220)
	lsr r7, r6, #5
	lsl r7, r7, #2
	ldr r4, [r2,#0x20] // (dword_200A240 - 0x200a220)
	add r7, r7, r4
	mov r4, #0x1f
	and r6, r4
	ldr r4, [r2,#0x38] // (dword_200A258 - 0x200a220)
	lsr r4, r6
	lsl r4, r6
	ldrb r1, [r2]
	mov r3, #0xb
loc_8046372:
	ldr r0, [r7]
	orr r0, r4
	tst r6, r6
	ble loc_804637C
	str r0, [r7]
loc_804637C:
	add r7, r7, r1
	sub r3, #1
	bge loc_8046372
	ldrb r4, [r2,#0x1] // (byte_200A221 - 0x200a220)
	add r4, #1
	strb r4, [r2,#0x1] // (byte_200A221 - 0x200a220)
	ldrb r1, [r2]
	mov r7, #0xe
	mul r1, r7
	lsl r1, r1, #3
	mul r1, r4
	str r1, [r2,#0x1c] // (dword_200A23C - 0x200a220)
	pop {r0}
	add r0, #1
	mov r3, #1
	mov pc, lr
	.word byte_200A220
	thumb_func_end sub_8046356

	thumb_local_start
sub_80463A0:
	push {r3,lr}
	push {r0,r4-r6}
	ldrb r1, [r0,#1]
	lsl r1, r1, #2
	add r1, #8
	ldr r7, off_804644C // =byte_200A220 
	ldr r0, [r7,r1]
	ldr r6, off_8046444 // =sub_8000C00+1 
	mov lr, pc
	bx r6
	mov r8, r0
	ldr r6, off_8046448 // =sub_8000C5C+1 
	mov lr, pc
	bx r6
	mov r7, r0
	sub r0, #1
	lsl r1, r0, #2
	pop {r0,r4-r6}
	ldrb r3, [r0,#2]
	cmp r3, #0x80
	bge loc_8046402
	sub r3, r3, r7
	mov r7, #0
	cmp r3, #0x40 
	blt loc_80463D6
	sub r3, #0x40 
	mov r7, #1
loc_80463D6:
	push {r0}
	push {r7}
	mov r0, #0xf
loc_80463DC:
	mov r7, r8
	lsr r7, r1
	and r7, r0
	push {r1}
	mov r1, #1
	add r1, r1, r7
	bl sub_80461D0
	pop {r1}
	sub r1, #4
	bge loc_80463DC
	pop {r0}
loc_80463F4:
	cmp r3, #0
	ble loc_804643C
	sub r3, #1
	mov r1, r0
	bl sub_80461D0
	b loc_80463F4
loc_8046402:
	sub r3, #0x80
	sub r3, r3, r7
	push {r0,r1}
	mov r0, #0
	cmp r3, #0x40 
	blt loc_8046412
	sub r3, #0x40 
	mov r0, #1
loc_8046412:
	cmp r3, #0
	ble loc_8046420
	sub r3, #1
	mov r1, r0
	bl sub_80461D0
	b loc_8046412
loc_8046420:
	pop {r0,r1}
	push {r0}
	mov r0, #0xf
loc_8046426:
	mov r7, r8
	lsr r7, r1
	and r7, r0
	push {r1}
	mov r1, #1
	add r1, r1, r7
	bl sub_80461D0
	pop {r1}
	sub r1, #4
	bge loc_8046426
loc_804643C:
	pop {r0}
	add r0, #3
	pop {r3,pc}
	.balign 4, 0x00
off_8046444: .word sub_8000C00+1
off_8046448: .word sub_8000C5C+1
off_804644C: .word byte_200A220
	thumb_func_end sub_80463A0

	thumb_local_start
sub_8046450:
	push {r3,r7,lr}
	ldr r1, off_8046460 // =dword_8046464 
	ldrb r3, [r0,#1]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	mov lr, pc
	bx r1
	pop {r3,r7,pc}
off_8046460: .word dword_8046464
dword_8046464: .word 0x0
	.word 0x3006DC9
off_804646C: .word sub_8116894+1
	.word sub_8116924+1
	.word sub_8116ADC+1
	.word sub_8116CE0+1
	.word sub_8116E10+1
	.word sub_8117110+1
	.word sub_8117218+1
	.word sub_81172B0+1
	.word sub_8117404+1
	.word sub_81175D0+1
	.word sub_8117690+1
	.word sub_8117780+1
	.word sub_81178D8+1
	.word sub_8117BC8+1
	.word sub_8117D2C+1
	.word sub_8117EC8+1
	.word sub_8118344+1
	.word sub_81187E8+1
	.word sub_8118BA4+1
	.word sub_8118D60+1
	.word sub_8118E84+1
	.word sub_8118F24+1
	.word sub_8119364+1
	.word sub_811997C+1
	.word sub_8119ACC+1
	.word sub_8119D54+1
	.word sub_8119E40+1
	.word sub_811A338+1
	.word sub_811A414+1
	.word sub_811A78C+1
	.word sub_811A858+1
	.word sub_811A978+1
	.word sub_811AB5C+1
	.word sub_811AD38+1
	.word 0x0
	.word sub_811B1EC+1
	.word sub_811B338+1
	.word sub_811B3F4+1
	.word sub_811B4AC+1
	.word sub_811B9B4+1
	.word 0x0
	.word sub_811BC44+1
	.word sub_811BD64+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	.word sub_811C08C+1
	.word sub_811C11C+1
	.word sub_811C1AC+1
	.word sub_811C25C+1
	.word sub_811C4E8+1
	.word sub_811C9FC+1
	.word sub_811CC74+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_811DC34+1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8046450

// () -> void
	thumb_func_start sub_804657C
sub_804657C:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_80466D4 // =eStructArr2008450 
	// size
	ldr r1, off_804659C // =0x528 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r5, off_80466D4 // =eStructArr2008450 
	mov r7, #0
loc_804658A:
	mov r0, #0x20 
	strb r0, [r5,#2]
	strb r7, [r5,#3]
	add r5, #0x58 
	add r7, #1
	cmp r7, #0xf
	blt loc_804658A
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804659C: .word 0x528
	thumb_func_end sub_804657C

// (void *a1) -> void
	thumb_func_start sub_80465A0
sub_80465A0:
	push {r4-r7,lr}
loc_80465A2:
	ldrb r7, [r0]
	cmp r7, #0xff
	beq locret_80465BA
	push {r0}
	ldrh r2, [r0,#2]
	ldrb r1, [r0,#1]
	ldrb r0, [r0]
	bl sub_8046670
	pop {r0}
	add r0, #4
	b loc_80465A2
locret_80465BA:
	pop {r4-r7,pc}
	thumb_func_end sub_80465A0

	thumb_func_start sub_80465BC
sub_80465BC:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r5, off_80466D4 // =eStructArr2008450 
	mov r7, #0
loc_80465CA:
	ldrb r0, [r5]
	mov r1, #1
	tst r0, r1
	beq loc_80465E2
	ldr r0, off_80465F4 // =off_804646C 
	ldrb r1, [r5,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	push {r7}
	mov lr, pc
	bx r0
	pop {r7}
loc_80465E2:
	add r5, #0x58 
	add r7, #1
	cmp r7, #0xf
	blt loc_80465CA
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
off_80465F4: .word off_804646C
	thumb_func_end sub_80465BC

// () -> void
	thumb_func_start sub_80465F8
sub_80465F8:
	mov r0, #0
	b loc_80465FC
loc_80465FC:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	mov r4, r0
	ldr r5, off_80466D4 // =eStructArr2008450 
	mov r7, #0
loc_804660C:
	ldrb r0, [r5]
	mov r1, #2
	tst r0, r1
	beq loc_8046652
	push {r0,r4,r5,r7}
	add r5, #0x20 
	bl sub_80466D8
	pop {r0,r4,r5,r7}
	mov r1, #0x40 
	tst r0, r1
	bne loc_8046644
	mov r1, #0x80
	tst r0, r1
	bne loc_8046634
	push {r0,r4,r5,r7}
	add r5, #0x20 
	bl sub_8002818
	pop {r0,r4,r5,r7}
loc_8046634:
	mov r1, #0x20 
	tst r0, r1
	beq loc_8046644
	push {r4,r5,r7}
	add r5, #0x20 
	bl sub_8002874
	pop {r4,r5,r7}
loc_8046644:
	push {r4,r5,r7}
	add r5, #0x20 
	mov r0, r4
	mov r1, #0
	bl sub_8002694
	pop {r4,r5,r7}
loc_8046652:
	add r5, #0x58 
	add r7, #1
	cmp r7, #0xf
	blt loc_804660C
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	thumb_func_end sub_80465F8

// () -> void
	thumb_func_start sub_8046664
sub_8046664:
	push {r4-r7,lr}
	bl sub_80466AA // () -> void
	bl sub_804657C // () -> void
	pop {r4-r7,pc}
	thumb_func_end sub_8046664

	thumb_func_start sub_8046670
sub_8046670:
	push {r4-r7,lr}
	ldr r5, off_80466D4 // =eStructArr2008450 
	mov r4, #0x58 
	mul r1, r4
	add r5, r5, r1
	strb r0, [r5,#1]
	mov r0, #9
	strb r0, [r5]
	str r2, [r5,#4]
	mov r0, #0
	str r0, [r5,#8]
	mov r0, r5
	pop {r4-r7,pc}
	thumb_func_end sub_8046670

	thumb_func_start sub_804668A
sub_804668A:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5]
	bl sprite_makeUnscalable
	pop {r4-r7,pc}
	thumb_func_end sub_804668A

	thumb_func_start sub_8046696
sub_8046696:
	push {r4-r7,lr}
	ldr r5, off_80466D4 // =eStructArr2008450 
	mov r1, #0x58 
	mul r1, r0
	add r5, r5, r1
	mov r0, #0
	strb r0, [r5]
	bl sprite_makeUnscalable
	pop {r4-r7,pc}
	thumb_func_end sub_8046696

// () -> void
	thumb_local_start
sub_80466AA:
	push {r4-r7,lr}
	ldr r5, off_80466D4 // =eStructArr2008450 
	mov r7, #0
loc_80466B0:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_80466BA
	bl sub_804668A
loc_80466BA:
	add r5, #0x58 
	add r7, #1
	cmp r7, #0xf
	blt loc_80466B0
	pop {r4-r7,pc}
	thumb_func_end sub_80466AA

	thumb_func_start getStructFrom2008450
getStructFrom2008450:
	ldr r1, off_80466D4 // =eStructArr2008450 
	mov r2, #0x58 
	mul r2, r0
	add r1, r1, r2
	ldrb r0, [r1]
	tst r0, r0
	mov pc, lr
	.balign 4, 0x00
off_80466D4: .word eStructArr2008450
	thumb_func_end getStructFrom2008450

	thumb_local_start
sub_80466D8:
	push {r5,lr}
	mov r1, #0xc
	ldrsh r1, [r5,r1]
	mov r6, #0xe
	ldrsh r6, [r5,r6]
	mov r12, r6
	mov r0, #0
	ldrb r3, [r5,#0x13]
	mov r2, #0x10
	and r3, r2
	beq loc_80466F0
	mov r0, #1
loc_80466F0:
	mov r8, r0
	mov r0, #0
	ldrb r3, [r5,#0x13]
	mov r2, #0x20 
	and r3, r2
	beq loc_80466FE
	mov r0, #1
loc_80466FE:
	mov r9, r0
	ldr r3, [r5,#0x20]
	ldrb r2, [r3]
	lsl r2, r2, #2
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#0xc]
	ldr r3, [r5,#0x18]
	add r3, r3, r0
	ldr r2, [r3,r2]
	add r2, r2, r3
	mov r7, #0
	mov r4, #0x80
	lsl r4, r4, #0x18
loc_8046718:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_8046764
	mov r3, #1
	ldrsb r3, [r2,r3]
	mov r0, r8
	tst r0, r0
	beq loc_804672A
	neg r3, r3
loc_804672A:
	add r3, r3, r1
	mov r0, #0x40 
	neg r0, r0
	cmp r3, r0
	blt loc_804675C
	mov r0, #0xf0
	add r0, #0x41 
	cmp r3, r0
	bge loc_804675C
	mov r3, #2
	ldrsb r3, [r2,r3]
	mov r0, r9
	tst r0, r0
	beq loc_8046748
	neg r3, r3
loc_8046748:
	add r3, r12
	mov r0, #0x20 
	neg r0, r0
	cmp r3, r0
	blt loc_804675C
	mov r0, #0xa0
	add r0, #0x21 
	cmp r3, r0
	bge loc_804675C
	orr r7, r4
loc_804675C:
	mov r12, r6
	lsr r4, r4, #1
	add r2, #5
	b loc_8046718
loc_8046764:
	ldrb r3, [r5,#3]
	mov r4, #4
	tst r3, r4
	bne loc_804678A
	mov r6, r7
	mov r4, #0x80
	lsl r4, r4, #0x18
	bic r6, r4
	mov r4, #8
	bic r3, r4
	tst r6, r6
	beq loc_804677E
	orr r3, r4
loc_804677E:
	mov r4, #2
	bic r3, r4
	tst r7, r7
	beq loc_8046794
	orr r3, r4
	b loc_8046794
loc_804678A:
	mov r4, #0xa
	bic r3, r4
	tst r7, r7
	beq loc_8046794
	orr r3, r4
loc_8046794:
	strb r3, [r5,#3]
	str r7, [r5,#0x28]
	pop {r5,pc}
	.balign 4, 0x00
off_804679C: .word sub_811DF1C+1
	.word sub_811E024+1
	.word sub_811E168+1
	.word sub_811E248+1
	.word sub_811E360+1
	.word 0x0
	.word sub_811E418+1
	.word 0x0
	.word sub_811E57C+1
	.word sub_811E61C+1
	.word sub_811E6C0+1
	.word sub_811E7D4+1
	.word sub_811E858+1
	.word sub_811E914+1
	.word sub_811E9A0+1
	thumb_func_end sub_80466D8

	thumb_func_start sub_80467D8
sub_80467D8:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8046928 // =byte_2011860 
	// size
	ldr r1, off_80467F8 // =0x1b8 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r5, off_8046928 // =byte_2011860 
	mov r7, #0
loc_80467E6:
	mov r0, #0x20 
	strb r0, [r5,#2]
	strb r7, [r5,#3]
	add r5, #0x58 
	add r7, #1
	cmp r7, #5
	blt loc_80467E6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80467F8: .word 0x1B8
	thumb_func_end sub_80467D8

	thumb_func_start sub_80467FC
sub_80467FC:
	push {r4-r7,lr}
loc_80467FE:
	ldrb r7, [r0]
	cmp r7, #0xff
	beq locret_8046816
	push {r0}
	ldrh r2, [r0,#2]
	ldrb r1, [r0,#1]
	ldrb r0, [r0]
	bl sub_80468C6
	pop {r0}
	add r0, #4
	b loc_80467FE
locret_8046816:
	pop {r4-r7,pc}
	thumb_func_end sub_80467FC

	thumb_func_start sub_8046818
sub_8046818:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r5, off_8046928 // =byte_2011860 
	mov r7, #0
loc_8046826:
	ldrb r0, [r5]
	mov r1, #1
	tst r0, r1
	beq loc_804683E
	ldr r0, off_8046850 // =off_804679C 
	ldrb r1, [r5,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	push {r7}
	mov lr, pc
	bx r0
	pop {r7}
loc_804683E:
	add r5, #0x58 
	add r7, #1
	cmp r7, #5
	blt loc_8046826
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
off_8046850: .word off_804679C
	thumb_func_end sub_8046818

	thumb_func_start sub_8046854
sub_8046854:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r5, off_8046928 // =byte_2011860 
	mov r7, #0
loc_8046862:
	ldrb r0, [r5]
	mov r1, #2
	tst r0, r1
	beq loc_80468A8
	push {r0,r5,r7}
	add r5, #0x20 
	bl sub_804692C
	pop {r0,r5,r7}
	mov r1, #0x40 
	tst r0, r1
	bne loc_804689A
	mov r1, #0x80
	tst r0, r1
	bne loc_804688A
	push {r0,r5,r7}
	add r5, #0x20 
	bl sub_8002818
	pop {r0,r5,r7}
loc_804688A:
	mov r1, #0x20 
	tst r0, r1
	beq loc_804689A
	push {r5,r7}
	add r5, #0x20 
	bl sub_8002874
	pop {r5,r7}
loc_804689A:
	push {r5,r7}
	add r5, #0x20 
	mov r0, #0
	mov r1, #0
	bl sub_8002694
	pop {r5,r7}
loc_80468A8:
	add r5, #0x58 
	add r7, #1
	cmp r7, #5
	blt loc_8046862
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	thumb_func_end sub_8046854

	thumb_func_start sub_80468BA
sub_80468BA:
	push {r4-r7,lr}
	bl sub_8046900
	bl sub_80467D8
	pop {r4-r7,pc}
	thumb_func_end sub_80468BA

	thumb_func_start sub_80468C6
sub_80468C6:
	push {r4-r7,lr}
	ldr r5, off_8046928 // =byte_2011860 
	mov r4, #0x58 
	mul r1, r4
	add r5, r5, r1
	strb r0, [r5,#1]
	mov r0, #9
	strb r0, [r5]
	str r2, [r5,#4]
	mov r0, #0
	str r0, [r5,#8]
	mov r0, r5
	pop {r4-r7,pc}
	thumb_func_end sub_80468C6

	thumb_func_start sub_80468E0
sub_80468E0:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5]
	bl sprite_makeUnscalable
	pop {r4-r7,pc}
	thumb_func_end sub_80468E0

	thumb_func_start sub_80468EC
sub_80468EC:
	push {r4-r7,lr}
	ldr r5, off_8046928 // =byte_2011860 
	mov r1, #0x58 
	mul r1, r0
	add r5, r5, r1
	mov r0, #0
	strb r0, [r5]
	bl sprite_makeUnscalable
	pop {r4-r7,pc}
	thumb_func_end sub_80468EC

	thumb_local_start
sub_8046900:
	push {r4-r7,lr}
	ldr r5, off_8046928 // =byte_2011860 
	mov r7, #0
loc_8046906:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_8046910
	bl sub_80468E0
loc_8046910:
	add r5, #0x58 
	add r7, #1
	cmp r7, #5
	blt loc_8046906
	pop {r4-r7,pc}
	thumb_func_end sub_8046900

	thumb_func_start sub_804691A
sub_804691A:
	ldr r1, off_8046928 // =byte_2011860 
	mov r2, #0x58 
	mul r2, r0
	add r1, r1, r2
	ldrb r0, [r1]
	tst r0, r0
	mov pc, lr
off_8046928: .word byte_2011860
	thumb_func_end sub_804691A

	thumb_local_start
sub_804692C:
	push {r5,lr}
	mov r1, #0xc
	ldrsh r1, [r5,r1]
	mov r6, #0xe
	ldrsh r6, [r5,r6]
	mov r12, r6
	mov r0, #0
	ldrb r3, [r5,#0x13]
	mov r2, #0x10
	and r3, r2
	beq loc_8046944
	mov r0, #1
loc_8046944:
	mov r8, r0
	mov r0, #0
	ldrb r3, [r5,#0x13]
	mov r2, #0x20 
	and r3, r2
	beq loc_8046952
	mov r0, #1
loc_8046952:
	mov r9, r0
	ldr r3, [r5,#0x20]
	ldrb r2, [r3]
	lsl r2, r2, #2
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#0xc]
	ldr r3, [r5,#0x18]
	add r3, r3, r0
	ldr r2, [r3,r2]
	add r2, r2, r3
	mov r7, #0
	mov r4, #0x80
	lsl r4, r4, #0x18
loc_804696C:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_80469B8
	mov r3, #1
	ldrsb r3, [r2,r3]
	mov r0, r8
	tst r0, r0
	beq loc_804697E
	neg r3, r3
loc_804697E:
	add r3, r3, r1
	mov r0, #0x40 
	neg r0, r0
	cmp r3, r0
	blt loc_80469B0
	mov r0, #0xf0
	add r0, #0x41 
	cmp r3, r0
	bge loc_80469B0
	mov r3, #2
	ldrsb r3, [r2,r3]
	mov r0, r9
	tst r0, r0
	beq loc_804699C
	neg r3, r3
loc_804699C:
	add r3, r12
	mov r0, #0x20 
	neg r0, r0
	cmp r3, r0
	blt loc_80469B0
	mov r0, #0xa0
	add r0, #0x21 
	cmp r3, r0
	bge loc_80469B0
	orr r7, r4
loc_80469B0:
	mov r12, r6
	lsr r4, r4, #1
	add r2, #5
	b loc_804696C
loc_80469B8:
	ldrb r3, [r5,#3]
	mov r4, #4
	tst r3, r4
	bne loc_80469DE
	mov r6, r7
	mov r4, #0x80
	lsl r4, r4, #0x18
	bic r6, r4
	mov r4, #8
	bic r3, r4
	tst r6, r6
	beq loc_80469D2
	orr r3, r4
loc_80469D2:
	mov r4, #2
	bic r3, r4
	tst r7, r7
	beq loc_80469E8
	orr r3, r4
	b loc_80469E8
loc_80469DE:
	mov r4, #0xa
	bic r3, r4
	tst r7, r7
	beq loc_80469E8
	orr r3, r4
loc_80469E8:
	strb r3, [r5,#3]
	str r7, [r5,#0x28]
	pop {r5,pc}
	.byte 0, 0
byte_80469F0: .byte 0x20, 0x10, 0x22, 0x10, 0x24, 0x10, 0x26, 0x10, 0x28
	.byte 0x10, 0x2A, 0x10, 0x2C, 0x10, 0x2E, 0x10, 0x0, 0x10
	.byte 0x30, 0x10, 0x0, 0x10, 0x32, 0x10, 0x34, 0x10, 0x36
	.byte 0x10, 0x38, 0x10, 0x3A, 0x10, 0x3C, 0x10, 0x3E, 0x10
	.byte 0x21, 0x10, 0x23, 0x10, 0x25, 0x10, 0x27, 0x10, 0x29
	.byte 0x10, 0x2B, 0x10, 0x2D, 0x10, 0x2F, 0x10, 0x0, 0x10
	.byte 0x31, 0x10, 0x0, 0x10, 0x33, 0x10, 0x35, 0x10, 0x37
	.byte 0x10, 0x39, 0x10, 0x3B, 0x10, 0x3D, 0x10, 0x3F, 0x10
	.byte 0x40, 0x20, 0x42, 0x20, 0x44, 0x20, 0x46, 0x20, 0x48
	.byte 0x20, 0x4A, 0x20, 0x4C, 0x20, 0x4E, 0x20, 0x0, 0x10
	.byte 0x50, 0x20, 0x0, 0x10, 0x52, 0x20, 0x54, 0x20, 0x56
	.byte 0x20, 0x58, 0x20, 0x5A, 0x20, 0x5C, 0x20, 0x5E, 0x20
	.byte 0x41, 0x20, 0x43, 0x20, 0x45, 0x20, 0x47, 0x20, 0x49
	.byte 0x20, 0x4B, 0x20, 0x4D, 0x20, 0x4F, 0x20, 0x0, 0x10
	.byte 0x51, 0x20, 0x0, 0x10, 0x53, 0x20, 0x55, 0x20, 0x57
	.byte 0x20, 0x59, 0x20, 0x5B, 0x20, 0x5D, 0x20, 0x5F, 0x20
	.byte 0x60, 0x10, 0x62, 0x10, 0x64, 0x10, 0x66, 0x10, 0x68
	.byte 0x10, 0x6A, 0x10, 0x6C, 0x10, 0x6E, 0x10, 0x0, 0x10
	.byte 0x70, 0x10, 0x0, 0x10, 0x72, 0x10, 0x74, 0x10, 0x76
	.byte 0x10, 0x78, 0x10, 0x7A, 0x10, 0x7C, 0x10, 0x7E, 0x10
	.byte 0x61, 0x10, 0x63, 0x10, 0x65, 0x10, 0x67, 0x10, 0x69
	.byte 0x10, 0x6B, 0x10, 0x6D, 0x10, 0x6F, 0x10, 0x0, 0x10
	.byte 0x71, 0x10, 0x0, 0x10, 0x73, 0x10, 0x75, 0x10, 0x77
	.byte 0x10, 0x79, 0x10, 0x7B, 0x10, 0x7D, 0x10, 0x7F, 0x10
	.byte 0x80, 0x20, 0x82, 0x20, 0x84, 0x20, 0x86, 0x20, 0x88
	.byte 0x20, 0x8A, 0x20, 0x8C, 0x20, 0x8E, 0x20, 0x0, 0x10
	.byte 0x90, 0x20, 0x0, 0x10, 0x92, 0x20, 0x94, 0x20, 0x96
	.byte 0x20, 0x98, 0x20, 0x9A, 0x20, 0x9C, 0x20, 0x9E, 0x20
	.byte 0x81, 0x20, 0x83, 0x20, 0x85, 0x20, 0x87, 0x20, 0x89
	.byte 0x20, 0x8B, 0x20, 0x8D, 0x20, 0x8F, 0x20, 0x0, 0x10
	.byte 0x91, 0x20, 0x0, 0x10, 0x93, 0x20, 0x95, 0x20, 0x97
	.byte 0x20, 0x99, 0x20, 0x9B, 0x20, 0x9D, 0x20, 0x9F, 0x20
	.byte 0xA0, 0x10, 0xA2, 0x10, 0xA4, 0x10, 0xA6, 0x10, 0xA8
	.byte 0x10, 0xAA, 0x10, 0xAC, 0x10, 0xAE, 0x10, 0x0, 0x10
	.byte 0xB0, 0x10, 0x0, 0x10, 0xB2, 0x10, 0xB4, 0x10, 0xB6
	.byte 0x10, 0xB8, 0x10, 0xBA, 0x10, 0xBC, 0x10, 0xBE, 0x10
	.byte 0xA1, 0x10, 0xA3, 0x10, 0xA5, 0x10, 0xA7, 0x10, 0xA9
	.byte 0x10, 0xAB, 0x10, 0xAD, 0x10, 0xAF, 0x10, 0x0, 0x10
	.byte 0xB1, 0x10, 0x0, 0x10, 0xB3, 0x10, 0xB5, 0x10, 0xB7
	.byte 0x10, 0xB9, 0x10, 0xBB, 0x10, 0xBD, 0x10, 0xBF, 0x10
byte_8046B58: .byte 0x20, 0x11, 0x22, 0x11, 0x24, 0x11, 0x26, 0x11, 0x28
	.byte 0x11, 0x2A, 0x11, 0x2C, 0x11, 0x21, 0x11, 0x23, 0x11
	.byte 0x25, 0x11, 0x27, 0x11, 0x29, 0x11, 0x2B, 0x11, 0x2D
	.byte 0x11
byte_8046B74: .byte 0x16, 0x0, 0x0, 0x1, 0x16, 0x1, 0x1, 0x1, 0x16, 0x2, 0x2, 0x1, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_8046B84: .byte 0xB, 0x3, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8046B8C: .byte 0xC, 0x4, 0x0, 0xFF, 0xC, 0x5, 0x1, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF
dword_8046B98: .word 0x0
	.word dword_87F0DA0
	.word 0x0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F0DA0
	.word 0x40
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1278
	.word 0x80
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F14CC
	.word 0xC0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F0FF4
	.word 0x100
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F0DA0
	.word 0x140
	.word 0x8
	.word 0x1
	.word dword_87F1714
	.word 0x180
	.word 0x8
	.word 0x1
	.word dword_87F1714
	.word 0x1C0
	.word 0x8
	.word 0x0
	.word dword_87F1278
	.word 0x200
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F195C
	.word 0x240
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1278
	.word 0x280
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1BA8
	.word 0x2C0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1BA8
	.word 0x300
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1BA8
	.word 0x340
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1BA8
	.word 0x380
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F1BA8
	.word 0x3C0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word byte_87F1E10
	.word 0x400
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word dword_87F195C
	.word 0x440
	.word 0x8
	.word 0x2
	.word byte_87F2094
	.word 0x480
	.word 0x140
	thumb_func_end sub_804692C

	thumb_func_start sub_8046CC8
sub_8046CC8:
	push {r4-r7,lr}
	ldr r5, off_8046D48 // =byte_2011C10 
	mov r4, r0
	// memBlock
	ldr r0, off_8046D48 // =byte_2011C10 
	// size
	mov r1, #0x34 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	strb r4, [r5,#0x4] // (byte_2011C14 - 0x2011c10)
	ldr r2, off_8046CF0 // =dword_8046B98
	mov r0, #0x10
	mul r0, r4
	add r0, r0, r2
	str r0, [r5,#0x1c] // (dword_2011C2C - 0x2011c10)
	ldr r0, off_8046CF4 // =reqBBS_requestInfo_textOffsets 
	str r0, [r5,#0x24] // (dword_2011C34 - 0x2011c10)
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrh r0, [r1,#oGameState_MapGroup]
	strh r0, [r1,#oGameState_LastMapGroup]
	pop {r4-r7,pc}
off_8046CF0: .word dword_8046B98
off_8046CF4: .word reqBBS_requestInfo_textOffsets
	thumb_func_end sub_8046CC8

	thumb_func_start ShopControl
ShopControl:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_8046D48 // =byte_2011C10 
	ldr r0, off_8046D18 // =off_8046D1C 
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
off_8046D18: .word off_8046D1C
off_8046D1C: .word sub_8046D4C+1
	.word sub_8046DDC+1
	.word sub_8046DF8+1
	.word sub_8046E06+1
	.word sub_8046E48+1
	.word sub_8046E84+1
	.word sub_8046ED2+1
	.word sub_8047028+1
	.word sub_8047050+1
	.word sub_8047066+1
	.word sub_804709C+1
off_8046D48: .word byte_2011C10
	thumb_func_end ShopControl

	thumb_local_start
sub_8046D4C:
	push {lr}
	ldrb r0, [r5,#4]
	ldr r1, off_8046DCC // =byte_2019A00 
	ldr r2, off_8046DD0 // =byte_201AE00 
	bl sub_8048DF8
	bl copyData_804747C
	bl uncomp_80471F8
	mov r0, #0
	bl sub_8047B88
	strh r0, [r5,#0x12]
	bl sub_804754C
	bl sub_8047CEC
	mov r0, #0
	ldr r1, off_8046DCC // =byte_2019A00 
	bl sub_8047594
	bl sub_804758C
	bl sub_8047800
	// a1
	ldr r0, off_8046DD8 // =byte_8046B8C
	bl sub_80465A0 // (void *a1) -> void
	ldr r0, [r5,#0x24]
	mov r1, #0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldr r0, dword_8046DD4 // =0x1f40 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x18
	bl sub_80015FC
	mov r0, #8
	mov r1, #0xc
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldr r0, [r5,#0x1c]
	ldr r0, [r0]
	cmp r0, #1
	bne loc_8046DB8
	bl sub_803D0F4
	b loc_8046DBC
loc_8046DB8:
	bl sub_803D06C
loc_8046DBC:
	str r0, [r5,#0x28]
	bl sub_804733C
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_8046DCC: .word byte_2019A00
off_8046DD0: .word byte_201AE00
dword_8046DD4: .word 0x1F40
off_8046DD8: .word byte_8046B8C
	thumb_func_end sub_8046D4C

	thumb_local_start
sub_8046DDC:
	push {lr}
	ldrb r0, [r5,#8]
	add r0, #2
	strb r0, [r5,#8]
	cmp r0, #0x15
	blt loc_8046DF0
	mov r0, #0x15
	strb r0, [r5,#8]
	mov r0, #8
	strb r0, [r5]
loc_8046DF0:
	bl sub_8047134
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8046DDC

	thumb_local_start
sub_8046DF8:
	push {lr}
	bl sub_8047950
	bl sub_8047134
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8046DF8

	thumb_local_start
sub_8046E06:
	push {lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_8046E40
	ldr r0, [r5,#0x28]
	bl sub_8047366
	bne loc_8046E40
	ldrb r0, [r5,#8]
	sub r0, #2
	strb r0, [r5,#8]
	cmp r0, #0
	bgt loc_8046E40
	mov r0, #0
	strb r0, [r5,#8]
	ldrb r0, [r5,#0xa]
	add r0, #1
	strb r0, [r5,#0xa]
	cmp r0, #0x10
	blt loc_8046E40
	mov r0, #0
	strb r0, [r5,#0xa]
	mov r0, #0x10
	strb r0, [r5]
	mov r0, #0xc
	mov r1, #0xc
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_8046E40:
	bl sub_8047134
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8046E06

	thumb_local_start
sub_8046E48:
	push {lr}
	bl sub_8047134
	bl IsPaletteFadeActive // () -> zf
	beq loc_8046E80
	ldr r1, [r5,#0x28]
	mov r0, r1
	bl sub_8047366
	bne loc_8046E80
	ldr r0, [r5,#0x1c]
	ldr r0, [r0]
	cmp r0, #1
	bne loc_8046E6E
	mov r0, r1
	bl sub_803D0B4
	b loc_8046E74
loc_8046E6E:
	mov r0, r1
	bl sub_803D02C
loc_8046E74:
	bl sub_809E122
	bl sub_8005F84
	mov r0, #1
	pop {pc}
loc_8046E80:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8046E48

	thumb_local_start
sub_8046E84:
	push {lr}
	bl sub_8047134
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #2
	tst r1, r0
	beq loc_8046E9E
	mov r0, #0x68 
	bl sound_play // () -> void
	b loc_8046EBC
loc_8046E9E:
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_8046ECE
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_8046EBC
	ldr r0, [r5,#0x24]
	mov r1, #1
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #8
	strb r0, [r5]
	b loc_8046ECE
loc_8046EBC:
	mov r0, #0x40 
	bl chatbox_set_eFlags2009F38
	ldr r0, [r5,#0x24]
	mov r1, #3
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0xc
	strb r0, [r5]
loc_8046ECE:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8046E84

	thumb_local_start
sub_8046ED2:
	push {lr}
	bl sub_8047134
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_8046EF2
	ldr r0, off_8047024 // =0x100 
	bl chatbox_check_eFlags2009F38
	beq loc_8046EF2
	mov r0, #1
	strb r0, [r5,#7]
	mov r0, #0x68 
	bl sound_play // () -> void
loc_8046EF2:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	bne loc_8046EFC
	b loc_8047020
loc_8046EFC:
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_8046F12
	ldrb r0, [r5,#7]
	tst r0, r0
	bne loc_8047000
	mov r0, #0x68 
	bl sound_play // () -> void
	b loc_8047000
loc_8046F12:
	ldr r1, [r5,#0x1c]
	ldr r1, [r1]
	ldr r2, [r5,#0x20]
	ldrh r2, [r2,#6]
	cmp r1, #1
	beq loc_8046F22
	mov r1, #0x64 
	mul r2, r1
loc_8046F22:
	ldr r0, [r5,#0x28]
	bl sub_8047366
	bne loc_8046F2E
	sub r0, r0, r2
	bge loc_8046F32
loc_8046F2E:
	mov r1, #8
	b loc_804700E
loc_8046F32:
	mov r8, r0
	ldr r0, [r5,#0x1c]
	ldr r0, [r0]
	cmp r0, #2
	bne loc_8046F42
	mov r0, #0x67 
	bl sound_play // () -> void
loc_8046F42:
	ldr r7, [r5,#0x20]
	ldrb r2, [r7]
	cmp r2, #2
	bne loc_8046F84
	ldr r0, [r5,#0x1c]
	ldr r0, [r0]
	cmp r0, #2
	beq loc_8046F6E
	ldr r7, [r5,#0x20]
	ldrh r0, [r7,#2]
	ldrb r1, [r7,#4]
	bl sub_8047384
	bne loc_8047000
	mov r2, #1
	bl sub_8021AEE
	mov r1, #9
	cmp r0, #0
	bne loc_804700E
	mov r1, #7
	b loc_8046FBE
loc_8046F6E:
	mov r0, r8
	str r0, [r5,#0x2c]
	bl sub_804733C
	mov r1, #6
	mov r0, #0x28 
	strb r0, [r5]
	ldr r0, [r5,#0x24]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_8047020
loc_8046F84:
	cmp r2, #1
	bne loc_8046FA2
	ldrh r0, [r7,#2]
	mov r1, #0xff
	bl sub_8047384
	bne loc_8047000
	mov r1, #1
	bl sub_803CD98
	mov r1, #9
	cmp r0, #0
	bne loc_804700E
	mov r1, #6
	b loc_8046FBE
loc_8046FA2:
	ldrh r0, [r7,#2]
	ldrb r1, [r7,#4]
	bl sub_8047384
	bne loc_8047000
	add r0, #0x90
	mov r2, #1
	bl sub_803D108
	mov r1, #9
	cmp r0, #0
	bne loc_804700E
	mov r1, #0xc
	b loc_8046FBE
loc_8046FBE:
	mov r0, r8
	str r0, [r5,#0x28]
	bl sub_804733C
	push {r1}
	ldr r7, [r5,#0x20]
	ldrb r0, [r5,#4]
	ldrb r1, [r7]
	ldrh r2, [r7,#2]
	ldrb r3, [r7,#4]
	ldr r4, [r5,#0x1c]
	ldr r4, [r4]
	bl sub_8048DAE
	ldr r7, [r5,#0x20]
	ldrh r0, [r7,#2]
	bl sub_8047B88
	strh r0, [r5,#0x12]
	bl sub_8047CB6
	pop {r1}
	mov r0, #0x1c
	strb r0, [r5]
	ldr r0, [r5,#0x24]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r7, #0xff
	strb r7, [r5,#0xd]
	mov r0, #0x73 
	bl sound_play // () -> void
	b loc_8047020
loc_8047000:
	ldr r0, [r5,#0x24]
	mov r1, #1
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #8
	strb r0, [r5]
	b loc_8047020
loc_804700E:
	ldr r0, [r5,#0x24]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #0x1c
	strb r0, [r5]
	b loc_8047020
loc_8047020:
	mov r0, #0
	pop {pc}
off_8047024: .word 0x100
	thumb_func_end sub_8046ED2

	thumb_local_start
sub_8047028:
	push {lr}
	bl sub_8047134
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_804704C
	mov r1, #1
	mov r2, #8
	ldrh r0, [r5,#0x12]
	tst r0, r0
	bne loc_8047044
	mov r1, #0xa
	mov r2, #0x20 
loc_8047044:
	strb r2, [r5]
	ldr r0, [r5,#0x24]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
loc_804704C:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8047028

	thumb_local_start
sub_8047050:
	push {lr}
	bl sub_8047134
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_8047062
	mov r0, #0xc
	strb r0, [r5]
loc_8047062:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8047050

	thumb_local_start
sub_8047066:
	push {lr}
	bl sub_8047134
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_8047094
	mov r0, #0
	bl chatbox_8045EEC
	ldr r2, dword_8047098 // =0x2420 
	add r2, r2, r0
	// bitfield
	mov r0, r2
	bl SetEventFlag
	mov r7, #0xff
	strb r7, [r5,#0xd]
	ldrb r0, [r5,#1]
	strb r0, [r5]
	ldr r0, [r5,#0x24]
	ldrb r1, [r5,#6]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
loc_8047094:
	mov r0, #0
	pop {pc}
dword_8047098: .word 0x2420
	thumb_func_end sub_8047066

	thumb_local_start
sub_804709C:
	push {lr}
	bl sub_8047134
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_8047130
	ldr r0, [r5,#0x2c]
	bl sub_8047366
	bne loc_8047130
	ldr r7, [r5,#0x20]
	ldrh r0, [r7,#2]
	ldrb r1, [r7,#4]
	bl sub_8047384
	bne loc_804710A
	mov r2, #1
	bl sub_8021AEE
	mov r1, #9
	cmp r0, #0
	bne loc_8047118
	ldr r0, [r5,#0x2c]
	str r0, [r5,#0x28]
	bl sub_804733C
	ldr r7, [r5,#0x20]
	ldrb r0, [r5,#4]
	ldrb r1, [r7]
	ldrh r2, [r7,#2]
	ldrb r3, [r7,#4]
	ldr r4, [r5,#0x1c]
	ldr r4, [r4]
	bl sub_8048DAE
	ldr r7, [r5,#0x20]
	ldrh r0, [r7,#2]
	bl sub_8047B88
	strh r0, [r5,#0x12]
	bl sub_8047CB6
	mov r0, #0x1c
	strb r0, [r5]
	mov r1, #7
	ldr r0, [r5,#0x24]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r7, #0xff
	strb r7, [r5,#0xd]
	mov r0, #0x73 
	bl sound_play // () -> void
	b loc_8047130
loc_804710A:
	ldr r0, [r5,#0x24]
	mov r1, #1
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #8
	strb r0, [r5]
	b loc_8047130
loc_8047118:
	ldr r0, [r5,#0x28]
	str r0, [r5,#0x2c]
	bl sub_804733C
	ldr r0, [r5,#0x24]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #0x1c
	strb r0, [r5]
loc_8047130:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_804709C

	thumb_local_start
sub_8047134:
	push {r4-r7,lr}
	push {r5}
	mov r0, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r4, #0x20 
	mov r5, #0x14
	bl sub_80018D0
	pop {r5}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl sub_81179AE
	bl sub_80473E6
	bne loc_8047174
	ldrh r0, [r5,#0xe]
	tst r0, r0
	bne loc_8047174
	ldrb r3, [r5,#0xd]
	cmp r3, #0
	beq loc_8047188
	mov r3, #0
	strb r3, [r5,#0xd]
	mov r0, #0
	bl sub_8047B88
	strh r0, [r5,#0x12]
loc_8047174:
	bl sub_8047CB6
	bl sub_8047CEC
	ldrh r0, [r5,#0x18]
	ldr r1, off_80471F4 // =byte_2019A00 
	bl sub_8047594
	bl sub_8047834
loc_8047188:
	bl sub_804758C
	bl sub_8047800
	mov r7, r10
	ldr r7, [r7,#oToolkit_RenderInfoPtr]
	ldrh r6, [r7,#0x10]
	sub r6, #1
	strh r6, [r7,#0x10]
	ldrh r6, [r7,#0x12]
	sub r6, #1
	strh r6, [r7,#0x12]
	ldrb r0, [r5]
	cmp r0, #4
	beq locret_80471F0
	cmp r0, #0xc
	beq locret_80471F0
	cmp r0, #0x10
	beq locret_80471F0
	mov r0, #0
	ldrh r1, [r5,#0x14]
	lsl r1, r1, #4
	add r1, #8
	ldrb r2, [r5,#0xb]
	mov r3, #0
	bl sub_80472E8
	ldrb r0, [r5]
	cmp r0, #8
	bne loc_80471C6
	strb r2, [r5,#0xb]
loc_80471C6:
	ldrh r0, [r5,#0x12]
	cmp r0, #5
	blt locret_80471F0
	ldrh r0, [r5,#0x18]
	tst r0, r0
	beq loc_80471DC
	mov r0, #0x50 
	mov r1, #3
	mov r2, #0
	bl sub_804722C
loc_80471DC:
	ldrh r0, [r5,#0x12]
	ldrh r1, [r5,#0x18]
	sub r0, r0, r1
	cmp r0, #5
	ble locret_80471F0
	mov r0, #0x50 
	mov r1, #0x55 
	mov r2, #1
	bl sub_804722C
locret_80471F0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80471F4: .word byte_2019A00
	thumb_func_end sub_8047134

	thumb_local_start
uncomp_80471F8:
	push {r4-r7,lr}
	ldr r0, [r5,#0x1c]
	// src
	ldr r0, [r0,#4]
	// dest
	ldr r1, off_8047218 // =unk_2029A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	// src
	ldr r0, off_804721C // =comp_873DE4C 
	// dest
	ldr r1, off_8047220 // =eDecomp202BA00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	// src
	ldr r0, off_8047224 // =comp_873ECC8 
	// dest
	ldr r1, off_8047228 // =byte_202DA00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8047218: .word unk_2029A00
off_804721C: .word comp_873DE4C
off_8047220: .word eDecomp202BA00
off_8047224: .word comp_873ECC8
off_8047228: .word byte_202DA00
	thumb_func_end uncomp_80471F8

	thumb_local_start
sub_804722C:
	push {r4-r7,lr}
	ldrb r3, [r5,#5]
	tst r3, r3
	bne locret_804725E
	ldr r3, off_8047264 // =byte_8047268
	lsl r4, r2, #1
	lsl r0, r0, #0x10
	orr r0, r1
	mov r6, r10
	ldr r6, [r6,#oToolkit_CurFramePtr]
	ldrh r6, [r6]
	mov r7, #0x1f
	and r6, r7
	lsl r6, r6, #1
	ldrh r1, [r3,r6]
	add r1, r1, r4
	ldr r2, dword_8047260 // =0x0 
	orr r0, r2
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_804725E:
	pop {r4-r7,pc}
dword_8047260: .word 0x0
off_8047264: .word byte_8047268
byte_8047268: .byte 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0
	.byte 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0
	.byte 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0
	.byte 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0, 0xF, 0xE0
	.byte 0xE, 0xE0, 0xE, 0xE0, 0xE, 0xE0, 0xE, 0xE0, 0xE, 0xE0
	.byte 0xE, 0xE0, 0xE, 0xE0, 0xE, 0xE0, 0xE, 0xE0, 0xE, 0xE0
	.byte 0xE, 0xE0, 0xE, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0
	.byte 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0
	.byte 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0
	.byte 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0, 0x11, 0xE0
	.byte 0x11, 0xE0, 0x11, 0xE0, 0x10, 0xE0, 0x10, 0xE0, 0x10, 0xE0
	.byte 0x10, 0xE0, 0x10, 0xE0, 0x10, 0xE0, 0x10, 0xE0, 0x10, 0xE0
	.byte 0x10, 0xE0, 0x10, 0xE0, 0x10, 0xE0, 0x10, 0xE0
	thumb_func_end sub_804722C

	thumb_local_start
sub_80472E8:
	push {r4-r7,lr}
	mov r7, r2
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, dword_8047310 // =0x40000000 
	orr r0, r1
	lsl r2, r2, #1
	ldr r1, off_8047314 // =byte_8047318
	ldrh r1, [r1,r2]
	mov r2, #0
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r2, r7
	add r2, #1
	cmp r2, #0x12
	blt locret_804730C
	mov r2, #0
locret_804730C:
	pop {r4-r7,pc}
	.byte 0, 0
dword_8047310: .word 0x40000000
off_8047314: .word byte_8047318
byte_8047318: .byte 0x2, 0xE0, 0x2, 0xE0, 0x2, 0xE0, 0x2, 0xE0, 0x2, 0xE0, 0x2, 0xE0
	.byte 0x6, 0xE0, 0x6, 0xE0, 0x6, 0xE0, 0x6, 0xE0, 0x6, 0xE0, 0x6, 0xE0
	.byte 0xA, 0xE0, 0xA, 0xE0, 0xA, 0xE0, 0xA, 0xE0, 0xA, 0xE0, 0xA, 0xE0
	thumb_func_end sub_80472E8

	thumb_local_start
sub_804733C:
	push {r0-r4,lr}
	mov r4, r0
loc_8047340:
	bl GetPositiveSignedRNG2
	mov r2, #0xff
	and r2, r0
	tst r2, r2
	beq loc_8047340
	mov r1, r4
	add r1, r1, r2
	lsl r1, r1, #8
	lsr r3, r2, #4
	mov r0, #0xf
	and r2, r0
	eor r2, r3
	lsl r3, r3, #0x1c
	orr r1, r3
	orr r1, r2
	mvn r1, r1
	str r1, [r5,#0x30]
	pop {r0-r4,pc}
	thumb_func_end sub_804733C

	thumb_local_start
sub_8047366:
	push {r0-r2,r4,lr}
	mov r4, r0
	ldr r0, [r5,#0x30]
	mvn r0, r0
	lsl r1, r0, #4
	lsr r1, r1, #0xc
	mov r2, #0xf
	and r2, r0
	lsr r0, r0, #0x1c
	eor r2, r0
	lsl r0, r0, #4
	orr r0, r2
	sub r1, r1, r0
	cmp r1, r4
	pop {r0-r2,r4,pc}
	thumb_func_end sub_8047366

	thumb_local_start
sub_8047384:
	push {r0,r1,r4-r7,lr}
	mov r2, r8
	mov r3, r9
	push {r2,r3}
	mov r8, r0
	mov r9, r1
	ldr r7, [r5,#0x1c]
	ldr r2, [r7]
	cmp r2, #2
	beq loc_80473D0
	mov r3, #0
	ldr r4, [r7,#0xc]
	ldr r7, [r5,#0x1c]
	ldr r7, [r7,#8]
	ldr r2, off_8047478 // =byte_8047DA0 
	add r7, r7, r2
	mov r0, r8
	ldrh r1, [r7,#2]
	bl sub_804743C
	bne loc_80473B8
	mov r0, r9
	ldrb r1, [r7,#4]
	bl sub_8047456
	beq loc_80473DA
loc_80473B8:
	// memBlock
	ldr r0, off_8047470 // =byte_2019A00 
	mov r1, #0x40 
	// size
	add r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, off_8047474 // =byte_2011C10 
	mov r1, #0
	strh r1, [r0,#0x12] // (word_2011C22 - 0x2011c10)
	mov r0, #1
	strh r0, [r5,#0xe]
	mov r0, #1
	b loc_80473DC
loc_80473D0:
	mov r0, r8
	mov r1, r9
	bl sub_8006F1E
	bne loc_80473B8
loc_80473DA:
	mov r0, #0
loc_80473DC:
	tst r0, r0
	pop {r2,r3}
	mov r8, r2
	mov r9, r3
	pop {r0,r1,r4-r7,pc}
	thumb_func_end sub_8047384

	thumb_local_start
sub_80473E6:
	push {r4-r7,lr}
	ldr r7, [r5,#0x1c]
	ldr r0, [r7]
	cmp r0, #2
	beq loc_8047436
	mov r3, #0
	ldr r4, [r7,#0xc]
	ldr r6, off_8047470 // =byte_2019A00 
loc_80473F6:
	ldrb r0, [r6]
	tst r0, r0
	beq loc_8047418
	ldr r7, [r5,#0x1c]
	ldr r7, [r7,#8]
	ldr r0, off_8047478 // =byte_8047DA0 
	add r7, r7, r0
	ldrh r0, [r6,#2]
	ldrh r1, [r7,#2]
	bl sub_804743C
	bne loc_8047422
	ldrb r0, [r6,#4]
	ldrb r1, [r7,#4]
	bl sub_8047456
	bne loc_8047422
loc_8047418:
	add r6, #8
	add r3, #1
	cmp r3, r4
	blt loc_80473F6
	b loc_8047436
loc_8047422:
	// memBlock
	ldr r0, off_8047470 // =byte_2019A00 
	mov r1, #0x40 
	// size
	add r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, off_8047474 // =byte_2011C10 
	mov r1, #0
	strh r1, [r0,#0x12] // (word_2011C22 - 0x2011c10)
	mov r0, #1
	b loc_8047438
loc_8047436:
	mov r0, #0
loc_8047438:
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_80473E6

	thumb_local_start
sub_804743C:
	push {r3-r7,lr}
	mov r6, #0
	mov r3, #0
loc_8047442:
	ldrh r1, [r7,#2]
	cmp r0, r1
	beq loc_8047452
	add r7, #8
	add r3, #1
	cmp r3, r4
	blt loc_8047442
	mov r6, #1
loc_8047452:
	tst r6, r6
	pop {r3-r7,pc}
	thumb_func_end sub_804743C

	thumb_local_start
sub_8047456:
	push {r3-r7,lr}
	mov r6, #0
	mov r3, #0
loc_804745C:
	ldrb r1, [r7,#4]
	cmp r0, r1
	beq loc_804746C
	add r7, #8
	add r3, #1
	cmp r3, r4
	blt loc_804745C
	mov r6, #1
loc_804746C:
	tst r6, r6
	pop {r3-r7,pc}
off_8047470: .word byte_2019A00
off_8047474: .word byte_2011C10
off_8047478: .word byte_8047DA0
	thumb_func_end sub_8047456

	thumb_local_start
copyData_804747C:
	push {r5,lr}
	bl ZeroFillGFX30025c0
	bl sub_8046664 // () -> void
	// initRefs
	ldr r0, off_8047490 // =off_8047494 
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {r5,pc}
	.byte 0, 0
off_8047490: .word off_8047494
off_8047494: .word byte_87F0340
	.word byte_3001960
	.word 0x20
	.word comp_87F006C + 1<<31
	.word 0x6000020
	.word byte_2016A00
	.word comp_87F0218 + 1<<31
	.word 0x0
	.word byte_2017200
	.word byte_87F05A4
	.word unk_3001980
	.word 0xC0
	.word comp_87F0360 + 1<<31
	.word 0x6000800
	.word unk_2018200
	.word comp_87F04D4 + 1<<31
	.word 0x0
	.word unk_2018A00
	.word comp_87F0534 + 1<<31
	.word 0x0
	.word unk_2019200
	.word comp_87F056C + 1<<31
	.word 0x0
	.word unk_2019400
	.word byte_86A48C0
	.word 0x6010040
	.word 0x180
	.word byte_86A4CC0
	.word 0x60101C0
	.word 0x80
	.word comp_86C7980 + 1<<31
	.word 0x0
	.word unk_2037A00
	.word comp_86C73D8 + 1<<31
	.word 0x0
	.word unk_2035A00
	.word comp_87F0664 + 1<<31
	.word 0x0
	.word byte_202FA00
	.word comp_87F0834 + 1<<31
	.word 0x0
	.word byte_2030200
	.word comp_87F0C00 + 1<<31
	.word 0x0
	.word unk_2031200
	.word 0x0
	thumb_func_end copyData_804747C

	thumb_local_start
sub_804754C:
	push {r5,lr}
	ldr r0, off_8047578 // =byte_2017204 
	mov r1, r10
	ldr r1, [r1,#oToolkit_GFX30025c0_Ptr]
	mov r2, #0x80
	lsl r2, r2, #4
	add r1, r1, r2
	ldr r2, dword_804757C // =0x800 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r0, [r5,#0x24]
	mov r1, #0x10
	ldr r2, off_8047580 // =unk_2015E00 
	ldr r3, dword_8047584 // =0x6002000 
	mov r4, #1
	mov r5, #1
	ldr r6, off_8047588 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r5,pc}
	.balign 4, 0x00
off_8047578: .word byte_2017204
dword_804757C: .word 0x800
off_8047580: .word unk_2015E00
dword_8047584: .word 0x6002000
off_8047588: .word dword_86A5D60
	thumb_func_end sub_804754C

	thumb_local_start
sub_804758C:
	push {r5,lr}
	bl sub_80478D4
	pop {r5,pc}
	thumb_func_end sub_804758C

	thumb_local_start
sub_8047594:
	push {r5,r6,lr}
	mov r7, r1
	mov r1, #8
	mul r1, r0
	add r7, r7, r1
	mov r0, #0
loc_80475A0:
	ldrb r3, [r7]
	cmp r3, #1
	bne loc_80475BA
	ldrh r1, [r7,#2]
	bl sub_804760E
	ldrh r1, [r7,#6]
	ldrb r2, [r7,#1]
	ldrh r3, [r7,#2]
	ldrb r4, [r7,#5]
	bl sub_8047790
	b loc_8047604
loc_80475BA:
	cmp r3, #2
	bne loc_80475DE
	ldrh r1, [r7,#2]
	ldrb r2, [r7,#4]
	ldrb r3, [r7,#1]
	ldrb r4, [r7,#5]
	mov r6, #0
	bl sub_8047CFA
	bl sub_8047664
	ldrh r1, [r7,#6]
	ldrb r2, [r7,#1]
	ldrh r3, [r7,#2]
	ldrb r4, [r7,#5]
	bl sub_8047790
	b loc_8047604
loc_80475DE:
	cmp r3, #3
	bne loc_8047600
	ldrh r1, [r7,#2]
	ldrb r2, [r7,#4]
	ldrb r4, [r7,#5]
	mov r6, #1
	bl sub_8047CFA
	bl sub_8047708
	ldrh r1, [r7,#6]
	ldrb r2, [r7,#1]
	ldrh r3, [r7,#2]
	ldrb r4, [r7,#5]
	bl sub_8047790
	b loc_8047604
loc_8047600:
	bl sub_8047760
loc_8047604:
	add r7, #8
	add r0, #1
	cmp r0, #5
	blt loc_80475A0
	pop {r5,r6,pc}
	thumb_func_end sub_8047594

	thumb_local_start
sub_804760E:
	push {r0,r5,r7,lr}
	mov r4, #0x40 
	lsl r4, r4, #4
	mul r4, r0
	push {r4,r5}
	ldr r0, off_804764C // =byte_873D9FC 
	ldr r2, off_8047650 // =eDecompBuffer2013A00
	ldr r3, dword_8047654 // =0x6008400 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #8
	mov r5, #1
	ldr r6, off_8047660 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4,r5}
	ldr r0, [r5,#0x24]
	mov r1, #0x10
	ldr r2, off_8047658 // =unk_2013C00 
	ldr r3, dword_804765C // =0x6008600 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #1
	mov r5, #1
	ldr r6, off_8047660 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0,r5,r7,pc}
	.balign 4, 0x00
off_804764C: .word byte_873D9FC
off_8047650: .word eDecompBuffer2013A00
dword_8047654: .word 0x6008400
off_8047658: .word unk_2013C00
dword_804765C: .word 0x6008600
off_8047660: .word dword_86A5D60
	thumb_func_end sub_804760E

	thumb_local_start
sub_8047664:
	push {r0,r5,r7,lr}
	mov r4, #0x40 
	lsl r4, r4, #4
	mul r4, r0
	push {r1-r4,r7}
	ldr r0, off_80476E0 // =off_80476E4 
	ldr r2, off_80476EC // =eDecompBuffer2013A00
	ldr r3, dword_80476F0 // =0x6008400 
	add r2, r2, r4
	add r3, r3, r4
	lsr r4, r1, #8
	lsl r4, r4, #2
	ldr r0, [r0,r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r4, #8
	mov r5, #1
	ldr r6, off_8047700 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r1-r4,r7}
	tst r3, r3
	bne loc_8047698
	mov r3, #0x1b
	b loc_80476C4
loc_8047698:
	mov r3, r2
	ldr r6, [r5,#0x1c] // (dword_1C+1 - 1)
	ldr r6, [r6]
	cmp r6, #2
	bne loc_80476C4
	push {r1-r3}
	ldr r2, dword_8047704 // =0x1e20 
	add r1, r1, r2
	mov r0, r1
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r1-r3}
	bne loc_80476C4
	push {r1-r3}
	ldr r2, dword_80477FC // =0x2420 
	add r1, r1, r2
	mov r0, r1
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r1-r3}
	bne loc_80476C4
	mov r3, #0x1b
loc_80476C4:
	ldr r0, off_80476F4 // =byte_86EF71C 
	mov r1, r3
	ldr r2, off_80476F8 // =unk_2013C00 
	ldr r3, dword_80476FC // =0x6008600 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #1
	mov r5, #1
	ldr r6, off_8047700 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0,r5,r7,pc}
	.byte 0, 0
off_80476E0: .word off_80476E4
off_80476E4: .word dword_86EA94C
	.word TextScriptEnemyNames86EB354
off_80476EC: .word eDecompBuffer2013A00
dword_80476F0: .word 0x6008400
off_80476F4: .word byte_86EF71C
off_80476F8: .word unk_2013C00
dword_80476FC: .word 0x6008600
off_8047700: .word dword_86A5D60
dword_8047704: .word 0x1E20
	thumb_func_end sub_8047664

	thumb_local_start
sub_8047708:
	push {r0,r5,r7,lr}
	mov r4, #0x40 
	lsl r4, r4, #4
	mul r4, r0
	push {r4,r5}
	ldr r0, off_8047748 // =byte_873EA50 
	lsr r1, r1, #2
	ldr r2, off_804774C // =eDecompBuffer2013A00
	ldr r3, dword_8047750 // =0x6008400 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #8
	mov r5, #1
	ldr r6, off_804775C // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4,r5}
	ldr r0, [r5,#0x24]
	mov r1, #0x10
	ldr r2, off_8047754 // =unk_2013C00 
	ldr r3, dword_8047758 // =0x6008600 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #1
	mov r5, #1
	ldr r6, off_804775C // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0,r5,r7,pc}
	.balign 4, 0x00
off_8047748: .word byte_873EA50
off_804774C: .word eDecompBuffer2013A00
dword_8047750: .word 0x6008400
off_8047754: .word unk_2013C00
dword_8047758: .word 0x6008600
off_804775C: .word dword_86A5D60
	thumb_func_end sub_8047708

	thumb_local_start
sub_8047760:
	push {r0,r5,r7,lr}
	mov r4, #0x40 
	lsl r4, r4, #4
	mul r4, r0
	ldr r0, [r5,#0x24]
	mov r1, #0x10
	ldr r2, off_8047784 // =eDecompBuffer2013A00
	ldr r3, dword_8047788 // =0x6008400 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #0x10
	mov r5, #1
	ldr r6, off_804778C // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0,r5,r7,pc}
	.balign 4, 0x00
off_8047784: .word eDecompBuffer2013A00
dword_8047788: .word 0x6008400
off_804778C: .word dword_86A5D60
	thumb_func_end sub_8047760

	thumb_local_start
sub_8047790:
	push {r0,r5,r7,lr}
	lsl r7, r4, #3
	push {r2}
	bl sub_8047CDC
	mov r4, #0x40 
	lsl r4, r4, #4
	mul r4, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200a220_Ptr]
	str r1, [r0,#8]
	ldr r0, [r5,#0x24]
	mov r1, #0xf
	ldr r6, [r5,#0x1c]
	ldr r6, [r6]
	cmp r6, #1
	bne loc_80477B4
	mov r1, #0xd
loc_80477B4:
	cmp r6, #2
	bne loc_80477D2
	tst r7, r7
	beq loc_80477D2
	push {r0,r1}
	ldr r2, dword_80477FC // =0x2420 
	add r3, r3, r2
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0,r1}
	bne loc_80477D2
	mov r1, #0x10
	pop {r2}
	b loc_80477DA
loc_80477D2:
	pop {r2}
	tst r2, r2
	bne loc_80477DA
	mov r1, #0x11
loc_80477DA:
	ldr r2, off_80477F4 // =unk_2013C40 
	ldr r3, dword_80477F8 // =0x6008640 
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #7
	mov r5, #1
	ldr r6, off_80477F0 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0,r5,r7,pc}
off_80477F0: .word dword_86A5D60
off_80477F4: .word unk_2013C40
dword_80477F8: .word 0x6008640
dword_80477FC: .word 0x2420
	thumb_func_end sub_8047790

	thumb_local_start
sub_8047800:
	push {r4-r7,lr}
	mov r7, r5
	ldrb r0, [r7,#8]
	// j
	sub r0, #0x15
	// i
	mov r1, #0
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804782C // =eTileRefs2018A04 
	mov r4, #0x15
	mov r5, #0xc
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#8]
	sub r0, #0x15
	add r0, #2
	mov r1, #1
	mov r2, #0
	ldr r3, off_8047830 // =byte_202F800 
	mov r4, #0x12
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_804782C: .word eTileRefs2018A04
off_8047830: .word byte_202F800
	thumb_func_end sub_8047800

	thumb_local_start
sub_8047834:
	push {r4-r7,lr}
	ldrb r0, [r5,#5]
	tst r0, r0
	beq locret_80478A0
	ldr r7, off_80478B0 // =byte_2019A00 
	ldrh r0, [r5,#0x14]
	ldrh r1, [r5,#0x18]
	add r0, r0, r1
	mov r1, #8
	mul r0, r1
	add r7, r7, r0
	ldrb r3, [r7]
	cmp r3, #2
	bne loc_804787A
	bl sub_80478B8
	// a1
	ldr r0, off_80478A4 // =byte_8046B74 
	bl sub_80465A0 // (void *a1) -> void
	ldrh r0, [r7,#2]
	ldrb r1, [r7,#4]
	mov r2, #0
	mov r3, #0
	bl sub_811980C
	mov r0, #0x78 
	mov r1, #0x50 
	mov r2, #0
	bl sub_8119854
	ldr r0, off_80478A8 // =eTextScript202BA04
	mov r1, #0x7f
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b locret_80478A0
loc_804787A:
	cmp r3, #1
	bne loc_804788C
	ldr r0, off_80478A8 // =eTextScript202BA04
	ldrh r1, [r7,#2]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	bl sub_80478B8
	b locret_80478A0
loc_804788C:
	ldr r0, off_80478AC // =eTextScript202DA04
	ldrh r1, [r7,#2]
	lsr r1, r1, #2
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	bl sub_80478B8
	// a1
	ldr r0, off_80478B4 // =byte_8046B84 
	bl sub_80465A0 // (void *a1) -> void
locret_80478A0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80478A4: .word byte_8046B74
off_80478A8: .word eTextScript202BA04
off_80478AC: .word eTextScript202DA04
off_80478B0: .word byte_2019A00
off_80478B4: .word byte_8046B84
	thumb_func_end sub_8047834

	thumb_local_start
sub_80478B8:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8046696
	mov r0, #1
	bl sub_8046696
	mov r0, #2
	bl sub_8046696
	mov r0, #3
	bl sub_8046696
	pop {r4-r7,pc}
	thumb_func_end sub_80478B8

	thumb_local_start
sub_80478D4:
	push {r4-r7,lr}
	mov r7, r5
	ldrb r0, [r7,#8]
	sub r0, #0xc
	mov r1, #0x1e
	// j
	sub r0, r1, r0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #2
	ldr r3, off_8047938 // =unk_2019404 
	ldr r4, [r7,#0x1c]
	ldr r4, [r4]
	cmp r4, #1
	beq loc_80478F0
	// tileRefs
	ldr r3, off_804793C // =unk_2019204 
loc_80478F0:
	mov r4, #9
	mov r5, #5
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#8]
	sub r0, #0xd
	mov r1, #0x1e
	sub r0, r1, r0
	mov r1, #2
	mov r2, #0
	ldr r3, off_8047940 // =byte_8046B58 
	mov r4, #7
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r1, #0xe
	ldr r2, [r7,#0x1c]
	ldr r2, [r2]
	cmp r2, #1
	bne loc_804791A
	mov r1, #0xd
loc_804791A:
	mov r2, r10
	ldr r2, [r2,#oToolkit_Unk200a220_Ptr]
	ldr r0, [r7,#0x28]
	str r0, [r2,#8]
	ldr r0, [r7,#0x24]
	ldr r2, off_8047944 // =unk_2015A00 
	ldr r3, dword_8047948 // =0x600a400 
	mov r4, #7
	mov r5, #1
	ldr r6, off_804794C // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8047938: .word unk_2019404
off_804793C: .word unk_2019204
off_8047940: .word byte_8046B58
off_8047944: .word unk_2015A00
dword_8047948: .word 0x600A400
off_804794C: .word dword_86A5D60
	thumb_func_end sub_80478D4

	thumb_local_start
sub_8047950:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x18]
	strh r0, [r5,#0x1a]
	ldrh r0, [r5,#0x14]
	strh r0, [r5,#0x16]
	ldr r4, [r5,#0x1c]
	ldr r4, [r4]
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #2
	tst r1, r0
	beq loc_8047976
	ldrb r1, [r5,#5]
	tst r1, r1
	bne loc_8047988
	bl sub_8047A80
	b loc_8047A64
loc_8047976:
	ldrh r1, [r5,#0x12]
	cmp r1, #0
	beq loc_8047A64
	cmp r4, #2
	beq loc_80479AC
	mov r1, #0x10
	lsl r1, r1, #4
	tst r1, r0
	beq loc_80479AC
loc_8047988:
	mov r0, #0x66 
	bl sound_play // () -> void
	ldrb r0, [r5,#5]
	mov r1, #0xff
	eor r0, r1
	strb r0, [r5,#5]
	tst r0, r0
	bne loc_80479A6
	ldr r0, [r5,#0x24]
	mov r1, #1
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	bl sub_80478B8
loc_80479A6:
	mov r0, #0xff
	strb r0, [r5,#0xd]
	b loc_8047A64
loc_80479AC:
	ldrh r1, [r5,#0x12]
	cmp r1, #0
	beq loc_8047A64
	mov r1, #1
	tst r1, r0
	beq loc_80479C4
	ldrb r1, [r5,#5]
	tst r1, r1
	bne loc_8047988
	bl sub_8047A96
	b loc_8047A64
loc_80479C4:
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#4]
	mov r0, #0x40 
	tst r0, r7
	beq loc_80479EA
	ldrh r0, [r5,#0x14]
	sub r0, #1
	strh r0, [r5,#0x14]
	bge loc_8047A64
	mov r0, #0
	strh r0, [r5,#0x14]
	ldrh r0, [r5,#0x18]
	sub r0, #1
	strh r0, [r5,#0x18]
	bge loc_8047A64
	mov r0, #0
	strh r0, [r5,#0x18]
	b loc_8047A64
loc_80479EA:
	ldrh r0, [r5,#0x12]
	mov r1, #5
	cmp r0, r1
	ble loc_8047A0C
	cmp r4, #2
	bne loc_8047A0C
	mov r0, #0x20 
	lsl r0, r0, #4
	tst r0, r7
	beq loc_8047A0C
	ldrh r0, [r5,#0x18]
	sub r0, #5
	strh r0, [r5,#0x18]
	bge loc_8047A64
	mov r0, #0
	strh r0, [r5,#0x18]
	b loc_8047A64
loc_8047A0C:
	mov r0, #0x80
	tst r0, r7
	beq loc_8047A3E
	ldrh r0, [r5,#0x14]
	add r0, #1
	strh r0, [r5,#0x14]
	ldrh r1, [r5,#0x12]
	mov r2, #5
	cmp r1, r2
	ble loc_8047A22
	mov r1, r2
loc_8047A22:
	cmp r0, r1
	blt loc_8047A64
	sub r0, r1, #1
	strh r0, [r5,#0x14]
	ldrh r1, [r5,#0x18]
	add r1, #1
	strh r1, [r5,#0x18]
	ldrh r2, [r5,#0x12]
	sub r2, r2, r0
	cmp r1, r2
	blt loc_8047A64
	sub r2, #1
	strh r2, [r5,#0x18]
	b loc_8047A64
loc_8047A3E:
	ldrh r0, [r5,#0x12]
	mov r1, #5
	cmp r0, r1
	ble loc_8047A64
	cmp r4, #2
	bne loc_8047A64
	mov r0, #0x10
	lsl r0, r0, #4
	tst r0, r7
	beq loc_8047A64
	ldrh r1, [r5,#0x18]
	add r1, #5
	strh r1, [r5,#0x18]
	ldrh r2, [r5,#0x12]
	sub r2, #5
	cmp r1, r2
	blt loc_8047A64
	strh r2, [r5,#0x18]
	b loc_8047A64
loc_8047A64:
	ldrh r0, [r5,#0x14]
	ldrh r1, [r5,#0x16]
	cmp r0, r1
	bne loc_8047A74
	ldrh r0, [r5,#0x18]
	ldrh r1, [r5,#0x1a]
	cmp r0, r1
	beq locret_8047A7E
loc_8047A74:
	mov r0, #0x66 
	bl sound_play // () -> void
	mov r0, #0xff
	strb r0, [r5,#0xd]
locret_8047A7E:
	pop {r4-r7,pc}
	thumb_func_end sub_8047950

	thumb_local_start
sub_8047A80:
	push {lr}
	mov r0, #0x14
	strb r0, [r5]
	ldr r0, [r5,#0x24]
	mov r1, #2
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x68 
	bl sound_play // () -> void
	pop {pc}
	thumb_func_end sub_8047A80

	thumb_local_start
sub_8047A96:
	push {r4-r7,lr}
	ldr r7, off_8047B7C // =byte_2019A00 
	ldrh r0, [r5,#0x14]
	ldrh r1, [r5,#0x18]
	add r0, r0, r1
	mov r1, #8
	mul r0, r1
	add r7, r7, r0
	str r7, [r5,#0x20]
	ldrh r4, [r7,#2]
	ldrb r2, [r7]
	cmp r2, #3
	bne loc_8047AB2
	add r4, #0x90
loc_8047AB2:
	ldrh r1, [r7,#6]
	bl sub_8047CDC
	ldrb r2, [r7,#4]
	push {r0-r7}
	mov r3, r1
	mov r0, r4
	mov r1, r2
	mov r2, r3
	bl chatbox_8045EFC
	pop {r0-r7}
	ldr r2, [r5,#0x1c]
	ldr r2, [r2]
	cmp r2, #2
	beq loc_8047AF8
	ldrb r0, [r7]
	ldrh r1, [r7,#2]
	bl sub_8047CA0
	bne loc_8047B72
	mov r1, #5
	ldrb r2, [r7]
	cmp r2, #2
	beq loc_8047AEC
	mov r1, #4
	cmp r2, #1
	beq loc_8047AEC
	mov r1, #0xb
loc_8047AEC:
	mov r7, r1
	mov r0, #0x18
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#7]
	b loc_8047B62
loc_8047AF8:
	ldrb r6, [r7,#1]
	mov r7, #5
	mov r0, #0x18
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#7]
	ldr r2, dword_8047B80 // =0x1e20 
	add r2, r2, r4
	mov r0, r2
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8047B1C
loc_8047B10:
	tst r6, r6
	bne loc_8047B62
	mov r7, #0x1c
	mov r0, #0x1c
	strb r0, [r5]
	b loc_8047B68
loc_8047B1C:
	ldr r2, dword_8047B84 // =0x2420 
	add r2, r2, r4
	mov r0, r2
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8047B10
	mov r7, #0x18
	mov r0, #0x1b
	strb r0, [r5,#6]
	mov r0, r4
	bl sub_8048F68
	beq loc_8047B3C
	mov r7, #0x1a
	mov r0, #0x1b
	strb r0, [r5,#6]
loc_8047B3C:
	mov r0, #0x24 
	strb r0, [r5]
	mov r0, #0x18
	strb r0, [r5,#1]
	tst r6, r6
	bne loc_8047B62
	mov r7, #0x19
	mov r0, #0x1c
	strb r0, [r5,#6]
	mov r0, #0x1c
	strb r0, [r5,#1]
	mov r0, r4
	bl sub_8048F68
	beq loc_8047B68
	mov r7, #0x1a
	mov r0, #0x1d
	strb r0, [r5,#6]
	b loc_8047B68
loc_8047B62:
	mov r0, #0x67 
	bl sound_play // () -> void
loc_8047B68:
	ldr r0, [r5,#0x24]
	mov r1, r7
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {r4-r7,pc}
loc_8047B72:
	mov r0, #0x69 
	bl sound_play // () -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8047B7C: .word byte_2019A00
dword_8047B80: .word 0x1E20
dword_8047B84: .word 0x2420
	thumb_func_end sub_8047A96

	thumb_local_start
sub_8047B88:
	push {r4-r7,lr}
	mov r4, r0
	// memBlock
	ldr r0, off_8047C98 // =byte_2019A00 
	mov r1, #0x40 
	// size
	add r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r7, [r5,#0x1c]
	ldr r0, [r7]
	cmp r0, #2
	beq loc_8047C3A
	ldr r5, [r7,#0xc]
	ldr r7, [r7,#8]
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk20032c8_Ptr]
	add r7, r7, r6
	ldr r6, off_8047C98 // =byte_2019A00 
	sub r6, #8
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
loc_8047BB4:
	ldrb r0, [r7]
	tst r0, r0
	beq loc_8047C1A
	ldrb r0, [r7,#1]
	tst r0, r0
	beq loc_8047C1A
	ldrb r0, [r7]
	cmp r0, r1
	bne loc_8047BD4
	ldrh r0, [r7,#2]
	cmp r0, r2
	bne loc_8047BD4
	ldrb r0, [r7,#4]
	cmp r0, r3
	bne loc_8047BD4
	b loc_8047C1A
loc_8047BD4:
	push {r0-r3}
	ldrb r0, [r7]
	ldrh r1, [r7,#2]
	bl sub_8047CB0
	pop {r0-r3}
	bne loc_8047C1A
	push {r0-r3}
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	pop {r0-r3}
	beq loc_8047BFA
	ldrb r0, [r7]
	cmp r0, #1
	bne loc_8047BFA
	ldrh r0, [r7,#2]
	cmp r0, #0x70 
	beq loc_8047C1A
loc_8047BFA:
	add r6, #8
	ldrb r0, [r7]
	strb r0, [r6]
	ldrb r0, [r7,#1]
	strb r0, [r6,#1]
	ldrh r0, [r7,#2]
	strh r0, [r6,#2]
	ldrb r0, [r7,#4]
	strb r0, [r6,#4]
	ldrb r0, [r7,#5]
	strb r0, [r6,#5]
	ldrh r0, [r7,#6]
	strh r0, [r6,#6]
	ldrb r1, [r6]
	ldrh r2, [r6,#2]
	ldrb r3, [r6,#4]
loc_8047C1A:
	add r7, #8
	add r4, #1
	cmp r4, r5
	blt loc_8047BB4
	ldr r7, off_8047C98 // =byte_2019A00 
	mov r0, #0
	mov r1, #0
loc_8047C28:
	ldrb r4, [r7,#1]
	tst r4, r4
	beq loc_8047C30
	add r0, #1
loc_8047C30:
	add r7, #8
	add r1, #1
	cmp r1, r5
	blt loc_8047C28
	pop {r4-r7,pc}
loc_8047C3A:
	mov r3, r4
	ldr r5, [r7,#0xc]
	ldr r7, off_8047C9C // =byte_201AE00 
	ldr r6, off_8047C98 // =byte_2019A00 
	sub r6, #8
	mov r4, #0
loc_8047C46:
	ldrh r0, [r7,#2]
	bl sub_8047CA8
	bne loc_8047C76
	add r6, #8
	ldrb r0, [r7]
	strb r0, [r6]
	ldrh r1, [r7,#2]
	strh r1, [r6,#2]
	ldrb r0, [r7,#4]
	strb r0, [r6,#4]
	ldrb r0, [r7,#5]
	strb r0, [r6,#5]
	ldrh r0, [r7,#6]
	strh r0, [r6,#6]
	ldrb r0, [r7,#1]
	strb r0, [r6,#1]
	cmp r1, r3
	bne loc_8047C76
	cmp r0, #0xff
	beq loc_8047C76
	sub r0, #1
	strb r0, [r7,#1]
	strb r0, [r6,#1]
loc_8047C76:
	add r7, #8
	add r4, #1
	cmp r4, r5
	blt loc_8047C46
	ldr r7, off_8047C98 // =byte_2019A00 
	mov r0, #0
	mov r1, #0
loc_8047C84:
	ldrh r4, [r7,#2]
	tst r4, r4
	beq loc_8047C8C
	add r0, #1
loc_8047C8C:
	add r7, #8
	add r1, #1
	cmp r1, r5
	blt loc_8047C84
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8047C98: .word byte_2019A00
off_8047C9C: .word byte_201AE00
	thumb_func_end sub_8047B88

	thumb_local_start
sub_8047CA0:
	push {r2-r7,lr}
	mov r0, #0
	tst r0, r0
	pop {r2-r7,pc}
	thumb_func_end sub_8047CA0

	thumb_local_start
sub_8047CA8:
	push {r1-r7,lr}
	mov r0, #0
	tst r0, r0
	pop {r1-r7,pc}
	thumb_func_end sub_8047CA8

	thumb_local_start
sub_8047CB0:
	push {lr}
	mov r0, #0
	pop {pc}
	thumb_func_end sub_8047CB0

	thumb_local_start
sub_8047CB6:
	push {lr}
	ldrh r0, [r5,#0x12]
	cmp r0, #4
	ble loc_8047CCC
	ldrh r1, [r5,#0x18]
	add r1, #5
	cmp r0, r1
	bge locret_8047CDA
	sub r0, #5
	strh r0, [r5,#0x18]
	b locret_8047CDA
loc_8047CCC:
	tst r0, r0
	beq locret_8047CDA
	sub r0, #1
	ldrh r1, [r5,#0x14]
	cmp r0, r1
	bgt locret_8047CDA
	strh r0, [r5,#0x14]
locret_8047CDA:
	pop {pc}
	thumb_func_end sub_8047CB6

	thumb_local_start
sub_8047CDC:
	push {r0,r2-r7,lr}
	ldr r6, [r5,#0x1c]
	ldr r6, [r6]
	cmp r6, #1
	beq locret_8047CEA
	mov r2, #0x64 
	mul r1, r2
locret_8047CEA:
	pop {r0,r2-r7,pc}
	thumb_func_end sub_8047CDC

	thumb_local_start
sub_8047CEC:
	push {lr}
	ldr r0, off_8047D74 // =byte_80469F0
	ldr r1, off_8047D6C // =byte_202F800 
	ldr r2, off_8047D70 // =0x168 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	thumb_func_end sub_8047CEC

	thumb_local_start
sub_8047CFA:
	push {r0-r7,lr}
	lsl r5, r4, #0xd
	tst r6, r6
	beq loc_8047D16
	mov r6, r0
	mov r0, r1
	add r0, #0x90
	mov r1, r2
	bl sub_803D138
	tst r0, r0
	bne locret_8047D68
	mov r0, r6
	b loc_8047D26
loc_8047D16:
	mov r6, r0
	mov r0, r1
	mov r1, r2
	bl GetChipCountOfCode
	tst r0, r0
	bne locret_8047D68
	mov r0, r6
loc_8047D26:
	ldr r7, off_8047D6C // =byte_202F800 
	ldr r2, dword_8047D78 // =0x3000 
	mov r1, #1
	and r1, r0
	beq loc_8047D32
	ldr r2, dword_8047D7C // =0x4000 
loc_8047D32:
	mov r1, #0x48 
	mul r0, r1
	add r7, r7, r0
	mov r3, #0
	mov r0, #0
loc_8047D3C:
	ldrh r4, [r7,r3]
	ldr r1, dword_8047D80 // =0xfff 
	and r4, r1
	orr r4, r2
	add r4, r4, r5
	strh r4, [r7,r3]
	add r3, #2
	add r0, #1
	cmp r0, #0xa
	blt loc_8047D3C
	mov r3, #0x24 
	mov r0, #0
loc_8047D54:
	ldrh r4, [r7,r3]
	ldr r1, dword_8047D80 // =0xfff 
	and r4, r1
	orr r4, r2
	add r4, r4, r5
	strh r4, [r7,r3]
	add r3, #2
	add r0, #1
	cmp r0, #0xa
	blt loc_8047D54
locret_8047D68:
	pop {r0-r7,pc}
	.balign 4, 0x00
off_8047D6C: .word byte_202F800
off_8047D70: .word 0x168
off_8047D74: .word byte_80469F0
dword_8047D78: .word 0x3000
dword_8047D7C: .word 0x4000
dword_8047D80: .word 0xFFF
	thumb_func_end sub_8047CFA

	thumb_func_start sub_8047D84
sub_8047D84:
	push {r4-r7,lr}
	ldr r5, off_8047D9C // =byte_2011C10 
	ldr r4, off_8047D98 // =byte_2019A00 
	ldrh r0, [r5,#0x14] // (word_2011C24 - 0x2011c10)
	ldrh r1, [r5,#0x18] // (word_2011C28 - 0x2011c10)
	add r0, r0, r1
	mov r1, #8
	mul r0, r1
	add r0, r0, r4
	pop {r4-r7,pc}
off_8047D98: .word byte_2019A00
off_8047D9C: .word byte_2011C10
byte_8047DA0: .byte 0x1
byte_8047DA1: .byte 0x1
word_8047DA2: .hword 0x70
byte_8047DA4: .byte 0xFF, 0x0
word_8047DA6: .hword 0xA
	.byte 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x14, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF
	.byte 0x0, 0x28, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x50, 0x0, 0x2, 0xFF
	.byte 0x9, 0x0, 0xB, 0x0, 0x6, 0x0, 0x2, 0xFF, 0x9B, 0x0, 0x1A, 0x0, 0xA
	.byte 0x0, 0x2, 0xFF, 0xC, 0x0, 0x11, 0x0, 0x18, 0x0, 0x2, 0xFF, 0x13, 0x0
	.byte 0xB, 0x0, 0x2E, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x19, 0x0, 0x1
	.byte 0x1, 0x70, 0x0, 0xFF, 0x0, 0x32, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0
	.byte 0x4B, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x64, 0x0, 0x2, 0xFF, 0x4F
	.byte 0x0, 0x16, 0x0, 0x2A, 0x0, 0x2, 0xFF, 0x9D, 0x0, 0xA, 0x0, 0x1E, 0x0
	.byte 0x2, 0xFF, 0xB3, 0x0, 0x7, 0x0, 0x26, 0x0, 0x2, 0xFF, 0x90, 0x0, 0x7
	.byte 0x0, 0x58, 0x0, 0x1, 0xFF, 0x81, 0x0, 0xFF, 0x0, 0xA, 0x0, 0x1, 0xFF
	.byte 0x84, 0x0, 0xFF, 0x0, 0x46, 0x0, 0x1, 0xFF, 0x82, 0x0, 0xFF, 0x0, 0x5
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x30, 0x0, 0x1, 0x1, 0x70
	.byte 0x0, 0xFF, 0x0, 0x54, 0x0, 0x3, 0x3, 0x8, 0x0, 0x5, 0x0, 0x2E, 0x0
	.byte 0x3, 0x3, 0x10, 0x0, 0x6, 0x0, 0x1E, 0x0, 0x3, 0x1, 0x2C, 0x0, 0x3
	.byte 0x0, 0x26, 0x0, 0x3, 0x1, 0x38, 0x0, 0x6, 0x0, 0x42, 0x0, 0x3, 0x1
	.byte 0x8C, 0x0, 0x3, 0x0, 0x14, 0x0, 0x3, 0x1, 0xAC, 0x0, 0x2, 0x0, 0x2A
	.byte 0x0, 0x2, 0xFF, 0xF, 0x0, 0x2, 0x0, 0xA, 0x0, 0x2, 0xFF, 0x32, 0x0
	.byte 0xD, 0x0, 0x26, 0x0, 0x2, 0xFF, 0x33, 0x0, 0x6, 0x0, 0x32, 0x0, 0x2
	.byte 0xFF, 0x4B, 0x0, 0xC, 0x0, 0x3E, 0x0, 0x2, 0xFF, 0x17, 0x0, 0xF, 0x0
	.byte 0x46, 0x0, 0x2, 0xFF, 0xCA, 0x0, 0x15, 0x0, 0x5A, 0x0, 0x2, 0x0, 0xAE
	.byte 0x0, 0x1A, 0x0, 0x4E, 0x0, 0x2, 0x0, 0x8A, 0x0, 0xD, 0x0, 0x7E, 0x0
	.byte 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x28, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF
	.byte 0x0, 0x4B, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0x64, 0x0, 0x1, 0x1
	.byte 0x70, 0x0, 0xFF, 0x0, 0x82, 0x0, 0x2, 0xFF, 0x75, 0x0, 0x1, 0x0, 0x32
	.byte 0x0, 0x2, 0xFF, 0x50, 0x0, 0x5, 0x0, 0x48, 0x0, 0x2, 0xFF, 0x8D, 0x0
	.byte 0x5, 0x0, 0x58, 0x0, 0x2, 0xFF, 0xAD, 0x0, 0xC, 0x0, 0x78, 0x0, 0x2
	.byte 0xFF, 0xB5, 0x0, 0x10, 0x0, 0x18, 0x0, 0x2, 0xFF, 0x91, 0x0, 0x12, 0x0
	.byte 0x24, 0x0, 0x2, 0xFF, 0x46, 0x0, 0xF, 0x0, 0x30, 0x0, 0x2, 0xFF, 0xA5
	.byte 0x0, 0x10, 0x0, 0x41, 0x0, 0x2, 0xFF, 0x53, 0x0, 0xD, 0x0, 0x50, 0x0
	.byte 0x2, 0xFF, 0x36, 0x1, 0x15, 0x0, 0x64, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x1
	.byte 0x40, 0x0, 0x1, 0x0, 0x14, 0x0, 0x3, 0x1, 0x4, 0x0, 0x4, 0x0, 0x23
	.byte 0x0, 0x3, 0x1, 0x24, 0x0, 0x6, 0x0, 0x30, 0x0, 0x3, 0x1, 0x54, 0x0
	.byte 0x3, 0x0, 0x3E, 0x0, 0x3, 0x1, 0xB4, 0x0, 0x2, 0x0, 0x4C, 0x0, 0x3
	.byte 0x1, 0x18, 0x0, 0x4, 0x0, 0x64, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0xFF, 0x81
	.byte 0x0, 0xFF, 0x0, 0xA, 0x0, 0x1, 0xFF, 0x85, 0x0, 0xFF, 0x0, 0x28, 0x0
	.byte 0x1, 0xFF, 0x83, 0x0, 0xFF, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x70, 0x0
	.byte 0xFF, 0x0, 0x64, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0, 0xA0, 0x0, 0x1
	.byte 0x1, 0x70, 0x0, 0xFF, 0x0, 0xE6, 0x0, 0x1, 0x1, 0x70, 0x0, 0xFF, 0x0
	.byte 0x2C, 0x1, 0x2, 0xFF, 0x76, 0x0, 0x16, 0x0, 0x64, 0x0, 0x2, 0xFF, 0x35
	.byte 0x0, 0x15, 0x0, 0x92, 0x0, 0x2, 0xFF, 0xC7, 0x0, 0x13, 0x0, 0xB8, 0x0
	.byte 0x2, 0xFF, 0x34, 0x1, 0x3, 0x0, 0x2C, 0x1, 0x1, 0xFF, 0x81, 0x0, 0xFF
	.byte 0x0, 0xA, 0x0, 0x1, 0xFF, 0x84, 0x0, 0xFF, 0x0, 0x46, 0x0, 0x1, 0xFF
	.byte 0x83, 0x0, 0xFF, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0xFF, 0x81, 0x0, 0xFF, 0x0
	.byte 0xA, 0x0, 0x1, 0xFF, 0x85, 0x0, 0xFF, 0x0, 0x28, 0x0, 0x1, 0xFF, 0x82
	.byte 0x0, 0xFF, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0xFF, 0x81, 0x0, 0xFF, 0x0, 0xA
	.byte 0x0, 0x1, 0xFF, 0x84, 0x0, 0xFF, 0x0, 0x46, 0x0, 0x1, 0xFF, 0x82, 0x0
	.byte 0xFF, 0x0, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0xFF, 0x84, 0x0, 0xFF, 0x0, 0x46, 0x0
	.byte 0x1, 0xFF, 0x82, 0x0, 0xFF, 0x0, 0x5, 0x0, 0x1, 0xFF, 0x83, 0x0, 0xFF
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0xFF, 0x81, 0x0, 0xFF, 0x0, 0xA, 0x0, 0x1
	.byte 0xFF, 0x84, 0x0, 0xFF, 0x0, 0x46, 0x0, 0x1, 0xFF, 0x83, 0x0, 0xFF, 0x0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x1, 0xFF, 0x80, 0x0, 0xFF, 0x0, 0x1, 0x0, 0x1, 0xFF
	.byte 0x85, 0x0, 0xFF, 0x0, 0x28, 0x0, 0x1, 0xFF, 0x84, 0x0, 0xFF, 0x0, 0x46
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x2, 0xFF, 0xAC, 0x0, 0x1A, 0x0, 0x3A, 0x0, 0x2, 0xFF, 0xBD
	.byte 0x0, 0x0, 0x0, 0x45, 0x0, 0x2, 0xFF, 0x43, 0x0, 0x6, 0x0, 0x50, 0x0
	.byte 0x2, 0xFF, 0xBA, 0x0, 0xB, 0x0, 0x5C, 0x0, 0x2, 0xFF, 0xC5, 0x0, 0x12
	.byte 0x0, 0x6A, 0x0, 0x2, 0xFF, 0xB9, 0x0, 0xB, 0x0, 0x78, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x2, 0xFF, 0xB4, 0x0, 0xA, 0x0, 0x70, 0x0, 0x2, 0xFF, 0x11, 0x0
	.byte 0xD, 0x0, 0x78, 0x0, 0x2, 0xFF, 0x80, 0x0, 0x13, 0x0, 0x81, 0x0, 0x2
	.byte 0xFF, 0xA9, 0x0, 0x19, 0x0, 0x98, 0x0, 0x2, 0xFF, 0xC9, 0x0, 0xB, 0x0
	.byte 0x98, 0x0, 0x2, 0xFF, 0xB6, 0x0, 0x14, 0x0, 0xE0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x2, 0x1, 0x1, 0x0, 0x0, 0x0, 0x14, 0x0, 0x2, 0x1, 0x2, 0x0, 0xB
	.byte 0x0, 0x3C, 0x0, 0x2, 0x1, 0x3, 0x0, 0x11, 0x0, 0x78, 0x0, 0x2, 0x1
	.byte 0x4, 0x0, 0x1A, 0x0, 0x18, 0x0, 0x2, 0x1, 0x5, 0x0, 0x3, 0x0, 0x1C
	.byte 0x0, 0x2, 0x1, 0x6, 0x0, 0x5, 0x0, 0x41, 0x0, 0x2, 0x1, 0x7, 0x0
	.byte 0x0, 0x0, 0x6E, 0x0, 0x2, 0x1, 0x8, 0x0, 0x15, 0x0, 0xB4, 0x0, 0x2
	.byte 0x1, 0x9, 0x0, 0xC, 0x0, 0x1E, 0x0, 0x2, 0x1, 0xA, 0x0, 0x1, 0x0
	.byte 0x46, 0x0, 0x2, 0x1, 0xB, 0x0, 0x11, 0x0, 0x82, 0x0, 0x2, 0x1, 0xC
	.byte 0x0, 0x0, 0x0, 0x2D, 0x0, 0x2, 0x1, 0xD, 0x0, 0xB, 0x0, 0x5A, 0x0
	.byte 0x2, 0x1, 0xE, 0x0, 0x1, 0x0, 0x87, 0x0, 0x2, 0x1, 0xF, 0x0, 0x13
	.byte 0x0, 0x32, 0x0, 0x2, 0x1, 0x10, 0x0, 0x11, 0x0, 0x64, 0x0, 0x2, 0x1
	.byte 0x11, 0x0, 0xD, 0x0, 0x96, 0x0, 0x2, 0x1, 0x13, 0x0, 0xC, 0x0, 0x50
	.byte 0x0, 0x2, 0x1, 0x14, 0x0, 0x7, 0x0, 0x28, 0x0, 0x2, 0x1, 0x15, 0x0
	.byte 0x14, 0x0, 0x50, 0x0, 0x2, 0x1, 0x16, 0x0, 0x4, 0x0, 0x8C, 0x0, 0x2
	.byte 0x1, 0x17, 0x0, 0x10, 0x0, 0x64, 0x0, 0x2, 0x1, 0x18, 0x0, 0x0, 0x0
	.byte 0x34, 0x0, 0x2, 0x1, 0x19, 0x0, 0x6, 0x0, 0x62, 0x0, 0x2, 0x1, 0x1A
	.byte 0x0, 0xC, 0x0, 0x91, 0x0, 0x2, 0x1, 0x1B, 0x0, 0x13, 0x0, 0x2D, 0x0
	.byte 0x2, 0x1, 0x1C, 0x0, 0x15, 0x0, 0x59, 0x0, 0x2, 0x1, 0x1D, 0x0, 0x12
	.byte 0x0, 0x85, 0x0, 0x2, 0x1, 0x1E, 0x0, 0x11, 0x0, 0x30, 0x0, 0x2, 0x1
	.byte 0x1F, 0x0, 0x4, 0x0, 0x3C, 0x0, 0x2, 0x1, 0x20, 0x0, 0xB, 0x0, 0x64
	.byte 0x0, 0x2, 0x1, 0x21, 0x0, 0x11, 0x0, 0x8C, 0x0, 0x2, 0x1, 0x22, 0x0
	.byte 0x9, 0x0, 0x50, 0x0, 0x2, 0x1, 0x23, 0x0, 0x4, 0x0, 0x82, 0x0, 0x2
	.byte 0x1, 0x24, 0x0, 0x0, 0x0, 0xB4, 0x0, 0x2, 0x1, 0x25, 0x0, 0x12, 0x0
	.byte 0x48, 0x0, 0x2, 0x1, 0x26, 0x0, 0x11, 0x0, 0x72, 0x0, 0x2, 0x1, 0x27
	.byte 0x0, 0x0, 0x0, 0x9C, 0x0, 0x2, 0x1, 0x28, 0x0, 0x8, 0x0, 0x3A, 0x0
	.byte 0x2, 0x1, 0x29, 0x0, 0x4, 0x0, 0x66, 0x0, 0x2, 0x1, 0x2A, 0x0, 0x5
	.byte 0x0, 0x9C, 0x0, 0x2, 0x1, 0x2B, 0x0, 0x13, 0x0, 0x24, 0x0, 0x2, 0x1
	.byte 0x2C, 0x0, 0x12, 0x0, 0x4A, 0x0, 0x2, 0x1, 0x2D, 0x0, 0xC, 0x0, 0x7A
	.byte 0x0, 0x2, 0x1, 0x2E, 0x0, 0x11, 0x0, 0x64, 0x0, 0x2, 0x1, 0x2F, 0x0
	.byte 0xB, 0x0, 0x88, 0x0, 0x2, 0x1, 0x30, 0x0, 0xF, 0x0, 0xAC, 0x0, 0x2
	.byte 0x1, 0x31, 0x0, 0x13, 0x0, 0xDC, 0x0, 0x2, 0x1, 0x32, 0x0, 0xB, 0x0
	.byte 0x5A, 0x0, 0x2, 0x1, 0x33, 0x0, 0x6, 0x0, 0x5A, 0x0, 0x2, 0x1, 0x34
	.byte 0x0, 0x11, 0x0, 0x46, 0x0, 0x2, 0x1, 0x35, 0x0, 0x12, 0x0, 0xA0, 0x0
	.byte 0x2, 0x1, 0x36, 0x0, 0x1, 0x0, 0x1C, 0x0, 0x2, 0x1, 0x37, 0x0, 0x2
	.byte 0x0, 0x38, 0x0, 0x2, 0x1, 0x38, 0x0, 0x6, 0x0, 0x71, 0x0, 0x2, 0x1
	.byte 0x39, 0x0, 0x10, 0x0, 0x4D, 0x0, 0x2, 0x1, 0x3A, 0x0, 0x11, 0x0, 0x7B
	.byte 0x0, 0x2, 0x1, 0x3B, 0x0, 0x12, 0x0, 0x9C, 0x0, 0x2, 0x1, 0x3C, 0x0
	.byte 0x5, 0x0, 0x87, 0x0, 0x2, 0x1, 0x3D, 0x0, 0xF, 0x0, 0x31, 0x0, 0x2
	.byte 0x1, 0x3E, 0x0, 0xA, 0x0, 0x58, 0x0, 0x2, 0x1, 0x3F, 0x0, 0x0, 0x0
	.byte 0x7F, 0x0, 0x2, 0x1, 0x40, 0x0, 0x9, 0x0, 0x35, 0x0, 0x2, 0x1, 0x41
	.byte 0x0, 0x2, 0x0, 0x5F, 0x0, 0x2, 0x1, 0x42, 0x0, 0xF, 0x0, 0x94, 0x0
	.byte 0x2, 0x1, 0x43, 0x0, 0x15, 0x0, 0x64, 0x0, 0x2, 0x1, 0x44, 0x0, 0x12
	.byte 0x0, 0x41, 0x0, 0x2, 0x1, 0x45, 0x0, 0x11, 0x0, 0x50, 0x0, 0x2, 0x1
	.byte 0x46, 0x0, 0xF, 0x0, 0xA0, 0x0, 0x2, 0x1, 0x47, 0x0, 0x12, 0x0, 0x25
	.byte 0x0, 0x2, 0x1, 0x48, 0x0, 0x12, 0x0, 0x4D, 0x0, 0x2, 0x1, 0x49, 0x0
	.byte 0x12, 0x0, 0x5A, 0x0, 0x2, 0x1, 0x4A, 0x0, 0x1, 0x0, 0xAA, 0x0, 0x2
	.byte 0x1, 0x4B, 0x0, 0x1, 0x0, 0xAA, 0x0, 0x2, 0x1, 0x4C, 0x0, 0xE, 0x0
	.byte 0x64, 0x0, 0x2, 0x1, 0x4D, 0x0, 0x8, 0x0, 0x78, 0x0, 0x2, 0x1, 0x4E
	.byte 0x0, 0xA, 0x0, 0x8C, 0x0, 0x2, 0x1, 0x4F, 0x0, 0x12, 0x0, 0x82, 0x0
	.byte 0x2, 0x1, 0x50, 0x0, 0x5, 0x0, 0x96, 0x0, 0x2, 0x1, 0x51, 0x0, 0xF
	.byte 0x0, 0xAC, 0x0, 0x2, 0x1, 0x52, 0x0, 0xA, 0x0, 0xBC, 0x0, 0x2, 0x1
	.byte 0x53, 0x0, 0xD, 0x0, 0x4, 0x1, 0x2, 0x1, 0x54, 0x0, 0x0, 0x0, 0x78
	.byte 0x0, 0x2, 0x1, 0x55, 0x0, 0xC, 0x0, 0xDC, 0x0, 0x2, 0x1, 0x56, 0x0
	.byte 0xB, 0x0, 0x63, 0x0, 0x2, 0x1, 0x57, 0x0, 0xC, 0x0, 0x7F, 0x0, 0x2
	.byte 0x1, 0x58, 0x0, 0x11, 0x0, 0x9B, 0x0, 0x2, 0x1, 0x59, 0x0, 0x0, 0x0
	.byte 0x22, 0x0, 0x2, 0x1, 0x5A, 0x0, 0x11, 0x0, 0x50, 0x0, 0x2, 0x1, 0x5B
	.byte 0x0, 0x15, 0x0, 0x6A, 0x0, 0x2, 0x1, 0x5C, 0x0, 0x6, 0x0, 0x45, 0x0
	.byte 0x2, 0x1, 0x5D, 0x0, 0xD, 0x0, 0x6A, 0x0, 0x2, 0x1, 0x5E, 0x0, 0x13
	.byte 0x0, 0x90, 0x0, 0x2, 0x1, 0x5F, 0x0, 0x2, 0x0, 0x46, 0x0, 0x2, 0x1
	.byte 0x60, 0x0, 0x4, 0x0, 0x6E, 0x0, 0x2, 0x1, 0x61, 0x0, 0x6, 0x0, 0x96
	.byte 0x0, 0x2, 0x1, 0x62, 0x0, 0x5, 0x0, 0x3F, 0x0, 0x2, 0x1, 0x63, 0x0
	.byte 0x4, 0x0, 0x5D, 0x0, 0x2, 0x1, 0x64, 0x0, 0x6, 0x0, 0x8C, 0x0, 0x2
	.byte 0x1, 0x65, 0x0, 0xB, 0x0, 0x50, 0x0, 0x2, 0x1, 0x66, 0x0, 0x18, 0x0
	.byte 0x78, 0x0, 0x2, 0x1, 0x67, 0x0, 0x12, 0x0, 0xA0, 0x0, 0x2, 0x1, 0x68
	.byte 0x0, 0xA, 0x0, 0x48, 0x0, 0x2, 0x1, 0x69, 0x0, 0x13, 0x0, 0x67, 0x0
	.byte 0x2, 0x1, 0x6A, 0x0, 0x14, 0x0, 0x90, 0x0, 0x2, 0x1, 0x6B, 0x0, 0x4
	.byte 0x0, 0x32, 0x0, 0x2, 0x1, 0x6C, 0x0, 0x12, 0x0, 0x5F, 0x0, 0x2, 0x1
	.byte 0x6D, 0x0, 0x1, 0x0, 0x8C, 0x0, 0x2, 0x1, 0x6E, 0x0, 0x7, 0x0, 0x50
	.byte 0x0, 0x2, 0x1, 0x6F, 0x0, 0x3, 0x0, 0x7D, 0x0, 0x2, 0x1, 0x70, 0x0
	.byte 0x4, 0x0, 0xAA, 0x0, 0x2, 0x1, 0x71, 0x0, 0x16, 0x0, 0x64, 0x0, 0x2
	.byte 0x1, 0x72, 0x0, 0x18, 0x0, 0x96, 0x0, 0x2, 0x1, 0x73, 0x0, 0x10, 0x0
	.byte 0xC8, 0x0, 0x2, 0x1, 0x74, 0x0, 0xA, 0x0, 0x36, 0x0, 0x2, 0x1, 0x75
	.byte 0x0, 0xB, 0x0, 0x63, 0x0, 0x2, 0x1, 0x76, 0x0, 0x16, 0x0, 0x98, 0x0
	.byte 0x2, 0x1, 0x77, 0x0, 0x0, 0x0, 0x6E, 0x0, 0x2, 0x1, 0x78, 0x0, 0xA
	.byte 0x0, 0x3B, 0x0, 0x2, 0x1, 0x79, 0x0, 0xF, 0x0, 0x59, 0x0, 0x2, 0x1
	.byte 0x7A, 0x0, 0xC, 0x0, 0x8B, 0x0, 0x2, 0x1, 0x7B, 0x0, 0x9, 0x0, 0x34
	.byte 0x0, 0x2, 0x1, 0x7C, 0x0, 0x2, 0x0, 0x50, 0x0, 0x2, 0x1, 0x7D, 0x0
	.byte 0xB, 0x0, 0x86, 0x0, 0x2, 0x1, 0x7E, 0x0, 0x11, 0x0, 0x46, 0x0, 0x2
	.byte 0x1, 0x7F, 0x0, 0x13, 0x0, 0x72, 0x0, 0x2, 0x1, 0x80, 0x0, 0x13, 0x0
	.byte 0xA2, 0x0, 0x2, 0x1, 0x81, 0x0, 0x1A, 0x0, 0x28, 0x0, 0x2, 0x1, 0x82
	.byte 0x0, 0x1A, 0x0, 0x28, 0x0, 0x2, 0x1, 0x83, 0x0, 0x0, 0x0, 0x23, 0x0
	.byte 0x2, 0x1, 0x84, 0x0, 0x1, 0x0, 0x46, 0x0, 0x2, 0x1, 0x85, 0x0, 0x4
	.byte 0x0, 0x73, 0x0, 0x2, 0x1, 0x86, 0x0, 0x7, 0x0, 0x5F, 0x0, 0x2, 0x1
	.byte 0x87, 0x0, 0x8, 0x0, 0x5C, 0x0, 0x2, 0x1, 0x88, 0x0, 0xE, 0x0, 0x91
	.byte 0x0, 0x2, 0x1, 0x89, 0x0, 0x18, 0x0, 0xC6, 0x0, 0x2, 0x1, 0x8A, 0x0
	.byte 0xD, 0x0, 0xF0, 0x0, 0x2, 0x1, 0x8B, 0x0, 0x11, 0x0, 0xFE, 0x0, 0x2
	.byte 0x1, 0x8C, 0x0, 0x9, 0x0, 0x16, 0x1, 0x2, 0x1, 0x8D, 0x0, 0xB, 0x0
	.byte 0x75, 0x0, 0x2, 0x1, 0x8E, 0x0, 0x13, 0x0, 0x7D, 0x0, 0x2, 0x1, 0x8F
	.byte 0x0, 0x1A, 0x0, 0x32, 0x0, 0x2, 0x1, 0x90, 0x0, 0x6, 0x0, 0x42, 0x0
	.byte 0x2, 0x1, 0x91, 0x0, 0x12, 0x0, 0x78, 0x0, 0x2, 0x1, 0x92, 0x0, 0x19
	.byte 0x0, 0x41, 0x0, 0x2, 0x1, 0x93, 0x0, 0x12, 0x0, 0x55, 0x0, 0x2, 0x1
	.byte 0x94, 0x0, 0x13, 0x0, 0x69, 0x0, 0x2, 0x1, 0x95, 0x0, 0x16, 0x0, 0x7D
	.byte 0x0, 0x2, 0x1, 0x96, 0x0, 0x1A, 0x0, 0x8E, 0x0, 0x2, 0x1, 0x97, 0x0
	.byte 0xE, 0x0, 0xBE, 0x0, 0x2, 0x1, 0x98, 0x0, 0xF, 0x0, 0x10, 0x1, 0x2
	.byte 0x1, 0x9A, 0x0, 0x0, 0x0, 0x1E, 0x0, 0x2, 0x1, 0x9B, 0x0, 0x4, 0x0
	.byte 0x32, 0x0, 0x2, 0x1, 0x9C, 0x0, 0x2, 0x0, 0x46, 0x0, 0x2, 0x1, 0x9D
	.byte 0x0, 0x7, 0x0, 0x64, 0x0, 0x2, 0x1, 0x9E, 0x0, 0xF, 0x0, 0x82, 0x0
	.byte 0x2, 0x1, 0x9F, 0x0, 0xC, 0x0, 0xA0, 0x0, 0x2, 0x1, 0xA0, 0x0, 0x19
	.byte 0x0, 0xBE, 0x0, 0x2, 0x1, 0xA1, 0x0, 0x9, 0x0, 0xDC, 0x0, 0x2, 0x1
	.byte 0xA2, 0x0, 0x1A, 0x0, 0x28, 0x0, 0x2, 0x1, 0xA3, 0x0, 0x12, 0x0, 0x50
	.byte 0x0, 0x2, 0x1, 0xA4, 0x0, 0x12, 0x0, 0x55, 0x0, 0x2, 0x1, 0xA5, 0x0
	.byte 0x19, 0x0, 0x87, 0x0, 0x2, 0x1, 0xA6, 0x0, 0x1A, 0x0, 0x32, 0x0, 0x2
	.byte 0x1, 0xA7, 0x0, 0x0, 0x0, 0x93, 0x0, 0x2, 0x1, 0xA8, 0x0, 0x0, 0x0
	.byte 0x4C, 0x0, 0x2, 0x1, 0xA9, 0x0, 0x19, 0x0, 0xBE, 0x0, 0x2, 0x1, 0xAA
	.byte 0x0, 0x1A, 0x0, 0x4F, 0x0, 0x2, 0x1, 0xAB, 0x0, 0x1A, 0x0, 0x4F, 0x0
	.byte 0x2, 0x1, 0xAC, 0x0, 0x1, 0x0, 0x8E, 0x0, 0x2, 0x1, 0xAD, 0x0, 0xC
	.byte 0x0, 0xBD, 0x0, 0x2, 0x1, 0xAE, 0x0, 0x1A, 0x0, 0xD2, 0x0, 0x2, 0x1
	.byte 0xAF, 0x0, 0x1A, 0x0, 0x48, 0x0, 0x2, 0x1, 0xB0, 0x0, 0xA, 0x0, 0x94
	.byte 0x0, 0x2, 0x1, 0xB1, 0x0, 0x1A, 0x0, 0x49, 0x0, 0x2, 0x1, 0xB2, 0x0
	.byte 0x11, 0x0, 0x1E, 0x0, 0x2, 0x1, 0xB3, 0x0, 0x18, 0x0, 0x5A, 0x0, 0x2
	.byte 0x1, 0xB4, 0x0, 0x16, 0x0, 0x8C, 0x0, 0x2, 0x1, 0xB5, 0x0, 0x10, 0x0
	.byte 0x96, 0x0, 0x2, 0x1, 0xB6, 0x0, 0x14, 0x0, 0x18, 0x1, 0x2, 0x1, 0xB7
	.byte 0x0, 0x1A, 0x0, 0x3E, 0x0, 0x2, 0x1, 0xB8, 0x0, 0x1A, 0x0, 0x64, 0x0
	.byte 0x2, 0x1, 0xB9, 0x0, 0x11, 0x0, 0x8B, 0x0, 0x2, 0x1, 0xBA, 0x0, 0x1A
	.byte 0x0, 0x63, 0x0, 0x2, 0x1, 0xBB, 0x0, 0x15, 0x0, 0x55, 0x0, 0x2, 0x1
	.byte 0xBC, 0x0, 0x11, 0x0, 0x5A, 0x0, 0x2, 0x1, 0xBD, 0x0, 0x5, 0x0, 0x5D
	.byte 0x0, 0x2, 0x1, 0xBE, 0x0, 0x1A, 0x0, 0x2D, 0x0, 0x2, 0x1, 0xBF, 0x0
	.byte 0x1A, 0x0, 0x40, 0x0, 0x2, 0x1, 0xC0, 0x0, 0x1A, 0x0, 0x2A, 0x0, 0x2
	.byte 0x1, 0xC1, 0x0, 0x1A, 0x0, 0x57, 0x0, 0x2, 0x1, 0xC2, 0x0, 0x1A, 0x0
	.byte 0x46, 0x0, 0x2, 0x1, 0xC3, 0x0, 0x1A, 0x0, 0xAC, 0x0, 0x2, 0x1, 0xC4
	.byte 0x0, 0x1A, 0x0, 0xC2, 0x0, 0x2, 0x1, 0xC5, 0x0, 0x14, 0x0, 0x9B, 0x0
	.byte 0x2, 0x1, 0xC6, 0x0, 0x11, 0x0, 0x87, 0x0, 0x2, 0x1, 0xC7, 0x0, 0x13
	.byte 0x0, 0xC8, 0x0, 0x2, 0x1, 0xC8, 0x0, 0x3, 0x0, 0x82, 0x0, 0x2, 0x1
	.byte 0xC9, 0x0, 0xB, 0x0, 0xBE, 0x0, 0x2, 0x1, 0xCA, 0x0, 0x15, 0x0, 0x78
	.byte 0x0, 0x2, 0x1, 0xDD, 0x0, 0x11, 0x0, 0x64, 0x0, 0x2, 0x1, 0xDE, 0x0
	.byte 0x11, 0x0, 0xA0, 0x0, 0x2, 0x1, 0xDF, 0x0, 0x11, 0x0, 0xDC, 0x0, 0x2
	.byte 0x1, 0xE0, 0x0, 0x1, 0x0, 0xA0, 0x0, 0x2, 0x1, 0xE1, 0x0, 0x1, 0x0
	.byte 0xDC, 0x0, 0x2, 0x1, 0xE2, 0x0, 0x1, 0x0, 0x18, 0x1, 0x2, 0x1, 0xE3
	.byte 0x0, 0x7, 0x0, 0x82, 0x0, 0x2, 0x1, 0xE4, 0x0, 0x7, 0x0, 0xB4, 0x0
	.byte 0x2, 0x1, 0xE5, 0x0, 0x7, 0x0, 0xE6, 0x0, 0x2, 0x1, 0xE6, 0x0, 0x4
	.byte 0x0, 0x82, 0x0, 0x2, 0x1, 0xE7, 0x0, 0x4, 0x0, 0xB4, 0x0, 0x2, 0x1
	.byte 0xE8, 0x0, 0x4, 0x0, 0xE6, 0x0, 0x2, 0x1, 0xE9, 0x0, 0x12, 0x0, 0x82
	.byte 0x0, 0x2, 0x1, 0xEA, 0x0, 0x12, 0x0, 0xB4, 0x0, 0x2, 0x1, 0xEB, 0x0
	.byte 0x12, 0x0, 0xE6, 0x0, 0x2, 0x1, 0xEC, 0x0, 0xA, 0x0, 0x82, 0x0, 0x2
	.byte 0x1, 0xED, 0x0, 0xA, 0x0, 0xB4, 0x0, 0x2, 0x1, 0xEE, 0x0, 0xA, 0x0
	.byte 0xE6, 0x0, 0x2, 0x1, 0xEF, 0x0, 0x2, 0x0, 0x82, 0x0, 0x2, 0x1, 0xF0
	.byte 0x0, 0x2, 0x0, 0xB4, 0x0, 0x2, 0x1, 0xF1, 0x0, 0x2, 0x0, 0xE6, 0x0
	.byte 0x2, 0x1, 0xF2, 0x0, 0x0, 0x0, 0x82, 0x0, 0x2, 0x1, 0xF3, 0x0, 0x0
	.byte 0x0, 0xB4, 0x0, 0x2, 0x1, 0xF4, 0x0, 0x0, 0x0, 0xE6, 0x0, 0x2, 0x1
	.byte 0xF5, 0x0, 0x13, 0x0, 0x82, 0x0, 0x2, 0x1, 0xF6, 0x0, 0x13, 0x0, 0xB4
	.byte 0x0, 0x2, 0x1, 0xF7, 0x0, 0x13, 0x0, 0xE6, 0x0, 0x2, 0x1, 0xF8, 0x0
	.byte 0x13, 0x0, 0x82, 0x0, 0x2, 0x1, 0xF9, 0x0, 0x13, 0x0, 0xB4, 0x0, 0x2
	.byte 0x1, 0xFA, 0x0, 0x13, 0x0, 0xE6, 0x0, 0x2, 0x1, 0xFB, 0x0, 0x6, 0x0
	.byte 0x82, 0x0, 0x2, 0x1, 0xFC, 0x0, 0x6, 0x0, 0xB4, 0x0, 0x2, 0x1, 0xFD
	.byte 0x0, 0x6, 0x0, 0xE6, 0x0, 0x2, 0x1, 0xFE, 0x0, 0x3, 0x0, 0x82, 0x0
	.byte 0x2, 0x1, 0xFF, 0x0, 0x3, 0x0, 0xB4, 0x0, 0x2, 0x1, 0x0, 0x1, 0x3
	.byte 0x0, 0xE6, 0x0, 0x2, 0x1, 0x1, 0x1, 0x1, 0x0, 0x64, 0x0, 0x2, 0x1
	.byte 0x2, 0x1, 0x1, 0x0, 0x96, 0x0, 0x2, 0x1, 0x3, 0x1, 0x1, 0x0, 0xC8
	.byte 0x0, 0x2, 0x1, 0x4, 0x1, 0x3, 0x0, 0x64, 0x0, 0x2, 0x1, 0x5, 0x1
	.byte 0x3, 0x0, 0x96, 0x0, 0x2, 0x1, 0x6, 0x1, 0x3, 0x0, 0xC8, 0x0, 0x2
	.byte 0x1, 0x7, 0x1, 0x2, 0x0, 0x64, 0x0, 0x2, 0x1, 0x8, 0x1, 0x2, 0x0
	.byte 0x96, 0x0, 0x2, 0x1, 0x9, 0x1, 0x2, 0x0, 0xC8, 0x0, 0x2, 0x1, 0xA
	.byte 0x1, 0x9, 0x0, 0x64, 0x0, 0x2, 0x1, 0xB, 0x1, 0x9, 0x0, 0x96, 0x0
	.byte 0x2, 0x1, 0xC, 0x1, 0x9, 0x0, 0xC8, 0x0, 0x2, 0x1, 0xD, 0x1, 0x4
	.byte 0x0, 0x64, 0x0, 0x2, 0x1, 0xE, 0x1, 0x4, 0x0, 0x96, 0x0, 0x2, 0x1
	.byte 0xF, 0x1, 0x4, 0x0, 0xC8, 0x0, 0x2, 0x1, 0x10, 0x1, 0x2, 0x0, 0x64
	.byte 0x0, 0x2, 0x1, 0x11, 0x1, 0x2, 0x0, 0x96, 0x0, 0x2, 0x1, 0x12, 0x1
	.byte 0x2, 0x0, 0xC8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
word_8048BE0: .hword 0x0
	.balign 4, 0x00
byte_8048BE4: .byte 0x2, 0xFF, 0xAE, 0x0, 0x1A, 0x0, 0x4E, 0x0, 0x2, 0xFF, 0x8A
	.byte 0x0, 0xD, 0x0, 0x7E, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8047D84

	thumb_func_start sub_8048C24
sub_8048C24:
	push {r4-r7,lr}
	ldr r2, off_8048F98 // =dword_8046B98
	mov r1, #0x10
	mul r0, r1
	add r2, r2, r0
	ldr r4, [r2,#0xc]
	ldr r2, [r2,#8]
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk20032c8_Ptr]
	add r2, r2, r0
	mov r0, #0
loc_8048C3A:
	ldrb r3, [r2,#1]
	tst r3, r3
	beq loc_8048C5C
	push {r0-r3}
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	pop {r0-r3}
	beq loc_8048C58
	ldrb r1, [r2]
	cmp r1, #1
	bne loc_8048C58
	ldrh r1, [r2,#2]
	cmp r1, #0x70 
	beq loc_8048C5C
loc_8048C58:
	mov r0, #1
	pop {r4-r7,pc}
loc_8048C5C:
	add r2, #8
	add r0, #1
	cmp r0, r4
	blt loc_8048C3A
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8048C24

	thumb_func_start sub_8048C68
sub_8048C68:
	push {lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_Unk20032c8_Ptr]
	// size
	ldr r1, dword_8048CC8 // =0xe80 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, off_8048CC4 // =byte_8047DA0 
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk20032c8_Ptr]
	ldr r2, dword_8048CC8 // =0xe80 
loc_8048C7C:
	sub r2, #8
	blt locret_8048C96
	ldrb r3, [r0,#1]
	tst r3, r3
	beq loc_8048C90
	push {r0-r3}
	mov r2, #8
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0-r3}
loc_8048C90:
	add r0, #8
	add r1, #8
	b loc_8048C7C
locret_8048C96:
	pop {pc}
	thumb_func_end sub_8048C68

	thumb_func_start sub_8048C98
sub_8048C98:
	push {lr}
	ldr r0, off_8048CC4 // =byte_8047DA0 
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk20032c8_Ptr]
	ldr r2, dword_8048CC8 // =0xe80 
loc_8048CA2:
	sub r2, #8
	blt locret_8048CC2
	ldrb r3, [r0,#1]
	tst r3, r3
	beq loc_8048CBC
	ldrb r3, [r0]
	strb r3, [r1]
	ldrh r3, [r0,#2]
	strh r3, [r1,#2]
	ldrb r3, [r0,#4]
	strb r3, [r1,#4]
	ldrh r3, [r0,#6]
	strh r3, [r1,#6]
loc_8048CBC:
	add r0, #8
	add r1, #8
	b loc_8048CA2
locret_8048CC2:
	pop {pc}
off_8048CC4: .word byte_8047DA0
dword_8048CC8: .word 0xE80
	thumb_func_end sub_8048C98

	thumb_local_start
sub_8048CCC:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	mov r6, r1
	ldr r7, off_8048F98 // =dword_8046B98
	mov r1, #0x10
	mul r0, r1
	add r7, r7, r0
	ldr r5, [r7,#0xc]
	ldr r7, [r7,#8]
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk20032c8_Ptr]
	add r7, r7, r0
	mov r8, r7
	mov r0, #0
loc_8048CEE:
	ldrb r3, [r6]
	tst r3, r3
	beq loc_8048D4E
	mov r1, #0
	mov r7, r8
loc_8048CF8:
	ldrb r4, [r7]
	tst r4, r4
	beq loc_8048D24
	ldrb r3, [r6]
	cmp r3, r4
	bne loc_8048D24
	ldrh r3, [r6,#2]
	ldrh r4, [r7,#2]
	cmp r3, r4
	bne loc_8048D24
	ldrb r3, [r6,#4]
	ldrb r4, [r7,#4]
	cmp r3, r4
	bne loc_8048D24
	ldrb r3, [r6,#1]
	ldrb r4, [r7,#1]
	add r4, r4, r3
	cmp r4, #0xff
	ble loc_8048D20
	mov r4, #0xff
loc_8048D20:
	strb r4, [r7,#1]
	b loc_8048D4E
loc_8048D24:
	add r7, #8
	add r1, #1
	cmp r1, r5
	blt loc_8048CF8
	mov r1, #0
	mov r7, r8
loc_8048D30:
	ldrb r4, [r7]
	tst r4, r4
	bne loc_8048D46
	push {r0,r1,r6,r7}
	mov r0, r6
	mov r1, r7
	mov r2, #8
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0,r1,r6,r7}
	b loc_8048D4E
loc_8048D46:
	add r7, #8
	add r1, #1
	cmp r1, r5
	blt loc_8048D30
loc_8048D4E:
	add r6, #8
	add r0, #1
	cmp r0, r5
	blt loc_8048CEE
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	thumb_func_end sub_8048CCC

	thumb_local_start
sub_8048D60:
	push {r4-r7,lr}
	mov r6, r1
	ldr r7, off_8048F98 // =dword_8046B98
	mov r1, #0x10
	mul r0, r1
	add r7, r7, r0
	ldr r5, [r7,#0xc]
	ldr r7, [r7,#8]
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk20032c8_Ptr]
	add r7, r7, r1
	mov r1, #0
loc_8048D78:
	ldrb r4, [r7]
	tst r4, r4
	beq loc_8048D92
	ldrh r4, [r7,#2]
	cmp r6, r4
	bne loc_8048D92
	ldrb r4, [r7,#1]
	add r4, #1
	cmp r4, #0xff
	ble loc_8048D8E
	mov r4, #0xff
loc_8048D8E:
	strb r4, [r7,#1]
	b locret_8048D9A
loc_8048D92:
	add r7, #8
	add r1, #1
	cmp r1, r5
	blt loc_8048D78
locret_8048D9A:
	pop {r4-r7,pc}
	thumb_func_end sub_8048D60

	thumb_local_start
sub_8048D9C:
	ldr r2, off_8048F98 // =dword_8046B98
	mov r1, #0x10
	mul r0, r1
	add r2, r2, r0
	ldr r0, [r2,#8]
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk20032c8_Ptr]
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_8048D9C

	thumb_local_start
sub_8048DAE:
	push {r4-r7,lr}
	ldr r7, off_8048F98 // =dword_8046B98
	mov r6, #0x10
	mul r0, r6
	add r7, r7, r0
	ldr r5, [r7,#0xc]
	ldr r7, [r7,#8]
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk20032c8_Ptr]
	add r7, r7, r6
	mov r6, #0
loc_8048DC4:
	ldrb r4, [r7]
	tst r4, r4
	beq loc_8048DEC
	cmp r4, r1
	bne loc_8048DEC
	ldrh r4, [r7,#2]
	cmp r4, r2
	bne loc_8048DEC
	ldrb r4, [r7,#4]
	cmp r4, r3
	bne loc_8048DEC
	ldrb r4, [r7,#1]
	cmp r4, #0
	ble loc_8048DEC
	cmp r4, #0xff
	beq loc_8048DE8
	sub r4, #1
	strb r4, [r7,#1]
loc_8048DE8:
	mov r0, #1
	pop {r4-r7,pc}
loc_8048DEC:
	add r7, #8
	add r6, #1
	cmp r6, r5
	blt loc_8048DC4
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8048DAE

	thumb_local_start
sub_8048DF8:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	ldr r7, off_8048F98 // =dword_8046B98
	mov r6, #0x10
	mul r0, r6
	add r7, r7, r0
	ldr r0, [r7]
	ldr r4, [r7,#0xc]
	ldr r7, [r7,#8]
	mov r3, r10
	ldr r3, [r3,#oToolkit_Unk20032c8_Ptr]
	add r7, r7, r3
	cmp r0, #2
	beq loc_8048E24
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
loc_8048E24:
	mov r5, r1
	mov r6, r2
	mov r1, #8
	mul r4, r1
	lsl r4, r4, #1
	// memBlock
	mov r0, r5
	// size
	mov r1, r4
	add r2, r0, r1
	mov r8, r2
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	// memBlock
	mov r0, r6
	// size
	mov r1, r4
	add r2, r0, r1
	mov r9, r2
	bl ZeroFillByWord // (void *memBlock, int size) -> void
loc_8048E46:
	ldrb r0, [r7]
	tst r0, r0
	beq loc_8048EC0
	mov r4, r6
	ldr r3, off_8048F64 // =0x140 
	ldrh r0, [r7,#2]
	ldr r1, dword_8048F58 // =0x1e20 
	add r0, r0, r1
	push {r3}
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r3}
	bne loc_8048E8A
	mov r3, #0
	ldrh r0, [r7,#2]
	ldr r1, dword_8048F5C // =0x2020 
	add r0, r0, r1
	push {r3}
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r3}
	bne loc_8048E8A
	ldrh r0, [r7,#2]
	ldr r1, dword_8048F60 // =0x2220 
	add r0, r0, r1
	push {r3}
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r3}
	bne loc_8048E8A
	mov r4, r5
loc_8048E8A:
	mov r12, r3
	// idx
	ldrh r0, [r7,#2]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r0, [r0,#0x1c]
	add r0, r12
	mov r1, #8
	mul r0, r1
	add r0, r0, r4
	ldrb r1, [r7]
	strb r1, [r0]
	ldrb r1, [r7,#1]
	strb r1, [r0,#1]
	ldrh r1, [r7,#2]
	strh r1, [r0,#2]
	ldrb r1, [r7,#4]
	strb r1, [r0,#4]
	mov r1, #0
	mov r3, r12
	tst r3, r3
	bne loc_8048EB6
	mov r1, #1
loc_8048EB6:
	strb r1, [r0,#5]
	ldrh r1, [r7,#6]
	strh r1, [r0,#6]
	add r7, #8
	b loc_8048E46
loc_8048EC0:
	mov r2, r5
loc_8048EC2:
	ldrb r0, [r5]
	tst r0, r0
	bne loc_8048F00
	mov r4, r5
	add r4, #8
loc_8048ECC:
	ldrb r1, [r4]
	tst r1, r1
	beq loc_8048EF8
	strb r1, [r5]
	ldrb r1, [r4,#1]
	strb r1, [r5,#1]
	ldrh r1, [r4,#2]
	strh r1, [r5,#2]
	ldrb r1, [r4,#4]
	strb r1, [r5,#4]
	ldrb r1, [r4,#5]
	strb r1, [r5,#5]
	ldrh r1, [r4,#6]
	strh r1, [r5,#6]
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4,#1]
	strh r1, [r4,#2]
	strb r1, [r4,#4]
	strb r1, [r4,#5]
	strh r1, [r4,#6]
	b loc_8048F00
loc_8048EF8:
	add r4, #8
	cmp r4, r8
	blt loc_8048ECC
	b loc_8048F06
loc_8048F00:
	add r5, #8
	cmp r5, r8
	blt loc_8048EC2
loc_8048F06:
	mov r3, r6
loc_8048F08:
	ldrb r0, [r6]
	tst r0, r0
	bne loc_8048F46
	mov r4, r6
	add r4, #8
loc_8048F12:
	ldrb r1, [r4]
	tst r1, r1
	beq loc_8048F3E
	strb r1, [r6]
	ldrb r1, [r4,#1]
	strb r1, [r6,#1]
	ldrh r1, [r4,#2]
	strh r1, [r6,#2]
	ldrb r1, [r4,#4]
	strb r1, [r6,#4]
	ldrb r1, [r4,#5]
	strb r1, [r6,#5]
	ldrh r1, [r4,#6]
	strh r1, [r6,#6]
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4,#1]
	strh r1, [r4,#2]
	strb r1, [r4,#4]
	strb r1, [r4,#5]
	strh r1, [r4,#6]
	b loc_8048F46
loc_8048F3E:
	add r4, #8
	cmp r4, r9
	blt loc_8048F12
	b loc_8048F4C
loc_8048F46:
	add r6, #8
	cmp r6, r9
	blt loc_8048F08
loc_8048F4C:
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8048F58: .word 0x1E20
dword_8048F5C: .word 0x2020
dword_8048F60: .word 0x2220
off_8048F64: .word 0x140
	thumb_func_end sub_8048DF8

	thumb_local_start
sub_8048F68:
	push {r0-r2,lr}
	ldr r1, off_8048F84 // =word_8048BE0 
loc_8048F6C:
	ldrh r2, [r1]
	tst r2, r2
	beq loc_8048F7A
	cmp r0, r2
	beq loc_8048F7E
	add r1, #2
	b loc_8048F6C
loc_8048F7A:
	mov r0, #0
	pop {r0-r2,pc}
loc_8048F7E:
	mov r0, #1
	pop {r0-r2,pc}
	.balign 4, 0x00
off_8048F84: .word word_8048BE0
	thumb_func_end sub_8048F68

	thumb_func_start sub_8048F88
sub_8048F88:
	push {r4-r7,lr}
	mov r0, #4
	ldr r1, off_8048F94 // =byte_8048BE4
	bl sub_8048CCC
	pop {r4-r7,pc}
off_8048F94: .word byte_8048BE4
off_8048F98: .word dword_8046B98
	thumb_func_end sub_8048F88

	thumb_func_start sub_8048F9C
sub_8048F9C:
	push {r4-r7,lr}
	mov r4, r0
	ldr r5, off_8049008 // =byte_200A290 
	// memBlock
	mov r0, r5
	// size
	ldr r1, off_8048FC0 // =0x1b0 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r1, r10
	ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
	mov r0, #0x30 
	strb r0, [r1]
	strh r4, [r5,#0x22] // (word_200A2B2 - 0x200a290)
	mov r0, #8
	strh r0, [r5,#0x24] // (word_200A2B4 - 0x200a290)
	mov r0, #0xa
	strh r0, [r5,#0x26] // (word_200A2B6 - 0x200a290)
	pop {r4-r7,pc}
	.byte 0, 0
off_8048FC0: .word 0x1B0
	thumb_func_end sub_8048F9C

	thumb_func_start sub_8048FC4
sub_8048FC4:
	push {r4-r7,lr}
	ldr r5, off_8049008 // =byte_200A290 
	ldrb r0, [r5]
	ldrb r1, [r5,#0x1] // (byte_200A291 - 0x200a290)
	pop {r4-r7,pc}
	.byte 0, 0
	.word 0x1B0
	thumb_func_end sub_8048FC4

	thumb_func_start cb_8048FD4
cb_8048FD4:
	push {r4-r7,lr}
	ldr r5, off_8049008 // =byte_200A290 
	ldr r0, off_8048FF4 // =off_8048FF8 
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_800A7D0 // () -> (zf, int)
	bne locret_8048FF0
	mov r0, #0xda
	mov r1, #2
	bl sub_803C59C
locret_8048FF0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8048FF4: .word off_8048FF8
off_8048FF8: .word sub_804900C+1
	.word sub_8049058+1
	.word sub_8049080+1
	.word sub_804971C+1
off_8049008: .word byte_200A290
	thumb_func_end cb_8048FD4

	thumb_local_start
sub_804900C:
	push {r4-r7,lr}
	bl chatbox_8040818
	ldr r0, off_8049054 // =0x40 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x11
	bl sub_80015FC
	bl sub_8005F40
	bl sub_803BEC0
	bl sub_8049CBC
	bl sub_8049D42
	beq loc_804903E
	ldrh r0, [r5,#0x22]
	tst r0, r0
	beq loc_8049048
loc_804903E:
	mov r0, #0xc
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	b locret_8049050
loc_8049048:
	mov r0, #8
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
locret_8049050:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049054: .word 0x40
	thumb_func_end sub_804900C

	thumb_local_start
sub_8049058:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_804907A
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	bl chatbox_8040818
	ldr r0, off_804907C // =0x40 
	bl sRender_08_setRenderingState
	bl sub_811F758
locret_804907A:
	pop {r4-r7,pc}
off_804907C: .word 0x40
	thumb_func_end sub_8049058

	thumb_local_start
sub_8049080:
	push {r4-r7,lr}
	ldr r0, off_8049094 // =off_8049098 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_803CB78
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049094: .word off_8049098
off_8049098: .word sub_8049104+1
	.word sub_8049158+1
	.word sub_8049164+1
	.word sub_804918A+1
	.word sub_80491C4+1
	.word sub_80491E6+1
	.word sub_80491FC+1
	.word sub_804921E+1
	.word sub_8049272+1
	.word sub_8049290+1
	.word sub_8049360+1
	.word sub_80493BC+1
	.word sub_80493FE+1
	.word sub_8049416+1
	.word sub_804946E+1
	.word sub_80494DE+1
	.word sub_804952C+1
	.word sub_80494CA+1
	.word sub_80494D6+1
	.word sub_8049582+1
	.word sub_804959C+1
	.word sub_80495B4+1
	.word sub_80495CE+1
	.word sub_80495EC+1
	.word sub_8049606+1
	.word sub_804961C+1
	.word sub_8049636+1
	thumb_func_end sub_8049080

	thumb_local_start
sub_8049104:
	push {r4-r7,lr}
	ldr r0, dword_8049154 // =0x1f40 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x12
	bl sub_80015FC
	bl sub_8046664 // () -> void
	bl copyData_8049AAC
	bl chatbox_8040818
	mov r0, #2
	bl sub_803BE30
	bl sub_8049D70
	mov r0, #0xf0
	mov r1, #0x30 
	mov r2, #0x80
	lsl r2, r2, #1
	mov r3, #0x90
	add r0, r0, r5
	add r1, r1, r5
	add r2, r2, r5
	add r3, r3, r5
	bl sub_803C1A8
	bl sub_803C320
	bl sub_803C26A
	mov r0, #4
	strb r0, [r5,#1]
	pop {r4-r7,pc}
dword_8049154: .word 0x1F40
	thumb_func_end sub_8049104

	thumb_local_start
sub_8049158:
	push {r4-r7,lr}
	mov r0, #8
	strb r0, [r5,#1]
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_8049158

	thumb_local_start
sub_8049164:
	push {r4-r7,lr}
	bl sub_813D648
	beq loc_8049180
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x13
	bl sub_803BB2C
	mov r0, #0x10
	strb r0, [r5,#1]
	b loc_8049184
loc_8049180:
	mov r0, #0xc
	strb r0, [r5,#1]
loc_8049184:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_8049164

	thumb_local_start
sub_804918A:
	push {r4-r7,lr}
	bl sub_8146588
	mov r0, r5
	add r0, #0xf0
	bl sub_814695C
	bl sub_8049D7C
	mov r1, r0
	mov r0, #0x80
	lsl r0, r0, #1
	add r0, r0, r5
	bl sub_81469BC
	bl sub_8132664
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0xa
	bl sub_803BB2C
	mov r0, #0x18
	strb r0, [r5,#1]
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_804918A

	thumb_local_start
sub_80491C4:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_80491E0
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_80491E0
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strb r0, [r5,#1]
loc_80491E0:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_80491C4

	thumb_local_start
sub_80491E6:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_80491F6
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
loc_80491F6:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_80491E6

	thumb_local_start
sub_80491FC:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8049218
	bl sub_803C320
	mov r0, #0x1c
	strb r0, [r5,#1]
	mov r0, #0x1e
	bl sub_803BB7C
	mov r0, #0
	bl sub_803BB90
loc_8049218:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_80491FC

	thumb_local_start
sub_804921E:
	push {r4-r7,lr}
	bl sub_803BB80
	beq loc_804926C
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	tst r0, r1
	beq loc_8049244
	bl sub_803CAF8
	mov r1, #8
	tst r0, r1
	bne loc_804926C
	mov r0, #0x83
	bl sub_803C28A
	b loc_804926C
loc_8049244:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_804926C
	bl sub_803BB94
	beq loc_804926C
	bl sub_803C558
	mov r0, #0x1e
	bl sub_803BB90
	bl sub_813D638
	beq loc_804926C
	mov r0, #0xb
	bl sub_803BB2C
	mov r0, #0x20 
	strb r0, [r5,#1]
loc_804926C:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_804921E

	thumb_local_start
sub_8049272:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_804928A
	mov r0, #0
	strb r0, [r5,#0xe]
	strb r0, [r5,#0xb]
	mov r0, #4
	strb r0, [r5,#0xc]
	mov r0, #0x24 
	strb r0, [r5,#1]
loc_804928A:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_8049272

	thumb_local_start
sub_8049290:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_803CB00
	mov r0, #2
	bl sub_803CB18
	bne loc_80492D4
	bl sub_813D638
	bne loc_80492C2
	bl sub_803C320
	mov r0, #0x1c
	strb r0, [r5,#1]
	mov r0, #0x1e
	bl sub_803BB7C
	mov r0, #0
	bl sub_803BB90
	mov r0, #0xe
	bl sub_803BB2C
	b loc_80492D4
loc_80492C2:
	mov r0, #0x7f
	bl sub_803A5F4
	beq loc_80492D4
	ldr r1, off_80492E0 // =dword_80492E4 
	lsl r0, r0, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
loc_80492D4:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	.byte 0, 0
off_80492E0: .word dword_80492E4
dword_80492E4: .word 0x0
	.word sub_80492F4+1
	.word sub_804930C+1
	.word sub_804930C+1
	thumb_func_end sub_8049290

	thumb_local_start
sub_80492F4:
	push {r4-r7,lr}
	mov r0, #2
	bl sub_803CB18
	bne loc_8049308
	mov r0, #0x83
	bl sub_803C28A
	mov r0, #0x5c 
	strb r0, [r5,#1]
loc_8049308:
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_80492F4

	thumb_local_start
sub_804930C:
	push {r4-r7,lr}
	bl sub_813D638
	mov r2, r0
	ldrb r0, [r5,#0xe]
	ldrb r1, [r5,#0xb]
	add r0, r0, r1
	cmp r0, r2
	bge loc_804934C
	bl sub_803C440
	mov r2, r1
	push {r0,r1}
	ldr r1, off_8049358 // =byte_202AB00 
	ldr r3, off_804935C // =byte_202AF00 
	bl sub_803C150
	pop {r2,r3}
	ldr r0, off_8049358 // =byte_202AB00 
	ldr r1, off_804935C // =byte_202AF00 
	bl sub_803C2AA
	mov r0, #0xc
	bl sub_803BB2C
	mov r0, #0x28 
	strb r0, [r5,#1]
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #1
	pop {r4-r7,pc}
loc_804934C:
	mov r0, #0x69 
	bl sound_play // () -> void
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049358: .word byte_202AB00
off_804935C: .word byte_202AF00
	thumb_func_end sub_804930C

	thumb_local_start
sub_8049360:
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_80493B2
	bl chatbox_8045F4C
	cmp r0, #0
	bne loc_80493A6
	bl sub_813D638
	mov r2, r0
	ldrb r0, [r5,#0xe]
	ldrb r1, [r5,#0xb]
	add r0, r0, r1
	cmp r0, r2
	bge loc_80493A6
	push {r0}
	bl sub_813D5C8
	pop {r0}
	strb r0, [r5,#0x16]
	mov r0, #4
	bl sub_803CB00
	mov r0, #0x10
	lsl r0, r0, #4
	bl sub_803CB00
	mov r0, #0xd
	bl sub_803BB2C
	mov r0, #0x2c 
	strb r0, [r5,#1]
	b loc_80493B2
loc_80493A6:
	mov r0, #0xb
	bl sub_803BB2C
	mov r0, #0x30 
	strb r0, [r5,#1]
	b loc_80493B2
loc_80493B2:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_8049360

	thumb_local_start
sub_80493BC:
	push {r4-r7,lr}
	mov r0, #0x40 
	bl sub_803CB18
	bne loc_80493F4
	mov r0, #8
	bl sub_803CB18
	bne loc_80493EE
	bl sub_803C330
	beq loc_80493E0
	bl sub_803C2A0
	mov r0, #0x20 
	bl sub_803CB00
	b loc_80493EE
loc_80493E0:
	mov r0, #0x10
	bl sub_803CB18
	beq loc_80493F4
	mov r0, #0x44 
	strb r0, [r5,#1]
	b loc_80493F4
loc_80493EE:
	mov r0, #0x3c 
	strb r0, [r5,#1]
	b loc_80493F4
loc_80493F4:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_80493BC

	thumb_local_start
sub_80493FE:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_804940C
	mov r0, #0x24 
	strb r0, [r5,#1]
loc_804940C:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_80493FE

	thumb_local_start
sub_8049416:
	push {r4-r7,lr}
	bl sub_8049680
	beq loc_8049432
	bl sub_814656C
	tst r0, r0
	bne loc_8049464
	mov r0, #0xf
	bl sub_803BB2C
	mov r0, #0x38 
	strb r0, [r5,#1]
	b loc_8049464
loc_8049432:
	mov r0, #8
	bl sub_803CB18
	bne loc_804944A
	bl sub_803C330
	beq loc_8049450
	bl sub_803C2A0
	mov r0, #0x20 
	bl sub_803CB00
loc_804944A:
	mov r0, #0x3c 
	strb r0, [r5,#1]
	b loc_8049464
loc_8049450:
	mov r0, #0x10
	bl sub_803CB18
	beq loc_8049464
	bl sub_8132648
	bl sub_8148D24
	mov r0, #0x44 
	strb r0, [r5,#1]
loc_8049464:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_8049416

	thumb_local_start
sub_804946E:
	push {r4-r7,lr}
	bl sub_80496B4
	beq loc_80494C0
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_80494C0
	bl sub_8146588
	mov r0, r5
	add r0, #0xf0
	bl sub_814695C
	bl sub_8049D7C
	mov r1, r0
	mov r0, #0x80
	lsl r0, r0, #1
	add r0, r0, r5
	bl sub_81469BC
	bl sub_8132664
	bl sub_81465BC
	tst r0, r0
	bne loc_80494B6
	bl sub_803C320
	mov r0, #0x13
	bl sub_803BB2C
	mov r0, #0x10
	strb r0, [r5,#1]
	b loc_80494C0
loc_80494B6:
	mov r0, #0xa
	bl sub_803BB2C
	mov r0, #0x18
	strb r0, [r5,#1]
loc_80494C0:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_804946E

	thumb_local_start
sub_80494CA:
	push {r4-r7,lr}
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_80494CA

	thumb_local_start
sub_80494D6:
	push {r4-r7,lr}
	bl sub_81291D8
	pop {r4-r7,pc}
	thumb_func_end sub_80494D6

	thumb_local_start
sub_80494DE:
	push {r4-r7,lr}
	mov r0, #0x10
	bl sub_803CB18
	bne loc_8049516
	bl sub_813D60C
	bne loc_8049522
	mov r0, #0x83
	bl sound_play // () -> void
	mov r4, #0xf
	mov r0, #0x80
	bl sub_803CB18
	bne loc_804950A
	mov r4, #0x10
	mov r0, #0x20 
	bl sub_803CB18
	bne loc_804950A
	mov r4, #0x11
loc_804950A:
	mov r0, r4
	bl sub_803BB2C
	mov r0, #0x40 
	strb r0, [r5,#1]
	b loc_8049522
loc_8049516:
	mov r0, #0x10
	lsl r0, r0, #4
	bl sub_803CB0C
	mov r0, #0x44 
	strb r0, [r5,#1]
loc_8049522:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_80494DE

	thumb_local_start
sub_804952C:
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_8049578
	bl sub_8146588
	mov r0, r5
	add r0, #0xf0
	bl sub_814695C
	bl sub_8049D7C
	mov r1, r0
	mov r0, #0x80
	lsl r0, r0, #1
	add r0, r0, r5
	bl sub_81469BC
	bl sub_8132664
	bl sub_81465BC
	tst r0, r0
	bne loc_804956E
	bl sub_803C320
	mov r0, #0x13
	bl sub_803BB2C
	mov r0, #0x10
	strb r0, [r5,#1]
	b loc_8049578
loc_804956E:
	mov r0, #0xa
	bl sub_803BB2C
	mov r0, #0x18
	strb r0, [r5,#1]
loc_8049578:
	bl sub_803A104
	bl sub_8049BC0
	pop {r4-r7,pc}
	thumb_func_end sub_804952C

	thumb_local_start
sub_8049582:
	push {r4-r7,lr}
	bl sub_8049704
	beq loc_8049596
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x50 
	strb r0, [r5,#1]
loc_8049596:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_8049582

	thumb_local_start
sub_804959C:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_80495AE
	bl copyMemory_8001850
	bl sub_803CCC0
	pop {r4-r7,pc}
loc_80495AE:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_804959C

	thumb_local_start
sub_80495B4:
	push {r4-r7,lr}
	bl sub_80496B4
	beq loc_80495C8
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x58 
	strb r0, [r5,#1]
loc_80495C8:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_80495B4

	thumb_local_start
sub_80495CE:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_80495E2
	bl copyMemory_8001850
	ldr r0, off_80495E8 // =sub_8039570+1 
	bl sub_803CB8C
	pop {r4-r7,pc}
loc_80495E2:
	bl sub_803A1B0
	pop {r4-r7,pc}
off_80495E8: .word sub_8039570+1
	thumb_func_end sub_80495CE

	thumb_local_start
sub_80495EC:
	push {r4-r7,lr}
	bl sub_80496B4
	beq loc_8049600
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x60 
	strb r0, [r5,#1]
loc_8049600:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_80495EC

	thumb_local_start
sub_8049606:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8049616
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
loc_8049616:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_8049606

	thumb_local_start
sub_804961C:
	push {r4-r7,lr}
	bl sub_80496B4
	beq loc_8049630
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x68 
	strb r0, [r5,#1]
loc_8049630:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_804961C

	thumb_local_start
sub_8049636:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8049646
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
loc_8049646:
	bl sub_803A1B0
	pop {r4-r7,pc}
	thumb_func_end sub_8049636

	thumb_local_start
sub_804964C:
	push {r4-r7,lr}
	bl sub_803C620
	mov r4, r0
	tst r1, r1
	bne loc_804966E
	tst r0, r0
	beq loc_804966E
	bl sub_813D978
	ldr r3, off_8049678 // =dword_804967C
	ldrb r0, [r3,r4]
	strb r0, [r5,#1]
	bl sub_8147F98
	mov r0, #1
	pop {r4-r7,pc}
loc_804966E:
	bl sub_8147F98
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049678: .word dword_804967C
dword_804967C: .word 0x544C00
	thumb_func_end sub_804964C

	thumb_local_start
sub_8049680:
	push {r4-r7,lr}
	bl sub_803C620
	mov r4, r0
	tst r1, r1
	bne loc_80496AC
	tst r0, r0
	beq loc_80496AC
	bl sub_813D978
	ldr r3, off_80496E8 // =dword_80496EC 
	lsl r4, r4, #3
	add r3, r3, r4
	ldr r0, [r3]
	strb r0, [r5,#1]
	ldr r0, [r3,#4]
	mov lr, pc
	bx r0
	bl sub_8148224
	mov r0, #1
	pop {r4-r7,pc}
loc_80496AC:
	bl sub_8148224
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8049680

	thumb_local_start
sub_80496B4:
	push {r4-r7,lr}
	bl sub_803C620
	mov r4, r0
	tst r1, r1
	bne loc_80496DE
	cmp r0, #1
	beq loc_80496CE
	bl sub_813D60C
	bne loc_80496DE
	mov r0, #1
	pop {r4-r7,pc}
loc_80496CE:
	ldr r3, off_80496E8 // =dword_80496EC 
	lsl r4, r4, #3
	add r3, r3, r4
	ldr r0, [r3]
	strb r0, [r5,#1]
	ldr r0, [r3,#4]
	mov lr, pc
	bx r0
loc_80496DE:
	bl sub_8148224
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80496E8: .word dword_80496EC
dword_80496EC: .word 0x0
	.word sub_803C34E+1
	.word 0x4C
	.word sub_813D750+1
	.word 0x54
	.word sub_803C34E+1
	thumb_func_end sub_80496B4

	thumb_local_start
sub_8049704:
	push {r4-r7,lr}
	bl sub_803C620
	bl sub_813D60C
	bne loc_8049714
	mov r0, #1
	pop {r4-r7,pc}
loc_8049714:
	bl sub_8148224
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8049704

	thumb_local_start
sub_804971C:
	push {r4-r7,lr}
	ldr r0, off_804972C // =off_8049730 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804972C: .word off_8049730
off_8049730: .word sub_8049770+1
	.word sub_80497D0+1
	.word sub_80497EE+1
	.word sub_8049808+1
	.word sub_8049844+1
	.word sub_804986E+1
	.word sub_8049888+1
	.word sub_80498AA+1
	.word sub_80498D4+1
	.word sub_80498E4+1
	.word sub_80498F8+1
	.word sub_8049934+1
	.word sub_804996A+1
	.word sub_8049984+1
	.word sub_80499AE+1
	.word sub_80499CE+1
	thumb_func_end sub_804971C

	thumb_local_start
sub_8049770:
	push {r4-r7,lr}
	ldr r0, dword_80497CC // =0x1f40 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x13
	bl sub_80015FC
	bl sub_8046664 // () -> void
	bl copyData_8049A18
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#8]
	strb r0, [r5,#0x12]
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1d]
	strb r0, [r5,#0x13]
	bl sub_803BEC0
	bl sub_8049CBC
	bl sub_803A740
	bl sub_803A752
	bl sub_803A764
	mov r0, #0
	bl sub_803BE30
	mov r0, #1
	bl sub_803BE30
	bl chatbox_8040818
	mov r0, #4
	strb r0, [r5,#1]
	pop {r4-r7,pc}
dword_80497CC: .word 0x1F40
	thumb_func_end sub_8049770

	thumb_local_start
sub_80497D0:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_80497E8
	mov r0, #0x14
	bl sub_803BB2C
	mov r0, #0xf
	bl sub_803BB7C
	mov r0, #8
	strb r0, [r5,#1]
loc_80497E8:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_80497D0

	thumb_local_start
sub_80497EE:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8049802
	bl sub_803BB80
	beq loc_8049802
	mov r0, #0xc
	strb r0, [r5,#1]
loc_8049802:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_80497EE

	thumb_local_start
sub_8049808:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_803AFC2
	beq loc_804981C
	ldr r1, off_8049828 // =dword_804982C 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_804981C:
	bl sub_803A7B8
	mov r0, #0
	bl sub_803BC7C
	pop {r4-r7,pc}
off_8049828: .word dword_804982C
dword_804982C: .word 0x0
	.word sub_803AA24+1
	.word sub_803AA40+1
	.word sub_803ABF4+1
	.word sub_803AB6C+1
	.word sub_803AB94+1
	thumb_func_end sub_8049808

	thumb_local_start
sub_8049844:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8049868
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_804985C
	mov r0, #0xc
	strb r0, [r5,#1]
	b loc_8049868
loc_804985C:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strb r0, [r5,#1]
loc_8049868:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_8049844

	thumb_local_start
sub_804986E:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8049882
	bl sub_8049CBC
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
loc_8049882:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_804986E

	thumb_local_start
sub_8049888:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_80498A4
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_80498A0
	mov r0, #0xc
	strb r0, [r5,#1]
	b loc_80498A4
loc_80498A0:
	mov r0, #0x20 
	strb r0, [r5,#1]
loc_80498A4:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_8049888

	thumb_local_start
sub_80498AA:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_80498CE
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #0x10
	mov r1, #0x30 
	bl sub_803C0BE
	mov r0, #0x10
	mov r1, #0x30 
	bl sub_803C132
	strb r0, [r5,#0x10]
	mov r0, #0xc
	strb r0, [r5,#1]
loc_80498CE:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_80498AA

	thumb_local_start
sub_80498D4:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x24 
	strb r0, [r5,#1]
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_80498D4

	thumb_local_start
sub_80498E4:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_80498F2
	mov r0, #0x28 
	strb r0, [r5,#1]
loc_80498F2:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_80498E4

	thumb_local_start
sub_80498F8:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_803AFC2
	beq loc_804990C
	ldr r1, off_8049918 // =dword_804991C 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_804990C:
	bl sub_803A7EC
	mov r0, #0
	bl sub_803BC7C
	pop {r4-r7,pc}
off_8049918: .word dword_804991C
dword_804991C: .word 0x0
	.word sub_803AD04+1
	.word sub_803AD20+1
	.word sub_803AED8+1
	.word sub_803AE50+1
	.word sub_803AE78+1
	thumb_func_end sub_80498F8

	thumb_local_start
sub_8049934:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8049964
	ldrb r0, [r5,#3]
	cmp r0, #1
	beq loc_8049960
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_8049952
	mov r0, #0x28 
	strb r0, [r5,#1]
	b loc_8049964
loc_8049952:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x30 
	strb r0, [r5,#1]
	b loc_8049964
loc_8049960:
	mov r0, #0xc
	strb r0, [r5,#1]
loc_8049964:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_8049934

	thumb_local_start
sub_804996A:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_804997E
	bl sub_8049CBC
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
loc_804997E:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_804996A

	thumb_local_start
sub_8049984:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_80499A8
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_804999C
	mov r0, #0x28 
	strb r0, [r5,#1]
	b loc_80499A8
loc_804999C:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x3c 
	strb r0, [r5,#1]
loc_80499A8:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_8049984

	thumb_local_start
sub_80499AE:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_80499C8
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #0x11
	mov r1, #0x90
	bl sub_803C0BE
	mov r0, #0x28 
	strb r0, [r5,#1]
loc_80499C8:
	bl sub_803A820
	pop {r4-r7,pc}
	thumb_func_end sub_80499AE

	thumb_local_start
sub_80499CE:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8049A0E
	mov r4, #0
	bl sub_8049D42
	beq loc_80499E0
	mov r4, #1
loc_80499E0:
	strb r4, [r5,#4]
	bl sub_8049D70
	bl sub_8049D4A
	bl sub_8049D3A
	bl sub_803F79E
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	ldr r0, off_8049A14 // =0x40 
	bl sRender_08_setRenderingState
	bl chatbox_8040818
	bl sub_811F758
	b locret_8049A12
loc_8049A0E:
	bl sub_803A820
locret_8049A12:
	pop {r4-r7,pc}
off_8049A14: .word 0x40
	thumb_func_end sub_80499CE

	thumb_local_start
copyData_8049A18:
	push {r4-r7,lr}
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	// initRefs
	ldr r0, off_8049A50 // =initRefs_8049A54 
	bl decompAndCopyData // (u32 *initRefs) -> void
	mov r3, r10
	ldr r3, [r3,#oToolkit_RenderInfoPtr]
	ldrh r0, [r3,#0x16]
	sub r0, #4
	strh r0, [r3,#0x16]
	ldrh r0, [r3,#0x14]
	sub r0, #2
	strh r0, [r3,#0x14]
	ldrh r0, [r3,#0x1a]
	sub r0, #2
	strh r0, [r3,#0x1a]
	ldrh r0, [r3,#0x18]
	sub r0, #4
	strh r0, [r3,#0x18]
	mov r0, #3
	bl sub_803B91C
	pop {r4-r7,pc}
off_8049A50: .word initRefs_8049A54
initRefs_8049A54: .word comp_87E50D4 + 1<<31
	.word 0x6004000
	.word unk_2027A00
	.word comp_87E5550 + 1<<31
	.word 0x0
	.word unk_2028200
	.word comp_87E56A0 + 1<<31
	.word 0x600D600
	.word unk_2027A00
	.word dword_87F25B4
	.word unk_3001980
	.word 0xA0
	.word byte_86A4D40
	.word 0x6010020
	.word 0x240
	.word dword_86A4A40
	.word 0x6010300
	.word 0x100
	.word dword_86A5500
	.word byte_3001550
	.word 0x20
	.word 0x0
	thumb_func_end copyData_8049A18

	thumb_local_start
copyData_8049AAC:
	push {r4-r7,lr}
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	// initRefs
	ldr r0, off_8049AD4 // =byte_8049AD8
	bl decompAndCopyData // (u32 *initRefs) -> void
	mov r0, #4
	bl sub_803B91C
	mov r0, #5
	bl sub_803B91C
	mov r0, #0
	strb r0, [r5,#0x18]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049AD4: .word byte_8049AD8
byte_8049AD8: .byte 0xBC, 0x57, 0x7E, 0x88, 0x0, 0x40, 0x0, 0x6
	.word unk_2027A00
	.word compSpriteWhiteDot_84E0C4C + 1<<31
	.word 0x6000020
	.word unk_2027A00
	.word comp_87E6840 + 1<<31
	.word 0x0
	.word unk_2028200
	.word comp_87E674C + 1<<31
	.word 0x0
	.word unk_2028A00
	.word compSpriteWhiteDot_84E0C4C + 1<<31
	.word 0x0
	.word unk_2029200
	.word compSpriteWhiteDot_84E0C4C + 1<<31
	.word 0x0
	.word unk_2029A00
	.word compSpriteWhiteDot_84E0C4C + 1<<31
	.word 0x0
	.word unk_2029E00
	.word compSpriteWhiteDot_84E0C4C + 1<<31
	.word 0x0
	.word unk_202A200
	.word compSpriteWhiteDot_84E0C4C + 1<<31
	.word 0x0
	.word unk_202A600
	.word dword_87F28DC
	.word unk_30019C0
	.word 0x140
	.word spriteWhiteDot
	.word unk_3001980
	.word 0x40
	.word byte_86A5180
	.word 0x6010020
	.word 0x180
	.word comp_87E6924 + 1<<31
	.word 0x6010280
	.word unk_2027A00
	.word dword_86A5500
	.word byte_3001550
	.word 0x20
	.word dword_87F28DC
	.word byte_30015D0
	.word 0x120
	.word byte_86C14A0
	.word 0x6016600
	.word 0x400
	.word byte_86C1B20
	.word 0x6016A00
	.word 0x400
	.word comp_86DBD94 + 1<<31
	.word 0x0
	.word eDecomp202BA00
	.word off_86DC3F8
	.word byte_3001570
	.word 0x20
	.word 0x0
	thumb_func_end copyData_8049AAC

	thumb_func_start sub_8049BC0
sub_8049BC0:
	push {r4-r7,lr}
	mov r4, #0
loc_8049BC4:
	mov r0, #1
	lsl r0, r4
	bl sub_803C316
	beq loc_8049C42
	bl sub_813D638
	cmp r4, r0
	bge loc_8049C42
	mov r0, r4
	bl sub_803C440
	mov r0, r1
	bl sub_8146738
	mov r6, #0xf
	and r6, r0
	lsr r7, r0, #4
	ldr r0, off_8049C80 // =off_8049C84 
	lsl r1, r6, #2
	ldr r0, [r0,r1]
	ldr r1, off_8049C6C // =off_8049C70 
	lsl r2, r4, #2
	ldr r1, [r1,r2]
	mov r2, #0x20 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r3, off_8049C64 // =dword_8049C68 
	ldrb r3, [r3,r4]
	lsl r3, r3, #0xc
	ldr r2, off_8049C54 // =byte_8049C58
	ldrb r2, [r2,r6]
	ldr r1, dword_8049C50 // =0xb30 
	add r1, r1, r2
	orr r1, r3
	lsl r2, r4, #5
	ldr r0, dword_8049C4C // =0x40110020 
	add r0, r0, r2
	mov r2, #2
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr r0, off_8049CB4 // =eTextScript202BA04
	lsl r1, r7, #9
	add r0, r0, r1
	ldr r1, dword_8049CB8 // =0x6016e00 
	lsl r2, r4, #9
	add r1, r1, r2
	mov r2, #0x20 
	lsl r2, r2, #4
	bl sub_8000AC8
	mov r0, #0xa6
	mov r1, #0x13
	lsl r2, r4, #5
	add r1, r1, r2
	mov r3, #0x37 
	lsl r3, r3, #4
	lsl r2, r4, #4
	add r3, r3, r2
	mov r2, #1
	bl sub_8132A50
loc_8049C42:
	add r4, #1
	cmp r4, #4
	blt loc_8049BC4
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8049C4C: .word 0x40110020
dword_8049C50: .word 0xB30
off_8049C54: .word byte_8049C58
byte_8049C58: .byte 0x0, 0x4, 0x8, 0xC, 0x10, 0x14, 0x24, 0x28, 0x2C, 0x30, 0x34
	.byte 0x1C
off_8049C64: .word dword_8049C68
dword_8049C68: .word 0xC0B080F
off_8049C6C: .word off_8049C70
off_8049C70: .word byte_3001730
	.word byte_3001650
	.word byte_30016B0
	.word byte_30016D0
off_8049C80: .word off_8049C84
off_8049C84: .word byte_86C0B20
	.word byte_86C0B60
	.word byte_86C0BA0
	.word byte_86C0BE0
	.word byte_86C0C20
	.word byte_86C0C60
	.word byte_86C18E0
	.word byte_86C1920
	.word byte_86C1960
	.word byte_86C19A0
	.word byte_86C19E0
	.word byte_86C1A60
off_8049CB4: .word eTextScript202BA04
dword_8049CB8: .word 0x6016E00
	thumb_func_end sub_8049BC0

	thumb_local_start
sub_8049CBC:
	push {r4-r7,lr}
	ldr r7, off_8049CF4 // =word_2001800 
	mov r0, #8
	add r0, r0, r7
	mov r1, r5
	add r1, #0x30 
	mov r2, #0x20 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	mov r0, #0x28 
	add r0, r0, r7
	mov r1, r5
	add r1, #0x90
	mov r2, #0x20 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	mov r0, #0x10
	mov r1, #0x30 
	bl sub_803C132
	strb r0, [r5,#0x10]
	mov r0, #0x11
	mov r1, #0x90
	bl sub_803C132
	strb r0, [r5,#0x11]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049CF4: .word word_2001800
	thumb_func_end sub_8049CBC

	thumb_func_start sub_8049CF8
sub_8049CF8:
	push {r4-r7,lr}
	ldr r5, off_8049D94 // =word_2001800 
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x48 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, r5
	add r0, #8
	mov r1, #0x20 
	mov r2, #0xe5
	mov r3, #0xe5
	lsl r3, r3, #8
	orr r2, r3
	bl HalfwordFill
	mov r0, r5
	add r0, #8
	mov r1, #0xe6
	strb r1, [r0,#0x10] // (byte_2001818 - 0x2001808)
	mov r0, r5
	add r0, #0x28 
	mov r1, #0x20 
	mov r2, #0xe5
	mov r3, #0xe5
	lsl r3, r3, #8
	orr r2, r3
	bl HalfwordFill
	mov r0, r5
	add r0, #0x28 
	mov r1, #0xe6
	strb r1, [r0,#0x14] // (byte_200183C - 0x2001828)
	pop {r4-r7,pc}
	thumb_func_end sub_8049CF8

	thumb_local_start
sub_8049D3A:
	ldr r0, off_8049D94 // =word_2001800 
	mov r1, #1
	strb r1, [r0,#0x2] // (byte_2001802 - 0x2001800)
	mov pc, lr
	thumb_func_end sub_8049D3A

	thumb_func_start sub_8049D42
sub_8049D42:
	ldr r0, off_8049D94 // =word_2001800 
	ldrb r0, [r0,#0x2] // (byte_2001802 - 0x2001800)
	tst r0, r0
	mov pc, lr
	thumb_func_end sub_8049D42

	thumb_local_start
sub_8049D4A:
	push {r4-r7,lr}
	ldr r0, off_8049D6C // =byte_200A290 
	add r0, #0x70 
	ldr r1, off_8049D94 // =word_2001800 
	add r1, #8
	mov r2, #0x20 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	ldr r0, off_8049D6C // =byte_200A290 
	add r0, #0xd0
	ldr r1, off_8049D94 // =word_2001800 
	add r1, #0x28 
	mov r2, #0x20 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049D6C: .word byte_200A290
	thumb_func_end sub_8049D4A

	thumb_local_start
sub_8049D70:
	push {r4-r7,lr}
	bl GetRNG2 // () -> int
	ldr r1, off_8049D94 // =word_2001800 
	strh r0, [r1]
	pop {r4-r7,pc}
	thumb_func_end sub_8049D70

	thumb_func_start sub_8049D7C
sub_8049D7C:
	ldr r1, off_8049D94 // =word_2001800 
	ldrh r0, [r1]
	mov pc, lr
	thumb_func_end sub_8049D7C

	thumb_func_start sub_8049D82
sub_8049D82:
	push {r4-r7,lr}
	ldr r3, off_8049D94 // =word_2001800 
	mov r0, #8
	mov r1, #0x28 
	mov r2, #0
	add r0, r0, r3
	add r1, r1, r3
	add r2, r2, r3
	pop {r4-r7,pc}
off_8049D94: .word word_2001800
	thumb_func_end sub_8049D82

	thumb_func_start sub_8049D98
sub_8049D98:
	push {r4-r7,lr}
	bl sub_803BEC0
	pop {r4-r7,pc}
	thumb_func_end sub_8049D98

	thumb_func_start sub_8049DA0
sub_8049DA0:
	push {r4-r7,lr}
	mov r2, r1
	ldr r1, off_8049DBC // =unk_2001808 
	ldr r3, off_8049DC0 // =unk_2001828 
	push {r2,r3}
	mov r2, #8
	bl sub_803C1BC
	pop {r0,r1}
	mov r2, #0xa
	bl sub_803C1BC
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049DBC: .word unk_2001808
off_8049DC0: .word unk_2001828
	thumb_func_end sub_8049DA0

	thumb_func_start sub_8049DC4
sub_8049DC4:
	push {r4-r7,lr}
	push {r2,r3}
	mov r2, #8
	mov r3, #0x20 
	bl sub_803C168
	pop {r0,r1}
	mov r2, #0xa
	mov r3, #0x20 
	bl sub_803C168
	pop {r4-r7,pc}
	thumb_func_end sub_8049DC4

	thumb_func_start sub_8049DDC
sub_8049DDC:
	push {r4-r7,lr}
	mov r4, r0
	ldr r5, off_8049E24 // =byte_200A290 
	// memBlock
	mov r0, r5
	// size
	ldr r1, off_8049E00 // =0x1b0 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r1, r10
	ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
	mov r0, #0x4c 
	strb r0, [r1]
	strh r4, [r5,#0x22] // (word_200A2B2 - 0x200a290)
	mov r0, #8
	strh r0, [r5,#0x24] // (word_200A2B4 - 0x200a290)
	mov r0, #1
	strh r0, [r5,#0x26] // (word_200A2B6 - 0x200a290)
	pop {r4-r7,pc}
	.byte 0, 0
off_8049E00: .word 0x1B0
	thumb_func_end sub_8049DDC

	thumb_func_start cb_8049E04
cb_8049E04:
	push {r4-r7,lr}
	ldr r5, off_8049E24 // =byte_200A290 
	ldr r0, off_8049E14 // =off_8049E18 
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
off_8049E14: .word off_8049E18
off_8049E18: .word sub_8049E28+1
	.word sub_8049E5C+1
	.word sub_8049E84+1
off_8049E24: .word byte_200A290
	thumb_func_end cb_8049E04

	thumb_local_start
sub_8049E28:
	push {r4-r7,lr}
	bl chatbox_8040818
	ldr r0, off_8049E58 // =0x40 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x11
	bl sub_80015FC
	bl sub_8005F40
	bl sub_803BEC0
	bl sub_804A14C
	mov r0, #8
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	pop {r4-r7,pc}
off_8049E58: .word 0x40
	thumb_func_end sub_8049E28

	thumb_local_start
sub_8049E5C:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8049E7E
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	bl chatbox_8040818
	ldr r0, off_8049E80 // =0x40 
	bl sRender_08_setRenderingState
	bl sub_8123408
locret_8049E7E:
	pop {r4-r7,pc}
off_8049E80: .word 0x40
	thumb_func_end sub_8049E5C

	thumb_local_start
sub_8049E84:
	push {r4-r7,lr}
	ldr r0, off_8049E94 // =off_8049E98 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049E94: .word off_8049E98
off_8049E98: .word sub_8049EBC+1
	.word sub_8049F32+1
	.word sub_8049F8A+1
	.word sub_8049FA4+1
	.word sub_8049FE0+1
	.word sub_804A00A+1
	.word sub_804A024+1
	.word sub_804A04E+1
	.word sub_804A078+1
	thumb_func_end sub_8049E84

	thumb_local_start
sub_8049EBC:
	push {r4-r7,lr}
	ldr r0, dword_8049F1C // =0x1f40 
	bl sRender_08_setRenderingState
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x13
	bl sub_80015FC
	bl sub_8046664 // () -> void
	bl copyData_804A0AC
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#8]
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1d]
	strb r0, [r5,#0x13]
	mov r0, #0
	strb r0, [r5,#0x12]
	bl sub_803BEC0
	bl sub_804A14C
	bl sub_803A740
	bl sub_803A752
	bl sub_8049F20
	mov r0, #0
	bl sub_803BE30
	mov r0, #1
	bl sub_803BE30
	bl chatbox_8040818
	mov r0, #4
	strb r0, [r5,#1]
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8049F1C: .word 0x1F40
	thumb_func_end sub_8049EBC

	thumb_local_start
sub_8049F20:
	push {r4-r7,lr}
	mov r4, #0x29 
loc_8049F24:
	mov r0, r4
	bl sub_803B674
	add r4, #1
	cmp r4, #0x2c 
	ble loc_8049F24
	pop {r4-r7,pc}
	thumb_func_end sub_8049F20

	thumb_local_start
sub_8049F32:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8049F4A
	mov r0, #0x14
	bl sub_803BB2C
	mov r0, #0xf
	bl sub_803BB7C
	mov r0, #8
	strb r0, [r5,#1]
loc_8049F4A:
	bl sub_8049F70
	pop {r4-r7,pc}
	thumb_func_end sub_8049F32

	thumb_local_start
sub_8049F50:
	push {r4-r7,lr}
	bl sub_803BA64
	mov r0, #0
	bl sub_803BAE2
	mov r0, #0xa
	bl sub_803B522
	mov r0, #0x28 
	bl sub_803B674
	mov r0, #1
	bl sub_803A8B4
	pop {r4-r7,pc}
	thumb_func_end sub_8049F50

	thumb_local_start
sub_8049F70:
	push {r4-r7,lr}
	bl sub_803BA64
	mov r0, #0xa
	bl sub_803B522
	mov r0, #0x28 
	bl sub_803B674
	mov r0, #1
	bl sub_803A8B4
	pop {r4-r7,pc}
	thumb_func_end sub_8049F70

	thumb_local_start
sub_8049F8A:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8049F9E
	bl sub_803BB80
	beq loc_8049F9E
	mov r0, #0xc
	strb r0, [r5,#1]
loc_8049F9E:
	bl sub_8049F70
	pop {r4-r7,pc}
	thumb_func_end sub_8049F8A

	thumb_local_start
sub_8049FA4:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_803AFC2
	beq loc_8049FB8
	ldr r1, off_8049FC4 // =dword_8049FC8 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_8049FB8:
	bl sub_8049F50
	bl sub_803BC7C
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8049FC4: .word dword_8049FC8
dword_8049FC8: .word 0x0
	.word sub_803AA24+1
	.word sub_803AA40+1
	.word sub_803ABF4+1
	.word sub_803AB6C+1
	.word sub_803AB94+1
	thumb_func_end sub_8049FA4

	thumb_local_start
sub_8049FE0:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_804A004
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_8049FF8
	mov r0, #0xc
	strb r0, [r5,#1]
	b loc_804A004
loc_8049FF8:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strb r0, [r5,#1]
loc_804A004:
	bl sub_8049F70
	pop {r4-r7,pc}
	thumb_func_end sub_8049FE0

	thumb_local_start
sub_804A00A:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_804A01E
	bl sub_804A14C
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
loc_804A01E:
	bl sub_8049F70
	pop {r4-r7,pc}
	thumb_func_end sub_804A00A

	thumb_local_start
sub_804A024:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_804A048
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_804A03C
	mov r0, #0xc
	strb r0, [r5,#1]
	b loc_804A048
loc_804A03C:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x20 
	strb r0, [r5,#1]
loc_804A048:
	bl sub_8049F70
	pop {r4-r7,pc}
	thumb_func_end sub_804A024

	thumb_local_start
sub_804A04E:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_804A072
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #0x10
	mov r1, #0x30 
	bl sub_803C0BE
	mov r0, #0x10
	mov r1, #0x30 
	bl sub_803C132
	strb r0, [r5,#0x10]
	mov r0, #0xc
	strb r0, [r5,#1]
loc_804A072:
	bl sub_8049F70
	pop {r4-r7,pc}
	thumb_func_end sub_804A04E

	thumb_local_start
sub_804A078:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_804A0A2
	ldrh r0, [r5,#0x22]
	bl sub_804A230
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	ldr r0, off_804A0A8 // =0x40 
	bl sRender_08_setRenderingState
	bl chatbox_8040818
	bl sub_8123408
	b locret_804A0A6
loc_804A0A2:
	bl sub_8049F70
locret_804A0A6:
	pop {r4-r7,pc}
off_804A0A8: .word 0x40
	thumb_func_end sub_804A078

	thumb_local_start
copyData_804A0AC:
	push {r4-r7,lr}
	bl zeroFillVRAM
	bl ZeroFillGFX30025c0
	bl copyMemory_8001850
	// initRefs
	ldr r0, off_804A0E4 // =byte_804A0E8
	bl decompAndCopyData // (u32 *initRefs) -> void
	mov r3, r10
	ldr r3, [r3,#oToolkit_RenderInfoPtr]
	ldrh r0, [r3,#0x16]
	sub r0, #4
	strh r0, [r3,#0x16]
	ldrh r0, [r3,#0x14]
	sub r0, #2
	strh r0, [r3,#0x14]
	ldrh r0, [r3,#0x1a]
	sub r0, #2
	strh r0, [r3,#0x1a]
	ldrh r0, [r3,#0x18]
	sub r0, #4
	strh r0, [r3,#0x18]
	mov r0, #3
	bl sub_803B91C
	pop {r4-r7,pc}
off_804A0E4: .word byte_804A0E8
byte_804A0E8: .byte 0xD4, 0x50, 0x7E, 0x88, 0x0, 0x40, 0x0, 0x6
	.word unk_2027A00
	.word comp_87E5550 + 1<<31
	.word 0x0
	.word unk_2028200
	.word comp_87F24FC + 1<<31
	.word 0x0
	.word unk_2028200
	.word comp_87E56A0 + 1<<31
	.word 0x600D600
	.word unk_2027A00
	.word dword_87F25B4
	.word unk_3001980
	.word 0xA0
	.word byte_86A4D40
	.word 0x6010020
	.word 0x240
	.word dword_86A4A40
	.word 0x6010300
	.word 0x100
	.word dword_86A5500
	.word byte_3001550
	.word 0x20
	.word 0x0
	thumb_func_end copyData_804A0AC

	thumb_local_start
sub_804A14C:
	push {r4-r7,lr}
	ldr r7, off_804A170 // =unk_2001850 
	ldr r1, off_804A174 // =byte_804A178 
	ldrh r0, [r5,#0x22]
	ldrb r0, [r1,r0]
	add r0, r0, r7
	mov r1, r5
	add r1, #0x30 
	mov r2, #0x20 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	mov r0, #0x10
	mov r1, #0x30 
	bl sub_803C132
	strb r0, [r5,#0x10]
	pop {r4-r7,pc}
	.byte 0, 0
off_804A170: .word unk_2001850
off_804A174: .word byte_804A178
byte_804A178: .byte 0x0, 0x20
	thumb_func_end sub_804A14C

	thumb_func_start sub_804A17A
sub_804A17A:
	push {r4-r7,lr}
	ldr r5, off_804A260 // =unk_2001850 
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x60 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, r5
	add r0, #0
	mov r1, #0x20 
	mov r2, #0xe5
	mov r3, #0xe5
	lsl r3, r3, #8
	orr r2, r3
	bl HalfwordFill
	mov r0, #0
	mov r1, r5
	add r1, #0
	bl sub_804A1FC
	mov r0, r5
	add r0, #0
	mov r1, #0xe6
	strb r1, [r0,#0x10] // (byte_2001860 - 0x2001850)
	mov r0, r5
	add r0, #0x20 
	mov r1, #0x20 
	mov r2, #0xe5
	mov r3, #0xe5
	lsl r3, r3, #8
	orr r2, r3
	bl HalfwordFill
	mov r0, #1
	mov r1, r5
	add r1, #0x20 
	bl sub_804A1FC
	mov r0, r5
	add r0, #0x20 
	mov r1, #0xe6
	strb r1, [r0,#0x10] // (byte_2001880 - 0x2001870)
	pop {r4-r7,pc}
	thumb_func_end sub_804A17A

	thumb_func_start sub_804A1D0
sub_804A1D0:
	push {r4-r7,lr}
	mov r7, r0
	ldr r5, off_804A260 // =unk_2001850 
	mov r0, r5
	add r0, #0x40 
	mov r1, #0x20 
	mov r2, #0xe5
	mov r3, #0xe5
	lsl r3, r3, #8
	orr r2, r3
	bl HalfwordFill
	mov r0, r7
	mov r1, r5
	add r1, #0x40 
	bl sub_804A1FC
	mov r0, r5
	add r0, #0x40 
	mov r1, #0xe6
	strb r1, [r0,#0x10] // (byte_20018A0 - 0x2001890)
	pop {r4-r7,pc}
	thumb_func_end sub_804A1D0

	thumb_local_start
sub_804A1FC:
	push {r4-r7,lr}
	ldr r4, off_804A22C // =TextScript86CF4AC
	lsl r0, r0, #1
	ldrh r0, [r4,r0]
	add r4, r4, r0
loc_804A206:
	ldrb r0, [r4]
	cmp r0, #0xe4
	blt loc_804A214
	beq loc_804A21A
	cmp r0, #0xe6
	beq locret_804A228
	b loc_804A224
loc_804A214:
	strb r0, [r1]
	add r4, #1
	b loc_804A224
loc_804A21A:
	strb r0, [r1]
	ldrb r0, [r4,#1]
	strb r0, [r1,#1]
	add r4, #2
	b loc_804A224
loc_804A224:
	add r1, #2
	b loc_804A206
locret_804A228:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804A22C: .word TextScript86CF4AC
	thumb_func_end sub_804A1FC

	thumb_local_start
sub_804A230:
	push {r4-r7,lr}
	ldr r1, off_804A258 // =dword_804A25C 
	ldrb r1, [r1,r0]
	ldr r0, off_804A248 // =byte_200A290 
	add r0, #0x70 
	ldr r2, off_804A260 // =unk_2001850 
	add r1, r1, r2
	mov r2, #0x20 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804A248: .word byte_200A290
	thumb_func_end sub_804A230

	thumb_func_start sub_804A24C
sub_804A24C:
	push {r4-r7,lr}
	ldr r1, off_804A258 // =dword_804A25C 
	ldrb r1, [r1,r0]
	ldr r0, off_804A260 // =unk_2001850 
	add r0, r0, r1
	pop {r4-r7,pc}
off_804A258: .word dword_804A25C
dword_804A25C: .word 0x402000
off_804A260: .word unk_2001850
byte_804A264: .byte 0xB0, 0xC3, 0xB1, 0xC3, 0xB2, 0xC3, 0xB3, 0xC3, 0xB4
	.byte 0xC3, 0xB5, 0xC3, 0xB6, 0xC3, 0xB7, 0xC3, 0xB8, 0xC3
	.byte 0xB9, 0xC3, 0xBA, 0xC3, 0xBB, 0xC3, 0xBC, 0xC3, 0xBD
	.byte 0xC3, 0xBE, 0xC3, 0xBF, 0xC3, 0xC0, 0xC3, 0xC1, 0xC3
	.byte 0xC2, 0xC3, 0xC3, 0xC3, 0xC4, 0xC3, 0xC5, 0xC3, 0xC6
	.byte 0xC3, 0xC7, 0xC3, 0xC8, 0xC3, 0xC9, 0xC3, 0xCA, 0xC3
	.byte 0xCB, 0xC3
byte_804A29C: .byte 0x48, 0xC2, 0x44, 0xC2, 0x40, 0xC2, 0xFF, 0xFF
byte_804A2A4: .byte 0x50, 0xC2, 0x4F, 0xC2, 0x4E, 0xC2, 0xFF, 0xFF
dword_804A2AC: .word 0xFF060606
byte_804A2B0: .byte 0x16, 0x0, 0x0, 0x0, 0x16, 0x1, 0x1, 0x0, 0x16, 0x2, 0x2, 0x0, 0x4, 0x3
	.byte 0x0, 0x2, 0x4, 0x4, 0x1, 0x2, 0x4, 0x5, 0x2, 0x2, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_804A24C

	thumb_func_start sub_804A2CC
sub_804A2CC:
	push {r5,lr}
	push {r0}
	bl sub_804A2E8
	pop {r0}
	ldr r5, off_804A300 // =eS200AC80 
	str r0, [r5,#0x30] // (dword_200ACB0 - 0x200ac80)
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrh r0, [r1,#oGameState_MapGroup]
	strh r0, [r1,#oGameState_LastMapGroup]
	bl sub_8046664 // () -> void
	pop {r5,pc}
	thumb_func_end sub_804A2CC

	thumb_func_start sub_804A2E8
sub_804A2E8:
	push {r5,lr}
	// memBlock
	ldr r0, off_804A300 // =eS200AC80 
	// size
	mov r1, #0x58 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_SubmenuPtr]
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r5,pc}
	.byte 0, 0
off_804A300: .word eS200AC80
	thumb_func_end sub_804A2E8

	thumb_func_start ChipTraderControl
ChipTraderControl:
	push {r4-r7,lr}
	mov r0, r8
	mov r1, r9
	mov r2, r12
	push {r0-r2}
	ldr r5, off_804A35C // =sSubmenu 
	ldr r0, off_804A338 // =off_804A33C 
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl sub_804AFB8
	bl sub_804AFE4
	bl GetRNG2 // () -> int
	pop {r0-r2}
	mov r8, r0
	mov r9, r1
	mov r12, r2
	pop {r4-r7,pc}
off_804A338: .word off_804A33C
off_804A33C: .word sub_804A360+1
	.word sub_804A3FC+1
	.word sub_804A460+1
	.word sub_804A4D4+1
	.word sub_804A460+1
	.word sub_804A514+1
	.word sub_804A54C+1
	.word eS200AC80
off_804A35C: .word sSubmenu
	thumb_func_end ChipTraderControl

	thumb_local_start
sub_804A360:
	push {lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	bl sub_8046664 // () -> void
	// memBlock
	ldr r0, off_804A3F0 // =word_202A020 
	// size
	ldr r1, off_804A3F4 // =0x3c0 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_8120A88
	ldr r0, off_804A3EC // =unk_202A3E0 
	mov r1, #1
	bl sub_811FE7C
	strh r0, [r5,#0x28]
	mov r1, r0
	ldr r0, off_804A3EC // =unk_202A3E0 
	mov r2, #5
	mov r3, #4
	bl sub_8120018
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	mov r0, #5
	strb r0, [r1,#2]
	mov r0, #4
	strb r0, [r1,#3]
	bl sub_804A61C
	mov r0, #0
	ldr r1, off_804A3EC // =unk_202A3E0 
	bl sub_8120CC8
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,#0x12]
	strb r0, [r5,#0x13]
	strb r0, [r5,#0x15]
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_804A3E8 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	bl sub_804AF84
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
dword_804A3E8: .word 0x1F40
off_804A3EC: .word unk_202A3E0
off_804A3F0: .word word_202A020
off_804A3F4: .word 0x3C0
	.word eS200AC80
	thumb_func_end sub_804A360

	thumb_local_start
sub_804A3FC:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_804A436
	mov r0, #0
	strb r0, [r5,#3]
	bl sub_804AAA4
	bne loc_804A44C
	bl sub_804AAD0
	bne loc_804A44C
	mov r0, #0x10
	bl isJoystickIRQActive
	beq loc_804A42C
	mov r0, #0x9c
	bl sound_play // () -> void
	mov r0, #0x18
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	b loc_804A44C
loc_804A42C:
	mov r0, #4
	strb r0, [r5,#3]
	bl sub_804AB10
	beq loc_804A436
loc_804A436:
	ldrh r0, [r5,#0x28]
	tst r0, r0
	beq loc_804A44C
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #7
	mov r2, #0
	mov r3, #0xa
	bl sub_811F7F8
loc_804A44C:
	bl sub_804A8F4
	bl menuCopyTiles_804A7C0
	bl sub_804A9A0
	bl sub_804AA58
	mov r0, #0
	pop {pc}
	thumb_func_end sub_804A3FC

	thumb_local_start
sub_804A460:
	push {r4-r7,lr}
	ldr r7, off_804A4D0 // =eS200AC80 
	bl sub_804A8F4
	bl menuCopyTiles_804A7C0
	bl sub_804A9A0
	bl sub_804AA58
	bl IsPaletteFadeActive // () -> zf
	beq loc_804A4CC
	bl sub_8046664 // () -> void
	bl sub_809E122
	bl sub_811F728
	bl sub_8120AB8
	ldrb r0, [r5]
	cmp r0, #0x10
	beq loc_804A4AA
	mov r0, #0
	str r0, [r7,#0x30] // (dword_200ACB0 - 0x200ac80)
	strh r0, [r7,#0x4] // (word_200AC84 - 0x200ac80)
	strh r0, [r7,#0x6] // (word_200AC86 - 0x200ac80)
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_800399A
	bl sub_8003AEA
	b loc_804A4CC
loc_804A4AA:
	bl sub_804A970
	bl sub_804BD00
	strh r0, [r7,#0x4] // (word_200AC84 - 0x200ac80)
	strh r1, [r7,#0x6] // (word_200AC86 - 0x200ac80)
	mov r2, #1
	bl sub_8021AEE
	bl sub_803F798
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r1, #0xc
	strb r1, [r0,#oGameState_Unk_16]
	mov r0, #1
	pop {r4-r7,pc}
loc_804A4CC:
	mov r0, #0
	pop {r4-r7,pc}
off_804A4D0: .word eS200AC80
	thumb_func_end sub_804A460

	thumb_local_start
sub_804A4D4:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_804A50A
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_804A50A
	bl chatbox_8045F4C
	tst r0, r0
	beq loc_804A4FE
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#3]
	ldrh r0, [r5,#0x1e]
	bl sub_804AF20
	b loc_804A50A
loc_804A4FE:
	mov r0, #0x10
	strb r0, [r5]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_804A50A:
	bl sub_804AA58
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_804A4D4

	thumb_local_start
sub_804A514:
	push {lr}
	bl sub_804AAD0
	bne loc_804A53C
	bl sub_804AE04
	bne loc_804A534
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #7
	mov r2, #1
	ldrh r3, [r5,#0x34]
	bl sub_811FA22
	strh r0, [r5,#0x34]
loc_804A534:
	bl sub_804AE50
	bl sub_804AE68
loc_804A53C:
	bl sub_804AA58
	bl sub_804A8F4
	bl menuCopyTiles_804A7C0
	mov r0, #0
	pop {pc}
	thumb_func_end sub_804A514

	thumb_local_start
sub_804A54C:
	push {lr}
	ldr r0, off_804A560 // =off_804A564 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_804AA58
	pop {pc}
	.byte 0, 0
off_804A560: .word off_804A564
off_804A564: .word sub_804A574+1
	.word sub_804A5B4+1
	.word sub_804A5D4+1
	.word sub_804A5EC+1
	thumb_func_end sub_804A54C

	thumb_local_start
sub_804A574:
	push {lr}
	ldr r0, off_804A5AC // =unk_202A3E0 
	ldrh r2, [r5,#0x2a]
	ldrh r1, [r5,#0x2e]
	add r2, r2, r1
	mov r1, #0x20 
	mul r1, r2
	add r0, r0, r1
	ldr r2, [r0,#0x1c]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x17
	mov r1, #0x7f
	and r1, r2
	mov r2, #0
	mov r3, #0
	bl sub_811980C
	ldr r0, dword_804A5B0 // =0xffffffd8 
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#0x18]
	pop {pc}
	.balign 4, 0x00
off_804A5AC: .word unk_202A3E0
dword_804A5B0: .word 0xFFFFFFD8
	thumb_func_end sub_804A574

	thumb_local_start
sub_804A5B4:
	push {lr}
	mov r1, #0x18
	ldrsh r0, [r5,r1]
	add r0, #0x10
	cmp r0, #0x28 
	ble loc_804A5C6
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0x28 
loc_804A5C6:
	strh r0, [r5,#0x18]
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_804A5B4

	thumb_local_start
sub_804A5D4:
	push {lr}
	mov r0, #0xe2
	bl isJoystickIRQActive
	beq locret_804A5E8
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0x9e
	bl sound_play // () -> void
locret_804A5E8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_804A5D4

	thumb_local_start
sub_804A5EC:
	push {lr}
	mov r1, #0x18
	ldrsh r0, [r5,r1]
	sub r0, #0x10
	ldr r1, dword_804A618 // =0xffffffd8 
	cmp r0, r1
	bge loc_804A60C
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_811980C
	mov r0, #4
	strb r0, [r5]
	ldr r0, dword_804A618 // =0xffffffd8 
loc_804A60C:
	strh r0, [r5,#0x18]
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	pop {pc}
dword_804A618: .word 0xFFFFFFD8
	thumb_func_end sub_804A5EC

	thumb_local_start
sub_804A61C:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r5, [sp]
	ldr r4, off_804A6DC // =unk_20096E0 
	mov r6, #0
	mov r7, #0
	ldr r5, off_804A698 // =off_804A69C 
loc_804A62A:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_804A63C:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_804A63C
	cmp r7, #0x40 
	blt loc_804A62A
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_804A6DC // =unk_20096E0 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_804A6E0 // =initRefs_804A6E4 
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r7, [sp]
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_804A7A8 // =unk_2020A20 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r1, #0x1e
	mov r0, #0
	// j
	sub r0, r0, r1
	// i
	mov r1, #2
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_804A79C // =unk_201CA20 
	mov r4, #0x3c 
	mov r5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	// j
	mov r0, #0x13
	// i
	mov r1, #2
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_804A7B4 // =unk_2035C8C 
	mov r4, #0xb
	mov r5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	add sp, sp, #4
	pop {r4-r7,pc}
off_804A698: .word off_804A69C
off_804A69C: .word dword_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001AC0
	.word 0x20
	.word comp_86C9AA4 + 1<<31
	.word 0x2
	.word unk_3001A80
	.word eDecompBuffer2013A00
	.word byte_872CF94
	.word 0x2
	.word unk_3001AE0
	.word 0x20
off_804A6DC: .word unk_20096E0
off_804A6E0: .word initRefs_804A6E4
initRefs_804A6E4: .word comp_86C8054 + 1<<31
	.word 0x6000020
	.word 0x2013A00
	.word dword_86B7AE0
	.word 0x6004000
	.word 0x2800
	.word comp_86C9BD4 + 1<<31
	.word 0x6014800
	.word 0x2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word 0x2013A00
	.word comp_86C9CE4 + 1<<31
	.word 0x60149C0
	.word 0x2013A00
	.word byte_86C9D6C
	.word 0x30016D0
	.word 0x20
	.word comp_86C7764 + 1<<31
	.word 0x2034B6C
	.word 0x2013A00
	.word comp_86C96C0 + 1<<31
	.word 0x6006800
	.word 0x2013A00
	.word comp_86C9274 + 1<<31
	.word 0x6008020
	.word 0x2013A00
	.word comp_86C9668 + 1<<31
	.word 0x3001A20
	.word 0x2013A00
	.word comp_86CE9E8 + 1<<31
	.word 0x203486C
	.word 0x2013A00
	.word comp_86C980C + 1<<31
	.word 0x6006B80
	.word 0x2013A00
	.word comp_86DA1B8 + 1<<31
	.word 0x2028A20
	.word 0x2013A00
	.word comp_86C7980 + 1<<31
	.word 0x2024A20
	.word 0x2013A00
	.word comp_86C73D8 + 1<<31
	.word 0x2026A20
	.word 0x2013A00
	.word comp_86CE8AC + 1<<31
off_804A79C: .word unk_201CA20
	.word eDecompBuffer2013A00
	.word comp_86C5190 + 1<<31
off_804A7A8: .word unk_2020A20
	.word eDecompBuffer2013A00
	.word comp_86C526C + 1<<31
off_804A7B4: .word unk_2035C8C
	.word eDecompBuffer2013A00
	.word 0x0
	thumb_func_end sub_804A61C

	thumb_local_start
menuCopyTiles_804A7C0:
	push {r4-r7,lr}
	mov r7, r5
	ldrh r0, [r7,#0x2e]
	ldr r1, off_804A8BC // =unk_202A3E0 
	ldr r2, off_804A8C0 // =eTileRefs20345FC 
	mov r3, #0xb
	mov r5, #7
	bl sub_81200EC
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x21 
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A8C0 // =eTileRefs20345FC 
	mov r4, #8
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh r0, [r7,#0x2e]
	ldr r1, off_804A8BC // =unk_202A3E0 
	ldr r2, off_804A8C4 // =eTileRefs20346DC 
	ldr r3, off_804A8C8 // =byte_804A264 
	ldr r4, dword_804A8CC // =0x6007600 
	mov r5, #7
	bl sub_8120390
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x1f
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A8C4 // =eTileRefs20346DC 
	mov r4, #2
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh r0, [r7,#0x2e]
	ldr r1, off_804A8BC // =unk_202A3E0 
	ldr r2, off_804A8D0 // =eTileRefs2034714 
	mov r3, #0xa
	lsl r3, r3, #0xc
	ldr r4, off_804A8D4 // =0x35c 
	orr r3, r4
	ldr r4, dword_804A8D8 // =0x6006b80 
	mov r5, #7
	bl sub_81203E4
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x29 
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A8D0 // =eTileRefs2034714 
	mov r4, #2
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh r0, [r7,#0x2e]
	ldr r1, off_804A8BC // =unk_202A3E0 
	ldr r2, off_804A8DC // =eTileRefs203474C 
	mov r3, #0xb
	lsl r3, r3, #0xc
	ldr r4, dword_804A8E0 // =0x216 
	orr r3, r4
	mov r5, #7
	bl sub_8120458
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x2b 
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A8DC // =eTileRefs203474C 
	mov r4, #1
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh r0, [r7,#0x2e]
	ldr r1, off_804A8BC // =unk_202A3E0 
	ldr r2, off_804A8E4 // =eTileRefs2034768 
	mov r3, #9
	lsl r3, r3, #0xc
	ldr r4, dword_804A8E8 // =0x34f 
	orr r3, r4
	mov r5, #7
	bl sub_81204C4
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x2c 
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A8E4 // =eTileRefs2034768 
	mov r4, #2
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh r0, [r7,#0x2e]
	ldr r1, off_804A8BC // =unk_202A3E0 
	ldr r2, off_804A8EC // =eTileRefs20347A0 
	mov r3, #0xb
	lsl r3, r3, #0xc
	ldr r4, off_804A8F0 // =0x200 
	orr r3, r4
	mov r5, #7
	bl sub_8120618
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x2e 
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A8EC // =eTileRefs20347A0 
	mov r4, #2
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804A8BC: .word unk_202A3E0
off_804A8C0: .word eTileRefs20345FC
off_804A8C4: .word eTileRefs20346DC
off_804A8C8: .word byte_804A264
dword_804A8CC: .word 0x6007600
off_804A8D0: .word eTileRefs2034714
off_804A8D4: .word 0x35C
dword_804A8D8: .word 0x6006B80
off_804A8DC: .word eTileRefs203474C
dword_804A8E0: .word 0x216
off_804A8E4: .word eTileRefs2034768
dword_804A8E8: .word 0x34F
off_804A8EC: .word eTileRefs20347A0
off_804A8F0: .word 0x200
	thumb_func_end menuCopyTiles_804A7C0

	thumb_local_start
sub_804A8F4:
	push {r4-r7,lr}
	mov r7, r5
	ldrh r0, [r7,#0x24]
	ldr r1, off_804A95C // =word_202A020 
	ldr r2, off_804A960 // =unk_2034458 
	mov r3, #0xb
	ldr r5, off_804A96C // =eS200AC80 
	ldr r5, [r5,#0x30] // (dword_200ACB0 - 0x200ac80)
	cmp r5, #7
	ble loc_804A90A
	mov r5, #7
loc_804A90A:
	bl sub_81200EC
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x32 
	// j
	sub r0, r0, r1
	// i
	mov r1, #4
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804A960 // =unk_2034458 
	mov r4, #8
	ldr r5, off_804A96C // =eS200AC80 
	ldr r5, [r5,#0x30] // (dword_200ACB0 - 0x200ac80)
	cmp r5, #7
	ble loc_804A928
	mov r5, #7
loc_804A928:
	lsl r5, r5, #1
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh r0, [r7,#0x24]
	ldr r1, off_804A95C // =word_202A020 
	ldr r2, off_804A964 // =unk_20345A8 
	mov r3, #0xb
	lsl r3, r3, #0xc
	ldr r4, dword_804A968 // =0x216 
	orr r3, r4
	mov r5, #7
	bl sub_8120458
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x3a 
	sub r0, r0, r1
	mov r1, #4
	mov r2, #2
	ldr r3, off_804A964 // =unk_20345A8 
	mov r4, #1
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804A95C: .word word_202A020
off_804A960: .word unk_2034458
off_804A964: .word unk_20345A8
dword_804A968: .word 0x216
off_804A96C: .word eS200AC80
	thumb_func_end sub_804A8F4

	thumb_local_start
sub_804A970:
	push {r4-r7,lr}
	ldr r7, off_804A99C // =word_202A020 
	ldrh r6, [r5,#0x1e]
	mov r4, #0
loc_804A978:
	ldr r1, [r7,#0x1c]
	lsl r0, r1, #0x10
	mov r2, #0x7f
	and r1, r2
	lsr r0, r0, #0x17
	mov r2, #1
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	mov r0, #9
	ldrh r1, [r7]
	bl sub_8048D60
	add r7, #0x20 
	add r4, #1
	cmp r4, r6
	blt loc_804A978
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804A99C: .word word_202A020
	thumb_func_end sub_804A970

	thumb_local_start
sub_804A9A0:
	push {r4-r7,lr}
	mov r0, #0xf0
	mov r1, #0x1e
	lsl r1, r1, #3
	sub r0, r0, r1
	mov r1, #0x20 
	mov r2, #0x2a 
	mov r3, #0x13
	ldr r4, off_804A9BC // =byte_804A29C 
	ldr r6, dword_804A9C0 // =0x40000000 
	bl sub_804A9F0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804A9BC: .word byte_804A29C
dword_804A9C0: .word 0x40000000
	thumb_func_end sub_804A9A0

	thumb_local_start
sub_804A9C4:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24]
	tst r0, r0
	beq locret_804A9E2
	ldr r0, off_804A9EC // =0xe0 
	mov r1, #0x1e
	lsl r1, r1, #3
	sub r0, r0, r1
	mov r1, #0x20 
	mov r2, #0
	mov r3, #0x12
	ldr r4, off_804A9E4 // =byte_804A2A4 
	ldr r6, dword_804A9E8 // =0x0 
	bl sub_804A9F0
locret_804A9E2:
	pop {r4-r7,pc}
off_804A9E4: .word byte_804A2A4
dword_804A9E8: .word 0x0
off_804A9EC: .word 0xE0
	thumb_func_end sub_804A9C4

	thumb_local_start
sub_804A9F0:
	push {r4,lr}
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
	bne loc_804AA0C
	mov r2, #0
	b loc_804AA0E
loc_804AA0C:
	ldrh r2, [r5,r3]
loc_804AA0E:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_804AA50 // =0x20002 
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
	bne loc_804AA3C
	ldr r1, off_804AA54 // =dword_804A2AC
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_804AA3C:
	ldr r2, [sp,#8]
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r3
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.byte 0, 0
dword_804AA50: .word 0x20002
off_804AA54: .word dword_804A2AC
	thumb_func_end sub_804A9F0

	thumb_local_start
sub_804AA58:
	push {r4-r7,lr}
	ldr r0, dword_804AA70 // =0x182 
	mov r1, #0x1e
	lsl r1, r1, #3
	sub r0, r0, r1
	mov r1, #0x1c
	mov r2, #0x28 
	mov r3, #0x2e 
	bl sub_804AA74
	pop {r4-r7,pc}
	.byte 0, 0
dword_804AA70: .word 0x182
	thumb_func_end sub_804AA58

	thumb_local_start
sub_804AA74:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	lsl r0, r0, #0x10
	ldr r1, [sp]
	orr r0, r1
	ldr r1, dword_804AA9C // =0x20002 
	ldr r2, [sp,#4]
	ldrh r2, [r5,r2]
	ldr r3, [sp,#8]
	ldrh r3, [r5,r3]
	mov r4, #7
	ldr r6, dword_804AAA0 // =0xc24c 
	mov r7, #0x64 
	bl sub_811FA98
	add sp, sp, #0xc
	pop {r4-r7,pc}
dword_804AA9C: .word 0x20002
dword_804AAA0: .word 0xC24C
	thumb_func_end sub_804AA74

	thumb_local_start
sub_804AAA4:
	push {lr}
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_804AACC
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_804AABA
	bl sub_804AF20
	b locret_804AACC
loc_804AABA:
	mov r0, #0x68 
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_804AACC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_804AAA4

	thumb_local_start
sub_804AAD0:
	push {lr}
	mov r0, #8
	bl isJoystickIRQActive
	bne loc_804AAE8
	ldrb r0, [r5]
	cmp r0, #0x14
	bne loc_804AB0A
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_804AB0E
loc_804AAE8:
	ldrb r0, [r5]
	cmp r0, #0x14
	bne loc_804AAFA
	mov r0, #4
	strb r0, [r5]
	mov r0, #0x83
	bl sound_play // () -> void
	b locret_804AB0E
loc_804AAFA:
	mov r0, #0x14
	strb r0, [r5]
	mov r0, #0
	strh r0, [r5,#0x34]
	mov r0, #0x81
	bl sound_play // () -> void
	b locret_804AB0E
loc_804AB0A:
	mov r0, #0
	tst r0, r0
locret_804AB0E:
	pop {pc}
	thumb_func_end sub_804AAD0

	thumb_local_start
sub_804AB10:
	push {r4-r7,lr}
	mov r6, #0
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_804AB44
	mov r6, #1
	mov r4, #0x44 
	mov r2, r4
	mov r3, #0
	ldrb r0, [r5,#3]
	lsr r0, r0, #2
	add r0, #1
	strb r0, [r5,r2]
	bl sub_804AB4C
	mov r0, #0x44 
	mov r1, r0
	add r2, r0, #1
	ldrb r0, [r5,r1]
	strb r0, [r5,r2]
	bl sub_804AB6C
	mov r0, #0x81
	bl sound_play // () -> void
loc_804AB44:
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_804AB10

	thumb_local_start
sub_804AB4C:
	push {r4,lr}
	ldrh r1, [r5,#0x2a]
	ldrh r2, [r5,#0x2e]
	cmp r0, #1
	bne loc_804AB5A
	ldrh r1, [r5,#0x20]
	ldrh r2, [r5,#0x24]
loc_804AB5A:
	str r0, [r5,#0x40]
	strh r1, [r5,#0x3c]
	strh r2, [r5,#0x3e]
	add r1, r1, r2
	mov r2, #2
	add r4, r4, r2
	strh r1, [r5,r4]
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_804AB4C

	thumb_local_start
sub_804AB6C:
	push {r4-r7,lr}
	mov r4, #0x44 
	mov r0, r4
	ldrb r0, [r5,r0]
	lsl r0, r0, #2
	ldr r1, off_804ACAC // =dword_804ACB0 
	ldr r7, [r1,r0]
	add r0, r4, #2
	ldrh r2, [r5,r0]
	ldr r0, off_804ACB4 // =word_202A020 
	cmp r0, r7
	bne loc_804ABE0
	mov r0, #0x20 
	mul r0, r2
	add r7, r7, r0
	ldrh r0, [r7,#0x14]
	tst r0, r0
	bne loc_804AB98
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_804AC9E
loc_804AB98:
	ldrh r0, [r7,#0x1c]
	bl sub_804AD60
	tst r0, r0
	bne loc_804ABC0
	ldrh r0, [r5,#0x28]
	mov r1, #0x20 
	mul r1, r0
	ldr r0, off_804ACB8 // =unk_202A3E0 
	add r1, r1, r0
	mov r0, r7
	add r3, r0, #2
	mov r2, #1
	strh r2, [r3,#0x14]
	mov r2, #0x20 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldrh r0, [r5,#0x28]
	add r0, #1
	strh r0, [r5,#0x28]
loc_804ABC0:
	mov r0, r7
	mov r1, #0x20 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldrh r0, [r5,#0x1e]
	bl sub_804ACC8
	strb r0, [r5,#0x17]
	ldr r0, off_804ACC4 // =eS200AC80 
	ldr r0, [r0,#0x30] // (dword_200ACB0 - 0x200ac80)
	ldrh r1, [r5,#0x1e]
	cmp r0, r1
	beq loc_804ABDA
loc_804ABDA:
	bl sub_804ADD0
	b loc_804AC9E
loc_804ABE0:
	mov r0, #0x20 
	mul r0, r2
	add r7, r7, r0
	ldr r2, [r7,#0x14]
	lsr r6, r2, #0x10
	tst r6, r6
	beq loc_804AC06
	ldr r0, off_804ACC4 // =eS200AC80 
	ldr r4, [r0,#0x30] // (dword_200ACB0 - 0x200ac80)
	ldr r3, off_804ACB4 // =word_202A020 
	mov r1, #0
	mov r2, #0x20 
	mul r2, r4
loc_804ABFA:
	ldrh r0, [r3,r1]
	tst r0, r0
	beq loc_804AC0E
	add r1, #0x20 
	cmp r1, r2
	blt loc_804ABFA
loc_804AC06:
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_804AC9E
loc_804AC0E:
	mov r4, r1
	ldrh r0, [r5,#0x1e]
	add r0, #1
	strh r0, [r5,#0x1e]
	cmp r0, #7
	ble loc_804AC1E
	sub r0, #7
	strh r0, [r5,#0x24]
loc_804AC1E:
	sub r6, #1
	bne loc_804AC60
	mov r0, r7
	ldr r1, off_804ACB4 // =word_202A020 
	add r1, r1, r4
	mov r2, #0x20 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldrh r0, [r5,#0x1e]
	bl sub_804ACC8
	strb r0, [r5,#0x17]
	mov r0, r7
	add r0, #0x20 
	mov r1, r7
	ldrh r2, [r5,#0x2a]
	ldrh r3, [r5,#0x2e]
	add r3, r3, r2
	ldrh r2, [r5,#0x28]
	sub r2, #1
	strh r2, [r5,#0x28]
	sub r2, r2, r3
	tst r2, r2
	bne loc_804AC52
	bl sub_804AD98
loc_804AC52:
	bl sub_804ADE0
	bl sub_804ADB0
	bl sub_804ADD0
	b loc_804AC84
loc_804AC60:
	lsl r6, r6, #0x10
	ldr r2, [r7,#0x14]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	orr r6, r2
	str r6, [r7,#0x14]
	ldr r1, off_804ACB4 // =word_202A020 
	mov r0, r7
	add r1, r1, r4
	mov r2, #0x20 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldrh r0, [r5,#0x1e]
	bl sub_804ACC8
	strb r0, [r5,#0x17]
	bl sub_804ADD0
loc_804AC84:
	ldr r1, off_804ACC4 // =eS200AC80 
	ldr r1, [r1,#0x30] // (dword_200ACB0 - 0x200ac80)
	ldrh r0, [r5,#0x1e]
	cmp r1, r0
	bgt loc_804AC9E
	mov r0, #2
	cmp r1, #3
	beq loc_804AC96
	mov r0, #8
loc_804AC96:
	bl sub_804AF10
	mov r0, #0xc
	strb r0, [r5]
loc_804AC9E:
	ldr r0, dword_804ACBC // =0x7fff 
	str r0, [r5,#0x3c]
	mov r0, #0
	str r0, [r5,#0x44]
	mov r0, #0
	str r0, [r5,#0x48]
	pop {r4-r7,pc}
off_804ACAC: .word dword_804ACB0
dword_804ACB0: .word 0x0
off_804ACB4: .word word_202A020
off_804ACB8: .word unk_202A3E0
dword_804ACBC: .word 0x7FFF
	.word unk_2035C6C
off_804ACC4: .word eS200AC80
	thumb_func_end sub_804AB6C

	thumb_local_start
sub_804ACC8:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r1, #0
	str r1, [sp]
	mov r5, r0
	mov r1, #0x20 
	mul r5, r1
	ldr r7, off_804AD5C // =word_202A020 
	add r5, r5, r7
	ldr r0, off_804AD54 // =unk_20343E0 
	ldr r1, off_804AD58 // =0x78 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r6, off_804AD54 // =unk_20343E0 
loc_804ACE4:
	mov r4, #0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_804AD16
	ldr r2, [sp]
	add r2, #1
	str r2, [sp]
loc_804ACF2:
	ldrh r1, [r6,r4]
	tst r1, r1
	beq loc_804AD0C
	cmp r0, r1
	beq loc_804AD00
	add r4, #4
	b loc_804ACF2
loc_804AD00:
	add r4, #2
	ldrh r1, [r6,r4]
	add r1, #1
	strh r1, [r6,r4]
	add r4, #2
	b loc_804AD16
loc_804AD0C:
	strh r0, [r6,r4]
	add r4, #2
	mov r0, #1
	strb r0, [r6,r4]
	add r4, #2
loc_804AD16:
	add r7, #0x20 
	cmp r7, r5
	blt loc_804ACE4
	ldr r7, off_804AD5C // =word_202A020 
	ldr r6, off_804AD54 // =unk_20343E0 
loc_804AD20:
	mov r4, #0
	ldrh r0, [r7,#0x14]
	tst r0, r0
	beq loc_804AD46
loc_804AD28:
	ldrh r1, [r6,r4]
	tst r1, r1
	beq loc_804AD36
	cmp r0, r1
	beq loc_804AD36
	add r4, #4
	b loc_804AD28
loc_804AD36:
	add r4, #2
	ldrh r0, [r6,r4]
	lsl r0, r0, #0x10
	ldr r1, [r7,#0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r7,#0x14]
loc_804AD46:
	add r7, #0x20 
	cmp r7, r5
	blt loc_804AD20
	ldr r0, [sp]
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804AD54: .word unk_20343E0
off_804AD58: .word 0x78
off_804AD5C: .word word_202A020
	thumb_func_end sub_804ACC8

	thumb_local_start
sub_804AD60:
	push {r4-r7,lr}
	mov r4, #0
	ldrh r1, [r5,#0x28]
	tst r1, r1
	beq loc_804AD90
	mov r2, #0x20 
	mul r2, r1
	ldr r7, off_804AD94 // =unk_202A3E0 
	add r2, r2, r7
loc_804AD72:
	ldrh r1, [r7,#0x14]
	tst r1, r1
	beq loc_804AD90
	ldrh r1, [r7,#0x1c]
	cmp r0, r1
	bne loc_804AD8A
	add r7, #2
	ldrh r0, [r7,#0x14]
	add r0, #1
	strh r0, [r7,#0x14]
	sub r7, #2
	mov r4, #1
loc_804AD8A:
	add r7, #0x20 
	cmp r7, r2
	blt loc_804AD72
loc_804AD90:
	mov r0, r4
	pop {r4-r7,pc}
off_804AD94: .word unk_202A3E0
	thumb_func_end sub_804AD60

	thumb_local_start
sub_804AD98:
	push {r0-r2,lr}
	ldrh r0, [r5,#0x2a]
	sub r0, #1
	blt loc_804ADA4
	strh r0, [r5,#0x2a]
	b locret_804ADAC
loc_804ADA4:
	ldrh r0, [r5,#0x2e]
	sub r0, #1
	blt locret_804ADAC
	strh r0, [r5,#0x2e]
locret_804ADAC:
	pop {r0-r2,pc}
	.byte 0, 0
	thumb_func_end sub_804AD98

	thumb_local_start
sub_804ADB0:
	push {lr}
	ldrh r1, [r5,#0x28]
	cmp r1, #7
	blt locret_804ADCE
	ldrh r0, [r5,#0x2e]
	add r0, #7
	cmp r0, r1
	ble locret_804ADCE
	sub r1, r0, r1
	ldrh r0, [r5,#0x2e]
	sub r0, r0, r1
	strh r0, [r5,#0x2e]
	ldrh r0, [r5,#0x2a]
	add r0, r0, r1
	strh r0, [r5,#0x2a]
locret_804ADCE:
	pop {pc}
	thumb_func_end sub_804ADB0

	thumb_local_start
sub_804ADD0:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	mov r1, #0xff
	strb r1, [r0]
	strb r1, [r0,#2]
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_804ADD0

	thumb_local_start
sub_804ADE0:
	push {r4-r7,lr}
	mov r4, r1
	mov r6, r2
	tst r2, r2
	beq loc_804ADF8
	mov r3, #0x20 
	mul r2, r3
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	mov r1, #0x20 
	mul r1, r6
	add r4, r4, r1
loc_804ADF8:
	mov r0, r4
	mov r1, #0x20 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_804ADE0

	thumb_local_start
sub_804AE04:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_804AE44
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrh r2, [r5,#0x34]
	mov r1, #2
	mov r4, #3
	ldrb r3, [r0,r1]
	strb r2, [r0,r1]
	cmp r2, r3
	beq loc_804AE34
	ldr r1, dword_804AE48 // =byte_30069A0
	ldrb r3, [r1,r2]
	mov r1, #4
	eor r3, r1
	strb r3, [r0,r4]
	b loc_804AE3C
loc_804AE34:
	ldrb r3, [r0,r4]
	mov r1, #4
	eor r3, r1
	strb r3, [r0,r4]
loc_804AE3C:
	ldr r0, off_804AE4C // =unk_202A3E0 
	ldrh r1, [r5,#0x28]
	bl sub_8120018
loc_804AE44:
	add sp, sp, #8
	pop {r4-r7,pc}
dword_804AE48: .word 0x30069A0
off_804AE4C: .word unk_202A3E0
	thumb_func_end sub_804AE04

	thumb_local_start
sub_804AE50:
	push {r4-r7,lr}
	// j
	mov r0, #0x15
	// i
	mov r1, #2
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_804AE64 // =unk_203486C 
	mov r4, #8
	mov r5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_804AE64: .word unk_203486C
	thumb_func_end sub_804AE50

	thumb_local_start
sub_804AE68:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r0, dword_804AEB0 // =0xa40000 
	ldrh r1, [r5,#0x34]
	mov r3, #0x10
	mul r1, r3
	add r1, #0x20 
	orr r0, r1
	ldr r1, dword_804AEB4 // =0x2 
	mov r2, #0x15
	ldrb r2, [r5,r2]
	str r2, [sp]
	mov r3, #0xf
	and r2, r3
	ldr r3, off_804AEB8 // =byte_804A29C 
	ldr r4, dword_804AEBC // =0x40000000 
	bl sub_811FAF4
	ldr r1, [sp]
	lsr r1, r1, #4
	sub r1, #1
	bne loc_804AE9E
	ldr r1, off_804AEC0 // =dword_804A2AC
	bl sub_8120CC8
	mov r2, #0x15
	strb r0, [r5,r2]
loc_804AE9E:
	mov r2, #0x15
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r2
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #4
	pop {r4-r7,pc}
dword_804AEB0: .word 0xA40000
dword_804AEB4: .word 0x2
off_804AEB8: .word byte_804A29C
dword_804AEBC: .word 0x40000000
off_804AEC0: .word dword_804A2AC
	thumb_func_end sub_804AE68

	thumb_local_start
sub_804AEC4:
	push {r4,lr}
	tst r0, r0
	bne loc_804AEE6
	cmp r2, #5
	bne loc_804AED2
	mov r0, #0xf
	b loc_804AEFC
loc_804AED2:
	cmp r2, #0
	bne loc_804AEDA
	mov r0, #3
	b loc_804AEFC
loc_804AEDA:
	cmp r2, #1
	bne loc_804AEE2
	mov r0, #4
	b loc_804AEFC
loc_804AEE2:
	mov r0, #5
	b loc_804AEFC
loc_804AEE6:
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	str r1, [r4,#0x4c]
	cmp r2, #5
	bne loc_804AEF4
	mov r0, #0x10
	b loc_804AEFC
loc_804AEF4:
	mov r0, #7
	cmp r2, #1
	bne loc_804AEFC
	mov r0, #6
loc_804AEFC:
	bl sub_804AF10
	mov r0, #0x69 
	bl sound_play // () -> void
	ldrb r0, [r5,#3]
	strb r0, [r5,#0xd]
	mov r0, #8
	strb r0, [r5,#2]
	pop {r4,pc}
	thumb_func_end sub_804AEC4

	thumb_local_start
sub_804AF10:
	push {lr}
	mov r1, r0
	ldr r0, off_804AF1C // =TextScriptChipTrader86C580C
	bl chatbox_runScript_803FD78 // (void *textScript, u8 scriptIdx) -> void
	pop {pc}
off_804AF1C: .word TextScriptChipTrader86C580C
	thumb_func_end sub_804AF10

	thumb_local_start
sub_804AF20:
	push {r4-r7,lr}
	mov r7, r0
	cmp r0, #7
	ble loc_804AF32
	sub r0, #7
	strh r0, [r5,#0x24]
	mov r0, #6
	strh r0, [r5,#0x20]
	b loc_804AF3A
loc_804AF32:
	sub r0, #1
	strh r0, [r5,#0x20]
	mov r0, #0
	strh r0, [r5,#0x24]
loc_804AF3A:
	mov r4, #0x44 
	mov r2, r4
	mov r3, #0
	ldrb r0, [r5,#3]
	lsr r0, r0, #2
	add r0, #1
	strb r0, [r5,r2]
	bl sub_804AB4C
	mov r0, #0x44 
	mov r1, r0
	add r2, r0, #1
	ldrb r0, [r5,r1]
	strb r0, [r5,r2]
	bl sub_804AB6C
	ldrh r0, [r5,#0x1e]
	sub r0, #1
	strh r0, [r5,#0x1e]
	cmp r7, #7
	ble loc_804AF6A
	ldrh r0, [r5,#0x24]
	sub r0, #1
	strh r0, [r5,#0x24]
loc_804AF6A:
	ldr r0, off_804AF80 // =eS200AC80 
	ldr r0, [r0,#0x30] // (dword_200ACB0 - 0x200ac80)
	sub r0, #1
	ldrh r1, [r5,#0x1e]
	cmp r0, r1
	beq locret_804AF7C
	mov r0, #0x83
	bl sound_play // () -> void
locret_804AF7C:
	pop {r4-r7,pc}
	.byte 0, 0
off_804AF80: .word eS200AC80
	thumb_func_end sub_804AF20

	thumb_local_start
sub_804AF84:
	push {r4-r7,lr}
	// a1
	ldr r0, off_804AFB0 // =byte_804A2B0 
	bl sub_80465A0 // (void *a1) -> void
	mov r6, #0
loc_804AF8E:
	mov r0, r6
	bl getStructFrom2008450
	beq loc_804AFA8
	tst r6, r6
	bne loc_804AF9C
	mov r7, r1
loc_804AF9C:
	mov r5, r1
	ldr r0, dword_804AFB4 // =0xffffffd8 
	mov r1, #0x58 
	bl sprite_setCoordinates
	str r7, [r5,#0x14]
loc_804AFA8:
	add r6, #1
	cmp r6, #3
	blt loc_804AF8E
	pop {r4-r7,pc}
off_804AFB0: .word byte_804A2B0
dword_804AFB4: .word 0xFFFFFFD8
	thumb_func_end sub_804AF84

	thumb_local_start
sub_804AFB8:
	push {r4-r7,lr}
	mov r0, #0xa
	ldr r1, off_804AFE0 // =unk_2034814 
	mov r2, #0xb
	mov r3, #0xc
	mov r4, #0x14
	bl sub_81202FC
	mov r2, #0x1e
	mov r1, r2
	mov r0, #0x1f
	// j
	sub r0, r0, r1
	// i
	mov r1, #2
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_804AFE0 // =unk_2034814 
	mov r4, #0x14
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_804AFE0: .word unk_2034814
	thumb_func_end sub_804AFB8

	thumb_local_start
sub_804AFE4:
	push {lr}
	ldrh r0, [r5,#0x1e]
	ldr r1, off_804B004 // =eS200AC80 
	ldr r1, [r1,#0x30] // (dword_200ACB0 - 0x200ac80)
	mov r2, #3
	bl sub_8117084
	ldr r0, off_804B000 // =0xcc 
	mov r1, #0x1b
	mov r2, #3
	bl sub_8116FDC
	pop {pc}
	.byte 0, 0
off_804B000: .word 0xCC
off_804B004: .word eS200AC80
dword_804B008: .word 0x40C0
byte_804B00C: .byte 0x70, 0x60, 0x18, 0x10, 0x8
byte_804B011: .byte 0x30, 0x48, 0x48, 0x30, 0x10, 0x0, 0x0
off_804B018: .word byte_804B02C
	.word byte_804B031
	.word byte_804B036
	.word byte_804B03B
	.word byte_804B040
byte_804B02C: .byte 0x0, 0x1, 0x2, 0x3, 0x4
byte_804B031: .byte 0x1, 0x0, 0x2, 0x3, 0x4
byte_804B036: .byte 0x2, 0x1, 0x0, 0x3, 0x4
byte_804B03B: .byte 0x3, 0x2, 0x1, 0x0, 0x4
byte_804B040: .byte 0x4, 0x3, 0x2, 0x1, 0x0, 0x0, 0x0, 0x0
off_804B048: .word dword_804B064
	.word byte_804B062
	.word byte_804B060
	.word byte_804B05E
	.word byte_804B05C
byte_804B05C: .byte 0xC0, 0x40
byte_804B05E: .byte 0xA0, 0x60
byte_804B060: .byte 0x80, 0x80
byte_804B062: .byte 0x40, 0xC0
dword_804B064: .word 0xFF00
byte_804B068: .byte 0xC0, 0x40
byte_804B06A: .byte 0x20, 0x20, 0x20, 0x20, 0x0, 0x0
byte_804B070: .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1A, 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x4
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x5, 0x0, 0x1, 0x3, 0x12, 0x1A, 0x6, 0x0
	.byte 0x3, 0x5, 0xB, 0xFF, 0x9, 0x0, 0xB, 0xC, 0xD, 0x1A, 0xA, 0x0, 0x0
	.byte 0x1, 0x2, 0x1A, 0xC, 0x0, 0x0, 0x6, 0x11, 0xFF, 0xF, 0x0, 0x2, 0xC
	.byte 0x13, 0x1A, 0x13, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x14, 0x0, 0x5, 0x6, 0x7
	.byte 0x1A, 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF, 0x18, 0x0, 0x0, 0x5, 0xA, 0xFF
	.byte 0x19, 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1B, 0x0, 0x1, 0x4, 0x13, 0xFF, 0x1C
	.byte 0x0, 0x2, 0xB, 0x15, 0xFF, 0x1E, 0x0, 0x1, 0x11, 0x12, 0x1A, 0x25, 0x0
	.byte 0x1, 0x6, 0x12, 0xFF, 0x28, 0x0, 0x8, 0xA, 0xF, 0xFF, 0x2B, 0x0, 0x0
	.byte 0x11, 0x13, 0x1A, 0x2C, 0x0, 0x4, 0x6, 0x12, 0xFF, 0x36, 0x0, 0x1, 0xB
	.byte 0x11, 0x1A, 0x37, 0x0, 0x2, 0xA, 0x15, 0x1A, 0x39, 0x0, 0x9, 0xB, 0x10
	.byte 0x1A, 0x3D, 0x0, 0x2, 0x9, 0xF, 0xFF, 0x3E, 0x0, 0x5, 0xA, 0x13, 0xFF
	.byte 0x40, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x44, 0x0, 0x0, 0x5, 0x12, 0x1A, 0x45
	.byte 0x0, 0x0, 0xB, 0x11, 0x1A, 0x47, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x48, 0x0
	.byte 0x7, 0xB, 0x12, 0x1A, 0x49, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x59, 0x0, 0x0
	.byte 0x6, 0x13, 0x1A, 0x5A, 0x0, 0x2, 0x11, 0x14, 0x1A, 0x5B, 0x0, 0x9, 0xB
	.byte 0x15, 0x1A, 0x5C, 0x0, 0x4, 0x5, 0x6, 0xFF, 0x5D, 0x0, 0xB, 0xC, 0xD
	.byte 0xFF, 0x62, 0x0, 0x5, 0xA, 0xB, 0xFF, 0x6B, 0x0, 0x3, 0x4, 0x5, 0xFF
	.byte 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF, 0x74, 0x0, 0x9, 0xA, 0x13, 0xFF, 0x78
	.byte 0x0, 0x8, 0xA, 0x18, 0xFF, 0x79, 0x0, 0x3, 0xF, 0x14, 0xFF, 0x7B, 0x0
	.byte 0x9, 0xA, 0xB, 0xFF, 0x7C, 0x0, 0x2, 0x3, 0x4, 0xFF, 0x7E, 0x0, 0x5
	.byte 0x6, 0x11, 0xFF, 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0x83, 0x0, 0x0, 0x2, 0xF, 0x1A, 0x84, 0x0, 0x1, 0x6, 0x18
	.byte 0x1A, 0x8F, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6, 0x7, 0xFF
	.byte 0x92, 0x0, 0xF, 0x12, 0x19, 0x1A, 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A, 0x9B
	.byte 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C, 0x0, 0x2, 0xC, 0xF, 0x1A, 0x9D, 0x0
	.byte 0x7, 0xA, 0x15, 0x1A, 0xA2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1
	.byte 0x5, 0x12, 0x1A, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAA, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB1, 0x0, 0x1A, 0xFF, 0xFF
	.byte 0xFF, 0xB2, 0x0, 0x0, 0x5, 0x11, 0x1A, 0xB7, 0x0, 0x1A, 0xFF, 0xFF, 0xFF
	.byte 0xB8, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBE, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBF
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC2, 0x0
	.byte 0x1A, 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_804B21A: .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1A, 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x4
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x5, 0x0, 0x1, 0x3, 0x12, 0x1A, 0x6, 0x0
	.byte 0x3, 0x5, 0xB, 0xFF, 0x9, 0x0, 0xB, 0xC, 0xD, 0x1A, 0xA, 0x0, 0x0
	.byte 0x1, 0x2, 0x1A, 0xC, 0x0, 0x0, 0x6, 0x11, 0xFF, 0xD, 0x0, 0xB, 0x12
	.byte 0x15, 0xFF, 0xF, 0x0, 0x2, 0xC, 0x13, 0x1A, 0x10, 0x0, 0x1, 0x4, 0x11
	.byte 0xFF, 0x13, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x14, 0x0, 0x5, 0x6, 0x7, 0x1A
	.byte 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF, 0x18, 0x0, 0x0, 0x5, 0xA, 0xFF, 0x19
	.byte 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1B, 0x0, 0x1, 0x4, 0x13, 0xFF, 0x1C, 0x0
	.byte 0x2, 0xB, 0x15, 0xFF, 0x1E, 0x0, 0x1, 0x11, 0x12, 0x1A, 0x1F, 0x0, 0x0
	.byte 0x4, 0x10, 0xFF, 0x20, 0x0, 0x2, 0xB, 0xF, 0xFF, 0x22, 0x0, 0x9, 0xB
	.byte 0x12, 0xFF, 0x23, 0x0, 0x0, 0x4, 0x9, 0xFF, 0x25, 0x0, 0x1, 0x6, 0x12
	.byte 0xFF, 0x26, 0x0, 0x2, 0x11, 0x15, 0xFF, 0x28, 0x0, 0x8, 0xA, 0xF, 0xFF
	.byte 0x29, 0x0, 0x4, 0x10, 0x19, 0xFF, 0x2B, 0x0, 0x0, 0x11, 0x13, 0x1A, 0x2C
	.byte 0x0, 0x4, 0x6, 0x12, 0xFF, 0x32, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x33, 0x0
	.byte 0x6, 0xC, 0x16, 0xFF, 0x34, 0x0, 0xB, 0x11, 0x13, 0xFF, 0x36, 0x0, 0x1
	.byte 0xB, 0x11, 0x1A, 0x37, 0x0, 0x2, 0xA, 0x15, 0x1A, 0x38, 0x0, 0x6, 0xC
	.byte 0xE, 0x1A, 0x3C, 0x0, 0x1, 0x5, 0xE, 0xFF, 0x3D, 0x0, 0x2, 0x9, 0xF
	.byte 0xFF, 0x3E, 0x0, 0x5, 0xA, 0x13, 0xFF, 0x40, 0x0, 0x9, 0xA, 0xB, 0xFF
	.byte 0x41, 0x0, 0x2, 0x3, 0x4, 0xFF, 0x44, 0x0, 0x0, 0x5, 0x12, 0x1A, 0x45
	.byte 0x0, 0x0, 0xB, 0x11, 0x1A, 0x47, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x48, 0x0
	.byte 0x7, 0xB, 0x12, 0x1A, 0x49, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x4A, 0x0, 0x1
	.byte 0x11, 0x16, 0xFF, 0x4B, 0x0, 0x1, 0xC, 0x15, 0xFF, 0x4C, 0x0, 0x5, 0xE
	.byte 0x19, 0xFF, 0x4D, 0x0, 0x0, 0x8, 0x18, 0xFF, 0x4E, 0x0, 0x4, 0xA, 0xD
	.byte 0xFF, 0x4F, 0x0, 0x7, 0x12, 0x16, 0xFF, 0x50, 0x0, 0x5, 0x9, 0x11, 0x1A
	.byte 0x51, 0x0, 0x1, 0xB, 0xF, 0xFF, 0x52, 0x0, 0xA, 0x15, 0x16, 0xFF, 0x54
	.byte 0x0, 0x0, 0xC, 0x13, 0xFF, 0x59, 0x0, 0x0, 0x6, 0x13, 0x1A, 0x5A, 0x0
	.byte 0x2, 0x11, 0x14, 0x1A, 0x5B, 0x0, 0x9, 0xB, 0x15, 0x1A, 0x5C, 0x0, 0x4
	.byte 0x5, 0x6, 0xFF, 0x5D, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x5F, 0x0, 0x1, 0x2
	.byte 0x3, 0xFF, 0x62, 0x0, 0x5, 0xA, 0xB, 0xFF, 0x63, 0x0, 0x4, 0xC, 0x15
	.byte 0xFF, 0x68, 0x0, 0x6, 0xA, 0x11, 0xFF, 0x69, 0x0, 0xE, 0x13, 0x18, 0xFF
	.byte 0x6B, 0x0, 0x3, 0x4, 0x5, 0xFF, 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF, 0x6E
	.byte 0x0, 0x7, 0xF, 0x15, 0xFF, 0x71, 0x0, 0x9, 0xE, 0x16, 0xFF, 0x74, 0x0
	.byte 0x9, 0xA, 0x13, 0xFF, 0x75, 0x0, 0x1, 0xB, 0x15, 0xFF, 0x77, 0x0, 0x0
	.byte 0x11, 0x16, 0x1A, 0x78, 0x0, 0x8, 0xA, 0x18, 0xFF, 0x79, 0x0, 0x3, 0xF
	.byte 0x14, 0xFF, 0x7B, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x7C, 0x0, 0x2, 0x3, 0x4
	.byte 0xFF, 0x7E, 0x0, 0x5, 0x6, 0x11, 0xFF, 0x7F, 0x0, 0x0, 0xB, 0x13, 0xFF
	.byte 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x83
	.byte 0x0, 0x0, 0x2, 0xF, 0x1A, 0x84, 0x0, 0x1, 0x6, 0x18, 0x1A, 0x86, 0x0
	.byte 0x7, 0xC, 0xB, 0xFF, 0x87, 0x0, 0x4, 0x8, 0xF, 0xFF, 0x8D, 0x0, 0x5
	.byte 0xB, 0x16, 0xFF, 0x8E, 0x0, 0xF, 0x13, 0x15, 0xFF, 0x8F, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6, 0x7, 0xFF, 0x91, 0x0, 0x0, 0x12, 0x13
	.byte 0xFF, 0x92, 0x0, 0xF, 0x12, 0x19, 0x1A, 0x93, 0x0, 0x0, 0x6, 0x12, 0x1A
	.byte 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A, 0x9B, 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C
	.byte 0x0, 0x2, 0xC, 0xF, 0x1A, 0x9D, 0x0, 0x7, 0xA, 0x15, 0x1A, 0x9E, 0x0
	.byte 0x5, 0xF, 0x12, 0xFF, 0x9F, 0x0, 0x9, 0xC, 0x13, 0xFF, 0xA2, 0x0, 0x1A
	.byte 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1, 0x5, 0x12, 0x1A, 0xA4, 0x0, 0x1, 0xC
	.byte 0x12, 0xFF, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA8, 0x0, 0x0, 0x1, 0x12
	.byte 0x1A, 0xAA, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF, 0xFF
	.byte 0xAC, 0x0, 0x0, 0x1, 0x6, 0x1A, 0xAD, 0x0, 0x4, 0xC, 0x11, 0xFF, 0xAE
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB1, 0x0
	.byte 0x1A, 0xFF, 0xFF, 0xFF, 0xB2, 0x0, 0x0, 0x5, 0x11, 0x1A, 0xB3, 0x0, 0x7
	.byte 0xE, 0x18, 0xFF, 0xB5, 0x0, 0x8, 0x10, 0x19, 0xFF, 0xB7, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0xB8, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB9, 0x0, 0x6, 0xB, 0x11
	.byte 0xFF, 0xBA, 0x0, 0x5, 0xB, 0x13, 0xFF, 0xBB, 0x0, 0x6, 0x11, 0x15, 0x1A
	.byte 0xBC, 0x0, 0x0, 0x11, 0x19, 0x1A, 0xBD, 0x0, 0x0, 0x5, 0x15, 0xFF, 0xBE
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0, 0x0
	.byte 0x1A, 0xFF, 0xFF, 0xFF, 0xC1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC2, 0x0, 0x1A
	.byte 0xFF, 0xFF, 0xFF, 0xC3, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC4, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0xC5, 0x0, 0x6, 0x12, 0x14, 0xFF, 0xC6, 0x0, 0x1, 0x6, 0x11
	.byte 0xFF, 0xC8, 0x0, 0x2, 0x3, 0x4, 0xFF, 0xCA, 0x0, 0xE, 0xF, 0x15, 0xFF
	.byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_804B52C: .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1A, 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x3
	.byte 0x0, 0x11, 0x12, 0x13, 0x1A, 0x4, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x5, 0x0
	.byte 0x1, 0x3, 0x12, 0x1A, 0x6, 0x0, 0x3, 0x5, 0xB, 0xFF, 0x9, 0x0, 0xB
	.byte 0xC, 0xD, 0x1A, 0xA, 0x0, 0x0, 0x1, 0x2, 0x1A, 0xC, 0x0, 0x0, 0x6
	.byte 0x11, 0xFF, 0xD, 0x0, 0xB, 0x12, 0x15, 0xFF, 0xF, 0x0, 0x2, 0xC, 0x13
	.byte 0x1A, 0x10, 0x0, 0x1, 0x4, 0x11, 0xFF, 0x14, 0x0, 0x5, 0x6, 0x7, 0x1A
	.byte 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF, 0x18, 0x0, 0x0, 0x5, 0xA, 0xFF, 0x19
	.byte 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1B, 0x0, 0x1, 0x4, 0x13, 0xFF, 0x1C, 0x0
	.byte 0x2, 0xB, 0x15, 0xFF, 0x1E, 0x0, 0x1, 0x11, 0x12, 0x1A, 0x1F, 0x0, 0x0
	.byte 0x4, 0x10, 0xFF, 0x20, 0x0, 0x2, 0xB, 0xF, 0xFF, 0x22, 0x0, 0x9, 0xB
	.byte 0x12, 0xFF, 0x23, 0x0, 0x0, 0x4, 0x9, 0xFF, 0x25, 0x0, 0x1, 0x6, 0x12
	.byte 0xFF, 0x26, 0x0, 0x2, 0x11, 0x15, 0xFF, 0x28, 0x0, 0x8, 0xA, 0xF, 0xFF
	.byte 0x29, 0x0, 0x4, 0x10, 0x19, 0xFF, 0x2B, 0x0, 0x0, 0x11, 0x13, 0x1A, 0x2C
	.byte 0x0, 0x4, 0x6, 0x12, 0xFF, 0x36, 0x0, 0x1, 0xB, 0x11, 0x1A, 0x37, 0x0
	.byte 0x2, 0xA, 0x15, 0x1A, 0x38, 0x0, 0x6, 0xC, 0xE, 0x1A, 0x39, 0x0, 0x9
	.byte 0xB, 0x10, 0x1A, 0x3D, 0x0, 0x2, 0x9, 0xF, 0xFF, 0x3E, 0x0, 0x5, 0xA
	.byte 0x13, 0xFF, 0x40, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x41, 0x0, 0x2, 0x3, 0x4
	.byte 0xFF, 0x47, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x48, 0x0, 0x7, 0xB, 0x12, 0x1A
	.byte 0x49, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x4C, 0x0, 0x5, 0xE, 0x19, 0xFF, 0x4D
	.byte 0x0, 0x0, 0x8, 0x18, 0xFF, 0x59, 0x0, 0x0, 0x6, 0x13, 0x1A, 0x5A, 0x0
	.byte 0x2, 0x11, 0x14, 0x1A, 0x5B, 0x0, 0x9, 0xB, 0x15, 0x1A, 0x5C, 0x0, 0x4
	.byte 0x5, 0x6, 0xFF, 0x5D, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x5F, 0x0, 0x1, 0x2
	.byte 0x3, 0xFF, 0x60, 0x0, 0x3, 0x4, 0x5, 0xFF, 0x62, 0x0, 0x5, 0xA, 0xB
	.byte 0xFF, 0x63, 0x0, 0x4, 0xC, 0x15, 0xFF, 0x65, 0x0, 0x0, 0x6, 0xB, 0xFF
	.byte 0x68, 0x0, 0x6, 0xA, 0x11, 0xFF, 0x69, 0x0, 0xE, 0x13, 0x18, 0xFF, 0x6B
	.byte 0x0, 0x3, 0x4, 0x5, 0xFF, 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF, 0x6E, 0x0
	.byte 0x7, 0xF, 0x15, 0xFF, 0x6F, 0x0, 0x3, 0xC, 0x13, 0xFF, 0x71, 0x0, 0x9
	.byte 0xE, 0x16, 0xFF, 0x72, 0x0, 0xD, 0x14, 0x18, 0xFF, 0x74, 0x0, 0x9, 0xA
	.byte 0x13, 0xFF, 0x78, 0x0, 0x8, 0xA, 0x18, 0xFF, 0x79, 0x0, 0x3, 0xF, 0x14
	.byte 0xFF, 0x7B, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x7C, 0x0, 0x2, 0x3, 0x4, 0xFF
	.byte 0x7E, 0x0, 0x5, 0x6, 0x11, 0xFF, 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x83, 0x0, 0x0, 0x2, 0xF, 0x1A, 0x84, 0x0
	.byte 0x1, 0x6, 0x18, 0x1A, 0x87, 0x0, 0x4, 0x8, 0xF, 0xFF, 0x88, 0x0, 0x7
	.byte 0xE, 0x15, 0xFF, 0x8F, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6
	.byte 0x7, 0xFF, 0x92, 0x0, 0xF, 0x12, 0x19, 0x1A, 0x93, 0x0, 0x0, 0x6, 0x12
	.byte 0x1A, 0x94, 0x0, 0x8, 0xE, 0x13, 0x1A, 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A
	.byte 0x9B, 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C, 0x0, 0x2, 0xC, 0xF, 0x1A, 0x9D
	.byte 0x0, 0x7, 0xA, 0x15, 0x1A, 0x9E, 0x0, 0x5, 0xF, 0x12, 0xFF, 0x9F, 0x0
	.byte 0x9, 0xC, 0x13, 0xFF, 0xA2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1
	.byte 0x5, 0x12, 0x1A, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAA, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAF, 0x0, 0x1A, 0xFF, 0xFF
	.byte 0xFF, 0xB1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB2, 0x0, 0x0, 0x5, 0x11, 0x1A
	.byte 0xB7, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB8, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBE
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0, 0x0
	.byte 0x1A, 0xFF, 0xFF, 0xFF, 0xC2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xDD, 0x0, 0x11
	.byte 0xFF, 0xFF, 0xFF, 0xF2, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xF5, 0x0, 0x13, 0xFF
	.byte 0xFF, 0xFF, 0xF8, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xFB, 0x0, 0x6, 0xFF, 0xFF
	.byte 0xFF, 0xFE, 0x0, 0x3, 0xFF, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0xFF
	.byte 0x4, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x7, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xA
	.byte 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xD, 0x1, 0x4, 0xFF, 0xFF, 0xFF, 0x0, 0x0
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_804B7BA: .byte 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x3, 0x0, 0x11, 0x12, 0x13
	.byte 0x1A, 0x6, 0x0, 0x3, 0x5, 0xB, 0xFF, 0x7, 0x0, 0x0, 0x6
	.byte 0x11, 0xFF, 0xA, 0x0, 0x0, 0x1, 0x2, 0x1A, 0xB, 0x0, 0x10
	.byte 0x11, 0x12, 0x1A, 0xD, 0x0, 0xB, 0x12, 0x15, 0xFF, 0xE, 0x0
	.byte 0x1, 0xC, 0xF, 0xFF, 0x10, 0x0, 0x1, 0x4, 0x11, 0xFF, 0x13
	.byte 0x0, 0xB, 0xC, 0xD, 0x1A, 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF
	.byte 0x16, 0x0, 0x2, 0x3, 0x4, 0xFF, 0x17, 0x0, 0xF, 0x10, 0x11
	.byte 0xFF, 0x19, 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1A, 0x0, 0xC, 0x12
	.byte 0x18, 0xFF, 0x1C, 0x0, 0x2, 0xB, 0x15, 0xFF, 0x1D, 0x0, 0x6
	.byte 0x11, 0x12, 0xFF, 0x20, 0x0, 0x2, 0xB, 0xF, 0xFF, 0x21, 0x0
	.byte 0x1, 0x11, 0x15, 0xFF, 0x23, 0x0, 0x0, 0x4, 0x9, 0xFF, 0x24
	.byte 0x0, 0x0, 0x9, 0x12, 0xFF, 0x26, 0x0, 0x2, 0x11, 0x15, 0xFF
	.byte 0x27, 0x0, 0x0, 0x3, 0xC, 0xFF, 0x29, 0x0, 0x4, 0x10, 0x19
	.byte 0xFF, 0x2A, 0x0, 0x5, 0xD, 0x16, 0xFF, 0x2C, 0x0, 0x4, 0x6
	.byte 0x12, 0xFF, 0x2D, 0x0, 0x1, 0x5, 0xC, 0xFF, 0x2E, 0x0, 0x6
	.byte 0x11, 0x13, 0xFF, 0x2F, 0x0, 0x0, 0xB, 0x15, 0xFF, 0x30, 0x0
	.byte 0x7, 0xF, 0x12, 0xFF, 0x32, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x33
	.byte 0x0, 0x6, 0xC, 0x16, 0xFF, 0x34, 0x0, 0xB, 0x11, 0x13, 0xFF
	.byte 0x38, 0x0, 0x6, 0xC, 0xE, 0x1A, 0x39, 0x0, 0x9, 0xB, 0x10
	.byte 0x1A, 0x3A, 0x0, 0x6, 0xA, 0x11, 0xFF, 0x3B, 0x0, 0x7, 0xF
	.byte 0x12, 0xFF, 0x3C, 0x0, 0x1, 0x5, 0xE, 0xFF, 0x3E, 0x0, 0x5
	.byte 0xA, 0x13, 0xFF, 0x3F, 0x0, 0x0, 0xB, 0x14, 0xFF, 0x41, 0x0
	.byte 0x2, 0x3, 0x4, 0xFF, 0x42, 0x0, 0xF, 0x10, 0x11, 0xFF, 0x43
	.byte 0x0, 0x6, 0x12, 0x15, 0xFF, 0x4A, 0x0, 0x1, 0x11, 0x16, 0xFF
	.byte 0x4B, 0x0, 0x1, 0xC, 0x15, 0xFF, 0x4C, 0x0, 0x5, 0xE, 0x19
	.byte 0xFF, 0x4D, 0x0, 0x0, 0x8, 0x18, 0xFF, 0x4E, 0x0, 0x4, 0xA
	.byte 0xD, 0xFF, 0x4F, 0x0, 0x7, 0x12, 0x16, 0xFF, 0x50, 0x0, 0x5
	.byte 0x9, 0x11, 0x1A, 0x51, 0x0, 0x1, 0xB, 0xF, 0xFF, 0x52, 0x0
	.byte 0xA, 0x15, 0x16, 0xFF, 0x54, 0x0, 0x0, 0xC, 0x13, 0xFF, 0x56
	.byte 0x0, 0x7, 0xB, 0x10, 0xFF, 0x57, 0x0, 0x9, 0xC, 0x14, 0xFF
	.byte 0x5D, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x5E, 0x0, 0x11, 0x12, 0x13
	.byte 0xFF, 0x60, 0x0, 0x3, 0x4, 0x5, 0xFF, 0x61, 0x0, 0x5, 0x6
	.byte 0x7, 0xFF, 0x63, 0x0, 0x4, 0xC, 0x15, 0xFF, 0x64, 0x0, 0x6
	.byte 0x12, 0x19, 0xFF, 0x65, 0x0, 0x0, 0x6, 0xB, 0xFF, 0x66, 0x0
	.byte 0x1, 0x11, 0x18, 0xFF, 0x69, 0x0, 0xE, 0x13, 0x18, 0xFF, 0x6A
	.byte 0x0, 0xD, 0x14, 0x19, 0xFF, 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF
	.byte 0x6D, 0x0, 0x0, 0x1, 0x2, 0xFF, 0x6F, 0x0, 0x3, 0xC, 0x13
	.byte 0xFF, 0x70, 0x0, 0x4, 0xE, 0x19, 0xFF, 0x72, 0x0, 0xD, 0x14
	.byte 0x18, 0xFF, 0x73, 0x0, 0x8, 0xA, 0x10, 0xFF, 0x75, 0x0, 0x1
	.byte 0xB, 0x15, 0xFF, 0x77, 0x0, 0x0, 0x11, 0x16, 0x1A, 0x79, 0x0
	.byte 0x3, 0xF, 0x14, 0xFF, 0x7A, 0x0, 0x7, 0xC, 0x15, 0xFF, 0x7C
	.byte 0x0, 0x2, 0x3, 0x4, 0xFF, 0x7D, 0x0, 0xB, 0xC, 0xD, 0xFF
	.byte 0x7E, 0x0, 0x5, 0x6, 0x11, 0xFF, 0x7F, 0x0, 0x0, 0xB, 0x13
	.byte 0xFF, 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82, 0x0, 0x1A, 0xFF
	.byte 0xFF, 0xFF, 0x84, 0x0, 0x1, 0x6, 0x18, 0x1A, 0x85, 0x0, 0x4
	.byte 0x5, 0xE, 0x1A, 0x86, 0x0, 0x7, 0xC, 0xB, 0xFF, 0x88, 0x0
	.byte 0x7, 0xE, 0x15, 0xFF, 0x89, 0x0, 0x16, 0x18, 0x19, 0xFF, 0x8D
	.byte 0x0, 0x5, 0xB, 0x16, 0xFF, 0x8E, 0x0, 0xF, 0x13, 0x15, 0xFF
	.byte 0x8F, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6, 0x7
	.byte 0xFF, 0x91, 0x0, 0x0, 0x12, 0x13, 0xFF, 0x92, 0x0, 0xF, 0x12
	.byte 0x19, 0x1A, 0x93, 0x0, 0x0, 0x6, 0x12, 0x1A, 0x94, 0x0, 0x8
	.byte 0xE, 0x13, 0x1A, 0x95, 0x0, 0x1, 0x11, 0x16, 0x1A, 0x96, 0x0
	.byte 0x5, 0xD, 0x12, 0x1A, 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A, 0x9B
	.byte 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C, 0x0, 0x2, 0xC, 0xF, 0x1A
	.byte 0x9D, 0x0, 0x7, 0xA, 0x15, 0x1A, 0x9E, 0x0, 0x5, 0xF, 0x12
	.byte 0xFF, 0x9F, 0x0, 0x9, 0xC, 0x13, 0xFF, 0xA0, 0x0, 0x8, 0x10
	.byte 0x19, 0xFF, 0xA2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1
	.byte 0x5, 0x12, 0x1A, 0xA4, 0x0, 0x1, 0xC, 0x12, 0xFF, 0xA5, 0x0
	.byte 0x8, 0x10, 0x19, 0xFF, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA7
	.byte 0x0, 0x0, 0xB, 0x11, 0xFF, 0xA8, 0x0, 0x0, 0x1, 0x12, 0x1A
	.byte 0xAA, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF
	.byte 0xFF, 0xAC, 0x0, 0x0, 0x1, 0x6, 0x1A, 0xAD, 0x0, 0x4, 0xC
	.byte 0x11, 0xFF, 0xAF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB0, 0x0, 0xA
	.byte 0xF, 0x19, 0xFF, 0xB1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB2, 0x0
	.byte 0x0, 0x5, 0x11, 0x1A, 0xB3, 0x0, 0x7, 0xE, 0x18, 0xFF, 0xB4
	.byte 0x0, 0xA, 0x14, 0x16, 0xFF, 0xB5, 0x0, 0x8, 0x10, 0x19, 0xFF
	.byte 0xB7, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB8, 0x0, 0x1A, 0xFF, 0xFF
	.byte 0xFF, 0xB9, 0x0, 0x6, 0xB, 0x11, 0xFF, 0xBA, 0x0, 0x5, 0xB
	.byte 0x13, 0xFF, 0xBB, 0x0, 0x6, 0x11, 0x15, 0x1A, 0xBC, 0x0, 0x0
	.byte 0x11, 0x19, 0x1A, 0xBD, 0x0, 0x0, 0x5, 0x15, 0xFF, 0xBE, 0x0
	.byte 0x1A, 0xFF, 0xFF, 0xFF, 0xBF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0
	.byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF
	.byte 0xC2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC5, 0x0, 0x6, 0x12, 0x14
	.byte 0xFF, 0xC6, 0x0, 0x1, 0x6, 0x11, 0xFF, 0xC8, 0x0, 0x2, 0x3
	.byte 0x4, 0xFF, 0xCA, 0x0, 0xE, 0xF, 0x15, 0xFF, 0xDD, 0x0, 0x11
	.byte 0xFF, 0xFF, 0xFF, 0xDE, 0x0, 0x11, 0xFF, 0xFF, 0xFF, 0xE0, 0x0
	.byte 0x1, 0xFF, 0xFF, 0xFF, 0xE1, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xF2
	.byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xF3, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	.byte 0xF5, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF6, 0x0, 0x13, 0xFF, 0xFF
	.byte 0xFF, 0xF8, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF9, 0x0, 0x13, 0xFF
	.byte 0xFF, 0xFF, 0xFB, 0x0, 0x6, 0xFF, 0xFF, 0xFF, 0xFC, 0x0, 0x6
	.byte 0xFF, 0xFF, 0xFF, 0xFE, 0x0, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x3, 0xFF, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x2
	.byte 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x4, 0x1, 0x3, 0xFF, 0xFF, 0xFF
	.byte 0x5, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x7, 0x1, 0x2, 0xFF, 0xFF
	.byte 0xFF, 0x8, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xA, 0x1, 0x9, 0xFF
	.byte 0xFF, 0xFF, 0xB, 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xD, 0x1, 0x4
	.byte 0xFF, 0xFF, 0xFF, 0xE, 0x1, 0x4, 0xFF, 0xFF, 0xFF, 0x10, 0x1
	.byte 0x2, 0xFF, 0xFF, 0xFF, 0x11, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_804BB92: .byte 0x8, 0x0, 0x15, 0xFF, 0xFF, 0xFF, 0x11, 0x0, 0xD, 0x10, 0x16
	.byte 0xFF, 0x31, 0x0, 0x6, 0x13, 0x15, 0xFF, 0x35, 0x0, 0x6, 0x12
	.byte 0x15, 0xFF, 0x46, 0x0, 0x7, 0xD, 0xF, 0x1A, 0x53, 0x0, 0xD
	.byte 0xFF, 0xFF, 0xFF, 0x55, 0x0, 0xC, 0xFF, 0xFF, 0xFF, 0x58, 0x0
	.byte 0xD, 0x11, 0x18, 0xFF, 0x67, 0x0, 0x7, 0x9, 0x12, 0xFF, 0x76
	.byte 0x0, 0x8, 0xC, 0x16, 0xFF, 0x80, 0x0, 0xD, 0xE, 0x13, 0xFF
	.byte 0x8A, 0x0, 0xD, 0xFF, 0xFF, 0xFF, 0x8B, 0x0, 0x11, 0xFF, 0xFF
	.byte 0xFF, 0x8C, 0x0, 0x9, 0xFF, 0xFF, 0xFF, 0x97, 0x0, 0xE, 0xFF
	.byte 0xFF, 0xFF, 0x98, 0x0, 0xF, 0xFF, 0xFF, 0xFF, 0xA1, 0x0, 0x9
	.byte 0xE, 0x18, 0xFF, 0xA9, 0x0, 0x19, 0xFF, 0xFF, 0xFF, 0xB6, 0x0
	.byte 0x14, 0xFF, 0xFF, 0xFF, 0xC7, 0x0, 0x7, 0xD, 0x13, 0xFF, 0xC9
	.byte 0x0, 0xB, 0xC, 0xD, 0xFF, 0xDD, 0x0, 0x11, 0xFF, 0xFF, 0xFF
	.byte 0xDE, 0x0, 0x11, 0xFF, 0xFF, 0xFF, 0xDF, 0x0, 0x11, 0xFF, 0xFF
	.byte 0xFF, 0xE0, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xE1, 0x0, 0x1, 0xFF
	.byte 0xFF, 0xFF, 0xE2, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xF2, 0x0, 0x0
	.byte 0xFF, 0xFF, 0xFF, 0xF3, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xF4, 0x0
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xF5, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF6
	.byte 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF7, 0x0, 0x13, 0xFF, 0xFF, 0xFF
	.byte 0xF8, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF9, 0x0, 0x13, 0xFF, 0xFF
	.byte 0xFF, 0xFA, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xFB, 0x0, 0x6, 0xFF
	.byte 0xFF, 0xFF, 0xFC, 0x0, 0x6, 0xFF, 0xFF, 0xFF, 0xFD, 0x0, 0x6
	.byte 0xFF, 0xFF, 0xFF, 0xFE, 0x0, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x3, 0xFF, 0xFF, 0xFF, 0x0, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x1
	.byte 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x2, 0x1, 0x1, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x4, 0x1, 0x3, 0xFF, 0xFF
	.byte 0xFF, 0x5, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x6, 0x1, 0x3, 0xFF
	.byte 0xFF, 0xFF, 0x7, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x8, 0x1, 0x2
	.byte 0xFF, 0xFF, 0xFF, 0x9, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xA, 0x1
	.byte 0x9, 0xFF, 0xFF, 0xFF, 0xB, 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xC
	.byte 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xD, 0x1, 0x4, 0xFF, 0xFF, 0xFF
	.byte 0xE, 0x1, 0x4, 0xFF, 0xFF, 0xFF, 0xF, 0x1, 0x4, 0xFF, 0xFF
	.byte 0xFF, 0x10, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x11, 0x1, 0x2, 0xFF
	.byte 0xFF, 0xFF, 0x12, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0xFF
	.byte 0xFF, 0xFF, 0xFF
	thumb_func_end sub_804AFE4

	thumb_func_start sub_804BD00
sub_804BD00:
	push {r4-r7,lr}
	ldr r5, off_804BD70 // =eS200AC80 
	bl sub_804BFF0
	str r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
	str r1, [r5,#0x50] // (dword_200ACD0 - 0x200ac80)
	ldr r0, off_804BD74 // =dword_804B008
	mov r1, #2
	bl sub_804BD7C
	cmp r0, #0
	bne loc_804BD26
loc_804BD18:
	ldr r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
	mov r1, r5
	add r1, #0x34 
	bl sub_804BDB4
	tst r0, r0
	bne loc_804BD34
loc_804BD26:
	ldr r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
	mov r1, r5
	add r1, #0x34 
	bl sub_804BE1C
	tst r0, r0
	beq loc_804BD18
loc_804BD34:
	ldr r0, [r5,#0x50] // (dword_200ACD0 - 0x200ac80)
	mov r1, #5
	bl sub_804BD7C
	mov r2, r0
	lsl r0, r0, #2
	ldr r7, off_804BD78 // =off_804B018 
	ldr r0, [r7,r0]
	mov r1, r5
	add r1, #0x34 
	bl sub_804BE88
	push {r0,r1}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r2, [r0,#5]
	pop {r0,r1}
	push {r0,r1}
	bl sub_804BEEC
	pop {r0,r1}
	beq loc_804BD68
	ldr r2, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
	bl sub_804BF18
	b locret_804BD6E
loc_804BD68:
	ldr r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
	bl sub_804BF94
locret_804BD6E:
	pop {r4-r7,pc}
off_804BD70: .word eS200AC80
off_804BD74: .word dword_804B008
off_804BD78: .word off_804B018
	thumb_func_end sub_804BD00

	thumb_local_start
sub_804BD7C:
	push {r5,lr}
	push {r0,r1}
	bl GetRNG2 // () -> int
	lsl r0, r0, #0x16
	lsr r0, r0, #0x16
	pop {r6,r7}
	sub r7, #1
	push {r6,r7}
	mov r1, #0
loc_804BD90:
	ldrb r3, [r6,r7]
	add r1, r1, r3
	sub r7, #1
	bge loc_804BD90
	push {r6}
	svc 6
	pop {r6}
	mov r2, #0
	pop {r6,r7}
	mov r0, #0
loc_804BDA4:
	ldrb r3, [r6,r2]
	add r0, r0, r3
	cmp r0, r1
	bge loc_804BDB0
	add r2, #1
	b loc_804BDA4
loc_804BDB0:
	mov r0, r2
	pop {r5,pc}
	thumb_func_end sub_804BD7C

	thumb_local_start
sub_804BDB4:
	push {r5,lr}
	mov r2, r8
	mov r3, r9
	push {r2,r3}
	mov r2, #0
	str r2, [r1]
	str r2, [r1,#4]
	mov r8, r1
	mov r9, r0
	// memBlock
	ldr r0, off_804BEE4 // =dword_2035800 
	mov r1, #0x10
	lsl r1, r1, #8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r6, r9
	ldr r7, off_804BEE4 // =dword_2035800 
	mov r3, #0
loc_804BDD6:
	ldrh r0, [r6]
	tst r0, r0
	beq loc_804BE0C
	push {r0,r3}
	ldr r1, dword_804BE84 // =0x1e20 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0,r3}
	beq loc_804BE06
	strh r0, [r7]
	strb r3, [r7,#2]
	push {r0,r1,r3,r6,r7}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r2, [r0,#5]
	mov r4, r8
	ldrb r6, [r4,r2]
	add r6, #1
	strb r6, [r4,r2]
	pop {r0,r1,r3,r6,r7}
	strb r2, [r7,#3]
	add r7, #4
loc_804BE06:
	add r3, #1
	add r6, #6
	b loc_804BDD6
loc_804BE0C:
	ldr r6, off_804BEE4 // =dword_2035800 
	sub r0, r7, r6
	lsr r0, r0, #2
	str r0, [r5,#0x48]
	pop {r1,r2}
	mov r8, r1
	mov r9, r2
	pop {r5,pc}
	thumb_func_end sub_804BDB4

	thumb_local_start
sub_804BE1C:
	push {r5,lr}
	mov r2, r8
	mov r7, r9
	push {r2,r7}
	mov r2, #0
	str r2, [r1]
	str r2, [r1,#4]
	mov r8, r1
	mov r9, r0
	// memBlock
	ldr r0, off_804BEE4 // =dword_2035800 
	mov r1, #0x10
	lsl r1, r1, #8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r6, r9
	ldr r7, off_804BEE4 // =dword_2035800 
loc_804BE3C:
	ldrh r0, [r6]
	tst r0, r0
	beq loc_804BE72
	push {r0,r3,r6,r7}
	ldr r1, dword_804BE84 // =0x1e20 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0,r3,r6,r7}
	bne loc_804BE6C
	strh r0, [r7]
	strb r3, [r7,#2]
	push {r0,r1,r3,r6,r7}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r2, [r0,#5]
	mov r4, r8
	ldrb r6, [r4,r2]
	add r6, #1
	strb r6, [r4,r2]
	pop {r0,r1,r3,r6,r7}
	strb r2, [r7,#3]
	add r7, #4
loc_804BE6C:
	add r3, #1
	add r6, #6
	b loc_804BE3C
loc_804BE72:
	ldr r6, off_804BEE4 // =dword_2035800 
	sub r0, r7, r6
	lsr r0, r0, #2
	str r0, [r5,#0x48]
	pop {r2,r7}
	mov r8, r2
	mov r9, r7
	pop {r5,pc}
	.balign 4, 0x00
dword_804BE84: .word 0x1E20
	thumb_func_end sub_804BE1C

	thumb_local_start
sub_804BE88:
	push {r5,lr}
	mov r7, r8
	push {r7}
	mov r7, #0
loc_804BE90:
	ldrb r3, [r0,r7]
	ldrb r4, [r1,r3]
	tst r4, r4
	bne loc_804BE9C
	add r7, #1
	b loc_804BE90
loc_804BE9C:
	mov r8, r3
	// memBlock
	ldr r0, off_804BEE8 // =dword_2034800 
	mov r1, #0x10
	lsl r1, r1, #8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, [r5,#0x48]
	mov r2, #0
	ldr r6, off_804BEE4 // =dword_2035800 
	ldr r7, off_804BEE8 // =dword_2034800 
loc_804BEB0:
	ldrb r3, [r6,#3]
	cmp r3, r8
	bne loc_804BEBE
	ldr r3, [r6]
	str r3, [r7]
	add r7, #4
	add r2, #1
loc_804BEBE:
	add r6, #4
	sub r0, #1
	bgt loc_804BEB0
	str r2, [r5,#0x48]
	bl GetRNG2 // () -> int
	lsl r0, r0, #0x16
	lsr r0, r0, #0x16
	ldr r1, [r5,#0x48]
	svc 6
	ldr r7, off_804BEE8 // =dword_2034800 
	lsl r0, r1, #2
	add r7, r7, r0
	ldrh r0, [r7]
	ldrb r1, [r7,#2]
	pop {r7}
	mov r8, r7
	pop {r5,pc}
	.balign 4, 0x00
off_804BEE4: .word dword_2035800
off_804BEE8: .word dword_2034800
	thumb_func_end sub_804BE88

	thumb_local_start
sub_804BEEC:
	push {r5,lr}
	cmp r2, #3
	blt loc_804BF10
	bl GetTotalChipCount
	cmp r0, #4
	blt loc_804BEFC
	mov r0, #4
loc_804BEFC:
	ldr r7, off_804BF14 // =off_804B048 
	lsl r0, r0, #2
	ldr r0, [r7,r0]
	mov r1, #2
	bl sub_804BD7C
	tst r0, r0
	bne loc_804BF10
	mov r0, #0
	pop {r5,pc}
loc_804BF10:
	mov r0, #1
	pop {r5,pc}
off_804BF14: .word off_804B048
	thumb_func_end sub_804BEEC

	thumb_local_start
sub_804BF18:
	push {r0,r5,lr}
loc_804BF1A:
	ldrh r7, [r2]
	cmp r7, r0
	beq loc_804BF24
	add r2, #6
	b loc_804BF1A
loc_804BF24:
	mov r7, r2
	mov r2, #2
	mov r3, #0
	mov r4, #0
loc_804BF2C:
	ldrb r1, [r7,r2]
	cmp r1, #0xff
	beq loc_804BF56
	push {r0-r4,r7}
	bl GetChipCountOfCode
	tst r0, r0
	pop {r0-r4,r7}
	beq loc_804BF48
	mov r6, r3
	add r6, #0x38 
	strb r1, [r5,r6]
	add r3, #1
	b loc_804BF50
loc_804BF48:
	mov r6, r4
	add r6, #0x40 
	strb r1, [r5,r6]
	add r4, #1
loc_804BF50:
	add r2, #1
	cmp r2, #5
	ble loc_804BF2C
loc_804BF56:
	ldr r0, off_804BF8C // =byte_804B068 
	mov r1, #2
	push {r3,r4}
	bl sub_804BD7C
	pop {r3,r4}
	tst r0, r0
	beq loc_804BF78
	tst r3, r3
	beq loc_804BF7C
loc_804BF6A:
	ldr r0, off_804BF90 // =byte_804B06A 
	mov r1, r3
	bl sub_804BD7C
	add r0, #0x38 
	ldrb r1, [r5,r0]
	b locret_804BF88
loc_804BF78:
	tst r4, r4
	beq loc_804BF6A
loc_804BF7C:
	ldr r0, off_804BF90 // =byte_804B06A 
	mov r1, r4
	bl sub_804BD7C
	add r0, #0x40 
	ldrb r1, [r5,r0]
locret_804BF88:
	pop {r0,r5,pc}
	.balign 4, 0x00
off_804BF8C: .word byte_804B068
off_804BF90: .word byte_804B06A
	thumb_func_end sub_804BF18

	thumb_local_start
sub_804BF94:
	push {r5,lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	// memBlock
	ldr r0, off_804BFEC // =dword_2035800 
	mov r1, #0x10
	lsl r1, r1, #8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r6, r8
	ldr r7, off_804BFEC // =dword_2035800 
loc_804BFAA:
	ldrh r0, [r6]
	tst r0, r0
	beq loc_804BFC8
	mov r1, #2
loc_804BFB2:
	ldrb r3, [r6,r1]
	cmp r3, #0xff
	beq loc_804BFC4
	strh r0, [r7]
	strb r3, [r7,#2]
	add r7, #4
	add r1, #1
	cmp r1, #5
	ble loc_804BFB2
loc_804BFC4:
	add r6, #6
	b loc_804BFAA
loc_804BFC8:
	ldr r6, off_804BFEC // =dword_2035800 
	sub r0, r7, r6
	lsr r0, r0, #2
	str r0, [r5,#0x48]
	bl GetRNG2 // () -> int
	lsl r0, r0, #0x16
	lsr r0, r0, #0x16
	ldr r1, [r5,#0x48]
	svc 6
	ldr r7, off_804BFEC // =dword_2035800 
	lsl r0, r1, #2
	add r7, r7, r0
	ldrh r0, [r7]
	ldrb r1, [r7,#2]
	pop {r7}
	mov r8, r7
	pop {r5,pc}
off_804BFEC: .word dword_2035800
	thumb_func_end sub_804BF94

	thumb_local_start
sub_804BFF0:
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r1, [r3,#oGameState_MapGroup]
	ldrb r2, [r3,#oGameState_MapNumber]
	lsl r1, r1, #8
	orr r1, r2
	ldr r2, off_804C018 // =off_804C01C 
	mov r3, #0
loc_804C000:
	ldr r0, [r2]
	cmp r0, r1
	bne loc_804C00C
	ldr r0, [r2,#4]
	ldr r1, [r2,#8]
	b locret_804C014
loc_804C00C:
	add r2, #0xc
	add r3, #0xc
	cmp r3, #0x3c 
	blt loc_804C000
locret_804C014:
	mov pc, lr
	.balign 4, 0x00
off_804C018: .word off_804C01C
off_804C01C: .word 0x104
off_804C020: .word byte_804B070
off_804C024: .word byte_804B00C
	.word 0x501
	.word byte_804B21A
	.word byte_804B011
	.word 0x0
	.word byte_804B52C
	.word byte_804B011
	.word 0x400
	.word byte_804B7BA
	.word byte_804B011
	.word 0x9301
	.word byte_804BB92
	.word byte_804B011
	thumb_func_end sub_804BFF0

	thumb_func_start sub_804C058
sub_804C058:
	push {r4-r7,lr}
	ldr r0, off_804C068 // =off_804C06C
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C068: .word off_804C06C
off_804C06C: .word sub_804C08C+1
	.word sub_804C11C+1
	thumb_func_end sub_804C058

	thumb_func_start sub_804C074
sub_804C074:
	push {r4-r7,lr}
	mov r0, #4
	mov r1, #0xfe
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, off_804C294 // =0x400 
	bic r0, r2
	strh r0, [r1]
	pop {r4-r7,pc}
	thumb_func_end sub_804C074

	thumb_local_start
sub_804C08C:
	push {r4-r7,lr}
	ldr r0, off_804C104 // =byte_869D76C 
	ldr r1, dword_804C108 // =0x600cc00 
	ldr r2, off_804C10C // =0xc0 
	bl sub_8000AC8
	ldr r0, off_804C110 // =byte_869D74C 
	ldr r1, off_804C114 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804C118 // =0x1e09 
	strh r0, [r1,#8]
	mov r0, #0
	strh r0, [r1,#0x16]
	strh r0, [r1,#0x14]
	ldr r1, [r4,#oToolkit_Unk2009740_Ptr]
	mov r0, #0x44 
	strb r0, [r1]
	mov r0, #0x3b 
	strb r0, [r1,#1]
	mov r0, #0
	strb r0, [r1,#2]
	mov r0, #0x10
	strb r0, [r1,#3]
	mov r0, #0xa
	strb r0, [r5,#0x14]
	mov r0, #0
	strb r0, [r5,#0x13]
	strb r0, [r5,#0x15]
	strb r0, [r5,#0x16]
	strb r0, [r5,#0x17]
	strb r0, [r5,#0x11]
	mov r0, #2
	strb r0, [r5,#0x18]
	mov r0, #4
	mov r1, #0xfb
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_804C0EE
	mov r0, #4
	mov r1, #0xfe
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_804C0EE
	bl sub_804C2D0
loc_804C0EE:
	bl sub_804C144
	mov r0, #4
	strb r0, [r5,#0x10]
	mov r0, #4
	mov r1, #0xfe
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_804C11C
	pop {r4-r7,pc}
off_804C104: .word byte_869D76C
dword_804C108: .word 0x600CC00
off_804C10C: .word 0xC0
off_804C110: .word byte_869D74C
off_804C114: .word byte_3001B00
dword_804C118: .word 0x1E09
	thumb_func_end sub_804C08C

	thumb_local_start
sub_804C11C:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne locret_804C142
	bl s_2011C50_8036F40 // () -> zf
	bne locret_804C142
	bl sub_8036F58
	bne locret_804C142
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne locret_804C142
	bl sub_804C144
	bl sub_804C298
locret_804C142:
	pop {r4-r7,pc}
	thumb_func_end sub_804C11C

	thumb_local_start
sub_804C144:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4]
	ldr r2, off_804C294 // =0x400 
	orr r0, r2
	strh r0, [r4]
	ldr r6, off_804C1B0 // =unk_2013960 
	ldrh r0, [r6,#0x14] // (word_2013974 - 0x2013960)
	cmp r0, #0x24 
	ble loc_804C160
	bl sub_804C214
	b loc_804C168
loc_804C160:
	cmp r0, #0
	ble loc_804C19C
	bl sub_804C244
loc_804C168:
	bl sub_804C1D4
	ldrb r6, [r5,#0x13]
	ldrb r0, [r5,#0x14]
	sub r0, #1
	strb r0, [r5,#0x14]
	bne loc_804C186
	mov r0, #0xa
	strb r0, [r5,#0x14]
	cmp r6, #7
	bge loc_804C182
	add r6, #1
	b loc_804C184
loc_804C182:
	mov r6, #0
loc_804C184:
	strb r6, [r5,#0x13]
loc_804C186:
	mov r0, #0
	mov r1, #0
	mov r2, #2
	lsl r6, r6, #2
	ldr r3, off_804C1AC // =off_804C1B4 
	ldr r3, [r3,r6]
	mov r4, #0x20 
	mov r5, #0x20 
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_804C1A8
loc_804C19C:
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	mov r0, #4
	strb r0, [r4]
	mov r6, #0
	strb r6, [r5,#0x11]
locret_804C1A8:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C1AC: .word off_804C1B4
off_804C1B0: .word unk_2013960
off_804C1B4: .word byte_869D82C
	.word byte_869E02C
	.word byte_869E82C
	.word byte_869E82C
	.word byte_869E82C
	.word byte_869E82C
	.word byte_869E82C
	.word byte_869F02C
	thumb_func_end sub_804C144

	thumb_local_start
sub_804C1D4:
	push {r4-r7,lr}
	ldr r0, byte_804C20C+4 // =0x60 
	ldrb r0, [r0,#0x5] // (byte_2013965 - 0x2013960)
	ldr r1, off_804C200 // =dword_804C208
	ldrb r1, [r1,r0]
	ldr r2, off_804C204 // =byte_804C20C 
	ldrb r2, [r2,r0]
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4,#0x14]
	ldrb r3, [r5,#0x15]
	add r3, r3, r1
	strb r3, [r5,#0x15]
	add r0, r0, r3
	strh r0, [r4,#0x14]
	ldrh r0, [r4,#0x16]
	ldrb r3, [r5,#0x16]
	add r3, r3, r2
	strb r3, [r5,#0x16]
	add r0, r0, r3
	strh r0, [r4,#0x16]
	pop {r4-r7,pc}
off_804C200: .word dword_804C208
off_804C204: .word byte_804C20C
dword_804C208: .word 0x404FCFC
byte_804C20C: .byte 0x4, 0xFC, 0xFC, 0x4, 0x60, 0x39, 0x1, 0x2
	thumb_func_end sub_804C1D4

	thumb_local_start
sub_804C214:
	push {r4,lr}
	ldrb r0, [r5,#0x18]
	sub r0, #1
	strb r0, [r5,#0x18]
	bne locret_804C240
	mov r0, #2
	strb r0, [r5,#0x18]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r4,#2]
	cmp r0, #0x10
	blt loc_804C232
	mov r0, #4
	strb r0, [r4]
	b locret_804C240
loc_804C232:
	add r0, #1
	strb r0, [r4,#2]
	ldrb r0, [r4,#3]
	cmp r0, #0
	beq locret_804C240
	sub r0, #1
	strb r0, [r4,#3]
locret_804C240:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_804C214

	thumb_local_start
sub_804C244:
	push {r4-r7,lr}
	ldrb r6, [r5,#0x11]
	cmp r6, #0
	bgt loc_804C26E
	mov r4, r10
	ldr r1, [r4,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r4,#3]
	cmp r0, #0x10
	bge locret_804C292
	mov r0, #0x44 
	strb r0, [r1]
	mov r0, #0x3b 
	strb r0, [r1,#1]
	mov r0, #0x10
	strb r0, [r1,#2]
	mov r0, #0
	strb r0, [r1,#3]
	mov r0, #2
	strb r0, [r5,#0x18]
	add r6, #1
	strb r6, [r5,#0x11]
loc_804C26E:
	ldrb r0, [r5,#0x18]
	sub r0, #1
	strb r0, [r5,#0x18]
	bne locret_804C292
	mov r0, #2
	strb r0, [r5,#0x18]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r4,#3]
	cmp r0, #0x10
	bge locret_804C292
	add r0, #1
	strb r0, [r4,#3]
	ldrb r0, [r4,#2]
	cmp r0, #0
	beq locret_804C292
	sub r0, #1
	strb r0, [r4,#2]
locret_804C292:
	pop {r4-r7,pc}
off_804C294: .word 0x400
	thumb_func_end sub_804C244

	thumb_local_start
sub_804C298:
	push {r5,lr}
	ldr r3, off_804C308 // =unk_2000AC0 
	ldrb r0, [r5,#0x10]
	strb r0, [r3,#0xf] // (byte_2000ACF - 0x2000ac0)
	ldrb r0, [r5,#0x11]
	strb r0, [r3,#0x11] // (byte_2000AD1 - 0x2000ac0)
	ldrb r0, [r5,#0x13]
	strb r0, [r3,#0x13] // (byte_2000AD3 - 0x2000ac0)
	ldrb r0, [r5,#0x15]
	strb r0, [r3,#0x15] // (byte_2000AD5 - 0x2000ac0)
	ldrb r0, [r5,#0x17]
	strb r0, [r3,#0x16] // (byte_2000AD6 - 0x2000ac0)
	ldrb r0, [r5,#0x18]
	strb r0, [r3,#0x17] // (byte_2000AD7 - 0x2000ac0)
	mov r2, r10
	ldr r2, [r2,#oToolkit_RenderInfoPtr]
	ldrh r0, [r2,#0x14]
	strh r0, [r3,#0x1a] // (word_2000ADA - 0x2000ac0)
	ldrh r0, [r2,#0x16]
	strh r0, [r3,#0x1c] // (word_2000ADC - 0x2000ac0)
	mov r2, r10
	ldr r2, [r2,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r2,#2]
	strb r0, [r3,#0x18] // (byte_2000AD8 - 0x2000ac0)
	ldrb r0, [r2,#3]
	strb r0, [r3,#0x19] // (byte_2000AD9 - 0x2000ac0)
	pop {r5,pc}
	.balign 4, 0x00
	thumb_func_end sub_804C298

	thumb_local_start
sub_804C2D0:
	push {r5,lr}
	ldr r3, off_804C308 // =unk_2000AC0 
	ldrb r0, [r3,#0xf] // (byte_2000ACF - 0x2000ac0)
	strb r0, [r5,#0x10]
	ldrb r0, [r3,#0x11] // (byte_2000AD1 - 0x2000ac0)
	strb r0, [r5,#0x11]
	ldrb r0, [r3,#0x13] // (byte_2000AD3 - 0x2000ac0)
	strb r0, [r5,#0x13]
	ldrb r0, [r3,#0x15] // (byte_2000AD5 - 0x2000ac0)
	strb r0, [r5,#0x15]
	ldrb r0, [r3,#0x16] // (byte_2000AD6 - 0x2000ac0)
	strb r0, [r5,#0x17]
	ldrb r0, [r3,#0x17] // (byte_2000AD7 - 0x2000ac0)
	strb r0, [r5,#0x18]
	mov r2, r10
	ldr r2, [r2,#oToolkit_RenderInfoPtr]
	ldrh r0, [r3,#0x1a] // (word_2000ADA - 0x2000ac0)
	strh r0, [r2,#0x14]
	ldrh r0, [r3,#0x1c] // (word_2000ADC - 0x2000ac0)
	strh r0, [r2,#0x16]
	mov r2, r10
	ldrb r0, [r2,#3]
	ldr r2, [r2,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r3,#0x18] // (byte_2000AD8 - 0x2000ac0)
	strb r0, [r2,#2]
	ldrb r0, [r3,#0x19] // (byte_2000AD9 - 0x2000ac0)
	strb r0, [r2,#3]
	pop {r5,pc}
off_804C308: .word unk_2000AC0
	thumb_func_end sub_804C2D0

	thumb_local_start
sub_804C30C:
	push {r4-r7,lr}
	ldr r0, off_804C31C // =off_804C320 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C31C: .word off_804C320
off_804C320: .word sub_804C348+1
	.word sub_804C3BC+1
	thumb_func_end sub_804C30C

	thumb_local_start
sub_804C328:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804C3EC // =0x800 
	bic r0, r2
	strh r0, [r1]
	ldr r0, dword_804C3B8 // =0x1f0b 
	strh r0, [r1,#0xa]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2009740_Ptr]
	mov r0, #8
	strb r0, [r4]
	b locret_804C3C2
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_804C328

	thumb_local_start
sub_804C348:
	push {r4-r7,lr}
	ldr r0, off_804C3A0 // =byte_86A10D0 
	ldr r1, dword_804C3A4 // =0x600ca00 
	ldr r2, off_804C3A8 // =0x320 
	bl sub_8000AC8
	ldr r0, off_804C3AC // =byte_86A10B0 
	ldr r1, off_804C3B0 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804C3B4 // =0x1f09 
	strh r0, [r1,#0xa]
	mov r0, #0
	strh r0, [r1,#0x1a]
	strh r0, [r1,#0x18]
	ldr r1, [r4,#oToolkit_Unk2009740_Ptr]
	mov r0, #0x48 
	strb r0, [r1]
	mov r0, #0x37 
	strb r0, [r1,#1]
	mov r0, #8
	strb r0, [r1,#2]
	mov r0, #0x10
	strb r0, [r1,#3]
	mov r0, #2
	strb r0, [r5,#0x13]
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x20 
	mov r5, #0x20 
	bl sub_80018D0
	bl sub_804C3C4
	mov r0, #4
	strb r0, [r5,#0x10] // (dword_30 - 0x20)
	bl sub_804C3BC
	pop {r4-r7,pc}
off_804C3A0: .word byte_86A10D0
dword_804C3A4: .word 0x600CA00
off_804C3A8: .word 0x320
off_804C3AC: .word byte_86A10B0
off_804C3B0: .word byte_3001B00
dword_804C3B4: .word 0x1F09
dword_804C3B8: .word 0x1F0B
	thumb_func_end sub_804C348

	thumb_local_start
sub_804C3BC:
	push {r4-r7,lr}
	bl sub_804C3C4
locret_804C3C2:
	pop {r4-r7,pc}
	thumb_func_end sub_804C3BC

	thumb_local_start
sub_804C3C4:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4]
	ldr r2, dword_804C3EC // =0x800 
	orr r0, r2
	strh r0, [r4]
	mov r0, #0xc
	mov r1, #0
	mov r2, #3
	ldr r3, off_804C3E8 // =byte_86A13F0 
	mov r4, #6
	mov r5, #0xc
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_804C3E4
locret_804C3E4:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C3E8: .word byte_86A13F0
dword_804C3EC: .word 0x800
byte_804C3F0: .byte 0x0, 0x0, 0x4A, 0xFF, 0x0, 0x0, 0x46, 0xFF, 0x0, 0x0, 0xE0, 0xFF
	.word byte_86A1940
	.word 0x106060
	thumb_func_end sub_804C3C4

	thumb_local_start
sub_804C404:
	push {r4-r7,lr}
	ldr r7, off_804C428 // =byte_804C3F0 
	ldrb r0, [r5,#0xc]
	mov r1, #0x14
	mul r0, r1
	add r7, r7, r0
	ldr r0, off_804C41C // =off_804C420 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
off_804C41C: .word off_804C420
off_804C420: .word sub_804C43C+1
	.word sub_804C478+1
off_804C428: .word byte_804C3F0
	thumb_func_end sub_804C404

	thumb_local_start
sub_804C42C:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804C4AC // =0x4800 
	bic r0, r2
	strh r0, [r1]
	pop {r4-r7,pc}
	thumb_func_end sub_804C42C

	thumb_local_start
sub_804C43C:
	push {r4-r7,lr}
	ldr r0, off_804C468 // =byte_86A1480
	ldr r1, dword_804C46C // =0x600cb00 
	ldr r2, off_804C470 // =0x4c0 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804C474 // =0x1f82 
	strh r0, [r1,#0xa]
	mov r4, r10
	ldr r1, [r4,#oToolkit_Unk200f3a0_Ptr]
	mov r0, #0x3f 
	strb r0, [r1,#9]
	mov r0, #0x17
	strb r0, [r1,#0xa]
	mov r0, #4
	strb r0, [r5,#0x10]
	bl sub_804C478
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C468: .word byte_86A1480
dword_804C46C: .word 0x600CB00
off_804C470: .word 0x4C0
dword_804C474: .word 0x1F82
	thumb_func_end sub_804C43C

	thumb_local_start
sub_804C478:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804C4AC // =0x4800 
	orr r0, r2
	strh r0, [r1]
	mov r0, r7
	ldr r1, [r7]
	ldr r2, [r7,#4]
	ldr r3, [r7,#8]
	ldrb r0, [r5,#0xd]
	lsl r0, r0, #0x10
	sub r3, r3, r0
	sub sp, sp, #0xc
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	mov r0, sp
	ldr r1, [r7,#0xc]
	ldrb r2, [r7,#0x10]
	ldrb r3, [r7,#0x11]
	bl loc_80024D8
	add sp, sp, #0xc
	pop {r4-r7,pc}
dword_804C4AC: .word 0x4800
dword_804C4B0: .word 0x0
	.word iPalette3001B60
	.word 0xFF09080C
	.word 0x80001084
	.word 0x4
	.word 0x800014A5
	.word 0x4
	.word 0x800018C6
	.word 0x4
	.word 0x800014A5
	.word 0x4
	.word 0x1
dword_804C4E0: .word 0x0
	.word iPallete3001750
	.word 0xFF09090C
	.word 0x80001084
	.word 0x4
	.word 0x800014A5
	.word 0x4
	.word 0x800018C6
	.word 0x4
	.word 0x800014A5
	.word 0x4
	.word 0x1
	thumb_func_end sub_804C478

	thumb_local_start
sub_804C510:
	push {r4-r7,lr}
	ldr r0, off_804C520 // =off_804C524 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_804C520: .word off_804C524
off_804C524: .word sub_804C53C+1
	.word sub_804C5C0+1
	thumb_func_end sub_804C510

	thumb_local_start
sub_804C52C:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804C620 // =0x800 
	bic r0, r2
	strh r0, [r1]
	pop {r4-r7,pc}
	thumb_func_end sub_804C52C

	thumb_local_start
sub_804C53C:
	push {r4-r7,lr}
	ldr r0, off_804C588 // =off_804C58C 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	ldr r1, dword_804C594 // =0x600cf40 
	ldr r2, off_804C598 // =byte_804C59C
	ldrb r3, [r5,#0xc]
	ldr r2, [r2,r3]
	bl sub_8000AC8
	ldr r0, off_804C5A4 // =off_804C5A8 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	ldr r1, off_804C5B0 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804C5B4 // =0x1f09 
	strh r0, [r1,#0xa]
	bl sub_8001974
	ldrb r0, [r5,#0xc]
	tst r0, r0
	beq loc_804C57C
	ldr r0, off_804C5B8 // =dword_804C4B0 
	bl sub_8001B1C
	ldr r0, off_804C5BC // =dword_804C4E0 
	bl sub_8001B1C
loc_804C57C:
	mov r0, #4
	strb r0, [r5,#0x10]
	bl sub_804C5C0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C588: .word off_804C58C
off_804C58C: .word byte_86A1A80
	.word byte_86A2340
dword_804C594: .word 0x600CF40
off_804C598: .word byte_804C59C
byte_804C59C: .byte 0xA0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x0, 0x0
off_804C5A4: .word off_804C5A8
off_804C5A8: .word byte_86A1A60
	.word byte_86A1A60
off_804C5B0: .word byte_3001B00
dword_804C5B4: .word 0x1F09
off_804C5B8: .word dword_804C4B0
off_804C5BC: .word dword_804C4E0
	thumb_func_end sub_804C53C

	thumb_local_start
sub_804C5C0:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4]
	ldr r2, dword_804C620 // =0x800 
	orr r0, r2
	strh r0, [r4]
	ldr r0, off_804C604 // =off_804C608 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldr r0, off_804C610 // =off_804C614 
	ldrb r1, [r5,#0xd]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0
	mov r1, #0
	mov r2, #3
	ldr r3, off_804C5F8 // =off_804C5FC 
	ldrb r4, [r5,#0xc]
	ldr r3, [r3,r4]
	mov r4, #0x20 
	mov r5, #0x20 
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_804C5F8: .word off_804C5FC
off_804C5FC: .word byte_86A1B20
	.word byte_86A23E0
off_804C604: .word off_804C608
off_804C608: .word sub_804C624+1
	.word sub_804C658+1
off_804C610: .word off_804C614
off_804C614: .word sub_804C668+1
	.word sub_804C66C+1
	.word sub_804C694+1
dword_804C620: .word 0x800
	thumb_func_end sub_804C5C0

	thumb_local_start
sub_804C624:
	push {r4-r7,lr}
	ldr r3, off_804C650 // =math_sinTable 
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	ldr r1, dword_804C654 // =0x1fe 
	and r0, r1
	ldrsh r0, [r3,r0]
	asr r0, r0, #4
	strh r0, [r4,#0x18]
	ldrh r1, [r5,#0x14]
	ldrh r0, [r4,#0x16]
	strh r0, [r5,#0x14]
	sub r1, r1, r0
	bge loc_804C644
	mov r1, #0
loc_804C644:
	ldrh r0, [r4,#0x1a]
	sub r0, #2
	sub r0, r0, r1
	strh r0, [r4,#0x1a]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C650: .word math_sinTable
dword_804C654: .word 0x1FE
	thumb_func_end sub_804C624

	thumb_local_start
sub_804C658:
	push {r4-r7,lr}
	ldrh r0, [r4,#0x1a]
	sub r0, #0xc
	strh r0, [r4,#0x1a]
	ldrh r0, [r4,#0x18]
	add r0, #0xc
	strh r0, [r4,#0x18]
	pop {r4-r7,pc}
	thumb_func_end sub_804C658

	thumb_local_start
sub_804C668:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_804C668

	thumb_local_start
sub_804C66C:
	push {r4-r7,lr}
	ldr r0, off_804C678 // =off_804C67C 
	bl sub_804C6C4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C678: .word off_804C67C
off_804C67C: .word byte_804C684
	.word byte_804C684
byte_804C684: .byte 0x2, 0xE, 0x4, 0xC, 0x6, 0xA, 0x8, 0x8, 0xA, 0x6, 0xC, 0x4, 0xE
	.byte 0x2, 0x10, 0x0
	thumb_func_end sub_804C66C

	thumb_local_start
sub_804C694:
	push {r4-r7,lr}
	ldr r0, off_804C6A8 // =off_804C6AC 
	bl sub_804C6C4
	ldrb r0, [r5,#0xd]
	tst r0, r0
	bne locret_804C6A6
	bl sub_8002484
locret_804C6A6:
	pop {r4-r7,pc}
off_804C6A8: .word off_804C6AC
off_804C6AC: .word dword_804C6B4
	.word dword_804C6B4
dword_804C6B4: .word 0x40C020E
	.word byte_808060A
	.word 0xC040A06
	.word 0x10000E02
	thumb_func_end sub_804C694

	thumb_local_start
sub_804C6C4:
	push {r4-r7,lr}
	mov r2, r0
	ldr r0, [r5,#0x18]
	lsr r0, r0, #3
	ldrb r3, [r5,#0xc]
	ldr r2, [r2,r3]
	lsl r0, r0, #1
	add r2, r2, r0
	mov r4, r10
	ldr r1, [r4,#oToolkit_Unk2009740_Ptr]
	mov r0, #0x48 
	strb r0, [r1]
	mov r0, #0x37 
	strb r0, [r1,#1]
	ldrb r0, [r2]
	strb r0, [r1,#2]
	ldrb r0, [r2,#1]
	strb r0, [r1,#3]
	ldr r0, [r5,#0x18]
	add r0, #1
	str r0, [r5,#0x18]
	cmp r0, #0x40 
	blt locret_804C6FC
	mov r0, #0
	str r0, [r5,#0x18]
	strb r0, [r5,#0xd]
	bl zeroFill_e2009740
locret_804C6FC:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_804C6C4

	thumb_local_start
sub_804C700:
	push {r4-r7,lr}
	ldr r0, off_804C710 // =off_804C714 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C710: .word off_804C714
off_804C714: .word sub_804C72C+1
	.word sub_804C770+1
	thumb_func_end sub_804C700

	thumb_local_start
sub_804C71C:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804C7C0 // =0x800 
	bic r0, r2
	strh r0, [r1]
	pop {r4-r7,pc}
	thumb_func_end sub_804C71C

	thumb_local_start
sub_804C72C:
	push {r4-r7,lr}
	ldr r0, off_804C758 // =byte_86A2C00 
	ldr r1, dword_804C75C // =0x600cf40 
	ldr r2, off_804C760 // =0x80 
	bl sub_8000AC8
	ldr r0, off_804C764 // =byte_86A2BE0 
	ldr r1, off_804C768 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804C76C // =0x1f09 
	strh r0, [r1,#0xa]
	bl sub_804C844
	mov r0, #4
	strb r0, [r5,#0x10]
	bl sub_804C770
	pop {r4-r7,pc}
off_804C758: .word byte_86A2C00
dword_804C75C: .word 0x600CF40
off_804C760: .word 0x80
off_804C764: .word byte_86A2BE0
off_804C768: .word byte_3001B00
dword_804C76C: .word 0x1F09
	thumb_func_end sub_804C72C

	thumb_local_start
sub_804C770:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4]
	ldr r2, dword_804C7C0 // =0x800 
	orr r0, r2
	strh r0, [r4]
	ldrh r0, [r4,#0x1a]
	sub r0, #0xc
	strh r0, [r4,#0x1a]
	ldrh r0, [r4,#0x18]
	add r0, #0xc
	strh r0, [r4,#0x18]
	ldr r0, off_804C7B0 // =off_804C7B4 
	ldrb r1, [r5,#0xd]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_804C818
	mov r0, #0
	mov r1, #0
	mov r2, #3
	ldr r3, off_804C7AC // =byte_86A2C80 
	mov r4, #0x20 
	mov r5, #0x20 
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C7AC: .word byte_86A2C80
off_804C7B0: .word off_804C7B4
off_804C7B4: .word sub_804C7C4+1
	.word sub_804C7C8+1
	.word sub_804C7EC+1
dword_804C7C0: .word 0x800
	thumb_func_end sub_804C770

	thumb_local_start
sub_804C7C4:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_804C7C4

	thumb_local_start
sub_804C7C8:
	push {r4-r7,lr}
	ldr r0, off_804C7D4 // =off_804C7D8 
	bl sub_804C6C4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804C7D4: .word off_804C7D8
off_804C7D8: .word byte_804C7DC
byte_804C7DC: .byte 0x2, 0xE, 0x4, 0xC, 0x6, 0xA, 0x8, 0x8, 0xA, 0x6, 0xC, 0x4, 0xE
	.byte 0x2, 0x10, 0x0
	thumb_func_end sub_804C7C8

	thumb_local_start
sub_804C7EC:
	push {r4-r7,lr}
	ldr r0, off_804C800 // =off_804C804 
	bl sub_804C6C4
	ldrb r0, [r5,#0xd]
	tst r0, r0
	bne locret_804C7FE
	bl sub_8002484
locret_804C7FE:
	pop {r4-r7,pc}
off_804C800: .word off_804C804
off_804C804: .word dword_804C808
dword_804C808: .word 0x40C020E
	.word byte_808060A
	.word 0xC040A06
	.word 0x10000E02
	thumb_func_end sub_804C7EC

	thumb_local_start
sub_804C818:
	push {r4-r7,lr}
	ldr r0, [r5,#0x14]
	sub r0, #1
	blt loc_804C824
	str r0, [r5,#0x14]
	b locret_804C840
loc_804C824:
	bl GetRNG2 // () -> int
	ldr r1, dword_804C84C // =0xff 
	and r0, r1
	ldr r1, off_804C850 // =0x12c 
	add r0, r0, r1
	str r0, [r5,#0x14]
	ldr r0, off_804C854 // =byte_804C858
	ldrb r1, [r5,#0xe]
	ldrh r0, [r0,r1]
	tst r0, r0
	beq locret_804C840
	bl sound_play // () -> void
locret_804C840:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_804C818

	thumb_local_start
sub_804C844:
	push {r4-r7,lr}
	mov r0, #0x10
	str r0, [r5,#0x14]
	pop {r4-r7,pc}
dword_804C84C: .word 0xFF
off_804C850: .word 0x12C
off_804C854: .word byte_804C858
byte_804C858: .byte 0xD9, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_804C860: .byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x1C, 0x0, 0x0, 0x0
	.byte 0xC6, 0xFE, 0x0, 0x0, 0x18, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0
	.byte 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x38, 0x1, 0x0, 0x0, 0x10, 0xFF, 0x0, 0x0, 0x18
	.byte 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0
	.byte 0x0, 0xA0, 0x1, 0x0, 0x0, 0xC, 0xFF, 0x0, 0x0, 0x8, 0x0, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x18, 0x2, 0x0, 0x0
	.byte 0xC, 0x0, 0x0, 0x0, 0x18, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0
	.byte 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0xC2, 0xFF, 0x0, 0x0, 0xE2, 0xFE, 0x0, 0x0, 0x88
	.byte 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0
	.byte 0x0, 0x78, 0x0, 0x0, 0x0, 0xE0, 0xFD, 0x0, 0x0, 0x8, 0x0, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0xA4, 0xFF, 0x0, 0x0
	.byte 0x30, 0xFE, 0x0, 0x0, 0x8, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0
	.byte 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x30, 0x1, 0x0, 0x0, 0x9A, 0xFE, 0x0, 0x0, 0x8
	.byte 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0
	.byte 0x0, 0x88, 0xFF, 0x0, 0x0, 0xB4, 0xFE, 0x0, 0x0, 0x38, 0x0, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x8C, 0xFF, 0x0, 0x0
	.byte 0xB4, 0xFE, 0x0, 0x0, 0x28, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0
	.byte 0x0, 0x80, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8
	.byte 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0
	.byte 0x0, 0xE8, 0x1, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x10, 0x0, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0
	.byte 0x50, 0xFE, 0x0, 0x0, 0x50, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x40, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0
	.byte 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0x40, 0xFE, 0x0, 0x0, 0x48
	.byte 0x0, 0xFF, 0x0, 0x0, 0x0
	thumb_func_end sub_804C844

	thumb_local_start
sub_804CA90:
	push {r4-r7,lr}
	sub sp, sp, #0x28
	ldr r7, off_804CADC // =byte_804C860 
	ldrb r0, [r5,#0xc]
	mov r1, #0x28 
	mul r0, r1
	add r7, r7, r0
	ldr r0, [r7,#0x18]
	cmp r0, #1
	bne loc_804CABE
	mov r0, r7
	mov r1, sp
	mov r2, #0x28 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r7, sp
	bl sub_809E1AE
	str r0, [r7,#0x18]
	str r1, [r7,#0x1c]
	ldr r1, [r7,#0x20]
	add r1, r1, r2
	str r1, [r7,#0x20]
loc_804CABE:
	ldr r0, off_804CACC // =off_804CAD0 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	add sp, sp, #0x28
	pop {r4-r7,pc}
off_804CACC: .word off_804CAD0
off_804CAD0: .word sub_804CB0C+1
	.word sub_804CB64+1
	.word nullsub_804CBA0+1
off_804CADC: .word byte_804C860
	thumb_func_end sub_804CA90

	thumb_local_start
sub_804CAE0:
	push {r4-r7,lr}
	bl zeroFill_e2009740
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r0, [r1,#oGameState_MapGroup]
	ldrb r1, [r1,#oGameState_MapNumber]
	bl map_8001708
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804CB9C // =0x2800 
	bic r0, r2
	strh r0, [r1]
	ldr r0, off_804CB08 // =sub_8006A5C+1 
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CB08: .word sub_8006A5C+1
	thumb_func_end sub_804CAE0

	thumb_local_start
sub_804CB0C:
	push {r4-r7,lr}
	ldr r0, off_804CB48 // =byte_86A34C0 
	ldr r1, dword_804CB4C // =0x600cfe0 
	ldr r2, dword_804CB50 // =0x20 
	bl sub_8000AC8
	ldrb r1, [r5,#0xd]
	lsl r1, r1, #5
	ldr r0, off_804CB54 // =byte_86A3480 
	add r0, r0, r1
	ldr r1, off_804CB58 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804CB5C // =0x1f09 
	strh r0, [r1,#0xa]
	mov r0, #0
	strh r0, [r1,#0x1a]
	strh r0, [r1,#0x18]
	mov r0, r7
	ldr r1, off_804CB60 // =sub_8006920+1 
	mov lr, pc
	bx r1
	mov r0, #4
	strb r0, [r5,#0x10]
	bl sub_804CB64
	pop {r4-r7,pc}
off_804CB48: .word byte_86A34C0
dword_804CB4C: .word 0x600CFE0
dword_804CB50: .word 0x20
off_804CB54: .word byte_86A3480
off_804CB58: .word byte_3001B00
dword_804CB5C: .word 0x1F09
off_804CB60: .word sub_8006920+1
	thumb_func_end sub_804CB0C

	thumb_local_start
sub_804CB64:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804CB9C // =0x2800 
	orr r0, r2
	strh r0, [r1]
	push {r5}
	mov r0, #0
	mov r1, #0
	mov r2, #3
	ldr r3, off_804CB94 // =byte_86A34E0 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	ldr r0, off_804CB98 // =sub_8006990+1 
	mov lr, pc
	bx r0
	beq locret_804CB92
	mov r0, #8
	strb r0, [r5,#0x10]
locret_804CB92:
	pop {r4-r7,pc}
off_804CB94: .word byte_86A34E0
off_804CB98: .word sub_8006990+1
dword_804CB9C: .word 0x2800
	thumb_func_end sub_804CB64

	thumb_local_start
nullsub_804CBA0:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end nullsub_804CBA0

	thumb_local_start
sub_804CBA4:
	push {r4-r7,lr}
	ldr r0, off_804CBB4 // =off_804CBB8 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CBB4: .word off_804CBB8
off_804CBB8: .word sub_804CBDC+1
	.word sub_804CC8E+1
	thumb_func_end sub_804CBA4

	thumb_local_start
sub_804CBC0:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804CD1C // =0x800 
	bic r0, r2
	strh r0, [r1]
	ldr r0, dword_804CBD8 // =0x3f0b 
	strh r0, [r1,#0xa]
	bl zeroFill_e2009740
	pop {r4-r7,pc}
dword_804CBD8: .word 0x3F0B
	thumb_func_end sub_804CBC0

	thumb_local_start
sub_804CBDC:
	push {r4-r7,lr}
	ldr r0, off_804CC24 // =byte_86A39B0 
	ldr r1, dword_804CC28 // =0x600cfe0 
	ldr r2, dword_804CC2C // =0x20 
	bl sub_8000AC8
	ldr r0, off_804CC30 // =byte_86A3990 
	ldr r1, off_804CC34 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, dword_804CC38 // =0x1f09 
	strh r0, [r1,#0xa]
	ldr r1, [r4,#oToolkit_Unk2009740_Ptr]
	mov r0, #0x48 
	strb r0, [r1]
	mov r0, #0x37 
	strb r0, [r1,#1]
	bl sub_8001974
	ldr r0, off_804CC3C // =off_804CC40 
	ldrb r1, [r5,#0xc]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_804CCF0
	mov r0, #4
	strb r0, [r5,#0x10]
	bl sub_804CC8E
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CC24: .word byte_86A39B0
dword_804CC28: .word 0x600CFE0
dword_804CC2C: .word 0x20
off_804CC30: .word byte_86A3990
off_804CC34: .word byte_3001B00
dword_804CC38: .word 0x1F09
off_804CC3C: .word off_804CC40
off_804CC40: .word sub_804CC58+1
	.word sub_804CC58+1
	.word sub_804CC58+1
	.word sub_804CC6E+1
	.word sub_804CC7E+1
	.word sub_804CC7E+1
	thumb_func_end sub_804CBDC

	thumb_local_start
sub_804CC58:
	push {r4-r7,lr}
	mov r0, #3
	bl sub_8001B6C
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xc
	strb r0, [r1,#2]
	mov r0, #0x10
	strb r0, [r1,#3]
	pop {r4-r7,pc}
	thumb_func_end sub_804CC58

	thumb_local_start
sub_804CC6E:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xc
	strb r0, [r1,#2]
	mov r0, #0x10
	strb r0, [r1,#3]
	pop {r4-r7,pc}
	thumb_func_end sub_804CC6E

	thumb_local_start
sub_804CC7E:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2009740_Ptr]
	mov r0, #8
	strb r0, [r1,#2]
	mov r0, #0x10
	strb r0, [r1,#3]
	pop {r4-r7,pc}
	thumb_func_end sub_804CC7E

	thumb_local_start
sub_804CC8E:
	push {r4-r7,lr}
	ldr r0, off_804CCA0 // =off_804CCA4 
	ldrb r1, [r5,#0xc]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CCA0: .word off_804CCA4
off_804CCA4: .word sub_804CCBC+1
	.word sub_804CCBC+1
	.word sub_804CCBC+1
	.word sub_804CCBC+1
	.word sub_804CCC0+1
	.word sub_804CCC0+1
	thumb_func_end sub_804CC8E

	thumb_local_start
sub_804CCBC:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_804CCBC

	thumb_local_start
sub_804CCC0:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	mov r1, #0xf
	and r0, r1
	ldr r1, off_804CCDC // =byte_804CCE0 
	ldrb r0, [r1,r0]
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2009740_Ptr]
	strb r0, [r1,#2]
	mov r0, #0x10
	strb r0, [r1,#3]
	pop {r4-r7,pc}
off_804CCDC: .word byte_804CCE0
byte_804CCE0: .byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9
	thumb_func_end sub_804CCC0

	thumb_local_start
sub_804CCF0:
	push {r4-r7,lr}
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r1]
	ldr r2, dword_804CD1C // =0x800 
	orr r0, r2
	strh r0, [r1]
	mov r0, #0
	strh r0, [r1,#0x1a]
	strh r0, [r1,#0x18]
	mov r0, #0
	mov r1, #0
	mov r2, #3
	ldr r3, off_804CD18 // =byte_86A39D0 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CD18: .word byte_86A39D0
dword_804CD1C: .word 0x800
	thumb_func_end sub_804CCF0

	thumb_local_start
sub_804CD20:
	push {r4-r7,lr}
	ldr r0, off_804CD30 // =off_804CD34 
	ldrb r1, [r5,#0x10]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CD30: .word off_804CD34
off_804CD34: .word sub_804CD5C+1
	.word sub_804CDCC+1
	.word 0x4654B5F0
	.word 0x880868A1
	.word 0x43904A47
	.word 0x481F8008
	.word 0x46548148
	.word 0x20086A24
	.word 0xE03C7020
	.word 0xBDF0
	thumb_func_end sub_804CD20

	thumb_local_start
sub_804CD5C:
	push {r4-r7,lr}
	ldr r0, off_804CDB0 // =byte_86A3EA0 
	ldr r1, dword_804CDB4 // =0x600cc00 
	ldr r2, off_804CDB8 // =0xa0 
	bl sub_8000AC8
	ldr r0, off_804CDBC // =byte_86A3E80 
	ldr r1, off_804CDC0 // =byte_3001B00 
	mov r2, #0x20 
	bl sub_8000AC8
	mov r4, r10
	ldr r1, [r4,#oToolkit_RenderInfoPtr]
	ldr r0, byte_804CDC4 // =0x9
	strh r0, [r1,#0xa]
	mov r0, #0
	strh r0, [r1,#0x1a]
	strh r0, [r1,#0x18]
	ldr r1, [r4,#oToolkit_Unk2009740_Ptr]
	mov r0, #0x48 
	strb r0, [r1]
	mov r0, #0x37 
	strb r0, [r1,#1]
	mov r0, #0x10
	strb r0, [r1,#2]
	mov r0, #0
	strb r0, [r1,#3]
	mov r0, #0
	strb r0, [r5,#0x13]
	strb r0, [r5,#0x14]
	strb r0, [r5,#0x11]
	mov r0, #2
	strb r0, [r5,#0x15]
	bl sub_8001974
	bl sub_804CDD4
	mov r0, #4
	strb r0, [r5,#0x10]
	bl sub_804CDCC
	pop {r4-r7,pc}
off_804CDB0: .word byte_86A3EA0
dword_804CDB4: .word 0x600CC00
off_804CDB8: .word 0xA0
off_804CDBC: .word byte_86A3E80
off_804CDC0: .word byte_3001B00
byte_804CDC4: .byte 0x9, 0x1F, 0x0, 0x0, 0xB, 0x1F, 0x0, 0x0
	thumb_func_end sub_804CD5C

	thumb_local_start
sub_804CDCC:
	push {r4-r7,lr}
	bl sub_804CDD4
	pop {r4-r7,pc}
	thumb_func_end sub_804CDCC

	thumb_local_start
sub_804CDD4:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4]
	ldr r2, dword_804CE64 // =0x800 
	orr r0, r2
	strh r0, [r4]
	mov r0, #0xb
	mov r1, #0xf0
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_804CDF0
	bl sub_804CE3C
loc_804CDF0:
	bl sub_804CE0C
	mov r0, #0
	mov r1, #0
	mov r2, #3
	ldr r3, off_804CE08 // =byte_86A3F40 
	mov r4, #0x20 
	mov r5, #0x20 
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_804CE06
locret_804CE06:
	pop {r4-r7,pc}
off_804CE08: .word byte_86A3F40
	thumb_func_end sub_804CDD4

	thumb_local_start
sub_804CE0C:
	push {r4-r7,lr}
	ldr r1, off_804CE34 // =dword_804CE38 
	ldrb r1, [r1]
	ldrb r2, [r1,#1]
	mov r4, r10
	ldr r4, [r4,#oToolkit_RenderInfoPtr]
	ldrh r0, [r4,#0x18]
	ldrb r3, [r5,#0x13]
	add r3, r3, r1
	strb r3, [r5,#0x13]
	add r0, r0, r3
	strh r0, [r4,#0x18]
	ldrh r0, [r4,#0x1a]
	ldrb r3, [r5,#0x14]
	add r3, r3, r2
	strb r3, [r5,#0x14]
	add r0, r0, r3
	strh r0, [r4,#0x1a]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CE34: .word dword_804CE38
dword_804CE38: .word 0x808
	thumb_func_end sub_804CE0C

	thumb_local_start
sub_804CE3C:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x15]
	sub r0, #1
	strb r0, [r5,#0x15]
	bne locret_804CE62
	mov r0, #2
	strb r0, [r5,#0x15]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r4,#3]
	cmp r0, #0x10
	bge locret_804CE62
	add r0, #1
	strb r0, [r4,#3]
	ldrb r0, [r4,#2]
	cmp r0, #0
	beq locret_804CE62
	sub r0, #1
	strb r0, [r4,#2]
locret_804CE62:
	pop {r4-r7,pc}
dword_804CE64: .word 0x800
off_804CE68: .word byte_804CE70
	.word off_804CE80
byte_804CE70: .byte 0x0, 0x0, 0x14, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_804CE80: .word unk_3000000
	.word 0, 0
	.byte 0, 0, 0, 0
	thumb_func_end sub_804CE3C

	thumb_func_start sub_804CE90
sub_804CE90:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_804CEEC // =off_804CE68 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_804CEF0 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_804CEF8 // =off_804CEFC 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_804CF84
	ldr r0, off_804CEF4 // =off_804D0E4 
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#0x64]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_804CEEC: .word off_804CE68
off_804CEF0: .word unk_2037800
off_804CEF4: .word off_804D0E4
off_804CEF8: .word off_804CEFC
off_804CEFC: .word dword_804CF1C
	.word byte_804CF20
	.word byte_804CF26
	.word byte_804CF28
	.word byte_804CF2A
	.word byte_804CF2C
	.word byte_804CF2E
	.word byte_804CF30
dword_804CF1C: .word 0xFFFF1318
byte_804CF20: .byte 0x1C, 0xA, 0x18, 0x13, 0xFF, 0xFF
byte_804CF26: .byte 0xFF, 0xFF
byte_804CF28: .byte 0xFF, 0xFF
byte_804CF2A: .byte 0xFF, 0xFF
byte_804CF2C: .byte 0xFF, 0xFF
byte_804CF2E: .byte 0xFF, 0xFF
byte_804CF30: .byte 0xFF, 0xFF
	thumb_func_end sub_804CE90

	thumb_func_start sub_804CF32
sub_804CF32:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_804CF40 // =off_804CF44 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
off_804CF40: .word off_804CF44
off_804CF44: .word dword_804CF64
	.word dword_804CF68
	.word dword_804CF6C
	.word dword_804CF70
	.word dword_804CF74
	.word dword_804CF78
	.word dword_804CF7C
	.word dword_804CF80
dword_804CF64: .word 0xFFFFFFFF
dword_804CF68: .word 0xFFFFFFFF
dword_804CF6C: .word 0xFFFFFFFF
dword_804CF70: .word 0xFFFFFFFF
dword_804CF74: .word 0xFFFFFFFF
dword_804CF78: .word 0xFFFFFFFF
dword_804CF7C: .word 0xFFFFFFFF
dword_804CF80: .word 0xFFFFFFFF
	thumb_func_end sub_804CF32

	thumb_func_start sub_804CF84
sub_804CF84:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_804CF98 // =off_804CF9C 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_804CF98: .word off_804CF9C
off_804CF9C:
	// <endpool> <endfile>
	.word byte_804CFBC
	.word byte_804CFD4
	.word dword_804D08C
	.word dword_804D090
	.word dword_804D094
	.word dword_804D098
	.word dword_804D09C
	.word dword_804D0A0
	thumb_func_end sub_804CF84

/*For debugging purposes, connect comment at any range!*/
