.include "asm/asm37_1.inc"

.func
.thumb_func
sub_814187C:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	add r0, r5, #0
	// memBlock
	add r0, #8
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x50 
	strb r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #0
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_814187C

.func
.thumb_func
sub_814189A:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	bl sub_814187C
	bl sub_81418F0
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_814189A

.func
.thumb_func
sub_81418AA:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	mov r0, #1
	strb r0, [r5,#0xd] // (dword_200101C+1 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_81418AA

.func
.thumb_func
sub_81418B6:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	mov r0, #0
	strb r0, [r5,#0xd] // (dword_200101C+1 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_81418B6

.func
.thumb_func
sub_81418C2:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	mov r0, #0
	strb r0, [r5,#0xe] // (dword_200101C+2 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_81418C2

.func
.thumb_func
sub_81418CE:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	mov r0, #1
	strb r0, [r5,#0xe] // (dword_200101C+2 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_81418CE

.func
.thumb_func
sub_81418DA:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	strb r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	strb r1, [r5,#0x15] // (dword_2001024+1 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_81418DA

.func
.thumb_func
sub_81418E4:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	ldrb r0, [r5,#0x16] // (dword_2001024+2 - 0x2001010)
	ldrb r1, [r5,#0x15] // (dword_2001024+1 - 0x2001010)
	ldrb r2, [r5,#0x14] // (dword_2001024 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_81418E4

.func
.thumb_func
sub_81418F0:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	mov r0, #0
	bl sub_81420C8
	push {r0}
	mov r0, #1
	bl sub_81420C8
	push {r0}
	mov r0, #2
	bl sub_81420C8
	pop {r1,r2}
	add r0, r0, r1
	add r0, r0, r2
	strb r0, [r5,#0x16] // (dword_2001024+2 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_81418F0

.func
.thumb_func
sub_8141914:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	ldr r4, off_8141954 // =dword_8141958 
	lsl r6, r3, #3
	add r4, r4, r6
	ldr r6, [r4]
	add r0, r0, r6
	ldr r6, [r4,#4]
	add r1, r1, r6
	str r0, [r5,#0x1c] // (dword_200102C - 0x2001010)
	str r1, [r5,#0x20] // (dword_2001030 - 0x2001010)
	str r2, [r5,#0x24] // (dword_2001034 - 0x2001010)
	strb r3, [r5,#0x1b] // (dword_2001028+3 - 0x2001010)
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#4]
	strb r0, [r5,#0x18] // (dword_2001028 - 0x2001010)
	ldrb r0, [r7,#5]
	strb r0, [r5,#0x19] // (dword_2001028+1 - 0x2001010)
	mov r0, #0
	strb r0, [r5,#0x1a] // (dword_2001028+2 - 0x2001010)
	add r5, #0x18
	mov r0, #0xc
	strb r0, [r5,#0x10] // (byte_2001038 - 0x2001028)
	mov r0, #8
	strb r0, [r5,#0x11] // (byte_2001039 - 0x2001028)
	mov r0, #0xff
	strb r0, [r5,#0x12] // (byte_200103A - 0x2001028)
	mov r0, #0xff
	strb r0, [r5,#0x13] // (byte_200103B - 0x2001028)
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8141954: .word dword_8141958
dword_8141958: .word 0xFF0000, 0xFF0000, 0x180000, 0x0
	.word 0xFF0000, 0xFF0000, 0x0
	.word 0x180000, 0xFF0000, 0xFF0000, 0xFFE80000, 0x0
	.word 0xFF0000, 0xFF0000, 0x0
	.word 0xFFE80000, 0x485EB5F0, 0xBDF03018
.endfunc // sub_8141914

.func
.thumb_func
sub_81419A0:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010 
	bl sub_8141AA8
	bne loc_8141A0C
	ldrb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	tst r0, r0
	beq loc_81419CC
	mov r0, #0
	strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	bl sub_80468BA
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl sub_80468C6
loc_81419CC:
	bl sub_8046818
	bl sub_8046854
	bl sub_811E0BA
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne loc_8141A0C
	bl sub_809E462
	bne loc_8141A0C
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8141A0C
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8141A0C
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0]
	cmp r0, #4
	bne loc_8141A0C
	bl sub_8141AD2
	bne loc_8141A08
	bl sub_8141A10
	b loc_8141A0C
loc_8141A08:
	bl sub_8141A70
loc_8141A0C:
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_81419A0

.func
.thumb_func
sub_8141A10:
	push {r4-r7,lr}
	ldrb r0, [r5,#0xd]
	tst r0, r0
	bne locret_8141A6A
	mov r0, #2
	strb r0, [r5,#0xb]
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bgt locret_8141A6A
	mov r0, #0
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#0x10]
	tst r0, r0
	ble loc_8141A36
	sub r0, #1
	strb r0, [r5,#0x10]
	mov r0, #0x1e
	strb r0, [r5,#0xc]
loc_8141A36:
	ldrb r0, [r5,#0x10]
	cmp r0, #0x27 
	bne loc_8141A4A
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne locret_8141A6A
	mov r0, #1
	strb r0, [r5,#0x13]
	mov r1, #5
	b loc_8141A62
loc_8141A4A:
	cmp r0, #0x13
	bne loc_8141A5C
	ldrb r0, [r5,#0x17]
	tst r0, r0
	bne locret_8141A6A
	mov r0, #1
	strb r0, [r5,#0x17]
	mov r1, #6
	b loc_8141A62
loc_8141A5C:
	cmp r0, #0
	bne loc_8141ACA
	mov r1, #7
loc_8141A62:
	ldr r0, off_8141A6C // =dword_808A128 
	bl init_s_02011C50_8036E90
	bne loc_8141ABC
locret_8141A6A:
	pop {r4-r7,pc}
off_8141A6C: .word dword_808A128
.endfunc // sub_8141A10

.func
.thumb_func
sub_8141A70:
	push {r4-r7,lr}
	ldrb r0, [r5,#0xd]
	tst r0, r0
	bne locret_8141AA6
	mov r0, #0
	strb r0, [r5,#0x13]
	strb r0, [r5,#0x17]
	mov r0, #0x1e
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	bgt locret_8141AA6
	ldrb r0, [r5,#0x11]
	sub r0, #1
	blt loc_8141A92
	strb r0, [r5,#0x11]
loc_8141A92:
	ldrb r0, [r5,#0x10]
	add r0, #1
	cmp r0, #0x50 
	bgt loc_8141AA2
	strb r0, [r5,#0x10]
	mov r0, #2
	strb r0, [r5,#0xb]
	b locret_8141AA6
loc_8141AA2:
	mov r0, #0
	strb r0, [r5,#0x11]
locret_8141AA6:
	pop {r4-r7,pc}
.endfunc // sub_8141A70

.func
.thumb_func
sub_8141AA8:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_8141ACE
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrh r7, [r7,#4]
	mov r6, #0
	ldr r4, off_8141B04 // =dword_8141B08 
loc_8141ABC:
	ldrh r0, [r4,r6]
	tst r0, r0
	beq loc_8141ACE
	cmp r0, r7
	beq loc_8141ACA
	add r6, #2
	b loc_8141ABC
loc_8141ACA:
	mov r0, #0
	pop {r4-r7,pc}
loc_8141ACE:
	mov r0, #1
	pop {r4-r7,pc}
.endfunc // sub_8141AA8

.func
.thumb_func
sub_8141AD2:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #1
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8141B00
	ldrb r0, [r5,#0x11]
	tst r0, r0
	bne loc_8141B00
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrh r7, [r7,#4]
	mov r6, #0
	ldr r4, off_8141B04 // =dword_8141B08 
loc_8141AEE:
	ldrh r0, [r4,r6]
	tst r0, r0
	beq loc_8141B00
	cmp r0, r7
	beq loc_8141AFC
	add r6, #2
	b loc_8141AEE
loc_8141AFC:
	mov r0, #0
	pop {r4-r7,pc}
loc_8141B00:
	mov r0, #1
	pop {r4-r7,pc}
off_8141B04: .word dword_8141B08
dword_8141B08: .word 0x1910091, 0x3880291, 0x0
off_8141B14: .word byte_2001010
off_8141B18: .word off_8141B30
	.word off_8141C9C
	.word off_8141E1C
	.word dword_8141C84
	.word dword_8141E04
	.word dword_8141F64
off_8141B30: .word dword_8141B48
	.word dword_8141B90
	.word dword_8141BC8
	.word dword_8141C00
	.word dword_8141C48
	.byte 0, 0, 0, 0
dword_8141B48: .word 0xFAFEF814, 0x180001FF, 0x1401001E, 0x1000406, 0x8040614
	.word 0x1402001E, 0x1E080406, 0x6140200, 0x1E0804, 0x4061401
	.word 0x1001E08, 0x8040614, 0x1402001E, 0x1E080406, 0x6140200
	.word 0x81E0804, 0x1B871001, 0x814
dword_8141B90: .word 0x2DFFC614, 0x18000100, 0x1E01001E, 0x1E180408, 0x81E0100
	.word 0x1E1804, 0x4081E01, 0x1001E18, 0x1804081E, 0x1E01001E
	.word 0x1E180408, 0x81E0100, 0x10010804, 0x8141BC1
dword_8141BC8: .word 0x14002814, 0x18000200, 0x1E01001E, 0x1E180410, 0x101E0100
	.word 0x1E1804, 0x4101E01, 0x2001E18, 0x1804101E, 0x1E02001E
	.word 0x1E180410, 0x101E0200, 0x10010804, 0x8141BF9
dword_8141C00: .word 0xE8FFA614, 0x18000200, 0x1E01001E, 0x1E180408, 0x81E0200
	.word 0x1E1804, 0x4081E01, 0x2001E18, 0x1804081E, 0x1E01001E
	.word 0x1E180408, 0x81E0200, 0x1E1804, 0x4081E01, 0x2001E18
	.word 0x1804081E, 0x1001081E, 0x8141C41
dword_8141C48: .word 0xACFEFA14, 0x18000100, 0x1401001E, 0x1E180408, 0x8140100
	.word 0x1E1804, 0x4081402, 0x2001E18, 0x18040814, 0xE601001E
	.word 0x1E180408, 0x8140200, 0x81E1804, 0x1C7B1001, 0x814
dword_8141C84: .word 0xE05, 0x4C0000, 0xFEC40000, 0x400000, 0x3, 0xFF
off_8141C9C: .word dword_8141CB4
	.word byte_8141CF0
	.word dword_8141D38
	.word dword_8141D80
	.word dword_8141DC8
	.word 0x0
dword_8141CB4: .word 0x2E000814, 0x180001FF, 0x1401001E, 0x14080406, 0x6140300
	.word 0x140804, 0x4061401, 0x3001408, 0x8040614, 0x14010014
	.word 0x14080406, 0x6140300, 0x8140804, 0x1CE71001, 0x814
byte_8141CF0: .byte 0x14, 0x52, 0xFF, 0x44, 0x0, 0x1, 0x0, 0x18, 0x1E, 0x0
	.byte 0x1, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x8
	.byte 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E, 0x8, 0x4, 0x18, 0x1E
	.byte 0x0, 0x0, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x3, 0x1E
	.byte 0x8, 0x4, 0x18, 0x1E, 0x0, 0x3, 0x1E, 0x8, 0x4, 0x18
	.byte 0x1E, 0x0, 0x2, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x2
	.byte 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x8, 0x1, 0x10, 0x31, 0x1D
	.byte 0x14, 0x8
dword_8141D38: .word 0xE8FFFC14, 0x180001FF, 0x1401001E, 0x1E180406, 0x6140200
	.word 0x1E1804, 0x4061401, 0x2001E18, 0x18040614, 0x1401001E
	.word 0x1E180406, 0x6140200, 0x1E1804, 0x4061401, 0x2001E18
	.word 0x18040614, 0x1001081E, 0x8141D79
dword_8141D80: .word 0x17015414, 0x180001FF, 0x1A01001E, 0x1E180408, 0x81A0100
	.word 0x1E1804, 0x4081A01, 0x1001E18, 0x1804081A, 0x1A01001E
	.word 0x1E180408, 0x81A0100, 0x1E1804, 0x4081A01, 0x1001E18
	.word 0x1804081A, 0x1001081E, 0x8141DC1
dword_8141DC8: .word 0xC200A814, 0x18000200, 0x1E02001E, 0x1E180410, 0x101E0200
	.word 0x1E1804, 0x4101E01, 0x1001E18, 0x1804101E, 0x1E02001E
	.word 0x1E180410, 0x101E0200, 0x81E1804, 0x1DFB1001, 0x814
dword_8141E04: .word 0xE05, 0x860000, 0xFE880000, 0x0
	.word 0x3, 0xFF
off_8141E1C: .word dword_8141E34
	.word dword_8141E7C
	.word dword_8141EC4
	.word dword_8141EF0
	.word dword_8141F1C
	.word 0x0
dword_8141E34: .word 0xE8010E14, 0x180002FE, 0x1402001E, 0x1E180406, 0x6140200
	.word 0x1E1804, 0x4061402, 0x2001E18, 0x18040614, 0x1402001E
	.word 0x1E180406, 0x6140200, 0x1E1804, 0x4061402, 0x2001E18
	.word 0x18040614, 0x1001081E, 0x8141E75
dword_8141E7C: .word 0xB400DA14, 0x180002FF, 0x1A02001E, 0x1E180408, 0x81A0100
	.word 0x1E1804, 0x4081A02, 0x1001E18, 0x1804081A, 0x1A02001E
	.word 0x1E180408, 0x81A0100, 0x1E1804, 0x4081A02, 0x1001E18
	.word 0x1804081A, 0x1001081E, 0x8141EBD
dword_8141EC4: .word 0xEFF9E14, 0x18000300, 0x1E03001E, 0x1E180410, 0x101E0000
	.word 0x1E1804, 0x4101E03, 0x1E18, 0x1804101E, 0x1001081E
	.word 0x8141EE9
dword_8141EF0: .word 0xFEFEDC14, 0x180001FF, 0x1E01001E, 0x1E180408, 0x81E0200
	.word 0x1E1804, 0x4081E01, 0x2001E18, 0x1804081E, 0x1001081E
	.word 0x8141F15
dword_8141F1C: .word 0xD2006A14, 0x180003FF, 0x1403001E, 0x1E180406, 0x61E0000
	.word 0x1E1804, 0x4061E03, 0x1E18, 0x1804061E, 0x1E03001E
	.word 0x1E180406, 0x61E0000, 0x1E1804, 0x4061E03, 0x1E18
	.word 0x1804061E, 0x1001081E, 0x8141F5D
dword_8141F64: .word 0xE05, 0x1A00000, 0xFEEE0000, 0x0
	.word 0x3, 0xFF, 0x4651B5F0, 0x790A6BC9, 0x79487B0B, 0x807B49
	.word 0xB40F0089, 0x21002007, 0xF8E6F6ED, 0xD103BC0F, 0xD101429A, 0xD0074288
	.word 0x4862B4FF, 0xF6BE4923, 0xF7FFFC99, 0xBCFFFC74, 0xF864F000, 0x4F1E0080
	.word 0x2400583F, 0x42006838, 0x1C20D00E, 0xF892F000, 0xF6ED1C00, 0xD104F8CB
	.word 0x200DB4F0, 0xFC02F6C2, 0x3401BCF0, 0xE7ED3704, 0xF84CF000, 0x5C084915
	.word 0xF7FF210F, 0xF000FC74, 0x4F11F845, 0x58380080, 0xFAB8F6C1, 0x21022007
	.word 0xF8AEF6ED, 0x480FD007, 0xF6F42100, 0x2007FF3F, 0xF6ED2102, 0xF75CF889
	.word 0xD004F9C2, 0xF6BF2054, 0xF7FEF8A6, 0x2007FCEB, 0xF6ED2100, 0xBDF0F87D
	.word 0x8141B18, 0x140, 0x8141B24, 0x8142044, 0xFF050505, 0x8089DF4
	.word 0xBDF0B5F0
.endfunc // sub_8141AD2

.func
.thumb_func
sub_8142050:
	push {r4-r6,lr}
	lsl r4, r0, #2
	bl sub_8142080
	lsl r0, r0, #2
	ldr r7, off_8142064 // =off_8141B18 
	ldr r7, [r7,r0]
	ldr r7, [r7,r4]
	pop {r4-r6,pc}
	.balign 4, 0x00
off_8142064: .word off_8141B18
.endfunc // sub_8142050

.func
.thumb_func
sub_8142068:
	ldr r6, off_8142130 // =unk_2000BE0 
	mov r1, #0x28 
	mul r0, r1
	add r6, r6, r0
	mov pc, lr
.endfunc // sub_8142068

.func
.thumb_func
sub_8142072:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0xf
	bl sub_81418DA
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_8142072

.func
.thumb_func
sub_8142080:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrh r7, [r7,#4]
	mov r6, #0
	ldr r4, off_81420A4 // =dword_81420A8 
loc_814208C:
	ldrh r0, [r4,r6]
	tst r0, r0
	beq loc_81420A0
	cmp r0, r7
	beq loc_814209A
	add r6, #2
	b loc_814208C
loc_814209A:
	lsr r0, r6, #1
	tst r0, r0
	pop {r4-r7,pc}
loc_81420A0:
	mov r0, #0xff
	pop {r4-r7,pc}
off_81420A4: .word dword_81420A8
dword_81420A8: .word 0x1910091, 0x291
.endfunc // sub_8142080

.func
.thumb_func
sub_81420B0:
	push {r4-r7,lr}
	bl sub_8142080
	ldr r1, off_81420C0 // =dword_81420C4 
	ldrb r0, [r1,r0]
	lsl r0, r0, #0x10
	pop {r4-r7,pc}
	.byte 0, 0
off_81420C0: .word dword_81420C4
dword_81420C4: .word 0x404080
.endfunc // sub_81420B0

.func
.thumb_func
sub_81420C8:
	push {r4-r7,lr}
	ldr r7, off_814211C // =dword_8142120 
	lsl r0, r0, #2
	add r7, r7, r0
	mov r4, #0
	mov r6, #0
loc_81420D4:
	ldrh r0, [r7,#2]
	cmp r4, r0
	bge loc_81420EC
	ldrh r0, [r7]
	add r0, r0, r4
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81420E8
	add r6, #1
loc_81420E8:
	add r4, #1
	b loc_81420D4
loc_81420EC:
	add r0, r6, #0
	pop {r4-r7,pc}
.endfunc // sub_81420C8

.func
.thumb_func
sub_81420F0:
	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_8142080
	ldr r1, off_814211C // =dword_8142120 
	lsl r0, r0, #2
	ldrh r0, [r1,r0]
	add r0, r0, r4
	pop {r4-r7,pc}
.endfunc // sub_81420F0

.func
.thumb_func
sub_8142102:
	push {r4-r7,lr}
	bl sub_8142080
	ldr r1, off_814211C // =dword_8142120 
	lsl r0, r0, #2
	add r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1,#2]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	add r2, r1, #0
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	pop {r4-r7,pc}
off_814211C: .word dword_8142120
dword_8142120: .word 0x50710, 0x50720, 0x50730, 0x0
off_8142130: .word unk_2000BE0
.endfunc // sub_8142102

.func
.thumb_func
sub_8142134:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	add r0, r5, #0
	add r0, #8
	mov r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #7
	mov r1, #0x40 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_8142134

.func
.thumb_func
sub_814214E:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	mov r0, #0
	strb r0, [r5,#0xd] // (byte_200078D - 0x2000780)
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_814214E

.func
.thumb_func
sub_814215A:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	mov r0, #1
	strb r0, [r5,#0xd] // (byte_200078D - 0x2000780)
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_814215A

.func
.thumb_func
sub_8142166:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_8142166

.func
.thumb_func
sub_814216E:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_814216E

.func
.thumb_func
sub_8142178:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	add r0, #1
	strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_8142178

.func
.thumb_func
sub_8142184:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	sub r0, #1
	strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_8142184

.func
.thumb_func
sub_8142190:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	add r0, #0x10
	ldrb r0, [r5,r0]
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8142190

.func
.thumb_func
sub_814219C:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	ldrb r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
	ldrb r1, [r5,#0x11] // (dword_2000790+1 - 0x2000780)
	add r0, r0, r1
	ldrb r1, [r5,#0x12] // (dword_2000790+2 - 0x2000780)
	add r0, r0, r1
	ldrb r1, [r5,#0x13] // (dword_2000790+3 - 0x2000780)
	add r0, r0, r1
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_814219C

.func
.thumb_func
sub_81421B2:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	add r1, r0, #0
	add r1, #0x10
	ldrb r0, [r5,r1]
	sub r2, r0, #1
	blt loc_81421C4
	strb r2, [r5,r1]
	add r0, r2, #0
loc_81421C4:
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_81421B2

.func
.thumb_func
sub_81421C8:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	strb r0, [r5,#0xb] // (byte_200078B - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_81421C8

.func
.thumb_func
sub_81421D0:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	ldrb r0, [r5,#0xb] // (byte_200078B - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_81421D0

.func
.thumb_func
sub_81421D8:
	push {r4-r7,lr}
	ldr r0, off_8142308 // =byte_2000780 
	add r0, #0x18
	pop {r4-r7,pc}
.endfunc // sub_81421D8

.func
.thumb_func
sub_81421E0:
	push {r4-r7,lr}
	ldr r0, off_8142308 // =byte_2000780 
	ldr r0, [r0,#0x18] // (dword_2000798 - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_81421E0

.func
.thumb_func
sub_81421E8:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	mov r4, #0
loc_81421EE:
	ldr r1, [r5,#0x18]
	tst r1, r1
	beq loc_81421FE
	cmp r0, r1
	beq loc_81421FC
	add r5, #4
	b loc_81421EE
loc_81421FC:
	mov r4, #1
loc_81421FE:
	add r0, r4, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_81421E8

.func
.thumb_func
sub_8142204:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	ldr r1, [r5,#0x28] // (dword_20007A8 - 0x2000780)
	add r2, r1, #1
	str r2, [r5,#0x28] // (dword_20007A8 - 0x2000780)
	lsl r1, r1, #2
	add r1, #0x2c 
	ldr r2, off_814221C // =dword_8142220 
	ldrb r0, [r2,r0]
	str r0, [r5,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_814221C: .word dword_8142220
dword_8142220: .word 0x1E140A00
.endfunc // sub_8142204

.func
.thumb_func
sub_8142224:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	mov r6, #0
	ldr r4, [r5,#0x28] // (dword_20007A8 - 0x2000780)
	sub r4, #1
	blt loc_8142238
	str r4, [r5,#0x28] // (dword_20007A8 - 0x2000780)
	lsl r4, r4, #2
	add r4, #0x2c 
	ldr r6, [r5,r4]
loc_8142238:
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8142224

.func
.thumb_func
sub_814223E:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	mov r0, #0
	str r0, [r5,#0x28] // (dword_20007A8 - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_814223E

.func
.thumb_func
sub_8142248:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	bl sub_81422BE
	bne loc_8142272
	ldrb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
	tst r0, r0
	beq loc_814226A
	mov r0, #0
	strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
	bl sub_80468BA
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
loc_814226A:
	bl sub_8046818
	bl sub_8046854
loc_8142272:
	bl sub_8142C90
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_8142248

.func
.thumb_func
sub_814227A:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	bl sub_81426CE
	ldr r1, off_8142290 // =byte_8142294 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0, 0
off_8142290: .word byte_8142294
byte_8142294: .byte 0x2, 0x2, 0x1, 0x1, 0x2, 0x2, 0x4, 0x1, 0x3, 0x4, 0x4, 0x2, 0x4, 0x4, 0x3, 0x3, 0x3
	.byte 0x3, 0x3, 0x3, 0x3, 0x5, 0x4, 0x3, 0x4, 0x6, 0x4, 0x6, 0x3, 0x4, 0x5, 0x3
.endfunc // sub_814227A

.func
.thumb_func
sub_81422B4:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780 
	mov r0, #0
	str r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
	pop {r4-r7,pc}
.endfunc // sub_81422B4

.func
.thumb_func
sub_81422BE:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_81422F0
	bl sub_81426CE
	add r4, r0, #0
	cmp r4, #0xff
	beq loc_81422F0
	bl sub_81427CE
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81422F0
	ldr r1, off_81422F4 // =dword_81422F8 
	lsl r4, r4, #1
	ldrh r0, [r1,r4]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81422F0
	mov r0, #0
	pop {r4-r7,pc}
loc_81422F0:
	mov r0, #1
	pop {r4-r7,pc}
off_81422F4: .word dword_81422F8
dword_81422F8: .word 0x6870686, 0x6890688, 0x68B068A, 0x68D068C
off_8142308: .word byte_2000780
	.word dword_814232C
	.word dword_814234C
	.word dword_814237C
	.word dword_81423B0
	.word dword_81423E8
	.word dword_8142424
	.word dword_8142468
	.word dword_81424BC
dword_814232C: .word 0x1028379, 0x2017E81, 0x1027E82, 0x1028188, 0x2018189
	.word 0x1008089, 0x2007F89, 0xFFFF0000
dword_814234C: .word 0x102867C, 0x201867D, 0x102877D, 0x103867E, 0x1017F83
	.word 0x2017F84, 0x1017F85, 0x1007883, 0x2007783, 0x2017784
	.word 0x1017684, 0xFFFF0000
dword_814237C: .word 0x101847D, 0x301847E, 0x101837E, 0x2018482, 0x2028483
	.word 0x1018382, 0x2038182, 0x2008183, 0x1008083, 0x2037C7F
	.word 0x1037C80, 0x3027C81, 0xFFFF0000
dword_81423B0: .word 0x300817B, 0x201817C, 0x200807C, 0x1007F7C, 0x2027E81
	.word 0x1017E84, 0x2028686, 0x3028586, 0x2028486, 0x2028587
	.word 0x2038487, 0x2038C75, 0x2028C77, 0xFFFF0000
dword_81423E8: .word 0x3008979, 0x201897A, 0x100897B, 0x2018188, 0x2018088
	.word 0x2037F88, 0x1037E88, 0x1037F8A, 0x2037585, 0x3037584
	.word 0x2027583, 0x1027683, 0x3027D7C, 0x3027D7B, 0xFFFF0000
dword_8142424: .word 0x1028576, 0x2018577, 0x1018475, 0x2018476, 0x3038477
	.word 0x1018478, 0x1018376, 0x1018377, 0x303798B, 0x303788B
	.word 0x202778B, 0x100768B, 0x300788D, 0x300788C, 0x3007284
	.word 0x2017282, 0xFFFF0000
dword_8142468: .word 0x3028682, 0x3028882, 0x3028783, 0x2008784, 0x1028187
	.word 0x2018188, 0x2018189, 0x1028087, 0x2038089, 0x3027F87
	.word 0x1017F88, 0x3037F89, 0x201847D, 0x303837D, 0x303827D
	.word 0x301817D, 0x3027B7D, 0x1018277, 0x1008375, 0x3028275
	.word 0xFFFF0000
dword_81424BC: .word 0x101818B, 0x101818A, 0x3008189, 0x1018384, 0x2018383
	.word 0x3038382, 0x3038283, 0x2038183, 0x3007E85, 0x300857E
	.word 0x203857D, 0x200847E, 0x100817E, 0x201817D, 0x101807D
	.word 0x1027D7D, 0x3017C7D, 0x3037B7E, 0x1017B7D, 0x2017B7C
	.word 0xFFFF0000, 0x2016B5F0, 0x22182150, 0xFE31F6EC, 0xF957F000
	.word 0xF6EC1C00, 0xD069FE21, 0xF930F000, 0x20072601, 0xF6EC2140
	.word 0xD002FE17, 0xF0002600, 0x2000F8FB, 0xFE11F7FF, 0xF8C3F000
	.word 0x804F2D, 0x4DE0583F, 0x88382400, 0xD01D4200, 0xD1044236
	.word 0x78F880A8, 0x78B870A8, 0x1C2070E8, 0xF91CF000, 0xF6EC1C00
	.word 0xD10BFDFB, 0x200FB4F0, 0xF932F6C2, 0xF7FFBCF0, 0x4820FDFB
	.word 0x1C001900, 0xFDD2F6EC, 0x35083401, 0xE7DE3704, 0xFA34F7FE
	.word 0xF6F42021, 0x2000FC74, 0xF6EC2128, 0xD105FDDF, 0xF891F000
	.word 0xDA012806, 0xFF1BF6F2, 0xF88BF000, 0x5C094914, 0x6BC04650
	.word 0x20077541, 0xF6EC2144, 0xD003FDCD, 0x2100480E, 0xFC5EF6F4
	.word 0x21402007, 0xFDA8F6EC, 0x21422007, 0xFDA4F6EC, 0x21432007
	.word 0xFDA0F6EC, 0x21462007, 0xFD9CF6EC, 0x21472007, 0xFD98F6EC
	.word 0xBDF0, 0x814230C, 0x1650, 0x8089448, 0x8142610
	.word 0x3C2D2D2D, 0x96963C3C, 0xF6F2B5F0, 0xD025FB0C, 0xF8D5F000
	.word 0xF6EC1C00, 0xD01FFD9F, 0x21422007, 0xFD98F6EC, 0x4653D109
	.word 0x7C586BDB, 0xD01D4200, 0x21422007, 0xFD64F6EC, 0x2007E018
	.word 0xF6EC2143, 0xD104FD89, 0x21432007, 0xFD5AF6EC, 0xF6F3E00E
	.word 0xD103F8A6, 0x21004814, 0xFC12F6F4, 0x21422007, 0xFD5CF6EC
	.word 0x21432007, 0xFD58F6EC, 0x21462007, 0xFD70F6EC, 0x480DD004
	.word 0xF6F42100, 0xD0FFFC01, 0x21472007, 0xFD66F6EC, 0x4809D004
	.word 0xF6F42100, 0xD0FFFBF7, 0x21462007, 0xFD40F6EC, 0x21472007
	.word 0xFD3CF6EC, 0xBDF0, 0x8089554, 0x80893CC, 0x8089128
	.word 0x21084E82, 0x18364348
.endfunc // sub_81422BE

.func
.thumb_func
nullsub_37:
	mov pc, lr
.endfunc // nullsub_37

.func
.thumb_func
sub_81426CE:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrh r7, [r7,#4]
	mov r6, #0
	ldr r4, off_81426F4 // =dword_81426F8 
loc_81426DA:
	ldrh r0, [r4,r6]
	tst r0, r0
	beq loc_81426EE
	cmp r0, r7
	beq loc_81426E8
	add r6, #2
	b loc_81426DA
loc_81426E8:
	lsr r0, r6, #1
	tst r0, r0
	pop {r4-r7,pc}
loc_81426EE:
	mov r0, #0xff
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81426F4: .word dword_81426F8
dword_81426F8: .word 0x1900090, 0x910290, 0x2910191, 0x1930093, 0xB5F00000
	.word 0xFFDFF7FF, 0x404F17, 0xF0005A3F, 0x1C04F839, 0x3C012600
	.word 0x1938DB06, 0xF6EC1C00, 0xD0F8FD1F, 0xE7F63601, 0xBDF01C30
	.word 0xF7FFB5F0, 0x4F0DFFCA, 0x5A3F0040, 0xF824F000, 0x3C011C04
	.word 0x1938DB04, 0xF6EC1C00, 0xE7F8FCEF, 0x490C485E, 0xF8C2F6BE
	.word 0xF849F000, 0xF6EC1C00, 0xD001FD01, 0xFD87F7FF, 0xBDF0
	.word 0x8142774, 0x7640750, 0x78C0778, 0x7B407A0, 0x7DC07C8
	.word 0x0
	.word 0xA0
.endfunc // sub_81426CE

.func
.thumb_func
sub_814278C:
	push {r4-r7,lr}
	bl sub_81426CE
	ldr r7, off_8142798 // =byte_814279C 
	ldrb r0, [r7,r0]
	pop {r4-r7,pc}
off_8142798: .word byte_814279C
byte_814279C: .byte 0x7, 0xB, 0xC, 0xD, 0xE, 0x10, 0x14, 0x14
.endfunc // sub_814278C

.func
.thumb_func
sub_81427A4:
	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_81426CE
	ldr r1, off_81427B8 // =dword_81427BC 
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	add r0, r0, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81427B8: .word dword_81427BC
dword_81427BC: .word 0x7640750, 0x78C0778, 0x7B407A0, 0x7DC07C8
	.byte 0x0, 0x0
.endfunc // sub_81427A4

.func
.thumb_func
sub_81427CE:
	push {r4-r7,lr}
	bl sub_81426CE
	ldr r1, off_81427DC // =dword_81427E0 
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	pop {r4-r7,pc}
off_81427DC: .word dword_81427E0
dword_81427E0: .word 0x7F107F0, 0x7F307F2, 0x7F507F4, 0x7F707F6, 0xB5F00000
	.word 0xFF6BF7FF, 0x404901, 0xBDF05A08, 0x8142804, 0x6870686
	.word 0x6890688, 0x68B068A, 0x68D068C
	.byte 0x0, 0x0
.endfunc // sub_81427CE

.func
.thumb_func
sub_8142816:
	push {r4-r7,lr}
	ldr r5, off_81428D0 // =byte_2006670 
	push {r0,r1}
	bl sub_814283C
	pop {r3,r4}
	asr r3, r3, #0x10
	asr r4, r4, #0x10
	add r0, r0, r3
	add r1, r1, r4
	asr r0, r0, #5
	asr r1, r1, #5
	add r0, #0x80
	add r1, #0x80
	mov r5, #0x80
	lsl r5, r5, #1
	mul r1, r5
	add r0, r0, r1
	pop {r4-r7,pc}
.endfunc // sub_8142816

.func
.thumb_func
sub_814283C:
	push {r4-r7,lr}
	bl sub_81426CE
	ldr r3, off_8142854 // =dword_8142858 
	lsl r0, r0, #1
	add r3, r3, r0
	mov r0, #0
	ldrsb r0, [r3,r0]
	mov r1, #1
	ldrsb r1, [r3,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142854: .word dword_8142858
dword_8142858: .word 0xF8080000, 0x80808F8, 0x100808, 0xFC04040C
.endfunc // sub_814283C

.func
.thumb_func
sub_8142868:
	push {r4-r7,lr}
	mov r1, #0x80
	lsl r1, r1, #1
	svc 6
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	sub r0, #0x80
	sub r1, #0x80
	lsl r0, r0, #5
	lsl r1, r1, #5
	push {r0,r1}
	bl sub_814283C
	pop {r3,r4}
	sub r0, r3, r0
	sub r1, r4, r1
	add r0, #0x10
	add r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	mov r2, #0
	pop {r4-r7,pc}
.endfunc // sub_8142868

.func
.thumb_func
sub_8142896:
	push {r4-r7,lr}
	add r4, r1, #0
	bl sub_8142868
	push {r0,r1}
	add r0, r4, #0
	bl sub_8142868
	pop {r2,r3}
	sub r0, r0, r2
	sub r1, r3, r1
	bl calcAngle_800117C
	add r0, #0x10
	lsr r0, r0, #4
	mov r1, #0xf
	and r0, r1
	lsr r0, r0, #1
	sub r0, #1
	mov r1, #7
	and r0, r1
	pop {r4-r7,pc}
.endfunc // sub_8142896

.func
.thumb_func
sub_81428C2:
	push {r4-r7,lr}
	ldr r5, off_81428D0 // =byte_2006670 
	mov r1, #8
	mul r0, r1
	add r0, r0, r5
	pop {r4-r7,pc}
	.byte 0, 0
off_81428D0: .word byte_2006670
.endfunc // sub_81428C2

.func
.thumb_func
sub_81428D4:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl sub_8142990
	add r4, r0, #0
	bl sub_809E2B8
	mov r1, #1
	tst r0, r1
	beq loc_81428F6
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_8142952
	add sp, sp, #0x10
	pop {r4-r7,pc}
loc_81428F6:
	sub r1, r0, #1
	add r7, r0, #1
	mov r0, #7
	and r7, r0
	and r1, r0
	add r0, r4, #0
	mov r2, #1
	bl sub_8142952
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_8142952
	add r7, r0, #0
	bl sub_809E1AE
	str r0, [sp]
	str r1, [sp,#4]
	add r0, r6, #0
	bl sub_8142868
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	str r0, [sp,#8]
	add r0, r7, #0
	bl sub_8142868
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	ldr r1, [sp,#8]
	cmp r0, r1
	ble loc_814294C
	add r7, r6, #0
loc_814294C:
	add r0, r7, #0
	add sp, sp, #0x10
	pop {r4-r7,pc}
.endfunc // sub_81428D4

.func
.thumb_func
sub_8142952:
	push {r4-r7,lr}
	add r6, r2, #0
	ldr r7, off_814297C // =dword_8142980 
	lsl r1, r1, #1
	add r7, r7, r1
	add r4, r0, #0
	mov r0, #0xff
	and r0, r4
	lsr r1, r4, #8
	mov r2, #0
	ldrsb r2, [r7,r2]
	mov r3, #1
	ldrsb r3, [r7,r3]
	mul r2, r6
	mul r3, r6
	add r0, r0, r2
	add r1, r1, r3
	lsl r1, r1, #8
	orr r0, r1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_814297C: .word dword_8142980
dword_8142980: .word 0x10000, 0x1000000, 0xFF0000, 0xFF000000
.endfunc // sub_8142952

.func
.thumb_func
sub_8142990:
	push {r4-r7,lr}
	bl sub_809E1AE
	bl sub_8142816
	pop {r4-r7,pc}
.endfunc // sub_8142990

.func
.thumb_func
sub_814299C:
	push {r4-r7,lr}
	mov r7, #0
	lsr r2, r0, #8
	mov r3, #0xff
	and r3, r0
	lsr r4, r1, #8
	mov r5, #0xff
	and r5, r1
	sub r2, r2, r4
	sub r3, r3, r5
	cmp r2, #0
	bge loc_81429B6
	neg r2, r2
loc_81429B6:
	cmp r3, #0
	bge loc_81429BC
	neg r3, r3
loc_81429BC:
	add r2, r2, r3
	cmp r2, #1
	bgt loc_81429C4
	mov r7, #1
loc_81429C4:
	add r0, r7, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_814299C

.func
.thumb_func
sub_81429CA:
	push {r4-r7,lr}
	bl sub_81421D8
	add r6, r0, #0
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_8142990
	add r4, r0, #0
	bl sub_81421D0
	ldr r7, off_8142A18 // =off_8142A1C 
	lsl r0, r0, #2
	ldr r7, [r7,r0]
	bl sub_809E2B8
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r7, r7, r0
loc_81429F2:
	mov r2, #0
	ldrsb r2, [r7,r2]
	mov r3, #1
	ldrsb r3, [r7,r3]
	cmp r2, #0x7f
	beq locret_8142A14
	mov r0, #0xff
	and r0, r4
	lsr r1, r4, #8
	add r0, r0, r2
	add r1, r1, r3
	lsl r1, r1, #8
	orr r0, r1
	str r0, [r6]
	add r6, #4
	add r7, #8
	b loc_81429F2
locret_8142A14:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142A18: .word off_8142A1C
off_8142A1C: .word dword_8142A2C
	.word dword_8142A3C
	.word dword_8142A54
	.word dword_8142A74
dword_8142A2C: .word 0x1000001, 0xFF0000FF, 0x7F7F7F7F, 0x7F7F7F7F
dword_8142A3C: .word 0x1000001, 0xFF0000FF, 0x2000002, 0xFE0000FE, 0x7F7F7F7F
	.word 0x7F7F7F7F
dword_8142A54: .word 0x1000001, 0xFF0000FF, 0x1FFFF01, 0xFF0101FF, 0x1010101
	.word 0xFFFFFFFF, 0x7F7F7F7F, 0x7F7F7F7F
dword_8142A74: .word 0x3000003, 0xFD0000FD, 0x7F7F7F7F, 0x7F7F7F7F
.endfunc // sub_81429CA

.func
.thumb_func
sub_8142A84:
	push {r4-r7,lr}
	add r7, r0, #0
	ldr r5, off_8142AAC // =byte_2011EE0 
	mov r4, #0
	mov r6, #0
loc_8142A8E:
	bl sub_8142B28
	beq loc_8142A9C
	bl sub_81421E8
	beq loc_8142A9C
	add r6, #1
loc_8142A9C:
	add r5, #0x78 
	add r4, #1
	cmp r4, #0x38 
	blt loc_8142A8E
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142AAC: .word byte_2011EE0
.endfunc // sub_8142A84

.func
.thumb_func
sub_8142AB0:
	push {r4-r7,lr}
	ldr r5, off_8142C8C // =byte_2006670 
	bl sub_81421E0
	add r7, r0, #0
	mov r4, #0
	mov r6, #0
loc_8142ABE:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142ACC
	cmp r0, r7
	bne loc_8142ACC
	mov r6, #1
	b loc_8142AD4
loc_8142ACC:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142ABE
loc_8142AD4:
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8142AB0

.func
.thumb_func
sub_8142ADA:
	push {r4-r7,lr}
	ldr r5, off_8142C8C // =byte_2006670 
	mov r4, #0
	mov r6, #0
loc_8142AE2:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142AF6
	bl sub_8142990
	ldrh r1, [r5,#4]
	bl sub_814299C
	beq loc_8142AF6
	add r6, #1
loc_8142AF6:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142AE2
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8142ADA

.func
.thumb_func
sub_8142B04:
	push {r4-r7,lr}
	add r7, r0, #0
	ldr r5, off_8142B54 // =byte_2011EE0 
	mov r4, #0
	mov r6, #0
loc_8142B0E:
	bl sub_8142B28
	beq loc_8142B1A
	cmp r0, r7
	bne loc_8142B1A
	add r6, #1
loc_8142B1A:
	add r5, #0x78 
	add r4, #1
	cmp r4, #0x38 
	blt loc_8142B0E
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8142B04

.func
.thumb_func
sub_8142B28:
	push {r4-r7,lr}
	mov r4, #0
	ldrb r0, [r5]
	mov r1, #1
	tst r0, r0
	beq loc_8142B4C
	ldrb r0, [r5,#1]
	cmp r0, #0xf
	bne loc_8142B4C
	bl sub_809E1AE
	ldr r0, [r5,#0x14]
	cmp r0, r2
	bne loc_8142B4C
	ldrb r0, [r5,#4]
	bl sub_81428C2
	ldrh r4, [r0,#4]
loc_8142B4C:
	add r0, r4, #0
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142B54: .word byte_2011EE0
.endfunc // sub_8142B28

.func
.thumb_func
sub_8142B58:
	push {r4-r7,lr}
	ldr r5, off_8142C8C // =byte_2006670 
	mov r4, #0
	mov r6, #0xff
loc_8142B60:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142B7E
	bl sub_81421E0
	ldrh r1, [r5,#4]
	cmp r0, r1
	bne loc_8142B7E
	bl sub_8142990
	ldrh r1, [r5,#4]
	bl sub_8142896
	add r6, r0, #0
	b loc_8142BB2
loc_8142B7E:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142B60
	ldr r5, off_8142C8C // =byte_2006670 
	mov r4, #0
loc_8142B8A:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142BAA
	bl sub_8142990
	ldrh r1, [r5,#4]
	bl sub_814299C
	beq loc_8142BAA
	bl sub_8142990
	ldrh r1, [r5,#4]
	bl sub_8142896
	add r6, r0, #0
	b loc_8142BB2
loc_8142BAA:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142B8A
loc_8142BB2:
	add r0, r6, #0
	pop {r4-r7,pc}
.endfunc // sub_8142B58

.func
.thumb_func
sub_8142BB6:
	push {r4-r7,lr}
	ldr r5, off_8142C8C // =byte_2006670 
	mov r4, #0
loc_8142BBC:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142BEA
	bl sub_81421E8
	beq loc_8142BEA
	mov r0, #4
	strb r0, [r5,#6]
	push {r0-r7}
	ldrh r0, [r5,#4]
	bl sub_8142868
	add r3, r2, #0
	add r2, r1, #0
	add r1, r0, #0
	mov r0, #0x13
	mov r4, #0
	bl sub_8004822
	pop {r0-r7}
	mov r0, #0x6d 
	bl sound_play // () -> void
loc_8142BEA:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142BBC
	pop {r4-r7,pc}
.endfunc // sub_8142BB6

.func
.thumb_func
sub_8142BF4:
	push {r4-r7,lr}
	mov r7, #0x14
	b loc_8142BFE
.endfunc // sub_8142BF4

.func
.thumb_func
sub_8142BFA:
	push {r4-r7,lr}
	mov r7, #0xc
loc_8142BFE:
	ldr r5, off_8142C8C // =byte_2006670 
	mov r4, #0
loc_8142C02:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142C16
	bl sub_8142990
	ldrh r1, [r5,#4]
	bl sub_814299C
	beq loc_8142C16
	strb r7, [r5,#6]
loc_8142C16:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142C02
	pop {r4-r7,pc}
.endfunc // sub_8142BFA

.func
.thumb_func
sub_8142C20:
	push {r4-r7,lr}
	add r7, r0, #0
	ldr r5, off_8142C8C // =byte_2006670 
	mov r4, #0
	mov r6, #0
loc_8142C2A:
	ldrh r0, [r5,#4]
	tst r0, r0
	beq loc_8142C38
	ldrb r0, [r5,#6]
	cmp r0, r7
	bne loc_8142C38
	add r6, #1
loc_8142C38:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142C2A
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8142C20

.func
.thumb_func
sub_8142C46:
	push {r4-r7,lr}
	add r4, r0, #0
	bl getPETNaviSelect // () -> u8
	bl sub_80010D4
	sub r4, r0, r4
	bge loc_8142C58
	mov r4, #0
loc_8142C58:
	bl getPETNaviSelect // () -> u8
	add r1, r4, #0
	bl sub_80010EC
	bl sub_809E1AE
	add r3, r2, #0
	add r2, r1, #0
	add r1, r0, #0
	mov r0, #0x13
	mov r4, #4
	bl sub_8004822
	mov r0, #1
	mov r1, #0x14
	bl sub_80302A8
	mov r0, #0x6b 
	bl sound_play // () -> void
	mov r0, #0xd
	add r0, #0xff
	bl sound_play // () -> void
	pop {r4-r7,pc}
off_8142C8C: .word byte_2006670
.endfunc // sub_8142C46

.func
.thumb_func
sub_8142C90:
	push {r4-r7,lr}
	pop {r4-r7,pc}
.endfunc // sub_8142C90

.func
.thumb_func
sub_8142C94:
	push {lr}
	ldr r0, off_8142CA4 // =dword_8619730 
	ldr r1, dword_8142CA8 // =0x6006c00 
	ldr r2, off_8142CAC // =0x420 
	bl loc_8000AC8
	pop {pc}
	.balign 4, 0x00
off_8142CA4: .word dword_8619730
dword_8142CA8: .word 0x6006C00
off_8142CAC: .word 0x420
.endfunc // sub_8142C94

.func
.thumb_func
sub_8142CB0:
	push {r4-r7,lr}
	ldr r5, off_8142D54 // =byte_200BE70 
	bl sub_8142D58
	bl sub_8142DA0
	ldr r5, [r5,#0xc] // (dword_200BE7C - 0x200be70)
	ldr r1, [r5,#8]
	add r1, r1, r5
	add r0, r0, r1
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_8142CB0

.func
.thumb_func
sub_8142CC8:
	push {r4-r7,lr}
	ldr r5, off_8142D54 // =byte_200BE70 
	ldrb r4, [r5]
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r6, off_8142D40 // =off_8142D44 
	ldr r6, [r6,r1]
	ldrh r0, [r6,#6]
	strh r0, [r5,#6]
	ldrh r0, [r6,#8]
	strh r0, [r5,#8]
	mov r7, #1
	mov r1, #8
	mov r2, #1
loc_8142CE4:
	add r3, r1, #0
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	ldrh r0, [r6,r3]
	add r3, r4, #0
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	strh r0, [r5,r3]
	add r7, #1
	cmp r7, #7
	blt loc_8142CE4
	mov r7, #1
	mov r1, #8
	mov r2, #2
loc_8142D04:
	add r3, r1, #0
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	ldrh r0, [r6,r3]
	add r3, r4, #0
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	strh r0, [r5,r3]
	add r7, #1
	cmp r7, #7
	blt loc_8142D04
	mov r7, #3
	mov r1, #8
	mov r2, #3
loc_8142D24:
	add r3, r1, #0
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	ldrh r0, [r6,r3]
	add r3, r4, #0
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	strh r0, [r5,r3]
	add r7, #1
	cmp r7, #5
	blt loc_8142D24
	pop {r4-r7,pc}
off_8142D40: .word off_8142D44
off_8142D44: .word dword_8619B50
	.word byte_8619B90
.endfunc // sub_8142CC8

.func
.thumb_func
sub_8142D4C:
	push {r4-r7,lr}
	bl sub_80307D8
	pop {r4-r7,pc}
off_8142D54: .word byte_200BE70
.endfunc // sub_8142D4C

.func
.thumb_func
sub_8142D58:
	push {r4-r7,lr}
	ldr r5, off_8142E04 // =byte_200BE70 
	ldr r6, off_8142E08 // =unk_2000B40 
	ldrb r4, [r5]
	ldrb r0, [r6,#0x8] // (byte_2000B48 - 0x2000b40)
	mov r1, #0x80
	cmp r0, r1
	blt loc_8142D84
	sub r0, r0, r1
	add r7, r0, #0
	lsl r0, r0, #1
	mul r0, r4
	add r1, r7, #0
	mov r2, #4
	mul r1, r2
	sub r0, r0, r1
	lsl r0, r0, #1
	add r4, r0, #0
	bl sub_8142DE6
	sub r0, r0, r4
	b locret_8142D9E
loc_8142D84:
	sub r0, r1, r0
	add r7, r0, #0
	lsl r0, r0, #1
	mul r0, r4
	add r1, r7, #0
	mov r2, #4
	mul r1, r2
	sub r0, r0, r1
	lsl r0, r0, #1
	add r4, r0, #0
	bl sub_8142DE6
	add r0, r0, r4
locret_8142D9E:
	pop {r4-r7,pc}
.endfunc // sub_8142D58

.func
.thumb_func
sub_8142DA0:
	push {r4-r7,lr}
	push {r0}
	ldr r5, off_8142E04 // =byte_200BE70 
	ldr r6, off_8142E08 // =unk_2000B40 
	ldrb r4, [r5]
	ldrb r0, [r6,#0x9] // (byte_2000B49 - 0x2000b40)
	mov r1, #0x80
	cmp r0, r1
	blt loc_8142DCC
	sub r0, r0, r1
	add r7, r0, #0
	lsl r0, r0, #1
	mul r0, r4
	add r1, r7, #0
	mov r2, #4
	mul r1, r2
	add r0, r0, r1
	lsl r0, r0, #1
	add r4, r0, #0
	pop {r0}
	add r0, r0, r4
	b locret_8142DE4
loc_8142DCC:
	sub r0, r1, r0
	add r7, r0, #0
	lsl r0, r0, #1
	mul r0, r4
	add r1, r7, #0
	mov r2, #4
	mul r1, r2
	add r0, r0, r1
	lsl r0, r0, #1
	add r4, r0, #0
	pop {r0}
	sub r0, r0, r4
locret_8142DE4:
	pop {r4-r7,pc}
.endfunc // sub_8142DA0

.func
.thumb_func
sub_8142DE6:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldrb r2, [r1,#4]
	cmp r2, #0x85
	bne loc_8142DF6
	mov r1, #3
	b loc_8142DF8
loc_8142DF6:
	ldrb r1, [r1,#5]
loc_8142DF8:
	lsl r1, r1, #1
	ldr r2, off_8142E00 // =dword_8142E0C 
	ldrh r0, [r2,r1]
	pop {pc}
off_8142E00: .word dword_8142E0C
off_8142E04: .word byte_200BE70
off_8142E08: .word unk_2000B40
dword_8142E0C: .word 0x45D03C50, 0x49C04A90, 0x8142E24, 0x8142E7C, 0x8142E48
	.word 0x8142EA0, 0xFF0EFF00, 0xFFCE, 0xD2FF01, 0x172
	.word 0x30FF02, 0x20FEB0, 0xFFCEFF03, 0x16E, 0x4FF
	.word 0x50FF00, 0x20FF92, 0xFFD2FF01, 0xFFD0, 0x172FF02
	.word 0xFFCE, 0xFF54FF03, 0x16C, 0xFF10FF04, 0x4E
	.word 0x30FF05, 0x20FE30, 0x6FF, 0xFF68FF00, 0x200008
	.word 0xFF48FF01, 0xFE7A, 0xFF0CFF02, 0x214, 0x1A4FF03
	.word 0x20FFB6, 0x4FF, 0xFF0CFF00, 0xFF38, 0x188FF01
	.word 0x200032, 0xA6FF02, 0xB8, 0xFFA4FF03, 0x1BA
	.word 0x28FF04, 0x1FC, 0x5FF, 0xF000B5F0, 0x1C00F905
	.word 0xF948F6EC, 0x4651D16F, 0x790A6BC9, 0x79487B0B, 0x807B49
	.word 0xB40F0089, 0x21602009, 0xF938F6EC, 0xD103BC0F, 0xD101429A
	.word 0xD0034288, 0xF000B4FF, 0xBCFFF960, 0xF8BEF000, 0x4F2C0080
	.word 0x2400583F, 0x28FF7838, 0x1C20D014, 0xF8CBF000, 0xF6EC1C00
	.word 0xD10AF921, 0x2016B4F0, 0x4098879, 0x41288BA, 0x41B88FB
	.word 0xFC52F6C1, 0x3401BCF0, 0xE7E73708, 0xF0007878, 0xF000FA3C
	.word 0x80F89D, 0x583F4F1C, 0x78382400, 0xD01728FF, 0xF0001C20
	.word 0x1C08F8AA, 0xF900F6EC, 0xB4F0D10D, 0x2002001, 0x20164304
	.word 0x4098879, 0x41288BA, 0x41B88FB, 0xFC2EF6C1, 0x3401BCF0
	.word 0xE7E43708, 0x24004D3D, 0x42007828, 0xB4F0D007, 0x21002018
	.word 0x23002200, 0xFC1EF6C1, 0x3514BCF0, 0x2C083401, 0xF000DBF0
	.word 0x2009F8A1, 0xF6EC2160, 0x2000F8B9, 0xBDF0, 0x8142E14
	.word 0x8142E1C, 0xF6F1B5F0, 0xD046FE34, 0xF884F000, 0xF6EC1C00
	.word 0xD140F8C7, 0xF99AF000, 0xF932F000, 0x21622009, 0xF8BCF6EC
	.word 0x4653D110, 0x7C586BDB, 0xD0274200, 0xF9EFF000, 0x2009D004
	.word 0xF6EC2162, 0xE01FF885, 0xF6BD2069, 0xE01BFADF, 0x21632009
	.word 0xF8A6F6EC, 0x2009D104, 0xF6EC2163, 0xE011F877, 0xFBC3F6F2
	.word 0x4815D106, 0xF6F32100, 0x2001FF2F, 0xF9DFF000, 0x21622009
	.word 0xF876F6EC, 0x21632009, 0xF872F6EC, 0xF8A6F000, 0xF000D10F
	.word 0x4908F81B
	.word 0x58080080
.endfunc // sub_8142DE6

	mov r1, #0
	bl init_s_02011C50_8036E90
	mov r0, #9
	mov r1, #0x62 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #9
	mov r1, #0x63 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word off_8143078
off_8143078: .word dword_808BF48+0xBC
	.word dword_808BF48+0x1AC
	.byte 0xF0
	.byte 0xC2
	.byte  8
	.byte  8
	.byte 0x20
	.byte 0xD
	.byte  0
	.byte  2
.func
.thumb_func
sub_8143088:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrh r7, [r7,#4]
	mov r6, #0
	ldr r4, off_81430AC // =dword_81430B0 
loc_8143094:
	ldrh r0, [r4,r6]
	tst r0, r0
	beq loc_81430A8
	cmp r0, r7
	beq loc_81430A2
	add r6, #2
	b loc_8143094
loc_81430A2:
	lsr r0, r6, #1
	tst r0, r0
	pop {r4-r7,pc}
loc_81430A8:
	mov r0, #0xff
	pop {r4-r7,pc}
off_81430AC: .word dword_81430B0
dword_81430B0: .word 0x1920092
	.byte 0x0, 0x0
.endfunc // sub_8143088

.func
.thumb_func
sub_81430B6:
	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_8143088
	ldr r1, off_81430D0 // =byte_81430D4 
	lsl r0, r0, #2
	add r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1,#2]
	add r0, r0, r4
	add r1, r1, r4
	pop {r4-r7,pc}
	.byte 0, 0
off_81430D0: .word byte_81430D4
byte_81430D4: .byte 0x70, 0x9, 0x78, 0x9, 0x80, 0x9, 0x88, 0x9
.endfunc // sub_81430B6

.func
.thumb_func
sub_81430DC:
	push {r4-r7,lr}
	bl sub_8143088
	ldr r1, off_81430EC // =unk_81430F0 
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81430EC: .word unk_81430F0
unk_81430F0: .byte 0x6E 
	.byte  9
	.byte 0x6F 
	.byte  9
	.byte 0xF0
	.byte 0xB5
	.byte 0xFD
	.byte 0xF7
	.byte 0x83
	.byte 0xFC
	.byte 0xFF
	.byte 0xF7
	.byte 0xC5
	.byte 0xFF
	.byte 0x19
	.byte 0x4C 
	.byte 0x80
	.byte  0
	.byte 0x24 
	.byte 0x58 
	.byte 0x20
	.byte 0x78 
	.byte  0
	.byte 0x42 
	.byte 0xE
	.byte 0xD0
	.byte 0x21 
	.byte 0x49 
	.byte  4
	.byte 0x22 
	.byte 0x50 
	.byte 0x43 
	.byte  9
	.byte 0x18
	.byte 0x60 
	.byte 0x68 
	.word 0x481F6008
	.word 0x39017821, 0x1C001840, 0xFFF8F6EB, 0xE7ED3408, 0xBDF02000
	.word 0xF7FDB5F0, 0xF7FFFC6D, 0x4C0BFFA9, 0x58240080, 0x42007820
	.word 0x4913D00E, 0x43502204, 0x20001809, 0x48116008, 0x39017821
	.word 0x1C001840, 0xFFEAF6EB, 0xE7ED3408, 0xBDF02000
	.word off_8143168
off_8143168: .word dword_8143170
	.word dword_8143184
dword_8143170: .word 0xFFFFFF02, 0x8050502, 0xFFFFFF0C, 0x8FF0502, 0x0
dword_8143184: .word 0xFFFFFF01, 0x8010502, 0x0
	.word unk_2011EA0
	.word 0x16F1
.endfunc // sub_81430DC

.func
.thumb_func
sub_8143198:
	push {r4-r7,lr}
	bl sub_81433CA
	add r6, r0, #0
	mov r0, #0
	bl sub_81430B6
	add r7, r0, #0
	mov r4, #0
loc_81431AA:
	add r0, r7, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81431B4
	add r4, #1
loc_81431B4:
	add r7, #1
	sub r6, #1
	bgt loc_81431AA
	bl sub_81433CA
	add r1, r0, #0
	add r0, r4, #0
	cmp r0, r1
	pop {r4-r7,pc}
.endfunc // sub_8143198

	push {r4-r7,lr}
	ldr r5, off_8143398 // =byte_2000D20 
	bl sub_814339C
	add r0, r5, #0
	ldr r1, off_81431F4 // =0xa0 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	bl sub_81430B6
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	mov r2, #8
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	mov r0, #0
	bl sub_81430B6
	add r0, r1, #0
	mov r2, #8
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	pop {r4-r7,pc}
off_81431F4: .word 0xA0
.func
.thumb_func
sub_81431F8:
	push {r4-r7,lr}
	ldr r5, off_8143398 // =byte_2000D20 
	mov r1, #0x14
	mul r0, r1
	add r0, r0, r5
	pop {r4-r7,pc}
.endfunc // sub_81431F8

.func
.thumb_func
sub_8143204:
	push {r4-r7,lr}
	bl sub_81431F8
	add r5, r0, #0
	bl change_20013F0_800151C // () -> int
	mov r1, #0x3f 
	and r1, r0
	ldr r0, dword_814321C // =0x1e 
	add r0, r0, r1
	strh r0, [r5,#6]
	pop {r4-r7,pc}
dword_814321C: .word 0x1E
.endfunc // sub_8143204

.func
.thumb_func
sub_8143220:
	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_81431F8
	add r5, r0, #0
	bl change_20013F0_800151C // () -> int
	mov r1, #0x3f 
	and r1, r0
	ldr r0, dword_8143244 // =0x1e 
	add r0, r0, r1
	strh r0, [r5,#2]
	add r0, r4, #0
	mov r1, #1
	bl sub_81432FA
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8143244: .word 0x1E
.endfunc // sub_8143220

	push {r4-r7,lr}
	mov r6, #0
	ldr r7, off_8143398 // =byte_2000D20 
loc_814324E:
	ldrb r0, [r7]
	tst r0, r0
	beq loc_814328A
	add r4, r6, #1
	add r5, r7, #0
	add r5, #0x14
loc_814325A:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_8143282
	ldr r0, [r5,#8]
	ldr r1, [r5,#0xc]
	ldr r2, [r7,#8]
	ldr r3, [r7,#0xc]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	mov r1, #6
	lsl r1, r1, #0x10
	cmp r0, r1
	bge loc_8143282
	add r0, r6, #0
	mov r1, #2
	bl sub_81432FA
	b loc_814328A
loc_8143282:
	add r5, #0x14
	add r4, #1
	cmp r4, #8
	blt loc_814325A
loc_814328A:
	add r7, #0x14
	add r6, #1
	cmp r6, #8
	blt loc_814324E
	pop {r4-r7,pc}
.func
.thumb_func
sub_8143294:
	push {r4-r7,lr}
	mov r4, #0
	ldr r5, off_8143398 // =byte_2000D20 
loc_814329A:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_81432CE
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldr r0, [r0,#0x18]
	ldr r2, [r0,#0x20]
	ldr r3, [r0,#0x1c]
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#8]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	ldrb r1, [r5]
	mov r2, #0xfa
	lsl r2, r2, #0x10
	cmp r0, r2
	bge loc_81432C6
	mov r1, #3
	mov r0, #8
	strb r0, [r5,#1]
loc_81432C6:
	add r0, r4, #0
	mov r1, #1
	bl sub_81432FA
loc_81432CE:
	add r5, #0x14
	add r4, #1
	cmp r4, #8
	blt loc_814329A
	pop {r4-r7,pc}
.endfunc // sub_8143294

	push {r4-r7,lr}
	mov r6, #0
	mov r4, #0
	ldr r5, off_8143398 // =byte_2000D20 
loc_81432E0:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_81432EC
	cmp r0, #3
	bne loc_81432EC
	add r6, #1
loc_81432EC:
	add r5, #0x14
	add r4, #1
	cmp r4, #8
	blt loc_81432E0
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.func
.thumb_func
sub_81432FA:
	push {r4-r7,lr}
	add r4, r1, #0
	bl sub_81431F8
	add r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #3
	beq locret_814330C
	strb r4, [r5]
locret_814330C:
	pop {r4-r7,pc}
	.byte 0, 0
	.word 0x1E, 0x4D20B5F0, 0xF8AAF000, 0xF000D137, 0x2400F88C
	.word 0x42007828, 0x2001D12D, 0x20007028, 0xF6BE7068, 0x80A8F8F3
	.word 0xF7FF1C20, 0x1C20FF63, 0xFF6EF7FF, 0xF6BEB4F0, 0x21F0F8E9
	.word 0x404008, 0x4A10490F, 0x5E125E09, 0x1002080, 0x43424341
	.word 0x1520149, 0x6BC04650, 0x69C36980, 0x60A91A59, 0x1A9A6A03
	.word 0x201860EA, 0x22002100, 0xF6C12300, 0xBCF0FA2F, 0x3514E003
	.word 0x2C063401, 0xBDF0DBCA, 0x8006660, 0x80065E0
off_8143398: .word byte_2000D20
.endfunc // sub_81432FA

.func
.thumb_func
sub_814339C:
	push {r4-r7,lr}
	mov r0, #2
	bl sub_8003A64
	ldr r5, off_81434E0 // =byte_2001010 
	add r0, r5, #0
	// memBlock
	add r0, #8
	// size
	mov r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #5
	bl sub_81433D2
	bl sub_8143406
	bl sub_814343A
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_814339C

	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	strb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
	pop {r4-r7,pc}
.func
.thumb_func
sub_81433CA:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	ldrb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_81433CA

.func
.thumb_func
sub_81433D2:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	strb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_81433D2

.func
.thumb_func
sub_81433DA:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	ldrb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_81433DA

.func
.thumb_func
sub_81433E4:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	ldrb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
	add r1, r1, r0
	cmp r1, #5
	ble loc_81433F2
	mov r1, #5
loc_81433F2:
	strb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_81433E4

	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	ldrb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
	sub r1, r1, r0
	bge loc_8143402
	mov r1, #0
loc_8143402:
	strb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
	pop {r4-r7,pc}
.func
.thumb_func
sub_8143406:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	bl change_20013F0_800151C // () -> int
	mov r1, #3
	and r0, r1
	strb r0, [r5,#0xa] // (byte_200101A - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_8143406

	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	sub sp, sp, #0x10
	mov r0, sp
	mov r1, #0x10
	mov r2, #0x20 
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	mov r0, sp
	mov r1, #0
	ldrb r2, [r5,#0xa] // (byte_200101A - 0x2001010)
	strb r1, [r0,r2]
	mov r1, #4
	bl sub_8000E3A
	strb r0, [r5,#0xa] // (byte_200101A - 0x2001010)
	add sp, sp, #0x10
	pop {r4-r7,pc}
.func
.thumb_func
sub_814343A:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	sub sp, sp, #0x10
	// mem
	mov r0, sp
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0x20 
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	mov r0, sp
	mov r1, #3
	bl sub_8000E3A
	ldr r1, off_8143460 // =dword_8143464 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	add sp, sp, #0x10
	mov r0, #0
	pop {r4-r7,pc}
off_8143460: .word dword_8143464
dword_8143464: .word 0x5, 0x5, 0x5, 0x4D1BB5F0, 0x380168E8, 0x2000DA00, 0x420060E8
.endfunc // sub_814343A

	pop {r4-r7,pc}
.func
.thumb_func
sub_8143482:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010 
	bl sub_81434BA
	bne loc_81434B6
	ldrb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	tst r0, r0
	beq loc_81434AE
	mov r0, #0
	strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	bl sub_80468BA
	mov r0, #8
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	mov r0, #9
	mov r1, #1
	mov r2, #0
	bl sub_80468C6
loc_81434AE:
	bl sub_8046818
	bl sub_8046854
loc_81434B6:
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_8143482

.func
.thumb_func
sub_81434BA:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_81434DC
	bl sub_8143088
	cmp r0, #0xff
	beq loc_81434DC
	bl sub_81430DC
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81434DC
	mov r0, #0
	pop {r4-r7,pc}
loc_81434DC:
	mov r0, #1
	pop {r4-r7,pc}
off_81434E0: .word byte_2001010
dword_81434E4: .word 0xFF3800CC, 0x20505, 0xF2008C, 0x20707, 0xBE001C, 0x30505
	.word 0x28FF42, 0x30707, 0xFF24FEEC, 0x30101, 0xFF6C011E, 0x20303
	.word 0x720054, 0x20505, 0x15C0006, 0x30505, 0x5CFDFE, 0x20303
	.word 0xFF6A015E, 0x20303, 0x1720082, 0x20505, 0x1DAFF3A, 0x30101
	.word 0x78FE9E, 0x20707, 0x10FEA8, 0x20101, 0xFEA60052, 0x30707
	.word 0xFE7E00A4, 0x30505, 0xFFCC00FE, 0x20707, 0xF200A6, 0x20505
	.word 0x1400024, 0x30707, 0x192FE82, 0x20505, 0xFF68FE9E, 0x20303
	.word 0xFF0CFF9E, 0x20707, 0xFF0C007E, 0x20303, 0xFF4200B4, 0x820505
	.word 0x70700DE, 0xB40008, 0xFF420505, 0x7070014, 0xFF1AFF00, 0x1140101
	.word 0x303FF80, 0x720036, 0xFFE60505, 0x5050152, 0x76FDF4, 0x1540303
	.word 0x303FF7E, 0x17C006E, 0xFF480505, 0x10101DA, 0x6AFE94, 0xFEB60707
	.word 0x101001A, 0xFEBA005A, 0xB80303, 0x101FE76, 0xFFB800F4, 0x920707
	.word 0x50500FC, 0x1320024, 0xFE960707, 0x101019C, 0xFF7CFE94, 0xFF940303
	.word 0x303FF20, 0xFF200074, 0x303, 0xFF1400CC, 0xA80505, 0x10100F2
	.word 0xF3001C, 0xFF0E0303, 0x5050032, 0xFF52FEEC, 0x1440303, 0x303FF6C
	.word 0x540054, 0x60707, 0x101018E, 0x5CFE22, 0x1840101, 0x303FF6A
	.word 0x1520086, 0xFF020707, 0x50501DA, 0x7AFEBC, 0xFEA60101, 0x707FFF2
	.word 0xFEAA0026, 0xA40505, 0x303FEA8, 0xFFCC0126, 0xA60303, 0x10100CC
	.word 0x1700024, 0xFE820505, 0x7070166, 0xFF66FEC8, 0xFFC40101, 0x303FF0C
	.word 0xFF0C00A4, 0x101
dword_81436B4: .word 0x12000, 0xC8003C, 0x3CFF9E, 0x2
dword_81436C4: .word 0x22000, 0xA0002D, 0xA00028, 0x2, 0x22000, 0xA0002D
	.word 0x8EFF06, 0x2
dword_81436E4: .word 0x28000, 0x8C0028, 0x8E00BC, 0x2, 0x28000, 0x8C0028
	.word 0x114FF3E, 0x2
dword_8143704: .word 0x28000, 0x8C0028, 0xF2FF50, 0x2, 0x28000, 0x8C0028
	.word 0xFF6A00C0, 0x2
dword_8143724: .word 0x3200AE, 0x4000040, 0xFFCE0054, 0x10040, 0xFFC0FF96
	.word 0x1010040, 0x1EFF94, 0x2010040, 0x9E0004, 0x3010040
	.word 0xB8FF2E, 0x6010040, 0xF4FEAC, 0x5000040
dword_814375C: .word 0xAA0126, 0x4000040, 0x3E0054, 0x10040, 0xFFACFF64
	.word 0x5000040, 0xFFD6FFE2, 0x6010040, 0xFFF8FEC8, 0x2010040
	.word 0xBCFED0, 0x3010040, 0xE20038, 0x1010040
dword_8143794: .word 0x1CCFFA4, 0x4000040, 0x70FFA2, 0x5000040, 0xFF4C00C2
	.word 0x6000040, 0xAA00DC, 0x10040, 0xCEFF42, 0x1010040
	.word 0xFF5AFF26, 0x2010040, 0x0
	.word 0x3010040
dword_81437CC: .word 0x4C00E6, 0x3000040, 0xD0FFC2, 0x4000040, 0xFFD0FE62
	.word 0x5000040, 0xFF4AFEF4, 0x6000040, 0x10AFF16, 0x10040
	.word 0xFFACFF18, 0x1010040, 0xFF8A00C8, 0x2010040, 0x8143814
	.word 0x81438D0
off_814380C: .word dword_81438B8
	.word dword_8143960
	.word 0x7B78FF00, 0x7C78FF01, 0x7D78FF02, 0x7E78FF03, 0x8276FF04
	.word 0x8277FF05, 0x8278FF06, 0x8677FF07, 0x8678FF08, 0x837DFF09
	.word 0x847DFF0A, 0x857DFF0B, 0x827EFF0C, 0x837EFF0D, 0x857EFF0E
	.word 0x827FFF0F, 0x837FFF10, 0x847FFF11, 0x857FFF12, 0x8682FF13
	.word 0x8782FF14, 0x8386FF15, 0x8286FF16, 0x7F82FF17, 0x7E83FF18
	.word 0x7E84FF19, 0x7F83FF1A, 0x7F84FF1B, 0x7E85FF1C, 0x7E86FF1D
	.word 0x7A86FF1E, 0x7B86FF1F, 0x7C86FF20, 0x7781FF21, 0x7782FF22
	.word 0x7783FF23, 0x797FFF24, 0x7A7FFF25, 0x767BFF26, 0x767CFF27
	.word 0x28FF
dword_81438B8: .word 0x79868486, 0x847E7780, 0x82758676, 0x0, 0x0
	.word 0xFFFF, 0x8774FF00, 0x8775FF01, 0x807AFF02, 0x807BFF03
	.word 0x807CFF04, 0x807DFF05, 0x817DFF06, 0x827DFF07, 0x847DFF08
	.word 0x857DFF09, 0x7F7FFF0A, 0x817FFF0B, 0x827FFF0C, 0x7F81FF0D
	.word 0x8081FF0E, 0x8084FF0F, 0x8184FF10, 0x8284FF11, 0x8485FF12
	.word 0x8486FF13, 0x8781FF14, 0x8782FF15, 0x8487FF16, 0x8783FF17
	.word 0x8784FF18, 0x8488FF19, 0x7B7DFF1A, 0x7B83FF1B, 0x7780FF1C
	.word 0x7781FF1D, 0x7782FF1E, 0x7984FF1F, 0x7985FF20, 0x7986FF21
	.word 0x7983FF22, 0x23FF
dword_8143960: .word 0x80797F7D, 0x807F837D, 0x7F84837F, 0x0, 0x0
	.word 0xFFFF, 0x2016B5F0, 0x22302170, 0xFBFDF6EB, 0xF948F000
	.word 0xF6EB1C00, 0xD15AFBED, 0x6BC94651, 0x7B0B790A, 0x7B497948
	.word 0x890080, 0x200DB40F, 0xF6EB2130, 0xBC0FFBDD, 0x429AD103
	.word 0x4288D101, 0xB4FFD003, 0xF93AF000, 0xF000BCFF, 0x80F8B7
	.word 0x583F4F21, 0x78382400, 0xD01828FF, 0xF0001C20, 0x1C0EF8C4
	.word 0xF6EB1C00, 0xD10DFBC5, 0xF6EB1C30, 0xB4F0FBA5, 0xF0008878
	.word 0x1C13F9E7, 0x1C011C0A, 0xF6C0202B, 0xBCF0FEF3, 0x37043401
	.word 0x7878E7E3, 0xFAA8F000, 0xF93EF000, 0xF929F000, 0x2136200D
	.word 0xFBA6F6EB, 0x480DD009, 0xF6F32100, 0xF000FA37, 0x200DFA89
	.word 0xF6EB2136, 0x200DFB7F, 0xF6EB2130, 0x200DFB7B, 0xF6EB2134
	.word 0x200DFB77, 0xF6EB2135, 0x2000FB73, 0xBDF0, 0x8143804
	.word 0x8093358, 0xF6F1B5F0, 0xD053F8EE, 0xF8DCF000, 0xF6EB1C00
	.word 0xD14DFB81, 0x2134200D, 0xFB7AF6EB, 0x4653D109, 0x7C586BDB
	.word 0xD02C4200, 0x2134200D, 0xFB46F6EB, 0x200DE027, 0xF6EB2135
	.word 0xD104FB6B, 0x2135200D, 0xFB3CF6EB, 0xF6F1E01D, 0xD112FE88
	.word 0xF9A3F000, 0xFA1AF000, 0xF000D00D, 0xF000F9FB, 0xD104F87F
	.word 0x2100481B, 0xF9EAF6F3, 0x481BE003, 0xF6F32100, 0x200DF9E5
	.word 0xF6EB2134, 0x200DFB2F, 0xF6EB2135, 0xF000FB2B, 0x4288F939
	.word 0xF000D108, 0x490DF827, 0x58080080, 0xF6F32100, 0xD109F9D1
	.word 0xFA3FF000, 0xF000D10E, 0x1C01F81B, 0xF6F3480A, 0xD1FFF9C7
	.word 0x2134200D, 0xFB10F6EB, 0x2135200D, 0xFB0CF6EB, 0xBDF0
	.word 0x8143B1C, 0x8092C78, 0x8092A98, 0x8092DE8, 0x809326C
	.word 0x80933B8
.endfunc // sub_81434BA

.func
.thumb_func
sub_8143B30:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrh r7, [r7,#4]
	mov r6, #0
	ldr r4, off_8143B54 // =dword_8143B58 
loc_8143B3C:
	ldrh r0, [r4,r6]
	tst r0, r0
	beq loc_8143B50
	cmp r0, r7
	beq loc_8143B4A
	add r6, #2
	b loc_8143B3C
loc_8143B4A:
	lsr r0, r6, #1
	tst r0, r0
	pop {r4-r7,pc}
loc_8143B50:
	mov r0, #0xff
	pop {r4-r7,pc}
off_8143B54: .word dword_8143B58
dword_8143B58: .word 0x1900090
	.byte 0x0, 0x0
.endfunc // sub_8143B30

.func
.thumb_func
sub_8143B5E:
	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_8143B30
	lsl r3, r0, #1
	ldr r0, off_8143B78 // =dword_8143B7C 
	ldrh r0, [r0,r3]
	add r0, r0, r4
	ldr r1, off_8143B80 // =byte_8143B84 
	ldrh r1, [r1,r3]
	add r1, r1, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143B78: .word dword_8143B7C
dword_8143B7C: .word 0xD680D38
off_8143B80: .word byte_8143B84
byte_8143B84: .byte 0x70, 0x16, 0x70, 0x16
.endfunc // sub_8143B5E

.func
.thumb_func
sub_8143B88:
	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_8143B30
	lsl r0, r0, #2
	ldr r3, off_8143BEC // =dword_8143BF0 
	ldr r3, [r3,r0]
	sub r2, r4, r3
	ldr r7, off_8143BAC // =off_814380C 
	ldr r7, [r7,r0]
	lsl r1, r2, #1
	ldrh r1, [r7,r1]
	ldr r7, dword_8143BF0 // =0xd98 
	sub r2, r4, r7
	add r2, #0x14
	add r0, r4, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143BAC: .word off_814380C
.endfunc // sub_8143B88

	push {r4-r7,lr}
	add r4, r0, #0
	bl sub_8143B30
	lsl r0, r0, #2
	ldr r7, off_8143BF8 // =off_814380C 
	ldr r7, [r7,r0]
	ldr r5, off_8143BEC // =dword_8143BF0 
	ldr r5, [r5,r0]
	mov r6, #0
	mvn r6, r6
	lsr r6, r6, #0x10
loc_8143BC8:
	ldrh r0, [r7]
	cmp r0, r6
	beq loc_8143BE8
	tst r0, r0
	beq loc_8143BE2
	cmp r0, r4
	bne loc_8143BE2
	add r0, r5, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8143BE8
	mov r0, #1
	pop {r4-r7,pc}
loc_8143BE2:
	add r5, #1
	add r7, #2
	b loc_8143BC8
loc_8143BE8:
	mov r0, #0
	pop {r4-r7,pc}
off_8143BEC: .word dword_8143BF0
dword_8143BF0: .word 0xD98
	.word 0xDA2
off_8143BF8: .word off_814380C
.func
.thumb_func
sub_8143BFC:
	push {r4-r7,lr}
	bl sub_8143B30
	ldr r1, off_8143C0C // =dword_8143C10 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143C0C: .word dword_8143C10
dword_8143C10: .word 0x1E78, 0x1D4C
.endfunc // sub_8143BFC

.func
.thumb_func
sub_8143C18:
	push {r4-r7,lr}
	bl sub_8143B30
	ldr r1, off_8143C28 // =loc_8143C2C 
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143C28: .word loc_8143C2C
.endfunc // sub_8143C18

loc_8143C2C:
	lsr r2, r6, #0x14
	lsr r3, r6, #0x14
	push {r4-r7,lr}
	bl sub_8143F20
	mov r0, #0
	bl sub_8143B5E
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	mov r2, #0x30 
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	mov r0, #0xd
	mov r1, #0x98
	mov r2, #0xa
	bl ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0xd
	mov r1, #0xa2
	mov r2, #0xa
	bl ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	bl sub_8143BFC
	bl sub_8143F68
	pop {r4-r7,pc}
	push {r4-r7,lr}
	bl sub_8143B30
	ldr r1, off_8143C7C // =off_8143C80 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	bl sub_8030A60
	mov r0, #0x17
	mov r1, #0x21 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r4-r7,pc}
off_8143C7C: .word off_8143C80
off_8143C80: .word dword_8072BCC+0x44
	.word dword_8073610+0x40
	push {r4-r7,lr}
	bl reqBBS_setFlag_e17b0f7_8140A00
	mov r0, #1
	mov r1, #0xbb
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_8143B30
	ldr r4, off_8143D08 // =off_8143D0C 
	lsl r0, r0, #2
	ldr r4, [r4,r0]
loc_8143CA0:
	ldrb r0, [r4]
	tst r0, r0
	beq loc_8143CC4
	ldr r1, off_8143D44 // =unk_2011EA0 
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	ldr r0, [r4,#4]
	str r0, [r1]
	ldr r0, dword_8143D48 // =0x16f1 
	ldrb r1, [r4]
	sub r1, #1
	add r0, r0, r1
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl SetEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #8
	b loc_8143CA0
loc_8143CC4:
	mov r0, #0
	pop {r4-r7,pc}
	push {r4-r7,lr}
	bl reqBBS_clearFlag_8140A0C
	mov r0, #1
	mov r1, #0xbb
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_8143B30
	ldr r4, off_8143D08 // =off_8143D0C 
	lsl r0, r0, #2
	ldr r4, [r4,r0]
loc_8143CE0:
	ldrb r0, [r4]
	tst r0, r0
	beq loc_8143D04
	ldr r1, off_8143D44 // =unk_2011EA0 
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	mov r0, #0
	str r0, [r1]
	ldr r0, dword_8143D48 // =0x16f1 
	ldrb r1, [r4]
	sub r1, #1
	add r0, r0, r1
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #8
	b loc_8143CE0
loc_8143D04:
	mov r0, #0
	pop {r4-r7,pc}
off_8143D08: .word off_8143D0C
off_8143D0C: .word dword_8143D14
	.word dword_8143D30
dword_8143D14: .word 0xFFFFFF01, 0x8FF1402, 0xFFFFFF04, 0x8051402, 0xFFFFFF05
	.word 0x8FF1402, 0x0
dword_8143D30: .word 0xFFFFFF01, 0x8011402, 0xFFFFFF02, 0x8031402, 0x0
off_8143D44: .word unk_2011EA0
dword_8143D48: .word 0x16F1
.func
.thumb_func
sub_8143D4C:
	push {r4-r7,lr}
	bl sub_8143F60
	add r7, r0, #0
	mov r4, #0
	mov r6, #0
loc_8143D58:
	add r0, r4, #0
	bl sub_8143B5E
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8143D68
	add r6, #1
loc_8143D68:
	add r4, #1
	cmp r4, r7
	blt loc_8143D58
	bl sub_8143F60
	add r1, r0, #0
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8143D4C

.func
.thumb_func
sub_8143D7A:
	push {r4-r7,lr}
	push {r0,r1}
	bl sub_8143D9E
	pop {r3,r4}
	asr r3, r3, #0x10
	asr r4, r4, #0x10
	add r0, r0, r3
	add r1, r1, r4
	asr r0, r0, #5
	asr r1, r1, #5
	add r0, #0x80
	add r1, #0x80
	mov r5, #0x80
	lsl r5, r5, #1
	mul r1, r5
	add r0, r0, r1
	pop {r4-r7,pc}
.endfunc // sub_8143D7A

.func
.thumb_func
sub_8143D9E:
	push {r4-r7,lr}
	bl sub_8143B30
	ldr r3, off_8143DB4 // =dword_8143DB8 
	lsl r0, r0, #1
	add r3, r3, r0
	mov r0, #0
	ldrsb r0, [r3,r0]
	mov r1, #1
	ldrsb r1, [r3,r1]
	pop {r4-r7,pc}
off_8143DB4: .word dword_8143DB8
dword_8143DB8: .word 0xF8080000
.endfunc // sub_8143D9E

.func
.thumb_func
sub_8143DBC:
	push {r4-r7,lr}
	mov r1, #0x80
	lsl r1, r1, #1
	svc 6
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	sub r0, #0x80
	sub r1, #0x80
	lsl r0, r0, #5
	lsl r1, r1, #5
	push {r0,r1}
	bl sub_8143D9E
	pop {r3,r4}
	sub r0, r3, r0
	sub r1, r4, r1
	add r0, #0x10
	add r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	mov r2, #0
	pop {r4-r7,pc}
.endfunc // sub_8143DBC

	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl sub_8143EA4
	add r4, r0, #0
	bl sub_809E2B8
	mov r1, #1
	tst r0, r1
	beq loc_8143E0C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_8143E68
	add sp, sp, #0x10
	pop {r4-r7,pc}
loc_8143E0C:
	sub r1, r0, #1
	add r7, r0, #1
	mov r0, #7
	and r7, r0
	and r1, r0
	add r0, r4, #0
	mov r2, #1
	bl sub_8143E68
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_8143E68
	add r7, r0, #0
	bl sub_809E1AE
	str r0, [sp]
	str r1, [sp,#4]
	add r0, r6, #0
	bl sub_8143DBC
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	str r0, [sp,#8]
	add r0, r7, #0
	bl sub_8143DBC
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	ldr r1, [sp,#8]
	cmp r0, r1
	ble loc_8143E62
	add r7, r6, #0
loc_8143E62:
	add r0, r7, #0
	add sp, sp, #0x10
	pop {r4-r7,pc}
.func
.thumb_func
sub_8143E68:
	push {r4-r7,lr}
	add r6, r2, #0
	ldr r7, off_8143E90 // =dword_8143E94 
	lsl r1, r1, #1
	add r7, r7, r1
	add r4, r0, #0
	mov r0, #0xff
	and r0, r4
	lsr r1, r4, #8
	mov r2, #0
	ldrsb r2, [r7,r2]
	mov r3, #1
	ldrsb r3, [r7,r3]
	mul r2, r6
	mul r3, r6
	add r0, r0, r2
	add r1, r1, r3
	lsl r1, r1, #8
	orr r0, r1
	pop {r4-r7,pc}
off_8143E90: .word dword_8143E94
dword_8143E94: .word 0x10000, 0x1000000, 0xFF0000, 0xFF000000
.endfunc // sub_8143E68

.func
.thumb_func
sub_8143EA4:
	push {r4-r7,lr}
	bl sub_809E1AE
	bl sub_8143D7A
	pop {r4-r7,pc}
.endfunc // sub_8143EA4

	push {r4-r7,lr}
	add r4, r1, #0
	bl sub_8143DBC
	push {r0,r1}
	add r0, r4, #0
	bl sub_8143DBC
	pop {r2,r3}
	sub r0, r0, r2
	sub r1, r3, r1
	bl calcAngle_800117C
	add r0, #0x10
	lsr r0, r0, #4
	mov r1, #0xf
	and r0, r1
	lsr r0, r0, #1
	sub r0, #1
	mov r1, #7
	and r0, r1
	pop {r4-r7,pc}
	push {r4-r7,lr}
	add r6, r0, #0
	bl sub_8143B30
	lsl r0, r0, #2
	ldr r7, off_8143F18 // =dword_81437CC+56 
	ldr r7, [r7,r0]
	mov r4, #0
loc_8143EEC:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_8143F12
	add r0, r4, #0
	bl sub_8143B5E
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8143F0C
	ldrh r0, [r7,#2]
	cmp r0, r6
	bne loc_8143F0C
	add r1, r4, #0
	mov r0, #1
	pop {r4-r7,pc}
loc_8143F0C:
	add r4, #1
	add r7, #4
	b loc_8143EEC
loc_8143F12:
	mov r1, #0xff
	mov r0, #0
	pop {r4-r7,pc}
off_8143F18: .word dword_81437CC+0x38
.func
.thumb_func
sub_8143F1C:
	push {r4-r7,lr}
	pop {r4-r7,pc}
.endfunc // sub_8143F1C

.func
.thumb_func
sub_8143F20:
	push {r4-r7,lr}
	mov r0, #5
	bl sub_8003A64
	ldr r5, off_81440D4 // =byte_2001010 
	add r0, r5, #0
	// memBlock
	add r0, #8
	// size
	mov r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_8143F20

	mov r0, #1
	b loc_8143F3E
	mov r0, #0
loc_8143F3E:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	strb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	strb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	ldrb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	str r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
	pop {r4-r7,pc}
.func
.thumb_func
sub_8143F60:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	ldr r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
	pop {r4-r7,pc}
.endfunc // sub_8143F60

.func
.thumb_func
sub_8143F68:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8143F68

.func
.thumb_func
sub_8143F72:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	ldr r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
.endfunc // sub_8143F72

.func
.thumb_func
sub_8143F7C:
	push {r4-r7,lr}
	ldrb r0, [r5,#9]
	tst r0, r0
	bne locret_8143F8E
	ldr r5, off_81440D4 // =byte_2001010 
	ldr r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	sub r0, #1
	blt locret_8143F8E
	str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
locret_8143F8E:
	pop {r4-r7,pc}
.endfunc // sub_8143F7C

.func
.thumb_func
sub_8143F90:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	bl sub_8143F72
	add r4, r0, #0
	bl sub_8143BFC
	add r1, r0, #0
	mov r0, #0x28 
	lsl r0, r0, #0x10
	svc 6
	mul r0, r4
	pop {r4-r7,pc}
.endfunc // sub_8143F90

	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	mov r0, #0
	str r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	ldr r0, dword_8143FBC // =0x0 
	str r0, [r5,#0x18] // (dword_2001028 - 0x2001010)
	ldr r0, dword_8143FC0 // =0x2000 
	str r0, [r5,#0x1c] // (dword_200102C - 0x2001010)
	pop {r4-r7,pc}
dword_8143FBC: .word 0x0
dword_8143FC0: .word 0x2000
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	ldr r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	cmp r0, #0
	bne loc_8143FD6
	mov r0, #0xb9
	add r0, #0xff
	bl sound_play // () -> void
loc_8143FD6:
	ldr r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	ldr r1, [r5,#0x18] // (dword_2001028 - 0x2001010)
	ldr r2, [r5,#0x1c] // (dword_200102C - 0x2001010)
	add r0, r0, r1
	add r1, r1, r2
	cmp r0, #0
	blt loc_8143FF6
	mov r3, #0x64 
	lsl r3, r3, #0x10
	cmp r0, r3
	blt loc_8143FFE
	mov r0, #0x64 
	lsl r0, r0, #0x10
	neg r1, r1
	add r1, r1, r2
	b loc_8143FFE
loc_8143FF6:
	mov r0, #0
	lsl r0, r0, #0x10
	neg r1, r1
	add r1, r1, r2
loc_8143FFE:
	str r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	str r1, [r5,#0x18] // (dword_2001028 - 0x2001010)
	str r2, [r5,#0x1c] // (dword_200102C - 0x2001010)
	pop {r4-r7,pc}
	.hword 0x0
	.word 0x0
	.word 0x2000
.func
.thumb_func
sub_8144010:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	ldr r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	asr r0, r0, #0x10
	cmp r0, #0
	blt loc_8144024
	cmp r0, #0x64 
	blt loc_8144026
	mov r0, #0x64 
	b loc_8144026
loc_8144024:
	mov r0, #0
loc_8144026:
	ldr r2, off_814403C // =a5jzd 
	mov r1, #0
loc_814402A:
	ldrb r3, [r2,r1]
	cmp r0, r3
	blt locret_8144038
	add r1, #1
	cmp r1, #4
	ble loc_814402A
	mov r1, #4
locret_8144038:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_814403C: .word a5jzd
a5jzd: .asciz "5JZd"
	.balign 4, 0x00
.endfunc // sub_8144010

.func
.thumb_func
sub_8144048:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010 
	bl sub_81440AE
	bne loc_81440A6
	ldrb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	tst r0, r0
	beq loc_814407E
	mov r0, #0
	strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
	bl sub_80468BA
	mov r0, #0xe
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	mov r0, #0xc
	mov r1, #1
	mov r2, #0
	bl sub_80468C6
	mov r0, #0xd
	mov r1, #2
	mov r2, #0
	bl sub_80468C6
loc_814407E:
	bl sub_8046818
	bl sub_8046854
	mov r0, #3
	bl sub_804691A
	beq loc_8144092
	bl sub_811E744
loc_8144092:
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_81440A6
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0]
	cmp r0, #4
	bne loc_81440A6
	bl sub_8143F7C
loc_81440A6:
	bl sub_8143F1C
	mov r0, #0
	pop {r4-r7,pc}
.endfunc // sub_8144048

.func
.thumb_func
sub_81440AE:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_81440D0
	bl sub_8143B30
	cmp r0, #0xff
	beq loc_81440D0
	bl sub_8143C18
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81440D0
	mov r0, #0
	pop {r4-r7,pc}
loc_81440D0:
	mov r0, #1
	pop {r4-r7,pc}
off_81440D4: .word byte_2001010
.endfunc // sub_81440AE
