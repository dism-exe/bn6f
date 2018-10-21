.include "asm/asm38.inc"

.func
.arm
sub_81D6000:
	mov R3, #0x4000000
	add r3, r3, #0x200
	ldr R2, [R3]
	ldrh R1, [R3,#0x8] // (InterruptMasterEnableRegister - 0x4000200)
	mrs R0, SPSR
	stmfd SP!, {R0-R3,LR}
	mov R0, #0
	strh R0, [R3,#0x8] // (InterruptMasterEnableRegister - 0x4000200)
	and r1, r2, r2,LSR#16
	ldr R0, off_81D6194 // =dword_3001D60 
	ldr R0, [R0]
	tst R0, R0
	bne loc_81D607C
	mov R12, #8
	ands r0, r1, #4
	bne loc_81D6130
	mov R0, #1
	strh R0, [R3,#0x8] // (InterruptMasterEnableRegister - 0x4000200)
	mov R12, #0x1C
	ands r0, r1, #0x80
	bne loc_81D6130
	mov R12, #0x18
	ands r0, r1, #0x40
	bne loc_81D6130
	mov R12, #0
	ands r0, r1, #1
	bne loc_81D6130
	mov R12, #4
	ands r0, r1, #2
	bne loc_81D6130
	b loc_81D60C0
loc_81D607C:
	mov R0, #1
	strh R0, [R3,#0x8] // (InterruptMasterEnableRegister - 0x4000200)
	mov R12, #0x1C
	ands r0, r1, #0x80
	bne loc_81D6130
	mov R12, #0x18
	ands r0, r1, #0x40
	bne loc_81D6130
	mov R12, #0
	ands r0, r1, #1
	bne loc_81D6130
	mov R12, #4
	ands r0, r1, #2
	bne loc_81D6130
	mov R12, #8
	ands r0, r1, #4
	bne loc_81D6130
loc_81D60C0:
	mov R12, #0xC
	ands r0, r1, #8
	bne loc_81D6130
	mov R12, #0x10
	ands r0, r1, #0x10
	bne loc_81D6130
	mov R12, #0x14
	ands r0, r1, #0x20
	bne loc_81D6130
	mov r12, #0x20 
	ands r0, r1, #0x100
	bne loc_81D6130
	mov r12, #0x24 
	ands r0, r1, #0x200
	bne loc_81D6130
	mov r12, #0x28 
	ands r0, r1, #0x400
	bne loc_81D6130
	mov r12, #0x2c 
	ands r0, r1, #0x800
	bne loc_81D6130
	mov r12, #0x30 
	ands r0, r1, #0x1000
	bne loc_81D6130
	mov r12, #0x34 
	ands r0, r1, #0x2000
	strneb R0, [R3,#0xFFFFFE84] // (ControlSoundon_off_NR52_ - 0x4000200)
loc_81D612C:
	bne loc_81D612C
loc_81D6130:
	strh R0, [R3,#0x2] // (InterruptRequestFlags_IRQAcknowledge - 0x4000200)
	ldr R1, dword_81D6198 // =0x20C8 
	bic r2, r2, r0
	and r1, r1, r2
	strh R1, [R3]
	mrs R3, CPSR
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr CPSR_cf, R3
	ldr R1, off_81D619C // =off_3000E70 
	add r1, r1, r12
	ldr R0, [R1]
	stmfd SP!, {LR}
	adr LR, loc_81D616C
	bx r0
loc_81D616C:
	ldmfd SP!, {LR}
	mrs R3, CPSR
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr CPSR_cf, R3
	ldmfd SP!, {R0-R3,LR}
	strh R2, [R3]
	strh R1, [R3,#8]
	msr SPSR_cf, R0
	bx lr
off_81D6194: .word dword_3001D60
dword_81D6198: .word 0x20C8
off_81D619C: .word off_3000E70
	.word unk_3005CDB
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
	.word sub_814469C+1
	.word sub_81446AC+1
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
	.word unk_3005CD9
.endfunc // sub_81D6000

.func
.thumb_func
nullsub_38:
	bx lr
.endfunc // nullsub_38

.func
.thumb_func
sub_81D61DA:
	push {lr}
	ldr R0, off_81D6220 // =sub_803EA68+1 
	mov LR, PC
	bx r0
	add r1, r0, #0
	ldr R0, jt_81D620C // =unk_3005D10 
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {r0}
	mov LR, R0
.endfunc // sub_81D61DA

.func
.thumb_func
sub_81D61F0:
	push {lr}
	bl sub_81D6224
	pop {r0}
	mov LR, R0
	ldr R0, off_81D6204 // =dword_200A870 
	ldr R1, [R0]
	add R1, #1
	str R1, [R0]
	bx lr
off_81D6204: .word dword_200A870
	.word sCamera+0x50 // sCamera.unk_50
jt_81D620C: .word unk_3005D10
	.word sub_803DE72+1
	.word sub_813D5DC+1
	.word sub_813D5DC+1
	.word sub_813D5DC+1
off_81D6220: .word sub_803EA68+1
.endfunc // sub_81D61F0

.func
.thumb_func
sub_81D6224:
	push {lr}
	ldr R1, off_81D6268 // =byte_20081B0 
	ldrb R3, [R1]
	tst R3, R3
	beq locret_81D6264
	ldr R0, off_81D626C // =DMA0SourceAddress 
	ldr R1, dword_81D6270 // =0x80000000 
	ldr R2, [R0,#0x8] // (DMA0WordCount - 0x40000B0)
	bic R2, R1
	str R2, [R0,#0x8] // (DMA0WordCount - 0x40000B0)
	cmp R3, #0x80
	bne loc_81D6244
	ldr R1, off_81D6268 // =byte_20081B0 
	mov R0, #0
	strb R0, [R1]
	b locret_81D6264
loc_81D6244:
	ldr R1, off_81D6268 // =byte_20081B0 
	ldr R2, [R1,#0xC] // (dword_20081BC - 0x20081B0)
	str R2, [R0]
	ldr R2, [R1,#0x8] // (dword_20081B8 - 0x20081B0)
	str R2, [R0,#0x4] // (DMA0DestinationAddress - 0x40000B0)
	ldrb R2, [R1,#0x1] // (byte_20081B1 - 0x20081B0)
	ldrh R3, [R1,#0x2] // (word_20081B2 - 0x20081B0)
	lsl r3, r3, #0x10
	orr R2, R3
	str R2, [R0,#0x8] // (DMA0WordCount - 0x40000B0)
	ldr R2, [R1,#0x10] // (dword_20081C0 - 0x20081B0)
	ldr R0, [R1,#0x4] // (dword_20081B4 - 0x20081B0)
	ldr R1, [R1,#0xC] // (dword_20081BC - 0x20081B0)
	ldr R3, off_81D6274 // =sub_80068E0+1 
	mov LR, PC
	bx r3
locret_81D6264:
	pop {pc}
	.balign 4, 0x00
off_81D6268: .word byte_20081B0
off_81D626C: .word DMA0SourceAddress
dword_81D6270: .word 0x80000000
off_81D6274: .word sub_80068E0+1
.endfunc // sub_81D6224

.func
.thumb_func
sub_81D6278:
	push {lr}
	push {lr}
	ldr R0, off_81D6294 // =sub_80005C4+1 
	mov LR, PC
	bx r0
	pop {r0}
	mov LR, R0
	ldr R0, off_81D6290 // =sub_80005AC+1 
	mov LR, PC
	bx r0
	pop {r0}
	bx r0
off_81D6290: .word sub_80005AC+1
off_81D6294: .word sub_80005C4+1
.endfunc // sub_81D6278

.func
.thumb_func
nullsub_24:
	bx lr
	.balign 4, 0x00
	.word dword_2009CC0
.endfunc // nullsub_24

.func
.thumb_func
sub_81D62A0:
	push {R4-R7,lr}
	bl sub_81D6318
	ldr R4, off_81D6354 // =InterruptMasterEnableRegister 
	mov R0, #0
	strh R0, [R4]
	mov R0, #0
	ldr R1, off_81D62CC // =unk_3005CA0 
	ldr R2, off_81D62E8 // =off_3000E70 
loc_81D62B2:
	ldr R3, [R1]
	str R3, [R2]
	add R0, #1
	add R1, #4
	add R2, #4
	cmp R0, #0xE
	blt loc_81D62B2
	ldr R0, off_81D6358 // =InterruptEnableRegister 
	ldr R1, dword_81D62D0 // =0x2005 
	strh R1, [R0]
	mov R0, #1
	strh R0, [R4]
	pop {R4-R7,pc}
off_81D62CC: .word unk_3005CA0
dword_81D62D0: .word 0x2005
.endfunc // sub_81D62A0

.func
.thumb_func
sub_81D62D4:
	push {r4,lr}
	ldr R3, off_81D6354 // =InterruptMasterEnableRegister 
	ldrh R4, [R3]
	mov R2, #0
	strh R2, [R3]
	ldr R2, off_81D62E8 // =off_3000E70 
	str R1, [R2,R0]
	strh R4, [R3]
	pop {r4,pc}
	.balign 4, 0x00
off_81D62E8: .word off_3000E70
.endfunc // sub_81D62D4

.func
.thumb_func
sub_81D62EC:
	push {r4,lr}
	ldr R3, off_81D6354 // =InterruptMasterEnableRegister 
	ldrh R4, [R3]
	mov R2, #0
	strh R2, [R3]
	ldr R1, off_81D6358 // =InterruptEnableRegister 
	ldrh R2, [R1]
	orr R2, R0
	strh R2, [R1]
	strh R4, [R3]
	pop {r4,pc}
.endfunc // sub_81D62EC

.func
.thumb_func
sub_81D6302:
	push {r4,lr}
	ldr R3, off_81D6354 // =InterruptMasterEnableRegister 
	ldrh R4, [R3]
	mov R2, #0
	strh R2, [R3]
	ldr R1, off_81D6358 // =InterruptEnableRegister 
	ldrh R2, [R1]
	bic R2, R0
	strh R2, [R1]
	strh R4, [R3]
	pop {r4,pc}
.endfunc // sub_81D6302

.func
.thumb_func
sub_81D6318:
	push {r4,lr}
	ldr R3, off_81D6354 // =InterruptMasterEnableRegister 
	ldrh R4, [R3]
	mov R2, #0
	strh R2, [R3]
	ldr R1, off_81D635C // =dword_3001D60 
	mov R0, #0
	str R0, [R1]
	strh R4, [R3]
	pop {r4,pc}
.endfunc // sub_81D6318

.func
.thumb_func
sub_81D632C:
	push {r4,lr}
	ldr R3, off_81D6354 // =InterruptMasterEnableRegister 
	ldrh R4, [R3]
	mov R2, #0
	strh R2, [R3]
	ldr R1, off_81D635C // =dword_3001D60 
	mov R0, #1
	str R0, [R1]
	push {r3}
	mov R0, #0x18
	ldr R1, off_81D6378 // =sub_814469C+1 
	bl sub_81D62D4
	mov R0, #0x1C
	ldr R1, off_81D637C // =sub_81446AC+1 
	bl sub_81D62D4
	pop {r3}
	strh R4, [R3]
	pop {r4,pc}
off_81D6354: .word InterruptMasterEnableRegister
off_81D6358: .word InterruptEnableRegister
off_81D635C: .word dword_3001D60
.endfunc // sub_81D632C

.func
.thumb_func
sub_81D6360:
	push {r4,lr}
	ldr R3, off_81D6374 // =InterruptMasterEnableRegister 
	mov R2, #1
	strh R2, [R3]
	pop {r4,pc}
.endfunc // sub_81D6360

.func
.thumb_func
sub_81D636A:
	push {r4,lr}
	ldr R3, off_81D6374 // =InterruptMasterEnableRegister 
	mov R2, #0
	strh R2, [R3]
	pop {r4,pc}
off_81D6374: .word InterruptMasterEnableRegister
off_81D6378: .word sub_814469C+1
off_81D637C: .word sub_81446AC+1
	.word 0x9000B081
	.word 0x6AB64656
	.word 0x18B602D2
	.word 0x186D1824
.endfunc // sub_81D636A

.func
.thumb_func
sub_81D6390:
	mov R2, #0x1F
	mvn R2, R2
	add r7, r0, #0
	orr R7, R1
	tst R7, R2
	bne loc_81D63A6
	lsl r7, r0, #1
	lsl r2, r1, #6
	add r2, r2, r7
	ldrh R7, [R3]
	strh R7, [R6,R2]
loc_81D63A6:
	add R3, #2
	add R0, #1
	cmp R0, R4
	blt sub_81D6390
	ldr R0, [SP]
	add R1, #1
	cmp R1, R5
	blt sub_81D6390
	add sp, sp, #4
	mov PC, LR
.endfunc // sub_81D6390

	sub sp, sp, #4
	str R0, [SP]
	mov R6, R10
	ldr R6, [R6,#0x28]
	lsl r2, r2, #0xb
	add r6, r6, r2
	add r4, r4, r0
	add r5, r5, r1
loc_81D63CA:
	mov R2, #0x1F
	mvn R2, R2
	add r7, r0, #0
	orr R7, R1
	tst R7, R2
	bne loc_81D63DE
	lsl r7, r0, #1
	lsl r2, r1, #6
	add r2, r2, r7
	strh R3, [R6,R2]
loc_81D63DE:
	add R0, #1
	cmp R0, R4
	blt loc_81D63CA
	ldr R0, [SP]
	add R1, #1
	cmp R1, R5
	blt loc_81D63CA
	add sp, sp, #4
	mov PC, LR
.func
.thumb_func
sub_81D63F0:
	push {r5,lr}
	cmp R6, #0
	ble locret_81D6418
	mov R12, R0
	ldr R1, dword_81D641C // = 
	ldr R2, [R1,R2]
	mov R9, R2
	ldr R2, dword_81D6428 // =0x7BDE 
	ldr R3, dword_81D642C // =0x8420 
	ldr R1, dword_81D6430 // =0x3DEF 
	mov R8, R1
	sub R6, #2
loc_81D6408:
	mov R0, R12
	ldrh R1, [R7,R6]
	mov R4, R9
	mov LR, PC
	bx r4
	strh R0, [R7,R6]
	sub R6, #2
	bge loc_81D6408
locret_81D6418:
	pop {r5,pc}
	.balign 4, 0x00
dword_81D641C: .word 0x3005F20
	.word 0x3005F35, 0x3005F57
dword_81D6428: .word 0x7BDE
dword_81D642C: .word 0x8420
dword_81D6430: .word 0x3DEF
.endfunc // sub_81D63F0

.func
.thumb_func
sub_81D6434:
	add r4, r0, #0
	and R4, R1
	lsl r4, r4, #1
	add r5, r0, #0
	eor R5, R1
	and R5, R2
	add r4, r4, r5
	and R4, R3
	lsl r4, r4, #0x10
	lsr r4, r4, #0x15
	add R4, R8
	add r0, r0, r1
	mov R1, R8
	eor R4, R1
	sub r0, r0, r4
	orr R0, R4
	mov PC, LR
.endfunc // sub_81D6434

.func
.thumb_func
sub_81D6456:
	mvn R5, R1
	add r4, r0, #0
	and R4, R5
	lsl r4, r4, #1
	eor R5, R0
	and R5, R2
	add r4, r4, r5
	and R4, R3
	lsl r4, r4, #0x10
	lsr r4, r4, #0x15
	add R4, R8
	mov R5, R8
	eor R4, R5
	orr R1, R4
	orr R0, R4
	sub r0, r1, r0
	mov PC, LR
.endfunc // sub_81D6456

.func
.thumb_func
sub_81D6478:
	push {r5,lr}
	cmp R6, #0
	ble locret_81D64AA
	mov R12, R0
	ldr R1, off_81D64AC // =byte_3005FB0 
	ldr R1, [R1,R2]
	mov R9, R1
	add r5, r2, #0
	mov R4, #0x1F
	mov R1, R12
	mov R2, R12
	mov R3, R12
	and R1, R4
	lsr r2, r2, #5
	and R2, R4
	lsr r3, r3, #0xa
	and R3, R4
	sub R6, #2
loc_81D649C:
	ldrh R5, [R7,R6]
	mov R4, R9
	mov LR, PC
	bx r4
	strh R0, [R7,R6]
	sub R6, #2
	bge loc_81D649C
locret_81D64AA:
	pop {r5,pc}
off_81D64AC: .word byte_3005FB0
	.word 0x0
	.word 0x0
	.word sub_3005FC0+1
	.word sub_3005FFA+1
	.word 0x6E846A8
	.word 0x5AC0EC0
	.word 0x46D0EE4
	.word 0x468C0EED
	.word 0x1A08211F
	.word 0x1B4D1B0C
	.word 0x3004661
	.word 0x32D0324
	.word 0x43544348
	.byte 0x5D 
	.byte 0x43 
	.byte  0
	.byte 0xC
	.byte 0x24 
	.byte 0xC
	.byte 0x2D 
	.byte 0xC
	.byte 0x64 
	.byte  1
	.byte 0xAD
	.byte  2
	.byte 0x20
	.byte 0x43 
	.byte 0x28 
	.byte 0x43 
	.byte 0x45 
	.byte 0x46 
	.byte 0x28 
	.byte 0x18
	.byte 0xF7
	.byte 0x46 
	.hword 0x46A8
	.byte 0xE8
	.byte  6
	.byte 0xC0
	.byte 0xE
	.byte 0xAC
	.byte  5
	.byte 0xE4
	.byte 0xE
	.byte 0x6D 
	.byte  4
	.byte 0xED
	.byte 0xE
	.byte  0
	.byte  3
	.byte 0x24 
	.byte  3
	.byte 0x2D 
	.byte  3
	.byte 0x48 
	.byte 0x43 
.endfunc // sub_81D6478

	mul R4, R2
	mul R5, R3
	lsr r0, r0, #0x10
	lsr r4, r4, #0x10
	lsr r5, r5, #0x10
	lsl r4, r4, #5
	lsl r5, r5, #0xa
	orr R0, R4
	orr R0, R5
	mov R5, R8
	sub r0, r5, r0
	mov PC, LR
.func
.thumb_func
sub_81D6528:
	push {r5,lr}
	ldrb R7, [R5,#2]
	lsr r7, r7, #4
	lsl r7, r7, #4
	add r5, r5, r7
	ldrb R1, [R5,#3]
	mov R2, #0x10
	bic R1, R2
	strb R1, [R5,#3]
	mov R2, #2
	tst R1, R2
	bne loc_81D6546
	mov R1, #0
	str R1, [R5,#0x24]
	b locret_81D65E2
loc_81D6546:
	ldr R1, dword_81D65E4 // = 
	lsl r0, r0, #2
	add r0, r0, r1
	ldr R0, [R0]
	ldrh R6, [R0]
	mov R8, R0
	ldr R7, [R5,#0x1C]
	ldr R7, [R7]
	ldr R1, [R5,#0x18]
	add r7, r7, r1
	mov R12, R7
	bl sub_81D66A8
	beq loc_81D65B8
	ldrh R2, [R5,#8]
	mov R0, R8
	ldrh R1, [R0]
	cmp R1, R2
	beq loc_81D6570
	mov R2, #0
	str R2, [R5,#0x24]
loc_81D6570:
	mov R4, R12
	ldr R4, [R4]
	lsr r4, r4, #5
	mov R0, R8
	bl sub_81D6904
	beq loc_81D658C
	ldrb R1, [R5,#3]
	mov R2, #0x10
	orr R1, R2
	strb R1, [R5,#3]
	mov R2, #0
	str R2, [R5,#0x24]
	b locret_81D65E2
loc_81D658C:
	bl sub_81D66C8
	strh R1, [R5,#8]
	add r4, r4, r1
	strh R4, [R0]
	ldr R2, [R5,#0x24]
	mov R0, R12
	cmp R0, R2
	beq loc_81D65BE
	str R0, [R5,#0x24]
	mov R8, R5
	ldr R2, [R0]
	add R0, #4
	ldr R1, dword_81D6600 // =0x6010000 
	ldrh R3, [R5,#8]
	lsl r3, r3, #5
	add r1, r1, r3
	ldr R7, off_81D6604 // =loc_8000AC8+1 
	mov LR, PC
	bx r7
	mov R5, R8
	b loc_81D65BE
loc_81D65B8:
	strh R0, [R5,#8]
	mov R0, R12
	str R0, [R5,#0x24]
loc_81D65BE:
	ldrb R1, [R5,#0x15]
	mov R2, #0xF0
	and R1, R2
	mov R2, #0xF0
	cmp R1, R2
	bge locret_81D65E2
	ldrb R1, [R5,#3]
	mov R2, #0x10
	tst R1, R2
	bne locret_81D65E2
	bl sub_81D6608
	ldrb R1, [R5,#0x15]
	mov R2, #0xF0
	bic R1, R2
	lsl r0, r0, #4
	orr R1, R0
	strb R1, [R5,#0x15]
locret_81D65E2:
	pop {r5,pc}
dword_81D65E4: .word 0x30060E8
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
	.word dword_200F350
dword_81D6600: .word 0x6010000
off_81D6604: .word loc_8000AC8+1
.endfunc // sub_81D6528

.func
.thumb_func
sub_81D6608:
	push {lr}
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#4]
	add R0, #4
	ldr R1, [R5,#0x18]
	add r0, r0, r1
	ldrb R1, [R5,#4]
	ldrb R2, [R5,#5]
	add r1, r1, r2
	lsl r1, r1, #5
	add r0, r0, r1
	ldrh R7, [R5,#6]
	tst R7, R7
	beq loc_81D6640
	ldr R7, off_81D669C // =byte_3001750 
	mov r2, #0x20 
loc_81D6628:
	sub R2, #4
	ldr R3, [R0,R2]
	str R3, [R7,R2]
	bne loc_81D6628
	ldrh R0, [R5,#6]
	lsr r2, r0, #0xf
	lsl r2, r2, #2
	mov r6, #0x20 
	push {r7}
	bl sub_81D63F0
	pop {r0}
loc_81D6640:
	mov R8, R5
	ldr R7, off_81D66A0 // =dword_200F340 
	ldr R4, [R7]
	cmp R4, #0xF
	bge loc_81D6696
	ldr R5, off_81D66A4 // =byte_3001550 
	mov R1, #0
loc_81D664E:
	cmp R1, R4
	bge loc_81D666A
	mov R6, #0x1C
loc_81D6654:
	ldr R2, [R5,R6]
	ldr R3, [R0,R6]
	cmp R2, R3
	bne loc_81D6664
	sub R6, #4
	bge loc_81D6654
	add r0, r1, #0
	b loc_81D6698
loc_81D6664:
	add r5, #0x20 
	add R1, #1
	b loc_81D664E
loc_81D666A:
	bl sub_81D6928
	tst R3, R3
	beq loc_81D6682
	mov R5, R8
	ldrb R1, [R5,#3]
	mov R2, #0x10
	orr R1, R2
	strb R1, [R5,#3]
	mov R2, #0
	str R2, [R5,#0x24]
	b loc_81D6698
loc_81D6682:
	mov R6, #0x1C
loc_81D6684:
	ldr R2, [R0,R6]
	str R2, [R5,R6]
	sub R6, #4
	bge loc_81D6684
	add R4, #1
	ldr R7, off_81D66A0 // =dword_200F340 
	str R4, [R7]
	add r0, r1, #0
	b loc_81D6698
loc_81D6696:
	mov R0, #0xF
loc_81D6698:
	mov R5, R8
	pop {pc}
off_81D669C: .word byte_3001750
off_81D66A0: .word dword_200F340
off_81D66A4: .word byte_3001550
.endfunc // sub_81D6608

.func
.thumb_func
sub_81D66A8:
	ldr R1, off_81D66E0 // =dword_20093A8 
	ldr R1, [R1]
	ldr R2, off_81D66E4 // =dword_200A890 
loc_81D66AE:
	cmp R1, #0
	beq loc_81D66BE
	ldr R3, [R2]
	cmp R7, R3
	beq loc_81D66C2
	sub R1, #1
	add R2, #8
	b loc_81D66AE
loc_81D66BE:
	mov R0, #1
	mov PC, LR
loc_81D66C2:
	ldr R0, [R2,#4]
	mov R3, #0
	mov PC, LR
.endfunc // sub_81D66A8

.func
.thumb_func
sub_81D66C8:
	ldr R2, off_81D66E0 // =dword_20093A8 
	ldr R3, [R2]
	add R3, #1
	str R3, [R2]
	sub R3, #1
	lsl r3, r3, #3
	ldr R2, off_81D66E4 // =dword_200A890 
	add r2, r2, r3
	str R7, [R2]
	str R6, [R2,#4]
	mov PC, LR
	.byte 0, 0
off_81D66E0: .word dword_20093A8
off_81D66E4: .word dword_200A890
.endfunc // sub_81D66C8

.func
.thumb_func
sub_81D66E8:
	push {r5,lr}
	mov R1, R10
	push {r1}
	ldrb R6, [R5]
	push {r6}
	ldr R4, off_81D6808 // =sCamera+76 
	ldrb R4, [R4]
	ldrb R7, [R5,#2]
	lsr r7, r7, #4
	lsl r7, r7, #4
	add r5, r5, r7
	ldr R2, off_81D680C // =byte_20098A8 
	ldrb R2, [R2,#0x1] // (byte_20098A9 - 0x20098A8)
	ldr R3, off_81D6810 // =loc_3006314 
	ldr R2, [R3,R2]
	mov LR, PC
	bx r2
	ldr R0, off_81D6808 // =sCamera+76 
	ldrb R0, [R0]
	mov R10, R0
	mov R12, R7
	pop {r7}
	mov R0, #8
	tst R0, R7
	bne loc_81D67A6
	ldrb R3, [R5,#3]
	mov R4, #1
	tst R3, R4
	bne loc_81D6724
	mov R12, R6
loc_81D6724:
	mov R0, #0
	ldrb R3, [R5,#0x13]
	mov R2, #0x10
	and R3, R2
	beq loc_81D6730
	mov R0, #1
loc_81D6730:
	mov R8, R0
	mov R0, #0
	ldrb R3, [R5,#0x13]
	mov r2, #0x20 
	and R3, R2
	beq loc_81D673E
	mov R0, #1
loc_81D673E:
	mov R9, R0
	ldr R3, [R5,#0x20]
	ldrb R2, [R3]
	lsl r2, r2, #2
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#0xC]
	ldr R3, [R5,#0x18]
	add r3, r3, r0
	ldr R2, [R3,R2]
	add r2, r2, r3
	mov R7, #0
	mov R4, #0x80
	lsl r4, r4, #0x18
loc_81D6758:
	ldrb R3, [R2]
	cmp R3, #0xFF
	beq loc_81D67CC
	mov R3, #1
	ldrsb R3, [R2,R3]
	mov R0, R8
	tst R0, R0
	beq loc_81D676A
	neg R3, R3
loc_81D676A:
	add r3, r3, r1
	mov R0, R10
	sub r0, #0x40 
	cmp R3, R0
	blt loc_81D679E
	mov R0, R10
	add R0, #0xF0
	add r0, #0x41 
	cmp R3, R0
	bge loc_81D679E
	mov R3, #2
	ldrsb R3, [R2,R3]
	mov R0, R9
	tst R0, R0
	beq loc_81D678A
	neg R3, R3
loc_81D678A:
	add R3, R12
	mov r0, #0x20 
	neg R0, R0
	cmp R3, R0
	blt loc_81D679E
	mov R0, #0xA0
	add r0, #0x21 
	cmp R3, R0
	bge loc_81D679E
	orr R7, R4
loc_81D679E:
	mov R12, R6
	lsr r4, r4, #1
	add R2, #5
	b loc_81D6758
loc_81D67A6:
	mov R7, #0
	mov R0, R10
	sub r0, #0x40 
	cmp R1, R0
	blt loc_81D67CC
	mov R0, R10
	add R0, #0xF0
	add r0, #0x41 
	cmp R1, R0
	bge loc_81D67CC
	mov r0, #0x20 
	neg R0, R0
	cmp R6, R0
	blt loc_81D67CC
	mov R0, #0xA0
	add r0, #0x21 
	cmp R6, R0
	bge loc_81D67CC
	mov R7, #1
loc_81D67CC:
	ldrb R3, [R5,#3]
	mov R4, #4
	tst R3, R4
	bne loc_81D67F2
	add r6, r7, #0
	mov R4, #0x80
	lsl r4, r4, #0x18
	bic R6, R4
	mov R4, #8
	bic R3, R4
	tst R6, R6
	beq loc_81D67E6
	orr R3, R4
loc_81D67E6:
	mov R4, #2
	bic R3, R4
	tst R7, R7
	beq loc_81D67FC
	orr R3, R4
	b loc_81D67FC
loc_81D67F2:
	mov R4, #0xA
	bic R3, R4
	tst R7, R7
	beq loc_81D67FC
	orr R3, R4
loc_81D67FC:
	strb R3, [R5,#3]
	str R7, [R5,#0x28]
	pop {r1}
	mov R10, R1
	pop {r5,pc}
	.hword 0x0
off_81D6808: .word sCamera+0x4C // sCamera.unk_4C
off_81D680C: .word byte_20098A8
off_81D6810: .word loc_3006314
	.word loc_300631C+1
	.word loc_300638C+1
.endfunc // sub_81D66E8

.func
.thumb_func
sub_81D681C:
	push {lr}
	mov R2, #4
	ldrb R3, [R5,#3]
	tst R2, R3
	bne loc_81D6836
	push {r0,r5}
	ldr R5, off_81D6888 // =sub_8031612+1 
	mov LR, PC
	bx r5
	lsl r0, r0, #0x10
	mov R9, R0
	pop {r0,r5}
	b loc_81D683A
loc_81D6836:
	ldr R1, [R0,#8]
	mov R9, R1
loc_81D683A:
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
	strh R1, [R5,#0xC]
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
	strh R4, [R5,#0xA]
	ldr R4, [R0,#8]
	sub r6, r6, r4
	ldr R2, [R3,#0x44]
	add r6, r6, r2
	asr r6, r6, #0x10
	add r6, #0x52 
	strb R6, [R5,#0xE]
	mov R4, R9
	sub r7, r7, r4
	ldr R2, [R3,#0x44]
	add r7, r7, r2
	asr r7, r7, #0x10
	add r7, #0x52 
	strb R7, [R5,#0xF]
	pop {pc}
off_81D6888: .word sub_8031612+1
.endfunc // sub_81D681C

.func
.thumb_func
sub_81D688C:
	add r6, r4, #0
	mov R3, R10
	ldr R3, [R3,#0xC]
	mov R2, #2
	ldrsh R1, [R0,R2]
	ldr R4, [R3,#0x3C]
	ldr R7, [R3,#0x48]
	add r4, r4, r7
	asr r4, r4, #0x10
	sub r1, r1, r4
	tst R6, R6
	beq loc_81D68C4
	neg R1, R1
	ldrb R2, [R5,#0x16]
	mov R4, #2
	tst R2, R4
	bne loc_81D68C4
	ldrb R2, [R5,#0x16]
	mov R4, #0x10
	eor R2, R4
	mov r4, #0x30 
	and R2, R4
loc_81D68B8:
	ldrb R7, [R5,#0x13]
	mov r4, #0x30 
	bic R7, R4
	orr R7, R2
	strb R7, [R5,#0x13]
	b loc_81D68CC
loc_81D68C4:
	ldrb R2, [R5,#0x16]
	mov r4, #0x30 
	and R2, R4
	b loc_81D68B8
loc_81D68CC:
	add r1, #0x78 
	strh R1, [R5,#0xC]
	mov R2, #6
	ldrsh R6, [R0,R2]
	ldr R4, [R3,#0x40]
	asr r4, r4, #0x10
	sub r6, r6, r4
	add r6, #0x50 
	add r7, r6, #0
	strh R7, [R5,#0xA]
	mov R2, #0xA
	ldrsh R4, [R0,R2]
	ldr R2, [R3,#0x44]
	asr r2, r2, #0x10
	sub r4, r4, r2
	sub r6, r6, r4
	strb R6, [R5,#0xE]
	strb R7, [R5,#0xF]
	ldrb R3, [R5,#3]
	mov r2, #0x20 
	tst R2, R3
	beq loc_81D68FA
	strb R6, [R5,#0xF]
loc_81D68FA:
	mov R2, #4
	tst R2, R3
	beq locret_81D6902
	add r7, r6, #0
locret_81D6902:
	mov PC, LR
.endfunc // sub_81D688C

.func
.thumb_func
sub_81D6904:
	push {lr}
	ldrh R3, [R0]
	ldr R2, off_81D6920 // =0x30 
	sub r3, r3, r2
	add r3, r3, r4
	ldr R2, off_81D6924 // =byte_20098A8 
	ldrh R2, [R2,#0x2] // (word_20098AA - 0x20098A8)
	cmp R3, R2
	bge loc_81D691A
	mov R3, #0
	pop {pc}
loc_81D691A:
	mov R3, #1
	pop {pc}
	.byte 0, 0
off_81D6920: .word 0x30
off_81D6924: .word byte_20098A8
.endfunc // sub_81D6904

.func
.thumb_func
sub_81D6928:
	push {lr}
	ldr R3, off_81D693C // =byte_20098A8 
	ldrb R3, [R3]
	cmp R1, R3
	bge loc_81D6936
	mov R3, #0
	pop {pc}
loc_81D6936:
	mov R3, #1
	pop {pc}
	.balign 4, 0x00
off_81D693C: .word byte_20098A8
.endfunc // sub_81D6928

	push {lr}
	ldrb R7, [R5,#3]
	mov R2, #0x10
	tst R7, R2
	bne locret_81D6950
	mov R2, #2
	tst R7, R2
	bne loc_81D6952
locret_81D6950:
	pop {pc}
loc_81D6952:
	sub sp, sp, #0x1c
	str R0, [SP]
	str R1, [SP,#0x14]
	ldr R0, off_81D6A90 // =unk_3002400 
	str R0, [SP,#0x10]
	mov R0, #0
	str R0, [SP,#0xC]
	ldr R0, [R5,#0x30]
	sub R0, #1
	str R0, [SP,#8]
	ldr R1, [R5,#0x20]
	ldrb R2, [R1]
	lsl r2, r2, #2
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#0xC]
	ldr R1, [R5,#0x18]
	add r1, r1, r0
	ldr R2, [R1,R2]
	add r2, r2, r1
	ldr R3, [R5,#0x28]
	str R3, [SP,#4]
	ldr R4, [R5,#0x2C]
	mvn R4, R4
	and R3, R4
	str R3, [R5,#0x28]
	ldrb R0, [R5,#0x16]
	mov r1, #0x40 
	bic R0, R1
	mov R1, #0x80
	and R1, R0
	lsr r1, r1, #1
	ldr R3, off_81D6A8C // =dword_20096D0 
	ldrb R3, [R3]
	orr R0, R3
	bic R0, R1
	strb R0, [R5,#0x16]
	ldrb R0, [R5,#3]
	mov R7, #1
	and R7, R0
	bne loc_81D69B0
	mov R1, #4
	tst R1, R0
	bne loc_81D69B0
	ldr R3, [R5,#0x28]
	lsl r3, r3, #1
	str R3, [R5,#0x28]
	b loc_81D6A62
loc_81D69B0:
	ldrb R3, [R2]
	cmp R3, #0xFF
	beq loc_81D6A76
	ldr R6, [SP,#8]
	add R6, #1
	str R6, [SP,#8]
	ldr R3, [R5,#0x28]
	lsl r6, r3, #1
	str R6, [R5,#0x28]
	cmp R3, #0
	bge loc_81D6A62
	ldr R6, [R5,#0x10]
	ldrb R0, [R5,#0x16]
	mov r1, #0x40 
	and R1, R0
	lsl r1, r1, #6
	orr R6, R1
	bl sub_81D6A94
	mov R8, R1
	mov R9, R0
	add r3, r6, #0
	mov R0, #0xC
	ldrsh R0, [R5,R0]
	add R0, R8
	mov R4, #0x10
	lsl r4, r4, #4
	add R4, #0xFF
	and R0, R4
	lsl r0, r0, #0x10
	orr R3, R0
	ldrb R4, [R2,#3]
	mov R0, #0xF0
	and R0, R4
	lsl r4, r4, #0x1e
	orr R3, R4
	lsl r0, r0, #0x16
	eor R3, R0
	mov R0, #0xE
	add r0, r0, r7
	ldrb R0, [R5,R0]
	add R0, R9
	mov R4, #0xFF
	and R0, R4
	orr R3, R0
	ldrb R4, [R2,#4]
	lsl r1, r4, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0xe
	orr R3, R1
	ldrh R1, [R5,#0x14]
	ldr R0, [SP,#8]
	cmp R0, #0xFF
	ble loc_81D6A28
	mov R4, #0xF0
	lsl r4, r4, #8
	bic R1, R4
	ldrb R4, [R0]
	lsl r4, r4, #0xc
	orr R1, R4
loc_81D6A28:
	ldrh R0, [R5,#8]
	ldrb R4, [R2]
	add r4, r4, r0
	orr R1, R4
	mov R8, R2
	mov R9, R5
	add r0, r3, #0
	ldr R2, [SP]
	add r2, r2, r7
	mov R12, R7
	mov R3, #0xA
	ldrsh R3, [R5,R3]
	ldr R4, [SP,#0x14]
	add r3, r3, r4
	lsl r7, r7, #5
	lsr R3, R7
	ldr R7, [SP,#0x10]
	str R0, [R7]
	strh R1, [R7,#4]
	strb R2, [R7,#6]
	strh R3, [R7,#8]
	add R7, #0xC
	str R7, [SP,#0x10]
	ldr R7, [SP,#0xC]
	add R7, #1
	str R7, [SP,#0xC]
	mov R7, R12
	mov R2, R8
	mov R5, R9
loc_81D6A62:
	add R2, #5
	ldrb R0, [R5,#3]
	mov r1, #0x20 
	tst R1, R0
	bne loc_81D69B0
	mov R7, #0
	mov r1, #0x40 
	tst R1, R0
	beq loc_81D69B0
	b loc_81D69B0
loc_81D6A76:
	ldr R0, off_81D6A90 // =unk_3002400 
	ldr R1, [SP,#0xC]
	tst R1, R1
	beq loc_81D6A82
	bl sub_81D6E20
loc_81D6A82:
	ldr R0, [SP,#4]
	str R0, [R5,#0x28]
	add sp, sp, #0x1c
	pop {pc}
	.balign 4, 0x00
off_81D6A8C: .word dword_20096D0
off_81D6A90: .word unk_3002400
.func
.thumb_func
sub_81D6A94:
	mov R3, #3
	lsl r3, r3, #8
	and R3, R6
	bne loc_81D6AE6
	mov R8, R7
	mov R1, #1
	ldrsb R1, [R2,R1]
	mov R0, #2
	ldrsb R0, [R2,R0]
	ldrb R3, [R5,#0x13]
	mov R4, #0x10
	and R3, R4
	beq loc_81D6AC4
	neg R1, R1
	ldr R3, dword_81D6BEC // = 
	ldrb R4, [R2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r3, r3, r4
	ldrb R4, [R2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb R3, [R3,R4]
	add r1, r1, r3
loc_81D6AC4:
	ldrb R3, [R5,#0x13]
	mov r4, #0x20 
	and R3, R4
	beq loc_81D6AE2
	neg R0, R0
	ldr R3, dword_81D6BF0 // = 
	ldrb R4, [R2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r3, r3, r4
	ldrb R4, [R2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb R3, [R3,R4]
	add r0, r0, r3
loc_81D6AE2:
	mov R7, R8
	mov PC, LR
loc_81D6AE6:
	ldrb R4, [R5,#0x13]
	mov r3, #0x3e 
	and R4, R3
	lsr r4, r4, #1
	mov r3, #0x20 
	lsl r3, r3, #0x18
	cmp R7, #1
	bne loc_81D6AFC
	add r6, r6, r3
	add R4, #0x10
	b loc_81D6AFE
loc_81D6AFC:
	bic R6, R3
loc_81D6AFE:
	mov R8, R6
	mov R9, R7
	mov R6, #0xC
	mul R4, R6
	ldr R6, off_81D6C24 // =word_200A6F0 
	add r6, r6, r4
	ldrb R1, [R6,#8]
	add r1, #0x40 
	mov R3, #0xFF
	and R1, R3
	lsl r1, r1, #1
	mov R3, #1
	ldrsb R3, [R2,R3]
	ldr R0, dword_81D6BE4 // = 
	ldrb R4, [R2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb R4, [R2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb R4, [R0,R4]
	sub r3, r3, r4
	ldrb R0, [R6,#9]
	mul R3, R0
	ldr R0, off_81D6C28 // =byte_80065E0 
	ldrsh R0, [R0,R1]
	mul R3, R0
	mov R7, #2
	ldrsb R7, [R2,R7]
	ldr R0, dword_81D6BE8 // = 
	ldrb R4, [R2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb R4, [R2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb R4, [R0,R4]
	sub r7, r7, r4
	ldrb R0, [R6,#0xA]
	mul R7, R0
	ldr R0, off_81D6C2C // =byte_8006660 
	ldrsh R0, [R0,R1]
	mul R7, R0
	add r3, r3, r7
	asr r3, r3, #0xc
	ldr R0, dword_81D6BEC // = 
	ldrb R1, [R2,#4]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	add r0, r0, r1
	ldrb R1, [R2,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	ldrsb R1, [R0,R1]
	add r3, r3, r1
	push {r3}
	ldrb R1, [R6,#8]
	add r1, #0x40 
	mov R3, #0xFF
	and R1, R3
	lsl r1, r1, #1
	mov R3, #1
	ldrsb R3, [R2,R3]
	ldr R0, dword_81D6BE4 // = 
	ldrb R4, [R2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb R4, [R2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb R4, [R0,R4]
	sub r3, r3, r4
	ldrb R0, [R6,#9]
	mul R3, R0
	ldr R0, off_81D6C2C // =byte_8006660 
	ldrsh R0, [R0,R1]
	neg R0, R0
	mul R3, R0
	mov R7, #2
	ldrsb R7, [R2,R7]
	ldr R0, dword_81D6BE8 // = 
	ldrb R4, [R2,#4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1a
	add r0, r0, r4
	ldrb R4, [R2,#3]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	ldrsb R4, [R0,R4]
	sub r7, r7, r4
	ldrb R0, [R6,#0xA]
	mul R7, R0
	ldr R0, off_81D6C28 // =byte_80065E0 
	ldrsh R0, [R0,R1]
	mul R7, R0
	add r3, r3, r7
	asr r3, r3, #0xc
	ldr R0, dword_81D6BF0 // = 
	ldrb R1, [R2,#4]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	add r0, r0, r1
	ldrb R1, [R2,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	ldrsb R1, [R0,R1]
	add r3, r3, r1
	push {r3}
	pop {r0,r1}
	mov R6, R8
	mov R7, R9
	mov PC, LR
dword_81D6BE4: .word 0x30066F4
dword_81D6BE8: .word 0x3006700
dword_81D6BEC: .word 0x300670C
dword_81D6BF0: .word 0x3006718
	.word 0xE0F0F8FC, 0xE0F0F0F8, 0xF0F8FCFC, 0xE0F0F8FC, 0xF0F8FCFC
	.word 0xE0F0F0F8, 0xC0E0F0F8, 0xC0E0E0F0, 0xE0F0F8F8, 0xC0E0F0F8
	.word 0xE0F0F8F8, 0xC0E0E0F0
off_81D6C24: .word word_200A6F0
off_81D6C28: .word byte_80065E0
off_81D6C2C: .word byte_8006660
.endfunc // sub_81D6A94

.func
.thumb_func
sub_81D6C30:
	push {lr}
	ldrb R0, [R5,#3]
	mov R1, #0x80
	and R0, R1
	bne loc_81D6C5A
	ldr R1, [R5,#0x18]
	ldr R2, [R1]
	add r3, r2, r1
	str R3, [R5,#0x1C]
	ldrb R0, [R5]
	lsl r0, r0, #2
	ldr R2, [R3,#8]
	add r1, r1, r2
	ldr R2, [R1,R0]
	add r1, r1, r2
	str R1, [R5,#0x20]
	ldrb R2, [R1,#1]
	strb R2, [R5,#1]
	ldrb R2, [R1,#2]
	strb R2, [R5,#2]
	b loc_81D6C78
loc_81D6C5A:
	ldrb R0, [R5]
	lsl r0, r0, #2
	ldr R1, [R5,#0x18]
	ldr R2, [R1,R0]
	add r3, r2, r1
	str R3, [R5,#0x1C]
	ldr R2, [R3,#8]
	add r1, r1, r2
	ldr R2, [R1]
	add r1, r1, r2
	str R1, [R5,#0x20]
	ldrb R2, [R3,#0x10]
	strb R2, [R5,#1]
	ldrb R2, [R3,#0x12]
	strb R2, [R5,#2]
loc_81D6C78:
	ldr R1, [R5,#0x20]
	ldrb R2, [R1]
	lsl r2, r2, #2
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#0xC]
	ldr R1, [R5,#0x18]
	add r1, r1, r0
	ldr R2, [R1,R2]
	add r2, r2, r1
	ldrb R1, [R2,#4]
	lsr r1, r1, #4
	strb R1, [R5,#5]
	pop {pc}
.endfunc // sub_81D6C30

	push {r4,lr}
loc_81D6C94:
	ldrb R0, [R5,#1]
	sub R0, #1
	strb R0, [R5,#1]
	cmp R0, #0
	bge loc_81D6CF8
	ldrb R0, [R5,#3]
	mov R1, #0x80
	and R0, R1
	bne loc_81D6CC0
	ldr R1, [R5,#0x20]
	ldrb R0, [R1,#2]
	ldrb R4, [R1,#1]
	mov R2, #0x80
	tst R0, R2
	bne loc_81D6CE6
	add R1, #3
	str R1, [R5,#0x20]
	ldrb R2, [R1,#1]
	strb R2, [R5,#1]
	ldrb R2, [R1,#2]
	strb R2, [R5,#2]
	b loc_81D6CE4
loc_81D6CC0:
	ldr R3, [R5,#0x1C]
	ldrb R0, [R3,#0x12]
	ldrb R4, [R3,#0x10]
	mov R2, #0x80
	tst R0, R2
	bne loc_81D6CE6
	add R3, #0x14
	str R3, [R5,#0x1C]
	ldr R1, [R5,#0x18]
	ldr R2, [R3,#8]
	add r1, r1, r2
	ldr R2, [R1]
	add r1, r1, r2
	str R1, [R5,#0x20]
	ldrb R2, [R3,#0x10]
	strb R2, [R5,#1]
	ldrb R2, [R3,#0x12]
	strb R2, [R5,#2]
loc_81D6CE4:
	b loc_81D6C94
loc_81D6CE6:
	mov r2, #0x40 
	tst R0, R2
	bne loc_81D6CF2
	mov R4, #1
	strb R4, [R5,#1]
	b loc_81D6C94
loc_81D6CF2:
	bl sub_81D6C30
	b loc_81D6C94
loc_81D6CF8:
	ldr R1, [R5,#0x20]
	ldrb R2, [R1]
	lsl r2, r2, #2
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#0xC]
	ldr R1, [R5,#0x18]
	add r1, r1, r0
	ldr R2, [R1,R2]
	add r2, r2, r1
	ldrb R1, [R2,#4]
	lsr r1, r1, #4
	strb R1, [R5,#5]
	pop {r4,pc}
	.balign 4, 0x00
	push {R4-R7,lr}
	mov R0, R12
	push {r0}
	ldr R0, off_81D6DC0 // =dword_3001D70 
	ldr R2, off_81D6DC4 // =unk_30025B0 
	ldr R3, off_81D6DC8 // =unk_3002170 
	ldr R6, off_81D6DCC // =dword_3002590 
	ldr R7, off_81D6DD0 // =byte_3001150 
	mov R12, R7
loc_81D6D26:
	ldr R1, [R6]
	ldr R4, [R6,#4]
	add r4, r4, r1
loc_81D6D2C:
	sub R4, #1
	cmp R1, R4
	bgt loc_81D6D54
	ldrb R5, [R4]
	cmp R5, #0xFF
	beq loc_81D6D2C
loc_81D6D38:
	cmp R0, R3
	bge loc_81D6D5A
	lsl r5, r5, #3
	mov R7, R12
	add r7, r7, r5
	ldr R5, [R7]
	str R5, [R0]
	ldrh R5, [R7,#4]
	strh R5, [R0,#4]
	add R0, #8
	ldrb R5, [R7,#7]
	cmp R5, #0xFF
	beq loc_81D6D2C
	b loc_81D6D38
loc_81D6D54:
	add R6, #8
	cmp R6, R2
	blt loc_81D6D26
loc_81D6D5A:
	sub r2, r3, r0
	lsr r2, r2, #3
	ldr R4, off_81D6DD4 // =dword_200B1A8 
	str R2, [R4]
	mov R2, #0xF0
	mov R4, #0xC
	lsl r4, r4, #8
loc_81D6D68:
	cmp R0, R3
	bge loc_81D6D74
	str R2, [R0]
	strh R4, [R0,#4]
	add R0, #8
	b loc_81D6D68
loc_81D6D74:
	ldr R0, off_81D6DD8 // =word_200A6F0 
	ldr R1, off_81D6DC0 // =dword_3001D70 
	mov r3, #0x20 
loc_81D6D7A:
	ldrh R4, [R0]
	strh R4, [R1,#6]
	ldrh R4, [R0,#2]
	strh R4, [R1,#0xE]
	ldrh R4, [R0,#4]
	strh R4, [R1,#0x16]
	ldrh R4, [R0,#6]
	strh R4, [R1,#0x1E]
	add R0, #0xC
	add r1, #0x20 
	sub R3, #1
	cmp R3, #0
	bgt loc_81D6D7A
	mov R2, #0
	mvn R2, R2
	ldr R5, off_81D6DDC // =off_802FD70 
	mov R4, #4
	ldr R7, off_81D6DE0 // =sub_800098C+1 
	mov R12, R7
loc_81D6DA0:
	ldr R0, [R5]
	ldr R1, [R5,#0x4] // (dword_802FD74 - 0x802FD70)
	mov R7, R12
	mov LR, PC
	bx r7
	add R5, #8
	sub R4, #1
	cmp R4, #0
	bgt loc_81D6DA0
	ldr R0, off_81D6DE4 // =byte_3001950 
	mov R1, #0
	str R1, [R0]
	pop {r0}
	mov R12, R0
	pop {R4-R7,pc}
	.byte 0, 0
off_81D6DC0: .word dword_3001D70
off_81D6DC4: .word unk_30025B0
off_81D6DC8: .word unk_3002170
off_81D6DCC: .word dword_3002590
off_81D6DD0: .word byte_3001150
off_81D6DD4: .word dword_200B1A8
off_81D6DD8: .word word_200A6F0
off_81D6DDC: .word off_802FD70
off_81D6DE0: .word sub_800098C+1
off_81D6DE4: .word byte_3001950
	push {R4-R7,lr}
	ldr R5, off_81D6E94 // =byte_3001950 
	ldr R6, [R5]
	cmp R6, #0x80
	bge locret_81D6E1E
	ldr R4, off_81D6E9C // =dword_3002590 
	lsl r7, r2, #3
	add r4, r4, r7
	ldr R7, [R4,#4]
	cmp R3, R7
	bge locret_81D6E1E
	cmp R3, #0
	blt locret_81D6E1E
	ldr R4, [R4]
	add r4, r4, r3
	add r7, r6, #1
	str R7, [R5]
	ldrb R7, [R4]
	strb R6, [R4]
	lsl r6, r6, #3
	ldr R5, off_81D6E98 // =byte_3001150 
	add r5, r5, r6
	str R0, [R5]
	strh R1, [R5,#4]
	strb R7, [R5,#7]
	mov R0, #0xFF
	strb R0, [R5,#6]
locret_81D6E1E:
	pop {R4-R7,pc}
.func
.thumb_func
sub_81D6E20:
	push {R4-R7,lr}
	mov R4, R8
	mov R5, R9
	mov R6, R12
	push {R4-R6}
	sub sp, sp, #8
	ldr R5, off_81D6E94 // =byte_3001950 
	ldr R6, [R5]
	mov R8, R5
	add r1, r1, r6
	cmp R1, #0x80
	bge loc_81D6E88
	sub r1, r1, r6
	ldr R3, off_81D6E98 // =byte_3001150 
	mov R12, R3
loc_81D6E3E:
	str R0, [SP]
	str R1, [SP,#4]
	mov R3, #8
	ldrsh R3, [R0,R3]
	ldrb R2, [R0,#6]
	ldrh R1, [R0,#4]
	ldr R0, [R0]
	ldr R4, off_81D6E9C // =dword_3002590 
	lsl r7, r2, #3
	add r4, r4, r7
	ldr R7, [R4,#4]
	cmp R3, R7
	bge loc_81D6E88
	cmp R3, #0
	blt loc_81D6E88
	ldr R4, [R4]
	add r4, r4, r3
	add r7, r6, #1
	str R7, [R5]
	mov R9, R7
	ldrb R7, [R4]
	strb R6, [R4]
	lsl r6, r6, #3
	mov R5, R12
	add r5, r5, r6
	str R0, [R5]
	strh R1, [R5,#4]
	strb R7, [R5,#7]
	mov R0, #0xFF
	strb R0, [R5,#6]
	ldr R0, [SP]
	ldr R1, [SP,#4]
	mov R5, R8
	mov R6, R9
	add R0, #0xC
	sub R1, #1
	bgt loc_81D6E3E
loc_81D6E88:
	add sp, sp, #8
	pop {R4-R6}
	mov R8, R4
	mov R9, R5
	mov R12, R6
	pop {R4-R7,pc}
off_81D6E94: .word byte_3001950
off_81D6E98: .word byte_3001150
off_81D6E9C: .word dword_3002590
	.word 0x40404, 0x4040004, 0x4644B5F0, 0x4656464D, 0xB4F04667
	.word 0x4682B089, 0x46914688, 0x45452501, 0x68DC3E, 0x1C451940
	.word 0xDDFA4545, 0x1C02E038, 0xDA354542, 0x46680151, 0xC9584451
	.word 0xC998C058, 0xC9C0C098, 0x1B53C0C0, 0x46943201, 0xDB1A2B00
	.word 0x844648, 0x18604669, 0x90086800, 0x46560158, 0x18A01982
	.word 0x9F086800, 0xDD0C42B8, 0x1491959, 0x1C104451, 0xC1C4C8C4
	.word 0xC1C4C8C4, 0xC144C844, 0x2B001B5B, 0x1959DAEA, 0x44510149
	.word 0xC88C4668, 0xC8D0C18C, 0xC80CC1D0, 0x4662C10C, 0xDBC94542
	.word 0x21031C28, 0x46FE4D33, 0x1C054728, 0xDCBE2800, 0xBCF0B009
	.word 0x46A946A0, 0x46BC46B2, 0xB5F0BDF0, 0x464D4644, 0x46674656
	.word 0xB089B4F0, 0x46884682, 0x25014691, 0xDC3E4545, 0x19400068
	.word 0x45451C45, 0xE038DDFA, 0x45421C02, 0x151DA35, 0x44514668
	.word 0xC058C958, 0xC098C998, 0xC0C0C9C0, 0x32011B53, 0x2B004694
	.word 0x4648DB1A, 0x46690084, 0x68001860, 0x1589008, 0x19824656
	.word 0x680018A0, 0x42B89F08, 0x1959DA0C, 0x44510149, 0xC8C41C10
	.word 0xC8C4C1C4, 0xC844C1C4, 0x1B5BC144, 0xDAEA2B00, 0x1491959
	.word 0x46684451, 0xC18CC88C, 0xC1D0C8D0, 0xC10CC80C, 0x45424662
	.word 0x1C28DBC9, 0x4D062103, 0x472846FE, 0x28001C05, 0xB009DCBE
	.word 0x46A0BCF0, 0x46B246A9, 0xBDF046BC
	.word sub_814DA9C+1
	.word 0x3006C39, 0x3006C3D, 0x3006F43, 0x3006F75, 0x3006C73
	.word 0x3006C8F, 0x0
	.word 0x3006CA9, 0x0
	.word 0x3006F21, 0x3006F25, 0x0
	.word 0x3006F49, 0x3006CD1, 0x0, 0x0
	.word 0x3006F5D, 0x3006F71, 0x0, 0x0, 0x0
	.word 0x3006DA5, 0x0, 0x0, 0x0, 0x0
	.word 0x3006E7D, 0x0
	.word 0x44444444, 0x88888888, 0xCCCCCCCC, 0x46B8B500, 0x6BBF4657
	.word 0x436C703C, 0x4644707C, 0x592D4D1B, 0x240063BD, 0x633C637C
	.word 0x25002400, 0xB40C46A9, 0x2B002301, 0x7801D01B, 0xDB0629E5
	.word 0x8939E5, 0x58794F0F, 0x470846FE, 0x29E4E7F3, 0xF000D006
	.word 0x3001F81F, 0x3701464F, 0xE7EA46B9, 0x31E47841, 0xF816F000
	.word 0x464F3002, 0x46B93701, 0xBC03E7E1, 0xD0034209, 0x4B031A12
	.word 0x471846FE, 0xBD004648
	.word 0x3006B18
	.word loc_8000AC8+1
	.word clearBackwards_80008B4+1
	.word 0x3006B84
.endfunc // sub_81D6E20

.func
.thumb_func
sub_81D7118:
	push {r0,r6,lr}
	lsl r7, r1, #6
	add r6, r6, r7
	mov R0, R10
	ldr R0, [R0,#0x38]
	ldr R0, [R0,#0x38]
	mov r1, #0x3c 
loc_81D7126:
	ldr R7, [R6,R1]
	add r7, r7, r0
	str R7, [R2,R1]
	sub R1, #4
	bge loc_81D7126
	add r2, #0x40 
	add R4, #1
	add R5, #1
	pop {r0,r6,pc}
.endfunc // sub_81D7118

	add R0, #1
	mov PC, LR
	push {lr}
	mov R4, R10
	ldr R4, [R4,#0x38]
	ldr R1, [R4,#0x30]
	tst R1, R1
	beq loc_81D715E
	sub R1, #1
	str R1, [R4,#0x30]
	push {r0,r1}
	add r1, r4, #0
	add r1, #0x34 
	ldr R0, [R1]
	sub R0, #1
	str R0, [R1]
	pop {r0,r1}
	ldr R0, [R4,#0x2C]
	pop {pc}
loc_81D715E:
	ldrb R1, [R4,#1]
	mov R8, R1
loc_81D7162:
	cmp R5, R8
	bge loc_81D716E
	mov R1, #0
	bl sub_81D7118
	b loc_81D7162
loc_81D716E:
	mov R3, #0
	pop {pc}
	push {lr}
	mov R1, R10
	ldr R1, [R1,#0x38]
	ldrb R1, [R1]
	mov R8, R1
loc_81D717C:
	cmp R4, R8
	bge loc_81D7188
	mov R1, #0
	bl sub_81D7118
	b loc_81D717C
loc_81D7188:
	mov R4, #0
	add R0, #1
	pop {pc}
	push {lr}
	ldrb R1, [R0,#1]
	ldr R2, dword_81D719C // =0x5040404 
	ldrb R1, [R2,R1]
	mov R4, #1
	add r0, r0, r1
	pop {pc}
dword_81D719C: .word 0x5040404
	.word 0x4030005
	.word 0x40404
.func
.thumb_func
sub_81D71A8:
	push {lr}
	ldrb R1, [R0,#1]
	cmp R1, #1
	beq loc_81D71B6
	add R0, #3
	mov R4, #1
	pop {pc}
loc_81D71B6:
	ldrb R1, [R0,#2]
	mov R2, R10
	ldr R2, [R2,#0x38]
	ldr R3, [R2,#0x3C]
	add r3, r3, r1
	str R3, [R2,#0x3C]
	lsl r1, r1, #2
	ldr R3, [R2,#0x1C]
	add r1, r1, r3
	str R1, [R2,#0x1C]
	add R0, #3
	mov R4, #1
	pop {pc}
.endfunc // sub_81D71A8

	push {r3,lr}
	push {r0,r2,R4-R6}
	ldrb R1, [R0,#1]
	mov R2, #0x80
	tst R1, R2
	beq loc_81D71E8
	bic R1, R2
	lsl r1, r1, #2
	ldr R2, off_81D72A0 // =off_8043C8C 
	ldr R2, [R2,R1]
	ldrh R0, [R2]
	b loc_81D71F2
loc_81D71E8:
	lsl r1, r1, #2
	add R1, #8
	mov R7, R10
	ldr R7, [R7,#0x38]
	ldr R0, [R7,R1]
loc_81D71F2:
	ldr R6, off_81D7298 // =sub_8000C00+1 
	mov LR, PC
	bx r6
	mov R8, R0
	ldr R6, off_81D729C // =sub_8000C5C+1 
	mov LR, PC
	bx r6
	add r7, r0, #0
	sub R0, #1
	lsl r1, r0, #2
	pop {r0,r2,R4-R6}
	ldrb R3, [R0,#2]
	cmp R3, #0x80
	bge loc_81D724C
	sub r3, r3, r7
	mov R7, #0
	cmp r3, #0x40 
	blt loc_81D721A
	sub r3, #0x40 
	mov R7, #1
loc_81D721A:
	push {r0}
	push {r7}
	mov R0, #0xF
loc_81D7220:
	mov R7, R8
	lsr R7, R1
	and R7, R0
	push {r1}
	mov R1, #1
	add r1, r1, r7
	bl sub_81D7118
	pop {r1}
	mov R7, R9
	add R7, #1
	mov R9, R7
	sub R1, #4
	bge loc_81D7220
	pop {r0}
loc_81D723E:
	cmp R3, #0
	ble loc_81D7292
	sub R3, #1
	add r1, r0, #0
	bl sub_81D7118
	b loc_81D723E
loc_81D724C:
	sub R3, #0x80
	sub r3, r3, r7
	push {r0,r1}
	mov R0, #0
	cmp r3, #0x40 
	blt loc_81D725C
	sub r3, #0x40 
	mov R0, #1
loc_81D725C:
	cmp R3, #0
	ble loc_81D7270
	sub R3, #1
	add r1, r0, #0
	bl sub_81D7118
	mov R7, R9
	add R7, #1
	mov R9, R7
	b loc_81D725C
loc_81D7270:
	pop {r0,r1}
	push {r0}
	mov R0, #0xF
loc_81D7276:
	mov R7, R8
	lsr R7, R1
	and R7, R0
	push {r1}
	mov R1, #1
	add r1, r1, r7
	bl sub_81D7118
	pop {r1}
	mov R7, R9
	add R7, #1
	mov R9, R7
	sub R1, #4
	bge loc_81D7276
loc_81D7292:
	pop {r0}
	add R0, #3
	pop {r3,pc}
off_81D7298: .word sub_8000C00+1
off_81D729C: .word sub_8000C5C+1
off_81D72A0: .word off_8043C8C
	push {r3,r7,lr}
	ldr R1, dword_81D72B4 // = 
	ldrb R3, [R0,#1]
	lsl r3, r3, #2
	ldr R1, [R1,R3]
	mov LR, PC
	bx r1
	pop {r3,r7,pc}
dword_81D72B4: .word 0x3006DB8
	.word 0x0
	.word 0x3006DC9, 0x3006E1D, 0x3006E1D, 0x4B54B5FE, 0x36016B1E
	.word 0x4E0F631E, 0xD27882, 0x687418B6, 0x1C1F6836, 0x683A3734
	.word 0x490C0192, 0xB4031889, 0x1C221C30, 0x4B08B408, 0x471846FE
	.word 0xBC41BC08, 0x37341C1F, 0x31016839, 0x629E6039, 0x62D83003
	.word 0xBDFE1C30
	.word 0x8043B54
	.word copyBytes+1
	.word 0x200DD20
	push {r3,r7,lr}
	push {r0}
	ldrb R3, [R0,#2]
	ldrb R0, [R0,#3]
	sub R0, #1
	lsl r0, r0, #2
	mov R7, R10
	ldr R7, [R7,#0x38]
	add R7, #8
	add r7, r7, r0
	ldr R1, [R7]
	mov R0, #0xF
	mov R7, #0
	and R0, R3
	tst R0, R0
	bne loc_81D7340
	mov R0, #8
	mov R7, #0x10
loc_81D7340:
	push {r0}
	ldr R3, off_81D7378 // =chatbox_8040D5C+1 
	mov LR, PC
	bx r3
	add r3, r1, #0
	add r1, r0, #0
	push {r7}
	mov R0, #0x10
	tst R7, R0
	beq loc_81D7358
	tst R1, R1
	beq loc_81D735C
loc_81D7358:
	bl sub_81D7118
loc_81D735C:
	add r1, r3, #0
	pop {r7}
	pop {r0}
	push {r7}
	mov R7, R9
	add R7, #1
	mov R9, R7
	pop {r7}
	sub R0, #1
	bne loc_81D7340
	pop {r0}
	add R0, #4
	pop {r3,r7,pc}
	.balign 4, 0x00
off_81D7378: .word chatbox_8040D5C+1
	push {r3,r7,lr}
	ldr R1, dword_81D738C // = 
	ldrb R3, [R0,#1]
	lsl r3, r3, #2
	ldr R1, [R1,R3]
	mov LR, PC
	bx r1
	pop {r3,r7,pc}
dword_81D738C: .word 0x3006E90
	.word 0x3006E99, 0x3006E99, 0x4B20B5FE, 0x36016B1E, 0x4E11631E
	.word 0x78417882, 0xD0004209, 0x21003202, 0x58B60092, 0x37341C1F
	.word 0x192883A, 0x18894915, 0x1C30B403, 0xB4082240, 0x46FE4B13
	.word 0xBC084718, 0x1C1FBC41, 0x78393734, 0x70393101, 0x3003629E
	.word 0x1C3062D8, 0xBDFE
	.word 0x3006EEC
	.word 0x2001186, 0x200119E, 0x20007D6, 0x200083A, 0x20018F4
	.word 0x2001950, 0x20019AC, 0x2001A08, 0x2001A64, 0x2001AC0
	.word 0x200AFA0
	.word copyBytes+1
	.word 0x200A220
	add R0, #4
	mov PC, LR
	push {R1-R5,r7,lr}
	mov R1, #1
	mov R1, #2
	ldrb R1, [R0,R1]
	cmp R1, #0xFF
	beq loc_81D743E
	mov R7, R10
	ldr R7, [R7,#0x38]
	ldr R2, [R7,#0x40]
	lsl r1, r1, #1
	ldrh R1, [R2,R1]
	add r0, r2, r1
	pop {R1-R5,r7,pc}
loc_81D743E:
	add R0, #3
	pop {R1-R5,r7,pc}
	add R0, #2
	mov PC, LR
	.balign 4, 0x00
	ldrb R7, [R0,#1]
	ldr R1, dword_81D7454 // = 
	ldrb R1, [R7,R1]
	add r0, r0, r1
	mov PC, LR
	.balign 4, 0x00
dword_81D7454: .word 0x3006F58
	.word 0x3, 0x49027847, 0x18405C79, 0x46F7, 0x3006F6C, 0x3030203
	.word 0x46F73003, 0x49027847, 0x18405C79, 0x46F7, 0x3006F84, 0x2020202
	.word 0x4040404, 0x4647B5F2, 0x4653464A, 0xB49C4664, 0x9744B23, 0x191A00A4
	.word 0x1B3300E4, 0x27604C1F, 0x193F434F, 0x5C644C1F, 0xB440B410, 0x19366F2E
	.word 0xBC40672E, 0x193600A4, 0x3C4067EE, 0x4E1B4264, 0xB65BAE, 0x59804818
	.word 0xBC404684, 0xB408260B, 0x68384663, 0x18C06879, 0x40A118C9, 0xBC0840E1
	.word 0xB404B450, 0x1AE42420, 0x1C066812, 0x4316409E, 0x409A1C0A, 0x431040E0
	.word 0xBC0440E1, 0x60506016, 0x37086091, 0x18122060, 0x3E01BC50, 0xBC9CDADF
	.word 0x469146B8, 0x46A4469A, 0xBDF2, 0x86ACD60, 0x200BEA0, 0x8043CA4
	.word 0x3006B84, 0x1D0, 0x4647B5F2, 0x4653464A, 0xB49C4664, 0x9744B19
	.word 0x191A00A4, 0x1B3300E4, 0x27604C15, 0x193F434F, 0x5C644C15, 0x3C4000A4
	.word 0x260B4264, 0x68796838, 0x40E140A1, 0xB404B450, 0x1AE42420, 0x1C066812
	.word 0x4316409E, 0x409A1C0A, 0x431040E0, 0xBC0440E1, 0x60506016, 0x37086091
	.word 0x18122060, 0x3E01BC50, 0xBC9CDAE4, 0x469146B8, 0x46A4469A, 0xBDF2
	.word 0x86ACD60, 0x200BEA0, 0x8043CA4, 0x4641B5F0, 0x4649B402, 0x4F4CB402
	.word 0x931C02, 0x58ED4D50, 0xD0062A00, 0xD0032A01, 0x1C9210D, 0xE000187F
	.word 0x682E3780, 0xD06E4236, 0x240046B0, 0x60386830, 0x60786E30, 0x683036C0
	.word 0x6E3060B8, 0x36C060F8, 0x61386830, 0x61786E30, 0x683036C0, 0x6E3061B8
	.word 0x464661F8, 0x21043604, 0x5C681909, 0x46B0183F, 0x68303401, 0x6E306038
	.word 0x36C06078, 0x60B86830, 0x60F86E30, 0x683036C0, 0x6E306138, 0x36C06178
	.word 0x61B86830, 0x61F86E30, 0x36044646, 0x19092104, 0x183F5C68, 0x340146B0
	.word 0x60386830, 0x60786E30, 0x683036C0, 0x6E3060B8, 0x36C060F8, 0x61386830
	.word 0x61786E30, 0x683036C0, 0x6E3061B8, 0x464661F8, 0x21043604, 0x5C681909
	.word 0x46B0183F, 0x68303401, 0x6E306038, 0x36C06078, 0x60B86830, 0x60F86E30
	.word 0x683036C0, 0x6E306138, 0x36C06178, 0x61B86830, 0x61F86E30, 0x36044646
	.word 0x19092104, 0x183F5C68, 0x350846B0, 0xBC02E78D, 0xBC024688, 0x480A4689
	.word 0x4A0B490A, 0x46FE4B0B, 0x46554718, 0x480A6AED, 0x46FE4B0A, 0x42004718
	.word 0x2002D002, 0x5468213D, 0xBDF0, 0x200BEA0, 0x200CDA0, 0x6015700
	.word 0xF00, 0x8000AC9, 0x400, 0x8040939, 0x300720C, 0x8044314
	.word 0x8044378, 0x804440C
loc_81D7718:
	push {r4,r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr R2, [R6,#0x3C]
	ldr R3, [R6,#0x30]
	push {r2,r3}
	ldr R0, off_81D7A04 // =battle_isTimeStop+1 
	mov LR, PC
	bx r0
	pop {r2,r3}
	beq loc_81D773E
	ldr R4, dword_81D7A08 // =0x1000000 
	tst R2, R4
	bne loc_81D773E
	ldr R1, [R7,#0x30]
	ldr R4, dword_81D7A0C // =0x10000 
	tst R1, R4
	bne loc_81D773E
	pop {r4,r6,r7,pc}
loc_81D773E:
	ldr R0, [R7,#0x3C]
	ldr R4, dword_81D7A10 // =0x202 
	tst R0, R4
	beq loc_81D774E
	mov R1, #4
	tst R3, R1
	bne loc_81D774E
	pop {r4,r6,r7,pc}
loc_81D774E:
	mov R4, #4
	tst R0, R4
	beq loc_81D775C
	ldr R4, dword_81D7A10+4 // =0x1008 
	tst R3, R4
	bne loc_81D775C
	pop {r4,r6,r7,pc}
loc_81D775C:
	ldr R4, dword_81D7A10+8 // =0x800000 
	tst R0, R4
	beq loc_81D776A
	ldr R4, dword_81D7A10+12 // =0xC003000 
	tst R3, R4
	bne loc_81D776A
	pop {r4,r6,r7,pc}
loc_81D776A:
	ldr R4, dword_81D7A10+16 // =start_ 
	tst R0, R4
	beq loc_81D7772
	pop {r4,r6,r7,pc}
loc_81D7772:
	mov r4, #0x20 
	tst R0, R4
	beq loc_81D7780
	mov R4, #0x80
	tst R3, R4
	bne loc_81D7780
	pop {r4,r6,r7,pc}
loc_81D7780:
	ldr R4, dword_81D7A10 // =0x202 
	tst R2, R4
	beq loc_81D7790
	ldr R3, [R7,#0x30]
	mov R1, #4
	tst R3, R1
	bne loc_81D7790
	pop {r4,r6,r7,pc}
loc_81D7790:
	mov R4, #4
	tst R2, R4
	beq loc_81D77A0
	ldr R3, [R7,#0x30]
	ldr R4, dword_81D7A10+4 // =0x1008 
	tst R3, R4
	bne loc_81D77A0
	pop {r4,r6,r7,pc}
loc_81D77A0:
	ldr R4, dword_81D7A10+8 // =0x800000 
	tst R2, R4
	beq loc_81D77B0
	ldr R3, [R7,#0x30]
	ldr R4, dword_81D7A10+20 // =0x3000 
	tst R3, R4
	bne loc_81D77B0
	pop {r4,r6,r7,pc}
loc_81D77B0:
	ldr R4, dword_81D7A10+16 // =start_ 
	tst R2, R4
	beq loc_81D77B8
	pop {r4,r6,r7,pc}
loc_81D77B8:
	mov r4, #0x20 
	tst R2, R4
	beq loc_81D77C8
	ldr R3, [R7,#0x30]
	mov R4, #0x80
	tst R3, R4
	bne loc_81D77C8
	pop {r4,r6,r7,pc}
loc_81D77C8:
	mov R4, #1
	tst R2, R4
	beq loc_81D780C
	ldr R1, [R7,#0x30]
	ldr R4, dword_81D7A10+24 // =0x4000 
	tst R1, R4
	bne loc_81D77DA
	mov R4, #2
	b loc_81D77DC
loc_81D77DA:
	ldr R4, dword_81D7A10+28 // =0x1002 
loc_81D77DC:
	tst R1, R4
	bne loc_81D780C
	mov R0, #1
	ldr R1, [R7,#0x70]
	orr R1, R0
	str R1, [R7,#0x70]
	ldr R3, [R7,#0x30]
	mov R2, #0x10
	bic R3, R2
	ldr R1, dword_81D7A10+32 // =0xC005000 
	tst R3, R1
	bne loc_81D7804
	ldrb R2, [R7,#5]
	mov R0, #1
	lsl R0, R2
	ldrb R2, [R6,#3]
	orr R2, R0
	strb R2, [R6,#3]
	ldr R2, dword_81D7A10+36 // =0x20000 
	orr R3, R2
loc_81D7804:
	ldr R2, [R6,#0x70]
	orr R2, R3
	str R2, [R6,#0x70]
	pop {r4,r6,r7,pc}
loc_81D780C:
	ldr R3, [R6,#0x30]
	ldr R4, dword_81D7A10+40 // =0x100000 
	tst R3, R4
	beq loc_81D781E
	ldr R3, [R7,#0x30]
	ldr R4, dword_81D7A10+44 // =0x8000 
	tst R3, R4
	beq loc_81D781E
	pop {r4,r6,r7,pc}
loc_81D781E:
	ldr R3, [R6,#0x30]
	ldr R4, dword_81D7A10+44 // =0x8000 
	tst R3, R4
	beq loc_81D7830
	ldr R3, [R7,#0x30]
	ldr R4, dword_81D7A10+40 // =0x100000 
	tst R3, R4
	beq loc_81D7830
	pop {r4,r6,r7,pc}
loc_81D7830:
	mov R4, #8
	tst R2, R4
	bne locret_81D7930
	ldr R3, [R7,#0x44]
	ldr R2, [R6,#0x7C]
	orr R2, R3
	str R2, [R6,#0x7C]
	ldr R3, [R7,#0x30]
	ldr R2, [R6,#0x70]
	orr R2, R3
	str R2, [R6,#0x70]
	add r4, r3, #0
	ldrb R2, [R7,#0x19]
	mov r1, #0x76 
	ldrb R0, [R6,R1]
	orr R0, R2
	strb R0, [R6,R1]
	ldrb R2, [R7,#0x10]
	cmp R2, #0
	beq loc_81D785A
	strb R2, [R6,#0x11]
loc_81D785A:
	bl sub_81D7960
	ldrb R2, [R7,#7]
	ldrb R0, [R6,#0xD]
	tst R0, R0
	beq loc_81D787A
	mov R0, #0x7F
	tst R2, R0
	beq loc_81D787A
	mov R0, #0x80
	tst R2, R0
	bne loc_81D787A
	mov r3, #0x40 
	ldr R1, [R6,#0x70]
	orr R1, R3
	str R1, [R6,#0x70]
loc_81D787A:
	mov R1, #0x80
	tst R1, R2
	bne loc_81D789E
	mov R3, #0x7F
	and R2, R3
	beq loc_81D789E
	ldrb R0, [R6,#0xD]
	tst R0, R0
	beq loc_81D7896
	mov R2, #1
	lsl r2, r2, #0xf
	mov R0, #0x90
	strh R2, [R6,R0]
	b loc_81D789E
loc_81D7896:
	mov R0, #0x90
	ldrh R3, [R6,R0]
	add r3, r3, r2
	strh R3, [R6,R0]
loc_81D789E:
	mov R0, #0x8E
	mov R3, #0x7F
	and R2, R3
	ldrh R3, [R6,R0]
	add r3, r3, r2
	strh R3, [R6,R0]
	lsr r4, r4, #9
	bcc loc_81D78B6
	mov R1, #0x92
	ldrh R3, [R6,R1]
	add R3, #1
	strh R3, [R6,R1]
loc_81D78B6:
	ldrb R2, [R7,#0xE]
	ldrb R3, [R6,#0xF]
	orr R3, R2
	strb R3, [R6,#0xF]
	mov R0, #0x12
	ldrh R1, [R7,R0]
	mov R2, #0xFF
	and R2, R1
	beq loc_81D78CC
	mov R2, #0xA4
	strh R1, [R6,R2]
loc_81D78CC:
	mov R4, #1
	ldrb R0, [R6,#2]
	ldrb R1, [R7,#2]
	bl sub_81D7932
	add r4, r4, r0
	ldrb R0, [R6,#0x18]
	ldrb R1, [R7,#0x19]
	bl sub_81D79E2
	add r4, r4, r0
	mov r0, #0x75 
	sub r1, r4, #1
	strb R1, [R6,R0]
	bl sub_81D79BA
	add r4, r4, r0
	bl sub_81D79A2
	add r4, r4, r0
	mov r0, #0x74 
	sub r1, r4, #1
	strb R1, [R6,R0]
	ldrh R0, [R7,#0x2E]
	ldrb R1, [R7,#2]
	cmp R1, #3
	bne loc_81D790A
	mov r2, #0x78 
	ldrh R3, [R6,R2]
	add r3, r3, r0
	strh R3, [R6,R2]
loc_81D790A:
	mul R0, R4
	add r1, r1, r1
	add R1, #0x82
	ldrh R2, [R6,R1]
	add r2, r2, r0
	strh R2, [R6,R1]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_81D7B6C
	mov R2, #0x82
	ldrh R1, [R6,R2]
	add r1, r1, r0
	strh R1, [R6,R2]
	ldr R1, [R7,#0x64]
	mov R3, #0xA0
	ldr R2, [R6,R3]
	add r2, r2, r1
	str R2, [R6,R3]
locret_81D7930:
	pop {r4,r6,r7,pc}
.func
.thumb_func
sub_81D7932:
	mov R2, #5
	mul R0, R2
	add r0, r0, r1
	ldr R1, dword_81D7940 // = 
	ldrb R0, [R1,R0]
	mov PC, LR
	.byte 0, 0
dword_81D7940: .word 0x3007444
	.byte 0, 0, 0, 0
	.word 0x1000000, 0x0
	.word 0x100
	.word 0x1000000, 0x100, 0x0
.endfunc // sub_81D7932

.func
.thumb_func
sub_81D7960:
	push {lr}
	ldrb R0, [R6,#2]
	cmp R0, #2
	bne locret_81D79A0
	ldr R0, [R7,#0x30]
	ldr R1, dword_81D7A40 // =0xC000000 
	tst R0, R1
	beq locret_81D79A0
	ldr R0, [R6,#0x30]
	tst R0, R1
	bne locret_81D79A0
	ldrh R0, [R7,#0x28]
	cmp R0, #0
	bne locret_81D79A0
	ldr R0, [R6,#0x70]
	mov R1, #1
	tst R0, R1
	bne locret_81D79A0
	ldrb R0, [R7,#0xA]
	ldrb R1, [R7,#0xB]
	bl sub_81D7E58
	ldrb R0, [R0,#2]
	cmp R0, #7
	bne locret_81D79A0
	ldrb R0, [R7,#0xA]
	ldrb R1, [R7,#0xB]
	mov R2, #2
	bl sub_81D7EA4
	mov r0, #0x50 
	strb R0, [R7,#0x11]
locret_81D79A0:
	pop {pc}
.endfunc // sub_81D7960

.func
.thumb_func
sub_81D79A2:
	push {r4,lr}
	mov R4, #0
	ldr R0, [R6,#0x3C]
	ldr R1, dword_81D7A44 // =0x80000000 
	tst R0, R1
	beq loc_81D79B6
	ldrb R0, [R7,#2]
	cmp R0, #3
	bne loc_81D79B6
	mov R4, #1
loc_81D79B6:
	add r0, r4, #0
	pop {r4,pc}
.endfunc // sub_81D79A2

.func
.thumb_func
sub_81D79BA:
	push {r4,r5,lr}
	mov R4, #0
	ldr R0, [R6,#0x3C]
	ldr R1, dword_81D7A0C // =0x10000 
	tst R0, R1
	beq loc_81D79DE
	ldr R0, [R6,#0x70]
	mov R1, #2
	tst R0, R1
	bne loc_81D79D4
	ldrb R0, [R7,#0x19]
	cmp R0, #0x10
	bne loc_81D79DE
loc_81D79D4:
	mov R4, #1
	ldr R5, [R6,#0x38]
	ldr R0, off_81D7A48 // =sub_801A29A+1 
	mov LR, PC
	bx r0
loc_81D79DE:
	add r0, r4, #0
	pop {r4,r5,pc}
.endfunc // sub_81D79BA

.func
.thumb_func
sub_81D79E2:
	mov R2, #0
	tst R0, R1
	bne loc_81D79F8
	cmp R0, #0x80
	bne loc_81D79FE
	ldr R0, [R7,#0x30]
	ldr R1, dword_81D7A4C // =0x2000 
	tst R0, R1
	beq loc_81D79FE
	mov R2, #1
	b loc_81D79FE
loc_81D79F8:
	cmp R0, #0
	beq loc_81D79FE
	mov R2, #1
loc_81D79FE:
	add r0, r2, #0
	mov PC, LR
	.balign 4, 0x00
off_81D7A04: .word battle_isTimeStop+1
dword_81D7A08: .word 0x1000000
dword_81D7A0C: .word 0x10000
dword_81D7A10: .word 0x202, 0x1008, 0x800000, 0xC003000, 0x8000000, 0x3000
	.word 0x4000, 0x1002, 0xC005000, 0x20000, 0x100000, 0x8000
dword_81D7A40: .word 0xC000000
dword_81D7A44: .word 0x80000000
off_81D7A48: .word sub_801A29A+1
dword_81D7A4C: .word 0x2000
.endfunc // sub_81D79E2

	push {R4-R7,lr}
	sub sp, sp, #8
	ldr R5, [R5,#0x54]
	ldrb R1, [R5,#1]
	mov R2, #0x80
	tst R1, R2
	bne loc_81D7ABC
	lsl r1, r1, #2
	ldr R2, off_81D7AF8 // =off_8019B78 
	ldr R4, [R2,R1]
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	ldr R2, off_81D7D9C // =object_getFlipDirection+1 
	mov LR, PC
	bx r2
	.hword 0x1C06
	.word 0x56202000, 0xD03D287F, 0x7AAA4370, 0x21011880, 0x7AEA5661
	.word 0x1C2A1889, 0x91019000, 0x46FE4BC4, 0xD0114718, 0x99019800
	.word 0xF972F000, 0x99019800, 0xF99EF000, 0x99019800, 0xF0001C2A
	.word 0x9800F827, 0x1C2A9901, 0xF8A8F000, 0xE7D93402
loc_81D7ABC:
	mov R7, #1
loc_81D7ABE:
	mov R6, #1
loc_81D7AC0:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_81D7D80
	beq loc_81D7AE8
	add r0, r6, #0
	add r1, r7, #0
	bl sub_81D7DE0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl loc_81D7AFC
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl loc_81D7C08
loc_81D7AE8:
	add R6, #1
	cmp R6, #6
	ble loc_81D7AC0
	add R7, #1
	cmp R7, #3
	ble loc_81D7ABE
	add sp, sp, #8
	pop {R4-R7,pc}
off_81D7AF8: .word off_8019B78
loc_81D7AFC:
	push {R4-R7,lr}
	push {R0-R2}
	ldr R0, off_81D7DA4 // =battle_isPaused+1 
	mov LR, PC
	bx r0
	pop {R0-R2}
	bne locret_81D7B4A
	ldr R3, off_81D7B4C // =unk_2034F60 
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r5, r2, #0
	mov R6, R10
	ldr R6, [R6,#0x30]
	ldr R7, [R3,R0]
loc_81D7B1A:
	lsl r7, r7, #1
	bcs loc_81D7B22
	beq locret_81D7B4A
	b loc_81D7B46
loc_81D7B22:
	ldr R0, [R5,#0x68]
	ldr R1, [R6,#0x44]
	tst R0, R1
	bne loc_81D7B46
	orr R0, R1
	str R0, [R5,#0x68]
	ldr R0, [R6,#0x68]
	ldr R1, [R5,#0x44]
	orr R0, R1
	str R0, [R6,#0x68]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_81D7B50
	add r0, r6, #0
	add r1, r5, #0
	bl sub_81D7B50
loc_81D7B46:
	add R6, #0xA8
	b loc_81D7B1A
locret_81D7B4A:
	pop {R4-R7,pc}
off_81D7B4C: .word unk_2034F60
.func
.thumb_func
sub_81D7B50:
	push {r6,r7,lr}
	ldr R2, [R0,#0x34]
	ldr R3, [R1,#0x30]
	tst R2, R3
	beq locret_81D7B6A
	add r6, r0, #0
	add r7, r1, #0
	bl loc_81D7718
	add r0, r6, #0
	add r1, r7, #0
	bl loc_81D7B92
locret_81D7B6A:
	pop {r6,r7,pc}
.endfunc // sub_81D7B50

.func
.thumb_func
sub_81D7B6C:
	push {r4,lr}
	add r4, r1, #0
	ldrb R1, [R0,#0xB]
	ldrb R0, [R0,#0xA]
	bl sub_81D7E58
	ldrb R0, [R0,#2]
	ldrb R1, [R4,#2]
	cmp R1, #1
	bne loc_81D7B88
	cmp R0, #6
	bne loc_81D7B8E
	ldrh R0, [R4,#0x2E]
	pop {r4,pc}
loc_81D7B88:
	b loc_81D7B8E
	ldrh R0, [R4,#0x2E]
	pop {r4,pc}
loc_81D7B8E:
	mov R0, #0
	pop {r4,pc}
.endfunc // sub_81D7B6C

loc_81D7B92:
	push {r4,r6,r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr R0, off_81D7DA8 // =battle_isTimeStop+1 
	mov LR, PC
	bx r0
	ldr R2, [R6,#0x3C]
	beq loc_81D7BB2
	ldr R4, dword_81D7DAC // =0x1000000 
	tst R2, R4
	bne loc_81D7BB2
	ldr R1, [R7,#0x30]
	ldr R4, dword_81D7DAC+4 // =0x10000 
	tst R1, R4
	bne loc_81D7BB2
	pop {r4,r6,r7,pc}
loc_81D7BB2:
	ldr R0, [R7,#0x3C]
	ldr R3, [R6,#0x30]
	mov r4, #0x20 
	tst R0, R4
	beq loc_81D7BC4
	mov R4, #0x80
	tst R3, R4
	bne loc_81D7BC4
	pop {r4,r6,r7,pc}
loc_81D7BC4:
	ldr R1, [R7,#0x30]
	ldr R2, [R6,#0x3C]
	mov r4, #0x20 
	tst R2, R4
	beq loc_81D7BD6
	mov R4, #0x80
	tst R1, R4
	bne loc_81D7BD6
	pop {r4,r6,r7,pc}
loc_81D7BD6:
	ldr R2, [R6,#0x6C]
	ldr R3, [R7,#0x30]
	orr R2, R3
	str R2, [R6,#0x6C]
	ldrb R2, [R7,#0x19]
	mov r1, #0x77 
	ldrb R0, [R6,R1]
	orr R0, R2
	strb R0, [R6,R1]
	ldrb R2, [R7,#2]
	add r2, r2, r2
	add R2, #0x94
	ldrh R3, [R7,#0x2E]
	ldrh R4, [R6,R2]
	add r4, r4, r3
	strh R4, [R6,R2]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_81D7B6C
	mov R2, #0x94
	ldrh R1, [R6,R2]
	add r1, r1, r0
	strh R1, [R6,R2]
	pop {r4,r6,r7,pc}
loc_81D7C08:
	push {r4,r6,r7,lr}
	push {R0-R2}
	ldr R0, off_81D7DB4 // =battle_isPaused+1 
	mov LR, PC
	bx r0
	tst R0, R0
	pop {R0-R2}
	bne locret_81D7C74
	add r4, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	bl sub_81D7E58
	tst R0, R0
	beq locret_81D7C74
	ldr R2, [R4,#0x30]
	ldr R1, dword_81D7C78 // =0xC000000 
	tst R2, R1
	bne locret_81D7C74
	ldrb R0, [R0,#2]
	cmp R0, #6
	bne loc_81D7C46
	ldrb R0, [R4,#2]
	cmp R0, #1
	bne locret_81D7C74
	add r0, r6, #0
	add r1, r7, #0
	mov R2, #2
	bl sub_81D7EA4
	pop {r4,r6,r7,pc}
loc_81D7C46:
	cmp R0, #8
	bne loc_81D7C5C
	ldrb R0, [R4,#2]
	cmp R0, #2
	bne locret_81D7C74
	add r0, r6, #0
	add r1, r7, #0
	mov R2, #2
	bl sub_81D7EA4
	pop {r4,r6,r7,pc}
loc_81D7C5C:
	cmp R0, #9
	blt locret_81D7C74
	cmp R0, #0xC
	bgt locret_81D7C74
	ldrb R0, [R4,#2]
	cmp R0, #4
	bne locret_81D7C74
	add r0, r6, #0
	add r1, r7, #0
	mov R2, #2
	bl sub_81D7EA4
locret_81D7C74:
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
dword_81D7C78: .word 0xC000000
	push {R4-R7,lr}
	mov R3, R8
	push {r0}
	add r5, r0, #0
	ldrb R1, [R5,#1]
	mov R2, #0x80
	tst R1, R2
	bne loc_81D7CD6
	lsl r1, r1, #2
	ldr R2, off_81D7D20 // =off_8019B78 
	ldr R4, [R2,R1]
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	ldr R2, off_81D7DB8 // =object_getFlipDirection+1 
	mov LR, PC
	bx r2
	add r6, r0, #0
loc_81D7C9E:
	mov R0, #0
	ldrsb R0, [R4,R0]
	cmp R0, #0x7F
	beq loc_81D7D1A
	mul R0, R6
	ldrb R2, [R5,#0xA]
	add r0, r0, r2
	mov R1, #1
	ldrsb R1, [R4,R1]
	ldrb R2, [R5,#0xB]
	add r1, r1, r2
	add r7, r0, #0
	mov R8, R1
	ldr R3, off_81D7DBC // =object_isValidPanel+1 
	mov LR, PC
	bx r3
	beq loc_81D7CD2
	add r0, r7, #0
	mov R1, R8
	add r2, r5, #0
	bl sub_81D7D68
	add r0, r7, #0
	mov R1, R8
	bl sub_81D7DE0
loc_81D7CD2:
	add R4, #2
	b loc_81D7C9E
loc_81D7CD6:
	lsl r1, r1, #0x19
	lsr r1, r1, #0x16
	ldr R0, off_81D7D24 // =dword_8019C34 
	add r0, r0, r1
	ldr R2, [R0]
	ldr R3, [R0,#4]
	mov R7, #1
loc_81D7CE4:
	mov R6, #1
loc_81D7CE6:
	push {r2,r3}
	add r0, r6, #0
	add r1, r7, #0
	push {r4}
	ldr R4, off_81D7DC0 // =object_checkPanelParameters+1 
	mov LR, PC
	bx r4
	pop {r4}
	tst R0, R0
	beq loc_81D7D0C
	add r2, r5, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_81D7D68
	add r0, r7, #0
	mov R1, R8
	bl sub_81D7DE0
loc_81D7D0C:
	pop {r2,r3}
	add R6, #1
	cmp R6, #6
	ble loc_81D7CE6
	add R7, #1
	cmp R7, #3
	ble loc_81D7CE4
loc_81D7D1A:
	pop {r0}
	mov R8, R0
	pop {R4-R7,pc}
off_81D7D20: .word off_8019B78
off_81D7D24: .word dword_8019C34
	push {R4-R6,lr}
	add r5, r0, #0
	ldrb R1, [R0,#1]
	lsl r1, r1, #2
	ldr R2, off_81D7D64 // =off_8019B78 
	ldr R4, [R2,R1]
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	ldr R2, off_81D7DC4 // =sub_800E2C2+1 
	mov LR, PC
	bx r2
	add r6, r0, #0
loc_81D7D40:
	mov R0, #0
	ldrsb R0, [R4,R0]
	cmp R0, #0x7F
	beq locret_81D7D60
	mul R0, R6
	ldrb R2, [R5,#0xA]
	add r0, r0, r2
	mov R1, #1
	ldrsb R1, [R4,R1]
	ldrb R2, [R5,#0xB]
	add r1, r1, r2
	add r2, r5, #0
	bl sub_81D7D80
	add R4, #2
	b loc_81D7D40
locret_81D7D60:
	pop {R4-R6,pc}
	.balign 4, 0x00
off_81D7D64: .word off_8019B78
.func
.thumb_func
sub_81D7D68:
	ldr R3, off_81D7D7C // =unk_2034F60 
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr R1, [R3,R0]
	ldr R2, [R2,#0x44]
	orr R1, R2
	str R1, [R3,R0]
	mov PC, LR
	.balign 4, 0x00
off_81D7D7C: .word unk_2034F60
.endfunc // sub_81D7D68

.func
.thumb_func
sub_81D7D80:
	ldr R3, off_81D7D98 // =unk_2034F60 
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r3, r3, r0
	ldr R1, [R3]
	add r0, r1, #0
	ldr R2, [R2,#0x44]
	bic R1, R2
	str R1, [R3]
	tst R0, R2
	mov PC, LR
off_81D7D98: .word unk_2034F60
off_81D7D9C: .word object_getFlipDirection+1
	.word object_isValidPanel+1
off_81D7DA4: .word battle_isPaused+1
off_81D7DA8: .word battle_isTimeStop+1
dword_81D7DAC: .word 0x1000000, 0x10000
off_81D7DB4: .word battle_isPaused+1
off_81D7DB8: .word object_getFlipDirection+1
off_81D7DBC: .word object_isValidPanel+1
off_81D7DC0: .word object_checkPanelParameters+1
off_81D7DC4: .word sub_800E2C2+1
.endfunc // sub_81D7D80

	push {r4,r5,lr}
	mov R5, #4
loc_81D7DCC:
	mov R4, #7
loc_81D7DCE:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_81D7DE0
	sub R4, #1
	bgt loc_81D7DCE
	sub R5, #1
	bgt loc_81D7DCC
	pop {r4,r5,pc}
.func
.thumb_func
sub_81D7DE0:
	push {R4-R7,lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_81D7E58
	tst R0, R0
	beq locret_81D7E1C
	ldrb R1, [R0,#2]
	strb R1, [R0,#6]
	lsl r2, r1, #2
	ldr R3, dword_81D7E20 // = 
	ldr R3, [R3,R2]
	orr R1, R3
	ldrb R2, [R0,#3]
	strb R2, [R0,#7]
	lsl r2, r2, #5
	orr R1, R2
	ldr R2, [R0,#0x1C]
loc_81D7E04:
	tst R2, R2
	beq loc_81D7E0A
	mov R2, #0x80
loc_81D7E0A:
	orr R1, R2
	add r7, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_81D7E78
	orr R6, R0
	str R6, [R7,#0x14]
locret_81D7E1C:
	pop {R4-R7,pc}
	.byte 0, 0
dword_81D7E20: .word 0x3007924
	.byte  0
	.byte 0x80
	.byte  1
	.byte  0
	.byte  0
	.byte 0x40 
	.byte  1
	.byte  0
	.byte 0x10
	.byte  0
	.byte  1
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  1
	.byte  0
	.byte 0x10
	.byte  1
	.byte  1
	.byte  0
	.byte 0x10
	.byte 0x20
	.byte  1
	.byte  0
	.byte 0x10
	.byte  4
	.byte  1
	.byte  0
	.byte 0x10
	.byte  8
	.byte  1
	.byte  0
	.byte 0x10
	.byte 0x10
	.byte  1
	.byte  0
	.byte 0x10
	.byte  2
	.byte  1
	.byte  0
	.byte 0x10
	.byte  2
	.byte  1
	.byte  0
	.byte 0x10
	.byte  2
	.byte  1
	.byte  0
	.byte 0x10
	.byte  2
	.byte  1
	.byte  0
.endfunc // sub_81D7DE0

.func
.thumb_func
sub_81D7E58:
	sub r3, r0, #1
	cmp R3, #6
	bcs loc_81D7E70
	sub r3, r1, #1
	cmp R3, #3
	bcs loc_81D7E70
	lsl r1, r1, #3
	add r1, r1, r0
	lsl r0, r1, #5
	ldr R1, off_81D7E74 // =byte_2039AE0 
	add r0, r0, r1
	mov PC, LR
loc_81D7E70:
	mov R0, #0
	mov PC, LR
off_81D7E74: .word byte_2039AE0
.endfunc // sub_81D7E58

.func
.thumb_func
sub_81D7E78:
	lsl r1, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	ldr R1, off_81D7EA0 // =unk_2034F60 
	ldr R2, [R0,R1]
	mov R1, R10
	ldr R1, [R1,#0x30]
	mov R0, #0
loc_81D7E88:
	lsl r2, r2, #1
	bcs loc_81D7E90
	beq locret_81D7E9C
	b loc_81D7E98
loc_81D7E90:
	ldr R3, [R1,#0x30]
	lsr r3, r3, #0x10
	lsl r3, r3, #0x10
	orr R0, R3
loc_81D7E98:
	add R1, #0xA8
	b loc_81D7E88
locret_81D7E9C:
	mov PC, LR
	.byte 0, 0
off_81D7EA0: .word unk_2034F60
.endfunc // sub_81D7E78

.func
.thumb_func
sub_81D7EA4:
	push {R4-R6,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_81D7E58
	ldrb R3, [R0,#2]
	tst R3, R3
	beq locret_81D7ECE
	strb R6, [R0,#2]
	cmp R6, #9
	blt loc_81D7EC6
	cmp R6, #0xC
	bgt loc_81D7EC6
	ldr R1, dword_81D7ED0 // =0x708 
	strh R1, [R0,#0x12]
	b loc_81D7EC6
loc_81D7EC6:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_81D7DE0
locret_81D7ECE:
	pop {R4-R6,pc}
dword_81D7ED0: .word 0x708
	ldrb R3, [R0,#2]
	tst R3, R3
	beq locret_81D7EF2
	strb R6, [R0,#2]
	cmp R6, #9
	blt loc_81D7EEA
	cmp R6, #0xC
	bgt loc_81D7EEA
	ldr R1, dword_81D7EF4 // =0x708 
	strh R1, [R0,#0x12]
	b loc_81D7EEA
loc_81D7EEA:
	add r0, r4, #0
	add r1, r5, #0
	bl loc_81D7E04
locret_81D7EF2:
	pop {R4-R6,pc}
dword_81D7EF4:
	// <endpool> <endfile>
	.word 0x708, 0x0, 0x50000000, 0x55044000, 0x5243A200
	.word 0x66700000, 0x67000000, 0x70000000, 0x0, 0x0
	.word 0x0, 0x0, 0x0, 0xE66, 0xE666
	.word 0xE6666, 0xE66667, 0xE666670, 0x6666700, 0x6A667000
	.word 0xAA770000, 0x766E000, 0x76E000, 0x8766E00, 0x80078E00
	.word 0x80886E00, 0x88876E00, 0x880766E0, 0x80007AE6, 0x243A3400
	.word 0x54A33320, 0xD4A33320, 0xD4A33422, 0xD4A32225, 0xD4423352
	.word 0xD7237C72, 0x7A24CCC8, 0x0, 0x0, 0x0
	.word 0x0, 0x0, 0x0, 0x0, 0x0
	.word 0xA7000000, 0x60000000, 0x0, 0x0, 0x70000000
	.word 0xA7000000, 0xBA770000, 0x7BBE7000, 0xAA222A6A, 0x2EB332BA
	.word 0x34EB34B6, 0x352B4327, 0x452B452A, 0x526E527B, 0x26622807
	.word 0x66427880, 0xBA257C7A, 0x7FF56255, 0xFF782433, 0x67788533
	.word 0x78888233, 0x88888244
.endfunc // sub_81D7EA4

/*For debugging purposes, connect comment at any range!*/
