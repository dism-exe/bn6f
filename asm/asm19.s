
	thumb_func_start sub_807CDEC
sub_807CDEC:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_807CE44 // =off_807C82C 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_807CF24
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_807CE48 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_807CE4C // =off_807CE50 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_807CFFC
	bl sub_8034FB8
	pop {r4-r7,pc}
off_807CE44: .word off_807C82C
off_807CE48: .word unk_2037800
off_807CE4C: .word off_807CE50
off_807CE50: .word byte_807CE60
	.word byte_807CE68
	.word byte_807CE7C
	.word byte_807CE8A
byte_807CE60: .byte 0x1C, 0x71, 0x1C, 0x72, 0x18, 0x5A, 0xFF, 0xFF
byte_807CE68: .byte 0x1C, 0xE, 0x1C, 0x1F, 0x1C, 0x20, 0x1C, 0x72, 0x1C
	.byte 0x4B, 0x1C, 0x9B, 0x1C, 0x93, 0x1C, 0x9C, 0x18, 0x5B
	.byte 0xFF, 0xFF
byte_807CE7C: .byte 0x1C, 0x5F, 0x1C, 0x81, 0x1C, 0x95, 0x18, 0x38, 0x18
	.byte 0x39, 0x18, 0x3A, 0xFF, 0xFF
byte_807CE8A: .byte 0x1C, 0x72, 0x1C, 0x86, 0xFF, 0xFF
	thumb_func_end sub_807CDEC

	thumb_func_start sub_807CE90
sub_807CE90:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_807CEA0 // =off_807CEA4 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.byte 0, 0
off_807CEA0: .word off_807CEA4
off_807CEA4: .word off_807CEB4
	.word off_807CED0
	.word off_807CEE4
	.word off_807CF10
off_807CEB4: .word off_807C94C
	.word off_807C974
	.word byte_807CA04
	.word byte_807CA54
	.word byte_807CAA4
	.word byte_807CACC
	.word 0xFFFFFFFF
off_807CED0: .word off_807C94C
	.word off_807C974
	.word byte_807CA04
	.word byte_807CA54
	.word 0xFFFFFFFF
off_807CEE4: .word off_807C94C
	.word off_807C974
	.word byte_807CB1C
	.word byte_807CB6C
	.word byte_807CBBC
	.word byte_807CC0C
	.word byte_807CC34
	.word byte_807CC5C
	.word byte_807CCAC
	.word byte_807CCFC
	.word 0xFFFFFFFF
off_807CF10: .word off_807C94C
	.word off_807C974
	.word byte_807CD4C
	.word byte_807CD9C
	.word 0xFFFFFFFF
	thumb_func_end sub_807CE90

	thumb_func_start sub_807CF24
sub_807CF24:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_807CF58 // =off_807CF5C 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sRender_08_setRenderingState
	ldr r0, off_807CF9C // =off_807CFA0 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_807CF58: .word off_807CF5C
off_807CF5C: .word nullsub_39+1
	.word nullsub_36+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word nullsub_36+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word nullsub_36+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word nullsub_36+1
	.word nullsub_38+1
	.word 0x800
off_807CF9C: .word off_807CFA0
off_807CFA0: .word off_807CFB0
	.word off_807CFB0
	.word off_807CFB0
	.word off_807CFB0
off_807CFB0: .word dword_8618DFC
	.word 0x6008020
	thumb_func_end sub_807CF24

	thumb_local_start
sub_807CFB8:
	ldrh r0, [r0,#0x32]
	lsr r1, r4, #1
	add r0, r0, r0
	lsl r0, r0, #0
	ldrh r0, [r2,#0x3a]
	lsr r1, r4, #1
	add r0, r4, r5
	lsl r0, r0, #0xc
	lsl r0, r4, #0
	lsl r0, r0, #0
	thumb_func_end sub_807CFB8

	thumb_func_start sub_807CFCC
sub_807CFCC:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_807CFE0 // =off_807CFE4 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_807CFE0: .word off_807CFE4
off_807CFE4: .word nullsub_84+1
	.word nullsub_85+1
	.word nullsub_86+1
	.word nullsub_87+1
	thumb_func_end sub_807CFCC

	thumb_local_start
nullsub_84:
	mov pc, lr
	thumb_func_end nullsub_84

	thumb_local_start
nullsub_85:
	mov pc, lr
	thumb_func_end nullsub_85

	thumb_local_start
nullsub_86:
	mov pc, lr
	thumb_func_end nullsub_86

	thumb_local_start
nullsub_87:
	mov pc, lr
	thumb_func_end nullsub_87

	thumb_func_start sub_807CFFC
sub_807CFFC:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_807D010 // =pt_807D014 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_807D010: .word pt_807D014
pt_807D014:
	// <endpool> <endfile>
	.word byte_807D024
	.word byte_807D0B4
	.word byte_807D1A8
	.word byte_807D210
	thumb_func_end sub_807CFFC

/*For debugging purposes, connect comment at any range!*/
