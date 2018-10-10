.include "asm/asm22.inc"

.func
.thumb_func
sub_8086F18:
	push {r4-r7,lr}
	ldr r5, off_8086FA0 // =dword_8086A54+708 
	ldr r5, [r5]
	mov r6, #0
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r1, [r0,#4]
	cmp r1, #0x81
	beq loc_8086F2E
	mov r0, #3
	b loc_8086F30
loc_8086F2E:
	ldrb r0, [r0,#5]
loc_8086F30:
	ldr r1, off_8086F54 // =byte_8086F58 
	ldrb r7, [r1,r0]
	strb r7, [r5,#0xa] // (byte_2011A9A - 0x2011a90)
loc_8086F36:
	push {r5}
	mov r0, #9
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r4, r6, #0
	bl sub_80047E0
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_8086F36
	mov r0, #0
	pop {r4-r7,pc}
 .byte  0
 .byte  0
off_8086F54: .word byte_8086F58
byte_8086F58: .byte 0x1, 0x1, 0x3, 0x2
.endfunc // sub_8086F18

.func
.thumb_func
sub_8086F5C:
	push {r4-r7,lr}
	ldr r5, off_8086FA0 // =dword_8086A54+708 
	ldr r5, [r5]
	mov r6, #0
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r1, [r0,#4]
	cmp r1, #0x81
	beq loc_8086F72
	mov r0, #3
	b loc_8086F74
loc_8086F72:
	ldrb r0, [r0,#5]
loc_8086F74:
	ldr r1, off_8086F98 // =byte_8086F9C 
	ldrb r7, [r1,r0]
	strb r7, [r5,#0xb] // (byte_2011A9B - 0x2011a90)
loc_8086F7A:
	push {r5}
	mov r0, #0xa
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r4, r6, #0
	bl sub_80047E0
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_8086F7A
	mov r0, #0
	pop {r4-r7,pc}
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
	push {r4-r7,lr}
	ldrb r0, [r5,#1]
	cmp r0, #0
	bne loc_8087068
	bl reqBBS_81409F4
	cmp r0, #0xc0
	bge loc_8086FF4
	cmp r0, #0xb0
	blt loc_8086FF4
	mov r1, #0xb0
	sub r4, r0, r1
	strb r4, [r5,#0xc]
	b loc_808704C
loc_8086FF4:
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xf1
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8087004
	mov r0, #1
	strb r0, [r5,#9]
	b loc_8087048
loc_8087004:
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xf3
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_808702C
	mov r0, #1
	strb r0, [r5,#5]
	strb r0, [r5,#7]
	mov r0, #1
	strb r0, [r5,#1]
	mov r0, #5
	mov r1, #0xf3
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xf2
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_80870F8 // =dword_8086A54+716 
	b loc_80870F2
loc_808702C:
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xf4
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_80870F6
	mov r0, #2
	strb r0, [r5,#5]
	strb r0, [r5,#7]
	mov r0, #5
	mov r1, #0xf4
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_80870F8 // =dword_8086A54+716 
	b loc_80870F2
loc_8087048:
	ldr r0, off_80870FC // =dword_8086A54+732 
	b loc_80870F2
loc_808704C:
	bl sub_80871C0
	bne loc_808705C
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xf2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8087062
loc_808705C:
	add r1, r4, #0
	ldr r0, off_8087100 // =dword_8086D5C 
	b loc_80870F2
loc_8087062:
	add r1, r4, #0
	ldr r0, off_8087104 // =byte_8086D74 
	b loc_80870F2
loc_8087068:
	mov r0, #0
	strb r0, [r5,#1]
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r1, [r0,#4]
	cmp r1, #0x85
	beq loc_80870C2
	ldrb r0, [r0,#5]
	cmp r0, #0
	bne loc_8087092
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xe1
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xe1
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_8087108 // =dword_8086260+244 
	b loc_80870F2
loc_8087092:
	cmp r0, #1
	bne loc_80870AC
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xe2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xe2
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_808710C // =dword_8086260+328 
	b loc_80870F2
loc_80870AC:
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xe3
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov r0, #5
	// byteFlagIdx
	mov r1, #0xe3
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_8087110 // =dword_8086260+412 
	b loc_80870F2
loc_80870C2:
	// entryIdx
	mov r0, #0xf
	// byteFlagIdx
	mov r1, #0xc0
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_80870D8
	// entryIdx
	mov r0, #0xf
	// byteFlagIdx
	mov r1, #0xc0
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_8087114 // =dword_8086260+520 
	b loc_80870F2
loc_80870D8:
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldrb r1, [r1,#4]
	cmp r1, #0x81
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
	pop {r4-r7,pc}
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
	ldrb r0, [r5,#0xc]
	lsl r0, r0, #1
	ldr r1, off_80871D4 // =byte_80871D8 
	ldrh r1, [r1,r0]
	add r0, r1, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	pop {pc}
 .hword 0x0
// <endpool> <endfile>
off_80871D4: .word byte_80871D8
.endfunc // sub_80871C0

/*For debugging purposes, connect comment at any range!*/
