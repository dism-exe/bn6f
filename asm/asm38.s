.include "asm/asm38.inc"

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
off_3005C94: .word dword_3001D60
byte_3005C98: .byte 0xC8, 0x20, 0x0, 0x0
off_3005C9C: .word off_3000E70
off_3005CA0: .word sub_3005CDA+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word sub_814469C+1
	.word sub_81446AC+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	.word nullsub_38+1
	arm_func_end sub_3005B00

	thumb_local_start
nullsub_38:
	bx lr
	thumb_func_end nullsub_38

	thumb_local_start
sub_3005CDA:
	push {lr}
	ldr r0, off_3005D20 // =sub_803EA68+1 
	mov lr, pc
	bx r0
	mov r1, r0
	ldr r0, jt_81D620C // =off_3005D10 
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
off_3005D04: .word dword_200A870
	.word sCamera+0x50 // sCamera.unk_50
jt_81D620C: .word off_3005D10
off_3005D10: .word sub_803DE72+1
	.word sub_813D5DC+1
	.word sub_813D5DC+1
	.word sub_813D5DC+1
off_3005D20: .word sub_803EA68+1
	thumb_func_end sub_3005CF0

	thumb_local_start
sub_3005D24:
	push {lr}
	ldr r1, off_3005D68 // =byte_20081B0 
	ldrb r3, [r1]
	tst r3, r3
	beq locret_3005D64
	ldr r0, off_3005D6C // =DMA0SourceAddress 
	ldr r1, byte_3005D70 // =0x0 
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
	.balign 4, 0x00
off_3005D68: .word byte_20081B0
off_3005D6C: .word DMA0SourceAddress
byte_3005D70: .byte 0x0, 0x0, 0x0, 0x80
off_3005D74: .word sub_80068E0+1
	thumb_func_end sub_3005D24

	thumb_local_start
sub_3005D78:
	push {lr}
	push {lr}
	ldr r0, off_3005D94 // =sub_80005C4+1 
	mov lr, pc
	bx r0
	pop {r0}
	mov lr, r0
	ldr r0, off_3005D90 // =sub_80005AC+1 
	mov lr, pc
	bx r0
	pop {r0}
	bx r0
off_3005D90: .word sub_80005AC+1
off_3005D94: .word sub_80005C4+1
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
	ldr r1, byte_3005DD0 // =0x5 
	strh r1, [r0]
	mov r0, #1
	strh r0, [r4]
	pop {r4-r7,pc}
off_3005DCC: .word off_3005CA0
byte_3005DD0: .byte 0x5, 0x20, 0x0, 0x0
	thumb_func_end sub_3005DA0

	thumb_func_start sub_3005DD4
sub_3005DD4:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister 
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r2, off_3005DE8 // =off_3000E70 
	str r1, [r2,r0]
	strh r4, [r3]
	pop {r4,pc}
	.balign 4, 0x00
off_3005DE8: .word off_3000E70
	thumb_func_end sub_3005DD4

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

	thumb_local_start
sub_3005E18:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister 
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r1, off_3005E5C // =dword_3001D60 
	mov r0, #0
	str r0, [r1]
	strh r4, [r3]
	pop {r4,pc}
	thumb_func_end sub_3005E18

	thumb_func_start sub_3005E2C
sub_3005E2C:
	push {r4,lr}
	ldr r3, off_3005E54 // =InterruptMasterEnableRegister 
	ldrh r4, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r1, off_3005E5C // =dword_3001D60 
	mov r0, #1
	str r0, [r1]
	push {r3}
	mov r0, #0x18
	ldr r1, off_3005E78 // =sub_814469C+1 
	bl sub_3005DD4
	mov r0, #0x1c
	ldr r1, off_3005E7C // =sub_81446AC+1 
	bl sub_3005DD4
	pop {r3}
	strh r4, [r3]
	pop {r4,pc}
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
off_3005E78: .word sub_814469C+1
off_3005E7C: .word sub_81446AC+1
	thumb_func_end sub_3005E6A

loc_3005E80:
	sub sp, sp, #4
	str r0, [sp]
	mov r6, r10
	ldr r6, [r6,#0x28]
	lsl r2, r2, #0xb
	add r6, r6, r2
	add r4, r4, r0
	add r5, r5, r1
	thumb_local_start
sub_3005E90:
	mov r2, #0x1f
	mvn r2, r2
	mov r7, r0
	orr r7, r1
	tst r7, r2
	bne loc_3005EA6
	lsl r7, r0, #1
	lsl r2, r1, #6
	add r2, r2, r7
	ldrh r7, [r3]
	strh r7, [r6,r2]
loc_3005EA6:
	add r3, #2
	add r0, #1
	cmp r0, r4
	blt sub_3005E90
	ldr r0, [sp]
	add r1, #1
	cmp r1, r5
	blt sub_3005E90
	add sp, sp, #4
	mov pc, lr
	thumb_func_end sub_3005E90

loc_3005EBA:
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
	thumb_func_start sub_3005EF0
sub_3005EF0:
	push {r5,lr}
	cmp r6, #0
	ble locret_3005F18
	mov r12, r0
	ldr r1, byte_3005F1C // =0x20 
	ldr r2, [r1,r2]
	mov r9, r2
	ldr r2, byte_3005F28 // =0xde 
	ldr r3, byte_3005F2C // =0x20 
	ldr r1, byte_3005F30 // =0xef 
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
	.balign 4, 0x00
byte_3005F1C: .byte 0x20, 0x5F, 0x0, 0x3, 0x35, 0x5F, 0x0, 0x3, 0x57, 0x5F, 0x0
	.byte 0x3
byte_3005F28: .byte 0xDE, 0x7B, 0x0, 0x0
byte_3005F2C: .byte 0x20, 0x84, 0x0, 0x0
byte_3005F30: .byte 0xEF, 0x3D, 0x0, 0x0
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

	thumb_local_start
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
	.word dword_3005FC0+1
	.word byte_3005FE4+0x17
dword_3005FC0: .word 0x6E846A8
	.word 0x5AC0EC0
	.word 0x46D0EE4
	.word 0x468C0EED
	.word 0x1A08211F
	.word 0x1B4D1B0C
	.word 0x3004661
	.word 0x32D0324
	.word 0x43544348
byte_3005FE4: .byte 0x5D, 0x43, 0x0, 0xC, 0x24, 0xC, 0x2D, 0xC, 0x64, 0x1
	.byte 0xAD, 0x2, 0x20, 0x43, 0x28, 0x43, 0x45, 0x46, 0x28, 0x18
	.byte 0xF7, 0x46, 0xA8, 0x46, 0xE8, 0x6, 0xC0, 0xE, 0xAC, 0x5
	.byte 0xE4, 0xE, 0x6D, 0x4, 0xED, 0xE, 0x0, 0x3, 0x24, 0x3
	.byte 0x2D, 0x3, 0x48, 0x43, 0x54, 0x43, 0x5D, 0x43, 0x0, 0xC
	.byte 0x24, 0xC, 0x2D, 0xC, 0x64, 0x1, 0xAD, 0x2, 0x20, 0x43
	.byte 0x28, 0x43, 0x45, 0x46, 0x28, 0x1A, 0xF7, 0x46
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
	ldr r1, byte_30060E4 // =0xe8 
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
	ldr r1, byte_3006100 // =0x0 
	ldrh r3, [r5,#8]
	lsl r3, r3, #5
	add r1, r1, r3
	ldr r7, off_3006104 // =loc_8000AC8+1 
	mov lr, pc
	bx r7
	mov r5, r8
	b loc_30060BE
loc_30060B8:
	strh r0, [r5,#8]
	mov r0, r12
	str r0, [r5,#0x24]
loc_30060BE:
	ldrb r1, [r5,#0x15]
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
	ldrb r1, [r5,#0x15]
	mov r2, #0xf0
	bic r1, r2
	lsl r0, r0, #4
	orr r1, r0
	strb r1, [r5,#0x15]
locret_30060E2:
	pop {r5,pc}
byte_30060E4: .byte 0xE8, 0x60, 0x0, 0x3
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
byte_3006100: .byte 0x0, 0x0, 0x1, 0x6
off_3006104: .word loc_8000AC8+1
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
	add r1, r1, r2
	lsl r1, r1, #5
	add r0, r0, r1
	ldrh r7, [r5,#6]
	tst r7, r7
	beq loc_3006140
	ldr r7, off_300619C // =byte_3001750 
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
off_300619C: .word byte_3001750
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
	.byte 0, 0
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
	ldr r4, off_3006308 // =sCamera+76 
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
	ldr r0, off_3006308 // =sCamera+76 
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
	.hword 0x0
off_3006308: .word sCamera+0x4C // sCamera.unk_4C
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
	ldr r5, off_3006388 // =sub_8031612+1 
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
	ldr r3, [r3,#0xc]
	ldr r1, [r0]
	ldr r4, [r3,#0x3c]
	sub r1, r1, r4
	mov r8, r1
	ldr r6, [r0,#4]
	ldr r4, [r3,#0x40]
	sub r6, r6, r4
	add r1, r1, r6
	asr r1, r1, #0x10
	add r1, #0x78 
	strh r1, [r5,#0xc]
	mov r2, r8
	sub r6, r6, r2
	asr r6, r6, #1
	mov r7, r6
	ldr r2, [r3,#0x44]
	mov r4, #0x80
	lsl r4, r4, #0x10
	add r2, r2, r4
	add r4, r2, r6
	asr r4, r4, #0x10
	strh r4, [r5,#0xa]
	ldr r4, [r0,#8]
	sub r6, r6, r4
	ldr r2, [r3,#0x44]
	add r6, r6, r2
	asr r6, r6, #0x10
	add r6, #0x52 
	strb r6, [r5,#0xe]
	mov r4, r9
	sub r7, r7, r4
	ldr r2, [r3,#0x44]
	add r7, r7, r2
	asr r7, r7, #0x10
	add r7, #0x52 
	strb r7, [r5,#0xf]
	pop {pc}
off_3006388: .word sub_8031612+1
	thumb_func_end sub_300631C

	thumb_local_start
sub_300638C:
	mov r6, r4
	mov r3, r10
	ldr r3, [r3,#0xc]
	mov r2, #2
	ldrsh r1, [r0,r2]
	ldr r4, [r3,#0x3c]
	ldr r7, [r3,#0x48]
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
	ldr r4, [r3,#0x40]
	asr r4, r4, #0x10
	sub r6, r6, r4
	add r6, #0x50 
	mov r7, r6
	strh r7, [r5,#0xa]
	mov r2, #0xa
	ldrsh r4, [r0,r2]
	ldr r2, [r3,#0x44]
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
	ldr r2, off_3006420 // =0x30 
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
	.byte 0, 0
off_3006420: .word 0x30
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

loc_3006440:
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
	mov r0, #0xc
	ldrsh r0, [r5,r0]
	add r0, r8
	mov r4, #0x10
	lsl r4, r4, #4
	add r4, #0xff
	and r0, r4
	lsl r0, r0, #0x10
	orr r3, r0
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
	ldrh r1, [r5,#0x14]
	ldr r0, [sp,#8]
	cmp r0, #0xff
	ble loc_3006528
	mov r4, #0xf0
	lsl r4, r4, #8
	bic r1, r4
	ldrb r4, [r0]
	lsl r4, r4, #0xc
	orr r1, r4
loc_3006528:
	ldrh r0, [r5,#8]
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
	ldr r7, [sp,#0x10]
	str r0, [r7]
	strh r1, [r7,#4]
	strb r2, [r7,#6]
	strh r3, [r7,#8]
	add r7, #0xc
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
	.balign 4, 0x00
off_300658C: .word dword_20096D0
off_3006590: .word unk_3002400
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
	ldr r3, byte_30066EC // =0xc 
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
	ldr r3, byte_30066F0 // =0x18 
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
	ldr r0, byte_30066E4 // =0xf4 
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
	ldr r0, off_3006728 // =byte_80065E0 
	ldrsh r0, [r0,r1]
	mul r3, r0
	mov r7, #2
	ldrsb r7, [r2,r7]
	ldr r0, byte_30066E8 // =0x0 
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
	ldr r0, off_300672C // =byte_8006660 
	ldrsh r0, [r0,r1]
	mul r7, r0
	add r3, r3, r7
	asr r3, r3, #0xc
	ldr r0, byte_30066EC // =0xc 
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
	ldr r0, byte_30066E4 // =0xf4 
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
	ldr r0, off_300672C // =byte_8006660 
	ldrsh r0, [r0,r1]
	neg r0, r0
	mul r3, r0
	mov r7, #2
	ldrsb r7, [r2,r7]
	ldr r0, byte_30066E8 // =0x0 
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
	ldr r0, off_3006728 // =byte_80065E0 
	ldrsh r0, [r0,r1]
	mul r7, r0
	add r3, r3, r7
	asr r3, r3, #0xc
	ldr r0, byte_30066F0 // =0x18 
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
byte_30066E4: .byte 0xF4, 0x66, 0x0, 0x3
byte_30066E8: .byte 0x0, 0x67, 0x0, 0x3
byte_30066EC: .byte 0xC, 0x67, 0x0, 0x3
byte_30066F0: .byte 0x18, 0x67, 0x0, 0x3, 0xFC, 0xF8, 0xF0, 0xE0, 0xF8, 0xF0
	.byte 0xF0, 0xE0, 0xFC, 0xFC, 0xF8, 0xF0, 0xFC, 0xF8, 0xF0, 0xE0
	.byte 0xFC, 0xFC, 0xF8, 0xF0, 0xF8, 0xF0, 0xF0, 0xE0, 0xF8, 0xF0
	.byte 0xE0, 0xC0, 0xF0, 0xE0, 0xE0, 0xC0, 0xF8, 0xF8, 0xF0, 0xE0
	.byte 0xF8, 0xF0, 0xE0, 0xC0, 0xF8, 0xF8, 0xF0, 0xE0, 0xF0, 0xE0
	.byte 0xE0, 0xC0
off_3006724: .word word_200A6F0
off_3006728: .word byte_80065E0
off_300672C: .word byte_8006660
	thumb_func_end sub_3006594

	thumb_func_start sub_3006730
sub_3006730:
	push {lr}
	ldrb r0, [r5,#3]
	mov r1, #0x80
	and r0, r1
	bne loc_300675A
	ldr r1, [r5,#0x18]
	ldr r2, [r1]
	add r3, r2, r1
	str r3, [r5,#0x1c]
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r2, [r3,#8]
	add r1, r1, r2
	ldr r2, [r1,r0]
	add r1, r1, r2
	str r1, [r5,#0x20]
	ldrb r2, [r1,#1]
	strb r2, [r5,#1]
	ldrb r2, [r1,#2]
	strb r2, [r5,#2]
	b loc_3006778
loc_300675A:
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r1, [r5,#0x18]
	ldr r2, [r1,r0]
	add r3, r2, r1
	str r3, [r5,#0x1c]
	ldr r2, [r3,#8]
	add r1, r1, r2
	ldr r2, [r1]
	add r1, r1, r2
	str r1, [r5,#0x20]
	ldrb r2, [r3,#0x10]
	strb r2, [r5,#1]
	ldrb r2, [r3,#0x12]
	strb r2, [r5,#2]
loc_3006778:
	ldr r1, [r5,#0x20]
	ldrb r2, [r1]
	lsl r2, r2, #2
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#0xc]
	ldr r1, [r5,#0x18]
	add r1, r1, r0
	ldr r2, [r1,r2]
	add r2, r2, r1
	ldrb r1, [r2,#4]
	lsr r1, r1, #4
	strb r1, [r5,#5]
	pop {pc}
	thumb_func_end sub_3006730

loc_3006792:
	push {r4,lr}
loc_3006794:
	ldrb r0, [r5,#1]
	sub r0, #1
	strb r0, [r5,#1]
	cmp r0, #0
	bge loc_30067F8
	ldrb r0, [r5,#3]
	mov r1, #0x80
	and r0, r1
	bne loc_30067C0
	ldr r1, [r5,#0x20]
	ldrb r0, [r1,#2]
	ldrb r4, [r1,#1]
	mov r2, #0x80
	tst r0, r2
	bne loc_30067E6
	add r1, #3
	str r1, [r5,#0x20]
	ldrb r2, [r1,#1]
	strb r2, [r5,#1]
	ldrb r2, [r1,#2]
	strb r2, [r5,#2]
	b loc_30067E4
loc_30067C0:
	ldr r3, [r5,#0x1c]
	ldrb r0, [r3,#0x12]
	ldrb r4, [r3,#0x10]
	mov r2, #0x80
	tst r0, r2
	bne loc_30067E6
	add r3, #0x14
	str r3, [r5,#0x1c]
	ldr r1, [r5,#0x18]
	ldr r2, [r3,#8]
	add r1, r1, r2
	ldr r2, [r1]
	add r1, r1, r2
	str r1, [r5,#0x20]
	ldrb r2, [r3,#0x10]
	strb r2, [r5,#1]
	ldrb r2, [r3,#0x12]
	strb r2, [r5,#2]
loc_30067E4:
	b loc_3006794
loc_30067E6:
	mov r2, #0x40 
	tst r0, r2
	bne loc_30067F2
	mov r4, #1
	strb r4, [r5,#1]
	b loc_3006794
loc_30067F2:
	bl sub_3006730
	b loc_3006794
loc_30067F8:
	ldr r1, [r5,#0x20]
	ldrb r2, [r1]
	lsl r2, r2, #2
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#0xc]
	ldr r1, [r5,#0x18]
	add r1, r1, r0
	ldr r2, [r1,r2]
	add r2, r2, r1
	ldrb r1, [r2,#4]
	lsr r1, r1, #4
	strb r1, [r5,#5]
	pop {r4,pc}
	.balign 4, 0x00
loc_3006814:
	push {r4-r7,lr}
	mov r0, r12
	push {r0}
	ldr r0, off_30068C0 // =dword_3001D70 
	ldr r2, off_30068C4 // =unk_30025B0 
	ldr r3, off_30068C8 // =unk_3002170 
	ldr r6, off_30068CC // =dword_3002590 
	ldr r7, off_30068D0 // =byte_3001150 
	mov r12, r7
loc_3006826:
	ldr r1, [r6]
	ldr r4, [r6,#4]
	add r4, r4, r1
loc_300682C:
	sub r4, #1
	cmp r1, r4
	bgt loc_3006854
	ldrb r5, [r4]
	cmp r5, #0xff
	beq loc_300682C
loc_3006838:
	cmp r0, r3
	bge loc_300685A
	lsl r5, r5, #3
	mov r7, r12
	add r7, r7, r5
	ldr r5, [r7]
	str r5, [r0]
	ldrh r5, [r7,#4]
	strh r5, [r0,#4]
	add r0, #8
	ldrb r5, [r7,#7]
	cmp r5, #0xff
	beq loc_300682C
	b loc_3006838
loc_3006854:
	add r6, #8
	cmp r6, r2
	blt loc_3006826
loc_300685A:
	sub r2, r3, r0
	lsr r2, r2, #3
	ldr r4, off_30068D4 // =dword_200B1A8 
	str r2, [r4]
	mov r2, #0xf0
	mov r4, #0xc
	lsl r4, r4, #8
loc_3006868:
	cmp r0, r3
	bge loc_3006874
	str r2, [r0]
	strh r4, [r0,#4]
	add r0, #8
	b loc_3006868
loc_3006874:
	ldr r0, off_30068D8 // =word_200A6F0 
	ldr r1, off_30068C0 // =dword_3001D70 
	mov r3, #0x20 
loc_300687A:
	ldrh r4, [r0]
	strh r4, [r1,#6]
	ldrh r4, [r0,#2]
	strh r4, [r1,#0xe]
	ldrh r4, [r0,#4]
	strh r4, [r1,#0x16]
	ldrh r4, [r0,#6]
	strh r4, [r1,#0x1e]
	add r0, #0xc
	add r1, #0x20 
	sub r3, #1
	cmp r3, #0
	bgt loc_300687A
	mov r2, #0
	mvn r2, r2
	ldr r5, off_30068DC // =off_802FD70 
	mov r4, #4
	ldr r7, off_30068E0 // =WordFill+1 
	mov r12, r7
loc_30068A0:
	ldr r0, [r5]
	ldr r1, [r5,#4]
	mov r7, r12
	mov lr, pc
	bx r7
	add r5, #8
	sub r4, #1
	cmp r4, #0
	bgt loc_30068A0
	ldr r0, off_30068E4 // =byte_3001950 
	mov r1, #0
	str r1, [r0]
	pop {r0}
	mov r12, r0
	pop {r4-r7,pc}
	.byte 0, 0
off_30068C0: .word dword_3001D70
off_30068C4: .word unk_30025B0
off_30068C8: .word unk_3002170
off_30068CC: .word dword_3002590
off_30068D0: .word byte_3001150
off_30068D4: .word dword_200B1A8
off_30068D8: .word word_200A6F0
off_30068DC: .word off_802FD70
off_30068E0: .word WordFill+1
off_30068E4: .word byte_3001950
loc_30068E8:
	push {r4-r7,lr}
	ldr r5, off_3006994 // =byte_3001950 
	ldr r6, [r5]
	cmp r6, #0x80
	bge locret_300691E
	ldr r4, off_300699C // =dword_3002590 
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
	lsl r6, r6, #3
	ldr r5, off_3006998 // =byte_3001150 
	add r5, r5, r6
	str r0, [r5]
	strh r1, [r5,#4]
	strb r7, [r5,#7]
	mov r0, #0xff
	strb r0, [r5,#6]
locret_300691E:
	pop {r4-r7,pc}
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
	ldr r3, off_3006998 // =byte_3001150 
	mov r12, r3
loc_300693E:
	str r0, [sp]
	str r1, [sp,#4]
	mov r3, #8
	ldrsh r3, [r0,r3]
	ldrb r2, [r0,#6]
	ldrh r1, [r0,#4]
	ldr r0, [r0]
	ldr r4, off_300699C // =dword_3002590 
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
	lsl r6, r6, #3
	mov r5, r12
	add r5, r5, r6
	str r0, [r5]
	strh r1, [r5,#4]
	strb r7, [r5,#7]
	mov r0, #0xff
	strb r0, [r5,#6]
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
off_3006994: .word byte_3001950
off_3006998: .word byte_3001150
off_300699C: .word dword_3002590
	.byte 0x4, 0x4, 0x4, 0x0, 0x4, 0x0, 0x4, 0x4, 0xF0, 0xB5, 0x44, 0x46, 0x4D
	.byte 0x46, 0x56, 0x46, 0x67, 0x46, 0xF0, 0xB4, 0x89, 0xB0, 0x82, 0x46, 0x88, 0x46
	.byte 0x91, 0x46, 0x1, 0x25, 0x45, 0x45, 0x3E, 0xDC, 0x68, 0x0, 0x40, 0x19, 0x45
	.byte 0x1C, 0x45, 0x45, 0xFA, 0xDD, 0x38, 0xE0, 0x2, 0x1C, 0x42, 0x45, 0x35, 0xDA
	.byte 0x51, 0x1, 0x68, 0x46, 0x51, 0x44, 0x58, 0xC9, 0x58, 0xC0, 0x98, 0xC9, 0x98
	.byte 0xC0, 0xC0, 0xC9, 0xC0, 0xC0, 0x53, 0x1B, 0x1, 0x32, 0x94, 0x46, 0x0, 0x2B
	.byte 0x1A, 0xDB, 0x48, 0x46, 0x84, 0x0, 0x69, 0x46, 0x60, 0x18, 0x0, 0x68, 0x8
	.byte 0x90, 0x58, 0x1, 0x56, 0x46, 0x82, 0x19, 0xA0, 0x18, 0x0, 0x68, 0x8, 0x9F
	.byte 0xB8, 0x42, 0xC, 0xDD, 0x59, 0x19, 0x49, 0x1, 0x51, 0x44, 0x10, 0x1C, 0xC4
	.byte 0xC8, 0xC4, 0xC1, 0xC4, 0xC8, 0xC4, 0xC1, 0x44, 0xC8, 0x44, 0xC1, 0x5B, 0x1B
	.byte 0x0, 0x2B, 0xEA, 0xDA, 0x59, 0x19, 0x49, 0x1, 0x51, 0x44, 0x68, 0x46, 0x8C
	.byte 0xC8, 0x8C, 0xC1, 0xD0, 0xC8, 0xD0, 0xC1, 0xC, 0xC8, 0xC, 0xC1, 0x62, 0x46
	.byte 0x42, 0x45, 0xC9, 0xDB, 0x28, 0x1C, 0x3, 0x21, 0x33, 0x4D, 0xFE, 0x46, 0x28
	.byte 0x47, 0x5, 0x1C, 0x0, 0x28, 0xBE, 0xDC, 0x9, 0xB0, 0xF0, 0xBC, 0xA0, 0x46
	.byte 0xA9, 0x46, 0xB2, 0x46, 0xBC, 0x46, 0xF0, 0xBD, 0xF0, 0xB5, 0x44, 0x46, 0x4D
	.byte 0x46, 0x56, 0x46, 0x67, 0x46, 0xF0, 0xB4, 0x89, 0xB0, 0x82, 0x46, 0x88, 0x46
	.byte 0x91, 0x46, 0x1, 0x25, 0x45, 0x45, 0x3E, 0xDC, 0x68, 0x0, 0x40, 0x19, 0x45
	.byte 0x1C, 0x45, 0x45, 0xFA, 0xDD, 0x38, 0xE0, 0x2, 0x1C, 0x42, 0x45, 0x35, 0xDA
	.byte 0x51, 0x1, 0x68, 0x46, 0x51, 0x44, 0x58, 0xC9, 0x58, 0xC0, 0x98, 0xC9, 0x98
	.byte 0xC0, 0xC0, 0xC9, 0xC0, 0xC0, 0x53, 0x1B, 0x1, 0x32, 0x94, 0x46, 0x0, 0x2B
	.byte 0x1A, 0xDB, 0x48, 0x46, 0x84, 0x0, 0x69, 0x46, 0x60, 0x18, 0x0, 0x68, 0x8
	.byte 0x90, 0x58, 0x1, 0x56, 0x46, 0x82, 0x19, 0xA0, 0x18, 0x0, 0x68, 0x8, 0x9F
	.byte 0xB8, 0x42, 0xC, 0xDA, 0x59, 0x19, 0x49, 0x1, 0x51, 0x44, 0x10, 0x1C, 0xC4
	.byte 0xC8, 0xC4, 0xC1, 0xC4, 0xC8, 0xC4, 0xC1, 0x44, 0xC8, 0x44, 0xC1, 0x5B, 0x1B
	.byte 0x0, 0x2B, 0xEA, 0xDA, 0x59, 0x19, 0x49, 0x1, 0x51, 0x44, 0x68, 0x46, 0x8C
	.byte 0xC8, 0x8C, 0xC1, 0xD0, 0xC8, 0xD0, 0xC1, 0xC, 0xC8, 0xC, 0xC1, 0x62, 0x46
	.byte 0x42, 0x45, 0xC9, 0xDB, 0x28, 0x1C, 0x3, 0x21, 0x6, 0x4D, 0xFE, 0x46, 0x28
	.byte 0x47, 0x5, 0x1C, 0x0, 0x28, 0xBE, 0xDC, 0x9, 0xB0, 0xF0, 0xBC, 0xA0, 0x46
	.byte 0xA9, 0x46, 0xB2, 0x46, 0xBC, 0x46, 0xF0, 0xBD
	.word sub_814DA9C+1
byte_3006B18: .byte 0x39, 0x6C, 0x0, 0x3, 0x3D, 0x6C, 0x0, 0x3, 0x43, 0x6F, 0x0
	.byte 0x3, 0x75, 0x6F, 0x0, 0x3, 0x73, 0x6C, 0x0, 0x3, 0x8F, 0x6C
	.byte 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0xA9, 0x6C, 0x0, 0x3, 0x0
	.byte 0x0, 0x0, 0x0, 0x21, 0x6F, 0x0, 0x3, 0x25, 0x6F, 0x0, 0x3
	.byte 0x0, 0x0, 0x0, 0x0, 0x49, 0x6F, 0x0, 0x3, 0xD1, 0x6C, 0x0
	.byte 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5D, 0x6F
	.byte 0x0, 0x3, 0x71, 0x6F, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA5, 0x6D, 0x0, 0x3
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x7D, 0x6E, 0x0, 0x3, 0x0, 0x0
	.byte 0x0, 0x0, 0x44, 0x44, 0x44, 0x44, 0x88, 0x88, 0x88, 0x88, 0xCC
	.byte 0xCC, 0xCC, 0xCC, 0x0, 0xB5, 0xB8, 0x46, 0x57, 0x46, 0xBF, 0x6B
	.byte 0x3C, 0x70, 0x6C, 0x43, 0x7C, 0x70, 0x44, 0x46, 0x1B, 0x4D, 0x2D
	.byte 0x59, 0xBD, 0x63, 0x0, 0x24, 0x7C, 0x63, 0x3C, 0x63, 0x0, 0x24
	.byte 0x0, 0x25, 0xA9, 0x46, 0xC, 0xB4, 0x1, 0x23, 0x0, 0x2B, 0x1B
	.byte 0xD0, 0x1, 0x78, 0xE5, 0x29, 0x6, 0xDB, 0xE5, 0x39, 0x89, 0x0
	.byte 0xF, 0x4F, 0x79, 0x58, 0xFE, 0x46, 0x8, 0x47, 0xF3, 0xE7, 0xE4
	.byte 0x29, 0x6, 0xD0, 0x0, 0xF0, 0x1F, 0xF8, 0x1, 0x30, 0x4F, 0x46
	.byte 0x1, 0x37, 0xB9, 0x46, 0xEA, 0xE7, 0x41, 0x78, 0xE4, 0x31, 0x0
	.byte 0xF0, 0x16, 0xF8, 0x2, 0x30, 0x4F, 0x46, 0x1, 0x37, 0xB9, 0x46
	.byte 0xE1, 0xE7, 0x3, 0xBC, 0x9, 0x42, 0x3, 0xD0, 0x12, 0x1A, 0x3
	.byte 0x4B, 0xFE, 0x46, 0x18, 0x47, 0x48, 0x46, 0x0, 0xBD
	.word 0x3006B18
	.word loc_8000AC8+1
	.word ZeroFillByByte+1
	.word 0x3006B84
	thumb_func_end sub_3006920

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

	add r0, #1
	mov pc, lr
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
	push {lr}
	ldrb r1, [r0,#1]
	ldr r2, byte_3006C9C // =0x4 
	ldrb r1, [r2,r1]
	mov r4, #1
	add r0, r0, r1
	pop {pc}
byte_3006C9C: .byte 0x4, 0x4, 0x4, 0x5, 0x5, 0x0, 0x3, 0x4, 0x4, 0x4, 0x4, 0x0
	thumb_local_start
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
off_3006D98: .word sub_8000C00+1
off_3006D9C: .word sub_8000C5C+1
off_3006DA0: .word off_8043C8C
	push {r3,r7,lr}
	ldr r1, byte_3006DB4 // =0xb8 
	ldrb r3, [r0,#1]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	mov lr, pc
	bx r1
	pop {r3,r7,pc}
byte_3006DB4: .byte 0xB8, 0x6D, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0xC9, 0x6D, 0x0, 0x3, 0x1D
	.byte 0x6E, 0x0, 0x3, 0x1D, 0x6E, 0x0, 0x3, 0xFE, 0xB5, 0x54, 0x4B, 0x1E, 0x6B
	.byte 0x1, 0x36, 0x1E, 0x63, 0xF, 0x4E, 0x82, 0x78, 0xD2, 0x0, 0xB6, 0x18, 0x74
	.byte 0x68, 0x36, 0x68, 0x1F, 0x1C, 0x34, 0x37, 0x3A, 0x68, 0x92, 0x1, 0xC, 0x49
	.byte 0x89, 0x18, 0x3, 0xB4, 0x30, 0x1C, 0x22, 0x1C, 0x8, 0xB4, 0x8, 0x4B, 0xFE
	.byte 0x46, 0x18, 0x47, 0x8, 0xBC, 0x41, 0xBC, 0x1F, 0x1C, 0x34, 0x37, 0x39, 0x68
	.byte 0x1, 0x31, 0x39, 0x60, 0x9E, 0x62, 0x3, 0x30, 0xD8, 0x62, 0x30, 0x1C, 0xFE
	.byte 0xBD
	.word 0x8043B54
	.word CopyBytes+1
	.word 0x200DD20
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
	.balign 4, 0x00
off_3006E78: .word chatbox_8040D5C+1
	push {r3,r7,lr}
	ldr r1, byte_3006E8C // =0x90 
	ldrb r3, [r0,#1]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	mov lr, pc
	bx r1
	pop {r3,r7,pc}
byte_3006E8C: .byte 0x90, 0x6E, 0x0, 0x3, 0x99, 0x6E, 0x0, 0x3, 0x99, 0x6E, 0x0
	.byte 0x3, 0xFE, 0xB5, 0x20, 0x4B, 0x1E, 0x6B, 0x1, 0x36, 0x1E, 0x63
	.byte 0x11, 0x4E, 0x82, 0x78, 0x41, 0x78, 0x9, 0x42, 0x0, 0xD0, 0x2
	.byte 0x32, 0x0, 0x21, 0x92, 0x0, 0xB6, 0x58, 0x1F, 0x1C, 0x34, 0x37
	.byte 0x3A, 0x88, 0x92, 0x1, 0x15, 0x49, 0x89, 0x18, 0x3, 0xB4, 0x30
	.byte 0x1C, 0x40, 0x22, 0x8, 0xB4, 0x13, 0x4B, 0xFE, 0x46, 0x18, 0x47
	.byte 0x8, 0xBC, 0x41, 0xBC, 0x1F, 0x1C, 0x34, 0x37, 0x39, 0x78, 0x1
	.byte 0x31, 0x39, 0x70, 0x9E, 0x62, 0x3, 0x30, 0xD8, 0x62, 0x30, 0x1C
	.byte 0xFE, 0xBD, 0x0, 0x0
	.word 0x3006EEC
	.byte 0x86, 0x11, 0x0, 0x2, 0x9E, 0x11, 0x0, 0x2, 0xD6, 0x7, 0x0, 0x2
	.byte 0x3A, 0x8, 0x0, 0x2, 0xF4, 0x18, 0x0, 0x2, 0x50, 0x19, 0x0, 0x2
	.byte 0xAC, 0x19, 0x0, 0x2, 0x8, 0x1A, 0x0, 0x2, 0x64, 0x1A, 0x0, 0x2
	.byte 0xC0, 0x1A, 0x0, 0x2
	.word 0x200AFA0
	.word CopyBytes+1
	.word 0x200A220
	add r0, #4
	mov pc, lr
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
	add r0, #2
	mov pc, lr
	.balign 4, 0x00
	ldrb r7, [r0,#1]
	ldr r1, byte_3006F54 // =0x58 
	ldrb r1, [r7,r1]
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
byte_3006F54: .byte 0x58, 0x6F, 0x0, 0x3, 0x3, 0x0, 0x0, 0x0, 0x47, 0x78, 0x2, 0x49
	.byte 0x79, 0x5C, 0x40, 0x18, 0xF7, 0x46, 0x0, 0x0, 0x6C, 0x6F, 0x0, 0x3
	.byte 0x3, 0x2, 0x3, 0x3, 0x3, 0x30, 0xF7, 0x46, 0x47, 0x78, 0x2, 0x49
	.byte 0x79, 0x5C, 0x40, 0x18, 0xF7, 0x46, 0x0, 0x0, 0x84, 0x6F, 0x0, 0x3
	.byte 0x2, 0x2, 0x2, 0x2, 0x4, 0x4, 0x4, 0x4, 0xF2, 0xB5, 0x47, 0x46
	.byte 0x4A, 0x46, 0x53, 0x46, 0x64, 0x46, 0x9C, 0xB4, 0x23, 0x4B, 0x74, 0x9
	.byte 0xA4, 0x0, 0x1A, 0x19, 0xE4, 0x0, 0x33, 0x1B, 0x1F, 0x4C, 0x60, 0x27
	.byte 0x4F, 0x43, 0x3F, 0x19, 0x1F, 0x4C, 0x64, 0x5C, 0x10, 0xB4, 0x40, 0xB4
	.byte 0x2E, 0x6F, 0x36, 0x19, 0x2E, 0x67, 0x40, 0xBC, 0xA4, 0x0, 0x36, 0x19
	.byte 0xEE, 0x67, 0x40, 0x3C, 0x64, 0x42, 0x1B, 0x4E, 0xAE, 0x5B, 0xB6, 0x0
	.byte 0x18, 0x48, 0x80, 0x59, 0x84, 0x46, 0x40, 0xBC, 0xB, 0x26, 0x8, 0xB4
	.byte 0x63, 0x46, 0x38, 0x68, 0x79, 0x68, 0xC0, 0x18, 0xC9, 0x18, 0xA1, 0x40
	.byte 0xE1, 0x40, 0x8, 0xBC, 0x50, 0xB4, 0x4, 0xB4, 0x20, 0x24, 0xE4, 0x1A
	.byte 0x12, 0x68, 0x6, 0x1C, 0x9E, 0x40, 0x16, 0x43, 0xA, 0x1C, 0x9A, 0x40
	.byte 0xE0, 0x40, 0x10, 0x43, 0xE1, 0x40, 0x4, 0xBC, 0x16, 0x60, 0x50, 0x60
	.byte 0x91, 0x60, 0x8, 0x37, 0x60, 0x20, 0x12, 0x18, 0x50, 0xBC, 0x1, 0x3E
	.byte 0xDF, 0xDA, 0x9C, 0xBC, 0xB8, 0x46, 0x91, 0x46, 0x9A, 0x46, 0xA4, 0x46
	.byte 0xF2, 0xBD, 0x0, 0x0, 0x60, 0xCD, 0x6A, 0x8, 0xA0, 0xBE, 0x0, 0x2
	.byte 0xA4, 0x3C, 0x4, 0x8, 0x84, 0x6B, 0x0, 0x3, 0xD0, 0x1, 0x0, 0x0
	.byte 0xF2, 0xB5, 0x47, 0x46, 0x4A, 0x46, 0x53, 0x46, 0x64, 0x46, 0x9C, 0xB4
	.byte 0x19, 0x4B, 0x74, 0x9, 0xA4, 0x0, 0x1A, 0x19, 0xE4, 0x0, 0x33, 0x1B
	.byte 0x15, 0x4C, 0x60, 0x27, 0x4F, 0x43, 0x3F, 0x19, 0x15, 0x4C, 0x64, 0x5C
	.byte 0xA4, 0x0, 0x40, 0x3C, 0x64, 0x42, 0xB, 0x26, 0x38, 0x68, 0x79, 0x68
	.byte 0xA1, 0x40, 0xE1, 0x40, 0x50, 0xB4, 0x4, 0xB4, 0x20, 0x24, 0xE4, 0x1A
	.byte 0x12, 0x68, 0x6, 0x1C, 0x9E, 0x40, 0x16, 0x43, 0xA, 0x1C, 0x9A, 0x40
	.byte 0xE0, 0x40, 0x10, 0x43, 0xE1, 0x40, 0x4, 0xBC, 0x16, 0x60, 0x50, 0x60
	.byte 0x91, 0x60, 0x8, 0x37, 0x60, 0x20, 0x12, 0x18, 0x50, 0xBC, 0x1, 0x3E
	.byte 0xE4, 0xDA, 0x9C, 0xBC, 0xB8, 0x46, 0x91, 0x46, 0x9A, 0x46, 0xA4, 0x46
	.byte 0xF2, 0xBD, 0x0, 0x0, 0x60, 0xCD, 0x6A, 0x8, 0xA0, 0xBE, 0x0, 0x2
	.byte 0xA4, 0x3C, 0x4, 0x8, 0xF0, 0xB5, 0x41, 0x46, 0x2, 0xB4, 0x49, 0x46
	.byte 0x2, 0xB4, 0x4C, 0x4F, 0x2, 0x1C, 0x93, 0x0, 0x50, 0x4D, 0xED, 0x58
	.byte 0x0, 0x2A, 0x6, 0xD0, 0x1, 0x2A, 0x3, 0xD0, 0xD, 0x21, 0xC9, 0x1
	.byte 0x7F, 0x18, 0x0, 0xE0, 0x80, 0x37, 0x2E, 0x68, 0x36, 0x42, 0x6E, 0xD0
	.byte 0xB0, 0x46, 0x0, 0x24, 0x30, 0x68, 0x38, 0x60, 0x30, 0x6E, 0x78, 0x60
	.byte 0xC0, 0x36, 0x30, 0x68, 0xB8, 0x60, 0x30, 0x6E, 0xF8, 0x60, 0xC0, 0x36
	.byte 0x30, 0x68, 0x38, 0x61, 0x30, 0x6E, 0x78, 0x61, 0xC0, 0x36, 0x30, 0x68
	.byte 0xB8, 0x61, 0x30, 0x6E, 0xF8, 0x61, 0x46, 0x46, 0x4, 0x36, 0x4, 0x21
	.byte 0x9, 0x19, 0x68, 0x5C, 0x3F, 0x18, 0xB0, 0x46, 0x1, 0x34, 0x30, 0x68
	.byte 0x38, 0x60, 0x30, 0x6E, 0x78, 0x60, 0xC0, 0x36, 0x30, 0x68, 0xB8, 0x60
	.byte 0x30, 0x6E, 0xF8, 0x60, 0xC0, 0x36, 0x30, 0x68, 0x38, 0x61, 0x30, 0x6E
	.byte 0x78, 0x61, 0xC0, 0x36, 0x30, 0x68, 0xB8, 0x61, 0x30, 0x6E, 0xF8, 0x61
	.byte 0x46, 0x46, 0x4, 0x36, 0x4, 0x21, 0x9, 0x19, 0x68, 0x5C, 0x3F, 0x18
	.byte 0xB0, 0x46, 0x1, 0x34, 0x30, 0x68, 0x38, 0x60, 0x30, 0x6E, 0x78, 0x60
	.byte 0xC0, 0x36, 0x30, 0x68, 0xB8, 0x60, 0x30, 0x6E, 0xF8, 0x60, 0xC0, 0x36
	.byte 0x30, 0x68, 0x38, 0x61, 0x30, 0x6E, 0x78, 0x61, 0xC0, 0x36, 0x30, 0x68
	.byte 0xB8, 0x61, 0x30, 0x6E, 0xF8, 0x61, 0x46, 0x46, 0x4, 0x36, 0x4, 0x21
	.byte 0x9, 0x19, 0x68, 0x5C, 0x3F, 0x18, 0xB0, 0x46, 0x1, 0x34, 0x30, 0x68
	.byte 0x38, 0x60, 0x30, 0x6E, 0x78, 0x60, 0xC0, 0x36, 0x30, 0x68, 0xB8, 0x60
	.byte 0x30, 0x6E, 0xF8, 0x60, 0xC0, 0x36, 0x30, 0x68, 0x38, 0x61, 0x30, 0x6E
	.byte 0x78, 0x61, 0xC0, 0x36, 0x30, 0x68, 0xB8, 0x61, 0x30, 0x6E, 0xF8, 0x61
	.byte 0x46, 0x46, 0x4, 0x36, 0x4, 0x21, 0x9, 0x19, 0x68, 0x5C, 0x3F, 0x18
	.byte 0xB0, 0x46, 0x8, 0x35, 0x8D, 0xE7, 0x2, 0xBC, 0x88, 0x46, 0x2, 0xBC
	.byte 0x89, 0x46, 0xA, 0x48, 0xA, 0x49, 0xB, 0x4A, 0xB, 0x4B, 0xFE, 0x46
	.byte 0x18, 0x47, 0x55, 0x46, 0xED, 0x6A, 0xA, 0x48, 0xA, 0x4B, 0xFE, 0x46
	.byte 0x18, 0x47, 0x0, 0x42, 0x2, 0xD0, 0x2, 0x20, 0x3D, 0x21, 0x68, 0x54
	.byte 0xF0, 0xBD, 0x0, 0x0, 0xA0, 0xBE, 0x0, 0x2, 0xA0, 0xCD, 0x0, 0x2
	.byte 0x0, 0x57, 0x1, 0x6, 0x0, 0xF, 0x0, 0x0, 0xC9, 0xA, 0x0, 0x8
	.byte 0x0, 0x4, 0x0, 0x0, 0x39, 0x9, 0x4, 0x8, 0xC, 0x72, 0x0, 0x3
	.byte 0x14, 0x43, 0x4, 0x8, 0x78, 0x43, 0x4, 0x8, 0xC, 0x44, 0x4, 0x8
	thumb_local_start
sub_3007218:
	push {r4,r6,r7,lr}
	mov r6, r0
	mov r7, r1
	ldr r2, [r6,#0x3c]
	ldr r3, [r6,#0x30]
	push {r2,r3}
	ldr r0, off_3007504 // =battle_isTimeStop+1 
	mov lr, pc
	bx r0
	pop {r2,r3}
	beq loc_300723E
	ldr r4, byte_3007508 // =0x0 
	tst r2, r4
	bne loc_300723E
	ldr r1, [r7,#0x30]
	ldr r4, byte_300750C // =0x0 
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
	ldr r4, byte_3007510+4 // =0x8 
	tst r3, r4
	bne loc_300725C
	pop {r4,r6,r7,pc}
loc_300725C:
	ldr r4, byte_3007510+8 // =0x0 
	tst r0, r4
	beq loc_300726A
	ldr r4, byte_3007510+12 // =0x0 
	tst r3, r4
	bne loc_300726A
	pop {r4,r6,r7,pc}
loc_300726A:
	ldr r4, byte_3007510+16 // =0x0 
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
	ldr r4, byte_3007510+4 // =0x8 
	tst r3, r4
	bne loc_30072A0
	pop {r4,r6,r7,pc}
loc_30072A0:
	ldr r4, byte_3007510+8 // =0x0 
	tst r2, r4
	beq loc_30072B0
	ldr r3, [r7,#0x30]
	ldr r4, byte_3007510+20 // =0x0 
	tst r3, r4
	bne loc_30072B0
	pop {r4,r6,r7,pc}
loc_30072B0:
	ldr r4, byte_3007510+16 // =0x0 
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
	ldr r4, byte_3007510+24 // =0x0 
	tst r1, r4
	bne loc_30072DA
	mov r4, #2
	b loc_30072DC
loc_30072DA:
	ldr r4, byte_3007510+28 // =0x2 
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
	ldr r1, byte_3007510+32 // =0x0 
	tst r3, r1
	bne loc_3007304
	ldrb r2, [r7,#5]
	mov r0, #1
	lsl r0, r2
	ldrb r2, [r6,#3]
	orr r2, r0
	strb r2, [r6,#3]
	ldr r2, byte_3007510+36 // =0x0 
	orr r3, r2
loc_3007304:
	ldr r2, [r6,#0x70]
	orr r2, r3
	str r2, [r6,#0x70]
	pop {r4,r6,r7,pc}
loc_300730C:
	ldr r3, [r6,#0x30]
	ldr r4, byte_3007510+40 // =0x0 
	tst r3, r4
	beq loc_300731E
	ldr r3, [r7,#0x30]
	ldr r4, byte_3007510+44 // =0x0 
	tst r3, r4
	beq loc_300731E
	pop {r4,r6,r7,pc}
loc_300731E:
	ldr r3, [r6,#0x30]
	ldr r4, byte_3007510+44 // =0x0 
	tst r3, r4
	beq loc_3007330
	ldr r3, [r7,#0x30]
	ldr r4, byte_3007510+40 // =0x0 
	tst r3, r4
	beq loc_3007330
	pop {r4,r6,r7,pc}
loc_3007330:
	mov r4, #8
	tst r2, r4
	bne locret_3007430
	ldr r3, [r7,#0x44]
	ldr r2, [r6,#0x7c]
	orr r2, r3
	str r2, [r6,#0x7c]
	ldr r3, [r7,#0x30]
	ldr r2, [r6,#0x70]
	orr r2, r3
	str r2, [r6,#0x70]
	mov r4, r3
	ldrb r2, [r7,#0x19]
	mov r1, #0x76 
	ldrb r0, [r6,r1]
	orr r0, r2
	strb r0, [r6,r1]
	ldrb r2, [r7,#0x10]
	cmp r2, #0
	beq loc_300735A
	strb r2, [r6,#0x11]
loc_300735A:
	bl sub_3007460
	ldrb r2, [r7,#7]
	ldrb r0, [r6,#0xd]
	tst r0, r0
	beq loc_300737A
	mov r0, #0x7f
	tst r2, r0
	beq loc_300737A
	mov r0, #0x80
	tst r2, r0
	bne loc_300737A
	mov r3, #0x40 
	ldr r1, [r6,#0x70]
	orr r1, r3
	str r1, [r6,#0x70]
loc_300737A:
	mov r1, #0x80
	tst r1, r2
	bne loc_300739E
	mov r3, #0x7f
	and r2, r3
	beq loc_300739E
	ldrb r0, [r6,#0xd]
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
	ldrb r3, [r6,#0xf]
	orr r3, r2
	strb r3, [r6,#0xf]
	mov r0, #0x12
	ldrh r1, [r7,r0]
	mov r2, #0xff
	and r2, r1
	beq loc_30073CC
	mov r2, #0xa4
	strh r1, [r6,r2]
loc_30073CC:
	mov r4, #1
	ldrb r0, [r6,#2]
	ldrb r1, [r7,#2]
	bl sub_3007432
	add r4, r4, r0
	ldrb r0, [r6,#0x18]
	ldrb r1, [r7,#0x19]
	bl sub_30074E2
	add r4, r4, r0
	mov r0, #0x75 
	sub r1, r4, #1
	strb r1, [r6,r0]
	bl sub_30074BA
	add r4, r4, r0
	bl sub_30074A2
	add r4, r4, r0
	mov r0, #0x74 
	sub r1, r4, #1
	strb r1, [r6,r0]
	ldrh r0, [r7,#0x2e]
	ldrb r1, [r7,#2]
	cmp r1, #3
	bne loc_300740A
	mov r2, #0x78 
	ldrh r3, [r6,r2]
	add r3, r3, r0
	strh r3, [r6,r2]
loc_300740A:
	mul r0, r4
	add r1, r1, r1
	add r1, #0x82
	ldrh r2, [r6,r1]
	add r2, r2, r0
	strh r2, [r6,r1]
	mov r0, r6
	mov r1, r7
	bl sub_300766C
	mov r2, #0x82
	ldrh r1, [r6,r2]
	add r1, r1, r0
	strh r1, [r6,r2]
	ldr r1, [r7,#0x64]
	mov r3, #0xa0
	ldr r2, [r6,r3]
	add r2, r2, r1
	str r2, [r6,r3]
locret_3007430:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_3007218

	thumb_local_start
sub_3007432:
	mov r2, #5
	mul r0, r2
	add r0, r0, r1
	ldr r1, byte_3007440 // =0x44 
	ldrb r0, [r1,r0]
	mov pc, lr
	.byte 0, 0
byte_3007440: .byte 0x44, 0x74, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_3007432

	thumb_local_start
sub_3007460:
	push {lr}
	ldrb r0, [r6,#2]
	cmp r0, #2
	bne locret_30074A0
	ldr r0, [r7,#0x30]
	ldr r1, byte_3007540 // =0x0 
	tst r0, r1
	beq locret_30074A0
	ldr r0, [r6,#0x30]
	tst r0, r1
	bne locret_30074A0
	ldrh r0, [r7,#0x28]
	cmp r0, #0
	bne locret_30074A0
	ldr r0, [r6,#0x70]
	mov r1, #1
	tst r0, r1
	bne locret_30074A0
	ldrb r0, [r7,#0xa]
	ldrb r1, [r7,#0xb]
	bl sub_3007958
	ldrb r0, [r0,#2]
	cmp r0, #7
	bne locret_30074A0
	ldrb r0, [r7,#0xa]
	ldrb r1, [r7,#0xb]
	mov r2, #2
	bl sub_30079A4
	mov r0, #0x50 
	strb r0, [r7,#0x11]
locret_30074A0:
	pop {pc}
	thumb_func_end sub_3007460

	thumb_local_start
sub_30074A2:
	push {r4,lr}
	mov r4, #0
	ldr r0, [r6,#0x3c]
	ldr r1, byte_3007544 // =0x0 
	tst r0, r1
	beq loc_30074B6
	ldrb r0, [r7,#2]
	cmp r0, #3
	bne loc_30074B6
	mov r4, #1
loc_30074B6:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_30074A2

	thumb_local_start
sub_30074BA:
	push {r4,r5,lr}
	mov r4, #0
	ldr r0, [r6,#0x3c]
	ldr r1, byte_300750C // =0x0 
	tst r0, r1
	beq loc_30074DE
	ldr r0, [r6,#0x70]
	mov r1, #2
	tst r0, r1
	bne loc_30074D4
	ldrb r0, [r7,#0x19]
	cmp r0, #0x10
	bne loc_30074DE
loc_30074D4:
	mov r4, #1
	ldr r5, [r6,#0x38]
	ldr r0, off_3007548 // =sub_801A29A+1 
	mov lr, pc
	bx r0
loc_30074DE:
	mov r0, r4
	pop {r4,r5,pc}
	thumb_func_end sub_30074BA

	thumb_local_start
sub_30074E2:
	mov r2, #0
	tst r0, r1
	bne loc_30074F8
	cmp r0, #0x80
	bne loc_30074FE
	ldr r0, [r7,#0x30]
	ldr r1, byte_300754C // =0x0 
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
	.balign 4, 0x00
off_3007504: .word battle_isTimeStop+1
byte_3007508: .byte 0x0, 0x0, 0x0, 0x1
byte_300750C: .byte 0x0, 0x0, 0x1, 0x0
byte_3007510: .byte 0x2, 0x2, 0x0, 0x0, 0x8, 0x10, 0x0, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x30
	.byte 0x0, 0xC, 0x0, 0x0, 0x0, 0x8, 0x0, 0x30, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0
	.byte 0x2, 0x10, 0x0, 0x0, 0x0, 0x50, 0x0, 0xC, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.byte 0x10, 0x0, 0x0, 0x80, 0x0, 0x0
byte_3007540: .byte 0x0, 0x0, 0x0, 0xC
byte_3007544: .byte 0x0, 0x0, 0x0, 0x80
off_3007548: .word sub_801A29A+1
byte_300754C: .byte 0x0, 0x20, 0x0, 0x0, 0xF0, 0xB5, 0x82, 0xB0, 0x6D, 0x6D
	.byte 0x69, 0x78, 0x80, 0x22, 0x11, 0x42, 0x2E, 0xD1, 0x89, 0x0
	.byte 0x25, 0x4A, 0x54, 0x58, 0x28, 0x79, 0x69, 0x79, 0xCC, 0x4A
	.byte 0xFE, 0x46, 0x10, 0x47, 0x6, 0x1C, 0x0, 0x20, 0x20, 0x56
	.byte 0x7F, 0x28, 0x3D, 0xD0, 0x70, 0x43, 0xAA, 0x7A, 0x80, 0x18
	.byte 0x1, 0x21, 0x61, 0x56, 0xEA, 0x7A, 0x89, 0x18, 0x2A, 0x1C
	.byte 0x0, 0x90, 0x1, 0x91, 0xC4, 0x4B, 0xFE, 0x46, 0x18, 0x47
	.byte 0x11, 0xD0, 0x0, 0x98, 0x1, 0x99, 0x0, 0xF0, 0x72, 0xF9
	.byte 0x0, 0x98, 0x1, 0x99, 0x0, 0xF0, 0x9E, 0xF9, 0x0, 0x98
	.byte 0x1, 0x99, 0x2A, 0x1C, 0x0, 0xF0, 0x27, 0xF8, 0x0, 0x98
	.byte 0x1, 0x99, 0x2A, 0x1C, 0x0, 0xF0, 0xA8, 0xF8, 0x2, 0x34
	.byte 0xD9, 0xE7
	.byte 0x1, 0x27
	thumb_func_end sub_30074E2

loc_30075BE:
	mov r6, #1
loc_30075C0:
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_3007880
	beq loc_30075E8
	mov r0, r6
	mov r1, r7
	bl sub_30078E0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_30075FC
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl sub_3007708
loc_30075E8:
	add r6, #1
	cmp r6, #6
	ble loc_30075C0
	add r7, #1
	cmp r7, #3
	ble loc_30075BE
	add sp, sp, #8
	pop {r4-r7,pc}
	.word off_8019B78
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
	ldr r0, [r5,#0x68]
	ldr r1, [r6,#0x44]
	tst r0, r1
	bne loc_3007646
	orr r0, r1
	str r0, [r5,#0x68]
	ldr r0, [r6,#0x68]
	ldr r1, [r5,#0x44]
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
off_300764C: .word unk_2034F60
	thumb_func_end sub_30075FC

	thumb_local_start
sub_3007650:
	push {r6,r7,lr}
	ldr r2, [r0,#0x34]
	ldr r3, [r1,#0x30]
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
sub_300766C:
	push {r4,lr}
	mov r4, r1
	ldrb r1, [r0,#0xb]
	ldrb r0, [r0,#0xa]
	bl sub_3007958
	ldrb r0, [r0,#2]
	ldrb r1, [r4,#2]
	cmp r1, #1
	bne loc_3007688
	cmp r0, #6
	bne loc_300768E
	ldrh r0, [r4,#0x2e]
	pop {r4,pc}
loc_3007688:
	b loc_300768E
	ldrh r0, [r4,#0x2e]
	pop {r4,pc}
loc_300768E:
	mov r0, #0
	pop {r4,pc}
	thumb_func_end sub_300766C

	thumb_local_start
sub_3007692:
	push {r4,r6,r7,lr}
	mov r6, r0
	mov r7, r1
	ldr r0, off_30078A8 // =battle_isTimeStop+1 
	mov lr, pc
	bx r0
	ldr r2, [r6,#0x3c]
	beq loc_30076B2
	ldr r4, byte_30078AC // =0x0 
	tst r2, r4
	bne loc_30076B2
	ldr r1, [r7,#0x30]
	ldr r4, byte_30078AC+4 // =0x0 
	tst r1, r4
	bne loc_30076B2
	pop {r4,r6,r7,pc}
loc_30076B2:
	ldr r0, [r7,#0x3c]
	ldr r3, [r6,#0x30]
	mov r4, #0x20 
	tst r0, r4
	beq loc_30076C4
	mov r4, #0x80
	tst r3, r4
	bne loc_30076C4
	pop {r4,r6,r7,pc}
loc_30076C4:
	ldr r1, [r7,#0x30]
	ldr r2, [r6,#0x3c]
	mov r4, #0x20 
	tst r2, r4
	beq loc_30076D6
	mov r4, #0x80
	tst r1, r4
	bne loc_30076D6
	pop {r4,r6,r7,pc}
loc_30076D6:
	ldr r2, [r6,#0x6c]
	ldr r3, [r7,#0x30]
	orr r2, r3
	str r2, [r6,#0x6c]
	ldrb r2, [r7,#0x19]
	mov r1, #0x77 
	ldrb r0, [r6,r1]
	orr r0, r2
	strb r0, [r6,r1]
	ldrb r2, [r7,#2]
	add r2, r2, r2
	add r2, #0x94
	ldrh r3, [r7,#0x2e]
	ldrh r4, [r6,r2]
	add r4, r4, r3
	strh r4, [r6,r2]
	mov r0, r6
	mov r1, r7
	bl sub_300766C
	mov r2, #0x94
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
	bl sub_3007958
	tst r0, r0
	beq locret_3007774
	ldr r2, [r4,#0x30]
	ldr r1, byte_3007778 // =0x0 
	tst r2, r1
	bne locret_3007774
	ldrb r0, [r0,#2]
	cmp r0, #6
	bne loc_3007746
	ldrb r0, [r4,#2]
	cmp r0, #1
	bne locret_3007774
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl sub_30079A4
	pop {r4,r6,r7,pc}
loc_3007746:
	cmp r0, #8
	bne loc_300775C
	ldrb r0, [r4,#2]
	cmp r0, #2
	bne locret_3007774
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl sub_30079A4
	pop {r4,r6,r7,pc}
loc_300775C:
	cmp r0, #9
	blt locret_3007774
	cmp r0, #0xc
	bgt locret_3007774
	ldrb r0, [r4,#2]
	cmp r0, #4
	bne locret_3007774
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl sub_30079A4
locret_3007774:
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
byte_3007778: .byte 0x0, 0x0, 0x0, 0xC, 0xF0, 0xB5, 0x43, 0x46, 0x1, 0xB4, 0x5, 0x1C
	.byte 0x69, 0x78, 0x80, 0x22, 0x11, 0x42, 0x24, 0xD1, 0x89, 0x0, 0x24, 0x4A
	.byte 0x54, 0x58, 0x28, 0x79, 0x69, 0x79, 0x48, 0x4A, 0xFE, 0x46, 0x10, 0x47
	.byte 0x6, 0x1C
	thumb_func_end sub_3007708

loc_300779E:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_300781A
	mul r0, r6
	ldrb r2, [r5,#0xa]
	add r0, r0, r2
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldrb r2, [r5,#0xb]
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
	bl sub_30078E0
loc_30077D2:
	add r4, #2
	b loc_300779E
	.byte 0x49, 0x6, 0x89, 0xD, 0x12, 0x48, 0x40, 0x18, 0x2, 0x68
	.byte 0x43, 0x68, 0x1, 0x27
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
	bl sub_30078E0
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
	.word off_8019B78
	.word byte_8019C34
	push {r4-r6,lr}
	mov r5, r0
	ldrb r1, [r0,#1]
	lsl r1, r1, #2
	ldr r2, off_3007864 // =off_8019B78 
	ldr r4, [r2,r1]
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	ldr r2, off_30078C4 // =sub_800E2C2+1 
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
	.balign 4, 0x00
off_3007864: .word off_8019B78
	thumb_local_start
sub_3007868:
	ldr r3, off_300787C // =unk_2034F60 
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, [r3,r0]
	ldr r2, [r2,#0x44]
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
	ldr r2, [r2,#0x44]
	bic r1, r2
	str r1, [r3]
	tst r0, r2
	mov pc, lr
off_3007898: .word unk_2034F60
	.word object_getFlipDirection+1
	.word object_isValidPanel+1
off_30078A4: .word battle_isPaused+1
off_30078A8: .word battle_isTimeStop+1
byte_30078AC: .byte 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x1, 0x0
off_30078B4: .word battle_isPaused+1
	.word object_getFlipDirection+1
off_30078BC: .word object_isValidPanel+1
off_30078C0: .word object_checkPanelParameters+1
off_30078C4: .word sub_800E2C2+1
	thumb_func_end sub_3007880

loc_30078C8:
	push {r4,r5,lr}
	mov r5, #4
loc_30078CC:
	mov r4, #7
loc_30078CE:
	mov r0, r4
	mov r1, r5
	bl sub_30078E0
	sub r4, #1
	bgt loc_30078CE
	sub r5, #1
	bgt loc_30078CC
	pop {r4,r5,pc}
	thumb_func_start sub_30078E0
sub_30078E0:
	push {r4-r7,lr}
	mov r4, r0
	mov r5, r1
	bl sub_3007958
	tst r0, r0
	beq locret_300791C
	ldrb r1, [r0,#2]
	strb r1, [r0,#6]
	lsl r2, r1, #2
	ldr r3, byte_3007920 // =0x24 
	ldr r3, [r3,r2]
	orr r1, r3
	ldrb r2, [r0,#3]
	strb r2, [r0,#7]
	lsl r2, r2, #5
	orr r1, r2
	ldr r2, [r0,#0x1c]
loc_3007904:
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
	str r6, [r7,#0x14]
locret_300791C:
	pop {r4-r7,pc}
	.byte 0, 0
byte_3007920: .byte 0x24, 0x79, 0x0, 0x3, 0x0, 0x80, 0x1, 0x0, 0x0, 0x40, 0x1, 0x0, 0x10
	.byte 0x0, 0x1, 0x0, 0x50, 0x0, 0x1, 0x0, 0x10, 0x1, 0x1, 0x0, 0x10, 0x20
	.byte 0x1, 0x0, 0x10, 0x4, 0x1, 0x0, 0x10, 0x8, 0x1, 0x0, 0x10, 0x10, 0x1
	.byte 0x0, 0x10, 0x2, 0x1, 0x0, 0x10, 0x2, 0x1, 0x0, 0x10, 0x2, 0x1, 0x0
	.byte 0x10, 0x2, 0x1, 0x0
	thumb_func_end sub_30078E0

	thumb_func_start sub_3007958
sub_3007958:
	sub r3, r0, #1
	cmp r3, #6
	bcs loc_3007970
	sub r3, r1, #1
	cmp r3, #3
	bcs loc_3007970
	lsl r1, r1, #3
	add r1, r1, r0
	lsl r0, r1, #5
	ldr r1, off_3007974 // =byte_2039AE0 
	add r0, r0, r1
	mov pc, lr
loc_3007970:
	mov r0, #0
	mov pc, lr
off_3007974: .word byte_2039AE0
	thumb_func_end sub_3007958

	thumb_local_start
sub_3007978:
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_30079A0 // =unk_2034F60 
	ldr r2, [r0,r1]
	mov r1, r10
	ldr r1, [r1,#0x30]
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
	.byte 0, 0
off_30079A0: .word unk_2034F60
	thumb_func_end sub_3007978

	thumb_func_start sub_30079A4
sub_30079A4:
	push {r4-r6,lr}
	mov r4, r0
	mov r5, r1
	mov r6, r2
	bl sub_3007958
	ldrb r3, [r0,#2]
	tst r3, r3
	beq locret_30079CE
	strb r6, [r0,#2]
	cmp r6, #9
	blt loc_30079C6
	cmp r6, #0xc
	bgt loc_30079C6
	ldr r1, dword_30079D0 // =0x708 
	strh r1, [r0,#0x12]
	b loc_30079C6
loc_30079C6:
	mov r0, r4
	mov r1, r5
	bl sub_30078E0
locret_30079CE:
	pop {r4-r6,pc}
dword_30079D0: .word 0x708
	ldrb r3, [r0,#2]
	tst r3, r3
	beq locret_30079F2
	strb r6, [r0,#2]
	cmp r6, #9
	blt loc_30079EA
	cmp r6, #0xc
	bgt loc_30079EA
	ldr r1, byte_30079F4 // =0x8 
	strh r1, [r0,#0x12]
	b loc_30079EA
loc_30079EA:
	mov r0, r4
	mov r1, r5
	bl loc_3007904
locret_30079F2:
	pop {r4-r6,pc}
byte_30079F4:
	// <endpool> <endfile>
	.byte 0x8, 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x50, 0x0, 0x40, 0x4
	.byte 0x55, 0x0, 0xA2, 0x43, 0x52, 0x0, 0x0, 0x70, 0x66, 0x0, 0x0, 0x0, 0x67, 0x0, 0x0
	.byte 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x66, 0xE, 0x0, 0x0, 0x66, 0xE6, 0x0, 0x0
	.byte 0x66, 0x66, 0xE, 0x0, 0x67, 0x66, 0xE6, 0x0, 0x70, 0x66, 0x66, 0xE, 0x0, 0x67, 0x66
	.byte 0x6, 0x0, 0x70, 0x66, 0x6A, 0x0, 0x0, 0x77, 0xAA, 0x0, 0xE0, 0x66, 0x7, 0x0, 0xE0
	.byte 0x76, 0x0, 0x0, 0x6E, 0x76, 0x8, 0x0, 0x8E, 0x7, 0x80, 0x0, 0x6E, 0x88, 0x80, 0x0
	.byte 0x6E, 0x87, 0x88, 0xE0, 0x66, 0x7, 0x88, 0xE6, 0x7A, 0x0, 0x80, 0x0, 0x34, 0x3A, 0x24
	.byte 0x20, 0x33, 0xA3, 0x54, 0x20, 0x33, 0xA3, 0xD4, 0x22, 0x34, 0xA3, 0xD4, 0x25, 0x22, 0xA3
	.byte 0xD4, 0x52, 0x33, 0x42, 0xD4, 0x72, 0x7C, 0x23, 0xD7, 0xC8, 0xCC, 0x24, 0x7A, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xA7, 0x0, 0x0, 0x0, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0xA7, 0x0, 0x0, 0x77, 0xBA, 0x0, 0x70
	.byte 0xBE, 0x7B, 0x6A, 0x2A, 0x22, 0xAA, 0xBA, 0x32, 0xB3, 0x2E, 0xB6, 0x34, 0xEB, 0x34, 0x27
	.byte 0x43, 0x2B, 0x35, 0x2A, 0x45, 0x2B, 0x45, 0x7B, 0x52, 0x6E, 0x52, 0x7, 0x28, 0x62, 0x26
	.byte 0x80, 0x78, 0x42, 0x66, 0x7A, 0x7C, 0x25, 0xBA, 0x55, 0x62, 0xF5, 0x7F, 0x33, 0x24, 0x78
	.byte 0xFF, 0x33, 0x85, 0x78, 0x67, 0x33, 0x82, 0x88, 0x78, 0x44, 0x82, 0x88, 0x88
	thumb_func_end sub_30079A4

/*For debugging purposes, connect comment at any range!*/
