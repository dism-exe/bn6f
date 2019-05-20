
	thumb_func_start sub_806D8F8
sub_806D8F8:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806D950 // =off_806D6B0 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_806DA58
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_806D954 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_806D958 // =off_806D95C 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_806DCD4
	bl sub_8034FB8
	pop {r4-r7,pc}
off_806D950: .word off_806D6B0
off_806D954: .word unk_2037800
off_806D958: .word off_806D95C
off_806D95C: .word byte_806D99C
	.word dword_806D9A2
	.word byte_806D9A6
	.word byte_806D9B0
	.word dword_806D9B8
	.word byte_806D9BC
	.word byte_806D9C2
	.word byte_806D9CA
	.word dword_806D9D2
	.word byte_806D9D6
	.word dword_806D9DC
	.word byte_806D9E0
	.word byte_806D9E6
	.word byte_806D9EC
	.word byte_806D9F2
	.word dword_806D9F8
byte_806D99C: .byte 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
dword_806D9A2: .word 0xFFFF061C
byte_806D9A6: .byte 0x1C, 0x1B, 0x1C, 0x1C, 0x1C, 0x6, 0x1C, 0x12, 0xFF
	.byte 0xFF
byte_806D9B0: .byte 0x1C, 0x29, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
dword_806D9B8: .word 0xFFFF061C
byte_806D9BC: .byte 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
byte_806D9C2: .byte 0x1C, 0x29, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
byte_806D9CA: .byte 0x1C, 0x5E, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
dword_806D9D2: .word 0xFFFF061C
byte_806D9D6: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
dword_806D9DC: .word 0xFFFF061C
byte_806D9E0: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
byte_806D9E6: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
byte_806D9EC: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
byte_806D9F2: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
dword_806D9F8: .word 0xFFFF061C
	thumb_func_end sub_806D8F8

	thumb_func_start sub_806D9FC
sub_806D9FC:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806DA0C // =off_806DA10 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_806DA0C: .word off_806DA10
off_806DA10: .word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
off_806DA50: .word byte_806D820
	.word 0xFFFFFFFF
	thumb_func_end sub_806D9FC

	thumb_func_start sub_806DA58
sub_806DA58:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806DA8C // =off_806DA90 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sRender_08_setRenderingState
	ldr r0, off_806DB90 // =off_806DB94 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_806DA8C: .word off_806DA90
off_806DA90: .word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
off_806DB90: .word off_806DB94
off_806DB94: .word off_806DBD4
	.word off_806DBF0
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBF0
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBF0
off_806DBD4: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616760
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
off_806DBF0: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616EC4
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
	thumb_func_end sub_806DA58

	thumb_func_start sub_806DC0C
sub_806DC0C:
	push {r4-r7,lr}
	push {r0,r1}
	mov r0, #0
	mov r1, #0x8e
	bl SetEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl ClearEventFlagFromImmediate
	pop {r0,r1}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806DC34 // =off_806DC38 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_806DC34: .word off_806DC38
off_806DC38: .word nullsub_70+1
	.word sub_806DC7A+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word sub_806DC98+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word sub_806DCB6+1
	thumb_func_end sub_806DC0C

	thumb_local_start
nullsub_70:
	mov pc, lr
	thumb_func_end nullsub_70

	thumb_local_start
sub_806DC7A:
	push {lr}
	cmp r0, #2
	bne loc_806DC86
	cmp r1, #9
	bne loc_806DC86
	pop {pc}
loc_806DC86:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806DC7A

	thumb_local_start
sub_806DC98:
	push {lr}
	cmp r0, #4
	bne loc_806DCA4
	cmp r1, #0
	bne loc_806DCA4
	pop {pc}
loc_806DCA4:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806DC98

	thumb_local_start
sub_806DCB6:
	push {lr}
	cmp r0, #5
	bne loc_806DCC2
	cmp r1, #0
	bne loc_806DCC2
	pop {pc}
loc_806DCC2:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806DCB6

	thumb_func_start sub_806DCD4
sub_806DCD4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806DCE8 // =pt_806DCEC 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_806DCE8: .word pt_806DCEC
pt_806DCEC:
	// <endpool> <endfile>
	.word byte_806DD2C
	.word byte_806DD44
	.word byte_806DD84
	.word byte_806DD9C
	.word byte_806DDB4
	.word byte_806DDCC
	.word byte_806DDE4
	.word byte_806DDFC
	.word byte_806DE3C
	.word byte_806DE54
	.word byte_806DE80
	.word byte_806DEC0
	.word byte_806DEEC
	.word byte_806DF18
	.word byte_806DF44
	.word byte_806DF70
	thumb_func_end sub_806DCD4

/*For debugging purposes, connect comment at any range!*/
