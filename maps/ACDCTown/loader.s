
	thumb_func_start ACDCTown_EnterMapGroup
ACDCTown_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_804CEEC // =off_804CE68 
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
	ldr r0, off_804CEF0 // =unk_2037800 
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_804CEF8 // =off_804CEFC 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906 // (sprite_load_data: *const SpriteLoadData) -> bool
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl ACDCTown_SpawnMapObjectsForMap
	ldr r0, off_804CEF4 // =off_804D0E4 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#oGameState_Unk_64]
	pop {r4-r7,pc}
	.balign 4, 0
off_804CEEC: .word off_804CE68
off_804CEF0: .word unk_2037800
off_804CEF4: .word off_804D0E4
off_804CEF8: .word off_804CEFC
off_804CEFC: .word dword_804CF1C
	.word byte_804CF20
	.word byte_804CF26
	.word byte_804CF28
	.word byte_804CF2A
	.word byte_804CF2C
	.word byte_804CF2E
	.word byte_804CF30
dword_804CF1C: .word 0xFFFF1318
byte_804CF20: .byte 0x1C, 0xA, 0x18, 0x13, 0xFF, 0xFF
byte_804CF26: .byte 0xFF, 0xFF
byte_804CF28: .byte 0xFF, 0xFF
byte_804CF2A: .byte 0xFF, 0xFF
byte_804CF2C: .byte 0xFF, 0xFF
byte_804CF2E: .byte 0xFF, 0xFF
byte_804CF30: .byte 0xFF, 0xFF
	thumb_func_end ACDCTown_EnterMapGroup

	thumb_func_start ACDCTown_LoadGFXAnims
ACDCTown_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_804CF40 // =off_804CF44 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_804CF40: .word off_804CF44
off_804CF44: .word dword_804CF64
	.word dword_804CF68
	.word dword_804CF6C
	.word dword_804CF70
	.word dword_804CF74
	.word dword_804CF78
	.word dword_804CF7C
	.word dword_804CF80
dword_804CF64: .word 0xFFFFFFFF
dword_804CF68: .word 0xFFFFFFFF
dword_804CF6C: .word 0xFFFFFFFF
dword_804CF70: .word 0xFFFFFFFF
dword_804CF74: .word 0xFFFFFFFF
dword_804CF78: .word 0xFFFFFFFF
dword_804CF7C: .word 0xFFFFFFFF
dword_804CF80: .word 0xFFFFFFFF
	thumb_func_end ACDCTown_LoadGFXAnims

	thumb_func_start ACDCTown_SpawnMapObjectsForMap
ACDCTown_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_804CF98 // =off_804CF9C 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_804CF98: .word off_804CF9C
off_804CF9C:
	// <endpool> <endfile>
	.word byte_804CFBC
	.word byte_804CFD4
	.word dword_804D08C
	.word dword_804D090
	.word dword_804D094
	.word dword_804D098
	.word dword_804D09C
	.word dword_804D0A0
	thumb_func_end ACDCTown_SpawnMapObjectsForMap
