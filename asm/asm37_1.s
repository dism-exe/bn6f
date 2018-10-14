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
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #0x50 
	strb r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #0
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
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
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
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
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	.hword 0x1c00 // add r0, r0, #0
	add r2, r1, #0
	bl clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
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
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #7
	mov r1, #0x40 
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
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
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_81422F0
	ldr r1, off_81422F4 // =dword_81422F8 
	lsl r4, r4, #1
	ldrh r0, [r1,r4]
	// <mkdata>
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	ldr r5, off_81428D0 // =unk_2006670 
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
	ldr r5, off_81428D0 // =unk_2006670 
	mov r1, #8
	mul r0, r1
	add r0, r0, r5
	pop {r4-r7,pc}
	.byte 0, 0
off_81428D0: .word unk_2006670
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
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
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
	ldr r5, off_8142C8C // =unk_2006670 
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
	ldr r5, off_8142C8C // =unk_2006670 
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
	ldr r5, off_8142C8C // =unk_2006670 
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
	ldr r5, off_8142C8C // =unk_2006670 
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
	ldr r5, off_8142C8C // =unk_2006670 
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
	ldr r5, off_8142C8C // =unk_2006670 
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
	ldr r5, off_8142C8C // =unk_2006670 
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
off_8142C8C: .word unk_2006670
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
	ldr r1, dword_8142CA8 // =0x6006C00 
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
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #9
	mov r1, #0x63 
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
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
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	ldr r1, off_81431F4 // =0xA0 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #0
	bl sub_81430B6
	// <mkdata>
	.hword 0x1c00 // add r0, r0, #0
	mov r2, #8
	bl clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	mov r0, #0
	bl sub_81430B6
	add r0, r1, #0
	mov r2, #8
	bl clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
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
	ldr r0, dword_814321C // =0x1E 
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
	ldr r0, dword_8143244 // =0x1E 
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
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
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
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	ldr r7, dword_8143BF0 // =0xD98 
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
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	.hword 0x1c00 // add r0, r0, #0
	mov r2, #0x30 
	bl clearFlags_multEntries_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	mov r0, #0xd
	mov r1, #0x98
	mov r2, #0xa
	bl clearFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0xd
	mov r1, #0xa2
	mov r2, #0xa
	bl clearFlags_multEntries_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
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
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r4-r7,pc}
off_8143C7C: .word off_8143C80
off_8143C80: .word dword_8072BCC+0x44
	.word dword_8073610+0x40
	push {r4-r7,lr}
	bl reqBBS_setFlag_e17b0f7_8140A00
	mov r0, #1
	mov r1, #0xbb
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
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
	ldr r0, dword_8143D48 // =0x16F1 
	ldrb r1, [r4]
	sub r1, #1
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // add r0, r0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	add r4, #8
	b loc_8143CA0
loc_8143CC4:
	mov r0, #0
	pop {r4-r7,pc}
	push {r4-r7,lr}
	bl reqBBS_clearFlag_8140A0C
	mov r0, #1
	mov r1, #0xbb
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
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
	ldr r0, dword_8143D48 // =0x16F1 
	ldrb r1, [r4]
	sub r1, #1
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // add r0, r0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
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
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
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
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
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
a5jzd: .byte 0x1B, 0x35, 0x4A
	.byte 0x5A, 0x64, 0x0
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
	.hword 0x1c00 // add r0, r0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_81440D0
	mov r0, #0
	pop {r4-r7,pc}
loc_81440D0:
	mov r0, #1
	pop {r4-r7,pc}
off_81440D4: .word byte_2001010
.endfunc // sub_81440AE

.func
.thumb_func
// static () -> void
sub_81440D8:
	push {r4,r5,lr}
	sub sp, sp, #8
	ldr r0, off_8144130 // =word_2006DFC 
	ldr r2, off_8144134 // =InterruptMasterEnableRegister 
	ldrh r4, [r2]
	strh r4, [r0]
	mov r5, #0
	strh r5, [r2]
	ldr r3, off_8144138 // =InterruptEnableRegister 
	ldrh r1, [r3]
	ldr r0, dword_814413C // =0xFF3F 
	and r0, r1
	strh r0, [r3]
	strh r4, [r2]
	ldr r1, off_8144140 // =SIOControlRegister 
	mov r2, #0x80
	lsl r2, r2, #6
	add r0, r2, #0
	strh r0, [r1]
	ldr r0, off_8144144 // =Timer3Control 
	strh r5, [r0]
	add r1, #0xda
	mov r0, #0xc0
	strh r0, [r1]
	mov r4, #0
	str r4, [sp]
	ldr r1, off_8144148 // =byte_200F460 
	ldr r2, dword_814414C // =0x5000266 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add r0, sp, #4
	strh r4, [r0]
	ldr r4, off_8144150 // =unk_200F44C 
	ldr r2, dword_8144154 // =0x1000002 
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	strb r5, [r4,#0x1] // (byte_200F44D - 0x200f44c)
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0, 0
off_8144130: .word word_2006DFC
off_8144134: .word InterruptMasterEnableRegister
off_8144138: .word InterruptEnableRegister
dword_814413C: .word 0xFF3F
off_8144140: .word SIOControlRegister
off_8144144: .word Timer3Control
off_8144148: .word byte_200F460
dword_814414C: .word 0x5000266
off_8144150: .word unk_200F44C
dword_8144154: .word 0x1000002
.endfunc // sub_81440D8

.func
.thumb_func
sub_8144158:
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r6, off_81441EC // =word_2006DFC 
	ldr r3, off_81441F0 // =InterruptMasterEnableRegister 
	ldrh r2, [r3]
	mov r4, #0
	strh r4, [r3]
	ldr r5, off_81441F4 // =InterruptEnableRegister 
	ldrh r1, [r5]
	ldr r0, dword_81441F8 // =0xFF3F 
	and r0, r1
	strh r0, [r5]
	strh r2, [r3]
	ldr r0, off_81441FC // =SIOModeSelect_GeneralPurposeData 
	strh r4, [r0]
	ldr r2, off_8144200 // =SIOControlRegister 
	mov r1, #0x80
	lsl r1, r1, #6
	add r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r7, dword_8144204 // =0x4003 
	add r1, r7, #0
	orr r0, r1
	strh r0, [r2]
	ldrh r2, [r3]
	strh r2, [r6]
	strh r4, [r3]
	ldrh r0, [r5]
	mov r1, #0x80
	orr r0, r1
	strh r0, [r5]
	strh r2, [r3]
	ldr r0, off_8144208 // =SIOData_Normal_8bitandUARTMode_ 
	strh r4, [r0]
	ldr r2, off_814420C // =SIOData0_Parent__Multi_PlayerMode_ 
	mov r0, #0
	mov r1, #0
	str r0, [r2]
	str r1, [r2,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
	mov r5, #0
	str r5, [sp]
	ldr r1, off_8144210 // =byte_200F460 
	ldr r2, dword_8144214 // =0x5000266 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add r0, sp, #4
	strh r5, [r0]
	ldr r1, off_8144218 // =unk_200F44C 
	ldr r2, dword_814421C // =0x1000002 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8144220 // =byte_200F450 
	strb r4, [r0]
	ldr r0, off_8144224 // =byte_2006DFE 
	strb r4, [r0]
	ldr r0, off_8144228 // =byte_2006E00 
	strb r4, [r0]
	ldr r0, off_814422C // =byte_200F440 
	strb r4, [r0]
	ldr r0, off_8144230 // =byte_200F448 
	strb r4, [r0]
	ldr r0, off_8144234 // =byte_2006E01 
	strb r4, [r0]
	ldr r0, off_8144238 // =word_2006E02 
	strh r5, [r0]
	ldr r0, off_814423C // =word_2006E04 
	strh r5, [r0]
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81441EC: .word word_2006DFC
off_81441F0: .word InterruptMasterEnableRegister
off_81441F4: .word InterruptEnableRegister
dword_81441F8: .word 0xFF3F
off_81441FC: .word SIOModeSelect_GeneralPurposeData
off_8144200: .word SIOControlRegister
dword_8144204: .word 0x4003
off_8144208: .word SIOData_Normal_8bitandUARTMode_
off_814420C: .word SIOData0_Parent__Multi_PlayerMode_
off_8144210: .word byte_200F460
dword_8144214: .word 0x5000266
off_8144218: .word unk_200F44C
dword_814421C: .word 0x1000002
off_8144220: .word byte_200F450
off_8144224: .word byte_2006DFE
off_8144228: .word byte_2006E00
off_814422C: .word byte_200F440
off_8144230: .word byte_200F448
off_8144234: .word byte_2006E01
off_8144238: .word word_2006E02
off_814423C: .word word_2006E04
.endfunc // sub_8144158

.func
.thumb_func
sub_8144240:
	push {lr}
	bl sub_8144158
	bl sub_81440D8 // static () -> void
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8144240

.func
.thumb_func
sub_8144250:
	push {r4-r7,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, off_814426C // =byte_200F460 
	ldrb r0, [r0,#0x1] // (byte_200F461 - 0x200f460)
	// switch 6 cases 
	cmp r0, #5
	bhi def_8144268
	lsl r0, r0, #2
	ldr r1, off_8144270 // =jpt_8144268 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.balign 4, 0x00
off_814426C: .word byte_200F460
off_8144270: .word jpt_8144268
// jump table for switch statement
jpt_8144268:  .word loc_814428C
	.word loc_814429C
	.word loc_81442B4
	.word loc_81442F0
	.word loc_81442FA
	.word loc_814430C
loc_814428C:
	bl sub_81440D8 // static () -> void
	ldr r1, off_8144298 // =byte_200F460 
	mov r0, #1
	strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
	b def_8144268
off_8144298: .word byte_200F460
loc_814429C:
	ldrb r0, [r4]
	cmp r0, #1
	bne def_8144268
	bl sub_8144158
	ldr r1, off_81442B0 // =byte_200F460 
	mov r0, #2
	strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
	b def_8144268
	.byte 0, 0
off_81442B0: .word byte_200F460
loc_81442B4:
	ldrb r1, [r4]
	cmp r1, #1
	beq loc_81442C4
	cmp r1, #2
	beq loc_81442DC
	bl sub_8144380
	b def_8144268
loc_81442C4:
	ldr r2, off_81442D8 // =byte_200F460 
	ldrb r0, [r2]
	cmp r0, #0
	beq def_8144268
	ldrb r0, [r2,#0x3] // (byte_200F463 - 0x200f460)
	cmp r0, #1
	bls def_8144268
	strb r1, [r2,#0x10] // (byte_200F470 - 0x200f460)
	b def_8144268
	.balign 4, 0x00
off_81442D8: .word byte_200F460
loc_81442DC:
	ldr r0, off_81442E8 // =byte_200F460 
	mov r1, #0
	strb r1, [r0,#0x1] // (byte_200F461 - 0x200f460)
	ldr r0, off_81442EC // =SIOData_Normal_8bitandUARTMode_ 
	strh r1, [r0]
	b def_8144268
off_81442E8: .word byte_200F460
off_81442EC: .word SIOData_Normal_8bitandUARTMode_
loc_81442F0:
	bl sub_81443AC
	ldr r1, off_8144308 // =byte_200F460 
	mov r0, #4
	strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
loc_81442FA:
	add r0, r5, #0
	bl sub_81443FC
	add r0, r6, #0
	bl sub_81444E4
	b def_8144268
off_8144308: .word byte_200F460
loc_814430C:
	ldr r1, off_8144354 // =byte_200F460 
	mov r0, #2
	strb r0, [r1,#0x15] // (byte_200F475 - 0x200f460)
def_8144268:
	mov r0, #0
	strb r0, [r4]
	ldr r1, off_8144354 // =byte_200F460 
	ldrb r2, [r1,#0x2] // (byte_200F462 - 0x200f460)
	ldrb r0, [r1,#0x3] // (byte_200F463 - 0x200f460)
	lsl r0, r0, #2
	orr r2, r0
	ldrb r0, [r1]
	cmp r0, #8
	bne loc_814432A
	mov r0, #0x20 
	orr r2, r0
loc_814432A:
	ldrb r0, [r1,#0xc] // (byte_200F46C - 0x200f460)
	lsl r3, r0, #8
	ldrb r0, [r1,#0x11] // (byte_200F471 - 0x200f460)
	lsl r4, r0, #9
	ldrb r0, [r1,#0x12] // (byte_200F472 - 0x200f460)
	lsl r5, r0, #0x10
	ldrb r0, [r1,#0x13] // (byte_200F473 - 0x200f460)
	lsl r6, r0, #0x11
	ldrb r0, [r1,#0x14] // (byte_200F474 - 0x200f460)
	lsl r7, r0, #0x12
	ldrb r0, [r1,#0x15] // (byte_200F475 - 0x200f460)
	lsl r0, r0, #0x14
	mov r12, r0
	ldrb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
	cmp r0, #4
	bne loc_8144358
	mov r0, #0x40 
	orr r0, r3
	orr r0, r2
	b loc_814435C
	.balign 4, 0x00
off_8144354: .word byte_200F460
loc_8144358:
	add r0, r2, #0
	orr r0, r3
loc_814435C:
	orr r0, r4
	orr r0, r5
	orr r0, r6
	orr r0, r7
	mov r2, r12
	orr r0, r2
	add r2, r0, #0
	ldrb r0, [r1,#0x2] // (byte_200F462 - 0x200f460)
	cmp r0, #3
	bls loc_8144376
	mov r0, #0x80
	lsl r0, r0, #0xf
	orr r2, r0
loc_8144376:
	add r0, r2, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0, 0
.endfunc // sub_8144250

.func
.thumb_func
sub_8144380:
	push {lr}
	ldr r0, off_814439C // =SIOControlRegister 
	ldr r1, [r0]
	mov r0, #0xc
	and r1, r0
	ldr r2, off_81443A0 // =byte_200F460 
	cmp r1, #8
	bne loc_81443A4
	ldrb r0, [r2,#0x2] // (byte_200F462 - 0x200f460)
	cmp r0, #0
	bne loc_81443A4
	strb r1, [r2]
	b loc_81443A8
	.balign 4, 0x00
off_814439C: .word SIOControlRegister
off_81443A0: .word byte_200F460
loc_81443A4:
	mov r0, #0
	strb r0, [r2]
loc_81443A8:
	pop {r0}
	bx r0
.endfunc // sub_8144380

.func
.thumb_func
sub_81443AC:
	push {r4,lr}
	ldr r0, off_81443E4 // =byte_200F460 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_81443DC
	ldr r1, off_81443E8 // =Timer3Counter_Reload 
	ldr r2, dword_81443EC // =0xFF7C 
	add r0, r2, #0
	strh r0, [r1]
	add r1, #2
	mov r0, #0x41 
	strh r0, [r1]
	ldr r0, off_81443F0 // =word_2006DFC 
	ldr r2, off_81443F4 // =InterruptMasterEnableRegister 
	ldrh r4, [r2]
	strh r4, [r0]
	mov r0, #0
	strh r0, [r2]
	ldr r3, off_81443F8 // =InterruptEnableRegister 
	ldrh r0, [r3]
	mov r1, #0x40 
	orr r0, r1
	strh r0, [r3]
	strh r4, [r2]
loc_81443DC:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81443E4: .word byte_200F460
off_81443E8: .word Timer3Counter_Reload
dword_81443EC: .word 0xFF7C
off_81443F0: .word word_2006DFC
off_81443F4: .word InterruptMasterEnableRegister
off_81443F8: .word InterruptEnableRegister
.endfunc // sub_81443AC

.func
.thumb_func
sub_81443FC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r3, r0, #0
	ldr r2, off_8144474 // =word_2006DFC 
	ldr r1, off_8144478 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	strh r0, [r2]
	mov r0, #0
	strh r0, [r1]
	ldr r1, off_814447C // =byte_200F460 
	ldr r4, off_8144480 // =0x211 
	add r0, r1, r4
	ldrb r4, [r0]
	mov r10, r2
	add r6, r1, #0
	cmp r4, #0x1d
	bhi loc_814448C
	mov r1, #0x84
	lsl r1, r1, #2
	add r0, r6, r1
	ldrb r0, [r0]
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x1d
	bls loc_814443C
	sub r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
loc_814443C:
	mov r2, #0
	ldr r4, off_8144484 // =word_2006E02 
	mov r8, r4
	ldr r1, off_8144488 // =byte_200F440 
	mov r9, r1
	lsl r5, r0, #1
	mov r0, #0x30 
	add r0, r0, r6
	mov r12, r0
	mov r7, #0
loc_8144450:
	ldrh r0, [r4]
	ldrh r1, [r3]
	orr r0, r1
	strh r0, [r4]
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r12
	strh r1, [r0]
	strh r7, [r3]
	add r3, #2
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #7
	bls loc_8144450
	b loc_814449C
off_8144474: .word word_2006DFC
off_8144478: .word InterruptMasterEnableRegister
off_814447C: .word byte_200F460
off_8144480: .word 0x211
off_8144484: .word word_2006E02
off_8144488: .word byte_200F440
loc_814448C:
	ldrb r1, [r6,#0x14] // (byte_200F474 - 0x200f460)
	mov r0, #1
	orr r0, r1
	strb r0, [r6,#0x14] // (byte_200F474 - 0x200f460)
	ldr r1, off_81444D4 // =word_2006E02 
	mov r8, r1
	ldr r2, off_81444D8 // =byte_200F440 
	mov r9, r2
loc_814449C:
	mov r4, r8
	ldrh r0, [r4]
	cmp r0, #0
	beq loc_81444B2
	ldr r1, off_81444DC // =0x211 
	add r0, r6, r1
	ldrb r1, [r0]
	add r1, #1
	mov r2, #0
	strb r1, [r0]
	strh r2, [r4]
loc_81444B2:
	ldr r1, off_81444E0 // =InterruptMasterEnableRegister 
	mov r2, r10
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r4, off_81444DC // =0x211 
	add r0, r6, r4
	ldrb r0, [r0]
	mov r1, r9
	strb r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81444D4: .word word_2006E02
off_81444D8: .word byte_200F440
off_81444DC: .word 0x211
off_81444E0: .word InterruptMasterEnableRegister
.endfunc // sub_81443FC

.func
.thumb_func
sub_81444E4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r12, r0
	ldr r2, off_8144544 // =word_2006DFC 
	ldr r1, off_8144548 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	strh r0, [r2]
	mov r0, #0
	strh r0, [r1]
	ldr r1, off_814454C // =byte_200F460 
	ldr r3, dword_8144550 // =0x995 
	add r0, r1, r3
	ldrb r0, [r0]
	add r7, r1, #0
	cmp r0, #0
	bne loc_8144554
	mov r3, #0
	mov r8, r7
	ldrb r6, [r7,#0x3] // (byte_200F463 - 0x200f460)
loc_8144510:
	mov r2, #0
	add r5, r3, #1
	cmp r2, r6
	bcs loc_8144534
	lsl r0, r3, #3
	mov r1, r12
	add r3, r0, r1
	mov r4, #0
	mov r0, r8
	ldrb r1, [r0,#0x3] // (byte_200F463 - 0x200f460)
loc_8144524:
	lsl r0, r2, #1
	add r0, r0, r3
	strh r4, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r1
	bcc loc_8144524
loc_8144534:
	lsl r0, r5, #0x18
	lsr r3, r0, #0x18
	cmp r3, #7
	bls loc_8144510
	mov r0, #1
	strb r0, [r7,#0xc] // (byte_200F46C - 0x200f460)
	b loc_81445CC
	.balign 4, 0x00
off_8144544: .word word_2006DFC
off_8144548: .word InterruptMasterEnableRegister
off_814454C: .word byte_200F460
dword_8144550: .word 0x995
loc_8144554:
	mov r3, #0
	ldrb r1, [r7,#0x3] // (byte_200F463 - 0x200f460)
	mov r9, r1
	mov r2, #0x85
	lsl r2, r2, #2
	add r2, r2, r7
	mov r8, r2
	mov r10, r7
loc_8144564:
	mov r2, #0
	add r5, r3, #1
	cmp r2, r9
	bcs loc_81445A0
	lsl r0, r3, #3
	mov r1, r12
	add r6, r0, r1
	ldr r0, off_81445E4 // =byte_200FDF4 
	ldrb r1, [r0]
	lsl r1, r1, #1
	mov r0, r10
	ldrb r4, [r0,#0x3] // (byte_200F463 - 0x200f460)
	lsl r0, r3, #4
	sub r0, r0, r3
	lsl r0, r0, #2
	add r3, r1, r0
loc_8144584:
	lsl r1, r2, #1
	add r1, r1, r6
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #5
	add r0, r3, r0
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r4
	bcc loc_8144584
loc_81445A0:
	lsl r0, r5, #0x18
	lsr r3, r0, #0x18
	cmp r3, #7
	bls loc_8144564
	add r2, r7, #0
	ldr r3, dword_81445E8 // =0x995 
	add r1, r2, r3
	ldrb r0, [r1]
	sub r0, #1
	mov r3, #0
	strb r0, [r1]
	ldr r0, off_81445EC // =0x994 
	add r2, r2, r0
	ldrb r0, [r2]
	add r0, #1
	strb r0, [r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x1d
	bls loc_81445CA
	strb r3, [r2]
loc_81445CA:
	strb r3, [r7,#0xc] // (byte_200F46C - 0x200f460)
loc_81445CC:
	ldr r1, off_81445F0 // =InterruptMasterEnableRegister 
	ldr r2, off_81445F4 // =word_2006DFC 
	ldrh r0, [r2]
	strh r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81445E4: .word byte_200FDF4
dword_81445E8: .word 0x995
off_81445EC: .word 0x994
off_81445F0: .word InterruptMasterEnableRegister
off_81445F4: .word word_2006DFC
.endfunc // sub_81444E4

.func
.thumb_func
sub_81445F8:
	push {r4,lr}
	ldr r4, off_8144620 // =byte_200F460 
	ldrb r3, [r4]
	cmp r3, #0
	beq loc_8144664
	ldrb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
	cmp r0, #2
	beq loc_814462C
	cmp r0, #4
	bne loc_8144690
	ldrb r0, [r4,#0xd] // (byte_200F46D - 0x200f460)
	cmp r0, #8
	bhi loc_8144624
	ldrb r0, [r4,#0x12] // (byte_200F472 - 0x200f460)
	cmp r0, #0
	bne loc_814462C
	mov r0, #1
	strb r0, [r4,#0x15] // (byte_200F475 - 0x200f460)
	b loc_8144690
	.byte 0, 0
off_8144620: .word byte_200F460
loc_8144624:
	ldrb r0, [r4,#0x15] // (byte_200F475 - 0x200f460)
	cmp r0, #0
	bne loc_8144690
	strb r0, [r4,#0xd] // (byte_200F46D - 0x200f460)
loc_814462C:
	bl sub_814474C
	ldr r0, off_8144658 // =byte_200F454 
	ldrb r2, [r0]
	cmp r2, #2
	bne loc_8144690
	ldr r1, off_814465C // =byte_200F450 
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	bls loc_8144690
	ldr r0, off_8144660 // =byte_200F460 
	mov r1, #0
	strb r2, [r0,#0x15] // (byte_200F475 - 0x200f460)
	strb r1, [r0,#0x2] // (byte_200F462 - 0x200f460)
	strb r1, [r0,#0x3] // (byte_200F463 - 0x200f460)
	strb r1, [r0,#0x11] // (byte_200F471 - 0x200f460)
	b loc_8144690
	.balign 4, 0x00
off_8144658: .word byte_200F454
off_814465C: .word byte_200F450
off_8144660: .word byte_200F460
loc_8144664:
	ldrb r2, [r4,#0x1] // (byte_200F461 - 0x200f460)
	cmp r2, #4
	beq loc_814466E
	cmp r2, #2
	bne loc_8144690
loc_814466E:
	ldr r1, off_8144698 // =byte_200F450 
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	bls loc_8144690
	cmp r2, #4
	bne loc_8144686
	mov r0, #2
	strb r0, [r4,#0x15] // (byte_200F475 - 0x200f460)
loc_8144686:
	cmp r2, #2
	bne loc_8144690
	strb r3, [r4,#0x2] // (byte_200F462 - 0x200f460)
	strb r3, [r4,#0x3] // (byte_200F463 - 0x200f460)
	strb r3, [r4,#0x11] // (byte_200F471 - 0x200f460)
loc_8144690:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8144698: .word byte_200F450
.endfunc // sub_81445F8

.func
.thumb_func
sub_814469C:
	push {lr}
	bl sub_8144BBC
	bl sub_814474C
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814469C

.func
.thumb_func
sub_81446AC:
	push {r4,lr}
	ldr r0, off_81446D4 // =SIOControlRegister 
	ldr r0, [r0]
	ldr r4, off_81446D8 // =byte_200F460 
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	strb r0, [r4,#0x2] // (byte_200F462 - 0x200f460)
	ldrb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
	cmp r0, #2
	beq loc_81446DC
	cmp r0, #4
	bne loc_8144714
	bl sub_8144920
	bl sub_8144AFC
	bl sub_8144BF0
	b loc_8144714
	.balign 4, 0x00
off_81446D4: .word SIOControlRegister
off_81446D8: .word byte_200F460
loc_81446DC:
	bl sub_814475C
	lsl r0, r0, #0x18
	cmp r0, #0
	beq loc_81446FC
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_81446F6
	mov r0, #3
	strb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
	mov r0, #8
	strb r0, [r4,#0xd] // (byte_200F46D - 0x200f460)
	b loc_8144714
loc_81446F6:
	mov r0, #4
	strb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
	b loc_8144714
loc_81446FC:
	mov r2, #0
	add r4, #0x2a 
	mov r3, #0xff
loc_8144702:
	add r0, r2, r4
	ldrb r1, [r0]
	orr r1, r3
	strb r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_8144702
loc_8144714:
	ldr r3, off_814473C // =byte_200F460 
	ldrb r0, [r3,#0xd] // (byte_200F46D - 0x200f460)
	add r0, #1
	mov r2, #0
	strb r0, [r3,#0xd] // (byte_200F46D - 0x200f460)
	ldr r1, off_8144740 // =byte_200F450 
	strb r2, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	bne loc_8144734
	ldr r0, off_8144744 // =byte_200F448 
	ldr r2, dword_8144748 // =0x995 
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
loc_8144734:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814473C: .word byte_200F460
off_8144740: .word byte_200F450
off_8144744: .word byte_200F448
dword_8144748: .word 0x995
.endfunc // sub_81446AC

.func
.thumb_func
sub_814474C:
	ldr r0, off_8144758 // =SIOControlRegister 
	ldrh r1, [r0]
	mov r2, #0x80
	orr r1, r2
	strh r1, [r0]
	bx lr
off_8144758: .word SIOControlRegister
.endfunc // sub_814474C

.func
.thumb_func
sub_814475C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r0, #0
	mov r9, r0
	ldr r1, dword_814478C // =0xFFFF 
	mov r12, r1
	ldr r0, off_8144790 // =byte_200F454 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_814477C
	cmp r0, #2
	beq loc_814477C
	b loc_81448CC
loc_814477C:
	ldr r0, off_8144794 // =byte_200F460 
	ldrb r1, [r0,#0x10] // (byte_200F470 - 0x200f460)
	mov r10, r0
	cmp r1, #1
	bne loc_81447B0
	ldr r1, off_8144798 // =SIOData_Normal_8bitandUARTMode_ 
	ldr r2, dword_814479C // =0x8FFF 
	b loc_81447B4
dword_814478C: .word 0xFFFF
off_8144790: .word byte_200F454
off_8144794: .word byte_200F460
off_8144798: .word SIOData_Normal_8bitandUARTMode_
dword_814479C: .word 0x8FFF
loc_81447A0:
	mov r0, r8
	add r0, #0x2a 
	add r0, r4, r0
	mov r1, #0xff
	strb r1, [r0]
	mov r0, #0
	mov r9, r0
	b loc_8144872
loc_81447B0:
	ldr r1, off_8144824 // =SIOData_Normal_8bitandUARTMode_ 
	ldr r2, dword_8144828 // =0xA6C0 
loc_81447B4:
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	mov r1, r10
	strb r0, [r1,#0x10] // (byte_200F470 - 0x200f460)
	mov r4, #0
	mov r2, r10
	add r2, #4
	mov r5, r10
	add r5, #0x2a 
	mov r3, #0xff
loc_81447CA:
	add r0, r4, r5
	ldrb r1, [r0]
	orr r1, r3
	strb r1, [r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_81447CA
	ldr r0, off_814482C // =SIOData0_Parent__Multi_PlayerMode_ 
	ldr r1, [r0,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2,#0x4] // (dword_200F468 - 0x200f464)
	mov r4, #0
	sub r0, r2, #4
	mov r8, r0
	add r5, r2, #0
	mov r7, #0xff
	lsl r7, r7, #8
	mov r6, r8
	add r6, #0x2a 
loc_81447F6:
	lsl r2, r4, #1
	add r0, r2, r5
	ldrh r3, [r0]
	mov r0, #4
	neg r0, r0
	and r0, r3
	ldr r1, dword_8144828 // =0xA6C0 
	cmp r0, r1
	beq loc_8144814
	add r0, r3, #0
	ldr r1, dword_8144830 // =0x8FFF 
	cmp r0, r1
	beq loc_8144814
	cmp r0, r7
	bne loc_8144856
loc_8144814:
	add r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r7
	bne loc_8144834
	add r1, r4, r6
	mov r0, #2
	b loc_8144838
	.balign 4, 0x00
off_8144824: .word SIOData_Normal_8bitandUARTMode_
dword_8144828: .word 0xA6C0
off_814482C: .word SIOData0_Parent__Multi_PlayerMode_
dword_8144830: .word 0x8FFF
loc_8144834:
	add r1, r4, r6
	mov r0, #1
loc_8144838:
	strb r0, [r1]
	mov r0, r9
	add r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r9, r0
	add r0, r2, r5
	ldrh r1, [r0]
	cmp r12, r1
	bls loc_8144868
	cmp r1, #0
	beq loc_8144868
	add r0, r1, #0
	mov r12, r0
	b loc_8144868
loc_8144856:
	ldr r2, dword_8144894 // =0xFFFF 
	cmp r0, r2
	bne loc_81447A0
	mov r0, r8
	ldrb r0, [r0,#0x2] // (byte_200F462 - 0x200f460)
	cmp r4, r0
	bne loc_8144868
	mov r1, #0
	mov r9, r1
loc_8144868:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_81447F6
loc_8144872:
	mov r0, r9
	mov r2, r10
	strb r0, [r2,#0x3] // (byte_200F463 - 0x200f460)
	mov r0, r9
	cmp r0, #1
	bls loc_81448B6
	ldr r1, off_8144898 // =byte_2006E00 
	ldrb r1, [r1]
	cmp r0, r1
	bne loc_81448A0
	ldrh r1, [r2,#0x4] // (dword_200F464 - 0x200f460)
	ldr r0, dword_814489C // =0x8FFF 
	cmp r1, r0
	bne loc_81448A0
	mov r0, #1
	b loc_8144904
	.balign 4, 0x00
dword_8144894: .word 0xFFFF
off_8144898: .word byte_2006E00
dword_814489C: .word 0x8FFF
loc_81448A0:
	mov r2, r10
	ldrb r0, [r2,#0x3] // (byte_200F463 - 0x200f460)
	cmp r0, #1
	bls loc_81448B6
	mov r0, #3
	mov r1, r12
	and r1, r0
	mov r12, r1
	mov r0, r12
	add r0, #1
	b loc_81448BA
loc_81448B6:
	mov r0, #0
	mov r2, r10
loc_81448BA:
	strb r0, [r2,#0x11] // (byte_200F471 - 0x200f460)
	mov r1, r10
	ldrb r0, [r1,#0x3] // (byte_200F463 - 0x200f460)
	ldr r2, off_81448C8 // =byte_2006E00 
	strb r0, [r2]
	b loc_8144902
	.balign 4, 0x00
off_81448C8: .word byte_2006E00
loc_81448CC:
	ldr r0, off_81448DC // =byte_200F460 
	ldrb r1, [r0,#0x10] // (byte_200F470 - 0x200f460)
	mov r10, r0
	cmp r1, #1
	bne loc_81448E8
	ldr r1, off_81448E0 // =SIOData_Normal_8bitandUARTMode_ 
	ldr r2, dword_81448E4 // =0x8FFF 
	b loc_81448EC
off_81448DC: .word byte_200F460
off_81448E0: .word SIOData_Normal_8bitandUARTMode_
dword_81448E4: .word 0x8FFF
loc_81448E8:
	ldr r1, off_8144914 // =SIOData_Normal_8bitandUARTMode_ 
	ldr r2, dword_8144918 // =0xA6C0 
loc_81448EC:
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	mov r1, r10
	strb r0, [r1,#0x10] // (byte_200F470 - 0x200f460)
	ldr r0, off_814491C // =SIOData0_Parent__Multi_PlayerMode_ 
	ldr r1, [r0,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
	ldr r0, [r0]
	mov r2, r10
	str r0, [r2,#0x4] // (dword_200F464 - 0x200f460)
	str r1, [r2,#0x8] // (dword_200F468 - 0x200f460)
loc_8144902:
	mov r0, #0
loc_8144904:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.balign 4, 0x00
off_8144914: .word SIOData_Normal_8bitandUARTMode_
dword_8144918: .word 0xA6C0
off_814491C: .word SIOData0_Parent__Multi_PlayerMode_
.endfunc // sub_814475C

.func
.thumb_func
sub_8144920:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	ldr r0, off_81449A0 // =SIOData0_Parent__Multi_PlayerMode_ 
	ldr r1, [r0,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp,#4]
	mov r4, #0
	ldr r5, off_81449A4 // =byte_200F489 
loc_8144938:
	lsl r0, r4, #1
	add r0, sp
	ldrh r0, [r0]
	ldrb r2, [r5]
	add r1, r4, #0
	bl sub_803F618
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8144938
	ldr r0, off_81449A8 // =byte_200F460 
	add r6, r0, #0
	add r0, #0x28 
	ldrb r0, [r0]
	add r3, r6, #0
	cmp r0, #0
	bne loc_81449E0
	mov r4, #0
	ldr r0, off_81449AC // =byte_2006E01 
	mov r9, r0
	ldrb r1, [r3,#0x3] // (byte_200F463 - 0x200f460)
	cmp r4, r1
	bcs loc_81449D4
	add r5, r3, #0
	mov r2, #0xff
	lsl r2, r2, #8
	mov r8, r2
	mov r7, #0x20 
	add r7, r7, r3
	mov r12, r7
loc_8144978:
	add r0, r5, #0
	add r0, #0x2a 
	add r0, r4, r0
	ldrb r2, [r0]
	cmp r2, #1
	bne loc_81449B0
	lsl r0, r4, #1
	mov r7, sp
	add r1, r7, r0
	ldrh r0, [r6,#0x16] // (word_200F476 - 0x200f460)
	ldrh r1, [r1]
	cmp r0, r1
	beq loc_81449C6
	mov r1, r9
	ldrb r0, [r1]
	cmp r0, #0
	beq loc_81449C6
	strb r2, [r5,#0x13] // (byte_200F473 - 0x200f460)
	b loc_81449C6
	.byte 0, 0
off_81449A0: .word SIOData0_Parent__Multi_PlayerMode_
off_81449A4: .word byte_200F489
off_81449A8: .word byte_200F460
off_81449AC: .word byte_2006E01
loc_81449B0:
	cmp r2, #2
	bne loc_81449C6
	lsl r1, r4, #1
	mov r2, sp
	add r0, r2, r1
	ldrh r0, [r0]
	cmp r0, r8
	bne loc_81449C6
	add r1, r12
	mov r0, #0
	strh r0, [r1]
loc_81449C6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r6, r3, #0
	ldrb r7, [r3,#0x3] // (byte_200F463 - 0x200f460)
	cmp r4, r7
	bcc loc_8144978
loc_81449D4:
	mov r0, #0
	strh r0, [r3,#0x16] // (word_200F476 - 0x200f460)
	mov r0, #1
	mov r1, r9
	strb r0, [r1]
	b loc_8144AE4
loc_81449E0:
	ldr r2, dword_8144A54 // =0x994 
	add r1, r3, r2
	ldr r7, dword_8144A58 // =0x995 
	add r0, r3, r7
	ldrb r2, [r0]
	ldrb r1, [r1]
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x1d
	bls loc_81449FC
	sub r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
loc_81449FC:
	cmp r2, #0x1d
	bhi loc_8144AB4
	mov r4, #0
	ldrb r1, [r3,#0x3] // (byte_200F463 - 0x200f460)
	cmp r4, r1
	bcs loc_8144ABC
	mov r12, r3
	lsl r7, r0, #1
	mov r2, #0x85
	lsl r2, r2, #2
	add r2, r2, r3
	mov r8, r2
	ldr r6, off_8144A5C // =word_2006E04 
	add r5, r3, #0
	add r5, #0x20 
loc_8144A1A:
	mov r0, r12
	add r0, #0x2a 
	add r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_8144A60
	lsl r0, r4, #1
	add r0, sp
	ldrh r2, [r0]
	ldrh r1, [r3,#0x16] // (word_200F476 - 0x200f460)
	add r0, r2, r1
	strh r0, [r3,#0x16] // (word_200F476 - 0x200f460)
	ldrh r0, [r6]
	orr r0, r2
	strh r0, [r6]
	add r0, r3, #0
	add r0, #0x29 
	ldrb r0, [r0]
	lsl r1, r0, #4
	sub r1, r1, r0
	lsl r1, r1, #2
	add r1, r7, r1
	lsl r0, r4, #4
	sub r0, r0, r4
	lsl r0, r0, #5
	add r1, r1, r0
	add r1, r8
	strh r2, [r1]
	b loc_8144AA4
dword_8144A54: .word 0x994
dword_8144A58: .word 0x995
off_8144A5C: .word word_2006E04
loc_8144A60:
	cmp r0, #2
	bne loc_8144AA4
	mov r0, r12
	add r0, #0x28 
	ldrb r0, [r0]
	cmp r0, #4
	bne loc_8144A7C
	lsl r0, r4, #1
	mov r1, r12
	add r1, #0x18
	add r1, r0, r1
	add r0, sp
	ldrh r0, [r0]
	b loc_8144AA2
loc_8144A7C:
	cmp r0, #3
	bne loc_8144A92
	lsl r1, r4, #1
	add r2, r1, r5
	ldrh r0, [r2]
	add r1, sp
	add r0, #1
	ldrh r1, [r1]
	add r0, r0, r1
	strh r0, [r2]
	b loc_8144AA4
loc_8144A92:
	cmp r0, #5
	bne loc_8144AA4
	lsl r0, r4, #1
	add r1, r0, r5
	add r0, sp
	ldrh r0, [r0]
	ldrh r2, [r1]
	add r0, r0, r2
loc_8144AA2:
	strh r0, [r1]
loc_8144AA4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, r12
	ldrb r0, [r0,#0x3] // (byte_200F463 - 0x200f460)
	cmp r4, r0
	bcc loc_8144A1A
	b loc_8144ABC
loc_8144AB4:
	ldrb r1, [r3,#0x14] // (byte_200F474 - 0x200f460)
	mov r0, #2
	orr r0, r1
	strb r0, [r3,#0x14] // (byte_200F474 - 0x200f460)
loc_8144ABC:
	add r1, r3, #0
	add r1, #0x29 
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	bne loc_8144AE4
	ldr r2, off_8144AF4 // =word_2006E04 
	ldrh r0, [r2]
	cmp r0, #0
	beq loc_8144AE4
	ldr r1, dword_8144AF8 // =0x995 
	add r0, r3, r1
	ldrb r1, [r0]
	add r1, #1
	strb r1, [r0]
	mov r0, #0
	strh r0, [r2]
loc_8144AE4:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8144AF4: .word word_2006E04
dword_8144AF8: .word 0x995
.endfunc // sub_8144920

.func
.thumb_func
sub_8144AFC:
	push {lr}
	ldr r1, off_8144B40 // =byte_200F460 
	add r0, r1, #0
	add r0, #0x28 
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, #8
	bne loc_8144B54
	ldr r1, off_8144B44 // =SIOData_Normal_8bitandUARTMode_ 
	mov r2, r12
	ldrh r0, [r2,#0x16] // (word_200F476 - 0x200f460)
	strh r0, [r1]
	ldr r1, off_8144B48 // =byte_2006DFE 
	ldrb r2, [r1]
	cmp r2, #0
	bne loc_8144B50
	ldr r1, off_8144B4C // =0x211 
	add r1, r12
	ldrb r0, [r1]
	sub r0, #1
	strb r0, [r1]
	mov r1, #0x84
	lsl r1, r1, #2
	add r1, r12
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x1d
	bls loc_8144BB2
	strb r2, [r1]
	b loc_8144BB2
	.byte 0, 0
off_8144B40: .word byte_200F460
off_8144B44: .word SIOData_Normal_8bitandUARTMode_
off_8144B48: .word byte_2006DFE
off_8144B4C: .word 0x211
loc_8144B50:
	mov r0, #0
	b loc_8144BB0
loc_8144B54:
	ldr r1, off_8144B78 // =byte_2006DFE 
	cmp r0, #0
	bne loc_8144B68
	ldr r0, off_8144B7C // =0x211 
	add r0, r12
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_8144B68
	mov r0, #1
	strb r0, [r1]
loc_8144B68:
	ldrb r0, [r1]
	cmp r0, #0
	beq loc_8144B84
	ldr r1, off_8144B80 // =SIOData_Normal_8bitandUARTMode_ 
	mov r0, #0
	strh r0, [r1]
	b loc_8144BA8
	.balign 4, 0x00
off_8144B78: .word byte_2006DFE
off_8144B7C: .word 0x211
off_8144B80: .word SIOData_Normal_8bitandUARTMode_
loc_8144B84:
	ldr r3, off_8144BB8 // =SIOData_Normal_8bitandUARTMode_ 
	mov r0, #0x84
	lsl r0, r0, #2
	add r0, r12
	ldrb r1, [r0]
	lsl r1, r1, #1
	mov r0, r12
	add r0, #0x28 
	ldrb r2, [r0]
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, r12
	add r0, #0x30 
	add r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3]
loc_8144BA8:
	mov r1, r12
	add r1, #0x28 
	ldrb r0, [r1]
	add r0, #1
loc_8144BB0:
	strb r0, [r1]
loc_8144BB2:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8144BB8: .word SIOData_Normal_8bitandUARTMode_
.endfunc // sub_8144AFC

.func
.thumb_func
sub_8144BBC:
	push {lr}
	ldr r0, off_8144BDC // =byte_200F460 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_8144BD8
	ldr r2, off_8144BE0 // =Timer3Control 
	ldrh r1, [r2]
	ldr r0, dword_8144BE4 // =0xFF7F 
	and r0, r1
	strh r0, [r2]
	ldr r1, off_8144BE8 // =Timer3Counter_Reload 
	ldr r2, dword_8144BEC // =0xFF7C 
	add r0, r2, #0
	strh r0, [r1]
loc_8144BD8:
	pop {r0}
	bx r0
off_8144BDC: .word byte_200F460
off_8144BE0: .word Timer3Control
dword_8144BE4: .word 0xFF7F
off_8144BE8: .word Timer3Counter_Reload
dword_8144BEC: .word 0xFF7C
.endfunc // sub_8144BBC

.func
.thumb_func
sub_8144BF0:
	push {lr}
	ldr r1, off_8144C08 // =byte_200F460 
	add r2, r1, #0
	add r2, #0x29 
	ldrb r0, [r2]
	cmp r0, #8
	bne loc_8144C0C
	add r1, #0x28 
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	b loc_8144C1C
off_8144C08: .word byte_200F460
loc_8144C0C:
	ldrb r0, [r1]
	cmp r0, #0
	beq loc_8144C1C
	ldr r0, off_8144C20 // =Timer3Control 
	ldrh r1, [r0]
	mov r2, #0x80
	orr r1, r2
	strh r1, [r0]
loc_8144C1C:
	pop {r0}
	bx r0
off_8144C20: .word Timer3Control
.endfunc // sub_8144BF0

	push {r4,r5,lr}
	ldr r1, off_8144C68 // =byte_200F460 
	ldr r2, off_8144C6C // =0x211 
	add r0, r1, r2
	mov r2, #0
	strb r2, [r0]
	mov r3, #0x84
	lsl r3, r3, #2
	add r0, r1, r3
	strb r2, [r0]
	add r5, r1, #0
	add r5, #0x30 
	ldr r4, dword_8144C70 // =0xEFFF 
loc_8144C3E:
	mov r3, #0
	lsl r0, r2, #4
	add r1, r2, #1
	sub r0, r0, r2
	lsl r2, r0, #2
loc_8144C48:
	lsl r0, r3, #1
	add r0, r0, r2
	add r0, r0, r5
	strh r4, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x1d
	bls loc_8144C48
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	cmp r2, #7
	bls loc_8144C3E
	pop {r4,r5}
	pop {r0}
	bx r0
off_8144C68: .word byte_200F460
off_8144C6C: .word 0x211
dword_8144C70: .word 0xEFFF
	push {r4-r7,lr}
	ldr r1, off_8144CD0 // =byte_200F460 
	ldr r2, dword_8144CD4 // =0x995 
	add r0, r1, r2
	mov r2, #0
	strb r2, [r0]
	ldr r3, dword_8144CD8 // =0x994 
	add r0, r1, r3
	strb r2, [r0]
	mov r3, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r7, r1, r0
	ldr r6, dword_8144CDC // =0xEFFF 
loc_8144C90:
	mov r2, #0
	lsl r0, r3, #4
	add r5, r3, #1
	sub r0, r0, r3
	lsl r4, r0, #5
loc_8144C9A:
	mov r3, #0
	lsl r0, r2, #4
	add r1, r2, #1
	sub r0, r0, r2
	lsl r2, r0, #2
loc_8144CA4:
	lsl r0, r3, #1
	add r0, r0, r2
	add r0, r0, r4
	add r0, r0, r7
	strh r6, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x1d
	bls loc_8144CA4
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	cmp r2, #7
	bls loc_8144C9A
	lsl r0, r5, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_8144C90
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
off_8144CD0: .word byte_200F460
dword_8144CD4: .word 0x995
dword_8144CD8: .word 0x994
dword_8144CDC: .word 0xEFFF
.func
.thumb_func
sub_8144CE0:
	ldr r0, off_8144CE8 // =byte_200F460 
	ldrb r0, [r0,#0x1] // (byte_200F461 - 0x200f460)
	bx lr
	.balign 4, 0x00
off_8144CE8: .word byte_200F460
.endfunc // sub_8144CE0

.func
.thumb_func
sub_8144CEC:
	ldr r0, off_8144CF4 // =byte_200F460 
	add r0, #0x29 
	ldrb r0, [r0]
	bx lr
off_8144CF4: .word byte_200F460
.endfunc // sub_8144CEC

.func
.thumb_func
sub_8144CF8:
	ldr r1, off_8144D00 // =byte_200F454 
	strb r0, [r1]
	bx lr
	.byte 0, 0
off_8144D00: .word byte_200F454
.endfunc // sub_8144CF8

.func
.thumb_func
sub_8144D04:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldr r1, off_8144D14 // =byte_200F460 
	add r1, #0x2a 
	add r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.balign 4, 0x00
off_8144D14: .word byte_200F460
.endfunc // sub_8144D04

.func
.thumb_func
sub_8144D18:
	ldr r0, off_8144D20 // =byte_200F440 
	ldrb r0, [r0]
	bx lr
	.byte 0, 0
off_8144D20: .word byte_200F440
.endfunc // sub_8144D18

.func
.thumb_func
sub_8144D24:
	ldr r0, off_8144D2C // =byte_200F448 
	ldrb r0, [r0]
	bx lr
	.balign 4, 0x00
off_8144D2C: .word byte_200F448
.endfunc // sub_8144D24

.func
.thumb_func
sub_8144D30:
	ldr r1, off_8144D38 // =byte_200F460 
	mov r0, #5
	strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
	bx lr
off_8144D38: .word byte_200F460
.endfunc // sub_8144D30

.func
.thumb_func
sub_8144D3C:
	push {lr}
	ldr r0, off_8144D54 // =byte_200F440 
	ldrb r0, [r0]
	cmp r0, #5
	bhi loc_8144D5C
	ldr r0, off_8144D58 // =byte_200F448 
	ldrb r0, [r0]
	cmp r0, #5
	bhi loc_8144D5C
	mov r0, #0
	b loc_8144D5E
	.balign 4, 0x00
off_8144D54: .word byte_200F440
off_8144D58: .word byte_200F448
loc_8144D5C:
	mov r0, #1
loc_8144D5E:
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8144D3C

.func
.thumb_func
sub_8144D64:
	push {r4,lr}
	bl sub_8149718
	add r4, r0, #0
	ldr r0, dword_8144DA8 // =0x8001 
	cmp r4, r0
	bne loc_8144D78
	ldr r1, off_8144DAC // =byte_200FE00 
	mov r0, #1
	strb r0, [r1,#0x8] // (byte_200FE08 - 0x200fe00)
loc_8144D78:
	ldr r0, off_8144DAC // =byte_200FE00 
	ldrb r2, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	add r1, r0, #0
	cmp r2, #0x17
	beq loc_8144D8C
	cmp r2, #1
	beq loc_8144D8C
	mov r0, #0
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8144D8C:
	mov r0, #0
	strb r0, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
	strb r0, [r1,#0xd] // (byte_200FE0D - 0x200fe00)
	strb r0, [r1,#0x1] // (byte_200FE01 - 0x200fe00)
	strb r0, [r1]
	mov r0, #0xff
	strb r0, [r1,#0x6] // (byte_200FE06 - 0x200fe00)
	bl sub_81464B4
	add r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.balign 4, 0x00
dword_8144DA8: .word 0x8001
off_8144DAC: .word byte_200FE00
.endfunc // sub_8144D64

.func
.thumb_func
sub_8144DB0:
	push {lr}
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, off_8144DD0 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_8144DD8
	ldr r0, off_8144DD4 // =byte_200FE00 
	ldrb r0, [r0,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r2, #0
	cmp r0, #1
	bne loc_8144DE0
	mov r2, #1
	b loc_8144DE0
	.byte 0, 0
off_8144DD0: .word dword_2010CC0
off_8144DD4: .word byte_200FE00
loc_8144DD8:
	ldr r0, off_8144DEC // =byte_200FE00 
	ldrb r1, [r0,#0x3] // (byte_200FE03 - 0x200fe00)
	mov r1, #0
	strb r1, [r0,#0x3] // (byte_200FE03 - 0x200fe00)
loc_8144DE0:
	add r0, r2, #0
	bl sub_814B0B4
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8144DEC: .word byte_200FE00
.endfunc // sub_8144DB0

.func
.thumb_func
sub_8144DF0:
	push {r4-r6,lr}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	beq loc_8144E38
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r4, off_8144E28 // =byte_200FE00 
	ldr r2, dword_8144E2C // =0x1000024 
	mov r0, sp
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, #0xff
	strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
	str r5, [r4,#0x40] // (dword_200FE40 - 0x200fe00)
	str r6, [r4,#0x44] // (dword_200FE44 - 0x200fe00)
	ldr r0, off_8144E30 // =sub_8145D54+1 
	bl sub_8149464
	ldr r0, off_8144E34 // =sub_8145658+1 
	bl sub_8149470
	mov r0, #0
	b loc_8144E3A
	.balign 4, 0x00
off_8144E28: .word byte_200FE00
dword_8144E2C: .word 0x1000024
off_8144E30: .word sub_8145D54+1
off_8144E34: .word sub_8145658+1
loc_8144E38:
	mov r0, #4
loc_8144E3A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8144DF0

.func
.thumb_func
sub_8144E44:
	push {r4,lr}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r4, off_8144E68 // =byte_200FE00 
	ldr r2, dword_8144E6C // =0x1000020 
	mov r0, sp
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, #0xff
	strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8144E68: .word byte_200FE00
dword_8144E6C: .word 0x1000020
.endfunc // sub_8144E44

.func
.thumb_func
sub_8144E70:
	push {r4,lr}
	add r4, r0, #0
	bl sub_8144EA4
	ldr r1, off_8144EA0 // =byte_200FE00 
	mov r2, #1
	strb r2, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #2
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	str r4, [r1,#0x3c] // (dword_200FE3C - 0x200fe00)
	ldrb r0, [r4,#0x11]
	strb r0, [r1,#0x9] // (byte_200FE09 - 0x200fe00)
	ldrh r0, [r4,#0x12]
	strh r0, [r1,#0x32] // (word_200FE32 - 0x200fe00)
	ldrh r0, [r4,#0x14]
	strh r0, [r1,#0x18] // (word_200FE18 - 0x200fe00)
	ldrb r0, [r4,#0x10]
	cmp r0, #0
	beq loc_8144E98
	strb r2, [r1,#0xb] // (byte_200FE0B - 0x200fe00)
loc_8144E98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0, 0
off_8144EA0: .word byte_200FE00
.endfunc // sub_8144E70

.func
.thumb_func
sub_8144EA4:
	push {r4,r5,lr}
	ldr r2, off_8144EE8 // =byte_200FE00 
	mov r0, #0
	strb r0, [r2,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r1, #0xff
	strb r1, [r2,#0x6] // (byte_200FE06 - 0x200fe00)
	strb r0, [r2,#0x7] // (byte_200FE07 - 0x200fe00)
	strb r0, [r2,#0x10] // (byte_200FE10 - 0x200fe00)
	strb r0, [r2,#0xc] // (byte_200FE0C - 0x200fe00)
	add r1, r2, #0
	add r1, #0x24 
	strb r0, [r1]
	add r1, #0xc
	strb r0, [r1]
	mov r3, #0
	add r5, r2, #0
	add r5, #0x28 
	mov r4, #0
	add r2, #0x34 
loc_8144ECC:
	lsl r1, r3, #1
	add r0, r1, r5
	strh r4, [r0]
	add r1, r1, r2
	strh r4, [r1]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_8144ECC
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8144EE8: .word byte_200FE00
.endfunc // sub_8144EA4

.func
.thumb_func
sub_8144EEC:
	ldr r1, off_8144EF4 // =byte_200FE00 
	mov r0, #0x15
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	bx lr
off_8144EF4: .word byte_200FE00
.endfunc // sub_8144EEC

.func
.thumb_func
sub_8144EF8:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r3, #0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r8, r2
	ldr r1, off_8144F30 // =byte_200FE00 
	ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	beq loc_8144F34
	cmp r0, #8
	bne loc_8144F1E
	cmp r5, #1
	beq loc_8144F34
loc_8144F1E:
	mov r0, #1
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #1
	b loc_8144FC6
	.byte 0, 0
off_8144F30: .word byte_200FE00
loc_8144F34:
	bl sub_814A7F0
	lsl r0, r0, #0x18
	cmp r0, #0
	bne loc_8144F54
	ldr r1, off_8144F50 // =byte_200FE00 
	mov r0, #2
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #2
	b loc_8144FC6
off_8144F50: .word byte_200FE00
loc_8144F54:
	mov r2, #0
	ldrh r0, [r6]
	ldr r4, dword_8144F88 // =0xFFFF 
	add r1, r6, #2
	ldr r3, off_8144F8C // =byte_200FE00 
	cmp r0, r4
	beq loc_8144F74
loc_8144F62:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xf
	bhi loc_8144F74
	ldrh r0, [r1]
	add r1, #2
	cmp r0, r4
	bne loc_8144F62
loc_8144F74:
	cmp r2, #0x10
	bne loc_8144F90
	mov r0, #4
	strh r0, [r3,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #4
	b loc_8144FC6
dword_8144F88: .word 0xFFFF
off_8144F8C: .word byte_200FE00
loc_8144F90:
	cmp r5, #1
	bls loc_8144F9E
	mov r0, #1
	strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r5, #1
	mov r7, #0
	b loc_8144FA2
loc_8144F9E:
	mov r0, #0
	strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
loc_8144FA2:
	cmp r5, #0
	beq loc_8144FAC
	mov r0, #5
	strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
	b loc_8144FBA
loc_8144FAC:
	mov r0, #9
	strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r0, [r3,#0xb] // (byte_200FE0B - 0x200fe00)
	cmp r0, #0
	beq loc_8144FBA
	mov r0, #2
	strb r0, [r3,#0xb] // (byte_200FE0B - 0x200fe00)
loc_8144FBA:
	strb r5, [r3,#0x6] // (byte_200FE06 - 0x200fe00)
	strh r7, [r3,#0x1a] // (word_200FE1A - 0x200fe00)
	mov r0, r8
	strh r0, [r3,#0x26] // (word_200FE26 - 0x200fe00)
	str r6, [r3,#0x20] // (dword_200FE20 - 0x200fe00)
	mov r0, #0
loc_8144FC6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
.endfunc // sub_8144EF8

.func
.thumb_func
sub_8144FD0:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r8, r1
	ldr r1, off_8145004 // =byte_200FE00 
	ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	beq loc_8145008
	sub r0, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	bls loc_8145008
	mov r0, #1
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #1
	b loc_81450A8
	.balign 4, 0x00
off_8145004: .word byte_200FE00
loc_8145008:
	bl sub_814A7F0
	lsl r0, r0, #0x18
	cmp r0, #0
	bne loc_8145028
	ldr r1, off_8145024 // =byte_200FE00 
	mov r0, #2
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #2
	b loc_81450A8
off_8145024: .word byte_200FE00
loc_8145028:
	mov r2, #0
	ldr r0, off_8145074 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r3, [r1,#8]
	ldr r5, off_8145078 // =byte_200FE00 
	add r7, r0, #0
	cmp r2, r3
	bcs loc_8145056
	ldrh r0, [r1,#0x14]
	cmp r0, r6
	beq loc_8145056
	add r4, r1, #0
	add r1, r3, #0
loc_8145042:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r1
	bcs loc_8145056
	lsl r0, r2, #5
	add r0, r4, r0
	ldrh r0, [r0,#0x14]
	cmp r0, r6
	bne loc_8145042
loc_8145056:
	ldr r0, [r7]
	ldrb r0, [r0,#8]
	cmp r0, #0
	beq loc_8145062
	cmp r2, r0
	bne loc_814507C
loc_8145062:
	mov r0, #3
	strh r0, [r5,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #3
	b loc_81450A8
	.balign 4, 0x00
off_8145074: .word dword_2010CC0
off_8145078: .word byte_200FE00
loc_814507C:
	ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	beq loc_8145086
	cmp r0, #9
	bne loc_814508E
loc_8145086:
	mov r0, #0xc
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0xd
	b loc_8145094
loc_814508E:
	mov r0, #0xb
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0xc
loc_8145094:
	strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strh r6, [r5,#0x1e] // (word_200FE1E - 0x200fe00)
	mov r0, r8
	strh r0, [r5,#0x1a] // (word_200FE1A - 0x200fe00)
	ldrb r0, [r5,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #0
	beq loc_81450A6
	mov r0, #7
	strb r0, [r5,#0x7] // (byte_200FE07 - 0x200fe00)
loc_81450A6:
	mov r0, #0
loc_81450A8:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8144FD0

.func
.thumb_func
sub_81450B4:
	push {r4-r7,lr}
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r6, off_8145118 // =byte_200FE00 
	add r3, r6, #0
	add r3, #0x30 
	ldrb r2, [r3]
	add r0, r1, #0
	and r0, r2
	cmp r0, #0
	beq loc_8145110
	add r0, r2, #0
	bic r0, r1
	strb r0, [r3]
	mov r4, #0
	ldr r7, off_814511C // =dword_2010CC0 
	mov r5, #1
	add r3, #4
	mov r2, #0
loc_81450DA:
	add r0, r1, #0
	asr r0, r4
	and r0, r5
	cmp r0, #0
	beq loc_81450EA
	lsl r0, r4, #1
	add r0, r0, r3
	strh r2, [r0]
loc_81450EA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_81450DA
	ldr r0, [r7]
	ldrb r4, [r0,#3]
	and r4, r1
	cmp r4, #0
	beq loc_8145104
	add r0, r4, #0
	bl sub_81461D8
loc_8145104:
	ldr r0, off_8145118 // =byte_200FE00 
	strh r4, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x33 
	add r1, r4, #0
	bl sub_81461B0
loc_8145110:
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8145118: .word byte_200FE00
off_814511C: .word dword_2010CC0
.endfunc // sub_81450B4

.func
.thumb_func
sub_8145120:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	mov r2, #0
	ldr r1, off_814513C // =byte_200FE00 
	strb r2, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
	add r5, r1, #0
	cmp r0, #0
	beq loc_8145140
	bl sub_8144EA4
	mov r0, #0x17
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	b loc_814520A
	.balign 4, 0x00
off_814513C: .word byte_200FE00
loc_8145140:
	ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	// switch 14 cases 
	sub r0, #5
	cmp r0, #0xd
	bhi def_8145150
	lsl r0, r0, #2
	ldr r1, off_8145154 // =jpt_8145150 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.balign 4, 0x00
off_8145154: .word jpt_8145150
// jump table for switch statement
jpt_8145150:  .word loc_8145190
	.word loc_814519C
	.word loc_814519C
	.word loc_81451FC
	.word loc_81451A6
	.word loc_81451B0
	.word loc_81451B0
	.word loc_81451BA
	.word loc_81451C4
	.word loc_81451C4
	.word loc_81451FC
	.word loc_81451CA
	.word loc_81451F0
	.word loc_81451F0
loc_8145190:
	mov r1, #0
	mov r0, #8
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r1, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	mov r2, #0x13
	b loc_81451FC
loc_814519C:
	mov r0, #7
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #8
	strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	b loc_81451FC
loc_81451A6:
	mov r0, #0
	strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r2, #0x21 
	b loc_81451FC
loc_81451B0:
	mov r1, #0
	mov r0, #0xb
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r1, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	b loc_81451FC
loc_81451BA:
	mov r0, #0
	strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r2, #0x23 
	b loc_81451FC
loc_81451C4:
	mov r0, #0xe
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	b loc_81451FC
loc_81451CA:
	ldrb r0, [r5,#0x11] // (byte_200FE11 - 0x200fe00)
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r0, [r5,#0x12] // (byte_200FE12 - 0x200fe00)
	strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	ldr r4, off_81451EC // =dword_2010CC0 
	ldr r0, [r4]
	ldrb r0, [r0,#3]
	bl sub_81461D8
	ldr r0, [r4]
	ldrb r0, [r0,#3]
	strh r0, [r5,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x33 
	mov r1, #1
	bl sub_81461B0
	b loc_814520A
off_81451EC: .word dword_2010CC0
loc_81451F0:
	mov r0, #0x12
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	b loc_81451FC
def_8145150:
	strb r2, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r2, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r2, #0x43 
loc_81451FC:
	ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	bne loc_814520A
	add r0, r2, #0
	mov r1, #0
	bl sub_81461B0
loc_814520A:
	pop {r4,r5}
	pop {r0}
	bx r0
.endfunc // sub_8145120

.func
.thumb_func
sub_8145210:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	mov r8, r1
	mov r5, sp
	add r5, #1
	mov r4, sp
	add r4, #2
	mov r1, sp
	add r2, r5, #0
	add r3, r4, #0
	bl sub_814A060
	mov r0, sp
	ldrb r0, [r0]
	add r7, r4, #0
	cmp r0, #0
	beq loc_81452E2
	ldr r1, off_81452AC // =byte_200FE00 
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	ldrb r0, [r5]
	strh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
	ldrb r0, [r1,#0x9] // (byte_200FE09 - 0x200fe00)
	add r6, r1, #0
	cmp r0, #0
	beq loc_81452CA
	mov r0, #1
	strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
	ldrb r0, [r6,#0x6] // (byte_200FE06 - 0x200fe00)
	cmp r0, #0
	bne loc_8145266
	ldrb r0, [r5]
	cmp r0, #0
	bne loc_8145266
	mov r0, #4
	strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
loc_8145266:
	ldrb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
	cmp r0, #1
	bne loc_81452B0
	mov r2, #0
	mov r4, sp
	mov r5, #1
	mov r12, r6
	mov r3, r12
	add r3, #0x30 
	mov r6, #0x34 
	add r6, r12
	mov r9, r6
loc_814527E:
	ldrb r0, [r4]
	asr r0, r2
	and r0, r5
	cmp r0, #0
	beq loc_814529C
	add r0, r5, #0
	lsl r0, r2
	ldrb r1, [r3]
	orr r0, r1
	strb r0, [r3]
	lsl r0, r2, #1
	add r0, r9
	mov r6, r12
	ldrh r1, [r6,#0x32] // (word_200FE32 - 0x200fe00)
	strh r1, [r0]
loc_814529C:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_814527E
	mov r0, #0x31 
	b loc_81452C2
	.balign 4, 0x00
off_81452AC: .word byte_200FE00
loc_81452B0:
	mov r0, #0
	strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
	mov r0, sp
	ldrb r0, [r0]
	bl sub_81461D8
	mov r0, #1
	mov r8, r0
	mov r0, #0x33 
loc_81452C2:
	mov r1, #1
	bl sub_81461B0
	b loc_81452DE
loc_81452CA:
	mov r0, sp
	ldrb r0, [r0]
	bl sub_81461D8
	mov r1, #1
	mov r8, r1
	mov r0, #0x30 
	mov r1, #2
	bl sub_81461B0
loc_81452DE:
	bl sub_81464B4
loc_81452E2:
	ldr r0, off_81453CC // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_81453BC
	ldrb r0, [r7]
	cmp r0, #0
	beq loc_8145340
	mov r2, #0
	ldr r6, off_81453D0 // =byte_200FE00 
	mov r3, #1
	add r4, r6, #0
	add r4, #0x34 
	add r6, #0x30 
	add r5, r7, #0
loc_8145300:
	ldrb r0, [r6]
	asr r0, r2
	and r0, r3
	cmp r0, #0
	beq loc_814531C
	ldrb r0, [r5]
	asr r0, r2
	and r0, r3
	cmp r0, #0
	beq loc_814531C
	lsl r0, r2, #1
	add r0, r0, r4
	mov r1, #0
	strh r1, [r0]
loc_814531C:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_8145300
	ldr r3, off_81453D0 // =byte_200FE00 
	add r2, r3, #0
	add r2, #0x30 
	ldrb r1, [r7]
	ldrb r0, [r2]
	bic r0, r1
	strb r0, [r2]
	ldrb r0, [r7]
	strh r0, [r3,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x32 
	mov r1, #1
	bl sub_81461B0
loc_8145340:
	ldr r0, off_81453D0 // =byte_200FE00 
	add r3, r0, #0
	add r3, #0x30 
	ldrb r1, [r3]
	add r6, r0, #0
	cmp r1, #0
	beq loc_81453B8
	mov r4, #0
	mov r2, #0
	mov r5, #1
loc_8145354:
	ldrb r0, [r3]
	asr r0, r2
	and r0, r5
	cmp r0, #0
	beq loc_8145386
	lsl r1, r2, #1
	add r0, r6, #0
	add r0, #0x34 
	add r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq loc_8145386
	sub r0, #1
	strh r0, [r1]
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_8145386
	add r0, r5, #0
	lsl r0, r2
	ldrb r1, [r3]
	bic r1, r0
	strb r1, [r3]
	orr r4, r0
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
loc_8145386:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_8145354
	cmp r4, #0
	beq loc_81453AA
	add r0, r4, #0
	bl sub_81461D8
	mov r6, #1
	mov r8, r6
	ldr r0, off_81453D0 // =byte_200FE00 
	strh r4, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x33 
	mov r1, #1
	bl sub_81461B0
loc_81453AA:
	ldr r0, off_81453D0 // =byte_200FE00 
	add r1, r0, #0
	add r1, #0x30 
	ldrb r1, [r1]
	add r6, r0, #0
	cmp r1, #0
	bne loc_81453BC
loc_81453B8:
	mov r0, #0
	strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
loc_81453BC:
	mov r0, r8
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
off_81453CC: .word dword_2010CC0
off_81453D0: .word byte_200FE00
.endfunc // sub_8145210

.func
.thumb_func
sub_81453D4:
	push {lr}
	bl sub_8149F80
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_81453EC
	mov r0, #0xf1
	mov r1, #0
	bl sub_81461B0
	bl sub_81464B4
loc_81453EC:
	pop {r0}
	bx r0
.endfunc // sub_81453D4

.func
.thumb_func
sub_81453F0:
	push {r4,lr}
	add r3, r0, #0
	ldr r1, off_8145408 // =byte_200FE00 
	ldr r2, [r1,#0x40] // (dword_200FE40 - 0x200fe00)
	cmp r2, #0
	bne loc_814540C
	ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	beq loc_814540C
	strb r2, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	b loc_81455DA
	.balign 4, 0x00
off_8145408: .word byte_200FE00
loc_814540C:
	ldr r0, off_8145440 // =byte_200FE00 
	ldrb r0, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #0
	beq loc_814541A
	add r0, r3, #0
	bl sub_81455E8
loc_814541A:
	ldr r4, off_8145440 // =byte_200FE00 
	ldrb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	bne loc_8145424
	b loc_81455A4
loc_8145424:
	bl sub_8149568
	mov r0, #1
	strb r0, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	ldrb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	// switch 23 cases 
	sub r0, #1
	cmp r0, #0x16
	bls loc_8145436
	b def_814543E
loc_8145436:
	lsl r0, r0, #2
	ldr r1, off_8145444 // =jpt_814543E 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
off_8145440: .word byte_200FE00
off_8145444: .word jpt_814543E
// jump table for switch statement
jpt_814543E:  .word loc_81454C8
	.word loc_8145500
	.word loc_8145506
	.word loc_814551C
	.word loc_8145534
	.word loc_814553A
	.word loc_8145540
	.word def_814543E
	.word loc_8145546
	.word loc_814554C
	.word loc_8145552
	.word loc_8145558
	.word loc_8145568
	.word loc_814556E
	.word def_814543E
	.word loc_8145574
	.word loc_8145584
	.word loc_814558A
	.word loc_8145590
	.word def_814543E
	.word loc_8145596
	.word def_814543E
	.word loc_81454A4
loc_81454A4:
	bl sub_8144D64
	ldr r1, dword_81454C0 // =0x8001 
	mov r2, #0xff
	cmp r0, r1
	bne loc_81454B2
	mov r2, #0x44 
loc_81454B2:
	ldr r1, off_81454C4 // =byte_200FE00 
	mov r0, #0
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	add r0, r2, #0
	b loc_81454F2
	.byte 0, 0
dword_81454C0: .word 0x8001
off_81454C4: .word byte_200FE00
loc_81454C8:
	bl sub_8144D64
	ldr r1, dword_81454E0 // =0x8001 
	cmp r0, r1
	bne loc_81454E8
	ldr r0, off_81454E4 // =byte_200FE00 
	ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r1, #3
	strb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	b def_814543E
	.byte 0, 0
dword_81454E0: .word 0x8001
off_81454E4: .word byte_200FE00
loc_81454E8:
	ldr r1, off_81454FC // =byte_200FE00 
	mov r0, #0
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0xff
loc_81454F2:
	mov r1, #0
	bl sub_81461B0
	b def_814543E
	.balign 4, 0x00
off_81454FC: .word byte_200FE00
loc_8145500:
	bl sub_8149754
	b def_814543E
loc_8145506:
	ldr r0, off_8145518 // =byte_200FE00 
	ldr r2, [r0,#0x3c] // (dword_200FE3C - 0x200fe00)
	ldrh r0, [r2,#2]
	ldrb r1, [r2]
	ldrb r2, [r2,#1]
	bl sub_814978C
	b def_814543E
	.balign 4, 0x00
off_8145518: .word byte_200FE00
loc_814551C:
	ldr r0, off_8145530 // =byte_200FE00 
	ldr r3, [r0,#0x3c] // (dword_200FE3C - 0x200fe00)
	ldrb r0, [r3,#4]
	ldrh r1, [r3,#6]
	ldr r2, [r3,#8]
	ldr r3, [r3,#0xc]
	bl sub_81497F4
	b def_814543E
	.byte 0, 0
off_8145530: .word byte_200FE00
loc_8145534:
	bl sub_814991C
	b def_814543E
loc_814553A:
	bl sub_81499F8
	b def_814543E
loc_8145540:
	bl sub_8149A0C
	b def_814543E
loc_8145546:
	bl sub_8149BE4
	b def_814543E
loc_814554C:
	bl sub_8149C1C
	b def_814543E
loc_8145552:
	bl sub_8149C54
	b def_814543E
loc_8145558:
	ldr r0, off_8145564 // =byte_200FE00 
	ldrh r0, [r0,#0x1e] // (word_200FE1E - 0x200fe00)
	bl sub_8149D78
	b def_814543E
	.balign 4, 0x00
off_8145564: .word byte_200FE00
loc_8145568:
	bl sub_8149DE0
	b def_814543E
loc_814556E:
	bl sub_8149F48
	b def_814543E
loc_8145574:
	ldr r0, off_8145580 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#3]
	bl sub_814A63C
	b def_814543E
off_8145580: .word dword_2010CC0
loc_8145584:
	bl sub_814A698
	b def_814543E
loc_814558A:
	bl sub_814A780
	b def_814543E
loc_8145590:
	bl sub_814A7C4
	b def_814543E
loc_8145596:
	bl sub_8149644
def_814543E:
	bl sub_8149568
	ldr r1, off_81455E0 // =byte_200FE00 
	mov r0, #0
	strb r0, [r1,#0xe] // (byte_200FE0E - 0x200fe00)
loc_81455A4:
	ldr r0, off_81455E0 // =byte_200FE00 
	ldrb r0, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	sub r0, #0x12
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi loc_81455B4
	b loc_814541A
loc_81455B4:
	ldr r0, off_81455E4 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_81455CA
	mov r0, #0
	bl sub_8145210
	lsl r0, r0, #0x18
	cmp r0, #0
	bne loc_81455DA
loc_81455CA:
	bl sub_8145DD8
	bl sub_8145FFC
	bl sub_814610C
	bl sub_81462D8
loc_81455DA:
	pop {r4}
	pop {r0}
	bx r0
off_81455E0: .word byte_200FE00
off_81455E4: .word dword_2010CC0
.endfunc // sub_81453F0

.func
.thumb_func
sub_81455E8:
	push {r4,lr}
	add r3, r0, #0
	ldr r0, off_814560C // =byte_200FE00 
	ldrb r1, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
	add r4, r0, #0
	cmp r1, #5
	bne loc_8145612
	mov r2, #1
	strb r2, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
	strb r1, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrh r0, [r4,#0x1c] // (word_200FE1C - 0x200fe00)
	strh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8145610
	mov r0, #6
	strb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
	b loc_8145612
off_814560C: .word byte_200FE00
loc_8145610:
	strb r2, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
loc_8145612:
	ldrb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #1
	bne loc_814563C
	strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
	mov r0, #5
	strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	add r0, r3, #0
	mov r1, #0x8c
	bl sub_814DB34
	strh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
	mov r1, #0x8c
	sub r1, r1, r0
	strh r1, [r4,#0x1c] // (word_200FE1C - 0x200fe00)
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8145638
	mov r0, #2
	b loc_814563A
loc_8145638:
	mov r0, #3
loc_814563A:
	strb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
loc_814563C:
	ldrb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #3
	bne loc_8145652
	mov r0, #0
	strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
	mov r0, #0x28 
	strh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
	mov r0, #4
	strb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r0, #9
	strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145652:
	pop {r4}
	pop {r0}
	bx r0
.endfunc // sub_81455E8

.func
.thumb_func
sub_8145658:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r8, r0
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	ldr r0, off_8145690 // =byte_200FE00 
	ldrb r1, [r0,#0xe] // (byte_200FE0E - 0x200fe00)
	add r7, r0, #0
	cmp r1, #0
	bne loc_8145676
	b loc_8145B3C
loc_8145676:
	mov r0, #0
	strb r0, [r7,#0xe] // (byte_200FE0E - 0x200fe00)
	mov r0, r8
	// switch 46 cases 
	sub r0, #0x10
	cmp r0, #0x2d 
	bls loc_8145684
	b def_814568C
loc_8145684:
	lsl r0, r0, #2
	ldr r1, off_8145694 // =jpt_814568C 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.byte 0, 0
off_8145690: .word byte_200FE00
off_8145694: .word jpt_814568C
// jump table for switch statement
jpt_814568C:  .word loc_8145750
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word loc_814577C
	.word loc_8145768
	.word def_814568C
	.word loc_8145790
	.word loc_81457A0
	.word loc_81457C4
	.word loc_81457E4
	.word loc_8145804
	.word loc_8145874
	.word loc_81458A6
	.word loc_81458BC
	.word loc_8145904
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word loc_8145A7C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word loc_8145974
	.word loc_81459C0
	.word loc_8145A08
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word def_814568C
	.word loc_8145B1C
loc_8145750:
	cmp r6, #0
	beq loc_8145756
	b def_814568C
loc_8145756:
	ldr r0, off_8145764 // =byte_200FE00 
	ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r1, #4
	strb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	b def_814568C
	.balign 4, 0x00
off_8145764: .word byte_200FE00
loc_8145768:
	cmp r6, #0
	beq loc_814576E
	b def_814568C
loc_814576E:
	ldr r0, off_8145778 // =byte_200FE00 
	ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	b def_814568C
off_8145778: .word byte_200FE00
loc_814577C:
	cmp r6, #0
	beq loc_8145782
	b def_814568C
loc_8145782:
	ldr r0, off_814578C // =byte_200FE00 
	strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r6, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0
	b loc_8145A9A
off_814578C: .word byte_200FE00
loc_8145790:
	cmp r6, #0
	beq loc_8145796
	b def_814568C
loc_8145796:
	ldr r1, off_814579C // =byte_200FE00 
	mov r0, #6
	b loc_81458B0
off_814579C: .word byte_200FE00
loc_81457A0:
	ldr r1, off_81457C0 // =byte_200FE00 
	ldrh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
	cmp r0, #0
	bne loc_81457AA
	b def_814568C
loc_81457AA:
	sub r0, #1
	strh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_81457B6
	b def_814568C
loc_81457B6:
	mov r0, #7
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #8
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	b def_814568C
off_81457C0: .word byte_200FE00
loc_81457C4:
	cmp r6, #0
	beq loc_81457CA
	b def_814568C
loc_81457CA:
	ldr r0, off_81457E0 // =byte_200FE00 
	ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	ldrb r0, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #0
	beq loc_81457DA
	b def_814568C
loc_81457DA:
	mov r0, #0x13
	b loc_8145A9A
	.byte 0, 0
off_81457E0: .word byte_200FE00
loc_81457E4:
	cmp r6, #0
	beq loc_81457EA
	b def_814568C
loc_81457EA:
	ldrb r0, [r7,#0xb] // (byte_200FE0B - 0x200fe00)
	cmp r0, #1
	bne loc_81457FA
	ldrh r0, [r7,#0x1a] // (word_200FE1A - 0x200fe00)
	cmp r0, #1
	bls loc_81457FA
	sub r0, #1
	strh r0, [r7,#0x1a] // (word_200FE1A - 0x200fe00)
loc_81457FA:
	ldr r1, off_8145800 // =byte_200FE00 
	mov r0, #0xa
	b loc_81458B0
off_8145800: .word byte_200FE00
loc_8145804:
	cmp r6, #0
	bne loc_814584A
	bl sub_8146138
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, sp
	strb r0, [r1]
	ldr r4, off_814586C // =byte_200FE00 
	strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
	cmp r0, #0
	beq loc_8145824
	mov r0, #0x20 
	mov r1, #1
	bl sub_81461B0
loc_8145824:
	ldrb r0, [r4,#0xb] // (byte_200FE0B - 0x200fe00)
	cmp r0, #0
	beq loc_814584A
	ldrh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
	cmp r0, #1
	beq loc_814584A
	ldr r0, off_8145870 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#8]
	cmp r0, #4
	bne loc_814584A
	bl sub_8149C54
	bl sub_8149568
	mov r0, #9
	strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #1
	strb r0, [r4,#0xb] // (byte_200FE0B - 0x200fe00)
loc_814584A:
	ldr r1, off_814586C // =byte_200FE00 
	ldrh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
	cmp r0, #0
	bne loc_8145854
	b def_814568C
loc_8145854:
	sub r0, #1
	strh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8145860
	b def_814568C
loc_8145860:
	mov r0, #0xb
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	b def_814568C
	.balign 4, 0x00
off_814586C: .word byte_200FE00
off_8145870: .word dword_2010CC0
loc_8145874:
	cmp r6, #0
	beq loc_814587A
	b def_814568C
loc_814587A:
	ldr r2, off_8145894 // =byte_200FE00 
	ldrb r0, [r2,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r1, [r2,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r1, #0
	bne loc_8145898
	lsl r0, r0, #0x18
	cmp r0, #0
	beq loc_814588E
	b def_814568C
loc_814588E:
	mov r0, #0x21 
	b loc_8145A9A
	.balign 4, 0x00
off_8145894: .word byte_200FE00
loc_8145898:
	cmp r1, #7
	bne loc_814589E
	b def_814568C
loc_814589E:
	mov r0, #5
	strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r0, [r2,#0x7] // (byte_200FE07 - 0x200fe00)
	b def_814568C
loc_81458A6:
	cmp r6, #0
	beq loc_81458AC
	b def_814568C
loc_81458AC:
	ldr r1, off_81458B8 // =byte_200FE00 
	mov r0, #0xd
loc_81458B0:
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	b def_814568C
	.balign 4, 0x00
off_81458B8: .word byte_200FE00
loc_81458BC:
	cmp r6, #0
	bne loc_81458E0
	ldr r4, off_81458FC // =byte_200FE10 
	mov r0, sp
	add r1, r4, #0
	bl sub_8149F14
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_81458E0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_81458E0
	add r1, r4, #0
	sub r1, #0x10
	mov r0, #0xe
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_81458E0:
	ldr r1, off_8145900 // =byte_200FE00 
	ldrh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
	cmp r0, #0
	bne loc_81458EA
	b def_814568C
loc_81458EA:
	sub r0, #1
	strh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_81458F6
	b def_814568C
loc_81458F6:
	mov r0, #0xe
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	b def_814568C
off_81458FC: .word byte_200FE10
off_8145900: .word byte_200FE00
loc_8145904:
	cmp r6, #0
	beq loc_814590A
	b def_814568C
loc_814590A:
	ldr r4, off_814593C // =byte_200FE10 
	mov r0, sp
	add r1, r4, #0
	bl sub_8149F14
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_814591C
	b def_814568C
loc_814591C:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_8145940
	add r1, r4, #0
	sub r1, #0x10
	mov r0, #0x13
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0xf
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	mov r0, #0x22 
	strh r0, [r1,#0x1e] // (word_200FE1E - 0x200fe00)
	ldrb r0, [r1,#0x10] // (byte_200FE10 - 0x200fe00)
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	b loc_8145960
	.balign 4, 0x00
off_814593C: .word byte_200FE10
loc_8145940:
	add r1, r4, #0
	sub r1, #0x10
	strb r6, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r6, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0x23 
	strh r0, [r1,#0x1e] // (word_200FE1E - 0x200fe00)
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	ldrb r0, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #0
	beq loc_8145960
	mov r0, #3
	strb r0, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r0, #9
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145960:
	ldr r4, off_8145970 // =byte_200FE00 
	ldrb r0, [r4,#0x1e] // (word_200FE1E - 0x200fe00)
	mov r1, #1
	bl sub_81461B0
	mov r0, #0
	strh r0, [r4,#0x1e] // (word_200FE1E - 0x200fe00)
	b def_814568C
off_8145970: .word byte_200FE00
loc_8145974:
	cmp r6, #0
	beq loc_814597A
	b def_814568C
loc_814597A:
	ldr r2, off_81459BC // =dword_2010CC0 
	ldr r3, [r2]
	ldrb r0, [r3,#3]
	mov r1, #0
	strh r0, [r7,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x11
	strb r0, [r7,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r1, [r7,#0x10] // (byte_200FE10 - 0x200fe00)
	ldrb r0, [r3,#3]
	mov r1, #1
	and r0, r1
	cmp r0, #0
	beq loc_8145998
	b def_814568C
loc_8145998:
	add r1, r7, #0
	mov r3, #1
loc_814599C:
	ldrb r0, [r1,#0x10] // (byte_200FE10 - 0x200fe00)
	add r0, #1
	strb r0, [r1,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bls loc_81459AC
	b def_814568C
loc_81459AC:
	ldr r0, [r2]
	ldrb r0, [r0,#3]
	ldrb r4, [r7,#0x10] // (byte_200FE10 - 0x200fe00)
	asr r0, r4
	and r0, r3
	cmp r0, #0
	beq loc_814599C
	b def_814568C
off_81459BC: .word dword_2010CC0
loc_81459C0:
	cmp r6, #0
	bne loc_81459DE
	mov r0, sp
	bl sub_814A750
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_81459DE
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #1
	bhi loc_81459DE
	ldr r1, off_8145A04 // =byte_200FE00 
	mov r0, #0x12
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_81459DE:
	ldr r2, off_8145A04 // =byte_200FE00 
	ldrb r0, [r2,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #1
	add r1, r2, #0
	add r1, #0x34 
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne loc_81459F2
	b def_814568C
loc_81459F2:
	sub r0, #1
	strh r0, [r1]
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_81459FE
	b def_814568C
loc_81459FE:
	mov r0, #0x12
	strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
	b def_814568C
off_8145A04: .word byte_200FE00
loc_8145A08:
	cmp r6, #0
	beq loc_8145A0E
	b def_814568C
loc_8145A0E:
	mov r0, sp
	bl sub_814A750
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8145A1C
	b def_814568C
loc_8145A1C:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_8145A38
	ldr r1, off_8145A34 // =byte_200FE00 
	mov r0, #0x13
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0x16
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	mov r0, #0x32 
	strh r0, [r1,#0x1e] // (word_200FE1E - 0x200fe00)
	b loc_8145A4C
off_8145A34: .word byte_200FE00
loc_8145A38:
	ldr r4, off_8145A74 // =byte_200FE00 
	strb r6, [r4,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r6, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	ldr r0, off_8145A78 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#3]
	bl sub_81461D8
	mov r0, #0x33 
	strh r0, [r4,#0x1e] // (word_200FE1E - 0x200fe00)
loc_8145A4C:
	ldr r5, off_8145A74 // =byte_200FE00 
	ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #1
	add r1, r5, #0
	add r1, #0x34 
	add r0, r0, r1
	mov r1, #0
	mov r4, #0
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x30 
	strb r1, [r0]
	strb r1, [r5,#0xa] // (byte_200FE0A - 0x200fe00)
	ldrb r0, [r5,#0x1e] // (word_200FE1E - 0x200fe00)
	mov r1, #1
	bl sub_81461B0
	strh r4, [r5,#0x1e] // (word_200FE1E - 0x200fe00)
	b def_814568C
	.balign 4, 0x00
off_8145A74: .word byte_200FE00
off_8145A78: .word dword_2010CC0
loc_8145A7C:
	cmp r6, #0
	bne def_814568C
	ldr r5, off_8145AA4 // =byte_200FE00 
	ldrb r1, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	add r0, r1, #0
	cmp r0, #0x16
	bne loc_8145AA8
	ldrb r0, [r5,#0x11] // (byte_200FE11 - 0x200fe00)
	strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r0, [r5,#0x12] // (byte_200FE12 - 0x200fe00)
	strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r0, #1
	strb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r0, #0x41 
loc_8145A9A:
	mov r1, #0
	bl sub_81461B0
	b def_814568C
	.balign 4, 0x00
off_8145AA4: .word byte_200FE00
loc_8145AA8:
	cmp r0, #0xf
	bne def_814568C
	strb r1, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r4, #1
	strb r4, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r0, #0x41 
	mov r1, #0
	bl sub_81461B0
	add r1, r5, #0
	add r1, #0x24 
	ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r4, r0
	ldrb r0, [r1]
	orr r4, r0
	strb r4, [r1]
	ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #1
	add r1, #4
	add r0, r0, r1
	ldrh r1, [r5,#0x26] // (word_200FE26 - 0x200fe00)
	mov r7, #0
	strh r1, [r0]
	ldrb r1, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	mov r0, #4
	bl sub_814A934
	mov r4, sp
	ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	mov r1, #0xe
	bl sub_814ABB8
	strb r0, [r4]
	lsl r0, r0, #0x18
	cmp r0, #0
	beq def_814568C
	strb r7, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r7, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	bl sub_81464B4
	ldr r0, off_8145B18 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	orr r0, r1
	bl sub_81461D8
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r5,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x25 
	mov r1, #1
	bl sub_81461B0
	b def_814568C
off_8145B18: .word dword_2010CC0
loc_8145B1C:
	cmp r6, #0
	bne def_814568C
	ldr r0, off_8145B38 // =byte_200FE00 
	strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r6, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0x42 
	mov r1, #0
	bl sub_81461B0
def_814568C:
	ldr r1, off_8145B38 // =byte_200FE00 
	mov r0, #1
	strb r0, [r1,#0xe] // (byte_200FE0E - 0x200fe00)
	b loc_8145B8A
	.balign 4, 0x00
off_8145B38: .word byte_200FE00
loc_8145B3C:
	cmp r6, #3
	bne loc_8145B8A
	ldrb r0, [r7,#0xf] // (byte_200FE0F - 0x200fe00)
	cmp r0, #0
	beq loc_8145B8A
	mov r3, r8
	cmp r3, #0x24 
	beq loc_8145B54
	cmp r3, #0x26 
	beq loc_8145B54
	cmp r3, #0x27 
	bne loc_8145B8A
loc_8145B54:
	bl sub_814957C
	bl sub_8149568
	mov r0, sp
	bl sub_8149590
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_8145B8A
	ldr r4, off_8145BA0 // =dword_2010CC0 
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_8145B8A
	bl sub_8149454
	ldr r1, [r4]
	ldrb r1, [r1,#2]
	strb r1, [r0,#4]
	mov r1, #1
	strb r1, [r0,#5]
	mov r0, #0x29 
	bl sub_8145210
	mov r6, #0
loc_8145B8A:
	mov r4, r8
	cmp r4, #0x26 
	bne loc_8145B92
	b loc_8145CA6
loc_8145B92:
	cmp r4, #0x26 
	bgt loc_8145BA4
	cmp r4, #0x10
	bne loc_8145B9C
	b loc_8145CC4
loc_8145B9C:
	b loc_8145CE2
	.byte 0, 0
off_8145BA0: .word dword_2010CC0
loc_8145BA4:
	mov r0, r8
	cmp r0, #0x30 
	beq loc_8145BB2
	cmp r0, #0x3d 
	bne loc_8145BB0
	b loc_8145CC4
loc_8145BB0:
	b loc_8145CE2
loc_8145BB2:
	cmp r6, #0
	beq loc_8145BB8
	b loc_8145CE6
loc_8145BB8:
	bl sub_8149454
	ldr r4, off_8145C68 // =byte_200FE00 
	ldrb r0, [r0,#8]
	strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
	bl sub_81461FC
	add r2, r4, #0
	add r2, #0x30 
	ldrb r1, [r2]
	cmp r1, #0
	beq loc_8145C0E
	ldrb r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
	add r3, r1, #0
	bic r3, r0
	add r0, r3, #0
	strb r0, [r2]
	mov r3, #0
	add r7, r4, #0
	add r1, r7, #0
	mov r5, #1
	add r4, r1, #0
	add r4, #0x34 
	mov r2, #0
loc_8145BE8:
	ldrh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	asr r0, r3
	and r0, r5
	cmp r0, #0
	beq loc_8145BF8
	lsl r0, r3, #1
	add r0, r0, r4
	strh r2, [r0]
loc_8145BF8:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_8145BE8
	ldr r1, off_8145C68 // =byte_200FE00 
	ldrb r0, [r1,#0x6] // (byte_200FE06 - 0x200fe00)
	cmp r0, #0
	bne loc_8145C0E
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145C0E:
	mov r3, sp
	ldr r1, off_8145C68 // =byte_200FE00 
	ldrb r2, [r1]
	ldrb r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	and r0, r2
	strb r0, [r3]
	mov r3, #0
	add r7, r1, #0
	ldr r2, off_8145C6C // =dword_2010CC0 
	mov r1, sp
	mov r5, #1
	add r4, r7, #0
loc_8145C26:
	ldrb r0, [r1]
	asr r0, r3
	and r0, r5
	cmp r0, #0
	beq loc_8145C3A
	ldrb r0, [r4,#0x1] // (byte_200FE01 - 0x200fe00)
	cmp r0, #0
	beq loc_8145C3A
	sub r0, #1
	strb r0, [r7,#0x1] // (byte_200FE01 - 0x200fe00)
loc_8145C3A:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_8145C26
	ldrb r1, [r7,#0x14] // (word_200FE14 - 0x200fe00)
	ldrb r0, [r7]
	bic r0, r1
	strb r0, [r7]
	ldrb r1, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r1, #0
	beq loc_8145C84
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne loc_8145C96
	cmp r1, #8
	bne loc_8145C70
	ldrh r0, [r7,#0x1c] // (word_200FE1C - 0x200fe00)
	strh r0, [r7,#0x1a] // (word_200FE1A - 0x200fe00)
	mov r0, #6
	strb r0, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
	b loc_8145C82
off_8145C68: .word byte_200FE00
off_8145C6C: .word dword_2010CC0
loc_8145C70:
	ldrb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
	sub r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bls loc_8145C84
	mov r0, #1
	strb r0, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r0, #5
loc_8145C82:
	strb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145C84:
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne loc_8145C96
	ldrb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0
	bne loc_8145C96
	mov r0, #0xff
	strb r0, [r7,#0x6] // (byte_200FE06 - 0x200fe00)
loc_8145C96:
	ldrb r0, [r7,#0xe] // (byte_200FE0E - 0x200fe00)
	cmp r0, #0
	bne loc_8145CE2
	mov r0, #0x40 
	mov r1, #1
	bl sub_81461B0
	b loc_8145CE2
loc_8145CA6:
	bl sub_81460B0
	ldr r0, off_8145CC0 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq loc_8145CE2
	mov r0, #0x50 
	mov r1, #0
	bl sub_81461B0
	b loc_8145CE2
	.byte 0, 0
off_8145CC0: .word dword_2010CC0
loc_8145CC4:
	cmp r6, #0
	bne loc_8145CE6
	ldr r0, off_8145D10 // =byte_200FE00 
	strb r6, [r0,#0xd] // (byte_200FE0D - 0x200fe00)
	strb r6, [r0,#0x1] // (byte_200FE01 - 0x200fe00)
	strb r6, [r0]
	mov r1, #0xff
	strb r1, [r0,#0x6] // (byte_200FE06 - 0x200fe00)
	bl sub_81464B4
	mov r4, r8
	cmp r4, #0x3d 
	bne loc_8145CE2
	bl sub_8144E44
loc_8145CE2:
	cmp r6, #0
	beq loc_8145D36
loc_8145CE6:
	ldr r7, off_8145D10 // =byte_200FE00 
	mov r0, r8
	cmp r0, #0x1c
	bne loc_8145D18
	cmp r6, #0
	beq loc_8145D18
	ldrb r0, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #4
	bne loc_8145D18
	ldr r2, off_8145D14 // =dword_2010CC0 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	mov r0, #0xf
	strb r0, [r1,#2]
	bl sub_81461D8
	bl sub_8149568
	b loc_8145D48
off_8145D10: .word byte_200FE00
off_8145D14: .word dword_2010CC0
loc_8145D18:
	mov r1, #0
	mov r3, r8
	strh r3, [r7,#0x14] // (word_200FE14 - 0x200fe00)
	strh r6, [r7,#0x16] // (word_200FE16 - 0x200fe00)
	ldrb r0, [r7,#0xe] // (byte_200FE0E - 0x200fe00)
	cmp r0, #0
	beq loc_8145D2A
	strb r1, [r7,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r1, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145D2A:
	mov r0, #0xf0
	mov r1, #2
	bl sub_81461B0
	bl sub_81464B4
loc_8145D36:
	mov r4, r8
	cmp r4, #0xff
	bne loc_8145D48
	mov r0, #0xf2
	mov r1, #0
	bl sub_81461B0
	bl sub_81464B4
loc_8145D48:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
.endfunc // sub_8145658

.func
.thumb_func
sub_8145D54:
	push {r4-r7,lr}
	sub sp, sp, #4
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r4, off_8145D88 // =byte_200FE00 
	ldrb r7, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	mov r0, #0
	strb r0, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	mov r0, #1
	strb r0, [r4,#0xf] // (byte_200FE0F - 0x200fe00)
	ldr r0, off_8145D8C // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r5, [r0]
	cmp r5, #0
	bne loc_8145D90
	add r0, r6, #0
	bl sub_8145210
	ldrb r0, [r4,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #1
	beq loc_8145DA8
	bl sub_81464B4
	strb r5, [r4,#0xf] // (byte_200FE0F - 0x200fe00)
	strb r7, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	b loc_8145DCC
off_8145D88: .word byte_200FE00
off_8145D8C: .word dword_2010CC0
loc_8145D90:
	mov r0, sp
	bl sub_81493F8
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_8145DA8
	mov r1, sp
	ldrb r0, [r4,#0x3] // (byte_200FE03 - 0x200fe00)
	ldrb r1, [r1]
	orr r0, r1
	ldrb r1, [r4,#0x3] // (byte_200FE03 - 0x200fe00)
	strb r0, [r4,#0x3] // (byte_200FE03 - 0x200fe00)
loc_8145DA8:
	ldr r4, off_8145DD4 // =byte_200FE00 
	ldr r1, [r4,#0x44] // (dword_200FE44 - 0x200fe00)
	cmp r1, #0
	beq loc_8145DC4
	add r0, r6, #0
	bl sub_814DA64
	bl sub_8149568
	ldrb r0, [r4,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #2
	bne loc_8145DC4
	bl sub_81464B4
loc_8145DC4:
	ldr r1, off_8145DD4 // =byte_200FE00 
	mov r0, #0
	strb r0, [r1,#0xf] // (byte_200FE0F - 0x200fe00)
	strb r7, [r1,#0xe] // (byte_200FE0E - 0x200fe00)
loc_8145DCC:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
off_8145DD4: .word byte_200FE00
.endfunc // sub_8145D54

.func
.thumb_func
sub_8145DD8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r1, off_8145E5C // =byte_200FE00 
	ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	sub r0, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r3, r1, #0
	cmp r0, #3
	bls loc_8145DF6
	b loc_8145FEA
loc_8145DF6:
	ldr r0, off_8145E60 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r1, [r2,#2]
	ldrb r0, [r3,#0xc] // (byte_200FE0C - 0x200fe00)
	add r4, r1, #0
	eor r4, r0
	and r4, r1
	ldrb r0, [r2,#7]
	bic r4, r0
	mov r8, r4
	strb r1, [r3,#0xc] // (byte_200FE0C - 0x200fe00)
	cmp r4, #0
	beq loc_8145E1E
	strh r4, [r3,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x10
	mov r1, #1
	str r3, [sp,#4]
	bl sub_81461B0
	ldr r3, [sp,#4]
loc_8145E1E:
	mov r0, #0
	str r0, [sp]
	mov r6, #0
	add r7, r3, #0
	mov r1, #0x24 
	add r1, r1, r3
	mov r9, r1
loc_8145E2C:
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r6
	lsr r4, r0, #0x18
	mov r5, #0
	mov r0, r8
	and r0, r4
	cmp r0, #0
	beq loc_8145E7E
	lsl r1, r6, #1
	add r0, r7, #0
	add r0, #0x28 
	add r1, r1, r0
	ldrh r0, [r7,#0x26]
	strh r0, [r1]
	mov r2, r9
	ldrb r1, [r2]
	add r0, r4, #0
	orr r0, r1
	strb r0, [r2]
	add r6, #1
	mov r10, r6
	b loc_8145F34
	.balign 4, 0x00
off_8145E5C: .word byte_200FE00
off_8145E60: .word dword_2010CC0
loc_8145E64:
	ldrb r1, [r7]
	add r0, r4, #0
	orr r0, r1
	strb r0, [r7]
	ldrb r0, [r7,#1]
	add r0, #1
	strb r0, [r7,#1]
	ldr r0, [sp]
	orr r0, r4
	str r0, [sp]
	mov r0, #1
	orr r5, r0
	b loc_8145EC8
loc_8145E7E:
	mov r1, r9
	ldrb r0, [r1]
	and r0, r4
	add r2, r6, #1
	mov r10, r2
	cmp r0, #0
	beq loc_8145F34
	ldr r0, off_8145ED8 // =dword_2010CB0 
	lsl r1, r6, #2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1,#0x34]
	cmp r0, #0x46 
	bne loc_8145EE4
	add r0, r1, #0
	add r0, #0x61 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_8145EFC
	mov r5, #2
	ldr r3, [r3,#0x20]
	ldrh r2, [r3]
	ldr r0, dword_8145EDC // =0xFFFF 
	cmp r2, r0
	beq loc_8145EC8
	ldr r0, off_8145EE0 // =dword_2010CC0 
	ldr r0, [r0]
	lsl r1, r6, #5
	add r0, r0, r1
	ldrh r0, [r0,#0x18]
	ldr r1, dword_8145EDC // =0xFFFF 
loc_8145EBC:
	cmp r0, r2
	beq loc_8145E64
	add r3, #2
	ldrh r2, [r3]
	cmp r2, r1
	bne loc_8145EBC
loc_8145EC8:
	mov r0, #1
	and r0, r5
	cmp r0, #0
	bne loc_8145EFC
	mov r0, #4
	orr r5, r0
	b loc_8145EFC
	.balign 4, 0x00
off_8145ED8: .word dword_2010CB0
dword_8145EDC: .word 0xFFFF
off_8145EE0: .word dword_2010CC0
loc_8145EE4:
	lsl r1, r6, #1
	add r0, r3, #0
	add r0, #0x28 
	add r1, r1, r0
	ldrh r0, [r1]
	sub r0, #1
	strh r0, [r1]
	ldr r1, dword_8145FB8 // =0xFFFF 
	and r0, r1
	cmp r0, #0
	bne loc_8145EFC
	mov r5, #6
loc_8145EFC:
	mov r0, #2
	and r0, r5
	cmp r0, #0
	beq loc_8145F22
	mov r2, r9
	ldrb r0, [r2]
	bic r0, r4
	mov r2, #0
	mov r1, r9
	strb r0, [r1]
	lsl r0, r6, #1
	add r1, r7, #0
	add r1, #0x28 
	add r0, r0, r1
	strh r2, [r0]
	mov r0, #8
	add r1, r6, #0
	bl sub_814A934
loc_8145F22:
	mov r0, #4
	and r5, r0
	ldr r3, off_8145FBC // =byte_200FE00 
	cmp r5, #0
	beq loc_8145F34
	ldrb r1, [r7,#0xd]
	add r0, r4, #0
	orr r0, r1
	strb r0, [r7,#0xd]
loc_8145F34:
	mov r2, r10
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bhi loc_8145F40
	b loc_8145E2C
loc_8145F40:
	ldr r4, [sp]
	cmp r4, #0
	beq loc_8145F52
	ldr r0, off_8145FBC // =byte_200FE00 
	strh r4, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x11
	mov r1, #1
	bl sub_81461B0
loc_8145F52:
	ldr r1, off_8145FBC // =byte_200FE00 
	ldrb r0, [r1,#0xd] // (byte_200FE0D - 0x200fe00)
	cmp r0, #0
	beq loc_8145F8E
	mov r5, #1
	ldr r0, off_8145FC0 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#6]
	cmp r0, #0
	beq loc_8145F72
	ldrb r0, [r1,#0x3] // (byte_200FE03 - 0x200fe00)
	ldrb r1, [r1]
	and r0, r1
	cmp r0, r1
	beq loc_8145F72
	mov r5, #0
loc_8145F72:
	cmp r5, #0
	beq loc_8145F8E
	ldr r4, off_8145FBC // =byte_200FE00 
	ldrb r0, [r4,#0xd] // (byte_200FE0D - 0x200fe00)
	bl sub_81461D8
	ldrb r0, [r4,#0xd] // (byte_200FE0D - 0x200fe00)
	mov r1, #0
	strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
	strb r1, [r4,#0xd] // (byte_200FE0D - 0x200fe00)
	mov r0, #0x12
	mov r1, #1
	bl sub_81461B0
loc_8145F8E:
	ldr r0, off_8145FBC // =byte_200FE00 
	add r1, r0, #0
	add r1, #0x24 
	ldrb r1, [r1]
	add r3, r0, #0
	cmp r1, #0
	bne loc_8145FEA
	ldrb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #8
	bne loc_8145FEA
	ldrb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
	cmp r0, #0
	bne loc_8145FC4
	strb r0, [r3,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0x14
	mov r1, #0
	bl sub_81461B0
	b loc_8145FEA
	.balign 4, 0x00
dword_8145FB8: .word 0xFFFF
off_8145FBC: .word byte_200FE00
off_8145FC0: .word dword_2010CC0
loc_8145FC4:
	cmp r0, #2
	bne loc_8145FD0
	mov r0, #3
	strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r0, #9
	b loc_8145FD6
loc_8145FD0:
	mov r0, #1
	strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r0, #5
loc_8145FD6:
	strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r0, [r3]
	cmp r0, #0
	beq loc_8145FEA
	mov r0, #0
	strh r0, [r3,#0x1a] // (word_200FE1A - 0x200fe00)
	mov r0, #8
	strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
	mov r0, #5
	strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145FEA:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8145DD8

.func
.thumb_func
sub_8145FFC:
	push {r4-r6,lr}
	ldr r1, off_81460A0 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	add r6, r0, #0
	mov r0, #0
	strh r0, [r1]
	ldr r4, off_81460A4 // =byte_200FE00 
	ldrb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0xf
	bne loc_8146060
	ldrb r1, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r1, r1, #1
	add r5, r4, #0
	add r5, #0x28 
	add r1, r1, r5
	ldrh r0, [r1]
	sub r0, #1
	strh r0, [r1]
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8146036
	ldr r1, off_81460A8 // =dword_2010CB0 
	ldrb r0, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x27 
	bne loc_8146060
loc_8146036:
	bl sub_81464D4
	mov r0, #0x18
	strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
	ldrb r1, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
	mov r0, #4
	bl sub_814A934
	add r2, r4, #0
	add r2, #0x24 
	mov r1, #1
	ldrb r0, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r1, r0
	ldrb r0, [r2]
	bic r0, r1
	strb r0, [r2]
	ldrb r0, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #1
	add r0, r0, r5
	mov r1, #0
	strh r1, [r0]
loc_8146060:
	ldr r0, off_81460A0 // =InterruptMasterEnableRegister 
	strh r6, [r0]
	ldr r5, off_81460A4 // =byte_200FE00 
	ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0x18
	bne loc_814609A
	ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #1
	bne loc_8146076
	bl sub_81464D4
loc_8146076:
	ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
	add r4, r0, #0
	cmp r4, #0
	bne loc_814609A
	strb r4, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r4, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	ldr r0, off_81460AC // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	orr r0, r1
	bl sub_81461D8
	strh r4, [r5,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0x25 
	mov r1, #1
	bl sub_81461B0
loc_814609A:
	pop {r4-r6}
	pop {r0}
	bx r0
off_81460A0: .word InterruptMasterEnableRegister
off_81460A4: .word byte_200FE00
off_81460A8: .word dword_2010CB0
off_81460AC: .word dword_2010CC0
.endfunc // sub_8145FFC

.func
.thumb_func
sub_81460B0:
	push {r4,r5,lr}
	ldr r5, off_8146104 // =byte_200FE00 
	ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #0xf
	bne loc_81460FC
	ldr r1, off_8146108 // =dword_2010CB0 
	ldrb r2, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x26 
	bne loc_81460FC
	mov r4, #0
	strb r4, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r4, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
	add r2, r5, #0
	add r2, #0x24 
	mov r1, #1
	ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r1, r0
	ldrb r0, [r2]
	bic r0, r1
	strb r0, [r2]
	ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
	lsl r0, r0, #1
	add r1, r5, #0
	add r1, #0x28 
	add r0, r0, r1
	strh r4, [r0]
	mov r0, #0x24 
	mov r1, #0
	bl sub_81461B0
loc_81460FC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8146104: .word byte_200FE00
off_8146108: .word dword_2010CB0
.endfunc // sub_81460B0

.func
.thumb_func
sub_814610C:
	push {lr}
	ldr r1, off_8146134 // =byte_200FE00 
	ldrb r0, [r1,#0x6] // (byte_200FE06 - 0x200fe00)
	cmp r0, #0
	bne loc_8146130
	ldrb r0, [r1,#0xa] // (byte_200FE0A - 0x200fe00)
	cmp r0, #1
	bne loc_8146130
	ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	strb r0, [r1,#0x11] // (byte_200FE11 - 0x200fe00)
	ldrb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	strb r0, [r1,#0x12] // (byte_200FE12 - 0x200fe00)
	mov r0, #0x10
	strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	mov r0, #0x11
	strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
	mov r0, #2
	strb r0, [r1,#0xa] // (byte_200FE0A - 0x200fe00)
loc_8146130:
	pop {r0}
	bx r0
off_8146134: .word byte_200FE00
.endfunc // sub_814610C

.func
.thumb_func
sub_8146138:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r6, #0
	mov r5, #0
	ldr r1, off_81461A4 // =dword_2010CC0 
	ldr r0, [r1]
	ldrb r0, [r0,#8]
	cmp r6, r0
	bcs loc_8146194
	mov r8, r0
	ldr r0, off_81461A8 // =byte_200FE00 
	mov r10, r0
	mov r9, r1
loc_8146158:
	mov r1, r10
	ldr r3, [r1,#0x20] // (dword_200FE20 - 0x200fe00)
	ldrh r2, [r3]
	add r0, r5, #1
	mov r12, r0
	ldr r1, dword_81461AC // =0xFFFF 
	cmp r2, r1
	beq loc_814618A
	mov r1, r9
	ldr r0, [r1]
	lsl r1, r5, #5
	add r0, r0, r1
	ldrh r4, [r0,#0x18]
	ldr r7, dword_81461AC // =0xFFFF 
	mov r1, #1
	lsl r1, r5
loc_8146178:
	cmp r4, r2
	bne loc_8146182
	orr r6, r1
	lsl r0, r6, #0x18
	lsr r6, r0, #0x18
loc_8146182:
	add r3, #2
	ldrh r2, [r3]
	cmp r2, r7
	bne loc_8146178
loc_814618A:
	mov r1, r12
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	cmp r5, r8
	bcc loc_8146158
loc_8146194:
	add r0, r6, #0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
off_81461A4: .word dword_2010CC0
off_81461A8: .word byte_200FE00
dword_81461AC: .word 0xFFFF
.endfunc // sub_8146138

.func
.thumb_func
sub_81461B0:
	push {r4,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r4, off_81461D4 // =byte_200FE00 
	ldr r2, [r4,#0x40] // (dword_200FE40 - 0x200fe00)
	cmp r2, #0
	beq loc_81461C6
	bl sub_814DA68
loc_81461C6:
	mov r0, #0
	strh r0, [r4,#0x16] // (word_200FE16 - 0x200fe00)
	strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81461D4: .word byte_200FE00
.endfunc // sub_81461B0

.func
.thumb_func
sub_81461D8:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldr r4, off_81461F8 // =byte_200FE00 
	ldrb r5, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	mov r1, #1
	strb r1, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	bl sub_814A4CC
	bl sub_8149568
	strb r5, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81461F8: .word byte_200FE00
.endfunc // sub_81461D8

.func
.thumb_func
sub_81461FC:
	push {r4-r7,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, off_81462C8 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#4]
	cmp r0, #0
	beq loc_8146244
	mov r4, #0
loc_814620E:
	ldr r1, off_81462CC // =dword_2010CB0 
	lsl r0, r4, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	mov r3, #0x80
	lsl r3, r3, #8
	add r1, r3, #0
	and r0, r1
	cmp r0, #0
	beq loc_814623A
	ldrb r1, [r2,#0x1a]
	add r0, r5, #0
	and r0, r1
	cmp r0, #0
	beq loc_814623A
	add r2, r1, #0
	bic r2, r5
	mov r0, #0x20 
	add r1, r4, #0
	bl sub_814ADF4
loc_814623A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814620E
loc_8146244:
	ldr r0, off_81462C8 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#5]
	cmp r0, #0
	beq loc_8146282
	mov r4, #0
loc_8146250:
	ldr r1, off_81462CC // =dword_2010CB0 
	lsl r0, r4, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2,#0x34]
	mov r3, #0x80
	lsl r3, r3, #8
	add r1, r3, #0
	and r0, r1
	cmp r0, #0
	beq loc_8146278
	add r0, r2, #0
	add r0, #0x4e 
	ldrb r0, [r0]
	and r0, r5
	cmp r0, #0
	beq loc_8146278
	add r0, r4, #0
	bl sub_814AF5C
loc_8146278:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8146250
loc_8146282:
	ldr r0, off_81462C8 // =dword_2010CC0 
	ldr r3, [r0]
	ldrb r2, [r3,#6]
	cmp r2, #0
	beq loc_81462C0
	mvn r1, r5
	add r0, r1, #0
	and r0, r2
	strb r0, [r3,#6]
	mov r4, #0
	ldr r7, off_81462D0 // =dword_2010CA0 
	ldr r6, dword_81462D4 // =0x8024 
loc_814629A:
	lsl r0, r4, #2
	add r0, r0, r7
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, r6
	bne loc_81462B6
	ldrb r3, [r2,#3]
	add r0, r5, #0
	and r0, r3
	cmp r0, #0
	beq loc_81462B6
	add r0, r1, #0
	and r0, r3
	strb r0, [r2,#3]
loc_81462B6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814629A
loc_81462C0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81462C8: .word dword_2010CC0
off_81462CC: .word dword_2010CB0
off_81462D0: .word dword_2010CA0
dword_81462D4: .word 0x8024
.endfunc // sub_81461FC

.func
.thumb_func
sub_81462D8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, off_81463C4 // =byte_200FE00 
	ldrh r0, [r0,#0x18] // (word_200FE18 - 0x200fe00)
	cmp r0, #0
	beq loc_81463B4
	ldr r0, off_81463C8 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#4]
	cmp r0, #0
	beq loc_8146378
	mov r6, #0
loc_81462F8:
	ldr r3, off_81463CC // =dword_2010CB0 
	lsl r2, r6, #2
	add r0, r2, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	mov r4, #0x80
	lsl r4, r4, #8
	add r0, r4, #0
	and r1, r0
	add r7, r2, #0
	add r0, r6, #1
	mov r9, r0
	cmp r1, #0
	beq loc_814636E
	mov r5, #0
	mov r4, #0
	mov r1, #1
	mov r8, r1
	mov r10, r3
loc_814631E:
	add r0, r7, r3
	ldr r0, [r0]
	ldrb r0, [r0,#0x1a]
	asr r0, r4
	mov r1, r8
	and r0, r1
	cmp r0, #0
	beq loc_8146348
	lsl r0, r4, #2
	add r0, r0, r3
	ldr r0, [r0]
	ldr r1, off_81463C4 // =byte_200FE00 
	ldrh r0, [r0,#2]
	ldrh r1, [r1,#0x18] // (word_200FE18 - 0x200fe00)
	cmp r0, r1
	bls loc_8146348
	mov r0, r8
	lsl r0, r4
	orr r5, r0
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
loc_8146348:
	cmp r5, #0
	beq loc_8146364
	mov r1, r10
	add r0, r7, r1
	ldr r0, [r0]
	ldrb r0, [r0,#0x1a]
	add r2, r5, #0
	eor r2, r0
	mov r0, #0x20 
	add r1, r6, #0
	str r3, [sp]
	bl sub_814ADF4
	ldr r3, [sp]
loc_8146364:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814631E
loc_814636E:
	mov r3, r9
	lsl r0, r3, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_81462F8
loc_8146378:
	ldr r0, off_81463C8 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#5]
	cmp r0, #0
	beq loc_81463B4
	mov r6, #0
loc_8146384:
	ldr r1, off_81463CC // =dword_2010CB0 
	lsl r0, r6, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2,#0x34]
	mov r4, #0x80
	lsl r4, r4, #8
	add r1, r4, #0
	and r0, r1
	cmp r0, #0
	beq loc_81463AA
	ldr r1, off_81463C4 // =byte_200FE00 
	ldrh r0, [r2,#0x36]
	ldrh r1, [r1,#0x18] // (word_200FE18 - 0x200fe00)
	cmp r0, r1
	bls loc_81463AA
	add r0, r6, #0
	bl sub_814AF5C
loc_81463AA:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_8146384
loc_81463B4:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
off_81463C4: .word byte_200FE00
off_81463C8: .word dword_2010CC0
off_81463CC: .word dword_2010CB0
.endfunc // sub_81462D8

.func
.thumb_func
sub_81463D0:
	push {lr}
	ldr r1, off_81463E0 // =byte_200FE00 
	str r0, [r1,#0x44] // (dword_200FE44 - 0x200fe00)
	ldr r0, off_81463E4 // =sub_8145D54+1 
	bl sub_8149464
	pop {r0}
	bx r0
off_81463E0: .word byte_200FE00
off_81463E4: .word sub_8145D54+1
.endfunc // sub_81463D0

.func
.thumb_func
sub_81463E8:
	ldr r1, off_81463F0 // =byte_200FE00 
	str r0, [r1,#0x40] // (dword_200FE40 - 0x200fe00)
	bx lr
	.byte 0, 0
off_81463F0: .word byte_200FE00
.endfunc // sub_81463E8

.func
.thumb_func
sub_81463F4:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	ldr r0, off_8146418 // =byte_200FE00 
	ldrb r1, [r0,#0x9] // (byte_200FE09 - 0x200fe00)
	add r3, r0, #0
	cmp r1, #0
	beq loc_814641C
	cmp r4, #0
	bne loc_814641C
	add r0, #0x30 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_814641C
	mov r0, #5
	b loc_814642C
off_8146418: .word byte_200FE00
loc_814641C:
	ldr r2, off_8146434 // =InterruptMasterEnableRegister 
	ldrh r1, [r2]
	mov r0, #0
	strh r0, [r2]
	strb r4, [r3,#0x9] // (byte_200FE09 - 0x200fe00)
	strh r5, [r3,#0x32] // (word_200FE32 - 0x200fe00)
	strh r1, [r2]
	mov r0, #0
loc_814642C:
	pop {r4,r5}
	pop {r1}
	bx r1
	.balign 4, 0x00
off_8146434: .word InterruptMasterEnableRegister
.endfunc // sub_81463F4

.func
.thumb_func
sub_8146438:
	push {lr}
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, off_8146454 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#4]
	ldrb r0, [r0,#5]
	orr r0, r1
	cmp r0, #0
	bne loc_814645C
	ldr r0, off_8146458 // =byte_200FE00 
	strh r2, [r0,#0x18] // (word_200FE18 - 0x200fe00)
	mov r0, #0
	b loc_814646C
off_8146454: .word dword_2010CC0
off_8146458: .word byte_200FE00
loc_814645C:
	ldr r1, off_8146470 // =byte_200FE00 
	mov r0, #6
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #6
loc_814646C:
	pop {r1}
	bx r1
off_8146470: .word byte_200FE00
.endfunc // sub_8146438

	push {lr}
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r3, r2, #0
	ldr r1, off_814649C // =byte_200FE00 
	ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
	sub r0, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	bhi byte_81464A0
	mov r0, #7
	strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	mov r0, #0xf3
	mov r1, #1
	bl sub_81461B0
	mov r0, #7
	b unk_81464AE
	.balign 4, 0x00
off_814649C: .word byte_200FE00
byte_81464A0: .byte 0x0, 0x2A, 0x2, 0xD0, 0x1, 0x20, 0xC8, 0x72, 0x0, 0xE0, 0xCB
	.byte 0x72, 0x0, 0x20
unk_81464AE: .byte  2
	.byte 0xBC
	.byte  8
	.byte 0x47 
	.balign 4, 0x00
.func
.thumb_func
sub_81464B4:
	push {lr}
	ldr r1, off_81464D0 // =byte_200FE00 
	ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #0
	beq loc_81464CC
	ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r0, #0
	strb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r0, #0x45 
	mov r1, #0
	bl sub_81461B0
loc_81464CC:
	pop {r0}
	bx r0
off_81464D0: .word byte_200FE00
.endfunc // sub_81464B4

.func
.thumb_func
sub_81464D4:
	push {lr}
	ldr r1, off_81464E8 // =byte_200FE00 
	ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #0
	bne loc_81464EC
	mov r0, #0x45 
	mov r1, #0
	bl sub_81461B0
	b loc_81464F8
off_81464E8: .word byte_200FE00
loc_81464EC:
	ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #1
	bne loc_81464F8
	ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
	mov r0, #2
	strb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
loc_81464F8:
	pop {r0}
	bx r0
.endfunc // sub_81464D4

	push {lr}
	ldr r0, off_814651C // =byte_200FE00 
	ldrb r1, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
	add r2, r0, #0
	cmp r1, #0
	beq def_8146518
	ldrb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
	// switch 7 cases 
	sub r0, #5
	cmp r0, #6
	bhi def_8146518
	lsl r0, r0, #2
	ldr r1, off_8146520 // =jpt_8146518 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.balign 4, 0x00
off_814651C: .word byte_200FE00
off_8146520: .word jpt_8146518
// jump table for switch statement
jpt_8146518:  .word byte_8146540
	.word byte_8146548
	.word byte_8146552
	.word byte_8146552
	.word byte_8146558
	.word byte_8146558
	.word byte_814655E
byte_8146540: .byte 0x3, 0x20, 0xD0, 0x71, 0x9, 0x20, 0xD, 0xE0
byte_8146548: .byte 0x2, 0x20, 0xD0, 0x71, 0x1, 0x20, 0x50, 0x83, 0x9, 0xE0
byte_8146552: .byte 0x2, 0x20, 0xD0, 0x71, 0x6, 0xE0
byte_8146558: .byte 0x28, 0x20, 0x50, 0x83, 0x3, 0xE0
byte_814655E: .byte 0x28, 0x20, 0x50, 0x83, 0xA, 0x20, 0x10, 0x71
def_8146518: .byte  1
	.byte 0xBC
	.byte  0
	.byte 0x47 
	.balign 4, 0x00
.func
.thumb_func
sub_814656C:
	push {lr}
	ldr r0, off_814657C // =word_20102D0 
	ldrh r0, [r0]
	cmp r0, #3
	beq loc_8146580
	mov r0, #1
	b loc_8146582
	.balign 4, 0x00
off_814657C: .word word_20102D0
loc_8146580:
	mov r0, #0
loc_8146582:
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_814656C

.func
.thumb_func
sub_8146588:
	ldr r1, off_81465A8 // =byte_200FE80 
	mov r0, #0
	strb r0, [r1]
	ldr r1, off_81465AC // =byte_2010160 
	mov r0, #0x20 
	strb r0, [r1]
	ldr r0, off_81465B0 // =byte_200FFE4 
	mov r1, #1
	strb r1, [r0]
	ldr r0, off_81465B4 // =byte_2010164 
	strb r1, [r0]
	ldr r1, off_81465B8 // =word_200FE50 
	mov r0, #0xf0
	strh r0, [r1]
	bx lr
	.balign 4, 0x00
off_81465A8: .word byte_200FE80
off_81465AC: .word byte_2010160
off_81465B0: .word byte_200FFE4
off_81465B4: .word byte_2010164
off_81465B8: .word word_200FE50
.endfunc // sub_8146588

.func
.thumb_func
sub_81465BC:
	push {r4,lr}
	ldr r0, off_81465E8 // =unk_3000000 
	ldr r1, dword_81465EC // =0xE64 
	ldr r4, off_81465F0 // =dword_3000E8C 
	add r2, r4, #0
	mov r3, #1
	bl sub_8149220
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_81465F4
	sub r1, r4, #4
	mov r0, #3
	bl sub_8149440
	bl sub_813D8C4
	mov r0, #4
	bl sub_803DE88
	mov r0, #1
	b loc_81465F6
off_81465E8: .word unk_3000000
dword_81465EC: .word 0xE64
off_81465F0: .word dword_3000E8C
loc_81465F4:
	mov r0, #0
loc_81465F6:
	pop {r4}
	pop {r1}
	bx r1
.endfunc // sub_81465BC

.func
.thumb_func
sub_81465FC:
	push {r4,lr}
	add r4, r0, #0
	bl sub_813D924
	mov r2, #0
	mov r1, #4
	strb r1, [r4]
	ldr r1, off_8146644 // =byte_2010160 
	ldrb r1, [r1]
	strb r1, [r4,#1]
	strb r2, [r4,#4]
	mov r1, #0
	strh r0, [r4,#6]
	ldr r0, off_8146648 // =unk_2010150 
	str r0, [r4,#8]
	ldr r0, off_814664C // =unk_200FE63 
	str r0, [r4,#0xc]
	ldr r0, off_8146650 // =byte_2010164 
	ldrb r0, [r0]
	strb r0, [r4,#0x11]
	ldr r0, off_8146654 // =word_200FE50 
	ldrh r0, [r0]
	strh r0, [r4,#0x12]
	mov r0, #0x96
	lsl r0, r0, #2
	strh r0, [r4,#0x14]
	strb r1, [r4,#0x10]
	ldr r0, off_8146658 // =byte_200FFE4 
	ldrb r1, [r0]
	mov r0, #4
	sub r0, r0, r1
	strh r0, [r4,#2]
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8146644: .word byte_2010160
off_8146648: .word unk_2010150
off_814664C: .word unk_200FE63
off_8146650: .word byte_2010164
off_8146654: .word word_200FE50
off_8146658: .word byte_200FFE4
.endfunc // sub_81465FC

.func
.thumb_func
sub_814665C:
	push {r4-r7,lr}
	ldr r1, off_81466B4 // =byte_2010288 
	mov r0, #0
	strb r0, [r1]
	mov r2, #0
	ldr r3, off_81466B8 // =dword_2010CC0 
	ldr r0, [r3]
	add r7, r3, #0
	ldrb r0, [r0,#8]
	cmp r2, r0
	bcs loc_81466AC
	ldr r6, off_81466BC // =unk_2010330 
	add r4, r1, #0
	ldr r5, off_81466C0 // =byte_2010324 
loc_8146678:
	ldrb r0, [r5]
	asr r0, r2
	mov r1, #1
	and r0, r1
	cmp r0, #0
	beq loc_814669C
	ldr r0, [r3]
	lsl r1, r2, #5
	add r0, r0, r1
	ldrb r0, [r0,#0x16]
	cmp r0, #3
	bhi loc_814669C
	ldrb r0, [r4]
	add r0, r0, r6
	strb r2, [r0]
	ldrb r0, [r4]
	add r0, #1
	strb r0, [r4]
loc_814669C:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r3, r7, #0
	ldr r0, [r3]
	ldrb r0, [r0,#8]
	cmp r2, r0
	bcc loc_8146678
loc_81466AC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81466B4: .word byte_2010288
off_81466B8: .word dword_2010CC0
off_81466BC: .word unk_2010330
off_81466C0: .word byte_2010324
.endfunc // sub_814665C

.func
.thumb_func
sub_81466C4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldr r2, off_81466DC // =dword_2010CC0 
	ldr r1, off_81466E0 // =unk_2010330 
	add r0, r0, r1
	ldrb r1, [r0]
	lsl r1, r1, #5
	add r1, #0x14
	ldr r0, [r2]
	add r0, r0, r1
	add r0, #0x15
	bx lr
off_81466DC: .word dword_2010CC0
off_81466E0: .word unk_2010330
.endfunc // sub_81466C4

.func
.thumb_func
sub_81466E4:
	lsl r0, r0, #0x18
	ldr r1, off_81466F0 // =unk_2009750 
	lsr r0, r0, #0x15
	add r1, r0, r1
	add r0, r1, #0
	bx lr
off_81466F0: .word unk_2009750
.endfunc // sub_81466E4

.func
.thumb_func
sub_81466F4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldr r2, off_814670C // =dword_2010CC0 
	ldr r1, off_8146710 // =unk_2010330 
	add r0, r0, r1
	ldrb r1, [r0]
	lsl r1, r1, #5
	add r1, #0x14
	ldr r0, [r2]
	add r0, r0, r1
	add r0, #6
	bx lr
off_814670C: .word dword_2010CC0
off_8146710: .word unk_2010330
.endfunc // sub_81466F4

.func
.thumb_func
sub_8146714:
	lsl r0, r0, #0x18
	ldr r1, off_8146720 // =unk_20098B0 
	lsr r0, r0, #0x14
	add r1, r0, r1
	add r0, r1, #0
	bx lr
off_8146720: .word unk_20098B0
.endfunc // sub_8146714

.func
.thumb_func
sub_8146724:
	add r0, #0xb
	bx lr
.endfunc // sub_8146724

.func
.thumb_func
sub_8146728:
	add r0, #0xb
	ldrb r1, [r0]
	ldrb r0, [r0,#1]
	lsl r0, r0, #8
	orr r1, r0
	add r0, r1, #0
	bx lr
	.balign 4, 0x00
.endfunc // sub_8146728

.func
.thumb_func
sub_8146738:
	ldrb r0, [r0,#0xa]
	bx lr
.endfunc // sub_8146738

.func
.thumb_func
sub_814673C:
	push {r4-r7,lr}
	ldr r7, off_8146790 // =unk_20098B0 
	ldr r6, off_8146794 // =unk_2009750 
	ldr r1, off_8146798 // =byte_2009470 
	mov r0, #0
	strb r0, [r1]
	mov r4, #0
	ldr r0, off_814679C // =byte_2010288 
	ldrb r0, [r0]
	cmp r4, r0
	bcs loc_8146788
	add r5, r1, #0
loc_8146754:
	add r0, r4, #0
	bl sub_81466F4
	add r1, r7, #0
	mov r2, #0xd
	bl sub_81469F0
	add r0, r4, #0
	bl sub_81466C4
	add r1, r6, #0
	mov r2, #8
	bl sub_81469F0
	add r7, #0x10
	add r6, #8
	ldrb r0, [r5]
	add r0, #1
	strb r0, [r5]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, off_814679C // =byte_2010288 
	ldrb r0, [r0]
	cmp r4, r0
	bcc loc_8146754
loc_8146788:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
off_8146790: .word unk_20098B0
off_8146794: .word unk_2009750
off_8146798: .word byte_2009470
off_814679C: .word byte_2010288
.endfunc // sub_814673C

.func
.thumb_func
sub_81467A0:
	push {r4-r7,lr}
	ldr r7, off_81467F8 // =unk_20098B0 
	ldr r6, off_81467FC // =unk_2009750 
	bl sub_814665C
	ldr r1, off_8146800 // =byte_2009470 
	mov r0, #0
	strb r0, [r1]
	mov r4, #0
	ldr r0, off_8146804 // =byte_2010288 
	ldrb r0, [r0]
	cmp r4, r0
	bcs loc_81467F0
	add r5, r1, #0
loc_81467BC:
	add r0, r4, #0
	bl sub_81466F4
	add r1, r7, #0
	mov r2, #0xd
	bl sub_81469F0
	add r0, r4, #0
	bl sub_81466C4
	add r1, r6, #0
	mov r2, #8
	bl sub_81469F0
	add r7, #0x10
	add r6, #8
	ldrb r0, [r5]
	add r0, #1
	strb r0, [r5]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, off_8146804 // =byte_2010288 
	ldrb r0, [r0]
	cmp r4, r0
	bcc loc_81467BC
loc_81467F0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81467F8: .word unk_20098B0
off_81467FC: .word unk_2009750
off_8146800: .word byte_2009470
off_8146804: .word byte_2010288
.endfunc // sub_81467A0

.func
.thumb_func
sub_8146808:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	ldr r5, off_814681C // =unk_20098B0 
	lsr r0, r0, #0x14
	add r5, r0, r5
	bl sub_814665C
	mov r4, #0
	b loc_8146840
	.balign 4, 0x00
off_814681C: .word unk_20098B0
loc_8146820:
	add r0, r4, #0
	bl sub_81466F4
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0xd
	bl sub_8146A18
	lsl r0, r0, #0x18
	cmp r0, #0
	bne loc_814683A
	add r0, r4, #0
	b loc_814684A
loc_814683A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
loc_8146840:
	ldr r0, off_8146850 // =byte_2010288 
	ldrb r0, [r0]
	cmp r4, r0
	bcc loc_8146820
	mov r0, #4
loc_814684A:
	pop {r4,r5}
	pop {r1}
	bx r1
off_8146850: .word byte_2010288
.endfunc // sub_8146808

.func
.thumb_func
sub_8146854:
	push {r4-r6,lr}
	ldr r6, off_8146880 // =unk_20098B0 
	ldr r5, off_8146884 // =unk_2009750 
	mov r4, #0
loc_814685C:
	// memBlock
	add r0, r6, #0
	// size
	mov r1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #8
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	add r6, #0x10
	add r5, #8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	bls loc_814685C
	pop {r4-r6}
	pop {r0}
	bx r0
off_8146880: .word unk_20098B0
off_8146884: .word unk_2009750
.endfunc // sub_8146854

.func
.thumb_func
sub_8146888:
	push {lr}
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, off_81468A0 // =byte_200FE00 
	ldrb r0, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	sub r0, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	bls loc_81468A4
	mov r0, #1
	b loc_81468B0
off_81468A0: .word byte_200FE00
loc_81468A4:
	ldr r0, off_81468B4 // =byte_200BC50 
	mov r1, #7
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	ldr r0, off_81468B8 // =byte_20103E4 
	strb r2, [r0]
	mov r0, #0
loc_81468B0:
	pop {r1}
	bx r1
off_81468B4: .word byte_200BC50
off_81468B8: .word byte_20103E4
.endfunc // sub_8146888

.func
.thumb_func
sub_81468BC:
	ldr r0, off_81468C4 // =byte_2010290 
	ldrb r0, [r0,#0x3] // (byte_2010293 - 0x2010290)
	bx lr
	.balign 4, 0x00
off_81468C4: .word byte_2010290
.endfunc // sub_81468BC

.func
.thumb_func
sub_81468C8:
	add r1, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, off_81468DC // =unk_2010294 
	add r0, r0, r1
	bx lr
	.balign 4, 0x00
off_81468DC: .word unk_2010294
.endfunc // sub_81468C8

.func
.thumb_func
sub_81468E0:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0xd
	mul r0, r1
	ldr r1, off_81468F0 // =unk_20102E0 
	add r0, r0, r1
	bx lr
	.byte 0, 0
off_81468F0: .word unk_20102E0
.endfunc // sub_81468E0

.func
.thumb_func
sub_81468F4:
	ldr r1, off_8146904 // =byte_200FE00 
	ldr r0, off_8146908 // =byte_20103E0 
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, #0x28 
	add r0, r0, r1
	ldrh r0, [r0]
	bx lr
off_8146904: .word byte_200FE00
off_8146908: .word byte_20103E0
.endfunc // sub_81468F4

.func
.thumb_func
sub_814690C:
	ldr r0, off_8146914 // =byte_200FE00 
	ldrh r0, [r0,#0x26] // (word_200FE26 - 0x200fe00)
	bx lr
	.balign 4, 0x00
off_8146914: .word byte_200FE00
.endfunc // sub_814690C

.func
.thumb_func
sub_8146918:
	lsl r0, r0, #0x18
	ldr r1, off_8146928 // =byte_200FE00 
	lsr r0, r0, #0x17
	add r1, #0x34 
	add r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.balign 4, 0x00
off_8146928: .word byte_200FE00
.endfunc // sub_8146918

.func
.thumb_func
sub_814692C:
	push {lr}
	bl sub_81453D4
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814692C

.func
.thumb_func
sub_8146938:
	push {lr}
	ldr r2, off_814694C // =byte_2010280 
	ldr r0, off_8146950 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r0, [r2]
	ldrb r1, [r1,#2]
	cmp r0, r1
	beq loc_8146954
	mov r0, #1
	b loc_8146956
off_814694C: .word byte_2010280
off_8146950: .word dword_2010CC0
loc_8146954:
	mov r0, #0
loc_8146956:
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8146938

.func
.thumb_func
sub_814695C:
	push {r4,lr}
	ldr r4, off_8146998 // =unk_200FE63 
	add r1, r4, #0
	mov r2, #8
	bl sub_81469F0
	sub r1, r4, #3
	mov r0, #1
	strb r0, [r1,#0x2] // (byte_200FE62 - 0x200fe60)
	ldrb r0, [r4,#0x1] // (byte_200FE64 - 0x200fe63)
	cmp r0, #0
	beq loc_814698A
	add r2, r1, #0
	mov r3, #0xff
	add r1, r4, #0
loc_814697A:
	ldrb r0, [r2,#0x2] // (byte_200FE62 - 0x200fe60)
	add r0, #1
	strb r0, [r2,#0x2] // (byte_200FE62 - 0x200fe60)
	and r0, r3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_814697A
loc_814698A:
	ldr r1, off_814699C // =byte_200FE60 
	mov r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8146998: .word unk_200FE63
off_814699C: .word byte_200FE60
.endfunc // sub_814695C

.func
.thumb_func
sub_81469A0:
	ldr r0, off_81469A4 // =unk_200FE63 
	bx lr
off_81469A4: .word unk_200FE63
.endfunc // sub_81469A0

	push {lr}
	ldr r1, off_81469B8 // =unk_2010150 
	mov r2, #0xb
	bl sub_8146A48
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81469B8: .word unk_2010150
.func
.thumb_func
sub_81469BC:
	push {r4-r6,lr}
	lsl r5, r1, #0x10
	lsr r6, r5, #0x10
	ldr r4, off_81469D8 // =unk_2010150 
	add r1, r4, #0
	mov r2, #0xb
	bl sub_8146A48
	strb r6, [r4,#0xb] // (byte_201015B - 0x2010150)
	lsr r5, r5, #0x18
	strb r5, [r4,#0xc] // (byte_201015C - 0x2010150)
	pop {r4-r6}
	pop {r0}
	bx r0
off_81469D8: .word unk_2010150
.endfunc // sub_81469BC

.func
.thumb_func
sub_81469DC:
	ldr r1, off_81469E4 // =byte_201015A 
	strb r0, [r1]
	bx lr
	.balign 4, 0x00
off_81469E4: .word byte_201015A
.endfunc // sub_81469DC

.func
.thumb_func
sub_81469E8:
	ldr r0, off_81469EC // =unk_2010150 
	bx lr
off_81469EC: .word unk_2010150
.endfunc // sub_81469E8

.func
.thumb_func
sub_81469F0:
	push {r4,lr}
	add r4, r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	cmp r3, r2
	bcs loc_8146A10
loc_81469FE:
	ldrb r0, [r4]
	strb r0, [r1]
	add r4, #1
	add r1, #1
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r2
	bcc loc_81469FE
loc_8146A10:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_81469F0

.func
.thumb_func
sub_8146A18:
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	cmp r3, r2
	bcs loc_8146A40
loc_8146A26:
	ldrb r0, [r4]
	ldrb r5, [r1]
	cmp r0, r5
	beq loc_8146A32
	mov r0, #1
	b loc_8146A42
loc_8146A32:
	add r4, #1
	add r1, #1
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r2
	bcc loc_8146A26
loc_8146A40:
	mov r0, #0
loc_8146A42:
	pop {r4,r5}
	pop {r1}
	bx r1
.endfunc // sub_8146A18

.func
.thumb_func
sub_8146A48:
	push {r4,lr}
	add r4, r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	cmp r3, r2
	bcs loc_8146A68
loc_8146A56:
	ldrb r0, [r4]
	strb r0, [r1]
	add r4, #1
	add r1, #1
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r2
	bcc loc_8146A56
loc_8146A68:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8146A48

.func
.thumb_func
sub_8146A70:
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r2, dword_8146A90 // =0x5000055 
	mov r0, sp
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, #1
	strb r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
dword_8146A90: .word 0x5000055
.endfunc // sub_8146A70

	push {r4,lr}
	add r4, r0, #0
	add r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne loc_8146AAC
	ldrb r0, [r4,#1]
	ldrb r1, [r4,#2]
	cmp r0, r1
	bne loc_8146AAC
	mov r0, #1
	b loc_8146ADC
loc_8146AAC:
	ldrb r1, [r4,#2]
	mov r0, #0x54 
	mul r1, r0
	add r1, #4
	add r1, r4, r1
	lsl r2, r2, #9
	lsr r2, r2, #0xb
	mov r0, #0x80
	lsl r0, r0, #0x13
	orr r2, r0
	add r0, r3, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldrb r0, [r4,#3]
	add r0, #1
	mov r2, #0
	strb r0, [r4,#3]
	ldrb r0, [r4,#2]
	add r0, #1
	mov r1, #3
	and r0, r1
	strb r0, [r4,#2]
	strb r2, [r4]
	mov r0, #0
loc_8146ADC:
	pop {r4}
	pop {r1}
	bx r1
	.balign 4, 0x00
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #0
	beq loc_8146AF8
	mov r0, #0
	b loc_8146B52
loc_8146AF8:
	ldr r0, off_8146B60 // =InterruptMasterEnableRegister 
	mov r8, r0
	strh r7, [r0]
	ldrb r0, [r6,#1]
	mov r5, #0x54 
	mul r0, r5
	add r0, #4
	add r0, r6, r0
	lsl r4, r2, #9
	lsr r4, r4, #0xb
	mov r2, #0x80
	lsl r2, r2, #0x13
	orr r2, r4
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	str r7, [sp]
	ldrb r0, [r6,#1]
	add r1, r0, #0
	mul r1, r5
	add r1, #4
	add r1, r6, r1
	mov r0, #0xa0
	lsl r0, r0, #0x13
	orr r4, r0
	mov r0, sp
	add r2, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldrb r0, [r6,#3]
	sub r0, #1
	strb r0, [r6,#3]
	ldrb r0, [r6,#1]
	add r0, #1
	mov r1, #3
	and r0, r1
	strb r0, [r6,#1]
	ldrb r1, [r6,#2]
	cmp r0, r1
	bne loc_8146B4A
	mov r0, #1
	strb r0, [r6]
loc_8146B4A:
	mov r0, #1
	mov r1, r8
	strh r0, [r1]
	mov r0, #1
loc_8146B52:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0, 0
off_8146B60: .word InterruptMasterEnableRegister
	ldr r0, off_8146B6C // =byte_2010480 
	ldrb r0, [r0]
	bx lr
	.balign 4, 0x00
off_8146B6C: .word byte_2010480
.func
.thumb_func
sub_8146B70:
	push {r4,r5,lr}
	ldr r2, off_8146BA4 // =byte_200FE80 
	ldr r5, off_8146BA8 // =unk_2010440 
	add r0, r5, #0
	add r0, #0x3c 
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq loc_8146BB0
	strb r1, [r2]
	ldr r4, off_8146BAC // =unk_20399F0 
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	add r0, r5, #0
	add r0, #0xc
	add r4, #0x10
	add r1, r4, #0
	mov r2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, #2
	b loc_8146BB2
	.balign 4, 0x00
off_8146BA4: .word byte_200FE80
off_8146BA8: .word unk_2010440
off_8146BAC: .word unk_20399F0
loc_8146BB0:
	mov r0, #8
loc_8146BB2:
	pop {r4,r5}
	pop {r1}
	bx r1
.endfunc // sub_8146B70

.func
.thumb_func
sub_8146BB8:
	push {lr}
	ldr r0, off_8146BD4 // =dword_2010CC0 
	ldr r0, [r0]
	ldr r1, off_8146BD8 // =byte_200AF80 
	add r0, #0xa
	ldrb r1, [r1,#0x4] // (byte_200AF84 - 0x200af80)
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r0, #0
	cmp r0, #0xe5
	bls loc_8146BDC
	mov r0, #4
	b loc_8146BF0
	.balign 4, 0x00
off_8146BD4: .word dword_2010CC0
off_8146BD8: .word byte_200AF80
loc_8146BDC:
	lsl r0, r0, #0x18
	cmp r0, #0
	bge loc_8146BE6
	mov r0, #3
	b loc_8146BF0
loc_8146BE6:
	cmp r1, #0x19
	bhi loc_8146BEE
	mov r0, #1
	b loc_8146BF0
loc_8146BEE:
	mov r0, #2
loc_8146BF0:
	pop {r1}
	bx r1
.endfunc // sub_8146BB8

.func
.thumb_func
sub_8146BF4:
	push {lr}
	ldr r0, off_8146C08 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	beq loc_8146C04
	cmp r0, #0
	bne loc_8146C0C
loc_8146C04:
	mov r0, #1
	b loc_8146C0E
off_8146C08: .word dword_2010CC0
loc_8146C0C:
	mov r0, #0
loc_8146C0E:
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8146BF4

	ldr r1, off_8146C1C // =word_2010168 
	mov r0, #0
	strh r0, [r1]
	bx lr
off_8146C1C: .word word_2010168
.func
.thumb_func
sub_8146C20:
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq loc_8146C4C
	cmp r0, #1
	bgt loc_8146C34
	cmp r0, #0
	beq loc_8146C40
	b loc_8146C5A
loc_8146C34:
	cmp r0, #2
	beq loc_8146C54
	cmp r0, #3
	bne loc_8146C5A
	mov r0, #0
	strb r0, [r4]
loc_8146C40:
	ldrb r0, [r4,#2]
	cmp r0, #0
	beq loc_8146C5A
	add r0, r4, #0
	bl sub_8146CE4
loc_8146C4C:
	add r0, r4, #0
	bl sub_8146C60
	b loc_8146C5A
loc_8146C54:
	add r0, r4, #0
	bl sub_8146C9C
loc_8146C5A:
	pop {r4}
	pop {r0}
	bx r0
.endfunc // sub_8146C20

.func
.thumb_func
sub_8146C60:
	push {r4,lr}
	add r4, r0, #0
	ldr r1, off_8146C88 // =byte_20103E0 
	mov r0, #0x80
	lsl r0, r0, #0x11
	ldrb r1, [r1]
	lsl r0, r1
	lsr r0, r0, #0x18
	ldr r3, [r4,#0x10]
	add r1, r3, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r2, off_8146C8C // =byte_200DD10 
	bl sub_814AB50
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8146C90
	mov r0, #4
	b loc_8146C92
off_8146C88: .word byte_20103E0
off_8146C8C: .word byte_200DD10
loc_8146C90:
	mov r0, #2
loc_8146C92:
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8146C60

.func
.thumb_func
sub_8146C9C:
	push {r4,lr}
	add r4, r0, #0
	ldr r1, off_8146CC4 // =dword_2010CB0 
	ldr r0, off_8146CC8 // =byte_20103E0 
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x26 
	bne loc_8146CCC
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
	mov r1, #0
	mov r0, #3
	strb r0, [r4]
	strb r1, [r4,#2]
	b loc_8146CDC
off_8146CC4: .word dword_2010CB0
off_8146CC8: .word byte_20103E0
loc_8146CCC:
	cmp r0, #0x27 
	bne loc_8146CDC
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
	mov r0, #4
	strb r0, [r4]
loc_8146CDC:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8146C9C

.func
.thumb_func
sub_8146CE4:
	push {lr}
	ldr r3, [r0,#8]
	ldr r1, off_8146CF8 // =byte_200DD10 
	ldr r2, [r0,#0x10]
	add r0, r3, #0
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8146CF8: .word byte_200DD10
.endfunc // sub_8146CE4

.func
.thumb_func
sub_8146CFC:
	push {lr}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r1, off_8146D18 // =byte_200AF80 
	ldr r2, dword_8146D1C // =0x100000C 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	add sp, sp, #4
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8146D18: .word byte_200AF80
dword_8146D1C: .word 0x100000C
.endfunc // sub_8146CFC

.func
.thumb_func
sub_8146D20:
	push {lr}
	ldr r1, off_8146D34 // =byte_200AF80 
	ldrb r0, [r1,#0x2] // (byte_200AF82 - 0x200af80)
	cmp r0, #0
	bne loc_8146D38
	mov r0, #1
	strb r0, [r1,#0x2] // (byte_200AF82 - 0x200af80)
	mov r0, #0
	b loc_8146D3A
	.balign 4, 0x00
off_8146D34: .word byte_200AF80
loc_8146D38:
	mov r0, #1
loc_8146D3A:
	pop {r1}
	bx r1
	.byte 0, 0
.endfunc // sub_8146D20

.func
.thumb_func
sub_8146D40:
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r6, off_8146D74 // =unk_2009480 
	mov r4, #0
loc_8146D48:
	ldr r0, off_8146D78 // =byte_2010290 
	ldrb r1, [r0,#0x2] // (byte_2010292 - 0x2010290)
	mov r0, #2
	lsl r0, r4
	and r1, r0
	cmp r1, #0
	beq loc_8146D7C
	mov r0, #8
	add r1, r4, #0
	bl sub_814A934
	ldr r3, [r5,#0x14]
	mov r0, #0x20 
	add r1, r4, #0
	add r2, r6, #0
	bl sub_814AAF0
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8146D7C
	mov r0, #1
	b loc_8146D90
off_8146D74: .word unk_2009480
off_8146D78: .word byte_2010290
loc_8146D7C:
	ldr r0, [r5,#0x14]
	lsr r0, r0, #2
	lsl r0, r0, #2
	add r6, r6, r0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8146D48
	mov r0, #0
loc_8146D90:
	pop {r4-r6}
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8146D40

.func
.thumb_func
sub_8146D98:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r6, r0, #0
	ldr r0, off_8146DE0 // =unk_2009480 
	mov r9, r0
	mov r7, #0
	mov r4, #0
	mov r0, #2
	mov r8, r0
loc_8146DAE:
	mov r0, r8
	lsl r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r5, r0, #0
	ldr r0, off_8146DE4 // =byte_2010290 
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r5
	cmp r0, #0
	beq loc_8146DFC
	ldr r0, off_8146DE8 // =dword_2010CB0 
	lsl r1, r4, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0,#0x34]
	cmp r0, #0x47 
	beq loc_8146DF0
	cmp r0, #0x46 
	bne loc_8146DEC
	mov r0, #8
	add r1, r4, #0
	bl sub_814A934
	orr r7, r5
	b loc_8146DFC
off_8146DE0: .word unk_2009480
off_8146DE4: .word byte_2010290
off_8146DE8: .word dword_2010CB0
loc_8146DEC:
	cmp r0, #0x48 
	bne loc_8146DFC
loc_8146DF0:
	mov r0, #8
	add r1, r4, #0
	bl sub_814A934
	mov r0, r8
	strb r0, [r6,#1]
loc_8146DFC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8146DAE
	ldr r0, off_8146E40 // =byte_2010290 
	mov r1, #1
	orr r7, r1
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	and r7, r0
	cmp r7, r0
	bne loc_8146E34
	mov r0, #1
	strb r0, [r6,#1]
	// size
	ldr r1, [r6,#0x14]
	lsr r2, r1, #2
	ldr r0, off_8146E44 // =byte_2010328 
	ldrb r0, [r0]
	mul r0, r2
	lsl r0, r0, #2
	add r9, r0
	// memBlock
	ldr r0, [r6,#0xc]
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	add r0, r6, #0
	mov r1, r9
	bl sub_8146E48
loc_8146E34:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
off_8146E40: .word byte_2010290
off_8146E44: .word byte_2010328
.endfunc // sub_8146D98

.func
.thumb_func
sub_8146E48:
	push {lr}
	add r3, r1, #0
	ldr r1, [r0,#0xc]
	ldr r2, [r0,#0x14]
	add r0, r3, #0
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8146E48

.func
.thumb_func
sub_8146E5C:
	strb r1, [r0,#5]
	bx lr
.endfunc // sub_8146E5C

.func
.thumb_func
sub_8146E60:
	push {lr}
	ldr r0, off_8146E70 // =byte_20101E0 
	ldr r1, off_8146E74 // =unk_2010230 
	mov r2, #0xc
	bl sub_8146E90
	pop {r0}
	bx r0
off_8146E70: .word byte_20101E0
off_8146E74: .word unk_2010230
.endfunc // sub_8146E60

.func
.thumb_func
sub_8146E78:
	push {lr}
	ldr r0, off_8146E88 // =byte_20101E0 
	ldr r1, off_8146E8C // =unk_2010230 
	mov r2, #0xc
	bl sub_8146F90
	pop {r0}
	bx r0
off_8146E88: .word byte_20101E0
off_8146E8C: .word unk_2010230
.endfunc // sub_8146E78

.func
.thumb_func
sub_8146E90:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r3, r0, #0
	mov r8, r1
	add r7, r2, #0
	mov r0, sp
	mov r6, #0
	strh r6, [r0]
	lsr r2, r7, #1
	ldr r5, dword_8146F64 // =0x1FFFFF 
	and r2, r5
	mov r4, #0x80
	lsl r4, r4, #0x11
	orr r2, r4
	add r1, r3, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, sp
	add r0, #2
	strh r6, [r0]
	lsl r2, r7, #1
	and r2, r5
	orr r2, r4
	mov r1, r8
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8146F68 // =unk_200FFF0 
	bl sub_8146A70
	ldr r0, off_8146F6C // =unk_200FE90 
	bl sub_8146A70
	ldr r0, off_8146F70 // =byte_20101B4 
	mov r1, #1
	strb r1, [r0]
	ldr r2, off_8146F74 // =byte_2010290 
	ldr r0, off_8146F78 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#2]
	lsl r0, r0, #1
	orr r0, r1
	strb r0, [r2,#0x2] // (byte_2010292 - 0x2010290)
	mov r4, #0
	ldr r6, off_8146F7C // =byte_2010220 
	mov r2, #0
	ldr r5, off_8146F80 // =word_2010400 
	ldr r3, off_8146F84 // =word_2010428 
loc_8146EF2:
	add r0, r4, r6
	strb r2, [r0]
	lsl r1, r4, #1
	add r0, r1, r5
	strh r2, [r0]
	add r1, r1, r3
	strh r2, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8146EF2
	ldr r1, off_8146F88 // =byte_20101E0 
	mov r0, #0
	strb r0, [r1]
	mov r4, #0
	ldr r5, off_8146F8C // =byte_200BC50 
loc_8146F14:
	ldr r0, off_8146F74 // =byte_2010290 
	ldrb r1, [r0,#0x2] // (byte_2010292 - 0x2010290)
	mov r0, #2
	lsl r0, r4
	and r1, r0
	cmp r1, #0
	beq loc_8146F46
	mov r0, #0xc
	add r1, r4, #0
	bl sub_814A934
	lsl r2, r4, #2
	add r2, r8
	mov r0, #0x20 
	add r1, r4, #0
	add r3, r7, #0
	bl sub_814AAF0
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8146F46
	ldrh r1, [r5,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x80
	orr r0, r1
	strh r0, [r5,#0x8] // (word_200BC58 - 0x200bc50)
loc_8146F46:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8146F14
	ldr r1, off_8146F8C // =byte_200BC50 
	mov r0, #0
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_8146F64: .word 0x1FFFFF
off_8146F68: .word unk_200FFF0
off_8146F6C: .word unk_200FE90
off_8146F70: .word byte_20101B4
off_8146F74: .word byte_2010290
off_8146F78: .word dword_2010CC0
off_8146F7C: .word byte_2010220
off_8146F80: .word word_2010400
off_8146F84: .word word_2010428
off_8146F88: .word byte_20101E0
off_8146F8C: .word byte_200BC50
.endfunc // sub_8146E90

.func
.thumb_func
sub_8146F90:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	ldr r0, off_814700C // =byte_200AF80 
	mov r8, r0
	ldr r0, off_8147010 // =byte_200BC50 
	ldrh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	beq loc_8146FAE
	b def_814700A
loc_8146FAE:
	ldr r1, off_8147014 // =byte_2010368 
loc_8146FB0:
	ldrb r0, [r1]
	cmp r0, #1
	beq loc_8146FB0
	mov r0, #0
	bl sub_81453F0
	ldr r4, off_8147018 // =byte_2010340 
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_8146FD0
	bl sub_814A4CC
	bl sub_8149568
	mov r0, #0
	strb r0, [r4]
loc_8146FD0:
	ldr r0, off_814701C // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0]
	cmp r1, #1
	bne loc_8146FE4
	ldr r0, off_8147014 // =byte_2010368 
	strb r1, [r0]
	mov r0, #1
	bl sub_8144DB0
loc_8146FE4:
	mov r0, r8
	add r1, r6, #0
	add r2, r5, #0
	bl sub_81472F8
	mov r0, r8
	add r1, r7, #0
	bl sub_814713C
	ldr r0, off_8147010 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	// switch 56 cases 
	sub r0, #9
	cmp r0, #0x37 
	bls loc_8147002
	b def_814700A
loc_8147002:
	lsl r0, r0, #2
	ldr r1, off_8147020 // =jpt_814700A 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
off_814700C: .word byte_200AF80
off_8147010: .word byte_200BC50
off_8147014: .word byte_2010368
off_8147018: .word byte_2010340
off_814701C: .word dword_2010CC0
off_8147020: .word jpt_814700A
// jump table for switch statement
jpt_814700A:  .word loc_8147104
	.word def_814700A
	.word loc_8147108
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word loc_8147118
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word def_814700A
	.word loc_8147122
loc_8147104:
	mov r0, #1
	b loc_8147124
loc_8147108:
	bl sub_8144EEC
	ldr r1, off_8147114 // =byte_200BC50 
	mov r0, #0xc
	b loc_814712C
	.balign 4, 0x00
off_8147114: .word byte_200BC50
loc_8147118:
	bl sub_814A828
	bl sub_813D760
	b def_814700A
loc_8147122:
	mov r0, #0
loc_8147124:
	bl sub_8145120
	ldr r1, off_8147138 // =byte_200BC50 
	mov r0, #0xa
loc_814712C:
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_814700A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
off_8147138: .word byte_200BC50
.endfunc // sub_8146F90

.func
.thumb_func
sub_814713C:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	mov r9, r1
	mov r6, #0
	mov r4, #0
	mov r0, #2
	mov r8, r0
loc_8147150:
	mov r0, r8
	lsl r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r5, r0, #0
	ldr r0, off_8147184 // =byte_2010290 
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r5
	cmp r0, #0
	beq loc_814719C
	ldr r0, off_8147188 // =dword_2010CB0 
	lsl r1, r4, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0,#0x34]
	cmp r0, #0x47 
	beq loc_8147190
	cmp r0, #0x46 
	bne loc_814718C
	mov r0, #8
	add r1, r4, #0
	bl sub_814A934
	orr r6, r5
	b loc_814719C
	.balign 4, 0x00
off_8147184: .word byte_2010290
off_8147188: .word dword_2010CB0
loc_814718C:
	cmp r0, #0x48 
	bne loc_814719C
loc_8147190:
	mov r0, #8
	add r1, r4, #0
	bl sub_814A934
	mov r0, r8
	strb r0, [r7,#1]
loc_814719C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8147150
	ldr r0, off_81471D0 // =byte_2010290 
	mov r1, #1
	orr r6, r1
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	and r6, r0
	cmp r6, r0
	bne loc_81471C4
	mov r0, #1
	strb r0, [r7,#1]
	ldr r0, off_81471D4 // =byte_2010328 
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r9
	bl sub_813D7B8
loc_81471C4:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
off_81471D0: .word byte_2010290
off_81471D4: .word byte_2010328
.endfunc // sub_814713C

.func
.thumb_func
sub_81471D8:
	push {r4,lr}
	add r4, r0, #0
	add r3, r1, #0
	ldr r0, off_814720C // =byte_2010280 
	ldrb r0, [r0]
	add r1, r3, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r2, off_8147210 // =byte_20101E0 
	bl sub_814AB50
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	beq loc_814721C
	mov r0, #4
	strb r0, [r4]
	ldr r2, off_8147214 // =byte_200BC50 
	ldrh r1, [r2,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x80
	orr r0, r1
	strh r0, [r2,#0x8] // (word_200BC58 - 0x200bc50)
	ldr r1, off_8147218 // =byte_20101B4 
	mov r0, #0x83
	strb r0, [r1]
	b loc_8147222
off_814720C: .word byte_2010280
off_8147210: .word byte_20101E0
off_8147214: .word byte_200BC50
off_8147218: .word byte_20101B4
loc_814721C:
	mov r0, #2
	strb r0, [r4]
	strb r1, [r4,#2]
loc_8147222:
	pop {r4}
	pop {r0}
	bx r0
.endfunc // sub_81471D8

.func
.thumb_func
sub_8147228:
	push {r4-r6,lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, off_814726C // =dword_2010CB0 
	ldr r0, off_8147270 // =byte_2010328 
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0x26 
	bne loc_8147274
	add r0, r1, #0
	add r0, #0x2c 
	ldrb r0, [r0]
	ldrb r4, [r1,#0x1a]
	eor r4, r0
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
	cmp r4, #0
	bne loc_8147280
	mov r0, #3
	strb r0, [r5]
	ldrb r4, [r6,#1]
	mov r0, #0
	bl sub_802D064
	add r1, r0, #0
	add r0, r4, #0
	bl sub_813D78C
	b loc_8147284
off_814726C: .word dword_2010CB0
off_8147270: .word byte_2010328
loc_8147274:
	cmp r0, #0x27 
	bne loc_8147284
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
loc_8147280:
	mov r0, #4
	strb r0, [r5]
loc_8147284:
	pop {r4-r6}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8147228

.func
.thumb_func
sub_814728C:
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r1, off_81472E4 // =byte_20101E0 
	ldrb r5, [r1]
	mov r2, sp
	mov r0, #0
	strh r0, [r2]
	ldr r2, dword_81472E8 // =0x1000006 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r4, #0
loc_81472A4:
	ldr r0, off_81472EC // =byte_2010290 
	ldrb r1, [r0,#0x2] // (byte_2010292 - 0x2010290)
	mov r0, #2
	lsl r0, r4
	and r1, r0
	cmp r1, #0
	beq loc_81472C4
	ldr r0, off_81472F0 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_81472C4
	ldr r0, off_81472F4 // =byte_200DD10 
	ldr r1, off_81472E4 // =byte_20101E0 
	mov r2, #0xc
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_81472C4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_81472A4
	ldr r0, off_81472F0 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_81472DC
	ldr r1, off_81472E4 // =byte_20101E0 
	add r0, r5, #1
	strb r0, [r1]
loc_81472DC:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
off_81472E4: .word byte_20101E0
dword_81472E8: .word 0x1000006
off_81472EC: .word byte_2010290
off_81472F0: .word byte_20101B4
off_81472F4: .word byte_200DD10
.endfunc // sub_814728C

.func
.thumb_func
sub_81472F8:
	push {r4,r5,lr}
	add r4, r0, #0
	add r3, r1, #0
	add r5, r2, #0
	ldrb r0, [r4]
	// switch 5 cases 
	cmp r0, #4
	bhi def_814730E
	lsl r0, r0, #2
	ldr r1, off_8147310 // =jpt_814730E 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
off_8147310: .word jpt_814730E
// jump table for switch statement
jpt_814730E:  .word loc_814732C
	.word loc_8147336
	.word loc_8147340
	.word loc_8147328
	.word def_814730E
loc_8147328:
	mov r0, #0
	strb r0, [r4]
loc_814732C:
	ldrb r0, [r4,#2]
	cmp r0, #0
	beq def_814730E
	bl sub_814728C
loc_8147336:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_81471D8
	b def_814730E
loc_8147340:
	add r0, r4, #0
	add r1, r3, #0
	bl sub_8147228
def_814730E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_81472F8

.func
.thumb_func
sub_8147350:
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #4
	bl sub_803DE88
	ldr r0, off_81473B4 // =byte_2010280 
	mov r1, #0
	strb r1, [r0]
	ldr r0, off_81473B8 // =byte_201033C 
	strb r1, [r0]
	ldr r0, off_81473BC // =byte_201028C 
	strb r1, [r0]
	ldr r0, off_81473C0 // =byte_2010340 
	strb r1, [r0]
	ldr r0, off_81473C4 // =byte_2010328 
	strb r1, [r0]
	ldr r0, off_81473C8 // =byte_2010368 
	strb r1, [r0]
	bl sub_813D960
	mov r0, sp
	mov r4, #0
	strh r4, [r0]
	ldr r1, off_81473CC // =byte_2010290 
	ldr r2, dword_81473D0 // =0x1000020 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_81473D4 // =unk_2010350 
	bl sub_81465FC
	ldr r0, off_81473D8 // =sub_81473EC+1 
	ldr r1, off_81473DC // =sub_81475B8+1 
	bl sub_8144DF0
	ldr r0, off_81473E0 // =Timer2Counter_Reload 
	strh r4, [r0]
	ldr r1, off_81473E4 // =Timer2Control 
	mov r0, #0x83
	strh r0, [r1]
	ldr r1, off_81473E8 // =byte_200BC50 
	mov r2, #1
	mov r0, #1
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	strb r2, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	bl sub_8146CFC
	add sp, sp, #4
	pop {r4}
	pop {r1}
	bx r1
off_81473B4: .word byte_2010280
off_81473B8: .word byte_201033C
off_81473BC: .word byte_201028C
off_81473C0: .word byte_2010340
off_81473C4: .word byte_2010328
off_81473C8: .word byte_2010368
off_81473CC: .word byte_2010290
dword_81473D0: .word 0x1000020
off_81473D4: .word unk_2010350
off_81473D8: .word sub_81473EC+1
off_81473DC: .word sub_81475B8+1
off_81473E0: .word Timer2Counter_Reload
off_81473E4: .word Timer2Control
off_81473E8: .word byte_200BC50
.endfunc // sub_8147350

.func
.thumb_func
sub_81473EC:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	cmp r0, #0x32 
	bne loc_81473FA
	b loc_81475AA
loc_81473FA:
	cmp r0, #0x32 
	bgt loc_814742A
	cmp r0, #0x12
	beq loc_8147490
	cmp r0, #0x12
	bgt loc_8147416
	cmp r0, #0x10
	bne loc_814740C
	b loc_81475AA
loc_814740C:
	cmp r0, #0x10
	bgt loc_8147478
	cmp r0, #0
	beq loc_8147470
	b loc_81475AA
loc_8147416:
	cmp r0, #0x14
	beq loc_81474C4
	cmp r0, #0x14
	bge loc_8147420
	b loc_81475AA
loc_8147420:
	cmp r0, #0x30 
	beq loc_81474F0
	cmp r0, #0x31 
	beq loc_81474E8
	b loc_81475AA
loc_814742A:
	cmp r0, #0x44 
	bne loc_8147430
	b loc_8147538
loc_8147430:
	cmp r0, #0x44 
	bgt loc_8147444
	cmp r0, #0x42 
	bne loc_814743A
	b loc_8147544
loc_814743A:
	cmp r0, #0x42 
	bgt loc_8147524
	cmp r0, #0x33 
	beq loc_81474F0
	b loc_81475AA
loc_8147444:
	cmp r0, #0xf0
	bne loc_814744A
	b loc_8147550
loc_814744A:
	cmp r0, #0xf0
	bgt loc_8147454
	cmp r0, #0x50 
	beq loc_8147462
	b loc_81475AA
loc_8147454:
	cmp r1, #0xf1
	bne loc_814745A
	b loc_8147598
loc_814745A:
	cmp r1, #0xff
	bne loc_8147460
	b loc_8147588
loc_8147460:
	b loc_81475AA
loc_8147462:
	ldr r1, off_814746C // =byte_2010368 
	mov r0, #0
	strb r0, [r1]
	b loc_81475AA
	.balign 4, 0x00
off_814746C: .word byte_2010368
loc_8147470:
	ldr r1, off_8147474 // =byte_200BC50 
	b loc_814750E
off_8147474: .word byte_200BC50
loc_8147478:
	ldr r2, off_8147488 // =byte_2010280 
	ldr r0, off_814748C // =byte_200FE00 
	ldrb r1, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	ldrb r0, [r2]
	orr r0, r1
	strb r0, [r2]
	b loc_81475AA
	.balign 4, 0x00
off_8147488: .word byte_2010280
off_814748C: .word byte_200FE00
loc_8147490:
	mov r2, #0
	ldr r0, off_81474BC // =byte_200FE00 
	ldrh r5, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	mov r4, #1
	ldr r3, off_81474C0 // =byte_2010284 
loc_814749A:
	add r0, r5, #0
	asr r0, r2
	and r0, r4
	cmp r0, #0
	beq loc_81474AE
	add r0, r4, #0
	lsl r0, r2
	ldrb r1, [r3]
	orr r0, r1
	strb r0, [r3]
loc_81474AE:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_814749A
	b loc_81475AA
	.balign 4, 0x00
off_81474BC: .word byte_200FE00
off_81474C0: .word byte_2010284
loc_81474C4:
	ldr r0, off_81474D4 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#1]
	cmp r0, #0
	bne loc_81474DC
	ldr r1, off_81474D8 // =byte_200BC50 
	b loc_814750E
	.balign 4, 0x00
off_81474D4: .word dword_2010CC0
off_81474D8: .word byte_200BC50
loc_81474DC:
	ldr r1, off_81474E4 // =byte_200BC50 
	mov r0, #0x22 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_81475AA
off_81474E4: .word byte_200BC50
loc_81474E8:
	mov r0, #0xe
	bl sub_813D934
	b loc_81475AA
loc_81474F0:
	ldr r2, off_8147514 // =byte_2010280 
	ldr r0, off_8147518 // =byte_200FE00 
	ldrb r1, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	ldrb r0, [r2]
	bic r0, r1
	strb r0, [r2]
	ldr r1, off_814751C // =byte_200BC50 
	ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #4
	beq loc_81475AA
	ldr r0, off_8147520 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne loc_81475AA
loc_814750E:
	mov r0, #3
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_81475AA
off_8147514: .word byte_2010280
off_8147518: .word byte_200FE00
off_814751C: .word byte_200BC50
off_8147520: .word dword_2010CC0
loc_8147524:
	ldr r1, off_8147534 // =byte_200BC50 
	mov r0, #3
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x14
	bl sub_813D934
	b loc_81475AA
	.balign 4, 0x00
off_8147534: .word byte_200BC50
loc_8147538:
	ldr r1, off_8147540 // =byte_200BC50 
	mov r0, #0xb
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_81475AA
off_8147540: .word byte_200BC50
loc_8147544:
	ldr r1, off_814754C // =byte_200BC50 
	mov r0, #0x34 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_81475AA
off_814754C: .word byte_200BC50
loc_8147550:
	mov r0, #0x15
	bl sub_813D94C
	cmp r0, #0
	beq loc_8147560
	mov r0, #0x15
	bl sub_813D934
loc_8147560:
	ldr r1, off_8147578 // =word_20102D0 
	ldr r0, off_814757C // =byte_200FE00 
	ldrh r0, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	strh r0, [r1]
	ldr r1, off_8147580 // =byte_2010368 
	mov r0, #0
	strb r0, [r1]
	ldr r1, off_8147584 // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_81475AA
	.balign 4, 0x00
off_8147578: .word word_20102D0
off_814757C: .word byte_200FE00
off_8147580: .word byte_2010368
off_8147584: .word byte_200BC50
loc_8147588:
	ldr r1, off_8147594 // =byte_200BC50 
	mov r4, #0
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #1
	b loc_81475A2
off_8147594: .word byte_200BC50
loc_8147598:
	ldr r1, off_81475B0 // =byte_200BC50 
	mov r4, #0
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0xd
loc_81475A2:
	bl sub_813D934
	ldr r0, off_81475B4 // =byte_2010368 
	strb r4, [r0]
loc_81475AA:
	pop {r4,r5}
	pop {r0}
	bx r0
off_81475B0: .word byte_200BC50
off_81475B4: .word byte_2010368
.endfunc // sub_81473EC

.func
.thumb_func
sub_81475B8:
	push {lr}
	bl sub_814B694
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_81475B8

	push {lr}
	ldr r0, off_81475D0 // =byte_814FE94 
	bl sub_81475D4
	pop {r0}
	bx r0
off_81475D0: .word byte_814FE94
.func
.thumb_func
sub_81475D4:
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r1, off_8147630 // =byte_2010368 
loc_81475DA:
	ldrb r0, [r1]
	cmp r0, #1
	beq loc_81475DA
	ldr r0, off_8147634 // =Timer2Counter_Reload 
	ldrh r0, [r0]
	bl sub_81453F0
	ldr r4, off_8147638 // =byte_2010340 
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_81475FC
	bl sub_814A4CC
	bl sub_8149568
	mov r0, #0
	strb r0, [r4]
loc_81475FC:
	ldr r0, off_814763C // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0]
	cmp r1, #1
	bne loc_8147610
	ldr r0, off_8147630 // =byte_2010368 
	strb r1, [r0]
	mov r0, #1
	bl sub_8144DB0
loc_8147610:
	bl sub_8147834
	bl sub_8147A84
	ldr r0, off_8147640 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	// switch 64 cases 
	sub r0, #1
	cmp r0, #0x3f 
	bls loc_8147624
	b def_814762C
loc_8147624:
	lsl r0, r0, #2
	ldr r1, off_8147644 // =jpt_814762C 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.byte 0, 0
off_8147630: .word byte_2010368
off_8147634: .word Timer2Counter_Reload
off_8147638: .word byte_2010340
off_814763C: .word dword_2010CC0
off_8147640: .word byte_200BC50
off_8147644: .word jpt_814762C
// jump table for switch statement
jpt_814762C:  .word loc_8147748
	.word def_814762C
	.word loc_814775C
	.word loc_8147784
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word loc_81477B0
	.word def_814762C
	.word loc_8147804
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word loc_81477B4
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word loc_8147814
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word def_814762C
	.word loc_814781E
loc_8147748:
	ldr r0, off_8147754 // =unk_2010350 
	bl sub_8144E70
	ldr r1, off_8147758 // =byte_200BC50 
	mov r0, #2
	b loc_8147828
off_8147754: .word unk_2010350
off_8147758: .word byte_200BC50
loc_814775C:
	mov r0, #1
	mov r1, #0
	mov r2, #0x78 
	add r3, r5, #0
	bl sub_8144EF8
	lsl r0, r0, #0x18
	cmp r0, #0
	bne def_814762C
	ldr r1, off_814777C // =byte_200BC50 
	mov r2, #0
	mov r0, #4
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	ldr r0, off_8147780 // =byte_2010284 
	strb r2, [r0]
	b def_814762C
off_814777C: .word byte_200BC50
off_8147780: .word byte_2010284
loc_8147784:
	ldr r0, off_81477A0 // =byte_2010280 
	ldrb r1, [r0]
	cmp r1, #0
	beq loc_8147796
	ldr r0, off_81477A4 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#2]
	cmp r1, r0
	beq loc_81477A8
loc_8147796:
	mov r0, #0xb
	bl sub_813D934
	b def_814762C
	.byte 0, 0
off_81477A0: .word byte_2010280
off_81477A4: .word dword_2010CC0
loc_81477A8:
	mov r0, #0xc
	bl sub_813D934
	b def_814762C
loc_81477B0:
	mov r0, #1
	b loc_8147820
loc_81477B4:
	ldr r0, off_81477D8 // =byte_201028C 
	ldrb r1, [r0]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	beq def_814762C
	ldr r0, off_81477DC // =byte_2010290 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_81477E4
	ldr r0, off_81477E0 // =byte_200AF80 
	ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
	cmp r0, #1
	bne def_814762C
	bl sub_813D98C
	b def_814762C
	.balign 4, 0x00
off_81477D8: .word byte_201028C
off_81477DC: .word byte_2010290
off_81477E0: .word byte_200AF80
loc_81477E4:
	ldr r0, off_81477F4 // =byte_200AF80 
	ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
	cmp r0, #1
	bne loc_81477F8
	bl sub_813D978
	b def_814762C
	.balign 4, 0x00
off_81477F4: .word byte_200AF80
loc_81477F8:
	bl sub_813D8D0
	mov r0, #0
	bl sub_813D934
	b def_814762C
loc_8147804:
	bl sub_8144EEC
	ldr r1, off_8147810 // =byte_200BC50 
	mov r0, #0xc
	b loc_8147828
	.byte 0, 0
off_8147810: .word byte_200BC50
loc_8147814:
	bl sub_814A828
	bl sub_813D760
	b def_814762C
loc_814781E:
	mov r0, #0
loc_8147820:
	bl sub_8145120
	ldr r1, off_8147830 // =byte_200BC50 
	mov r0, #0xa
loc_8147828:
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_814762C:
	pop {r4,r5}
	pop {r0}
	bx r0
off_8147830: .word byte_200BC50
.endfunc // sub_81475D4

.func
.thumb_func
sub_8147834:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, off_8147868 // =byte_200AF80 
	mov r8, r0
	mov r7, #0
	ldr r1, off_814786C // =byte_201028C 
	ldrb r2, [r1]
	mov r0, #2
	and r0, r2
	add r5, r1, #0
	cmp r0, #0
	bne loc_8147862
	ldr r0, off_8147870 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r1, [r1,#3]
	add r6, r0, #0
	cmp r1, #0
	bne loc_8147862
	mov r0, #0x80
	and r0, r2
	cmp r0, #0
	beq loc_8147874
loc_8147862:
	mov r0, #0
	b loc_814792A
	.balign 4, 0x00
off_8147868: .word byte_200AF80
off_814786C: .word byte_201028C
off_8147870: .word dword_2010CC0
loc_8147874:
	ldr r0, off_8147934 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #0x22 
	bne loc_814788A
	mov r0, #0x40 
	and r0, r2
	cmp r0, #0
	bne loc_814788A
	mov r0, #0x45 
	orr r0, r2
	strb r0, [r5]
loc_814788A:
	ldr r0, off_8147938 // =byte_201033C 
	ldr r1, off_814793C // =byte_2010280 
	ldrb r2, [r0]
	add r3, r0, #0
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r2, r0
	beq loc_81478B0
	ldrb r1, [r5]
	mov r0, #4
	orr r1, r0
	strb r1, [r5]
	ldr r0, [r6]
	ldrb r0, [r0,#2]
	cmp r0, #0
	beq loc_81478B0
	mov r0, #1
	orr r1, r0
	strb r1, [r5]
loc_81478B0:
	ldrb r0, [r4]
	strb r0, [r3]
	ldrb r1, [r5]
	mov r0, #4
	and r0, r1
	cmp r0, #0
	beq loc_81478CC
	bl sub_814794C
	ldrb r1, [r5]
	mov r0, #0xfb
	and r0, r1
	strb r0, [r5]
	mov r7, #1
loc_81478CC:
	ldrb r1, [r5]
	mov r6, #1
	add r0, r6, #0
	and r0, r1
	cmp r0, #0
	beq loc_8147928
	ldrb r0, [r4]
	ldr r2, off_8147940 // =byte_2010290 
	mov r1, #0x43 
	mov r3, #0x40 
	bl sub_814AB50
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_8147928
	mov r2, #0
	ldr r0, off_8147944 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r1, [r1,#2]
	and r1, r6
	add r6, r0, #0
	ldr r4, off_8147948 // =byte_2010328 
	cmp r1, #0
	bne loc_8147916
	add r3, r6, #0
	mov r1, #1
loc_8147900:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bhi loc_8147916
	ldr r0, [r3]
	ldrb r0, [r0,#2]
	asr r0, r2
	and r0, r1
	cmp r0, #0
	beq loc_8147900
loc_8147916:
	strb r2, [r4]
	mov r0, r8
	strb r2, [r0,#0x4] // (byte_200AF84 - 0x200af80)
	ldrb r0, [r5]
	mov r1, #0xfe
	and r1, r0
	mov r0, #2
	orr r1, r0
	strb r1, [r5]
loc_8147928:
	add r0, r7, #0
loc_814792A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
off_8147934: .word byte_200BC50
off_8147938: .word byte_201033C
off_814793C: .word byte_2010280
off_8147940: .word byte_2010290
off_8147944: .word dword_2010CC0
off_8147948: .word byte_2010328
.endfunc // sub_8147834

.func
.thumb_func
sub_814794C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r0, sp
	mov r5, #0
	strh r5, [r0]
	ldr r4, off_814798C // =byte_2010290 
	ldr r2, dword_8147990 // =0x1000020 
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8147994 // =byte_200AF80 
	ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
	sub r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi loc_814797A
	mov r0, #1
	strb r0, [r4]
loc_814797A:
	ldr r0, off_8147998 // =byte_201028C 
	ldrb r1, [r0]
	mov r0, #0x40 
	and r0, r1
	cmp r0, #0
	beq loc_814799C
	mov r0, #1
	strb r0, [r4,#0x1] // (byte_2010291 - 0x2010290)
	b loc_814799E
off_814798C: .word byte_2010290
dword_8147990: .word 0x1000020
off_8147994: .word byte_200AF80
off_8147998: .word byte_201028C
loc_814799C:
	strb r5, [r4,#0x1] // (byte_2010291 - 0x2010290)
loc_814799E:
	ldr r0, off_8147A70 // =byte_2010290 
	mov r1, #1
	strb r1, [r0,#0x3] // (byte_2010293 - 0x2010290)
	mov r6, #0
	add r4, r0, #0
	ldr r5, off_8147A74 // =dword_2010CC0 
	ldr r0, off_8147A78 // =byte_2010280 
	ldrb r2, [r0]
	mov r3, #1
	add r1, r4, #0
loc_81479B2:
	add r0, r2, #0
	asr r0, r6
	and r0, r3
	cmp r0, #0
	beq loc_81479C2
	ldrb r0, [r1,#0x3] // (byte_2010293 - 0x2010290)
	add r0, #1
	strb r0, [r1,#0x3] // (byte_2010293 - 0x2010290)
loc_81479C2:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_81479B2
	ldr r0, off_8147A78 // =byte_2010280 
	ldrb r0, [r0]
	lsl r0, r0, #1
	mov r1, #1
	orr r0, r1
	strb r0, [r4,#0x2] // (byte_2010292 - 0x2010290)
	ldr r0, [r5]
	add r0, #0xa9
	add r1, r4, #4
	mov r2, #8
	bl sub_81469F0
	ldr r0, [r5]
	add r1, r0, #0
	add r1, #0x94
	ldrh r1, [r1]
	strh r1, [r4,#0x36] // (word_20102C6 - 0x2010290)
	add r0, #0x9a
	ldr r1, off_8147A7C // =unk_20102E0 
	mov r2, #0xd
	bl sub_81469F0
	mov r6, #0
	mov r8, r5
	mov r0, #0xe
	add r0, r0, r4
	mov r10, r0
	add r4, #0x36 
	mov r9, r4
loc_8147A06:
	ldr r0, off_8147A78 // =byte_2010280 
	ldrb r1, [r0]
	asr r1, r6
	mov r0, #1
	and r1, r0
	add r7, r6, #1
	cmp r1, #0
	beq loc_8147A56
	lsl r5, r6, #5
	add r4, r5, #0
	add r4, #0x14
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r4
	add r0, #0x15
	lsl r1, r6, #2
	add r1, r1, r6
	lsl r1, r1, #1
	add r1, r10
	mov r2, #8
	bl sub_81469F0
	mov r2, r8
	ldr r0, [r2]
	add r0, r0, r4
	add r0, #6
	mov r1, #0xd
	mul r1, r6
	ldr r2, dword_8147A80 // = 
	add r1, r1, r2
	mov r2, #0xd
	bl sub_81469F0
	lsl r1, r7, #1
	add r1, r9
	mov r2, r8
	ldr r0, [r2]
	add r0, r0, r5
	ldrh r0, [r0,#0x14]
	strh r0, [r1]
loc_8147A56:
	lsl r0, r7, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_8147A06
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
off_8147A70: .word byte_2010290
off_8147A74: .word dword_2010CC0
off_8147A78: .word byte_2010280
off_8147A7C: .word unk_20102E0
dword_8147A80: .word 0x20102ED
.endfunc // sub_814794C

.func
.thumb_func
sub_8147A84:
	push {r4,r5,lr}
	mov r4, #0
	ldr r5, off_8147AD4 // =byte_201028C 
	ldrb r1, [r5]
	mov r0, #2
	and r0, r1
	cmp r0, #0
	beq loc_8147B14
	ldr r1, off_8147AD8 // =dword_2010CB0 
	ldr r0, off_8147ADC // =byte_2010328 
	ldrb r3, [r0]
	lsl r0, r3, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0x26 
	bne loc_8147AE0
	add r0, r2, #0
	add r0, #0x2c 
	ldrb r1, [r0]
	ldrb r0, [r2,#0x1a]
	add r4, r0, #0
	eor r4, r1
	mov r0, #4
	add r1, r3, #0
	bl sub_814A934
	ldrb r0, [r5]
	mov r2, #0xfd
	and r2, r0
	strb r2, [r5]
	mov r0, #0x40 
	and r0, r2
	cmp r0, #0
	beq loc_8147B08
	mov r1, #0x80
	add r0, r2, #0
	orr r0, r1
	strb r0, [r5]
	b loc_8147B08
off_8147AD4: .word byte_201028C
off_8147AD8: .word dword_2010CB0
off_8147ADC: .word byte_2010328
loc_8147AE0:
	cmp r0, #0x27 
	bne loc_8147B08
	add r0, r2, #0
	add r0, #0x2c 
	ldrb r1, [r0]
	ldrb r0, [r2,#0x1a]
	add r4, r0, #0
	eor r4, r1
	mov r0, #4
	add r1, r3, #0
	bl sub_814A934
	mov r0, #0
	strb r0, [r5]
	ldr r1, off_8147B1C // =byte_200BC50 
	ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #0x22 
	bne loc_8147B08
	mov r0, #3
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
loc_8147B08:
	cmp r4, #0
	beq loc_8147B14
	ldr r1, off_8147B20 // =byte_2010340 
	ldrb r0, [r1]
	orr r4, r0
	strb r4, [r1]
loc_8147B14:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8147B1C: .word byte_200BC50
off_8147B20: .word byte_2010340
.endfunc // sub_8147A84

.func
.thumb_func
sub_8147B24:
	push {lr}
	ldr r0, off_8147B34 // =byte_2010390 
	ldr r1, off_8147B38 // =unk_20103A0 
	mov r2, #0xc
	bl sub_8147B54
	pop {r0}
	bx r0
off_8147B34: .word byte_2010390
off_8147B38: .word unk_20103A0
.endfunc // sub_8147B24

.func
.thumb_func
sub_8147B3C:
	push {lr}
	ldr r0, off_8147B4C // =byte_2010390 
	ldr r1, off_8147B50 // =unk_20103A0 
	mov r2, #0xc
	bl sub_8147C20
	pop {r0}
	bx r0
off_8147B4C: .word byte_2010390
off_8147B50: .word unk_20103A0
.endfunc // sub_8147B3C

.func
.thumb_func
sub_8147B54:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r3, r0, #0
	add r7, r1, #0
	mov r8, r2
	mov r0, sp
	mov r5, #0
	strh r5, [r0]
	lsl r4, r2, #0xa
	lsr r4, r4, #0xb
	mov r0, #0x80
	lsl r0, r0, #0x11
	orr r4, r0
	mov r0, sp
	add r1, r3, #0
	add r2, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, sp
	add r0, #2
	strh r5, [r0]
	add r1, r7, #0
	add r2, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8147BF4 // =unk_200FFF0 
	bl sub_8146A70
	ldr r0, off_8147BF8 // =unk_200FE90 
	bl sub_8146A70
	ldr r1, off_8147BFC // =byte_20101B4 
	mov r0, #1
	strb r0, [r1]
	ldr r1, off_8147C00 // =byte_2010274 
	ldr r0, off_8147C04 // =byte_2010290 
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	strb r0, [r1]
	mov r2, #0
	ldr r6, off_8147C08 // =byte_2010220 
	mov r3, #0
	ldr r5, off_8147C0C // =word_2010400 
	ldr r4, off_8147C10 // =word_2010428 
loc_8147BAE:
	add r0, r2, r6
	strb r3, [r0]
	lsl r1, r2, #1
	add r0, r1, r5
	strh r3, [r0]
	add r1, r1, r4
	strh r3, [r1]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_8147BAE
	ldr r1, off_8147C14 // =byte_2010390 
	mov r0, #0
	strb r0, [r1]
	ldr r4, off_8147C18 // =byte_20103E0 
	ldrb r1, [r4]
	mov r0, #0xc
	bl sub_814A934
	ldrb r1, [r4]
	mov r0, #0x20 
	add r2, r7, #0
	mov r3, r8
	bl sub_814AAF0
	ldr r1, off_8147C1C // =byte_200BC50 
	mov r0, #0x31 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
off_8147BF4: .word unk_200FFF0
off_8147BF8: .word unk_200FE90
off_8147BFC: .word byte_20101B4
off_8147C00: .word byte_2010274
off_8147C04: .word byte_2010290
off_8147C08: .word byte_2010220
off_8147C0C: .word word_2010400
off_8147C10: .word word_2010428
off_8147C14: .word byte_2010390
off_8147C18: .word byte_20103E0
off_8147C1C: .word byte_200BC50
.endfunc // sub_8147B54

.func
.thumb_func
sub_8147C20:
	push {r4-r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	ldr r4, off_8147C6C // =byte_200AF80 
	ldrb r0, [r4,#0x1] // (byte_200AF81 - 0x200af80)
	cmp r0, #2
	beq loc_8147C36
	ldrb r0, [r4]
	cmp r0, #4
	bne loc_8147C3C
loc_8147C36:
	mov r0, #0xf
	bl sub_813D934
loc_8147C3C:
	ldr r0, off_8147C70 // =Timer2Counter_Reload 
	ldrh r0, [r0]
	bl sub_81453F0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_8147F50
	add r0, r4, #0
	add r1, r7, #0
	bl sub_8147DE0
	ldr r0, off_8147C74 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	// switch 55 cases 
	sub r0, #9
	cmp r0, #0x36 
	bls loc_8147C62
	b def_8147C6A
loc_8147C62:
	lsl r0, r0, #2
	ldr r1, off_8147C78 // =jpt_8147C6A 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
off_8147C6C: .word byte_200AF80
off_8147C70: .word Timer2Counter_Reload
off_8147C74: .word byte_200BC50
off_8147C78: .word jpt_8147C6A
// jump table for switch statement
jpt_8147C6A:  .word loc_8147DAC
	.word def_8147C6A
	.word loc_8147DC0
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word loc_8147D88
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word loc_8147D58
	.word loc_8147DD0
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
	.word def_8147C6A
loc_8147D58:
	ldr r0, off_8147D74 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	orr r0, r1
	cmp r0, #0
	beq loc_8147D7C
	ldr r1, off_8147D78 // =byte_200BC50 
	mov r0, #0x10
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	bl sub_81464D4
	b def_8147C6A
	.balign 4, 0x00
off_8147D74: .word dword_2010CC0
off_8147D78: .word byte_200BC50
loc_8147D7C:
	ldr r1, off_8147D84 // =byte_200BC50 
	mov r0, #5
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_8147C6A
off_8147D84: .word byte_200BC50
loc_8147D88:
	ldr r0, off_8147DA4 // =byte_200FE00 
	ldrb r0, [r0,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #0
	bne def_8147C6A
	ldr r0, off_8147DA8 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	orr r0, r1
	bl sub_814A4CC
	bl sub_8149568
	b def_8147C6A
off_8147DA4: .word byte_200FE00
off_8147DA8: .word dword_2010CC0
loc_8147DAC:
	mov r0, #1
	bl sub_8145120
	ldr r1, off_8147DBC // =byte_200BC50 
	mov r0, #0xa
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_8147C6A
	.balign 4, 0x00
off_8147DBC: .word byte_200BC50
loc_8147DC0:
	bl sub_8144EEC
	ldr r1, off_8147DCC // =byte_200BC50 
	mov r0, #0xc
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_8147C6A
off_8147DCC: .word byte_200BC50
loc_8147DD0:
	bl sub_814A828
	bl sub_813D760
def_8147C6A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8147C20

.func
.thumb_func
sub_8147DE0:
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	ldrb r0, [r4,#1]
	cmp r0, #0
	bne loc_8147E38
	ldr r1, off_8147E18 // =dword_2010CB0 
	ldr r0, off_8147E1C // =byte_20103E0 
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0,#0x34]
	cmp r0, #0x47 
	beq loc_8147E24
	cmp r0, #0x46 
	bne loc_8147E20
	mov r0, #8
	add r1, r2, #0
	bl sub_814A934
	mov r0, #1
	strb r0, [r4,#1]
	add r0, r5, #0
	bl sub_813D7B8
	b loc_8147E38
	.balign 4, 0x00
off_8147E18: .word dword_2010CB0
off_8147E1C: .word byte_20103E0
loc_8147E20:
	cmp r0, #0x48 
	bne loc_8147E38
loc_8147E24:
	mov r0, #8
	add r1, r2, #0
	bl sub_814A934
	ldr r0, off_8147E40 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #0x31 
	bne loc_8147E38
	mov r0, #2
	strb r0, [r4,#1]
loc_8147E38:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0, 0
off_8147E40: .word byte_200BC50
.endfunc // sub_8147DE0

.func
.thumb_func
sub_8147E44:
	push {r4,lr}
	add r4, r0, #0
	add r3, r1, #0
	ldr r1, off_8147E7C // =byte_20103E0 
	mov r0, #0x80
	lsl r0, r0, #0x11
	ldrb r1, [r1]
	lsl r0, r1
	lsr r0, r0, #0x18
	add r1, r3, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r2, off_8147E80 // =byte_2010390 
	bl sub_814AB50
	lsl r0, r0, #0x10
	cmp r0, #0
	beq loc_8147E8C
	ldr r0, off_8147E84 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #0x31 
	bne loc_8147E74
	mov r0, #4
	strb r0, [r4]
loc_8147E74:
	ldr r1, off_8147E88 // =byte_20101B4 
	mov r0, #0x83
	strb r0, [r1]
	b loc_8147E90
off_8147E7C: .word byte_20103E0
off_8147E80: .word byte_2010390
off_8147E84: .word byte_200BC50
off_8147E88: .word byte_20101B4
loc_8147E8C:
	mov r0, #2
	strb r0, [r4]
loc_8147E90:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8147E44

.func
.thumb_func
sub_8147E98:
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	ldr r1, off_8147ED4 // =dword_2010CB0 
	ldr r0, off_8147ED8 // =byte_20103E0 
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x26 
	bne loc_8147EDC
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
	mov r1, #0
	mov r0, #3
	strb r0, [r4]
	strb r1, [r4,#2]
	ldrb r4, [r5,#1]
	mov r0, #0
	bl sub_802D064
	add r1, r0, #0
	add r0, r4, #0
	bl sub_813D78C
	b loc_8147EF4
	.balign 4, 0x00
off_8147ED4: .word dword_2010CB0
off_8147ED8: .word byte_20103E0
loc_8147EDC:
	cmp r0, #0x27 
	bne loc_8147EF4
	mov r0, #4
	add r1, r2, #0
	bl sub_814A934
	ldr r0, off_8147EFC // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #0x31 
	bne loc_8147EF4
	mov r0, #4
	strb r0, [r4]
loc_8147EF4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8147EFC: .word byte_200BC50
.endfunc // sub_8147E98

.func
.thumb_func
sub_8147F00:
	push {r4-r7,lr}
	sub sp, sp, #4
	add r7, r0, #0
	add r5, r1, #0
	ldr r4, off_8147F44 // =byte_2010390 
	ldrb r6, [r4]
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	lsl r2, r5, #0xa
	lsr r2, r2, #0xb
	mov r0, #0x80
	lsl r0, r0, #0x11
	orr r2, r0
	mov r0, sp
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8147F48 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_8147F3A
	add r0, r6, #1
	strb r0, [r4]
	ldr r0, off_8147F4C // =byte_200DD10 
	add r1, r7, #0
	add r2, r5, #0
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_8147F3A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8147F44: .word byte_2010390
off_8147F48: .word byte_20101B4
off_8147F4C: .word byte_200DD10
.endfunc // sub_8147F00

.func
.thumb_func
sub_8147F50:
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r2, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq loc_8147F80
	cmp r0, #1
	bgt loc_8147F66
	cmp r0, #0
	beq loc_8147F72
	b loc_8147F90
loc_8147F66:
	cmp r0, #2
	beq loc_8147F8A
	cmp r0, #3
	bne loc_8147F90
	mov r0, #0
	strb r0, [r4]
loc_8147F72:
	ldrb r0, [r4,#2]
	cmp r0, #0
	beq loc_8147F90
	add r0, r1, #0
	add r1, r5, #0
	bl sub_8147F00
loc_8147F80:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_8147E44
	b loc_8147F90
loc_8147F8A:
	add r0, r4, #0
	bl sub_8147E98
loc_8147F90:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8147F50

.func
.thumb_func
sub_8147F98:
	push {r4-r6,lr}
	sub sp, sp, #4
	mov r0, #4
	bl sub_803DE88
	ldr r4, off_8147FF4 // =unk_2010350 
	add r0, r4, #0
	bl sub_81465FC
	mov r6, #0
	mov r5, #0
	strh r5, [r4,#0x2] // (word_2010352 - 0x2010350)
	bl sub_813D960
	ldr r0, off_8147FF8 // =sub_814801C+1 
	ldr r1, off_8147FFC // =sub_8148208+1 
	bl sub_8144DF0
	ldr r0, off_8148000 // =Timer2Counter_Reload 
	strh r5, [r0]
	ldr r1, off_8148004 // =Timer2Control 
	mov r0, #0x83
	strh r0, [r1]
	ldr r1, off_8148008 // =byte_200BC50 
	mov r2, #1
	mov r0, #1
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	strb r2, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	ldr r0, off_814800C // =byte_2010288 
	strb r6, [r0]
	ldr r0, off_8148010 // =byte_20103E0 
	strb r6, [r0]
	mov r0, sp
	strh r5, [r0]
	ldr r1, off_8148014 // =byte_2010290 
	ldr r2, dword_8148018 // =0x1000020 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	bl sub_8146CFC
	mov r0, #0
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	.balign 4, 0x00
off_8147FF4: .word unk_2010350
off_8147FF8: .word sub_814801C+1
off_8147FFC: .word sub_8148208+1
off_8148000: .word Timer2Counter_Reload
off_8148004: .word Timer2Control
off_8148008: .word byte_200BC50
off_814800C: .word byte_2010288
off_8148010: .word byte_20103E0
off_8148014: .word byte_2010290
dword_8148018: .word 0x1000020
.endfunc // sub_8147F98

.func
.thumb_func
sub_814801C:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	ldr r2, off_8148048 // =byte_200AF80 
	cmp r0, #0x32 
	bne loc_814802C
	b loc_8148164
loc_814802C:
	cmp r0, #0x32 
	bgt loc_814806C
	cmp r0, #0x23 
	beq loc_8148104
	cmp r0, #0x23 
	bgt loc_8148058
	cmp r0, #0x20 
	beq loc_81480BC
	cmp r0, #0x20 
	bgt loc_814804C
	cmp r0, #0
	bne loc_8148046
	b loc_8148184
loc_8148046:
	b loc_8148200
off_8148048: .word byte_200AF80
loc_814804C:
	cmp r0, #0x21 
	bne loc_8148052
	b loc_8148184
loc_8148052:
	cmp r0, #0x22 
	beq loc_81480D0
	b loc_8148200
loc_8148058:
	cmp r0, #0x25 
	beq loc_8148134
	cmp r0, #0x25 
	blt loc_8148120
	cmp r0, #0x30 
	bne loc_8148066
	b loc_8148178
loc_8148066:
	cmp r0, #0x31 
	beq loc_8148148
	b loc_8148200
loc_814806C:
	cmp r0, #0x50 
	beq loc_81480B4
	cmp r0, #0x50 
	bgt loc_8148094
	cmp r0, #0x42 
	bne loc_814807A
	b loc_814819C
loc_814807A:
	cmp r0, #0x42 
	bgt loc_8148086
	cmp r0, #0x33 
	bne loc_8148084
	b loc_8148178
loc_8148084:
	b loc_8148200
loc_8148086:
	cmp r0, #0x43 
	bne loc_814808C
	b loc_8148180
loc_814808C:
	cmp r0, #0x44 
	bne loc_8148092
	b loc_8148190
loc_8148092:
	b loc_8148200
loc_8148094:
	cmp r0, #0xf1
	bne loc_814809A
	b loc_81481E0
loc_814809A:
	cmp r0, #0xf1
	bgt loc_81480A6
	cmp r0, #0xf0
	bne loc_81480A4
	b loc_81481A8
loc_81480A4:
	b loc_8148200
loc_81480A6:
	cmp r1, #0xf2
	bne loc_81480AC
	b loc_81481F4
loc_81480AC:
	cmp r1, #0xff
	bne loc_81480B2
	b loc_81481CC
loc_81480B2:
	b loc_8148200
loc_81480B4:
	mov r0, #1
	bl sub_8144DB0
	b loc_8148200
loc_81480BC:
	ldr r0, off_81480C8 // =byte_2010324 
	ldr r1, off_81480CC // =byte_200FE00 
	ldrh r1, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	strb r1, [r0]
	b loc_8148200
	.balign 4, 0x00
off_81480C8: .word byte_2010324
off_81480CC: .word byte_200FE00
loc_81480D0:
	ldr r1, off_81480F4 // =byte_20103E0 
	ldr r0, off_81480F8 // =byte_200FE00 
	ldrh r0, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	strb r0, [r1]
	strb r0, [r2,#0x4] // (byte_200AF84 - 0x200af80)
	ldrb r1, [r1]
	ldr r2, off_81480FC // =byte_2010290 
	mov r0, #0x20 
	mov r3, #0x40 
	bl sub_814AAF0
	ldr r1, off_8148100 // =byte_200BC50 
	mov r0, #0xd
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0xa
	bl sub_813D934
	b loc_8148200
off_81480F4: .word byte_20103E0
off_81480F8: .word byte_200FE00
off_81480FC: .word byte_2010290
off_8148100: .word byte_200BC50
loc_8148104:
	ldr r1, off_8148118 // =word_20102D0 
	mov r0, #3
	strh r0, [r1]
	ldr r1, off_814811C // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #2
	bl sub_813D934
	b loc_8148200
off_8148118: .word word_20102D0
off_814811C: .word byte_200BC50
loc_8148120:
	ldr r1, off_8148130 // =byte_200BC50 
	mov r0, #0x25 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x10
	bl sub_813D934
	b loc_8148200
	.byte 0, 0
off_8148130: .word byte_200BC50
loc_8148134:
	ldr r1, off_8148144 // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #3
	bl sub_813D934
	b loc_8148200
	.balign 4, 0x00
off_8148144: .word byte_200BC50
loc_8148148:
	mov r0, #0xe
	bl sub_813D934
	ldr r2, off_814815C // =word_2010338 
	ldr r1, off_8148160 // =byte_200BC50 
	ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	strh r0, [r2]
	mov r0, #0xe
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148200
off_814815C: .word word_2010338
off_8148160: .word byte_200BC50
loc_8148164:
	ldr r0, off_8148170 // =byte_200BC50 
	ldr r1, off_8148174 // =word_2010338 
	ldrh r1, [r1]
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148200
	.byte 0, 0
off_8148170: .word byte_200BC50
off_8148174: .word word_2010338
loc_8148178:
	mov r0, #0xf
	bl sub_813D934
	b loc_8148200
loc_8148180:
	bl sub_814A828
loc_8148184:
	ldr r1, off_814818C // =byte_200BC50 
	mov r0, #5
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148200
off_814818C: .word byte_200BC50
loc_8148190:
	ldr r1, off_8148198 // =byte_200BC50 
	mov r0, #0xb
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148200
off_8148198: .word byte_200BC50
loc_814819C:
	ldr r1, off_81481A4 // =byte_200BC50 
	mov r0, #0x34 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148200
off_81481A4: .word byte_200BC50
loc_81481A8:
	ldr r1, off_81481C0 // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	ldr r1, off_81481C4 // =word_20102D0 
	ldr r0, off_81481C8 // =byte_200FE00 
	ldrh r0, [r0,#0x14] // (word_200FE14 - 0x200fe00)
	strh r0, [r1]
	mov r0, #5
	bl sub_813D934
	b loc_8148200
	.byte 0, 0
off_81481C0: .word byte_200BC50
off_81481C4: .word word_20102D0
off_81481C8: .word byte_200FE00
loc_81481CC:
	ldr r1, off_81481DC // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #1
	bl sub_813D934
	b loc_8148200
	.balign 4, 0x00
off_81481DC: .word byte_200BC50
loc_81481E0:
	ldr r1, off_81481F0 // =byte_200BC50 
	mov r0, #1
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0xd
	bl sub_813D934
	b loc_8148200
	.byte 0, 0
off_81481F0: .word byte_200BC50
loc_81481F4:
	ldr r1, off_8148204 // =byte_200BC50 
	mov r0, #1
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x13
	bl sub_813D934
loc_8148200:
	pop {r0}
	bx r0
off_8148204: .word byte_200BC50
.endfunc // sub_814801C

.func
.thumb_func
sub_8148208:
	push {lr}
	bl sub_814B694
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8148208

.func
.thumb_func
sub_8148214:
	push {lr}
	ldr r0, off_8148220 // =dword_814FE90 
	bl sub_8148234
	pop {r0}
	bx r0
off_8148220: .word dword_814FE90
.endfunc // sub_8148214

.func
.thumb_func
sub_8148224:
	push {lr}
	ldr r0, off_8148230 // =byte_814FE94 
	bl sub_8148234
	pop {r0}
	bx r0
off_8148230: .word byte_814FE94
.endfunc // sub_8148224

.func
.thumb_func
sub_8148234:
	push {r4,lr}
	add r4, r0, #0
	ldr r1, off_814825C // =byte_2010324 
	mov r0, #0
	strb r0, [r1]
	ldr r0, off_8148260 // =Timer2Counter_Reload 
	ldrh r0, [r0]
	bl sub_81453F0
	ldr r0, off_8148264 // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	// switch 63 cases 
	sub r0, #1
	cmp r0, #0x3e 
	bls loc_8148252
	b def_814825A
loc_8148252:
	lsl r0, r0, #2
	ldr r1, off_8148268 // =jpt_814825A 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
off_814825C: .word byte_2010324
off_8148260: .word Timer2Counter_Reload
off_8148264: .word byte_200BC50
off_8148268: .word jpt_814825A
// jump table for switch statement
jpt_814825A:  .word loc_8148368
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word loc_8148380
	.word loc_81483B0
	.word loc_81483E8
	.word def_814825A
	.word loc_814850C
	.word def_814825A
	.word loc_8148520
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word loc_81484E8
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word loc_814843C
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word loc_81484B8
	.word loc_8148530
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
	.word def_814825A
loc_8148368:
	ldr r0, off_8148378 // =unk_2010350 
	bl sub_8144E70
	ldr r1, off_814837C // =byte_200BC50 
	mov r0, #2
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_814825A
	.balign 4, 0x00
off_8148378: .word unk_2010350
off_814837C: .word byte_200BC50
loc_8148380:
	mov r0, #0
	mov r1, #0
	mov r2, #0x78 
	add r3, r4, #0
	bl sub_8144EF8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0
	beq loc_8148396
	b def_814825A
loc_8148396:
	ldr r0, off_81483A8 // =byte_2010324 
	strb r1, [r0]
	ldr r1, off_81483AC // =byte_200BC50 
	mov r0, #6
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	bl sub_8146854
	b def_814825A
	.balign 4, 0x00
off_81483A8: .word byte_2010324
off_81483AC: .word byte_200BC50
loc_81483B0:
	ldr r0, off_81483D8 // =byte_2010288 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_81483C4
	ldr r0, off_81483DC // =byte_200FE00 
	ldrb r0, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
	cmp r0, #8
	bls loc_81483C4
	cmp r0, #0xb
	bls loc_81483E0
loc_81483C4:
	bl sub_803C514
	cmp r0, #0
	beq loc_81483CE
	b def_814825A
loc_81483CE:
	mov r0, #6
	bl sub_813D934
	b def_814825A
	.balign 4, 0x00
off_81483D8: .word byte_2010288
off_81483DC: .word byte_200FE00
loc_81483E0:
	mov r0, #7
	bl sub_813D934
	b def_814825A
loc_81483E8:
	ldr r0, off_8148418 // =dword_2010CC0 
	ldr r1, [r0]
	ldr r2, off_814841C // =unk_2010330 
	ldr r0, off_8148420 // =byte_20103E4 
	ldrb r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #5
	add r1, r1, r0
	ldrh r0, [r1,#0x14]
	mov r1, #0x78 
	bl sub_8144FD0
	lsl r0, r0, #0x18
	cmp r0, #0
	bne loc_8148428
	mov r0, #9
	bl sub_813D934
	ldr r1, off_8148424 // =byte_200BC50 
	mov r0, #8
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_814825A
	.balign 4, 0x00
off_8148418: .word dword_2010CC0
off_814841C: .word unk_2010330
off_8148420: .word byte_20103E4
off_8148424: .word byte_200BC50
loc_8148428:
	mov r0, #8
	bl sub_813D934
	ldr r1, off_8148438 // =byte_200BC50 
	mov r0, #7
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_814825A
	.balign 4, 0x00
off_8148438: .word byte_200BC50
loc_814843C:
	ldr r1, off_8148470 // =dword_2010CB0 
	ldr r0, off_8148474 // =byte_20103E0 
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0,#0x34]
	cmp r0, #0x46 
	bne loc_8148492
	mov r0, #8
	add r1, r2, #0
	bl sub_814A934
	ldr r1, off_8148478 // =byte_2010290 
	ldrb r0, [r1,#0x1] // (byte_2010291 - 0x2010290)
	cmp r0, #0
	beq loc_814847C
	ldrb r0, [r1]
	cmp r0, #0
	bne loc_8148482
	bl sub_813D8D0
	mov r0, #0
	bl sub_813D934
	b def_814825A
off_8148470: .word dword_2010CB0
off_8148474: .word byte_20103E0
off_8148478: .word byte_2010290
loc_814847C:
	ldrb r0, [r1]
	cmp r0, #0
	beq loc_814848A
loc_8148482:
	mov r0, #0x12
	bl sub_813D934
	b def_814825A
loc_814848A:
	mov r0, #0x11
	bl sub_813D934
	b def_814825A
loc_8148492:
	sub r0, #0x47 
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi def_814825A
	mov r0, #8
	add r1, r2, #0
	bl sub_814A934
	ldr r1, off_81484B4 // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #4
	bl sub_813D934
	b def_814825A
	.balign 4, 0x00
off_81484B4: .word byte_200BC50
loc_81484B8:
	ldr r0, off_81484D4 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	orr r0, r1
	cmp r0, #0
	beq loc_81484DC
	ldr r1, off_81484D8 // =byte_200BC50 
	mov r0, #0x10
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	bl sub_81464D4
	b def_814825A
	.balign 4, 0x00
off_81484D4: .word dword_2010CC0
off_81484D8: .word byte_200BC50
loc_81484DC:
	ldr r1, off_81484E4 // =byte_200BC50 
	mov r0, #5
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_814825A
off_81484E4: .word byte_200BC50
loc_81484E8:
	ldr r0, off_8148504 // =byte_200FE00 
	ldrb r0, [r0,#0x2] // (byte_200FE02 - 0x200fe00)
	cmp r0, #0
	bne def_814825A
	ldr r0, off_8148508 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	orr r0, r1
	bl sub_814A4CC
	bl sub_8149568
	b def_814825A
off_8148504: .word byte_200FE00
off_8148508: .word dword_2010CC0
loc_814850C:
	mov r0, #1
	bl sub_8145120
	ldr r1, off_814851C // =byte_200BC50 
	mov r0, #0xa
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_814825A
	.balign 4, 0x00
off_814851C: .word byte_200BC50
loc_8148520:
	bl sub_8144EEC
	ldr r1, off_814852C // =byte_200BC50 
	mov r0, #0xc
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b def_814825A
off_814852C: .word byte_200BC50
loc_8148530:
	bl sub_814A828
	bl sub_813D760
def_814825A:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8148234

.func
.thumb_func
sub_8148540:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r0, off_81486AC // =byte_200AF80 
	mov r8, r0
	mov r0, sp
	mov r4, #0
	strh r4, [r0]
	ldr r1, off_81486B0 // =byte_20101E0 
	ldr r5, dword_81486B4 // =0x1000020 
	add r2, r5, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, sp
	add r0, #2
	strh r4, [r0]
	ldr r1, off_81486B8 // =unk_2010230 
	add r2, r5, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_81486BC // =unk_200FFF0 
	bl sub_8146A70
	ldr r0, off_81486C0 // =unk_200FE90 
	bl sub_8146A70
	ldr r0, off_81486C4 // =byte_2010270 
	strb r4, [r0]
	ldr r0, off_81486C8 // =byte_2010408 
	strb r4, [r0]
	ldr r1, off_81486CC // =dword_2010418 
	mov r0, #0
	str r0, [r1]
	ldr r0, off_81486D0 // =byte_20103F4 
	strb r4, [r0]
	ldr r0, off_81486D4 // =byte_2010434 
	strb r4, [r0]
	ldr r0, off_81486D8 // =byte_20101D4 
	strb r4, [r0]
	ldr r0, off_81486DC // =byte_20103F8 
	strb r4, [r0]
	ldr r0, off_81486E0 // =byte_2010480 
	strb r4, [r0]
	mov r4, #0
	ldr r1, off_81486E4 // =byte_2010220 
	mov r12, r1
	mov r2, #0
	ldr r7, off_81486E8 // =word_2010400 
	ldr r6, off_81486EC // =word_2010420 
	ldr r5, off_81486F0 // =word_2010428 
	ldr r3, off_81486F4 // =unk_2010410 
loc_81485A8:
	mov r1, r12
	add r0, r4, r1
	strb r2, [r0]
	lsl r1, r4, #1
	add r0, r1, r7
	strh r2, [r0]
	add r0, r1, r6
	strh r2, [r0]
	add r0, r1, r5
	strh r2, [r0]
	add r1, r1, r3
	strh r2, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_81485A8
	ldr r0, off_81486F8 // =byte_20101B0 
	mov r2, #1
	strb r2, [r0]
	ldr r0, off_81486FC // =byte_20101D0 
	strb r2, [r0]
	ldr r0, off_8148700 // =byte_20101B4 
	strb r2, [r0]
	ldr r1, off_8148704 // =byte_20103F0 
	mov r0, #0
	strb r0, [r1]
	ldr r1, off_8148708 // =byte_2010274 
	ldr r3, off_814870C // =byte_2010290 
	ldrb r0, [r3,#0x2] // (byte_2010292 - 0x2010290)
	strb r0, [r1]
	ldr r0, off_8148710 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#2]
	lsl r0, r0, #1
	orr r0, r2
	strb r0, [r3,#0x2] // (byte_2010292 - 0x2010290)
	ldr r4, off_81486B0 // =byte_20101E0 
	add r0, r4, #0
	add r0, #0x3c 
	mov r1, #1
	strb r1, [r0]
	ldr r0, off_8148714 // =byte_2010430 
	strb r1, [r0]
	bl sub_803ECFC
	add r0, r4, #0
	mov r1, #0xc
	bl sub_803F030
	ldr r0, off_8148718 // =sub_8148738+1 
	bl sub_81463E8
	ldr r0, off_814871C // =sub_8148878+1 
	bl sub_81463D0
	mov r4, #0
loc_814861A:
	ldr r5, off_814870C // =byte_2010290 
	ldrb r1, [r5,#0x2] // (byte_2010292 - 0x2010290)
	mov r6, #2
	add r0, r6, #0
	lsl r0, r4
	and r1, r0
	cmp r1, #0
	beq loc_8148642
	lsl r2, r4, #4
	ldr r0, off_81486B8 // =unk_2010230 
	add r2, r2, r0
	mov r0, #0x10
	add r1, r4, #0
	mov r3, #0xe
	bl sub_814AAF0
	mov r0, #3
	add r1, r4, #0
	bl sub_814A934
loc_8148642:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814861A
	ldr r1, off_81486B0 // =byte_20101E0 
	ldrb r0, [r5,#0x3] // (byte_2010293 - 0x2010290)
	add r2, r1, #0
	add r2, #0x3d 
	strb r0, [r2]
	ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
	lsr r0, r0, #1
	mov r2, #0x40 
	bl sub_814AB7C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0
	bne loc_8148728
	ldr r1, off_8148720 // =byte_2010328 
	strb r0, [r1]
	ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r6
	add r3, r1, #0
	cmp r0, #0
	bne loc_8148698
	add r2, r3, #0
	add r4, r5, #0
	mov r5, #2
loc_814867C:
	ldrb r0, [r2]
	add r0, #1
	strb r0, [r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi loc_8148698
	ldrb r1, [r4,#0x2] // (byte_2010292 - 0x2010290)
	add r0, r5, #0
	ldrb r6, [r3]
	lsl r0, r6
	and r1, r0
	cmp r1, #0
	beq loc_814867C
loc_8148698:
	ldrb r0, [r3]
	mov r1, r8
	strb r0, [r1,#0x4] // (byte_200AF84 - 0x200af80)
	ldrb r0, [r3]
	bl sub_814B068
	ldr r2, off_8148724 // =byte_200BC50 
	mov r1, #0x30 
	strh r1, [r2,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_814872A
off_81486AC: .word byte_200AF80
off_81486B0: .word byte_20101E0
dword_81486B4: .word 0x1000020
off_81486B8: .word unk_2010230
off_81486BC: .word unk_200FFF0
off_81486C0: .word unk_200FE90
off_81486C4: .word byte_2010270
off_81486C8: .word byte_2010408
off_81486CC: .word dword_2010418
off_81486D0: .word byte_20103F4
off_81486D4: .word byte_2010434
off_81486D8: .word byte_20101D4
off_81486DC: .word byte_20103F8
off_81486E0: .word byte_2010480
off_81486E4: .word byte_2010220
off_81486E8: .word word_2010400
off_81486EC: .word word_2010420
off_81486F0: .word word_2010428
off_81486F4: .word unk_2010410
off_81486F8: .word byte_20101B0
off_81486FC: .word byte_20101D0
off_8148700: .word byte_20101B4
off_8148704: .word byte_20103F0
off_8148708: .word byte_2010274
off_814870C: .word byte_2010290
off_8148710: .word dword_2010CC0
off_8148714: .word byte_2010430
off_8148718: .word sub_8148738+1
off_814871C: .word sub_8148878+1
off_8148720: .word byte_2010328
off_8148724: .word byte_200BC50
loc_8148728:
	mov r0, #1
loc_814872A:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8148540

.func
.thumb_func
sub_8148738:
	push {r4,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	cmp r0, #0x43 
	bne loc_8148746
	b loc_814886C
loc_8148746:
	cmp r0, #0x43 
	bgt loc_8148774
	cmp r0, #0x32 
	bne loc_8148750
	b loc_814886C
loc_8148750:
	cmp r0, #0x32 
	bgt loc_814875E
	cmp r0, #0x30 
	beq loc_81487B0
	cmp r0, #0x31 
	beq loc_81487A2
	b loc_814886C
loc_814875E:
	cmp r0, #0x40 
	bne loc_8148764
	b loc_814886C
loc_8148764:
	cmp r0, #0x40 
	bgt loc_814876E
	cmp r0, #0x33 
	beq loc_81487B0
	b loc_814886C
loc_814876E:
	cmp r0, #0x42 
	beq loc_81487CC
	b loc_814886C
loc_8148774:
	cmp r0, #0xf0
	beq loc_81487E4
	cmp r0, #0xf0
	bgt loc_8148786
	cmp r0, #0x44 
	beq loc_81487D8
	cmp r0, #0x50 
	beq loc_8148794
	b loc_814886C
loc_8148786:
	cmp r1, #0xf2
	beq loc_8148860
	cmp r1, #0xf2
	blt loc_8148834
	cmp r1, #0xff
	beq loc_8148844
	b loc_814886C
loc_8148794:
	bl sub_8148B80
	bl sub_8148BCC
	ldr r1, off_81487AC // =byte_2010368 
	mov r0, #0
	strb r0, [r1]
loc_81487A2:
	mov r0, #0xe
	bl sub_813D934
	b loc_814886C
	.balign 4, 0x00
off_81487AC: .word byte_2010368
loc_81487B0:
	ldr r1, off_81487C4 // =byte_2010408 
	mov r0, #1
	strb r0, [r1]
	ldr r1, off_81487C8 // =byte_2010368 
	mov r0, #0
	strb r0, [r1]
	mov r0, #0xf
	bl sub_813D934
	b loc_814886C
off_81487C4: .word byte_2010408
off_81487C8: .word byte_2010368
loc_81487CC:
	ldr r1, off_81487D4 // =byte_200BC50 
	mov r0, #0x34 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_814886C
off_81487D4: .word byte_200BC50
loc_81487D8:
	ldr r1, off_81487E0 // =byte_200BC50 
	mov r0, #0xb
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_814886C
off_81487E0: .word byte_200BC50
loc_81487E4:
	ldr r1, off_8148804 // =byte_200FE00 
	ldrh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	cmp r0, #0x26 
	bne loc_8148810
	ldr r0, off_8148808 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #0x8f
	beq loc_81487FC
	ldr r0, off_814880C // =byte_2010290 
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	cmp r0, #1
	bne loc_814886C
loc_81487FC:
	mov r0, #0
	strh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
	b loc_814886C
	.balign 4, 0x00
off_8148804: .word byte_200FE00
off_8148808: .word byte_20101B4
off_814880C: .word byte_2010290
loc_8148810:
	ldrh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
	cmp r0, #0
	beq loc_814886C
	ldr r1, off_814882C // =byte_200BC50 
	mov r2, #0
	mov r0, #0x32 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	ldr r0, off_8148830 // =byte_2010368 
	strb r2, [r0]
	mov r0, #0x15
	bl sub_813D934
	b loc_814886C
	.balign 4, 0x00
off_814882C: .word byte_200BC50
off_8148830: .word byte_2010368
loc_8148834:
	ldr r1, off_8148840 // =byte_200BC50 
	mov r4, #0
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0xd
	b loc_814884E
off_8148840: .word byte_200BC50
loc_8148844:
	ldr r1, off_8148858 // =byte_200BC50 
	mov r4, #0
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #1
loc_814884E:
	bl sub_813D934
	ldr r0, off_814885C // =byte_2010368 
	strb r4, [r0]
	b loc_814886C
off_8148858: .word byte_200BC50
off_814885C: .word byte_2010368
loc_8148860:
	ldr r1, off_8148874 // =byte_2010368 
	mov r0, #0
	strb r0, [r1]
	mov r0, #0x13
	bl sub_813D934
loc_814886C:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8148874: .word byte_2010368
.endfunc // sub_8148738

.func
.thumb_func
sub_8148878:
	push {lr}
	bl sub_814B694
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8148878

.func
.thumb_func
sub_8148884:
	push {lr}
	ldr r1, off_81488F4 // =byte_2010368 
loc_8148888:
	ldrb r0, [r1]
	cmp r0, #1
	beq loc_8148888
	mov r0, #0
	bl sub_81453F0
	ldr r3, off_81488F8 // =byte_2010408 
	ldrb r0, [r3]
	cmp r0, #0
	beq loc_81488B4
	ldr r1, off_81488FC // =byte_2010270 
	ldrb r0, [r1]
	cmp r0, #0
	beq loc_81488B4
	mov r2, #0
	strb r2, [r1]
	ldr r0, off_8148900 // =byte_20101D0 
	mov r1, #1
	strb r1, [r0]
	ldr r0, off_8148904 // =byte_20101B0 
	strb r1, [r0]
	strb r2, [r3]
loc_81488B4:
	bl sub_8148A80
	ldr r0, off_8148908 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#3]
	cmp r0, #0
	bne loc_8148920
	ldr r0, off_814890C // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	cmp r0, #0x30 
	bne loc_8148920
	ldr r0, off_8148910 // =byte_2010430 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_8148920
	ldr r1, off_81488F4 // =byte_2010368 
	mov r0, #1
	strb r0, [r1]
	ldr r0, off_81488FC // =byte_2010270 
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_814891C
	ldr r0, off_8148914 // =byte_2010328 
	ldrb r0, [r0]
	ldr r1, off_8148918 // =byte_20101E0 
	mov r2, #0x40 
	bl sub_814AFD4
	mov r0, #1
	bl sub_8144DB0
	b loc_8148920
off_81488F4: .word byte_2010368
off_81488F8: .word byte_2010408
off_81488FC: .word byte_2010270
off_8148900: .word byte_20101D0
off_8148904: .word byte_20101B0
off_8148908: .word dword_2010CC0
off_814890C: .word byte_200BC50
off_8148910: .word byte_2010430
off_8148914: .word byte_2010328
off_8148918: .word byte_20101E0
loc_814891C:
	bl sub_81493E4
loc_8148920:
	ldr r0, off_8148938 // =byte_200BC50 
	ldrh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	add r2, r0, #0
	// switch 64 cases 
	cmp r1, #0x3f 
	bls loc_814892C
	b def_8148934
loc_814892C:
	lsl r0, r1, #2
	ldr r1, off_814893C // =jpt_8148934 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.balign 4, 0x00
off_8148938: .word byte_200BC50
off_814893C: .word jpt_8148934
// jump table for switch statement
jpt_8148934:  .word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word loc_8148A6A
	.word def_8148934
	.word loc_8148A52
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word loc_8148A40
	.word def_8148934
	.word loc_8148A60
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
	.word def_8148934
loc_8148A40:
	mov r0, #0
	strh r0, [r2,#0x8] // (word_200BC58 - 0x200bc50)
	bl sub_814A828
	bl sub_8144D64
	bl sub_813D760
	b def_8148934
loc_8148A52:
	bl sub_8144EEC
	ldr r1, off_8148A5C // =byte_200BC50 
	mov r0, #0xc
	b loc_8148A74
off_8148A5C: .word byte_200BC50
loc_8148A60:
	bl sub_814A828
	bl sub_813D760
	b def_8148934
loc_8148A6A:
	mov r0, #1
	bl sub_8145120
	ldr r1, off_8148A7C // =byte_200BC50 
	mov r0, #0xa
loc_8148A74:
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_8148934:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8148A7C: .word byte_200BC50
.endfunc // sub_8148884

.func
.thumb_func
sub_8148A80:
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r0, off_8148B58 // =byte_20101B4 
	ldrb r2, [r0]
	cmp r2, #0x8f
	beq loc_8148B4E
	ldr r0, off_8148B5C // =byte_20101D0 
	ldr r1, off_8148B60 // =byte_2010290 
	ldrb r0, [r0]
	ldrb r1, [r1,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r1
	cmp r0, r1
	bne loc_8148B4E
	ldr r1, off_8148B64 // =byte_20101E0 
	add r0, r1, #0
	add r0, #0x3c 
	ldrb r6, [r0]
	cmp r2, #1
	bne loc_8148AB6
	ldr r0, off_8148B68 // =byte_20103F0 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_8148AB6
	add r0, r1, #0
	mov r1, #0x40 
	bl sub_803F334
loc_8148AB6:
	ldr r1, off_8148B6C // =byte_2010430 
	mov r0, #0
	strb r0, [r1]
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r4, off_8148B64 // =byte_20101E0 
	ldr r2, dword_8148B70 // =0x1000020 
	mov r0, sp
	add r1, r4, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8148B60 // =byte_2010290 
	ldrb r0, [r0,#0x3] // (byte_2010293 - 0x2010290)
	add r4, #0x3d 
	strb r0, [r4]
	mov r4, #0
loc_8148AD8:
	mov r0, #0x80
	lsl r0, r0, #0x12
	lsl r0, r4
	lsr r0, r0, #0x18
	ldr r1, off_8148B60 // =byte_2010290 
	ldrb r1, [r1,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r1
	cmp r0, #0
	beq loc_8148B08
	ldr r0, off_8148B58 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_8148B08
	lsl r0, r4, #4
	ldr r1, off_8148B74 // =unk_2010230 
	add r0, r0, r1
	lsl r1, r4, #1
	add r1, r1, r4
	lsl r1, r1, #2
	ldr r2, off_8148B78 // =unk_20101EC 
	add r1, r1, r2
	mov r2, #0xc
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
loc_8148B08:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8148AD8
	ldr r0, off_8148B58 // =byte_20101B4 
	ldrb r4, [r0]
	cmp r4, #1
	bne loc_8148B40
	ldr r5, off_8148B64 // =byte_20101E0 
	add r0, r5, #0
	mov r1, #0xc
	bl sub_803F030
	cmp r0, #0
	bne loc_8148B38
	ldr r0, off_8148B68 // =byte_20103F0 
	strb r4, [r0]
	add r1, r6, #1
	add r0, r5, #0
	add r0, #0x3c 
	strb r1, [r0]
	bl sub_803F05C
loc_8148B38:
	ldr r0, off_8148B5C // =byte_20101D0 
	strb r4, [r0]
	ldr r0, off_8148B7C // =byte_20101B0 
	strb r4, [r0]
loc_8148B40:
	ldr r0, off_8148B60 // =byte_2010290 
	ldrb r0, [r0,#0x3] // (byte_2010293 - 0x2010290)
	cmp r0, #1
	bls loc_8148B4E
	ldr r1, off_8148B6C // =byte_2010430 
	mov r0, #1
	strb r0, [r1]
loc_8148B4E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8148B58: .word byte_20101B4
off_8148B5C: .word byte_20101D0
off_8148B60: .word byte_2010290
off_8148B64: .word byte_20101E0
off_8148B68: .word byte_20103F0
off_8148B6C: .word byte_2010430
dword_8148B70: .word 0x1000020
off_8148B74: .word unk_2010230
off_8148B78: .word unk_20101EC
off_8148B7C: .word byte_20101B0
.endfunc // sub_8148A80

.func
.thumb_func
sub_8148B80:
	push {lr}
	ldr r2, off_8148BA8 // =byte_20101D0 
	ldr r0, off_8148BAC // =byte_200FE00 
	ldrb r0, [r0,#0x3] // (byte_200FE03 - 0x200fe00)
	lsl r0, r0, #1
	ldrb r1, [r2]
	orr r0, r1
	strb r0, [r2]
	ldr r1, off_8148BB0 // =byte_2010290 
	ldrb r1, [r1,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r1
	cmp r0, r1
	bne loc_8148BBC
	ldr r0, off_8148BB4 // =byte_2010270 
	mov r1, #0
	strb r1, [r0]
	ldr r0, off_8148BB8 // =byte_2010430 
	strb r1, [r0]
	b loc_8148BC2
	.balign 4, 0x00
off_8148BA8: .word byte_20101D0
off_8148BAC: .word byte_200FE00
off_8148BB0: .word byte_2010290
off_8148BB4: .word byte_2010270
off_8148BB8: .word byte_2010430
loc_8148BBC:
	ldr r1, off_8148BC8 // =byte_2010270 
	mov r0, #1
	strb r0, [r1]
loc_8148BC2:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8148BC8: .word byte_2010270
.endfunc // sub_8148B80

.func
.thumb_func
sub_8148BCC:
	push {r4-r7,lr}
	ldr r0, off_8148C30 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #0x8f
	bne loc_8148BD8
	b loc_8148D16
loc_8148BD8:
	mov r4, #0
	ldr r5, off_8148C34 // =byte_2010290 
	ldr r7, off_8148C38 // =byte_20101B0 
	ldr r6, off_8148C3C // =unk_2010230 
loc_8148BE0:
	mov r0, #0x80
	lsl r0, r0, #0x12
	lsl r0, r4
	lsr r3, r0, #0x18
	ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r3
	cmp r0, #0
	beq loc_8148CA2
	ldr r1, off_8148C40 // =dword_2010CA0 
	lsl r0, r4, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0,#0x12]
	cmp r0, #0
	beq loc_8148CA2
	ldr r2, off_8148C38 // =byte_20101B0 
	ldrb r1, [r2]
	add r0, r3, #0
	orr r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_814B094
	ldr r0, off_8148C44 // =byte_2010220 
	add r0, r4, r0
	ldrb r3, [r0]
	add r0, r3, #1
	lsl r2, r4, #4
	add r1, r2, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldrb r1, [r1,#0xc]
	add r5, r2, #0
	cmp r0, r1
	bne loc_8148C4C
	ldr r0, off_8148C48 // =word_2010420 
	lsl r1, r4, #1
	add r1, r1, r0
	mov r0, #0
	b loc_8148C92
off_8148C30: .word byte_20101B4
off_8148C34: .word byte_2010290
off_8148C38: .word byte_20101B0
off_8148C3C: .word unk_2010230
off_8148C40: .word dword_2010CA0
off_8148C44: .word byte_2010220
off_8148C48: .word word_2010420
loc_8148C4C:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	bne loc_8148C74
	ldr r1, off_8148C6C // =word_2010400 
	lsl r2, r4, #1
	add r1, r2, r1
	ldrh r0, [r1]
	add r0, #1
	strh r0, [r1]
	ldr r0, off_8148C70 // =word_2010420 
	add r2, r2, r0
	ldrh r0, [r2]
	add r0, #1
	strh r0, [r2]
	b loc_8148C94
off_8148C6C: .word word_2010400
off_8148C70: .word word_2010420
loc_8148C74:
	sub r0, r3, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	bne loc_8148C88
	ldr r0, off_8148C84 // =unk_2010410 
	b loc_8148C8A
	.balign 4, 0x00
off_8148C84: .word unk_2010410
loc_8148C88:
	ldr r0, off_8148CEC // =word_2010428 
loc_8148C8A:
	lsl r1, r4, #1
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, #1
loc_8148C92:
	strh r0, [r1]
loc_8148C94:
	ldr r0, off_8148CF0 // =byte_2010220 
	add r0, r4, r0
	add r1, r5, r6
	ldrb r1, [r1,#0xc]
	strb r1, [r0]
	ldr r5, off_8148CF4 // =byte_2010290 
	ldr r7, off_8148CF8 // =byte_20101B0 
loc_8148CA2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8148BE0
	ldrb r1, [r7]
	ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
	add r3, r0, #0
	add r2, r3, #0
	and r2, r1
	ldr r4, off_8148CFC // =byte_20101D0 
	cmp r2, r0
	bne loc_8148CCC
	ldrb r0, [r4]
	and r3, r0
	cmp r3, r2
	beq loc_8148CD6
	ldr r1, off_8148D00 // =byte_2010434 
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
loc_8148CCC:
	ldrb r0, [r4]
	ldrb r1, [r5,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r1
	cmp r0, r1
	bne loc_8148D16
loc_8148CD6:
	ldrb r0, [r7]
	ldrb r1, [r5,#0x2] // (byte_2010292 - 0x2010290)
	and r0, r1
	cmp r0, r1
	beq loc_8148D16
	ldr r1, off_8148D04 // =byte_20103F8 
	ldrb r0, [r1]
	cmp r0, #0
	bne loc_8148D08
	mov r0, #1
	b loc_8148D14
off_8148CEC: .word word_2010428
off_8148CF0: .word byte_2010220
off_8148CF4: .word byte_2010290
off_8148CF8: .word byte_20101B0
off_8148CFC: .word byte_20101D0
off_8148D00: .word byte_2010434
off_8148D04: .word byte_20103F8
loc_8148D08:
	ldr r1, off_8148D1C // =byte_20101D4 
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	ldr r1, off_8148D20 // =byte_20101B4 
	mov r0, #0x83
loc_8148D14:
	strb r0, [r1]
loc_8148D16:
	pop {r4-r7}
	pop {r0}
	bx r0
off_8148D1C: .word byte_20101D4
off_8148D20: .word byte_20101B4
.endfunc // sub_8148BCC

.func
.thumb_func
sub_8148D24:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r2, off_8148E1C // =byte_2010480 
	mov r0, #0
	strb r0, [r2]
	ldr r4, off_8148E20 // =byte_2010290 
	ldr r5, off_8148E24 // =dword_2010CC0 
	ldr r0, [r5]
	add r0, #0x94
	ldrh r1, [r4,#0x36] // (word_20102C6 - 0x2010290)
	mov r6, sp
	add r6, #2
	ldrh r0, [r0]
	cmp r1, r0
	beq loc_8148D6A
	add r3, r2, #0
	add r7, r4, #0
	add r7, #0x36 
	add r4, r5, #0
loc_8148D4A:
	ldrb r0, [r3]
	add r0, #1
	strb r0, [r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	bhi loc_8148D6A
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r7
	ldr r1, [r4]
	add r1, #0x94
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne loc_8148D4A
loc_8148D6A:
	mov r0, sp
	mov r4, #0
	strh r4, [r0]
	ldr r1, off_8148E28 // =byte_2010390 
	ldr r2, dword_8148E2C // =0x1000008 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	strh r4, [r6]
	ldr r1, off_8148E30 // =unk_20103A0 
	ldr r2, dword_8148E34 // =0x1000020 
	add r0, r6, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8148E38 // =unk_200FFF0 
	bl sub_8146A70
	ldr r0, off_8148E3C // =unk_200FE90 
	bl sub_8146A70
	mov r2, #0
	ldr r7, off_8148E40 // =byte_2010220 
	mov r3, #0
	ldr r6, off_8148E44 // =word_2010400 
	ldr r5, off_8148E48 // =word_2010420 
	ldr r4, off_8148E4C // =word_2010428 
loc_8148D9C:
	add r0, r2, r7
	strb r3, [r0]
	lsl r1, r2, #1
	add r0, r1, r6
	strh r3, [r0]
	add r0, r1, r5
	strh r3, [r0]
	add r1, r1, r4
	strh r3, [r1]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_8148D9C
	ldr r1, off_8148E50 // =byte_20101B4 
	mov r0, #0
	strb r0, [r1]
	ldr r1, off_8148E54 // =byte_2010274 
	ldr r0, off_8148E20 // =byte_2010290 
	ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
	strb r0, [r1]
	ldr r5, off_8148E28 // =byte_2010390 
	mov r0, #0
	strb r0, [r5,#0xc] // (byte_201039C - 0x2010390)
	ldr r0, off_8148E58 // =sub_8148E74+1 
	bl sub_81463E8
	ldr r0, off_8148E5C // =sub_8148FB4+1 
	bl sub_81463D0
	ldr r4, off_8148E60 // =byte_20103E0 
	ldrb r1, [r4]
	ldr r2, off_8148E30 // =unk_20103A0 
	mov r0, #0x10
	mov r3, #0x40 
	bl sub_814AAF0
	ldrb r1, [r4]
	mov r0, #3
	bl sub_814A934
	bl sub_803ECFC
	add r0, r5, #0
	mov r1, #0xc
	bl sub_803F030
	mov r0, #0x80
	lsl r0, r0, #0x11
	ldrb r4, [r4]
	lsl r0, r4
	lsr r0, r0, #0x18
	add r1, r5, #0
	mov r2, #0xe
	bl sub_814AB7C
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_8148E68
	ldr r1, off_8148E64 // =byte_200BC50 
	mov r0, #0x31 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0
	b loc_8148E6A
off_8148E1C: .word byte_2010480
off_8148E20: .word byte_2010290
off_8148E24: .word dword_2010CC0
off_8148E28: .word byte_2010390
dword_8148E2C: .word 0x1000008
off_8148E30: .word unk_20103A0
dword_8148E34: .word 0x1000020
off_8148E38: .word unk_200FFF0
off_8148E3C: .word unk_200FE90
off_8148E40: .word byte_2010220
off_8148E44: .word word_2010400
off_8148E48: .word word_2010420
off_8148E4C: .word word_2010428
off_8148E50: .word byte_20101B4
off_8148E54: .word byte_2010274
off_8148E58: .word sub_8148E74+1
off_8148E5C: .word sub_8148FB4+1
off_8148E60: .word byte_20103E0
off_8148E64: .word byte_200BC50
loc_8148E68:
	mov r0, #1
loc_8148E6A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_8148D24

.func
.thumb_func
sub_8148E74:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	cmp r0, #0x41 
	bgt loc_8148E9E
	cmp r0, #0x40 
	blt loc_8148E86
	b loc_8148FAC
loc_8148E86:
	cmp r0, #0x30 
	beq loc_8148F04
	cmp r0, #0x30 
	bgt loc_8148E90
	b loc_8148FAC
loc_8148E90:
	cmp r0, #0x32 
	beq loc_8148EF0
	cmp r0, #0x32 
	blt loc_8148ED4
	cmp r0, #0x33 
	beq loc_8148F04
	b loc_8148FAC
loc_8148E9E:
	cmp r0, #0x50 
	beq loc_8148ECE
	cmp r0, #0x50 
	bgt loc_8148EB6
	cmp r0, #0x43 
	bne loc_8148EAC
	b loc_8148FAC
loc_8148EAC:
	cmp r0, #0x43 
	blt loc_8148F18
	cmp r0, #0x44 
	beq loc_8148F24
	b loc_8148FAC
loc_8148EB6:
	cmp r0, #0xf1
	beq loc_8148F78
	cmp r0, #0xf1
	bgt loc_8148EC4
	cmp r0, #0xf0
	beq loc_8148F30
	b loc_8148FAC
loc_8148EC4:
	cmp r1, #0xf2
	beq loc_8148FA0
	cmp r1, #0xff
	beq loc_8148F8C
	b loc_8148FAC
loc_8148ECE:
	bl sub_814912C
	b loc_8148FAC
loc_8148ED4:
	mov r0, #0xe
	bl sub_813D934
	ldr r2, off_8148EE8 // =word_2010338 
	ldr r1, off_8148EEC // =byte_200BC50 
	ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	strh r0, [r2]
	mov r0, #0xe
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148FAC
off_8148EE8: .word word_2010338
off_8148EEC: .word byte_200BC50
loc_8148EF0:
	ldr r0, off_8148EFC // =byte_200BC50 
	ldr r1, off_8148F00 // =word_2010338 
	ldrh r1, [r1]
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148FAC
	.balign 4, 0x00
off_8148EFC: .word byte_200BC50
off_8148F00: .word word_2010338
loc_8148F04:
	ldr r1, off_8148F14 // =byte_200BC50 
	mov r0, #0x32 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0xf
	bl sub_813D934
	b loc_8148FAC
	.balign 4, 0x00
off_8148F14: .word byte_200BC50
loc_8148F18:
	ldr r1, off_8148F20 // =byte_200BC50 
	mov r0, #0x34 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148FAC
off_8148F20: .word byte_200BC50
loc_8148F24:
	ldr r1, off_8148F2C // =byte_200BC50 
	mov r0, #0xb
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	b loc_8148FAC
off_8148F2C: .word byte_200BC50
loc_8148F30:
	ldr r1, off_8148F6C // =byte_200FE00 
	ldrh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
	cmp r0, #0x30 
	bne loc_8148F56
	ldr r0, off_8148F70 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #0x8f
	bne loc_8148F56
	ldrh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
	cmp r0, #3
	bne loc_8148F56
	mov r0, #0
	strh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
	ldr r1, off_8148F74 // =byte_200BC50 
	mov r0, #0x32 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x15
	bl sub_813D934
loc_8148F56:
	ldr r0, off_8148F6C // =byte_200FE00 
	ldrh r0, [r0,#0x16] // (word_200FE16 - 0x200fe00)
	cmp r0, #0
	beq loc_8148FAC
	ldr r1, off_8148F74 // =byte_200BC50 
	mov r0, #0x32 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x15
	bl sub_813D934
	b loc_8148FAC
off_8148F6C: .word byte_200FE00
off_8148F70: .word byte_20101B4
off_8148F74: .word byte_200BC50
loc_8148F78:
	ldr r1, off_8148F88 // =byte_200BC50 
	mov r0, #0x32 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0xd
	bl sub_813D934
	b loc_8148FAC
	.balign 4, 0x00
off_8148F88: .word byte_200BC50
loc_8148F8C:
	ldr r1, off_8148F9C // =byte_200BC50 
	mov r0, #0x3f 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #1
	bl sub_813D934
	b loc_8148FAC
	.balign 4, 0x00
off_8148F9C: .word byte_200BC50
loc_8148FA0:
	ldr r1, off_8148FB0 // =byte_200BC50 
	mov r0, #0x32 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0x13
	bl sub_813D934
loc_8148FAC:
	pop {r0}
	bx r0
off_8148FB0: .word byte_200BC50
.endfunc // sub_8148E74

.func
.thumb_func
sub_8148FB4:
	push {lr}
	bl sub_814B694
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8148FB4

.func
.thumb_func
sub_8148FC0:
	push {lr}
	mov r0, #0
	bl sub_81453F0
	ldr r0, off_8148FDC // =byte_200BC50 
	ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	// switch 64 cases 
	cmp r0, #0x3f 
	bls loc_8148FD2
	b def_8148FDA
loc_8148FD2:
	lsl r0, r0, #2
	ldr r1, off_8148FE0 // =jpt_8148FDA 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
off_8148FDC: .word byte_200BC50
off_8148FE0: .word jpt_8148FDA
// jump table for switch statement
jpt_8148FDA:  .word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word loc_8149116
	.word def_8148FDA
	.word loc_81490E4
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word loc_81490F4
	.word def_8148FDA
	.word loc_814910C
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
	.word def_8148FDA
loc_81490E4:
	bl sub_8144EEC
	ldr r1, off_81490F0 // =byte_200BC50 
	mov r0, #0xc
	b loc_8149120
	.byte 0, 0
off_81490F0: .word byte_200BC50
loc_81490F4:
	bl sub_814A828
	bl sub_8144D64
	ldr r1, off_8149108 // =byte_200BC50 
	mov r0, #0
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	bl sub_813D760
	b def_8148FDA
off_8149108: .word byte_200BC50
loc_814910C:
	bl sub_814A828
	bl sub_813D760
	b def_8148FDA
loc_8149116:
	mov r0, #1
	bl sub_8145120
	ldr r1, off_8149128 // =byte_200BC50 
	mov r0, #0xa
loc_8149120:
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_8148FDA:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8149128: .word byte_200BC50
.endfunc // sub_8148FC0

.func
.thumb_func
sub_814912C:
	push {lr}
	bl sub_8149150
	lsl r0, r0, #0x18
	cmp r0, #0
	beq loc_8149140
	ldr r0, off_814914C // =byte_20103E0 
	ldrb r0, [r0]
	bl sub_814B068
loc_8149140:
	mov r0, #1
	bl sub_8144DB0
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814914C: .word byte_20103E0
.endfunc // sub_814912C

.func
.thumb_func
sub_8149150:
	push {r4-r6,lr}
	mov r6, #0
	ldr r5, off_8149160 // =byte_20101B4 
	ldrb r0, [r5]
	cmp r0, #0x8f
	bne loc_8149164
	mov r0, #0
	b loc_8149216
off_8149160: .word byte_20101B4
loc_8149164:
	ldr r1, off_81491B4 // =dword_2010CA0 
	ldr r0, off_81491B8 // =byte_20103E0 
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0,#0x12]
	cmp r0, #0
	beq loc_8149214
	mov r6, #1
	add r0, r2, #0
	bl sub_814B094
	ldr r0, off_81491BC // =byte_2010220 
	ldrb r2, [r0]
	add r0, r2, #1
	ldr r3, off_81491C0 // =unk_20103A0 
	add r1, r3, #0
	add r1, #0x3c 
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne loc_81491F0
	add r0, r3, #0
	mov r1, #0x40 
	bl sub_803F334
	strb r6, [r5]
	ldr r4, off_81491C4 // =byte_2010390 
	add r0, r4, #0
	mov r1, #0xc
	bl sub_803F030
	cmp r0, #0
	beq loc_81491C8
	mov r0, #0x83
	strb r0, [r5]
	b loc_81491D2
	.balign 4, 0x00
off_81491B4: .word dword_2010CA0
off_81491B8: .word byte_20103E0
off_81491BC: .word byte_2010220
off_81491C0: .word unk_20103A0
off_81491C4: .word byte_2010390
loc_81491C8:
	ldrb r0, [r4,#0xc] // (byte_201039C - 0x2010390)
	add r0, #1
	strb r0, [r4,#0xc] // (byte_201039C - 0x2010390)
	bl sub_803F05C
loc_81491D2:
	ldr r2, off_81491E4 // =byte_2010220 
	ldr r0, off_81491E8 // =unk_20103A0 
	add r0, #0x3c 
	ldrb r0, [r0]
	mov r1, #0
	strb r0, [r2]
	ldr r0, off_81491EC // =word_2010420 
	strh r1, [r0]
	b loc_8149214
off_81491E4: .word byte_2010220
off_81491E8: .word unk_20103A0
off_81491EC: .word word_2010420
loc_81491F0:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	bne loc_814920C
	ldr r1, off_8149204 // =word_2010400 
	ldrh r0, [r1]
	add r0, #1
	strh r0, [r1]
	ldr r1, off_8149208 // =word_2010420 
	b loc_814920E
off_8149204: .word word_2010400
off_8149208: .word word_2010420
loc_814920C:
	ldr r1, off_814921C // =word_2010428 
loc_814920E:
	ldrh r0, [r1]
	add r0, #1
	strh r0, [r1]
loc_8149214:
	add r0, r6, #0
loc_8149216:
	pop {r4-r6}
	pop {r1}
	bx r1
off_814921C: .word word_2010428
.endfunc // sub_8149150

.func
.thumb_func
sub_8149220:
	push {r4-r7,lr}
	add r4, r0, #0
	mov r12, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	lsl r3, r3, #0x18
	lsr r7, r3, #0x18
	mov r0, #0xf0
	lsl r0, r0, #0x14
	and r0, r4
	mov r1, #0x80
	lsl r1, r1, #0x12
	cmp r0, r1
	bne loc_8149240
	cmp r7, #0
	bne loc_8149248
loc_8149240:
	mov r0, #3
	and r0, r4
	cmp r0, #0
	beq loc_814924C
loc_8149248:
	mov r0, #2
	b loc_8149336
loc_814924C:
	cmp r7, #0
	beq loc_8149258
	ldr r3, dword_8149254 // =0xE64 
	b loc_814925A
dword_8149254: .word 0xE64
loc_8149258:
	ldr r3, off_8149264 // =0x504 
loc_814925A:
	cmp r2, r3
	bcs loc_8149268
	mov r0, #1
	b loc_8149336
	.balign 4, 0x00
off_8149264: .word 0x504
loc_8149268:
	ldr r0, off_814933C // =dword_2010CC0 
	str r4, [r0]
	ldr r1, off_8149340 // =dword_2010CC4 
	add r0, r4, #0
	add r0, #0xb4
	str r0, [r1]
	ldr r1, off_8149344 // =dword_2010CC8 
	add r0, #0x28 
	str r0, [r1]
	ldr r2, off_8149348 // =dword_2010CB0 
	mov r1, #0xde
	lsl r1, r1, #1
	add r0, r4, r1
	str r0, [r2]
	ldr r1, off_814934C // =dword_2010CA0 
	mov r3, #0xdf
	lsl r3, r3, #2
	add r0, r4, r3
	str r0, [r1]
	mov r5, #1
	add r6, r2, #0
	add r4, r1, #0
loc_8149294:
	lsl r2, r5, #2
	add r3, r2, r6
	sub r1, r5, #1
	lsl r1, r1, #2
	add r0, r1, r6
	ldr r0, [r0]
	add r0, #0x70 
	str r0, [r3]
	add r2, r2, r4
	add r1, r1, r4
	ldr r0, [r1]
	add r0, #0x1c
	str r0, [r2]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	bls loc_8149294
	ldr r0, off_8149344 // =dword_2010CC8 
	ldr r1, [r0]
	add r1, #0xdc
	ldr r4, off_814934C // =dword_2010CA0 
	ldr r0, [r4,#0xc] // (dword_2010CAC - 0x2010ca0)
	add r0, #0x1c
	str r0, [r1]
	mov r1, r12
	add r2, r7, #0
	bl sub_814C10C
	bl sub_814935C
	mov r5, #0
	ldr r3, off_8149348 // =dword_2010CB0 
	mov r2, #0
loc_81492D8:
	lsl r1, r5, #2
	add r0, r1, r3
	ldr r0, [r0]
	str r2, [r0,#0x68]
	str r2, [r0,#0x6c]
	add r1, r1, r4
	ldr r0, [r1]
	str r2, [r0,#0x14]
	str r2, [r0,#0x18]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	bls loc_81492D8
	ldr r1, off_8149350 // =word_814A794+1 
	mov r5, #2
	neg r5, r5
	and r5, r1
	ldr r2, off_8149344 // =dword_2010CC8 
	ldr r0, [r2]
	add r4, r0, #0
	add r4, #8
	ldr r0, off_8149354 // =sub_814A7C4+1 
	sub r0, r0, r1
	lsl r0, r0, #0xf
	lsr r3, r0, #0x10
	sub r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r0, dword_8149358 // =0xFFFF 
	cmp r3, r0
	beq loc_814932C
	add r6, r0, #0
loc_814931A:
	ldrh r0, [r5]
	strh r0, [r4]
	add r5, #2
	add r4, #2
	sub r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, r6
	bne loc_814931A
loc_814932C:
	ldr r1, [r2]
	add r0, r1, #0
	add r0, #9
	str r0, [r1,#4]
	mov r0, #0
loc_8149336:
	pop {r4-r7}
	pop {r1}
	bx r1
off_814933C: .word dword_2010CC0
off_8149340: .word dword_2010CC4
off_8149344: .word dword_2010CC8
off_8149348: .word dword_2010CB0
off_814934C: .word dword_2010CA0
off_8149350: .word word_814A794+1
off_8149354: .word sub_814A7C4+1
dword_8149358: .word 0xFFFF
.endfunc // sub_8149220

.func
.thumb_func
sub_814935C:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r1, off_81493D0 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	add r7, r0, #0
	mov r6, #0
	strh r6, [r1]
	ldr r5, off_81493D4 // =dword_2010CC4 
	ldr r1, [r5]
	ldrb r4, [r1]
	mov r0, sp
	strh r6, [r0]
	ldr r2, dword_81493D8 // =0x1000014 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r2, [r5]
	mov r0, #8
	and r4, r0
	mov r1, #0
	strb r4, [r2]
	mov r0, sp
	add r0, #2
	strh r1, [r0]
	ldr r4, off_81493DC // =dword_2010CC0 
	ldr r1, [r4]
	ldr r2, dword_81493E0 // =0x100005A 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r1, [r4]
	mov r0, #4
	strb r0, [r1,#9]
	ldr r0, [r5]
	strb r6, [r0,#6]
	ldr r1, [r4]
	mov r0, #0xff
	strb r0, [r1]
	bl sub_814A828
	ldr r0, [r5]
	strb r6, [r0,#9]
	mov r2, #0
	mov r3, #0
loc_81493B0:
	ldr r0, [r5]
	lsl r1, r2, #1
	add r0, #0x12
	add r0, r0, r1
	strh r3, [r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_81493B0
	ldr r0, off_81493D0 // =InterruptMasterEnableRegister 
	strh r7, [r0]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
off_81493D0: .word InterruptMasterEnableRegister
off_81493D4: .word dword_2010CC4
dword_81493D8: .word 0x1000014
off_81493DC: .word dword_2010CC0
dword_81493E0: .word 0x100005A
.endfunc // sub_814935C

.func
.thumb_func
sub_81493E4:
	push {lr}
	ldr r0, off_81493F4 // =sub_81494B8+1 
	bl sub_814C360
	bl sub_814C7D4
	pop {r0}
	bx r0
off_81493F4: .word sub_81494B8+1
.endfunc // sub_81493E4

.func
.thumb_func
sub_81493F8:
	push {r4,r5,lr}
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	ldr r5, off_8149410 // =dword_2010CC0 
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #1
	beq loc_8149414
	mov r0, #0xc0
	lsl r0, r0, #2
	b loc_814943A
off_8149410: .word dword_2010CC0
loc_8149414:
	bl sub_8149454
	add r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0x28 
	beq loc_8149424
	cmp r0, #0x36 
	bne loc_8149438
loc_8149424:
	ldrb r0, [r1,#1]
	cmp r0, #0
	bne loc_8149430
	ldr r0, [r5]
	ldrb r0, [r0,#2]
	b loc_8149432
loc_8149430:
	ldrb r0, [r1,#4]
loc_8149432:
	strb r0, [r4]
	mov r0, #0
	b loc_814943A
loc_8149438:
	mov r0, #0x10
loc_814943A:
	pop {r4,r5}
	pop {r1}
	bx r1
.endfunc // sub_81493F8

.func
.thumb_func
sub_8149440:
	push {lr}
	add r2, r0, #0
	add r0, r1, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r1, r2, #0
	bl sub_814C1E4
	pop {r0}
	bx r0
.endfunc // sub_8149440

.func
.thumb_func
sub_8149454:
	ldr r0, off_8149460 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	bx lr
	.byte 0, 0
off_8149460: .word dword_2010CC8
.endfunc // sub_8149454

.func
.thumb_func
sub_8149464:
	push {lr}
	bl sub_814C36C
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8149464

.func
.thumb_func
sub_8149470:
	push {lr}
	add r1, r0, #0
	ldr r0, off_8149488 // =dword_2010CC8 
	ldr r0, [r0]
	str r1, [r0]
	neg r0, r1
	orr r0, r1
	lsr r0, r0, #0x1f
	bl sub_814948C
	pop {r0}
	bx r0
off_8149488: .word dword_2010CC8
.endfunc // sub_8149470

.func
.thumb_func
sub_814948C:
	push {lr}
	lsl r0, r0, #0x18
	cmp r0, #0
	beq loc_81494A4
	ldr r0, off_81494A0 // =dword_2010CC4 
	ldr r2, [r0]
	ldrb r1, [r2]
	mov r0, #8
	orr r0, r1
	b loc_81494AE
off_81494A0: .word dword_2010CC4
loc_81494A4:
	ldr r0, off_81494B4 // =dword_2010CC4 
	ldr r2, [r0]
	ldrb r1, [r2]
	mov r0, #0xf7
	and r0, r1
loc_81494AE:
	strb r0, [r2]
	pop {r0}
	bx r0
off_81494B4: .word dword_2010CC4
.endfunc // sub_814948C

.func
.thumb_func
sub_81494B8:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	ldr r0, off_81494EC // =sub_81494F8+1 
	bl sub_814C360
	ldr r0, off_81494F0 // =dword_2010CC4 
	ldr r0, [r0]
	strh r4, [r0,#0x1c]
	ldrb r1, [r0]
	mov r0, #8
	and r0, r1
	cmp r0, #0
	beq loc_81494E6
	ldr r0, off_81494F4 // =dword_2010CC8 
	ldr r0, [r0]
	ldr r2, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_814DA68
loc_81494E6:
	pop {r4,r5}
	pop {r0}
	bx r0
off_81494EC: .word sub_81494F8+1
off_81494F0: .word dword_2010CC4
off_81494F4: .word dword_2010CC8
.endfunc // sub_81494B8

.func
.thumb_func
sub_81494F8:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r0, #0xff
	bne loc_8149554
	ldr r0, off_814955C // =dword_2010CC4 
	ldr r0, [r0]
	ldrb r1, [r0]
	mov r0, #8
	and r0, r1
	cmp r0, #0
	beq loc_8149522
	ldr r0, off_8149560 // =dword_2010CC8 
	ldr r0, [r0]
	ldr r2, [r0]
	mov r0, #0xff
	add r1, r3, #0
	bl sub_814DA68
loc_8149522:
	ldr r0, off_8149564 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	add r5, r0, #0
	orr r5, r1
	mov r4, #0
loc_8149530:
	add r0, r5, #0
	asr r0, r4
	mov r1, #1
	and r0, r1
	cmp r0, #0
	beq loc_8149542
	add r0, r4, #0
	bl sub_814A41C
loc_8149542:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_8149530
	ldr r0, off_8149564 // =dword_2010CC0 
	ldr r1, [r0]
	mov r0, #0xff
	strb r0, [r1]
loc_8149554:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814955C: .word dword_2010CC4
off_8149560: .word dword_2010CC8
off_8149564: .word dword_2010CC0
.endfunc // sub_81494F8

.func
.thumb_func
sub_8149568:
	push {lr}
	bl sub_814C384
	ldr r0, off_8149578 // =dword_2010CC4 
	ldr r0, [r0]
	ldrh r0, [r0,#0x1c]
	pop {r1}
	bx r1
off_8149578: .word dword_2010CC4
.endfunc // sub_8149568

.func
.thumb_func
sub_814957C:
	push {lr}
	ldr r0, off_814958C // =sub_81494B8+1 
	bl sub_814C360
	bl sub_814C418
	pop {r0}
	bx r0
off_814958C: .word sub_81494B8+1
.endfunc // sub_814957C

.func
.thumb_func
sub_8149590:
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, off_81495A8 // =dword_2010CC8 
	ldr r0, [r5]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0x93
	beq loc_81495AC
	mov r0, #0x10
	b loc_81495C6
	.balign 4, 0x00
off_81495A8: .word dword_2010CC8
loc_81495AC:
	bl sub_814C384
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_81495C0
	ldr r0, [r5]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0,#7]
	b loc_81495C2
loc_81495C0:
	mov r0, #0xff
loc_81495C2:
	strb r0, [r4]
	mov r0, #0
loc_81495C6:
	pop {r4,r5}
	pop {r1}
	bx r1
.endfunc // sub_8149590

	push {lr}
	ldr r2, off_81495D4 // =byte_81C03D8 
	ldr r3, off_81495D8 // =byte_30000F0 
	b unk_81495E6
off_81495D4: .word byte_81C03D8
off_81495D8: .word byte_30000F0
	.byte 0x18
	.byte 0x78 
	.byte  1
	.byte 0x33 
	.byte  1
	.byte 0x32 
	.byte 0x81
	.byte 0x42 
	.byte 0x2A 
	.byte 0xD1
unk_81495E6: .byte 0x11 // <fakedata>
	.byte 0x78 
	.byte  0
	.byte 0x29 
	.byte 0xF7
	.byte 0xD1
	.byte 0xC0
	.byte 0x22 
	.byte 0x92
	.byte  4
	.byte  0
	.byte 0x23 
	.byte  0
	.byte 0x21 
	.byte 0x10
	.byte 0x88
	.byte 0x18
	.byte 0x18
	.byte  0
	.byte  4
	.byte  3
	.byte 0xC
	.byte  2
	.byte 0x32 
	.byte 0x48 
	.byte 0x1C
	.byte  0
	.byte  6
	.byte  1
	.byte 0xE
	.byte 0x59 
	.byte 0x29 
	.byte 0xF5
	.byte 0xD9
	.byte  9
	.byte 0x48 
	.byte  0
	.byte 0x88
	.byte 0x83
	.byte 0x42 
	.byte 0x15
	.byte 0xD1
	.byte 0xC0
	.byte 0x20
	.byte 0x80
	.byte  4
	.byte  7
	.byte 0x49 
	.byte  9
	.byte 0x68 
	.byte 0x5A 
	.byte 0x22 
	.byte  4
	.byte 0xF0
	.byte 0x4D 
	.byte 0xF9
	.byte  6
	.byte 0x48 
	.byte  2
	.byte 0x68 
	.byte 0x11
	.byte 0x78 
	.byte 0x80
	.byte 0x20
	.byte  8
	.byte 0x43 
	.byte 0x10
	.byte 0x70 
	.byte  0
	.byte 0x20
	.byte  7
	.byte 0xE0
	.byte 0, 0
	.word word_30000FA
	.word dword_2010CC0
	.word dword_2010CC4
	.byte  1
	.byte 0x20
	.byte  2
	.byte 0xBC
	.byte  8
	.byte 0x47 
	.balign 4, 0x00
.func
.thumb_func
sub_8149644:
	push {lr}
	ldr r0, off_8149664 // =InterruptMasterEnableRegister 
	ldrh r0, [r0]
	cmp r0, #0
	bne loc_814966C
	mov r0, #0x3d 
	mov r1, #6
	bl sub_81494B8
	ldr r0, off_8149668 // =dword_2010CCC 
	ldr r1, [r0]
	ldrh r0, [r1,#0x12]
	mov r0, #6
	strh r0, [r1,#0x12]
	b loc_81496E2
	.balign 4, 0x00
off_8149664: .word InterruptMasterEnableRegister
off_8149668: .word dword_2010CCC
loc_814966C:
	bl sub_814C220
	bl sub_814935C
	mov r0, #8
	bl sub_814CC48
	ldr r1, dword_81496BC // =0x8001 
	cmp r0, r1
	bne loc_81496D0
	ldr r0, off_81496C0 // =dword_2010CCC 
	ldr r0, [r0]
	ldrb r0, [r0,#0xa]
	lsl r0, r0, #2
	ldr r2, off_81496C4 // =Timer0Counter_Reload 
	add r1, r0, r2
	mov r0, #0
	str r0, [r1]
	mov r0, #0x83
	lsl r0, r0, #0x10
	str r0, [r1]
	ldr r0, [r1]
	lsl r0, r0, #0x10
	ldr r2, dword_81496C8 // =0x105FFFF 
	ldr r3, off_81496CC // =sub_81496EC+1 
	cmp r0, r2
	bhi loc_81496AA
loc_81496A2:
	ldr r0, [r1]
	lsl r0, r0, #0x10
	cmp r0, r2
	bls loc_81496A2
loc_81496AA:
	mov r0, #0
	str r0, [r1]
	add r0, r3, #0
	bl sub_814C360
	bl sub_814C8E4
	b loc_81496E2
	.balign 4, 0x00
dword_81496BC: .word 0x8001
off_81496C0: .word dword_2010CCC
off_81496C4: .word Timer0Counter_Reload
dword_81496C8: .word 0x105FFFF
off_81496CC: .word sub_81496EC+1
loc_81496D0:
	ldr r1, off_81496E8 // =SIOControlRegister 
	mov r2, #0x80
	lsl r2, r2, #6
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0x3d 
	mov r1, #0
	bl sub_81494B8
loc_81496E2:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_81496E8: .word SIOControlRegister
.endfunc // sub_8149644

.func
.thumb_func
sub_81496EC:
	push {r4,lr}
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r1, #0
	cmp r2, #0
	bne loc_8149706
	ldr r1, off_8149714 // =SIOControlRegister 
	mov r4, #0x80
	lsl r4, r4, #6
	add r0, r4, #0
	strh r0, [r1]
loc_8149706:
	add r0, r3, #0
	add r1, r2, #0
	bl sub_81494B8
	pop {r4}
	pop {r0}
	bx r0
off_8149714: .word SIOControlRegister
.endfunc // sub_81496EC

.func
.thumb_func
sub_8149718:
	push {lr}
	ldr r0, off_8149728 // =InterruptMasterEnableRegister 
	ldrh r0, [r0]
	cmp r0, #0
	bne loc_814972C
	mov r0, #1
	neg r0, r0
	b loc_814974C
off_8149728: .word InterruptMasterEnableRegister
loc_814972C:
	bl sub_814C220
	bl sub_814935C
	mov r0, #0x1e
	bl sub_814CC48
	add r2, r0, #0
	cmp r2, #0
	bne loc_814974A
	ldr r1, off_8149750 // =SIOControlRegister 
	mov r3, #0x80
	lsl r3, r3, #6
	add r0, r3, #0
	strh r0, [r1]
loc_814974A:
	add r0, r2, #0
loc_814974C:
	pop {r1}
	bx r1
off_8149750: .word SIOControlRegister
.endfunc // sub_8149718

.func
.thumb_func
sub_8149754:
	push {lr}
	ldr r0, off_8149764 // =sub_8149768+1 
	bl sub_814C360
	bl sub_814C3AC
	pop {r0}
	bx r0
off_8149764: .word sub_8149768+1
.endfunc // sub_8149754

.func
.thumb_func
sub_8149768:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r4, r1, #0
	cmp r4, #0
	bne loc_814977C
	bl sub_814935C
loc_814977C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_81494B8
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8149768

.func
.thumb_func
sub_814978C:
	push {r4-r6,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	ldr r0, off_81497C4 // =sub_81494B8+1 
	bl sub_814C360
	mov r0, #3
	and r4, r0
	mov r0, #0x3c 
	orr r4, r0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_814C4DC
	cmp r6, #0
	bne loc_81497CC
	ldr r0, off_81497C8 // =dword_2010CC4 
	ldr r1, [r0]
	mov r0, #1
	strh r0, [r1,#0x1a]
	b loc_81497E6
off_81497C4: .word sub_81494B8+1
off_81497C8: .word dword_2010CC4
loc_81497CC:
	ldr r5, off_81497EC // =InterruptMasterEnableRegister 
	ldrh r4, [r5]
	mov r0, #0
	strh r0, [r5]
	mov r0, #0x96
	lsl r0, r0, #2
	add r1, r6, #0
	bl SWI_Div
	ldr r1, off_81497F0 // =dword_2010CC4 
	ldr r1, [r1]
	strh r0, [r1,#0x1a]
	strh r4, [r5]
loc_81497E6:
	pop {r4-r6}
	pop {r0}
	bx r0
off_81497EC: .word InterruptMasterEnableRegister
off_81497F0: .word dword_2010CC4
.endfunc // sub_814978C

.func
.thumb_func
sub_81497F4:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	add r4, r2, #0
	add r7, r3, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r2, r1, #0x10
	add r5, r4, #0
	mov r0, sp
	strb r1, [r0]
	lsr r2, r2, #0x18
	strb r2, [r0,#1]
	cmp r6, #0
	beq loc_814981A
	mov r1, #0x80
	orr r2, r1
	mov r1, #0
	orr r2, r1
	strb r2, [r0,#1]
loc_814981A:
	mov r2, #2
	ldr r0, off_814987C // =sub_8149880+1 
	mov r12, r0
loc_8149820:
	mov r3, sp
	add r1, r3, r2
	ldrb r0, [r4]
	strb r0, [r1]
	add r4, #1
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xe
	bls loc_8149820
	mov r3, #0
	add r1, r7, #0
	mov r2, #0
loc_814983A:
	ldrb r0, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x18
	add r1, #1
	lsr r0, r0, #0x18
	ldrb r3, [r5]
	add r0, r0, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r5, #1
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #7
	bls loc_814983A
	mov r1, sp
	mvn r0, r3
	strb r0, [r1,#0xf]
	cmp r6, #0
	beq loc_8149866
	mov r0, #0
	strb r0, [r1,#0xe]
loc_8149866:
	mov r0, r12
	bl sub_814C360
	mov r0, sp
	add r1, r7, #0
	bl sub_814C484
	add sp, sp, #0x10
	pop {r4-r7}
	pop {r0}
	bx r0
off_814987C: .word sub_8149880+1
.endfunc // sub_81497F4

.func
.thumb_func
sub_8149880:
	push {r4-r7,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r12, r0
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	cmp r7, #0
	bne loc_814990A
	ldr r0, off_81498C4 // =dword_2010CCC 
	ldr r0, [r0]
	ldr r1, [r0,#0x24]
	ldr r0, off_81498C8 // =dword_2010CC0 
	ldr r6, [r0]
	ldrb r2, [r1,#4]
	add r5, r6, #0
	add r5, #0x98
	strh r2, [r5]
	ldrb r0, [r1,#5]
	lsl r3, r0, #8
	orr r3, r2
	strh r3, [r5]
	add r4, r1, #6
	mov r1, #0x80
	lsl r1, r1, #8
	add r0, r3, #0
	and r0, r1
	cmp r0, #0
	beq loc_81498CC
	eor r3, r1
	strh r3, [r5]
	add r1, r6, #0
	add r1, #0x97
	mov r0, #1
	b loc_81498D2
off_81498C4: .word dword_2010CCC
off_81498C8: .word dword_2010CC0
loc_81498CC:
	add r1, r6, #0
	add r1, #0x97
	mov r0, #0
loc_81498D2:
	strb r0, [r1]
	mov r2, #0
	ldr r3, off_8149918 // =dword_2010CC0 
loc_81498D8:
	ldr r0, [r3]
	add r0, #0x9a
	add r0, r0, r2
	ldrb r1, [r4]
	strb r1, [r0]
	add r4, #1
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xc
	bls loc_81498D8
	add r4, #1
	mov r2, #0
	ldr r3, off_8149918 // =dword_2010CC0 
loc_81498F4:
	ldr r0, [r3]
	add r0, #0xa9
	add r0, r0, r2
	ldrb r1, [r4]
	strb r1, [r0]
	add r4, #1
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #7
	bls loc_81498F4
loc_814990A:
	mov r0, r12
	add r1, r7, #0
	bl sub_81494B8
	pop {r4-r7}
	pop {r0}
	bx r0
off_8149918: .word dword_2010CC0
.endfunc // sub_8149880

.func
.thumb_func
sub_814991C:
	push {lr}
	ldr r0, off_814994C // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C418
	bl sub_814C384
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_8149954
	ldr r0, off_8149950 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0,#7]
	cmp r0, #0
	bne loc_814995A
	mov r0, #1
	bl sub_8149994
	b loc_814995A
	.balign 4, 0x00
off_814994C: .word sub_81494F8+1
off_8149950: .word dword_2010CC8
loc_8149954:
	mov r0, #0x19
	bl sub_81494B8
loc_814995A:
	ldr r0, off_8149968 // =sub_814996C+1 
	bl sub_814C360
	bl sub_814C51C
	pop {r0}
	bx r0
off_8149968: .word sub_814996C+1
.endfunc // sub_814991C

.func
.thumb_func
sub_814996C:
	push {lr}
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r1, #0
	cmp r2, #0
	bne loc_8149984
	ldr r0, off_8149990 // =dword_2010CC4 
	ldr r1, [r0]
	mov r0, #1
	strb r0, [r1,#9]
loc_8149984:
	add r0, r3, #0
	add r1, r2, #0
	bl sub_81494B8
	pop {r0}
	bx r0
off_8149990: .word dword_2010CC4
.endfunc // sub_814996C

.func
.thumb_func
sub_8149994:
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	bl sub_814A828
	cmp r4, #0
	beq loc_81499BC
	mov r0, sp
	mov r5, #0
	strh r5, [r0]
	ldr r4, off_81499F0 // =dword_2010CC0 
	ldr r1, [r4]
	add r1, #0x14
	ldr r2, dword_81499F4 // =0x1000040 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, [r4]
	strb r5, [r0,#8]
loc_81499BC:
	mov r1, #0
	ldr r2, off_81499F0 // =dword_2010CC0 
	add r4, r2, #0
	mov r3, #0
loc_81499C4:
	ldr r0, [r4]
	add r0, #0xa
	add r0, r0, r1
	strb r3, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #3
	bls loc_81499C4
	ldr r0, [r2]
	mov r1, #0
	strb r1, [r0,#1]
	ldr r0, [r2]
	strb r1, [r0,#2]
	ldr r0, [r2]
	strb r1, [r0,#3]
	ldr r0, [r2]
	strb r1, [r0,#7]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
off_81499F0: .word dword_2010CC0
dword_81499F4: .word 0x1000040
.endfunc // sub_8149994

.func
.thumb_func
sub_81499F8:
	push {lr}
	ldr r0, off_8149A08 // =sub_8149A20+1 
	bl sub_814C360
	bl sub_814C540
	pop {r0}
	bx r0
off_8149A08: .word sub_8149A20+1
.endfunc // sub_81499F8

.func
.thumb_func
sub_8149A0C:
	push {lr}
	ldr r0, off_8149A1C // =sub_8149A20+1 
	bl sub_814C360
	bl sub_814C564
	pop {r0}
	bx r0
off_8149A1C: .word sub_8149A20+1
.endfunc // sub_8149A0C

.func
.thumb_func
sub_8149A20:
	push {r4-r6,lr}
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	cmp r6, #0
	bne loc_8149A32
	bl sub_8149AA8
loc_8149A32:
	cmp r4, #0x1a
	bne loc_8149A74
	ldr r5, off_8149A68 // =dword_2010CC0 
	ldr r0, [r5]
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0
	bne loc_8149A90
	ldr r0, off_8149A6C // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C418
	bl sub_814C384
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_8149A90
	ldr r1, [r5]
	ldr r0, off_8149A70 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrh r0, [r0,#4]
	add r1, #0x94
	strh r0, [r1]
	b loc_8149A90
off_8149A68: .word dword_2010CC0
off_8149A6C: .word sub_81494F8+1
off_8149A70: .word dword_2010CC8
loc_8149A74:
	cmp r4, #0x1b
	bne loc_8149A90
	ldr r0, off_8149AA0 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne loc_8149A88
	add r1, #0x94
	mov r0, #0
	strh r0, [r1]
loc_8149A88:
	ldr r0, off_8149AA4 // =dword_2010CC4 
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1,#9]
loc_8149A90:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_81494B8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0, 0
off_8149AA0: .word dword_2010CC0
off_8149AA4: .word dword_2010CC4
.endfunc // sub_8149A20

.func
.thumb_func
sub_8149AA8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r1, off_8149BD4 // =dword_2010CC8 
	ldr r0, [r1]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r2, [r0,#1]
	mov r8, r2
	add r4, r1, #0
	cmp r2, #0
	beq loc_8149B06
	ldr r5, [r0,#4]
	ldr r0, off_8149BD8 // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C3D0
	bl sub_814C384
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_8149AFA
	ldr r0, [r4]
	add r0, #0xdc
	ldr r0, [r0]
	add r4, r0, #4
	mov r2, #0
loc_8149AE6:
	mov r0, sp
	add r1, r0, r2
	ldrb r0, [r4]
	strb r0, [r1]
	add r4, #1
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_8149AE6
loc_8149AFA:
	ldr r0, off_8149BD4 // =dword_2010CC8 
	ldr r1, [r0]
	add r1, #0xdc
	ldr r1, [r1]
	str r5, [r1,#4]
	add r4, r0, #0
loc_8149B06:
	ldr r0, [r4]
	add r0, #0xdc
	ldr r0, [r0]
	add r4, r0, #4
	mov r1, r8
	cmp r1, #0
	beq loc_8149BC2
	ldr r2, off_8149BDC // =dword_2010CC4 
	mov r9, r2
	ldr r7, off_8149BE0 // =dword_2010CC0 
	mov r10, r9
loc_8149B1C:
	ldrb r2, [r4,#2]
	add r5, r2, #0
	cmp r2, #3
	bhi loc_8149BB2
	ldr r1, [r7]
	ldrb r0, [r1,#2]
	asr r0, r2
	mov r6, #1
	and r0, r6
	cmp r0, #0
	bne loc_8149BB2
	ldrb r3, [r1,#3]
	asr r3, r2
	and r3, r6
	cmp r3, #0
	bne loc_8149BB2
	mov r1, sp
	add r0, r1, r2
	ldrb r0, [r0]
	mov r12, r10
	cmp r0, #0
	beq loc_8149B56
	mov r0, r9
	ldr r1, [r0]
	add r1, #0xe
	add r1, r1, r2
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
loc_8149B56:
	mov r1, r9
	ldr r0, [r1]
	add r0, #0xe
	add r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #3
	bls loc_8149BB2
	strb r3, [r1]
	ldr r0, [r7]
	add r0, #0xa
	add r0, r0, r5
	mov r1, #0xff
	strb r1, [r0]
	ldr r2, [r7]
	add r0, r6, #0
	lsl r0, r5
	ldrb r1, [r2,#2]
	orr r0, r1
	strb r0, [r2,#2]
	ldr r1, [r7]
	ldrb r0, [r1,#1]
	add r0, #1
	strb r0, [r1,#1]
	ldr r1, [r7]
	lsl r3, r5, #5
	add r1, r1, r3
	ldrh r0, [r4]
	strh r0, [r1,#0x14]
	strb r5, [r1,#0x16]
	ldr r0, [r7]
	strb r6, [r0]
	mov r0, r12
	ldr r2, [r0]
	ldrb r1, [r2]
	mov r0, #0x7f
	and r0, r1
	strb r0, [r2]
	mov r2, r12
	ldr r1, [r2]
	lsl r0, r5, #1
	add r1, #0x12
	add r1, r1, r0
	ldr r0, [r7]
	add r0, r0, r3
	ldrh r0, [r0,#0x14]
	strh r0, [r1]
loc_8149BB2:
	mov r0, r8
	sub r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r8, r0
	add r4, #4
	cmp r0, #0
	bne loc_8149B1C
loc_8149BC2:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_8149BD4: .word dword_2010CC8
off_8149BD8: .word sub_81494F8+1
off_8149BDC: .word dword_2010CC4
off_8149BE0: .word dword_2010CC0
.endfunc // sub_8149AA8

.func
.thumb_func
sub_8149BE4:
	push {lr}
	ldr r0, off_8149BF4 // =sub_8149BF8+1 
	bl sub_814C360
	bl sub_814C588
	pop {r0}
	bx r0
off_8149BF4: .word sub_8149BF8+1
.endfunc // sub_8149BE4

.func
.thumb_func
sub_8149BF8:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r4, r1, #0
	cmp r4, #0
	bne loc_8149C0E
	mov r0, #0
	bl sub_8149994
loc_8149C0E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_81494B8
	pop {r4,r5}
	pop {r0}
	bx r0
.endfunc // sub_8149BF8

.func
.thumb_func
sub_8149C1C:
	push {lr}
	ldr r0, off_8149C2C // =sub_8149C30+1 
	bl sub_814C360
	bl sub_814C5AC
	pop {r0}
	bx r0
off_8149C2C: .word sub_8149C30+1
.endfunc // sub_8149C1C

.func
.thumb_func
sub_8149C30:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r4, r1, #0
	cmp r4, #0
	bne loc_8149C44
	bl sub_8149C68
loc_8149C44:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_81494B8
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_8149C30

.func
.thumb_func
sub_8149C54:
	push {lr}
	ldr r0, off_8149C64 // =sub_81494B8+1 
	bl sub_814C360
	bl sub_814C5D0
	pop {r0}
	bx r0
off_8149C64: .word sub_81494B8+1
.endfunc // sub_8149C54

.func
.thumb_func
sub_8149C68:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, sp
	mov r4, #0
	strh r4, [r0]
	ldr r5, off_8149D10 // =dword_2010CC0 
	ldr r1, [r5]
	add r1, #0x14
	ldr r2, dword_8149D14 // =0x1000040 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_8149D18 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r2, [r0]
	ldrb r7, [r2,#1]
	add r2, #4
	ldr r0, [r5]
	strb r4, [r0,#8]
	mov r6, #0
	cmp r7, #0
	beq loc_8149D6C
	mov r12, r5
	ldr r0, dword_8149D1C // =0x7FFF 
	mov r8, r0
loc_8149C9E:
	sub r0, r7, #7
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r1, r2, #6
	add r2, #0x13
	ldrb r0, [r2]
	mvn r0, r0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r2, #1
	mov r4, #0
	mov r3, #0
	add r6, #1
loc_8149CB8:
	ldrb r0, [r2]
	add r0, r4, r0
	lsl r0, r0, #0x18
	add r2, #1
	lsr r0, r0, #0x18
	ldrb r4, [r1]
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r1, #1
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #7
	bls loc_8149CB8
	cmp r4, r5
	bne loc_8149D60
	sub r2, #0x1c
	mov r0, r12
	ldr r1, [r0]
	ldrb r0, [r1,#8]
	lsl r0, r0, #5
	add r0, #0x14
	add r4, r1, r0
	ldrh r0, [r2]
	mov r3, #0
	strh r0, [r4]
	add r2, #2
	ldrb r0, [r2]
	strb r0, [r4,#2]
	add r2, #2
	ldrh r1, [r2]
	mov r0, r8
	and r0, r1
	strh r0, [r4,#4]
	ldrh r1, [r2]
	mov r0, #0x80
	lsl r0, r0, #8
	and r0, r1
	cmp r0, #0
	beq loc_8149D20
	mov r0, #1
	strb r0, [r4,#3]
	b loc_8149D22
off_8149D10: .word dword_2010CC0
dword_8149D14: .word 0x1000040
off_8149D18: .word dword_2010CC8
dword_8149D1C: .word 0x7FFF
loc_8149D20:
	strb r3, [r4,#3]
loc_8149D22:
	add r2, #2
	mov r3, #0
	add r5, r4, #0
	add r5, #0x15
	add r4, #6
loc_8149D2C:
	add r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	add r2, #1
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0xc
	bls loc_8149D2C
	add r2, #1
	mov r3, #0
	add r4, r5, #0
loc_8149D44:
	add r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	add r2, #1
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #7
	bls loc_8149D44
	mov r4, r12
	ldr r1, [r4]
	ldrb r0, [r1,#8]
	add r0, #1
	strb r0, [r1,#8]
loc_8149D60:
	lsl r0, r6, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bhi loc_8149D6C
	cmp r7, #0
	bne loc_8149C9E
loc_8149D6C:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
.endfunc // sub_8149C68

.func
.thumb_func
sub_8149D78:
	push {r4,r5,lr}
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r3, #0
	mov r2, #0
	ldr r1, off_8149DC4 // =dword_2010CC0 
	ldr r0, [r1]
	ldrh r0, [r0,#0x14]
	cmp r0, r4
	beq loc_8149DA4
	add r5, r1, #0
loc_8149D8E:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bhi loc_8149DA4
	ldr r0, [r5]
	lsl r1, r2, #5
	add r0, r0, r1
	ldrh r0, [r0,#0x14]
	cmp r0, r4
	bne loc_8149D8E
loc_8149DA4:
	cmp r2, #4
	bne loc_8149DAC
	mov r3, #0x80
	lsl r3, r3, #1
loc_8149DAC:
	cmp r3, #0
	bne loc_8149DD0
	ldr r0, off_8149DC8 // =dword_2010CC4 
	ldr r0, [r0]
	strh r4, [r0,#0x1e]
	ldr r0, off_8149DCC // =sub_81494B8+1 
	bl sub_814C360
	add r0, r4, #0
	bl sub_814C5F4
	b loc_8149DD8
off_8149DC4: .word dword_2010CC0
off_8149DC8: .word dword_2010CC4
off_8149DCC: .word sub_81494B8+1
loc_8149DD0:
	mov r0, #0x1f
	add r1, r3, #0
	bl sub_81494B8
loc_8149DD8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_8149D78

.func
.thumb_func
sub_8149DE0:
	push {lr}
	ldr r0, off_8149DF0 // =sub_8149DF4+1 
	bl sub_814C360
	bl sub_814C624
	pop {r0}
	bx r0
off_8149DF0: .word sub_8149DF4+1
.endfunc // sub_8149DE0

.func
.thumb_func
sub_8149DF4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #0x2c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp,#0x24]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp,#0x28]
	cmp r1, #0
	bne loc_8149EF6
	ldr r0, off_8149EB0 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrh r5, [r0,#4]
	ldrb r1, [r0,#6]
	mov r10, r1
	ldrb r0, [r0,#7]
	cmp r0, #0
	bne loc_8149EF6
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r1
	lsr r2, r0, #0x18
	ldr r4, off_8149EB4 // =dword_2010CC0 
	ldr r3, [r4]
	ldrb r1, [r3,#2]
	add r0, r2, #0
	and r0, r1
	cmp r0, #0
	bne loc_8149EF6
	add r0, r2, #0
	orr r0, r1
	strb r0, [r3,#2]
	ldr r1, [r4]
	ldrb r0, [r1,#3]
	bic r0, r2
	strb r0, [r1,#3]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, #0x94
	mov r2, #0
	strh r5, [r0]
	ldrb r0, [r1,#1]
	add r0, #1
	strb r0, [r1,#1]
	ldr r0, [r4]
	strb r2, [r0]
	ldr r3, off_8149EB8 // =dword_2010CC4 
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r2]
	mov r5, #0
	add r7, r4, #0
	add r6, sp, #0x20
	mov r0, #0
	mov r8, r0
loc_8149E72:
	ldr r2, [r7]
	lsl r4, r5, #5
	add r0, r2, r4
	ldr r1, [r3]
	ldrh r0, [r0,#0x14]
	ldrh r1, [r1,#0x1e]
	cmp r0, r1
	bne loc_8149ECA
	ldrb r0, [r2,#8]
	cmp r0, #0
	beq loc_8149EC0
	mov r9, sp
	add r0, r4, #0
	add r0, #0x14
	add r0, r2, r0
	mov r1, sp
	mov r2, #0x10
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r1, r8
	strh r1, [r6]
	ldr r1, [r7]
	add r1, #0x14
	add r0, r6, #0
	ldr r2, dword_8149EBC // =0x1000040 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, [r7]
	mov r1, r8
	strb r1, [r0,#8]
	b loc_8149ED4
off_8149EB0: .word dword_2010CC8
off_8149EB4: .word dword_2010CC0
off_8149EB8: .word dword_2010CC4
dword_8149EBC: .word 0x1000040
loc_8149EC0:
	add r0, r4, #0
	add r0, #0x14
	add r2, r2, r0
	mov r9, r2
	b loc_8149ED4
loc_8149ECA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bls loc_8149E72
loc_8149ED4:
	cmp r5, #3
	bhi loc_8149EF6
	ldr r4, off_8149F10 // =dword_2010CC0 
	mov r0, r10
	lsl r5, r0, #5
	add r0, r5, #0
	add r0, #0x14
	ldr r1, [r4]
	add r1, r1, r0
	mov r0, r9
	mov r2, #0x10
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, [r4]
	add r0, r0, r5
	mov r1, r10
	strb r1, [r0,#0x16]
loc_8149EF6:
	ldr r0, [sp,#0x24]
	ldr r1, [sp,#0x28]
	bl sub_81494B8
	add sp, sp, #0x2c
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
off_8149F10: .word dword_2010CC0
.endfunc // sub_8149DF4

.func
.thumb_func
sub_8149F14:
	push {lr}
	add r3, r0, #0
	mov r0, #0xff
	strb r0, [r3]
	ldr r0, off_8149F34 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r2, [r0]
	ldrb r0, [r2]
	add r0, #0x60 
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bls loc_8149F38
	mov r0, #0x10
	b loc_8149F44
off_8149F34: .word dword_2010CC8
loc_8149F38:
	add r2, #6
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2,#1]
	strb r0, [r3]
	mov r0, #0
loc_8149F44:
	pop {r1}
	bx r1
.endfunc // sub_8149F14

.func
.thumb_func
sub_8149F48:
	push {lr}
	ldr r0, off_8149F74 // =sub_8149DF4+1 
	bl sub_814C360
	bl sub_814C648
	ldr r0, off_8149F78 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1,#6]
	cmp r0, #3
	bhi loc_8149F70
	ldr r0, off_8149F7C // =dword_2010CC4 
	ldr r0, [r0]
	add r0, #0xa
	ldrb r1, [r1,#6]
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0]
loc_8149F70:
	pop {r0}
	bx r0
off_8149F74: .word sub_8149DF4+1
off_8149F78: .word dword_2010CC8
off_8149F7C: .word dword_2010CC4
.endfunc // sub_8149F48

.func
.thumb_func
sub_8149F80:
	push {r4,r5,lr}
	bl sub_814C058
	ldr r0, off_8149FC8 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq loc_814A058
	ldr r4, off_8149FCC // =dword_2010CC4 
	ldr r1, [r4]
	ldrb r0, [r1,#6]
	cmp r0, #0
	beq loc_8149F9E
	sub r0, #1
	strb r0, [r1,#6]
loc_8149F9E:
	bl sub_814A7F0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r2, [r4]
	ldrb r1, [r2]
	mov r0, #2
	and r0, r1
	cmp r0, #0
	bne loc_8149FD0
	cmp r3, #0
	bne loc_8149FDE
	mov r0, #4
	orr r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	mov r0, #0xb4
	lsl r0, r0, #1
	strh r0, [r1,#0x20]
	b loc_8149FDA
	.balign 4, 0x00
off_8149FC8: .word dword_2010CC0
off_8149FCC: .word dword_2010CC4
loc_8149FD0:
	cmp r3, #0
	beq loc_8149FF0
	mov r0, #0xfb
	and r0, r1
	strb r0, [r2]
loc_8149FDA:
	cmp r3, #0
	beq loc_8149FF0
loc_8149FDE:
	ldr r3, off_8149FEC // =dword_2010CC4 
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #0xfd
	and r0, r1
	b loc_8149FFA
	.balign 4, 0x00
off_8149FEC: .word dword_2010CC4
loc_8149FF0:
	ldr r3, off_814A04C // =dword_2010CC4 
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #2
	orr r0, r1
loc_8149FFA:
	strb r0, [r2]
	ldr r3, [r3]
	ldrb r1, [r3]
	mov r0, #4
	and r0, r1
	cmp r0, #0
	beq loc_814A058
	ldrh r0, [r3,#0x20]
	cmp r0, #0
	bne loc_814A054
	mov r0, #0xfb
	and r0, r1
	strb r0, [r3]
	ldr r0, off_814A050 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#3]
	add r5, r0, #0
	orr r5, r1
	mov r4, #0
loc_814A022:
	add r0, r5, #0
	asr r0, r4
	mov r1, #1
	and r0, r1
	cmp r0, #0
	beq loc_814A034
	add r0, r4, #0
	bl sub_814A41C
loc_814A034:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814A022
	ldr r0, off_814A050 // =dword_2010CC0 
	ldr r1, [r0]
	mov r0, #0xff
	strb r0, [r1]
	mov r0, #1
	b loc_814A05A
	.balign 4, 0x00
off_814A04C: .word dword_2010CC4
off_814A050: .word dword_2010CC0
loc_814A054:
	sub r0, #1
	strh r0, [r3,#0x20]
loc_814A058:
	mov r0, #0
loc_814A05A:
	pop {r4,r5}
	pop {r1}
	bx r1
.endfunc // sub_8149F80

.func
.thumb_func
sub_814A060:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #0x18
	mov r8, r1
	str r2, [sp]
	str r3, [sp,#4]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r0, #0
	str r0, [sp,#8]
	mov r1, #0
	str r1, [sp,#0xc]
	mov r2, r8
	strb r1, [r2]
	mov r0, sp
	ldrb r1, [r0,#0xc]
	ldr r0, [sp]
	strb r1, [r0]
	mov r2, sp
	ldrb r0, [r2,#0xc]
	ldr r2, [sp,#4]
	strb r0, [r2]
	ldr r4, off_814A100 // =dword_2010CC0 
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne loc_814A09E
	b loc_814A3FE
loc_814A09E:
	ldr r0, off_814A104 // =dword_2010CCC 
	ldr r0, [r0]
	ldrb r0, [r0,#0x14]
	cmp r0, #0
	bne loc_814A0AA
	b loc_814A3FE
loc_814A0AA:
	ldr r3, off_814A108 // =dword_2010CC4 
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #4
	and r0, r1
	cmp r0, #0
	beq loc_814A0BE
	mov r0, #0xb4
	lsl r0, r0, #1
	strh r0, [r2,#0x20]
loc_814A0BE:
	ldr r1, [r3]
	ldrb r0, [r1,#6]
	cmp r0, #0
	bne loc_814A0D0
	ldr r0, [r4]
	ldrb r0, [r0,#9]
	strb r0, [r1,#6]
	mov r1, #1
	str r1, [sp,#8]
loc_814A0D0:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x29 
	bne loc_814A110
	ldr r0, off_814A10C // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1,#4]
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r1,#5]
	ldr r1, [sp]
	strb r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne loc_814A0FA
	ldr r0, [r4]
	ldrb r0, [r0,#2]
	strb r0, [r2]
loc_814A0FA:
	mov r2, #2
	str r2, [sp,#8]
	b loc_814A168
off_814A100: .word dword_2010CC0
off_814A104: .word dword_2010CCC
off_814A108: .word dword_2010CC4
off_814A10C: .word dword_2010CC8
loc_814A110:
	mov r0, #0x9b
	lsl r0, r0, #1
	cmp r5, r0
	bne loc_814A160
	ldr r0, off_814A1BC // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r6, [r0,#5]
	ldr r0, [r4]
	ldrb r0, [r0,#2]
	eor r6, r0
	and r6, r0
	mov r0, r8
	strb r6, [r0]
	mov r0, #1
	ldr r1, [sp]
	strb r0, [r1]
	mov r5, #0
loc_814A136:
	mov r2, r8
	ldrb r0, [r2]
	asr r0, r5
	mov r1, #1
	and r0, r1
	cmp r0, #0
	beq loc_814A156
	ldr r0, off_814A1C0 // =dword_2010CC0 
	ldr r0, [r0]
	add r0, #0xa
	add r0, r0, r5
	mov r1, #0
	strb r1, [r0]
	add r0, r5, #0
	bl sub_814A41C
loc_814A156:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bls loc_814A136
loc_814A160:
	ldr r0, [sp,#8]
	cmp r0, #0
	bne loc_814A168
	b loc_814A3FE
loc_814A168:
	ldr r4, off_814A1BC // =dword_2010CC8 
	ldr r0, [r4]
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, [r0]
	str r1, [sp,#0x10]
	ldr r0, [r0,#4]
	str r0, [sp,#0x14]
	ldr r0, off_814A1C4 // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C3D0
	bl sub_814C384
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp,#0xc]
	cmp r0, #0
	bne loc_814A1C8
	ldr r0, [r4]
	add r0, #0xdc
	ldr r0, [r0]
	add r2, r0, #4
	mov r5, #0
	ldr r3, off_814A1C0 // =dword_2010CC0 
loc_814A19C:
	ldr r0, [r3]
	add r0, #0xa
	add r0, r0, r5
	ldrb r1, [r2]
	strb r1, [r0]
	add r2, #1
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bls loc_814A19C
	mov r2, #0
	mov r9, r2
	mov r5, #0
	b loc_814A1D4
	.balign 4, 0x00
off_814A1BC: .word dword_2010CC8
off_814A1C0: .word dword_2010CC0
off_814A1C4: .word sub_81494F8+1
loc_814A1C8:
	mov r0, #0x11
	ldr r1, [sp,#0xc]
	bl sub_81494B8
	ldr r0, [sp,#0xc]
	b loc_814A400
loc_814A1D4:
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r5
	lsr r6, r0, #0x18
	add r0, r5, #1
	mov r10, r0
	ldr r1, [sp,#0xc]
	cmp r1, #0
	beq loc_814A1E8
	b loc_814A3B2
loc_814A1E8:
	ldr r2, [sp,#8]
	cmp r2, #1
	bne loc_814A2BE
	ldr r4, off_814A228 // =dword_2010CC0 
	ldr r1, [r4]
	ldrb r0, [r1,#2]
	and r0, r6
	cmp r0, #0
	beq loc_814A2BE
	add r0, r1, #0
	add r0, #0xa
	add r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_814A2B0
	ldrb r0, [r1]
	cmp r0, #1
	bne loc_814A230
	ldr r2, off_814A22C // =dword_2010CC4 
	ldr r1, [r2]
	add r1, #0xa
	add r1, r1, r5
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	add r0, #0xa
	add r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #3
	bls loc_814A2BE
	b loc_814A296
off_814A228: .word dword_2010CC0
off_814A22C: .word dword_2010CC4
loc_814A230:
	bl sub_814C418
	bl sub_814C384
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814A2BE
	ldr r0, off_814A260 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0,#7]
	cmp r0, #0
	bne loc_814A264
	mov r2, r8
	ldrb r1, [r2]
	add r0, r6, #0
	orr r0, r1
	strb r0, [r2]
	mov r0, sp
	ldrb r1, [r0,#8]
	ldr r0, [sp]
	b loc_814A2BC
	.byte 0, 0
off_814A260: .word dword_2010CC8
loc_814A264:
	ldr r2, off_814A2AC // =dword_2010CC4 
	ldr r1, [r2]
	add r1, #0xa
	add r1, r1, r5
	ldrb r0, [r1]
	add r0, #1
	strb r0, [r1]
	lsl r0, r0, #0x18
	ldr r2, [r2]
	lsr r0, r0, #0x18
	ldrh r1, [r2,#0x1a]
	cmp r0, r1
	bls loc_814A2BE
	add r0, r2, #0
	add r0, #0xa
	add r0, r0, r5
	mov r2, sp
	ldrb r2, [r2,#0xc]
	strb r2, [r0]
	ldr r0, [r4]
	ldrb r0, [r0,#2]
	bl sub_814C7F8
	bl sub_814C384
loc_814A296:
	mov r0, r8
	ldrb r1, [r0]
	add r0, r6, #0
	orr r0, r1
	mov r1, r8
	strb r0, [r1]
	mov r2, sp
	ldrb r0, [r2,#8]
	ldr r2, [sp]
	strb r0, [r2]
	b loc_814A2BE
off_814A2AC: .word dword_2010CC4
loc_814A2B0:
	ldr r0, off_814A320 // =dword_2010CC4 
	ldr r0, [r0]
	add r0, #0xa
	add r0, r0, r5
	mov r1, sp
	ldrb r1, [r1,#0xc]
loc_814A2BC:
	strb r1, [r0]
loc_814A2BE:
	ldr r2, off_814A324 // =dword_2010CC0 
	mov r12, r2
	ldr r1, [r2]
	ldrb r7, [r1]
	add r0, r5, #1
	mov r10, r0
	cmp r7, #1
	bne loc_814A3B2
	add r0, r1, #0
	add r0, #0xa
	add r4, r0, r5
	ldrb r3, [r4]
	cmp r3, #0
	beq loc_814A3B2
	ldrb r2, [r1,#3]
	add r0, r6, #0
	and r0, r2
	cmp r0, #0
	beq loc_814A32E
	cmp r3, #0xa
	bls loc_814A328
	ldr r2, [sp,#4]
	ldrb r1, [r2]
	add r0, r6, #0
	orr r0, r1
	strb r0, [r2]
	mov r0, r12
	ldr r2, [r0]
	ldrb r1, [r2,#2]
	add r0, r6, #0
	orr r0, r1
	mov r3, #0
	strb r0, [r2,#2]
	mov r2, r12
	ldr r1, [r2]
	ldrb r0, [r1,#3]
	bic r0, r6
	strb r0, [r1,#3]
	ldr r1, [r2]
	ldrb r0, [r1,#1]
	add r0, #1
	strb r0, [r1,#1]
	ldr r0, off_814A320 // =dword_2010CC4 
	ldr r0, [r0]
	add r0, #0xa
	add r0, r0, r5
	strb r3, [r0]
	b loc_814A3B2
	.byte 0, 0
off_814A320: .word dword_2010CC4
off_814A324: .word dword_2010CC0
loc_814A328:
	mov r0, #0
	strb r0, [r4]
	b loc_814A3B2
loc_814A32E:
	ldrb r0, [r1,#2]
	orr r0, r2
	and r0, r6
	cmp r0, #0
	bne loc_814A3B2
	bl sub_814C43C
	bl sub_814C384
	ldr r0, off_814A378 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r2, [r0]
	ldrb r0, [r2,#1]
	sub r0, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r2, #8
	cmp r3, #0
	beq loc_814A3B2
	ldrh r4, [r2]
	ldrb r0, [r2,#2]
	cmp r0, r5
	bne loc_814A380
	ldr r0, off_814A37C // =dword_2010CC4 
	ldr r0, [r0]
	lsl r1, r5, #1
	add r0, #0x12
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne loc_814A380
	lsl r7, r5
	mov r0, r9
	orr r0, r7
	lsl r0, r0, #0x18
	b loc_814A3AE
off_814A378: .word dword_2010CC8
off_814A37C: .word dword_2010CC4
loc_814A380:
	add r2, #4
	sub r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0
	beq loc_814A3B2
	ldrh r4, [r2]
	ldrb r0, [r2,#2]
	cmp r0, r5
	bne loc_814A380
	ldr r0, off_814A410 // =dword_2010CC4 
	ldr r0, [r0]
	lsl r1, r5, #1
	add r0, #0x12
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne loc_814A380
	mov r0, #1
	lsl r0, r5
	mov r1, r9
	orr r1, r0
	lsl r0, r1, #0x18
loc_814A3AE:
	lsr r0, r0, #0x18
	mov r9, r0
loc_814A3B2:
	ldr r0, off_814A414 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r1, [r0,#2]
	mov r2, r8
	ldrb r0, [r2]
	and r0, r1
	and r6, r0
	cmp r6, #0
	beq loc_814A3CC
	add r0, r5, #0
	mov r1, #0
	bl sub_814A41C
loc_814A3CC:
	mov r1, r10
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bhi loc_814A3D8
	b loc_814A1D4
loc_814A3D8:
	mov r2, r9
	cmp r2, #0
	beq loc_814A3E8
	mov r0, r9
	bl sub_814C7F8
	bl sub_814C384
loc_814A3E8:
	ldr r1, off_814A418 // =dword_2010CC8 
	ldr r0, [r1]
	add r0, #0xdc
	ldr r0, [r0]
	ldr r2, [sp,#0x10]
	str r2, [r0]
	ldr r0, [r1]
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, [sp,#0x14]
	str r1, [r0,#4]
loc_814A3FE:
	mov r0, #0
loc_814A400:
	add sp, sp, #0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
off_814A410: .word dword_2010CC4
off_814A414: .word dword_2010CC0
off_814A418: .word dword_2010CC8
.endfunc // sub_814A060

.func
.thumb_func
sub_814A41C:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r12, r1
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r7
	lsr r5, r0, #0x18
	ldr r1, off_814A4C0 // =dword_2010CC0 
	ldr r4, [r1]
	ldrb r0, [r4,#2]
	and r0, r5
	mov r8, r1
	cmp r0, #0
	beq loc_814A44E
	ldrb r0, [r4,#1]
	cmp r0, #0
	beq loc_814A44E
	sub r0, #1
	strb r0, [r4,#1]
loc_814A44E:
	mov r3, r8
	ldr r2, [r3]
	mvn r6, r5
	ldrb r1, [r2,#2]
	add r0, r6, #0
	and r0, r1
	strb r0, [r2,#2]
	ldr r2, [r3]
	ldrb r1, [r2,#3]
	add r0, r5, #0
	orr r0, r1
	strb r0, [r2,#3]
	ldr r3, [r3]
	ldr r0, [r3]
	ldr r1, dword_814A4C4 // =0xFF00FF 
	and r0, r1
	cmp r0, #0
	bne loc_814A476
	mov r0, #0xff
	strb r0, [r3]
loc_814A476:
	mov r0, r12
	cmp r0, #0
	beq loc_814A4B4
	mov r1, sp
	mov r4, #0
	mov r0, #0
	strh r0, [r1]
	lsl r0, r7, #5
	add r0, #0x14
	mov r2, r8
	ldr r1, [r2]
	add r1, r1, r0
	ldr r2, dword_814A4C8 // =0x1000010 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, r8
	ldr r2, [r0]
	ldrb r1, [r2,#3]
	add r0, r6, #0
	and r0, r1
	strb r0, [r2,#3]
	mov r2, r8
	ldr r1, [r2]
	ldrb r0, [r1,#7]
	and r6, r0
	strb r6, [r1,#7]
	ldr r0, [r2]
	add r0, #0xa
	add r0, r0, r7
	strb r4, [r0]
loc_814A4B4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
off_814A4C0: .word dword_2010CC0
dword_814A4C4: .word 0xFF00FF
dword_814A4C8: .word 0x1000010
.endfunc // sub_814A41C

.func
.thumb_func
sub_814A4CC:
	push {r4,lr}
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r2, off_814A510 // =dword_2010CC0 
	ldr r1, [r2]
	ldrb r0, [r1,#2]
	ldrb r1, [r1,#3]
	orr r0, r1
	and r0, r4
	cmp r0, #0
	beq loc_814A550
	ldr r0, off_814A514 // =dword_2010CC4 
	ldr r1, [r0]
	strb r4, [r1,#5]
	ldr r2, [r2]
	ldrb r1, [r2]
	add r3, r0, #0
	cmp r1, #0xff
	bne loc_814A518
	ldr r0, [r3]
	ldrb r1, [r0]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	beq loc_814A518
	ldrb r0, [r2,#3]
	and r0, r4
	cmp r0, #0
	beq loc_814A550
	mov r0, #0x30 
	mov r1, #0
	bl sub_814A55C
	b loc_814A550
off_814A510: .word dword_2010CC0
off_814A514: .word dword_2010CC4
loc_814A518:
	ldr r0, [r3]
	ldrb r0, [r0,#9]
	cmp r0, #0
	beq loc_814A544
	ldr r0, off_814A540 // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C564
	bl sub_814C384
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	beq loc_814A544
	mov r0, #0x1b
	bl sub_81494B8
	b loc_814A550
	.byte 0, 0
off_814A540: .word sub_81494F8+1
loc_814A544:
	ldr r0, off_814A558 // =sub_814A55C+1 
	bl sub_814C360
	add r0, r4, #0
	bl sub_814C7F8
loc_814A550:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814A558: .word sub_814A55C+1
.endfunc // sub_814A4CC

.func
.thumb_func
sub_814A55C:
	push {r4-r6,lr}
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	cmp r5, #3
	bne loc_814A598
	ldr r0, off_814A62C // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_814A598
	ldr r0, off_814A630 // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C418
	bl sub_814C384
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814A598
	ldr r0, off_814A634 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0,#7]
	cmp r0, #0
	bne loc_814A598
	mov r5, #0
loc_814A598:
	ldr r3, off_814A638 // =dword_2010CC4 
	ldr r2, [r3]
	ldr r0, off_814A62C // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r0, [r1,#2]
	ldrb r1, [r1,#3]
	orr r0, r1
	ldrb r1, [r2,#5]
	and r0, r1
	strb r0, [r2,#5]
	ldr r0, off_814A634 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0,#5]
	strb r0, [r1,#8]
	cmp r5, #0
	bne loc_814A5E6
	mov r4, #0
loc_814A5C0:
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r4
	lsr r0, r0, #0x18
	ldr r1, off_814A638 // =dword_2010CC4 
	ldr r1, [r1]
	ldrb r1, [r1,#5]
	and r0, r1
	cmp r0, #0
	beq loc_814A5DC
	add r0, r4, #0
	mov r1, #1
	bl sub_814A41C
loc_814A5DC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814A5C0
loc_814A5E6:
	ldr r0, off_814A62C // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r1, [r2,#2]
	ldrb r0, [r2,#3]
	orr r0, r1
	cmp r0, #0
	bne loc_814A5F8
	mov r0, #0xff
	strb r0, [r2]
loc_814A5F8:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_81494B8
	ldr r0, off_814A638 // =dword_2010CC4 
	ldr r0, [r0]
	ldrb r0, [r0,#9]
	cmp r0, #0
	beq loc_814A626
	ldr r0, off_814A630 // =sub_81494F8+1 
	bl sub_814C360
	bl sub_814C51C
	bl sub_814C384
	add r5, r0, #0
	cmp r5, #0
	beq loc_814A626
	mov r0, #0x19
	add r1, r5, #0
	bl sub_81494B8
loc_814A626:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814A62C: .word dword_2010CC0
off_814A630: .word sub_81494F8+1
off_814A634: .word dword_2010CC8
off_814A638: .word dword_2010CC4
.endfunc // sub_814A55C

.func
.thumb_func
sub_814A63C:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, off_814A68C // =dword_2010CC4 
	ldr r0, [r0]
	strb r5, [r0,#5]
	mov r4, #0
	mov r0, #1
	and r0, r5
	ldr r2, off_814A690 // =sub_81494B8+1 
	cmp r0, #0
	bne loc_814A66A
	mov r1, #1
loc_814A656:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bhi loc_814A66A
	add r0, r5, #0
	asr r0, r4
	and r0, r1
	cmp r0, #0
	beq loc_814A656
loc_814A66A:
	add r0, r2, #0
	bl sub_814C360
	ldr r0, off_814A694 // =dword_2010CC0 
	ldr r1, [r0]
	lsl r0, r4, #5
	add r0, r1, r0
	ldrh r0, [r0,#0x14]
	add r1, #0x94
	ldrh r1, [r1]
	add r2, r5, #0
	bl sub_814C860
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814A68C: .word dword_2010CC4
off_814A690: .word sub_81494B8+1
off_814A694: .word dword_2010CC0
.endfunc // sub_814A63C

.func
.thumb_func
sub_814A698:
	push {lr}
	ldr r0, off_814A6A8 // =sub_814A6AC+1 
	bl sub_814C360
	bl sub_814C89C
	pop {r0}
	bx r0
off_814A6A8: .word sub_814A6AC+1
.endfunc // sub_814A698

.func
.thumb_func
sub_814A6AC:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r8, r0
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	cmp r7, #0
	bne loc_814A730
	ldr r0, off_814A744 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0,#4]
	cmp r0, #0
	bne loc_814A730
	ldr r0, off_814A748 // =dword_2010CC4 
	ldr r1, [r0]
	ldrb r1, [r1,#5]
	add r6, r0, #0
	cmp r1, #0
	beq loc_814A730
	ldr r1, off_814A74C // =dword_2010CC0 
	ldr r0, [r1]
	strb r7, [r0]
	mov r4, #0
	add r5, r1, #0
	mov r12, r4
loc_814A6E6:
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r4
	lsr r3, r0, #0x18
	ldr r2, [r5]
	ldr r0, [r6]
	ldrb r0, [r0,#5]
	and r0, r3
	ldrb r1, [r2,#3]
	and r0, r1
	cmp r0, #0
	beq loc_814A720
	ldrb r1, [r2,#2]
	add r0, r3, #0
	orr r0, r1
	strb r0, [r2,#2]
	ldr r1, [r5]
	ldrb r0, [r1,#3]
	bic r0, r3
	strb r0, [r1,#3]
	ldr r1, [r5]
	ldrb r0, [r1,#1]
	add r0, #1
	strb r0, [r1,#1]
	ldr r0, [r6]
	add r0, #0xa
	add r0, r0, r4
	mov r1, r12
	strb r1, [r0]
loc_814A720:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814A6E6
	ldr r1, [r6]
	mov r0, #0
	strb r0, [r1,#5]
loc_814A730:
	mov r0, r8
	add r1, r7, #0
	bl sub_81494B8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814A744: .word dword_2010CC8
off_814A748: .word dword_2010CC4
off_814A74C: .word dword_2010CC0
.endfunc // sub_814A6AC

.func
.thumb_func
sub_814A750:
	push {lr}
	add r2, r0, #0
	mov r0, #0xff
	strb r0, [r2]
	ldr r0, off_814A770 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, #0x4d 
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bls loc_814A774
	mov r0, #0x10
	b loc_814A77A
off_814A770: .word dword_2010CC8
loc_814A774:
	ldrb r0, [r1,#4]
	strb r0, [r2]
	mov r0, #0
loc_814A77A:
	pop {r1}
	bx r1
	.byte 0, 0
.endfunc // sub_814A750

.func
.thumb_func
sub_814A780:
	push {lr}
	ldr r0, off_814A790 // =sub_814A6AC+1 
	bl sub_814C360
	bl sub_814C8C0
	pop {r0}
	bx r0
off_814A790: .word sub_814A6AC+1
word_814A794: .hword 0xB570
	.byte  5
	.byte 0x1C
	.byte 0xE
	.byte 0x1C
	.byte 0x2B 
	.byte 0x68 
	.byte 0x31 
	.byte 0x68 
	.byte  1
	.byte 0x3A 
	.byte  1
	.byte 0x20
	.byte 0x40 
	.byte 0x42 
	.byte 0x82
	.byte 0x42 
	.byte  7
	.byte 0xD0
	.byte  4
	.byte 0x1C
	.byte 0x18
	.byte 0x78 
	.byte  8
	.byte 0x70 
	.byte  1
	.byte 0x33 
	.byte  1
	.byte 0x31 
	.byte  1
	.byte 0x3A 
	.byte 0xA2
	.byte 0x42 
	.byte 0xF8
	.byte 0xD1
	.byte 0x2B 
	.byte 0x60 
	.byte 0x31 
	.byte 0x60 
	.byte 0x70 
	.byte 0xBC
	.byte  1
	.byte 0xBC
	.byte  0
	.byte 0x47 
	.balign 4, 0x00
.endfunc // sub_814A780

.func
.thumb_func
sub_814A7C4:
	push {lr}
	mov r0, #1
	bl sub_814C2E8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bne loc_814A7E4
	ldr r0, off_814A7E0 // =sub_81494B8+1 
	bl sub_814C360
	bl sub_814C720
	b loc_814A7EC
off_814A7E0: .word sub_81494B8+1
loc_814A7E4:
	mov r0, #0x27 
	mov r1, #0
	bl sub_81494B8
loc_814A7EC:
	pop {r0}
	bx r0
.endfunc // sub_814A7C4

.func
.thumb_func
sub_814A7F0:
	push {lr}
	mov r0, #1
	bl sub_814C2E8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #1
	bne loc_814A81E
	ldr r0, off_814A824 // =dword_2010CCC 
	ldr r1, [r0]
	add r0, r1, #0
	add r0, #0x2c 
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_814A81E
	ldrb r0, [r1,#6]
	cmp r0, #0x27 
	beq loc_814A81C
	cmp r0, #0x25 
	beq loc_814A81C
	cmp r0, #0x37 
	bne loc_814A81E
loc_814A81C:
	mov r2, #0
loc_814A81E:
	add r0, r2, #0
	pop {r1}
	bx r1
off_814A824: .word dword_2010CCC
.endfunc // sub_814A7F0

.func
.thumb_func
sub_814A828:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r1, off_814A8AC // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	mov r8, r0
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	mov r0, sp
	add r0, #2
	mov r7, #0
	add r6, r0, #0
loc_814A844:
	mov r0, sp
	strh r7, [r0]
	ldr r0, off_814A8B0 // =dword_2010CB0 
	lsl r4, r5, #2
	add r0, r4, r0
	ldr r1, [r0]
	mov r0, sp
	ldr r2, dword_814A8B4 // =0x1000034 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	strh r7, [r6]
	ldr r0, off_814A8B8 // =dword_2010CA0 
	add r4, r4, r0
	ldr r1, [r4]
	add r0, r6, #0
	ldr r2, dword_814A8BC // =0x100000A 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r3, off_814A8C0 // =dword_2010CC0 
	ldr r0, [r3]
	add r0, #0x10
	add r0, r0, r5
	mov r1, #0x10
	strb r1, [r0]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	bls loc_814A844
	ldr r2, [r3]
	mov r1, #0
	mov r0, #0x57 
	strb r0, [r2,#0xf]
	ldr r0, [r3]
	strb r1, [r0,#4]
	ldr r0, [r3]
	strb r1, [r0,#5]
	ldr r0, [r3]
	strb r1, [r0,#6]
	ldr r0, off_814A8C4 // =dword_2010CC4 
	ldr r0, [r0]
	strb r1, [r0,#2]
	ldr r0, off_814A8AC // =InterruptMasterEnableRegister 
	mov r1, r8
	strh r1, [r0]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814A8AC: .word InterruptMasterEnableRegister
off_814A8B0: .word dword_2010CB0
dword_814A8B4: .word 0x1000034
off_814A8B8: .word dword_2010CA0
dword_814A8BC: .word 0x100000A
off_814A8C0: .word dword_2010CC0
off_814A8C4: .word dword_2010CC4
.endfunc // sub_814A828

.func
.thumb_func
sub_814A8C8:
	push {r4-r6,lr}
	add r4, r2, #0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r5, r2, #0
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	ldr r0, off_814A900 // =dword_2010CC4 
	ldr r0, [r0]
	ldrb r1, [r0]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	bne loc_814A908
	ldr r6, off_814A904 // =dword_2010CC0 
	cmp r3, #0
	bne loc_814A8F4
	ldr r1, [r6]
	ldrb r0, [r1,#0xf]
	ldrh r4, [r4,#0x2e]
	add r0, r0, r4
	strb r0, [r1,#0xf]
loc_814A8F4:
	ldr r1, [r6]
	ldrb r0, [r1,#0xf]
	add r0, #3
	strb r0, [r1,#0xf]
	b loc_814A928
	.byte 0, 0
off_814A900: .word dword_2010CC4
off_814A904: .word dword_2010CC0
loc_814A908:
	ldr r6, off_814A930 // =dword_2010CC0 
	cmp r3, #0
	bne loc_814A91C
	ldr r1, [r6]
	add r1, #0x10
	add r1, r1, r2
	ldrb r0, [r1]
	ldrh r4, [r4,#0x2e]
	add r0, r0, r4
	strb r0, [r1]
loc_814A91C:
	ldr r1, [r6]
	add r1, #0x10
	add r1, r1, r5
	ldrb r0, [r1]
	add r0, #2
	strb r0, [r1]
loc_814A928:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0, 0
off_814A930: .word dword_2010CC0
.endfunc // sub_814A8C8

.func
.thumb_func
sub_814A934:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r8, r0
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	cmp r7, #3
	bls loc_814A954
	mov r0, #0x80
	lsl r0, r0, #3
	b loc_814AACC
loc_814A954:
	mov r0, #0xf
	mov r1, r8
	and r0, r1
	cmp r0, #0
	bne loc_814A964
	mov r0, #0xc0
	lsl r0, r0, #3
	b loc_814AACC
loc_814A964:
	ldr r1, off_814A9A8 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	mov r10, r0
	mov r0, #0
	strh r0, [r1]
	mov r0, #0xc
	mov r2, r8
	and r0, r2
	cmp r0, #0
	beq loc_814AA2C
	mov r3, #0
	ldr r1, off_814A9AC // =dword_2010CB0 
	lsl r0, r7, #2
	add r0, r0, r1
	mov r9, r0
loc_814A982:
	mov r4, #0
	cmp r3, #0
	bne loc_814A9B4
	mov r0, #4
	mov r1, r8
	and r0, r1
	cmp r0, #0
	beq loc_814A9D4
	mov r2, r9
	ldr r4, [r2]
	ldr r0, off_814A9B0 // =dword_2010CC0 
	ldr r2, [r0]
	add r0, r4, #0
	add r0, #0x2c 
	ldrb r1, [r0]
	ldrb r0, [r2,#4]
	bic r0, r1
	strb r0, [r2,#4]
	b loc_814A9D4
off_814A9A8: .word InterruptMasterEnableRegister
off_814A9AC: .word dword_2010CB0
off_814A9B0: .word dword_2010CC0
loc_814A9B4:
	mov r0, #8
	mov r1, r8
	and r0, r1
	cmp r0, #0
	beq loc_814A9D4
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, #0
	add r4, #0x34 
	ldr r0, off_814AA68 // =dword_2010CC0 
	ldr r2, [r0]
	mov r1, #1
	lsl r1, r7
	ldrb r0, [r2,#5]
	bic r0, r1
	strb r0, [r2,#5]
loc_814A9D4:
	add r6, r3, #1
	cmp r4, #0
	beq loc_814AA24
	ldrh r0, [r4]
	mov r2, #0x80
	lsl r2, r2, #8
	add r1, r2, #0
	and r0, r1
	cmp r0, #0
	beq loc_814AA14
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r0, r7, #0
	add r2, r4, #0
	bl sub_814A8C8
	mov r1, #0
	add r2, r4, #0
	add r2, #0x2c 
	mov r5, #1
	mov r3, #0
loc_814A9FE:
	ldrb r0, [r2]
	asr r0, r1
	and r0, r5
	cmp r0, #0
	beq loc_814AA0A
	strh r3, [r4,#2]
loc_814AA0A:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #3
	bls loc_814A9FE
loc_814AA14:
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	mov r0, sp
	add r1, r4, #0
	ldr r2, dword_814AA6C // =0x100001A 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
loc_814AA24:
	lsl r0, r6, #0x10
	lsr r3, r0, #0x10
	cmp r3, #1
	bls loc_814A982
loc_814AA2C:
	mov r0, #1
	mov r4, r8
	and r0, r4
	cmp r0, #0
	beq loc_814AAA2
	ldr r1, off_814AA70 // =dword_2010CA0 
	lsl r0, r7, #2
	add r0, r0, r1
	ldr r3, [r0]
	ldrh r1, [r3]
	mov r0, #0x80
	lsl r0, r0, #8
	and r0, r1
	cmp r0, #0
	beq loc_814AA94
	ldr r0, off_814AA74 // =dword_2010CC4 
	ldr r0, [r0]
	ldrb r1, [r0]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	bne loc_814AA78
	ldr r2, off_814AA68 // =dword_2010CC0 
	ldr r1, [r2]
	ldrb r0, [r1,#0xf]
	add r0, #3
	ldrb r4, [r3,#4]
	add r0, r0, r4
	strb r0, [r1,#0xf]
	b loc_814AA8A
off_814AA68: .word dword_2010CC0
dword_814AA6C: .word 0x100001A
off_814AA70: .word dword_2010CA0
off_814AA74: .word dword_2010CC4
loc_814AA78:
	ldr r2, off_814AADC // =dword_2010CC0 
	ldr r1, [r2]
	add r1, #0x10
	add r1, r1, r7
	ldrb r0, [r1]
	add r0, #2
	ldrb r4, [r3,#4]
	add r0, r0, r4
	strb r0, [r1]
loc_814AA8A:
	ldr r2, [r2]
	ldrb r1, [r3,#3]
	ldrb r0, [r2,#6]
	bic r0, r1
	strb r0, [r2,#6]
loc_814AA94:
	mov r0, sp
	mov r1, #0
	strh r1, [r0]
	ldr r2, dword_814AAE0 // =0x1000006 
	add r1, r3, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
loc_814AAA2:
	mov r0, #2
	mov r1, r8
	and r0, r1
	cmp r0, #0
	beq loc_814AAC4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r1, off_814AAE4 // =dword_2010CA0 
	lsl r0, r7, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, #0xc
	ldr r2, dword_814AAE8 // =0x1000004 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
loc_814AAC4:
	ldr r0, off_814AAEC // =InterruptMasterEnableRegister 
	mov r2, r10
	strh r2, [r0]
	mov r0, #0
loc_814AACC:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
off_814AADC: .word dword_2010CC0
dword_814AAE0: .word 0x1000006
off_814AAE4: .word dword_2010CA0
dword_814AAE8: .word 0x1000004
off_814AAEC: .word InterruptMasterEnableRegister
.endfunc // sub_814A934

.func
.thumb_func
sub_814AAF0:
	push {r4-r6,lr}
	add r5, r2, #0
	add r6, r3, #0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r2, r3, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r4, r1, #0
	cmp r1, #3
	bls loc_814AB0C
	mov r0, #0x80
	lsl r0, r0, #3
	b loc_814AB44
loc_814AB0C:
	mov r0, #0x20 
	and r0, r3
	cmp r0, #0
	beq loc_814AB28
	ldr r0, off_814AB24 // =dword_2010CB0 
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	str r5, [r0,#0x68]
	str r6, [r0,#0x6c]
	b loc_814AB42
	.balign 4, 0x00
off_814AB24: .word dword_2010CB0
loc_814AB28:
	mov r0, #0x10
	and r2, r0
	cmp r2, #0
	bne loc_814AB36
	mov r0, #0xc0
	lsl r0, r0, #3
	b loc_814AB44
loc_814AB36:
	ldr r0, off_814AB4C // =dword_2010CA0 
	lsl r1, r4, #2
	add r1, r1, r0
	ldr r0, [r1]
	str r5, [r0,#0x14]
	str r6, [r0,#0x18]
loc_814AB42:
	mov r0, #0
loc_814AB44:
	pop {r4-r6}
	pop {r1}
	bx r1
	.balign 4, 0x00
off_814AB4C: .word dword_2010CA0
.endfunc // sub_814AAF0

.func
.thumb_func
sub_814AB50:
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	str r3, [sp]
	mov r0, #0x20 
	add r1, r4, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_814ABEC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
.endfunc // sub_814AB50

.func
.thumb_func
sub_814AB7C:
	push {lr}
	sub sp, sp, #4
	add r3, r1, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	ldr r0, off_814AB98 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_814AB9C
	add r0, r2, #3
	b loc_814AB9E
off_814AB98: .word dword_2010CC0
loc_814AB9C:
	add r0, r2, #2
loc_814AB9E:
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	bl sub_814ABEC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, sp, #4
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_814AB7C

.func
.thumb_func
sub_814ABB8:
	push {lr}
	sub sp, sp, #4
	add r2, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r1, #0x80
	lsl r1, r1, #0x11
	lsl r1, r0
	lsr r1, r1, #0x18
	ldr r0, off_814ABE8 // =dword_2010CC0 
	ldr r3, [r0]
	add r3, #0x98
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #0x40 
	bl sub_814ABEC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, sp, #4
	pop {r1}
	bx r1
off_814ABE8: .word dword_2010CC0
.endfunc // sub_814ABB8

.func
.thumb_func
sub_814ABEC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	str r3, [sp]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r8, r2
	ldr r0, off_814AC18 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r1, [r2]
	mov r10, r0
	cmp r1, #0xff
	bne loc_814AC20
	ldr r0, off_814AC1C // =0x301 
	b loc_814ADD6
off_814AC18: .word dword_2010CC0
off_814AC1C: .word 0x301
loc_814AC20:
	mov r0, #0xf
	and r0, r3
	cmp r0, #0
	bne loc_814AC2E
	mov r0, #0x80
	lsl r0, r0, #3
	b loc_814ADD6
loc_814AC2E:
	ldrb r0, [r2,#2]
	ldrb r1, [r2,#3]
	orr r0, r1
	and r0, r3
	cmp r0, r3
	beq loc_814AC44
	ldr r0, off_814AC40 // =0x401 
	b loc_814ADD6
	.byte 0, 0
off_814AC40: .word 0x401
loc_814AC44:
	mov r0, #0x10
	and r0, r6
	cmp r0, #0
	beq loc_814AC50
	ldrb r0, [r2,#6]
	b loc_814AC52
loc_814AC50:
	ldrb r0, [r2,#4]
loc_814AC52:
	and r0, r3
	cmp r0, #0
	beq loc_814AC60
	ldr r0, dword_814AC5C // =0x402 
	b loc_814ADD6
dword_814AC5C: .word 0x402
loc_814AC60:
	mov r2, #0
	mov r0, #1
	and r0, r3
	ldr r4, off_814AC90 // =dword_81C03AC 
	cmp r0, #0
	bne loc_814AC82
	mov r1, #1
loc_814AC6E:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bhi loc_814AC82
	add r0, r3, #0
	asr r0, r2
	and r0, r1
	cmp r0, #0
	beq loc_814AC6E
loc_814AC82:
	mov r0, r10
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	bne loc_814AC94
	add r1, #0xf
	b loc_814AC9E
off_814AC90: .word dword_81C03AC
loc_814AC94:
	cmp r0, #0
	bne loc_814ACA0
	add r0, r2, #0
	add r0, #0x10
	add r1, r1, r0
loc_814AC9E:
	mov r9, r1
loc_814ACA0:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0]
	lsl r0, r0, #4
	add r0, r0, r4
	ldrb r4, [r0]
	mov r0, r9
	ldrb r0, [r0]
	cmp r8, r0
	bhi loc_814ACB8
	cmp r8, r4
	bhi loc_814ACBE
loc_814ACB8:
	mov r0, #0xa0
	lsl r0, r0, #3
	b loc_814ADD6
loc_814ACBE:
	ldr r1, off_814AD0C // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	str r0, [sp,#4]
	mov r7, #0
	strh r7, [r1]
	mov r0, #0x20 
	and r0, r6
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0
	bne loc_814ACD8
	cmp r6, #0x40 
	bne loc_814AD94
loc_814ACD8:
	ldr r1, off_814AD10 // =dword_2010CB0 
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r12, r0
	mov r1, #0
	strh r1, [r0,#0x18]
	mov r1, r12
	add r1, #0x2d 
	mov r2, r12
	str r1, [r2,#4]
	mov r0, #7
	str r0, [r2,#0x14]
	mov r0, r12
	add r0, #0x2c 
	strb r3, [r0]
	strb r3, [r2,#0x1a]
	mov r2, r8
	sub r0, r2, r4
	mov r2, r12
	strh r0, [r2,#0x2e]
	cmp r5, #0
	beq loc_814AD14
	strb r7, [r1]
	b loc_814AD18
	.balign 4, 0x00
off_814AD0C: .word InterruptMasterEnableRegister
off_814AD10: .word dword_2010CB0
loc_814AD14:
	mov r0, #1
	strb r0, [r1]
loc_814AD18:
	ldr r0, [sp,#0x28]
	mov r1, r12
	str r0, [r1,#0x30]
	ldr r2, [sp]
	str r2, [r1,#0x28]
	mov r1, #0
	mov r0, r12
	strb r1, [r0,#0x1f]
	add r0, #0x20 
	strb r1, [r0]
	mov r4, r12
	add r4, #0x1b
	mov r6, #0
	mov r2, r12
	add r2, #0x21 
	mov r5, #1
loc_814AD38:
	add r0, r4, r1
	strb r6, [r0]
	add r0, r2, r1
	strb r5, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #3
	bls loc_814AD38
	mov r2, #0
	mov r5, #1
	ldr r4, off_814AD8C // =dword_2010CB0 
	mov r1, #0
loc_814AD52:
	add r0, r3, #0
	asr r0, r2
	and r0, r5
	cmp r0, #0
	beq loc_814AD64
	lsl r0, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	strh r1, [r0,#2]
loc_814AD64:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_814AD52
	mov r1, r10
	ldr r2, [r1]
	ldrb r1, [r2,#4]
	add r0, r3, #0
	orr r0, r1
	strb r0, [r2,#4]
	mov r2, r9
	ldrb r0, [r2]
	mov r1, r8
	sub r0, r0, r1
	strb r0, [r2]
	ldr r0, dword_814AD90 // =0x8021 
	mov r2, r12
	strh r0, [r2]
	b loc_814ADCC
off_814AD8C: .word dword_2010CB0
dword_814AD90: .word 0x8021
loc_814AD94:
	mov r0, #0x10
	and r0, r6
	cmp r0, #0
	beq loc_814ADCC
	ldr r1, off_814ADE8 // =dword_2010CA0 
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r1, [r0]
	strb r3, [r1,#3]
	ldr r0, [sp]
	str r0, [r1,#8]
	mov r2, r8
	sub r0, r2, r4
	strh r0, [r1,#4]
	mov r2, r9
	ldrb r0, [r2]
	mov r2, r8
	sub r0, r0, r2
	mov r2, r9
	strb r0, [r2]
	ldr r0, dword_814ADEC // =0x8024 
	strh r0, [r1]
	mov r0, r10
	ldr r2, [r0]
	ldrb r1, [r2,#6]
	add r0, r3, #0
	orr r0, r1
	strb r0, [r2,#6]
loc_814ADCC:
	ldr r0, off_814ADF0 // =InterruptMasterEnableRegister 
	mov r1, sp
	ldrh r1, [r1,#4]
	strh r1, [r0]
	mov r0, #0
loc_814ADD6:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.balign 4, 0x00
off_814ADE8: .word dword_2010CA0
dword_814ADEC: .word 0x8024
off_814ADF0: .word InterruptMasterEnableRegister
.endfunc // sub_814ABEC

.func
.thumb_func
sub_814ADF4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r3, r0, #0
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r7, #3
	bls loc_814AE18
	mov r0, #0x80
	lsl r0, r0, #3
	b loc_814AF4C
loc_814AE18:
	cmp r0, #0x20 
	bne loc_814AEB8
	ldr r0, off_814AEA8 // =dword_2010CB0 
	mov r12, r0
	lsl r0, r7, #2
	add r0, r12
	ldr r5, [r0]
	ldrh r2, [r5]
	ldr r1, dword_814AEAC // =0x8020 
	add r0, r1, #0
	and r0, r2
	cmp r0, r1
	bne loc_814AECE
	ldrb r0, [r5,#0x1a]
	add r3, r6, #0
	eor r3, r0
	add r2, r3, #0
	and r2, r6
	cmp r2, #0
	bne loc_814AF06
	cmp r3, #0
	bne loc_814AE46
	b loc_814AF4A
loc_814AE46:
	ldr r1, off_814AEB0 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	mov r8, r0
	strh r2, [r1]
	mov r2, #0
	mvn r1, r3
	str r1, [sp]
	lsl r4, r6, #0x18
	mov r10, r4
	mov r0, #1
	mov r9, r0
	mov r1, #0
loc_814AE5E:
	add r0, r3, #0
	asr r0, r2
	mov r4, r9
	and r0, r4
	cmp r0, #0
	beq loc_814AE72
	lsl r0, r2, #2
	add r0, r12
	ldr r0, [r0]
	strh r1, [r0,#2]
loc_814AE72:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_814AE5E
	ldr r0, off_814AEB4 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r0, [r1,#4]
	ldr r2, [sp]
	and r2, r0
	strb r2, [r1,#4]
	strb r6, [r5,#0x1a]
	mov r0, r10
	cmp r0, #0
	bne loc_814AE9E
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_814A8C8
	mov r0, #0x27 
	strh r0, [r5]
loc_814AE9E:
	ldr r0, off_814AEB0 // =InterruptMasterEnableRegister 
	mov r1, r8
	strh r1, [r0]
	b loc_814AF4A
	.balign 4, 0x00
off_814AEA8: .word dword_2010CB0
dword_814AEAC: .word 0x8020
off_814AEB0: .word InterruptMasterEnableRegister
off_814AEB4: .word dword_2010CC0
loc_814AEB8:
	cmp r3, #0x10
	bne loc_814AF44
	ldr r3, off_814AED4 // =dword_2010CA0 
	lsl r1, r7, #2
	add r0, r1, r3
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, dword_814AED8 // =0x8024 
	add r5, r3, #0
	cmp r2, r0
	beq loc_814AEE0
loc_814AECE:
	ldr r0, dword_814AEDC // =0x403 
	b loc_814AF4C
	.balign 4, 0x00
off_814AED4: .word dword_2010CA0
dword_814AED8: .word 0x8024
dword_814AEDC: .word 0x403
loc_814AEE0:
	mov r3, #0
	mov r2, #0
	add r4, r5, #0
loc_814AEE6:
	cmp r2, r7
	beq loc_814AEF4
	lsl r0, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	ldrb r0, [r0,#3]
	orr r3, r0
loc_814AEF4:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	bls loc_814AEE6
	add r2, r6, #0
	and r2, r3
	cmp r2, #0
	beq loc_814AF10
loc_814AF06:
	ldr r0, off_814AF0C // =0x404 
	b loc_814AF4C
	.balign 4, 0x00
off_814AF0C: .word 0x404
loc_814AF10:
	ldr r3, off_814AF3C // =InterruptMasterEnableRegister 
	ldrh r0, [r3]
	mov r8, r0
	strh r2, [r3]
	ldr r4, off_814AF40 // =dword_2010CC0 
	ldr r2, [r4]
	add r5, r1, r5
	ldr r0, [r5]
	ldrb r1, [r0,#3]
	ldrb r0, [r2,#6]
	bic r0, r1
	strb r0, [r2,#6]
	ldr r2, [r4]
	ldrb r1, [r2,#6]
	add r0, r6, #0
	orr r0, r1
	strb r0, [r2,#6]
	ldr r0, [r5]
	strb r6, [r0,#3]
	mov r2, r8
	strh r2, [r3]
	b loc_814AF4A
off_814AF3C: .word InterruptMasterEnableRegister
off_814AF40: .word dword_2010CC0
loc_814AF44:
	mov r0, #0xc0
	lsl r0, r0, #3
	b loc_814AF4C
loc_814AF4A:
	mov r0, #0
loc_814AF4C:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
.endfunc // sub_814ADF4

.func
.thumb_func
sub_814AF5C:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_814AF6C
	mov r0, #0x80
	lsl r0, r0, #3
	b loc_814AFC6
loc_814AF6C:
	ldr r1, off_814AF98 // =dword_2010CB0 
	lsl r0, r3, #2
	add r0, r0, r1
	ldr r2, [r0]
	add r5, r2, #0
	add r5, #0x34 
	ldr r1, off_814AF9C // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	add r4, r0, #0
	mov r0, #0
	strh r0, [r1]
	ldrh r1, [r2,#0x34]
	mov r0, #0x80
	lsl r0, r0, #8
	and r0, r1
	cmp r0, #0
	beq loc_814AFC0
	ldr r0, dword_814AFA0 // =0x8043 
	cmp r1, r0
	bne loc_814AFA4
	mov r0, #0x48 
	b loc_814AFA6
off_814AF98: .word dword_2010CB0
off_814AF9C: .word InterruptMasterEnableRegister
dword_814AFA0: .word 0x8043
loc_814AFA4:
	mov r0, #0x47 
loc_814AFA6:
	strh r0, [r2,#0x34]
	ldr r0, off_814AFCC // =dword_2010CC0 
	ldr r2, [r0]
	mov r1, #1
	lsl r1, r3
	ldrb r0, [r2,#5]
	bic r0, r1
	strb r0, [r2,#5]
	add r0, r3, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_814A8C8
loc_814AFC0:
	ldr r0, off_814AFD0 // =InterruptMasterEnableRegister 
	strh r4, [r0]
	mov r0, #0
loc_814AFC6:
	pop {r4,r5}
	pop {r1}
	bx r1
off_814AFCC: .word dword_2010CC0
off_814AFD0: .word InterruptMasterEnableRegister
.endfunc // sub_814AF5C

.func
.thumb_func
sub_814AFD4:
	push {r4-r7,lr}
	add r7, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r3, r0, #0
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r0, #3
	bls loc_814AFEC
	mov r0, #0x80
	lsl r0, r0, #3
	b loc_814B060
loc_814AFEC:
	ldr r1, off_814B000 // =dword_2010CA0 
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r4]
	ldr r0, dword_814B004 // =0x8024 
	cmp r1, r0
	beq loc_814B00C
	ldr r0, dword_814B008 // =0x403 
	b loc_814B060
off_814B000: .word dword_2010CA0
dword_814B004: .word 0x8024
dword_814B008: .word 0x403
loc_814B00C:
	ldr r0, off_814B020 // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	bne loc_814B024
	add r6, r1, #0
	add r6, #0xf
	ldrb r0, [r4,#4]
	ldrb r1, [r1,#0xf]
	b loc_814B032
off_814B020: .word dword_2010CC0
loc_814B024:
	add r0, r3, #0
	add r0, #0x10
	add r6, r1, r0
	add r1, #0x10
	add r1, r1, r3
	ldrb r0, [r4,#4]
	ldrb r1, [r1]
loc_814B032:
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r5
	bcc loc_814B05C
	ldr r2, off_814B058 // =InterruptMasterEnableRegister 
	ldrh r1, [r2]
	mov r0, #0
	strh r0, [r2]
	str r7, [r4,#8]
	sub r0, r3, r5
	strb r0, [r6]
	strh r5, [r4,#4]
	mov r0, #1
	strb r0, [r4,#2]
	strh r1, [r2]
	mov r0, #0
	b loc_814B060
	.balign 4, 0x00
off_814B058: .word InterruptMasterEnableRegister
loc_814B05C:
	mov r0, #0xa0
	lsl r0, r0, #3
loc_814B060:
	pop {r4-r7}
	pop {r1}
	bx r1
	.balign 4, 0x00
.endfunc // sub_814AFD4

.func
.thumb_func
sub_814B068:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi loc_814B086
	ldr r1, off_814B08C // =dword_2010CA0 
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	ldr r0, dword_814B090 // =0x8024 
	cmp r1, r0
	bne loc_814B086
	mov r0, #1
	strb r0, [r2,#2]
loc_814B086:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814B08C: .word dword_2010CA0
dword_814B090: .word 0x8024
.endfunc // sub_814B068

.func
.thumb_func
sub_814B094:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi loc_814B0AA
	ldr r1, off_814B0B0 // =dword_2010CA0 
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1,#0x12]
loc_814B0AA:
	pop {r0}
	bx r0
	.byte 0, 0
off_814B0B0: .word dword_2010CA0
.endfunc // sub_814B094

.func
.thumb_func
sub_814B0B4:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, off_814B100 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r1, [r2]
	add r4, r0, #0
	cmp r1, #0xff
	bne loc_814B0C8
	b loc_814B1EE
loc_814B0C8:
	cmp r1, #1
	bne loc_814B158
	ldrb r0, [r2,#4]
	ldrb r1, [r2,#5]
	add r3, r0, #0
	orr r3, r1
	ldrb r0, [r2,#6]
	orr r3, r0
	cmp r3, #0
	bne loc_814B158
	ldr r0, off_814B104 // =dword_2010CC4 
	ldr r2, [r0]
	ldrb r1, [r2,#3]
	add r4, r0, #0
	cmp r1, #0
	beq loc_814B0F0
	mov r0, #0x10
	strb r0, [r2,#8]
	ldr r0, [r4]
	strb r3, [r0,#7]
loc_814B0F0:
	ldr r1, [r4]
	ldrb r0, [r1,#8]
	cmp r0, #0
	beq loc_814B108
	sub r0, #1
	strb r0, [r1,#8]
	b loc_814B10E
	.byte 0, 0
off_814B100: .word dword_2010CC0
off_814B104: .word dword_2010CC4
loc_814B108:
	ldrb r0, [r1,#7]
	add r0, #1
	strb r0, [r1,#7]
loc_814B10E:
	ldr r1, [r4]
	ldrb r0, [r1,#8]
	cmp r0, #0
	bne loc_814B120
	ldrb r1, [r1,#7]
	mov r0, #0xf
	and r0, r1
	cmp r0, #0
	bne loc_814B1B2
loc_814B120:
	ldr r4, off_814B144 // =dword_2010CC8 
	ldr r1, [r4]
	mov r0, #1
	str r0, [r1,#0x68]
	mov r0, #0xff
	str r0, [r1,#0x78]
	ldr r0, off_814B148 // =sub_814B2A0+1 
	bl sub_814C360
	cmp r5, #0
	bne loc_814B14C
	ldr r0, [r4]
	add r0, #0x68 
	mov r1, #1
	bl sub_814C66C
	b loc_814B1EE
	.balign 4, 0x00
off_814B144: .word dword_2010CC8
off_814B148: .word sub_814B2A0+1
loc_814B14C:
	ldr r0, [r4]
	add r0, #0x68 
	mov r1, #1
	bl sub_814C6B4
	b loc_814B1EE
loc_814B158:
	ldr r0, [r4]
	ldrb r0, [r0,#0xe]
	cmp r0, #0
	bne loc_814B164
	bl sub_814B2C8
loc_814B164:
	ldr r0, [r4]
	ldrb r0, [r0,#0xe]
	cmp r0, #0
	beq loc_814B1B2
	ldr r0, off_814B190 // =sub_814B1F8+1 
	bl sub_814C360
	cmp r5, #0
	beq loc_814B19C
	ldr r0, off_814B194 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0x68 
	ldr r1, off_814B198 // =dword_2010CC4 
	ldr r1, [r1]
	ldr r1, [r1,#0x24]
	add r1, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_814C6B4
	b loc_814B1EE
	.byte 0, 0
off_814B190: .word sub_814B1F8+1
off_814B194: .word dword_2010CC8
off_814B198: .word dword_2010CC4
loc_814B19C:
	ldr r0, off_814B1D4 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0x68 
	ldr r1, off_814B1D8 // =dword_2010CC4 
	ldr r1, [r1]
	ldr r1, [r1,#0x24]
	add r1, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_814C66C
loc_814B1B2:
	cmp r5, #0
	beq loc_814B1EE
	ldr r0, off_814B1DC // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_814B1E4
	ldr r0, off_814B1E0 // =dword_2010CCC 
	ldr r0, [r0]
	ldr r1, [r0,#0x1c]
	cmp r1, #0
	beq loc_814B1EE
	mov r0, #0x27 
	bl sub_814DA64
	b loc_814B1EE
	.balign 4, 0x00
off_814B1D4: .word dword_2010CC8
off_814B1D8: .word dword_2010CC4
off_814B1DC: .word dword_2010CC0
off_814B1E0: .word dword_2010CCC
loc_814B1E4:
	ldr r0, off_814B1F4 // =sub_814B290+1 
	bl sub_814C360
	bl sub_814C720
loc_814B1EE:
	pop {r4,r5}
	pop {r0}
	bx r0
off_814B1F4: .word sub_814B290+1
.endfunc // sub_814B0B4

.func
.thumb_func
sub_814B1F8:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	cmp r7, #0
	bne loc_814B262
	mov r6, #0
	ldr r0, dword_814B280 // =0x8020 
	mov r8, r0
loc_814B20C:
	ldr r0, off_814B284 // =dword_2010CA0 
	lsl r2, r6, #2
	add r0, r2, r0
	ldr r1, [r0]
	ldrb r0, [r1,#2]
	cmp r0, #0
	beq loc_814B21E
	mov r0, #0
	strb r0, [r1,#2]
loc_814B21E:
	ldr r0, off_814B288 // =dword_2010CB0 
	add r0, r2, r0
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, r8
	bne loc_814B258
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_814A8C8
	ldr r5, off_814B28C // =dword_2010CC0 
	ldr r2, [r5]
	ldrb r1, [r4,#0x1a]
	ldrb r0, [r2,#4]
	bic r0, r1
	strb r0, [r2,#4]
	add r0, r4, #0
	add r0, #0x2d 
	ldrb r3, [r0]
	cmp r3, #1
	bne loc_814B254
	ldr r1, [r5]
	lsl r3, r6
	ldrb r0, [r1,#7]
	orr r3, r0
	strb r3, [r1,#7]
loc_814B254:
	mov r0, #0x26 
	strh r0, [r4]
loc_814B258:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_814B20C
loc_814B262:
	ldr r0, off_814B28C // =dword_2010CC0 
	ldr r1, [r0]
	ldrb r0, [r1,#0xe]
	mov r0, #0
	strb r0, [r1,#0xe]
	mov r0, #0x24 
	add r1, r7, #0
	bl sub_81494B8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
dword_814B280: .word 0x8020
off_814B284: .word dword_2010CA0
off_814B288: .word dword_2010CB0
off_814B28C: .word dword_2010CC0
.endfunc // sub_814B1F8

.func
.thumb_func
sub_814B290:
	push {lr}
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r0, #0x24 
	bl sub_81494B8
	pop {r0}
	bx r0
.endfunc // sub_814B290

.func
.thumb_func
sub_814B2A0:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0
	beq loc_814B2B6
	mov r0, #0x24 
	bl sub_81494B8
	b loc_814B2C2
loc_814B2B6:
	cmp r0, #0xff
	bne loc_814B2C2
	mov r0, #0xff
	mov r1, #0
	bl sub_81494B8
loc_814B2C2:
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814B2A0

.func
.thumb_func
sub_814B2C8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, off_814B374 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #0xff
	bne loc_814B2E0
	b loc_814B3E4
loc_814B2E0:
	ldrb r0, [r2,#4]
	ldrb r1, [r2,#5]
	orr r0, r1
	ldrb r1, [r2,#6]
	orr r0, r1
	cmp r0, #0
	beq loc_814B3E4
	ldrb r0, [r2,#0xe]
	mov r0, #0
	strb r0, [r2,#0xe]
	mov r8, r0
	ldr r0, off_814B378 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0x6c 
	str r0, [sp]
	mov r6, #0
	mov r0, #0x80
	lsl r0, r0, #8
	mov r9, r0
	ldr r1, dword_814B37C // =0x8024 
	mov r10, r1
loc_814B30A:
	mov r5, #0
	ldr r0, off_814B380 // =dword_2010CB0 
	lsl r7, r6, #2
	add r4, r7, r0
	ldr r2, [r4]
	ldrh r1, [r2]
	mov r0, r9
	and r0, r1
	cmp r0, #0
	beq loc_814B32A
	add r0, r6, #0
	mov r1, sp
	bl sub_814B400
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
loc_814B32A:
	ldr r2, [r4]
	ldrh r1, [r2,#0x34]
	mov r0, r9
	and r0, r1
	cmp r0, #0
	beq loc_814B346
	add r2, #0x34 
	add r0, r6, #0
	mov r1, sp
	bl sub_814B400
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r5, r0
loc_814B346:
	ldr r0, off_814B384 // =dword_2010CA0 
	add r0, r7, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, r10
	bne loc_814B360
	add r0, r6, #0
	mov r1, sp
	bl sub_814B5C0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r5, r0
loc_814B360:
	cmp r5, #0
	beq loc_814B394
	ldr r0, off_814B374 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_814B388
	add r8, r5
	b loc_814B394
	.balign 4, 0x00
off_814B374: .word dword_2010CC0
off_814B378: .word dword_2010CC8
dword_814B37C: .word 0x8024
off_814B380: .word dword_2010CB0
off_814B384: .word dword_2010CA0
loc_814B388:
	add r0, r7, r6
	add r0, #8
	lsl r5, r0
	mov r2, r8
	orr r2, r5
	mov r8, r2
loc_814B394:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_814B30A
	ldr r6, off_814B3F4 // =dword_2010CC4 
	mov r0, r8
	cmp r0, #0
	beq loc_814B3DE
	ldr r2, [sp]
	mov r0, #3
	and r0, r2
	ldr r5, off_814B3F8 // =dword_2010CC0 
	ldr r1, off_814B3FC // =dword_2010CC8 
	cmp r0, #0
	beq loc_814B3C6
	mov r4, #0
	mov r3, #3
loc_814B3B8:
	strb r4, [r2]
	add r0, r2, #1
	str r0, [sp]
	add r2, r0, #0
	and r0, r3
	cmp r0, #0
	bne loc_814B3B8
loc_814B3C6:
	ldr r0, [r1]
	mov r2, r8
	str r2, [r0,#0x68]
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #0
	bne loc_814B3DE
	ldr r0, [sp]
	sub r0, #0x6c 
	ldr r1, [r1]
	sub r0, r0, r1
	mov r8, r0
loc_814B3DE:
	ldr r0, [r6]
	mov r1, r8
	str r1, [r0,#0x24]
loc_814B3E4:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
off_814B3F4: .word dword_2010CC4
off_814B3F8: .word dword_2010CC0
off_814B3FC: .word dword_2010CC8
.endfunc // sub_814B2C8

.func
.thumb_func
sub_814B400:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r12, r1
	add r4, r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r10, r0
	ldr r2, off_814B47C // =dword_2010CC0 
	ldr r0, [r2]
	ldrb r0, [r0]
	lsl r0, r0, #4
	ldr r1, off_814B480 // =dword_81C03AC 
	add r0, r0, r1
	mov r8, r0
	ldrh r1, [r4]
	ldr r0, dword_814B484 // =0x8022 
	cmp r1, r0
	bne loc_814B46A
	add r3, r4, #0
	add r3, #0x20 
	ldrb r1, [r3]
	lsl r1, r1, #2
	add r5, r4, #4
	add r1, r5, r1
	ldr r2, [r4,#0x28]
	ldr r0, [r4,#0x30]
	add r2, r2, r0
	ldr r0, [r1]
	add r6, r3, #0
	cmp r0, r2
	bcc loc_814B46A
	mov r7, #0
loc_814B448:
	ldrb r0, [r3]
	add r0, #1
	strb r0, [r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	bne loc_814B458
	strb r7, [r6]
loc_814B458:
	ldrb r1, [r3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r2, [r4,#0x28]
	ldr r0, [r4,#0x30]
	add r2, r2, r0
	ldr r0, [r1]
	cmp r0, r2
	bcs loc_814B448
loc_814B46A:
	ldrh r1, [r4]
	mov r0, #0x40 
	and r0, r1
	mov r9, r1
	cmp r0, #0
	beq loc_814B488
	mov r5, #0
	b loc_814B4CC
	.balign 4, 0x00
off_814B47C: .word dword_2010CC0
off_814B480: .word dword_81C03AC
dword_814B484: .word 0x8022
loc_814B488:
	ldr r0, dword_814B4B4 // =0x8022 
	cmp r9, r0
	bne loc_814B4BC
	add r3, r4, #0
	add r3, #0x20 
	ldrb r0, [r3]
	lsl r0, r0, #2
	add r1, r4, #4
	add r1, r1, r0
	ldrh r7, [r4,#0x2e]
	ldr r5, [r1]
	add r2, r5, r7
	ldr r1, [r4,#0x28]
	ldr r0, [r4,#0x30]
	add r0, r1, r0
	add r6, r3, #0
	cmp r2, r0
	bls loc_814B4B8
	sub r0, r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	b loc_814B4D0
dword_814B4B4: .word 0x8022
loc_814B4B8:
	add r5, r7, #0
	b loc_814B4D0
loc_814B4BC:
	ldrh r2, [r4,#0x2e]
	ldr r0, [r4,#0x14]
	cmp r0, r2
	bcc loc_814B4C8
	add r5, r2, #0
	b loc_814B4CC
loc_814B4C8:
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
loc_814B4CC:
	add r6, r4, #0
	add r6, #0x20 
loc_814B4D0:
	mov r3, #0xf
	mov r0, r9
	and r3, r0
	mov r1, r8
	ldrb r1, [r1,#3]
	lsl r3, r1
	ldrb r0, [r4,#0x1f]
	mov r2, r8
	ldrb r2, [r2,#4]
	lsl r0, r2
	orr r3, r0
	ldrb r1, [r6]
	add r0, r1, #0
	mov r7, r8
	ldrb r7, [r7,#5]
	lsl r0, r7
	orr r3, r0
	add r0, r4, #0
	add r0, #0x21 
	add r0, r0, r1
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1,#6]
	lsl r0, r1
	orr r3, r0
	orr r3, r5
	str r3, [sp]
	ldr r2, off_814B58C // =dword_2010CC0 
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_814B518
	ldrb r0, [r4,#0x1a]
	lsl r0, r0, #0x12
	orr r3, r0
	str r3, [sp]
loc_814B518:
	mov r2, sp
	mov r3, #0
	mov r7, r8
	ldrb r7, [r7]
	cmp r3, r7
	bcs loc_814B542
loc_814B524:
	mov r0, r12
	ldr r1, [r0]
	ldrb r0, [r2]
	strb r0, [r1]
	add r2, #1
	add r1, #1
	mov r7, r12
	str r1, [r7]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	bcc loc_814B524
loc_814B542:
	cmp r5, #0
	beq loc_814B562
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r0, r4, #4
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [sp,#4]
	ldr r0, off_814B590 // =dword_2010CC8 
	ldr r1, [r0]
	add r0, sp, #4
	ldr r3, [r1,#4]
	mov r1, r12
	add r2, r5, #0
	bl sub_814DA6C
loc_814B562:
	ldrh r1, [r4]
	ldr r0, dword_814B594 // =0x8022 
	cmp r1, r0
	bne loc_814B57C
	ldrb r0, [r6]
	add r0, #1
	strb r0, [r6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	bne loc_814B57C
	mov r0, #0
	strb r0, [r6]
loc_814B57C:
	ldr r0, off_814B58C // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r1, [r2]
	cmp r1, #1
	bne loc_814B598
	ldrb r0, [r2,#0xe]
	strb r1, [r2,#0xe]
	b loc_814B5A6
off_814B58C: .word dword_2010CC0
off_814B590: .word dword_2010CC8
dword_814B594: .word 0x8022
loc_814B598:
	mov r0, #1
	mov r1, r10
	lsl r0, r1
	ldrb r1, [r2,#0xe]
	orr r0, r1
	ldrb r1, [r2,#0xe]
	strb r0, [r2,#0xe]
loc_814B5A6:
	mov r2, r8
	ldrb r0, [r2]
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
.endfunc // sub_814B400

.func
.thumb_func
sub_814B5C0:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	add r6, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r8, r0
	ldr r1, off_814B5E8 // =dword_2010CA0 
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r4, [r0]
	ldrb r0, [r4,#2]
	cmp r0, #0
	beq loc_814B5E4
	ldrb r0, [r4,#3]
	cmp r0, #0
	bne loc_814B5EC
loc_814B5E4:
	mov r0, #0
	b loc_814B688
off_814B5E8: .word dword_2010CA0
loc_814B5EC:
	ldr r0, off_814B664 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #4
	ldr r1, off_814B668 // =dword_81C03AC 
	add r5, r0, r1
	ldrh r0, [r4]
	mov r1, #0xf
	and r1, r0
	ldrb r0, [r5,#3]
	lsl r1, r0
	ldrh r0, [r4,#4]
	orr r1, r0
	str r1, [sp]
	ldrb r0, [r2]
	cmp r0, #1
	bne loc_814B616
	ldrb r0, [r4,#3]
	lsl r0, r0, #0x12
	orr r1, r0
	str r1, [sp]
loc_814B616:
	mov r2, sp
	mov r3, #0
	ldr r1, off_814B66C // =dword_2010CC8 
	mov r12, r1
	add r7, sp, #4
	ldrb r0, [r5]
	cmp r3, r0
	bcs loc_814B63E
loc_814B626:
	ldr r1, [r6]
	ldrb r0, [r2]
	strb r0, [r1]
	add r2, #1
	add r1, #1
	str r1, [r6]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldrb r1, [r5]
	cmp r3, r1
	bcc loc_814B626
loc_814B63E:
	ldr r0, [r4,#8]
	str r0, [sp,#4]
	mov r2, r12
	ldr r0, [r2]
	ldrh r2, [r4,#4]
	ldr r3, [r0,#4]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_814DA6C
	ldr r0, off_814B664 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #1
	bne loc_814B670
	ldrb r0, [r2,#0xe]
	mov r0, #0x10
	b loc_814B67C
	.balign 4, 0x00
off_814B664: .word dword_2010CC0
off_814B668: .word dword_81C03AC
off_814B66C: .word dword_2010CC8
loc_814B670:
	mov r0, #0x10
	mov r1, r8
	lsl r0, r1
	ldrb r1, [r2,#0xe]
	orr r0, r1
	ldrb r1, [r2,#0xe]
loc_814B67C:
	strb r0, [r2,#0xe]
	ldrh r0, [r4,#4]
	ldrb r5, [r5]
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
loc_814B688:
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
.endfunc // sub_814B5C0

.func
.thumb_func
sub_814B694:
	push {r4,lr}
	ldr r0, off_814B6C8 // =dword_2010CC0 
	ldr r4, [r0]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq loc_814B6C0
	ldr r2, off_814B6CC // =dword_2010CC4 
	ldr r3, [r2]
	ldrb r0, [r4,#4]
	ldrb r1, [r4,#5]
	orr r0, r1
	ldrb r1, [r4,#6]
	orr r0, r1
	mov r1, #0
	strb r0, [r3,#3]
	ldr r0, [r2]
	strb r1, [r0,#4]
	ldr r0, off_814B6D0 // =sub_814B6D4+1 
	bl sub_814C360
	bl sub_814C6FC
loc_814B6C0:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814B6C8: .word dword_2010CC0
off_814B6CC: .word dword_2010CC4
off_814B6D0: .word sub_814B6D4+1
.endfunc // sub_814B694

.func
.thumb_func
sub_814B6D4:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r9, r0
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	cmp r7, #0
	bne loc_814B798
	ldr r0, off_814B710 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0,#1]
	cmp r0, #0
	beq loc_814B798
	ldr r0, off_814B714 // =dword_2010CC4 
	ldr r0, [r0]
	strb r7, [r0,#1]
	ldr r0, off_814B718 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_814B71C
	bl sub_814B7C0
	b loc_814B720
off_814B710: .word dword_2010CC8
off_814B714: .word dword_2010CC4
off_814B718: .word dword_2010CC0
loc_814B71C:
	bl sub_814B858
loc_814B720:
	mov r6, #0
	ldr r0, dword_814B7B0 // =0x8043 
	mov r8, r0
	ldr r3, off_814B7B4 // =dword_2010CC0 
loc_814B728:
	ldr r0, off_814B7B8 // =dword_2010CB0 
	lsl r1, r6, #2
	add r1, r1, r0
	ldr r4, [r1]
	ldrh r0, [r4,#0x34]
	cmp r0, r8
	bne loc_814B77A
	ldr r0, off_814B7BC // =dword_2010CC4 
	ldr r0, [r0]
	ldrb r0, [r0,#1]
	asr r0, r6
	mov r1, #1
	and r0, r1
	cmp r0, #0
	bne loc_814B77A
	add r5, r4, #0
	add r5, #0x34 
	add r0, r4, #0
	add r0, #0x61 
	ldrb r2, [r0]
	cmp r2, #1
	bne loc_814B75E
	ldr r1, [r3]
	lsl r2, r6
	ldrb r0, [r1,#7]
	orr r2, r0
	strb r2, [r1,#7]
loc_814B75E:
	add r0, r6, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp]
	bl sub_814A8C8
	ldr r3, [sp]
	ldr r2, [r3]
	ldrb r1, [r5,#0x1a]
	ldrb r0, [r2,#5]
	bic r0, r1
	strb r0, [r2,#5]
	mov r0, #0x46 
	strh r0, [r4,#0x34]
loc_814B77A:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls loc_814B728
	ldr r0, off_814B7BC // =dword_2010CC4 
	ldr r1, [r0]
	ldrb r0, [r1,#4]
	cmp r0, #0
	beq loc_814B798
	add r7, r0, #0
	mov r1, #0xe0
	lsl r1, r1, #3
	add r0, r1, #0
	orr r7, r0
loc_814B798:
	mov r0, r9
	add r1, r7, #0
	bl sub_81494B8
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
dword_814B7B0: .word 0x8043
off_814B7B4: .word dword_2010CC0
off_814B7B8: .word dword_2010CB0
off_814B7BC: .word dword_2010CC4
.endfunc // sub_814B6D4

.func
.thumb_func
sub_814B7C0:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r1, off_814B850 // =dword_2010CC8 
	ldr r0, [r1]
	add r0, #0xdc
	ldr r0, [r0]
	ldr r0, [r0,#4]
	lsr r3, r0, #8
	mov r5, #0
	mov r12, r1
	mov r7, #0x1f
	ldr r4, off_814B854 // =dword_2010CC4 
	mov r6, #1
loc_814B7DA:
	mov r0, sp
	add r1, r0, r5
	add r0, r3, #0
	and r0, r7
	strb r0, [r1]
	lsr r3, r3, #5
	cmp r0, #0
	bne loc_814B7F6
	ldr r0, [r4]
	add r1, r6, #0
	lsl r1, r5
	ldrb r2, [r0,#1]
	orr r1, r2
	strb r1, [r0,#1]
loc_814B7F6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bls loc_814B7DA
	mov r1, r12
	ldr r0, [r1]
	add r0, #0xdc
	ldr r0, [r0]
	add r6, r0, #0
	add r6, #8
	mov r5, #0
loc_814B80E:
	mov r0, sp
	add r1, r0, r5
	ldrb r0, [r1]
	add r7, r5, #1
	cmp r0, #0
	beq loc_814B840
	add r4, r1, #0
loc_814B81C:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_814B8B0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r6, r6, r0
	ldrb r1, [r4]
	sub r1, r1, r0
	strb r1, [r4]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	bne loc_814B840
	lsl r0, r1, #0x18
	cmp r0, #0
	bne loc_814B81C
loc_814B840:
	lsl r0, r7, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bls loc_814B80E
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
off_814B850: .word dword_2010CC8
off_814B854: .word dword_2010CC4
.endfunc // sub_814B7C0

.func
.thumb_func
sub_814B858:
	push {r4-r6,lr}
	ldr r0, off_814B8A8 // =dword_2010CC8 
	ldr r0, [r0]
	add r0, #0xdc
	ldr r1, [r0]
	ldrh r0, [r1,#4]
	mov r4, #0x7f
	and r4, r0
	add r5, r1, #0
	add r5, #8
	cmp r4, #0
	bne loc_814B878
	ldr r0, off_814B8AC // =dword_2010CC4 
	ldr r1, [r0]
	mov r0, #0xf
	strb r0, [r1,#1]
loc_814B878:
	mov r0, #0x80
	lsl r0, r0, #8
	add r6, r0, #0
loc_814B87E:
	cmp r4, #0
	beq loc_814B8A0
	mov r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_814B8B0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r5, r0
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #0
	and r0, r6
	cmp r0, #0
	beq loc_814B87E
loc_814B8A0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814B8A8: .word dword_2010CC8
off_814B8AC: .word dword_2010CC4
.endfunc // sub_814B858

.func
.thumb_func
sub_814B8B0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	add r7, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r12, r0
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	ldr r2, off_814B8E4 // =dword_2010CC0 
	ldr r0, [r2]
	ldrb r0, [r0]
	mvn r0, r0
	mov r1, #1
	and r0, r1
	lsl r0, r0, #4
	ldr r1, off_814B8E8 // =dword_81C03AC 
	add r6, r0, r1
	ldrb r0, [r6]
	cmp r3, r0
	bcs loc_814B8EC
	add r0, r3, #0
	b loc_814BADE
off_814B8E4: .word dword_2010CC0
off_814B8E8: .word dword_81C03AC
loc_814B8EC:
	mov r5, #0
	mov r4, #0
	ldrb r3, [r6,#1]
	ldrb r1, [r6,#7]
	mov r8, r1
	ldr r2, [sp]
	mov r9, r2
	cmp r4, r0
	bcs loc_814B914
	add r2, r0, #0
loc_814B900:
	ldrb r0, [r7]
	lsl r1, r4, #3
	lsl r0, r1
	orr r5, r0
	add r7, #1
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r2
	bcc loc_814B900
loc_814B914:
	add r0, r5, #0
	lsr r0, r3
	mov r3, r8
	and r0, r3
	ldr r1, dword_814B9EC // =0xFFFFFF00 
	mov r10, r1
	mov r3, r10
	mov r2, r9
	and r3, r2
	orr r3, r0
	str r3, [sp]
	add r0, r5, #0
	ldrb r1, [r6,#2]
	lsr r0, r1
	ldrb r1, [r6,#8]
	and r0, r1
	lsl r0, r0, #8
	ldr r4, dword_814B9F0 // =0xFFFF00FF 
	add r2, r4, #0
	and r2, r3
	orr r2, r0
	str r2, [sp]
	add r0, r5, #0
	ldrb r3, [r6,#3]
	lsr r0, r3
	ldrb r1, [r6,#9]
	and r0, r1
	lsl r0, r0, #0x10
	ldr r3, dword_814B9F4 // =0xFF00FFFF 
	and r3, r2
	orr r3, r0
	str r3, [sp]
	add r0, r5, #0
	ldrb r1, [r6,#4]
	lsr r0, r1
	ldrb r1, [r6,#0xa]
	and r0, r1
	lsl r0, r0, #0x18
	ldr r2, dword_814B9F8 // =0xFFFFFF 
	mov r8, r2
	mov r1, r8
	and r1, r3
	orr r1, r0
	mov r8, r1
	str r1, [sp]
	add r1, r5, #0
	ldrb r2, [r6,#5]
	lsr r1, r2
	ldrb r0, [r6,#0xb]
	and r1, r0
	mov r9, sp
	ldr r2, [sp,#4]
	mov r3, r10
	and r2, r3
	orr r2, r1
	str r2, [sp,#4]
	add r0, r5, #0
	ldrb r1, [r6,#6]
	lsr r0, r1
	ldrb r1, [r6,#0xc]
	and r0, r1
	lsl r0, r0, #8
	and r4, r2
	orr r4, r0
	str r4, [sp,#4]
	ldrh r0, [r6,#0xe]
	and r5, r0
	lsl r1, r5, #0x10
	ldr r0, dword_814B9FC // =0xFFFF 
	and r0, r4
	orr r0, r1
	str r0, [sp,#4]
	lsr r0, r0, #0x10
	ldrb r6, [r6]
	add r0, r0, r6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r10, r0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq loc_814B9BA
	b loc_814BADC
loc_814B9BA:
	ldr r2, off_814BA00 // =dword_2010CC0 
	ldr r3, [r2]
	ldrb r2, [r3]
	cmp r2, #1
	bne loc_814BA78
	ldrb r0, [r3,#2]
	mov r5, r12
	asr r0, r5
	and r0, r2
	cmp r0, #0
	bne loc_814B9D2
	b loc_814BADC
loc_814B9D2:
	mov r1, r8
	lsr r0, r1, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	bne loc_814BA04
	mov r0, r12
	mov r1, sp
	add r2, r7, #0
	bl sub_814BAF4
	b loc_814BADC
	.balign 4, 0x00
dword_814B9EC: .word 0xFFFFFF00
dword_814B9F0: .word 0xFFFF00FF
dword_814B9F4: .word 0xFF00FFFF
dword_814B9F8: .word 0xFFFFFF
dword_814B9FC: .word 0xFFFF
off_814BA00: .word dword_2010CC0
loc_814BA04:
	mov r5, r9
	ldrb r0, [r5,#3]
	cmp r0, #0
	bne loc_814BA18
	mov r0, r12
	mov r1, sp
	add r2, r7, #0
	bl sub_814BD94
	b loc_814BADC
loc_814BA18:
	mov r4, #0
	ldr r1, off_814BA30 // =dword_2010CB0 
	ldr r0, [r1]
	ldrb r0, [r0,#0x1a]
	mov r5, r12
	asr r0, r5
	and r0, r2
	cmp r0, #0
	beq loc_814BA34
	ldrb r0, [r3,#4]
	b loc_814BA5A
	.byte 0, 0
off_814BA30: .word dword_2010CB0
loc_814BA34:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bhi loc_814BADC
	lsl r0, r4, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0,#0x1a]
	mov r2, r12
	asr r0, r2
	mov r2, #1
	and r0, r2
	cmp r0, #0
	beq loc_814BA34
	ldr r3, off_814BA74 // =dword_2010CC0 
	ldr r0, [r3]
	ldrb r0, [r0,#4]
	mov r5, r12
loc_814BA5A:
	asr r0, r5
	and r0, r2
	cmp r0, #0
	beq loc_814BA34
	cmp r4, #3
	bhi loc_814BADC
	add r0, r4, #0
	mov r1, r12
	mov r2, sp
	add r3, r7, #0
	bl sub_814BBA8
	b loc_814BADC
off_814BA74: .word dword_2010CC0
loc_814BA78:
	ldrb r1, [r3,#2]
	mov r2, r9
	ldrb r0, [r2,#1]
	add r5, r1, #0
	and r5, r0
	cmp r5, #0
	beq loc_814BADC
	mov r4, #0
	mov r6, #1
loc_814BA8A:
	add r0, r5, #0
	asr r0, r4
	and r0, r6
	cmp r0, #0
	beq loc_814BAD2
	mov r1, sp
	ldrb r0, [r1,#2]
	cmp r0, #4
	bne loc_814BAA6
	add r0, r4, #0
	add r2, r7, #0
	bl sub_814BAF4
	b loc_814BAD2
loc_814BAA6:
	ldrb r0, [r1,#3]
	cmp r0, #0
	bne loc_814BAB8
	add r0, r4, #0
	mov r1, sp
	add r2, r7, #0
	bl sub_814BD94
	b loc_814BAD2
loc_814BAB8:
	ldr r0, off_814BAF0 // =dword_2010CC0 
	ldr r0, [r0]
	ldrb r0, [r0,#4]
	asr r0, r4
	and r0, r6
	cmp r0, #0
	beq loc_814BAD2
	add r0, r4, #0
	add r1, r4, #0
	mov r2, sp
	add r3, r7, #0
	bl sub_814BBA8
loc_814BAD2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814BA8A
loc_814BADC:
	mov r0, r10
loc_814BADE:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0, 0
off_814BAF0: .word dword_2010CC0
.endfunc // sub_814B8B0

.func
.thumb_func
sub_814BAF4:
	push {r4-r7,lr}
	sub sp, sp, #8
	add r6, r1, #0
	str r2, [sp]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r2, off_814BB28 // =dword_2010CA0 
	lsl r1, r7, #2
	add r1, r1, r2
	ldr r3, [r1]
	add r5, r3, #0
	add r5, #0xc
	mov r4, #0
	mov r0, #0
	strh r0, [r5,#2]
	ldr r0, [r1]
	ldr r0, [r0,#0x18]
	add r1, r2, #0
	ldrh r2, [r6,#6]
	cmp r0, r2
	bcs loc_814BB30
	mov r0, #0x49 
	strh r0, [r3,#0xc]
	ldr r0, dword_814BB2C // =0x701 
	strh r0, [r5,#2]
	b loc_814BB7E
off_814BB28: .word dword_2010CA0
dword_814BB2C: .word 0x701
loc_814BB30:
	ldrb r0, [r5,#7]
	cmp r0, #0
	beq loc_814BB48
	ldrb r0, [r5,#6]
	cmp r0, #0
	beq loc_814BB54
	ldr r0, dword_814BB44 // =0x709 
	strh r0, [r5,#2]
	b loc_814BB7E
	.balign 4, 0x00
dword_814BB44: .word 0x709
loc_814BB48:
	ldrb r0, [r5,#6]
	cmp r0, #0
	beq loc_814BB54
	mov r0, #0xe1
	lsl r0, r0, #3
	strh r0, [r5,#2]
loc_814BB54:
	mov r4, #0
	ldr r0, dword_814BB9C // =0x8042 
	strh r0, [r5]
	ldrh r0, [r6,#6]
	strh r0, [r5,#4]
	ldrh r2, [r6,#6]
	lsl r0, r7, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0,#0x14]
	str r0, [sp,#4]
	ldr r0, off_814BBA0 // =dword_2010CC8 
	ldr r0, [r0]
	add r1, sp, #4
	ldr r3, [r0,#4]
	mov r0, sp
	bl sub_814DA6C
	mov r0, #1
	strb r0, [r5,#6]
	strh r4, [r5]
loc_814BB7E:
	ldrh r0, [r5,#2]
	cmp r0, #0
	beq loc_814BB92
	ldr r0, off_814BBA4 // =dword_2010CC4 
	ldr r2, [r0]
	mov r0, #0x10
	lsl r0, r7
	ldrb r1, [r2,#4]
	orr r0, r1
	strb r0, [r2,#4]
loc_814BB92:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814BB9C: .word 0x8042
off_814BBA0: .word dword_2010CC8
off_814BBA4: .word dword_2010CC4
.endfunc // sub_814BAF4

.func
.thumb_func
sub_814BBA8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r2, #0
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r10, r1
	ldr r1, off_814BC74 // =dword_2010CB0 
	lsr r0, r0, #0x16
	add r0, r0, r1
	ldr r0, [r0]
	mov r12, r0
	ldrh r0, [r0]
	mov r9, r0
	mov r0, r12
	add r0, #0x21 
	ldrb r2, [r6,#4]
	add r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldrb r2, [r6,#2]
	cmp r2, #2
	bne loc_814BBE4
	ldr r0, dword_814BC78 // =0x8022 
	cmp r9, r0
	beq loc_814BBFE
loc_814BBE4:
	cmp r2, #1
	bne loc_814BBEE
	ldr r0, dword_814BC7C // =0x8021 
	cmp r9, r0
	beq loc_814BBFE
loc_814BBEE:
	mov r3, #0x1b
	add r3, r12
	mov r8, r3
	cmp r2, #3
	bne loc_814BC22
	ldr r0, dword_814BC80 // =0x8023 
	cmp r9, r0
	bne loc_814BC22
loc_814BBFE:
	ldrb r1, [r6,#4]
	mov r0, r12
	add r0, #0x21 
	add r0, r0, r1
	ldrb r0, [r0]
	mov r7, #0x1b
	add r7, r12
	mov r8, r7
	ldrb r2, [r6,#5]
	cmp r0, r2
	bne loc_814BC22
	add r0, r7, r1
	mov r1, #1
	mov r3, r10
	lsl r1, r3
	ldrb r2, [r0]
	orr r1, r2
	strb r1, [r0]
loc_814BC22:
	ldrb r2, [r6,#4]
	mov r7, r8
	add r0, r7, r2
	ldrb r0, [r0]
	mov r3, r12
	ldrb r1, [r3,#0x1a]
	and r0, r1
	cmp r0, r1
	bne loc_814BD1E
	add r3, #0x21 
	add r2, r3, r2
	ldrb r0, [r2]
	add r0, #1
	mov r1, #3
	and r0, r1
	mov r1, #0
	strb r0, [r2]
	ldrb r0, [r6,#4]
	add r0, r8
	strb r1, [r0]
	mov r7, r12
	ldrh r1, [r7]
	ldr r2, dword_814BC84 // =0x7FDF 
	add r0, r1, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r3, #0
	cmp r0, #1
	bhi loc_814BD10
	ldr r0, dword_814BC7C // =0x8021 
	cmp r1, r0
	bne loc_814BC88
	ldrb r1, [r6,#4]
	lsl r1, r1, #2
	sub r3, #0x1d
	add r1, r3, r1
	ldrh r2, [r7,#0x2e]
	ldr r0, [r1]
	add r0, r0, r2
	str r0, [r1]
	b loc_814BC9E
off_814BC74: .word dword_2010CB0
dword_814BC78: .word 0x8022
dword_814BC7C: .word 0x8021
dword_814BC80: .word 0x8023
dword_814BC84: .word 0x7FDF
loc_814BC88:
	ldrb r2, [r6,#4]
	lsl r2, r2, #2
	mov r3, r12
	add r3, #4
	add r2, r3, r2
	mov r7, r12
	ldrh r1, [r7,#0x2e]
	lsl r1, r1, #2
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
loc_814BC9E:
	mov r0, r12
	ldrh r1, [r0,#0x2e]
	ldr r0, [r0,#0x14]
	sub r0, r0, r1
	mov r1, r12
	str r0, [r1,#0x14]
	cmp r0, #0
	beq loc_814BCB2
	cmp r0, #0
	bge loc_814BD1E
loc_814BCB2:
	mov r0, r12
	add r0, #0x20 
	mov r2, #0
	strb r2, [r0]
	mov r7, r12
	ldrh r1, [r7]
	ldr r0, dword_814BCF4 // =0x8021 
	cmp r1, r0
	bne loc_814BCFC
	mov r4, #0
loc_814BCC6:
	add r0, r5, r4
	mov r1, #1
	strb r1, [r0]
	lsl r1, r4, #2
	add r1, r3, r1
	mov r2, r12
	ldrh r0, [r2,#0x2e]
	add r2, r0, #0
	mul r2, r4
	mov r7, r12
	ldr r0, [r7,#0x28]
	add r0, r0, r2
	str r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	bls loc_814BCC6
	ldr r0, [r7,#0x30]
	str r0, [r7,#0x14]
	ldr r0, dword_814BCF8 // =0x8022 
	strh r0, [r7]
	b loc_814BD1E
dword_814BCF4: .word 0x8021
dword_814BCF8: .word 0x8022
loc_814BCFC:
	strb r2, [r5]
	mov r0, r12
	str r2, [r0,#0x14]
	ldr r0, dword_814BD0C // =0x8023 
	mov r1, r12
	strh r0, [r1]
	b loc_814BD1E
	.balign 4, 0x00
dword_814BD0C: .word 0x8023
loc_814BD10:
	lsl r1, r1, #0x10
	ldr r0, dword_814BD80 // =0x80230000 
	cmp r1, r0
	bne loc_814BD1E
	ldr r0, dword_814BD84 // =0x8020 
	mov r2, r12
	strh r0, [r2]
loc_814BD1E:
	mov r3, r12
	ldrh r0, [r3]
	cmp r0, r9
	bne loc_814BD48
	ldrb r2, [r6,#4]
	mov r0, r12
	add r0, #0x21 
	add r0, r0, r2
	ldrb r0, [r0]
	ldr r7, [sp]
	cmp r0, r7
	bne loc_814BD48
	mov r1, r8
	add r0, r1, r2
	ldrb r0, [r0]
	mov r2, r10
	asr r0, r2
	mov r1, #1
	and r0, r1
	cmp r0, #0
	beq loc_814BD6E
loc_814BD48:
	ldr r4, off_814BD88 // =InterruptMasterEnableRegister 
	ldrh r2, [r4]
	mov r0, #0
	strh r0, [r4]
	ldr r0, off_814BD8C // =dword_2010CC4 
	ldr r3, [r0]
	mov r0, #0x10
	mov r7, r10
	lsl r0, r7
	ldrb r1, [r3,#2]
	orr r0, r1
	mov r1, #0
	strb r0, [r3,#2]
	lsl r0, r7, #2
	ldr r3, off_814BD90 // =dword_2010CB0 
	add r0, r0, r3
	ldr r0, [r0]
	strh r1, [r0,#2]
	strh r2, [r4]
loc_814BD6E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
dword_814BD80: .word 0x80230000
dword_814BD84: .word 0x8020
off_814BD88: .word InterruptMasterEnableRegister
off_814BD8C: .word dword_2010CC4
off_814BD90: .word dword_2010CB0
.endfunc // sub_814BBA8

.func
.thumb_func
sub_814BD94:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r1, #0
	str r2, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r8, r0
	mov r7, #0
	ldr r1, off_814BDF4 // =dword_2010CB0 
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r4, [r0]
	add r5, r4, #0
	add r5, #0x34 
	ldrh r0, [r4,#0x34]
	mov r9, r0
	ldrb r0, [r6,#4]
	add r3, r4, #0
	add r3, #0x55 
	add r0, r3, r0
	ldrb r0, [r0]
	mov r10, r0
	ldrb r0, [r6,#2]
	cmp r0, #3
	bne loc_814BE04
	ldr r0, off_814BDF8 // =dword_2010CC4 
	ldr r2, [r0]
	mov r0, #1
	mov r1, r8
	lsl r0, r1
	ldrb r1, [r2,#1]
	orr r0, r1
	strb r0, [r2,#1]
	ldrh r1, [r4,#0x34]
	ldr r0, dword_814BDFC // =0x8042 
	cmp r1, r0
	bne loc_814BE4A
	add r0, r4, #0
	add r0, #0x54 
	strb r7, [r0]
	strb r7, [r3]
	ldr r0, dword_814BE00 // =0x8043 
	strh r0, [r4,#0x34]
	b loc_814BE4A
off_814BDF4: .word dword_2010CB0
off_814BDF8: .word dword_2010CC4
dword_814BDFC: .word 0x8042
dword_814BE00: .word 0x8043
loc_814BE04:
	cmp r0, #2
	bne loc_814BE30
	ldr r0, dword_814BE28 // =0x8041 
	cmp r9, r0
	bne loc_814BE1C
	ldr r0, [r5,#0x14]
	cmp r0, #0
	bne loc_814BE1C
	mov r0, r8
	add r1, r5, #0
	bl sub_814BFA0
loc_814BE1C:
	ldrh r1, [r5]
	ldr r0, dword_814BE2C // =0x8042 
	cmp r1, r0
	bne loc_814BE4A
	b loc_814BE4E
	.balign 4, 0x00
dword_814BE28: .word 0x8041
dword_814BE2C: .word 0x8042
loc_814BE30:
	cmp r0, #1
	bne loc_814BE4A
	ldr r7, dword_814BEFC // =0x8041 
	cmp r9, r7
	beq loc_814BE4E
	mov r0, r8
	add r1, r5, #0
	bl sub_814BF10
	ldrh r0, [r4,#0x34]
	cmp r0, r7
	bne loc_814BEEA
	mov r7, #1
loc_814BE4A:
	cmp r7, #0
	beq loc_814BEA4
loc_814BE4E:
	ldrb r2, [r6,#5]
	ldrb r3, [r6,#4]
	add r4, r5, #0
	add r4, #0x21 
	add r0, r4, r3
	ldrb r0, [r0]
	add r0, #1
	mov r1, #3
	and r0, r1
	cmp r2, r0
	bne loc_814BEA4
	ldr r0, off_814BF00 // =dword_2010CC8 
	ldr r0, [r0]
	lsl r1, r3, #2
	add r1, #4
	add r1, r5, r1
	ldrh r2, [r6,#6]
	ldr r3, [r0,#4]
	mov r0, sp
	bl sub_814DA6C
	ldrh r1, [r5]
	ldr r0, dword_814BF04 // =0x8042 
	cmp r1, r0
	bne loc_814BE94
	ldrb r0, [r6,#4]
	lsl r0, r0, #2
	add r2, r5, #4
	add r2, r2, r0
	ldrh r0, [r5,#0x2e]
	lsl r1, r0, #1
	add r1, r1, r0
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
loc_814BE94:
	ldrh r1, [r6,#6]
	ldr r0, [r5,#0x14]
	sub r0, r0, r1
	str r0, [r5,#0x14]
	ldrb r0, [r6,#4]
	add r0, r4, r0
	ldrb r1, [r6,#5]
	strb r1, [r0]
loc_814BEA4:
	ldrh r0, [r5,#0x18]
	cmp r0, #0
	bne loc_814BEEA
	ldrb r0, [r6,#4]
	add r1, r5, #0
	add r1, #0x20 
	strb r0, [r1]
	ldrh r0, [r5]
	cmp r0, r9
	bne loc_814BECC
	add r0, r5, #0
	add r0, #0x21 
	ldrb r2, [r6,#4]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r0, r10
	bne loc_814BECC
	ldrb r6, [r6,#5]
	cmp r0, r6
	bne loc_814BEEA
loc_814BECC:
	ldr r3, off_814BF08 // =InterruptMasterEnableRegister 
	ldrh r2, [r3]
	mov r0, #0
	strh r0, [r3]
	ldr r0, off_814BF0C // =dword_2010CC4 
	ldr r4, [r0]
	mov r0, #1
	mov r1, r8
	lsl r0, r1
	ldrb r1, [r4,#2]
	orr r0, r1
	mov r1, #0
	strb r0, [r4,#2]
	strh r1, [r5,#2]
	strh r2, [r3]
loc_814BEEA:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814BEFC: .word 0x8041
off_814BF00: .word dword_2010CC8
dword_814BF04: .word 0x8042
off_814BF08: .word InterruptMasterEnableRegister
off_814BF0C: .word dword_2010CC4
.endfunc // sub_814BD94

.func
.thumb_func
sub_814BF10:
	push {r4-r7,lr}
	add r2, r1, #0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, off_814BF2C // =dword_2010CC0 
	ldr r3, [r0]
	ldrb r1, [r3]
	mov r12, r0
	cmp r1, #1
	bne loc_814BF30
	mov r5, #3
	add r1, r3, #0
	add r1, #0xf
	b loc_814BF38
off_814BF2C: .word dword_2010CC0
loc_814BF30:
	mov r5, #2
	add r0, r4, #0
	add r0, #0x10
	add r1, r3, r0
loc_814BF38:
	mov r7, #1
	add r0, r7, #0
	lsl r0, r4
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r4, r6, #0
	ldrh r3, [r2]
	cmp r3, #0
	bne loc_814BF96
	ldrb r0, [r1]
	cmp r0, r5
	bcs loc_814BF70
	mov r0, #0x49 
	strh r0, [r2]
	ldr r0, dword_814BF68 // =0x702 
	strh r0, [r2,#0x18]
	ldr r0, off_814BF6C // =dword_2010CC4 
	ldr r2, [r0]
	ldrb r1, [r2,#4]
	add r0, r6, #0
	orr r0, r1
	strb r0, [r2,#4]
	b loc_814BF96
	.balign 4, 0x00
dword_814BF68: .word 0x702
off_814BF6C: .word dword_2010CC4
loc_814BF70:
	strh r3, [r2,#0x18]
	ldrb r0, [r1]
	sub r0, r0, r5
	strb r0, [r1]
	add r0, r2, #0
	add r0, #0x2d 
	str r0, [r2,#4]
	mov r0, #7
	str r0, [r2,#0x14]
	strb r7, [r2,#0x1f]
	strh r3, [r2,#0x2e]
	strb r4, [r2,#0x1a]
	ldr r0, dword_814BF9C // =0x8041 
	strh r0, [r2]
	mov r0, r12
	ldr r1, [r0]
	ldrb r0, [r1,#5]
	orr r4, r0
	strb r4, [r1,#5]
loc_814BF96:
	pop {r4-r7}
	pop {r0}
	bx r0
dword_814BF9C: .word 0x8041
.endfunc // sub_814BF10

.func
.thumb_func
sub_814BFA0:
	push {r4-r7,lr}
	add r4, r1, #0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r0, #0x2d 
	ldrb r0, [r0]
	cmp r0, #1
	bne loc_814BFC4
	ldr r0, off_814BFC0 // =dword_2010CC0 
	lsl r1, r5, #5
	add r1, #0x14
	ldr r0, [r0]
	add r0, r0, r1
	add r0, #4
	b loc_814C01A
off_814BFC0: .word dword_2010CC0
loc_814BFC4:
	ldr r1, off_814C008 // =dword_2010CB0 
	lsl r0, r5, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4,#0x30]
	ldr r0, [r2,#0x6c]
	cmp r1, r0
	bls loc_814C018
	mov r1, #0x80
	lsl r1, r1, #0x11
	lsl r1, r5
	lsr r1, r1, #0x18
	ldr r0, off_814C00C // =dword_2010CC4 
	ldr r3, [r0]
	ldrb r2, [r3,#4]
	add r0, r1, #0
	orr r0, r2
	strb r0, [r3,#4]
	ldr r0, off_814C010 // =dword_2010CC0 
	ldr r2, [r0]
	ldrb r0, [r2,#5]
	bic r0, r1
	strb r0, [r2,#5]
	ldr r0, dword_814C014 // =0x701 
	strh r0, [r4,#0x18]
	mov r0, #0x47 
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_814A8C8
	b loc_814C04C
	.balign 4, 0x00
off_814C008: .word dword_2010CB0
off_814C00C: .word dword_2010CC4
off_814C010: .word dword_2010CC0
dword_814C014: .word 0x701
loc_814C018:
	ldr r0, [r2,#0x68]
loc_814C01A:
	str r0, [r4,#4]
	mov r3, #0
	add r6, r4, #0
	add r6, #0x21 
	mov r7, #0
	add r5, r4, #4
loc_814C026:
	add r0, r6, r3
	strb r7, [r0]
	lsl r1, r3, #2
	add r1, r5, r1
	ldrh r0, [r4,#0x2e]
	add r2, r0, #0
	mul r2, r3
	ldr r0, [r4,#4]
	add r0, r0, r2
	str r0, [r1]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_814C026
	ldr r0, [r4,#0x30]
	str r0, [r4,#0x14]
	ldr r0, dword_814C054 // =0x8042 
	strh r0, [r4]
loc_814C04C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814C054: .word 0x8042
.endfunc // sub_814BFA0

.func
.thumb_func
sub_814C058:
	push {r4-r7,lr}
	ldr r2, off_814C0E4 // =dword_2010CC0 
	ldr r0, [r2]
	ldrb r1, [r0,#4]
	ldrb r0, [r0,#5]
	orr r0, r1
	cmp r0, #0
	beq loc_814C0DE
	ldr r1, off_814C0E8 // =InterruptMasterEnableRegister 
	ldrh r0, [r1]
	mov r12, r0
	mov r0, #0
	strh r0, [r1]
	ldr r1, off_814C0EC // =dword_2010CC4 
	ldr r0, [r1]
	ldrb r0, [r0,#2]
	lsr r7, r0, #4
	mov r3, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r4, off_814C0F0 // =dword_2010CB0 
loc_814C082:
	mov r0, #0x80
	lsl r0, r0, #0x11
	lsl r0, r3
	lsr r2, r0, #0x18
	ldr r0, [r5]
	ldrb r0, [r0,#4]
	and r0, r2
	cmp r0, #0
	beq loc_814C0AA
	ldr r0, [r6]
	ldrb r0, [r0,#2]
	and r0, r2
	cmp r0, #0
	bne loc_814C0AA
	lsl r0, r3, #2
	add r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1,#2]
	add r0, #1
	strh r0, [r1,#2]
loc_814C0AA:
	ldr r0, [r5]
	ldrb r0, [r0,#5]
	and r0, r2
	cmp r0, #0
	beq loc_814C0C8
	add r0, r7, #0
	and r0, r2
	cmp r0, #0
	bne loc_814C0C8
	lsl r0, r3, #2
	add r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1,#0x36]
	add r0, #1
	strh r0, [r1,#0x36]
loc_814C0C8:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	bls loc_814C082
	ldr r0, [r6]
	mov r1, #0
	strb r1, [r0,#2]
	ldr r0, off_814C0E8 // =InterruptMasterEnableRegister 
	mov r1, r12
	strh r1, [r0]
loc_814C0DE:
	pop {r4-r7}
	pop {r0}
	bx r0
off_814C0E4: .word dword_2010CC0
off_814C0E8: .word InterruptMasterEnableRegister
off_814C0EC: .word dword_2010CC4
off_814C0F0: .word dword_2010CB0
.endfunc // sub_814C058

	push {lr}
	ldr r0, off_814C108 // =sub_81494B8+1 
	bl sub_814C360
	mov r0, #1
	mov r1, #0
	bl sub_814C828
	pop {r0}
	bx r0
off_814C108: .word sub_81494B8+1
.func
.thumb_func
sub_814C10C:
	push {r4,lr}
	add r3, r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #1
	bne loc_814C148
	add r2, r3, #0
	add r2, #0xe8
	str r2, [r1]
	ldr r1, off_814C134 // =DMA3SourceAddress 
	ldr r0, off_814C138 // =dword_814CF54 
	str r0, [r1]
	str r2, [r1,#0x4] // (DMA3DestinationAddress - 0x40000d4)
	ldr r0, dword_814C13C // =0x800004B0 
	str r0, [r1,#0x8] // (DMA3WordCount - 0x40000d4)
	ldr r0, [r1,#0x8] // (DMA3WordCount - 0x40000d4)
	ldr r1, off_814C140 // =dword_2010CCC 
	ldr r2, dword_814C144 // =0xA48 
	add r0, r3, r2
	b loc_814C152
off_814C134: .word DMA3SourceAddress
off_814C138: .word dword_814CF54
dword_814C13C: .word 0x800004B0
off_814C140: .word dword_2010CCC
dword_814C144: .word 0xA48
loc_814C148:
	ldr r0, off_814C1CC // =dword_814CF54 
	str r0, [r1]
	ldr r1, off_814C1D0 // =dword_2010CCC 
	add r0, r3, #0
	add r0, #0xe8
loc_814C152:
	str r0, [r1]
	add r2, r1, #0
	ldr r1, [r2]
	str r3, [r1,#0x28]
	add r0, r3, #0
	add r0, #0x74 
	str r0, [r1,#0x24]
	ldrb r0, [r1,#0x14]
	mov r4, #0
	mov r0, #1
	strb r0, [r1,#0x14]
	ldr r0, [r2]
	str r4, [r0]
	strb r4, [r0,#4]
	ldr r0, [r2]
	strb r4, [r0,#5]
	ldr r0, [r2]
	strb r4, [r0,#7]
	ldr r0, [r2]
	strb r4, [r0,#8]
	ldr r0, [r2]
	strb r4, [r0,#9]
	ldr r0, [r2]
	str r4, [r0,#0xc]
	ldrb r1, [r0,#0x10]
	strb r4, [r0,#0x10]
	ldr r0, [r2]
	ldrh r1, [r0,#0x12]
	mov r1, #0
	strh r4, [r0,#0x12]
	strb r1, [r0,#0x15]
	ldr r0, [r2]
	add r0, #0x2c 
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r1, off_814C1D4 // =SIOModeSelect_GeneralPurposeData 
	mov r2, #0x80
	lsl r2, r2, #1
	add r0, r2, #0
	strh r0, [r1]
	sub r1, #0xc
	ldr r2, dword_814C1D8 // =0x5003 
	add r0, r2, #0
	strh r0, [r1]
	bl sub_814C348
	bl sub_814C354
	ldr r3, off_814C1DC // =InterruptMasterEnableRegister 
	ldrh r2, [r3]
	strh r4, [r3]
	ldr r4, off_814C1E0 // =InterruptEnableRegister 
	ldrh r0, [r4]
	mov r1, #0x80
	orr r0, r1
	strh r0, [r4]
	strh r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C1CC: .word dword_814CF54
off_814C1D0: .word dword_2010CCC
off_814C1D4: .word SIOModeSelect_GeneralPurposeData
dword_814C1D8: .word 0x5003
off_814C1DC: .word InterruptMasterEnableRegister
off_814C1E0: .word InterruptEnableRegister
.endfunc // sub_814C10C

.func
.thumb_func
sub_814C1E4:
	push {r4,r5,lr}
	ldr r2, off_814C210 // =sub_814C908+1 
	str r2, [r0]
	ldr r5, off_814C214 // =dword_2010CCC 
	ldr r0, [r5]
	mov r4, #0
	strb r1, [r0,#0xa]
	ldr r3, off_814C218 // =InterruptMasterEnableRegister 
	ldrh r2, [r3]
	strh r4, [r3]
	ldr r4, off_814C21C // =InterruptEnableRegister 
	ldr r1, [r5]
	mov r0, #8
	ldrb r1, [r1,#0xa]
	lsl r0, r1
	ldrh r1, [r4]
	orr r0, r1
	strh r0, [r4]
	strh r2, [r3]
	pop {r4,r5}
	pop {r0}
	bx r0
off_814C210: .word sub_814C908+1
off_814C214: .word dword_2010CCC
off_814C218: .word InterruptMasterEnableRegister
off_814C21C: .word InterruptEnableRegister
.endfunc // sub_814C1E4

.func
.thumb_func
sub_814C220:
	push {r4,r5,lr}
	ldr r5, off_814C2B8 // =SIOModeSelect_GeneralPurposeData 
	mov r1, #0x80
	lsl r1, r1, #8
	add r0, r1, #0
	strh r0, [r5]
	ldr r2, dword_814C2BC // =0x80A0 
	add r0, r2, #0
	strh r0, [r5]
	ldr r1, off_814C2C0 // =dword_2010CCC 
	ldr r0, [r1]
	ldrb r0, [r0,#0xa]
	lsl r0, r0, #2
	ldr r3, off_814C2C4 // =Timer0Counter_Reload 
	add r2, r0, r3
	ldr r4, off_814C2C8 // =Timer0Control 
	add r3, r0, r4
	mov r0, #0
	strh r0, [r3]
	strh r0, [r2]
	mov r0, #0x83
	strh r0, [r3]
	ldrh r0, [r2]
	add r4, r1, #0
	cmp r0, #0x11
	bhi loc_814C260
	ldr r0, dword_814C2CC // =0x80A2 
	add r1, r0, #0
loc_814C258:
	strh r1, [r5]
	ldrh r0, [r2]
	cmp r0, #0x11
	bls loc_814C258
loc_814C260:
	mov r0, #3
	strh r0, [r3]
	ldr r1, off_814C2B8 // =SIOModeSelect_GeneralPurposeData 
	ldr r2, dword_814C2BC // =0x80A0 
	add r0, r2, #0
	strh r0, [r1]
	sub r1, #0xc
	ldr r3, dword_814C2D0 // =0x5003 
	add r0, r3, #0
	strh r0, [r1]
	ldr r0, [r4]
	mov r2, #0
	str r2, [r0]
	strb r2, [r0,#4]
	ldr r0, [r4]
	strb r2, [r0,#5]
	ldr r0, [r4]
	strb r2, [r0,#6]
	ldr r0, [r4]
	strb r2, [r0,#7]
	ldr r0, [r4]
	strb r2, [r0,#8]
	ldr r0, [r4]
	strb r2, [r0,#9]
	ldr r0, [r4]
	str r2, [r0,#0xc]
	ldrb r1, [r0,#0x10]
	strb r2, [r0,#0x10]
	ldr r1, [r4]
	ldrh r0, [r1,#0x12]
	mov r3, #0
	strh r2, [r1,#0x12]
	ldrb r0, [r1,#0x14]
	mov r0, #1
	strb r0, [r1,#0x14]
	ldr r0, [r4]
	strb r3, [r0,#0x15]
	ldr r0, [r4]
	add r0, #0x2c 
	ldrb r1, [r0]
	strb r3, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
off_814C2B8: .word SIOModeSelect_GeneralPurposeData
dword_814C2BC: .word 0x80A0
off_814C2C0: .word dword_2010CCC
off_814C2C4: .word Timer0Counter_Reload
off_814C2C8: .word Timer0Control
dword_814C2CC: .word 0x80A2
dword_814C2D0: .word 0x5003
.endfunc // sub_814C220

	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	ldr r1, off_814C2E4 // =dword_2010CCC 
	ldr r1, [r1]
	ldrb r2, [r1,#0x14]
	strb r0, [r1,#0x14]
	bx lr
	.balign 4, 0x00
off_814C2E4: .word dword_2010CCC
.func
.thumb_func
sub_814C2E8:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	cmp r0, #1
	beq loc_814C314
	cmp r0, #1
	bgt loc_814C2FE
	cmp r0, #0
	beq loc_814C308
	b loc_814C33C
loc_814C2FE:
	cmp r1, #2
	beq loc_814C320
	cmp r1, #3
	beq loc_814C330
	b loc_814C33C
loc_814C308:
	ldr r0, off_814C310 // =dword_2010CCC 
	ldr r0, [r0]
	ldrh r0, [r0,#0x12]
	b loc_814C33E
off_814C310: .word dword_2010CCC
loc_814C314:
	ldr r0, off_814C31C // =dword_2010CCC 
	ldr r0, [r0]
	ldrb r0, [r0,#0x14]
	b loc_814C33E
off_814C31C: .word dword_2010CCC
loc_814C320:
	ldr r0, off_814C32C // =dword_2010CCC 
	ldr r0, [r0]
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b loc_814C33E
off_814C32C: .word dword_2010CCC
loc_814C330:
	ldr r0, off_814C338 // =dword_2010CCC 
	ldr r0, [r0]
	ldrb r0, [r0,#6]
	b loc_814C33E
off_814C338: .word dword_2010CCC
loc_814C33C:
	ldr r0, dword_814C344 // =0xFFFF 
loc_814C33E:
	pop {r1}
	bx r1
	.balign 4, 0x00
dword_814C344: .word 0xFFFF
.endfunc // sub_814C2E8

.func
.thumb_func
sub_814C348:
	push {lr}
	mov r0, #0
	bl sub_814C360
	pop {r0}
	bx r0
.endfunc // sub_814C348

.func
.thumb_func
sub_814C354:
	push {lr}
	mov r0, #0
	bl sub_814C36C
	pop {r0}
	bx r0
.endfunc // sub_814C354

.func
.thumb_func
sub_814C360:
	ldr r1, off_814C368 // =dword_2010CCC 
	ldr r1, [r1]
	str r0, [r1,#0x18]
	bx lr
off_814C368: .word dword_2010CCC
.endfunc // sub_814C360

.func
.thumb_func
sub_814C36C:
	ldr r1, off_814C374 // =dword_2010CCC 
	ldr r1, [r1]
	str r0, [r1,#0x1c]
	bx lr
off_814C374: .word dword_2010CCC
.endfunc // sub_814C36C

.func
.thumb_func
sub_814C378:
	ldr r1, off_814C380 // =dword_2010CCC 
	ldr r1, [r1]
	str r0, [r1,#0x20]
	bx lr
off_814C380: .word dword_2010CCC
.endfunc // sub_814C378

.func
.thumb_func
sub_814C384:
	push {lr}
	ldr r0, off_814C3A8 // =dword_2010CCC 
	ldr r1, [r0]
	add r2, r1, #0
	add r2, #0x2c 
	ldrb r1, [r2]
	add r3, r0, #0
	cmp r1, #1
	bne loc_814C39E
	add r1, r2, #0
loc_814C398:
	ldrb r0, [r1]
	cmp r0, #1
	beq loc_814C398
loc_814C39E:
	ldr r0, [r3]
	ldrh r0, [r0,#0x12]
	pop {r1}
	bx r1
	.balign 4, 0x00
off_814C3A8: .word dword_2010CCC
.endfunc // sub_814C384

.func
.thumb_func
sub_814C3AC:
	push {lr}
	mov r0, #0x10
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C3C6
	ldr r0, off_814C3CC // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C3C6:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C3CC: .word dword_2010CCC
.endfunc // sub_814C3AC

.func
.thumb_func
sub_814C3D0:
	push {lr}
	mov r0, #0x11
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C3EA
	ldr r0, off_814C3F0 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C3EA:
	pop {r0}
	bx r0
	.byte 0, 0
off_814C3F0: .word dword_2010CCC
.endfunc // sub_814C3D0

	push {lr}
	mov r0, #0x12
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C40E
	ldr r0, off_814C414 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C40E:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C414: .word dword_2010CCC
.func
.thumb_func
sub_814C418:
	push {lr}
	mov r0, #0x13
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C432
	ldr r0, off_814C438 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C432:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C438: .word dword_2010CCC
.endfunc // sub_814C418

.func
.thumb_func
sub_814C43C:
	push {lr}
	mov r0, #0x14
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C456
	ldr r0, off_814C45C // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C456:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C45C: .word dword_2010CCC
.endfunc // sub_814C43C

	push {lr}
	mov r0, #0x15
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C47A
	ldr r0, off_814C480 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C47A:
	pop {r0}
	bx r0
	.byte 0, 0
off_814C480: .word dword_2010CCC
.func
.thumb_func
sub_814C484:
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0x16
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C4D0
	ldr r2, off_814C4D8 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #6
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r1, [r0,#0x24]
	add r1, #4
	ldrh r0, [r4]
	strh r0, [r1]
	add r1, #2
	add r4, #2
	mov r2, #0xd
loc_814C4AE:
	ldrb r0, [r4]
	strb r0, [r1]
	add r1, #1
	add r4, #1
	sub r2, #1
	cmp r2, #0
	bge loc_814C4AE
	mov r2, #7
loc_814C4BE:
	ldrb r0, [r5]
	strb r0, [r1]
	add r1, #1
	add r5, #1
	sub r2, #1
	cmp r2, #0
	bge loc_814C4BE
	bl sub_814CB1C
loc_814C4D0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C4D8: .word dword_2010CCC
.endfunc // sub_814C484

.func
.thumb_func
sub_814C4DC:
	push {r4-r6,lr}
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r0, #0x17
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C512
	ldr r2, off_814C518 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r0, [r0,#0x24]
	add r0, #4
	strb r4, [r0]
	add r0, #1
	strb r5, [r0]
	add r0, #1
	strh r6, [r0]
	bl sub_814CB1C
loc_814C512:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814C518: .word dword_2010CCC
.endfunc // sub_814C4DC

.func
.thumb_func
sub_814C51C:
	push {lr}
	mov r0, #0x19
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C536
	ldr r0, off_814C53C // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C536:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C53C: .word dword_2010CCC
.endfunc // sub_814C51C

.func
.thumb_func
sub_814C540:
	push {lr}
	mov r0, #0x1a
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C55A
	ldr r0, off_814C560 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C55A:
	pop {r0}
	bx r0
	.byte 0, 0
off_814C560: .word dword_2010CCC
.endfunc // sub_814C540

.func
.thumb_func
sub_814C564:
	push {lr}
	mov r0, #0x1b
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C57E
	ldr r0, off_814C584 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C57E:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C584: .word dword_2010CCC
.endfunc // sub_814C564

.func
.thumb_func
sub_814C588:
	push {lr}
	mov r0, #0x1c
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C5A2
	ldr r0, off_814C5A8 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C5A2:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C5A8: .word dword_2010CCC
.endfunc // sub_814C588

.func
.thumb_func
sub_814C5AC:
	push {lr}
	mov r0, #0x1d
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C5C6
	ldr r0, off_814C5CC // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C5C6:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C5CC: .word dword_2010CCC
.endfunc // sub_814C5AC

.func
.thumb_func
sub_814C5D0:
	push {lr}
	mov r0, #0x1e
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C5EA
	ldr r0, off_814C5F0 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C5EA:
	pop {r0}
	bx r0
	.byte 0, 0
off_814C5F0: .word dword_2010CCC
.endfunc // sub_814C5D0

.func
.thumb_func
sub_814C5F4:
	push {r4,lr}
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x1f
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C618
	ldr r2, off_814C620 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r0, [r0,#0x24]
	str r4, [r0,#4]
	bl sub_814CB1C
loc_814C618:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0, 0
off_814C620: .word dword_2010CCC
.endfunc // sub_814C5F4

.func
.thumb_func
sub_814C624:
	push {lr}
	mov r0, #0x20 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C63E
	ldr r0, off_814C644 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C63E:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C644: .word dword_2010CCC
.endfunc // sub_814C624

.func
.thumb_func
sub_814C648:
	push {lr}
	mov r0, #0x21 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C662
	ldr r0, off_814C668 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C662:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C668: .word dword_2010CCC
.endfunc // sub_814C648

.func
.thumb_func
sub_814C66C:
	push {r4-r6,lr}
	add r6, r0, #0
	lsl r4, r1, #0x18
	lsr r5, r4, #0x18
	mov r0, #0x24 
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C6AA
	lsr r2, r4, #0x1a
	mov r0, #3
	and r0, r5
	cmp r0, #0
	beq loc_814C68C
	add r2, #1
loc_814C68C:
	ldr r1, off_814C6B0 // =dword_2010CCC 
	ldr r0, [r1]
	strb r2, [r0,#4]
	ldr r0, [r1]
	ldr r1, [r0,#0x24]
	add r1, #4
	ldrb r2, [r0,#4]
	mov r0, #0x80
	lsl r0, r0, #0x13
	orr r2, r0
	add r0, r6, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	bl sub_814CB1C
loc_814C6AA:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814C6B0: .word dword_2010CCC
.endfunc // sub_814C66C

.func
.thumb_func
sub_814C6B4:
	push {r4-r6,lr}
	add r6, r0, #0
	lsl r4, r1, #0x18
	lsr r5, r4, #0x18
	mov r0, #0x25 
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C6F2
	lsr r2, r4, #0x1a
	mov r0, #3
	and r0, r5
	cmp r0, #0
	beq loc_814C6D4
	add r2, #1
loc_814C6D4:
	ldr r1, off_814C6F8 // =dword_2010CCC 
	ldr r0, [r1]
	strb r2, [r0,#4]
	ldr r0, [r1]
	ldr r1, [r0,#0x24]
	add r1, #4
	ldrb r2, [r0,#4]
	mov r0, #0x80
	lsl r0, r0, #0x13
	orr r2, r0
	add r0, r6, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	bl sub_814CB1C
loc_814C6F2:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814C6F8: .word dword_2010CCC
.endfunc // sub_814C6B4

.func
.thumb_func
sub_814C6FC:
	push {lr}
	mov r0, #0x26 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C716
	ldr r0, off_814C71C // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C716:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C71C: .word dword_2010CCC
.endfunc // sub_814C6FC

.func
.thumb_func
sub_814C720:
	push {lr}
	mov r0, #0x27 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C73A
	ldr r0, off_814C740 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C73A:
	pop {r0}
	bx r0
	.byte 0, 0
off_814C740: .word dword_2010CCC
.endfunc // sub_814C720

.func
.thumb_func
sub_814C744:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r5, r4, #0
	mov r0, #0x28 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0
	bne loc_814C78A
	cmp r4, #0
	bne loc_814C76C
	ldr r0, off_814C768 // =dword_2010CCC 
	ldr r0, [r0]
	strb r3, [r0,#4]
	b loc_814C786
	.balign 4, 0x00
off_814C768: .word dword_2010CCC
loc_814C76C:
	ldr r2, off_814C790 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r0, [r0,#0x24]
	add r0, #4
	strb r5, [r0]
	add r0, #1
	strb r3, [r0]
	add r0, #1
	strb r3, [r0]
	strb r3, [r0,#1]
loc_814C786:
	bl sub_814CB1C
loc_814C78A:
	pop {r4,r5}
	pop {r0}
	bx r0
off_814C790: .word dword_2010CCC
.endfunc // sub_814C744

.func
.thumb_func
sub_814C794:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r0, #0x29 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0
	bne loc_814C7CA
	ldr r2, off_814C7D0 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r0, [r0,#0x24]
	add r0, #4
	strb r4, [r0]
	add r0, #1
	strb r5, [r0]
	add r0, #1
	strb r3, [r0]
	strb r3, [r0,#1]
	bl sub_814CB1C
loc_814C7CA:
	pop {r4,r5}
	pop {r0}
	bx r0
off_814C7D0: .word dword_2010CCC
.endfunc // sub_814C794

.func
.thumb_func
sub_814C7D4:
	push {lr}
	mov r0, #0x37 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C7EE
	ldr r0, off_814C7F4 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C7EE:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C7F4: .word dword_2010CCC
.endfunc // sub_814C7D4

.func
.thumb_func
sub_814C7F8:
	push {r4,lr}
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0x30 
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C81C
	ldr r2, off_814C824 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r0, [r0,#0x24]
	str r4, [r0,#4]
	bl sub_814CB1C
loc_814C81C:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C824: .word dword_2010CCC
.endfunc // sub_814C7F8

.func
.thumb_func
sub_814C828:
	push {r4,r5,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	mov r0, #0x31 
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C854
	ldr r2, off_814C85C // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1,#4]
	ldr r0, [r2]
	ldr r1, [r0,#0x24]
	lsl r0, r4, #8
	orr r0, r5
	str r0, [r1,#4]
	bl sub_814CB1C
loc_814C854:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C85C: .word dword_2010CCC
.endfunc // sub_814C828

.func
.thumb_func
sub_814C860:
	push {r4-r6,lr}
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	mov r0, #0x32 
	bl sub_814CA44
	lsl r0, r0, #0x10
	cmp r0, #0
	bne loc_814C892
	ldr r2, off_814C898 // =dword_2010CCC 
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1,#4]
	lsl r0, r5, #0x10
	orr r0, r4
	ldr r1, [r2]
	ldr r1, [r1,#0x24]
	str r0, [r1,#4]
	str r6, [r1,#8]
	bl sub_814CB1C
loc_814C892:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814C898: .word dword_2010CCC
.endfunc // sub_814C860

.func
.thumb_func
sub_814C89C:
	push {lr}
	mov r0, #0x33 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C8B6
	ldr r0, off_814C8BC // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C8B6:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C8BC: .word dword_2010CCC
.endfunc // sub_814C89C

.func
.thumb_func
sub_814C8C0:
	push {lr}
	mov r0, #0x34 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C8DA
	ldr r0, off_814C8E0 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C8DA:
	pop {r0}
	bx r0
	.byte 0, 0
off_814C8E0: .word dword_2010CCC
.endfunc // sub_814C8C0

.func
.thumb_func
sub_814C8E4:
	push {lr}
	mov r0, #0x3d 
	bl sub_814CA44
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814C8FE
	ldr r0, off_814C904 // =dword_2010CCC 
	ldr r0, [r0]
	strb r1, [r0,#4]
	bl sub_814CB1C
loc_814C8FE:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814C904: .word dword_2010CCC
.endfunc // sub_814C8E4

.func
.thumb_func
sub_814C908:
	push {r4,lr}
	ldr r4, off_814C920 // =dword_2010CCC 
	ldr r1, [r4]
	ldr r0, [r1,#0xc]
	cmp r0, #2
	beq loc_814C92E
	cmp r0, #2
	bhi loc_814C924
	cmp r0, #1
	beq loc_814C93C
	b loc_814C964
	.byte 0, 0
off_814C920: .word dword_2010CCC
loc_814C924:
	cmp r0, #3
	beq loc_814C946
	cmp r0, #4
	beq loc_814C93C
	b loc_814C964
loc_814C92E:
	ldrb r0, [r1,#0x10]
	mov r0, #1
	strb r0, [r1,#0x10]
	mov r0, #0x32 
	bl sub_814C96C
	b loc_814C964
loc_814C93C:
	bl sub_814CA18
	bl sub_814CB90
	b loc_814C964
loc_814C946:
	ldrb r0, [r1,#0x10]
	mov r0, #1
	strb r0, [r1,#0x10]
	bl sub_814CA18
	bl sub_814CC10
	ldr r0, [r4]
	ldr r2, [r0,#0x18]
	cmp r2, #0
	beq loc_814C964
	mov r0, #0xff
	mov r1, #0
	bl sub_814DA68
loc_814C964:
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814C908

.func
.thumb_func
sub_814C96C:
	push {r4-r7,lr}
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	add r5, r3, #0
	ldr r2, off_814C99C // =dword_2010CCC 
	ldr r0, [r2]
	ldrb r0, [r0,#0xa]
	lsl r0, r0, #2
	ldr r1, off_814C9A0 // =Timer0Counter_Reload 
	add r4, r0, r1
	add r1, #2
	add r7, r0, r1
	ldr r1, off_814C9A4 // =InterruptMasterEnableRegister 
	mov r0, #0
	strh r0, [r1]
	add r6, r2, #0
	cmp r3, #0x50 
	beq loc_814C9C4
	cmp r3, #0x50 
	bgt loc_814C9A8
	cmp r3, #0x32 
	beq loc_814C9B2
	b loc_814C9F0
	.balign 4, 0x00
off_814C99C: .word dword_2010CCC
off_814C9A0: .word Timer0Counter_Reload
off_814C9A4: .word InterruptMasterEnableRegister
loc_814C9A8:
	cmp r5, #0x64 
	beq loc_814C9D4
	cmp r5, #0x82
	beq loc_814C9E4
	b loc_814C9F0
loc_814C9B2:
	ldr r1, dword_814C9C0 // =0xFCCB 
	add r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	mov r0, #1
	b loc_814C9EE
	.byte 0, 0
dword_814C9C0: .word 0xFCCB
loc_814C9C4:
	ldr r1, dword_814C9D0 // =0xFAE0 
	add r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	mov r0, #2
	b loc_814C9EE
dword_814C9D0: .word 0xFAE0
loc_814C9D4:
	ldr r1, dword_814C9E0 // =0xF996 
	add r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	mov r0, #3
	b loc_814C9EE
dword_814C9E0: .word 0xF996
loc_814C9E4:
	ldr r1, dword_814CA0C // =0xF7AD 
	add r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	mov r0, #4
loc_814C9EE:
	str r0, [r1,#0xc]
loc_814C9F0:
	mov r0, #0xc3
	strh r0, [r7]
	ldr r2, off_814CA10 // =InterruptRequestFlags_IRQAcknowledge 
	ldr r1, [r6]
	mov r0, #8
	ldrb r1, [r1,#0xa]
	lsl r0, r1
	strh r0, [r2]
	ldr r1, off_814CA14 // =InterruptMasterEnableRegister 
	mov r0, #1
	strh r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
dword_814CA0C: .word 0xF7AD
off_814CA10: .word InterruptRequestFlags_IRQAcknowledge
off_814CA14: .word InterruptMasterEnableRegister
.endfunc // sub_814C96C

.func
.thumb_func
sub_814CA18:
	ldr r2, off_814CA38 // =dword_2010CCC 
	ldr r0, [r2]
	mov r1, #0
	str r1, [r0,#0xc]
	ldrb r0, [r0,#0xa]
	lsl r0, r0, #2
	ldr r3, off_814CA3C // =Timer0Counter_Reload 
	add r0, r0, r3
	strh r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0,#0xa]
	lsl r0, r0, #2
	ldr r2, off_814CA40 // =Timer0Control 
	add r0, r0, r2
	strh r1, [r0]
	bx lr
off_814CA38: .word dword_2010CCC
off_814CA3C: .word Timer0Counter_Reload
off_814CA40: .word Timer0Control
.endfunc // sub_814CA18

.func
.thumb_func
sub_814CA44:
	push {r4-r6,lr}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r6, r5, #0
	ldr r0, off_814CA70 // =InterruptMasterEnableRegister 
	ldrh r0, [r0]
	cmp r0, #0
	bne loc_814CA78
	ldr r0, off_814CA74 // =dword_2010CCC 
	ldr r1, [r0]
	ldrh r0, [r1,#0x12]
	mov r0, #6
	strh r0, [r1,#0x12]
	ldr r2, [r1,#0x18]
	cmp r2, #0
	beq loc_814CAC2
	ldrh r1, [r1,#0x12]
	add r0, r5, #0
	bl sub_814DA68
	b loc_814CAC2
	.byte 0, 0
off_814CA70: .word InterruptMasterEnableRegister
off_814CA74: .word dword_2010CCC
loc_814CA78:
	ldr r4, off_814CAA4 // =dword_2010CCC 
	ldr r2, [r4]
	add r3, r2, #0
	add r3, #0x2c 
	ldrb r0, [r3]
	cmp r0, #1
	bne loc_814CAA8
	ldrh r0, [r2,#0x12]
	mov r1, #0
	mov r0, #2
	strh r0, [r2,#0x12]
	ldrb r0, [r3]
	strb r1, [r3]
	ldr r0, [r4]
	ldr r2, [r0,#0x18]
	cmp r2, #0
	beq loc_814CAC2
	ldrh r1, [r0,#0x12]
	add r0, r5, #0
loc_814CA9E:
	bl sub_814DA68
	b loc_814CAC2
off_814CAA4: .word dword_2010CCC
loc_814CAA8:
	ldrb r0, [r2,#0x14]
	cmp r0, #0
	bne loc_814CAC6
	ldrh r0, [r2,#0x12]
	mov r0, #4
	strh r0, [r2,#0x12]
	ldr r3, [r2,#0x18]
	cmp r3, #0
	beq loc_814CAC2
	ldrh r1, [r2,#0x12]
	add r0, r5, #0
	bl sub_814DA6C
loc_814CAC2:
	mov r0, #1
	b loc_814CB0E
loc_814CAC6:
	ldrb r0, [r3]
	mov r1, #0
	mov r0, #1
	strb r0, [r3]
	ldr r0, [r4]
	strb r6, [r0,#6]
	ldr r0, [r4]
	str r1, [r0]
	strb r1, [r0,#4]
	ldr r0, [r4]
	strb r1, [r0,#5]
	ldr r0, [r4]
	strb r1, [r0,#7]
	ldr r0, [r4]
	strb r1, [r0,#8]
	ldr r0, [r4]
	strb r1, [r0,#9]
	ldr r0, [r4]
	str r1, [r0,#0xc]
	ldrb r2, [r0,#0x10]
	strb r1, [r0,#0x10]
	ldr r0, [r4]
	ldrh r2, [r0,#0x12]
	mov r2, #0
	strh r1, [r0,#0x12]
	strb r2, [r0,#0x15]
	ldr r1, off_814CB14 // =SIOModeSelect_GeneralPurposeData 
	mov r2, #0x80
	lsl r2, r2, #1
	add r0, r2, #0
	strh r0, [r1]
	sub r1, #0xc
	ldr r2, dword_814CB18 // =0x5003 
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
loc_814CB0E:
	pop {r4-r6}
	pop {r1}
	bx r1
off_814CB14: .word SIOModeSelect_GeneralPurposeData
dword_814CB18: .word 0x5003
.endfunc // sub_814CA44

.func
.thumb_func
sub_814CB1C:
	push {r4,r5,lr}
	ldr r5, off_814CB74 // =dword_2010CCC 
	ldr r0, [r5]
	ldr r3, [r0,#0x24]
	ldrb r1, [r0,#4]
	lsl r1, r1, #8
	ldrb r0, [r0,#6]
	ldr r2, dword_814CB78 // =0x99660000 
	orr r0, r2
	orr r1, r0
	str r1, [r3]
	ldr r2, off_814CB7C // =SIOData0_Parent__Multi_PlayerMode_ 
	ldr r1, [r5]
	ldr r0, [r1,#0x24]
	ldr r0, [r0]
	str r0, [r2]
	mov r2, #0
	str r2, [r1]
	mov r0, #1
	strb r0, [r1,#5]
	ldr r4, off_814CB80 // =InterruptMasterEnableRegister 
	ldrh r3, [r4]
	strh r2, [r4]
	ldr r2, off_814CB84 // =InterruptEnableRegister 
	ldr r1, [r5]
	mov r0, #8
	ldrb r1, [r1,#0xa]
	lsl r0, r1
	ldrh r1, [r2]
	orr r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	mov r1, #0x80
	orr r0, r1
	strh r0, [r2]
	strh r3, [r4]
	ldr r1, off_814CB88 // =SIOControlRegister 
	ldr r2, dword_814CB8C // =0x5083 
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
off_814CB74: .word dword_2010CCC
dword_814CB78: .word 0x99660000
off_814CB7C: .word SIOData0_Parent__Multi_PlayerMode_
off_814CB80: .word InterruptMasterEnableRegister
off_814CB84: .word InterruptEnableRegister
off_814CB88: .word SIOControlRegister
dword_814CB8C: .word 0x5083
.endfunc // sub_814CB1C

.func
.thumb_func
sub_814CB90:
	push {r4,lr}
	ldr r4, off_814CBA8 // =dword_2010CCC 
	ldr r2, [r4]
	ldrb r0, [r2,#0x15]
	add r3, r4, #0
	cmp r0, #1
	bhi loc_814CBAC
	add r0, #1
	strb r0, [r2,#0x15]
	bl sub_814CB1C
	b loc_814CC06
off_814CBA8: .word dword_2010CCC
loc_814CBAC:
	ldrb r0, [r2,#6]
	cmp r0, #0x27 
	beq loc_814CBBE
	cmp r0, #0x25 
	beq loc_814CBBE
	cmp r0, #0x35 
	beq loc_814CBBE
	cmp r0, #0x37 
	bne loc_814CBE0
loc_814CBBE:
	ldr r0, [r3]
	ldrh r1, [r0,#0x12]
	mov r2, #0
	mov r1, #1
	strh r1, [r0,#0x12]
	add r0, #0x2c 
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r1, [r3]
	ldr r2, [r1,#0x18]
	cmp r2, #0
	beq loc_814CC06
	ldrb r0, [r1,#6]
	ldrh r1, [r1,#0x12]
	bl sub_814DA68
	b loc_814CC06
loc_814CBE0:
	ldrh r0, [r2,#0x12]
	mov r1, #0
	mov r0, #1
	strh r0, [r2,#0x12]
	add r0, r2, #0
	add r0, #0x2c 
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r1, [r4]
	ldr r2, [r1,#0x18]
	cmp r2, #0
	beq loc_814CC00
	ldrb r0, [r1,#6]
	ldrh r1, [r1,#0x12]
loc_814CBFC:
	bl sub_814DA68
loc_814CC00:
	ldr r1, [r4]
	mov r0, #4
	str r0, [r1]
loc_814CC06:
	mov r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte  0
	.byte  0
.endfunc // sub_814CB90

.func
.thumb_func
sub_814CC10:
	ldr r3, off_814CC3C // =dword_2010CCC 
	ldr r1, [r3]
	mov r0, #5
	str r0, [r1]
	mov r2, #0
	strb r2, [r1,#4]
	ldr r0, [r3]
	strb r2, [r0,#5]
	ldr r1, off_814CC40 // =SIOData0_Parent__Multi_PlayerMode_ 
	mov r0, #0x80
	lsl r0, r0, #0x18
	str r0, [r1]
	add r1, #8
	strh r2, [r1]
	ldr r2, dword_814CC44 // =0x5003 
	add r0, r2, #0
	strh r0, [r1]
	add r2, #0x7f
	add r0, r2, #0
	strh r0, [r1]
	mov r0, #0
	bx lr
off_814CC3C: .word dword_2010CCC
off_814CC40: .word SIOData0_Parent__Multi_PlayerMode_
dword_814CC44: .word 0x5003
.endfunc // sub_814CC10

.func
.thumb_func
sub_814CC48:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, off_814CC60 // =InterruptMasterEnableRegister 
	ldrh r0, [r0]
	cmp r0, #0
	bne loc_814CC64
	mov r0, #1
	neg r0, r0
	b loc_814CCE4
off_814CC60: .word InterruptMasterEnableRegister
loc_814CC64:
	ldr r0, off_814CC90 // =InterruptEnableRegister 
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, off_814CC94 // =dword_2010CCC 
	ldr r1, [r4]
	mov r0, #0xa
	str r0, [r1]
	ldr r0, off_814CC98 // =sub_814CE64+1 
	bl sub_814C378
	bl sub_814CCFC
	ldr r0, [r4]
	ldrb r0, [r0,#0xa]
	lsl r0, r0, #2
	ldr r1, off_814CC9C // =Timer0Counter_Reload 
	add r4, r0, r1
	lsl r0, r5, #0x1b
	lsr r5, r0, #0x18
	mov r7, #0
	b loc_814CCB2
	.byte 0, 0
off_814CC90: .word InterruptEnableRegister
off_814CC94: .word dword_2010CCC
off_814CC98: .word sub_814CE64+1
off_814CC9C: .word Timer0Counter_Reload
loc_814CCA0:
	strh r6, [r4,#2]
	strh r6, [r4]
	mov r0, #0x83
	strh r0, [r4,#2]
loc_814CCA8:
	ldrh r0, [r4]
	cmp r0, #0x1f
	bls loc_814CCA8
	strh r7, [r4,#2]
	strh r7, [r4]
loc_814CCB2:
	sub r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xff
	beq loc_814CCC6
	bl sub_814CD70
	add r6, r0, #0
	cmp r6, #0
	beq loc_814CCA0
loc_814CCC6:
	ldr r1, off_814CCF0 // =InterruptMasterEnableRegister 
	mov r0, #0
	strh r0, [r1]
	ldr r0, off_814CCF4 // =InterruptEnableRegister 
	mov r2, r8
	strh r2, [r0]
	mov r0, #1
	strh r0, [r1]
	ldr r0, off_814CCF8 // =dword_2010CCC 
	ldr r1, [r0]
	mov r0, #0
	str r0, [r1]
	bl sub_814C378
	add r0, r6, #0
loc_814CCE4:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0, 0
off_814CCF0: .word InterruptMasterEnableRegister
off_814CCF4: .word InterruptEnableRegister
off_814CCF8: .word dword_2010CCC
.endfunc // sub_814CC48

.func
.thumb_func
sub_814CCFC:
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r3, off_814CD54 // =InterruptMasterEnableRegister 
	mov r4, #0
	strh r4, [r3]
	ldr r2, off_814CD58 // =InterruptEnableRegister 
	ldr r0, off_814CD5C // =dword_2010CCC 
	ldr r0, [r0]
	mov r1, #8
	ldrb r0, [r0,#0xa]
	lsl r1, r0
	mov r5, #0x80
	orr r1, r5
	ldrh r0, [r2]
	bic r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	ldr r0, off_814CD60 // =SIOModeSelect_GeneralPurposeData 
	strh r4, [r0]
	sub r2, #0xd8
	mov r1, #0x80
	lsl r1, r1, #5
	add r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	mov r3, #0x81
	lsl r3, r3, #7
	add r1, r3, #0
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	str r0, [sp]
	ldr r1, off_814CD64 // =byte_2010CD0 
	ldr r2, dword_814CD68 // =0x5000003 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_814CD6C // =InterruptRequestFlags_IRQAcknowledge 
	strh r5, [r0]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
off_814CD54: .word InterruptMasterEnableRegister
off_814CD58: .word InterruptEnableRegister
off_814CD5C: .word dword_2010CCC
off_814CD60: .word SIOModeSelect_GeneralPurposeData
off_814CD64: .word byte_2010CD0
dword_814CD68: .word 0x5000003
off_814CD6C: .word InterruptRequestFlags_IRQAcknowledge
.endfunc // sub_814CCFC

.func
.thumb_func
sub_814CD70:
	push {r4-r7,lr}
	ldr r0, off_814CD84 // =byte_2010CD0 
	ldrb r1, [r0,#0x1] // (byte_2010CD1 - 0x2010cd0)
	mov r12, r1
	add r7, r0, #0
	cmp r1, #0
	beq loc_814CD88
	cmp r1, #1
	beq loc_814CDC0
	b loc_814CE58
off_814CD84: .word byte_2010CD0
loc_814CD88:
	mov r6, #1
	strb r6, [r7]
	ldr r3, off_814CDB4 // =SIOControlRegister 
	ldrh r0, [r3]
	mov r5, #1
	orr r0, r5
	strh r0, [r3]
	ldr r4, off_814CDB8 // =InterruptMasterEnableRegister 
	mov r0, r12
	strh r0, [r4]
	ldr r2, off_814CDBC // =InterruptEnableRegister 
	ldrh r0, [r2]
	mov r1, #0x80
	orr r0, r1
	strh r0, [r2]
	strh r6, [r4]
	strb r5, [r7,#0x1] // (byte_2010CD1 - 0x2010cd0)
	ldrb r0, [r3]
	orr r0, r1
	strb r0, [r3]
	b loc_814CE5C
	.balign 4, 0x00
off_814CDB4: .word SIOControlRegister
off_814CDB8: .word InterruptMasterEnableRegister
off_814CDBC: .word InterruptEnableRegister
loc_814CDC0:
	ldrh r0, [r7,#0xa] // (word_2010CDA - 0x2010cd0)
	cmp r0, #0
	bne loc_814CE54
	ldrb r0, [r7]
	cmp r0, #1
	bne loc_814CDF0
	ldrh r0, [r7,#0x2] // (word_2010CD2 - 0x2010cd0)
	cmp r0, #0
	bne loc_814CE5C
	ldr r3, off_814CDE8 // =InterruptMasterEnableRegister 
	strh r0, [r3]
	ldr r2, off_814CDEC // =SIOControlRegister 
	ldrh r0, [r2]
	mov r1, #0x80
	orr r0, r1
	strh r0, [r2]
	mov r1, r12
	strh r1, [r3]
	b loc_814CE5C
	.balign 4, 0x00
off_814CDE8: .word InterruptMasterEnableRegister
off_814CDEC: .word SIOControlRegister
loc_814CDF0:
	ldrh r1, [r7,#0x4] // (word_2010CD4 - 0x2010cd0)
	ldr r0, dword_814CE3C // =0x8001 
	cmp r1, r0
	beq loc_814CE5C
	ldrh r6, [r7,#0x2] // (word_2010CD2 - 0x2010cd0)
	cmp r6, #0
	bne loc_814CE5C
	ldr r4, off_814CE40 // =InterruptMasterEnableRegister 
	strh r6, [r4]
	ldr r3, off_814CE44 // =InterruptEnableRegister 
	ldrh r1, [r3]
	ldr r0, dword_814CE48 // =0xFF7F 
	and r0, r1
	strh r0, [r3]
	mov r7, r12
	strh r7, [r4]
	ldr r2, off_814CE4C // =SIOControlRegister 
	strh r6, [r2]
	mov r1, #0x80
	lsl r1, r1, #5
	add r0, r1, #0
	strh r0, [r2]
	ldr r0, off_814CE50 // =InterruptRequestFlags_IRQAcknowledge 
	mov r5, #0x80
	strh r5, [r0]
	ldrh r0, [r2]
	mov r7, #0x81
	lsl r7, r7, #7
	add r1, r7, #0
	orr r0, r1
	strh r0, [r2]
	strh r6, [r4]
	ldrh r0, [r3]
	orr r0, r5
	strh r0, [r3]
	mov r0, r12
	strh r0, [r4]
	b loc_814CE5C
dword_814CE3C: .word 0x8001
off_814CE40: .word InterruptMasterEnableRegister
off_814CE44: .word InterruptEnableRegister
dword_814CE48: .word 0xFF7F
off_814CE4C: .word SIOControlRegister
off_814CE50: .word InterruptRequestFlags_IRQAcknowledge
loc_814CE54:
	mov r0, #2
	strb r0, [r7,#0x1] // (byte_2010CD1 - 0x2010cd0)
loc_814CE58:
	ldrh r0, [r7,#0xa] // (word_2010CDA - 0x2010cd0)
	b loc_814CE5E
loc_814CE5C:
	mov r0, #0
loc_814CE5E:
	pop {r4-r7}
	pop {r1}
	bx r1
.endfunc // sub_814CD70

.func
.thumb_func
sub_814CE64:
	push {r4,r5,lr}
	ldr r0, off_814CEAC // =SIOData0_Parent__Multi_PlayerMode_ 
	ldr r5, [r0]
	ldr r0, off_814CEB0 // =byte_2010CD0 
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #1
	beq loc_814CE7E
	ldr r0, off_814CEB4 // =SIOControlRegister 
	ldrh r1, [r0]
	mov r2, #0x80
	orr r1, r2
	strh r1, [r0]
loc_814CE7E:
	ldrb r2, [r4]
	lsl r1, r2, #4
	add r0, r5, #0
	lsl r0, r1
	lsr r1, r0, #0x10
	mov r0, #1
	sub r0, r0, r2
	lsl r0, r0, #4
	lsl r5, r0
	add r0, r5, #0
	lsr r5, r0, #0x10
	ldrh r0, [r4,#0xa] // (word_2010CDA - 0x2010cd0)
	cmp r0, #0
	bne loc_814CED2
	ldrh r2, [r4,#0x6] // (word_2010CD6 - 0x2010cd0)
	cmp r1, r2
	bne loc_814CED0
	ldrh r3, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
	cmp r3, #3
	bls loc_814CEB8
	strh r5, [r4,#0xa] // (word_2010CDA - 0x2010cd0)
	b loc_814CED2
	.balign 4, 0x00
off_814CEAC: .word SIOData0_Parent__Multi_PlayerMode_
off_814CEB0: .word byte_2010CD0
off_814CEB4: .word SIOControlRegister
loc_814CEB8:
	ldrh r0, [r4,#0x4] // (word_2010CD4 - 0x2010cd0)
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r1, r0
	bne loc_814CED2
	mvn r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	bne loc_814CED2
	add r0, r3, #1
loc_814CED0:
	strh r0, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
loc_814CED2:
	ldrh r0, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
	cmp r0, #3
	bhi loc_814CEE8
	lsl r0, r0, #1
	ldr r1, off_814CEE4 // =aNintendosio32i 
	add r0, r0, r1
	ldrh r0, [r0]
	b loc_814CEEA
	.balign 4, 0x00
off_814CEE4: .word aNintendosio32i
loc_814CEE8:
	ldr r0, dword_814CF40 // =0x8001 
loc_814CEEA:
	strh r0, [r4,#0x4] // (word_2010CD4 - 0x2010cd0)
	mvn r0, r5
	strh r0, [r4,#0x6] // (word_2010CD6 - 0x2010cd0)
	ldr r3, off_814CF44 // =SIOData0_Parent__Multi_PlayerMode_ 
	ldrh r2, [r4,#0x4] // (word_2010CD4 - 0x2010cd0)
	ldrb r1, [r4]
	mov r0, #1
	sub r0, r0, r1
	lsl r0, r0, #4
	lsl r2, r0
	ldrh r0, [r4,#0x6] // (word_2010CD6 - 0x2010cd0)
	lsl r1, r1, #4
	lsl r0, r1
	add r2, r2, r0
	str r2, [r3]
	ldrb r0, [r4]
	cmp r0, #1
	bne loc_814CF38
	ldrh r0, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
	cmp r0, #0
	bne loc_814CF1A
	ldr r0, dword_814CF48 // =0x494E 
	cmp r5, r0
	bne loc_814CF38
loc_814CF1A:
	mov r0, #0
	ldr r1, dword_814CF4C // =0x257 
loc_814CF1E:
	add r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	bls loc_814CF1E
	ldrh r0, [r4,#0xa] // (word_2010CDA - 0x2010cd0)
	cmp r0, #0
	bne loc_814CF38
	ldr r0, off_814CF50 // =SIOControlRegister 
	ldrh r1, [r0]
	mov r2, #0x80
	orr r1, r2
	strh r1, [r0]
loc_814CF38:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0, 0
dword_814CF40: .word 0x8001
off_814CF44: .word SIOData0_Parent__Multi_PlayerMode_
dword_814CF48: .word 0x494E
dword_814CF4C: .word 0x257
off_814CF50: .word SIOControlRegister
dword_814CF54: .word 0xE1A0C00D
	.word 0xE92DD800
	.word 0xE59F3050
	.word 0xE5930000
dword_814CF64: .word 0xE5902000
	.word 0xE24CB004
	.word 0xE352000A
	.byte  6
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0x20
	.byte  0
	.byte 0x90
	.byte 0xE5
	.byte  0
	.byte  0
	.byte 0x50 
	.byte 0xE3
	.byte  0
	.byte 0x68 
	.byte 0x1B
	.byte  9
	.word 0x12FFF1E
	.byte 0x49 
	.byte  2
	.byte  0
	.byte 0xEB
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
	.byte 0x14
	.byte 0x30 
	.byte 0xD0
	.byte 0xE5
	.byte  1
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte  2
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  5
	.byte  0
	.byte  0
	.byte 0xEB
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
	.byte 0xA6
	.byte  0
	.byte  0
	.byte 0xEB
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
off_814CFB4: .word dword_2010CCC
	.byte 0xD
	.byte 0xC0
	.byte 0xA0
	.byte 0xE1
	.byte 0x70 
	.byte 0xD8
	.byte 0x2D 
	.byte 0xE9
	.byte 0x50 
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte  4
	.byte 0xB0
	.byte 0x4C 
	.byte 0xE2
	.byte 0xBB
	.byte  1
	.byte  0
	.byte 0xEB
	.byte 0x12
	.byte 0x4E 
	.byte 0xA0
	.byte 0xE3
	.byte 0x54 
	.byte 0x22 
	.byte 0x9F
	.byte 0xE5
	.byte  1
	.byte 0x43 
	.byte 0x84
	.byte 0xE2
	.byte  0
	.byte 0xE0
	.byte 0x94
	.byte 0xE5
	.byte 0x0, 0xC0
	.byte 0x92
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x9C
	.byte 0xE5
	.byte  2
	.byte 0x60 
	.byte 0xA0
	.byte 0xE1
	.byte  0
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x11
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  2
	.byte  1
	.byte 0x5E 
	.byte 0xE3
	.byte 0x2F 
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  5
	.byte 0x20
	.byte 0xDC
	.byte 0xE5
	.byte  4
	.byte 0x30 
	.byte 0xDC
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte  7
	.byte  0
	.byte  0
	.byte 0x8A
	.byte 0x24 
	.byte 0x30 
	.byte 0x9C
	.byte 0xE5
	.byte  2
	.byte 0x10
	.byte 0xA0
	.byte 0xE1
	.byte  1
	.byte 0x21 
	.byte 0x93
	.byte 0xE7
	.byte  0
	.byte 0x20
	.byte 0x84
	.byte 0xE5
	.byte  5
	.byte 0x30 
	.byte 0xDC
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte  5
	.byte 0x30 
	.byte 0xCC
	.byte 0xE5
	.byte 0x3A 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  1
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x8C
	.byte 0xE5
	.byte  0
	.byte 0xE0
	.byte 0x84
	.byte 0xE5
	.byte 0x36 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  0
	.byte 0x30 
	.byte 0x9C
	.byte 0xE5
	.byte  1
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x20
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0x99
	.byte 0x34 
	.byte 0xA0
	.byte 0xE3
	.byte 0x66 
	.byte 0x38 
	.byte 0x83
	.byte 0xE2
	.byte  2
	.byte 0x51 
	.byte 0xA0
	.byte 0xE3
	.byte 0xC5
	.byte 0x27 
	.byte 0xE
	.byte 0xE0
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte 0x16
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  0
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  8
	.byte 0x30 
	.byte 0xCC
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x96
	.byte 0xE5
	.byte  8
	.byte  0
	.byte 0xD1
	.byte 0xE5
	.byte 0x28 
	.byte 0x20
	.byte 0x91
	.byte 0xE5
	.byte  0
	.byte 0xE1
	.byte 0x82
	.byte 0xE7
	.byte  8
	.byte 0x30 
	.byte 0xD1
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte  8
	.byte 0x30 
	.byte 0xC1
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x96
	.byte 0xE5
	.byte  9
	.byte 0xE0
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x96
	.byte 0xE5
	.byte 0x2E 
	.byte 0x24 
	.byte 0xA0
	.byte 0xE1
	.byte  7
	.byte 0x20
	.byte 0xC3
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x96
	.byte 0xE5
	.byte  7
	.byte 0x20
	.byte 0xD1
	.byte 0xE5
	.byte  8
	.byte 0x30 
	.byte 0xD1
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte 0x15
	.byte  0
	.byte  0
	.byte 0x3A 
	.byte  2
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x81
	.byte 0xE5
	.byte  0
	.byte 0x50 
	.byte 0x84
	.byte 0xE5
	.byte 0x16
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0xC3
	.byte  1
	.byte  0
	.byte 0xEB
	.byte 0x82
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte 0x7D 
	.byte  1
	.byte  0
	.byte 0xEB
	.byte 0x5D 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  0
	.byte 0x30 
	.byte 0x9C
	.byte 0xE5
	.byte  2
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0xF
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  8
	.byte 0x10
	.byte 0xDC
	.byte 0xE5
	.byte 0x28 
	.byte 0x20
	.byte 0x9C
	.byte 0xE5
	.byte  1
	.byte 0xE1
	.byte 0x82
	.byte 0xE7
	.byte  8
	.byte 0x30 
	.byte 0xDC
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte  8
	.byte 0x30 
	.byte 0xCC
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x96
	.byte 0xE5
	.byte  7
	.byte 0x20
	.byte 0xD1
	.byte 0xE5
	.byte  8
	.byte 0x30 
	.byte 0xD1
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte  2
	.byte  0
	.byte  0
	.byte 0x2A 
	.byte  3
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x81
	.byte 0xE5
	.byte  1
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  2
	.byte 0x31 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x84
	.byte 0xE5
	.byte  1
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte 0x4D 
	.byte  1
	.byte  0
	.byte 0xEB
	.byte  0
	.byte  8
	.byte 0xA0
	.byte 0xE1
	.byte  1
	.byte  8
	.byte 0x50 
	.byte 0xE3
	.byte 0x45 
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x4A 
	.byte 0x4F 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x43 
	.byte 0x84
	.byte 0xE2
	.byte  5
	.byte 0x5A 
	.byte 0xA0
	.byte 0xE3
	.byte 0xB
	.byte 0x30 
	.byte 0x85
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC4
	.byte 0xE1
	.byte  0
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte 0x43 
	.byte  1
	.byte  0
	.byte 0xEB
	.byte  0
	.byte  8
	.byte 0xA0
	.byte 0xE1
	.byte  1
	.byte  8
	.byte 0x50 
	.byte 0xE3
	.byte 0x3B 
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x9D
	.byte  1
	.byte  0
	.byte 0xEB
	.byte  0
	.byte 0x10
	.byte 0x96
	.byte 0xE5
	.byte  0
	.byte  0
	.byte 0x91
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x50 
	.byte 0xE3
	.byte 0x32 
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  9
	.byte 0x30 
	.byte 0xD1
	.byte 0xE5
	.byte 0xA5
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0xA7
	.byte  0
	.byte 0x53 
	.byte 0x13
	.byte  4
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0xFF
	.byte 0x30 
	.byte  3
	.byte 0xE2
	.byte 0xB5
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte  1
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0xB7
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x11
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0x12
	.byte 0x1E
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte 0x4A 
	.byte 0xCF
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0xC3
	.byte 0x8C
	.byte 0xE2
	.byte  0
	.byte  0
	.byte 0x96
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0x14
	.byte 0x30 
	.byte 0xC0
	.byte 0xE5
	.byte  2
	.byte 0x21 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x20
	.byte 0x81
	.byte 0xE5
	.byte  5
	.byte 0x3A 
	.byte 0x83
	.byte 0xE2
	.byte  2
	.byte 0x20
	.byte 0x83
	.byte 0xE2
	.byte 0xB0
	.byte 0x20
	.byte 0xCC
	.byte 0xE1
	.byte 0x82
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xCC
	.byte 0xE1
	.byte  0
	.byte 0x20
	.byte 0x96
	.byte 0xE5
	.byte  5
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte 0xB
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0xEE
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte  5
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  3
	.byte 0x30 
	.byte 0x85
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC4
	.byte 0xE1
	.byte  4
	.byte 0x20
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x20
	.byte 0x81
	.byte 0xE5
	.byte 0xB2
	.byte  1
	.byte 0xC1
	.byte 0xE1
	.byte  3
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  3
	.byte 0x30 
	.byte 0x85
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC4
	.byte 0xE1
	.byte  4
	.byte 0x20
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x20
	.byte 0x81
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x96
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0x2C 
	.byte 0x30 
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte  0
	.byte 0x96
	.byte 0xE5
	.byte 0x18
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte  8
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0xB2
	.byte 0x11
	.byte 0xD0
	.byte 0xE1
	.byte  6
	.byte  0
	.byte 0xD0
	.byte 0xE5
	.byte 0x9F
	.byte  1
	.byte  0
	.byte 0xEB
	.byte  4
	.byte  0
	.hword 0xEA00
	.word dword_2010CCC
	.byte  3
	.byte 0x30 
	.byte 0x85
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC4
	.byte 0xE1
	.byte 0x83
	.byte 0x20
	.byte 0x85
	.byte 0xE2
	.byte 0xB0
	.byte 0x20
	.byte 0xC4
	.byte 0xE1
	.byte 0x70 
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
	.byte 0xD
	.byte 0xC0
	.byte 0xA0
	.byte 0xE1
	.byte 0x70 
	.byte 0xD8
	.byte 0x2D 
	.byte 0xE9
	.byte 0x9C
	.byte 0x43 
	.byte 0x9F
	.byte 0xE5
	.byte 0x64 
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x94
	.byte 0xE5
	.byte  0
	.byte 0x60 
	.byte 0xA0
	.byte 0xE3
	.byte 0x10
	.byte 0x60 
	.byte 0xC3
	.byte 0xE5
	.byte  4
	.byte 0xB0
	.byte 0x4C 
	.byte 0xE2
	.byte 0x13
	.byte  1
	.byte  0
	.byte 0xEB
	.byte  6
	.byte  0
	.byte 0xA0
	.byte 0xE1
	.byte 0xF7
	.byte  0
	.byte  0
	.byte 0xEB
	.byte  0
	.byte  8
	.byte 0xA0
	.byte 0xE1
	.byte  1
	.byte  8
	.byte 0x50 
	.byte 0xE3
	.byte  4
	.byte 0x50 
	.byte 0xA0
	.byte 0xE1
	.byte 0xF1
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x4A 
	.byte 0x3F 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x33 
	.byte 0x83
	.byte 0xE2
	.byte  5
	.byte 0x2A 
	.byte 0xA0
	.byte 0xE3
	.byte 0xA
	.byte 0x20
	.byte 0x82
	.byte 0xE2
	.byte 0xB0
	.byte 0x20
	.byte 0xC3
	.byte 0xE1
	.byte 0x12
	.byte 0xEE
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte  0
	.byte 0x95
	.byte 0xE5
	.byte  1
	.byte 0xE3
	.byte 0x8E
	.byte 0xE2
	.word 0xE59EC000
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  5
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x30 
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0x28 
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  1
	.byte 0x40 
	.byte 0xA0
	.byte 0xE3
	.byte 0x99
	.byte  4
	.byte 0xA0
	.byte 0xE3
	.word 0xE583C000
	.byte 0x66 
	.byte  8
	.byte 0x80
	.byte 0xE2
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte 0x20
	.byte 0x38 
	.byte 0xA0
	.byte 0xE1
	.byte  5
	.byte 0x40 
	.byte 0xC2
	.byte 0xE5
	.byte 0x2C 
	.byte  8
	.byte 0x53 
	.byte 0xE1
	.byte 0x79 
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  0
	.byte 0x30 
	.byte 0x95
	.byte 0xE5
	.byte 0x2C 
	.byte 0x24 
	.byte 0xA0
	.byte 0xE1
	.byte  4
	.byte 0x20
	.byte 0xC3
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  6
	.byte 0xC0
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x95
	.byte 0xE5
	.byte  4
	.byte 0x30 
	.byte 0xD1
	.byte 0xE5
	.byte  6
	.byte  0
	.byte 0x53 
	.byte 0xE1
	.byte 0x16
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  6
	.byte 0x20
	.byte 0xD1
	.byte 0xE5
	.byte 0x27 
	.byte 0x30 
	.byte 0x42 
	.byte 0xE2
	.byte 0x36 
	.byte  0
	.byte 0x52 
	.byte 0xE3
	.byte  2
	.byte  0
	.byte 0x53 
	.byte 0x13
	.byte  6
	.byte  0
	.byte  0
	.byte 0x8A
	.byte 0x80
	.byte 0x30 
	.byte 0x82
	.byte 0xE2
	.byte  9
	.byte 0x30 
	.byte 0xC1
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  9
	.byte 0x30 
	.byte 0xD2
	.byte 0xE5
	.byte 0x24 
	.byte 0x10
	.byte 0x92
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x83
	.byte 0xE0
	.byte 0x2B 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0x24 
	.byte 0x20
	.byte 0x91
	.byte 0xE5
	.byte 0xBC
	.byte 0x32 
	.byte 0x9F
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  6
	.byte 0x30 
	.byte 0xD2
	.byte 0xE5
	.byte 0x10
	.byte 0x30 
	.byte 0x43 
	.byte 0xE2
	.byte 0x2D 
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x31 
	.byte  0
	.byte  0
	.byte 0x8A
	.byte 0x24 
	.byte 0x30 
	.byte 0x92
	.byte 0xE5
	.byte  4
	.byte 0x40 
	.byte 0x83
	.byte 0xE5
	.byte 0x31 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  2
	.byte 0x31 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x8E
	.byte 0xE5
	.byte  5
	.byte 0x40 
	.byte 0xC1
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte 0x1A
	.byte 0x31 
	.byte 0x83
	.byte 0xE2
	.byte  0
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte 0x56 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  6
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x3C 
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  5
	.byte 0x10
	.byte 0xD0
	.byte 0xE5
	.byte 0x28 
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  1
	.byte 0xC1
	.byte 0x82
	.byte 0xE7
	.byte  5
	.byte 0x30 
	.byte 0xD0
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte  5
	.byte 0x30 
	.byte 0xC0
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x95
	.byte 0xE5
	.byte  4
	.byte 0x20
	.byte 0xD1
	.byte 0xE5
	.byte  5
	.byte 0x30 
	.byte 0xD1
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte 0x2E 
	.byte  0
	.byte  0
	.byte 0x2A 
	.byte  6
	.byte 0x20
	.byte 0xD1
	.byte 0xE5
	.byte 0x28 
	.byte 0x30 
	.byte 0x42 
	.byte 0xE2
	.byte 0x36 
	.byte  0
	.byte 0x52 
	.byte 0xE3
	.byte  1
	.byte  0
	.byte 0x53 
	.byte 0x13
	.byte 0xA
	.byte  0
	.byte  0
	.byte 0x8A
	.byte 0x80
	.byte 0x30 
	.byte 0x82
	.byte 0xE2
	.byte  9
	.byte 0x30 
	.byte 0xC1
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  9
	.byte 0x30 
	.byte 0xD2
	.byte 0xE5
	.byte 0x24 
	.byte 0x10
	.byte 0x92
	.byte 0xE5
	.byte 0x99
	.byte 0x34 
	.byte 0x83
	.byte 0xE3
	.byte 0x66 
	.byte 0x38 
	.byte 0x83
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x81
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  7
	.byte 0x60 
	.byte 0xC2
	.byte 0xE5
	.byte 0x12
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0x24 
	.byte 0x20
	.byte 0x91
	.byte 0xE5
	.byte 0xFC
	.byte 0x31 
	.byte 0x9F
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  6
	.byte 0x30 
	.byte 0xD2
	.byte 0xE5
	.byte 0x10
	.byte 0x30 
	.byte 0x43 
	.byte 0xE2
	.byte 0x2D 
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x24 
	.byte 0x20
	.byte 0x92
	.byte 0x95
	.byte  1
	.byte 0x30 
	.byte 0xA0
	.byte 0x93
	.byte  1
	.byte  0
	.byte  0
	.byte 0x9A
	.byte 0x24 
	.byte 0x20
	.byte 0x92
	.byte 0xE5
	.byte  2
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  4
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x95
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  7
	.byte 0x30 
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x95
	.byte 0xE5
	.byte  2
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte 0xB2
	.byte 0x31 
	.byte 0xC1
	.byte 0xE1
	.byte  0
	.byte  0
	.byte 0x95
	.byte 0xE5
	.byte 0x24 
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte 0x12
	.byte 0x3E 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x10
	.byte 0x92
	.byte 0xE5
	.byte  1
	.byte 0x33 
	.byte 0x83
	.byte 0xE2
	.byte  0
	.byte 0x10
	.byte 0x83
	.byte 0xE5
	.byte  1
	.byte 0x20
	.byte 0xA0
	.byte 0xE3
	.byte  8
	.byte 0x20
	.byte 0xC0
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x95
	.byte 0xE5
	.byte  7
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x81
	.byte 0xE5
	.byte 0x19
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  2
	.byte 0x31 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x8E
	.byte 0xE5
	.byte 0x16
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  7
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte 0x13
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  2
	.byte  1
	.byte 0x5C 
	.byte 0xE3
	.byte 0xD
	.byte  0
	.byte  0
	.byte 0x1A
	.byte  7
	.byte 0x20
	.byte 0xD0
	.byte 0xE5
	.byte  8
	.byte 0x30 
	.byte 0xD0
	.byte 0xE5
	.byte  3
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte  8
	.byte 0x30 
	.byte 0xA0
	.byte 0x33 
	.byte  0
	.byte 0x30 
	.byte 0x80
	.byte 0x35 
	.byte 0xB
	.byte  0
	.byte  0
	.byte 0x3A 
	.byte  8
	.byte 0x10
	.byte 0xD0
	.byte 0xE5
	.byte 0x24 
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  1
	.byte 0x21 
	.byte 0x93
	.byte 0xE7
	.byte  0
	.byte 0x20
	.byte 0x8E
	.byte 0xE5
	.byte  8
	.byte 0x30 
	.byte 0xD0
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte  8
	.byte 0x30 
	.byte 0xC0
	.byte 0xE5
	.byte  3
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0xC0
	.byte  0
	.byte  0
	.byte 0xEB
	.byte 0x64 
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte 0x7A 
	.byte  0
	.byte  0
	.byte 0xEB
	.byte 0x5D 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte  1
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte 0x5D 
	.byte  0
	.byte  0
	.byte 0xEB
	.byte  0
	.byte  8
	.byte 0xA0
	.byte 0xE1
	.byte  1
	.byte  8
	.byte 0x50 
	.byte 0xE3
	.byte 0x58 
	.byte  0
	.byte  0
	.byte 0xA
	.byte  5
	.byte 0x60 
	.byte 0xA0
	.byte 0xE1
	.byte  0
	.byte 0x30 
	.byte 0x96
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x93
	.byte 0xE5
	.byte  8
	.byte  0
	.byte 0x52 
	.byte 0xE3
	.byte 0x27 
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0x4A 
	.byte 0x4F 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x43 
	.byte 0x84
	.byte 0xE2
	.byte  5
	.byte 0x3A 
	.byte 0xA0
	.byte 0xE3
	.byte  2
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC4
	.byte 0xE1
	.byte 0xAD
	.byte  0
	.byte  0
	.byte 0xEB
	.byte  0
	.byte  0
	.byte 0x96
	.byte 0xE5
	.byte 0xB2
	.byte 0x31 
	.byte 0xD0
	.byte 0xE1
	.byte  3
	.byte  0
	.byte 0x53 
	.byte 0xE3
	.byte  8
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0xBC
	.byte  0
	.byte  0
	.byte 0xEB
	.byte  0
	.byte 0x30 
	.byte 0x96
	.byte 0xE5
	.byte 0x1C
	.byte 0x10
	.byte 0x93
	.byte 0xE5
	.byte  0
	.byte  0
	.byte 0x51 
	.byte 0xE3
	.byte 0x44 
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x7B 
	.byte 0xF
	.byte 0xA0
	.byte 0xE3
	.byte  2
	.byte  0
	.byte 0x80
	.byte 0xE2
	.byte 0xD9
	.byte  0
	.byte  0
	.byte 0xEB
	.byte 0x40 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0x12
	.byte 0x3E 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x33 
	.byte 0x83
	.byte 0xE2
	.byte  0
	.byte 0x10
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x10
	.byte 0x83
	.byte 0xE5
	.byte  5
	.byte 0x2A 
	.byte 0xA0
	.byte 0xE3
	.byte 0xB0
	.byte 0x10
	.byte 0xC4
	.byte 0xE1
	.byte  3
	.byte 0x20
	.byte 0x82
	.byte 0xE2
	.byte 0xB0
	.byte 0x20
	.byte 0xC4
	.byte 0xE1
	.byte  1
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0x14
	.byte 0x30 
	.byte 0xC0
	.byte 0xE5
	.byte  0
	.byte  0
	.byte 0x95
	.byte 0xE5
	.byte 0x1C
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0x80
	.byte 0xE5
	.byte  1
	.byte  0
	.byte 0x52 
	.byte 0xE1
	.byte 0x31 
	.byte  0
	.byte  0
	.byte 0xA
	.byte  4
	.byte 0x30 
	.byte 0xD0
	.byte 0xE5
	.byte  6
	.byte  0
	.byte 0xD0
	.byte 0xE5
	.byte  2
	.byte 0x10
	.byte 0xA0
	.byte 0xE1
	.byte  3
	.byte  4
	.byte 0x80
	.byte 0xE1
	.byte 0xC4
	.byte  0
	.byte  0
	.byte 0xEB
	.byte 0x2B 
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0x82
	.byte 0x3F 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x33 
	.byte 0x83
	.byte 0xE2
	.byte  0
	.byte 0x20
	.byte 0xA0
	.byte 0xE3
	.byte 0xB0
	.byte 0x20
	.byte 0xC3
	.byte 0xE1
	.byte  1
	.byte 0x1C
	.byte 0xA0
	.byte 0xE3
	.byte 0x81
	.byte 0x23 
	.byte 0x81
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xD2
	.byte 0xE1
	.byte 0x80
	.byte  0
	.byte 0x13
	.byte 0xE3
	.byte 0x17
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0xB0
	.byte 0x30 
	.byte 0xD2
	.byte 0xE1
	.byte  3
	.byte  0
	.byte 0x13
	.byte 0xE3
	.byte 0xB
	.byte  0
	.byte  0
	.byte 0x1A
	.byte 0xFF
	.byte 0x2C 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xD1
	.byte 0xE1
	.byte 0x9B
	.byte 0x20
	.byte 0x82
	.byte 0xE2
	.byte  2
	.byte  0
	.byte 0x53 
	.byte 0xE1
	.byte 0xE
	.byte  0
	.byte  0
	.byte 0x9A
	.byte 0xB0
	.byte 0x30 
	.byte 0xD1
	.byte 0xE1
	.byte  2
	.byte  0
	.byte 0x53 
	.byte 0xE1
	.word 0x8AFFFFFC
	.byte 0xA
	.byte  0
	.hword 0xEA00
	.word dword_2010CCC
	.word 0x996601EE
	.byte 0xFF
	.byte 0x2C 
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xD1
	.byte 0xE1
	.byte 0xFE
	.byte 0x20
	.byte 0x82
	.byte 0xE2
	.byte  2
	.byte  0
	.byte 0x53 
	.byte 0xE1
	.byte  2
	.byte  0
	.byte  0
	.byte 0x9A
	.byte 0xB0
	.byte 0x30 
	.byte 0xD1
	.byte 0xE1
	.byte  2
	.byte  0
	.byte 0x53 
	.byte 0xE1
	.byte 0xFC, 0xFF
	.byte 0xFF
	.byte 0x8A
	.byte 0x4A 
	.byte 0x1F
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte 0x82
	.byte 0xF
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte  3
	.byte 0x80
	.byte 0xE2
	.byte  5
	.byte 0x3A 
	.byte 0xA0
	.byte 0xE3
	.byte  2
	.byte 0x20
	.byte 0x83
	.byte 0xE2
	.byte 0xB0
	.byte 0x20
	.byte 0xC1
	.byte 0xE1
	.byte 0x82
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC1
	.byte 0xE1
	.byte  1
	.byte 0x20
	.byte 0xA0
	.byte 0xE3
	.byte 0xB0
	.byte 0x20
	.byte 0xC0
	.byte 0xE1
	.byte 0x70 
	.byte 0x68 
	.hword 0xE91B
	.byte 0x1E, 0xFF
	.byte 0x2F 
	.byte 0xE1
	.byte 0xD
	.byte 0xC0
	.byte 0xA0
	.byte 0xE1
	.byte  0
	.byte 0xD8
	.byte 0x2D 
	.byte 0xE9
	.byte 0x4A 
	.byte 0x1F
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte  0
	.byte  8
	.byte 0xA0
	.byte 0xE1
	.byte 0x48 
	.byte 0x20
	.byte 0x9F
	.byte 0xE5
	.byte  4
	.byte 0xB0
	.byte 0x4C 
	.byte 0xE2
	.byte 0x20
	.byte 0xE7
	.byte 0xA0
	.byte 0xE1
	.word 0xE592C000
	.byte 0x10
	.byte 0x30 
	.byte 0xDC
	.byte 0xE5
	.byte 0xFF
	.byte  0
	.byte  3
	.byte 0xE2
	.byte  1
	.byte  0
	.byte 0x50 
	.byte 0xE3
	.byte  6
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0xB0
	.byte 0x30 
	.byte 0xD1
	.byte 0xE1
	.byte  4
	.byte 0x30 
	.byte  3
	.byte 0xE2
	.byte 0xE
	.byte  0
	.byte 0x53 
	.byte 0xE1
	.word 0x1AFFFFF7
	.byte  0
	.byte  0
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
	.byte  0
	.byte 0x20
	.byte 0x92
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0x10
	.byte 0x30 
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
	.word dword_2010CCC
	.byte 0xD
	.byte 0xC0
	.byte 0xA0
	.byte 0xE1
	.byte 0x30 
	.byte 0xD8
	.byte 0x2D 
	.byte 0xE9
	.byte 0x82
	.byte 0x1F
	.byte 0xA0
	.byte 0xE3
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte  0
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  4
	.byte 0xB0
	.byte 0x4C 
	.byte 0xE2
	.byte 0x98
	.byte 0xC0
	.byte 0x9F
	.byte 0xE5
	.byte 0xFF
	.byte 0xE0
	.byte  0
	.byte 0xE2
	.byte  0
	.byte 0x20
	.byte 0x9C
	.byte 0xE5
	.byte 0x50 
	.byte  0
	.byte 0x5E 
	.byte 0xE3
	.byte 0xA
	.byte  0
	.byte 0xD2
	.byte 0xE5
	.byte 0xC
	.byte 0x40 
	.byte 0xA0
	.byte 0xE1
	.byte 0xE
	.byte 0x20
	.byte 0xA0
	.byte 0xE1
	.byte 0xB0
	.byte 0x30 
	.byte 0xC1
	.byte 0xE1
	.byte  0
	.byte  1
	.byte 0xA0
	.byte 0xE1
	.byte  1
	.byte 0x3C 
	.byte 0x83
	.byte 0xE2
	.byte  1
	.byte 0x13
	.byte 0x83
	.byte 0xE2
	.byte 0x81
	.byte 0x33 
	.byte 0x83
	.byte 0xE2
	.byte  3
	.byte 0x50 
	.byte 0x80
	.byte 0xE0
	.byte 0xD
	.byte  0
	.byte  0
	.byte 0xA
	.byte  2
	.byte  0
	.hword 0xCA00
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte 0xE3
	.byte  5
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x1C
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0x64 
	.byte  0
	.byte 0x52 
	.byte 0xE3
	.byte 0xD
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x82
	.byte  0
	.byte 0x52 
	.byte 0xE3
	.byte 0x12
	.byte  0
	.byte  0
	.byte 0xA
	.byte 0x17
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0xCD
	.byte 0x3F 
	.byte 0xE0
	.byte 0xE3
	.byte 0xB1
	.byte 0x30 
	.byte 0x80
	.byte 0xE1
	.byte  0
	.byte 0x20
	.byte 0x94
	.byte 0xE5
	.byte  1
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0x11
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0xAE
	.byte 0x34 
	.byte 0xA0
	.byte 0xE3
	.byte 0x43 
	.byte 0x3A 
	.byte 0xA0
	.byte 0xE1
	.byte 0xB1
	.byte 0x30 
	.byte 0x80
	.byte 0xE1
	.byte  0
	.byte 0x20
	.byte 0x94
	.byte 0xE5
	.byte  2
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0xB
	.byte  0
	.byte  0
	.byte 0xEA
	.byte 0x66 
	.byte 0x3E 
	.byte 0xE0
	.byte 0xE3
	.byte  9
	.byte 0x30 
	.byte 0x43 
	.byte 0xE2
	.byte 0xB1
	.byte 0x30 
	.byte 0x80
	.byte 0xE1
	.byte  0
	.byte 0x20
	.byte 0x94
	.byte 0xE5
	.byte  3
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  5
	.byte  0
	.hword 0xEA00
	.word dword_2010CCC
	.byte 0x85
	.byte 0x3E 
	.byte 0xE0
	.byte 0xE3
	.byte  2
	.byte 0x30 
	.byte 0x43 
	.byte 0xE2
	.byte 0xB1
	.byte 0x30 
	.byte 0x80
	.byte 0xE1
	.byte  0
	.byte 0x20
	.byte 0x94
	.byte 0xE5
	.byte  4
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0xC
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte  2
	.byte 0xCC
	.byte 0xA0
	.byte 0xE3
	.byte 0x81
	.byte 0xC3
	.byte 0x8C
	.byte 0xE2
	.byte 0xC3
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte 0xB0
	.byte 0x30 
	.byte 0xC5
	.byte 0xE1
	.byte 0x82
	.byte 0x1F
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x20
	.byte 0x94
	.byte 0xE5
	.byte  1
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte 0xA
	.byte  0
	.byte 0xD2
	.byte 0xE5
	.byte 0xBB
	.byte 0x30 
	.byte 0x43 
	.byte 0xE2
	.byte 0x13
	.byte 0x30 
	.byte 0xA0
	.byte 0xE1
	.byte 0xB0
	.byte 0x30 
	.byte 0xCC
	.byte 0xE1
	.byte  1
	.byte 0x20
	.byte 0xA0
	.byte 0xE3
	.byte 0xB0
	.byte 0x20
	.byte 0xC1
	.byte 0xE1
	.byte 0x30 
	.byte 0x68 
	.hword 0xE91B
	.byte 0x1E, 0xFF
	.byte 0x2F 
	.byte 0xE1
	.byte 0xD
	.byte 0xC0
	.byte 0xA0
	.byte 0xE1
	.byte  0
	.byte 0xD8
	.byte 0x2D 
	.byte 0xE9
	.byte  1
	.byte 0x1C
	.byte 0xA0
	.byte 0xE3
	.byte 0x38 
	.byte 0xE0
	.byte 0x9F
	.byte 0xE5
	.byte  1
	.byte  3
	.byte 0x81
	.byte 0xE2
	.byte  0
	.byte 0x20
	.byte 0x9E
	.byte 0xE5
	.byte  4
	.byte 0xB0
	.byte 0x4C 
	.byte 0xE2
	.byte 0xA
	.byte 0x30 
	.byte 0xD2
	.byte 0xE5
	.byte 0x0, 0xC0
	.byte 0xA0
	.byte 0xE3
	.byte 0xC
	.byte 0xC0
	.byte 0x82
	.byte 0xE5
	.byte  3
	.byte 0x31 
	.byte 0xA0
	.byte 0xE1
	.byte 0xB0
	.byte 0xC0
	.byte 0x83
	.byte 0xE1
	.byte  0
	.byte 0x20
	.byte 0x9E
	.byte 0xE5
	.byte 0xA
	.byte 0x30 
	.byte 0xD2
	.byte 0xE5
	.byte 0x81
	.byte 0x13
	.byte 0x81
	.byte 0xE2
	.byte  3
	.byte 0x31 
	.byte 0xA0
	.byte 0xE1
	.byte 0xB1
	.byte 0xC0
	.byte 0x83
	.byte 0xE1
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
	.word dword_2010CCC
	.byte 0xD
	.byte 0xC0
	.byte 0xA0
	.byte 0xE1
	.byte  0
	.byte 0xD8
	.byte 0x2D 
	.byte 0xE9
	.byte 0x78 
	.byte  0
	.byte 0x9F
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  5
	.byte 0x30 
	.byte 0xA0
	.byte 0xE3
	.byte  0
	.byte 0x30 
	.byte 0x82
	.byte 0xE5
	.byte  0
	.byte 0x10
	.byte 0xA0
	.byte 0xE3
	.byte 0x14
	.byte 0x10
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  4
	.byte 0x10
	.byte 0xC3
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  5
	.byte 0x10
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  6
	.byte 0x10
	.byte 0xC3
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  7
	.byte 0x10
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte  8
	.byte 0x10
	.byte 0xC3
	.byte 0xE5
	.byte  0
	.byte 0x20
	.byte 0x90
	.byte 0xE5
	.byte  9
	.byte 0x10
	.byte 0xC2
	.byte 0xE5
	.byte  0
	.byte 0x30 
	.byte 0x90
	.byte 0xE5
	.byte 0xC
	.byte 0x10
	.byte 0x83
	.byte 0xE5
	.byte  4
	.byte 0xB0
	.byte 0x4C 
	.byte 0xE2
	.byte 0x10
	.byte 0x10
	.byte 0xC3
	.byte 0xE5
	.byte 0x4A 
	.byte 0x2F 
	.byte 0xA0
	.byte 0xE3
	.byte 0x0, 0xC0
	.byte 0x90
	.byte 0xE5
	.byte  1
	.byte 0x23 
	.byte 0x82
	.byte 0xE2
	.byte 0xB2
	.byte 0x11
	.byte 0xCC
	.byte 0xE1
	.byte  5
	.byte 0x3A 
	.byte 0xA0
	.byte 0xE3
	.byte 0x15
	.byte 0x10
	.byte 0xCC
	.byte 0xE5
	.byte 0x82
	.byte 0x30 
	.byte 0x83
	.byte 0xE2
	.byte 0xB0
	.byte 0x30 
	.byte 0xC2
	.byte 0xE1
	.byte  0
	.byte 0x68 
	.hword 0xE91B
	.word 0xE12FFF1E
off_814D8A4: .word dword_2010CCC
	.word 0xE12FFF12, 0xE12FFF11, 0xE12FFF10
.endfunc // sub_814CE64

.func
.thumb_func
// (u32 *src, u32 *dest, int mode) -> void
SWI_CpuFastSet:
	//   r0    Source address        (must be aligned by 4)
	//   r1    Destination address   (must be aligned by 4)
	//   r2    Length/Mode
	//           Bit 0-20  Wordcount (GBA: rounded-up to multiple of 8 words)
	//           Bit 24    Fixed Source Address (0=Copy, 1=Fill by WORD[r0])
	// Return: No return value, Data written to destination address.
	svc 0xc
	bx lr
.endfunc // SWI_CpuFastSet

.func
.thumb_func
// (void *src, void *dest, int mode) -> void
SWI_CpuSet:
	//   r0    Source address        (must be aligned by 4 for 32bit, by 2 for 16bit)
	//   r1    Destination address   (must be aligned by 4 for 32bit, by 2 for 16bit)
	//   r2    Length/Mode
	//           Bit 0-20  Wordcount (for 32bit), or Halfwordcount (for 16bit)
	//           Bit 24    Fixed Source Address (0=Copy, 1=Fill by {HALF}WORD[r0])
	//           Bit 26    Datasize (0=16bit, 1=32bit)
	// Return: No return value, Data written to destination address.
	svc 0xb
	bx lr
.endfunc // SWI_CpuSet

.func
.thumb_func
SWI_Div:
	// Signed Division, r0/r1.
	//   r0  signed 32bit Number
	//   r1  signed 32bit Denom
	// Return:
	//   r0  Number DIV Denom ;signed
	//   r1  Number MOD Denom ;signed
	//   r3  ABS (Number DIV Denom) ;unsigned
	svc 6
	bx lr
.endfunc // SWI_Div

.func
.thumb_func
SWI_LZ77UnCompReadNormalWrite16bit:
	//   r0  Source address, pointing to data as such:
	//        Data header (32bit)
	//          Bit 0-3   Reserved
	//          Bit 4-7   Compressed type (must be 1 for LZ77)
	//          Bit 8-31  Size of decompressed data
	//        Repeat below. Each Flag Byte followed by eight Blocks.
	//        Flag data (8bit)
	//          Bit 0-7   Type Flags for next 8 Blocks, MSB first
	//        Block Type 0 - Uncompressed - Copy 1 Byte from Source to Dest
	//          Bit 0-7   One data byte to be copied to dest
	//        Block Type 1 - Compressed - Copy N+3 Bytes from Dest-Disp-1 to Dest
	//          Bit 0-3   Disp MSBs
	//          Bit 4-7   Number of bytes to copy (minus 3)
	//          Bit 8-15  Disp LSBs
	//   r1  Destination address
	// Return: No return value.
	svc 0x12
	bx lr
.endfunc // SWI_LZ77UnCompReadNormalWrite16bit

.func
.thumb_func
// (void *src, void *dest) -> void
SWI_LZ77UnCompReadNormalWrite8bit:
	//   r0  Source address, pointing to data as such:
	//        Data header (32bit)
	//          Bit 0-3   Reserved
	//          Bit 4-7   Compressed type (must be 1 for LZ77)
	//          Bit 8-31  Size of decompressed data
	//        Repeat below. Each Flag Byte followed by eight Blocks.
	//        Flag data (8bit)
	//          Bit 0-7   Type Flags for next 8 Blocks, MSB first
	//        Block Type 0 - Uncompressed - Copy 1 Byte from Source to Dest
	//          Bit 0-7   One data byte to be copied to dest
	//        Block Type 1 - Compressed - Copy N+3 Bytes from Dest-Disp-1 to Dest
	//          Bit 0-3   Disp MSBs
	//          Bit 4-7   Number of bytes to copy (minus 3)
	//          Bit 8-15  Disp LSBs
	//   r1  Destination address
	// Return: No return value.
	svc 0x11
	bx lr
.endfunc // SWI_LZ77UnCompReadNormalWrite8bit

.func
.thumb_func
SWI_Sqrt:
	// Calculate square root.
	//   r0   unsigned 32bit number
	// Return:
	//   r0   unsigned 16bit number
	svc 8
	bx lr
word_814D8CC: .hword 0xB510
	.byte  4
	.byte 0x1C
	.byte 0x53 
	.byte 0x1E
	.byte  0
	.byte 0x2A 
	.byte  8
	.byte 0xD0
	.byte  1
	.byte 0x22 
	.byte 0x52 
	.byte 0x42 
	.byte 0x20
	.byte 0x78 
	.byte  8
	.byte 0x70 
	.byte  1
	.byte 0x34 
	.byte  1
	.byte 0x31 
	.byte  1
	.byte 0x3B 
	.byte 0x93
	.byte 0x42 
	.byte 0xF8
	.byte 0xD1
	.byte 0x10
	.byte 0xBC
	.byte  1
	.byte 0xBC
	.byte  0
	.byte 0x47 
	.byte 0, 0
.endfunc // SWI_Sqrt

.func
.thumb_func
sub_814D8F0:
	push {r4-r6,lr}
	sub sp, sp, #0x80
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r2, off_814D91C // =GamePakWaitstateControl 
	ldrh r0, [r2]
	ldr r1, dword_814D920 // =0xFFFC 
	and r0, r1
	mov r1, #3
	orr r0, r1
	strh r0, [r2]
	ldr r3, off_814D924 // =word_814D8CC+1 
	mov r0, #1
	bic r3, r0
	mov r2, sp
	ldr r0, off_814D928 // =sub_814D8F0+1 
	ldr r1, off_814D924 // =word_814D8CC+1 
	sub r0, r0, r1
	lsl r0, r0, #0xf
	b loc_814D938
	.balign 4, 0x00
off_814D91C: .word GamePakWaitstateControl
dword_814D920: .word 0xFFFC
off_814D924: .word word_814D8CC+1
off_814D928: .word sub_814D8F0+1
loc_814D92C:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, #2
	add r2, #2
	sub r0, r1, #1
	lsl r0, r0, #0x10
loc_814D938:
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814D92C
	mov r3, sp
	add r3, #1
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
loc_814D948:
	bl sub_814DA6C
	add sp, sp, #0x80
	pop {r4-r6}
	pop {r0}
	bx r0
.endfunc // sub_814D8F0

.func
.thumb_func
sub_814D954:
	push {r4,r5,lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r2, #0
	ldr r2, off_814D98C // =GamePakWaitstateControl 
	ldrh r0, [r2]
	ldr r1, dword_814D990 // =0xFFFC 
	and r0, r1
	mov r1, #3
	orr r0, r1
	strh r0, [r2]
	sub r3, #1
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	beq loc_814D984
	add r1, r0, #0
loc_814D976:
	ldrb r0, [r5]
	strb r0, [r4]
	add r5, #1
	add r4, #1
	sub r3, #1
	cmp r3, r1
	bne loc_814D976
loc_814D984:
	pop {r4,r5}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814D98C: .word GamePakWaitstateControl
dword_814D990: .word 0xFFFC
word_814D994: .hword 0xB530
	.byte  5
	.byte 0x1C
	.byte 0xB
	.byte 0x1C
	.byte 0x54 
	.byte 0x1E
.endfunc // sub_814D954

	cmp r2, #0
	beq loc_814D9BA
	mov r2, #1
	neg r2, r2
loc_814D9A4:
	ldrb r1, [r3]
	ldrb r0, [r5]
	add r5, #1
	add r3, #1
	cmp r1, r0
	beq loc_814D9B4
	sub r0, r3, #1
	b loc_814D9BC
loc_814D9B4:
	sub r4, #1
	cmp r4, r2
	bne loc_814D9A4
loc_814D9BA:
	mov r0, #0
loc_814D9BC:
	pop {r4,r5}
	pop {r1}
	bx r1
	.balign 4, 0x00
.func
.thumb_func
sub_814D9C4:
	push {r4-r6,lr}
	sub sp, sp, #0xc0
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r2, off_814D9F0 // =GamePakWaitstateControl 
	ldrh r0, [r2]
	ldr r1, dword_814D9F4 // =0xFFFC 
	and r0, r1
	mov r1, #3
	orr r0, r1
	strh r0, [r2]
	ldr r3, off_814D9F8 // =word_814D994+1 
	mov r0, #1
	bic r3, r0
	mov r2, sp
	ldr r0, off_814D9FC // =sub_814D9C4+1 
	ldr r1, off_814D9F8 // =word_814D994+1 
	sub r0, r0, r1
	lsl r0, r0, #0xf
	b loc_814DA0C
	.byte 0, 0
off_814D9F0: .word GamePakWaitstateControl
dword_814D9F4: .word 0xFFFC
off_814D9F8: .word word_814D994+1
off_814D9FC: .word sub_814D9C4+1
loc_814DA00:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, #2
	add r2, #2
	sub r0, r1, #1
	lsl r0, r0, #0x10
loc_814DA0C:
	lsr r1, r0, #0x10
	cmp r1, #0
	bne loc_814DA00
	mov r3, sp
	add r3, #1
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_814DA6C
	add sp, sp, #0xc0
	pop {r4-r6}
	pop {r1}
	bx r1
.endfunc // sub_814D9C4

.func
.thumb_func
sub_814DA28:
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r7, #0
	b loc_814DA3A
loc_814DA34:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
loc_814DA3A:
	cmp r7, #2
	bhi loc_814DA58
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_814D954
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_814D9C4
	add r3, r0, #0
	cmp r3, #0
	bne loc_814DA34
loc_814DA58:
	add r0, r3, #0
	pop {r4-r7}
	pop {r1}
	bx r1
	bx r0
	nop 
.endfunc // sub_814DA28

.func
.thumb_func
sub_814DA64:
	bx r1
	.hword 0x46C0
.endfunc // sub_814DA64

.func
.thumb_func
sub_814DA68:
	bx r2
	nop 
.endfunc // sub_814DA68

.func
.thumb_func
sub_814DA6C:
	bx r3
.endfunc // sub_814DA6C

	nop 
	bx r4
	nop 
	bx r5
	nop 
	bx r6
	nop 
	bx r7
	nop 
	bx r8
	nop 
	bx r9
	nop 
	bx r10
	nop 
	bx r11
	nop 
	bx r12
	nop 
	bx sp
	nop 
	bx lr
	nop 
.func
.thumb_func
sub_814DA9C:
	cmp r1, #0
	beq loc_814DB24
	push {r4}
	add r4, r0, #0
	eor r4, r1
	mov r12, r4
	mov r3, #1
	mov r2, #0
	cmp r1, #0
	bpl loc_814DAB2
	neg r1, r1
loc_814DAB2:
	cmp r0, #0
	bpl loc_814DAB8
	neg r0, r0
loc_814DAB8:
	cmp r0, r1
	bcc loc_814DB16
	mov r4, #1
	lsl r4, r4, #0x1c
loc_814DAC0:
	cmp r1, r4
	bcs loc_814DACE
	cmp r1, r0
	bcs loc_814DACE
	lsl r1, r1, #4
	lsl r3, r3, #4
	b loc_814DAC0
loc_814DACE:
	lsl r4, r4, #3
loc_814DAD0:
	cmp r1, r4
	bcs loc_814DADE
	cmp r1, r0
	bcs loc_814DADE
	lsl r1, r1, #1
	lsl r3, r3, #1
	b loc_814DAD0
loc_814DADE:
	cmp r0, r1
	bcc loc_814DAE6
	sub r0, r0, r1
	orr r2, r3
loc_814DAE6:
	lsr r4, r1, #1
	cmp r0, r4
	bcc loc_814DAF2
	sub r0, r0, r4
	lsr r4, r3, #1
	orr r2, r4
loc_814DAF2:
	lsr r4, r1, #2
	cmp r0, r4
	bcc loc_814DAFE
	sub r0, r0, r4
	lsr r4, r3, #2
	orr r2, r4
loc_814DAFE:
	lsr r4, r1, #3
	cmp r0, r4
	bcc loc_814DB0A
	sub r0, r0, r4
	lsr r4, r3, #3
	orr r2, r4
loc_814DB0A:
	cmp r0, #0
	beq loc_814DB16
	lsr r3, r3, #4
	beq loc_814DB16
	lsr r1, r1, #4
	b loc_814DADE
loc_814DB16:
	add r0, r2, #0
	mov r4, r12
	cmp r4, #0
	bpl loc_814DB20
	neg r0, r0
loc_814DB20:
	pop {r4}
	mov pc, lr
loc_814DB24:
	push {lr}
loc_814DB26:
	bl nullsub_1
	mov r0, #0
	pop {pc}
	.byte 0, 0
.endfunc // sub_814DA9C

.func
.thumb_func
nullsub_1:
	mov pc, lr
	.byte  0
	.byte  0
.endfunc // nullsub_1

.func
.thumb_func
sub_814DB34:
	cmp r1, #0
	beq loc_814DBEA
	mov r3, #1
	cmp r0, r1
	bcs loc_814DB40
	mov pc, lr
loc_814DB40:
	push {r4}
	mov r4, #1
	lsl r4, r4, #0x1c
loc_814DB46:
	cmp r1, r4
	bcs loc_814DB54
	cmp r1, r0
	bcs loc_814DB54
	lsl r1, r1, #4
	lsl r3, r3, #4
	b loc_814DB46
loc_814DB54:
	lsl r4, r4, #3
loc_814DB56:
	cmp r1, r4
	bcs loc_814DB64
	cmp r1, r0
	bcs loc_814DB64
	lsl r1, r1, #1
	lsl r3, r3, #1
	b loc_814DB56
loc_814DB64:
	mov r2, #0
	cmp r0, r1
	bcc loc_814DB6C
	sub r0, r0, r1
loc_814DB6C:
	lsr r4, r1, #1
	cmp r0, r4
	bcc loc_814DB7E
	sub r0, r0, r4
	mov r12, r3
	mov r4, #1
	ror r3, r4
	orr r2, r3
	mov r3, r12
loc_814DB7E:
	lsr r4, r1, #2
	cmp r0, r4
	bcc loc_814DB90
	sub r0, r0, r4
	mov r12, r3
	mov r4, #2
	ror r3, r4
	orr r2, r3
	mov r3, r12
loc_814DB90:
	lsr r4, r1, #3
	cmp r0, r4
	bcc loc_814DBA2
	sub r0, r0, r4
	mov r12, r3
	mov r4, #3
	ror r3, r4
	orr r2, r3
	mov r3, r12
loc_814DBA2:
	mov r12, r3
	cmp r0, #0
	beq loc_814DBB0
	lsr r3, r3, #4
	beq loc_814DBB0
	lsr r1, r1, #4
	b loc_814DB64
loc_814DBB0:
	mov r4, #0xe
	lsl r4, r4, #0x1c
	and r2, r4
	bne loc_814DBBC
	pop {r4}
	mov pc, lr
loc_814DBBC:
	mov r3, r12
	mov r4, #3
	ror r3, r4
	tst r2, r3
	beq loc_814DBCA
	lsr r4, r1, #3
	add r0, r0, r4
loc_814DBCA:
	mov r3, r12
	mov r4, #2
	ror r3, r4
	tst r2, r3
	beq loc_814DBD8
	lsr r4, r1, #2
	add r0, r0, r4
loc_814DBD8:
	mov r3, r12
	mov r4, #1
	ror r3, r4
	tst r2, r3
	beq loc_814DBE6
	lsr r4, r1, #1
	add r0, r0, r4
loc_814DBE6:
	pop {r4}
	mov pc, lr
loc_814DBEA:
	push {lr}
	bl nullsub_1
	mov r0, #0
	pop {pc}
dword_814DBF4: .word 0x4710A200
	.word 0xE0832190
	.word 0xE2830000
	.word 0xE12FFF1E
.endfunc // sub_814DB34

.func
.thumb_func
sub_814DC04:
	ldr r0, off_814DC70 // =unk_3007FF0 
	ldr r0, [r0]
	ldr r2, dword_814DC74 // =0x68736D53 
	ldr r3, [r0]
	cmp r2, r3
	beq loc_814DC12
	bx lr
loc_814DC12:
	add r3, #1
	str r3, [r0]
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r10
	mov r4, r11
	push {r0-r4}
	sub sp, sp, #0x18
	ldrb r1, [r0,#0xc]
	cmp r1, #0
	beq loc_814DC36
	ldr r2, off_814DC7C // =VerticalCounter_LY_ 
	ldrb r2, [r2]
	cmp r2, #0xa0
	bcs loc_814DC34
	add r2, #0xe4
loc_814DC34:
	add r1, r1, r2
loc_814DC36:
	str r1, [sp,#0x14]
	ldr r3, [r0,#0x20]
	cmp r3, #0
	beq loc_814DC46
	ldr r0, [r0,#0x24]
loc_814DC40:
	bl locret_814E026
	ldr r0, [sp,#0x18]
loc_814DC46:
	ldr r3, [r0,#0x28]
loc_814DC48:
	bl locret_814E026
	ldr r0, [sp,#0x18]
	ldr r3, [r0,#0x10]
	mov r8, r3
	ldr r5, off_814DC80 // =0x350 
	add r5, r5, r0
	ldrb r4, [r0,#4]
	sub r7, r4, #1
	bls loc_814DC66
	ldrb r1, [r0,#0xb]
	sub r1, r1, r7
	mov r2, r8
	mul r2, r1
	add r5, r5, r2
loc_814DC66:
	str r5, [sp,#8]
	ldr r6, m4a_814DC84 // =0x630 
	ldr r3, off_814DC78 // =loc_3005700+1 
	bx r3
	.balign 4, 0
off_814DC70: .word unk_3007FF0
dword_814DC74: .word 0x68736D53
off_814DC78: .word loc_3005700+1
off_814DC7C: .word VerticalCounter_LY_
off_814DC80: .word 0x350
.endfunc // sub_814DC04

.func
.thumb_func
m4a_814DC84:
	lsl r0, r6, #0x18
	// <mkdata>
	.hword 0x0 // mov r0, r0
loc_814DC88:
	ldrb r3, [r0,#5]
	cmp r3, #0
	beq sub_814DCE8
	adr r1, sub_814DC94
	bx r1
	.balign 4, 0x00
.endfunc // m4a_814DC84

.func
.arm
sub_814DC94:
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
loc_814DCA4:
	ldrsb r0, [r5,r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7,r6]
	add r0, r0, r1
	ldrsb r1, [r7],#1
	add r0, r0, r1
	mul r1, r0, r3
	mov r0, r1,asr#9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5,r6]
	strb r0, [r5],#1
	subs r4, r4, #1
	bgt loc_814DCA4
	adr r0, (loc_814DD16+1)
	bx r0
.endfunc // sub_814DC94

.func
.thumb_func
sub_814DCE8:
	mov r0, #0
	mov r1, r8
	add r6, r6, r5
	lsr r1, r1, #3
	bcc loc_814DCF6
	stmia r5!, {r0}
	stmia r6!, {r0}
loc_814DCF6:
	lsr r1, r1, #1
	bcc loc_814DD02
	stmia r5!, {r0}
	stmia r6!, {r0}
	stmia r5!, {r0}
loc_814DD00:
	stmia r6!, {r0}
loc_814DD02:
	stmia r5!, {r0}
	stmia r6!, {r0}
	stmia r5!, {r0}
	stmia r6!, {r0}
	stmia r5!, {r0}
	stmia r6!, {r0}
	stmia r5!, {r0}
	stmia r6!, {r0}
	sub r1, #1
loc_814DD14:
	bgt loc_814DD02
loc_814DD16:
	ldr r4, [sp,#0x18]
	ldr r0, [r4,#0x18]
	mov r12, r0
	ldrb r0, [r4,#6]
	add r4, #0x50 
loc_814DD20:
	str r0, [sp,#4]
	ldr r3, [r4,#0x24]
	ldr r0, [sp,#0x14]
	cmp r0, #0
	beq loc_814DD40
	ldr r1, off_814DD3C // =VerticalCounter_LY_ 
	ldrb r1, [r1]
	cmp r1, #0xa0
	bcs loc_814DD34
	add r1, #0xe4
loc_814DD34:
	cmp r1, r0
	bcc loc_814DD40
	b loc_814E012
	.balign 4, 0x00
off_814DD3C: .word VerticalCounter_LY_
loc_814DD40:
	ldrb r6, [r4]
	mov r0, #0xc7
	tst r0, r6
	bne loc_814DD4A
	b sub_814E008
loc_814DD4A:
	mov r0, #0x80
	tst r0, r6
	beq loc_814DD7A
	mov r0, #0x40 
	tst r0, r6
	bne loc_814DD8A
	mov r6, #3
	strb r6, [r4]
	add r0, r3, #0
	add r0, #0x10
	str r0, [r4,#0x28]
	ldr r0, [r3,#0xc]
	str r0, [r4,#0x18]
	mov r5, #0
	strb r5, [r4,#9]
	str r5, [r4,#0x1c]
	ldrb r2, [r3,#3]
	mov r0, #0xc0
	tst r0, r2
	beq loc_814DDD2
	mov r0, #0x10
	orr r6, r0
	strb r6, [r4]
	b loc_814DDD2
loc_814DD7A:
	ldrb r5, [r4,#9]
	mov r0, #4
	tst r0, r6
	beq loc_814DD90
	ldrb r0, [r4,#0xd]
	sub r0, #1
	strb r0, [r4,#0xd]
	bhi loc_814DDE0
loc_814DD8A:
	mov r0, #0
	strb r0, [r4]
	b sub_814E008
loc_814DD90:
	mov r0, #0x40 
	tst r0, r6
	beq loc_814DDB0
	ldrb r0, [r4,#7]
	mul r5, r0
	lsr r5, r5, #8
	ldrb r0, [r4,#0xc]
	cmp r5, r0
	bhi loc_814DDE0
loc_814DDA2:
	ldrb r5, [r4,#0xc]
	cmp r5, #0
	beq loc_814DD8A
	mov r0, #4
	orr r6, r0
	strb r6, [r4]
	b loc_814DDE0
loc_814DDB0:
	mov r2, #3
	and r2, r6
	cmp r2, #2
	bne loc_814DDCE
	ldrb r0, [r4,#5]
	mul r5, r0
	lsr r5, r5, #8
	ldrb r0, [r4,#6]
	cmp r5, r0
	bhi loc_814DDE0
	add r5, r0, #0
	beq loc_814DDA2
	sub r6, #1
	strb r6, [r4]
	b loc_814DDE0
loc_814DDCE:
	cmp r2, #3
	bne loc_814DDE0
loc_814DDD2:
	ldrb r0, [r4,#4]
	add r5, r5, r0
	cmp r5, #0xff
	bcc loc_814DDE0
	mov r5, #0xff
	sub r6, #1
	strb r6, [r4]
loc_814DDE0:
	strb r5, [r4,#9]
	ldr r0, [sp,#0x18]
	ldrb r0, [r0,#7]
	add r0, #1
	mul r0, r5
	lsr r5, r0, #4
	ldrb r0, [r4,#2]
	mul r0, r5
	lsr r0, r0, #8
	strb r0, [r4,#0xa]
	ldrb r0, [r4,#3]
	mul r0, r5
	lsr r0, r0, #8
	strb r0, [r4,#0xb]
	mov r0, #0x10
	and r0, r6
	str r0, [sp,#0x10]
	beq loc_814DE14
	add r0, r3, #0
	add r0, #0x10
	ldr r1, [r3,#8]
	add r0, r0, r1
	str r0, [sp,#0xc]
	ldr r0, [r3,#0xc]
	sub r0, r0, r1
	str r0, [sp,#0x10]
loc_814DE14:
	ldr r5, [sp,#8]
	ldr r2, [r4,#0x18]
	ldr r3, [r4,#0x28]
	adr r0, sub_814DE20
	bx r0
	.byte 0, 0
.endfunc // sub_814DCE8

.func
.arm
sub_814DE20:
	str r8, [sp]
	ldrb r10, [r4,#0xa]
	ldrb r11, [r4,#0xb]
	mov r10, r10,lsl#16
	mov r11, r11,lsl#16
	ldrb r0, [r4,#1]
	tst r0, #8
	beq loc_814DF60
loc_814DE40:
	cmp r2, #4
	ble loc_814DEB0
	subs r2, r2, r8
	movgt lr, #0
	bgt loc_814DE6C
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
loc_814DE6C:
	ldr r6, [r5]
	ldr r7, [r5,#0x630]
loc_814DE74:
	ldrsb r0, [r3],#1
	mul r1, r10, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6,ror#8
	mul r1, r11, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7,ror#8
	adds r5, r5, #0x40000000
	bcc loc_814DE74
	str r7, [r5,#0x630]
	str r6, [r5],#4
	subs r8, r8, #4
	bgt loc_814DE6C
	adds r8, r8, lr
	beq loc_814DFF4
loc_814DEB0:
	ldr r6, [r5]
	ldr r7, [r5,#0x630]
loc_814DEB8:
	ldrsb r0, [r3],#1
	mul r1, r10, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6,ror#8
	mul r1, r11, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7,ror#8
	subs r2, r2, #1
	beq loc_814DF28
loc_814DEDC:
	adds r5, r5, #0x40000000
	bcc loc_814DEB8
	str r7, [r5,#0x630]
	str r6, [r5],#4
	subs r8, r8, #4
	bgt loc_814DE40
	b loc_814DFF4
loc_814DEF8:
	ldr r0, [sp,#0x18]
	cmp r0, #0
	beq loc_814DF1C
	ldr r3, [sp,#0x14]
	rsb r9, r2, #0
loc_814DF0C:
	adds r2, r0, r2
	bgt loc_814DFC4
	sub r9, r9, r0
	b loc_814DF0C
loc_814DF1C:
	ldmfd sp!, {r4,r12}
	mov r2, #0
	b loc_814DF38
loc_814DF28:
	ldr r2, [sp,#0x10]
	cmp r2, #0
	ldrne r3, [sp,#0xc]
	bne loc_814DEDC
loc_814DF38:
	strb r2, [r4]
	mov r0, r5,lsr#30
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	mov r0, r0,lsl#3
	mov r6, r6,ror r0
	mov r7, r7,ror r0
	str r7, [r5,#0x630]
	str r6, [r5],#4
	b loc_814DFFC
loc_814DF60:
	stmfd sp!, {r4,r12}
	ldr lr, [r4,#0x1c]
	ldr r1, [r4,#0x20]
	mul r4, r12, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3,#1]!
	sub r1, r1, r0
loc_814DF7C:
	ldr r6, [r5]
	ldr r7, [r5,#0x630]
loc_814DF84:
	mul r9, lr, r1
	add r9, r0, r9,asr#23
	mul r12, r10, r9
	bic r12, r12, #0xff0000
	add r6, r12, r6,ror#8
	mul r12, r11, r9
	bic r12, r12, #0xff0000
	add r7, r12, r7,ror#8
	add lr, lr, r4
	movs r9, lr,lsr#23
	beq loc_814DFD0
	bic lr, lr, #0x3f800000
	subs r2, r2, r9
	ble loc_814DEF8
	subs r9, r9, #1
	addeq r0, r0, r1
loc_814DFC4:
	ldrnesb r0, [r3,r9]!
	ldrsb r1, [r3,#1]!
	sub r1, r1, r0
loc_814DFD0:
	adds r5, r5, #0x40000000
	bcc loc_814DF84
	str r7, [r5,#0x630]
	str r6, [r5],#4
	subs r8, r8, #4
	bgt loc_814DF7C
	sub r3, r3, #1
	ldmfd sp!, {r4,r12}
	str lr, [r4,#0x1c]
loc_814DFF4:
	str r2, [r4,#0x18]
	str r3, [r4,#0x28]
loc_814DFFC:
	ldr r8, [sp]
	adr r0, (sub_814E008+1)
	bx r0
.endfunc // sub_814DE20

.func
.thumb_func
sub_814E008:
	ldr r0, [sp,#4]
	sub r0, #1
	ble loc_814E012
	add r4, #0x40 
	b loc_814DD20
loc_814E012:
	ldr r0, [sp,#0x18]
	ldr r3, byte_814E028 // =0x53 
	str r3, [r0]
	add sp, sp, #0x1c
	pop {r0-r7}
	mov r8, r0
	mov r9, r1
	mov r10, r2
	mov r11, r3
	pop {r3}
locret_814E026:
	bx r3
byte_814E028: .byte 0x53, 0x6D, 0x73, 0x68, 0xA4
byte_814E02D: .byte 0x46, 0x0, 0x21, 0x0, 0x22, 0x0, 0x23, 0x0, 0x24, 0x1E, 0xC0
	.byte 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x64, 0x46, 0x70, 0x47, 0x0
	.byte 0x0
.endfunc // sub_814E008

.func
.thumb_func
sub_814E044:
	ldr r3, [r0,#0x2c]
	cmp r3, #0
	beq locret_814E062
	ldr r1, [r0,#0x34]
	ldr r2, [r0,#0x30]
	cmp r2, #0
	beq loc_814E056
	str r1, [r2,#0x34]
	b loc_814E058
loc_814E056:
	str r1, [r3,#0x20]
loc_814E058:
	cmp r1, #0
	beq loc_814E05E
	str r2, [r1,#0x30]
loc_814E05E:
	mov r1, #0
	str r1, [r0,#0x2c]
locret_814E062:
	bx lr
.endfunc // sub_814E044

.func
.thumb_func
sub_814E064:
	push {r4,r5,lr}
	add r5, r1, #0
	ldr r4, [r5,#0x20]
	cmp r4, #0
	beq loc_814E092
loc_814E06E:
	ldrb r1, [r4]
	mov r0, #0xc7
	tst r0, r1
	beq loc_814E07C
	mov r0, #0x40 
	orr r1, r0
	strb r1, [r4]
loc_814E07C:
	add r0, r4, #0
	bl sub_814E044
	ldr r1, [r4,#0x34]
	cmp r1, r4
	bne loc_814E08C
	mov r1, #0
	str r1, [r4,#0x34]
loc_814E08C:
	add r4, r1, #0
	cmp r4, #0
	bne loc_814E06E
loc_814E092:
	mov r0, #0
	strb r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
.endfunc // sub_814E064

.func
.thumb_func
sub_814E09C:
	mov r12, lr
	mov r1, #0x24 
	ldr r2, off_814E0CC // =off_81C0418 
loc_814E0A2:
	ldr r3, [r2]
	bl sub_814E0B6
	stmia r0!, {r3}
	add r2, #4
	sub r1, #1
	bgt loc_814E0A2
	bx r12
	.balign 4, 0x00
.endfunc // sub_814E09C

.func
.thumb_func
sub_814E0B4:
	ldrb r3, [r2]
.endfunc // sub_814E0B4

.func
.thumb_func
sub_814E0B6:
	push {r0}
	lsr r0, r2, #0x19
	bne loc_814E0C8
	ldr r0, off_814E0CC // =off_81C0418 
	cmp r2, r0
	bcc loc_814E0C6
	lsr r0, r2, #0xe
	beq loc_814E0C8
loc_814E0C6:
	mov r3, #0
loc_814E0C8:
	pop {r0}
	bx lr
off_814E0CC: .word off_81C0418
.endfunc // sub_814E0B6

.func
.thumb_func
sub_814E0D0:
	ldr r2, [r1,#0x40]
loc_814E0D2:
	add r3, r2, #1
	str r3, [r1,#0x40]
	ldrb r3, [r2]
	b sub_814E0B6
	.balign 4, 0x00
.endfunc // sub_814E0D0

.func
.thumb_func
sub_814E0DC:
	push {lr}
loc_814E0DE:
	ldr r2, [r1,#0x40]
	ldrb r0, [r2,#3]
	lsl r0, r0, #8
	ldrb r3, [r2,#2]
	orr r0, r3
	lsl r0, r0, #8
	ldrb r3, [r2,#1]
	orr r0, r3
	lsl r0, r0, #8
	bl sub_814E0B4
	orr r0, r3
	str r0, [r1,#0x40]
	pop {r0}
	bx r0
.endfunc // sub_814E0DC

.func
.thumb_func
sub_814E0FC:
	ldrb r2, [r1,#2]
	cmp r2, #3
	bcs loc_814E114
	lsl r2, r2, #2
	add r3, r1, r2
	ldr r2, [r1,#0x40]
	add r2, #4
	str r2, [r3,#0x44]
	ldrb r2, [r1,#2]
	add r2, #1
	strb r2, [r1,#2]
	b sub_814E0DC
loc_814E114:
	b sub_814E064
	.balign 4, 0x00
.endfunc // sub_814E0FC

.func
.thumb_func
sub_814E118:
	ldrb r2, [r1,#2]
	cmp r2, #0
	beq locret_814E12A
	sub r2, #1
	strb r2, [r1,#2]
	lsl r2, r2, #2
	add r3, r1, r2
	ldr r2, [r3,#0x44]
	str r2, [r1,#0x40]
locret_814E12A:
	bx lr
.endfunc // sub_814E118

.func
.thumb_func
sub_814E12C:
	push {lr}
	ldr r2, [r1,#0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne loc_814E13C
	add r2, #1
	str r2, [r1,#0x40]
	b loc_814E0DE
loc_814E13C:
	ldrb r3, [r1,#3]
	add r3, #1
	strb r3, [r1,#3]
	mov r12, r3
	bl sub_814E0D0
	cmp r12, r3
	bcs loc_814E14E
	b loc_814E0DE
loc_814E14E:
	mov r3, #0
	strb r3, [r1,#3]
	add r2, #5
	str r2, [r1,#0x40]
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814E12C

.func
.thumb_func
sub_814E15C:
	mov r12, lr
	bl sub_814E0D0
	strb r3, [r1,#0x1d]
	bx r12
	.balign 4, 0x00
.endfunc // sub_814E15C

.func
.thumb_func
sub_814E168:
	mov r12, lr
	bl sub_814E0D0
	lsl r3, r3, #1
	strh r3, [r0,#0x1c]
	ldrh r2, [r0,#0x1e]
	mul r3, r2
	lsr r3, r3, #8
	strh r3, [r0,#0x20]
	bx r12
.endfunc // sub_814E168

.func
.thumb_func
sub_814E17C:
	mov r12, lr
	bl sub_814E0D0
	strb r3, [r1,#0xa]
	ldrb r3, [r1]
	mov r2, #0xc
	orr r3, r2
	strb r3, [r1]
	bx r12
	.byte 0, 0
.endfunc // sub_814E17C

.func
.thumb_func
sub_814E190:
	mov r12, lr
	ldr r2, [r1,#0x40]
	ldrb r3, [r2]
	add r2, #1
	str r2, [r1,#0x40]
	lsl r2, r3, #1
	add r2, r2, r3
	lsl r2, r2, #2
	ldr r3, [r0,#0x30]
	add r2, r2, r3
	ldr r3, [r2]
	bl sub_814E0B6
	str r3, [r1,#0x24]
	ldr r3, [r2,#4]
	bl sub_814E0B6
	str r3, [r1,#0x28]
	ldr r3, [r2,#8]
	bl sub_814E0B6
	str r3, [r1,#0x2c]
	bx r12
	.byte 0, 0
.endfunc // sub_814E190

.func
.thumb_func
sub_814E1C0:
	mov r12, lr
	bl sub_814E0D0
	strb r3, [r1,#0x12]
	ldrb r3, [r1]
	mov r2, #3
	orr r3, r2
	strb r3, [r1]
	bx r12
	.balign 4, 0x00
.endfunc // sub_814E1C0

.func
.thumb_func
sub_814E1D4:
	mov r12, lr
	bl sub_814E0D0
	sub r3, #0x40 
	strb r3, [r1,#0x14]
	ldrb r3, [r1]
	mov r2, #3
	orr r3, r2
	strb r3, [r1]
	bx r12
.endfunc // sub_814E1D4

.func
.thumb_func
sub_814E1E8:
	mov r12, lr
	bl sub_814E0D0
	sub r3, #0x40 
	strb r3, [r1,#0xe]
	ldrb r3, [r1]
	mov r2, #0xc
	orr r3, r2
	strb r3, [r1]
	bx r12
.endfunc // sub_814E1E8

.func
.thumb_func
sub_814E1FC:
	mov r12, lr
	bl sub_814E0D0
	strb r3, [r1,#0xf]
	ldrb r3, [r1]
	mov r2, #0xc
	orr r3, r2
	strb r3, [r1]
	bx r12
	.byte 0, 0
.endfunc // sub_814E1FC

.func
.thumb_func
sub_814E210:
	mov r12, lr
	bl sub_814E0D0
	strb r3, [r1,#0x1b]
	bx r12
	.balign 4, 0x00
.endfunc // sub_814E210

.func
.thumb_func
sub_814E21C:
	mov r12, lr
	bl sub_814E0D0
	ldrb r0, [r1,#0x18]
	cmp r0, r3
	beq loc_814E232
	strb r3, [r1,#0x18]
	ldrb r3, [r1]
	mov r2, #0xf
	orr r3, r2
	strb r3, [r1]
loc_814E232:
	bx r12
.endfunc // sub_814E21C

.func
.thumb_func
sub_814E234:
	mov r12, lr
	bl sub_814E0D0
	sub r3, #0x40 
	strb r3, [r1,#0xc]
	ldrb r3, [r1]
	mov r2, #0xc
	orr r3, r2
	strb r3, [r1]
	bx r12
.endfunc // sub_814E234

.func
.thumb_func
sub_814E248:
	mov r12, lr
	ldr r2, [r1,#0x40]
	ldrb r3, [r2]
	add r2, #1
	ldr r0, off_814E25C // =Channel1Sweepregister_NR10_ 
	add r0, r0, r3
	bl loc_814E0D2
	.byte  3
	.byte 0x70 
	.byte 0x60 
	.byte 0x47 
off_814E25C: .word Channel1Sweepregister_NR10_
.endfunc // sub_814E248

.func
.thumb_func
sub_814E260:
	ldr r2, dword_814E4D8 // =0x68736D53 
	ldr r3, [r0,#0x34]
	cmp r2, r3
	beq loc_814E26A
	bx lr
loc_814E26A:
	add r3, #1
	str r3, [r0,#0x34]
	push {r0,lr}
	ldr r3, [r0,#0x38]
	cmp r3, #0
	beq loc_814E27C
	ldr r0, [r0,#0x3c]
	bl sub_814E4CC
loc_814E27C:
	pop {r0}
	push {r4-r7}
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r11
	push {r4-r7}
	add r7, r0, #0
	ldr r0, [r7,#4]
	cmp r0, #0
	bge loc_814E294
	b loc_814E4BC
loc_814E294:
	ldr r0, off_814E4D4 // =unk_3007FF0 
	ldr r0, [r0]
	mov r8, r0
	add r0, r7, #0
	bl sub_814F228
	ldr r0, [r7,#4]
	cmp r0, #0
	bge loc_814E2A8
	b loc_814E4BC
loc_814E2A8:
	ldrh r0, [r7,#0x22]
	ldrh r1, [r7,#0x20]
	add r0, r0, r1
	b loc_814E402
loc_814E2B0:
	ldrb r6, [r7,#8]
	ldr r5, [r7,#0x2c]
	mov r3, #1
	mov r4, #0
loc_814E2B8:
	ldrb r0, [r5]
	mov r1, #0x80
	tst r1, r0
	bne loc_814E2C2
	b loc_814E3DE
loc_814E2C2:
	mov r10, r3
	orr r4, r3
	mov r11, r4
	ldr r4, [r5,#0x20]
	cmp r4, #0
	beq loc_814E300
loc_814E2CE:
	ldrb r1, [r4]
	mov r0, #0xc7
	tst r0, r1
	beq loc_814E2EA
	ldrb r0, [r4,#0x10]
	cmp r0, #0
	beq loc_814E2F0
	sub r0, #1
	strb r0, [r4,#0x10]
	bne loc_814E2F0
	mov r0, #0x40 
	orr r1, r0
	strb r1, [r4]
	b loc_814E2F0
loc_814E2EA:
	add r0, r4, #0
loc_814E2EC:
	bl sub_814ECA0
loc_814E2F0:
	ldr r1, [r4,#0x34]
	cmp r1, r4
	bne loc_814E2FA
	mov r1, #0
	str r1, [r4,#0x34]
loc_814E2FA:
	add r4, r1, #0
	cmp r4, #0
	bne loc_814E2CE
loc_814E300:
	ldrb r3, [r5]
	mov r0, #0x40 
	tst r0, r3
	beq loc_814E37E
	add r0, r5, #0
	bl sub_814ECB4
	mov r0, #0x80
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5,#0xf]
	mov r0, #0x40 
	strb r0, [r5,#0x13]
	mov r0, #0x16
	strb r0, [r5,#0x19]
	mov r0, #1
	add r1, r5, #6
	strb r0, [r1,#0x1e]
	b loc_814E37E
loc_814E326:
	ldr r2, [r5,#0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bcs loc_814E332
	ldrb r1, [r5,#7]
	b loc_814E33C
loc_814E332:
	add r2, #1
	str r2, [r5,#0x40]
	cmp r1, #0xbd
	bcc loc_814E33C
	strb r1, [r5,#7]
loc_814E33C:
	cmp r1, #0xcf
	bcc loc_814E352
	mov r0, r8
	ldr r3, [r0,#0x38]
	add r0, r1, #0
	sub r0, #0xcf
	add r1, r7, #0
	add r2, r5, #0
	bl sub_814E4CC
	b loc_814E37E
loc_814E352:
	cmp r1, #0xb0
	bls loc_814E374
	add r0, r1, #0
	sub r0, #0xb1
	strb r0, [r7,#0xa]
	mov r3, r8
	ldr r3, [r3,#0x34]
	lsl r0, r0, #2
	ldr r3, [r3,r0]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_814E4CC
	ldrb r0, [r5]
	cmp r0, #0
	beq loc_814E3DA
	b loc_814E37E
loc_814E374:
	ldr r0, off_814E4D0 // =unk_81C068C 
	sub r1, #0x80
	add r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5,#1]
loc_814E37E:
	ldrb r0, [r5,#1]
	cmp r0, #0
	beq loc_814E326
	sub r0, #1
	strb r0, [r5,#1]
	ldrb r1, [r5,#0x19]
	cmp r1, #0
	beq loc_814E3DA
	ldrb r0, [r5,#0x17]
	cmp r0, #0
	beq loc_814E3DA
	ldrb r0, [r5,#0x1c]
	cmp r0, #0
	beq loc_814E3A0
	sub r0, #1
	strb r0, [r5,#0x1c]
	b loc_814E3DA
loc_814E3A0:
	ldrb r0, [r5,#0x1a]
	add r0, r0, r1
	strb r0, [r5,#0x1a]
	add r1, r0, #0
	sub r0, #0x40 
	lsl r0, r0, #0x18
	bpl loc_814E3B4
	lsl r2, r1, #0x18
	asr r2, r2, #0x18
	b loc_814E3B8
loc_814E3B4:
	mov r0, #0x80
	sub r2, r0, r1
loc_814E3B8:
	ldrb r0, [r5,#0x17]
	mul r0, r2
	asr r2, r0, #6
	ldrb r0, [r5,#0x16]
	eor r0, r2
	lsl r0, r0, #0x18
	beq loc_814E3DA
	strb r2, [r5,#0x16]
	ldrb r0, [r5]
	ldrb r1, [r5,#0x18]
	cmp r1, #0
	bne loc_814E3D4
	mov r1, #0xc
	b loc_814E3D6
loc_814E3D4:
	mov r1, #3
loc_814E3D6:
	orr r0, r1
	strb r0, [r5]
loc_814E3DA:
	mov r3, r10
	mov r4, r11
loc_814E3DE:
	sub r6, #1
	ble loc_814E3EA
	mov r0, #0x50 
	add r5, r5, r0
	lsl r3, r3, #1
	b loc_814E2B8
loc_814E3EA:
	ldr r0, [r7,#0xc]
	add r0, #1
	str r0, [r7,#0xc]
	cmp r4, #0
	bne loc_814E3FC
	mov r0, #0x80
	lsl r0, r0, #0x18
	str r0, [r7,#4]
	b loc_814E4BC
loc_814E3FC:
	str r4, [r7,#4]
	ldrh r0, [r7,#0x22]
	sub r0, #0x96
loc_814E402:
	strh r0, [r7,#0x22]
	cmp r0, #0x96
	bcc loc_814E40A
	b loc_814E2B0
loc_814E40A:
	ldrb r2, [r7,#8]
	ldr r5, [r7,#0x2c]
loc_814E40E:
	ldrb r0, [r5]
	mov r1, #0x80
	tst r1, r0
	beq loc_814E4B2
	mov r1, #0xf
	tst r1, r0
	beq loc_814E4B2
	mov r9, r2
	add r0, r7, #0
	add r1, r5, #0
	bl sub_814F2F0
	ldr r4, [r5,#0x20]
	cmp r4, #0
	beq loc_814E4A8
loc_814E42C:
	ldrb r1, [r4]
	mov r0, #0xc7
	tst r0, r1
	bne loc_814E43C
	add r0, r4, #0
	bl sub_814ECA0
	b loc_814E498
loc_814E43C:
	ldrb r0, [r4,#1]
	mov r6, #7
	and r6, r0
	ldrb r3, [r5]
	mov r0, #3
	tst r0, r3
	beq loc_814E45A
	bl sub_814E528
	cmp r6, #0
	beq loc_814E45A
	ldrb r0, [r4,#0x1d]
	mov r1, #1
	orr r0, r1
	strb r0, [r4,#0x1d]
loc_814E45A:
	ldrb r3, [r5]
	mov r0, #0xc
	tst r0, r3
	beq loc_814E498
	ldrb r1, [r4,#8]
	mov r0, #8
	ldrsb r0, [r5,r0]
	add r2, r1, r0
	bpl loc_814E46E
	mov r2, #0
loc_814E46E:
	cmp r6, #0
	beq loc_814E48C
	mov r0, r8
	ldr r3, [r0,#0x30]
	add r1, r2, #0
	ldrb r2, [r5,#9]
	add r0, r6, #0
	bl sub_814E4CC
	str r0, [r4,#0x20]
	ldrb r0, [r4,#0x1d]
	mov r1, #2
	orr r0, r1
	strb r0, [r4,#0x1d]
	b loc_814E498
loc_814E48C:
	add r1, r2, #0
	ldrb r2, [r5,#9]
	ldr r0, [r4,#0x24]
	bl sub_814E7F4
	str r0, [r4,#0x20]
loc_814E498:
	ldr r1, [r4,#0x34]
	cmp r1, r4
	bne loc_814E4A2
	mov r1, #0
	str r1, [r4,#0x34]
loc_814E4A2:
	add r4, r1, #0
	cmp r4, #0
	bne loc_814E42C
loc_814E4A8:
	ldrb r0, [r5]
	mov r1, #0xf0
	and r0, r1
	strb r0, [r5]
	mov r2, r9
loc_814E4B2:
	sub r2, #1
	ble loc_814E4BC
	mov r0, #0x50 
	add r5, r5, r0
	bgt loc_814E40E
loc_814E4BC:
	ldr r0, dword_814E4D8 // =0x68736D53 
	str r0, [r7,#0x34]
	pop {r0-r7}
	mov r8, r0
	mov r9, r1
	mov r10, r2
	mov r11, r3
	pop {r3}
.endfunc // sub_814E260

.func
.thumb_func
sub_814E4CC:
	bx r3
	.byte 0, 0
off_814E4D0: .word unk_81C068C
off_814E4D4: .word unk_3007FF0
dword_814E4D8: .word 0x68736D53
.endfunc // sub_814E4CC

.func
.thumb_func
sub_814E4DC:
	push {r4-r6,lr}
	add r5, r1, #0
	ldrb r1, [r5]
	mov r0, #0x80
	tst r0, r1
	beq loc_814E51E
	ldr r4, [r5,#0x20]
	cmp r4, #0
	beq loc_814E51C
	mov r6, #0
loc_814E4F0:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_814E50A
	ldrb r0, [r4,#1]
	mov r3, #7
	and r0, r3
	beq loc_814E508
	ldr r3, off_814E524 // =unk_3007FF0 
	ldr r3, [r3]
	ldr r3, [r3,#0x2c]
	bl sub_814E4CC
loc_814E508:
	strb r6, [r4]
loc_814E50A:
	str r6, [r4,#0x2c]
	ldr r0, [r4,#0x34]
	cmp r0, r4
	bne loc_814E516
	mov r0, #0
	str r0, [r4,#0x34]
loc_814E516:
	add r4, r0, #0
	cmp r4, #0
	bne loc_814E4F0
loc_814E51C:
	str r4, [r5,#0x20]
loc_814E51E:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814E524: .word unk_3007FF0
.endfunc // sub_814E4DC

.func
.thumb_func
sub_814E528:
	ldrb r1, [r4,#0x12]
	mov r0, #0x14
	ldrsb r2, [r4,r0]
	mov r3, #0x80
	add r3, r3, r2
	mul r3, r1
	ldrb r0, [r5,#0x10]
	mul r0, r3
	asr r0, r0, #0xe
	cmp r0, #0xff
	bls loc_814E540
	mov r0, #0xff
loc_814E540:
	strb r0, [r4,#2]
	mov r3, #0x7f
	sub r3, r3, r2
	mul r3, r1
	ldrb r0, [r5,#0x11]
	mul r0, r3
	asr r0, r0, #0xe
	cmp r0, #0xff
	bls loc_814E554
	mov r0, #0xff
loc_814E554:
	strb r0, [r4,#3]
	bx lr
.endfunc // sub_814E528

.func
.thumb_func
sub_814E558:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r9
	mov r6, r10
	mov r7, r11
	push {r4-r7}
	sub sp, sp, #0x18
	str r1, [sp]
	add r5, r2, #0
	ldr r1, off_814E750 // =unk_3007FF0 
	ldr r1, [r1]
	str r1, [sp,#4]
	ldr r1, off_814E754 // =unk_81C068C 
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5,#4]
	ldr r3, [r5,#0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bcs loc_814E59E
	strb r0, [r5,#5]
	add r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bcs loc_814E59C
	strb r0, [r5,#6]
	add r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bcs loc_814E59C
	ldrb r1, [r5,#4]
	add r1, r1, r0
	strb r1, [r5,#4]
	add r3, #1
loc_814E59C:
	str r3, [r5,#0x40]
loc_814E59E:
	mov r0, #0
	str r0, [sp,#0x14]
	add r4, r5, #0
	add r4, #0x24 
	ldrb r2, [r4]
	mov r0, #0xc0
	tst r0, r2
	beq loc_814E5F0
	ldrb r3, [r5,#5]
	mov r0, #0x40 
	tst r0, r2
	beq loc_814E5BE
	ldr r1, [r5,#0x2c]
	add r1, r1, r3
	ldrb r0, [r1]
	b loc_814E5C0
loc_814E5BE:
	add r0, r3, #0
loc_814E5C0:
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r5,#0x28]
	add r1, r1, r0
	mov r9, r1
	mov r6, r9
	ldrb r1, [r6]
	mov r0, #0xc0
	tst r0, r1
	beq loc_814E5D8
	b loc_814E73E
loc_814E5D8:
	mov r0, #0x80
	tst r0, r2
	beq loc_814E5F4
	ldrb r1, [r6,#3]
	mov r0, #0x80
	tst r0, r1
	beq loc_814E5EC
	sub r1, #0xc0
	lsl r1, r1, #1
	str r1, [sp,#0x14]
loc_814E5EC:
	ldrb r3, [r6,#1]
	b loc_814E5F4
loc_814E5F0:
	mov r9, r4
	ldrb r3, [r5,#5]
loc_814E5F4:
	str r3, [sp,#8]
	ldr r6, [sp]
	ldrb r1, [r6,#9]
	ldrb r0, [r5,#0x1d]
	add r0, r0, r1
	cmp r0, #0xff
	bls loc_814E604
	mov r0, #0xff
loc_814E604:
	str r0, [sp,#0x10]
	mov r6, r9
	ldrb r0, [r6]
	mov r6, #7
	and r6, r0
	str r6, [sp,#0xc]
	beq loc_814E644
	ldr r0, [sp,#4]
	ldr r4, [r0,#0x1c]
	cmp r4, #0
	bne loc_814E61C
	b loc_814E73E
loc_814E61C:
	sub r6, #1
	lsl r0, r6, #6
	add r4, r4, r0
	ldrb r1, [r4]
	mov r0, #0xc7
	tst r0, r1
	beq loc_814E698
	mov r0, #0x40 
	tst r0, r1
	bne loc_814E698
	ldrb r1, [r4,#0x13]
	ldr r0, [sp,#0x10]
	cmp r1, r0
	bcc loc_814E698
	beq loc_814E63C
	b loc_814E73E
loc_814E63C:
	ldr r0, [r4,#0x2c]
	cmp r0, r5
	bcs loc_814E698
	b loc_814E73E
loc_814E644:
	ldr r6, [sp,#0x10]
	add r7, r5, #0
	mov r2, #0
	mov r8, r2
	ldr r4, [sp,#4]
	ldrb r3, [r4,#6]
	add r4, #0x50 
loc_814E652:
	ldrb r1, [r4]
	mov r0, #0xc7
	tst r0, r1
	beq loc_814E698
	mov r0, #0x40 
	tst r0, r1
	beq loc_814E66C
	cmp r2, #0
	bne loc_814E670
	add r2, #1
	ldrb r6, [r4,#0x13]
	ldr r7, [r4,#0x2c]
	b loc_814E68A
loc_814E66C:
	cmp r2, #0
	bne loc_814E68C
loc_814E670:
	ldrb r0, [r4,#0x13]
	cmp r0, r6
	bcs loc_814E67C
	add r6, r0, #0
	ldr r7, [r4,#0x2c]
	b loc_814E68A
loc_814E67C:
	bhi loc_814E68C
	ldr r0, [r4,#0x2c]
	cmp r0, r7
	bls loc_814E688
	add r7, r0, #0
	b loc_814E68A
loc_814E688:
	bcc loc_814E68C
loc_814E68A:
	mov r8, r4
loc_814E68C:
	add r4, #0x40 
	sub r3, #1
	bgt loc_814E652
	mov r4, r8
	cmp r4, #0
	beq loc_814E73E
loc_814E698:
	add r0, r4, #0
	bl sub_814ECA0
	mov r1, #0
	str r1, [r4,#0x30]
	ldr r3, [r5,#0x20]
	str r3, [r4,#0x34]
	cmp r3, #0
	beq loc_814E6AC
	str r4, [r3,#0x30]
loc_814E6AC:
	str r4, [r5,#0x20]
	str r5, [r4,#0x2c]
	ldrb r0, [r5,#0x1b]
	strb r0, [r5,#0x1c]
	cmp r0, r1
	beq loc_814E6BE
	add r1, r5, #0
	bl sub_814E7A4
loc_814E6BE:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_814F2F0
	ldr r0, [r5,#4]
	str r0, [r4,#0x10]
	ldr r0, [sp,#0x10]
	strb r0, [r4,#0x13]
	ldr r0, [sp,#8]
	strb r0, [r4,#8]
	ldr r0, [sp,#0x14]
	strb r0, [r4,#0x14]
	mov r6, r9
	ldrb r0, [r6]
	strb r0, [r4,#1]
	ldr r7, [r6,#4]
	str r7, [r4,#0x24]
	ldr r0, [r6,#8]
	str r0, [r4,#4]
	ldrh r0, [r5,#0x1e]
	strh r0, [r4,#0xc]
	bl sub_814E528
	ldrb r1, [r4,#8]
	mov r0, #8
	ldrsb r0, [r5,r0]
	add r3, r1, r0
	bpl loc_814E6F8
	mov r3, #0
loc_814E6F8:
	ldr r6, [sp,#0xc]
	cmp r6, #0
	beq loc_814E726
	mov r6, r9
	ldrb r0, [r6,#2]
	strb r0, [r4,#0x1e]
	ldrb r1, [r6,#3]
	mov r0, #0x80
	tst r0, r1
	bne loc_814E712
	mov r0, #0x70 
	tst r0, r1
	bne loc_814E714
loc_814E712:
	mov r1, #8
loc_814E714:
	strb r1, [r4,#0x1f]
	ldrb r2, [r5,#9]
	add r1, r3, #0
	ldr r0, [sp,#0xc]
	ldr r3, [sp,#4]
	ldr r3, [r3,#0x30]
	bl sub_814E4CC
	b loc_814E730
loc_814E726:
	ldrb r2, [r5,#9]
	add r1, r3, #0
	add r0, r7, #0
loc_814E72C:
	bl sub_814E7F4
loc_814E730:
	str r0, [r4,#0x20]
	mov r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	mov r0, #0xf0
	and r0, r1
	strb r0, [r5]
loc_814E73E:
	add sp, sp, #0x18
	pop {r0-r7}
	mov r8, r0
	mov r9, r1
	mov r10, r2
	mov r11, r3
	pop {r0}
	bx r0
	.byte 0, 0
off_814E750: .word unk_3007FF0
off_814E754: .word unk_81C068C
.endfunc // sub_814E558

.func
.thumb_func
sub_814E758:
	push {r4,r5}
	ldr r2, [r1,#0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bcs loc_814E76A
	strb r3, [r1,#5]
	add r2, #1
	str r2, [r1,#0x40]
	b loc_814E76C
loc_814E76A:
	ldrb r3, [r1,#5]
loc_814E76C:
	ldr r1, [r1,#0x20]
	cmp r1, #0
	beq loc_814E79E
	mov r4, #0x83
	mov r5, #0x40 
loc_814E776:
	ldrb r2, [r1]
	tst r2, r4
	beq loc_814E78E
	tst r2, r5
	bne loc_814E78E
	ldrb r0, [r1,#0x11]
	cmp r0, r3
	bne loc_814E78E
	mov r0, #0x40 
	orr r2, r0
	strb r2, [r1]
	b loc_814E79E
loc_814E78E:
	ldr r2, [r1,#0x34]
	cmp r2, r1
	bne loc_814E798
	mov r2, #0
	str r2, [r1,#0x34]
loc_814E798:
	add r1, r2, #0
	cmp r1, #0
	bne loc_814E776
loc_814E79E:
	pop {r4,r5}
	bx lr
	.balign 4, 0x00
.endfunc // sub_814E758

.func
.thumb_func
sub_814E7A4:
	mov r2, #0
	strb r2, [r1,#0x16]
	strb r2, [r1,#0x1a]
	ldrb r2, [r1,#0x18]
	cmp r2, #0
	bne loc_814E7B4
	mov r2, #0xc
	b loc_814E7B6
loc_814E7B4:
	mov r2, #3
loc_814E7B6:
	ldrb r3, [r1]
	orr r3, r2
	strb r3, [r1]
	bx lr
	.byte 0, 0
.endfunc // sub_814E7A4

.func
.thumb_func
sub_814E7C0:
	ldr r2, [r1,#0x40]
	add r3, r2, #1
	str r3, [r1,#0x40]
	ldrb r3, [r2]
	bx lr
	.balign 4, 0x00
.endfunc // sub_814E7C0

.func
.thumb_func
sub_814E7CC:
	mov r12, lr
	bl sub_814E7C0
	strb r3, [r1,#0x19]
	cmp r3, #0
	bne loc_814E7DC
	bl sub_814E7A4
loc_814E7DC:
	bx r12
	.byte 0, 0
.endfunc // sub_814E7CC

.func
.thumb_func
sub_814E7E0:
	mov r12, lr
	bl sub_814E7C0
	strb r3, [r1,#0x17]
	cmp r3, #0
	bne loc_814E7F0
	bl sub_814E7A4
loc_814E7F0:
	bx r12
	.balign 4, 0x00
.endfunc // sub_814E7E0

.func
.thumb_func
sub_814E7F4:
	push {r4-r7,lr}
	mov r12, r0
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	lsl r7, r2, #0x18
	cmp r6, #0xb2
	bls loc_814E808
	mov r6, #0xb2
	mov r7, #0xff
	lsl r7, r7, #0x18
loc_814E808:
	ldr r3, off_814E850 // =unk_81C04A8 
	add r0, r6, r3
	ldrb r5, [r0]
	ldr r4, off_814E854 // =dword_81C055C 
	mov r2, #0xf
	add r0, r5, #0
	and r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	lsr r1, r5, #4
	ldr r5, [r0]
	lsr r5, r1
	add r0, r6, #1
	add r0, r0, r3
	ldrb r1, [r0]
	add r0, r1, #0
	and r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	lsr r1, r1, #4
	ldr r0, [r0]
	lsr r0, r1
	mov r1, r12
	ldr r4, [r1,#4]
	sub r0, r0, r5
	add r1, r7, #0
	bl dword_814DBF4
	add r1, r0, #0
	add r1, r5, r1
	add r0, r4, #0
	bl dword_814DBF4
	pop {r4-r7}
	pop {r1}
	bx r1
off_814E850: .word unk_81C04A8
off_814E854: .word dword_81C055C
.endfunc // sub_814E7F4

	bx lr
	.balign 4, 0x00
.func
.thumb_func
sub_814E85C:
	push {lr}
	add r2, r0, #0
	ldr r3, [r2,#0x34]
	ldr r0, dword_814E874 // =0x68736D53 
	cmp r3, r0
	bne loc_814E870
	ldr r0, [r2,#4]
	ldr r1, dword_814E878 // =0x7FFFFFFF 
	and r0, r1
	str r0, [r2,#4]
loc_814E870:
	pop {r0}
	bx r0
dword_814E874: .word 0x68736D53
dword_814E878: .word 0x7FFFFFFF
.endfunc // sub_814E85C

.func
.thumb_func
sub_814E87C:
	push {lr}
	add r2, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r3, [r2,#0x34]
	ldr r0, dword_814E89C // =0x68736D53 
	cmp r3, r0
	bne loc_814E896
	strh r1, [r2,#0x26]
	strh r1, [r2,#0x24]
	mov r0, #0x80
	lsl r0, r0, #1
	strh r0, [r2,#0x28]
loc_814E896:
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814E89C: .word 0x68736D53
.endfunc // sub_814E87C

.func
.thumb_func
sub_814E8A0:
	push {r4-r6,lr}
	ldr r0, off_814E8F4 // =loc_814DC88+1 
	mov r1, #2
	neg r1, r1
	and r0, r1
	ldr r1, off_814E8F8 // =loc_3005700 
	ldr r2, off_814E8FC // =Timer0Counter_Reload 
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	ldr r0, off_814E900 // =unk_30045C0 
	bl sub_814ECC8
	ldr r0, off_814E904 // =unk_3005600 
	bl sub_814EB84
	ldr r0, dword_814E908 // =0x93F400 
	bl sub_814EE2C
	ldr r0, dword_814E90C // =0x20 
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0
	beq loc_814E8EE
	ldr r5, off_814E910 // =off_8158278 
	add r6, r0, #0
loc_814E8D2:
	ldr r4, [r5]
	ldr r1, [r5,#4]
	ldrb r2, [r5,#8]
	add r0, r4, #0
	bl sub_814F08C
	ldrh r0, [r5,#0xa]
	strb r0, [r4,#0xb]
	ldr r0, off_814E914 // =byte_2010B90 
	str r0, [r4,#0x18]
	add r5, #0xc
	sub r6, #1
	cmp r6, #0
	bne loc_814E8D2
loc_814E8EE:
	pop {r4-r6}
	pop {r0}
	bx r0
off_814E8F4: .word loc_814DC88+1
off_814E8F8: .word loc_3005700
off_814E8FC: .word Timer0Counter_Reload
off_814E900: .word unk_30045C0
off_814E904: .word unk_3005600
dword_814E908: .word 0x93F400
dword_814E90C: .word 0x20
off_814E910: .word off_8158278
off_814E914: .word byte_2010B90
.endfunc // sub_814E8A0

.func
.thumb_func
sub_814E918:
	push {lr}
	bl sub_814DC04
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814E918

.func
.thumb_func
m4a_SongNumStart:
	push {lr}
	lsl r0, r0, #0x10
	ldr r3, off_814E948 // =off_8158278 
	ldr r1, off_814E94C // =sound_MusicTable 
	lsr r0, r0, #0xd
	add r0, r0, r1
	ldrh r2, [r0,#4]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0
	bl sound_814F104
	pop {r0}
	bx r0
off_814E948: .word off_8158278
off_814E94C: .word sound_MusicTable
.endfunc // m4a_SongNumStart

.func
.thumb_func
sub_814E950:
	push {lr}
	lsl r0, r0, #0x10
	ldr r3, off_814E97C // =off_8158278 
	ldr r1, off_814E980 // =sound_MusicTable 
	lsr r0, r0, #0xd
	add r0, r0, r1
	ldrh r2, [r0,#4]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq loc_814E984
	add r0, r1, #0
	add r1, r2, #0
	bl sound_814F104
	b loc_814E998
	.balign 4, 0x00
off_814E97C: .word off_8158278
off_814E980: .word sound_MusicTable
loc_814E984:
	ldr r2, [r1,#4]
	ldrh r0, [r1,#4]
	cmp r0, #0
	beq loc_814E990
	cmp r2, #0
	bge loc_814E998
loc_814E990:
	add r0, r1, #0
	add r1, r3, #0
	bl sound_814F104
loc_814E998:
	pop {r0}
	bx r0
.endfunc // sub_814E950

.func
.thumb_func
sub_814E99C:
	push {lr}
	lsl r0, r0, #0x10
	ldr r3, off_814E9C8 // =off_8158278 
	ldr r1, off_814E9CC // =sound_MusicTable 
	lsr r0, r0, #0xd
	add r0, r0, r1
	ldrh r2, [r0,#4]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq loc_814E9D0
	add r0, r1, #0
	add r1, r2, #0
	bl sound_814F104
	b loc_814E9EC
	.balign 4, 0x00
off_814E9C8: .word off_8158278
off_814E9CC: .word sound_MusicTable
loc_814E9D0:
	ldr r2, [r1,#4]
	ldrh r0, [r1,#4]
	cmp r0, #0
	bne loc_814E9E2
	add r0, r1, #0
	add r1, r3, #0
	bl sound_814F104
	b loc_814E9EC
loc_814E9E2:
	cmp r2, #0
	bge loc_814E9EC
	add r0, r1, #0
	bl sub_814E85C
loc_814E9EC:
	pop {r0}
	bx r0
.endfunc // sub_814E99C

.func
.thumb_func
sub_814E9F0:
	push {lr}
	lsl r0, r0, #0x10
	ldr r3, off_814EA1C // =off_8158278 
	ldr r1, off_814EA20 // =sound_MusicTable 
	lsr r0, r0, #0xd
	add r0, r0, r1
	ldrh r2, [r0,#4]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne loc_814EA16
	add r0, r2, #0
	bl sub_814F1E8
loc_814EA16:
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814EA1C: .word off_8158278
off_814EA20: .word sound_MusicTable
.endfunc // sub_814E9F0

.func
.thumb_func
sub_814EA24:
	push {lr}
	lsl r0, r0, #0x10
	ldr r3, off_814EA50 // =off_8158278 
	ldr r1, off_814EA54 // =sound_MusicTable 
	lsr r0, r0, #0xd
	add r0, r0, r1
	ldrh r2, [r0,#4]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne loc_814EA4A
	add r0, r2, #0
	bl sub_814E85C
loc_814EA4A:
	pop {r0}
	bx r0
	.byte 0, 0
off_814EA50: .word off_8158278
off_814EA54: .word sound_MusicTable
.endfunc // sub_814EA24

.func
.thumb_func
sub_814EA58:
	push {r4,r5,lr}
	ldr r0, dword_814EA7C // =0x20 
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0
	beq loc_814EA76
	ldr r5, off_814EA80 // =off_8158278 
	add r4, r0, #0
loc_814EA68:
	ldr r0, [r5]
	bl sub_814F1E8
	add r5, #0xc
	sub r4, #1
	cmp r4, #0
	bne loc_814EA68
loc_814EA76:
	pop {r4,r5}
	pop {r0}
	bx r0
dword_814EA7C: .word 0x20
off_814EA80: .word off_8158278
.endfunc // sub_814EA58

.func
.thumb_func
sub_814EA84:
	push {lr}
	bl sub_814E85C
	pop {r0}
	bx r0
	.byte 0, 0
.endfunc // sub_814EA84

.func
.thumb_func
sub_814EA90:
	push {r4,r5,lr}
	ldr r0, dword_814EAB4 // =0x20 
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0
	beq loc_814EAAE
	ldr r5, off_814EAB8 // =off_8158278 
	add r4, r0, #0
loc_814EAA0:
	ldr r0, [r5]
	bl sub_814E85C
	add r5, #0xc
	sub r4, #1
	cmp r4, #0
	bne loc_814EAA0
loc_814EAAE:
	pop {r4,r5}
	pop {r0}
	bx r0
dword_814EAB4: .word 0x20
off_814EAB8: .word off_8158278
.endfunc // sub_814EA90

.func
.thumb_func
sub_814EABC:
	push {lr}
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_814E87C
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814EABC

.func
.thumb_func
sub_814EACC:
	push {lr}
	add r2, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r3, [r2,#0x34]
	ldr r0, dword_814EAE8 // =0x68736D53 
	cmp r3, r0
	bne loc_814EAE4
	strh r1, [r2,#0x26]
	strh r1, [r2,#0x24]
	ldr r0, off_814EAEC // =0x101 
	strh r0, [r2,#0x28]
loc_814EAE4:
	pop {r0}
	bx r0
dword_814EAE8: .word 0x68736D53
off_814EAEC: .word 0x101
.endfunc // sub_814EACC

.func
.thumb_func
sub_814EAF0:
	push {lr}
	add r2, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r3, [r2,#0x34]
	ldr r0, dword_814EB14 // =0x68736D53 
	cmp r3, r0
	bne loc_814EB10
	strh r1, [r2,#0x26]
	strh r1, [r2,#0x24]
	mov r0, #2
	strh r0, [r2,#0x28]
	ldr r0, [r2,#4]
	ldr r1, dword_814EB18 // =0x7FFFFFFF 
	and r0, r1
	str r0, [r2,#4]
loc_814EB10:
	pop {r0}
	bx r0
dword_814EB14: .word 0x68736D53
dword_814EB18: .word 0x7FFFFFFF
.endfunc // sub_814EAF0

.func
.thumb_func
sub_814EB1C:
	push {r4-r7,lr}
	sub sp, sp, #4
	add r7, r0, #0
	ldr r1, [r7,#0x34]
	ldr r0, dword_814EB80 // =0x68736D53 
	cmp r1, r0
	bne loc_814EB76
	add r0, r1, #1
	str r0, [r7,#0x34]
	ldrb r5, [r7,#8]
	ldr r4, [r7,#0x2c]
	cmp r5, #0
	ble loc_814EB72
	mov r2, #0x80
loc_814EB38:
	ldrb r1, [r4]
	add r0, r2, #0
	and r0, r1
	cmp r0, #0
	beq loc_814EB6A
	mov r6, #0x40 
	add r0, r6, #0
	and r0, r1
	cmp r0, #0
	beq loc_814EB6A
	add r0, r4, #0
	str r2, [sp]
	bl sub_814ECB4
	ldr r2, [sp]
	strb r2, [r4]
	mov r0, #2
	strb r0, [r4,#0xf]
	strb r6, [r4,#0x13]
	mov r0, #0x16
	strb r0, [r4,#0x19]
	add r1, r4, #0
	add r1, #0x24 
	mov r0, #1
	strb r0, [r1]
loc_814EB6A:
	sub r5, #1
	add r4, #0x50 
	cmp r5, #0
	bgt loc_814EB38
loc_814EB72:
	ldr r0, dword_814EB80 // =0x68736D53 
	str r0, [r7,#0x34]
loc_814EB76:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0, 0
dword_814EB80: .word 0x68736D53
.endfunc // sub_814EB1C

.func
.thumb_func
sub_814EB84:
	push {r4-r6,lr}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r1, off_814EC4C // =ControlSoundon_off_NR52_ 
	mov r0, #0x8f
	strh r0, [r1]
	ldr r3, off_814EC50 // =ControlStereo_Volume_Enable_NR50_NR51_ 
	mov r2, #0
	strh r2, [r3]
	ldr r0, off_814EC54 // =Channel1Duty_Length_Envelope_NR11_NR12_+1 
	mov r1, #8
	strb r1, [r0]
	add r0, #6
	strb r1, [r0]
	add r0, #0x10
	strb r1, [r0]
	sub r0, #0x14
	mov r1, #0x80
	strb r1, [r0]
	add r0, #8
	strb r1, [r0]
	add r0, #0x10
	strb r1, [r0]
	sub r0, #0xd
	strb r2, [r0]
	mov r0, #0x77 
	strb r0, [r3]
	ldr r0, off_814EC58 // =unk_3007FF0 
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, dword_814EC5C // =0x68736D53 
	cmp r6, r0
	bne loc_814EC44
	add r0, r6, #1
	str r0, [r4]
	ldr r1, off_814EC60 // =dword_3005570 
	ldr r0, off_814EC64 // =sub_814FBFC+1 
	str r0, [r1,#0x20] // (dword_3005590 - 0x3005570)
	ldr r0, off_814EC68 // =sub_814E7CC+1 
	str r0, [r1,#0x44] // (dword_30055B4 - 0x3005570)
	ldr r0, off_814EC6C // =sub_814E7E0+1 
	str r0, [r1,#0x4c] // (dword_30055BC - 0x3005570)
	ldr r0, off_814EC70 // =sub_814FD54+1 
	str r0, [r1,#0x70] // (dword_30055E0 - 0x3005570)
	ldr r0, off_814EC74 // =sub_814E758+1 
	str r0, [r1,#0x74] // (dword_30055E4 - 0x3005570)
	ldr r0, off_814EC78 // =sub_814EDC0+1 
	str r0, [r1,#0x78] // (dword_30055E8 - 0x3005570)
	ldr r0, off_814EC7C // =sub_814E4DC+1 
	str r0, [r1,#0x7c] // (dword_30055EC - 0x3005570)
	add r2, r1, #0
	add r2, #0x80
	ldr r0, off_814EC80 // =sub_814F228+1 
	str r0, [r2]
	add r1, #0x84
	ldr r0, off_814EC84 // =sub_814F2F0+1 
	str r0, [r1]
	str r5, [r4,#0x1c]
	ldr r0, off_814EC88 // =sub_814F508+1 
	str r0, [r4,#0x28]
	ldr r0, off_814EC8C // =sub_814F44C+1 
	str r0, [r4,#0x2c]
	ldr r0, off_814EC90 // =sub_814F3A4+1 
	str r0, [r4,#0x30]
	ldr r0, dword_814EC94 // =0x0 
	mov r1, #0
	strb r0, [r4,#0xc]
	str r1, [sp]
	ldr r2, dword_814EC98 // =0x5000040 
	mov r0, sp
	add r1, r5, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, #1
	strb r0, [r5,#1]
	mov r0, #0x11
	strb r0, [r5,#0x1c]
	add r1, r5, #0
	add r1, #0x41 
	mov r0, #2
	strb r0, [r1]
	add r1, #0x1b
	mov r0, #0x22 
	strb r0, [r1]
	add r1, #0x25 
	mov r0, #3
	strb r0, [r1]
	add r1, #0x1b
	mov r0, #0x44 
	strb r0, [r1]
	add r1, #0x24 
	mov r0, #4
	strb r0, [r1,#1]
	mov r0, #0x88
	strb r0, [r1,#0x1c]
	str r6, [r4]
loc_814EC44:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
off_814EC4C: .word ControlSoundon_off_NR52_
off_814EC50: .word ControlStereo_Volume_Enable_NR50_NR51_
off_814EC54: .word Channel1Duty_Length_Envelope_NR11_NR12_+1
off_814EC58: .word unk_3007FF0
dword_814EC5C: .word 0x68736D53
off_814EC60: .word dword_3005570
off_814EC64: .word sub_814FBFC+1
off_814EC68: .word sub_814E7CC+1
off_814EC6C: .word sub_814E7E0+1
off_814EC70: .word sub_814FD54+1
off_814EC74: .word sub_814E758+1
off_814EC78: .word sub_814EDC0+1
off_814EC7C: .word sub_814E4DC+1
off_814EC80: .word sub_814F228+1
off_814EC84: .word sub_814F2F0+1
off_814EC88: .word sub_814F508+1
off_814EC8C: .word sub_814F44C+1
off_814EC90: .word sub_814F3A4+1
dword_814EC94: .word 0x0
dword_814EC98: .word 0x5000040
.endfunc // sub_814EB84

	svc 0x2a 
	bx lr
.func
.thumb_func
sub_814ECA0:
	push {lr}
	ldr r1, off_814ECB0 // =dword_30055F8 
	ldr r1, [r1]
	bl sub_814DA64
	pop {r0}
	bx r0
	.byte 0, 0
off_814ECB0: .word dword_30055F8
.endfunc // sub_814ECA0

.func
.thumb_func
sub_814ECB4:
	push {lr}
	ldr r1, off_814ECC4 // =dword_30055FC 
	ldr r1, [r1]
	bl sub_814DA64
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814ECC4: .word dword_30055FC
.endfunc // sub_814ECB4

.func
.thumb_func
sub_814ECC8:
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r0, #0
	mov r3, #0
	str r3, [r5]
	ldr r1, off_814ED80 // =DMA1WordCount 
	ldr r0, [r1]
	mov r2, #0x80
	lsl r2, r2, #0x12
	and r0, r2
	cmp r0, #0
	beq loc_814ECE4
	ldr r0, dword_814ED84 // =0x84400004 
	str r0, [r1]
loc_814ECE4:
	ldr r1, off_814ED88 // =DMA2WordCount 
	ldr r0, [r1]
	and r0, r2
	cmp r0, #0
	beq loc_814ECF2
	ldr r0, dword_814ED84 // =0x84400004 
	str r0, [r1]
loc_814ECF2:
	ldr r0, off_814ED8C // =DMA1Control 
	mov r2, #0x80
	lsl r2, r2, #3
	add r1, r2, #0
	strh r1, [r0]
	add r0, #0xc
	strh r1, [r0]
	ldr r1, off_814ED90 // =ControlSoundon_off_NR52_ 
	mov r0, #0x8f
	strh r0, [r1]
	sub r1, #2
	ldr r2, dword_814ED94 // =0xA90E 
	add r0, r2, #0
	strh r0, [r1]
	ldr r2, off_814ED98 // =SoundPWMControl+1 
	ldrb r1, [r2]
	mov r0, #0x3f 
	and r0, r1
	mov r1, #0x40 
	orr r0, r1
	strb r0, [r2]
	ldr r1, off_814ED9C // =DMA1SourceAddress 
	mov r2, #0xd4
	lsl r2, r2, #2
	add r0, r5, r2
	str r0, [r1]
	add r1, #4
	ldr r0, off_814EDA0 // =ChannelAFIFO_Data0_3 
	str r0, [r1]
	add r1, #8
	mov r2, #0x98
	lsl r2, r2, #4
	add r0, r5, r2
	str r0, [r1]
	add r1, #4
	ldr r0, off_814EDA4 // =ChannelBFIFO_Data0_3 
	str r0, [r1]
	ldr r0, off_814EDA8 // =unk_3007FF0 
	str r5, [r0]
	str r3, [sp]
	ldr r2, dword_814EDAC // =0x50003EC 
	mov r0, sp
	add r1, r5, #0
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
	mov r0, #8
	strb r0, [r5,#6]
	mov r0, #0xf
	strb r0, [r5,#7]
	ldr r0, off_814EDB0 // =sub_814E558+1 
	str r0, [r5,#0x38]
	ldr r0, off_814EDB4 // =nullsub_23+1 
	str r0, [r5,#0x28]
	str r0, [r5,#0x2c]
	str r0, [r5,#0x30]
	str r0, [r5,#0x3c]
	ldr r4, off_814EDB8 // =dword_3005570 
	add r0, r4, #0
	bl sub_814E09C
	str r4, [r5,#0x34]
	mov r0, #0x80
	lsl r0, r0, #0xb
	bl sub_814EDC0
	ldr r0, dword_814EDBC // =0x68736D53 
	str r0, [r5]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
off_814ED80: .word DMA1WordCount
dword_814ED84: .word 0x84400004
off_814ED88: .word DMA2WordCount
off_814ED8C: .word DMA1Control
off_814ED90: .word ControlSoundon_off_NR52_
dword_814ED94: .word 0xA90E
off_814ED98: .word SoundPWMControl+1
off_814ED9C: .word DMA1SourceAddress
off_814EDA0: .word ChannelAFIFO_Data0_3
off_814EDA4: .word ChannelBFIFO_Data0_3
off_814EDA8: .word unk_3007FF0
dword_814EDAC: .word 0x50003EC
off_814EDB0: .word sub_814E558+1
off_814EDB4: .word nullsub_23+1
off_814EDB8: .word dword_3005570
dword_814EDBC: .word 0x68736D53
.endfunc // sub_814ECC8

.func
.thumb_func
sub_814EDC0:
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_814EF14
	ldr r0, off_814EE18 // =unk_3007FF0 
	ldr r5, [r0]
	mov r0, #0xf0
	lsl r0, r0, #0xc
	and r0, r4
	lsr r4, r0, #0x10
	strb r4, [r5,#8]
	ldr r1, off_814EE1C // =dword_81C058C 
	sub r0, r4, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r4, [r0]
	str r4, [r5,#0x10]
	mov r0, #0xc6
	lsl r0, r0, #3
	add r1, r4, #0
	bl sub_814DA9C
	strb r0, [r5,#0xb]
	ldr r0, dword_814EE20 // =0x91D1B 
	mul r0, r4
	ldr r1, dword_814EE24 // =0x1388 
	add r0, r0, r1
	ldr r1, dword_814EE28 // =0x2710 
	bl sub_814DA9C
	add r1, r0, #0
	str r1, [r5,#0x14]
	mov r0, #0x80
	lsl r0, r0, #0x11
	bl sub_814DA9C
	add r0, #1
	asr r0, r0, #1
	str r0, [r5,#0x18]
	bl sub_814EF94
	pop {r4,r5}
	pop {r0}
	bx r0
off_814EE18: .word unk_3007FF0
off_814EE1C: .word dword_81C058C
dword_814EE20: .word 0x91D1B
dword_814EE24: .word 0x1388
dword_814EE28: .word 0x2710
.endfunc // sub_814EDC0

.func
.thumb_func
sub_814EE2C:
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, off_814EEB4 // =unk_3007FF0 
	ldr r4, [r0]
	ldr r1, [r4]
	ldr r0, dword_814EEB8 // =0x68736D53 
	cmp r1, r0
	bne loc_814EEAE
	add r0, r1, #1
	str r0, [r4]
	mov r3, #0xff
	and r3, r5
	cmp r3, #0
	beq loc_814EE4E
	mov r0, #0x7f
	and r3, r0
	strb r3, [r4,#5]
loc_814EE4E:
	mov r3, #0xf0
	lsl r3, r3, #4
	and r3, r5
	cmp r3, #0
	beq loc_814EE6E
	lsr r0, r3, #8
	strb r0, [r4,#6]
	mov r3, #0xc
	add r0, r4, #0
	add r0, #0x50 
	mov r1, #0
loc_814EE64:
	strb r1, [r0]
	sub r3, #1
	add r0, #0x40 
	cmp r3, #0
	bne loc_814EE64
loc_814EE6E:
	mov r3, #0xf0
	lsl r3, r3, #8
	and r3, r5
	cmp r3, #0
	beq loc_814EE7C
	lsr r0, r3, #0xc
	strb r0, [r4,#7]
loc_814EE7C:
	mov r3, #0xb0
	lsl r3, r3, #0x10
	and r3, r5
	cmp r3, #0
	beq loc_814EE9A
	mov r0, #0xc0
	lsl r0, r0, #0xe
	and r0, r3
	lsr r3, r0, #0xe
	ldr r2, off_814EEBC // =SoundPWMControl+1 
	ldrb r1, [r2]
	mov r0, #0x3f 
	and r0, r1
	orr r0, r3
	strb r0, [r2]
loc_814EE9A:
	mov r3, #0xf0
	lsl r3, r3, #0xc
	and r3, r5
	cmp r3, #0
	beq loc_814EEAA
	add r0, r3, #0
	bl sub_814EDC0
loc_814EEAA:
	ldr r0, dword_814EEB8 // =0x68736D53 
	str r0, [r4]
loc_814EEAE:
	pop {r4,r5}
	pop {r0}
	bx r0
off_814EEB4: .word unk_3007FF0
dword_814EEB8: .word 0x68736D53
off_814EEBC: .word SoundPWMControl+1
.endfunc // sub_814EE2C

.func
.thumb_func
sub_814EEC0:
	push {r4-r7,lr}
	ldr r0, off_814EF0C // =unk_3007FF0 
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, dword_814EF10 // =0x68736D53 
	cmp r1, r0
	bne loc_814EF06
	add r0, r1, #1
	str r0, [r6]
	mov r5, #0xc
	add r4, r6, #0
	add r4, #0x50 
	mov r0, #0
loc_814EEDA:
	strb r0, [r4]
	sub r5, #1
	add r4, #0x40 
	cmp r5, #0
	bgt loc_814EEDA
	ldr r4, [r6,#0x1c]
	cmp r4, #0
	beq loc_814EF02
	mov r5, #1
	mov r7, #0
loc_814EEEE:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	ldr r1, [r6,#0x2c]
	bl sub_814DA64
	strb r7, [r4]
	add r5, #1
	add r4, #0x40 
	cmp r5, #4
	ble loc_814EEEE
loc_814EF02:
	ldr r0, dword_814EF10 // =0x68736D53 
	str r0, [r6]
loc_814EF06:
	pop {r4-r7}
	pop {r0}
	bx r0
off_814EF0C: .word unk_3007FF0
dword_814EF10: .word 0x68736D53
.endfunc // sub_814EEC0

.func
.thumb_func
sub_814EF14:
	push {lr}
	sub sp, sp, #4
	ldr r0, off_814EF78 // =unk_3007FF0 
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, dword_814EF7C // =0x978C92AD 
	add r0, r1, r3
	cmp r0, #1
	bhi loc_814EF72
	add r0, r1, #0
	add r0, #0xa
	str r0, [r2]
	ldr r1, off_814EF80 // =Timer0Control 
	mov r0, #0
	strh r0, [r1]
	sub r1, #0x3e 
	ldr r0, [r1]
	mov r3, #0x80
	lsl r3, r3, #0x12
	and r0, r3
	cmp r0, #0
	beq loc_814EF44
	ldr r0, dword_814EF84 // =0x84400004 
	str r0, [r1]
loc_814EF44:
	ldr r1, off_814EF88 // =DMA2WordCount 
	ldr r0, [r1]
	and r0, r3
	cmp r0, #0
	beq loc_814EF52
	ldr r0, dword_814EF84 // =0x84400004 
	str r0, [r1]
loc_814EF52:
	ldr r0, off_814EF8C // =DMA1Control 
	mov r3, #0x80
	lsl r3, r3, #3
	add r1, r3, #0
	strh r1, [r0]
	add r0, #0xc
	strh r1, [r0]
	mov r0, #0
	str r0, [sp]
	mov r0, #0xd4
	lsl r0, r0, #2
	add r1, r2, r0
	ldr r2, dword_814EF90 // =0x5000318 
	mov r0, sp
	bl SWI_CpuSet // (void *src, void *dest, int mode) -> void
loc_814EF72:
	add sp, sp, #4
	pop {r0}
	bx r0
off_814EF78: .word unk_3007FF0
dword_814EF7C: .word 0x978C92AD
off_814EF80: .word Timer0Control
dword_814EF84: .word 0x84400004
off_814EF88: .word DMA2WordCount
off_814EF8C: .word DMA1Control
dword_814EF90: .word 0x5000318
.endfunc // sub_814EF14

.func
.thumb_func
sub_814EF94:
	push {r4,lr}
	ldr r0, off_814EFF0 // =unk_3007FF0 
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, dword_814EFF4 // =0x68736D53 
	cmp r3, r0
	beq loc_814EFE8
	ldr r0, off_814EFF8 // =DMA1Control 
	mov r4, #0xb6
	lsl r4, r4, #8
	add r1, r4, #0
	strh r1, [r0]
	add r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2,#4]
	mov r0, #0
	strb r0, [r2,#4]
	add r0, r3, #0
	sub r0, #0xa
	str r0, [r2]
	ldr r3, off_814EFFC // =VerticalCounter_LY_ 
	ldrb r0, [r3]
	ldr r1, [r2,#0x10]
	cmp r0, #0x9f
	bne loc_814EFCE
	add r2, r3, #0
loc_814EFC8:
	ldrb r0, [r2]
	cmp r0, #0x9f
	beq loc_814EFC8
loc_814EFCE:
	ldr r2, off_814EFFC // =VerticalCounter_LY_ 
loc_814EFD0:
	ldrb r0, [r2]
	cmp r0, #0x9f
	bne loc_814EFD0
	ldr r4, off_814F000 // =Timer0Counter_Reload 
	ldr r0, dword_814F004 // =0x44940 
	bl sub_814DA9C
	neg r0, r0
	strh r0, [r4]
	ldr r1, off_814F008 // =Timer0Control 
	mov r0, #0x80
	strh r0, [r1]
loc_814EFE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0, 0
off_814EFF0: .word unk_3007FF0
dword_814EFF4: .word 0x68736D53
off_814EFF8: .word DMA1Control
off_814EFFC: .word VerticalCounter_LY_
off_814F000: .word Timer0Counter_Reload
dword_814F004: .word 0x44940
off_814F008: .word Timer0Control
.endfunc // sub_814EF94

.func
.thumb_func
sub_814F00C:
	push {lr}
	ldr r0, off_814F070 // =unk_3007FF0 
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, dword_814F074 // =0x978C92AD 
	add r0, r0, r1
	cmp r0, #1
	bhi loc_814F06A
	ldrb r0, [r2,#4]
	.hword 0x3801
	ldrb r1, [r2,#4]
	strb r0, [r2,#4]
	ldrb r0, [r2,#4]
	lsl r0, r0, #0x18
	cmp r0, #0
	bgt loc_814F06A
	ldrb r0, [r2,#0xb]
	ldrb r1, [r2,#4]
	strb r0, [r2,#4]
	ldr r1, off_814F078 // =DMA1WordCount 
	ldr r0, [r1]
	mov r2, #0x80
	lsl r2, r2, #0x12
	and r0, r2
	cmp r0, #0
	beq loc_814F044
	ldr r0, dword_814F07C // =0x84400004 
	str r0, [r1]
loc_814F044:
	ldr r1, off_814F080 // =DMA2WordCount 
	ldr r0, [r1]
	and r0, r2
	cmp r0, #0
	beq loc_814F052
	ldr r0, dword_814F07C // =0x84400004 
	str r0, [r1]
loc_814F052:
	ldr r2, off_814F084 // =DMA1Control 
	mov r3, #0x80
	lsl r3, r3, #3
	add r0, r3, #0
	strh r0, [r2]
	ldr r1, off_814F088 // =DMA2Control 
	strh r0, [r1]
	mov r3, #0xb6
	lsl r3, r3, #8
	add r0, r3, #0
	strh r0, [r2]
	strh r0, [r1]
loc_814F06A:
	pop {r0}
	bx r0
	.byte 0, 0
off_814F070: .word unk_3007FF0
dword_814F074: .word 0x978C92AD
off_814F078: .word DMA1WordCount
dword_814F07C: .word 0x84400004
off_814F080: .word DMA2WordCount
off_814F084: .word DMA1Control
off_814F088: .word DMA2Control
.endfunc // sub_814F00C

.func
.thumb_func
sub_814F08C:
	push {r4-r7,lr}
	add r7, r0, #0
	add r6, r1, #0
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #0
	beq loc_814F0F0
	cmp r4, #0x10
	bls loc_814F0A0
	mov r4, #0x10
loc_814F0A0:
	ldr r0, off_814F0F8 // =unk_3007FF0 
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, dword_814F0FC // =0x68736D53 
	cmp r1, r0
	bne loc_814F0F0
	add r0, r1, #1
	str r0, [r5]
	add r0, r7, #0
	bl sub_814ECB4
	str r6, [r7,#0x2c]
	strb r4, [r7,#8]
	mov r0, #0x80
	lsl r0, r0, #0x18
	str r0, [r7,#4]
	cmp r4, #0
	beq loc_814F0D4
	mov r1, #0
loc_814F0C6:
	strb r1, [r6]
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r6, #0x50 
	cmp r4, #0
	bne loc_814F0C6
loc_814F0D4:
	ldr r0, [r5,#0x20]
	cmp r0, #0
	beq loc_814F0E4
	str r0, [r7,#0x38]
	ldr r0, [r5,#0x24]
	str r0, [r7,#0x3c]
	mov r0, #0
	str r0, [r5,#0x20]
loc_814F0E4:
	str r7, [r5,#0x24]
	ldr r0, off_814F100 // =sub_814E260+1 
	str r0, [r5,#0x20]
	ldr r0, dword_814F0FC // =0x68736D53 
	str r0, [r5]
	str r0, [r7,#0x34]
loc_814F0F0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814F0F8: .word unk_3007FF0
dword_814F0FC: .word 0x68736D53
off_814F100: .word sub_814E260+1
.endfunc // sub_814F08C

.func
.thumb_func
sound_814F104:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5,#0x34]
	ldr r0, dword_814F1E4 // =0x68736D53 
	cmp r1, r0
	bne loc_814F1D8
	add r0, r1, #1
	str r0, [r5,#0x34]
	ldrb r0, [r5,#0xb]
	ldrb r2, [r7,#2]
	cmp r0, #0
	beq loc_814F14A
	ldr r0, [r5]
	cmp r0, #0
	beq loc_814F134
	ldr r0, [r5,#0x2c]
	ldrb r1, [r0]
	mov r0, #0x40 
	and r0, r1
	cmp r0, #0
	bne loc_814F140
loc_814F134:
	ldr r1, [r5,#4]
	ldrh r0, [r5,#4]
	cmp r0, #0
	beq loc_814F14A
	cmp r1, #0
	blt loc_814F14A
loc_814F140:
	ldrb r0, [r7,#2]
	ldrb r1, [r5,#9]
	add r2, r0, #0
	cmp r1, r2
	bhi loc_814F1D4
loc_814F14A:
	mov r1, #0
	str r1, [r5,#4]
	str r7, [r5]
	ldr r0, [r7,#4]
	str r0, [r5,#0x30]
	strb r2, [r5,#9]
	str r1, [r5,#0xc]
	mov r0, #0x96
	strh r0, [r5,#0x1c]
	strh r0, [r5,#0x20]
	add r0, #0x6a 
	strh r0, [r5,#0x1e]
	strh r1, [r5,#0x22]
	strh r1, [r5,#0x24]
	mov r6, #0
	ldr r4, [r5,#0x2c]
	ldrb r0, [r7]
	cmp r6, r0
	bge loc_814F1A4
	ldrb r0, [r5,#8]
	cmp r6, r0
	bge loc_814F1C4
	mov r8, r6
loc_814F178:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_814E4DC
	mov r0, #0xc0
	strb r0, [r4]
	mov r0, r8
	str r0, [r4,#0x20]
	lsl r1, r6, #2
	add r0, r7, #0
	add r0, #8
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4,#0x40]
	add r6, #1
	add r4, #0x50 
	ldrb r0, [r7]
	cmp r6, r0
	bge loc_814F1A4
	ldrb r0, [r5,#8]
	cmp r6, r0
	blt loc_814F178
loc_814F1A4:
	ldrb r0, [r5,#8]
	cmp r6, r0
	bge loc_814F1C4
	mov r0, #0
	mov r8, r0
loc_814F1AE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_814E4DC
	mov r0, r8
	strb r0, [r4]
	add r6, #1
	add r4, #0x50 
	ldrb r0, [r5,#8]
	cmp r6, r0
	blt loc_814F1AE
loc_814F1C4:
	ldrb r1, [r7,#3]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	beq loc_814F1D4
	ldrb r0, [r7,#3]
	bl sub_814EE2C
loc_814F1D4:
	ldr r0, dword_814F1E4 // =0x68736D53 
	str r0, [r5,#0x34]
loc_814F1D8:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814F1E4: .word 0x68736D53
.endfunc // sound_814F104

.func
.thumb_func
sub_814F1E8:
	push {r4-r6,lr}
	add r6, r0, #0
	ldr r1, [r6,#0x34]
	ldr r0, dword_814F224 // =0x68736D53 
	cmp r1, r0
	bne loc_814F21E
	add r0, r1, #1
	str r0, [r6,#0x34]
	ldr r0, [r6,#4]
	mov r1, #0x80
	lsl r1, r1, #0x18
	orr r0, r1
	str r0, [r6,#4]
	ldrb r4, [r6,#8]
	ldr r5, [r6,#0x2c]
	cmp r4, #0
	ble loc_814F21A
loc_814F20A:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_814E4DC
	sub r4, #1
	add r5, #0x50 
	cmp r4, #0
	bgt loc_814F20A
loc_814F21A:
	ldr r0, dword_814F224 // =0x68736D53 
	str r0, [r6,#0x34]
loc_814F21E:
	pop {r4-r6}
	pop {r0}
	bx r0
dword_814F224: .word 0x68736D53
.endfunc // sub_814F1E8

.func
.thumb_func
sub_814F228:
	push {r4-r7,lr}
	add r6, r0, #0
	ldrh r1, [r6,#0x24]
	cmp r1, #0
	beq loc_814F2EA
	ldrh r0, [r6,#0x26]
	sub r0, #1
	strh r0, [r6,#0x26]
	ldr r3, dword_814F268 // =0xFFFF 
	add r2, r3, #0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0
	bne loc_814F2EA
	strh r1, [r6,#0x26]
	ldrh r1, [r6,#0x28]
	mov r0, #2
	and r0, r1
	cmp r0, #0
	beq loc_814F26C
	add r0, r1, #0
	add r0, #0x10
	strh r0, [r6,#0x28]
	and r0, r2
	cmp r0, #0xff
	bls loc_814F2BE
	mov r0, #0x80
	lsl r0, r0, #1
	strh r0, [r6,#0x28]
	strh r3, [r6,#0x24]
	b loc_814F2BE
	.balign 4, 0x00
dword_814F268: .word 0xFFFF
loc_814F26C:
	add r0, r1, #0
	sub r0, #0x10
	strh r0, [r6,#0x28]
	and r0, r2
	lsl r0, r0, #0x10
	cmp r0, #0
	bgt loc_814F2BE
	ldrb r5, [r6,#8]
	ldr r4, [r6,#0x2c]
	cmp r5, #0
	ble loc_814F29E
loc_814F282:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_814E4DC
	ldrh r0, [r6,#0x28]
	mov r1, #1
	and r1, r0
	cmp r1, #0
	bne loc_814F296
	strb r1, [r4]
loc_814F296:
	sub r5, #1
	add r4, #0x50 
	cmp r5, #0
	bgt loc_814F282
loc_814F29E:
	ldrh r1, [r6,#0x28]
	mov r0, #1
	and r0, r1
	cmp r0, #0
	beq loc_814F2B2
	ldr r0, [r6,#4]
	mov r1, #0x80
	lsl r1, r1, #0x18
	orr r0, r1
	b loc_814F2B6
loc_814F2B2:
	mov r0, #0x80
	lsl r0, r0, #0x18
loc_814F2B6:
	str r0, [r6,#4]
	mov r0, #0
	strh r0, [r6,#0x24]
	b loc_814F2EA
loc_814F2BE:
	ldrb r5, [r6,#8]
	ldr r4, [r6,#0x2c]
	cmp r5, #0
	ble loc_814F2EA
	mov r3, #0x80
	mov r7, #0
	mov r2, #3
loc_814F2CC:
	ldrb r1, [r4]
	add r0, r3, #0
	and r0, r1
	cmp r0, #0
	beq loc_814F2E2
	ldrh r0, [r6,#0x28]
	lsr r0, r0, #2
	strb r0, [r4,#0x13]
	add r0, r1, #0
	orr r0, r2
	strb r0, [r4]
loc_814F2E2:
	sub r5, #1
	add r4, #0x50 
	cmp r5, #0
	bgt loc_814F2CC
loc_814F2EA:
	pop {r4-r7}
	pop {r0}
	bx r0
.endfunc // sub_814F228

.func
.thumb_func
sub_814F2F0:
	push {r4,lr}
	add r2, r1, #0
	ldrb r1, [r2]
	mov r0, #1
	and r0, r1
	cmp r0, #0
	beq loc_814F352
	ldrb r0, [r2,#0x12]
	ldrb r1, [r2,#0x13]
	mul r0, r1
	lsr r3, r0, #5
	ldrb r4, [r2,#0x18]
	cmp r4, #1
	bne loc_814F316
	mov r0, #0x16
	ldrsb r0, [r2,r0]
	add r0, #0x80
	mul r0, r3
	lsr r3, r0, #7
loc_814F316:
	mov r0, #0x14
	ldrsb r0, [r2,r0]
	lsl r0, r0, #1
	mov r1, #0x15
	ldrsb r1, [r2,r1]
	add r1, r0, r1
	cmp r4, #2
	bne loc_814F32C
	mov r0, #0x16
	ldrsb r0, [r2,r0]
	add r1, r1, r0
loc_814F32C:
	mov r0, #0x80
	neg r0, r0
	cmp r1, r0
	bge loc_814F338
	add r1, r0, #0
	b loc_814F33E
loc_814F338:
	cmp r1, #0x7f
	ble loc_814F33E
	mov r1, #0x7f
loc_814F33E:
	add r0, r1, #0
	add r0, #0x80
	mul r0, r3
	lsr r0, r0, #8
	strb r0, [r2,#0x10]
	mov r0, #0x7f
	sub r0, r0, r1
	mul r0, r3
	lsr r0, r0, #8
	strb r0, [r2,#0x11]
loc_814F352:
	ldrb r1, [r2]
	mov r0, #4
	and r0, r1
	add r3, r1, #0
	cmp r0, #0
	beq loc_814F396
	mov r1, #0xe
	ldrsb r1, [r2,r1]
	ldrb r0, [r2,#0xf]
	mul r0, r1
	mov r1, #0xc
	ldrsb r1, [r2,r1]
	add r1, r1, r0
	lsl r1, r1, #2
	mov r0, #0xa
	ldrsb r0, [r2,r0]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #0xb
	ldrsb r0, [r2,r0]
	lsl r0, r0, #8
	add r1, r1, r0
	ldrb r0, [r2,#0xd]
	add r1, r1, r0
	ldrb r0, [r2,#0x18]
	cmp r0, #0
	bne loc_814F390
	mov r0, #0x16
	ldrsb r0, [r2,r0]
	lsl r0, r0, #4
	add r1, r1, r0
loc_814F390:
	asr r0, r1, #8
	strb r0, [r2,#8]
	strb r1, [r2,#9]
loc_814F396:
	mov r0, #0xfa
	and r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814F2F0

.func
.thumb_func
sub_814F3A4:
	push {r4-r7,lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r12, r2
	cmp r0, #4
	bne loc_814F3DC
	cmp r5, #0x14
	bhi loc_814F3C0
	mov r5, #0
	b loc_814F3CE
loc_814F3C0:
	add r0, r5, #0
	sub r0, #0x15
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x3b 
	bls loc_814F3CE
	mov r5, #0x3b 
loc_814F3CE:
	ldr r0, off_814F3D8 // =byte_81C0640 
	add r0, r5, r0
	ldrb r0, [r0]
	b loc_814F43E
	.balign 4, 0x00
off_814F3D8: .word byte_81C0640
loc_814F3DC:
	cmp r5, #0x23 
	bhi loc_814F3E8
	mov r0, #0
	mov r12, r0
	mov r5, #0
	b loc_814F3FA
loc_814F3E8:
	add r0, r5, #0
	sub r0, #0x24 
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x82
	bls loc_814F3FA
	mov r5, #0x82
	mov r1, #0xff
	mov r12, r1
loc_814F3FA:
	ldr r3, off_814F444 // =byte_81C05A4 
	add r0, r5, r3
	ldrb r6, [r0]
	ldr r4, off_814F448 // =dword_81C0628 
	mov r2, #0xf
	add r0, r6, #0
	and r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	mov r7, #0
	ldrsh r1, [r0,r7]
	asr r0, r6, #4
	add r6, r1, #0
	asr r6, r0
	add r0, r5, #1
	add r0, r0, r3
	ldrb r1, [r0]
	add r0, r1, #0
	and r0, r2
	lsl r0, r0, #1
	add r0, r0, r4
	mov r2, #0
	ldrsh r0, [r0,r2]
	asr r1, r1, #4
	asr r0, r1
	sub r0, r0, r6
	mov r7, r12
	mul r7, r0
	add r0, r7, #0
	asr r0, r0, #8
	add r0, r6, r0
	mov r1, #0x80
	lsl r1, r1, #4
	add r0, r0, r1
loc_814F43E:
	pop {r4-r7}
	pop {r1}
	bx r1
off_814F444: .word byte_81C05A4
off_814F448: .word dword_81C0628
.endfunc // sub_814F3A4

.func
.thumb_func
sub_814F44C:
	push {lr}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	cmp r0, #2
	beq loc_814F478
	cmp r0, #2
	bgt loc_814F462
	cmp r0, #1
	beq loc_814F468
	b loc_814F48C
loc_814F462:
	cmp r1, #3
	beq loc_814F480
	b loc_814F48C
loc_814F468:
	ldr r1, off_814F474 // =Channel1Duty_Length_Envelope_NR11_NR12_+1 
	mov r0, #8
	strb r0, [r1]
	add r1, #2
	b loc_814F494
	.balign 4, 0x00
off_814F474: .word Channel1Duty_Length_Envelope_NR11_NR12_+1
loc_814F478:
	ldr r1, off_814F47C // =Channel2Duty_Length_Envelope_NR21_NR22_+1 
	b loc_814F48E
off_814F47C: .word Channel2Duty_Length_Envelope_NR21_NR22_+1
loc_814F480:
	ldr r1, off_814F488 // =Channel3Stop_WaveRAMselect_NR30_ 
	mov r0, #0
	b loc_814F496
	.balign 4, 0x00
off_814F488: .word Channel3Stop_WaveRAMselect_NR30_
loc_814F48C:
	ldr r1, off_814F49C // =Channel4Length_Envelope_NR41_NR42_+1 
loc_814F48E:
	mov r0, #8
	strb r0, [r1]
	add r1, #4
loc_814F494:
	mov r0, #0x80
loc_814F496:
	strb r0, [r1]
	pop {r0}
	bx r0
off_814F49C: .word Channel4Length_Envelope_NR41_NR42_+1
.endfunc // sub_814F44C

.func
.thumb_func
sub_814F4A0:
	push {r4,lr}
	add r2, r0, #0
	ldrb r0, [r2,#2]
	ldrb r1, [r2,#3]
	lsl r3, r0, #0x18
	lsr r4, r3, #0x18
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	cmp r4, r1
	bcc loc_814F4C0
	lsr r0, r3, #0x19
	cmp r0, r1
	bcc loc_814F4CC
	mov r0, #0xf
	strb r0, [r2,#0x1b]
	b loc_814F4DA
loc_814F4C0:
	lsr r0, r0, #0x19
	cmp r0, r4
	bcc loc_814F4CC
	mov r0, #0xf0
	strb r0, [r2,#0x1b]
	b loc_814F4DA
loc_814F4CC:
	mov r0, #0xff
	strb r0, [r2,#0x1b]
	ldrb r0, [r2,#2]
	ldrb r1, [r2,#3]
	add r0, r0, r1
	lsr r0, r0, #4
	b loc_814F4EA
loc_814F4DA:
	ldrb r0, [r2,#2]
	ldrb r1, [r2,#3]
	add r0, r0, r1
	lsr r0, r0, #4
	strb r0, [r2,#0xa]
	cmp r0, #0xf
	bls loc_814F4EC
	mov r0, #0xf
loc_814F4EA:
	strb r0, [r2,#0xa]
loc_814F4EC:
	ldrb r1, [r2,#0xa]
	ldrb r0, [r2,#6]
	mul r0, r1
	add r0, #0xf
	asr r0, r0, #4
	strb r0, [r2,#0x19]
	ldrb r1, [r2,#0x1b]
	ldrb r0, [r2,#0x1c]
	and r0, r1
	strb r0, [r2,#0x1b]
	pop {r4}
	pop {r0}
	bx r0
	.balign 4, 0x00
.endfunc // sub_814F4A0

.func
.thumb_func
sub_814F508:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #0x24
	ldr r0, off_814F528 // =unk_3007FF0 
	ldr r0, [r0]
	str r0, [sp,#8]
	ldrb r0, [r0,#0xa]
	cmp r0, #0
	beq loc_814F52C
	sub r0, #1
	ldr r1, [sp,#8]
	strb r0, [r1,#0xa]
	b loc_814F532
off_814F528: .word unk_3007FF0
loc_814F52C:
	mov r0, #0xe
	ldr r3, [sp,#8]
	strb r0, [r3,#0xa]
loc_814F532:
	mov r6, #1
	ldr r0, [sp,#8]
	ldr r4, [r0,#0x1c]
	mov r1, sp
	str r1, [sp,#0x1c]
loc_814F53C:
	ldrb r1, [r4]
	mov r0, #0xc7
	and r0, r1
	add r3, r6, #1
	mov r10, r3
	mov r1, #0x40 
	add r1, r1, r4
	mov r9, r1
	cmp r0, #0
	bne loc_814F552
	b loc_814F96E
loc_814F552:
	cmp r6, #2
	beq loc_814F588
	cmp r6, #2
	bgt loc_814F560
	cmp r6, #1
	beq loc_814F566
	b loc_814F5D0
loc_814F560:
	cmp r6, #3
	beq loc_814F5AC
	b loc_814F5D0
loc_814F566:
	ldr r3, off_814F57C // =Channel1Sweepregister_NR10_ 
	str r3, [sp,#0xc]
	add r3, #2
	ldr r0, off_814F580 // =Channel1Duty_Length_Envelope_NR11_NR12_+1 
	str r0, [sp,#0x10]
	ldr r1, off_814F584 // =Channel1Frequency_Control_NR13_NR14_ 
	str r1, [sp,#0x14]
	add r0, #2
	str r0, [sp,#0x18]
	mov r0, #0
	b loc_814F5E4
off_814F57C: .word Channel1Sweepregister_NR10_
off_814F580: .word Channel1Duty_Length_Envelope_NR11_NR12_+1
off_814F584: .word Channel1Frequency_Control_NR13_NR14_
loc_814F588:
	ldr r3, off_814F5A0 // =Channel1Sweepregister_NR10_+1 
	str r3, [sp,#0xc]
	add r3, #7
	ldr r0, off_814F5A4 // =Channel2Duty_Length_Envelope_NR21_NR22_+1 
	str r0, [sp,#0x10]
	ldr r1, off_814F5A8 // =Channel2Frequency_Control_NR23_NR24_ 
	str r1, [sp,#0x14]
	add r0, #4
	str r0, [sp,#0x18]
	mov r0, #1
	b loc_814F5E4
	.byte 0, 0
off_814F5A0: .word Channel1Sweepregister_NR10_+1
off_814F5A4: .word Channel2Duty_Length_Envelope_NR21_NR22_+1
off_814F5A8: .word Channel2Frequency_Control_NR23_NR24_
loc_814F5AC:
	ldr r3, off_814F5C4 // =Channel3Stop_WaveRAMselect_NR30_ 
	str r3, [sp,#0xc]
	add r3, #2
	ldr r0, off_814F5C8 // =Channel3Length_Volume_NR31_NR32_+1 
	str r0, [sp,#0x10]
	ldr r1, off_814F5CC // =Channel3Frequency_Control_NR33_NR34_ 
	str r1, [sp,#0x14]
	add r0, #2
	str r0, [sp,#0x18]
	mov r0, #2
	b loc_814F5E4
	.balign 4, 0x00
off_814F5C4: .word Channel3Stop_WaveRAMselect_NR30_
off_814F5C8: .word Channel3Length_Volume_NR31_NR32_+1
off_814F5CC: .word Channel3Frequency_Control_NR33_NR34_
loc_814F5D0:
	ldr r3, off_814F638 // =Channel3Stop_WaveRAMselect_NR30_+1 
	str r3, [sp,#0xc]
	add r3, #7
	ldr r0, off_814F63C // =Channel4Length_Envelope_NR41_NR42_+1 
	str r0, [sp,#0x10]
	ldr r1, off_814F640 // =Channel4Frequency_Control_NR43_NR44_ 
	str r1, [sp,#0x14]
	add r0, #4
	str r0, [sp,#0x18]
	mov r0, #3
loc_814F5E4:
	ldr r1, [sp,#0x1c]
	strb r0, [r1]
	ldr r0, [sp,#8]
	ldrb r0, [r0,#0xa]
	str r0, [sp,#4]
	ldr r1, [sp,#0x10]
	ldrb r0, [r1]
	mov r8, r0
	ldrb r2, [r4]
	mov r0, #0x80
	and r0, r2
	cmp r0, #0
	beq loc_814F6DE
	mov r7, #0x40 
	add r0, r7, #0
	and r0, r2
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #1
	mov r10, r0
	mov r1, #0x40 
	add r1, r1, r4
	mov r9, r1
	cmp r5, #0
	beq loc_814F618
	b loc_814F714
loc_814F618:
	mov r0, #3
	strb r0, [r4]
	strb r0, [r4,#0x1d]
	add r0, r4, #0
	str r3, [sp,#0x20]
	bl sub_814F4A0
	ldr r3, [sp,#0x20]
	cmp r6, #2
	beq loc_814F650
	cmp r6, #2
	bgt loc_814F644
	cmp r6, #1
	beq loc_814F64A
	b loc_814F6A4
	.balign 4, 0x00
off_814F638: .word Channel3Stop_WaveRAMselect_NR30_+1
off_814F63C: .word Channel4Length_Envelope_NR41_NR42_+1
off_814F640: .word Channel4Frequency_Control_NR43_NR44_
loc_814F644:
	cmp r6, #3
	beq loc_814F65C
	b loc_814F6A4
loc_814F64A:
	ldrb r0, [r4,#0x1f]
	ldr r1, [sp,#0xc]
	strb r0, [r1]
loc_814F650:
	ldr r0, [r4,#0x24]
	lsl r0, r0, #6
	ldrb r1, [r4,#0x1e]
	add r0, r0, r1
	strb r0, [r3]
	b loc_814F6B0
loc_814F65C:
	ldr r1, [r4,#0x24]
	ldr r0, [r4,#0x28]
	cmp r1, r0
	beq loc_814F684
	ldr r0, [sp,#0xc]
	strb r7, [r0]
	ldr r1, off_814F698 // =Channel3WavePatternRAM_2banks___ 
	ldr r2, [r4,#0x24]
	ldr r0, [r2]
	str r0, [r1]
	add r1, #4
	ldr r0, [r2,#4]
	str r0, [r1]
	add r1, #4
	ldr r0, [r2,#8]
	str r0, [r1]
	add r1, #4
	ldr r0, [r2,#0xc]
	str r0, [r1]
	str r2, [r4,#0x28]
loc_814F684:
	ldr r1, [sp,#0xc]
	strb r5, [r1]
	ldrb r0, [r4,#0x1e]
	strb r0, [r3]
	ldrb r0, [r4,#0x1e]
	cmp r0, #0
	beq loc_814F69C
	mov r0, #0xc0
	b loc_814F6BE
	.balign 4, 0x00
off_814F698: .word Channel3WavePatternRAM_2banks___
loc_814F69C:
	mov r3, #0x80
	neg r3, r3
	strb r3, [r4,#0x1a]
	b loc_814F6C0
loc_814F6A4:
	ldrb r0, [r4,#0x1e]
	strb r0, [r3]
	ldr r0, [r4,#0x24]
	lsl r0, r0, #3
	ldr r1, [sp,#0x14]
	strb r0, [r1]
loc_814F6B0:
	ldrb r0, [r4,#4]
	add r0, #8
	mov r8, r0
	ldrb r0, [r4,#0x1e]
	cmp r0, #0
	beq loc_814F6BE
	mov r0, #0x40 
loc_814F6BE:
	strb r0, [r4,#0x1a]
loc_814F6C0:
	ldrb r1, [r4,#4]
	mov r2, #0
	strb r1, [r4,#0xb]
	mov r0, #0xff
	and r0, r1
	add r3, r6, #1
	mov r10, r3
	mov r1, #0x40 
	add r1, r1, r4
	mov r9, r1
	cmp r0, #0
	bne loc_814F6DA
	b loc_814F82E
loc_814F6DA:
	strb r2, [r4,#9]
	b loc_814F85C
loc_814F6DE:
	mov r0, #4
	and r0, r2
	cmp r0, #0
	bne loc_814F6F8
	ldr r0, off_814F724 // =ControlSoundon_off_NR52_ 
	ldrb r1, [r0]
	ldr r3, [sp,#0x1c]
	ldrb r0, [r3]
	asr r1, r0
	mov r0, #1
	and r1, r0
	cmp r1, #0
	bne loc_814F728
loc_814F6F8:
	ldrb r0, [r4,#0xd]
	sub r0, #1
	strb r0, [r4,#0xd]
	mov r1, #0xff
	and r0, r1
	lsl r0, r0, #0x18
	add r3, r6, #1
	mov r10, r3
	mov r1, #0x40 
	add r1, r1, r4
	mov r9, r1
	cmp r0, #0
	ble loc_814F714
	b loc_814F86E
loc_814F714:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_814F44C
	mov r0, #0
	strb r0, [r4]
	b loc_814F96A
	.balign 4, 0x00
off_814F724: .word ControlSoundon_off_NR52_
loc_814F728:
	mov r0, #0x40 
	and r0, r2
	add r3, r6, #1
	mov r10, r3
	mov r1, #0x40 
	add r1, r1, r4
	mov r9, r1
	cmp r0, #0
	beq loc_814F768
	mov r0, #3
	and r0, r2
	cmp r0, #0
	beq loc_814F768
	mov r0, #0xfc
	and r0, r2
	mov r2, #0
	strb r0, [r4]
	ldrb r1, [r4,#7]
	strb r1, [r4,#0xb]
	mov r0, #0xff
	and r0, r1
	cmp r0, #0
	beq loc_814F79A
	ldrb r0, [r4,#0x1d]
	mov r1, #1
	orr r0, r1
	strb r0, [r4,#0x1d]
	cmp r6, #3
	beq loc_814F85C
	ldrb r3, [r4,#7]
	mov r8, r3
	b loc_814F85C
loc_814F768:
	ldrb r0, [r4,#0xb]
	cmp r0, #0
	bne loc_814F85C
	cmp r6, #3
	bne loc_814F77A
	ldrb r1, [r4,#0x1d]
	mov r0, #1
	orr r0, r1
	strb r0, [r4,#0x1d]
loc_814F77A:
	add r0, r4, #0
	bl sub_814F4A0
	ldrb r0, [r4]
	mov r1, #3
	and r1, r0
	cmp r1, #0
	bne loc_814F7CC
	ldrb r0, [r4,#9]
	sub r0, #1
	strb r0, [r4,#9]
	mov r1, #0xff
	and r0, r1
	lsl r0, r0, #0x18
	cmp r0, #0
	bgt loc_814F7C8
loc_814F79A:
	ldrb r1, [r4,#0xa]
	ldrb r0, [r4,#0xc]
	mul r0, r1
	add r0, #0xff
	asr r0, r0, #8
	mov r1, #0
	strb r0, [r4,#9]
	lsl r0, r0, #0x18
	cmp r0, #0
	beq loc_814F714
	ldrb r0, [r4]
	mov r1, #4
	orr r0, r1
	strb r0, [r4]
	ldrb r0, [r4,#0x1d]
	mov r1, #1
	orr r0, r1
	strb r0, [r4,#0x1d]
	cmp r6, #3
	beq loc_814F86E
	mov r3, #8
	mov r8, r3
	b loc_814F86E
loc_814F7C8:
	ldrb r0, [r4,#7]
	b loc_814F85A
loc_814F7CC:
	cmp r1, #1
	bne loc_814F7D8
loc_814F7D0:
	ldrb r0, [r4,#0x19]
	strb r0, [r4,#9]
	mov r0, #7
	b loc_814F85A
loc_814F7D8:
	cmp r1, #2
	bne loc_814F81E
	ldrb r0, [r4,#9]
	sub r0, #1
	strb r0, [r4,#9]
	mov r1, #0xff
	and r0, r1
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	mov r1, #0x19
	ldrsb r1, [r4,r1]
	cmp r0, r1
	bgt loc_814F81A
loc_814F7F2:
	ldrb r0, [r4,#6]
	cmp r0, #0
	bne loc_814F802
	ldrb r1, [r4]
	mov r0, #0xfc
	and r0, r1
	strb r0, [r4]
	b loc_814F79A
loc_814F802:
	ldrb r0, [r4]
	sub r0, #1
	strb r0, [r4]
	ldrb r1, [r4,#0x1d]
	mov r0, #1
	orr r0, r1
	strb r0, [r4,#0x1d]
	cmp r6, #3
	beq loc_814F7D0
	mov r3, #8
	mov r8, r3
	b loc_814F7D0
loc_814F81A:
	ldrb r0, [r4,#5]
	b loc_814F85A
loc_814F81E:
	ldrb r0, [r4,#9]
	add r0, #1
	strb r0, [r4,#9]
	mov r1, #0xff
	and r0, r1
	ldrb r3, [r4,#0xa]
	cmp r0, r3
	bcc loc_814F858
loc_814F82E:
	ldrb r0, [r4]
	sub r0, #1
	mov r2, #0
	strb r0, [r4]
	ldrb r1, [r4,#5]
	strb r1, [r4,#0xb]
	mov r0, #0xff
	and r0, r1
	cmp r0, #0
	beq loc_814F7F2
	ldrb r0, [r4,#0x1d]
	mov r1, #1
	orr r0, r1
	strb r0, [r4,#0x1d]
	ldrb r0, [r4,#0xa]
	strb r0, [r4,#9]
	cmp r6, #3
	beq loc_814F85C
	ldrb r0, [r4,#5]
	mov r8, r0
	b loc_814F85C
loc_814F858:
	ldrb r0, [r4,#4]
loc_814F85A:
	strb r0, [r4,#0xb]
loc_814F85C:
	ldrb r0, [r4,#0xb]
	sub r0, #1
	strb r0, [r4,#0xb]
	ldr r1, [sp,#4]
	cmp r1, #0
	bne loc_814F86E
	sub r1, #1
	str r1, [sp,#4]
	b loc_814F768
loc_814F86E:
	ldrb r1, [r4,#0x1d]
	mov r0, #2
	and r0, r1
	cmp r0, #0
	beq loc_814F8E8
	cmp r6, #3
	bgt loc_814F8AE
	ldrb r1, [r4,#1]
	mov r0, #8
	and r0, r1
	cmp r0, #0
	beq loc_814F8AE
	ldr r0, off_814F898 // =SoundPWMControl+1 
	ldrb r0, [r0]
	add r1, r0, #0
	cmp r1, #0x3f 
	bgt loc_814F8A0
	ldr r0, [r4,#0x20]
	add r0, #2
	ldr r1, dword_814F89C // =0x7FC 
	b loc_814F8AA
off_814F898: .word SoundPWMControl+1
dword_814F89C: .word 0x7FC
loc_814F8A0:
	cmp r1, #0x7f
	bgt loc_814F8AE
	ldr r0, [r4,#0x20]
	add r0, #1
	ldr r1, dword_814F8B8 // =0x7FE 
loc_814F8AA:
	and r0, r1
	str r0, [r4,#0x20]
loc_814F8AE:
	cmp r6, #4
	beq loc_814F8BC
	ldr r0, [r4,#0x20]
	b loc_814F8C8
	.balign 4, 0x00
dword_814F8B8: .word 0x7FE
loc_814F8BC:
	ldr r1, [sp,#0x14]
	ldrb r0, [r1]
	mov r1, #8
	and r1, r0
	ldr r0, [r4,#0x20]
	orr r0, r1
loc_814F8C8:
	ldr r3, [sp,#0x14]
	strb r0, [r3]
	ldrb r0, [r4,#0x1a]
	mov r1, #0xc0
	and r1, r0
	ldr r0, [r4,#0x20]
	mov r2, #0xfc
	lsl r2, r2, #6
	and r0, r2
	lsr r0, r0, #8
	add r1, r1, r0
	strb r1, [r4,#0x1a]
	mov r0, #0xff
	and r1, r0
	ldr r3, [sp,#0x18]
	strb r1, [r3]
loc_814F8E8:
	ldrb r1, [r4,#0x1d]
	mov r0, #1
	and r0, r1
	cmp r0, #0
	beq loc_814F96A
	ldr r2, off_814F930 // =ControlStereo_Volume_Enable_NR50_NR51_+1 
	ldrb r1, [r4,#0x1c]
	ldrb r0, [r2]
	bic r0, r1
	ldrb r1, [r4,#0x1b]
	orr r0, r1
	strb r0, [r2]
	cmp r6, #3
	bne loc_814F938
	ldr r1, off_814F934 // =dword_81C067C 
	ldrb r0, [r4,#9]
	add r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [sp,#0x10]
	strb r0, [r1]
	ldrb r1, [r4,#0x1a]
	mov r2, #0x80
	add r0, r2, #0
	and r0, r1
	cmp r0, #0
	beq loc_814F96A
	ldr r3, [sp,#0xc]
	strb r2, [r3]
	ldrb r0, [r4,#0x1a]
	ldr r1, [sp,#0x18]
	strb r0, [r1]
	ldrb r1, [r4,#0x1a]
	mov r0, #0x7f
	and r0, r1
	strb r0, [r4,#0x1a]
	b loc_814F96A
off_814F930: .word ControlStereo_Volume_Enable_NR50_NR51_+1
off_814F934: .word dword_81C067C
loc_814F938:
	mov r0, #0xf
	mov r3, r8
	and r3, r0
	mov r8, r3
	ldrb r0, [r4,#9]
	lsl r0, r0, #4
	add r0, r8
	ldr r1, [sp,#0x10]
	strb r0, [r1]
	ldrb r0, [r4,#0x1a]
	mov r2, #0x80
	orr r0, r2
	ldr r3, [sp,#0x18]
	strb r0, [r3]
	cmp r6, #1
	bne loc_814F96A
	ldr r0, [sp,#0xc]
	ldrb r1, [r0]
	mov r0, #8
	and r0, r1
	cmp r0, #0
	bne loc_814F96A
	ldrb r0, [r4,#0x1a]
	orr r0, r2
	strb r0, [r3]
loc_814F96A:
	mov r0, #0
	strb r0, [r4,#0x1d]
loc_814F96E:
	mov r6, r10
	mov r4, r9
	cmp r6, #4
	bgt loc_814F978
	b loc_814F53C
loc_814F978:
	add sp, sp, #0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
.endfunc // sub_814F508

.func
.thumb_func
sub_814F988:
	push {lr}
	add r2, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r3, [r2,#0x34]
	ldr r0, dword_814F9A8 // =0x68736D53 
	cmp r3, r0
	bne loc_814F9A4
	strh r1, [r2,#0x1e]
	ldrh r1, [r2,#0x1c]
	ldrh r0, [r2,#0x1e]
	mul r0, r1
	asr r0, r0, #8
	strh r0, [r2,#0x20]
loc_814F9A4:
	pop {r0}
	bx r0
dword_814F9A8: .word 0x68736D53
.endfunc // sub_814F988

.func
.thumb_func
sub_814F9AC:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsl r6, r2, #0x10
	ldr r3, [r4,#0x34]
	ldr r0, dword_814FA10 // =0x68736D53 
	cmp r3, r0
	bne loc_814FA04
	add r0, r3, #1
	str r0, [r4,#0x34]
	ldrb r2, [r4,#8]
	ldr r1, [r4,#0x2c]
	mov r5, #1
	cmp r2, #0
	ble loc_814FA00
	mov r0, #0x80
	mov r8, r0
	lsr r6, r6, #0x12
	mov r0, #3
	mov r12, r0
loc_814F9DC:
	add r0, r7, #0
	and r0, r5
	cmp r0, #0
	beq loc_814F9F6
	ldrb r3, [r1]
	mov r0, r8
	and r0, r3
	cmp r0, #0
	beq loc_814F9F6
	strb r6, [r1,#0x13]
	mov r0, r12
	orr r0, r3
	strb r0, [r1]
loc_814F9F6:
	sub r2, #1
	add r1, #0x50 
	lsl r5, r5, #1
	cmp r2, #0
	bgt loc_814F9DC
loc_814FA00:
	ldr r0, dword_814FA10 // =0x68736D53 
	str r0, [r4,#0x34]
loc_814FA04:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
dword_814FA10: .word 0x68736D53
.endfunc // sub_814F9AC

.func
.thumb_func
sub_814FA14:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r12, r1
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
	ldr r3, [r4,#0x34]
	ldr r0, dword_814FA84 // =0x68736D53 
	cmp r3, r0
	bne loc_814FA76
	add r0, r3, #1
	str r0, [r4,#0x34]
	ldrb r2, [r4,#8]
	ldr r3, [r4,#0x2c]
	mov r5, #1
	cmp r2, #0
	ble loc_814FA72
	mov r0, #0x80
	mov r9, r0
	lsl r0, r6, #0x10
	asr r7, r0, #0x18
	mov r0, #0xc
	mov r8, r0
loc_814FA4C:
	mov r0, r12
	and r0, r5
	cmp r0, #0
	beq loc_814FA68
	ldrb r1, [r3]
	mov r0, r9
	and r0, r1
	cmp r0, #0
	beq loc_814FA68
	strb r7, [r3,#0xb]
	strb r6, [r3,#0xd]
	mov r0, r8
	orr r0, r1
	strb r0, [r3]
loc_814FA68:
	sub r2, #1
	add r3, #0x50 
	lsl r5, r5, #1
	cmp r2, #0
	bgt loc_814FA4C
loc_814FA72:
	ldr r0, dword_814FA84 // =0x68736D53 
	str r0, [r4,#0x34]
loc_814FA76:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
dword_814FA84: .word 0x68736D53
.endfunc // sub_814FA14

.func
.thumb_func
sub_814FA88:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	ldr r3, [r4,#0x34]
	ldr r0, dword_814FAEC // =0x68736D53 
	cmp r3, r0
	bne loc_814FAE0
	add r0, r3, #1
	str r0, [r4,#0x34]
	ldrb r2, [r4,#8]
	ldr r1, [r4,#0x2c]
	mov r5, #1
	cmp r2, #0
	ble loc_814FADC
	mov r0, #0x80
	mov r8, r0
	mov r0, #3
	mov r12, r0
loc_814FAB8:
	add r0, r7, #0
	and r0, r5
	cmp r0, #0
	beq loc_814FAD2
	ldrb r3, [r1]
	mov r0, r8
	and r0, r3
	cmp r0, #0
	beq loc_814FAD2
	strb r6, [r1,#0x15]
	mov r0, r12
	orr r0, r3
	strb r0, [r1]
loc_814FAD2:
	sub r2, #1
	add r1, #0x50 
	lsl r5, r5, #1
	cmp r2, #0
	bgt loc_814FAB8
loc_814FADC:
	ldr r0, dword_814FAEC // =0x68736D53 
	str r0, [r4,#0x34]
loc_814FAE0:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
dword_814FAEC: .word 0x68736D53
.endfunc // sub_814FA88

.func
.thumb_func
sub_814FAF0:
	push {lr}
	add r2, r0, #0
	mov r1, #0
	mov r0, #0
	strb r0, [r2,#0x1a]
	strb r0, [r2,#0x16]
	ldrb r0, [r2,#0x18]
	cmp r0, #0
	bne loc_814FB08
	ldrb r0, [r2]
	mov r1, #0xc
	b loc_814FB0C
loc_814FB08:
	ldrb r0, [r2]
	mov r1, #3
loc_814FB0C:
	orr r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
.endfunc // sub_814FAF0

.func
.thumb_func
sub_814FB14:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r10, r1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6,#0x34]
	ldr r0, dword_814FB84 // =0x68736D53 
	cmp r1, r0
	bne loc_814FB74
	add r0, r1, #1
	str r0, [r6,#0x34]
	ldrb r5, [r6,#8]
	ldr r4, [r6,#0x2c]
	mov r7, #1
	cmp r5, #0
	ble loc_814FB70
	mov r9, r8
loc_814FB44:
	mov r0, r10
	and r0, r7
	cmp r0, #0
	beq loc_814FB66
	ldrb r1, [r4]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	beq loc_814FB66
	mov r0, r8
	strb r0, [r4,#0x17]
	mov r0, r9
	cmp r0, #0
	bne loc_814FB66
	add r0, r4, #0
	bl sub_814FAF0
loc_814FB66:
	sub r5, #1
	add r4, #0x50 
	lsl r7, r7, #1
	cmp r5, #0
	bgt loc_814FB44
loc_814FB70:
	ldr r0, dword_814FB84 // =0x68736D53 
	str r0, [r6,#0x34]
loc_814FB74:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814FB84: .word 0x68736D53
.endfunc // sub_814FB14

.func
.thumb_func
sub_814FB88:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r10, r1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6,#0x34]
	ldr r0, dword_814FBF8 // =0x68736D53 
	cmp r1, r0
	bne loc_814FBE8
	add r0, r1, #1
	str r0, [r6,#0x34]
	ldrb r5, [r6,#8]
	ldr r4, [r6,#0x2c]
	mov r7, #1
	cmp r5, #0
	ble loc_814FBE4
	mov r9, r8
loc_814FBB8:
	mov r0, r10
	and r0, r7
	cmp r0, #0
	beq loc_814FBDA
	ldrb r1, [r4]
	mov r0, #0x80
	and r0, r1
	cmp r0, #0
	beq loc_814FBDA
	mov r0, r8
	strb r0, [r4,#0x19]
	mov r0, r9
	cmp r0, #0
	bne loc_814FBDA
	add r0, r4, #0
	bl sub_814FAF0
loc_814FBDA:
	sub r5, #1
	add r4, #0x50 
	lsl r7, r7, #1
	cmp r5, #0
	bgt loc_814FBB8
loc_814FBE4:
	ldr r0, dword_814FBF8 // =0x68736D53 
	str r0, [r6,#0x34]
loc_814FBE8:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.balign 4, 0x00
dword_814FBF8: .word 0x68736D53
.endfunc // sub_814FB88

.func
.thumb_func
sub_814FBFC:
	push {r4-r6,lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, [r6,#0x40]
	ldrb r5, [r0]
	add r1, r0, #1
	str r1, [r6,#0x40]
	ldrb r2, [r0,#1]
	ldr r0, [r4,#0x18]
	add r2, r0, r2
	add r0, r1, #1
	str r0, [r6,#0x40]
	ldrb r3, [r1,#1]
	add r0, #1
	str r0, [r6,#0x40]
	// switch 18 cases 
	cmp r5, #0x11
	bls loc_814FC20
	b def_814FC28
loc_814FC20:
	lsl r0, r5, #2
	ldr r1, off_814FC2C // =jpt_814FC28 
	add r0, r0, r1
	ldr r0, [r0]
	// switch jump
	mov pc, r0
	.balign 4, 0x00
off_814FC2C: .word jpt_814FC28
// jump table for switch statement
jpt_814FC28:  .word loc_814FC78
	.word loc_814FC7C
	.word loc_814FC84
	.word loc_814FC8C
	.word loc_814FC96
	.word loc_814FCA4
	.word loc_814FCB2
	.word loc_814FCBA
	.word loc_814FCC2
	.word loc_814FCCA
	.word loc_814FCD2
	.word loc_814FCDA
	.word loc_814FCE2
	.word loc_814FCF0
	.word loc_814FCFE
	.word loc_814FD0C
	.word loc_814FD1A
	.word loc_814FD28
loc_814FC78:
	strb r3, [r2]
	b def_814FC28
loc_814FC7C:
	ldrb r0, [r2]
	add r0, r3, r0
	strb r0, [r2]
	b def_814FC28
loc_814FC84:
	ldrb r0, [r2]
	sub r0, r0, r3
	strb r0, [r2]
	b def_814FC28
loc_814FC8C:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b def_814FC28
loc_814FC96:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
	b def_814FC28
loc_814FCA4:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	sub r1, r1, r0
	strb r1, [r2]
	b def_814FC28
loc_814FCB2:
	ldrb r0, [r2]
	cmp r0, r3
	beq loc_814FD34
	b loc_814FD48
loc_814FCBA:
	ldrb r0, [r2]
	cmp r0, r3
	bne loc_814FD34
	b loc_814FD48
loc_814FCC2:
	ldrb r0, [r2]
	cmp r0, r3
	bhi loc_814FD34
	b loc_814FD48
loc_814FCCA:
	ldrb r0, [r2]
	cmp r0, r3
	bcs loc_814FD34
	b loc_814FD48
loc_814FCD2:
	ldrb r0, [r2]
	cmp r0, r3
	bls loc_814FD34
	b loc_814FD48
loc_814FCDA:
	ldrb r0, [r2]
	cmp r0, r3
	bcc loc_814FD34
	b loc_814FD48
loc_814FCE2:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq loc_814FD34
	b loc_814FD48
loc_814FCF0:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne loc_814FD34
	b loc_814FD48
loc_814FCFE:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhi loc_814FD34
	b loc_814FD48
loc_814FD0C:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bcs loc_814FD34
	b loc_814FD48
loc_814FD1A:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bls loc_814FD34
	b loc_814FD48
loc_814FD28:
	ldr r0, [r4,#0x18]
	add r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bcs loc_814FD48
loc_814FD34:
	ldr r0, off_814FD44 // =dword_3005574 
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_814DA68
	b def_814FC28
	.balign 4, 0x00
off_814FD44: .word dword_3005574
loc_814FD48:
	ldr r0, [r6,#0x40]
	add r0, #4
	str r0, [r6,#0x40]
def_814FC28:
	pop {r4-r6}
	pop {r0}
	bx r0
.endfunc // sub_814FBFC

.func
.thumb_func
sub_814FD54:
	push {lr}
	ldr r2, [r1,#0x40]
	ldrb r3, [r2]
	add r2, #1
	str r2, [r1,#0x40]
	ldr r2, off_814FD70 // =off_81C06C0 
	lsl r3, r3, #2
	add r3, r3, r2
	ldr r2, [r3]
	bl sub_814DA68
	pop {r0}
	bx r0
	.byte 0, 0
off_814FD70: .word off_81C06C0
.endfunc // sub_814FD54

.func
.thumb_func
sub_814FD74:
	push {lr}
	ldr r2, off_814FD84 // =dword_3005570 
	ldr r2, [r2]
	bl sub_814DA68
	pop {r0}
	bx r0
	.balign 4, 0x00
off_814FD84: .word dword_3005570
.endfunc // sub_814FD74

.func
.thumb_func
sub_814FD88:
	push {r4,lr}
	ldr r3, [r1,#0x40]
	ldrb r2, [r3]
	ldr r0, dword_814FDC0 // =0xFFFFFF00 
	and r4, r0
	orr r4, r2
	ldrb r0, [r3,#1]
	lsl r0, r0, #8
	ldr r2, dword_814FDC4 // =0xFFFF00FF 
	and r4, r2
	orr r4, r0
	ldrb r0, [r3,#2]
	lsl r0, r0, #0x10
	ldr r2, dword_814FDC8 // =0xFF00FFFF 
	and r4, r2
	orr r4, r0
	ldrb r0, [r3,#3]
	lsl r0, r0, #0x18
	ldr r2, dword_814FDCC // =0xFFFFFF 
	and r4, r2
	orr r4, r0
	str r4, [r1,#0x28]
	add r3, #4
	str r3, [r1,#0x40]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0, 0
dword_814FDC0: .word 0xFFFFFF00
dword_814FDC4: .word 0xFFFF00FF
dword_814FDC8: .word 0xFF00FFFF
dword_814FDCC: .word 0xFFFFFF
.endfunc // sub_814FD88

.func
.thumb_func
sub_814FDD0:
	ldr r0, [r1,#0x40]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x24 
	strb r2, [r0]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.balign 4, 0x00
.endfunc // sub_814FDD0

.func
.thumb_func
sub_814FDE4:
	ldr r0, [r1,#0x40]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x2c 
	strb r2, [r0]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.balign 4, 0x00
.endfunc // sub_814FDE4

.func
.thumb_func
sub_814FDF8:
	ldr r0, [r1,#0x40]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, #0x2d 
	strb r0, [r2]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.balign 4, 0x00
.endfunc // sub_814FDF8

.func
.thumb_func
sub_814FE0C:
	ldr r0, [r1,#0x40]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, #0x2e 
	strb r0, [r2]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.hword 0x0
.endfunc // sub_814FE0C

.func
.thumb_func
sub_814FE20:
	ldr r0, [r1,#0x40]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, #0x2f 
	strb r0, [r2]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.balign 4, 0x00
.endfunc // sub_814FE20

.func
.thumb_func
sub_814FE34:
	ldr r0, [r1,#0x40]
	ldrb r2, [r0]
	strb r2, [r1,#0x1e]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
.endfunc // sub_814FE34

.func
.thumb_func
sub_814FE40:
	ldr r0, [r1,#0x40]
	ldrb r2, [r0]
	strb r2, [r1,#0x1f]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
.endfunc // sub_814FE40

.func
.thumb_func
sub_814FE4C:
	ldr r0, [r1,#0x40]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, #0x26 
	strb r0, [r2]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.byte 0, 0
.endfunc // sub_814FE4C

.func
.thumb_func
sub_814FE60:
	ldr r0, [r1,#0x40]
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, #0x27 
	strb r0, [r2]
	ldr r0, [r1,#0x40]
	add r0, #1
	str r0, [r1,#0x40]
	bx lr
	.balign 4, 0x00
.endfunc // sub_814FE60

.func
.thumb_func
nullsub_23:
	// <endpool>
	bx lr
.endfunc // nullsub_23

	.balign 4, 0x00
// <endfile>
debug_timestamp:  .byte 0x41, 0x70, 0x72, 0x20, 0x20
	.byte 0x36, 0x20, 0x32, 0x30, 0x30
	.byte 0x36, 0x20, 0x31, 0x34, 0x3A
	.byte 0x31, 0x34, 0x3A, 0x35, 0x34
	.byte 0x0
/*For debugging purposes, connect comment at any range!*/
