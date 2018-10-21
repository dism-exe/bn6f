.include "asm/asm28_1.inc"

.func
.thumb_func
sub_809F526:
	push {r7,lr}
	ldr R7, [R5,#0x60]
	ldrb R0, [R5]
	mov R1, #1
	tst R0, R1
	beq loc_809F598
	push {r5}
	ldr R4, dword_809F5A0 // =0x20000 
	mov R1, #4
	tst R7, R1
	beq loc_809F53E
	mov R4, #0
loc_809F53E:
	ldr R0, [R5,#0x24]
	mov R6, #0x11
	ldrsb R6, [R5,R6]
	lsl r6, r6, #0x10
	add r0, r0, r6
	ldr R1, [R5,#0x28]
	mov R6, #0x12
	ldrsb R6, [R5,R6]
	lsl r6, r6, #0x10
	add r1, r1, r6
	ldrb R2, [R5,#0x17]
	cmp R2, #0
	beq loc_809F56A
	push {r0,r1,R3-R5}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	add r2, r0, #0
	lsl r2, r2, #0x10
	pop {r0,r1,R3-R5}
	b loc_809F56C
loc_809F56A:
	ldr R2, [R5,#0x2C]
loc_809F56C:
	mov R6, #0x13
	ldrsb R6, [R5,R6]
	lsl r6, r6, #0x10
	add r2, r2, r6
	mov r6, #0x50 
	add r6, r6, r5
	ldrh R3, [R5,#0xC]
	push {R0-R5}
	ldr R5, dword_809F5A4 // =0x50001 
	bl sub_80037AC
	mov R1, #0x14
	tst R7, R1
	pop {R0-R5}
	bne loc_809F596
	mov r6, #0x58 
	add r6, r6, r5
	ldr R4, dword_809F5A8 // =0x400000 
	ldr R5, dword_809F5AC // =0xA00000 
	bl sub_80037AC
loc_809F596:
	pop {r5}
loc_809F598:
	mov R0, #0
	str R0, [R5,#0x50]
	str R0, [R5,#0x58]
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
	ldr R0, [R5,#0x60]
	mov R1, #4
	tst R0, R1
	bne loc_809F5EA
	push {r5}
	ldr R0, [R5,#0x30]
	mov R6, #0x11
	ldrsb R6, [R5,R6]
	lsl r6, r6, #0x10
	add r0, r0, r6
	ldr R1, [R5,#0x34]
	mov R6, #0x12
	ldrsb R6, [R5,R6]
	lsl r6, r6, #0x10
	add r1, r1, r6
	ldr R2, [R5,#0x38]
	mov R6, #0x13
	ldrsb R6, [R5,R6]
	lsl r6, r6, #0x10
	add r2, r2, r6
	mov r6, #0x54 
	add r6, r6, r5
	ldr R3, dword_809F5F0 // =0x804 
	ldr R4, dword_809F5F4 // =0x80000 
	ldr R5, dword_809F5F8 // =0x50000 
	bl sub_80037AC
	pop {r5}
loc_809F5EA:
	mov R0, #0
	str R0, [R5,#0x54]
	pop {pc}
dword_809F5F0: .word 0x804
dword_809F5F4: .word 0x80000
dword_809F5F8: .word 0x50000
.endfunc // sub_809F5B0

.func
.thumb_func
sub_809F5FC:
	push {lr}
	ldrb R0, [R5,#9]
	strb R0, [R5,#0x1D]
	ldrb R0, [R5,#0xA]
	strb R0, [R5,#0x1E]
	mov R0, #8
	strb R0, [R5,#8]
	mov R0, #0
	strb R0, [R5,#9]
	strh R0, [R5,#0xA]
	pop {pc}
.endfunc // sub_809F5FC

.func
.thumb_func
sub_809F612:
	push {lr}
	mov R0, #4
	strb R0, [R5,#8]
	ldrb R0, [R5,#0x1D]
	strb R0, [R5,#9]
	ldrb R0, [R5,#0x1E]
	strb R0, [R5,#0xA]
	ldr R0, [R5,#0x60]
	ldr R1, dword_809F6B4 // =0x1002 
	tst R0, R1
	bne loc_809F632
	ldrb R0, [R5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809F632:
	mov R0, #0
	strb R0, [R5,#0x18]
	pop {pc}
.endfunc // sub_809F612

.func
.thumb_func
sub_809F638:
	push {lr}
	mov R0, #0
	ldr R2, dword_809F648 // =0x50000 
	ldr R1, [R5,#0x54]
	tst R1, R2
	beq locret_809F646
	mov R0, #1
locret_809F646:
	pop {pc}
dword_809F648: .word 0x50000
.endfunc // sub_809F638

.func
.thumb_func
// (u8 bitfield_arr[2]) -> u16
getBitfieldFromArr_809F64C:
	ldrb R1, [R0]
	ldrb R0, [R0,#1]
	lsl r0, r0, #8
	orr R0, R1
	mov PC, LR
.endfunc // getBitfieldFromArr_809F64C

.func
.thumb_func
// (void* a1) -> int
sub_809F656:
	ldrb R1, [R0]
	ldrb R2, [R0,#1]
	lsl r2, r2, #8
	ldrb R3, [R0,#2]
	lsl r3, r3, #0x10
	ldrb R0, [R0,#3]
	lsl r0, r0, #0x18
	orr R0, R1
	orr R0, R2
	orr R0, R3
	mov PC, LR
.endfunc // sub_809F656

.func
.thumb_func
sub_809F66C:
	push {r7}
	mov R3, #0x10
	ldr R7, off_809F688 // =eOverworldNPCObjects 
loc_809F672:
	ldrb R1, [R7,#0x10]
	cmp R1, R0
	beq loc_809F680
	add R7, #0xD8
	sub R3, #1
	bne loc_809F672
	mov R7, #0
loc_809F680:
	add r0, r7, #0
	pop {r7}
	mov PC, LR
	.balign 4, 0x00
off_809F688: .word eOverworldNPCObjects
.endfunc // sub_809F66C

.func
.thumb_func
sub_809F68C:
	push {lr}
	ldr R3, off_809F6A4 // =eOverworldNPCObjects 
	ldr R2, off_809F6A8 // =0xD80 
	add r2, r2, r3
loc_809F694:
	ldr R0, [R3,#0x50]
	mov R1, #1
	bic R0, R1
	str R0, [R3,#0x50]
	add R3, #0xD8
	cmp R3, R2
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
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809F920
	ldr R0, off_809F9C4 // =byte_2000210 
	mov R1, #0
	strb R1, [R0]
	str R1, [R0,#0x8] // (dword_2000218 - 0x2000210)
locret_809F920:
	pop {pc}
.endfunc // sub_809F90C

.func
.thumb_func
sub_809F922:
	push {r4,r6,r7,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809F940
	ldr R7, off_809F9C4 // =byte_2000210 
	ldrb R6, [R7]
	cmp R6, #0x10
	bge locret_809F940
	add r4, r6, #1
	strb R4, [R7]
	lsl r6, r6, #2
	add R6, #0x10
	str R5, [R7,R6]
locret_809F940:
	pop {r4,r6,r7,pc}
.endfunc // sub_809F922

.func
.thumb_func
sub_809F942:
	push {R4-R7,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #8
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809F9BC
	ldr R7, off_809F9C4 // =byte_2000210 
	ldrb R6, [R7]
	mov R4, R10
	ldr R4, [R4,#0x3C]
	ldr R4, [R4,#0x18]
	add R7, #0x10
loc_809F95A:
	sub R6, #1
	blt loc_809F9A6
	ldr R5, [R7]
	ldr R2, [R4,#0x24]
	ldr R0, [R5,#0x2C]
	cmp R0, R2
	bne loc_809F9A2
	ldr R2, [R4,#0x1C]
	ldr R3, [R4,#0x20]
	ldr R0, [R5,#0x24]
	ldr R1, [R5,#0x28]
	sub r0, r0, r2
	sub r1, r1, r3
	mov r3, #0x24 
	lsl r3, r3, #0x10
	sub r2, r0, r1
	cmp R2, R3
	bgt loc_809F9A2
	mov r3, #0x38 
	lsl r3, r3, #0x10
	neg R3, R3
	sub r2, r0, r1
	cmp R2, R3
	blt loc_809F9A2
	mov R3, #0x1C
	lsl r3, r3, #0x10
	add r2, r0, r1
	cmp R2, R3
	bgt loc_809F9A2
	mov R3, #0x1C
	lsl r3, r3, #0x10
	neg R3, R3
	add r2, r0, r1
	cmp R2, R3
	blt loc_809F9A2
	b loc_809F9AE
loc_809F9A2:
	add R7, #4
	b loc_809F95A
loc_809F9A6:
	bl sub_809F90C
	mov R0, #0
	pop {R4-R7,pc}
loc_809F9AE:
	push {r5}
	bl sub_809F90C
	pop {r0}
	ldr R7, off_809F9C4 // =byte_2000210 
	str R0, [R7,#0x8] // (dword_2000218 - 0x2000210)
	pop {R4-R7,pc}
locret_809F9BC:
	pop {R4-R7,pc}
.endfunc // sub_809F942

.func
.thumb_func
sub_809F9BE:
	ldr R7, off_809F9C4 // =byte_2000210 
	ldr R7, [R7,#0x8] // (dword_2000218 - 0x2000210)
	mov PC, LR
off_809F9C4: .word byte_2000210
.endfunc // sub_809F9BE

.func
.thumb_func
sub_809F9C8:
	push {R4-R7,lr}
	mov R0, R10
	ldr R0, [R0,#0x70]
	ldr R1, off_809F9D8 // =0x480 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_809F9D8: .word 0x480
.endfunc // sub_809F9C8

.func
.thumb_func
sub_809F9DC:
	push {R4-R7,lr}
	mov R4, R12
	push {r4}
	bl sub_809FD70
	ldr R4, off_809FC14 // =off_80A336C 
loc_809F9E8:
	ldr R6, [R4]
	cmp R6, #1
	beq loc_809FA5E
	cmp R6, #0
	beq loc_809FA5A
	ldr R6, [R4,#4]
loc_809F9F4:
	ldr R7, [R6]
	cmp R7, #0
	beq loc_809FA5A
	mov R0, #0
	mov R12, R0
	sub sp, sp, #0x10
	mov R5, SP
	// mem
	mov R0, SP
	// byteCount
	mov R1, #0x10
	// byte
	mov R2, #0xFF
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
loc_809FA0C:
	ldrb R0, [R7]
	cmp R0, #0
	beq loc_809FA46
	cmp R0, #5
	bne loc_809FA42
	ldr R1, [R7,#8]
	bl sub_809FBF2
	add r1, r0, #0
	ldr R0, [R7,#4]
	mov R2, SP
	bl sub_809FA68
	strb R1, [R5]
	add R5, #1
	add r2, r1, #0
	add r1, r0, #0
	ldrh R0, [R7,#2]
	bl sub_809FACE
	ldrh R0, [R7,#2]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	mov R0, R12
	add R0, #1
	mov R12, R0
loc_809FA42:
	add R7, #0xC
	b loc_809FA0C
loc_809FA46:
	add sp, sp, #0x10
	ldr R0, [R4]
	ldr R1, [R4,#4]
	sub r1, r6, r1
	lsr r1, r1, #2
	mov R2, R12
	bl sub_809FDCE
	add R6, #4
	b loc_809F9F4
loc_809FA5A:
	add R4, #8
	b loc_809F9E8
loc_809FA5E:
	bl sub_809FDE0
	pop {r4}
	mov R12, R4
	pop {R4-R7,pc}
.endfunc // sub_809F9DC

.func
.thumb_func
sub_809FA68:
	push {R4-R7,lr}
	add r5, r2, #0
	sub sp, sp, #0x20
	add r7, r1, #0
	tst R0, R0
	beq loc_809FA90
	mov R4, #0
	mov R2, SP
loc_809FA78:
	ldrb R3, [R0]
	cmp R3, #0
	beq loc_809FA88
	ldrb R3, [R0,#1]
	strb R3, [R2,R4]
	add R4, #1
	add R0, #8
	b loc_809FA78
loc_809FA88:
	mov R0, SP
	add r1, r4, #0
	bl sub_8000E3A
loc_809FA90:
	add r6, r0, #0
	add r1, r7, #0
	mov R4, #0
	mov R2, SP
loc_809FA98:
	ldrb R3, [R1]
	cmp R3, #0
	beq loc_809FABC
	add r0, r5, #0
loc_809FAA0:
	ldrb R3, [R0]
	cmp R3, #0xFF
	beq loc_809FAB2
	cmp R3, R4
	beq loc_809FAAE
	add R0, #1
	b loc_809FAA0
loc_809FAAE:
	mov R3, #0
	b loc_809FAB4
loc_809FAB2:
	ldrb R3, [R1,#1]
loc_809FAB4:
	strb R3, [R2,R4]
	add R4, #1
	add R1, #8
	b loc_809FA98
loc_809FABC:
	mov R0, SP
	add r1, r4, #0
	bl sub_8000E3A
	add r7, r0, #0
	add sp, sp, #0x20
	add r0, r6, #0
	add r1, r7, #0
	pop {R4-R7,pc}
.endfunc // sub_809FA68

.func
.thumb_func
sub_809FACE:
	push {R4-R7,lr}
	push {r1,r2}
	bl sub_809FADE
	pop {r1,r2}
	strb R1, [R0]
	strb R2, [R0,#1]
	pop {R4-R7,pc}
.endfunc // sub_809FACE

.func
.thumb_func
sub_809FADE:
	mov R2, R10
	ldr R2, [R2,#0x70]
	ldr R1, dword_809FAF0 // =0x1400 
	sub r0, r0, r1
	mov R1, #2
	mul R0, R1
	add r0, r0, r2
	mov PC, LR
	.byte 0, 0
dword_809FAF0: .word 0x1400
.endfunc // sub_809FADE

.func
.thumb_func
sub_809FAF4:
	push {R4-R7,lr}
	ldr R4, off_809FC14 // =off_80A336C 
	bl sub_809FB04
	ldr R4, off_809FC10 // =dword_80A3360 
	bl sub_809FB04
	pop {R4-R7,pc}
.endfunc // sub_809FAF4

.func
.thumb_func
sub_809FB04:
	push {R4-R7,lr}
loc_809FB06:
	ldr R6, [R4]
	cmp R6, #1
	beq locret_809FB4A
	cmp R6, #0
	beq loc_809FB46
	ldr R6, [R4,#4]
loc_809FB12:
	ldr R7, [R6]
	cmp R7, #0
	beq loc_809FB46
loc_809FB18:
	ldrb R0, [R7]
	cmp R0, #0
	beq loc_809FB42
	cmp R0, #5
	beq loc_809FB3E
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	ldrh R3, [R7,#2]
	bl sub_809FB4C
	add r2, r1, #0
	add r1, r0, #0
	ldrh R0, [R7,#2]
	bl sub_809FACE
	ldrh R0, [R7,#2]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
loc_809FB3E:
	add R7, #0xC
	b loc_809FB18
loc_809FB42:
	add R6, #4
	b loc_809FB12
loc_809FB46:
	add R4, #8
	b loc_809FB06
locret_809FB4A:
	pop {R4-R7,pc}
.endfunc // sub_809FB04

.func
.thumb_func
sub_809FB4C:
	push {R4-R7,lr}
	add r5, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp R0, #1
	beq loc_809FB64
	cmp R0, #3
	beq loc_809FB64
	cmp R0, #2
	beq loc_809FBAE
	cmp R0, #4
	beq loc_809FBAE
loc_809FB64:
	push {r6,r7}
	add r0, r5, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	pop {r6,r7}
	beq loc_809FBE6
	mov R4, #0
loc_809FB72:
	ldrb R3, [R6]
	cmp R3, #0
	beq loc_809FB7E
	add R4, #1
	add R6, #8
	b loc_809FB72
loc_809FB7E:
	add r0, r5, #0
	bl sub_809FADE
	ldrb R6, [R0]
	add R6, #1
	cmp R6, R4
	blt loc_809FB8E
	sub r6, r4, #1
loc_809FB8E:
	mov R4, #0
loc_809FB90:
	ldrb R3, [R7]
	cmp R3, #0
	beq loc_809FB9C
	add R4, #1
	add R7, #8
	b loc_809FB90
loc_809FB9C:
	add r0, r5, #0
	bl sub_809FADE
	ldrb R7, [R0,#1]
	add R7, #1
	cmp R7, R4
	blt loc_809FBAC
	sub r7, r4, #1
loc_809FBAC:
	b loc_809FBE0
loc_809FBAE:
	mov R4, #0
loc_809FBB0:
	ldrb R3, [R6]
	cmp R3, #0
	beq loc_809FBBC
	add R4, #1
	add R6, #8
	b loc_809FBB0
loc_809FBBC:
	mov R0, #0
	cmp R0, R4
	blt loc_809FBC4
	sub r0, r4, #1
loc_809FBC4:
	add r6, r0, #0
	mov R4, #0
loc_809FBC8:
	ldrb R3, [R7]
	cmp R3, #0
	beq loc_809FBD4
	add R4, #1
	add R7, #8
	b loc_809FBC8
loc_809FBD4:
	mov R0, #0
	cmp R0, R4
	blt loc_809FBDC
	sub r0, r4, #1
loc_809FBDC:
	add r7, r0, #0
	b loc_809FBE0
loc_809FBE0:
	add r0, r6, #0
	add r1, r7, #0
	pop {R4-R7,pc}
loc_809FBE6:
	add r0, r5, #0
	bl sub_809FADE
	ldrb R1, [R0,#1]
	ldrb R0, [R0]
	pop {R4-R7,pc}
.endfunc // sub_809FB4C

.func
.thumb_func
sub_809FBF2:
	push {R2-R7,lr}
	add r4, r1, #0
	cmp R0, #5
	bne loc_809FC0A
	mov R0, #0
	lsl r1, r0, #3
	mov R2, #8
	mul R1, R2
	lsl r0, r0, #2
	add r0, r0, r1
	add r0, r0, r4
	pop {R2-R7,pc}
loc_809FC0A:
	add r0, r1, #0
	pop {R2-R7,pc}
	.byte 0, 0
off_809FC10: .word dword_80A3360
off_809FC14: .word off_80A336C
	.word byte_2000210
.endfunc // sub_809FBF2

.func
.thumb_func
sub_809FC1C:
	push {R4-R7,lr}
	add r6, r0, #0
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R0, [R7,#4]
	ldrb R1, [R7,#5]
	cmp R0, #0x80
	bge loc_809FC2E
	b loc_809FC34
loc_809FC2E:
	sub R0, #0x80
	ldr R4, off_809FE98 // =off_80A336C 
	b loc_809FC36
loc_809FC34:
	ldr R4, off_809FE94 // =dword_80A3360 
loc_809FC36:
	lsl r0, r0, #3
	add R0, #4
	ldr R4, [R4,R0]
	lsl r1, r1, #2
	ldr R4, [R4,R1]
loc_809FC40:
	ldrb R0, [R4]
	cmp R0, #0
	beq loc_809FC8C
	ldrh R0, [R4,#2]
	cmp R0, R6
	beq loc_809FC50
	add R4, #0xC
	b loc_809FC40
loc_809FC50:
	ldrb R0, [R4]
	ldrb R1, [R4,#1]
	push {r0,r1}
	add r0, r6, #0
	bl sub_809FADE
	add r7, r0, #0
	ldr R2, [R4,#4]
	ldrb R3, [R7]
	mov R1, #8
	mul R1, R3
	add r2, r2, r1
	add R2, #2
	push {r2}
	ldrb R0, [R4]
	ldr R1, [R4,#8]
	bl sub_809FBF2
	add r4, r0, #0
	ldrb R3, [R7,#1]
	mov R1, #8
	mul R1, R3
	add r4, r4, r1
	ldrb R3, [R4]
	pop {r2}
	pop {r0,r1}
	add r4, r6, #0
	bl sub_809FE36
	b locret_809FC94
loc_809FC8C:
	mov R0, #0
	mov R1, #0xFF
	mov R2, #0xFF
	mov R3, #0xFF
locret_809FC94:
	pop {R4-R7,pc}
.endfunc // sub_809FC1C

.func
.thumb_func
sub_809FC96:
	push {R4-R7,lr}
	mov R4, R12
	push {r4}
	add r6, r0, #0
	mov R5, #1
	bl getPETNaviSelect // () -> u8
	mov r1, #0x33 
	bl sub_8013704
	cmp R0, #1
	beq loc_809FCB0
	mov R5, #0
loc_809FCB0:
	mov R7, R10
	ldr R7, [R7,#0x3C]
	ldrb R0, [R7,#4]
	ldrb R1, [R7,#5]
	cmp R0, #0x80
	bge loc_809FCBE
	b loc_809FCC4
loc_809FCBE:
	sub R0, #0x80
	ldr R4, off_809FE98 // =off_80A336C 
	b loc_809FCC6
loc_809FCC4:
	ldr R4, off_809FE94 // =dword_80A3360 
loc_809FCC6:
	lsl r0, r0, #3
	add R0, #4
	ldr R4, [R4,R0]
	lsl r1, r1, #2
	ldr R4, [R4,R1]
loc_809FCD0:
	ldrb R0, [R4]
	cmp R0, #0
	beq loc_809FD62
	ldrh R0, [R4,#2]
	cmp R0, R6
	beq loc_809FCE0
	add R4, #0xC
	b loc_809FCD0
loc_809FCE0:
	add r0, r6, #0
	bl sub_809FADE
	add r7, r0, #0
	ldrb R0, [R4]
	mov R12, R0
	ldr R1, [R4,#8]
	bl sub_809FBF2
	mov R1, R12
	cmp R1, #5
	bne loc_809FCFC
	tst R5, R5
	bne loc_809FD20
loc_809FCFC:
	add r4, r0, #0
	ldrb R3, [R7,#1]
	add r0, r6, #0
	bl sub_809FE44
	mov R1, #8
	mul R1, R3
	add r4, r4, r1
	ldr R0, [R4,#4]
	ldrb R1, [R4,#3]
	ldrb R2, [R4]
	sub R2, #1
	mov R3, #0xA
	mul R2, R3
	add R2, R12
	sub R2, #1
	ldrb R3, [R4]
	b loc_809FD6A
loc_809FD20:
	add r4, r0, #0
	ldrb R3, [R7,#1]
	add r0, r6, #0
	bl sub_809FE44
	mov R2, #0
loc_809FD2C:
	mov R1, #8
	mul R1, R2
	add r1, r1, r4
	ldrb R0, [R1]
	cmp R0, #3
	beq loc_809FD3C
	cmp R0, #7
	bne loc_809FD44
loc_809FD3C:
	sub R3, #1
	bge loc_809FD44
	add r4, r1, #0
	b loc_809FD4E
loc_809FD44:
	add R2, #1
	cmp R2, #8
	blt loc_809FD2C
	mov R2, #0
	b loc_809FD2C
loc_809FD4E:
	ldr R0, [R4,#4]
	ldrb R1, [R4,#3]
	ldrb R2, [R4]
	sub R2, #1
	mov R3, #0xA
	mul R2, R3
	add R2, R12
	sub R2, #1
	ldrb R3, [R4]
	b loc_809FD6A
loc_809FD62:
	mov R0, #0xFF
	mov R1, #0xFF
	mov R2, #0xFF
	mov R3, #0xFF
loc_809FD6A:
	pop {r4}
	mov R12, R4
	pop {R4-R7,pc}
.endfunc // sub_809FC96

.func
.thumb_func
sub_809FD70:
	push {R4-R7,lr}
	ldr R6, off_809FE9C // =byte_2000210 
	mov R0, #0
	strb R0, [R6,#0x2] // (byte_2000212 - 0x2000210)
	strh R0, [R6,#0x6] // (word_2000216 - 0x2000210)
	strh R0, [R6,#0x4] // (word_2000214 - 0x2000210)
	sub sp, sp, #0x20
	mov R4, SP
	ldr R7, off_809FE90 // =off_80A3428 
	mov R3, #0
loc_809FD84:
	ldr R0, [R7]
	tst R0, R0
	beq loc_809FD96
	ldr R0, [R7,#8]
	strb R0, [R4]
	add R7, #0xC
	add R3, #1
	add R4, #1
	b loc_809FD84
loc_809FD96:
	mov R0, SP
	add r1, r3, #0
	bl sub_8000E3A
	sub sp, sp, #0x10
	strb R0, [R6,#0x3] // (byte_2000213 - 0x2000210)
	mov R1, #0xC
	mul R0, R1
	ldr R1, off_809FE90 // =off_80A3428 
	add r1, r1, r0
	ldr R0, [R1]
	strh R0, [R6,#0x4] // (word_2000214 - 0x2000210)
	mov R0, #0
	ldr R1, [R1,#4]
	mov R2, SP
	push {R0-R2}
	// mem
	add r0, r2, #0
	// byteCount
	mov R1, #0x10
	// byte
	mov R2, #0xFF
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	pop {R0-R2}
	bl sub_809FA68
	strb R1, [R6,#0x2] // (byte_2000212 - 0x2000210)
	add sp, sp, #0x10
	add sp, sp, #0x20
	pop {R4-R7,pc}
.endfunc // sub_809FD70

.func
.thumb_func
sub_809FDCE:
	push {R4-R7,lr}
	ldr R6, off_809FE9C // =byte_2000210 
	lsl r1, r1, #8
	orr R0, R1
	ldrh R1, [R6,#0x4] // (word_2000214 - 0x2000210)
	cmp R0, R1
	bne locret_809FDDE
	strh R2, [R6,#0x6] // (word_2000216 - 0x2000210)
locret_809FDDE:
	pop {R4-R7,pc}
.endfunc // sub_809FDCE

.func
.thumb_func
sub_809FDE0:
	push {R4-R7,lr}
	ldr R6, off_809FE9C // =byte_2000210 
	ldrh R0, [R6,#0x6] // (word_2000216 - 0x2000210)
	tst R0, R0
	beq locret_809FE34
	sub sp, sp, #0x10
	// mem
	mov R0, SP
	// byteCount
	mov R1, #0x10
	// byte
	mov r2, #0x20 
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	mov R0, SP
	ldrh R1, [R6,#0x6] // (word_2000216 - 0x2000210)
	bl sub_8000E3A
	add r7, r0, #1
	add sp, sp, #0x10
	ldr R4, off_809FE98 // =off_80A336C 
	ldrb R0, [R6,#0x4] // (word_2000214 - 0x2000210)
	ldrb R1, [R6,#0x5] // (word_2000214+1 - 0x2000210)
	sub R0, #0x80
	lsl r0, r0, #3
	add R0, #4
	ldr R4, [R4,R0]
	lsl r1, r1, #2
	ldr R4, [R4,R1]
	mov R3, #0
loc_809FE16:
	ldrb R0, [R4]
	cmp R0, #0
	beq loc_809FE30
	cmp R0, #5
	bne loc_809FE2C
	add R3, #1
	cmp R3, R7
	bne loc_809FE2C
	ldrh R0, [R4,#2]
	strh R0, [R6,#0x6] // (word_2000216 - 0x2000210)
	b locret_809FE34
loc_809FE2C:
	add R4, #0xC
	b loc_809FE16
loc_809FE30:
	mov R0, #0
	strh R0, [R6,#0x6] // (word_2000216 - 0x2000210)
locret_809FE34:
	pop {R4-R7,pc}
.endfunc // sub_809FDE0

.func
.thumb_func
sub_809FE36:
	push {R4-R7,lr}
	ldr R6, off_809FE9C // =byte_2000210 
	ldrh R7, [R6,#0x6] // (word_2000216 - 0x2000210)
	cmp R4, R7
	bne locret_809FE42
	add R0, #1
locret_809FE42:
	pop {R4-R7,pc}
.endfunc // sub_809FE36

.func
.thumb_func
sub_809FE44:
	push {R5-R7,lr}
	ldr R6, off_809FE9C // =byte_2000210 
	ldrh R1, [R6,#0x6] // (word_2000216 - 0x2000210)
	cmp R0, R1
	bne locret_809FE5C
	ldrb R0, [R6,#0x3] // (byte_2000213 - 0x2000210)
	mov R1, #0xC
	mul R0, R1
	ldr R4, off_809FE90 // =off_80A3428 
	add r4, r4, r0
	ldr R4, [R4,#4]
	ldrb R3, [R6,#0x2] // (byte_2000212 - 0x2000210)
locret_809FE5C:
	pop {R5-R7,pc}
.endfunc // sub_809FE44

.func
.thumb_func
sub_809FE5E:
	push {R5-R7,lr}
	ldr R6, off_809FE9C // =byte_2000210 
	ldrb R0, [R6,#0x4] // (word_2000214 - 0x2000210)
	mov R1, #0x10
	svc 6
	mov R2, #0xA
	mul R0, R2
	add r0, r0, r1
	ldrb R1, [R6,#0x5] // (word_2000214+1 - 0x2000210)
	mov R2, #0
	mov R3, #0
	bl chatbox_8045EFC
	pop {R5-R7,pc}
.endfunc // sub_809FE5E

.func
.thumb_func
sub_809FE7A:
	push {R4-R7,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x40 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_809FE8E
	ldr R3, off_809FE9C // =byte_2000210 
	ldrb R1, [R3,#0x4] // (word_2000214 - 0x2000210)
	ldrb R2, [R3,#0x5] // (word_2000214+1 - 0x2000210)
	ldrb R3, [R3,#0x2] // (byte_2000212 - 0x2000210)
locret_809FE8E:
	// <endpool>
	pop {R4-R7,pc}
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
