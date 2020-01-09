
	thumb_func_start Underground_EnterMapGroup
Underground_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8079374 // =off_80790A4 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
	bl Underground_LoadBGAnim
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl initMapTilesState_803037c
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl decompressCoordEventData_8030aa4
	ldr r0, [r5,#oGameState_PlayerX]
	ldr r1, [r5,#oGameState_PlayerY]
	ldr r2, [r5,#oGameState_PlayerZ]
	ldrb r3, [r5,#oGameState_MapGroup]
	ldrb r4, [r5,#oGameState_MapNumber]
	bl camera_802FF4C
	bl decompAndCopyMapTiles_8030472
	ldr r0, off_8079378 // =unk_2037800 
	bl initUncompSpriteState_80028d4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_807937C // =off_8079380 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl Underground_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_8079374: .word off_80790A4
off_8079378: .word unk_2037800
off_807937C: .word off_8079380
off_8079380: .word byte_8079388
	.word byte_8079390
byte_8079388: .byte 0x1C, 0xE, 0x1C, 0x20, 0x1C, 0x4B, 0xFF, 0xFF
byte_8079390: .byte 0x1C, 0xE, 0x18, 0x5A, 0x18, 0x5B, 0x1C, 0x99, 0xFF
	.byte 0xFF
	thumb_func_end Underground_EnterMapGroup

	thumb_func_start Underground_LoadGFXAnims
Underground_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_80793A8 // =off_80793AC 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_80793A8: .word off_80793AC
off_80793AC: .word off_80793B4
	.word off_80793CC
off_80793B4: .word off_80790EC
	.word off_807C974
	.word byte_8079114
	.word byte_8079164
	.word byte_80791B4
	.word 0xFFFFFFFF
off_80793CC: .word off_80790EC
	.word off_807C974
	.word byte_8079204
	.word byte_8079254
	.word byte_80792A4
	.word byte_80792F4
	.word 0xFFFFFFFF
	thumb_func_end Underground_LoadGFXAnims

	thumb_func_start Underground_LoadBGAnim
Underground_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_807941C // =off_8079420 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_8079440 // =off_8079444 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_807941C: .word off_8079420
off_8079420: .word nullsub_39+1
	.word nullsub_36+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word nullsub_36+1
	.word nullsub_38+1
	.word 0x800
off_8079440: .word off_8079444
off_8079444: .word off_807944C
	.word off_807944C
off_807944C: .word dword_8618DFC
	.word 0x6008020
	.word byte_8618E40
	.word 0x1800
	.word dword_8618910
	.word palette_3001960
	.word 0x20
	thumb_func_end Underground_LoadBGAnim

	thumb_func_start Underground_UnkFunction_8079468
Underground_UnkFunction_8079468:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_807947C // =off_8079480 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_807947C: .word off_8079480
off_8079480: .word nullsub_79+1
	.word nullsub_80+1
	thumb_func_end Underground_UnkFunction_8079468

	thumb_local_start
nullsub_79:
	mov pc, lr
	thumb_func_end nullsub_79

	thumb_local_start
nullsub_80:
	mov pc, lr
	thumb_func_end nullsub_80

	thumb_func_start Underground_SpawnMapObjectsForMap
Underground_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_80794A0 // =pt_80794A4 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_80794A0: .word pt_80794A4
pt_80794A4:
	.word byte_80794AC
	.word byte_80794EC
	thumb_func_end Underground_SpawnMapObjectsForMap
