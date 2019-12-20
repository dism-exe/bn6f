
	thumb_func_start SkyTown_EnterMapGroup
SkyTown_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_80603C8 // =off_8060184 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
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
	ldr r0, off_80603CC // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_80603D4 // =off_80603D8 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl SkyTown_SpawnMapObjectsForMap
	ldr r0, off_80603D0 // =off_80606BC 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#oGameState_Unk_64]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80603C8: .word off_8060184
off_80603CC: .word unk_2037800
off_80603D0: .word off_80606BC
off_80603D4: .word off_80603D8
off_80603D8: .word byte_80603E8
	.word byte_80603EE
	.word byte_80603FC
	.word byte_80603FE
byte_80603E8: .byte 0x1C, 0x13, 0x18, 0x21, 0xFF, 0xFF
byte_80603EE: .byte 0x1C, 0x6E, 0x1C, 0x58, 0x1C, 0x41, 0x1C, 0x90, 0x1C
	.byte 0x91, 0x1C, 0x4B, 0xFF, 0xFF
byte_80603FC: .byte 0xFF, 0xFF
byte_80603FE: .byte 0x1C, 0x65, 0x18, 0x24, 0x18, 0x25, 0xFF, 0xFF
	thumb_func_end SkyTown_EnterMapGroup

	thumb_func_start SkyTown_LoadGFXAnims
SkyTown_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8060414 // =off_8060418 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
off_8060414: .word off_8060418
off_8060418:
	.word off_8060428
	.word off_8060430
	.word off_806043C
	.word off_8060444
off_8060428:
	.word off_8060284
	.word 0xFFFFFFFF
off_8060430:
	.word byte_80602A4
	.word byte_80602CC
	.word 0xFFFFFFFF
off_806043C:
	.word byte_80602FC
	.word 0xFFFFFFFF
off_8060444:
	.word byte_806032C
	.word 0xFFFFFFFF
	thumb_func_end SkyTown_LoadGFXAnims

	thumb_func_start SkyTown_SpawnMapObjectsForMap
SkyTown_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8060460 // =pt_8060464 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_8060460: .word pt_8060464
pt_8060464:
	// <endpool> <endfile>
	.word byte_8060474
	.word byte_80604A0
	.word dword_80605E4
	.word byte_80605E8
	thumb_func_end SkyTown_SpawnMapObjectsForMap

/*For debugging purposes, connect comment at any range!*/
