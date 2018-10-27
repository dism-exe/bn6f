.include "asm/asm28_1.inc"

.func
.thumb_func
sub_809F526:
	push {r7,lr}
	ldr r7, [r5,#0x60]
	ldrb r0, [r5]
	mov r1, #1
	tst r0, r1
	beq loc_809F598
	push {r5}
	ldr r4, dword_809F5A0 // =0x20000 
	mov r1, #4
	tst r7, r1
	beq loc_809F53E
	mov r4, #0
loc_809F53E:
	ldr r0, [r5,#0x24]
	mov r6, #0x11
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r0, r0, r6
	ldr r1, [r5,#0x28]
	mov r6, #0x12
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r1, r1, r6
	ldrb r2, [r5,#0x17]
	cmp r2, #0
	beq loc_809F56A
	push {r0,r1,r3-r5}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	add r2, r0, #0
	lsl r2, r2, #0x10
	pop {r0,r1,r3-r5}
	b loc_809F56C
loc_809F56A:
	ldr r2, [r5,#0x2c]
loc_809F56C:
	mov r6, #0x13
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r2, r2, r6
	mov r6, #0x50 
	add r6, r6, r5
	ldrh r3, [r5,#0xc]
	push {r0-r5}
	ldr r5, dword_809F5A4 // =0x50001 
	bl sub_80037AC
	mov r1, #0x14
	tst r7, r1
	pop {r0-r5}
	bne loc_809F596
	mov r6, #0x58 
	add r6, r6, r5
	ldr r4, dword_809F5A8 // =0x400000 
	ldr r5, dword_809F5AC // =0xa00000 
	bl sub_80037AC
loc_809F596:
	pop {r5}
loc_809F598:
	mov r0, #0
	str r0, [r5,#0x50]
	str r0, [r5,#0x58]
	pop {r7,pc}
dword_809F5A0: .word 0x20000
dword_809F5A4: .word 0x50001
dword_809F5A8: .word 0x400000
dword_809F5AC: .word 0xA00000
.endfunc // sub_809F526

.func
.thumb_func
sub_809F5B0:
	push {lr}
	ldr r0, [r5,#0x60]
	mov r1, #4
	tst r0, r1
	bne loc_809F5EA
	push {r5}
	ldr r0, [r5,#0x30]
	mov r6, #0x11
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r0, r0, r6
	ldr r1, [r5,#0x34]
	mov r6, #0x12
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r1, r1, r6
	ldr r2, [r5,#0x38]
	mov r6, #0x13
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r2, r2, r6
	mov r6, #0x54 
	add r6, r6, r5
	ldr r3, dword_809F5F0 // =0x804 
	ldr r4, dword_809F5F4 // =0x80000 
	ldr r5, dword_809F5F8 // =0x50000 
	bl sub_80037AC
	pop {r5}
loc_809F5EA:
	mov r0, #0
	str r0, [r5,#0x54]
	pop {pc}
dword_809F5F0: .word 0x804
dword_809F5F4: .word 0x80000
dword_809F5F8: .word 0x50000
.endfunc // sub_809F5B0

.func
.thumb_func
sub_809F5FC:
	push {lr}
	ldrb r0, [r5,#9]
	strb r0, [r5,#0x1d]
	ldrb r0, [r5,#0xa]
	strb r0, [r5,#0x1e]
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#9]
	strh r0, [r5,#0xa]
	pop {pc}
.endfunc // sub_809F5FC

.func
.thumb_func
sub_809F612:
	push {lr}
	mov r0, #4
	strb r0, [r5,#8]
	ldrb r0, [r5,#0x1d]
	strb r0, [r5,#9]
	ldrb r0, [r5,#0x1e]
	strb r0, [r5,#0xa]
	ldr r0, [r5,#0x60]
	ldr r1, dword_809F6B4 // =0x1002 
	tst r0, r1
	bne loc_809F632
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809F632:
	mov r0, #0
	strb r0, [r5,#0x18]
	pop {pc}
.endfunc // sub_809F612

.func
.thumb_func
sub_809F638:
	push {lr}
	mov r0, #0
	ldr r2, dword_809F648 // =0x50000 
	ldr r1, [r5,#0x54]
	tst r1, r2
	beq locret_809F646
	mov r0, #1
locret_809F646:
	pop {pc}
dword_809F648: .word 0x50000
.endfunc // sub_809F638

.func
.thumb_func
// (u8 bitfield_arr[2]) -> u16
getBitfieldFromArr_809F64C:
	ldrb r1, [r0]
	ldrb r0, [r0,#1]
	lsl r0, r0, #8
	orr r0, r1
	mov pc, lr
.endfunc // getBitfieldFromArr_809F64C

.func
.thumb_func
// (void* a1) -> int
sub_809F656:
	ldrb r1, [r0]
	ldrb r2, [r0,#1]
	lsl r2, r2, #8
	ldrb r3, [r0,#2]
	lsl r3, r3, #0x10
	ldrb r0, [r0,#3]
	lsl r0, r0, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	mov pc, lr
.endfunc // sub_809F656

.func
.thumb_func
sub_809F66C:
	push {r7}
	mov r3, #0x10
	ldr r7, off_809F688 // =eOverworldNPCObjects 
loc_809F672:
	ldrb r1, [r7,#0x10]
	cmp r1, r0
	beq loc_809F680
	add r7, #0xd8
	sub r3, #1
	bne loc_809F672
	mov r7, #0
loc_809F680:
	add r0, r7, #0
	pop {r7}
	mov pc, lr
	.balign 4, 0x00
off_809F688: .word eOverworldNPCObjects
.endfunc // sub_809F66C

.func
.thumb_func
sub_809F68C:
	push {lr}
	ldr r3, off_809F6A4 // =eOverworldNPCObjects 
	ldr r2, off_809F6A8 // =0xd80 
	add r2, r2, r3
loc_809F694:
	ldr r0, [r3,#0x50]
	mov r1, #1
	bic r0, r1
	str r0, [r3,#0x50]
	add r3, #0xd8
	cmp r3, r2
	blt loc_809F694
	pop {pc}
off_809F6A4: .word eOverworldNPCObjects
off_809F6A8: .word 0xD80
off_809F6AC: .word 0x400
dword_809F6B0: .word 0x1400
dword_809F6B4: .word 0x1002
dword_809F6B8: .word 0xDC9E1122, 0x220F1021, 0x21DC9E11, 0xB8027810, 0x809F6
byte_809F6CC: .byte 0x10, 0x1, 0x2, 0xCC, 0xF6, 0x9, 0x8, 0x0, 0x16, 0x9, 0x39, 0x0
	.byte 0x16, 0x1, 0x10, 0x3C, 0x16, 0xD, 0x39, 0x4, 0x16, 0x5, 0x10, 0x3C
	.byte 0x2, 0xD4, 0xF6, 0x9, 0x8, 0x0, 0x0, 0x0
byte_809F6EC: .byte 0x16, 0xB, 0x39, 0x0, 0x16, 0x3, 0x10, 0x3C, 0x16, 0xF
	.byte 0x39, 0x4, 0x16, 0x7, 0x10, 0x3C, 0x2, 0xEC, 0xF6, 0x9
	.byte 0x8, 0x0, 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0x7
	.byte 0x10, 0x3C, 0x16, 0xB, 0x39, 0x4, 0x16, 0x3, 0x10, 0x3C
	.byte 0x2, 0x4, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0
byte_809F71C: .byte 0x16, 0xD, 0x39, 0x0, 0x16, 0x5, 0x10, 0x3C, 0x16, 0x9, 0x39
	.byte 0x4, 0x16, 0x1, 0x10, 0x3C, 0x2, 0x1C, 0xF7, 0x9, 0x8, 0x0
	.byte 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0x1, 0x16, 0xD, 0x39
	.byte 0x4, 0x16, 0x5, 0x2, 0x34, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0
	.byte 0x16, 0xB, 0x39, 0x0, 0x16, 0x3, 0x16, 0xF, 0x39, 0x4, 0x16
	.byte 0x7, 0x2, 0x48, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xF
	.byte 0x39, 0x0, 0x16, 0x7, 0x16, 0xB, 0x39, 0x4, 0x16, 0x3, 0x2
	.byte 0x5C, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xD, 0x39, 0x0
	.byte 0x16, 0x5, 0x16, 0x9, 0x39, 0x4, 0x16, 0x1, 0x2, 0x70, 0xF7
	.byte 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0xF
	.byte 0x39, 0x6, 0x16, 0xD, 0x39, 0x4, 0x16, 0xB, 0x39, 0x2, 0x2
	.byte 0x84, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xB, 0x39, 0x0
	.byte 0x16, 0xD, 0x39, 0x2, 0x16, 0xF, 0x39, 0x4, 0x16, 0x9, 0x39
	.byte 0x6, 0x2, 0x9C, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0x9
	.byte 0x39, 0x0, 0x16, 0x1, 0x10, 0x3C, 0x3A, 0x0, 0x0, 0x0, 0x16
	.byte 0xD, 0x39, 0x0, 0x16, 0x5, 0x10, 0x3C, 0x3A, 0x0, 0x0, 0x0
	.byte 0x16, 0xB, 0x39, 0x0, 0x16, 0x3, 0x10, 0x3C, 0x3A, 0x0, 0x0
	.byte 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0x7, 0x10, 0x3C, 0x3A, 0x0
	.byte 0x0, 0x0
byte_809F7E4: .byte 0x16, 0x5, 0x10, 0x3C, 0x16, 0x3, 0x10, 0x3C, 0x2, 0xE4
	.byte 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0x7, 0x10, 0x3C
	.byte 0x16, 0x1, 0x10, 0x3C, 0x2, 0xF4, 0xF7, 0x9, 0x8, 0x0
	.byte 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0x1, 0x10, 0x3C
	.byte 0x16, 0xB, 0x39, 0x4, 0x16, 0x1, 0x10, 0x3C, 0x2, 0x4
	.byte 0xF8, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xD, 0x39, 0x0
	.byte 0x16, 0x7, 0x10, 0x3C, 0x16, 0x9, 0x39, 0x4, 0x16, 0x7
	.byte 0x10, 0x3C, 0x2, 0x1C, 0xF8, 0x9, 0x8, 0x0, 0x0, 0x0
	.byte 0x16, 0x9, 0x39, 0x0, 0x3A, 0x0, 0x0, 0x0, 0x16, 0xD
	.byte 0x39, 0x0, 0x3A, 0x0, 0x0, 0x0, 0x16, 0xB, 0x39, 0x0
	.byte 0x3A, 0x0, 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x3A, 0x0
	.byte 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0xD, 0x39, 0x4
	.byte 0x3A, 0x0, 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0xB
	.byte 0x39, 0x4, 0x3A, 0x0, 0x0, 0x0, 0x28, 0x76, 0x0, 0x8
	.byte 0x2E, 0x0, 0x2A, 0xC0, 0x3, 0x0, 0x0, 0x0, 0x8, 0x2E
	.byte 0x0, 0x2A, 0xC0, 0x3, 0x0, 0x0
byte_809F880: .byte 0x28, 0x76, 0x0, 0x8, 0x2E, 0x1, 0x2A, 0xC0, 0x3
byte_809F889: .byte 0x9, 0x33, 0x14, 0x28, 0xCE, 0x1, 0x8, 0x33, 0xA, 0x2, 0x89
	.byte 0xF8, 0x9, 0x8, 0x9, 0x33, 0xA, 0x28, 0xCE, 0x1, 0x8, 0x33
	.byte 0xA, 0x2, 0x97, 0xF8, 0x9, 0x8
byte_809F8A5: .byte 0x9, 0x33, 0x5, 0x28, 0xCE, 0x1, 0x8, 0x33, 0x5, 0x2, 0xA5, 0xF8
	.byte 0x9, 0x8
byte_809F8B3: .byte 0x34, 0x8, 0x33, 0x14, 0x9, 0x33, 0xA, 0x2, 0xB4, 0xF8, 0x9
	.byte 0x8, 0x8, 0x33, 0xA, 0x9, 0x33, 0xA, 0x2, 0xBF, 0xF8, 0x9
	.byte 0x8
byte_809F8CA: .byte 0x8, 0x33, 0x5, 0x9, 0x33, 0x5, 0x2, 0xCA, 0xF8, 0x9, 0x8, 0x34
	.byte 0x9, 0x33, 0x14, 0x28, 0x5E, 0x1, 0x8, 0x33, 0xA, 0x2, 0xD6, 0xF8
	.byte 0x9, 0x8, 0x9, 0x33, 0xA, 0x28, 0x5E, 0x1, 0x8, 0x33, 0xA, 0x2
	.byte 0xE4, 0xF8, 0x9, 0x8, 0x9, 0x33, 0x5, 0x28, 0x5E, 0x1, 0x8, 0x33
	.byte 0x5, 0x2, 0xF2, 0xF8, 0x9, 0x8, 0x34, 0x0, 0x0, 0x0, 0x0, 0xB5
	.byte 0x0, 0x20, 0x68, 0x76, 0x0, 0xBD
.endfunc // sub_809F68C

.func
.thumb_func
sub_809F90C:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809F920
	ldr r0, off_809F9C4 // =byte_2000210 
	mov r1, #0
	strb r1, [r0]
	str r1, [r0,#0x8] // (dword_2000218 - 0x2000210)
locret_809F920:
	pop {pc}
.endfunc // sub_809F90C

.func
.thumb_func
sub_809F922:
	push {r4,r6,r7,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809F940
	ldr r7, off_809F9C4 // =byte_2000210 
	ldrb r6, [r7]
	cmp r6, #0x10
	bge locret_809F940
	add r4, r6, #1
	strb r4, [r7]
	lsl r6, r6, #2
	add r6, #0x10
	str r5, [r7,r6]
locret_809F940:
	pop {r4,r6,r7,pc}
.endfunc // sub_809F922

.func
.thumb_func
sub_809F942:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809F9BC
	ldr r7, off_809F9C4 // =byte_2000210 
	ldrb r6, [r7]
	mov r4, r10
	ldr r4, [r4,#0x3c]
	ldr r4, [r4,#0x18]
	add r7, #0x10
loc_809F95A:
	sub r6, #1
	blt loc_809F9A6
	ldr r5, [r7]
	ldr r2, [r4,#0x24]
	ldr r0, [r5,#0x2c]
	cmp r0, r2
	bne loc_809F9A2
	ldr r2, [r4,#0x1c]
	ldr r3, [r4,#0x20]
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	sub r0, r0, r2
	sub r1, r1, r3
	mov r3, #0x24 
	lsl r3, r3, #0x10
	sub r2, r0, r1
	cmp r2, r3
	bgt loc_809F9A2
	mov r3, #0x38 
	lsl r3, r3, #0x10
	neg r3, r3
	sub r2, r0, r1
	cmp r2, r3
	blt loc_809F9A2
	mov r3, #0x1c
	lsl r3, r3, #0x10
	add r2, r0, r1
	cmp r2, r3
	bgt loc_809F9A2
	mov r3, #0x1c
	lsl r3, r3, #0x10
	neg r3, r3
	add r2, r0, r1
	cmp r2, r3
	blt loc_809F9A2
	b loc_809F9AE
loc_809F9A2:
	add r7, #4
	b loc_809F95A
loc_809F9A6:
	bl sub_809F90C
	mov r0, #0
	pop {r4-r7,pc}
loc_809F9AE:
	push {r5}
	bl sub_809F90C
	pop {r0}
	ldr r7, off_809F9C4 // =byte_2000210 
	str r0, [r7,#0x8] // (dword_2000218 - 0x2000210)
	pop {r4-r7,pc}
locret_809F9BC:
	pop {r4-r7,pc}
.endfunc // sub_809F942

.func
.thumb_func
sub_809F9BE:
	ldr r7, off_809F9C4 // =byte_2000210 
	ldr r7, [r7,#0x8] // (dword_2000218 - 0x2000210)
	mov pc, lr
off_809F9C4: .word byte_2000210
.endfunc // sub_809F9BE

.func
.thumb_func
sub_809F9C8:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#0x70]
	ldr r1, off_809F9D8 // =0x480 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_809F9D8: .word 0x480
.endfunc // sub_809F9C8

.func
.thumb_func
sub_809F9DC:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	bl sub_809FD70
	ldr r4, off_809FC14 // =off_80A336C 
loc_809F9E8:
	ldr r6, [r4]
	cmp r6, #1
	beq loc_809FA5E
	cmp r6, #0
	beq loc_809FA5A
	ldr r6, [r4,#4]
loc_809F9F4:
	ldr r7, [r6]
	cmp r7, #0
	beq loc_809FA5A
	mov r0, #0
	mov r12, r0
	sub sp, sp, #0x10
	mov r5, sp
	// mem
	mov r0, sp
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0xff
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
loc_809FA0C:
	ldrb r0, [r7]
	cmp r0, #0
	beq loc_809FA46
	cmp r0, #5
	bne loc_809FA42
	ldr r1, [r7,#8]
	bl sub_809FBF2
	add r1, r0, #0
	ldr r0, [r7,#4]
	mov r2, sp
	bl sub_809FA68
	strb r1, [r5]
	add r5, #1
	add r2, r1, #0
	add r1, r0, #0
	ldrh r0, [r7,#2]
	bl sub_809FACE
	ldrh r0, [r7,#2]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	mov r0, r12
	add r0, #1
	mov r12, r0
loc_809FA42:
	add r7, #0xc
	b loc_809FA0C
loc_809FA46:
	add sp, sp, #0x10
	ldr r0, [r4]
	ldr r1, [r4,#4]
	sub r1, r6, r1
	lsr r1, r1, #2
	mov r2, r12
	bl sub_809FDCE
	add r6, #4
	b loc_809F9F4
loc_809FA5A:
	add r4, #8
	b loc_809F9E8
loc_809FA5E:
	bl sub_809FDE0
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
.endfunc // sub_809F9DC

.func
.thumb_func
sub_809FA68:
	push {r4-r7,lr}
	add r5, r2, #0
	sub sp, sp, #0x20
	add r7, r1, #0
	tst r0, r0
	beq loc_809FA90
	mov r4, #0
	mov r2, sp
loc_809FA78:
	ldrb r3, [r0]
	cmp r3, #0
	beq loc_809FA88
	ldrb r3, [r0,#1]
	strb r3, [r2,r4]
	add r4, #1
	add r0, #8
	b loc_809FA78
loc_809FA88:
	mov r0, sp
	add r1, r4, #0
	bl sub_8000E3A
loc_809FA90:
	add r6, r0, #0
	add r1, r7, #0
	mov r4, #0
	mov r2, sp
loc_809FA98:
	ldrb r3, [r1]
	cmp r3, #0
	beq loc_809FABC
	add r0, r5, #0
loc_809FAA0:
	ldrb r3, [r0]
	cmp r3, #0xff
	beq loc_809FAB2
	cmp r3, r4
	beq loc_809FAAE
	add r0, #1
	b loc_809FAA0
loc_809FAAE:
	mov r3, #0
	b loc_809FAB4
loc_809FAB2:
	ldrb r3, [r1,#1]
loc_809FAB4:
	strb r3, [r2,r4]
	add r4, #1
	add r1, #8
	b loc_809FA98
loc_809FABC:
	mov r0, sp
	add r1, r4, #0
	bl sub_8000E3A
	add r7, r0, #0
	add sp, sp, #0x20
	add r0, r6, #0
	add r1, r7, #0
	pop {r4-r7,pc}
.endfunc // sub_809FA68

.func
.thumb_func
sub_809FACE:
	push {r4-r7,lr}
	push {r1,r2}
	bl sub_809FADE
	pop {r1,r2}
	strb r1, [r0]
	strb r2, [r0,#1]
	pop {r4-r7,pc}
.endfunc // sub_809FACE

.func
.thumb_func
sub_809FADE:
	mov r2, r10
	ldr r2, [r2,#0x70]
	ldr r1, dword_809FAF0 // =0x1400 
	sub r0, r0, r1
	mov r1, #2
	mul r0, r1
	add r0, r0, r2
	mov pc, lr
	.byte 0, 0
dword_809FAF0: .word 0x1400
.endfunc // sub_809FADE

.func
.thumb_func
sub_809FAF4:
	push {r4-r7,lr}
	ldr r4, off_809FC14 // =off_80A336C 
	bl sub_809FB04
	ldr r4, off_809FC10 // =dword_80A3360 
	bl sub_809FB04
	pop {r4-r7,pc}
.endfunc // sub_809FAF4

.func
.thumb_func
sub_809FB04:
	push {r4-r7,lr}
loc_809FB06:
	ldr r6, [r4]
	cmp r6, #1
	beq locret_809FB4A
	cmp r6, #0
	beq loc_809FB46
	ldr r6, [r4,#4]
loc_809FB12:
	ldr r7, [r6]
	cmp r7, #0
	beq loc_809FB46
loc_809FB18:
	ldrb r0, [r7]
	cmp r0, #0
	beq loc_809FB42
	cmp r0, #5
	beq loc_809FB3E
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	ldrh r3, [r7,#2]
	bl sub_809FB4C
	add r2, r1, #0
	add r1, r0, #0
	ldrh r0, [r7,#2]
	bl sub_809FACE
	ldrh r0, [r7,#2]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_809FB3E:
	add r7, #0xc
	b loc_809FB18
loc_809FB42:
	add r6, #4
	b loc_809FB12
loc_809FB46:
	add r4, #8
	b loc_809FB06
locret_809FB4A:
	pop {r4-r7,pc}
.endfunc // sub_809FB04

.func
.thumb_func
sub_809FB4C:
	push {r4-r7,lr}
	add r5, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #1
	beq loc_809FB64
	cmp r0, #3
	beq loc_809FB64
	cmp r0, #2
	beq loc_809FBAE
	cmp r0, #4
	beq loc_809FBAE
loc_809FB64:
	push {r6,r7}
	add r0, r5, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r6,r7}
	beq loc_809FBE6
	mov r4, #0
loc_809FB72:
	ldrb r3, [r6]
	cmp r3, #0
	beq loc_809FB7E
	add r4, #1
	add r6, #8
	b loc_809FB72
loc_809FB7E:
	add r0, r5, #0
	bl sub_809FADE
	ldrb r6, [r0]
	add r6, #1
	cmp r6, r4
	blt loc_809FB8E
	sub r6, r4, #1
loc_809FB8E:
	mov r4, #0
loc_809FB90:
	ldrb r3, [r7]
	cmp r3, #0
	beq loc_809FB9C
	add r4, #1
	add r7, #8
	b loc_809FB90
loc_809FB9C:
	add r0, r5, #0
	bl sub_809FADE
	ldrb r7, [r0,#1]
	add r7, #1
	cmp r7, r4
	blt loc_809FBAC
	sub r7, r4, #1
loc_809FBAC:
	b loc_809FBE0
loc_809FBAE:
	mov r4, #0
loc_809FBB0:
	ldrb r3, [r6]
	cmp r3, #0
	beq loc_809FBBC
	add r4, #1
	add r6, #8
	b loc_809FBB0
loc_809FBBC:
	mov r0, #0
	cmp r0, r4
	blt loc_809FBC4
	sub r0, r4, #1
loc_809FBC4:
	add r6, r0, #0
	mov r4, #0
loc_809FBC8:
	ldrb r3, [r7]
	cmp r3, #0
	beq loc_809FBD4
	add r4, #1
	add r7, #8
	b loc_809FBC8
loc_809FBD4:
	mov r0, #0
	cmp r0, r4
	blt loc_809FBDC
	sub r0, r4, #1
loc_809FBDC:
	add r7, r0, #0
	b loc_809FBE0
loc_809FBE0:
	add r0, r6, #0
	add r1, r7, #0
	pop {r4-r7,pc}
loc_809FBE6:
	add r0, r5, #0
	bl sub_809FADE
	ldrb r1, [r0,#1]
	ldrb r0, [r0]
	pop {r4-r7,pc}
.endfunc // sub_809FB4C

.func
.thumb_func
sub_809FBF2:
	push {r2-r7,lr}
	add r4, r1, #0
	cmp r0, #5
	bne loc_809FC0A
	mov r0, #0
	lsl r1, r0, #3
	mov r2, #8
	mul r1, r2
	lsl r0, r0, #2
	add r0, r0, r1
	add r0, r0, r4
	pop {r2-r7,pc}
loc_809FC0A:
	add r0, r1, #0
	pop {r2-r7,pc}
	.byte 0, 0
off_809FC10: .word dword_80A3360
off_809FC14: .word off_80A336C
	.word byte_2000210
.endfunc // sub_809FBF2

.func
.thumb_func
sub_809FC1C:
	push {r4-r7,lr}
	add r6, r0, #0
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#4]
	ldrb r1, [r7,#5]
	cmp r0, #0x80
	bge loc_809FC2E
	b loc_809FC34
loc_809FC2E:
	sub r0, #0x80
	ldr r4, off_809FE98 // =off_80A336C 
	b loc_809FC36
loc_809FC34:
	ldr r4, off_809FE94 // =dword_80A3360 
loc_809FC36:
	lsl r0, r0, #3
	add r0, #4
	ldr r4, [r4,r0]
	lsl r1, r1, #2
	ldr r4, [r4,r1]
loc_809FC40:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_809FC8C
	ldrh r0, [r4,#2]
	cmp r0, r6
	beq loc_809FC50
	add r4, #0xc
	b loc_809FC40
loc_809FC50:
	ldrb r0, [r4]
	ldrb r1, [r4,#1]
	push {r0,r1}
	add r0, r6, #0
	bl sub_809FADE
	add r7, r0, #0
	ldr r2, [r4,#4]
	ldrb r3, [r7]
	mov r1, #8
	mul r1, r3
	add r2, r2, r1
	add r2, #2
	push {r2}
	ldrb r0, [r4]
	ldr r1, [r4,#8]
	bl sub_809FBF2
	add r4, r0, #0
	ldrb r3, [r7,#1]
	mov r1, #8
	mul r1, r3
	add r4, r4, r1
	ldrb r3, [r4]
	pop {r2}
	pop {r0,r1}
	add r4, r6, #0
	bl sub_809FE36
	b locret_809FC94
loc_809FC8C:
	mov r0, #0
	mov r1, #0xff
	mov r2, #0xff
	mov r3, #0xff
locret_809FC94:
	pop {r4-r7,pc}
.endfunc // sub_809FC1C

.func
.thumb_func
sub_809FC96:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	add r6, r0, #0
	mov r5, #1
	bl getPETNaviSelect // () -> u8
	mov r1, #0x33 
	bl sub_8013704
	cmp r0, #1
	beq loc_809FCB0
	mov r5, #0
loc_809FCB0:
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#4]
	ldrb r1, [r7,#5]
	cmp r0, #0x80
	bge loc_809FCBE
	b loc_809FCC4
loc_809FCBE:
	sub r0, #0x80
	ldr r4, off_809FE98 // =off_80A336C 
	b loc_809FCC6
loc_809FCC4:
	ldr r4, off_809FE94 // =dword_80A3360 
loc_809FCC6:
	lsl r0, r0, #3
	add r0, #4
	ldr r4, [r4,r0]
	lsl r1, r1, #2
	ldr r4, [r4,r1]
loc_809FCD0:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_809FD62
	ldrh r0, [r4,#2]
	cmp r0, r6
	beq loc_809FCE0
	add r4, #0xc
	b loc_809FCD0
loc_809FCE0:
	add r0, r6, #0
	bl sub_809FADE
	add r7, r0, #0
	ldrb r0, [r4]
	mov r12, r0
	ldr r1, [r4,#8]
	bl sub_809FBF2
	mov r1, r12
	cmp r1, #5
	bne loc_809FCFC
	tst r5, r5
	bne loc_809FD20
loc_809FCFC:
	add r4, r0, #0
	ldrb r3, [r7,#1]
	add r0, r6, #0
	bl sub_809FE44
	mov r1, #8
	mul r1, r3
	add r4, r4, r1
	ldr r0, [r4,#4]
	ldrb r1, [r4,#3]
	ldrb r2, [r4]
	sub r2, #1
	mov r3, #0xa
	mul r2, r3
	add r2, r12
	sub r2, #1
	ldrb r3, [r4]
	b loc_809FD6A
loc_809FD20:
	add r4, r0, #0
	ldrb r3, [r7,#1]
	add r0, r6, #0
	bl sub_809FE44
	mov r2, #0
loc_809FD2C:
	mov r1, #8
	mul r1, r2
	add r1, r1, r4
	ldrb r0, [r1]
	cmp r0, #3
	beq loc_809FD3C
	cmp r0, #7
	bne loc_809FD44
loc_809FD3C:
	sub r3, #1
	bge loc_809FD44
	add r4, r1, #0
	b loc_809FD4E
loc_809FD44:
	add r2, #1
	cmp r2, #8
	blt loc_809FD2C
	mov r2, #0
	b loc_809FD2C
loc_809FD4E:
	ldr r0, [r4,#4]
	ldrb r1, [r4,#3]
	ldrb r2, [r4]
	sub r2, #1
	mov r3, #0xa
	mul r2, r3
	add r2, r12
	sub r2, #1
	ldrb r3, [r4]
	b loc_809FD6A
loc_809FD62:
	mov r0, #0xff
	mov r1, #0xff
	mov r2, #0xff
	mov r3, #0xff
loc_809FD6A:
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
.endfunc // sub_809FC96

.func
.thumb_func
sub_809FD70:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	mov r0, #0
	strb r0, [r6,#0x2] // (byte_2000212 - 0x2000210)
	strh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
	strh r0, [r6,#0x4] // (word_2000214 - 0x2000210)
	sub sp, sp, #0x20
	mov r4, sp
	ldr r7, off_809FE90 // =off_80A3428 
	mov r3, #0
loc_809FD84:
	ldr r0, [r7]
	tst r0, r0
	beq loc_809FD96
	ldr r0, [r7,#8]
	strb r0, [r4]
	add r7, #0xc
	add r3, #1
	add r4, #1
	b loc_809FD84
loc_809FD96:
	mov r0, sp
	add r1, r3, #0
	bl sub_8000E3A
	sub sp, sp, #0x10
	strb r0, [r6,#0x3] // (byte_2000213 - 0x2000210)
	mov r1, #0xc
	mul r0, r1
	ldr r1, off_809FE90 // =off_80A3428 
	add r1, r1, r0
	ldr r0, [r1]
	strh r0, [r6,#0x4] // (word_2000214 - 0x2000210)
	mov r0, #0
	ldr r1, [r1,#4]
	mov r2, sp
	push {r0-r2}
	// mem
	add r0, r2, #0
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0xff
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	pop {r0-r2}
	bl sub_809FA68
	strb r1, [r6,#0x2] // (byte_2000212 - 0x2000210)
	add sp, sp, #0x10
	add sp, sp, #0x20
	pop {r4-r7,pc}
.endfunc // sub_809FD70

.func
.thumb_func
sub_809FDCE:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	lsl r1, r1, #8
	orr r0, r1
	ldrh r1, [r6,#0x4] // (word_2000214 - 0x2000210)
	cmp r0, r1
	bne locret_809FDDE
	strh r2, [r6,#0x6] // (word_2000216 - 0x2000210)
locret_809FDDE:
	pop {r4-r7,pc}
.endfunc // sub_809FDCE

.func
.thumb_func
sub_809FDE0:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
	tst r0, r0
	beq locret_809FE34
	sub sp, sp, #0x10
	// mem
	mov r0, sp
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0x20 
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	mov r0, sp
	ldrh r1, [r6,#0x6] // (word_2000216 - 0x2000210)
	bl sub_8000E3A
	add r7, r0, #1
	add sp, sp, #0x10
	ldr r4, off_809FE98 // =off_80A336C 
	ldrb r0, [r6,#0x4] // (word_2000214 - 0x2000210)
	ldrb r1, [r6,#0x5] // (word_2000214+1 - 0x2000210)
	sub r0, #0x80
	lsl r0, r0, #3
	add r0, #4
	ldr r4, [r4,r0]
	lsl r1, r1, #2
	ldr r4, [r4,r1]
	mov r3, #0
loc_809FE16:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_809FE30
	cmp r0, #5
	bne loc_809FE2C
	add r3, #1
	cmp r3, r7
	bne loc_809FE2C
	ldrh r0, [r4,#2]
	strh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
	b locret_809FE34
loc_809FE2C:
	add r4, #0xc
	b loc_809FE16
loc_809FE30:
	mov r0, #0
	strh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
locret_809FE34:
	pop {r4-r7,pc}
.endfunc // sub_809FDE0

.func
.thumb_func
sub_809FE36:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrh r7, [r6,#0x6] // (word_2000216 - 0x2000210)
	cmp r4, r7
	bne locret_809FE42
	add r0, #1
locret_809FE42:
	pop {r4-r7,pc}
.endfunc // sub_809FE36

.func
.thumb_func
sub_809FE44:
	push {r5-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrh r1, [r6,#0x6] // (word_2000216 - 0x2000210)
	cmp r0, r1
	bne locret_809FE5C
	ldrb r0, [r6,#0x3] // (byte_2000213 - 0x2000210)
	mov r1, #0xc
	mul r0, r1
	ldr r4, off_809FE90 // =off_80A3428 
	add r4, r4, r0
	ldr r4, [r4,#4]
	ldrb r3, [r6,#0x2] // (byte_2000212 - 0x2000210)
locret_809FE5C:
	pop {r5-r7,pc}
.endfunc // sub_809FE44

.func
.thumb_func
sub_809FE5E:
	push {r5-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrb r0, [r6,#0x4] // (word_2000214 - 0x2000210)
	mov r1, #0x10
	svc 6
	mov r2, #0xa
	mul r0, r2
	add r0, r0, r1
	ldrb r1, [r6,#0x5] // (word_2000214+1 - 0x2000210)
	mov r2, #0
	mov r3, #0
	bl chatbox_8045EFC
	pop {r5-r7,pc}
.endfunc // sub_809FE5E

.func
.thumb_func
sub_809FE7A:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x40 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_809FE8E
	ldr r3, off_809FE9C // =byte_2000210 
	ldrb r1, [r3,#0x4] // (word_2000214 - 0x2000210)
	ldrb r2, [r3,#0x5] // (word_2000214+1 - 0x2000210)
	ldrb r3, [r3,#0x2] // (byte_2000212 - 0x2000210)
locret_809FE8E:
	// <endpool>
	pop {r4-r7,pc}
.endfunc // sub_809FE7A

off_809FE90: .word off_80A3428
off_809FE94: .word dword_80A3360
off_809FE98: .word off_80A336C
off_809FE9C: .word byte_2000210
off_809FEA0:
	// <endfile>
	.word dword_809FEE4
	.word dword_809FFE8
/*For debugging purposes, connect comment at any range!*/
