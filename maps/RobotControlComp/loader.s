
	thumb_func_start RobotControlComp_EnterMapGroup
RobotControlComp_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8066428 // =off_8066020 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
	bl RobotControlComp_LoadBGAnim
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
	ldr r0, off_806642C // =unk_2037800 
	bl initUncompSpriteState_80028d4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8066430 // =off_8066434 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl RobotControlComp_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_8066428: .word off_8066020
off_806642C: .word unk_2037800
off_8066430: .word off_8066434
off_8066434: .word byte_806643C
	.word byte_8066446
byte_806643C: .byte 0x1C, 0xB, 0x1C, 0xC, 0x1C, 0x1A, 0x1C, 0xE, 0xFF
	.byte 0xFF
byte_8066446: .byte 0x1C, 0xB, 0x1C, 0xC, 0x1C, 0x1A, 0x1C, 0xE, 0xFF
	.byte 0xFF
	thumb_func_end RobotControlComp_EnterMapGroup

	thumb_func_start RobotControlComp_LoadGFXAnims
RobotControlComp_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8066460 // =off_8066464 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_8066460: .word off_8066464
off_8066464: .word off_806646C
	.word off_8066484
off_806646C: .word off_8066048
	.word byte_80662B8
	.word byte_80662E8
	.word byte_8066328
	.word byte_8066368
	.word 0xFFFFFFFF
off_8066484: .word off_8066048
	.word byte_80662B8
	.word byte_80662E8
	.word byte_8066328
	.word byte_8066368
	.word 0xFFFFFFFF
	thumb_func_end RobotControlComp_LoadGFXAnims

	thumb_func_start RobotControlComp_LoadBGAnim
RobotControlComp_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4 // mul r1, #oBGScrollCallbacksData_Size
	ldr r7, off_80664D0 // =off_80664D4 
	add r7, r7, r1
	ldr r0, [r7,#oBGScrollCallbacksData_Callback0]
	ldr r1, [r7,#oBGScrollCallbacksData_Callback1]
	ldr r2, [r7,#oBGScrollCallbacksData_HBlankCallback]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#oBGScrollCallbacksData_LCDControlFlags]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_80664F4 // =off_80664F8
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_80664D0: .word off_80664D4
off_80664D4:
	bg_scroll_callbacks_data_struct [
		callback0: nullsub_39+1,
		callback1: BGScrollCB_BG3UpScroll+1,
		hblank_callback: nullsub_38+1,
		lcd_control_flags: 0x800
	]
	bg_scroll_callbacks_data_struct [
		callback0: nullsub_39+1,
		callback1: BGScrollCB_BG3UpScroll+1,
		hblank_callback: nullsub_38+1,
		lcd_control_flags: 0x800
	]
off_80664F4: .word off_80664F8
off_80664F8:
	.word off_8066500
	.word off_8066500
off_8066500:
	bg_anim_data_struct [
		gfx_src: off_8610B04,
		gfx_dest: 0x6008020,
		tilemap_src: byte_8610C18,
		tilemap_dest_offset: 0x1800,
		palette_src: byte_8610D64,
		palette_dest: palette_3001960,
		palette_size: 0x20
	]
	thumb_func_end RobotControlComp_LoadBGAnim

	thumb_func_start RobotControlComp_UnkFunction_806651c
RobotControlComp_UnkFunction_806651c: // JP 0x8067f94
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_8066530 // =off_8066534 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8066530: .word off_8066534
// JP 0x8067fac
off_8066534: .word nullsub_29+1
	.word nullsub_30+1
	thumb_func_end RobotControlComp_UnkFunction_806651c

	thumb_local_start
nullsub_29:
	mov pc, lr
	thumb_func_end nullsub_29

	thumb_local_start
nullsub_30:
	mov pc, lr
	thumb_func_end nullsub_30

	thumb_func_start RobotControlComp_SpawnMapObjectsForMap
RobotControlComp_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8066554 // =off_8066558 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_8066554: .word off_8066558
off_8066558: .word byte_8066560
	.word byte_8066578
	thumb_func_end RobotControlComp_SpawnMapObjectsForMap
