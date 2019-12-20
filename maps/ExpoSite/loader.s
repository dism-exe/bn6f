
	thumb_func_start ExpoSite_EnterMapGroup
ExpoSite_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8062B0C // =off_8062728 
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
	ldr r0, off_8062B10 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8062B18 // =off_8062B1C 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl ExpoSite_SpawnMapObjectsForMap
	ldr r0, off_8062B14 // =off_8063008 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#oGameState_Unk_64]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8062B0C: .word off_8062728
off_8062B10: .word unk_2037800
off_8062B14: .word off_8063008
off_8062B18: .word off_8062B1C
off_8062B1C: .word byte_8062B34
	.word byte_8062B3E
	.word dword_8062B4A
	.word dword_8062B4E
	.word byte_8062B52
	.word byte_8062B58
byte_8062B34: .byte 0x1C, 0x70, 0x1C, 0x76, 0x1C, 0x77, 0x1C, 0x78, 0xFF
	.byte 0xFF
byte_8062B3E: .byte 0x1C, 0x8B, 0x1C, 0x8C, 0x18, 0x38, 0x18, 0x39, 0x18
	.byte 0x3A, 0xFF, 0xFF
dword_8062B4A: .word 0xFFFF351C
dword_8062B4E: .word 0xFFFF7B1C
byte_8062B52: .byte 0x1C, 0x65, 0x1C, 0x20, 0xFF, 0xFF
byte_8062B58: .byte 0x1C, 0x85, 0x1C, 0x83, 0x1C, 0x84, 0x1C, 0x94, 0x1C
	.byte 0x97, 0xFF, 0xFF
	thumb_func_end ExpoSite_EnterMapGroup

	thumb_func_start ExpoSite_LoadGFXAnims
ExpoSite_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8062B74 // =off_8062B78 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0x00
off_8062B74: .word off_8062B78
off_8062B78: .word off_8062B90
	.word off_8062B9C
	.word off_8062BA4
	.word off_8062BAC
	.word off_8062BB8
	.word off_8062BC4
off_8062B90: .word byte_8062860
	.word byte_80628A0
	.word 0xFFFFFFFF
off_8062B9C: .word byte_80628E0
	.word 0xFFFFFFFF
off_8062BA4: .word byte_8062908
	.word 0xFFFFFFFF
off_8062BAC: .word byte_8062958
	.word byte_80629C0
	.word 0xFFFFFFFF
off_8062BB8: .word byte_80629F0
	.word byte_8062A30
	.word 0xFFFFFFFF
off_8062BC4: .word byte_8062A70
	.word 0xFFFFFFFF
	thumb_func_end ExpoSite_LoadGFXAnims

	thumb_func_start ExpoSite_SpawnMapObjectsForMap
ExpoSite_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8062BE0 // =pt_8062BE4 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_8062BE0: .word pt_8062BE4
pt_8062BE4:
	// <endpool> <endfile>
	.word byte_8062BFC
	.word byte_8062DA4
	.word byte_8062DE4
	.word byte_8062E88
	.word byte_8062EB4
	.word byte_8062F1C
	thumb_func_end ExpoSite_SpawnMapObjectsForMap

/*For debugging purposes, connect comment at any range!*/
