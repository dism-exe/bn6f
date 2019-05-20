
	thumb_func_start sub_807A8E0
sub_807A8E0:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_807A938 // =off_8079F74 
	ldr r1, [r7,#oToolkit_Warp2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_807A9CC
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
	ldr r0, off_807A93C // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_807A940 // =off_807A944 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_807AAD6
	bl sub_8034FB8
	pop {r4-r7,pc}
off_807A938: .word off_8079F74
off_807A93C: .word unk_2037800
off_807A940: .word off_807A944
off_807A944: .word byte_807A950
	.word byte_807A95A
	.word byte_807A964
byte_807A950: .byte 0x1C, 0x1F, 0x1C, 0x20, 0x1C, 0x2B, 0x1C, 0x79, 0xFF
	.byte 0xFF
byte_807A95A: .byte 0x1C, 0x64, 0x1C, 0xE, 0x1C, 0x95, 0x1C, 0x79, 0xFF
	.byte 0xFF
byte_807A964: .byte 0x1C, 0x7E, 0x1C, 0x7F, 0x1C, 0x80, 0x1C, 0x1F, 0x18
	.byte 0x38, 0x18, 0x39, 0x18, 0x3A, 0xFF, 0xFF
	thumb_func_end sub_807A8E0

	thumb_func_start sub_807A974
sub_807A974:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_807A984 // =off_807A988 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_807A984: .word off_807A988
off_807A988: .word off_807A994
	.word off_807A9A0
	.word off_807A9B8
off_807A994: .word off_807A080
	.word byte_807A370
	.word 0xFFFFFFFF
off_807A9A0: .word off_807A080
	.word byte_807A3C0
	.word byte_807A410
	.word byte_807A460
	.word byte_807A4B0
	.word 0xFFFFFFFF
off_807A9B8: .word off_807A4E0
	.word byte_807A7D0
	.word byte_807A800
	.word byte_807A850
	.word 0xFFFFFFFF
	thumb_func_end sub_807A974

	thumb_func_start sub_807A9CC
sub_807A9CC:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_807AA30 // =off_807AA34 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sRender_08_setRenderingState
	ldr r0, off_807AA64 // =off_807AA68 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	thumb_func_end sub_807A9CC

	thumb_local_start
sub_807A9FE:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_807AA30 // =off_807AA34 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sRender_08_setRenderingState
	ldr r0, off_807AA64 // =off_807AA68 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_8030540
	pop {r4-r7,pc}
off_807AA30: .word off_807AA34
off_807AA34: .word nullsub_39+1
	.word sub_80019D0+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word sub_80019D0+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word sub_80019D0+1
	.word nullsub_38+1
	.word 0x800
off_807AA64: .word off_807AA68
off_807AA68: .word off_807AA74
	.word off_807AA74
	.word off_807AA90
off_807AA74: .word off_8617068
	.word 0x6008020
	.word dword_8617190
	.word 0x1800
	.word dword_8618AB4
	.word byte_3001960
	.word 0x20
off_807AA90: .word off_8617068
	.word 0x6008020
	.word dword_8617190
	.word 0x1800
	.word dword_8618C58
	.word byte_3001960
	.word 0x20
	thumb_func_end sub_807A9FE

	thumb_func_start sub_807AAAC
sub_807AAAC:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_807AAC0 // =off_807AAC4 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_807AAC0: .word off_807AAC4
off_807AAC4: .word nullsub_81+1
	.word nullsub_82+1
	.word nullsub_83+1
	thumb_func_end sub_807AAAC

	thumb_local_start
nullsub_81:
	mov pc, lr
	thumb_func_end nullsub_81

	thumb_local_start
nullsub_82:
	mov pc, lr
	thumb_func_end nullsub_82

	thumb_local_start
nullsub_83:
	mov pc, lr
	thumb_func_end nullsub_83

	thumb_func_start sub_807AAD6
sub_807AAD6:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_807AAEC // =pt_807AAF0 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
	.balign 4, 0x00
off_807AAEC: .word pt_807AAF0
pt_807AAF0:
	// <endpool> <endfile>
	.word byte_807AAFC
	.word byte_807AC18
	.word byte_807ACA8
	thumb_func_end sub_807AAD6

/*For debugging purposes, connect comment at any range!*/
