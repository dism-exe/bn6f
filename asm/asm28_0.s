.include "asm/asm28_0.inc"

.func
.thumb_func
sub_8098BE8:
	push {r4-r7,lr}
	ldr r0, dword_8098C1C // =0x1ca0 
	ldrb r1, [r5,#6]
	cmp r1, #0xff
	beq loc_8098C16
	add r0, r0, r1
	bl sub_802F238
	ldrb r0, [r5,#7]
	tst r0, r0
	beq loc_8098C16
	ldr r0, dword_8098C20 // =0x1d20 
	ldrb r1, [r5,#6]
	add r0, r0, r1
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	ldr r0, dword_8098C24 // =0x1da0 
	ldrb r1, [r5,#6]
	add r0, r0, r1
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl SetEventFlag // (u16 entryFlagBitfield) -> void
loc_8098C16:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8098C1C: .word 0x1CA0
dword_8098C20: .word 0x1D20
dword_8098C24: .word 0x1DA0
off_8098C28:
	.word Undocumented_GreenSwap, 0x0, 0x0, 0x0
	.byte 0x0C, 0x08, 0x08, 0xFF

	.word 0x4000105, 0x0, 0x0, 0x0
	.byte 0x0c, 0x02, 0x0c, 0xff

	.word 0x4000003, 0x0, 0x0, 0x0
	.byte 0x0c, 0x02, 0x0c, 0xff

	.word 0x4000206, 0x0, 0x0, 0x0
	.byte 0x4, 0x10, 0x4, 0xff

byte_8098C78: .byte 0x3F, 0x0, 0x6, 0x4B, 0xCD, 0x8C, 0x9, 0x8, 0x1C, 0x5, 0xFF
	.byte 0x8B, 0x8C, 0x9, 0x8, 0x3A, 0x5, 0x4, 0x80, 0x2, 0xFF, 0x1E
	.byte 0x27, 0x6, 0xFF, 0xFF, 0x7, 0x4C, 0x80, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x15, 0x9F, 0x8C, 0x9, 0x8, 0x3F, 0x4, 0x0
unk_8098CA2: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x4B 
	.byte 0xCD
	.byte 0x8C
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  5
	.byte 0xFF
	.byte 0xB5
	.byte 0x8C
	.byte  9
	.byte  8
	.byte 0x3A 
	.byte  5
	.byte  4
	.byte 0x80
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x27 
	.byte  6
	.byte 0xFF
	.byte 0xFF
	.byte  7
	.byte 0x4C 
	.byte 0x81
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
.endfunc // sub_8098BE8

	ldmia r1!, {r0,r2,r4}
	lsr r4, r1, #6
	sub r7, #8
	// <mkdata>
	.hword 0x4 // mov r4, r0
	ldrb r1, [r5,#4]
	ldr r0, off_8098CF8 // =off_8098C28 
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	str r0, [r5,#0x34]
	ldrb r1, [r0,#0x13]
	strb r1, [r5,#5]
	ldrb r1, [r0,#0x10]
	strb r1, [r5,#6]
	ldrb r1, [r0,#0x11]
	strb r1, [r5,#7]
	mov r2, r10
	ldr r2, [r2,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#0x12]
	cmp r1, #0xff
	beq loc_8098CF4
	strb r1, [r2,#oGameState_Unk_16]
	mov r1, #0xff
	strb r1, [r2,#oGameState_Unk_17]
loc_8098CF4:
	mov r0, #0
	mov pc, lr
off_8098CF8: .word off_8098C28
	.word InterruptEnableRegister+1
	.word 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0x41B, 0xFFFFFFFF, 0x4000802, 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0x455, 0xFFFFFFFF, 0x4000201, 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0x511, 0xFFFFFFFF, 0x4000290, 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0x601, 0xFF012020, 0x4000290, 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0x62D, 0xFFFFFFFF, 0x4000002, 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0x811, 0xFFFF3032, 0x4000802, 0x0, 0x0, 0x0
	.word 0xFF0C020C, 0xC0B, 0xFFFFFFFF, 0x4000201, 0x0, 0x0, 0x0
	.byte 0xC
	.byte  2
	.byte 0xC
	.byte 0xFF
	.byte 0x11
	.byte 0xE
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xFF
	.byte 0xFF
byte_8098DDC: .byte 0x3F, 0x0, 0x6, 0x29, 0xFF, 0x31, 0x17, 0x3E, 0x4, 0x34
	.byte 0x3, 0x2, 0x3A, 0xFF, 0x14, 0x4, 0x80, 0x4, 0x80, 0x19
	.byte 0xFF, 0x1F, 0x17, 0x1B, 0x8E, 0x9, 0x8, 0x4B, 0x25, 0x8E
	.byte 0x9, 0x8, 0x2, 0xFF, 0x1E, 0x50, 0x8, 0x1F, 0x27, 0x6
	.byte 0xFF, 0xFF, 0x2, 0xFF, 0x78, 0x7, 0x4B, 0x6D, 0x8E, 0x9
	.byte 0x8, 0x4C, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x15, 0x20
	.byte 0x8E, 0x9, 0x8, 0x15, 0x20, 0x8E, 0x9, 0x8, 0x3F, 0x4
	.byte 0x0, 0x0, 0xF0, 0xB5, 0x29, 0x79, 0xF, 0x4C, 0x1C, 0x22
	.byte 0x4A, 0x43, 0xA4, 0x18, 0x6C, 0x63, 0x21, 0x7C, 0xA9, 0x71
	.byte 0x61, 0x7C, 0xE9, 0x71, 0x52, 0x46, 0xD2, 0x6B, 0xA1, 0x7C
	.byte 0xFF, 0x29, 0x2, 0xD0, 0x91, 0x75, 0xFF, 0x21, 0xD1, 0x75
	.byte 0xA0, 0x8A, 0x0, 0x42, 0x2, 0xD0, 0x0, 0x1C, 0x96, 0xF7
	.byte 0x5F, 0xF9, 0xE0, 0x8A, 0x0, 0x42, 0x2, 0xD0, 0x0, 0x1C
	.byte 0x96, 0xF7, 0x67, 0xF9, 0x0, 0x20, 0xF0, 0xBD, 0x0, 0x0
	.byte 0xFC, 0x8C, 0x9, 0x8, 0xF0, 0xB5, 0x57, 0x46, 0xFF, 0x6B
	.byte 0x29, 0x79, 0x8, 0x4C, 0x1C, 0x22, 0x4A, 0x43, 0xA4, 0x18
	.byte 0x20, 0x7E, 0xFF, 0x28, 0x0, 0xD0, 0xB8, 0x71, 0x60, 0x7E
	.byte 0xFF, 0x28, 0x0, 0xD0, 0xF8, 0x71, 0xA0, 0x7E, 0xFF, 0x28
	.byte 0x0, 0xD0, 0x38, 0x72, 0x0, 0x20, 0xF0, 0xBD, 0xFC, 0x8C
	.byte 0x9, 0x8, 0x84, 0x3B, 0x7A, 0x88, 0x0, 0x7, 0x0, 0x1
	.byte 0x38, 0x1, 0xDC, 0xFF, 0x0, 0x0, 0x38, 0x1, 0xD0, 0xFF
	.byte 0x0, 0x0, 0x84, 0x3B, 0x7A, 0x88, 0x0, 0x7, 0x0, 0x1
	.byte 0xE8, 0xFF, 0xCE, 0xFE, 0x0, 0x0, 0xE8, 0xFF, 0xC2, 0xFE
	.byte 0x0, 0x0, 0x84, 0x3B, 0x7A, 0x88, 0x0, 0x7, 0x0, 0x1
	.byte 0xFA, 0xFF, 0x5E, 0xFF, 0x0, 0x0, 0xFA, 0xFF, 0x52, 0xFF
	.byte 0x0, 0x0, 0x84, 0x3B, 0x7A, 0x88, 0x0, 0x7, 0x0, 0x1
	.byte 0x48, 0xFF, 0xD0, 0x0, 0x0, 0x0, 0x48, 0xFF, 0xC4, 0x0
	.byte 0x0, 0x0, 0x4, 0xDA, 0x2, 0x2, 0x7, 0x1, 0x0, 0x1
	.byte 0x4, 0x0, 0x24, 0x0, 0x0, 0x0, 0x10, 0x0, 0x24, 0x0
	.byte 0x0, 0x0, 0x4, 0xDA, 0x2, 0x2, 0x13, 0x1, 0x0, 0x1
	.byte 0x4, 0x0, 0x24, 0x0, 0x0, 0x0, 0x10, 0x0, 0x24, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x4, 0x7, 0x0, 0x1
	.byte 0xFA, 0xFF, 0xE, 0x0, 0x10, 0x0, 0xFA, 0xFF, 0x2, 0x0
	.byte 0x10, 0x0, 0x4, 0xFA, 0x2, 0x2, 0xE, 0x7, 0x0, 0x1
	.byte 0xFA, 0xFF, 0xE, 0x0, 0x10, 0x0, 0xFA, 0xFF, 0x2, 0x0
	.byte 0x10, 0x0, 0x4, 0xDA, 0x2, 0x2, 0xF, 0x7, 0x0, 0x1
	.byte 0xE2, 0x0, 0x76, 0xFF, 0x80, 0x0, 0xE2, 0x0, 0x6A, 0xFF
	.byte 0x80, 0x0, 0x4, 0xDA, 0x2, 0x2, 0x15, 0x1, 0x0, 0x1
	.byte 0xE8, 0xFF, 0xBE, 0x0, 0x0, 0x0, 0xF4, 0xFF, 0xBE, 0x0
	.byte 0x0, 0x0, 0x4, 0xDA, 0x2, 0x2, 0xF, 0x5, 0x0, 0x1
	.byte 0xC0, 0xFF, 0x34, 0xFF, 0x40, 0x0, 0xB4, 0xFF, 0x34, 0xFF
	.byte 0x40, 0x0, 0x4, 0xDA, 0x2, 0x2, 0x15, 0x3, 0x0, 0x1
	.byte 0x8A, 0xFE, 0x1A, 0xFF, 0x20, 0x0, 0x8A, 0xFE, 0x26, 0xFF
	.byte 0x20, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x11, 0x7, 0x0, 0x1
	.byte 0x5C, 0xFF, 0x24, 0x0, 0x0, 0x0, 0x5C, 0xFF, 0x18, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x1A, 0x7, 0x0, 0x1
	.byte 0x5C, 0xFF, 0x24, 0x0, 0x0, 0x0, 0x5C, 0xFF, 0x18, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x15, 0x7, 0x0, 0x1
	.byte 0x4A, 0x0, 0xF8, 0xFE, 0x40, 0x0, 0x46, 0x0, 0xEA, 0xFE
	.byte 0x40, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x1A, 0x3, 0x0, 0x1
	.byte 0xC8, 0xFE, 0xD8, 0x0, 0x0, 0x0, 0xCA, 0xFE, 0xE6, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x15, 0x1, 0x0, 0x1
	.byte 0x84, 0xFF, 0x3C, 0x0, 0x40, 0x0, 0x92, 0xFF, 0x40, 0x0
	.byte 0x40, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x1A, 0x7, 0x0, 0x1
	.byte 0xE0, 0x0, 0xA0, 0xFF, 0x80, 0x0, 0xDE, 0x0, 0x92, 0xFF
	.byte 0x80, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x8, 0x7, 0x0, 0x1
	.byte 0x9C, 0xFF, 0x1C, 0x0, 0x0, 0x0, 0x9C, 0xFF, 0x10, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x12, 0x1, 0x0, 0x1
	.byte 0x4C, 0xFF, 0x78, 0xFF, 0xC0, 0xFF, 0x54, 0xFF, 0x78, 0xFF
	.byte 0xC0, 0xFF, 0x4, 0xFA, 0x2, 0x2, 0xE, 0x7, 0x0, 0x1
	.byte 0xC6, 0xFF, 0xF0, 0xFE, 0x80, 0x0, 0xC6, 0xFF, 0xE4, 0xFE
	.byte 0x80, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x18, 0x7, 0x0, 0x1
	.byte 0x6, 0xFE, 0x30, 0x0, 0x0, 0x0, 0x6, 0xFE, 0x24, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0xE, 0x1, 0x0, 0x1
	.byte 0xC6, 0xFE, 0x64, 0xFF, 0x0, 0x0, 0xD2, 0xFE, 0x64, 0xFF
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x1C, 0x7, 0x0, 0x1
	.byte 0x9C, 0xFF, 0x1C, 0x0, 0x0, 0x0, 0x9C, 0xFF, 0x10, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0x26, 0x1, 0x0, 0x1
	.byte 0x4C, 0xFF, 0x78, 0xFF, 0xC0, 0xFF, 0x54, 0xFF, 0x78, 0xFF
	.byte 0xC0, 0xFF, 0x4, 0xDA, 0x2, 0x2, 0x0, 0x0, 0x1B, 0x1
	.byte 0xF8, 0xFF, 0x8, 0x0, 0x0, 0x0, 0xF8, 0xFF, 0x8, 0x0
	.byte 0x0, 0x0, 0x4, 0xFA, 0x2, 0x2, 0xA, 0x1, 0x0, 0x1
	.byte 0x4, 0x0, 0x24, 0x0, 0x0, 0x0, 0x10, 0x0, 0x24, 0x0
	.byte 0x0, 0x0
byte_80990B8: .byte 0x3F, 0x0, 0x6, 0x29, 0xFF, 0x31, 0x17, 0xC, 0x7, 0x1C, 0x6
	.byte 0xFF, 0xCF, 0x90, 0x9, 0x8, 0x2, 0xFF, 0x14, 0x3A, 0x6, 0x4
	.byte 0x88, 0x2, 0xFF, 0x1E, 0x4B, 0x3D, 0x91, 0x9, 0x8, 0x3F, 0x4
	.byte 0x0, 0x0, 0x0, 0x3F, 0x0, 0x6, 0x29, 0xFF, 0x31, 0x17, 0x2
	.byte 0xFF, 0x1, 0x4B, 0x65, 0x91, 0x9, 0x8, 0x2, 0xFF, 0x1E, 0x4E
	.byte 0xFF, 0xFF, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x1C, 0x6, 0xFF, 0x14
	.byte 0x91, 0x9, 0x8, 0x2, 0xFF, 0x1E, 0x3A, 0x6, 0x4, 0x88, 0x1C
	.byte 0x8, 0x1, 0x14, 0x91, 0x9, 0x8, 0x3D, 0x14, 0x91, 0x9, 0x8
	.byte 0x1F, 0x91, 0x9, 0x8, 0x2, 0xFF, 0x14, 0x4B, 0x3D, 0x91, 0x9
	.byte 0x8, 0x3F, 0x4, 0x0, 0x2, 0xFF, 0x14, 0x27, 0xFF, 0xC, 0x8
	.byte 0x7, 0x4B, 0xE1, 0x91, 0x9, 0x8, 0x2A, 0xFF, 0x15, 0x17, 0x2
	.byte 0xFF, 0x3C, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x3F, 0x4, 0x0, 0x0
	.byte 0x0, 0xB5, 0xA8, 0x88, 0x71, 0xF7, 0xED, 0xFA, 0x1, 0x21, 0x6C
	.byte 0xF7, 0x3F, 0xFD, 0xA8, 0x88, 0x9C, 0xF7, 0x6F, 0xF8, 0xE8, 0x79
	.byte 0x0, 0x42, 0x3, 0xD0, 0x2C, 0x20, 0x10, 0x21, 0x6D, 0xF7, 0x89
	.byte 0xF8, 0x0, 0x20, 0x0, 0xBD, 0x0, 0x0, 0xF0, 0xB5, 0xA8, 0x79
	.byte 0x1C, 0x4F, 0x14, 0x21, 0x41, 0x43, 0x7F, 0x18, 0x38, 0x68, 0x0
	.byte 0x42, 0x2, 0xD0, 0x9E, 0xF7, 0xAB, 0xFC, 0x28, 0x63, 0x38, 0x79
	.byte 0xA8, 0x71, 0xF8, 0x79, 0x1, 0x21, 0x8, 0x42, 0x24, 0xD0, 0x78
	.byte 0x79, 0x5, 0xF0, 0x90, 0xF8, 0xB8, 0x79, 0x79, 0x79, 0x40, 0x18
	.byte 0x4, 0xF0, 0xD2, 0xFF, 0x8, 0x20, 0xA, 0x21, 0xC, 0x22, 0x38
	.byte 0x5E, 0x79, 0x5E, 0xBA, 0x5E, 0x0, 0x4, 0x9, 0x4, 0x12, 0x4
	.byte 0x4, 0xF0, 0xFB, 0xFF, 0x0, 0x20, 0x96, 0xF7, 0xFF, 0xFF, 0xE
	.byte 0x20, 0x10, 0x21, 0x12, 0x22, 0x38, 0x5E, 0x79, 0x5E, 0xBA, 0x5E
	.byte 0x0, 0x4, 0x9, 0x4, 0x12, 0x4, 0x97, 0xF7, 0x9, 0xF8, 0x17
	.byte 0x20, 0x15, 0x21, 0x95, 0xF7, 0xAD, 0xFF, 0xF8, 0x79, 0xC0, 0x9
	.byte 0x28, 0x72, 0x0, 0x20, 0xF0, 0xBD, 0x9C, 0x8E, 0x9, 0x8, 0xF0
	.byte 0xB5, 0x1, 0x20, 0x51, 0x46, 0xC9, 0x6B, 0x89, 0x69, 0x1C, 0x31
	.byte 0x96, 0xF7, 0xE1, 0xFF, 0x0, 0x20, 0xF0, 0xBD
dword_80991F4: .word 0x2906003F
	.word 0x471731FF
	.word 0x4B04FF00
	.word map_8099218+1
	.word 0x554B8004
	.word 0x400803FD
	.word 0x4704FF04
	.word 0x3F04FF00
	.word 0x4
.func
.thumb_func
map_8099218:
	push {r4-r7,lr}
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8099282
	mov r0, r10
	ldr r0, [r0,#0x3c] // Toolkit.gamestate
	ldrb r0, [r0,#0x4] // GameState.MapSelect
	cmp r0, #0x80
	bge loc_809924A
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x29 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8099282
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x1d
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8099282
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x2a 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8099282
loc_809924A:
	bl getPETNaviSelect // () -> u8
	mov r1, #0x25 
	bl sub_8013704
	cmp r0, #1
	bne loc_8099266
	ldr r0, dword_8099294 // =0x88738b24 
	bl sub_8037AEC
	mov r1, #0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_8099290
loc_8099266:
	bl getPETNaviSelect // () -> u8
	mov r1, #0x5f 
	bl sub_8013704
	cmp r0, #1
	bne loc_8099282
	ldr r0, dword_8099298 // =0x8873a528 
	bl sub_8037AEC
	mov r1, #0
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_8099290
loc_8099282:
	bl chatbox_dead_uncomp_803FD3C
	mov r0, r10
	ldr r0, [r0,#0x3c] // Toolkit.gamestate
	ldrb r0, [r0,#0x15] // GameState.scriptOffIdx_LMsg_15
	bl chatbox_runTrainScript // (u8 scriptOffIdx) -> void
loc_8099290:
	mov r0, #0
	pop {r4-r7,pc}
dword_8099294: .word 0x88738B24
dword_8099298: .word 0x8873A528
unk_809929C: .byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x34 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x76 
	.byte  0
	.byte 0x44 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x44 
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x36 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x76 
	.byte  0
	.byte 0x44 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x44 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte  6
	.byte  5
	.byte 0xFF
	.byte  1
	.byte 0xD8
	.byte 0xFE
	.byte 0x64 
	.byte  1
	.byte  0
	.byte  0
	.byte 0xC4
	.byte 0xFE
	.byte 0x64 
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0xDA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xE2
	.byte  0
	.byte 0x76 
	.byte 0xFF
	.byte 0x80
	.byte  0
	.byte 0xE2
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte 0x80
	.byte  0
	.byte  4
	.byte 0xDA
	.byte  2
	.byte  2
	.byte 0x13
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0xE8
	.byte 0xFF
	.byte 0xBE
	.byte  0
	.byte  0
	.byte  0
	.byte 0xF4
	.byte 0xFF
	.byte 0xBE
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xDA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  5
	.byte 0xFF
	.byte  1
	.byte 0xC0
	.byte 0xFF
	.byte 0x34 
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte 0xB4
	.byte 0xFF
	.byte 0x34 
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0xDA
	.byte  2
	.byte  2
	.byte 0x13
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0x8A
	.byte 0xFE
	.byte 0x1A
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte 0x8A
	.byte 0xFE
	.byte 0x26 
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC6
	.byte 0xFF
	.byte 0xF0
	.byte 0xFE
	.byte 0x80
	.byte  0
	.byte 0xC6
	.byte 0xFF
	.byte 0xE4
	.byte 0xFE
	.byte 0x80
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x17
	.byte  7
	.byte 0xFF
	.byte  1
	.byte  6
	.byte 0xFE
	.byte 0x30 
	.byte  0
	.byte  0
	.byte  0
	.byte  6
	.byte 0xFE
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x34 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0xD6
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xE2
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x35 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0xD6
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xE2
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  7
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0xD0
	.byte  0
	.byte 0xB6
	.byte  0
	.byte  0
	.byte  0
	.byte 0xDC
	.byte  0
	.byte 0xB6
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  1
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x62 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xB
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xB
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xB
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xC
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  1
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x56 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x3E 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xCC
	.byte 0xFE
	.byte 0xC6
	.byte  0
	.byte  0
	.byte  0
	.byte 0xCC
	.byte 0xFE
	.byte 0xBA
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xC
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC4
	.byte  0
	.byte 0xC0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xC4
	.byte  0
	.byte 0xB4
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x21 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xE2
	.byte  0
	.byte 0x7A 
	.byte 0xFF
	.byte 0x80
	.byte  0
	.byte 0xE2
	.byte  0
	.byte 0x6E 
	.byte 0xFF
	.byte 0x80
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x10
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x7C 
	.byte  0
	.byte 0xAC
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x7C 
	.byte  0
	.byte 0xA0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x11
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x7C 
	.byte  0
	.byte 0xAC
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x7C 
	.byte  0
	.byte 0xA0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x47 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x50 
	.byte  1
	.byte 0xA8
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte 0x50 
	.byte  1
	.byte 0xA8
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  8
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xCE
	.byte 0xFF
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xCE
	.byte 0xFF
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  9
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xCE
	.byte 0xFF
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xCE
	.byte 0xFF
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xC
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xEE
	.byte 0xFF
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xEE
	.byte 0xFF
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xEE
	.byte 0xFF
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xEE
	.byte 0xFF
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x10
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x11
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x14
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x2E 
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x2E 
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x15
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x2E 
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x2E 
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x18
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x50 
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x19
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x50 
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  7
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0xE
	.byte  0
	.byte 0x7A 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xE
	.byte  0
	.byte 0x86
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x3D 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x6A 
	.byte  0
	.byte 0x40 
	.byte  1
	.byte 0x40 
	.byte  0
	.byte 0x6A 
	.byte  0
	.byte 0x34 
	.byte  1
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x35 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x1A
	.byte  0
	.byte 0x98
	.byte  0
	.byte  0
	.byte  0
	.byte 0x26 
	.byte  0
	.byte 0x98
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x7E 
	.byte  0
	.byte 0xB0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte 0x86
	.byte  0
	.byte 0xB0
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xAE
	.byte  0
	.byte 0xDA
	.byte 0xFE
	.byte 0x10
	.byte  0
	.byte 0xAE
	.byte  0
	.byte 0xCE
	.byte 0xFE
	.byte 0x10
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  3
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0xD4
	.byte  0
	.byte 0xF4
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xE0
	.byte  0
	.byte 0xF4
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x1A
	.byte  1
	.byte 0xA2
	.byte  0
	.byte  0
	.byte  0
	.byte 0x26 
	.byte  1
	.byte 0xA2
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x18
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x76 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x76 
	.byte  0
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x18
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x54 
	.byte  0
	.byte 0x52 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x54 
	.byte  0
	.byte 0x52 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x18
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x36 
	.byte  0
	.byte 0x92
	.byte  0
	.byte  0
	.byte  0
	.byte 0x36 
	.byte  0
	.byte 0x92
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x18
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x14
	.byte  0
	.byte 0xF4
	.byte  0
	.byte  0
	.byte  0
	.byte 0x14
	.byte  0
	.byte 0xF4
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  3
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC
	.byte  0
	.byte 0x2C 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0x2C 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  3
	.byte  5
	.byte 0xFF
	.byte  1
	.byte 0xA6
	.byte 0xFF
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xA6
	.byte 0xFF
	.byte 0xF2
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte  3
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0xEC
	.byte 0xFF
	.byte 0xDA
	.byte  0
	.byte  0
	.byte  0
	.byte 0xEC
	.byte 0xFF
	.byte 0xDA
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x38 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x2C 
	.byte  0
	.byte 0xF6
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte 0x2C 
	.byte  0
	.byte 0xF6
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x38 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xAA
	.byte 0xFF
	.byte 0xB8
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte 0xAA
	.byte 0xFF
	.byte 0xB8
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x38 
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0x6A 
	.byte 0xFF
	.byte 0x54 
	.byte  0
	.byte 0x20
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte 0x54 
	.byte  0
	.byte 0x20
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x38 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0xAA
	.byte 0xFF
	.byte 0x52 
	.byte  0
	.byte 0x20
	.byte  0
	.byte 0xAA
	.byte 0xFF
	.byte 0x52 
	.byte  0
	.byte 0x20
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x38 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x6A 
	.byte 0xFF
	.byte 0xB8
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte 0x6A 
	.byte 0xFF
	.byte 0xB8
	.byte 0xFF
	.byte 0x20
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x6F 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xD2
	.byte  0
	.byte 0x46 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xD2
	.byte  0
	.byte 0x3A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x74 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x3C 
	.byte  0
	.byte 0xC
	.byte  1
	.byte  0
	.byte  0
	.byte 0x48 
	.byte  0
	.byte 0xC
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x2E 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x18
	.byte  0
	.byte 0x74 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x24 
	.byte  0
	.byte 0x74 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x10
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x98
	.byte  0
	.byte 0x42 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x98
	.byte  0
	.byte 0x36 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x13
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x60 
	.byte 0xFF
	.byte 0xA6
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x6C 
	.byte 0xFF
	.byte 0xA6
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xB
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x7C 
	.byte  0
	.byte 0xA
	.byte  0
	.byte  0
	.byte  0
	.byte 0x88
	.byte  0
	.byte 0xA
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x54 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xE4
	.byte 0xFF
	.byte 0x3A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xE4
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x53 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xE4
	.byte 0xFF
	.byte 0x3A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xE4
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x43 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte  4
	.byte  0
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x45 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte  4
	.byte  0
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x43 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x9C
	.byte 0xFF
	.byte 0x1C
	.byte  0
	.byte  0
	.byte  0
	.byte 0x9C
	.byte 0xFF
	.byte 0x10
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x45 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x9C
	.byte 0xFF
	.byte 0x1C
	.byte  0
	.byte  0
	.byte  0
	.byte 0x9C
	.byte 0xFF
	.byte 0x10
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x43 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xFA
	.byte 0xFF
	.byte 0xE
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0xFA
	.byte 0xFF
	.byte  2
	.byte  0
	.byte 0x10
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x45 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xFA
	.byte 0xFF
	.byte 0xE
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0xFA
	.byte 0xFF
	.byte  2
	.byte  0
	.byte 0x10
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x43 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x5C 
	.byte 0xFF
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x5C 
	.byte 0xFF
	.byte 0x18
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x45 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x5C 
	.byte 0xFF
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x5C 
	.byte 0xFF
	.byte 0x18
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x43 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x4C 
	.byte 0xFF
	.byte 0x78 
	.byte 0xFF
	.byte 0xC0
	.byte 0xFF
	.byte 0x54 
	.byte 0xFF
	.byte 0x78 
	.byte 0xFF
	.byte 0xC0
	.byte 0xFF
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x45 
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x4C 
	.byte 0xFF
	.byte 0x78 
	.byte 0xFF
	.byte 0xC0
	.byte 0xFF
	.byte 0x54 
	.byte 0xFF
	.byte 0x78 
	.byte 0xFF
	.byte 0xC0
	.byte 0xFF
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x25 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x8E
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x8E
	.byte  0
	.byte 0x44 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x27 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x8E
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x8E
	.byte  0
	.byte 0x44 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xC
	.byte  1
	.byte 0xFF
	.byte  1
	.byte  4
	.byte  0
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte 0x10
	.byte  0
	.byte 0x24 
	.byte  0
	.byte  0
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte 0x14
	.byte  5
	.byte 0xFF
	.byte  1
	.byte  2
	.byte 0xFF
	.byte 0xBC
	.byte  1
	.byte  0
	.byte  0
	.byte 0xF2
	.byte 0xFE
	.byte 0xBC
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte 0x16
	.byte  5
	.byte 0xFF
	.byte  1
	.byte 0xA2
	.byte 0xFE
	.byte 0x1C
	.byte  1
	.byte  0
	.byte  0
	.byte 0x92
	.byte 0xFE
	.byte 0x1C
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte 0x18
	.byte  7
	.byte 0xFF
	.byte  1
	.byte  4
	.byte 0xFF
	.byte 0x3A 
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0xFF
	.byte 0x2A 
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte 0x1A
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0x86
	.byte  0
	.byte 0x5E 
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte 0x86
	.byte  0
	.byte 0x6E 
	.byte 0xFF
	.byte 0x40 
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte 0x1C
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x86
	.byte  0
	.byte 0xDA
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0xDA
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0x34 
	.byte  3
	.byte  2
	.byte 0x1E
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0x86
	.byte  0
	.byte 0x5C 
	.byte  1
	.byte  0
	.byte  0
	.byte 0x86
	.byte  0
	.byte 0x6C 
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x34 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC
	.byte  0
	.byte 0xEA
	.byte 0xFE
	.byte  0
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0xDE
	.byte 0xFE
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x35 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0xC
	.byte  0
	.byte 0xEA
	.byte 0xFE
	.byte  0
	.byte  0
	.byte 0xC
	.byte  0
	.byte 0xDE
	.byte 0xFE
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xC
	.byte  5
	.byte 0xFF
	.byte  1
	.byte 0x46 
	.byte 0xFF
	.byte 0xF0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x3A 
	.byte 0xFF
	.byte 0xF0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  5
	.byte 0xFF
	.byte  1
	.byte 0x46 
	.byte 0xFF
	.byte 0xF0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x3A 
	.byte 0xFF
	.byte 0xF0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xC
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0xE
	.byte  0
	.byte 0xF8
	.byte  0
	.byte  0
	.byte  0
	.byte 0xE
	.byte  0
	.byte  4
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0xD
	.byte  3
	.byte 0xFF
	.byte  1
	.byte 0xE
	.byte  0
	.byte 0xF8
	.byte  0
	.byte  0
	.byte  0
	.byte 0xE
	.byte  0
	.byte  4
	.byte  1
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x34 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x90
	.byte 0xFF
	.byte  8
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x90
	.byte 0xFF
	.byte 0xFC
	.byte 0xFE
	.byte  0
	.byte  0
	.byte  4
	.byte 0xFA
	.byte  2
	.byte  2
	.byte 0x35 
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x90
	.byte 0xFF
	.byte  8
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x90
	.byte 0xFF
	.byte 0xFC
	.byte 0xFE
	.byte  0
	.byte  0
	.byte  4
	.byte 0xDA
	.byte  2
	.byte  2
	.byte 0x1A
	.byte  7
	.byte 0xFF
	.byte  1
	.byte 0x54 
	.byte  0
	.byte 0xDC
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0x54 
	.byte  0
	.byte 0xD0
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  4
	.byte 0xDA
	.byte  2
	.byte  2
	.byte 0x1B
	.byte  1
	.byte 0xFF
	.byte  1
	.byte 0x9C
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0xA8
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.word unk_202DA04
	.word 0x1FF031C, 0xCEFF50, 0xFF500000, 0xDA, 0x202DA04, 0x1FF071D
	.word 0xFF70FFD4, 0xFFD40000, 0xFF64, 0x202DA04, 0x1FF011E, 0x420076
	.word 0x820000, 0x42, 0x202DA04, 0x1FF070B, 0x42FF72, 0xFF720000
	.word 0x36, 0x202DA04, 0x1FF010B, 0x72FFBE, 0xFFCA0000, 0x72
	.word 0x202DA04, 0x1FF0101, 0x42FFB6, 0xFFC20000, 0x42, 0x202DA04
	.word 0x1FF010B, 0x54FFC4, 0xFFD00000, 0x54, 0x202DA04, 0x1FF070C
	.word 0xFFF40044, 0x440000, 0xFFE8, 0x202DA04, 0x1FF0710, 0xFFAC000C
	.word 0xC0000, 0xFFA0, 0x202DA04, 0x1FF0311, 0x920092, 0x92FFE0
	.word 0xFFE0009E, 0x202DA04, 0x1FF0510, 0xFFFAFF8C, 0xFF800000, 0xFFFA
	.word 0x202DA04, 0x1FF0510, 0xB6FEA8, 0xFE9C0028, 0x2800B6, 0x202DA04
	.word 0x1FF0710, 0x3EFF5A, 0xFF5A0000, 0x32, 0x202DA04, 0x1FF0110
	.word 0xA2FFF6, 0x20000, 0xA2, 0x202DA04, 0x1FF0110, 0x4C009C
	.word 0xA80060, 0x60004C, 0x202DA04, 0x1FF0111, 0xFF580158, 0x1640000
	.word 0xFF58, 0x202DA04, 0x1FF0712, 0xFF320024, 0x2400A0, 0xA0FF26
	.word 0x202DA04, 0x1FF0310, 0xFFD0FFE0, 0xFFE00010, 0x10FFDC, 0x202DA04
	.word 0x1FF011A, 0xE4FFEA, 0xFFF60000, 0xE4, 0x202DA04, 0x1FF071B
	.word 0x60FF90, 0xFF900000, 0x54, 0x202DA04, 0x1FF071C, 0xFFC2FECC
	.word 0xFECC0000, 0xFFB6, 0x202DA04, 0x1FF011D, 0xFFA0004C, 0x580000
	.word 0xFFA0, 0x202DA04, 0x1FF050B, 0x10FF98, 0xFF8C0000, 0x10
	.word 0x202DA04, 0x1FF010B, 0x3CFFC2, 0xFFCE0000, 0x3C, 0x202DA04
	.word 0x1FF010B, 0x96FF52, 0xFF5E0000, 0x96, 0x202DA04, 0xFF04FF
	.word 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word unk_202DA04
	.word 0xFF04FF, 0x0, 0x0, 0x0
	.word byte_202FA04
	.word 0x1FF031B, 0x10C0054, 0x540000, 0x118, 0x202FA04, 0x1FF070C
	.word 0x3E0050, 0x500000, 0x32, 0x202FA04, 0x1FF070D, 0x3E0050
	.word 0x500000, 0x32, 0x0
	.word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
	.word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
	.word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
	.word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
	.word 0xFF04FF, 0x0, 0x0, 0x0
unk_8099CEC: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x29 
	.byte 0xFF
	.byte 0x31 
	.byte 0x17
	.byte 0x29 
	.byte 0xFF
	.byte 0xC
	.byte  1
	.byte  2
	.byte 0xFF
	.byte  1
	.byte 0x4B 
	.byte 0x45 
	.byte 0x9D
	.byte  9
	.byte  8
	.byte 0x47 
	.word 0x3F00FF01, 0xFF051C1C, 0x8099D23, 0x271EFF02, 0x70808FF
	.word 0x3A1EFF02, 0x2800405, 0xFF271EFF, 0x4B07080C, 0x8099DAD
	.word 0x1715FF2A, 0x10CFF2A, 0x34A054A, 0x273CFF02, 0x70808FF
	.word 0x43F183F, 0x0
.endfunc // map_8099218

	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	ldr r7, off_8099DA8 // =unk_809929C 
	mov r1, #0x14
	mul r1, r0
	add r7, r7, r1
	ldr r0, [r7]
	tst r0, r0
	beq loc_8099D58
	str r0, [r5,#0x30]
loc_8099D58:
	ldrb r0, [r7,#4]
	strb r0, [r5,#5]
	ldrb r0, [r7,#7]
	tst r0, r0
	beq loc_8099DA2
	ldrb r0, [r7,#5]
	bl sub_809E2AE
	mov r0, #8
	mov r1, #0xa
	mov r2, #0xc
	ldrsh r0, [r7,r0]
	ldrsh r1, [r7,r1]
	ldrsh r2, [r7,r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	bl loc_809E1A4
	mov r0, #0
	bl sub_80301B2
	mov r0, #0xe
	mov r1, #0x10
	mov r2, #0x12
	ldrsh r0, [r7,r0]
	ldrsh r1, [r7,r1]
	ldrsh r2, [r7,r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	bl sub_80301DC
	mov r0, #0x17
	mov r1, #0x15
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_8099DA2:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8099DA8: .word unk_809929C
	push {r4-r7,lr}
	mov r0, #1
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldr r1, [r1,#0x18]
	add r1, #0x1c
	bl sub_80301B2
	mov r0, #0
	pop {r4-r7,pc}
dword_8099DC0: .word 0x2906003F, 0x3E1731FF, 0x873B9E0, 0x8004043A, 0x3F00043F
	.word 0xFF290600, 0x43E1731, 0x3A0202FA, 0x3F800404, 0x3F0004
	.word 0x31FF2906, 0xFF044017, 0xFF004704, 0xFA043E04, 0x43A0202
	.word 0x43F8004, 0x0
dword_8099E04: .word 0x2906003F, 0x4B1731FF, 0x8099E2D, 0xC08FF27, 0xD1083E07
	.word 0x3D4B0873, 0x3A08099E, 0x2A800404, 0x3F1708FF, 0x4
	.word 0xF004B5F0, 0x3000FA43, 0xF982F004, 0xBDF02000, 0xF005B5F0
	.word 0x2290FDBE, 0x465658B8, 0x64F06AF6, 0xFF23F005, 0x65B16570
	.word 0x2000712A, 0xBDF0, 0xE2A2E2A0, 0xE2A6E2A4, 0xE2AAE2A8
	.word 0xE2A1E2AC
	.byte 0xA3
	.byte 0xE2
	.byte 0xA5
	.byte 0xE2
	.byte 0xA7
	.byte 0xE2
	.byte 0xA9
	.byte 0xE2
	.byte 0xAB
	.byte 0xE2
	.byte 0xAD
	.byte 0xE2
loc_8099E78:
	b loc_809A3BC
	.byte 0xA2
	.byte 0xE2
	.byte 0xA4
	.byte 0xE2
	.byte 0xA6
	.byte 0xE2
	.byte 0xA8
	.byte 0xE2
	.byte 0xAA
	.byte 0xE2
	.byte 0xA1
	.byte 0xE2
	.byte 0xA3
	.byte 0xE2
	.byte 0xA5
	.byte 0xE2
	.byte 0xA7
	.byte 0xE2
	.byte 0xA9
	.byte 0xE2
	.byte 0xAB
	.byte 0xE2
	.byte 0x16
	.byte  0
	.byte  0
	.byte  5
	.byte 0x16
	.byte  1
	.byte  1
	.byte  5
	.byte 0x16
	.byte  2
	.byte  2
	.byte  5
	.word 0xFFFFFFFF
dword_8099EA0: .word 0x99FFD4B, 0x6003F08, 0x1731FF29, 0x4701FF02, 0x3E00FF01
	.word 0x86C580C, 0x1C58001B, 0x9EDF0201, 0x1B0C0809, 0x11C5800
	.word 0x99F4402, 0x43A3208, 0x614B8004, 0x3F0809A2, 0xFD554B04
	.word 0x4B000803, 0x809A02D, 0x9A03D4B, 0xA05D4B08, 0x794B0809
	.word 0x1B0809A0, 0x11C5900, 0x99F1402, 0x54B0108, 0x20809A1
	.word 0x614B01FF, 0x3B0809A2, 0x554B043F, 0x803FD, 0x9A1394B
	.word 0xA1B54B08, 0xFD4B0809, 0x1B0809A1, 0x11C5900, 0x99EEE02
	.word 0x54B0108, 0x20809A1, 0x614B01FF, 0x3B0809A2, 0x554B043F
	.word 0x803FD, 0x9A3BD4B, 0xA3CD4B08, 0xED4B0809, 0x4B0809A3
	.word 0x809A405, 0x7501091C, 0x4B08099F, 0x809A4B9, 0x4B01FF02
	.word 0x809A4ED, 0x4B043F3B, 0x803FD55, 0x1FF0200, 0x4D4B0804
	.word 0x1C0809A4, 0x9F5F0109, 0x214B0809, 0x1C0809A5, 0x9F7A0009
	.word 0x91C0809, 0x99FAF01, 0xA7854B08, 0xFF020809, 0xA4ED4B01
	.word 0x3F3B0809, 0xFD554B04, 0x4000803, 0xA75D4B88, 0x91C0809
	.word 0x99FD001, 0xA7B14B08, 0x91C0809, 0x99F9901, 0x91C08
	.word 0x8099F75, 0x9A6314B, 0xA6A54B08, 0xED4B0809, 0x1C0809A6
	.word 0x9F750109, 0xB94B0809, 0x20809A4, 0xED4B01FF, 0x3B0809A4
	.word 0x554B043F, 0x803FD, 0x2000B5F0, 0xFFDEF799, 0xF93EF000
	.word 0x71297229, 0x28327A28, 0xF793D102, 0xE001F8A4, 0xF86CF7A3
	.word 0xF7696728, 0xF769FCB1, 0x2000FD57, 0xBDF0, 0xF000B5F0
	.word 0x2020F955, 0x20006768, 0xBDF0, 0x6F68B5F0, 0x67683802
	.word 0xDC052815, 0x67682015, 0xF988F000, 0xBDF02000, 0xF984F000
	.word 0xBDF02001, 0x4805B5F0, 0xF7A668A9, 0x6F68F98F, 0xF97AF000
	.word 0x72682000, 0xBDF02000, 0x86C580C, 0x2080B5F0, 0xFF5EF7AB
	.word 0x2008D037, 0xFF5AF7AB, 0xF7ABD02E, 0x2800FF5F, 0xF7B0D12F
	.word 0x4F19F929, 0xFE32F7B1, 0x80F980B8, 0xF7872201, 0x200AFD24
	.word 0xF80EF7A3, 0x6BDB4653, 0x81988898, 0xFB70F7A5, 0x6AF64656
	.word 0x64F288BA, 0x88FA67EA, 0x20806532, 0x480D502A, 0xF7A6210F
	.word 0x2200F959, 0x80BA863A, 0x80EA80FA, 0x2028716A, 0x200160E8
	.word 0xE0047268, 0xF0006F68, 0x2001F939, 0x6F68BDF0, 0xF934F000
	.word 0xBDF02000, 0x200AC80, 0x86C580C, 0x2008B5F0, 0xFF18F7AB
	.word 0x2080D103, 0xFF14F7AB, 0x6F68D10B, 0x67683002, 0xDB062820
	.word 0x67682020, 0xF0006F68, 0x2000F91B, 0x6F68BDF0, 0xF916F000
	.word 0xBDF02001, 0x2000B5F0, 0xF79521F6, 0xD02FF811, 0x380168E8
	.word 0x60E8DB08, 0xDF062104, 0xD1274209, 0x38016F28, 0xE0236728
	.word 0xFFCAF7A2, 0x20006728, 0xF79421F5, 0xD01BFFFD, 0x71282020
	.word 0xF8CAF000, 0xFA76F7AC, 0xF7AC480D, 0x207CFA11, 0x21805828
	.word 0x22005869, 0xF07F2300, 0x4833FB3F, 0x22002158, 0xFB5EF07F
	.word 0x21F62000, 0xFFC6F794, 0xBDF02000, 0xF0006F68, 0x2001F8DB
	.word 0xBDF0, 0x8099E90, 0x7928B5F0, 0x28603010, 0x4656DD06
	.word 0x6CF26AF6, 0x6D3280EA, 0x2060716A, 0x49237128, 0x21581840
	.word 0xF07F2200, 0xF7ACFB3D, 0xF7ACF9EF, 0x6F68FA0B, 0xF8BCF000
	.word 0x21F52000, 0xFFBAF794, 0x2000D101, 0x2001BDF0, 0xBDF0
	.word 0x7928B5F0, 0x28003810, 0x2000DA00, 0x49147128, 0x21581840
	.word 0xF07F2200, 0xF7ACFB1F, 0xF7ACF9D1, 0x2008F9ED, 0xFE8CF7AB
	.word 0xF7A2D015, 0x1C07FF65, 0xDB032F0A, 0xFE8CF7AB, 0xD0052800
	.word 0x72682000, 0xF0006F68, 0xE004F88F, 0x72682001, 0xF0006F68
	.word 0x2000F889, 0x6F68BDF0, 0xF884F000, 0xBDF02001, 0xFFFFFFD0
	.word 0x2001B5F0, 0xFEACF799, 0xFAF2F767, 0xFB84F799, 0xFB77F769
	.word 0xFC1DF769, 0xFB8FF769, 0xFC35F769, 0xBDF02000, 0x6BDB4653
	.word 0x795A7919, 0x43110209, 0x24004A05, 0x42886810, 0x7911D101
	.word 0x3208E003, 0x2C303408, 0x46F7DBF6, 0x809A2AC, 0x104
	.word 0x0
	.word 0x501
	.word 0x6, 0x0
	.word 0x6, 0x400, 0x6, 0x9100, 0x32, 0x9301, 0xC, 0x4802B5F0
	.word 0xFC26F766, 0xBDF0, 0x809A2EC, 0x86C5530, 0x3001B20, 0x20, 0x86C52B4, 0x600D000
	.word 0x220, 0x0
.func
.thumb_func
sub_809A308:
	push {lr}
	// initRefs
	ldr r0, off_809A314 // =initRefs_809A318 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
off_809A314: .word initRefs_809A318
initRefs_809A318: .word comp_86C7980 + 1<<31
	.word unk_2034E00
	.word unk_2033700
	.word comp_86C73D8 + 1<<31
	.word unk_2036500
	.word unk_2033700
	.word 0x0
.endfunc // sub_809A308

.func
.thumb_func
sub_809A334:
	push {r4-r7,lr}
	// initRefs
	ldr r0, off_809A340 // =initRefs_809A344 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {r4-r7,pc}
	.byte 0, 0
off_809A340: .word initRefs_809A344
initRefs_809A344: .word dword_86C57EC
	.word unk_3001B20
	.word 0x20
	.word byte_86C5550
	.word 0x600D000
	.word 0x220
	.word 0x0
.endfunc // sub_809A334

.func
.thumb_func
sub_809A360:
	push {r4-r7,lr}
	add r7, r0, #0
	mov r0, r10
	ldr r0, [r0,#0x38] // Toolkit.unk_200A220
	ldr r1, [r5,#0x70]
	str r1, [r0,#8]
	// j
	add r0, r7, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_809A3A4 // =byte_86C54D4 
	mov r4, #9
	mov r5, #5
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	// j
	add r0, r7, #1
	// i
	mov r1, #2
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_809A3A8 // =dword_8099E04+88 
	mov r4, #7
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, off_809A3AC // =scripts_86C580C 
	mov r1, #0x40 
	ldr r2, off_809A3B0 // =unk_200EF40 
	ldr r3, dword_809A3B4 // =0x600d400 
	mov r4, #7
	mov r5, #1
	ldr r6, off_809A3B8 // =dword_86A5D60 
	mov r7, #4
	bl render_graphicalText_8045F8C
	pop {r4-r7,pc}
	.balign 4, 0x00
off_809A3A4: .word byte_86C54D4
off_809A3A8: .word dword_8099E04+0x58
off_809A3AC: .word scripts_86C580C
off_809A3B0: .word unk_200EF40
dword_809A3B4: .word 0x600D400
off_809A3B8: .word dword_86A5D60
.endfunc // sub_809A360

loc_809A3BC:
	push {r4-r7,lr}
	bl sub_809A334
	mov r0, #0x20 
	str r0, [r5,#0x74]
	mov r0, #0
	pop {r4-r7,pc}
	// <mkdata>
	.hword 0x0 // mov r0, r0
	push {r4-r7,lr}
	ldr r0, [r5,#0x74]
	sub r0, #2
	str r0, [r5,#0x74]
	cmp r0, #0x15
	bgt loc_809A3E4
	mov r0, #0x15
	str r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0
	pop {r4-r7,pc}
loc_809A3E4:
	bl sub_809A80C
	mov r0, #1
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r0, off_809A400 // =scripts_86C580C 
	ldr r1, [r5,#8]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0
	pop {r4-r7,pc}
off_809A400: .word scripts_86C580C
	push {r4-r7,lr}
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #8
	bl chatbox_8045F3C
	beq loc_809A442
	bl chatbox_8045F4C
	cmp r0, #0
	bne loc_809A43A
	ldr r0, off_809A448 // =scripts_86C580C 
	mov r1, #0x33 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x17
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #8
	mov r1, #0x84
	str r0, [r5,r1]
	mov r0, #1
	strb r0, [r5,#9]
	mov r0, #0
	pop {r4-r7,pc}
loc_809A43A:
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #0
	pop {r4-r7,pc}
loc_809A442:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_809A448: .word scripts_86C580C
	push {r4-r7,lr}
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0x17
	mov r1, #0x25 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809A488
	mov r0, #0x84
	ldr r0, [r5,r0]
	tst r0, r0
	beq loc_809A46C
	sub r0, #1
	mov r1, #0x84
	str r0, [r5,r1]
loc_809A46C:
	mov r0, r10
	ldr r0, [r0,#4]
	ldrb r0, [r0,#2]
	mov r1, #2
	and r1, r0
	beq loc_809A488
	mov r0, #1
	strb r0, [r5,#9]
	mov r0, #0x68 
	bl sound_play // () -> void
	bl chatbox_8040818
	b loc_809A4AA
loc_809A488:
	mov r0, #8
	bl chatbox_8045F3C
	beq loc_809A4AE
	mov r0, r10
	ldr r0, [r0,#0x2c]
	ldr r0, [r0,#0x4c]
	mov r1, #0x88
	str r0, [r5,r1]
	bl sub_809A868
	ldr r0, off_809A894 // =scripts_86C580C 
	mov r1, #0x35 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0
	strb r0, [r5,#9]
loc_809A4AA:
	mov r0, #0
	pop {r4-r7,pc}
loc_809A4AE:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word unk_200AC80
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_8045F3C
	bne loc_809A4CA
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_809A4E2
loc_809A4CA:
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	cmp r0, #0x20 
	blt loc_809A4E2
	mov r0, #0x20 
	str r0, [r5,#0x74]
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0
	pop {r4-r7,pc}
loc_809A4E2:
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #1
	pop {r4-r7,pc}
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0xf5
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #1
	bl sub_8033FC0
	bl sub_8001850
	bl sub_8033978
	bl sub_8003962
	bl sub_8003AB2
	bl sub_800399A
	bl sub_8003AEA
	mov r0, #0
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0x80
	bl chatbox_8045F3C
	beq loc_809A610
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq loc_809A610
	bl chatbox_8045F4C
	cmp r0, #0
	bne loc_809A5FA
	mov r0, #0x88
	ldr r0, [r5,r0]
	bl loc_813D48C
	tst r0, r0
	beq loc_809A5EC
	cmp r0, #2
	beq loc_809A5EC
	cmp r1, #1
	beq loc_809A578
	cmp r1, #2
	beq loc_809A5A6
	str r2, [r5,#0x7c]
	mov r0, #0x80
	str r3, [r5,r0]
	mov r0, r10
	ldr r0, [r0,#0x2c]
	str r2, [r0,#0x4c]
	str r3, [r0,#0x50]
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #1
	bl sub_8021AEE
	mov r0, #0x37 
	mov r1, #0x8c
	str r0, [r5,r1]
	b loc_809A5B8
loc_809A578:
	mov r0, r10
	ldr r0, [r0,#0x2c]
	str r2, [r0,#0x4c]
	cmp r2, #0x86
	bne loc_809A596
	ldr r4, off_809A614 // =loc_809A628 
	mov r6, #0
loc_809A586:
	ldrb r0, [r4,r6]
	cmp r0, #0xff
	beq loc_809A59E
	mov r1, #1
	bl sub_803CD98
	add r6, #1
	b loc_809A586
loc_809A596:
	add r0, r2, #0
	mov r1, #1
	bl sub_803CD98
loc_809A59E:
	mov r0, #0x38 
	mov r1, #0x8c
	str r0, [r5,r1]
	b loc_809A5B8
loc_809A5A6:
	mov r1, r10
	ldr r1, [r1,#0x2c]
	str r2, [r1,#0x4c]
	add r0, r2, #0
	bl sub_803D080
	mov r0, #0x39 
	mov r1, #0x8c
	str r0, [r5,r1]
loc_809A5B8:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldrh r0, [r3,#4]
	strh r0, [r3,#0xc]
	bl sub_803F798
	bl sub_803F9E4
	mov r0, #1
	strb r0, [r5,#9]
	mov r0, #0x8a
	bl sound_play // () -> void
	bl sub_809A880
	strh r0, [r5,#0x1a]
	mov r2, #0x88
	ldr r2, [r5,r2]
	ldr r1, off_809A618 // =loc_809A624 
	ldrb r1, [r1,r2]
	strh r1, [r5,#0xe]
	mov r1, #0xa
	strh r1, [r5,#0xc]
	svc 6
	strb r0, [r5,#0xf]
	b loc_809A60C
loc_809A5EC:
	ldr r0, off_809A894 // =scripts_86C580C 
	mov r1, #0x36 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #2
	strb r0, [r5,#9]
	b loc_809A60C
loc_809A5FA:
	ldr r0, off_809A894 // =scripts_86C580C 
	mov r1, #0x33 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #8
	mov r1, #0x84
	str r0, [r5,r1]
	mov r0, #0
	strb r0, [r5,#9]
loc_809A60C:
	mov r0, #0
	pop {r4-r7,pc}
loc_809A610:
	mov r0, #1
	pop {r4-r7,pc}
off_809A614: .word loc_809A628
off_809A618: .word loc_809A624
	.word unk_200AC80
	ldr r4, [r1,r0]
	lsr r4, r5, #1
loc_809A624:
	lsl r4, r0, #8
	lsl r2, r0, #8
loc_809A628:
	strh r0, [r0,#0xc]
	strh r2, [r0,#0x1c]
	strh r4, [r0,#0x2c]
	lsl r7, r7, #3
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0xf6
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809A694
	ldrh r0, [r5,#0xc]
	sub r0, #1
	blt loc_809A64E
	strh r0, [r5,#0xc]
	ldr r0, [r5,#0x70]
	ldrb r1, [r5,#0xf]
	sub r0, r0, r1
	str r0, [r5,#0x70]
	b loc_809A694
loc_809A64E:
	bl sub_802D15E
	str r0, [r5,#0x70]
	mov r0, #0
	mov r1, #0xf5
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809A694
	mov r0, #0x20 
	strb r0, [r5,#4]
	bl sub_809A308
	bl sub_8046664 // () -> void
	ldr r0, dword_809A6A0 // = 
	bl sub_80465A0 // (void *a1) -> void
	ldr r0, [r5,#0x7c]
	mov r1, #0x80
	ldr r1, [r5,r1]
	mov r2, #0
	mov r3, #0
	bl sub_811980C
	ldr r0, dword_809A758 // =0xffffffd0 
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	mov r0, #0
	mov r1, #0xf6
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	pop {r4-r7,pc}
loc_809A694:
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #1
	pop {r4-r7,pc}
	.byte 0, 0
dword_809A6A0: .word 0x8099E90
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	add r0, #0x10
	cmp r0, #0x60 
	ble loc_809A6BC
	mov r6, r10
	ldr r6, [r6,#0x2c]
	ldr r2, [r6,#0x4c]
	strh r2, [r5,#6]
	ldr r2, [r6,#0x50]
	strb r2, [r5,#5]
	mov r0, #0x60 
loc_809A6BC:
	strb r0, [r5,#4]
	ldr r1, dword_809A758 // =0xffffffd0 
	add r0, r0, r1
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0
	mov r1, #0xf5
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809A6E6
	mov r0, #0
	pop {r4-r7,pc}
loc_809A6E6:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	sub r0, #0x10
	cmp r0, #0
	bge loc_809A6F8
	mov r0, #0
loc_809A6F8:
	strb r0, [r5,#4]
	ldr r1, dword_809A758 // =0xffffffd0 
	add r0, r0, r1
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov r0, #8
	bl chatbox_8045F3C
	beq loc_809A74E
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_809A72A
	mov r0, #0
	strb r0, [r5,#9]
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	b loc_809A74A
loc_809A72A:
	ldr r0, off_809A894 // =scripts_86C580C 
	mov r1, #0x33 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x17
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #8
	mov r1, #0x84
	str r0, [r5,r1]
	mov r0, #1
	strb r0, [r5,#9]
	ldr r0, [r5,#0x74]
	bl sub_809A80C
loc_809A74A:
	mov r0, #0
	pop {r4-r7,pc}
loc_809A74E:
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #1
	pop {r4-r7,pc}
dword_809A758: .word 0xFFFFFFD0
	push {r4-r7,lr}
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	ldr r0, off_809A780 // =scripts_86C580C 
	mov r1, #0x8c
	ldr r1, [r5,r1]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r1, #1
	mov r2, #0x8c
	ldr r0, [r5,r2]
	cmp r0, #0x37 
	beq loc_809A77A
	mov r1, #0
loc_809A77A:
	strb r1, [r5,#9]
	mov r0, #0
	pop {r4-r7,pc}
off_809A780: .word scripts_86C580C
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_809A7A6
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	cmp r0, #0x20 
	blt loc_809A7A6
	mov r0, #0x20 
	str r0, [r5,#0x74]
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #0
	pop {r4-r7,pc}
loc_809A7A6:
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #1
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	blt loc_809A7C4
	strh r0, [r5,#0xc]
	ldr r0, [r5,#0x70]
	ldrb r1, [r5,#0xf]
	sub r0, r0, r1
	str r0, [r5,#0x70]
	b loc_809A802
loc_809A7C4:
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq loc_809A802
	bl chatbox_8045F4C
	cmp r0, #0
	bne loc_809A7F6
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r1, #0
	strb r1, [r5,#9]
	ldr r0, off_809A894 // =scripts_86C580C 
	mov r1, #0x33 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x17
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #8
	mov r1, #0x84
	str r0, [r5,r1]
	b loc_809A7FE
loc_809A7F6:
	bl chatbox_8040818
	mov r1, #1
	strb r1, [r5,#9]
loc_809A7FE:
	mov r0, #0
	pop {r4-r7,pc}
loc_809A802:
	ldr r0, [r5,#0x74]
	bl sub_809A80C
	mov r0, #1
	pop {r4-r7,pc}
.func
.thumb_func
sub_809A80C:
	push {r4-r7,lr}
	add r7, r0, #0
	mov r0, r10
	ldr r0, [r0,#0x38]
	ldr r1, [r5,#0x70]
	str r1, [r0,#8]
	// j
	add r0, r7, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_809A850 // =byte_86C5790 
	mov r4, #9
	mov r5, #5
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	// j
	add r0, r7, #2
	// i
	mov r1, #2
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_809A854 // =loc_8099E78 
	mov r4, #6
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, off_809A858 // =unk_2033404 
	mov r1, #6
	ldr r2, off_809A85C // =unk_200EF40 
	ldr r3, dword_809A860 // =0x600d400 
	mov r4, #6
	mov r5, #1
	ldr r6, off_809A864 // =dword_86A5D60 
	mov r7, #4
	bl render_graphicalText_8045F8C
	pop {r4-r7,pc}
	.byte 0, 0
off_809A850: .word byte_86C5790
off_809A854: .word loc_8099E78
off_809A858: .word unk_2033404
off_809A85C: .word unk_200EF40
dword_809A860: .word 0x600D400
off_809A864: .word dword_86A5D60
.endfunc // sub_809A80C

.func
.thumb_func
sub_809A868:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#0x2c]
	ldr r0, off_809A88C // =dword_809A890 
	mov r1, #0x88
	ldr r1, [r5,r1]
	ldrb r0, [r0,r1]
	str r0, [r4,#0x4c]
	mov r0, #0
	str r0, [r4,#0x50]
	pop {r4,pc}
	.byte 0, 0
.endfunc // sub_809A868

.func
.thumb_func
sub_809A880:
	push {lr}
	ldr r0, off_809A88C // =dword_809A890 
	mov r1, #0x88
	ldr r1, [r5,r1]
	ldrb r0, [r0,r1]
	pop {pc}
off_809A88C: .word dword_809A890
dword_809A890: .word 0x321E140A
off_809A894: .word scripts_86C580C
byte_809A898: .byte 0x16, 0x0, 0x0, 0x5, 0x16, 0x1, 0x1, 0x5, 0x16, 0x2, 0x2, 0x5, 0xFF
	.byte 0xFF, 0xFF, 0xFF
unk_809A8A8: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x29 
	.byte 0xFF
	.byte 0x31 
	.byte 0x17
	.byte 0x47 
	.byte  1
	.byte 0xFF
	.byte  0
	.byte 0x4B 
	.byte 0xE5
	.byte 0xA8
	.byte  9
	.byte  8
	.byte 0x27 
	.byte 0xFF
	.byte  8
	.byte 0xC
	.byte  7
	.byte 0x3E 
	.byte 0xC
	.byte 0x58 
	.byte 0x6C 
	.byte  8
	.byte 0x3A 
	.byte  4
	.byte 0x4B 
	.byte 0x51 
	.byte 0xA9
	.byte  9
	.byte  8
	.byte 0x4B 
	.byte 0x8D
	.byte 0xA9
	.byte  9
	.byte  8
	.byte  2
	.byte 0xFF
	.byte  1
	.byte 0x4B 
	.byte 0xCD
	.byte 0xA9
	.byte  9
	.byte  8
	.byte 0x3B 
	.byte 0x4B 
	.byte  5
	.byte 0xAA
	.byte  9
	.byte  8
	.byte 0x3F 
	.byte  4
	.byte 0x4B 
	.byte 0x55 
	.byte 0xFD
	.byte  3
	.byte  8
	.byte  0
	.byte 0xF0
	.byte 0xB5
	.byte  0
	.byte 0x20
	.byte 0x99
	.byte 0xF7
	.byte 0x6A 
	.byte 0xFB
	.byte 0x4C 
	.byte 0x4F 
	.byte 0x56 
	.byte 0x46 
	.byte 0xF6
	.byte 0x6A 
	.byte 0xBA
	.byte 0x88
	.byte 0xF2
	.byte 0x64 
	.byte 0xEA
	.byte 0x67 
	.byte 0xFA
	.byte 0x88
	.byte 0x32 
	.byte 0x65 
	.byte 0x80
	.byte 0x20
	.byte 0x2A 
	.byte 0x50 
	.byte 0x38 
	.byte 0x8E
	.byte  3
	.byte 0x21 
	.byte  3
	.byte 0x28 
	.byte  0
	.byte 0xD0
	.byte  9
	.byte 0x21 
	.byte 0x29 
	.byte 0x71 
	.byte  0
	.byte 0x22 
	.byte 0x3A 
	.byte 0x86
	.byte 0xBA
	.byte 0x80
	.byte 0xFA
	.byte 0x80
	.byte 0xEA
	.byte 0x80
	.byte 0x6A 
	.byte 0x71 
	.byte 0x69 
	.byte 0xF7
	.byte 0x34 
	.byte 0xF8
	.byte 0x69 
	.byte 0xF7
	.byte 0xDA
	.byte 0xF8
	.byte 0xAB
	.byte 0xF7
	.byte 0xA0
	.byte 0xFE
	.byte  2
	.byte 0x48 
	.byte 0x66 
	.byte 0xF7
	.byte  3
	.byte 0xF9
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0x34 
	.byte 0xA9
	.byte  9
	.byte  8
	.byte 0x80
	.byte 0x79 
	.byte 0x6C 
	.byte 0x88
	.byte  0
	.byte 0x4E 
	.byte  3
	.byte  2
	.byte  0
	.byte 0x37 
	.byte  3
	.byte  2
	.byte 0xD8
	.byte 0x73 
	.byte 0x6C 
	.byte 0x88
	.byte  0
	.byte 0x65 
	.byte  3
	.byte  2
	.byte  0
	.byte 0x37 
	.byte  3
	.byte  2
	.byte  0
	.byte  0
	.byte  0
	.byte  0
.endfunc // sub_809A880

	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0xf5
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809A982
	mov r0, #0
	strb r0, [r5,#4]
	ldr r0, off_809A988 // =byte_809A898 
	bl sub_80465A0 // (void *a1) -> void
	ldr r0, [r5,#0x7c]
	mov r1, #0x80
	ldr r1, [r5,r1]
	mov r2, #0
	mov r3, #0
	bl sub_811980C
	ldr r0, dword_809AA00 // =0xffffffd0 
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	mov r0, #0
	pop {r4-r7,pc}
loc_809A982:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_809A988: .word byte_809A898
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	add r0, #0x10
	cmp r0, #0x60 
	ble loc_809A9A4
	mov r6, r10
	ldr r6, [r6,#0x2c]
	ldr r2, [r6,#0x4c]
	strh r2, [r5,#6]
	ldr r2, [r6,#0x50]
	strb r2, [r5,#5]
	mov r0, #0x60 
loc_809A9A4:
	strb r0, [r5,#4]
	ldr r1, dword_809AA00 // =0xffffffd0 
	add r0, r0, r1
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov r0, #0
	mov r1, #0xf5
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809A9C8
	mov r0, #0
	pop {r4-r7,pc}
loc_809A9C8:
	mov r0, #1
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	sub r0, #0x10
	cmp r0, #0
	bge loc_809A9D8
	mov r0, #0
loc_809A9D8:
	strb r0, [r5,#4]
	ldr r1, dword_809AA00 // =0xffffffd0 
	add r0, r0, r1
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_809A9FA
	mov r0, #0
	pop {r4-r7,pc}
loc_809A9FA:
	mov r0, #1
	pop {r4-r7,pc}
	.byte 0, 0
dword_809AA00: .word 0xFFFFFFD0
	push {r4-r7,lr}
	bl sub_8003962
	bl sub_8003AB2
	bl sub_800399A
	bl sub_8003AEA
	mov r0, #1
	bl sub_8033FC0
	mov r0, #0
	pop {r4-r7,pc}
	.word unk_200AC80
	.byte 0x16
	.byte  0
	.byte  0
	.byte  5
	.byte 0x16
	.byte  1
	.byte  1
	.byte  5
	.byte 0x16
	.byte  2
	.byte  2
	.byte  5
	.byte 0xFF
	.byte 0xFF
	.byte 0xFF
	.byte 0xFF
byte_809AA34: .byte 0x3F, 0x0, 0x6, 0x29, 0xFF, 0x31, 0x17, 0x47, 0x1, 0xFF
	.byte 0x0, 0x4B, 0xB9, 0xAA, 0x9, 0x8, 0x4B, 0xDD, 0xAA, 0x9
	.byte 0x8, 0x1C, 0x8, 0x1, 0x5F, 0xAA, 0x9, 0x8, 0x4, 0x80
	.byte 0x4B, 0x4D, 0xAD, 0x9, 0x8, 0x3F, 0x4, 0x4B, 0x55, 0xFD
	.byte 0x3, 0x8, 0x0, 0x4, 0x8, 0x4B, 0x21, 0xAB, 0x9, 0x8
	.byte 0x1C, 0x8, 0x1, 0x44, 0xAA, 0x9, 0x8, 0x1C, 0x8, 0x3
	.byte 0x87, 0xAA, 0x9, 0x8, 0x1C, 0x8, 0x4, 0x50, 0xAA, 0x9
	.byte 0x8, 0x4, 0x8, 0x4B, 0x71, 0xAC, 0x9, 0x8, 0x15, 0x50
	.byte 0xAA, 0x9, 0x8, 0x4, 0x88, 0x4B, 0x89, 0xAC, 0x9, 0x8
	.byte 0x1C, 0x8, 0x0, 0x50, 0xAA, 0x9, 0x8, 0x4B, 0xA5, 0xAC
	.byte 0x9, 0x8, 0x4B, 0xD1, 0xAC, 0x9, 0x8, 0x2, 0xFF, 0x1
	.byte 0x4B, 0xD, 0xAD, 0x9, 0x8, 0x3B, 0x4B, 0x4D, 0xAD, 0x9
	.byte 0x8, 0x3F, 0x4, 0x4B, 0x55, 0xFD, 0x3, 0x8, 0x0, 0x0
	.byte 0x0, 0x0
.func
.thumb_func
sub_809AAB8:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8033FC0
	bl sub_8003984
	bl sub_8003AD4
	ldr r0, off_809AD78 // =unk_2033404 
	mov r1, #0xa
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	bl sub_8046664 // () -> void
	mov r0, #0
	strb r0, [r5,#8]
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_809AAB8

.func
.thumb_func
sub_809AADC:
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_8045F3C
	beq loc_809AB1A
	bl chatbox_8045F4C
	cmp r0, #0
	bne loc_809AB0C
	ldr r0, off_809AD78 // =unk_2033404 
	mov r1, #0xc
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0x17
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #8
	mov r1, #0x84
	str r0, [r5,r1]
	mov r0, #0
	pop {r4-r7,pc}
loc_809AB0C:
	ldr r0, off_809AD78 // =unk_2033404 
	mov r1, #0xb
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0
	strb r0, [r5,#8]
	pop {r4-r7,pc}
loc_809AB1A:
	mov r0, #1
	pop {r4-r7,pc}
	.byte 0, 0
.endfunc // sub_809AADC

.func
.thumb_func
sub_809AB20:
	push {r4-r7,lr}
	mov r0, #0x17
	mov r1, #0x25 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809AB5A
	mov r0, #0x84
	ldr r0, [r5,r0]
	tst r0, r0
	beq loc_809AB3A
	sub r0, #1
	mov r1, #0x84
	str r0, [r5,r1]
loc_809AB3A:
	mov r0, r10
	ldr r0, [r0,#4]
	ldrb r0, [r0,#2]
	mov r1, #2
	and r1, r0
	beq loc_809AB5A
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x68 
	bl sound_play // () -> void
	ldr r0, off_809AD78 // =unk_2033404 
	mov r1, #0xb
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_809AC20
loc_809AB5A:
	mov r0, #8
	bl chatbox_8045F3C
	beq loc_809AC24
	sub sp, sp, #8
	mov r0, r10
	ldr r0, [r0,#0x2c]
	add r0, #0x4c 
	mov r1, sp
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, sp
	bl sub_813D41C
	str r4, [r5,#0x78]
	add sp, sp, #8
	cmp r0, #1
	beq loc_809AB92
	cmp r0, #2
	beq loc_809AC14
	ldr r0, off_809AD78 // =unk_2033404 
	mov r1, #0xd
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #1
	strb r0, [r5,#8]
	b loc_809AC20
loc_809AB92:
	mov r4, r10
	ldr r4, [r4,#0x2c] // Toolkit.chatbox
	str r2, [r4,#0x4c] // ChatBoxPropreties.unk_4C
	str r3, [r4,#0x50] // ChatBoxPropreties.unk_50
	cmp r1, #1
	beq loc_809ABC8
	cmp r1, #2
	beq loc_809ABDC
	cmp r1, #3
	beq loc_809ABF4
	str r2, [r5,#0x7c]
	mov r0, #0x80
	str r3, [r5,r0]
	mov r0, #0
	strh r0, [r5,#6]
	strb r0, [r5,#5]
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #1
	bl sub_8021AEE
	// initRefs
	ldr r0, off_809AC28 // =dword_809AC2C 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	mov r0, #0xf
	mov r1, #3
	b loc_809AC06
loc_809ABC8:
	push {r2}
	add r0, r2, #0
	mov r1, #1
	bl sub_803CD98
	pop {r0}
	bl sub_809AC48
	mov r1, #3
	b loc_809AC06
loc_809ABDC:
	add r0, r2, #0
	mov r1, #1
	bl sub_803CD98
	tst r0, r0
	bne loc_809ABEE
	mov r0, #0x11
	mov r1, #3
	b loc_809AC06
loc_809ABEE:
	mov r0, #0x12
	mov r1, #0
	b loc_809AC06
loc_809ABF4:
	add r0, r2, #0
	str r0, [r4,#0x4c]
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #1
	bl sub_803D108
	mov r0, #0x13
	mov r1, #3
loc_809AC06:
	str r0, [r5,#0x74]
	strb r1, [r5,#8]
	ldr r0, off_809AD7C // =byte_86C67E4 
	mov r1, #0xe
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_809AC20
loc_809AC14:
	ldr r0, off_809AD78 // =unk_2033404 
	mov r1, #0x14
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #1
	strb r0, [r5,#8]
loc_809AC20:
	mov r0, #0
	pop {r4-r7,pc}
loc_809AC24:
	mov r0, #1
	pop {r4-r7,pc}
off_809AC28: .word dword_809AC2C
dword_809AC2C: .word comp_86C7980 + 1<<31
	.word 0x2034E00
	.word unk_2033700
	.word comp_86C73D8 + 1<<31
	.word 0x2036500
	.word 0x2033700
	.word 0x0
.endfunc // sub_809AB20

.func
.thumb_func
sub_809AC48:
	push {r1-r7,lr}
	ldr r1, off_809AC64 // =byte_809AC68 
loc_809AC4C:
	ldrb r2, [r1]
	ldrb r3, [r1,#1]
	add r1, #2
	cmp r2, #0xff
	beq loc_809AC5E
	cmp r0, r2
	bne loc_809AC4C
	add r0, r3, #0
	pop {r1-r7,pc}
loc_809AC5E:
	mov r0, #0x1a
	pop {r1-r7,pc}
	.balign 4, 0x00
off_809AC64: .word byte_809AC68
byte_809AC68: .byte 0x53
byte_809AC69: .byte 0x15
	.hword 0x1651
	.word 0xFFFF1755, 0x6FA8B5F0, 0xF7941C00, 0x4840FA5B, 0xF7A56F69
	.word 0x2000FB81, 0xBDF0, 0x483CB5F0, 0xF7A56F69, 0x211CFB79
	.word 0x280F6F68, 0x2100D000, 0x20007229, 0xBDF0, 0x2000B5F0
	.word 0x48087128, 0xFC78F7AB, 0x21806FE8, 0x22005869, 0xF07E2300
	.word 0x4822FDA7, 0x22002158, 0xFDC6F07E, 0xBDF02000, 0x809AA24
	.word 0x7928B5F0, 0x28603010, 0x4656DD06, 0x6CF26AF6, 0x6D3280EA
	.word 0xE008716A, 0x49177128, 0x21581840, 0xF07E2200, 0x2701FDAF
	.word 0x2060E002, 0x27007128, 0xFC5CF7AB, 0xFC78F7AB, 0xBDF01C38
	.word 0x2000B5F0, 0xF79421F5, 0xD00BFA27, 0x38107928, 0xDA002800
	.word 0x71282000, 0x18404908, 0x22002158, 0xFD92F07E, 0xFC44F7AB
	.word 0xFC60F7AB, 0x20802701, 0xF8FEF7AB, 0x2700D100, 0xBDF01C38
	.word 0xFFFFFFD0, 0x2000B5F0, 0xF79421F5, 0x2017F9EB, 0xF7942125
	.word 0x2001F9E7, 0xF92EF799, 0xFDFDF768, 0xFEA3F768, 0xFE15F768
	.word 0xFEBBF768, 0xBDF02000
off_809AD78: .word unk_2033404
off_809AD7C: .word byte_86C67E4
	.word 0x2906003F, 0x71731FF, 0x3E14FF02, 0x873B9E0, 0x40FFF3A
	.word 0x1EFF0280, 0x80CFF27, 0x1EFF0207, 0x9ADA94B, 0x43F08
	.word 0xF09BB5F0, 0x2000FFEF, 0xBDF0, 0x3000002, 0x220000
	.word 0x2A0000, 0x0
	.word 0x7000002, 0x220000, 0x400000, 0x0
	.word 0x49A, 0x220000, 0x2A0000, 0x3, 0x220000, 0x400000, 0x7
	.word 0x7000003, 0xFF460000, 0xFF640000, 0x0
	.word 0x3000003, 0xFF460000, 0xFF640000, 0x0, 0x0
	.word 0xFF460000, 0xFF640000, 0x7, 0xFF460000, 0xFF4E0000
	.word 0x3, 0x7000205, 0xFF4A0000, 0xFFBA0000, 0x0
	.word 0x3000205, 0xFF4A0000, 0xFFBA0000, 0x0, 0x0
	.byte  0
	.byte  0
	.byte 0x4A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xBA
	.byte 0xFF
	.byte  7
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x4A 
	.byte 0xFF
	.byte  0
	.byte  0
	.byte 0xA4
	.byte 0xFF
	.byte  3
	.byte  0
	.byte  0
	.byte  0
unk_809AE68: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x3E 
	.byte 0xE0
	.byte 0xB9
	.byte 0x73 
	.byte  8
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x27 
	.byte 0xFF
	.byte 0xC
	.byte  8
	.byte  7
	.byte 0x4A 
	.byte  5
	.byte 0x4A 
	.byte  3
	.byte 0x4B 
	.byte  1
	.byte 0xAF
	.byte  9
	.byte  8
	.byte 0x3F 
	.byte 0x1C
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x27 
	.byte 0xFF
	.byte  8
	.byte  8
	.byte  7
	.byte  2
	.byte 0xFF
	.byte 0x82
	.byte 0x53 
	.byte 0xFF
	.byte  4
	.byte 0x17
	.byte 0xFF
	.byte 0x29 
	.byte 0x17
	.byte 0xB6
	.byte 0xAE
	.byte  9
	.byte  8
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x4D 
	.byte 0x8D
	.byte  0
	.byte 0x27 
	.byte 0xFF
	.byte 0x24 
	.byte 0xFF
	.byte  7
	.byte 0x53 
	.byte 0xFF
	.byte  5
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x27 
	.byte 0xFF
	.byte 0x20
	.byte  8
	.byte  7
	.byte 0x15
	.byte 0xBC
	.byte 0xAE
	.byte  9
	.byte  8
	.byte 0x4D 
	.byte 0x8E
	.byte  0
	.byte  2
	.byte 0xFF
	.byte 0xF
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x3A 
	.byte  4
	.byte  4
	.byte 0x80
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x14
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x27 
	.byte 0xFF
	.byte 0xC
	.byte  8
	.byte  7
	.byte 0x4A 
	.byte  3
	.byte 0x54 
	.byte  1
	.byte 0x3B 
	.byte 0x4B 
	.byte 0x7D 
	.byte 0xAF
	.byte  9
	.byte  8
	.byte 0x3F 
	.byte 0x3C 
	.byte 0x53 
	.byte 0xFF
	.byte  0
	.byte 0x2A 
	.byte 0xFF
	.byte 0x1A
	.byte 0x17
	.byte 0x2A 
	.byte 0xFF
	.byte 0x15
	.byte 0x17
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x4C 
	.byte 0x80
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.word 0x3F183F00, 0x3C0004, 0xAEC61540, 0x809, 0x4F2EB5F0
	.word 0x6BC94651, 0x223C7C89, 0x18BF434A, 0x6AB96A78, 0xF0032200
	.word 0x6AF8F945, 0xF9C7F003, 0xF0036AF8, 0xF003F90B, 0xF003F9E9
	.word 0xB4F0FAE5, 0x6B39202E, 0x23006B7A, 0xF7696BBC, 0xBCF0FC51
	.word 0x42006A38, 0x1C00D002, 0xF8E4F794, 0x2017242D, 0xF7942129
	.word 0xD000F907, 0x712C242E, 0xF7952000, 0x6A78F928, 0x6B3B6AB9
	.word 0x18C06B7C, 0x10401909, 0x22001049, 0xF932F795, 0xBDF02000
	.word 0x4F0FB5F0, 0x6BC94651, 0x223C7C89, 0x18BF434A, 0x20172600
	.word 0xF7942129, 0xD100F8E7, 0x19BF2610, 0x6878636F, 0x68FA68B9
	.word 0xF8FEF003, 0xF00378F8, 0x78F8F980, 0xF8C4F003, 0xF9A2F003
	.word 0xBDF02000, 0x809ADB4, 0x3F06003F, 0xB00D4B1C, 0x20120809
	.word 0x809AFEC, 0xAFFE2412, 0x28120809, 0x809B004, 0x2013200A
	.word 0x28132413, 0x3F0AFF02, 0x43F18, 0xFF040440, 0x10FF0147
	.word 0x20FF0542, 0xFF014700, 0x554B1100, 0x110809B0, 0x9B0D94B
	.word 0x1108, 0x4657B5F0, 0x69B86BFF, 0xF796301C, 0x38C0FD30
	.word 0x5C08490B, 0x201A7128, 0x20027168, 0x6A4969B9, 0x293C1409
	.word 0x2003DA00, 0x280271A8, 0x2018D001, 0x2000E000, 0x20008368
	.word 0x832843C0, 0xBDF02000, 0x809B050, 0x105, 0x4657B5F0
	.word 0x20026BFF, 0x6A4969B9, 0x293C1409, 0x2003DA00, 0x79A971E8
	.word 0xD0132902, 0xD1014288, 0xBDF02001, 0x200B69BB, 0x39408BD9
	.word 0x32408C5A, 0x33408CDB, 0x20E1B40F, 0xFA9EF765, 0xF934F003
	.word 0xE015BC0F, 0x42007C28, 0x2001D001, 0x69BBBDF0, 0x8BD9200B
	.word 0x8C5A3940, 0x8CDB3240, 0xB40F3350, 0xF76520E2, 0x2004FA89
	.word 0xF91FF003, 0xE7FFBC0F, 0x4120409, 0x4C02041B, 0xFB88F769
	.word 0xBDF02000, 0x48020000, 0x79A8B5F0, 0xD1052802, 0x5E28201A
	.word 0x83683801, 0xE009DC1E, 0x5E28201A, 0x83683801, 0x79E8DD18
	.word 0xD0012802, 0xBDF02001, 0x5A282018, 0x83283001, 0x42082107
	.word 0x4657D10C, 0x69BB6BFF, 0x40079E8, 0x43044C04, 0x69D9200B
	.word 0x6A5B6A1A, 0xFB5CF769, 0xBDF02001, 0x48000001, 0x4657B5F0
	.word 0x69B86BFF, 0xF796301C, 0x38C0FC9E, 0x280FDB0F, 0x2017DC0D
	.word 0xF7942129, 0xD104F80B, 0x49074806, 0xFE9CF79B, 0x4803E003
	.word 0xF79B2100, 0x2000FE97, 0xBDF0, 0x809AFC0, 0x8098384
	.word 0x8010002, 0x5000003, 0x1460000, 0x1C0000, 0x400000
	.word 0xFFE6008A, 0x30050, 0x5E0032, 0x780082, 0x8A0000
	.word 0x500086, 0x280003, 0x780050, 0x3800A0, 0x3000004
	.word 0xFF4C0000, 0xFED60000, 0x200000, 0x126008A, 0x70050
	.word 0x5E0032, 0x8C0096, 0x8A0038, 0x500086, 0x280007
	.word 0x780050, 0xA0, 0x3000005, 0xFF640000, 0xFF380000
	.word 0x600000, 0x86FFEA, 0x10050, 0x5E0032, 0x8C0096
	.word 0x8A0039, 0x500086, 0x280005, 0x780050, 0x3900A0
	.word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
	.word 0x126008A, 0x70050, 0x5E0032, 0x8C0096, 0x8A0038, 0x500086
	.word 0x280005, 0x780050, 0x3900A0, 0x5000001, 0x900000, 0x740000
	.word 0x0
	.word 0xFF76016A, 0x30090, 0x5E0032, 0x780082, 0x16A0000
	.word 0x900016, 0x280007, 0x780050, 0xA0, 0x3000004
	.word 0xFF4C0000, 0xFED60000, 0x200000, 0xFF76016A, 0x30090
	.word 0x5E0032, 0x780082, 0x16A0000, 0x900016, 0x280007
	.word 0x780050, 0xA0, 0x3000005, 0xFF640000, 0xFF380000
	.word 0x600000, 0xFF76016A, 0x30090, 0x5E0032, 0x780082
	.word 0x16A0000, 0x900016, 0x280007, 0x780050, 0xA0
	.word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
	.word 0xFF76016A, 0x30090, 0x5E0032, 0x780082, 0x16A0000
	.word 0x900016, 0x280007, 0x780050, 0xA0, 0x5000001
	.word 0x900000, 0x740000, 0x0
	.word 0xFEF6FFBA, 0x70050, 0x5E0032, 0x8C0096, 0xFFBA0000
	.word 0x50FE56, 0x280003, 0x780050, 0xA0, 0x5000003
	.word 0x1460000, 0x1C0000, 0x400000, 0xFEF6FFBA, 0x70050
	.word 0x5E0032, 0x8C0096, 0xFFBA0000, 0x50FE56, 0x280003
	.word 0x780050, 0xA0, 0x3000005, 0xFF640000, 0xFF380000
	.word 0x600000, 0xFEF6FFBA, 0x70050, 0x5E0032, 0x8C0096
	.word 0xFFBA0000, 0x50FE56, 0x280003, 0x780050, 0xA0
	.word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
	.word 0xFEF6FFBA, 0x70050, 0x5E0032, 0x8C0096, 0xFFBA0000
	.word 0x50FE56, 0x280003, 0x780050, 0xA0, 0x5000001
	.word 0x900000, 0x740000, 0x0
	.word 0xFF2EFFF2, 0x500B0, 0x5E0032, 0x780082, 0xFF520000
	.word 0xB0FF2E, 0x280001, 0x780050, 0x78, 0x5000003
	.word 0x1460000, 0x1C0000, 0x400000, 0xFF2EFFF2, 0x500B0
	.word 0x5E0032, 0x780082, 0xFF520000, 0xB0FF2E, 0x280001
	.word 0x780050, 0x78, 0x3000004, 0xFF4C0000, 0xFED60000
	.word 0x200000, 0xFF2EFFF2, 0x500B0, 0x5E0032, 0x780082
	.word 0xFF520000, 0xB0FF2E, 0x280001, 0x780050, 0x78
	.word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
	.word 0xFF2EFFF2, 0x500B0, 0x5E0032, 0x780082, 0xFF520000
	.word 0xB0FF2E, 0x280001, 0x780050, 0x78, 0x5000001
	.word 0x900000, 0x740000, 0x0, 0x0
	.word 0x40000, 0x0, 0x0, 0x0, 0x0
	.word 0x4, 0x0, 0x0
	.word 0x5000003, 0x1460000, 0x1C0000, 0x400000, 0x0
	.word 0x40000, 0x0, 0x0, 0x0, 0x0
	.word 0x4, 0x0, 0x0
	.word 0x3000004, 0xFF4C0000, 0xFED60000, 0x200000, 0x0
	.word 0x40000, 0x0, 0x0, 0x0, 0x0
	.word 0x4, 0x0, 0x0
	.word 0x3000005, 0xFF640000, 0xFF380000, 0x600000, 0x0
	.word 0x40000, 0x0, 0x0, 0x0, 0x0
	.word 0x4, 0x0, 0x0
	.byte 0x18
	.byte 0x8A
	.byte  0
	.byte 0x86
	.byte  0
	.byte 0x50 
	.byte  0
	.byte 0x20
	.byte  0
	.byte  8
	.byte 0x18
	.byte 0x6A 
	.byte  1
	.byte 0x16
	.byte  0
	.byte 0x90
	.byte  0
	.byte 0x20
	.byte  0
	.byte  8
	.byte 0x18
	.byte 0xBA
	.byte 0xFF
	.byte 0x56 
	.byte 0xFE
	.byte 0x50 
	.byte  0
	.byte 0x20
	.byte  0
	.byte  8
	.byte 0x18
	.byte 0x52 
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte 0xB0
	.byte  0
	.byte 0x20
	.byte  0
	.byte  8
	.byte  8
unk_809B5AD: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x3F 
	.byte 0x1C
	.byte 0x3F 
	.byte 0x14
	.byte 0x3E 
	.byte 0xD8
	.byte 0xC0
	.byte 0x73 
	.byte 0x88
	.byte 0x4B 
	.byte 0xA5
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x3A 
	.byte  4
	.byte  4
	.byte 0x80
	.byte 0x1C
	.byte  8
	.byte 0xFF
	.byte 0x5A 
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  0
	.byte 0x69 
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  1
	.byte 0x69 
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  2
	.byte 0x69 
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  3
	.byte 0x69 
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  4
	.byte 0x88
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  5
	.byte 0x88
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  6
	.byte 0x88
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  7
	.byte 0x88
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  8
	.byte 0xA7
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte  9
	.byte 0xA7
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0xA
	.byte 0xA7
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0xB
	.byte 0xA7
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0xC
	.byte 0xC6
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0xD
	.byte 0xC6
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0xE
	.byte 0xC6
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0xF
	.byte 0xC6
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0x10
	.byte 0xE5
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0x11
	.byte 0xE5
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0x12
	.byte 0xE5
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  8
	.byte 0x13
	.byte 0xE5
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x15
	.byte 0x5A 
	.byte 0xB6
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x20
	.byte 0x52 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0xA
	.byte 0x20
	.byte 0x3F 
	.byte 0x18
	.byte 0x3F 
	.byte 0x10
	.byte 0x3F 
	.byte  4
	.byte  0
	.byte 0x12
	.byte 0x20
	.byte 0x64 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x24 
	.byte 0x7B 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0xA
	.byte 0x20
	.byte 0xA
	.byte 0x24 
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x54 
	.byte  0
	.byte 0x84
	.byte 0xB5
	.byte  9
	.byte  8
	.byte  8
	.byte 0x15
	.byte 0xA
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x20
	.byte 0x64 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x24 
	.byte 0x7B 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0xA
	.byte 0x20
	.byte 0xA
	.byte 0x24 
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x54 
	.byte  0
	.byte 0x8E
	.byte 0xB5
	.byte  9
	.byte  8
	.byte  8
	.byte 0x15
	.byte 0xA
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x20
	.byte 0x64 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x24 
	.byte 0x7B 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0xA
	.byte 0x20
	.byte 0xA
	.byte 0x24 
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x54 
	.byte  0
	.byte 0x98
	.byte 0xB5
	.byte  9
	.byte  8
	.byte  8
	.byte 0x15
	.byte 0xA
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x20
	.byte 0x64 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x24 
	.byte 0x7B 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0xA
	.byte 0x20
	.byte 0xA
	.byte 0x24 
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x54 
	.byte  0
	.byte 0xA2
	.byte 0xB5
	.byte  9
	.byte  8
	.byte  8
	.byte 0x15
	.byte 0xA
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x20
	.byte 0x64 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0x12
	.byte 0x24 
	.byte 0x7B 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte 0xA
	.byte 0x20
	.byte 0xA
	.byte 0x24 
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x3A 
	.byte 0xFF
	.byte  1
	.byte  4
	.byte 0x80
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x4B 
	.byte 0x69 
	.byte 0xB8
	.byte  9
	.byte  8
	.byte 0x15
	.byte 0x2B 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x3A 
	.byte 0xFF
	.byte  0
	.byte  4
	.byte 0x80
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x4B 
	.byte  1
	.byte 0xB8
	.byte  9
	.byte  8
	.byte 0x4B 
	.byte 0x91
	.byte 0xB8
	.byte  9
	.byte  8
	.byte  2
	.byte 0xFF
	.byte 0x5A 
	.byte 0x12
	.byte 0x20
	.byte 0x47 
	.byte 0xB7
	.byte  9
	.byte  8
	.byte  9
	.byte  9
	.byte  1
	.byte 0x27 
	.byte 0xFF
	.byte 0xC
	.byte  8
	.byte  7
	.byte  2
	.byte 0xFF
	.byte 0x3C 
	.byte 0x29 
	.byte 0xFF
	.byte 0x3A 
	.byte  0
	.byte 0x28 
	.byte 0xFF
	.byte 0xFF
	.byte 0x4C 
	.byte 0x80
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.word 0x183F3B00, 0x4B00043F
	.word sub_809B910+1
	.word 0x9B9754B, 0x4401108, 0x147FF05, 0xFF4210FF, 0x47001008
	.word 0x1100FF01, 0x9B7ED4B, 0x5044008, 0xFF0147FF, 0x8FF4210
	.word 0x1470010, 0x401100FF, 0x210FF0C, 0xC4002FF, 0xFF020CFF
	.word 0xFF0C4002, 0x2FF0208, 0x4FF0C40, 0x4002FF02, 0x200FF0C
	.word 0x343F02FF, 0x11383F, 0x4C0AB5F0, 0x6BC04650, 0x807900
	.word 0x78201824, 0x78607128, 0xF0027168, 0x78A0FD78, 0xFCBCF002
	.word 0x69644654, 0x74202000, 0xBDF02000, 0x809B7D4, 0xFF010532
	.word 0xFF01050A
	.word 0xFFFFFFFF
	.byte 0x14
	.byte  5
	.byte  1
	.byte 0xFF
	.byte 0x1E
	.byte  3
	.byte  7
	.byte 0xFF
	.byte 0x28 
	.byte  3
	.byte  7
	.byte 0xFF
	.byte 0xF0
	.byte 0xB5
	.byte  2
	.byte 0xF0
	.byte 0x63 
	.byte 0xFD
	.byte  4
	.byte 0x30 
	.byte  7
	.byte 0x21 
	.byte  8
	.byte 0x40 
	.byte 0x68 
	.byte 0x71 
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0xF0
	.byte 0xB5
	.byte 0x28 
	.byte 0x7A 
	.byte 0x21 
	.byte 0x4F 
	.byte 0x34 
	.byte 0x21 
	.byte 0x41 
	.byte 0x43 
	.byte 0x7F 
	.byte 0x18
	.byte 0x6F 
	.byte 0x63 
	.byte 0x70 
	.byte 0x20
	.byte 0x2E 
	.byte 0x18
	.byte 0x20
	.byte 0xB4
	.byte 0xC
	.byte 0x20
	.byte 0x10
	.byte 0x21 
	.byte 0x79 
	.byte 0x5E 
	.byte  9
	.byte  4
	.byte 0x31 
	.byte 0x60 
	.byte 0x12
	.byte 0x22 
	.byte 0xBA
	.byte 0x5E 
	.byte 0x12
	.byte  4
	.byte 0x72 
	.byte 0x60 
	.byte 0x14
	.byte 0x23 
	.byte 0xFB
	.byte 0x5E 
	.byte 0x1B
	.byte  4
	.byte 0xB3
	.byte 0x60 
	.byte 0xFC
	.byte 0x8A
	.byte 0x64 
	.byte  8
	.byte 0xF4
	.byte 0x60 
	.byte 0x68 
	.byte 0xF7
	.byte 0xD4
	.byte 0xFF
	.byte 0x28 
	.byte 0x1C
	.byte 0x20
	.byte 0xBC
	.byte 0x30 
	.byte 0x61 
	.byte 0xF8
	.byte 0x8B
	.byte 0x70 
	.byte 0x61 
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0x61 
	.byte 0x68 
	.byte 0x61 
	.byte  0
	.byte 0x20
	.byte 0x38 
	.byte 0x21 
	.byte 0x93
	.byte 0xF7
	.byte 0x60 
	.byte 0xFC
	.byte  0
	.byte 0x20
	.byte 0x39 
	.byte 0x21 
	.byte 0x93
	.byte 0xF7
	.byte 0x5C 
	.byte 0xFC
	.byte 0x38 
	.byte 0x8C
	.byte  0
	.byte 0x42 
	.byte  2
	.byte 0xD0
	.byte  0
	.byte 0x1C
	.byte 0x93
	.byte 0xF7
	.byte 0x66 
	.byte 0xFC
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte 0xF0
	.byte 0xB5
	.byte 0x28 
	.byte 0x7A 
	.byte  7
	.byte 0x4F 
	.byte 0x34 
	.byte 0x21 
	.byte 0x41 
	.byte 0x43 
	.byte 0x7F 
	.byte 0x18
	.byte 0x6F 
	.byte 0x63 
	.byte  0
	.byte 0x20
	.byte 0x38 
	.byte 0x21 
	.byte 0x93
	.byte 0xF7
	.byte 0x49 
	.byte 0xFC
	.byte  0
	.byte 0x20
	.byte 0x39 
	.byte 0x21 
	.byte 0x93
	.byte 0xF7
	.byte 0x45 
	.byte 0xFC
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0x74 
	.byte 0xB1
	.byte  9
	.byte  8
	.byte 0xF0
	.byte 0xB5
	.byte 0x6F 
	.byte 0x6B 
	.byte 0x70 
	.byte 0x20
	.byte 0x2E 
	.byte 0x18
	.byte 0x68 
	.byte 0x69 
	.byte  1
	.byte 0x30 
	.byte 0x68 
	.byte 0x61 
	.byte 0x70 
	.byte 0x69 
	.byte  1
	.byte 0x38 
	.byte  0
	.byte 0xDB
	.byte 0x70 
	.byte 0x61 
	.byte 0x6B 
	.byte 0x69 
	.byte  0
	.byte 0x24 
	.byte 0x38 
	.byte 0x8B
	.byte 0x83
	.byte 0x42 
	.byte  9
	.byte 0xDB
	.byte  1
	.byte 0x24 
	.byte 0x78 
	.byte 0x8B
	.byte 0x83
	.byte 0x42 
	.byte  5
	.byte 0xDB
	.byte  2
	.byte 0x24 
	.byte 0xB8
	.byte 0x8B
	.byte 0x83
	.byte 0x42 
	.byte  1
	.byte 0xDB
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  9
	.byte 0x4B 
	.byte  0
	.byte 0xF0
	.byte 0x91
	.byte 0xF8
	.byte 0xF0
	.byte 0x69 
	.byte  0
	.byte 0x42 
	.byte 0xB
	.byte 0xD1
	.byte 0xF0
	.byte 0xB4
	.byte 0x35 
	.byte 0x69 
	.byte 0x67 
	.byte 0xF7
	.byte 0x96
	.byte 0xFA
	.byte 0xF0
	.byte 0xBC
	.byte  5
	.byte 0xD0
	.byte  1
	.byte 0x20
	.byte 0xF0
	.byte 0x61 
	.byte 0x8D
	.byte 0x20
	.byte 0xFF
	.byte 0x30 
	.byte 0x64 
	.byte 0xF7
	.byte 0x72 
	.byte 0xFE
	.byte  1
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte 0xF0
	.byte 0xB8
	.byte  9
	.byte  8
	.byte  8
	.byte  0
	.byte  4
	.byte  0
	.byte  2
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte  0
	.byte  8
	.byte  0
	.byte  4
	.byte  0
	.byte  2
	.byte 0xFF
	.byte 0xFF
	.byte 0xF8
	.byte  0
	.byte 0xFC
	.byte  0
	.byte 0xFE
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte  0
	.byte 0xF8
	.byte  0
	.byte 0xFC
	.byte  0
	.byte 0xFE
	.byte 0xFF
	.byte 0xFF
.endfunc // sub_809AC48

.func
.thumb_func
sub_809B910:
	push {r4-r7,lr}
	ldr r7, [r5,#0x34]
	mov r0, #0x70 
	add r6, r5, r0
	mov r1, #0x22 
	ldrsh r1, [r7,r1]
	lsl r1, r1, #0x10
	str r1, [r6]
	mov r2, #0x24 
	ldrsh r2, [r7,r2]
	lsl r2, r2, #0x10
	str r2, [r6,#4]
	mov r3, #0x26 
	ldrsh r3, [r7,r3]
	lsl r3, r3, #0x10
	str r3, [r6,#8]
	ldrh r4, [r7,#0x28]
	lsr r4, r4, #1
	str r4, [r6,#0xc]
	ldrh r0, [r7,#0x30]
	str r0, [r6,#0x18]
	mov r0, #0x10
	str r0, [r6,#0x14]
	mov r0, #0
	str r0, [r6,#0x1c]
	str r0, [r5,#0x14]
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x38 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x39 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldrh r0, [r7,#0x32]
	tst r0, r0
	beq loc_809B960
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_809B960:
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #1
	add r1, r6, #0
	bl sub_80301B2
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0x74 
	.byte 0xB1
	.byte  9
	.byte  8
	.byte 0xF0
	.byte 0xB5
	.byte 0x6F 
	.byte 0x6B 
	.byte 0x70 
	.byte 0x20
	.byte 0x2E 
	.byte 0x18
	.byte 0x68 
	.byte 0x69 
	.byte  1
	.byte 0x30 
	.byte 0x68 
	.byte 0x61 
	.byte 0xB0
	.byte 0x69 
	.byte  1
	.byte 0x38 
	.byte  1
	.byte 0xDB
	.byte 0xB0
	.byte 0x61 
	.byte  1
	.byte 0xE0
	.byte  1
	.byte 0x20
	.byte 0x68 
	.byte 0x72 
	.byte 0x6B 
	.byte 0x69 
	.byte  0
	.byte 0x24 
	.byte 0x78 
	.byte 0x8D
	.byte 0x83
	.byte 0x42 
	.byte  8
	.byte 0xDB
	.byte  1
	.byte 0x24 
	.byte 0xB8
	.byte 0x8D
	.byte 0x83
	.byte 0x42 
	.byte  4
	.byte 0xDB
	.byte  2
	.byte 0x24 
	.byte 0xF8
	.byte 0x8D
	.byte 0x83
	.byte 0x42 
	.byte  0
	.byte 0xDB
	.byte  3
	.byte 0x24 
	.byte  6
	.byte 0x4B 
	.byte  0
	.byte 0xF0
	.byte 0x1D
	.byte 0xF8
	.byte 0xF0
	.byte 0x69 
	.byte  0
	.byte 0x42 
	.byte  5
	.byte 0xD1
	.byte  1
	.byte 0x20
	.byte 0xF0
	.byte 0x61 
	.byte 0x8E
	.byte 0x20
	.byte 0xFF
	.byte 0x30 
	.byte 0x64 
	.byte 0xF7
	.byte  4
	.byte 0xFE
	.byte  1
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte 0xCC
	.byte 0xB9
	.byte  9
	.byte  8
	.byte  4
	.byte  0
	.byte  4
	.byte  0
	.byte  8
	.byte  0
	.byte 0xC
	.byte  0
	.byte  0
	.byte  4
	.byte  0
	.byte  4
	.byte  0
	.byte  8
	.byte  0
	.byte 0xC
	.byte 0xFC
	.byte  0
	.byte 0xFC
	.byte  0
	.byte 0xF8
	.byte  0
	.byte 0xF4
	.byte  0
	.byte  0
	.byte 0xFC
	.byte  0
	.byte 0xFC
	.byte  0
	.byte 0xF8
	.byte  0
	.byte 0xF4
.endfunc // sub_809B910

.func
.thumb_func
sub_809B9EC:
	push {r4-r7,lr}
	ldr r0, [r6,#0xc]
	lsl r0, r0, #3
	add r3, r3, r0
	lsl r0, r4, #1
	add r3, r3, r0
	mov r0, #0
	ldrsb r0, [r3,r0]
	lsl r0, r0, #0xe
	mov r2, #1
	ldrsb r2, [r3,r2]
	lsl r2, r2, #0xe
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r6]
	ldr r3, [r6,#4]
	add r3, r3, r2
	str r3, [r6,#4]
	pop {r4-r7,pc}
	.byte  0
	.byte  0
.endfunc // sub_809B9EC

.func
.thumb_func
sub_809BA14:
	push {r5-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x10]
	mov r0, #0x70 
	add r6, r5, r0
	ldr r0, [r6]
	ldr r1, [r6,#4]
	ldr r2, [r6,#8]
	ldr r3, [r6,#0xc]
	ldr r4, [r6,#0x14]
	cmp r4, #0x10
	ble locret_809BA2E
	mov r4, #0x10
locret_809BA2E:
	pop {r5-r7,pc}
	.byte 0x8A
	.byte  0
	.byte 0x26 
	.byte  1
	.byte 0x50 
	.byte  0
	.byte  7
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte 0x38 
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0x8A
	.byte  0
	.byte 0xE6
	.byte 0xFF
	.byte 0x50 
	.byte  0
	.byte  3
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xEA
	.byte 0xFF
	.byte 0x86
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  1
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte 0x39 
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xEA
	.byte 0xFF
	.byte 0x86
	.byte  0
	.byte 0x50 
	.byte  0
	.byte  1
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte 0x39 
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0x6A 
	.byte  1
	.byte 0x76 
	.byte 0xFF
	.byte 0x90
	.byte  0
	.byte  3
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0x6A 
	.byte  1
	.byte 0x76 
	.byte 0xFF
	.byte 0x90
	.byte  0
	.byte  3
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0x6A 
	.byte  1
	.byte 0x76 
	.byte 0xFF
	.byte 0x90
	.byte  0
	.byte  3
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0x6A 
	.byte  1
	.byte 0x76 
	.byte 0xFF
	.byte 0x90
	.byte  0
	.byte  3
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xBA
	.byte 0xFF
	.byte 0xF6
	.byte 0xFE
	.byte 0x50 
	.byte  0
	.byte  7
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xBA
	.byte 0xFF
	.byte 0xF6
	.byte 0xFE
	.byte 0x50 
	.byte  0
	.byte  7
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xBA
	.byte 0xFF
	.byte 0xF6
	.byte 0xFE
	.byte 0x50 
	.byte  0
	.byte  7
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xBA
	.byte 0xFF
	.byte 0xF6
	.byte 0xFE
	.byte 0x50 
	.byte  0
	.byte  7
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x96
	.byte  0
	.byte 0x8C
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xF2
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte 0xB0
	.byte  0
	.byte  5
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xF2
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte 0xB0
	.byte  0
	.byte  5
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xF2
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte 0xB0
	.byte  0
	.byte  5
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte 0xF2
	.byte 0xFF
	.byte 0x2E 
	.byte 0xFF
	.byte 0xB0
	.byte  0
	.byte  5
	.byte  0
	.byte 0x32 
	.byte  0
	.byte 0x5E 
	.byte  0
	.byte 0x82
	.byte  0
	.byte 0x78 
	.byte  0
	.byte  0
	.byte  0
	.byte 0xFF
	.byte 0xFF
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.word 0x40000, 0x0, 0x0
	.word 0xFFFF0000, 0x0
	.word 0x40000, 0x0, 0x0
	.word 0xFFFF0000, 0x0
	.word 0x40000, 0x0, 0x0
	.word 0xFFFF0000, 0x0
	.word 0x40000, 0x0, 0x0
	.word 0xFFFF0000, 0x74009018, 0x20000000, 0x46180800, 0x40001C01
	.word 0x8002000, 0xD6FF4C18, 0x200020FE, 0x64180800, 0x60FF38FF
	.word 0x8002000, 0x6003F08, 0x73C0D83E, 0x1FF0288, 0x1C3F343F
	.word 0xB94B143F, 0x1C0809BD, 0xBC8B0008, 0x81C0809, 0x9BC8B01
	.word 0x2081C08, 0x809BC8B, 0x8B03081C, 0x1C0809BC, 0xBCBA0408
	.word 0x81C0809, 0x9BCBA05, 0x6081C08, 0x809BCBA, 0xBA07081C
	.word 0x1C0809BC, 0xBCE90808, 0x81C0809, 0x9BCE909, 0xA081C08
	.word 0x809BCE9, 0xE90B081C, 0x1C0809BC, 0xBD180C08, 0x81C0809
	.word 0x9BD180D, 0xE081C08, 0x809BD18, 0x180F081C, 0x1C0809BD
	.word 0xBD471008, 0x81C0809, 0x9BD4711, 0x12081C08, 0x809BD47
	.word 0x4713081C, 0x120809BD, 0x9BD7320, 0x8FF2708, 0x200A0708
	.word 0x541EFF02, 0x9BBC000, 0xFF020808, 0x7C20121E, 0x120809BD
	.word 0x9BD8E24, 0xA200A08, 0xBD641524, 0x20120809, 0x809BD73
	.word 0x808FF27, 0x2200A07, 0x541EFF, 0x809BBCA, 0x1EFF0208
	.word 0xBD7C2012, 0x24120809, 0x809BD8E, 0x240A200A, 0x9BD6415
	.word 0x73201208, 0x270809BD, 0x70808FF, 0xFF02200A, 0xD400541E
	.word 0x80809BB, 0x121EFF02, 0x9BD7C20, 0x8E241208, 0xA0809BD
	.word 0x15240A20, 0x809BD64, 0xBD732012, 0xFF270809, 0xA070808
	.word 0x1EFF0220, 0xBBDE0054, 0x2080809, 0x20121EFF, 0x809BD7C
	.word 0xBD8E2412, 0x200A0809, 0x6415240A, 0x270809BD, 0x70808FF
	.word 0x121EFF02, 0x9BD7C20, 0x8E241208, 0xA0809BD, 0x15240A20
	.word 0x809BD64, 0x3AFF2A, 0x128FF2A, 0x103F183F, 0x4D00043F
	.word 0xC14B018C, 0x110809BE, 0x303F0154, 0x10FF0147, 0x1010FF42
	.word 0xFF014700, 0xC401100, 0xFF0200FF, 0xFF0C4002, 0x2FF0204
	.word 0x8FF0C40, 0x4002FF02, 0x20CFF0C, 0xC4002FF, 0xFF0210FF
	.word 0x3F303F02, 0x1138, 0x2001B5F0, 0xF7932128, 0xD001F9D1
	.word 0xE00E2003, 0x46524C27, 0x89936BD2, 0x20008892, 0x42918861
	.word 0x8821D102, 0xD0024299, 0x30013404, 0x7228E7F6, 0xDA322810
	.word 0x186E2170, 0x21144F1C, 0x187F4341, 0xB42061F7, 0x2100200C
	.word 0x4095E79, 0x22026031, 0x4125EBA, 0x23046072, 0x41B5EFB
	.word 0x88FC60B3, 0x60F40864, 0xFCE0F768, 0xBC201C28, 0x89F86130
	.word 0x20006170, 0x20006168, 0xF7932138, 0x2000F96D, 0xF7932139
	.word 0x8A38F969, 0xD0024200, 0xF7931C00, 0x2001F973, 0xF7941C31
	.word 0x4653F9B0, 0x6A586BDB, 0x6ADA6A99, 0xF9A2F002, 0xBDF02000
	.word 0x809BA30, 0x809BE6C, 0x10003, 0x10004, 0x10005
	.word 0x10000, 0x30001, 0x30004, 0x30005, 0x30000
	.word 0x40001, 0x40003, 0x40005, 0x40000, 0x50001
	.word 0x50003, 0x50004, 0x50000, 0x1, 0x3
	.word 0x4, 0x5, 0x0
.endfunc // sub_809BA14

	push {r4-r7,lr}
	mov r0, #0x70 
	add r6, r5, r0
	ldr r7, [r6,#0x1c]
	ldr r0, [r5,#0x14]
	add r0, #1
	str r0, [r5,#0x14]
	ldr r0, [r6,#0x14]
	sub r0, #1
	blt loc_809BED6
	str r0, [r6,#0x14]
loc_809BED6:
	ldr r3, [r5,#0x14]
	mov r4, #0
	ldrh r0, [r7,#8]
	cmp r3, r0
	blt loc_809BEF4
	mov r4, #1
	ldrh r0, [r7,#0xa]
	cmp r3, r0
	blt loc_809BEF4
	mov r4, #2
	ldrh r0, [r7,#0xc]
	cmp r3, r0
	blt loc_809BEF4
	mov r0, #0
	pop {r4-r7,pc}
loc_809BEF4:
	ldr r3, off_809BF00 // =dword_809BF04 
	bl sub_809B9EC
	mov r0, #1
	pop {r4-r7,pc}
	.byte 0, 0
off_809BF00: .word dword_809BF04
dword_809BF04: .word 0x40008, 0xFFFF0002, 0x4000800, 0xFFFF0200, 0xFC00F8
	.word 0xFFFF00FE, 0xFC00F800, 0xFFFFFE00, 0x100018C, 0xFF600000
	.word 0xFFF20000, 0x0
	.word 0xFF001004, 0x67BFF06, 0xFF0684, 0x1000A8C, 0xFF600000
	.word 0xFFF20000, 0x0
	.word 0xFF001004, 0x856FF08, 0xFF0861, 0x1000F8C, 0xFF600000
	.word 0xFFF20000, 0x0
	.word 0xFF001004, 0xA44FF07, 0xFF0ABC, 0x100008D, 0xFF600000
	.word 0xFFF20000, 0x0
	.word 0xFF001004, 0xC6DFF09, 0xFF0CDE, 0x100018D, 0xFF600000
	.word 0xFFF20000, 0x0
	.byte  4
	.byte 0x10
	.byte  0
	.byte 0xFF
	.byte 0xA
	.byte 0xFF
	.byte 0xA7
	.byte 0xC
	.byte 0xE2
	.byte 0xC
	.byte 0xFF
	.byte  0
unk_809BFB0: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x29 
	.byte 0xFF
	.byte 0x31 
	.byte 0x17
	.byte 0x4B 
	.byte 0xE9
	.byte 0xBF
	.byte  9
	.byte  8
	.byte 0x1C
	.byte  5
	.byte 0xFF
	.byte 0xCA
	.byte 0xBF
	.byte  9
	.byte  8
	.byte 0x3A 
	.byte  5
	.byte  4
	.byte 0x80
	.byte  2
	.byte 0xFF
	.byte 0x14
	.byte 0x27 
	.byte  6
	.byte 0xFF
	.byte 0xFF
	.byte  7
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x4B 
	.byte 0x1D
	.byte 0xC0
	.byte  9
	.byte  8
	.byte 0x4C 
	.byte 0x80
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x15
	.byte 0xE3
	.byte 0xBF
	.byte  9
	.byte  8
	.byte 0x3F 
	.byte  4
	.byte  0
	.byte  0
	.byte  0
	.byte 0xF0
	.byte 0xB5
	.byte 0x29 
	.byte 0x79 
	.byte 0xA
	.byte 0x48 
	.byte 0x1C
	.byte 0x22 
	.byte 0x4A 
	.byte 0x43 
	.byte 0x80
	.byte 0x18
	.byte 0x68 
	.byte 0x63 
	.byte 0xC1
	.byte 0x7C 
	.byte 0x69 
	.byte 0x71 
	.byte  1
	.byte 0x7C 
	.byte 0xA9
	.byte 0x71 
	.byte 0x41 
	.byte 0x7C 
	.byte 0xE9
	.byte 0x71 
	.byte 0x52 
	.byte 0x46 
	.byte 0xD2
	.byte 0x6B 
	.byte 0x81
	.byte 0x7C 
	.byte 0xFF
	.byte 0x29 
	.byte  2
	.byte 0xD0
	.byte 0x91
	.byte 0x75 
	.byte 0x10
	.byte 0x21 
	.byte 0xD1
	.byte 0x75 
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0x24 
	.byte 0xBF
	.byte  9
	.byte  8
	.byte 0xF0
	.byte 0xB5
	.byte 0x6F 
	.byte 0x6B 
	.byte 0xF8
	.byte 0x8A
	.byte  0
	.byte 0x1C
	.byte 0x93
	.byte 0xF7
	.byte 0xA0
	.byte 0xF8
	.byte 0xB
	.byte 0xD0
	.byte  1
	.byte 0x20
	.byte 0x20
	.byte 0x21 
	.byte 0x93
	.byte 0xF7
	.byte 0x99
	.byte 0xF8
	.byte  6
	.byte 0xD0
	.byte  0
	.byte 0x20
	.byte 0x99
	.byte 0xF7
	.byte 0x95
	.byte 0xF9
	.byte 0x53 
	.byte 0x46 
	.byte 0xDB
	.byte 0x6B 
	.byte 0x80
	.byte 0x20
	.byte 0x98
	.byte 0x71 
	.byte 0x6F 
	.byte 0x6B 
	.byte 0x38 
	.byte 0x8B
	.byte  0
	.byte 0x42 
	.byte  2
	.byte 0xD0
	.byte  0
	.byte 0x1C
	.byte 0x93
	.byte 0xF7
	.byte 0x70 
	.byte 0xF8
	.byte 0x65 
	.byte 0xF7
	.byte 0x39 
	.byte 0xF8
	.byte 0x38 
	.byte 0x7D 
	.byte 0x65 
	.byte 0xF7
	.byte 0x32 
	.byte 0xF8
	.byte 0x84
	.byte 0xF0
	.byte 0xC9
	.byte 0xFE
	.byte 0x97
	.byte 0xF7
	.byte 0xBD
	.byte 0xFF
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x29 
	.byte 0xFF
	.byte 0x31 
	.byte 0x17
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x47 
	.byte  0
	.byte 0xFF
	.byte  4
	.byte 0x40 
	.byte  4
	.byte 0xFF
	.byte  4
	.byte 0x3E 
	.byte 0xE0
	.byte 0xB9
	.byte 0x73 
	.byte  8
	.byte  7
	.byte 0x53 
	.byte  5
	.byte 0xFF
	.byte  2
	.byte 0xFF
	.byte 0x3E 
	.byte 0x53 
	.byte 0xFF
	.byte  1
	.byte 0x4B 
	.byte 0x9D
	.byte 0xC0
	.byte  9
	.byte  8
	.byte 0x3A 
	.byte  4
	.byte  4
	.byte 0x80
	.byte 0x2A 
	.byte 0xFF
	.byte 0x3C 
	.byte 0x17
	.byte 0x3F 
	.byte  4
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	push {r4-r7,lr}
	bl reqBBS_8140974
	add r2, r0, #0
	ldr r0, dword_809C0E4 // =0x1ca0 
	ldrb r1, [r5,#6]
	add r0, r0, r1
	add r0, r0, r2
	bl sub_802F238
	ldrb r0, [r5,#7]
	tst r0, r0
	beq loc_809C0DE
	bl reqBBS_8140974
	add r2, r0, #0
	ldr r0, dword_809C0E8 // =0x1d20 
	ldrb r1, [r5,#6]
	add r0, r0, r1
	add r0, r0, r2
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	bl reqBBS_8140974
	add r2, r0, #0
	ldr r0, dword_809C0EC // =0x1da0 
	ldrb r1, [r5,#6]
	add r0, r0, r1
	add r0, r0, r2
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl SetEventFlag // (u16 entryFlagBitfield) -> void
loc_809C0DE:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_809C0E4: .word 0x1CA0
dword_809C0E8: .word 0x1D20
dword_809C0EC: .word 0x1DA0
off_809C0F0: .word dword_809C108
	.word off_809C140
	.word off_809C174
	.byte 0, 0, 0, 0
	.word off_809C1DC
	.word off_809C2A8
dword_809C108: .word 0x0
	.word dword_809C110
dword_809C110: .word 0xFFA80000, 0xFEF80000, 0x0
	.word 0x101, 0x12A, 0x18E, 0xFFA80000, 0xFF580000, 0x0
	.word 0x103, 0x12A, 0x18E
off_809C140: .word dword_809C144
dword_809C144: .word 0xFF8A0000, 0x1260000, 0x400000, 0x1, 0x12B, 0x18F, 0xFF8A0000
	.word 0x1660000, 0x400000, 0x3, 0x12B, 0x18F
off_809C174: .word dword_809C17C
	.word dword_809C1AC
dword_809C17C: .word 0xFF900000, 0xFEF00000, 0x200000, 0x0
	.word 0x12C
	.word 0x190
	.word 0xFFD00000, 0xFEF00000, 0x200000, 0x2, 0x12C, 0x190
dword_809C1AC: .word 0xFE6A0000, 0x1560000, 0x0, 0x0
	.word 0x12D, 0x191, 0xFEAA0000, 0x1560000, 0x0
	.word 0x2, 0x12D, 0x191
off_809C1DC: .word dword_809C1E8
	.word dword_809C248
	.word off_809C278
dword_809C1E8: .word 0xFF1E0000, 0xE00000, 0x0
	.word 0x201, 0x12E, 0x192, 0xFF1E0000, 0x1600000, 0x0
	.word 0x203, 0x12E, 0x192, 0xFE220000, 0xBC0000, 0x200000
	.word 0x100, 0x12F, 0x193, 0xFE820000, 0xBC0000, 0x200000
	.word 0x102, 0x12F, 0x193
dword_809C248: .word 0xFF680000, 0xFEF80000, 0x400000, 0x0
	.word 0x130
	.word 0x194
	.word 0xFFA80000, 0xFEF80000, 0x400000, 0x2, 0x130, 0x194
off_809C278: .word unk_2020000
	.word 0xFEDE0000, 0x0
	.word 0x1, 0x131, 0x195, 0x2020000, 0xFF1E0000, 0x0
	.word 0x3, 0x131, 0x195
off_809C2A8: .word dword_809C2AC
dword_809C2AC: .word 0xA0000, 0x1560000, 0x0, 0x0
	.word 0x132, 0x196, 0x4A0000, 0x1560000, 0x0
	.word 0x2, 0x132, 0x196, 0x4004, 0x1, 0x60040800, 0x10000, 0x8000000
	.word 0x8004, 0x1, 0x40040800, 0x0
	.word 0x8000001, 0x6004, 0x10000, 0x80040800, 0x0
	.word 0x8000001, 0x4004, 0xFF, 0x60040800, 0xFF0000, 0x8000000
	.word 0x8004, 0xFF, 0x40040800, 0x0
	.word 0x80000FF, 0x6004, 0xFF0000, 0x80040800, 0x0
dword_809C350: .word 0x80000FF, 0x14, 0x6003F00, 0xFF021C3F, 0xB9E03E01
	.word 0xFF020873, 0xBBFF1901, 0x9C37E01, 0x1EFF3A08, 0xFF028004
	.word 0x3F183F01, 0xFF020004, 0xCFF2708, 0x54A0708, 0x9C7A14B
	.word 0xC7FD4B08, 0x154B0809, 0x4B0809C8, 0x809C831, 0x271EFF02
	.word 0x70808FF, 0x3A1EFF02, 0x800441FF, 0x1C1EFF02, 0xC4030005
	.word 0x51C0809, 0x9C40E01, 0x2051C08, 0x809C419, 0x2403051C
	.word 0x1C0809C4, 0xC42F0405, 0x51C0809, 0x9C43A05, 0x6051C08
	.word 0x809C445, 0x5007051C, 0x1C0809C4, 0xC45B0805, 0x51C0809
	.word 0x9C46609, 0xA051C08, 0x809C471, 0x7C0B051C, 0x120809C4
	.word 0x9C4AA20, 0xC4821508, 0x20120809, 0x809C4CF, 0x9C48215
	.word 0xE201208, 0x150809C5, 0x809C482, 0xC5672012, 0x82150809
	.word 0x120809C4, 0x9C58C20, 0xC4821508, 0x20120809, 0x809C5CB
	.word 0x9C48215, 0x24201208, 0x150809C6, 0x809C482, 0xC6492012
	.word 0x82150809, 0x120809C4, 0x9C68820, 0xC4821508, 0x20120809
	.word 0x809C6E1, 0x9C48215, 0x6201208, 0x150809C7, 0x809C482
	.word 0xC7452012, 0x200A0809, 0x271EFF02, 0x7080CFF, 0x9C9554B
	.word 0x13034A08, 0x52404920, 0x2012C01, 0xFF271EFF, 0x54070808
	.word 0x3F183F01, 0x490004, 0x27, 0x0
	.word 0x49000000, 0x2801, 0x0, 0x0
	.word 0x2010809, 0x44001FF, 0x491101FF, 0x2700, 0x0, 0x0
	.word 0x280149, 0x0, 0x0
	.word 0x27024900
	.word 0x0
	.word 0x10000, 0x3490000, 0x28, 0x1000000, 0x9000000, 0xFF020108
	.word 0xFF044001, 0x491101, 0x27
	.word 0x0
	.word 0x49000000, 0x2801, 0x0, 0x0
	.word 0x270249, 0x0
	.word 0x100
	.word 0x28034900
	.word 0x0
	.word 0x10000, 0x4490000, 0x27, 0x2000000, 0x49000000, 0x2805
	.word 0x0
	.word 0x2, 0x2010809, 0x44001FF, 0x491101FF, 0x2700, 0x0
	.word 0x100
	.word 0x280149, 0x0, 0x0
	.word 0x1080900, 0x4001FF02, 0x1103FF04, 0x270049, 0x0
	.word 0x10000, 0x28014900, 0x0, 0x0
	.word 0x2490000, 0x27, 0x1000000, 0x49000001, 0x2803, 0x0
	.word 0x1, 0x2010809, 0x44001FF, 0x491103FF, 0x2700, 0x0
	.word 0x100
	.word 0x280149, 0x0, 0x0
	.word 0x27024900
	.word 0x0
	.word 0x1010000, 0x3490000, 0x28, 0x1000000, 0x49000000
	.word 0x2704, 0x0
	.word 0x102, 0x280549, 0x0
	.word 0x200
	.word 0x1080900, 0x4001FF02, 0x1103FF04, 0x270049, 0x0, 0x0
	.word 0x28014900
	.word 0x0
	.word 0x0
	.word off_8090000
	.word 0x1FF0201, 0x5FF0440, 0x27004911, 0x0, 0x0
	.word 0x1490000, 0x28, 0x0
	.word 0x49000000, 0x2702, 0x0
	.word 0x1, 0x280349, 0x0
	.word 0x100
	.word 0x1080900, 0x4001FF02, 0x1105FF04, 0x270049, 0x0
	.word 0x0
	.word 0x28014900
	.word 0x0
	.byte 0, 0, 0, 0
	.word 0x2490000, 0x27, 0x1000000, 0x49000000, 0x2803, 0x0
	.word 0x1, 0x270449, 0x0
	.word 0x200
	.word 0x28054900
	.word 0x0
	.word 0x20000, 0x8090000, 0x1FF0201, 0x5FF0440, 0x27004911
	.word 0x0
	.word 0x1000000, 0x1490000, 0x28, 0x0
	.word 0x9000000, 0xFF020108, 0xFF044001, 0x491107, 0x27
	.word 0x0
	.word 0x49000001
	.word 0x2801
	.word 0
	.byte 0, 0, 0, 0
	.word 0x270249, 0x0
	.word 0x10100, 0x28034900
	.word 0x0
	.word 0x10000, 0x8090000, 0x1FF0201, 0x7FF0440, 0x27004911
	.word 0x0
	.word 0x1000000, 0x1490000, 0x28, 0x0
	.word 0x49000000, 0x2702, 0x0
	.word 0x101, 0x280349, 0x0
	.word 0x100
	.word 0x27044900
	.word 0x0
	.byte  0
	.byte  0
	.byte  2
	.byte  1
	.byte  0
	.byte  0
	.byte 0x49 
	.byte  5
	.byte 0x28 
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  2
	.byte  0
	.byte  0
	.byte  0
	.byte  9
	.byte  8
	.byte  1
	.byte  2
	.byte 0xFF
	.byte  1
	.byte 0x40 
	.byte  4
	.byte 0xFF
	.byte  7
	.byte 0x11
	.byte  0
	.byte  0
	.byte 0xF0
	.byte 0xB5
	.byte 0x68 
	.byte 0x68 
	.byte 0x28 
	.byte 0x67 
	.byte 0x14
	.byte 0x49 
	.byte  0
	.byte 0x22 
	.byte 0xA
	.byte 0x70 
	.byte  0
	.byte 0x22 
	.byte 0x82
	.byte 0x58 
	.byte 0x12
	.byte 0xC
	.byte 0x12
	.byte  1
	.byte  1
	.byte 0x23 
	.byte 0xCA
	.byte 0x54 
	.byte 0x12
	.byte 0xA
	.byte  1
	.byte 0x33 
	.byte 0xCA
	.byte 0x54 
	.byte  4
	.byte 0x22 
	.byte 0x82
	.byte 0x58 
	.byte 0x12
	.byte 0xC
	.byte 0x12
	.byte  1
	.byte  3
	.byte 0x23 
	.byte 0xCA
	.byte 0x54 
	.byte 0x12
	.byte 0xA
	.byte  1
	.byte 0x33 
	.byte 0xCA
	.byte 0x54 
	.byte  8
	.byte 0x22 
	.byte 0x82
	.byte 0x58 
	.byte 0x12
	.byte 0xC
	.byte 0x12
	.byte  1
	.byte  5
	.byte 0x23 
	.byte 0xCA
	.byte 0x54 
	.byte 0x12
	.byte 0xA
	.byte  1
	.byte 0x33 
	.byte 0xCA
	.byte 0x54 
	.byte  8
	.byte 0x22 
	.byte 0xCA
	.byte 0x71 
	.byte  1
	.byte 0x22 
	.byte 0xEA
	.byte 0x74 
	.byte 0xE9
	.byte 0x63 
	.byte  8
	.byte 0x1C
	.byte 0x9A
	.byte 0xF7
	.byte 0xD3
	.byte 0xFB
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0xE0
	.byte 0x65 
	.byte  0
	.byte  2
	.byte 0xF0
	.byte 0xB5
	.byte 0x2B 
	.byte 0x6F 
	.byte  0
	.byte 0x20
	.byte 0x18
	.byte 0x58 
	.byte  4
	.byte 0x21 
	.byte 0x59 
	.byte 0x58 
	.byte  8
	.byte 0x22 
	.byte 0x9A
	.byte 0x58 
	.byte  1
	.byte 0xF0
	.byte 0xBC
	.byte 0xFC
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte 0xF0
	.byte 0xB5
	.byte 0x2B 
	.byte 0x6F 
	.byte 0xC
	.byte 0x20
	.byte 0x18
	.byte 0x5C 
	.byte  2
	.byte 0x49 
	.byte  8
	.byte 0x5C 
	.byte  1
	.byte 0xF0
	.byte 0x8C
	.byte 0xFC
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte 0x2C 
	.byte 0xC8
	.byte  9
	.byte  8
	.byte  1
	.byte  3
	.byte  5
	.byte  7
	.byte 0xF0
	.byte 0xB5
	.byte 0x2B 
	.byte 0x6F 
	.byte 0xC
	.byte 0x20
	.byte 0x18
	.byte 0x5C 
	.byte 0x80
	.byte  0
	.byte 0xD
	.byte 0x21 
	.byte 0x59 
	.byte 0x5C 
	.byte  3
	.byte 0x4A 
	.byte 0x12
	.byte 0x58 
	.byte 0x50 
	.byte 0x5C 
	.byte 0x68 
	.byte 0x71 
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0x50 
	.byte 0xC8
	.byte  9
	.byte  8
	.byte 0x60 
	.byte 0xC8
	.byte  9
	.byte  8
	.byte 0x64 
	.byte 0xC8
	.byte  9
	.byte  8
	.byte 0x68 
	.byte 0xC8
	.byte  9
	.byte  8
	.byte 0x6C 
	.byte 0xC8
	.byte  9
	.byte  8
	.byte  0
	.byte  1
	.byte  2
	.byte  0
	.byte  3
	.byte  4
	.byte  5
	.byte  0
	.byte  6
	.byte  7
	.byte  8
	.byte  0
	.byte  9
	.byte 0xA
	.byte 0xB
	.byte  0
	.byte  0
	.byte 0xB5
	.byte 0x68 
	.byte 0x79 
	.byte  2
	.byte 0x49 
	.byte  8
	.byte 0x5C 
	.byte 0xA8
	.byte 0x71 
	.byte  0
	.byte 0x20
	.byte  0
	.byte 0xBD
	.byte  0
	.byte  0
	.byte 0x84
	.byte 0xC8
	.byte  9
	.byte  8
	.byte  1
	.byte  1
	.byte  1
	.byte  3
	.byte  3
	.byte  3
	.byte  5
	.byte  5
	.byte  5
	.byte  7
	.byte  7
	.byte  7
.func
.thumb_func
sub_809C890:
	push {r4-r7,lr}
	bl sub_809E1BC
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	ldr r0, off_809C93C // =unk_2011C50 
	ldr r0, [r0,#0x70] // (dword_2011CC0 - 0x2011c50)
	ldrb r0, [r0,#0xc]
	lsl r0, r0, #2
	ldrb r4, [r5,#4]
	lsl r4, r4, #3
	ldr r6, off_809C8C8 // =unk_809C8CC 
	ldr r0, [r6,r0]
	add r0, r0, r4
	ldrh r4, [r0]
	add r1, r1, r4
	lsl r1, r1, #0x10
	add r0, #2
	ldrh r4, [r0]
	add r2, r2, r4
	lsl r2, r2, #0x10
	add r0, #2
	ldrh r4, [r0]
	add r3, r3, r4
	lsl r3, r3, #0x10
	mov r0, #0
	pop {r4-r7,pc}
off_809C8C8: .word unk_809C8CC
unk_809C8CC: .byte 0xDC
	.byte 0xC8
	.byte  9
	.byte  8
	.byte 0xF4
	.byte 0xC8
	.byte  9
	.byte  8
	.byte 0xC
	.byte 0xC9
	.byte  9
	.byte  8
	.byte 0x24 
	.byte 0xC9
	.byte  9
	.byte  8
	.byte 0x20
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.word 0x40
	.word 0x0
	.word 0x60
	.word 0x0
	.word 0x200000, 0x0
	.word 0x400000, 0x0
	.word 0x600000, 0x0
	.word 0xFFE0, 0x0
	.word 0xFFC0, 0x0
	.word 0xFFA0, 0x0
	.word 0xFFE00000, 0x0
	.word 0xFFC00000, 0x0
	.word 0xFFA00000, 0x0
off_809C93C: .word unk_2011C50
.endfunc // sub_809C890

.func
.thumb_func
sub_809C940:
	push {r4-r7,lr}
	ldr r0, off_809C950 // =unk_2011C50 
	ldr r0, [r0,#0x70] // (dword_2011CC0 - 0x2011c50)
	ldr r0, [r0,#0x14]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	pop {r4-r7,pc}
off_809C950: .word unk_2011C50
.endfunc // sub_809C940

	push {r4-r7,lr}
	ldr r0, [r5,#0x70]
	mov r1, #0x10
	ldr r0, [r0,r1]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl SetEventFlag // (u16 entryFlagBitfield) -> void
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
.func
.thumb_func
sub_809C968:
	push {r4-r7,lr}
	bl sub_8034C36
	beq loc_809CA26
	// entryIdx
	mov r0, #2
	// byteFlagIdx
	mov r1, #0x24 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809CA26
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xb9
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809C9B6
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r6, [r7,#4]
	cmp r6, #0x80
	blt loc_809CA26
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne loc_809CA26
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#0xe]
	tst r0, r0
	beq loc_809CA26
	cmp r0, #0x30 
	blt loc_809CA26
	cmp r0, #0x33 
	bgt loc_809CA26
	ldr r1, off_809CABC // =eOWPlayerObject 
	mov r2, #0x83 // (byte_2009FC3 - 0x2009f40)
	strb r0, [r1,r2]
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xb9
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_809CA1E
loc_809C9B6:
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xba
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809C9CA
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xba
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_809CA1E
loc_809C9CA:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldrb r0, [r3,#0xe]
	tst r0, r0
	bne loc_809CA26
	ldr r0, off_809CAC0 // =eOWPlayerObject 
	mov r1, #0x83 // (byte_2009FC3 - 0x2009f40)
	ldrb r0, [r0,r1]
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r6, [r7,#4]
	ldrb r4, [r7,#5]
	sub r6, #0x90
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r1, off_809CA38 // =off_809C0F0 
	ldr r1, [r1,r6]
	ldr r1, [r1,r4]
	tst r1, r1
	beq loc_809CA26
	mov r2, #0x18
	sub r0, #0x30 
	mul r0, r2
	add r0, r0, r1
	add r4, r0, #0
	ldr r0, [r4,#0x10]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_809CA26
	mov r0, #0x2c 
	bl sub_803CE28
	ldrb r1, [r4,#0xd]
	add r1, #1
	cmp r0, r1
	blt loc_809CA20
	ldr r0, off_809CA3C // =dword_809C350+4 
	add r1, r4, #0
	bl init_s_02011C50_8036E90
	b loc_809CA26
locret_809CA1E:
	pop {r4-r7,pc}
loc_809CA20:
	mov r0, #0x69 
	bl sound_play // () -> void
loc_809CA26:
	mov r0, #1
	mov r1, #0xba
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #1
	mov r1, #0xb9
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r4-r7,pc}
off_809CA38: .word off_809C0F0
off_809CA3C: .word dword_809C350+4
.endfunc // sub_809C968

.func
.thumb_func
sub_809CA40:
	push {r4-r7,lr}
	cmp r0, #0x30 
	blt loc_809CA7A
	cmp r0, #0x33 
	bgt loc_809CA7A
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r6, [r7,#4]
	ldrb r4, [r7,#5]
	sub r6, #0x90
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r1, off_809CA80 // =off_809C0F0 
	ldr r1, [r1,r6]
	ldr r1, [r1,r4]
	tst r1, r1
	beq loc_809CA7A
	mov r2, #0x18
	sub r0, #0x30 
	mul r0, r2
	add r0, r0, r1
	add r4, r0, #0
	ldr r0, [r4,#0x10]
	// <mkdata>
	.hword 0x1C00 // add r0, r0, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_809CA7A
	mov r0, #1
	pop {r4-r7,pc}
loc_809CA7A:
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0, 0
off_809CA80: .word off_809C0F0
.endfunc // sub_809CA40

.func
.thumb_func
sub_809CA84:
	push {r4-r7,lr}
	ldr r0, off_809CAC4 // =eOWPlayerObject 
	mov r1, #0x83 // (byte_2009FC3 - 0x2009f40)
	ldrb r0, [r0,r1]
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r6, [r7,#4]
	ldrb r4, [r7,#5]
	sub r6, #0x90
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r1, off_809CAB8 // =off_809C0F0 
	ldr r1, [r1,r6]
	ldr r1, [r1,r4]
	tst r1, r1
	beq loc_809CAB2
	mov r2, #0x18
	sub r0, #0x30 
	mul r0, r2
	add r0, r0, r1
	ldrb r0, [r0,#0xd]
	add r0, #1
	pop {r4-r7,pc}
loc_809CAB2:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_809CAB8: .word off_809C0F0
off_809CABC: .word eOWPlayerObject
off_809CAC0: .word eOWPlayerObject
off_809CAC4: .word eOWPlayerObject
	.word 0x5000016, 0x5010116, 0x5020216, 0xFFFFFFFF
unk_809CAD8: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x29 
	.byte 0xFF
	.byte 0x31 
	.byte 0x17
	.byte 0x47 
	.word 0x4B00FF01, 0x809CB69, 0x9CB894B, 0x1081C08, 0x809CB0D
	.word 0x302081C, 0x170809CB, 0x490163FF, 0x40809CB, 0xCD454B80
	.word 0x43F0809, 0xCC014B00, 0xFF020809, 0x1081C01, 0x809CB28
	.word 0x9CD354B, 0x15880408, 0x809CB40, 0x9CC614B, 0x81C08
	.word 0x809CB1C, 0xD54B8804, 0x20809CD, 0x880401FF, 0xCD454B3B
	.word 0x43F0809, 0xCDC54B00, 0x614B0809, 0x20809CD, 0x880401FF
	.word 0x9CDD54B, 0x1FF0208, 0x40158804, 0x809CB, 0x2000B5F0
	.word 0xFA28F797, 0xFF08F766, 0xFFAEF766, 0x211E48CD, 0xFC02F7A3
	.word 0x72282000, 0xBDF06728, 0x2008B5F0, 0xF9D6F7A9, 0x481AD031
	.word 0xF9D2F7A9, 0x48C5D007, 0xF7A32120, 0x2002FBF1, 0x200060A8
	.word 0xF7A9BDF0, 0x2800F9CF, 0x2001D114, 0xF7922163, 0xD007FAD5
	.word 0xFA83F764, 0xF7642000, 0x2000FA7C, 0xE00D6728, 0x211F48B8
	.word 0xFBD8F7A3, 0x60A82001, 0xBDF02000, 0x21632001, 0xFAC0F792
	.word 0xE7F1D000, 0x212048B1, 0xFBCAF7A3, 0x60A82000, 0x2001BDF0
	.word 0xBDF0, 0x100, 0x6F28B5F0, 0xD1094200, 0x67282001
	.word 0xFC5CF7A2, 0xF7A22000, 0xF7A2FD4D, 0xE01CFC7C, 0x24012600
	.word 0xF7A24667, 0x46BCFC9D, 0x2601D009, 0x490B2400, 0x42008848
	.word 0x3801D002, 0xE00C8048, 0x1C202600, 0xFC54F7A2, 0x4224722C
	.word 0x4899D003, 0xF7A32122, 0x2000FB99, 0x2001E000, 0xBDF0
	.word 0x200AD04, 0xF000B5F0, 0xD003F8D7, 0x72282000, 0xE0402000
	.word 0xF7A92008, 0xD03BF963, 0x24006F68, 0x59134A1D, 0xDB1D4298
	.word 0x4298330F, 0x4651DA1A, 0x6F686C09, 0x48206308, 0x67A85900
	.word 0x21632001, 0xFA38F792, 0xFA11F764, 0x6AD24652, 0x64D06FA8
	.word 0xFA07F764, 0xF763208D, 0x487EFC8B, 0xF7A32123, 0xE011FB63
	.word 0x2C1C3404, 0x4650DBDB, 0x88406840, 0x42082102, 0x2068D00E
	.word 0xFC7AF763, 0xF9F5F764, 0x21204874, 0xFB50F7A3, 0xF9F8F0A7
	.word 0x72282001, 0xE0002000, 0xBDF02001, 0x809CCF8, 0x141
	.word 0x19B, 0x1AA, 0x1B9, 0x1C8, 0x1D7
	.word 0x1E6, 0x809CD18, 0x0
	.word 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0x485EB5F0, 0xF7A32121, 0x2000FB23
	.word 0xBDF0, 0x2001B5F0, 0xF93AF797, 0xFE09F766, 0xFEAFF766, 0xFE21F766, 0xFEC7F766, 0xBDF02000, 0x6F28B5F0
	.word 0xD1094200, 0x67282001, 0xFBACF7A2, 0xF7A22000, 0xF7A2FC9D, 0xE01EFBCC, 0x24012600, 0xF7A24667, 0x46BCFBED
	.word 0x2601D009, 0x490C2400, 0x42008848, 0x3801D002, 0xE00E8048, 0x1C202600, 0xFBA4F7A2, 0x2001722C, 0xF7922163
	.word 0x4840F9BF, 0xF7A32131, 0x2000FAE7, 0x2001E000, 0xBDF0, 0x200AD04, 0x483AB5F0, 0xF7A3211F, 0x2000FADB
	.word 0xBDF0, 0xF764B500, 0x4200F96E, 0xF000D102, 0xE001F82F, 0xF804F084, 0xFAE0F09F, 0xF0832000, 0xD00CFF8F
	.word 0x29102032, 0x2034D003, 0xD000290F, 0x1C012033, 0xF7A3482A, 0x2000FABD, 0x2000E000, 0xBD00, 0x2401B5F0
	.word 0xF7A24667, 0x46BCFBA1, 0xD1094200, 0xFC0EF7A2, 0x2004D006, 0xFC88F7A2, 0xD1014209, 0x2400676A, 0x42001C20
	.word 0xBDF0, 0xB08AB5F0, 0x4650466F, 0x79C46C00, 0x25004E0C, 0x48165971, 0xD0054281, 0xF7761C20, 0x5178FCAC
	.word 0xE7F53504, 0x59712500, 0x42814810, 0x597AD005, 0xF7762000, 0x3504FC94, 0xB00AE7F5, 0xBDF0, 0x809CE84
	.word 0x2D, 0x2E, 0x2F, 0x30, 0x56, 0x57, 0x58, 0x59, 0x5A
	.word 0x5B, 0xFFFFFFFF, 0x2033404
unk_809CEB4: .byte 0x3F 
	.byte  0
	.byte  6
	.byte  2
	.byte 0xFF
	.byte 0x10
	.byte 0x47 
	.byte  0
	.byte 0xFF
	.byte  4
	.byte 0x40 
	.byte  4
	.byte 0xFF
	.byte  4
	.byte 0x3E 
	.byte 0xE0
	.word 0x20873B9, 0x43A10FF, 0xFF028004, 0x7B10, 0x9CEDE00
	.word 0xCF281508, 0xFF530809, 0x3CFF0203, 0x201FF53, 0x7C1EFF
	.word 0xCEFB0000, 0xCF1D0809, 0x28150809, 0x470809CF, 0x21AFF00
	.word 0x4713FF, 0xFF021BFF, 0x3CFF3A10, 0xFF028004, 0xFF004710
	.word 0x10FF0204, 0x9CF2815, 0x1EFF0208, 0x43CFF3A, 0x10FF0280
	.word 0x43F
.endfunc // sub_809CA84

.func
.thumb_func
sub_809CF2C:
	push {r4-r7,lr}
	bl sub_8034C36
	beq locret_809CF4E
	bl reqBBS_81407D8
	tst r0, r0
	beq locret_809CF4E
	ldr r0, off_809CF50 // =unk_809CEB4 
	ldr r1, off_809CF58 // =dynaicArr 
	ldr r2, dword_809CF54 // =0xe 
	ldrb r1, [r1,r2]
	sub r1, #1
	add r1, #0x32 
	bl init_s_02011C50_8036E90
	b locret_809CF4E
locret_809CF4E:
	pop {r4-r7,pc}
off_809CF50: .word unk_809CEB4
dword_809CF54: .word 0xE
off_809CF58: .word dynaicArr
dword_809CF5C: .word 0x8, 0x10000, 0xFFFF0000, 0x9, 0x10000, 0x0
	.word 0xA, 0x8000, 0x8000, 0xB, 0x0
	.word 0x10000, 0xC, 0xFFFF0000, 0x10000, 0x10D, 0xFFFF0000
	.word 0x0
	.word 0x10E, 0xFFFF8000, 0xFFFF8000, 0xF, 0x0
dword_809CFB8: .word 0xFFFF0000, 0x10, 0x20000, 0xFFFE0000, 0x11, 0x20000
	.word 0x0
	.word 0x12, 0x10000, 0x10000, 0x13, 0x0
	.word 0x20000, 0x14, 0xFFFE0000, 0x20000, 0x115, 0xFFFE0000
	.word 0x0
	.word 0x116, 0xFFFF0000, 0xFFFF0000, 0x17, 0x0
	.word 0xFFFE0000, 0xC, 0x10000, 0xFFFF0000, 0xD, 0x10000
	.word 0x0
	.word 0xE, 0x8000, 0x8000, 0xF, 0x0
	.word 0x10000, 0x8, 0xFFFF0000, 0x10000, 0x109, 0xFFFF0000
	.word 0x0
	.word 0x10A, 0xFFFF8000, 0xFFFF8000, 0xB, 0x0
dword_809D078: .word 0xFFFF0000, 0x1, 0x40000, 0x0
	.word 0x3, 0x0
	.word 0x40000, 0x105, 0xFFFC0000, 0x0
	.word 0x7, 0x0
	.word 0xFFFC0000, 0x1, 0x40000, 0x0
	.word 0x3, 0x0
	.word 0x40000, 0x105, 0xFFFC0000, 0x0
	.word 0x7, 0x0
dword_809D0D8: .word 0xFFFC0000, 0x10, 0x40000, 0xFFFC0000, 0x11, 0x40000
	.word 0x0
	.word 0x12, 0x20000, 0x20000, 0x13, 0x0
	.word 0x40000, 0x14, 0xFFFC0000, 0x40000, 0x115, 0xFFFC0000
	.word 0x0
	.word 0x116, 0xFFFE0000, 0xFFFE0000, 0x17, 0x0
dword_809D138: .word 0xFFFC0000, 0x10, 0x40000, 0xFFFC0000, 0x11, 0x40000
	.word 0x0
	.word 0x12, 0x20000, 0x20000, 0x13, 0x0
	.word 0x40000, 0x14, 0xFFFC0000, 0x40000, 0x115, 0xFFFC0000
	.word 0x0
	.word 0x116, 0xFFFE0000, 0xFFFE0000, 0x17, 0x0
	.word 0xFFFC0000
.endfunc // sub_809CF2C

loc_809D19C:
	push {lr}
	mov r0, #0x17
	mov r1, #0x16
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D1D2
	bl getPETNaviSelect // () -> u8
	mov r1, #0x35 
	bl sub_80137B6 // (int a1, int a2) -> u8
	tst r0, r0
	beq loc_809D1D2
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#4]
	mov r1, #0x80
	cmp r0, r1
	blt loc_809D1D2
	mov r0, #0x17
	mov r1, #0x16
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_809D1D2:
	ldr r0, off_809D258 // =off_809D25C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldrb r0, [r5,#0x14]
	ldrb r1, [r5,#0x15]
	cmp r0, r1
	beq loc_809D1EE
	strb r0, [r5,#0x15]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809D1EE:
	ldr r7, off_809D268 // =byte_2000AA0 
	mov r6, r10
	ldr r6, [r6,#0x3c]
	ldrb r0, [r6,#4]
	cmp r0, #0x80
	blt loc_809D222
	bl sprite_makeScalable
	ldrb r0, [r7,#0x2] // (byte_2000AA2 - 0x2000aa0)
	ldrb r1, [r7]
	ldrb r2, [r7,#0x1] // (byte_2000AA1 - 0x2000aa0)
	cmp r0, #0
	bne loc_809D212
	cmp r1, #0x40 
	bne loc_809D212
	cmp r2, #0x40 
	bne loc_809D212
	b loc_809D218
loc_809D212:
	bl sprite_setScaleParameters
	b loc_809D21C
loc_809D218:
	bl sprite_makeUnscalable
loc_809D21C:
	ldrh r0, [r7,#0x6] // (word_2000AA6 - 0x2000aa0)
	cmp r0, #0
	bne loc_809D234
loc_809D222:
	bl sub_8002EE8
	mov r0, #0x1c
	add r0, r0, r5
	bl sub_8031A7A
	cmp r0, #0x3c 
	bne loc_809D238
	ldr r0, dword_809D344 // =0xa108 
loc_809D234:
	bl sub_8002ED0
loc_809D238:
	ldrb r0, [r7,#0x5] // (byte_2000AA5 - 0x2000aa0)
	bl sprite_setPallete // (int pallete) -> void
	mov r0, #0x17
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D252
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#0x10]
	tst r0, r0
	beq locret_809D256
loc_809D252:
	bl sprite_update
locret_809D256:
	pop {pc}
off_809D258: .word off_809D25C
off_809D25C: .word sub_809D270+1
	.word loc_809D348+1
	.word sub_809D7F8+1
off_809D268: .word byte_2000AA0
	.word byte_200ACE0
.func
.thumb_func
sub_809D270:
	push {r4,lr}
	mov r0, #3
	strb r0, [r5]
	bl getPETNaviSelect // () -> u8
	ldr r4, off_809D324 // =unk_809D328 
	ldrb r4, [r4,r0]
	mov r6, #0x18
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#4]
	mov r3, #0x80
	cmp r0, r3
	bge loc_809D29E
	mov r4, #0x37 
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x29 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D29E
	mov r4, #0
	mov r6, #0x18
	b loc_809D2B2
loc_809D29E:
	ldr r7, off_809D340 // =byte_2000AA0 
	ldrb r0, [r7,#0x4] // (byte_2000AA4 - 0x2000aa0)
	tst r0, r0
	beq loc_809D2B2
	sub r0, #1
	lsl r0, r0, #1
	ldr r4, off_809D334 // =dword_809D338 
	add r4, r4, r0
	ldrb r6, [r4]
	ldrb r4, [r4,#1]
loc_809D2B2:
	mov r0, #0x80
	add r1, r6, #0
	add r2, r4, #0
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0xff
	strb r0, [r5,#0x15]
	bl sub_8002F90 // () -> void
	mov r0, r10
	ldr r0, [r0,#0x3c]
	str r5, [r0,#0x18]
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x48 
	// memBlock
	add r0, r0, r5
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #1
	strb r0, [r5,#0x17]
	strb r0, [r5,#0xc]
	mov r0, #0
	strb r0, [r5,#0x16]
	ldrb r0, [r5,#0x10]
	mov r1, #7
	and r0, r1
	strb r0, [r5,#0x10]
	mov r0, #0xff
	strb r0, [r5,#0x11]
	mov r0, #0
	mov r3, #0x4c 
	strh r0, [r5,r3]
	mov r3, #0x4e 
	strh r0, [r5,r3]
	str r0, [r5,#0x38]
	str r0, [r5,#0x3c]
	str r0, [r5,#0x40]
	str r0, [r5,#0x44]
	strb r0, [r5,#0xd]
	strb r0, [r5,#0xe]
	strb r0, [r5,#0xf]
	strh r0, [r5,#0x18]
	mov r7, r10
	ldr r7, [r7,#0x3c]
	strb r0, [r7,#0x10]
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x20]
	ldr r2, [r5,#0x24]
	str r0, [r5,#0x28]
	str r1, [r5,#0x2c]
	str r2, [r5,#0x30]
	bl loc_809D348
	pop {r4,pc}
off_809D324: .word unk_809D328
unk_809D328: .byte 0x37 
	.byte 0x47 
	.hword 0x4B49
	.word 0x4A484F50, 0x374E4D4C
off_809D334: .word dword_809D338
dword_809D338: .word 0x21C541C, 0x6C1C
off_809D340: .word byte_2000AA0
dword_809D344: .word 0xA108
.endfunc // sub_809D270

loc_809D348:
	push {lr}
	mov r0, #0
	mov r7, r10
	ldr r7, [r7,#0x3c]
	strb r0, [r7,#0x11]
	strb r0, [r5,#0x13]
	strb r0, [r5,#0x13]
	ldrb r1, [r5,#0xe]
	strb r1, [r5,#0xf]
	ldrb r1, [r5,#0xd]
	strb r1, [r5,#0xe]
	strb r0, [r5,#0xd]
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x20]
	ldr r2, [r5,#0x24]
	str r0, [r5,#0x28]
	str r1, [r5,#0x2c]
	str r2, [r5,#0x30]
	ldr r7, off_809D468 // =off_809D450 
	ldrb r0, [r5,#9]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	ldrb r0, [r5,#0xc]
	tst r0, r0
	beq loc_809D3BC
	bl sub_809E3D6
	mov r0, #0x1c
	add r0, r0, r5
	bl sub_8030B6A
	tst r0, r0
	beq loc_809D3BC
	mov r0, #0x17
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D3BC
	mov r0, #0x17
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D3A8
	mov r0, #0x17
	mov r1, #0x3f 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_809D3A8:
	mov r0, #0x17
	mov r1, #0x3d 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x3e 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_809DE60
loc_809D3BC:
	bl sub_809E46E
	bl sub_809DB60
	bl sub_809E3A2
	bne loc_809D3E6
	ldrb r0, [r5,#0x17]
	tst r0, r0
	beq loc_809D3E6
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D3E6
	mov r0, #0x1c
	add r0, r0, r5
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x24]
loc_809D3E6:
	mov r0, #0x17
	mov r1, #0x18
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D3FC
	mov r0, #0x17
	mov r1, #0x18
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_809E0C8
loc_809D3FC:
	ldrb r0, [r5,#0x16]
	tst r0, r0
	bne loc_809D40A
	add r0, r5, #0
	add r0, #0x1c
	bl sub_8035694
loc_809D40A:
	bl sub_8002E14
	bl sub_809DFA0
	tst r0, r0
	beq loc_809D446
	bl s_2011C50_ptr_1C_isNull // () -> zf
	tst r0, r0
	bne loc_809D446
	ldrb r1, [r5,#0x13]
	mov r7, r10
	ldr r7, [r7,#0x40]
	ldrh r0, [r7,#0x12]
	add r0, r0, r1
	strh r0, [r7,#0x12]
	ldr r0, [r7,#0x24]
	tst r0, r0
	beq loc_809D438
	sub r0, r0, r1
	bge loc_809D436
	mov r0, #0
loc_809D436:
	str r0, [r7,#0x24]
loc_809D438:
	ldr r0, [r7,#0x28]
	tst r0, r0
	beq loc_809D446
	sub r0, r0, r1
	bge loc_809D444
	mov r0, #0
loc_809D444:
	str r0, [r7,#0x28]
loc_809D446:
	bl sub_809DFC0
	bl sub_809DE98
	pop {pc}
off_809D450: .word dword_809D470+1
	.word sub_809D4DC+1
	.word sub_809D61A+1
	.word loc_809D75E+1
	.word sub_809D800+1
	.word sub_809D8F4+1
off_809D468: .word off_809D450
	.word 0xFFFF
dword_809D470: .word 0xF000B510
	.word 0x7AA8FAB5, 0xD1034200, 0x75287C28, 0x72A82004, 0xFB64F000
	.word 0x2014D003, 0xFDBAF000, 0xF000BD10, 0x4200FB31, 0x2004D003
	.word 0xFDB2F000, 0xF000BD10, 0x4200FB2E, 0x2008D003, 0xFDAAF000
	.word 0xF000BD10, 0x4200FD0F, 0x200CD003, 0xFDA2F000, 0xF000BD10
	.word 0x4200FD31, 0x2000D005, 0x20107078, 0xFD98F000, 0xBD10BD10
	.word 0x2000AA0
.func
.thumb_func
sub_809D4DC:
	push {lr}
	bl sub_809D9E0
	tst r0, r0
	beq loc_809D4FC
	ldrb r0, [r5,#0x10]
	ldrb r1, [r5,#0x11]
	cmp r0, r1
	beq loc_809D4F2
	mov r0, #0
	strb r0, [r5,#0xa]
loc_809D4F2:
	ldr r7, off_809D55C // =off_809D554 
	ldrb r0, [r5,#0xa]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
loc_809D4FC:
	bl sub_809DF28
	tst r0, r0
.endfunc // sub_809D4DC

	beq loc_809D510
	mov r0, #0
	strb r0, [r7,#1]
	mov r0, #0x10
	bl sub_809E004
	b locret_809D552
loc_809D510:
	bl sub_809DED4
	tst r0, r0
	beq loc_809D520
	mov r0, #0xc
	bl sub_809E004
	b locret_809D552
loc_809D520:
	bl sub_809DB02
	tst r0, r0
	beq loc_809D530
	mov r0, #8
	bl sub_809E004
	b loc_809D54E
loc_809D530:
	bl sub_809DB50
	beq loc_809D53E
	mov r0, #0x14
	bl sub_809E004
	b locret_809D552
loc_809D53E:
	bl sub_809DAF8
	tst r0, r0
	bne loc_809D54E
	mov r0, #0
	bl sub_809E004
	b locret_809D552
loc_809D54E:
	ldrb r0, [r5,#0x13]
	strb r0, [r5,#0x13]
locret_809D552:
	pop {pc}
off_809D554: .word sub_809D560+1
	.word sub_809D5C4+1
off_809D55C: .word off_809D554
.func
.thumb_func
sub_809D560:
	push {lr}
	mov r1, #0
	ldr r7, off_809D714 // =byte_2000AA0 
	mov r6, r10
	ldr r6, [r6,#0x3c]
	ldrb r0, [r6,#4]
	cmp r0, #0x80
	blt loc_809D572
	ldrb r1, [r7,#0x3] // (byte_2000AA3 - 0x2000aa0)
loc_809D572:
	ldrb r0, [r5,#0x10]
	ldr r7, off_809D5AC // =off_809D5B0 
	push {r0,r1,r3-r5}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D584
	ldr r7, off_809D5B8 // =off_809D5BC 
loc_809D584:
	pop {r0,r1,r3-r5}
	ldr r7, [r7,r1]
	ldr r6, off_809D8AC // =byte_200ACE0 
	ldr r1, [r6,#0x18] // (dword_200ACF8 - 0x200ace0)
	tst r1, r1
	beq loc_809D592
	ldr r7, [r6,#0x20] // (dword_200AD00 - 0x200ace0)
loc_809D592:
	lsl r1, r0, #3
	lsl r0, r0, #2
	add r0, r0, r1
	add r7, r7, r0
	ldr r0, [r7,#4]
	str r0, [r5,#0x38]
	ldr r0, [r7,#8]
	str r0, [r5,#0x3c]
	ldrb r0, [r7]
	strb r0, [r5,#0x14]
	mov r0, #4
	strb r0, [r5,#0xa]
	pop {pc}
off_809D5AC: .word off_809D5B0
off_809D5B0: .word dword_809CF5C
	.word dword_809D0D8+4
off_809D5B8: .word off_809D5BC
off_809D5BC: .word dword_809CFB8+4
	.word dword_809D0D8+4
.endfunc // sub_809D560

.func
.thumb_func
sub_809D5C4:
	push {lr}
	bl sub_809DDCC
	tst r0, r0
	beq loc_809D60C
	mov r0, #0x1c
	add r0, r0, r5
	bl sub_8031612
	mov r2, #0
	mov r3, #1
	cmp r1, #1
	bne loc_809D5F4
	mov r2, #1
	mov r3, #2
	push {r3}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	pop {r3}
	beq loc_809D5F4
	mov r2, #0
	mov r3, #1
loc_809D5F4:
	strb r3, [r5,#0x13]
	ldr r0, [r5,#0x38]
	lsl r0, r2
	ldr r1, [r5,#0x1c]
	add r1, r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r5,#0x3c]
	lsl r0, r2
	ldr r1, [r5,#0x20]
	add r1, r1, r0
	str r1, [r5,#0x20]
	pop {pc}
loc_809D60C:
	ldr r0, [r5,#0x28]
	ldr r1, [r5,#0x2c]
	ldr r2, [r5,#0x30]
	str r0, [r5,#0x1c]
	str r1, [r5,#0x20]
	str r2, [r5,#0x24]
	pop {pc}
.endfunc // sub_809D5C4

.func
.thumb_func
sub_809D61A:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D630
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D646
loc_809D630:
	bl sub_809D9E0
	tst r0, r0
	beq loc_809D650
	ldrb r0, [r5,#0x10]
	ldrb r1, [r5,#0x11]
	cmp r0, r1
	beq loc_809D646
	mov r0, #0
	strb r0, [r5,#0xa]
	b loc_809D646
loc_809D646:
	ldr r7, off_809D6B8 // =off_809D6B0 
	ldrb r0, [r5,#0xa]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
loc_809D650:
	bl sub_809DF28
	tst r0, r0
.endfunc // sub_809D61A

	beq loc_809D668
	mov r0, #0
	strb r0, [r7,#1]
	mov r0, #0x10
	bl sub_809E004
	bl sub_809DE30
	b locret_809D6AE
loc_809D668:
	bl sub_809DED4
	tst r0, r0
	beq loc_809D678
	mov r0, #0xc
	bl sub_809E004
	b locret_809D6AE
loc_809D678:
	bl sub_809DB50
	beq loc_809D68A
	mov r0, #0x14
	bl sub_809E004
	bl sub_809DE30
	b locret_809D6AE
loc_809D68A:
	bl sub_809DAF8
	tst r0, r0
	beq loc_809D69A
	mov r0, #4
	bl sub_809E004
	b loc_809D6AA
loc_809D69A:
	bl sub_809DB02
	tst r0, r0
	bne loc_809D6AA
	mov r0, #0
	bl sub_809E004
	b locret_809D6AE
loc_809D6AA:
	bl sub_809DDF0
locret_809D6AE:
	pop {pc}
off_809D6B0: .word sub_809D6BC+1
	.word sub_809D730+1
off_809D6B8: .word off_809D6B0
.func
.thumb_func
sub_809D6BC:
	push {lr}
	mov r1, #0
	ldr r7, off_809D714 // =byte_2000AA0 
	mov r6, r10
	ldr r6, [r6,#0x3c]
	ldrb r0, [r6,#4]
	cmp r0, #0x80
	blt loc_809D6CE
	ldrb r1, [r7,#0x3] // (byte_2000AA3 - 0x2000aa0)
loc_809D6CE:
	ldrb r0, [r5,#0x10]
	ldr r7, off_809D718 // =off_809D71C 
	push {r0,r1,r3-r5}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809D6F4
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D6F2
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3f 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D6F4
loc_809D6F2:
	ldr r7, off_809D724 // =off_809D728 
loc_809D6F4:
	pop {r0,r1,r3-r5}
	ldr r7, [r7,r1]
	lsl r1, r0, #3
	lsl r0, r0, #2
	add r0, r0, r1
	add r7, r7, r0
	ldr r0, [r7,#4]
	str r0, [r5,#0x38]
	ldr r0, [r7,#8]
	str r0, [r5,#0x3c]
	ldrb r0, [r7]
	strb r0, [r5,#0x14]
	mov r0, #4
	strb r0, [r5,#0xa]
	pop {pc}
	.balign 4, 0x00
off_809D714: .word byte_2000AA0
off_809D718: .word off_809D71C
off_809D71C: .word dword_809CFB8+4
	.word dword_809D0D8+4
off_809D724: .word off_809D728
off_809D728: .word dword_809D138+4
	.word dword_809D0D8+4
.endfunc // sub_809D6BC

.func
.thumb_func
sub_809D730:
	push {lr}
	bl sub_809DDCC
	tst r0, r0
	beq loc_809D750
	ldr r0, [r5,#0x38]
	ldr r1, [r5,#0x1c]
	add r1, r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r5,#0x3c]
	ldr r1, [r5,#0x20]
	add r1, r1, r0
	str r1, [r5,#0x20]
	mov r0, #2
	strb r0, [r5,#0x13]
	pop {pc}
loc_809D750:
	ldr r0, [r5,#0x28]
	ldr r1, [r5,#0x2c]
	ldr r2, [r5,#0x30]
	str r0, [r5,#0x1c]
	str r1, [r5,#0x20]
	str r2, [r5,#0x24]
	pop {pc}
.endfunc // sub_809D730

loc_809D75E:
	push {lr}
	ldr r7, off_809D7A4 // =off_809D798 
	ldrb r0, [r5,#0xa]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	ldr r7, off_809D8AC // =byte_200ACE0 
	ldrb r0, [r7,#0x1c] // (byte_200ACFC - 0x200ace0)
	cmp r0, #0xff
	beq loc_809D778
	strb r0, [r5,#0x14]
	mov r0, #0xff
	strb r0, [r7,#0x1c] // (byte_200ACFC - 0x200ace0)
loc_809D778:
	bl sub_809DF28
	tst r0, r0
	beq locret_809D796
	mov r0, #2
	strb r0, [r7,#0x1] // (byte_200ACE1 - 0x200ace0)
	mov r7, r10
	ldr r7, [r7,#0x3c]
	mov r0, #0
	strb r0, [r7,#0x10]
	mov r0, #0
	strb r0, [r5,#7]
	mov r0, #0x10
	bl sub_809E004
locret_809D796:
	pop {pc}
off_809D798: .word sub_809D7A8+1
	.word 0x809D7C9, 0x809D7D9
off_809D7A4: .word off_809D798
.func
.thumb_func
sub_809D7A8:
	push {lr}
	bl s_2011C50_ptr_1C_isNull // () -> zf
	tst r0, r0
	bne loc_809D7E2
	ldrb r0, [r5,#0x10]
	strb r0, [r5,#0x14]
	ldr r7, [r5,#0x58]
	ldrb r0, [r7,#0x17]
	tst r0, r0
	bne locret_809D7C6
	mov r0, #1
	strb r0, [r7,#0x18]
	mov r0, #4
	strb r0, [r5,#0xa]
locret_809D7C6:
	pop {pc}
	push {lr}
	ldr r7, [r5,#0x58]
	ldrb r0, [r7,#0xa]
	cmp r0, #4
	bne locret_809D7D6
	mov r0, #8
	strb r0, [r5,#0xa]
locret_809D7D6:
	pop {pc}
	push {lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne locret_809D7F6
loc_809D7E2:
	mov r7, r10
	ldr r7, [r7,#0x3c]
	mov r0, #0
	strb r0, [r7,#0x10]
	mov r0, #0
	strb r0, [r5,#7]
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
locret_809D7F6:
	pop {pc}
.endfunc // sub_809D7A8

.func
.thumb_func
sub_809D7F8:
	push {lr}
	bl sub_8003B86
	pop {pc}
.endfunc // sub_809D7F8

.func
.thumb_func
sub_809D800:
	push {lr}
	ldr r7, off_809D8AC // =byte_200ACE0 
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x20]
	ldr r2, [r5,#0x24]
	str r0, [r5,#0x28]
	str r1, [r5,#0x2c]
	str r2, [r5,#0x30]
	ldr r0, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
	str r0, [r5,#0x1c]
	ldr r0, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
	str r0, [r5,#0x20]
	ldr r0, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
	str r0, [r5,#0x24]
	ldrb r0, [r7,#0x15] // (byte_200ACF5 - 0x200ace0)
	tst r0, r0
	bne loc_809D828
	ldrb r0, [r7,#0x2] // (byte_200ACE2 - 0x200ace0)
	strb r0, [r5,#0x14]
	b loc_809D832
loc_809D828:
	ldr r7, off_809D8C8 // =off_809D8B0 
	ldrb r0, [r5,#0xb]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
loc_809D832:
	bl sub_809DF36
	tst r0, r0
	bne loc_809D844
	ldr r6, off_809D8A8 // =dword_809D89C 
	ldrb r0, [r7,#0x1] // (byte_200ACE1 - 0x200ace0)
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	str r0, [r5,#8]
loc_809D844:
	ldrb r0, [r5,#0xc]
	tst r0, r0
	beq loc_809D856
	bl sub_809E3D6
	mov r0, #0x1c
	add r0, r0, r5
	bl sub_8030B6A
loc_809D856:
	ldr r7, off_809D8AC // =byte_200ACE0 
	ldr r0, [r5,#0x1c]
	str r0, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
	ldr r0, [r5,#0x20]
	str r0, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
	ldr r0, [r5,#0x24]
	str r0, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
	bl sub_809E3A2
	bne loc_809D886
	ldrb r0, [r5,#0x17]
	tst r0, r0
	beq loc_809D886
	// entryIdx
	mov r0, #0xb
	// byteFlagIdx
	mov r1, #0xe4
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809D886
	mov r0, #0x1c
	add r0, r0, r5
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x24]
loc_809D886:
	ldrb r0, [r5,#0x16]
	tst r0, r0
	bne loc_809D894
	add r0, r5, #0
	add r0, #0x1c
	bl sub_8035694
loc_809D894:
	bl sub_8002E14
	pop {pc}
	.balign 4, 0x00
dword_809D89C: .word 0x40004, 0x80C04, 0x4
off_809D8A8: .word dword_809D89C
off_809D8AC: .word byte_200ACE0
off_809D8B0: .word dword_809D470+1
	.word sub_809D4DC+1
	.word sub_809D61A+1
	.word loc_809D75E+1
	.word sub_809D800+1
	.word sub_809D8F4+1
off_809D8C8: .word off_809D8B0
.endfunc // sub_809D800

	push {lr}
	ldrb r0, [r5,#0xa]
	tst r0, r0
	bne loc_809D8DE
	mov r0, #4
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x14]
	mov r0, #4
	strb r0, [r5,#0xa]
loc_809D8DE:
	mov r0, #0x80
	bl chatbox_8045F3C
	bne locret_809D8F0
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
	strb r0, [r5,#0xb]
locret_809D8F0:
	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_809D8F4:
	push {lr}
	ldr r7, off_809D928 // =off_809D91C 
	ldrb r0, [r5,#0xa]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl sub_809DF28
	tst r0, r0
.endfunc // sub_809D8F4

	beq locret_809D91A
	mov r0, #0
	strb r0, [r7,#1]
	mov r0, #0x17
	mov r1, #0x17
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x10
	bl sub_809E004
locret_809D91A:
	pop {pc}
off_809D91C: .word sub_809D92C+1
	.word sub_809D964+1
	.word sub_809D9A0+1
off_809D928: .word off_809D91C
.func
.thumb_func
sub_809D92C:
	push {lr}
	mov r1, #0x64 
	ldrh r0, [r5,r1]
	cmp r0, #3
	bgt loc_809D938
	add r0, #4
loc_809D938:
	mov r2, #0x66 
	strh r0, [r5,r2]
	ldr r7, off_809D9D8 // =off_809D9DC 
	ldr r7, [r7]
	lsl r1, r0, #3
	lsl r0, r0, #2
	add r0, r0, r1
	add r7, r7, r0
	ldr r0, [r7,#4]
	str r0, [r5,#0x38]
	ldr r0, [r7,#8]
	str r0, [r5,#0x3c]
	ldrb r0, [r7]
	strb r0, [r5,#0x14]
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	mov r0, #4
	strb r0, [r5,#0xa]
	mov r0, #1
	mov r1, #0x5c 
	strb r0, [r5,r1]
	pop {pc}
.endfunc // sub_809D92C

.func
.thumb_func
sub_809D964:
	push {lr}
	mov r0, #1
	mov r1, #0x5c 
	ldrb r0, [r5,r1]
	sub r0, #1
	strb r0, [r5,r1]
	tst r0, r0
	bne loc_809D97E
	mov r0, #6
	strb r0, [r5,r1]
	mov r0, #0x98
	bl sound_play // () -> void
loc_809D97E:
	mov r1, #0x64 
	ldrh r0, [r5,r1]
	mov r2, #0x66 
	ldrh r3, [r5,r2]
	cmp r0, r3
	bne loc_809D98E
	mov r0, #8
	strb r0, [r5,#0xa]
loc_809D98E:
	ldr r0, [r5,#0x38]
	ldr r1, [r5,#0x1c]
	add r1, r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r5,#0x3c]
	ldr r1, [r5,#0x20]
	add r1, r1, r0
	str r1, [r5,#0x20]
	pop {pc}
.endfunc // sub_809D964

.func
.thumb_func
sub_809D9A0:
	push {lr}
	add r0, r5, #0
	add r0, #0x1c
	bl sub_8031A7A
	cmp r0, #0x4c 
	blt loc_809D9C4
	cmp r0, #0x4f 
	bgt loc_809D9C4
	ldr r0, [r5,#0x38]
	ldr r1, [r5,#0x1c]
	add r1, r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r5,#0x3c]
	ldr r1, [r5,#0x20]
	add r1, r1, r0
	str r1, [r5,#0x20]
	b locret_809D9D6
loc_809D9C4:
	mov r0, #0x17
	mov r1, #0x17
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
	strb r0, [r5,#0xb]
locret_809D9D6:
	pop {pc}
off_809D9D8: .word off_809D9DC
off_809D9DC: .word dword_809D078+4
.endfunc // sub_809D9A0

.func
.thumb_func
sub_809D9E0:
	push {lr}
	sub sp, sp, #0xc
	mov r8, sp
	ldr r7, off_809DAF4 // =byte_200ACE0 
	ldrb r0, [r7,#0x15] // (byte_200ACF5 - 0x200ace0)
	tst r0, r0
	bne loc_809DA98
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_809DA94
	push {r0}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x14
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	pop {r0}
	beq loc_809DA82
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x17
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809DA94
	bl s_2011C50_ptr_1C_isNull // () -> zf
	bne loc_809DA94
	ldrb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	mov r0, #0
	mov r7, r10
	ldr r7, [r7,#4]
	ldrh r1, [r7,#2]
	mov r2, #8
	tst r2, r1
	bne loc_809DA82
	mov r2, #1
	tst r2, r1
	beq loc_809DA62
	push {r0,r1,r7}
	ldrb r0, [r5,#0x10]
	lsl r0, r0, #2
	ldr r7, off_809DBBC // =off_809DC0C 
	ldr r7, [r7,r0]
	mov r6, r8
	ldr r0, [r5,#0x1c]
	ldr r1, [r7]
	add r0, r0, r1
	str r0, [r6]
	ldr r0, [r5,#0x20]
	ldr r1, [r7,#4]
	add r0, r0, r1
	str r0, [r6,#4]
	ldr r0, [r5,#0x24]
	ldr r1, [r7,#8]
	add r0, r0, r1
	str r0, [r6,#8]
	add r0, r6, #0
	bl sub_8031A7A
	add r2, r0, #0
	strb r2, [r5,#0xd]
	mov r7, r10
	ldr r7, [r7,#0x3c]
	mov r2, #1
	strb r2, [r7,#0x11]
	pop {r0,r1,r7}
loc_809DA62:
	ldrh r1, [r7]
	mov r2, #0xf0
	and r2, r1
	beq loc_809DA82
	lsr r2, r2, #4
	ldr r7, off_809DAEC // =dword_809DAD8 
	ldrb r2, [r7,r2]
	orr r0, r2
	mov r2, #2
	tst r2, r1
	beq loc_809DA7E
	mov r1, #0x20 
	orr r0, r1
	b loc_809DA82
loc_809DA7E:
	mov r1, #0x10
	orr r0, r1
loc_809DA82:
	mov r3, #0x4c 
	strh r0, [r5,r3]
	mov r1, #0xf
	and r1, r0
	beq loc_809DA90
	sub r1, #1
	strb r1, [r5,#0x10]
loc_809DA90:
	add sp, sp, #0xc
	pop {pc}
loc_809DA94:
	mov r0, #0
	b loc_809DA82
loc_809DA98:
	ldrb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	mov r0, #0
	ldr r7, off_809DAF4 // =byte_200ACE0 
	ldrh r1, [r7,#0x18] // (dword_200ACF8 - 0x200ace0)
	ldrh r1, [r7,#0x1a] // (dword_200ACF8+2 - 0x200ace0)
	mov r2, #0xf0
	and r2, r1
	beq loc_809DAC2
	lsr r2, r2, #4
	ldr r7, off_809DAEC // =dword_809DAD8 
	ldrb r2, [r7,r2]
	orr r0, r2
	mov r2, #2
	tst r2, r1
	beq loc_809DABE
	mov r1, #0x20 
	orr r0, r1
	b loc_809DAC2
loc_809DABE:
	mov r1, #0x10
	orr r0, r1
loc_809DAC2:
	mov r3, #0x4c 
	strh r0, [r5,r3]
	mov r1, #0xf
	and r1, r0
	beq loc_809DAD0
	sub r1, #1
	strb r1, [r5,#0x10]
loc_809DAD0:
	add sp, sp, #0xc
	pop {pc}
	.byte  0
	.byte 0x20
	.byte 0xF4
	.byte 0xE7
dword_809DAD8: .word 0x70300, 0x80201, 0x60405, 0x0
	.word 0x200
off_809DAEC: .word dword_809DAD8
	.word byte_2000AA0
off_809DAF4: .word byte_200ACE0
.endfunc // sub_809D9E0

.func
.thumb_func
sub_809DAF8:
	mov r3, #0x4c 
	ldrh r0, [r5,r3]
	mov r1, #0x10
	and r0, r1
	mov pc, lr
.endfunc // sub_809DAF8

.func
.thumb_func
sub_809DB02:
	push {lr}
	mov r3, #0x4c 
	ldrh r0, [r5,r3]
	mov r1, #0x20 
	push {r0,r1}
	and r0, r1
	tst r0, r0
	beq loc_809DB4A
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809DB4A
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3f 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809DB4A
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809DB4A
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3e 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x36 
	add r0, #0xff
	bl sound_play // () -> void
	b loc_809DB4A
loc_809DB4A:
	pop {r0,r1}
	and r0, r1
	pop {pc}
.endfunc // sub_809DB02

.func
.thumb_func
sub_809DB50:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x17
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne locret_809DB5E
	mov r0, #0
locret_809DB5E:
	pop {pc}
.endfunc // sub_809DB50

.func
.thumb_func
sub_809DB60:
	push {lr}
	ldr r0, off_809DBF0 // =dword_809DBF4 
	mov r1, #0x34 
	add r1, r1, r5
	bl sub_809DBC4
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809DB82
	mov r0, r10
	ldr r0, [r0,#4]
	ldrh r0, [r0]
	mov r1, #0xf0
	tst r0, r1
	beq loc_809DB92
loc_809DB82:
	ldrb r0, [r5,#0x10]
	lsl r0, r0, #2
	ldr r7, off_809DBC0 // =off_809DCEC 
	ldr r0, [r7,r0]
	mov r1, #0x50 
	add r1, r1, r5
	bl sub_809DBC4
loc_809DB92:
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldrb r0, [r7,#0x11]
	tst r0, r0
	beq loc_809DBAC
	ldrb r0, [r5,#0x10]
	lsl r0, r0, #2
	ldr r7, off_809DBBC // =off_809DC0C 
	ldr r0, [r7,r0]
	mov r1, #0x48 
	add r1, r1, r5
	bl sub_809DBC4
loc_809DBAC:
	mov r0, #0
	mov r3, #0x34 
	str r0, [r5,r3]
	mov r3, #0x48 
	str r0, [r5,r3]
	mov r3, #0x50 
	str r0, [r5,r3]
	pop {pc}
off_809DBBC: .word off_809DC0C
off_809DBC0: .word off_809DCEC
.endfunc // sub_809DB60

.func
.thumb_func
sub_809DBC4:
	push {r5,lr}
	add r7, r0, #0
	mov r2, #0
	str r2, [r1]
	push {r1}
	ldr r3, [r5,#0x1c]
	ldr r0, [r7]
	add r0, r0, r3
	ldr r3, [r5,#0x20]
	ldr r1, [r7,#4]
	add r1, r1, r3
	ldr r3, [r5,#0x24]
	ldr r2, [r7,#8]
	add r2, r2, r3
	ldr r3, [r7,#0xc]
	ldr r4, [r7,#0x10]
	ldr r5, [r7,#0x14]
	pop {r6}
	bl sub_80037AC
	pop {r5,pc}
	.byte 0, 0
off_809DBF0: .word dword_809DBF4
dword_809DBF4: .word 0x0, 0x0, 0x0
	.word 0x804, 0x10000, 0x180000
off_809DC0C: .word dword_809DC2C
	.word dword_809DC44
	.word dword_809DC5C
	.word dword_809DC74
	.word dword_809DC8C
	.word dword_809DCA4
	.word dword_809DCBC
	.word dword_809DCD4
dword_809DC2C: .word 0x5A826, 0xFFFA57DA, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DC44: .word 0x80000, 0x0, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DC5C: .word 0x5A826, 0x5A826, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DC74: .word 0x0
	.word 0x80000, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DC8C: .word 0xFFFA57DA, 0x5A826, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DCA4: .word 0xFFF80000, 0x0, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DCBC: .word 0xFFFA57DA, 0xFFFA57DA, 0x0
	.word 0x808, 0x1, 0x60000
dword_809DCD4: .word 0x0
	.word 0xFFF80000, 0x0
	.word 0x808, 0x1, 0x60000
off_809DCEC: .word dword_809DD0C
	.word dword_809DD24
	.word dword_809DD3C
	.word dword_809DD54
	.word dword_809DD6C
	.word dword_809DD84
	.word dword_809DD9C
	.word dword_809DDB4
dword_809DD0C: .word 0x2D413, 0xFFFD2BED, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DD24: .word 0x40000, 0x0, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DD3C: .word 0x2D413, 0x2D413, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DD54: .word 0x0
	.word 0x40000, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DD6C: .word 0xFFFD2BED, 0x2D413, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DD84: .word 0xFFFC0000, 0x0, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DD9C: .word 0xFFFD2BED, 0xFFFD2BED, 0x0
	.word 0x804, 0x200000, 0xC00000
dword_809DDB4: .word 0x0
	.word 0xFFFC0000, 0x0
	.word 0x804, 0x200000, 0xC00000
.endfunc // sub_809DBC4

.func
.thumb_func
sub_809DDCC:
	push {lr}
	mov r0, #0
	ldrh r1, [r5,#0x18]
	tst r1, r1
	beq loc_809DDDE
	sub r1, #1
	strh r1, [r5,#0x18]
	mov r0, #1
	b locret_809DDE8
loc_809DDDE:
	ldr r1, [r5,#0x50]
	ldr r2, dword_809DDEC // =0xc00000 
	tst r2, r1
	bne locret_809DDE8
	mov r0, #1
locret_809DDE8:
	pop {pc}
	.balign 4, 0x00
dword_809DDEC: .word 0xC00000
.endfunc // sub_809DDCC

.func
.thumb_func
sub_809DDF0:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_809DE2A
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_809DE2A
	ldr r1, [r5,#0x50]
	ldr r2, dword_809DE2C // =0xc00000 
	tst r2, r1
	beq locret_809DE2A
	mov r0, #0x17
	mov r1, #0x3d 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x3e 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3f 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_809DE60
locret_809DE2A:
	pop {pc}
dword_809DE2C: .word 0xC00000
.endfunc // sub_809DDF0

.func
.thumb_func
sub_809DE30:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_809DE5E
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3d 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_809DE4E
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3f 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_809DE4E:
	mov r0, #0x17
	mov r1, #0x3d 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x3e 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
locret_809DE5E:
	pop {pc}
.endfunc // sub_809DE30

.func
.thumb_func
sub_809DE60:
	push {lr}
	mov r1, #0
	ldr r7, off_809E060 // =byte_2000AA0 
	mov r6, r10
	ldr r6, [r6,#0x3c]
	ldrb r0, [r6,#4]
	cmp r0, #0x80
	blt loc_809DE72
	ldrb r1, [r7,#0x3] // (byte_2000AA3 - 0x2000aa0)
loc_809DE72:
	ldrb r0, [r5,#0x10]
	ldr r7, off_809DE8C // =off_809DE90 
	ldr r7, [r7,r1]
	lsl r1, r0, #3
	lsl r0, r0, #2
	add r0, r0, r1
	add r7, r7, r0
	ldr r0, [r7,#4]
	str r0, [r5,#0x38]
	ldr r0, [r7,#8]
	str r0, [r5,#0x3c]
	pop {pc}
	.balign 4, 0x00
off_809DE8C: .word off_809DE90
off_809DE90: .word dword_809CFB8+4
	.word dword_809D0D8+4
.endfunc // sub_809DE60

.func
.thumb_func
sub_809DE98:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x16
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809DEBE
	mov r0, #0x17
	mov r1, #0x3d 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x3e 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x3f 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_809DED2
loc_809DEBE:
	mov r0, r10
	ldr r0, [r0,#4]
	ldrh r0, [r0]
	mov r1, #2
	tst r0, r1
	bne locret_809DED2
	mov r0, #0x17
	mov r1, #0x3f 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
locret_809DED2:
	pop {pc}
.endfunc // sub_809DE98

.func
.thumb_func
sub_809DED4:
	push {lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_809DEE4
	bl s_2011C50_ptr_1C_isNull // () -> zf
	beq loc_809DEEA
loc_809DEE4:
	mov r0, #0
	strb r0, [r5,#7]
	b locret_809DEF6
loc_809DEEA:
	ldrb r0, [r5,#7]
	lsl r0, r0, #2
	ldr r7, off_809DEFC // =off_809DEF8 
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
locret_809DEF6:
	pop {pc}
off_809DEF8: .word sub_809DF00+1
off_809DEFC: .word off_809DEF8
.endfunc // sub_809DED4

.func
.thumb_func
sub_809DF00:
	push {lr}
	bl sub_809E01C
	tst r0, r0
	bne loc_809DF16
	mov r0, #1
	mov r7, r10
	ldr r7, [r7,#0x3c]
	strb r0, [r7,#0x10]
	mov r0, #1
	pop {pc}
loc_809DF16:
	ldrb r0, [r5,#0xf]
	mov r7, r10
	ldr r7, [r7,#0x3c]
	strb r0, [r7,#0xe]
	tst r0, r0
	beq loc_809DF24
	strb r0, [r7,#3]
loc_809DF24:
	mov r0, #0
	pop {pc}
.endfunc // sub_809DF00

.func
.thumb_func
sub_809DF28:
	push {lr}
	ldr r7, off_809DF40 // =byte_200ACE0 
	ldrb r0, [r5,#9]
	cmp r0, #0x10
	bne loc_809DF3A
	mov r0, #0
	pop {pc}
.endfunc // sub_809DF28

.func
.thumb_func
sub_809DF36:
	push {lr}
	ldr r7, off_809DF40 // =byte_200ACE0 
loc_809DF3A:
	ldrb r0, [r7]
	pop {pc}
	.byte 0, 0
off_809DF40: .word byte_200ACE0
.endfunc // sub_809DF36

.func
.thumb_func
sub_809DF44:
	push {lr}
	ldr r7, off_809DF9C // =off_809DF9C 
	lsl r0, r0, #3
	add r7, r7, r0
	ldr r3, [r7]
	mul r3, r1
	ldr r4, [r7,#4]
	mul r4, r1
	add r0, r3, #0
	add r1, r4, #0
	pop {pc}
	.balign 4, 0x00
	.word 0xB504, 0xFFFF4AFC, 0x10000, 0x0
	.word 0xB504, 0xB504, 0x0
	.word 0x10000, 0xFFFF4AFC, 0xB504, 0xFFFF0000, 0x0
	.word 0xFFFF4AFC, 0xFFFF4AFC, 0x0
	.word 0xFFFF0000
off_809DF9C: .word off_809DF9C
.endfunc // sub_809DF44

.func
.thumb_func
sub_809DFA0:
	push {lr}
	mov r0, #1
	ldr r1, [r5,#0x1c]
	ldr r2, [r5,#0x28]
	cmp r1, r2
	bne locret_809DFBE
	ldr r1, [r5,#0x20]
	ldr r2, [r5,#0x2c]
	cmp r1, r2
	bne locret_809DFBE
	ldr r1, [r5,#0x24]
	ldr r2, [r5,#0x30]
	cmp r1, r2
	bne locret_809DFBE
	mov r0, #0
locret_809DFBE:
	pop {pc}
.endfunc // sub_809DFA0

.func
.thumb_func
sub_809DFC0:
	push {lr}
	ldrb r0, [r5,#9]
	cmp r0, #4
	beq loc_809DFCC
	cmp r0, #8
	bne loc_809DFD4
loc_809DFCC:
	bl sub_809DFA0
	tst r0, r0
	beq loc_809DFDC
loc_809DFD4:
	mov r3, #0x56 
	mov r0, #0
	strh r0, [r5,r3]
	b locret_809DFF6
loc_809DFDC:
	mov r3, #0x56 
	ldrb r0, [r5,r3]
	ldrb r2, [r5,#0x10]
	ldr r7, off_809DFF8 // =byte_809DFFC 
	ldrb r1, [r7,r2]
	orr r0, r1
	strb r0, [r5,r3]
	cmp r0, #0xf
	bne locret_809DFF6
	mov r0, #0xa
	strh r0, [r5,#0x18]
	mov r0, #0
	strb r0, [r5,r3]
locret_809DFF6:
	pop {pc}
off_809DFF8: .word byte_809DFFC
byte_809DFFC: .byte 0x1, 0x3, 0x2, 0x6, 0x4, 0xC, 0x8, 0x9
.endfunc // sub_809DFC0

.func
.thumb_func
sub_809E004:
	push {lr}
	mov r1, #0
	strb r1, [r5,#0xa]
	ldrb r1, [r5,#9]
	cmp r1, #0x10
	bne loc_809E014
	strb r0, [r5,#0xb]
	pop {pc}
loc_809E014:
	strb r0, [r5,#9]
	pop {pc}
	.word byte_200ACE0
.endfunc // sub_809E004

.func
.thumb_func
sub_809E01C:
	push {lr}
	ldr r7, off_809E044 // =eOverworldNPCObjects 
	ldr r2, dword_809E048 // =0xd80 
	add r2, r2, r7
loc_809E024:
	ldr r0, [r7,#0x50]
	mov r1, #1
	tst r0, r1
	beq loc_809E03A
	ldr r0, [r7,#0x60]
	mov r1, #1
	tst r0, r1
	bne locret_809E042
	str r7, [r5,#0x58]
	mov r0, #0
	b locret_809E042
loc_809E03A:
	add r7, #0xd8
	cmp r7, r2
	blt loc_809E024
	mov r0, #1
locret_809E042:
	pop {pc}
off_809E044: .word eOverworldNPCObjects
dword_809E048: .word 0xD80
.endfunc // sub_809E01C

.func
.thumb_func
sub_809E04C:
	push {r0,r1,lr}
	ldr r0, off_809E05C // =eOWPlayerObject 
	mov r1, #0
	strb r1, [r0,#0xd] // (byte_2009F4D - 0x2009f40)
	strb r1, [r0,#0xe] // (byte_2009F4E - 0x2009f40)
	strb r1, [r0,#0xf] // (byte_2009F4F - 0x2009f40)
	pop {r0,r1,pc}
	.balign 4, 0x00
off_809E05C: .word eOWPlayerObject
off_809E060: .word byte_2000AA0
.endfunc // sub_809E04C

.func
.thumb_func
sub_809E064:
	push {r4,r6,r7,lr}
	mov r0, #0
	mov r4, #0
	bl sub_8003B4C
	tst r5, r5
	beq locret_809E088
	mov r6, r10
	ldr r6, [r6,#0x3c]
	str r5, [r6,#0x18]
	ldr r1, [r6,#0x24]
	str r1, [r5,#0x1c]
	ldr r1, [r6,#0x28]
	str r1, [r5,#0x20]
	ldr r1, [r6,#0x2c]
	str r1, [r5,#0x24]
	ldr r1, [r6,#0x30]
	strb r1, [r5,#0x10]
locret_809E088:
	pop {r4,r6,r7,pc}
.endfunc // sub_809E064

	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8003B86
	pop {r4-r7,pc}
.func
.thumb_func
setFlag3_2e2_2001C88:
	push {lr}
	// flag 3 @ 0x2001c88[0x2e2] (=2001f6a)
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x14
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
.endfunc // setFlag3_2e2_2001C88

.func
.thumb_func
// () -> void
clearFlag3_2e2_2001C88:
	push {lr}
	// clear flag 3 @ 0x2001c88[0x2e2] (=2001f6a)
	mov r0, #0x17
	mov r1, #0x14
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
.endfunc // clearFlag3_2e2_2001C88

.func
.thumb_func
// () -> void
updateFlags_809E0B0:
	// [break] pressing L, jacking in, and talking to objects but not NPCs
	ldr r3, off_809E138 // =byte_200ACE0 
	mov r0, #1
	strb r0, [r3]
	push {lr}
	// set flag 7 @ 0x2001c88[0x2e3] (=2001f6b)
	// if not set, map location changes after function call (also when jacking in)
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x18
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl clearFlag3_2e2_2001C88 // () -> void
	pop {pc}
.endfunc // updateFlags_809E0B0

.func
.thumb_func
nullsub_26:
	mov pc, lr
.endfunc // nullsub_26

.func
.thumb_func
sub_809E0C8:
	push {lr}
	ldr r3, off_809E138 // =byte_200ACE0 
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldr r1, [r1,#0x18]
	ldr r0, [r1,#0x1c]
	str r0, [r3,#0x8] // (dword_200ACE8 - 0x200ace0)
	ldr r0, [r1,#0x20]
	str r0, [r3,#0xc] // (dword_200ACEC - 0x200ace0)
	ldr r0, [r1,#0x24]
	str r0, [r3,#0x10] // (dword_200ACF0 - 0x200ace0)
	push {r3}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x19
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	pop {r3}
	bne locret_809E0FA
	mov r2, r10
	ldr r2, [r2,#0x3c]
	ldr r2, [r2,#0x18]
	ldrb r0, [r2,#0x10]
	mov r1, #7
	and r0, r1
	strb r0, [r3,#2]
locret_809E0FA:
	pop {pc}
.endfunc // sub_809E0C8

loc_809E0FC:
	ldr r3, off_809E138 // =byte_200ACE0 
	mov r0, #1
	strb r0, [r3,#0x15] // (byte_200ACF5 - 0x200ace0)
	mov r0, #0
	str r0, [r3,#0x18] // (dword_200ACF8 - 0x200ace0)
	str r0, [r3,#0x20] // (dword_200AD00 - 0x200ace0)
	ldr r1, off_809E110 // =dword_809CF5C 
	str r1, [r3,#0x20] // (dword_200AD00 - 0x200ace0)
	mov pc, lr
	.byte 0, 0
off_809E110: .word dword_809CF5C
loc_809E114:
	ldr r3, off_809E138 // =byte_200ACE0 
	mov r0, #0
	strb r0, [r3,#0x15] // (byte_200ACF5 - 0x200ace0)
	mov r0, #0
	str r0, [r3,#0x18] // (dword_200ACF8 - 0x200ace0)
	str r0, [r3,#0x20] // (dword_200AD00 - 0x200ace0)
	mov pc, lr
.func
.thumb_func
sub_809E122:
	push {lr}
	ldr r3, off_809E138 // =byte_200ACE0 
	mov r0, #0
	strb r0, [r3]
	bl setFlag3_2e2_2001C88
	// flag 6 @ 0x2001c88[0x2e3] (=2001f6b)
	mov r0, #0x17
	mov r1, #0x19
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
off_809E138: .word byte_200ACE0
.endfunc // sub_809E122

.func
.thumb_func
sub_809E13C:
	push {lr}
	ldr r3, off_809E184 // =byte_200ACE0 
	strb r0, [r3,#2]
	// flag 6 @ 0x2001c88[0x2e3] (=2001f6b)
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x19
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
.endfunc // sub_809E13C

.func
.thumb_func
sub_809E14C:
	push {r4-r7,lr}
	add r4, r0, #0
	ldr r7, off_809E184 // =byte_200ACE0 
	bl sub_809E462
	bne loc_809E164
	strb r4, [r7,#0x2] // (byte_200ACE2 - 0x200ace0)
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x19
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r4-r7,pc}
loc_809E164:
	strb r4, [r7,#0x1c] // (byte_200ACFC - 0x200ace0)
	pop {r4-r7,pc}
.endfunc // sub_809E14C

	push {lr}
	ldr r3, off_809E184 // =byte_200ACE0 
	strb r0, [r3,#0x2] // (byte_200ACE2 - 0x200ace0)
	mvn r0, r0
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	strb r0, [r3,#0x15]
	mov r0, #0x17
	mov r1, #0x19
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	.balign 4, 0x00
off_809E184: .word byte_200ACE0
.func
.thumb_func
sub_809E188:
	push {r7}
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	ldr r7, [r3,#0x1c]
	str r7, [r3,#0x28]
	ldr r7, [r3,#0x20]
	str r7, [r3,#0x2c]
	ldr r7, [r3,#0x24]
	str r7, [r3,#0x30]
	str r0, [r3,#0x1c]
	str r1, [r3,#0x20]
	str r2, [r3,#0x24]
	pop {r7}
loc_809E1A4:
	ldr r3, off_809E214 // =byte_200ACE0 
	str r0, [r3,#0x8] // (dword_200ACE8 - 0x200ace0)
	str r1, [r3,#0xc] // (dword_200ACEC - 0x200ace0)
	str r2, [r3,#0x10] // (dword_200ACF0 - 0x200ace0)
	mov pc, lr
.endfunc // sub_809E188

.func
.thumb_func
sub_809E1AE:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	ldr r0, [r3,#0x1c]
	ldr r1, [r3,#0x20]
	ldr r2, [r3,#0x24]
	mov pc, lr
.endfunc // sub_809E1AE

.func
.thumb_func
sub_809E1BC:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	ldr r1, [r3,#0x1c]
	ldr r2, [r3,#0x20]
	ldr r3, [r3,#0x24]
	mov pc, lr
.endfunc // sub_809E1BC

	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	ldr r0, [r3,#0x20]
	ldr r1, [r3,#0x1c]
	ldr r2, [r3,#0x24]
	mov pc, lr
.func
.thumb_func
sub_809E1D8:
	push {r7}
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldr r7, [r7,#0x18]
	ldr r3, [r7,#0x1c]
	str r3, [r7,#0x28]
	add r3, r3, r0
	str r3, [r7,#0x1c]
	ldr r3, [r7,#0x20]
	str r3, [r7,#0x2c]
	add r3, r3, r1
	str r3, [r7,#0x20]
	ldr r3, [r7,#0x24]
	str r3, [r7,#0x30]
	add r3, r3, r2
	str r3, [r7,#0x24]
	pop {r7}
.endfunc // sub_809E1D8

.func
.thumb_func
sub_809E1FA:
	push {r7,lr}
	ldr r7, off_809E214 // =byte_200ACE0 
	ldr r3, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
	add r3, r3, r0
	str r3, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
	ldr r3, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
	add r3, r3, r1
	str r3, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
	ldr r3, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
	add r3, r3, r2
	str r3, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
	pop {r7,pc}
	.balign 4, 0x00
off_809E214: .word byte_200ACE0
.endfunc // sub_809E1FA

.func
.thumb_func
sub_809E218:
	ldr r3, off_809E224 // =byte_200ACE0 
	ldrb r1, [r3,#0x15] // (byte_200ACF5 - 0x200ace0)
	tst r1, r1
	beq locret_809E222
	strh r0, [r3,#0x1a] // (dword_200ACF8+2 - 0x200ace0)
locret_809E222:
	mov pc, lr
off_809E224: .word byte_200ACE0
.endfunc // sub_809E218

.func
.thumb_func
sub_809E228:
	mov r0, #0
	mov pc, lr
	.word byte_200ACE0
.endfunc // sub_809E228

.func
.thumb_func
sub_809E230:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	mov r0, #1
	strb r0, [r3,#0x17]
	mov pc, lr
.endfunc // sub_809E230

.func
.thumb_func
sub_809E23C:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	mov r0, #0
	strb r0, [r3,#0x17]
	mov pc, lr
.endfunc // sub_809E23C

.func
.thumb_func
sub_809E248:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	mov r0, #1
	strb r0, [r3,#0xc]
	mov pc, lr
.endfunc // sub_809E248

.func
.thumb_func
sub_809E254:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	mov r0, #0
	strb r0, [r3,#0xc]
	mov pc, lr
.endfunc // sub_809E254

loc_809E260:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	strb r0, [r3,#0x16]
	mov pc, lr
loc_809E26A:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	mov r0, #0
	strb r0, [r3,#0x16]
	mov pc, lr
.func
.thumb_func
sub_809E276:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8002F90 // () -> void
	pop {r5,pc}
.endfunc // sub_809E276

.func
.thumb_func
sub_809E284:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8002E3C
	pop {r5,pc}
.endfunc // sub_809E284

.func
.thumb_func
sub_809E292:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8002E52
	pop {r5,pc}
.endfunc // sub_809E292

.func
.thumb_func
sub_809E2A0:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sprite_setPallete // (int pallete) -> void
	pop {r5,pc}
.endfunc // sub_809E2A0

.func
.thumb_func
sub_809E2AE:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	strb r0, [r3,#0x10]
	mov pc, lr
.endfunc // sub_809E2AE

.func
.thumb_func
sub_809E2B8:
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldr r0, [r0,#0x18]
	ldrb r0, [r0,#0x10]
	mov pc, lr
.endfunc // sub_809E2B8

.func
.thumb_func
sub_809E2C2:
	mov r0, #0x40 
	mov r1, #0x40 
	mov r2, #0
loc_809E2C8:
	ldr r3, off_809E430 // =byte_2000AA0 
	strb r0, [r3]
	strb r1, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
	strb r2, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
	mov pc, lr
.endfunc // sub_809E2C2

	ldr r3, off_809E430 // =byte_2000AA0 
	ldrb r0, [r3]
	ldrb r1, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
	ldrb r2, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
	mov pc, lr
.func
.thumb_func
sub_809E2DC:
	push {r4,lr}
	ldr r3, off_809E430 // =byte_2000AA0 
	ldrb r4, [r3]
	add r4, r4, r0
	strb r4, [r3]
	ldrb r4, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
	add r4, r4, r1
	strb r4, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
	ldrb r4, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
	add r4, r4, r2
	strb r4, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
	pop {r4,pc}
.endfunc // sub_809E2DC

.func
.thumb_func
sub_809E2F4:
	mov r0, #0
loc_809E2F6:
	ldr r3, off_809E430 // =byte_2000AA0 
	strh r0, [r3,#0x6] // (word_2000AA6 - 0x2000aa0)
	mov pc, lr
.endfunc // sub_809E2F4

.func
.thumb_func
sub_809E2FC:
	mov r0, #0
loc_809E2FE:
	ldr r3, off_809E430 // =byte_2000AA0 
	strb r0, [r3,#0x5] // (byte_2000AA5 - 0x2000aa0)
	mov pc, lr
.endfunc // sub_809E2FC

.func
.thumb_func
sub_809E304:
	mov r0, #0
loc_809E306:
	ldr r3, off_809E430 // =byte_2000AA0 
	strb r0, [r3,#0x3] // (byte_2000AA3 - 0x2000aa0)
	mov pc, lr
.endfunc // sub_809E304

	ldr r3, off_809E430 // =byte_2000AA0 
	ldrb r0, [r3,#0x3] // (byte_2000AA3 - 0x2000aa0)
	mov pc, lr
.func
.thumb_func
sub_809E312:
	mov r0, #0
loc_809E314:
	ldr r3, off_809E430 // =byte_2000AA0 
	strb r0, [r3,#0x4] // (byte_2000AA4 - 0x2000aa0)
	mov pc, lr
.endfunc // sub_809E312

	push {r4-r7,lr}
	ldr r3, off_809E430 // =byte_2000AA0 
	mov r0, #0
	strb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
	strb r0, [r3,#0x4] // (byte_2000AA4 - 0x2000aa0)
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	mov r0, #0x80
	mov r1, #0x18
	mov r2, #0x48 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_8002F90 // () -> void
	bl sprite_update
	mov r0, #0
	bl sub_8001172
	mov r0, #6
	mov r1, #0x8e
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #6
	mov r1, #0x8f
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r3, off_809E430 // =byte_2000AA0 
	mov r0, #1
	strb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
	strb r0, [r3,#0x4] // (byte_2000AA4 - 0x2000aa0)
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x54 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	.hword 0xF764
	.word 0xF764F991
	.word 0xF764FE05, 0x2054F99D, 0xFEF1F762, 0x218E2006, 0xFECAF790
	.word 0x218F2006, 0xFEB8F790
	pop {r4-r7,pc}
.func
.thumb_func
sub_809E3A2:
	ldr r3, off_809E430 // =byte_2000AA0 
	ldrb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
	tst r0, r0
	mov pc, lr
.endfunc // sub_809E3A2

.func
.thumb_func
sub_809E3AA:
	ldr r3, off_809E430 // =byte_2000AA0 
	mov r0, #0
	strb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
	mov pc, lr
.endfunc // sub_809E3AA

.func
.thumb_func
sub_809E3B2:
	push {r4-r7,lr}
	ldr r4, off_809E430 // =byte_2000AA0 
	mov r0, #0
	strb r0, [r4,#0xb] // (byte_2000AAB - 0x2000aa0)
	strh r0, [r4,#0xc] // (dword_2000AAC - 0x2000aa0)
	strh r0, [r4,#0x10] // (dword_2000AB0 - 0x2000aa0)
	strh r0, [r4,#0x14] // (dword_2000AB4 - 0x2000aa0)
	strh r0, [r4,#0x18] // (dword_2000AB8 - 0x2000aa0)
	pop {r4-r7,pc}
.endfunc // sub_809E3B2

.func
.thumb_func
sub_809E3C4:
	push {r4-r7,lr}
	ldr r4, off_809E430 // =byte_2000AA0 
	str r0, [r4,#0xc] // (dword_2000AAC - 0x2000aa0)
	str r1, [r4,#0x10] // (dword_2000AB0 - 0x2000aa0)
	str r2, [r4,#0x14] // (dword_2000AB4 - 0x2000aa0)
	str r3, [r4,#0x18] // (dword_2000AB8 - 0x2000aa0)
	mov r0, #1
	strb r0, [r4,#0xb] // (byte_2000AAB - 0x2000aa0)
	pop {r4-r7,pc}
.endfunc // sub_809E3C4

.func
.thumb_func
sub_809E3D6:
	push {r4-r7,lr}
	ldr r4, off_809E430 // =byte_2000AA0 
	ldrb r0, [r4,#0xb] // (byte_2000AAB - 0x2000aa0)
	tst r0, r0
	beq locret_809E42C
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#4]
	cmp r0, #0x80
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldr r7, [r7,#0x18]
	ldr r0, [r4,#0xc] // (dword_2000AAC - 0x2000aa0)
	ldr r1, [r7,#0x1c]
	cmp r0, r1
	ble loc_809E3FE
	str r0, [r7,#0x1c]
	ldr r0, [r7,#0x2c]
	str r0, [r7,#0x20]
	b locret_809E42C
loc_809E3FE:
	ldr r0, [r4,#0x14] // (dword_2000AB4 - 0x2000aa0)
	ldr r1, [r7,#0x1c]
	cmp r0, r1
	bge loc_809E40E
	str r0, [r7,#0x1c]
	ldr r0, [r7,#0x2c]
	str r0, [r7,#0x20]
	b locret_809E42C
loc_809E40E:
	ldr r0, [r4,#0x10] // (dword_2000AB0 - 0x2000aa0)
	ldr r1, [r7,#0x20]
	cmp r0, r1
	ble loc_809E41E
	str r0, [r7,#0x20]
	ldr r0, [r7,#0x28]
	str r0, [r7,#0x1c]
	b locret_809E42C
loc_809E41E:
	ldr r0, [r4,#0x18] // (dword_2000AB8 - 0x2000aa0)
	ldr r1, [r7,#0x20]
	cmp r0, r1
	bge locret_809E42C
	str r0, [r7,#0x20]
	ldr r0, [r7,#0x28]
	str r0, [r7,#0x1c]
locret_809E42C:
	pop {r4-r7,pc}
	.byte 0, 0
off_809E430: .word byte_2000AA0
.endfunc // sub_809E3D6

.func
.thumb_func
sub_809E434:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8002DEA
	pop {r5,pc}
.endfunc // sub_809E434

.func
.thumb_func
sub_809E442:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	ldrb r0, [r3]
	mov r1, #2
	orr r0, r1
	strb r0, [r3]
	mov pc, lr
.endfunc // sub_809E442

.func
.thumb_func
sub_809E452:
	mov r3, r10
	ldr r3, [r3,#0x3c]
	ldr r3, [r3,#0x18]
	ldrb r0, [r3]
	mov r1, #2
	bic r0, r1
	strb r0, [r3]
	mov pc, lr
.endfunc // sub_809E452

.func
.thumb_func
sub_809E462:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldrb r0, [r1,#0x10]
	tst r0, r0
	pop {pc}
.endfunc // sub_809E462

.func
.thumb_func
sub_809E46E:
	push {r7,lr}
	mov r7, r10
	ldr r7, [r7,#0x3c]
	ldr r0, [r7,#0x18]
	add r0, #0x1c
	bl sub_8031A7A
	cmp r0, #0x48 
	blt locret_809E494
	cmp r0, #0x4f 
	bgt locret_809E494
	sub r0, #0x48 
	ldr r7, [r7,#0x18]
	mov r2, #0x64 
	strh r0, [r7,r2]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x17
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
locret_809E494:
	pop {r7,pc}
.endfunc // sub_809E46E

.func
.thumb_func
sub_809E496:
	ldr r1, off_809E49C // =byte_200ACE0 
	str r0, [r1,#0x20] // (dword_200AD00 - 0x200ace0)
	mov pc, lr
off_809E49C: .word byte_200ACE0
.endfunc // sub_809E496

.func
.thumb_func
sub_809E4A0:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8002C7A
	pop {r5,pc}
.endfunc // sub_809E4A0

.func
.thumb_func
sub_809E4AE:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	bl sub_8002CCE
	pop {r5,pc}
.endfunc // sub_809E4AE

.func
.thumb_func
sub_809E4BC:
	push {r4-r7,lr}
	mov r0, #0x17
	mov r1, #0x29 
	bl ToggleEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	mov r4, #0x37 
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x29 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_809E4DA
	mov r4, #0
loc_809E4DA:
	mov r0, #0x80
	mov r1, #0x18
	add r2, r4, #0
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
.endfunc // sub_809E4BC

	bl sub_8002F90 // () -> void
	bl sprite_update
	pop {r4-r7,pc}
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldr r5, [r5,#0x18]
	mov r0, #0x80
	mov r1, #0x18
	mov r2, #0
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_8002F90 // () -> void
	bl sprite_update
	pop {r4-r7,pc}
	.byte 0, 0
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#1]
	cmp r0, #6
	ble locret_809E52E
	sub r0, #5
locret_809E52E:
	pop {pc}
dword_809E530: .word 0x15000805
	.word 0x10090110
	.word 0x1200A00
	.word 0x3D00003C
	.word 0x183E0100
	.word 0x2183F00
	.word 0x41081840
	.word 0x30420428
	.word 0xA185706
	.word 0x44000043
	.word 0x450200
	.word 0x1004600
	.word 0x5D05005C
	.word 0x5E0700
	.word 0xB005F09
	.word 0xFF
/*For debugging purposes, connect comment at any range!*/
