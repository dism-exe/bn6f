
	thumb_func_start GreenArea_EnterMapGroup
GreenArea_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8077D58 // =off_8077618 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
	bl GreenArea_LoadBGAnim
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
	ldr r0, off_8077D5C // =unk_2037800 
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8077D60 // =off_8077D64 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906 // (sprite_load_data: *const SpriteLoadData) -> bool
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl GreenArea_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_8077D58: .word off_8077618
off_8077D5C: .word unk_2037800
off_8077D60: .word off_8077D64
off_8077D64: .word byte_8077D6C
	.word byte_8077D78
byte_8077D6C: .byte 0x1C, 0x66, 0x1C, 0x67, 0x1C, 0x68, 0x1C, 0x6A, 0x1C
	.byte 0x1F, 0xFF, 0xFF
byte_8077D78: .byte 0x1C, 0x2B, 0x1C, 0x53, 0x1C, 0x1F, 0x1C, 0x66, 0x1C
	.byte 0x67, 0x1C, 0x68, 0x1C, 0x6A, 0x18, 0x1C, 0xFF, 0xFF
	thumb_func_end GreenArea_EnterMapGroup

	thumb_func_start GreenArea_LoadGFXAnims
GreenArea_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8077D98 // =off_8077D9C 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_8077D98: .word off_8077D9C
off_8077D9C: .word off_8077DA4
	.word off_8077DC4
off_8077DA4: .word off_8077720
	.word byte_8077A10
	.word byte_8077A60
	.word byte_8077AB0
	.word byte_8077B00
	.word byte_8077B30
	.word byte_8077B70
	.word 0xFFFFFFFF
off_8077DC4: .word off_8077720
	.word byte_8077BC0
	.word byte_8077BF0
	.word byte_8077C20
	.word byte_8077C70
	.word byte_8077CC0
	.word 0xFFFFFFFF
	thumb_func_end GreenArea_LoadGFXAnims

	thumb_func_start GreenArea_LoadBGAnim
GreenArea_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8077E14 // =off_8077E18 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl // () -> u16
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
	ldr r0, off_8077E38 // =off_8077E3C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData // (bg_anim_data: BGAnimData) -> ()
	pop {r4-r7,pc}
	.balign 4, 0
off_8077E14: .word off_8077E18
off_8077E18: .word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
off_8077E38: .word off_8077E3C
off_8077E3C: .word off_8077E44
	.word off_8077E44
off_8077E44: .word off_8617068
	.word 0x6008020
	.word dword_8617190
	.word 0x1800
	.word dword_861876C
	.word palette_3001960
	.word 0x20
	thumb_func_end GreenArea_LoadBGAnim

	thumb_func_start GreenArea_UnkFunction_8077e60
GreenArea_UnkFunction_8077e60:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_8077E74 // =off_8077E78 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8077E74: .word off_8077E78
off_8077E78: .word nullsub_77+1
	.word nullsub_78+1
	thumb_func_end GreenArea_UnkFunction_8077e60

	thumb_local_start
nullsub_77:
	mov pc, lr
	thumb_func_end nullsub_77

	thumb_local_start
nullsub_78:
	mov pc, lr
	thumb_func_end nullsub_78

	thumb_func_start GreenArea_SpawnMapObjectsForMap
GreenArea_SpawnMapObjectsForMap:
	push {lr}

    // vMapNumber: r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	
    // void *v0: r0 = pt_8077E9C[4*vMapNumber]
    lsl r0, r0, #2
	ldr r1, off_8077E98 // =pt_8077E9C 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int

	pop {pc}
	.balign 4, 0
off_8077E98: .word pt_8077E9C
pt_8077E9C:
	.word byte_8077EA4
	.word byte_8077EF8
	thumb_func_end GreenArea_SpawnMapObjectsForMap
