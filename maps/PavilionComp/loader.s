
	thumb_func_start PavilionComp_EnterMapGroup
PavilionComp_EnterMapGroup:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806AA58 // =off_806A7AC 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#oGameState_MapNumber]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#oWarp2011bb0_Ptr_14]
	bl PavilionComp_LoadBGAnim
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
	ldr r0, off_806AA5C // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, off_806AA60 // =off_806AA64 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl PavilionComp_SpawnMapObjectsForMap
	bl sub_8034FB8
	pop {r4-r7,pc}
	.balign 4, 0
off_806AA58: .word off_806A7AC
off_806AA5C: .word unk_2037800
off_806AA60: .word off_806AA64
off_806AA64: .word byte_806AA78
	.word byte_806AA82
	.word byte_806AA8C
	.word byte_806AA94
	.word byte_806AA9E
byte_806AA78: .byte 0x1C, 0x2F, 0x1C, 0x45, 0x1C, 0x46, 0x1C, 0x49, 0xFF
	.byte 0xFF
byte_806AA82: .byte 0x1C, 0x56, 0x1C, 0x63, 0x1C, 0x52, 0x18, 0x55, 0xFF
	.byte 0xFF
byte_806AA8C: .byte 0x1C, 0x20, 0x1C, 0x6B, 0x1C, 0x6C, 0xFF, 0xFF
byte_806AA94: .byte 0x1C, 0xC, 0x1C, 0xB, 0x1C, 0xE, 0x1C, 0x4E, 0xFF
	.byte 0xFF
byte_806AA9E: .byte 0x1C, 0x83, 0x1C, 0x84, 0x1C, 0x94, 0x1C, 0x97, 0x1C
	.byte 0x8D, 0xFF, 0xFF
	thumb_func_end PavilionComp_EnterMapGroup

	thumb_func_start PavilionComp_LoadGFXAnims
PavilionComp_LoadGFXAnims:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806AAB8 // =off_806AABC 
	ldr r0, [r0,r1]
	bl LoadGFXAnims
	pop {pc}
	.balign 4, 0
off_806AAB8: .word off_806AABC
off_806AABC: .word off_806AAD0
	.word off_806AAFC
	.word off_806AB20
	.word off_806AB54
	.word off_806AB70
off_806AAD0: .word off_8067754
	.word off_8067914
	.word off_8067944
	.word off_80679A4
	.word off_80679D4
	.word off_8067A14
	.word off_8067A44
	.word off_8067A6C
	.word off_8067A9C
	.word off_8067ACC
	.word 0xFFFFFFFF
off_806AAFC: .word off_8068D18
	.word byte_8068E48
	.word off_8068E88
	.word off_8068ED0
	.word off_8068EF0
	.word off_8068F30
	.word byte_8068FA0
	.word off_8069010
	.word 0xFFFFFFFF
off_806AB20: .word off_8069928
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
	.word off_8069FC0
	.word 0xFFFFFFFF
off_806AB54: .word off_8066048
	.word byte_80662B8
	.word byte_80662E8
	.word byte_8066328
	.word byte_8066368
	.word byte_80663A8
	.word 0xFFFFFFFF
off_806AB70: .word off_806A810
	.word off_806A870
	.word off_806A8A0
	.word off_806A8D0
	.word off_806A900
	.word off_806A940
	.word off_806A980
	.word byte_806A9C0
	.word 0xFFFFFFFF
	thumb_func_end PavilionComp_LoadGFXAnims

	thumb_func_start PavilionComp_LoadBGAnim
PavilionComp_LoadBGAnim:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806ABC8 // =off_806ABCC 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r0, off_806AC1C // =off_806AC20 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl LoadBGAnimData
	pop {r4-r7,pc}
	.balign 4, 0
off_806ABC8: .word off_806ABCC
off_806ABCC: .word nullsub_39+1
	.word BGScrollCB_BG3FastLeftScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3UpScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3UpScroll+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word BGScrollCB_BG3DownScroll+1
	.word nullsub_38+1
	.word 0x800
off_806AC1C: .word off_806AC20
off_806AC20: .word off_806AC34
	.word off_806AC50
	.word off_806AC6C
	.word off_806AC88
	.word off_806ACA4
off_806AC34: .word off_86116C8
	.word 0x6008020
	.word byte_861184C
	.word 0x1800
	.word byte_86119C4
	.word palette_3001960
	.word 0x20
off_806AC50: .word off_8612A28
	.word 0x6008020
	.word dword_8612CF0
	.word 0x1800
	.word dword_8612E84
	.word palette_3001960
	.word 0x20
off_806AC6C: .word off_8613608
	.word 0x6008020
	.word dword_8613AAC
	.word 0x1800
	.word 0x0
	.word 0x0
	.word 0x0
off_806AC88: .word off_8610B04
	.word 0x6008020
	.word byte_8610C18
	.word 0x1800
	.word byte_8610D64
	.word palette_3001960
	.word 0x20
off_806ACA4: .word off_8614444
	.word 0x6008020
	.word dword_8614A0C
	.word 0x1800
	.word byte_8614BB8
	.word palette_3001960
	.word 0x20
	thumb_func_end PavilionComp_LoadBGAnim

	thumb_func_start PavilionComp_UnkFunction_806acc0
PavilionComp_UnkFunction_806acc0:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806ACD4 // =off_806ACD8 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_806ACD4: .word off_806ACD8
off_806ACD8: .word sub_806ACEC+1
	.word sub_806ACF0+1
	.word sub_806ACF4+1
	.word sub_806ACF8+1
	.word sub_806ACFC+1
	thumb_func_end PavilionComp_UnkFunction_806acc0

	thumb_local_start
sub_806ACEC:
	push {lr}
	pop {pc}
	thumb_func_end sub_806ACEC

	thumb_local_start
sub_806ACF0:
	push {lr}
	pop {pc}
	thumb_func_end sub_806ACF0

	thumb_local_start
sub_806ACF4:
	push {lr}
	pop {pc}
	thumb_func_end sub_806ACF4

	thumb_local_start
sub_806ACF8:
	push {lr}
	pop {pc}
	thumb_func_end sub_806ACF8

	thumb_local_start
sub_806ACFC:
	push {lr}
	pop {pc}
	thumb_func_end sub_806ACFC

	thumb_func_start PavilionComp_SpawnMapObjectsForMap
PavilionComp_SpawnMapObjectsForMap:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806AD14 // =off_806AD18 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0
off_806AD14: .word off_806AD18
off_806AD18: .word byte_806AD2C
	.word byte_806AD44
	.word byte_806ADAC
	.word byte_806ADD8
	.word dword_806AE04
	thumb_func_end PavilionComp_SpawnMapObjectsForMap
