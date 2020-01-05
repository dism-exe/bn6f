
	thumb_func_start ho_80A4984
ho_80A4984:
	push {lr}
	ldr r7, off_80A49AC // =byte_80A3A44
	ldrb r1, [r5,#4]
	mov r2, #0x10
	mul r1, r2
	add r7, r7, r1
	ldr r0, off_80A499C // =jt_80A49A0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A499C: .word jt_80A49A0
jt_80A49A0: .word sub_80A49B0+1
	.word event_80A4A08+1
	.word sub_80A4A90+1
off_80A49AC: .word byte_80A3A44
	thumb_func_end ho_80A4984

	thumb_local_start
sub_80A49B0:
	push {lr}
	mov r0, #0x80
	ldrb r1, [r7]
	ldrb r2, [r7,#1]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r7,#3]
	cmp r0, #0xff
	bne loc_80A49E8
	ldr r6, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	str r6, [r5,#0x14]
loc_80A49E8:
	bl sub_8002E14
	ldr r0, [r7,#4]
	bl sprite_setUnk0x2c
	ldrb r0, [r7,#8]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#6]
	strb r0, [r5,#7]
	bl event_80A4A08
	pop {pc}
	thumb_func_end sub_80A49B0

	thumb_local_start
event_80A4A08:
	push {lr}
	mov r0, #0
	strb r0, [r5,#7]
	mov r6, #1
	strb r6, [r5]
	ldrh r0, [r7,#0xc]
	tst r0, r0
	beq loc_80A4A1E
	mov r0, r0
	bl SetEventFlag
loc_80A4A1E:
	ldrh r0, [r7,#0xe]
	tst r0, r0
	beq loc_80A4A2A
	mov r0, r0
	bl SetEventFlag
loc_80A4A2A:
	ldrh r3, [r7,#0xa]
	tst r3, r3
	beq loc_80A4A38
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80A4A74
loc_80A4A38:
	mov r0, #1
	strb r0, [r5,#7]
	mov r6, #3
	strb r6, [r5]
	ldrh r0, [r7,#0xc]
	tst r0, r0
	beq loc_80A4A4C
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_80A4A4C:
	ldrh r0, [r7,#0xe]
	tst r0, r0
	beq loc_80A4A58
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_80A4A58:
	ldrb r4, [r7,#9]
	movflag EVENT_171C
	bl TestEventFlagFromImmediate
	bne loc_80A4A66
	ldrb r4, [r7,#8]
loc_80A4A66:
	cmp r4, #0xff
	bne loc_80A4A6E
	bl sprite_forceWhitePalette
loc_80A4A6E:
	mov r0, r4
	bl sprite_setPalette // (int pallete) -> void
loc_80A4A74:
	ldrb r0, [r5,#6]
	ldrb r1, [r5,#7]
	tst r0, r1
	beq loc_80A4A8A
	ldrb r0, [r5,#7]
	strb r0, [r5,#6]
	ldrb r0, [r7,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_80A4A8A:
	bl sprite_update
	pop {pc}
	thumb_func_end event_80A4A08

	thumb_local_start
sub_80A4A90:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A4A90

	thumb_func_start sub_80A4A98
sub_80A4A98:
	push {lr}
	ldr r0, off_80A4AA8 // =off_80A4AAC 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A4AA8: .word off_80A4AAC
off_80A4AAC: .word sub_80A4AB8+1
	.word sub_80A4ACC+1
	.word sub_80A4BD4+1
	thumb_func_end sub_80A4A98

	thumb_local_start
sub_80A4AB8:
	push {lr}
	mov r0, #4
	strb r0, [r5,#8]
	ldrb r0, [r5,#5]
	str r0, [r5,#0x24]
	ldrb r0, [r5,#6]
	str r0, [r5,#0x28]
	bl sub_80A4ACC
	pop {pc}
	thumb_func_end sub_80A4AB8

	thumb_local_start
sub_80A4ACC:
	push {r4-r7,lr}
	mov r4, r8
	push {r4}
	ldr r0, [r5,#0x24]
	sub r0, #1
	ble loc_80A4ADC
	str r0, [r5,#0x24]
	b loc_80A4B7A
loc_80A4ADC:
	ldrb r0, [r5,#5]
	str r0, [r5,#0x24]
	ldrb r7, [r5,#7]
	mov r1, #0xc0
	and r1, r7
	mov r0, #0x3f 
	and r7, r0
	ldr r0, off_80A4B84 // =off_80A4B88 
	lsr r1, r1, #3
	add r0, r0, r1
	ldr r1, [r0,#4]
	ldr r0, [r0]
	mul r7, r1
	add r7, r7, r0
	bl GetPositiveSignedRNG2
	mov r1, #8
	svc 6
	mov r0, #6
	mul r0, r1
	ldr r4, off_80A4BA0 // =byte_80A4BA4
	add r4, r4, r0
	bl GetPositiveSignedRNG2
	mov r6, r0
	mov r8, r5
	mov r0, #0
	ldrsh r1, [r4,r0]
	mov r0, #2
	ldrsh r2, [r4,r0]
	mov r0, #4
	ldrsh r3, [r4,r0]
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r1, r1, r4
	lsr r6, r6, #8
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r2, r2, r4
	lsr r6, r6, #8
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r3, r3, r4
	lsr r6, r6, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r7]
	ldr r6, [r7,#4]
	ldr r7, [r7,#8]
	add r1, r1, r0
	add r2, r2, r6
	add r3, r3, r7
	ldr r0, [r5,#0xc]
	ldr r6, [r5,#0x10]
	ldr r7, [r5,#0x14]
	add r1, r1, r0
	add r2, r2, r6
	add r3, r3, r7
	ldr r4, dword_80A4B80 // =0x140000 
	mov r0, #2
	bl SpawnOverworldMapObject
	mov r5, r8
	ldr r0, [r5,#0x28]
	sub r0, #1
	ble loc_80A4B6C
	str r0, [r5,#0x28]
	b loc_80A4B7A
loc_80A4B6C:
	ldrb r0, [r5,#6]
	str r0, [r5,#0x28]
	tst r0, r0
	beq loc_80A4B7A
	mov r0, #SOUND_HIT_BOMB_1
	bl PlaySoundEffect
loc_80A4B7A:
	pop {r4}
	mov r8, r4
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A4B80: .word 0x140000
off_80A4B84: .word off_80A4B88
off_80A4B88: .word eOverworldNPCObject0_Coords
	.word oOverworldNPCObject_Size
	.word eOWPlayerObject_Coords
	.word oOWPlayerObject_Size
	.word eOverworldMapObject0_Coords
	.word oOverworldMapObject_Size
off_80A4BA0: .word byte_80A4BA4
byte_80A4BA4: .byte 0xF4, 0xFF, 0xF4, 0xFF, 0x8, 0x0, 0xF0, 0xFF, 0x0, 0x0, 0x8
	.byte 0x0, 0xF4, 0xFF, 0xC, 0x0, 0x8, 0x0, 0x0, 0x0, 0xF0, 0xFF
	.byte 0x8, 0x0, 0x0, 0x0, 0x10, 0x0, 0x8, 0x0, 0xC, 0x0, 0xF4
	.byte 0xFF, 0x8, 0x0, 0x10, 0x0, 0x0, 0x0, 0x8, 0x0, 0xC, 0x0
	.byte 0xC, 0x0, 0x8, 0x0
	thumb_func_end sub_80A4ACC

	thumb_local_start
sub_80A4BD4:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A4BD4

	thumb_func_start sub_80A4BDC
sub_80A4BDC:
	push {lr}
	ldr r0, off_80A4BEC // =off_80A4BF0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A4BEC: .word off_80A4BF0
off_80A4BF0: .word sub_80A4BFC+1
	.word sub_80A4C46+1
	.word sub_80A4C5C+1
	thumb_func_end sub_80A4BDC

	thumb_local_start
sub_80A4BFC:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	ldrb r1, [r5,#6]
	ldrb r2, [r5,#7]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldr r6, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	str r6, [r5,#0x14]
	bl sub_8002E14
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#5]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A4C46
	pop {pc}
	thumb_func_end sub_80A4BFC

	thumb_local_start
sub_80A4C46:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A4C56
	mov r0, #8
	strb r0, [r5,#8]
loc_80A4C56:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A4C46

	thumb_local_start
sub_80A4C5C:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	.balign 4, 0
byte_80A4C64: .byte 0xE7, 0x4, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0xE, 0x0, 0x1, 0x0
	.byte 0x0, 0x3, 0xFF, 0x7D, 0x1, 0xE8, 0x4, 0x40, 0x16, 0xC0, 0x16
	.byte 0x1C, 0xE, 0x0, 0x1, 0x0, 0x0, 0x3, 0xFF, 0x7D, 0x1, 0x6D
	.byte 0x4, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0
	.byte 0x2, 0xFF, 0x74, 0x0, 0x83, 0x4, 0x40, 0x16, 0xC0, 0x16, 0x1C
	.byte 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xEE, 0x5
	.byte 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2
	.byte 0xFF, 0x74, 0x0, 0xEF, 0x5, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3
	.byte 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xF0, 0x5, 0x40
	.byte 0x16, 0xC0, 0x16, 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0x31, 0x0, 0x40, 0x16, 0xC2, 0x16, 0x1C, 0x3, 0x0
	.byte 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x32, 0x0, 0x41, 0x16
	.byte 0xC1, 0x16, 0x1C, 0x3, 0x2, 0x2, 0x38, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0, 0x73, 0x0, 0x41, 0x16, 0xC4, 0x16, 0x1C, 0x1, 0x0, 0x1
	.byte 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x74, 0x0, 0x42, 0x16, 0xC5
	.byte 0x16, 0x1C, 0x3, 0x1, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0
	.byte 0x75, 0x0, 0x41, 0x16, 0xC3, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x0
	.byte 0x0, 0x3, 0xFF, 0x74, 0x0, 0x78, 0x0, 0x41, 0x16, 0xC5, 0x16
	.byte 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xF6
	.byte 0x9, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0
	.byte 0x2, 0xFF, 0x74, 0x0, 0xF7, 0x9, 0x41, 0x16, 0xC1, 0x16, 0x1C
	.byte 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xF8, 0x9
	.byte 0x42, 0x16, 0xC2, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2
	.byte 0xFF, 0x74, 0x0, 0xF9, 0x9, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3
	.byte 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xFA, 0x9, 0x41
	.byte 0x16, 0xC1, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0xFB, 0x9, 0x42, 0x16, 0xC2, 0x16, 0x1C, 0x3, 0x0
	.byte 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xFC, 0x9, 0x40, 0x16
	.byte 0xC0, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0, 0xFD, 0x9, 0x41, 0x16, 0xC1, 0x16, 0x1C, 0x3, 0x1, 0x1
	.byte 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xFE, 0x9, 0x42, 0x16, 0xC2
	.byte 0x16, 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0
	.byte 0xF0, 0x7, 0x43, 0x16, 0xC6, 0x16, 0x1C, 0xE, 0x0, 0x1, 0x0
	.byte 0x1, 0x3, 0xFF, 0x74, 0x0, 0xF1, 0x7, 0x41, 0x16, 0xC3, 0x16
	.byte 0x1C, 0xE, 0x0, 0x1, 0x0, 0x1, 0x3, 0xFF, 0x74, 0x0, 0xF2
	.byte 0x7, 0x43, 0x16, 0xC7, 0x16, 0x1C, 0xE, 0x0, 0x1, 0x0, 0x1
	.byte 0x3, 0xFF, 0x74, 0x0, 0xF3, 0x7, 0x42, 0x16, 0xC5, 0x16, 0x1C
	.byte 0xE, 0x0, 0x1, 0x0, 0x1, 0x2, 0xFF, 0x74, 0x0, 0xF4, 0x7
	.byte 0x43, 0x16, 0xC3, 0x16, 0x1C, 0xE, 0x0, 0x1, 0x0, 0x1, 0x2
	.byte 0xFF, 0x74, 0x0, 0xF5, 0x7, 0x40, 0x16, 0xC4, 0x16, 0x1C, 0xE
	.byte 0x0, 0x1, 0x0, 0x1, 0x2, 0xFF, 0x74, 0x0, 0x7D, 0x8, 0x40
	.byte 0x16, 0xC1, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0xFD, 0xB, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x20, 0x1
	.byte 0x2, 0x0, 0x0, 0x3, 0xFF, 0x74, 0x0, 0xFE, 0xB, 0x40, 0x16
	.byte 0xC0, 0x16, 0x1C, 0x20, 0x1, 0x2, 0x0, 0x0, 0x3, 0xFF, 0x74
	.byte 0x0, 0xFF, 0xB, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x20, 0x1, 0x2
	.byte 0x0, 0x0, 0x3, 0xFF, 0x74, 0x0, 0xB4, 0xA, 0x41, 0x16, 0xC6
	.byte 0x16, 0x1C, 0x4B, 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0xFF, 0xFF
	.byte 0xB5, 0xA, 0x42, 0x16, 0xC7, 0x16, 0x1C, 0x90, 0x0, 0x1, 0x0
	.byte 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xB5, 0xA, 0x42, 0x16, 0xC7, 0x16
	.byte 0x1C, 0x91, 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xB6
	.byte 0xA, 0x43, 0x16, 0xC8, 0x16, 0x1C, 0x58, 0x0, 0x1, 0x0, 0x0
	.byte 0x2, 0xFF, 0xFF, 0xFF, 0xB6, 0xA, 0x43, 0x16, 0xC8, 0x16, 0x1C
	.byte 0x58, 0x0, 0x0, 0x0, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xB7, 0xA
	.byte 0x44, 0x16, 0xC9, 0x16, 0x1C, 0x41, 0x0, 0x1, 0x0, 0x0, 0x2
	.byte 0xFF, 0xFF, 0xFF, 0xD7, 0xC, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3
	.byte 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xD8, 0xC, 0x41
	.byte 0x16, 0xC1, 0x16, 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0xD9, 0xC, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3, 0x0
	.byte 0x0, 0x38, 0x0, 0x3, 0xFF, 0x74, 0x0, 0xDA, 0xC, 0x41, 0x16
	.byte 0xC1, 0x16, 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0, 0xF6, 0x7, 0x40, 0x16, 0xC1, 0x16, 0x1C, 0xE, 0x0, 0x1
	.byte 0x0, 0x1, 0x2, 0xFF, 0x74, 0x0, 0xF7, 0x7, 0x40, 0x16, 0xC1
	.byte 0x16, 0x1C, 0xE, 0x0, 0x1, 0x0, 0x1, 0x2, 0xFF, 0x74, 0x0
	.byte 0xE6, 0xC, 0x40, 0x16, 0xC2, 0x16, 0x1C, 0x3, 0x3, 0x3, 0x38
	.byte 0x0, 0x2, 0xFF, 0x74, 0x0, 0xF9, 0xF, 0x40, 0x16, 0xC0, 0x16
	.byte 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xFA
	.byte 0xF, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0
	.byte 0x2, 0xFF, 0x74, 0x0, 0xFB, 0xF, 0x41, 0x16, 0xC1, 0x16, 0x1C
	.byte 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xFC, 0xF
	.byte 0x42, 0x16, 0xC2, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2
	.byte 0xFF, 0x74, 0x0, 0xFD, 0xF, 0x43, 0x16, 0xC3, 0x16, 0x1C, 0x3
	.byte 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0xFE, 0xF, 0x40
	.byte 0x16, 0xC0, 0x16, 0x1C, 0x20, 0x1, 0x2, 0x0, 0x0, 0x3, 0xFF
	.byte 0x74, 0x0, 0xFF, 0xF, 0x40, 0x16, 0xC0, 0x16, 0x1C, 0xE, 0x0
	.byte 0x1, 0x0, 0x1, 0x3, 0xFF, 0x7D, 0x1, 0x36, 0x1, 0x40, 0x16
	.byte 0xC2, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0, 0x37, 0x1, 0x40, 0x16, 0xC4, 0x16, 0x1C, 0x8C, 0x0, 0x0
	.byte 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x64, 0x1, 0x44, 0x16, 0xC6
	.byte 0x16, 0xC, 0x25, 0x1, 0x2, 0x0, 0x0, 0x3, 0xFF, 0x74, 0x0
	.byte 0x73, 0x1, 0x42, 0x16, 0xC2, 0x16, 0x1C, 0x4B, 0x0, 0x1, 0x0
	.byte 0x0, 0x2, 0xFF, 0x74, 0x0, 0x69, 0x1, 0x41, 0x16, 0xC2, 0x16
	.byte 0x1C, 0x1F, 0x0, 0x0, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x76
	.byte 0x0, 0x40, 0x16, 0xC5, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x0, 0x0
	.byte 0x2, 0xFF, 0x74, 0x0, 0x74, 0x1, 0x42, 0x16, 0xC3, 0x16, 0x1C
	.byte 0x4B, 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x78, 0x1
	.byte 0x41, 0x16, 0xC2, 0x16, 0x1C, 0x20, 0x0, 0x0, 0x0, 0x0, 0x2
	.byte 0xFF, 0x74, 0x0, 0x6E, 0x1, 0x41, 0x16, 0xC2, 0x16, 0x1C, 0xE
	.byte 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x79, 0x0, 0x42
	.byte 0x16, 0xC3, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0x79, 0x1, 0x41, 0x16, 0xC4, 0x16, 0x1C, 0x20, 0x0
	.byte 0x0, 0x0, 0x0, 0x3, 0xFF, 0x74, 0x0, 0x6A, 0x1, 0x42, 0x16
	.byte 0xC5, 0x16, 0x1C, 0x1F, 0x0, 0x0, 0x0, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0, 0x6F, 0x1, 0x42, 0x16, 0xC1, 0x16, 0x1C, 0xE, 0x0, 0x1
	.byte 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x65, 0x1, 0x43, 0x16, 0xC2
	.byte 0x16, 0xC, 0x25, 0x1, 0x2, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0
	.byte 0x77, 0x0, 0x41, 0x16, 0xC7, 0x16, 0x1C, 0x3, 0x3, 0x3, 0x0
	.byte 0x0, 0x2, 0xFF, 0x74, 0x0, 0x66, 0x1, 0x41, 0x16, 0xC3, 0x16
	.byte 0xC, 0x25, 0x1, 0x2, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x6B
	.byte 0x1, 0x42, 0x16, 0xC4, 0x16, 0x1C, 0x1F, 0x0, 0x0, 0x0, 0x0
	.byte 0x2, 0xFF, 0x74, 0x0, 0x7A, 0x1, 0x43, 0x16, 0xC5, 0x16, 0x1C
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x3, 0xFF, 0x74, 0x0, 0x75, 0x1
	.byte 0x44, 0x16, 0xC6, 0x16, 0x1C, 0x4B, 0x0, 0x1, 0x0, 0x0, 0x2
	.byte 0xFF, 0x74, 0x0, 0x70, 0x1, 0x45, 0x16, 0xC7, 0x16, 0x1C, 0xE
	.byte 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x76, 0x1, 0x40
	.byte 0x16, 0xC2, 0x16, 0x1C, 0x4B, 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0x67, 0x1, 0x41, 0x16, 0xC3, 0x16, 0xC, 0x25, 0x1
	.byte 0x2, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x71, 0x1, 0x42, 0x16
	.byte 0xC4, 0x16, 0x1C, 0xE, 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0, 0x7B, 0x1, 0x43, 0x16, 0xC5, 0x16, 0x1C, 0x20, 0x0, 0x0
	.byte 0x0, 0x0, 0x3, 0xFF, 0x74, 0x0, 0x6C, 0x1, 0x44, 0x16, 0xC6
	.byte 0x16, 0x1C, 0x1F, 0x0, 0x0, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0
	.byte 0x7C, 0x1, 0x40, 0x16, 0xC1, 0x16, 0x1C, 0x20, 0x0, 0x0, 0x0
	.byte 0x0, 0x2, 0xFF, 0x74, 0x0, 0x6D, 0x1, 0x41, 0x16, 0xC2, 0x16
	.byte 0x1C, 0x1F, 0x0, 0x0, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x68
	.byte 0x1, 0x42, 0x16, 0xC3, 0x16, 0xC, 0x25, 0x1, 0x2, 0x0, 0x0
	.byte 0x2, 0xFF, 0x74, 0x0, 0x72, 0x1, 0x43, 0x16, 0xC4, 0x16, 0x1C
	.byte 0xE, 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x77, 0x1
	.byte 0x44, 0x16, 0xC5, 0x16, 0x1C, 0x4B, 0x0, 0x1, 0x0, 0x0, 0x2
	.byte 0xFF, 0x74, 0x0, 0x86, 0x0, 0x40, 0x16, 0xC4, 0x16, 0x1C, 0x1
	.byte 0x0, 0x1, 0x0, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x82, 0x0, 0x45
	.byte 0x16, 0xCD, 0x16, 0x1C, 0x3, 0x1, 0x1, 0x38, 0x0, 0x2, 0xFF
	.byte 0x74, 0x0, 0x83, 0x0, 0x45, 0x16, 0xCD, 0x16, 0x1C, 0x3, 0x0
	.byte 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74, 0x0, 0x85, 0x0, 0x46, 0x16
	.byte 0xCE, 0x16, 0x1C, 0x3, 0x0, 0x0, 0x38, 0x0, 0x2, 0xFF, 0x74
	.byte 0x0
	thumb_func_end sub_80A4C5C

	thumb_func_start sub_80A51C4
sub_80A51C4:
	push {lr}
	ldr r7, off_80A51F4 // =byte_80A4C64
	mov r0, #0x10
	ldrb r1, [r5,#4]
	mul r0, r1
	add r7, r7, r0
	ldr r0, off_80A51DC // =off_80A51E0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A51DC: .word off_80A51E0
off_80A51E0: .word sub_80A51F8+1
	.word sub_80A5268+1
	.word sub_80A52E4+1
	.word sub_80A5304+1
	.word sub_80A5350+1
off_80A51F4: .word byte_80A4C64
	thumb_func_end sub_80A51C4

	thumb_local_start
sub_80A51F8:
	push {lr}
	ldrh r0, [r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80A524E
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	ldrb r1, [r7,#6]
	ldrb r2, [r7,#7]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#0xc]
	bl sub_8002E14
	ldrb r0, [r7,#8]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r7,#0xa]
	lsl r0, r0, #0x18
	bl sprite_setUnk0x2c
	ldrb r0, [r7,#0xb]
	bl sprite_setPalette // (int pallete) -> void
	ldrh r0, [r7,#2]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	ldrh r0, [r7,#4]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A5268
	pop {pc}
loc_80A524E:
	ldrh r0, [r7,#2]
	mov r0, r0
	bl SetEventFlag
	ldrh r0, [r7,#4]
	mov r0, r0
	bl SetEventFlag
	mov r0, #0x10
	strb r0, [r5,#8]
	bl sub_80A5350
	pop {pc}
	thumb_func_end sub_80A51F8

	thumb_local_start
sub_80A5268:
	push {lr}
	ldrh r0, [r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_80A52DA
	bl screenFade_80062C8
	lsr r0, r0, #2
	mov r1, #1
	tst r0, r1
	bne loc_80A52B0
	ldrb r0, [r7,#7]
	cmp r0, #1
	bne loc_80A52A4
	ldrb r1, [r7,#8]
	ldrb r0, [r7,#9]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrh r0, [r7,#4]
	mov r0, r0
	bl SetEventFlag
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #0xc
	strb r0, [r5,#8]
	b loc_80A52DA
loc_80A52A4:
	ldrh r0, [r7,#0xe]
	ldr r1, dword_80A52E0 // =0xffff 
	cmp r0, r1
	beq loc_80A52B0
	bl PlaySoundEffect
loc_80A52B0:
	ldrh r0, [r7,#4]
	mov r0, r0
	bl SetEventFlag
	ldrb r1, [r7,#8]
	ldrb r0, [r7,#9]
	cmp r0, r1
	bne loc_80A52CE
	ldrh r0, [r7,#2]
	mov r0, r0
	bl SetEventFlag
	mov r0, #0x10
	strb r0, [r5,#8]
	b loc_80A52DA
loc_80A52CE:
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #8
	strb r0, [r5,#8]
loc_80A52DA:
	bl sprite_update
	pop {pc}
	.balign 4, 0
dword_80A52E0: .word 0xFFFF
	thumb_func_end sub_80A5268

	thumb_local_start
sub_80A52E4:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A52FC
	ldrh r0, [r7,#2]
	mov r0, r0
	bl SetEventFlag
	mov r0, #0x10
	strb r0, [r5,#8]
loc_80A52FC:
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A52E4

	thumb_local_start
sub_80A5304:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A531E
	ldrh r0, [r7,#2]
	mov r0, r0
	bl SetEventFlag
	mov r0, #0x10
	strb r0, [r5,#8]
	b loc_80A5346
loc_80A531E:
	ldr r1, [r5,#0x24]
	add r1, #1
	str r1, [r5,#0x24]
	cmp r1, #0x32 
	bne loc_80A5330
	ldr r0, off_80A534C // =0x14c 
	bl PlaySoundEffect
	b loc_80A5346
loc_80A5330:
	cmp r1, #0x4a 
	bne loc_80A533C
	mov r0, #0xe6
	bl PlaySoundEffect
	b loc_80A5346
loc_80A533C:
	cmp r1, #0x5d 
	bne loc_80A5346
	mov r0, #0x99
	bl PlaySoundEffect
loc_80A5346:
	bl sprite_update
	pop {pc}
	.balign 4, 0
off_80A534C: .word 0x14C
	thumb_func_end sub_80A5304

	thumb_local_start
sub_80A5350:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	.balign 4, 0
byte_80A5358: .byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
	.byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
	.byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
	.byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
byte_80A5384: .byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
	.byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
	.byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
	.byte 0x1C, 0xC, 0x0, 0x0, 0x1C, 0xC, 0x0, 0x0
byte_80A53B0: .byte 0x20, 0xFF, 0x10, 0xFF, 0x20, 0xFF, 0x90, 0xFF, 0x20
	.byte 0xFF, 0x10, 0x0, 0xA0, 0xFF, 0x10, 0x0, 0xA0, 0xFF
	.byte 0x90, 0x0, 0xA0, 0xFF, 0x10, 0x1, 0x20, 0x0, 0x10
	.byte 0xFF, 0x20, 0x0, 0x90, 0xFF, 0xA0, 0x0, 0x90, 0xFF
	.byte 0xA0, 0x0, 0x90, 0x0, 0x20, 0x1, 0x90, 0xFF
byte_80A53DC: .byte 0xA0, 0xFE, 0x30, 0xFF, 0xA0, 0xFE, 0x30, 0x0, 0x20
	.byte 0xFF, 0xB0, 0x0, 0xA0, 0xFF, 0xB0, 0xFE, 0xA0, 0xFF
	.byte 0x30, 0xFF, 0xA0, 0xFF, 0x30, 0x0, 0xA0, 0xFF, 0x30
	.byte 0x1, 0x20, 0x0, 0x30, 0x0, 0xA0, 0x0, 0xD0, 0xFF
	.byte 0xA0, 0x0, 0xD0, 0x0, 0x20, 0x1, 0xB0, 0xFE
byte_80A5408: .byte 0x70, 0x1, 0x40, 0x0, 0xF0, 0x0, 0x40, 0xFF, 0xD0, 0x0, 0x40
	.byte 0x0, 0xF0, 0xFF, 0xE0, 0xFF, 0x10, 0x0, 0x0, 0x1, 0x10, 0xFF
	.byte 0x0, 0x1, 0xF0, 0xFE, 0x40, 0xFF, 0x90, 0xFE, 0x0, 0x0
	thumb_func_end sub_80A5350

	thumb_func_start sub_80A5428
sub_80A5428:
	push {lr}
	ldr r0, off_80A5438 // =off_80A543C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A5438: .word off_80A543C
off_80A543C: .word sub_80A5448+1
	.word sub_80A5494+1
	.word sub_80A549C+1
	thumb_func_end sub_80A5428

	thumb_local_start
sub_80A5448:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	bl sub_80A54A4
	mov r7, r0
	mov r4, r1
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r4,#2]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	mov r0, #0
	str r0, [r5,#0x14]
	mov r0, #0x80
	ldrb r1, [r7]
	ldrb r2, [r7,#1]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#2]
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #2
	bl sub_8002E14
	ldrb r0, [r7,#3]
	strb r0, [r5,#5]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A5494
	pop {r4-r7,pc}
	thumb_func_end sub_80A5448

	thumb_local_start
sub_80A5494:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A5494

	thumb_local_start
sub_80A549C:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A549C

	thumb_local_start
sub_80A54A4:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r0, [r4,#oGameState_MapGroup]
	cmp r0, #0x85
	bne loc_80A54B4
	mov r2, #2
	b loc_80A54B6
loc_80A54B4:
	ldrb r2, [r4,#oGameState_MapNumber]
loc_80A54B6:
	lsl r2, r2, #2
	ldrb r3, [r5,#4]
	mov r0, #4
	mul r3, r0
	ldr r4, off_80A54D0 // =off_80A54D8 
	ldr r0, [r4,r2]
	add r0, r0, r3
	ldr r4, off_80A54D4 // =off_80A54E4 
	ldr r1, [r4,r2]
	add r1, r1, r3
	b locret_80A54CC
locret_80A54CC:
	pop {r4,pc}
	.balign 4, 0
off_80A54D0: .word off_80A54D8
off_80A54D4: .word off_80A54E4
off_80A54D8: .word byte_80A5358
	.word byte_80A5384
	.word byte_80A5384
off_80A54E4: .word byte_80A53B0
	.word byte_80A53DC
	.word byte_80A5408
	thumb_func_end sub_80A54A4

	thumb_func_start sub_80A54F0
sub_80A54F0:
	push {lr}
	ldr r6, off_80A5510 // =unk_2013960 
	ldr r0, off_80A5500 // =off_80A5504 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A5500: .word off_80A5504
off_80A5504: .word sub_80A5514+1
	.word sub_80A5588+1
	.word sub_80A55CC+1
off_80A5510: .word unk_2013960
	thumb_func_end sub_80A54F0

	thumb_local_start
sub_80A5514:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #0x85
	bne loc_80A5528
	mov r2, #0x4e 
	b loc_80A552A
loc_80A5528:
	mov r2, #0xb
loc_80A552A:
	mov r0, #0x80
	mov r1, #0x1c
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r6,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	str r0, [r5,#0x24]
	str r1, [r5,#0x28]
	mov r0, #0
	strb r0, [r5,#5]
	strb r0, [r5,#6]
	mov r0, #0x12
	str r0, [r5,#0x2c]
	ldrb r0, [r6,#5]
	strb r0, [r5,#7]
	ldrb r1, [r5,#4]
	mov r2, #1
	and r1, r2
	bne loc_80A557A
	ldr r0, dword_80A568C // =0x17f 
	bl PlaySoundEffect
	ldrb r0, [r5,#4]
	cmp r0, #0
	bne loc_80A557A
	mov r0, #0xa
	strb r0, [r6,#0xf]
loc_80A557A:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A5588
	pop {r4-r7,pc}
	.word 0x17F
	thumb_func_end sub_80A5514

	thumb_local_start
sub_80A5588:
	push {lr}
	bl cutscene_checkOriginalCutsceneScriptPos_8036F40 // () -> zf
	bne locret_80A55CA
	bl cutscene_checkOriginalCutsceneScriptPos_8036F58
	bne locret_80A55CA
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_80A55CA
	bl sub_809E462
	bne locret_80A55CA
	bl sub_80A55D4
	mov r0, #4
	mov r1, #0xea
	bl TestEventFlagFromImmediate
	bne loc_80A55C6
	mov r0, #4
	mov r1, #0xeb
	bl TestEventFlagFromImmediate
	bne loc_80A55C6
	ldrb r0, [r6,#8]
	cmp r0, #2
	beq loc_80A55C6
	bl sub_80A5744
loc_80A55C6:
	bl sprite_update
locret_80A55CA:
	pop {pc}
	thumb_func_end sub_80A5588

	thumb_local_start
sub_80A55CC:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A55CC

	thumb_local_start
sub_80A55D4:
	push {r4-r7,lr}
	ldr r0, [r5,#0x2c]
	sub r0, #1
	str r0, [r5,#0x2c]
	bne loc_80A55E6
	mov r0, #0x12
	str r0, [r5,#0x2c]
	mov r0, #0
	strb r0, [r5,#6]
loc_80A55E6:
	ldrb r0, [r5,#6]
	cmp r0, #1
	beq locret_80A5674
	bl sub_80A5764
	mov r4, r0
	ldrb r3, [r5,#7]
	cmp r3, #0
	bne loc_80A5600
	ldr r0, [r5,#0xc]
	add r0, r0, r4
	str r0, [r5,#0xc]
	b loc_80A561E
loc_80A5600:
	cmp r3, #1
	bne loc_80A560C
	ldr r0, [r5,#0x10]
	add r0, r0, r4
	str r0, [r5,#0x10]
	b loc_80A561E
loc_80A560C:
	cmp r3, #2
	bne loc_80A5618
	ldr r0, [r5,#0xc]
	sub r0, r0, r4
	str r0, [r5,#0xc]
	b loc_80A561E
loc_80A5618:
	ldr r0, [r5,#0x10]
	sub r0, r0, r4
	str r0, [r5,#0x10]
loc_80A561E:
	bl sub_80A5690
	cmp r0, #1
	beq loc_80A5632
	mov r0, r5
	add r0, #0xc
	bl sub_8003694
	cmp r2, #0
	bne loc_80A5670
loc_80A5632:
	mov r0, #4
	mov r1, #0xeb
	bl TestEventFlagFromImmediate
	bne loc_80A5642
	ldrb r0, [r6,#8]
	cmp r0, #2
	bne loc_80A5648
loc_80A5642:
	mov r0, #8
	strb r0, [r5,#8]
	b locret_80A5674
loc_80A5648:
	ldrb r0, [r5,#5]
	cmp r0, #0
	beq locret_80A5674
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	mov r0, #0
	strb r0, [r5,#5]
	mov r0, #1
	strb r0, [r5,#6]
	ldrb r0, [r6,#0xf]
	cmp r0, #0
	bne locret_80A5674
	ldr r0, dword_80A568C // =0x17f 
	bl PlaySoundEffect
	mov r0, #0xa
	strb r0, [r6,#0xf]
	b locret_80A5674
loc_80A5670:
	mov r0, #1
	strb r0, [r5,#5]
locret_80A5674:
	pop {r4-r7,pc}
	.balign 4, 0
	.word byte_80A567C
byte_80A567C: .byte 0x0, 0x0, 0xC, 0x0, 0x0, 0x20, 0xA, 0x0, 0x0, 0x0, 0xB, 0x0, 0x0, 0x80
	.byte 0xA, 0x0
dword_80A568C: .word 0x17F
	thumb_func_end sub_80A55D4

	thumb_local_start
sub_80A5690:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_80A56A0
	mov r0, #2
	b loc_80A56A2
loc_80A56A0:
	ldrb r0, [r0,#5]
loc_80A56A2:
	mov r2, r0
	lsl r0, r0, #2
	ldr r4, off_80A570C // =off_80A5714 
	ldr r4, [r4,r0]
	ldr r1, off_80A5710 // =dword_80A5720
	ldrb r1, [r1,r2]
	strb r1, [r5,#6]
	mov r7, #0
loc_80A56B2:
	mov r0, r7
	mov r1, #4
	mul r1, r0
	add r1, r1, r4
	mov r2, #0
	ldrsh r0, [r1,r2]
	sub r0, #8
	lsl r0, r0, #0x10
	mov r2, #2
	ldrsh r1, [r1,r2]
	add r1, #8
	lsl r1, r1, #0x10
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	cmp r0, r2
	blt loc_80A56D6
	sub r0, r0, r2
	b loc_80A56D8
loc_80A56D6:
	sub r0, r2, r0
loc_80A56D8:
	cmp r1, r3
	blt loc_80A56E0
	sub r1, r1, r3
	b loc_80A56E2
loc_80A56E0:
	sub r1, r3, r1
loc_80A56E2:
	push {r0,r1}
	bl sub_80A5724
	mov r2, r0
	mov r3, r1
	pop {r0,r1}
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	cmp r0, r2
	bgt loc_80A56FE
	cmp r1, r3
	bgt loc_80A56FE
	mov r0, #1
	b locret_80A5708
loc_80A56FE:
	add r7, #1
	ldrb r0, [r5,#6]
	cmp r7, r0
	blt loc_80A56B2
	mov r0, #0
locret_80A5708:
	pop {r4-r7,pc}
	.balign 4, 0
off_80A570C: .word off_80A5714
off_80A5710: .word dword_80A5720
off_80A5714: .word byte_80A53B0
	.word byte_80A53DC
	.word byte_80A5408
dword_80A5720: .word 0x80B0B
	thumb_func_end sub_80A5690

	thumb_local_start
sub_80A5724:
	push {r4,lr}
	ldrb r3, [r6,#5]
	ldr r2, off_80A5734 // =dword_80A573C
	ldrb r0, [r2,r3]
	ldr r2, off_80A5738 // =dword_80A5740
	ldrb r1, [r2,r3]
	pop {r4,pc}
	.balign 4, 0
off_80A5734: .word dword_80A573C
off_80A5738: .word dword_80A5740
dword_80A573C: .word 0x180C200C
dword_80A5740: .word 0xC200C20
	thumb_func_end sub_80A5724

	thumb_local_start
sub_80A5744:
	push {r4,lr}
	ldrb r0, [r5,#5]
	cmp r0, #0
	beq locret_80A5760
	bl reqBBS_81409E4
	sub r0, #0xc0
	ldrb r1, [r6,#5]
	cmp r0, r1
	beq locret_80A5760
	mov r0, #4
	mov r1, #0xea
	bl SetEventFlagFromImmediate
locret_80A5760:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A5744

	thumb_local_start
sub_80A5764:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #0x85
	bne loc_80A5774
	ldr r7, off_80A5788 // =byte_80A579C
	b loc_80A5776
loc_80A5774:
	ldr r7, off_80A5784 // =byte_80A578C
loc_80A5776:
	mov r0, #4
	bl reqBBS_81409D0 // (int a1) -> int
	lsl r0, r0, #2
	ldr r0, [r7,r0]
	pop {r4-r7,pc}
	.balign 4, 0
off_80A5784: .word byte_80A578C
off_80A5788: .word byte_80A579C
byte_80A578C: .byte 0x0, 0x0, 0xC, 0x0, 0x0, 0x20, 0xA, 0x0, 0x0, 0x0, 0xB, 0x0, 0x0, 0x80
	.byte 0xA, 0x0
byte_80A579C: .byte 0x0, 0x0, 0x8, 0x0, 0x0, 0x20, 0x6, 0x0, 0x0, 0x0, 0x7, 0x0, 0x0, 0x80, 0x6
	.byte 0x0
	thumb_func_end sub_80A5764

	thumb_func_start sub_80A57AC
sub_80A57AC:
	push {lr}
	ldr r6, off_80A57CC // =unk_2011A90 
	ldr r0, off_80A57BC // =off_80A57C0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A57BC: .word off_80A57C0
off_80A57C0: .word sub_80A57D0+1
	.word sub_80A5828+1
	.word sub_80A5888+1
off_80A57CC: .word unk_2011A90
	thumb_func_end sub_80A57AC

	thumb_local_start
sub_80A57D0:
	push {r4-r7,lr}
	mov r0, #1
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x18
	mov r2, #0x3c 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	bl sub_80A5890
	mov r0, #0
	str r0, [r5,#0x30]
	strb r0, [r5,#6]
	strb r0, [r5,#9]
	mov r0, #1
	ldrb r0, [r5,#7]
	movflag EVENT_5F2
	bl TestEventFlagFromImmediate
	beq loc_80A581E
	bl sub_80A5A1C
loc_80A581E:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A5828
	pop {r4-r7,pc}
	thumb_func_end sub_80A57D0

	thumb_local_start
sub_80A5828:
	push {r4-r7,lr}
	ldrb r0, [r6,#7]
	cmp r0, #0
	beq loc_80A5870
	cmp r0, #3
	beq loc_80A5876
	cmp r0, #1
	bne loc_80A586A
	ldrb r4, [r5,#9]
	cmp r4, #0
	bne loc_80A5858
	mov r1, #0x88
	ldr r0, [r6,r1]
	str r0, [r5,#0xc]
	add r1, #4
	ldr r0, [r6,r1]
	str r0, [r5,#0x10]
	add r1, #4
	ldr r0, [r6,r1]
	str r0, [r5,#0x14]
	mov r0, #3
	strb r0, [r5]
	add r4, #1
	strb r4, [r5,#9]
loc_80A5858:
	bl sub_80A58E0
	cmp r0, #0
	bne loc_80A587E
	mov r0, #0
	strb r0, [r6,#7]
	mov r4, #0
	strb r4, [r5,#9]
	b loc_80A5870
loc_80A586A:
	bl sub_80A58AC
	b loc_80A587E
loc_80A5870:
	bl sub_80A5890
	b loc_80A587E
loc_80A5876:
	mov r0, #1
	strb r0, [r5]
	mov r0, #0
	strb r0, [r6,#7]
loc_80A587E:
	bl sub_80A5A5C
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A5828

	thumb_local_start
sub_80A5888:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A5888

	thumb_local_start
sub_80A5890:
	push {lr}
	mov r3, #0x7c 
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	bl sub_80A5974
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A5890

	thumb_local_start
sub_80A58AC:
	push {r4-r7,lr}
	mov r3, #0x88
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0x24]
	str r1, [r5,#0x28]
	str r2, [r5,#0x2c]
	ldr r0, dword_80A58DC // =0x10000 
	bl sub_80A58F4
	cmp r0, #1
	beq locret_80A58D8
	mov r0, #0
	strb r0, [r6,#7]
	bl sub_80A5954
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
locret_80A58D8:
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A58DC: .word 0x10000
	thumb_func_end sub_80A58AC

	thumb_local_start
sub_80A58E0:
	push {r4-r7,lr}
	mov r4, #0
	bl sub_80A5954
	bl sub_80A596C
	bl sub_80A59B8
	mov r2, r0
	b loc_80A58FA
	thumb_func_end sub_80A58E0

	thumb_local_start
sub_80A58F4:
	push {r4-r7,lr}
	mov r4, #0
	mov r2, r0
loc_80A58FA:
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x24]
	cmp r0, r1
	beq loc_80A591E
	bgt loc_80A5910
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A591E
	add r0, r0, r2
	mov r4, #1
	b loc_80A591A
loc_80A5910:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A591E
	sub r0, r0, r2
	mov r4, #1
loc_80A591A:
	str r0, [r5,#0xc]
	strb r4, [r5,#6]
loc_80A591E:
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0x28]
	cmp r0, r1
	beq loc_80A594E
	bgt loc_80A5934
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A594E
	add r0, r0, r2
	mov r4, #1
	b loc_80A593E
loc_80A5934:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A594E
	sub r0, r0, r2
	mov r4, #1
loc_80A593E:
	str r0, [r5,#0x10]
	mov r0, #0xc
	add r0, r0, r5
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	str r0, [r5,#0x20]
loc_80A594E:
	mov r0, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A58F4

	thumb_local_start
sub_80A5954:
	push {lr}
	mov r3, #0x7c 
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0x24]
	str r1, [r5,#0x28]
	str r2, [r5,#0x2c]
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A5954

	thumb_local_start
sub_80A596C:
	push {r4,lr}
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	b loc_80A597A
	thumb_func_end sub_80A596C

	thumb_local_start
sub_80A5974:
	push {r4,lr}
	bl ReadOWPlayerObjectCoords
loc_80A597A:
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq locret_80A59AA
	b loc_80A598E
loc_80A598C:
	push {r4,lr}
loc_80A598E:
	mov r4, r0
	ldr r0, off_80A59AC // =byte_80A59B0
	ldrb r0, [r0,r4]
	mov r4, r0
	ldr r1, [r5,#0x30]
	cmp r0, r1
	beq locret_80A59AA
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	str r4, [r5,#0x30]
locret_80A59AA:
	pop {r4,pc}
	.balign 4, 0
off_80A59AC: .word byte_80A59B0
byte_80A59B0: .byte 0x2, 0x2, 0x0, 0x6, 0x4, 0x0, 0x0, 0x0
	thumb_func_end sub_80A5974

	thumb_local_start
sub_80A59B8:
	push {r4,lr}
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl calcAngle_800117C
	mov r1, #0
	cmp r0, #0x20 
	beq loc_80A59D4
	cmp r0, #0xa0
	bne loc_80A59D6
loc_80A59D4:
	mov r1, #1
loc_80A59D6:
	lsl r1, r1, #2
	mov r4, r1
	mov r3, r10
	ldr r3, [r3,#oToolkit_JoypadPtr]
	ldrh r3, [r3]
	mov r2, #0xf
	and r3, r2
	cmp r3, #2
	beq loc_80A59FA
	movflag EVENT_1716
	bl TestEventFlagFromImmediate
	bne loc_80A59FA
	mov r1, r4
	ldr r0, off_80A5A04 // =byte_80A5A0C
	ldr r0, [r0,r1]
	b locret_80A5A02
loc_80A59FA:
	mov r1, r4
	ldr r0, off_80A5A08 // =byte_80A5A14
	ldr r0, [r0,r1]
	str r0, [r5,#0x34]
locret_80A5A02:
	pop {r4,pc}
	.balign 4, 0
off_80A5A04: .word byte_80A5A0C
off_80A5A08: .word byte_80A5A14
byte_80A5A0C: .byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x80, 0x0, 0x0
byte_80A5A14: .byte 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x1, 0x0
	thumb_func_end sub_80A59B8

	thumb_local_start
sub_80A5A1C:
	push {r4-r7,lr}
	ldr r7, off_80A5A68 // =byte_2000EC0 
	mov r3, #0xc8 // (dword_2000F88 - 0x2000ec0)
	ldr r0, [r7,r3]
	add r3, #4
	ldr r1, [r7,r3]
	add r3, #4
	ldr r2, [r7,r3]
	str r0, [r5,#0xc]
	str r0, [r5,#0x24]
	str r1, [r5,#0x10]
	str r1, [r5,#0x28]
	str r2, [r5,#0x14]
	str r2, [r5,#0x2c]
	bl ReadOWPlayerObjectCoords
	mov r4, #0xc8 // (dword_2000F88 - 0x2000ec0)
	ldr r2, [r7,r4]
	add r4, #4
	ldr r3, [r7,r4]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	bl loc_80A598C
	mov r0, #3
	strb r0, [r5]
	ldrb r0, [r7]
	strb r0, [r5,#9]
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A5A1C

	thumb_local_start
sub_80A5A5C:
	push {lr}
	ldr r1, off_80A5A68 // =byte_2000EC0 
	ldrb r0, [r5,#9]
	strb r0, [r1]
	pop {pc}
	.balign 4, 0x00
off_80A5A68: .word byte_2000EC0
byte_80A5A6C: .byte 0x4A, 0x1, 0x86, 0x0, 0x10, 0x0, 0x5, 0x0, 0xC8, 0x0, 0x46, 0x1
	.byte 0x10, 0x0, 0x5, 0x1, 0x8, 0xFF, 0xE6, 0xFF, 0x10, 0x0, 0x3, 0x2
byte_80A5A84: .byte 0xA2, 0x0, 0x8C, 0x1, 0x10, 0x0, 0x5, 0x3, 0x62, 0xFF, 0x4E
	.byte 0xFF, 0x10, 0x0, 0x3, 0x4, 0xA2, 0x0, 0x4E, 0xFE, 0x10, 0x0
	.byte 0x3, 0x5
byte_80A5A9C: .byte 0xB2, 0x0, 0x8C, 0x1, 0x10, 0x0, 0x5, 0x6, 0x34, 0xFF, 0xAC
	.byte 0x1, 0x10, 0x0, 0x5, 0x7, 0xB2, 0xFE, 0x8E, 0xFF, 0x10, 0x0
	.byte 0x3, 0x8, 0x92, 0xFF, 0xE, 0xFE, 0x10, 0x0, 0x3, 0x9
byte_80A5ABC: .byte 0xB8, 0xFE, 0x68, 0x1, 0x10, 0x0, 0x3, 0x32, 0xD8, 0xFD
	.byte 0xA8, 0x0, 0x10, 0x0, 0x3, 0x33, 0x76, 0x0, 0xC8, 0xFD
	.byte 0x10, 0x0, 0x3, 0x34
	thumb_func_end sub_80A5A5C

	thumb_func_start sub_80A5AD4
sub_80A5AD4:
	push {lr}
	ldr r6, off_80A5AF4 // =unk_2011A90 
	ldr r0, off_80A5AE4 // =off_80A5AE8 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A5AE4: .word off_80A5AE8
off_80A5AE8: .word sub_80A5AF8+1
	.word sub_80A5B70+1
	.word sub_80A5C6C+1
off_80A5AF4: .word unk_2011A90
	thumb_func_end sub_80A5AD4

	thumb_local_start
sub_80A5AF8:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	bl sub_80A5D0C
	cmp r0, #0
	beq locret_80A5B6C
	mov r4, r0
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r4,#2]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	ldrh r0, [r4,#4]
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, #0x80
	mov r1, #0x18
	mov r2, #0x3c 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrh r0, [r4,#6]
	strb r0, [r5,#5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r5,#0x34]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	ldrb r0, [r4,#7]
	strb r0, [r5,#6]
	mov r0, #1
	strb r0, [r5,#7]
	mov r0, #0
	str r0, [r5,#0x24]
	bl sub_80A5F84
	movflag EVENT_5F2
	bl TestEventFlagFromImmediate
	beq loc_80A5B64
	bl sub_80A5FD0
loc_80A5B64:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A5B70
locret_80A5B6C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_80A5AF8

	thumb_local_start
sub_80A5B70:
	push {r4-r7,lr}
	ldrb r4, [r6,#5]
	cmp r4, #0
	beq loc_80A5B82
	cmp r4, #3
	beq loc_80A5C5E
	ldr r0, [r5,#0x24]
	cmp r0, #1
	beq loc_80A5C22
loc_80A5B82:
	ldrb r0, [r5,#7]
	cmp r0, #0
	beq loc_80A5C62
	ldrb r7, [r5,#9]
	cmp r7, #0
	bgt loc_80A5BB0
	bl sub_80A5C74
	cmp r0, #0
	beq loc_80A5C62
	ldr r0, [r5,#0x24]
	cmp r0, #0
	beq loc_80A5C62
	movflag EVENT_PET_DISABLED
	bl SetEventFlagFromImmediate
	movflag EVENT_L_MESSAGE_ACTIVE
	bl SetEventFlagFromImmediate
	add r7, #1
	strb r7, [r5,#9]
loc_80A5BB0:
	bl sub_80A5C9C
	cmp r0, #1
	beq loc_80A5BDA
	cmp r0, #2
	beq loc_80A5C62
	bl sub_80A5CF0
	mov r0, #0
	str r0, [r5,#0x24]
	mov r7, #0
	strb r7, [r5,#9]
	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate
	movflag EVENT_L_MESSAGE_ACTIVE
	bl ClearEventFlagFromImmediate
	b loc_80A5C62
loc_80A5BDA:
	mov r7, #0
	strb r7, [r5,#9]
	ldrb r0, [r6,#6]
	strb r0, [r6,#8]
	ldrb r0, [r5,#6]
	strb r0, [r6,#6]
	add r0, #1
	strb r0, [r6,#0xd]
	mov r1, #0x88
	ldr r0, [r5,#0xc]
	str r0, [r6,r1]
	add r1, #4
	ldr r0, [r5,#0x10]
	str r0, [r6,r1]
	add r1, #4
	ldr r0, [r5,#0x14]
	str r0, [r6,r1]
	movflag EVENT_5F2
	bl TestEventFlagFromImmediate
	bne loc_80A5C18
	movflag EVENT_5F3
	bl SetEventFlagFromImmediate
	bl sub_80A5E8C
	bl reqBBS_setFlag_e17b0f7_8140A00
	b loc_80A5C62
loc_80A5C18:
	movflag EVENT_5F4
	bl SetEventFlagFromImmediate
	b loc_80A5C62
loc_80A5C22:
	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate
	movflag EVENT_L_MESSAGE_ACTIVE
	bl ClearEventFlagFromImmediate
	cmp r4, #1
	bne loc_80A5C48
	mov r0, #1
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#7]
	mov r0, #0
	strb r0, [r6,#5]
	mov r0, #0
	str r0, [r5,#0x24]
	b loc_80A5C62
loc_80A5C48:
	cmp r4, #2
	bne loc_80A5C62
	bl sub_80A5D48
	cmp r0, #1
	beq loc_80A5C62
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #0
	strb r0, [r6,#5]
	b loc_80A5C62
loc_80A5C5E:
	bl sub_80A5EC8
loc_80A5C62:
	bl sub_80A6014
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A5B70

	thumb_local_start
sub_80A5C6C:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A5C6C

	thumb_local_start
sub_80A5C74:
	push {r4-r7,lr}
	mov r4, #0
	bl reqBBS_81409F4
	cmp r0, #0xc0
	blt loc_80A5C98
	mov r7, r0
	mov r0, #0xc
	add r0, r0, r5
	bl sub_8031A7A
	mov r1, r0
	mov r4, #0
	cmp r7, r1
	bne loc_80A5C98
	mov r4, #1
	str r4, [r5,#0x24]
	b loc_80A5C98
loc_80A5C98:
	mov r0, r4
	pop {r4-r7,pc}
	thumb_func_end sub_80A5C74

	thumb_local_start
sub_80A5C9C:
	push {r4-r7,lr}
	ldrb r4, [r5,#0xa]
	cmp r4, #0
	bgt loc_80A5CBE
	bl sub_80A5CE4
	bl owPlayer_lockPlayerForNonNPCDialogue_809E0B0 // () -> void
	bl sub_80A5E44
	mov r0, #0
	ldrb r1, [r5,#6]
	bl reqBBS_RunTextScriptWhoAmI
	add r4, #1
	strb r4, [r5,#0xa]
	b loc_80A5CDE
loc_80A5CBE:
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A5CDE
	bl chatbox_8045F4C
	mov r4, #0
	cmp r0, #0
	bne loc_80A5CD2
	mov r4, #1
loc_80A5CD2:
	mov r1, #0
	strb r1, [r5,#0xa]
	bl owPlayer_unlockPlayerAfterNonNPCDialogue_809E122
	mov r0, r4
	b locret_80A5CE0
loc_80A5CDE:
	mov r0, #2
locret_80A5CE0:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A5C9C

	thumb_local_start
sub_80A5CE4:
	push {r4-r7,lr}
	bl ReadOWPlayerObjectCoords
	bl sub_80A5E08
	pop {r4-r7,pc}
	thumb_func_end sub_80A5CE4

	thumb_local_start
sub_80A5CF0:
	push {r4,lr}
	ldrb r0, [r5,#5]
	ldr r1, [r5,#0x34]
	cmp r0, r1
	beq locret_80A5D0A
	mov r4, r0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	str r4, [r5,#0x34]
locret_80A5D0A:
	pop {r4,pc}
	thumb_func_end sub_80A5CF0

	thumb_local_start
sub_80A5D0C:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r0, [r4,#oGameState_MapGroup]
	cmp r0, #0x81
	beq loc_80A5D1C
	mov r2, #3
	b loc_80A5D1E
loc_80A5D1C:
	ldrb r2, [r4,#oGameState_MapNumber]
loc_80A5D1E:
	lsl r2, r2, #2
	ldrb r3, [r5,#4]
	mov r0, #8
	mul r3, r0
	ldr r4, off_80A5D34 // =off_80A5D38 
	ldr r0, [r4,r2]
	add r0, r0, r3
	b locret_80A5D30
	mov r0, #0
locret_80A5D30:
	pop {r4,pc}
	.balign 4, 0
off_80A5D34: .word off_80A5D38
off_80A5D38: .word byte_80A5A6C
	.word byte_80A5A84
	.word byte_80A5A9C
	.word byte_80A5ABC
	thumb_func_end sub_80A5D0C

	thumb_local_start
sub_80A5D48:
	push {r4-r7,lr}
	bl sub_80A5D80
	mov r1, r0
	mov r0, #1
	cmp r1, #0
	bne locret_80A5D7E
	mov r3, #0x88
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	ldrb r0, [r6,#8]
	strb r0, [r5,#6]
	ldrb r0, [r5,#5]
	str r0, [r5,#0x34]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
locret_80A5D7E:
	pop {r4-r7,pc}
	thumb_func_end sub_80A5D48

	thumb_local_start
sub_80A5D80:
	push {r4-r7,lr}
	bl sub_80A5DE8
	bl sub_80A5E00
	mov r4, #0
	ldr r2, dword_80A5DE4 // =0x10000 
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x28]
	cmp r0, r1
	beq loc_80A5DB0
	bgt loc_80A5DA4
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A5DB0
	add r0, r0, r2
	mov r4, #1
	b loc_80A5DAE
loc_80A5DA4:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A5DB0
	sub r0, r0, r2
	mov r4, #1
loc_80A5DAE:
	str r0, [r5,#0xc]
loc_80A5DB0:
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0x2c]
	cmp r0, r1
	beq loc_80A5DE0
	bgt loc_80A5DC6
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A5DE0
	add r0, r0, r2
	mov r4, #1
	b loc_80A5DD0
loc_80A5DC6:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A5DE0
	sub r0, r0, r2
	mov r4, #1
loc_80A5DD0:
	str r0, [r5,#0x10]
	mov r0, #0xc
	add r0, r0, r5
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	str r0, [r5,#0x20]
loc_80A5DE0:
	mov r0, r4
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A5DE4: .word 0x10000
	thumb_func_end sub_80A5D80

	thumb_local_start
sub_80A5DE8:
	push {lr}
	mov r3, #0x7c 
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0x28]
	str r1, [r5,#0x2c]
	str r2, [r5,#0x30]
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_80A5DE8

	thumb_local_start
sub_80A5E00:
	push {r4,lr}
	ldr r0, [r5,#0x28]
	ldr r1, [r5,#0x2c]
	b loc_80A5E0A
	thumb_func_end sub_80A5E00

	thumb_local_start
sub_80A5E08:
	push {r4,lr}
loc_80A5E0A:
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq locret_80A5E36
	mov r4, r0
	ldr r0, off_80A5E38 // =byte_80A5E3C
	ldrb r0, [r0,r4]
	mov r4, r0
	ldr r1, [r5,#0x34]
	cmp r0, r1
	beq locret_80A5E36
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	str r4, [r5,#0x34]
locret_80A5E36:
	pop {r4,pc}
	.balign 4, 0
off_80A5E38: .word byte_80A5E3C
byte_80A5E3C: .byte 0x2, 0x2, 0x0, 0x6, 0x4, 0x0, 0x0, 0x0
	thumb_func_end sub_80A5E08

	thumb_local_start
sub_80A5E44:
	push {r4,lr}
	bl ReadOWPlayerObjectCoords
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq locret_80A5E70
	mov r4, r0
	ldr r0, off_80A5E74 // =byte_80A5E7C
	ldrb r0, [r0,r4]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	ldr r0, off_80A5E78 // =byte_80A5E84
	ldrb r0, [r0,r4]
	bl SetOWPlayerFacingDirection
locret_80A5E70:
	pop {r4,pc}
	.balign 4, 0
off_80A5E74: .word byte_80A5E7C
off_80A5E78: .word byte_80A5E84
byte_80A5E7C: .byte 0x3, 0x3, 0x1, 0x7, 0x5, 0x0, 0x0, 0x0
byte_80A5E84: .byte 0x3, 0x3, 0x1, 0x7, 0x5, 0x0, 0x0, 0x0
	thumb_func_end sub_80A5E44

	thumb_local_start
sub_80A5E8C:
	push {r4,lr}
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r1, off_80A5EB4 // =byte_80A5EB8
	ldr r0, [r1,r0]
	mov r0, r0
	bl SetEventFlag
	pop {r4,pc}
	.byte 0, 0
	thumb_func_end sub_80A5E8C

	thumb_local_start
sub_80A5EA0:
	push {r4,lr}
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r1, off_80A5EB4 // =byte_80A5EB8
	ldr r0, [r1,r0]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	pop {r4,pc}
	.balign 4, 0
off_80A5EB4: .word byte_80A5EB8
byte_80A5EB8: .byte 0x41, 0x16, 0x0, 0x0, 0x42, 0x16, 0x0, 0x0, 0x43, 0x16, 0x0
	.byte 0x0, 0x44, 0x16, 0x0, 0x0
	thumb_func_end sub_80A5EA0

	thumb_local_start
sub_80A5EC8:
	push {r4,lr}
	movflag EVENT_5F1
	bl TestEventFlagFromImmediate
	bne locret_80A5F46
	bl sub_80A5F84
	cmp r0, #0
	bne loc_80A5EE2
	bl sub_80A5E8C
	b locret_80A5F46
loc_80A5EE2:
	ldrb r0, [r5,#7]
	cmp r0, #0
	bne loc_80A5F3C
	ldrb r4, [r5,#0xb]
	cmp r4, #0
	bgt loc_80A5F12
	movflag EVENT_5E0
	bl SetEventFlagFromImmediate
	bl sub_80A5F68
	mov r0, #3
	strb r0, [r5]
	ldrb r0, [r5,#5]
	add r0, #0x19
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	add r4, #1
	strb r4, [r5,#0xb]
loc_80A5F12:
	movflag EVENT_5E0
	bl TestEventFlagFromImmediate
	bne locret_80A5F46
	ldrb r0, [r5,#5]
	str r0, [r5,#0x34]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r4, #0
	strb r4, [r5,#0xb]
	mov r0, #0
	strb r0, [r6,#5]
	mov r0, #1
	strb r0, [r5,#7]
	bl sub_80A5EA0
loc_80A5F3C:
	bl sub_80A5D0C
	mov r4, r0
	ldrb r0, [r4,#7]
	strb r0, [r5,#6]
locret_80A5F46:
	pop {r4,pc}
	thumb_func_end sub_80A5EC8

	thumb_local_start
sub_80A5F48:
	push {r4,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r2, [r0,#oGameState_MapGroup]
	cmp r2, #0x81
	beq loc_80A5F58
	mov r0, #0x3 // (byte_80A5F67 - 0x80a5f64)
	b loc_80A5F5A
loc_80A5F58:
	ldrb r0, [r0,#5]
loc_80A5F5A:
	ldr r1, off_80A5F60 // =byte_80A5F64 
	ldrb r0, [r1,r0]
	pop {r4,pc}
	.balign 4, 0
off_80A5F60: .word byte_80A5F64
byte_80A5F64: .byte 0x2, 0x2, 0x3
byte_80A5F67: .byte 0x2
	thumb_func_end sub_80A5F48

	thumb_local_start
sub_80A5F68:
	push {lr}
	push {r5}
	mov r0, #0x14
	ldr r1, [r5,#0xc]
	ldr r2, [r5,#0x10]
	ldr r3, [r5,#0x14]
	bl SpawnOverworldMapObject
	pop {r5}
	mov r0, #SOUND_LOG_OUT_76
	bl PlaySoundEffect
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A5F68

	thumb_local_start
sub_80A5F84:
	push {r4,lr}
	ldrb r0, [r5,#6]
	cmp r0, #0x32 
	blt loc_80A5F8E
	sub r0, #0x28 
loc_80A5F8E:
	lsl r0, r0, #1
	ldr r1, off_80A5FB0 // =byte_80A5FB4
	ldrh r2, [r1,r0]
	mov r4, #1
	mov r0, r2
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80A5FAA
	mov r0, #1
	strb r0, [r5]
	bl sub_80A5E8C
	mov r4, #0
	strb r4, [r5,#7]
loc_80A5FAA:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
off_80A5FB0: .word byte_80A5FB4
byte_80A5FB4: .byte 0xF5, 0x5, 0xF6, 0x5, 0xF7, 0x5, 0xF8, 0x5, 0xF9, 0x5, 0xFA
	.byte 0x5, 0xFB, 0x5, 0xFC, 0x5, 0xFD, 0x5, 0xFE, 0x5, 0xC2, 0xF
	.byte 0xC3, 0xF, 0xC4, 0xF, 0x0, 0x0
	thumb_func_end sub_80A5F84

	thumb_local_start
sub_80A5FD0:
	push {r4-r7,lr}
	ldr r7, off_80A604C // =byte_2000EC0 
	mov r1, #0xa
	ldrb r4, [r5,#4]
	add r1, r1, r4
	ldrb r0, [r7,r1]
	str r0, [r5,#0x24]
	mov r1, #0xe
	add r1, r1, r4
	ldrb r0, [r7,r1]
	strb r0, [r5,#7]
	cmp r0, #0
	bne loc_80A5FF2
	mov r0, #1
	strb r0, [r5]
	bl sub_80A5E8C
loc_80A5FF2:
	mov r1, #0x12
	add r1, r1, r4
	ldrb r0, [r7,r1]
	strb r0, [r5,#6]
	mov r0, #0xd4 // (dword_2000F94 - 0x2000ec0)
	ldr r2, [r7,r0]
	mov r1, #0x88
	str r2, [r6,r1]
	mov r1, #0xd8 // (dword_2000F98 - 0x2000ec0)
	ldr r2, [r7,r1]
	mov r0, #0x8c
	str r2, [r6,r0]
	mov r1, #0xdc // (dword_2000F9C - 0x2000ec0)
	ldr r2, [r7,r1]
	mov r0, #0x90
	str r2, [r6,r0]
	pop {r4-r7,pc}
	thumb_func_end sub_80A5FD0

	thumb_local_start
sub_80A6014:
	push {r4-r7,lr}
	ldr r7, off_80A604C // =byte_2000EC0 
	ldr r0, [r5,#0x24]
	mov r1, #0xa
	ldrb r4, [r5,#4]
	add r1, r1, r4
	strb r0, [r7,r1]
	ldrb r0, [r5,#7]
	mov r1, #0xe
	add r1, r1, r4
	strb r0, [r7,r1]
	ldrb r0, [r5,#6]
	mov r1, #0x12
	add r1, r1, r4
	strb r0, [r7,r1]
	mov r0, #0x88
	ldr r2, [r6,r0]
	mov r1, #0xd4 // (dword_2000F94 - 0x2000ec0)
	str r2, [r7,r1]
	mov r0, #0x8c
	ldr r2, [r6,r0]
	mov r1, #0xd8 // (dword_2000F98 - 0x2000ec0)
	str r2, [r7,r1]
	mov r0, #0x90
	ldr r2, [r6,r0]
	mov r1, #0xdc // (dword_2000F9C - 0x2000ec0)
	str r2, [r7,r1]
	pop {r4-r7,pc}
off_80A604C: .word byte_2000EC0
PtrTable_80A6050: .word byte_80A61BC
	.word byte_80A6224
	.word byte_80A628C
	.word byte_80A62F4
	.word byte_80A635C
	.word byte_80A63C4
	.word byte_80A61D8
	.word byte_80A6240
	.word byte_80A62A8
	.word byte_80A6310
	.word byte_80A6378
	.word byte_80A63E0
	.word byte_80A61FC
	.word byte_80A6264
	.word byte_80A62CC
	.word byte_80A6334
	.word byte_80A639C
	.word byte_80A6404
	.word byte_80A642C
	.word byte_80A6512
	.word byte_80A6436
	.word byte_80A651C
	.word byte_80A6440
	.word byte_80A6526
	.word byte_80A6458
	.word byte_80A6530
	.word byte_80A6462
	.word byte_80A646C
	.word byte_80A6476
	.word byte_80A6480
	.word byte_80A6544
	.word byte_80A654E
	.word byte_80A6558
	.word byte_80A6562
	.word byte_80A648A
	.word byte_80A64A2
	.word byte_80A64BA
	.word byte_80A64D2
	.word byte_80A656C
	.word byte_80A6576
	.word byte_80A6580
	.word byte_80A658A
	.word byte_80A64EA
	.word byte_80A64F4
	.word byte_80A64FE
	.word byte_80A6508
	.word byte_80A6594
	.word byte_80A65A8
	.word byte_80A65BC
	.word byte_80A65D0
	.word byte_80A65E4
	.word byte_80A65EE
	.word byte_80A65F8
	.word byte_80A6602
	.word byte_80A660C
	.word byte_80A6616
	.word byte_80A6620
	.word byte_80A662A
	.word byte_80A6634
	.word byte_80A663E
	.word byte_80A6648
	.word byte_80A6676
	.word byte_80A6694
	.word byte_80A66B2
	.word byte_80A66D0
	.word byte_80A66EE
	.word byte_80A6706
	.word byte_80A6710
	.word byte_80A671A
	.word byte_80A6724
	.word byte_80A672E
	.word byte_80A6738
	.word byte_80A674E
	.word byte_80A6766
	.word byte_80A677E
	.word byte_80A6796
	.word byte_80A67AE
	.word byte_80A67C2
	.word byte_80A67D6
	.word byte_80A67EA
	.word byte_80A67FE
	.word byte_80A6816
	.word byte_80A682E
off_80A619C: .word byte_80A6846
	.word byte_80A6874
	.word byte_80A6898
	.word byte_80A68CC
	.word byte_80A691E
	.word byte_80A69AC
	.word byte_80A69E0
	.word byte_80A69EA
byte_80A61BC: .byte 0x3C, 0x0, 0x95, 0x1, 0x8, 0x0, 0x18, 0x0, 0x22, 0xFF, 0x10
	.byte 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0x22, 0xFF
	.byte 0x18, 0x0, 0x40, 0x0, 0x48, 0x0
byte_80A61D8: .byte 0x8, 0x0, 0x18, 0x0, 0x22, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x78, 0x0
	.byte 0x3C, 0x0, 0x96, 0x1, 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x18, 0x0
	.byte 0xEE, 0xFE, 0x2B, 0x0, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A61FC: .byte 0x8, 0x0, 0xC0, 0xFF, 0x2, 0x0, 0x1C, 0x0, 0x20, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x14, 0x0, 0x3C, 0x0, 0x5, 0x1, 0x20, 0x0, 0x2, 0x0, 0x28, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0xF4, 0xFF, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48
	.byte 0x0
byte_80A6224: .byte 0x3C, 0x0, 0x95, 0x1, 0x8, 0x0, 0x32, 0x0, 0x26, 0xFF, 0x10
	.byte 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x32, 0x0, 0x26, 0xFF
	.byte 0x18, 0x0, 0x40, 0x0, 0x48, 0x0
byte_80A6240: .byte 0x8, 0x0, 0x32, 0x0, 0x26, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x88, 0x0
	.byte 0x3C, 0x0, 0x96, 0x1, 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1C, 0x0
	.byte 0xEE, 0xFE, 0x28, 0x0, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A6264: .byte 0x8, 0x0, 0xC2, 0xFF, 0x4, 0x0, 0x1C, 0x0, 0x20, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x14, 0x0, 0x3C, 0x0, 0x5, 0x1, 0x20, 0x0, 0x2, 0x0, 0x28, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0xF4, 0xFF, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48
	.byte 0x0
byte_80A628C: .byte 0x3C, 0x0, 0x95, 0x1, 0x8, 0x0, 0x3A, 0x0, 0x36, 0xFF, 0x10
	.byte 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3A, 0x0, 0x36, 0xFF
	.byte 0x18, 0x0, 0x40, 0x0, 0x48, 0x0
byte_80A62A8: .byte 0x8, 0x0, 0x3A, 0x0, 0x36, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x80, 0x0
	.byte 0x3C, 0x0, 0x96, 0x1, 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1B, 0x0
	.byte 0xEE, 0xFE, 0x2A, 0x0, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A62CC: .byte 0x8, 0x0, 0xC1, 0xFF, 0x0, 0x0, 0x1C, 0x0, 0x20, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x14, 0x0, 0x3C, 0x0, 0x5, 0x1, 0x20, 0x0, 0x2, 0x0, 0x28, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0xF4, 0xFF, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48
	.byte 0x0
byte_80A62F4: .byte 0x3C, 0x0, 0x95, 0x1, 0x8, 0x0, 0xFC, 0xFF, 0x2C, 0xFF, 0x10
	.byte 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFC, 0xFF, 0x2C, 0xFF
	.byte 0x18, 0x0, 0x40, 0x0, 0x48, 0x0
byte_80A6310: .byte 0x8, 0x0, 0xFC, 0xFF, 0x2C, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x8C
	.byte 0x0, 0x3C, 0x0, 0x96, 0x1, 0x20, 0x0, 0x1, 0x0, 0x0, 0x0
	.byte 0x1A, 0x0, 0xEE, 0xFE, 0x2B, 0x0, 0x10, 0x0, 0x38, 0x0, 0x1C
	.byte 0x0, 0x48, 0x0
byte_80A6334: .byte 0x8, 0x0, 0xC2, 0xFF, 0x3, 0x0, 0x1C, 0x0, 0x20, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x14, 0x0, 0x3C, 0x0, 0x5, 0x1, 0x20, 0x0, 0x2, 0x0, 0x28, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0xF4, 0xFF, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48
	.byte 0x0
byte_80A635C: .byte 0x3C, 0x0, 0x95, 0x1, 0x8, 0x0, 0x24, 0x0, 0x3E, 0xFF, 0x10
	.byte 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x24, 0x0, 0x3E, 0xFF
	.byte 0x18, 0x0, 0x40, 0x0, 0x48, 0x0
byte_80A6378: .byte 0x8, 0x0, 0x24, 0x0, 0x3E, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x92, 0x0
	.byte 0x3C, 0x0, 0x96, 0x1, 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x19, 0x0
	.byte 0xEE, 0xFE, 0x29, 0x0, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A639C: .byte 0x8, 0x0, 0xC0, 0xFF, 0x1, 0x0, 0x1C, 0x0, 0x20, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x14, 0x0, 0x3C, 0x0, 0x5, 0x1, 0x20, 0x0, 0x2, 0x0, 0x28, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0xF4, 0xFF, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48
	.byte 0x0
byte_80A63C4: .byte 0x3C, 0x0, 0x95, 0x1, 0x8, 0x0, 0xE, 0x0, 0x3C, 0xFF, 0x10, 0x0
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE, 0x0, 0x3C, 0xFF, 0x18, 0x0
	.byte 0x40, 0x0, 0x48, 0x0
byte_80A63E0: .byte 0x8, 0x0, 0xE, 0x0, 0x3C, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x98, 0x0, 0x3C
	.byte 0x0, 0x96, 0x1, 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1A, 0x0, 0xEE, 0xFE
	.byte 0x28, 0x0, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A6404: .byte 0x8, 0x0, 0xC0, 0xFF, 0x2, 0x0, 0x1C, 0x0, 0x20, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x14, 0x0, 0x3C, 0x0, 0x5, 0x1, 0x20, 0x0, 0x2, 0x0, 0x28, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0xF4, 0xFF, 0x10, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48
	.byte 0x0
byte_80A642C: .byte 0x8, 0x0, 0x4, 0x0, 0xF4, 0xFF, 0x0, 0x0, 0x48, 0x0
byte_80A6436: .byte 0x8, 0x0, 0x4, 0x0, 0xF4, 0xFF, 0x0, 0x0, 0x48, 0x0
byte_80A6440: .byte 0x8, 0x0, 0x4, 0x0, 0xF4, 0xFF, 0x0, 0x0, 0x20, 0x0, 0x3, 0x0, 0x0, 0x0
	.byte 0xCC, 0xFF, 0x8, 0x0, 0x18, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A6458: .byte 0x8, 0x0, 0x4, 0x0, 0xF4, 0xFF, 0x0, 0x0, 0x48, 0x0
byte_80A6462: .byte 0x8, 0x0, 0xF8, 0xFF, 0x4, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A646C: .byte 0x8, 0x0, 0xF8, 0xFF, 0xE4, 0xFF, 0x8, 0x0, 0x48, 0x0
byte_80A6476: .byte 0x8, 0x0, 0x14, 0x0, 0xDC, 0xFF, 0x18, 0x0, 0x48, 0x0
byte_80A6480: .byte 0x8, 0x0, 0x14, 0x0, 0x4, 0x0, 0x18, 0x0, 0x48, 0x0
byte_80A648A: .byte 0x8, 0x0, 0xF8, 0xFF, 0x4, 0x0, 0x4, 0x0, 0x20, 0x0, 0x3, 0x0, 0x0, 0x0
	.byte 0xCC, 0xFF, 0x8, 0x0, 0x18, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A64A2: .byte 0x8, 0x0, 0xF8, 0xFF, 0xE4, 0xFF, 0x8, 0x0, 0x20, 0x0, 0x3, 0x0
	.byte 0x0, 0x0, 0xCC, 0xFF, 0x8, 0x0, 0x18, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A64BA: .byte 0x8, 0x0, 0x14, 0x0, 0xDC, 0xFF, 0x18, 0x0, 0x20, 0x0, 0x3, 0x0
	.byte 0x0, 0x0, 0xCC, 0xFF, 0x8, 0x0, 0x18, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A64D2: .byte 0x8, 0x0, 0x14, 0x0, 0x4, 0x0, 0x18, 0x0, 0x20, 0x0, 0x3, 0x0, 0x0, 0x0
	.byte 0xCC, 0xFF, 0x8, 0x0, 0x18, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A64EA: .byte 0x8, 0x0, 0xF8, 0xFF, 0x4, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A64F4: .byte 0x8, 0x0, 0xF8, 0xFF, 0xE4, 0xFF, 0x8, 0x0, 0x48, 0x0
byte_80A64FE: .byte 0x8, 0x0, 0x14, 0x0, 0xDC, 0xFF, 0x18, 0x0, 0x48, 0x0
byte_80A6508: .byte 0x8, 0x0, 0x14, 0x0, 0x4, 0x0, 0x18, 0x0, 0x48, 0x0
byte_80A6512: .byte 0x8, 0x0, 0x4, 0x0, 0x20, 0x0, 0x0, 0x0, 0x48, 0x0
byte_80A651C: .byte 0x8, 0x0, 0x4, 0x0, 0x20, 0x0, 0x0, 0x0, 0x48, 0x0
byte_80A6526: .byte 0x8, 0x0, 0x4, 0x0, 0x20, 0x0, 0x0, 0x0, 0x48, 0x0
byte_80A6530: .byte 0x8, 0x0, 0x4, 0x0, 0x1C, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x8, 0x0, 0x0, 0x0
	.byte 0x80, 0x0, 0x48, 0x0
byte_80A6544: .byte 0x8, 0x0, 0xF8, 0xFF, 0x30, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A654E: .byte 0x8, 0x0, 0xF8, 0xFF, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6558: .byte 0x8, 0x0, 0x14, 0x0, 0x8, 0x0, 0x14, 0x0, 0x48, 0x0
byte_80A6562: .byte 0x8, 0x0, 0x14, 0x0, 0x30, 0x0, 0x18, 0x0, 0x48, 0x0
byte_80A656C: .byte 0x8, 0x0, 0xF8, 0xFF, 0x30, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6576: .byte 0x8, 0x0, 0xF8, 0xFF, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6580: .byte 0x8, 0x0, 0x14, 0x0, 0x8, 0x0, 0x14, 0x0, 0x48, 0x0
byte_80A658A: .byte 0x8, 0x0, 0x14, 0x0, 0x30, 0x0, 0x18, 0x0, 0x48, 0x0
byte_80A6594: .byte 0x8, 0x0, 0xF8, 0xFF, 0x30, 0x0, 0x4, 0x0, 0x0, 0x0, 0xF8, 0xFF
	.byte 0x18, 0x0, 0x4, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A65A8: .byte 0x8, 0x0, 0xF8, 0xFF, 0x10, 0x0, 0x4, 0x0, 0x0, 0x0, 0xF8, 0xFF
	.byte 0xF8, 0xFF, 0x4, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A65BC: .byte 0x8, 0x0, 0x14, 0x0, 0x8, 0x0, 0x14, 0x0, 0x0, 0x0, 0x14, 0x0, 0xF0
	.byte 0xFF, 0x14, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A65D0: .byte 0x8, 0x0, 0x14, 0x0, 0x30, 0x0, 0x18, 0x0, 0x0, 0x0, 0x14, 0x0, 0x18
	.byte 0x0, 0x18, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A65E4: .byte 0x8, 0x0, 0x4, 0x0, 0x8, 0x0, 0x0, 0x0, 0x48, 0x0
byte_80A65EE: .byte 0x8, 0x0, 0xF8, 0xFF, 0x18, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A65F8: .byte 0x8, 0x0, 0xF8, 0xFF, 0xF8, 0xFF, 0x8, 0x0, 0x48, 0x0
byte_80A6602: .byte 0x8, 0x0, 0x14, 0x0, 0xF0, 0xFF, 0x18, 0x0, 0x48, 0x0
byte_80A660C: .byte 0x8, 0x0, 0x14, 0x0, 0x18, 0x0, 0x18, 0x0, 0x48, 0x0
byte_80A6616: .byte 0x8, 0x0, 0x38, 0x1, 0x68, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6620: .byte 0x8, 0x0, 0x2C, 0x1, 0x78, 0x0, 0x8, 0x0, 0x48, 0x0
byte_80A662A: .byte 0x8, 0x0, 0x2C, 0x1, 0x58, 0x0, 0xC, 0x0, 0x48, 0x0
byte_80A6634: .byte 0x8, 0x0, 0x48, 0x1, 0x50, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A663E: .byte 0x8, 0x0, 0x48, 0x1, 0x78, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A6648: .byte 0x8, 0x0, 0x38, 0x1, 0x68, 0x0, 0x4, 0x0, 0x20, 0x0, 0x6, 0x0, 0x0, 0x0
	.byte 0x30, 0x1, 0x68, 0x0, 0x4, 0x0, 0x40, 0x0, 0x24, 0x0, 0x4, 0x0, 0x14, 0x0
	.byte 0x20, 0x0, 0x6, 0x0, 0x0, 0x0, 0x28, 0x1, 0x64, 0x0, 0x4, 0x0, 0x40, 0x0
	.byte 0x24, 0x0, 0x48, 0x0
byte_80A6676: .byte 0x3C, 0x0, 0x61, 0x1, 0x8, 0x0, 0x2C, 0x1, 0x78, 0x0, 0x8, 0x0, 0x20
	.byte 0x0, 0x3, 0x0, 0x0, 0x0, 0xFC, 0x0, 0x64, 0x0, 0x8, 0x0, 0x80, 0x0
	.byte 0x38, 0x0, 0x48, 0x0
byte_80A6694: .byte 0x3C, 0x0, 0x61, 0x1, 0x8, 0x0, 0x2C, 0x1, 0x58, 0x0, 0xC, 0x0, 0x20
	.byte 0x0, 0x3, 0x0, 0x0, 0x0, 0xFC, 0x0, 0x64, 0x0, 0x8, 0x0, 0x80, 0x0
	.byte 0x38, 0x0, 0x48, 0x0
byte_80A66B2: .byte 0x3C, 0x0, 0x61, 0x1, 0x8, 0x0, 0x48, 0x1, 0x50, 0x0, 0x1C, 0x0
	.byte 0x20, 0x0, 0x3, 0x0, 0x0, 0x0, 0xFC, 0x0, 0x64, 0x0, 0x8, 0x0
	.byte 0x80, 0x0, 0x38, 0x0, 0x48, 0x0
byte_80A66D0: .byte 0x3C, 0x0, 0x61, 0x1, 0x8, 0x0, 0x48, 0x1, 0x78, 0x0, 0x1C, 0x0
	.byte 0x20, 0x0, 0x3, 0x0, 0x0, 0x0, 0xFC, 0x0, 0x64, 0x0, 0x8, 0x0
	.byte 0x80, 0x0, 0x38, 0x0, 0x48, 0x0
byte_80A66EE: .byte 0x8, 0x0, 0x28, 0x1, 0x64, 0x0, 0x4, 0x0, 0x20, 0x0, 0x4, 0x0, 0x0, 0x0
	.byte 0xA, 0x1, 0x64, 0x0, 0x4, 0x0, 0x80, 0x0, 0x48, 0x0
byte_80A6706: .byte 0x8, 0x0, 0x38, 0x1, 0x68, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6710: .byte 0x8, 0x0, 0x28, 0x1, 0x74, 0x0, 0x8, 0x0, 0x48, 0x0
byte_80A671A: .byte 0x8, 0x0, 0x48, 0x1, 0x74, 0x0, 0xC, 0x0, 0x48, 0x0
byte_80A6724: .byte 0x8, 0x0, 0x50, 0x1, 0x58, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A672E: .byte 0x8, 0x0, 0x28, 0x1, 0x58, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A6738: .byte 0xC, 0x0, 0x20, 0x0, 0x5, 0x0, 0x28, 0x0, 0x20, 0x0, 0x6, 0x0, 0xFD
	.byte 0xFF, 0x20, 0x0, 0x38, 0x0, 0x1C, 0x0, 0x48, 0x0
byte_80A674E: .byte 0x8, 0x0, 0x1A, 0x0, 0x26, 0x0, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x1A, 0x0, 0x26, 0x0, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6766: .byte 0x8, 0x0, 0x4C, 0x0, 0x16, 0x0, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x4C, 0x0, 0x16, 0x0, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A677E: .byte 0x8, 0x0, 0x26, 0x0, 0xFC, 0xFF, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0
	.byte 0x0, 0x26, 0x0, 0xFC, 0xFF, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6796: .byte 0x8, 0x0, 0x3E, 0x0, 0x42, 0x0, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x3E, 0x0, 0x42, 0x0, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A67AE: .byte 0x8, 0x0, 0x1A, 0x0, 0x26, 0x0, 0x10, 0x0, 0x0, 0x0, 0x30, 0x0, 0x1E
	.byte 0x0, 0x10, 0x0, 0x20, 0x0, 0x48, 0x0
byte_80A67C2: .byte 0x8, 0x0, 0x4C, 0x0, 0x16, 0x0, 0x10, 0x0, 0x0, 0x0, 0x3E, 0x0, 0x1C
	.byte 0x0, 0x10, 0x0, 0x20, 0x0, 0x48, 0x0
byte_80A67D6: .byte 0x8, 0x0, 0x26, 0x0, 0xFC, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x34, 0x0
	.byte 0x14, 0x0, 0x10, 0x0, 0x20, 0x0, 0x48, 0x0
byte_80A67EA: .byte 0x8, 0x0, 0x3E, 0x0, 0x42, 0x0, 0x10, 0x0, 0x0, 0x0, 0x38, 0x0, 0x24
	.byte 0x0, 0x10, 0x0, 0x20, 0x0, 0x48, 0x0
byte_80A67FE: .byte 0x8, 0x0, 0x2E, 0x0, 0x24, 0x0, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x2E, 0x0, 0x24, 0x0, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6816: .byte 0x8, 0x0, 0x2A, 0x0, 0x24, 0x0, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x2A, 0x0, 0x14, 0x0, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A682E: .byte 0x8, 0x0, 0x42, 0x0, 0x24, 0x0, 0x0, 0x0, 0x20, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x3C, 0x0, 0x2A, 0x0, 0x10, 0x0, 0x4, 0x0, 0x48, 0x0
byte_80A6846: .byte 0x18, 0x0, 0xC0, 0x0, 0xC0, 0x0, 0x4, 0x0, 0x4, 0x0, 0x18, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x4, 0x0, 0x4, 0x0, 0x18, 0x0, 0x38, 0x0, 0x38, 0x0
	.byte 0x4, 0x0, 0x4, 0x0, 0x18, 0x0, 0x40, 0x0, 0x40, 0x0, 0x4, 0x0, 0x4
	.byte 0x0, 0x1C, 0x0, 0x30, 0x0, 0x24, 0x0
byte_80A6874: .byte 0x4, 0x0, 0xA, 0x0, 0x18, 0x0, 0x60, 0x0, 0x60, 0x0, 0x4, 0x0, 0x2, 0x0
	.byte 0x18, 0x0, 0xA0, 0x0, 0xA0, 0x0, 0x4, 0x0, 0x2, 0x0, 0x18, 0x0, 0xE0, 0x0
	.byte 0xE0, 0x0, 0x4, 0x0, 0x2, 0x0, 0x24, 0x0
byte_80A6898: .byte 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x60, 0x0, 0x60, 0x0, 0x4, 0x0, 0x2, 0x0
	.byte 0x18, 0x0, 0x80, 0x0, 0x80, 0x0, 0x4, 0x0, 0x2, 0x0, 0x18, 0x0, 0xA0, 0x0
	.byte 0xA0, 0x0, 0x4, 0x0, 0x2, 0x0, 0x18, 0x0, 0xC0, 0x0, 0xC0, 0x0, 0x4, 0x0
	.byte 0x2, 0x0, 0x18, 0x0, 0xE0, 0x0, 0xE0, 0x0, 0x24, 0x0
byte_80A68CC: .byte 0x4, 0x0, 0x14, 0x0, 0x18, 0x0, 0x44, 0x0, 0x44, 0x0, 0x4, 0x0, 0x8
	.byte 0x0, 0x18, 0x0, 0x48, 0x0, 0x48, 0x0, 0x4, 0x0, 0x8, 0x0, 0x18, 0x0
	.byte 0x4C, 0x0, 0x4C, 0x0, 0x4, 0x0, 0x8, 0x0, 0x18, 0x0, 0x50, 0x0, 0x50
	.byte 0x0, 0x4, 0x0, 0x8, 0x0, 0x18, 0x0, 0x54, 0x0, 0x54, 0x0, 0x4, 0x0
	.byte 0x8, 0x0, 0x18, 0x0, 0x58, 0x0, 0x58, 0x0, 0x4, 0x0, 0x8, 0x0, 0x18
	.byte 0x0, 0x5C, 0x0, 0x5C, 0x0, 0x4, 0x0, 0x8, 0x0, 0x18, 0x0, 0x60, 0x0
	.byte 0x60, 0x0, 0x24, 0x0
byte_80A691E: .byte 0x4, 0x0, 0x14, 0x0, 0x18, 0x0, 0x44, 0x0, 0x44, 0x0, 0x4, 0x0, 0x6
	.byte 0x0, 0x18, 0x0, 0x48, 0x0, 0x48, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0
	.byte 0x4C, 0x0, 0x4C, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x50, 0x0, 0x50
	.byte 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x54, 0x0, 0x54, 0x0, 0x4, 0x0
	.byte 0x6, 0x0, 0x18, 0x0, 0x58, 0x0, 0x58, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18
	.byte 0x0, 0x5C, 0x0, 0x5C, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x60, 0x0
	.byte 0x60, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x64, 0x0, 0x64, 0x0, 0x4
	.byte 0x0, 0x6, 0x0, 0x18, 0x0, 0x68, 0x0, 0x68, 0x0, 0x4, 0x0, 0x6, 0x0
	.byte 0x18, 0x0, 0x6C, 0x0, 0x6C, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x70
	.byte 0x0, 0x70, 0x0, 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x74, 0x0, 0x74, 0x0
	.byte 0x4, 0x0, 0x6, 0x0, 0x18, 0x0, 0x78, 0x0, 0x78, 0x0, 0x24, 0x0
byte_80A69AC: .byte 0x4, 0x0, 0x3, 0x0, 0x18, 0x0, 0x50, 0x0, 0x50, 0x0, 0x4, 0x0, 0x3, 0x0
	.byte 0x18, 0x0, 0x60, 0x0, 0x60, 0x0, 0x4, 0x0, 0x3, 0x0, 0x18, 0x0, 0x70, 0x0
	.byte 0x70, 0x0, 0x4, 0x0, 0x3, 0x0, 0x18, 0x0, 0x80, 0x0, 0x80, 0x0, 0x4, 0x0
	.byte 0x3, 0x0, 0x18, 0x0, 0x90, 0x0, 0x90, 0x0, 0x24, 0x0
byte_80A69E0: .byte 0x3C, 0x0, 0x6C, 0x1, 0x4, 0x0, 0x10, 0x0, 0x10, 0x0
byte_80A69EA: .byte 0x40, 0x0, 0x8, 0x0, 0x4, 0x0, 0x2, 0x0, 0x40, 0x0, 0xA, 0x0, 0x4, 0x0, 0x2
	.byte 0x0, 0x40, 0x0, 0xC, 0x0, 0x4, 0x0, 0x2, 0x0, 0x40, 0x0, 0xE, 0x0, 0x4, 0x0
	.byte 0x2, 0x0, 0x40, 0x0, 0x10, 0x0, 0x4, 0x0, 0x2, 0x0, 0x44, 0x0, 0x24, 0x0
	thumb_func_end sub_80A6014

	thumb_func_start sub_80A6A16
sub_80A6A16:
	push {lr}
	ldr r0, off_80A6A24 // =off_80A6A28
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_80A6A24: .word off_80A6A28
off_80A6A28: .word sub_80A6A34+1
	.word sub_80A6A62+1
	.word sub_80A6B08+1
	thumb_func_end sub_80A6A16

	thumb_local_start
sub_80A6A34:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	ldrb r1, [r5,#5]
	ldrb r2, [r5,#6]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#7]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r6, #0x24
	bl sub_80A6E50
	bl sub_80A6A62
	pop {pc}
	thumb_func_end sub_80A6A34

	thumb_local_start
sub_80A6A62:
	push {lr}
	mov r4, #9
	mov r6, #0x24
	mov r7, #0x3c
loc_80A6A6A:
	bl sub_80A6E78
	ldrh r0, [r0]
	ldr r1, off_80A6AB8 // =JumpTable_80A6ABC
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bne loc_80A6A6A
	mov r4, #0xa
	mov r6, #0x28
	mov r7, #0x3e
loc_80A6A80:
	bl sub_80A6E78
	tst r0, r0
	beq loc_80A6A94
	ldrh r0, [r0]
	ldr r1, off_80A6AB8 // =JumpTable_80A6ABC
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bne loc_80A6A80
loc_80A6A94:
	ldr r4, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	str r4, [r5,#0x14]
	bl sub_8002E14
	bl sprite_update
	pop {pc}
	.balign 4, 0
off_80A6AB8: .word JumpTable_80A6ABC
JumpTable_80A6ABC: .word sub_80A6B10+1
	.word sub_80A6CA4+1
	.word sub_80A6CD4+1
	.word sub_80A6CFC+1
	.word sub_80A6D38+1
	.word sub_80A6D42+1
	.word sub_80A6D5C+1
	.word sub_80A6D7A+1
	.word sub_80A6D8A+1
	.word sub_80A6DAC+1
	.word sub_80A6BD8+1
	.word sub_80A6DC6+1
	.word sub_80A6DDC+1
	.word sub_80A6DEC+1
	.word sub_80A6DFC+1
	.word sub_80A6E0C+1
	.word sub_80A6E22+1
	.word sub_80A6E3A+1
	.word sub_80A6E4A+1
	thumb_func_end sub_80A6A62

	thumb_local_start
sub_80A6B08:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A6B08

	thumb_local_start
sub_80A6B10:
	push {lr}
	ldrb r2, [r5,r4]
	cmp r2, #0
	bne loc_80A6B5C
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,r4]
	bl sub_80A6E78
	mov r2, #2
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x18]
	mov r2, #4
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x1c]
	mov r2, #6
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x20]
	ldrh r1, [r0,#8]
	strh r1, [r5,r7]
	mov r0, #0x40 
	lsl r0, r0, #8
	svc 6
	str r0, [r5,#0x38]
	mov r0, #0x40 
	lsl r0, r0, #8
	sub r0, r0, r1
	strh r0, [r5,r7]
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	ldr r2, [r5,#0x14]
	str r0, [r5,#0x2c]
	str r1, [r5,#0x30]
	str r2, [r5,#0x34]
	pop {r0-r3}
loc_80A6B5C:
	push {r0-r3}
	ldrh r3, [r5,r7]
	ldr r2, [r5,#0x38]
	sub r2, r3, r2
	ble loc_80A6BB6
	strh r2, [r5,r7]
	lsr r2, r2, #8
	mov r3, #0x40 
	sub r2, r3, r2
	lsl r2, r2, #1
	ldr r0, off_80A6BD4 // =math_sinTable 
	ldrsh r2, [r0,r2]
	ldr r0, [r5,#0x18]
	ldr r1, [r5,#0x2c]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r2
	push {r0}
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x30]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r2
	push {r0}
	ldr r0, [r5,#0x20]
	ldr r1, [r5,#0x34]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r2
	push {r0}
	pop {r2}
	ldr r3, [r5,#0x34]
	add r2, r2, r3
	pop {r1}
	ldr r3, [r5,#0x30]
	add r1, r1, r3
	pop {r0}
	ldr r3, [r5,#0x2c]
	add r0, r0, r3
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	pop {r0-r3}
	mov r0, #0
	pop {pc}
loc_80A6BB6:
	ldr r0, [r5,#0x18]
	ldr r1, [r5,#0x1c]
	ldr r2, [r5,#0x20]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	pop {r0-r3}
	mov r2, #0
	strb r2, [r5,r4]
	strh r2, [r5,r7]
	mov r0, #0xa
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	.balign 4, 0
off_80A6BD4: .word math_sinTable
	thumb_func_end sub_80A6B10

	thumb_local_start
sub_80A6BD8:
	push {lr}
	ldrb r2, [r5,r4]
	cmp r2, #0
	bne loc_80A6C3C
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,r4]
	bl sub_80A6E78
	mov r2, #2
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x18]
	mov r2, #4
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x1c]
	mov r2, #6
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0xe
	str r1, [r5,#0x20]
	ldrh r1, [r0,#8]
	strh r1, [r5,r7]
	mov r0, #0x40 
	lsl r0, r0, #8
	svc 6
	str r0, [r5,#0x38]
	mov r0, #0x40 
	lsl r0, r0, #8
	sub r0, r0, r1
	strh r0, [r5,r7]
	mov r0, #0
	str r0, [r5,#0x34]
	bl sub_80A6E78
	ldrh r1, [r0,#8]
	ldr r0, [r5,#0xc]
	ldr r2, [r5,#0x18]
	sub r0, r2, r0
	svc 6
	str r0, [r5,#0x2c]
	bl sub_80A6E78
	ldrh r1, [r0,#8]
	ldr r0, [r5,#0x10]
	ldr r2, [r5,#0x1c]
	sub r0, r2, r0
	svc 6
	str r0, [r5,#0x30]
	pop {r0-r3}
loc_80A6C3C:
	push {r0-r3}
	ldrh r3, [r5,r7]
	ldr r2, [r5,#0x38]
	sub r2, r3, r2
	ble loc_80A6C7E
	strh r2, [r5,r7]
	lsr r2, r2, #8
	mov r3, #0x40 
	sub r2, r3, r2
	lsr r2, r2, #1
	lsl r2, r2, #1
	ldr r0, off_80A6CA0 // =math_sinTable 
	ldrsh r2, [r0,r2]
	lsl r2, r2, #1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x2c]
	add r0, r0, r1
	str r0, [r5,#0xc]
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0x30]
	add r0, r0, r1
	str r0, [r5,#0x10]
	ldr r0, [r5,#0x34]
	ldr r1, [r5,#0x14]
	add r0, r0, r1
	str r0, [r5,#0x14]
	ldr r0, [r5,#0x34]
	ldr r1, [r5,#0x20]
	add r0, r0, r1
	str r0, [r5,#0x34]
	pop {r0-r3}
	mov r0, #0
	pop {pc}
loc_80A6C7E:
	ldr r0, [r5,#0x18]
	ldr r1, [r5,#0x1c]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	ldr r0, [r5,#0x34]
	ldr r1, [r5,#0x14]
	add r0, r0, r1
	str r0, [r5,#0x14]
	pop {r0-r3}
	mov r2, #0
	strb r2, [r5,r4]
	strh r2, [r5,r7]
	mov r0, #0xa
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	.balign 4, 0
off_80A6CA0: .word math_sinTable
	thumb_func_end sub_80A6BD8

	thumb_local_start
sub_80A6CA4:
	push {lr}
	ldrb r0, [r5,r4]
	tst r0, r0
	bne loc_80A6CB8
	mov r0, #1
	strb r0, [r5,r4]
	bl sub_80A6E78
	ldrh r0, [r0,#2]
	strh r0, [r5,r7]
loc_80A6CB8:
	ldrh r0, [r5,r7]
	sub r0, #1
	strh r0, [r5,r7]
	bge loc_80A6CD0
	mov r0, #0
	strb r0, [r5,r4]
	strh r0, [r5,r7]
	mov r0, #4
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
loc_80A6CD0:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80A6CA4

	thumb_local_start
sub_80A6CD4:
	push {lr}
	bl sub_80A6E78
	mov r2, #2
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0xc]
	mov r2, #4
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x10]
	mov r2, #6
	ldrsh r1, [r0,r2]
	lsl r1, r1, #0x10
	str r1, [r5,#0x14]
	mov r0, #8
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6CD4

	thumb_local_start
sub_80A6CFC:
	push {lr}
	push {r0}
	bl GetCurPETNavi // () -> u8
	ldr r2, dword_80A6D34 // =PETNaviToNPCSpriteTable
	ldrb r2, [r2,r0]
	mov r0, #0x80
	mov r1, #0x18
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_removeShadow
	bl ReadOWPlayerObjectCoords
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	pop {r0}
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	.balign 4, 0
dword_80A6D34: .word 0x809D328
	thumb_func_end sub_80A6CFC

	thumb_local_start
sub_80A6D38:
	push {lr}
	bl sub_80A6E50
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6D38

	thumb_local_start
sub_80A6D42:
	push {lr}
	bl sub_80A6E78
	ldrh r0, [r0,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #4
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6D42

	thumb_local_start
sub_80A6D5C:
	push {lr}
	bl sprite_makeScalable
	bl sub_80A6E78
	ldrh r2, [r0,#4]
	ldrh r1, [r0,#2]
	mov r0, #0
	bl sprite_setScaleParameters
	mov r0, #6
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6D5C

	thumb_local_start
sub_80A6D7A:
	push {lr}
	bl sprite_makeUnscalable
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6D7A

	thumb_local_start
sub_80A6D8A:
	push {lr}
	bl sub_80A6E78
	ldrh r0, [r0,#2]
	strb r0, [r5,#5]
	ldr r1, off_80A6DA8 // =off_80A619C
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0x28]
	mov r0, #4
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	.balign 4, 0
off_80A6DA8: .word off_80A619C
	thumb_func_end sub_80A6D8A

	thumb_local_start
sub_80A6DAC:
	push {lr}
	mov r0, #0
	strb r0, [r5,#5]
	str r0, [r5,#0x28]
	cmp r6, #0x24 
	bne loc_80A6DC2
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
loc_80A6DC2:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80A6DAC

	thumb_local_start
sub_80A6DC6:
	push {lr}
	bl sub_80A6E78
	ldrh r0, [r0,#2]
	bl sprite_setAlpha_8002c7a
	mov r0, #4
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6DC6

	thumb_local_start
sub_80A6DDC:
	push {lr}
	bl sprite_disableAlpha
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6DDC

	thumb_local_start
sub_80A6DEC:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6DEC

	thumb_local_start
sub_80A6DFC:
	push {lr}
	mov r0, #1
	strb r0, [r5]
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6DFC

	thumb_local_start
sub_80A6E0C:
	push {lr}
	bl sub_80A6E78
	ldrh r0, [r0,#2]
	bl PlaySoundEffect
	mov r0, #4
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6E0C

	thumb_local_start
sub_80A6E22:
	push {lr}
	bl sub_80A6E78
	ldrb r0, [r0,#2]
	mov r1, r0
	bl sprite_setMosaicSize
	mov r0, #4
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6E22

	thumb_local_start
sub_80A6E3A:
	push {lr}
	bl sprite_clearMosaic
	mov r0, #2
	bl sub_80A6E70
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80A6E3A

	thumb_local_start
sub_80A6E4A:
	push {lr}
	mov r0, #0
	pop {pc}
	thumb_func_end sub_80A6E4A

	thumb_local_start
sub_80A6E50:
	cmp r6, #0x24 
	bne loc_80A6E5A
	ldrb r0, [r5,#4]
	ldr r1, off_80A6E68 // =PtrTable_80A6050
	b loc_80A6E5E
loc_80A6E5A:
	ldrb r0, [r5,#5]
	ldr r1, off_80A6E6C // =off_80A619C
loc_80A6E5E:
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,r6]
	mov pc, lr
	.balign 4, 0
off_80A6E68: .word PtrTable_80A6050
off_80A6E6C: .word off_80A619C
	thumb_func_end sub_80A6E50

	thumb_local_start
sub_80A6E70:
	ldr r1, [r5,r6]
	add r0, r0, r1
	str r0, [r5,r6]
	mov pc, lr
	thumb_func_end sub_80A6E70

	thumb_local_start
sub_80A6E78:
	ldr r0, [r5,r6]
	mov pc, lr
dword_80A6E7C: .word 0xFF4800E6
dword_80A6E80: .word 0xFFAE0044
byte_80A6E84: .byte 0x94, 0xFF, 0x8C, 0x0, 0x14, 0xFF, 0x8E, 0x0, 0x72, 0xFF
	.byte 0x6E, 0xFE
byte_80A6E90: .byte 0x78, 0x0, 0x26, 0xFE, 0x1A, 0x0, 0xE4, 0xFF
	thumb_func_end sub_80A6E78

	thumb_func_start sub_80A6E98
sub_80A6E98:
	push {lr}
	ldr r6, off_80A6EB8 // =unk_2011A90 
	ldr r0, off_80A6EA8 // =off_80A6EAC 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A6EA8: .word off_80A6EAC
off_80A6EAC: .word sub_80A6EBC+1
	.word sub_80A6F2C+1
	.word sub_80A6F70+1
off_80A6EB8: .word unk_2011A90
	thumb_func_end sub_80A6E98

	thumb_local_start
sub_80A6EBC:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x2f 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #1
	bl sprite_setPalette // (int pallete) -> void
	bl sub_80A70C0
	cmp r0, #0
	beq loc_80A6F66
	mov r4, r0
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r4,#2]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	mov r0, #0
	str r0, [r5,#0x14]
	mov r0, #0
	str r0, [r5,#0x2c]
	str r0, [r5,#0x34]
	strb r0, [r5,#6]
	mov r0, #0x11
	str r0, [r5,#0x38]
	movflag EVENT_5E5
	bl TestEventFlagFromImmediate
	beq loc_80A6F20
	bl sub_80A7208
loc_80A6F20:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A6F2C
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A6EBC

	thumb_local_start
sub_80A6F2C:
	push {r4-r7,lr}
	bl cutscene_checkOriginalCutsceneScriptPos_8036F40 // () -> zf
	bne loc_80A6F66
	bl cutscene_checkOriginalCutsceneScriptPos_8036F58
	bne loc_80A6F66
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A6F66
	ldrb r0, [r6,#9]
	cmp r0, #0
	beq loc_80A6F5E
	cmp r0, #1
	bne loc_80A6F5E
	ldr r0, [r5,#0x34]
	cmp r0, #0
	beq loc_80A6F58
	bl sub_80A7160
	b loc_80A6F66
loc_80A6F58:
	mov r0, #8
	strb r0, [r5,#8]
	b loc_80A6F66
loc_80A6F5E:
	bl sub_80A6F78
	bl sub_80A70FC
loc_80A6F66:
	bl sprite_update
	bl sub_80A7238
	pop {r4-r7,pc}
	thumb_func_end sub_80A6F2C

	thumb_local_start
sub_80A6F70:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A6F70

	thumb_local_start
sub_80A6F78:
	push {r4-r7,lr}
	bl sub_80A6FDC
	bl sub_80A704C
	bl sub_80A708C
	mov r2, r0
	mov r4, #0
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x24]
	cmp r0, r1
	beq loc_80A6FAC
	bgt loc_80A6FA0
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A6FAC
	add r0, r0, r2
	mov r4, #1
	b loc_80A6FAA
loc_80A6FA0:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A6FAC
	sub r0, r0, r2
	mov r4, #1
loc_80A6FAA:
	str r0, [r5,#0xc]
loc_80A6FAC:
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0x28]
	cmp r0, r1
	beq loc_80A6FCE
	bgt loc_80A6FC2
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A6FCE
	add r0, r0, r2
	mov r4, #1
	b loc_80A6FCC
loc_80A6FC2:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A6FCE
	sub r0, r0, r2
	mov r4, #1
loc_80A6FCC:
	str r0, [r5,#0x10]
loc_80A6FCE:
	cmp r4, #0
	bne locret_80A6FD8
	ldrb r0, [r5,#6]
	add r0, #1
	strb r0, [r5,#6]
locret_80A6FD8:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A6F78

	thumb_local_start
sub_80A6FDC:
	push {lr}
loc_80A6FDE:
	ldr r2, off_80A700C // =off_80A7010 
	ldrb r3, [r5,#5]
	lsl r3, r3, #2
	ldr r2, [r2,r3]
	ldrb r3, [r5,#4]
	lsl r3, r3, #2
	ldr r2, [r2,r3]
	ldrb r3, [r5,#6]
	lsl r3, r3, #2
	add r2, r2, r3
	ldrh r0, [r2]
	cmp r0, #0xff
	bne loc_80A6FFE
	mov r0, #0
	strb r0, [r5,#6]
	b loc_80A6FDE
loc_80A6FFE:
	ldrh r1, [r2,#2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	str r0, [r5,#0x24]
	str r1, [r5,#0x28]
	pop {pc}
	.balign 4, 0
off_80A700C: .word off_80A7010
off_80A7010: .word off_80A7020
	.word off_80A702C
	.word off_80A7038
	.word off_80A7044
off_80A7020: .word byte_8140C68
	.word byte_8140C7C
	.word byte_8140C90
off_80A702C: .word byte_8140CA4
	.word byte_8140CB8
	.word byte_8140CCC
off_80A7038: .word byte_8140CE0
	.word byte_8140CF4
	.word byte_8140D10
off_80A7044: .word byte_8140D1C
	.word byte_8140D58
	thumb_func_end sub_80A6FDC

	thumb_local_start
sub_80A704C:
	push {r4,lr}
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq locret_80A707E
	mov r4, r0
	ldr r0, off_80A7080 // =byte_80A7084
	ldrb r0, [r0,r4]
	mov r4, r0
	ldr r1, [r5,#0x2c]
	cmp r0, r1
	beq locret_80A707E
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	str r4, [r5,#0x2c]
locret_80A707E:
	pop {r4,pc}
	.balign 4, 0
off_80A7080: .word byte_80A7084
byte_80A7084: .byte 0x1, 0x1, 0x0, 0x3, 0x2, 0x0, 0x0, 0x0
	thumb_func_end sub_80A704C

	thumb_local_start
sub_80A708C:
	push {r4,lr}
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl calcAngle_800117C
	mov r1, #0
	cmp r0, #0x20 
	beq loc_80A70A8
	cmp r0, #0xa0
	bne loc_80A70AA
loc_80A70A8:
	mov r1, #1
loc_80A70AA:
	lsl r1, r1, #2
	ldr r0, off_80A70B4 // =byte_80A70B8
	ldr r0, [r0,r1]
	str r0, [r5,#0x30]
	pop {r4,pc}
	.balign 4, 0
off_80A70B4: .word byte_80A70B8
byte_80A70B8: .byte 0x0, 0xC0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0
	thumb_func_end sub_80A708C

	thumb_local_start
sub_80A70C0:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r0, [r4,#oGameState_MapGroup]
	cmp r0, #0x81
	beq loc_80A70D0
	mov r2, #3
	b loc_80A70D2
loc_80A70D0:
	ldrb r2, [r4,#oGameState_MapNumber]
loc_80A70D2:
	strb r2, [r5,#5]
	lsl r2, r2, #2
	ldrb r3, [r5,#4]
	mov r0, #4
	mul r3, r0
	ldr r4, off_80A70E8 // =off_80A70EC 
	ldr r0, [r4,r2]
	add r0, r0, r3
	b locret_80A70E6
	mov r0, #0
locret_80A70E6:
	pop {r4,pc}
	.balign 4, 0
off_80A70E8: .word off_80A70EC
off_80A70EC: .word dword_80A6E7C
	.word dword_80A6E80
	.word byte_80A6E84
	.word byte_80A6E90
	thumb_func_end sub_80A70C0

	thumb_local_start
sub_80A70FC:
	push {r4-r7,lr}
	movflag EVENT_5F1
	bl TestEventFlagFromImmediate
	bne locret_80A715C
	bl ReadOWPlayerObjectCoords
	cmp r2, #0
	bne loc_80A712E
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r4, #0x12
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne loc_80A712E
	mov r2, #0x7c 
	add r2, #8
	ldr r3, [r6,r2]
	cmp r3, #0
	beq loc_80A7150
loc_80A712E:
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r2, #0x7c 
	add r2, #8
	ldr r3, [r6,r2]
	cmp r3, #0
	bne locret_80A715C
	mov r4, #0x7c 
	ldr r2, [r6,r4]
	add r4, #4
	ldr r3, [r6,r4]
	mov r4, #0x12
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne locret_80A715C
loc_80A7150:
	movflag EVENT_5F1
	bl SetEventFlagFromImmediate
	mov r0, #1
	str r0, [r5,#0x34]
locret_80A715C:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A70FC

	thumb_local_start
sub_80A7160:
	push {r4-r7,lr}
	ldrb r4, [r5,#9]
	cmp r4, #0
	bgt loc_80A717E
	ldr r0, [r5,#0x2c]
	add r0, #0xa
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	add r4, #1
	strb r4, [r5,#9]
	b locret_80A71E8
loc_80A717E:
	cmp r4, #1
	bgt loc_80A7190
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_80A71E8
	add r4, #1
	strb r4, [r5,#9]
loc_80A7190:
	cmp r4, #2
	bgt loc_80A71C0
	mov r3, #0x7c 
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	mov r0, #9
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xe1
	bl PlaySoundEffect
	add r4, #1
	strb r4, [r5,#9]
	b locret_80A71E8
loc_80A71C0:
	mov r0, #3
	strb r0, [r6,#7]
	bl sub_80A71EC
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_80A71E8
	mov r0, #3
	strb r0, [r6,#5]
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0
	strb r0, [r5,#9]
	str r0, [r5,#0x34]
	mov r0, #2
	strb r0, [r6,#9]
	bl sub_80A6F70
locret_80A71E8:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A7160

	thumb_local_start
sub_80A71EC:
	push {r4-r7,lr}
	ldr r0, [r5,#0x38]
	cmp r0, #0
	beq locret_80A7204
	cmp r0, #1
	bne loc_80A71FE
	mov r0, #0xe2
	bl PlaySoundEffect
loc_80A71FE:
	sub r0, #1
	str r0, [r5,#0x38]
	b locret_80A7204
locret_80A7204:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A71EC

	thumb_local_start
sub_80A7208:
	push {r4-r7,lr}
	ldr r7, off_80A7268 // =byte_2000EC0 
	ldrb r0, [r7,#0x16] // (byte_2000ED6 - 0x2000ec0)
	strb r0, [r5,#5]
	ldrb r3, [r5,#4]
	mov r1, #0x17
	add r0, r1, r3
	ldrb r2, [r7,r0]
	strb r2, [r5,#6]
	mov r1, #0x26 
	add r0, r1, r3
	ldrb r2, [r7,r0]
	str r2, [r5,#0x34]
	mov r1, #0x2c 
	lsl r3, r3, #2
	add r1, r1, r3
	ldr r2, [r7,r1]
	str r2, [r5,#0xc]
	mov r1, #0x44 
	add r1, r1, r3
	ldr r2, [r7,r1]
	str r2, [r5,#0x10]
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A7208

	thumb_local_start
sub_80A7238:
	push {r4-r7,lr}
	ldr r7, off_80A7268 // =byte_2000EC0 
	ldrb r0, [r5,#5]
	strb r0, [r7,#0x16] // (byte_2000ED6 - 0x2000ec0)
	ldrb r3, [r5,#4]
	mov r1, #0x17
	add r0, r1, r3
	ldrb r2, [r5,#6]
	strb r2, [r7,r0]
	mov r1, #0x26 
	add r0, r1, r3
	ldr r2, [r5,#0x34]
	strb r2, [r7,r0]
	ldr r2, [r5,#0xc]
	mov r1, #0x2c 
	lsl r3, r3, #2
	add r1, r1, r3
	str r2, [r7,r1]
	ldr r2, [r5,#0x10]
	mov r1, #0x44 
	add r1, r1, r3
	str r2, [r7,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A7268: .word byte_2000EC0
byte_80A726C: .byte 0x9C, 0xFF, 0xC6, 0xFF, 0x0, 0x0, 0x0, 0xD, 0x5E, 0x0, 0xC6
	.byte 0x0, 0x2, 0x0, 0x1, 0x11
byte_80A727C: .byte 0xC2, 0x0, 0x1E, 0x0, 0x1, 0x0, 0x0, 0x26, 0xC4, 0xFF, 0x6A
	.byte 0xFE, 0x1, 0x0, 0x1, 0x15
byte_80A728C: .byte 0x32, 0x0, 0xC4, 0xFE, 0x1, 0x0, 0x1, 0x3C, 0x32, 0x0, 0x4C
	.byte 0x0, 0x0, 0x0, 0x0, 0x46
byte_80A729C: .byte 0xBA, 0xFE, 0xE6, 0xFF, 0x0, 0x0, 0x0, 0x11, 0x5A, 0xFF
	.byte 0x64, 0x0, 0x2, 0x0, 0x0, 0x1A, 0xBA, 0xFF, 0xE6, 0x0
	.byte 0x0, 0x0, 0x0, 0x40
	thumb_func_end sub_80A7238

	thumb_func_start sub_80A72B4
sub_80A72B4:
	push {lr}
	ldr r6, off_80A72D4 // =unk_2011A90 
	ldr r0, off_80A72C4 // =off_80A72C8 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A72C4: .word off_80A72C8
off_80A72C8: .word sub_80A72D8+1
	.word sub_80A7354+1
	.word sub_80A7398+1
off_80A72D4: .word unk_2011A90
	thumb_func_end sub_80A72B4

	thumb_local_start
sub_80A72D8:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	bl sub_80A75A4
	mov r4, r0
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x2f 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrh r0, [r4,#4]
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r4,#2]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	mov r0, #0
	str r0, [r5,#0x14]
	ldrb r0, [r4,#6]
	str r0, [r5,#0x2c]
	ldrb r0, [r4,#7]
	str r0, [r5,#0x30]
	bl sub_80A7514
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #0x11
	str r0, [r5,#0x34]
	movflag EVENT_5E5
	bl TestEventFlagFromImmediate
	beq loc_80A7342
	bl sub_80A76E8
loc_80A7342:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A7354
	movflag EVENT_5FF
	bl SetEventFlagFromImmediate
	pop {r4-r7,pc}
	thumb_func_end sub_80A72D8

	thumb_local_start
sub_80A7354:
	push {r4-r7,lr}
	bl cutscene_checkOriginalCutsceneScriptPos_8036F40 // () -> zf
	bne loc_80A738E
	bl cutscene_checkOriginalCutsceneScriptPos_8036F58
	bne loc_80A738E
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A738E
	ldrb r0, [r6,#9]
	cmp r0, #0
	beq loc_80A7386
	cmp r0, #1
	bne loc_80A7386
	ldr r0, [r5,#0x24]
	cmp r0, #0
	beq loc_80A7380
	bl sub_80A7640
	b loc_80A738E
loc_80A7380:
	mov r0, #8
	strb r0, [r5,#8]
	b loc_80A738E
loc_80A7386:
	bl sub_80A73A0
	bl sub_80A75DC
loc_80A738E:
	bl sprite_update
	bl sub_80A775C
	pop {r4-r7,pc}
	thumb_func_end sub_80A7354

	thumb_local_start
sub_80A7398:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A7398

	thumb_local_start
sub_80A73A0:
	push {r4-r7,lr}
	mov r0, r5
	add r0, #0xc
	bl sub_8003694
	mov r0, #0
	cmp r2, #0
	beq loc_80A73B8
	ldrb r1, [r5,#6]
	cmp r1, #3
	blt loc_80A73B8
	mov r0, #1
loc_80A73B8:
	strb r0, [r5,#7]
	bl sub_80A743C
	cmp r0, #1
	bne loc_80A73E4
	ldrb r0, [r5,#6]
	add r0, #1
	strb r0, [r5,#6]
	ldrb r0, [r5,#7]
	cmp r0, #0
	bne loc_80A73D8
	bl sub_80A7454
	bl sub_80A7514
	b loc_80A73E4
loc_80A73D8:
	bl sub_80A74A8
	bl sub_80A7514
	mov r0, #0
	strb r0, [r5,#6]
loc_80A73E4:
	bl sub_80A7590
	mov r2, r0
	ldr r6, [r5,#0x18]
	ldr r7, [r5,#0x1c]
	ldrb r4, [r5,#5]
	cmp r4, #0
	bne loc_80A7402
	ldr r0, [r5,#0xc]
	add r0, r0, r2
	cmp r0, r6
	bge loc_80A73FE
	b loc_80A7434
loc_80A73FE:
	mov r0, r6
	b loc_80A7434
loc_80A7402:
	cmp r4, #1
	bne loc_80A7414
	ldr r0, [r5,#0x10]
	add r0, r0, r2
	cmp r0, r7
	bge loc_80A7410
	b loc_80A7438
loc_80A7410:
	mov r0, r7
	b loc_80A7438
loc_80A7414:
	cmp r4, #2
	bne loc_80A7426
	ldr r0, [r5,#0xc]
	sub r0, r0, r2
	cmp r0, r6
	ble loc_80A7422
	b loc_80A7434
loc_80A7422:
	mov r0, r6
	b loc_80A7434
loc_80A7426:
	ldr r0, [r5,#0x10]
	sub r0, r0, r2
	cmp r0, r7
	ble loc_80A7430
	b loc_80A7438
loc_80A7430:
	mov r0, r7
	b loc_80A7438
loc_80A7434:
	str r0, [r5,#0xc]
	b locret_80A743A
loc_80A7438:
	str r0, [r5,#0x10]
locret_80A743A:
	pop {r4-r7,pc}
	thumb_func_end sub_80A73A0

	thumb_local_start
sub_80A743C:
	push {lr}
	mov r0, #0
	ldr r1, [r5,#0x18]
	ldr r2, [r5,#0xc]
	cmp r1, r2
	bne locret_80A7452
	ldr r1, [r5,#0x1c]
	ldr r2, [r5,#0x10]
	cmp r1, r2
	bne locret_80A7452
	mov r0, #1
locret_80A7452:
	pop {pc}
	thumb_func_end sub_80A743C

	thumb_local_start
sub_80A7454:
	push {r4-r7,lr}
	bl ReadOWPlayerObjectCoords
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	bne loc_80A746E
	ldrb r4, [r5,#5]
	b loc_80A7472
loc_80A746E:
	mov r4, r0
	sub r4, #1
loc_80A7472:
	lsl r4, r4, #1
	bl sub_80A7528
	mov r7, r0
loc_80A747A:
	ldrb r0, [r7,r4]
	add r4, #1
	ldrb r1, [r7,r4]
	cmp r4, #7
	bne loc_80A7488
	mov r4, #0
	b loc_80A748A
loc_80A7488:
	add r4, #1
loc_80A748A:
	cmp r0, #0xff
	beq loc_80A747A
	mov r4, r0
	str r1, [r5,#0x30]
	ldrb r1, [r5,#5]
	cmp r0, r1
	beq locret_80A74A6
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	strb r4, [r5,#5]
locret_80A74A6:
	pop {r4-r7,pc}
	thumb_func_end sub_80A7454

	thumb_local_start
sub_80A74A8:
	push {r4-r7,lr}
	ldrb r4, [r5,#5]
	bl sub_80A7528
	mov r7, r0
	mov r2, r4
	lsl r2, r2, #1
	ldrb r0, [r7,r2]
	add r2, #1
	ldrb r1, [r7,r2]
	cmp r0, #0xff
	bne loc_80A74FA
	bl ReadOWPlayerObjectCoords
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq loc_80A74DC
	cmp r0, #4
	blt loc_80A74DE
	mov r0, #1
	b loc_80A74E0
loc_80A74DC:
	mov r0, r4
loc_80A74DE:
	add r0, #1
loc_80A74E0:
	mov r4, r0
	sub r4, #1
	lsl r4, r4, #1
loc_80A74E6:
	ldrb r0, [r7,r4]
	add r4, #1
	ldrb r1, [r7,r4]
	cmp r4, #7
	bne loc_80A74F4
	mov r4, #0
	b loc_80A74F6
loc_80A74F4:
	add r4, #1
loc_80A74F6:
	cmp r0, #0xff
	beq loc_80A74E6
loc_80A74FA:
	mov r4, r0
	str r1, [r5,#0x30]
	ldrb r1, [r5,#5]
	cmp r0, r1
	beq locret_80A7512
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	strb r4, [r5,#5]
locret_80A7512:
	pop {r4-r7,pc}
	thumb_func_end sub_80A74A8

	thumb_local_start
sub_80A7514:
	push {r4,lr}
	bl sub_80A755C
	ldrh r1, [r0]
	ldrh r2, [r0,#2]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r1, [r5,#0x18]
	str r2, [r5,#0x1c]
	pop {r4,pc}
	thumb_func_end sub_80A7514

	thumb_local_start
sub_80A7528:
	push {r4,lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r0, [r3,#oGameState_MapGroup]
	cmp r0, #0x81
	beq loc_80A7538
	mov r3, #3
	b loc_80A753A
loc_80A7538:
	ldrb r3, [r3,#5]
loc_80A753A:
	lsl r3, r3, #2
	ldr r2, off_80A7548 // =off_80A754C 
	ldr r2, [r2,r3]
	ldr r1, [r5,#0x30]
	lsl r1, r1, #3
	add r0, r1, r2
	pop {r4,pc}
	.balign 4, 0
off_80A7548: .word off_80A754C
off_80A754C: .word byte_8140D6C
	.word byte_8140E6C
	.word byte_8140FBC
	.word byte_814122C
	thumb_func_end sub_80A7528

	thumb_local_start
sub_80A755C:
	push {r4,lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r0, [r3,#oGameState_MapGroup]
	cmp r0, #0x81
	beq loc_80A756C
	mov r3, #3
	b loc_80A756E
loc_80A756C:
	ldrb r3, [r3,#5]
loc_80A756E:
	lsl r3, r3, #2
	ldr r2, off_80A757C // =off_80A7580 
	ldr r2, [r2,r3]
	ldr r1, [r5,#0x30]
	lsl r1, r1, #2
	add r0, r1, r2
	pop {r4,pc}
	.balign 4, 0
off_80A757C: .word off_80A7580
off_80A7580: .word byte_81414CC
	.word byte_814154C
	.word byte_81415F4
	.word byte_814172C
	thumb_func_end sub_80A755C

	thumb_local_start
sub_80A7590:
	push {r4,lr}
	ldr r1, [r5,#0x2c]
	lsl r1, r1, #2
	ldr r0, off_80A75A0 // =byte_8140C60
	ldr r0, [r0,r1]
	str r0, [r5,#0x28]
	pop {r4,pc}
	.byte 0, 0
off_80A75A0: .word byte_8140C60
	thumb_func_end sub_80A7590

	thumb_local_start
sub_80A75A4:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r0, [r4,#oGameState_MapGroup]
	cmp r0, #0x81
	beq loc_80A75B4
	mov r2, #3
	b loc_80A75B6
loc_80A75B4:
	ldrb r2, [r4,#oGameState_MapNumber]
loc_80A75B6:
	lsl r2, r2, #2
	ldrb r3, [r5,#4]
	mov r0, #8
	mul r3, r0
	ldr r4, off_80A75C8 // =off_80A75CC 
	ldr r0, [r4,r2]
	add r0, r0, r3
	pop {r4,pc}
	.balign 4, 0
off_80A75C8: .word off_80A75CC
off_80A75CC: .word byte_80A726C
	.word byte_80A727C
	.word byte_80A728C
	.word byte_80A729C
	thumb_func_end sub_80A75A4

	thumb_local_start
sub_80A75DC:
	push {r4-r7,lr}
	movflag EVENT_5F1
	bl TestEventFlagFromImmediate
	bne locret_80A763C
	bl ReadOWPlayerObjectCoords
	cmp r2, #0
	bne loc_80A760E
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r4, #0x12
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne loc_80A760E
	mov r2, #0x7c 
	add r2, #8
	ldr r3, [r6,r2]
	cmp r3, #0
	beq loc_80A7630
loc_80A760E:
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r2, #0x7c 
	add r2, #8
	ldr r3, [r6,r2]
	cmp r3, #0
	bne locret_80A763C
	mov r4, #0x7c 
	ldr r2, [r6,r4]
	add r4, #4
	ldr r3, [r6,r4]
	mov r4, #0x12
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne locret_80A763C
loc_80A7630:
	movflag EVENT_5F1
	bl SetEventFlagFromImmediate
	mov r0, #1
	str r0, [r5,#0x24]
locret_80A763C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_80A75DC

	thumb_local_start
sub_80A7640:
	push {r4-r7,lr}
	ldrb r4, [r5,#9]
	cmp r4, #0
	bgt loc_80A765E
	ldrb r0, [r5,#5]
	add r0, #0xa
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	add r4, #1
	strb r4, [r5,#9]
	b locret_80A76C8
loc_80A765E:
	cmp r4, #1
	bgt loc_80A7670
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_80A76C8
	add r4, #1
	strb r4, [r5,#9]
loc_80A7670:
	cmp r4, #2
	bgt loc_80A76A0
	mov r3, #0x7c 
	ldr r0, [r6,r3]
	add r3, #4
	ldr r1, [r6,r3]
	add r3, #4
	ldr r2, [r6,r3]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	mov r0, #9
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xe1
	bl PlaySoundEffect
	add r4, #1
	strb r4, [r5,#9]
	b locret_80A76C8
loc_80A76A0:
	mov r0, #3
	strb r0, [r6,#7]
	bl sub_80A76CC
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_80A76C8
	mov r0, #3
	strb r0, [r6,#5]
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0
	strb r0, [r5,#9]
	str r0, [r5,#0x24]
	mov r0, #2
	strb r0, [r6,#9]
	bl sub_80A7398
locret_80A76C8:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A7640

	thumb_local_start
sub_80A76CC:
	push {r4-r7,lr}
	ldr r0, [r5,#0x34]
	cmp r0, #0
	beq locret_80A76E4
	cmp r0, #1
	bne loc_80A76DE
	mov r0, #0xe2
	bl PlaySoundEffect
loc_80A76DE:
	sub r0, #1
	str r0, [r5,#0x34]
	b locret_80A76E4
locret_80A76E4:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A76CC

	thumb_local_start
sub_80A76E8:
	push {r4-r7,lr}
	ldr r7, off_80A77A4 // =byte_2000EC0 
	ldrb r3, [r5,#4]
	ldrb r4, [r7,#0x6] // (byte_2000EC6 - 0x2000ec0)
	mov r1, #0x1a
	add r1, r1, r3
	ldrb r0, [r7,r1]
	str r0, [r5,#0x2c]
	mov r1, #0x1d
	add r1, r1, r3
	ldrb r0, [r7,r1]
	strb r0, [r5,#5]
	mov r1, #0x20 
	add r1, r1, r3
	ldrb r0, [r7,r1]
	strb r0, [r5,#6]
	mov r1, #0x23 
	add r1, r1, r3
	ldrb r0, [r7,r1]
	str r0, [r5,#0x30]
	add r4, r4, r3
	mov r1, #0x26 
	add r1, r1, r4
	ldrb r0, [r7,r1]
	str r0, [r5,#0x24]
	lsl r4, r4, #2
	mov r1, #0x2c 
	add r1, r1, r4
	ldr r0, [r7,r1]
	str r0, [r5,#0xc]
	mov r1, #0x44 
	add r1, r1, r4
	ldr r0, [r7,r1]
	str r0, [r5,#0x10]
	bl sub_80A7514
	ldrb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r2, #1
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r1, [r1,#oGameState_MapGroup]
	cmp r1, #0x81
	beq loc_80A774C
	mov r2, #2
loc_80A774C:
	ldrb r0, [r5,#4]
	cmp r0, r2
	bne locret_80A775A
	movflag EVENT_5E5
	bl ClearEventFlagFromImmediate
locret_80A775A:
	pop {r4-r7,pc}
	thumb_func_end sub_80A76E8

	thumb_local_start
sub_80A775C:
	push {r4-r7,lr}
	ldr r7, off_80A77A4 // =byte_2000EC0 
	ldrb r3, [r5,#4]
	ldrb r4, [r6,#0xa]
	mov r1, #0x1a
	add r1, r1, r3
	ldr r0, [r5,#0x2c]
	strb r0, [r7,r1]
	mov r1, #0x1d
	add r1, r1, r3
	ldrb r0, [r5,#5]
	strb r0, [r7,r1]
	mov r1, #0x20 
	add r1, r1, r3
	ldrb r0, [r5,#6]
	strb r0, [r7,r1]
	mov r1, #0x23 
	add r1, r1, r3
	ldr r0, [r5,#0x30]
	strb r0, [r7,r1]
	add r4, r4, r3
	mov r1, #0x26 
	add r1, r1, r4
	ldr r0, [r5,#0x24]
	strb r0, [r7,r1]
	lsl r4, r4, #2
	mov r1, #0x2c 
	add r1, r1, r4
	ldr r0, [r5,#0xc]
	str r0, [r7,r1]
	mov r1, #0x44 
	add r1, r1, r4
	ldr r0, [r5,#0x10]
	str r0, [r7,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A77A4: .word byte_2000EC0
	thumb_func_end sub_80A775C

	thumb_func_start sub_80A77A8
sub_80A77A8:
	push {lr}
	ldr r0, off_80A77B8 // =off_80A77BC 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A77B8: .word off_80A77BC
off_80A77BC: .word sub_80A77C8+1
	.word sub_80A77FC+1
	.word sub_80A7812+1
	thumb_func_end sub_80A77A8

	thumb_local_start
sub_80A77C8:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	ldrb r2, [r5,#7]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#5]
	bl sprite_setPalette // (int pallete) -> void
	ldrb r0, [r5,#6]
	bl sub_8002E14
	mov r0, #4
	strb r0, [r5,#8]
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A77C8

	thumb_local_start
sub_80A77FC:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A780C
	mov r0, #8
	strb r0, [r5,#8]
loc_80A780C:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A77FC

	thumb_local_start
sub_80A7812:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A7812

	thumb_func_start sub_80A781C
sub_80A781C:
	push {lr}
	ldr r0, off_80A782C // =off_80A7830 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A782C: .word off_80A7830
off_80A7830: .word sub_80A783C+1
	.word sub_80A786C+1
	.word sub_80A78AE+1
	thumb_func_end sub_80A781C

	thumb_local_start
sub_80A783C:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x47 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#4]
	strb r1, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A786C
	pop {pc}
	thumb_func_end sub_80A783C

	thumb_local_start
sub_80A786C:
	push {lr}
	bl sub_809BA14
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	strb r3, [r5,#4]
	mov r0, r4
	cmp r0, #0
	beq loc_80A7888
	mov r4, #3
	cmp r0, #0x10
	beq loc_80A788A
	b loc_80A788E
loc_80A7888:
	mov r4, #1
loc_80A788A:
	bl sprite_disableAlpha
loc_80A788E:
	strb r4, [r5]
	mov r0, #2
	bl sub_8002E14
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	cmp r0, r1
	beq loc_80A78A6
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_80A78A6:
	strb r0, [r5,#5]
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A786C

	thumb_local_start
sub_80A78AE:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A78AE

	thumb_func_start sub_80A78B8
sub_80A78B8:
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	bl sub_8142068
	ldr r0, off_80A78CC // =off_80A78D0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0
off_80A78CC: .word off_80A78D0
off_80A78D0: .word sub_80A78E0+1
	.word sub_80A7912+1
	.word sub_80A796C+1
	.word sub_80A79D4+1
	thumb_func_end sub_80A78B8

	thumb_local_start
sub_80A78E0:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x49 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r6,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #2
	bl sub_8002E14
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A7912
	pop {r4-r7,pc}
	thumb_func_end sub_80A78E0

	thumb_local_start
sub_80A7912:
	push {r4-r7,lr}
	ldr r0, [r6,#8]
	str r0, [r5,#0xc]
	ldr r0, [r6,#0xc]
	str r0, [r5,#0x10]
	ldr r0, [r6,#0x10]
	str r0, [r5,#0x14]
loc_80A7920:
	ldrb r0, [r5,#4]
	bl sub_8142050
	ldrb r0, [r6]
	add r7, r7, r0
	ldrb r1, [r7]
	ldr r0, off_80A794C // =off_80A7950 
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bne loc_80A7920
	bl sub_80A7BC0
	ldr r0, [r5,#0xc]
	str r0, [r6,#8]
	ldr r0, [r5,#0x10]
	str r0, [r6,#0xc]
	ldr r0, [r5,#0x14]
	str r0, [r6,#0x10]
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A794C: .word off_80A7950
off_80A7950: .word sub_80A79DC+1
	.word sub_80A7A40+1
	.word sub_80A7AA4+1
	.word sub_80A7AD4+1
	.word sub_80A7AE0+1
	.word sub_80A7AFA+1
	.word sub_80A7B32+1
	thumb_func_end sub_80A7912

	thumb_local_start
sub_80A796C:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r3, off_80A79AC // =byte_80A79B0
	ldrb r3, [r3,r0]
	cmp r3, #0xff
	beq loc_80A799C
	lsl r3, r3, #0x10
	ldr r0, [r5,#0x14]
	add r0, r0, r3
	str r0, [r5,#0x14]
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r1, off_80A79C0 // =byte_80A79C4 
	ldrb r0, [r1,r0]
	lsl r1, r0, #0
	lsl r2, r0, #0
	lsl r1, r1, #5
	lsl r2, r2, #0xa
	orr r0, r1
	orr r0, r2
	bl sprite_setColorShader
	b loc_80A79A0
loc_80A799C:
	bl FreeOverworldMapObject
loc_80A79A0:
	ldr r0, [r5,#0x24]
	add r0, #1
	str r0, [r5,#0x24]
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A79AC: .word byte_80A79B0
byte_80A79B0: .byte 0x4, 0x4, 0x4, 0x3, 0x2, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
off_80A79C0: .word byte_80A79C4
byte_80A79C4: .byte 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16, 0x18
	.byte 0x1A, 0x1C, 0x1E, 0x1F, 0x1F
	thumb_func_end sub_80A796C

	thumb_local_start
sub_80A79D4:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A79D4

	thumb_local_start
sub_80A79DC:
	push {r4-r7,lr}
	ldrb r0, [r7,#1]
	strb r0, [r6,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldr r3, off_80A7A34 // =byte_80A7A38
	ldrb r1, [r6,#2]
	lsl r1, r1, #1
	add r3, r3, r1
	mov r0, #0
	ldrsb r0, [r3,r0]
	mov r1, #1
	ldrsb r1, [r3,r1]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldrb r2, [r7,#3]
	mul r0, r2
	mul r1, r2
	ldr r2, [r5,#0xc]
	add r0, r0, r2
	ldr r2, [r5,#0x10]
	add r1, r1, r2
	str r0, [r6,#0x1c]
	str r1, [r6,#0x20]
	ldrb r1, [r7,#2]
	mov r0, #0x40 
	lsl r0, r0, #8
	svc 6
	str r0, [r6,#0x24]
	mov r0, #0x40 
	lsl r0, r0, #8
	sub r0, r0, r1
	strh r0, [r6,#6]
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	str r0, [r6,#0x14]
	str r1, [r6,#0x18]
	mov r0, #4
	bl sub_80A7BA2
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_80A7A34: .word byte_80A7A38
byte_80A7A38: .byte 0x8, 0x0, 0x0, 0x8, 0xF8, 0x0, 0x0, 0xF8
	thumb_func_end sub_80A79DC

	thumb_local_start
sub_80A7A40:
	push {r4-r7,lr}
	bl sub_80A7C58
	bne loc_80A7A88
	ldr r7, off_80A7AA0 // =math_sinTable 
	ldrh r3, [r6,#6]
	ldr r4, [r6,#0x24]
	sub r4, r3, r4
	ble loc_80A7A8C
	strh r4, [r6,#6]
	lsr r4, r4, #8
	mov r3, #0x40 
	sub r4, r3, r4
	lsl r4, r4, #1
	ldr r0, off_80A7AA0 // =math_sinTable 
	ldrsh r4, [r0,r4]
	ldr r0, [r6,#0x1c]
	ldr r1, [r6,#0x14]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}
	ldr r0, [r6,#0x20]
	ldr r1, [r6,#0x18]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}
	pop {r1}
	ldr r3, [r6,#0x18]
	add r1, r1, r3
	pop {r0}
	ldr r3, [r6,#0x14]
	add r0, r0, r3
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
loc_80A7A88:
	mov r0, #0
	pop {r4-r7,pc}
loc_80A7A8C:
	ldr r0, [r6,#0x1c]
	ldr r1, [r6,#0x20]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	mov r0, #1
	bl sub_80A7BA2
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0
off_80A7AA0: .word math_sinTable
	thumb_func_end sub_80A7A40

	thumb_local_start
sub_80A7AA4:
	push {r4-r7,lr}
	bl sub_80A7C58
	bne loc_80A7AD0
	ldrb r0, [r6,#3]
	tst r0, r0
	bne loc_80A7ABA
	ldrb r0, [r7,#1]
	strh r0, [r6,#4]
	mov r0, #1
	strb r0, [r6,#3]
loc_80A7ABA:
	ldrh r0, [r6,#4]
	sub r0, #1
	strh r0, [r6,#4]
	bge loc_80A7AD0
	mov r0, #0
	strb r0, [r6,#3]
	mov r0, #2
	bl sub_80A7BA2
	mov r0, #1
	pop {r4-r7,pc}
loc_80A7AD0:
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_80A7AA4

	thumb_local_start
sub_80A7AD4:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_80A7B9E
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80A7AD4

	thumb_local_start
sub_80A7AE0:
	push {r4-r7,lr}
	add r0, r7, #1
	bl sub_80A7B7A
	mov r4, r1
	ldrb r0, [r5,#4]
	bl sub_8142050
	sub r0, r4, r7
	bl sub_80A7B9E
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80A7AE0

	thumb_local_start
sub_80A7AFA:
	push {r4-r7,lr}
	add r0, r7, #1
	bl sub_80A7B90
	lsl r1, r1, #0x10
	str r1, [r5,#0xc]
	add r0, r7, #3
	bl sub_80A7B90
	lsl r1, r1, #0x10
	str r1, [r5,#0x10]
	bl sub_81420B0
	str r0, [r5,#0x14]
	add r0, r7, #5
	bl sub_80A7B90
	mov r0, r1
	strb r0, [r6,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #7
	bl sub_80A7BA2
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80A7AFA

	thumb_local_start
sub_80A7B32:
	push {r4-r7,lr}
	bl sub_80A7C58
	bne loc_80A7B76
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r4, [r4,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r5,#0x14]
	ldr r1, [r4,#0x24]
	bne loc_80A7B76
	ldr r0, [r5,#0xc]
	ldr r1, [r4,#0x1c]
	sub r0, r0, r1
	ldr r2, [r5,#0x10]
	ldr r3, [r4,#0x20]
	sub r2, r2, r3
	asr r0, r0, #0x10
	mov r1, r0
	asr r2, r2, #0x10
	mov r3, r2
	mul r0, r1
	mul r2, r3
	add r0, r0, r2
	ldrb r1, [r7,#1]
	mov r2, r1
	mul r2, r1
	add r2, r2, r2
	cmp r0, r2
	bge loc_80A7B76
	mov r0, #2
	bl sub_80A7BA2
	mov r0, #1
	pop {r4-r7,pc}
loc_80A7B76:
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_80A7B32

	thumb_local_start
sub_80A7B7A:
	ldrb r1, [r0]
	ldrb r2, [r0,#1]
	lsl r2, r2, #8
	orr r1, r2
	ldrb r2, [r0,#2]
	lsl r2, r2, #0x10
	orr r1, r2
	ldrb r2, [r0,#3]
	lsl r2, r2, #0x18
	orr r1, r2
	mov pc, lr
	thumb_func_end sub_80A7B7A

	thumb_local_start
sub_80A7B90:
	ldrb r1, [r0]
	ldrb r2, [r0,#1]
	lsl r2, r2, #8
	orr r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov pc, lr
	thumb_func_end sub_80A7B90

	thumb_local_start
sub_80A7B9E:
	strb r0, [r6]
	mov pc, lr
	thumb_func_end sub_80A7B9E

	thumb_local_start
sub_80A7BA2:
	ldrb r1, [r6]
	add r1, r1, r0
	strb r1, [r6]
	mov pc, lr
	thumb_func_end sub_80A7BA2

	thumb_local_start
sub_80A7BAA:
	ldrb r1, [r6,#1]
	orr r1, r0
	strb r1, [r6,#1]
	mov pc, lr
	thumb_func_end sub_80A7BAA

	thumb_local_start
sub_80A7BB2:
	ldrb r1, [r6,#1]
	bic r1, r0
	strb r1, [r6,#1]
	mov pc, lr
	thumb_func_end sub_80A7BB2

	thumb_local_start
sub_80A7BBA:
	ldrb r1, [r6,#1]
	tst r1, r0
	mov pc, lr
	thumb_func_end sub_80A7BBA

	thumb_local_start
sub_80A7BC0:
	push {r4-r7,lr}
	bl sub_80A7C58
	bne locret_80A7C3C
	ldr r4, off_80A7C40 // =dword_80A7C44 
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r5,#0x14]
	ldr r1, [r7,#0x24]
	cmp r0, r1
	bne locret_80A7C3C
	ldr r0, [r4]
	ldr r1, [r4,#0x4] // (dword_80A7C48 - 0x80a7c44)
	ldr r2, [r7,#0x1c]
	ldr r3, [r7,#0x20]
	add r2, r2, r0
	add r3, r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	sub r2, r2, r0
	blt locret_80A7C3C
	sub r3, r3, r1
	blt locret_80A7C3C
	ldr r0, [r4,#0x8] // (dword_80A7C4C - 0x80a7c44)
	ldr r1, [r4,#0xc] // (dword_80A7C50 - 0x80a7c44)
	cmp r2, r0
	bgt locret_80A7C3C
	cmp r3, r1
	bgt locret_80A7C3C
	ldrb r0, [r5,#4]
	bl sub_81420F0
	mov r0, r0
	bl SetEventFlag
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #SOUND_UNK_73
	bl PlaySoundEffect
	bl sub_81418F0
	bl sub_81418E4
	mov r4, r2
	bl sub_8142080
	bl sub_81420C8
	cmp r0, r4
	bne locret_80A7C3C
	movflag EVENT_1731
	bl SetEventFlagFromImmediate
	bl sub_8142080
	mov r1, r0
	ldr r0, off_80A7C54 // =byte_8089DD8
	bl StartCutscene
locret_80A7C3C:
	pop {r4-r7,pc}
	.balign 4, 0
off_80A7C40: .word dword_80A7C44
dword_80A7C44: .word 0x80000
dword_80A7C48: .word 0x80000
dword_80A7C4C: .word 0x100000
dword_80A7C50: .word 0x100000
off_80A7C54: .word byte_8089DD8
	thumb_func_end sub_80A7BC0

	thumb_local_start
sub_80A7C58:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A7C7E
	bl IsCutsceneScriptNonNull // () -> zf
	bne loc_80A7C7E
	bl sub_809E462
	bne loc_80A7C7E
	bl IsScreenFadeActive // () -> zf
	beq loc_80A7C7E
	bl sub_809E3A2
	beq loc_80A7C7E
	mov r4, #0
loc_80A7C7E:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_80A7C58

	thumb_func_start sub_80A7C84
sub_80A7C84:
	push {r4-r7,lr}
	ldr r0, off_80A7C94 // =off_80A7C98 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A7C94: .word off_80A7C98
off_80A7C98: .word sub_80A7CA4+1
	.word sub_80A7CEA+1
	.word sub_80A7CF6+1
	thumb_func_end sub_80A7C84

	thumb_local_start
sub_80A7CA4:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x4b 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #2
	bl sub_8002E14
	mov r0, #1
	bl sprite_setPalette // (int pallete) -> void
	push {r4-r7}
	mov r0, #0
	ldr r1, [r5,#0xc]
	ldr r2, [r5,#0x10]
	ldr r3, [r5,#0x14]
	mov r4, #0x7a 
	bl SpawnOverworldMapObject
	pop {r4-r7}
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A7CEA
	pop {r4-r7,pc}
	thumb_func_end sub_80A7CA4

	thumb_local_start
sub_80A7CEA:
	push {r4-r7,lr}
	bl sub_80A7CFE
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A7CEA

	thumb_local_start
sub_80A7CF6:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A7CF6

	thumb_local_start
sub_80A7CFE:
	push {r4-r7,lr}
	ldr r4, off_80A7D74 // =dword_80A7D78 
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r4]
	ldr r1, [r4,#0x4] // (dword_80A7D7C - 0x80a7d78)
	ldr r2, [r7,#0x1c]
	ldr r3, [r7,#0x20]
	add r2, r2, r0
	add r3, r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	sub r2, r2, r0
	blt locret_80A7D70
	sub r3, r3, r1
	blt locret_80A7D70
	ldr r0, [r4,#0x8] // (dword_80A7D80 - 0x80a7d78)
	ldr r1, [r4,#0xc] // (dword_80A7D84 - 0x80a7d78)
	cmp r2, r0
	bgt locret_80A7D70
	cmp r3, r1
	bgt locret_80A7D70
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne locret_80A7D70
	bl IsCutsceneScriptNonNull // () -> zf
	bne locret_80A7D70
	bl sub_809E462
	bne locret_80A7D70
	bl IsScreenFadeActive // () -> zf
	beq locret_80A7D70
	movflag EVENT_1731
	bl SetEventFlagFromImmediate
	ldr r4, [r7,#0x24]
	ldr r0, [r5,#0x14]
	cmp r0, r4
	bne loc_80A7D60
	ldr r0, off_80A7D88 // =byte_8089E44
	mov r1, r5
	bl StartCutscene
	b locret_80A7D70
loc_80A7D60:
	bl sub_81420B0
	cmp r0, r4
	bne locret_80A7D70
	ldr r0, off_80A7D8C // =byte_8089FD8
	mov r1, r5
	bl StartCutscene
locret_80A7D70:
	pop {r4-r7,pc}
	.balign 4, 0
off_80A7D74: .word dword_80A7D78
dword_80A7D78: .word 0xE0000
dword_80A7D7C: .word 0xE0000
dword_80A7D80: .word 0x1C0000
dword_80A7D84: .word 0x1C0000
off_80A7D88: .word byte_8089E44
off_80A7D8C: .word byte_8089FD8
	thumb_func_end sub_80A7CFE

	thumb_func_start sub_80A7D90
sub_80A7D90:
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	bl sub_81428C2
	mov r7, r0
	ldr r0, off_80A7DA8 // =off_80A7DAC 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0
off_80A7DA8: .word off_80A7DAC
off_80A7DAC: .word sub_80A7DB8+1
	.word sub_80A7E14+1
	.word sub_80A7E0C+1
	thumb_func_end sub_80A7D90

	thumb_local_start
sub_80A7DB8:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x4e 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#3]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_80A8020
	ldrh r0, [r7,#4]
	bl GetSoulWeaponCursorCameraCoords
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	mov r2, #0xfa
	lsl r2, r2, #0x10
	str r2, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A7E14
	pop {r4-r7,pc}
	thumb_func_end sub_80A7DB8

	thumb_local_start
sub_80A7E0C:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A7E0C

	thumb_local_start
sub_80A7E14:
	push {r4-r7,lr}
	ldr r0, off_80A7E28 // =off_80A7E2C 
	ldrb r1, [r7,#6]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A7E28: .word off_80A7E2C
off_80A7E2C: .word sub_80A7E44+1
	.word sub_80A7E4C+1
	.word sub_80A7EDA+1
	.word sub_80A7F58+1
	.word sub_80A8006+1
	.word sub_80A800A+1
	thumb_func_end sub_80A7E14

	thumb_local_start
sub_80A7E44:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#9]
	pop {r4-r7,pc}
	thumb_func_end sub_80A7E44

	thumb_local_start
sub_80A7E4C:
	push {r4-r7,lr}
	ldr r0, off_80A7E5C // =off_80A7E60 
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A7E5C: .word off_80A7E60
off_80A7E60: .word sub_80A7E6C+1
	.word sub_80A7EA4+1
	.word sub_80A7EBE+1
	thumb_func_end sub_80A7E4C

	thumb_local_start
sub_80A7E6C:
	push {r4-r7,lr}
	ldrb r0, [r7,#3]
	add r0, #4
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #0x1e
	str r0, [r5,#0x24]
	mov r6, #1
	bl GetOWPlayerFacingDirection
	bl sub_80A8038
	ldrb r1, [r7,#3]
	cmp r0, r1
	bne loc_80A7E90
	ldrb r6, [r7,#2]
loc_80A7E90:
	ldrb r0, [r7,#2]
	sub r0, r0, r6
	strb r0, [r7,#2]
	cmp r0, #0
	ble loc_80A7E9E
	bl sub_80A8020
loc_80A7E9E:
	mov r0, #4
	strb r0, [r5,#9]
	pop {r4-r7,pc}
	thumb_func_end sub_80A7E6C

	thumb_local_start
sub_80A7EA4:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	sub r0, #1
	str r0, [r5,#0x24]
	bgt locret_80A7EBC
	ldrb r0, [r7,#3]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #8
	strb r0, [r5,#9]
locret_80A7EBC:
	pop {r4-r7,pc}
	thumb_func_end sub_80A7EA4

	thumb_local_start
sub_80A7EBE:
	push {r4-r7,lr}
	ldrb r0, [r7,#2]
	cmp r0, #0
	bgt loc_80A7ED0
	mov r0, #8
	strb r0, [r7,#6]
	mov r0, #0
	strb r0, [r5,#9]
	b locret_80A7ED8
loc_80A7ED0:
	mov r0, #0
	strb r0, [r7,#6]
	mov r0, #0
	strb r0, [r5,#9]
locret_80A7ED8:
	pop {r4-r7,pc}
	thumb_func_end sub_80A7EBE

	thumb_local_start
sub_80A7EDA:
	push {r4-r7,lr}
	ldr r0, off_80A7EE8 // =off_80A7EEC 
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
off_80A7EE8: .word off_80A7EEC
off_80A7EEC: .word sub_80A7EF8+1
	.word sub_80A7F14+1
	.word sub_80A7F26+1
	thumb_func_end sub_80A7EDA

	thumb_local_start
sub_80A7EF8:
	push {r4-r7,lr}
	ldrb r0, [r7,#3]
	add r0, #0xc
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #0x7e 
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#9]
	pop {r4-r7,pc}
	thumb_func_end sub_80A7EF8

	thumb_local_start
sub_80A7F14:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_80A7F24
	mov r0, #8
	strb r0, [r5,#9]
locret_80A7F24:
	pop {r4-r7,pc}
	thumb_func_end sub_80A7F14

	thumb_local_start
sub_80A7F26:
	push {r4-r7,lr}
	mov r0, #0
	strh r0, [r7,#4]
	mov r0, #0
	strb r0, [r7,#6]
	mov r0, #0
	ldrb r0, [r5,#4]
	bl sub_81427A4
	mov r0, r0
	bl SetEventFlag
	bl sub_8142184
	ldr r0, dword_80A7F54 // =0x1650 
	ldrb r1, [r5,#4]
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A7F54: .word 0x1650
	thumb_func_end sub_80A7F26

	thumb_local_start
sub_80A7F58:
	push {r4-r7,lr}
	ldr r0, off_80A7F68 // =off_80A7F6C 
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A7F68: .word off_80A7F6C
off_80A7F6C: .word sub_80A7F78+1
	.word sub_80A7FAC+1
	.word sub_80A7FD4+1
	thumb_func_end sub_80A7F58

	thumb_local_start
sub_80A7F78:
	push {r4-r7,lr}
	ldrb r0, [r7,#2]
	bl sub_8142204
	bl sub_8142990
	mov r4, r0
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	bl sub_8142816
	mov r1, r4
	bl sub_8142896
	bl sub_80A8038
	strb r0, [r5,#7]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #0x1e
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#9]
	pop {r4-r7,pc}
	thumb_func_end sub_80A7F78

	thumb_local_start
sub_80A7FAC:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	sub r0, #1
	str r0, [r5,#0x24]
	bgt locret_80A7FD2
	ldrb r0, [r5,#7]
	add r0, #8
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #0x2b 
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	str r0, [r5,#0x24]
	mov r0, #8
	strb r0, [r5,#9]
locret_80A7FD2:
	pop {r4-r7,pc}
	thumb_func_end sub_80A7FAC

	thumb_local_start
sub_80A7FD4:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_80A8004
	mov r0, #0x2b 
	add r0, #0xff
	bl PlaySoundEffect
	ldr r0, [r5,#0x24]
	sub r0, #1
	str r0, [r5,#0x24]
	bge locret_80A8004
	ldrb r0, [r5,#7]
	add r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #0x10
	strb r0, [r7,#6]
	mov r0, #0
	strb r0, [r5,#9]
locret_80A8004:
	pop {r4-r7,pc}
	thumb_func_end sub_80A7FD4

	thumb_local_start
sub_80A8006:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_80A8006

	thumb_local_start
sub_80A800A:
	push {r4-r7,lr}
	ldrb r0, [r7,#3]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #0
	strb r0, [r7,#6]
	mov r0, #0
	strb r0, [r5,#9]
	pop {r4-r7,pc}
	thumb_func_end sub_80A800A

	thumb_local_start
sub_80A8020:
	push {r4-r7,lr}
	ldrb r0, [r7,#2]
	ldr r1, off_80A8030 // =off_80A8034 
	ldrb r0, [r1,r0]
	bl sprite_setPalette // (int pallete) -> void
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8030: .word off_80A8034
off_80A8034: .word unk_2010000
	thumb_func_end sub_80A8020

	thumb_local_start
sub_80A8038:
	push {r4-r7,lr}
	ldr r1, off_80A8040 // =byte_80A8044
	ldrb r0, [r1,r0]
	pop {r4-r7,pc}
off_80A8040: .word byte_80A8044
byte_80A8044: .byte 0xFF, 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x3
byte_80A804C: .byte 0xEE, 0xFE, 0x82, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0xE, 0xFF, 0xC2
	.byte 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x2E, 0x0, 0x42, 0x0, 0xC0, 0xFF
	.byte 0x0, 0x0, 0x6E, 0x0, 0x62, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x8E
	.byte 0x1, 0x82, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0x6E, 0x1, 0x22, 0xFF
	.byte 0xC0, 0xFF, 0x0, 0x0, 0xAE, 0x1, 0x42, 0xFF, 0xC0, 0xFF, 0x0
	.byte 0x0
byte_80A8084: .byte 0x66, 0xFF, 0xCA, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0x86, 0xFF
	.byte 0x6A, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0x86, 0xFF, 0x2A, 0xFF
	.byte 0xC0, 0xFF, 0x0, 0x0, 0x86, 0x0, 0xEA, 0xFF, 0xC0, 0xFF
	.byte 0x0, 0x0, 0xA6, 0x0, 0x8A, 0xFF, 0xC0, 0xFF, 0x0, 0x0
	.byte 0xC6, 0x0, 0x4A, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0xA6, 0x1
	.byte 0xCA, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0x86, 0x1, 0x6A, 0xFF
	.byte 0xC0, 0xFF, 0x0, 0x0, 0xA6, 0x1, 0x2A, 0xFF, 0xC0, 0xFF
	.byte 0x0, 0x0
byte_80A80CC: .byte 0xE6, 0xFF, 0xA, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x26, 0x0, 0xCA
	.byte 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x26, 0x0, 0x6A, 0x0, 0xC0, 0xFF
	.byte 0x0, 0x0, 0xE6, 0x0, 0xCA, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0xE6
	.byte 0x0, 0x8A, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x26, 0x1, 0x4A, 0x0
	.byte 0xC0, 0xFF, 0x0, 0x0, 0x26, 0x1, 0xAA, 0xFF, 0xC0, 0xFF, 0x0
	.byte 0x0, 0xE6, 0x0, 0x8A, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0x26, 0x1
	.byte 0x6A, 0xFF, 0xC0, 0xFF, 0x0, 0x0
byte_80A8114: .byte 0x36, 0x0, 0x3A, 0x1, 0xC0, 0xFF, 0x0, 0x0, 0xF6, 0xFF, 0x3A
	.byte 0x1, 0xC0, 0xFF, 0x0, 0x0, 0x16, 0x0, 0xFA, 0x0, 0xC0, 0xFF
	.byte 0x0, 0x0, 0xB6, 0x0, 0x3A, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0x36
	.byte 0x0, 0x1A, 0x0, 0xC0, 0xFF, 0x0, 0x0, 0xB6, 0x0, 0xDA, 0xFF
	.byte 0xC0, 0xFF, 0x0, 0x0, 0x36, 0xFF, 0x9A, 0xFF, 0xC0, 0xFF, 0x0
	.byte 0x0, 0x76, 0xFF, 0x7A, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0xB6, 0xFF
	.byte 0x5A, 0xFF, 0xC0, 0xFF, 0x0, 0x0, 0xF6, 0xFF, 0x9A, 0xFE, 0xC0
	.byte 0xFF, 0x0, 0x0, 0x36, 0x0, 0x7A, 0xFE, 0xC0, 0xFF, 0x0, 0x0
	.byte 0x16, 0x0, 0x3A, 0xFE, 0xC0, 0xFF, 0x0, 0x0
byte_80A8174: .byte 0xF6, 0x9, 0xF6, 0x9, 0xF7, 0x9, 0xF7, 0x9, 0xF8, 0x9, 0xF8
	.byte 0x9, 0xF8, 0x9
byte_80A8182: .byte 0xF9, 0x9, 0xF9, 0x9, 0xF9, 0x9, 0xFA, 0x9, 0xFA, 0x9, 0xFA
	.byte 0x9, 0xFB, 0x9, 0xFB, 0x9, 0xFB, 0x9
byte_80A8194: .byte 0xFC, 0x9, 0xFC, 0x9, 0xFC, 0x9, 0xFD, 0x9, 0xFD, 0x9, 0xFD
	.byte 0x9, 0xFE, 0x9, 0xFE, 0x9, 0xFE, 0x9
byte_80A81A6: .byte 0xFA, 0xF, 0xFA, 0xF, 0xFA, 0xF, 0xFB, 0xF, 0xFB, 0xF
	.byte 0xFB, 0xF, 0xFC, 0xF, 0xFC, 0xF, 0xFC, 0xF, 0xFD, 0xF
	.byte 0xFD, 0xF, 0xFD, 0xF
byte_80A81BE: .byte 0xDD, 0x9, 0xDE, 0x9, 0xDF, 0x9, 0xE0, 0x9, 0xE1, 0x9, 0xE2
	.byte 0x9, 0xE3, 0x9
byte_80A81CC: .byte 0xE4, 0x9, 0xE5, 0x9, 0xE6, 0x9, 0xE7, 0x9, 0xE8, 0x9, 0xE9
	.byte 0x9, 0xEA, 0x9, 0xEB, 0x9, 0xEC, 0x9
byte_80A81DE: .byte 0xED, 0x9, 0xEE, 0x9, 0xEF, 0x9, 0xF0, 0x9, 0xF1, 0x9, 0xF2
	.byte 0x9, 0xF3, 0x9, 0xF4, 0x9, 0xF5, 0x9
byte_80A81F0: .byte 0xC6, 0xF, 0xC7, 0xF, 0xC8, 0xF, 0xC9, 0xF, 0xCA, 0xF
	.byte 0xCB, 0xF, 0xCC, 0xF, 0xCD, 0xF, 0xCE, 0xF, 0xCF, 0xF
	.byte 0xD0, 0xF, 0xD1, 0xF
	thumb_func_end sub_80A8038

	thumb_func_start sub_80A8208
sub_80A8208:
	push {lr}
	ldr r6, off_80A8228 // =unk_2000B40 
	ldr r0, off_80A8218 // =off_80A821C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A8218: .word off_80A821C
off_80A821C: .word sub_80A822C+1
	.word sub_80A827C+1
	.word sub_80A829C+1
off_80A8228: .word unk_2000B40
	thumb_func_end sub_80A8208

	thumb_local_start
sub_80A822C:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x56 
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sub_80A8324
	bl sub_80A82DC
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #2
	bl sub_8002E14
	bl sub_80A82A4
	mov r4, r0
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r4,#2]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	ldrh r0, [r4,#4]
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A827C
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A822C

	thumb_local_start
sub_80A827C:
	push {r4-r7,lr}
	bl sub_80A82DC
	ldrb r1, [r5,#5]
	cmp r0, r1
	beq loc_80A8294
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_80A8294:
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A827C

	thumb_local_start
sub_80A829C:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A829C

	thumb_local_start
sub_80A82A4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_80A82B4
	mov r1, #3
	b loc_80A82B6
loc_80A82B4:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_80A82B6:
	lsl r1, r1, #2
	ldr r2, off_80A82C8 // =off_80A82CC 
	ldr r0, [r2,r1]
	ldrb r2, [r5,#4]
	mov r3, #8
	mul r2, r3
	add r0, r0, r2
	pop {pc}
	.balign 4, 0
off_80A82C8: .word off_80A82CC
off_80A82CC: .word byte_80A804C
	.word byte_80A8084
	.word byte_80A80CC
	.word byte_80A8114
	thumb_func_end sub_80A82A4

	thumb_local_start
sub_80A82DC:
	push {r4,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_80A82EC
	mov r1, #3
	b loc_80A82EE
loc_80A82EC:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_80A82EE:
	lsl r1, r1, #2
	ldr r2, off_80A8310 // =off_80A8314
	ldr r0, [r2,r1]
	ldrb r2, [r5,#4]
	lsl r2, r2, #1
	ldrh r3, [r0,r2]
	mov r4, #0
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80A830C
	mov r4, #1
	mov r0, #3
	bl sub_8002E14
loc_80A830C:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
off_80A8310: .word off_80A8314
off_80A8314: .word byte_80A81BE
	.word byte_80A81CC
	.word byte_80A81DE
	.word byte_80A81F0
	thumb_func_end sub_80A82DC

	thumb_local_start
sub_80A8324:
	push {r4-r7,lr}
	mov r0, #9
	mov r1, #0xd6
	bl TestEventFlagFromImmediate
	beq locret_80A8368
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r4, [r0,#oGameState_MapGroup]
	cmp r4, #0x85
	bne loc_80A833E
	mov r4, #3
	b loc_80A8340
loc_80A833E:
	ldrb r4, [r0,#oGameState_MapNumber]
loc_80A8340:
	lsl r4, r4, #2
	ldrb r6, [r5,#4]
	lsl r6, r6, #1
	ldr r2, off_80A836C // =off_80A8374 
	ldr r0, [r2,r4]
	ldrh r7, [r0,r6]
	ldr r2, off_80A8370 // =off_80A8384
	ldr r0, [r2,r4]
	ldrh r6, [r0,r6]
	mov r0, r7
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_80A8362
	// bitfield
	mov r0, r6
	bl SetEventFlag
	b locret_80A8368
loc_80A8362:
	mov r0, r6
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
locret_80A8368:
	pop {r4-r7,pc}
	.balign 4, 0
off_80A836C: .word off_80A8374
off_80A8370: .word off_80A8384
off_80A8374: .word byte_80A8174
	.word byte_80A8182
	.word byte_80A8194
	.word byte_80A81A6
off_80A8384: .word byte_80A81BE
	.word byte_80A81CC
	.word byte_80A81DE
	.word byte_80A81F0
	thumb_func_end sub_80A8324

	thumb_func_start sub_80A8394
sub_80A8394:
	push {lr}
	ldr r6, off_80A83B4 // =unk_2000B40 
	ldr r0, off_80A83A4 // =off_80A83A8 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A83A4: .word off_80A83A8
off_80A83A8: .word sub_80A83B8+1
	.word sub_80A8424+1
	.word sub_80A8484+1
off_80A83B4: .word unk_2000B40
	thumb_func_end sub_80A8394

	thumb_local_start
sub_80A83B8:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x52 
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sub_80A84C4
	bl sub_80A8548
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #9
	mov r1, #0xff
	bl ClearEventFlagFromImmediate
	mov r0, #9
	mov r1, #0xd7
	bl TestEventFlagFromImmediate
	beq loc_80A8418
	ldrh r0, [r6,#0x16]
	ldrh r1, [r6,#0x18]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	mov r2, #0
	str r2, [r5,#0x14]
	mov r0, #1
	strb r0, [r5,#9]
	mov r0, #9
	mov r1, #0xd7
	bl ClearEventFlagFromImmediate
loc_80A8418:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A8424
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A83B8

	thumb_local_start
sub_80A8424:
	push {r4-r7,lr}
	mov r0, #9
	mov r1, #0xff
	bl TestEventFlagFromImmediate
	beq loc_80A843A
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #1
	strb r0, [r5,#7]
	b loc_80A8478
loc_80A843A:
	bl IsCutsceneScriptNonNull // () -> zf
	bne loc_80A8478
	bl sub_809E462
	bne loc_80A8478
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A8478
	mov r0, #9
	mov r1, #0xd4
	bl TestEventFlagFromImmediate
	bne loc_80A8478
	mov r0, #1
	bl TestPETMenuDataFlag
	bne loc_80A8478
	ldrb r4, [r5,#9]
	cmp r4, #0
	bgt loc_80A8470
	bl sub_80A856C
	bne loc_80A8478
	add r4, #1
	strb r4, [r5,#9]
loc_80A8470:
	bl sub_80A85B4
	bl sub_80A860C
loc_80A8478:
	bl sub_80A8644
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A8424

	thumb_local_start
sub_80A8484:
	push {lr}
	ldr r0, off_80A84C0 // =byte_808C74C
	bl cutscene_checkOriginalCutsceneScriptPos_8036F70
	bne locret_80A84BC
	ldrb r0, [r5,#7]
	sub r0, #1
	strb r0, [r5,#7]
	bne locret_80A84BC
	mov r0, #0
	bl sub_8001172
	mov r0, #9
	mov r1, #0xd8
	bl ClearEventFlagFromImmediate
	mov r0, #9
	mov r1, #0xff
	bl ClearEventFlagFromImmediate
	mov r0, #9
	mov r1, #0xd9
	bl ClearEventFlagFromImmediate
	bl reqBBS_clearFlag_8140A0C
	bl FreeOverworldMapObject
locret_80A84BC:
	pop {pc}
	.balign 4, 0
off_80A84C0: .word byte_808C74C
	thumb_func_end sub_80A8484

	thumb_local_start
sub_80A84C4:
	push {r4-r7,lr}
	bl sub_80A84FC
	lsl r0, r0, #1
	ldr r1, off_80A84F4 // =math_cosTable 
	ldrsh r4, [r1,r0]
	ldr r1, off_80A84F8 // =math_sinTable 
	ldrsh r6, [r1,r0]
	mov r7, #0x60 
	lsl r7, r7, #8
	mul r4, r7
	mul r6, r7
	bl ReadOWPlayerObjectCoords
	add r0, r0, r4
	add r1, r1, r6
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	mov r3, #0x80
	lsl r3, r3, #0x10
	add r2, r2, r3
	str r2, [r5,#0x14]
	pop {r4-r7,pc}
	.balign 4, 0
off_80A84F4: .word math_cosTable
off_80A84F8: .word math_sinTable
	thumb_func_end sub_80A84C4

	thumb_local_start
sub_80A84FC:
	push {lr}
	mov r0, #8
	bl reqBBS_81409D0 // (int a1) -> int
	mov r1, r0
	ldr r2, off_80A850C // =byte_80A8510
	ldrb r0, [r2,r0]
	pop {pc}
	.balign 4, 0
off_80A850C: .word byte_80A8510
byte_80A8510: .byte 0x0, 0x1F, 0x3F, 0x7F, 0x9F, 0xBF, 0xDF, 0xFF
	thumb_func_end sub_80A84FC

	thumb_local_start
sub_80A8518:
	push {r4,lr}
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq loc_80A8536
	mov r4, r0
	ldr r0, off_80A853C // =byte_80A8540
	ldrb r0, [r0,r4]
	b locret_80A8538
loc_80A8536:
	ldrb r0, [r5,#4]
locret_80A8538:
	pop {r4,pc}
	.balign 4, 0
off_80A853C: .word byte_80A8540
byte_80A8540: .byte 0x1, 0x1, 0x0, 0x3, 0x2, 0x0, 0x0, 0x0
	thumb_func_end sub_80A8518

	thumb_local_start
sub_80A8548:
	push {r4,lr}
	ldrh r0, [r6,#0x1a]
	ldrh r1, [r6,#0x1c]
	bl sub_80A8518
	mov r4, r0
	ldrb r1, [r5,#4]
	cmp r0, r1
	beq locret_80A8568
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	strb r4, [r5,#4]
locret_80A8568:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A8548

	thumb_local_start
sub_80A856C:
	push {lr}
	mov r1, #4
	lsl r1, r1, #0x10
	ldr r0, [r5,#0x14]
	sub r0, r0, r1
	str r0, [r5,#0x14]
	cmp r0, #0
	bgt locret_80A857E
	mov r0, #0
locret_80A857E:
	pop {pc}
	thumb_func_end sub_80A856C

	thumb_local_start
sub_80A8580:
	push {r4,lr}
	mov r4, #0
	ldrh r0, [r6,#0x1a]
	ldrh r1, [r6,#0x1c]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, [r5,#0xc]
	ldr r3, [r5,#0x10]
	sub r0, r0, r2
	sub r1, r1, r3
	bl calcAngle_800117C
	cmp r0, #0x20 
	beq loc_80A85A0
	cmp r0, #0xa0
	bne loc_80A85A2
loc_80A85A0:
	mov r4, #4
loc_80A85A2:
	ldr r1, off_80A85A8 // =byte_80A85AC 
	ldr r0, [r1,r4]
	pop {r4,pc}
	.balign 4, 0
off_80A85A8: .word byte_80A85AC
byte_80A85AC: .byte 0x0, 0x40, 0x2, 0x0, 0x0, 0x20, 0x1, 0x0
	thumb_func_end sub_80A8580

	thumb_local_start
sub_80A85B4:
	push {r4-r7,lr}
	mov r4, #0
	bl sub_80A8548
	bl sub_80A8580
	mov r2, r0
	ldr r0, [r5,#0xc]
	ldrh r1, [r6,#0x1a]
	lsl r1, r1, #0x10
	cmp r0, r1
	beq loc_80A85E4
	bgt loc_80A85D8
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A85E4
	add r0, r0, r2
	b loc_80A85E0
loc_80A85D8:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A85E4
	sub r0, r0, r2
loc_80A85E0:
	mov r4, #1
	str r0, [r5,#0xc]
loc_80A85E4:
	ldr r0, [r5,#0x10]
	ldrh r1, [r6,#0x1c]
	lsl r1, r1, #0x10
	cmp r0, r1
	beq loc_80A8608
	bgt loc_80A85FC
	sub r3, r1, r0
	cmp r3, r2
	blt loc_80A8608
	add r0, r0, r2
	mov r4, #1
	b loc_80A8604
loc_80A85FC:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_80A8608
	sub r0, r0, r2
loc_80A8604:
	mov r4, #1
	str r0, [r5,#0x10]
loc_80A8608:
	str r4, [r6,#0xc]
	pop {r4-r7,pc}
	thumb_func_end sub_80A85B4

	thumb_local_start
sub_80A860C:
	push {r4,lr}
	movflag EVENT_1717_PLAYER_ADVANCE_FORWARD
	bl TestEventFlagFromImmediate
	bne locret_80A8640
	bl ReadOWPlayerObjectCoords
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r4, #8
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne locret_80A8640
	mov r0, #9
	mov r1, #0xd9
	bl SetEventFlagFromImmediate
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #0x50 
	strb r0, [r5,#7]
locret_80A8640:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A860C

	thumb_local_start
sub_80A8644:
	push {r4,lr}
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	strh r0, [r6,#0x16]
	strh r1, [r6,#0x18]
	pop {r4,pc}
	thumb_func_end sub_80A8644

	thumb_func_start sub_80A8654
sub_80A8654:
	push {r4-r7,lr}
	ldr r0, off_80A8664 // =off_80A8668 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A8664: .word off_80A8668
off_80A8668: .word sub_80A8674+1
	.word sub_80A86A0+1
	.word sub_80A86AC+1
	thumb_func_end sub_80A8654

	thumb_local_start
sub_80A8674:
	push {r4-r7,lr}
	bl sub_80A86B4
	mov r0, #0x80
	mov r1, #0x10
	mov r2, #0x27 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	str r0, [r5,#0x24]
	bl sub_80A86A0
	pop {r4-r7,pc}
	thumb_func_end sub_80A8674

	thumb_local_start
sub_80A86A0:
	push {r4-r7,lr}
	bl sub_80A86B4
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A86A0

	thumb_local_start
sub_80A86AC:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A86AC

	thumb_local_start
sub_80A86B4:
	push {r4-r7,lr}
	mov r4, #1
	bl sub_81421D8
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov r6, r0
	tst r0, r0
	beq loc_80A86EA
	bl sub_81421D0
	bl sub_8142190
	beq loc_80A86EA
	mov r4, #3
	ldrb r0, [r5,#4]
	cmp r0, #0
	bne loc_80A86EA
	ldr r0, [r5,#0x24]
	tst r0, r0
	bne loc_80A86EA
	mov r0, #1
	str r0, [r5,#0x24]
	mov r0, #0xbd
	bl PlaySoundEffect
loc_80A86EA:
	strb r4, [r5]
	mov r0, r6
	bl GetSoulWeaponCursorCameraCoords
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	bl ReadOWPlayerObjectCoords
	str r2, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	ldr r2, [r5,#0x14]
	mov r0, #0xc
	lsl r0, r0, #0x10
	add r0, r0, r2
	str r0, [r5,#0x14]
	mov r4, #4
	mov r0, r6
	bl sub_8142B04
	beq loc_80A871E
	mov r4, #5
loc_80A871E:
	mov r0, r4
	bl sprite_setPalette // (int pallete) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A86B4

	thumb_func_start sub_80A8728
sub_80A8728:
	push {r4-r7,lr}
	ldr r0, off_80A8738 // =off_80A873C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A8738: .word off_80A873C
off_80A873C: .word sub_80A8748+1
	.word sub_80A87D2+1
	.word sub_80A87E8+1
	thumb_func_end sub_80A8728

	thumb_local_start
sub_80A8748:
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_80A8754
	bl sub_81421D0
loc_80A8754:
	mov r6, r0
	ldr r7, off_80A87AC // =byte_80A87B0
	lsl r0, r0, #2
	add r7, r7, r0
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	ldrb r1, [r7]
	ldrb r2, [r7,#1]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl ReadOWPlayerObjectCoords
	str r2, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	ldr r0, [r5,#0x14]
	ldrb r1, [r7,#3]
	lsl r1, r1, #0x10
	add r0, r0, r1
	str r0, [r5,#0x14]
	ldr r0, off_80A87C4 // =byte_80A87C8
	lsl r6, r6, #1
	ldrh r0, [r0,r6]
	tst r0, r0
	beq loc_80A87A2
	bl PlaySoundEffect
loc_80A87A2:
	mov r0, #4
	strb r0, [r5,#8]
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A87AC: .word byte_80A87B0
byte_80A87B0: .byte 0x1C, 0x4F, 0x1, 0x0, 0x1C, 0x4F, 0x0, 0x0, 0x1C, 0x4F, 0x2
	.byte 0x0, 0x14, 0x4, 0x0, 0x10, 0x14, 0x4, 0x0, 0x8
off_80A87C4: .word byte_80A87C8
byte_80A87C8: .byte 0xFA, 0x0, 0xB0, 0x0, 0xA, 0x1, 0xAF, 0x0, 0x0, 0x0
	thumb_func_end sub_80A8748

	thumb_local_start
sub_80A87D2:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A87E2
	mov r0, #8
	strb r0, [r5,#8]
loc_80A87E2:
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A87D2

	thumb_local_start
sub_80A87E8:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A87E8

	thumb_func_start sub_80A87F0
sub_80A87F0:
	push {lr}
	ldr r6, off_80A8810 // =unk_2011A90 
	ldr r0, off_80A8800 // =off_80A8804 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A8800: .word off_80A8804
off_80A8804: .word sub_80A8814+1
	.word sub_80A8848+1
	.word sub_80A8860+1
off_80A8810: .word unk_2011A90
	thumb_func_end sub_80A87F0

	thumb_local_start
sub_80A8814:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A8848
	pop {r4-r7,pc}
	thumb_func_end sub_80A8814

	thumb_local_start
sub_80A8848:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A8858
	mov r0, #8
	strb r0, [r5,#8]
loc_80A8858:
	bl sprite_update
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_80A8848

	thumb_local_start
sub_80A8860:
	push {lr}
	movflag EVENT_5E0
	bl ClearEventFlagFromImmediate
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A8860

	thumb_func_start sub_80A8870
sub_80A8870:
	push {r4-r7,lr}
	ldr r0, off_80A8880 // =off_80A8884 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.byte 0, 0
off_80A8880: .word off_80A8884
off_80A8884: .word sub_80A8894+1
	.word sub_80A88E2+1
	.word sub_80A8918+1
	.word sub_80A8980+1
	thumb_func_end sub_80A8870

	thumb_local_start
sub_80A8894:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	ldr r2, off_80A88DC // =byte_80A88E0 
	ldrb r3, [r5,#5]
	ldrb r2, [r2,r3]
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #0
	str r0, [r5,#0x28]
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	str r0, [r5,#0x2c]
	str r1, [r5,#0x30]
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A88E2
	pop {r4-r7,pc}
	.balign 4, 0
off_80A88DC: .word byte_80A88E0
byte_80A88E0: .byte 0x67, 0x68
	thumb_func_end sub_80A8894

	thumb_local_start
sub_80A88E2:
	push {r4-r7,lr}
	bl sub_80A8988
	push {r4-r7}
	mov r6, #0x28 
	add r6, r6, r5
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	ldr r2, [r5,#0x14]
	ldr r3, =0x80a 
	ldr r4, =OW_OBJECT_INTERACTION_AREA_FLAG_0x40000
	ldr r5, =OW_OBJECT_INTERACTION_AREA_FLAG_0x10000
	bl createOWObjectInteractionArea_80037ac
	pop {r4-r7}
	mov r0, #0
	str r0, [r5,#0x28]
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
	.pool // 80A890C
	thumb_func_end sub_80A88E2

	thumb_local_start
sub_80A8918:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r3, off_80A8958 // =byte_80A895C
	ldrb r3, [r3,r0]
	cmp r3, #0xff
	beq loc_80A8948
	lsl r3, r3, #0x10
	ldr r0, [r5,#0x14]
	add r0, r0, r3
	str r0, [r5,#0x14]
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r1, off_80A896C // =byte_80A8970 
	ldrb r0, [r1,r0]
	lsl r1, r0, #0
	lsl r2, r0, #0
	lsl r1, r1, #5
	lsl r2, r2, #0xa
	orr r0, r1
	orr r0, r2
	bl sprite_setColorShader
	b loc_80A894C
loc_80A8948:
	bl FreeOverworldMapObject
loc_80A894C:
	ldr r0, [r5,#0x24]
	add r0, #1
	str r0, [r5,#0x24]
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8958: .word byte_80A895C
byte_80A895C: .byte 0x4, 0x4, 0x4, 0x3, 0x2, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
off_80A896C: .word byte_80A8970
byte_80A8970: .byte 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16, 0x18
	.byte 0x1A, 0x1C, 0x1E, 0x1F, 0x1F
	thumb_func_end sub_80A8918

	thumb_local_start
sub_80A8980:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A8980

	thumb_local_start
sub_80A8988:
	push {r4-r7,lr}
	ldr r0, [r5,#0x28]
	ldr r1, dword_80A89D8 // =0x10000 
	tst r0, r1
	beq locret_80A89D6
	ldrb r0, [r5,#5]
	tst r0, r0
	bne loc_80A89B4
	bl sprite_removeShadow
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #SOUND_UNK_73
	bl PlaySoundEffect
	ldrb r0, [r5,#4]
	bl sub_81430B6
	mov r0, r0
	bl SetEventFlag
	b locret_80A89D6
loc_80A89B4:
	bl sprite_removeShadow
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #0xa5
	add r0, #0xff
	bl PlaySoundEffect
	ldrb r0, [r5,#4]
	bl sub_81430B6
	// bitfield
	mov r0, r1
	bl SetEventFlag
	mov r0, #1
	bl sub_81433E4
locret_80A89D6:
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A89D8: .word 0x10000
	thumb_func_end sub_80A8988

	thumb_func_start sub_80A89DC
sub_80A89DC:
	push {r4-r7,lr}
	ldr r0, off_80A89EC // =off_80A89F0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A89EC: .word off_80A89F0
off_80A89F0: .word sub_80A89FC+1
	.word sub_80A8A50+1
	.word sub_80A8A74+1
	thumb_func_end sub_80A89DC

	thumb_local_start
sub_80A89FC:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x6a 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#4]
	add r0, #0x10
	lsr r0, r0, #5
	mov r1, #7
	and r0, r1
	ldr r1, off_80A8A44 // =byte_80A8A48 
	ldrb r0, [r1,r0]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A8A7C
	bl sub_80A8A7C
	bl sub_80A8A7C
	bl sub_80A8A7C
	bl sub_80A8A50
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8A44: .word byte_80A8A48
byte_80A8A48: .byte 0x3, 0x2, 0x1, 0x0, 0x7, 0x6, 0x5, 0x4
	thumb_func_end sub_80A89FC

	thumb_local_start
sub_80A8A50:
	push {r4-r7,lr}
	bl sub_80A8A7C
	mov r1, #6
	ldrsh r0, [r5,r1]
	cmp r0, #0
	bgt loc_80A8A62
	bl FreeOverworldMapObject
loc_80A8A62:
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A8A50

	thumb_local_start
sub_80A8A74:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A8A74

	thumb_local_start
sub_80A8A7C:
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	lsl r0, r0, #1
	ldr r1, off_80A8AAC // =math_sinTable 
	ldr r2, off_80A8AB0 // =math_cosTable 
	ldrsh r1, [r1,r0]
	ldrsh r2, [r2,r0]
	ldrb r0, [r5,#5]
	mul r1, r0
	mul r2, r0
	lsl r1, r1, #6
	lsl r2, r2, #6
	ldr r0, [r5,#0xc]
	add r0, r0, r1
	str r0, [r5,#0xc]
	ldr r0, [r5,#0x10]
	add r0, r0, r2
	str r0, [r5,#0x10]
	mov r1, #6
	ldrsh r0, [r5,r1]
	sub r0, #1
	blt locret_80A8AAA
	strh r0, [r5,r1]
locret_80A8AAA:
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8AAC: .word math_sinTable
off_80A8AB0: .word math_cosTable
	thumb_func_end sub_80A8A7C

	thumb_func_start sub_80A8AB4
sub_80A8AB4:
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	bl sub_81431F8
	mov r7, r0
	ldr r0, [r7,#8]
	ldr r1, [r7,#0xc]
	ldr r2, [r7,#0x10]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	ldr r0, off_80A8AE4 // =off_80A8AE8 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	ldr r2, [r5,#0x14]
	str r0, [r7,#8]
	str r1, [r7,#0xc]
	str r2, [r7,#0x10]
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8AE4: .word off_80A8AE8
off_80A8AE8: .word sub_80A8AF4+1
	.word sub_80A8B2C+1
	.word sub_80A8B24+1
	thumb_func_end sub_80A8AB4

	thumb_local_start
sub_80A8AF4:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x66 
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sub_80A8C7C
	strb r0, [r5,#7]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A8B2C
	pop {r4-r7,pc}
	thumb_func_end sub_80A8AF4

	thumb_local_start
sub_80A8B24:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A8B24

	thumb_local_start
sub_80A8B2C:
	push {r4-r7,lr}
	ldr r0, off_80A8B3C // =off_80A8B40 
	ldrb r1, [r7,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A8B3C: .word off_80A8B40
off_80A8B40: .word sub_80A8B4C+1
	.word sub_80A8BBC+1
	.word sub_80A8C08+1
	thumb_func_end sub_80A8B2C

	thumb_local_start
sub_80A8B4C:
	push {r4-r7,lr}
	bl sub_80A8DF0
	bne loc_80A8BA8
	bl sub_80A8DB0
	bl sub_80A8D42
	bl sub_80A8CCC
	ldr r0, dword_80A8BB8 // =0x85 
	bl sub_80A8D02
	lsr r0, r0, #8
	mov r1, #0xff
	and r0, r1
	lsl r0, r0, #1
	ldr r1, off_80A8BB0 // =math_cosTable 
	ldr r2, off_80A8BB4 // =math_sinTable 
	ldrsh r1, [r1,r0]
	ldrsh r2, [r2,r0]
	mov r0, #8
	mul r1, r0
	mul r2, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	ldr r0, [r5,#0xc]
	sub r0, r0, r1
	str r0, [r5,#0xc]
	ldr r0, [r5,#0x10]
	sub r0, r0, r2
	str r0, [r5,#0x10]
	bl ReadOWPlayerObjectCoords
	mov r0, #0x14
	lsl r0, r0, #0x10
	add r0, r0, r2
	str r0, [r5,#0x14]
	bl sub_80A8C98
	bl sub_80A8C7C
	bl sub_80A8CB8
	bl sub_80A8D7C
loc_80A8BA8:
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8BB0: .word math_cosTable
off_80A8BB4: .word math_sinTable
dword_80A8BB8: .word 0x85
	thumb_func_end sub_80A8B4C

	thumb_local_start
sub_80A8BBC:
	push {r4-r7,lr}
	bl sub_80A8DF0
	bne loc_80A8BFC
	bl sub_80A8DB0
	ldr r0, off_80A8C04 // =0x400 
	bl sub_80A8D02
	ldr r0, off_80A8C04 // =0x400 
	lsl r1, r1, #8
	cmp r1, #0
	bge loc_80A8BD8
	neg r1, r1
loc_80A8BD8:
	cmp r1, r0
	bgt loc_80A8BEC
	mov r0, #0
	strb r0, [r7,#1]
	ldrb r0, [r5,#4]
	bl sub_8143204
	ldrb r0, [r5,#4]
	bl sub_8143220
loc_80A8BEC:
	bl sub_80A8C98
	bl sub_80A8C7C
	bl sub_80A8CB8
	bl sub_80A8D7C
loc_80A8BFC:
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8C04: .word 0x400
	thumb_func_end sub_80A8BBC

	thumb_local_start
sub_80A8C08:
	push {r4-r7,lr}
	bl sub_80A8DF0
	bne loc_80A8C6C
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	ldr r2, [r0,#0x20]
	ldr r3, [r0,#0x1c]
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0xc]
	sub r0, r0, r2
	sub r1, r1, r3
	bl calcAngle_800117C
	lsl r0, r0, #8
	lsr r0, r0, #8
	mov r1, #0xff
	and r0, r1
	lsl r0, r0, #1
	ldr r1, off_80A8C74 // =math_cosTable 
	ldr r2, off_80A8C78 // =math_sinTable 
	ldrsh r1, [r1,r0]
	ldrsh r2, [r2,r0]
	mov r0, #0x80
	mul r1, r0
	mul r2, r0
	lsl r1, r1, #5
	lsl r2, r2, #5
	ldr r0, [r5,#0xc]
	add r0, r0, r1
	str r0, [r5,#0xc]
	ldr r0, [r5,#0x10]
	add r0, r0, r2
	str r0, [r5,#0x10]
	bl ReadOWPlayerObjectCoords
	mov r0, #0x14
	lsl r0, r0, #0x10
	add r0, r0, r2
	str r0, [r5,#0x14]
	bl sub_8002E04
	bne loc_80A8C68
	mov r0, #0
	strb r0, [r7]
	bl FreeOverworldMapObject
loc_80A8C68:
	bl sub_80A8C98
loc_80A8C6C:
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A8C74: .word math_cosTable
off_80A8C78: .word math_sinTable
	thumb_func_end sub_80A8C08

	thumb_local_start
sub_80A8C7C:
	push {r4-r7,lr}
	ldrh r0, [r7,#4]
	lsr r0, r0, #8
	add r0, #0x20 
	lsr r0, r0, #6
	mov r1, #3
	and r0, r1
	ldr r1, off_80A8C90 // =dword_80A8C94
	ldrb r0, [r1,r0]
	pop {r4-r7,pc}
off_80A8C90: .word dword_80A8C94
dword_80A8C94: .word 0x1000302
	thumb_func_end sub_80A8C7C

	thumb_local_start
sub_80A8C98:
	push {r4-r7,lr}
	ldr r4, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	str r4, [r5,#0x14]
	bl sub_8002E14
	pop {r4-r7,pc}
	thumb_func_end sub_80A8C98

	thumb_local_start
sub_80A8CB8:
	push {r4-r7,lr}
	ldrb r1, [r5,#7]
	cmp r0, r1
	beq locret_80A8CCA
	strb r0, [r5,#7]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_80A8CCA:
	pop {r4-r7,pc}
	thumb_func_end sub_80A8CB8

	thumb_local_start
sub_80A8CCC:
	push {r4-r7,lr}
	ldrb r0, [r7]
	cmp r0, #2
	bne loc_80A8CFA
	ldrh r0, [r7,#2]
	sub r0, #1
	strh r0, [r7,#2]
	bgt locret_80A8D00
	bl GetRNG2 // () -> int
	mov r1, #0x60 
	svc 6
	lsl r6, r1, #8
	bl GetRNG2 // () -> int
	mov r1, #7
	and r0, r1
	cmp r0, #4
	bge loc_80A8CF4
	neg r6, r6
loc_80A8CF4:
	ldrh r0, [r7,#4]
	add r0, r0, r6
	strh r0, [r7,#4]
loc_80A8CFA:
	ldrb r0, [r5,#4]
	bl sub_8143220
locret_80A8D00:
	pop {r4-r7,pc}
	thumb_func_end sub_80A8CCC

	thumb_local_start
sub_80A8D02:
	push {r4-r7,lr}
	mov r4, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	ldr r2, [r0,#0x20]
	ldr r3, [r0,#0x1c]
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0xc]
	sub r0, r0, r2
	sub r1, r1, r3
	bl calcAngle_800117C
	lsl r0, r0, #8
	ldrh r1, [r7,#4]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r1, r0
	cmp r1, #0
	bge loc_80A8D2E
	neg r1, r1
loc_80A8D2E:
	cmp r1, r4
	ble loc_80A8D34
	mov r1, r4
loc_80A8D34:
	cmp r0, #0
	bge loc_80A8D3A
	neg r1, r1
loc_80A8D3A:
	ldrh r0, [r7,#4]
	add r0, r0, r1
	strh r0, [r7,#4]
	pop {r4-r7,pc}
	thumb_func_end sub_80A8D02

	thumb_local_start
sub_80A8D42:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	ldr r2, [r0,#0x20]
	ldr r3, [r0,#0x1c]
	ldr r0, [r5,#0x10]
	ldr r1, [r5,#0xc]
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_80014D4
	ldr r1, dword_80A8D78 // =0x14 
	lsl r1, r1, #0x10
	cmp r0, r1
	bge loc_80A8D70
	ldrh r0, [r7,#6]
	sub r0, #1
	strh r0, [r7,#6]
	bgt locret_80A8D76
	mov r0, #4
	strb r0, [r7,#1]
	b locret_80A8D76
loc_80A8D70:
	ldrb r0, [r5,#4]
	bl sub_8143204
locret_80A8D76:
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A8D78: .word 0x14
	thumb_func_end sub_80A8D42

	thumb_local_start
sub_80A8D7C:
	push {r4-r7,lr}
	push {r4-r7}
	mov r6, #0x24 
	add r6, r6, r5
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	ldr r2, [r5,#0x14]
	mov r3, #0x14
	lsl r3, r3, #0x10
	sub r2, r2, r3
	ldr r3, =0x808 
	ldr r4, =OW_OBJECT_INTERACTION_AREA_FLAG_0x40000
	ldr r5, =OW_OBJECT_INTERACTION_AREA_FLAG_0x10000
	bl createOWObjectInteractionArea_80037ac
	pop {r4-r7}
	mov r0, #0
	str r0, [r5,#0x24]
	pop {r4-r7,pc}
	.balign 4, 0
	.pool // 80A8DA4
	thumb_func_end sub_80A8D7C

	thumb_local_start
sub_80A8DB0:
	push {r4-r7,lr}
	bl sub_8034C36
	beq locret_80A8DE6
	bl sub_8002E04
	beq loc_80A8E0A
	ldr r0, [r5,#0x24]
	ldr r1, dword_80A8DE8 // =0x10000 
	tst r0, r1
	beq locret_80A8DE6
	bl sub_8143088
	mov r1, r0
	ldr r0, dword_80A8DEC // =byte_808C2F0
	bl StartCutscene
	mov r0, #0x23 
	add r0, #0xff
	bl PlaySoundEffect
	ldrb r0, [r5,#4]
	bl sub_8143204
	ldrb r0, [r5,#4]
	bl sub_8143220
locret_80A8DE6:
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A8DE8: .word 0x10000
dword_80A8DEC: .word 0x808C315
	thumb_func_end sub_80A8DB0

	thumb_local_start
sub_80A8DF0:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A8E18
	ldr r0, byte_80A8E20 // =0xf0
	bl cutscene_checkOriginalCutsceneScriptPos_8036F70
	bne loc_80A8E0A
	bl IsCutsceneScriptNonNull // () -> zf
	bne loc_80A8E18
loc_80A8E0A:
	bl sub_809E462
	bne loc_80A8E18
	bl IsScreenFadeActive // () -> zf
	beq loc_80A8E18
	mov r4, #0
loc_80A8E18:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0
byte_80A8E20: .byte 0xF0, 0xC2, 0x8, 0x8, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x1, 0x0, 0x3C, 0x0
	.byte 0x78, 0x0, 0x9E, 0xFF, 0x3C, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x1, 0x0
	.byte 0x3C, 0x0, 0x78, 0x0, 0x28, 0x0, 0xA0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.byte 0x1, 0x0, 0x28, 0x0, 0x8C, 0x0, 0x6, 0xFF, 0x8E, 0x0, 0x0, 0x0, 0x4, 0x0
	.byte 0x0, 0x0, 0x2, 0x0, 0x28, 0x0, 0x78, 0x0, 0xD4, 0xFF, 0x9C, 0xFF, 0x0, 0x0
	.byte 0x3, 0x0, 0x0, 0x80, 0x1, 0x0, 0x28, 0x0, 0x78, 0x0, 0x7E, 0xFF, 0x58, 0x1
	thumb_func_end sub_80A8DF0

	thumb_func_start sub_80A8E74
sub_80A8E74:
	push {lr}
	ldr r6, off_80A8E98 // =unk_2000310 
	ldr r0, off_80A8E84 // =off_80A8E88 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A8E84: .word off_80A8E88
off_80A8E88: .word sub_80A8E9C+1
	.word sub_80A8F08+1
	.word sub_80A8FA0+1
	.word sub_80A8FE4+1
off_80A8E98: .word unk_2000310
	thumb_func_end sub_80A8E74

	thumb_local_start
sub_80A8E9C:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x6c 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0x18
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	bl sub_80A90B0
	mov r0, #0xb
	mov r1, #0xfb
	bl TestEventFlagFromImmediate
	beq loc_80A8EEA
	bl sub_80A91D4
	beq loc_80A8EE4
	mov r0, #0xc
	strb r0, [r5,#8]
	bl sub_80A8FFC
	pop {r4-r7,pc}
loc_80A8EE4:
	bl sub_80A9268
	b loc_80A8EF8
loc_80A8EEA:
	mov r0, #0
	mov r1, #0x28 
	strb r0, [r5,r1]
	strb r0, [r5,#9]
	mov r0, #1
	mov r1, #0x24 
	strb r0, [r5,r1]
loc_80A8EF8:
	bl sub_80A908C
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A8F08
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A8E9C

	thumb_local_start
sub_80A8F08:
	push {r4-r7,lr}
	mov r0, #0xb
	mov r1, #0xef
	bl TestEventFlagFromImmediate
	beq loc_80A8F1E
	mov r0, #8
	strb r0, [r5,#8]
	bl sub_80A8FA0
	b loc_80A8F3A
loc_80A8F1E:
	bl cutscene_checkOriginalCutsceneScriptPos_8036F40 // () -> zf
	bne loc_80A8F3A
	bl cutscene_checkOriginalCutsceneScriptPos_8036F58
	bne loc_80A8F3A
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	bne loc_80A8F3A
	bl sub_80A8F48
	bl sub_80A91A4
loc_80A8F3A:
	bl sub_80A91F4
	bl sprite_update
	bl sub_80A9218
	pop {r4-r7,pc}
	thumb_func_end sub_80A8F08

	thumb_local_start
sub_80A8F48:
	push {r4-r7,lr}
	ldrb r4, [r5,#9]
	cmp r4, #0
	bgt loc_80A8F90
	mov r1, #0x24 
	ldrb r0, [r5,r1]
	sub r0, #1
	strb r0, [r5,r1]
	beq loc_80A8F72
	bl sub_80A9038
	bl sub_80A90CC
	beq locret_80A8F9E
	mov r0, #0x26 
	ldrb r0, [r5,r0]
	mov r1, #0x24 
	strb r0, [r5,r1]
	bl sub_80A90E4
	b locret_80A8F9E
loc_80A8F72:
	mov r0, #0x26 
	ldrb r0, [r5,r0]
	mov r1, #0x24 
	strb r0, [r5,r1]
	bl sub_80A9004
	bl sub_80A9150
	beq locret_80A8F9E
	add r4, #1
	strb r4, [r5,#9]
	mov r0, #0x27 
	ldrb r0, [r5,r0]
	mov r1, #0x25 
	strb r0, [r5,r1]
loc_80A8F90:
	mov r1, #0x25 
	ldrb r0, [r5,r1]
	sub r0, #1
	strb r0, [r5,r1]
	bne locret_80A8F9E
	mov r4, #0
	strb r4, [r5,#9]
locret_80A8F9E:
	pop {r4-r7,pc}
	thumb_func_end sub_80A8F48

	thumb_local_start
sub_80A8FA0:
	push {lr}
	bl sub_80A91D4
	beq loc_80A8FC6
	mov r0, #0x19
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xc
	strb r0, [r5,#8]
	ldr r0, off_80A8FE0 // =0x160 
	bl PlaySoundEffect
	bl sub_80A8FE4
	b loc_80A8FD8
loc_80A8FC6:
	mov r0, #0xb
	mov r1, #0xef
	bl TestEventFlagFromImmediate
	bne loc_80A8FD8
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A8F08
loc_80A8FD8:
	bl sprite_update
	pop {pc}
	.balign 4, 0
off_80A8FE0: .word 0x160
	thumb_func_end sub_80A8FA0

	thumb_local_start
sub_80A8FE4:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A8FF4
	bl FreeOverworldMapObject
loc_80A8FF4:
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A8FE4

	thumb_local_start
sub_80A8FFC:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A8FFC

	thumb_local_start
sub_80A9004:
	push {lr}
	mov r0, #8
	bl reqBBS_81409D0 // (int a1) -> int
	mov r1, #0x31 
	mov r3, #0x19
	ldrb r2, [r5,#4]
	add r1, r1, r2
	add r3, r3, r2
	ldrb r2, [r6,r1]
	strb r3, [r6,r3]
	cmp r0, r2
	bne loc_80A9028
	cmp r0, #7
	blt loc_80A9026
	mov r0, #0
	b loc_80A9028
loc_80A9026:
	add r0, #1
loc_80A9028:
	strb r0, [r6,r1]
	strb r0, [r5,#5]
	mov r1, #0x28 
	ldrb r0, [r5,r1]
	add r0, #1
	strb r0, [r5,r1]
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A9004

	thumb_local_start
sub_80A9038:
	push {r4,lr}
	ldr r4, [r5,#0x2c]
	ldrb r0, [r5,#5]
	ldr r1, [r5,#0xc]
	ldr r2, [r5,#0x10]
	cmp r0, #0
	bne loc_80A904C
	add r1, r1, r4
	sub r2, r2, r4
	b loc_80A9086
loc_80A904C:
	cmp r0, #1
	bne loc_80A9054
	add r1, r1, r4
	b loc_80A9086
loc_80A9054:
	cmp r0, #3
	bne loc_80A905C
	add r2, r2, r4
	b loc_80A9086
loc_80A905C:
	cmp r0, #4
	bne loc_80A9066
	sub r1, r1, r4
	add r2, r2, r4
	b loc_80A9086
loc_80A9066:
	cmp r0, #5
	bne loc_80A906E
	sub r1, r1, r4
	b loc_80A9086
loc_80A906E:
	cmp r0, #7
	bne loc_80A9076
	sub r2, r2, r4
	b loc_80A9086
loc_80A9076:
	ldr r4, [r5,#0x30]
	cmp r0, #2
	bne loc_80A9082
	add r1, r1, r4
	add r2, r2, r4
	b loc_80A9086
loc_80A9082:
	sub r1, r1, r4
	sub r2, r2, r4
loc_80A9086:
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	pop {r4,pc}
	thumb_func_end sub_80A9038

	thumb_local_start
sub_80A908C:
	push {r7,lr}
	bl sub_80A916C
	mov r7, r0
	ldr r0, [r7]
	str r0, [r5,#0x2c]
	lsr r0, r0, #1
	str r0, [r5,#0x30]
	ldrh r0, [r7,#4]
	mov r1, #0x26 
	strb r0, [r5,r1]
	ldrh r0, [r7,#6]
	mov r1, #0x27 
	strb r0, [r5,r1]
	ldrh r0, [r7,#0xc]
	strb r0, [r5,#7]
	pop {r7,pc}
	.byte 0, 0
	thumb_func_end sub_80A908C

	thumb_local_start
sub_80A90B0:
	push {r7,lr}
	bl sub_80A916C
	mov r7, r0
	ldrh r0, [r7,#8]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r7,#0xa]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	mov r0, #0x40 
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	pop {r7,pc}
	thumb_func_end sub_80A90B0

	thumb_local_start
sub_80A90CC:
	push {r4,lr}
	mov r4, #0
	mov r0, #0xc
	add r0, r0, r5
	bl sub_8031A7A
	cmp r0, #0xc0
	bne loc_80A90DE
	mov r4, #1
loc_80A90DE:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	thumb_func_end sub_80A90CC

	thumb_local_start
sub_80A90E4:
	push {r4-r7,lr}
	ldrb r4, [r5,#4]
loc_80A90E8:
	mov r0, #8
	bl reqBBS_81409D0 // (int a1) -> int
	ldrb r1, [r5,#5]
	strb r1, [r5,#6]
	cmp r0, r1
	beq loc_80A90E8
	strb r0, [r5,#5]
	ldr r0, [r5,#0xc]
	str r0, [r5,#0x18]
	ldr r0, [r5,#0x10]
	str r0, [r5,#0x1c]
	bl sub_80A9038
	bl sub_80A90CC
	beq loc_80A9118
	ldr r0, [r5,#0x18]
	str r0, [r5,#0xc]
	ldr r0, [r5,#0x1c]
	str r0, [r5,#0x10]
	ldrb r1, [r5,#6]
	strb r1, [r5,#5]
	b loc_80A90E8
loc_80A9118:
	ldrb r0, [r5,#5]
	mov r1, #0x19
	ldrb r2, [r5,#4]
	add r1, r1, r2
	ldrb r1, [r6,r1]
	cmp r0, r1
	bne loc_80A9132
	cmp r0, #7
	beq loc_80A912E
	add r0, #1
	b loc_80A912E
loc_80A912E:
	mov r0, #0
	ldrb r0, [r5,#5]
loc_80A9132:
	mov r1, #0x31 
	mov r2, #0x19
	ldrb r3, [r5,#4]
	add r1, r1, r3
	add r2, r2, r3
	ldrb r0, [r6,r1]
	strb r0, [r6,r2]
	ldrb r0, [r5,#6]
	strb r0, [r6,r1]
	mov r1, #0x28 
	ldrb r0, [r5,r1]
	add r0, #1
	strb r0, [r5,r1]
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_80A90E4

	thumb_local_start
sub_80A9150:
	push {lr}
	mov r3, #0
	mov r1, #0x28 
	ldrb r0, [r5,r1]
	ldrb r2, [r5,#7]
	cmp r0, r2
	blt loc_80A9164
	mov r3, #1
	mov r0, #0
	strb r0, [r5,r1]
loc_80A9164:
	mov r0, r3
	tst r0, r0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A9150

	thumb_local_start
sub_80A916C:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_80A917C
	mov r1, #3
	b loc_80A917E
loc_80A917C:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_80A917E:
	lsl r1, r1, #2
	ldr r2, off_80A9190 // =off_80A9194 
	ldr r0, [r2,r1]
	ldrb r2, [r5,#4]
	mov r3, #0x10
	mul r2, r3
	add r0, r0, r2
	pop {pc}
	.balign 4, 0
off_80A9190: .word off_80A9194
off_80A9194: .word byte_81436B4
	.word byte_81436C4
	.word byte_81436E4
	.word byte_8143704
	thumb_func_end sub_80A916C

	thumb_local_start
sub_80A91A4:
	push {r4,lr}
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate
	beq locret_80A91D0
	bl ReadOWPlayerObjectCoords
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r4, #0x14
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne locret_80A91D0
	mov r0, #0xb
	mov r1, #0xe6
	bl SetEventFlagFromImmediate
locret_80A91D0:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A91A4

	thumb_local_start
sub_80A91D4:
	push {lr}
	ldr r0, off_80A91E8 // =byte_80A91EC
	ldrb r1, [r5,#4]
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {pc}
	.balign 4, 0
off_80A91E8: .word byte_80A91EC
byte_80A91EC: .byte 0xE9, 0xB, 0xEA, 0xB, 0xEB, 0xB, 0x0, 0x0
	thumb_func_end sub_80A91D4

	thumb_local_start
sub_80A91F4:
	push {lr}
	mov r0, #0xb
	mov r1, #0xe6
	bl TestEventFlagFromImmediate
	beq loc_80A9208
	mov r0, #1
	bl sub_8002E14
	b locret_80A9214
loc_80A9208:
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
locret_80A9214:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_80A91F4

	thumb_local_start
sub_80A9218:
	push {r4,lr}
	ldrb r4, [r5,#4]
	ldrb r0, [r5,#9]
	mov r1, #0x28 
	add r1, r1, r4
	strb r0, [r6,r1]
	ldrb r0, [r5,#5]
	mov r1, #0x31 
	add r1, r1, r4
	strb r0, [r6,r1]
	mov r1, #0x24 
	ldrb r0, [r5,r1]
	mov r1, #0x37 
	add r1, r1, r4
	strb r0, [r6,r1]
	mov r1, #0x25 
	ldrb r0, [r5,r1]
	mov r1, #0x3a 
	add r1, r1, r4
	strb r0, [r6,r1]
	mov r1, #0x28 
	ldrb r0, [r5,r1]
	mov r1, #0x3d 
	add r1, r1, r4
	strb r0, [r6,r1]
	ldr r0, [r5,#0xc]
	asr r0, r0, #0x10
	mov r1, #0x40 
	mov r2, r4
	lsl r2, r2, #1
	add r1, r1, r2
	strh r0, [r6,r1]
	ldr r0, [r5,#0x10]
	asr r0, r0, #0x10
	mov r1, #0x46 
	mov r2, r4
	lsl r2, r2, #1
	add r1, r1, r2
	strh r0, [r6,r1]
	pop {r4,pc}
	thumb_func_end sub_80A9218

	thumb_local_start
sub_80A9268:
	push {r4,lr}
	ldrb r4, [r5,#4]
	mov r1, #0x28 
	add r1, r1, r4
	ldrb r0, [r6,r1]
	strb r0, [r5,#9]
	mov r1, #0x31 
	add r1, r1, r4
	ldrb r0, [r6,r1]
	strb r0, [r5,#5]
	mov r1, #0x37 
	add r1, r1, r4
	ldrb r0, [r6,r1]
	mov r1, #0x24 
	strb r0, [r5,r1]
	mov r1, #0x3a 
	add r1, r1, r4
	ldrb r0, [r6,r1]
	mov r1, #0x25 
	strb r0, [r5,r1]
	mov r1, #0x3d 
	add r1, r1, r4
	ldrb r0, [r6,r1]
	mov r1, #0x28 
	strb r0, [r5,r1]
	mov r1, #0x40 
	mov r2, r4
	lsl r2, r2, #1
	add r1, r1, r2
	ldrsh r0, [r6,r1]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	mov r1, #0x46 
	mov r2, r4
	lsl r2, r2, #1
	add r1, r1, r2
	ldrsh r0, [r6,r1]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	pop {r4,pc}
	thumb_func_end sub_80A9268

	thumb_func_start sub_80A92B8
sub_80A92B8:
	push {lr}
	ldr r6, off_80A92DC // =unk_2000310 
	ldr r0, off_80A92C8 // =off_80A92CC 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A92C8: .word off_80A92CC
off_80A92CC: .word sub_80A92E0+1
	.word sub_80A931C+1
	.word sub_80A9360+1
	.word sub_80A93D0+1
off_80A92DC: .word unk_2000310
	thumb_func_end sub_80A92B8

	thumb_local_start
sub_80A92E0:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x6c 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#5]
	bl sub_8002E14
	ldrb r0, [r6,#0x1c]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	strb r0, [r5,#6]
	strb r0, [r5,#7]
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A931C
	pop {r4-r7,pc}
	thumb_func_end sub_80A92E0

	thumb_local_start
sub_80A931C:
	push {r4-r7,lr}
	mov r0, #0xb
	mov r1, #0xe6
	bl TestEventFlagFromImmediate
	beq loc_80A933E
	mov r0, #3
	bl sub_8002E14
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #SOUND_HIT_6B
	bl PlaySoundEffect
	bl sub_80A9360
	b loc_80A935A
loc_80A933E:
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate
	beq loc_80A9352
	mov r0, #0xc
	strb r0, [r5,#8]
	bl sub_80A93D0
	b loc_80A935A
loc_80A9352:
	bl sub_80A93D8
	bl sub_80A93E8
loc_80A935A:
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A931C

	thumb_local_start
sub_80A9360:
	push {r4-r7,lr}
	bl sub_80A93D8
	bl sub_80A937C
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A9360

	thumb_local_start
sub_80A937C:
	push {lr}
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r3, off_80A93BC // =byte_80A93C0
	ldrb r3, [r3,r0]
	cmp r3, #0xff
	beq loc_80A93A4
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r1, off_80A93BC // =byte_80A93C0
	ldrb r0, [r1,r0]
	lsl r1, r0, #0
	lsl r2, r0, #0
	lsl r1, r1, #5
	lsl r2, r2, #0xa
	orr r0, r1
	orr r0, r2
	bl sprite_setColorShader
	b loc_80A93B4
loc_80A93A4:
	mov r0, #0xc
	strb r0, [r5,#8]
	bl sub_80A93D0
	mov r0, #0xb
	mov r1, #0xe7
	bl SetEventFlagFromImmediate
loc_80A93B4:
	ldr r0, [r5,#0x24]
	add r0, #1
	str r0, [r5,#0x24]
	pop {pc}
	.balign 4, 0
off_80A93BC: .word byte_80A93C0
byte_80A93C0: .byte 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16, 0x18
	.byte 0x1A, 0x1C, 0x1E, 0x1F, 0xFF
	thumb_func_end sub_80A937C

	thumb_local_start
sub_80A93D0:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A93D0

	thumb_local_start
sub_80A93D8:
	push {lr}
	ldr r0, dword_80A93E4 // =0xe000000 
	bl sprite_setUnk0x2c
	pop {pc}
	.balign 4, 0
dword_80A93E4: .word 0xE000000
	thumb_func_end sub_80A93D8

	thumb_local_start
sub_80A93E8:
	push {lr}
	ldrb r0, [r5,#6]
	cmp r0, #0
	bne loc_80A9410
	ldrb r0, [r5,#7]
	add r0, #1
	strb r0, [r5,#7]
	cmp r0, #0x18
	blt loc_80A9404
	mov r0, #1
	strb r0, [r5,#6]
	mov r0, #0
	strb r0, [r5,#7]
	b locret_80A942E
loc_80A9404:
	mov r0, #1
	lsl r0, r0, #0xe
	ldr r1, [r5,#0x14]
	sub r1, r1, r0
	str r1, [r5,#0x14]
	b locret_80A942E
loc_80A9410:
	ldrb r0, [r5,#7]
	add r0, #1
	strb r0, [r5,#7]
	cmp r0, #0x18
	blt loc_80A9424
	mov r0, #0
	strb r0, [r5,#6]
	mov r0, #0
	strb r0, [r5,#7]
	b locret_80A942E
loc_80A9424:
	mov r0, #1
	lsl r0, r0, #0xe
	ldr r1, [r5,#0x14]
	add r1, r1, r0
	str r1, [r5,#0x14]
locret_80A942E:
	pop {pc}
	thumb_func_end sub_80A93E8

	thumb_func_start sub_80A9430
sub_80A9430:
	push {lr}
	ldr r6, off_80A9454 // =unk_2000310 
	ldr r0, off_80A9440 // =off_80A9444 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A9440: .word off_80A9444
off_80A9444: .word sub_80A9458+1
	.word sub_80A94DC+1
	.word sub_80A94F8+1
	.word sub_80A9568+1
off_80A9454: .word unk_2000310
	thumb_func_end sub_80A9430

	thumb_local_start
sub_80A9458:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x6b 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #2
	bl sub_8002E14
	bl sub_80A9570
	mov r4, r0
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	str r0, [r5,#0xc]
	ldrh r0, [r4,#2]
	lsl r0, r0, #0x10
	str r0, [r5,#0x10]
	ldrh r0, [r4,#4]
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	ldrb r0, [r4,#7]
	strb r0, [r5,#4]
	bl sprite_setPalette // (int pallete) -> void
	ldrb r0, [r4,#6]
	strb r0, [r5,#7]
	cmp r0, #0
	beq loc_80A94AC
	bl sprite_hasShadow
	bl sub_80A95EC
loc_80A94AC:
	mov r0, #0xb
	mov r1, #0xfc
	bl ClearEventFlagFromImmediate
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #0xb
	mov r1, #0xfb
	bl TestEventFlagFromImmediate
	beq loc_80A94D2
	bl sub_80A9628
	beq loc_80A94D2
	mov r0, #0xc
	strb r0, [r5,#8]
	bl sub_80A9568
	pop {r4-r7,pc}
loc_80A94D2:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A94DC
	pop {r4-r7,pc}
	thumb_func_end sub_80A9458

	thumb_local_start
sub_80A94DC:
	push {r4-r7,lr}
	mov r0, #0xb
	mov r1, #0xfc
	bl TestEventFlagFromImmediate
	bne loc_80A94EC
	bl sub_80A95A8
loc_80A94EC:
	bl sub_80A95EC
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A94DC

	thumb_local_start
sub_80A94F8:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r3, off_80A9540 // =byte_80A9544
	ldrb r3, [r3,r0]
	cmp r3, #0xff
	beq loc_80A9528
	lsl r3, r3, #0x10
	ldr r0, [r5,#0x14]
	add r0, r0, r3
	str r0, [r5,#0x14]
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r1, off_80A9554 // =byte_80A9558 
	ldrb r0, [r1,r0]
	lsl r1, r0, #0
	lsl r2, r0, #0
	lsl r1, r1, #5
	lsl r2, r2, #0xa
	orr r0, r1
	orr r0, r2
	bl sprite_setColorShader
	b loc_80A9534
loc_80A9528:
	mov r0, #0xb
	mov r1, #0xfc
	bl ClearEventFlagFromImmediate
	bl sub_80A9568
loc_80A9534:
	ldr r0, [r5,#0x24]
	add r0, #1
	str r0, [r5,#0x24]
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80A9540: .word byte_80A9544
byte_80A9544: .byte 0x4, 0x4, 0x4, 0x3, 0x2, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
off_80A9554: .word byte_80A9558
byte_80A9558: .byte 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16, 0x18
	.byte 0x1A, 0x1C, 0x1E, 0x1F, 0x1F
	thumb_func_end sub_80A94F8

	thumb_local_start
sub_80A9568:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A9568

	thumb_local_start
sub_80A9570:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_80A9580
	mov r1, #3
	b loc_80A9582
loc_80A9580:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_80A9582:
	lsl r1, r1, #2
	ldr r2, off_80A9594 // =off_80A9598 
	ldr r0, [r2,r1]
	ldrb r2, [r5,#4]
	mov r3, #8
	mul r2, r3
	add r0, r0, r2
	pop {pc}
	.balign 4, 0
off_80A9594: .word off_80A9598
off_80A9598: .word byte_8143724
	.word byte_814375C
	.word byte_8143794
	.word byte_81437CC
	thumb_func_end sub_80A9570

	thumb_local_start
sub_80A95A8:
	push {r4,lr}
	bl ReadOWPlayerObjectCoords
	ldr r3, [r5,#0x14]
	cmp r2, r3
	bne locret_80A95E6
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r4, #0xc
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne locret_80A95E6
	mov r0, #0xb
	mov r1, #0xfc
	bl SetEventFlagFromImmediate
	ldrb r0, [r5,#4]
	strb r0, [r6,#4]
	bl sub_80A9614
	bl sprite_removeShadow
	mov r0, #8
	strb r0, [r5,#8]
	ldr r0, off_80A95E8 // =0x1a4 
	bl PlaySoundEffect
locret_80A95E6:
	pop {r4,pc}
	.balign 4, 0
off_80A95E8: .word 0x1A4
	thumb_func_end sub_80A95A8

	thumb_local_start
sub_80A95EC:
	push {r4,lr}
	ldrb r0, [r5,#7]
	cmp r0, #0
	beq locret_80A9610
	bl ReadOWPlayerObjectCoords
	cmp r2, #0
	bne loc_80A9604
	mov r0, #3
	bl sub_8002E14
	b locret_80A9610
loc_80A9604:
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
locret_80A9610:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A95EC

	thumb_local_start
sub_80A9614:
	push {r4,lr}
	ldrb r0, [r5,#4]
	lsl r0, r0, #1
	ldr r1, off_80A9644 // =byte_80A9648
	ldrh r0, [r1,r0]
	mov r0, r0
	bl SetEventFlag
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A9614

	thumb_local_start
sub_80A9628:
	push {r4,lr}
	mov r4, #0
	ldrb r0, [r5,#4]
	lsl r0, r0, #1
	ldr r1, off_80A9644 // =byte_80A9648
	ldrh r0, [r1,r0]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80A963E
	mov r4, #1
loc_80A963E:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	.balign 4, 0
off_80A9644: .word byte_80A9648
byte_80A9648: .byte 0xF4, 0xB, 0xF5, 0xB, 0xF6, 0xB, 0xF7, 0xB, 0xF8, 0xB
	.byte 0xF9, 0xB, 0xFA, 0xB, 0x0, 0x0
	thumb_func_end sub_80A9628

	thumb_func_start sub_80A9658
sub_80A9658:
	push {lr}
	ldr r6, off_80A967C // =unk_2000310 
	ldr r0, off_80A9668 // =off_80A966C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A9668: .word off_80A966C
off_80A966C: .word sub_80A9680+1
	.word sub_80A96C8+1
	.word sub_80A96F0+1
	.word sub_80A96FC+1
off_80A967C: .word unk_2000310
	thumb_func_end sub_80A9658

	thumb_local_start
sub_80A9680:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x6b 
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #8
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #0
	str r0, [r5,#0x24]
	bl sub_80A97F4
	ldr r0, dword_80A96C4 // =0x1b3 
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A96C8
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A96C4: .word 0x1B3
	thumb_func_end sub_80A9680

	thumb_local_start
sub_80A96C8:
	push {r4-r7,lr}
	bl sub_80A979C
	bl sub_80A971C
	beq loc_80A96EA
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #7
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_80A974C
loc_80A96EA:
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80A96C8

	thumb_local_start
sub_80A96F0:
	push {lr}
	bl sub_80A974C
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A96F0

	thumb_local_start
sub_80A96FC:
	push {lr}
	bl FreeOverworldMapObject
	mov r0, #0xb
	mov r1, #0xe8
	bl ClearEventFlagFromImmediate
	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate
	movflag EVENT_1739
	bl ClearEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_80A96FC

	thumb_local_start
sub_80A971C:
	push {r4,lr}
	mov r4, #0
	mov r0, #0xb
	mov r1, #0xe5
	bl TestEventFlagFromImmediate
	beq loc_80A9744
	mov r0, #0xb
	mov r1, #0xe8
	bl TestEventFlagFromImmediate
	bne loc_80A9744
	ldrb r0, [r6,#6]
	mov r1, #0x19
	cmp r0, r1
	blt loc_80A9746
	sub r0, r0, r1
	ldrb r1, [r5,#4]
	cmp r0, r1
	bne loc_80A9746
loc_80A9744:
	mov r4, #1
loc_80A9746:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	thumb_func_end sub_80A971C

	thumb_local_start
sub_80A974C:
	push {lr}
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r3, off_80A9788 // =byte_80A978C
	ldrb r3, [r3,r0]
	cmp r3, #0xff
	beq loc_80A9774
	ldr r0, [r5,#0x24]
	lsr r0, r0, #1
	ldr r1, off_80A9788 // =byte_80A978C
	ldrb r0, [r1,r0]
	lsl r1, r0, #0
	lsl r2, r0, #0
	lsl r1, r1, #5
	lsl r2, r2, #0xa
	orr r0, r1
	orr r0, r2
	bl sprite_setColorShader
	b loc_80A977C
loc_80A9774:
	mov r0, #0xc
	strb r0, [r5,#8]
	bl sub_80A96FC
loc_80A977C:
	ldr r0, [r5,#0x24]
	add r0, #1
	str r0, [r5,#0x24]
	bl sprite_update
	pop {pc}
	.balign 4, 0
off_80A9788: .word byte_80A978C
byte_80A978C: .byte 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16, 0x18
	.byte 0x1A, 0x1C, 0x1E, 0x1F, 0xFF
	thumb_func_end sub_80A974C

	thumb_local_start
sub_80A979C:
	push {r4,lr}
	mov r0, #0xb
	mov r1, #0xe8
	bl TestEventFlagFromImmediate
	bne locret_80A97F0
	ldrb r0, [r6,#6]
	cmp r0, #5
	blt locret_80A97F0
	mov r3, #0
	ldrb r2, [r5,#4]
	ldrb r0, [r6,#6]
	mov r1, #0x19
	cmp r0, r1
	blt loc_80A97BC
	sub r3, r0, r1
loc_80A97BC:
	cmp r2, r3
	bne locret_80A97F0
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate
	beq locret_80A97F0
	bl ReadOWPlayerObjectCoords
	mov r2, r0
	mov r3, r1
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	mov r4, #0x12
	lsl r4, r4, #0x10
	bl sub_80011D6
	cmp r0, #1
	bne locret_80A97F0
	mov r0, #0xb
	mov r1, #0xe8
	bl SetEventFlagFromImmediate
	mov r0, #0xd7
	bl PlaySoundEffect
locret_80A97F0:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A979C

	thumb_local_start
sub_80A97F4:
	push {r4-r7,lr}
	ldr r6, off_80A9820 // =byte_2011B30
	ldrb r4, [r5,#4]
	mov r3, #0x19
	cmp r4, r3
	blt loc_80A9808
	mov r0, r4
	mov r1, r3
	svc 6
	mov r4, r1
loc_80A9808:
	lsl r4, r4, #1
	ldr r0, [r5,#0xc]
	asr r0, r0, #0x10
	mov r2, #0
	add r2, r2, r4
	strh r0, [r6,r2]
	ldr r0, [r5,#0x10]
	asr r0, r0, #0x10
	mov r2, #0x3c 
	add r2, r2, r4
	strh r0, [r6,r2]
	pop {r4-r7,pc}
	.balign 4, 0
off_80A9820: .word byte_2011B30
	thumb_func_end sub_80A97F4

	thumb_func_start sub_80A9824
sub_80A9824:
	push {lr}
	ldr r0, off_80A9834 // =off_80A9838 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A9834: .word off_80A9838
off_80A9838: .word sub_80A9844+1
	.word sub_80A9858+1
	.word sub_80A98CC+1
	thumb_func_end sub_80A9824

	thumb_local_start
sub_80A9844:
	push {lr}
	mov r0, #4
	strb r0, [r5,#8]
	ldrb r0, [r5,#5]
	str r0, [r5,#0x24]
	ldrb r0, [r5,#6]
	str r0, [r5,#0x28]
	bl sub_80A9858
	pop {pc}
	thumb_func_end sub_80A9844

	thumb_local_start
sub_80A9858:
	push {r4-r7,lr}
	mov r4, r8
	push {r4}
	ldr r0, [r5,#0x24]
	sub r0, #1
	ble loc_80A9868
	str r0, [r5,#0x24]
	b loc_80A98BE
loc_80A9868:
	ldrb r0, [r5,#5]
	str r0, [r5,#0x24]
	bl GetPositiveSignedRNG2
	mov r6, r0
	mov r8, r5
	mov r1, #0xe
	ldrsh r1, [r5,r1]
	mov r2, #0x12
	ldrsh r2, [r5,r2]
	mov r3, #0x16
	ldrsh r3, [r5,r3]
	ldr r4, off_80A98C4 // =eStruct200a6a0 
	ldrb r0, [r4,#0xd] // (dword_200A6AC+1 - 0x200a6a0)
	sub r3, r3, r0
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r1, r1, r4
	lsr r6, r6, #8
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r2, r2, r4
	lsr r6, r6, #8
	mov r0, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r4, dword_80A98C8 // =0x140000 
	bl SpawnOverworldMapObject
	mov r5, r8
	ldr r0, [r5,#0x28]
	sub r0, #1
	ble loc_80A98B4
	str r0, [r5,#0x28]
	b loc_80A98BE
loc_80A98B4:
	ldrb r0, [r5,#6]
	str r0, [r5,#0x28]
	mov r0, #SOUND_HIT_BOMB_1
	bl PlaySoundEffect
loc_80A98BE:
	pop {r4}
	mov r8, r4
	pop {r4-r7,pc}
	.balign 4, 0
off_80A98C4: .word eStruct200a6a0
dword_80A98C8: .word 0x140000
	thumb_func_end sub_80A9858

	thumb_local_start
sub_80A98CC:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A98CC

	thumb_func_start sub_80A98D4
sub_80A98D4:
	push {lr}
	ldr r0, off_80A98E4 // =off_80A98E8 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A98E4: .word off_80A98E8
off_80A98E8: .word sub_80A98F4+1
	.word sub_80A9908+1
	.word sub_80A9A04+1
	thumb_func_end sub_80A98D4

	thumb_local_start
sub_80A98F4:
	push {lr}
	mov r0, #4
	strb r0, [r5,#8]
	ldrb r0, [r5,#5]
	str r0, [r5,#0x24]
	ldrb r0, [r5,#6]
	str r0, [r5,#0x28]
	bl sub_80A9908
	pop {pc}
	thumb_func_end sub_80A98F4

	thumb_local_start
sub_80A9908:
	push {r4-r7,lr}
	mov r4, r8
	push {r4}
	ldr r0, [r5,#0x24]
	sub r0, #1
	ble loc_80A9918
	str r0, [r5,#0x24]
	b loc_80A998C
loc_80A9918:
	ldrb r0, [r5,#5]
	str r0, [r5,#0x24]
	bl GetPositiveSignedRNG2
	mov r1, #8
	svc 6
	mov r0, #6
	mul r0, r1
	ldr r4, off_80A9998 // =off_80A999C 
	ldrb r1, [r5,#4]
	ldr r4, [r4,r1]
	add r4, r4, r0
	bl GetPositiveSignedRNG2
	mov r6, r0
	mov r8, r5
	mov r0, #0
	ldrsh r1, [r4,r0]
	mov r0, #2
	ldrsh r2, [r4,r0]
	mov r0, #4
	ldrsh r3, [r4,r0]
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r1, r1, r4
	lsr r6, r6, #8
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r2, r2, r4
	lsr r6, r6, #8
	mov r4, #0xf
	and r4, r6
	sub r4, #7
	add r3, r3, r4
	lsr r6, r6, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5,#0xc]
	ldr r6, [r5,#0x10]
	ldr r7, [r5,#0x14]
	add r1, r1, r0
	add r2, r2, r6
	add r3, r3, r7
	ldr r4, dword_80A9994 // =0x2140001 
	mov r0, #0x20 
	bl SpawnOverworldMapObject
	mov r5, r8
	ldr r0, [r5,#0x28]
	sub r0, #1
	ble loc_80A9988
	str r0, [r5,#0x28]
	b loc_80A998C
loc_80A9988:
	ldrb r0, [r5,#6]
	str r0, [r5,#0x28]
loc_80A998C:
	pop {r4}
	mov r8, r4
	pop {r4-r7,pc}
	.balign 4, 0
dword_80A9994: .word 0x2140001
off_80A9998: .word off_80A999C
off_80A999C: .word byte_80A99A4
	.word byte_80A99D4
byte_80A99A4: .byte 0xF4, 0xFF, 0xF4, 0xFF, 0x8, 0x0, 0xF0, 0xFF, 0x0, 0x0, 0x8
	.byte 0x0, 0xF4, 0xFF, 0xC, 0x0, 0x8, 0x0, 0x0, 0x0, 0xF0, 0xFF
	.byte 0x8, 0x0, 0x0, 0x0, 0x10, 0x0, 0x8, 0x0, 0xC, 0x0, 0xF4
	.byte 0xFF, 0x8, 0x0, 0x10, 0x0, 0x0, 0x0, 0x8, 0x0, 0xC, 0x0
	.byte 0xC, 0x0, 0x8, 0x0
byte_80A99D4: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0x4, 0x0, 0xFE, 0xFF, 0x0, 0x0, 0x4
	.byte 0x0, 0xFF, 0xFF, 0x1, 0x0, 0x4, 0x0, 0x0, 0x0, 0xFE, 0xFF
	.byte 0x4, 0x0, 0x0, 0x0, 0x2, 0x0, 0x4, 0x0, 0x1, 0x0, 0xFF
	.byte 0xFF, 0x4, 0x0, 0x2, 0x0, 0x0, 0x0, 0x4, 0x0, 0x1, 0x0
	.byte 0x1, 0x0, 0x4, 0x0
	thumb_func_end sub_80A9908

	thumb_local_start
sub_80A9A04:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A9A04

	thumb_func_start sub_80A9A0C
sub_80A9A0C:
	push {lr}
	ldr r0, off_80A9A1C // =off_80A9A20 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A9A1C: .word off_80A9A20
off_80A9A20: .word sub_80A9A2C+1
	.word sub_80A9A76+1
	.word sub_80A9A96+1
	thumb_func_end sub_80A9A0C

	thumb_local_start
sub_80A9A2C:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	ldrb r1, [r5,#6]
	ldrb r2, [r5,#7]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldr r6, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	str r6, [r5,#0x14]
	bl sub_8002E14
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#5]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A9A76
	pop {pc}
	thumb_func_end sub_80A9A2C

	thumb_local_start
sub_80A9A76:
	push {lr}
	ldr r0, [r5,#0x14]
	mov r1, #2
	lsl r1, r1, #0x10
	add r0, r0, r1
	str r0, [r5,#0x14]
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A9A90
	mov r0, #8
	strb r0, [r5,#8]
loc_80A9A90:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A9A76

	thumb_local_start
sub_80A9A96:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	.balign 4, 0
byte_80A9AA0: .byte 0x2A, 0x1, 0xBF, 0x16, 0x8E, 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0
	.byte 0x0, 0x3, 0x1, 0x7D, 0x1, 0x2A, 0x1, 0xBF, 0x16, 0x8E, 0x1
	.byte 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0, 0x3, 0x1, 0x7D, 0x1, 0x2B
	.byte 0x1, 0xBF, 0x16, 0x8F, 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0
	.byte 0x2, 0x1, 0x7D, 0x1, 0x2C, 0x1, 0xBF, 0x16, 0x90, 0x1, 0x1C
	.byte 0x9E, 0x5, 0x5, 0x0, 0x0, 0xFF, 0x0, 0x7D, 0x1, 0x2D, 0x1
	.byte 0xBF, 0x16, 0x91, 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0, 0xFF
	.byte 0x0, 0x7D, 0x1, 0x2E, 0x1, 0xBE, 0x16, 0x92, 0x1, 0x1C, 0x9E
	.byte 0x5, 0x5, 0x0, 0x0, 0xFF, 0x1, 0x7D, 0x1, 0x2E, 0x1, 0xBE
	.byte 0x16, 0x92, 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0, 0xFF, 0x1
	.byte 0x7D, 0x1, 0x2E, 0x1, 0xBE, 0x16, 0x92, 0x1, 0x1C, 0x9E, 0x5
	.byte 0x5, 0x0, 0x0, 0xFF, 0x1, 0x7D, 0x1, 0x2F, 0x1, 0xBF, 0x16
	.byte 0x93, 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0, 0xFF, 0x0, 0x7D
	.byte 0x1, 0x2F, 0x1, 0xBF, 0x16, 0x93, 0x1, 0x1C, 0x9E, 0x5, 0x5
	.byte 0x0, 0x0, 0xFF, 0x0, 0x7D, 0x1, 0x30, 0x1, 0xBF, 0x16, 0x94
	.byte 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0, 0xFF, 0x0, 0x7D, 0x1
	.byte 0x31, 0x1, 0xBF, 0x16, 0x95, 0x1, 0x1C, 0x9E, 0x5, 0x5, 0x0
	.byte 0x0, 0xFF, 0x1, 0x7D, 0x1, 0x32, 0x1, 0xBF, 0x16, 0x96, 0x1
	.byte 0x1C, 0x9E, 0x5, 0x5, 0x0, 0x0, 0xFF, 0x0, 0x7D, 0x1
	thumb_func_end sub_80A9A96

	thumb_func_start sub_80A9B70
sub_80A9B70:
	push {lr}
	ldr r7, off_80A9B98 // =byte_80A9AA0
	mov r0, #0x10
	ldrb r1, [r5,#4]
	mul r0, r1
	add r7, r7, r0
	ldr r0, off_80A9B88 // =off_80A9B8C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_80A9B88: .word off_80A9B8C
off_80A9B8C: .word sub_80A9B9C+1
	.word sub_80A9C26+1
	.word sub_80A9CA6+1
off_80A9B98: .word byte_80A9AA0
	thumb_func_end sub_80A9B70

	thumb_local_start
sub_80A9B9C:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0
	str r0, [r5,#0x24]
	ldrh r0, [r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_80A9BBE
	mov r0, #1
	strb r0, [r5]
	ldrh r0, [r7,#2]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	b loc_80A9BCE
loc_80A9BBE:
	ldrh r0, [r7,#2]
	mov r0, r0
	bl SetEventFlag
	ldrh r0, [r7,#4]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_80A9BCE:
	mov r0, #0x80
	ldrb r1, [r7,#6]
	ldrb r2, [r7,#7]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#0xc]
	cmp r0, #0xff
	bne loc_80A9BF6
	ldr r6, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	str r6, [r5,#0x14]
loc_80A9BF6:
	bl sub_8002E14
	ldrb r0, [r7,#8]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r7,#0xa]
	lsl r0, r0, #0x18
	bl sprite_setUnk0x2c
	ldrb r0, [r7,#0xb]
	bl sprite_setPalette // (int pallete) -> void
	ldrb r0, [r7,#0xd]
	bl sprite_setFlip
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A9C26
	pop {pc}
	thumb_func_end sub_80A9B9C

	thumb_local_start
sub_80A9C26:
	push {lr}
	ldrh r0, [r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_80A9C40
	mov r0, #1
	strb r0, [r5]
	ldrh r0, [r7,#2]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	b loc_80A9C54
loc_80A9C40:
	mov r0, #3
	strb r0, [r5]
	ldrh r0, [r7,#2]
	mov r0, r0
	bl SetEventFlag
	ldrh r0, [r7,#4]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_80A9C54:
	ldrh r0, [r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80A9CA0
	bl sub_80A9CAE
	tst r0, r0
	beq loc_80A9C88
	ldr r0, [r5,#0x24]
	tst r0, r0
	bne loc_80A9CA0
	mov r0, #1
	str r0, [r5,#0x24]
	mov r0, #3
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xd9
	add r0, #0xff
	bl PlaySoundEffect
	b loc_80A9CA0
loc_80A9C88:
	ldr r0, [r5,#0x24]
	tst r0, r0
	beq loc_80A9CA0
	mov r0, #5
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	str r0, [r5,#0x24]
loc_80A9CA0:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A9C26

	thumb_local_start
sub_80A9CA6:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A9CA6

	thumb_local_start
sub_80A9CAE:
	push {r4-r7,lr}
	ldr r0, off_80A9CF8 // =eOWPlayerObject 
	ldr r0, [r0,#0x24] // (dword_2009F64 - 0x2009f40)
	ldr r1, [r5,#0x14]
	ldr r2, off_80A9CFC // =dword_80A9D00 
	ldr r2, [r2,#0x8] // (dword_80A9D08 - 0x80a9d00)
	add r1, r1, r2
	cmp r0, r1
	bne loc_80A9CF4
	ldr r0, off_80A9CF8 // =eOWPlayerObject 
	ldr r1, [r0,#0x20] // (pCoords - 0x2009f40)
	ldr r0, [r0,#0x1c] // (dword_2009F5C - 0x2009f40)
	ldr r2, [r5,#0xc]
	ldr r3, off_80A9CFC // =dword_80A9D00 
	ldr r3, [r3]
	add r2, r2, r3
	ldr r3, [r5,#0x10]
	ldr r4, off_80A9CFC // =dword_80A9D00 
	ldr r4, [r4,#0x4] // (dword_80A9D04 - 0x80a9d00)
	add r3, r3, r4
	sub r0, r0, r2
	sub r1, r1, r3
	cmp r0, #0
	bge loc_80A9CE0
	neg r0, r0
loc_80A9CE0:
	cmp r1, #0
	bge loc_80A9CE6
	neg r1, r1
loc_80A9CE6:
	ldr r2, dword_80A9D0C // =0x100000 
	cmp r0, r2
	bgt loc_80A9CF4
	cmp r1, r2
	bgt loc_80A9CF4
	mov r0, #1
	b locret_80A9CF6
loc_80A9CF4:
	mov r0, #0
locret_80A9CF6:
	pop {r4-r7,pc}
	.balign 4, 0
off_80A9CF8: .word eOWPlayerObject
off_80A9CFC: .word dword_80A9D00
dword_80A9D00: .word 0xFFC00000
dword_80A9D04: .word 0x400000
dword_80A9D08: .word 0x400000
dword_80A9D0C: .word 0x100000
	thumb_func_end sub_80A9CAE

	thumb_func_start sub_80A9D10
sub_80A9D10:
	push {r4-r7,lr}
	ldr r0, off_80A9D20 // =off_80A9D24 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A9D20: .word off_80A9D24
off_80A9D24: .word sub_80A9D30+1
	.word sub_80A9D86+1
	.word sub_80A9DB8+1
	thumb_func_end sub_80A9D10

	thumb_local_start
sub_80A9D30:
	push {r4-r7,lr}
	mov r0, #1
	strb r0, [r5]
	bl sub_809C890
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	str r3, [r5,#0x14]
	str r1, [r5,#0x30]
	str r2, [r5,#0x34]
	str r3, [r5,#0x38]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x9e
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #0
	strh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	ldr r0, dword_80A9EC0 // =0x2aaaa 
	str r0, [r5,#0x28]
	ldr r0, dword_80A9EC4 // =0x16c1 
	str r0, [r5,#0x2c]
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#9]
	bl sub_80A9D86
	pop {r4-r7,pc}
	thumb_func_end sub_80A9D30

	thumb_local_start
sub_80A9D86:
	push {r4-r7,lr}
	mov r4, r8
	push {r4}
	ldr r0, off_80A9DA0 // =off_80A9DA4 
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {r4}
	mov r8, r4
	pop {r4-r7,pc}
	.balign 4, 0
off_80A9DA0: .word off_80A9DA4
off_80A9DA4: .word sub_80A9DC0+1
	.word sub_80A9DFE+1
	.word sub_80A9E48+1
	.word sub_80A9E5E+1
	.word sub_80A9EB6+1
	thumb_func_end sub_80A9D86

	thumb_local_start
sub_80A9DB8:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80A9DB8

	thumb_local_start
sub_80A9DC0:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24]
	add r0, #1
	strh r0, [r5,#0x24]
	cmp r0, #5
	beq loc_80A9DD2
	cmp r0, #0x1e
	blt locret_80A9DFC
	b loc_80A9DD8
loc_80A9DD2:
	mov r0, #3
	strb r0, [r5]
	b locret_80A9DFC
loc_80A9DD8:
	mov r0, #0
	strh r0, [r5,#0x24]
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_80A9DF8
	mov r0, #0x24 
	add r0, #0xff
	bl PlaySoundEffect
loc_80A9DF8:
	mov r0, #4
	strb r0, [r5,#9]
locret_80A9DFC:
	pop {r4-r7,pc}
	thumb_func_end sub_80A9DC0

	thumb_local_start
sub_80A9DFE:
	push {r4-r7,lr}
	ldr r0, [r5,#0x14]
	ldr r1, [r5,#0x28]
	add r0, r0, r1
	str r0, [r5,#0x14]
	ldr r0, [r5,#0x28]
	ldr r1, [r5,#0x2c]
	sub r0, r0, r1
	str r0, [r5,#0x28]
	ldrh r0, [r5,#0x24]
	add r0, #1
	strh r0, [r5,#0x24]
	cmp r0, #0xc
	beq loc_80A9E20
	cmp r0, #0x1e
	blt locret_80A9E46
	b loc_80A9E3E
loc_80A9E20:
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_80A9E2E
	mov r0, #0x36 
	add r0, #0xff
	bl PlaySoundEffect
loc_80A9E2E:
	mov r0, #2
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	b locret_80A9E46
loc_80A9E3E:
	mov r0, #0
	strh r0, [r5,#0x24]
	mov r0, #8
	strb r0, [r5,#9]
locret_80A9E46:
	pop {r4-r7,pc}
	thumb_func_end sub_80A9DFE

	thumb_local_start
sub_80A9E48:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24]
	add r0, #1
	strh r0, [r5,#0x24]
	cmp r0, #8
	blt locret_80A9E5C
	mov r0, #0
	strh r0, [r5,#0x24]
	mov r0, #0xc
	strb r0, [r5,#9]
locret_80A9E5C:
	pop {r4-r7,pc}
	thumb_func_end sub_80A9E48

	thumb_local_start
sub_80A9E5E:
	push {r4-r7,lr}
	ldr r0, [r5,#0x14]
	ldr r1, [r5,#0x28]
	add r0, r0, r1
	str r0, [r5,#0x14]
	ldr r0, [r5,#0x28]
	ldr r1, [r5,#0x2c]
	sub r0, r0, r1
	str r0, [r5,#0x28]
	ldrh r0, [r5,#0x24]
	add r0, #1
	strh r0, [r5,#0x24]
	cmp r0, #0x1e
	ble locret_80A9EB4
	mov r0, #0
	strh r0, [r5,#0x24]
	ldrb r0, [r5,#5]
	bl sprite_setFlip
	mov r0, #5
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_809C940
	ldr r1, [r5,#0x30]
	ldr r2, [r5,#0x34]
	ldr r3, [r5,#0x38]
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	str r3, [r5,#0x14]
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_80A9EB0
	mov r0, #0xae
	add r0, #0xff
	bl PlaySoundEffect
loc_80A9EB0:
	mov r0, #0x10
	strb r0, [r5,#9]
locret_80A9EB4:
	pop {r4-r7,pc}
	thumb_func_end sub_80A9E5E

	thumb_local_start
sub_80A9EB6:
	push {r4-r7,lr}
	mov r0, #1
	ldr r1, off_80A9EC8 // =eCutsceneState
	strb r0, [r1,#0x8] // (byte_2011C58 - 0x2011c50)
	pop {r4-r7,pc}
dword_80A9EC0: .word 0x2AAAA
dword_80A9EC4: .word 0x16C1
off_80A9EC8: .word eCutsceneState
	thumb_func_end sub_80A9EB6

	thumb_func_start sub_80A9ECC
sub_80A9ECC:
	push {r4-r7,lr}
	ldr r0, off_80A9EDC // =off_80A9EE0 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80A9EDC: .word off_80A9EE0
off_80A9EE0: .word sub_80A9EEC+1
	.word sub_80A9F30+1
	.word sub_80A9F4E+1
	thumb_func_end sub_80A9ECC

	thumb_local_start
sub_80A9EEC:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	bl sub_809C890
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	str r3, [r5,#0x14]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #SOUND_LOG_OUT_76
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A9F30
	pop {r4-r7,pc}
	thumb_func_end sub_80A9EEC

	thumb_local_start
sub_80A9F30:
	push {r4-r7,lr}
	mov r4, r8
	push {r4}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80A9F44
	mov r0, #8
	strb r0, [r5,#8]
loc_80A9F44:
	bl sprite_update
	pop {r4}
	mov r8, r4
	pop {r4-r7,pc}
	thumb_func_end sub_80A9F30

	thumb_local_start
sub_80A9F4E:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80A9F4E

	thumb_func_start sub_80A9F58
sub_80A9F58:
	push {lr}
	ldr r0, off_80A9F68 // =off_80A9F6C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80A9F68: .word off_80A9F6C
off_80A9F6C: .word sub_80A9F78+1
	.word sub_80A9FB8+1
	.word sub_80A9FFC+1
	thumb_func_end sub_80A9F58

	thumb_local_start
sub_80A9F78:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	ldrb r2, [r5,#5]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#6]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#7]
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldrb r0, [r5,#4]
	bl sub_80AA04C
	str r0, [r5,#0x14]
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80A9FB8
	pop {pc}
	thumb_func_end sub_80A9F78

	thumb_local_start
sub_80A9FB8:
	push {lr}
	mov r4, #1
	ldrb r0, [r5,#4]
	bl sub_80AA04C
	ldr r1, [r5,#0x14]
	cmp r0, r1
	beq loc_80A9FD8
	bge loc_80A9FD0
	neg r4, r4
	lsl r4, r4, #0x10
	b loc_80A9FD4
loc_80A9FD0:
	mov r4, #1
	lsl r4, r4, #0x10
loc_80A9FD4:
	add r1, r1, r4
	str r1, [r5,#0x14]
loc_80A9FD8:
	ldrb r0, [r5,#4]
	cmp r0, #8
	bne loc_80A9FF6
	mov r0, #0x16
	mov r1, #0x40
	bl SetEventFlagFromImmediate
	ldr r0, [r5,#0x14]
	lsr r0, r0, #0x10
	cmp r0, #0x20 
	beq loc_80A9FF6
	mov r0, #0x16
	mov r1, #0x40 
	bl ClearEventFlagFromImmediate
loc_80A9FF6:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80A9FB8

	thumb_local_start
sub_80A9FFC:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80A9FFC

	thumb_func_start sub_80AA004
sub_80AA004:
	push {r4-r7,lr}
	ldr r1, off_80AA018 // =byte_80AA01C
	lsl r0, r0, #4
	add r0, r0, r1
	ldr r1, off_80AA054 // =byte_2001130 
	mov r2, #0x10
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0
off_80AA018: .word byte_80AA01C
byte_80AA01C: .byte 0xC, 0xF0, 0x2A, 0x10, 0x4, 0x48, 0x50, 0x4, 0x50, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x20, 0x20, 0x20, 0x20
	.byte 0x20, 0x20, 0x20, 0x20, 0x20, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x20, 0x20, 0x2A, 0x10, 0x4, 0x48, 0x50, 0x4
	.byte 0x50, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_80AA004

	thumb_local_start
sub_80AA04C:
	ldr r1, off_80AA054 // =byte_2001130 
	ldrsb r0, [r1,r0]
	lsl r0, r0, #0x10
	mov pc, lr
off_80AA054: .word byte_2001130
	thumb_func_end sub_80AA04C

	thumb_func_start sub_80AA058
sub_80AA058:
	push {lr}
	ldr r0, off_80AA068 // =off_80AA06C 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80AA068: .word off_80AA06C
off_80AA06C: .word sub_80AA078+1
	.word sub_80AA0B8+1
	.word sub_80AA0FC+1
	thumb_func_end sub_80AA058

	thumb_local_start
sub_80AA078:
	push {lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	ldrb r2, [r5,#5]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#6]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_removeShadow
	ldrb r0, [r5,#7]
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldrb r0, [r5,#4]
	bl sub_80AA134
	str r0, [r5,#0x14]
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80AA0B8
	pop {pc}
	thumb_func_end sub_80AA078

	thumb_local_start
sub_80AA0B8:
	push {lr}
	mov r4, #1
	ldrb r0, [r5,#4]
	bl sub_80AA134
	ldr r1, [r5,#0x14]
	cmp r0, r1
	beq loc_80AA0D8
	bge loc_80AA0D0
	neg r4, r4
	lsl r4, r4, #0x10
	b loc_80AA0D4
loc_80AA0D0:
	mov r4, #1
	lsl r4, r4, #0x10
loc_80AA0D4:
	add r1, r1, r4
	str r1, [r5,#0x14]
loc_80AA0D8:
	ldrb r0, [r5,#4]
	cmp r0, #0
	bne loc_80AA0F6
	mov r0, #0x16
	mov r1, #0x40
	bl SetEventFlagFromImmediate
	ldr r0, [r5,#0x14]
	lsr r0, r0, #0x10
	cmp r0, #0x20 
	beq loc_80AA0F6
	mov r0, #0x16
	mov r1, #0x40 
	bl ClearEventFlagFromImmediate
loc_80AA0F6:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_80AA0B8

	thumb_local_start
sub_80AA0FC:
	push {lr}
	bl FreeOverworldMapObject
	pop {pc}
	thumb_func_end sub_80AA0FC

	thumb_func_start sub_80AA104
sub_80AA104:
	push {r4-r7,lr}
	ldr r1, off_80AA118 // =byte_80AA11C
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r1, off_80AA13C // =byte_20018B0 
	mov r2, #8
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0
off_80AA118: .word byte_80AA11C
byte_80AA11C: .byte 0x78, 0x68, 0x50, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x20
	.byte 0x20, 0x20, 0x20, 0xFF, 0xFF, 0xFF, 0xFF, 0x78, 0x68
	.byte 0x50, 0x70, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_80AA104

	thumb_local_start
sub_80AA134:
	ldr r1, off_80AA13C // =byte_20018B0 
	ldrsb r0, [r1,r0]
	lsl r0, r0, #0x10
	mov pc, lr
off_80AA13C: .word byte_20018B0
	thumb_func_end sub_80AA134

	thumb_func_start sub_80AA140
sub_80AA140:
	push {r4-r7,lr}
	ldr r0, off_80AA150 // =off_80AA154 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.byte 0, 0
off_80AA150: .word off_80AA154
off_80AA154: .word sub_80AA160+1
	.word sub_80AA194+1
	.word sub_80AA1C8+1
	thumb_func_end sub_80AA140

	thumb_local_start
sub_80AA160:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x82
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #2
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80AA194
	pop {r4-r7,pc}
	thumb_func_end sub_80AA160

	thumb_local_start
sub_80AA194:
	push {r4-r7,lr}
	ldrb r0, [r5,#4]
	bl sub_8143B5E
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80AA1C2
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #2
	mov r1, #0x14
	bl camera_initShakeEffect_80302a8
	mov r0, #0x7c 
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #8
	strb r0, [r5,#8]
loc_80AA1C2:
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80AA194

	thumb_local_start
sub_80AA1C8:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80AA1D8
	bl FreeOverworldMapObject
loc_80AA1D8:
	bl sprite_update
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_80AA1C8

	thumb_func_start sub_80AA1E0
sub_80AA1E0:
	push {r4-r7,lr}
	ldr r0, off_80AA1F0 // =off_80AA1F4 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.byte 0, 0
off_80AA1F0: .word off_80AA1F4
off_80AA1F4: .word sub_80AA204+1
	.word sub_80AA248+1
	.word sub_80AA282+1
	.word sub_80AA2A8+1
	thumb_func_end sub_80AA1E0

	thumb_local_start
sub_80AA204:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x82
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	ldr r0, [r5,#0xc]
	ldr r1, [r5,#0x10]
	ldr r2, [r5,#0x14]
	str r0, [r5,#0x28]
	str r1, [r5,#0x2c]
	str r2, [r5,#0x30]
	mov r0, #0
	str r0, [r5,#0x24]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80AA248
	pop {r4-r7,pc}
	thumb_func_end sub_80AA204

	thumb_local_start
sub_80AA248:
	push {r4-r7,lr}
	ldr r0, [r5,#0x14]
	mov r1, #5
	lsl r1, r1, #0x10
	sub r0, r0, r1
	str r0, [r5,#0x14]
	bge loc_80AA27C
	mov r0, #0
	str r0, [r5,#0x14]
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #1
	mov r1, #0xa
	bl camera_initShakeEffect_80302a8
	mov r0, #0xda
	bl PlaySoundEffect
	mov r0, #0xc0
	bl PlaySoundEffect
	mov r0, #8
	strb r0, [r5,#8]
loc_80AA27C:
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80AA248

	thumb_local_start
sub_80AA282:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_80AA2A2
	mov r0, #1
	strb r0, [r5]
	bl GetRNG2 // () -> int
	mov r1, #0x1f
	and r0, r1
	add r0, #8
	str r0, [r5,#0x24]
	mov r0, #0xc
	strb r0, [r5,#8]
loc_80AA2A2:
	bl sprite_update
	pop {r4-r7,pc}
	thumb_func_end sub_80AA282

	thumb_local_start
sub_80AA2A8:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	sub r0, #1
	str r0, [r5,#0x24]
	bgt loc_80AA2D0
	mov r0, #3
	strb r0, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldr r0, [r5,#0x28]
	ldr r1, [r5,#0x2c]
	ldr r2, [r5,#0x30]
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	mov r0, #4
	strb r0, [r5,#8]
loc_80AA2D0:
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_80AA2A8

	thumb_func_start sub_80AA2D8
sub_80AA2D8:
	push {r4-r7,lr}
	ldr r0, off_80AA2E8 // =off_80AA2EC 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80AA2E8: .word off_80AA2EC
off_80AA2EC: .word sub_80AA2F8+1
	.word sub_80AA322+1
	.word sub_80AA36C+1
	thumb_func_end sub_80AA2D8

	thumb_local_start
sub_80AA2F8:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x98
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	strb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80AA322
	pop {r4-r7,pc}
	thumb_func_end sub_80AA2F8

	thumb_local_start
sub_80AA322:
	push {r4-r7,lr}
	mov r4, #1
	bl sub_81279A8
	bne loc_80AA33E
	ldr r0, off_80AA364 // =byte_8088514
	bl cutscene_checkOriginalCutsceneScriptPos_8036F70
	bne loc_80AA33E
	ldr r0, off_80AA368 // =byte_8088708
	bl cutscene_checkOriginalCutsceneScriptPos_8036F70
	bne loc_80AA33E
	mov r4, #3
loc_80AA33E:
	strb r4, [r5]
	ldr r7, off_80AA360 // =eOverworldNPCObjects 
	ldr r0, [r7,#0x24] // (eOverworldNPCObjects+0x24 - 0x20057b0)
	ldr r1, [r7,#0x28] // (eOverworldNPCObjects+0x28 - 0x20057b0)
	ldr r2, [r7,#0x2c] // (eOverworldNPCObjects+0x2c - 0x20057b0)
	str r0, [r5,#0xc]
	str r1, [r5,#0x10]
	str r2, [r5,#0x14]
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80AA360: .word eOverworldNPCObjects
off_80AA364: .word byte_8088514
off_80AA368: .word byte_8088708
	thumb_func_end sub_80AA322

	thumb_local_start
sub_80AA36C:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80AA36C

	thumb_func_start sub_80AA374
sub_80AA374:
	push {r4-r7,lr}
	ldr r0, off_80AA384 // =off_80AA388 
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80AA384: .word off_80AA388
off_80AA388: .word sub_80AA394+1
	.word sub_80AA402+1
	.word sub_80AA4B8+1
	thumb_func_end sub_80AA374

	thumb_local_start
sub_80AA394:
	push {r4-r7,lr}
	mov r0, #3
	strb r0, [r5]
	mov r4, #0
	movflag EVENT_COPYBOT_ACTIVE
	bl TestEventFlagFromImmediate
	bne loc_80AA3A8
	mov r4, #2
loc_80AA3A8:
	strb r4, [r5,#5]
	mov r0, #0
	bl sub_80AA3C2
	mov r0, #0x5a 
	str r0, [r5,#0x24]
	mov r0, #1
	str r0, [r5,#0x28]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_80AA402
	pop {r4-r7,pc}
	thumb_func_end sub_80AA394

	thumb_local_start
sub_80AA3C2:
	push {r5-r7,lr}
	ldr r4, off_80AA42C // =byte_80AA430
	lsl r0, r0, #3
	add r4, r4, r0
	ldrb r0, [r5,#5]
	add r6, r4, r0
	mov r0, #0x80
	ldrb r1, [r6]
	cmp r1, #0xff
	beq locret_80AA400
	ldrb r2, [r6,#1]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#4]
	ldrb r1, [r6]
	cmp r1, #0x18
	beq loc_80AA3E6
	lsr r0, r0, #1
loc_80AA3E6:
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, r5
	add r0, #0xc
	bl applyLayerEffectToOWObject_8035694
	bl sub_8002E14
	ldrb r1, [r4,#4]
locret_80AA400:
	pop {r5-r7,pc}
	thumb_func_end sub_80AA3C2

	thumb_local_start
sub_80AA402:
	push {r4-r7,lr}
	ldr r0, [r5,#0x24]
	sub r0, #1
	str r0, [r5,#0x24]
	bge loc_80AA426
	ldr r0, [r5,#0x28]
	bl sub_80AA3C2
	cmp r1, #0xff
	beq loc_80AA424
	mov r0, #0xcf
	add r0, #0xff
	bl PlaySoundEffect
	ldr r0, [r5,#0x28]
	add r0, #1
	str r0, [r5,#0x28]
loc_80AA424:
	str r1, [r5,#0x24]
loc_80AA426:
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0
off_80AA42C: .word byte_80AA430
byte_80AA430: .byte 0x18, 0x37, 0x1C, 0x17, 0x14, 0xFF, 0xFF, 0xFF, 0x1C
	.byte 0x17, 0x18, 0x37, 0xA, 0xFF, 0xFF, 0xFF, 0x18, 0x37
	.byte 0x1C, 0x17, 0xA, 0xFF, 0xFF, 0xFF, 0x1C, 0x17, 0x18
	.byte 0x37, 0xA, 0xFF, 0xFF, 0xFF, 0x18, 0x37, 0x1C, 0x17
	.byte 0x5, 0xFF, 0xFF, 0xFF, 0x1C, 0x17, 0x18, 0x37, 0x5
	.byte 0xFF, 0xFF, 0xFF, 0x18, 0x37, 0x1C, 0x17, 0x5, 0xFF
	.byte 0xFF, 0xFF, 0x1C, 0x17, 0x18, 0x37, 0x5, 0xFF, 0xFF
	.byte 0xFF, 0x18, 0x37, 0x1C, 0x17, 0x5, 0xFF, 0xFF, 0xFF
	.byte 0x1C, 0x17, 0x18, 0x37, 0x5, 0xFF, 0xFF, 0xFF, 0x18
	.byte 0x37, 0x1C, 0x17, 0x5, 0xFF, 0xFF, 0xFF, 0x1C, 0x17
	.byte 0x18, 0x37, 0x5, 0xFF, 0xFF, 0xFF, 0x18, 0x37, 0x1C
	.byte 0x17, 0x5, 0xFF, 0xFF, 0xFF, 0x1C, 0x17, 0x18, 0x37
	.byte 0x5, 0xFF, 0xFF, 0xFF, 0x18, 0x37, 0x1C, 0x17, 0x5
	.byte 0xFF, 0xFF, 0xFF, 0x1C, 0x17, 0x18, 0x37, 0x5, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF
	thumb_func_end sub_80AA402

	thumb_local_start
sub_80AA4B8:
	push {r4-r7,lr}
	bl FreeOverworldMapObject
	pop {r4-r7,pc}
	thumb_func_end sub_80AA4B8

	thumb_func_start sub_80AA4C0
sub_80AA4C0:
	push {r4,r6,r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	mov r6, r10
	ldr r6, [r6,#oToolkit_S2001c04_Ptr]
	mov r0, #0
	ldrb r3, [r7,#oGameState_MapGroup]
	cmp r3, #0x80
	bpl loc_80AA4D4
	b loc_80AA5DC
loc_80AA4D4:
	sub r3, #0x80
	ldrh r1, [r6,#0x12]
	ldrh r2, [r6,#0x14]
	sub r1, r1, r2
	cmp r1, #0x40 
	bmi loc_80AA5DC
	add r1, r1, r2
	strh r1, [r6,#0x14]
	ldrb r2, [r7,#oGameState_MapNumber]
	lsl r3, r3, #4
	add r3, r3, r2
	ldr r4, off_80AA874 // =byte_8020CE4
	ldrb r2, [r4,r3]
	cmp r2, #7
	beq loc_80AA5DC
	push {r0}
	mov r4, r2
	bl GetCurPETNavi // () -> u8
	mov r1, #0x28 
	bl GetCurPETNaviStatsByte // (int a1, int a2) -> u8
	tst r0, r0
	beq loc_80AA506
	mov r4, #0
loc_80AA506:
	mov r2, r4
	pop {r0}
	ldrh r3, [r6,#0x12]
	lsr r3, r3, #6
	cmp r3, #0x11
	bmi loc_80AA514
	mov r3, #0x10
loc_80AA514:
	ldr r4, off_80AA878 // =byte_8020C5C
	lsl r3, r3, #3
	add r4, r4, r3
	ldrb r3, [r4,r2]
	push {r0,r3}
	bl GetRNG2 // () -> int
	mov r2, r0
	pop {r0,r3}
	mov r1, #0x1f
	and r2, r1
	cmp r2, r3
	bge loc_80AA5DC
	ldr r1, [r6,#0x28]
	tst r1, r1
	beq loc_80AA54E
	bl GetPositiveSignedRNG2
	lsr r0, r0, #1
	bcs loc_80AA54E
	ldr r0, [r6,#0x2c]
	tst r0, r0
	beq loc_80AA54E
	mov r1, r0
	lsr r1, r1, #0x18
	cmp r1, #8
	bne loc_80AA54E
	str r0, [r7,#oGameState_CurBattleDataPtr]
	b loc_80AA5DC
loc_80AA54E:
	ldr r1, off_80AA87C // =dword_2000B30 
	ldrh r0, [r1,#0x2] // (dword_2000B30+2 - 0x2000b30)
	cmp r0, #0
	bne loc_80AA56E
	ldrh r0, [r1]
	cmp r0, #8
	blt loc_80AA56E
	mov r2, #0x40 
	bl sub_80AA5F4
	tst r0, r0
	beq loc_80AA56E
	ldr r1, off_80AA880 // =dword_2000B30 
	mov r2, #1
	strh r2, [r1,#0x2] // (dword_2000B30+2 - 0x2000b30)
	b loc_80AA59E
loc_80AA56E:
	bl GetPositiveSignedRNG2
	mov r1, #0xc
	svc 6
	cmp r1, #6
	bne loc_80AA584
	mov r2, #0x20 
	bl sub_80AA5F4
	tst r0, r0
	bne loc_80AA59E
loc_80AA584:
	bl GetCurPETNavi // () -> u8
	mov r1, #0x27 
	bl GetCurPETNaviStatsByte // (int a1, int a2) -> u8
	mov r2, r0
	bl sub_80AA5F4
	tst r0, r0
	bne loc_80AA59E
	mov r2, #0x1f
	bl sub_80AA5F4
loc_80AA59E:
	str r0, [r7,#oGameState_CurBattleDataPtr]
	ldr r1, [r6,#0x24]
	tst r1, r1
	bne loc_80AA5B8
	push {r0}
	bl GetCurPETNavi // () -> u8
	mov r1, #0x1e
	bl GetCurPETNaviStatsByte // (int a1, int a2) -> u8
	tst r0, r0
	pop {r0}
	beq loc_80AA5DC
loc_80AA5B8:
	push {r0}
	bl GetBattleSettingsUnk01FromBattleSettings
	mov r4, r0
	bl GetCurPETNavi // () -> u8
	mov r1, #0x3e 
	bl GetCurPETNaviStatsHword
	add r0, #4
	mov r1, #5
	svc 6
	cmp r0, r4
	pop {r0}
	ble loc_80AA5DC
	mov r0, #0
	strh r0, [r6,#0x12]
	strh r0, [r6,#0x14]
loc_80AA5DC:
	tst r0, r0
	pop {r4,r6,r7,pc}
	.word byte_8020CE4
	thumb_func_end sub_80AA4C0

	thumb_func_start chooseRandomEncounterMaybe_80aa5e4
chooseRandomEncounterMaybe_80aa5e4:
	push {r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	mov r2, #0x1f
	bl sub_80AA5F4
	str r0, [r7,#oGameState_CurBattleDataPtr]
	pop {r7,pc}
	thumb_func_end chooseRandomEncounterMaybe_80aa5e4

	thumb_func_start sub_80AA5F4
sub_80AA5F4:
	push {r4-r7,lr}
	sub sp, sp, #0xec
	str r2, [sp,#0xe8]
	movflag EVENT_67F
	bl TestEventFlagFromImmediate
	beq loc_80AA608
	ldr r3, off_80AA698 // =off_8020178 
	b loc_80AA626
loc_80AA608:
	movflag EVENT_680
	bl TestEventFlagFromImmediate
	beq loc_80AA616
	ldr r3, off_80AA69C // =off_8020180 
	b loc_80AA626
loc_80AA616:
	movflag EVENT_681
	bl TestEventFlagFromImmediate
	beq loc_80AA624
	ldr r3, off_80AA6A0 // =off_8020188 
	b loc_80AA626
loc_80AA624:
	ldr r3, off_80AA694 // =off_8020170 
loc_80AA626:
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r0, [r4,#oGameState_MapGroup]
	ldrb r1, [r4,#oGameState_MapNumber]
	cmp r0, #0x80
	blt loc_80AA636
	sub r0, #0x80
	add r3, #4
loc_80AA636:
	ldr r3, [r3]
	lsl r0, r0, #2
	ldr r0, [r3,r0]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov r7, r0
	mov r4, #0
	add r5, sp, #0
	ldr r6, [sp,#0xe8]
loc_80AA648:
	ldrb r1, [r7]
	cmp r1, #0xff
	beq loc_80AA670
	ldrb r0, [r7,#7]
	bl sub_80AA6A4
	tst r0, r0
	beq loc_80AA66C
	mov r0, r7
	bl sub_80AA824
	tst r0, r6
	beq loc_80AA66C
	add r4, #1
	mov r1, #1
	strh r1, [r5]
	str r7, [r5,#4]
	add r5, #8
loc_80AA66C:
	add r7, #0x10
	b loc_80AA648
loc_80AA670:
	tst r4, r4
	bne loc_80AA678
	mov r0, #0
	b loc_80AA68E
loc_80AA678:
	ldr r0, off_80AA884 // =iCurrFrame 
	ldrh r0, [r0]
	mov r1, r4
	svc 6
	add r5, sp, #0
loc_80AA682:
	ldrh r0, [r5]
	sub r1, r1, r0
	blt loc_80AA68C
	add r5, #8
	b loc_80AA682
loc_80AA68C:
	ldr r0, [r5,#4]
loc_80AA68E:
	add sp, sp, #0xec
	pop {r4-r7,pc}
	.balign 4, 0
off_80AA694: .word off_8020170
off_80AA698: .word off_8020178
off_80AA69C: .word off_8020180
off_80AA6A0: .word off_8020188
	thumb_func_end sub_80AA5F4

	thumb_local_start
sub_80AA6A4:
	push {lr}
	lsl r0, r0, #2
	ldr r1, off_80AA6B4 // =JumpTable80AA6B8
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_80AA6B4: .word JumpTable80AA6B8
JumpTable80AA6B8: .word sub_80AA6E8+1
	.word sub_80AA6EC+1
	.word sub_80AA756+1
	.word sub_80AA764+1
	.word sub_80AA778+1
	.word sub_80AA78C+1
	.word sub_80AA7AC+1
	.word sub_80AA7C0+1
	.word sub_80AA7D4+1
	.word sub_80AA7E8+1
	.word sub_80AA7FC+1
	.word sub_80AA810+1
	thumb_func_end sub_80AA6A4

	thumb_local_start
sub_80AA6E8:
	mov r0, #1
	mov pc, lr
	thumb_func_end sub_80AA6E8

	thumb_local_start
sub_80AA6EC:
	push {r4-r7,lr}
	mov r6, #0
	mov r0, #1
	mov r1, #0xd8
	bl TestEventFlagFromImmediate
	beq loc_80AA746
	mov r4, #0
	mov r5, #0
	ldr r7, [r7,#0xc]
loc_80AA700:
	ldrb r0, [r7]
	mov r1, #1
	bic r0, r1
	cmp r0, #0xf0
	beq loc_80AA730
	cmp r0, #0x10
	bne loc_80AA72C
	ldrb r0, [r7,#2]
	ldrb r1, [r7,#3]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x14
	add r0, r0, r1
	bl sub_80182B4
	ldrb r1, [r0,#1]
	cmp r1, #0
	bne loc_80AA72C
	ldrb r1, [r0]
	cmp r1, #4
	blt loc_80AA72C
	mov r5, r1
	ldrb r4, [r0,#2]
loc_80AA72C:
	add r7, #4
	b loc_80AA700
loc_80AA730:
	cmp r5, #4
	blt loc_80AA746
	mov r0, r4
	bl sub_802D652
	ldr r1, off_80AA750 // =word_80AA754
	sub r5, #4
	ldrb r1, [r1,r5]
	cmp r0, r1
	blt loc_80AA746
	mov r6, #1
loc_80AA746:
	mov r0, r6
	pop {r4-r7,pc}
	.word 0
	.balign 4, 0
off_80AA750: .word word_80AA754
word_80AA754: .hword 0x2010
	thumb_func_end sub_80AA6EC

	thumb_local_start
sub_80AA756:
	mov r0, #0
	ldr r1, off_80AA888 // =dword_2000B30 
	ldrh r2, [r1]
	cmp r2, #8
	blt locret_80AA762
	mov r0, #1
locret_80AA762:
	mov pc, lr
	thumb_func_end sub_80AA756

	thumb_local_start
sub_80AA764:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x12
	bl TestEventFlagFromImmediate
	beq loc_80AA774
	mov r4, #1
loc_80AA774:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA764

	thumb_local_start
sub_80AA778:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x13
	bl TestEventFlagFromImmediate
	beq loc_80AA788
	mov r4, #1
loc_80AA788:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA778

	thumb_local_start
sub_80AA78C:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x14
	bl TestEventFlagFromImmediate
	beq loc_80AA7A8
	bl GetPositiveSignedRNG2
	mov r1, #0xff
	and r0, r1
	cmp r0, #0xc0
	bgt loc_80AA7A8
	mov r4, #1
loc_80AA7A8:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA78C

	thumb_local_start
sub_80AA7AC:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x15
	bl TestEventFlagFromImmediate
	beq loc_80AA7BC
	mov r4, #1
loc_80AA7BC:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA7AC

	thumb_local_start
sub_80AA7C0:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x16
	bl TestEventFlagFromImmediate
	beq loc_80AA7D0
	mov r4, #1
loc_80AA7D0:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA7C0

	thumb_local_start
sub_80AA7D4:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x17
	bl TestEventFlagFromImmediate
	beq loc_80AA7E4
	mov r4, #1
loc_80AA7E4:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA7D4

	thumb_local_start
sub_80AA7E8:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x18
	bl TestEventFlagFromImmediate
	beq loc_80AA7F8
	mov r4, #1
loc_80AA7F8:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA7E8

	thumb_local_start
sub_80AA7FC:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x19
	bl TestEventFlagFromImmediate
	beq loc_80AA80C
	mov r4, #1
loc_80AA80C:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA7FC

	thumb_local_start
sub_80AA810:
	push {r4,lr}
	mov r4, #0
	mov r0, #2
	mov r1, #0x22 
	bl TestEventFlagFromImmediate
	beq loc_80AA820
	mov r4, #1
loc_80AA820:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_80AA810

	thumb_local_start
sub_80AA824:
	push {r4,r6,r7,lr}
	mov r7, #0
	ldr r6, [r0,#0xc]
	ldrb r1, [r0,#7]
	cmp r1, #2
	bne loc_80AA832
	mov r7, #0x40 
loc_80AA832:
	ldrb r0, [r6]
	mov r1, #0xf0
	and r0, r1
	cmp r0, #0xf0
	beq loc_80AA86A
	cmp r0, #0x10
	bne loc_80AA866
	ldrb r0, [r6,#2]
	ldrb r3, [r6,#3]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x14
	add r0, r0, r3
	bl enemy_getStruct2
	ldrh r1, [r0]
	lsr r1, r1, #0xc
	mov r2, #0xf
	and r1, r2
	mov r2, #1
	lsl r2, r1
	orr r7, r2
	ldrb r1, [r0,#2]
	cmp r1, #4
	blt loc_80AA866
	mov r0, #0x20 
	b locret_80AA86C
loc_80AA866:
	add r6, #4
	b loc_80AA832
loc_80AA86A:
	mov r0, r7
locret_80AA86C:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80AA824

	thumb_func_start sub_80AA86E
sub_80AA86E:
	push {r4,lr}
	pop {r4,pc}
	.balign 4, 0x00
off_80AA874: .word byte_8020CE4
off_80AA878: .word byte_8020C5C
off_80AA87C: .word dword_2000B30
off_80AA880: .word dword_2000B30
off_80AA884: .word iCurrFrame
off_80AA888: .word dword_2000B30
	thumb_func_end sub_80AA86E

	thumb_func_start sub_80AA88C
sub_80AA88C:
	push {r4-r7,lr}
	sub sp, sp, #8
	bl GetPositiveSignedRNG2
	mov r7, r0
	mov r0, #0
	str r0, [sp]
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	add r4, #0x90
	mov r6, #0
loc_80AA8A2:
	ldr r5, [r4]
	tst r5, r5
	beq loc_80AA8C2
	ldrh r0, [r5,#0x28]
	bl sub_80AED50
	lsr r7, r7, #4
	mov r1, #0x1e
	and r1, r7
	lsr r7, r7, #5
	ldrh r0, [r0,r1]
	ldr r1, dword_80AA8DC // =0xffff 
	cmp r0, r1
	beq loc_80AA8C2
	str r5, [sp]
	str r0, [sp,#4]
loc_80AA8C2:
	add r4, #4
	add r6, #1
	cmp r6, #4
	blt loc_80AA8A2
	ldr r0, [sp]
	tst r0, r0
	beq loc_80AA8D8
	ldr r1, [sp,#4]
	strh r1, [r0,#0x2a]
	mov r1, #1
	strb r1, [r0,#0x1a]
loc_80AA8D8:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0
dword_80AA8DC: .word 0xFFFF
	thumb_func_end sub_80AA88C

	thumb_func_start sub_80AA8E0
sub_80AA8E0:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x2c
	mov r7, #0
	str r7, [sp,#0x1c]
	str r7, [sp,#0x20]
	tst r1, r1
	beq loc_80AA908
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	str r4, [sp,#0x10]
	str r5, [sp,#0x14]
	bl sub_80AA910
	str r0, [sp,#0x1c]
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrh r0, [r0,#0x36]
	str r0, [sp,#0x20]
loc_80AA908:
	ldr r0, [sp,#0x1c]
	ldr r1, [sp,#0x20]
	add sp, sp, #0x2c
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80AA8E0

	thumb_local_start
sub_80AA910:
	push {r4-r7,lr}
	sub sp, sp, #0x2c
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	str r4, [sp,#0x10]
	str r5, [sp,#0x14]
	ldr r0, [sp,#0x14]
	mov r1, #0x26 
	bl GetBattleNaviStatsByte
	mov r1, #1
	tst r0, r1
	beq loc_80AA946
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #0
	bl sub_80AAA3C
	bl sub_80AAE98
	ldr r1, [sp,#0xc]
	ldr r2, [sp,#0x10]
	bl sub_80AAB04
	b loc_80AAA18
loc_80AA946:
	mov r1, #2
	tst r0, r1
	bne loc_80AA96C
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #0
	bl sub_80AAA3C
	bl sub_80AAE98
	mov r4, r0
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	ldr r2, [sp,#0x10]
	mov r3, #0
	bl sub_80AAA98
	ldrh r0, [r4,r0]
	b loc_80AAA18
loc_80AA96C:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #1
	bl sub_80AAA3C
	tst r0, r0
	beq loc_80AAA04
	bl sub_80AAE98
	mov r4, r0
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	ldr r2, [sp,#0x10]
	mov r3, #2
	bl sub_80AAA98
	cmp r0, #0x14
	blt loc_80AA994
	add r4, #0x14
	sub r0, #0x14
loc_80AA994:
	mov r7, r0
	mov r2, r7
loc_80AA998:
	add r5, r4, r2
	mov r0, #0
	str r0, [sp,#0x28]
	mov r3, #0
loc_80AA9A0:
	ldrh r0, [r5]
	lsr r1, r0, #0xe
	bne loc_80AA9B8
	add r1, sp, #0x24
	ldr r0, [sp,#0x28]
	add r0, r0, r0
	add r1, r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r0, [sp,#0x28]
	add r0, #1
	str r0, [sp,#0x28]
loc_80AA9B8:
	sub r5, #2
	add r3, #1
	cmp r3, #2
	blt loc_80AA9A0
	ldr r0, [sp,#0x28]
	tst r0, r0
	bne loc_80AAA0A
	sub r2, #4
	bge loc_80AA998
	mov r2, r7
	cmp r2, #0x12
	bge loc_80AAA04
loc_80AA9D0:
	add r5, r4, r2
	mov r0, #0
	str r0, [sp,#0x28]
	mov r3, #0
loc_80AA9D8:
	ldrh r0, [r5]
	lsr r1, r0, #0xe
	bne loc_80AA9F0
	add r1, sp, #0x24
	ldr r0, [sp,#0x28]
	add r0, r0, r0
	add r1, r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r0, [sp,#0x28]
	add r0, #1
	str r0, [sp,#0x28]
loc_80AA9F0:
	sub r5, #2
	add r3, #1
	cmp r3, #2
	blt loc_80AA9D8
	ldr r0, [sp,#0x28]
	tst r0, r0
	bne loc_80AAA0A
	add r2, #4
	cmp r2, #0x14
	blt loc_80AA9D0
loc_80AAA04:
	mov r0, #0
	sub r0, #1
	b loc_80AAA18
loc_80AAA0A:
	bl GetPositiveSignedRNG2
	ldr r1, [sp,#0x28]
	svc 6
	add r0, sp, #0x24
	add r1, r1, r1
	ldrh r0, [r0,r1]
loc_80AAA18:
	add sp, sp, #0x2c
	pop {r4-r7,pc}
	thumb_func_end sub_80AA910

	thumb_local_start
sub_80AAA1C:
	push {r4,lr}
	bl sub_80AAE98
	mov r3, r0
	mov r0, #0
	mov r4, #0
loc_80AAA28:
	ldrh r1, [r3]
	lsr r1, r1, #0xe
	mov r2, #1
	lsl r2, r1
	orr r0, r2
	add r3, #2
	add r4, #1
	cmp r4, #0x14
	blt loc_80AAA28
	pop {r4,pc}
	thumb_func_end sub_80AAA1C

	thumb_local_start
sub_80AAA3C:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r5, r1
	tst r2, r2
	bne loc_80AAA56
	bl GetPositiveSignedRNG2
	mov r1, r5
	svc 6
	add r1, r1, r1
	ldrh r0, [r4,r1]
	b loc_80AAA94
loc_80AAA56:
	mov r2, #0
	str r2, [sp,#8]
	mov r6, #0
	mov r7, sp
loc_80AAA5E:
	add r1, r6, r6
	ldrh r0, [r4,r1]
	str r0, [sp,#4]
	bl sub_80AAA1C
	mov r1, #1
	tst r0, r1
	beq loc_80AAA7A
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	add r2, r1, r1
	strh r0, [r7,r2]
	add r1, #1
	str r1, [sp,#8]
loc_80AAA7A:
	add r6, #1
	cmp r6, r5
	blt loc_80AAA5E
	ldr r0, [sp,#8]
	tst r0, r0
	beq loc_80AAA94
	bl GetPositiveSignedRNG2
	ldr r1, [sp,#8]
	svc 6
	mov r0, sp
	add r1, r1, r1
	ldrh r0, [r0,r1]
loc_80AAA94:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_80AAA3C

	thumb_local_start
sub_80AAA98:
	push {r4,lr}
	sub sp, sp, #0x18
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r4, r3
	mov r0, #0x14
	lsr r2, r2, #3
	add r3, r2, r2
	add r3, r3, r2
	cmp r1, r3
	ble loc_80AAAB2
	mov r0, #0
loc_80AAAB2:
	str r0, [sp,#0x14]
	bl GetPositiveSignedRNG2
	lsr r0, r0, #8
	mov r1, #1
	and r1, r0
	add r1, r1, r1
	str r1, [sp,#0xc]
	lsr r0, r0, #8
	mov r1, #0xf
	and r1, r0
	str r1, [sp,#0x10]
	cmp r4, #0
	bne loc_80AAAE4
loc_80AAACE:
	ldr r0, [sp]
	lsl r0, r0, #4
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	ldr r1, off_80AAB00 // =byte_8020B9C
	ldrb r0, [r1,r0]
	ldr r1, [sp,#0xc]
	add r0, r0, r1
	ldr r1, [sp,#0x14]
	add r0, r0, r1
	b loc_80AAAFC
loc_80AAAE4:
	cmp r4, #1
	bne loc_80AAAF0
	ldr r0, [sp,#0xc]
	ldr r1, [sp,#0x14]
	add r0, r0, r1
	b loc_80AAAFC
loc_80AAAF0:
	cmp r4, #2
	bne loc_80AAAFA
	mov r0, #2
	str r0, [sp,#0xc]
	b loc_80AAACE
loc_80AAAFA:
	b loc_80AAAFA
loc_80AAAFC:
	add sp, sp, #0x18
	pop {r4,pc}
	.balign 4, 0
off_80AAB00: .word byte_8020B9C
	thumb_func_end sub_80AAA98

	thumb_local_start
sub_80AAB04:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x28
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, #0x14
	lsr r2, r2, #3
	add r3, r2, r2
	add r3, r3, r2
	cmp r1, r3
	ble loc_80AAB1C
	mov r0, #0
loc_80AAB1C:
	ldr r1, [sp]
	add r0, r0, r1
	str r0, [sp]
	mov r4, #0
	mov r6, #0
	ldr r7, [sp]
loc_80AAB28:
	ldrh r0, [r7]
	mov r1, r0
	lsr r1, r1, #0xe
	cmp r1, #1
	bne loc_80AAB3A
	add r1, sp, #0xc
	add r2, r6, r6
	strh r0, [r1,r2]
	add r6, #1
loc_80AAB3A:
	add r7, #2
	add r4, #1
	cmp r4, #0xa
	blt loc_80AAB28
	tst r6, r6
	bne loc_80AAB56
	bl GetPositiveSignedRNG2
	mov r1, #1
	and r0, r1
	add r0, r0, r0
	ldr r1, [sp]
	ldrh r0, [r1,r0]
	b loc_80AAB64
loc_80AAB56:
	bl GetPositiveSignedRNG2
	mov r1, r6
	svc 6
	add r0, sp, #0xc
	add r1, r1, r1
	ldrh r0, [r0,r1]
loc_80AAB64:
	add sp, sp, #0x28
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80AAB04

	thumb_local_start
sub_80AAB68:
	push {r4,lr}
	mov r4, r0
	bl GetRNG2 // () -> int
	mov r1, #0xf
	and r1, r0
	mov r0, r4
	ldr r2, off_80AAB84 // =byte_8020B9C
	lsl r0, r0, #4
	add r2, r2, r0
	ldrb r1, [r2,r1]
	lsr r0, r1, #2
	pop {r4,pc}
	.balign 4, 0
off_80AAB84: .word byte_8020B9C
	thumb_func_end sub_80AAB68

	thumb_func_start sub_80AAB88
sub_80AAB88:
	push {r5-r7,lr}
	mov r3, #0
	mov r5, r2
	mov r6, r0
	mov r7, r1
loc_80AAB92:
	ldrb r0, [r6,r3]
	ldrb r1, [r7,r3]
	orr r0, r1
	mvn r0, r0
	strb r0, [r5,r3]
	add r3, #1
	cmp r3, #0x28 
	blt loc_80AAB92
	pop {r5-r7,pc}
	thumb_func_end sub_80AAB88

	thumb_func_start sub_80AABA4
sub_80AABA4:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl sub_80AAB68
	str r0, [sp]
	mov r4, #0
	str r4, [sp,#4]
	str r4, [sp,#8]
	ldr r5, off_80AAC78 // =unk_2036750 
	ldr r6, off_80AAC80 // =dword_2033000 
loc_80AABB8:
	lsr r0, r4, #3
	ldrb r0, [r5,r0]
	mov r1, #7
	and r1, r4
	mov r2, #0x80
	lsr r2, r1
	tst r0, r2
	beq loc_80AABEA
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #8
	tst r1, r2
	beq loc_80AABEA
	ldrb r1, [r0,#5]
	add r2, sp, #4
	ldrb r3, [r2,r1]
	lsl r7, r1, #8
	add r7, r7, r6
	add r3, r3, r3
	strh r4, [r7,r3]
	lsr r3, r3, #1
	add r3, #1
	strb r3, [r2,r1]
loc_80AABEA:
	ldr r0, off_80AAC7C // =0x140 
	add r4, #1
	cmp r4, r0
	blt loc_80AABB8
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	orr r0, r1
	beq loc_80AAC70
	ldr r1, [sp]
loc_80AABFC:
	add r2, sp, #4
	ldrb r0, [r2,r1]
	tst r0, r0
	bne loc_80AAC1E
	sub r1, #1
	bge loc_80AABFC
	ldr r1, [sp]
loc_80AAC0A:
	add r1, #4
	mov r2, sp
	add r2, r2, r1
	ldrb r0, [r2]
	tst r0, r0
	bne loc_80AAC1E
	add r1, #1
	cmp r1, #5
	blt loc_80AAC0A
loc_80AAC1C:
	b loc_80AAC1C
loc_80AAC1E:
	str r1, [sp]
	bl GetPositiveSignedRNG2
	mov r2, sp
	ldr r1, [sp]
	add r1, #4
	ldrb r1, [r2,r1]
	svc 6
	ldr r0, [sp]
	lsl r0, r0, #8
	add r6, r6, r0
	add r1, r1, r1
	// idx
	ldrh r0, [r6,r1]
	str r0, [sp,#0xc]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r2, #0
	mov r3, #0
loc_80AAC42:
	ldrb r1, [r0,r3]
	cmp r1, #0x1a
	beq loc_80AAC54
	cmp r1, #0xff
	beq loc_80AAC54
	add r2, #1
	add r3, #1
	cmp r3, #4
	blt loc_80AAC42
loc_80AAC54:
	mov r4, r2
	mov r5, r0
	mov r0, #0x1a
	tst r2, r2
	beq loc_80AAC68
	bl GetPositiveSignedRNG2
	mov r1, r4
	svc 6
	ldrb r0, [r5,r1]
loc_80AAC68:
	ldr r1, [sp,#0xc]
	lsl r0, r0, #9
	orr r0, r1
	b loc_80AAC72
loc_80AAC70:
	ldr r0, off_80AAC88 // =0x201 
loc_80AAC72:
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0
off_80AAC78: .word unk_2036750
off_80AAC7C: .word 0x140
off_80AAC80: .word dword_2033000
	.word 0x2201
off_80AAC88: .word 0x201
	thumb_func_end sub_80AABA4

	thumb_func_start sub_80AAC8C
sub_80AAC8C:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	bl GetPositiveSignedRNG2
	mov r1, #0xff
	and r0, r1
	cmp r0, #8
	bge loc_80AACAA
	bl sub_80AAE36
	tst r0, r0
	bne loc_80AACAA
	ldr r0, dword_80AAD00 // =0xffff 
	b loc_80AACF8
loc_80AACAA:
	bl sub_80AADA6
	add r0, sp, #4
	bl sub_80AAD70
	ldr r0, [sp]
	bl sub_80AAB68
	add r1, r0, r0
	add r4, sp, #4
	mov r2, #0
	mov r3, r1
loc_80AACC2:
	ldrh r0, [r4,r1]
	tst r0, r0
	bne loc_80AACE2
	tst r2, r2
	beq loc_80AACD8
	add r1, #2
	cmp r1, #0xa
	ble loc_80AACC2
	mov r0, #0
	mov r1, #0
	b loc_80AACF4
loc_80AACD8:
	sub r1, #2
	bge loc_80AACC2
	mov r2, #1
	mov r1, r3
	b loc_80AACC2
loc_80AACE2:
	mov r4, r0
	lsr r6, r1, #1
	bl GetPositiveSignedRNG2
	mov r1, r4
	svc 6
	mov r0, r6
	bl sub_80AAD04
loc_80AACF4:
	lsl r1, r1, #9
	orr r0, r1
loc_80AACF8:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.word byte_8020B9C
	.balign 4, 0
dword_80AAD00: .word 0xFFFF
	thumb_func_end sub_80AAC8C

	thumb_local_start
sub_80AAD04:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	ldr r6, off_80AAE6C // =dword_203300C 
	mov r7, r0
	mov r4, r1
	mov r5, #1
loc_80AAD10:
	ldr r0, [r6]
	tst r0, r0
	beq loc_80AAD26
	// idx
	mov r0, r5
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#5]
	cmp r1, r7
	bne loc_80AAD26
	sub r4, #1
	blt loc_80AAD30
loc_80AAD26:
	add r6, #0xc
	add r5, #1
	ldr r1, off_80AAE70 // =0x140 
	cmp r5, r1
	blt loc_80AAD10
loc_80AAD30:
	str r0, [sp]
	str r5, [sp,#4]
	ldr r6, off_80AAE74 // =dword_2033000 
	mov r0, #0xc
	mul r0, r5
	add r6, r6, r0
	add r4, sp, #0xc
	mov r1, #0
	mov r3, #0
loc_80AAD42:
	ldrb r0, [r6,r3]
	tst r0, r0
	beq loc_80AAD4E
	strb r3, [r4]
	add r4, #1
	add r1, #1
loc_80AAD4E:
	add r3, #1
	cmp r3, #4
	bmi loc_80AAD42
	str r1, [sp,#8]
	bl GetPositiveSignedRNG2
	ldr r1, [sp,#8]
	svc 6
	add r4, sp, #0xc
	ldrb r0, [r4,r1]
	mov r1, #0
	add r1, r1, r0
	ldr r7, [sp]
	ldrb r1, [r7,r1]
	ldr r0, [sp,#4]
	add sp, sp, #0x14
	pop {r4-r7,pc}
	thumb_func_end sub_80AAD04

	thumb_local_start
sub_80AAD70:
	push {r4,r6,r7,lr}
	mov r1, #0
	str r1, [r0]
	str r1, [r0,#4]
	str r1, [r0,#8]
	mov r7, r0
	ldr r6, off_80AAE78 // =dword_203300C 
	mov r4, #1
loc_80AAD80:
	ldr r0, [r6]
	tst r0, r0
	beq loc_80AAD9A
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#5]
	cmp r1, #0xff
	beq loc_80AAD9A
	add r1, r1, r1
	ldrh r0, [r7,r1]
	add r0, #1
	strh r0, [r7,r1]
loc_80AAD9A:
	add r6, #0xc
	add r4, #1
	ldr r3, off_80AAE70 // =0x140 
	cmp r4, r3
	blt loc_80AAD80
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80AAD70

	thumb_local_start
sub_80AADA6:
	push {r4,r6,r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_S2001c04_Ptr]
	ldrb r0, [r0,#5]
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r4, #0x1e
	mul r4, r0
loc_80AADB6:
	ldrh r0, [r7]
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r2, #1
	bl TakeChips // (int idx, int searchItem, int off) -> void*
	add r7, #2
	sub r4, #1
	bne loc_80AADB6
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2002230_Ptr]
	ldr r1, off_80AAE7C // =dword_2033000 
	ldr r2, off_80AAE80 // =0xf00 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_S2001c04_Ptr]
	ldrb r0, [r0,#5]
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r4, #0x1e
	mul r4, r0
loc_80AADE4:
	ldrh r0, [r7]
	lsr r1, r0, #9
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r2, #1
	bl sub_8021B2A
	add r7, #2
	sub r4, #1
	bne loc_80AADE4
	mov r4, #0
	ldr r7, off_80AAE84 // =dword_2033000 
loc_80AADFC:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#7]
	cmp r1, #2
	beq loc_80AAE24
	ldrb r1, [r0,#9]
	mov r2, #0x20 
	tst r1, r2
	bne loc_80AAE24
	ldr r1, dword_80AAE88 // =0x137 
	cmp r4, r1
	beq loc_80AAE24
	ldr r1, off_80AAE8C // =0x138 
	cmp r4, r1
	beq loc_80AAE24
	ldr r1, off_80AAE90 // =0x139 
	cmp r4, r1
	beq loc_80AAE24
	b loc_80AAE28
loc_80AAE24:
	mov r0, #0
	str r0, [r7]
loc_80AAE28:
	add r7, #0xc
	add r4, #1
	mov r0, #0xa0
	add r0, r0, r0
	cmp r4, r0
	blt loc_80AADFC
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80AADA6

	thumb_local_start
sub_80AAE36:
	push {r4,r7,lr}
	mov r4, #1
	ldr r7, off_80AAE94 // =unk_2036750 
loc_80AAE3C:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #8
	tst r0, r1
	beq loc_80AAE5A
	lsr r0, r4, #3
	mov r1, #7
	and r1, r4
	mov r2, #0x80
	lsr r2, r1
	ldrb r0, [r7,r0]
	tst r0, r2
	bne loc_80AAE66
loc_80AAE5A:
	ldr r0, off_80AAE70 // =0x140 
	add r4, #1
	cmp r4, r0
	blt loc_80AAE3C
	mov r0, #1
	b locret_80AAE68
loc_80AAE66:
	mov r0, #0
locret_80AAE68:
	pop {r4,r7,pc}
	.balign 4, 0
off_80AAE6C: .word dword_203300C
off_80AAE70: .word 0x140
off_80AAE74: .word dword_2033000
off_80AAE78: .word dword_203300C
off_80AAE7C: .word dword_2033000
off_80AAE80: .word 0xF00
off_80AAE84: .word dword_2033000
dword_80AAE88: .word 0x137
off_80AAE8C: .word 0x138
off_80AAE90: .word 0x139
off_80AAE94: .word unk_2036750
	thumb_func_end sub_80AAE36

	thumb_local_start
sub_80AAE98:
	ldr r2, off_80AAEA4 // =byte_80AAEA8
	mov r1, #0x28 
	mul r0, r1
	add r0, r0, r2
	mov pc, lr
	.balign 4, 0x00
off_80AAEA4:
	// <endpool> <endfile>
	.word byte_80AAEA8
	thumb_func_end sub_80AAE98

/*For debugging purposes, connect comment at any range!*/
