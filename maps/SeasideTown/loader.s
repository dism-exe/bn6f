
	thumb_func_start SeasideTown_EnterMapGroup
SeasideTown_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8059614 // =off_8059294 
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
	ldr r0, off_8059618 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8059620 // =off_8059624 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl SeasideTown_SpawnMapObjectsForMap
	ldr r0, off_805961C // =off_8059DE8 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#oGameState_Unk_64]
	pop {r4-r7,pc}
	.balign 4, 0
off_8059614: .word off_8059294
off_8059618: .word unk_2037800
off_805961C: .word off_8059DE8
off_8059620: .word off_8059624
off_8059624: .word byte_8059638
	.word byte_8059646
	.word byte_805964E
	.word byte_805965A
	.word byte_8059662
byte_8059638: .byte 0x1C, 0x3D, 0x1C, 0x3E, 0x1C, 0x13, 0x1C, 0x32, 0x1C
	.byte 0x2F, 0x18, 0x1B, 0xFF, 0xFF
byte_8059646: .byte 0x1C, 0x35, 0x1C, 0x45, 0x1C, 0x46, 0xFF, 0xFF
byte_805964E: .byte 0x1C, 0x35, 0x1C, 0x4D, 0x1C, 0x2F, 0x18, 0x25, 0x18
	.byte 0x1C, 0xFF, 0xFF
byte_805965A: .byte 0x1C, 0x35, 0x1C, 0x40, 0x1C, 0x48, 0xFF, 0xFF
byte_8059662: .byte 0xFF, 0xFF
	thumb_func_end SeasideTown_EnterMapGroup

	thumb_func_start SeasideTown_LoadGFXAnims
SeasideTown_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8059674 // =off_8059678 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_8059674: .word off_8059678
off_8059678: .word off_805968C
	.word off_80596A0
	.word off_80596AC
	.word off_80596B4
	.word off_80596BC
off_805968C: .word off_8059378
	.word byte_80593B8
	.word byte_80593F8
	.word byte_8059438
	.word 0xFFFFFFFF
off_80596A0: .word byte_8059468
	.word byte_80594A8
	.word 0xFFFFFFFF
off_80596AC: .word byte_80594E8
	.word 0xFFFFFFFF
off_80596B4: .word byte_8059528
	.word 0xFFFFFFFF
off_80596BC: .word byte_8059558
	.word byte_8059588
	.word 0xFFFFFFFF
	thumb_func_end SeasideTown_LoadGFXAnims

	thumb_func_start SeasideTown_SpawnMapObjectsForMap
SeasideTown_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_80596DC // =off_80596E0 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_80596DC: .word off_80596E0
off_80596E0:
	// <endpool> <endfile>
	.word byte_80596F4
	.word byte_805975C
	.word byte_8059A58
	.word byte_8059C00
	.word byte_8059D30
	thumb_func_end SeasideTown_SpawnMapObjectsForMap

/*For debugging purposes, connect comment at any range!*/
