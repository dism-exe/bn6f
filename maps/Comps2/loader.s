
	thumb_func_start Comps2_EnterMapGroup
Comps2_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806FC60 // =off_806FA98 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl Comps2_LoadBGAnim
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
	ldr r0, off_806FC64 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_806FC68 // =off_806FC6C 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl Comps2_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_806FC60: .word off_806FA98
off_806FC64: .word unk_2037800
off_806FC68: .word off_806FC6C
off_806FC6C: .word dword_806FCAC
	.word dword_806FCB0
	.word dword_806FCB4
	.word byte_806FCB8
	.byte 0xBE, 0xFC, 0x6, 0x8, 0xC2, 0xFC, 0x6, 0x8, 0xC8, 0xFC, 0x6
	.byte 0x8, 0xD0, 0xFC, 0x6, 0x8, 0xD6, 0xFC, 0x6, 0x8, 0xDA, 0xFC
	.byte 0x6, 0x8, 0xE0, 0xFC, 0x6, 0x8, 0xE4, 0xFC, 0x6, 0x8, 0xE8
	.byte 0xFC, 0x6, 0x8, 0xEC, 0xFC, 0x6, 0x8, 0xF0, 0xFC, 0x6, 0x8
	.byte 0xF4, 0xFC, 0x6, 0x8
dword_806FCAC: .word 0xFFFF061C
dword_806FCB0: .word 0xFFFF061C
dword_806FCB4: .word 0xFFFF061C
byte_806FCB8: .byte 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF, 0x1C, 0x6, 0xFF, 0xFF
	.byte 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF, 0x1C, 0x6, 0x1C, 0x12
	.byte 0x1C, 0x1B, 0xFF, 0xFF, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
	.byte 0x1C, 0x6, 0xFF, 0xFF, 0x1C, 0x6, 0x18, 0x55, 0xFF, 0xFF
	.byte 0x1C, 0x6, 0xFF, 0xFF, 0x1C, 0x6, 0xFF, 0xFF, 0x1C, 0x6
	.byte 0xFF, 0xFF, 0x1C, 0x6, 0xFF, 0xFF, 0x1C, 0x6, 0xFF, 0xFF
	.byte 0x1C, 0x6, 0xFF, 0xFF
	thumb_func_end Comps2_EnterMapGroup

	thumb_func_start Comps2_LoadGFXAnims
Comps2_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806FD08 // =off_806FD0C 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_806FD08: .word off_806FD0C
off_806FD0C: .word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
off_806FD4C: .word byte_806D820
	.word 0xFFFFFFFF
	thumb_func_end Comps2_LoadGFXAnims

	thumb_func_start Comps2_LoadBGAnim
Comps2_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806FD88 // =off_806FD8C 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_806FE8C // =off_806FE90 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_806FD88: .word off_806FD8C
off_806FD8C: .word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
off_806FE8C: .word off_806FE90
off_806FE90: .word off_806FEEC
	.word off_806FEEC
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FEEC
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
off_806FED0: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616760
	.word 0x3001960
	.word 0x20
off_806FEEC: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616EC4
	.word 0x3001960
	.word 0x20
	thumb_func_end Comps2_LoadBGAnim

	thumb_func_start Comps2_UnkFunction_806ff08
Comps2_UnkFunction_806ff08:
	push {r4-r7,lr}
	push {r0,r1}
	mov r0, #0
	mov r1, #0x8e
	bl SetEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl ClearEventFlagFromImmediate
	pop {r0,r1}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806FF30 // =jt_806FF34 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
	.balign 4, 0
off_806FF30: .word jt_806FF34
jt_806FF34: .word sub_806FF76+1
	.word sub_806FF94+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word sub_806FFBC+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	thumb_func_end Comps2_UnkFunction_806ff08

	thumb_local_start
nullsub_27:
	mov pc, lr
	thumb_func_end nullsub_27

	thumb_local_start
sub_806FF76:
	push {lr}
	cmp r0, #2
	bne loc_806FF82
	cmp r1, #0xa
	bne loc_806FF82
	pop {pc}
loc_806FF82:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806FF76

	thumb_local_start
sub_806FF94:
	push {lr}
	cmp r0, #3
	bne loc_806FFAA
	cmp r1, #2
	bne loc_806FFAA
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldr r0, [r1,#oGameState_Unk_3c]
	cmp r0, #0
	beq loc_806FFAA
	pop {pc}
loc_806FFAA:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806FF94

	thumb_local_start
sub_806FFBC:
	push {lr}
	cmp r0, #3
	bne loc_806FFC8
	cmp r1, #4
	bne loc_806FFC8
	pop {pc}
loc_806FFC8:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate
	mov r0, #0
	mov r1, #0x8f
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806FFBC

	thumb_func_start Comps2_SpawnMapObjectsForMap
Comps2_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806FFF0 // =pt_806FFF4 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0
off_806FFF0: .word pt_806FFF4
pt_806FFF4:
	// <endpool> <endfile>
	.word byte_8070034
	.word byte_8070074
	.word byte_80700B4
	.word byte_80700CC
	.word byte_80700E4
	.word byte_80700FC
	.word byte_8070114
	.word byte_807012C
	.word byte_8070144
	.word byte_8070184
	.word byte_807019C
	.word byte_80701B4
	.word byte_80701CC
	.word byte_80701E4
	.word byte_80701FC
	.word byte_8070214
	thumb_func_end Comps2_SpawnMapObjectsForMap
