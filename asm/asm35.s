.include "asm/asm35.inc"

.func
.thumb_func
sub_812EAAC:
	push {R4-R7,lr}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_812EAC0 // =unk_201EE20 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
off_812EAC0: .word unk_201EE20
.endfunc // sub_812EAAC

.func
.thumb_func
sub_812EAC4:
	push {R4-R7,lr}
	sub sp, sp, #4
	ldr R0, off_812EB68 // =word_2023FA0 
	add R0, #4
	str R0, [SP]
	bl sub_812ED2C
	add r5, r0, #0
	ldr R0, off_812EB68 // =word_2023FA0 
	ldr R1, off_812EB74 // =0xBC 
	lsl r1, r1, #2
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, off_812EB68 // =word_2023FA0 
	mov R1, #0x90
	strh R1, [R0]
	mov R1, #1
	strh R1, [R0,#0x2] // (word_2023FA2 - 0x2023FA0)
	mov R4, #0x91
loc_812EAEA:
	add r0, r4, #0
	bl sub_803CE28
	add r7, r0, #0
	beq loc_812EB28
	mov R6, #0
loc_812EAF6:
	add r0, r6, #0
	bl sub_813B9FC
	ldrh R1, [R0]
	add R1, #0x90
	cmp R1, R4
	bne loc_812EB06
	sub R7, #1
loc_812EB06:
	add R6, #1
	cmp r6, #0x31 
	blt loc_812EAF6
	tst R7, R7
	beq loc_812EB28
	add r0, r4, #0
	sub R0, #0x90
	bl sub_813B780
	ldrb R1, [R0,#3]
	cmp R1, #0
	beq loc_812EB28
	ldr R0, [SP]
	strh R4, [R0]
	strh R7, [R0,#2]
	add R0, #4
	str R0, [SP]
loc_812EB28:
	add R4, #1
	ldr R0, off_812EB70 // =0x14C 
	cmp R4, R0
	blt loc_812EAEA
	ldr R1, off_812EB68 // =word_2023FA0 
	ldr R0, [SP]
	sub r0, r0, r1
	lsr r0, r0, #2
	strh R0, [R5,#0x1E]
	cmp R0, #7
	blt loc_812EB54
	ldrh R1, [R5,#0x24]
	sub R0, #7
	cmp R1, R0
	ble loc_812EB62
	strh R0, [R5,#0x24]
	ldrh R1, [R5,#0x20]
	sub r1, r1, r0
	cmp R1, #7
	ble loc_812EB62
	strh R1, [R5,#0x20]
	b loc_812EB62
loc_812EB54:
	ldrh R1, [R5,#0x20]
	cmp R1, R0
	blt loc_812EB5C
	add r1, r0, #0
loc_812EB5C:
	strh R1, [R5,#0x20]
	mov R0, #0
	strh R0, [R5,#0x24]
loc_812EB62:
	add sp, sp, #4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812EB68: .word word_2023FA0
	.word word_2023FA4
off_812EB70: .word 0x14C
off_812EB74: .word 0xBC
.endfunc // sub_812EAC4

	push {lr}
	ldr R0, off_812EB84 // =dword_812DA94 
	bl sub_80465A0 // (void *a1) -> void
	pop {pc}
	.balign 4, 0x00
off_812EB84: .word dword_812DA94
	push {R4-R7,lr}
	mov r2, #0x44 
	mov R1, #9
	ldr R4, off_812EBB0 // =dword_812DA94+40 
	b loc_812EB9A
.func
.thumb_func
sub_812EB92:
	push {R4-R7,lr}
	mov r2, #0x3c 
	mov R1, #0
	ldr R4, off_812EBB4 // =dword_812DA94+48 
loc_812EB9A:
	push {r1,r2}
	add r0, r1, #0
	bl sub_80466C4
	pop {r1,r2}
	bne locret_812EBAC
	add r0, r4, #0
	bl sub_812EBD8
locret_812EBAC:
	pop {R4-R7,pc}
	.byte 0, 0
off_812EBB0: .word dword_812DA94+0x28
off_812EBB4: .word dword_812DA94+0x30
.endfunc // sub_812EB92

.func
.thumb_func
sub_812EBB8:
	push {R4-R7,lr}
	mov R1, #1
	push {r1}
	add r0, r1, #0
	bl sub_80466C4
	pop {r1}
	bne locret_812EBD0
	mov R2, #0xB4
	ldr R0, off_812EBD4 // =dword_812DA94+56 
	bl sub_812EBD8
locret_812EBD0:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812EBD4: .word dword_812DA94+0x38
.endfunc // sub_812EBB8

.func
.thumb_func
sub_812EBD8:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R2, [SP]
	add r6, r1, #0
	bl sub_80465A0 // (void *a1) -> void
	add r0, r6, #0
	bl sub_80466C4
	beq loc_812EBFE
	add r5, r1, #0
	ldr R0, [SP]
	cmp r0, #0x44 
	beq loc_812EBF8
	mov r1, #0x44 
	b loc_812EBFA
loc_812EBF8:
	mov r1, #0x34 
loc_812EBFA:
	bl sub_800307C
loc_812EBFE:
	add sp, sp, #4
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812EBD8

	push {R4-R7,lr}
	bl sub_812ED2C
	add r5, r0, #0
	ldr R0, off_812EC28 // =word_2023FA0 
	ldrh R4, [R5,#0x20]
	ldrh R1, [R5,#0x24]
	add r4, r4, r1
	mov R1, #4
	mul R1, R4
	add r0, r0, r1
	ldrh R0, [R0]
	mov R2, #9
	add r3, r4, #0
	mov R1, #0
	bl sub_811BC00
	pop {R4-R7,pc}
off_812EC28: .word word_2023FA0
.func
.thumb_func
sub_812EC2C:
	push {R4-R7,lr}
	add r6, r2, #0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	add r4, r0, #0
	add r2, r1, #0
	mov R3, #0
	add r1, r6, #0
	bl sub_811BC00
	add r0, r4, #0
	pop {R4-R7,pc}
.endfunc // sub_812EC2C

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
	bne loc_812EC60
	mov R2, #0
	b loc_812EC62
loc_812EC60:
	ldrh R2, [R5,R3]
loc_812EC62:
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
	bne loc_812EC90
	ldr R1, off_812ECA8 // =dword_8129180 
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_812EC90:
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
	.word dword_8129178
off_812ECA8: .word dword_8129180
	push {R4-R7,lr}
	bl sub_812ED2C
	add r7, r0, #0
	ldrh R0, [R7,#0x20]
	strh R0, [R7,#0x22]
	ldrh R0, [R7,#0x24]
	strh R0, [R7,#0x26]
	ldrh R0, [R7,#0x1E]
	tst R0, R0
	beq loc_812ECFA
	mov R4, #0
	push {r5,r7}
	add r5, r7, #0
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #6
	mov R2, #0
	mov R3, #0
	bl sub_811F7F8
	pop {r5,r7}
	tst R0, R0
	beq loc_812ECE4
	add r4, r1, #0
	bl sub_812EF20
loc_812ECE4:
	ldrb R0, [R7,#0xC]
	cmp R0, #0xC
	beq loc_812ECF2
	add r1, r4, #0
	bl sub_812EEEC
	strb R0, [R7,#0xC]
loc_812ECF2:
	ldrh R0, [R7,#0x24]
	ldrh R1, [R7,#0x20]
	strh R0, [R7,#0x3E]
	strh R1, [R7,#0x3C]
loc_812ECFA:
	mov R0, #2
	bl sub_811F7EC
	bne loc_812ED12
	mov R0, #1
	bl sub_811F7EC
	beq locret_812ED2A
	mov R1, #4
	ldrb R0, [R5,#0x11]
	tst R0, R0
	beq loc_812ED1C
loc_812ED12:
	ldrb R1, [R5,#0x1B]
	mov R0, #1
	orr R1, R0
	strb R1, [R5,#0x1B]
	mov R1, #8
loc_812ED1C:
	strh R1, [R5,#0x26]
	mov R0, #0x81
	cmp R1, #4
	beq loc_812ED26
	mov R0, #0x83
loc_812ED26:
	bl sound_play // () -> void
locret_812ED2A:
	pop {R4-R7,pc}
.func
.thumb_func
sub_812ED2C:
	ldr R0, off_812ED30 // =unk_2037780 
	mov PC, LR
off_812ED30: .word unk_2037780
.endfunc // sub_812ED2C

	push {lr}
	bl sub_812ED2C
	add r1, r0, #0
	ldrh R0, [R1,#0x24]
	ldrh R2, [R1,#0x20]
	add r0, r0, r2
	mov R1, #4
	mul R0, R1
	ldr R1, off_812ED54 // =word_2023FA0 
	add r1, r1, r0
	ldrh R0, [R1]
	mov R2, #0x80
	lsl r2, r2, #8
	orr R0, R2
	pop {pc}
off_812ED54: .word word_2023FA0
	push {lr}
	bl sub_80062C8
	cmp R0, #0xC
	bne loc_812ED6A
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812ED6A:
	mov R0, #0x1C
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#0xC]
	strb R0, [R5,#3]
	ldrb R1, [R5,#0x1B]
	mov R0, #1
	tst R1, R0
	bne locret_812ED90
	mov r1, #0x40 
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #2
	bne loc_812ED8A
	mov r1, #0x30 
loc_812ED8A:
	add r0, r1, #0
	bl sub_8132280
locret_812ED90:
	pop {pc}
	.balign 4, 0x00
	push {R4-R7,lr}
	add r7, r5, #0
	bl sub_800183C
	bl sub_8046664 // () -> void
	mov R0, #0
	mov R1, #0
	mov R2, #1
	ldr R3, off_812EDE0 // =unk_201E920 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	add r5, r7, #0
	bl sub_812EB92
	ldrh R0, [R5,#0x2A]
	mov R1, #0
	mov R2, #4
	bl sub_812EC2C
	mov R1, #0
	bl sub_812EDFC
	mov R0, #0
	bl loc_812EE38
	bl sub_812EBB8
	mov R0, #0x90
	mov R1, #1
	mov R2, #4
	bl sub_812EC2C
	bl sub_812EDE4
	pop {R4-R7,pc}
off_812EDE0: .word unk_201E920
.func
.thumb_func
sub_812EDE4:
	push {lr}
	ldr R0, off_812EDF4 // =dword_812DA94+64 
	b loc_812EDEE
	push {lr}
	// a1
	ldr R0, off_812EDF8 // =dword_812DA94+72 
loc_812EDEE:
	bl sub_80465A0 // (void *a1) -> void
	pop {pc}
off_812EDF4: .word dword_812DA94+0x40
off_812EDF8: .word dword_812DA94+0x48
.endfunc // sub_812EDE4

.func
.thumb_func
sub_812EDFC:
	push {r4,lr}
	lsl r1, r1, #2
	add r4, r0, #0
	sub R4, #0x90
	lsr r4, r4, #2
	ldr R2, off_812EE14 // =off_812EE18 
	ldr R2, [R2,R1]
	mov R3, #0xA
	bl sub_8120280
	pop {r4,pc}
	.balign 4, 0x00
off_812EE14: .word off_812EE18
off_812EE18: .word unk_2024F90
	.word unk_2024FB0
.endfunc // sub_812EDFC

.func
.thumb_func
sub_812EE20:
	push {R4-R7,lr}
	mov R0, #0
	ldr R1, off_812EEAC // =off_812EEB0 
	ldr R3, [R1,R0]
	mov R4, #4
	add r7, r4, #0
	mov R0, #8
	ldrh R2, [R5,#0x30]
	ldr R1, off_812EED0 // =off_812EED8 
	ldrb R2, [R1,R2]
	add r7, r7, r2
	b loc_812EE4E
loc_812EE38:
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R1, off_812EEAC // =off_812EEB0 
	ldr R3, [R1,R0]
	ldr R1, off_812EEB8 // =dword_812EEBC 
	ldr R4, [R1,R0]
	add r7, r4, #0
	ldrh R2, [R5,#0x30]
	ldr R1, dword_812EED4 // = 
	ldrb R2, [R1,R2]
	add r7, r7, r2
loc_812EE4E:
	ldr R1, off_812EEB8 // =dword_812EEBC 
	add R0, #8
	ldr R6, [R1,R0]
	push {r3}
	add r0, r4, #0
	add r1, r6, #0
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_812EE20

	pop {r3}
	add r0, r7, #0
	add r1, r6, #0
	mov R2, #2
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R1, off_812EEAC // =off_812EEB0 
	ldr R3, [R1,R0]
	ldr R1, off_812EEB8 // =dword_812EEBC 
	ldr R4, [R1,R0]
	tst R0, R0
	beq loc_812EE92
	ldrh R2, [R5,#0x30]
	mov R1, #8
	sub r1, r1, r2
	add r7, r4, r1
	b loc_812EE94
loc_812EE92:
	add r7, r4, #0
loc_812EE94:
	ldr R1, off_812EEB8 // =dword_812EEBC 
	add R0, #8
	ldr R6, [R1,R0]
	add r0, r4, #0
	add r1, r6, #0
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
	pop {R4-R7,pc}
off_812EEAC: .word off_812EEB0
off_812EEB0: .word unk_2024F90
	.word unk_2024FB0
off_812EEB8: .word dword_812EEBC
dword_812EEBC: .word 0x3, 0x12, 0xB, 0xB, 0x9
off_812EED0: .word off_812EED8
dword_812EED4: .word 0x812EEE1
off_812EED8: .word byte_2030000
	.word 0x1010202, 0x3000000, 0x1020202, 0x1
.func
.thumb_func
sub_812EEEC:
	push {R4-R7,lr}
	bl sub_812ED2C
	add r7, r0, #0
	tst R1, R1
	bne loc_812EF0A
	mov R4, #0
	ldrh R0, [R7,#0x24]
	ldrh R1, [R7,#0x26]
	sub r2, r0, r1
	bge loc_812EF06
	mvn R2, R2
	add R2, #1
loc_812EF06:
	cmp R2, #6
	bne loc_812EF0E
loc_812EF0A:
	mov R4, #0xC
	b loc_812EF1A
loc_812EF0E:
	cmp R0, R1
	beq loc_812EF1A
	mov R4, #8
	cmp R0, R1
	bgt loc_812EF1A
	mov R4, #4
loc_812EF1A:
	add r0, r4, #0
	pop {R4-R7,pc}
	.byte 0, 0
.endfunc // sub_812EEEC

.func
.thumb_func
sub_812EF20:
	push {R4-R7,lr}
	bl sub_812ED2C
	add r7, r0, #0
	ldrh R0, [R7,#0x20]
	ldrh R1, [R7,#0x24]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr R1, off_812EF8C // =word_2023FA0 
	ldrh R1, [R1,R0]
	add r4, r1, #0
	sub R1, #0x90
	lsr r1, r1, #2
	add r0, r1, #0
	mov R2, #0x90
	bl sub_812EF60
.endfunc // sub_812EF20

	add r0, r4, #0
	mov R1, #9
	mov R2, #0
	bl sub_812EC2C
	mov R1, #0
	bl sub_812EDFC
	strh R0, [R5,#0x30]
	bl sub_812EE20
	pop {R4-R7,pc}
	.balign 4, 0x00
	.word unk_2024F90
.func
.thumb_func
sub_812EF60:
	push {R4-R7,lr}
	add r1, r0, #0
	ldr R0, off_812EF90 // =unk_2025070 
	ldr R2, off_812EF94 // =unk_201B200 
	ldr R3, dword_812EF98 // =0x600B800 
	mov R4, #0xA
	mov R5, #3
	ldr R6, off_812EF9C // =dword_86A5D60 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_812EF60

	bl sub_812EFA4
	mov R0, #3
	mov R1, #0xD
	mov R2, #3
	ldr R3, off_812EFA0 // =unk_2025A70 
	mov R4, #0xA
	mov R5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
off_812EF8C: .word word_2023FA0
off_812EF90: .word unk_2025070
off_812EF94: .word unk_201B200
dword_812EF98: .word 0x600B800
off_812EF9C: .word dword_86A5D60
off_812EFA0: .word unk_2025A70
.func
.thumb_func
sub_812EFA4:
	push {R4-R7,lr}
	ldr R7, dword_812EFCC // =0x21C0 
	ldr R6, off_812EFD0 // =unk_2025A70 
	mov R4, #0
	mov R1, #0
loc_812EFAE:
	strh R7, [R6,R4]
	add R7, #1
	mov R0, #0x14
	add r0, r0, r4
	strh R7, [R6,R0]
	add R7, #1
	add R4, #2
	add R1, #2
	cmp R1, #0x14
	blt loc_812EFAE
	mov R1, #0
	add R4, #0x14
	cmp r4, #0x78 
	blt loc_812EFAE
	pop {R4-R7,pc}
dword_812EFCC: .word 0x21C0
off_812EFD0: .word unk_2025A70
.endfunc // sub_812EFA4

.func
.thumb_func
sub_812EFD4:
	push {R4-R7,lr}
	// <endpool> <endfile>
	pop {R4-R7,pc}
.endfunc // sub_812EFD4

/*For debugging purposes, connect comment at any range!*/
