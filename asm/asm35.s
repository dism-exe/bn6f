.include "asm/asm35.inc"

.func
.thumb_func
sub_812EAAC:
	push {r4-r7,lr}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_812EAC0 // =unk_201EE20 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_812EAC0: .word unk_201EE20
.endfunc // sub_812EAAC

.func
.thumb_func
sub_812EAC4:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r0, off_812EB68 // =word_2023FA0 
	add r0, #4
	str r0, [sp]
	bl sub_812ED2C
	add r5, r0, #0
	ldr r0, off_812EB68 // =word_2023FA0 
	ldr r1, off_812EB74 // =0xBC 
	lsl r1, r1, #2
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr r0, off_812EB68 // =word_2023FA0 
	mov r1, #0x90
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0,#0x2] // (word_2023FA2 - 0x2023fa0)
	mov r4, #0x91
loc_812EAEA:
	add r0, r4, #0
	bl sub_803CE28
	add r7, r0, #0
	beq loc_812EB28
	mov r6, #0
loc_812EAF6:
	add r0, r6, #0
	bl sub_813B9FC
	ldrh r1, [r0]
	add r1, #0x90
	cmp r1, r4
	bne loc_812EB06
	sub r7, #1
loc_812EB06:
	add r6, #1
	cmp r6, #0x31 
	blt loc_812EAF6
	tst r7, r7
	beq loc_812EB28
	add r0, r4, #0
	sub r0, #0x90
	bl sub_813B780
	ldrb r1, [r0,#3]
	cmp r1, #0
	beq loc_812EB28
	ldr r0, [sp]
	strh r4, [r0]
	strh r7, [r0,#2]
	add r0, #4
	str r0, [sp]
loc_812EB28:
	add r4, #1
	ldr r0, off_812EB70 // =0x14C 
	cmp r4, r0
	blt loc_812EAEA
	ldr r1, off_812EB68 // =word_2023FA0 
	ldr r0, [sp]
	sub r0, r0, r1
	lsr r0, r0, #2
	strh r0, [r5,#0x1e]
	cmp r0, #7
	blt loc_812EB54
	ldrh r1, [r5,#0x24]
	sub r0, #7
	cmp r1, r0
	ble loc_812EB62
	strh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	sub r1, r1, r0
	cmp r1, #7
	ble loc_812EB62
	strh r1, [r5,#0x20]
	b loc_812EB62
loc_812EB54:
	ldrh r1, [r5,#0x20]
	cmp r1, r0
	blt loc_812EB5C
	add r1, r0, #0
loc_812EB5C:
	strh r1, [r5,#0x20]
	mov r0, #0
	strh r0, [r5,#0x24]
loc_812EB62:
	add sp, sp, #4
	pop {r4-r7,pc}
 .balign 4, 0x00
off_812EB68: .word word_2023FA0
 .word word_2023FA4
off_812EB70: .word 0x14C
off_812EB74: .word 0xBC
.endfunc // sub_812EAC4

	push {lr}
	ldr r0, off_812EB84 // =dword_812DA94 
	bl sub_80465A0 // (void *a1) -> void
	pop {pc}
 .balign 4, 0x00
off_812EB84: .word dword_812DA94
	push {r4-r7,lr}
	mov r2, #0x44 
	mov r1, #9
	ldr r4, off_812EBB0 // =dword_812DA94+40 
	b loc_812EB9A
.func
.thumb_func
sub_812EB92:
	push {r4-r7,lr}
	mov r2, #0x3c 
	mov r1, #0
	ldr r4, off_812EBB4 // =dword_812DA94+48 
loc_812EB9A:
	push {r1,r2}
	add r0, r1, #0
	bl sub_80466C4
	pop {r1,r2}
	bne locret_812EBAC
	add r0, r4, #0
	bl sub_812EBD8
locret_812EBAC:
	pop {r4-r7,pc}
 .byte 0, 0
off_812EBB0: .word dword_812DA94+0x28
off_812EBB4: .word dword_812DA94+0x30
.endfunc // sub_812EB92

.func
.thumb_func
sub_812EBB8:
	push {r4-r7,lr}
	mov r1, #1
	push {r1}
	add r0, r1, #0
	bl sub_80466C4
	pop {r1}
	bne locret_812EBD0
	mov r2, #0xb4
	ldr r0, off_812EBD4 // =dword_812DA94+56 
	bl sub_812EBD8
locret_812EBD0:
	pop {r4-r7,pc}
 .balign 4, 0x00
off_812EBD4: .word dword_812DA94+0x38
.endfunc // sub_812EBB8

.func
.thumb_func
sub_812EBD8:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r2, [sp]
	add r6, r1, #0
	bl sub_80465A0 // (void *a1) -> void
	add r0, r6, #0
	bl sub_80466C4
	beq loc_812EBFE
	add r5, r1, #0
	ldr r0, [sp]
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
	pop {r4-r7,pc}
 .balign 4, 0x00
.endfunc // sub_812EBD8

	push {r4-r7,lr}
	bl sub_812ED2C
	add r5, r0, #0
	ldr r0, off_812EC28 // =word_2023FA0 
	ldrh r4, [r5,#0x20]
	ldrh r1, [r5,#0x24]
	add r4, r4, r1
	mov r1, #4
	mul r1, r4
	add r0, r0, r1
	ldrh r0, [r0]
	mov r2, #9
	add r3, r4, #0
	mov r1, #0
	bl sub_811BC00
	pop {r4-r7,pc}
off_812EC28: .word word_2023FA0
.func
.thumb_func
sub_812EC2C:
	push {r4-r7,lr}
	add r6, r2, #0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	add r4, r0, #0
	add r2, r1, #0
	mov r3, #0
	add r1, r6, #0
	bl sub_811BC00
	add r0, r4, #0
	pop {r4-r7,pc}
.endfunc // sub_812EC2C

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
	bne loc_812EC60
	mov r2, #0
	b loc_812EC62
loc_812EC60:
	ldrh r2, [r5,r3]
loc_812EC62:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	add r1, r7, #0
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
	bne loc_812EC90
	ldr r1, off_812ECA8 // =dword_8129180 
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_812EC90:
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
 .word dword_8129178
off_812ECA8: .word dword_8129180
	push {r4-r7,lr}
	bl sub_812ED2C
	add r7, r0, #0
	ldrh r0, [r7,#0x20]
	strh r0, [r7,#0x22]
	ldrh r0, [r7,#0x24]
	strh r0, [r7,#0x26]
	ldrh r0, [r7,#0x1e]
	tst r0, r0
	beq loc_812ECFA
	mov r4, #0
	push {r5,r7}
	add r5, r7, #0
	mov r0, r10
	ldr r0, [r0,#4]
	ldrh r0, [r0,#4]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	pop {r5,r7}
	tst r0, r0
	beq loc_812ECE4
	add r4, r1, #0
	bl sub_812EF20
loc_812ECE4:
	ldrb r0, [r7,#0xc]
	cmp r0, #0xc
	beq loc_812ECF2
	add r1, r4, #0
	bl sub_812EEEC
	strb r0, [r7,#0xc]
loc_812ECF2:
	ldrh r0, [r7,#0x24]
	ldrh r1, [r7,#0x20]
	strh r0, [r7,#0x3e]
	strh r1, [r7,#0x3c]
loc_812ECFA:
	mov r0, #2
	bl sub_811F7EC
	bne loc_812ED12
	mov r0, #1
	bl sub_811F7EC
	beq locret_812ED2A
	mov r1, #4
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_812ED1C
loc_812ED12:
	ldrb r1, [r5,#0x1b]
	mov r0, #1
	orr r1, r0
	strb r1, [r5,#0x1b]
	mov r1, #8
loc_812ED1C:
	strh r1, [r5,#0x26]
	mov r0, #0x81
	cmp r1, #4
	beq loc_812ED26
	mov r0, #0x83
loc_812ED26:
	bl sound_play // () -> void
locret_812ED2A:
	pop {r4-r7,pc}
.func
.thumb_func
sub_812ED2C:
	ldr r0, off_812ED30 // =unk_2037780 
	mov pc, lr
off_812ED30: .word unk_2037780
.endfunc // sub_812ED2C

	push {lr}
	bl sub_812ED2C
	add r1, r0, #0
	ldrh r0, [r1,#0x24]
	ldrh r2, [r1,#0x20]
	add r0, r0, r2
	mov r1, #4
	mul r0, r1
	ldr r1, off_812ED54 // =word_2023FA0 
	add r1, r1, r0
	ldrh r0, [r1]
	mov r2, #0x80
	lsl r2, r2, #8
	orr r0, r2
	pop {pc}
off_812ED54: .word word_2023FA0
	push {lr}
	bl sub_80062C8
	cmp r0, #0xc
	bne loc_812ED6A
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812ED6A:
	mov r0, #0x1c
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	ldrb r1, [r5,#0x1b]
	mov r0, #1
	tst r1, r0
	bne locret_812ED90
	mov r1, #0x40 
	bl sub_803EBF4
	ldrb r0, [r0,#0xe]
	cmp r0, #2
	bne loc_812ED8A
	mov r1, #0x30 
loc_812ED8A:
	add r0, r1, #0
	bl sub_8132280
locret_812ED90:
	pop {pc}
 .balign 4, 0x00
	push {r4-r7,lr}
	add r7, r5, #0
	bl sub_800183C
	bl sub_8046664 // () -> void
	mov r0, #0
	mov r1, #0
	mov r2, #1
	ldr r3, off_812EDE0 // =unk_201E920 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	add r5, r7, #0
	bl sub_812EB92
	ldrh r0, [r5,#0x2a]
	mov r1, #0
	mov r2, #4
	bl sub_812EC2C
	mov r1, #0
	bl sub_812EDFC
	mov r0, #0
	bl loc_812EE38
	bl sub_812EBB8
	mov r0, #0x90
	mov r1, #1
	mov r2, #4
	bl sub_812EC2C
	bl sub_812EDE4
	pop {r4-r7,pc}
off_812EDE0: .word unk_201E920
.func
.thumb_func
sub_812EDE4:
	push {lr}
	ldr r0, off_812EDF4 // =dword_812DA94+64 
	b loc_812EDEE
	push {lr}
	// a1
	ldr r0, off_812EDF8 // =dword_812DA94+72 
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
	sub r4, #0x90
	lsr r4, r4, #2
	ldr r2, off_812EE14 // =off_812EE18 
	ldr r2, [r2,r1]
	mov r3, #0xa
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
	push {r4-r7,lr}
	mov r0, #0
	ldr r1, off_812EEAC // =off_812EEB0 
	ldr r3, [r1,r0]
	mov r4, #4
	add r7, r4, #0
	mov r0, #8
	ldrh r2, [r5,#0x30]
	ldr r1, off_812EED0 // =off_812EED8 
	ldrb r2, [r1,r2]
	add r7, r7, r2
	b loc_812EE4E
loc_812EE38:
	push {r4-r7,lr}
	lsl r0, r0, #2
	ldr r1, off_812EEAC // =off_812EEB0 
	ldr r3, [r1,r0]
	ldr r1, off_812EEB8 // =dword_812EEBC 
	ldr r4, [r1,r0]
	add r7, r4, #0
	ldrh r2, [r5,#0x30]
	ldr r1, dword_812EED4 // = 
	ldrb r2, [r1,r2]
	add r7, r7, r2
loc_812EE4E:
	ldr r1, off_812EEB8 // =dword_812EEBC 
	add r0, #8
	ldr r6, [r1,r0]
	push {r3}
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl sub_80018D0
.endfunc // sub_812EE20

	pop {r3}
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #2
	mov r4, #8
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	push {r4-r7,lr}
	lsl r0, r0, #2
	ldr r1, off_812EEAC // =off_812EEB0 
	ldr r3, [r1,r0]
	ldr r1, off_812EEB8 // =dword_812EEBC 
	ldr r4, [r1,r0]
	tst r0, r0
	beq loc_812EE92
	ldrh r2, [r5,#0x30]
	mov r1, #8
	sub r1, r1, r2
	add r7, r4, r1
	b loc_812EE94
loc_812EE92:
	add r7, r4, #0
loc_812EE94:
	ldr r1, off_812EEB8 // =dword_812EEBC 
	add r0, #8
	ldr r6, [r1,r0]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl sub_80018D0
	pop {r4-r7,pc}
off_812EEAC: .word off_812EEB0
off_812EEB0: .word unk_2024F90
 .word unk_2024FB0
off_812EEB8: .word dword_812EEBC
dword_812EEBC: .word 0x3, 0x12, 0xB, 0xB, 0x9
off_812EED0: .word off_812EED8
dword_812EED4: .word 0x812EEE1
off_812EED8: .word unk_2030000
 .word 0x1010202, 0x3000000, 0x1020202, 0x1
.func
.thumb_func
sub_812EEEC:
	push {r4-r7,lr}
	bl sub_812ED2C
	add r7, r0, #0
	tst r1, r1
	bne loc_812EF0A
	mov r4, #0
	ldrh r0, [r7,#0x24]
	ldrh r1, [r7,#0x26]
	sub r2, r0, r1
	bge loc_812EF06
	mvn r2, r2
	add r2, #1
loc_812EF06:
	cmp r2, #6
	bne loc_812EF0E
loc_812EF0A:
	mov r4, #0xc
	b loc_812EF1A
loc_812EF0E:
	cmp r0, r1
	beq loc_812EF1A
	mov r4, #8
	cmp r0, r1
	bgt loc_812EF1A
	mov r4, #4
loc_812EF1A:
	add r0, r4, #0
	pop {r4-r7,pc}
 .byte 0, 0
.endfunc // sub_812EEEC

.func
.thumb_func
sub_812EF20:
	push {r4-r7,lr}
	bl sub_812ED2C
	add r7, r0, #0
	ldrh r0, [r7,#0x20]
	ldrh r1, [r7,#0x24]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_812EF8C // =word_2023FA0 
	ldrh r1, [r1,r0]
	add r4, r1, #0
	sub r1, #0x90
	lsr r1, r1, #2
	add r0, r1, #0
	mov r2, #0x90
	bl sub_812EF60
.endfunc // sub_812EF20

	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_812EC2C
	mov r1, #0
	bl sub_812EDFC
	strh r0, [r5,#0x30]
	bl sub_812EE20
	pop {r4-r7,pc}
 .balign 4, 0x00
 .word unk_2024F90
.func
.thumb_func
sub_812EF60:
	push {r4-r7,lr}
	add r1, r0, #0
	ldr r0, off_812EF90 // =unk_2025070 
	ldr r2, off_812EF94 // =unk_201B200 
	ldr r3, dword_812EF98 // =0x600B800 
	mov r4, #0xa
	mov r5, #3
	ldr r6, off_812EF9C // =dword_86A5D60 
	mov r7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_812EF60

	bl sub_812EFA4
	mov r0, #3
	mov r1, #0xd
	mov r2, #3
	ldr r3, off_812EFA0 // =unk_2025A70 
	mov r4, #0xa
	mov r5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_812EF8C: .word word_2023FA0
off_812EF90: .word unk_2025070
off_812EF94: .word unk_201B200
dword_812EF98: .word 0x600B800
off_812EF9C: .word dword_86A5D60
off_812EFA0: .word unk_2025A70
.func
.thumb_func
sub_812EFA4:
	push {r4-r7,lr}
	ldr r7, dword_812EFCC // =0x21C0 
	ldr r6, off_812EFD0 // =unk_2025A70 
	mov r4, #0
	mov r1, #0
loc_812EFAE:
	strh r7, [r6,r4]
	add r7, #1
	mov r0, #0x14
	add r0, r0, r4
	strh r7, [r6,r0]
	add r7, #1
	add r4, #2
	add r1, #2
	cmp r1, #0x14
	blt loc_812EFAE
	mov r1, #0
	add r4, #0x14
	cmp r4, #0x78 
	blt loc_812EFAE
	pop {r4-r7,pc}
dword_812EFCC: .word 0x21C0
off_812EFD0: .word unk_2025A70
.endfunc // sub_812EFA4

.func
.thumb_func
sub_812EFD4:
	push {r4-r7,lr}
	// <endpool> <endfile>
	pop {r4-r7,pc}
.endfunc // sub_812EFD4

/*For debugging purposes, connect comment at any range!*/
