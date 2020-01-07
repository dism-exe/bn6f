
	thumb_func_start sub_8086F18
sub_8086F18:
	push {r4-r7,lr}
	ldr r5, off_8086FA0 // =off_8086D18 
	ldr r5, [r5]
	mov r6, #0
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x81
	beq loc_8086F2E
	mov r0, #3
	b loc_8086F30
loc_8086F2E:
	ldrb r0, [r0,#5]
loc_8086F30:
	ldr r1, off_8086F54 // =dword_8086F58 
	ldrb r7, [r1,r0]
	strb r7, [r5,#0xa] // (byte_2011A9A - 0x2011a90)
loc_8086F36:
	push {r5}
	mov r0, #9
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, r6
	bl SpawnOverworldMapObject
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_8086F36
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
	.balign 4, 0
off_8086F54: .word dword_8086F58
dword_8086F58: .word 0x2030101
	thumb_func_end sub_8086F18

	thumb_func_start sub_8086F5C
sub_8086F5C:
	push {r4-r7,lr}
	ldr r5, off_8086FA0 // =off_8086D18 
	ldr r5, [r5]
	mov r6, #0
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x81
	beq loc_8086F72
	mov r0, #3
	b loc_8086F74
loc_8086F72:
	ldrb r0, [r0,#5]
loc_8086F74:
	ldr r1, off_8086F98 // =dword_8086F9C 
	ldrb r7, [r1,r0]
	strb r7, [r5,#0xb] // (byte_2011A9B - 0x2011a90)
loc_8086F7A:
	push {r5}
	mov r0, #0xa
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, r6
	bl SpawnOverworldMapObject
	pop {r5}
	add r6, #1
	cmp r6, r7
	blt loc_8086F7A
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
	.balign 4, 0
off_8086F98: .word dword_8086F9C
dword_8086F9C: .word 0x3020202
off_8086FA0: .word off_8086D18
	thumb_func_end sub_8086F5C

	thumb_func_start sub_8086FA4
sub_8086FA4:
	push {r4,lr}
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r1, [r0,#4]
	cmp r1, #0x81
	beq loc_8086FB4
	mov r0, #3
	b loc_8086FB6
loc_8086FB4:
	ldrb r0, [r0,#5]
loc_8086FB6:
	lsl r0, r0, #1
	ldr r1, off_8086FCC // =byte_8086FD0 
	ldrh r0, [r1,r0]
	mov r4, #0
	mov r0, r0
	bl TestEventFlag // (u16 flag) -> !zf
	beq loc_8086FC8
	mov r4, #1
loc_8086FC8:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
off_8086FCC: .word byte_8086FD0
byte_8086FD0: .byte 0xE1, 0x5, 0xE2, 0x5, 0xE3, 0x5, 0xC0, 0xF
	thumb_func_end sub_8086FA4

	thumb_local_start
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
	movflag EVENT_5F1
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	beq loc_8087004
	mov r0, #1
	strb r0, [r5,#9]
	b loc_8087048
loc_8087004:
	movflag EVENT_5F3
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	beq loc_808702C
	mov r0, #1
	strb r0, [r5,#5]
	strb r0, [r5,#7]
	mov r0, #1
	strb r0, [r5,#1]
	movflag EVENT_5F3
	bl ClearEventFlagFromImmediate
	movflag EVENT_5F2
	bl SetEventFlagFromImmediate
	ldr r0, off_80870F8 // =off_8086D1C+4 
	b loc_80870F2
loc_808702C:
	movflag EVENT_5F4
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	beq locret_80870F6
	mov r0, #2
	strb r0, [r5,#5]
	strb r0, [r5,#7]
	movflag EVENT_5F4
	bl ClearEventFlagFromImmediate
	ldr r0, off_80870F8 // =off_8086D1C+4 
	b loc_80870F2
loc_8087048:
	ldr r0, off_80870FC // =byte_8086D2C+4 
	b loc_80870F2
loc_808704C:
	bl sub_80871C0
	bne loc_808705C
	movflag EVENT_5F2
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_8087062
loc_808705C:
	mov r1, r4
	ldr r0, off_8087100 // =byte_8086D5C 
	b loc_80870F2
loc_8087062:
	mov r1, r4
	ldr r0, off_8087104 // =byte_8086D74 
	b loc_80870F2
loc_8087068:
	mov r0, #0
	strb r0, [r5,#1]
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	cmp r1, #0x85
	beq loc_80870C2
	ldrb r0, [r0,#oGameState_MapNumber]
	cmp r0, #0
	bne loc_8087092
	movflag EVENT_5E1
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_80870D8
	movflag EVENT_5E1
	bl SetEventFlagFromImmediate
	ldr r0, off_8087108 // =byte_8086340+20 
	b loc_80870F2
loc_8087092:
	cmp r0, #1
	bne loc_80870AC
	movflag EVENT_5E2
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_80870D8
	movflag EVENT_5E2
	bl SetEventFlagFromImmediate
	ldr r0, off_808710C // =byte_8086340+104 
	b loc_80870F2
loc_80870AC:
	movflag EVENT_5E3
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_80870D8
	movflag EVENT_5E3
	bl SetEventFlagFromImmediate
	ldr r0, off_8087110 // =byte_8086340+188 
	b loc_80870F2
loc_80870C2:
	mov r0, #0xf
	mov r1, #0xc0
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_80870D8
	mov r0, #0xf
	mov r1, #0xc0
	bl SetEventFlagFromImmediate
	ldr r0, off_8087114 // =byte_8086460+8 
	b loc_80870F2
loc_80870D8:
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r1, [r1,#oGameState_MapGroup]
	cmp r1, #0x81
	bne loc_80870E8
	mov r0, #0x23 
	bl sub_800060A
loc_80870E8:
	bl sub_8086F18
	bl sub_8086F5C
	b locret_80870F6
loc_80870F2:
	bl StartCutscene
locret_80870F6:
	pop {r4-r7,pc}
	.balign 4, 0
off_80870F8: .word off_8086D1C+4
off_80870FC: .word byte_8086D2C+4
off_8087100: .word byte_8086D5C
off_8087104: .word byte_8086D74
off_8087108: .word byte_8086340+0x14
off_808710C: .word byte_8086340+0x68
off_8087110: .word byte_8086340+0xBC
off_8087114: .word byte_8086460+8
	.word 0x13B
	thumb_func_end sub_8086FD8

	thumb_local_start
sub_808711C:
	push {lr}
	ldr r0, off_8087138 // =byte_80868C8+32 
	ldrb r1, [r5,#0xc]
	ldrb r2, [r5,#6]
	cmp r2, #0x32 
	blt loc_808712A
	sub r2, #0x28 
loc_808712A:
	cmp r1, r2
	beq loc_8087130
	ldr r0, off_808713C // =byte_8086678+32 
loc_8087130:
	bl StartCutscene
	pop {pc}
	.balign 4, 0
off_8087138: .word byte_80868C8+0x20
off_808713C: .word byte_8086678+0x20
	thumb_func_end sub_808711C

	thumb_local_start
sub_8087140:
	push {r4,lr}
	mov r1, r10
	ldr r1, [r1,#0x3c]
	ldr r1, [r1,#0x18]
	ldrb r4, [r1,#0x13]
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8087140

	thumb_func_start sub_8087150
sub_8087150:
	push {r4-r7,lr}
	bl ReadOWPlayerObjectCoords
	mov r4, #0xa
	mov r6, #0
	mov r3, #0x10
loc_808715C:
	str r0, [r5,r3]
	add r3, #0xc
	add r6, #1
	cmp r6, r4
	blt loc_808715C
	mov r3, #0x14
	mov r6, #0
loc_808716A:
	str r1, [r5,r3]
	add r3, #0xc
	add r6, #1
	cmp r6, r4
	blt loc_808716A
	mov r3, #0x18
	mov r6, #0
loc_8087178:
	str r2, [r5,r3]
	add r3, #0xc
	add r6, #1
	cmp r6, r4
	blt loc_8087178
	pop {r4-r7,pc}
	thumb_func_end sub_8087150

	thumb_local_start
sub_8087184:
	push {r4-r7,lr}
	mov r3, #0x70 
	mov r4, #0x7c 
	mov r6, #0
	mov r7, #9
loc_808718E:
	ldr r0, [r5,r3]
	add r3, #4
	ldr r1, [r5,r3]
	add r3, #4
	ldr r2, [r5,r3]
	sub r3, #0x14
	str r0, [r5,r4]
	add r4, #4
	str r1, [r5,r4]
	add r4, #4
	str r2, [r5,r4]
	sub r4, #0x14
	add r6, #1
	cmp r6, r7
	blt loc_808718E
	bl ReadOWPlayerObjectCoords
	mov r3, #0x10
	str r0, [r5,r3]
	add r3, #4
	str r1, [r5,r3]
	add r3, #4
	str r2, [r5,r3]
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8087184

	thumb_local_start
sub_80871C0:
	push {lr}
	ldrb r0, [r5,#0xc]
	lsl r0, r0, #1
	ldr r1, off_80871D4 // =byte_80871D8 
	ldrh r1, [r1,r0]
	mov r0, r1
	bl TestEventFlag // (u16 flag) -> !zf
	pop {pc}
	.hword 0x0
off_80871D4:
	// <endpool> <endfile>
	.word byte_80871D8
	thumb_func_end sub_80871C0

/*For debugging purposes, connect comment at any range!*/
