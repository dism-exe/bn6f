
	thumb_func_start JudgeTreeComp_EnterMapGroup
JudgeTreeComp_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8069090 // =off_8068CCC 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl JudgeTreeComp_LoadBGAnim
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
	ldr r0, off_8069094 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_8069098 // =off_806909C 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl JudgeTreeComp_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_8069090: .word off_8068CCC
off_8069094: .word unk_2037800
off_8069098: .word off_806909C
off_806909C: .word byte_80690A8
	.word byte_80690B0
	.word byte_80690B8
byte_80690A8: .byte 0x1C, 0x56, 0x1C, 0x63, 0x1C, 0x52, 0xFF, 0xFF
byte_80690B0: .byte 0x1C, 0x56, 0x1C, 0x63, 0x1C, 0x52, 0xFF, 0xFF
byte_80690B8: .byte 0x1C, 0x56, 0x1C, 0x63, 0x1C, 0x52, 0x18, 0x55, 0xFF
	.byte 0xFF
	thumb_func_end JudgeTreeComp_EnterMapGroup

	thumb_func_start JudgeTreeComp_LoadGFXAnims
JudgeTreeComp_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_80690D0 // =off_80690D4 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_80690D0: .word off_80690D4
off_80690D4: .word off_80690E0
	.word off_8069100
	.word off_8069120
off_80690E0: .word off_8068D18
	.word byte_8068E48
	.word off_8068E88
	.word off_8068ED0
	.word off_8068EF0
	.word off_8068F30
	.word byte_8068FA0
	.word 0xFFFFFFFF
off_8069100: .word off_8068D18
	.word byte_8068E48
	.word off_8068E88
	.word off_8068ED0
	.word off_8068EF0
	.word off_8068F30
	.word byte_8068FA0
	.word 0xFFFFFFFF
off_8069120: .word off_8068D18
	.word byte_8068E48
	.word off_8068E88
	.word off_8068ED0
	.word off_8068EF0
	.word off_8068F30
	.word byte_8068FA0
	.word 0xFFFFFFFF
	thumb_func_end JudgeTreeComp_LoadGFXAnims

	thumb_func_start JudgeTreeComp_LoadBGAnim
JudgeTreeComp_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8069174 // =off_8069178 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_80691A8 // =off_80691AC 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_8069174: .word off_8069178
off_8069178: .word nullsub_39+1
	.word BGScrollCB_BG3UpScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3UpScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3UpScroll+1
	.word nullsub_38+1
	.word 0x800
off_80691A8: .word off_80691AC
off_80691AC: .word off_80691B8
	.word off_80691B8
	.word off_80691B8
off_80691B8: .word off_8612A28
	.word 0x6008020
	.word dword_8612CF0
	.word 0x1800
	.word dword_8612E84
	.word palette_3001960
	.word 0x20
	thumb_func_end JudgeTreeComp_LoadBGAnim

	thumb_func_start JudgeTreeComp_UnkFunction_80691d4
JudgeTreeComp_UnkFunction_80691d4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_80691E8 // =off_80691EC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_80691E8: .word off_80691EC
off_80691EC: .word nullsub_31+1
	.word nullsub_32+1
	.word nullsub_33+1
	thumb_func_end JudgeTreeComp_UnkFunction_80691d4

	thumb_local_start
nullsub_31:
	mov pc, lr
	thumb_func_end nullsub_31

	thumb_local_start
nullsub_32:
	mov pc, lr
	thumb_func_end nullsub_32

	thumb_local_start
nullsub_33:
	mov pc, lr
	thumb_func_end nullsub_33

	thumb_func_start JudgeTreeComp_SpawnMapObjectsForMap
JudgeTreeComp_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8069214 // =off_8069218 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_8069214: .word off_8069218
off_8069218: .word byte_8069224
	.word byte_8069264
	.word byte_80692A4
	thumb_func_end JudgeTreeComp_SpawnMapObjectsForMap
