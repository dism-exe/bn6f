.include "asm/main.inc"

.func
.thumb_func
main_:
	bl main_static_80004A4
	bl sub_8001514 // () -> void
	bl clear_200AD04 // () -> void
	bl sub_803D1A8 // () -> void
main_gameRoutine:
	bl main_static_await_80003D0 // () -> void
	bl main_static_awaitFrame_80003A0
	bl sub_80007BE
	bl sub_80019A0
	bl render_800172C
	bl objRender_802FE0C
	bl objRender_8000A44
	bl getPalleteAndTransition_80023E0
	bl renderPalletes_8001808
	bl renderPalletesAndObjs_8002650
	bl sprite_handleObjSprites_800289C
	bl render_80015D0
	bl main_static_80003E4
	mov R0, R10
	ldr R0, [R0,#0x24] // Toolkit.currFrame
	ldrh R1, [R0]
	add R1, #1
	strh R1, [R0]
	bl sub_8000E10
	ldr R0, off_8000348 // =main_jt_subsystem 
	mov R1, R10
	ldr R1, [R1]
	ldrb R1, [R1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl rng_800154C // () -> void
	bl isSameSubsystem_800A732 // () -> zf
	beq loc_800032A
	bl subsystem_triggerTransition_800630A
loc_800032A:
	bl chatbox_onUpdate_803FEB4
	bl cb_call_200A880
	bl PET_onUpdate_8001B94
	ldr R0, off_8000344 // =loc_3006814+1 
	mov LR, PC
	bx r0
	bl main_static_8000454
	b main_gameRoutine
	.balign 4, 0x00
off_8000344: .word loc_3006814+1
off_8000348: .word main_jt_subsystem
main_jt_subsystem: .word Load_ho_802F544+1, cb_80050EC+1, ho_jackIn_80341B6+1, cb_8038AD0+1
	.word cb_803D1CA+1, cb_803FB3C+1, cb_80395A4+1, cb_803CBA6+1
	.word cb_803CCD6+1, reqBBS_cb_draw_813E0A4+1, menuControl_cb_openSubmenu+1, cb_8046CF8+1
	.word cb_8048FD4+1, cb_804A304+1, cb_81382AC+1, 0x0
	.word 0x0, reqBBS_cb_813F404+1, menuControl_cb_email+1, cb_8049E04+1
	.byte 0, 0, 0, 0
.endfunc // main_

.func
.thumb_func
main_static_awaitFrame_80003A0:
	push {lr}
loc_80003A2:
	ldr R0, off_80003CC // =GeneralLCDStatus_STAT_LYC_ 
	mov R2, #1
loc_80003A6:
	ldrh R1, [R0]
	tst R1, R2
	beq loc_80003A6
	ldr R0, off_80003C4 // =dword_200A870 
	ldr R2, [R0]
	ldr R1, off_80003C8 // =dword_2009930 
	ldr R1, [R1]
	cmp R2, R1
	blt loc_80003A2
	mov R1, #0
	str R1, [R0]
	pop {pc}
	.byte 0, 0
	.word dword_2009CC0
off_80003C4: .word dword_200A870
off_80003C8: .word dword_2009930
off_80003CC: .word GeneralLCDStatus_STAT_LYC_
.endfunc // main_static_awaitFrame_80003A0

.func
.thumb_func
// () -> void
main_static_await_80003D0:
	push {lr}
	ldr R0, off_80003E0 // =GeneralLCDStatus_STAT_LYC_ 
	mov R2, #1
loc_80003D6:
	ldrh R1, [R0]
	tst R1, R2
	bne loc_80003D6
	pop {pc}
	.byte 0, 0
off_80003E0: .word GeneralLCDStatus_STAT_LYC_
.endfunc // main_static_await_80003D0

.func
.thumb_func
main_static_80003E4:
	mov R7, R10
	ldr R0, [R7,#4]
	ldrb R7, [R0,#0x13]
	add R7, #1
	cmp R7, #4
	ble loc_80003F2
	mov R7, #0
loc_80003F2:
	strb R7, [R0,#0x13]
	ldr R4, off_800044C // =KeyStatus 
	ldrh R4, [R4]
	mvn R4, R4
	ldrh R5, [R0]
	strh R5, [R0,#6]
	ldr R3, dword_8000450 // =0x3FF 
	strh R4, [R0]
	add r6, r4, #0
	and R6, R5
	mov R1, #8
	mov R3, #0
loc_800040A:
	mov R2, #1
	lsl R2, R3
	and R2, R6
	beq loc_800042A
	ldrb R2, [R0,R1]
	cmp R2, #0x10
	bge loc_8000430
	add R2, #1
	strb R2, [R0,R1]
	cmp R2, #1
	beq loc_8000438
loc_8000420:
	mov R2, #1
	lsl R2, R3
	mvn R2, R2
	and R6, R2
	b loc_8000438
loc_800042A:
	mov R2, #0
	strb R2, [R0,R1]
	b loc_8000438
loc_8000430:
	ldrb R7, [R0,#0x13]
	cmp R7, #0
	beq loc_8000438
	b loc_8000420
loc_8000438:
	add R3, #1
	add R1, #1
	cmp R1, #0x12
	blt loc_800040A
	strh R6, [R0,#4]
	mvn R5, R5
	and R4, R5
	strh R4, [R0,#2]
	mov PC, LR
	.balign 4, 0x00
off_800044C: .word KeyStatus
dword_8000450: .word 0x3FF
.endfunc // main_static_80003E4

.func
.thumb_func
main_static_8000454:
	push {R4-R7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_80004A2
	bl sub_813D60C
	bne locret_80004A2
	mov R7, R10
	ldr R0, [R7]
	ldrb R0, [R0]
	cmp R0, #0x10
	beq locret_80004A2
	ldr R0, [R7,#4]
	ldrh R2, [R0,#2]
	ldrh R0, [R0]
	ldr R1, [R7]
	add R1, #4
	ldrb R4, [R1]
	sub R4, #1
	cmp R4, #0
	bgt loc_80004A0
	mov R4, #0
	mov R3, #0xF
	and R0, R3
	cmp R0, R3
	bne loc_80004A0
	and R2, R3
	tst R2, R2
	beq loc_80004A0
	push {r1}
	bl start_800023C // () -> void
	.byte  0
	.byte 0xF0
	.byte  6
	.byte 0xF8
	.byte 0x3F 
	.byte 0xF0
	.byte 0x16
	.byte 0xF8
	.byte  2
	.byte 0xBC
	.byte 0xA
	.byte 0x24 
loc_80004A0:
	strb R4, [R1]
locret_80004A2:
	pop {R4-R7,pc}
.endfunc // main_static_8000454

.func
.thumb_func
main_static_80004A4:
	mov R0, #1
	b loc_80004AA
	mov R0, #0
loc_80004AA:
	push {r5,lr}
	push {r0}
	bl CpuSet_toolKit // () -> void
	bl sub_8006C22
	pop {r1}
	ldr R0, off_8000564 // =0x40 
	tst R1, R1
	beq loc_80004C0
	ldr R0, off_8000568 // =0xC0 
loc_80004C0:
	bl sub_8001778
	bl main_static_80017EC
	bl render_800172C
	bl sub_8001850
	bl main_static_8000570
	bl sub_80007B2
	bl sub_8001974
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_80015B4
	bl sub_800260C
	bl sub_80027C4
	bl sub_802FDB0
	bl sub_8000A3C
	bl sub_803FCF0
	bl sub_802FF2C
	bl sub_8004DF0
	bl sub_8004D48
	bl sub_8036ED4
	bl sub_8036F24
	bl sub_8001AFC
	bl sub_8002368
	bl sub_8001820
	bl sub_800182E
	bl sub_80062EC
	bl sub_8006910
	bl sub_803DE5C
	bl sub_8144240
	bl sub_803EBC8
	bl sub_813D960
	bl sub_80071B4
	bl sub_804657C // () -> void
	bl sub_80467D8
	ldr R0, off_800056C // =dword_2009930 
	mov R1, #1
	strh R1, [R0]
	mov R0, R10
	// memBlock
	ldr R0, [R0]
	// size
	mov R1, #8
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_803D1A8 // () -> void
	bl sub_803E900
	pop {r5,pc}
	.balign 4, 0x00
off_8000564: .word 0x40
off_8000568: .word 0xC0
off_800056C: .word dword_2009930
.endfunc // main_static_80004A4

.func
.thumb_func
main_static_8000570:
	push {lr}
	bl sub_814E8A0
	ldr R0, dword_800059C // =0x93040D 
	bl sub_814EE2C
	mov R0, #8
	ldr R1, dword_80005A8 // =unk_3005D79 
	bl start_800024C
	ldr R0, off_80005A0 // =GeneralLCDStatus_STAT_LYC_ 
	ldrh R1, [R0]
	mov R2, #0xFF
	and R1, R2
	mov r2, #0x20 
	orr R1, R2
	mov r2, #0x50 
	lsl r2, r2, #8
	orr R1, R2
	strh R1, [R0]
	pop {pc}
	.balign 4, 0x00
dword_800059C: .word 0x93040D
off_80005A0: .word GeneralLCDStatus_STAT_LYC_
	.word off_3000E70
dword_80005A8: .word 0x3005D79
.endfunc // main_static_8000570

/*For debugging purposes, connect comment at any range!*/
