
	thumb_func_start AquariumComp_EnterMapGroup
AquariumComp_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8067BB4 // =off_80676E8 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl AquariumComp_LoadBGAnim
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
	ldr r0, off_8067BB8 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8067BBC // =off_8067BC0 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl AquariumComp_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_8067BB4: .word off_80676E8
off_8067BB8: .word unk_2037800
off_8067BBC: .word off_8067BC0
off_8067BC0: .word byte_8067BCC
	.word byte_8067BD4
	.word byte_8067BDC
byte_8067BCC: .byte 0x1C, 0x45, 0x1C, 0x46, 0x1C, 0x2F, 0xFF, 0xFF
byte_8067BD4: .byte 0x1C, 0x45, 0x1C, 0x46, 0x1C, 0x2F, 0xFF, 0xFF
byte_8067BDC: .byte 0x1C, 0x45, 0x1C, 0x46, 0x1C, 0x2F, 0xFF, 0xFF
	thumb_func_end AquariumComp_EnterMapGroup

	thumb_func_start AquariumComp_LoadGFXAnims
AquariumComp_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8067BF4 // =off_8067BF8 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_8067BF4: .word off_8067BF8
off_8067BF8: .word off_8067C04
	.word off_8067C30
	.word off_8067C5C
off_8067C04: .word off_8067754
	.word off_8067914
	.word off_8067944
	.word off_80679A4
	.word off_80679D4
	.word off_8067A14
	.word off_8067A44
	.word off_8067A6C
	.word off_8067A9C
	.word off_8067ACC
	.word 0xFFFFFFFF
off_8067C30: .word off_8067754
	.word off_8067914
	.word off_8067944
	.word off_80679A4
	.word off_80679D4
	.word off_8067A14
	.word off_8067A44
	.word off_8067A6C
	.word off_8067A9C
	.word off_8067ACC
	.word 0xFFFFFFFF
off_8067C5C: .word off_8067754
	.word off_8067914
	.word off_8067944
	.word off_80679A4
	.word off_80679D4
	.word off_8067A14
	.word off_8067A44
	.word off_8067A6C
	.word off_8067A9C
	.word off_8067ACC
	.word 0xFFFFFFFF
	thumb_func_end AquariumComp_LoadGFXAnims

	thumb_func_start AquariumComp_LoadBGAnim
AquariumComp_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8067CBC // =off_8067CC0 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_8067CF0 // =off_8067CF4 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8067CBC: .word off_8067CC0
off_8067CC0: .word nullsub_39+1
	.word BGScrollCB_BG3FastLeftScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3FastLeftScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3FastLeftScroll+1
	.word nullsub_38+1
	.word 0x800
off_8067CF0: .word off_8067CF4
off_8067CF4: .word off_8067D00
	.word off_8067D00
	.word off_8067D00
off_8067D00: .word off_86116C8
	.word 0x6008020
	.word byte_861184C
	.word 0x1800
	.word byte_86119C4
	.word palette_3001960
	.word 0x20
	thumb_func_end AquariumComp_LoadBGAnim

	thumb_func_start AquariumComp_UnkFunction_8067d1c
AquariumComp_UnkFunction_8067d1c:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_8067D30 // =off_8067D34 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8067D30: .word off_8067D34
off_8067D34: .word nullsub_64+1
	.word nullsub_65+1
	.word nullsub_66+1
	thumb_func_end AquariumComp_UnkFunction_8067d1c

	thumb_local_start
nullsub_64:
	mov pc, lr
	thumb_func_end nullsub_64

	thumb_local_start
nullsub_65:
	mov pc, lr
	thumb_func_end nullsub_65

	thumb_local_start
nullsub_66:
	mov pc, lr
	thumb_func_end nullsub_66

	thumb_func_start AquariumComp_SpawnMapObjectsForMap
AquariumComp_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8067D5C // =pt_8067D60 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0x00
off_8067D5C: .word pt_8067D60
pt_8067D60:
	// <endpool>
	.word byte_8067D6C
	.word byte_8067D84
	.word byte_8067D9C
	thumb_func_end AquariumComp_SpawnMapObjectsForMap
