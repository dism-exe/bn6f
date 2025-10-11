
	thumb_func_start GraveyardImmortalArea_EnterMapGroup
GraveyardImmortalArea_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_807ED28 // =off_807EA6C 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
	bl GraveyardImmortalArea_LoadBGAnim
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
	ldr r0, off_807ED2C // =unk_2037800 
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_807ED30 // =off_807ED34 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906 // (sprite_load_data: *const SpriteLoadData) -> bool
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl GraveyardImmortalArea_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_807ED28: .word off_807EA6C
off_807ED2C: .word unk_2037800
off_807ED30: .word off_807ED34
off_807ED34: .word byte_807ED40
	.word byte_807ED4E
	.word byte_807ED60
byte_807ED40: .byte 0x1C, 0xE, 0x1C, 0x1F, 0x1C, 0x20, 0x1C, 0x4B, 0x1C
	.byte 0x86, 0x1C, 0x8F, 0xFF, 0xFF
byte_807ED4E: .byte 0x1C, 0xE, 0x1C, 0x1F, 0x1C, 0x20, 0x1C, 0x4B, 0x1C
	.byte 0x8E, 0x1C, 0x9B, 0x1C, 0x99, 0x18, 0x5B, 0xFF, 0xFF
byte_807ED60: .byte 0x1C, 0x9C, 0x1C, 0x9A, 0x18, 0x34, 0x18, 0x36, 0x1C
	.byte 0x99, 0xFF, 0xFF
	thumb_func_end GraveyardImmortalArea_EnterMapGroup

	thumb_func_start GraveyardImmortalArea_LoadGFXAnims
GraveyardImmortalArea_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_807ED7C // =off_807ED80 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_807ED7C: .word off_807ED80
off_807ED80: .word off_807ED8C
	.word off_807EDA8
	.word off_807EDBC
off_807ED8C: .word off_807EB18
	.word byte_807EB68
	.word byte_807EBB8
	.word byte_807EC08
	.word off_807EC58
	.word off_807ECA8
	.word 0xFFFFFFFF
off_807EDA8: .word off_807EB18
	.word byte_807EB68
	.word byte_807EBB8
	.word off_807ECA8
	.word 0xFFFFFFFF
off_807EDBC: .word off_807EB18
	.word byte_807EB68
	.word byte_807EBB8
	.word off_807EC58
	.word off_807ECA8
	.word 0xFFFFFFFF
	thumb_func_end GraveyardImmortalArea_LoadGFXAnims

	thumb_func_start GraveyardImmortalArea_LoadBGAnim
GraveyardImmortalArea_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_807EE08 // =off_807EE0C 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl // () -> u16
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
	ldr r0, off_807EE3C // =off_807EE40 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData // (bg_anim_data: BGAnimData) -> ()
	pop {r4-r7,pc}
	.balign 4, 0
off_807EE08: .word off_807EE0C
off_807EE0C: .word nullsub_39+1
	.word BGScrollCB_BG3SlowRightScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3SlowRightScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3SlowRightScroll+1
	.word nullsub_38+1
	.word 0x800
off_807EE3C: .word off_807EE40
off_807EE40: .word off_807EE4C
	.word off_807EE4C
	.word off_807EE4C
off_807EE4C: .word off_8619174
	.word 0x6008020
	.word dword_8619474
	.word 0x1800
	.word 0x0
	.word 0x0
	.word 0x0
	thumb_func_end GraveyardImmortalArea_LoadBGAnim

	thumb_func_start GraveyardImmortalArea_UnkFunction_807ee68
GraveyardImmortalArea_UnkFunction_807ee68:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_807EE7C // =off_807EE80 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_807EE7C: .word off_807EE80
off_807EE80: .word nullsub_88+1
	.word nullsub_89+1
	.word nullsub_90+1
	thumb_func_end GraveyardImmortalArea_UnkFunction_807ee68

	thumb_local_start
nullsub_88:
	mov pc, lr
	thumb_func_end nullsub_88

	thumb_local_start
nullsub_89:
	mov pc, lr
	thumb_func_end nullsub_89

	thumb_local_start
nullsub_90:
	mov pc, lr
	thumb_func_end nullsub_90

	thumb_func_start GraveyardImmortalArea_SpawnMapObjectsForMap
GraveyardImmortalArea_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_807EEA8 // =pt_807EEAC 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_807EEA8: .word pt_807EEAC
pt_807EEAC:
	.word byte_807EEB8
	.word byte_807EFD4
	.word byte_807F1E0
	thumb_func_end GraveyardImmortalArea_SpawnMapObjectsForMap
