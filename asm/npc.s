.include "asm/npc.inc"

.func
.thumb_func
npc_809E570:
	push {lr}
	ldr R7, off_809E58C // =jt_809E580 
	ldrb R0, [R5,#8]
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	pop {pc}
	.byte 0, 0
jt_809E580: .word npc_809E590+1
	.word npc_809E5E2+1
	.word npc_809EADA+1
off_809E58C: .word jt_809E580
.endfunc // npc_809E570

.func
.thumb_func
npc_809E590:
	push {lr}
	ldr R0, [R5,#0x60]
	bl sub_809F506
	mov R0, #0
	str R0, [R5,#0x68]
	str R0, [R5,#0x6C]
	strb R0, [R5,#0xE]
	strb R0, [R5,#0xF]
	strb R0, [R5,#0x17]
	strb R0, [R5,#7]
	strb R0, [R5,#0x16]
	str R0, [R5,#0x60]
	str R0, [R5,#0x64]
	str R0, [R5,#0x50]
	str R0, [R5,#0x54]
	str R0, [R5,#0x58]
	strb R0, [R5,#0x11]
	strb R0, [R5,#0x12]
	strb R0, [R5,#0x13]
	mov R0, #0xFF
	strh R0, [R5,#0x3C]
	strh R0, [R5,#0x3E]
	strb R0, [R5,#0x14]
	strb R0, [R5,#0x15]
	mov R0, #4
	strb R0, [R5,#8]
	mov R0, #4
	strb R0, [R5,#0xC]
	mov R0, #8
	strb R0, [R5,#0xD]
	mov R0, #0x80
	mov R1, #0x1C
	mov R2, #0xA0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl npc_809E5E2
	pop {pc}
.endfunc // npc_809E590

.func
.thumb_func
npc_809E5E2:
	push {lr}
	ldrb R0, [R5,#0x18]
	tst R0, R0
	beq loc_809E5F0
	bl sub_809F5FC
	b loc_809E658
loc_809E5F0:
	bl npc_809EBDC
	ldr R7, off_809E6C0 // =off_809E6A4 
	ldrb R0, [R5,#9]
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	mov R0, #0
	ldr R2, [R5,#0x60]
	mov R1, #8
	tst R2, R1
	beq loc_809E60A
	mov R0, #1
loc_809E60A:
	bl sub_8002F5C
	ldrh R0, [R5,#0x3C]
	ldrh R1, [R5,#0x3E]
	cmp R0, R1
	beq loc_809E648
	add r2, r0, #0
	mov R0, #0x80
	ldr R1, [R5,#0x78]
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	ldr R0, [R5,#0x60]
	mov R1, #0x80
	tst R0, R1
	bne loc_809E632
	bl sub_8002F90 // () -> void
	b loc_809E644
loc_809E632:
	ldr R0, [R5,#0x60]
	ldr R1, off_809E6C4 // =0x100 
	tst R0, R1
	beq loc_809E640
	bl sub_8002E3C
	b loc_809E644
loc_809E640:
	bl sub_8002E52
loc_809E644:
	mov R0, #0xFF
	strb R0, [R5,#0x15]
loc_809E648:
	ldrb R0, [R5,#0x14]
	ldrb R1, [R5,#0x15]
	cmp R0, R1
	beq loc_809E658
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809E658:
	bl sprite_update
	ldrb R0, [R5,#0x16]
	bl sprite_setPallete // (int pallete) -> void
	ldr R0, [R5,#0x68]
	ldr R1, [R5,#0x6C]
	cmp R0, R1
	beq loc_809E66E
	bl sub_8002FA6
loc_809E66E:
	ldrb R0, [R5,#0xE]
	strb R0, [R5,#0xF]
	ldrb R0, [R5,#0x14]
	strb R0, [R5,#0x15]
	ldrh R0, [R5,#0x3C]
	strh R0, [R5,#0x3E]
	ldr R0, [R5,#0x68]
	str R0, [R5,#0x6C]
	bl sub_809F526
	ldr R0, [R5,#0x64]
	tst R0, R0
	bne loc_809E690
	add r0, r5, #0
	add r0, #0x24 
	bl sub_8035694
loc_809E690:
	bl sub_8002E14
	ldr R0, [R5,#0x60]
	mov r1, #0x40 
	tst R0, R1
	beq locret_809E6A0
	bl sub_809F922
locret_809E6A0:
	pop {pc}
	.balign 4, 0x00
off_809E6A4: .word sub_809E6C8+1
jt_809E6A8: .word npc_809E6DC+1
	.word npc_809E8CC+1
	.word npc_809EA3C+1
	.word sub_809EA74+1
	.word sub_809EA82+1
	.word npc_809EAA0+1
off_809E6C0: .word off_809E6A4
off_809E6C4: .word 0x100
.endfunc // npc_809E5E2

.func
.thumb_func
sub_809E6C8:
	push {lr}
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bne loc_809E6D6
	bl sub_809F516
loc_809E6D6:
	bl npc_809EBF8
	pop {pc}
.endfunc // sub_809E6C8

.func
.thumb_func
npc_809E6DC:
	push {lr}
	ldr R7, off_809E700 // =jt_809E6F0 
	ldrb R0, [R5,#0xA]
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	bl npc_809EBF8
	pop {pc}
	.byte 0, 0
jt_809E6F0: .word npc_809E704+1
	.word npc_809E7D8+1
	.word npc_809E84E+1
	.word npc_809E878+1
off_809E700: .word jt_809E6F0
.endfunc // npc_809E6DC

.func
.thumb_func
npc_809E704:
	push {lr}
	ldr R7, off_809E7C4 // =unk_809E77E 
	ldrb R0, [R5,#0xE]
	lsl r0, r0, #2
	add r7, r7, r0
	ldr R0, [R5,#0x24]
	mov R3, #0
	ldrsh R1, [R7,R3]
	lsl r1, r1, #0x10
	add r0, r0, r1
	str R0, [R5,#0x70]
	ldr R0, [R5,#0x28]
	mov R3, #2
	ldrsh R1, [R7,R3]
	lsl r1, r1, #0x10
	add r0, r0, r1
	str R0, [R5,#0x74]
	ldr R0, dword_809E7C8 // =0x80000 
	ldrb R1, [R5,#4]
	push {r5}
	bl SWI_Div
	pop {r5}
	ldr R1, dword_809E7D4 // =0xFFF 
	add r0, r0, r1
	lsr r0, r0, #0xc
	strh R0, [R5,#0x20]
	ldr R7, dword_809E7C0 // = 
	ldrb R0, [R5,#0xE]
	add r0, r0, r0
	add r7, r7, r0
	ldrb R4, [R5,#4]
	mov R3, #0
	ldrsb R1, [R7,R3]
	mul R1, R4
	lsl r1, r1, #0xc
	str R1, [R5,#0x40]
	mov R3, #1
	ldrsb R1, [R7,R3]
	mul R1, R4
	lsl r1, r1, #0xc
	str R1, [R5,#0x44]
	mov R0, #0
	str R0, [R5,#0x48]
	mov R0, #4
	strb R0, [R5,#0xA]
	ldr R1, [R5,#0x40]
	ldr R0, [R5,#0x24]
	add r0, r0, r1
	str R0, [R5,#0x30]
	ldr R1, [R5,#0x44]
	ldr R0, [R5,#0x28]
	add r0, r0, r1
	str R0, [R5,#0x34]
	ldr R1, [R5,#0x48]
	ldr R0, [R5,#0x2C]
	add r0, r0, r1
	str R0, [R5,#0x38]
	bl sub_809F5B0
	pop {pc}
unk_809E77E: .byte  0
	.byte  0
	.word 0x80000, 0x0, 0x0
	.word 0x8, 0xFFF80000, 0x0, 0x0
	.word 0xFFF8, 0x1, 0x100, 0xFF, 0x900FF00, 0xD000B00, 0x1000F00
	.word 0x5000300, 0x700
dword_809E7C0: .word 0x809E79E
off_809E7C4: .word unk_809E77E
dword_809E7C8: .word 0x80000
	.byte 0xAE
	.byte 0xE7
	.byte  9
	.byte  8
	.byte 0xB6
	.byte 0xE7
	.hword 0x809
dword_809E7D4: .word 0xFFF
npc_809E7D8:
	push {lr}
	ldr R0, [R5,#0x60]
	mov R1, #0x10
	tst R0, R1
	bne loc_809E7EA
	bl sub_809F638
	tst R0, R0
	bne loc_809E848
loc_809E7EA:
	ldr R0, [R5,#0x30]
	str R0, [R5,#0x24]
	ldr R0, [R5,#0x34]
	str R0, [R5,#0x28]
	ldr R0, [R5,#0x38]
	str R0, [R5,#0x2C]
	ldrh R0, [R5,#0x20]
	sub R0, #1
	strh R0, [R5,#0x20]
	bne loc_809E81A
	ldr R0, [R5,#0x70]
	str R0, [R5,#0x24]
	ldr R0, [R5,#0x74]
	str R0, [R5,#0x28]
	ldrb R0, [R5,#5]
	sub R0, #1
	strb R0, [R5,#5]
	bne loc_809E814
	bl sub_809F516
	pop {pc}
loc_809E814:
	bl npc_809E704
	pop {pc}
loc_809E81A:
	ldr R1, [R5,#0x40]
	ldr R0, [R5,#0x30]
	add r0, r0, r1
	str R0, [R5,#0x30]
	ldr R1, [R5,#0x44]
	ldr R0, [R5,#0x34]
	add r0, r0, r1
	str R0, [R5,#0x34]
	ldr R0, [R5,#0x60]
	mov r1, #0x20 
	lsl r1, r1, #4
	tst R0, R1
	bne loc_809E842
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	lsl r0, r0, #0x10
	str R0, [R5,#0x2C]
	str R0, [R5,#0x38]
loc_809E842:
	bl sub_809F5B0
	pop {pc}
loc_809E848:
	bl sub_809F5B0
	pop {pc}
npc_809E84E:
	push {lr}
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	ldrb R2, [R5,#6]
	tst R0, R0
	beq loc_809E872
	sub R0, #1
	strb R0, [R5,#4]
	tst R1, R1
	bne loc_809E86A
	ldrh R1, [R5,#0x2E]
	add r1, r1, r2
	strh R1, [R5,#0x2E]
	b locret_809E870
loc_809E86A:
	ldrh R1, [R5,#0x2E]
	sub r1, r1, r2
	strh R1, [R5,#0x2E]
locret_809E870:
	pop {pc}
loc_809E872:
	bl sub_809F516
	pop {pc}
npc_809E878:
	push {lr}
	ldrb R0, [R5,#4]
	tst R0, R0
	beq loc_809E8BA
	sub R0, #1
	strb R0, [R5,#4]
	ldr R0, off_809E8C0 // =dword_809E8C4 
	ldrb R1, [R5,#6]
	lsl r1, r1, #1
	ldrb R2, [R0,R1]
	add R1, #1
	ldrb R1, [R0,R1]
	ldrb R0, [R5,#7]
	tst R1, R1
	bne loc_809E89E
	ldrh R1, [R5,R2]
	add r1, r1, r0
	strh R1, [R5,R2]
	b loc_809E8A4
loc_809E89E:
	ldrh R1, [R5,R2]
	sub r1, r1, r0
	strh R1, [R5,R2]
loc_809E8A4:
	ldrb R1, [R5,#5]
	tst R1, R1
	bne loc_809E8B2
	ldrh R1, [R5,#0x2E]
	add R1, #1
	strh R1, [R5,#0x2E]
	b locret_809E8B8
loc_809E8B2:
	ldrh R1, [R5,#0x2E]
	sub R1, #1
	strh R1, [R5,#0x2E]
locret_809E8B8:
	pop {pc}
loc_809E8BA:
	bl sub_809F516
	pop {pc}
off_809E8C0: .word dword_809E8C4
dword_809E8C4: .word 0x2A0026
	.word 0x12A0126
.endfunc // npc_809E704

.func
.thumb_func
npc_809E8CC:
	push {lr}
	ldr R7, off_809E8F8 // =jt_809E8E0 
	ldrb R0, [R5,#0xA]
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	bl npc_809EBF8
	pop {pc}
	.byte 0, 0
jt_809E8E0: .word npc_809E8FC+1
	.word npc_809E916+1
	.word npc_809E944+1
	.word npc_809E95E+1
	.word npc_809E9C0+1
	.word npc_809E9DA+1
off_809E8F8: .word jt_809E8E0
.endfunc // npc_809E8CC

.func
.thumb_func
npc_809E8FC:
	push {lr}
	ldrb R0, [R5,#4]
	lsl r0, r0, #0xc
	str R0, [R5,#0x48]
	mov R3, #5
	ldrsb R0, [R5,R3]
	lsl r0, r0, #0xc
	str R0, [R5,#0x44]
	mov R0, #1
	strb R0, [R5,#0x17]
	mov R0, #4
	strb R0, [R5,#0xA]
	pop {pc}
.endfunc // npc_809E8FC

.func
.thumb_func
npc_809E916:
	push {lr}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr R0, [R5,#0x48]
	ldr R1, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x48]
	ldr R1, [R5,#0x2C]
	add r0, r0, r1
	cmp R0, R2
	bpl loc_809E940
	str R2, [R5,#0x2C]
	mov R0, #0
	strb R0, [R5,#0x17]
	bl sub_809F516
	pop {pc}
loc_809E940:
	str R0, [R5,#0x2C]
	pop {pc}
.endfunc // npc_809E916

.func
.thumb_func
npc_809E944:
	push {lr}
	ldrb R0, [R5,#4]
	lsl r0, r0, #0xc
	str R0, [R5,#0x48]
	mov R3, #5
	ldrsb R0, [R5,R3]
	lsl r0, r0, #0xc
	str R0, [R5,#0x44]
	mov R0, #1
	strb R0, [R5,#0x17]
	mov R0, #0xC
	strb R0, [R5,#0xA]
	pop {pc}
.endfunc // npc_809E944

.func
.thumb_func
npc_809E95E:
	push {lr}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	add r2, r0, #0
	lsl r2, r2, #0x10
	push {r2}
	mov R3, #6
	ldrb R3, [R5,R3]
	lsl r3, r3, #1
	ldr R2, off_809E9B4 // =dword_809E9B8 
	ldrb R0, [R2,R3]
	add R3, #1
	ldrb R1, [R2,R3]
	mov R3, #7
	ldrb R2, [R5,R3]
	tst R1, R1
	beq loc_809E98C
	ldrh R1, [R5,R0]
	sub r1, r1, r2
	strh R1, [R5,R0]
	b loc_809E992
loc_809E98C:
	ldrh R1, [R5,R0]
	add r1, r1, r2
	strh R1, [R5,R0]
loc_809E992:
	pop {r2}
	ldr R0, [R5,#0x48]
	ldr R1, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x48]
	ldr R1, [R5,#0x2C]
	add r0, r0, r1
	cmp R0, R2
	bpl loc_809E9B0
	str R2, [R5,#0x2C]
	mov R0, #0
	strb R0, [R5,#0x17]
	bl sub_809F516
	pop {pc}
loc_809E9B0:
	str R0, [R5,#0x2C]
	pop {pc}
off_809E9B4: .word dword_809E9B8
dword_809E9B8: .word 0x2A0026
	.word 0x12A0126
.endfunc // npc_809E95E

.func
.thumb_func
npc_809E9C0:
	push {lr}
	ldrb R0, [R5,#4]
	lsl r0, r0, #0xc
	str R0, [R5,#0x48]
	mov R3, #5
	ldrsb R0, [R5,R3]
	lsl r0, r0, #0xc
	str R0, [R5,#0x44]
	mov R0, #1
	strb R0, [R5,#0x17]
	mov R0, #0x14
	strb R0, [R5,#0xA]
	pop {pc}
.endfunc // npc_809E9C0

.func
.thumb_func
npc_809E9DA:
	push {lr}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	add r2, r0, #0
	lsl r2, r2, #0x10
	push {r2}
	mov R3, #6
	ldrb R3, [R5,R3]
	lsl r3, r3, #1
	ldr R2, off_809EA30 // =byte_809EA34 
	ldrb R0, [R2,R3]
	add R3, #1
	ldrb R1, [R2,R3]
	mov R3, #7
	ldrb R2, [R5,R3]
	tst R1, R1
	beq loc_809EA08
	ldrh R1, [R5,R0]
	sub r1, r1, r2
	strh R1, [R5,R0]
	b loc_809EA0E
loc_809EA08:
	ldrh R1, [R5,R0]
	add r1, r1, r2
	strh R1, [R5,R0]
loc_809EA0E:
	pop {r2}
	ldr R0, [R5,#0x48]
	ldr R1, [R5,#0x44]
	add r0, r0, r1
	str R0, [R5,#0x48]
	cmp R0, #0
	bgt loc_809EA26
	mov R0, #0
	strb R0, [R5,#0x17]
	bl sub_809F516
	pop {pc}
loc_809EA26:
	ldr R1, [R5,#0x2C]
	add r0, r0, r1
	str R0, [R5,#0x2C]
	pop {pc}
	.byte 0, 0
off_809EA30: .word byte_809EA34
byte_809EA34: .byte 0x26, 0x0, 0x2A, 0x0, 0x26, 0x1, 0x2A, 0x1
.endfunc // npc_809E9DA

.func
.thumb_func
npc_809EA3C:
	push {lr}
	ldrb R0, [R5,#0xA]
	tst R0, R0
	bne loc_809EA4A
	mov R0, #4
	strb R0, [R5,#0xA]
	b loc_809EA6E
loc_809EA4A:
	mov R7, #0x80
	ldr R7, [R5,R7]
	mov R1, #0xC0
	tst R7, R1
	beq loc_809EA62
	bl sub_8002DEA
	tst R0, R7
	beq loc_809EA6E
	bl sub_809F516
	b loc_809EA6E
loc_809EA62:
	bl sub_8002DEA
	cmp R0, R7
	bne loc_809EA6E
	bl sub_809F516
loc_809EA6E:
	bl npc_809EBF8
	pop {pc}
.endfunc // npc_809EA3C

.func
.thumb_func
sub_809EA74:
	push {lr}
	ldr R7, [R5,#0x7C]
	mov LR, PC
	bx r7
	bl npc_809EBF8
	pop {pc}
.endfunc // sub_809EA74

.func
.thumb_func
sub_809EA82:
	push {r4,r7,lr}
	mov R4, R10
	ldr R4, [R4,#0x10]
	mov R7, #0x80
	ldr R0, [R5,R7]
	mov R7, #0x84
	ldr R1, [R5,R7]
	ldrb R0, [R4,R0]
	cmp R0, R1
	bne loc_809EA9A
	bl sub_809F516
loc_809EA9A:
	bl npc_809EBF8
	pop {r4,r7,pc}
.endfunc // sub_809EA82

.func
.thumb_func
npc_809EAA0:
	push {r4,r7,lr}
	mov R7, #0x80
	ldr R0, [R5,R7]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_809EAD4
	bl sub_809F516
	mov R0, #1
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	mov R0, #1
	strb R0, [R5]
	mov R0, #0x80
	mov R1, #0x1C
	mov R2, #0xA0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8004602
	bl npc_809F51E
loc_809EAD4:
	bl npc_809EBF8
	pop {r4,r7,pc}
.endfunc // npc_809EAA0

.func
.thumb_func
npc_809EADA:
	push {lr}
	ldr R7, off_809EB00 // =off_809EAFC 
	ldrb R0, [R5,#9]
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	bl sprite_update
	bl sub_809F526
	ldr R0, [R5,#0x60]
	mov r1, #0x40 
	tst R0, R1
	beq locret_809EAFA
	bl sub_809F922
locret_809EAFA:
	pop {pc}
off_809EAFC: .word sub_809EB04+1
off_809EB00: .word off_809EAFC
.endfunc // npc_809EADA

.func
.thumb_func
sub_809EB04:
	push {lr}
	ldr R7, dword_809EB1C // = 
	ldrb R0, [R5,#0xA]
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	pop {pc}
	.balign 4, 0x00
	.word npc_809EB20+1
	.byte 0xBD
	.byte 0xEB
	.byte  9
	.byte  8
dword_809EB1C: .word 0x809EB14
.endfunc // sub_809EB04

.func
.thumb_func
npc_809EB20:
	push {lr}
	ldr R0, [R5,#0x60]
	mov R1, #2
	tst R0, R1
	bne loc_809EB54
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldr R7, [R7,#0x18]
	ldr R0, [R7,#0x20]
	ldr R2, [R5,#0x28]
	sub r0, r0, r2
	ldr R1, [R7,#0x1C]
	ldr R2, [R5,#0x24]
	sub r1, r1, r2
	bl calcAngle_800117C
	add r0, #0x20 
	mov R1, #0xC0
	and R0, R1
	lsr r0, r0, #6
	lsl r0, r0, #1
	add R0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809EB54:
	ldr R2, [R5,#0x60]
	ldr R1, off_809EBB4 // =0x400 
	tst R2, R1
	beq loc_809EBA4
	ldr R1, dword_809EBB8 // =0x800 
	tst R2, R1
	beq loc_809EB76
	mov R7, R10
	ldr R7, [R7,#0x2C]
	mov R1, #0x90
	ldr R0, [R5,R1]
	str R0, [R7,#0x4C]
	bl sub_809FC96
	str R0, [R7,#0x54]
	str R1, [R7,#0x58]
	strb R2, [R5,#0x1C]
loc_809EB76:
	cmp R3, #8
	bne loc_809EB98
	cmp r0, #0x70 
	bne loc_809EB98
	push {r0,r1,R3-R7}
	bl getPETNaviSelect // () -> u8
	add r2, r0, #0
	pop {r0,r1,R3-R7}
	cmp R2, #0
	beq loc_809EB98
	mov R2, #0x94 // NPC.scriptArray
	ldr R0, [R5,R2]
	mov r1, #0x78 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_809EBAA
loc_809EB98:
	mov R2, #0x94
	ldr R0, [R5,R2]
	ldrb R1, [R5,#0x1C]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_809EBAA
loc_809EBA4:
	ldrb R0, [R5,#0x1C]
	bl chatbox_runScript_202da04 // (u8 scriptID) -> void
loc_809EBAA:
	mov R0, #4
	strb R0, [R5,#0xA]
	bl npc_809EBBC
	pop {pc}
off_809EBB4: .word 0x400
dword_809EBB8: .word 0x800
.endfunc // npc_809EB20

.func
.thumb_func
npc_809EBBC:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x15
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809EBDA
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R0, [R7,#0x10]
	tst R0, R0
	bne locret_809EBDA
	mov R0, #0
	strb R0, [R5,#7]
	bl sub_809F612
locret_809EBDA:
	pop {pc}
.endfunc // npc_809EBBC

.func
.thumb_func
npc_809EBDC:
	push {lr}
loc_809EBDE:
	ldrb R0, [R5,#0x19]
	tst R0, R0
	bne locret_809EBF6
	ldr R6, [R5,#0x4C]
	ldrb R0, [R6]
	lsl r0, r0, #2
	ldr R7, off_809EC2C // =npc_jt_commands 
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	str R6, [R5,#0x4C]
	b loc_809EBDE
locret_809EBF6:
	pop {pc}
.endfunc // npc_809EBDC

.func
.thumb_func
npc_809EBF8:
	push {lr}
loc_809EBFA:
	ldrb R0, [R5,#0x1F]
	tst R0, R0
	bne loc_809EC16
	ldr R6, [R5,#0x5C]
	tst R6, R6
	beq locret_809EC1A
	ldrb R0, [R6]
	lsl r0, r0, #2
	ldr R7, off_809EC2C // =npc_jt_commands 
	ldr R7, [R7,R0]
	mov LR, PC
	bx r7
	str R6, [R5,#0x5C]
	b loc_809EBFA
loc_809EC16:
	bl npc_809EC1C
locret_809EC1A:
	pop {pc}
.endfunc // npc_809EBF8

.func
.thumb_func
npc_809EC1C:
	push {lr}
	ldrh R0, [R5,#0x22]
	sub R0, #1
	strh R0, [R5,#0x22]
	bne locret_809EC2A
	mov R0, #0
	strb R0, [R5,#0x1F]
locret_809EC2A:
	pop {pc}
off_809EC2C: .word npc_jt_commands
npc_jt_commands: .word npc_00_terminateScript+1
	.word 0x0
	.word npc_809ED88+1
	.word npc_809ED94+1
	.word npc_809EDB2+1
	.word npc_809EDD0+1
	.word npc_809EDEE+1
	.word npc_809EE00+1
	.word npc_809EE12+1
	.word npc_809EE1A+1
	.word npc_809EE22+1
	.word npc_809EE2A+1
	.word npc_809EE32+1
	.word npc_809EE48+1
	.word npc_809EE56+1
	.word npc_809EE62+1
	.word npc_809EE6C+1
	.word npc_809EE82+1
	.word npc_809EE9C+1
	.word npc_809EEAA+1
	.word npc_809EEB6+1
	.word npc_809EEDA+1
	.word npc_809EEF8+1
	.word npc_809EF00+1
	.word npc_809EF40+1
	.word npc_809EF48+1
	.word npc_809EF50+1
	.word npc_809EF58+1
	.word npc_809EF60+1
	.word npc_809EF6E+1
	.word npc_809EF82+1
	.word npc_809EF9A+1
	.word npc_809EFA6+1
	.word npc_809EFB4+1
	.word npc_809EFC6+1
	.word npc_809EFD8+1
	.word npc_809EFFC+1
	.word npc_809F01C+1
	.word npc_809F030+1
	.word npc_809F03C+1
	.word npc_809F048+1
	.word npc_809F058+1
	.word dword_809F0E4+9
	.word dword_809F0E4+33
	.word 0x0
	.word sub_809F114+1
	.word sub_809F12C+1
	.word sub_809F138+1
	.word sub_809F150+1
	.word sub_809F15A+1
	.word sub_809F16E+1
	.word sub_809F17C+1
	.word loc_809F18E+1
	.word sub_809F198+1
	.word sub_809F1C6+1
	.word sub_809F1D8+1
	.word sub_809F218+1
	.word sub_809F23E+1
	.word loc_809F26A+1
	.word sub_809F270+1
	.word sub_809F292+1
	.word sub_809F2A2+1
	.word sub_809F2C0+1
	.word sub_809F2DE+1
	.word sub_809F2FC+1
	.word sub_809F30C+1
	.word 0x0
	.word 0x0
	.word sub_809F31C+1
	.word sub_809F338+1
	.word sub_809F354+1
	.word sub_809F36E+1
	.word sub_809F37E+1
	.word sub_809F388+1
	.word sub_809F392+1
	.word sub_809F3A6+1
	.word sub_809F3C0+1
	.word sub_809F3E8+1
	.word sub_809F3F6+1
	.word sub_809F418+1
	.word sub_809F438+1
	.word sub_809F45A+1
	.word sub_809F4B8+1
	.word npc_809F4EE+1
.endfunc // npc_809EC1C

.func
.thumb_func
npc_00_terminateScript:
	push {lr}
	bl npc_809F51E
	pop {pc}
.endfunc // npc_00_terminateScript

.func
.thumb_func
npc_809ED88:
	push {lr}
	add r0, r6, #1
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
.endfunc // npc_809ED88

.func
.thumb_func
npc_809ED94:
	push {lr}
	mov R0, #1
	strb R0, [R5]
	mov R0, #0x80
	mov R1, #0x1C
	mov R2, #0xA0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sub_8004602
	bl npc_809F51E
	pop {pc}
.endfunc // npc_809ED94

.func
.thumb_func
npc_809EDB2:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_809EDCC
	add r0, r6, #3
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
loc_809EDCC:
	add R6, #7
	pop {pc}
.endfunc // npc_809EDB2

.func
.thumb_func
npc_809EDD0:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_809EDEA
	add r0, r6, #3
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
loc_809EDEA:
	add R6, #7
	pop {pc}
.endfunc // npc_809EDD0

.func
.thumb_func
npc_809EDEE:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	add R6, #3
	pop {pc}
.endfunc // npc_809EDEE

.func
.thumb_func
npc_809EE00:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	add R6, #3
	pop {pc}
.endfunc // npc_809EE00

.func
.thumb_func
npc_809EE12:
	mov R0, #3
	strb R0, [R5]
	add R6, #1
	mov PC, LR
.endfunc // npc_809EE12

npc_809EE1A:
	mov R0, #1
	strb R0, [R5]
	add R6, #1
	mov PC, LR
npc_809EE22:
	ldrb R0, [R6,#1]
	strb R0, [R5,#0xC]
	add R6, #2
	mov PC, LR
npc_809EE2A:
	ldrb R0, [R6,#1]
	strb R0, [R5,#0xD]
	add R6, #2
	mov PC, LR
npc_809EE32:
	mov R1, #1
	ldrsb R0, [R6,R1]
	strb R0, [R5,#0x11]
	mov R1, #2
	ldrsb R0, [R6,R1]
	strb R0, [R5,#0x12]
	mov R1, #3
	ldrsb R0, [R6,R1]
	strb R0, [R5,#0x13]
	add R6, #4
	mov PC, LR
npc_809EE48:
	mov R0, #1
	mvn R0, R0
	ldr R1, [R5,#0x60]
	and R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
npc_809EE56:
	mov R0, #1
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
.func
.thumb_func
npc_809EE62:
	push {lr}
	ldrb R0, [R6,#1]
	strb R0, [R5,#0x16]
	add R6, #2
	pop {pc}
.endfunc // npc_809EE62

.func
.thumb_func
npc_809EE6C:
	push {lr}
	mov R0, #0
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	ldrb R0, [R6,#1]
	strh R0, [R5,#0x20]
	bl npc_809F51E
	add R6, #2
	pop {pc}
.endfunc // npc_809EE6C

.func
.thumb_func
npc_809EE82:
	push {lr}
	ldrb R0, [R6,#1]
	strb R0, [R5,#4]
	ldrb R0, [R6,#2]
	strb R0, [R5,#5]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	bl npc_809F51E
	add R6, #3
	pop {pc}
.endfunc // npc_809EE82

npc_809EE9C:
	mov R0, #2
	mvn R0, R0
	ldr R1, [R5,#0x60]
	and R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
npc_809EEAA:
	mov R0, #2
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
.func
.thumb_func
npc_809EEB6:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	lsl r0, r0, #0x10
	str R0, [R5,#0x24]
	add r0, r6, #3
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	lsl r0, r0, #0x10
	str R0, [R5,#0x28]
	add r0, r6, #5
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	lsl r0, r0, #0x10
	str R0, [R5,#0x2C]
	add R6, #7
	pop {pc}
.endfunc // npc_809EEB6

.func
.thumb_func
npc_809EEDA:
	push {lr}
	ldrb R2, [R6,#1]
	strb R2, [R5,#0xE]
	ldrb R2, [R6,#2]
	strb R2, [R5,#4]
	ldrb R2, [R6,#3]
	strb R2, [R5,#5]
	mov R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	bl npc_809F51E
	add R6, #4
	pop {pc}
.endfunc // npc_809EEDA

npc_809EEF8:
	ldrb R0, [R6,#1]
	strb R0, [R5,#0x14]
	add R6, #2
	mov PC, LR
npc_809EF00:
	ldrb R0, [R6,#1]
	strh R0, [R5,#0x3C]
	mov R1, #0
	strb R1, [R5,#0x16]
	str R1, [R5,#0x68]
	ldr R1, off_809EF3C // =dword_809E530 
	mov R3, #0
loc_809EF0E:
	ldrb R2, [R1,R3]
	cmp R2, R0
	beq loc_809EF1C
	cmp R2, #0xFF
	beq loc_809EF2A
	add R3, #3
	b loc_809EF0E
loc_809EF1C:
	add R3, #1
	ldrb R0, [R1,R3]
	lsl r0, r0, #0x18
	str R0, [R5,#0x68]
	add R3, #1
	ldrb R0, [R1,R3]
	strb R0, [R5,#0x16]
loc_809EF2A:
	mov R0, #0x18
	str R0, [R5,#0x78]
	ldr R0, [R5,#0x60]
	mov R1, #0x80
	bic R0, R1
	str R0, [R5,#0x60]
	add R6, #2
	mov PC, LR
	.balign 4, 0x00
off_809EF3C: .word dword_809E530
npc_809EF40:
	ldrb R0, [R6,#1]
	strb R0, [R5,#0x1C]
	add R6, #2
	mov PC, LR
npc_809EF48:
	mov R0, #0
	str R0, [R5,#0x64]
	add R6, #1
	mov PC, LR
npc_809EF50:
	mov R0, #2
	str R0, [R5,#0x64]
	add R6, #1
	mov PC, LR
npc_809EF58:
	mov R0, #3
	str R0, [R5,#0x64]
	add R6, #1
	mov PC, LR
.func
.thumb_func
npc_809EF60:
	push {lr}
	add r0, r6, #1
	bl sub_809F656 // (void* a1) -> int
	str R0, [R5,#0x68]
	add R6, #5
	pop {pc}
.endfunc // npc_809EF60

.func
.thumb_func
npc_809EF6E:
	push {lr}
	ldrb R0, [R6,#1]
	mov R1, #0x80
	lsl r1, r1, #0x18
	lsr R1, R0
	ldr R0, [R5,#0x68]
	orr R0, R1
	str R0, [R5,#0x68]
	add R6, #2
	pop {pc}
.endfunc // npc_809EF6E

.func
.thumb_func
npc_809EF82:
	push {lr}
	ldrb R0, [R6,#1]
	ldrb R0, [R6,#1]
	mov R1, #0x80
	lsl r1, r1, #0x18
	lsr R1, R0
	mvn R1, R1
	ldr R0, [R5,#0x68]
	and R0, R1
	str R0, [R5,#0x68]
	add R6, #2
	pop {pc}
.endfunc // npc_809EF82

npc_809EF9A:
	mov R0, #4
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
npc_809EFA6:
	mov R0, #4
	mvn R0, R0
	ldr R1, [R5,#0x60]
	and R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
.func
.thumb_func
npc_809EFB4:
	push {lr}
	ldr R0, [R5,#0x60]
	mov R1, #0x80
	bic R0, R1
	str R0, [R5,#0x60]
	bl sub_8002F90 // () -> void
	add R6, #1
	pop {pc}
.endfunc // npc_809EFB4

.func
.thumb_func
npc_809EFC6:
	push {lr}
	ldr R0, off_809EFF4 // =0x180 
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	bl sub_8002E3C
	add R6, #1
	pop {pc}
.endfunc // npc_809EFC6

.func
.thumb_func
npc_809EFD8:
	push {lr}
	mov R0, #0x80
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	ldr R0, [R5,#0x60]
	ldr R1, off_809EFF8 // =0x100 
	bic R0, R1
	str R0, [R5,#0x60]
	bl sub_8002E52
	add R6, #1
	pop {pc}
	.balign 4, 0x00
off_809EFF4: .word 0x180
off_809EFF8: .word 0x100
.endfunc // npc_809EFD8

.func
.thumb_func
npc_809EFFC:
	push {lr}
	bl getPETNaviSelect // () -> u8
	ldr R1, off_809F018 // =unk_809D328 
	ldrb R0, [R1,R0]
	strh R0, [R5,#0x3C]
	mov R0, #0x18
	str R0, [R5,#0x78]
	ldr R0, [R5,#0x60]
	mov R1, #0x80
	bic R0, R1
	str R0, [R5,#0x60]
	add R6, #1
	pop {pc}
off_809F018: .word unk_809D328
.endfunc // npc_809EFFC

npc_809F01C:
	ldrb R0, [R6,#1]
	strh R0, [R5,#0x3C]
	ldrb R0, [R6,#2]
	str R0, [R5,#0x78]
	ldr R0, [R5,#0x60]
	mov R1, #0x80
	bic R0, R1
	str R0, [R5,#0x60]
	add R6, #3
	mov PC, LR
npc_809F030:
	mov R0, #8
	ldr R1, [R5,#0x60]
	eor R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
npc_809F03C:
	mov R0, #0x10
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	mov PC, LR
.func
.thumb_func
npc_809F048:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	bl sound_play // () -> void
	add R6, #3
	pop {pc}
.endfunc // npc_809F048

.func
.thumb_func
npc_809F058:
	push {lr}
	mov R0, #0xC0
	lsl r0, r0, #4
	mov R1, #2
	orr R0, R1
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	mov R1, #0x90
	str R0, [R5,R1]
	bl sub_809FC1C
	tst R0, R0
	beq loc_809F0BE
	ldr R4, off_809F0E0 // =dword_809F0E4 
	ldrb R4, [R4,R0]
	strb R4, [R5,#0x16]
	mov r4, #0x40 
	mul R4, R1
	ldr R1, [R5,#0x60]
	orr R1, R4
	str R1, [R5,#0x60]
	mov R3, #0xFF
	strb R3, [R5,#0x1C]
	ldr R0, off_809F0DC // =dword_873D108 
	mov R1, #0x94
	str R0, [R5,R1]
	mov R1, #0
	ldrsh R0, [R2,R1]
	lsl r0, r0, #0x10
	str R0, [R5,#0x24]
	mov R1, #2
	ldrsh R0, [R2,R1]
	lsl r0, r0, #0x10
	str R0, [R5,#0x28]
	mov R1, #4
	ldrsh R0, [R2,R1]
	lsl r0, r0, #0x10
	str R0, [R5,#0x2C]
	mov R0, #4
	strb R0, [R5,#0xC]
	mov R0, #2
	strb R0, [R5,#0x11]
	mov R0, #2
	neg R0, R0
	strb R0, [R5,#0x12]
	add R6, #3
	pop {pc}
loc_809F0BE:
	mov R0, #1
	strb R0, [R5]
	mov R0, #0x80
	mov R1, #0x1C
	mov R2, #0xA0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // npc_809F058

	bl sub_8004602
	bl npc_809F51E
	pop {pc}
	.balign 4, 0x00
off_809F0DC: .word dword_873D108
off_809F0E0: .word dword_809F0E4
dword_809F0E4: .word 0x20000FF, 0xFF030102, 0x7870B500, 0x51E82780, 0x7268200C
	.word 0x81682000, 0xFA0FF000, 0xBD003602, 0x1C70B500, 0xFAA0F000
	.word 0xFEE0F763, 0xBD003603
.func
.thumb_func
sub_809F114:
	push {lr}
	bl sub_8002F2C
	ldrb R0, [R6,#1]
	ldrb R1, [R6,#2]
	add r2, r0, r1
	tst R2, R2
	beq loc_809F128
	bl sub_8002EF6
loc_809F128:
	add R6, #3
	pop {pc}
.endfunc // sub_809F114

.func
.thumb_func
sub_809F12C:
	ldrb R0, [R6,#1]
	strb R0, [R5,#0x14]
	mvn R0, R0
	strb R0, [R5,#0x15]
	add R6, #2
	mov PC, LR
.endfunc // sub_809F12C

.func
.thumb_func
sub_809F138:
	push {lr}
	bl sprite_makeUnscalable
	bl sprite_makeScalable
	ldrb R0, [R6,#1]
	ldrb R1, [R6,#2]
	ldrb R2, [R6,#3]
	bl sprite_setScaleParameters
	add R6, #4
	pop {pc}
.endfunc // sub_809F138

.func
.thumb_func
sub_809F150:
	push {lr}
	bl sprite_makeUnscalable
	add R6, #1
	pop {pc}
.endfunc // sub_809F150

.func
.thumb_func
sub_809F15A:
	push {lr}
	bl sub_8002CCE
	ldrb R0, [R6,#1]
	tst R0, R0
	beq loc_809F16A
	bl sub_8002C7A
loc_809F16A:
	add R6, #2
	pop {pc}
.endfunc // sub_809F15A

.func
.thumb_func
sub_809F16E:
	push {lr}
	add r0, r6, #1
	bl sub_809F656 // (void* a1) -> int
	str R0, [R5,#0x5C]
	add R6, #5
	pop {pc}
.endfunc // sub_809F16E

.func
.thumb_func
sub_809F17C:
	push {lr}
	mov R0, #0
	strb R0, [R5,#0xB]
	ldrb R0, [R6,#1]
	strh R0, [R5,#0x22]
	mov R0, #1
	strb R0, [R5,#0x1F]
	add R6, #2
	pop {pc}
.endfunc // sub_809F17C

loc_809F18E:
	mov R0, #0
	str R0, [R5,#0x5C]
	strh R0, [R5,#0x22]
	mov R6, #0
	mov PC, LR
.func
.thumb_func
sub_809F198:
	push {lr}
	mov R4, #0x8C
	add r0, r6, #5
	str R0, [R5,R4]
	add r0, r6, #1
	bl sub_809F656 // (void* a1) -> int
	str R0, [R5,#0x7C]
	mov R0, #0x10
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	mov R2, #0x8C
	mov R1, #0x80
	mov R0, #0
loc_809F1B6:
	str R0, [R5,R1]
	add R1, #4
	cmp R1, R2
	ble loc_809F1B6
	bl npc_809F51E
	add R6, #5
	pop {pc}
.endfunc // sub_809F198

.func
.thumb_func
sub_809F1C6:
	push {lr}
	mov R4, #0x8C
	add r0, r6, #5
	str R0, [R5,R4]
	add r0, r6, #1
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
.endfunc // sub_809F1C6

.func
.thumb_func
sub_809F1D8:
	push {lr}
	mov R4, #0x8C
	mov R1, #9
	add r0, r6, r1
	str R0, [R5,R4]
	ldrb R2, [R6,#1]
	strb R2, [R5,#0xE]
	ldrb R2, [R6,#2]
	strb R2, [R5,#4]
	ldrb R2, [R6,#3]
	strb R2, [R5,#5]
	ldrb R2, [R6,#4]
	strh R2, [R5,#0x20]
	add r0, r6, #5
	bl sub_809F656 // (void* a1) -> int
	str R0, [R5,#0x7C]
	mov R0, #0x10
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	mov R2, #0x8C
	mov R1, #0x80
	mov R0, #0
loc_809F208:
	str R0, [R5,R1]
	add R1, #4
	cmp R1, R2
	ble loc_809F208
	bl npc_809F51E
	add R6, #9
	pop {pc}
.endfunc // sub_809F1D8

.func
.thumb_func
sub_809F218:
	push {lr}
	mov R4, #0x8C
	mov R1, #8
	add r0, r6, r1
	str R0, [R5,R4]
	ldrb R2, [R6,#1]
	mov R4, #0x81
	strb R2, [R5,R4]
	ldrb R2, [R6,#2]
	mov R4, #0x82
	strb R2, [R5,R4]
	ldrb R2, [R6,#3]
	mov R4, #0x83
	strb R2, [R5,R4]
	add r0, r6, #4
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
.endfunc // sub_809F218

.func
.thumb_func
sub_809F23E:
	push {lr}
	ldrb R0, [R6,#1]
	mov R4, #0x81
	ldrb R2, [R5,R4]
	add r2, r2, r0
	mov R0, #7
	and R2, R0
	strb R2, [R5,#0xE]
	mov R4, #0x82
	ldrb R2, [R5,R4]
	strb R2, [R5,#4]
	mov R4, #0x83
	ldrb R2, [R5,R4]
	strb R2, [R5,#5]
	mov R0, #4
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	bl npc_809F51E
	add R6, #2
	pop {pc}
.endfunc // sub_809F23E

loc_809F26A:
	mov R4, #0x8C
	ldr R6, [R5,R4]
	mov PC, LR
.func
.thumb_func
sub_809F270:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#6]
	ldrb R1, [R6,#1]
	cmp R0, R1
	blt loc_809F28E
	ldrb R2, [R6,#2]
	cmp R0, R2
	bgt loc_809F28E
	add r0, r6, #3
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	b locret_809F290
loc_809F28E:
	add R6, #7
locret_809F290:
	pop {pc}
.endfunc // sub_809F270

.func
.thumb_func
sub_809F292:
	push {lr}
	mov R4, R10
	ldr R4, [R4,#0x10]
	ldrb R0, [R6,#1]
	ldrb R1, [R6,#2]
	strb R1, [R4,R0]
	add R6, #3
	pop {pc}
.endfunc // sub_809F292

.func
.thumb_func
sub_809F2A2:
	push {lr}
	mov R4, R10
	ldr R4, [R4,#0x10]
	ldrb R0, [R6,#1]
	ldrb R1, [R6,#2]
	ldrb R0, [R4,R0]
	cmp R0, R1
	bne loc_809F2BC
	add r0, r6, #3
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
loc_809F2BC:
	add R6, #7
	pop {pc}
.endfunc // sub_809F2A2

.func
.thumb_func
sub_809F2C0:
	push {lr}
	mov R4, R10
	ldr R4, [R4,#0x10]
	ldrb R0, [R6,#1]
	ldrb R1, [R6,#2]
	ldrb R0, [R4,R0]
	cmp R0, R1
	beq loc_809F2DA
	add r0, r6, #3
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
loc_809F2DA:
	add R6, #7
	pop {pc}
.endfunc // sub_809F2C0

.func
.thumb_func
sub_809F2DE:
	push {r7,lr}
	mov R0, #0x14
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	ldrb R0, [R6,#1]
	mov R7, #0x80
	str R0, [R5,R7]
	ldrb R0, [R6,#2]
	mov R7, #0x84
	str R0, [R5,R7]
	bl npc_809F51E
	add R6, #3
	pop {r7,pc}
.endfunc // sub_809F2DE

.func
.thumb_func
sub_809F2FC:
	push {lr}
	mov r0, #0x20 
	lsl r0, r0, #4
	ldr R1, [R5,#0x60]
	bic R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	pop {pc}
.endfunc // sub_809F2FC

.func
.thumb_func
sub_809F30C:
	push {lr}
	mov r0, #0x20 
	lsl r0, r0, #4
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add R6, #1
	pop {pc}
.endfunc // sub_809F30C

.func
.thumb_func
sub_809F31C:
	push {lr}
	ldrb R0, [R6,#1]
	strb R0, [R5,#0x1C]
	ldr R0, off_809F6AC // =0x400 
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	add r0, r6, #2
	bl sub_809F656 // (void* a1) -> int
	mov R1, #0x94
	str R0, [R5,R1]
	add R6, #6
	pop {pc}
.endfunc // sub_809F31C

.func
.thumb_func
sub_809F338:
	push {r7,lr}
	mov R0, #0x18
	strb R0, [R5,#9]
	mov R0, #0
	strh R0, [R5,#0xA]
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	mov R7, #0x80
	str R0, [R5,R7]
	bl npc_809F51E
	add R6, #3
	pop {r7,pc}
.endfunc // sub_809F338

.func
.thumb_func
sub_809F354:
	push {lr}
	mov R7, R10
	ldr R4, [R7,#0x1C]
	ldr R7, off_809F4B4 // =byte_87E30A0 
	bl sub_8002C68
	ldrb R0, [R6,#1]
	tst R0, R0
	bne loc_809F36A
	bl sub_8002C52
loc_809F36A:
	add R6, #2
	pop {pc}
.endfunc // sub_809F354

.func
.thumb_func
sub_809F36E:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	bl sound_bgmusic_play // (int a1) -> void
	add R6, #3
	pop {pc}
.endfunc // sub_809F36E

.func
.thumb_func
sub_809F37E:
	push {lr}
	bl sub_8003006
	add R6, #1
	pop {pc}
.endfunc // sub_809F37E

.func
.thumb_func
sub_809F388:
	push {lr}
	bl sub_8002E52
	add R6, #1
	pop {pc}
.endfunc // sub_809F388

.func
.thumb_func
sub_809F392:
	push {lr}
	add r0, r6, #2
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	add r1, r0, #0
	ldrb R0, [R6,#1]
	bl sub_80302A8
	add R6, #4
	pop {pc}
.endfunc // sub_809F392

.func
.thumb_func
sub_809F3A6:
	push {lr}
	ldrb R0, [R6,#1]
	ldrb R1, [R5,#0x14]
	cmp R1, R0
	bne loc_809F3B4
	add R6, #6
	pop {pc}
loc_809F3B4:
	add R6, #2
	add r0, r6, #0
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
.endfunc // sub_809F3A6

.func
.thumb_func
sub_809F3C0:
	push {lr}
	ldrb R0, [R6,#1]
	strb R0, [R5,#0x1C]
	ldr R0, off_809F6AC // =0x400 
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	ldr R3, off_809F3D8 // =byte_202FA04 
	mov R1, #0x94
	str R3, [R5,R1]
	add R6, #2
	pop {pc}
off_809F3D8: .word byte_202FA04
	.word off_809F3E0
off_809F3E0: .word off_8044470
	.word off_80444C4
.endfunc // sub_809F3C0

.func
.thumb_func
sub_809F3E8:
	push {lr}
	add r0, r6, #5
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	b locret_809F3F4
locret_809F3F4:
	pop {pc}
.endfunc // sub_809F3E8

.func
.thumb_func
sub_809F3F6:
	push {lr}
	ldrb R0, [R6,#1]
	strb R0, [R5,#4]
	ldrb R0, [R6,#2]
	strb R0, [R5,#5]
	ldrb R0, [R6,#3]
	strb R0, [R5,#6]
	ldrb R0, [R6,#4]
	strb R0, [R5,#7]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #8
	strh R0, [R5,#0xA]
	bl npc_809F51E
	add R6, #5
	pop {pc}
.endfunc // sub_809F3F6

.func
.thumb_func
sub_809F418:
	push {lr}
	ldrb R2, [R6,#1]
	strb R2, [R5,#4]
	ldrb R2, [R6,#2]
	strb R2, [R5,#5]
	ldrb R2, [R6,#3]
	strb R2, [R5,#6]
	mov R0, #4
	strb R0, [R5,#9]
	mov R0, #8
	strh R0, [R5,#0xA]
	bl npc_809F51E
	add R6, #4
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_809F418

.func
.thumb_func
sub_809F438:
	push {lr}
	ldrb R0, [R6,#1]
	strb R0, [R5,#4]
	ldrb R0, [R6,#2]
	strb R0, [R5,#5]
	ldrb R0, [R6,#3]
	strb R0, [R5,#6]
	ldrb R0, [R6,#4]
	strb R0, [R5,#7]
	mov R0, #8
	strb R0, [R5,#9]
	mov R0, #0x10
	strh R0, [R5,#0xA]
	bl npc_809F51E
	add R6, #5
	pop {pc}
.endfunc // sub_809F438

.func
.thumb_func
sub_809F45A:
	push {lr}
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_809F498
	add r0, r6, #1
	bl getBitfieldFromArr_809F64C // (u8 bitfield_arr[2]) -> u16
	bl sub_8143B88
	tst R1, R1
	beq loc_809F498
	strb R2, [R5,#0x1C]
	ldr R3, off_809F4B4 // =byte_87E30A0 
	mov R2, #0x94
	str R3, [R5,R2]
	add r0, r1, #0
	bl sub_8143DBC
	str R0, [R5,#0x24]
	str R1, [R5,#0x28]
	str R2, [R5,#0x2C]
	add R6, #3
	ldr R0, dword_809F6B0 // =0x1400 
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	pop {pc}
loc_809F498:
	mov R0, #1
	strb R0, [R5]
	mov R0, #0x80
	mov R1, #0x1C
	mov R2, #0xA0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_809F45A

	bl sub_8004602
	bl npc_809F51E
	pop {pc}
off_809F4B4: .word byte_87E30A0
.func
.thumb_func
sub_809F4B8:
	push {lr}
	bl sub_8002DEA
	mov R0, #7
	and R0, R2
	add r0, #0x21 
	strb R0, [R5,#0x14]
	mvn R0, R0
	strb R0, [R5,#0x15]
	mov R0, #0x11
	ldr R1, [R5,#0x60]
	orr R1, R0
	str R1, [R5,#0x60]
	push {r5}
	mov R0, #0
	ldr R1, [R5,#0x24]
	ldr R2, [R5,#0x28]
	ldr R3, [R5,#0x2C]
	mov R4, #1
	bl sub_80047E0
	pop {r5}
	mov r0, #0x76 
	bl sound_play // () -> void
	add R6, #1
	pop {pc}
.endfunc // sub_809F4B8

.func
.thumb_func
npc_809F4EE:
	push {lr}
	bl sub_80062C8
	cmp R1, #0
	beq loc_809F502
	add r0, r6, #1
	bl sub_809F656 // (void* a1) -> int
	add r6, r0, #0
	pop {pc}
loc_809F502:
	add R6, #5
	pop {pc}
.endfunc // npc_809F4EE

.func
.thumb_func
sub_809F506:
	push {lr}
	str R0, [R5,#0x4C]
	mov R0, #0
	strb R0, [R5,#0x19]
	strb R0, [R5,#0x18]
	strb R0, [R5,#0x1F]
	str R0, [R5,#0x5C]
	pop {pc}
.endfunc // sub_809F506

.func
.thumb_func
sub_809F516:
	push {lr}
	mov R0, #0
	strb R0, [R5,#0x19]
	pop {pc}
.endfunc // sub_809F516

.func
.thumb_func
npc_809F51E:
	push {lr}
	mov R0, #1
	strb R0, [R5,#0x19]
	pop {pc}
.endfunc // npc_809F51E

/*For debugging purposes, connect comment at any range!*/
