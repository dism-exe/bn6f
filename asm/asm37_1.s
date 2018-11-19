.include "asm/asm37_1.inc"

	thumb_func_start sub_814187C
sub_814187C:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	mov r0, r5
	add r0, #8
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x50
	strb r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
	mov r0, #7
	mov r1, #0
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_814187C

	thumb_local_start
sub_814189A:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	bl sub_814187C
	bl sub_81418F0
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_814189A

	thumb_local_start
sub_81418AA:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	mov r0, #1
	strb r0, [r5,#0xd] // (dword_200101C+1 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_81418AA

	thumb_local_start
sub_81418B6:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	mov r0, #0
	strb r0, [r5,#0xd] // (dword_200101C+1 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_81418B6

	thumb_local_start
sub_81418C2:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	mov r0, #0
	strb r0, [r5,#0xe] // (dword_200101C+2 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_81418C2

	thumb_local_start
sub_81418CE:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	mov r0, #1
	strb r0, [r5,#0xe] // (dword_200101C+2 - 0x2001010)
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_81418CE

	thumb_local_start
sub_81418DA:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	strb r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
	strb r1, [r5,#0x15] // (dword_2001024+1 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_81418DA

	thumb_func_start sub_81418E4
sub_81418E4:
	push {r4-r7,lr}
	ldr r5, off_8141B14 // =byte_2001010
	ldrb r0, [r5,#0x16] // (dword_2001024+2 - 0x2001010)
	ldrb r1, [r5,#0x15] // (dword_2001024+1 - 0x2001010)
	ldrb r2, [r5,#0x14] // (dword_2001024 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_81418E4

	thumb_func_start sub_81418F0
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
	thumb_func_end sub_81418F0

	thumb_local_start
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
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_MapGroup]
	strb r0, [r5,#0x18] // (dword_2001028 - 0x2001010)
	ldrb r0, [r7,#oGameState_MapNumber]
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
	thumb_func_end sub_8141914

	thumb_func_start sub_81419A0
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
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_SubsystemIndex]
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
	thumb_func_end sub_81419A0

	thumb_local_start
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
	thumb_func_end sub_8141A10

	thumb_local_start
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
	thumb_func_end sub_8141A70

	thumb_local_start
sub_8141AA8:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_8141ACE
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrh r7, [r7,#oGameState_MapGroup]
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
	thumb_func_end sub_8141AA8

	thumb_local_start
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
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrh r7, [r7,#oGameState_MapGroup]
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
off_8141B24: .word dword_8141C84
	.word dword_8141E04
	.word dword_8141F64
off_8141B30: .word byte_8141B48
	.word byte_8141B90
	.word byte_8141BC8
	.word byte_8141C00
	.word byte_8141C48
	.byte 0, 0, 0, 0
byte_8141B48: .byte 0x14, 0xF8, 0xFE, 0xFA, 0xFF, 0x1, 0x0, 0x18, 0x1E, 0x0
	.byte 0x1, 0x14, 0x6, 0x4, 0x0, 0x1, 0x14, 0x6, 0x4, 0x8
	.byte 0x1E, 0x0, 0x2, 0x14, 0x6, 0x4, 0x8, 0x1E, 0x0, 0x2
	.byte 0x14, 0x6, 0x4, 0x8, 0x1E, 0x0, 0x1, 0x14, 0x6, 0x4
	.byte 0x8, 0x1E, 0x0, 0x1, 0x14, 0x6, 0x4, 0x8, 0x1E, 0x0
	.byte 0x2, 0x14, 0x6, 0x4, 0x8, 0x1E, 0x0, 0x2, 0x14, 0x6
	.byte 0x4, 0x8, 0x1E, 0x8, 0x1, 0x10, 0x87, 0x1B, 0x14, 0x8
	.byte 0x0, 0x0
byte_8141B90: .byte 0x14, 0xC6, 0xFF, 0x2D, 0x0, 0x1, 0x0, 0x18, 0x1E, 0x0, 0x1
	.byte 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x8, 0x4, 0x18
	.byte 0x1E, 0x0, 0x1, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E
	.byte 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x8, 0x4, 0x18, 0x1E
	.byte 0x0, 0x1, 0x1E, 0x8, 0x4, 0x8, 0x1, 0x10, 0xC1, 0x1B, 0x14
	.byte 0x8
byte_8141BC8: .byte 0x14, 0x28, 0x0, 0x14, 0x0, 0x2, 0x0, 0x18, 0x1E, 0x0, 0x1, 0x1E
	.byte 0x10, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x10, 0x4, 0x18, 0x1E, 0x0
	.byte 0x1, 0x1E, 0x10, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E, 0x10, 0x4, 0x18
	.byte 0x1E, 0x0, 0x2, 0x1E, 0x10, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E, 0x10
	.byte 0x4, 0x8, 0x1, 0x10, 0xF9, 0x1B, 0x14, 0x8
byte_8141C00: .byte 0x14, 0xA6, 0xFF, 0xE8, 0x0, 0x2, 0x0, 0x18, 0x1E, 0x0, 0x1
	.byte 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E, 0x8, 0x4, 0x18
	.byte 0x1E, 0x0, 0x1, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E
	.byte 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x8, 0x4, 0x18, 0x1E
	.byte 0x0, 0x2, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x8
	.byte 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x8
	.byte 0x1, 0x10, 0x41, 0x1C, 0x14, 0x8
byte_8141C48: .byte 0x14, 0xFA, 0xFE, 0xAC, 0x0, 0x1, 0x0, 0x18, 0x1E, 0x0, 0x1
	.byte 0x14, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x14, 0x8, 0x4, 0x18
	.byte 0x1E, 0x0, 0x2, 0x14, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14
	.byte 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0xE6, 0x8, 0x4, 0x18, 0x1E
	.byte 0x0, 0x2, 0x14, 0x8, 0x4, 0x18, 0x1E, 0x8, 0x1, 0x10, 0x7B
	.byte 0x1C, 0x14, 0x8, 0x0, 0x0
dword_8141C84: .word 0xE05, 0x4C0000, 0xFEC40000, 0x400000, 0x3, 0xFF
off_8141C9C: .word byte_8141CB4
	.word byte_8141CF0
	.word byte_8141D38
	.word dword_8141D80
	.word dword_8141DC8
	.word 0x0
byte_8141CB4: .byte 0x14, 0x8, 0x0, 0x2E, 0xFF, 0x1, 0x0, 0x18, 0x1E, 0x0, 0x1, 0x14
	.byte 0x6, 0x4, 0x8, 0x14, 0x0, 0x3, 0x14, 0x6, 0x4, 0x8, 0x14, 0x0
	.byte 0x1, 0x14, 0x6, 0x4, 0x8, 0x14, 0x0, 0x3, 0x14, 0x6, 0x4, 0x8
	.byte 0x14, 0x0, 0x1, 0x14, 0x6, 0x4, 0x8, 0x14, 0x0, 0x3, 0x14, 0x6
	.byte 0x4, 0x8, 0x14, 0x8, 0x1, 0x10, 0xE7, 0x1C, 0x14, 0x8, 0x0, 0x0
byte_8141CF0: .byte 0x14, 0x52, 0xFF, 0x44, 0x0, 0x1, 0x0, 0x18, 0x1E, 0x0, 0x1
	.byte 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x1E, 0x8, 0x4, 0x18
	.byte 0x1E, 0x0, 0x0, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E
	.byte 0x8, 0x4, 0x18, 0x1E, 0x0, 0x3, 0x1E, 0x8, 0x4, 0x18, 0x1E
	.byte 0x0, 0x3, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E, 0x8
	.byte 0x4, 0x18, 0x1E, 0x0, 0x2, 0x1E, 0x8, 0x4, 0x18, 0x1E, 0x8
	.byte 0x1, 0x10, 0x31, 0x1D, 0x14, 0x8
byte_8141D38: .byte 0x14, 0xFC, 0xFF, 0xE8, 0xFF, 0x1, 0x0, 0x18, 0x1E, 0x0
	.byte 0x1, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14, 0x6
	.byte 0x4, 0x18, 0x1E, 0x0, 0x1, 0x14, 0x6, 0x4, 0x18, 0x1E
	.byte 0x0, 0x2, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x1, 0x14
	.byte 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14, 0x6, 0x4, 0x18
	.byte 0x1E, 0x0, 0x1, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2
	.byte 0x14, 0x6, 0x4, 0x18, 0x1E
byte_8141D79: .byte 0x8, 0x1, 0x10
	.word byte_8141D79
dword_8141D80: .word 0x17015414, 0x180001FF, 0x1A01001E, 0x1E180408, 0x81A0100
	.word 0x1E1804, 0x4081A01, 0x1001E18, 0x1804081A, 0x1A01001E
	.word 0x1E180408, 0x81A0100, 0x1E1804, 0x4081A01, 0x1001E18
	.word 0x1804081A, 0x1001081E, 0x8141DC1
dword_8141DC8: .word 0xC200A814, 0x18000200, 0x1E02001E, 0x1E180410, 0x101E0200
	.word 0x1E1804, 0x4101E01, 0x1001E18, 0x1804101E, 0x1E02001E
	.word 0x1E180410, 0x101E0200, 0x81E1804, 0x1DFB1001, 0x814
dword_8141E04: .word 0xE05, 0x860000, 0xFE880000, 0x0
	.word 0x3, 0xFF
off_8141E1C: .word byte_8141E34
	.word dword_8141E7C
	.word byte_8141EC4
	.word dword_8141EF0
	.word byte_8141F1C
	.word 0x0
byte_8141E34: .byte 0x14, 0xE, 0x1, 0xE8, 0xFE, 0x2, 0x0, 0x18, 0x1E, 0x0, 0x2, 0x14
	.byte 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0
	.byte 0x2, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14, 0x6, 0x4, 0x18
	.byte 0x1E, 0x0, 0x2, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14, 0x6
	.byte 0x4, 0x18, 0x1E, 0x0, 0x2, 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x2
	.byte 0x14, 0x6, 0x4, 0x18, 0x1E
byte_8141E75: .byte 0x8, 0x1, 0x10
	.word byte_8141E75
dword_8141E7C: .word 0xB400DA14, 0x180002FF, 0x1A02001E, 0x1E180408, 0x81A0100
	.word 0x1E1804, 0x4081A02, 0x1001E18, 0x1804081A, 0x1A02001E
	.word 0x1E180408, 0x81A0100, 0x1E1804, 0x4081A02, 0x1001E18
	.word 0x1804081A, 0x1001081E, 0x8141EBD
byte_8141EC4: .byte 0x14, 0x9E, 0xFF, 0xE, 0x0, 0x3, 0x0, 0x18, 0x1E, 0x0, 0x3, 0x1E
	.byte 0x10, 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E, 0x10, 0x4, 0x18, 0x1E, 0x0
	.byte 0x3, 0x1E, 0x10, 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E, 0x10, 0x4, 0x18
	.byte 0x1E
byte_8141EE9: .byte 0x8, 0x1, 0x10
	.word byte_8141EE9
dword_8141EF0: .word 0xFEFEDC14, 0x180001FF, 0x1E01001E, 0x1E180408, 0x81E0200
	.word 0x1E1804, 0x4081E01, 0x2001E18, 0x1804081E, 0x1001081E
	.word 0x8141F15
byte_8141F1C: .byte 0x14, 0x6A, 0x0, 0xD2, 0xFF, 0x3, 0x0, 0x18, 0x1E, 0x0, 0x3
	.byte 0x14, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E, 0x6, 0x4, 0x18
	.byte 0x1E, 0x0, 0x3, 0x1E, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E
	.byte 0x6, 0x4, 0x18, 0x1E, 0x0, 0x3, 0x1E, 0x6, 0x4, 0x18, 0x1E
	.byte 0x0, 0x0, 0x1E, 0x6, 0x4, 0x18, 0x1E, 0x0, 0x3, 0x1E, 0x6
	.byte 0x4, 0x18, 0x1E, 0x0, 0x0, 0x1E, 0x6, 0x4, 0x18, 0x1E
byte_8141F5D: .byte 0x8, 0x1, 0x10
	.word byte_8141F5D
dword_8141F64: .word 0xE05, 0x1A00000, 0xFEEE0000, 0x0
	.byte 0x3, 0x0, 0x0, 0x0, 0xFF, 0x0, 0x0, 0x0, 0xF0, 0xB5, 0x51, 0x46
	.byte 0xC9, 0x6B, 0xA, 0x79, 0xB, 0x7B, 0x48, 0x79, 0x49, 0x7B, 0x80, 0x0
	.byte 0x89, 0x0, 0xF, 0xB4, 0x7, 0x20, 0x0, 0x21, 0xED, 0xF6, 0xE6, 0xF8
	.byte 0xF, 0xBC, 0x3, 0xD1, 0x9A, 0x42, 0x1, 0xD1, 0x88, 0x42, 0x7, 0xD0
	.byte 0xFF, 0xB4, 0x62, 0x48, 0x23, 0x49, 0xBE, 0xF6, 0x99, 0xFC, 0xFF, 0xF7
	.byte 0x74, 0xFC, 0xFF, 0xBC, 0x0, 0xF0, 0x64, 0xF8, 0x80, 0x0, 0x1E, 0x4F
	.byte 0x3F, 0x58, 0x0, 0x24, 0x38, 0x68, 0x0, 0x42, 0xE, 0xD0, 0x20, 0x1C
	.byte 0x0, 0xF0, 0x92, 0xF8, 0x0, 0x1C, 0xED, 0xF6, 0xCB, 0xF8, 0x4, 0xD1
	.byte 0xF0, 0xB4, 0xD, 0x20, 0xC2, 0xF6, 0x2, 0xFC, 0xF0, 0xBC, 0x1, 0x34
	.byte 0x4, 0x37, 0xED, 0xE7, 0x0, 0xF0, 0x4C, 0xF8, 0x15, 0x49, 0x8, 0x5C
	.byte 0xF, 0x21, 0xFF, 0xF7, 0x74, 0xFC, 0x0, 0xF0, 0x45, 0xF8, 0x11, 0x4F
	.byte 0x80, 0x0, 0x38, 0x58, 0xC1, 0xF6, 0xB8, 0xFA, 0x7, 0x20, 0x2, 0x21
	.byte 0xED, 0xF6, 0xAE, 0xF8, 0x7, 0xD0, 0xF, 0x48, 0x0, 0x21, 0xF4, 0xF6
	.byte 0x3F, 0xFF, 0x7, 0x20, 0x2, 0x21, 0xED, 0xF6, 0x89, 0xF8, 0x5C, 0xF7
	.byte 0xC2, 0xF9, 0x4, 0xD0, 0x54, 0x20, 0xBF, 0xF6, 0xA6, 0xF8, 0xFE, 0xF7
	.byte 0xEB, 0xFC, 0x7, 0x20, 0x0, 0x21, 0xED, 0xF6, 0x7D, 0xF8, 0xF0, 0xBD
	.word off_8141B18
	.byte 0x40, 0x1, 0x0, 0x0
	.word off_8141B24
	.word byte_8142044
byte_8142044: .byte 0x5, 0x5, 0x5, 0xFF
	.word dword_8089DF4
	.byte 0xF0, 0xB5, 0xF0, 0xBD
	thumb_func_end sub_8141AD2

	thumb_func_start sub_8142050
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
	thumb_func_end sub_8142050

	thumb_func_start sub_8142068
sub_8142068:
	ldr r6, off_8142130 // =unk_2000BE0
	mov r1, #0x28
	mul r0, r1
	add r6, r6, r0
	mov pc, lr
	thumb_func_end sub_8142068

	thumb_local_start
sub_8142072:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0xf
	bl sub_81418DA
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8142072

	thumb_func_start sub_8142080
sub_8142080:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrh r7, [r7,#oGameState_MapGroup]
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
	thumb_func_end sub_8142080

	thumb_func_start sub_81420B0
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
	thumb_func_end sub_81420B0

	thumb_func_start sub_81420C8
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
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81420E8
	add r6, #1
loc_81420E8:
	add r4, #1
	b loc_81420D4
loc_81420EC:
	mov r0, r6
	pop {r4-r7,pc}
	thumb_func_end sub_81420C8

	thumb_func_start sub_81420F0
sub_81420F0:
	push {r4-r7,lr}
	mov r4, r0
	bl sub_8142080
	ldr r1, off_814211C // =dword_8142120
	lsl r0, r0, #2
	ldrh r0, [r1,r0]
	add r0, r0, r4
	pop {r4-r7,pc}
	thumb_func_end sub_81420F0

	thumb_local_start
sub_8142102:
	push {r4-r7,lr}
	bl sub_8142080
	ldr r1, off_814211C // =dword_8142120
	lsl r0, r0, #2
	add r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1,#2]
	mov r0, r0
	mov r2, r1
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	pop {r4-r7,pc}
off_814211C: .word dword_8142120
dword_8142120: .word 0x50710, 0x50720, 0x50730, 0x0
off_8142130: .word unk_2000BE0
	thumb_func_end sub_8142102

	thumb_func_start sub_8142134
sub_8142134:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	mov r0, r5
	add r0, #8
	mov r1, #0x40
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #7
	mov r1, #0x40
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8142134

	thumb_local_start
sub_814214E:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	mov r0, #0
	strb r0, [r5,#0xd] // (byte_200078D - 0x2000780)
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_814214E

	thumb_local_start
sub_814215A:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	mov r0, #1
	strb r0, [r5,#0xd] // (byte_200078D - 0x2000780)
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_814215A

	thumb_local_start
sub_8142166:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_8142166

	thumb_func_start sub_814216E
sub_814216E:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_814216E

	thumb_local_start
sub_8142178:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	add r0, #1
	strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_8142178

	thumb_func_start sub_8142184
sub_8142184:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	sub r0, #1
	strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_8142184

	thumb_func_start sub_8142190
sub_8142190:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	add r0, #0x10
	ldrb r0, [r5,r0]
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8142190

	thumb_func_start sub_814219C
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
	thumb_func_end sub_814219C

	thumb_func_start sub_81421B2
sub_81421B2:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	mov r1, r0
	add r1, #0x10
	ldrb r0, [r5,r1]
	sub r2, r0, #1
	blt loc_81421C4
	strb r2, [r5,r1]
	mov r0, r2
loc_81421C4:
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_81421B2

	thumb_func_start sub_81421C8
sub_81421C8:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	strb r0, [r5,#0xb] // (byte_200078B - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_81421C8

	thumb_func_start sub_81421D0
sub_81421D0:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	ldrb r0, [r5,#0xb] // (byte_200078B - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_81421D0

	thumb_func_start sub_81421D8
sub_81421D8:
	push {r4-r7,lr}
	ldr r0, off_8142308 // =byte_2000780
	add r0, #0x18
	pop {r4-r7,pc}
	thumb_func_end sub_81421D8

	thumb_func_start sub_81421E0
sub_81421E0:
	push {r4-r7,lr}
	ldr r0, off_8142308 // =byte_2000780
	ldr r0, [r0,#0x18] // (dword_2000798 - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_81421E0

	thumb_local_start
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
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_81421E8

	thumb_func_start sub_8142204
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
	thumb_func_end sub_8142204

	thumb_func_start sub_8142224
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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8142224

	thumb_func_start sub_814223E
sub_814223E:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	mov r0, #0
	str r0, [r5,#0x28] // (dword_20007A8 - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_814223E

	thumb_func_start sub_8142248
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
	thumb_func_end sub_8142248

	thumb_func_start sub_814227A
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
	thumb_func_end sub_814227A

	thumb_func_start sub_81422B4
sub_81422B4:
	push {r4-r7,lr}
	ldr r5, off_8142308 // =byte_2000780
	mov r0, #0
	str r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
	pop {r4-r7,pc}
	thumb_func_end sub_81422B4

	thumb_local_start
sub_81422BE:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_81422F0
	bl sub_81426CE
	mov r4, r0
	cmp r4, #0xff
	beq loc_81422F0
	bl sub_81427CE
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81422F0
	ldr r1, off_81422F4 // =dword_81422F8
	lsl r4, r4, #1
	ldrh r0, [r1,r4]
	mov r0, r0
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
off_814230C: .word dword_814232C
	.word dword_814234C
	.word dword_814237C
	.word dword_81423B0
	.word dword_81423E8
	.word dword_8142424
	.word dword_8142468
	.word byte_81424BC
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
byte_81424BC: .byte 0x8B, 0x81, 0x1, 0x1, 0x8A, 0x81, 0x1, 0x1, 0x89, 0x81, 0x0
	.byte 0x3, 0x84, 0x83, 0x1, 0x1, 0x83, 0x83, 0x1, 0x2, 0x82, 0x83
	.byte 0x3, 0x3, 0x83, 0x82, 0x3, 0x3, 0x83, 0x81, 0x3, 0x2, 0x85
	.byte 0x7E, 0x0, 0x3, 0x7E, 0x85, 0x0, 0x3, 0x7D, 0x85, 0x3, 0x2
	.byte 0x7E, 0x84, 0x0, 0x2, 0x7E, 0x81, 0x0, 0x1, 0x7D, 0x81, 0x1
	.byte 0x2, 0x7D, 0x80, 0x1, 0x1, 0x7D, 0x7D, 0x2, 0x1, 0x7D, 0x7C
	.byte 0x1, 0x3, 0x7E, 0x7B, 0x3, 0x3, 0x7D, 0x7B, 0x1, 0x1, 0x7C
	.byte 0x7B, 0x1, 0x2, 0x0, 0x0, 0xFF, 0xFF, 0xF0, 0xB5, 0x16, 0x20
	.byte 0x50, 0x21, 0x18, 0x22, 0xEC, 0xF6, 0x31, 0xFE, 0x0, 0xF0, 0x57
	.byte 0xF9, 0x0, 0x1C, 0xEC, 0xF6, 0x21, 0xFE, 0x69, 0xD0, 0x0, 0xF0
	.byte 0x30, 0xF9, 0x1, 0x26, 0x7, 0x20, 0x40, 0x21, 0xEC, 0xF6, 0x17
	.byte 0xFE, 0x2, 0xD0, 0x0, 0x26, 0x0, 0xF0, 0xFB, 0xF8, 0x0, 0x20
	.byte 0xFF, 0xF7, 0x11, 0xFE, 0x0, 0xF0, 0xC3, 0xF8, 0x2D, 0x4F, 0x80
	.byte 0x0, 0x3F, 0x58, 0xE0, 0x4D, 0x0, 0x24, 0x38, 0x88, 0x0, 0x42
	.byte 0x1D, 0xD0, 0x36, 0x42, 0x4, 0xD1, 0xA8, 0x80, 0xF8, 0x78, 0xA8
	.byte 0x70, 0xB8, 0x78, 0xE8, 0x70, 0x20, 0x1C, 0x0, 0xF0, 0x1C, 0xF9
	.byte 0x0, 0x1C, 0xEC, 0xF6, 0xFB, 0xFD, 0xB, 0xD1, 0xF0, 0xB4, 0xF
	.byte 0x20, 0xC2, 0xF6, 0x32, 0xF9, 0xF0, 0xBC, 0xFF, 0xF7, 0xFB, 0xFD
	.byte 0x20, 0x48, 0x0, 0x19, 0x0, 0x1C, 0xEC, 0xF6, 0xD2, 0xFD, 0x1
	.byte 0x34, 0x8, 0x35, 0x4, 0x37, 0xDE, 0xE7, 0xFE, 0xF7, 0x34, 0xFA
	.byte 0x21, 0x20, 0xF4, 0xF6, 0x74, 0xFC, 0x0, 0x20, 0x28, 0x21, 0xEC
	.byte 0xF6, 0xDF, 0xFD, 0x5, 0xD1, 0x0, 0xF0, 0x91, 0xF8, 0x6, 0x28
	.byte 0x1, 0xDA, 0xF2, 0xF6, 0x1B, 0xFF, 0x0, 0xF0, 0x8B, 0xF8, 0x14
	.byte 0x49, 0x9, 0x5C, 0x50, 0x46, 0xC0, 0x6B, 0x41, 0x75, 0x7, 0x20
	.byte 0x44, 0x21, 0xEC, 0xF6, 0xCD, 0xFD, 0x3, 0xD0, 0xE, 0x48, 0x0
	.byte 0x21, 0xF4, 0xF6, 0x5E, 0xFC, 0x7, 0x20, 0x40, 0x21, 0xEC, 0xF6
	.byte 0xA8, 0xFD, 0x7, 0x20, 0x42, 0x21, 0xEC, 0xF6, 0xA4, 0xFD, 0x7
	.byte 0x20, 0x43, 0x21, 0xEC, 0xF6, 0xA0, 0xFD, 0x7, 0x20, 0x46, 0x21
	.byte 0xEC, 0xF6, 0x9C, 0xFD, 0x7, 0x20, 0x47, 0x21, 0xEC, 0xF6, 0x98
	.byte 0xFD, 0xF0, 0xBD, 0x0, 0x0
	.word off_814230C
	.byte 0x50, 0x16, 0x0, 0x0
	.word unk_8089448
	.word byte_8142610
byte_8142610: .byte 0x2D, 0x2D, 0x2D, 0x3C, 0x3C, 0x3C, 0x96, 0x96, 0xF0
	.byte 0xB5, 0xF2, 0xF6, 0xC, 0xFB, 0x25, 0xD0, 0x0, 0xF0
	.byte 0xD5, 0xF8, 0x0, 0x1C, 0xEC, 0xF6, 0x9F, 0xFD, 0x1F
	.byte 0xD0, 0x7, 0x20, 0x42, 0x21, 0xEC, 0xF6, 0x98, 0xFD
	.byte 0x9, 0xD1, 0x53, 0x46, 0xDB, 0x6B, 0x58, 0x7C, 0x0
	.byte 0x42, 0x1D, 0xD0, 0x7, 0x20, 0x42, 0x21, 0xEC, 0xF6
	.byte 0x64, 0xFD, 0x18, 0xE0, 0x7, 0x20, 0x43, 0x21, 0xEC
	.byte 0xF6, 0x89, 0xFD, 0x4, 0xD1, 0x7, 0x20, 0x43, 0x21
	.byte 0xEC, 0xF6, 0x5A, 0xFD, 0xE, 0xE0, 0xF3, 0xF6, 0xA6
	.byte 0xF8, 0x3, 0xD1, 0x14, 0x48, 0x0, 0x21, 0xF4, 0xF6
	.byte 0x12, 0xFC, 0x7, 0x20, 0x42, 0x21, 0xEC, 0xF6, 0x5C
	.byte 0xFD, 0x7, 0x20, 0x43, 0x21, 0xEC, 0xF6, 0x58, 0xFD
	.byte 0x7, 0x20, 0x46, 0x21, 0xEC, 0xF6, 0x70, 0xFD, 0x4
	.byte 0xD0, 0xD, 0x48, 0x0, 0x21, 0xF4, 0xF6, 0x1, 0xFC
	.byte 0xFF, 0xD0, 0x7, 0x20, 0x47, 0x21, 0xEC, 0xF6, 0x66
	.byte 0xFD, 0x4, 0xD0, 0x9, 0x48, 0x0, 0x21, 0xF4, 0xF6
	.byte 0xF7, 0xFB, 0xFF, 0xD0, 0x7, 0x20, 0x46, 0x21, 0xEC
	.byte 0xF6, 0x40, 0xFD, 0x7, 0x20, 0x47, 0x21, 0xEC, 0xF6
	.byte 0x3C, 0xFD, 0xF0, 0xBD, 0x0, 0x0
	.word dword_8089554
	.word unk_80893CC
	.word dword_8089128
	.byte 0x82, 0x4E, 0x8, 0x21, 0x48, 0x43, 0x36, 0x18
	thumb_func_end sub_81422BE

	thumb_local_start
nullsub_37:
	mov pc, lr
	thumb_func_end nullsub_37

	thumb_func_start sub_81426CE
sub_81426CE:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrh r7, [r7,#oGameState_MapGroup]
	mov r6, #0
	ldr r4, off_81426F4 // =byte_81426F8
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
off_81426F4: .word byte_81426F8
byte_81426F8: .byte 0x90, 0x0, 0x90, 0x1, 0x90, 0x2, 0x91, 0x0, 0x91, 0x1, 0x91
	.byte 0x2, 0x93, 0x0, 0x93, 0x1, 0x0, 0x0, 0xF0, 0xB5, 0xFF, 0xF7
	.byte 0xDF, 0xFF, 0x17, 0x4F, 0x40, 0x0, 0x3F, 0x5A, 0x0, 0xF0, 0x39
	.byte 0xF8, 0x4, 0x1C, 0x0, 0x26, 0x1, 0x3C, 0x6, 0xDB, 0x38, 0x19
	.byte 0x0, 0x1C, 0xEC, 0xF6, 0x1F, 0xFD, 0xF8, 0xD0, 0x1, 0x36, 0xF6
	.byte 0xE7, 0x30, 0x1C, 0xF0, 0xBD, 0xF0, 0xB5, 0xFF, 0xF7, 0xCA, 0xFF
	.byte 0xD, 0x4F, 0x40, 0x0, 0x3F, 0x5A, 0x0, 0xF0, 0x24, 0xF8, 0x4
	.byte 0x1C, 0x1, 0x3C, 0x4, 0xDB, 0x38, 0x19, 0x0, 0x1C, 0xEC, 0xF6
	.byte 0xEF, 0xFC, 0xF8, 0xE7, 0x5E, 0x48, 0xC, 0x49, 0xBE, 0xF6, 0xC2
	.byte 0xF8, 0x0, 0xF0, 0x49, 0xF8, 0x0, 0x1C, 0xEC, 0xF6, 0x1, 0xFD
	.byte 0x1, 0xD0, 0xFF, 0xF7, 0x87, 0xFD, 0xF0, 0xBD, 0x0, 0x0
	.word byte_8142774
byte_8142774: .byte 0x50, 0x7, 0x64, 0x7, 0x78, 0x7, 0x8C, 0x7, 0xA0, 0x7, 0xB4
	.byte 0x7, 0xC8, 0x7, 0xDC, 0x7, 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_81426CE

	thumb_local_start
sub_814278C:
	push {r4-r7,lr}
	bl sub_81426CE
	ldr r7, off_8142798 // =byte_814279C
	ldrb r0, [r7,r0]
	pop {r4-r7,pc}
off_8142798: .word byte_814279C
byte_814279C: .byte 0x7, 0xB, 0xC, 0xD, 0xE, 0x10, 0x14, 0x14
	thumb_func_end sub_814278C

	thumb_func_start sub_81427A4
sub_81427A4:
	push {r4-r7,lr}
	mov r4, r0
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
	thumb_func_end sub_81427A4

	thumb_func_start sub_81427CE
sub_81427CE:
	push {r4-r7,lr}
	bl sub_81426CE
	ldr r1, off_81427DC // =byte_81427E0
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	pop {r4-r7,pc}
off_81427DC: .word byte_81427E0
byte_81427E0: .byte 0xF0, 0x7, 0xF1, 0x7, 0xF2, 0x7, 0xF3, 0x7, 0xF4, 0x7, 0xF5
	.byte 0x7, 0xF6, 0x7, 0xF7, 0x7, 0x0, 0x0, 0xF0, 0xB5, 0xFF, 0xF7
	.byte 0x6B, 0xFF, 0x1, 0x49, 0x40, 0x0, 0x8, 0x5A, 0xF0, 0xBD
	.word byte_8142804
byte_8142804: .byte 0x86, 0x6, 0x87, 0x6, 0x88, 0x6, 0x89, 0x6, 0x8A, 0x6, 0x8B
	.byte 0x6, 0x8C, 0x6, 0x8D, 0x6, 0x0, 0x0
	thumb_func_end sub_81427CE

	thumb_func_start sub_8142816
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
	thumb_func_end sub_8142816

	thumb_local_start
sub_814283C:
	push {r4-r7,lr}
	bl sub_81426CE
	ldr r3, off_8142854 // =byte_8142858
	lsl r0, r0, #1
	add r3, r3, r0
	mov r0, #0
	ldrsb r0, [r3,r0]
	mov r1, #1
	ldrsb r1, [r3,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142854: .word byte_8142858
byte_8142858: .byte 0x0, 0x0, 0x8, 0xF8, 0xF8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x10, 0x0, 0xC, 0x4
	.byte 0x4, 0xFC
	thumb_func_end sub_814283C

	thumb_func_start sub_8142868
sub_8142868:
	push {r4-r7,lr}
	mov r1, #0x80
	lsl r1, r1, #1
	svc 6
	mov r2, r0
	mov r0, r1
	mov r1, r2
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
	thumb_func_end sub_8142868

	thumb_func_start sub_8142896
sub_8142896:
	push {r4-r7,lr}
	mov r4, r1
	bl sub_8142868
	push {r0,r1}
	mov r0, r4
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
	thumb_func_end sub_8142896

	thumb_func_start sub_81428C2
sub_81428C2:
	push {r4-r7,lr}
	ldr r5, off_81428D0 // =byte_2006670
	mov r1, #8
	mul r0, r1
	add r0, r0, r5
	pop {r4-r7,pc}
	.byte 0, 0
off_81428D0: .word byte_2006670
	thumb_func_end sub_81428C2

	thumb_func_start sub_81428D4
sub_81428D4:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl sub_8142990
	mov r4, r0
	bl sub_809E2B8
	mov r1, #1
	tst r0, r1
	beq loc_81428F6
	mov r1, r0
	mov r0, r4
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
	mov r0, r4
	mov r2, #1
	bl sub_8142952
	mov r6, r0
	mov r0, r4
	mov r1, r7
	mov r2, #1
	bl sub_8142952
	mov r7, r0
	bl sub_809E1AE
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r6
	bl sub_8142868
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	str r0, [sp,#8]
	mov r0, r7
	bl sub_8142868
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	ldr r1, [sp,#8]
	cmp r0, r1
	ble loc_814294C
	mov r7, r6
loc_814294C:
	mov r0, r7
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_func_end sub_81428D4

	thumb_local_start
sub_8142952:
	push {r4-r7,lr}
	mov r6, r2
	ldr r7, off_814297C // =dword_8142980
	lsl r1, r1, #1
	add r7, r7, r1
	mov r4, r0
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
	thumb_func_end sub_8142952

	thumb_func_start sub_8142990
sub_8142990:
	push {r4-r7,lr}
	bl sub_809E1AE
	bl sub_8142816
	pop {r4-r7,pc}
	thumb_func_end sub_8142990

	thumb_local_start
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
	mov r0, r7
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_814299C

	thumb_func_start sub_81429CA
sub_81429CA:
	push {r4-r7,lr}
	bl sub_81421D8
	mov r6, r0
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_8142990
	mov r4, r0
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
	thumb_func_end sub_81429CA

	thumb_func_start sub_8142A84
sub_8142A84:
	push {r4-r7,lr}
	mov r7, r0
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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142AAC: .word byte_2011EE0
	thumb_func_end sub_8142A84

	thumb_local_start
sub_8142AB0:
	push {r4-r7,lr}
	ldr r5, off_8142C8C // =byte_2006670
	bl sub_81421E0
	mov r7, r0
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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8142AB0

	thumb_func_start sub_8142ADA
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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8142ADA

	thumb_func_start sub_8142B04
sub_8142B04:
	push {r4-r7,lr}
	mov r7, r0
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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8142B04

	thumb_local_start
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
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8142B54: .word byte_2011EE0
	thumb_func_end sub_8142B28

	thumb_func_start sub_8142B58
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
	mov r6, r0
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
	mov r6, r0
	b loc_8142BB2
loc_8142BAA:
	add r5, #8
	add r4, #1
	cmp r4, #0x14
	blt loc_8142B8A
loc_8142BB2:
	mov r0, r6
	pop {r4-r7,pc}
	thumb_func_end sub_8142B58

	thumb_func_start sub_8142BB6
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
	mov r3, r2
	mov r2, r1
	mov r1, r0
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
	thumb_func_end sub_8142BB6

	thumb_func_start sub_8142BF4
sub_8142BF4:
	push {r4-r7,lr}
	mov r7, #0x14
	b loc_8142BFE
	thumb_func_end sub_8142BF4

	thumb_func_start sub_8142BFA
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
	thumb_func_end sub_8142BFA

	thumb_func_start sub_8142C20
sub_8142C20:
	push {r4-r7,lr}
	mov r7, r0
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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8142C20

	thumb_func_start sub_8142C46
sub_8142C46:
	push {r4-r7,lr}
	mov r4, r0
	bl getPETNaviSelect // () -> u8
	bl sub_80010D4
	sub r4, r0, r4
	bge loc_8142C58
	mov r4, #0
loc_8142C58:
	bl getPETNaviSelect // () -> u8
	mov r1, r4
	bl sub_80010EC
	bl sub_809E1AE
	mov r3, r2
	mov r2, r1
	mov r1, r0
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
	thumb_func_end sub_8142C46

	thumb_local_start
sub_8142C90:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_8142C90

	thumb_func_start sub_8142C94
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
	thumb_func_end sub_8142C94

	thumb_func_start sub_8142CB0
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
	thumb_func_end sub_8142CB0

	thumb_func_start sub_8142CC8
sub_8142CC8:
	push {r4-r7,lr}
	ldr r5, off_8142D54 // =byte_200BE70
	ldrb r4, [r5]
	mov r5, r0
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
	mov r3, r1
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	ldrh r0, [r6,r3]
	mov r3, r4
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
	mov r3, r1
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	ldrh r0, [r6,r3]
	mov r3, r4
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
	mov r3, r1
	mul r3, r2
	add r3, r3, r7
	lsl r3, r3, #1
	ldrh r0, [r6,r3]
	mov r3, r4
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
	thumb_func_end sub_8142CC8

	thumb_func_start sub_8142D4C
sub_8142D4C:
	push {r4-r7,lr}
	bl sub_80307D8
	pop {r4-r7,pc}
off_8142D54: .word byte_200BE70
	thumb_func_end sub_8142D4C

	thumb_local_start
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
	mov r7, r0
	lsl r0, r0, #1
	mul r0, r4
	mov r1, r7
	mov r2, #4
	mul r1, r2
	sub r0, r0, r1
	lsl r0, r0, #1
	mov r4, r0
	bl sub_8142DE6
	sub r0, r0, r4
	b locret_8142D9E
loc_8142D84:
	sub r0, r1, r0
	mov r7, r0
	lsl r0, r0, #1
	mul r0, r4
	mov r1, r7
	mov r2, #4
	mul r1, r2
	sub r0, r0, r1
	lsl r0, r0, #1
	mov r4, r0
	bl sub_8142DE6
	add r0, r0, r4
locret_8142D9E:
	pop {r4-r7,pc}
	thumb_func_end sub_8142D58

	thumb_local_start
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
	mov r7, r0
	lsl r0, r0, #1
	mul r0, r4
	mov r1, r7
	mov r2, #4
	mul r1, r2
	add r0, r0, r1
	lsl r0, r0, #1
	mov r4, r0
	pop {r0}
	add r0, r0, r4
	b locret_8142DE4
loc_8142DCC:
	sub r0, r1, r0
	mov r7, r0
	lsl r0, r0, #1
	mul r0, r4
	mov r1, r7
	mov r2, #4
	mul r1, r2
	add r0, r0, r1
	lsl r0, r0, #1
	mov r4, r0
	pop {r0}
	sub r0, r0, r4
locret_8142DE4:
	pop {r4-r7,pc}
	thumb_func_end sub_8142DA0

	thumb_local_start
sub_8142DE6:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r2, [r1,#oGameState_MapGroup]
	cmp r2, #0x85
	bne loc_8142DF6
	mov r1, #3
	b loc_8142DF8
loc_8142DF6:
	ldrb r1, [r1,#5]
loc_8142DF8:
	lsl r1, r1, #1
	ldr r2, off_8142E00 // =byte_8142E0C
	ldrh r0, [r2,r1]
	pop {pc}
off_8142E00: .word byte_8142E0C
off_8142E04: .word byte_200BE70
off_8142E08: .word unk_2000B40
byte_8142E0C: .byte 0x50, 0x3C, 0xD0, 0x45, 0x90, 0x4A, 0xC0, 0x49
off_8142E14: .word byte_8142E24
	.word byte_8142E7C
off_8142E1C: .word byte_8142E48
	.word byte_8142EA0
byte_8142E24: .byte 0x0, 0xFF, 0xE, 0xFF, 0xCE, 0xFF, 0x0, 0x0, 0x1, 0xFF, 0xD2
	.byte 0x0, 0x72, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x30, 0x0, 0xB0, 0xFE
	.byte 0x20, 0x0, 0x3, 0xFF, 0xCE, 0xFF, 0x6E, 0x1, 0x0, 0x0, 0xFF
	.byte 0x4, 0x0, 0x0
byte_8142E48: .byte 0x0, 0xFF, 0x50, 0x0, 0x92, 0xFF, 0x20, 0x0, 0x1, 0xFF, 0xD2
	.byte 0xFF, 0xD0, 0xFF, 0x0, 0x0, 0x2, 0xFF, 0x72, 0x1, 0xCE, 0xFF
	.byte 0x0, 0x0, 0x3, 0xFF, 0x54, 0xFF, 0x6C, 0x1, 0x0, 0x0, 0x4
	.byte 0xFF, 0x10, 0xFF, 0x4E, 0x0, 0x0, 0x0, 0x5, 0xFF, 0x30, 0x0
	.byte 0x30, 0xFE, 0x20, 0x0, 0xFF, 0x6, 0x0, 0x0
byte_8142E7C: .byte 0x0, 0xFF, 0x68, 0xFF, 0x8, 0x0, 0x20, 0x0, 0x1, 0xFF, 0x48
	.byte 0xFF, 0x7A, 0xFE, 0x0, 0x0, 0x2, 0xFF, 0xC, 0xFF, 0x14, 0x2
	.byte 0x0, 0x0, 0x3, 0xFF, 0xA4, 0x1, 0xB6, 0xFF, 0x20, 0x0, 0xFF
	.byte 0x4, 0x0, 0x0
byte_8142EA0: .byte 0x0, 0xFF, 0xC, 0xFF, 0x38, 0xFF, 0x0, 0x0, 0x1, 0xFF, 0x88
	.byte 0x1, 0x32, 0x0, 0x20, 0x0, 0x2, 0xFF, 0xA6, 0x0, 0xB8, 0x0
	.byte 0x0, 0x0, 0x3, 0xFF, 0xA4, 0xFF, 0xBA, 0x1, 0x0, 0x0, 0x4
	.byte 0xFF, 0x28, 0x0, 0xFC, 0x1, 0x0, 0x0, 0xFF, 0x5, 0x0, 0x0
	thumb_func_end sub_8142DE6

	thumb_local_start
sub_8142ECC:
	push {r4-r7,lr}
	bl sub_81430DC
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8142FBA
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r2, [r1,#oGameState_MapGroup]
	ldrb r3, [r1,#oGameState_LastMapGroup]
	ldrb r0, [r1,#oGameState_MapNumber]
	ldrb r1, [r1,#oGameState_LastMapNumber]
	lsl r0, r0, #2
	lsl r1, r1, #2
	push {r0-r3}
	mov r0, #9
	mov r1, #0x60
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	pop {r0-r3}
	bne loc_8142F00
	cmp r2, r3
	bne loc_8142F00
	cmp r0, r1
	beq loc_8142F08
loc_8142F00:
	push {r0-r7}
	bl sub_81431C6
	pop {r0-r7}
loc_8142F08:
	bl sub_8143088
	lsl r0, r0, #2
	ldr r7, off_8142FC0 // =off_8142E14
	ldr r7, [r7,r0]
	mov r4, #0
loc_8142F14:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_8142F44
	mov r0, r4
	bl sub_81430B6
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8142F3E
	push {r4-r7}
	mov r0, #0x16
	ldrh r1, [r7,#2]
	lsl r1, r1, #0x10
	ldrh r2, [r7,#4]
	lsl r2, r2, #0x10
	ldrh r3, [r7,#6]
	lsl r3, r3, #0x10
	bl sub_80047E0
	pop {r4-r7}
loc_8142F3E:
	add r4, #1
	add r7, #8
	b loc_8142F14
loc_8142F44:
	ldrb r0, [r7,#1]
	bl sub_81433C2
	bl sub_8143088
	lsl r0, r0, #2
	ldr r7, off_8142FC4 // =off_8142E1C
	ldr r7, [r7,r0]
	mov r4, #0
loc_8142F56:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_8142F8C
	mov r0, r4
	bl sub_81430B6
	mov r0, r1
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8142F86
	push {r4-r7}
	mov r0, #1
	lsl r0, r0, #8
	orr r4, r0
	mov r0, #0x16
	ldrh r1, [r7,#2]
	lsl r1, r1, #0x10
	ldrh r2, [r7,#4]
	lsl r2, r2, #0x10
	ldrh r3, [r7,#6]
	lsl r3, r3, #0x10
	bl sub_80047E0
	pop {r4-r7}
loc_8142F86:
	add r4, #1
	add r7, #8
	b loc_8142F56
loc_8142F8C:
	ldr r5, off_8143084 // =byte_2000D20
	mov r4, #0
loc_8142F90:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_8142FA6
	push {r4-r7}
	mov r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_80047E0
	pop {r4-r7}
loc_8142FA6:
	add r5, #0x14
	add r4, #1
	cmp r4, #8
	blt loc_8142F90
	bl sub_81430F4
	mov r0, #9
	mov r1, #0x60
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_8142FBA:
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_8142FC0: .word off_8142E14
off_8142FC4: .word off_8142E1C
	thumb_func_end sub_8142ECC

	thumb_local_start
sub_8142FC8:
	push {r4-r7,lr}
	bl sub_8034C36
	beq loc_814305E
	bl sub_81430DC
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_814305E
	bl sub_8143314
	bl sub_8143248
	mov r0, #9
	mov r1, #0x62
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8143010
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r0, [r3,#oGameState_Unk_11]
	tst r0, r0
	beq loc_8143048
	bl sub_81433DA
	beq loc_8143008
	mov r0, #9
	mov r1, #0x62
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b loc_8143048
loc_8143008:
	mov r0, #0x69
	bl sound_play // () -> void
	b loc_8143048
loc_8143010:
	mov r0, #9
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8143024
	mov r0, #9
	mov r1, #0x63
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b loc_8143048
loc_8143024:
	bl sub_80357AE
	bne loc_8143038
	ldr r0, off_8143080 // =unk_808C2F0
	mov r1, #0
	bl init_s_02011C50_8036E90
	mov r0, #1
	bl sub_81433F6
loc_8143038:
	mov r0, #9
	mov r1, #0x62
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #9
	mov r1, #0x63
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_8143048:
	bl sub_8143198
	bne loc_814306E
	bl sub_8143088
	ldr r1, off_8143074 // =off_8143078
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov r1, #0
	bl init_s_02011C50_8036E90
loc_814305E:
	mov r0, #9
	mov r1, #0x62
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #9
	mov r1, #0x63
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_814306E:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143074: .word off_8143078
off_8143078: .word dword_808BF48+0xBC
	.word dword_808BF48+0x1AC
off_8143080: .word unk_808C2F0
off_8143084: .word byte_2000D20
	thumb_func_end sub_8142FC8

	thumb_func_start sub_8143088
sub_8143088:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrh r7, [r7,#oGameState_MapGroup]
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
	thumb_func_end sub_8143088

	thumb_func_start sub_81430B6
sub_81430B6:
	push {r4-r7,lr}
	mov r4, r0
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
	thumb_func_end sub_81430B6

	thumb_local_start
sub_81430DC:
	push {r4-r7,lr}
	bl sub_8143088
	ldr r1, off_81430EC // =byte_81430F0
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81430EC: .word byte_81430F0
byte_81430F0: .byte 0x6E, 0x9, 0x6F, 0x9
	thumb_func_end sub_81430DC

	thumb_local_start
sub_81430F4:
	push {r4-r7,lr}
	bl reqBBS_setFlag_e17b0f7_8140A00
	bl sub_8143088
	ldr r4, off_8143164 // =off_8143168
	lsl r0, r0, #2
	ldr r4, [r4,r0]
loc_8143104:
	ldrb r0, [r4]
	tst r0, r0
	beq loc_8143128
	ldr r1, off_8143190 // =unk_2011EA0
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	ldr r0, [r4,#4]
	str r0, [r1]
	ldr r0, dword_8143194 // =0x16f1
	ldrb r1, [r4]
	sub r1, #1
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	add r4, #8
	b loc_8143104
loc_8143128:
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0xF0, 0xB5, 0xFD, 0xF7, 0x6D, 0xFC, 0xFF, 0xF7, 0xA9
	.byte 0xFF, 0xB, 0x4C, 0x80, 0x0, 0x24, 0x58, 0x20, 0x78
	.byte 0x0, 0x42, 0xE, 0xD0, 0x13, 0x49, 0x4, 0x22, 0x50
	.byte 0x43, 0x9, 0x18, 0x0, 0x20, 0x8, 0x60, 0x11, 0x48
	.byte 0x21, 0x78, 0x1, 0x39, 0x40, 0x18, 0x0, 0x1C, 0xEB
	.byte 0xF6, 0xEA, 0xFF, 0x8, 0x34, 0xED, 0xE7, 0x0, 0x20
	.byte 0xF0, 0xBD
off_8143164: .word off_8143168
off_8143168: .word dword_8143170
	.word dword_8143184
dword_8143170: .word 0xFFFFFF02, 0x8050502, 0xFFFFFF0C, 0x8FF0502, 0x0
dword_8143184: .word 0xFFFFFF01, 0x8010502, 0x0
off_8143190: .word unk_2011EA0
dword_8143194: .word 0x16F1
	thumb_func_end sub_81430F4

	thumb_func_start sub_8143198
sub_8143198:
	push {r4-r7,lr}
	bl sub_81433CA
	mov r6, r0
	mov r0, #0
	bl sub_81430B6
	mov r7, r0
	mov r4, #0
loc_81431AA:
	mov r0, r7
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81431B4
	add r4, #1
loc_81431B4:
	add r7, #1
	sub r6, #1
	bgt loc_81431AA
	bl sub_81433CA
	mov r1, r0
	mov r0, r4
	cmp r0, r1
	pop {r4-r7,pc}
	thumb_func_end sub_8143198

	thumb_local_start
sub_81431C6:
	push {r4-r7,lr}
	ldr r5, off_8143398 // =byte_2000D20
	bl sub_814339C
	mov r0, r5
	ldr r1, off_81431F4 // =0xa0
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	bl sub_81430B6
	mov r0, r0
	mov r2, #8
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	mov r0, #0
	bl sub_81430B6
	mov r0, r1
	mov r2, #8
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	pop {r4-r7,pc}
off_81431F4: .word 0xA0
	thumb_func_end sub_81431C6

	thumb_func_start sub_81431F8
sub_81431F8:
	push {r4-r7,lr}
	ldr r5, off_8143398 // =byte_2000D20
	mov r1, #0x14
	mul r0, r1
	add r0, r0, r5
	pop {r4-r7,pc}
	thumb_func_end sub_81431F8

	thumb_func_start sub_8143204
sub_8143204:
	push {r4-r7,lr}
	bl sub_81431F8
	mov r5, r0
	bl change_20013F0_800151C // () -> int
	mov r1, #0x3f
	and r1, r0
	ldr r0, dword_814321C // =0x1e
	add r0, r0, r1
	strh r0, [r5,#6]
	pop {r4-r7,pc}
dword_814321C: .word 0x1E
	thumb_func_end sub_8143204

	thumb_func_start sub_8143220
sub_8143220:
	push {r4-r7,lr}
	mov r4, r0
	bl sub_81431F8
	mov r5, r0
	bl change_20013F0_800151C // () -> int
	mov r1, #0x3f
	and r1, r0
	ldr r0, dword_8143244 // =0x1e
	add r0, r0, r1
	strh r0, [r5,#2]
	mov r0, r4
	mov r1, #1
	bl sub_81432FA
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8143244: .word 0x1E
	thumb_func_end sub_8143220

	thumb_local_start
sub_8143248:
	push {r4-r7,lr}
	mov r6, #0
	ldr r7, off_8143398 // =byte_2000D20
loc_814324E:
	ldrb r0, [r7]
	tst r0, r0
	beq loc_814328A
	add r4, r6, #1
	mov r5, r7
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
	mov r0, r6
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
	thumb_func_end sub_8143248

	thumb_func_start sub_8143294
sub_8143294:
	push {r4-r7,lr}
	mov r4, #0
	ldr r5, off_8143398 // =byte_2000D20
loc_814329A:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_81432CE
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
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
	mov r0, r4
	mov r1, #1
	bl sub_81432FA
loc_81432CE:
	add r5, #0x14
	add r4, #1
	cmp r4, #8
	blt loc_814329A
	pop {r4-r7,pc}
	thumb_func_end sub_8143294

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
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_local_start
sub_81432FA:
	push {r4-r7,lr}
	mov r4, r1
	bl sub_81431F8
	mov r5, r0
	ldrb r0, [r5]
	cmp r0, #3
	beq locret_814330C
	strb r4, [r5]
locret_814330C:
	pop {r4-r7,pc}
	.byte 0, 0
	.byte 0x1E, 0x0, 0x0, 0x0
	thumb_func_end sub_81432FA

	thumb_local_start
sub_8143314:
	push {r4-r7,lr}
	ldr r5, off_8143398 // =byte_2000D20
	bl sub_8143470
	bne locret_814338E
	bl sub_814343A
	mov r4, #0
loc_8143324:
	ldrb r0, [r5]
	tst r0, r0
	bne loc_8143386
	mov r0, #1
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	bl change_20013F0_800151C // () -> int
	strh r0, [r5,#4]
	mov r0, r4
	bl sub_8143204
	mov r0, r4
	bl sub_8143220
	push {r4-r7}
	bl change_20013F0_800151C // () -> int
	mov r1, #0xf0
	and r0, r1
	lsl r0, r0, #1
	ldr r1, off_8143390 // =byte_8006660
	ldr r2, off_8143394 // =byte_80065E0
	ldrsh r1, [r1,r0]
	ldrsh r2, [r2,r0]
	mov r0, #0x80
	lsl r0, r0, #4
	mul r1, r0
	mul r2, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	ldr r3, [r0,#0x1c]
	sub r1, r3, r1
	str r1, [r5,#8]
	ldr r3, [r0,#0x20]
	sub r2, r3, r2
	str r2, [r5,#0xc]
	mov r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_80047E0
	pop {r4-r7}
	b locret_814338E
loc_8143386:
	add r5, #0x14
	add r4, #1
	cmp r4, #6
	blt loc_8143324
locret_814338E:
	pop {r4-r7,pc}
off_8143390: .word byte_8006660
off_8143394: .word byte_80065E0
off_8143398: .word byte_2000D20
	thumb_func_end sub_8143314

	thumb_local_start
sub_814339C:
	push {r4-r7,lr}
	mov r0, #2
	bl sub_8003A64
	ldr r5, off_81434E0 // =byte_2001010
	mov r0, r5
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
	thumb_func_end sub_814339C

	thumb_local_start
sub_81433C2:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	strb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_81433C2

	thumb_local_start
sub_81433CA:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	ldrb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_81433CA

	thumb_local_start
sub_81433D2:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	strb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_81433D2

	thumb_func_start sub_81433DA
sub_81433DA:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	ldrb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_81433DA

	thumb_func_start sub_81433E4
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
	thumb_func_end sub_81433E4

	thumb_local_start
sub_81433F6:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	ldrb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
	sub r1, r1, r0
	bge loc_8143402
	mov r1, #0
loc_8143402:
	strb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_81433F6

	thumb_local_start
sub_8143406:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	bl change_20013F0_800151C // () -> int
	mov r1, #3
	and r0, r1
	strb r0, [r5,#0xa] // (byte_200101A - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_8143406

	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	sub sp, sp, #0x10
	mov r0, sp
	mov r1, #0x10
	mov r2, #0x20
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	mov r0, sp
	mov r1, #0
	ldrb r2, [r5,#0xa] // (byte_200101A - 0x2001010)
	strb r1, [r0,r2]
	mov r1, #4
	bl sub_8000E3A
	strb r0, [r5,#0xa] // (byte_200101A - 0x2001010)
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_local_start
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
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	mov r0, sp
	mov r1, #3
	bl sub_8000E3A
	ldr r1, off_8143460 // =byte_8143464
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	add sp, sp, #0x10
	mov r0, #0
	pop {r4-r7,pc}
off_8143460: .word byte_8143464
byte_8143464: .byte 0x5, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0, 0x0
	thumb_func_end sub_814343A

	thumb_local_start
sub_8143470:
	push {r4-r7,lr}
	ldr r5, off_81434E0 // =byte_2001010
	ldr r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	sub r0, #1
	bge loc_814347C
	mov r0, #0
loc_814347C:
	str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8143470

	thumb_func_start sub_8143482
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
	thumb_func_end sub_8143482

	thumb_local_start
sub_81434BA:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_81434DC
	bl sub_8143088
	cmp r0, #0xff
	beq loc_81434DC
	bl sub_81430DC
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81434DC
	mov r0, #0
	pop {r4-r7,pc}
loc_81434DC:
	mov r0, #1
	pop {r4-r7,pc}
off_81434E0: .word byte_2001010
byte_81434E4: .byte 0xCC, 0x0, 0x38, 0xFF, 0x5, 0x5, 0x2, 0x0, 0x8C, 0x0, 0xF2, 0x0
	.byte 0x7, 0x7, 0x2, 0x0, 0x1C, 0x0, 0xBE, 0x0, 0x5, 0x5, 0x3, 0x0
	.byte 0x42, 0xFF, 0x28, 0x0, 0x7, 0x7, 0x3, 0x0, 0xEC, 0xFE, 0x24, 0xFF
	.byte 0x1, 0x1, 0x3, 0x0
byte_814350C: .byte 0x1E, 0x1, 0x6C, 0xFF, 0x3, 0x3, 0x2, 0x0, 0x54, 0x0, 0x72, 0x0
	.byte 0x5, 0x5, 0x2, 0x0, 0x6, 0x0, 0x5C, 0x1, 0x5, 0x5, 0x3, 0x0
	.byte 0xFE, 0xFD, 0x5C, 0x0, 0x3, 0x3, 0x2, 0x0
byte_814352C: .byte 0x5E, 0x1, 0x6A, 0xFF, 0x3, 0x3, 0x2, 0x0, 0x82, 0x0, 0x72, 0x1
	.byte 0x5, 0x5, 0x2, 0x0, 0x3A, 0xFF, 0xDA, 0x1, 0x1, 0x1, 0x3, 0x0
	.byte 0x9E, 0xFE, 0x78, 0x0, 0x7, 0x7, 0x2, 0x0, 0xA8, 0xFE, 0x10, 0x0
	.byte 0x1, 0x1, 0x2, 0x0, 0x52, 0x0, 0xA6, 0xFE, 0x7, 0x7, 0x3, 0x0
	.byte 0xA4, 0x0, 0x7E, 0xFE, 0x5, 0x5, 0x3, 0x0
byte_8143564: .byte 0xFE, 0x0, 0xCC, 0xFF, 0x7, 0x7, 0x2, 0x0, 0xA6, 0x0, 0xF2, 0x0
	.byte 0x5, 0x5, 0x2, 0x0, 0x24, 0x0, 0x40, 0x1, 0x7, 0x7, 0x3, 0x0
	.byte 0x82, 0xFE, 0x92, 0x1, 0x5, 0x5, 0x2, 0x0, 0x9E, 0xFE, 0x68, 0xFF
	.byte 0x3, 0x3, 0x2, 0x0, 0x9E, 0xFF, 0xC, 0xFF, 0x7, 0x7, 0x2, 0x0
	.byte 0x7E, 0x0, 0xC, 0xFF, 0x3, 0x3, 0x2, 0x0
byte_814359C: .byte 0xB4, 0x0, 0x42, 0xFF, 0x5, 0x5, 0x82, 0x0, 0xDE, 0x0, 0x7, 0x7
	.byte 0x8, 0x0, 0xB4, 0x0, 0x5, 0x5, 0x42, 0xFF, 0x14, 0x0, 0x7, 0x7
	.byte 0x0, 0xFF, 0x1A, 0xFF, 0x1, 0x1
byte_81435BA: .byte 0x14, 0x1, 0x80, 0xFF, 0x3, 0x3, 0x36, 0x0, 0x72, 0x0, 0x5, 0x5
	.byte 0xE6, 0xFF, 0x52, 0x1, 0x5, 0x5, 0xF4, 0xFD, 0x76, 0x0, 0x3, 0x3
byte_81435D2: .byte 0x54, 0x1, 0x7E, 0xFF, 0x3, 0x3, 0x6E, 0x0, 0x7C, 0x1, 0x5, 0x5
	.byte 0x48, 0xFF, 0xDA, 0x1, 0x1, 0x1, 0x94, 0xFE, 0x6A, 0x0, 0x7, 0x7
	.byte 0xB6, 0xFE, 0x1A, 0x0, 0x1, 0x1, 0x5A, 0x0, 0xBA, 0xFE, 0x3, 0x3
	.byte 0xB8, 0x0, 0x76, 0xFE, 0x1, 0x1
byte_81435FC: .byte 0xF4, 0x0, 0xB8, 0xFF, 0x7, 0x7, 0x92, 0x0, 0xFC, 0x0, 0x5, 0x5
	.byte 0x24, 0x0, 0x32, 0x1, 0x7, 0x7, 0x96, 0xFE, 0x9C, 0x1, 0x1, 0x1
	.byte 0x94, 0xFE, 0x7C, 0xFF, 0x3, 0x3, 0x94, 0xFF, 0x20, 0xFF, 0x3, 0x3
	.byte 0x74, 0x0, 0x20, 0xFF, 0x3, 0x3, 0x0, 0x0
byte_8143628: .byte 0xCC, 0x0, 0x14, 0xFF, 0x5, 0x5, 0xA8, 0x0, 0xF2, 0x0, 0x1, 0x1
	.byte 0x1C, 0x0, 0xF3, 0x0, 0x3, 0x3, 0xE, 0xFF, 0x32, 0x0, 0x5, 0x5
	.byte 0xEC, 0xFE, 0x52, 0xFF, 0x3, 0x3
byte_8143646: .byte 0x44, 0x1, 0x6C, 0xFF, 0x3, 0x3, 0x54, 0x0, 0x54, 0x0, 0x7, 0x7
	.byte 0x6, 0x0, 0x8E, 0x1, 0x1, 0x1, 0x22, 0xFE, 0x5C, 0x0, 0x1, 0x1
byte_814365E: .byte 0x84, 0x1, 0x6A, 0xFF, 0x3, 0x3, 0x86, 0x0, 0x52, 0x1, 0x7, 0x7
	.byte 0x2, 0xFF, 0xDA, 0x1, 0x5, 0x5, 0xBC, 0xFE, 0x7A, 0x0, 0x1, 0x1
	.byte 0xA6, 0xFE, 0xF2, 0xFF, 0x7, 0x7, 0x26, 0x0, 0xAA, 0xFE, 0x5, 0x5
	.byte 0xA4, 0x0, 0xA8, 0xFE, 0x3, 0x3
byte_8143688: .byte 0x26, 0x1, 0xCC, 0xFF, 0x3, 0x3, 0xA6, 0x0, 0xCC, 0x0, 0x1, 0x1
	.byte 0x24, 0x0, 0x70, 0x1, 0x5, 0x5, 0x82, 0xFE, 0x66, 0x1, 0x7, 0x7
	.byte 0xC8, 0xFE, 0x66, 0xFF, 0x1, 0x1, 0xC4, 0xFF, 0xC, 0xFF, 0x3, 0x3
	.byte 0xA4, 0x0, 0xC, 0xFF, 0x1, 0x1, 0x0, 0x0
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
byte_81437CC: .byte 0xE6, 0x0, 0x4C, 0x0, 0x40, 0x0, 0x0, 0x3, 0xC2, 0xFF, 0xD0
	.byte 0x0, 0x40, 0x0, 0x0, 0x4, 0x62, 0xFE, 0xD0, 0xFF, 0x40, 0x0
	.byte 0x0, 0x5, 0xF4, 0xFE, 0x4A, 0xFF, 0x40, 0x0, 0x0, 0x6, 0x16
	.byte 0xFF, 0xA, 0x1, 0x40, 0x0, 0x1, 0x0, 0x18, 0xFF, 0xAC, 0xFF
	.byte 0x40, 0x0, 0x1, 0x1, 0xC8, 0x0, 0x8A, 0xFF, 0x40, 0x0, 0x1
	.byte 0x2
off_8143804: .word dword_8143814
	.word byte_81438D0
off_814380C: .word dword_81438B8
	.word byte_8143960
dword_8143814: .word 0x7B78FF00, 0x7C78FF01, 0x7D78FF02, 0x7E78FF03, 0x8276FF04
	.word 0x8277FF05, 0x8278FF06, 0x8677FF07, 0x8678FF08, 0x837DFF09
	.word 0x847DFF0A, 0x857DFF0B, 0x827EFF0C, 0x837EFF0D, 0x857EFF0E
	.word 0x827FFF0F, 0x837FFF10, 0x847FFF11, 0x857FFF12, 0x8682FF13
	.word 0x8782FF14, 0x8386FF15, 0x8286FF16, 0x7F82FF17, 0x7E83FF18
	.word 0x7E84FF19, 0x7F83FF1A, 0x7F84FF1B, 0x7E85FF1C, 0x7E86FF1D
	.word 0x7A86FF1E, 0x7B86FF1F, 0x7C86FF20, 0x7781FF21, 0x7782FF22
	.word 0x7783FF23, 0x797FFF24, 0x7A7FFF25, 0x767BFF26, 0x767CFF27
	.word 0x28FF
dword_81438B8: .word 0x79868486, 0x847E7780, 0x82758676, 0x0, 0x0
	.byte 0xFF, 0xFF, 0x0, 0x0
byte_81438D0: .byte 0x0, 0xFF, 0x74, 0x87, 0x1, 0xFF, 0x75, 0x87, 0x2, 0xFF
	.byte 0x7A, 0x80, 0x3, 0xFF, 0x7B, 0x80, 0x4, 0xFF, 0x7C, 0x80
	.byte 0x5, 0xFF, 0x7D, 0x80, 0x6, 0xFF, 0x7D, 0x81, 0x7, 0xFF
	.byte 0x7D, 0x82, 0x8, 0xFF, 0x7D, 0x84, 0x9, 0xFF, 0x7D, 0x85
	.byte 0xA, 0xFF, 0x7F, 0x7F, 0xB, 0xFF, 0x7F, 0x81, 0xC, 0xFF
	.byte 0x7F, 0x82, 0xD, 0xFF, 0x81, 0x7F, 0xE, 0xFF, 0x81, 0x80
	.byte 0xF, 0xFF, 0x84, 0x80, 0x10, 0xFF, 0x84, 0x81, 0x11, 0xFF
	.byte 0x84, 0x82, 0x12, 0xFF, 0x85, 0x84, 0x13, 0xFF, 0x86, 0x84
	.byte 0x14, 0xFF, 0x81, 0x87, 0x15, 0xFF, 0x82, 0x87, 0x16, 0xFF
	.byte 0x87, 0x84, 0x17, 0xFF, 0x83, 0x87, 0x18, 0xFF, 0x84, 0x87
	.byte 0x19, 0xFF, 0x88, 0x84, 0x1A, 0xFF, 0x7D, 0x7B, 0x1B, 0xFF
	.byte 0x83, 0x7B, 0x1C, 0xFF, 0x80, 0x77, 0x1D, 0xFF, 0x81, 0x77
	.byte 0x1E, 0xFF, 0x82, 0x77, 0x1F, 0xFF, 0x84, 0x79, 0x20, 0xFF
	.byte 0x85, 0x79, 0x21, 0xFF, 0x86, 0x79, 0x22, 0xFF, 0x83, 0x79
	.byte 0xFF, 0x23, 0x0, 0x0
byte_8143960: .byte 0x7D, 0x7F, 0x79, 0x80, 0x7D, 0x83, 0x7F, 0x80, 0x7F
	.byte 0x83, 0x84, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0xFF, 0xFF, 0x0, 0x0, 0xF0, 0xB5, 0x16
	.byte 0x20, 0x70, 0x21, 0x30, 0x22, 0xEB, 0xF6, 0xFD, 0xFB
	.byte 0x0, 0xF0, 0x48, 0xF9, 0x0, 0x1C, 0xEB, 0xF6, 0xED
	.byte 0xFB, 0x5A, 0xD1, 0x51, 0x46, 0xC9, 0x6B, 0xA, 0x79
	.byte 0xB, 0x7B, 0x48, 0x79, 0x49, 0x7B, 0x80, 0x0, 0x89
	.byte 0x0, 0xF, 0xB4, 0xD, 0x20, 0x30, 0x21, 0xEB, 0xF6
	.byte 0xDD, 0xFB, 0xF, 0xBC, 0x3, 0xD1, 0x9A, 0x42, 0x1
	.byte 0xD1, 0x88, 0x42, 0x3, 0xD0, 0xFF, 0xB4, 0x0, 0xF0
	.byte 0x3A, 0xF9, 0xFF, 0xBC, 0x0, 0xF0, 0xB7, 0xF8, 0x80
	.byte 0x0, 0x21, 0x4F, 0x3F, 0x58, 0x0, 0x24, 0x38, 0x78
	.byte 0xFF, 0x28, 0x18, 0xD0, 0x20, 0x1C, 0x0, 0xF0, 0xC4
	.byte 0xF8, 0xE, 0x1C, 0x0, 0x1C, 0xEB, 0xF6, 0xC5, 0xFB
	.byte 0xD, 0xD1, 0x30, 0x1C, 0xEB, 0xF6, 0xA5, 0xFB, 0xF0
	.byte 0xB4, 0x78, 0x88, 0x0, 0xF0, 0xE7, 0xF9, 0x13, 0x1C
	.byte 0xA, 0x1C, 0x1, 0x1C, 0x2B, 0x20, 0xC0, 0xF6, 0xF3
	.byte 0xFE, 0xF0, 0xBC, 0x1, 0x34, 0x4, 0x37, 0xE3, 0xE7
	.byte 0x78, 0x78, 0x0, 0xF0, 0xA8, 0xFA, 0x0, 0xF0, 0x3E
	.byte 0xF9, 0x0, 0xF0, 0x29, 0xF9, 0xD, 0x20, 0x36, 0x21
	.byte 0xEB, 0xF6, 0xA6, 0xFB, 0x9, 0xD0, 0xD, 0x48, 0x0
	.byte 0x21, 0xF3, 0xF6, 0x37, 0xFA, 0x0, 0xF0, 0x89, 0xFA
	.byte 0xD, 0x20, 0x36, 0x21, 0xEB, 0xF6, 0x7F, 0xFB, 0xD
	.byte 0x20, 0x30, 0x21, 0xEB, 0xF6, 0x7B, 0xFB, 0xD, 0x20
	.byte 0x34, 0x21, 0xEB, 0xF6, 0x77, 0xFB, 0xD, 0x20, 0x35
	.byte 0x21, 0xEB, 0xF6, 0x73, 0xFB, 0x0, 0x20, 0xF0, 0xBD
	.byte 0x0, 0x0
	.word off_8143804
	.word unk_8093358
	.byte 0xF0, 0xB5, 0xF1, 0xF6, 0xEE, 0xF8, 0x53, 0xD0, 0x0
	.byte 0xF0, 0xDC, 0xF8, 0x0, 0x1C, 0xEB, 0xF6, 0x81, 0xFB
	.byte 0x4D, 0xD1, 0xD, 0x20, 0x34, 0x21, 0xEB, 0xF6, 0x7A
	.byte 0xFB, 0x9, 0xD1, 0x53, 0x46, 0xDB, 0x6B, 0x58, 0x7C
	.byte 0x0, 0x42, 0x2C, 0xD0, 0xD, 0x20, 0x34, 0x21, 0xEB
	.byte 0xF6, 0x46, 0xFB, 0x27, 0xE0, 0xD, 0x20, 0x35, 0x21
	.byte 0xEB, 0xF6, 0x6B, 0xFB, 0x4, 0xD1, 0xD, 0x20, 0x35
	.byte 0x21, 0xEB, 0xF6, 0x3C, 0xFB, 0x1D, 0xE0, 0xF1, 0xF6
	.byte 0x88, 0xFE, 0x12, 0xD1, 0x0, 0xF0, 0xA3, 0xF9, 0x0
	.byte 0xF0, 0x1A, 0xFA, 0xD, 0xD0, 0x0, 0xF0, 0xFB, 0xF9
	.byte 0x0, 0xF0, 0x7F, 0xF8, 0x4, 0xD1, 0x1B, 0x48, 0x0
	.byte 0x21, 0xF3, 0xF6, 0xEA, 0xF9, 0x3, 0xE0, 0x1B, 0x48
	.byte 0x0, 0x21, 0xF3, 0xF6, 0xE5, 0xF9, 0xD, 0x20, 0x34
	.byte 0x21, 0xEB, 0xF6, 0x2F, 0xFB, 0xD, 0x20, 0x35, 0x21
	.byte 0xEB, 0xF6, 0x2B, 0xFB, 0x0, 0xF0, 0x39, 0xF9, 0x88
	.byte 0x42, 0x8, 0xD1, 0x0, 0xF0, 0x27, 0xF8, 0xD, 0x49
	.byte 0x80, 0x0, 0x8, 0x58, 0x0, 0x21, 0xF3, 0xF6, 0xD1
	.byte 0xF9, 0x9, 0xD1, 0x0, 0xF0, 0x3F, 0xFA, 0xE, 0xD1
	.byte 0x0, 0xF0, 0x1B, 0xF8, 0x1, 0x1C, 0xA, 0x48, 0xF3
	.byte 0xF6, 0xC7, 0xF9, 0xFF, 0xD1, 0xD, 0x20, 0x34, 0x21
	.byte 0xEB, 0xF6, 0x10, 0xFB, 0xD, 0x20, 0x35, 0x21, 0xEB
	.byte 0xF6, 0xC, 0xFB, 0xF0, 0xBD, 0x0, 0x0
	.word byte_8143B1C
byte_8143B1C: .byte 0x78, 0x2C, 0x9, 0x8
	.word unk_8092A98
	.word unk_8092DE8
	.word unk_809326C
	.word unk_80933B8
	thumb_func_end sub_81434BA

	thumb_local_start
sub_8143B30:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrh r7, [r7,#oGameState_MapGroup]
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
	thumb_func_end sub_8143B30

	thumb_func_start sub_8143B5E
sub_8143B5E:
	push {r4-r7,lr}
	mov r4, r0
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
	thumb_func_end sub_8143B5E

	thumb_func_start sub_8143B88
sub_8143B88:
	push {r4-r7,lr}
	mov r4, r0
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
	mov r0, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143BAC: .word off_814380C
	thumb_func_end sub_8143B88

	push {r4-r7,lr}
	mov r4, r0
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
	mov r0, r5
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
	thumb_local_start
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
	thumb_func_end sub_8143BFC

	thumb_local_start
sub_8143C18:
	push {r4-r7,lr}
	bl sub_8143B30
	ldr r1, off_8143C28 // =loc_8143C2C
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8143C28: .word loc_8143C2C
	thumb_func_end sub_8143C18

loc_8143C2C:
	lsr r2, r6, #0x14
	lsr r3, r6, #0x14
	push {r4-r7,lr}
	bl sub_8143F20
	mov r0, #0
	bl sub_8143B5E
	mov r0, r0
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
	mov r0, r0
	bl SetEventFlag
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
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #8
	b loc_8143CE0
loc_8143D04:
	mov r0, #0
	pop {r4-r7,pc}
off_8143D08: .word off_8143D0C
off_8143D0C: .word byte_8143D14
	.word dword_8143D30
byte_8143D14: .byte 0x1, 0xFF, 0xFF, 0xFF, 0x2, 0x14, 0xFF, 0x8, 0x4, 0xFF, 0xFF
	.byte 0xFF, 0x2, 0x14, 0x5, 0x8, 0x5, 0xFF, 0xFF, 0xFF, 0x2, 0x14
	.byte 0xFF, 0x8, 0x0, 0x0, 0x0, 0x0
dword_8143D30: .word 0xFFFFFF01, 0x8011402, 0xFFFFFF02, 0x8031402, 0x0
off_8143D44: .word unk_2011EA0
dword_8143D48: .word 0x16F1
	thumb_func_start sub_8143D4C
sub_8143D4C:
	push {r4-r7,lr}
	bl sub_8143F60
	mov r7, r0
	mov r4, #0
	mov r6, #0
loc_8143D58:
	mov r0, r4
	bl sub_8143B5E
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8143D68
	add r6, #1
loc_8143D68:
	add r4, #1
	cmp r4, r7
	blt loc_8143D58
	bl sub_8143F60
	mov r1, r0
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8143D4C

	thumb_local_start
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
	thumb_func_end sub_8143D7A

	thumb_local_start
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
	thumb_func_end sub_8143D9E

	thumb_func_start sub_8143DBC
sub_8143DBC:
	push {r4-r7,lr}
	mov r1, #0x80
	lsl r1, r1, #1
	svc 6
	mov r2, r0
	mov r0, r1
	mov r1, r2
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
	thumb_func_end sub_8143DBC

	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl sub_8143EA4
	mov r4, r0
	bl sub_809E2B8
	mov r1, #1
	tst r0, r1
	beq loc_8143E0C
	mov r1, r0
	mov r0, r4
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
	mov r0, r4
	mov r2, #1
	bl sub_8143E68
	mov r6, r0
	mov r0, r4
	mov r1, r7
	mov r2, #1
	bl sub_8143E68
	mov r7, r0
	bl sub_809E1AE
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r6
	bl sub_8143DBC
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	str r0, [sp,#8]
	mov r0, r7
	bl sub_8143DBC
	ldr r2, [sp]
	ldr r3, [sp,#4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	ldr r1, [sp,#8]
	cmp r0, r1
	ble loc_8143E62
	mov r7, r6
loc_8143E62:
	mov r0, r7
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_local_start
sub_8143E68:
	push {r4-r7,lr}
	mov r6, r2
	ldr r7, off_8143E90 // =dword_8143E94
	lsl r1, r1, #1
	add r7, r7, r1
	mov r4, r0
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
	thumb_func_end sub_8143E68

	thumb_local_start
sub_8143EA4:
	push {r4-r7,lr}
	bl sub_809E1AE
	bl sub_8143D7A
	pop {r4-r7,pc}
	thumb_func_end sub_8143EA4

	push {r4-r7,lr}
	mov r4, r1
	bl sub_8143DBC
	push {r0,r1}
	mov r0, r4
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
	mov r6, r0
	bl sub_8143B30
	lsl r0, r0, #2
	ldr r7, off_8143F18 // =off_8143804
	ldr r7, [r7,r0]
	mov r4, #0
loc_8143EEC:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_8143F12
	mov r0, r4
	bl sub_8143B5E
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8143F0C
	ldrh r0, [r7,#2]
	cmp r0, r6
	bne loc_8143F0C
	mov r1, r4
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
off_8143F18: .word off_8143804
	thumb_local_start
sub_8143F1C:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_8143F1C

	thumb_local_start
sub_8143F20:
	push {r4-r7,lr}
	mov r0, #5
	bl sub_8003A64
	ldr r5, off_81440D4 // =byte_2001010
	mov r0, r5
	// memBlock
	add r0, #8
	// size
	mov r1, #0x40
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8143F20

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
	thumb_local_start
sub_8143F60:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010
	ldr r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
	pop {r4-r7,pc}
	thumb_func_end sub_8143F60

	thumb_local_start
sub_8143F68:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010
	str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8143F68

	thumb_local_start
sub_8143F72:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010
	ldr r0, [r5,#0xc] // (dword_200101C - 0x2001010)
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8143F72

	thumb_local_start
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
	thumb_func_end sub_8143F7C

	thumb_func_start sub_8143F90
sub_8143F90:
	push {r4-r7,lr}
	ldr r5, off_81440D4 // =byte_2001010
	bl sub_8143F72
	mov r4, r0
	bl sub_8143BFC
	mov r1, r0
	mov r0, #0x28
	lsl r0, r0, #0x10
	svc 6
	mul r0, r4
	pop {r4-r7,pc}
	thumb_func_end sub_8143F90

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
	thumb_func_start sub_8144010
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
	thumb_func_end sub_8144010

	thumb_func_start sub_8144048
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
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_SubsystemIndex]
	cmp r0, #4
	bne loc_81440A6
	bl sub_8143F7C
loc_81440A6:
	bl sub_8143F1C
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8144048

	thumb_local_start
sub_81440AE:
	push {r4-r7,lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_81440D0
	bl sub_8143B30
	cmp r0, #0xff
	beq loc_81440D0
	bl sub_8143C18
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81440D0
	mov r0, #0
	pop {r4-r7,pc}
loc_81440D0:
	mov r0, #1
	pop {r4-r7,pc}
off_81440D4: .word byte_2001010
	thumb_func_end sub_81440AE
