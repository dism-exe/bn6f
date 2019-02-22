	.include "data/dat31.inc"

byte_810C35C: .byte 0x4
	.byte 0x7, 0x1, 0x0, 0x7, 0x0, 0x0, 0x1
byte_810C364: .byte 0x82, 0x0, 0x0, 0x8, 0x32, 0x0, 0xA0, 0x0, 0x1, 0x8, 0x64, 0x0, 0xDC
	.byte 0x0, 0x2, 0x8, 0x96, 0x0, 0x4, 0x1, 0x3, 0x8, 0xC8, 0x0, 0xC8, 0x0
	.byte 0x4, 0x8, 0x96, 0x0, 0x18, 0x1, 0x5, 0x8, 0xC8, 0x0
byte_810C388: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
	thumb_local_start
sub_810C448:
	push {lr}
	ldr r1, off_810C458 // =off_810C45C 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_810C458: .word off_810C45C
off_810C45C: .word sub_810C46C+1
	.word sub_810C4B4+1
	.word sub_810C4EE+1
	.word sub_810C508+1
	thumb_func_end sub_810C448

	thumb_local_start
sub_810C46C:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810C4A4
	bl object_canMove
	beq loc_810C49E
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x40 
	bl object_setFlag // (int a1) -> void
	mov r0, #1
	lsl r0, r0, #0x16
	bl object_setFlag // (int a1) -> void
	mov r0, #0xc9
	bl sound_play // () -> void
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	b locret_810C4B2
loc_810C49E:
	bl object_exitAttackState
	b locret_810C4B2
loc_810C4A4:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810C4B2
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810C4B2:
	pop {pc}
	thumb_func_end sub_810C46C

	thumb_local_start
sub_810C4B4:
	push {r4,r6,lr}
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	ldrb r4, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	eor r4, r3
	lsl r4, r4, #8
	add r4, #0x61 
	mov r3, #0
	bl SpawnT4BattleObjectWithId0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0
	mov r3, #0x10
	lsl r3, r3, #0x10
	ldr r4, dword_810C6E4 // =0x10000 
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	bl sub_80CB8DE
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,r6,pc}
	thumb_func_end sub_810C4B4

	thumb_local_start
sub_810C4EE:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810C502
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810C502:
	pop {pc}
	.word 0x405FF04
	thumb_func_end sub_810C4EE

	thumb_local_start
sub_810C508:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810C522
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x40 
	bl object_clearFlag // (int bitfield) -> void
	bl object_exitAttackState
locret_810C522:
	pop {pc}
	thumb_func_end sub_810C508

	thumb_local_start
sub_810C524:
	push {lr}
	ldr r1, off_810C534 // =off_810C538 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_810C534: .word off_810C538
off_810C538: .word sub_810C544+1
	.word sub_810C604+1
	.word sub_810C686+1
	thumb_func_end sub_810C524

	thumb_local_start
sub_810C544:
	push {r4,r6,r7,lr}
	bl object_canMove
	beq loc_810C5FA
	mov r0, #0xc8
	bl sound_play // () -> void
	mov r1, #0x35 
	mov r2, #2
	mov r3, #3
	bl sub_801A082
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	mov lr, pc
	bx r1
	tst r0, r0
	beq loc_810C5FA
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r5,#oBattleObject_Alliance]
	mov r3, #1
	eor r2, r3
	mov r3, #5
	mul r2, r3
	add r2, #1
	cmp r0, r2
	beq loc_810C58A
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	bl object_getPanelParameters
	ldr r1, dword_810C6E8 // =0xf880080 
	tst r0, r1
	beq loc_810C59C
loc_810C58A:
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b loc_810C5AC
loc_810C59C:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_810C5AC:
	mov r0, #0x40 
	bl object_setFlag // (int a1) -> void
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getPanelParameters
	mov r1, #0x20 
	and r0, r1
	ldrb r2, [r5,#oBattleObject_Alliance]
	mul r1, r2
	cmp r0, r1
	beq loc_810C5D8
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	ldrb r2, [r5,#oBattleObject_Alliance]
	push {r0,r1}
	bl object_setPanelAlliance
	pop {r0,r1}
	bl object_setPanelAllianceTimerLong
loc_810C5D8:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r5,#oBattleObject_PanelX]
	sub r0, r0, r1
	push {r0}
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	strh r1, [r7,#oAIAttackVars_Unk_10]
	lsr r2, r1, #1
	strh r2, [r7,#oAIAttackVars_Unk_12]
	mov r0, #0x28 
	lsl r0, r0, #0x10
	svc 6
	pop {r1}
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	b locret_810C602
loc_810C5FA:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_exitAttackState
locret_810C602:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_810C544

	thumb_local_start
sub_810C604:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_810C6EC // =0xc000000 
	tst r0, r1
	beq loc_810C618
	ldrh r0, [r5,#oBattleObject_PanelXY]
	str r0, [r7,#oAIAttackVars_Unk_3c]
	bl object_clearCollisionRegion // () -> void
loc_810C618:
	ldrh r0, [r5,#oBattleObject_PanelXY]
	ldr r1, [r7,#oAIAttackVars_Unk_3c]
	cmp r0, r1
	beq loc_810C626
	mov r0, #1
	bl object_setCollisionRegion
loc_810C626:
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	ldrh r1, [r7,#oAIAttackVars_Unk_12]
	cmp r0, r1
	bne loc_810C63E
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
loc_810C63E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_810C684
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x40 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #0x13
	bl object_setFlag // (int a1) -> void
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r1, #1
	mov r2, #2
	mov r3, #3
	bl sub_801A082
	bl object_exitAttackState
locret_810C684:
	pop {pc}
	thumb_func_end sub_810C604

	thumb_local_start
sub_810C686:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_810C6EC // =0xc000000 
	tst r0, r1
	beq loc_810C69A
	ldrh r0, [r5,#oBattleObject_PanelXY]
	str r0, [r7,#oAIAttackVars_Unk_3c]
	bl object_clearCollisionRegion // () -> void
loc_810C69A:
	ldrh r0, [r5,#oBattleObject_PanelXY]
	ldr r1, [r7,#oAIAttackVars_Unk_3c]
	cmp r0, r1
	beq loc_810C6A8
	mov r0, #1
	bl object_setCollisionRegion
loc_810C6A8:
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	ldrh r1, [r7,#oAIAttackVars_Unk_12]
	cmp r0, r1
	bne loc_810C6DA
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	mov r0, #0xc8
	bl sound_play // () -> void
	ldr r0, [r5,#oBattleObject_XVelocity]
	mov r1, #0
	sub r1, #1
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_810C6E0
loc_810C6DA:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
locret_810C6E0:
	pop {pc}
	.balign 4, 0x00
dword_810C6E4: .word 0x10000
dword_810C6E8: .word 0xF880080
dword_810C6EC: .word 0xC000000
off_810C6F0: .word sub_8016380+1
	.word sub_810C720+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810C72E+1
	.word sub_81097BA+1
	.word sub_810C524+1
	.word sub_810C448+1
	thumb_func_end sub_810C686

	thumb_local_start
sub_810C720:
	push {lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa
	strb r1, [r0,#oCollisionData_StaminaDamageCounterDisabler]
	bl sub_80165B8
	pop {pc}
	thumb_func_end sub_810C720

	thumb_local_start
sub_810C72E:
	push {r4,r6,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r6, #0x80
	add r6, r6, r4
	ldr r1, off_810C744 // =off_810C748 
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_810C744: .word off_810C748
off_810C748: .word sub_810C754+1
	.word sub_810C776+1
	.word sub_810C7B6+1
	thumb_func_end sub_810C72E

	thumb_local_start
sub_810C754:
	push {lr}
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_810C76C // =byte_810C770 
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	.balign 4, 0x00
off_810C76C: .word byte_810C770
byte_810C770: .byte 0x78, 0x64, 0x50, 0x3C, 0x3C, 0x3C
	thumb_func_end sub_810C754

	thumb_local_start
sub_810C776:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	bl sub_810C820
	cmp r0, #0
	bne locret_810C7A8
	ldr r0, off_810C8C0 // =sub_810C850+1 
	str r0, [r7,#oAIAttackVars_Unk_28]
	bl object_getFlag // () -> int
	ldr r2, dword_810C8C4 // =0xa000 
	and r2, r0
	beq loc_810C794
	mov r2, #1
loc_810C794:
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810C7AC // =byte_810C7B0 
	ldrb r0, [r1,r0]
	lsl r0, r2
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
locret_810C7A8:
	pop {pc}
	.balign 4, 0x00
off_810C7AC: .word byte_810C7B0
byte_810C7B0: .byte 0xB4, 0x3C, 0x3C, 0x3C, 0x1E, 0x1E
	thumb_func_end sub_810C776

	thumb_local_start
sub_810C7B6:
	push {lr}
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	bne loc_810C7E4
	mov r0, #0x60 
	mov r1, #0x25 
	mov r2, #0x2a 
	bl sub_8109630
	cmp r0, #0
	bne loc_810C7E4
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810C810 // =byte_810C81A 
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0xb
	bl object_setAttack0
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	b locret_810C808
loc_810C7E4:
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	bl object_getFlag // () -> int
	ldr r2, dword_810C8C4 // =0xa000 
	and r2, r0
	beq loc_810C7F4
	mov r2, #1
loc_810C7F4:
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810C80C // =byte_810C814 
	ldrb r0, [r1,r0]
	lsl r0, r2
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
locret_810C808:
	pop {pc}
	.balign 4, 0x00
off_810C80C: .word byte_810C814
off_810C810: .word byte_810C81A
byte_810C814: .byte 0x78, 0x78, 0x78, 0x78, 0x78, 0x78
byte_810C81A: .byte 0x46, 0x64, 0x96, 0xC8, 0x82, 0xC8
	thumb_func_end sub_810C7B6

	thumb_local_start
sub_810C820:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_810C84C
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	bl sub_800A704
	ldr r1, off_810C8C8 // =0x12c 
	cmp r0, r1
	blt loc_810C84C
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_810C84C:
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_810C820

	thumb_local_start
sub_810C850:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	beq loc_810C862
	mov r0, #0
	b locret_810C89C
loc_810C862:
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_810C8AC // =byte_810C8B0 
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne locret_810C89C
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	sub r0, r1, r0
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_810C8AC // =byte_810C8B0 
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne locret_810C89C
	mov r0, #0
locret_810C89C:
	pop {pc}
	.byte 0, 0
	.word byte_810C8A4
byte_810C8A4: .byte 0x1, 0x0, 0xFF, 0x0, 0x7F, 0x0, 0x0, 0x0
off_810C8AC: .word byte_810C8B0
byte_810C8B0: .byte 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0xB, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x80, 0x7
off_810C8C0: .word sub_810C850+1
dword_810C8C4: .word 0xA000
off_810C8C8: .word 0x12C
byte_810C8CC: .byte 0x4, 0x8, 0x1, 0x0, 0x8, 0x0, 0x0, 0x1
byte_810C8D4: .byte 0x3C, 0x10, 0x0, 0xC, 0x32, 0x0, 0x78, 0x10, 0x1, 0xC, 0x64
	.byte 0x0, 0xB4, 0x10, 0x2, 0xC, 0x96, 0x0, 0xDC, 0x10, 0x3, 0xC
	.byte 0xC8, 0x0, 0x96, 0x10, 0x4, 0xC, 0x96, 0x0, 0xFA, 0x10, 0x5
	.byte 0xC, 0xC8, 0x0
byte_810C8F8: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x9B, 0x34, 0x9B, 0x34, 0x9B, 0x34, 0x9B, 0x34
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA7, 0x34, 0xA7
	.byte 0x34, 0xA7, 0x34, 0xA7, 0x34, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F
	.byte 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34
	.byte 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F
	.byte 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34, 0x9F, 0x34
	.byte 0x9F, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3
	.byte 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
	thumb_func_end sub_810C850

	thumb_local_start
sub_810C9B8:
	push {r6,lr}
	ldr r1, off_810C9C8 // =off_810C9CC 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,pc}
	.balign 4, 0x00
off_810C9C8: .word off_810C9CC
off_810C9CC: .word sub_810C9F4+1
	.word sub_810CA4C+1
	.word sub_810CA8E+1
	.word sub_810CB14+1
	.word sub_810CB2A+1
	.word sub_810CB78+1
	.word sub_810CC0A+1
	.word sub_810CC54+1
	.word sub_810CCDC+1
	.word sub_81097BA+1
	thumb_func_end sub_810C9B8

	thumb_local_start
sub_810C9F4:
	push {lr}
	bl object_canMove
	bne loc_810CA02
	bl object_exitAttackState
	b locret_810CA4A
loc_810CA02:
	mov r0, #0x40 
	bl object_setFlag // (int a1) -> void
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	lsl r0, r0, #0x16
	bl object_setFlag // (int a1) -> void
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #0x14
	bl SpawnT4BattleObjectWithId0
	bl object_clearCollisionRegion // () -> void
	bl sub_801DD34
	ldrb r0, [r7,#oAIAttackVars_Unk_0d]
	sub r0, #0xa
	cmp r0, #0
	bgt loc_810CA44
	mov r0, #1
loc_810CA44:
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CA4A:
	pop {pc}
	thumb_func_end sub_810C9F4

	thumb_local_start
sub_810CA4C:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_810CA84
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	mov lr, pc
	bx r1
	tst r0, r0
	beq loc_810CA78
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	cmp r0, #0
	beq loc_810CA78
	bl object_reservePanel
	mov r0, #0xd
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b loc_810CA84
loc_810CA78:
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #5
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x20 
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_810CA84:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	pop {pc}
	thumb_func_end sub_810CA4C

	thumb_local_start
sub_810CA8E:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_810CAAC
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r4, #0x15
	bl SpawnT4BattleObjectWithId0
loc_810CAAC:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810CB12
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	mov r2, #0x10
	ldr r3, dword_810CD5C // =0xf800000 
	bl object_checkPanelParameters
	cmp r0, #0
	bne loc_810CAE2
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	bl object_removePanelReserve
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #5
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x20
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_810CB12
loc_810CAE2:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0
	mov r1, #0
	bl sub_801DC7C
	mov r0, #0x10
	bl object_setCounterTime
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CB12:
	pop {r4,pc}
	thumb_func_end sub_810CA8E

	thumb_local_start
sub_810CB14:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0xa
	bne loc_810CB1C
loc_810CB1C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810CB28
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CB28:
	pop {pc}
	thumb_func_end sub_810CB14

	thumb_local_start
sub_810CB2A:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810CB3E
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_810CB3E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_810CB5C
	mov r0, #1
	ldrb r1, [r7,#oAIAttackVars_Unk_03]
	cmp r1, #1
	bgt loc_810CB52
	mov r0, #3
loc_810CB52:
	bl sub_810CD38
	mov r0, #0xed
	bl sound_play // () -> void
loc_810CB5C:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810CB76
	mov r0, #3
	ldrb r1, [r7,#oAIAttackVars_Unk_03]
	cmp r1, #2
	bne loc_810CB70
	add r0, #4
loc_810CB70:
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CB76:
	pop {pc}
	thumb_func_end sub_810CB2A

	thumb_local_start
sub_810CB78:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_810CBB6
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mov lr, pc
	bx r1
	tst r0, r0
	beq loc_810CB94
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	bl object_reservePanel
loc_810CB94:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r5,#oBattleObject_PanelX]
	ldrb r3, [r5,#oBattleObject_PanelY]
	cmp r0, r2
	bne loc_810CBA4
	cmp r1, r3
	beq loc_810CBB6
loc_810CBA4:
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r4, #0x15
	bl SpawnT4BattleObjectWithId0
loc_810CBB6:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810CC08
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r5,#oBattleObject_PanelX]
	ldrb r3, [r5,#oBattleObject_PanelY]
	cmp r0, r2
	bne loc_810CBCE
	cmp r1, r3
	beq loc_810CBE0
loc_810CBCE:
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #0x14
	bl SpawnT4BattleObjectWithId0
loc_810CBE0:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r2, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r7,#oAIAttackVars_Unk_17]
	cmp r0, r2
	bne loc_810CBF0
	cmp r1, r3
	beq loc_810CBF4
loc_810CBF0:
	bl object_removePanelReserve
loc_810CBF4:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CC08:
	pop {r4,pc}
	thumb_func_end sub_810CB78

	thumb_local_start
sub_810CC0A:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810CC26
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	cmp r0, #1
	ble loc_810CC46
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_10]
	b locret_810CC52
loc_810CC26:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #5
	bne loc_810CC3C
	mov r0, #3
	bl sub_810CD38
	mov r0, #0xee
	bl sound_play // () -> void
loc_810CC3C:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810CC52
loc_810CC46:
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x1c
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CC52:
	pop {pc}
	thumb_func_end sub_810CC0A

	thumb_local_start
sub_810CC54:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_810CC82
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	ldrb r2, [r5,#oBattleObject_PanelX]
	ldrb r3, [r5,#oBattleObject_PanelY]
	cmp r0, r2
	bne loc_810CC6C
	cmp r1, r3
	beq loc_810CC82
loc_810CC6C:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r4, #0x15
	bl SpawnT4BattleObjectWithId0
loc_810CC82:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810CCDA
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	ldrb r2, [r5,#oBattleObject_PanelX]
	ldrb r3, [r5,#oBattleObject_PanelY]
	cmp r0, r2
	bne loc_810CC9A
	cmp r1, r3
	beq loc_810CCAC
loc_810CC9A:
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #0x14
	bl SpawnT4BattleObjectWithId0
loc_810CCAC:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels
	bl object_updateCollisionPanels
	mov r0, #0x40
	bl object_clearFlag
	mov r0, #1
	lsl r0, r0, #0x13
	bl object_setFlag
	bl object_exitAttackState
locret_810CCDA:
	pop {pc}
	thumb_func_end sub_810CC54

	thumb_local_start
sub_810CCDC:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_810CCFA
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r4, #0x15
	bl SpawnT4BattleObjectWithId0
loc_810CCFA:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810CD36
	mov r0, #0x40 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #0x13
	bl object_setFlag // (int a1) -> void
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0
	mov r1, #0
	bl sub_801DC7C
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x24
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810CD36:
	pop {pc}
	thumb_func_end sub_810CCDC

	thumb_local_start
sub_810CD38:
	push {r4,r6,r7,lr}
	ldr r4, dword_810CD58 // =0x4050101 
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	mov r7, r0
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r2, #1
	bl object_spawnCollisionRegion
	pop {r4,r6,r7,pc}
	.byte 0x0, 0x0
dword_810CD58: .word 0x4050101
dword_810CD5C: .word 0xF800000
off_810CD60: .word sub_8016380+1
	.word sub_810CDC0+1
	.word sub_810CDEA+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810CE1A+1
	.word sub_81097BA+1
	.word sub_8109952+1
	.word sub_810C9B8+1
	.byte 0x6, 0x6, 0x6, 0x6, 0x6, 0x6
byte_810CD96: .byte 0x15, 0x12, 0xC, 0x6, 0x6, 0x6
byte_810CD9C: .byte 0x2A, 0x18, 0xC, 0x6, 0x6, 0x6
byte_810CDA2: .byte 0x12, 0x6, 0x6, 0x6, 0x6, 0x6
byte_810CDA8: .byte 0x1E, 0x12, 0x12, 0xC, 0x12, 0x6
byte_810CDAE: .byte 0x14, 0x1E, 0x32, 0x50, 0x1E, 0x5A, 0x78, 0x0, 0x78
	.byte 0x0, 0x64, 0x0, 0x64, 0x0, 0x50, 0x0, 0x50, 0x0
	thumb_func_end sub_810CD38

	thumb_local_start
sub_810CDC0:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810CDE4
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	mov r0, #0
	ldrb r1, [r5,#oBattleObject_PanelY]
	cmp r1, #3
	beq loc_810CDE2
	mov r0, #1
	cmp r1, #1
	beq loc_810CDE2
	bl GetPositiveSignedRNG2
	mov r1, #1
	and r0, r1
loc_810CDE2:
	strb r0, [r6,#oAIState_Unk_06]
loc_810CDE4:
	bl sub_80165B8
	pop {pc}
	thumb_func_end sub_810CDC0

	thumb_local_start
sub_810CDEA:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810CE14
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_810CE14
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	ldrb r2, [r5,#oBattleObject_PanelX]
	ldrb r3, [r5,#oBattleObject_PanelY]
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	cmp r0, r2
	bne loc_810CE10
	cmp r1, r3
	beq loc_810CE14
loc_810CE10:
	bl object_removePanelReserve
loc_810CE14:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_810CDEA

	thumb_local_start
sub_810CE1A:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_810CE38
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810CFE4 // =off_810CDA8
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	b loc_810CEAA
loc_810CE38:
	ldrb r0, [r5,#oBattleObject_PanelY]
	bl sub_810971A
	cmp r0, #0
	beq loc_810CEAA
	ldrb r2, [r5,#oBattleObject_Alliance]
	bl sub_80E7486
	str r0, [sp]
	bl sub_810CF4A
	cmp r0, #0
	bne loc_810CEA6
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_38]
	ldr r0, [sp]
	bl sub_810CEAE
	cmp r0, #0
	beq loc_810CEAA
	ldr r0, [sp]
	str r0, [r7,#oAIAttackVars_Unk_2c]
	bl object_getFlag
	str r0, [r7,#oAIAttackVars_Unk_38]
	ldr r0, off_810CFE8 // sub_810CEAE+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldr r0, off_810CFEC // sub_810CF40+1
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldr r0, off_810CFF0 // sub_810CF46+1
	str r0, [r7,#oAIAttackVars_Unk_34]
	ldrb r0, [r4,#oAIData_Version_16]
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r1, off_810CFF4 // =byte_810CD9C 
	ldrb r1, [r1,r0]
	strh r1, [r7,#oAIAttackVars_Unk_18]
	ldr r1, off_810CFF8 // =byte_810CD96 
	ldrb r1, [r1,r0]
	strb r1, [r7,#oAIAttackVars_Unk_0c]
	ldr r1, off_810CFFC // =byte_810CDA2 
	ldrb r1, [r1,r0]
	strb r1, [r7,#oAIAttackVars_Unk_0d]
	ldr r1, off_810D000 // =byte_810CDAE 
	ldrb r1, [r1,r0]
	strh r1, [r7,#oAIAttackVars_Unk_08]
	mov r1, #0xa
	strh r1, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0xb
	bl object_setAttack0
	bl GetPositiveSignedRNG2
	mov r1, #1
	and r0, r1
	strb r0, [r6,#oAIState_Unk_06]
loc_810CEA6:
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
loc_810CEAA:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_810CE1A

	thumb_local_start
sub_810CEAE:
	push {r4,lr}
	sub sp, sp, #4
	str r0, [sp]
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	bne loc_810CF14
	ldr r1, [r7,#oAIAttackVars_Unk_38]
	orr r0, r1
	mov r1, #1
	lsl r1, r1, #0xd
	tst r0, r1
	bne loc_810CF14
	mov r1, #1
	lsl r1, r1, #0xf
	tst r0, r1
	bne loc_810CF08
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldr r2, [sp]
	ldrb r1, [r2,#0x12]
	sub r1, r1, r4
	mov r0, r1
	ldrb r1, [r2,#0x13]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r5,#oBattleObject_PanelX]
	cmp r0, r2
	bne loc_810CEF2
	ldrb r2, [r5,#oBattleObject_PanelY]
	cmp r1, r2
	beq loc_810CF16
loc_810CEF2:
	ldr r3, off_810CFA8 // =byte_810CFAC 
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne loc_810CF16
	mov r0, #0
	b loc_810CF16
loc_810CF08:
	ldr r3, off_810CFBC // =byte_810CFC0 
	bl sub_81096FA
	bl sub_8015C94
	b loc_810CF16
loc_810CF14:
	mov r0, #0
loc_810CF16:
	add sp, sp, #4
	pop {r4,pc}
	thumb_func_end sub_810CEAE
// undisassembled code
	.byte 0x12, 0xB5, 0x1, 0xB4, 0x2C, 0x4B, 0xFC, 0xF7, 0xEB
	.byte 0xFB, 0x64, 0x42, 0x0, 0xF7, 0xC9, 0xF8, 0x0, 0x1B
	.byte 0x4, 0xBC, 0x0, 0x2C, 0x2, 0xDB, 0x82, 0x42, 0x3
	.byte 0xDD, 0x1, 0xE0, 0x82, 0x42, 0x0, 0xDA, 0x10, 0x1C
	.byte 0x12, 0xBD

	thumb_local_start
sub_810CF40:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov pc, lr
	thumb_func_end sub_810CF40

	thumb_local_start
sub_810CF46:
	push {r4,r7,lr}
	pop {r4,r7,pc}
	thumb_func_end sub_810CF46

	thumb_local_start
sub_810CF4A:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_810CF8E
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	mov r2, #1
	cmp r4, #0x9b
	bne loc_810CF68
	mov r2, #2
	cmp r4, #0x9f
	bne loc_810CF74
loc_810CF68:
	ldrh r0, [r5,#oBattleObject_HP]
	ldrh r1, [r5,#oBattleObject_MaxHP]
	lsr r1, r2
	cmp r0, r1
	bgt loc_810CF8E
	b loc_810CF7E
loc_810CF74:
	bl sub_800A704
	ldr r1, off_810D004 // =0x12c
	cmp r0, r1
	blt loc_810CF8E
loc_810CF7E:
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_810CF8E:
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_810CF4A
	.balign 4, 0
	.word byte_810CF98
byte_810CF98: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80, 0x0, 0x88, 0xF
off_810CFA8: .word byte_810CFAC
byte_810CFAC: .byte 0x10, 0x0, 0x0, 0x0, 0x80, 0x0, 0x88, 0xF, 0x10, 0x0, 0x0, 0x0, 0x80, 0x0, 0x88, 0xF
off_810CFBC: .word byte_810CFC0
byte_810CFC0: .byte 0x30, 0x0, 0x0, 0x0, 0x80, 0x0, 0x88, 0xF, 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF
	.word byte_810CFD4
byte_810CFD4: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_810CFE4: .word byte_810CDA8
off_810CFE8: .word sub_810CEAE+1
off_810CFEC: .word sub_810CF40+1
off_810CFF0: .word sub_810CF46+1
off_810CFF4: .word byte_810CD9C
off_810CFF8: .word byte_810CD96
off_810CFFC: .word byte_810CDA2
off_810D000: .word byte_810CDAE
off_810D004: .word 0x12C
byte_810D008: .byte 0x4, 0x9, 0x1, 0x0, 0x9, 0x0, 0x0, 0x0
byte_810D010: .byte 0x82, 0x0, 0x0, 0x8, 0x64, 0x0, 0x82, 0x0, 0x1, 0x8, 0x64, 0x0, 0xA0
	.byte 0x0, 0x2, 0x8, 0x96, 0x0, 0xA0, 0x0, 0x3, 0x8, 0x96, 0x0, 0xBE, 0x0
	.byte 0x4, 0x8, 0xC8, 0x0, 0xBE, 0x0, 0x5, 0x8, 0xC8, 0x0
byte_810D034: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
off_810D0F4: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810D118+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810D130+1

	thumb_local_start
sub_810D118:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810D12A
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_810D12A
	bl sub_80E5410
loc_810D12A:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_810D118

	thumb_local_start
sub_810D130:
	push {r4,r6,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r6, #0x80
	add r6, r6, r4
	ldr r1, off_810D144 // =off_810D148 
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
off_810D144: .word off_810D148
off_810D148: .word sub_810D150+1
	.word sub_810D168+1
	thumb_func_end sub_810D130

	thumb_local_start
sub_810D150:
	push {r4,lr}
	ldrb r4, [r4,#oAIData_Version_16]
	mov r0, #1
	and r4, r0
	bl sub_80E532C
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	mov r0, #0
	strh r0, [r6,#oAIState_Unk_02]
	pop {r4,pc}
	thumb_func_end sub_810D150

	thumb_local_start
sub_810D168:
	push {lr}
	pop {pc}
byte_810D16C: .byte 0x4, 0xA, 0x2, 0x0, 0xA, 0x0, 0x0, 0x1
byte_810D174: .byte 0x50, 0x0, 0x0, 0x8, 0x5A, 0x0, 0x64, 0x0, 0x1, 0x8, 0x78, 0x0, 0x82
	.byte 0x0, 0x2, 0x8, 0x96, 0x0, 0xA0, 0x0, 0x3, 0x8, 0xB4, 0x0, 0xBE, 0x0
	.byte 0x4, 0x8, 0xDC, 0x0, 0xD2, 0x0, 0x5, 0x8, 0x4, 0x1
byte_810D198: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
	thumb_func_end sub_810D168

	thumb_local_start
sub_810D258:
	push {r6,lr}
	ldr r1, off_810D268 // =off_810D26C 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,pc}
	.balign 4, 0x00
off_810D268: .word off_810D26C
off_810D26C: .word sub_810D280+1
	.word sub_810D2E4+1
	.word sub_810D34C+1
	.word sub_810D378+1
	.word sub_810D466+1
	thumb_func_end sub_810D258

	thumb_local_start
sub_810D280:
	push {lr}
	bl object_canMove
	beq loc_810D2C4
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #3
	ldr r1, off_810D2D0 // =byte_810D2D4 
	add r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0,#4]
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	mov lr, pc
	bx r1
	tst r0, r0
	beq loc_810D2C4
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #0x40 
	bl object_setFlag // (int a1) -> void
	mov r0, #1
	lsl r0, r0, #0x16
	bl object_setFlag // (int a1) -> void
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_810D2CC
loc_810D2C4:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_exitAttackState
locret_810D2CC:
	pop {pc}
	.byte 0, 0
off_810D2D0: .word byte_810D2D4
byte_810D2D4: .byte 0x10, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_810D280

	thumb_local_start
sub_810D2E4:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_810D302
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r4, #0x15
	bl SpawnT4BattleObjectWithId0
loc_810D302:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810D34A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #0x14
	bl SpawnT4BattleObjectWithId0
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x40 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #0x13
	bl object_setFlag // (int a1) -> void
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810D34A:
	pop {r4,pc}
	thumb_func_end sub_810D2E4

	thumb_local_start
sub_810D34C:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0xa
	bne loc_810D35A
	mov r0, #0x14
	bl object_setCounterTime
loc_810D35A:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810D376
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #1
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810D376:
	pop {pc}
	thumb_func_end sub_810D34C

	thumb_local_start
sub_810D378:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	lsl r0, r0, #2
	ldr r1, off_810D3B4 // =off_810D3B8 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	sub r0, #1
	str r0, [r7,#oAIAttackVars_Unk_30]
	bne loc_810D39E
	mov r0, #0x40 
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	add r0, r0, r0
	ldr r1, off_810D3D4 // =byte_810D3DE 
	ldrh r0, [r1,r0]
	bl sound_play // () -> void
loc_810D39E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810D3B2
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x28 
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810D3B2:
	pop {pc}
off_810D3B4: .word off_810D3B8
off_810D3B8: .word sub_810D3EA+1
	.word sub_810D414+1
	.word sub_810D41E+1
	.word sub_810D444+1
	.word sub_810D44E+1
	.word sub_810D3EA+1
off_810D3D0: .word byte_810D3D8
off_810D3D4: .word byte_810D3DE
byte_810D3D8: .byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
byte_810D3DE: .byte 0xA8, 0x0, 0xA9, 0x0, 0xAA, 0x0, 0xAB, 0x0, 0xAC, 0x0, 0xA8
	.byte 0x0
	thumb_func_end sub_810D378

	thumb_local_start
sub_810D3EA:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #1
	bne loc_810D3FE
	bl sub_810D4E8
	ldr r0, [r7,#oAIAttackVars_Unk_38]
	mov r1, #0
	str r1, [r0]
	b locret_810D412
loc_810D3FE:
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne locret_810D412
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl sub_810D4BA
	ldr r0, [r7,#oAIAttackVars_Unk_38]
	mov r1, #1
	str r1, [r0]
locret_810D412:
	pop {pc}
	thumb_func_end sub_810D3EA

	thumb_local_start
sub_810D414:
	push {lr}
	mov r0, #0x23 
	bl sub_810D476
	pop {pc}
	thumb_func_end sub_810D414

	thumb_local_start
sub_810D41E:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	cmp r0, #1
	bne loc_810D434
	mov r0, #3
	mov r1, #0x12
	bl sub_80302A8
	b loc_810D43C
loc_810D434:
	cmp r0, #0x16
	blt loc_810D43C
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_12]
loc_810D43C:
	mov r0, #0x43 
	bl sub_810D476
	pop {pc}
	thumb_func_end sub_810D41E

	thumb_local_start
sub_810D444:
	push {lr}
	mov r0, #0x33 
	bl sub_810D476
	pop {pc}
	thumb_func_end sub_810D444

	thumb_local_start
sub_810D44E:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne locret_810D464
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0x19
	bne locret_810D464
	mov r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	bl sub_810D516
locret_810D464:
	pop {pc}
	thumb_func_end sub_810D44E

	thumb_local_start
sub_810D466:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810D474
	bl object_exitAttackState
locret_810D474:
	pop {pc}
	thumb_func_end sub_810D466

	thumb_local_start
sub_810D476:
	push {r4,r6,r7,lr}
	lsl r7, r0, #8
	add r7, #0
	ldr r4, dword_810D494 // =0x2d00ff00 
	mov r0, #0x85
	ldrb r1, [r5,#oBattleObject_Alliance]
	sub r0, r0, r1
	add r4, r4, r0
	mov r6, #0
	ldrb r2, [r5,#oBattleObject_Element]
	mov r0, #1
	mov r1, #1
	bl object_spawnCollisionRegion
	pop {r4,r6,r7,pc}
dword_810D494: .word 0x2D00FF00
	thumb_func_end sub_810D476

	thumb_local_start
sub_810D498:
	push {r4,r6,lr}
	mov r4, r0
	mov r1, #1
	mov r2, #0x36 
	ldrb r3, [r5,#oBattleObject_Alliance]
	bl object_getEnemyByNameRange
	mov r6, r0
	lsl r0, r0, #2
	add r0, r0, r4
	mov r1, #0x3d 
	ldr r2, off_810D550 // =0x184 
	ldrb r3, [r5,#oBattleObject_Alliance]
	bl object_getEnemyByNameRange
	add r0, r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_810D498

	thumb_local_start
sub_810D4BA:
	push {lr}
	sub sp, sp, #0x20
	mov r0, sp
	bl sub_810D498
	cmp r0, #0
	beq loc_810D4E0
	mov r1, #1
	str r1, [r7,#oAIAttackVars_Unk_34]
	mov r3, sp
loc_810D4CE:
	push {r0-r3,r5}
	ldr r5, [r3]
	ldr r0, dword_810D4E4 // =0xffff 
	bl object_setInvulnerableTime
	pop {r0-r3,r5}
	add r3, #4
	sub r0, #1
	bne loc_810D4CE
loc_810D4E0:
	add sp, sp, #0x20
	pop {pc}
dword_810D4E4: .word 0xFFFF
	thumb_func_end sub_810D4BA

	thumb_local_start
sub_810D4E8:
	push {lr}
	sub sp, sp, #0x20
	ldr r0, [r7,#oAIAttackVars_Unk_34]
	cmp r0, #0
	beq loc_810D512
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, sp
	bl sub_810D498
	cmp r0, #0
	beq loc_810D512
	mov r3, sp
loc_810D502:
	push {r0-r3,r5}
	ldr r5, [r3]
	bl sub_800EB08
	pop {r0-r3,r5}
	add r3, #4
	sub r0, #1
	bne loc_810D502
loc_810D512:
	add sp, sp, #0x20
	pop {pc}
	thumb_func_end sub_810D4E8

	thumb_local_start
sub_810D516:
	push {lr}
	sub sp, sp, #0x10
	mov r0, sp
	bl sub_810D498
	cmp r0, #0
	beq loc_810D54A
	mov r3, sp
loc_810D526:
	push {r0-r3,r5}
	ldr r5, [r3]
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl SpawnT4BattleObjectWithId0
	ldrh r0, [r5,#oBattleObject_MaxHP]
	bl object_addHP
	pop {r0-r3,r5}
	add r3, #4
	sub r0, #1
	bne loc_810D526
	mov r0, #0x8a
	bl sound_play // () -> void
loc_810D54A:
	add sp, sp, #0x10
	pop {pc}
	.byte 0, 0
off_810D550: .word 0x184
off_810D554: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810D590+1
	.word sub_80166AE+1
	.word sub_810D5A6+1
	.word sub_8016CE8+1
	.word sub_810D5CE+1
	.word sub_810D5F6+1
	.word sub_810D61E+1
	.word sub_81097BA+1
	.word sub_8109952+1
	.word sub_810D258+1
byte_810D584: .byte 0x18, 0x18, 0x18, 0x12, 0x12, 0x12
byte_810D58A: .byte 0x78, 0x78, 0x78, 0x78, 0x78, 0xF0
	thumb_func_end sub_810D516

	thumb_local_start
sub_810D590:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810D5A0
	bl sub_810D4E8
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
loc_810D5A0:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_810D590

	thumb_local_start
sub_810D5A6:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	cmp r0, #0
	bne loc_810D5B8
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_810D5B8
	bl sub_810D4E8
loc_810D5B8:
	bl sub_8016B02
	ldrb r0, [r5,#9]
	cmp r0, #4
	beq locret_810D5CC
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq locret_810D5CC
	bl sub_810D4BA
locret_810D5CC:
	pop {pc}
	thumb_func_end sub_810D5A6

	thumb_local_start
sub_810D5CE:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	cmp r0, #0
	bne loc_810D5E0
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_810D5E0
	bl sub_810D4E8
loc_810D5E0:
	bl sub_8016B36
	ldrb r0, [r5,#9]
	cmp r0, #6
	beq locret_810D5F4
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq locret_810D5F4
	bl sub_810D4BA
locret_810D5F4:
	pop {pc}
	thumb_func_end sub_810D5CE

	thumb_local_start
sub_810D5F6:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	cmp r0, #0
	bne loc_810D608
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_810D608
	bl sub_810D4E8
loc_810D608:
	bl sub_8016B72
	ldrb r0, [r5,#9]
	cmp r0, #7
	beq locret_810D61C
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq locret_810D61C
	bl sub_810D4BA
locret_810D61C:
	pop {pc}
	thumb_func_end sub_810D5F6

	thumb_local_start
sub_810D61E:
	push {r4,r6,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r6, #0x80
	add r6, r6, r4
	ldrb r0, [r6,#oAIState_Unk_05]
	cmp r0, #3
	blt loc_810D666
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_05]
	bl object_getFlag // () -> int
	ldr r1, dword_810D6E4 // =0xa000 
	tst r0, r1
	bne loc_810D63C
	b loc_810D648
loc_810D63C:
	mov r0, #0x3c 
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	b locret_810D698
loc_810D648:
	ldr r0, off_810D6E8 // =sub_810D69A+1 
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r4,#oAIData_Version_16]
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810D6EC // =byte_810D58A 
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #0x60 
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_38]
	mov r0, #0xb
	bl object_setAttack0
	b locret_810D698
loc_810D666:
	add r0, #1
	strb r0, [r6,#oAIState_Unk_05]
	ldr r0, off_810D6F0 // =sub_810D69A+1 
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810D6F4 // =byte_810D584 
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x15
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_0f]
	mov r0, #0xc
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xe
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xa
	bl object_setAttack0
locret_810D698:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_810D61E

	thumb_local_start
sub_810D69A:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	beq loc_810D6AE
loc_810D6A8:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	b locret_810D6C2
loc_810D6AE:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r4, off_810D6C4 // =byte_810D6C8 
	ldr r3, off_810D6D0 // =byte_810D6D4 
	bl sub_81096FA
	bl sub_8015D80
	tst r0, r0
	beq loc_810D6A8
locret_810D6C2:
	pop {pc}
off_810D6C4: .word byte_810D6C8
byte_810D6C8: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F, 0x0, 0x0, 0x0
off_810D6D0: .word byte_810D6D4
byte_810D6D4: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
dword_810D6E4: .word 0xA000
off_810D6E8: .word sub_810D69A+1
off_810D6EC: .word byte_810D58A
off_810D6F0: .word sub_810D69A+1
off_810D6F4: .word byte_810D584
byte_810D6F8: .byte 0x4, 0xB, 0x2, 0x0, 0xB, 0x0, 0x0, 0x1
byte_810D700: .byte 0x50, 0x10, 0x0, 0x8, 0xA, 0x0, 0x78, 0x10, 0x1, 0x8, 0x14, 0x0
	.byte 0xB4, 0x10, 0x2, 0x8, 0x28, 0x0, 0xE6, 0x10, 0x3, 0x8, 0x3C, 0x0
	.byte 0xB4, 0x10, 0x4, 0x8, 0x3C, 0x0, 0xFA, 0x10, 0x5, 0x8, 0x64, 0x0
byte_810D724: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xA3, 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
	thumb_func_end sub_810D69A

	thumb_local_start
sub_810D7E4:
	push {r6,lr}
	ldr r1, off_810D7F4 // =off_810D7F8 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,pc}
	.balign 4, 0x00
off_810D7F4: .word off_810D7F8
off_810D7F8: .word sub_810D808+1
	.word sub_810D8B2+1
	.word sub_810D8EA+1
	.word sub_81097BA+1
	thumb_func_end sub_810D7E4

	thumb_local_start
sub_810D808:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810D836
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	lsl r0, r0, #0x16
	bl object_setFlag // (int a1) -> void
	mov r0, #0x26 
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	bl object_setCounterTime
	ldr r0, [r7,#oAIAttackVars_Unk_28]
	ldr r0, [r0]
	cmp r0, #0
	beq loc_810D836
	mov r1, #5
	strb r1, [r0,#0x10]
loc_810D836:
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	bne loc_810D892
	push {r7}
	ldrb r4, [r4,#oAIData_Version_16]
	lsl r4, r4, #0x10
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	sub r0, #1
	lsl r0, r0, #8
	orr r4, r0
	mov r0, #1
	lsl r0, r0, #0x18
	orr r4, r0
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	orr r4, r0
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #1
	mov r3, #0
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldr r7, [r7,#oAIAttackVars_Unk_30]
	bl sub_80C5578
	pop {r7}
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r7,#oAIAttackVars_Unk_28]
	ldr r0, [r0]
	cmp r0, #0
	beq loc_810D888
	bl sub_80C4072
	mov r0, #0
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	str r0, [r1]
loc_810D888:
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mov r0, #1
	str r0, [r1]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_810D892:
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	mov r1, #4
	tst r0, r1
	bne locret_810D8B0
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	ldrb r2, [r7,#oAIAttackVars_Unk_0d]
	bl sub_8109660
locret_810D8B0:
	pop {r4,r6,pc}
	thumb_func_end sub_810D808

	thumb_local_start
sub_810D8B2:
	push {lr}
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	ldr r1, [r1]
	cmp r1, #0
	beq loc_810D8D8
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	bne loc_810D8D0
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #0x2c 
	add r0, #0xff
	bl sound_play // () -> void
loc_810D8D0:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810D8E8
loc_810D8D8:
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x16
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810D8E8:
	pop {pc}
	thumb_func_end sub_810D8B2

	thumb_local_start
sub_810D8EA:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	bne locret_810D90C
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mov r0, #1
	str r0, [r1]
	bl sub_810DCCE
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810D90C:
	pop {pc}
	.byte 0, 0
off_810D910: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810D970+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810D998+1
	.word sub_81097BA+1
	.word sub_8109804+1
	.word sub_810D7E4+1
	thumb_func_end sub_810D8EA

	thumb_func_start sub_810D940
sub_810D940:
	push {lr}
	bl sub_810DCCE
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r2, [r0,#oAIData_Version_16]
	ldr r1, off_810D960 // =byte_810D964 
	ldrb r0, [r1,r2]
	str r0, [r5,#oBattleObject_ExtraVars]
	add r2, #6
	ldrb r0, [r1,r2]
	str r0, [r5,#oBattleObject_ExtraVars+4]
	pop {pc}
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_810D960: .word byte_810D964
byte_810D964: .byte 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6
	thumb_func_end sub_810D940

/*For debugging purposes, connect comment at any range!*/
