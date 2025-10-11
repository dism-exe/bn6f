
	thumb_func_start CentralTown_EnterMapGroup
CentralTown_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_804E688 // =off_804E38C 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
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
	ldr r0, off_804E68C // =unk_2037800 
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_804E694 // =off_804E698 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906 // (sprite_load_data: *const SpriteLoadData) -> bool
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl CentralTown_SpawnMapObjectsForMap
	ldr r0, off_804E690 // =off_804E9CC 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#oGameState_Unk_64]
	pop {r4-r7,pc}
	.balign 4, 0
off_804E688: .word off_804E38C
off_804E68C: .word unk_2037800
off_804E690: .word off_804E9CC
off_804E694: .word off_804E698
off_804E698: .word byte_804E6AC
	.word dword_804E6BE
	.word dword_804E6C2
	.word byte_804E6C6
	.word byte_804E6C8
byte_804E6AC:
	sprite_load_data_struct 0x1C, 0x11
	sprite_load_data_struct 0x1C, 0x15
	sprite_load_data_struct 0x1C, 0x16
	sprite_load_data_struct 0x1C, 0x51
	sprite_load_data_struct 0x1C, 0x13
	sprite_load_data_struct 0x18, 0x24
	sprite_load_data_struct 0x18, 0x25
	sprite_load_data_struct 0x18, 0x1C
	sprite_load_data_struct 0xFF, 0xFF
dword_804E6BE: .word 0xFFFF071C
dword_804E6C2: .word 0xFFFF141C
byte_804E6C6: .byte 0xFF, 0xFF
byte_804E6C8: .byte 0x1C, 0x96, 0x1C, 0x9D, 0x18, 0x1C, 0xFF, 0xFF
	thumb_func_end CentralTown_EnterMapGroup

	thumb_func_start CentralTown_LoadGFXAnims
CentralTown_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_804E6E0 // =off_804E6E4 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_804E6E0: .word off_804E6E4
off_804E6E4: .word dword_804E6F8
	.word off_804E6FC
	.word off_804E70C
	.word dword_804E714
	.word off_804E718
dword_804E6F8: .word 0xFFFFFFFF
off_804E6FC: .word off_804E450
	.word off_804E478
	.word off_804E4A0
	.word 0xFFFFFFFF
off_804E70C: .word byte_804E5D4
	.word 0xFFFFFFFF
dword_804E714: .word 0xFFFFFFFF
off_804E718: .word byte_804E604
	.word 0xFFFFFFFF
	thumb_func_end CentralTown_LoadGFXAnims

	thumb_func_start CentralTown_SpawnMapObjectsForMap
CentralTown_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, =off_804E738
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.pool // off_804E734
off_804E738:
	// <endpool>
	.word CentralTownObjectSpawns
	.word LansHouseObjectSpawns
	.word LansRoomObjectSpawns
	.word BathroomObjectSpawns
	.word AsterLandObjectSpawns
	thumb_func_end CentralTown_SpawnMapObjectsForMap
/*For debugging purposes, connect comment at any range!*/
