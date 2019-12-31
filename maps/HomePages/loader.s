
	thumb_func_start sub_806C23C
sub_806C23C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806C294 // =off_806BFF8 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl sub_806C35C
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl sub_803037C
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl decompressCoordEventData_8030aa4
	ldr r0, [r5,#oGameState_PlayerX]
	ldr r1, [r5,#oGameState_PlayerY]
	ldr r2, [r5,#oGameState_Unk_2c]
	ldrb r3, [r5,#oGameState_MapGroup]
	ldrb r4, [r5,#oGameState_MapNumber]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_806C298 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_806C29C // =off_806C2A0 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_806C59C
	bl sub_8034FB8
	pop {r4-r7,pc}
off_806C294: .word off_806BFF8
off_806C298: .word unk_2037800
off_806C29C: .word off_806C2A0
off_806C2A0: .word byte_806C2BC
	.word byte_806C2C2
	.word byte_806C2CA
	.word byte_806C2D0
	.word 0x0
	.word byte_806C2D6
	.word byte_806C2DC
byte_806C2BC: .byte 0x1C, 0x88, 0x1C, 0x98, 0xFF, 0xFF
byte_806C2C2: .byte 0x1C, 0x6, 0x1C, 0x88, 0x18, 0x38, 0xFF, 0xFF
byte_806C2CA: .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
byte_806C2D0: .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
byte_806C2D6: .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
byte_806C2DC: .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
	thumb_func_end sub_806C23C

	thumb_func_start sub_806C2E2
sub_806C2E2:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806C2F0 // =off_806C2F4 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
off_806C2F0: .word off_806C2F4
off_806C2F4: .word off_806C310
	.word off_806C31C
	.word off_806C328
	.word off_806C334
	.word 0x0
	.word off_806C344
	.word off_806C350
off_806C310: .word off_806C194
	.word off_806C1DC
	.word 0xFFFFFFFF
off_806C31C: .word off_806C194
	.word off_806C1DC
	.word 0xFFFFFFFF
off_806C328: .word off_806C194
	.word off_806C1DC
	.word 0xFFFFFFFF
off_806C334: .word off_806C194
	.word off_806C1DC
	.word off_806C20C
	.word 0xFFFFFFFF
off_806C344: .word off_806C194
	.word off_806C1DC
	.word 0xFFFFFFFF
off_806C350: .word off_806C194
	.word off_806C1DC
	.word 0xFFFFFFFF
	thumb_func_end sub_806C2E2

	thumb_func_start sub_806C35C
sub_806C35C:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806C390 // =off_806C394 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_806C404 // =off_806C408 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_806C390: .word off_806C394
off_806C394: .word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word nullsub_39+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
off_806C404: .word off_806C408
off_806C408: .word off_806C424
	.word off_806C440
	.word 0x0
	.word off_806C45C
	.word 0x0
	.word off_806C478
	.word off_806C494
off_806C424: .word off_8614DE0
	.word 0x6008020
	.word dword_8615028
	.word 0x1800
	.word dword_86151BC
	.word 0x3001960
	.word 0x20
off_806C440: .word off_8615360
	.word 0x6008020
	.word dword_86154A8
	.word 0x1800
	.word dword_86155E8
	.word 0x3001960
	.word 0x20
off_806C45C: .word off_861578C
	.word 0x6008020
	.word dword_861595C
	.word 0x1800
	.word 0x0
	.word 0x0
	.word 0x0
off_806C478: .word off_8615BA4
	.word 0x6008020
	.word byte_8615D14
	.word 0x1800
	.word byte_8615E88
	.word 0x3001960
	.word 0x20
off_806C494: .word off_861602C
	.word 0x6008020
	.word dword_8616264
	.word 0x1800
	.word byte_86163F4
	.word palette_3001960
	.word 0x20
	thumb_func_end sub_806C35C

	thumb_func_start sub_806C4B0
sub_806C4B0:
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
	ldr r7, off_806C4D8 // =off_806C4DC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_806C4D8: .word off_806C4DC
off_806C4DC: .word sub_806C4F8+1
	.word sub_806C514+1
	.word 0x0
	.word sub_806C532+1
	.word 0x0
	.word sub_806C55A+1
	.word sub_806C578+1
	thumb_func_end sub_806C4B0

	thumb_local_start
sub_806C4F8:
	push {lr}
	cmp r0, #1
	bne loc_806C504
	cmp r1, #2
	bne loc_806C504
	pop {pc}
loc_806C504:
	ldr r0, off_806C598 // =off_806C1C4 
	bl LoadGFXAnim
	mov r0, #0x16
	mov r1, #0xf1
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806C4F8

	thumb_local_start
sub_806C514:
	push {lr}
	cmp r0, #0
	bne loc_806C520
	cmp r1, #0
	bne loc_806C520
	pop {pc}
loc_806C520:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806C514

	thumb_local_start
sub_806C532:
	push {lr}
	cmp r0, #3
	bne loc_806C548
	cmp r1, #2
	bne loc_806C548
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldr r0, [r1,#oGameState_Unk_3c]
	cmp r0, #0
	bne loc_806C548
	pop {pc}
loc_806C548:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806C532

	thumb_local_start
sub_806C55A:
	push {lr}
	cmp r0, #4
	bne loc_806C566
	cmp r1, #1
	bne loc_806C566
	pop {pc}
loc_806C566:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806C55A

	thumb_local_start
sub_806C578:
	push {lr}
	cmp r0, #5
	bne loc_806C584
	cmp r1, #1
	bne loc_806C584
	pop {pc}
loc_806C584:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	.balign 4, 0x00
off_806C598: .word off_806C1C4
	thumb_func_end sub_806C578

	thumb_func_start sub_806C59C
sub_806C59C:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806C5B0 // =pt_806C5B4 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_806C5B0: .word pt_806C5B4
pt_806C5B4:
	// <endpool>
	.word byte_806C5D0
	.word byte_806C638
	.word 0x0
	.word byte_806C68C
	.word 0x0
	.word byte_806C6E0
	.word byte_806C748
	thumb_func_end sub_806C59C
/*For debugging purposes, connect comment at any range!*/
