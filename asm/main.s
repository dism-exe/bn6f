	.include "asm/main.inc"

	thumb_func_start main_
main_:
	bl main_initToolkitAndOtherSubsystems
	bl SeedRNG2 // () -> void
	bl clear_e200AD04 // () -> void
	bl sub_803D1A8 // () -> void
main_gameRoutine:
	bl main_pollGeneralLCDStatus_STAT_LYC_ // () -> void
	bl main_awaitFrame
	bl sub_80007BE
	bl sub_80019A0
	bl render_800172C
	bl copyObjAttributesToIWRAM_802FE0C
	bl objRender_8000A44
	bl getPalleteAndTransition_80023E0
	bl copyPalletesToIWRAM_8001808
	bl copyPalletesToIWRAM_8002650
	bl sprite_resetObjVars_800289C
	bl copyAndFillTo_GFX30025c0_Ptr
	bl main_static_80003E4
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r1, [r0]
	add r1, #1
	strh r1, [r0]
	bl sub_8000E10
	ldr r0, off_8000348 // =main_subsystemJumpTable
	mov r1, r10
	ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
	ldrb r1, [r1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl GetRNG1 // () -> void
	bl isSameSubsystem_800A732 // () -> zf
	beq loc_800032A
	bl subsystem_triggerTransition_800630A
loc_800032A:
	bl chatbox_onUpdate
	bl cb_call_200A880
	bl PET_onUpdate_8001B94
	ldr r0, off_8000344 // =sub_3006814+1
	mov lr, pc
	bx r0
	bl main_static_8000454
	b main_gameRoutine
	.balign 4, 0x00
off_8000344: .word sub_3006814+1
off_8000348: .word main_subsystemJumpTable
main_subsystemJumpTable: .word startscreen_802F544+1
	.word cbGameState_80050EC+1
	.word ho_jackIn_80341B6+1
	.word cb_8038AD0+1
	.word cb_803D1CA+1
	.word cb_803FB3C+1
	.word cb_80395A4+1
	.word cb_803CBA6+1
	.word cb_803CCD6+1
	.word reqBBS_cb_draw_813E0A4+1
	.word SubMenuControl+1
	.word ShopControl+1 // shop!
	.word cb_8048FD4+1
	.word ChipTraderControl+1
	.word cb_81382AC+1
	.word 0x0
	.word 0x0
	.word reqBBS_subsystemCotnrol+1
	.word HandleEmailMenu81279F8+1
	.word cb_8049E04+1
	.word 0x0
	thumb_func_end main_

	thumb_local_start
main_awaitFrame:
	push {lr}
loc_80003A2:
	ldr r0, off_80003CC // =GeneralLCDStatus_STAT_LYC_
	mov r2, #1
loc_80003A6:
	ldrh r1, [r0]
	tst r1, r2
	beq loc_80003A6
	ldr r0, off_80003C4 // =dword_200A870
	ldr r2, [r0]
	ldr r1, off_80003C8 // =dword_2009930
	ldr r1, [r1]
	cmp r2, r1
	blt loc_80003A2
	mov r1, #0
	str r1, [r0]
	pop {pc}
	.byte 0, 0
	.word dword_2009CC0
off_80003C4: .word dword_200A870
off_80003C8: .word dword_2009930
off_80003CC: .word GeneralLCDStatus_STAT_LYC_
	thumb_func_end main_awaitFrame

// () -> void
	thumb_local_start
main_pollGeneralLCDStatus_STAT_LYC_:
	push {lr}
	ldr r0, off_80003E0 // =GeneralLCDStatus_STAT_LYC_
	mov r2, #1
loc_80003D6:
	ldrh r1, [r0]
	tst r1, r2
	bne loc_80003D6
	pop {pc}
	.byte 0, 0
off_80003E0: .word GeneralLCDStatus_STAT_LYC_
	thumb_func_end main_pollGeneralLCDStatus_STAT_LYC_

	thumb_local_start
main_static_80003E4:
	mov r7, r10
	ldr r0, [r7,#oToolkit_JoypadPtr]
	ldrb r7, [r0,#0x13]
	add r7, #1
	cmp r7, #4
	ble loc_80003F2
	mov r7, #0
loc_80003F2:
	strb r7, [r0,#0x13]
	ldr r4, off_800044C // =KeyStatus
	ldrh r4, [r4]
	mvn r4, r4
	ldrh r5, [r0]
	strh r5, [r0,#6]
	ldr r3, dword_8000450 // =0x3ff
	strh r4, [r0]
	mov r6, r4
	and r6, r5
	mov r1, #8
	mov r3, #0
loc_800040A:
	mov r2, #1
	lsl r2, r3
	and r2, r6
	beq loc_800042A
	ldrb r2, [r0,r1]
	cmp r2, #0x10
	bge loc_8000430
	add r2, #1
	strb r2, [r0,r1]
	cmp r2, #1
	beq loc_8000438
loc_8000420:
	mov r2, #1
	lsl r2, r3
	mvn r2, r2
	and r6, r2
	b loc_8000438
loc_800042A:
	mov r2, #0
	strb r2, [r0,r1]
	b loc_8000438
loc_8000430:
	ldrb r7, [r0,#0x13]
	cmp r7, #0
	beq loc_8000438
	b loc_8000420
loc_8000438:
	add r3, #1
	add r1, #1
	cmp r1, #0x12
	blt loc_800040A
	strh r6, [r0,#4]
	mvn r5, r5
	and r4, r5
	strh r4, [r0,#2]
	mov pc, lr
	.balign 4, 0x00
off_800044C: .word KeyStatus
dword_8000450: .word 0x3FF
	thumb_func_end main_static_80003E4

	thumb_local_start
main_static_8000454:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_80004A2
	bl sub_813D60C
	bne locret_80004A2
	mov r7, r10
	ldr r0, [r7,#oToolkit_MainJumptableIndexPtr]
	ldrb r0, [r0]
	cmp r0, #0x10
	beq locret_80004A2
	ldr r0, [r7,#oToolkit_JoypadPtr]
	ldrh r2, [r0,#2]
	ldrh r0, [r0]
	ldr r1, [r7,#oToolkit_MainJumptableIndexPtr]
	add r1, #4
	ldrb r4, [r1]
	sub r4, #1
	cmp r4, #0
	bgt loc_80004A0
	mov r4, #0
	mov r3, #0xf
	and r0, r3
	cmp r0, r3
	bne loc_80004A0
	and r2, r3
	tst r2, r2
	beq loc_80004A0
	push {r1}
	bl start_800023C // () -> void
	bl main_initToolkitAndOtherSubsystems
	bl clear_e200AD04 // () -> void
	pop {r1}
	mov r4, #0xa
loc_80004A0:
	strb r4, [r1]
locret_80004A2:
	pop {r4-r7,pc}
	thumb_func_end main_static_8000454

	thumb_local_start
main_initToolkitAndOtherSubsystems:
	mov r0, #1
	b loc_80004AA
	mov r0, #0
loc_80004AA:
	push {r5,lr}
	push {r0}
	bl SetPrimaryToolkitPointers // () -> void
	bl RandomizeExtraToolkitPointers
	pop {r1}
	ldr r0, off_8000564 // =0x40
	tst r1, r1
	beq loc_80004C0
	ldr r0, off_8000568 // =0xc0
loc_80004C0:
	bl sRender_08_setRenderingState
	bl main_zeroFill_80017EC
	bl render_800172C
	bl copyMemory_8001850
	bl main_static_8000570
	bl zeroFill_80007B2
	bl sub_8001974
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl sub_80015B4
	bl sub_800260C
	bl sub_80027C4
	bl sub_802FDB0
	bl clearWord_e200AC1C
	bl clearChatboxAndEvent
	bl cleareMemory_802FF2C
	bl reqBBS_init_8004DF0
	bl sub_8004D48
	bl sub_8036ED4
	bl sub_8036F24
	bl zeroFill_e20094C0
	bl zeroFill_e20097A0
	bl zeroFill_e2009740
	bl zeroFill_e200F3A0
	bl sub_80062EC
	bl sub_8006910
	bl sub_803DE5C
	bl sub_8144240
	bl sub_803EBC8
	bl sub_813D960
	bl sub_80071B4
	bl sub_804657C // () -> void
	bl sub_80467D8
	ldr r0, off_800056C // =dword_2009930
	mov r1, #1
	strh r1, [r0]
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_MainJumptableIndexPtr]
	// size
	mov r1, #8
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_803D1A8 // () -> void
	bl sub_803E900
	pop {r5,pc}
	.balign 4, 0x00
off_8000564: .word 0x40
off_8000568: .word 0xC0
off_800056C: .word dword_2009930
	thumb_func_end main_initToolkitAndOtherSubsystems

	thumb_local_start
main_static_8000570:
	push {lr}
	bl sub_814E8A0
	ldr r0, dword_800059C // =0x93040d
	bl sub_814EE2C
	mov r0, #8
	ldr r1, off_80005A8 // =sub_3005D78+1
	bl start_800024C
	ldr r0, off_80005A0 // =GeneralLCDStatus_STAT_LYC_
	ldrh r1, [r0]
	mov r2, #0xff
	and r1, r2
	mov r2, #0x20
	orr r1, r2
	mov r2, #0x50
	lsl r2, r2, #8
	orr r1, r2
	strh r1, [r0]
	pop {pc}
	.balign 4, 0x00
dword_800059C: .word 0x93040D
off_80005A0: .word GeneralLCDStatus_STAT_LYC_
	.word off_3000E70
off_80005A8: .word sub_3005D78+1
	thumb_func_end main_static_8000570

/*For debugging purposes, connect comment at any range!*/
