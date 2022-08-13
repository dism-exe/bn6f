
	arm_func_start sub_3005B00
sub_3005B00:
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	ldrh r1, [r3,#8]
	mrs r0, SPSR
	stmfd sp!, {r0-r3,lr}
	mov r0, #0
	strh r0, [r3,#8]
	and r1, r2, r2,LSR#16
	ldr r0, off_3005C94 // =dword_3001D60 
	ldr r0, [r0]
	tst r0, r0
	bne loc_3005B7C
	mov r12, #8
	ands r0, r1, #4
	bne loc_3005C30
	mov r0, #1
	strh r0, [r3,#8]
	mov r12, #0x1c
	ands r0, r1, #0x80
	bne loc_3005C30
	mov r12, #0x18
	ands r0, r1, #0x40
	bne loc_3005C30
	mov r12, #0
	ands r0, r1, #1
	bne loc_3005C30
	mov r12, #4
	ands r0, r1, #2
	bne loc_3005C30
	b loc_3005BC0
loc_3005B7C:
	mov r0, #1
	strh r0, [r3,#8]
	mov r12, #0x1c
	ands r0, r1, #0x80
	bne loc_3005C30
	mov r12, #0x18
	ands r0, r1, #0x40
	bne loc_3005C30
	mov r12, #0
	ands r0, r1, #1
	bne loc_3005C30
	mov r12, #4
	ands r0, r1, #2
	bne loc_3005C30
	mov r12, #8
	ands r0, r1, #4
	bne loc_3005C30
loc_3005BC0:
	mov r12, #0xc
	ands r0, r1, #8
	bne loc_3005C30
	mov r12, #0x10
	ands r0, r1, #0x10
	bne loc_3005C30
	mov r12, #0x14
	ands r0, r1, #0x20
	bne loc_3005C30
	mov r12, #0x20 
	ands r0, r1, #0x100
	bne loc_3005C30
	mov r12, #0x24 
	ands r0, r1, #0x200
	bne loc_3005C30
loc_3005BFC:
	mov r12, #0x28 
	ands r0, r1, #0x400
	bne loc_3005C30
	mov r12, #0x2c 
	ands r0, r1, #0x800
	bne loc_3005C30
	mov r12, #0x30 
	ands r0, r1, #0x1000
	bne loc_3005C30
	mov r12, #0x34 
	ands r0, r1, #0x2000
	strneb r0, [r3,#0xfffffe84] // -0x17C
loc_3005C2C:
	bne loc_3005C2C
loc_3005C30:
	strh r0, [r3,#2]
	ldr r1, byte_3005C98 // =0xc8 
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, CPSR
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr CPSR_cf, r3
	ldr r1, off_3005C9C // =off_3000E70 
	add r1, r1, r12
	ldr r0, [r1]
	stmfd sp!, {lr}
	adr lr, loc_3005C6C
	bx r0
loc_3005C6C:
	ldmfd sp!, {lr}
	mrs r3, CPSR
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr CPSR_cf, r3
	ldmfd sp!, {r0-r3,lr}
	strh r2, [r3]
	strh r1, [r3,#8]
	msr SPSR_cf, r0
	bx lr
	.balign 4, 0
off_3005C94: .word dword_3001D60 // type: bool*
byte_3005C98: .word 0x20c8
off_3005C9C: .word off_3000E70
off_3005CA0: .word sub_3005CDA+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word libSIO814469C+1
	.word sub_81446AC+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	thumb_func_start nullsub_38
nullsub_38:
	bx lr
	thumb_func_end nullsub_38

	thumb_local_start
sub_3005CDA:
	push {lr}
	ldr r0, off_3005D20 // =eStruct200BC30_getJumpOffset00_pushpop+1
	mov lr, pc
	bx r0
	mov r1, r0
	ldr r0, jt_81D620C // =iJumpTable3005D10
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r0}
	mov lr, r0
	thumb_func_end sub_3005CDA

	thumb_local_start
sub_3005CF0:
	push {lr}
	bl sub_3005D24
	pop {r0}
	mov lr, r0
	ldr r0, off_3005D04 // =dword_200A870
	ldr r1, [r0]
	add r1, #1
	str r1, [r0]
	bx lr
	.balign 4, 0
off_3005D04: .word dword_200A870
	.word eLinkState // eLinkState
jt_81D620C: .word iJumpTable3005D10
iJumpTable3005D10: .word sub_803DE72+1
	.word sub_813D5DC+1
	.word sub_813D5DC+1
	.word sub_813D5DC+1
off_3005D20: .word eStruct200BC30_getJumpOffset00_pushpop+1
	thumb_func_end sub_3005CF0

	thumb_local_start
sub_3005D24:
	push {lr}
	ldr r1, off_3005D68 // =byte_20081B0
	ldrb r3, [r1]
	tst r3, r3
	beq locret_3005D64
	ldr r0, off_3005D6C // =DMA0SourceAddress
	ldr r1, dword_3005D70 // =0x80000000
	ldr r2, [r0,#8]
	bic r2, r1
	str r2, [r0,#8]
	cmp r3, #0x80
	bne loc_3005D44
	ldr r1, off_3005D68 // =byte_20081B0
	mov r0, #0
	strb r0, [r1]
	b locret_3005D64
loc_3005D44:
	ldr r1, off_3005D68 // =byte_20081B0
	ldr r2, [r1,#0xc]
	str r2, [r0]
	ldr r2, [r1,#8]
	str r2, [r0,#4]
	ldrb r2, [r1,#1]
	ldrh r3, [r1,#2]
	lsl r3, r3, #0x10
	orr r2, r3
	str r2, [r0,#8]
	ldr r2, [r1,#0x10]
	ldr r0, [r1,#4]
	ldr r1, [r1,#0xc]
	ldr r3, off_3005D74 // =sub_80068E0+1
	mov lr, pc
	bx r3
locret_3005D64:
	pop {pc}
	.balign 4, 0
off_3005D68: .word byte_20081B0
off_3005D6C: .word DMA0SourceAddress
dword_3005D70: .word 0x80000000
off_3005D74: .word sub_80068E0+1
	thumb_func_end sub_3005D24

	thumb_func_start sub_3005D78
sub_3005D78:
	push {lr}
	push {lr}
	ldr r0, off_3005D94 // =call_m4a_2_814F00C+1
	mov lr, pc
	bx r0
	pop {r0}
	mov lr, r0
	ldr r0, off_3005D90 // =call_m4aSoundMain+1
	mov lr, pc
	bx r0
	pop {r0}
	bx r0
	.balign 4, 0
off_3005D90: .word call_m4aSoundMain+1
off_3005D94: .word call_m4a_2_814F00C+1
	thumb_func_end sub_3005D78

	thumb_local_start
nullsub_24:
	bx lr
	.balign 4, 0x00
	.word dword_2009CC0
	thumb_func_end nullsub_24

	thumb_func_start sub_3005DA0
sub_3005DA0:
	push {r4-r7,lr}
	bl sub_3005E18
	ldr r4, off_3005E54 // =InterruptMasterEnableRegister
	mov r0, #0
	strh r0, [r4]
	mov r0, #0
	ldr r1, off_3005DCC // =off_3005CA0
	ldr r2, off_3005DE8 // =off_3000E70
loc_3005DB2:
	ldr r3, [r1]
	str r3, [r2]
	add r0, #1
	add r1, #4
	add r2, #4
	cmp r0, #0xe
	blt loc_3005DB2
	ldr r0, off_3005E58 // =InterruptEnableRegister
	ldr r1, dword_3005DD0 // =0x2005
	strh r1, [r0]
	mov r0, #1
	strh r0, [r4]
	pop {r4-r7,pc}
	.balign 4, 0
off_3005DCC: .word off_3005CA0
dword_3005DD0: .word 0x2005
	thumb_func_end sub_3005DA0

	thumb_func_start _SetInterruptCallback
// set the callback for interrupt r0/4 to callback r1
_SetInterruptCallback: // (int interruptIdx, void *callback) -> void
	push {r4,lr}

	// save old IME state and temporarily disable
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]

	// write new interrupt callback
	ldr r2, off_3005DE8 // =off_3000E70
	str r1, [r2,r0]

	// restore IME state
	strh r4, [r3]
	pop {r4,pc}
	.balign 4, 0
off_3005DE8: .word off_3000E70
	thumb_func_end _SetInterruptCallback

	thumb_func_start sub_3005DEC
sub_3005DEC:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r1, off_3005E58 // =InterruptEnableRegister
	ldrh r2, [r1]
	orr r2, r0
	strh r2, [r1]
	strh r4, [r3]
	pop {r4,pc}
	thumb_func_end sub_3005DEC

	thumb_func_start sub_3005E02
sub_3005E02:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r1, off_3005E58 // =InterruptEnableRegister
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	strh r4, [r3]
	pop {r4,pc}
	thumb_func_end sub_3005E02

	thumb_func_start sub_3005E18
sub_3005E18:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister

	// Backup and disable all interrupts
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]
	
	ldr r1, off_3005E5C // =dword_3001D60
	mov r0, #FALSE
	str r0, [r1]

	// restore pervious interrupt enable state
	strh r4, [r3]
	pop {r4,pc}
	thumb_func_end sub_3005E18

	thumb_func_start sub_3005E2C
sub_3005E2C:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister

	// backup and disable all interrupts
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]

	ldr r1, off_3005E5C // =dword_3001D60
	mov r0, #TRUE
	str r0, [r1]
	
	push {r3}
	mov r0, #0x18
	ldr r1, off_3005E78 // =libSIO814469C+1
	bl _SetInterruptCallback // (int interruptIdx, void *callback) -> void
	mov r0, #0x1c
	ldr r1, off_3005E7C // =sub_81446AC+1
	bl _SetInterruptCallback // (int interruptIdx, void *callback) -> void
	pop {r3}
	
	// restore interrupt master enable state
	strh r4, [r3]
	pop {r4,pc}
	.balign 4, 0
off_3005E54: .word InterruptMasterEnableRegister
off_3005E58: .word InterruptEnableRegister
off_3005E5C: .word dword_3001D60
	thumb_func_end sub_3005E2C

	thumb_func_start sub_3005E60
sub_3005E60:
	push {r4,lr}
	ldr r3, off_3005E74 // =InterruptMasterEnableRegister
	mov r2, #1
	strh r2, [r3]
	pop {r4,pc}
	thumb_func_end sub_3005E60

	thumb_func_start sub_3005E6A
sub_3005E6A:
	push {r4,lr}
	ldr r3, off_3005E74 // =InterruptMasterEnableRegister
	mov r2, #0
	strh r2, [r3]
	pop {r4,pc}
off_3005E74: .word InterruptMasterEnableRegister
off_3005E78: .word libSIO814469C+1
off_3005E7C: .word sub_81446AC+1
	thumb_func_end sub_3005E6A

	thumb_func_start iCopyBackgroundTiles
// (int j, int i, int tileBlock32x32, u16 *tileIds, int j_size@R4, int i_size@R5) -> void
// copies a 2D array of dimensions [i_size][j_size] to oToolkit_iBGTileIdBlocks_Ptr
// at the specific j and i locations.
// assumes a maximum dimension of [32][32] per block.
// this lets you copy any sized box, at any 2D offset in any 32x32 block
// this is copying Tiles for BG0 and BG2
iCopyBackgroundTiles:
	sub sp, sp, #4
	str r0, [sp]
	mov r6, r10
	ldr r6, [r6,#oToolkit_iBGTileIdBlocks_Ptr]
	lsl r2, r2, #11 // r2_cpyOff = r2_cpyOff * 2048

	// r6 = iBGTileIdBlocks_Ptr + 2048 * r2_cpyOff
	// 32 tilesIds[32]? 32x32 background tile type?
	add r6, r6, r2

	// for loop conditions
	add r4, r4, r0
	add r5, r5, r1
// for (int i=a1_i; i<a1_i + a5_i_size; i++)
//	  for (int j=a0_j; j<a0_j + a4_j_size; j++)
DoubleForLoop3005E90:
	// if ( !((j | i) & ~0x1f) )
	// type protection, ensures only to copy if j and i are <= 31
	// since the array is 32x32
	mov r2, #0x1f
	mvn r2, r2
	mov r7, r0
	orr r7, r1
	tst r7, r2
	bne loc_3005EA6
	// copy tile
	// r6[64*i + 2*j] = *tileIds
	lsl r7, r0, #1
	lsl r2, r1, #6
	add r2, r2, r7
	ldrh r7, [r3]
	strh r7, [r6,r2]
loc_3005EA6:
	// tileIds++
	add r3, #2
	// while (++a0_j < j_size)
	add r0, #1
	cmp r0, r4
	blt DoubleForLoop3005E90
	ldr r0, [sp]
	// while (++a1_i < i_size)
	add r1, #1
	cmp r1, r5
	blt DoubleForLoop3005E90

	// return
	add sp, sp, #4
	mov pc, lr
	thumb_func_end iCopyBackgroundTiles

	thumb_func_start sub_3005EBA
sub_3005EBA:
	sub sp, sp, #4
	str r0, [sp]
	mov r6, r10
	ldr r6, [r6,#0x28]
	lsl r2, r2, #0xb
	add r6, r6, r2
	add r4, r4, r0
	add r5, r5, r1
loc_3005ECA:
	mov r2, #0x1f
	mvn r2, r2
	mov r7, r0
	orr r7, r1
	tst r7, r2
	bne loc_3005EDE
	lsl r7, r0, #1
	lsl r2, r1, #6
	add r2, r2, r7
	strh r3, [r6,r2]
loc_3005EDE:
	add r0, #1
	cmp r0, r4
	blt loc_3005ECA
	ldr r0, [sp]
	add r1, #1
	cmp r1, r5
	blt loc_3005ECA
	add sp, sp, #4
	mov pc, lr
	thumb_func_end sub_3005EBA

	thumb_func_start sub_3005EF0
// r0 - some param
// r2 - jumptable index
// r6 - num palettes
sub_3005EF0:
	push {r5,lr}
	cmp r6, #0
	ble locret_3005F18
	mov r12, r0
	ldr r1, off_3005F1C // =off_3005F20
	ldr r2, [r1,r2]
	mov r9, r2
	ldr r2, dword_3005F28 // =0x7bde
	ldr r3, dword_3005F2C // =0x8420
	ldr r1, dword_3005F30 // =0x3def
	mov r8, r1
	sub r6, #2
loc_3005F08:
	mov r0, r12
	ldrh r1, [r7,r6]
	mov r4, r9
	mov lr, pc
	bx r4
	strh r0, [r7,r6]
	sub r6, #2
	bge loc_3005F08
locret_3005F18:
	pop {r5,pc}
	.balign 4, 0
off_3005F1C: .word off_3005F20
off_3005F20: .word sub_3005F34+1
	.word sub_3005F56+1
dword_3005F28: .word 0x7BDE
dword_3005F2C: .word 0x8420
dword_3005F30: .word 0x3DEF
	thumb_func_end sub_3005EF0

	thumb_local_start
sub_3005F34:
	mov r4, r0
	and r4, r1
	lsl r4, r4, #1
	mov r5, r0
	eor r5, r1
	and r5, r2
	add r4, r4, r5
	and r4, r3
	lsl r4, r4, #0x10
	lsr r4, r4, #0x15
	add r4, r8
	add r0, r0, r1
	mov r1, r8
	eor r4, r1
	sub r0, r0, r4
	orr r0, r4
	mov pc, lr
	thumb_func_end sub_3005F34

	thumb_local_start
sub_3005F56:
	mvn r5, r1
	mov r4, r0
	and r4, r5
	lsl r4, r4, #1
	eor r5, r0
	and r5, r2
	add r4, r4, r5
	and r4, r3
	lsl r4, r4, #0x10
	lsr r4, r4, #0x15
	add r4, r8
	mov r5, r8
	eor r4, r5
	orr r1, r4
	orr r0, r4
	sub r0, r1, r0
	mov pc, lr
	thumb_func_end sub_3005F56

	thumb_func_start sub_3005F78
sub_3005F78:
	push {r5,lr}
	cmp r6, #0
	ble locret_3005FAA
	mov r12, r0
	ldr r1, off_3005FAC // =dword_3005FB0
	ldr r1, [r1,r2]
	mov r9, r1
	mov r5, r2
	mov r4, #0x1f
	mov r1, r12
	mov r2, r12
	mov r3, r12
	and r1, r4
	lsr r2, r2, #5
	and r2, r4
	lsr r3, r3, #0xa
	and r3, r4
	sub r6, #2
loc_3005F9C:
	ldrh r5, [r7,r6]
	mov r4, r9
	mov lr, pc
	bx r4
	strh r0, [r7,r6]
	sub r6, #2
	bge loc_3005F9C
locret_3005FAA:
	pop {r5,pc}
off_3005FAC: .word dword_3005FB0
dword_3005FB0: .word 0x0
	.word 0x0
	.word byte_3005FC1
	.word byte_3005FFB
	.byte 0xA8
byte_3005FC1: .byte 0x46, 0xE8, 0x6, 0xC0, 0xE, 0xAC, 0x5, 0xE4, 0xE, 0x6D
	.byte 0x4, 0xED, 0xE, 0x8C, 0x46, 0x1F, 0x21, 0x8, 0x1A, 0xC
	.byte 0x1B, 0x4D, 0x1B, 0x61, 0x46, 0x0, 0x3, 0x24, 0x3, 0x2D
	.byte 0x3, 0x48, 0x43, 0x54, 0x43, 0x5D, 0x43, 0x0, 0xC, 0x24
	.byte 0xC, 0x2D, 0xC, 0x64, 0x1, 0xAD, 0x2, 0x20, 0x43, 0x28
	.byte 0x43, 0x45, 0x46, 0x28, 0x18, 0xF7, 0x46, 0xA8
byte_3005FFB: .byte 0x46, 0xE8, 0x6, 0xC0, 0xE, 0xAC, 0x5, 0xE4, 0xE, 0x6D
	.byte 0x4, 0xED, 0xE, 0x0, 0x3, 0x24, 0x3, 0x2D, 0x3, 0x48
	.byte 0x43, 0x54, 0x43, 0x5D, 0x43, 0x0, 0xC, 0x24, 0xC, 0x2D
	.byte 0xC, 0x64, 0x1, 0xAD, 0x2, 0x20, 0x43, 0x28, 0x43, 0x45
	.byte 0x46, 0x28, 0x1A, 0xF7, 0x46
	thumb_func_end sub_3005F78

	thumb_func_start sub_3006028
sub_3006028:
	push {r5,lr}
	ldrb r7, [r5,#2]
	lsr r7, r7, #4
	lsl r7, r7, #4
	add r5, r5, r7
	ldrb r1, [r5,#3]
	mov r2, #0x10
	bic r1, r2
	strb r1, [r5,#3]
	mov r2, #2
	tst r1, r2
	bne loc_3006046
	mov r1, #0
	str r1, [r5,#0x24]
	b locret_30060E2
loc_3006046:
	ldr r1, off_30060E4 // =off_30060E8
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r6, [r0]
	mov r8, r0
	ldr r7, [r5,#0x1c]
	ldr r7, [r7]
	ldr r1, [r5,#0x18]
	add r7, r7, r1
	mov r12, r7
	bl sub_30061A8
	beq loc_30060B8
	ldrh r2, [r5,#8]
	mov r0, r8
	ldrh r1, [r0]
	cmp r1, r2
	beq loc_3006070
	mov r2, #0
	str r2, [r5,#0x24]
loc_3006070:
	mov r4, r12
	ldr r4, [r4]
	lsr r4, r4, #5
	mov r0, r8
	bl sub_3006404
	beq loc_300608C
	ldrb r1, [r5,#3]
	mov r2, #0x10
	orr r1, r2
	strb r1, [r5,#3]
	mov r2, #0
	str r2, [r5,#0x24]
	b locret_30060E2
loc_300608C:
	bl sub_30061C8
	strh r1, [r5,#8]
	add r4, r4, r1
	strh r4, [r0]
	ldr r2, [r5,#0x24]
	mov r0, r12
	cmp r0, r2
	beq loc_30060BE
	str r0, [r5,#0x24]
	mov r8, r5
	ldr r2, [r0]
	add r0, #4
	ldr r1, dword_3006100 // =0x6010000
	ldrh r3, [r5,#8]
	lsl r3, r3, #5
	add r1, r1, r3
	ldr r7, off_3006104 // =QueueEightWordAlignedGFXTransfer+1
	mov lr, pc
	bx r7
	mov r5, r8
	b loc_30060BE
loc_30060B8:
	strh r0, [r5,#8]
	mov r0, r12
	str r0, [r5,#0x24]
loc_30060BE: .align 1, 0
	ldrb r1, [r5,#oObjectSprite_PaletteAndPriorityHi]
	mov r2, #0xf0
	and r1, r2
	mov r2, #0xf0
	cmp r1, r2
	bge locret_30060E2
	ldrb r1, [r5,#3]
	mov r2, #0x10
	tst r1, r2
	bne locret_30060E2
	bl sub_3006108
	// Set the sprite's palette index to r0.
	ldrb r1, [r5,#oObjectSprite_PaletteAndPriorityHi]
	mov r2, #0xf0
	bic r1, r2
	lsl r0, r0, #4
	orr r1, r0
	strb r1, [r5,#oObjectSprite_PaletteAndPriorityHi]
locret_30060E2:
	pop {r5,pc}
off_30060E4: .word off_30060E8
off_30060E8: .word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
dword_3006100: .word 0x6010000
off_3006104: .word QueueEightWordAlignedGFXTransfer+1 // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	thumb_func_end sub_3006028

	thumb_local_start
sub_3006108:
	push {lr}
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#4]
	add r0, #4
	ldr r1, [r5,#0x18]
	add r0, r0, r1
	ldrb r1, [r5,#4]
	ldrb r2, [r5,#5]
	add r1, r1, r2 // r1 = r1 + r2
	lsl r1, r1, #5 // r1 = 32 * (r1 + r2)
	add r0, r0, r1
	ldrh r7, [r5,#6]
	tst r7, r7
	beq loc_3006140
	ldr r7, off_300619C // =iPallete3001750
	mov r2, #0x20
loc_3006128:
	sub r2, #4
	ldr r3, [r0,r2]
	str r3, [r7,r2]
	bne loc_3006128
	ldrh r0, [r5,#6]
	lsr r2, r0, #0xf
	lsl r2, r2, #2
	mov r6, #0x20 
	push {r7}
	bl sub_3005EF0
	pop {r0}
loc_3006140:
	mov r8, r5
	ldr r7, off_30061A0 // =dword_200F340
	ldr r4, [r7]
	cmp r4, #0xf
	bge loc_3006196
	ldr r5, off_30061A4 // =byte_3001550
	mov r1, #0
loc_300614E:
	cmp r1, r4
	bge loc_300616A
	mov r6, #0x1c
loc_3006154:
	ldr r2, [r5,r6]
	ldr r3, [r0,r6]
	cmp r2, r3
	bne loc_3006164
	sub r6, #4
	bge loc_3006154
	mov r0, r1
	b loc_3006198
loc_3006164:
	add r5, #0x20 
	add r1, #1
	b loc_300614E
loc_300616A:
	bl sub_3006428
	tst r3, r3
	beq loc_3006182
	mov r5, r8
	ldrb r1, [r5,#3]
	mov r2, #0x10
	orr r1, r2
	strb r1, [r5,#3]
	mov r2, #0
	str r2, [r5,#0x24]
	b loc_3006198
loc_3006182:
	mov r6, #0x1c
loc_3006184:
	ldr r2, [r0,r6]
	str r2, [r5,r6]
	sub r6, #4
	bge loc_3006184
	add r4, #1
	ldr r7, off_30061A0 // =dword_200F340
	str r4, [r7]
	mov r0, r1
	b loc_3006198
loc_3006196:
	mov r0, #0xf
loc_3006198:
	mov r5, r8
	pop {pc}
	.balign 4, 0
off_300619C: .word iPallete3001750
off_30061A0: .word dword_200F340
off_30061A4: .word byte_3001550
	thumb_func_end sub_3006108

	thumb_local_start
sub_30061A8:
	ldr r1, off_30061E0 // =dword_20093A8
	ldr r1, [r1]
	ldr r2, off_30061E4 // =dword_200A890
loc_30061AE:
	cmp r1, #0
	beq loc_30061BE
	ldr r3, [r2]
	cmp r7, r3
	beq loc_30061C2
	sub r1, #1
	add r2, #8
	b loc_30061AE
loc_30061BE:
	mov r0, #1
	mov pc, lr
loc_30061C2:
	ldr r0, [r2,#4]
	mov r3, #0
	mov pc, lr
	thumb_func_end sub_30061A8

	thumb_local_start
sub_30061C8:
	ldr r2, off_30061E0 // =dword_20093A8
	ldr r3, [r2]
	add r3, #1
	str r3, [r2]
	sub r3, #1
	lsl r3, r3, #3
	ldr r2, off_30061E4 // =dword_200A890
	add r2, r2, r3
	str r7, [r2]
	str r6, [r2,#4]
	mov pc, lr
	.balign 4, 0
off_30061E0: .word dword_20093A8
off_30061E4: .word dword_200A890
	thumb_func_end sub_30061C8

	thumb_func_start sub_30061E8
sub_30061E8:
	push {r5,lr}
	mov r1, r10
	push {r1}
	ldrb r6, [r5]
	push {r6}
	ldr r4, off_3006308 // =eCamera+76
	ldrb r4, [r4]
	ldrb r7, [r5,#2]
	lsr r7, r7, #4
	lsl r7, r7, #4
	add r5, r5, r7
	ldr r2, off_300630C // =byte_20098A8
	ldrb r2, [r2,#1]
	ldr r3, off_3006310 // =off_3006314
	ldr r2, [r3,r2]
	mov lr, pc
	bx r2
	ldr r0, off_3006308 // =eCamera+76
	ldrb r0, [r0]
	mov r10, r0
	mov r12, r7
	pop {r7}
	mov r0, #8
	tst r0, r7
	bne loc_30062A6
	ldrb r3, [r5,#3]
	mov r4, #1
	tst r3, r4
	bne loc_3006224
	mov r12, r6
loc_3006224:
	mov r0, #0
	ldrb r3, [r5,#0x13]
	mov r2, #0x10
	and r3, r2
	beq loc_3006230
	mov r0, #1
loc_3006230:
	mov r8, r0
	mov r0, #0
	ldrb r3, [r5,#0x13]
	mov r2, #0x20 
	and r3, r2
	beq loc_300623E
	mov r0, #1
loc_300623E:
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
loc_3006258:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_30062CC
	mov r3, #1
	ldrsb r3, [r2,r3]
	mov r0, r8
	tst r0, r0
	beq loc_300626A
	neg r3, r3
loc_300626A:
	add r3, r3, r1
	mov r0, r10
	sub r0, #0x40 
	cmp r3, r0
	blt loc_300629E
	mov r0, r10
	add r0, #0xf0
	add r0, #0x41 
	cmp r3, r0
	bge loc_300629E
	mov r3, #2
	ldrsb r3, [r2,r3]
	mov r0, r9
	tst r0, r0
	beq loc_300628A
	neg r3, r3
loc_300628A:
	add r3, r12
	mov r0, #0x20 
	neg r0, r0
	cmp r3, r0
	blt loc_300629E
	mov r0, #0xa0
	add r0, #0x21 
	cmp r3, r0
	bge loc_300629E
	orr r7, r4
loc_300629E:
	mov r12, r6
	lsr r4, r4, #1
	add r2, #5
	b loc_3006258
loc_30062A6:
	mov r7, #0
	mov r0, r10
	sub r0, #0x40 
	cmp r1, r0
	blt loc_30062CC
	mov r0, r10
	add r0, #0xf0
	add r0, #0x41 
	cmp r1, r0
	bge loc_30062CC
	mov r0, #0x20 
	neg r0, r0
	cmp r6, r0
	blt loc_30062CC
	mov r0, #0xa0
	add r0, #0x21 
	cmp r6, r0
	bge loc_30062CC
	mov r7, #1
loc_30062CC:
	ldrb r3, [r5,#3]
	mov r4, #4
	tst r3, r4
	bne loc_30062F2
	mov r6, r7
	mov r4, #0x80
	lsl r4, r4, #0x18
	bic r6, r4
	mov r4, #8
	bic r3, r4
	tst r6, r6
	beq loc_30062E6
	orr r3, r4
loc_30062E6:
	mov r4, #2
	bic r3, r4
	tst r7, r7
	beq loc_30062FC
	orr r3, r4
	b loc_30062FC
loc_30062F2:
	mov r4, #0xa
	bic r3, r4
	tst r7, r7
	beq loc_30062FC
	orr r3, r4
loc_30062FC:
	strb r3, [r5,#3]
	str r7, [r5,#0x28]
	pop {r1}
	mov r10, r1
	pop {r5,pc}
	.balign 4, 0
off_3006308: .word eCamera+0x4C // eCamera.unk_4C
off_300630C: .word byte_20098A8
off_3006310: .word off_3006314
off_3006314: .word sub_300631C+1
	.word sub_300638C+1
	thumb_func_end sub_30061E8

	thumb_local_start
sub_300631C:
	push {lr}
	mov r2, #4
	ldrb r3, [r5,#3]
	tst r2, r3
	bne loc_3006336
	push {r0,r5}
	ldr r5, off_3006388 // =checkZCoordModifiers_8031612+1
	mov lr, pc
	bx r5
	lsl r0, r0, #0x10
	mov r9, r0
	pop {r0,r5}
	b loc_300633A
loc_3006336:
	ldr r1, [r0,#8]
	mov r9, r1
loc_300633A:
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
	ldr r1, [r0]
	ldr r4, [r3,#oCamera_nextX_3c]
	sub r1, r1, r4
	mov r8, r1
	ldr r6, [r0,#4]
	ldr r4, [r3,#oCamera_nextY_40]
	sub r6, r6, r4
	add r1, r1, r6
	asr r1, r1, #0x10
	add r1, #0x78 
	strh r1, [r5,#0xc]
	mov r2, r8
	sub r6, r6, r2
	asr r6, r6, #1
	mov r7, r6
	ldr r2, [r3,#oCamera_nextZ_44]
	mov r4, #0x80
	lsl r4, r4, #0x10
	add r2, r2, r4
	add r4, r2, r6
	asr r4, r4, #0x10
	strh r4, [r5,#0xa]
	ldr r4, [r0,#8]
	sub r6, r6, r4
	ldr r2, [r3,#oCamera_nextZ_44]
	add r6, r6, r2
	asr r6, r6, #0x10
	add r6, #0x52 
	strb r6, [r5,#0xe]
	mov r4, r9
	sub r7, r7, r4
	ldr r2, [r3,#oCamera_nextZ_44]
	add r7, r7, r2
	asr r7, r7, #0x10
	add r7, #0x52 
	strb r7, [r5,#0xf]
	pop {pc}
	.balign 4, 0
off_3006388: .word checkZCoordModifiers_8031612+1
	thumb_func_end sub_300631C

	thumb_local_start
sub_300638C:
	mov r6, r4
	mov r3, r10
	ldr r3, [r3,#oToolkit_CameraPtr]
loc_3006392:
	mov r2, #2
	ldrsh r1, [r0,r2]
	ldr r4, [r3,#oCamera_nextX_3c]
	ldr r7, [r3,#oCamera_Unk_48]
	add r4, r4, r7
	asr r4, r4, #0x10
	sub r1, r1, r4
	tst r6, r6
	beq loc_30063C4
	neg r1, r1
	ldrb r2, [r5,#0x16]
	mov r4, #2
	tst r2, r4
	bne loc_30063C4
	ldrb r2, [r5,#0x16]
	mov r4, #0x10
	eor r2, r4
	mov r4, #0x30 
	and r2, r4
loc_30063B8:
	ldrb r7, [r5,#0x13]
	mov r4, #0x30 
	bic r7, r4
	orr r7, r2
	strb r7, [r5,#0x13]
	b loc_30063CC
loc_30063C4:
	ldrb r2, [r5,#0x16]
	mov r4, #0x30 
	and r2, r4
	b loc_30063B8
loc_30063CC:
	add r1, #0x78 
	strh r1, [r5,#0xc]
	mov r2, #6
	ldrsh r6, [r0,r2]
	ldr r4, [r3,#oCamera_nextY_40]
	asr r4, r4, #0x10
	sub r6, r6, r4
	add r6, #0x50 
	mov r7, r6
	strh r7, [r5,#0xa]
	mov r2, #0xa
	ldrsh r4, [r0,r2]
	ldr r2, [r3,#oCamera_nextZ_44]
	asr r2, r2, #0x10
	sub r4, r4, r2
	sub r6, r6, r4
	strb r6, [r5,#0xe]
	strb r7, [r5,#0xf]
	ldrb r3, [r5,#3]
	mov r2, #0x20 
	tst r2, r3
	beq loc_30063FA
	strb r6, [r5,#0xf]
loc_30063FA:
	mov r2, #4
	tst r2, r3
	beq locret_3006402
	mov r7, r6
locret_3006402:
	mov pc, lr
	thumb_func_end sub_300638C

	thumb_local_start
sub_3006404:
	push {lr}
	ldrh r3, [r0]
	ldr r2, dword_3006420 // =0x30
	sub r3, r3, r2
	add r3, r3, r4
	ldr r2, off_3006424 // =byte_20098A8
	ldrh r2, [r2,#2]
	cmp r3, r2
	bge loc_300641A
	mov r3, #0
	pop {pc}
loc_300641A:
	mov r3, #1
	pop {pc}
	.balign 4, 0
dword_3006420: .word 0x30
off_3006424: .word byte_20098A8
	thumb_func_end sub_3006404

	thumb_local_start
sub_3006428:
	push {lr}
	ldr r3, off_300643C // =byte_20098A8
	ldrb r3, [r3]
	cmp r1, r3
	bge loc_3006436
	mov r3, #0
	pop {pc}
loc_3006436:
	mov r3, #1
	pop {pc}
	.balign 4, 0x00
off_300643C: .word byte_20098A8
	thumb_func_end sub_3006428

	thumb_func_start sub_3006440
sub_3006440:
	push {lr}
	ldrb r7, [r5,#3]
	mov r2, #0x10
	tst r7, r2
	bne locret_3006450
	mov r2, #2
	tst r7, r2
	bne loc_3006452
locret_3006450:
	pop {pc}
loc_3006452:
	sub sp, sp, #0x1c
	str r0, [sp]
	str r1, [sp,#0x14]
	ldr r0, off_3006590 // =unk_3002400
	str r0, [sp,#0x10]
	mov r0, #0
	str r0, [sp,#0xc]
	ldr r0, [r5,#0x30]
	sub r0, #1
	str r0, [sp,#8]
	ldr r1, [r5,#0x20]
	ldrb r2, [r1]
	lsl r2, r2, #2
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#0xc]
	ldr r1, [r5,#0x18]
	add r1, r1, r0
	ldr r2, [r1,r2]
	add r2, r2, r1
	ldr r3, [r5,#0x28]
	str r3, [sp,#4]
	ldr r4, [r5,#0x2c]
	mvn r4, r4
	and r3, r4
	str r3, [r5,#0x28]
	ldrb r0, [r5,#0x16]
	mov r1, #0x40 
	bic r0, r1
	mov r1, #0x80
	and r1, r0
	lsr r1, r1, #1
	ldr r3, off_300658C // =dword_20096D0
	ldrb r3, [r3]
	orr r0, r3
	bic r0, r1
	strb r0, [r5,#0x16]
	ldrb r0, [r5,#3]
	mov r7, #1
	and r7, r0
	bne loc_30064B0
	mov r1, #4
	tst r1, r0
	bne loc_30064B0
	ldr r3, [r5,#0x28]
	lsl r3, r3, #1
	str r3, [r5,#0x28]
	b loc_3006562
loc_30064B0:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_3006576
	ldr r6, [sp,#8]
	add r6, #1
	str r6, [sp,#8]
	ldr r3, [r5,#0x28]
	lsl r6, r3, #1
	str r6, [r5,#0x28]
	cmp r3, #0
	bge loc_3006562
	ldr r6, [r5,#0x10]
	ldrb r0, [r5,#0x16]
	mov r1, #0x40 
	and r1, r0
	lsl r1, r1, #6
	orr r6, r1
	bl sub_3006594
	mov r8, r1
	mov r9, r0
	mov r3, r6

	// r3 is OAM0And1.
	// r3 = r3 | 0
	// All this computation constant-folds to 0.
	mov r0, #0xc
	ldrsh r0, [r5,r0]
	add r0, r8
	mov r4, #0x10
	lsl r4, r4, #4
	add r4, #0xff
	and r0, r4
	lsl r0, r0, #0x10
	orr r3, r0

	// r3 ^= ([r2,#3] & 0xf0) << 22
	// Some of this computation constant-folds to 0.
	ldrb r4, [r2,#3]
	mov r0, #0xf0
	and r0, r4
	lsl r4, r4, #0x1e
	orr r3, r4
	lsl r0, r0, #0x16
	eor r3, r0

	mov r0, #0xe
	add r0, r0, r7
	ldrb r0, [r5,r0]
	add r0, r9
	mov r4, #0xff
	and r0, r4
	orr r3, r0

	ldrb r4, [r2,#4]
	lsl r1, r4, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0xe
	orr r3, r1

	// r1 is OAM2.
	// OAM2 = [r5,#oObjectSprite_PaletteAndPriority]
	ldrh r1, [r5,#oObjectSprite_PaletteAndPriority]
	ldr r0, [sp,#8]
	cmp r0, #0xff // Is palette overwritten?
	ble loc_3006528

	// Set the palette number: OAM2 = (OAM2 & ~0xf000) | ([r0,#0] << 12)
	mov r4, #0xf0
	lsl r4, r4, #8
	bic r1, r4
	ldrb r4, [r0,#0] // palette number
	lsl r4, r4, #0xc
	orr r1, r4

loc_3006528:
	// OAM2 |= [r2] + [r5,#oObjectSprite_Unk_08]
	ldrh r0, [r5,#oObjectSprite_BaseTileIndex]
	ldrb r4, [r2]
	add r4, r4, r0
	orr r1, r4

	mov r8, r2
	mov r9, r5
	mov r0, r3
	ldr r2, [sp]
	add r2, r2, r7
	mov r12, r7
	mov r3, #0xa
	ldrsh r3, [r5,r3]
	ldr r4, [sp,#0x14]
	add r3, r3, r4
	lsl r7, r7, #5
	lsr r3, r7
	ldr r7, [sp,#0x10] // r7 = unk_3002400
	str r0, [r7,#oOAMEntry3002400_OAM0And1]
	strh r1, [r7,#oOAMEntry3002400_OAM2]
	strb r2, [r7,#oOAMEntry3002400_Unk_06]
	strh r3, [r7,#oOAMEntry3002400_Unk_08]
	add r7, #oOAMEntry3002400_Size
	str r7, [sp,#0x10]
	ldr r7, [sp,#0xc]
	add r7, #1
	str r7, [sp,#0xc]
	mov r7, r12
	mov r2, r8
	mov r5, r9
loc_3006562:
	add r2, #5
	ldrb r0, [r5,#3]
	mov r1, #0x20 
	tst r1, r0
	bne loc_30064B0
	mov r7, #0
	mov r1, #0x40 
	tst r1, r0
	beq loc_30064B0
	b loc_30064B0
loc_3006576:
	ldr r0, off_3006590 // =unk_3002400
	ldr r1, [sp,#0xc]
	tst r1, r1
	beq loc_3006582
	bl sub_3006920
loc_3006582:
	ldr r0, [sp,#4]
	str r0, [r5,#0x28]
	add sp, sp, #0x1c
	pop {pc}
	.balign 4, 0
off_300658C: .word dword_20096D0
off_3006590: .word unk_3002400
	thumb_func_end sub_3006440

	thumb_local_start
sub_3006594:
	mov r3, #3
	lsl r3, r3, #8
	and r3, r6
	bne loc_30065E6
	mov r8, r7
	mov r1, #1
	ldrsb r1, [r2,r1]
	mov r0, #2
	ldrsb r0, [r2,r0]
	ldrb r3, [r5,#0x13]
	mov r4, #0x10
	and r3, r4
	beq loc_30065C4
	neg r1, r1
	ldr r3, off_30066EC // =byte_300670C
	ldrb r4, [r2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r3, r3, r4
	ldrb r4, [r2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb r3, [r3,r4]
	add r1, r1, r3
loc_30065C4:
	ldrb r3, [r5,#0x13]
	mov r4, #0x20 
	and r3, r4
	beq loc_30065E2
	neg r0, r0
	ldr r3, off_30066F0 // =byte_3006718
	ldrb r4, [r2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r3, r3, r4
	ldrb r4, [r2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb r3, [r3,r4]
	add r0, r0, r3
loc_30065E2:
	mov r7, r8
	mov pc, lr
loc_30065E6:
	ldrb r4, [r5,#0x13]
	mov r3, #0x3e 
	and r4, r3
	lsr r4, r4, #1
	mov r3, #0x20 
	lsl r3, r3, #0x18
	cmp r7, #1
	bne loc_30065FC
	add r6, r6, r3
	add r4, #0x10
	b loc_30065FE
loc_30065FC:
	bic r6, r3
loc_30065FE:
	mov r8, r6
	mov r9, r7
	mov r6, #0xc
	mul r4, r6
	ldr r6, off_3006724 // =word_200A6F0
	add r6, r6, r4
	ldrb r1, [r6,#8]
	add r1, #0x40 
	mov r3, #0xff
	and r1, r3
	lsl r1, r1, #1
	mov r3, #1
	ldrsb r3, [r2,r3]
	ldr r0, off_30066E4 // =byte_30066F4
	ldrb r4, [r2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb r4, [r2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb r4, [r0,r4]
	sub r3, r3, r4
	ldrb r0, [r6,#9]
	mul r3, r0
	ldr r0, off_3006728 // =math_sinTable
	ldrsh r0, [r0,r1]
	mul r3, r0
	mov r7, #2
	ldrsb r7, [r2,r7]
	ldr r0, off_30066E8 // =byte_3006700
	ldrb r4, [r2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb r4, [r2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb r4, [r0,r4]
	sub r7, r7, r4
	ldrb r0, [r6,#0xa]
	mul r7, r0
	ldr r0, off_300672C // =math_cosTable
	ldrsh r0, [r0,r1]
	mul r7, r0
	add r3, r3, r7
	asr r3, r3, #0xc
	ldr r0, off_30066EC // =byte_300670C
	ldrb r1, [r2,#4]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	add r0, r0, r1
	ldrb r1, [r2,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	ldrsb r1, [r0,r1]
	add r3, r3, r1
	push {r3}
	ldrb r1, [r6,#8]
	add r1, #0x40 
	mov r3, #0xff
	and r1, r3
	lsl r1, r1, #1
	mov r3, #1
	ldrsb r3, [r2,r3]
	ldr r0, off_30066E4 // =byte_30066F4
	ldrb r4, [r2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb r4, [r2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb r4, [r0,r4]
	sub r3, r3, r4
	ldrb r0, [r6,#9]
	mul r3, r0
	ldr r0, off_300672C // =math_cosTable
	ldrsh r0, [r0,r1]
	neg r0, r0
	mul r3, r0
	mov r7, #2
	ldrsb r7, [r2,r7]
	ldr r0, off_30066E8 // =byte_3006700
	ldrb r4, [r2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb r4, [r2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb r4, [r0,r4]
	sub r7, r7, r4
	ldrb r0, [r6,#0xa]
	mul r7, r0
	ldr r0, off_3006728 // =math_sinTable
	ldrsh r0, [r0,r1]
	mul r7, r0
	add r3, r3, r7
	asr r3, r3, #0xc
	ldr r0, off_30066F0 // =byte_3006718
	ldrb r1, [r2,#4]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	add r0, r0, r1
	ldrb r1, [r2,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	ldrsb r1, [r0,r1]
	add r3, r3, r1
	push {r3}
	pop {r0,r1}
	mov r6, r8
	mov r7, r9
	mov pc, lr
	.balign 4, 0
off_30066E4: .word byte_30066F4
off_30066E8: .word byte_3006700
off_30066EC: .word byte_300670C
off_30066F0: .word byte_3006718
byte_30066F4: .byte 0xFC, 0xF8, 0xF0, 0xE0, 0xF8, 0xF0, 0xF0, 0xE0, 0xFC
	.byte 0xFC, 0xF8, 0xF0
byte_3006700: .byte 0xFC, 0xF8, 0xF0, 0xE0, 0xFC, 0xFC, 0xF8, 0xF0, 0xF8
	.byte 0xF0, 0xF0, 0xE0
byte_300670C: .byte 0xF8, 0xF0, 0xE0, 0xC0, 0xF0, 0xE0, 0xE0, 0xC0, 0xF8
	.byte 0xF8, 0xF0, 0xE0
byte_3006718: .byte 0xF8, 0xF0, 0xE0, 0xC0, 0xF8, 0xF8, 0xF0, 0xE0, 0xF0
	.byte 0xE0, 0xE0, 0xC0
off_3006724: .word word_200A6F0
off_3006728: .word math_sinTable
off_300672C: .word math_cosTable
	thumb_func_end sub_3006594

	thumb_func_start sub_3006730
sub_3006730:
	push {lr}
	ldrb r0, [r5,#oObjectSprite_Unk_03]
	mov r1, #0x80
	and r0, r1
	bne loc_300675A
	ldr r1, [r5,#oObjectSprite_Unk_18]
	ldr r2, [r1]
	add r3, r2, r1
	str r3, [r5,#oObjectSprite_Unk_1c]
	ldrb r0, [r5,#oObjectSprite_Unk_00]
	lsl r0, r0, #2
	ldr r2, [r3,#8]
	add r1, r1, r2
	ldr r2, [r1,r0]
	add r1, r1, r2
	str r1, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r1,#1]
	strb r2, [r5,#oObjectSprite_Unk_01]
	ldrb r2, [r1,#2]
	strb r2, [r5,#oObjectSprite_Unk_02]
	b loc_3006778
loc_300675A:
	ldrb r0, [r5,#oObjectSprite_Unk_00]
	lsl r0, r0, #2
	ldr r1, [r5,#oObjectSprite_Unk_18]
	ldr r2, [r1,r0]
	add r3, r2, r1
	str r3, [r5,#oObjectSprite_Unk_1c]
	ldr r2, [r3,#8]
	add r1, r1, r2
	ldr r2, [r1]
	add r1, r1, r2
	str r1, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r3,#0x10]
	strb r2, [r5,#oObjectSprite_Unk_01]
	ldrb r2, [r3,#0x12]
	strb r2, [r5,#oObjectSprite_Unk_02]
loc_3006778:
	ldr r1, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r1]
	lsl r2, r2, #2
	ldr r0, [r5,#oObjectSprite_Unk_1c]
	ldr r0, [r0,#0xc]
	ldr r1, [r5,#oObjectSprite_Unk_18]
	add r1, r1, r0
	ldr r2, [r1,r2]
	add r2, r2, r1
	ldrb r1, [r2,#4]
	lsr r1, r1, #4
	strb r1, [r5,#oObjectSprite_Unk_05]
	pop {pc}
	thumb_func_end sub_3006730

	thumb_func_start sub_3006792
sub_3006792:
	push {r4,lr}
loc_3006794:
	ldrb r0, [r5,#oObjectSprite_Unk_01]
	sub r0, #1
	strb r0, [r5,#oObjectSprite_Unk_01]
	cmp r0, #0
	bge loc_30067F8
	ldrb r0, [r5,#oObjectSprite_Unk_03]
	mov r1, #0x80
	and r0, r1
	bne loc_30067C0
	ldr r1, [r5,#oObjectSprite_Unk_20]
	ldrb r0, [r1,#2]
	ldrb r4, [r1,#1]
	mov r2, #0x80
	tst r0, r2
	bne loc_30067E6
	add r1, #3
	str r1, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r1,#1]
	strb r2, [r5,#oObjectSprite_Unk_01]
	ldrb r2, [r1,#2]
	strb r2, [r5,#oObjectSprite_Unk_02]
	b loc_30067E4
loc_30067C0:
	ldr r3, [r5,#oObjectSprite_Unk_1c]
	ldrb r0, [r3,#0x12]
	ldrb r4, [r3,#0x10]
	mov r2, #0x80
	tst r0, r2
	bne loc_30067E6
	add r3, #0x14
	str r3, [r5,#oObjectSprite_Unk_1c]
	ldr r1, [r5,#oObjectSprite_Unk_18]
	ldr r2, [r3,#8]
	add r1, r1, r2
	ldr r2, [r1]
	add r1, r1, r2
	str r1, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r3,#0x10]
	strb r2, [r5,#oObjectSprite_Unk_01]
	ldrb r2, [r3,#0x12]
	strb r2, [r5,#oObjectSprite_Unk_02]
loc_30067E4:
	b loc_3006794
loc_30067E6:
	mov r2, #0x40 
	tst r0, r2
	bne loc_30067F2
	mov r4, #1
	strb r4, [r5,#oObjectSprite_Unk_01]
	b loc_3006794
loc_30067F2:
	bl sub_3006730
	b loc_3006794
loc_30067F8:
	ldr r1, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r1]
	lsl r2, r2, #2
	ldr r0, [r5,#oObjectSprite_Unk_1c]
	ldr r0, [r0,#0xc]
	ldr r1, [r5,#oObjectSprite_Unk_18]
	add r1, r1, r0
	ldr r2, [r1,r2]
	add r2, r2, r1
	ldrb r1, [r2,#4]
	lsr r1, r1, #4
	strb r1, [r5,#oObjectSprite_Unk_05]
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_3006792

	thumb_func_start copyTo_iObjectAttr3001D70_3006814
copyTo_iObjectAttr3001D70_3006814: // () -> void
	push {r4-r7,lr}
	// backup r12
	mov r0, r12
	push {r0}

	// typedef struct{u32 unk0, u16 unk1, u8 unk2, u8 unk3} s1
	// s1 v1[128]: r0
	// void *v4End: r2
	// void *v1End: r3
	// struct{u8 *p0, int len} v4[4]: r6
	// s1 *v5: r7
	ldr r0, off_30068C0 // =iObjectAttr3001D70
	ldr r2, off_30068C4 // =unk_30025B0
	ldr r3, off_30068C8 // =iObjectAttr3001D70End
	ldr r6, off_30068CC // =tupleArr_3002590
	ldr r7, off_30068D0 // =iObjectAttr3001150
	mov r12, r7

.loop1
	// u8 *p0: r1 = *v4.p0
	// u8 *p1: r4 = p0 + *v4.len
	ldr r1, [r6,#0]
	ldr r4, [r6,#4]
	add r4, r4, r1

// reverse search p0 until a non 0xFF is found or reached buffer end
.searchTillNo0xFF
	// --p1
	sub r4, #1 // adjust to oObjectAttr3001150_Unk_07 of previous entry

	// goto .processNext if (p0 > p1): reached end of buffer
	cmp r1, r4
	bgt .processNext
	
	// u8 v6: r5 = *p1
	// do while (v6 == 0xFF)
	ldrb r5, [r4] // oObjectAttr3001150_Unk_07
	cmp r5, #0xff
	beq .searchTillNo0xFF

.copyLoop
	// break if (v1 >= v1End)
	cmp r0, r3
	bge .break1

	// *v1.unk0 = v5[v6].unk0
	// *v1.unk1 = v5[v6].unk1
	// ++v1
	lsl r5, r5, #3
	mov r7, r12
	add r7, r7, r5
	ldr r5, [r7,#oObjectAttr3001150_OAM0And1]
	str r5, [r0,#oObjectAttr3001D70_OAM0And1]
	ldrh r5, [r7,#oObjectAttr3001150_OAM2]
	strh r5, [r0,#oObjectAttr3001D70_OAM2]
	add r0, #8

	// v6 = v5[v6].unk3
	// goto .searchTillNo0xFF if v6 == 0xFF
	ldrb r5, [r7,#oObjectAttr3001150_Unk_07]
	cmp r5, #0xff
	beq .searchTillNo0xFF
	
	b .copyLoop

.processNext
	// do while (++v4 < v4End)
	add r6, #8
	cmp r6, r2
	blt .loop1
.break1:

	// *dword_200B1A8 = (v1End - v1) / oObjectAttr3001D70_Size
	sub r2, r3, r0
	lsr r2, r2, #3
	ldr r4, off_30068D4 // =dword_200B1A8
	str r2, [r4]

// for (; v1<v1End; ++v1)
	// put remaining sprites off screen
	mov r2, #GBA_SCREEN_WIDTH /* X */ // OAM0And1
	mov r4, #(3 << 10 /* priority */) >> 8 // OAM2
	lsl r4, r4, #8
.forRemainingElements:
	cmp r0, r3
	bge .break2
	
	// v1.unk0 = 0xf0
	// v1.unk1 = 0xc00
	str r2, [r0,#oObjectAttr3001D70_OAM0And1]
	strh r4, [r0,#oObjectAttr3001D70_OAM2]

	add r0, #8
	b .forRemainingElements
.break2:

	// unk *v7: r0
	// s1 v1[128]: r1
	ldr r0, off_30068D8 // =word_200A6F0
	ldr r1, off_30068C0 // =iObjectAttr3001D70

// for (i=20; i>=0; i--)
	mov r3, #0x20
.loop300687A:
	ldrh r4, [r0,#oOAMRotoScale_PA]
	strh r4, [r1,#0*oObjectAttr3001D70_Size + oObjectAttr3001D70_RotoScale]
	ldrh r4, [r0,#oOAMRotoScale_PB]
	strh r4, [r1,#1*oObjectAttr3001D70_Size + oObjectAttr3001D70_RotoScale]
	ldrh r4, [r0,#oOAMRotoScale_PC]
	strh r4, [r1,#2*oObjectAttr3001D70_Size + oObjectAttr3001D70_RotoScale]
	ldrh r4, [r0,#oOAMRotoScale_PD]
	strh r4, [r1,#3*oObjectAttr3001D70_Size + oObjectAttr3001D70_RotoScale]
	add r0, #oOAMRotoScale_Size
	add r1, #oObjectAttr3001D70_Size * 4
	
	sub r3, #1
	cmp r3, #0
	bgt .loop300687A

	mov r2, #0
	mvn r2, r2
	ldr r5, off_30068DC // =off_802FD70
	mov r4, #4
	ldr r7, off_30068E0 // =WordFill+1
	mov r12, r7
.loop30068A0:
	ldr r0, [r5]
	ldr r1, [r5,#4]
	mov r7, r12
	mov lr, pc
	bx r7

	add r5, #8
	sub r4, #1
	cmp r4, #0
	bgt .loop30068A0

	ldr r0, off_30068E4 // =byte_3001950
	mov r1, #0
	str r1, [r0]

	// restore r12
	pop {r0}
	mov r12, r0

	pop {r4-r7,pc}
	.balign 4, 0
off_30068C0: .word iObjectAttr3001D70
off_30068C4: .word unk_30025B0
off_30068C8: .word iObjectAttr3001D70End
off_30068CC: .word tupleArr_3002590
off_30068D0: .word iObjectAttr3001150
off_30068D4: .word dword_200B1A8
off_30068D8: .word word_200A6F0
off_30068DC: .word off_802FD70
off_30068E0: .word WordFill+1
off_30068E4: .word byte_3001950
	thumb_func_end copyTo_iObjectAttr3001D70_3006814

	// Write to iObjectAttr3001150
	//
	// Inputs:
	// r0: oObjectAttr3001150_OAM0And1
	// r1: oObjectAttr3001150_OAM2
	// r2
	// r3
	// maybe more
	thumb_func_start sub_30068E8
sub_30068E8:
	push {r4-r7,lr}
	ldr r5, off_3006994 // =byte_3001950
	ldr r6, [r5]
	cmp r6, #0x80
	bge locret_300691E
	ldr r4, off_300699C // =tupleArr_3002590
	lsl r7, r2, #3
	add r4, r4, r7
	ldr r7, [r4,#4]
	cmp r3, r7
	bge locret_300691E
	cmp r3, #0
	blt locret_300691E
	ldr r4, [r4]
	add r4, r4, r3
	add r7, r6, #1
	str r7, [r5]
	ldrb r7, [r4]
	strb r6, [r4]
	lsl r6, r6, #3 // r6 *= oObjectAttr3001150_Size
	ldr r5, off_3006998 // =iObjectAttr3001150
	add r5, r5, r6
	str r0, [r5,#oObjectAttr3001150_OAM0And1]
	strh r1, [r5,#oObjectAttr3001150_OAM2]
	strb r7, [r5,#oObjectAttr3001150_Unk_07]
	mov r0, #0xff
	strb r0, [r5,#oObjectAttr3001150_Unk_06]
locret_300691E:
	pop {r4-r7,pc}
	thumb_func_end sub_30068E8

	// Write into iObjectAttr3001150
	//
	// inputs:
	// r0: pointer to oOAMEntry
	// r1
	thumb_func_start sub_3006920
sub_3006920:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r12
	push {r4-r6}
	sub sp, sp, #8
	ldr r5, off_3006994 // =byte_3001950
	ldr r6, [r5]
	mov r8, r5
	add r1, r1, r6
	cmp r1, #0x80
	bge loc_3006988
	sub r1, r1, r6
	ldr r3, off_3006998 // =iObjectAttr3001150
	mov r12, r3
loc_300693E:
	str r0, [sp]
	str r1, [sp,#4]
	mov r3, #8
	ldrsh r3, [r0,r3]
	ldrb r2, [r0,#oOAMEntry3002400_Unk_06]
	ldrh r1, [r0,#oOAMEntry3002400_OAM2]
	ldr r0, [r0,#oOAMEntry3002400_OAM0And1]
	ldr r4, off_300699C // =tupleArr_3002590
	lsl r7, r2, #3
	add r4, r4, r7
	ldr r7, [r4,#4]
	cmp r3, r7
	bge loc_3006988
	cmp r3, #0
	blt loc_3006988
	ldr r4, [r4]
	add r4, r4, r3
	add r7, r6, #1
	str r7, [r5]
	mov r9, r7
	ldrb r7, [r4]
	strb r6, [r4]
	lsl r6, r6, #3 // r6 *= oObjectAttr3001150_Size
	mov r5, r12 // r5 = iObjectAttr3001150
	add r5, r5, r6
	str r0, [r5,#oObjectAttr3001150_OAM0And1]
	strh r1, [r5,#oObjectAttr3001150_OAM2]
	strb r7, [r5,#oObjectAttr3001150_Unk_07]
	mov r0, #0xff
	strb r0, [r5,#oObjectAttr3001150_Unk_06]
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r5, r8
	mov r6, r9
	add r0, #0xc
	sub r1, #1
	bgt loc_300693E
loc_3006988:
	add sp, sp, #8
	pop {r4-r6}
	mov r8, r4
	mov r9, r5
	mov r12, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_3006994: .word byte_3001950
off_3006998: .word iObjectAttr3001150
off_300699C: .word tupleArr_3002590
byte_30069A0:: .byte 0x4, 0x4, 0x4, 0x0, 0x4, 0x0, 0x4, 0x4
	thumb_func_end sub_3006920

	thumb_local_start
sub_30069A8:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r12
	push {r4-r7}
	sub sp, sp, #0x24
	mov r10, r0
	mov r8, r1
	mov r9, r2
	mov r5, #1
	cmp r5, r8
	bgt loc_3006A40
loc_30069C2:
	lsl r0, r5, #1
	add r0, r0, r5
	add r5, r0, #1
	cmp r5, r8
	ble loc_30069C2
	b loc_3006A40
loc_30069CE:
	mov r2, r0
	cmp r2, r8
	bge loc_3006A40
loc_30069D4:
	lsl r1, r2, #5
	mov r0, sp
	add r1, r10
	ldmia r1!, {r3,r4,r6}
	stmia r0!, {r3,r4,r6}
	ldmia r1!, {r3,r4,r7}
	stmia r0!, {r3,r4,r7}
	ldmia r1!, {r6,r7}
	stmia r0!, {r6,r7}
	sub r3, r2, r5
	add r2, #1
	mov r12, r2
	cmp r3, #0
	blt loc_3006A26
	mov r0, r9
	lsl r4, r0, #2
	mov r1, sp
	add r0, r4, r1
	ldr r0, [r0]
	str r0, [sp,#0x20]
loc_30069FC:
	lsl r0, r3, #5
	mov r6, r10
	add r2, r0, r6
	add r0, r4, r2
	ldr r0, [r0]
	ldr r7, [sp,#0x20]
	cmp r0, r7
	ble loc_3006A26
	add r1, r3, r5
	lsl r1, r1, #5
	add r1, r10
	mov r0, r2
	ldmia r0!, {r2,r6,r7}
	stmia r1!, {r2,r6,r7}
	ldmia r0!, {r2,r6,r7}
	stmia r1!, {r2,r6,r7}
	ldmia r0!, {r2,r6}
	stmia r1!, {r2,r6}
	sub r3, r3, r5
	cmp r3, #0
	bge loc_30069FC
loc_3006A26:
	add r1, r3, r5
	lsl r1, r1, #5
	add r1, r10
	mov r0, sp
	ldmia r0!, {r2,r3,r7}
	stmia r1!, {r2,r3,r7}
	ldmia r0!, {r4,r6,r7}
	stmia r1!, {r4,r6,r7}
	ldmia r0!, {r2,r3}
	stmia r1!, {r2,r3}
	mov r2, r12
	cmp r2, r8
	blt loc_30069D4
loc_3006A40:
	mov r0, r5
	mov r1, #3
	ldr r5, off_3006B14 // =sub_814DA9C+1
	mov lr, pc
	bx r5
	mov r5, r0
	cmp r0, #0
	bgt loc_30069CE
	add sp, sp, #0x24
	pop {r4-r7}
	mov r8, r4
	mov r9, r5
	mov r10, r6
	mov r12, r7
	pop {r4-r7,pc}
	thumb_func_end sub_30069A8

	thumb_local_start
sub_3006A5E:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r12
	push {r4-r7}
	sub sp, sp, #0x24
	mov r10, r0
	mov r8, r1
	mov r9, r2
	mov r5, #1
	cmp r5, r8
	bgt loc_3006AF6
loc_3006A78:
	lsl r0, r5, #1
	add r0, r0, r5
	add r5, r0, #1
	cmp r5, r8
	ble loc_3006A78
	b loc_3006AF6
loc_3006A84:
	mov r2, r0
	cmp r2, r8
	bge loc_3006AF6
loc_3006A8A:
	lsl r1, r2, #5
	mov r0, sp
	add r1, r10
	ldmia r1!, {r3,r4,r6}
	stmia r0!, {r3,r4,r6}
	ldmia r1!, {r3,r4,r7}
	stmia r0!, {r3,r4,r7}
	ldmia r1!, {r6,r7}
	stmia r0!, {r6,r7}
	sub r3, r2, r5
	add r2, #1
	mov r12, r2
	cmp r3, #0
	blt loc_3006ADC
	mov r0, r9
	lsl r4, r0, #2
	mov r1, sp
	add r0, r4, r1
	ldr r0, [r0]
	str r0, [sp,#0x20]
loc_3006AB2:
	lsl r0, r3, #5
	mov r6, r10
	add r2, r0, r6
	add r0, r4, r2
	ldr r0, [r0]
	ldr r7, [sp,#0x20]
	cmp r0, r7
	bge loc_3006ADC
	add r1, r3, r5
	lsl r1, r1, #5
	add r1, r10
	mov r0, r2
	ldmia r0!, {r2,r6,r7}
	stmia r1!, {r2,r6,r7}
	ldmia r0!, {r2,r6,r7}
	stmia r1!, {r2,r6,r7}
	ldmia r0!, {r2,r6}
	stmia r1!, {r2,r6}
	sub r3, r3, r5
	cmp r3, #0
	bge loc_3006AB2
loc_3006ADC:
	add r1, r3, r5
	lsl r1, r1, #5
	add r1, r10
	mov r0, sp
	ldmia r0!, {r2,r3,r7}
	stmia r1!, {r2,r3,r7}
	ldmia r0!, {r4,r6,r7}
	stmia r1!, {r4,r6,r7}
	ldmia r0!, {r2,r3}
	stmia r1!, {r2,r3}
	mov r2, r12
	cmp r2, r8
	blt loc_3006A8A
loc_3006AF6:
	mov r0, r5
	mov r1, #3
	ldr r5, off_3006B14 // =sub_814DA9C+1
	mov lr, pc
	bx r5
	mov r5, r0
	cmp r0, #0
	bgt loc_3006A84
	add sp, sp, #0x24
	pop {r4-r7}
	mov r8, r4
	mov r9, r5
	mov r10, r6
	mov r12, r7
	pop {r4-r7,pc}
	.balign 4, 0
off_3006B14: .word sub_814DA9C+1
off_3006B18: .word sub_3006C38+1
	.word sub_3006C3C+1
	.word sub_3006F42+1
	.word sub_3006F74+1
	.word sub_3006C72+1
	.word sub_3006C8E+1
	.word 0x0
	.word sub_3006CA8+1
	.word 0x0
	.word sub_3006F20+1
	.word sub_3006F24+1
	.word 0x0
	.word sub_3006F48+1
	.word sub_3006CD0+1
	.word 0x0
	.word 0x0
	.word sub_3006F5C+1
	.word sub_3006F70+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word sub_3006DA4+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word sub_3006E7C+1
dword_3006B84:: .word 0x0, 0x44444444, 0x88888888, 0xCCCCCCCC
	thumb_func_end sub_3006A5E

	thumb_func_start sub_3006B94
sub_3006B94:
	push {lr}
	mov r8, r7
	mov r7, r10
	ldr r7, [r7,#0x38]
	strb r4, [r7]
	mul r4, r5
	strb r4, [r7,#1]
	mov r4, r8
	ldr r5, off_3006C14 // =dword_3006B84
	ldr r5, [r5,r4]
	str r5, [r7,#0x38]
	mov r4, #0
	str r4, [r7,#0x34]
	str r4, [r7,#0x30]
	mov r4, #0
	mov r5, #0
	mov r9, r5
	push {r2,r3}
	mov r3, #1
loc_3006BBA:
	cmp r3, #0
	beq loc_3006BF6
	ldrb r1, [r0]
	cmp r1, #0xe5
	blt loc_3006BD2
	sub r1, #0xe5
	lsl r1, r1, #2
	ldr r7, off_3006C08 // =off_3006B18
	ldr r1, [r7,r1]
	mov lr, pc
	bx r1
	b loc_3006BBA
loc_3006BD2:
	cmp r1, #0xe4
	beq loc_3006BE4
	bl sub_3006C18
	add r0, #1
	mov r7, r9
	add r7, #1
	mov r9, r7
	b loc_3006BBA
loc_3006BE4:
	ldrb r1, [r0,#1]
	add r1, #0xe4
	bl sub_3006C18
	add r0, #2
	mov r7, r9
	add r7, #1
	mov r9, r7
	b loc_3006BBA
loc_3006BF6:
	pop {r0,r1}
	tst r1, r1
	beq loc_3006C04
	sub r2, r2, r0
	ldr r3, off_3006C0C // =QueueEightWordAlignedGFXTransfer+1
	mov lr, pc
	bx r3
loc_3006C04:
	mov r0, r9
	pop {pc}
	.balign 4, 0
off_3006C08: .word off_3006B18
off_3006C0C: .word QueueEightWordAlignedGFXTransfer+1 // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	.word ZeroFillByByte+1
off_3006C14: .word dword_3006B84
	thumb_func_end sub_3006B94

	thumb_local_start
sub_3006C18:
	push {r0,r6,lr}
	lsl r7, r1, #6
	add r6, r6, r7
	mov r0, r10
	ldr r0, [r0,#0x38]
	ldr r0, [r0,#0x38]
	mov r1, #0x3c 
loc_3006C26:
	ldr r7, [r6,r1]
	add r7, r7, r0
	str r7, [r2,r1]
	sub r1, #4
	bge loc_3006C26
	add r2, #0x40 
	add r4, #1
	add r5, #1
	pop {r0,r6,pc}
	thumb_func_end sub_3006C18

	thumb_func_start sub_3006C38
sub_3006C38:
	add r0, #1
	mov pc, lr
	thumb_func_end sub_3006C38

	thumb_local_start
sub_3006C3C:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#0x38]
	ldr r1, [r4,#0x30]
	tst r1, r1
	beq loc_3006C5E
	sub r1, #1
	str r1, [r4,#0x30]
	push {r0,r1}
	mov r1, r4
	add r1, #0x34 
	ldr r0, [r1]
	sub r0, #1
	str r0, [r1]
	pop {r0,r1}
	ldr r0, [r4,#0x2c]
	pop {pc}
loc_3006C5E:
	ldrb r1, [r4,#1]
	mov r8, r1
loc_3006C62:
	cmp r5, r8
	bge loc_3006C6E
	mov r1, #0
	bl sub_3006C18
	b loc_3006C62
loc_3006C6E:
	mov r3, #0
	pop {pc}
	thumb_func_end sub_3006C3C

	thumb_local_start
sub_3006C72:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#0x38]
	ldrb r1, [r1]
	mov r8, r1
loc_3006C7C:
	cmp r4, r8
	bge loc_3006C88
	mov r1, #0
	bl sub_3006C18
	b loc_3006C7C
loc_3006C88:
	mov r4, #0
	add r0, #1
	pop {pc}
	thumb_func_end sub_3006C72

	thumb_func_start sub_3006C8E
sub_3006C8E:
	push {lr}
	ldrb r1, [r0,#1]
// oops! forgot the pool label!
	ldr r2, byte_3006C9C // =0x4
	ldrb r1, [r2,r1]
	mov r4, #1
	add r0, r0, r1
	pop {pc}
byte_3006C9C: .byte 0x4, 0x4, 0x4, 0x5, 0x5, 0x0, 0x3, 0x4, 0x4, 0x4, 0x4, 0x0
	thumb_func_end sub_3006C8E

	thumb_func_start sub_3006CA8
sub_3006CA8:
	push {lr}
	ldrb r1, [r0,#1]
	cmp r1, #1
	beq loc_3006CB6
	add r0, #3
	mov r4, #1
	pop {pc}
loc_3006CB6:
	ldrb r1, [r0,#2]
	mov r2, r10
	ldr r2, [r2,#0x38]
	ldr r3, [r2,#0x3c]
	add r3, r3, r1
	str r3, [r2,#0x3c]
	lsl r1, r1, #2
	ldr r3, [r2,#0x1c]
	add r1, r1, r3
	str r1, [r2,#0x1c]
	add r0, #3
	mov r4, #1
	pop {pc}
	thumb_func_end sub_3006CA8

	thumb_local_start
sub_3006CD0:
	push {r3,lr}
	push {r0,r2,r4-r6}
	ldrb r1, [r0,#1]
	mov r2, #0x80
	tst r1, r2
	beq loc_3006CE8
	bic r1, r2
	lsl r1, r1, #2
	ldr r2, off_3006DA0 // =off_8043C8C
	ldr r2, [r2,r1]
	ldrh r0, [r2]
	b loc_3006CF2
loc_3006CE8:
	lsl r1, r1, #2
	add r1, #8
	mov r7, r10
	ldr r7, [r7,#0x38]
	ldr r0, [r7,r1]
loc_3006CF2:
	ldr r6, off_3006D98 // =sub_8000C00+1
	mov lr, pc
	bx r6
	mov r8, r0
	ldr r6, off_3006D9C // =sub_8000C5C+1
	mov lr, pc
	bx r6
	mov r7, r0
	sub r0, #1
	lsl r1, r0, #2
	pop {r0,r2,r4-r6}
	ldrb r3, [r0,#2]
	cmp r3, #0x80
	bge loc_3006D4C
	sub r3, r3, r7
	mov r7, #0
	cmp r3, #0x40 
	blt loc_3006D1A
	sub r3, #0x40 
	mov r7, #1
loc_3006D1A:
	push {r0}
	push {r7}
	mov r0, #0xf
loc_3006D20:
	mov r7, r8
	lsr r7, r1
	and r7, r0
	push {r1}
	mov r1, #1
	add r1, r1, r7
	bl sub_3006C18
	pop {r1}
	mov r7, r9
	add r7, #1
	mov r9, r7
	sub r1, #4
	bge loc_3006D20
	pop {r0}
loc_3006D3E:
	cmp r3, #0
	ble loc_3006D92
	sub r3, #1
	mov r1, r0
	bl sub_3006C18
	b loc_3006D3E
loc_3006D4C:
	sub r3, #0x80
	sub r3, r3, r7
	push {r0,r1}
	mov r0, #0
	cmp r3, #0x40 
	blt loc_3006D5C
	sub r3, #0x40 
	mov r0, #1
loc_3006D5C:
	cmp r3, #0
	ble loc_3006D70
	sub r3, #1
	mov r1, r0
	bl sub_3006C18
	mov r7, r9
	add r7, #1
	mov r9, r7
	b loc_3006D5C
loc_3006D70:
	pop {r0,r1}
	push {r0}
	mov r0, #0xf
loc_3006D76:
	mov r7, r8
	lsr r7, r1
	and r7, r0
	push {r1}
	mov r1, #1
	add r1, r1, r7
	bl sub_3006C18
	pop {r1}
	mov r7, r9
	add r7, #1
	mov r9, r7
	sub r1, #4
	bge loc_3006D76
loc_3006D92:
	pop {r0}
	add r0, #3
	pop {r3,pc}
	.balign 4, 0
off_3006D98: .word sub_8000C00+1
off_3006D9C: .word sub_8000C5C+1
off_3006DA0: .word off_8043C8C
	thumb_func_end sub_3006CD0

	thumb_local_start
sub_3006DA4:
	push {r3,r7,lr}
	ldr r1, off_3006DB4 // =dword_3006DB8
	ldrb r3, [r0,#1]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	mov lr, pc
	bx r1
	pop {r3,r7,pc}
off_3006DB4: .word dword_3006DB8
dword_3006DB8: .word 0x0
	.word sub_3006DC8+1
	.word sub_3006E1C+1
	.word sub_3006E1C+1
	thumb_func_end sub_3006DA4

	thumb_local_start
sub_3006DC8:
	push {r1-r7,lr}
	ldr r3, off_3006F1C // =byte_200A220
	ldr r6, [r3,#0x30] // (dword_200A250 - 0x200a220)
	add r6, #1
	str r6, [r3,#0x30] // (dword_200A250 - 0x200a220)
	ldr r6, off_3006E10 // =byte_8043B54
	ldrb r2, [r0,#2]
	lsl r2, r2, #3
	add r6, r6, r2
	ldr r4, [r6,#4]
	ldr r6, [r6]
	mov r7, r3
	add r7, #0x34
	ldr r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_3006E18 // =byte_200DD20
	add r1, r1, r2
	push {r0,r1}
	mov r0, r6
	mov r2, r4
	push {r3}
	ldr r3, off_3006E14 // =CopyBytes+1
	mov lr, pc
	bx r3
	pop {r3}
	pop {r0,r6}
	mov r7, r3
	add r7, #0x34
	ldr r1, [r7]
	add r1, #1
	str r1, [r7]
	str r6, [r3,#0x28]
	add r0, #3
	str r0, [r3,#0x2c]
	mov r0, r6
	pop {r1-r7,pc}
	.balign 4, 0
off_3006E10: .word byte_8043B54
off_3006E14: .word CopyBytes+1
off_3006E18: .word byte_200DD20
	thumb_func_end sub_3006DC8

	thumb_local_start
sub_3006E1C:
	push {r3,r7,lr}
	push {r0}
	ldrb r3, [r0,#2]
	ldrb r0, [r0,#3]
	sub r0, #1
	lsl r0, r0, #2
	mov r7, r10
	ldr r7, [r7,#0x38]
	add r7, #8
	add r7, r7, r0
	ldr r1, [r7]
	mov r0, #0xf
	mov r7, #0
	and r0, r3
	tst r0, r0
	bne loc_3006E40
	mov r0, #8
	mov r7, #0x10
loc_3006E40:
	push {r0}
	ldr r3, off_3006E78 // =chatbox_8040D5C+1
	mov lr, pc
	bx r3
	mov r3, r1
	mov r1, r0
	push {r7}
	mov r0, #0x10
	tst r7, r0
	beq loc_3006E58
	tst r1, r1
	beq loc_3006E5C
loc_3006E58:
	bl sub_3006C18
loc_3006E5C:
	mov r1, r3
	pop {r7}
	pop {r0}
	push {r7}
	mov r7, r9
	add r7, #1
	mov r9, r7
	pop {r7}
	sub r0, #1
	bne loc_3006E40
	pop {r0}
	add r0, #4
	pop {r3,r7,pc}
	.balign 4, 0
off_3006E78: .word chatbox_8040D5C+1
	thumb_func_end sub_3006E1C

	thumb_local_start
sub_3006E7C:
	push {r3,r7,lr}
	ldr r1, off_3006E8C // =off_3006E90
	ldrb r3, [r0,#1]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	mov lr, pc
	bx r1
	pop {r3,r7,pc}
off_3006E8C: .word off_3006E90
off_3006E90: .word sub_3006E98+1
	.word sub_3006E98+1
	thumb_func_end sub_3006E7C

	thumb_local_start
sub_3006E98:
	push {r1-r7,lr}
	ldr r3, off_3006F1C // =byte_200A220
	ldr r6, [r3,#0x30] // (dword_200A250 - 0x200a220)
	add r6, #1
	str r6, [r3,#0x30] // (dword_200A250 - 0x200a220)
	ldr r6, off_3006EE8 // =off_3006EEC
	ldrb r2, [r0,#2]
	ldrb r1, [r0,#1]
	tst r1, r1
	beq loc_3006EAE
	add r2, #2
loc_3006EAE:
	mov r1, #0
	lsl r2, r2, #2
	ldr r6, [r6,r2]
	mov r7, r3
	add r7, #0x34
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_3006F14 // =byte_200AFA0
	add r1, r1, r2
	push {r0,r1}
	mov r0, r6
	mov r2, #0x40
	push {r3}
	ldr r3, off_3006F18 // =CopyBytes+1
	mov lr, pc
	bx r3
	pop {r3}
	pop {r0,r6}
	mov r7, r3
	add r7, #0x34
	ldrb r1, [r7]
	add r1, #1
	strb r1, [r7]
	str r6, [r3,#0x28]
	add r0, #3
	str r0, [r3,#0x2c]
	mov r0, r6
	pop {r1-r7,pc}
	.balign 4, 0
off_3006EE8: .word off_3006EEC
off_3006EEC: .word unk_2001186
	.word unk_200119E
	.word byte_20007D6
	.word byte_200083A
	.word byte_20018F4
	.word byte_2001950
	.word byte_20019AC
	.word byte_2001A08
	.word byte_2001A64
	.word byte_2001AC0
off_3006F14: .word byte_200AFA0
off_3006F18: .word CopyBytes+1
off_3006F1C: .word byte_200A220
	thumb_func_end sub_3006E98

	thumb_func_start sub_3006F20
sub_3006F20:
	add r0, #4
	mov pc, lr
	thumb_func_end sub_3006F20

	thumb_func_start sub_3006F24
sub_3006F24:
	push {r1-r5,r7,lr}
	mov r1, #1
	mov r1, #2
	ldrb r1, [r0,r1]
	cmp r1, #0xff
	beq loc_3006F3E
	mov r7, r10
	ldr r7, [r7,#0x38]
	ldr r2, [r7,#0x40]
	lsl r1, r1, #1
	ldrh r1, [r2,r1]
	add r0, r2, r1
	pop {r1-r5,r7,pc}
loc_3006F3E:
	add r0, #3
	pop {r1-r5,r7,pc}
	thumb_func_end sub_3006F24

	thumb_func_start sub_3006F42
sub_3006F42:
	add r0, #2
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_3006F42

	thumb_func_start sub_3006F48
sub_3006F48:
	ldrb r7, [r0,#1]
	ldr r1, off_3006F54 // =byte_3006F58
	ldrb r1, [r7,r1]
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_3006F54: .word byte_3006F58
byte_3006F58: .byte 0x3, 0x0, 0x0, 0x0
	thumb_func_end sub_3006F48

	thumb_func_start sub_3006F5C
sub_3006F5C:
	ldrb r7, [r0,#1]
	ldr r1, off_3006F68
	ldrb r1, [r7,r1]
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0
off_3006F68: .word byte_3006F6C
byte_3006F6C: .byte 0x3, 0x2, 0x3, 0x3
	thumb_func_end sub_3006F5C

	thumb_func_start sub_3006F70
sub_3006F70:
	add r0, #3
	mov pc, lr
	thumb_func_end sub_3006F70

	thumb_func_start sub_3006F74
sub_3006F74:
	ldrb r7, [r0,#1]
	ldr r1, off_3006F80 // =byte_3006F84
	ldrb r1, [r7,r1]
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0
off_3006F80: .word byte_3006F84
byte_3006F84: .byte 0x2, 0x2, 0x2, 0x2, 0x4, 0x4, 0x4, 0x4
	thumb_func_end sub_3006F74

	thumb_func_start sub_3006F8C
sub_3006F8C:
	push {r1,r4-r7,lr}
	mov r7, r8
	mov r2, r9
	mov r3, r10
	mov r4, r12
	push {r2-r4,r7}
	ldr r3, off_3007028 // =unk_200BEA0
	lsr r4, r6, #5
	lsl r4, r4, #2
	add r2, r3, r4
	lsl r4, r4, #3
	sub r3, r6, r4
	ldr r4, off_3007024 // =byte_86ACD60
	mov r7, #0x60
	mul r7, r1
	add r7, r7, r4
	ldr r4, off_300702C // =byte_8043CA4
	ldrb r4, [r4,r1]
	push {r4}
	push {r6}
	ldr r6, [r5,#oChatbox_Unk_70]
	add r6, r6, r4
	str r6, [r5,#oChatbox_Unk_70]
	pop {r6}
	lsl r4, r4, #2
	add r6, r6, r4
	str r6, [r5,#oChatbox_Unk_7C]
	sub r4, #0x40
	neg r4, r4
	ldr r6, off_3007034 // =0x1d0
	ldrh r6, [r5,r6]
	lsl r6, r6, #2
	ldr r0, off_3007030 // =dword_3006B84
	ldr r0, [r0,r6]
	mov r12, r0
	pop {r6}
	mov r6, #0xb
loc_3006FD6:
	push {r3}
	mov r3, r12
	ldr r0, [r7]
	ldr r1, [r7,#4]
	add r0, r0, r3
	add r1, r1, r3
	lsl r1, r4
	lsr r1, r4
	pop {r3}
	push {r4,r6}
	push {r2}
	mov r4, #0x20
	sub r4, r4, r3
	ldr r2, [r2]
	mov r6, r0
	lsl r6, r3
	orr r6, r2
	mov r2, r1
	lsl r2, r3
	lsr r0, r4
	orr r0, r2
	lsr r1, r4
	pop {r2}
	str r6, [r2]
	str r0, [r2,#4]
	str r1, [r2,#8]
	add r7, #8
	mov r0, #0x60
	add r2, r2, r0
	pop {r4,r6}
	sub r6, #1
	bge loc_3006FD6
	pop {r2-r4,r7}
	mov r8, r7
	mov r9, r2
	mov r10, r3
	mov r12, r4
	pop {r1,r4-r7,pc}
	.balign 4, 0
off_3007024: .word byte_86ACD60
off_3007028: .word unk_200BEA0
off_300702C: .word byte_8043CA4
off_3007030: .word dword_3006B84
off_3007034: .word 0x1D0
	thumb_func_end sub_3006F8C

	thumb_func_start sub_3007038
sub_3007038:
	push {r1,r4-r7,lr}
	mov r7, r8
	mov r2, r9
	mov r3, r10
	mov r4, r12
	push {r2-r4,r7}
	ldr r3, off_30070AC // =unk_200BEA0
	lsr r4, r6, #5
	lsl r4, r4, #2
	add r2, r3, r4
	lsl r4, r4, #3
	sub r3, r6, r4
	ldr r4, off_30070A8 // =byte_86ACD60
	mov r7, #0x60
	mul r7, r1
	add r7, r7, r4
	ldr r4, off_30070B0 // =byte_8043CA4
	ldrb r4, [r4,r1]
	lsl r4, r4, #2
	sub r4, #0x40
	neg r4, r4
	mov r6, #0xb
loc_3007064:
	ldr r0, [r7]
	ldr r1, [r7,#4]
	lsl r1, r4
	lsr r1, r4
	push {r4,r6}
	push {r2}
	mov r4, #0x20
	sub r4, r4, r3
	ldr r2, [r2]
	mov r6, r0
	lsl r6, r3
	orr r6, r2
	mov r2, r1
	lsl r2, r3
	lsr r0, r4
	orr r0, r2
	lsr r1, r4
	pop {r2}
	str r6, [r2]
	str r0, [r2,#4]
	str r1, [r2,#8]
	add r7, #8
	mov r0, #0x60
	add r2, r2, r0
	pop {r4,r6}
	sub r6, #1
	bge loc_3007064
	pop {r2-r4,r7}
	mov r8, r7
	mov r9, r2
	mov r10, r3
	mov r12, r4
	pop {r1,r4-r7,pc}
	.balign 4, 0
off_30070A8: .word byte_86ACD60
off_30070AC: .word unk_200BEA0
off_30070B0: .word byte_8043CA4
	thumb_func_end sub_3007038

	thumb_func_start sub_30070B4
sub_30070B4:
	push {r4-r7,lr}
	mov r1, r8
	push {r1}
	mov r1, r9
	push {r1}
	ldr r7, off_30071F0 // =dword_200CDA0
	mov r2, r0
	lsl r3, r2, #2
	ldr r5, off_3007208 // =off_300720C
	ldr r5, [r5,r3]
	cmp r2, #0
	beq loc_30070DA
	cmp r2, #1
	beq loc_30070D8
	mov r1, #0xd
	lsl r1, r1, #7
	add r7, r7, r1
	b loc_30070DA
loc_30070D8:
	add r7, #0x80
loc_30070DA:
	ldr r6, [r5]
	tst r6, r6
	beq loc_30071BE
	mov r8, r6
	mov r4, #0
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6,#0x60]
	str r0, [r7,#4]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#8]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0xc]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x10]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x14]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x18]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x1c]
	mov r6, r8
	add r6, #4
	mov r1, #4
	add r1, r1, r4
	ldrb r0, [r5,r1]
	add r7, r7, r0
	mov r8, r6
	add r4, #1
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6,#0x60]
	str r0, [r7,#4]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#8]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0xc]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x10]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x14]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x18]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x1c]
	mov r6, r8
	add r6, #4
	mov r1, #4
	add r1, r1, r4
	ldrb r0, [r5,r1]
	add r7, r7, r0
	mov r8, r6
	add r4, #1
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6,#0x60]
	str r0, [r7,#4]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#8]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0xc]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x10]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x14]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x18]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x1c]
	mov r6, r8
	add r6, #4
	mov r1, #4
	add r1, r1, r4
	ldrb r0, [r5,r1]
	add r7, r7, r0
	mov r8, r6
	add r4, #1
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6,#0x60]
	str r0, [r7,#4]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#8]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0xc]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x10]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x14]
	add r6, #0xc0
	ldr r0, [r6]
	str r0, [r7,#0x18]
	ldr r0, [r6,#0x60]
	str r0, [r7,#0x1c]
	mov r6, r8
	add r6, #4
	mov r1, #4
	add r1, r1, r4
	ldrb r0, [r5,r1]
	add r7, r7, r0
	mov r8, r6
	add r5, #8
	b loc_30070DA
loc_30071BE:
	pop {r1}
	mov r8, r1
	pop {r1}
	mov r9, r1
	ldr r0, off_30071F0 // =dword_200CDA0
	ldr r1, dword_30071F4 // =0x6015700
	ldr r2, dword_30071F8 // =0xf00
	ldr r3, off_30071FC // =QueueEightWordAlignedGFXTransfer+1
	mov lr, pc
	bx r3
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	ldr r0, Flags3007200 // =FLAGS_3E_UNK_0400
	ldr r3, off_3007204 // =chatbox_maskFlags_3e+1
	mov lr, pc
	bx r3
	tst r0, r0
	beq locret_30071E8
	mov r0, #2
	mov r1, #0x3d
	strb r0, [r5,r1]
locret_30071E8:
	pop {r4-r7,pc}
	.balign 4, 0
	.word unk_200BEA0
off_30071F0: .word dword_200CDA0
dword_30071F4: .word 0x6015700
dword_30071F8: .word 0xF00
off_30071FC: .word QueueEightWordAlignedGFXTransfer+1 // (void *queuedSource, void *queuedDest, int queuedSize) -> void
Flags3007200: .word FLAGS_3E_UNK_0400
off_3007204: .word chatbox_maskFlags_3e+1
off_3007208: .word off_300720C
off_300720C: .word off_8044314
	.word off_8044378
	.word off_804440C
	thumb_func_end sub_30070B4

	thumb_local_start
sub_3007218:
	push {r4,r6,r7,lr}
	mov r6, r0
	mov r7, r1
	ldr r2, [r6,#oCollisionData_ObjectFlags1]
	ldr r3, [r6,#oCollisionData_SelfCollisionTypeFlags]
	push {r2,r3}
	ldr r0, off_3007504 // =battle_isTimeStop+1
	mov lr, pc
	bx r0
	pop {r2,r3}
	beq loc_300723E
	ldr r4, dword_3007508 // =0x1000000
	tst r2, r4
	bne loc_300723E
	ldr r1, [r7,#oCollisionData_SelfCollisionTypeFlags]
	ldr r4, dword_300750C // =0x10000
	tst r1, r4
	bne loc_300723E
	pop {r4,r6,r7,pc}
loc_300723E:
	ldr r0, [r7,#0x3c]
	ldr r4, byte_3007510 // =0x2
	tst r0, r4
	beq loc_300724E
	mov r1, #4
	tst r3, r1
	bne loc_300724E
	pop {r4,r6,r7,pc}
loc_300724E:
	mov r4, #4
	tst r0, r4
	beq loc_300725C
	ldr r4, byte_3007514 // =0x8
	tst r3, r4
	bne loc_300725C
	pop {r4,r6,r7,pc}
loc_300725C:
	ldr r4, byte_3007518 // =0x0
	tst r0, r4
	beq loc_300726A
	ldr r4, byte_300751c // =0x0
	tst r3, r4
	bne loc_300726A
	pop {r4,r6,r7,pc}
loc_300726A:
	ldr r4, byte_3007520 // =0x0
	tst r0, r4
	beq loc_3007272
	pop {r4,r6,r7,pc}
loc_3007272:
	mov r4, #0x20 
	tst r0, r4
	beq loc_3007280
	mov r4, #0x80
	tst r3, r4
	bne loc_3007280
	pop {r4,r6,r7,pc}
loc_3007280:
	ldr r4, byte_3007510 // =0x2
	tst r2, r4
	beq loc_3007290
	ldr r3, [r7,#0x30]
	mov r1, #4
	tst r3, r1
	bne loc_3007290
	pop {r4,r6,r7,pc}
loc_3007290:
	mov r4, #4
	tst r2, r4
	beq loc_30072A0
	ldr r3, [r7,#0x30]
	ldr r4, byte_3007514 // =0x8
	tst r3, r4
	bne loc_30072A0
	pop {r4,r6,r7,pc}
loc_30072A0:
	ldr r4, byte_3007518 // =0x0
	tst r2, r4
	beq loc_30072B0
	ldr r3, [r7,#0x30]
	ldr r4, byte_3007524 // =0x0
	tst r3, r4
	bne loc_30072B0
	pop {r4,r6,r7,pc}
loc_30072B0:
	ldr r4, byte_3007520 // =0x0
	tst r2, r4
	beq loc_30072B8
	pop {r4,r6,r7,pc}
loc_30072B8:
	mov r4, #0x20 
	tst r2, r4
	beq loc_30072C8
	ldr r3, [r7,#0x30]
	mov r4, #0x80
	tst r3, r4
	bne loc_30072C8
	pop {r4,r6,r7,pc}
loc_30072C8:
	mov r4, #1
	tst r2, r4
	beq loc_300730C
	ldr r1, [r7,#0x30]
	ldr r4, byte_3007528 // =0x0
	tst r1, r4
	bne loc_30072DA
	mov r4, #2
	b loc_30072DC
loc_30072DA:
	ldr r4, byte_300752c // =0x2
loc_30072DC:
	tst r1, r4
	bne loc_300730C
	mov r0, #1
	ldr r1, [r7,#0x70]
	orr r1, r0
	str r1, [r7,#0x70]
	ldr r3, [r7,#0x30]
	mov r2, #0x10
	bic r3, r2
	ldr r1, byte_3007530 // =0x0
	tst r3, r1
	bne loc_3007304
	ldrb r2, [r7,#5]
	mov r0, #1
	lsl r0, r2
	ldrb r2, [r6,#oCollisionData_Unk_03]
	orr r2, r0
	strb r2, [r6,#oCollisionData_Unk_03]
	ldr r2, byte_3007534 // =0x0
	orr r3, r2
loc_3007304:
	ldr r2, [r6,#oCollisionData_FlagsFromCollision]
	orr r2, r3
	str r2, [r6,#oCollisionData_FlagsFromCollision]
	pop {r4,r6,r7,pc}
loc_300730C:
	ldr r3, [r6,#oCollisionData_SelfCollisionTypeFlags]
	ldr r4, byte_3007538 // =0x0
	tst r3, r4
	beq loc_300731E
	ldr r3, [r7,#0x30]
	ldr r4, byte_300753c // =0x0
	tst r3, r4
	beq loc_300731E
	pop {r4,r6,r7,pc}
loc_300731E:
	ldr r3, [r6,#oCollisionData_SelfCollisionTypeFlags]
	ldr r4, byte_300753c // =0x0
	tst r3, r4
	beq loc_3007330
	ldr r3, [r7,#0x30]
	ldr r4, byte_3007538 // =0x0
	tst r3, r4
	beq loc_3007330
	pop {r4,r6,r7,pc}
loc_3007330:
	mov r4, #8
	tst r2, r4
	bne locret_3007430
	ldr r3, [r7,#0x44]
	ldr r2, [r6,#oCollisionData_Unk_7c]
	orr r2, r3
	str r2, [r6,#oCollisionData_Unk_7c]
	ldr r3, [r7,#0x30]
	ldr r2, [r6,#oCollisionData_FlagsFromCollision]
	orr r2, r3
	str r2, [r6,#oCollisionData_FlagsFromCollision]
	mov r4, r3
	ldrb r2, [r7,#0x19]
	mov r1, #0x76 
	ldrb r0, [r6,r1]
	orr r0, r2
	strb r0, [r6,r1]
	ldrb r2, [r7,#0x10]
	cmp r2, #0
	beq loc_300735A
	strb r2, [r6,#oCollisionData_StatusEffectFinal]
loc_300735A:
	bl sub_3007460
	ldrb r2, [r7,#7]
	ldrb r0, [r6,#oCollisionData_CounterTimer]
	tst r0, r0
	beq loc_300737A
	mov r0, #0x7f
	tst r2, r0
	beq loc_300737A
	mov r0, #0x80
	tst r2, r0
	bne loc_300737A
	mov r3, #0x40 
	ldr r1, [r6,#oCollisionData_FlagsFromCollision]
	orr r1, r3
	str r1, [r6,#oCollisionData_FlagsFromCollision]
loc_300737A:
	mov r1, #0x80
	tst r1, r2
	bne loc_300739E
	mov r3, #0x7f
	and r2, r3
	beq loc_300739E
	ldrb r0, [r6,#oCollisionData_CounterTimer]
	tst r0, r0
	beq loc_3007396
	mov r2, #1
	lsl r2, r2, #0xf
	mov r0, #0x90
	strh r2, [r6,r0]
	b loc_300739E
loc_3007396:
	mov r0, #0x90
	ldrh r3, [r6,r0]
	add r3, r3, r2
	strh r3, [r6,r0]
loc_300739E:
	mov r0, #0x8e
	mov r3, #0x7f
	and r2, r3
	ldrh r3, [r6,r0]
	add r3, r3, r2
	strh r3, [r6,r0]
	lsr r4, r4, #9
	bcc loc_30073B6
	mov r1, #0x92
	ldrh r3, [r6,r1]
	add r3, #1
	strh r3, [r6,r1]
loc_30073B6:
	ldrb r2, [r7,#0xe]
	ldrb r3, [r6,#oCollisionData_HitModifierFinal]
	orr r3, r2
	strb r3, [r6,#oCollisionData_HitModifierFinal]
	mov r0, #0x12
	ldrh r1, [r7,r0]
	mov r2, #0xff
	and r2, r1
	beq loc_30073CC
	mov r2, #0xa4
	strh r1, [r6,r2]
loc_30073CC:
	mov r4, #1
	ldrb r0, [r6,#oCollisionData_PrimaryElement]
	ldrb r1, [r7,#oCollisionData_PrimaryElement]
	bl getPrimaryElementWeaknessMultipler_3007432
	add r4, r4, r0
	ldrb r0, [r6,#oCollisionData_SecondaryElementWeakness]
	ldrb r1, [r7,#oCollisionData_SecondaryElement]
	bl getSecondaryElementWeaknessMultipler_30074e2
	add r4, r4, r0
	mov r0, #oCollisionData_DamageMultiplier
	sub r1, r4, #1
	strb r1, [r6,r0]
	bl sub_30074BA
	add r4, r4, r0
	bl applyElecOnBubbleMultipler_30074a2
	add r4, r4, r0
	mov r0, #oCollisionData_ExclamationIndicator
	sub r1, r4, #1
	strb r1, [r6,r0]
	ldrh r0, [r7,#oCollisionData_SelfDamage]
	ldrb r1, [r7,#oCollisionData_PrimaryElement]
	cmp r1, #ELEM_ELEC // elec, used for bblwrap additional damage, maybe bubble status as well
	bne loc_300740A
	mov r2, #oCollisionData_Unk_78
	ldrh r3, [r6,r2]
	add r3, r3, r0
	strh r3, [r6,r2]
loc_300740A:
	mul r0, r4
	add r1, r1, r1
	add r1, #oCollisionData_PanelDamage1
	ldrh r2, [r6,r1]
	add r2, r2, r0
	strh r2, [r6,r1]
	mov r0, r6
	mov r1, r7
	bl applyHeatOnGrassDamage_300766c
	mov r2, #oCollisionData_PanelDamage1
	ldrh r1, [r6,r2]
	add r1, r1, r0
	strh r1, [r6,r2]
	ldr r1, [r7,#oCollisionData_Unk_64]
	mov r3, #oCollisionData_Unk_a0
	ldr r2, [r6,r3]
	add r2, r2, r1
	str r2, [r6,r3]
locret_3007430:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_3007218

	thumb_local_start
// r0 - defending element
// r1 - attacking element
getPrimaryElementWeaknessMultipler_3007432:
	mov r2, #5
	mul r0, r2
	add r0, r0, r1
	ldr r1, byte_3007440 // =byte_3007444
	ldrb r0, [r1,r0]
	mov pc, lr
	.balign 4, 0x00
byte_3007440: .word byte_3007444
byte_3007444:
	.byte 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x1, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x1
	.byte 0x0, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
	thumb_func_end getPrimaryElementWeaknessMultipler_3007432

	thumb_local_start
sub_3007460:
	push {lr}
	ldrb r0, [r6,#oCollisionData_PrimaryElement]
	cmp r0, #2
	bne locret_30074A0
	ldr r0, [r7,#0x30]
	ldr r1, dword_3007540 // =0xc000000
	tst r0, r1
	beq locret_30074A0
	ldr r0, [r6,#oCollisionData_SelfCollisionTypeFlags]
	tst r0, r1
	bne locret_30074A0
	ldrh r0, [r7,#0x28]
	cmp r0, #0
	bne locret_30074A0
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	mov r1, #1
	tst r0, r1
	bne locret_30074A0
	ldrb r0, [r7,#0xa]
	ldrb r1, [r7,#0xb]
	bl _object_getPanelDataOffset
	ldrb r0, [r0,#oPanelData_Type]
	cmp r0, #7
	bne locret_30074A0
	ldrb r0, [r7,#0xa]
	ldrb r1, [r7,#0xb]
	mov r2, #2
	bl _object_setPanelType
	mov r0, #0x50 
	strb r0, [r7,#0x11]
locret_30074A0:
	pop {pc}
	thumb_func_end sub_3007460

	thumb_local_start
applyElecOnBubbleMultipler_30074a2:
	push {r4,lr}
	mov r4, #0
	ldr r0, [r6,#oCollisionData_ObjectFlags1]
	ldr r1, dword_3007544 // =0x80000000
	tst r0, r1
	beq loc_30074B6
	ldrb r0, [r7,#oCollisionData_PrimaryElement]
	cmp r0, #ELEM_ELEC
	bne loc_30074B6
	mov r4, #1
loc_30074B6:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end applyElecOnBubbleMultipler_30074a2

	thumb_local_start
sub_30074BA:
	push {r4,r5,lr}
	mov r4, #0
	ldr r0, [r6,#oCollisionData_ObjectFlags1]
	ldr r1, dword_300750C // =0x10000
	tst r0, r1
	beq loc_30074DE
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	mov r1, #2
	tst r0, r1
	bne loc_30074D4
	ldrb r0, [r7,#0x19]
	cmp r0, #0x10
	bne loc_30074DE
loc_30074D4:
	mov r4, #1
	ldr r5, [r6,#oCollisionData_ParentObjectPtr]
	ldr r0, off_3007548 // =sub_801A29A+1
	mov lr, pc
	bx r0
loc_30074DE:
	mov r0, r4
	pop {r4,r5,pc}
	thumb_func_end sub_30074BA

	thumb_local_start
// r0 - weakness bitfield
// r1 - attacking element bitfield
getSecondaryElementWeaknessMultipler_30074e2:
	mov r2, #0
	tst r0, r1
	bne loc_30074F8
	cmp r0, #0x80
	bne loc_30074FE
	ldr r0, [r7,#oCollisionData_SelfCollisionTypeFlags]
	ldr r1, dword_300754C // =0x2000
	tst r0, r1
	beq loc_30074FE
	mov r2, #1
	b loc_30074FE
loc_30074F8:
	cmp r0, #0
	beq loc_30074FE
	mov r2, #1
loc_30074FE:
	mov r0, r2
	mov pc, lr
	.balign 4, 0
off_3007504: .word battle_isTimeStop+1
dword_3007508: .word 0x1000000
dword_300750C: .word 0x10000
byte_3007510: .byte 0x2, 0x2, 0x0, 0x0
byte_3007514: .byte 0x8, 0x10, 0x0, 0x0
byte_3007518: .byte 0x0, 0x0, 0x80, 0x0
byte_300751c: .byte 0x0, 0x30, 0x0, 0xC
byte_3007520: .byte 0x0, 0x0, 0x0, 0x8
byte_3007524: .byte 0x0, 0x30, 0x0, 0x0
byte_3007528: .byte 0x0, 0x40, 0x0, 0x0
byte_300752c: .byte 0x2, 0x10, 0x0, 0x0
byte_3007530: .byte 0x0, 0x50, 0x0, 0xC
byte_3007534: .byte 0x0, 0x0, 0x2, 0x0
byte_3007538: .byte 0x0, 0x0, 0x10, 0x0
byte_300753c: .byte 0x0, 0x80, 0x0, 0x0
dword_3007540: .word 0xC000000
dword_3007544: .word 0x80000000
off_3007548: .word sub_801A29A+1
dword_300754C: .word 0x2000
	thumb_func_end getSecondaryElementWeaknessMultipler_30074e2

	thumb_func_start _object_removeCollisionData
_object_removeCollisionData:
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r5, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r1, [r5,#oCollisionData_Region]
	mov r2, #0x80
	tst r1, r2
	bne loc_30075BC
	lsl r1, r1, #2
	ldr r2, off_30075F8 // =PanelOffsetListsPointerTable
	ldr r4, [r2,r1]
	ldrb r0, [r5,#oCollisionData_Alliance]
	ldrb r1, [r5,#oCollisionData_Flip]
	ldr r2, off_300789C // =object_getFlipDirection+1
	mov lr, pc
	bx r2
	mov r6, r0
	.balign 4, 0
loc_3007570: .align 1, 0
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_30075F4
	mul r0, r6
	ldrb r2, [r5,#oCollisionData_PanelX]
	add r0, r0, r2
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldrb r2, [r5,#oCollisionData_PanelY]
	add r1, r1, r2
	mov r2, r5
	str r0, [sp]
	str r1, [sp,#4]
	ldr r3, off_30078A0 // =object_isValidPanel+1
	mov lr, pc
	bx r3
	beq loc_30075B8
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sub_3007880
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl _object_updatePanelParameters
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, r5
	bl sub_30075FC
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, r5
	bl sub_3007708
loc_30075B8: .align 1, 0
	add r4, #2
	b loc_3007570
loc_30075BC: .align 1, 0
	mov r7, #1
loc_30075BE: .align 1, 0
	mov r6, #1
loc_30075C0: .align 1, 0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_3007880
	beq loc_30075E8
	mov r0, r6
	mov r1, r7
	bl _object_updatePanelParameters
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_30075FC
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_3007708
loc_30075E8: .align 1, 0
	add r6, #1
	cmp r6, #6
	ble loc_30075C0
	add r7, #1
	cmp r7, #3
	ble loc_30075BE
loc_30075F4: .align 1, 0
	add sp, sp, #8
	pop {r4-r7,pc}
off_30075F8: .word PanelOffsetListsPointerTable
	thumb_func_end _object_removeCollisionData

	thumb_local_start
sub_30075FC:
	push {r4-r7,lr}
	push {r0-r2}
	ldr r0, off_30078A4 // =battle_isPaused+1
	mov lr, pc
	bx r0
	pop {r0-r2}
	bne locret_300764A
	ldr r3, off_300764C // =unk_2034F60
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	mov r5, r2
	mov r6, r10
	ldr r6, [r6,#0x30]
	ldr r7, [r3,r0]
loc_300761A:
	lsl r7, r7, #1
	bcs loc_3007622
	beq locret_300764A
	b loc_3007646
loc_3007622:
	ldr r0, [r5,#oCollisionData_Unk_68]
	ldr r1, [r6,#0x44]
	tst r0, r1
	bne loc_3007646
	orr r0, r1
	str r0, [r5,#oCollisionData_Unk_68]
	ldr r0, [r6,#0x68]
	ldr r1, [r5,#oCollisionData_CollisionIndexBit]
	orr r0, r1
	str r0, [r6,#0x68]
	mov r0, r5
	mov r1, r6
	bl sub_3007650
	mov r0, r6
	mov r1, r5
	bl sub_3007650
loc_3007646:
	add r6, #0xa8
	b loc_300761A
locret_300764A:
	pop {r4-r7,pc}
	.balign 4, 0
off_300764C: .word unk_2034F60
	thumb_func_end sub_30075FC

	thumb_local_start
sub_3007650:
	push {r6,r7,lr}
	ldr r2, [r0,#oCollisionData_TargetCollisionTypeFlags]
	ldr r3, [r1,#oCollisionData_SelfCollisionTypeFlags]
	tst r2, r3
	beq locret_300766A
	mov r6, r0
	mov r7, r1
	bl sub_3007218
	mov r0, r6
	mov r1, r7
	bl sub_3007692
locret_300766A:
	pop {r6,r7,pc}
	thumb_func_end sub_3007650

	thumb_local_start
// r0 - defending collision data
// r1 - attacking collision data
applyHeatOnGrassDamage_300766c:
	push {r4,lr}
	mov r4, r1
	ldrb r1, [r0,#oCollisionData_PanelY]
	ldrb r0, [r0,#oCollisionData_PanelX]
	bl _object_getPanelDataOffset
	ldrb r0, [r0,#oPanelData_Type]
	ldrb r1, [r4,#oCollisionData_PrimaryElement]
	cmp r1, #ELEM_HEAT // heat
	bne loc_3007688
	cmp r0, #6 // grass
	bne loc_300768E
	ldrh r0, [r4,#oCollisionData_SelfDamage]
	pop {r4,pc}
loc_3007688:
	b loc_300768E
	ldrh r0, [r4,#oCollisionData_SelfDamage]
	pop {r4,pc}
loc_300768E:
	mov r0, #0
	pop {r4,pc}
	thumb_func_end applyHeatOnGrassDamage_300766c

	thumb_local_start
sub_3007692:
	push {r4,r6,r7,lr}
	mov r6, r0
	mov r7, r1
	ldr r0, off_30078A8 // =battle_isTimeStop+1
	mov lr, pc
	bx r0
	ldr r2, [r6,#oCollisionData_ObjectFlags1]
	beq loc_30076B2
	ldr r4, byte_30078AC // =0x0
	tst r2, r4
	bne loc_30076B2
	ldr r1, [r7,#oCollisionData_SelfCollisionTypeFlags]
	ldr r4, byte_30078B0 // =0x0
	tst r1, r4
	bne loc_30076B2
	pop {r4,r6,r7,pc}
loc_30076B2:
	ldr r0, [r7,#0x3c]
	ldr r3, [r6,#oCollisionData_SelfCollisionTypeFlags]
	mov r4, #0x20 
	tst r0, r4
	beq loc_30076C4
	mov r4, #0x80
	tst r3, r4
	bne loc_30076C4
	pop {r4,r6,r7,pc}
loc_30076C4:
	ldr r1, [r7,#0x30]
	ldr r2, [r6,#oCollisionData_ObjectFlags1]
	mov r4, #0x20 
	tst r2, r4
	beq loc_30076D6
	mov r4, #0x80
	tst r1, r4
	bne loc_30076D6
	pop {r4,r6,r7,pc}
loc_30076D6:
	ldr r2, [r6,#oCollisionData_Unk_6c]
	ldr r3, [r7,#oCollisionData_SelfCollisionTypeFlags]
	orr r2, r3
	str r2, [r6,#oCollisionData_Unk_6c]
	ldrb r2, [r7,#oCollisionData_SecondaryElement]
	mov r1, #oCollisionData_Unk_77
	ldrb r0, [r6,r1]
	orr r0, r2
	strb r0, [r6,r1]
	ldrb r2, [r7,#oCollisionData_PrimaryElement]
	add r2, r2, r2
	add r2, #oCollisionData_PrimaryElementDamages
	ldrh r3, [r7,#oCollisionData_SelfDamage]
	ldrh r4, [r6,r2]
	add r4, r4, r3
	strh r4, [r6,r2]
	mov r0, r6
	mov r1, r7
	bl applyHeatOnGrassDamage_300766c
	mov r2, #oCollisionData_PrimaryElementDamages
	ldrh r1, [r6,r2]
	add r1, r1, r0
	strh r1, [r6,r2]
	pop {r4,r6,r7,pc}
	thumb_func_end sub_3007692

	thumb_local_start
sub_3007708:
	push {r4,r6,r7,lr}
	push {r0-r2}
	ldr r0, off_30078B4 // =battle_isPaused+1
	mov lr, pc
	bx r0
	tst r0, r0
	pop {r0-r2}
	bne locret_3007774
	mov r4, r2
	mov r6, r0
	mov r7, r1
	bl _object_getPanelDataOffset
	tst r0, r0
	beq locret_3007774
	ldr r2, [r4,#oCollisionData_SelfCollisionTypeFlags]
	ldr r1, dword_3007778 // =0xc000000
	tst r2, r1
	bne locret_3007774
	ldrb r0, [r0,#oPanelData_Type]
	cmp r0, #6
	bne loc_3007746
	ldrb r0, [r4,#oCollisionData_PrimaryElement]
	cmp r0, #ELEM_HEAT
	bne locret_3007774
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl _object_setPanelType
	pop {r4,r6,r7,pc}
loc_3007746:
	cmp r0, #8
	bne loc_300775C
	ldrb r0, [r4,#oCollisionData_PrimaryElement]
	cmp r0, #2
	bne locret_3007774
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl _object_setPanelType
	pop {r4,r6,r7,pc}
loc_300775C:
	cmp r0, #9
	blt locret_3007774
	cmp r0, #0xc
	bgt locret_3007774
	ldrb r0, [r4,#oCollisionData_PrimaryElement]
	cmp r0, #4
	bne locret_3007774
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl _object_setPanelType
locret_3007774:
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_3007778: .word 0xC000000
	thumb_func_end sub_3007708

	thumb_func_start sub_300777C
sub_300777C:
	push {r4-r7,lr}
	mov r3, r8
	push {r0}
	mov r5, r0
	ldrb r1, [r5,#oCollisionData_Region]
	mov r2, #0x80
	tst r1, r2
	bne loc_30077D6
	lsl r1, r1, #2
	ldr r2, off_3007820 // =PanelOffsetListsPointerTable
	ldr r4, [r2,r1]
	ldrb r0, [r5,#oCollisionData_Alliance]
	ldrb r1, [r5,#oCollisionData_Flip]
	ldr r2, off_30078B8 // =object_getFlipDirection+1
	mov lr, pc
	bx r2
	mov r6, r0
loc_300779E:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_300781A
	mul r0, r6
	ldrb r2, [r5,#oCollisionData_PanelX]
	add r0, r0, r2
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldrb r2, [r5,#oCollisionData_PanelY]
	add r1, r1, r2
	mov r7, r0
	mov r8, r1
	ldr r3, off_30078BC // =object_isValidPanel+1
	mov lr, pc
	bx r3
	beq loc_30077D2
	mov r0, r7
	mov r1, r8
	mov r2, r5
	bl sub_3007868
	mov r0, r7
	mov r1, r8
	bl _object_updatePanelParameters
loc_30077D2:
	add r4, #2
	b loc_300779E
loc_30077D6:
	lsl r1, r1, #0x19
	lsr r1, r1, #0x16
	ldr r0, off_3007824 // =byte_8019C34
	add r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0,#4]
	mov r7, #1
loc_30077E4:
	mov r6, #1
loc_30077E6:
	push {r2,r3}
	mov r0, r6
	mov r1, r7
	push {r4}
	ldr r4, off_30078C0 // =object_checkPanelParameters+1
	mov lr, pc
	bx r4
	pop {r4}
	tst r0, r0
	beq loc_300780C
	mov r2, r5
	mov r0, r6
	mov r1, r7
	bl sub_3007868
	mov r0, r7
	mov r1, r8
	bl _object_updatePanelParameters
loc_300780C:
	pop {r2,r3}
	add r6, #1
	cmp r6, #6
	ble loc_30077E6
	add r7, #1
	cmp r7, #3
	ble loc_30077E4
loc_300781A:
	pop {r0}
	mov r8, r0
	pop {r4-r7,pc}
	.balign 4, 0
off_3007820: .word PanelOffsetListsPointerTable
off_3007824: .word byte_8019C34
	thumb_func_end sub_300777C

	thumb_local_start
sub_3007828:
	push {r4-r6,lr}
	mov r5, r0
	ldrb r1, [r0,#1]
	lsl r1, r1, #2
	ldr r2, off_3007864 // =PanelOffsetListsPointerTable
	ldr r4, [r2,r1]
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	ldr r2, off_30078C4 // =object_getAllianceDirection+1
	mov lr, pc
	bx r2
	mov r6, r0
loc_3007840:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq locret_3007860
	mul r0, r6
	ldrb r2, [r5,#0xa]
	add r0, r0, r2
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldrb r2, [r5,#0xb]
	add r1, r1, r2
	mov r2, r5
	bl sub_3007880
	add r4, #2
	b loc_3007840
locret_3007860:
	pop {r4-r6,pc}
	.balign 4, 0
off_3007864: .word PanelOffsetListsPointerTable
	thumb_func_end sub_3007828

	thumb_local_start
sub_3007868:
	ldr r3, off_300787C // =unk_2034F60
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r3,r0]
	ldr r2, [r2,#oCollisionData_CollisionIndexBit]
	orr r1, r2
	str r1, [r3,r0]
	mov pc, lr
	.balign 4, 0x00
off_300787C: .word unk_2034F60
	thumb_func_end sub_3007868

	thumb_local_start
sub_3007880:
	ldr r3, off_3007898 // =unk_2034F60
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r3, r3, r0
	ldr r1, [r3]
	mov r0, r1
	ldr r2, [r2,#oCollisionData_CollisionIndexBit]
	bic r1, r2
	str r1, [r3]
	tst r0, r2
	mov pc, lr
off_3007898: .word unk_2034F60
off_300789C: .word object_getFlipDirection+1
off_30078A0: .word object_isValidPanel+1
off_30078A4: .word battle_isPaused+1
off_30078A8: .word battle_isTimeStop+1
byte_30078AC: .byte 0x0, 0x0, 0x0, 0x1
byte_30078B0: .byte 0x0, 0x0, 0x1, 0x0
off_30078B4: .word battle_isPaused+1
off_30078B8: .word object_getFlipDirection+1
off_30078BC: .word object_isValidPanel+1
off_30078C0: .word object_checkPanelParameters+1
off_30078C4: .word object_getAllianceDirection+1
	thumb_func_end sub_3007880

	thumb_func_start sub_30078C8
sub_30078C8:
	push {r4,r5,lr}
	mov r5, #4
loc_30078CC:
	mov r4, #7
loc_30078CE:
	mov r0, r4
	mov r1, r5
	bl _object_updatePanelParameters
	sub r4, #1
	bgt loc_30078CE
	sub r5, #1
	bgt loc_30078CC
	pop {r4,r5,pc}
	thumb_func_end sub_30078C8

	thumb_func_start _object_updatePanelParameters
_object_updatePanelParameters:
	push {r4-r7,lr}
	mov r4, r0
	mov r5, r1
	bl _object_getPanelDataOffset
	tst r0, r0
	beq locret_300791C
	ldrb r1, [r0,#oPanelData_Type]
	strb r1, [r0,#oPanelData_Animation]
	lsl r2, r1, #2
	ldr r3, off_3007920 // =word_3007924
	ldr r3, [r3,r2]
	orr r1, r3
	ldrb r2, [r0,#oPanelData_Alliance]
	strb r2, [r0,#oPanelData_Unk_07]
	lsl r2, r2, #5
	orr r1, r2
	ldr r2, [r0,#oPanelData_ReserverObjectPtr]
	tst r2, r2
	beq loc_300790A
	mov r2, #0x80
loc_300790A:
	orr r1, r2
	mov r7, r0
	mov r6, r1
	mov r0, r4
	mov r1, r5
	bl sub_3007978
	orr r6, r0
	str r6, [r7,#oPanelData_Flags]
locret_300791C:
	pop {r4-r7,pc}
	.balign 4, 0
off_3007920: .word word_3007924
word_3007924: .hword 0x8000, 0x1, 0x4000, 0x1, 0x10, 0x1, 0x50, 0x1, 0x110, 0x1, 0x2010
	.hword 0x1, 0x410, 0x1, 0x810, 0x1, 0x1010, 0x1, 0x210, 0x1, 0x210, 0x1
	.hword 0x210, 0x1, 0x210, 0x1
	thumb_func_end _object_updatePanelParameters

	thumb_func_start _object_getPanelDataOffset
_object_getPanelDataOffset:
	// is panel x in range [1,6]?
	sub r3, r0, #1
	cmp r3, #6
	bcs loc_3007970
	// is panel y in range [1,3]?
	sub r3, r1, #1
	cmp r3, #3
	bcs loc_3007970
// panely * 8
	lsl r1, r1, #3
// panely * 8 + panelx
	add r1, r1, r0
// (panely * 8 + panelx) * 32
	lsl r0, r1, #5
	ldr r1, off_3007974 // =ePanelData
	add r0, r0, r1
	mov pc, lr
loc_3007970:
	mov r0, #0
	mov pc, lr
off_3007974: .word ePanelData
	thumb_func_end _object_getPanelDataOffset

	thumb_local_start
sub_3007978:
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_30079A0 // =unk_2034F60
	ldr r2, [r0,r1]
	mov r1, r10
	ldr r1, [r1,#oToolkit_CollisionDataPtr]
	mov r0, #0
loc_3007988:
	lsl r2, r2, #1
	bcs loc_3007990
	beq locret_300799C
	b loc_3007998
loc_3007990:
	ldr r3, [r1,#0x30]
	lsr r3, r3, #0x10
	lsl r3, r3, #0x10
	orr r0, r3
loc_3007998:
	add r1, #0xa8
	b loc_3007988
locret_300799C:
	mov pc, lr
	.balign 4, 0
off_30079A0: .word unk_2034F60
	thumb_func_end sub_3007978

	thumb_func_start _object_setPanelType
_object_setPanelType:
	push {r4-r6,lr}
	mov r4, r0
	mov r5, r1
	mov r6, r2
	bl _object_getPanelDataOffset
	ldrb r3, [r0,#oPanelData_Type]
	tst r3, r3
	beq locret_30079CE
	strb r6, [r0,#oPanelData_Type]
	cmp r6, #9
	blt loc_30079C6
	cmp r6, #0xc
	bgt loc_30079C6
	ldr r1, byte_30079D0 // =0x8
	strh r1, [r0,#oPanelData_Unk_12]
	b loc_30079C6
loc_30079C6:
	mov r0, r4
	mov r1, r5
	bl _object_updatePanelParameters
locret_30079CE:
	pop {r4-r6,pc}
	.balign 4, 0
byte_30079D0: .word 0x708
	.byte 0x83, 0x78, 0x1B, 0x42, 0xB, 0xD0, 0x86
	.byte 0x70, 0x9, 0x2E, 0x4, 0xDB, 0xC, 0x2E, 0x2, 0xDC, 0x3, 0x49
	.byte 0x41, 0x82, 0xFF, 0xE7, 0x20, 0x1C, 0x29, 0x1C, 0xFF, 0xF7, 0x89
	.byte 0xFF, 0x70, 0xBD
	// <endpool> <endfile>
	.word 0x708
	thumb_func_end _object_setPanelType

	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x50
	.byte  0
	.byte 0x40
	.byte  4
	.byte 0x55
	.byte  0
	.byte 0xA2
	.byte 0x43
	.byte 0x52
	.byte  0
	.byte  0
	.byte 0x70
	.byte 0x66
	.byte  0
	.byte  0
	.byte  0
	.byte 0x67
	.byte  0
	.byte  0
	.byte  0
	.byte 0x70
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x66
	.byte 0xE
	.byte  0
	.byte  0
	.byte 0x66
	.byte 0xE6
	.byte  0
	.byte  0
	.byte 0x66
	.byte 0x66
	.byte 0xE
	.byte  0
	.byte 0x67
	.byte 0x66
	.byte 0xE6
	.byte  0
	.byte 0x70
	.byte 0x66
	.byte 0x66
	.byte 0xE
	.byte  0
	.byte 0x67
	.byte 0x66
	.byte  6
	.byte  0
	.byte 0x70
	.byte 0x66
	.byte 0x6A
	.byte  0
	.byte  0
	.byte 0x77
	.byte 0xAA
	.byte  0
	.byte 0xE0
	.byte 0x66
	.byte  7
	.byte  0
	.byte 0xE0
	.byte 0x76
	.byte  0
	.byte  0
	.byte 0x6E
	.byte 0x76
	.byte  8
	.byte  0
	.byte 0x8E
	.byte  7
	.byte 0x80
	.byte  0
	.byte 0x6E
	.byte 0x88
	.byte 0x80
	.byte  0
	.byte 0x6E
	.byte 0x87
	.byte 0x88
	.byte 0xE0
	.byte 0x66
	.byte  7
	.byte 0x88
	.byte 0xE6
	.byte 0x7A
	.byte  0
	.byte 0x80
	.byte  0
	.byte 0x34
	.byte 0x3A
	.byte 0x24
	.byte 0x20
	.byte 0x33
	.byte 0xA3
	.byte 0x54
	.byte 0x20
	.byte 0x33
	.byte 0xA3
	.byte 0xD4
	.byte 0x22
	.byte 0x34
	.byte 0xA3
	.byte 0xD4
	.byte 0x25
	.byte 0x22
	.byte 0xA3
	.byte 0xD4
	.byte 0x52
	.byte 0x33
	.byte 0x42
	.byte 0xD4
	.byte 0x72
	.byte 0x7C
	.byte 0x23
	.byte 0xD7
	.byte 0xC8
	.byte 0xCC
	.byte 0x24
	.byte 0x7A
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0xA7
	.byte  0
	.byte  0
	.byte  0
	.byte 0x60
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x70
	.byte  0
	.byte  0
	.byte  0
	.byte 0xA7
	.byte  0
	.byte  0
	.byte 0x77
	.byte 0xBA
	.byte  0
	.byte 0x70
	.byte 0xBE
	.byte 0x7B
	.byte 0x6A
	.byte 0x2A
	.byte 0x22
	.byte 0xAA
	.byte 0xBA
	.byte 0x32
	.byte 0xB3
	.byte 0x2E
	.byte 0xB6
	.byte 0x34
	.byte 0xEB
	.byte 0x34
	.byte 0x27
	.byte 0x43
	.byte 0x2B
	.byte 0x35
	.byte 0x2A
	.byte 0x45
	.byte 0x2B
	.byte 0x45
	.byte 0x7B
	.byte 0x52
	.byte 0x6E
	.byte 0x52
	.byte  7
	.byte 0x28
	.byte 0x62
	.byte 0x26
	.byte 0x80
	.byte 0x78
	.byte 0x42
	.byte 0x66
	.byte 0x7A
	.byte 0x7C
	.byte 0x25
	.byte 0xBA
	.byte 0x55
	.byte 0x62
	.byte 0xF5
	.byte 0x7F
	.byte 0x33
	.byte 0x24
	.byte 0x78
	.byte 0xFF
	.byte 0x33
	.byte 0x85
	.byte 0x78
	.byte 0x67
	.byte 0x33
	.byte 0x82
	.byte 0x88
	.byte 0x78
	.byte 0x44
	.byte 0x82
	.byte 0x88
	.byte 0x88
/*For debugging purposes, connect comment at any range!*/
