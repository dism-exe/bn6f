
	thumb_func_start CentralArea_EnterMapGroup
CentralArea_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8071BA8 // =off_8071584 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl CentralArea_LoadBGAnim
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
	ldr r0, off_8071BAC // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8071BB0 // =off_8071BB4 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl CentralArea_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_8071BA8: .word off_8071584
off_8071BAC: .word unk_2037800
off_8071BB0: .word off_8071BB4
off_8071BB4: .word byte_8071BC0
	.word byte_8071BCA
	.word byte_8071BD2
byte_8071BC0: .byte 0x1C, 0x2B, 0x1C, 0xE, 0x1C, 0x7C, 0x1C, 0x82, 0xFF
	.byte 0xFF
byte_8071BCA: .byte 0x1C, 0xE, 0x1C, 0x7C, 0x1C, 0x82, 0xFF, 0xFF
byte_8071BD2: .byte 0x1C, 0x27, 0x1C, 0x28, 0x1C, 0x1D, 0x1C, 0x1E, 0x1C
	.byte 0x1F, 0x1C, 0x20, 0x1C, 0xE, 0x1C, 0x95, 0xFF, 0xFF
	thumb_func_end CentralArea_EnterMapGroup

	thumb_func_start CentralArea_LoadGFXAnims
CentralArea_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8071BF4 // =off_8071BF8 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_8071BF4: .word off_8071BF8
off_8071BF8: .word off_8071C04
	.word off_8071C18
	.word off_8071C24
off_8071C04: .word off_8071680
	.word byte_8071970
	.word byte_80719C0
	.word byte_8071A10
	.word 0xFFFFFFFF
off_8071C18: .word off_8071680
	.word byte_8071A60
	.word 0xFFFFFFFF
off_8071C24: .word off_8071680
	.word byte_8071AB0
	.word 0xFFFFFFFF
	thumb_func_end CentralArea_LoadGFXAnims

	thumb_func_start CentralArea_LoadBGAnim
CentralArea_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8071C64 // =off_8071C68 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_8071C98 // =off_8071C9C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_8071C64: .word off_8071C68
off_8071C68: .word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
off_8071C98: .word off_8071C9C
off_8071C9C: .word off_8071CA8
	.word off_8071CA8
	.word off_8071CA8
off_8071CA8: .word off_8617068
	.word 0x6008020
	.word dword_8617190
	.word 0x1800
	.word byte_86172E4
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
	thumb_func_end CentralArea_LoadBGAnim

	thumb_func_start CentralArea_UnkFunction_8071cc4
CentralArea_UnkFunction_8071cc4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_8071CD8 // =off_8071CDC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8071CD8: .word off_8071CDC
off_8071CDC: .word nullsub_71+1
	.word nullsub_72+1
	.word nullsub_73+1
	thumb_func_end CentralArea_UnkFunction_8071cc4

	thumb_local_start
nullsub_71:
	mov pc, lr
	thumb_func_end nullsub_71

	thumb_local_start
nullsub_72:
	mov pc, lr
	thumb_func_end nullsub_72

	thumb_local_start
nullsub_73:
	mov pc, lr
	thumb_func_end nullsub_73

	thumb_func_start CentralArea_SpawnMapObjectsForMap
CentralArea_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8071D04 // =off_8071D08 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0
off_8071D04: .word off_8071D08
off_8071D08: .word byte_8071D14
	.word byte_8071D7C
	.word byte_8071DF8
	thumb_func_end CentralArea_SpawnMapObjectsForMap
