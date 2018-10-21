.include "asm/asm22.inc"

.func
.thumb_func
sub_8086F18:
	push {R4-R7,lr}
	ldr R5, off_8086FA0 // =dword_8086A54+708 
	ldr R5, [R5]
	mov R6, #0
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R1, [R0,#4]
	cmp R1, #0x81
	beq loc_8086F2E
	mov R0, #3
	b loc_8086F30
loc_8086F2E:
	ldrb R0, [R0,#5]
loc_8086F30:
	ldr R1, off_8086F54 // =byte_8086F58 
	ldrb R7, [R1,R0]
	strb R7, [R5,#0xA] // (byte_2011A9A - 0x2011A90)
loc_8086F36:
	push {r5}
	mov R0, #9
	mov R1, #0
	mov R2, #0
	mov R3, #0
	add r4, r6, #0
	bl sub_80047E0
	pop {r5}
	add R6, #1
	cmp R6, R7
	blt loc_8086F36
	mov R0, #0
	pop {R4-R7,pc}
	.byte  0
	.byte  0
off_8086F54: .word byte_8086F58
byte_8086F58: .byte 0x1, 0x1, 0x3, 0x2
.endfunc // sub_8086F18

.func
.thumb_func
sub_8086F5C:
	push {R4-R7,lr}
	ldr R5, off_8086FA0 // =dword_8086A54+708 
	ldr R5, [R5]
	mov R6, #0
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R1, [R0,#4]
	cmp R1, #0x81
	beq loc_8086F72
	mov R0, #3
	b loc_8086F74
loc_8086F72:
	ldrb R0, [R0,#5]
loc_8086F74:
	ldr R1, off_8086F98 // =byte_8086F9C 
	ldrb R7, [R1,R0]
	strb R7, [R5,#0xB] // (byte_2011A9B - 0x2011A90)
loc_8086F7A:
	push {r5}
	mov R0, #0xA
	mov R1, #0
	mov R2, #0
	mov R3, #0
	add r4, r6, #0
	bl sub_80047E0
	pop {r5}
	add R6, #1
	cmp R6, R7
	blt loc_8086F7A
	mov R0, #0
	pop {R4-R7,pc}
	.byte  0
	.byte  0
off_8086F98: .word byte_8086F9C
byte_8086F9C: .byte 0x2, 0x2, 0x2, 0x3
off_8086FA0: .word dword_8086A54+0x2C4
	.byte 0x10
	.byte 0xB5
	.byte 0x50 
	.byte 0x46 
	.byte 0xC0
	.byte 0x6B 
	.byte  1
	.byte 0x79 
	.byte 0x81
	.byte 0x29 
	.byte  1
	.byte 0xD0
	.byte  3
	.byte 0x20
	.byte  0
	.byte 0xE0
	.byte 0x40 
	.byte 0x79 
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0x49 
	.byte  8
	.byte 0x5A 
	.byte  0
	.byte 0x24 
	.byte  0
	.byte 0x1C
	.byte 0xA8
	.byte 0xF7
	.byte 0xD2
	.byte 0xF8
	.byte  0
	.byte 0xD0
	.byte  1
	.byte 0x24 
	.byte 0x20
	.byte 0x1C
	.byte 0x10
	.byte 0xBD
	.byte 0xD0
	.byte 0x6F 
	.byte  8
	.byte  8
	.byte 0xE1
	.byte  5
	.byte 0xE2
	.byte  5
	.byte 0xE3
	.byte  5
	.hword 0xFC0
.endfunc // sub_8086F5C

.func
.thumb_func
sub_8086FD8:
	push {R4-R7,lr}
	ldrb R0, [R5,#1]
	cmp R0, #0
	bne loc_8087068
	bl reqBBS_81409F4
	cmp R0, #0xC0
	bge loc_8086FF4
	cmp R0, #0xB0
	blt loc_8086FF4
	mov R1, #0xB0
	sub r4, r0, r1
	strb R4, [R5,#0xC]
	b loc_808704C
loc_8086FF4:
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xF1
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8087004
	mov R0, #1
	strb R0, [R5,#9]
	b loc_8087048
loc_8087004:
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xF3
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_808702C
	mov R0, #1
	strb R0, [R5,#5]
	strb R0, [R5,#7]
	mov R0, #1
	strb R0, [R5,#1]
	mov R0, #5
	mov R1, #0xF3
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xF2
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_80870F8 // =dword_8086A54+716 
	b loc_80870F2
loc_808702C:
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xF4
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_80870F6
	mov R0, #2
	strb R0, [R5,#5]
	strb R0, [R5,#7]
	mov R0, #5
	mov R1, #0xF4
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_80870F8 // =dword_8086A54+716 
	b loc_80870F2
loc_8087048:
	ldr R0, off_80870FC // =dword_8086A54+732 
	b loc_80870F2
loc_808704C:
	bl sub_80871C0
	bne loc_808705C
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xF2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8087062
loc_808705C:
	add r1, r4, #0
	ldr R0, off_8087100 // =dword_8086D5C 
	b loc_80870F2
loc_8087062:
	add r1, r4, #0
	ldr R0, off_8087104 // =byte_8086D74 
	b loc_80870F2
loc_8087068:
	mov R0, #0
	strb R0, [R5,#1]
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R1, [R0,#4]
	cmp R1, #0x85
	beq loc_80870C2
	ldrb R0, [R0,#5]
	cmp R0, #0
	bne loc_8087092
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xE1
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xE1
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8087108 // =dword_8086260+244 
	b loc_80870F2
loc_8087092:
	cmp R0, #1
	bne loc_80870AC
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xE2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xE2
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_808710C // =dword_8086260+328 
	b loc_80870F2
loc_80870AC:
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xE3
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov R0, #5
	// byteFlagIdx
	mov R1, #0xE3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8087110 // =dword_8086260+412 
	b loc_80870F2
loc_80870C2:
	// entryIdx
	mov R0, #0xF
	// byteFlagIdx
	mov R1, #0xC0
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov R0, #0xF
	// byteFlagIdx
	mov R1, #0xC0
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr R0, off_8087114 // =dword_8086260+520 
	b loc_80870F2
loc_80870D8:
	mov R1, R10
	ldr R1, [R1,#0x3C]
	ldrb R1, [R1,#4]
	cmp R1, #0x81
	bne loc_80870E8
	mov r0, #0x23 
	bl sub_800060A
loc_80870E8:
	bl sub_8086F18
	bl sub_8086F5C
	b locret_80870F6
loc_80870F2:
	bl init_s_02011C50_8036E90
locret_80870F6:
	pop {R4-R7,pc}
off_80870F8: .word dword_8086A54+0x2CC
off_80870FC: .word dword_8086A54+0x2DC
off_8087100: .word dword_8086D5C
off_8087104: .word byte_8086D74
off_8087108: .word dword_8086260+0xF4
off_808710C: .word dword_8086260+0x148
off_8087110: .word dword_8086260+0x19C
off_8087114: .word dword_8086260+0x208
	.byte 0x3B 
	.byte  1
	.byte  0
	.byte  0
	.byte  0
	.byte 0xB5
	.byte  6
	.byte 0x48 
	.byte 0x29 
	.byte 0x7B 
	.byte 0xAA
	.byte 0x79 
	.byte 0x32 
	.byte 0x2A 
	.byte  0
	.byte 0xDB
	.byte 0x28 
	.byte 0x3A 
	.byte 0x91
	.byte 0x42 
	.byte  0
	.byte 0xD0
	.byte  3
	.byte 0x48 
	.byte 0xAF
	.byte 0xF7
	.byte 0xAE
	.byte 0xFE
	.byte  0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0xE8
	.byte 0x68 
	.byte  8
	.byte  8
	.byte 0x98
	.byte 0x66 
	.byte  8
	.byte  8
	.byte 0x10
	.byte 0xB5
	.byte 0x51 
	.byte 0x46 
	.byte 0xC9
	.byte 0x6B 
	.byte 0x89
	.byte 0x69 
	.byte 0xCC
	.byte 0x7C 
	.byte 0x20
	.byte 0x1C
	.byte 0x10
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0xF0
	.byte 0xB5
	.byte 0x17
	.byte 0xF0
	.byte 0x2C 
	.byte 0xF8
	.byte 0xA
	.byte 0x24 
	.byte  0
	.byte 0x26 
	.byte 0x10
	.byte 0x23 
	.byte 0xE8
	.byte 0x50 
	.byte 0xC
	.byte 0x33 
	.byte  1
	.byte 0x36 
	.byte 0xA6
	.byte 0x42 
	.byte 0xFA
	.byte 0xDB
	.byte 0x14
	.byte 0x23 
	.byte  0
	.byte 0x26 
	.byte 0xE9
	.byte 0x50 
	.byte 0xC
	.byte 0x33 
	.byte  1
	.byte 0x36 
	.byte 0xA6
	.byte 0x42 
	.byte 0xFA
	.byte 0xDB
	.byte 0x18
	.byte 0x23 
	.byte  0
	.byte 0x26 
	.byte 0xEA
	.byte 0x50 
	.byte 0xC
	.byte 0x33 
	.byte  1
	.byte 0x36 
	.byte 0xA6
	.byte 0x42 
	.byte 0xFA
	.byte 0xDB
	.byte 0xF0
	.byte 0xBD
	.byte 0xF0
	.byte 0xB5
	.byte 0x70 
	.byte 0x23 
	.byte 0x7C 
	.byte 0x24 
	.byte  0
	.byte 0x26 
	.byte  9
	.byte 0x27 
	.byte 0xE8
	.byte 0x58 
	.byte  4
	.byte 0x33 
	.byte 0xE9
	.byte 0x58 
	.byte  4
	.byte 0x33 
	.byte 0xEA
	.byte 0x58 
	.byte 0x14
	.byte 0x3B 
	.byte 0x28 
	.byte 0x51 
	.byte  4
	.byte 0x34 
	.byte 0x29 
	.byte 0x51 
	.byte  4
	.byte 0x34 
	.byte 0x2A 
	.byte 0x51 
	.byte 0x14
	.byte 0x3C 
	.byte  1
	.byte 0x36 
	.byte 0xBE
	.byte 0x42 
	.byte 0xF0
	.byte 0xDB
	.byte 0x16
	.byte 0xF0
	.byte 0xFF
	.byte 0xFF
	.byte 0x10
	.byte 0x23 
	.byte 0xE8
	.byte 0x50 
	.byte  4
	.byte 0x33 
	.byte 0xE9
	.byte 0x50 
	.byte  4
	.byte 0x33 
	.byte 0xEA
	.byte 0x50 
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
.endfunc // sub_8086FD8

.func
.thumb_func
sub_80871C0:
	push {lr}
	ldrb R0, [R5,#0xC]
	lsl r0, r0, #1
	ldr R1, off_80871D4 // =byte_80871D8 
	ldrh R1, [R1,R0]
	add r0, r1, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	pop {pc}
	.hword 0x0
off_80871D4:
	// <endpool> <endfile>
	.word byte_80871D8
.endfunc // sub_80871C0

/*For debugging purposes, connect comment at any range!*/
