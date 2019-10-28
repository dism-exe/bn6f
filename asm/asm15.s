
	thumb_func_start sub_807544C
sub_807544C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_80754A4 // =off_8074F30 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl sub_8075530
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl sub_803037C
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl sub_8030AA4
	ldr r0, [r5,#oGameState_PlayerX]
	ldr r1, [r5,#oGameState_PlayerY]
	ldr r2, [r5,#oGameState_Unk_2c]
	ldrb r3, [r5,#oGameState_MapGroup]
	ldrb r4, [r5,#oGameState_MapNumber]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_80754A8 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_80754AC // =off_80754B0 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_80755EE
	bl sub_8034FB8
	pop {r4-r7,pc}
off_80754A4: .word off_8074F30
off_80754A8: .word unk_2037800
off_80754AC: .word off_80754B0
off_80754B0: .word byte_80754BC
	.word byte_80754C8
	.word 0x80754D2
byte_80754BC: .byte 0x1C, 0x3E, 0x1C, 0x49, 0x1C, 0x4A, 0x1C, 0x4B, 0x1C
	.byte 0xE, 0xFF, 0xFF
byte_80754C8: .byte 0x1C, 0xE, 0x1C, 0x49, 0x1C, 0x4A, 0x1C, 0x4B, 0xFF
	.byte 0xFF, 0x1C, 0x49, 0x1C, 0x4A, 0x1C, 0x4B, 0x1C, 0x38
	.byte 0x1C, 0xE, 0x1C, 0x95, 0x1C, 0x25, 0xFF, 0xFF
	thumb_func_end sub_807544C

	thumb_func_start sub_80754E2
sub_80754E2:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_80754F0 // =off_80754F4 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
off_80754F0: .word off_80754F4
off_80754F4: .word off_8075500
	.word off_8075510
	.word off_8075520
off_8075500: .word byte_8074FDC
	.word byte_807500C
	.word off_807505C
	.word 0xFFFFFFFF
off_8075510: .word byte_807534C
	.word byte_807537C
	.word off_807505C
	.word 0xFFFFFFFF
off_8075520: .word byte_80753CC
	.word byte_80753FC
	.word off_807505C
	.word 0xFFFFFFFF
	thumb_func_end sub_80754E2

	thumb_func_start sub_8075530
sub_8075530:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8075564 // =off_8075568 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_8075598 // =off_807559C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8075564: .word off_8075568
off_8075568: .word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1
	.byte 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A
	.byte 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0
	.byte 0x0
off_8075598: .word off_807559C
off_807559C: .word off_80755A8
	.word off_80755A8
	.word off_80755A8
off_80755A8: .word off_8617068
	.byte 0x20, 0x80, 0x0, 0x6, 0x90, 0x71, 0x61, 0x8, 0x0, 0x18, 0x0
	.byte 0x0, 0xC8, 0x85, 0x61, 0x8, 0x60, 0x19, 0x0, 0x3, 0x20, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_8075530

	thumb_func_start sub_80755C4
sub_80755C4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_80755D8 // =off_80755DC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_80755D8: .word off_80755DC
off_80755DC: .word nullsub_74+1
	.word nullsub_75+1
	.word nullsub_76+1
	thumb_func_end sub_80755C4

	thumb_local_start
nullsub_74:
	mov pc, lr
	thumb_func_end nullsub_74

	thumb_local_start
nullsub_75:
	mov pc, lr
	thumb_func_end nullsub_75

	thumb_local_start
nullsub_76:
	mov pc, lr
	thumb_func_end nullsub_76

	thumb_func_start sub_80755EE
sub_80755EE:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8075604 // =off_8075608 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0x00
off_8075604: .word off_8075608
off_8075608:
	// <endpool>
	.word byte_8075614
	thumb_func_end sub_80755EE

	.word byte_8075708
	// <endfile>
	.word byte_807575C
/*For debugging purposes, connect comment at any range!*/
