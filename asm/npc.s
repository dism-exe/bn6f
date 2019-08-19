
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
jt_809E580: .word npc_809E590+1
	.word npc_809E5E2+1
	.word npc_809EADA+1
off_809E58C: .word jt_809E580
	thumb_func_end npc_809E570

	thumb_local_start
npc_809E590:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sub_809F506
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_Flags_68]
	str r0, [r5,#oOverworldNPCObject_Flags_68_Update]
	strb r0, [r5,#oOverworldNPCObject_Unk_0e]
	strb r0, [r5,#oOverworldNPCObject_Unk_0f]
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	strb r0, [r5,#oOverworldNPCObject_Unk_07]
	strb r0, [r5,#oOverworldNPCObject_PaletteIndex]
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	str r0, [r5,#oOverworldNPCObject_Unk_64]
	str r0, [r5,#oOverworldNPCObject_Unk_50]
	str r0, [r5,#oOverworldNPCObject_Unk_54]
	str r0, [r5,#oOverworldNPCObject_Unk_58]
	strb r0, [r5,#oOverworldNPCObject_Unk_11]
	strb r0, [r5,#oOverworldNPCObject_Unk_12]
	strb r0, [r5,#oOverworldNPCObject_Unk_13]
	mov r0, #0xff
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	strh r0, [r5,#oOverworldNPCObject_NPCSpriteUpdate]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CurState]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_Volume]
	mov r0, #8
	strb r0, [r5,#oOverworldNPCObject_Unk_0d]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl npc_809E5E2
	pop {pc}
	thumb_func_end npc_809E590

	thumb_local_start
npc_809E5E2:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_ChatTriggered]
	tst r0, r0
	beq loc_809E5F0
	bl sub_809F5FC
	b loc_809E658
loc_809E5F0:
	bl npc_809EBDC
	ldr r7, off_809E6C0 // =off_809E6A4 
	ldrb r0, [r5,#oOverworldNPCObject_CurAction]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	mov r0, #0
	ldr r2, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #8
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
	ldr r1, [r5,#oOverworldNPCObject_Unk_78]
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x80
	tst r0, r1
	bne loc_809E632
	bl sprite_noShadow // () -> void
	b loc_809E644
loc_809E632:
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, off_809E6C4 // =0x100 
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
	ldr r0, [r5,#oOverworldNPCObject_Flags_68]
	ldr r1, [r5,#oOverworldNPCObject_Flags_68_Update]
	cmp r0, r1
	beq loc_809E66E
	bl sub_8002FA6
loc_809E66E:
	ldrb r0, [r5,#oOverworldNPCObject_Unk_0e]
	strb r0, [r5,#oOverworldNPCObject_Unk_0f]
	ldrb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	ldrh r0, [r5,#oOverworldNPCObject_NPCSprite]
	strh r0, [r5,#oOverworldNPCObject_NPCSpriteUpdate]
	ldr r0, [r5,#oOverworldNPCObject_Flags_68]
	str r0, [r5,#oOverworldNPCObject_Flags_68_Update]
	bl sub_809F526
	ldr r0, [r5,#oOverworldNPCObject_Unk_64]
	tst r0, r0
	bne loc_809E690
	mov r0, r5
	add r0, #0x24 
	bl applyLayerEffectToOWObject_8035694
loc_809E690:
	bl sub_8002E14
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x40 
	tst r0, r1
	beq locret_809E6A0
	bl sub_809F922
locret_809E6A0:
	pop {pc}
	.balign 4, 0x00
off_809E6A4: .word sub_809E6C8+1
	.word npc_809E6DC+1
	.word npc_809E8CC+1
	.word npc_809EA3C+1
	.word sub_809EA74+1
	.word sub_809EA82+1
	.word npc_809EAA0+1
off_809E6C0: .word off_809E6A4
off_809E6C4: .word 0x100
	thumb_func_end npc_809E5E2

	thumb_local_start
sub_809E6C8:
	push {lr}
	ldrh r0, [r5,#oOverworldNPCObject_AnimationTimer]
	sub r0, #1
	strh r0, [r5,#oOverworldNPCObject_AnimationTimer]
	bne loc_809E6D6
	bl sub_809F516
loc_809E6D6:
	bl npc_809EBF8
	pop {pc}
	thumb_func_end sub_809E6C8

	thumb_local_start
npc_809E6DC:
	push {lr}
	ldr r7, off_809E700 // =jt_809E6F0 
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl npc_809EBF8
	pop {pc}
	.byte 0, 0
jt_809E6F0: .word npc_809E704+1
	.word npc_809E7D8+1
	.word npc_809E84E+1
	.word npc_809E878+1
off_809E700: .word jt_809E6F0
	thumb_func_end npc_809E6DC

	thumb_local_start
npc_809E704:
	push {lr}
	ldr r7, off_809E7C4 // =byte_809E77E
	ldrb r0, [r5,#oOverworldNPCObject_Unk_0e]
	lsl r0, r0, #2
	add r7, r7, r0
	ldr r0, [r5,#oOverworldNPCObject_X]
	mov r3, #0
	ldrsh r1, [r7,r3]
	lsl r1, r1, #0x10
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_Unk_70]
	ldr r0, [r5,#oOverworldNPCObject_Y]
	mov r3, #2
	ldrsh r1, [r7,r3]
	lsl r1, r1, #0x10
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_Unk_74]
	ldr r0, dword_809E7C8 // =0x80000
	ldrb r1, [r5,#oOverworldNPCObject_WalkingSpeed]
	push {r5}
	bl SWI_Div
	pop {r5}
	ldr r1, dword_809E7D4 // =0xfff 
	add r0, r0, r1
	lsr r0, r0, #0xc
	strh r0, [r5,#oOverworldNPCObject_AnimationTimer]
	ldr r7, off_809E7C0 // =byte_809E79E
	ldrb r0, [r5,#oOverworldNPCObject_Unk_0e]
	add r0, r0, r0
	add r7, r7, r0
	ldrb r4, [r5,#oOverworldNPCObject_WalkingSpeed]
	mov r3, #0
	ldrsb r1, [r7,r3]
	mul r1, r4
	lsl r1, r1, #0xc
	str r1, [r5,#oOverworldNPCObject_DeltaX]
	mov r3, #1
	ldrsb r1, [r7,r3]
	mul r1, r4
	lsl r1, r1, #0xc
	str r1, [r5,#oOverworldNPCObject_DeltaY]
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r1, [r5,#oOverworldNPCObject_DeltaX]
	ldr r0, [r5,#oOverworldNPCObject_X]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextX]
	ldr r1, [r5,#oOverworldNPCObject_DeltaY]
	ldr r0, [r5,#oOverworldNPCObject_Y]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextY]
	ldr r1, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r0, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_NextZ]
	bl sub_809F5B0
	pop {pc}
byte_809E77E: .byte 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xF8, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xF8, 0xFF
byte_809E79E: .byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x0, 0xFF
byte_809E7AE: .byte 0x0, 0x9, 0x0, 0xB, 0x0, 0xD, 0x0, 0xF
byte_809E7B6: .byte 0x0, 0x1, 0x0, 0x3, 0x0, 0x5, 0x0, 0x7, 0x0, 0x0
off_809E7C0: .word byte_809E79E
off_809E7C4: .word byte_809E77E
dword_809E7C8: .word 0x80000
	.word byte_809E7AE
	.word byte_809E7B6
dword_809E7D4: .word 0xFFF
	thumb_func_end npc_809E704

	thumb_local_start
npc_809E7D8:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x10
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
	ldrh r0, [r5,#oOverworldNPCObject_AnimationTimer]
	sub r0, #1
	strh r0, [r5,#oOverworldNPCObject_AnimationTimer]
	bne loc_809E81A
	ldr r0, [r5,#oOverworldNPCObject_Unk_70]
	str r0, [r5,#oOverworldNPCObject_X]
	ldr r0, [r5,#oOverworldNPCObject_Unk_74]
	str r0, [r5,#oOverworldNPCObject_Y]
	ldrb r0, [r5,#oOverworldNPCObject_WalkingTimer]
	sub r0, #1
	strb r0, [r5,#oOverworldNPCObject_WalkingTimer]
	bne loc_809E814
	bl sub_809F516
	pop {pc}
loc_809E814:
	bl npc_809E704
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
	mov r1, #0x20 
	lsl r1, r1, #4
	tst r0, r1
	bne loc_809E842
	mov r0, #0x24 
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
	thumb_func_end npc_809E7D8

	thumb_local_start
npc_809E84E:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r1, [r5,#oOverworldNPCObject_WalkingTimer]
	ldrb r2, [r5,#oOverworldNPCObject_Undetected_06]
	tst r0, r0
	beq loc_809E872
	sub r0, #1
	strb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	tst r1, r1
	bne loc_809E86A
	ldrh r1, [r5,#oOverworldNPCObject_Z16]
	add r1, r1, r2
	strh r1, [r5,#oOverworldNPCObject_Z16]
	b locret_809E870
loc_809E86A:
	ldrh r1, [r5,#oOverworldNPCObject_Z16]
	sub r1, r1, r2
	strh r1, [r5,#oOverworldNPCObject_Z16]
locret_809E870:
	pop {pc}
loc_809E872:
	bl sub_809F516
	pop {pc}
	thumb_func_end npc_809E84E

	thumb_local_start
npc_809E878:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	tst r0, r0
	beq loc_809E8BA
	sub r0, #1
	strb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldr r0, off_809E8C0 // =byte_809E8C4
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
	ldrb r1, [r5,#oOverworldNPCObject_WalkingTimer]
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
	bl sub_809F516
	pop {pc}
off_809E8C0: .word byte_809E8C4
byte_809E8C4: .byte 0x26, 0x0, 0x2A, 0x0, 0x26, 0x1, 0x2A, 0x1
	thumb_func_end npc_809E878

	thumb_local_start
npc_809E8CC:
	push {lr}
	ldr r7, off_809E8F8 // =jt_809E8E0 
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl npc_809EBF8
	pop {pc}
	.byte 0, 0
jt_809E8E0: .word npc_809E8FC+1
	.word npc_809E916+1
	.word npc_809E944+1
	.word npc_809E95E+1
	.word npc_809E9C0+1
	.word npc_809E9DA+1
off_809E8F8: .word jt_809E8E0
	thumb_func_end npc_809E8CC

	thumb_local_start
npc_809E8FC:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	mov r3, #5
	ldrsb r0, [r5,r3]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaY]
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	pop {pc}
	thumb_func_end npc_809E8FC

	thumb_local_start
npc_809E916:
	push {lr}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	ldr r0, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r1, [r5,#oOverworldNPCObject_DeltaY]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r1, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1
	cmp r0, r2
	bpl loc_809E940
	str r2, [r5,#oOverworldNPCObject_Z]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	bl sub_809F516
	pop {pc}
loc_809E940:
	str r0, [r5,#oOverworldNPCObject_Z]
	pop {pc}
	thumb_func_end npc_809E916

	thumb_local_start
npc_809E944:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	mov r3, #5
	ldrsb r0, [r5,r3]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaY]
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	mov r0, #0xc
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	pop {pc}
	thumb_func_end npc_809E944

	thumb_local_start
npc_809E95E:
	push {lr}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	push {r2}
	mov r3, #6
	ldrb r3, [r5,r3]
	lsl r3, r3, #1
	ldr r2, off_809E9B4 // =byte_809E9B8
	ldrb r0, [r2,r3]
	add r3, #1
	ldrb r1, [r2,r3]
	mov r3, #7
	ldrb r2, [r5,r3]
	tst r1, r1
	beq loc_809E98C
	ldrh r1, [r5,r0]
	sub r1, r1, r2
	strh r1, [r5,r0]
	b loc_809E992
loc_809E98C:
	ldrh r1, [r5,r0]
	add r1, r1, r2
	strh r1, [r5,r0]
loc_809E992:
	pop {r2}
	ldr r0, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r1, [r5,#oOverworldNPCObject_DeltaY]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r1, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1
	cmp r0, r2
	bpl loc_809E9B0
	str r2, [r5,#oOverworldNPCObject_Z]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	bl sub_809F516
	pop {pc}
loc_809E9B0:
	str r0, [r5,#oOverworldNPCObject_Z]
	pop {pc}
off_809E9B4: .word byte_809E9B8
byte_809E9B8: .byte 0x26, 0x0, 0x2A, 0x0, 0x26, 0x1, 0x2A, 0x1
	thumb_func_end npc_809E95E

	thumb_local_start
npc_809E9C0:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	mov r3, #5
	ldrsb r0, [r5,r3]
	lsl r0, r0, #0xc
	str r0, [r5,#oOverworldNPCObject_DeltaY]
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	mov r0, #0x14
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	pop {pc}
	thumb_func_end npc_809E9C0

	thumb_local_start
npc_809E9DA:
	push {lr}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	push {r2}
	mov r3, #6
	ldrb r3, [r5,r3]
	lsl r3, r3, #1
	ldr r2, off_809EA30 // =byte_809EA34 
	ldrb r0, [r2,r3]
	add r3, #1
	ldrb r1, [r2,r3]
	mov r3, #7
	ldrb r2, [r5,r3]
	tst r1, r1
	beq loc_809EA08
	ldrh r1, [r5,r0]
	sub r1, r1, r2
	strh r1, [r5,r0]
	b loc_809EA0E
loc_809EA08:
	ldrh r1, [r5,r0]
	add r1, r1, r2
	strh r1, [r5,r0]
loc_809EA0E:
	pop {r2}
	ldr r0, [r5,#oOverworldNPCObject_DeltaZ]
	ldr r1, [r5,#oOverworldNPCObject_DeltaY]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_DeltaZ]
	cmp r0, #0
	bgt loc_809EA26
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_InteractionLocked]
	bl sub_809F516
	pop {pc}
loc_809EA26:
	ldr r1, [r5,#oOverworldNPCObject_Z]
	add r0, r0, r1
	str r0, [r5,#oOverworldNPCObject_Z]
	pop {pc}
	.byte 0, 0
off_809EA30: .word byte_809EA34
byte_809EA34: .byte 0x26, 0x0, 0x2A, 0x0, 0x26, 0x1, 0x2A, 0x1
	thumb_func_end npc_809E9DA

	thumb_local_start
npc_809EA3C:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	tst r0, r0
	bne loc_809EA4A
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	b loc_809EA6E
loc_809EA4A:
	mov r7, #0x80
	ldr r7, [r5,r7]
	mov r1, #0xc0
	tst r7, r1
	beq loc_809EA62
	bl sprite_getFrameParameters
	tst r0, r7
	beq loc_809EA6E
	bl sub_809F516
	b loc_809EA6E
loc_809EA62:
	bl sprite_getFrameParameters
	cmp r0, r7
	bne loc_809EA6E
	bl sub_809F516
loc_809EA6E:
	bl npc_809EBF8
	pop {pc}
	thumb_func_end npc_809EA3C

	thumb_local_start
sub_809EA74:
	push {lr}
	ldr r7, [r5,#oOverworldNPCObject_Undetected_7c]
	mov lr, pc
	bx r7
	bl npc_809EBF8
	pop {pc}
	thumb_func_end sub_809EA74

	thumb_local_start
sub_809EA82:
	push {r4,r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	mov r7, #0x80
	ldr r0, [r5,r7]
	mov r7, #0x84
	ldr r1, [r5,r7]
	ldrb r0, [r4,r0]
	cmp r0, r1
	bne loc_809EA9A
	bl sub_809F516
loc_809EA9A:
	bl npc_809EBF8
	pop {r4,r7,pc}
	thumb_func_end sub_809EA82

	thumb_local_start
npc_809EAA0:
	push {r4,r7,lr}
	mov r7, #0x80
	ldr r0, [r5,r7]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_809EAD4
	bl sub_809F516
	mov r0, #1
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r0, #1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_809F51E
loc_809EAD4:
	bl npc_809EBF8
	pop {r4,r7,pc}
	thumb_func_end npc_809EAA0

	thumb_local_start
npc_809EADA:
	push {lr}
	ldr r7, off_809EB00 // =off_809EAFC 
	ldrb r0, [r5,#oOverworldNPCObject_CurAction]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	bl sprite_update
	bl sub_809F526
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x40 
	tst r0, r1
	beq locret_809EAFA
	bl sub_809F922
locret_809EAFA:
	pop {pc}
off_809EAFC: .word sub_809EB04+1
off_809EB00: .word off_809EAFC
	thumb_func_end npc_809EADA

	thumb_local_start
sub_809EB04:
	push {lr}
	ldr r7, off_809EB1C // =off_809EB14
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	pop {pc}
	.balign 4, 0x00
off_809EB14: .word npc_809EB20+1
	.word npc_809EBBC+1
off_809EB1C: .word off_809EB14
	thumb_func_end sub_809EB04

	thumb_local_start
npc_809EB20:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #2
	tst r0, r1
	bne loc_809EB54
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r7,#0x20]
	ldr r2, [r5,#oOverworldNPCObject_Y]
	sub r0, r0, r2
	ldr r1, [r7,#0x1c]
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
loc_809EB54:
	ldr r2, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, off_809EBB4 // =0x400 
	tst r2, r1
	beq loc_809EBA4
	ldr r1, dword_809EBB8 // =0x800 
	tst r2, r1
	beq loc_809EB76
	mov r7, r10
	ldr r7, [r7,#oToolkit_ChatboxPtr]
	mov r1, #0x90
	ldr r0, [r5,r1]
	str r0, [r7,#0x4c]
	bl sub_809FC96
	str r0, [r7,#0x54]
	str r1, [r7,#0x58]
	strb r2, [r5,#oOverworldNPCObject_TextScriptIndex]
loc_809EB76:
	cmp r3, #8
	bne loc_809EB98
	cmp r0, #0x70 
	bne loc_809EB98
	push {r0,r1,r3-r7}
	bl GetCurPETNavi // () -> u8
	mov r2, r0
	pop {r0,r1,r3-r7}
	cmp r2, #0
	beq loc_809EB98
	mov r2, #0x94 // NPC.scriptArray
	ldr r0, [r5,r2]
	mov r1, #0x78 
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_809EBAA
loc_809EB98:
	mov r2, #0x94
	ldr r0, [r5,r2]
	ldrb r1, [r5,#oOverworldNPCObject_TextScriptIndex]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	b loc_809EBAA
loc_809EBA4:
	ldrb r0, [r5,#oOverworldNPCObject_TextScriptIndex]
	bl chatbox_runScript_202da04 // (u8 scriptID) -> void
loc_809EBAA:
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	bl npc_809EBBC
	pop {pc}
off_809EBB4: .word 0x400
dword_809EBB8: .word 0x800
	thumb_func_end npc_809EB20

	thumb_local_start
npc_809EBBC:
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
	thumb_func_end npc_809EBBC

	thumb_local_start
npc_809EBDC:
	push {lr}
loc_809EBDE:
	ldrb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	tst r0, r0
	bne locret_809EBF6
	ldr r6, [r5,#oOverworldNPCObject_AnimationScriptPtr]
	ldrb r0, [r6]
	lsl r0, r0, #2
	ldr r7, off_809EC2C // =npc_jt_commands 
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	str r6, [r5,#oOverworldNPCObject_AnimationScriptPtr]
	b loc_809EBDE
locret_809EBF6:
	pop {pc}
	thumb_func_end npc_809EBDC

	thumb_local_start
npc_809EBF8:
	push {lr}
loc_809EBFA:
	ldrb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]
	tst r0, r0
	bne loc_809EC16
	ldr r6, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	tst r6, r6
	beq locret_809EC1A
	ldrb r0, [r6]
	lsl r0, r0, #2
	ldr r7, off_809EC2C // =npc_jt_commands 
	ldr r7, [r7,r0]
	mov lr, pc
	bx r7
	str r6, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	b loc_809EBFA
loc_809EC16:
	bl npc_809EC1C
locret_809EC1A:
	pop {pc}
	thumb_func_end npc_809EBF8

	thumb_local_start
npc_809EC1C:
	push {lr}
	ldrh r0, [r5,#oOverworldNPCObject_Timer_20]
	sub r0, #1
	strh r0, [r5,#oOverworldNPCObject_Timer_20]
	bne locret_809EC2A
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]
locret_809EC2A:
	pop {pc}
off_809EC2C: .word npc_jt_commands
npc_jt_commands: .word npc_00_terminateScript+1
	.word 0x0
	.word npc_809ED88+1
	.word npc_809ED94+1
	.word npc_809EDB2+1
	.word npc_809EDD0+1
	.word npc_809EDEE+1
	.word npc_809EE00+1
	.word npc_809EE12+1
	.word npc_809EE1A+1
	.word npc_809EE22+1
	.word npc_809EE2A+1
	.word npc_809EE32+1
	.word npc_809EE48+1
	.word npc_809EE56+1
	.word npc_809EE62+1
	.word npc_809EE6C+1
	.word npc_809EE82+1
	.word npc_809EE9C+1
	.word npc_809EEAA+1
	.word npc_809EEB6+1
	.word npc_809EEDA+1
	.word npc_809EEF8+1
	.word npc_809EF00+1
	.word npc_809EF40+1
	.word npc_809EF48+1
	.word npc_809EF50+1
	.word npc_809EF58+1
	.word npc_809EF60+1
	.word npc_809EF6E+1
	.word npc_809EF82+1
	.word npc_809EF9A+1
	.word npc_809EFA6+1
	.word npc_809EFB4+1
	.word npc_809EFC6+1
	.word npc_809EFD8+1
	.word npc_809EFFC+1
	.word npc_809F01C+1
	.word npc_809F030+1
	.word npc_809F03C+1
	.word npc_809F048+1
	.word npc_809F058+1
	.word sub_809F0EC+1
	.word sub_809F104+1
	.word 0x0
	.word sub_809F114+1
	.word sub_809F12C+1
	.word sub_809F138+1
	.word sub_809F150+1
	.word sub_809F15A+1
	.word sub_809F16E+1
	.word sub_809F17C+1
	.word sub_809F18E+1
	.word sub_809F198+1
	.word sub_809F1C6+1
	.word sub_809F1D8+1
	.word sub_809F218+1
	.word sub_809F23E+1
	.word sub_809F26A+1
	.word sub_809F270+1
	.word sub_809F292+1
	.word sub_809F2A2+1
	.word sub_809F2C0+1
	.word sub_809F2DE+1
	.word sub_809F2FC+1
	.word sub_809F30C+1
	.word 0x0
	.word 0x0
	.word sub_809F31C+1
	.word sub_809F338+1
	.word sub_809F354+1
	.word sub_809F36E+1
	.word sub_809F37E+1
	.word sub_809F388+1
	.word sub_809F392+1
	.word sub_809F3A6+1
	.word sub_809F3C0+1
	.word sub_809F3E8+1
	.word sub_809F3F6+1
	.word sub_809F418+1
	.word sub_809F438+1
	.word sub_809F45A+1
	.word sub_809F4B8+1
	.word npc_809F4EE+1
	thumb_func_end npc_809EC1C

	thumb_local_start
npc_00_terminateScript:
	push {lr}
	bl npc_809F51E
	pop {pc}
	thumb_func_end npc_00_terminateScript

	thumb_local_start
npc_809ED88:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end npc_809ED88

	thumb_local_start
npc_809ED94:
	push {lr}
	mov r0, #1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_809F51E
	pop {pc}
	thumb_func_end npc_809ED94

	thumb_local_start
npc_809EDB2:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_809EDCC
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
loc_809EDCC:
	add r6, #7
	pop {pc}
	thumb_func_end npc_809EDB2

	thumb_local_start
npc_809EDD0:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_809EDEA
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
loc_809EDEA:
	add r6, #7
	pop {pc}
	thumb_func_end npc_809EDD0

	thumb_local_start
npc_809EDEE:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl SetEventFlag
	add r6, #3
	pop {pc}
	thumb_func_end npc_809EDEE

	thumb_local_start
npc_809EE00:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r6, #3
	pop {pc}
	thumb_func_end npc_809EE00

	thumb_local_start
npc_809EE12:
	mov r0, #3
	strb r0, [r5,#oObjectHeader_Flags]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EE12

	thumb_local_start
npc_809EE1A:
	mov r0, #1
	strb r0, [r5,#oObjectHeader_Flags]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EE1A

	thumb_local_start
npc_809EE22:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_Volume]
	add r6, #2
	mov pc, lr
	thumb_func_end npc_809EE22

	thumb_local_start
npc_809EE2A:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_Unk_0d]
	add r6, #2
	mov pc, lr
	thumb_func_end npc_809EE2A

	thumb_local_start
npc_809EE32:
	mov r1, #1
	ldrsb r0, [r6,r1]
	strb r0, [r5,#oOverworldNPCObject_Unk_11]
	mov r1, #2
	ldrsb r0, [r6,r1]
	strb r0, [r5,#oOverworldNPCObject_Unk_12]
	mov r1, #3
	ldrsb r0, [r6,r1]
	strb r0, [r5,#oOverworldNPCObject_Unk_13]
	add r6, #4
	mov pc, lr
	thumb_func_end npc_809EE32

	thumb_local_start
npc_809EE48:
	mov r0, #1
	mvn r0, r0
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	and r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EE48

	thumb_local_start
npc_809EE56:
	mov r0, #1
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EE56

	thumb_local_start
npc_809EE62:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_PaletteIndex]
	add r6, #2
	pop {pc}
	thumb_func_end npc_809EE62

	thumb_local_start
npc_809EE6C:
	push {lr}
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_AnimationTimer]
	bl npc_809F51E
	add r6, #2
	pop {pc}
	thumb_func_end npc_809EE6C

	thumb_local_start
npc_809EE82:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r0, [r6,#2]
	strb r0, [r5,#oOverworldNPCObject_WalkingTimer]
	mov r0, #8
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #3
	pop {pc}
	thumb_func_end npc_809EE82

	thumb_local_start
npc_809EE9C:
	mov r0, #2
	mvn r0, r0
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	and r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EE9C

	thumb_local_start
npc_809EEAA:
	mov r0, #2
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EEAA

	thumb_local_start
npc_809EEB6:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_X]
	add r0, r6, #3
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Y]
	add r0, r6, #5
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	lsl r0, r0, #0x10
	str r0, [r5,#oOverworldNPCObject_Z]
	add r6, #7
	pop {pc}
	thumb_func_end npc_809EEB6

	thumb_local_start
npc_809EEDA:
	push {lr}
	ldrb r2, [r6,#1]
	strb r2, [r5,#oOverworldNPCObject_Unk_0e]
	ldrb r2, [r6,#2]
	strb r2, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r2, [r6,#3]
	strb r2, [r5,#oOverworldNPCObject_WalkingTimer]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #4
	pop {pc}
	thumb_func_end npc_809EEDA

	thumb_local_start
npc_809EEF8:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	add r6, #2
	mov pc, lr
	thumb_func_end npc_809EEF8

	thumb_local_start
npc_809EF00:
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	mov r1, #0
	strb r1, [r5,#oOverworldNPCObject_PaletteIndex]
	str r1, [r5,#oOverworldNPCObject_Flags_68]
	ldr r1, off_809EF3C // =byte_809E530
	mov r3, #0
loc_809EF0E:
	ldrb r2, [r1,r3]
	cmp r2, r0
	beq loc_809EF1C
	cmp r2, #0xff
	beq loc_809EF2A
	add r3, #3
	b loc_809EF0E
loc_809EF1C:
	add r3, #1
	ldrb r0, [r1,r3]
	lsl r0, r0, #0x18
	str r0, [r5,#oOverworldNPCObject_Flags_68]
	add r3, #1
	ldrb r0, [r1,r3]
	strb r0, [r5,#oOverworldNPCObject_PaletteIndex]
loc_809EF2A:
	mov r0, #0x18
	str r0, [r5,#oOverworldNPCObject_Unk_78]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #2
	mov pc, lr
	.balign 4, 0x00
off_809EF3C: .word byte_809E530
	thumb_func_end npc_809EF00

	thumb_local_start
npc_809EF40:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_TextScriptIndex]
	add r6, #2
	mov pc, lr
	thumb_func_end npc_809EF40

	thumb_local_start
npc_809EF48:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_Unk_64]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EF48

	thumb_local_start
npc_809EF50:
	mov r0, #2
	str r0, [r5,#oOverworldNPCObject_Unk_64]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EF50

	thumb_local_start
npc_809EF58:
	mov r0, #3
	str r0, [r5,#oOverworldNPCObject_Unk_64]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EF58

	thumb_local_start
npc_809EF60:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_Flags_68]
	add r6, #5
	pop {pc}
	thumb_func_end npc_809EF60

	thumb_local_start
npc_809EF6E:
	push {lr}
	ldrb r0, [r6,#1]
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r0
	ldr r0, [r5,#oOverworldNPCObject_Flags_68]
	orr r0, r1
	str r0, [r5,#oOverworldNPCObject_Flags_68]
	add r6, #2
	pop {pc}
	thumb_func_end npc_809EF6E

	thumb_local_start
npc_809EF82:
	push {lr}
	ldrb r0, [r6,#1]
	ldrb r0, [r6,#1]
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r0
	mvn r1, r1
	ldr r0, [r5,#oOverworldNPCObject_Flags_68]
	and r0, r1
	str r0, [r5,#oOverworldNPCObject_Flags_68]
	add r6, #2
	pop {pc}
	thumb_func_end npc_809EF82

	thumb_local_start
npc_809EF9A:
	mov r0, #4
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EF9A

	thumb_local_start
npc_809EFA6:
	mov r0, #4
	mvn r0, r0
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	and r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809EFA6

	thumb_local_start
npc_809EFB4:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sprite_noShadow // () -> void
	add r6, #1
	pop {pc}
	thumb_func_end npc_809EFB4

	thumb_local_start
npc_809EFC6:
	push {lr}
	ldr r0, dword_809EFF4 // =0x180
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sprite_hasShadow
	add r6, #1
	pop {pc}
	thumb_func_end npc_809EFC6

	thumb_local_start
npc_809EFD8:
	push {lr}
	mov r0, #0x80
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, dword_809EFF8 // =0x100
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	bl sprite_removeShadow
	add r6, #1
	pop {pc}
	.balign 4, 0x00
dword_809EFF4: .word 0x180
dword_809EFF8: .word 0x100
	thumb_func_end npc_809EFD8

	thumb_local_start
npc_809EFFC:
	push {lr}
	bl GetCurPETNavi // () -> u8
	ldr r1, off_809F018 // =byte_809D328
	ldrb r0, [r1,r0]
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	mov r0, #0x18
	str r0, [r5,#oOverworldNPCObject_Unk_78]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	pop {pc}
off_809F018: .word byte_809D328
	thumb_func_end npc_809EFFC

	thumb_local_start
npc_809F01C:
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_NPCSprite]
	ldrb r0, [r6,#2]
	str r0, [r5,#oOverworldNPCObject_Unk_78]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #0x80
	bic r0, r1
	str r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #3
	mov pc, lr
	thumb_func_end npc_809F01C

	thumb_local_start
npc_809F030:
	mov r0, #8
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	eor r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809F030

	thumb_local_start
npc_809F03C:
	mov r0, #0x10
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	mov pc, lr
	thumb_func_end npc_809F03C

	thumb_local_start
npc_809F048:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl PlaySoundEffect
	add r6, #3
	pop {pc}
	thumb_func_end npc_809F048

	thumb_local_start
npc_809F058:
	push {lr}
	mov r0, #0xc0
	lsl r0, r0, #4
	mov r1, #2
	orr r0, r1
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r1, #0x90
	str r0, [r5,r1]
	bl sub_809FC1C
	tst r0, r0
	beq loc_809F0BE
	ldr r4, off_809F0E0 // =byte_809F0E4
	ldrb r4, [r4,r0]
	strb r4, [r5,#oOverworldNPCObject_PaletteIndex]
	mov r4, #0x40 
	mul r4, r1
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r4
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r3, #0xff
	strb r3, [r5,#oOverworldNPCObject_TextScriptIndex]
	ldr r0, off_809F0DC // =dword_873D108 
	mov r1, #0x94
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
	strb r0, [r5,#oOverworldNPCObject_Volume]
	mov r0, #2
	strb r0, [r5,#oOverworldNPCObject_Unk_11]
	mov r0, #2
	neg r0, r0
	strb r0, [r5,#oOverworldNPCObject_Unk_12]
	add r6, #3
	pop {pc}
loc_809F0BE:
	mov r0, #1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_809F51E
	pop {pc}
	.balign 4, 0x00
off_809F0DC: .word dword_873D108
off_809F0E0: .word byte_809F0E4
byte_809F0E4: .byte 0xFF, 0x0, 0x0, 0x2, 0x2, 0x1, 0x3, 0xFF
	thumb_func_end npc_809F058

	thumb_local_start
sub_809F0EC:
	push {lr}
	ldrb r0, [r6,#1]
	mov r7, #0x80
	str r0, [r5,r7]
	mov r0, #0xc
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #2
	pop {pc}
	thumb_func_end sub_809F0EC

	thumb_local_start
sub_809F104:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl sprite_setColorShader
	add r6, #3
	pop {pc}
	thumb_func_end sub_809F104

	thumb_local_start
sub_809F114:
	push {lr}
	bl sub_8002F2C
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	add r2, r0, r1
	tst r2, r2
	beq loc_809F128
	bl sprite_setMosaicSize
loc_809F128:
	add r6, #3
	pop {pc}
	thumb_func_end sub_809F114

	thumb_local_start
sub_809F12C:
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	mvn r0, r0
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	add r6, #2
	mov pc, lr
	thumb_func_end sub_809F12C

	thumb_local_start
sub_809F138:
	push {lr}
	bl sprite_makeUnscalable
	bl sprite_makeScalable
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	ldrb r2, [r6,#3]
	bl sprite_setScaleParameters
	add r6, #4
	pop {pc}
	thumb_func_end sub_809F138

	thumb_local_start
sub_809F150:
	push {lr}
	bl sprite_makeUnscalable
	add r6, #1
	pop {pc}
	thumb_func_end sub_809F150

	thumb_local_start
sub_809F15A:
	push {lr}
	bl sub_8002CCE
	ldrb r0, [r6,#1]
	tst r0, r0
	beq loc_809F16A
	bl sprite_setMosaicScalingParameters_8002c7a
loc_809F16A:
	add r6, #2
	pop {pc}
	thumb_func_end sub_809F15A

	thumb_local_start
sub_809F16E:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	add r6, #5
	pop {pc}
	thumb_func_end sub_809F16E

	thumb_local_start
sub_809F17C:
	push {lr}
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_Unk_0b]
	ldrb r0, [r6,#1]
	strh r0, [r5,#oOverworldNPCObject_Timer_20]
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_1f]
	add r6, #2
	pop {pc}
	thumb_func_end sub_809F17C

	thumb_local_start
sub_809F18E:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_UnkNPCScriptPtr_5c]
	strh r0, [r5,#oOverworldNPCObject_Timer_20]
	mov r6, #0
	mov pc, lr
	thumb_func_end sub_809F18E

	thumb_local_start
sub_809F198:
	push {lr}
	mov r4, #0x8c
	add r0, r6, #5
	str r0, [r5,r4]
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_Undetected_7c]
	mov r0, #0x10
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	mov r2, #0x8c
	mov r1, #0x80
	mov r0, #0
loc_809F1B6:
	str r0, [r5,r1]
	add r1, #4
	cmp r1, r2
	ble loc_809F1B6
	bl npc_809F51E
	add r6, #5
	pop {pc}
	thumb_func_end sub_809F198

	thumb_local_start
sub_809F1C6:
	push {lr}
	mov r4, #0x8c
	add r0, r6, #5
	str r0, [r5,r4]
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end sub_809F1C6

	thumb_local_start
sub_809F1D8:
	push {lr}
	mov r4, #0x8c
	mov r1, #9
	add r0, r6, r1
	str r0, [r5,r4]
	ldrb r2, [r6,#1]
	strb r2, [r5,#oOverworldNPCObject_Unk_0e]
	ldrb r2, [r6,#2]
	strb r2, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r2, [r6,#3]
	strb r2, [r5,#oOverworldNPCObject_WalkingTimer]
	ldrb r2, [r6,#4]
	strh r2, [r5,#oOverworldNPCObject_AnimationTimer]
	add r0, r6, #5
	bl ReadNPCScriptWord // (void* a1) -> int
	str r0, [r5,#oOverworldNPCObject_Undetected_7c]
	mov r0, #0x10
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	mov r2, #0x8c
	mov r1, #0x80
	mov r0, #0
loc_809F208:
	str r0, [r5,r1]
	add r1, #4
	cmp r1, r2
	ble loc_809F208
	bl npc_809F51E
	add r6, #9
	pop {pc}
	thumb_func_end sub_809F1D8

	thumb_local_start
sub_809F218:
	push {lr}
	mov r4, #0x8c
	mov r1, #8
	add r0, r6, r1
	str r0, [r5,r4]
	ldrb r2, [r6,#1]
	mov r4, #0x81
	strb r2, [r5,r4]
	ldrb r2, [r6,#2]
	mov r4, #0x82
	strb r2, [r5,r4]
	ldrb r2, [r6,#3]
	mov r4, #0x83
	strb r2, [r5,r4]
	add r0, r6, #4
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end sub_809F218

	thumb_local_start
sub_809F23E:
	push {lr}
	ldrb r0, [r6,#1]
	mov r4, #0x81
	ldrb r2, [r5,r4]
	add r2, r2, r0
	mov r0, #7
	and r2, r0
	strb r2, [r5,#oOverworldNPCObject_Unk_0e]
	mov r4, #0x82
	ldrb r2, [r5,r4]
	strb r2, [r5,#oOverworldNPCObject_WalkingSpeed]
	mov r4, #0x83
	ldrb r2, [r5,r4]
	strb r2, [r5,#oOverworldNPCObject_WalkingTimer]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #2
	pop {pc}
	thumb_func_end sub_809F23E

	thumb_local_start
sub_809F26A:
	mov r4, #0x8c
	ldr r6, [r5,r4]
	mov pc, lr
	thumb_func_end sub_809F26A

	thumb_local_start
sub_809F270:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_GameProgress]
	ldrb r1, [r6,#1]
	cmp r0, r1
	blt loc_809F28E
	ldrb r2, [r6,#2]
	cmp r0, r2
	bgt loc_809F28E
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	b locret_809F290
loc_809F28E:
	add r6, #7
locret_809F290:
	pop {pc}
	thumb_func_end sub_809F270

	thumb_local_start
sub_809F292:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	strb r1, [r4,r0]
	add r6, #3
	pop {pc}
	thumb_func_end sub_809F292

	thumb_local_start
sub_809F2A2:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	ldrb r0, [r4,r0]
	cmp r0, r1
	bne loc_809F2BC
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
loc_809F2BC:
	add r6, #7
	pop {pc}
	thumb_func_end sub_809F2A2

	thumb_local_start
sub_809F2C0:
	push {lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_CutsceneStatePtr]
	ldrb r0, [r6,#1]
	ldrb r1, [r6,#2]
	ldrb r0, [r4,r0]
	cmp r0, r1
	beq loc_809F2DA
	add r0, r6, #3
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
loc_809F2DA:
	add r6, #7
	pop {pc}
	thumb_func_end sub_809F2C0

	thumb_local_start
sub_809F2DE:
	push {r7,lr}
	mov r0, #0x14
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	ldrb r0, [r6,#1]
	mov r7, #0x80
	str r0, [r5,r7]
	ldrb r0, [r6,#2]
	mov r7, #0x84
	str r0, [r5,r7]
	bl npc_809F51E
	add r6, #3
	pop {r7,pc}
	thumb_func_end sub_809F2DE

	thumb_local_start
sub_809F2FC:
	push {lr}
	mov r0, #0x20 
	lsl r0, r0, #4
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	bic r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	pop {pc}
	thumb_func_end sub_809F2FC

	thumb_local_start
sub_809F30C:
	push {lr}
	mov r0, #0x20 
	lsl r0, r0, #4
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r6, #1
	pop {pc}
	thumb_func_end sub_809F30C

	thumb_local_start
sub_809F31C:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_TextScriptIndex]
	ldr r0, off_809F6AC // =0x400 
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	add r0, r6, #2
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r1, #0x94
	str r0, [r5,r1]
	add r6, #6
	pop {pc}
	thumb_func_end sub_809F31C

	thumb_local_start
sub_809F338:
	push {r7,lr}
	mov r0, #0x18
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r7, #0x80
	str r0, [r5,r7]
	bl npc_809F51E
	add r6, #3
	pop {r7,pc}
	thumb_func_end sub_809F338

	thumb_local_start
sub_809F354:
	push {lr}
	mov r7, r10
	ldr r4, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldr r7, TextScriptDialog87E30A0_p // =TextScriptDialog87E30A0
	bl sub_8002C68
	ldrb r0, [r6,#1]
	tst r0, r0
	bne loc_809F36A
	bl sub_8002C52
loc_809F36A:
	add r6, #2
	pop {pc}
	thumb_func_end sub_809F354

	thumb_local_start
sub_809F36E:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl PlayMusic
	add r6, #3
	pop {pc}
	thumb_func_end sub_809F36E

	thumb_local_start
sub_809F37E:
	push {lr}
	bl sub_8003006
	add r6, #1
	pop {pc}
	thumb_func_end sub_809F37E

	thumb_local_start
sub_809F388:
	push {lr}
	bl sprite_removeShadow
	add r6, #1
	pop {pc}
	thumb_func_end sub_809F388

	thumb_local_start
sub_809F392:
	push {lr}
	add r0, r6, #2
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r1, r0
	ldrb r0, [r6,#1]
	bl camera_initShakeEffect_80302a8
	add r6, #4
	pop {pc}
	thumb_func_end sub_809F392

	thumb_local_start
sub_809F3A6:
	push {lr}
	ldrb r0, [r6,#1]
	ldrb r1, [r5,#oOverworldNPCObject_AnimationSelect]
	cmp r1, r0
	bne loc_809F3B4
	add r6, #6
	pop {pc}
loc_809F3B4:
	add r6, #2
	mov r0, r6
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
	thumb_func_end sub_809F3A6

	thumb_local_start
sub_809F3C0:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_TextScriptIndex]
	ldr r0, off_809F6AC // =0x400 
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r3, off_809F3D8 // =byte_202FA04 
	mov r1, #0x94
	str r3, [r5,r1]
	add r6, #2
	pop {pc}
off_809F3D8: .word byte_202FA04
	.word off_809F3E0
off_809F3E0: .word off_8044470
	.word off_80444C4
	thumb_func_end sub_809F3C0

	thumb_local_start
sub_809F3E8:
	push {lr}
	add r0, r6, #5
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	b locret_809F3F4
locret_809F3F4:
	pop {pc}
	thumb_func_end sub_809F3E8

	thumb_local_start
sub_809F3F6:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r0, [r6,#2]
	strb r0, [r5,#oOverworldNPCObject_WalkingTimer]
	ldrb r0, [r6,#3]
	strb r0, [r5,#oOverworldNPCObject_Undetected_06]
	ldrb r0, [r6,#4]
	strb r0, [r5,#oOverworldNPCObject_Unk_07]
	mov r0, #8
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #8
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #5
	pop {pc}
	thumb_func_end sub_809F3F6

	thumb_local_start
sub_809F418:
	push {lr}
	ldrb r2, [r6,#1]
	strb r2, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r2, [r6,#2]
	strb r2, [r5,#oOverworldNPCObject_WalkingTimer]
	ldrb r2, [r6,#3]
	strb r2, [r5,#oOverworldNPCObject_Undetected_06]
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #8
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_809F418

	thumb_local_start
sub_809F438:
	push {lr}
	ldrb r0, [r6,#1]
	strb r0, [r5,#oOverworldNPCObject_WalkingSpeed]
	ldrb r0, [r6,#2]
	strb r0, [r5,#oOverworldNPCObject_WalkingTimer]
	ldrb r0, [r6,#3]
	strb r0, [r5,#oOverworldNPCObject_Undetected_06]
	ldrb r0, [r6,#4]
	strb r0, [r5,#oOverworldNPCObject_Unk_07]
	mov r0, #8
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	mov r0, #0x10
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	bl npc_809F51E
	add r6, #5
	pop {pc}
	thumb_func_end sub_809F438

	thumb_local_start
sub_809F45A:
	push {lr}
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_809F498
	add r0, r6, #1
	bl ReadNPCScriptHalfword // (u8 bitfield_arr[2]) -> u16
	bl sub_8143B88
	tst r1, r1
	beq loc_809F498
	strb r2, [r5,#oOverworldNPCObject_TextScriptIndex]
	ldr r3, TextScriptDialog87E30A0_p // =TextScriptDialog87E30A0
	mov r2, #0x94
	str r3, [r5,r2]
	mov r0, r1
	bl sub_8143DBC
	str r0, [r5,#oOverworldNPCObject_X]
	str r1, [r5,#oOverworldNPCObject_Y]
	str r2, [r5,#oOverworldNPCObject_Z]
	add r6, #3
	ldr r0, dword_809F6B0 // =0x1400 
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	pop {pc}
loc_809F498:
	mov r0, #1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x80
	mov r1, #0x1c
	mov r2, #0xa0
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl FreeOverworldNPCObject
	bl npc_809F51E
	pop {pc}
TextScriptDialog87E30A0_p: .word TextScriptDialog87E30A0
	thumb_func_end sub_809F45A

	thumb_local_start
sub_809F4B8:
	push {lr}
	bl sprite_getFrameParameters
	mov r0, #7
	and r0, r2
	add r0, #0x21 
	strb r0, [r5,#oOverworldNPCObject_AnimationSelect]
	mvn r0, r0
	strb r0, [r5,#oOverworldNPCObject_AnimationSelectUpdate]
	mov r0, #0x11
	ldr r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	orr r1, r0
	str r1, [r5,#oOverworldNPCObject_UnkFlags_60]
	push {r5}
	mov r0, #0
	ldr r1, [r5,#oOverworldNPCObject_X]
	ldr r2, [r5,#oOverworldNPCObject_Y]
	ldr r3, [r5,#oOverworldNPCObject_Z]
	mov r4, #1
	bl SpawnOverworldMapObject
	pop {r5}
	mov r0, #SOUND_LOG_OUT_76
	bl PlaySoundEffect
	add r6, #1
	pop {pc}
	thumb_func_end sub_809F4B8

	thumb_local_start
npc_809F4EE:
	push {lr}
	bl screenFade_80062C8
	cmp r1, #0
	beq loc_809F502
	add r0, r6, #1
	bl ReadNPCScriptWord // (void* a1) -> int
	mov r6, r0
	pop {pc}
loc_809F502:
	add r6, #5
	pop {pc}
	thumb_func_end npc_809F4EE

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
sub_809F516:
	push {lr}
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	pop {pc}
	thumb_func_end sub_809F516

	thumb_local_start
npc_809F51E:
	push {lr}
	mov r0, #1
	strb r0, [r5,#oOverworldNPCObject_TerminateScript_19]
	pop {pc}
	thumb_func_end npc_809F51E

	thumb_local_start
sub_809F526:
	push {r7,lr}
	ldr r7, [r5, #oOverworldNPCObject_UnkFlags_60]
	ldrb r0, [r5,#oOverworldNPCObject_ObjectHeader]
	mov r1, #1
	tst r0, r1
	beq loc_809F598
	push {r5}
	ldr r4, dword_809F5A0 // =0x20000 
	mov r1, #4
	tst r7, r1
	beq loc_809F53E
	mov r4, #0
loc_809F53E:
	ldr r0, [r5,#oOverworldNPCObject_X]
	mov r6, #0x11
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r0, r0, r6
	ldr r1, [r5,#oOverworldNPCObject_Y]
	mov r6, #0x12
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r1, r1, r6
	ldrb r2, [r5,#oOverworldNPCObject_InteractionLocked]
	cmp r2, #0
	beq loc_809F56A
	push {r0,r1,r3-r5}
	mov r0, #0x24 
	add r0, r0, r5
	bl sub_8031612
	mov r2, r0
	lsl r2, r2, #0x10
	pop {r0,r1,r3-r5}
	b loc_809F56C
loc_809F56A:
	ldr r2, [r5,#oOverworldNPCObject_Z]
loc_809F56C:
	mov r6, #0x13
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r2, r2, r6
	mov r6, #0x50 
	add r6, r6, r5
	ldrh r3, [r5,#oOverworldNPCObject_Volume_Unk_0d]
	push {r0-r5}
	ldr r5, dword_809F5A4 // =0x50001 
	bl sub_80037AC
	mov r1, #0x14
	tst r7, r1
	pop {r0-r5}
	bne loc_809F596
	mov r6, #0x58 
	add r6, r6, r5
	ldr r4, dword_809F5A8 // =0x400000 
	ldr r5, dword_809F5AC // =0xa00000 
	bl sub_80037AC
loc_809F596:
	pop {r5}
loc_809F598:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_Unk_50]
	str r0, [r5,#oOverworldNPCObject_Unk_58]
	pop {r7,pc}
dword_809F5A0: .word 0x20000
dword_809F5A4: .word 0x50001
dword_809F5A8: .word 0x400000
dword_809F5AC: .word 0xA00000
	thumb_func_end sub_809F526

	thumb_local_start
sub_809F5B0:
	push {lr}
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	mov r1, #4
	tst r0, r1
	bne loc_809F5EA
	push {r5}
	ldr r0, [r5,#oOverworldNPCObject_NextX]
	mov r6, #0x11
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r0, r0, r6
	ldr r1, [r5,#oOverworldNPCObject_NextY]
	mov r6, #0x12
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r1, r1, r6
	ldr r2, [r5,#oOverworldNPCObject_NextZ]
	mov r6, #0x13
	ldrsb r6, [r5,r6]
	lsl r6, r6, #0x10
	add r2, r2, r6
	mov r6, #0x54 
	add r6, r6, r5
	ldr r3, dword_809F5F0 // =0x804 
	ldr r4, dword_809F5F4 // =0x80000 
	ldr r5, dword_809F5F8 // =0x50000 
	bl sub_80037AC
	pop {r5}
loc_809F5EA:
	mov r0, #0
	str r0, [r5,#oOverworldNPCObject_Unk_54]
	pop {pc}
dword_809F5F0: .word 0x804
dword_809F5F4: .word 0x80000
dword_809F5F8: .word 0x50000
	thumb_func_end sub_809F5B0

	thumb_local_start
sub_809F5FC:
	push {lr}
	ldrb r0, [r5,#oOverworldNPCObject_CurAction]
	strb r0, [r5,#oOverworldNPCObject_Unk_1d]
	ldrb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	strb r0, [r5,#oOverworldNPCObject_Unk_1e]
	mov r0, #8
	strb r0, [r5,#oOverworldNPCObject_CurState]
	mov r0, #0
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	strh r0, [r5,#oOverworldNPCObject_MovementFlag_0a_Unk_0b]
	pop {pc}
	thumb_func_end sub_809F5FC

	thumb_local_start
sub_809F612:
	push {lr}
	mov r0, #4
	strb r0, [r5,#oOverworldNPCObject_CurState]
	ldrb r0, [r5,#oOverworldNPCObject_Unk_1d]
	strb r0, [r5,#oOverworldNPCObject_CurAction]
	ldrb r0, [r5,#oOverworldNPCObject_Unk_1e]
	strb r0, [r5,#oOverworldNPCObject_MovementFlag_0a]
	ldr r0, [r5,#oOverworldNPCObject_UnkFlags_60]
	ldr r1, dword_809F6B4 // =0x1002 
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
	ldr r2, off_809F6A8 // =0xd80 
	add r2, r2, r3
loc_809F694:
	ldr r0, [r3,#0x50]
	mov r1, #1
	bic r0, r1
	str r0, [r3,#0x50]
	add r3, #0xd8
	cmp r3, r2
	blt loc_809F694
	pop {pc}
off_809F6A4: .word eOverworldNPCObjects
off_809F6A8: .word 0xD80
off_809F6AC: .word 0x400
dword_809F6B0: .word 0x1400
dword_809F6B4: .word 0x1002
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
