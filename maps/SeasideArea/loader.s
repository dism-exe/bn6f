
	thumb_func_start SeasideArea_EnterMapGroup
SeasideArea_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_80754A4 // =off_8074F30 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
	bl SeasideArea_LoadBGAnim
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl initMapTilesState_803037c // (map_group: u8, map_number: u8) -> ()
	ldrb r0, [r5,#oGameState_MapGroup]
	ldrb r1, [r5,#oGameState_MapNumber]
	bl decompressCoordEventData_8030aa4 // (map_group: u8, map_number: u8) -> ()
	ldr r0, [r5,#oGameState_PlayerX]
	ldr r1, [r5,#oGameState_PlayerY]
	ldr r2, [r5,#oGameState_PlayerZ]
	ldrb r3, [r5,#oGameState_MapGroup]
	ldrb r4, [r5,#oGameState_MapNumber]
	bl camera_init_802FF4C // (player_x: u32, player_y: u32, player_z: u32, map_group: u8, map_number: u8) -> ()
	bl decompAndCopyMapTiles_8030472 // () -> ()
	ldr r0, off_80754A8 // =unk_2037800 
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_80754AC // =off_80754B0 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906 // (sprite_load_data: *const SpriteLoadData) -> bool
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl SeasideArea_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
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
	thumb_func_end SeasideArea_EnterMapGroup

	thumb_func_start SeasideArea_LoadGFXAnims
SeasideArea_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_80754F0 // =off_80754F4 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
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
	thumb_func_end SeasideArea_LoadGFXAnims

	thumb_func_start SeasideArea_LoadBGAnim
SeasideArea_LoadBGAnim:
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
	bl GetRenderInfoLCDControl // () -> u16
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
	ldr r0, off_8075598 // =off_807559C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData // (bg_anim_data: BGAnimData) -> ()
	pop {r4-r7,pc}
	.balign 4, 0
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
	thumb_func_end SeasideArea_LoadBGAnim

	thumb_func_start SeasideArea_UnkFunction_80755c4
SeasideArea_UnkFunction_80755c4:
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
	thumb_func_end SeasideArea_UnkFunction_80755c4

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

	thumb_func_start SeasideArea_SpawnMapObjectsForMap
SeasideArea_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8075604 // =off_8075608 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_8075604: .word off_8075608
off_8075608:
	// <endpool>
	.word byte_8075614
	.word byte_8075708
	.word byte_807575C
	thumb_func_end SeasideArea_SpawnMapObjectsForMap
