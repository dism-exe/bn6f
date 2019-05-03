	.include "asm/asm25.inc"

	thumb_local_start
sub_808F810:
	push {r4-r7,lr}
	ldr r5, off_808F8FC // =off_808F5D4 
	ldr r5, [r5]
	bl reqBBS_setFlag_e17b0f7_8140A00
	ldrb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
	cmp r4, #0
	bgt loc_808F830
	mov r0, #0xff
	strb r0, [r5,#0x11] // (byte_2000321 - 0x2000310)
	bl sub_808FA7C
	bl sub_809E254
	add r4, #1
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
loc_808F830:
	cmp r4, #1
	bgt loc_808F86C
	bl sub_808F9C4
	bne loc_808F8A6
	bl sub_809E248
	add r4, #1
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
	ldrh r0, [r5,#0x12] // (word_2000322 - 0x2000310)
	lsl r0, r0, #0x10
	ldrh r1, [r5,#0x14] // (dword_2000324 - 0x2000310)
	lsl r1, r1, #0x10
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_809E188
	ldrb r0, [r5,#0xf] // (byte_200031F - 0x2000310)
	bl sub_809E13C
	ldrb r0, [r5,#0x10] // (byte_2000320 - 0x2000310)
	bl sub_809E2AE
	bl sub_808F8AC
	mov r0, #0xb
	mov r1, #0xe4
	bl SetEventFlagFromImmediate
	b loc_808F8A6
loc_808F86C:
	cmp r4, #2
	bgt loc_808F878
	bl sub_808FA8C
	add r4, #1
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
loc_808F878:
	bl sub_808F9C4
	bne loc_808F8A6
	mov r4, #0
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
	ldrh r0, [r5,#0x12] // (word_2000322 - 0x2000310)
	lsl r0, r0, #0x10
	ldrh r1, [r5,#0x14] // (dword_2000324 - 0x2000310)
	lsl r1, r1, #0x10
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_809E188
	ldrb r0, [r5,#0xf] // (byte_200031F - 0x2000310)
	bl sub_809E13C
	ldrb r0, [r5,#0x10] // (byte_2000320 - 0x2000310)
	bl sub_809E2AE
	bl sub_808FD64
	mov r0, #0
	pop {r4-r7,pc}
loc_808F8A6:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808F810

	thumb_local_start
sub_808F8AC:
	push {r5,lr}
	mov r0, #3
	bl loc_809E314
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldr r5, [r5,#oGameState_OverworldPlayerObjectPtr]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0x6c 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sprite_update
	ldr r1, off_808F8FC // =off_808F5D4 
	ldr r1, [r1]
	ldrb r0, [r1,#0x1c] // (byte_200032C - 0x2000310)
	bl loc_809E2FE
	bl sub_809E1AE
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_809E188
	bl sub_809E23C
	mov r0, #4
	bl loc_809E306
	mov r0, #0
	pop {r5,pc}
	.balign 4, 0x00
off_808F8FC: .word off_808F5D4
	thumb_func_end sub_808F8AC

	thumb_local_start
sub_808F900:
	push {r4-r7,lr}
	ldr r5, off_808FB48 // =off_808F5D4 
	ldr r5, [r5]
	ldrb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
	cmp r4, #0
	bgt loc_808F92C
	mov r0, #0xff
	strb r0, [r5,#0x11] // (byte_2000321 - 0x2000310)
	mov r0, #0xb
	mov r1, #0xe4
	bl ClearEventFlagFromImmediate
	mov r0, #0xb
	mov r1, #0xe5
	bl ClearEventFlagFromImmediate
	bl sub_808FA7C
	bl sub_809E254
	add r4, #1
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
loc_808F92C:
	cmp r4, #1
	bgt loc_808F93A
	bl sub_808F9C4
	bne loc_808F98A
	add r4, #1
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
loc_808F93A:
	cmp r4, #2
	bgt loc_808F954
	bl sub_808FA84
	bl sub_809E2FC
	bl sub_808FF9C
	bl sub_808F990
	add r4, #1
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
	b loc_808F98A
loc_808F954:
	bl sub_808F9C4
	bne loc_808F98A
	bl sub_809E248
	mov r4, #0
	strb r4, [r5,#0x2] // (byte_2000312 - 0x2000310)
	bl sub_809E3B2
	ldrh r0, [r5,#0x12] // (word_2000322 - 0x2000310)
	lsl r0, r0, #0x10
	ldrh r1, [r5,#0x14] // (dword_2000324 - 0x2000310)
	lsl r1, r1, #0x10
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_809E188
	ldrb r0, [r5,#0xf] // (byte_200031F - 0x2000310)
	bl sub_809E13C
	ldrb r0, [r5,#0x10] // (byte_2000320 - 0x2000310)
	bl sub_809E2AE
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0
	pop {r4-r7,pc}
loc_808F98A:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_808F900

	thumb_local_start
sub_808F990:
	push {r5,lr}
	bl sub_809E230
	bl sub_809E304
	bl sub_809E312
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldr r5, [r5,#oGameState_OverworldPlayerObjectPtr]
	mov r0, #0x80
	mov r1, #0x18
	mov r2, #0x37 
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r5,#0x14]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sprite_update
	mov r0, #0
	pop {r5,pc}
	thumb_func_end sub_808F990

	thumb_local_start
sub_808F9C4:
	push {r4-r7,lr}
	ldr r5, off_808FB48 // =off_808F5D4 
	ldr r5, [r5]
	mov r4, #0
	bl sub_808FA38
	bl sub_809E1AE
	mov r6, r0
	mov r7, r1
	ldr r2, dword_808FA34 // =0x10000 
	mov r0, r6
	ldrh r1, [r5,#0x12] // (word_2000322 - 0x2000310)
	lsl r1, r1, #0x10
	cmp r0, r1
	beq loc_808F9FE
	bgt loc_808F9F2
	sub r3, r1, r0
	cmp r3, r2
	blt loc_808F9FE
	add r0, r0, r2
	mov r4, #1
	b loc_808F9FC
loc_808F9F2:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_808F9FE
	sub r0, r0, r2
	mov r4, #1
loc_808F9FC:
	mov r6, r0
loc_808F9FE:
	mov r0, r7
	ldr r1, [r5,#0x14] // (dword_2000324 - 0x2000310)
	lsl r1, r1, #0x10
	cmp r0, r1
	beq loc_808FA22
	bgt loc_808FA16
	sub r3, r1, r0
	cmp r3, r2
	blt loc_808FA22
	add r0, r0, r2
	mov r4, #1
	b loc_808FA20
loc_808FA16:
	sub r3, r0, r1
	cmp r3, r2
	blt loc_808FA22
	sub r0, r0, r2
	mov r4, #1
loc_808FA20:
	mov r7, r0
loc_808FA22:
	mov r0, r6
	mov r1, r7
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_809E188
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
dword_808FA34: .word 0x10000
	thumb_func_end sub_808F9C4

	thumb_local_start
sub_808FA38:
	push {r4,r5,lr}
	ldr r5, off_808FB48 // =off_808F5D4 
	ldr r5, [r5]
	bl sub_809E1AE
	mov r2, r0
	mov r3, r1
	ldrh r0, [r5,#0x12] // (word_2000322 - 0x2000310)
	lsl r0, r0, #0x10
	ldrh r1, [r5,#0x14] // (dword_2000324 - 0x2000310)
	lsl r1, r1, #0x10
	sub r0, r0, r2
	sub r1, r1, r3
	bl sub_800118A
	cmp r0, #0
	beq locret_808FA6E
	mov r4, r0
	ldr r0, off_808FA70 // =byte_808FA74 
	ldrb r0, [r0,r4]
	mov r4, r0
	ldrb r1, [r5,#0x11] // (byte_2000321 - 0x2000310)
	cmp r0, r1
	beq locret_808FA6E
	bl sub_809E13C
	strb r4, [r5,#0x11] // (byte_2000321 - 0x2000310)
locret_808FA6E:
	pop {r4,r5,pc}
off_808FA70: .word byte_808FA74
byte_808FA74: .byte 0xB, 0xB, 0x9, 0xF, 0xD, 0x0, 0x0, 0x0
	thumb_func_end sub_808FA38

	thumb_local_start
sub_808FA7C:
	push {r4-r7,lr}
	mov r0, #0
	b loc_808FA90
	.balign 4, 0x00
	thumb_func_end sub_808FA7C

	thumb_local_start
sub_808FA84:
	push {r4-r7,lr}
	mov r0, #1
	b loc_808FA90
	.balign 4, 0x00
	thumb_func_end sub_808FA84

	thumb_local_start
sub_808FA8C:
	push {r4-r7,lr}
	mov r0, #2
loc_808FA90:
	ldr r5, off_808FB48 // =off_808F5D4 
	ldr r5, [r5]
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldrb r3, [r4,#oGameState_MapGroup]
	cmp r3, #0x85
	bne loc_808FAA2
	mov r4, #3
	b loc_808FAA4
loc_808FAA2:
	ldrb r4, [r4,#5]
loc_808FAA4:
	lsl r4, r4, #2
	ldrb r6, [r5,#0xe] // (byte_200031E - 0x2000310)
	cmp r0, #0
	bne loc_808FAB0
	ldr r0, off_808FADC // =off_808FAE8 
	b loc_808FABC
loc_808FAB0:
	cmp r0, #1
	bne loc_808FAB8
	ldr r0, off_808FAE0 // =off_808FAF8 
	b loc_808FAC2
loc_808FAB8:
	ldr r0, off_808FAE4 // =off_808FB08
	b loc_808FAC2
loc_808FABC:
	mov r1, #8
	mul r1, r6
	b loc_808FAC6
loc_808FAC2:
	mov r1, #6
	mul r1, r6
loc_808FAC6:
	ldr r0, [r0,r4]
	add r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5,#0x12] // (word_2000322 - 0x2000310)
	ldrh r1, [r0,#2]
	strh r1, [r5,#0x14] // (dword_2000324 - 0x2000310)
	ldrb r1, [r0,#4]
	strb r1, [r5,#0xf] // (byte_200031F - 0x2000310)
	ldrb r1, [r0,#5]
	strb r1, [r5,#0x10] // (byte_2000320 - 0x2000310)
	pop {r4-r7,pc}
off_808FADC: .word off_808FAE8
off_808FAE0: .word off_808FAF8
off_808FAE4: .word off_808FB08
off_808FAE8: .word byte_81434E4
	.word byte_814350C
	.word byte_814352C
	.word byte_8143564
off_808FAF8: .word byte_8143628
	.word byte_8143646
	.word byte_814365E
	.word byte_8143688
off_808FB08: .word byte_814359C
	.word byte_81435BA
	.word byte_81435D2
	.word byte_81435FC
	thumb_func_end sub_808FA8C

	thumb_local_start
sub_808FB18:
	push {lr}
	mov r0, #0xb
	mov r1, #0xe4
	bl ClearEventFlagFromImmediate
	mov r0, #0xb
	mov r1, #0xe5
	bl ClearEventFlagFromImmediate
	bl sub_808FBA0
	bl sub_809E2FC
	bl sub_808F990
	bl sub_809E23C
	ldr r1, off_808FB48 // =off_808F5D4 
	ldr r1, [r1]
	mov r0, #0
	strb r0, [r1,#0x1c] // (byte_200032C - 0x2000310)
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_808FB48: .word off_808F5D4
	thumb_func_end sub_808FB18

	thumb_local_start
sub_808FB4C:
	push {lr}
	mov r0, #0xb
	mov r1, #0xe7
	bl TestEventFlagFromImmediate
	beq loc_808FB64
	mov r0, #0xb
	mov r1, #0xe7
	bl ClearEventFlagFromImmediate
	mov r0, #0
	pop {pc}
loc_808FB64:
	mov r0, #1
	pop {pc}
	thumb_func_end sub_808FB4C

	thumb_local_start
sub_808FB68:
	push {lr}
	bl sub_809E1AE
	mov r3, #4
	lsl r3, r3, #0x10
	sub r2, r2, r3
	cmp r2, #0
	bgt loc_808FB94
	mov r2, #0
	bl sub_809E188
	bl sub_809E230
	bl reqBBS_clearFlag_8140A0C
	bl sub_809E3B2
	ldr r0, dword_808FB9C // =0x1ae 
	bl PlaySoundEffect
	mov r0, #0
	pop {pc}
loc_808FB94:
	bl sub_809E188
	mov r0, #1
	pop {pc}
dword_808FB9C: .word 0x1AE
	thumb_func_end sub_808FB68

	thumb_local_start
sub_808FBA0:
	push {lr}
	bl sub_809E1AE
	mov r3, r2
	mov r2, r1
	mov r1, r0
	bl sub_809E2B8
	mov r4, r0
	push {r5}
	mov r0, #0x1b
	bl SpawnOverworldMapObject
	pop {r5}
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_808FBA0

	thumb_local_start
sub_808FBC0:
	push {r5,lr}
	ldr r5, off_808FCE0 // =off_808F5D4 
	ldr r5, [r5]
	mov r0, #0
	bl sub_80301B2
	ldrb r3, [r5,#0xc] // (byte_200031C - 0x2000310)
	lsl r3, r3, #1
	mov r1, #0x40 
	add r1, r1, r3
	ldrsh r0, [r5,r1]
	lsl r0, r0, #0x10
	mov r1, #0x46 
	add r1, r1, r3
	ldrsh r1, [r5,r1]
	lsl r1, r1, #0x10
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_80301DC
	mov r0, #0
	pop {r5,pc}
	thumb_func_end sub_808FBC0

	thumb_local_start
sub_808FBEC:
	push {r5,lr}
	ldr r5, off_808FCE0 // =off_808F5D4 
	ldr r5, [r5]
	mov r0, #0
	bl sub_80301B2
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_808FC06
	mov r1, #3
	b loc_808FC08
loc_808FC06:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_808FC08:
	lsl r1, r1, #2
	ldr r2, off_808FC20 // =byte_808FC24 
	ldrh r0, [r2,r1]
	lsl r0, r0, #0x10
	add r1, #2
	ldrh r1, [r2,r1]
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_80301DC
	mov r0, #0
	pop {r5,pc}
off_808FC20: .word byte_808FC24
byte_808FC24: .byte 0xCA, 0xFF, 0x56, 0xFF, 0x82, 0x1, 0xE, 0x0, 0xC2, 0x1, 0xE
	.byte 0x0, 0xA4, 0xFF, 0x70, 0xFE, 0x20, 0xB5, 0x2A, 0x4D, 0x2D, 0x68
	.byte 0x2B, 0x7B, 0x5B, 0x0, 0x3, 0x48, 0xC0, 0x5A, 0x0, 0x1C, 0x9F
	.byte 0xF7, 0x66, 0xFA, 0x0, 0x20, 0x20, 0xBD
	.word byte_808FC50
byte_808FC50: .byte 0xE9, 0xB, 0xEA, 0xB, 0xEB, 0xB, 0x0, 0x0, 0x20, 0xB5
	.byte 0x21, 0x4D, 0x2D, 0x68, 0x2B, 0x7B, 0x5B, 0x0, 0x3, 0x48
	.byte 0xC0, 0x5A, 0x0, 0x1C, 0x9F, 0xF7, 0x62, 0xFA, 0x0, 0x20
	.byte 0x20, 0xBD
	.word byte_808FC74
byte_808FC74: .byte 0xEC, 0xB, 0xED, 0xB, 0xEE, 0xB, 0x0, 0x0, 0x20, 0xB5
	.byte 0x18, 0x4D, 0x2D, 0x68, 0x50, 0x46, 0xC0, 0x6B, 0x1, 0x79
	.byte 0x85, 0x29, 0x1, 0xD1, 0x3, 0x21, 0x0, 0xE0, 0x41, 0x79
	.byte 0x49, 0x0, 0x3, 0x48, 0x40, 0x5A, 0x0, 0x1C, 0x9F, 0xF7
	.byte 0x49, 0xFA, 0x0, 0x20, 0x20, 0xBD, 0x0, 0x0
	.word byte_808FCA8
byte_808FCA8: .byte 0xFD, 0xB, 0xFE, 0xB, 0xFF, 0xB, 0xFE, 0xF, 0xF0, 0xB5
	.byte 0x50, 0x46, 0xC0, 0x6B, 0x1, 0x79, 0x85, 0x29, 0x1, 0xD1
	.byte 0x3, 0x21, 0x0, 0xE0, 0x41, 0x79, 0x49, 0x0, 0x3, 0x48
	.byte 0x40, 0x5A, 0x0, 0x1C, 0x9F, 0xF7, 0x23, 0xFA, 0x0, 0x20
	.byte 0xF0, 0xBD, 0x0, 0x0
	.word byte_808FCD8
byte_808FCD8: .byte 0xE1, 0xB, 0xE2, 0xB, 0xE3, 0xB, 0xD2, 0xF
off_808FCE0: .word off_808F5D4
	thumb_func_end sub_808FBEC

	thumb_local_start
sub_808FCE4:
	push {lr}
	mov r0, #1
	bl sub_8003940
	mov r0, #0
	pop {pc}
	thumb_func_end sub_808FCE4

	thumb_local_start
sub_808FCF0:
	push {r5,lr}
	ldr r5, off_808FD60 // =off_808F5D4 
	ldr r5, [r5]
	bl sub_809E2B8
	ldr r1, off_808FD10 // =byte_808FD14
	ldrb r0, [r1,r0]
	strb r0, [r5,#0x18] // (byte_2000328 - 0x2000310)
	mov r0, #0xf
	strb r0, [r5,#0x17] // (dword_2000324+3 - 0x2000310)
	mov r0, #SOUND_HIT_6B
	bl PlaySoundEffect
	mov r0, #0
	pop {r5,pc}
	.byte 0, 0
off_808FD10: .word byte_808FD14
byte_808FD14: .byte 0x5, 0x5, 0x7, 0x7, 0x1, 0x1, 0x3, 0x3
	thumb_func_end sub_808FCF0

	thumb_local_start
sub_808FD1C:
	push {r4,r5,lr}
	ldr r5, off_808FD60 // =off_808F5D4 
	ldr r5, [r5]
	ldrb r0, [r5,#0x17] // (dword_2000324+3 - 0x2000310)
	sub r0, #1
	strb r0, [r5,#0x17] // (dword_2000324+3 - 0x2000310)
	beq loc_808FD58
	mov r4, #8
	lsl r4, r4, #0x10
	bl sub_809E1AE
	ldrb r2, [r5,#0x18] // (byte_2000328 - 0x2000310)
	cmp r2, #1
	bne loc_808FD3C
	add r0, r0, r4
	b loc_808FD4E
loc_808FD3C:
	cmp r2, #3
	bne loc_808FD44
	add r1, r1, r4
	b loc_808FD4E
loc_808FD44:
	cmp r2, #5
	bne loc_808FD4C
	sub r0, r0, r4
	b loc_808FD4E
loc_808FD4C:
	sub r1, r1, r4
loc_808FD4E:
	mov r2, #0x40 
	lsl r2, r2, #0x10
	bl sub_809E188
	b loc_808FD5C
loc_808FD58:
	mov r0, #0
	pop {r4,r5,pc}
loc_808FD5C:
	mov r0, #1
	pop {r4,r5,pc}
off_808FD60: .word off_808F5D4
	thumb_func_end sub_808FD1C

	thumb_local_start
sub_808FD64:
	push {r4,r5,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_808FD74
	mov r1, #3
	b loc_808FD76
loc_808FD74:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_808FD76:
	lsl r1, r1, #3
	ldr r4, off_808FD94 // =byte_808FD98 
	add r4, r4, r1
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	ldrh r1, [r4,#2]
	lsl r1, r1, #0x10
	ldrh r2, [r4,#4]
	lsl r2, r2, #0x10
	ldrh r3, [r4,#6]
	lsl r3, r3, #0x10
	bl sub_809E3C4
	mov r0, #0
	pop {r4,r5,pc}
off_808FD94: .word byte_808FD98
byte_808FD98: .byte 0x80, 0xFD, 0x70, 0xFE, 0x86, 0x1, 0x80, 0x2, 0x26, 0xFD
	.byte 0x70, 0xFE, 0x58, 0x2, 0x6C, 0x2, 0x94, 0xFD, 0xD0, 0xFD
	.byte 0xBC, 0x2, 0x94, 0x2
word_808FDB0: .hword 0xFDB2
word_808FDB2: .hword 0xFD8A
word_808FDB4: .hword 0x1C2
word_808FDB6: .hword 0x30C
off_808FDB8: .word unk_2000310
dword_808FDBC: .word 0x2011B30
	thumb_func_end sub_808FD64

	thumb_local_start
sub_808FDC0:
	push {r5,lr}
	ldr r5, off_808FEA0 // =off_808FDB8 
	ldr r5, [r5]
	mov r0, #0xb
	mov r1, #0xfb
	bl TestEventFlagFromImmediate
	bne loc_808FE10
	ldr r0, off_808FEA0 // =off_808FDB8 
	ldr r0, [r0]
	mov r1, #0x60 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_808FE64
	mov r0, #0xff
	strb r0, [r5,#0x4] // (byte_2000314 - 0x2000310)
	str r0, [r5,#0x20] // (dword_2000330 - 0x2000310)
	mov r0, #1
	strb r0, [r5,#0x8] // (byte_2000318 - 0x2000310)
	mov r0, #3
	strb r0, [r5,#0x16] // (dword_2000324+2 - 0x2000310)
	mov r0, #0xb
	mov r1, #0xf4
	mov r2, #7
	bl ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0xb
	mov r1, #0xe9
	mov r2, #6
	bl ClearEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0xb
	mov r1, #0xf2
	bl ClearEventFlagFromImmediate
	mov r0, #0xb
	mov r1, #0xe0
	bl SetEventFlagFromImmediate
loc_808FE10:
	bl sub_808FE64
	bl sub_808FED8
	bl sub_808FF9C
	bl sub_808FF30
	bl sub_808FF70
	mov r0, #1
	bl sub_8003914
	bl sub_809003C
	mov r0, #0
	pop {r5,pc}
	.balign 4, 0x00
	thumb_func_end sub_808FDC0

	thumb_func_start sub_808FE34
sub_808FE34:
	push {r5,lr}
	ldr r5, off_808FEA0 // =off_808FDB8 
	ldr r5, [r5]
	mov r0, #0xb
	mov r1, #0xfb
	bl TestEventFlagFromImmediate
	bne loc_808FE4E
	ldr r0, off_808FEA0 // =off_808FDB8 
	ldr r0, [r0]
	mov r1, #0x60 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
loc_808FE4E:
	mov r0, #0xff
	str r0, [r5,#0x20] // (dword_2000330 - 0x2000310)
	bl sub_808FF9C
	bl sub_809003C
	bl sub_809032C
	mov r0, #0
	pop {r5,pc}
	.balign 4, 0x00
	thumb_func_end sub_808FE34

	thumb_local_start
sub_808FE64:
	push {lr}
	ldr r0, off_808FEA0 // =off_808FDB8 
	// memBlock
	ldr r0, [r0,#0x4] // (dword_808FDBC - 0x808fdb8)
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	pop {pc}
	thumb_func_end sub_808FE64

	thumb_func_start sub_808FE74
sub_808FE74:
	push {r4-r7,lr}
	ldr r5, off_808FEA0 // =off_808FDB8 
	ldr r5, [r5]
	bl IsPaletteFadeActive // () -> zf
	beq locret_808FE9C
	bl sub_809019C
	bne loc_808FE90
	bl sub_809005C
	beq loc_808FE90
	bl sub_80900C8
loc_808FE90:
	bl sub_8090104
	cmp r0, #0
	beq locret_808FE9C
	bl init_s_02011C50_8036E90
locret_808FE9C:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_808FEA0: .word off_808FDB8
	thumb_func_end sub_808FE74

	thumb_func_start sub_808FEA4
sub_808FEA4:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	ldrb r2, [r0,#oGameState_MapNumber]
	cmp r1, #0x83
	beq loc_808FEBA
	cmp r1, #0x85
	bne locret_808FED0
	cmp r2, #2
	bne locret_808FED0
loc_808FEBA:
	ldr r5, off_808FED4 // =off_808FDB8 
	ldr r5, [r5]
	bl sub_808FF44
	ldrb r0, [r5,#0x5] // (byte_2000315 - 0x2000310)
	cmp r0, #0
	bne locret_808FED0
	bl sub_8046818
	bl sub_8046854
locret_808FED0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_808FED4: .word off_808FDB8
	thumb_func_end sub_808FEA4

	thumb_local_start
sub_808FED8:
	push {r4-r7,lr}
	bl sub_808FF00
	mov r7, r0
	mov r6, #0
loc_808FEE2:
	push {r5}
	mov r0, #0x1a
	mov r1, #0
	mov r2, #0
	mov r3, #0x40 
	lsl r3, r3, #0x10
	mov r4, r6
	bl SpawnOverworldMapObject
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_808FEE2
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_808FED8

	thumb_local_start
sub_808FF00:
	push {r4,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_808FF10
	mov r1, #3
	b loc_808FF12
loc_808FF10:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_808FF12:
	ldr r0, off_808FF28 // =dword_808FF2C 
	ldrb r4, [r0,r1]
	strb r4, [r5,#0xa]
	mov r0, #0xb
	mov r1, #0xfb
	bl TestEventFlagFromImmediate
	bne loc_808FF24
	strb r4, [r5,#0xb]
loc_808FF24:
	mov r0, r4
locret_808FF26:
	pop {r4,pc}
off_808FF28: .word dword_808FF2C
dword_808FF2C: .word 0x2020201
	thumb_func_end sub_808FF00

	thumb_local_start
sub_808FF30:
	push {lr}
	bl sub_80468BA
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	mov r0, #0
	pop {pc}
	thumb_func_end sub_808FF30

	thumb_local_start
sub_808FF44:
	push {lr}
	mov r0, #1
	bl sub_811EBE0
	bne loc_808FF68
	ldrb r0, [r5,#5]
	tst r0, r0
	beq locret_808FF6C
	bl sub_80468BA
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	mov r0, #0
	strb r0, [r5,#5]
	b locret_808FF6C
loc_808FF68:
	mov r0, #1
	strb r0, [r5,#5]
locret_808FF6C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_808FF44

	thumb_local_start
sub_808FF70:
	push {r4,lr}
	mov r4, #0
loc_808FF74:
	push {r5}
	mov r0, #0x1c
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl SpawnOverworldMapObject
	pop {r5}
	add r4, #1
	cmp r4, #7
	blt loc_808FF74
	pop {r4,pc}
	thumb_func_end sub_808FF70

	thumb_local_start
sub_808FF8C:
	push {lr}
	mov r0, #0
	ldr r1, [r5,#0x20]
	cmp r1, #0
	bne loc_808FF98
	mov r0, #1
loc_808FF98:
	tst r0, r0
	pop {pc}
	thumb_func_end sub_808FF8C

	thumb_local_start
sub_808FF9C:
	push {r4-r7,lr}
	bl sub_808FFC0
	mov r6, r3
	mov r4, r2
	mov r2, r1
	mov r1, r0
	mov r3, #0x40 
	lsl r3, r3, #0x10
	push {r5}
	mov r0, #0x1b
	bl SpawnOverworldMapObject
	strb r6, [r5,#5]
	pop {r5}
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_808FF9C

	thumb_local_start
sub_808FFC0:
	push {r4,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_808FFD0
	mov r0, #3
	b loc_808FFD2
loc_808FFD0:
	ldrb r0, [r0,#5]
loc_808FFD2:
	lsl r0, r0, #2
	ldr r1, off_808FFF0 // =off_808FFF4 
	ldr r4, [r1,r0]
	ldrb r1, [r5,#0xe]
	mov r2, #8
	mul r1, r2
	add r4, r4, r1
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	ldrh r1, [r4,#2]
	lsl r1, r1, #0x10
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#6]
	pop {r4,pc}
	.byte 0, 0
off_808FFF0: .word off_808FFF4
off_808FFF4: .word byte_81434E4
	.word byte_814350C
	.word byte_814352C
off_8090000: .word byte_8143564
	thumb_func_end sub_808FFC0

	thumb_local_start
sub_8090004:
	push {r4,lr}
	mov r4, #0
	bl reqBBS_81409E4
	cmp r0, #0x70 
	blt loc_809001A
	cmp r0, #0x79 
	bgt loc_809001A
	sub r0, #0x70 
	strb r0, [r5,#0xe]
	mov r4, #1
loc_809001A:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	thumb_func_end sub_8090004

	thumb_local_start
sub_8090020:
	push {r4,lr}
	bl reqBBS_81409E4
	cmp r0, #0x60 
	blt loc_8090034
	cmp r0, #0x69 
	bgt loc_8090034
	sub r0, #0x60 
	strb r0, [r5,#0xe]
	mov r4, #1
loc_8090034:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8090020

	thumb_local_start
sub_809003C:
	push {r4,lr}
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate
	beq locret_8090058
	mov r0, #4
	bl loc_809E306
	mov r0, #3
	bl sub_8001172
	bl reqBBS_setFlag_e17b0f7_8140A00
locret_8090058:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_809003C

	thumb_local_start
sub_809005C:
	push {r4,lr}
	mov r4, #0
	mov r0, #0xb
	mov r1, #0xe4
	bl TestEventFlagFromImmediate
	beq loc_80900C2
	bl sub_808FF8C
	beq loc_80900C2
	ldrh r0, [r5,#6]
	cmp r0, #0xfa
	bge loc_8090082
	mov r1, r10
	ldr r1, [r1,#oToolkit_JoypadPtr]
	ldrh r1, [r1]
	mov r0, #1
	and r0, r1
	bne loc_80900AE
loc_8090082:
	mov r0, #1
	strb r0, [r5,#8]
	ldrh r0, [r5,#6]
	cmp r0, #0
	beq loc_80900C2
	mov r0, #0
	strh r0, [r5,#6]
	mov r0, #0xb
	mov r1, #0xe5
	bl ClearEventFlagFromImmediate
	movflag EVENT_PET_DISABLED
	bl ClearEventFlagFromImmediate
	movflag EVENT_1739
	bl ClearEventFlagFromImmediate
	bl sub_808FE64
	b loc_80900C2
loc_80900AE:
	bl sub_8090308
	beq loc_80900C2
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bne loc_80900C2
	mov r0, #5
	strb r0, [r5,#8]
	mov r4, #1
loc_80900C2:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	thumb_func_end sub_809005C

	thumb_local_start
sub_80900C8:
	push {lr}
	bl sub_809E1AE
	sub r2, #0x20 
	sub r1, #0x20 
	add r0, #0x20 
	mov r3, r2
	mov r2, r1
	mov r1, r0
	ldrh r4, [r5,#6]
	push {r5}
	mov r0, #0x1d
	bl SpawnOverworldMapObject
	pop {r5}
	add r4, #1
	strh r4, [r5,#6]
	mov r0, #0xb
	mov r1, #0xe5
	bl SetEventFlagFromImmediate
	movflag EVENT_PET_DISABLED
	bl SetEventFlagFromImmediate
	movflag EVENT_1739
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_80900C8

	thumb_local_start
sub_8090104:
	push {r4-r7,lr}
	mov r4, #0
	mov r6, #0
	bl sub_8090004
	beq loc_8090114
	ldr r4, off_8090180 // =byte_808F668 
	b loc_809017C
loc_8090114:
	bl sub_8090020
	beq loc_809011E
	ldr r4, off_8090184 // =byte_808F67C 
	b loc_809017C
loc_809011E:
	bl sub_80902DC
	bne loc_809017C
	bl sub_808FF8C
	beq loc_8090138
	mov r0, #0xb
	mov r1, #0xf2
	bl TestEventFlagFromImmediate
	bne loc_8090138
	ldr r4, off_8090194 // =byte_808F728 
	b loc_809017C
loc_8090138:
	mov r0, #0xb
	mov r1, #0xe6
	bl TestEventFlagFromImmediate
	beq loc_8090166
	ldrb r0, [r5,#0x16]
	sub r0, #1
	strb r0, [r5,#0x16]
	beq loc_809015A
	mov r1, #3
	sub r1, r1, r0
	mov r0, r1
	strb r0, [r5,#0x1c]
	bl loc_809E2FE
	ldr r4, off_8090198 // =byte_808F6EC 
	b loc_809017C
loc_809015A:
	mov r0, #0
	strb r0, [r5,#0xe]
	mov r0, #3
	strb r0, [r5,#0x16]
	ldr r4, off_8090188 // =byte_808F690 
	b loc_809017C
loc_8090166:
	bl sub_80901EC
	beq loc_8090170
	ldr r4, off_809018C // =byte_808F748 
	b loc_809017C
loc_8090170:
	ldrb r0, [r5,#0xb]
	cmp r0, #0
	bne loc_809017C
	mov r0, #0xff
	strb r0, [r5,#0xb]
	ldr r4, off_8090190 // =byte_808F788 
loc_809017C:
	mov r0, r4
	pop {r4-r7,pc}
off_8090180: .word byte_808F668
off_8090184: .word byte_808F67C
off_8090188: .word byte_808F690
off_809018C: .word byte_808F748
off_8090190: .word byte_808F788
off_8090194: .word byte_808F728
off_8090198: .word byte_808F6EC
	thumb_func_end sub_8090104

	thumb_local_start
sub_809019C:
	push {r4-r7,lr}
	mov r6, #0
	mov r0, #0xb
	mov r1, #0xe8
	bl TestEventFlagFromImmediate
	beq loc_80901E4
	mov r4, #0
loc_80901AC:
	mov r0, r4
	bl sub_809022C
	beq loc_80901DC
	ldr r0, off_809021C // =byte_8090226 
	mov r1, r4
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_80901DC
	mov r6, #1
	ldr r0, off_8090218 // =byte_8090220 
	mov r1, r4
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	mov r0, r0
	bl SetEventFlag
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	beq loc_80901E4
loc_80901DC:
	add r4, #1
	ldrb r0, [r5,#0xa]
	cmp r4, r0
	blt loc_80901AC
loc_80901E4:
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_809019C

	thumb_local_start
sub_80901EC:
	push {r4,r6,lr}
	mov r6, #0
	mov r4, #0
	strb r4, [r5,#0xc]
loc_80901F4:
	ldr r0, off_8090218 // =byte_8090220 
	mov r1, r4
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_809020A
	mov r6, #1
	strb r4, [r5,#0xc]
	b loc_8090210
loc_809020A:
	add r4, #1
	cmp r4, #3
	blt loc_80901F4
loc_8090210:
	mov r0, r6
	tst r0, r0
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8090218: .word byte_8090220
off_809021C: .word byte_8090226
byte_8090220: .byte 0xEC, 0xB, 0xED, 0xB, 0xEE, 0xB
byte_8090226: .byte 0xE9, 0xB, 0xEA, 0xB, 0xEB, 0xB
	thumb_func_end sub_80901EC

	thumb_local_start
sub_809022C:
	push {r4-r7,lr}
	mov r1, r8
	push {r1}
	mov r8, r0
	ldr r6, off_80902D8 // =off_808FDB8 
	ldr r6, [r6,#0x4] // (dword_808FDBC - 0x808fdb8)
	mov r7, #0
	mov r0, #0
	strb r0, [r5,#9]
loc_809023E:
	mov r1, #0x40 
	mov r0, r8
	lsl r0, r0, #1
	add r0, r0, r1
	ldrsh r0, [r5,r0]
	sub r0, #0x14
	mov r1, #0
	mov r2, r7
	lsl r2, r2, #1
	add r1, r1, r2
	ldrsh r1, [r6,r1]
	cmp r0, r1
	bgt loc_80902B4
	mov r0, r8
	mov r1, #0x46 
	lsl r0, r0, #1
	add r0, r0, r1
	ldrsh r0, [r5,r0]
	mov r1, #0x3c 
	mov r2, r7
	lsl r2, r2, #1
	add r1, r1, r2
	ldrsh r1, [r6,r1]
	mov r3, #0
	cmp r0, r1
	bne loc_8090274
	mov r3, #2
loc_8090274:
	cmp r0, r1
	bgt loc_809027A
	mov r3, #1
loc_809027A:
	mov r2, r7
	add r2, #1
	mov r4, #0x18
	ldrh r1, [r5,#6]
	cmp r1, #0x19
	bge loc_809028A
	sub r1, #1
	mov r4, r1
loc_809028A:
	cmp r7, r4
	blt loc_8090290
	mov r2, #0
loc_8090290:
	mov r1, #0x3c 
	lsl r2, r2, #1
	add r1, r1, r2
	ldrsh r1, [r6,r1]
	mov r4, #0
	cmp r0, r1
	bne loc_80902A0
	mov r4, #2
loc_80902A0:
	cmp r0, r1
	bgt loc_80902A6
	mov r4, #1
loc_80902A6:
	cmp r3, r4
	bne loc_80902AE
	cmp r3, #2
	bne loc_80902B4
loc_80902AE:
	ldrb r0, [r5,#9]
	add r0, #1
	strb r0, [r5,#9]
loc_80902B4:
	ldrh r0, [r5,#6]
	cmp r0, #0x19
	blt loc_80902BC
	mov r0, #0x19
loc_80902BC:
	add r7, #1
	cmp r7, r0
	blt loc_809023E
	mov r0, #0
	ldrb r1, [r5,#9]
	mov r2, #1
	and r1, r2
	beq loc_80902CE
	mov r0, #1
loc_80902CE:
	pop {r1}
	mov r8, r1
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80902D8: .word off_808FDB8
	thumb_func_end sub_809022C

	thumb_local_start
sub_80902DC:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	bne loc_80902EC
	mov r1, #3
	b loc_80902EE
loc_80902EC:
	ldrb r1, [r0,#oGameState_MapNumber]
loc_80902EE:
	lsl r1, r1, #1
	ldr r0, off_80902FC // =byte_8090300 
	ldrh r0, [r0,r1]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r4-r7,pc}
off_80902FC: .word byte_8090300
byte_8090300: .byte 0xE1, 0xB, 0xE2, 0xB, 0xE3, 0xB, 0xD2, 0xF
	thumb_func_end sub_80902DC

	thumb_local_start
sub_8090308:
	push {r4,lr}
	bl sub_809E1AE
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r4, [r4,#oGameState_OverworldPlayerObjectPtr]
	ldr r2, [r4,#0x28]
	ldr r3, [r4,#0x2c]
	mov r4, #1
	cmp r0, r2
	bne loc_8090324
	cmp r1, r3
	bne loc_8090324
	mov r4, #0
loc_8090324:
	mov r0, r4
	tst r0, r0
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8090308

	thumb_local_start
sub_809032C:
	push {lr}
	mov r0, #1
	bl sub_80039D4
	beq loc_809033C
	mov r0, #1
	bl sub_8003940
loc_809033C:
	mov r0, #0
	// <endpool> <endfile>
	pop {pc}
	thumb_func_end sub_809032C

/*For debugging purposes, connect comment at any range!*/
