
	thumb_func_start Comps1_EnterMapGroup
Comps1_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806D950 // =off_806D6B0 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_WarpDataPtr]
	bl Comps1_LoadBGAnim
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
	ldr r0, off_806D954 // =unk_2037800 
	bl initUncompSpriteState_80028d4 // (a0: *const ?) -> ()
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_806D958 // =off_806D95C 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906 // (sprite_load_data: *const SpriteLoadData) -> bool
	bl chatbox_uncompMapTextArchives_803FD08 // () -> int
	bl Comps1_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_806D950: .word off_806D6B0
off_806D954: .word unk_2037800
off_806D958: .word off_806D95C
off_806D95C: .word byte_806D99C
	.word dword_806D9A2
	.word byte_806D9A6
	.word byte_806D9B0
	.word dword_806D9B8
	.word byte_806D9BC
	.word byte_806D9C2
	.word byte_806D9CA
	.word dword_806D9D2
	.word byte_806D9D6
	.word dword_806D9DC
	.word byte_806D9E0
	.word byte_806D9E6
	.word byte_806D9EC
	.word byte_806D9F2
	.word dword_806D9F8
byte_806D99C: .byte 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
dword_806D9A2: .word 0xFFFF061C
byte_806D9A6: .byte 0x1C, 0x1B, 0x1C, 0x1C, 0x1C, 0x6, 0x1C, 0x12, 0xFF
	.byte 0xFF
byte_806D9B0: .byte 0x1C, 0x29, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
dword_806D9B8: .word 0xFFFF061C
byte_806D9BC: .byte 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
byte_806D9C2: .byte 0x1C, 0x29, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
byte_806D9CA: .byte 0x1C, 0x5E, 0x1C, 0x6, 0x1C, 0x12, 0xFF, 0xFF
dword_806D9D2: .word 0xFFFF061C
byte_806D9D6: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
dword_806D9DC: .word 0xFFFF061C
byte_806D9E0: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
byte_806D9E6: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
byte_806D9EC: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
byte_806D9F2: .byte 0x1C, 0x5C, 0x1C, 0x6, 0xFF, 0xFF
dword_806D9F8: .word 0xFFFF061C
	thumb_func_end Comps1_EnterMapGroup

	thumb_func_start Comps1_LoadGFXAnims
Comps1_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806DA0C // =off_806DA10 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_806DA0C: .word off_806DA10
off_806DA10: .word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
off_806DA50: .word byte_806D820
	.word 0xFFFFFFFF
	thumb_func_end Comps1_LoadGFXAnims

	thumb_func_start Comps1_LoadBGAnim
Comps1_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806DA8C // =off_806DA90 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl // () -> u16
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl // (a_00: u16) -> ()
	ldr r0, off_806DB90 // =off_806DB94 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData // (bg_anim_data: BGAnimData) -> ()
	pop {r4-r7,pc}
	.balign 4, 0
off_806DA8C: .word off_806DA90
off_806DA90: .word nullsub_39+1
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
off_806DB90: .word off_806DB94
off_806DB94: .word off_806DBD4
	.word off_806DBF0
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBF0
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBF0
off_806DBD4: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616760
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
off_806DBF0: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616EC4
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
	thumb_func_end Comps1_LoadBGAnim

	thumb_func_start Comps1_UnkFunction_806dc0c
Comps1_UnkFunction_806dc0c:
	push {r4-r7,lr}
	push {r0,r1}
	movflag EVENT_8E
	bl SetEventFlagFromImmediate
	movflag EVENT_8F
	bl ClearEventFlagFromImmediate
	pop {r0,r1}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806DC34 // =off_806DC38 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
	.balign 4, 0
off_806DC34: .word off_806DC38
off_806DC38: .word nullsub_70+1
	.word sub_806DC7A+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word sub_806DC98+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word sub_806DCB6+1
	thumb_func_end Comps1_UnkFunction_806dc0c

	thumb_local_start
nullsub_70:
	mov pc, lr
	thumb_func_end nullsub_70

	thumb_local_start
sub_806DC7A:
	push {lr}
	cmp r0, #2
	bne loc_806DC86
	cmp r1, #9
	bne loc_806DC86
	pop {pc}
loc_806DC86:
	movflag EVENT_8E
	bl ClearEventFlagFromImmediate
	movflag EVENT_8F
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806DC7A

	thumb_local_start
sub_806DC98:
	push {lr}
	cmp r0, #4
	bne loc_806DCA4
	cmp r1, #0
	bne loc_806DCA4
	pop {pc}
loc_806DCA4:
	movflag EVENT_8E
	bl ClearEventFlagFromImmediate
	movflag EVENT_8F
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806DC98

	thumb_local_start
sub_806DCB6:
	push {lr}
	cmp r0, #5
	bne loc_806DCC2
	cmp r1, #0
	bne loc_806DCC2
	pop {pc}
loc_806DCC2:
	movflag EVENT_8E
	bl ClearEventFlagFromImmediate
	movflag EVENT_8F
	bl SetEventFlagFromImmediate
	pop {pc}
	thumb_func_end sub_806DCB6

	thumb_func_start Comps1_SpawnMapObjectsForMap
Comps1_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806DCE8 // =pt_806DCEC 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList // (void *a1) -> int
	pop {pc}
	.balign 4, 0
off_806DCE8: .word pt_806DCEC
pt_806DCEC:
	// <endpool> <endfile>
	.word byte_806DD2C
	.word byte_806DD44
	.word byte_806DD84
	.word byte_806DD9C
	.word byte_806DDB4
	.word byte_806DDCC
	.word byte_806DDE4
	.word byte_806DDFC
	.word byte_806DE3C
	.word byte_806DE54
	.word byte_806DE80
	.word byte_806DEC0
	.word byte_806DEEC
	.word byte_806DF18
	.word byte_806DF44
	.word byte_806DF70
	thumb_func_end Comps1_SpawnMapObjectsForMap
