
	thumb_func_start npc_809E570
npc_809E570:
	push {lr}
	ldr r7, off_809E58C // =jt_809E580 
	ldrb r0, [r5,#oOverworldNPCObject_CurState]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	pop {pc}
	.byte 0, 0
jt_809E580: .word npc_init_809E590+1
	.word npc_standard_809E5E2+1
	.word npc_inChatbox_809EADA+1
off_809E58C: .word jt_809E580
	thumb_func_end npc_809E570

	thumb_local_start
npc_init_809E590:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sub_809F506
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPiecesUpdate]
	strb r0, [r5,#oOverworldNPCObject_MovementDirection]
	strb r0, [r5,#oOverworldNPCObject_Unk_0f]
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	strb r0, [r5,#oOverworldNPCObject_Unk_07]
	strb r0, [r5,#oOverworldNPCObject_PaletteIndex]
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	str r0, [r5,#oOverworldNPCObject_LayerPriorityOverride]
	str r0, [r5,#oOverworldNPCObject_Unk_50]
	str r0, [r5,#oOverworldNPCObject_Unk_54]
	str r0, [r5,#oOverworldNPCObject_Unk_58]
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetX]
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetY]
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetZ]
	mov r0, #0xff
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	strh r0, [r5,#oOverworldNPCObject_NPCSpriteUpdate]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	mov r0, #NPC_CUR_STATE_STANDARD
	strb r0, [r5,#oOverworldNPCObject_CurState]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CollisionRadius]
	mov r0, #8
	strb r0, [r5,#oOverworldNPCObject_ZReach]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl npc_standard_809E5E2
	pop {pc}
	thumb_func_end npc_init_809E590

	thumb_local_start
npc_standard_809E5E2:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_ChatTriggered]
	tst r0, r0
	beq loc_809E5F0
	bl sub_809F5FC
	b loc_809E658
loc_809E5F0:
	bl npc_runPrimaryScript_809ebdc
	ldr r7, off_809E6C0 // =NPCCurActionJumptable 
	ldrb r0, [r5,#oOverworldNPCObject_CurAction]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	mov r0, #0
	ldr r2, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_SPRITE_MIRRORED
	tst r2, r1
	beq loc_809E60A
	mov r0, #1
loc_809E60A:
	bl sprite_setFlip
	ldrh r0, [r5,#oOverworldNPCObject_NPCSprite]
	ldrh r1, [r5,#oOverworldNPCObject_NPCSpriteUpdate]
	cmp r0, r1
	beq loc_809E648
	mov r2, r0
	mov r0, #0x80
	ldr r1, [r5,#oOverworldNPCObject_NPCSpriteCategory]
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	// OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80 clear: sprite's shadow is attached to the sprite
	// OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80 set, OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100 clear: sprite's shadow won't move with Z
	// OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80 set, OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100 set: sprite has no shadow
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80
	tst r0, r1
	bne loc_809E632
	bl sprite_noShadow // () -> void
	b loc_809E644
loc_809E632:
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, off_809E6C4 // =OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100
	tst r0, r1
	beq loc_809E640
	bl sprite_hasShadow
	b loc_809E644
loc_809E640:
	bl sprite_removeShadow
loc_809E644:
	mov r0, #0xff
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
loc_809E648:
	ldrb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	ldrb r1, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	cmp r0, r1
	beq loc_809E658
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809E658:
	bl sprite_update
	ldrb r0, [r5,#oOverworldNPCObject_PaletteIndex]
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	ldr r1, [r5,#oOverworldNPCObject_HiddenOAMPiecesUpdate]
	cmp r0, r1
	beq loc_809E66E
	bl sprite_setUnk0x2c
loc_809E66E: .align 1, 0
	ldrb r0, [r5,#oOverworldNPCObject_MovementDirection]
	strb r0, [r5,#oOverworldNPCObject_Unk_0f]
	ldrb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	ldrh r0, [r5,#oOverworldNPCObject_NPCSprite]
	strh r0, [r5,#oOverworldNPCObject_NPCSpriteUpdate]
	ldr r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPiecesUpdate]
	bl sub_809F526
	ldr r0, [r5,#oOverworldNPCObject_LayerPriorityOverride]
	tst r0, r0
	bne loc_809E690
	mov r0, r5
	add r0, #oOverworldNPCObject_Coords
	bl applyLayerEffectToOWObject_8035694
loc_809E690:
	bl sub_8002E14
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_0x40
	tst r0, r1
	beq locret_809E6A0
	bl sub_809F922
locret_809E6A0:
	pop {pc}
	.balign 4, 0x00
NPCCurActionJumptable: .word npc_waitTimer_809e6c8+1
	.word npc_doNonCutsceneMovement_809E6DC+1
	.word npc_doHopMovement_809e8cc+1
	.word npc_waitAnimFrame_809ea3c+1
	.word npc_runNativeCallback_809ea74+1
	.word npc_waitCutsceneVar_809ea82+1
	.word npc_waitMysteryDataTaken_809eaa0+1
off_809E6C0: .word NPCCurActionJumptable
off_809E6C4: .word OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100
	thumb_func_end npc_standard_809E5E2

	thumb_local_start
npc_waitTimer_809e6c8:
	push {lr}
	ldrh r0, [r5,#oOverworldNPCObject_Timer]
	sub r0, #1
	strh r0, [r5,#oOverworldNPCObject_Timer]
	bne .timerNotZero
	bl npc_enableScript0x19_809f516
.timerNotZero
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {pc}
	thumb_func_end npc_waitTimer_809e6c8

	thumb_local_start
npc_doNonCutsceneMovement_809E6DC:
	push {lr}
	ldr r7, off_809E700 // =jt_809E6F0 
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {pc}
	.byte 0, 0
jt_809E6F0: .word npc_nonCutsceneMovementInit_809E704+1
	.word npc_nonCutsceneMovementUpdate_809E7D8+1
	.word npc_doVerticalMovement_809e84e+1
	.word npc_809E878+1
off_809E700: .word jt_809E6F0
	thumb_func_end npc_doNonCutsceneMovement_809E6DC

	thumb_local_start
// movement seems to be done in values of 8?
// speed to timer calculation:
// timer = ((0x80000 / speed) + 0xfff) / 0x1000
npc_nonCutsceneMovementInit_809E704:
	push {lr}

	// load delta table
	ldr r7, off_809E7C4 // =NPCMovementIterationDeltas

	// get direction
	ldrb r0, [r5,#oOverworldNPCObject_MovementDirection]

	// r7 = &NPCMovementIterationDeltas[direction]
	lsl r0, r0, #2
	add r7, r7, r0

	// read x coordinate
	ldr r0, [r5,#oOverworldNPCObject_X]

	// get x movement delta
	mov r3, #0
	ldrsh r1, [r7,r3]

	// convert from whole value to 16.16 fixed point
	lsl r1, r1, #0x10

	// add to x coordinate
	add r0, r0, r1

	// store in the new x coordinate for this iteration
	str r0, [r5,#oOverworldNPCObject_Unk_70]

	// do the same for y coordinate
	ldr r0, [r5,#oOverworldNPCObject_Y]
	mov r3, #2
	ldrsh r1, [r7,r3]
	lsl r1, r1, #0x10
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_Unk_74]

	// calculate the amount of frames this iteration should take
	// timer = ((0x80000 / speed) + 0xfff) / 0x1000
	ldr r0, dword_809E7C8 // =0x80000
	ldrb r1, [r5,#oOverworldNPCObject_MovementSpeed]
	push {r5}
	bl SWI_Div
	pop {r5}

	// + 0xfff
	ldr r1, dword_809E7D4 // =0xfff 
	add r0, r0, r1

	// / 0x1000
	lsr r0, r0, #0xc

	// store
	strh r0, [r5,#oOverworldNPCObject_Timer]

	// load sub delta table
	ldr r7, off_809E7C0 // =NPCMovementSubiterationDeltas

	// get direction
	ldrb r0, [r5,#oOverworldNPCObject_MovementDirection]

	// r7 = &NPCMovementSubiterationDeltas[direction]
	add r0, r0, r0
	add r7, r7, r0

	// get movement speed
	ldrb r4, [r5,#oOverworldNPCObject_MovementSpeed]
	
	// get x movement sub delta
	mov r3, #0
	ldrsb r1, [r7,r3]

	// multiply subdelta with speed to get adjusted delta
	mul r1, r4

	// scale and store
	lsl r1, r1, #0xc // r1 * 0x1000
	str r1, [r5,#oOverworldNPCObject_DeltaX]

	// do the same for delta y
	mov r3, #1
	ldrsb r1, [r7,r3]
	mul r1, r4
	lsl r1, r1, #0xc
	str r1, [r5,#oOverworldNPCObject_DeltaY]

	// no delta for z coordinate
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_DeltaZ]

	// store next jumptable function
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]

	// nextX = x + deltaX
	ldr r1, [r5,#oOverworldNPCObject_DeltaX]
	ldr r0, [r5,#oOverworldNPCObject_X]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextX]

	// nextY = y + deltaY
	ldr r1, [r5,#oOverworldNPCObject_DeltaY]
	ldr r0, [r5,#oOverworldNPCObject_Y]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextY]

	// nextZ = z + deltaZ
	ldr r1, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r0, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextZ]
	bl sub_809F5B0
	pop {pc}
NPCMovementIterationDeltas:
	.hword  0,  0
	.hword  8,  0
	.hword  0,  0
	.hword  0,  8
	.hword  0,  0
	.hword -8,  0
	.hword  0,  0
	.hword  0, -8
NPCMovementSubiterationDeltas:
	.byte  0,  0
	.byte  1,  0
	.byte  0,  0
	.byte  0,  1
	.byte  0,  0
	.byte -1,  0
	.byte  0,  0
	.byte  0, -1
byte_809E7AE: .byte 0x0, 0x9, 0x0, 0xB, 0x0, 0xD, 0x0, 0xF
byte_809E7B6: .byte 0x0, 0x1, 0x0, 0x3, 0x0, 0x5, 0x0, 0x7, 0x0, 0x0
off_809E7C0: .word NPCMovementSubiterationDeltas
off_809E7C4: .word NPCMovementIterationDeltas
dword_809E7C8: .word 0x80000
	.word byte_809E7AE
	.word byte_809E7B6
dword_809E7D4: .word 0xFFF
	thumb_func_end npc_nonCutsceneMovementInit_809E704

	thumb_local_start
npc_nonCutsceneMovementUpdate_809E7D8:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION_0x10
	tst r0, r1
	bne loc_809E7EA
	bl sub_809F638
	tst r0, r0
	bne loc_809E848
loc_809E7EA:
	ldr r0, [r5,#oOverworldNPCObject_NextX]
	str r0, [r5,#oOverworldNPCObject_X]
	ldr r0, [r5,#oOverworldNPCObject_NextY]
	str r0, [r5,#oOverworldNPCObject_Y]
	ldr r0, [r5,#oOverworldNPCObject_NextZ]
	str r0, [r5,#oOverworldNPCObject_Z]
	ldrh r0, [r5,#oOverworldNPCObject_Timer]
	sub r0, #1
	strh r0, [r5,#oOverworldNPCObject_Timer]
	bne loc_809E81A
	ldr r0, [r5,#oOverworldNPCObject_Unk_70]
	str r0, [r5,#oOverworldNPCObject_X]
	ldr r0, [r5,#oOverworldNPCObject_Unk_74]
	str r0, [r5,#oOverworldNPCObject_Y]
	ldrb r0, [r5,#oOverworldNPCObject_MovementDistance]
	sub r0, #1
	strb r0, [r5,#oOverworldNPCObject_MovementDistance]
	bne loc_809E814
	bl npc_enableScript0x19_809f516
	pop {pc}
loc_809E814:
	bl npc_nonCutsceneMovementInit_809E704
	pop {pc}
loc_809E81A:
	ldr r1, [r5,#oOverworldNPCObject_DeltaX]
	ldr r0, [r5,#oOverworldNPCObject_NextX]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextX]
	ldr r1, [r5,#oOverworldNPCObject_DeltaY]
	ldr r0, [r5,#oOverworldNPCObject_NextY]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextY]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_0x20
	lsl r1, r1, #4
	tst r0, r1
	bne loc_809E842
	mov r0, #oOverworldNPCObject_Coords
	add r0, r0, r5
	bl sub_8031612
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Z]
	str r0, [r5,#oOverworldNPCObject_NextZ]
loc_809E842:
	bl sub_809F5B0
	pop {pc}
loc_809E848:
	bl sub_809F5B0
	pop {pc}
	thumb_func_end npc_nonCutsceneMovementUpdate_809E7D8

	thumb_local_start
npc_doVerticalMovement_809e84e:
	push {lr}

	ldrb r0, [r5,#oOverworldNPCObject_MovementSpeed]
	ldrb r1, [r5,#oOverworldNPCObject_MovementDistance]
	ldrb r2, [r5,#oOverworldNPCObject_Undetected_06]

	tst r0, r0
	beq .doneMovement
	sub r0, #1
	strb r0, [r5,#oOverworldNPCObject_MovementSpeed]

	tst r1, r1
	bne .decreaseZCoord
	// increase z coord
	ldrh r1, [r5,#oOverworldNPCObject_Z16]
	add r1, r1, r2
	strh r1, [r5,#oOverworldNPCObject_Z16]
	b .doneIteration
.decreaseZCoord
	ldrh r1, [r5,#oOverworldNPCObject_Z16]
	sub r1, r1, r2
	strh r1, [r5,#oOverworldNPCObject_Z16]

.doneIteration
	pop {pc}

.doneMovement
	bl npc_enableScript0x19_809f516
	pop {pc}
	thumb_func_end npc_doVerticalMovement_809e84e

	thumb_local_start
// ?? byte1 byte2 byte3 byte4
// initialize simple diagonal movement
// npc moves for a given number of frames in the given horizontal direction for a given horizontal velocity and the given vertical direction for a fixed vertical velocity of 1
// byte1 - number of frames to wait
// byte2 - vertical direction (0 = upwards, 1 = downwards)
// byte3 - horizontal direction of movement
// 00 - up right
// 01 - up left
// 02 - down left
// 03 - down right
// byte4 - velocity of horizontal movement
npc_809E878:
	push {lr}

	ldrb r0, [r5,#oOverworldNPCObject_MovementSpeed]
	tst r0, r0
	beq loc_809E8BA
	sub r0, #1
	strb r0, [r5,#oOverworldNPCObject_MovementSpeed]

	ldr r0, =byte_809E8C4
	ldrb r1, [r5,#oOverworldNPCObject_Undetected_06]
	lsl r1, r1, #1
	ldrb r2, [r0,r1]
	add r1, #1
	ldrb r1, [r0,r1]

	ldrb r0, [r5,#oOverworldNPCObject_Unk_07]
	tst r1, r1
	bne loc_809E89E

	ldrh r1, [r5,r2]
	add r1, r1, r0
	strh r1, [r5,r2]
	b loc_809E8A4
loc_809E89E:
	ldrh r1, [r5,r2]
	sub r1, r1, r0
	strh r1, [r5,r2]
loc_809E8A4:
	ldrb r1, [r5,#oOverworldNPCObject_MovementDistance]
	tst r1, r1
	bne loc_809E8B2
	ldrh r1, [r5,#oOverworldNPCObject_Z16]
	add r1, #1
	strh r1, [r5,#oOverworldNPCObject_Z16]
	b locret_809E8B8
loc_809E8B2:
	ldrh r1, [r5,#oOverworldNPCObject_Z16]
	sub r1, #1
	strh r1, [r5,#oOverworldNPCObject_Z16]
locret_809E8B8:
	pop {pc}
loc_809E8BA:
	bl npc_enableScript0x19_809f516
	pop {pc}
	.balign 4, 0
	.pool // 809E8C0
byte_809E8C4
	.byte oOverworldNPCObject_X16, 0
	.byte oOverworldNPCObject_Y16, 0
	.byte oOverworldNPCObject_X16, 1
	.byte oOverworldNPCObject_Y16, 1
	thumb_func_end npc_809E878

	thumb_local_start
npc_doHopMovement_809e8cc:
	push {lr}
	ldr r7, off_809E8F8 // =jt_809E8E0 
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {pc}
	.byte 0, 0
jt_809E8E0: .word npc_initHopMovement_809e8fc+1
	.word npc_updateHopMovement_809e916+1
	.word npc_initLeapMovement_809e944+1
	.word npc_updateLeapMovement_809e95e+1
	.word npc_809E9C0+1
	.word npc_809E9DA+1
off_809E8F8: .word jt_809E8E0
	thumb_func_end npc_doHopMovement_809e8cc

	thumb_local_start
npc_initHopMovement_809e8fc:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_MovementSpeed]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]
	mov r3, #5
	ldrsb r0, [r5,r3]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_HopDelta]
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	pop {pc}
	thumb_func_end npc_initHopMovement_809e8fc

	thumb_local_start
npc_updateHopMovement_809e916:
	push {lr}
	mov r0, #oOverworldNPCObject_Coords
	add r0, r0, r5
	bl sub_8031612 // get Z coordinate of current position
	mov r2, r0
	lsl r2, r2, #0x10

	// hopDeltaCompounded += hopDelta
	ldr r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]
	ldr r1, [r5,#oOverworldNPCObject_HopDelta]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]

	// z += hopDeltaCompounded
	ldr r1, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1

	// is z negative?
	cmp r0, r2
	bpl .hopNotFinished

	// if so, set the z coordinate to the default
	str r2, [r5,#oOverworldNPCObject_Z]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	bl npc_enableScript0x19_809f516
	pop {pc}
.hopNotFinished
	// if not, store the z value for the current iteration of the hop movement
	str r0, [r5,#oOverworldNPCObject_Z]
	pop {pc}
	thumb_func_end npc_updateHopMovement_809e916

	thumb_local_start
npc_initLeapMovement_809e944:
	push {lr}

	ldrb r0, [r5,#oOverworldNPCObject_MovementSpeed]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]

	mov r3, #oOverworldNPCObject_MovementDistance
	ldrsb r0, [r5,r3]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_HopDelta]

	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]

	mov r0, #0xc
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]

	pop {pc}
	thumb_func_end npc_initLeapMovement_809e944

	thumb_local_start
npc_updateLeapMovement_809e95e:
	push {lr}

	mov r0, #oOverworldNPCObject_Coords
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	push {r2}

	mov r3, #oOverworldNPCObject_Undetected_06
	ldrb r3, [r5,r3]
	lsl r3, r3, #1
	ldr r2, =NPCLeapDirectionTable
	ldrb r0, [r2,r3]
	add r3, #1
	ldrb r1, [r2,r3]

	mov r3, #oOverworldNPCObject_Unk_07
	ldrb r2, [r5,r3]
	tst r1, r1
	beq .increaseCoord

	ldrh r1, [r5,r0]
	sub r1, r1, r2
	strh r1, [r5,r0]
	b .calcHopDeltas

.increaseCoord
	ldrh r1, [r5,r0]
	add r1, r1, r2
	strh r1, [r5,r0]

.calcHopDeltas
	pop {r2}

	// hopDeltaCompounded += hopDelta
	ldr r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]
	ldr r1, [r5,#oOverworldNPCObject_HopDelta]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]

	// z += hopDeltaCompounded
	ldr r1, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1

	// is z negative?
	cmp r0, r2
	bpl .hopNotFinished

	// if so, set the z coordinate to the default
	str r2, [r5,#oOverworldNPCObject_Z]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	bl npc_enableScript0x19_809f516
	pop {pc}

.hopNotFinished
	// if not, store the z value for the current iteration of the hop movement
	str r0, [r5,#oOverworldNPCObject_Z]
	pop {pc}
	.balign 4, 0
	.pool // 809E9B4
NPCLeapDirectionTable:
	.byte oOverworldNPCObject_X16, 0
	.byte oOverworldNPCObject_Y16, 0
	.byte oOverworldNPCObject_X16, 1
	.byte oOverworldNPCObject_Y16, 1
	thumb_func_end npc_updateLeapMovement_809e95e

	thumb_local_start
npc_809E9C0:
	push {lr}

	ldrb r0, [r5,#oOverworldNPCObject_MovementSpeed]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaZ]

	mov r3, #oOverworldNPCObject_MovementDistance
	ldrsb r0, [r5,r3]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaY]

	mov r0, #TRUE
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]

	mov r0, #0x14
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]

	pop {pc}
	thumb_func_end npc_809E9C0

	thumb_local_start
npc_809E9DA:
	push {lr}

	mov r0, #oOverworldNPCObject_Coords
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	push {r2}

	mov r3, #oOverworldNPCObject_Undetected_06
	ldrb r3, [r5,r3]
	lsl r3, r3, #1
	ldr r2, =byte_809EA34 
	ldrb r0, [r2,r3]
	add r3, #1
	ldrb r1, [r2,r3]

	mov r3, #oOverworldNPCObject_Unk_07
	ldrb r2, [r5,r3]
	tst r1, r1
	beq .increaseCoord

	ldrh r1, [r5,r0]
	sub r1, r1, r2
	strh r1, [r5,r0]
	b .calcHopDeltas

.increaseCoord
	ldrh r1, [r5,r0]
	add r1, r1, r2
	strh r1, [r5,r0]

.calcHopDeltas
	pop {r2}
	ldr r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]
	ldr r1, [r5,#oOverworldNPCObject_HopDelta]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_HopDeltaCompounded]
	cmp r0, #0
	bgt loc_809EA26
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	bl npc_enableScript0x19_809f516
	pop {pc}
loc_809EA26:
	ldr r1, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_Z]
	pop {pc}
	.balign 4, 0
	.pool // 809EA30
byte_809EA34:
	.byte oOverworldNPCObject_X16, 0
	.byte oOverworldNPCObject_Y16, 0
	.byte oOverworldNPCObject_X16, 1
	.byte oOverworldNPCObject_Y16, 1
	thumb_func_end npc_809E9DA

	thumb_local_start
npc_waitAnimFrame_809ea3c:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	tst r0, r0
	bne .initialized
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	b .done
.initialized
	mov r7, #oOverworldNPCObject_Unk_80
	ldr r7, [r5,r7]
	mov r1, #0xc0
	tst r7, r1
	beq .checkFrameNumber
	bl sprite_getFrameParameters
	// check frame bits?
	tst r0, r7
	beq .done
	bl npc_enableScript0x19_809f516
	b .done
.checkFrameNumber
	bl sprite_getFrameParameters
	cmp r0, r7
	bne .done
	bl npc_enableScript0x19_809f516
.done
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {pc}
	thumb_func_end npc_waitAnimFrame_809ea3c

	thumb_local_start
npc_runNativeCallback_809ea74:
	push {lr}
	ldr r7, [r5,#oOverworldNPCObject_Undetected_7c]
	mov lr, pc
	bx r7
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {pc}
	thumb_func_end npc_runNativeCallback_809ea74

	thumb_local_start
// wait for the value of a cutscene var to equal the given value
// set in a npc command earlier
npc_waitCutsceneVar_809ea82:
	push {r4,r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	mov r7, #oOverworldNPCObject_CutsceneVarIndexToWaitFor
	ldr r0, [r5,r7]
	mov r7, #oOverworldNPCObject_CutsceneVarValueToWaitFor
	ldr r1, [r5,r7]
	ldrb r0, [r4,r0]
	cmp r0, r1
	bne .varNotEqual
	bl npc_enableScript0x19_809f516
.varNotEqual
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {r4,r7,pc}
	thumb_func_end npc_waitCutsceneVar_809ea82

	thumb_local_start
npc_waitMysteryDataTaken_809eaa0:
	push {r4,r7,lr}

	mov r7, #oOverworldNPCObject_MysteryDataId
	ldr r0, [r5,r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq .mysteryDataStillExists

	bl npc_enableScript0x19_809f516

	mov r0, #OW_NPC_UNK_FLAGS_60_DISABLE_INTERACTION
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]

	mov r0, #OBJECT_FLAG_ACTIVE
	strb r0, [r5,#oObjectHeader_Flags]

	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_disableScript0x19_809f51e

.mysteryDataStillExists
	bl npc_runSecondaryScriptMaybe_809ebf8
	pop {r4,r7,pc}
	thumb_func_end npc_waitMysteryDataTaken_809eaa0

	thumb_local_start
npc_inChatbox_809EADA:
	push {lr}
	ldr r7, off_809EB00 // =off_809EAFC 
	ldrb r0, [r5,#oOverworldNPCObject_CurAction]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl sprite_update
	bl sub_809F526
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_0x40 
	tst r0, r1
	beq locret_809EAFA
	bl sub_809F922
locret_809EAFA:
	pop {pc}
off_809EAFC: .word npc_inChatbox_curAction_809EB04+1
off_809EB00: .word off_809EAFC
	thumb_func_end npc_inChatbox_809EADA

	thumb_local_start
npc_inChatbox_curAction_809EB04:
	push {lr}
	ldr r7, off_809EB1C // =off_809EB14
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	pop {pc}
	.balign 4, 0x00
off_809EB14: .word npc_inChatbox_curAction_init_809EB20+1
	.word npc_inChatbox_curAction_waitClose_809EBBC+1
off_809EB1C: .word off_809EB14
	thumb_func_end npc_inChatbox_curAction_809EB04

	thumb_local_start
npc_inChatbox_curAction_init_809EB20:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED
	tst r0, r1
	bne .doNotFacePlayer
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r7,#oOWPlayerObject_Y]
	ldr r2, [r5,#oOverworldNPCObject_Y]
	sub r0, r0, r2
	ldr r1, [r7,#oOWPlayerObject_X]
	ldr r2, [r5,#oOverworldNPCObject_X]
	sub r1, r1, r2
	bl calcAngle_800117C
	add r0, #0x20 
	mov r1, #0xc0
	and r0, r1
	lsr r0, r0, #6
	lsl r0, r0, #1
	add r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
.doNotFacePlayer
	ldr r2, [r5,#oOverworldNPCObject_UnkFlags_60]
	// OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400 clear: run text script at 202da04
	// OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400 set, OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800 clear: run text script with text script ptr from npc memory
	// OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400 set, OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800 set: run mystery data text script
	ldr r1, off_809EBB4 // =OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400
	tst r2, r1
	beq .runMapLoadedTextScript
	ldr r1, dword_809EBB8 // =OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800
	tst r2, r1
	// bug: this label is likely misplaced, as the location of the label
	// uses r3, but the last place r3 is set is sprite_loadAnimationData
	// which does not return r3
	beq .notMysteryDataTextScript
	mov r7, r10
	ldr r7, [r7,#oToolkit_ChatboxPtr]
	mov r1, #oOverworldNPCObject_Chatbox_90
	ldr r0, [r5,r1]
	str r0, [r7,#oChatbox_Unk_4C]
	bl sub_809FC96
	str r0, [r7,#0x54]
	str r1, [r7,#0x58]
	strb r2, [r5,#oOverworldNPCObject_TextScriptIndex]
.notMysteryDataTextScript
	// check if we're picking up an HP memory
	// also checks ToolPrgm, but that doesn't make sense for this to be checked
	cmp r3, #8
	bne .notLinkNaviPickingUpHPMemry
	cmp r0, #0x70 
	bne .notLinkNaviPickingUpHPMemry

	// check if we aren't controlling megaman
	push {r0,r1,r3-r7}
	bl GetCurPETNavi // () -> u8
	mov r2, r0
	pop {r0,r1,r3-r7}
	cmp r2, #0
	beq .notLinkNaviPickingUpHPMemry

	// run the "navi has no use for this item..." script
	mov r2, #oOverworldNPCObject_TextScriptPtr // NPC.scriptArray
	ldr r0, [r5,r2]
	mov r1, #0x78 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b .done
.notLinkNaviPickingUpHPMemry
	mov r2, #oOverworldNPCObject_TextScriptPtr
	ldr r0, [r5,r2]
	ldrb r1, [r5,#oOverworldNPCObject_TextScriptIndex]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b .done
.runMapLoadedTextScript
	ldrb r0, [r5,#oOverworldNPCObject_TextScriptIndex]
	bl chatbox_runScript_202da04 // (u8 scriptID) -> void
.done
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	bl npc_inChatbox_curAction_waitClose_809EBBC
	pop {pc}
off_809EBB4: .word OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400
dword_809EBB8: .word OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800
	thumb_func_end npc_inChatbox_curAction_init_809EB20

	thumb_local_start
npc_inChatbox_curAction_waitClose_809EBBC:
	push {lr}
	movflag EVENT_EVENT_CUR_DIR_LOCKED
	bl TestEventFlagFromImmediate
	bne locret_809EBDA
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_Unk_10]
	tst r0, r0
	bne locret_809EBDA
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_Unk_07]
	bl sub_809F612
locret_809EBDA:
	pop {pc}
	thumb_func_end npc_inChatbox_curAction_waitClose_809EBBC

	thumb_local_start
npc_runPrimaryScript_809ebdc:
	push {lr}
.runScriptCommandLoop
	ldrb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	tst r0, r0
	bne .done
	ldr r6, [r5,#oOverworldNPCObject_AnimationScriptPtr]
	ldrb r0, [r6]
	lsl r0, r0, #2
	ldr r7, off_809EC2C // =npc_jt_commands 
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	str r6, [r5,#oOverworldNPCObject_AnimationScriptPtr]
	b .runScriptCommandLoop
.done
	pop {pc}
	thumb_func_end npc_runPrimaryScript_809ebdc

	thumb_local_start
npc_runSecondaryScriptMaybe_809ebf8:
	push {lr}
.runScriptCommandLoop
	ldrb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]
	tst r0, r0
	bne .checkTimer
	ldr r6, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	tst r6, r6
	beq .noSecondaryScript
	ldrb r0, [r6]
	lsl r0, r0, #2
	ldr r7, off_809EC2C // =npc_jt_commands 
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	str r6, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	b .runScriptCommandLoop
.checkTimer
	bl npc_decrementSecondaryTimer_809ec1c
.noSecondaryScript
	pop {pc}
	thumb_func_end npc_runSecondaryScriptMaybe_809ebf8

	thumb_local_start
npc_decrementSecondaryTimer_809ec1c:
	push {lr}
	ldrh r0, [r5,#oOverworldNPCObject_Timer_22]
	sub r0, #1
	strh r0, [r5,#oOverworldNPCObject_Timer_22]
	bne .timerNotZero
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]
.timerNotZero
	pop {pc}
off_809EC2C: .word npc_jt_commands
npc_jt_commands: .word NPCCommand_end+1
	.word NULL
	.word NPCCommand_jump+1
	.word NPCCommand_free_and_end+1
	.word NPCCommand_jump_if_flag_set+1
	.word NPCCommand_jump_if_flag_clear+1
	.word NPCCommand_set_event_flag+1
	.word NPCCommand_clear_event_flag+1
	.word NPCCommand_set_active_and_visible+1
	.word NPCCommand_set_active_and_invisible+1
	.word NPCCommand_set_collision_radius+1
	.word NPCCommand_set_z_reach+1
	.word NPCCommand_shift_center+1
	.word NPCCommand_enable_npc_interaction+1
	.word NPCCommand_disable_npc_interaction+1
	.word NPCCommand_set_npc_palette_index+1
	.word NPCCommand_pause+1
	.word NPCCommand_hop+1
	.word NPCCommand_face_player_when_interacted+1
	.word NPCCommand_do_not_face_player_when_interacted+1
	.word NPCCommand_set_coords+1
	.word NPCCommand_move_in_direction+1
	.word NPCCommand_set_animation+1
	.word NPCCommand_set_sprite+1
	.word NPCCommand_set_text_script_index+1
	.word NPCCommand_disable_layer_priority_override+1
	.word NPCCommand_set_layer_priority_override_to_2+1
	.word NPCCommand_set_layer_priority_override_to_3+1
	.word NPCCommand_write_hidden_oam_pieces+1
	.word NPCCommand_set_individual_hidden_oam_piece+1
	.word NPCCommand_clear_individual_hidden_oam_piece+1
	.word NPCCommand_disable_collision+1
	.word NPCCommand_enable_collision+1
	.word NPCCommand_give_attached_shadow+1
	.word NPCCommand_give_detatched_shadow+1
	.word NPCCommand_remove_shadow+1
	.word NPCCommand_set_sprite_to_cur_pet_navi+1
	.word NPCCommand_set_sprite_with_category+1
	.word NPCCommand_toggle_sprite_mirror+1
	.word NPCCommand_disable_collision_alternate+1
	.word NPCCommand_play_sound+1
	.word NPCCommand_init_mystery_data+1
	.word NPCCommand_wait_anim_frame+1
	.word NPCCommand_set_color_shader+1
	.word NULL
	.word NPCCommand_set_mosaic+1
	.word NPCCommand_set_animation_force_update+1
	.word NPCCommand_set_transform+1
	.word NPCCommand_remove_transform+1
	.word NPCCommand_set_alpha+1
	.word NPCCommand_run_secondary_script+1
	.word NPCCommand_pause_secondary_script+1
	.word NPCCommand_end_secondary_script+1
	.word NPCCommand_init_native_call+1
	.word NPCCommand_jump_with_link+1
	.word NPCCommand_init_native_call_with_args+1
	.word NPCCommand_init_movement+1
	.word NPCCommand_change_movement_direction+1
	.word NPCCommand_return_to_link+1
	.word NPCCommand_jump_if_progress_in_range+1
	.word NPCCommand_write_cutscene_var+1
	.word NPCCommand_jump_if_cutscene_var_equals+1
	.word NPCCommand_jump_if_cutscene_var_not_equal+1
	.word NPCCommand_wait_cutscene_var+1
	.word NPCCommand_set_unk_flags_60_flag_0x200+1
	.word NPCCommand_clear_unk_flags_60_flag_0x200+1
	.word NULL
	.word NULL
	.word NPCCommand_set_text_script_index_and_ptr+1
	.word NPCCommand_wait_mystery_data_taken+1
	.word NPCCommand_set_obj_window_mode+1
	.word NPCCommand_play_music+1
	.word NPCCommand_set_sprite_0x3_bit5+1
	.word NPCCommand_remove_shadow_ignore_flags+1
	.word NPCCommand_do_camera_shake+1
	.word NPCCommand_jump_if_anim_not_equal+1
	.word NPCCommand_set_text_script_index_and_ptr_to_decomp_buffer+1
	.word NPCCommand_jump_alt+1
	.word NPCCommand_leap+1
	.word NPCCommand_init_vertical_movement+1
	.word NPCCommand_init_diagonal_leap+1
	.word NPCCommand_init_groundman_minigame_prog+1
	.word NPCCommand_jack_out+1
	.word NPCCommand_jump_if_screen_fade_active+1
	thumb_func_end npc_decrementSecondaryTimer_809ec1c

	thumb_local_start
// 0x00
// end npc script
NPCCommand_end:
	push {lr}
	bl npc_disableScript0x19_809f51e
	pop {pc}
	thumb_func_end NPCCommand_end

	thumb_local_start
// 0x02 destination1
// jump to another script
// destination1 - script to jump to
NPCCommand_jump:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end NPCCommand_jump

	thumb_local_start
// 0x03
// free current npc
NPCCommand_free_and_end:
	push {lr}
	mov r0, #OBJECT_FLAG_ACTIVE
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_disableScript0x19_809f51e
	pop {pc}
	thumb_func_end NPCCommand_free_and_end

	thumb_local_start
// 0x04 hword1 destination3
// jump if the given event flag is set
// hword1 - event flag to test
// destination3 - script to jump to
NPCCommand_jump_if_flag_set:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq .flagNotSet
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
.flagNotSet
	add r6, #7
	pop {pc}
	thumb_func_end NPCCommand_jump_if_flag_set

	thumb_local_start
// 0x05 hword1 destination3
// jump if the given event flag is clear
// hword1 - event flag to test
// destination3 - script to jump to
NPCCommand_jump_if_flag_clear:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne .flagNotClear
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
.flagNotClear
	add r6, #7
	pop {pc}
	thumb_func_end NPCCommand_jump_if_flag_clear

	thumb_local_start
// 0x06 hword1
// set event flag
// hword1 - event flag to set
NPCCommand_set_event_flag:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl SetEventFlag
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_set_event_flag

	thumb_local_start
// 0x07 hword1
// clear event flag
// hword1 - event flag to clear
NPCCommand_clear_event_flag:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_clear_event_flag

	thumb_local_start
// 0x08
// set the npc to be active and visible
NPCCommand_set_active_and_visible:
	mov r0, #(OBJECT_FLAG_ACTIVE | OBJECT_FLAG_VISIBLE)
	strb r0, [r5,#oObjectHeader_Flags]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_set_active_and_visible

	thumb_local_start
// 0x09
// set the npc to be active and invisible
NPCCommand_set_active_and_invisible:
	mov r0, #OBJECT_FLAG_ACTIVE
	strb r0, [r5,#oObjectHeader_Flags]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_set_active_and_invisible

	thumb_local_start
// 0x0a byte1
// set npc collision radius
// byte1 - new value of collision radius
NPCCommand_set_collision_radius:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_CollisionRadius]
	add r6, #2
	mov pc, lr
	thumb_func_end NPCCommand_set_collision_radius

	thumb_local_start
// 0x0b byte1
// set the z reach value for the current npc
// z reach being the maximum difference of z coordinates
// between two objects for them to interact
// e.g. talking to an NPC on a slope
// byte1 - new z reach value
NPCCommand_set_z_reach:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_ZReach]
	add r6, #2
	mov pc, lr
	thumb_func_end NPCCommand_set_z_reach

	thumb_local_start
// 0x0c signedbyte1 signedbyte2 signedbyte3
// shift the center of the npc given the three args
// not exactly sure what this is for
// npc collision is shifted, as well as the interaction area
// but the npc sprite is not shifted
// and the interaction area without the center shift still exists
// and interacting to the npc via the original interaction area
// will cause the sprite to move
// signedbyte1 - x offset for npc center
// signedbyte2 - y offset for npc center
// signedbyte3 - z offset for npc center
NPCCommand_shift_center:
	mov r1, #1
	ldrsb r0, [r6,r1]
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetX]
	mov r1, #2
	ldrsb r0, [r6,r1]
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetY]
	mov r1, #3
	ldrsb r0, [r6,r1]
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetZ]
	add r6, #4
	mov pc, lr
	thumb_func_end NPCCommand_shift_center

	thumb_local_start
// 0x0d
// enable NPC interaction (talking to the NPC)
NPCCommand_enable_npc_interaction:
	mov r0, #OW_NPC_UNK_FLAGS_60_DISABLE_INTERACTION
	mvn r0, r0
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	and r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_enable_npc_interaction

	thumb_local_start
// 0x0e
// disable NPC interaction (talking to the NPC)
NPCCommand_disable_npc_interaction:
	mov r0, #OW_NPC_UNK_FLAGS_60_DISABLE_INTERACTION
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_disable_npc_interaction

	thumb_local_start
// 0x0f byte1
// set npc palette index
// byte1 - value to set npc's palette index to
NPCCommand_set_npc_palette_index:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_PaletteIndex]
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_set_npc_palette_index

	thumb_local_start
// 0x10 byte1
// wait a given number of frames for this npc's script
// byte1 - number of frames to wait
NPCCommand_pause:
	push {lr}
	mov r0, #MOVEMENT_FLAG_STOP
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_Timer]
	bl npc_disableScript0x19_809f51e
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_pause

	thumb_local_start
// 0x11 byte1 byte2
// npc performs a hop
// given that the npc starts at z=0
// the z values of the hop are given (in decimal)
// by the quadratic z = ((byte2/2)x^2 + (byte2/2 + byte1)x)/16
// starting at x=1, until z becomes negative, at which z is
// set to the default value (depending on position)
// e.g. if byte1 = 96 and byte2 = -36, the equation would be:
// z = (-18x^2 + 78x)/16

// alternatively, the z values can be mapped as follows (in 16.16 fixed point):
// byte1 *= 4096
// byte2 *= 4096
// start loop
// byte1 += byte2
// z += byte1
// end loop when z becomes negative

// byte1 - hop param base
// byte2 - hop param delta
NPCCommand_hop:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_MovementSpeed]
	ldrb r0, [r6,#2]
	strb r0, [r5,#oOverworldNPCObject_MovementDistance]
	mov r0, #MOVEMENT_FLAG_STOP_ANIMATION_CONTINUES
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_disableScript0x19_809f51e
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_hop

	thumb_local_start
// 0x12
// npc faces the player when the player interacts with this NPC
NPCCommand_face_player_when_interacted:
	mov r0, #OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED
	mvn r0, r0
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	and r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_face_player_when_interacted

	thumb_local_start
// 0x13
// npc does not face the player when the player interacts with this NPC
NPCCommand_do_not_face_player_when_interacted:
	mov r0, #OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_do_not_face_player_when_interacted

	thumb_local_start
// 0x14 hword1 hword3 hword5
// set npc coordinates
// hword1 - x coordinate
// hword3 - y coordinate
// hword5 - z coordinate
NPCCommand_set_coords:
	push {lr}

	add r0, r6, #1
	bl ReadNPCScriptHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_X]

	add r0, r6, #3
	bl ReadNPCScriptHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Y]

	add r0, r6, #5
	bl ReadNPCScriptHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Z]

	add r6, #7
	pop {pc}
	thumb_func_end NPCCommand_set_coords

	thumb_local_start
// 0x15	byte1 byte2 byte3
// move npc in the given direction
// byte1 - direction to move npc in
// byte2 - speed of movement
// byte3 - distance of movement
NPCCommand_move_in_direction:
	push {lr}

	ldrb r2, [r6,#1]
	strb r2, [r5,#oOverworldNPCObject_MovementDirection]

	ldrb r2, [r6,#2]
	strb r2, [r5,#oOverworldNPCObject_MovementSpeed]

	ldrb r2, [r6,#3]
	strb r2, [r5,#oOverworldNPCObject_MovementDistance]

	mov r0, #MOVEMENT_FLAG_DEFAULT_MOVING
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]

	bl npc_disableScript0x19_809f51e
	add r6, #4
	pop {pc}
	thumb_func_end NPCCommand_move_in_direction

	thumb_local_start
// 0x16 byte1
// set npc animation
// byte1 - animation to set
NPCCommand_set_animation:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	add r6, #2
	mov pc, lr
	thumb_func_end NPCCommand_set_animation

	thumb_local_start
// 0x17 byte1
// set NPC sprite for sprite category 0x18 (NPCs)
// certain sprites also set the palette index and hide some OAM pieces
// e.g. Dad and Generic SciLab NPC share the same sprite, but have certain
// OAM pieces hidden and use a different palette index
// byte1 - new sprite id of NPC
NPCCommand_set_sprite:
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	mov r1, #0
	strb r1, [r5,#oOverworldNPCObject_PaletteIndex]
	str r1, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	ldr r1, =OverworldNPCSpriteVariations
	mov r3, #oOverworldNPCSpriteVariations_SpriteId
.loop
	ldrb r2, [r1,r3]
	cmp r2, r0
	beq .foundSprite
	cmp r2, #0xff
	beq .spriteNotSpecial
	add r3, #oOverworldNPCSpriteVariations_Size
	b .loop
.foundSprite
	add r3, #oOverworldNPCSpriteVariations_HiddenOAMPieces
	ldrb r0, [r1,r3]
	lsl r0, r0, #0x18
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	add r3, #(oOverworldNPCSpriteVariations_PaletteIndex - oOverworldNPCSpriteVariations_HiddenOAMPieces)
	ldrb r0, [r1,r3]
	strb r0, [r5,#oOverworldNPCObject_PaletteIndex]
.spriteNotSpecial
	mov r0, #0x18
	str r0, [r5,#oOverworldNPCObject_NPCSpriteCategory]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #2
	mov pc, lr
	.balign 4, 0
	.pool // 809EF3C
	thumb_func_end NPCCommand_set_sprite

	thumb_local_start
// 0x18 byte1
// set text script index
// byte1 - new text script index of NPC
NPCCommand_set_text_script_index:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_TextScriptIndex]
	add r6, #2
	mov pc, lr
	thumb_func_end NPCCommand_set_text_script_index

	thumb_local_start
// 0x19
// disable layer priority override
// layer priority being which sprites are shown first when overlapped
// as well as the background layer which the sprite is on
NPCCommand_disable_layer_priority_override:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_LayerPriorityOverride]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_disable_layer_priority_override

	thumb_local_start
// 0x1a
// override the current NPC's layer priority to 2
NPCCommand_set_layer_priority_override_to_2:
	mov r0, #2
	str r0, [r5,#oOverworldNPCObject_LayerPriorityOverride]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_set_layer_priority_override_to_2

	thumb_local_start
// 0x1b
// override the current NPC's layer priority to 3
NPCCommand_set_layer_priority_override_to_3:
	mov r0, #3
	str r0, [r5,#oOverworldNPCObject_LayerPriorityOverride]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_set_layer_priority_override_to_3

	thumb_local_start
// 0x1c word1
// set the current NPC's hidden OAM pieces
// used for NPC sprites which use the same sprite pointer
// but have overlapping OAMs which can be removed to
// show a different resulting sprite
// word1 - bitfield of OAM pieces indicating which OAM pieces to show and hide
NPCCommand_write_hidden_oam_pieces:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	add r6, #5
	pop {pc}
	thumb_func_end NPCCommand_write_hidden_oam_pieces

	thumb_local_start
// 0x1d byte1
// set a single individual hidden OAM piece for the current NPC
// this command can only set one bit for the hidden OAM piece bitfield
// byte1 - the OAM piece to hide
NPCCommand_set_individual_hidden_oam_piece:
	push {lr}
	ldrb r0, [r6,#1]
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r0
	ldr r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	orr r0, r1
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_set_individual_hidden_oam_piece

	thumb_local_start
// 0x1e byte1
// clear a single individual hidden OAM piece for the current NPC
// this command can only clear one bit for the hidden OAM piece bitfield
// byte1 - the OAM piece to hide
NPCCommand_clear_individual_hidden_oam_piece:
	push {lr}
	ldrb r0, [r6,#1]
	ldrb r0, [r6,#1]
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r0
	mvn r1, r1
	ldr r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	and r0, r1
	str r0, [r5,#oOverworldNPCObject_HiddenOAMPieces]
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_clear_individual_hidden_oam_piece

	thumb_local_start
// 0x1f
// disable the current NPC's collision (NPC becomes passable)
NPCCommand_disable_collision:
	mov r0, #OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_disable_collision

	thumb_local_start
// 0x20
// enable the current NPC's collision (NPC becomes impassable)
NPCCommand_enable_collision:
	mov r0, #OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION
	mvn r0, r0
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	and r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_enable_collision

	thumb_local_start
// 0x21
// attach shadow to the current NPC
// so that the shadow moves with the NPC's z coordinate
NPCCommand_give_attached_shadow:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sprite_noShadow // () -> void
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_give_attached_shadow

	thumb_local_start
// 0x22
// give a shadow for the current NPC, but do not attach it
// so that the shadow does not move with the NPC's z coordinate
NPCCommand_give_detatched_shadow:
	push {lr}
	ldr r0, =(OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100 | OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80)
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sprite_hasShadow
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_give_detatched_shadow

	thumb_local_start
// 0x23
// remove the current NPC's shadow
NPCCommand_remove_shadow:
	push {lr}
	mov r0, #OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, =OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x100
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sprite_removeShadow
	add r6, #1
	pop {pc}
	.balign 4, 0
	.pool // 809EFF4
	thumb_func_end NPCCommand_remove_shadow

	thumb_local_start
// 0x24
// set the current npc's sprite to the current PET navi's sprite
NPCCommand_set_sprite_to_cur_pet_navi:
	push {lr}
	bl GetCurPETNavi // () -> u8
	ldr r1, =PETNaviToNPCSpriteTable
	ldrb r0, [r1,r0]
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	mov r0, #0x18
	str r0, [r5,#oOverworldNPCObject_NPCSpriteCategory]

	// attach shadow to NPC
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]

	add r6, #1
	pop {pc}
	.balign 4, 0
	.pool // 809F018
	thumb_func_end NPCCommand_set_sprite_to_cur_pet_navi

	thumb_local_start
// 0x25 byte1 byte2
// set the current npc's sprite to a sprite from any sprite category
// byte1 - sprite id
// byte2 - sprite category
NPCCommand_set_sprite_with_category:
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]

	ldrb r0, [r6,#2]
	str r0, [r5,#oOverworldNPCObject_NPCSpriteCategory]

	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_SHADOW_FLAG_0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]

	add r6, #3
	mov pc, lr
	thumb_func_end NPCCommand_set_sprite_with_category

	thumb_local_start
// 0x26
// toggle whether the current npc's sprite is mirrored
// if the current npc's sprite is mirrored, it stays so
// even when interacted with
NPCCommand_toggle_sprite_mirror:
	mov r0, #OW_NPC_UNK_FLAGS_60_SPRITE_MIRRORED
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	eor r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_toggle_sprite_mirror

	thumb_local_start
// 0x27
// disable collision for current NPC
// functionally different than the other disable collision command
// but the differences are unknown
NPCCommand_disable_collision_alternate:
	mov r0, #OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION_0x10
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end NPCCommand_disable_collision_alternate

	thumb_local_start
// 0x28 hword1
// play sound effect
// hword1 - sound effect to play
NPCCommand_play_sound:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl PlaySoundEffect
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_play_sound

	thumb_local_start
// 0x29 hword1
// initialize mystery data
// does the following:
// - sets internal flags indicating this is a mystery data
// - sets mystery data palette
// - sets mystery data text archive ptr
// - sets mystery data coordinates
// - sets collision radius to 4, center offset x to 2, and center offset y to -2
// hword1 - mystery data ID
NPCCommand_init_mystery_data:
	push {lr}
	mov r0, #((OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400 | OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x800) >> 4)
	lsl r0, r0, #4
	mov r1, #OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED
	orr r0, r1
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r1, #oOverworldNPCObject_Chatbox_90
	str r0, [r5,r1]
	bl sub_809FC1C
	tst r0, r0
	beq .mysteryDataCollected
	ldr r4, off_809F0E0 // =byte_809F0E4
	ldrb r4, [r4,r0]
	strb r4, [r5,#oOverworldNPCObject_PaletteIndex]

	mov r4, #0x40
	// multiplying a flag?
	// r1 is modified in sub_809FC1C (mystery data function)
	// seems to get its value from a field that's always 0
	mul r4, r1
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r4
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]

	mov r3, #0xff
	strb r3, [r5,#oOverworldNPCObject_TextScriptIndex]
	ldr r0, off_809F0DC // =dword_873D108 
	mov r1, #oOverworldNPCObject_TextScriptPtr
	str r0, [r5,r1]

	mov r1, #0
	ldrsh r0, [r2,r1]
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_X]

	mov r1, #2
	ldrsh r0, [r2,r1]
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Y]

	mov r1, #4
	ldrsh r0, [r2,r1]
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Z]

	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CollisionRadius]
	mov r0, #2
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetX]
	mov r0, #2
	neg r0, r0
	strb r0, [r5,#oOverworldNPCObject_CenterOffsetY]

	add r6, #3
	pop {pc}
.mysteryDataCollected
	mov r0, #OBJECT_FLAG_ACTIVE
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_disableScript0x19_809f51e
	pop {pc}
	.balign 4, 0x00
off_809F0DC: .word dword_873D108
off_809F0E0: .word byte_809F0E4
byte_809F0E4: .byte 0xFF, 0x0, 0x0, 0x2, 0x2, 0x1, 0x3, 0xFF
	thumb_func_end NPCCommand_init_mystery_data

	thumb_local_start
// 0x2a byte1
// wait for the current npc's animation to equal the specified frame
// if bit 7 or bit 6 of byte1 is set, test for the specified bits instead
// byte1 - frame of the current npc's animation to wait for
NPCCommand_wait_anim_frame:
	push {lr}

	ldrb r0, [r6,#1]
	mov r7, #oOverworldNPCObject_Unk_80
	str r0, [r5,r7]

	mov r0, #MOVEMENT_FLAG_WAIT_ANIM_FRAME
	strb r0, [r5,#oOverworldNPCObject_CurAction]

	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]

	bl npc_disableScript0x19_809f51e
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_wait_anim_frame

	thumb_local_start
// 0x2b hword1
// set current npc's color shader (mixes with current palette)
// hword1 - new color shader as 15bit RGB
NPCCommand_set_color_shader:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl sprite_setColorShader
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_set_color_shader

	thumb_local_start
// 0x2d byte1 byte2
// give a mosaic effect to the current npc
// mosaic effect being the "blur" effect when viruses spawn in a battle
// if byte1 + byte2 == 0, then remove the mosaic effect, if there is one
// byte1 - mosaic width
// byte2 - mosaic height
NPCCommand_set_mosaic:
	push {lr}
	bl sprite_clearMosaic
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	add r2, r0, r1
	tst r2, r2
	beq .noMosaic
	bl sprite_setMosaicSize
.noMosaic
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_set_mosaic

	thumb_local_start
// 0x2e byte1
// set npc animation and force it to update
// so that it updates even if the current animation is the same
// byte1 - animation to set
NPCCommand_set_animation_force_update:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	mvn r0, r0
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	add r6, #2
	mov pc, lr
	thumb_func_end NPCCommand_set_animation_force_update

	thumb_local_start
// 0x2f byte1 byte2 byte3
// set transform for the current npc
// the way the transform works seems buggy
// as certain facing directions don't scale correctly
// and show rectangles instead
// byte1 - horizontal compress value
// byte2 - vertical compress value
// byte3 - rotation value
NPCCommand_set_transform:
	push {lr}
	bl sprite_makeUnscalable
	bl sprite_makeScalable
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	ldrb r2, [r6,#3]
	bl sprite_setScaleParameters
	add r6, #4
	pop {pc}
	thumb_func_end NPCCommand_set_transform

	thumb_local_start
// 0x30
// remove transform for the current npc
NPCCommand_remove_transform:
	push {lr}
	bl sprite_makeUnscalable
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_remove_transform

	thumb_local_start
// 0x31 byte1
// set the alpha for the current npc's sprite
// but doesn't actually work (inherent to sprite_setAlpha_8002c7a)
// byte1 - alpha to set (range 0-15). if byte1 is zero, then disable alpha
NPCCommand_set_alpha:
	push {lr}
	bl sprite_disableAlpha
	ldrb r0, [r6,#1]
	tst r0, r0
	beq .alphaIsZero
	bl sprite_setAlpha_8002c7a
.alphaIsZero
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_set_alpha

	thumb_local_start
// 0x32 word1
// run a secondary NPC script
// called separately from the primary NPC script
// word1 - script to run
NPCCommand_run_secondary_script:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptWord
	str r0, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	add r6, #5
	pop {pc}
	thumb_func_end NPCCommand_run_secondary_script

	thumb_local_start
// 0x33 byte1
// wait a given number of frames for the current npc's secondary script
// byte1 - number of frames to wait
NPCCommand_pause_secondary_script:
	push {lr}

	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_Unk_0b]

	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_Timer_22]

	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]

	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_pause_secondary_script

	thumb_local_start
// 0x34
// end the current npc's secondary script
NPCCommand_end_secondary_script:
	mov r0, #NULL
	str r0, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	strh r0, [r5,#oOverworldNPCObject_Timer_22]
	mov r6, #0
	mov pc, lr
	thumb_func_end NPCCommand_end_secondary_script

	thumb_local_start
// 0x35 word1
// initialize a native callback for the current npc
// also writes to the link register field (of the current npc)
// word1 - native function to set as callback
NPCCommand_init_native_call:
	push {lr}
	mov r4, #oOverworldNPCObject_LinkRegister
	add r0, r6, #5
	str r0, [r5,r4]
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_Undetected_7c]
	mov r0, #MOVEMENT_FLAG_CALL_NATIVE_FUNCTION
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	mov r2, #oOverworldNPCObject_LinkRegister
	mov r1, #oOverworldNPCObject_NativeFunctionVars
	mov r0, #0
.clearNativeVarsLoop
	str r0, [r5,r1]
	add r1, #4
	cmp r1, r2
	ble .clearNativeVarsLoop
	bl npc_disableScript0x19_809f51e
	add r6, #5
	pop {pc}
	thumb_func_end NPCCommand_init_native_call

	thumb_local_start
// 0x36 destination1
// set the npc link register, and jump to another script
// destination1 - script to jump to
NPCCommand_jump_with_link:
	push {lr}
	mov r4, #oOverworldNPCObject_LinkRegister
	add r0, r6, #5
	str r0, [r5,r4]
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end NPCCommand_jump_with_link

	thumb_local_start
// 0x37 byte1 byte2 byte3 byte4 word5
// initialize a native callback for the current npc, with four byte arguments
// also writes to the link register field (of the current npc)
// byte1 - first param for native callback
// byte2 - second param for native callback
// byte3 - third param for native callback
// byte4 - fourth param for native callback
// word5 - native function to set as callback
NPCCommand_init_native_call_with_args:
	push {lr}
	mov r4, #oOverworldNPCObject_LinkRegister
	mov r1, #9
	add r0, r6, r1
	str r0, [r5,r4]
	ldrb r2, [r6,#1]
	strb r2, [r5,#oOverworldNPCObject_MovementDirection]
	ldrb r2, [r6,#2]
	strb r2, [r5,#oOverworldNPCObject_MovementSpeed]
	ldrb r2, [r6,#3]
	strb r2, [r5,#oOverworldNPCObject_MovementDistance]
	ldrb r2, [r6,#4]
	strh r2, [r5,#oOverworldNPCObject_Timer]
	add r0, r6, #5
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_Undetected_7c]
	mov r0, #MOVEMENT_FLAG_CALL_NATIVE_FUNCTION
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	mov r2, #oOverworldNPCObject_LinkRegister
	mov r1, #oOverworldNPCObject_NativeFunctionVars
	mov r0, #0
.clearNativeVarsLoop
	str r0, [r5,r1]
	add r1, #4
	cmp r1, r2
	ble .clearNativeVarsLoop
	bl npc_disableScript0x19_809f51e
	add r6, #9
	pop {pc}
	thumb_func_end NPCCommand_init_native_call_with_args

	thumb_local_start
// 0x38 byte1 byte2 byte3 destination4
// initialize NPC movement
// byte1 - direction to move in
// byte2 - speed of movement
// byte3 - amount of movement iterations to do (8 pixels each)
// destination4 - movement handler to call
NPCCommand_init_movement:
	push {lr}
	mov r4, #oOverworldNPCObject_LinkRegister
	mov r1, #8
	add r0, r6, r1
	str r0, [r5,r4]
	ldrb r2, [r6,#1]
	mov r4, #oOverworldNPCObject_MovementDirectionReload
	strb r2, [r5,r4]
	ldrb r2, [r6,#2]
	mov r4, #oOverworldNPCObject_MovementSpeedReload
	strb r2, [r5,r4]
	ldrb r2, [r6,#3]
	mov r4, #oOverworldNPCObject_MovementDistanceReload
	strb r2, [r5,r4]
	add r0, r6, #4
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end NPCCommand_init_movement

	thumb_local_start
// 0x39 byte1
// move in a new direction, relative to the old direction
// byte1 - new movement direction, relative to the old movement direction
// possible values are:
// 0x0 - turn 0 degrees
// 0x2 - turn 90 degrees
// 0x4 - turn 180 degrees
// 0x6 - turn 270 degrees
NPCCommand_change_movement_direction:
	push {lr}
	// read new direction to move in
	// relative to the current direction moving in
	// 0x0 - turn 0 degrees
	// 0x2 - turn 90 degrees
	// 0x4 - turn 180 degrees
	// 0x6 - turn 270 degrees
	ldrb r0, [r6,#1]
	mov r4, #oOverworldNPCObject_MovementDirectionReload

	// read current direction moving in
	ldrb r2, [r5,r4]

	// add current direction and turn amount to get the new direction
	// note that directions 0, 2, 4, 6 (up, right, down, left) do not
	// actually move the NPC, as for some reason movement offsets are
	// not defined for those directions
	add r2, r2, r0

	// 8 directions, so mod 8 the new value
	mov r0, #7
	and r2, r0

	// store new movement direction
	strb r2, [r5,#oOverworldNPCObject_MovementDirection]

	// transfer movement speed and timer reload values
	mov r4, #oOverworldNPCObject_MovementSpeedReload
	ldrb r2, [r5,r4]
	strb r2, [r5,#oOverworldNPCObject_MovementSpeed]

	mov r4, #oOverworldNPCObject_MovementDistanceReload
	ldrb r2, [r5,r4]
	strb r2, [r5,#oOverworldNPCObject_MovementDistance]

	// set some jumptable indices
	mov r0, #MOVEMENT_FLAG_DEFAULT_MOVING
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_disableScript0x19_809f51e
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_change_movement_direction

	thumb_local_start
// 0x3a
// return to the current npc's linked routine
NPCCommand_return_to_link:
	mov r4, #oOverworldNPCObject_LinkRegister
	ldr r6, [r5,r4]
	mov pc, lr
	thumb_func_end NPCCommand_return_to_link

	thumb_local_start
// 0x3b byte1 byte2 destination3
// jump if byte1 <= progress byte <= byte2
// byte1 - lower bound for progress byte
// byte2 - upper bound for progress byte
// destination3 - script to jump to
NPCCommand_jump_if_progress_in_range:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_GameProgress]
	ldrb r1, [r6,#1]
	cmp r0, r1
	blt .progressByteOutOfRange
	ldrb r2, [r6,#2]
	cmp r0, r2
	bgt .progressByteOutOfRange
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	b .done
.progressByteOutOfRange
	add r6, #7
.done
	pop {pc}
	thumb_func_end NPCCommand_jump_if_progress_in_range

	thumb_local_start
// 0x3c byte1 byte2
// write a value to a cutscene variable
// byte1 - cutscene variable to write to
// byte2 - value to write to cutscene variable
NPCCommand_write_cutscene_var:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	strb r1, [r4,r0]
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_write_cutscene_var

	thumb_local_start
// 0x3d byte1 byte2 destination3
// jump if a cutscene variable equals the given value
// byte1 - cutscene variable to compare
// byte2 - value to compare with the cutscene variable
// destination3 - script to jump to
NPCCommand_jump_if_cutscene_var_equals:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	ldrb r0, [r4,r0]
	cmp r0, r1
	bne .cutsceneVarNotEqual
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
.cutsceneVarNotEqual
	add r6, #7
	pop {pc}
	thumb_func_end NPCCommand_jump_if_cutscene_var_equals

	thumb_local_start
// 0x3e byte1 byte2 destination3
// jump if a cutscene variable does not equal the given value
// byte1 - cutscene variable to compare
// byte2 - value to compare with the cutscene variable
// destination3 - script to jump to
NPCCommand_jump_if_cutscene_var_not_equal:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	ldrb r0, [r4,r0]
	cmp r0, r1
	beq .cutsceneVarEquals
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
.cutsceneVarEquals
	add r6, #7
	pop {pc}
	thumb_func_end NPCCommand_jump_if_cutscene_var_not_equal

	thumb_local_start
// 0x3f byte1 byte2
// wait for a cutscene variable to equal a given value
// byte1 - cutscene variable to compare
// byte2 - value to compare with the cutscene variable
NPCCommand_wait_cutscene_var:
	push {r7,lr}

	mov r0, #MOVEMENT_FLAG_WAIT_CUTSCENE_VAR
	strb r0, [r5,#oOverworldNPCObject_CurAction]

	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]

	ldrb r0, [r6,#1]
	mov r7, #oOverworldNPCObject_CutsceneVarIndexToWaitFor
	str r0, [r5,r7]

	ldrb r0, [r6,#2]
	mov r7, #oOverworldNPCObject_CutsceneVarValueToWaitFor
	str r0, [r5,r7]

	bl npc_disableScript0x19_809f51e
	add r6, #3
	pop {r7,pc}
	thumb_func_end NPCCommand_wait_cutscene_var

	thumb_local_start
// 0x41
// set the flag OW_NPC_UNK_FLAGS_60_0x200 to the current npc's flags
NPCCommand_set_unk_flags_60_flag_0x200:
	push {lr}
	mov r0, #(OW_NPC_UNK_FLAGS_60_0x200 >> 4)
	lsl r0, r0, #4
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	bic r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_set_unk_flags_60_flag_0x200

	thumb_local_start
// 0x42
// clear the flag OW_NPC_UNK_FLAGS_60_0x200 from the current npc's flags
NPCCommand_clear_unk_flags_60_flag_0x200:
	push {lr}
	mov r0, #(OW_NPC_UNK_FLAGS_60_0x200 >> 4)
	lsl r0, r0, #4
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_clear_unk_flags_60_flag_0x200

	thumb_local_start
// 0x44 byte1 word2
// set text script pointer and index for the current npc
// byte1 - new text script index
// word2 - new text script pointer
NPCCommand_set_text_script_index_and_ptr:
	push {lr}

	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_TextScriptIndex]

	ldr r0, off_809F6AC // =OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400 
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]

	add r0, r6, #2
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r1, #oOverworldNPCObject_TextScriptPtr
	str r0, [r5,r1]

	add r6, #6
	pop {pc}
	thumb_func_end NPCCommand_set_text_script_index_and_ptr

	thumb_local_start
// 0x45 hword1
// wait for the npc (being a mystery data) to be taken
// hword1 - mystery data id
NPCCommand_wait_mystery_data_taken:
	push {r7,lr}

	mov r0, #MOVEMENT_FLAG_WAIT_MYSTERY_DATA_TAKEN
	strb r0, [r5,#oOverworldNPCObject_CurAction]

	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]

	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r7, #oOverworldNPCObject_MysteryDataId
	str r0, [r5,r7]

	bl npc_disableScript0x19_809f51e
	add r6, #3
	pop {r7,pc}
	thumb_func_end NPCCommand_wait_mystery_data_taken

	thumb_local_start
// 0x46 byte1
// if byte1 == 0, turn on obj window mode for the current npc's sprite
// otherwise, disable object window mode
NPCCommand_set_obj_window_mode:
	push {lr}

	// useless toolkit read, maybe dummied out code?
	mov r7, r10
	ldr r4, [r7,#oToolkit_Unk200f3a0_Ptr]
	// ??? corresponds to some groundman text (groundman scenario maybe?)
	ldr r7, TextScriptGroundmanMinigame_p // =TextScriptGroundmanMinigame

	bl sprite_disableObjWindowMode
	ldrb r0, [r6,#1]
	tst r0, r0
	bne .doNotEnableObjWindowMode
	bl sprite_setObjWindowMode
.doNotEnableObjWindowMode
	add r6, #2
	pop {pc}
	thumb_func_end NPCCommand_set_obj_window_mode

	thumb_local_start
// 0x47 hword1
// play music
// hword1 - music to play
NPCCommand_play_music:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl PlayMusic
	add r6, #3
	pop {pc}
	thumb_func_end NPCCommand_play_music

	thumb_local_start
// 0x48
// set bit 5 of sprite field 0x3 for the current NPC
// the function sprite_setField0x3Bit5 in question seems to go unused
// (all other calls to it are dead)
NPCCommand_set_sprite_0x3_bit5:
	push {lr}
	bl sprite_setField0x3Bit5
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_set_sprite_0x3_bit5

	thumb_local_start
// 0x49
// remove the current NPC's shadow, but don't set flags
// that keep the shadow removed if the current NPC's sprite changes
NPCCommand_remove_shadow_ignore_flags:
	push {lr}
	bl sprite_removeShadow
	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_remove_shadow_ignore_flags

	thumb_local_start
// 0x4a byte1 hword2
// do a camera shake effect
// byte1 - shake type
// hword2 - shake timer
NPCCommand_do_camera_shake:
	push {lr}
	add r0, r6, #2
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r1, r0
	ldrb r0, [r6,#1]
	bl camera_initShakeEffect_80302a8
	add r6, #4
	pop {pc}
	thumb_func_end NPCCommand_do_camera_shake

	thumb_local_start
// 0x4b byte1
// jump if the current npc's animation does not equal the given animation
// byte1 - animation to compare the current npc's animation with
NPCCommand_jump_if_anim_not_equal:
	push {lr}
	ldrb r0, [r6,#1]
	ldrb r1, [r5,#oOverworldNPCObject_AnimationSelect]
	cmp r1, r0
	bne .animNotEqual
	add r6, #6
	pop {pc}
.animNotEqual
	add r6, #2
	mov r0, r6
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end NPCCommand_jump_if_anim_not_equal

	thumb_local_start
// 0x4c byte1
// set text script pointer to a hardcoded buffer and index to the given value for the current npc
// byte1 - new text script index
NPCCommand_set_text_script_index_and_ptr_to_decomp_buffer:
	push {lr}

	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_TextScriptIndex]

	ldr r0, off_809F6AC // =OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]

	ldr r3, off_809F3D8 // =byte_202FA04 
	mov r1, #oOverworldNPCObject_TextScriptPtr
	str r3, [r5,r1]
	add r6, #2
	pop {pc}
off_809F3D8: .word byte_202FA04
	.word off_809F3E0
off_809F3E0: .word off_8044470
	.word off_80444C4
	thumb_func_end NPCCommand_set_text_script_index_and_ptr_to_decomp_buffer

	thumb_local_start
// 0x4d unused1to4 destination5
// jump to another script
// the code suggests something was removed
// unused1to4 - unused
// destination5 - script to jump to
NPCCommand_jump_alt:
	push {lr}
	add r0, r6, #5
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	b .dummy
.dummy
	pop {pc}
	thumb_func_end NPCCommand_jump_alt

	thumb_local_start
// 0x4e byte1 byte2 byte3 byte4
// npc performs a leap
// i.e. a hop except an xy coordinate is offset for each iteration

// hop mechanics copied from the hop command:
// given that the npc starts at z=0
// the z values of the hop are given (in decimal)
// by the quadratic z = ((byte2/2)x^2 + (byte2/2 + byte1)x)/16
// starting at x=1, until z becomes negative, at which z is
// set to the default value (depending on position)
// e.g. if byte1 = 96 and byte2 = -36, the equation would be:
// z = (-18x^2 + 78x)/16

// alternatively, the z values can be mapped as follows (in 16.16 fixed point):
// byte1 *= 4096
// byte2 *= 4096
// start loop
// byte1 += byte2
// z += byte1
// end loop when z becomes negative

// byte1 - hop param base
// byte2 - hop param delta
// byte3 - direction of leap
// 00 - up right
// 01 - up left
// 02 - down left
// 03 - down right
// byte4 - velocity of leap, in whole pixels
NPCCommand_leap:
	push {lr}

	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_MovementSpeed]

	ldrb r0, [r6,#2]
	strb r0, [r5,#oOverworldNPCObject_MovementDistance]

	ldrb r0, [r6,#3]
	strb r0, [r5,#oOverworldNPCObject_Undetected_06]

	ldrb r0, [r6,#4]
	strb r0, [r5,#oOverworldNPCObject_Unk_07]

	mov r0, #MOVEMENT_FLAG_STOP_ANIMATION_CONTINUES
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #8
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_disableScript0x19_809f51e
	add r6, #5
	pop {pc}
	thumb_func_end NPCCommand_leap

	thumb_local_start
// 0x4f byte1 byte2 byte3
// increase or decrease the current npc's z coordinate by a given offset for a given number of frames
// i.e. init vertical movement
// byte1 - number of frames to wait
// byte2 - direction (0 = upwards, 1 = downwards)
// byte3 - velocity of vertical movement
NPCCommand_init_vertical_movement:
	push {lr}

	ldrb r2, [r6,#1]
	strb r2, [r5,#oOverworldNPCObject_MovementSpeed]

	ldrb r2, [r6,#2]
	strb r2, [r5,#oOverworldNPCObject_MovementDistance]

	ldrb r2, [r6,#3]
	strb r2, [r5,#oOverworldNPCObject_Undetected_06]

	mov r0, #MOVEMENT_FLAG_DEFAULT_MOVING
	strb r0, [r5,#oOverworldNPCObject_CurAction]

	mov r0, #8
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]

	bl npc_disableScript0x19_809f51e
	add r6, #4
	pop {pc}
	.balign 4, 0
	thumb_func_end NPCCommand_init_vertical_movement

	thumb_local_start
// 0x50 byte1 byte2 byte3 byte4
// npc performs a diagonal leap
// i.e. same as a leap, except the leap stops at the peak
// in other words, the vertex of the parabola

// hop mechanics partially copied from the hop command:
// given that the npc starts at z=0
// the z values of the hop are given (in decimal)
// by the quadratic z = ((byte2/2)x^2 + (byte2/2 + byte1)x)/16
// starting at x=1, until z is the vertex of the quadratic, at which z is
// set to the z at the vertex
// e.g. if byte1 = 96 and byte2 = -36, the equation would be:
// z = (-18x^2 + 78x)/16

// alternatively, the z values can be mapped as follows (in 16.16 fixed point):
// byte1 *= 4096
// byte2 *= 4096
// start loop
// byte1 += byte2
// stop if byte1 is zero or less
// z += byte1
// end loop
NPCCommand_init_diagonal_leap:
	push {lr}

	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_MovementSpeed]

	ldrb r0, [r6,#2]
	strb r0, [r5,#oOverworldNPCObject_MovementDistance]

	ldrb r0, [r6,#3]
	strb r0, [r5,#oOverworldNPCObject_Undetected_06]

	ldrb r0, [r6,#4]
	strb r0, [r5,#oOverworldNPCObject_Unk_07]

	mov r0, #MOVEMENT_FLAG_STOP_ANIMATION_CONTINUES
	strb r0, [r5,#oOverworldNPCObject_CurAction]

	mov r0, #0x10
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]

	bl npc_disableScript0x19_809f51e
	add r6, #5
	pop {pc}
	thumb_func_end NPCCommand_init_diagonal_leap

	thumb_local_start
// 0x51 hword1
// initialize prog npc for the groundman minigame
// the npc's text script index and coordinates are set based on the input event flag
// and the text script ptr is set to the text archive for the groundman minigame
// hword1 - event flag of prog
NPCCommand_init_groundman_minigame_prog:
	push {lr}

	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne .progPickedUpOrDoesNotExist

	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl GetGroundmanMinigameProgGridCoordsAndTextScriptIndex
	// test if this prog actually exists
	// there appears to be 10 prog entries for each groundman map
	// looking at the grid coord table and the groundman minigame
	// text archive, but only 6 grid coord pairs are defined in
	// the grid coord table
	tst r1, r1
	beq .progPickedUpOrDoesNotExist

	strb r2, [r5,#oOverworldNPCObject_TextScriptIndex]
	ldr r3, TextScriptGroundmanMinigame_p // =TextScriptGroundmanMinigame
	mov r2, #oOverworldNPCObject_TextScriptPtr
	str r3, [r5,r2]
	mov r0, r1
	bl ConvertGroundmanMinigameGridCoordsToMapCoords

	str r0, [r5,#oOverworldNPCObject_X]
	str r1, [r5,#oOverworldNPCObject_Y]
	str r2, [r5,#oOverworldNPCObject_Z]

	add r6, #3
	ldr r0, dword_809F6B0 // =(OW_NPC_UNK_FLAGS_60_0x1000 | OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400)
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	pop {pc}
.progPickedUpOrDoesNotExist
	mov r0, #OBJECT_FLAG_ACTIVE
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_disableScript0x19_809f51e
	pop {pc}
TextScriptGroundmanMinigame_p: .word TextScriptGroundmanMinigame
	thumb_func_end NPCCommand_init_groundman_minigame_prog

	thumb_local_start
// 0x52
// have the current npc do a "jack out" effect
// npc cannot be interacted with and has no collision once this command is run
NPCCommand_jack_out:
	push {lr}

	// get the anim of the current NPC
	bl sprite_getFrameParameters
	// extract facing direction
	mov r0, #7
	and r0, r2
	// add base offset for npc jack out animation (palette fades to clear)
	add r0, #0x21
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	// force animation update
	mvn r0, r0
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]

	// disable interaction and collision
	mov r0, #(OW_NPC_UNK_FLAGS_60_DISABLE_INTERACTION | OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION_0x10)
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]

	// spawn jack out animation
	push {r5}
	mov r0, #0
	ldr r1, [r5,#oOverworldNPCObject_X]
	ldr r2, [r5,#oOverworldNPCObject_Y]
	ldr r3, [r5,#oOverworldNPCObject_Z]
	mov r4, #1
	bl SpawnOverworldMapObject
	pop {r5}

	// play jack out sound
	mov r0, #SOUND_LOG_OUT_76
	bl PlaySoundEffect

	add r6, #1
	pop {pc}
	thumb_func_end NPCCommand_jack_out

	thumb_local_start
// 0x53 destination1
// jump if the screen is fading
// destination1 - script to jump to
NPCCommand_jump_if_screen_fade_active:
	push {lr}
	bl screenFade_80062C8
	cmp r1, #0
	beq .screenFadeNotActive
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
.screenFadeNotActive
	add r6, #5
	pop {pc}
	thumb_func_end NPCCommand_jump_if_screen_fade_active

	thumb_local_start
sub_809F506:
	push {lr}
	str r0, [r5,#oOverworldNPCObject_AnimationScriptPtr]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	strb r0, [r5,#oOverworldNPCObject_ChatTriggered]
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]
	str r0, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	pop {pc}
	thumb_func_end sub_809F506

	thumb_local_start
npc_enableScript0x19_809f516:
	push {lr}
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	pop {pc}
	thumb_func_end npc_enableScript0x19_809f516

	thumb_local_start
npc_disableScript0x19_809f51e:
	push {lr}
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	pop {pc}
	thumb_func_end npc_disableScript0x19_809f51e

	thumb_local_start
sub_809F526:
	push {r7,lr}

	ldr r7, [r5, #oOverworldNPCObject_UnkFlags_60]
	ldrb r0, [r5,#oOverworldNPCObject_ObjectHeader]
	mov r1, #OBJECT_FLAG_ACTIVE
	tst r0, r1
	beq loc_809F598

	push {r5}
	ldr r4, dword_809F5A0 // =OW_OBJECT_INTERACTION_AREA_FLAG_0x20000
	mov r1, #OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION
	tst r7, r1
	beq loc_809F53E
	mov r4, #0
loc_809F53E:

	ldr r0, [r5,#oOverworldNPCObject_X]
	mov r6, #oOverworldNPCObject_CenterOffsetX
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r0, r0, r6

	ldr r1, [r5,#oOverworldNPCObject_Y]
	mov r6, #oOverworldNPCObject_CenterOffsetY
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r1, r1, r6

	ldrb r2, [r5,#oOverworldNPCObject_InteractionLocked]
	cmp r2, #0
	beq loc_809F56A
	push {r0,r1,r3-r5}
	mov r0, #oOverworldNPCObject_Coords
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	pop {r0,r1,r3-r5}
	b loc_809F56C
loc_809F56A:
	ldr r2, [r5,#oOverworldNPCObject_Z]
loc_809F56C:

	mov r6, #oOverworldNPCObject_CenterOffsetZ
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r2, r2, r6

	mov r6, #oOverworldNPCObject_Unk_50
	add r6, r6, r5
	ldrh r3, [r5,#oOverworldNPCObject_CollisionRadius_ZReach]
	push {r0-r5}
	ldr r5, dword_809F5A4 // =(OW_OBJECT_INTERACTION_AREA_FLAG_0x1 | OW_OBJECT_INTERACTION_AREA_FLAG_0x10000 | OW_OBJECT_INTERACTION_AREA_FLAG_0x40000)
	bl createOWObjectInteractionArea_80037ac
	mov r1, #(OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION | OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION_0x10)
	tst r7, r1
	pop {r0-r5}
	bne loc_809F596
	mov r6, #oOverworldNPCObject_Unk_58 
	add r6, r6, r5
	ldr r4, dword_809F5A8 // =OW_OBJECT_INTERACTION_AREA_FLAG_0x400000
	ldr r5, dword_809F5AC // =(OW_OBJECT_INTERACTION_AREA_FLAG_0x200000 | OW_OBJECT_INTERACTION_AREA_FLAG_0x800000)
	bl createOWObjectInteractionArea_80037ac
loc_809F596:
	pop {r5}
loc_809F598:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_Unk_50]
	str r0, [r5,#oOverworldNPCObject_Unk_58]
	pop {r7,pc}
dword_809F5A0: .word OW_OBJECT_INTERACTION_AREA_FLAG_0x20000
dword_809F5A4: .word (OW_OBJECT_INTERACTION_AREA_FLAG_0x1 | OW_OBJECT_INTERACTION_AREA_FLAG_0x10000 | OW_OBJECT_INTERACTION_AREA_FLAG_0x40000)
dword_809F5A8: .word OW_OBJECT_INTERACTION_AREA_FLAG_0x400000
dword_809F5AC: .word (OW_OBJECT_INTERACTION_AREA_FLAG_0x200000 | OW_OBJECT_INTERACTION_AREA_FLAG_0x800000)
	thumb_func_end sub_809F526

	thumb_local_start
// movement/interaction related
sub_809F5B0:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #OW_NPC_UNK_FLAGS_60_DISABLE_COLLISION
	tst r0, r1
	bne loc_809F5EA
	push {r5}

	ldr r0, [r5,#oOverworldNPCObject_NextX]
	mov r6, #oOverworldNPCObject_CenterOffsetX
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r0, r0, r6

	ldr r1, [r5,#oOverworldNPCObject_NextY]
	mov r6, #oOverworldNPCObject_CenterOffsetY
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r1, r1, r6

	ldr r2, [r5,#oOverworldNPCObject_NextZ]
	mov r6, #oOverworldNPCObject_CenterOffsetZ
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r2, r2, r6

	mov r6, #oOverworldNPCObject_Unk_54
	add r6, r6, r5
	ldr r3, dword_809F5F0 // =0x804 
	ldr r4, dword_809F5F4 // =OW_OBJECT_INTERACTION_AREA_FLAG_0x80000
	ldr r5, dword_809F5F8 // =(OW_OBJECT_INTERACTION_AREA_FLAG_0x10000 | OW_OBJECT_INTERACTION_AREA_FLAG_0x40000)
	bl createOWObjectInteractionArea_80037ac
	pop {r5}
loc_809F5EA:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_Unk_54]
	pop {pc}
dword_809F5F0: .word 0x804
dword_809F5F4: .word OW_OBJECT_INTERACTION_AREA_FLAG_0x80000
dword_809F5F8: .word (OW_OBJECT_INTERACTION_AREA_FLAG_0x10000 | OW_OBJECT_INTERACTION_AREA_FLAG_0x40000)
	thumb_func_end sub_809F5B0

	thumb_local_start
sub_809F5FC:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_CurAction]
	strb r0, [r5,#oOverworldNPCObject_Unk_1d]
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	strb r0, [r5,#oOverworldNPCObject_Unk_1e]
	mov r0, #NPC_CUR_STATE_IN_CHATBOX
	strb r0, [r5,#oOverworldNPCObject_CurState]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	pop {pc}
	thumb_func_end sub_809F5FC

	thumb_local_start
sub_809F612:
	push {lr}
	mov r0, #NPC_CUR_STATE_STANDARD
	strb r0, [r5,#oOverworldNPCObject_CurState]
	ldrb r0, [r5,#oOverworldNPCObject_Unk_1d]
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	ldrb r0, [r5,#oOverworldNPCObject_Unk_1e]
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, dword_809F6B4 // =(OW_NPC_UNK_FLAGS_60_0x1000 | OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED)
	tst r0, r1
	bne loc_809F632
	ldrb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_809F632:
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_ChatTriggered]
	pop {pc}
	thumb_func_end sub_809F612

	thumb_local_start
sub_809F638:
	push {lr}
	mov r0, #0
	ldr r2, dword_809F648 // =0x50000 
	ldr r1, [r5,#oOverworldNPCObject_Unk_54]
	tst r1, r2
	beq locret_809F646
	mov r0, #1
locret_809F646:
	pop {pc}
dword_809F648: .word 0x50000
	thumb_func_end sub_809F638

// (u8 bitfield_arr[2]) -> u16
	thumb_local_start
ReadNPCScriptHalfword:
	ldrb r1, [r0]
	ldrb r0, [r0,#1]
	lsl r0, r0, #8
	orr r0, r1
	mov pc, lr
	thumb_func_end ReadNPCScriptHalfword

// (void* a1) -> int
	thumb_local_start
ReadNPCScriptWord:
	ldrb r1, [r0]
	ldrb r2, [r0,#1]
	lsl r2, r2, #8
	ldrb r3, [r0,#2]
	lsl r3, r3, #0x10
	ldrb r0, [r0,#3]
	lsl r0, r0, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	mov pc, lr
	thumb_func_end ReadNPCScriptWord

	thumb_local_start
sub_809F66C:
	push {r7}
	mov r3, #0x10
	ldr r7, off_809F688 // =eOverworldNPCObjects 
loc_809F672:
	ldrb r1, [r7,#0x10]
	cmp r1, r0
	beq loc_809F680
	add r7, #0xd8
	sub r3, #1
	bne loc_809F672
	mov r7, #0
loc_809F680:
	mov r0, r7
	pop {r7}
	mov pc, lr
	.balign 4, 0x00
off_809F688: .word eOverworldNPCObjects
	thumb_func_end sub_809F66C

	thumb_func_start sub_809F68C
sub_809F68C:
	push {lr}
	ldr r3, off_809F6A4 // =eOverworldNPCObjects 
	ldr r2, off_809F6A8 // =NUM_OVERWORLD_NPC_OBJECTS * oOverworldNPCObject_Size 
	add r2, r2, r3
loc_809F694:
	ldr r0, [r3,#oOverworldNPCObject_Unk_50]
	mov r1, #1
	bic r0, r1
	str r0, [r3,#oOverworldNPCObject_Unk_50]
	add r3, #oOverworldNPCObject_Size 
	cmp r3, r2
	blt loc_809F694
	pop {pc}
off_809F6A4: .word eOverworldNPCObjects
off_809F6A8: .word NUM_OVERWORLD_NPC_OBJECTS * oOverworldNPCObject_Size
off_809F6AC: .word OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400
dword_809F6B0: .word (OW_NPC_UNK_FLAGS_60_0x1000 | OW_NPC_UNK_FLAGS_60_CHATBOX_FLAG_0x400)
dword_809F6B4: .word (OW_NPC_UNK_FLAGS_60_0x1000 | OW_NPC_UNK_FLAGS_60_FACE_PLAYER_WHEN_INTERACTED)
byte_809F6B8: .byte 0x22, 0x11, 0x9E, 0xDC, 0x21, 0x10, 0xF, 0x22, 0x11
	.byte 0x9E, 0xDC, 0x21, 0x10, 0x78, 0x2, 0xB8, 0xF6, 0x9
	.byte 0x8, 0x0
byte_809F6CC: .byte 0x10, 0x1, 0x2, 0xCC, 0xF6, 0x9, 0x8, 0x0, 0x16, 0x9, 0x39, 0x0
	.byte 0x16, 0x1, 0x10, 0x3C, 0x16, 0xD, 0x39, 0x4, 0x16, 0x5, 0x10, 0x3C
	.byte 0x2, 0xD4, 0xF6, 0x9, 0x8, 0x0, 0x0, 0x0
byte_809F6EC: .byte 0x16, 0xB, 0x39, 0x0, 0x16, 0x3, 0x10, 0x3C, 0x16, 0xF
	.byte 0x39, 0x4, 0x16, 0x7, 0x10, 0x3C, 0x2, 0xEC, 0xF6, 0x9
	.byte 0x8, 0x0, 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0x7
	.byte 0x10, 0x3C, 0x16, 0xB, 0x39, 0x4, 0x16, 0x3, 0x10, 0x3C
	.byte 0x2, 0x4, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0
byte_809F71C: .byte 0x16, 0xD, 0x39, 0x0, 0x16, 0x5, 0x10, 0x3C, 0x16, 0x9, 0x39
	.byte 0x4, 0x16, 0x1, 0x10, 0x3C, 0x2, 0x1C, 0xF7, 0x9, 0x8, 0x0
	.byte 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0x1, 0x16, 0xD, 0x39
	.byte 0x4, 0x16, 0x5, 0x2, 0x34, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0
	.byte 0x16, 0xB, 0x39, 0x0, 0x16, 0x3, 0x16, 0xF, 0x39, 0x4, 0x16
	.byte 0x7, 0x2, 0x48, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xF
	.byte 0x39, 0x0, 0x16, 0x7, 0x16, 0xB, 0x39, 0x4, 0x16, 0x3, 0x2
	.byte 0x5C, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xD, 0x39, 0x0
	.byte 0x16, 0x5, 0x16, 0x9, 0x39, 0x4, 0x16, 0x1, 0x2, 0x70, 0xF7
	.byte 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0xF
	.byte 0x39, 0x6, 0x16, 0xD, 0x39, 0x4, 0x16, 0xB, 0x39, 0x2, 0x2
	.byte 0x84, 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0
byte_809F79C: .byte 0x16, 0xB, 0x39, 0x0, 0x16, 0xD, 0x39, 0x2, 0x16, 0xF
	.byte 0x39, 0x4, 0x16, 0x9, 0x39, 0x6, 0x2, 0x9C, 0xF7, 0x9
	.byte 0x8, 0x0, 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0x1
	.byte 0x10, 0x3C, 0x3A, 0x0, 0x0, 0x0, 0x16, 0xD, 0x39, 0x0
	.byte 0x16, 0x5, 0x10, 0x3C, 0x3A, 0x0, 0x0, 0x0, 0x16, 0xB
	.byte 0x39, 0x0, 0x16, 0x3, 0x10, 0x3C, 0x3A, 0x0, 0x0, 0x0
	.byte 0x16, 0xF, 0x39, 0x0, 0x16, 0x7, 0x10, 0x3C, 0x3A, 0x0
	.byte 0x0, 0x0
byte_809F7E4: .byte 0x16, 0x5, 0x10, 0x3C, 0x16, 0x3, 0x10, 0x3C, 0x2, 0xE4
	.byte 0xF7, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0x7, 0x10, 0x3C
	.byte 0x16, 0x1, 0x10, 0x3C, 0x2, 0xF4, 0xF7, 0x9, 0x8, 0x0
	.byte 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0x1, 0x10, 0x3C
	.byte 0x16, 0xB, 0x39, 0x4, 0x16, 0x1, 0x10, 0x3C, 0x2, 0x4
	.byte 0xF8, 0x9, 0x8, 0x0, 0x0, 0x0, 0x16, 0xD, 0x39, 0x0
	.byte 0x16, 0x7, 0x10, 0x3C, 0x16, 0x9, 0x39, 0x4, 0x16, 0x7
	.byte 0x10, 0x3C, 0x2, 0x1C, 0xF8, 0x9, 0x8, 0x0, 0x0, 0x0
	.byte 0x16, 0x9, 0x39, 0x0, 0x3A, 0x0, 0x0, 0x0, 0x16, 0xD
	.byte 0x39, 0x0, 0x3A, 0x0, 0x0, 0x0, 0x16, 0xB, 0x39, 0x0
	.byte 0x3A, 0x0, 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x3A, 0x0
	.byte 0x0, 0x0, 0x16, 0x9, 0x39, 0x0, 0x16, 0xD, 0x39, 0x4
	.byte 0x3A, 0x0, 0x0, 0x0, 0x16, 0xF, 0x39, 0x0, 0x16, 0xB
	.byte 0x39, 0x4, 0x3A, 0x0, 0x0, 0x0, 0x28, 0x76, 0x0, 0x8
	.byte 0x2E, 0x0, 0x2A, 0xC0, 0x3, 0x0, 0x0, 0x0
byte_809F878: .byte 0x8, 0x2E, 0x0, 0x2A, 0xC0, 0x3, 0x0, 0x0
byte_809F880: .byte 0x28, 0x76, 0x0, 0x8, 0x2E, 0x1, 0x2A, 0xC0, 0x3
byte_809F889: .byte 0x9, 0x33, 0x14, 0x28, 0xCE, 0x1, 0x8, 0x33, 0xA, 0x2, 0x89
	.byte 0xF8, 0x9, 0x8, 0x9, 0x33, 0xA, 0x28, 0xCE, 0x1, 0x8, 0x33
	.byte 0xA, 0x2, 0x97, 0xF8, 0x9, 0x8
byte_809F8A5: .byte 0x9, 0x33, 0x5, 0x28, 0xCE, 0x1, 0x8, 0x33, 0x5, 0x2, 0xA5, 0xF8
	.byte 0x9, 0x8
byte_809F8B3: .byte 0x34, 0x8, 0x33, 0x14, 0x9, 0x33, 0xA, 0x2, 0xB4, 0xF8, 0x9
	.byte 0x8, 0x8, 0x33, 0xA, 0x9, 0x33, 0xA, 0x2, 0xBF, 0xF8, 0x9
	.byte 0x8
byte_809F8CA: .byte 0x8, 0x33, 0x5, 0x9, 0x33, 0x5, 0x2, 0xCA, 0xF8, 0x9, 0x8, 0x34
byte_809F8D6: .byte 0x9, 0x33, 0x14, 0x28, 0x5E, 0x1, 0x8, 0x33, 0xA, 0x2
	.word byte_809F8D6
	.byte 0x9, 0x33, 0xA, 0x28, 0x5E, 0x1, 0x8, 0x33, 0xA, 0x2, 0xE4
	.byte 0xF8, 0x9, 0x8
byte_809F8F2: .byte 0x9, 0x33, 0x5, 0x28, 0x5E, 0x1, 0x8, 0x33, 0x5, 0x2
	.word byte_809F8F2
	.word 0x34
	thumb_func_end sub_809F68C

	thumb_func_start sub_809F904
sub_809F904:
	push {lr}
	mov r0, #0
	strb r0, [r5,#0x19]
	pop {pc}
	thumb_func_end sub_809F904

	thumb_func_start sub_809F90C
sub_809F90C:
	push {lr}
	movflag EVENT_1708
	bl TestEventFlagFromImmediate
	bne locret_809F920
	ldr r0, off_809F9C4 // =byte_2000210 
	mov r1, #0
	strb r1, [r0]
	str r1, [r0,#0x8]
locret_809F920:
	pop {pc}
	thumb_func_end sub_809F90C

	thumb_local_start
sub_809F922:
	push {r4,r6,r7,lr}
	movflag EVENT_1708
	bl TestEventFlagFromImmediate
	bne locret_809F940
	ldr r7, off_809F9C4 // =byte_2000210 
	ldrb r6, [r7]
	cmp r6, #0x10
	bge locret_809F940
	add r4, r6, #1
	strb r4, [r7]
	lsl r6, r6, #2
	add r6, #0x10
	str r5, [r7,r6]
locret_809F940:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_809F922

	thumb_func_start sub_809F942
sub_809F942:
	push {r4-r7,lr}
	movflag EVENT_1708
	bl TestEventFlagFromImmediate
	bne locret_809F9BC
	ldr r7, off_809F9C4 // =byte_2000210 
	ldrb r6, [r7]
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	ldr r4, [r4,#oGameState_OverworldPlayerObjectPtr]
	add r7, #0x10
loc_809F95A:
	sub r6, #1
	blt loc_809F9A6
	ldr r5, [r7]
	ldr r2, [r4,#0x24]
	ldr r0, [r5,#0x2c]
	cmp r0, r2
	bne loc_809F9A2
	ldr r2, [r4,#0x1c]
	ldr r3, [r4,#0x20]
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	sub r0, r0, r2
	sub r1, r1, r3
	mov r3, #0x24 
	lsl r3, r3, #0x10
	sub r2, r0, r1
	cmp r2, r3
	bgt loc_809F9A2
	mov r3, #0x38 
	lsl r3, r3, #0x10
	neg r3, r3
	sub r2, r0, r1
	cmp r2, r3
	blt loc_809F9A2
	mov r3, #0x1c
	lsl r3, r3, #0x10
	add r2, r0, r1
	cmp r2, r3
	bgt loc_809F9A2
	mov r3, #0x1c
	lsl r3, r3, #0x10
	neg r3, r3
	add r2, r0, r1
	cmp r2, r3
	blt loc_809F9A2
	b loc_809F9AE
loc_809F9A2:
	add r7, #4
	b loc_809F95A
loc_809F9A6:
	bl sub_809F90C
	mov r0, #0
	pop {r4-r7,pc}
loc_809F9AE:
	push {r5}
	bl sub_809F90C
	pop {r0}
	ldr r7, off_809F9C4 // =byte_2000210 
	str r0, [r7,#0x8]
	pop {r4-r7,pc}
locret_809F9BC:
	pop {r4-r7,pc}
	thumb_func_end sub_809F942

	thumb_func_start sub_809F9BE
sub_809F9BE:
	ldr r7, off_809F9C4 // =byte_2000210 
	ldr r7, [r7,#0x8]
	mov pc, lr
off_809F9C4: .word byte_2000210
	thumb_func_end sub_809F9BE

/*For debugging purposes, connect comment at any range!*/
