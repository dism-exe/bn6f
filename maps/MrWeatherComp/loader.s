	thumb_func_start sub_8069FE8
sub_8069FE8:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806A040 // =off_80698DC 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl sub_806A120
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
	ldr r0, off_806A044 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_806A048 // =off_806A04C 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_806A1DE
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_806A040: .word off_80698DC
off_806A044: .word unk_2037800
off_806A048: .word off_806A04C
off_806A04C: .word byte_806A058
	.word byte_806A060
	.word byte_806A068
byte_806A058: .byte 0x1C, 0x6B, 0x1C, 0x6C, 0x1C, 0x20, 0xFF, 0xFF
byte_806A060: .byte 0x1C, 0x6B, 0x1C, 0x6C, 0x1C, 0x20, 0xFF, 0xFF
byte_806A068: .byte 0x1C, 0x6B, 0x1C, 0x6C, 0x1C, 0x20, 0xFF, 0xFF
	thumb_func_end sub_8069FE8

	thumb_func_start sub_806A070
sub_806A070:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806A080 // =off_806A084 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_806A080: .word off_806A084
off_806A084: .word off_806A090
	.word off_806A0C0
	.word off_806A0F0
off_806A090: .word off_8069928
	.word byte_8069AF0
	.word off_8069E10
	.word off_8069E60
	.word off_8069E90
	.word off_8069EC0
	.word off_8069EF0
	.word off_8069F20
	.word off_8069F50
	.word off_8069F80
	.word off_8069FA0
	.word 0xFFFFFFFF
off_806A0C0: .word off_8069928
	.word byte_8069AF0
	.word off_8069E10
	.word off_8069E60
	.word off_8069E90
	.word off_8069EC0
	.word off_8069EF0
	.word off_8069F20
	.word off_8069F50
	.word off_8069F80
	.word off_8069FA0
	.word 0xFFFFFFFF
off_806A0F0: .word off_8069928
	.word byte_8069AF0
	.word off_8069E10
	.word off_8069E60
	.word off_8069E90
	.word off_8069EC0
	.word off_8069EF0
	.word off_8069F20
	.word off_8069F50
	.word off_8069F80
	.word off_8069FA0
	.word 0xFFFFFFFF
	thumb_func_end sub_806A070

	thumb_func_start sub_806A120
sub_806A120:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806A154 // =off_806A158 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_806A188 // =off_806A18C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_806A154: .word off_806A158
off_806A158: .word nullsub_39+1
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
off_806A188: .word off_806A18C
off_806A18C: .word off_806A198
	.word off_806A198
	.word off_806A198
off_806A198: .word off_8613608
	.word 0x6008020
	.word dword_8613AAC
	.word 0x1800
	.word 0x0
	.word 0x0
	.word 0x0
	thumb_func_end sub_806A120

	thumb_func_start sub_806A1B4
sub_806A1B4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806A1C8 // =off_806A1CC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_806A1C8: .word off_806A1CC
off_806A1CC: .word nullsub_67+1
	.word nullsub_68+1
	.word nullsub_69+1
	thumb_func_end sub_806A1B4

	thumb_local_start
nullsub_67:
	mov pc, lr
	thumb_func_end nullsub_67

	thumb_local_start
nullsub_68:
	mov pc, lr
	thumb_func_end nullsub_68

	thumb_local_start
nullsub_69:
	mov pc, lr
	thumb_func_end nullsub_69

	thumb_func_start sub_806A1DE
sub_806A1DE:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806A1F4 // =off_806A1F8 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0
off_806A1F4: .word off_806A1F8
off_806A1F8: .word byte_806A204
	.word byte_806A21C
	.word byte_806A234
	thumb_func_end sub_806A1DE
