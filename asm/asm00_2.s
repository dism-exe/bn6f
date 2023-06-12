
	thumb_func_start sub_800ED80
sub_800ED80:
	ldr r1, [r0,#oAIData_Unk_7c]
	ldr r2, off_800ED8C // =eUsedAIDataBitfield 
	ldr r3, [r2]
	bic r3, r1
	str r3, [r2]
	mov pc, lr
off_800ED8C: .word eUsedAIDataBitfield
	thumb_func_end sub_800ED80

	thumb_func_start sub_800ED90
sub_800ED90:
	push {r5,r7,lr}
	mov r5, r0
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne loc_800EDC6
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	ldrb r1, [r0]
	add r1, r1, r1
	add r0, r0, r1
	add r0, #2
	mov r7, r0
	ldrh r0, [r7]
	mov r1, #0
	bl sub_800EF34
	ldrh r2, [r7,#0x18]
	add r2, r2, r0
	ldrh r0, [r7,#0x24]
	add r2, r2, r0
	ldrh r1, [r7,#0xc]
	ldrh r0, [r7]
	ldrb r3, [r5,#oBattleObject_ChipsHeld]
	pop {r5,r7,pc}
loc_800EDC6:
	ldrh r0, [r5,#oBattleObject_Chip]
	mov r1, #0
	mov r2, #0
	ldrb r3, [r5,#oBattleObject_ChipsHeld]
	pop {r5,r7,pc}
	thumb_func_end sub_800ED90

	thumb_local_start
sub_800EDD0:
	push {r5-r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r5, r0
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne loc_800EE1A
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	mov r4, r0
	ldrb r6, [r0]
	add r1, r6, r6
	add r0, r0, r1
	add r0, #2
	mov r7, r0
	ldrh r0, [r7]
	ldr r1, [sp]
	bl sub_800EF34
	mov r3, r1
	ldrh r2, [r7,#0x18]
	add r2, r2, r0
	ldrh r0, [r7,#0x24]
	add r2, r2, r0
	ldrh r1, [r7,#0xc]
	ldrh r0, [r7]
	mov r7, #0x44 
	add r7, r7, r6
	ldrb r7, [r4,r7]
	add r6, #0x3e 
	ldrb r4, [r4,r6]
	lsl r4, r4, #8
	add r4, r4, r7
	b loc_800EE22
loc_800EE1A:
	ldrh r0, [r5,#oBattleObject_Chip]
	mov r1, #0
	mov r2, #0
	ldrb r3, [r5,#oBattleObject_ChipsHeld]
loc_800EE22:
	add sp, sp, #4
	pop {r5-r7,pc}
	thumb_func_end sub_800EDD0

	thumb_local_start
sub_800EE26:
	push {r5-r7,lr}
	mov r5, r0
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne loc_800EE8E
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	mov r6, r0
	bl sub_800EE98
	ldrh r0, [r6,#0x34]
	mov r1, #0
	bl sub_800EF34
	push {r0,r1}
	// idx
	ldrh r0, [r6,#0x34]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#0xf]
	strb r0, [r7,#oAIAttackVars_Unk_1d]
	ldrh r0, [r6,#0x34]
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_80109A4
	mov r1, r0
	pop {r2,r3}
	push {r1-r3}
	// idx
	ldrh r0, [r6,#0x34]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	pop {r1-r3}
	mov r4, #2
	tst r0, r4
	beq loc_800EE7A
	ldrh r4, [r6,#0x36]
	add r2, r2, r4
	mov r4, #0
	strh r4, [r6,#0x36]
loc_800EE7A:
	mov r4, #4
	tst r0, r4
	beq loc_800EE88
	ldrh r4, [r6,#0x38]
	add r2, r2, r4
	mov r4, #0
	strh r4, [r6,#0x38]
loc_800EE88:
	mov r4, #0
	ldrh r0, [r6,#0x34]
	b locret_800EE96
loc_800EE8E:
	ldrh r0, [r5,#oBattleObject_Chip]
	mov r1, #0
	mov r2, #0
	ldrb r3, [r5,#oBattleObject_ChipsHeld]
locret_800EE96:
	pop {r5-r7,pc}
	thumb_func_end sub_800EE26

	thumb_local_start
sub_800EE98:
	push {r0-r4,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrh r1, [r6,#0x34]
	bl sub_802E830
	mov r4, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	bne loc_800EEBA
	mov r0, r4
	bl sub_801E2BA
	mov r0, #0x8d
	bl PlaySoundEffect
loc_800EEBA:
	// idx
	ldrh r0, [r6,#0x34]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldrb r0, [r4,#0x16] // ChipData.unk_16
	mov r1, #0x80
	tst r0, r1
	bne locret_800EEE2
	ldrb r0, [r4,#0x7] // ChipData.elemIdx
	add r0, r0, r0
	ldr r1, off_800EEF4 // =byte_800EEF8 
	ldrh r0, [r1,r0]
	ldr r2, off_800EEF0 // =word_200F3C4
	add r3, r6, r6
	strh r0, [r2,r3]
	ldrh r1, [r6,#0x28]
	sub r1, r1, r0
	bge loc_800EEE0
	mov r1, #0
loc_800EEE0:
	strh r1, [r6,#0x28]
locret_800EEE2:
	pop {r0-r4,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
	.balign 4, 0
off_800EEF0: .word word_200F3C4
off_800EEF4: .word byte_800EEF8
byte_800EEF8: .byte 0x0, 0x15, 0x0, 0x2A, 0x0, 0x40, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_800EE98

	thumb_local_start
sub_800EF02:
	push {r5-r7,lr}
	mov r6, r0
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne loc_800EF2A
	mov r0, r6
	mov r1, #0
	bl sub_800EF34
	push {r0,r1}
	mov r0, r6
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_80109A4
	mov r1, r0
	pop {r2,r3}
	mov r0, r6
	b locret_800EF32
loc_800EF2A:
	ldrh r0, [r5,#oBattleObject_Chip]
	mov r1, #0
	mov r2, #0
	ldrb r3, [r5,#oBattleObject_ChipsHeld]
locret_800EF32:
	pop {r5-r7,pc}
	thumb_func_end sub_800EF02

	thumb_local_start
sub_800EF34:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r4, r0
	mov r6, #0
	mov r7, #0
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800EF54
	mov r0, r4
	ldr r1, [sp]
	bl sub_800F09E
	b loc_800F094
loc_800EF54:
	ldr r0, dword_800F208 // =0xffff 
	cmp r0, r4
	bne loc_800EF5C
	b loc_800F090
loc_800EF5C:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	beq loc_800EF6A
	cmp r0, #0xd
	bne loc_800EF8E
loc_800EF6A:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800EF8C
	ldrb r1, [r0,#6]
	cmp r1, #0
	bne loc_800EF8C
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800EF8C
	mov r7, #2
	add r6, #0x32 
	b loc_800F090
loc_800EF8C:
	b loc_800F058
loc_800EF8E:
	cmp r0, #0xe
	beq loc_800EF96
	cmp r0, #2
	bne loc_800EFB8
loc_800EF96:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F058
	ldrb r1, [r0,#6]
	cmp r1, #2
	bne loc_800F058
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F058
	mov r7, #6
	add r6, #0x32 
	b loc_800F090
loc_800EFB8:
	cmp r0, #0xf
	beq loc_800EFC0
	cmp r0, #3
	bne loc_800EFE2
loc_800EFC0:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F058
	ldrb r1, [r0,#6]
	cmp r1, #5
	bne loc_800F058
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F058
	mov r7, #6
	add r6, #0x32 
	b loc_800F090
loc_800EFE2:
	cmp r0, #0x14
	beq loc_800EFEA
	cmp r0, #8
	bne loc_800F00C
loc_800EFEA:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F058
	ldrb r1, [r0,#6]
	cmp r1, #8
	bne loc_800F058
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F058
	mov r7, #7
	add r6, #0xa
	b loc_800F090
loc_800F00C:
	cmp r0, #0x10
	beq loc_800F014
	cmp r0, #4
	bne loc_800F02E
loc_800F014:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F058
	ldrb r1, [r0,#6]
	cmp r1, #6
	bne loc_800F058
	mov r7, #8
	add r6, #0x1e
	b loc_800F090
loc_800F02E:
	cmp r0, #0x15
	beq loc_800F036
	cmp r0, #9
	bne loc_800F058
loc_800F036:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F058
	ldrb r1, [r0,#6]
	cmp r1, #9
	bne loc_800F058
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F058
	mov r7, #8
	add r6, #0xa
	b loc_800F090
loc_800F058:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt loc_800F090
	cmp r0, #0x16
	bgt loc_800F090
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F090
	ldrb r1, [r0,#6]
	cmp r1, #0xa
	bne loc_800F090
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F090
	bl GetBattleMode
	cmp r0, #1
	beq loc_800F090
	mov r7, #9
	add r6, #0x1e
	b loc_800F090
loc_800F090:
	mov r0, r6
	mov r1, r7
loc_800F094:
	mov r2, r4
	bl sub_800F1DC
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800EF34

	thumb_local_start
sub_800F09E:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r4, r0
	mov r6, #0
	mov r7, #0
	ldr r0, dword_800F208 // =0xffff 
	cmp r0, r4
	beq loc_800F0DE
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	bne loc_800F0E0
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F0DC
	ldrb r1, [r0,#6]
	cmp r1, #0
	bne loc_800F0DC
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F0DC
	mov r7, #0xc
	add r6, #0
	b loc_800F1BE
loc_800F0DC:
	b loc_800F1D4
loc_800F0DE:
	b loc_800F1D4
loc_800F0E0:
	cmp r0, #2
	bne loc_800F106
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F1D4
	ldrb r1, [r0,#6]
	cmp r1, #2
	bne loc_800F1D4
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F1D4
	mov r7, #0xd
	add r6, #0
	b loc_800F1BE
loc_800F106:
	cmp r0, #3
	bne loc_800F12C
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F1D4
	ldrb r1, [r0,#6]
	cmp r1, #5
	bne loc_800F1D4
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F1D4
	mov r7, #0xe
	add r6, #0
	b loc_800F1BE
loc_800F12C:
	cmp r0, #4
	bne loc_800F14A
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F1D4
	ldrb r1, [r0,#6]
	cmp r1, #6
	bne loc_800F1D4
	mov r7, #0xf
	add r6, #0
	b loc_800F1BE
loc_800F14A:
	cmp r0, #8
	bne loc_800F170
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F1D4
	ldrb r1, [r0,#6]
	cmp r1, #8
	bne loc_800F1D4
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F1D4
	mov r7, #0x10
	add r6, #0
	b loc_800F1BE
loc_800F170:
	cmp r0, #9
	bne loc_800F196
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F1D4
	ldrb r1, [r0,#6]
	cmp r1, #9
	bne loc_800F1D4
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F1D4
	mov r7, #0x11
	add r6, #0
	b loc_800F1BE
loc_800F196:
	cmp r0, #0xa
	bne loc_800F1BC
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_800F1D4
	ldrb r1, [r0,#6]
	cmp r1, #9
	bne loc_800F1D4
	ldrb r1, [r0,#9]
	mov r2, #1
	tst r1, r2
	bne loc_800F1D4
	mov r7, #0x12
	add r6, #0
	b loc_800F1BE
loc_800F1BC:
	b loc_800F1D4
loc_800F1BE:
	bl sub_800F49E
	cmp r0, #0xff
	beq loc_800F1D4
	mov r1, r7
	sub r1, #0xc
	mov r2, #0xf
	mul r1, r2
	add r0, r0, r1
	ldr r1, off_800F20C // =byte_8021300 
	ldrb r6, [r1,r0]
loc_800F1D4:
	mov r0, r6
	mov r1, r7
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800F09E

	thumb_local_start
sub_800F1DC:
	push {r1,r6,r7,lr}
	ldr r3, off_800F210 // =0x150 
	cmp r2, r3
	beq loc_800F1EC
	cmp r2, #0x5f 
	blt locret_800F204
	cmp r2, #0x61 
	bgt locret_800F204
loc_800F1EC:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r2, [r3,#oCollisionData_Barrier]
	cmp r2, #0
	beq locret_800F204
	cmp r2, #0x10
	bge locret_800F204
	cmp r2, #8
	bne loc_800F202
	ldrb r2, [r3,#oCollisionData_Unk_16]
	cmp r2, #0
	beq locret_800F204
loc_800F202:
	add r0, #0x32 
locret_800F204:
	pop {r1,r6,r7,pc}
	.balign 4, 0
dword_800F208: .word 0xFFFF
off_800F20C: .word byte_8021300
off_800F210: .word 0x150
	thumb_func_end sub_800F1DC

	thumb_func_start enemy_getStruct1
enemy_getStruct1:
	push {lr}
	bl sub_80182B4
	ldrb r2, [r0,#1]
	lsl r2, r2, #2
	ldr r1, off_800F22C // =off_800F230 
	ldr r1, [r1,r2]
	ldrb r2, [r0,#2]
	lsl r2, r2, #2
	ldr r0, [r1,r2]
	pop {pc}
	.balign 4, 0
off_800F22C: .word off_800F230
off_800F230: .word off_81090D0
	.word off_80F24D8
	.word off_80EA814
	thumb_func_end enemy_getStruct1

	thumb_func_start enemy_getStruct2
enemy_getStruct2:
	push {lr}
	bl sub_80182B4
	ldrb r2, [r0,#1]
	lsl r2, r2, #2
	ldr r1, off_800F25C // =off_800F260 
	ldr r1, [r1,r2]
	ldrb r2, [r0,#2]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldrb r2, [r0]
	mov r3, #6
	mul r2, r3
	add r0, r1, r2
	pop {pc}
	.balign 4, 0
off_800F25C: .word off_800F260
off_800F260: .word off_8109150
	.word off_80F253C
	.word off_80EA8D8
	thumb_func_end enemy_getStruct2

	thumb_func_start sub_800F26C
sub_800F26C:
	push {lr}
	mov r2, #0xcd
	sub r2, r0, r2
	mov r1, #0x32 
	cmp r2, r1
	bls loc_800F286
	bl enemy_getStruct1
	ldrb r1, [r0,#1]
	ldrb r0, [r0]
	mov r2, #0
	mov r3, #0
	pop {pc}
loc_800F286:
	sub r0, #0xcd
	mov r1, #5
	mul r0, r1
	ldr r3, off_800F4D4 // =byte_8021220 
	add r3, r3, r0
	ldrb r0, [r3]
	ldrb r1, [r3,#1]
	ldrb r2, [r3,#2]
	ldrb r4, [r3,#4]
	ldrb r3, [r3,#3]
	pop {pc}
	thumb_func_end sub_800F26C

	thumb_func_start sub_800F29C
sub_800F29C:
	push {lr}
	bl sub_80182B4
	ldrb r2, [r0]
	ldrb r1, [r0,#2]
	ldrb r0, [r0,#1]
	pop {pc}
	thumb_func_end sub_800F29C

	thumb_func_start sub_800F2AA
sub_800F2AA:
	push {lr}
	ldrh r1, [r5,#oBattleObject_NameID]
	bl nullsub_3
	pop {pc}
	thumb_func_end sub_800F2AA

	thumb_local_start
nullsub_3:
	mov pc, lr
	thumb_func_end nullsub_3

	thumb_func_start object_setAnimation
object_setAnimation:
	push {lr}
	ldrh r1, [r5,#oBattleObject_NameID]
	bl nullsub_3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	pop {pc}
	thumb_func_end object_setAnimation

	thumb_func_start sub_800F2C6
sub_800F2C6:
	push {lr}
	bl object_getFlip // () -> int
	bl sprite_setFlip
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	tst r0, r0
	beq locret_800F2EE
	ldrb r1, [r0,#oAIData_ActorType]
	cmp r1, #2
	bne loc_800F2EA
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	pop {pc}
loc_800F2EA:
	bl sub_801DBD4
locret_800F2EE:
	pop {pc}
	thumb_func_end sub_800F2C6

	thumb_local_start
sub_800F2F0:
	push {lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_78]
	bl sub_800F2FC
	pop {pc}
	thumb_func_end sub_800F2F0

	thumb_func_start sub_800F2FC
sub_800F2FC:
	push {lr}
	ldrb r1, [r0,#0x12]
	ldrb r2, [r5,#oBattleObject_PanelX]
	mov r0, #0
	sub r1, r1, r2
	beq locret_800F316
	bgt loc_800F30C
	mov r0, #1
loc_800F30C:
	ldrb r1, [r5,#oBattleObject_Alliance]
	eor r0, r1
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
locret_800F316:
	pop {pc}
	thumb_func_end sub_800F2FC

	thumb_local_start
sub_800F318:
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	tst r1, r1
	beq locret_800F320
	str r0, [r1,#oAIData_Unk_78]
locret_800F320:
	mov pc, lr
	thumb_func_end sub_800F318

	thumb_func_start sub_800F322
sub_800F322:
	ldrb r0, [r5,#oBattleObject_ChipsHeld]
	cmp r0, #0
	beq locret_800F332
	sub r0, #1
	strb r0, [r5,#oBattleObject_ChipsHeld]
	bne locret_800F332
	sub r0, #1
	strh r0, [r5,#oBattleObject_Chip]
locret_800F332:
	mov pc, lr
	thumb_func_end sub_800F322

	thumb_local_start
sub_800F334:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r0,#oAIData_ActorType]
	ldrb r2, [r0,#oAIData_Version_16]
	ldrb r3, [r0,#oAIData_Unk_03]
	cmp r1, #0
	bne loc_800F346
	mul r2, r3
	mov r0, r2
	mov pc, lr
loc_800F346:
	ldr r0, off_800F350 // =byte_800F354 
	ldrb r0, [r0,r2]
	mul r0, r3
	mov pc, lr
	.balign 4, 0
off_800F350: .word byte_800F354
byte_800F354: .byte 0x0, 0x0, 0x0, 0x0, 0x3, 0x1, 0x0, 0x0
	thumb_func_end sub_800F334

	thumb_local_start
sub_800F35C:
	push {lr}
	ldr r0, off_800F368 // =off_800F36C 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
off_800F368: .word off_800F36C
off_800F36C: .word off_8109250
	.word off_80F2604
	.word off_80EA9A0
	thumb_func_end sub_800F35C

	thumb_func_start sub_800F378
sub_800F378:
	push {lr}
	ldr r0, pool_800F384 // =off_800F388 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
pool_800F384: .word off_800F388
off_800F388: .word off_81092D0
	.word off_80F2668
	.word off_80EAA04
	thumb_func_end sub_800F378

	thumb_local_start
sub_800F394:
	push {lr}
	ldr r0, off_800F3A0 // =off_800F3A4 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
off_800F3A0: .word off_800F3A4
off_800F3A4: .word off_8109350
	.word off_80F26CC
	.word off_80EAA68
	thumb_func_end sub_800F394

	thumb_local_start
sub_800F3B0:
	push {lr}
	ldr r0, off_800F3BC // =off_800F3C0 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
off_800F3BC: .word off_800F3C0
off_800F3C0: .word off_81093D0
	.word off_80F2730
	.word off_80EAACC
	thumb_func_end sub_800F3B0

	thumb_local_start
sub_800F3CC:
	push {lr}
	ldr r0, off_800F3D8 // =off_800F3DC 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
off_800F3D8: .word off_800F3DC
off_800F3DC: .word off_8109450
	.word off_80F2794
	.word off_80EAB30
	thumb_func_end sub_800F3CC

	thumb_local_start
sub_800F3E8:
	push {lr}
	ldr r0, off_800F3F4 // =off_800F3F8 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
off_800F3F4: .word off_800F3F8
off_800F3F8: .word off_81094D0
	.word off_80F27F8
	.word off_80EAB94
	thumb_func_end sub_800F3E8

	thumb_local_start
sub_800F404:
	push {lr}
	ldr r0, off_800F410 // =off_800F414 
	bl sub_800F420
	pop {pc}
	.balign 4, 0
off_800F410: .word off_800F414
off_800F414: .word off_8109550
	.word off_80F285C
	.word off_80EABF8
	thumb_func_end sub_800F404

	thumb_local_start
sub_800F420:
	push {lr}
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r3,#oAIData_ActorType]
	lsl r1, r1, #2
	ldr r2, [r0,r1]
	ldrb r1, [r3,#oAIData_AIIndex]
	lsl r1, r1, #2
	ldr r0, [r2,r1]
	mov lr, pc
	bx r0
	pop {pc}
	thumb_func_end sub_800F420

	thumb_local_start
sub_800F436:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r2, [sp]
	mov r6, r0
	mov r7, r1
	bl object_getFrontDirection // () -> int
	mov r4, r0
loc_800F446:
	add r6, r6, r4
	mov r0, r6
	mov r1, r7
	bl object_isValidPanel
	beq loc_800F462
	mov r0, r6
	mov r1, r7
	bl object_getPanelParameters
	ldr r1, [sp]
	tst r0, r1
	bne loc_800F466
	b loc_800F446
loc_800F462:
	mov r0, #0
	b loc_800F468
loc_800F466:
	mov r0, #1
loc_800F468:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800F436

	thumb_func_start sub_800F46C
sub_800F46C:
	push {lr}
	bl GetBattlePanelColumnPattern
	cmp r0, #0x38 
	beq loc_800F482
	cmp r0, #0x30 
	beq loc_800F482
	cmp r0, #0x3c 
	beq loc_800F482
	ldrb r0, [r5,#oBattleObject_DirectionFlip]
	pop {pc}
loc_800F482:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800F46C

	thumb_func_start sub_800F486
sub_800F486:
	cmp r0, #0xd3
	beq loc_800F49A
	cmp r0, #0xda
	beq loc_800F49A
	cmp r0, #0xe9
	beq loc_800F49A
	cmp r0, #0xea
	beq loc_800F49A
	mov r0, #1
	mov pc, lr
loc_800F49A:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_800F486

	thumb_func_start sub_800F49E
sub_800F49E:
	ldr r1, off_800F4D8 // =dword_203CFA0 
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov pc, lr
	thumb_func_end sub_800F49E

	thumb_local_start
sub_800F4A8:
	ldr r1, off_800F4DC // =dword_203F7E0 
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov pc, lr
	thumb_func_end sub_800F4A8

	thumb_local_start
sub_800F4B2:
	push {lr}
	ldr r1, off_800F4E0 // =dword_203F7E0 
	ldrb r2, [r5,#oBattleObject_Alliance]
	lsl r2, r2, #2
	ldr r3, [r1,r2]
	sub r3, r3, r0
	str r3, [r1,r2]
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	cmp r0, #0
	pop {r0}
	bne locret_800F4D2
	bl TakeBugfrags
locret_800F4D2:
	pop {pc}
	.balign 4, 0
off_800F4D4: .word byte_8021220
off_800F4D8: .word dword_203CFA0
off_800F4DC: .word dword_203F7E0
off_800F4E0: .word dword_203F7E0
	thumb_func_end sub_800F4B2

	thumb_local_start
sub_800F4E4:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800F4FE
	mov r0, r6
	mov r1, r7
	ldr r2, dword_800F504 // =0x10 
	ldr r3, dword_800F508 // =0x3880080 
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F4FE:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0
dword_800F504: .word 0x10
dword_800F508: .word 0x3880080
	thumb_func_end sub_800F4E4

	thumb_local_start
sub_800F50C:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800F526
	mov r0, r6
	mov r1, r7
	ldr r2, dword_800F52C // =0x10 
	ldr r3, dword_800F530 // =0xf880080 
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F526:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0
dword_800F52C: .word 0x10
dword_800F530: .word 0xF880080
	thumb_func_end sub_800F50C

	thumb_local_start
sub_800F534:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800F54E
	mov r0, r6
	mov r1, r7
	ldr r2, dword_800F554 // =0x10 
	ldr r3, dword_800F558 // =0x3800000 
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F54E:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0
dword_800F554: .word 0x10
dword_800F558: .word 0x3800000
	thumb_func_end sub_800F534

	thumb_local_start
sub_800F55C:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800F580
	ldrb r0, [r5,#oBattleObject_Unk_0c]
	sub r0, #1
	lsl r0, r0, #3
	ldr r3, off_800F584 // =byte_800F588 
	add r3, r3, r0
	ldr r2, [r3]
	ldr r3, [r3,#4]
	mov r0, r6
	mov r1, r7
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800F580:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0
off_800F584: .word byte_800F588
byte_800F588: .byte 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x3, 0x10, 0x0, 0x0, 0x0, 0x20
	.byte 0x0, 0x80, 0x3
	thumb_func_end sub_800F55C

	thumb_local_start
sub_800F598:
	push {r4,r6,r7,lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	mov r0, #1
	ldr r1, [r3,#oCollisionData_FlagsFromCollision]
	mov r2, #0x54 
	ldr r2, [r3,r2]
	orr r1, r2
	ldr r2, dword_800F600 // =0xf3000000 
	tst r1, r2
	beq loc_800F5BC
	ldr r2, dword_800F5F8 // =0xa2000000 
	tst r1, r2
	bne loc_800F5B6
	neg r0, r0
	b loc_800F5C6
loc_800F5B6:
	ldr r2, dword_800F5FC // =0x51000000 
	tst r1, r2
	beq loc_800F5C6
loc_800F5BC:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	pop {r4,r6,r7,pc}
loc_800F5C6:
	push {r0}
	ldrb r1, [r3,#oCollisionData_HitModifierFinal]
	lsr r1, r1, #2
	mov r2, #0
loc_800F5CE:
	lsr r1, r1, #1
	bcs loc_800F5DA
	add r2, #1
	cmp r2, #4
	blt loc_800F5CE
	b loc_800F5E4
loc_800F5DA:
	mov r1, #3
	mul r2, r1
	ldr r1, off_800F5F4 // =byte_800F604 
	add r2, r2, r1
	b loc_800F5E4
loc_800F5E4:
	mov r1, #0
	ldrsb r1, [r2,r1]
	mul r0, r1
	mov r1, #1
	ldrsb r1, [r2,r1]
	ldrb r2, [r2,#2]
	pop {r3}
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_800F5F4: .word byte_800F604
dword_800F5F8: .word 0xA2000000
dword_800F5FC: .word 0x51000000
dword_800F600: .word 0xF3000000
byte_800F604: .byte 0xFF, 0x0, 0x6, 0x1, 0x0, 0x6, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x1, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_800F598

	thumb_func_start setFieldBattleObject_800F614
// something to do with spawning actual field battle objects
// r0 is battle object
// r1 is alliance
// r2 is some param
setFieldBattleObject_800F614:
	push {lr}
	mov r3, #0xc
	mul r3, r1
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	add r1, r1, r3
	lsl r3, r2, #3
	add r1, r1, r3
	add r1, #oBattleState_Unk_a0
	tst r2, r2
	bne loc_800F648
	ldr r2, [r1]
	ldr r3, [r1,#4]
	tst r2, r2
	bne loc_800F636
	str r0, [r1]
	b locret_800F654
loc_800F636:
	tst r3, r3
	bne loc_800F63E
	str r0, [r1,#4]
	b locret_800F654
loc_800F63E:
	str r3, [r1]
	str r0, [r1,#4]
	mov r3, #0
	strh r3, [r2,#oBattleObject_HP]
	b locret_800F654
loc_800F648:
	ldr r2, [r1]
	str r0, [r1]
	tst r2, r2
	beq locret_800F654
	mov r3, #0
	strh r3, [r2,#oBattleObject_HP]
locret_800F654:
	pop {pc}
	thumb_func_end setFieldBattleObject_800F614

	thumb_func_start clearEntryOfBattleStateBattleObjectList_800F656
clearEntryOfBattleStateBattleObjectList_800F656:
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	add r0, #oBattleState_Unk_a0
	mov r1, #0
loc_800F65E:
	ldr r2, [r0]
	cmp r2, r5
	bne loc_800F668
	mov r2, #0
	str r2, [r0]
loc_800F668:
	add r0, #4
	add r1, #1
	cmp r1, #6
	blt loc_800F65E
	mov pc, lr
	thumb_func_end clearEntryOfBattleStateBattleObjectList_800F656

	thumb_func_start sub_800F672
sub_800F672:
	push {lr}
	bl battle_isBattleOver
	tst r0, r0
	bne loc_800F690
	bl battle_isTimeStop
	bne locret_800F6AA
	bl battle_isPaused
	bne locret_800F6AA
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bne loc_800F69A
loc_800F690:
	bl object_clearCollisionRegion // () -> void
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	pop {pc}
loc_800F69A:
	cmp r0, #0xb4
	bhi locret_800F6AA
	lsr r0, r0, #2
	bcc locret_800F6AA
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
locret_800F6AA:
	pop {pc}
	thumb_func_end sub_800F672

	thumb_local_start
sub_800F6AC:
	push {r5,lr}
	strb r2, [r0,#0x1c]
	strb r3, [r0,#0x1d]
	strb r4, [r0,#0x1e]
	str r6, [r0,#0x2c]
	mov r5, r0
	ldr r0, off_800F944 // =0x400 
	tst r1, r1
	beq loc_800F6C0
	ldr r0, off_800F948 // =0x800 
loc_800F6C0:
	bl object_setFlag2
	pop {r5,pc}
	thumb_func_end sub_800F6AC

	thumb_local_start
sub_800F6C6:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x14
	mov r7, sp
	ldrb r0, [r5,#0x16]
	lsl r0, r0, #3
	ldr r6, off_800F740 // =off_800F748 
	add r6, r6, r0
	ldr r2, [r6]
	ldr r3, [r6,#4]
	bl object_getPanelsFiltered
	mov r1, r0
	beq loc_800F6F6
	push {r1}
	bl GetPositiveSignedRNG
	pop {r1}
	svc 6
	ldrb r0, [r7,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
loc_800F6F6:
	ldrb r0, [r5,#0x16]
	lsl r0, r0, #3
	ldr r6, off_800F744 // =byte_800F758 
	add r6, r6, r0
	ldr r2, [r6]
	ldr r3, [r6,#4]
	bl object_getPanelsExceptCurrentFiltered
	mov r1, r0
	beq loc_800F720
	push {r1}
	bl GetPositiveSignedRNG
	pop {r1}
	svc 6
	ldrb r0, [r7,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
loc_800F720:
	mov r2, #0
	mov r3, #0
	bl object_getPanelsFiltered
	push {r0}
	bl GetPositiveSignedRNG
	pop {r1}
	svc 6
	ldrb r0, [r7,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_800F740: .word off_800F748
off_800F744: .word byte_800F758
off_800F748: .word LCDControl
	.word 0x0
	.word 0x8000000
	.word 0x0
byte_800F758: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_800F6C6

	thumb_local_start
sub_800F768:
	push {lr}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	ldrh r2, [r5,#oBattleObject_X16]
	lsl r2, r2, #0x10
	ldrh r3, [r5,#oBattleObject_Y16]
	lsl r3, r3, #0x10
	sub r2, r0, r2
	sub r0, r1, r3
	mov r1, r2
	push {r0,r1}
	push {r5}
	bl calcAngle_800117C
	pop {r5}
	strb r0, [r5,#oBattleObject_Unk_0c]
	mov r1, #8
	lsl r1, r1, #0x10
	push {r1}
	bl sub_80011A0
	str r0, [r5,#oBattleObject_XVelocity]
	str r1, [r5,#oBattleObject_YVelocity]
	pop {r4}
	pop {r0,r1}
	lsr r0, r0, #8
	mov r2, r0
	mul r0, r2
	lsr r1, r1, #8
	mov r2, r1
	mul r1, r2
	add r0, r0, r1
	svc 8
	lsl r0, r0, #8
	mov r1, r4
	svc 6
	tst r0, r0
	beq loc_800F7C4
	push {r0}
	mov r1, r0
	mov r0, #0x40 
	lsl r0, r0, #0x10
	svc 6
	str r0, [r5,#oBattleObject_ZVelocity]
	pop {r0}
	pop {pc}
loc_800F7C4:
	mov r0, #8
	lsl r0, r0, #0x10
	str r0, [r5,#oBattleObject_ZVelocity]
	mov r0, #0
	str r0, [r5,#oBattleObject_XVelocity]
	str r0, [r5,#oBattleObject_YVelocity]
	mov r0, #8
	pop {pc}
	thumb_func_end sub_800F768

	thumb_local_start
sub_800F7D4:
	mov r0, #1
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	add r1, #oBattleState_Unk_a0
	mov r2, #0
loc_800F7DE:
	ldr r3, [r1]
	tst r3, r3
	beq loc_800F7FA
	ldrb r4, [r3,#2]
	cmp r4, #0x93
	bne loc_800F7F0
	ldrb r4, [r3,#1]
	beq loc_800F7FA
	b locret_800F804
loc_800F7F0:
	ldrb r4, [r3,#2]
	cmp r4, #0x84
	bne locret_800F804
	ldrb r4, [r3,#1]
	bne locret_800F804
loc_800F7FA:
	add r1, #4
	add r2, #1
	cmp r2, #8
	blt loc_800F7DE
	mov r0, #0
locret_800F804:
	mov pc, lr
	thumb_func_end sub_800F7D4

	thumb_local_start
sub_800F806:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	add r0, #oBattleState_Unk_a0
	mov r1, #0
loc_800F810:
	ldr r2, [r0]
	cmp r2, r5
	beq loc_800F81E
	add r0, #4
	add r1, #1
	cmp r1, #6
	blt loc_800F810
loc_800F81E:
	ldr r0, off_800F824 // =byte_800F828 
	ldrb r0, [r0,r1]
	pop {pc}
	.balign 4, 0
off_800F824: .word byte_800F828
byte_800F828: .byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x1, 0xFF, 0x0, 0x20, 0xB5, 0xAA, 0x7D
	.byte 0xEB, 0x6A, 0x5, 0x1C, 0x44, 0x48, 0x9, 0x42, 0x2, 0xD0, 0x44, 0x48
	.byte 0xAA, 0x75, 0xEB, 0x62, 0xA, 0xF0, 0x92, 0xFC, 0x20, 0xBD, 0x10, 0xB5
	.byte 0x6C, 0x6D, 0xA8, 0x7C, 0xE9, 0x7C, 0xFD, 0xF7, 0x5A, 0xF8, 0x0, 0x24
	.byte 0x81, 0x78, 0x5, 0x29, 0x0, 0xD1, 0x1, 0x24, 0x6B, 0x6D, 0x82, 0x33
	.byte 0x5, 0x21, 0x0, 0x20, 0x1A, 0x88, 0x12, 0x19, 0xE2, 0x40, 0x1A, 0x80
	.byte 0x80, 0x18, 0x2, 0x33, 0x1, 0x39, 0xF7, 0xDC, 0x1D, 0xF0, 0xCA, 0xFA
	.byte 0x6B, 0x6D, 0x80, 0x33, 0x18, 0x80, 0x10, 0xBD
	thumb_func_end sub_800F806

	thumb_func_start sub_800F884
sub_800F884:
	push {r5,lr}
	mov r5, r0
	beq locret_800F896
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	tst r0, r0
	beq locret_800F896
	ldr r0, dword_800F954 // =0x8000
	bl object_setFlag2
locret_800F896:
	pop {r5,pc}
	thumb_func_end sub_800F884

	thumb_func_start sub_800F898
sub_800F898:
	push {r5,lr}
	mov r5, r0
	beq locret_800F8AE
	bl sub_800F884
	ldr r0, [r5,#0x54]
	tst r0, r0
	beq locret_800F8AE
	ldr r0, dword_800F958 // =0x40000
	bl object_setFlag2
locret_800F8AE:
	pop {r5,pc}
	thumb_func_end sub_800F898

	thumb_func_start sub_800F8B0
sub_800F8B0:
	push {r4,r5,lr}
	mov r4, r5
	mov r5, r0
	beq locret_800F8CC
	bl sub_800F884
	ldr r0, [r5,#0x54]
	tst r0, r0
	beq locret_800F8CC
	ldr r0, dword_800F95C // =0x100000 
	ldrb r1, [r4,#oBattleObject_Alliance]
	lsl r0, r1
	bl object_setFlag2
locret_800F8CC:
	pop {r4,r5,pc}
	thumb_func_end sub_800F8B0

	thumb_func_start sub_800F8CE
sub_800F8CE:
	push {r4,lr}
	mov r4, #2
	ldr r1, dword_800F958 // =0x40000
	tst r0, r1
	beq loc_800F90A
	mov r4, #0
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	cmp r0, #0
	bne loc_800F8E8
	mov r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	mov r0, #0x14
	strh r0, [r5,#oBattleObject_Timer]
loc_800F8E8:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrh r0, [r5,#oBattleObject_Timer]
	mov r1, #2
	tst r0, r1
	bne loc_800F900
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_800F900:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bgt loc_800F90A
	mov r4, #1
loc_800F90A:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_800F8CE

	thumb_func_start sub_800F90E
sub_800F90E:
	push {r4,r6,lr}
	mov r4, r0
	bl object_getFlag2
	ldr r1, dword_800F960 // =0x200000
	tst r0, r1
	beq loc_800F922
	mov r0, #1
	lsl r0, r0, #8
	orr r4, r0
loc_800F922:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	lsl r0, r0, #0x10
	orr r4, r0
	mov r0, r5
	bl sprite_getPalette
	lsl r0, r0, #0x18
	orr r4, r0
	bl sprite_getUnk0x2c
	mov r6, #0x34 
	add r6, r6, r5
	ldmia r6!, {r1-r3}
	bl sub_80E996E
	pop {r4,r6,pc}
	.balign 4, 0
off_800F944: .word 0x400
off_800F948: .word 0x800
	.word 0x1000
	.word 0x2000
dword_800F954: .word 0x8000
dword_800F958: .word 0x40000
dword_800F95C: .word 0x100000
dword_800F960: .word 0x200000
	thumb_func_end sub_800F90E

	thumb_func_start sub_800F964
sub_800F964:
	push {r6,r7,lr}
	mov r6, r0
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_800F994
	mov r0, r6
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_800F9DE
	ldrb r6, [r5,#oBattleObject_PanelX]
	add r6, r6, r0
	ldrb r7, [r5,#oBattleObject_PanelY]
	add r7, r7, r1
	mov r0, r6
	mov r1, r7
	bl playerObjectMovingToPanelValidityRelated_800E618
	beq loc_800F994
	mov r0, r6
	mov r1, r7
	pop {r6,r7,pc}
loc_800F994:
	mov r0, #0
	pop {r6,r7,pc}
	thumb_func_end sub_800F964

	thumb_func_start sub_800F998
sub_800F998:
	push {r4,r6,r7,lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r7, r1
	lsl r2, r2, #2
	ldr r3, off_800F9FC // =byte_800FA00 
	ldr r2, [r3,r2]
	str r2, [sp]
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_800F9D8
	mov r4, #0
loc_800F9B6:
	add r0, sp, #0
	ldrb r0, [r0,r4]
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_800F9DE
	add r0, r0, r6
	add r1, r1, r7
	str r0, [sp,#4]
	str r1, [sp,#8]
	bl playerObjectMovingToPanelValidityRelated_800E618
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	bne loc_800F9DA
	add r4, #1
	cmp r4, #4
	blt loc_800F9B6
loc_800F9D8:
	mov r0, #0
loc_800F9DA:
	add sp, sp, #0xc
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800F998

	thumb_local_start
sub_800F9DE:
	push {r4,lr}
	add r0, r0, r0
	ldr r4, off_800F9F8 // =byte_800FA14 
	add r4, r4, r0
	mov r0, r1
	bl object_getAllianceDirection
	mov r1, #0
	ldrsb r1, [r4,r1]
	mul r0, r1
	mov r1, #1
	ldrsb r1, [r4,r1]
	pop {r4,pc}
	.balign 4, 0
off_800F9F8: .word byte_800FA14
off_800F9FC: .word byte_800FA00
byte_800FA00: .byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x3, 0x2, 0x4, 0x2, 0x4, 0x1, 0x3, 0x3, 0x2, 0x4, 0x1, 0x4
	.byte 0x1, 0x3, 0x2
byte_800FA14:
	.byte 0, 0
	.byte 0, -1
	.byte 0, 1
	.byte -1, 0
	.byte 1, 0
	.byte 0, 0
	thumb_func_end sub_800F9DE

	thumb_func_start sub_800FA20
sub_800FA20:
	push {lr}
	sub sp, sp, #0x18
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_800F9DE
	str r0, [sp]
	str r1, [sp,#4]
	tst r1, r1
	bne loc_800FA42
	bl sub_8010368
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r4, [sp]
	bl sub_800D120
	b loc_800FA50
loc_800FA42:
	bl sub_8010368
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r4, [sp,#4]
	bl sub_800D15A
loc_800FA50:
	add sp, sp, #0x18
	pop {pc}
	thumb_func_end sub_800FA20

	thumb_func_start playerObject_checkDirectionButtons_800FA54
playerObject_checkDirectionButtons_800FA54:
	push {r6,r7,lr}
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_800FA9C
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r1, [r0,#oAIData_JoypadHeld]
	mov r6, #1
	mov r2, #0x40 
	tst r1, r2
	bne loc_800FA88
	mov r6, #2
	mov r2, #0x80
	tst r1, r2
	bne loc_800FA88
	mov r6, #4
	mov r2, #0x10
	tst r1, r2
	bne loc_800FA88
	mov r6, #3
	mov r2, #0x20 
	tst r1, r2
	bne loc_800FA88
	b loc_800FA9C
loc_800FA88:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xf
	tst r0, r1
	beq loc_800FA98
	ldr r2, off_800FAA0 // =byte_800FAA4 
	ldrb r6, [r2,r6]
loc_800FA98:
	mov r0, r6
	pop {r6,r7,pc}
loc_800FA9C:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0
off_800FAA0: .word byte_800FAA4
byte_800FAA4: .byte 0x0, 0x2, 0x1, 0x4, 0x3, 0x0, 0x0, 0x0
	thumb_func_end playerObject_checkDirectionButtons_800FA54

	thumb_func_start sub_800FAAC
sub_800FAAC:
	push {r4,r6,r7,lr}
	sub sp, sp, #8
	mov r4, r0
	mov r6, r1
	mov r7, r3
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	str r0, [sp]
	str r1, [sp,#4]
	mov r3, r7
	bl sub_80C4FFE
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	bl GetBattleNaviStatsByte
	mov r2, r0
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sub_800FAF6
	add sp, sp, #8
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800FAAC

	thumb_func_start sub_800FAE0
sub_800FAE0:
	push {r4,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	ldrb r0, [r4,#oBattleState_Unk_0d]
	bl battle_findPlayer
	tst r0, r0
	beq locret_800FAF4
	ldrh r1, [r0,#oBattleObject_HP]
	strh r1, [r4,#oBattleState_Unk_34]
locret_800FAF4:
	pop {r4,pc}
	thumb_func_end sub_800FAE0

	thumb_func_start sub_800FAF6
sub_800FAF6:
	push {r4,r6,r7,lr}
	sub sp, sp, #8
	str r2, [sp,#4]
	mov r6, r0
	mov r7, r1
	bl object_getFrontDirection // () -> int
	mov r4, r0
	mov r0, #0
	str r0, [sp]
loc_800FB0A:
	mov r0, r6
	mov r1, r7
	bl object_getPanelParameters
	tst r0, r0
	beq loc_800FB2C
	ldr r1, off_800FB48 // =byte_800FB4C 
	ldrb r2, [r5,#oBattleObject_Alliance]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	tst r0, r1
	bne loc_800FB2C
	ldr r0, [sp]
	add r0, #1
	str r0, [sp]
	add r6, r6, r4
	b loc_800FB0A
loc_800FB2C:
	ldr r0, [sp]
	cmp r0, #5
	ble loc_800FB34
	mov r0, #5
loc_800FB34:
	ldr r1, [sp,#4]
	mov r2, #6
	mul r1, r2
	add r1, r1, r0
	ldr r0, off_800FB44 // =byte_80209CC
	ldrb r0, [r0,r1]
	add sp, sp, #8
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_800FB44: .word byte_80209CC
off_800FB48: .word byte_800FB4C
byte_800FB4C: .byte 0x80, 0x0, 0x88, 0xD, 0x80, 0x0, 0x88, 0xE
	thumb_func_end sub_800FAF6

	thumb_func_start sub_800FB54
sub_800FB54:
	push {r4,r7,lr}
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #oAIData_AttackVars
	bl object_getFlag // () -> int
	ldr r1, off_800FC28 // =0x1000 
	tst r0, r1
	bne loc_800FB70
	bl GetAIData_Unk_44_Flag
	mov r4, r0
	// 0x4, 0x8 set when A is pressed or held
	// see pwrAtkRelated_readsFromJoypad_8012FC8
	ldr r1, dword_800FED4 // =0x1000c 
	and r4, r1
	bne loc_800FB74
loc_800FB70:
	ldr r0, dword_800FC2C // =0xffff 
	pop {r4,r7,pc}
loc_800FB74:
	mov r0, #0
	mov r1, #8
	tst r4, r1
	beq loc_800FBEE
	mov r0, r5
	bl sub_800EDD0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#6]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	cmp r0, #0xa
	bne loc_800FB9A
	mov r2, #0xa0
	add r2, r2, r1
	mov r0, #0
	strh r0, [r2,#oAIAttackVars_Unk_14]
	ldrb r1, [r1,#oAIData_Unk_11]
	b loc_800FB9C
loc_800FB9A:
	ldrb r1, [r1,#oAIData_Unk_05]
loc_800FB9C:
	cmp r1, #0x18
	beq loc_800FBE6
	cmp r1, #0xff
	beq loc_800FBEE
	cmp r1, #0xd
	beq loc_800FBEC
	cmp r1, #0x1f
	beq loc_800FBEC
	cmp r1, #0x20 
	beq loc_800FBEC
	cmp r1, #0x29 
	beq loc_800FBEC
	cmp r1, #0x2d 
	beq loc_800FBEC
	cmp r1, #5
	beq loc_800FBEC
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	mov r0, r1
	bl sub_80117BA
	push {r0}
	bl object_setAttack2
	pop {r0}
	cmp r0, #0x52 
	beq loc_800FBE0
	cmp r0, #0x41 
	bne loc_800FC18
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xf
	bne loc_800FC18
loc_800FBE0:
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1d]
	b loc_800FC18
loc_800FBE6:
	bl sub_8012CB2
	b loc_800FBEE
loc_800FBEC:
	mov r0, #1
loc_800FBEE:
	bl useChipRelated_80127C0
	bl object_setAttack2
	ldrb r0, [r7,#oAIAttackVars_Unk_1b]
	cmp r0, #0
	bne loc_800FC0C
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0
	cmp r0, #0xb
	blt loc_800FC18
	cmp r0, #0x18
	bgt loc_800FC18
loc_800FC0C:
	// idx
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#0xf]
	strb r0, [r7,#oAIAttackVars_Unk_1d]
	b loc_800FC18
loc_800FC18:
	ldr r0, dword_800FED4 // =0x1000c 
	bl ClearAIData_Unk_44_Flag
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	ldrh r1, [r7,#oAIAttackVars_Damage]
	ldrh r2, [r7,#oAIAttackVars_AttackBoost]
	pop {r4,r7,pc}
	.balign 4, 0
off_800FC28: .word 0x1000
dword_800FC2C: .word 0xFFFF
	thumb_func_end sub_800FB54

	thumb_func_start sub_800FC30
sub_800FC30:
	push {r4,r7,lr}
	mov r0, r5
	mov r1, #0
	bl sub_800EDD0
	ldr r1, dword_800FED8 // =0xffff 
	cmp r0, r1
	beq locret_800FC7A
	mov r1, #0x52 
	cmp r0, r1
	beq loc_800FC58
	mov r1, #0x53 
	cmp r0, r1
	beq loc_800FC58
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #1
	tst r0, r1
	beq loc_800FC5C
loc_800FC58:
	ldr r0, dword_800FED8 // =0xffff 
	b locret_800FC7A
loc_800FC5C:
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0xa0
	mov r0, #0
	bl useChipRelated_80127C0
	ldr r1, off_800FCB8 // =byte_800FCD5
	// comparing with pointer???
	cmp r0, r1
	beq locret_800FC7A
	bl object_setAttack2
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1d]
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	ldrh r1, [r7,#oAIAttackVars_Damage]
	ldrh r2, [r7,#oAIAttackVars_AttackBoost]
locret_800FC7A:
	pop {r4,r7,pc}
	thumb_func_end sub_800FC30

	thumb_func_start sub_800FC7C
sub_800FC7C:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	mov r3, r0
	ldrb r0, [r3]
	cmp r0, #5
	bge locret_800FC9C
	lsl r1, r0, #1
	add r1, #2
	ldrh r1, [r3,r1]
	ldr r2, dword_800FED8 // =0xffff 
	cmp r1, r2
	beq locret_800FC9C
	add r0, #1
	strb r0, [r3]
locret_800FC9C:
	pop {pc}
	thumb_func_end sub_800FC7C

	thumb_func_start sub_800FC9E
sub_800FC9E:
	cmp r0, #0
	bne loc_800FCAA
	ldr r0, off_800FCB4 // =byte_800FCBC 
	ldrb r2, [r0,r1]
	mov r1, #0
	mov pc, lr
loc_800FCAA:
	ldr r1, off_800FCB8 // =byte_800FCD5 
	ldrb r2, [r0,r1]
	mov r1, #8
	mov pc, lr
	.balign 4, 0
off_800FCB4: .word byte_800FCBC
off_800FCB8: .word byte_800FCD5
byte_800FCBC: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xB, 0xC, 0x1, 0x2, 0x3
	.byte 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC
byte_800FCD5: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0x0, 0x0, 0x0
	thumb_func_end sub_800FC9E

	thumb_local_start
sub_800FCE4:
	push {lr}
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	pop {pc}
	thumb_func_end sub_800FCE4

	thumb_func_start sub_800FCFC
sub_800FCFC:
	ldr r1, off_800FEDC // =byte_80212BB 
	ldrb r0, [r1,r0]
	ldrb r2, [r5,#oBattleObject_Param1]
	ldr r1, off_800FD58 // =byte_800FD5C 
	ldrb r1, [r1,r2]
	mul r0, r1
	mov pc, lr
	thumb_func_end sub_800FCFC

	thumb_local_start
sub_800FD0A:
	push {r4,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r1, off_800FEE0 // =byte_80212BB 
	ldrb r7, [r1,r0]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #2
	bne loc_800FD26
	mov r0, #4
	b loc_800FD40
loc_800FD26:
	ldrb r0, [r4,#oAIData_ActorType]
	cmp r0, #2
	bne loc_800FD3A
	bl GetAIDataUnk0x48Flag
	ldr r1, dword_800FEE4 // =0x200
	tst r0, r1
	beq loc_800FD3A
	mov r0, #1
	b loc_800FD40
loc_800FD3A:
	ldrb r2, [r4,#oAIData_Version_16]
	ldr r1, off_800FD58 // =byte_800FD5C 
	ldrb r0, [r1,r2]
loc_800FD40:
	mul r0, r7
	pop {r4,r7,pc}
	thumb_func_end sub_800FD0A

	thumb_local_start
sub_800FD44:
	push {lr}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r1, off_800FEE8 // =byte_80212BB 
	ldrb r0, [r1,r0]
	mov r1, #1
	mul r0, r1
	pop {pc}
	.balign 4, 0
off_800FD58: .word byte_800FD5C
byte_800FD5C: .byte 0x0, 0x0, 0x0, 0x2, 0x3, 0x0, 0x0, 0x0
	thumb_func_end sub_800FD44

	thumb_local_start
sub_800FD64:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#0xd]
	mov r1, #0x29
	bl GetBattleNaviStatsByte
	add r0, r0, r0
	ldr r2, off_800FD84 // =byte_800FD88
	add r2, r2, r0
	mov r0, #0
	ldrsb r0, [r2,r0]
	mov r1, #1
	ldrsb r1, [r2,r1]
	pop {pc}
	.balign 4, 0
off_800FD84: .word byte_800FD88
byte_800FD88: .byte 0x0, 0xC9, 0x0, 0xBD, 0xF8, 0xC5, 0xF4, 0xAC, 0x0, 0xC0
	.byte 0x3, 0xB8, 0xFC, 0xB8, 0xFF, 0xC2, 0xFB, 0xBA, 0xFB, 0xB1
	.byte 0x4, 0xC4, 0x0, 0xC9, 0x20, 0xB5, 0x2, 0xB4, 0x0, 0xF0
	.byte 0xA, 0xFB, 0x5, 0x1C, 0x2, 0xBC, 0x2, 0xD0, 0x4, 0x20
	.byte 0x0, 0xF0, 0x18, 0xF9, 0x20, 0xBD
	thumb_func_end sub_800FD64

	thumb_func_start object_setDefaultCounterTime
object_setDefaultCounterTime:
	push {lr}
	mov r0, #0x10
	bl object_setCounterTime
	pop {pc}
	thumb_func_end object_setDefaultCounterTime

	thumb_func_start setChipsForPlayerObjects_800FDC0
setChipsForPlayerObjects_800FDC0:
	push {r4-r6,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	add r4, #oBattleState_AlivePlayerActors
	mov r6, #0
loc_800FDCA:
	ldr r5, [r4]
	tst r5, r5
	beq loc_800FDE0
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	tst r0, r0
	beq loc_800FDE0
	ldrb r1, [r0,#oAIData_ActorType]
	cmp r1, #2
	bne loc_800FDE0
	bl setChipsForPlayerObject_800FDEA
loc_800FDE0:
	add r4, #4
	add r6, #1
	cmp r6, #8
	blt loc_800FDCA
	pop {r4-r6,pc}
	thumb_func_end setChipsForPlayerObjects_800FDC0

	thumb_local_start
setChipsForPlayerObject_800FDEA:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	ldrb r1, [r0]
	add r1, r1, r1
	add r1, #2
	add r1, r1, r0
	mov r0, #0
	ldr r3, dword_800FED8 // =0xffff 
	ldrh r4, [r1]
loc_800FE00:
	ldrh r2, [r1]
	cmp r2, r3
	beq loc_800FE0C
	add r0, #1
	add r1, #2
	b loc_800FE00
loc_800FE0C:
	strb r0, [r5,#oBattleObject_ChipsHeld]
	strh r4, [r5,#oBattleObject_Chip]
	pop {r4,pc}
	thumb_func_end setChipsForPlayerObject_800FDEA

	thumb_func_start sub_800FE12
sub_800FE12:
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r2, [r1,#oAIData_Version_16]
	cmp r2, #4
	beq loc_800FE20
	add r2, r2, r2
	ldrh r0, [r0,r2]
	mov pc, lr
loc_800FE20:
	ldrb r2, [r1,#oAIData_Unk_0c]
	ldrh r0, [r0,#8]
	mul r0, r2
	mov pc, lr
	thumb_func_end sub_800FE12

	thumb_func_start sub_800FE28
sub_800FE28:
	push {lr}
	push {r0}
	bl sub_800FE36
	pop {r1}
	ldrb r0, [r0,r1]
	pop {pc}
	thumb_func_end sub_800FE28

	thumb_func_start sub_800FE36
sub_800FE36:
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r1,#oAIData_Version_16]
	cmp r0, #4
	beq loc_800FE40
	mov pc, lr
loc_800FE40:
	mov r0, #0
	ldrb r2, [r1,#oAIData_Unk_0c]
	cmp r2, #3
	ble locret_800FE50
	mov r0, #1
	cmp r2, #6
	ble locret_800FE50
	mov r0, #2
locret_800FE50:
	mov pc, lr
	thumb_func_end sub_800FE36

	thumb_func_start sub_800FE52
sub_800FE52:
	push {r4,lr}
	mov r4, #0
	mov r1, #0x31 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	bne loc_800FE62
	add r4, #1
loc_800FE62:
	mov r1, #0x13
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FE6E
	add r4, #1
loc_800FE6E:
	mov r1, #0x14
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FE7A
	add r4, #1
loc_800FE7A:
	mov r1, #0x16
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FE86
	add r4, #1
loc_800FE86:
	mov r1, #0x54 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FE92
	add r4, #1
loc_800FE92:
	mov r1, #0x24 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FE9E
	add r4, #1
loc_800FE9E:
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FEAA
	add r4, #1
loc_800FEAA:
	mov r1, #0x19
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FEB6
	add r4, #1
loc_800FEB6:
	mov r1, #0x1a
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FEC2
	add r4, #1
loc_800FEC2:
	mov r1, #0x63 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_800FECE
	add r4, #1
loc_800FECE:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
dword_800FED4: .word 0x1000C
dword_800FED8: .word 0xFFFF
off_800FEDC: .word byte_80212BB
off_800FEE0: .word byte_80212BB
dword_800FEE4: .word 0x200
off_800FEE8: .word byte_80212BB
	thumb_func_end sub_800FE52

	thumb_local_start
sub_800FEEC:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_800FF36
	bl GetBattleMode
	cmp r0, #9
	bne loc_800FF0A
	mov r1, #0x44 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_800FF0C
loc_800FF0A:
	mov r0, #0xff
loc_800FF0C:
	strb r0, [r4,#oAIData_Unk_04]
	mov r1, #4
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	strb r0, [r4,#oAIData_Unk_06]
	mov r1, #5
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_800FFAA
	mov r1, #0x39 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	strb r0, [r4,#oAIData_Unk_05]
	mov r1, #7
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	strb r0, [r4,#oAIData_Unk_08]
	mov r0, #0xff
	strb r0, [r4,#oAIData_Unk_11]
	pop {r4,pc}
loc_800FF36:
	mov r2, #6
	mul r0, r2
	ldr r1, off_800FFE0 // =byte_8020354 
	add r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r4,#oAIData_Unk_04]
	ldrb r1, [r0,#1]
	strb r1, [r4,#oAIData_Unk_05]
	ldrb r1, [r0,#2]
	strb r1, [r4,#oAIData_Unk_06]
	push {r0}
	ldrb r0, [r0,#3]
	bl sub_800FFAA
	pop {r0}
	ldrb r1, [r0,#4]
	strb r1, [r4,#oAIData_Unk_08]
	ldrb r1, [r0,#5]
	strb r1, [r4,#oAIData_Unk_11]
	pop {r4,pc}
	thumb_func_end sub_800FEEC

	thumb_local_start
sub_800FF5E:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_800FFA8
	bl GetBattleMode
	cmp r0, #9
	bne loc_800FF7C
	mov r1, #0x44 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_800FF7E
loc_800FF7C:
	mov r0, #0xff
loc_800FF7E:
	strb r0, [r4,#oAIData_Unk_04]
	mov r1, #4
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	strb r0, [r4,#oAIData_Unk_06]
	mov r1, #5
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_800FFAA
	mov r1, #0x39 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	strb r0, [r4,#oAIData_Unk_05]
	mov r1, #7
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	strb r0, [r4,#oAIData_Unk_08]
	mov r0, #0xff
	strb r0, [r4,#oAIData_Unk_11]
	pop {r4,pc}
locret_800FFA8:
	pop {r4,pc}
	thumb_func_end sub_800FF5E

	thumb_local_start
sub_800FFAA:
	push {lr}
	cmp r0, #0x21 
	blt loc_800FFB4
	cmp r0, #0x26 
	ble loc_800FFBE
loc_800FFB4:
	ldrb r1, [r4,#oAIData_BPwrAtk]
	cmp r1, #0x21 
	blt loc_800FFBE
	cmp r1, #0x26 
	ble loc_800FFC0
loc_800FFBE:
	strb r0, [r4,#oAIData_BPwrAtk]
loc_800FFC0:
	ldrb r0, [r4,#oAIData_BPwrAtk]
	cmp r0, #0x21 
	blt locret_800FFDE
	cmp r0, #0x26 
	bgt locret_800FFDE
	ldrb r0, [r4,#oAIData_Unk_06]
	mov r2, #0
	cmp r0, #4
	beq loc_800FFDC
	cmp r0, #3
	beq loc_800FFDC
	mov r2, #0x2b 
	cmp r0, #0x2c 
	bne locret_800FFDE
loc_800FFDC:
	strb r2, [r4,#oAIData_Unk_06]
locret_800FFDE:
	pop {pc}
	.balign 4, 0
off_800FFE0: .word byte_8020354
	thumb_func_end sub_800FFAA

	thumb_func_start SetAIData_Unk_44_Flag
SetAIData_Unk_44_Flag:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r1, [r3,#oAIData_Unk_44]
	orr r1, r0
	str r1, [r3,#oAIData_Unk_44]
	mov pc, lr
	thumb_func_end SetAIData_Unk_44_Flag

	thumb_func_start ClearAIData_Unk_44_Flag
ClearAIData_Unk_44_Flag:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r1, [r3,#oAIData_Unk_44]
	bic r1, r0
	str r1, [r3,#oAIData_Unk_44]
	mov pc, lr
	thumb_func_end ClearAIData_Unk_44_Flag

	thumb_local_start
sub_800FFF8:
	ldr r3, [r5,#0x58]
	ldr r0, [r3,#0x44]
	mov pc, lr
	thumb_func_end sub_800FFF8

	thumb_func_start GetAIData_Unk_44_Flag
GetAIData_Unk_44_Flag:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r3,#oAIData_Unk_44]
	mov pc, lr
	thumb_func_end GetAIData_Unk_44_Flag

	thumb_func_start sub_8010004
sub_8010004:
	push {lr}
loc_8010006:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	mov r2, r0
	ldrb r1, [r2]
	add r1, r1, r1
	add r1, #2
	ldrh r0, [r2,r1]
	pop {pc}
	thumb_func_end sub_8010004

	thumb_func_start getBattleHandAddr_8010018
getBattleHandAddr_8010018:
	mov r1, #0x50 
	mul r0, r1
	ldr r1, off_801021C // =byte_20349C0 
	add r0, r0, r1
	mov pc, lr
	thumb_func_end getBattleHandAddr_8010018

	thumb_local_start
sub_8010022:
	push {lr}
	bl battle_findPlayer
	ldr r0, [r0,#oBattleObject_AIDataPtr]
	pop {pc}
	thumb_func_end sub_8010022

	thumb_func_start sub_801002C
sub_801002C:
	push {r4,r7,lr}
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r7,#oAIData_ActorType]
	cmp r0, #2
	bne loc_801009C
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_8010096
	mov r4, #2
	bl GetAIDataUnk0x48Flag
	ldr r1, off_8010220 // =0x200 
	tst r0, r1
	beq loc_8010050
	mov r4, #1
	b loc_8010082
loc_8010050:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, #0
	cmp r0, #0
	beq loc_801006A
	cmp r0, #0xb
	beq loc_801006A
	cmp r0, #0xc
	beq loc_801006A
	ldr r1, off_8010224 // =byte_80203EA 
	ldrb r4, [r1,r0]
	b loc_801009E
loc_801006A:
	mov r1, #0xe
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, #4
	cmp r0, #0xff
	beq loc_8010078
	mov r4, #0
loc_8010078:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_801009E
loc_8010082:
	mov r1, #0x10
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_8010092
	mov r1, #5
	mul r0, r1
	add r0, #0x12
loc_8010092:
	add r4, r4, r0
	b loc_801009E
loc_8010096:
	bl sub_800FD0A
	pop {r4,r7,pc}
loc_801009C:
	mov r4, #0
loc_801009E:
	mov r0, r4
	pop {r4,r7,pc}
	.balign 4, 0
	.word byte_80100A8
byte_80100A8: .byte 0x0, 0x5, 0x14, 0xA, 0xF, 0x0, 0x0, 0x0, 0x10, 0xB5, 0x4, 0x24
	.byte 0xFA, 0x21, 0x89, 0x0, 0x88, 0x42, 0xA, 0xDA, 0x0, 0x24, 0xFA, 0x21
	.byte 0x49, 0x18, 0x88, 0x42, 0x5, 0xDA, 0x3, 0x24, 0xEB, 0x21, 0x49, 0x18
	.byte 0x88, 0x42, 0x0, 0xDA, 0x2, 0x24, 0x20, 0x1C, 0x10, 0xBD, 0x10, 0xB5
	.byte 0x29, 0x21, 0x3, 0xF0, 0x4B, 0xFB, 0x0, 0x28, 0x1, 0xD1, 0x1, 0x20
	.byte 0x10, 0xBD, 0xFF, 0xF7, 0x2D, 0xFE, 0x10, 0xBD
	thumb_func_end sub_801002C

	thumb_func_start sub_80100EC
sub_80100EC:
	push {lr}
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0x17
	blt loc_8010102
	cmp r0, #0x18
	bgt loc_8010102
	bl sub_8016A38
	b locret_801010A
loc_8010102:
	bl sub_801002C
	bl sprite_setPalette // (int pallete) -> void
locret_801010A:
	pop {pc}
	thumb_func_end sub_80100EC

	thumb_local_start
sub_801010C:
	push {lr}
	ldrb r0, [r5,#0x16]
	bl battle_findPlayer
	ldr r0, [r0,#0x58]
	str r0, [r5,#0x58]
	pop {pc}
	thumb_func_end sub_801010C

	thumb_func_start sub_801011A
sub_801011A:
	push {lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	add r0, #0xa0
	mov r1, #0
	strb r1, [r0,#oAIAttackVars_Unk_1d]
	strh r1, [r0,#oAIAttackVars_Unk_1e]
	bl sub_80E1662
	pop {pc}
	thumb_func_end sub_801011A

	thumb_local_start
sub_801012C:
	push {r4,r7,lr}
	mov r7, #0x50 
	ldr r4, [r5,#0x54]
	bl object_getFlag // () -> int
	mov r1, #4
	tst r0, r1
	beq loc_8010152
	ldrb r0, [r5]
	mov r1, #2
	bic r0, r1
	strb r0, [r5]
	ldr r0, [r4,r7]
	tst r0, r0
	bne locret_8010160
	bl sub_80E4D8A
	str r0, [r4,r7]
	b locret_8010160
loc_8010152:
	ldr r0, [r4,r7]
	tst r0, r0
	beq locret_8010160
	bl sub_80E4DA2
	mov r0, #0
	str r0, [r4,r7]
locret_8010160:
	pop {r4,r7,pc}
	thumb_func_end sub_801012C

	thumb_local_start
sub_8010162:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldrh r1, [r4,#oCollisionData_Unk_26]
	ldr r2, dword_8010228 // =0xffff 
	cmp r1, r2
	beq loc_801017E
	sub r1, #1
	blt loc_8010190
	strh r1, [r4,#oCollisionData_Unk_26]
	tst r1, r1
	bne loc_801017E
	mov r0, #0x94
	bl PlaySoundEffect
loc_801017E:
	bl object_getFlag // () -> int
	ldr r1, dword_801022C // =0x400000 
	tst r0, r1
	bne loc_8010190
	mov r0, #OBJECT_FLAGS_UNK_4
	bl object_setFlag1 // (int a1) -> void
	b locret_8010196
loc_8010190:
	mov r0, #4
	bl object_clearFlag // (int bitfield) -> void
locret_8010196:
	pop {r4,pc}
	thumb_func_end sub_8010162

	thumb_local_start
sub_8010198:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrh r1, [r3,#oCollisionData_Unk_26]
	tst r1, r1
	beq locret_80101AC
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq locret_80101AC
	mov r0, #0
	strh r0, [r3,#oCollisionData_Unk_26]
locret_80101AC:
	pop {pc}
	thumb_func_end sub_8010198

	thumb_func_start sub_80101AE
sub_80101AE:
	push {lr}
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_Unk_26]
	mov r0, #OBJECT_FLAGS_UNK_4
	bl object_setFlag1 // (int a1) -> void
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	pop {pc}
	thumb_func_end sub_80101AE

	thumb_func_start sub_80101C4
sub_80101C4:
	push {lr}
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	mov r0, #0
	strh r0, [r1,#oCollisionData_Unk_26]
	mov r0, #4
	bl object_clearFlag // (int bitfield) -> void
	pop {pc}
	thumb_func_end sub_80101C4

	thumb_func_start sub_80101D4
sub_80101D4:
	push {r4,lr}
	mov r4, r0
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xc
	beq loc_80101EE
	cmp r0, #0x12
	blt locret_80101F6
	cmp r0, #0x16
	ble loc_80101EE
	cmp r0, #0x18
	bne locret_80101F6
loc_80101EE:
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	strb r4, [r0,#oBattleObject_CurAnim]
	mov r1, #0xff
	strb r1, [r0,#oBattleObject_CurAnimCopy]
locret_80101F6:
	pop {r4,pc}
	thumb_func_end sub_80101D4

	thumb_func_start sub_80101F8
sub_80101F8:
	push {r4,lr}
	bl GetCurPETNavi // () -> u8
	mov r4, r0
	cmp r4, #0
	bne loc_8010216
	movflag EVENT_163
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_8010216
	bl notZero_eByte200AD04
	beq loc_8010216
	mov r4, #0xd
loc_8010216:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
off_801021C: .word byte_20349C0
off_8010220: .word 0x200
off_8010224: .word byte_80203EA
dword_8010228: .word 0xFFFF
dword_801022C: .word 0x400000
	thumb_func_end sub_80101F8

	thumb_local_start
sub_8010230:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_8010268
	bl battle_isPaused
	bne locret_8010268
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r5,#oBattleObject_HP]
	cmp r0, #1
	ble locret_8010268
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r1, off_80102A0 // =byte_80102A4 
	ldrb r0, [r1,r0]
	tst r0, r0
	beq loc_8010264
	ldrb r3, [r4,#oAIData_Unk_09]
	add r3, #1
	strb r3, [r4,#oAIData_Unk_09]
	cmp r3, r0
	blt locret_8010268
	mov r0, #1
	bl object_subtractHP
loc_8010264:
	mov r0, #0
	strb r0, [r4,#oAIData_Unk_09]
locret_8010268:
	pop {r4,pc}
	thumb_func_end sub_8010230

	thumb_local_start
sub_801026A:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_801029E
	bl battle_isPaused
	bne locret_801029E
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r5,#oBattleObject_HP]
	cmp r0, #1
	ble locret_801029E
	ldrb r0, [r4,#oAIData_Unk_12]
	ldr r1, off_80102A0 // =byte_80102A4 
	ldrb r0, [r1,r0]
	tst r0, r0
	beq loc_801029A
	ldrb r3, [r4,#oAIData_Unk_09]
	add r3, #1
	strb r3, [r4,#oAIData_Unk_09]
	cmp r3, r0
	blt locret_801029E
	mov r0, #1
	bl object_subtractHP
loc_801029A:
	mov r0, #0
	strb r0, [r4,#oAIData_Unk_09]
locret_801029E:
	pop {r4,pc}
	.balign 4, 0
off_80102A0: .word byte_80102A4
byte_80102A4: .byte 0x0, 0x28, 0x23, 0x1E, 0x19, 0x14, 0xF, 0xA
	thumb_func_end sub_801026A

	thumb_func_start handleCustHPBug_80102AC
handleCustHPBug_80102AC:
	push {r4-r6,lr}
	mov r4, r0
	bl sub_800A9E2
	mov r1, #5
	tst r0, r1
	beq locret_80102F0
	mov r0, r4
	mov r1, #oNaviStats_CustHPBug
	bl GetBattleNaviStatsByte
	ldr r1, off_80102F4 // =byte_80102F8 
	ldrb r6, [r1,r0]
	tst r6, r6
	beq locret_80102F0
	mov r0, r4
	bl battle_findPlayer
	mov r5, r0
	beq locret_80102F0
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r5,#oBattleObject_HP]
	cmp r0, #1
	ble locret_80102F0
	ldrb r3, [r4,#oAIData_Unk_0a]
	add r3, #1
	strb r3, [r4,#oAIData_Unk_0a]
	cmp r3, r6
	blt locret_80102F0
	mov r0, #1
	bl object_subtractHP
	mov r0, #0
	strb r0, [r4,#oAIData_Unk_0a]
locret_80102F0:
	pop {r4-r6,pc}
	.balign 4, 0
off_80102F4: .word byte_80102F8
byte_80102F8: .byte 0x0, 0x28, 0x1E, 0x14, 0xA, 0x5, 0x3, 0x2
	thumb_func_end handleCustHPBug_80102AC

	thumb_func_start sub_8010300
sub_8010300:
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	lsl r1, r1, #2
	add r1, #oBattleState_AliveBattleActors
	ldr r1, [r2,r1]
	ldr r1, [r1,#oBattleObject_AIDataPtr]
	ldr r1, [r1,#oAIData_Unk_48]
	and r0, r1
	mov pc, lr
	thumb_func_end sub_8010300

	thumb_func_start SetAIDataUnk0x48Flag
SetAIDataUnk0x48Flag:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r1, [r3,#oAIData_Unk_48]
	orr r1, r0
	str r1, [r3,#oAIData_Unk_48]
	mov pc, lr
	thumb_func_end SetAIDataUnk0x48Flag

	thumb_func_start ClearAIDataUnk0x48Flag
ClearAIDataUnk0x48Flag:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r1, [r3,#oAIData_Unk_48]
	bic r1, r0
	str r1, [r3,#oAIData_Unk_48]
	mov pc, lr
	thumb_func_end ClearAIDataUnk0x48Flag

	thumb_local_start
sub_8010326:
	ldr r3, [r5,#0x58]
	str r0, [r3,#0x48]
	mov pc, lr
	thumb_func_end sub_8010326

	thumb_func_start GetAIDataUnk0x48Flag
GetAIDataUnk0x48Flag:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r3,#oAIData_Unk_48]
	mov pc, lr
	thumb_func_end GetAIDataUnk0x48Flag

	thumb_func_start sub_8010332
sub_8010332:
	push {r4,lr}
	bl GetBattleMode
	cmp r0, #9
	bne loc_8010340
	mov r0, #1
	b locret_8010360
loc_8010340:
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_8010350
	mov r1, #4
	mov r0, r1
	pop {r4,pc}
loc_8010350:
	mov r4, #0xb
	mul r4, r0
	mov r1, #0x2b 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r1, off_8010364 // =byte_8020FE0 
	add r1, r1, r4
	ldrb r0, [r1,r0]
locret_8010360:
	pop {r4,pc}
	.balign 4, 0
off_8010364: .word byte_8020FE0
	thumb_func_end sub_8010332

	thumb_local_start
sub_8010368:
	push {lr}
	bl object_getFlag // () -> int
	ldr r1, off_8010384 // =byte_8010388 
	mov r2, #0x10
	tst r0, r2
	beq loc_8010378
	add r1, #0x10
loc_8010378:
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r2, [r1]
	ldr r3, [r1,#4]
	pop {pc}
	.balign 4, 0
off_8010384: .word byte_8010388
byte_8010388: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF, 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0
	.byte 0x0, 0x0, 0x80, 0x0, 0x88, 0xF
	thumb_func_end sub_8010368

	thumb_func_start sub_80103A8
sub_80103A8:
	push {lr}
	mov r1, #0x31 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0
	tst r0, r0
	beq loc_80103B8
	mov r1, #3
loc_80103B8:
	mov r0, r1
	pop {pc}
	thumb_func_end sub_80103A8

	thumb_func_start battle_findPlayer
// r0 = alliance
battle_findPlayer:
	push {r4-r6,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	mov r1, #0x10
	mul r0, r1
	add r0, #oBattleState_BattleActors
	add r6, r6, r0
	mov r4, #0
loc_80103CC:
	ldr r5, [r6]
	tst r5, r5
	beq loc_80103DC
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	beq loc_80103E8
loc_80103DC:
	add r5, #3 // ??? useless loop, doesn't even read all entries
	add r4, #1
	cmp r4, #BATTLE_ACTORS_PER_SIDE
	blt loc_80103CC
	mov r0, #NULL
	pop {r4-r6,pc}
loc_80103E8:
	mov r0, r5
	pop {r4-r6,pc}
	thumb_func_end battle_findPlayer

	thumb_func_start sub_80103EC
sub_80103EC:
	push {lr}
	bl sub_800A7E2
	bl battle_findPlayer
	pop {pc}
	thumb_func_end sub_80103EC

	thumb_func_start sub_80103F8
sub_80103F8:
	push {r4-r7,lr}
	sub sp, sp, #8
	ldrb r1, [r5,#oBattleObject_PanelX]
	str r1, [sp]
	ldrb r1, [r5,#oBattleObject_PanelY]
	str r1, [sp,#4]
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	mov r1, #0x10
	mul r0, r1
	add r0, #oBattleState_BattleActors
	add r6, r6, r0
	mov r4, #4
	mov r7, #0
loc_8010414:
	ldr r5, [r6]
	tst r5, r5
	beq loc_8010454
	ldrb r0, [r5,#oBattleObject_CurState]
	cmp r0, #8
	beq loc_8010454
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	beq loc_8010432
	cmp r0, #0
	beq loc_8010432
	cmp r0, #1
	bne loc_8010454
loc_8010432:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	add r3, sp, #0
	bl sub_8010460
	cmp r7, #0
	beq loc_8010452
	push {r0}
	ldrb r0, [r7,#oBattleObject_PanelX]
	ldrb r1, [r7,#oBattleObject_PanelY]
	add r3, sp, #4
	bl sub_8010460
	pop {r1}
	cmp r0, r1
	ble loc_8010454
loc_8010452:
	mov r7, r5
loc_8010454:
	add r6, #4
	sub r4, #1
	bne loc_8010414
	mov r0, r7
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end sub_80103F8

	thumb_local_start
sub_8010460:
	ldr r2, [r3]
	sub r0, r2, r0
	mov r2, r0
	mul r0, r2
	ldr r2, [r3,#4]
	sub r1, r2, r1
	mov r2, r1
	mul r1, r2
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_8010460

	thumb_func_start sub_8010474
sub_8010474:
	push {lr}
	ldr r2, [r5,#oBattleObject_CollisionDataPtr]
	strh r4, [r2,#oCollisionData_FlashingInvisTimer]
	mov r0, #OBJECT_FLAGS_INVIS
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0x93
	bl PlaySoundEffect
	pop {pc}
	thumb_func_end sub_8010474

	thumb_func_start sub_8010488
sub_8010488:
	push {r4,r7,lr}
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #oAIData_AttackVars
	ldrb r0, [r7,#oAIAttackVars_Unk_1b]
	cmp r0, #0
	beq loc_80104B6
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	ldrb r1, [r7,#oAIAttackVars_Unk_0c]
	add r1, r1, r1
	add r1, #0x36 
	ldrh r2, [r7,#oAIAttackVars_Damage]
	ldrh r3, [r7,#oAIAttackVars_Unk_0e]
	add r2, r2, r3
	ldrh r3, [r0,r1]
	add r3, r3, r2
	strh r3, [r0,r1]
	mov r0, #0x58 
	add r0, #0xff
	bl PlaySoundEffect
	pop {r4,r7,pc}
loc_80104B6:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	push {r1,r2}
	bl object_getEnemyDirection
	pop {r1,r2}
	lsl r0, r0, #0x12
	add r1, r1, r0
	mov r3, #0x30 
	lsl r3, r3, #0x10
	mov r4, #0
	bl sub_80E1D7A
	mov r0, #0x90
	bl PlaySoundEffect
	pop {r4,r7,pc}
	thumb_func_end sub_8010488

	thumb_func_start sub_80104E0
sub_80104E0:
	push {r4,r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	push {r1,r2}
	bl object_getEnemyDirection
	pop {r1,r2}
	lsl r0, r0, #0x12
	add r1, r1, r0
	mov r3, #0x30 
	lsl r3, r3, #0x10
	mov r4, #0
loc_8010500:
	bl sub_80E1D7A
	mov r0, #0x90
	bl PlaySoundEffect
	pop {r4,r7,pc}
	thumb_func_end sub_80104E0

	thumb_func_start sub_801050C
sub_801050C:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0xc
	mul r0, r1
	add r0, #oBattleState_Unk_a0
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	add r7, r7, r0
	mov r6, #0
loc_801051E:
	ldr r0, [r7]
	tst r0, r0
	beq loc_801053E
	ldrh r1, [r0,#0x24]
	tst r1, r1
	beq loc_801053E
	ldrh r1, [r0,#0x26]
	strh r1, [r0,#0x24]
	add r0, #0x34 
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl spawn_t1_0x0_EffectObject
	mov r0, #SOUND_UNK_8A
	bl PlaySoundEffect
loc_801053E:
	add r7, #4
	add r6, #1
	cmp r6, #3
	blt loc_801051E
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801050C

	thumb_local_start
sub_8010548:
	push {r4,lr}
	mov r4, r0
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r1, [r0,#oAIData_TotalDamageTaken]
	add r1, r1, r4
	ldr r2, dword_80108EC // =0xffff 
	cmp r1, r2
	ble loc_801055A
	mov r1, r2
loc_801055A:
	strh r1, [r0,#oAIData_TotalDamageTaken]
	pop {r4,pc}
	thumb_func_end sub_8010548

	thumb_func_start sub_801055E
sub_801055E:
	push {lr}
	bl battle_findPlayer
	ldr r0, [r0,#oBattleObject_AIDataPtr]
	ldrh r0, [r0,#oAIData_TotalDamageTaken]
	pop {pc}
	thumb_func_end sub_801055E

	thumb_func_start sub_801056A
sub_801056A:
	push {r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	str r0, [r7,#oAIData_Unk_68]
	add r7, #0xa0
	ldr r0, off_80108F0 // =0x810 
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x40 
	bl sub_801DACC
	bl sub_800E9FA
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802CE78
	str r1, [r7,#oAIAttackVars_Damage]
	strh r2, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_14]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	ldr r0, [sp,#4]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	ldr r0, [sp,#8]
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	beq loc_80105BE
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	tst r0, r0
	beq loc_80105BE
	ldrh r1, [r7,#oAIAttackVars_Damage]
	ldrh r2, [r7,#oAIAttackVars_AttackBoost]
	bl sub_801EB18
loc_80105BE:
	ldr r1, [sp]
	ldr r2, off_80108F4 // =0x200 
	tst r1, r2
	beq loc_80105D2
	mov r0, #0x47 
	bl object_setAttack0
	bl sub_80EE90C
	b loc_80105EE
loc_80105D2:
	ldr r2, off_80108F8 // =0x400 
	tst r1, r2
	beq loc_80105E4
	mov r0, #0x48 
	bl object_setAttack0
	bl sub_80EEA3C
	b loc_80105EE
loc_80105E4:
	mov r0, #0x4b 
	bl object_setAttack0
	bl sub_80EED56
loc_80105EE:
	add sp, sp, #0xc
	pop {r7,pc}
	thumb_func_end sub_801056A

	thumb_func_start sub_80105F2
sub_80105F2:
	push {r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	str r0, [r7,#oAIData_Unk_68]
	add r7, #0xa0
	ldr r0, off_80108F0 // =0x810 
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x40 
	bl sub_801DACC
	bl sub_800E9FA
	ldr r0, [sp,#0xc]
	str r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_14]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	ldr r0, [sp,#4]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	ldr r0, [sp,#8]
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	beq loc_8010646
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	tst r0, r0
	beq loc_8010646
	ldrh r1, [r7,#oAIAttackVars_Damage]
	ldrh r2, [r7,#oAIAttackVars_AttackBoost]
	bl sub_801EB18
loc_8010646:
	ldr r1, [sp]
	ldr r2, off_80108F4 // =0x200 
	tst r1, r2
	beq loc_8010656
	mov r0, #0x47 
	bl object_setAttack0
	b loc_801065C
loc_8010656:
	mov r0, #0x48 
	bl object_setAttack0
loc_801065C:
	add sp, sp, #0x10
	pop {r7,pc}
	thumb_func_end sub_80105F2

	thumb_func_start sub_8010660
sub_8010660:
	push {r4,r6,r7,lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_80106B8
	mov r1, #0xd
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xff
	beq loc_80106B8
	mov r2, #4
	tst r0, r2
	beq loc_80106B8
	ldrh r0, [r5,#oBattleObject_MaxHP]
	lsr r0, r0, #2
	ldrh r1, [r5,#oBattleObject_HP]
	cmp r0, r1
	bcc loc_80106B8
	mov r1, #0xd
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #4
	bic r0, r2
	mov r2, r0
	mov r1, #0xd
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0
	mov r3, #0
	mov r4, #2
	mov r6, #0
	ldr r7, dword_80106BC // =0x17b 
	bl sub_80E90FE
	mov r2, r0
	mov r1, #1
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF16
	mov r0, #1
	pop {r4,r6,r7,pc}
loc_80106B8:
	mov r0, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_80106BC: .word 0x17B
	thumb_func_end sub_8010660

	thumb_func_start sub_80106C0
sub_80106C0:
	push {r4,r6,r7,lr}
	mov r4, r0
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8010738
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r6, r0
	mov r1, #0xd
	bl GetBattleNaviStatsByte
	cmp r0, #0xff
	beq loc_8010738
	mov r2, #2
	tst r0, r2
	beq loc_8010738
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#7]
	cmp r1, #1
	beq loc_80106F6
	cmp r1, #2
	bne loc_8010738
loc_80106F6:
	mov r0, r6
	mov r1, #0xd
	bl GetBattleNaviStatsByte
	mov r2, #2
	bic r0, r2
	mov r2, r0
	mov r1, #0xd
	mov r0, r6
	bl SetBattleNaviStatsByte
	mov r0, r6
	bl battle_findPlayer
	push {r5}
	mov r5, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0
	mov r3, #0
	mov r4, #1
	mov r6, #0
	ldr r7, dword_801073C // =0x17a 
	bl sub_80E90FE
	mov r2, r0
	mov r1, #1
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF16
	pop {r5}
	mov r0, #1
	pop {r4,r6,r7,pc}
loc_8010738:
	mov r0, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_801073C: .word 0x17A
	thumb_func_end sub_80106C0

	thumb_func_start sub_8010740
sub_8010740:
	push {r4,r6,r7,lr}
	mov r4, r0
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_80107B6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r6, r0
	mov r1, #0xd
	bl GetBattleNaviStatsByte
	cmp r0, #0xff
	beq loc_80107B6
	mov r2, #1
	tst r0, r2
	beq loc_80107B6
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#0x16]
	mov r2, #2
	tst r1, r2
	beq loc_80107B6
	mov r0, r6
	mov r1, #0xd
	bl GetBattleNaviStatsByte
	mov r2, #1
	bic r0, r2
	mov r2, r0
	mov r1, #0xd
	mov r0, r6
	bl SetBattleNaviStatsByte
	mov r0, r6
	bl battle_findPlayer
	push {r5}
	mov r5, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0
	mov r3, #0
	lsl r4, r4, #0x10
	mov r6, #0
	ldr r7, off_80107BC // =0x179 
	bl sub_80E90FE
	mov r2, r0
	mov r1, #1
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF16
	pop {r5}
	mov r0, #1
	pop {r4,r6,r7,pc}
loc_80107B6:
	mov r0, #0
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_80107BC: .word 0x179
	thumb_func_end sub_8010740

	thumb_func_start sub_80107C0
sub_80107C0:
	push {lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_80107D0
	mov r3, #0
	pop {pc}
loc_80107D0:
	mov r3, #3
	pop {pc}
	thumb_func_end sub_80107C0

	thumb_func_start sub_80107D4
sub_80107D4:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_801081E
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r4,#oAIData_ChipLockoutTimer]
	tst r0, r0
	beq loc_80107E8
	sub r0, #1
	strb r0, [r4,#oAIData_ChipLockoutTimer]
loc_80107E8:
	ldrb r0, [r4,#oAIData_Unk_15]
	tst r0, r0
	beq loc_80107F2
	sub r0, #1
	strb r0, [r4,#oAIData_Unk_15]
loc_80107F2:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	mov r4, r0
	ldrb r0, [r4]
	tst r0, r0
	beq locret_801081E
	ldrh r1, [r4,#0x2e]
	tst r1, r1
	beq loc_801080A
	sub r1, #1
	strh r1, [r4,#0x2e]
loc_801080A:
	ldrh r1, [r4,#0x3a]
	tst r1, r1
	beq loc_8010814
	sub r1, #1
	strh r1, [r4,#0x3a]
loc_8010814:
	ldrh r1, [r4,#0x3c]
	tst r1, r1
	beq locret_801081E
	sub r1, #1
	strh r1, [r4,#0x3c]
locret_801081E:
	pop {r4,pc}
	thumb_func_end sub_80107D4

	thumb_func_start sub_8010820
sub_8010820:
	push {r4,lr}
	mov r0, #0xff
	and r4, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	bl GetBattleNaviStatsByte
	add r2, r0, r4
	cmp r2, #0xa
	blt loc_8010836
	mov r2, #9
loc_8010836:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	bl SetBattleNaviStatsByte
loc_801083E:
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	push {r1-r3}
	ldrh r0, [r5,#oBattleObject_NameID]
	mov r1, #0x20 
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	bl getBattleArmPositionMaybe_8018810
	lsl r0, r0, #0x10
	lsl r4, r1, #0x10
	pop {r1-r3}
	add r1, r1, r0
	add r3, r3, r4
	mov r4, #0x31 
	bl spawn_t1_0x0_EffectObject
	mov r0, #0x1a
	add r0, #0xff
	bl PlaySoundEffect
	pop {r4,pc}
	thumb_func_end sub_8010820

	thumb_func_start sub_801086C
sub_801086C:
	push {r4,lr}
	ldr r4, off_80108B0 // =byte_80108B8 
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_8010890
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_8010888
	ldrb r0, [r4,r0]
	b loc_8010892
loc_8010888:
	mov r1, #0x10
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_8010892
loc_8010890:
	ldrb r0, [r4,r0]
loc_8010892:
	bl sub_8019F8C
	ldr r4, off_80108B4 // =byte_80108D1 
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_80108A8
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
loc_80108A8:
	ldrb r0, [r4,r0]
	bl sub_8019F9E
	pop {r4,pc}
	.balign 4, 0
off_80108B0: .word byte_80108B8
off_80108B4: .word byte_80108D1
byte_80108B8: .byte 0x0, 0x1, 0x3, 0x0, 0x0, 0x1, 0x2, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x3, 0x0, 0x0
	.byte 0x1, 0x2, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0
byte_80108D1: .byte 0x0, 0x0, 0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0x80, 0x40, 0x40, 0x0
	.byte 0x0, 0x0, 0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0x80, 0x40, 0x40, 0x0
	.byte 0x0, 0x0, 0x0
dword_80108EC: .word 0xFFFF
off_80108F0: .word 0x810
off_80108F4: .word 0x200
off_80108F8: .word 0x400
	thumb_func_end sub_801086C

	thumb_func_start sub_80108FC
sub_80108FC:
	push {r4,r6,r7,lr}
	bl getBattleHandAddr_8010018
	b loc_8010906
	push {r4,r6,r7,lr}
loc_8010906:
	mov r7, r0
	ldrb r4, [r7]
loc_801090A:
	add r0, r4, r4
	add r0, #2
	ldrh r1, [r7,r0]
	ldr r2, dword_801099C // =0xffff 
	cmp r1, r2
	beq locret_801092A
	ldr r2, off_80109A0 // =0x190 
	sub r1, r1, r2
	cmp r1, #0xa
	bhi loc_8010926
	mov r0, r4
	bl sub_801092C
	b loc_801090A
loc_8010926:
	add r4, #1
	b loc_801090A
locret_801092A:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80108FC

	thumb_local_start
sub_801092C:
	push {lr}
loc_801092E:
	add r1, r0, #1
	push {r0,r1}
	bl sub_8010940
	pop {r0,r1}
	add r0, #1
	cmp r0, #5
	blt loc_801092E
	pop {pc}
	thumb_func_end sub_801092C

	thumb_local_start
sub_8010940:
	push {r4-r6,lr}
	add r4, r0, r0
	add r5, r1, r1
	mov r2, #2
	add r2, r2, r4
	mov r3, #2
	add r3, r3, r5
	ldrh r6, [r7,r3]
	strh r6, [r7,r2]
	mov r2, #0xe
	add r2, r2, r4
	mov r3, #0xe
	add r3, r3, r5
	ldrh r6, [r7,r3]
	strh r6, [r7,r2]
	mov r2, #0x1a
	add r2, r2, r4
	mov r3, #0x1a
	add r3, r3, r5
	ldrh r6, [r7,r3]
	strh r6, [r7,r2]
	mov r2, #0x26 
	add r2, r2, r4
	mov r3, #0x26 
	add r3, r3, r5
	ldrh r6, [r7,r3]
	strh r6, [r7,r2]
	mov r2, #0x32 
	add r2, r2, r4
	mov r3, #0x32 
	add r3, r3, r5
	ldrh r6, [r7,r3]
	strh r6, [r7,r2]
	mov r2, #0x3e 
	add r2, r2, r0
	mov r3, #0x3e 
	add r3, r3, r1
	ldrb r6, [r7,r3]
	strb r6, [r7,r2]
	mov r2, #0x44 
	add r2, r2, r0
	mov r3, #0x44 
	add r3, r3, r1
	ldrb r6, [r7,r3]
	strb r6, [r7,r2]
	pop {r4-r6,pc}
dword_801099C: .word 0xFFFF
off_80109A0: .word 0x190
	thumb_func_end sub_8010940

	thumb_func_start sub_80109A4
sub_80109A4:
	push {r4,r7,lr}
	mov r7, r0
	mov r4, r1
	ldr r2, dword_80109D8 // =0xffff 
	cmp r0, r2
	beq loc_80109D0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r0, [r0,#0x1a]
	mov r2, #0xfa
	lsl r2, r2, #2
	cmp r0, r2
	blt locret_80109D2
	sub r0, r0, r2
	lsl r0, r0, #2
	ldr r2, off_80109D4 // =off_80109DC 
	ldr r2, [r0,r2]
	mov r0, r7
	mov r1, r4
	mov lr, pc
	bx r2
	pop {r4,r7,pc}
loc_80109D0:
	mov r0, #0
locret_80109D2:
	pop {r4,r7,pc}
	.balign 4, 0
off_80109D4: .word off_80109DC
dword_80109D8: .word 0xFFFF
off_80109DC: .word sub_8010A90+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010AE4+1
	.word sub_8010B78+1
	.word sub_8010BD0+1
	.word sub_8010BF0+1
	.word sub_8010C06+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	.word sub_8010C50+1
	thumb_func_end sub_80109A4

	thumb_local_start
sub_8010A90:
	push {r4,lr}
	mov r4, r1
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_8010ACE
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	add r0, #oBattleState_AliveOpponentActors
	neg r1, r4
	add r1, r1, r1
	add r1, #3
	mov r3, #0
loc_8010AAC:
	ldr r2, [r0]
	tst r2, r2
	beq loc_8010ABA
	ldrh r2, [r2,#oBattleObject_HP]
	cmp r2, r3
	blt loc_8010ABA
	mov r3, r2
loc_8010ABA:
	add r0, #4
	sub r1, #1
	bgt loc_8010AAC
	mov r2, #0xfa
	add r2, r2, r2
	cmp r3, r2
	ble loc_8010ACA
	mov r3, r2
loc_8010ACA:
	mov r0, r3
	pop {r4,pc}
loc_8010ACE:
	mov r0, #1
	eor r0, r4
	bl battle_findPlayer
	ldrh r0, [r0,#oBattleObject_HP]
	mov r1, #0xfa
	add r1, r1, r1
	cmp r0, r1
	ble locret_8010AE2
	mov r0, r1
locret_8010AE2:
	pop {r4,pc}
	thumb_func_end sub_8010A90

	thumb_local_start
sub_8010AE4:
	push {r4,lr}
	mov r4, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r1, [r0,#0x1a]
	ldr r2, off_8010D28 // =0x3e9 
	sub r1, r1, r2
	mov r2, #0x28 
	mul r2, r4
	ldr r3, off_8010D2C // =byte_203EB00 
	add r3, r3, r2
	add r2, r1, r1
	ldrh r0, [r3,r2]
	mov r4, r1
	bl sub_8000D84
	mov r1, #0
	ldr r2, off_8010B24 // =byte_8010B2C 
loc_8010B08:
	ldr r3, [r2]
	cmp r0, r3
	ble loc_8010B16
	add r2, #4
	add r1, #1
	cmp r1, #0xa
	blt loc_8010B08
loc_8010B16:
	mov r0, #0x16
	mul r0, r4
	add r1, r1, r1
	ldr r2, off_8010D30 // =byte_8020E54
	add r2, r2, r1
	ldrh r0, [r2,r0]
	pop {r4,pc}
	.balign 4, 0
off_8010B24: .word byte_8010B2C
	.word byte_8010B54
byte_8010B2C: .byte 0x0, 0x10, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x16
	.byte 0x0, 0x0, 0x0, 0x18, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x22, 0x0, 0x0
	.byte 0x0, 0x24, 0x0, 0x0, 0x0, 0x26, 0x0, 0x0, 0x0, 0x28, 0x0, 0x0
byte_8010B54: .byte 0xD2, 0x0, 0xD2, 0x0, 0x64, 0x0, 0xD2, 0x0, 0x64, 0x0, 0x5F
	.byte 0x0, 0xE6, 0x0, 0xAF, 0x0, 0x69, 0x0, 0x64, 0x0, 0xDC, 0x0
	.byte 0xB4, 0x0, 0xD2, 0x0, 0x20, 0x0, 0xA5, 0x0, 0x64, 0x0, 0x28
	.byte 0x0, 0x64, 0x0
	thumb_func_end sub_8010AE4

	thumb_local_start
sub_8010B78:
	push {lr}
	push {r0,r1}
	bl sub_800A8F8
	pop {r0,r1}
	beq loc_8010B92
	mov r0, r1
	bl sub_802E070
	ldrh r0, [r0,#0x28]
	ldr r1, off_8010D34 // =0x1500 
	add r0, r0, r1
	b loc_8010B96
loc_8010B92:
	bl sub_801DFE4
loc_8010B96:
	mov r1, r0
	mov r0, #0xa
	lsr r1, r1, #7
	cmp r1, #0x80
	bge locret_8010BCE
	cmp r1, #0x40 
	bgt loc_8010BB0
	mov r0, #0x16
	mul r0, r1
	mov r1, #0x40 
	svc 6
	add r0, #0xa
	b locret_8010BCE
loc_8010BB0:
	cmp r1, #0x70 
	bgt loc_8010BC2
	sub r1, #0x40 
	mov r0, #0x60 
	mul r0, r1
	mov r1, #0x30 
	svc 6
	add r0, #0x20 
	b locret_8010BCE
loc_8010BC2:
	sub r1, #0x70 
	mov r0, #0x80
	mul r0, r1
	mov r1, #0xf
	svc 6
	add r0, #0x80
locret_8010BCE:
	pop {pc}
	thumb_func_end sub_8010B78

	thumb_local_start
sub_8010BD0:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	mov r0, r1
	bl battle_findPlayer
	tst r0, r0
	beq locret_8010BEE
	ldrh r1, [r0,#oBattleObject_HP]
	ldrh r0, [r0,#oBattleObject_MaxHP]
	sub r0, r0, r1
	ldr r1, off_8010D38 // =0x1f4 
	cmp r0, r1
	ble locret_8010BEE
	mov r0, r1
locret_8010BEE:
	pop {r6,r7,pc}
	thumb_func_end sub_8010BD0

	thumb_local_start
sub_8010BF0:
	push {lr}
	mov r0, r1
	bl battle_findPlayer
	tst r0, r0
	beq locret_8010C04
	ldrh r0, [r0,#oBattleObject_HP]
	mov r1, #0x64 
	svc 6
	mov r0, r1
locret_8010C04:
	pop {pc}
	thumb_func_end sub_8010BF0

	thumb_local_start
sub_8010C06:
	push {r4,lr}
	mov r4, r1
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_8010C36
	mov r0, #0
	mov r1, #0
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	add r2, #oBattleState_AliveOpponentActors
loc_8010C1E:
	ldr r3, [r2]
	tst r3, r3
	beq loc_8010C2C
	ldrh r3, [r3,#oBattleObject_MaxHP]
	cmp r3, r0
	blt loc_8010C2C
	mov r0, r3
loc_8010C2C:
	add r2, #4
	add r1, #1
	cmp r1, #3
	blt loc_8010C1E
	b loc_8010C44
loc_8010C36:
	mov r0, #1
	eor r0, r4
	bl battle_findPlayer
	tst r0, r0
	beq locret_8010C4E
	ldrh r0, [r0,#oBattleObject_MaxHP]
loc_8010C44:
	lsr r0, r0, #1
	ldr r1, dword_8010D3C // =0x3e7 
	cmp r0, r1
	ble locret_8010C4E
	mov r0, r1
locret_8010C4E:
	pop {r4,pc}
	thumb_func_end sub_8010C06

	thumb_local_start
sub_8010C50:
	push {r4-r6,lr}
	mov r4, r0
	mov r6, r1
	mov r0, r1
	bl battle_findPlayer
	mov r5, r0
	tst r5, r5
	beq locret_8010C74
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r0, [r0,#0x1a]
	ldr r1, dword_8010D40 // =0x3ff 
	sub r0, r0, r1
	mov r1, r6
	bl sub_8010D04
locret_8010C74:
	pop {r4-r6,pc}
	thumb_func_end sub_8010C50

	thumb_func_start sub_8010C76
sub_8010C76:
	push {r4,lr}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r1, [r0,#0x1a]
	ldr r2, off_8010D28 // =0x3e9 
	cmp r1, r2
	blt loc_8010CB0
	sub r1, r1, r2
	ldr r3, off_8010D44 // =unk_20018C0 
	add r4, r1, r1
	ldrh r0, [r3,r4]
	bl sub_8000D84
	mov r1, #0
	ldr r2, off_8010CB4 // =byte_8010CB8
loc_8010C94:
	ldr r3, [r2]
	cmp r0, r3
	ble loc_8010CA2
	add r2, #4
	add r1, #1
	cmp r1, #0xa
	blt loc_8010C94
loc_8010CA2:
	mov r0, #0xb
	mul r0, r4
	add r1, r1, r1
	ldr r2, off_8010D48 // =byte_8020E54
	add r2, r2, r1
	ldrh r0, [r2,r0]
	pop {r4,pc}
loc_8010CB0:
	mov r0, r1
	pop {r4,pc}
	.balign 4, 0
off_8010CB4: .word byte_8010CB8
byte_8010CB8: .byte 0x0, 0x10, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x16
	.byte 0x0, 0x0, 0x0, 0x18, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x22, 0x0, 0x0
	.byte 0x0, 0x24, 0x0, 0x0, 0x0, 0x26, 0x0, 0x0, 0x0, 0x28, 0x0, 0x0
	thumb_func_end sub_8010C76

	thumb_func_start sub_8010CE0
sub_8010CE0:
	push {r4,lr}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrh r1, [r0,#0x1a]
	ldr r2, off_8010D28 // =0x3e9 
	cmp r1, r2
	blt loc_8010D00
	sub r1, r1, r2
	add r4, r1, r1
	mov r0, #0xb
	mul r0, r4
	mov r1, #0xa
	ldr r2, off_8010D4C // =byte_8020E54
	add r2, r2, r1
	ldrh r0, [r2,r0]
	pop {r4,pc}
loc_8010D00:
	mov r0, r1
	pop {r4,pc}
	thumb_func_end sub_8010CE0

	thumb_local_start
sub_8010D04:
	push {lr}
	mov r2, #2
	mul r0, r2
	ldr r2, off_8010D50 // =byte_80212D4
	add r2, r2, r0
	ldrb r0, [r2]
	ldrb r1, [r2,#1]
	bl sub_8012642
	pop {pc}
	thumb_func_end sub_8010D04

	thumb_local_start
sub_8010D18:
	lsl r0, r0, #2
	ldr r1, off_8010D54 // =dword_203CDF0 
	ldr r0, [r1,r0]
	mov pc, lr
	thumb_func_end sub_8010D18

	thumb_func_start sub_8010D20
sub_8010D20:
	push {r4,lr}
	mov r4, #0
	mov r0, r4
	pop {r4,pc}
off_8010D28: .word 0x3E9
off_8010D2C: .word byte_203EB00
off_8010D30: .word byte_8020E54
off_8010D34: .word 0x1500
off_8010D38: .word 0x1F4
dword_8010D3C: .word 0x3E7
dword_8010D40: .word 0x3FF
off_8010D44: .word unk_20018C0
off_8010D48: .word byte_8020E54
off_8010D4C: .word byte_8020E54
off_8010D50: .word byte_80212D4
off_8010D54: .word dword_203CDF0
	thumb_func_end sub_8010D20

	thumb_local_start
sub_8010D58:
	push {r6,lr}
	lsl r6, r0, #2
	cmp r0, #0xff
	beq loc_8010D7C
	bl sub_800F4A8
	cmp r0, #1
	blt loc_8010D70
	mov r0, #1
	bl sub_800F4B2
	b loc_8010D7C
loc_8010D70:
	ldr r1, off_8010D80 // =off_8010D84 
	ldr r0, [r1,r6]
	mov lr, pc
	bx r0
	mov r4, #0
	b locret_8010D7E
loc_8010D7C:
	ldr r0, dword_8010DCC // =0xffff 
locret_8010D7E:
	pop {r6,pc}
	.balign 4, 0
off_8010D80: .word off_8010D84
off_8010D84: .word sub_8010D98+1
	.word sub_8010DA2+1
	.word sub_8010DAC+1
	.word sub_8010DB6+1
	.word sub_8010DC0+1
	thumb_func_end sub_8010D58

	thumb_local_start
sub_8010D98:
	push {lr}
	mov r0, #0x47 
	bl sub_800EF02
	pop {pc}
	thumb_func_end sub_8010D98

	thumb_local_start
sub_8010DA2:
	push {lr}
	mov r0, #0x1e
	bl sub_800EF02
	pop {pc}
	thumb_func_end sub_8010DA2

	thumb_local_start
sub_8010DAC:
	push {lr}
	mov r0, #0x9a
	bl sub_800EF02
	pop {pc}
	thumb_func_end sub_8010DAC

	thumb_local_start
sub_8010DB6:
	push {lr}
	mov r0, #0xb1
	bl sub_800EF02
	pop {pc}
	thumb_func_end sub_8010DB6

	thumb_local_start
sub_8010DC0:
	push {lr}
	mov r0, #0xc0
	bl sub_800EF02
	pop {pc}
	.balign 4, 0
dword_8010DCC: .word 0xFFFF
	thumb_func_end sub_8010DC0

	thumb_func_start sub_8010DD0
sub_8010DD0:
	push {lr}
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_8010DDA
	pop {pc}
	thumb_func_end sub_8010DD0

	thumb_local_start
sub_8010DDA:
	push {lr}
	bl sub_80182B4
	ldrb r1, [r0,#1]
	lsl r1, r1, #2
	ldrb r2, [r0,#2]
	lsl r2, r2, #2
	ldr r0, off_8010E08 // =off_8010E0C 
	ldr r0, [r0,r1]
	ldr r0, [r0,r2]
	mov r2, #0
	mov lr, pc
	bx r0
	pop {pc}
	thumb_func_end sub_8010DDA

	thumb_func_start sub_8010DF6
sub_8010DF6:
	push {lr}
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r3, off_8010E08 // =off_8010E0C 
	ldr r3, [r3,r0]
	ldr r3, [r3,r1]
	mov lr, pc
	bx r3
	pop {pc}
off_8010E08: .word off_8010E0C
off_8010E0C: .word off_8010E18
	.word off_8010EA4
	.word off_8010EA4
off_8010E18: .word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
off_8010EA4: .word nullsub_42+1
	.word sub_8010F6A+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8010F7A+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8010F86+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8010F96+1
	.word sub_8010FD8+1
	.word nullsub_43+1
	.word sub_8011004+1
	.word nullsub_43+1
	.word sub_8010FAC+1
	.word sub_8010FC2+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8011366+1
off_8010F08: .word sub_80112E0+1
	.word sub_80112EA+1
	.word sub_80112F4+1
	.word sub_80112FE+1
	.word sub_8011308+1
	.word sub_8011312+1
	.word sub_8011330+1
	.word sub_801131C+1
	.word sub_8011326+1
	.word sub_801133A+1
	.word nullsub_43+1
	.word sub_8011366+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8011352+1
	.word sub_8011356+1
	.word sub_801135A+1
	.word sub_801135E+1
	.word sub_8011362+1
	.word nullsub_43+1
	.word sub_8011366+1
	thumb_func_end sub_8010DF6

	thumb_local_start
nullsub_42:
	mov pc, lr
	thumb_func_end nullsub_42

	thumb_local_start
sub_8010F6A:
	push {r4,lr}
	mov r4, #2
	lsl r2, r2, #0x10
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8010F6A

	thumb_local_start
sub_8010F7A:
	push {r4,lr}
	mov r4, #0
	bl sub_80C41D8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8010F7A

	thumb_local_start
sub_8010F86:
	push {r4,lr}
	mov r4, #0xb
	lsl r2, r2, #0x10
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8010F86

	thumb_local_start
sub_8010F96:
	push {r4,lr}
	mov r4, #3
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #0xa
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8010F96

	thumb_local_start
sub_8010FAC:
	push {r4,lr}
	mov r4, #0
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #0xd
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8010FAC

	thumb_local_start
sub_8010FC2:
	push {r4,lr}
	mov r4, #0x10
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #0x14
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8010FC2

	thumb_local_start
sub_8010FD8:
	push {r4,lr}
	push {r2}
	mov r4, #6
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #0x14
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r2}
	mov r4, #7
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #0x28 
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_ExtraVars]
	pop {r4,pc}
	thumb_func_end sub_8010FD8

	thumb_local_start
sub_8011004:
	push {r4,lr}
	mov r4, #0xf
	lsl r2, r2, #0x10
	add r4, r4, r2
	mov r2, #1
	lsl r2, r2, #8
	add r4, r4, r2
	mov r2, #9
	lsl r2, r2, #0x18
	add r4, r4, r2
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8011004

	thumb_func_start sub_8011020
sub_8011020:
	push {lr}
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_801102A
	pop {pc}
	thumb_func_end sub_8011020

	thumb_local_start
sub_801102A:
	push {lr}
	bl sub_80182B4
	ldrb r1, [r0,#1]
	lsl r1, r1, #2
	ldrb r2, [r0,#2]
	lsl r2, r2, #2
	ldr r0, off_8011058 // =off_801105C 
	ldr r0, [r0,r1]
	ldr r0, [r0,r2]
	mov lr, pc
	bx r0
	pop {pc}
	thumb_func_end sub_801102A

	thumb_func_start sub_8011044
sub_8011044:
	push {lr}
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r2, off_8011058 // =off_801105C 
	ldr r2, [r2,r0]
	ldr r2, [r2,r1]
	mov lr, pc
	bx r2
	pop {pc}
	.balign 4, 0x00
off_8011058: .word off_801105C
off_801105C: .word off_8011068
	.word off_80110F4
	.word off_80110F4
off_8011068: .word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
off_80110F4: .word sub_80111B8+1
	.word sub_80111CA+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_80111DC+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_80111EE+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8011200+1
	.word sub_8011236+1
	.word nullsub_43+1
	.word sub_8011256+1
	.word nullsub_43+1
	.word sub_8011212+1
	.word sub_8011224+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_801140E+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word nullsub_43+1
	.word sub_801140E+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word nullsub_43+1
	.word sub_801140E+1
	thumb_func_end sub_8011044

	thumb_local_start
sub_80111B8:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_80111C8
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_80111C8:
	pop {pc}
	thumb_func_end sub_80111B8

	thumb_local_start
sub_80111CA:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_80111DA
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_80111DA:
	pop {pc}
	thumb_func_end sub_80111CA

	thumb_local_start
sub_80111DC:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_80111EC
	bl sub_80C4204
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_80111EC:
	pop {pc}
	thumb_func_end sub_80111DC

	thumb_local_start
sub_80111EE:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_80111FE
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_80111FE:
	pop {pc}
	thumb_func_end sub_80111EE

	thumb_local_start
sub_8011200:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_8011210
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_8011210:
	pop {pc}
	thumb_func_end sub_8011200

	thumb_local_start
sub_8011212:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_8011222
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_8011222:
	pop {pc}
	thumb_func_end sub_8011212

	thumb_local_start
sub_8011224:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_8011234
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_8011234:
	pop {pc}
	thumb_func_end sub_8011224

	thumb_local_start
sub_8011236:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq loc_8011246
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
loc_8011246:
	ldr r0, [r5,#oBattleObject_ExtraVars]
	tst r0, r0
	beq locret_8011254
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
locret_8011254:
	pop {pc}
	thumb_func_end sub_8011236

	thumb_local_start
sub_8011256:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq locret_8011266
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_8011266:
	pop {pc}
	thumb_func_end sub_8011256

	thumb_func_start sub_8011268
sub_8011268:
	push {lr}
	mov r2, #0
	lsl r0, r0, #2
	ldr r1, off_8011278 // =off_801127C 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
off_8011278: .word off_801127C
off_801127C: .word nullsub_42+1
	.word sub_80112E0+1
	.word sub_80112EA+1
	.word sub_80112F4+1
	.word sub_80112FE+1
	.word sub_8011308+1
	.word sub_8011312+1
	.word sub_8011330+1
	.word sub_801131C+1
	.word sub_8011326+1
	.word sub_801133A+1
	.word nullsub_43+1
	.word sub_8011366+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_8011352+1
	.word sub_8011356+1
	.word sub_801135A+1
	.word sub_801135E+1
	.word sub_8011362+1
	.word nullsub_43+1
	.word sub_8011366+1
	thumb_func_end sub_8011268

	thumb_local_start
sub_80112E0:
	push {lr}
	ldr r0, off_80114D8 // =0x104 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_80112E0

	thumb_local_start
sub_80112EA:
	push {lr}
	ldr r0, off_80114DC // =0x108 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_80112EA

	thumb_local_start
sub_80112F4:
	push {lr}
	ldr r0, dword_80114E0 // =0x10a 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_80112F4

	thumb_local_start
sub_80112FE:
	push {lr}
	ldr r0, off_80114E4 // =0x10c 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_80112FE

	thumb_local_start
sub_8011308:
	push {lr}
	ldr r0, off_80114E8 // =0x111 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_8011308

	thumb_local_start
sub_8011312:
	push {lr}
	ldr r0, off_80114EC // =0x105 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_8011312

	thumb_local_start
sub_801131C:
	push {lr}
	ldr r0, off_80114F0 // =0x109 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_801131C

	thumb_local_start
sub_8011326:
	push {lr}
	ldr r0, off_80114F4 // =0x10d 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_8011326

	thumb_local_start
sub_8011330:
	push {lr}
	ldr r0, dword_80114F8 // =0x10e 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_8011330

	thumb_local_start
sub_801133A:
	push {lr}
	ldr r0, dword_80114FC // =0x112 
	bl sub_8011344
	pop {pc}
	thumb_func_end sub_801133A

	thumb_local_start
sub_8011344:
	push {r4,lr}
	lsl r4, r2, #0x10
	add r4, r4, r0
	bl sub_80C44A8
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	pop {r4,pc}
	thumb_func_end sub_8011344

	thumb_local_start
sub_8011352:
	mov r3, #2
	b loc_8011368

	thumb_local_start
sub_8011356:
	mov r3, #4
	b loc_8011368

	thumb_local_start
sub_801135A:
	mov r3, #6
	b loc_8011368

	thumb_local_start
sub_801135E:
	mov r3, #8
	b loc_8011368

	thumb_local_start
sub_8011362:
	mov r3, #0xa
	b loc_8011368

	thumb_local_start
sub_8011366:
	mov r3, #0

loc_8011368:
	push {r4,r6,lr}
	mov r6, r3
	ldr r4, off_8011500 // =0xa0c 
	lsl r2, r2, #0x10
	orr r4, r2
	mov r2, #1
	bl spawn_t1_0x47_probablyGeneric_80C468C
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r6, #0
	bne locret_8011382
	bl sub_80C46C0
locret_8011382:
	pop {r4,r6,pc}
	thumb_func_end sub_8011352
	thumb_func_end sub_8011356
	thumb_func_end sub_801135A
	thumb_func_end sub_801135E
	thumb_func_end sub_8011362
	thumb_func_end sub_8011366

	thumb_func_start sub_8011384
sub_8011384:
	push {lr}
	lsl r0, r0, #2
	ldr r1, off_8011394 // =off_8011398 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8011394: .word off_8011398
off_8011398: .word sub_80111B8+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word sub_80113FC+1
	.word nullsub_43+1
	.word sub_801140E+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word sub_801140E+1
	.word nullsub_43+1
	.word sub_801140E+1
	thumb_func_end sub_8011384

	thumb_local_start
sub_80113FC:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq locret_801140C
	bl sub_80C44C8
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_801140C:
	pop {pc}
	thumb_func_end sub_80113FC

	thumb_local_start
sub_801140E:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #NULL
	beq locret_801141E
	bl sub_80C46B0
	mov r0, #NULL
	str r0, [r5,#oBattleObject_RelatedObject2Ptr]
locret_801141E:
	pop {pc}
	thumb_func_end sub_801140E

	thumb_func_start sub_8011420
sub_8011420:
	push {lr}
	cmp r0, #0
	bne loc_801142E
	mov r0, r1
	bl sub_8011268
	pop {pc}
loc_801142E:
	mov r1, r0
	mov r0, #2
	bl sub_8010DF6
	pop {pc}
	thumb_func_end sub_8011420

	thumb_local_start
sub_8011438:
	push {lr}
	cmp r0, #0
	bne loc_8011446
	mov r0, r1
	bl sub_8011384
	pop {pc}
loc_8011446:
	mov r1, r0
	mov r0, #2
	bl sub_8011044
	pop {pc}
	thumb_func_end sub_8011438

	thumb_func_start sub_8011450
sub_8011450:
	push {lr}
	ldr r2, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r2,#oAIData_ActorType]
	ldrb r1, [r2,#oAIData_AIIndex]
	cmp r0, #0
	beq locret_8011468
	lsl r1, r1, #2
	ldr r0, off_801146C // =off_8011470 
	ldr r1, [r1,r0]
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	mov lr, pc
	bx r1
locret_8011468:
	pop {pc}
	.balign 4, 0
off_801146C: .word off_8011470
off_8011470: .word sub_80C44D2+1
	.word sub_80C44D2+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_80C44D2+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_80C44D2+1
	.word sub_80FF668+1
	.word nullsub_43+1
	.word sub_80C44D2+1
	.word nullsub_43+1
	.word sub_80C44D2+1
	.word sub_80C44D2+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word nullsub_43+1
	.word sub_80C46B6+1
	thumb_func_end sub_8011450

	thumb_local_start
nullsub_43:
	mov pc, lr
	.balign 4, 0x00
off_80114D8: .word 0x104
off_80114DC: .word 0x108
dword_80114E0: .word 0x10A
off_80114E4: .word 0x10C
off_80114E8: .word 0x111
off_80114EC: .word 0x105
off_80114F0: .word 0x109
off_80114F4: .word 0x10D
dword_80114F8: .word 0x10E
dword_80114FC: .word 0x112
off_8011500: .word 0xA0C
	thumb_func_end nullsub_43

	thumb_func_start sub_8011504
sub_8011504:
	push {r6,r7,lr}
	mov r6, r0
loc_8011508:
	mov r7, r1
	mov r0, #0x80
	lsl r1, r6, #0x10
	lsr r1, r1, #0x18
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	lsr r0, r6, #0x18
	tst r0, r0
	beq loc_8011528
	bl sprite_hasShadow
	b loc_801152C
loc_8011528:
	bl sprite_noShadow // () -> void
loc_801152C:
	lsl r0, r6, #8
	lsr r0, r0, #0x18
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl object_createCollisionData
	tst r0, r0
	bne loc_8011540
	pop {r6,r7,pc}
loc_8011540:
	lsr r1, r7, #0x18
	lsl r2, r7, #8
	lsr r2, r2, #0x18
	lsl r3, r7, #0x10
	lsr r3, r3, #0x18
	bl object_setupCollisionData
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r0, #1
	pop {r6,r7,pc}
	thumb_func_end sub_8011504

	thumb_func_start BasicBattleObjectInitialize
BasicBattleObjectInitialize:
	strb r1, [r0,#oBattleObject_PanelX]
	strb r2, [r0,#oBattleObject_PanelY]
	strb r3, [r0,#oBattleObject_Element]
	str r6, [r0,#oBattleObject_DamageAndStaminaDamageCounterDisabler]
	ldrh r1, [r5,#oBattleObject_AllianceAndDirectionFlip]
	strh r1, [r0,#oBattleObject_AllianceAndDirectionFlip]
	str r5, [r0,#oBattleObject_RelatedObject1Ptr]
	mov pc, lr
	thumb_func_end BasicBattleObjectInitialize

	thumb_func_start basicHandleBattleObjectDamage_801156A
basicHandleBattleObjectDamage_801156A:
	push {lr}
	sub sp, sp, #0x10
	str r0, [sp,#8]
	mov r0, #0
	str r0, [sp,#4]
	bl object_spawnHiteffect
	bl calcFinalDamageAsPanelDamage1to5SumReturnFinalDamage_r0_PanelDamage6_r1_800E3BE
	str r0, [sp]
	ldr r2, [sp,#8]
	cmp r2, #1
	beq loc_8011594
	ldrh r1, [r5,#oBattleObject_HP]
	sub r1, r1, r0
	strh r1, [r5,#oBattleObject_HP]
	bgt loc_8011594
	mov r0, #0
	sub r0, #1
	str r0, [sp,#4]
	b loc_80115C2
loc_8011594:
	bl sprite_clearFinalPalette
	ldr r0, [sp]
	tst r0, r0
	beq loc_80115C2
	bl sprite_forceWhitePalette
	ldr r0, [sp,#8]
	cmp r0, #0
	beq loc_80115B0
	cmp r0, #2
	beq loc_80115B8
	mov r0, #1
	b loc_80115C0
loc_80115B0:
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	b loc_80115BE
loc_80115B8:
	mov r0, #0x6d 
	bl PlaySoundEffect
loc_80115BE:
	mov r0, #0
loc_80115C0:
	str r0, [sp,#4]
loc_80115C2:
	ldr r0, [sp]
	tst r0, r0
	beq loc_80115C8
loc_80115C8:
	ldr r0, [sp,#4]
	add sp, sp, #0x10
	pop {pc}
	thumb_func_end basicHandleBattleObjectDamage_801156A

	thumb_local_start
sub_80115CE:
	push {lr}
	sub sp, sp, #0x10
	str r0, [sp,#8]
	mov r0, #0
	str r0, [sp,#4]
	bl object_spawnHiteffect
	bl calcFinalDamageAsPanelDamage1to5SumReturnFinalDamage_r0_PanelDamage6_r1_800E3BE
	str r0, [sp]
	str r1, [sp,#0xc]
	add r0, r0, r1
	ldr r2, [sp,#8]
	tst r2, r2
	bne loc_80115FC
	ldrh r1, [r5,#0x24]
	sub r1, r1, r0
	strh r1, [r5,#0x24]
	bgt loc_80115FC
	mov r0, #0
	sub r0, #1
	str r0, [sp,#4]
	b loc_801161E
loc_80115FC:
	bl sprite_clearFinalPalette
	ldr r0, [sp]
	tst r0, r0
	beq loc_801161E
	bl sprite_forceWhitePalette
	ldr r0, [sp,#8]
	tst r0, r0
	beq loc_8011614
	mov r0, #1
	b loc_801161C
loc_8011614:
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	mov r0, #0
loc_801161C:
	str r0, [sp,#4]
loc_801161E:
	ldr r0, [sp]
	tst r0, r0
	beq loc_8011624
loc_8011624:
	ldr r0, [sp,#4]
	add sp, sp, #0x10
	pop {pc}
	thumb_func_end sub_80115CE

	thumb_func_start object_applyDamage
object_applyDamage:
	push {r4,lr}
	bl basicHandleBattleObjectDamage_801156A
	cmp r0, #0
	beq locret_801164A
	push {r0}
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0
	bl spawn_t1_0x0_EffectObject
	mov r0, #SOUND_HIT_BOMB_1
	bl PlaySoundEffect
	pop {r0}
locret_801164A:
	pop {r4,pc}
	thumb_func_end object_applyDamage

	thumb_func_start sub_801164C
sub_801164C:
	push {lr}
	push {r0,r1}
	sub r2, r2, r0
	sub r3, r3, r1
	mul r2, r6
	mul r3, r6
	push {r3}
	mov r0, r2
	mov r1, r7
	svc 6
	pop {r3}
	push {r0}
	mov r0, r3
	mov r1, r7
	svc 6
	mov r1, r0
	pop {r0}
	mov r2, r0
	mov r3, r1
	pop {r0,r1}
	add r0, r0, r2
	add r1, r1, r3
	pop {pc}
	.word 0
	.byte 0, 0
	thumb_func_end sub_801164C

	thumb_func_start object_setAttack0
object_setAttack0:
	mov r2, #0
	b loc_8011698
	thumb_func_end object_setAttack0

	thumb_func_start object_setAttack1
object_setAttack1:
	mov r2, #1
	b loc_8011698
	thumb_func_end object_setAttack1

	thumb_func_start object_setAttack2
object_setAttack2:
	mov r2, #2
	b loc_8011698

	thumb_func_start object_setAttack3
object_setAttack3:
	mov r2, #3
	b loc_8011698

	thumb_func_start object_setAttack4
object_setAttack4:
	mov r2, #4
	b loc_8011698

	thumb_func_start object_setAttack5
object_setAttack5:
	mov r2, #5
	b loc_8011698

loc_8011698:
	push {lr}
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	add r1, #0xa0
	strh r0, [r1,#oAIAttackVars_Unk_00]
	strb r2, [r1,#oAIAttackVars_Unk_1c]
	bl sub_801011A
	pop {pc}
	thumb_func_end object_setAttack2
	thumb_func_end object_setAttack3
	thumb_func_end object_setAttack4
	thumb_func_end object_setAttack5

	thumb_func_start sub_80116AE
sub_80116AE:
	push {r4,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r7, #0xa0
	add r7, r7, r4
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	strh r1, [r7,#oAIAttackVars_Unk_18]
	strb r2, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0x10
	bl object_setAttack4
	bl sub_80EB04C
	pop {r4,r7,pc}
	// never reached??
	mov r0, #0x3f 
	bl object_setAttack4
	bl sub_80EB234
	pop {r4,r7,pc}
	thumb_func_end sub_80116AE

	thumb_func_start sub_80116D8
sub_80116D8:
	push {r7,lr}
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0xa0
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	strh r1, [r7,#oAIAttackVars_Unk_18]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0x10
	bl object_setAttack4
	bl sub_80EB04C
	pop {r7,pc}
	thumb_func_end sub_80116D8

	thumb_local_start
sub_80116F6:
	push {r7,lr}
	ldr r7, [r5,#0x58]
	add r7, #0xa0
	strb r0, [r7,#0x16]
	strb r1, [r7,#0x17]
	strb r2, [r7,#0x18]
	mov r0, #2
	strb r0, [r7,#3]
	str r3, [r7,#0x2c]
	mov r0, #0x10
	bl object_setAttack4
	bl sub_80EB04C
	pop {r7,pc}
	thumb_func_end sub_80116F6

	thumb_func_start object_exitAttackState
object_exitAttackState:
	push {r6,r7,lr}
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	b loc_801171E

	thumb_func_start sub_801171C
sub_801171C:
	push {r6,r7,lr}
loc_801171E:
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	mov r7, #0xa0
	add r7, r7, r1
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1b]
	ldrb r6, [r7,#oAIAttackVars_Unk_1c]
	cmp r6, #4
	beq loc_8011754
	cmp r6, #2
	bne loc_8011736
	ldrb r0, [r7,#oAIAttackVars_Unk_05]
	strb r0, [r1,#oAIData_ChipLockoutTimer]
loc_8011736:
	cmp r6, #3
	bne loc_801173E
	ldrb r0, [r7,#oAIAttackVars_Unk_05]
	strb r0, [r1,#oAIData_Unk_15]
loc_801173E:
	mov r0, #0
	strb r0, [r1,#oAIData_Unk_1a]
	ldr r0, dword_8011760 // =0x1000003f 
	bl ClearAIData_Unk_44_Flag
	bl sub_8012EA8
	mov r0, #1
	lsl r0, r0, #0x16
	bl object_clearFlag // (int bitfield) -> void
loc_8011754:
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r6,r7,pc}
	.balign 4, 0
dword_8011760: .word 0x1000003F
	thumb_func_end object_exitAttackState
	thumb_func_end sub_801171C

	thumb_func_start calledOnBAtkProbInit_8011764
calledOnBAtkProbInit_8011764:
	push {r6,r7,lr}
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	mov r7, #oAIData_AttackVars
	add r7, r7, r6
	ldr r1, off_80117D0 // =off_80117D4 
	ldrb r0, [r6,#oAIData_Unk_06]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,r7,pc}
	thumb_func_end calledOnBAtkProbInit_8011764

	thumb_func_start sub_801177A
sub_801177A:
	push {r6,r7,lr}
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	mov r7, #oAIData_AttackVars
	add r7, r7, r6
	ldr r1, off_80117D0 // =off_80117D4 
	ldrb r0, [r6,#oAIData_Unk_04]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,r7,pc}
	thumb_func_end sub_801177A

	thumb_func_start sub_8011790
sub_8011790:
	push {r6,r7,lr}
	mov r7, #oAIData_AttackVars
	add r7, r7, r6
	ldr r1, off_80117D0 // =off_80117D4 
	ldrb r0, [r6,#oAIData_Unk_08]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,r7,pc}
	thumb_func_end sub_8011790

	thumb_func_start sub_80117A4
sub_80117A4:
	push {r6,r7,lr}
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	mov r7, #oAIData_AttackVars
	add r7, r7, r6
	ldr r1, off_80117D0 // =off_80117D4 
	ldrb r0, [r6,#oAIData_BPwrAtk]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r6,r7,pc}
	thumb_func_end sub_80117A4

	thumb_local_start
sub_80117BA:
	push {r6,r7,lr}
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	mov r7, #oAIData_AttackVars
	add r7, r7, r6
	ldr r1, off_80117D0 // =off_80117D4 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {r6,r7,pc}
	.byte 0, 0
off_80117D0: .word off_80117D4
off_80117D4: .word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x0
	.word busterBugChargeShotDamageCalcHappensHere_8011A7E+1 // 0x1
	.word sub_8011ADA+1 // 0x2
	.word sub_8011AF2+1 // 0x3
	.word sub_8011B4A+1 // 0x4
	.word nullsub_44+1 // 0x5
	.word sub_8011BA2+1 // 0x6
	.word greatfireAPwrAtk_init_8011BD0+1 // 0x7
	.word sub_8011BE8+1 // 0x8
	.word sub_8011C00+1 // 0x9
	.word sub_8011C18+1 // 0xa
	.word sub_8011C38+1 // 0xb
	.word spoutcrossBPwrAtk_init_8011C5E+1 // 0xc
	.word nullsub_44+1 // 0xd
	.word nullsub_44+1 // 0xe
	.word sub_8011C88+1 // 0xf
	.word sub_8011CA8+1 // 0x10
	.word sub_8011CB4+1 // 0x11
	.word slashcrossBPwrAtk_init_8011CD6+1 // 0x12
	.word nullsub_44+1 // 0x13
	.word sub_8011CF8+1 // 0x14
	.word sub_8011D20+1 // 0x15
	.word sub_8011D38+1 // 0x16
	.word sub_8011D54+1 // 0x17
	.word nullsub_44+1 // 0x18
	.word sub_8011D74+1 // 0x19
	.word sub_8011D9C+1 // 0x1a
	.word sub_8011DBC+1 // 0x1b
	.word sub_8011DDC+1 // 0x1c
	.word sub_8011DFC+1 // 0x1d
	.word sub_8011E1C+1 // 0x1e
	.word nullsub_44+1 // 0x1f
	.word nullsub_44+1 // 0x20
	.word sub_8011E40+1 // 0x21
	.word sub_8011E78+1 // 0x22
	.word sub_8011EAC+1 // 0x23
	.word sub_8011ED0+1 // 0x24
	.word sub_8011EF0+1 // 0x25
	.word sub_8011F10+1 // 0x26
	.word sub_8011F44+1 // 0x27
	.word sub_8011F64+1 // 0x28
	.word nullsub_44+1 // 0x29
	.word sub_8011F84+1 // 0x2a
	.word sub_8011F8C+1 // 0x2b
	.word sub_8011FCE+1 // 0x2c
	.word nullsub_44+1 // 0x2d
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x2e
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x2f
	.word sub_8012018+1 // 0x30
	.word sub_8012044+1 // 0x31
	.word sub_801206E+1 // 0x32
	.word sub_801208A+1 // 0x33
	.word sub_80120A6+1 // 0x34
	.word sub_80120CC+1 // 0x35
	.word sub_80120D6+1 // 0x36
	.word sub_80120FE+1 // 0x37
	.word nullsub_44+1 // 0x38
	.word sub_8012124+1 // 0x39
	.word sub_8012144+1 // 0x3a
	.word sub_801216E+1 // 0x3b
	.word sub_8012194+1 // 0x3c
	.word sub_80121BC+1 // 0x3d
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x3e
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x3f
	.word sub_80121DC+1 // 0x40
	.word sub_80121F8+1 // 0x41
	.word sub_8012210+1 // 0x42
	.word sub_8012228+1 // 0x43
	.word sub_8012240+1 // 0x44
	.word tomahawkmanBPwrAtk_init_8012258+1 // 0x45
	.word sub_8012278+1 // 0x46
	.word sub_8012292+1 // 0x47
	.word sub_80122AA+1 // 0x48
	.word sub_80122C2+1 // 0x49
	.word sub_80122DA+1 // 0x4a
	.word sub_80122F2+1 // 0x4b
	.word sub_801230C+1 // 0x4c
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x4d
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x4e
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x4f
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x50
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x51
	.word sub_8012326+1 // 0x52
	.word loc_801232A+1 // 0x53
	.word sub_801233C+1 // 0x54
	.word sub_8012346+1 // 0x55
	.word sub_8012350+1 // 0x56
	.word sub_801235A+1 // 0x57
	.word sub_8012364+1 // 0x58
	.word sub_801236E+1 // 0x59
	.word sub_8012378+1 // 0x5a
	.word sub_8012382+1 // 0x5b
	.word sub_801238C+1 // 0x5c
	.word sub_8012396+1 // 0x5d
	.word sub_80123A0+1 // 0x5e
	.word bubbleSpreadBPwrAtk_init_80123AA+1 // 0x5f
	.word sub_80123C8+1 // 0x60
	.word sub_80123D2+1 // 0x61
	.word sub_80123DC+1 // 0x62
	.word sub_80123E6+1 // 0x63
	.word sub_80123F0+1 // 0x64
	.word sub_80123FA+1 // 0x65
	.word sub_8012404+1 // 0x66
	.word sub_801240E+1 // 0x67
	.word sub_8012418+1 // 0x68
	.word sub_8012422+1 // 0x69
	.word sub_801242C+1 // 0x6a
	.word sub_8012436+1 // 0x6b
	.word sub_8012440+1 // 0x6c
	.word sub_801244A+1 // 0x6d
	.word sub_801245A+1 // 0x6e
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x6f
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x70
	.word sub_8012464+1 // 0x71
	.word sub_8012484+1 // 0x72
	.word sub_801248E+1 // 0x73
	.word sub_8012498+1 // 0x74
	.word sub_80124B8+1 // 0x75
	.word sub_80124C2+1 // 0x76
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x77
	.word sub_80124CC+1 // 0x78
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x79
	.word sub_80124D6+1 // 0x7a
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x7b
	.word sub_80124E0+1 // 0x7c
	.word sub_80124EA+1 // 0x7d
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x7e
	.word sub_80124F4+1 // 0x7f
	.word sub_80124FE+1 // 0x80
	.word sub_801251C+1 // 0x81
	.word megamanChargeShotBPwrAtk_init_8011A26+1 // 0x82
	.word sub_8012526+1 // 0x83
	.word sub_8012536+1 // 0x84
	.word sub_8012540+1 // 0x85
	.word sub_801254A+1 // 0x86
	.word sub_8012552+1 // 0x87
	.word sub_801255C+1 // 0x88
	.word sub_8012572+1 // 0x89
	.word sub_801257C+1 // 0x8a
	.word sub_8012586+1 // 0x8b
	.word sub_80125AC+1 // 0x8c
	.word sub_80125D0+1 // 0x8d
	.word sub_8012608+1 // 0x8e
	.word sub_8012612+1 // 0x8f
	.word sub_801261E+1 // 0x90
	.word sub_8012628+1 // 0x91
	.word sub_8012632+1 // 0x92
	.word sub_801263A+1 // 0x93
	thumb_func_end sub_80117BA

	thumb_local_start
nullsub_44:
	mov pc, lr
	thumb_func_end nullsub_44

	thumb_local_start
megamanChargeShotBPwrAtk_init_8011A26: // JP: 0x8012036
	push {r4,lr}
	bl sub_8013D5E
	cmp r0, #0
	beq loc_8011A44
	cmp r0, #1
	bne loc_8011A3A
	bl sub_8011ADA
	pop {r4,pc}
loc_8011A3A:
	cmp r0, #2
	bne loc_8011A44
	bl busterBugChargeShotDamageCalcHappensHere_8011A7E
	pop {r4,pc}
loc_8011A44:
	bl sub_801265A
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r1, #0x4d 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, r0
	cmp r4, #0
	beq loc_8011A74
	bl GetPositiveSignedRNG
	mov r1, #1
	cmp r4, #0x1e
	blt loc_8011A6E
	mov r1, #7
loc_8011A6E:
	and r0, r1
	beq loc_8011A74
	mov r4, #0
loc_8011A74:
	strb r4, [r7,#oAIAttackVars_Unk_0c]
	mov r1, #0
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x11
	pop {r4,pc}
	thumb_func_end megamanChargeShotBPwrAtk_init_8011A26

	thumb_local_start
busterBugChargeShotDamageCalcHappensHere_8011A7E:
	push {r4,lr}
	mov r1, #oNaviStats_Attack
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r0, #1
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #5
	pop {r0}
	bne loc_8011A98
	mov r0, #1
loc_8011A98:
	mov r1, #0xa
	mul r0, r1
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r1, #oNaviStats_Unk_4f 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, r0
	tst r4, r4
	beq loc_8011AC2
	cmp r4, #6
	beq loc_8011AC4
	bl GetPositiveSignedRNG
	mov r1, #1
	cmp r4, #9
	beq loc_8011ABC
	cmp r4, #0x23 
	bne loc_8011ABE
loc_8011ABC:
	mov r1, #7
loc_8011ABE:
	and r0, r1
	beq loc_8011AC4
loc_8011AC2:
	mov r4, #6
loc_8011AC4:
	str r4, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_03]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x16
	pop {r4,pc}
	thumb_func_end busterBugChargeShotDamageCalcHappensHere_8011A7E

	thumb_local_start
sub_8011ADA:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_03]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strh r0, [r7,#oAIAttackVars_Damage]
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x33 
	mov pc, lr
	thumb_func_end sub_8011ADA

	thumb_local_start
sub_8011AF2:
	push {lr}
	bl sub_801265A
	cmp r0, #5
	ble loc_8011AFE
	mov r0, #5
loc_8011AFE:
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r1, #0x4d 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r1, #0
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_30]
	bl sub_800A8F8
	beq loc_8011B2C
	bl sub_802E4B8
	cmp r0, #0xd
	beq loc_8011B38
loc_8011B2C:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0
	cmp r0, #0x18
	bne loc_8011B3E
loc_8011B38:
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r1, #8
loc_8011B3E:
	strb r1, [r7,#oAIAttackVars_Unk_0d]
	mov r1, #0
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	str r1, [r0,#oAIData_Unk_68]
	mov r0, #0x1e
	pop {pc}
	thumb_func_end sub_8011AF2

	thumb_local_start
sub_8011B4A:
	push {lr}
	bl sub_801265A
	cmp r0, #5
	ble loc_8011B56
	mov r0, #5
loc_8011B56:
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r1, #0x4d 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r1, #0
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_30]
	bl sub_800A8F8
	beq loc_8011B84
	bl sub_802E4B8
	cmp r0, #0xd
	beq loc_8011B90
loc_8011B84:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0
	cmp r0, #0x17
	bne loc_8011B96
loc_8011B90:
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r1, #8
loc_8011B96:
	strb r1, [r7,#oAIAttackVars_Unk_0d]
	mov r1, #0
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	str r1, [r0,#oAIData_Unk_68]
	mov r0, #0x1d
	pop {pc}
	thumb_func_end sub_8011B4A

	thumb_local_start
sub_8011BA2:
	push {lr}
	mov r0, #0x1e
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	ldr r0, off_8011BCC // =0x23c 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x27 
	pop {pc}
	.balign 4, 0
off_8011BCC: .word 0x23C
	thumb_func_end sub_8011BA2

	thumb_local_start
greatfireAPwrAtk_init_8011BD0:
	push {lr}
	mov r0, #0x32 
	mov r1, #0x1e
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x35 
	pop {pc}
	thumb_func_end greatfireAPwrAtk_init_8011BD0

	thumb_local_start
sub_8011BE8:
	push {lr}
	mov r0, #0xa
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x86
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x3a 
	pop {pc}
	thumb_func_end sub_8011BE8

	thumb_local_start
sub_8011C00:
	push {lr}
	mov r0, #0x28 
	mov r1, #0x1e
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x3c 
	pop {pc}
	thumb_func_end sub_8011C00

	thumb_local_start
sub_8011C18:
	push {lr}
	mov r0, #0x1e
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x20 
	strb r0, [r7,#oAIAttackVars_Unk_02]
	ldr r0, dword_8011C34 // =0x2d3d00 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x3d 
	pop {pc}
	.balign 4, 0
dword_8011C34: .word 0x2D3D00
	thumb_func_end sub_8011C18

	thumb_local_start
sub_8011C38:
	push {lr}
	mov r0, #0x28 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #1
	lsl r0, r0, #8
	add r0, #0xf
	lsl r0, r0, #8
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x3e 
	pop {pc}
	thumb_func_end sub_8011C38

	thumb_local_start
spoutcrossBPwrAtk_init_8011C5E: // spoutcross CS initialize? // JP: 801225e
	push {lr}
	mov r0, #0x14
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r0, dword_8011C84 // =0xd 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x25 
	pop {pc}
	.balign 4, 0
dword_8011C84: .word 0xD
	thumb_func_end spoutcrossBPwrAtk_init_8011C5E

	thumb_local_start
sub_8011C88:
	push {lr}
	mov r0, #0x28 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x20 
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x3f 
	pop {pc}
	thumb_func_end sub_8011C88

	thumb_local_start
sub_8011CA8:
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x1c
	mov pc, lr
	thumb_func_end sub_8011CA8

	thumb_local_start
sub_8011CB4:
	push {r4,lr}
	mov r0, #0
	bl useChipRelated_80127C0
	cmp r0, #0x53 
	beq loc_8011CC4
	cmp r0, #0x54 
	bne loc_8011CCA
loc_8011CC4:
	mov r1, #1
	strb r1, [r7,#oAIAttackVars_Unk_04]
	b locret_8011CD4
loc_8011CCA:
	cmp r0, #0x40 
	bne loc_8011CD2
	mov r0, #0x11
	strb r0, [r7,#oAIAttackVars_Unk_03]
loc_8011CD2:
	mov r0, #0x41 
locret_8011CD4:
	pop {r4,pc}
	thumb_func_end sub_8011CB4

	thumb_local_start
slashcrossBPwrAtk_init_8011CD6: // JP: 0x80122d2
	push {lr}
	mov r0, #0x3c 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x80
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x41 
	pop {pc}
	thumb_func_end slashcrossBPwrAtk_init_8011CD6

	thumb_local_start
sub_8011CF8:
	push {lr}
	mov r0, #0x28 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0
	cmp r0, #4
	beq loc_8011D16
	mov r1, #1
loc_8011D16:
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x45 
	pop {pc}
	thumb_func_end sub_8011CF8

	thumb_local_start
sub_8011D20:
	push {lr}
	mov r0, #0x46 
	mov r1, #0x1e
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x40 
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x46 
	pop {pc}
	thumb_func_end sub_8011D20

	thumb_local_start
sub_8011D38:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x28 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x4a 
	pop {pc}
	thumb_func_end sub_8011D38

	thumb_local_start
sub_8011D54:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x5a 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x1a
	pop {pc}
	thumb_func_end sub_8011D54

	thumb_local_start
sub_8011D74:
	push {lr}
	mov r0, #0xa
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	ldr r0, off_8011D98 // =0x1800 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x4d 
	pop {pc}
	.balign 4, 0
off_8011D98: .word 0x1800
	thumb_func_end sub_8011D74

	thumb_local_start
sub_8011D9C:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x32 
	mov r1, #0x1e
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x80
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x4c 
	pop {pc}
	thumb_func_end sub_8011D9C

	thumb_local_start
sub_8011DBC:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x32 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x4e 
	pop {pc}
	thumb_func_end sub_8011DBC

	thumb_local_start
sub_8011DDC:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x46 
	mov r1, #0x1e
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x4f 
	pop {pc}
	thumb_func_end sub_8011DDC

	thumb_local_start
sub_8011DFC:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x50 
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x50 
	pop {pc}
	thumb_func_end sub_8011DFC

	thumb_local_start
sub_8011E1C:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x9e
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x32 
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #2
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #0x52 
	pop {pc}
	thumb_func_end sub_8011E1C

	thumb_local_start
sub_8011E40:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x80
	strb r0, [r7,#oAIAttackVars_Unk_02]
	bl sub_800F4A8
	cmp r0, #1
	blt loc_8011E68
	mov r0, #1
	bl sub_800F4B2
	mov r0, #0xc8
	mov r1, #6
	b loc_8011E6C
loc_8011E68:
	mov r0, #0x50 
	mov r1, #0
loc_8011E6C:
	strh r0, [r7,#oAIAttackVars_Damage]
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x13
	pop {pc}
	thumb_func_end sub_8011E40

	thumb_local_start
sub_8011E78:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_02]
	bl sub_800F4A8
	cmp r0, #1
	blt loc_8011EA0
	mov r0, #1
	bl sub_800F4B2
	mov r0, #0xc8
	ldr r1, dword_8011F34 // =0x100c02 
	b loc_8011EA4
loc_8011EA0:
	mov r0, #0x28 
	ldr r1, dword_8011F38 // =0x100501 
loc_8011EA4:
	strh r0, [r7,#oAIAttackVars_Damage]
	str r1, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x1f
	pop {pc}
	thumb_func_end sub_8011E78

	thumb_local_start
sub_8011EAC:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x64 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r1, #8
	strb r1, [r7,#oAIAttackVars_Unk_03]
	ldr r0, off_8011F3C // =0x300 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x1c
	pop {pc}
	thumb_func_end sub_8011EAC

	thumb_local_start
sub_8011ED0:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x28 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x32 
	pop {pc}
	thumb_func_end sub_8011ED0

	thumb_local_start
sub_8011EF0:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x64 
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, dword_8011F40 // =0x3c1000 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x42 
	pop {pc}
	thumb_func_end sub_8011EF0

	thumb_local_start
sub_8011F10:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x64 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r1, #1
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x1c
	pop {pc}
dword_8011F34: .word 0x100C02
dword_8011F38: .word 0x100501
off_8011F3C: .word 0x300
dword_8011F40: .word 0x3C1000
	thumb_func_end sub_8011F10

	thumb_local_start
sub_8011F44:
	push {lr}
	mov r0, #0x1e
	mov r1, #0x14
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x56 
	pop {pc}
	thumb_func_end sub_8011F44

	thumb_local_start
sub_8011F64:
	push {lr}
	mov r0, #0x32 
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x57 
	pop {pc}
	thumb_func_end sub_8011F64

	thumb_local_start
sub_8011F84:
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x58 
	mov pc, lr
	thumb_func_end sub_8011F84

	thumb_local_start
sub_8011F8C:
	push {lr}
	ldrb r0, [r6,#oAIData_Unk_0d]
	cmp r0, #0
	bne loc_8011F9A
	bl megamanChargeShotBPwrAtk_init_8011A26
	b locret_8011FCC
loc_8011F9A:
	sub r0, #1
	strb r0, [r6,#oAIData_Unk_0d]
	add r0, #0x6c 
	ldrb r0, [r6,r0]
	ldr r2, off_8012010 // =byte_80E98C0
	mov r1, #0xf
	and r1, r0
	lsl r1, r1, #1
	ldrh r1, [r2,r1]
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xc8
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r1, #2
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x11
locret_8011FCC:
	pop {pc}
	thumb_func_end sub_8011F8C

	thumb_local_start
sub_8011FCE:
	push {lr}
	ldrb r0, [r6,#oAIData_Unk_0d]
	cmp r0, #0
	bne loc_8011FDC
	bl sub_8011AF2
	b locret_801200E
loc_8011FDC:
	sub r0, #1
	strb r0, [r6,#oAIData_Unk_0d]
	add r0, #0x6c 
	ldrb r0, [r6,r0]
	ldr r2, off_8012014 // =byte_80E98C0
	mov r1, #0xf
	and r1, r0
	lsl r1, r1, #1
	ldrh r1, [r2,r1]
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xc8
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r1, #2
	strb r1, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x11
locret_801200E:
	pop {pc}
	.balign 4, 0
off_8012010: .word byte_80E98C0
off_8012014: .word byte_80E98C0
	thumb_func_end sub_8011FCE

	thumb_local_start
sub_8012018:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r1, #0x48 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_8012040 // =0x114 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	pop {pc}
	.balign 4, 0
off_8012040: .word 0x114
	thumb_func_end sub_8012018

	thumb_local_start
sub_8012044:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_04]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x50 
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x13
	pop {pc}
	thumb_func_end sub_8012044

	thumb_local_start
sub_801206E:
	push {lr}
	mov r0, #0x48 
	bl loc_80126EA
	push {r0}
	mov r0, #0x14
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	pop {r0}
	pop {pc}
	thumb_func_end sub_801206E

	thumb_local_start
sub_801208A:
	push {lr}
	mov r0, #0x49 
	bl loc_80126EA
	push {r0}
	mov r0, #0x14
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	pop {r0}
	pop {pc}
	thumb_func_end sub_801208A

	thumb_local_start
sub_80120A6:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_80120C8 // =0x114 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	pop {pc}
	.balign 4, 0x00
off_80120C8: .word 0x114
	thumb_func_end sub_80120A6

	thumb_local_start
sub_80120CC:
	push {lr}
	mov r0, #0x2b 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80120CC

	thumb_local_start
sub_80120D6:
	push {lr}
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x50 
	mov r1, #0xa
	bl sub_8012642
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x13
	pop {pc}
	thumb_func_end sub_80120D6

	thumb_local_start
sub_80120FE:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x32 
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_8012120 // =0x114 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	mov pc, lr
	.byte 0, 0
off_8012120: .word 0x114
	thumb_func_end sub_80120FE

	thumb_local_start
sub_8012124:
	push {lr}
	mov r1, #1
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r0, #1
	mov r1, #5
	mul r0, r1
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x85
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #6
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #0x5d 
	pop {pc}
	thumb_func_end sub_8012124

	thumb_local_start
sub_8012144:
	push {lr}
	mov r1, #1
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r0, #1
	mov r1, #0xa
	mul r0, r1
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, #6
	lsl r0, r0, #0x18
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x38 
	pop {pc}
	thumb_func_end sub_8012144

	thumb_local_start
sub_801216E:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_8012190 // =0x214 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	mov pc, lr
	.byte 0, 0
off_8012190: .word 0x214
	thumb_func_end sub_801216E

	thumb_local_start
sub_8012194:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x32 
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_80121B8 // =0x114 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	mov pc, lr
	.balign 4, 0x00
off_80121B8: .word 0x114
	thumb_func_end sub_8012194

	thumb_local_start
sub_80121BC:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_03]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x32 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x46 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x5a 
	mov pc, lr
	thumb_func_end sub_80121BC

	thumb_local_start
sub_80121DC:
	push {lr}
	mov r0, #0
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x1e
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_80121DC

	thumb_local_start
sub_80121F8:
	push {lr}
	mov r0, #0xa
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_80121F8

	thumb_local_start
sub_8012210:
	push {lr}
	mov r0, #0xe
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_8012210

	thumb_local_start
sub_8012228:
	push {lr}
	mov r0, #4
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_8012228

	thumb_local_start
sub_8012240:
	push {lr}
	mov r0, #2
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_8012240

	thumb_local_start
tomahawkmanBPwrAtk_init_8012258:
	push {lr}
	mov r0, #0xc
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x1e
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x1e
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #9
	pop {pc}
	thumb_func_end tomahawkmanBPwrAtk_init_8012258

	thumb_local_start
sub_8012278:
	push {lr}
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #6
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #6
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_8012278

	thumb_local_start
sub_8012292:
	push {lr}
	mov r0, #6
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_8012292

	thumb_local_start
sub_80122AA:
	push {lr}
	mov r0, #8
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_80122AA

	thumb_local_start
sub_80122C2:
	push {lr}
	mov r0, #0x12
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_80122C2

	thumb_local_start
sub_80122DA:
	push {lr}
	mov r0, #0x10
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_8010D04
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #9
	pop {pc}
	thumb_func_end sub_80122DA

	thumb_local_start
sub_80122F2:
	push {lr}
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #6
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #6
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #0xb
	pop {pc}
	thumb_func_end sub_80122F2

	thumb_local_start
sub_801230C:
	push {lr}
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #6
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #6
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #0xc
	pop {pc}
	thumb_func_end sub_801230C

	thumb_local_start
sub_8012326:
	mov r0, #1
	b loc_801232C
loc_801232A:
	mov r0, #3
loc_801232C:
	lsl r0, r0, #8
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x94
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x5c 
	mov pc, lr
	thumb_func_end sub_8012326

	thumb_local_start
sub_801233C:
	push {lr}
	mov r0, #3
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801233C

	thumb_local_start
sub_8012346:
	push {lr}
	ldr r0, off_80126D0 // =0x17c 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012346

	thumb_local_start
sub_8012350:
	push {lr}
	mov r0, #0x44 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012350

	thumb_local_start
sub_801235A:
	push {lr}
	mov r0, #0xa2
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801235A

	thumb_local_start
sub_8012364:
	push {lr}
	mov r0, #0x39 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012364

	thumb_local_start
sub_801236E:
	push {lr}
	mov r0, #0x1f
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801236E

	thumb_local_start
sub_8012378:
	push {lr}
	mov r0, #9
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012378

	thumb_local_start
sub_8012382:
	push {lr}
	mov r0, #0x45 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012382

	thumb_local_start
sub_801238C:
	push {lr}
	mov r0, #0x51 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801238C

	thumb_local_start
sub_8012396:
	push {lr}
	mov r0, #0xc7
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012396

	thumb_local_start
sub_80123A0:
	push {lr}
	mov r0, #0x90
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123A0

	thumb_local_start
bubbleSpreadBPwrAtk_init_80123AA:
	push {lr}
	mov r0, #0x46 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r0, dword_80123C4 // =0x7 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x25 
	pop {pc}
dword_80123C4: .word 0x7
	thumb_func_end bubbleSpreadBPwrAtk_init_80123AA

	thumb_local_start
sub_80123C8:
	push {lr}
	mov r0, #0x77 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123C8

	thumb_local_start
sub_80123D2:
	push {lr}
	mov r0, #1
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123D2

	thumb_local_start
sub_80123DC:
	push {lr}
	mov r0, #0x40 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123DC

	thumb_local_start
sub_80123E6:
	push {lr}
	mov r0, #0x65 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123E6

	thumb_local_start
sub_80123F0:
	push {lr}
	mov r0, #0x4e 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123F0

	thumb_local_start
sub_80123FA:
	push {lr}
	mov r0, #0xca
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80123FA

	thumb_local_start
sub_8012404:
	push {lr}
	mov r0, #7
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012404

	thumb_local_start
sub_801240E:
	push {lr}
	mov r0, #0x96
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801240E

	thumb_local_start
sub_8012418:
	push {lr}
	mov r0, #0x4f 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012418

	thumb_local_start
sub_8012422:
	push {lr}
	mov r0, #0x50 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012422

	thumb_local_start
sub_801242C:
	push {lr}
	mov r0, #0xa4
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801242C

	thumb_local_start
sub_8012436:
	push {lr}
	mov r0, #8
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012436

	thumb_local_start
sub_8012440:
	push {lr}
	mov r0, #0xf
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012440

	thumb_local_start
sub_801244A:
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x8a
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, dword_80126D4 // =0x33c00 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x5e 
	mov pc, lr
	thumb_func_end sub_801244A

	thumb_local_start
sub_801245A:
	push {lr}
	ldr r0, off_80126D8 // =0x17d 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801245A

	thumb_local_start
sub_8012464:
	push {lr}
	ldr r0, dword_80126DC // =0x17e 
	bl sub_8010740
	tst r0, r0
	beq loc_8012478
	bl object_exitAttackState
	mov r0, #8
	b locret_8012482
loc_8012478:
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x78 
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x1c
locret_8012482:
	pop {pc}
	thumb_func_end sub_8012464

	thumb_local_start
sub_8012484:
	push {lr}
	mov r0, #0x49 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012484

	thumb_local_start
sub_801248E:
	push {lr}
	mov r0, #0x1e
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801248E

	thumb_local_start
sub_8012498:
	push {lr}
	mov r0, #0x28 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r0, dword_80124B4 // =0x8 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x25 
	pop {pc}
	.balign 4, 0x00
dword_80124B4: .word 0x8
	thumb_func_end sub_8012498

	thumb_local_start
sub_80124B8:
	push {lr}
	mov r0, #0x13
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124B8

	thumb_local_start
sub_80124C2:
	push {lr}
	mov r0, #0x83
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124C2

	thumb_local_start
sub_80124CC:
	push {lr}
	mov r0, #0x14
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124CC

	thumb_local_start
sub_80124D6:
	push {lr}
	mov r0, #0x22 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124D6

	thumb_local_start
sub_80124E0:
	push {lr}
	mov r0, #0x48 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124E0

	thumb_local_start
sub_80124EA:
	push {lr}
	mov r0, #0x36 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124EA

	thumb_local_start
sub_80124F4:
	push {lr}
	mov r0, #0x34 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_80124F4

	thumb_local_start
sub_80124FE:
	push {lr}
	mov r0, #0x32 
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r0, dword_8012518 // =0x4 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0x25 
	pop {pc}
dword_8012518: .word 0x4
	thumb_func_end sub_80124FE

	thumb_local_start
sub_801251C:
	push {lr}
	mov r0, #0x59 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801251C

	thumb_local_start
sub_8012526:
	mov r0, #9
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x78 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0x1c
	mov pc, lr
	thumb_func_end sub_8012526

	thumb_local_start
sub_8012536:
	push {lr}
	mov r0, #0x8e
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012536

	thumb_local_start
sub_8012540:
	push {lr}
	mov r0, #0x33 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012540

	thumb_local_start
sub_801254A:
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x1c
	mov pc, lr
	thumb_func_end sub_801254A

	thumb_local_start
sub_8012552:
	push {lr}
	mov r0, #0x3c 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012552

	thumb_local_start
sub_801255C:
	push {lr}
	mov r0, #0x25 
	bl loc_80126EA
	mov r1, #0x28 
	strb r1, [r7,#oAIAttackVars_Unk_05]
	mov r1, #3
	strb r1, [r7,#oAIAttackVars_Unk_1c]
	mov r1, #1
	strb r1, [r7,#oAIAttackVars_Unk_0d]
	pop {pc}
	thumb_func_end sub_801255C

	thumb_local_start
sub_8012572:
	push {lr}
	mov r0, #0x56 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012572

	thumb_local_start
sub_801257C:
	push {lr}
	ldr r0, off_80126E0 // =0x11e
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801257C

	thumb_local_start
sub_8012586:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x32 
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_80125A8 // =0x114 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	mov pc, lr
off_80125A8: .word 0x114
	thumb_func_end sub_8012586

	thumb_local_start
sub_80125AC:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, off_80125CC // =0x214 
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x28 
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0x2b 
	mov pc, lr
off_80125CC: .word 0x214
	thumb_func_end sub_80125AC

	thumb_local_start
sub_80125D0:
	push {lr}
	mov r1, #1
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r0, #1
	mov r1, #0xa
	mul r0, r1
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_02]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_03]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	strb r0, [r7,#oAIAttackVars_Unk_05]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_0c]
	mov r1, #0x4f 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #6
	tst r0, r0
	beq loc_8012602
	mov r1, r0
loc_8012602:
	str r1, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x16
	pop {pc}
	thumb_func_end sub_80125D0

	thumb_local_start
sub_8012608:
	push {lr}
	mov r0, #0x47 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012608

	thumb_local_start
sub_8012612:
	push {lr}
	bl megamanChargeShotBPwrAtk_init_8011A26
	mov r1, #1
	strb r1, [r7,#oAIAttackVars_Unk_03]
	pop {pc}
	thumb_func_end sub_8012612

	thumb_local_start
sub_801261E:
	push {lr}
	mov r0, #0x74 
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_801261E

	thumb_local_start
sub_8012628:
	push {lr}
	mov r0, #0x17
	bl loc_80126EA
	pop {pc}
	thumb_func_end sub_8012628

	thumb_local_start
sub_8012632:
	push {lr}
	bl sub_8012124
	pop {pc}
	thumb_func_end sub_8012632

	thumb_local_start
sub_801263A:
	push {lr}
	bl sub_8012144
	pop {pc}
	thumb_func_end sub_801263A

	thumb_local_start
sub_8012642:
	push {lr}
	push {r0,r1}
	bl sub_801265A
	mov r2, r0
	cmp r2, #5
	ble loc_8012652
	mov r2, #5
loc_8012652:
	pop {r0,r1}
	mul r1, r2
	add r0, r0, r1
	pop {pc}
	thumb_func_end sub_8012642

	thumb_func_start sub_801265A
sub_801265A:
	push {lr}
	mov r1, #oNaviStats_NaviIndex
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	push {r0}
	mov r1, #1
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	ldr r2, off_801269C // =byte_80126A4
	ldrb r1, [r2,r1]
	add r0, r0, r1
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #5
	bne loc_8012684
	pop {r0}
	mov r0, #1
	b loc_8012692
loc_8012684:
	mov r1, #oNaviStats_Transformation 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r1, off_80126A0 // =off_80126B0 
	ldrb r1, [r1,r0]
	pop {r0}
	add r0, r0, r1
loc_8012692:
	cmp r0, #0xa
	ble locret_8012698
	mov r0, #0xa
locret_8012698:
	pop {pc}
	.balign 4, 0
off_801269C: .word byte_80126A4
off_80126A0: .word off_80126B0
byte_80126A4: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
off_80126B0: .word 0x100
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80126D0: .word 0x17C
dword_80126D4: .word 0x33C00
off_80126D8: .word 0x17D
dword_80126DC: .word 0x17E
off_80126E0: .word 0x11E
	thumb_func_end sub_801265A

	thumb_func_start somethingWriteChipParams_80126E4
somethingWriteChipParams_80126E4:
	push {r4,r6,r7,lr}
	mov r4, #1
	b loc_80126F6
loc_80126EA:
	push {r4,r6,r7,lr}
	mov r4, #0
	b loc_80126F6
	push {r4,r6,r7,lr}
	ldr r7, [r5,#0x58]
	add r7, #0xa0
loc_80126F6:
	strh r0, [r7,#oAIAttackVars_Unk_14]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r6, r0
	ldr r1, [r6,#0x10]
	str r1, [r7,#oAIAttackVars_Unk_0c]
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_80109A4
	ldrb r1, [r6,#0xa]
	lsl r1, r1, #0x10
	add r1, r1, r0
	str r1, [r7,#oAIAttackVars_Damage]
	ldrb r1, [r6,#0x14] // chip use delay?
	strb r1, [r7,#oAIAttackVars_Unk_05]
	mov r1, #0
	strh r1, [r7,#oAIAttackVars_AttackBoost]
	ldrb r1, [r6,#0xc]
	strb r1, [r7,#oAIAttackVars_Unk_03]
	ldrb r1, [r6,#4]
	ldrb r2, [r6,#6]
	ldr r0, off_80129E0 // =byte_80129E4
	ldrb r0, [r0,r2]
	orr r1, r0
	strb r1, [r7,#oAIAttackVars_Unk_02]
	mov r1, #0
	strb r1, [r7,#oAIAttackVars_Unk_04]
	tst r4, r4
	beq loc_801273A
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrh r1, [r7,#oAIAttackVars_Unk_14]
	bl sub_8021D14
loc_801273A:
	ldrb r0, [r6,#0xb]
	pop {r4,r6,r7,pc}
	thumb_func_end somethingWriteChipParams_80126E4

	thumb_local_start
sub_801273E:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#0x16]
	push {r0}
	bl object_getAllianceDirection
	mov r6, r0
	pop {r0}
	lsl r1, r0, #3
	ldr r7, off_8012778 // =byte_8012780
	add r7, r7, r1
	ldr r2, [r7]
	ldr r3, [r7,#4]
	ldr r7, off_801277C // =word_8012790 
	ldrb r0, [r7,r0]
loc_801275A:
	mov r1, #3
loc_801275C:
	push {r0-r3,r6}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3,r6}
	bne locret_8012776
	sub r1, #1
	bne loc_801275C
	add r0, r0, r6
	sub r4, r0, #1
	cmp r4, #6
	bls loc_801275A
	mov r0, #0
locret_8012776:
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8012778: .word byte_8012780
off_801277C: .word word_8012790
byte_8012780: .byte 0x0, 0x0, 0x20, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x40, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
word_8012790: .hword 0x601
	thumb_func_end sub_801273E

	thumb_func_start sub_8012792
sub_8012792:
	push {r4,r6,r7,lr}
	mov r4, r1
	mov r6, r2
	mov r7, r3
loc_801279A:
	sub r0, #4
	bmi loc_80127BC
	sub r7, #1
	ldr r2, [r6,r0]
	ldrb r1, [r7]
	ldrh r3, [r2,r1]
	tst r3, r3
	beq loc_80127B8
	cmp r4, r3
	bne loc_801279A
	add r1, #2
	strb r1, [r7]
	ldr r3, [r2,r1]
	tst r3, r3
	bne loc_801279A
loc_80127B8:
	lsr r0, r0, #2
	pop {r4,r6,r7,pc}
loc_80127BC:
	mov r0, #0xff
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8012792

	thumb_local_start
useChipRelated_80127C0: // called when you use a chip
	push {r4,r6,r7,lr}
	sub sp, sp, #0x1c
	str r0, [sp]
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_80128F4 // =0x10000 
	tst r1, r4
	bne loc_80127DA
	mov r0, r5
	ldr r1, [sp]
	bl sub_800EDD0
	b loc_80127E4
loc_80127DA:
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1b]
	mov r0, r5
	bl sub_800EE26
loc_80127E4:
	str r0, [sp,#4]
	str r1, [sp,#8]
	str r2, [sp,#0xc]
	str r3, [sp,#0x10]
	mov r6, #0xff
	and r6, r4
	str r6, [sp,#0x14]
	lsr r4, r4, #8
	str r4, [sp,#0x18]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldrb r0, [r4,#0x1f]
	bl sub_8010D58
	ldr r3, dword_80128F8 // =0xffff 
	cmp r0, r3
	beq loc_8012822
	str r0, [sp,#4]
	str r1, [sp,#8]
	str r2, [sp,#0xc]
	mov r3, #0
	str r3, [sp,#0x10]
	mov r6, #0xff
	and r6, r4
	str r6, [sp,#0x14]
	lsr r4, r4, #8
	str r4, [sp,#0x18]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
loc_8012822:
	ldr r0, [sp,#4]
	strh r0, [r7,#oAIAttackVars_Unk_14]
	bl somethingWriteChipParams_80126E4
	ldr r0, [sp]
	strb r0, [r7,#oAIAttackVars_Unk_04]
	ldr r0, [sp,#8]
	strh r0, [r7,#oAIAttackVars_Damage]
	ldr r0, [sp]
	bl sub_8012C7C
	tst r0, r0
	beq loc_801284E
	ldrh r1, [r7,#oAIAttackVars_Damage]
	cmp r0, #0xff
	bne loc_8012844
	mov r0, r1
loc_8012844:
	add r1, r1, r0
	strh r1, [r7,#oAIAttackVars_Damage]
	mov r0, #SOUND_HIT_87
	bl PlaySoundEffect
loc_801284E:
	ldr r0, [sp,#0xc]
	strh r0, [r7,#oAIAttackVars_AttackBoost]
	mov r0, r5
	ldrh r1, [r7,#oAIAttackVars_Unk_14]
	ldrh r2, [r7,#oAIAttackVars_Damage]
	ldr r3, [sp]
	bl sub_8012A38
	strh r0, [r7,#oAIAttackVars_Damage]
	tst r1, r1
	beq loc_8012880
	cmp r1, #1
	bne loc_8012872
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	b loc_801287A
loc_8012872:
	cmp r1, #2
	bne loc_8012880
	bl sub_80143A6
loc_801287A:
	mov r0, #SOUND_HIT_87
	bl PlaySoundEffect
loc_8012880:
	ldrh r0, [r7,#oAIAttackVars_Damage]
	ldr r1, [sp,#0x14]
	bl sub_8012C34
	strh r0, [r7,#oAIAttackVars_Damage]
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	ldrh r1, [r7,#oAIAttackVars_Damage]
	bl sub_8012C4A
	strh r0, [r7,#oAIAttackVars_Damage]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #6
	beq loc_80128A2
	cmp r0, #0x12
	bne loc_80128C0
loc_80128A2:
	// spoutcross chip heal?
	ldrb r0, [r4,#4]
	cmp r0, #2
	bne loc_80128C0
	ldrb r0, [r4,#9]
	mov r1, #1
	tst r0, r1
	bne loc_80128C0
	mov r1, #0x3e 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	add r0, #0x13
	mov r1, #0x14
	svc 6
	mov r2, r0
	b loc_80128C2
loc_80128C0:
	mov r2, #0
loc_80128C2:
	push {r2}
	mov r1, #0x50 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	pop {r2}
	add r0, r0, r2
	beq loc_80128D6
	mov r1, #0
	bl sub_800E2FC
loc_80128D6:
	ldrb r0, [r4,#9]
	mov r1, #4
	tst r0, r1
	beq loc_80128E8
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #6
	mov r2, #1
	bl sub_800AB46
loc_80128E8:
	ldrh r0, [r7,#oAIAttackVars_Unk_14]
	bl sub_800B79A
	ldrb r0, [r4,#0xb]
	add sp, sp, #0x1c
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_80128F4: .word 0x10000
dword_80128F8: .word 0xFFFF
	thumb_func_end useChipRelated_80127C0

	thumb_local_start
sub_80128FC:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r4, r0
	ldrb r6, [r5,#0x12]
	ldrb r7, [r5,#0x13]
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_8012950
	ldrb r1, [r0,#2]
	cmp r1, #6
	bne loc_8012998
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #7
	beq loc_8012928
	cmp r0, #0x13
	bne loc_8012998
loc_8012928:
	ldr r0, [sp]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012998
	mov r2, #1
	tst r1, r2
	bne loc_8012998
	ldrb r1, [r0,#6]
	cmp r1, #3
	bne loc_8012998
	mov r0, r6
	mov r1, r7
	mov r2, #2
	bl object_setPanelType
	mov r0, #1
	b loc_8012952
loc_8012950:
	mov r0, #0
loc_8012952:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_80128FC

	thumb_func_start sub_8012956
sub_8012956:
	ldrb r3, [r0]
	tst r3, r3
	bne loc_8012998
	ldrb r3, [r0,#2]
	add r3, #1
	strb r3, [r0,#2]
	cmp r3, #0xc
	ble loc_801296C
	mov r3, #1
	strb r3, [r0]
	b loc_8012998
loc_801296C:
	ldrb r3, [r0,#1]
	add r2, r3, r3
	add r3, #1
	cmp r3, #3
	blt loc_8012978
	mov r3, #0
loc_8012978:
	strb r3, [r0,#1]
	add r2, #4
	strh r1, [r0,r2]
	ldrh r1, [r0,#4]
	ldrh r2, [r0,#6]
	orr r1, r2
	ldrh r2, [r0,#8]
	orr r1, r2
	mov r2, #0x22 
	and r1, r2
	cmp r1, #0x22 
	bne loc_8012998
	mov r3, #1
	strb r3, [r0]
	mov r0, #1
	mov pc, lr
loc_8012998:
	mov r0, #0
	mov pc, lr
	thumb_func_end sub_8012956

	thumb_func_start sub_801299C
sub_801299C:
	push {lr}
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end sub_801299C

	thumb_local_start
sub_80129A6:
	push {r7,lr}
	strh r0, [r7,#0x14]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldr r1, [r0,#0x10]
	str r1, [r7,#0xc]
	ldrb r1, [r0,#0xa]
	lsl r1, r1, #0x10
	ldrh r2, [r0,#0x1a]
	add r1, r1, r2
	str r1, [r7,#8]
	ldrb r1, [r0,#0x14]
	strb r1, [r7,#5]
	mov r1, #0
	strh r1, [r7,#6]
	ldrb r1, [r0,#0xc]
	strb r1, [r7,#3]
	ldrb r1, [r0,#4]
	ldrb r2, [r0,#6]
	ldr r3, off_80129E0 // =byte_80129E4
	ldrb r2, [r3,r2]
	orr r1, r2
	strb r1, [r7,#2]
	ldrb r0, [r0,#0xb]
	pop {r7,pc}
	.word 0
	.byte 0, 0, 0, 0
	.balign 4, 0
off_80129E0: .word byte_80129E4
byte_80129E4: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x40, 0x0, 0x20, 0x10, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
	thumb_func_end sub_80129A6

	thumb_local_start
sub_80129F4:
	push {r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#0x16]
	lsl r0, r0, #3
	ldr r1, off_8012A24 // =off_8012A28 
	add r1, r1, r0
	ldr r2, [r1]
	ldr r3, [r1,#4]
	add r7, sp, #0
	bl object_getPanelsFiltered
	mov r7, r0
	beq loc_8012A20
	bl GetPositiveSignedRNG
	mov r1, r7
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8012A20:
	add sp, sp, #0x18
	pop {r7,pc}
	.balign 4, 0
off_8012A24: .word off_8012A28
off_8012A28: .word 0x30
	.word 0xF880080, 0x10, 0xF8800A0
	thumb_func_end sub_80129F4

	thumb_local_start
sub_8012A38:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	mov r5, r0
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	mov r6, #0
	// idx
	mov r0, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r4, r0
	ldrb r1, [r4,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012AB4
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #2
	bne loc_8012A64
	mov r6, #1
	b loc_8012AAC
loc_8012A64:
	cmp r0, #3
	bne loc_8012A6C
	mov r6, #2
	b loc_8012AAC
loc_8012A6C:
	ldr r0, [sp]
	ldr r1, [sp,#8]
	bl sub_8012AFA
	tst r0, r0
	beq loc_8012A7C
	mov r6, #4
	b loc_8012AAC
loc_8012A7C:
	ldr r0, [sp]
	ldr r1, [sp,#8]
	bl sub_8012B4E
	tst r0, r0
	beq loc_8012A8C
	mov r6, #6
	b loc_8012AAC
loc_8012A8C:
	ldr r0, [sp]
	ldr r1, [sp,#8]
	bl sub_8012BA2
	tst r0, r0
	beq loc_8012A9C
	mov r6, #6
	b loc_8012AAC
loc_8012A9C:
	ldr r0, [sp]
	bl sub_8012ABC
	tst r0, r0
	beq loc_8012AAA
	mov r6, #4
	b loc_8012AAC
loc_8012AAA:
	b loc_8012AB4
loc_8012AAC:
	ldr r0, [sp,#4]
	ldr r1, dword_8012DE4 // =0x8000 
	orr r0, r1
	str r0, [sp,#4]
loc_8012AB4:
	ldr r0, [sp,#4]
	mov r1, r6
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_8012A38

	thumb_local_start
sub_8012ABC:
	push {r6,r7,lr}
	mov r7, #0
	mov r6, r0
	bl GetBattleMode
	cmp r0, #1
	beq loc_8012AF6
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0x17
	blt loc_8012AF6
	cmp r0, #0x18
	bgt loc_8012AF6
	mov r7, #0
	// idx
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012AF6
	mov r2, #1
	tst r1, r2
	bne loc_8012AF6
	ldrb r1, [r0,#6]
	cmp r1, #0xa
	bne loc_8012AF6
	mov r7, #1
loc_8012AF6:
	mov r0, r7
	pop {r6,r7,pc}
	thumb_func_end sub_8012ABC

	thumb_local_start
sub_8012AFA:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, #0
	mov r4, r1
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #7
	beq loc_8012B1A
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #7
	beq loc_8012B1A
	cmp r0, #0x13
	bne loc_8012B4A
loc_8012B1A:
	mov r7, #0
	// idx
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012B4A
	mov r2, #1
	tst r1, r2
	bne loc_8012B4A
	ldrb r1, [r0,#4]
	cmp r1, #4
	bne loc_8012B4A
	cmp r4, #0
	bne loc_8012B48
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r1,#oAIData_PwrAtkState]
	cmp r0, #2
	bne loc_8012B4A
	ldrb r0, [r1,#oAIData_PwrAtkButton]
	cmp r0, #1
	bne loc_8012B4A
loc_8012B48:
	mov r7, #1
loc_8012B4A:
	mov r0, r7
	pop {r6,r7,pc}
	thumb_func_end sub_8012AFA

	thumb_local_start
sub_8012B4E:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, #0
	mov r4, r1
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #6
	beq loc_8012B6E
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #6
	beq loc_8012B6E
	cmp r0, #0x12
	bne loc_8012B9E
loc_8012B6E:
	mov r7, #0
	// idx
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012B9E
	mov r2, #1
	tst r1, r2
	bne loc_8012B9E
	ldrb r1, [r0,#4]
	cmp r1, #2
	bne loc_8012B9E
	cmp r4, #0
	bne loc_8012B9C
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r1,#oAIData_PwrAtkState]
	cmp r0, #2
	bne loc_8012B9E
	ldrb r0, [r1,#oAIData_PwrAtkButton]
	cmp r0, #1
	bne loc_8012B9E
loc_8012B9C:
	mov r7, #1
loc_8012B9E:
	mov r0, r7
	pop {r6,r7,pc}
	thumb_func_end sub_8012B4E

	thumb_local_start
sub_8012BA2:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, #0
	mov r4, r1
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	bne loc_8012BE4
	mov r7, #0
	// idx
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012BE4
	mov r2, #1
	tst r1, r2
	bne loc_8012BE4
	ldrb r1, [r0,#6]
	cmp r1, #5
	bne loc_8012BE4
	cmp r4, #0
	bne loc_8012BE2
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r1,#oAIData_PwrAtkState]
	cmp r0, #2
	bne loc_8012BE4
	ldrb r0, [r1,#oAIData_PwrAtkButton]
	cmp r0, #1
	bne loc_8012BE4
loc_8012BE2:
	mov r7, #1
loc_8012BE4:
	mov r0, r7
	pop {r6,r7,pc}
	thumb_func_end sub_8012BA2

	thumb_local_start
sub_8012BE8:
	push {r6,r7,lr}
	mov r7, #0
	mov r6, r0
	mov r4, r1
	bl GetBattleMode
	cmp r0, #1
	beq loc_8012C30
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt loc_8012C30
	cmp r0, #0x16
	bgt loc_8012C30
	mov r7, #0
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012C30
	mov r2, #1
	tst r1, r2
	bne loc_8012C30
	ldrb r1, [r0,#6]
	cmp r1, #0xa
	bne loc_8012C30
	cmp r4, #0
	bne loc_8012C2E
	ldr r0, [r5,#0x58]
	ldrb r0, [r0,#0x1d]
	cmp r0, #2
	bne loc_8012C30
loc_8012C2E:
	mov r7, #1
loc_8012C30:
	mov r0, r7
	pop {r6,r7,pc}
	thumb_func_end sub_8012BE8

	thumb_local_start
sub_8012C34:
	ldr r2, dword_8012DE8 // =0x4000 
	mov r3, #2
	tst r1, r3
	beq loc_8012C3E
	orr r0, r2
loc_8012C3E:
	ldr r2, off_8012DEC // =0x2000 
	mov r3, #4
	tst r1, r3
	beq locret_8012C48
	orr r0, r2
locret_8012C48:
	mov pc, lr
	thumb_func_end sub_8012C34

	thumb_local_start
sub_8012C4A:
	push {r4,lr}
	mov r4, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_8012C78
	mov r2, #1
	tst r1, r2
	bne loc_8012C78
	ldrb r1, [r0,#6]
	cmp r1, #0xa
	bne loc_8012C78
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #4
	beq loc_8012C74
	cmp r0, #0x10
	bne loc_8012C78
loc_8012C74:
	ldr r0, off_8012DF0 // =0x1000 
	orr r4, r0
loc_8012C78:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_8012C4A

	thumb_local_start
sub_8012C7C:
	push {r4,lr}
	mov r4, r0
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #2
	beq loc_8012C8E
	cmp r0, #0xe
	bne loc_8012C94
loc_8012C8E:
	tst r4, r4
	bne loc_8012CAA
	b loc_8012CA2
loc_8012C94:
	cmp r0, #3
	beq loc_8012C9C
	cmp r0, #0xf
	bne loc_8012CA2
loc_8012C9C:
	tst r4, r4
	bne loc_8012CAE
	b loc_8012CA2
loc_8012CA2:
	mov r0, #0
	pop {r4,pc}
	mov r0, #0xff
	pop {r4,pc}
loc_8012CAA:
	ldr r0, dword_8012DE8 // =0x4000 
	pop {r4,pc}
loc_8012CAE:
	mov r0, #0x28 
	pop {r4,pc}
	thumb_func_end sub_8012C7C

	thumb_local_start
sub_8012CB2:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x14
	mov r6, sp
	ldrb r3, [r5,#oBattleObject_Alliance]
	mov r2, #1
	eor r3, r2
	mov r1, #0
	mov r2, #0xba
	mov r0, r6
	bl object_getEnemyByNameRange
	mov r4, r0
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r3, [r5,#oBattleObject_Alliance]
	mov r2, #1
	eor r3, r2
	ldr r1, off_8012DF4 // =0x100 
	ldr r2, dword_8012DF8 // =0x1c3 
	bl object_getEnemyByNameRange
	add r4, r4, r0
	beq loc_8012D20
	mov r0, #0x10
	add r0, r0, r6
	bl sub_8012D24
	add r6, #0x10
	mov r4, #3
loc_8012CEC:
	push {r6,r7}
	ldrb r0, [r6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, #0x10
	push {r0-r3}
	mov r0, #0x1e
	mov r1, #0x14
	bl sub_8012642
	mov r6, #0x8a
	lsl r6, r6, #0x10
	orr r6, r0
	pop {r0-r3}
	mov r7, #0
	bl sub_80C7F20
	pop {r6,r7}
	add r6, #1
	sub r4, #1
	bne loc_8012CEC
	mov r0, #2
	mov r1, #0x14
	bl camera_initShakeEffect_80302a8
loc_8012D20:
	add sp, sp, #0x14
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8012CB2

	thumb_local_start
sub_8012D24:
	push {r4-r7,lr}
	mov r7, r0
	mov r0, #0
	str r0, [r7]
	mov r3, r4
loc_8012D2E:
	ldr r2, [r6]
	ldrb r0, [r2,#oBattleObject_PanelX]
	ldrb r1, [r2,#oBattleObject_PanelY]
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7]
	add r7, #1
	add r6, #4
	sub r3, #1
	bne loc_8012D2E
	cmp r4, #3
	beq loc_8012D5C
	cmp r4, #2
	beq loc_8012D54
	sub r7, #1
	ldrb r0, [r7]
	strb r0, [r7,#1]
	strb r0, [r7,#2]
	b loc_8012D5E
loc_8012D54:
	sub r7, #2
	ldrb r0, [r7,#1]
	strb r0, [r7,#2]
	b loc_8012D5E
loc_8012D5C:
	sub r7, #3
loc_8012D5E:
	bl sub_8012D70
	pop {r4-r7,pc}
	thumb_func_end sub_8012D24

	thumb_local_start
sub_8012D64:
	push {lr}
	mov r0, #0
	mov r1, #1
	bl sub_8012D8C
	pop {pc}
	thumb_func_end sub_8012D64

	thumb_local_start
sub_8012D70:
	push {lr}
	mov r0, #0
	mov r1, #1
	bl sub_8012D8C
	mov r0, #0
	mov r1, #2
	bl sub_8012D8C
	mov r0, #1
	mov r1, #2
	bl sub_8012D8C
	pop {pc}
	thumb_func_end sub_8012D70

	thumb_local_start
sub_8012D8C:
	push {r4,r6,lr}
	mov r4, r0
	mov r6, r1
	ldrb r0, [r7,r4]
	ldrb r1, [r7,r6]
	cmp r0, r1
	bne locret_8012DB6
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl object_reservePanel
	bl sub_8012DB8
	strb r0, [r7,r6]
	ldrb r0, [r7,r4]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	bl object_removePanelReserve
locret_8012DB6:
	pop {r4,r6,pc}
	thumb_func_end sub_8012D8C

	thumb_local_start
sub_8012DB8:
	push {lr}
	ldr r3, off_8012DD0 // =byte_8012DD4
	bl GetAllianceDependentPanelParamArgs
	bl sub_8015C94
	cmp r0, #0
	beq locret_8012DCC
	lsl r1, r1, #4
	orr r0, r1
locret_8012DCC:
	pop {pc}
	.balign 4, 0
off_8012DD0: .word byte_8012DD4
byte_8012DD4: .byte 0x20, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0
	.byte 0x0, 0x0
dword_8012DE4: .word 0x8000
dword_8012DE8: .word 0x4000
off_8012DEC: .word 0x2000
off_8012DF0: .word 0x1000
off_8012DF4: .word 0x100
dword_8012DF8: .word 0x1C3
	thumb_func_end sub_8012DB8

	thumb_func_start sub_8012DFC
sub_8012DFC:
	push {r4,r6,lr}
	mov r7, r0
	bl sub_8010022
	mov r4, r0
	bl battle_isBattleOver
	tst r0, r0
	bne loc_8012E64
	mov r0, r7
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte
	cmp r0, #0x17
	blt loc_8012E1E
	cmp r0, #0x18
	ble locret_8012E62
loc_8012E1E:
	ldr r1, off_8012E70 // =dword_2036820 
	mov r3, #8
	mul r3, r7
	add r1, r1, r3
	ldrh r6, [r1,#2]
	mov r3, r6
	ldrh r2, [r4,#oAIData_JoypadHeld]
	strh r2, [r4,#oAIData_JoypadReleased]
	strh r3, [r4,#oAIData_JoypadHeld]
	mvn r0, r2
	and r0, r3
	strh r0, [r4,#oAIData_JoypadPressed]
	mvn r0, r3
	and r0, r2
	strh r0, [r4,#oAIData_JoypadUp]
	bl battle_isTimeStop
	bne loc_8012E4E
	mov r0, #0
	strh r0, [r4,#oAIData_Unk_30]
	strh r0, [r4,#oAIData_Unk_2a]
	strh r0, [r4,#oAIData_Unk_2c]
	strh r0, [r4,#oAIData_Unk_2e]
	b locret_8012E62
loc_8012E4E:
	mov r3, r6
	ldrh r2, [r4,#oAIData_Unk_2a]
	strh r2, [r4,#oAIData_Unk_30]
	strh r3, [r4,#oAIData_Unk_2a]
	mvn r0, r2
	and r0, r3
	strh r0, [r4,#oAIData_Unk_2c]
	mvn r0, r3
	and r0, r2
	strh r0, [r4,#oAIData_Unk_2e]
locret_8012E62:
	pop {r4,r6,pc}
loc_8012E64:
	mov r1, #0
	strh r1, [r4,#oAIData_JoypadHeld]
	strh r1, [r4,#oAIData_JoypadReleased]
	strh r1, [r4,#oAIData_JoypadPressed]
	strh r1, [r4,#oAIData_JoypadUp]
	pop {r4,r6,pc}
	.balign 4, 0
off_8012E70: .word dword_2036820
	thumb_func_end sub_8012DFC

	thumb_func_start sub_8012E74
sub_8012E74:
	push {r4,r6,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	bl battle_isBattleOver
	tst r0, r0
	bne loc_8012E90
	bl battle_isPaused
	bne locret_8012E8E
	bl sub_8012EA0
	bl sub_8012EBC
locret_8012E8E:
	pop {r4,r6,pc}
loc_8012E90:
	mov r1, #0
	strh r1, [r4,#oAIData_JoypadHeld]
	strh r1, [r4,#oAIData_JoypadReleased]
	strh r1, [r4,#oAIData_JoypadPressed]
	strh r1, [r4,#oAIData_JoypadUp]
	pop {r4,r6,pc}
	.word dword_2036820
	thumb_func_end sub_8012E74

	thumb_local_start
sub_8012EA0:
	push {lr}
	bl pwrAtkRelated_readsFromJoypad_8012FC8
	pop {pc}
	thumb_func_end sub_8012EA0

	thumb_func_start sub_8012EA8
sub_8012EA8:
	push {lr}
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	strb r0, [r3,#oAIData_PwrAtkState]
	strb r0, [r3,#oAIData_Unk_1b]
	strb r0, [r3,#oAIData_PwrAtkButton]
	ldr r0, dword_8012FAC // =0x60000 
	bl ClearAIData_Unk_44_Flag
	pop {pc}
	thumb_func_end sub_8012EA8

	thumb_local_start
sub_8012EBC:
	push {r4,r6,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	bl battle_isTimeStop
	bne locret_8012F3C
	bl returnBoolIfAIDataFlagsAreSet_8012F3E
	beq loc_8012F34
	ldrb r0, [r4,#oAIData_PwrAtkButton]
	bl sub_8012F62
	mov r7, r0
	bl GetAIData_Unk_44_Flag
	mov r3, #0
	ldr r1, dword_8012FAC // =0x60000 
	tst r0, r1
	bne loc_8012EE2
	b loc_8012F34
loc_8012EE2:
	ldr r1, dword_8012FB0 // =0x20000 
	tst r0, r1
	beq loc_8012EF8
	ldrb r0, [r4,#oAIData_PwrAtkButton]
	mov r1, #1
	strb r1, [r4,#oAIData_PwrAtkButton]
	cmp r0, #1
	beq loc_8012F14
	cmp r0, #0
	bne loc_8012F0E
	b loc_8012F14
loc_8012EF8:
	ldr r1, dword_8012FB4 // =0x40000 
	tst r0, r1
	beq loc_8012F14
	ldrb r0, [r4,#oAIData_PwrAtkButton]
	mov r1, #2
	strb r1, [r4,#oAIData_PwrAtkButton]
	cmp r0, #2
	beq loc_8012F14
	cmp r0, #0
	bne loc_8012F0E
	b loc_8012F14
loc_8012F0E:
	mov r0, #0
	strb r0, [r4,#oAIData_Unk_1b]
	strb r0, [r4,#oAIData_PwrAtkState]
loc_8012F14:
	ldrb r0, [r4,#oAIData_Unk_1b]
	add r0, #1
	strb r0, [r4,#oAIData_Unk_1b]
	cmp r0, #0xa
	blt loc_8012F30
	mov r3, #1
	cmp r0, r7
	blt loc_8012F30
	strb r7, [r4,#oAIData_Unk_1b]
	mov r3, #2
	b loc_8012F30
	mov r0, #0
	strb r0, [r4,#0x1b]
	mov r3, #0
loc_8012F30:
	strb r3, [r4,#oAIData_PwrAtkState]
	pop {r4,r6,r7,pc}
loc_8012F34:
	mov r0, #0
	strb r0, [r4,#oAIData_PwrAtkButton]
	strb r0, [r4,#oAIData_Unk_1b]
	strb r0, [r4,#oAIData_PwrAtkState]
locret_8012F3C:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8012EBC

	thumb_local_start
returnBoolIfAIDataFlagsAreSet_8012F3E:
	push {lr}
	// reads flag set when A is pressed
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_8012FB8 // =0x1000002f 
	tst r0, r1
	bne loc_8012F5E
	bl GetAIDataUnk0x48Flag
	ldr r1, off_8012FBC // =0x200 
	tst r0, r1
	bne loc_8012F5E
	mov r1, #0x10
	tst r0, r1
	beq loc_8012F5E
	mov r0, #1
	pop {pc}
loc_8012F5E:
	mov r0, #0
	pop {pc}
	thumb_func_end returnBoolIfAIDataFlagsAreSet_8012F3E

	thumb_local_start
sub_8012F62:
	push {r4,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r7, #7
	cmp r0, #2
	beq loc_8012F90
	mov r7, #5
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt loc_8012F90
	cmp r0, #0x18
	bgt loc_8012F90
	bl sub_8010004
	ldr r1, dword_8012FC0 // =0xffff 
	beq loc_8012F90
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#6]
	cmp r0, #0xa
	bne loc_8012F90
	mov r7, #0x11
loc_8012F90:
	mov r1, #3
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	lsl r3, r0, #1
	mov r0, #0xff
	ldrb r1, [r4,r7]
	cmp r1, #0xff
	beq locret_8012FAA
	mov r2, #0xa
	mul r1, r2
	add r1, r1, r3
	ldr r2, off_8012FC4 // =byte_8020404 
	ldrh r0, [r2,r1]
locret_8012FAA:
	pop {r4,r7,pc}
	.balign 4, 0
dword_8012FAC: .word 0x60000
dword_8012FB0: .word 0x20000
dword_8012FB4: .word 0x40000
dword_8012FB8: .word 0x1000002F
off_8012FBC: .word 0x200
dword_8012FC0: .word 0xFFFF
off_8012FC4: .word byte_8020404
	thumb_func_end sub_8012F62

	thumb_local_start
pwrAtkRelated_readsFromJoypad_8012FC8:
	push {r4,r6,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	bl GetAIData_Unk_44_Flag
	mov r6, r0
	bl battle_isTimeStop
	beq loc_8013008
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800A772
	tst r0, r0
	bne loc_8012FE4
	pop {r4,r6,r7,pc}
loc_8012FE4:
	ldr r1, off_80133B0 // =0x800 
	tst r1, r6
	bne locret_8013006
	bl sub_8010004
	add r1, r0, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	beq locret_8013006
	ldrh r0, [r4,#oAIData_Unk_2c]
	mov r1, #1
	tst r0, r1
	bne loc_8013000
	b locret_8013006
loc_8013000:
	ldr r0, off_80133B0 // =0x800 
	bl SetAIData_Unk_44_Flag
locret_8013006:
	pop {r4,r6,r7,pc}
loc_8013008:
	bl sub_800A8F8
	beq loc_8013044
	ldrh r1, [r4,#oAIData_JoypadPressed]
	mov r2, #4
	tst r1, r2
	beq loc_8013044
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	ldrh r0, [r0,#0x28]
	ldr r1, off_80133B4 // =0x1500 
	cmp r0, r1
	bge loc_801303C
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	ldrb r1, [r5,#oBattleObject_Alliance]
	cmp r0, r1
	bne loc_8013044
	mov r0, #SOUND_CANT_JACK_IN
	bl PlaySoundEffect
	bl sub_801EC44
	b loc_8013044
loc_801303C:
	ldr r0, off_80133B8 // =timer_2000000 
	bl SetAIData_Unk_44_Flag
	b locret_8013234
loc_8013044:
	bl GetBattleMode
	cmp r0, #1
	beq loc_801309C
	ldrh r7, [r4,#oAIData_JoypadHeld]
	bl GetAIDataUnk0x48Flag
	ldr r1, off_80133BC // =0x400 
	tst r0, r1
	bne loc_8013072
	bl battle_getFlags
	mov r1, #2
	tst r0, r1
	beq loc_801309C
	ldrh r0, [r4,#oAIData_JoypadPressed]
	ldr r1, off_80133C0 // =0x300 
	tst r0, r1
	beq loc_801309C
	mov r0, #0x10
	bl battle_setFlags
	b locret_8013234
loc_8013072:
	ldrh r7, [r4,#oAIData_JoypadPressed]
	ldr r1, off_80133C0 // =0x300 
	tst r7, r1
	beq loc_801309C
	ldrb r0, [r5,#oBattleObject_DirectionFlip]
	cmp r0, #0
	beq loc_801308E
	ldr r0, off_80133C4 // =0x1000 
	bl SetAIData_Unk_44_Flag
	ldr r0, off_80133C8 // =0x2000 
	bl ClearAIData_Unk_44_Flag
	b loc_801309C
loc_801308E:
	ldr r0, off_80133C8 // =0x2000 
	bl SetAIData_Unk_44_Flag
	ldr r0, off_80133C4 // =0x1000 
	bl ClearAIData_Unk_44_Flag
	b loc_801309C
loc_801309C:
	ldrh r7, [r4,#oAIData_JoypadHeld]
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_80133CC // =0x60000 
	tst r0, r1
	bne loc_80130D0
	bl sub_801336C
	beq loc_80130BC
	mov r1, #1
	tst r7, r1
	beq loc_80130BC
	ldr r0, dword_80133D0 // =0x20000 
	bl SetAIData_Unk_44_Flag
	b loc_8013130
loc_80130BC:
	bl sub_8013396
	beq loc_80130D0
	mov r1, #2
	tst r7, r1
	beq loc_8013130
	ldr r0, dword_80133D4 // =0x40000 
	bl SetAIData_Unk_44_Flag
	b loc_8013130
loc_80130D0:
	ldr r1, dword_80133D0 // =0x20000 
	tst r0, r1
	beq loc_80130FA
	ldrh r0, [r4,#oAIData_JoypadPressed]
	mov r1, #2
	tst r0, r1
	beq loc_80130EC
	ldr r0, dword_80133D0 // =0x20000 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_80133D4 // =0x40000 
	bl SetAIData_Unk_44_Flag
	b loc_8013130
loc_80130EC:
	bl sub_801336C
	beq loc_801312A
	mov r0, #1
	tst r7, r0
	beq loc_801312A
	b loc_8013130
loc_80130FA:
	ldr r1, dword_80133D4 // =0x40000 
	tst r0, r1
	beq loc_8013130
	bl sub_801336C
	beq loc_801311C
	ldrh r0, [r4,#oAIData_JoypadPressed]
	mov r1, #1
	tst r0, r1
	beq loc_801311C
	ldr r0, dword_80133D4 // =0x40000 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_80133D0 // =0x20000 
	bl SetAIData_Unk_44_Flag
	b loc_8013130
loc_801311C:
	bl sub_8013396
	beq loc_801312A
	mov r0, #2
	tst r7, r0
	beq loc_801312A
	b loc_8013130
loc_801312A:
	ldr r0, dword_80133CC // =0x60000 
	bl ClearAIData_Unk_44_Flag
loc_8013130:
	ldrb r0, [r4,#oAIData_Unk_08]
	cmp r0, #0xff
	beq loc_8013176
	ldrb r0, [r4,#oAIData_Unk_15]
	tst r0, r0
	bne loc_8013176
	ldrh r2, [r4,#oAIData_JoypadPressed]
	ldrb r0, [r4,#oAIData_Unk_13]
	tst r0, r0
	bne loc_801314E
	mov r1, #2
	tst r2, r1
	beq loc_8013176
	mov r0, #8
	strb r0, [r4,#oAIData_Unk_13]
loc_801314E:
	mov r1, #0x20 
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	tst r3, r3
	beq loc_8013158
	mov r1, #0x10
loc_8013158:
	tst r2, r1
	beq loc_801316C
	ldrh r2, [r4,#oAIData_JoypadHeld]
	mov r1, #2
	tst r1, r2
	beq loc_801316C
	mov r0, #0x10
	bl SetAIData_Unk_44_Flag
	b loc_8013172
loc_801316C:
	sub r0, #1
	strb r0, [r4,#oAIData_Unk_13]
	b loc_8013176
loc_8013172:
	mov r0, #0
	strb r0, [r4,#oAIData_Unk_13]
loc_8013176:
	ldrb r1, [r4,#oAIData_Unk_06]
	cmp r1, #0xff
	beq loc_80131D8
	mov r2, #3
	tst r2, r6
	bne loc_80131D8
	cmp r1, #4
	beq loc_801318E
	cmp r1, #0x2c 
	beq loc_801318E
	cmp r1, #3
	bne loc_80131B4
loc_801318E:
	mov r1, #oNaviStats_Transformation 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0x14
	beq loc_801319C
	cmp r0, #0x16
	bne loc_80131A6
loc_801319C:
	bl GetAIData_Unk_44_Flag
	mov r1, #0x10
	tst r0, r1
	bne loc_80131D8
loc_80131A6:
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_80133D8 // =0x10000 
	tst r0, r1
	bne loc_80131D8
	ldrh r0, [r4,#oAIData_JoypadHeld]
	b loc_80131BE
loc_80131B4:
	ldrh r0, [r4,#oAIData_JoypadPressed]
	ldrb r1, [r4,#oAIData_BPwrAtk]
	cmp r1, #0xff
	beq loc_80131BE
	ldrh r0, [r4,#oAIData_JoypadUp]
loc_80131BE:
	mov r1, #2
	tst r0, r1
	beq loc_80131D8
	mov r0, #1
	ldrb r1, [r4,#oAIData_PwrAtkButton]
	cmp r1, #2
	bne loc_80131D4
	ldrb r1, [r4,#oAIData_PwrAtkState]
	cmp r1, #2
	bne loc_80131D4
	mov r0, #2
loc_80131D4:
	bl SetAIData_Unk_44_Flag
loc_80131D8:
	bl GetBattleMode
	cmp r0, #9 // dustman minigame
	bne loc_80131EE
	ldrh r0, [r4,#oAIData_JoypadPressed]
	mov r1, #1
	tst r0, r1
	beq loc_80131EE
	ldr r0, dword_80133DC // =0x10000000 
	bl SetAIData_Unk_44_Flag
loc_80131EE:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800A772
	tst r0, r0
	beq locret_8013234
	mov r1, #0xc
	tst r1, r6
	bne locret_8013234
	bl sub_8010004
	ldr r1, dword_80133E0 // =0xffff 
	cmp r0, r1
	beq locret_8013234
	bl sub_801336C
	bne loc_8013218
	ldrh r0, [r4,#oAIData_JoypadPressed]
	mov r1, #1
	tst r0, r1
	bne loc_8013220
	b locret_8013234
loc_8013218:
	ldrh r0, [r4,#oAIData_JoypadUp]
	mov r1, #1
	tst r0, r1
	beq locret_8013234
loc_8013220:
	mov r0, #4
	ldrb r1, [r4,#oAIData_PwrAtkButton]
	cmp r1, #1
	bne loc_8013230
	ldrb r1, [r4,#oAIData_PwrAtkState]
	cmp r1, #2
	bne loc_8013230
	mov r0, #8
loc_8013230:
	bl SetAIData_Unk_44_Flag
locret_8013234:
	pop {r4,r6,r7,pc}
	thumb_func_end pwrAtkRelated_readsFromJoypad_8012FC8

	thumb_local_start
sub_8013236:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r1, off_80133E4 // =0x190 
	cmp r0, r1
	blt loc_8013244
	b loc_8013360
loc_8013244:
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r7, r0
	ldrb r4, [r7,#6]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r6, r0
	ldrb r1, [r7,#9]
	cmp r6, #2
	bne loc_801326C
	cmp r4, #0xa
	bne loc_801326C
	mov r0, #2
	tst r0, r1
	beq loc_801326C
	mov r0, #1
	tst r0, r1
	bne loc_801326C
	b loc_8013366
loc_801326C:
	cmp r6, #3
	beq loc_8013274
	cmp r6, #0xf
	bne loc_8013290
loc_8013274:
	ldr r2, [sp]
	cmp r2, #0x4c 
	blt loc_801327E
	cmp r2, #0x4f 
	ble loc_8013282
loc_801327E:
	cmp r4, #5
	bne loc_8013290
loc_8013282:
	mov r0, #2
	tst r0, r1
	beq loc_8013290
	mov r0, #1
	tst r0, r1
	bne loc_8013290
	b loc_8013366
loc_8013290:
	cmp r6, #0xb
	blt loc_801329E
	cmp r6, #0x16
	bgt loc_801329E
	cmp r4, #0xa
	bne loc_801329E
	b loc_8013366
loc_801329E:
	cmp r6, #7
	beq loc_80132A6
	cmp r6, #0x13
	bne loc_80132BA
loc_80132A6:
	ldrb r3, [r7,#6]
	cmp r3, #3
	bne loc_80132BA
	mov r0, #2
	tst r0, r1
	beq loc_80132BA
	mov r0, #1
	tst r0, r1
	bne loc_80132BA
	b loc_8013366
loc_80132BA:
	cmp r6, #6
	beq loc_80132C2
	cmp r6, #0x12
	bne loc_80132D6
loc_80132C2:
	ldrb r3, [r7,#6]
	cmp r3, #1
	bne loc_80132D6
	mov r0, #2
	tst r0, r1
	beq loc_80132D6
	mov r0, #1
	tst r0, r1
	bne loc_80132D6
	b loc_8013366
loc_80132D6:
	cmp r6, #9
	beq loc_80132DE
	cmp r6, #0x15
	bne loc_80132F0
loc_80132DE:
	cmp r4, #9
	bne loc_80132F0
	mov r0, #2
	tst r0, r1
	beq loc_80132F0
	mov r0, #1
	tst r0, r1
	bne loc_80132F0
	b loc_8013366
loc_80132F0:
	cmp r6, #5
	beq loc_80132F8
	cmp r6, #0x11
	bne loc_801330C
loc_80132F8:
	ldrb r3, [r7,#6]
	cmp r3, #0
	bne loc_801330C
	mov r0, #2
	tst r0, r1
	beq loc_801330C
	mov r0, #1
	tst r0, r1
loc_8013308:
	bne loc_801330C
	b loc_8013366
loc_801330C:
	bl sub_800F49E
	cmp r0, #0xff
	beq loc_8013360
	mov r6, r0
	ldr r4, off_80133E8 // =byte_8021369 
	ldrb r1, [r7,#9]
	mov r0, #2
	tst r0, r1
	beq loc_8013338
	mov r0, #1
	tst r0, r1
	bne loc_8013360
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldrb r3, [r7,#6]
	cmp r0, #5
	bne loc_8013338
	cmp r3, #0
	bne loc_8013360
	b loc_801335A
loc_8013338:
	cmp r0, #6
	bne loc_8013344
	cmp r3, #1
	bne loc_8013360
	add r4, #1
	b loc_801335A
loc_8013344:
	cmp r0, #7
	bne loc_8013350
	cmp r3, #3
	bne loc_8013360
	add r4, #2
	b loc_801335A
loc_8013350:
	cmp r0, #0xb
	bne loc_8013360
	cmp r3, #5
	bne loc_8013360
	add r4, #3
loc_801335A:
	ldrb r0, [r4]
	cmp r6, r0
	bge loc_8013366
loc_8013360:
	mov r0, #0
	add sp, sp, #4
	pop {r4,r6,r7,pc}
loc_8013366:
	mov r0, #1
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8013236

	thumb_local_start
sub_801336C:
	push {lr}
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r1,#oAIData_Unk_05]
	cmp r0, #0xff
	bne loc_801337C
	ldrb r0, [r1,#oAIData_Unk_11]
	cmp r0, #0xff
	beq loc_8013392
loc_801337C:
	bl returnBoolIfAIDataFlagsAreSet_8012F3E
	beq loc_8013392
	bl sub_8010004
	ldr r1, dword_80133E0 // =0xffff 
	cmp r0, r1
	beq loc_8013392
	bl sub_8013236
	pop {pc}
loc_8013392:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_801336C

	thumb_local_start
sub_8013396:
	push {lr}
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r1,#oAIData_BPwrAtk]
	cmp r0, #0xff
	beq loc_80133AA
	bl returnBoolIfAIDataFlagsAreSet_8012F3E
	beq loc_80133AA
	mov r0, #1
	pop {pc}
loc_80133AA:
	mov r0, #0
	pop {pc}
	.balign 4, 0
off_80133B0: .word 0x800
off_80133B4: .word 0x1500
off_80133B8: .word timer_2000000
off_80133BC: .word 0x400
off_80133C0: .word 0x300
off_80133C4: .word 0x1000
off_80133C8: .word 0x2000
dword_80133CC: .word 0x60000
dword_80133D0: .word 0x20000
dword_80133D4: .word 0x40000
dword_80133D8: .word 0x10000
dword_80133DC: .word 0x10000000
dword_80133E0: .word 0xFFFF
off_80133E4: .word 0x190
off_80133E8: .word byte_8021369
	thumb_func_end sub_8013396

	thumb_func_start sub_80133EC
sub_80133EC:
	push {r5,r6,lr}
	mov r0, #0x4 // (off_8013410 - 0x801340c)
	ldr r6, off_8013408 // =off_801340C 
	ldr r6, [r6,r0]
	mov r5, #0
loc_80133F6:
	mov r0, r5
	ldrb r1, [r6,r5]
	bl init_8013B4E // (bool a1, int a2) -> void
	add r5, #1
	cmp r5, #7
	blt loc_80133F6
	pop {r5,r6,pc}
	.balign 4, 0
off_8013408: .word off_801340C
off_801340C: .word byte_8013414
off_8013410: .word byte_801341B
byte_8013414: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0xB
byte_801341B: .byte 0x0, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB
	thumb_func_end sub_80133EC

	thumb_func_start sub_8013422
sub_8013422:
	push {lr}
	ldr r2, off_8013434 // =eBattleNaviStats0
	mov r1, #0x64 
	mul r0, r1
	add r0, r0, r2
	bl initNaviStats_WithDefaultStatsMaybe_8013438 // (void *struct) -> void
	pop {pc}
	.balign 4, 0
off_8013434: .word eBattleNaviStats0
	thumb_func_end sub_8013422

// (void *struct) -> void
	thumb_func_start initNaviStats_WithDefaultStatsMaybe_8013438
initNaviStats_WithDefaultStatsMaybe_8013438:
	push {r4,lr}
	mov r4, r0
	// memBlock
	mov r0, r4
	// size
	mov r1, #0x64 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #1
	mov r1, #0x20 
	strb r0, [r4,r1]
	mov r0, #1
	strb r0, [r4,#5]
	mov r0, #0xff
	strb r0, [r4,#7]
	mov r0, #0
	strb r0, [r4,#0x18]
	mov r0, #0
	strb r0, [r4,#0x19]
	mov r0, #0
	strb r0, [r4,#8]
	mov r0, #4
	strb r0, [r4,#9]
	mov r0, #5
	strb r0, [r4,#0xa]
	mov r0, #5
	strb r0, [r4,#0xb]
	mov r0, #1
	strb r0, [r4,#0xc]
	mov r0, #0
	strb r0, [r4,#0xd]
	mov r0, #0
	mov r1, #0x26 
	strb r0, [r4,r1]
	mov r0, #0xff
	strb r0, [r4,#0x12]
	mov r0, #0x1f
	mov r1, #0x27 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x28 
	strb r0, [r4,r1]
	mov r0, #0x99
	mov r1, #0xe
	strb r0, [r4,r1]
	mov r0, #0x64 
	mov r1, #0x40 
	strh r0, [r4,r1]
	mov r1, #0x42 
	strh r0, [r4,r1]
	mov r1, #0x3e 
	strh r0, [r4,r1]
	mov r0, #0
	mov r1, #0x2c 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x2d 
	strb r0, [r4,r1]
	mov r0, #0xff
	mov r1, #0x2e 
loc_80134AC:
	strb r0, [r4,r1]
	add r1, #1
	cmp r1, #0x30 
	ble loc_80134AC
	mov r0, #0xff
	mov r1, #0x56 
loc_80134B8:
	strb r0, [r4,r1]
	add r1, #1
	cmp r1, #0x5b 
	ble loc_80134B8
	mov r0, #3
	mov r1, #0x21 
	strb r0, [r4,r1]
	pop {r4,pc}
	thumb_func_end initNaviStats_WithDefaultStatsMaybe_8013438

	thumb_func_start sub_80134C8
sub_80134C8:
	push {r4,lr}
	mov r4, r0
	// memBlock
	mov r0, r4
	// size
	mov r1, #0x64 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #1
	mov r1, #0x20 
	strb r0, [r4,r1]
	mov r0, #1
	strb r0, [r4,#5]
	mov r0, #0xff
	strb r0, [r4,#7]
	mov r0, #0
	strb r0, [r4,#0x18]
	mov r0, #0
	strb r0, [r4,#0x19]
	mov r0, #0
	strb r0, [r4,#8]
	mov r0, #4
	strb r0, [r4,#9]
	mov r0, #5
	strb r0, [r4,#0xa]
	mov r0, #5
	strb r0, [r4,#0xb]
	mov r0, #1
	strb r0, [r4,#0xc]
	mov r0, #0
	strb r0, [r4,#0xd]
	mov r0, #0
	mov r1, #0x26 
	strb r0, [r4,r1]
	mov r0, #0xff
	strb r0, [r4,#0x12]
	mov r0, #0x1f
	mov r1, #0x27 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x28 
	strb r0, [r4,r1]
	mov r0, #0x99
	mov r1, #0xe
	strb r0, [r4,r1]
	ldr r0, off_8013550 // =0x1f4 
	mov r1, #0x40 
	strh r0, [r4,r1]
	mov r1, #0x42 
	strh r0, [r4,r1]
	mov r1, #0x3e 
	strh r0, [r4,r1]
	mov r0, #2
	strb r0, [r4,#1]
	strb r0, [r4,#2]
	strb r0, [r4,#3]
	mov r0, #0
	mov r1, #0x2c 
	strb r0, [r4,r1]
	mov r0, #0xff
	mov r1, #0x2e 
	strb r0, [r4,r1]
	mov r1, #0x2f 
	strb r0, [r4,r1]
	mov r1, #0x30 
	strb r0, [r4,r1]
	mov r0, #1
	mov r1, #0x21 
	strb r0, [r4,r1]
	pop {r4,pc}
	.balign 4, 0
off_8013550: .word 0x1F4
	thumb_func_end sub_80134C8

	thumb_func_start sub_8013554
sub_8013554:
	push {r4,lr}
	mov r4, r0
	// memBlock
	mov r0, r4
	// size
	mov r1, #0x64 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x46 
	strb r0, [r4,#4]
	mov r0, #0xff
	strb r0, [r4,#5]
	mov r0, #0xff
	strb r0, [r4,#7]
	mov r0, #0
	strb r0, [r4,#0x18]
	mov r0, #0
	strb r0, [r4,#0x19]
	mov r0, #0
	strb r0, [r4,#8]
	mov r0, #4
	strb r0, [r4,#9]
	mov r0, #5
	strb r0, [r4,#0xa]
	mov r0, #5
	strb r0, [r4,#0xb]
	mov r0, #1
	strb r0, [r4,#0xc]
	mov r0, #0
	strb r0, [r4,#0xd]
	mov r0, #0
	mov r1, #0x26 
	strb r0, [r4,r1]
	mov r0, #0xff
	strb r0, [r4,#0x12]
	mov r0, #0x1f
	mov r1, #0x27 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x28 
	strb r0, [r4,r1]
	mov r0, #0x99
	mov r1, #0xe
	strb r0, [r4,r1]
	mov r0, #1
	mov r1, #0x42 
	bl GetNaviStatsHword
	mov r1, #0x40 
	strh r0, [r4,r1]
	mov r1, #0x42 
	strh r0, [r4,r1]
	mov r1, #0x3e 
	strh r0, [r4,r1]
	mov r0, #0
	mov r1, #0x2c 
	strb r0, [r4,r1]
	mov r0, #7
	mov r1, #0x29 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x2d 
	strb r0, [r4,r1]
	mov r0, #0xff
	mov r1, #0x2e 
loc_80135D2:
	strb r0, [r4,r1]
	add r1, #1
	cmp r1, #0x30 
	ble loc_80135D2
	mov r0, #0xff
	mov r1, #0x56 
loc_80135DE:
	strb r0, [r4,r1]
	add r1, #1
	cmp r1, #0x5b 
	ble loc_80135DE
	pop {r4,pc}
	thumb_func_end sub_8013554

	thumb_func_start sub_80135E8
sub_80135E8:
	push {r4,lr}
	mov r4, r0
	// memBlock
	mov r0, r4
	// size
	mov r1, #0x64 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x4c 
	strb r0, [r4,#4]
	mov r0, #0x4b 
	mov r1, #0x44 
	strb r0, [r4,r1]
	mov r0, #0xff
	strb r0, [r4,#5]
	mov r0, #0xff
	strb r0, [r4,#7]
	mov r0, #0
	strb r0, [r4,#0x18]
	mov r0, #0
	strb r0, [r4,#0x19]
	mov r0, #0
	strb r0, [r4,#8]
	mov r0, #4
	strb r0, [r4,#9]
	mov r0, #5
	strb r0, [r4,#0xa]
	mov r0, #5
	strb r0, [r4,#0xb]
	mov r0, #1
	strb r0, [r4,#0xc]
	mov r0, #0
	strb r0, [r4,#0xd]
	mov r0, #0
	mov r1, #0x26 
	strb r0, [r4,r1]
	mov r0, #0xff
	strb r0, [r4,#0x12]
	mov r0, #0x1f
	mov r1, #0x27 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x28 
	strb r0, [r4,r1]
	mov r0, #0x99
	mov r1, #0xe
	strb r0, [r4,r1]
	mov r0, #1
	mov r1, #0x42 
	bl GetNaviStatsHword
	mov r1, #0x40 
	strh r0, [r4,r1]
	mov r1, #0x42 
	strh r0, [r4,r1]
	mov r1, #0x3e 
	strh r0, [r4,r1]
	mov r0, #0
	mov r1, #0x2c 
	strb r0, [r4,r1]
	mov r0, #0xa
	mov r1, #0x29 
	strb r0, [r4,r1]
	mov r0, #0
	mov r1, #0x2d 
	strb r0, [r4,r1]
	mov r0, #0xff
	mov r1, #0x2e 
loc_801366C:
	strb r0, [r4,r1]
	add r1, #1
	cmp r1, #0x30 
	ble loc_801366C
	mov r0, #0xff
	mov r1, #0x56 
loc_8013678:
	strb r0, [r4,r1]
	add r1, #1
	cmp r1, #0x5b 
	ble loc_8013678
	pop {r4,pc}
	thumb_func_end sub_80135E8

// (int idx) -> void*
	thumb_func_start GetBattleNaviStatsAddr
GetBattleNaviStatsAddr:
	mov r1, #oNaviStats_Size
	mul r0, r1
	ldr r1, =eBattleNaviStats0
	add r0, r0, r1
	mov pc, lr
// 801368C
	.pool
	thumb_func_end GetBattleNaviStatsAddr

	thumb_local_start
GetBattleNaviStats203CB10Addr:
	mov r1, #oNaviStats_Size
	mul r0, r1
	ldr r1, off_801369C // =eBattleNaviStats203CB10 
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_801369C: .word eBattleNaviStats203CB10
	thumb_func_end GetBattleNaviStats203CB10Addr

	thumb_local_start
GetBattleNaviStats2034A60Addr:
	mov r1, #oNaviStats_Size
	mul r0, r1
	ldr r1, off_80136AC // =eBattleNaviStats2034A60 
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_80136AC: .word eBattleNaviStats2034A60
	thumb_func_end GetBattleNaviStats2034A60Addr

	thumb_local_start
SetBattleNaviStatsByte:
	push {r6,r7,lr}
	mov r6, r1
	mov r7, r2
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	strb r7, [r0,r6]
	pop {r6,r7,pc}
	thumb_func_end SetBattleNaviStatsByte

	thumb_local_start
SetBattleNaviStatsHword:
	push {r6,r7,lr}
	mov r6, r1
	mov r7, r2
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	strh r7, [r0,r6]
	pop {r6,r7,pc}
	thumb_func_end SetBattleNaviStatsHword

	thumb_func_start GetBattleNaviStatsByte
GetBattleNaviStatsByte:
	push {r6,lr}
	mov r6, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrb r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStatsByte

	thumb_func_start GetBattleNaviStatsSignedByte
GetBattleNaviStatsSignedByte:
	push {r6,lr}
	mov r6, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrsb r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStatsSignedByte

	thumb_func_start GetBattleNaviStatsHword
GetBattleNaviStatsHword:
	push {r6,lr}
	mov r6, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrh r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStatsHword

	thumb_func_start SetNaviStatsByte
// (bool structSel, int a2, u8 a3) -> void
SetNaviStatsByte:
    // type safety, ensure bool (0, 1)
	cmp r0, #0
	beq loc_80136F6
	mov r0, #1
loc_80136F6:
    // Toolkit->S20047CC_Ptrs[oS20047CC*a1 + a2] = a3
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	strb r2, [r3,r1]
	mov pc, lr
	thumb_func_end SetNaviStatsByte

	thumb_func_start GetNaviStatsByte
GetNaviStatsByte:
	cmp r0, #0
	beq loc_801370A
	mov r0, #1
loc_801370A:
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	ldrb r0, [r3,r1]
	mov pc, lr
	thumb_func_end GetNaviStatsByte

	thumb_local_start
GetNaviStatsByte_8013718:
	cmp r0, #0
	beq loc_801371E
	mov r0, #1
loc_801371E:
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	ldrb r0, [r3,r1]
	mov pc, lr
	thumb_func_end GetNaviStatsByte_8013718

	thumb_local_start
SetNaviStatsHword:
	cmp r0, #0
	beq loc_8013732
	mov r0, #1
loc_8013732:
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	strh r2, [r3,r1]
	mov pc, lr
	thumb_func_end SetNaviStatsHword

	thumb_local_start
GetNaviStatsHword:
	cmp r0, #0
	beq loc_8013746
	mov r0, #1
loc_8013746:
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	ldrh r0, [r3,r1]
	mov pc, lr
	thumb_func_end GetNaviStatsHword

// FIX THESE NAMES
	thumb_func_start SetBattleNaviStatsByte_AllianceFromBattleObject
SetBattleNaviStatsByte_AllianceFromBattleObject:
	push {r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r6, r1
	mov r7, r2
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	strb r7, [r0,r6]
	pop {r6,r7,pc}
	thumb_func_end SetBattleNaviStatsByte_AllianceFromBattleObject

	thumb_func_start SetBattleNaviStatsHword_AllianceFromBattleObject
SetBattleNaviStatsHword_AllianceFromBattleObject:
	push {r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r6, r1
	mov r7, r2
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	strh r7, [r0,r6]
	pop {r6,r7,pc}
	thumb_func_end SetBattleNaviStatsHword_AllianceFromBattleObject

	thumb_func_start GetBattleNaviStatsByte_AllianceFromBattleObject
GetBattleNaviStatsByte_AllianceFromBattleObject:
	push {r6,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r6, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrb r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStatsByte_AllianceFromBattleObject

	thumb_local_start
GetBattleNaviStatsByte_AllianceFromBattleObject_8013782:
	push {r6,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r6, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrb r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStatsByte_AllianceFromBattleObject_8013782

	thumb_func_start GetBattleNaviStatsHword_AllianceFromBattleObject
GetBattleNaviStatsHword_AllianceFromBattleObject:
	push {r6,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r6, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrh r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStatsHword_AllianceFromBattleObject

// (int a1, int a2, int a3) -> void
	thumb_func_start SetCurPETNaviStatsByte
SetCurPETNaviStatsByte:
	push {lr}
	push {r1,r2}
	bl GetNaviStatsIndexGivenCurPETNavi // (int idx) -> bool8
	pop {r1,r2}
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	strb r2, [r3,r1]
	pop {pc}
	thumb_func_end SetCurPETNaviStatsByte

// (int a1, int a2) -> u8
	thumb_func_start GetCurPETNaviStatsByte
GetCurPETNaviStatsByte:
	push {lr}
	push {r1}
	bl GetNaviStatsIndexGivenCurPETNavi // (int idx) -> bool8
	pop {r1}
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	ldrb r0, [r3,r1]
	pop {pc}
	thumb_func_end GetCurPETNaviStatsByte

	thumb_local_start
GetCurPetNaviStatsSignedByte:
	push {lr}
	push {r1}
	bl GetNaviStatsIndexGivenCurPETNavi // (int idx) -> bool8
	pop {r1}
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	ldrsb r0, [r3,r1]
	pop {pc}
	thumb_func_end GetCurPetNaviStatsSignedByte

	thumb_func_start SetCurPETNaviStatsHword
// (int structSelectIdx, int structOffset, u16 val) -> void
SetCurPETNaviStatsHword:
	push {lr}
	// Toolkit->NaviStatsPtr[oNaviStats_Size*GetNaviStatsIndexGivenCurPETNavi(a1)+a2] = a3
	push {r1,r2}
	bl GetNaviStatsIndexGivenCurPETNavi // (int idx) -> bool8
	pop {r1,r2}
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	strh r2, [r3,r1]
	pop {pc}
	thumb_func_end SetCurPETNaviStatsHword

	thumb_func_start GetCurPETNaviStatsHword
// (int structSelectIdx, int structOffset) -> u16
GetCurPETNaviStatsHword:
	push {lr}
	// return Toolkit->S20047CC_Ptrs[100*GetNaviStatsIndexGivenCurPETNavi(a1)+a2]
	push {r1}
	bl GetNaviStatsIndexGivenCurPETNavi // (int idx) -> bool8
	pop {r1}
	mov r3, #oNaviStats_Size
	mul r0, r3
	mov r3, r10
	ldr r3, [r3,#oToolkit_NaviStatsPtr]
	add r3, r3, r0
	ldrh r0, [r3,r1]
	pop {pc}
	thumb_func_end GetCurPETNaviStatsHword

	thumb_func_start GetBattleNaviStats203CB10Byte
GetBattleNaviStats203CB10Byte:
	push {r4,lr}
	mov r4, r1
	bl GetBattleNaviStats203CB10Addr
	ldrb r0, [r0,r4]
	pop {r4,pc}
	thumb_func_end GetBattleNaviStats203CB10Byte

	thumb_local_start
GetBattleNaviStats203CB10Hword:
	push {r4,lr}
	mov r4, r1
	bl GetBattleNaviStats203CB10Addr
	ldrh r0, [r0,r4]
	pop {r4,pc}
	thumb_func_end GetBattleNaviStats203CB10Hword

	thumb_func_start GetBattleNaviStats2034A60Byte
GetBattleNaviStats2034A60Byte:
	push {r6,lr}
	mov r6, r1
	bl GetBattleNaviStats2034A60Addr
	ldrb r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStats2034A60Byte

	thumb_local_start
GetBattleNaviStats2034A60Hword:
	push {r6,lr}
	mov r6, r1
	bl GetBattleNaviStats2034A60Addr
	ldrh r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetBattleNaviStats2034A60Hword

	thumb_func_start initNaviStats203CCE0_8013846
initNaviStats203CCE0_8013846:
	push {r4,lr}
	mov r0, #0
	bl GetNaviStats203CCE0Addr
	bl initNaviStats_WithDefaultStatsMaybe_8013438 // (void *struct) -> void
	pop {r4,pc}
	thumb_func_end initNaviStats203CCE0_8013846

	thumb_func_start GetNaviStats203CCE0Addr
GetNaviStats203CCE0Addr:
	mov r1, #oNaviStats_Size
	mul r0, r1
	ldr r1, off_8013860 // =eNaviStats203CCE0
	add r0, r0, r1
	mov pc, lr
	.byte 0, 0
off_8013860: .word eNaviStats203CCE0
	thumb_func_end GetNaviStats203CCE0Addr

	thumb_func_start SetNaviStats203CCE0Byte
SetNaviStats203CCE0Byte:
	push {r6,r7,lr}
	mov r0, #0
	mov r6, r1
	mov r7, r2
	bl GetNaviStats203CCE0Addr
	strb r7, [r0,r6]
	pop {r6,r7,pc}
	thumb_func_end SetNaviStats203CCE0Byte

	thumb_func_start SetNaviStats203CCE0Hword
SetNaviStats203CCE0Hword:
	push {r6,r7,lr}
	mov r0, #0
	mov r6, r1
	mov r7, r2
	bl GetNaviStats203CCE0Addr
	strh r7, [r0,r6]
	pop {r6,r7,pc}
	thumb_func_end SetNaviStats203CCE0Hword

	thumb_func_start GetNaviStats203CCE0Byte
GetNaviStats203CCE0Byte:
	push {r6,lr}
	mov r0, #0
	mov r6, r1
	bl GetNaviStats203CCE0Addr
	ldrb r0, [r0,r6]
	pop {r6,pc}
	thumb_func_end GetNaviStats203CCE0Byte

	thumb_local_start
sub_8013892:
	push {r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r6, r0
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0xa
	strh r0, [r5,#oBattleObject_StaminaDamageCounterDisabler]
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_80138BC
	ldr r1, dword_8013908 // =0x10000 
	tst r0, r1
	bne loc_80138BC
	mov r1, #0xe
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xff
	beq loc_80138D2
loc_80138BC:
	mov r1, #0xf
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, r0
	mov r1, #0
	bl sub_8015C2C
	mov r1, #0xe
	mov r2, r0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
loc_80138D2:
	mov r1, #6
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_80138F2
	push {r0}
	bl sub_801A7CC
	pop {r4}
	push {r7}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	mov r7, #0x60 
	add r7, r7, r0
	bl sub_80E0D98
	pop {r7}
loc_80138F2:
	mov r1, #0x21 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_8013900
	bl sub_801443C
loc_8013900:
	b loc_8013918
	.balign 4, 0
	.word 0x20000
dword_8013908: .word 0x10000
	thumb_func_end sub_8013892

	thumb_local_start
sub_801390C:
	push {r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r6, r0
	ldr r7, [r5,#oBattleObject_AIDataPtr]
loc_8013918:
	ldrb r0, [r6,#5]
	strb r0, [r7,#oAIData_BPwrAtk]
	ldrb r0, [r6,#7]
	strb r0, [r7,#oAIData_Unk_08]
	ldr r0, off_8013CA8 // =0x8000000
	bl object_clearFlag // (int bitfield) -> void
	bl object_clearInvulnerableTime
	ldr r0, [r7,#oAIData_Unk_50]
	tst r0, r0
	beq loc_8013938
	bl sub_80E5410
	mov r0, #0
	str r0, [r7,#oAIData_Unk_50]
loc_8013938:
	b loc_8013956
	thumb_func_end sub_801390C

	thumb_func_start sub_801393A
sub_801393A:
	push {r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r6, r0
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x2c 
	ldrb r0, [r6,r1]
	cmp r0, #0
	bne loc_8013956
	ldrb r0, [r6,#5]
	strb r0, [r7,#oAIData_BPwrAtk]
	ldrb r0, [r6,#7]
	strb r0, [r7,#oAIData_Unk_08]
loc_8013956:
	mov r0, #0x20 
	ldrb r1, [r6,#0x1b]
	tst r1, r1
	beq loc_8013970
	bl object_setFlag1 // (int a1) -> void
	bl sub_80107C0
	mov r1, #0x10
	mov r2, #2
	bl object_updateCollisionData
	b loc_8013980
loc_8013970:
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80107C0
	mov r1, #1
	mov r2, #2
	bl object_updateCollisionData
loc_8013980:
	mov r0, #0x10
	ldrb r1, [r6,#0x1c]
	tst r1, r1
	beq loc_801398E
	bl object_setFlag1 // (int a1) -> void
	b loc_8013992
loc_801398E:
	bl object_clearFlag // (int bitfield) -> void
loc_8013992:
	ldr r0, off_8013CAC // =timer_2000000 
	bl object_setFlag1 // (int a1) -> void
	mov r0, #1
	lsl r0, r0, #0x12
	ldrb r1, [r6,#0x1d]
	tst r1, r1
	beq loc_80139A8
	bl object_setFlag1 // (int a1) -> void
	b loc_80139AC
loc_80139A8:
	bl object_clearFlag // (int bitfield) -> void
loc_80139AC:
	mov r0, #1
	lsl r0, r0, #0x11
	mov r2, #0x23 
	ldrb r1, [r6,r2]
	tst r1, r1
	beq loc_80139BE
	bl object_setFlag1 // (int a1) -> void
	b locret_80139C2
loc_80139BE:
	bl object_clearFlag // (int bitfield) -> void
locret_80139C2:
	pop {r6,r7,pc}
	thumb_func_end sub_801393A

	thumb_func_start sub_80139C4
sub_80139C4:
	push {r7,lr}
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	beq locret_80139F4
	ldrb r0, [r7,#oAIData_ActorType]
	cmp r0, #2
	bne locret_80139F4
	ldrb r0, [r7,#oAIData_AIIndex]
	cmp r0, #0xb
	bgt locret_80139F4
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #2
	bne locret_80139F4
	add r7, #0x5c 
	ldr r0, [r7]
	tst r0, r0
	bne locret_80139F4
	mov r1, #4
	mov r3, #0x10
	bl sub_80C4C12
locret_80139F4:
	pop {r7,pc}
	thumb_func_end sub_80139C4

	thumb_local_start
sub_80139F6:
	push {r4,lr}
	sub sp, sp, #8
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa4
	ldrb r1, [r4,r1]
	str r1, [sp]
	tst r1, r1
	bne loc_8013A08
	b loc_8013ADC
loc_8013A08:
	mov r2, #0xa5
	ldrb r2, [r4,r2]
	str r2, [sp,#4]
	cmp r1, #0x18
	beq loc_8013A16
	cmp r1, #0x19
	bne loc_8013A26
loc_8013A16:
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r2, [sp,#4]
	add r2, r2, r0
	cmp r2, #7
	ble loc_8013ACA
	mov r2, #7
	b loc_8013ACA
loc_8013A26:
	cmp r1, #0x54 
	bne loc_8013A34
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	ldr r2, [sp,#4]
	add r2, r2, r0
	b loc_8013ACA
loc_8013A34:
	cmp r1, #0xff
	bne loc_8013A48
	mov r1, #0x14
	str r1, [sp]
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #4
	ble loc_8013A46
	mov r2, #4
loc_8013A46:
	b loc_8013ACA
loc_8013A48:
	cmp r1, #0xfe
	bne loc_8013A5E
	mov r1, #0x12
	mov r2, #4
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x13
	mov r2, #4
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_8013ADC
loc_8013A5E:
	cmp r1, #0xfb
	bne loc_8013A68
	bl sub_8014080
	b loc_8013ADC
loc_8013A68:
	cmp r1, #0xfa
	bne loc_8013A7E
	mov r1, #0x12
	mov r2, #4
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x13
	mov r2, #2
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_8013ADC
loc_8013A7E:
	cmp r1, #0xf9
	bne loc_8013A94
	mov r1, #0x12
	mov r2, #4
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x13
	mov r2, #1
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_8013ADC
loc_8013A94:
	cmp r1, #0xf8
	bne loc_8013AB4
	bl sub_80140EE
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	ldr r0, dword_8013CB0 // =0x100000 
	add r3, r3, r0
	mov r4, #0xe
	bl sub_80E08C4
	mov r0, #0x8e
	bl PlaySoundEffect
	b loc_8013ADC
loc_8013AB4:
	cmp r1, #0xf5
	bne loc_8013ACA
	mov r1, #0x12
	mov r2, #3
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x13
	mov r2, #1
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	b loc_8013ADC
loc_8013ACA:
	ldr r1, [sp]
	cmp r1, #0x64 
	bge loc_8013ADC
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_801393A
	bl sub_801469C
loc_8013ADC:
	bl sub_800FF5E
	add sp, sp, #8
	pop {r4,pc}
	thumb_func_end sub_80139F6

	thumb_local_start
sub_8013AE4:
	push {lr}
	sub sp, sp, #8
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa4
	ldrb r1, [r3,r1]
	str r1, [sp]
	tst r1, r1
	beq loc_8013B1C
	mov r2, #0xa5
	ldrb r2, [r3,r2]
	str r2, [sp,#4]
	cmp r1, #0x18
	beq loc_8013B02
	cmp r1, #0x19
	bne loc_8013B1C
loc_8013B02:
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r2, [sp,#4]
	add r2, r2, r0
	cmp r2, #7
	ble loc_8013B12
	mov r2, #7
	b loc_8013B12
loc_8013B12:
	ldr r1, [sp]
	cmp r1, #0x64 
	bge loc_8013B1C
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
loc_8013B1C:
	add sp, sp, #8
	pop {pc}
	thumb_func_end sub_8013AE4

	thumb_local_start
sub_8013B20:
	push {r4,lr}
	sub sp, sp, #8
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0xa4
	ldrb r1, [r3,r1]
	str r1, [sp]
	tst r1, r1
	beq loc_8013B4A
	mov r2, #0xa5
	ldrb r2, [r3,r2]
	str r2, [sp,#4]
	cmp r1, #0x18
	bne loc_8013B4A
	ldrb r0, [r4,#oAIData_Unk_12]
	ldr r2, [sp,#4]
	add r2, r2, r0
	cmp r2, #7
	ble loc_8013B48
	mov r2, #7
loc_8013B48:
	strb r2, [r4,#oAIData_Unk_12]
loc_8013B4A:
	add sp, sp, #8
	pop {r4,pc}
	thumb_func_end sub_8013B20

// (bool a1, int a2) -> void
	thumb_func_start init_8013B4E
init_8013B4E:
	push {r4,r6,r7,lr}
	cmp r0, #0
	beq loc_8013B56
	mov r0, #1
loc_8013B56:
	mov r4, r1
	mov r7, r10
	ldr r7, [r7,#oToolkit_NaviStatsPtr]
	mov r2, #oNaviStats_Size 
	mul r0, r2
	add r7, r7, r0
	b loc_8013B6E
	thumb_func_end init_8013B4E

// (int idx, int a2) -> void
	thumb_func_start init_8013B64
init_8013B64:
	push {r4,r6,r7,lr}
	mov r4, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r7, r0
loc_8013B6E:
	mov r0, r7
	bl initNaviStats_WithDefaultStatsMaybe_8013438 // (void *struct) -> void
	mov r0, #0x10
	mul r0, r4
	ldr r6, off_8013CB4 // =byte_80210DD 
	add r6, r6, r0
	mov r1, #oNaviStats_NaviIndex 
	strb r4, [r7,r1]
	ldrb r0, [r6]
	add r0, r0, r0
	mov r1, #oNaviStats_CurHP 
	strh r0, [r7,r1]
	mov r1, #oNaviStats_MaxHP 
	strh r0, [r7,r1]
	mov r1, #oNaviStats_MaxBaseHP 
	strh r0, [r7,r1]
	ldrb r0, [r6,#1]
	mov r1, #oNaviStats_SuperArmor 
	strb r0, [r7,r1]
	ldrb r0, [r6,#2]
	strb r0, [r7,#oNaviStats_FloatShoes]
	ldrb r0, [r6,#3]
	strb r0, [r7,#oNaviStats_AirShoes]
	ldrb r0, [r6,#4]
	mov r1, #oNaviStats_UnderShirt
	strb r0, [r7,r1]
	ldrb r0, [r6,#5]
	strb r0, [r7,#oNaviStats_FstBarr]
	ldrb r0, [r6,#6]
	strb r0, [r7,#oNaviStats_MegaLevel]
	ldrb r0, [r6,#7]
	strb r0, [r7,#oNaviStats_GigaLevel]
	ldrb r0, [r6,#8]
	strb r0, [r7,#oNaviStats_APwrAtk]
	ldrb r0, [r6,#9]
	strb r0, [r7,#oNaviStats_BPwrAtk]
	ldrb r0, [r6,#0xa]
	strb r0, [r7,#oNaviStats_BLeftAbility]
	ldrb r0, [r6,#0xb]
	mov r1, #0x46 
	strh r0, [r7,r1]
	ldrb r0, [r6,#0xc]
	mov r1, #0x4a 
	strh r0, [r7,r1]
	ldrb r0, [r6,#0xd]
	mov r1, #0x48 
	strh r0, [r7,r1]
	ldrb r0, [r6,#0xe]
	strb r0, [r7]
	ldrb r0, [r6,#0xf]
	mov r1, #0x39 
	strb r0, [r7,r1]
	pop {r4,r6,r7,pc}
	thumb_func_end init_8013B64

	thumb_local_start
sub_8013BDA:
	push {r4,r6,r7,lr}
	mov r7, r0
	mov r4, r1
	mov r0, r7
	bl initNaviStats_WithDefaultStatsMaybe_8013438 // (void *struct) -> void
	mov r0, #0x10
	mul r0, r4
	ldr r6, off_8013CB8 // =byte_80210DD 
	add r6, r6, r0
	mov r1, #0x29 
	strb r4, [r7,r1]
	add r0, r4, r4
	ldr r1, off_8013CBC // =dword_802F0A8
	ldrh r0, [r0,r1]
	mov r1, #0x40 
	strh r0, [r7,r1]
	mov r1, #0x42 
	strh r0, [r7,r1]
	mov r1, #0x3e 
	strh r0, [r7,r1]
	ldrb r0, [r6,#1]
	mov r1, #0x23 
	strb r0, [r7,r1]
	ldrb r0, [r6,#2]
	strb r0, [r7,#0x1b]
	ldrb r0, [r6,#3]
	strb r0, [r7,#0x1c]
	ldrb r0, [r6,#4]
	mov r1, #0x1d
	strb r0, [r7,r1]
	ldrb r0, [r6,#5]
	strb r0, [r7,#6]
	ldrb r0, [r6,#6]
	strb r0, [r7,#0xb]
	ldrb r0, [r6,#7]
	strb r0, [r7,#0xc]
	ldrb r0, [r6,#8]
	strb r0, [r7,#4]
	ldrb r0, [r6,#9]
	strb r0, [r7,#5]
	ldrb r0, [r6,#0xa]
	strb r0, [r7,#7]
	ldrb r0, [r6,#0xb]
	mov r1, #0x46 
	strh r0, [r7,r1]
	ldrb r0, [r6,#0xc]
	mov r1, #0x4a 
	strh r0, [r7,r1]
	ldrb r0, [r6,#0xd]
	mov r1, #0x48 
	strh r0, [r7,r1]
	ldrb r0, [r6,#0xe]
	strb r0, [r7]
	ldrb r0, [r6,#0xf]
	mov r1, #0x39 
	strb r0, [r7,r1]
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8013BDA

	thumb_local_start
sub_8013C4E:
	push {r4,r6,lr}
	ldr r0, dword_8013CC0 // =0x20000 
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r6, r0
	lsl r6, r6, #2
	ldr r1, off_8013C6C // =off_8013C70 
	ldr r1, [r6,r1]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0
off_8013C6C: .word off_8013C70
off_8013C70: .word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	.word nullsub_28+1
	thumb_func_end sub_8013C4E

	thumb_local_start
nullsub_28:
	mov pc, lr
	.balign 4, 0x00
off_8013CA8: .word 0x8000001
off_8013CAC: .word 0x2000000
dword_8013CB0: .word 0x100000
off_8013CB4: .word byte_80210DD
off_8013CB8: .word byte_80210DD
off_8013CBC: .word dword_802F0A8
dword_8013CC0: .word 0x20000
	thumb_func_end nullsub_28

	thumb_func_start sub_8013CC4
sub_8013CC4:
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r0,#oAIData_ActorType]
	cmp r1, #2
	bne locret_8013D3C
	mov r1, #0x13
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, r0
	beq locret_8013D3C
	bl GetPositiveSignedRNG
	mov r1, #7
	and r0, r1
	sub r4, #1
	cmp r0, r4
	bgt locret_8013D3C
	mov r1, #0x12
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, r0
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	ldrb r5, [r0,#oPanelData_Type]
	cmp r5, #1
	beq locret_8013D3C
	cmp r5, #0
	beq locret_8013D3C
	cmp r4, #1
	bne loc_8013D12
	mov r0, r6
	mov r1, r7
	bl object_breakPanel_dup2
	b locret_8013D3C
loc_8013D12:
	cmp r4, #3
	bne loc_8013D20
	mov r0, r6
	mov r1, r7
	bl object_crackPanelDup1
	b locret_8013D3C
loc_8013D20:
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl object_setPanelType
	cmp r4, r5
	beq locret_8013D3C
	add r1, r4, r4
	ldr r0, off_8013D40 // =byte_8013D44 
	ldrh r0, [r0,r1]
	tst r0, r0
	beq locret_8013D3C
	bl PlaySoundEffect
locret_8013D3C:
	pop {r4-r7,pc}
	.balign 4, 0
off_8013D40: .word byte_8013D44
byte_8013D44: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x90, 0x0, 0xA4, 0x0, 0x1B, 0x1
	.byte 0x18, 0x1, 0x1C, 0x1, 0xFC, 0x0, 0xFC, 0x0, 0xFC, 0x0, 0xFC, 0x0
	thumb_func_end sub_8013CC4

	thumb_func_start sub_8013D5E
sub_8013D5E:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	mov r4, #0
	add r7, sp, #0
	str r4, [sp]
	str r4, [sp,#4]
	str r4, [sp,#8]
	str r4, [sp,#0xc]
	mov r1, #0x14
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #1
loc_8013D76:
	sub r0, #1
	blt loc_8013D80
	strb r1, [r7,r4]
	add r4, #1
	b loc_8013D76
loc_8013D80:
	mov r1, #0x15
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #2
loc_8013D88:
	sub r0, #1
	blt loc_8013D92
	strb r1, [r7,r4]
	add r4, #1
	b loc_8013D88
loc_8013D92:
	bl GetRNG // () -> int
	mov r1, #0xf
	and r0, r1
	ldrb r0, [r7,r0]
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_func_end sub_8013D5E

	thumb_func_start sub_8013DA0
sub_8013DA0:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	bl battle_isPaused
	bne loc_8013E38
	mov r1, #0x24 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	tst r0, r0
	beq loc_8013E38
	mov r1, #0x21 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	tst r0, r0
	beq loc_8013E38
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_8013DD2
	bl sub_80143A6
	bl sub_8014446
	b loc_8013E38
loc_8013DD2:
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r4,#oAIData_Unk_3a]
	add r0, #1
	strh r0, [r4,#oAIData_Unk_3a]
	cmp r0, #0x3c 
	blt loc_8013E38
	mov r0, #0
	strh r0, [r4,#oAIData_Unk_3a]
	bl sub_80143A6
	bl sub_8014446
	ldrb r6, [r4,#oAIData_Unk_0b]
	ldr r0, off_8013E3C // =byte_8013E44
	mov r2, #0
	mov r7, #0
loc_8013DF2:
	ldrb r1, [r0,r2]
	cmp r1, r6
	bne loc_8013E00
	mov r1, #1
	cmp r6, #0
	beq loc_8013E00
	mov r1, #0
loc_8013E00:
	add r3, sp, #0
	strb r1, [r3,r7]
	add r7, #1
	add r2, #1
	cmp r2, #0x10
	blt loc_8013DF2
	bl GetPositiveSignedRNG
	mov r1, r7
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	strb r0, [r4,#oAIData_Unk_0b]
	cmp r0, #2
	beq loc_8013E2E
	cmp r0, #1
	beq loc_8013E34
	ldr r1, off_8013E40 // =dword_8013E54
	ldrb r1, [r1,r0]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_8015BEC
	b loc_8013E38
loc_8013E2E:
	bl sub_80143CE
	b loc_8013E38
loc_8013E34:
	bl sub_801443C
loc_8013E38:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8013E3C: .word byte_8013E44
off_8013E40: .word dword_8013E54
byte_8013E44: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x3
dword_8013E54: .word 0xFF003C99
	thumb_func_end sub_8013DA0

	thumb_local_start
sub_8013E58:
	push {r4,lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_8013E6C
	bl GetBattleMode
	cmp r0, #1
	beq loc_8013E6C
loc_8013E6C:
	mov r1, #0x1a
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, #0
	cmp r0, #9
	beq loc_8013E7E
	mov r4, #4
	cmp r0, #0xa
	bne loc_8013E8A
loc_8013E7E:
	bl GetRNG // () -> int
	mov r1, #3
	and r0, r1
	add r0, r0, r4
	add r0, #1
loc_8013E8A:
	lsl r0, r0, #2
	ldr r1, off_8013E98 // =off_8013E9C 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {r4,pc}
	.balign 4, 0
off_8013E98: .word off_8013E9C
off_8013E9C: .word nullsub_45+1
	.word sub_8013EC2+1
	.word sub_8013ECC+1
	.word sub_8013ED6+1
	.word sub_8013EE6+1
	.word sub_8013EF0+1
	.word sub_8013EFA+1
	.word sub_8013F04+1
	.word sub_8013F14+1
	thumb_func_end sub_8013E58

	thumb_local_start
nullsub_45:
	mov pc, lr
	thumb_func_end nullsub_45

	thumb_local_start
sub_8013EC2:
	push {r4,lr}
	ldr r4, off_80141BC // =0x12c 
	bl sub_8010474
	pop {r4,pc}
	thumb_func_end sub_8013EC2

	thumb_local_start
sub_8013ECC:
	push {lr}
	ldr r0, off_80141BC // =0x12c 
	bl object_setInvulnerableTime
	pop {pc}
	thumb_func_end sub_8013ECC

	thumb_local_start
sub_8013ED6:
	push {lr}
	ldr r0, off_80141BC // =0x12c 
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_BlindTimer]
	mov r0, #0x20 
	bl object_setFlag2
	pop {pc}
	thumb_func_end sub_8013ED6

	thumb_local_start
sub_8013EE6:
	push {lr}
	ldr r0, off_80141BC // =0x12c 
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_Unk_1e]
	pop {pc}
	thumb_func_end sub_8013EE6

	thumb_local_start
sub_8013EF0:
	push {r4,lr}
	ldr r4, off_80141C0 // =0x258 
	bl sub_8010474
	pop {r4,pc}
	thumb_func_end sub_8013EF0

	thumb_local_start
sub_8013EFA:
	push {lr}
	ldr r0, off_80141C0 // =0x258 
	bl object_setInvulnerableTime
	pop {pc}
	thumb_func_end sub_8013EFA

	thumb_local_start
sub_8013F04:
	push {lr}
	ldr r0, off_80141C0 // =0x258 
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_BlindTimer]
	mov r0, #0x20 
	bl object_setFlag2
	pop {pc}
	thumb_func_end sub_8013F04

	thumb_local_start
sub_8013F14:
	push {lr}
	ldr r0, off_80141C0 // =0x258 
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_Unk_1e]
	pop {pc}
	thumb_func_end sub_8013F14

	thumb_local_start
sub_8013F1E:
	push {lr}
	bl object_getFlag2
	ldr r1, off_80141C4 // =0x104 
	tst r0, r1
	beq locret_8013F68
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r1,#oCollisionData_FlagsFromCollision]
	cmp r0, #0
	beq locret_8013F68
	// misaligned word reads, base is 0x82
	add r1, #oCollisionData_PanelDamage1
	ldr r0, [r1,#oCollisionData_PanelDamage1and2 - oCollisionData_PanelDamage1]
	ldr r2, [r1,#oCollisionData_PanelDamage3and4 - oCollisionData_PanelDamage1]
	add r0, r0, r2
	ldr r2, [r1,#oCollisionData_PanelDamage5and6 - oCollisionData_PanelDamage1]
	add r0, r0, r2
	cmp r0, #0
	beq locret_8013F68
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r5,#oBattleObject_PreventAnim]
	cmp r1, #0
	bne loc_8013F4E
	strb r1, [r0,#oAIData_Unk_1c]
	b loc_8013F58
loc_8013F4E:
	ldrb r1, [r0,#oAIData_Unk_1c]
	cmp r1, #0
	bne locret_8013F68
	mov r1, #1
	strb r1, [r0,#oAIData_Unk_1c]
loc_8013F58:
	mov r1, #0x16
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	lsl r0, r0, #2
	ldr r1, off_8013F6C // =off_8013F70 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
locret_8013F68:
	pop {pc}
	.balign 4, 0
off_8013F6C: .word off_8013F70
off_8013F70: .word nullsub_46+1
	.word sub_8013F82+1
	.word sub_8013F8C+1
	.word sub_8013F96+1
	thumb_func_end sub_8013F1E

	thumb_local_start
nullsub_46:
	mov pc, lr
	thumb_func_end nullsub_46

	thumb_local_start
sub_8013F82:
	push {lr}
	mov r0, #0x32 
	bl object_setCollisionStatusEffect2
	pop {pc}
	thumb_func_end sub_8013F82

	thumb_local_start
sub_8013F8C:
	push {lr}
	mov r0, #0x22 
	bl object_setCollisionStatusEffect2
	pop {pc}
	thumb_func_end sub_8013F8C

	thumb_local_start
sub_8013F96:
	push {lr}
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r0, #1
	cmp r0, #7
	bgt locret_8013FAC
	mov r2, r0
	mov r1, #0x18
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
locret_8013FAC:
	pop {pc}
	thumb_func_end sub_8013F96

	thumb_func_start sub_8013FAE
sub_8013FAE:
	push {r4,lr}
	mov r1, #0x11
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r4, r0
	beq locret_8013FCE
	bl GetRNG // () -> int
	mov r1, #7
	and r0, r1
	sub r1, r4, #1
	cmp r0, r1
	bgt loc_8013FCC
	mov r0, #1
	pop {r4,pc}
loc_8013FCC:
	mov r0, #0
locret_8013FCE:
	pop {r4,pc}
	thumb_func_end sub_8013FAE

	thumb_func_start sub_8013FD0
sub_8013FD0:
	push {r5,lr}
	bl battle_findPlayer
	mov r5, r0
	beq locret_8013FF6
	mov r1, #0x54 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	tst r0, r0
	beq locret_8013FF6
	ldrh r1, [r5,#0x24]
	cmp r1, r0
	bgt loc_8013FEC
	sub r0, r1, #1
loc_8013FEC:
	bl object_subtractHP
	mov r0, #SOUND_HIT_6B
	bl PlaySoundEffect
locret_8013FF6:
	pop {r5,pc}
	thumb_func_end sub_8013FD0

	thumb_local_start
sub_8013FF8:
	push {lr}
	mov r1, #0x3d 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	tst r0, r0
	beq locret_8014016
	sub r2, r0, #1
	ldrh r1, [r5,#oBattleObject_HP]
	cmp r1, #1
	beq locret_8014016
	cmp r1, r2
	bgt loc_8014012
	sub r0, r1, #1
loc_8014012:
	bl object_subtractHP
locret_8014016:
	pop {pc}
	thumb_func_end sub_8013FF8

	thumb_func_start GetNaviStatsIndexGivenCurPETNavi
// (int idx) -> bool8
GetNaviStatsIndexGivenCurPETNavi:
    // return CurPETNaviToNaviStatsIndexTable[a1]
	// maps Megaman to use index 0, and all other navis
	// to use index 1
	ldr r1, =CurPETNaviToNaviStatsIndexTable
	ldrb r0, [r1,r0]
	mov pc, lr
	thumb_func_end GetNaviStatsIndexGivenCurPETNavi

	thumb_func_start GetNaviStatsAddrGivenCurPETNavi
// (int a1) -> void*
GetNaviStatsAddrGivenCurPETNavi:
	push {lr}
	// return &Toolkit->S20047CC_Ptrs[100*GetNaviStatsIndexGivenCurPETNavi(a1)]
	bl GetNaviStatsIndexGivenCurPETNavi // (int idx) -> bool8
	mov r1, #0x64 
	mul r0, r1
	mov r1, r10
	ldr r1, [r1,#oToolkit_NaviStatsPtr]
	add r0, r0, r1
	pop {pc}
	// 8014030
	.pool
	.balign 4, 0
CurPETNaviToNaviStatsIndexTable: .byte 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	thumb_func_end GetNaviStatsAddrGivenCurPETNavi

	thumb_func_start sub_8014040
sub_8014040:
	push {r4,r5,lr}
	bl battle_findPlayer
	mov r5, r0
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	bne locret_801407E
	mov r1, #0x36 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	bne locret_801407E
	mov r1, #0x3e 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	add r0, #9
	mov r1, #0xa
	svc 6
	bl object_addHP
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl spawn_t1_0x0_EffectObject
	mov r0, #SOUND_UNK_8A
	bl PlaySoundEffect
locret_801407E:
	pop {r4,r5,pc}
	thumb_func_end sub_8014040

	thumb_local_start
sub_8014080:
	push {lr}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_80140EC
	mov r0, #1
	lsl r0, r0, #0x11
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x23 
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r0, #0x20 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80107C0
	mov r1, #1
	mov r2, #2
	bl object_updateCollisionData
	mov r1, #0x1b
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r0, #1
	lsl r0, r0, #0x12
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x1d
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r0, #0x10
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x1c
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #7
	mov r2, #0xff
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_80140EC
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0xff
	strb r1, [r0,#oAIData_Unk_08]
locret_80140EC:
	pop {pc}
	thumb_func_end sub_8014080

	thumb_local_start
sub_80140EE:
	push {lr}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_801414E
	mov r0, #1
	lsl r0, r0, #0x11
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x23 
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r0, #0x20 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80107C0
	mov r1, #1
	mov r2, #2
	bl object_updateCollisionData
	mov r1, #0x1b
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r0, #0x10
	bl object_clearFlag // (int bitfield) -> void
	mov r1, #0x1c
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #7
	mov r2, #0xff
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_801414A
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0xff
	strb r1, [r0,#oAIData_Unk_08]
loc_801414A:
	bl sub_801469C
locret_801414E:
	pop {pc}
	thumb_func_end sub_80140EE

	thumb_func_start sub_8014150
sub_8014150:
	push {r4,lr}
	mov r4, #2
	bl GetCurPETNavi // () -> u8
	mov r1, #0x38 
	bl GetCurPETNaviStatsByte // (int a1, int a2) -> u8
	tst r0, r0
	bne loc_8014174
	mov r4, #1
	bl GetCurPETNavi // () -> u8
	mov r1, #0x37 
	bl GetCurPETNaviStatsByte // (int a1, int a2) -> u8
	tst r0, r0
	bne loc_8014174
	mov r4, #0
loc_8014174:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_8014150

	thumb_func_start sub_8014178
sub_8014178:
	push {r4,lr}
	mov r0, #0
	mov r1, #8
	bl GetBattleNaviStatsByte
	mov r4, r0
	mov r0, #1
	mov r1, #8
	bl GetBattleNaviStatsByte
	mov r1, #3
	mul r0, r1
	add r0, r0, r4
	ldr r4, off_801419C // =byte_80141A0 
	ldrb r0, [r4,r0]
	bl sub_801DF8C
	pop {r4,pc}
	.balign 4, 0
off_801419C: .word byte_80141A0
byte_80141A0: .byte 0x20, 0x40, 0x10, 0x40, 0x40, 0x20, 0x10, 0x20, 0x10
	.byte 0x0, 0x0, 0x0
	thumb_func_end sub_8014178

	thumb_func_start SetBeastOutCounterTo3
SetBeastOutCounterTo3:
	push {lr}
	bl GetCurPETNavi // () -> u8
	mov r1, #oNaviStats_BeastOutCounter
	mov r2, #3
	bl SetCurPETNaviStatsByte // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0
off_80141BC: .word 0x12C
off_80141C0: .word 0x258
off_80141C4: .word 0x104
	thumb_func_end SetBeastOutCounterTo3

	thumb_local_start
sub_80141C8:
	push {lr}
	mov r1, #0x42 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	strh r0, [r5,#oBattleObject_HP]
	strh r0, [r5,#oBattleObject_MaxHP]
	bl GetBattleEffects // () -> int
	mov r1, #4
	tst r0, r1
	bne loc_80141E6
	mov r1, #0x40 
	bl GetBattleNaviStatsHword_AllianceFromBattleObject
	strh r0, [r5,#oBattleObject_HP]
loc_80141E6:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	bne locret_80141F2
	bl sub_801E0BC
locret_80141F2:
	pop {pc}
	thumb_func_end sub_80141C8

	thumb_local_start
sub_80141F4:
	push {lr}
	bl GetBattlePanelColumnPattern
	cmp r0, #0x38 // default pattern
	beq locret_8014214
	cmp r0, #0x30 // disadvantaged
	beq locret_8014214
	cmp r0, #0x3c // advantaged
	beq locret_8014214
	bl GetBattleMode
	cmp r0, #BATTLE_MODE_DUSTMAN_MINI_GAME
	beq locret_8014214
	ldr r0, dword_80142D8 // =0x400 
	bl SetAIDataUnk0x48Flag
locret_8014214:
	pop {pc}
	thumb_func_end sub_80141F4

	thumb_func_start sub_8014216
sub_8014216:
	push {lr}
	mov r0, #0x20 
	bl ClearAIDataUnk0x48Flag
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	add r0, #0x26 
	mov r1, #0xc
	bl ZeroFillByHalfword
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8014256
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	bne loc_8014256
	push {r5}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	mov r5, r0
	beq loc_8014254
	bl sub_801DC36
loc_8014254:
	pop {r5}
loc_8014256:
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	lsl r0, r0, #2
	ldr r1, off_8014268 // =off_801426C 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0
off_8014268: .word off_801426C
off_801426C: .word sub_801429C+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	.word nullsub_47+1
	thumb_func_end sub_8014216

	thumb_local_start
sub_801429C:
	push {lr}
	bl sub_80144CA
	pop {pc}
	thumb_func_end sub_801429C

	thumb_local_start
sub_80142A4:
	push {lr}
	mov r0, #0x20 
	bl SetAIDataUnk0x48Flag
	pop {pc}
	thumb_func_end sub_80142A4

	thumb_local_start
nullsub_47:
	mov pc, lr
	thumb_func_end nullsub_47

	thumb_local_start
sub_80142B0:
	push {lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_80142C0
	mov r0, #0xa
	strh r0, [r5,#oBattleObject_Damage]
locret_80142C0:
	pop {pc}
	thumb_func_end sub_80142B0

	thumb_func_start sub_80142C2
sub_80142C2:
	push {lr}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_80142D4
	mov r0, #0xa
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_SelfDamage]
locret_80142D4:
	pop {pc}
	.balign 4, 0
dword_80142D8: .word 0x400
	thumb_func_end sub_80142C2

	thumb_local_start
sub_80142DC:
	push {r4,lr}
	bl GetBattleMode
	cmp r0, #1
	beq locret_8014324
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_8014324
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_8014324
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x15
	tst r0, r1
	bne locret_8014324
	bl sub_801442C
	cmp r0, #0x78 
	bge loc_801431C
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	add r0, #0x80
	ldrh r0, [r0]
	lsr r0, r0, #1
	cmp r0, #0x96
	bge loc_801431C
	b locret_8014324
loc_801431C:
	mov r0, #1
	lsl r0, r0, #9
	bl object_setFlag2
locret_8014324:
	pop {r4,pc}
	thumb_func_end sub_80142DC

	thumb_local_start
sub_8014326:
	push {r4,lr}
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne locret_80143A4
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r4,#oAIData_AIIndex]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #5
	beq loc_8014394
	cmp r0, #1
	beq loc_8014394
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x15
	tst r0, r1
	bne loc_801437A
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #9
	tst r0, r1
	beq locret_80143A4
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #0x15
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0x96
	lsl r0, r0, #2
	strh r0, [r4,#oAIData_Anger]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	b locret_80143A4
loc_801437A:
	mov r0, #1
	lsl r0, r0, #9
	bl object_clearFlag2
	ldrh r0, [r4,#oAIData_Anger]
	tst r0, r0
	beq loc_801438E
	sub r0, #1
	strh r0, [r4,#oAIData_Anger]
	bgt locret_80143A4
loc_801438E:
	bl sub_80143A6
	b locret_80143A4
loc_8014394:
	mov r0, #1
	lsl r0, r0, #9
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #0x15
	bl object_clearFlag // (int bitfield) -> void
locret_80143A4:
	pop {r4,pc}
	thumb_func_end sub_8014326

	thumb_func_start sub_80143A6
sub_80143A6:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r1, #0x80
	strb r1, [r0,#0xe]
	b loc_80143B6

	thumb_func_start sub_80143B4
sub_80143B4:
	push {lr}
loc_80143B6:
	mov r0, #1
	lsl r0, r0, #0x15
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, off_80144B4 // =0x200 
	bl object_clearFlag2
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	strh r0, [r1,#oAIData_Anger]
	str r0, [r1,#oAIData_Unk_4c]
	pop {pc}
	thumb_func_end sub_80143A6
	thumb_func_end sub_80143B4

	thumb_local_start
sub_80143CE:
	push {lr}
	bl sub_801445C
	bne locret_80143E2
	bl sub_8014490
	bne locret_80143E2
	ldr r0, off_80144B4 // =0x200 
	bl object_setFlag2
locret_80143E2:
	pop {pc}
	thumb_func_end sub_80143CE

	thumb_local_start
sub_80143E4:
	push {lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r0,#oAIData_Anger]
	tst r0, r0
	beq locret_80143F4
	ldr r0, dword_80143F8 // =0xf 
	bl sprite_setColorShader
locret_80143F4:
	pop {pc}
	.balign 4, 0
dword_80143F8: .word 0xF
	thumb_func_end sub_80143E4

	thumb_local_start
sub_80143FC:
	push {lr}
	bl battle_isTimeStop
	bne locret_801441E
	bl battle_isPaused
	bne locret_801441E
	bl object_getFlag // () -> int
	ldr r1, off_8014420 // =0xc00 
	tst r0, r1
	beq loc_801441A
	bl sub_8014432
	b locret_801441E
loc_801441A:
	bl sub_8014424
locret_801441E:
	pop {pc}
	.balign 4, 0
off_8014420: .word 0xC00
	thumb_func_end sub_80143FC

	thumb_local_start
sub_8014424:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0
	str r1, [r0,#oAIData_Unk_4c]
	mov pc, lr
	thumb_func_end sub_8014424

	thumb_local_start
sub_801442C:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_4c]
	mov pc, lr
	thumb_func_end sub_801442C

	thumb_local_start
sub_8014432:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r1, [r0,#oAIData_Unk_4c]
	add r1, #1
	str r1, [r0,#oAIData_Unk_4c]
	mov pc, lr
	thumb_func_end sub_8014432

	thumb_func_start sub_801443C
sub_801443C:
	push {lr}
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r0, dword_80144B8 // =0xffff 
	strh r0, [r3,#oAIData_Unk_32]
	pop {pc}
	thumb_func_end sub_801443C

	thumb_func_start sub_8014446
sub_8014446:
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	strh r0, [r3,#oAIData_Unk_32]
	mov pc, lr
	thumb_func_end sub_8014446

	thumb_local_start
sub_801444E:
	push {lr}
	bl battle_findPlayer
	ldr r3, [r0,#0x58]
	mov r0, #0
	strh r0, [r3,#0x32]
	pop {pc}
	thumb_func_end sub_801444E

	thumb_local_start
sub_801445C:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r0,#oAIData_Unk_32]
	cmp r0, #0
	mov pc, lr
	thumb_func_end sub_801445C

	thumb_local_start
nullsub_6:
	mov pc, lr
	thumb_func_end nullsub_6

	thumb_local_start
sub_8014466:
	push {lr}
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldr r0, off_80144BC // =0x3c0 
	strh r0, [r3,#oAIData_Unk_36]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0
	bl sub_8015BEC
	pop {pc}
	thumb_func_end sub_8014466

	thumb_local_start
sub_8014478:
	push {lr}
	ldr r3, [r5,#0x58]
	mov r0, #0
	strh r0, [r3,#0x36]
	pop {pc}
	thumb_func_end sub_8014478

	thumb_local_start
sub_8014482:
	push {lr}
	bl battle_findPlayer
	ldr r3, [r0,#0x58]
	mov r0, #0
	strh r0, [r3,#0x36]
	pop {pc}
	thumb_func_end sub_8014482

	thumb_local_start
sub_8014490:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r0,#oAIData_Unk_36]
	cmp r0, #0
	mov pc, lr
	thumb_func_end sub_8014490

	thumb_local_start
sub_8014498:
	push {lr}
	bl battle_isBattleOver
	tst r0, r0
	bne locret_80144B2
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r3,#oAIData_Unk_36]
	cmp r0, #0
	beq locret_80144B2
	ldrh r1, [r5,#oBattleObject_HP]
	sub r1, #1
	beq locret_80144B2
	strh r1, [r5,#oBattleObject_HP]
locret_80144B2:
	pop {pc}
	.balign 4, 0
off_80144B4: .word 0x200
dword_80144B8: .word 0xFFFF
off_80144BC: .word 0x3C0
	thumb_func_end sub_8014498

	thumb_func_start sub_80144C0
sub_80144C0:
	push {r4,r7,lr}
	mov r7, #0
	bl sub_801390C
	b loc_80144CE

	thumb_local_start
sub_80144CA:
	push {r4,r7,lr}
	mov r7, #1
loc_80144CE:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	add r0, #0x26 
	mov r1, #0xc
	bl ZeroFillByHalfword
	mov r0, #0x20 
	bl ClearAIDataUnk0x48Flag
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_801450C
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	bne loc_801450C
	push {r5}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	mov r5, r0
	beq loc_801450A
	bl sub_801DC36
loc_801450A:
	pop {r5}
loc_801450C:
	bl sub_80107C0
	mov r0, r3
	bl sub_8019F86
	mov r0, #1
	bl object_setCollisionRegion
	bl sub_8012EA8
	tst r7, r7
	bne loc_8014528
	bl sub_800FEEC
loc_8014528:
	bl sub_8014536
	bl sub_801086C
	bl sub_80142C2
	pop {r4,r7,pc}
	thumb_func_end sub_80144C0
	thumb_func_end sub_80144CA

	thumb_local_start
sub_8014536:
	push {r6,lr}
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	lsl r0, r0, #2
	ldr r1, off_801454C // =JumpTable8014550
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {r6,pc}
	.balign 4, 0
off_801454C: .word JumpTable8014550
JumpTable8014550: .word nullsub_51+1
	.word nullsub_50+1
	.word nullsub_52+1
	.word nullsub_53+1
	.word nullsub_54+1
	.word nullsub_55+1
	.word nullsub_56+1
	.word sub_80145C2+1
	.word SetObjectAirshoeFlag+1
	.word SetObjectSuperArmorFlag+1
	.word nullsub_4+1
	.word sub_80145EC+1
	.word sub_8014606+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014650+1
	.word sub_8014606+1
	.word sub_801462A+1
	.word sub_8014606+1
	.word sub_8014640+1
	.word sub_8014606+1
	.word sub_8014650+1
	.word sub_8014674+1
	thumb_func_end sub_8014536

	thumb_local_start
nullsub_51:
	mov pc, lr
	thumb_func_end nullsub_51

	thumb_local_start
nullsub_52:
	mov pc, lr
	thumb_func_end nullsub_52

	thumb_local_start
nullsub_50:
	mov pc, lr
	thumb_func_end nullsub_50

	thumb_local_start
nullsub_53:
	mov pc, lr
	thumb_func_end nullsub_53

	thumb_local_start
nullsub_54:
	mov pc, lr
	thumb_func_end nullsub_54

	thumb_local_start
nullsub_55:
	mov pc, lr
	thumb_func_end nullsub_55

	thumb_local_start
nullsub_56:
	mov pc, lr
	thumb_func_end nullsub_56

	thumb_local_start
sub_80145C2:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_07]
	cmp r0, #1
	beq locret_80145D2
	bl sub_801A264
locret_80145D2:
	pop {pc}
	thumb_func_end sub_80145C2

	thumb_local_start
SetObjectAirshoeFlag:
	push {lr}
	mov r0, #OBJECT_FLAGS_AIRSHOE
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end SetObjectAirshoeFlag

	thumb_local_start
// (BattleObject *obj@R5) -> void
SetObjectSuperArmorFlag:
	push {lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end SetObjectSuperArmorFlag

	thumb_local_start
nullsub_4:
	mov pc, lr
	thumb_func_end nullsub_4

	thumb_local_start
sub_80145EC:
	push {r7,lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	mov r7, #0x40 
	add r7, r7, r6
	ldr r0, [r7]
	cmp r0, #0
	bne locret_8014604
	bl sub_80E1620
locret_8014604:
	pop {r7,pc}
	thumb_func_end sub_80145EC

	thumb_local_start
sub_8014606:
	push {r7,lr}
	mov r0, #0x30 
	bl object_setFlag1 // (int a1) -> void
	bl sub_80107C0
	mov r1, #0x10
	mov r2, #2
	bl object_updateCollisionData
	mov r7, #0x40 
	add r7, r7, r6
	ldr r0, [r7]
	cmp r0, #0
	bne locret_8014628
	bl sub_80E1620
locret_8014628:
	pop {r7,pc}
	thumb_func_end sub_8014606

	thumb_local_start
sub_801462A:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_07]
	cmp r0, #1
	beq loc_801463A
	bl sub_801A264
loc_801463A:
	bl sub_8014606
	pop {pc}
	thumb_func_end sub_801462A

	thumb_local_start
sub_8014640:
	push {lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	bl sub_8014606
	pop {pc}
	thumb_func_end sub_8014640

	thumb_local_start
sub_8014650:
	push {r7,lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	mov r7, #0x40 
	add r7, r7, r6
	ldr r0, [r7]
	cmp r0, #0
	bne loc_8014668
	bl sub_80E1620
loc_8014668:
	ldr r0, dword_80147D8 // =0xffff 
	bl object_setInvulnerableTime
	bl sub_802D310
	pop {r7,pc}
	thumb_func_end sub_8014650

	thumb_local_start
sub_8014674:
	push {r7,lr}
	ldr r0, dword_80147DC // =GameHeader
	bl object_setFlag1 // (int a1) -> void
	bl sub_80107C0
	mov r1, #0x10
	mov r2, #2
	bl object_updateCollisionData
	mov r7, #0x40 
	add r7, r7, r6
	ldr r0, [r7]
	cmp r0, #0
	bne loc_8014696
	bl sub_80E1620
loc_8014696:
	bl sub_802D310
	pop {r7,pc}
	thumb_func_end sub_8014674

	thumb_local_start
sub_801469C:
	push {r6,lr}
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	lsl r0, r0, #2
	ldr r1, off_80146B4 // =off_80146B8 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {r6,pc}
	.balign 4, 0
off_80146B4: .word off_80146B8
off_80146B8: .word nullsub_801471C
	.word nullsub_801471E
	.word nullsub_8014720
	.word nullsub_8014722
	.word nullsub_8014724
	.word nullsub_8014726
	.word nullsub_8014728
	.word sub_801472A+1
	.word sub_801473C+1
	.word sub_8014746+1
	.word nullsub_5+1
	.word sub_8014754+1
	.word sub_8014760+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014754+1
	.word sub_8014760+1
	.word sub_8014776+1
	.word sub_8014760+1
	.word sub_801478C+1
	.word sub_8014760+1
	.word sub_801479C+1
	.word sub_80147B2+1
	thumb_func_end sub_801469C

	thumb_local_start
nullsub_801471C:
	mov pc, lr
	thumb_func_end nullsub_801471C

	thumb_local_start
nullsub_801471E:
	mov pc, lr
	thumb_func_end nullsub_801471E

	thumb_local_start
nullsub_8014720:
	mov pc, lr
	thumb_func_end nullsub_8014720

	thumb_local_start
nullsub_8014722:
	mov pc, lr
	thumb_func_end nullsub_8014722

	thumb_local_start
nullsub_8014724:
	mov pc, lr
	thumb_func_end nullsub_8014724

	thumb_local_start
nullsub_8014726:
	mov pc, lr
	thumb_func_end nullsub_8014726

	thumb_local_start
nullsub_8014728:
	mov pc, lr
	thumb_func_end nullsub_8014728

	thumb_local_start
sub_801472A:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_07]
	cmp r0, #1
	beq locret_801473A
	bl sub_801A264
locret_801473A:
	pop {pc}
	thumb_func_end sub_801472A

	thumb_local_start
sub_801473C:
	push {lr}
	mov r0, #OBJECT_FLAGS_AIRSHOE
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end sub_801473C

	thumb_local_start
sub_8014746:
	push {lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end sub_8014746

	thumb_local_start
nullsub_5:
	mov pc, lr
	thumb_func_end nullsub_5

	thumb_local_start
sub_8014754:
	push {r7,lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	pop {r7,pc}
	thumb_func_end sub_8014754

	thumb_local_start
sub_8014760:
	push {lr}
	mov r0, #0x30 
	bl object_setFlag1 // (int a1) -> void
	bl sub_80107C0
	mov r1, #0x10
	mov r2, #2
	bl object_updateCollisionData
	pop {pc}
	thumb_func_end sub_8014760

	thumb_local_start
sub_8014776:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_07]
	cmp r0, #1
	beq loc_8014786
	bl sub_801A264
loc_8014786:
	bl sub_8014760
	pop {pc}
	thumb_func_end sub_8014776

	thumb_local_start
sub_801478C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	bl sub_8014760
	pop {pc}
	thumb_func_end sub_801478C

	thumb_local_start
sub_801479C:
	push {r7,lr}
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
	ldr r0, dword_80147D8 // =0xffff 
	bl object_setInvulnerableTime
	bl sub_802D310
	pop {r7,pc}
	thumb_func_end sub_801479C

	thumb_local_start
sub_80147B2:
	push {lr}
	mov r0, #0x30 
	bl object_setFlag1 // (int a1) -> void
	bl sub_80107C0
	mov r1, #0x10
	mov r2, #2
	bl object_updateCollisionData
	ldr r0, dword_80147E0 // =0x8000000
	bl object_setFlag1 // (int a1) -> void
	ldr r0, dword_80147D8 // =0xffff 
	bl object_setInvulnerableTime
	bl sub_802D310
	pop {pc}
	.balign 4, 0
dword_80147D8: .word 0xFFFF
dword_80147DC: .word 0x8000030
dword_80147E0: .word 0x8000000
	thumb_func_end sub_80147B2

	thumb_func_start sub_80147E4
// r0 - byte_203F558
// r1 - byte_203F658
sub_80147E4:
	push {r5-r7,lr}
	ldr r5, off_8014820 // =dword_20367F0 
	mov r6, r0
	mov r7, r1

	// r5 - dword_20367F0
	// r6 - byte_203F558
	// r7 - byte_203F658

	// CopyWords(byte_203F558, dword_20367F0+8, 0x10)
	mov r1, #8
	add r1, r1, r5
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void

	// CopyWords(byte_203F558, unk_203A980, 0x10)
	mov r0, r6
	ldr r1, off_8014824 // =unk_203A980 
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void

	// CopyWords(byte_203F658, dword_20367F0+0x18, 0x10)
	mov r0, r7
	mov r1, #0x18
	add r1, r1, r5
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void

	// CopyWords(byte_203F658, unk_203A990
	mov r0, r7
	ldr r1, off_8014828 // =unk_203A990 
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void

	mov r0, #0
	str r0, [r5]
	mov r0, #1
	strb r0, [r5,#0x4] // (byte_20367F4 - 0x20367f0)
	pop {r5-r7,pc}
	.balign 4, 0
off_8014820: .word dword_20367F0
off_8014824: .word unk_203A980
off_8014828: .word unk_203A990
	thumb_func_end sub_80147E4

	thumb_func_start sub_801482C
sub_801482C:
	ldr r1, off_8014838 // =dword_20367F0 
	mov r0, #0
	str r0, [r1]
	mov r0, #1
	strb r0, [r1,#0x4] // (byte_20367F4 - 0x20367f0)
	mov pc, lr
off_8014838: .word dword_20367F0
	thumb_func_end sub_801482C

	thumb_func_start sub_801483C
sub_801483C:
	push {r5-r7,lr}
	ldr r5, off_801485C // =dword_20367F0 
	mov r6, #8
	add r6, r6, r5
	mov r7, #0x18
	add r7, r7, r5
	ldr r1, off_8014858 // =off_8014860 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r5,#0x4] // (byte_20367F4 - 0x20367f0)
	pop {r5-r7,pc}
	.balign 4, 0
off_8014858: .word off_8014860
off_801485C: .word dword_20367F0
off_8014860: .word sub_801486C+1
	.word sub_80148CC+1
	.word sub_8014A00+1
	thumb_func_end sub_801483C

	thumb_local_start
sub_801486C:
	push {r4,lr}
	mov r4, #0
	ldrb r0, [r6,#4]
	cmp r0, #0xff
	beq loc_801487E
	ldr r0, [r6,#8]
	bl sub_802DCDE
	b loc_8014888
loc_801487E:
	ldrb r0, [r6]
	cmp r0, #0xff
	beq loc_8014888
	mov r4, #1
	b loc_8014898
loc_8014888:
	ldr r0, [r6,#8]
	bl sub_80159C6
	beq loc_8014898
	ldr r0, [r6,#8]
	bl sub_8015994
	b loc_8014898
loc_8014898:
	ldrb r0, [r7,#4]
	cmp r0, #0xff
	beq loc_80148A6
	ldr r0, [r7,#8]
	bl sub_802DCDE
	b loc_80148B0
loc_80148A6:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_80148B0
	mov r4, #1
	b loc_80148C0
loc_80148B0:
	ldr r0, [r7,#8]
	bl sub_80159C6
	beq loc_80148C0
	ldr r0, [r7,#8]
	bl sub_8015994
	b loc_80148C0
loc_80148C0:
	mov r0, #8
	tst r4, r4
	beq loc_80148C8
	mov r0, #4
loc_80148C8:
	str r0, [r5]
	pop {r4,pc}
	thumb_func_end sub_801486C

	thumb_local_start
sub_80148CC:
	push {lr}
	ldr r1, off_80148DC // =off_80148E0 
	ldrb r0, [r5,#1]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_80148DC: .word off_80148E0
off_80148E0: .word sub_80148EC+1
	.word activateCrossHappensHere_8014944+1
	.word sub_801498E+1
	thumb_func_end sub_80148CC

	thumb_local_start
sub_80148EC:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8014912
	bl GetBattleMode
	cmp r0, #1
	bne loc_8014900
	mov r0, #0x70 
	b loc_8014902
loc_8014900:
	mov r0, #0x44 
loc_8014902:
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	ldr r0, dword_8014940 // =0x4000 
	bl sub_801DACC
	mov r0, #4
	strb r0, [r5,#3]
loc_8014912:
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_801493E
	bl GetBattleMode
	cmp r0, #1
	bne loc_8014926
	mov r0, #0xa0
	b loc_8014932
loc_8014926:
	bl TestBattleFlag_0x40
	bne loc_8014930
	mov r0, #0x90
	b loc_8014932
loc_8014930:
	ldr r0, dword_80149EC // =0x20080 
loc_8014932:
	bl sub_801DACC
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_801493E:
	pop {pc}
	.balign 4, 0
dword_8014940: .word 0x4000
	thumb_func_end sub_80148EC

	thumb_local_start
activateCrossHappensHere_8014944:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_801496A
	ldrb r0, [r6]
	cmp r0, #0xff
	beq loc_8014958
	ldr r0, [r6,#8]
	bl sub_801596E
loc_8014958:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_8014964
	ldr r0, [r7,#8]
	bl sub_801596E
loc_8014964:
	mov r0, #4
	strb r0, [r5,#3]
	b locret_801498C
loc_801496A:
	ldr r0, [r6,#8]
	bl sub_801597C
	tst r0, r0
	bne locret_801498C
	ldr r0, [r7,#8]
	bl sub_801597C
	tst r0, r0
	bne locret_801498C
	mov r0, #0xff
	strb r0, [r6]
	strb r0, [r7]
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strh r0, [r5,#2]
locret_801498C:
	pop {pc}
	thumb_func_end activateCrossHappensHere_8014944

	thumb_local_start
sub_801498E:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_80149AE
	bl GetBattleMode
	cmp r0, #1
	bne loc_80149A2
	mov r0, #0x6c 
	b loc_80149A4
loc_80149A2:
	mov r0, #0x40 
loc_80149A4:
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#3]
loc_80149AE:
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_80149EA
	bl sub_800A97A
	push {r0}
	bl GetBattleMode
	cmp r0, #1
	pop {r0}
	bne loc_80149CA
	ldr r1, dword_80149F0 // =0x40a0 
	b loc_80149DA
loc_80149CA:
	push {r0}
	bl TestBattleFlag_0x40
	pop {r0}
	bne loc_80149D8
	ldr r1, dword_80149F4 // =0x4090 
	b loc_80149DA
loc_80149D8:
	ldr r1, dword_80149F8 // =0x24080 
loc_80149DA:
	tst r0, r0
	beq loc_80149E0
	ldr r1, dword_80149FC // =0x4080 
loc_80149E0:
	mov r0, r1
	bl sub_801DA48
	mov r0, #8
	str r0, [r5]
locret_80149EA:
	pop {pc}
	.balign 4, 0
dword_80149EC: .word 0x20080
dword_80149F0: .word 0x40A0
dword_80149F4: .word 0x4090
dword_80149F8: .word 0x24080
dword_80149FC: .word 0x4080
	thumb_func_end sub_801498E

	thumb_local_start
sub_8014A00:
	push {lr}
	ldr r0, [r6,#8]
	bl sub_80159A2
	tst r0, r0
	bne locret_8014A36
	ldr r0, [r7,#8]
	bl sub_80159A2
	tst r0, r0
	bne locret_8014A36
	ldr r0, [r6,#8]
	bl sub_802DCEC
	tst r0, r0
	bne locret_8014A36
	mov r0, #0xff
	strb r0, [r6,#4]
	ldr r0, [r7,#8]
	bl sub_802DCEC
	tst r0, r0
	bne locret_8014A36
	mov r0, #0xff
	strb r0, [r7,#4]
	mov r0, #0
	strb r0, [r5,#4]
locret_8014A36:
	pop {pc}
	thumb_func_end sub_8014A00

	thumb_local_start
sub_8014A38:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	cmp r0, #1
	blt loc_8014AA8
	cmp r0, #0x18
	bgt loc_8014AA8
	cmp r0, #0x17
	blt loc_8014A58
	ldr r1, off_8014AEC // =off_8014AF0 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	b loc_8014A98
loc_8014A58:
	cmp r0, #0xd
	blt loc_8014A72
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xa
	bgt loc_8014A8E
	ldr r1, off_8014AD8 // =off_8014ADC 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	b loc_8014A98
loc_8014A72:
	cmp r0, #0xb
	blt loc_8014A82
	ldr r1, off_8014AC4 // =off_8014AC8 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	b loc_8014A98
loc_8014A82:
	ldr r1, off_8014AB0 // =off_8014AB4 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	b loc_8014A98
loc_8014A8E:
	ldr r1, off_8014B00 // =off_8014B04 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_8014A98:
	bl GetAIDataUnk0x48Flag
	ldr r1, dword_8014B14 // =0x80000 
	tst r0, r1
	bne locret_8014AA6
	bl sub_801BCD0
locret_8014AA6:
	pop {pc}
loc_8014AA8:
	mov r0, #0x80
	bl ClearAIDataUnk0x48Flag
	pop {pc}
	.balign 4, 0
off_8014AB0: .word off_8014AB4
off_8014AB4: .word sub_8014B18+1
	.word sub_8014B98+1
	.word sub_8014BEE+1
	.word sub_8014CC0+1
off_8014AC4: .word off_8014AC8
off_8014AC8: .word sub_8014D08+1
	.word sub_8014D70+1
	.word sub_8014E08+1
	.word sub_8014F04+1
off_8014AD8: .word off_8014ADC
off_8014ADC: .word sub_8014F40+1
	.word sub_8014FA8+1
	.word sub_8015040+1
	.word sub_8015128+1
off_8014AEC: .word off_8014AF0
off_8014AF0: .word sub_801516C+1
	.word sub_80151D4+1
	.word sub_80152C8+1
	.word sub_80153B0+1
off_8014B00: .word off_8014B04
off_8014B04: .word sub_80153EC+1
	.word sub_801544C+1
	.word sub_80154C8+1
	.word sub_80155CC+1
dword_8014B14: .word 0x80000
	thumb_func_end sub_8014A38

	thumb_local_start
sub_8014B18:
	push {r4,lr}
	ldr r0, dword_8014B94 // =0x80000 
	bl SetAIDataUnk0x48Flag
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl object_clearInvulnerableTime
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_5c]
	bl sub_80C4C3A
	bl sub_80158FA
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #9
	bne loc_8014B8A
	ldrb r0, [r5,#oBattleObject_CurAnim]
	cmp r0, #0x16
	bne loc_8014B8A
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldr r0, dword_8014B94 // =0x80000 
	bl ClearAIDataUnk0x48Flag
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8014B8A
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_8014B8A:
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	.word 0x80111C40
	.balign 4, 0
dword_8014B94: .word 0x80000
	thumb_func_end sub_8014B18

	thumb_local_start
sub_8014B98:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8014BCA
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bmi loc_8014BAA
	b locret_8014BEC
loc_8014BAA:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	mov r4, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r3, #0x14
	bl sub_80BC844
	mov r0, #0x28 
	add r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8014BCA:
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	add r0, #1
	cmp r0, #6
	bgt loc_8014BD8
	str r0, [r7,#oAIAttackVars_Unk_30]
	bl sprite_forceWhitePalette
loc_8014BD8:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8014BEC
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_30]
locret_8014BEC:
	pop {r4,r6,pc}
	thumb_func_end sub_8014B98

	thumb_local_start
sub_8014BEE:
	push {r4,lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8014C9E
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8011384
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	bl object_setAnimation
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sprite_forceWhitePalette
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	mov r1, #0x2c 
	mov r2, r0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	blt loc_8014C72
	cmp r0, #0x18
	bgt loc_8014C72
	bl sub_8015B22
loc_8014C72:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	push {r0}
	bl sub_8011268
	pop {r0}
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	mov r0, #0x8d
	bl PlaySoundEffect
	mov r0, #SOUND_LOG_IN_77
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8014C9E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8014CBE
	bl sub_80144C0
	bl sub_80143A6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	bl object_clearInvulnerableTime
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8014CBE:
	pop {r4,pc}
	thumb_func_end sub_8014BEE

	thumb_local_start
sub_8014CC0:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8014CD0
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8014CD0:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8014CFE
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0xb
	mov r2, #1
	bl sub_800AB2E
	mov r0, #0x80
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x20 
	bl battle_clearFlags
	ldr r0, dword_8014D00 // =0x80000 
	bl ClearAIDataUnk0x48Flag
	ldr r0, dword_8014D04 // =0x80008600 
	bl ClearAIData_Unk_44_Flag
	bl object_exitAttackState
locret_8014CFE:
	pop {r4,pc}
	.balign 4, 0
dword_8014D00: .word 0x80000
dword_8014D04: .word 0x80008600
	thumb_func_end sub_8014CC0

	thumb_local_start
sub_8014D08:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl object_clearInvulnerableTime
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_5c]
	bl sub_80C4C3A
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	bl sub_80158FA
	mov r0, #0x11
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8014D5A
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_8014D5A:
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	mov r1, #5
	bl sprite_decompress
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	.word 0x80111C40
	thumb_func_end sub_8014D08

	thumb_local_start
sub_8014D70:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8014DE6
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bmi loc_8014D82
	b locret_8014DF2
loc_8014D82:
	ldr r0, dword_8014E04 // =0x80000 
	bl SetAIDataUnk0x48Flag
	mov r0, #0xf7
	bl PlaySoundEffect
	mov r4, #0x2e 
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #8
	orr r4, r0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	bl spawn_t1_0x0_EffectObject
	cmp r0, #0
	beq loc_8014DDE
	mov r1, #0x36 
	strh r1, [r0,#oBattleObject_Timer]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	ldr r0, [r5,#oBattleObject_Y]
	ldr r1, dword_8014DF8 // =0xc00000 
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	mov r2, #1
	bl sub_800AB2E
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	ldr r1, off_8014DFC // =0x1cc 
	cmp r0, #0xb
	beq loc_8014DD0
	ldr r1, off_8014E00 // =0x1cd 
loc_8014DD0:
	mov r0, r1
	bl PlaySoundEffect
	mov r0, #2
	mov r1, #0x3c 
	bl sub_80302B6
loc_8014DDE:
	mov r0, #0x36 
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8014DE6:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8014DF2
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8014DF2:
	pop {r4,r6,pc}
	.word 0x200000
	.balign 4, 0
dword_8014DF8: .word 0xC00000
off_8014DFC: .word 0x1CC
off_8014E00: .word 0x1CD
dword_8014E04: .word 0x80000
	thumb_func_end sub_8014D70

	thumb_local_start
sub_8014E08:
	push {r4,lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8014EB8
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8011384
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	bl object_setAnimation
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sprite_forceWhitePalette
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	mov r1, #0x2c 
	mov r2, r0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r4, dword_8014F00 // =0x30e00 
	bl sub_80E11E0
	mov r0, #1
	add r0, #0xff
	bl PlaySoundEffect
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	blt loc_8014E92
	cmp r0, #0x18
	bgt loc_8014E92
	bl sub_8015B22
loc_8014E92:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	bl sub_8011268
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq loc_8014EA8
	mov r1, #0
	strb r1, [r0,#oBattleObject_Param3]
loc_8014EA8:
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8014EB8:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8014EFE
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
	mov r1, #0
	cmp r0, #2
	bne loc_8014ECE
	mov r1, #1
loc_8014ECE:
	push {r1}
	bl sub_80144C0
	bl sub_80143A6
	pop {r0}
	cmp r0, #0
	beq loc_8014EE6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0xff
	bl sub_8015BEC
loc_8014EE6:
	bl object_clearInvulnerableTime
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8014EFA
	push {r5}
	mov r5, r0
	bl sprite_clearFinalPalette
	pop {r5}
loc_8014EFA:
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8014EFE:
	pop {r4,pc}
	.balign 4, 0
dword_8014F00: .word 0x30E00
	thumb_func_end sub_8014E08

	thumb_local_start
sub_8014F04:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8014F14
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8014F14:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8014F38
	mov r0, #0x80
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x20 
	bl battle_clearFlags
	ldr r0, dword_8014F3C // =0x80000 
	bl ClearAIDataUnk0x48Flag
	ldr r0, dword_80152B4 // =0x80008600 
	bl ClearAIData_Unk_44_Flag
	bl object_exitAttackState
locret_8014F38:
	pop {r4,pc}
	.balign 4, 0
dword_8014F3C: .word 0x80000
	thumb_func_end sub_8014F04

	thumb_local_start
sub_8014F40:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl object_clearInvulnerableTime
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_5c]
	bl sub_80C4C3A
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	bl sub_80158FA
	mov r0, #0x11
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8014F92
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_8014F92:
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	mov r1, #5
	bl sprite_decompress
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	.word 0x80111C40
	thumb_func_end sub_8014F40

	thumb_local_start
sub_8014FA8:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_801501E
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bmi loc_8014FBA
	b locret_801502A
loc_8014FBA:
	ldr r0, dword_801503C // =0x80000 
	bl SetAIDataUnk0x48Flag
	mov r0, #0xf7
	bl PlaySoundEffect
	mov r4, #0x2e 
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #8
	orr r4, r0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	bl spawn_t1_0x0_EffectObject
	cmp r0, #0
	beq loc_8015016
	mov r1, #0x36 
	strh r1, [r0,#oBattleObject_Timer]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	ldr r0, [r5,#oBattleObject_Y]
	ldr r1, dword_8015030 // =0xc00000 
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	mov r2, #1
	bl sub_800AB2E
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	ldr r1, off_8015034 // =0x1cc 
	cmp r0, #0x12
	blt loc_8015008
	ldr r1, off_8015038 // =0x1cd 
loc_8015008:
	mov r0, r1
	bl PlaySoundEffect
	mov r0, #2
	mov r1, #0x3c 
	bl sub_80302B6
loc_8015016:
	mov r0, #0x36 
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_801501E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_801502A
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_801502A:
	pop {r4,r6,pc}
	.word 0x200000
	.balign 4, 0
dword_8015030: .word 0xC00000
off_8015034: .word 0x1CC
off_8015038: .word 0x1CD
dword_801503C: .word 0x80000
	thumb_func_end sub_8014FA8

	thumb_local_start
sub_8015040:
	push {r4,lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8015100
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8011384
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	bl object_setAnimation
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sprite_forceWhitePalette
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	mov r1, #0x2c 
	mov r2, r0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r4, dword_8015124 // =0x30e00 
	bl sub_80E11E0
	mov r0, #1
	add r0, #0xff
	bl PlaySoundEffect
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	blt loc_80150CA
	cmp r0, #0x18
	bgt loc_80150CA
	bl sub_8015B22
loc_80150CA:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	push {r0}
	bl sub_8011268
	pop {r0}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80150F0
	mov r1, #0
	strb r1, [r0,#oBattleObject_CurAnim]
	mov r1, #0
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_80150F0:
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8015100:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8015120
	bl sub_80144C0
	bl sub_80143A6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	bl object_clearInvulnerableTime
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8015120:
	pop {r4,pc}
	.balign 4, 0
dword_8015124: .word 0x30E00
	thumb_func_end sub_8015040

	thumb_local_start
sub_8015128:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8015138
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8015138:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8015166
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0xb
	mov r2, #1
	bl sub_800AB2E
	mov r0, #0x80
	bl ClearAIDataUnk0x48Flag
	ldr r0, dword_8015168 // =0x80000 
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x20 
	bl battle_clearFlags
	ldr r0, dword_80152B4 // =0x80008600 
	bl ClearAIData_Unk_44_Flag
	bl object_exitAttackState
locret_8015166:
	pop {r4,pc}
	.balign 4, 0
dword_8015168: .word 0x80000
	thumb_func_end sub_8015128

	thumb_local_start
sub_801516C:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl object_clearInvulnerableTime
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_5c]
	bl sub_80C4C3A
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	bl sub_80158FA
	mov r0, #0x11
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80151BE
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_80151BE:
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	mov r1, #5
	bl sprite_decompress
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	.word 0x80111C40
	thumb_func_end sub_801516C

	thumb_local_start
sub_80151D4:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8015288
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bmi loc_80151E6
	b locret_80152A6
loc_80151E6:
	ldr r0, dword_80152B0 // =0x80000 
	bl SetAIDataUnk0x48Flag
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	sub r0, #0x17
	lsl r6, r0, #0x11
	mov r4, #0x3f 
	add r4, r4, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #8
	orr r4, r0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	ldr r0, dword_80152B8 // =0x200000 
	add r3, r3, r0
	bl spawn_t1_0x0_EffectObject
	cmp r0, #0
	beq loc_801527C
	mov r1, #0x36 
	strh r1, [r0,#oBattleObject_Timer]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	mov r0, #0x9b
	add r0, #0xff
	bl PlaySoundEffect
	mov r4, #0x3e 
	orr r4, r6
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #8
	orr r4, r0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	ldr r0, dword_80152B8 // =0x200000 
	add r3, r3, r0
	bl spawn_t1_0x0_EffectObject
	cmp r0, #0
	beq loc_801527C
	mov r1, #0x45 
	strh r1, [r0,#oBattleObject_Timer]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	ldr r0, [r5,#oBattleObject_Y]
	ldr r1, dword_80152BC // =0xc00000 
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	mov r2, #1
	bl sub_800AB2E
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	ldr r1, off_80152C0 // =0x1cc 
	cmp r0, #0x17
	beq loc_801526E
	ldr r1, off_80152C4 // =0x1cd 
loc_801526E:
	mov r0, r1
	bl PlaySoundEffect
	mov r0, #2
	mov r1, #0x4b 
	bl sub_80302B6
loc_801527C:
	mov r0, #0x36 
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sub_80EA438
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8015288:
	ldr r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0x35 
	beq loc_8015292
	cmp r0, #0x25 
	bne loc_801529A
loc_8015292:
	mov r0, #0x9b
	add r0, #0xff
	bl PlaySoundEffect
loc_801529A:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_80152A6
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_80152A6:
	pop {r4,r6,pc}
	.word 0x200000, 0xC00000
	.balign 4, 0
dword_80152B0: .word 0x80000
dword_80152B4: .word 0x80008600
dword_80152B8: .word 0x200000
dword_80152BC: .word 0xC00000
off_80152C0: .word 0x1CC
off_80152C4: .word 0x1CD
	thumb_func_end sub_80151D4

	thumb_local_start
sub_80152C8:
	push {r4,lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_801537C
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8011384
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	bl object_setAnimation
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sub_801A264
	bl sprite_forceWhitePalette
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	mov r1, #0x2c 
	mov r2, r0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r4, dword_80153AC // =0x30e00 
	bl sub_80E11E0
	mov r0, #1
	add r0, #0xff
	bl PlaySoundEffect
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	blt loc_8015356
	cmp r0, #0x18
	bgt loc_8015356
	bl sub_8015B22
loc_8015356:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	bl sub_8011268
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq loc_801536C
	mov r1, #0
	strb r1, [r0,#oBattleObject_Param3]
loc_801536C:
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_801537C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_80153A8
	bl sub_80144C0
	bl sub_80143A6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80153A4
	push {r5}
	mov r5, r0
	bl sprite_clearFinalPalette
	pop {r5}
loc_80153A4:
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_80153A8:
	pop {r4,pc}
	.balign 4, 0
dword_80153AC: .word 0x30E00
	thumb_func_end sub_80152C8

	thumb_local_start
sub_80153B0:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_80153C0
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_80153C0:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_80153E4
	mov r0, #0x80
	bl ClearAIDataUnk0x48Flag
	ldr r0, dword_80153E8 // =0x80000 
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x20 
	bl battle_clearFlags
	ldr r0, dword_8015610 // =0x80008600 
	bl ClearAIData_Unk_44_Flag
	bl object_exitAttackState
locret_80153E4:
	pop {r4,pc}
	.balign 4, 0
dword_80153E8: .word 0x80000
	thumb_func_end sub_80153B0

	thumb_local_start
sub_80153EC:
	push {r4,lr}
	ldr r0, dword_8015448 // =0x80000 
	bl SetAIDataUnk0x48Flag
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl object_clearInvulnerableTime
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	bl sub_8012EA8
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_5c]
	bl sub_80C4C3A
	bl sub_80158FA
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8015438
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_8015438:
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,pc}
	.balign 4, 0
	.word 0x80111C40
dword_8015448: .word 0x80000
	thumb_func_end sub_80153EC

	thumb_local_start
sub_801544C:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8015480
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bmi loc_801545E
	b locret_80154C6
loc_801545E:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	sub r0, #0xc
	mov r4, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r3, #0x14
	bl sub_80BC844
	mov r0, #0x28 
	add r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8015480:
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	add r0, #1
	cmp r0, #6
	bgt loc_801549E
	str r0, [r7,#oAIAttackVars_Unk_30]
	bl sprite_forceWhitePalette
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_801549E
	push {r5}
	mov r5, r0
	bl sprite_forceWhitePalette
	pop {r5}
loc_801549E:
	cmp r0, #7
	bne loc_80154B2
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80154B2
	push {r5}
	mov r5, r0
	bl sprite_clearFinalPalette
	pop {r5}
loc_80154B2:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_80154C6
	mov r0, #6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_30]
locret_80154C6:
	pop {r4,r6,pc}
	thumb_func_end sub_801544C

	thumb_local_start
sub_80154C8:
	push {r4,lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8015594
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80154E2
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_80154E2:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8011384
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	bl object_setAnimation
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sprite_forceWhitePalette
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_801595E
	mov r1, #0x2c 
	mov r2, r0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #1
	blt loc_801555A
	cmp r0, #0x18
	bgt loc_801555A
	bl sub_8015B22
loc_801555A:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	push {r0}
	bl sub_8011268
	pop {r0}
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8015578
	mov r1, #0
	strb r1, [r0,#oBattleObject_CurAnim]
	mov r1, #0
	strb r1, [r0,#oBattleObject_Param3]
loc_8015578:
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	mov r0, #0x8d
	bl PlaySoundEffect
	mov r0, #SOUND_LOG_IN_77
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8015594:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_80155C4
	bl sub_80144C0
	bl sub_80143A6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	bl object_clearInvulnerableTime
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80155C0
	push {r5}
	mov r5, r0
	bl sprite_clearFinalPalette
	pop {r5}
loc_80155C0:
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_80155C4:
	pop {r4,pc}
	.balign 4, 0x00
	.word 0x31400
	thumb_func_end sub_80154C8

	thumb_local_start
sub_80155CC:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_80155DC
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_80155DC:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_801560A
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0xb
	mov r2, #1
	bl sub_800AB2E
	mov r0, #0x80
	bl ClearAIDataUnk0x48Flag
	ldr r0, dword_801560C // =0x80000 
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x20 
	bl battle_clearFlags
	ldr r0, dword_8015610 // =0x80008600 
	bl ClearAIData_Unk_44_Flag
	bl object_exitAttackState
locret_801560A:
	pop {r4,pc}
	.balign 4, 0
dword_801560C: .word 0x80000
dword_8015610: .word 0x80008600
	thumb_func_end sub_80155CC

	thumb_local_start
sub_8015614:
	push {lr}
	ldr r1, off_8015624 // =off_8015628 
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8015624: .word off_8015628
off_8015628: .word sub_801562C+1
	thumb_func_end sub_8015614

	thumb_local_start
sub_801562C:
	push {r4,lr}
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	beq loc_801563A
	b loc_801573C
loc_801563A:
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8015648
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_8015648:
	mov r0, #0
	ldr r1, [r5,#oBattleObject_Unk_5c]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	cmp r1, #4
	beq loc_801565C
	cmp r1, #6
	beq loc_801565C
	cmp r1, #7
	bne loc_801565E
loc_801565C:
	mov r0, #1
loc_801565E:
	add r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x8e
	bl PlaySoundEffect
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r0, #0x14
	lsl r0, r0, #0x10
	add r3, r3, r0
	mov r4, #3
	bl spawn_t1_0x0_EffectObject
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	ldr r0, off_8015928 // =loc_8001440 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0x10
	bl object_clearFlag2
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8011384
	mov r0, #0
	mov r1, #0
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #2
	beq loc_80156DC
	mov r0, #0
	bl object_setAnimation
loc_80156DC:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sprite_forceWhitePalette
	bl sub_80158CC
	mov r1, #0x2c 
	mov r2, #0
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r0, #0
	bl sub_8015B22
	bl sub_80144C0
	bl sub_80143B4
	bl object_clearInvulnerableTime
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	bl sub_8011268
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	str r0, [r1,#oAIData_Unk_40]
	mov r0, #0xa1
	add r0, #0xff
	strh r0, [r5,#oBattleObject_NameID]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_801573C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8015764
	ldr r0, dword_801592C // =0x1000863d 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_8015930 // =0x200900 
	bl ClearAIDataUnk0x48Flag
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #2
	beq loc_801575C
	bl object_exitAttackState
	b locret_8015764
loc_801575C:
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
locret_8015764:
	pop {r4,pc}
	thumb_func_end sub_801562C

	thumb_local_start
sub_8015766:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	mov r6, #1
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0xa0
	bl sprite_forceWhitePalette
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	beq loc_801577C
	b loc_801589C
loc_801577C:
	mov r0, #4
	bl battle_setFlags
	mov r0, #0x8e
	bl PlaySoundEffect
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl sub_8011450
	bl sub_800F46C
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r0, #0x14
	lsl r0, r0, #0x10
	add r3, r3, r0
	mov r4, #3
	bl spawn_t1_0x0_EffectObject
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	ldr r0, dword_8015934 // =0x80111c40 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0x10
	bl object_clearFlag2
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_80157EE
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_80157EE:
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	str r0, [sp]
	bl sub_8011384
	mov r1, #0
	ldr r0, [sp]
	cmp r0, #0xa
	ble loc_801580A
	mov r1, #0xb
	cmp r0, #0x11
	ble loc_801580A
	mov r1, #0xc
loc_801580A:
	str r1, [sp]
	mov r0, #0
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	bl object_setAnimation
	ldrb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sprite_forceWhitePalette
	mov r1, #0x2c 
	ldr r2, [sp]
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r0, [sp]
	bl sub_8015B22
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x80
	bl sub_8015BEC
	bl sub_80144C0
	bl sub_80143B4
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	mov r2, #0
	bl sub_8011268
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	cmp r0, #0
	beq loc_8015878
	mov r1, #1
	strb r1, [r0,#oBattleObject_Param3]
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #0x14
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
loc_8015878:
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	bl object_clearInvulnerableTime
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	bl object_clearCollisionRegion // () -> void
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_801589C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt loc_80158C6
	ldr r0, dword_8015938 // =0x240800 
	bl ClearAIDataUnk0x48Flag
	ldr r0, [r5,#oBattleObject_RelatedObject2Ptr]
	tst r0, r0
	beq loc_80158B4
	mov r1, #0
	strb r1, [r0,#oBattleObject_Param3]
loc_80158B4:
	mov r0, #4
	bl battle_clearFlags
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r6, #0
loc_80158C6:
	mov r0, r6
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8015766

	thumb_local_start
sub_80158CC:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r1, #0x80
	strb r1, [r0,#0xe]
	bl GetBattleMode
	cmp r0, #1
	beq locret_80158F8
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt locret_80158F8
	cmp r0, #0x16
	bgt loc_80158F4
	bl sub_801443C
	b locret_80158F8
loc_80158F4:
	bl sub_8014466
locret_80158F8:
	pop {pc}
	thumb_func_end sub_80158CC

	thumb_local_start
sub_80158FA:
	push {lr}
	ldr r0, dword_8015924 // =0x80111c40 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0x10
	bl object_clearFlag2
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	ldr r0, dword_801593C // =0x200800 
	bl ClearAIDataUnk0x48Flag
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0
	strh r1, [r0,#oCollisionData_Unk_2c]
	strh r1, [r0,#oCollisionData_Unk_2a]
	strh r1, [r0,#oCollisionData_Unk_1c]
	str r1, [r0,#oCollisionData_Unk_58]
	str r1, [r0,#oCollisionData_Unk_60]
	pop {pc}
	.balign 4, 0
dword_8015924: .word 0x80111C40
off_8015928: .word 0x8001440
dword_801592C: .word 0x1000863D
dword_8015930: .word 0x200900
dword_8015934: .word 0x80111C40
dword_8015938: .word 0x240800
dword_801593C: .word 0x200800
	thumb_func_end sub_80158FA

	thumb_func_start sub_8015940
sub_8015940:
	push {r5,lr}
	ldr r5, off_8015B34 // =byte_203CED0 
	mov r1, #0xff
	strb r1, [r5]
	strb r1, [r5,#0x4] // (dword_203CED4 - 0x203ced0)
	bl sub_80103EC
	str r0, [r5,#0x8] // (byte_203CED8 - 0x203ced0)
	pop {r5,pc}
	thumb_func_end sub_8015940

	thumb_func_start sub_8015952
sub_8015952:
	push {r4,lr}
	ldr r4, off_8015B38 // =byte_203CED0 
	strb r0, [r4]
	strb r1, [r4,#0x1] // (byte_203CED1 - 0x203ced0)
	strb r2, [r4,#0x3] // (byte_203CED3 - 0x203ced0)
	pop {r4,pc}
	thumb_func_end sub_8015952

	thumb_local_start
sub_801595E:
	mov r3, #0x10
	mul r3, r0
	ldr r0, off_8015B3C // =unk_203A980 
	add r3, r3, r0
	ldrb r0, [r3]
	ldrb r1, [r3,#1]
	ldrb r3, [r3,#3]
	mov pc, lr
	thumb_func_end sub_801595E

	thumb_local_start
sub_801596E:
	push {r5,lr}
	mov r5, r0
	beq locret_801597A
	ldr r0, dword_8015B40 // =0x4000 
	bl SetAIData_Unk_44_Flag
locret_801597A:
	pop {r5,pc}
	thumb_func_end sub_801596E

	thumb_local_start
sub_801597C:
	push {r5,lr}
	mov r5, r0
	beq locret_8015992
	bl GetAIDataUnk0x48Flag
	mov r2, #0
	mov r1, #0x80
	tst r0, r1
	beq loc_8015990
	mov r2, #1
loc_8015990:
	mov r0, r2
locret_8015992:
	pop {r5,pc}
	thumb_func_end sub_801597C

	thumb_local_start
sub_8015994:
	push {r5,lr}
	mov r5, r0
	beq locret_80159A0
	mov r0, #0x40 
	bl SetAIData_Unk_44_Flag
locret_80159A0:
	pop {r5,pc}
	thumb_func_end sub_8015994

	thumb_local_start
sub_80159A2:
	push {r5,r7,lr}
	mov r7, #0
	mov r5, r0
	beq loc_80159C2
	mov r7, #1
	bl GetAIDataUnk0x48Flag
	ldr r1, off_8015B44 // =0x100 
	tst r0, r1
	bne loc_80159C2
	bl GetAIData_Unk_44_Flag
	mov r1, #0x40 
	tst r0, r1
	bne loc_80159C2
	mov r7, #0
loc_80159C2:
	mov r0, r7
	pop {r5,r7,pc}
	thumb_func_end sub_80159A2

	thumb_local_start
sub_80159C6:
	push {r5,r6,lr}
	mov r6, #0
	mov r5, r0
	beq .failure
	bl GetBattleMode
	cmp r0, #1
	beq .isCrossoverBattle
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r0,#oAIData_Unk_0f]
	tst r1, r1
	bne .failure
	mov r1, #2
	strb r1, [r0,#oAIData_Unk_0f]
	mov r1, #oNaviStats_BeastOutCounter 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne .failure
	bl sub_801443C
.isCrossoverBattle
	mov r1, #oNaviStats_Transformation 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt .failure
	cmp r0, #0x18
	bgt .failure
	bl GetBattleMode
	cmp r0, #1
	beq .isCrossoverBattle_2
	mov r1, #oNaviStats_BeastOutCounter 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne .failure
.isCrossoverBattle_2
	mov r6, #1
.failure
	mov r0, r6
	pop {r5,r6,pc}
	thumb_func_end sub_80159C6

	thumb_func_start sub_8015A16
sub_8015A16:
	push {r5,lr}
	mov r5, r0
	beq locret_8015A36
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne locret_8015A36
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r2, [r1,#oAIData_Unk_0f]
	cmp r2, #0xff
	beq locret_8015A36
	tst r2, r2
	beq locret_8015A36
	sub r2, #1
	strb r2, [r1,#oAIData_Unk_0f]
locret_8015A36:
	pop {r5,pc}
	thumb_func_end sub_8015A16

	thumb_func_start sub_8015A38
sub_8015A38:
	push {r5,r7,lr}
	mov r7, #0
	mov r5, r0
	beq loc_8015A7C
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_8015A7C
	mov r1, #0x17
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	beq loc_8015A7C
	cmp r0, #0xc
	beq loc_8015A7C
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt loc_8015A66
	cmp r0, #0x18
	ble loc_8015A68
loc_8015A66:
	b loc_8015A7C
loc_8015A68:
	mov r1, #0x21 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	beq loc_8015A7C
	sub r0, #1
	mov r2, r0
	mov r1, #0x21 
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
loc_8015A7C:
	mov r0, r7
	pop {r5,r7,pc}
	thumb_func_end sub_8015A38

	thumb_local_start
sub_8015A80:
	push {r5,lr}
	mov r5, r0
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0xb
	blt loc_8015A92
	cmp r0, #0x18
	ble locret_8015AA4
loc_8015A92:
	mov r1, #0x21 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #3
	bge locret_8015AA4
	add r2, r0, #1
	mov r1, #0x21 
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
locret_8015AA4:
	pop {r5,pc}
	thumb_func_end sub_8015A80

	thumb_func_start sub_8015AA6
sub_8015AA6:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	bl object_getFrontDirection // () -> int
	str r0, [sp,#8]
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #2
	ldr r1, off_8015AF4 // =off_8015AF8 
	ldr r0, [r1,r0]
	str r0, [sp,#0xc]
loc_8015ABE:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl object_isValidPanel
	beq loc_8015AEE
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl object_getPanelParameters
	ldr r1, [sp,#0xc]
	tst r0, r1
	beq loc_8015AE4
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl sub_80CC0B2
loc_8015AE4:
	ldr r0, [sp]
	ldr r1, [sp,#8]
	add r0, r0, r1
	str r0, [sp]
	b loc_8015ABE
loc_8015AEE:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8015AF4: .word off_8015AF8
off_8015AF8: .word LCDControl
	.word 0x8000000
	thumb_func_end sub_8015AA6

	thumb_func_start sub_8015B00
sub_8015B00:
	push {lr}
	bl object_getFrontDirection // () -> int
	add r0, r0, r0
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, dword_8015B48 // =0x10000 
	ldr r3, dword_8015B4C // =0xf800000 
	push {r0,r1}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0,r1}
	bne locret_8015B20
	mov r0, #0
locret_8015B20:
	pop {pc}
	thumb_func_end sub_8015B00

	thumb_local_start
sub_8015B22:
	ldr r1, off_8015B50 // =0x1a0 
	cmp r0, #0
	beq loc_8015B2E
	sub r1, r0, #1
	add r1, #0xad
	add r1, #0xff
loc_8015B2E:
	strh r1, [r5,#oBattleObject_NameID]
	mov pc, lr
	.balign 4, 0
off_8015B34: .word byte_203CED0
off_8015B38: .word byte_203CED0
off_8015B3C: .word unk_203A980
dword_8015B40: .word 0x4000
off_8015B44: .word 0x100
dword_8015B48: .word 0x10000
dword_8015B4C: .word 0xF800000
off_8015B50: .word 0x1A0
	thumb_func_end sub_8015B22

	thumb_func_start callPossiblyGetBattleEmotion_8015B54
callPossiblyGetBattleEmotion_8015B54:
	push {lr}
	bl possiblyGetBattleEmotion_8015B64
	pop {pc}
	thumb_func_end callPossiblyGetBattleEmotion_8015B54

	thumb_func_start sub_8015B5C
sub_8015B5C:
	push {lr}
	bl sub_8015BA8
	pop {pc}
	thumb_func_end sub_8015B5C

	thumb_local_start
possiblyGetBattleEmotion_8015B64:
	push {r4-r6,lr}
	mov r4, r0
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	mov r6, r0
	mov r0, r4
	bl battle_findPlayer
	mov r5, r0
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #oNaviStats_Transformation 
	ldrb r1, [r6,r1]
	ldrb r2, [r6,#oNaviStats_Mood]
	mov r0, #5
	ldrh r3, [r4,#oAIData_Unk_36]
	tst r3, r3
	bne loc_8015BA2
	cmp r2, #0
	beq loc_8015BA2
	mov r0, #3
	ldrh r3, [r4,#oAIData_Anger]
	tst r3, r3
	bne loc_8015BA2
	mov r0, #1
	ldrh r3, [r4,#oAIData_Unk_32]
	tst r3, r3
	bne loc_8015BA2
	mov r0, #2
	cmp r2, #0xff
	beq loc_8015BA2
	mov r0, #0
loc_8015BA2:
	mov r3, #oNaviStats_BeastOutCounter 
	ldrb r3, [r6,r3]
	pop {r4-r6,pc}
	thumb_func_end possiblyGetBattleEmotion_8015B64

	thumb_local_start
sub_8015BA8:
	push {r4-r6,lr}
	mov r4, r0
	bl GetBattleNaviStats2034A60Addr
	mov r6, r0
	mov r0, r4
	bl battle_findPlayer
	mov r5, r0
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x2c 
	ldrb r1, [r6,r1]
	ldrb r2, [r6,#0xe]
	mov r0, #5
	ldrh r3, [r4,#oAIData_Unk_36]
	tst r3, r3
	beq loc_8015BE6
	cmp r2, #0
	beq loc_8015BE6
	mov r0, #3
	ldrh r3, [r4,#oAIData_Anger]
	tst r3, r3
	bne loc_8015BE6
	mov r0, #1
	ldrh r3, [r4,#oAIData_Unk_32]
	tst r3, r3
	beq loc_8015BE6
	mov r0, #2
	cmp r2, #0xff
	beq loc_8015BE6
	mov r0, #0
loc_8015BE6:
	mov r3, #0x21 
	ldrb r3, [r6,r3]
	pop {r4-r6,pc}
	thumb_func_end sub_8015BA8

	thumb_func_start sub_8015BEC
sub_8015BEC:
	push {r4-r6,lr}
	mov r6, r0
	mov r4, r1
	bl battle_findPlayer
	cmp r0, #0
	beq locret_8015C10
	mov r5, r0
	bl sub_801445C
	bne locret_8015C10
	bl sub_8014490
	bne locret_8015C10
	mov r0, r6
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	strb r4, [r0,#0xe]
locret_8015C10:
	pop {r4-r6,pc}
	thumb_func_end sub_8015BEC

	thumb_local_start
sub_8015C12:
	push {r4,lr}
	mov r4, r1
	bl GetBattleNaviStatsAddr // (int idx) -> void*
	ldrb r1, [r0,#oNaviStats_Mood]
	tst r1, r1
	beq locret_8015C2A
	sub r1, r1, r4
	cmp r1, #1
	bge loc_8015C28
	mov r1, #1
loc_8015C28:
	strb r1, [r0,#oNaviStats_Mood]
locret_8015C2A:
	pop {r4,pc}
	thumb_func_end sub_8015C12

	thumb_local_start
sub_8015C2C:
	push {lr}
	mov r0, #0x80
	pop {pc}
	thumb_func_end sub_8015C2C

	thumb_func_start ZeroAllNaviStatsMood
ZeroAllNaviStatsMood:
	push {r4,lr}
	mov r4, #0
.setNaviMoodLoop
	mov r0, r4
	mov r1, #oNaviStats_Mood
	mov r2, #0
	bl SetNaviStatsByte
	add r4, #1
	cmp r4, #7
	blt .setNaviMoodLoop
	pop {r4,pc}
	thumb_func_end ZeroAllNaviStatsMood

	thumb_func_start sub_8015C48
sub_8015C48:
	push {r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #3
	ldr r1, off_8015C80 // =byte_8015C84
	add r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0,#4]
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFiltered
	tst r0, r0
	beq loc_8015C78
	mov r7, r0
	bl GetPositiveSignedRNG
	mov r1, r7
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	b loc_8015C7C
loc_8015C78:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
loc_8015C7C:
	add sp, sp, #0x18
	pop {r7,pc}
	.balign 4, 0
off_8015C80: .word byte_8015C84
byte_8015C84: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8015C48

	thumb_func_start sub_8015C94
sub_8015C94:
	push {r7,lr}
	sub sp, sp, #0x18
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFiltered
	tst r0, r0
	beq loc_8015CB8
	mov r7, r0
	bl GetPositiveSignedRNG
	mov r1, r7
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	b loc_8015CBC
loc_8015CB8:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
loc_8015CBC:
	add sp, sp, #0x18
	pop {r7,pc}
	thumb_func_end sub_8015C94

	thumb_func_start sub_8015CC0
sub_8015CC0:
	push {lr}
	sub sp, sp, #0x34
	str r0, [sp,#8]
	str r1, [sp,#0xc]
	str r2, [sp,#0x18]
	str r3, [sp,#0x1c]
	str r4, [sp,#0x28]
	mov r0, #0
	str r0, [sp,#0x20]
	str r0, [sp,#0x24]
	str r0, [sp,#0x2c]
	str r0, [sp,#0x30]
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	bl object_getAllianceDirection
	neg r0, r0
	str r0, [sp,#0x10]
	ldr r1, [sp,#8]
	add r1, r1, r0
	str r1, [sp,#8]
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #2
	ldr r1, off_8015D74 // =byte_8015D78 
	ldr r0, [r1,r0]
	str r0, [sp,#0x14]
loc_8015CF4:
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	bl object_getPanelParameters
	ldr r1, [sp,#0x14]
	tst r0, r1
	beq loc_8015D16
	ldr r2, [sp,#8]
	str r2, [sp,#0x2c]
	ldr r2, [sp,#0xc]
	str r2, [sp,#0x30]
	ldr r0, [sp,#0x24]
	add r0, #1
	str r0, [sp,#0x24]
	ldr r1, [sp,#0x28]
	cmp r0, r1
	bgt loc_8015D52
loc_8015D16:
	ldr r0, [sp,#0x24]
	ldr r1, [sp,#0x28]
	cmp r0, r1
	bne loc_8015D40
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	ldr r2, [sp,#0x18]
	ldr r3, [sp,#0x1c]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_8015D40
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	lsl r1, r1, #4
	orr r0, r1
	add r1, sp, #0
	ldr r2, [sp,#0x20]
	strb r0, [r1,r2]
	add r2, #1
	str r2, [sp,#0x20]
loc_8015D40:
	ldr r0, [sp,#8]
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	str r0, [sp,#8]
	ldr r1, [sp,#0xc]
	bl object_isValidPanel
	tst r0, r0
	bne loc_8015CF4
loc_8015D52:
	ldr r0, [sp,#0x20]
	tst r0, r0
	beq loc_8015D6A
	bl GetPositiveSignedRNG
	ldr r1, [sp,#0x20]
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015D6A:
	ldr r2, [sp,#0x2c]
	ldr r3, [sp,#0x30]
	add sp, sp, #0x34
	pop {pc}
	.balign 4, 0
off_8015D74: .word byte_8015D78
byte_8015D78: .byte 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x80, 0x2
	thumb_func_end sub_8015CC0

	thumb_func_start panelFlagCheck_8015D80
// r0 - panel X
// r1 - panel Y
// r2 - panel set flags
// r3 - panel clear flags
// r4 - relative panel offsets
panelFlagCheck_8015D80:
	push {r4,lr}
	sub sp, sp, #0x38
	str r0, [sp,#0x1c]
	str r1, [sp,#0x20]
	str r2, [sp,#0x24]
	str r3, [sp,#0x28]
	bl object_getEnemyDirection
	str r0, [sp,#0x18]
	mov r0, #0
	str r0, [sp,#0x2c]
loc_8015D96:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_8015DD4
	ldr r1, [sp,#0x18]
	mul r0, r1
	ldr r2, [sp,#0x1c]
	add r0, r0, r2
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0x20]
	add r1, r1, r2
	str r0, [sp,#0x30]
	str r1, [sp,#0x34]
	ldr r2, [sp,#0x24]
	ldr r3, [sp,#0x28]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_8015DD0
	ldr r0, [sp,#0x30]
	ldr r1, [sp,#0x34]
	lsl r1, r1, #4
	orr r0, r1
	ldr r1, [sp,#0x2c]
	add r2, sp, #0
	strb r0, [r2,r1]
	add r1, #1
	str r1, [sp,#0x2c]
loc_8015DD0:
	add r4, #2
	b loc_8015D96
loc_8015DD4:
	ldr r0, [sp,#0x2c]
	tst r0, r0
	beq loc_8015DEC
	bl GetPositiveSignedRNG
	ldr r1, [sp,#0x2c]
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015DEC:
	add sp, sp, #0x38
	pop {r4,pc}
	thumb_func_end panelFlagCheck_8015D80

	thumb_local_start
sub_8015DF0:
	push {r4,lr}
	sub sp, sp, #0x38
	str r2, [sp,#0x24]
	str r3, [sp,#0x28]
	mov r0, #0
	str r0, [sp,#0x2c]
loc_8015DFC:
	ldrb r0, [r4]
	cmp r0, #0x7f
	beq loc_8015E2A
	ldrb r1, [r4,#1]
	str r0, [sp,#0x30]
	str r1, [sp,#0x34]
	ldr r2, [sp,#0x24]
	ldr r3, [sp,#0x28]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_8015E26
	ldr r0, [sp,#0x30]
	ldr r1, [sp,#0x34]
	lsl r1, r1, #4
	orr r0, r1
	ldr r1, [sp,#0x2c]
	add r2, sp, #0
	strb r0, [r2,r1]
	add r1, #1
	str r1, [sp,#0x2c]
loc_8015E26:
	add r4, #2
	b loc_8015DFC
loc_8015E2A:
	ldr r0, [sp,#0x2c]
	tst r0, r0
	beq loc_8015E42
	bl GetPositiveSignedRNG
	ldr r1, [sp,#0x2c]
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015E42:
	add sp, sp, #0x38
	pop {r4,pc}
	thumb_func_end sub_8015DF0

	thumb_func_start GetRandomRelativePanelFiltered
// input:
// r0 - panelx
// r1 - panely
// r2 - panel params that should be set
// r3 - panel params that should be clear
// r4 - which list of relative panel offsets
// r6 - alliance direction
// returns:
// r0 - random panelx
// r1 - random panely
// r2 - number of available panels
GetRandomRelativePanelFiltered:
	push {r4,r7,lr}
	ldr r7, =PanelOffsetListsPointerTable
	lsl r4, r4, #2
	ldr r4, [r7,r4]
	bl _GetRandomRelativePanelFiltered
	pop {r4,r7,pc}
	// 8015E54
	.pool
	thumb_func_end GetRandomRelativePanelFiltered

	thumb_local_start
// GetRandomRelativePanelFilteredFromList
_GetRandomRelativePanelFiltered:
	push {r4,r6,lr}
	sub sp, sp, #0x38
	str r0, [sp,#0x1c] // oStack_PanelX
	str r1, [sp,#0x20] // oStack_PanelY
	str r2, [sp,#0x24] // oStack_SetPanelParams
	str r3, [sp,#0x28] // oStack_ClearPanelParams
	mov r0, r6
	bl object_getAllianceDirection
	str r0, [sp,#0x2c] // oStack_Direction
	mov r6, #0
.loop
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq .doneCheckingPanels
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0x2c] // oStack_Direction
	mul r0, r2 // direction is signed, 1 or -1
	ldr r2, [sp,#0x1c] // oStack_PanelX
	add r0, r0, r2
	str r0, [sp,#0x30] // oStack_RelativePanelX
	ldr r2, [sp,#0x20] // oStack_PanelY
	add r1, r1, r2
	str r1, [sp,#0x34] // oStack_RelativePanelY
	ldr r2, [sp,#0x24] // oStack_SetPanelParams
	ldr r3, [sp,#0x28] // oStack_ClearPanelParams
	bl object_checkPanelParameters
	tst r0, r0
	beq .notMatchingPanelParams
	ldr r0, [sp,#0x30] // oStack_RelativePanelX
	ldr r1, [sp,#0x34] // oStack_RelativePanelY
	lsl r1, r1, #4
	orr r0, r1
	add r1, sp, #0
	strb r0, [r1,r6]
	add r6, #1
.notMatchingPanelParams
	add r4, #2
	b .loop
.doneCheckingPanels
	mov r2, r6
	mov r0, r6
	beq .noPanelMatch
	bl GetPositiveSignedRNG
	mov r1, r6
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4 // r1 = panel y
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d // r0 = panel x
	mov r2, r6
.noPanelMatch
	add sp, sp, #0x38
	pop {r4,r6,pc}
	thumb_func_end _GetRandomRelativePanelFiltered

	thumb_local_start
sub_8015EC6:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	ldrb r0, [r5,#0x16]
	lsl r0, r0, #2
	ldr r1, off_8015F30 // =byte_8015F38 
	ldr r2, [r1,r0]
	mov r3, #0
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFiltered
	mov r4, r0
	beq loc_8015F2A
	mov r6, #6
	add r7, sp, #0
loc_8015EE2:
	ldrb r0, [r7]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r0, [r5,#0x13]
	sub r0, r0, r1
	cmp r0, #0
	bge loc_8015EF4
	neg r0, r0
loc_8015EF4:
	cmp r0, r6
	bge loc_8015EFC
	mov r6, r0
	str r1, [sp,#4]
loc_8015EFC:
	sub r4, #1
	bgt loc_8015EE2
	ldrb r0, [r5,#0x16]
	lsl r0, r0, #3
	ldr r1, off_8015F34 // =byte_8015F40
	add r1, r1, r0
	ldr r2, [r1]
	ldr r3, [r1,#4]
	ldr r0, [sp,#4]
	add r7, sp, #0
	bl object_getPanelsInRowFiltered
	mov r4, r0
	beq loc_8015F2A
	bl GetPositiveSignedRNG
	mov r1, r4
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8015F2A:
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8015F30: .word byte_8015F38
off_8015F34: .word byte_8015F40
byte_8015F38: .byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x8
byte_8015F40: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF, 0x10, 0xB5, 0xA8, 0x7D, 0xC0, 0x0, 0x6, 0x49, 0x40, 0x18
	.byte 0x2, 0x68, 0x43, 0x68, 0x3, 0x4C, 0xA8, 0x7C, 0xE9, 0x7C, 0xFF, 0xF7, 0xC
	.byte 0xFF, 0x10, 0xBD, 0x0, 0x0
	.word byte_8015F84
	.word byte_8015F74
byte_8015F74: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
byte_8015F84: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x80, 0xB5, 0x81, 0xB0
	.byte 0xA8, 0x7D, 0xE9, 0x7D, 0x0, 0xAF, 0xF7, 0xF7, 0x2B, 0xF9, 0x7, 0x1C
	.byte 0x8, 0xD0, 0xEB, 0xF7, 0xC8, 0xFA, 0x39, 0x1C, 0x6, 0xDF, 0x0, 0xA8
	.byte 0x40, 0x5C, 0x1, 0x9, 0x40, 0x7, 0x40, 0xF, 0x1, 0xB0, 0x80, 0xBD
	.byte 0x80, 0xB5, 0x81, 0xB0, 0xA8, 0x7D, 0xE9, 0x7D, 0x0, 0xAF, 0xF7, 0xF7
	.byte 0x57, 0xF9, 0x7, 0x1C, 0x8, 0xD0, 0xEB, 0xF7, 0xB4, 0xFA, 0x39, 0x1C
	.byte 0x6, 0xDF, 0x0, 0xA8, 0x40, 0x5C, 0x1, 0x9, 0x40, 0x7, 0x40, 0xF
	.byte 0x1, 0xB0, 0x80, 0xBD, 0x80, 0xB5, 0x81, 0xB0, 0xA8, 0x7D, 0xE9, 0x7D
	.byte 0x0, 0xAF, 0xF7, 0xF7, 0x8B, 0xF9, 0x7, 0x1C, 0x8, 0xD0, 0xEB, 0xF7
	.byte 0xA0, 0xFA, 0x39, 0x1C, 0x6, 0xDF, 0x0, 0xA8, 0x40, 0x5C, 0x1, 0x9
	.byte 0x40, 0x7, 0x40, 0xF, 0x1, 0xB0, 0x80, 0xBD
	thumb_func_end sub_8015EC6

	thumb_func_start sub_8016004
sub_8016004:
	push {r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	add r7, sp, #0
	bl sub_801632C
	mov r7, r0
	beq loc_8016038
	bl GetPositiveSignedRNG
	mov r1, r7
	svc 6
	add r2, sp, #0
	ldrb r0, [r2,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r3, #1
	ldrb r2, [r5,#oBattleObject_PanelX]
	sub r2, r2, r0
	bge loc_8016034
	mov r3, #0
loc_8016034:
	ldrb r2, [r5,#oBattleObject_Alliance]
	eor r2, r3
loc_8016038:
	add sp, sp, #0x18
	pop {r7,pc}
	.word byte_8016040
	.balign 4, 0
byte_8016040: .byte 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0xD0, 0xB5, 0x8D, 0xB0, 0xA8, 0x7D, 0x7, 0x90, 0xE9, 0x7D, 0xC, 0x91, 0xC0, 0x0
	.byte 0x3D, 0x49, 0x9, 0x18, 0xA, 0x68, 0x4B, 0x68, 0x0, 0xAF, 0xF6, 0xF7, 0xFC, 0xFE, 0x7
	.byte 0x1C, 0x6E, 0xD0, 0x0, 0x24, 0x0, 0x26
loc_8016074:
	add r0, sp, #0
	ldrb r0, [r0,r6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r1, [r5,#0x12]
	ldr r2, [sp,#0x1c]
	ldr r3, [sp,#0x30]
	eor r2, r3
	tst r2, r2
	bne loc_8016090
	cmp r0, r1
	bgt loc_8016094
	b loc_801609E
loc_8016090:
	cmp r0, r1
	bge loc_801609E
loc_8016094:
	add r0, sp, #0
	ldrb r0, [r0,r6]
	add r1, sp, #0x18
	strb r0, [r1,r4]
	add r4, #1
loc_801609E:
	add r6, #1
	cmp r6, r7
	blt loc_8016074
	tst r4, r4
	beq loc_8016114
loc_80160A8:
	mov r7, r4
	add r1, sp, #0x18
	ldrb r0, [r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	str r0, [sp,#0x20]
	str r1, [sp,#0x24]
	ldrb r2, [r5,#0x12]
	sub r0, r0, r2
	cmp r0, #0
	bge loc_80160C2
	neg r0, r0
loc_80160C2:
	str r0, [sp,#0x28]
	ldrb r2, [r5,#0x13]
	sub r1, r1, r2
	cmp r1, #0
	bge loc_80160CE
	neg r1, r1
loc_80160CE:
	str r1, [sp,#0x2c]
	mov r6, #1
loc_80160D2:
	cmp r6, r7
	bge loc_801610E
	add r1, sp, #0x18
	ldrb r0, [r1,r6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r2, [r5,#0x12]
	sub r2, r2, r0
	cmp r2, #0
	bge loc_80160EA
	neg r2, r2
loc_80160EA:
	ldrb r3, [r5,#0x13]
	sub r3, r3, r1
	cmp r3, #0
	bge loc_80160F4
	neg r3, r3
loc_80160F4:
	ldr r4, [sp,#0x28]
	cmp r2, r4
	bgt loc_801610A
	blt loc_8016102
	ldr r4, [sp,#0x24]
	cmp r1, r4
	blt loc_8016102
loc_8016102:
	str r0, [sp,#0x20]
	str r1, [sp,#0x24]
	str r2, [sp,#0x28]
	str r3, [sp,#0x2c]
loc_801610A:
	add r6, #1
	b loc_80160D2
loc_801610E:
	ldr r0, [sp,#0x20]
	ldr r1, [sp,#0x24]
	b loc_801614E
loc_8016114:
	mov r4, #0
	mov r6, #0
loc_8016118:
	add r0, sp, #0
	ldrb r0, [r0,r6]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r1, [r5,#0x12]
	ldr r2, [sp,#0x1c]
	ldr r3, [sp,#0x30]
	eor r2, r3
	tst r2, r2
	bne loc_8016134
	cmp r0, r1
	blt loc_8016138
	b loc_8016142
loc_8016134:
	cmp r0, r1
	ble loc_8016142
loc_8016138:
	add r0, sp, #0
	ldrb r0, [r0,r6]
	add r1, sp, #0x18
	strb r0, [r1,r4]
	add r4, #1
loc_8016142:
	add r6, #1
	cmp r6, r7
	blt loc_8016118
	tst r4, r4
	bne loc_80160A8
	mov r0, #0
loc_801614E:
	add sp, sp, #0x34
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
	.word byte_8016158
byte_8016158: .byte 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0xB5, 0xA8, 0x7D, 0xC2, 0x0, 0xB, 0x49, 0x89, 0x18, 0xA, 0x68, 0x4B, 0x68
	.byte 0x1, 0x21, 0x48, 0x40, 0xE9, 0x7C, 0xF6, 0xF7, 0x83, 0xFF, 0x0, 0x42, 0xA, 0xD1, 0xA8
	.byte 0x7D, 0xC2, 0x0, 0x5, 0x49, 0x89, 0x18, 0xA, 0x68, 0x4B, 0x68, 0x1, 0x21, 0x48, 0x40
	.byte 0xE9, 0x7C, 0xF6, 0xF7, 0x76, 0xFF, 0x0, 0xBD
	.word byte_80161A4
	.word byte_80161B4
byte_80161A4: .byte 0x20, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x20
	.byte 0x0, 0x0, 0x0
byte_80161B4: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0
	.byte 0x0, 0x80, 0xB5, 0x88, 0xB0, 0x0, 0x92, 0x1, 0x93, 0xA8, 0x7C, 0xE9, 0x7C, 0x5, 0xF0
	.byte 0xA4, 0xFC, 0xE8, 0x7C, 0x0, 0x9A, 0x1, 0x9B, 0x2, 0xAF, 0xF6, 0xF7, 0xE3, 0xFE, 0x0
	.byte 0x42, 0x7, 0xD1, 0xE8, 0x7C, 0x0, 0x9A, 0x1, 0x9B, 0x2, 0xAF, 0xF6, 0xF7, 0x11, 0xFF
	.byte 0x0, 0x42, 0x9, 0xD0, 0x7, 0x1C, 0xEB, 0xF7, 0x9C, 0xF9, 0x39, 0x1C, 0x6, 0xDF, 0x2
	.byte 0xA8, 0x40, 0x5C, 0x1, 0x9, 0x40, 0x7, 0x40, 0xF, 0x3, 0xB4, 0xA8, 0x7C, 0xE9, 0x7C
	.byte 0x5, 0xF0, 0x9A, 0xFC, 0x3, 0xBC, 0x8, 0xB0, 0x80, 0xBD
	thumb_func_end sub_8016004

	thumb_func_start sub_8016218
sub_8016218:
	push {r4,lr}
	sub sp, sp, #0x10
	bl object_getFrontDirection // () -> int
	str r0, [sp]
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	str r0, [sp,#4]
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #2
	ldr r1, off_8016288 // =byte_8016290 
	ldr r0, [r1,r0]
	str r0, [sp,#0xc]
loc_8016232:
	mov r4, #0
	str r1, [sp,#8]
	ldr r0, [sp,#4]
	mov r1, #2
	bl object_isValidPanel
	beq loc_801626C
loc_8016240:
	ldrb r0, [r5,#oBattleObject_PanelY]
	sub r0, #1
	mov r1, #3
	mul r0, r1
	ldr r1, off_801628C // =byte_8016298
	add r1, r1, r0
	ldrb r1, [r1,r4]
	str r1, [sp,#8]
	ldr r0, [sp,#4]
	bl object_getPanelParameters
	ldr r1, [sp,#0xc]
	tst r0, r1
	bne loc_8016270
	add r4, #1
	cmp r4, #3
	blt loc_8016240
	ldr r0, [sp]
	ldr r1, [sp,#4]
	add r1, r1, r0
	str r1, [sp,#4]
	b loc_8016232
loc_801626C:
	mov r0, #0
	b loc_8016282
loc_8016270:
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	mov r3, #1
	ldrb r2, [r5,#oBattleObject_PanelX]
	sub r2, r2, r0
	bge loc_801627E
	mov r3, #0
loc_801627E:
	ldrb r2, [r5,#oBattleObject_Alliance]
	eor r2, r3
loc_8016282:
	add sp, sp, #0x10
	pop {r4,pc}
	.byte 0x0, 0x0
	.balign 4, 0
off_8016288: .word byte_8016290
off_801628C: .word byte_8016298
byte_8016290: .byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x8
byte_8016298: .byte 0x1, 0x2, 0x3, 0x2, 0x1, 0x3, 0x3, 0x1, 0x2, 0x0, 0x0, 0x0, 0xB8, 0x7D, 0xF9
	.byte 0x7D, 0xF7, 0x46, 0xC0, 0xB5, 0x86, 0xB0, 0x4, 0x90, 0x6, 0x91, 0x0, 0xAF, 0xF6, 0xF7
	.byte 0x9C, 0xFF, 0x0, 0x42, 0x2C, 0xD0, 0x5, 0x90, 0x0, 0x26, 0x0, 0x27, 0x4, 0x98, 0x6
	.byte 0x99, 0xF8, 0xF7, 0x2, 0xF8, 0x2, 0x1C, 0x0, 0xA9, 0x88, 0x5D, 0x1, 0x9, 0x40, 0x7
	.byte 0x40, 0xF, 0x80, 0x18, 0xF6, 0xF7, 0xE, 0xFB, 0x4, 0x9A, 0x92, 0x0, 0xE, 0x49, 0x89
	.byte 0x58, 0x8, 0x42, 0x7, 0xD1, 0xD, 0x49, 0x8, 0x42, 0x4, 0xD0, 0x0, 0xA9, 0x1, 0xAA
	.byte 0x88, 0x5D, 0xD0, 0x55, 0x1, 0x37, 0x1, 0x36, 0x5, 0x98, 0x86, 0x42, 0xE0, 0xDB, 0x38
	.byte 0x1C, 0x8, 0xD0, 0xEB, 0xF7, 0x15, 0xF9, 0x39, 0x1C, 0x6, 0xDF, 0x1, 0xA8, 0x40, 0x5C
	.byte 0x1, 0x9, 0x40, 0x7, 0x40, 0xF, 0x6, 0xB0, 0xC0, 0xBD, 0x0, 0x0
	.word byte_8016324
	.word 0x10000
byte_8016324: .byte 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x80, 0x2
	thumb_func_end sub_8016218

	thumb_func_start sub_801632C
sub_801632C:
	push {r4-r7,lr}
	mov r1, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	lsl r1, r1, #2
	ldr r2, off_8016368 // =byte_801636C 
	ldr r1, [r2,r1]
	add r0, r0, r1
	mov r1, #0
	mov r6, #0
loc_8016340:
	push {r0,r1}
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	tst r0, r0
	beq loc_801635A
	ldrb r1, [r0,#0x12]
	ldrb r2, [r0,#0x13]
	mov r0, r1
	mov r1, r2
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
loc_801635A:
	pop {r0,r1}
	add r1, #1
	cmp r1, #4
	blt loc_8016340
	mov r0, r6
	pop {r4-r7,pc}
	.balign 4, 0
off_8016368: .word byte_801636C
byte_801636C: .byte 0x80, 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_801632C

	thumb_func_start sub_8016380
sub_8016380:
	push {lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Unk_02]
	cmp r0, #0
	bne loc_8016390
	bl sub_8016396
	b locret_8016394
loc_8016390:
	bl sub_80164A0
locret_8016394:
	pop {pc}
	thumb_func_end sub_8016380

	thumb_local_start
sub_8016396:
	push {lr}
	ldr r1, off_80163A4 // =off_80163A8 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_80163A4: .word off_80163A8
off_80163A8: .word sub_80163B4+1
	.word sub_801641A+1
	.word sub_8016460+1
	thumb_func_end sub_8016396

	thumb_local_start
sub_80163B4:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_80163E2
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#oBattleState_Unk_0d]
	ldrb r0, [r5,#oBattleObject_Alliance]
	eor r0, r1
	bne loc_80163D6
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_8016418
loc_80163D6:
	mov r0, #0
	bl sub_800AA1A
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b loc_8016410
loc_80163E2:
	bl sub_800139A
	mov r1, #1
	tst r0, r1
	beq loc_8016410
	mov r0, #0
	bl sub_800AA06
	tst r0, r0
	beq loc_8016410
	mov r0, #0x94
	bl PlaySoundEffect
	mov r0, #2
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #0x10
	strh r0, [r5,#oBattleObject_Timer2]
	mov r0, #0
	bl sprite_setAlpha_8002c7a
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurPhase]
	pop {pc}
loc_8016410:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
locret_8016418:
	pop {pc}
	thumb_func_end sub_80163B4

	thumb_local_start
sub_801641A:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bne locret_801645E
	mov r0, #2
	strh r0, [r5,#oBattleObject_Timer]
	ldrh r0, [r5,#oBattleObject_Timer2]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer2]
	beq loc_801644C
	push {r0}
	mov r1, r0
	bl sprite_setMosaicSize
	pop {r0}
	sub r0, #0x10
	neg r0, r0
	bl sprite_setAlpha_8002c7a
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	b locret_801645E
loc_801644C:
	bl sprite_disableAlpha
	bl sprite_clearMosaic
	mov r0, #0
	bl sub_800AA40
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_801645E:
	pop {pc}
	thumb_func_end sub_801641A

	thumb_local_start
sub_8016460:
	push {lr}
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_801649E
	bl GetBattleMode
	cmp r0, #6
	beq loc_801647E
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#oBattleState_Unk_0d]
	ldrb r0, [r5,#oBattleObject_Alliance]
	eor r0, r1
	beq loc_8016496
loc_801647E:
	mov r0, #0
	mov r1, #0
	ldrh r2, [r5,#oBattleObject_NameID]
	cmp r2, #0x49 
	blt loc_8016492
	cmp r2, #0x4e 
	bgt loc_8016492
	mov r0, #0x20 
	neg r0, r0
	mov r1, #3
loc_8016492:
	bl sub_801DC7C
loc_8016496:
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_801649E:
	pop {pc}
	thumb_func_end sub_8016460

	thumb_local_start
sub_80164A0:
	push {lr}
	ldr r1, off_80164B0 // =off_80164B4 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_80164B0: .word off_80164B4
off_80164B4: .word sub_80164C0+1
	.word sub_8016520+1
	.word sub_801657E+1
	thumb_func_end sub_80164A0

	thumb_local_start
sub_80164C0:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	bl object_clearCollisionRegion // () -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	mov r0, #0x94
	bl PlaySoundEffect
	mov r0, #0x14
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #0x1e
	strh r0, [r5,#oBattleObject_Timer2]
	mov r1, #0x1f
	mov r0, r1
	lsl r0, r0, #5
	add r0, r0, r1
	lsl r0, r0, #5
	add r0, r0, r1
	bl sprite_setColorShader
	ldr r0, dword_801651C // =0xffff 
	bl object_setInvulnerableTime
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl spawn_t1_0x0_EffectObject
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurPhase]
	pop {pc}
	.balign 4, 0
dword_801651C: .word 0xFFFF
	thumb_func_end sub_80164C0

	thumb_local_start
sub_8016520:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	cmp r0, #0
	beq loc_8016552
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bne loc_801655A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #3
	bl spawn_t1_0x0_EffectObject
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	mov r0, #0x2a 
	add r0, #0xff
	bl PlaySoundEffect
loc_8016552:
	ldrh r0, [r5,#oBattleObject_Timer2]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer2]
	beq loc_8016574
loc_801655A:
	ldrh r0, [r5,#oBattleObject_Timer2]
	mov r1, r0
	lsl r1, r1, #5
	add r1, r1, r0
	lsl r1, r1, #5
	add r0, r0, r1
	bl sprite_setColorShader
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	b locret_801657C
loc_8016574:
	bl sprite_zeroColorShader
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_801657C:
	pop {pc}
	thumb_func_end sub_8016520

	thumb_local_start
sub_801657E:
	push {lr}
	bl GetBattleMode
	cmp r0, #6
	beq loc_8016594
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#oBattleState_Unk_0d]
	ldrb r0, [r5,#oBattleObject_Alliance]
	eor r0, r1
	beq loc_801659C
loc_8016594:
	mov r0, #0
	mov r1, #0
	bl sub_801DC7C
loc_801659C:
	bl object_clearInvulnerableTime
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_801657E

	thumb_func_start sub_80165B8
sub_80165B8:
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	mov pc, lr
	thumb_func_end sub_80165B8

	thumb_func_start sub_80165C2
sub_80165C2:
	push {lr}
	bl object_getFlag // () -> int
	ldr r1, dword_80165EC // =0x40000000 
	tst r0, r1
	bne loc_80165E0
	bl battle_isPaused
	bne locret_80165E4
	ldr r1, off_80165E8 // =off_80165F0 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
loc_80165E0:
	bl sub_8016EC4
locret_80165E4:
	pop {pc}
	.balign 4, 0
off_80165E8: .word off_80165F0
dword_80165EC: .word 0x40000000
off_80165F0: .word sub_80165F8+1
	.word sub_801664E+1
	thumb_func_end sub_80165C2

	thumb_local_start
sub_80165F8:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_801DC36
	mov r0, #0
	strb r0, [r5,#oBattleObject_ChipsHeld]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Chip]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	bl sub_801A7F4
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_80182B4
	ldrb r1, [r0,#1]
	cmp r1, #0
	bne loc_801663A
	ldrb r1, [r0]
	cmp r1, #4
	bge loc_8016634
	ldrb r0, [r0,#2]
	bl sub_802D644
	b loc_801663A
loc_8016634:
	ldrb r0, [r0,#2]
	bl sub_802D65E
loc_801663A:
	ldrb r0, [r5,#oBattleObject_Param2]
	cmp r0, #1
	bge loc_8016644
	bl relatedToIsBattleOver_800A11C
loc_8016644:
	bl sub_802EF5C
	mov r0, #4
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_80165F8

	thumb_local_start
sub_801664E:
	push {r4,r7,lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8016672
	bl battle_isTimeStop
	bne locret_80166AC
	bl sub_800AE44
	mov r4, #0
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #0x20 
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8016672:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge loc_80166A4
	bl sub_802CDD0
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	mov r0, r5
	bl RemoveGivenAliveBattleActorFromList
	mov r1, #0
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	str r1, [r0,#oAIData_Unk_74]
	bl sub_8011020
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	b locret_80166AC
loc_80166A4:
	lsr r0, r0, #2
	bcc locret_80166AC
	bl sprite_forceWhitePalette
locret_80166AC:
	pop {r4,r7,pc}
	thumb_func_end sub_801664E

	thumb_func_start sub_80166AE
sub_80166AE:
	push {lr}
	bl sub_800F3E8
	pop {pc}
	thumb_func_end sub_80166AE

	thumb_local_start
sub_80166B6:
	push {lr}
	ldr r1, off_80166C4 // =off_80166C8 
	ldrb r0, [r5,#oBattleObject_Unk_1f]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_80166C4: .word off_80166C8
off_80166C8: .word sub_80166D0+1
	.word sub_8016730+1
	thumb_func_end sub_80166B6

	thumb_local_start
sub_80166D0:
	push {r6,r7,lr}
	mov r0, #1
	lsl r0, r0, #0xc
	bl object_setFlag1 // (int a1) -> void
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_setCollisionPanelsToCurrent
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	bl sub_800E468
	strb r0, [r5,#oBattleObject_Unk_1c]
	strb r1, [r5,#oBattleObject_Unk_1d]
	strb r2, [r5,#oBattleObject_Unk_1b]
	tst r2, r2
	beq loc_8016716
	ldrb r3, [r5,#oBattleObject_PanelX]
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_PanelY]
	add r1, r1, r3
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_1e]
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_1f]
	pop {r6,r7,pc}
loc_8016716:
	ldrb r0, [r5,#oBattleObject_Unk_0f]
	cmp r0, #3
	bne loc_8016722
	mov r0, #5
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	strh r0, [r1,#oAIData_Unk_38]
loc_8016722:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0f]
	mov r0, #1
	lsl r0, r0, #0xc
	bl object_clearFlag // (int bitfield) -> void
	pop {r6,r7,pc}
	thumb_func_end sub_80166D0

	thumb_local_start
sub_8016730:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Unk_1e]
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_1e]
	bgt loc_801680E
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getPanelDataOffset
	ldrb r4, [r0,#oPanelData_Type]
	cmp r4, #7
	bne loc_8016768
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r0,#oCollisionData_PrimaryElement]
	cmp r0, #2
	beq loc_8016768
	ldrb r0, [r5,#oBattleObject_Unk_1b]
	add r0, #1
	strb r0, [r5,#oBattleObject_Unk_1b]
	b loc_80167B2
loc_8016768:
	cmp r4, #9
	blt loc_80167B2
	cmp r4, #0xc
	bgt loc_80167B2
	bl object_getFlag // () -> int
	mov r1, #0x24 
	tst r0, r1
	bne loc_80167B2
	ldrb r0, [r5,#oBattleObject_Unk_0f]
	cmp r0, #3
	bne loc_8016788
	mov r0, #5
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	strh r0, [r1,#oAIData_Unk_38]
	b loc_80167E6
loc_8016788:
	mov r0, #0x1c
	ldrsb r0, [r5,r0]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldrb r2, [r5,#oBattleObject_Alliance]
	bl sub_801683C
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r1,#oCollisionData_Direction]
	mov r0, #3
	strb r0, [r5,#oBattleObject_Unk_0f]
	bl sub_800E468
	strb r0, [r5,#oBattleObject_Unk_1c]
	strb r1, [r5,#oBattleObject_Unk_1d]
	tst r2, r2
	beq loc_80167E6
	ldrb r0, [r5,#oBattleObject_Unk_1b]
	add r0, #1
	strb r0, [r5,#oBattleObject_Unk_1b]
	b loc_80167B2
loc_80167B2:
	ldrb r0, [r5,#oBattleObject_Unk_1b]
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_1b]
	ble loc_80167E6
	mov r2, #0x1c
	ldrsb r2, [r5,r2]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	add r0, r0, r2
	mov r2, #0x1d
	ldrsb r2, [r5,r2]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	add r1, r1, r2
	mov r6, r0
	mov r7, r1
	bl sub_800E5AC
	beq loc_80167E6
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_1e]
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	pop {r4,r6,r7,pc}
loc_80167E6:
	mov r0, #0x1c
	ldrsb r0, [r5,r0]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldrb r2, [r5,#oBattleObject_Alliance]
	bl sub_801683C
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r1,#oCollisionData_Direction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	mov r0, #1
	lsl r0, r0, #0xc
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0f]
	bl object_setCollisionPanelsToCurrent
	pop {r4,r6,r7,pc}
loc_801680E:
	mov r0, #0x1c
	ldrsb r0, [r5,r0]
	ldr r2, dword_8016834 // =0xa0000 
	mul r2, r0
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r2
	str r0, [r5,#oBattleObject_X]
	mov r0, #0x1d
	ldrsb r0, [r5,r0]
	ldr r2, dword_8016838 // =0x60000 
	mul r2, r0
	ldr r0, [r5,#oBattleObject_Y]
	add r0, r0, r2
	str r0, [r5,#oBattleObject_Y]
	bl object_setPanelsFromCoordinates
	bl object_setCollisionPanelsToCurrent
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_8016834: .word 0xA0000
dword_8016838: .word 0x60000
	thumb_func_end sub_8016730

	thumb_local_start
sub_801683C:
	tst r2, r2
	beq loc_8016842
	neg r0, r0
loc_8016842:
	mov r3, #4
	tst r0, r0
	beq loc_801684E
	bgt loc_801685C
	mov r3, #3
	b loc_801685C
loc_801684E:
	mov r3, #1
	tst r1, r1
	beq loc_801685A
	blt loc_801685C
	mov r3, #2
	b loc_801685C
loc_801685A:
	mov r3, #5
loc_801685C:
	mov r0, r3
	mov pc, lr
	thumb_func_end sub_801683C

	thumb_local_start
sub_8016860:
	push {r4,lr}
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0x17
	blt loc_8016870
	cmp r0, #0x18
	ble locret_80168A2
loc_8016870:
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq locret_80168A2
	cmp r0, #0x56 
	beq locret_80168A2
	bl object_getFlag // () -> int
	mov r1, #8
	tst r0, r1
	beq locret_80168A2
	mov r4, #5
	bl GetBattleMode
	cmp r0, #1
	bne loc_8016890
	mov r4, #0
loc_8016890:
	bl sub_800A704
	mov r1, #0x1f
	and r0, r1
	ldr r1, off_80168A4 // =byte_80168A8
	ldrb r0, [r1,r0]
	lsl r0, r4
	bl sprite_setColorShader
locret_80168A2:
	pop {r4,pc}
	.balign 4, 0
off_80168A4: .word byte_80168A8
byte_80168A8: .byte 0x0, 0x2, 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16
	.byte 0x18, 0x1A, 0x1C, 0x1E, 0x1E, 0x1C, 0x1A, 0x18, 0x16, 0x14, 0x12, 0x10
	.word byte_80A0C0E
	.word 0x20406
	thumb_func_end sub_8016860

	thumb_local_start
sub_80168C8:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #8
	lsl r1, r1, #8
	tst r0, r1
	beq locret_80168E6
	bl sub_800A704
	mov r1, #2
	and r0, r1
	ldr r1, off_80168E8 // =dword_80168EC
	ldrh r0, [r1,r0]
	bl sprite_setColorShader
locret_80168E6:
	pop {pc}
	.balign 4, 0
off_80168E8: .word dword_80168EC
dword_80168EC: .word 0x3FF0000
	thumb_func_end sub_80168C8

	thumb_local_start
sub_80168F0:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x10
	tst r0, r1
	beq locret_8016904
	ldr r0, word_8016908 // =0x7e94
	bl sprite_setColorShader
locret_8016904:
	pop {pc}
	.balign 4, 0
word_8016908: .hword 0x7E94
	thumb_func_end sub_80168F0

	thumb_local_start
sub_801690A:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #0x40 
	lsl r1, r1, #8
	tst r0, r1
	beq locret_8016928
	bl sub_800A704
	mov r1, #2
	and r0, r1
	ldr r1, off_801692C // =word_8016930
	ldrh r0, [r1,r0]
	bl sprite_setColorShader
locret_8016928:
	pop {pc}
	.balign 4, 0
off_801692C: .word word_8016930
word_8016930: .hword 0x0, 0xFFFF
	thumb_func_end sub_801690A

	thumb_func_start blindVisualHandledHere_8016934
blindVisualHandledHere_8016934:
	push {lr}
	bl battle_isTimeStop
	bne loc_8016944
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_8016944:
	bl object_getFlag // () -> int
	ldr r1, off_8016A28 // =0x100 
	tst r0, r1
	bne locret_80169BC
	ldr r1, dword_8016A2C // =0x202 
	tst r0, r1
	beq loc_8016964
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrh r0, [r0,#oCollisionData_FlashingInvisTimer]
	lsr r0, r0, #2
	bcc loc_8016964
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #OBJECT_FLAG_VISIBLE
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_8016964:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_0d]
	ldrb r1, [r5,#oBattleObject_Alliance]
	eor r0, r1
	beq loc_8016998
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	tst r0, r0
	beq locret_80169BC
	push {r5}
	mov r5, r0
	bl object_getFlag // () -> int
	ldr r1, off_8016A30 // =0x2000 
	tst r0, r1
	pop {r5}
	beq locret_80169BC
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #OBJECT_FLAG_VISIBLE
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	b locret_80169BC
loc_8016998:
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq locret_80169BC
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_ActorType]
	cmp r0, #2
	bne locret_80169BC
	mov r0, #5
	bl sub_801DA48
	bl object_getFlag // () -> int
	ldr r1, off_8016A34 // =0x2000 
	tst r0, r1
	beq locret_80169BC
	mov r0, #5
	bl sub_801DACC
locret_80169BC:
	pop {pc}
	thumb_func_end blindVisualHandledHere_8016934

	thumb_func_start handleRenderBlindForSpecificObjectsMaybe_80169BE
handleRenderBlindForSpecificObjectsMaybe_80169BE:
	push {lr}
	bl battle_isTimeStop
	bne loc_80169CE
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_80169CE:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_0d]
	ldrb r1, [r5,#oBattleObject_Alliance]
	eor r0, r1
	beq loc_8016A02
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	tst r0, r0
	beq locret_8016A26
	push {r5}
	mov r5, r0
	bl object_getFlag // () -> int
	ldr r1, off_8016A30 // =0x2000 
	tst r0, r1
	pop {r5}
	beq locret_8016A26
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	b locret_8016A26
loc_8016A02:
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq locret_8016A26
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_ActorType]
	cmp r0, #2
	bne locret_8016A26
	mov r0, #5
	bl sub_801DA48
	bl object_getFlag // () -> int
	ldr r1, off_8016A34 // =0x2000 
	tst r0, r1
	beq locret_8016A26
	mov r0, #5
	bl sub_801DACC
locret_8016A26:
	pop {pc}
	.balign 4, 0
off_8016A28: .word 0x100
dword_8016A2C: .word 0x202
off_8016A30: .word 0x2000
off_8016A34: .word 0x2000
	thumb_func_end handleRenderBlindForSpecificObjectsMaybe_80169BE

	thumb_local_start
sub_8016A38:
	push {r4,lr}
	ldr r4, off_8016A60 // =byte_8016A68
	cmp r0, #0x18
	bne loc_8016A42
	ldr r4, off_8016A64 // =byte_8016A9C
loc_8016A42:
	bl sub_800A704
	mov r1, #0x1a
	svc 6
	lsl r1, r1, #1
	ldrh r0, [r4,r1]
	bl sprite_setColorShader
	pop {r4,pc}
	.word 0x0
	.word 0x0
	.word 0x0
	.balign 4, 0
off_8016A60: .word byte_8016A68
off_8016A64: .word byte_8016A9C
byte_8016A68: .byte 0x0, 0x0, 0x0, 0x0, 0x41, 0x0, 0x61, 0x4, 0x81, 0x8, 0xC2, 0xC, 0xE2
	.byte 0x10, 0x2, 0x11, 0x43, 0x15, 0x83, 0x19, 0xC3, 0x1D, 0xE4, 0x21, 0x4, 0x22
	.byte 0x4, 0x22, 0xE4, 0x21, 0xC3, 0x1D, 0x83, 0x19, 0x43, 0x15, 0x2, 0x11, 0xE2
	.byte 0x10, 0xC2, 0xC, 0xA2, 0xC
	.word byte_8610881
	.word 0x4210441
byte_8016A9C: .byte 0x0, 0x0, 0x0, 0x0, 0x2, 0x4, 0x23, 0x4
	.word 0x8660444
	.word 0x8880887
	.word 0xCCC0CAA
	.word 0x110F0CEE
	.word 0x11101110
	.word 0xCEE110F
	.word 0xCAA0CCC
	.word 0x8870888
	.word 0x8650866
	.word 0x4430444
	.word 0x4210422
	thumb_func_end sub_8016A38

	thumb_local_start
sub_8016AD0:
	push {lr}
	bl sub_800A704
	mov r1, #0x1a // (sub_8016B02 - 0x8016ae8)
	svc 6
	ldr r0, off_8016AE4 // =off_8016AE8 
	ldrb r0, [r0,r1]
	bl sprite_setPalette // (int pallete) -> void
	pop {pc}
	.balign 4, 0
off_8016AE4: .word off_8016AE8
off_8016AE8: .word unk_2020000
	.byte 0x2, 0x2, 0x2, 0x2, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x2, 0x2, 0x2
	.byte 0x2, 0x2, 0x2, 0x2, 0x2
	thumb_func_end sub_8016AD0

	thumb_func_start sub_8016B02
sub_8016B02:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8016B20
	ldr r0, dword_8016BD4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800F394
	bl sub_80101C4
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8016B20:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xb
	tst r0, r1
	bne locret_8016B34
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
locret_8016B34:
	pop {pc}
	thumb_func_end sub_8016B02

	thumb_func_start sub_8016B36
sub_8016B36:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8016B5C
	ldr r0, dword_8016BD4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800F3B0
	bl sub_80101C4
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	mov r0, #0x19
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8016B5C:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x10
	tst r0, r1
	bne locret_8016B70
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
locret_8016B70:
	pop {pc}
	thumb_func_end sub_8016B36

	thumb_func_start sub_8016B72
sub_8016B72:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8016B9A
	ldr r0, dword_8016BD4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_800F3CC
	bl sub_80101C4
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	mov r0, #0x2e 
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8016B9A:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x2c 
	ldrsh r1, [r0,r2]
	lsr r1, r1, #2
	mov r0, #0x1f
	and r0, r1
	ldr r1, off_8016BD8 // =byte_8016BDC 
	ldrsb r0, [r1,r0]
	ldrh r1, [r4,#oAIData_Unk_3c]
	add r0, r0, r1
	strh r0, [r5,#oBattleObject_Z16]
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x1f
	tst r0, r1
	bne locret_8016BD0
	mov r0, #0x25 
	add r0, #0xff
	bl PlaySoundEffect
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
	ldrh r0, [r4,#oAIData_Unk_3c]
	strh r0, [r5,#oBattleObject_Z16]
locret_8016BD0:
	pop {r4,pc}
	.balign 4, 0
dword_8016BD4: .word 0x100000
off_8016BD8: .word byte_8016BDC
byte_8016BDC: .byte 0x1, 0x2, 0x3, 0x4, 0x4, 0x5, 0x5, 0x6, 0x6, 0x6, 0x5, 0x4, 0x3, 0x2, 0x1, 0x0, 0xFF
	.byte 0xFE, 0xFD, 0xFC, 0xFC, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0x0
	thumb_func_end sub_8016B72

	thumb_local_start
sub_8016BFC:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	tst r0, r0
	bne loc_8016C14
	ldrh r0, [r5,#oBattleObject_X16]
	strh r0, [r5,#oBattleObject_Unk_30]
	ldrh r0, [r5,#oBattleObject_Z16]
	strh r0, [r5,#oBattleObject_Unk_32]
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_19]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PreventAnim]
loc_8016C14:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x80
	ldrh r1, [r0,r1]
	tst r1, r1
	beq loc_8016C22
	mov r0, #0x1e
	strb r0, [r5,#oBattleObject_Unk_19]
loc_8016C22:
	ldrb r0, [r5,#oBattleObject_Unk_19]
	tst r0, r0
	beq loc_8016C44
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	ldrh r1, [r5,#oBattleObject_Unk_30]
	lsl r1, r1, #0x10
	ldr r2, [r5,#oBattleObject_Y]
	ldrh r3, [r5,#oBattleObject_Unk_32]
	lsl r3, r3, #0x10
	mov r0, #3
	bl AddRandomVarianceToTwoCoords
	mov r0, #0x34 
	add r0, r0, r5
	stmia r0!, {r1-r3}
	b locret_8016C4C
loc_8016C44:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	strh r0, [r5,#oBattleObject_X16]
	ldrh r0, [r5,#oBattleObject_Unk_32]
	strh r0, [r5,#oBattleObject_Z16]
locret_8016C4C:
	pop {pc}
	thumb_func_end sub_8016BFC

	thumb_func_start sub_8016C4E
sub_8016C4E:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne locret_8016C88
	bl RemoveBattleObjectPanelReserves
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	bl object_freeCollisionData
	bl sub_800A104
	ldrb r0, [r4,#oAIData_Unk_0e]
	cmp r0, #0xff
	beq loc_8016C72
	ldrh r1, [r5,#oBattleObject_HP]
	mov r0, #0xff
	strb r0, [r4,#oAIData_Unk_0e]
loc_8016C72:
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	ldrb r1, [r4,#oAIData_Unk_02]
	cmp r1, #0
	beq locret_8016C88
	mov r0, r4
	beq loc_8016C84
	bl sub_800ED80
loc_8016C84:
	bl object_freeMemory
locret_8016C88:
	pop {r4,pc}
	thumb_func_end sub_8016C4E

	thumb_func_start object_genericDestroy
object_genericDestroy:
	push {lr}
	bl RemoveBattleObjectPanelReserves
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	bl object_freeCollisionData
	bl object_freeMemory
	pop {pc}
	thumb_func_end object_genericDestroy

	thumb_func_start sub_8016C9C
sub_8016C9C:
	push {lr}
	bl object_freeMemory
	pop {pc}
	thumb_func_end sub_8016C9C

	thumb_local_start
sub_8016CA4:
	push {lr}
	bl battle_isBattleOver
	tst r0, r0
	bne locret_8016CDE
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r1, [r1,#oBattleState_Unk_0d]
	ldrb r0, [r5,#oBattleObject_Alliance]
	eor r1, r0
	beq locret_8016CDE
	mov r1, #1
	eor r0, r1
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r0, #2
	bne locret_8016CDE
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r3,#oCollisionData_CounterTimer]
	tst r0, r0
	beq locret_8016CDE
	bl sub_800A704
	mov r1, #2
	and r0, r1
	ldr r1, off_8016CE0 // =dword_8016CE4
	ldrh r0, [r1,r0]
	bl sprite_setColorShader
locret_8016CDE:
	pop {pc}
	.balign 4, 0
off_8016CE0: .word dword_8016CE4
dword_8016CE4: .word 0x7C000000
	thumb_func_end sub_8016CA4

	thumb_func_start sub_8016CE8
sub_8016CE8:
	push {lr}
	ldr r1, off_8016CF8 // =off_8016CFC 
	ldrb r0, [r5,#oBattleObject_Unk_0d]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8016CF8: .word off_8016CFC
off_8016CFC: .word sub_8016D08+1
	.word sub_8016D8C+1
	.word sub_8016E3C+1
	thumb_func_end sub_8016CE8

	thumb_local_start
sub_8016D08:
	push {r6,r7,lr}
	mov r0, #1
	lsl r0, r0, #0x14
	bl object_setFlag1 // (int a1) -> void
	bl sub_800F404
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldr r0, dword_8016D80 // =0x1000 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	bl sub_800E45E
	strb r0, [r5,#oBattleObject_Unk_1c]
	strb r1, [r5,#oBattleObject_Unk_1d]
	strb r2, [r5,#oBattleObject_PhaseInitialized]
	tst r2, r2
	beq loc_8016D74
	mov r1, #0x1c
	ldrsb r1, [r5,r1]
	ldr r0, dword_8016D84 // =0xa0000 
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	ldrb r6, [r5,#oBattleObject_PanelX]
	add r6, r6, r1
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldr r0, dword_8016D88 // =0x60000 
	mul r0, r1
	str r0, [r5,#oBattleObject_YVelocity]
	ldrb r7, [r5,#oBattleObject_PanelY]
	add r7, r7, r1
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r6,r7,pc}
loc_8016D74:
	mov r0, #0x18
	strb r0, [r5,#oBattleObject_CurPhase]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r6,r7,pc}
	.balign 4, 0
dword_8016D80: .word 0x1000
dword_8016D84: .word 0xA0000
dword_8016D88: .word 0x60000
	thumb_func_end sub_8016D08

	thumb_local_start
sub_8016D8C:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r0
	mov r4, r1
	ldr r1, [r5,#oBattleObject_X]
	ldr r0, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	bne loc_8016DBC
	mov r2, r4
	ldr r1, [r5,#oBattleObject_Y]
	ldr r0, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	beq loc_8016E2A
loc_8016DBC:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getPanelDataOffset
	ldrb r4, [r0,#oPanelData_Type]
	cmp r4, #7
	bne loc_8016DE2
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r0,#oCollisionData_PrimaryElement]
	cmp r0, #2
	beq loc_8016DE2
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	add r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b loc_8016DE4
loc_8016DE2:
	b loc_8016DE4
loc_8016DE4:
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	sub r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	ble loc_8016E14
	mov r2, #0x1c
	ldrsb r2, [r5,r2]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	add r0, r0, r2
	mov r2, #0x1d
	ldrsb r2, [r5,r2]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	add r1, r1, r2
	mov r6, r0
	mov r7, r1
	bl sub_800E5AC
	beq loc_8016E14
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	pop {r4,pc}
loc_8016E14:
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x14
	strb r0, [r5,#oBattleObject_CurPhase]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r4,pc}
loc_8016E2A:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	pop {r4,pc}
	.word 0xA0000, 0x60000
	thumb_func_end sub_8016D8C

	thumb_local_start
sub_8016E3C:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	sub r0, #1
	strb r0, [r5,#oBattleObject_CurPhase]
	bge locret_8016E5E
	ldr r0, dword_8016E60 // =0x101000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0x10
	bl object_clearFlag2
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
locret_8016E5E:
	pop {pc}
	.balign 4, 0
dword_8016E60: .word 0x101000
	thumb_func_end sub_8016E3C

	thumb_func_start sub_8016E64
sub_8016E64:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #8
	tst r0, r1
	bne locret_8016EBE
	bl battle_isTimeStop
	bne locret_8016EBE
	ldrh r0, [r5,#oBattleObject_NameID]
	cmp r0, #0x49 
	blt loc_8016E7E
	cmp r0, #0x4e 
	ble loc_8016E84
loc_8016E7E:
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	beq locret_8016EBE
loc_8016E84:
	bl GetBattleMode
	cmp r0, #1
	beq loc_8016E92
	bl battle_isPaused
	bne locret_8016EBE
loc_8016E92:
	bl object_getFlag // () -> int
	ldr r1, dword_8016EC0 // =0x80110c00 
	tst r0, r1
	bne locret_8016EBE
	bl object_getFlag2
	mov r1, #8
	tst r0, r1
	bne locret_8016EBE
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_8016EBA
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
loc_8016EBA:
	bl sprite_update
locret_8016EBE:
	pop {pc}
	.balign 4, 0
dword_8016EC0: .word 0x80110C00
	thumb_func_end sub_8016E64

	thumb_func_start sub_8016EC4
sub_8016EC4:
	push {lr}
	ldr r1, JumpTable8016ED8_p // =JumpTable8016ED8
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
JumpTable8016ED8_p: .word JumpTable8016ED8
JumpTable8016ED8: .word sub_8016EE0+1
	.word sub_8016F1A+1
	thumb_func_end sub_8016EC4

	thumb_local_start
sub_8016EE0:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_801DC36
	mov r0, #0
	strb r0, [r5,#oBattleObject_ChipsHeld]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Chip]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	bl sub_801A7F4
	ldrb r0, [r5,#oBattleObject_Param2]
	cmp r0, #1
	bge loc_8016F0C
	bl relatedToIsBattleOver_800A11C
loc_8016F0C:
	bl sub_802EF5C
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	mov r0, #4
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_8016EE0

	thumb_local_start
sub_8016F1A:
	push {r4,lr}
	bl battle_isTimeStop
	bne locret_8016F54
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x14
	bl spawn_t1_0x0_EffectObject
	ldrb r1, [r0,#oObjectHeader_Flags]
	mov r2, #4
	orr r1, r2
	strb r1, [r0,#oObjectHeader_Flags]
	bl sub_802CDD0
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_74]
	bl sub_80E1A86
	mov r0, r5
	bl RemoveGivenAliveBattleActorFromList
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_8016F54:
	pop {r4,pc}
	thumb_func_end sub_8016F1A

	thumb_func_start sub_8016F56
sub_8016F56:
	push {r4,r6,r7,lr}
	bl sub_800F35C
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r5,#oBattleObject_NameID]
	bl enemy_getStruct1
	mov r7, r0
	mov r0, #0x80
	ldrb r1, [r7]
	ldrb r2, [r7,#1]
	bl sprite_load // (int a1, int a2, int a3) ->
	ldrb r0, [r7,#7]
	cmp r0, #0
	bne loc_8016F7C
	bl sprite_noShadow // () -> void
	b loc_8016F80
loc_8016F7C:
	bl sprite_hasShadow
loc_8016F80:
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r1, #0xff
	strb r1, [r5,#oBattleObject_CurAnimCopy]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_800F334
	bl sprite_setPalette // (int pallete) -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	ldrb r0, [r7,#5]
	ldrb r1, [r5,#oBattleObject_Element]
	orr r1, r0
	strb r1, [r5,#oBattleObject_Element]
	bl GetBattleMode
	cmp r0, #6
	bne loc_8016FBE
	ldrb r0, [r7,#4]
	ldr r1, off_80170A0 // =byte_80170A4
	ldrb r0, [r1,r0]
	cmp r0, #0
	bne loc_8016FBE
	mov r0, #0
	str r0, [r5,#oBattleObject_DamageAndStaminaDamageCounterDisabler]
loc_8016FBE:
	bl object_createCollisionData
	tst r0, r0
	bne loc_8016FCC
	bl object_freeMemory
	b locret_8017092
loc_8016FCC:
	push {r0}
	ldrh r0, [r5,#oBattleObject_NameID]
	bl enemy_getStruct2
	ldrb r4, [r0,#3]
	pop {r0}
	mov r1, #1
	mov r2, #2
	mov r3, #4
	tst r4, r3
	beq loc_8016FE6
	mov r1, #0x10
	mov r2, #2
loc_8016FE6:
	mov r3, #3
	bl object_setupCollisionData
	ldrb r0, [r7,#6]
	bl sub_8019F9E
	mov r3, #0x10
	tst r4, r3
	beq loc_8017000
	mov r0, #1
	lsl r0, r0, #0x1b
	bl object_setFlag1 // (int a1) -> void
loc_8017000:
	mov r3, #8
	tst r4, r3
	beq loc_801700E
	mov r0, #1
	lsl r0, r0, #0x19
	bl object_setFlag1 // (int a1) -> void
loc_801700E:
	mov r3, #4
	tst r4, r3
	beq loc_801701A
	mov r0, #0x20 
	bl object_setFlag1 // (int a1) -> void
loc_801701A:
	mov r3, #2
	tst r4, r3
	beq loc_8017026
	mov r0, #OBJECT_FLAGS_AIRSHOE
	bl object_setFlag1 // (int a1) -> void
loc_8017026:
	mov r3, #1
	tst r4, r3
	beq loc_8017034
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_SUPERARMOR_BIT
	bl object_setFlag1 // (int a1) -> void
loc_8017034:
	bl sub_801DB84
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	bl sub_800F318
	bl GetBattlePanelColumnPattern
	cmp r0, #0x38 
	beq loc_801705C
	cmp r0, #0x30 
	beq loc_801705C
	cmp r0, #0x3c 
	beq loc_801705C
	bl sub_800F2F0
	b loc_8017064
loc_801705C:
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
loc_8017064:
	bl sub_8010DD0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r1, #0x3e 
	bl GetBattleNaviStatsHword
	mov r1, #0x64 
	svc 6
	cmp r0, #0xa
	ble loc_8017080
	mov r0, #0xa
	b loc_8017086
loc_8017080:
	cmp r0, #0
	bgt loc_8017086
	mov r0, #1
loc_8017086:
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	strb r0, [r1,#oAIData_Unk_0c]
	bl sub_800F378
	mov r0, #CUR_STATE_UPDATE
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_8017092:
	pop {r4,r6,r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
	.balign 4, 0
off_80170A0: .word byte_80170A4
byte_80170A4: .byte 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8016F56

	thumb_func_start sub_80170C4
sub_80170C4:
	push {lr}
	bl battle_isPaused
	bne locret_80170D6
	ldr r1, off_80170D8 // =off_80170DC 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_80170D6:
	pop {pc}
	.balign 4, 0
off_80170D8: .word off_80170DC
off_80170DC: .word sub_80170E4+1
	.word sub_8017122+1
	thumb_func_end sub_80170C4

	thumb_local_start
sub_80170E4:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_8012EA8
	bl sub_801DC36
	mov r0, #0
	strb r0, [r5,#oBattleObject_ChipsHeld]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Chip]
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sub_801A7F4
	ldrb r0, [r5,#oBattleObject_Param2]
	cmp r0, #1
	bge loc_8017118
	bl relatedToIsBattleOver_800A11C
loc_8017118:
	bl sub_802EF5C
	mov r0, #4
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_80170E4

	thumb_local_start
sub_8017122:
	push {r4,r7,lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8017168
	bl battle_isTimeStop
	bne locret_80171A4
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r2, [r5,#oBattleObject_AIDataPtr]
	str r0, [r2,#oAIData_Unk_68]
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r4, #1
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x20 
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #3
	bl spawn_t1_0x0_EffectObject
	mov r1, #0x5a 
	strh r1, [r0,#oBattleObject_Timer]
	mov r0, #0x5a 
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8017168:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge loc_801719C
	bl sub_802CDD0
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_74]
	bl sub_80E1A86
	bl sub_8011020
	mov r0, r5
	bl RemoveGivenAliveBattleActorFromList
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	b locret_80171A4
loc_801719C:
	lsr r0, r0, #2
	bcc locret_80171A4
	bl sprite_forceWhitePalette
locret_80171A4:
	pop {r4,r7,pc}
	thumb_func_end sub_8017122

	thumb_func_start sub_80171A6
sub_80171A6:
	push {lr}
	bl battle_isPaused
	bne locret_80171B8
	ldr r1, off_80171BC // =off_80171C0 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_80171B8:
	pop {pc}
	.balign 4, 0
off_80171BC: .word off_80171C0
off_80171C0: .word sub_80171CC+1
	.word sub_80171D8+1
	.word sub_8017274+1
	thumb_func_end sub_80171A6

	thumb_local_start
sub_80171CC:
	push {lr}
	bl sub_80170E4
	bl musicGameState_8000784 // () -> void
	pop {pc}
	thumb_func_end sub_80171CC

	thumb_local_start
sub_80171D8:
	push {r4,r7,lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_801722C
	bl battle_isTimeStop
	bne locret_8017272
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r2, [r5,#oBattleObject_AIDataPtr]
	str r0, [r2,#oAIData_Unk_68]
	ldrh r0, [r5,#oBattleObject_NameID]
	ldr r1, dword_80172E8 // =0x173 
	cmp r0, r1
	blt loc_8017200
	ldr r1, dword_80172EC // =0x17e 
	cmp r0, r1
	ble loc_8017204
loc_8017200:
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
loc_8017204:
	mov r4, #1
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x20 
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #3
	bl spawn_t1_0x0_EffectObject
	mov r1, #0x5a 
	strh r1, [r0,#oBattleObject_Timer]
	mov r0, #0x5a 
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_801722C:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge loc_801726A
	bl sub_802CDD0
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldr r0, [r0,#oAIData_Unk_74]
	bl sub_80E1A86
	bl sub_8011020
	mov r0, r5
	bl RemoveGivenAliveBattleActorFromList
	mov r0, #4
	mov r1, #4
	bl SetScreenFade // (int a1, int a2) -> void
	mov r4, #1
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	add r7, #0x74 
	bl sub_80E1A6A
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_8017272
loc_801726A:
	lsr r0, r0, #2
	bcc locret_8017272
	bl sprite_forceWhitePalette
locret_8017272:
	pop {r4,r7,pc}
	thumb_func_end sub_80171D8

	thumb_local_start
sub_8017274:
	push {r4,lr}
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne loc_8017284
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	b locret_801728C
loc_8017284:
	lsr r0, r0, #2
	bcc locret_801728C
	bl sprite_forceWhitePalette
locret_801728C:
	pop {r4,pc}
	thumb_func_end sub_8017274

	thumb_local_start
sub_801728E:
	push {lr}
	bl sub_800A8F8
	tst r0, r0
	beq locret_80172C0
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq locret_80172C0
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802E070
	mov r1, #0x50 
	ldrb r1, [r0,r1]
	tst r1, r1
	beq locret_80172C0
	bl sub_800A704
	mov r1, #0x1f
	and r0, r1
	ldr r1, off_80172C4 // =byte_80172C8
	ldrb r0, [r1,r0]
	lsl r1, r0, #5
	add r0, r0, r1
	bl sprite_setColorShader
locret_80172C0:
	pop {pc}
	.balign 4, 0
off_80172C4: .word byte_80172C8
byte_80172C8: .byte 0x0, 0x2, 0x4, 0x6, 0x8, 0xA, 0xC, 0xE, 0x10, 0x12, 0x14, 0x16
	.byte 0x18, 0x1A, 0x1C, 0x1E, 0x1E, 0x1C, 0x1A, 0x18, 0x16, 0x14, 0x12, 0x10
	.word byte_80A0C0E
	.word 0x20406
dword_80172E8: .word 0x173
dword_80172EC: .word 0x17E
	thumb_func_end sub_801728E

	thumb_func_start playerObject_init_80172F0
playerObject_init_80172F0:
	push {r4,r7,lr}
	bl sub_800F35C
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x17
	bl GetBattleNaviStatsByte
	mov r2, r0
	mov r1, #0x2c 
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, #0x80
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	bl sprite_hasShadow
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sub_801002C
	bl sprite_setPalette // (int pallete) -> void
	bl object_getFlip // () -> int
	bl sprite_setFlip
	bl sub_80142B0
	bl object_createCollisionData
	tst r0, r0
	bne loc_801735A
	bl object_freeMemory
	b locret_80173F2
loc_801735A:
	push {r0}
	bl sub_80107C0
	pop {r0}
	mov r1, #1
	mov r2, #2
	bl object_setupCollisionData
	bl sub_80141C8
	bl sub_8013892
	bl sub_801086C
	mov r1, #0x29
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #0
	bne loc_801738A
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_8015B22
loc_801738A:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x2c
	bl GetBattleNaviStatsByte
	bl sub_8011268
	bl sub_80144C0
	bl sub_8013E58
	bl sub_801DB84
	mov r0, #3
	bl sub_8018856
	neg r1, r1
	bl sub_801DC06
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_80173C6
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	beq loc_80173C6
	bl sub_801DC36
loc_80173C6: .align 1, 0
	bl sub_80141F4
	mov r7, #0x58 
	add r7, r7, r4
	bl spawnChargeShotChargeObject_80E0F02
	bl sub_800F378
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte
	cmp r0, #0
	bne loc_80173E6
	bl sub_8010DD0
loc_80173E6:
	bl sub_802DFC8
	bl sub_8013FF8
	mov r0, #CUR_STATE_UPDATE
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_80173F2:
	pop {r4,r7,pc}
	thumb_func_end playerObject_init_80172F0

	thumb_func_start sub_80173F4
sub_80173F4:
	push {lr}
	bl sprite_forceWhitePalette
	ldr r1, off_8017408 // =off_801740C 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0
off_8017408: .word off_801740C
off_801740C: .word sub_801741C+1
	.word sub_801746E+1
	.word sub_80174AA+1
	.word sub_80174BE+1
	thumb_func_end sub_80173F4

	thumb_local_start
sub_801741C:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	bl sub_801A5E2
	bl sub_80101C4
	bl sub_8012EA8
	bl sub_801DC36
	mov r0, #0
	strb r0, [r5,#oBattleObject_ChipsHeld]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Chip]
	bl object_getFlip // () -> int
	bl sprite_setFlip
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	bl sub_801A7F4
	ldr r2, [r5,#oBattleObject_AIDataPtr]
	ldr r1, [r2,#oAIData_Unk_58]
	tst r1, r1
	beq loc_801745A
	mov r1, #0
	str r1, [r2,#oAIData_Unk_58]
loc_801745A:
	ldrb r0, [r5,#oBattleObject_Param2]
	cmp r0, #1
	bge loc_8017464
	bl relatedToIsBattleOver_800A11C
loc_8017464:
	bl sub_802EF5C
	mov r0, #4
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_801741C

	thumb_local_start
sub_801746E:
	push {lr}
	bl battle_isTimeStop
	bne locret_80174A8
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0
	str r0, [r1,#oAIData_Unk_5c]
	str r0, [r1,#oAIData_Unk_68]
	mov r0, #0x6c 
	bl PlaySoundEffect
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #3
	bl spawn_t1_0x0_EffectObject
	bl spawn_t1_0x0_EffectObject
	mov r0, #0x15
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_80174A8:
	pop {pc}
	thumb_func_end sub_801746E

	thumb_local_start
sub_80174AA:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bne locret_80174BC
	mov r0, #0
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #0xc
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_80174BC:
	pop {pc}
	thumb_func_end sub_80174AA

	thumb_local_start
sub_80174BE:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	add r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	cmp r0, #0x20 
	beq loc_80174E0
	lsr r0, r0, #1
	push {r0}
	mov r1, r0
	bl sprite_setMosaicSize
	pop {r0}
	sub r0, #0x10
	neg r0, r0
	bl sprite_setAlpha_8002c7a
	pop {pc}
loc_80174E0:
	bl sprite_clearMosaic
	bl sprite_disableAlpha
	bl sub_802CDD0
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_8011020
	mov r0, #8
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_80174BE

	thumb_func_start sub_80174FE
sub_80174FE:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8017582
	bl sub_800F3E8
	ldr r0, dword_80175B0 // =0x400400 
	bl object_setFlag1 // (int a1) -> void
	bl sub_801A284
	bl sub_801A29A
	bl sub_801A2B0
	bl sub_80101C4
	ldr r0, dword_80175B4 // =0x20005f 
	bl ClearAIDataUnk0x48Flag
	ldr r0, dword_80175A4 // =0x100041 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_8017554
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
loc_8017554:
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl sub_8011450
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	mov r2, #1
	bl sub_800AB46
	mov r0, #0x17
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8017582:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge locret_80175A2
	ldr r0, dword_80175B0 // =0x400400 
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, byte_80175A8 // =0x3f
	bl ClearAIData_Unk_44_Flag
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_80175A2:
	pop {pc}
	.balign 4, 0
dword_80175A4: .word 0x100041
byte_80175A8: .byte 0x3F, 0x4, 0x0, 0x10, 0x0, 0x4, 0x0, 0x0
dword_80175B0: .word 0x400400
dword_80175B4: .word 0x20005F
	thumb_func_end sub_80174FE

	thumb_func_start sub_80175B8
sub_80175B8:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8017628
	bl sub_800F394
	ldr r0, dword_8017674 // =0x400000 
	bl object_setFlag1 // (int a1) -> void
	ldr r0, byte_801766C // =0x41
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	ldr r0, dword_8017684 // =0x20005f 
	bl ClearAIDataUnk0x48Flag
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_8017602
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
loc_8017602:
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	mov r2, #1
	bl sub_800AB46
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8017628:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r1, [r0,#oAIData_JoypadPressed]
	tst r1, r1
	beq loc_8017646
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x1c
	ldrsh r1, [r0,r2]
	sub r1, #1
	strh r1, [r0,r2]
	bgt loc_8017646
	mov r1, #0
	strh r1, [r0,r2]
	ldr r0, off_8017678 // =0x800 
	bl object_clearFlag // (int bitfield) -> void
loc_8017646:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xb
	tst r0, r1
	bne locret_801766A
	ldr r0, dword_801767C // =0x1000003f 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_8017680 // =0x400000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_801766A:
	pop {pc}
	.balign 4, 0
byte_801766C: .byte 0x41, 0x4, 0x10, 0x0, 0x0, 0x4, 0x0, 0x0
dword_8017674: .word 0x400000
off_8017678: .word 0x800
dword_801767C: .word 0x1000003F
dword_8017680: .word 0x400000
dword_8017684: .word 0x20005F
	thumb_func_end sub_80175B8

	thumb_func_start sub_8017688
sub_8017688:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_8017708
	bl sub_800F3B0
	ldr r0, dword_8017754 // =0x400000 
	bl object_setFlag1 // (int a1) -> void
	ldr r0, byte_801774C // =0x41
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801A67E
	bl sub_80101C4
	bl object_clearInvulnerableTime
	mov r0, #0x19
	add r0, #0xff
	bl PlaySoundEffect
	ldr r0, dword_8017764 // =0x20005f 
	bl ClearAIDataUnk0x48Flag
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_80176E2
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
loc_80176E2:
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	mov r2, #1
	bl sub_800AB46
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_8017708:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r1, [r0,#oAIData_JoypadPressed]
	tst r1, r1
	beq loc_8017726
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x2a 
	ldrsh r1, [r0,r2]
	sub r1, #1
	strh r1, [r0,r2]
	bgt loc_8017726
	mov r1, #0
	strh r1, [r0,r2]
	ldr r0, dword_8017758 // =0x10000 
	bl object_clearFlag // (int bitfield) -> void
loc_8017726:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x10
	tst r0, r1
	bne locret_801774A
	ldr r0, dword_801775C // =0x1000003f 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_8017760 // =0x400000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_801774A:
	pop {pc}
	.balign 4, 0
byte_801774C: .byte 0x41, 0x4, 0x10, 0x0, 0x0, 0x4, 0x0, 0x0
dword_8017754: .word 0x400000
dword_8017758: .word 0x10000
dword_801775C: .word 0x1000003F
dword_8017760: .word 0x400000
dword_8017764: .word 0x20005F
	thumb_func_end sub_8017688

	thumb_func_start sub_8017768
sub_8017768:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_80177E4
	bl sub_800F3CC
	ldr r0, dword_8017850 // =0x400000 
	bl object_setFlag1 // (int a1) -> void
	ldr r0, byte_8017848 // =0x41
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	bl object_clearInvulnerableTime
	mov r0, #0x2e 
	add r0, #0xff
	bl PlaySoundEffect
	ldr r0, dword_8017860 // =0x20005f 
	bl ClearAIDataUnk0x48Flag
	bl sub_8012EA8
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_80177BE
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
loc_80177BE:
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	mov r2, #1
	bl sub_800AB46
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_80177E4:
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r1, [r0,#oAIData_JoypadPressed]
	tst r1, r1
	beq loc_8017802
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x2c 
	ldrsh r1, [r0,r2]
	sub r1, #1
	strh r1, [r0,r2]
	bgt loc_8017802
	mov r1, #0
	strh r1, [r0,r2]
	ldr r0, dword_8017854 // =0x80000000 
	bl object_clearFlag // (int bitfield) -> void
loc_8017802:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x2c 
	ldrsh r1, [r0,r2]
	lsr r1, r1, #2
	mov r0, #0x1f
	and r0, r1
	ldr r1, off_8017864 // =byte_8017868 
	ldrsb r0, [r1,r0]
	lsl r0, r0, #0x10
	str r0, [r5,#oBattleObject_Z]
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x1f
	tst r0, r1
	bne locret_8017846
	ldr r0, dword_8017858 // =0x1000003f 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_801785C // =0x400000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	mov r0, #0x25 
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_8017846:
	pop {pc}
	.balign 4, 0
byte_8017848: .byte 0x41, 0x4, 0x10, 0x0, 0x0, 0x4, 0x0, 0x0
dword_8017850: .word 0x400000
dword_8017854: .word 0x80000000
dword_8017858: .word 0x1000003F
dword_801785C: .word 0x400000
dword_8017860: .word 0x20005F
off_8017864: .word byte_8017868
byte_8017868: .byte 0x1, 0x2, 0x3, 0x4, 0x4, 0x5, 0x5, 0x6, 0x6, 0x6, 0x5, 0x4, 0x3, 0x2, 0x1, 0x0, 0xFF
	.byte 0xFE, 0xFD, 0xFC, 0xFC, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0x0
	thumb_func_end sub_8017768

	thumb_func_start sub_8017888
sub_8017888:
	push {r4,r7,lr}
	bl sub_800A8F8
	beq loc_80178AC
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_80182B4
	ldrb r1, [r0,#1]
	cmp r1, #2
	bne loc_80178AC
	mov r7, #0x40 
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	add r7, r7, r0
	ldr r0, [r7]
	cmp r0, #0
	bne loc_80178AC
	bl sub_80E1620
loc_80178AC:
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {r4,r7,pc}
	thumb_func_end sub_8017888

	thumb_func_start sub_80178B6
sub_80178B6:
	push {lr}
	ldr r1, off_80178C4 // =off_80178C8 
	ldrb r0, [r5,#oBattleObject_Unk_0d]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_80178C4: .word off_80178C8
off_80178C8: .word sub_80178D4+1
	.word sub_8017992+1
	.word sub_8017A38+1
	thumb_func_end sub_80178B6

	thumb_local_start
sub_80178D4:
	push {r6,r7,lr}
	bl sub_800F404
	ldr r0, dword_8017A90 // =0x500000 
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_68]
	bl object_getFlag // () -> int
	mov r2, #2
	mov r1, #1
	lsl r1, r1, #0xb
	tst r0, r1
	bne loc_8017900
	mov r2, #1
	ldr r1, dword_8017A94 // =0x20000 
	tst r0, r1
	beq loc_8017900
	mov r2, #0
loc_8017900:
	strb r2, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl sub_8011450
	bl sub_8012EA8
	bl object_getFlip // () -> int
	bl sprite_setFlip
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	strh r0, [r5,#oBattleObject_Z_3c]
	ldr r0, dword_8017A98 // =0x1441 
	bl object_clearFlag // (int bitfield) -> void
	bl sub_80101C4
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	mov r2, #1
	bl sub_800AB46
	bl sub_800E45E
	strb r0, [r5,#oBattleObject_Unk_1c]
	strb r1, [r5,#oBattleObject_Unk_1d]
	strh r2, [r5,#oBattleObject_Timer2]
	tst r2, r2
	beq loc_8017988
	ldrb r3, [r5,#oBattleObject_PanelX]
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_PanelY]
	add r1, r1, r3
	mov r6, r0
	mov r7, r1
	bl sub_800E5AC
	beq loc_8017988
	mov r1, #0x1c
	ldrsb r1, [r5,r1]
	ldr r0, dword_8017A9C // =0xa0000 
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldr r0, dword_8017AA0 // =0x60000 
	mul r0, r1
	str r0, [r5,#oBattleObject_YVelocity]
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r6,r7,pc}
loc_8017988:
	mov r0, #0x18
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r6,r7,pc}
	thumb_func_end sub_80178D4

	thumb_local_start
sub_8017992:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r0
	mov r4, r1
	ldr r1, [r5,#oBattleObject_X]
	ldr r0, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	bne loc_80179C2
	mov r2, r4
	ldr r1, [r5,#oBattleObject_Y]
	ldr r0, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	beq loc_8017A2E
loc_80179C2:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getPanelDataOffset
	ldrb r4, [r0,#oPanelData_Type]
	cmp r4, #7
	bne loc_80179E8
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r0,#oCollisionData_PrimaryElement]
	cmp r0, #2
	beq loc_80179E8
	ldrh r0, [r5,#oBattleObject_Timer2]
	add r0, #1
	strh r0, [r5,#oBattleObject_Timer2]
	b loc_80179E8
loc_80179E8:
	ldrh r0, [r5,#oBattleObject_Timer2]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer2]
	ble loc_8017A18
	mov r2, #0x1c
	ldrsb r2, [r5,r2]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	add r0, r0, r2
	mov r2, #0x1d
	ldrsb r2, [r5,r2]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	add r1, r1, r2
	mov r6, r0
	mov r7, r1
	bl sub_800E5AC
	beq loc_8017A18
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	pop {r4,pc}
loc_8017A18:
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x14
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r4,pc}
loc_8017A2E:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	pop {r4,pc}
	thumb_func_end sub_8017992

	thumb_local_start
sub_8017A38:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge locret_8017A8E
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xb
	tst r0, r1
	beq loc_8017A5E
	ldr r0, dword_8017AA4 // =0x100000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_8017A8E
loc_8017A5E:
	ldr r0, dword_8017AA8 // =0x501800 
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, dword_8017AAC // =0x1000043f 
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_8017AB0 // =0x200000 
	bl ClearAIDataUnk0x48Flag
	mov r0, #0x10
	bl object_clearFlag2
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl sub_8011450
	mov r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_8017A8E:
	pop {pc}
	.balign 4, 0
dword_8017A90: .word 0x500000
dword_8017A94: .word 0x20000
dword_8017A98: .word 0x1441
dword_8017A9C: .word 0xA0000
dword_8017AA0: .word 0x60000
dword_8017AA4: .word 0x100000
dword_8017AA8: .word 0x501800
dword_8017AAC: .word 0x1000043F
dword_8017AB0: .word 0x200000
	thumb_func_end sub_8017A38

	thumb_local_start
sub_8017AB4:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x50
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne loc_8017B64
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	beq loc_8017B64
	bl GetAIData_Unk_44_Flag
	ldr r1, off_8017C94 // =0x800 
	tst r0, r1
	beq loc_8017B64
	bl sub_800BEDA
	tst r0, r0
	beq loc_8017B5E
	bl sub_8010004
	add r1, r0, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	beq loc_8017B5E
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #1
	tst r0, r1
	beq loc_8017B5E
	mov r0, #0
	add r7, sp, #0
	bl useChipRelated_80127C0
	cmp r0, #0x15
	bne loc_8017B26
	push {r7}
	ldr r6, [r7,#8]
	ldr r4, [r7,#0xc]
	ldrb r1, [r7,#3]
	lsl r1, r1, #2
	ldr r3, off_8017BB8 // =off_802CCB4 
	ldr r3, [r3,r1]
	ldrb r2, [r7,#2]
	ldrh r1, [r7,#6]
	lsl r1, r1, #0x10
	ldrh r7, [r7,#0x14]
	add r7, r7, r1
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov lr, pc
	bx r3
	pop {r7}
	b loc_8017B4A
loc_8017B26:
	cmp r0, #0x1b
	bne loc_8017B48
	push {r7}
	ldrb r2, [r7,#2]
	ldrb r3, [r7,#3]
	ldr r4, [r7,#0xc]
	ldr r6, [r7,#8]
	ldrh r1, [r7,#6]
	lsl r1, r1, #0x10
	ldrh r7, [r7,#0x14]
	add r7, r7, r1
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_80E192C
	pop {r7}
	b loc_8017B4A
loc_8017B48:
	b loc_8017B5E
loc_8017B4A:
	mov r2, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0
	bl loc_800BF30
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8EE
	bl sub_800FC7C
loc_8017B5E:
	ldr r0, off_8017C98 // =0x80c 
	bl ClearAIData_Unk_44_Flag
loc_8017B64:
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	tst r0, r0
	bne loc_8017B7A
	ldrh r0, [r5,#oBattleObject_X16]
	strh r0, [r5,#oBattleObject_Unk_30]
	ldrh r0, [r5,#oBattleObject_Z16]
	strh r0, [r5,#oBattleObject_Unk_32]
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_19]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PreventAnim]
loc_8017B7A:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x80
	ldrh r1, [r0,r1]
	tst r1, r1
	beq loc_8017B88
	mov r0, #0x1e
	strb r0, [r5,#oBattleObject_Unk_19]
loc_8017B88:
	ldrb r0, [r5,#oBattleObject_Unk_19]
	tst r0, r0
	beq loc_8017BAA
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	ldrh r1, [r5,#oBattleObject_Unk_30]
	lsl r1, r1, #0x10
	ldr r2, [r5,#oBattleObject_Y]
	ldrh r3, [r5,#oBattleObject_Unk_32]
	lsl r3, r3, #0x10
	mov r0, #3
	bl AddRandomVarianceToTwoCoords
	mov r0, #0x34 
	add r0, r0, r5
	stmia r0!, {r1-r3}
	b loc_8017BB2
loc_8017BAA:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	strh r0, [r5,#oBattleObject_X16]
	ldrh r0, [r5,#oBattleObject_Unk_32]
	strh r0, [r5,#oBattleObject_Z16]
loc_8017BB2:
	add sp, sp, #0x50
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8017BB8: .word off_802CCB4
	.word off_802CD5C
	thumb_func_end sub_8017AB4

	thumb_local_start
sub_8017BC0:
	push {r4,r6,r7,lr}
	ldr r6, [r5,#oBattleObject_AIDataPtr]
	mov r7, #0xa0
	add r7, r7, r6
	bl GetAIDataUnk0x48Flag
	mov r1, #0x80
	tst r0, r1
	beq loc_8017BD8
	bl sub_8014A38
	pop {r4,r6,r7,pc}
loc_8017BD8:
	bl GetAIDataUnk0x48Flag
	ldr r1, off_8017C9C // =0x100 
	tst r0, r1
	beq loc_8017BE8
	bl sub_8015614
	pop {r4,r6,r7,pc}
loc_8017BE8:
	bl GetAIDataUnk0x48Flag
	ldr r1, off_8017CA0 // =0x1000 
	tst r0, r1
	beq loc_8017BF8
	bl sub_802D714
	pop {r4,r6,r7,pc}
loc_8017BF8:
	bl GetAIDataUnk0x48Flag
	ldr r1, off_8017CA4 // =0x2000 
	tst r0, r1
	beq loc_8017C0C
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_03]
	bl sub_802D926
	pop {r4,r6,r7,pc}
loc_8017C0C:
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_8017CA8 // =0x4000 
	tst r0, r1
	beq loc_8017C2A
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	mov r0, #0x80
	bl SetAIDataUnk0x48Flag
	mov r0, #0x1c
	bl object_setAttack0
	pop {r4,r6,r7,pc}
loc_8017C2A:
	bl GetAIData_Unk_44_Flag
	mov r1, #0x40 
	tst r0, r1
	beq loc_8017C56
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	ldr r0, off_8017C9C // =0x100 
	bl SetAIDataUnk0x48Flag
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_8017C4E
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_8017C4E:
	mov r0, #0x1c
	bl object_setAttack0
	pop {r4,r6,r7,pc}
loc_8017C56:
	bl GetAIData_Unk_44_Flag
	ldr r1, off_8017CAC // =LCDControl 
	tst r0, r1
	beq loc_8017C74
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	ldr r0, off_8017CA0 // =0x1000 
	bl SetAIDataUnk0x48Flag
	mov r0, #0x1c
	bl object_setAttack0
	pop {r4,r6,r7,pc}
loc_8017C74:
	bl GetAIData_Unk_44_Flag
	ldr r1, byte_8017CB0 // =0x0 
	tst r0, r1
	beq locret_8017C92
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	ldr r0, off_8017CA4 // =0x2000 
	bl SetAIDataUnk0x48Flag
	mov r0, #0x1c
	bl object_setAttack0
	pop {r4,r6,r7,pc}
locret_8017C92:
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_8017C94: .word 0x800
off_8017C98: .word 0x80C
off_8017C9C: .word 0x100
off_8017CA0: .word 0x1000
off_8017CA4: .word 0x2000
dword_8017CA8: .word 0x4000
off_8017CAC: .word LCDControl
byte_8017CB0: .byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8017BC0

	thumb_func_start sub_8017CC0
sub_8017CC0:
	push {lr}
	ldr r1, off_8017CD0 // =off_8017CD4 
	ldrb r0, [r5,#oBattleObject_Unk_0d]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_8017CD0: .word off_8017CD4
off_8017CD4: .word sub_8017CE0+1
	.word sub_8017D64+1
	.word sub_8017E0A+1
	thumb_func_end sub_8017CC0

	thumb_local_start
sub_8017CE0:
	push {r6,r7,lr}
	mov r0, #1
	lsl r0, r0, #0x14
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldr r0, off_8017D58 // =0x1040 
	bl object_clearFlag // (int bitfield) -> void
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	bl sub_800F598
	strb r0, [r5,#oBattleObject_Unk_1c]
	strb r1, [r5,#oBattleObject_Unk_1d]
	strb r2, [r5,#oBattleObject_PhaseInitialized]
	tst r2, r2
	beq loc_8017D4E
	ldrb r3, [r5,#oBattleObject_PanelX]
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_PanelY]
	add r1, r1, r3
	mov r6, r0
	mov r7, r1
	bl sub_800F50C
	beq loc_8017D4E
	mov r1, #0x1c
	ldrsb r1, [r5,r1]
	ldr r0, dword_8017D5C // =0xa0000 
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldr r0, dword_8017D60 // =0x60000 
	mul r0, r1
	str r0, [r5,#oBattleObject_YVelocity]
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r6,r7,pc}
loc_8017D4E:
	mov r0, #0x18
	strb r0, [r5,#oBattleObject_CurPhase]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r6,r7,pc}
	.balign 4, 0
off_8017D58: .word 0x1040
dword_8017D5C: .word 0xA0000
dword_8017D60: .word 0x60000
	thumb_func_end sub_8017CE0

	thumb_local_start
sub_8017D64:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r0
	mov r4, r1
	ldr r1, [r5,#oBattleObject_X]
	ldr r0, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	bne loc_8017D94
	mov r2, r4
	ldr r1, [r5,#oBattleObject_Y]
	ldr r0, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	beq loc_8017E00
loc_8017D94:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r0,#oCollisionData_PrimaryElement]
	cmp r0, #2
	beq loc_8017DBA
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getPanelDataOffset
	ldrb r0, [r0,#oPanelData_Type]
	cmp r0, #7
	bne loc_8017DBA
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	add r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b loc_8017DBA
loc_8017DBA:
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	sub r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	ble loc_8017DEA
	mov r2, #0x1c
	ldrsb r2, [r5,r2]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	add r0, r0, r2
	mov r2, #0x1d
	ldrsb r2, [r5,r2]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	add r1, r1, r2
	mov r6, r0
	mov r7, r1
	bl sub_800F50C
	beq loc_8017DEA
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	pop {r4,pc}
loc_8017DEA:
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x14
	strb r0, [r5,#oBattleObject_CurPhase]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r4,pc}
loc_8017E00:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	pop {r4,pc}
	thumb_func_end sub_8017D64

	thumb_local_start
sub_8017E0A:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	sub r0, #1
	strb r0, [r5,#oBattleObject_CurPhase]
	bge locret_8017E24
	mov r0, #1
	lsl r0, r0, #0x14
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
locret_8017E24:
	pop {pc}
	thumb_func_end sub_8017E0A

	thumb_func_start sub_8017E26
sub_8017E26:
	push {lr}
	ldr r1, off_8017E34 // =off_8017E38 
	ldrb r0, [r5,#oBattleObject_Unk_0d]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8017E34: .word off_8017E38
off_8017E38: .word sub_8017E44+1
	.word sub_8017F38+1
	.word sub_8017FE6+1
	thumb_func_end sub_8017E26

	thumb_local_start
sub_8017E44:
	push {r4,r6,r7,lr}
	mov r0, #1
	lsl r0, r0, #0x14
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldr r0, off_8017F2C // =0x1040 
	bl object_clearFlag // (int bitfield) -> void
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	bl sub_800F598
	strb r0, [r5,#oBattleObject_Unk_1c]
	strb r1, [r5,#oBattleObject_Unk_1d]
	strb r3, [r5,#oBattleObject_Unk_0c]
	mov r2, #6
	strb r2, [r5,#oBattleObject_PhaseInitialized]
	tst r2, r2
	beq loc_8017F08
	mov r4, #0
	ldrb r2, [r5,#oBattleObject_Unk_0c]
	cmp r2, #1
	beq loc_8017E88
	add r4, #4
loc_8017E88:
	ldrb r0, [r5,#oBattleObject_Unk_1c]
	cmp r0, r2
	beq loc_8017E90
	add r4, #2
loc_8017E90:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	ldrb r2, [r5,#oBattleObject_Unk_0c]
	mov r1, #0x20 
	tst r0, r1
	beq loc_8017EA2
	add r4, #1
loc_8017EA2:
	ldr r0, off_8017F20 // =byte_8017F24
	ldrb r0, [r0,r4]
	cmp r0, #0
	beq loc_8017EC8
	strb r0, [r5,#oBattleObject_Unk_0c]
	mov r0, #0x1c
	ldrsb r0, [r5,r0]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldrb r3, [r5,#oBattleObject_PanelX]
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_PanelY]
	add r1, r1, r3
	mov r6, r0
	mov r7, r1
	bl sub_800F55C
	beq loc_8017F08
	b loc_8017EE6
loc_8017EC8:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0c]
	mov r0, #0x1c
	ldrsb r0, [r5,r0]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldrb r3, [r5,#oBattleObject_PanelX]
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_PanelY]
	add r1, r1, r3
	mov r6, r0
	mov r7, r1
	bl sub_800F534
	beq loc_8017F08
loc_8017EE6:
	mov r1, #0x1c
	ldrsb r1, [r5,r1]
	ldr r0, dword_8017F30 // =0xa0000 
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	mov r1, #0x1d
	ldrsb r1, [r5,r1]
	ldr r0, dword_8017F34 // =0x60000 
	mul r0, r1
	str r0, [r5,#oBattleObject_YVelocity]
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	mov r0, #4
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r4,r6,r7,pc}
loc_8017F08:
	mov r0, #0x18
	strb r0, [r5,#oBattleObject_CurPhase]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r4,r6,r7,pc}
	.word 0, 0, 0
	.balign 4, 0
off_8017F20: .word byte_8017F24
byte_8017F24: .byte 0x0, 0x0, 0x1, 0x1, 0x0, 0x0, 0x2, 0x2
off_8017F2C: .word 0x1040
dword_8017F30: .word 0xA0000
dword_8017F34: .word 0x60000
	thumb_func_end sub_8017E44

	thumb_local_start
sub_8017F38:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r0
	mov r4, r1
	ldr r1, [r5,#oBattleObject_X]
	ldr r0, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	bne loc_8017F68
	mov r2, r4
	ldr r1, [r5,#oBattleObject_Y]
	ldr r0, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	bl IsR2BetweenR0AndR1
	tst r0, r0
	beq loc_8017FDC
loc_8017F68:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r0,#oCollisionData_PrimaryElement]
	cmp r0, #2
	beq loc_8017F8E
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getPanelDataOffset
	ldrb r0, [r0,#oPanelData_Type]
	cmp r0, #7
	bne loc_8017F8E
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	add r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b loc_8017F8E
loc_8017F8E:
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	sub r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	ble loc_8017FC6
	mov r2, #0x1c
	ldrsb r2, [r5,r2]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	add r0, r0, r2
	mov r2, #0x1d
	ldrsb r2, [r5,r2]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	add r1, r1, r2
	mov r6, r0
	mov r7, r1
	ldrb r2, [r5,#oBattleObject_Unk_0c]
	cmp r2, #0
	bne loc_8017FB6
	bl sub_800F534
	b loc_8017FBA
loc_8017FB6:
	bl sub_800F55C
loc_8017FBA:
	beq loc_8017FC6
	mov r0, r6
	mov r1, r7
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	pop {r4,pc}
loc_8017FC6:
	ldrh r0, [r5,#oBattleObject_FuturePanelXY]
	strh r0, [r5,#oBattleObject_PanelXY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x14
	strb r0, [r5,#oBattleObject_CurPhase]
	mov r0, #8
	strb r0, [r5,#oBattleObject_Unk_0d]
	pop {r4,pc}
loc_8017FDC:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	pop {r4,pc}
	thumb_func_end sub_8017F38

	thumb_local_start
sub_8017FE6:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	sub r0, #1
	strb r0, [r5,#oBattleObject_CurPhase]
	bge locret_8018000
	mov r0, #1
	lsl r0, r0, #0x14
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, [r5,#oBattleObject_Unk_5c]
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
locret_8018000:
	pop {pc}
	thumb_func_end sub_8017FE6

	thumb_local_start
sub_8018002:
	push {lr}
	ldr r1, off_8018010 // =off_8018014 
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8018010: .word off_8018014
off_8018014: .word sub_801802C+1
	.word sub_8018076+1
	.word sub_8018094+1
	.word sub_80180A8+1
	.word sub_80180EC+1
	.word nullsub_57+1
	thumb_func_end sub_8018002

	thumb_local_start
sub_801802C:
	push {lr}
	bl object_getFlag2
	mov r2, #0
	ldr r1, off_8018294 // =0x400 
	tst r0, r1
	bne loc_801803C
	mov r2, #1
loc_801803C:
	strb r2, [r5,#oBattleObject_Alliance]
	ldr r0, off_8018298 // =0xc00 
	bl object_clearFlag2
	ldr r0, off_801829C // =LCDControl 
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0x40 
	lsl r0, r0, #0x10
	ldr r1, [r5,#oBattleObject_Z]
	sub r0, r0, r1
	mov r1, #0x20 
	svc 6
	str r0, [r5,#oBattleObject_ZVelocity]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	mov r0, #0x20 
	strb r0, [r5,#oBattleObject_Unk_19]
	mov r0, #0x2b 
	add r0, #0xff
	bl PlaySoundEffect
	bl object_clearCollisionRegion // () -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_PreventAnim]
	pop {pc}
	thumb_func_end sub_801802C

	thumb_local_start
sub_8018076:
	push {lr}
	ldr r0, [r5,#oBattleObject_Z]
	ldr r1, [r5,#oBattleObject_ZVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Z]
	ldrb r0, [r5,#oBattleObject_Unk_19]
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	bne locret_8018092
	mov r0, #0x40 
	lsl r0, r0, #0x10
	str r0, [r5,#oBattleObject_Z]
	mov r0, #8
	strb r0, [r5,#oBattleObject_PreventAnim]
locret_8018092:
	pop {pc}
	thumb_func_end sub_8018076

	thumb_local_start
sub_8018094:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Unk_1e_Unk_1f]
	strb r0, [r5,#oBattleObject_Unk_19]
	ldrh r0, [r5,#oBattleObject_X16]
	strh r0, [r5,#oBattleObject_Unk_30]
	ldrh r0, [r5,#oBattleObject_Z16]
	strh r0, [r5,#oBattleObject_Unk_32]
	mov r0, #0xc
	strb r0, [r5,#oBattleObject_PreventAnim]
	pop {pc}
	thumb_func_end sub_8018094

	thumb_local_start
sub_80180A8:
	push {r7,lr}
	ldrh r1, [r5,#oBattleObject_Unk_30]
	lsl r1, r1, #0x10
	ldr r2, [r5,#oBattleObject_Y]
	ldrh r3, [r5,#oBattleObject_Unk_32]
	lsl r3, r3, #0x10
	mov r0, #3
	bl AddRandomVarianceToTwoCoords
	mov r7, #0x34 
	add r7, r7, r5
	stmia r7!, {r1-r3}
	ldrb r0, [r5,#oBattleObject_Unk_19]
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	bne locret_80180EA
	ldrh r0, [r5,#oBattleObject_Unk_30]
	strh r0, [r5,#oBattleObject_X16]
	ldrh r0, [r5,#oBattleObject_Unk_32]
	strh r0, [r5,#oBattleObject_Z16]
	ldrb r0, [r5,#oBattleObject_Unk_1c]
	ldrb r1, [r5,#oBattleObject_Unk_1d]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl sub_800F768
	strb r0, [r5,#oBattleObject_Unk_19]
	mov r0, #0xd
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #0x10
	strb r0, [r5,#oBattleObject_PreventAnim]
locret_80180EA:
	pop {r7,pc}
	thumb_func_end sub_80180A8

	thumb_local_start
sub_80180EC:
	push {r4,r6,r7,lr}
	mov r7, #0x34 
	add r7, r7, r5
	ldmia r7!, {r0-r4,r6}
	add r0, r0, r3
	add r1, r1, r4
	sub r2, r2, r6
	mov r7, #0x34 
	add r7, r7, r5
	stmia r7!, {r0-r2}
	ldrb r0, [r5,#oBattleObject_Unk_19]
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	bne locret_8018132
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r5,#oBattleObject_Element]
	mov r3, #0
	ldr r4, dword_8018134 // =0x6050001 
	ldr r6, [r5,#oBattleObject_DamageAndStaminaDamageCounterDisabler]
	mov r7, #3
	bl object_spawnDimmingCollisionRegion
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_8018132:
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_8018134: .word 0x6050001
	thumb_func_end sub_80180EC

	thumb_local_start
nullsub_57:
	mov pc, lr
	thumb_func_end nullsub_57

	thumb_local_start
sub_801813A:
	push {lr}
	ldr r1, off_8018148 // =off_801814C 
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8018148: .word off_801814C
off_801814C: .word sub_8018154+1
	.word sub_8018186+1
	thumb_func_end sub_801813A

	thumb_local_start
sub_8018154:
	push {lr}
	bl object_getFlag2
	ldr r1, dword_80182A0 // =0x10000000 
	ldr r2, off_80182A4 // =0x1000 
	tst r0, r2
	bne loc_8018164
	ldr r1, dword_80182A8 // =0x20000000 
loc_8018164:
	mov r0, r1
	bl object_setFlag1 // (int a1) -> void
	ldr r0, off_80182AC // =0x3000 
	bl object_clearFlag2
	mov r0, #0x3c 
	strb r0, [r5,#oBattleObject_Unk_19]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_removePanelReserve
	bl object_clearCollisionRegion // () -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_PreventAnim]
	pop {pc}
	thumb_func_end sub_8018154

	thumb_local_start
sub_8018186:
	push {r4,lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrb r0, [r5,#oBattleObject_Unk_19]
	lsr r0, r0, #2
	bcs loc_80181AA
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x42 
	bl spawn_t1_0x0_EffectObject
loc_80181AA:
	ldrb r0, [r5,#oBattleObject_Unk_19]
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	bne locret_80181F4
	bl sub_800F806
	mov r4, #1
	lsl r4, r4, #8
	add r4, r4, r0
	lsl r4, r4, #8
	bl clearEntryOfBattleStateBattleObjectList_800F656
	mov r0, r5
	bl sub_80E544C
	bl object_getFlag // () -> int
	ldr r1, dword_80182A0 // =0x10000000 
	tst r0, r1
	beq loc_80181E2
	add r4, #3
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldr r6, [r5,#oBattleObject_DamageAndStaminaDamageCounterDisabler]
	bl sub_80CFBC4
	b loc_80181F0
loc_80181E2:
	mov r4, #1
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldr r6, [r5,#oBattleObject_DamageAndStaminaDamageCounterDisabler]
	bl sub_80D99EC
loc_80181F0:
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_80181F4:
	pop {r4,pc}
	thumb_func_end sub_8018186

	thumb_local_start
hideSummonsWhenBlind_80181F6:
	push {lr}
	bl battle_isTimeStop
	bne loc_8018206
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_8018206:
	mov r1, r10
	ldr r1, [r1,#oToolkit_BattleStatePtr]
	ldrb r0, [r1,#oBattleState_Unk_0d]
	ldrb r1, [r5,#oBattleObject_Alliance]
	eor r0, r1
	beq locret_801823A
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_findPlayer
	tst r0, r0
	beq locret_801823A
	push {r5}
	mov r5, r0
	bl object_getFlag // () -> int
	ldr r1, off_80182B0 // =0x2000 
	tst r0, r1
	pop {r5}
	beq locret_801823A
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	b locret_801823A
locret_801823A:
	pop {pc}
	thumb_func_end hideSummonsWhenBlind_80181F6

	thumb_local_start
sub_801823C:
	push {lr}
	bl hideSummonsWhenBlind_80181F6
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	tst r0, r0
	bne loc_8018258
	ldrh r0, [r5,#oBattleObject_X16]
	strh r0, [r5,#oBattleObject_Unk_30]
	ldrh r0, [r5,#oBattleObject_Z16]
	strh r0, [r5,#oBattleObject_Unk_32]
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_19]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PreventAnim]
loc_8018258:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x80
	ldrh r1, [r0,r1]
	tst r1, r1
	beq loc_8018266
	mov r0, #0x1e
	strb r0, [r5,#oBattleObject_Unk_19]
loc_8018266:
	ldrb r0, [r5,#oBattleObject_Unk_19]
	tst r0, r0
	beq loc_8018288
	sub r0, #1
	strb r0, [r5,#oBattleObject_Unk_19]
	ldrh r1, [r5,#oBattleObject_Unk_30]
	lsl r1, r1, #0x10
	ldr r2, [r5,#oBattleObject_Y]
	ldrh r3, [r5,#oBattleObject_Unk_32]
	lsl r3, r3, #0x10
	mov r0, #3
	bl AddRandomVarianceToTwoCoords
	mov r0, #0x34 
	add r0, r0, r5
	stmia r0!, {r1-r3}
	b locret_8018290
loc_8018288:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	strh r0, [r5,#oBattleObject_X16]
	ldrh r0, [r5,#oBattleObject_Unk_32]
	strh r0, [r5,#oBattleObject_Z16]
locret_8018290:
	pop {pc}
	.balign 4, 0
off_8018294: .word 0x400
off_8018298: .word 0xC00
off_801829C: .word LCDControl
dword_80182A0: .word 0x10000000
off_80182A4: .word 0x1000
dword_80182A8: .word 0x20000000
off_80182AC: .word 0x3000
off_80182B0: .word 0x2000
	thumb_func_end sub_801823C

	thumb_func_start sub_80182B4
sub_80182B4:
	mov r1, #3
	mul r1, r0
	ldr r0, off_80182C0 // =byte_80182C4
	add r0, r0, r1
	mov pc, lr
	.byte 0, 0
off_80182C0: .word byte_80182C4
byte_80182C4:
	.byte 0x00, 0x00, 0x00 // 0x0
	.byte 0x00, 0x00, 0x01 // 0x1
	.byte 0x01, 0x00, 0x01 // 0x2
	.byte 0x02, 0x00, 0x01 // 0x3
	.byte 0x03, 0x00, 0x01 // 0x4
	.byte 0x04, 0x00, 0x01 // 0x5
	.byte 0x05, 0x00, 0x01 // 0x6
	.byte 0x00, 0x00, 0x02 // 0x7
	.byte 0x01, 0x00, 0x02 // 0x8
	.byte 0x02, 0x00, 0x02 // 0x9
	.byte 0x03, 0x00, 0x02 // 0xa
	.byte 0x04, 0x00, 0x02 // 0xb
	.byte 0x05, 0x00, 0x02 // 0xc
	.byte 0x00, 0x00, 0x03 // 0xd
	.byte 0x01, 0x00, 0x03 // 0xe
	.byte 0x02, 0x00, 0x03 // 0xf
	.byte 0x03, 0x00, 0x03 // 0x10
	.byte 0x04, 0x00, 0x03 // 0x11
	.byte 0x05, 0x00, 0x03 // 0x12
	.byte 0x00, 0x00, 0x04 // 0x13
	.byte 0x01, 0x00, 0x04 // 0x14
	.byte 0x02, 0x00, 0x04 // 0x15
	.byte 0x03, 0x00, 0x04 // 0x16
	.byte 0x04, 0x00, 0x04 // 0x17
	.byte 0x05, 0x00, 0x04 // 0x18
	.byte 0x00, 0x00, 0x05 // 0x19
	.byte 0x01, 0x00, 0x05 // 0x1a
	.byte 0x02, 0x00, 0x05 // 0x1b
	.byte 0x03, 0x00, 0x05 // 0x1c
	.byte 0x04, 0x00, 0x05 // 0x1d
	.byte 0x05, 0x00, 0x05 // 0x1e
	.byte 0x00, 0x00, 0x06 // 0x1f
	.byte 0x01, 0x00, 0x06 // 0x20
	.byte 0x02, 0x00, 0x06 // 0x21
	.byte 0x03, 0x00, 0x06 // 0x22
	.byte 0x04, 0x00, 0x06 // 0x23
	.byte 0x05, 0x00, 0x06 // 0x24
	.byte 0x00, 0x00, 0x07 // 0x25
	.byte 0x01, 0x00, 0x07 // 0x26
	.byte 0x02, 0x00, 0x07 // 0x27
	.byte 0x03, 0x00, 0x07 // 0x28
	.byte 0x04, 0x00, 0x07 // 0x29
	.byte 0x05, 0x00, 0x07 // 0x2a
	.byte 0x00, 0x00, 0x08 // 0x2b
	.byte 0x01, 0x00, 0x08 // 0x2c
	.byte 0x02, 0x00, 0x08 // 0x2d
	.byte 0x03, 0x00, 0x08 // 0x2e
	.byte 0x04, 0x00, 0x08 // 0x2f
	.byte 0x05, 0x00, 0x08 // 0x30
	.byte 0x00, 0x00, 0x09 // 0x31
	.byte 0x01, 0x00, 0x09 // 0x32
	.byte 0x02, 0x00, 0x09 // 0x33
	.byte 0x03, 0x00, 0x09 // 0x34
	.byte 0x04, 0x00, 0x09 // 0x35
	.byte 0x05, 0x00, 0x09 // 0x36
	.byte 0x00, 0x00, 0x0a // 0x37
	.byte 0x01, 0x00, 0x0a // 0x38
	.byte 0x02, 0x00, 0x0a // 0x39
	.byte 0x03, 0x00, 0x0a // 0x3a
	.byte 0x04, 0x00, 0x0a // 0x3b
	.byte 0x05, 0x00, 0x0a // 0x3c
	.byte 0x00, 0x00, 0x0b // 0x3d
	.byte 0x01, 0x00, 0x0b // 0x3e
	.byte 0x02, 0x00, 0x0b // 0x3f
	.byte 0x03, 0x00, 0x0b // 0x40
	.byte 0x04, 0x00, 0x0b // 0x41
	.byte 0x05, 0x00, 0x0b // 0x42
	.byte 0x00, 0x00, 0x0c // 0x43
	.byte 0x01, 0x00, 0x0c // 0x44
	.byte 0x02, 0x00, 0x0c // 0x45
	.byte 0x03, 0x00, 0x0c // 0x46
	.byte 0x04, 0x00, 0x0c // 0x47
	.byte 0x05, 0x00, 0x0c // 0x48
	.byte 0x00, 0x00, 0x0d // 0x49
	.byte 0x01, 0x00, 0x0d // 0x4a
	.byte 0x02, 0x00, 0x0d // 0x4b
	.byte 0x03, 0x00, 0x0d // 0x4c
	.byte 0x04, 0x00, 0x0d // 0x4d
	.byte 0x05, 0x00, 0x0d // 0x4e
	.byte 0x00, 0x00, 0x0e // 0x4f
	.byte 0x01, 0x00, 0x0e // 0x50
	.byte 0x02, 0x00, 0x0e // 0x51
	.byte 0x03, 0x00, 0x0e // 0x52
	.byte 0x04, 0x00, 0x0e // 0x53
	.byte 0x05, 0x00, 0x0e // 0x54
	.byte 0x00, 0x00, 0x0f // 0x55
	.byte 0x01, 0x00, 0x0f // 0x56
	.byte 0x02, 0x00, 0x0f // 0x57
	.byte 0x03, 0x00, 0x0f // 0x58
	.byte 0x04, 0x00, 0x0f // 0x59
	.byte 0x05, 0x00, 0x0f // 0x5a
	.byte 0x00, 0x00, 0x10 // 0x5b
	.byte 0x01, 0x00, 0x10 // 0x5c
	.byte 0x02, 0x00, 0x10 // 0x5d
	.byte 0x03, 0x00, 0x10 // 0x5e
	.byte 0x04, 0x00, 0x10 // 0x5f
	.byte 0x05, 0x00, 0x10 // 0x60
	.byte 0x00, 0x00, 0x11 // 0x61
	.byte 0x01, 0x00, 0x11 // 0x62
	.byte 0x02, 0x00, 0x11 // 0x63
	.byte 0x03, 0x00, 0x11 // 0x64
	.byte 0x04, 0x00, 0x11 // 0x65
	.byte 0x05, 0x00, 0x11 // 0x66
	.byte 0x00, 0x00, 0x12 // 0x67
	.byte 0x01, 0x00, 0x12 // 0x68
	.byte 0x02, 0x00, 0x12 // 0x69
	.byte 0x03, 0x00, 0x12 // 0x6a
	.byte 0x04, 0x00, 0x12 // 0x6b
	.byte 0x05, 0x00, 0x12 // 0x6c
	.byte 0x00, 0x00, 0x13 // 0x6d
	.byte 0x01, 0x00, 0x13 // 0x6e
	.byte 0x02, 0x00, 0x13 // 0x6f
	.byte 0x03, 0x00, 0x13 // 0x70
	.byte 0x04, 0x00, 0x13 // 0x71
	.byte 0x05, 0x00, 0x13 // 0x72
	.byte 0x00, 0x00, 0x14 // 0x73
	.byte 0x01, 0x00, 0x14 // 0x74
	.byte 0x02, 0x00, 0x14 // 0x75
	.byte 0x03, 0x00, 0x14 // 0x76
	.byte 0x04, 0x00, 0x14 // 0x77
	.byte 0x05, 0x00, 0x14 // 0x78
	.byte 0x00, 0x00, 0x15 // 0x79
	.byte 0x01, 0x00, 0x15 // 0x7a
	.byte 0x02, 0x00, 0x15 // 0x7b
	.byte 0x03, 0x00, 0x15 // 0x7c
	.byte 0x04, 0x00, 0x15 // 0x7d
	.byte 0x05, 0x00, 0x15 // 0x7e
	.byte 0x00, 0x00, 0x16 // 0x7f
	.byte 0x01, 0x00, 0x16 // 0x80
	.byte 0x02, 0x00, 0x16 // 0x81
	.byte 0x03, 0x00, 0x16 // 0x82
	.byte 0x04, 0x00, 0x16 // 0x83
	.byte 0x05, 0x00, 0x16 // 0x84
	.byte 0x00, 0x00, 0x17 // 0x85
	.byte 0x01, 0x00, 0x17 // 0x86
	.byte 0x02, 0x00, 0x17 // 0x87
	.byte 0x03, 0x00, 0x17 // 0x88
	.byte 0x04, 0x00, 0x17 // 0x89
	.byte 0x05, 0x00, 0x17 // 0x8a
	.byte 0x00, 0x00, 0x18 // 0x8b
	.byte 0x01, 0x00, 0x18 // 0x8c
	.byte 0x02, 0x00, 0x18 // 0x8d
	.byte 0x03, 0x00, 0x18 // 0x8e
	.byte 0x04, 0x00, 0x18 // 0x8f
	.byte 0x05, 0x00, 0x18 // 0x90
	.byte 0x00, 0x00, 0x19 // 0x91
	.byte 0x01, 0x00, 0x19 // 0x92
	.byte 0x02, 0x00, 0x19 // 0x93
	.byte 0x03, 0x00, 0x19 // 0x94
	.byte 0x04, 0x00, 0x19 // 0x95
	.byte 0x05, 0x00, 0x19 // 0x96
	.byte 0x00, 0x00, 0x1a // 0x97
	.byte 0x01, 0x00, 0x1a // 0x98
	.byte 0x02, 0x00, 0x1a // 0x99
	.byte 0x03, 0x00, 0x1a // 0x9a
	.byte 0x04, 0x00, 0x1a // 0x9b
	.byte 0x05, 0x00, 0x1a // 0x9c
	.byte 0x00, 0x00, 0x1b // 0x9d
	.byte 0x01, 0x00, 0x1b // 0x9e
	.byte 0x02, 0x00, 0x1b // 0x9f
	.byte 0x03, 0x00, 0x1b // 0xa0
	.byte 0x04, 0x00, 0x1b // 0xa1
	.byte 0x05, 0x00, 0x1b // 0xa2
	.byte 0x00, 0x00, 0x1c // 0xa3
	.byte 0x01, 0x00, 0x1c // 0xa4
	.byte 0x02, 0x00, 0x1c // 0xa5
	.byte 0x03, 0x00, 0x1c // 0xa6
	.byte 0x04, 0x00, 0x1c // 0xa7
	.byte 0x05, 0x00, 0x1c // 0xa8
	.byte 0x00, 0x00, 0x1d // 0xa9
	.byte 0x01, 0x00, 0x1d // 0xaa
	.byte 0x02, 0x00, 0x1d // 0xab
	.byte 0x03, 0x00, 0x1d // 0xac
	.byte 0x04, 0x00, 0x1d // 0xad
	.byte 0x05, 0x00, 0x1d // 0xae
	.byte 0x00, 0x00, 0x1e // 0xaf
	.byte 0x01, 0x00, 0x1e // 0xb0
	.byte 0x02, 0x00, 0x1e // 0xb1
	.byte 0x03, 0x00, 0x1e // 0xb2
	.byte 0x04, 0x00, 0x1e // 0xb3
	.byte 0x05, 0x00, 0x1e // 0xb4
	.byte 0x00, 0x00, 0x1f // 0xb5
	.byte 0x01, 0x00, 0x1f // 0xb6
	.byte 0x02, 0x00, 0x1f // 0xb7
	.byte 0x03, 0x00, 0x1f // 0xb8
	.byte 0x04, 0x00, 0x1f // 0xb9
	.byte 0x05, 0x00, 0x1f // 0xba
	.byte 0x00, 0x00, 0x01 // 0xbb
	.byte 0x01, 0x00, 0x01 // 0xbc
	.byte 0x02, 0x00, 0x01 // 0xbd
	.byte 0x03, 0x00, 0x01 // 0xbe
	.byte 0x04, 0x00, 0x01 // 0xbf
	.byte 0x05, 0x00, 0x01 // 0xc0
	.byte 0x00, 0x00, 0x01 // 0xc1
	.byte 0x01, 0x00, 0x01 // 0xc2
	.byte 0x02, 0x00, 0x01 // 0xc3
	.byte 0x03, 0x00, 0x01 // 0xc4
	.byte 0x04, 0x00, 0x01 // 0xc5
	.byte 0x05, 0x00, 0x01 // 0xc6
	.byte 0x00, 0x00, 0x01 // 0xc7
	.byte 0x01, 0x00, 0x01 // 0xc8
	.byte 0x02, 0x00, 0x01 // 0xc9
	.byte 0x03, 0x00, 0x01 // 0xca
	.byte 0x04, 0x00, 0x01 // 0xcb
	.byte 0x05, 0x00, 0x01 // 0xcc
	.byte 0x00, 0x00, 0x01 // 0xcd
	.byte 0x01, 0x00, 0x01 // 0xce
	.byte 0x02, 0x00, 0x01 // 0xcf
	.byte 0x03, 0x00, 0x01 // 0xd0
	.byte 0x04, 0x00, 0x01 // 0xd1
	.byte 0x05, 0x00, 0x01 // 0xd2
	.byte 0x00, 0x00, 0x01 // 0xd3
	.byte 0x01, 0x00, 0x01 // 0xd4
	.byte 0x02, 0x00, 0x01 // 0xd5
	.byte 0x03, 0x00, 0x01 // 0xd6
	.byte 0x04, 0x00, 0x01 // 0xd7
	.byte 0x05, 0x00, 0x01 // 0xd8
	.byte 0x00, 0x00, 0x01 // 0xd9
	.byte 0x01, 0x00, 0x01 // 0xda
	.byte 0x02, 0x00, 0x01 // 0xdb
	.byte 0x03, 0x00, 0x01 // 0xdc
	.byte 0x04, 0x00, 0x01 // 0xdd
	.byte 0x05, 0x00, 0x01 // 0xde
	.byte 0x00, 0x00, 0x01 // 0xdf
	.byte 0x01, 0x00, 0x01 // 0xe0
	.byte 0x02, 0x00, 0x01 // 0xe1
	.byte 0x03, 0x00, 0x01 // 0xe2
	.byte 0x04, 0x00, 0x01 // 0xe3
	.byte 0x05, 0x00, 0x01 // 0xe4
	.byte 0x00, 0x00, 0x01 // 0xe5
	.byte 0x01, 0x00, 0x01 // 0xe6
	.byte 0x02, 0x00, 0x01 // 0xe7
	.byte 0x03, 0x00, 0x01 // 0xe8
	.byte 0x04, 0x00, 0x01 // 0xe9
	.byte 0x05, 0x00, 0x01 // 0xea
	.byte 0x00, 0x00, 0x01 // 0xeb
	.byte 0x01, 0x00, 0x01 // 0xec
	.byte 0x02, 0x00, 0x01 // 0xed
	.byte 0x03, 0x00, 0x01 // 0xee
	.byte 0x04, 0x00, 0x01 // 0xef
	.byte 0x05, 0x00, 0x01 // 0xf0
	.byte 0x00, 0x00, 0x01 // 0xf1
	.byte 0x01, 0x00, 0x01 // 0xf2
	.byte 0x02, 0x00, 0x01 // 0xf3
	.byte 0x03, 0x00, 0x01 // 0xf4
	.byte 0x04, 0x00, 0x01 // 0xf5
	.byte 0x05, 0x00, 0x01 // 0xf6
	.byte 0x00, 0x00, 0x01 // 0xf7
	.byte 0x01, 0x00, 0x01 // 0xf8
	.byte 0x02, 0x00, 0x01 // 0xf9
	.byte 0x03, 0x00, 0x01 // 0xfa
	.byte 0x04, 0x00, 0x01 // 0xfb
	.byte 0x05, 0x00, 0x01 // 0xfc
	.byte 0x00, 0x00, 0x01 // 0xfd
	.byte 0x00, 0x00, 0x01 // 0xfe
	.byte 0x00, 0x00, 0x01 // 0xff
	.byte 0x00, 0x01, 0x00 // 0x100
	.byte 0x00, 0x01, 0x01 // 0x101
	.byte 0x01, 0x01, 0x01 // 0x102
	.byte 0x02, 0x01, 0x01 // 0x103
	.byte 0x03, 0x01, 0x01 // 0x104
	.byte 0x04, 0x01, 0x01 // 0x105
	.byte 0x05, 0x01, 0x01 // 0x106
	.byte 0x00, 0x01, 0x02 // 0x107
	.byte 0x01, 0x01, 0x02 // 0x108
	.byte 0x02, 0x01, 0x02 // 0x109
	.byte 0x03, 0x01, 0x02 // 0x10a
	.byte 0x04, 0x01, 0x02 // 0x10b
	.byte 0x05, 0x01, 0x02 // 0x10c
	.byte 0x00, 0x01, 0x03 // 0x10d
	.byte 0x01, 0x01, 0x03 // 0x10e
	.byte 0x02, 0x01, 0x03 // 0x10f
	.byte 0x03, 0x01, 0x03 // 0x110
	.byte 0x04, 0x01, 0x03 // 0x111
	.byte 0x05, 0x00, 0x03 // 0x112
	.byte 0x00, 0x01, 0x04 // 0x113
	.byte 0x01, 0x01, 0x04 // 0x114
	.byte 0x02, 0x01, 0x04 // 0x115
	.byte 0x03, 0x01, 0x04 // 0x116
	.byte 0x04, 0x01, 0x04 // 0x117
	.byte 0x05, 0x01, 0x04 // 0x118
	.byte 0x00, 0x01, 0x05 // 0x119
	.byte 0x01, 0x01, 0x05 // 0x11a
	.byte 0x02, 0x01, 0x05 // 0x11b
	.byte 0x03, 0x01, 0x05 // 0x11c
	.byte 0x04, 0x01, 0x05 // 0x11d
	.byte 0x05, 0x01, 0x05 // 0x11e
	.byte 0x00, 0x01, 0x06 // 0x11f
	.byte 0x01, 0x01, 0x06 // 0x120
	.byte 0x02, 0x01, 0x06 // 0x121
	.byte 0x03, 0x01, 0x06 // 0x122
	.byte 0x04, 0x01, 0x06 // 0x123
	.byte 0x05, 0x01, 0x06 // 0x124
	.byte 0x00, 0x01, 0x07 // 0x125
	.byte 0x01, 0x01, 0x07 // 0x126
	.byte 0x02, 0x01, 0x07 // 0x127
	.byte 0x03, 0x01, 0x07 // 0x128
	.byte 0x04, 0x01, 0x07 // 0x129
	.byte 0x05, 0x01, 0x07 // 0x12a
	.byte 0x00, 0x01, 0x08 // 0x12b
	.byte 0x01, 0x01, 0x08 // 0x12c
	.byte 0x02, 0x01, 0x08 // 0x12d
	.byte 0x03, 0x01, 0x08 // 0x12e
	.byte 0x04, 0x01, 0x08 // 0x12f
	.byte 0x05, 0x01, 0x08 // 0x130
	.byte 0x00, 0x01, 0x09 // 0x131
	.byte 0x01, 0x01, 0x09 // 0x132
	.byte 0x02, 0x01, 0x09 // 0x133
	.byte 0x03, 0x01, 0x09 // 0x134
	.byte 0x04, 0x01, 0x09 // 0x135
	.byte 0x05, 0x01, 0x09 // 0x136
	.byte 0x00, 0x01, 0x0a // 0x137
	.byte 0x01, 0x01, 0x0a // 0x138
	.byte 0x02, 0x01, 0x0a // 0x139
	.byte 0x03, 0x01, 0x0a // 0x13a
	.byte 0x04, 0x01, 0x0a // 0x13b
	.byte 0x05, 0x01, 0x0a // 0x13c
	.byte 0x00, 0x01, 0x0b // 0x13d
	.byte 0x01, 0x01, 0x0b // 0x13e
	.byte 0x02, 0x01, 0x0b // 0x13f
	.byte 0x03, 0x01, 0x0b // 0x140
	.byte 0x04, 0x01, 0x0b // 0x141
	.byte 0x05, 0x01, 0x0b // 0x142
	.byte 0x00, 0x01, 0x0c // 0x143
	.byte 0x01, 0x01, 0x0c // 0x144
	.byte 0x02, 0x01, 0x0c // 0x145
	.byte 0x03, 0x01, 0x0c // 0x146
	.byte 0x04, 0x01, 0x0c // 0x147
	.byte 0x05, 0x01, 0x0c // 0x148
	.byte 0x00, 0x01, 0x0d // 0x149
	.byte 0x01, 0x01, 0x0d // 0x14a
	.byte 0x02, 0x01, 0x0d // 0x14b
	.byte 0x03, 0x01, 0x0d // 0x14c
	.byte 0x04, 0x01, 0x0d // 0x14d
	.byte 0x05, 0x01, 0x0d // 0x14e
	.byte 0x00, 0x01, 0x0e // 0x14f
	.byte 0x01, 0x01, 0x0e // 0x150
	.byte 0x02, 0x01, 0x0e // 0x151
	.byte 0x03, 0x01, 0x0e // 0x152
	.byte 0x04, 0x01, 0x0e // 0x153
	.byte 0x05, 0x01, 0x0e // 0x154
	.byte 0x00, 0x01, 0x0f // 0x155
	.byte 0x01, 0x01, 0x0f // 0x156
	.byte 0x02, 0x01, 0x0f // 0x157
	.byte 0x03, 0x01, 0x0f // 0x158
	.byte 0x04, 0x01, 0x0f // 0x159
	.byte 0x05, 0x01, 0x0f // 0x15a
	.byte 0x00, 0x01, 0x10 // 0x15b
	.byte 0x01, 0x01, 0x10 // 0x15c
	.byte 0x02, 0x01, 0x10 // 0x15d
	.byte 0x03, 0x01, 0x10 // 0x15e
	.byte 0x04, 0x01, 0x10 // 0x15f
	.byte 0x05, 0x01, 0x10 // 0x160
	.byte 0x00, 0x01, 0x11 // 0x161
	.byte 0x01, 0x01, 0x11 // 0x162
	.byte 0x02, 0x01, 0x11 // 0x163
	.byte 0x03, 0x01, 0x11 // 0x164
	.byte 0x04, 0x01, 0x11 // 0x165
	.byte 0x05, 0x01, 0x11 // 0x166
	.byte 0x00, 0x01, 0x12 // 0x167
	.byte 0x01, 0x01, 0x12 // 0x168
	.byte 0x02, 0x01, 0x12 // 0x169
	.byte 0x03, 0x01, 0x12 // 0x16a
	.byte 0x04, 0x01, 0x12 // 0x16b
	.byte 0x05, 0x01, 0x12 // 0x16c
	.byte 0x00, 0x01, 0x13 // 0x16d
	.byte 0x01, 0x01, 0x13 // 0x16e
	.byte 0x02, 0x01, 0x13 // 0x16f
	.byte 0x03, 0x01, 0x13 // 0x170
	.byte 0x04, 0x01, 0x13 // 0x171
	.byte 0x05, 0x01, 0x13 // 0x172
	.byte 0x00, 0x01, 0x14 // 0x173
	.byte 0x01, 0x01, 0x14 // 0x174
	.byte 0x02, 0x01, 0x14 // 0x175
	.byte 0x03, 0x01, 0x14 // 0x176
	.byte 0x04, 0x01, 0x14 // 0x177
	.byte 0x05, 0x01, 0x14 // 0x178
	.byte 0x00, 0x01, 0x15 // 0x179
	.byte 0x01, 0x01, 0x15 // 0x17a
	.byte 0x02, 0x01, 0x15 // 0x17b
	.byte 0x03, 0x01, 0x15 // 0x17c
	.byte 0x04, 0x01, 0x15 // 0x17d
	.byte 0x05, 0x01, 0x15 // 0x17e
	.byte 0x00, 0x01, 0x16 // 0x17f
	.byte 0x01, 0x01, 0x16 // 0x180
	.byte 0x02, 0x01, 0x16 // 0x181
	.byte 0x03, 0x01, 0x16 // 0x182
	.byte 0x04, 0x01, 0x16 // 0x183
	.byte 0x05, 0x01, 0x16 // 0x184
	.byte 0x00, 0x01, 0x17 // 0x185
	.byte 0x01, 0x01, 0x17 // 0x186
	.byte 0x02, 0x01, 0x17 // 0x187
	.byte 0x03, 0x01, 0x17 // 0x188
	.byte 0x04, 0x01, 0x17 // 0x189
	.byte 0x05, 0x01, 0x17 // 0x18a
	.byte 0x00, 0x01, 0x18 // 0x18b
	.byte 0x01, 0x01, 0x18 // 0x18c
	.byte 0x02, 0x01, 0x18 // 0x18d
	.byte 0x03, 0x01, 0x18 // 0x18e
	.byte 0x04, 0x01, 0x18 // 0x18f
	.byte 0x05, 0x01, 0x18 // 0x190
	.byte 0x00, 0x01, 0x00 // 0x191
	.byte 0x00, 0x01, 0x00 // 0x192
	.byte 0x00, 0x01, 0x00 // 0x193
	.byte 0x00, 0x01, 0x00 // 0x194
	.byte 0x00, 0x01, 0x00 // 0x195
	.byte 0x00, 0x01, 0x00 // 0x196
	.byte 0x00, 0x01, 0x00 // 0x197
	.byte 0x00, 0x01, 0x00 // 0x198
	.byte 0x00, 0x01, 0x00 // 0x199
	.byte 0x00, 0x01, 0x00 // 0x19a
	.byte 0x00, 0x01, 0x00 // 0x19b
	.byte 0x00, 0x01, 0x00 // 0x19c
	.byte 0x00, 0x01, 0x00 // 0x19d
	.byte 0x00, 0x01, 0x00 // 0x19e
	.byte 0x00, 0x01, 0x00 // 0x19f
	.byte 0x00, 0x02, 0x00 // 0x1a0
	.byte 0x00, 0x02, 0x01 // 0x1a1
	.byte 0x00, 0x02, 0x02 // 0x1a2
	.byte 0x00, 0x02, 0x03 // 0x1a3
	.byte 0x00, 0x02, 0x04 // 0x1a4
	.byte 0x00, 0x02, 0x05 // 0x1a5
	.byte 0x00, 0x02, 0x06 // 0x1a6
	.byte 0x00, 0x02, 0x07 // 0x1a7
	.byte 0x00, 0x02, 0x08 // 0x1a8
	.byte 0x00, 0x02, 0x09 // 0x1a9
	.byte 0x00, 0x02, 0x0a // 0x1aa
	.byte 0x00, 0x02, 0x0b // 0x1ab
	.byte 0x00, 0x02, 0x19 // 0x1ac
	.byte 0x00, 0x02, 0x1a // 0x1ad
	.byte 0x00, 0x02, 0x1b // 0x1ae
	.byte 0x00, 0x02, 0x1c // 0x1af
	.byte 0x00, 0x02, 0x1d // 0x1b0
	.byte 0x00, 0x02, 0x1e // 0x1b1
	.byte 0x00, 0x02, 0x1f // 0x1b2
	.byte 0x00, 0x02, 0x20 // 0x1b3
	.byte 0x00, 0x02, 0x21 // 0x1b4
	.byte 0x00, 0x02, 0x22 // 0x1b5
	.byte 0x00, 0x02, 0x23 // 0x1b6
	.byte 0x00, 0x02, 0x24 // 0x1b7
	.byte 0x00, 0x02, 0x25 // 0x1b8
	.byte 0x00, 0x02, 0x26 // 0x1b9
	.byte 0x00, 0x02, 0x27 // 0x1ba
	.byte 0x00, 0x02, 0x28 // 0x1bb
	.byte 0x00, 0x02, 0x29 // 0x1bc
	.byte 0x00, 0x02, 0x2a // 0x1bd
	.byte 0x00, 0x02, 0x2b // 0x1be
	.byte 0x00, 0x02, 0x2c // 0x1bf
	.byte 0x00, 0x02, 0x2d // 0x1c0
	.byte 0x00, 0x02, 0x2e // 0x1c1
	.byte 0x00, 0x02, 0x2f // 0x1c2
	.byte 0x00, 0x02, 0x30 // 0x1c3
	thumb_func_end sub_80182B4

	thumb_func_start getBattleArmPositionMaybe_8018810
// r0 - name id
// r1 - ???
// r2 - alliance
// r3 - direction flip
getBattleArmPositionMaybe_8018810:
	push {r4-r6,lr}
	cmp r0, #0xcd
	blt loc_801881A
	cmp r0, #0xff
	ble loc_801883C
loc_801881A:
	mov r4, r1
	mov r5, r2
	mov r6, r3
	bl sub_800F26C
	mov r2, r4
	bl sub_8018842
	push {r0,r1}
	mov r0, r5
	mov r1, r6
	bl object_getFlipDirection // (int a1, int a2) -> int
	mov r2, r0
	pop {r0,r1}
	mul r0, r2
	pop {r4-r6,pc}
loc_801883C:
	mov r0, #0
	mov r1, #7
	pop {r4-r6,pc}
	thumb_func_end getBattleArmPositionMaybe_8018810

	thumb_func_start sub_8018842
sub_8018842:
	push {r4,lr}
	add r4, r2, r2
	bl sub_8018886
	add r4, r4, r0
	mov r0, #0
	ldrsb r0, [r4,r0]
	mov r1, #1
	ldrsb r1, [r4,r1]
	pop {r4,pc}
	thumb_func_end sub_8018842

	thumb_local_start
sub_8018856:
	push {lr}
	push {r0}
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	push {r0}
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	pop {r1}
	bl sub_800FC9E
	mov r0, r1
	mov r1, r2
	pop {r2}
	bl sub_8018842
	push {r0,r1}
	bl object_getFrontDirection // () -> int
	mov r2, r0
	pop {r0,r1}
	mul r0, r2
	pop {pc}
	thumb_func_end sub_8018856

	thumb_local_start
sub_8018886:
	cmp r0, #0
	bne loc_801888E
	ldr r2, off_80188AC // =byte_80188B0
	ldrb r1, [r2,r1]
loc_801888E:
	ldr r2, off_801889C // =off_80188A0 
	ldr r0, [r2,r0]
	mov r3, #0x44 
	mul r1, r3
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0
off_801889C: .word off_80188A0
off_80188A0: .word byte_80188C0
	.word byte_801898C
	.word byte_80191C8
off_80188AC: .word byte_80188B0
byte_80188B0: .byte 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x2, 0x2, 0x2, 0x2, 0x1, 0x2, 0x0, 0x0, 0x0
byte_80188C0: .byte 0x2, 0x0, 0x2, 0x0, 0x2, 0x0, 0x8, 0x30, 0x8, 0x30, 0x8, 0x30, 0x10
	.byte 0x0, 0x10, 0x18, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18
	.byte 0x18, 0x18, 0x17, 0x19, 0x18, 0x18, 0x28, 0x1A, 0x5, 0xB, 0x1F, 0x19, 0x28
	.byte 0x1A, 0x14, 0x19, 0x2, 0x10, 0x18, 0x18, 0x18, 0x19, 0x18, 0x17, 0x16, 0x19
	.byte 0x1C, 0x19, 0x2, 0x12, 0x58, 0x10, 0x78, 0xFC, 0xF8, 0x10, 0x40, 0x10, 0x2
	.byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x6, 0x0, 0x6, 0x0, 0x10, 0x2C, 0x10, 0x2C
	.byte 0x10, 0x2C, 0x18, 0x0, 0x1B, 0x11, 0x18, 0x11, 0x26, 0x12, 0x1F, 0x12, 0x1F
	.byte 0x12, 0x1D, 0x11, 0x23, 0x11, 0x23, 0x13, 0x23, 0x11, 0x33, 0x14, 0x8, 0xA
	.byte 0x29, 0x14, 0x30, 0x13, 0x20, 0x13, 0x6, 0x10, 0x23, 0x12, 0x20, 0x12, 0x20
	.byte 0x10, 0x20, 0x13, 0x24, 0x11, 0x8, 0x10, 0x68, 0x8, 0x7C, 0xF6, 0xF8, 0x18
	.byte 0x50, 0xE
	.word 0x4000006
	.word 0x18041004
	.word 0x40091004
	.word 0x40094009
	.word 0x25100010
	.word 0x26182610
	.word 0x26112611
	.word 0x26162612
	.word 0x25182716
	.word 0x17092728
	.word 0x2728281D
	.word 0x20042712
	.word 0x27162616
	.word 0x27142718
	.word 0x20042619
	.word byte_8721C58
	.word 0x22411CF8
	.word loc_8040A04
byte_801898C: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1C, 0x0, 0x18, 0x4, 0x18, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x2, 0xFE, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x7, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x2A, 0x3, 0x28, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x4, 0xB, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x13, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x5, 0xB
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x39, 0x0, 0x34, 0x7, 0x31, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x18, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0xC, 0x18, 0x19, 0x28, 0x14, 0x0, 0x18, 0x0, 0x14, 0x0, 0x0, 0x3, 0x18
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x32, 0x0, 0x30, 0x3, 0x28, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x2, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x13, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x9
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2D, 0x0, 0x2B, 0x5, 0x28, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0xE, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x13, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0xC
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2A, 0x0, 0x28, 0x0, 0x28, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x10, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x6
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x28, 0x0, 0x21, 0x4, 0x22, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x15, 0x18, 0x19, 0x28, 0x14, 0x0, 0xC, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x33, 0x4, 0x24, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x3, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x16, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0xA
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2C, 0x0, 0x23, 0x0, 0x1E, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x10, 0x18, 0x19, 0x28, 0x14, 0x0, 0xC, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3A, 0x0, 0x33, 0x2, 0x39, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x13, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x8, 0x18, 0x19, 0x28, 0x14, 0x0, 0x18, 0x0, 0x14, 0x0, 0x0, 0x0, 0x10
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x31, 0x0, 0x28, 0x5, 0x25, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x10, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x5
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2E, 0x0, 0x23, 0x19, 0x1B, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0xC, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x26, 0x0, 0x26, 0x3, 0x1B, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x4, 0xFE, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x16, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2B, 0x0, 0x2B, 0x6, 0x30, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x14, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x16, 0x18, 0x19, 0x28, 0x14, 0x0, 0x14, 0x0, 0x14, 0x0, 0x0, 0x2, 0x6
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x38, 0x6, 0x2B, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x5, 0xC, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x16, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0xC, 0x18, 0x19, 0x28, 0x14, 0x0, 0x16, 0x0, 0x14, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x40, 0x8, 0x40, 0xB, 0x28, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x8, 0x16, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x20, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x10, 0x18, 0x19, 0x28, 0x14, 0x4, 0x20, 0x0, 0x14, 0x0, 0x0, 0x0, 0x4
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3F, 0x0, 0x3A, 0x3, 0x2B, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x17, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x1B, 0x18, 0x19, 0x4E, 0xFA, 0x0, 0x17, 0x0, 0x14, 0x0, 0x0, 0x8, 0x2
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x38, 0x0, 0x30, 0x6, 0x30, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x1, 0xF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x10, 0x4D, 0x14, 0x28, 0x14, 0x0, 0x18, 0x0, 0x14, 0x0, 0x0, 0x2, 0x12
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x36, 0x0, 0x36, 0x0, 0x1F, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x14, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x32, 0x0, 0x30, 0x3, 0x2A, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x2, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x18, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x25, 0x0, 0x23, 0x7, 0x1C, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word 0x8000000
	.byte 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C
	.byte 0x19, 0x0, 0x16, 0x18, 0x19, 0x28, 0x14, 0x0, 0x8
	.byte 0x0, 0x14, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xF8, 0x41, 0xFB, 0x3C, 0x2, 0x3E
	.byte 0x0, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12
	.byte 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18
	.byte 0x18, 0x18, 0x0, 0x0, 0xFE, 0x1B, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x14, 0x19, 0x17, 0x18, 0x1A
	.byte 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x10, 0x18
	.byte 0x19, 0x28, 0x14, 0xF8, 0x28, 0x0, 0x14, 0x0, 0x0
	.byte 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x39, 0x0, 0x32, 0x0, 0x3A, 0x0, 0x0, 0x0, 0x0
	.byte 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12
	.byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x14, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x16, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A
	.byte 0x1C, 0x19, 0x2, 0x10, 0x18, 0x19, 0x28, 0x14, 0x0
	.byte 0x16, 0x0, 0x14, 0x0, 0x0, 0x7, 0x4, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x2E, 0x0, 0x29, 0x0
	.byte 0x30, 0x0, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18
	.byte 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18
	.byte 0x18, 0x18, 0x18, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18
	.byte 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x10
	.byte 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0xFD, 0x30, 0x0, 0x28, 0x4, 0x2C, 0x0, 0x0, 0x0
	.byte 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18
	.byte 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0
	.byte 0x0, 0xFC, 0xE, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0xE, 0x18, 0x19, 0x28, 0x14
	.byte 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0xC, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0x18
	.byte 0xFC, 0xD, 0x0, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18
	.byte 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18
	.byte 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17
	.byte 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0
	.byte 0xC, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14
	.byte 0x0, 0x0, 0x0, 0xF0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x26, 0x0, 0x26, 0xD, 0x17, 0x0, 0x0
	.byte 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12
	.byte 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	.byte 0x0, 0x0, 0x4, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17
	.byte 0x18, 0x1A, 0x1C, 0x19, 0x0, 0xE, 0x18, 0x19, 0x28
	.byte 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x7, 0x2
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x40, 0x0
	.byte 0x3D, 0x1, 0x3B, 0x0, 0x0, 0x0, 0x0, 0x10, 0x18
	.byte 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18
	.byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0x0, 0x10
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFE, 0x16, 0x19
	.byte 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19
	.byte 0x0, 0x10, 0x18, 0x19, 0x28, 0x14, 0xFE, 0x16, 0x0
	.byte 0x14, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x6, 0x3F, 0x5, 0x3F, 0x9, 0x37, 0x0
	.byte 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18
	.byte 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	.byte 0x18, 0x0, 0x0, 0x6, 0x10, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x4, 0x20, 0x19, 0x17, 0x18, 0x1A, 0x18
	.byte 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x6, 0x14, 0x18, 0x19
	.byte 0x28, 0x14, 0x4, 0x20, 0x0, 0x14, 0x0, 0x0, 0xA
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x38
	.byte 0x8, 0x38, 0xA, 0x38, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18
	.byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C
	.byte 0x19, 0x4, 0x14, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10
	.byte 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
byte_80191C8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x8, 0x0, 0x8, 0x0, 0x8, 0x6, 0x35, 0x8, 0x37, 0x8, 0x37, 0x18, 0x0, 0x16, 0x16, 0x10
	.byte 0x16, 0x1A, 0x16, 0x12, 0x17, 0x18, 0x17, 0x14, 0x16, 0x18, 0x16, 0x1A, 0x17, 0x18, 0x16, 0x3B, 0x19
	.byte 0x8, 0x10, 0x21, 0x18, 0x28, 0x18, 0x16, 0x18, 0x2, 0x18, 0x1A, 0x16, 0x18, 0x17, 0x18, 0x15, 0x18
	.byte 0x17, 0x1C, 0x16, 0x2, 0x10, 0x5B, 0xE, 0x78, 0xFB, 0xFC, 0x1C, 0x43, 0x10, 0x6, 0x8, 0x0, 0x0
	.byte 0x0, 0x14, 0x0, 0x14, 0x0, 0x14, 0x2, 0x46, 0x2, 0x46, 0x2, 0x46, 0x10, 0x0, 0xC, 0x2B, 0xC
	.byte 0x2B, 0x14, 0x2C, 0xE, 0x2C, 0xE, 0x2D, 0xE, 0x2C, 0x14, 0x2C, 0x14, 0x2D, 0x14, 0x2C, 0x23, 0x2E
	.byte 0x2, 0x1E, 0x1B, 0x2F, 0x24, 0x2D, 0x10, 0x2E, 0x0, 0x20, 0x14, 0x2C, 0x12, 0x2D, 0x14, 0x2B, 0x14
	.byte 0x2E, 0x17, 0x2D, 0x2, 0x22, 0x58, 0x1C, 0x70, 0x10, 0xF8, 0x1C, 0x40, 0x28, 0x2, 0x10, 0x2, 0xA
	.byte 0x0, 0x0, 0x3, 0x8, 0x0, 0x0, 0x8, 0x32, 0x8, 0x30, 0x8, 0x30, 0x1A, 0x0, 0x18, 0x1A, 0x10
	.byte 0x19, 0x20, 0x18, 0x1A, 0x18, 0x1C, 0x18, 0x1E, 0x1A, 0x20, 0x18, 0x22, 0x1A, 0x20, 0x18, 0x30, 0x1A
	.byte 0x4, 0xA, 0x24, 0x1A, 0x2C, 0x1A, 0x1C, 0x1A, 0x4, 0x12, 0x20, 0x18, 0x20, 0x19, 0x18, 0x18, 0x22
	.byte 0x1A, 0x23, 0x18, 0x0, 0x12, 0x62, 0x10, 0x7C, 0xFC, 0xF6, 0x16, 0x40, 0x16, 0x3, 0x0, 0x0, 0xA
	.byte 0x3, 0xA, 0x6, 0xE, 0x3, 0xA, 0xC, 0x3C, 0xC, 0x38, 0xE, 0x38, 0x18, 0x0, 0x17, 0x25, 0x10
	.byte 0x24, 0x1E, 0x24, 0x18, 0x24, 0x18, 0x25, 0x17, 0x24, 0x1A, 0x24, 0x1E, 0x25, 0x20, 0x24, 0x2C, 0x25
	.byte 0x8, 0xE, 0x23, 0x26, 0x2A, 0x25, 0x18, 0x26, 0x8, 0x1A, 0x1E, 0x24, 0x1C, 0x25, 0x18, 0x26, 0x1C
	.byte 0x26, 0x20, 0x24, 0x8, 0xE, 0x5E, 0x1A, 0x78, 0x8, 0xF2, 0x20, 0x40, 0x20, 0x4, 0x8, 0x0, 0x10
	.byte 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x10, 0x30, 0x4, 0x2E, 0x10, 0x24, 0x1C, 0x0, 0xE, 0x11, 0x10
	.byte 0x11, 0x16, 0x10, 0x10, 0x10, 0x12, 0x11, 0x10, 0x11, 0x16, 0x11, 0x16, 0x12, 0x16, 0x10
	.word 0x8001230
	.byte 0x20, 0x12, 0x26, 0x12, 0x12, 0x12, 0x0, 0x14, 0x16
	.byte 0x10, 0x16, 0x11, 0x14, 0x10, 0x16, 0x12, 0x16, 0x11
	.byte 0x0, 0x8, 0x50, 0x8, 0x70, 0xF8, 0xFC, 0x18, 0x3C
	.byte 0xE, 0x0, 0x0, 0x0, 0x8, 0x0, 0xFC, 0x0, 0x0
	.byte 0x0, 0xFC, 0x3, 0x2A, 0x0, 0x26, 0x4, 0x26, 0x10
	.byte 0x0, 0xE, 0xE, 0x8, 0x10, 0x16, 0xD, 0x10, 0xC
	.byte 0x10, 0xC, 0x10, 0xE, 0x14, 0xD, 0x15, 0xD, 0x16
	.byte 0xC, 0x20, 0xE, 0x0, 0x8, 0x1E, 0xE, 0x20, 0x10
	.byte 0x12, 0xE, 0x0, 0x10, 0x16, 0xC, 0x14, 0xD, 0x10
	.byte 0x10, 0x14, 0xD, 0x16, 0xD, 0x0, 0x8, 0x58, 0x4
	.byte 0x78, 0xF0, 0xF8, 0x10, 0x40, 0x8, 0x0, 0x0, 0x0
	.byte 0x0
	.word 0x8040000
	.byte 0x0, 0x0, 0xA, 0x36, 0xA, 0x32, 0xA, 0x2E, 0x18, 0x0, 0xD
	.byte 0x15, 0xD, 0x15, 0x16, 0x14, 0x10, 0x14, 0x12, 0x14, 0x12, 0x14
	.byte 0x16, 0x15, 0x16, 0x15, 0x14, 0x14
	.word byte_8061622
	.byte 0x1F, 0x15, 0x22, 0x15, 0x12, 0x15, 0x4, 0x16, 0x16
	.byte 0x14, 0x16, 0x15, 0x10, 0x14, 0x16, 0x15
	.word byte_8061416
	.byte 0x58, 0xB, 0x78, 0xF8, 0x4, 0x16, 0x40, 0x10, 0x0, 0x0, 0x8
	.byte 0x8, 0x2, 0x18, 0x0, 0x1E, 0x2, 0x18, 0x2, 0x4E, 0x2, 0x48
	.byte 0x6, 0x4E, 0x14, 0x0, 0x10, 0x33, 0x10, 0x32, 0x14, 0x32, 0xE
	.byte 0x32, 0x10, 0x32, 0xE, 0x32, 0x13, 0x32, 0x16, 0x33, 0x15, 0x31
	.byte 0x28, 0x33, 0x5, 0x20, 0x20, 0x30, 0x20, 0x33, 0x10, 0x33, 0x0
	.byte 0x28, 0x16, 0x32, 0x13, 0x32, 0x10, 0x30, 0x13, 0x33, 0x16, 0x32
	.byte 0x5, 0x20, 0x58, 0x1C, 0x78, 0x10, 0xF8, 0x25, 0x40, 0x28, 0x2
	.byte 0x8, 0x4, 0x18, 0xFC, 0x4, 0xFE, 0x16, 0xFC, 0x4, 0x0, 0x40
	.byte 0x0, 0x40, 0x0, 0x3A, 0x16, 0x0, 0xC, 0x21, 0xC, 0x21, 0x10
	.byte 0x20, 0x8, 0x20, 0x10, 0x20, 0x10, 0x20, 0x10, 0x20, 0x10, 0x21
	.byte 0xE, 0x1F, 0x28, 0x21, 0xFC, 0x10, 0x1E, 0x21, 0x1E, 0x20, 0xE
	.byte 0x21, 0xFE, 0x16, 0x10, 0x20, 0x10, 0x20, 0x10, 0x20, 0xE, 0x21
	.byte 0x12, 0x1F, 0xFC, 0x10, 0x58, 0x10, 0x78, 0x0, 0xFE, 0x16, 0x40
	.byte 0x16, 0xFC, 0x8, 0x0, 0x0, 0x2, 0x6, 0x2, 0x6, 0x2, 0x6
	.byte 0x0, 0x3F, 0x0, 0x3C, 0x8, 0x3D, 0x1D, 0x0, 0x17, 0x1D, 0x10
	.byte 0x18, 0x1E, 0x1D, 0x18, 0x1D, 0x19, 0x1D, 0x1B, 0x1D, 0x1D, 0x1C
	.byte 0x20, 0x1D, 0x1B, 0x1C, 0x42, 0x1F, 0x0, 0x19, 0x27, 0x1E, 0x2B
	.byte 0x1F, 0x1B, 0x1E, 0x0, 0x19, 0x20, 0x1D, 0x20, 0x1E, 0x1C, 0x1C
	.byte 0x1D, 0x1F, 0x1E, 0x1E, 0x0, 0x19, 0x6A, 0x14, 0x76, 0xFF, 0x0
	.byte 0x19, 0x4E, 0x18, 0x0, 0x4, 0x0, 0x0, 0x4, 0x0, 0x4, 0x0
	.byte 0x4, 0x0, 0xA, 0x32, 0xA, 0x32, 0xA, 0x32, 0x10, 0x0, 0x10
	.byte 0x18, 0x10, 0x18, 0x1B, 0x19, 0x14, 0x1A, 0x14, 0x1A, 0x14, 0x19
	.byte 0x18, 0x18, 0x18, 0x1B, 0x18, 0x19, 0x2B, 0x1C, 0x6, 0xC, 0x1E
	.byte 0x1B, 0x28, 0x1B, 0x14, 0x1B, 0x2, 0x14, 0x18, 0x1A, 0x18, 0x1B
	.byte 0x18, 0x17, 0x18, 0x1B, 0x1B, 0x19, 0x4, 0x16, 0x5A, 0x8, 0x72
	.byte 0xFC, 0xF8, 0x14, 0x44, 0x16, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x8, 0x48, 0x8, 0x48, 0x8, 0x48, 0x0
	.byte 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18
	.byte 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0x4
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17
	.byte 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x12, 0x18
	.byte 0x19, 0x28, 0x14, 0x0, 0x23, 0x0, 0x14, 0x0, 0x0, 0x8, 0x10
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x40, 0x8, 0x3D, 0xA
	.byte 0x3D, 0x10, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18
	.byte 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0
	.byte 0x0, 0xA, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0
	.byte 0x12, 0x18, 0x19, 0x28, 0x14, 0xF8, 0x18, 0x0, 0x14, 0x0, 0x0
	.byte 0xFC, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xF9, 0x40, 0x0
	.byte 0x40, 0x1, 0x39, 0x0, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18
	.byte 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	.byte 0x18, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C
	.byte 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14, 0xF0, 0x18, 0x0, 0x14
	.byte 0x0, 0x0, 0x0, 0xFD, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x4D, 0x0, 0x48, 0x0, 0x48, 0x0, 0x0, 0x0, 0x0, 0x10, 0x18
	.byte 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18
	.byte 0x18, 0x18, 0x18, 0x0, 0x0, 0x0, 0x1A, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18
	.byte 0x1A, 0x1C, 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14, 0xF6, 0x26
	.byte 0x0, 0x14, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0xFC, 0x48, 0xFC, 0x46, 0xFE, 0x42, 0x0, 0x0, 0x0, 0x0
	.byte 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18
	.byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0xFD, 0x1B, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18
	.byte 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14
	.byte 0xF0, 0x1C, 0x0, 0x14, 0x0, 0x0, 0xFE, 0x4, 0xFC, 0x18, 0xFC
	.byte 0x1E, 0xFC, 0x18, 0x0, 0x50, 0x0, 0x48, 0x0, 0x48, 0x10, 0x0
	.byte 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12
	.byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0x0, 0x20
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFC, 0x28, 0x19, 0x17, 0x18
	.byte 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x28, 0x18, 0x19
	.byte 0x28, 0x14, 0xF8, 0x28, 0x0, 0x14, 0x0, 0x0, 0xF8, 0x16, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x3C, 0x8, 0x3A, 0x8, 0x38
	.byte 0x0, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12
	.byte 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0
	.byte 0x4, 0xD, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x19
	.byte 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x12
	.byte 0x18, 0x19, 0x28, 0x14, 0xF4, 0x1E, 0x0, 0x14, 0x0, 0x0, 0x6
	.byte 0x8, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0xA, 0x46, 0xA, 0x40
	.byte 0xC, 0x40, 0x0, 0x0, 0x0, 0x0, 0xE, 0x2A, 0x18, 0x18, 0x12
	.byte 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	.byte 0x0, 0x0, 0x4, 0x14, 0x1A, 0x2A, 0x0, 0x0, 0xC, 0x2A, 0x0
	.byte 0x10, 0x19, 0x17, 0x18, 0x1A, 0x10, 0x28, 0x18, 0x1A, 0x1C, 0x19
	.byte 0x4, 0x14, 0x18, 0x19, 0x28, 0x14, 0xFC, 0x22, 0x0, 0x14, 0x0
	.byte 0x0, 0x8, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x18, 0x18
	.byte 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18, 0x18, 0x18
	.byte 0x18, 0x18, 0x0, 0x0, 0x3C, 0x1B, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17, 0x18, 0x1A
	.byte 0x1C, 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14, 0x0, 0x10, 0x0
	.byte 0x14, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10
	.byte 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18, 0x18, 0x18
	.byte 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0xF0, 0xA, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x10, 0x19, 0x17, 0x18, 0x1A, 0x18, 0x17
	.byte 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x12, 0x18, 0x19, 0x28, 0x14, 0x0
	.byte 0x10, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0, 0xFC, 0x18, 0xFC, 0x1E
	.byte 0xFC, 0x18, 0x0, 0x50, 0x0, 0x48, 0x0, 0x48, 0x10, 0x0, 0x0
	.byte 0x0, 0x10, 0x18, 0x18, 0x18, 0x12, 0x18, 0x12, 0x18, 0x12, 0x18
	.byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x0, 0x0, 0x0, 0x20, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0xFC, 0x28, 0x19, 0x17, 0x18, 0x1A
	.byte 0x18, 0x17, 0x18, 0x1A, 0x1C, 0x19, 0x0, 0x28, 0x18, 0x19, 0x28
	.byte 0x14, 0xF8, 0x28, 0x0, 0x14, 0x0, 0x0, 0xF8, 0x16, 0x6, 0x0
	.byte 0x6, 0x0, 0x6, 0x0, 0x10, 0x2A, 0x10, 0x2C, 0x10, 0x2C, 0x18
	.byte 0x0, 0x1B, 0x11, 0x18, 0x11, 0x23, 0x11, 0x1D, 0x11, 0x1D, 0x11
	.byte 0x1D, 0x11, 0x23, 0x11, 0x23, 0x11, 0x23, 0x11, 0x30, 0x13, 0x8
	.byte 0x10, 0x23, 0x15, 0x30, 0x13, 0xFF, 0x1A, 0x6, 0x10, 0x20, 0x11
	.byte 0x20, 0x12, 0x20, 0x10, 0x23, 0x12, 0x24, 0x12, 0x8, 0x10, 0x23
	.byte 0x12, 0x30, 0x14, 0xF8, 0x18, 0x0, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x4, 0x10, 0x4, 0x18, 0x4, 0x10, 0x8, 0x40, 0x8, 0x40, 0x8
	.byte 0x40, 0x10, 0x0, 0x10, 0x25, 0x10, 0x26, 0x18, 0x26, 0x11, 0x26
	.byte 0x12, 0x26, 0x12, 0x26, 0x18, 0x26, 0x18, 0x26, 0x18, 0x25, 0x28
	.byte 0x28, 0x4, 0x20, 0x18, 0x27, 0x28, 0x27, 0x12, 0x27, 0x4, 0x20
	.byte 0x18, 0x26, 0x16, 0x27, 0x18, 0x27, 0x18, 0x27, 0x19, 0x26, 0x4
	.byte 0x20, 0x18, 0x27, 0x28, 0x26, 0xF8, 0x1C, 0x0, 0x14, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_8018886

	thumb_func_start sub_801986C
sub_801986C:
	push {r4,r5,lr}
	ldr r1, off_80198E4 // =eActiveCollisionDataBitfield 
	mov r0, #0
	str r0, [r1]
	mov r5, #1
	lsl r5, r5, #0x1f
	mov r4, r10
	ldr r4, [r4,#oToolkit_CollisionDataPtr]
loc_801987C:
	// memBlock
	mov r0, r4
	// size
	mov r1, #oCollisionData_Size
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	str r5, [r4,#oCollisionData_CollisionIndexBit]
	add r4, #oCollisionData_Size
	lsr r5, r5, #1
	bne loc_801987C
	bl sub_8019FA4
	pop {r4,r5,pc}
	thumb_func_end sub_801986C

	thumb_func_start object_createCollisionData
object_createCollisionData:
	push {r4,lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_CollisionDataPtr]
	ldr r3, off_80198E4 // =eActiveCollisionDataBitfield 
	ldr r2, [r3]
	mov r1, #1
	lsl r1, r1, #0x1f
loc_80198A0:
	tst r2, r1
	beq loc_80198AE
	add r0, #0xa8
	lsr r1, r1, #1
	bne loc_80198A0
	mov r0, #0
	pop {r4,pc}
loc_80198AE:
	orr r2, r1
	str r2, [r3]
	mov r4, r0
	// size
	mov r1, #0x44
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x48
	// memBlock
	add r0, r0, r4
	// size
	mov r1, #0x60
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, r4
	mov r1, #1
	strb r1, [r0]
	str r0, [r5,#oBattleObject_CollisionDataPtr]
	pop {r4,pc}
	thumb_func_end object_createCollisionData

	thumb_func_start object_freeCollisionData
object_freeCollisionData:
	tst r0, r0
	beq locret_80198E0
	mov r1, #0
	strb r1, [r0,#oCollisionData_Enabled]
	ldr r2, [r0,#oCollisionData_CollisionIndexBit]
	ldr r3, off_80198E4 // =eActiveCollisionDataBitfield 
	ldr r1, [r3]
	bic r1, r2
	str r1, [r3]
locret_80198E0:
	mov pc, lr
	.balign 4, 0
off_80198E4: .word eActiveCollisionDataBitfield
byte_80198E8: .byte 0x7F
byte_80198E9: .byte 0x0, 0x0, 0x7F
byte_80198EC: .byte 0x0, 0x0, 0x1, 0x0, 0x7F
byte_80198F1: .byte 0x1, 0x0, 0x7F
byte_80198F4: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x7F
byte_80198FB: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F
byte_8019900: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x7F
byte_8019907: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x7F
byte_8019910: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x5, 0x0, 0x7F
byte_801991D: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_8019928: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_8019931: .byte 0x0, 0x0, 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0x7F
byte_801993C: .byte 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0x7F
byte_8019945: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_801994C: .byte 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_8019951: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x1, 0xFF, 0xFF
	.byte 0x1, 0x1, 0x1, 0xFF, 0xFF, 0x7F
byte_8019964: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x1, 0xFF, 0xFF, 0x1, 0x1
	.byte 0x1, 0xFF, 0xFF, 0x7F
byte_8019975: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x7F
byte_8019982: .byte 0x0, 0x0, 0x1, 0xFF, 0xFF, 0x1, 0x7F
byte_8019989: .byte 0x0, 0x0, 0xFF, 0xFF, 0x1, 0x1, 0x7F
byte_8019990: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x7F
byte_8019999: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x1, 0x0, 0x7F
byte_80199A2: .byte 0x0, 0x0, 0x1, 0xFF, 0x7F
byte_80199A7: .byte 0x0, 0x0, 0x1, 0x1, 0x7F
byte_80199AC: .byte 0x0, 0x0, 0x0, 0xFF, 0x7F
byte_80199B1: .byte 0x0, 0x0, 0x0, 0x1, 0x7F
byte_80199B6: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x7F
byte_80199C5: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x3
	.byte 0xFF, 0x3, 0x0, 0x3, 0x1, 0x7F
byte_80199DA: .byte 0x0, 0x0, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x3
	.byte 0xFF, 0x3, 0x0, 0x3, 0x1, 0x4, 0xFF, 0x4, 0x0, 0x4, 0x1, 0x7F
byte_80199F5: .byte 0x0, 0x0, 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_80199FC: .byte 0x1, 0x0, 0xFF, 0x0, 0x7F
byte_8019A01: .byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0x1, 0x7F
byte_8019A08: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x7F
byte_8019A13: .byte 0x0, 0x0, 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x1, 0xFF, 0x1, 0x1, 0x2, 0x0, 0x2
	.byte 0xFF, 0x2, 0x1, 0x3, 0x0, 0x3, 0xFF, 0x3, 0x1, 0x7F
byte_8019A2C: .byte 0xFF, 0xFF, 0x0, 0xFF, 0x1, 0xFF, 0x0, 0x0, 0xFF, 0x1, 0x0, 0x1
	.byte 0x1, 0x1, 0x7F
byte_8019A3B: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x3, 0xFF, 0x4, 0xFF, 0x5, 0xFF
	.byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x5, 0x0
	.byte 0x0, 0x1, 0x1, 0x1, 0x2, 0x1, 0x3, 0x1, 0x4, 0x1, 0x5, 0x1
	.byte 0x7F
byte_8019A60: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x1, 0x0, 0xFE
	.byte 0x1, 0xFF, 0x1, 0x0, 0x1, 0x7F
byte_8019A73: .byte 0xFE, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x1
	.byte 0x0, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1, 0x7F
byte_8019A86: .byte 0xFE, 0xFE, 0xFF, 0xFE, 0x0, 0xFE, 0x1, 0xFE, 0x2, 0xFE
	.byte 0xFE, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF
	.byte 0xFE, 0x0, 0xFF, 0x0, 0x0, 0x0, 0x1, 0x0, 0x2, 0x0
	.byte 0xFE, 0x1, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1
	.byte 0xFE, 0x2, 0xFF, 0x2, 0x0, 0x2, 0x1, 0x2, 0x2, 0x2
	.byte 0x7F
byte_8019AB9: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x3, 0xFF, 0x4, 0xFF, 0x5, 0xFF
	.byte 0x5, 0x0, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1, 0x3, 0x1, 0x4, 0x1
	.byte 0x5, 0x1, 0x7F
byte_8019AD4: .byte 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x2, 0xFF, 0x2, 0x1, 0x7F
byte_8019ADF: .byte 0x0, 0xFF, 0x1, 0xFF, 0x2, 0xFF, 0x1, 0x0, 0x0, 0x1, 0x1, 0x1, 0x2, 0x1
	.byte 0x7F
byte_8019AEE: .byte 0x0, 0xFF, 0x0, 0x1, 0x0, 0x0, 0x1, 0x0, 0x2, 0x0, 0x3, 0x0, 0x4, 0x0, 0x5, 0x0
	.byte 0x7F
byte_8019AFF: .byte 0x0, 0x0, 0xFF, 0x0, 0xFE, 0x0, 0x7F
byte_8019B06: .byte 0x5, 0xFE, 0x4, 0xFE, 0x3, 0xFE, 0x2, 0xFE, 0x1, 0xFE, 0x0, 0xFE
	.byte 0xFF, 0xFE, 0xFE, 0xFE, 0xFD, 0xFE, 0xFC, 0xFE, 0xFB, 0xFE, 0x5, 0x2
	.byte 0x4, 0x2, 0x3, 0x2, 0x2, 0x2, 0x1, 0x2, 0x0, 0x2, 0xFF, 0x2
	.byte 0xFE, 0x2, 0xFD, 0x2, 0xFC, 0x2, 0xFB, 0x2, 0x5, 0xFF, 0x4, 0xFF
	.byte 0x3, 0xFF, 0x2, 0xFF, 0xFE, 0xFF, 0xFD, 0xFF, 0xFC, 0xFF, 0xFB, 0xFF
	.byte 0x5, 0x1, 0x4, 0x1, 0x3, 0x1, 0x2, 0x1, 0xFE, 0x1, 0xFD, 0x1
	.byte 0xFC, 0x1, 0xFB, 0x1, 0x5, 0x0, 0x4, 0x0, 0x3, 0x0, 0x2, 0x0
	.byte 0xFE, 0x0, 0xFD, 0x0, 0xFC, 0x0, 0xFB, 0x0, 0x7F
byte_8019B63: .byte 0x0, 0x0, 0x0, 0xFE, 0x0, 0xFF, 0x0, 0x1, 0x0, 0x2, 0x7F
byte_8019B6E: .byte 0x0, 0xFE, 0x0, 0xFF, 0x0, 0x1, 0x0, 0x2, 0x7F
	.balign 4, 0
PanelOffsetListsPointerTable::
	.word byte_80198E8
	.word byte_80198E9
	.word byte_80198EC
	.word byte_80198F1
	.word byte_80198F4
	.word byte_80198FB
	.word byte_8019900
	.word byte_8019907
	.word byte_8019910
	.word byte_801991D
	.word byte_8019928
	.word byte_8019931
	.word byte_801993C
	.word byte_8019945
	.word byte_801994C
	.word byte_8019951
	.word byte_8019964
	.word byte_8019975
	.word byte_8019982
	.word byte_8019989
	.word byte_8019990
	.word byte_8019999
	.word byte_80199A2
	.word byte_80199A7
	.word byte_80199AC
	.word byte_80199B1
	.word byte_80199B6 // this specific value is (sort of) referenced directly
	.word byte_80199C5
	.word byte_80199DA
	.word byte_80199F5
	.word byte_80199FC
	.word byte_8019A01
	.word byte_8019A08
	.word byte_8019A13
	.word byte_8019A2C
	.word byte_8019A3B
	.word byte_8019A60
	.word byte_8019A73
	.word byte_8019A86
	.word byte_8019AB9
	.word byte_8019AD4
	.word byte_8019ADF
	.word byte_8019AEE
	.word byte_8019AFF
	.word byte_8019B06
	.word byte_8019B63
	.word byte_8019B6E
byte_8019C34:: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x0, 0x10, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0
	.byte 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8019C7C:
	.word 0x0, 0x0
	.word 0x8410080, 0x4210080
	.word 0x55800200, 0xaa800200
	.word 0x51800100, 0xa2800100
	.word 0x80000080, 0x40000080
	.word 0x15800000, 0x2a800000
	.word 0x80000082, 0x40000082
	.word 0x80002080, 0x40002080
	.word 0x80000090, 0x40000090
	.word 0x80000180, 0x40000180
	.word 0x80000088, 0x40000088
	.word 0x80000084, 0x40000084
	.word 0x20010080, 0x10010080
	.word 0x55840000, 0xaa840000
	.word 0x810082, 0x810082
	.word 0xff800002, 0xff800002
	.word 0x8510080, 0x4310080
	.word 0x80002480, 0x40002480
	.word 0x80000880, 0x40000880
	.word 0x2010080, 0x1010080
	.word 0x55800000, 0xaa800000
	.word 0x8000008a, 0x4000008a
	.word 0x80000086, 0x40000086
	.word 0x8000008e, 0x4000008e
	.word 0x50000000, 0xa0000000
	.word 0x8000008c, 0x4000008c
	.word 0x8000009e, 0x4000009e
	.word 0x800040a0, 0x400040a0
	.word 0x80002088, 0x40002088
	.word 0x8000009c, 0x4000009c
	.word 0x4280, 0x4280
	.word 0x80040082, 0x40040082
	.word 0x80000888, 0x40000888
	.word 0x8004008a, 0x4004008a
	.word 0xc004808e, 0xc004808e
	.word 0x80000, 0x80000
	.word 0x80000c88, 0x40000c88
	.word 0x80000480, 0x40000480
	.word 0xc0040088, 0xc0040088
	.word 0xc0048082, 0xc0048082
	.word 0x80002086, 0x40002086
	.word 0x2010082, 0x1010082
	.word 0x3d800000, 0x3e800000
	.word 0x80000488, 0x40000488
	.word 0x8000408c, 0x4000408c
	.word 0x8000408a, 0x4000408a
	.word 0x80004086, 0x40004086
	.word 0x80004088, 0x40004088
	.word 0x8000408e, 0x4000408e
	.word 0x80005084, 0x40005084
	.word 0x80005080, 0x40005080
	.word 0xc004000e, 0xc004000e
	.word 0x80004084, 0x40004084
	.word 0x8410082, 0x4210082
	.word 0x80004082, 0x40004082
	.word 0x201008a, 0x101008a
	.word 0xf800000, 0xf800000
	.word 0x8510082, 0x4310082
	.word 0x841008a, 0x421008a
	.word 0x20010082, 0x10010082
	.word 0x8000408a, 0x4000408a
	.word 0x80, 0x80
	.word 0x2110080, 0x1110080
	.word 0x851008a, 0x431008a
	.word 0x20012080, 0x10012080
	.word 0x4000000, 0x8000000
	.word 0x80002090, 0x40002090
	.word 0x40080, 0x40080
	.word 0x20050080, 0x10050080
	.word 0x8000208a, 0x4000208a
	.word 0x800140a0, 0x400140a0
	.word 0x800000a0, 0x400000a0
	.word 0xc0040080, 0xc0040080
	.word 0x3f800000, 0x3f800000
	.word 0x80000482, 0x40000482
	.word 0x80000c88, 0x40000c88
	.word 0x2014082, 0x1014082
	.word 0x55000200, 0xaa000200
	.word 0x2010088, 0x1010088
	.word 0x81008a, 0x81008a
	.word 0x8412080, 0x4212080
	.word 0x8410092, 0x4210092
	.word 0x80001080, 0x40001080
	.word 0x8412082, 0x4212082
	.word 0x80002092, 0x40002092
	.word 0x841009a, 0x421009a
	.word 0x80000884, 0x40000884
	.word 0x800000b2, 0x400000b2
	.word 0xc0044080, 0xc0044080
	thumb_func_end object_freeCollisionData

	thumb_local_start
sub_8019F44:
	push {r4,r6,r7,lr}
	mov r7, r0
	ldrh r4, [r7,#oCollisionData_SelfDamage]
	mov r0, r4
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	strh r0, [r7,#oCollisionData_SelfDamage]
	lsl r4, r4, #0x11
	bcc loc_8019F5C
	ldrh r0, [r7,#oCollisionData_SelfDamage]
	add r0, r0, r0
	strh r0, [r7,#oCollisionData_SelfDamage]
loc_8019F5C:
	lsl r4, r4, #1
	bcc loc_8019F68
	mov r0, #0x10
	strb r0, [r7,#oCollisionData_StatusEffectBase]
	mov r0, #1
	strb r0, [r7,#oCollisionData_HitModifierBase]
loc_8019F68:
	lsl r4, r4, #1
	bcc loc_8019F74
	mov r0, #0xf8
	bl sub_801A4D0
	pop {r4,r6,r7,pc}
loc_8019F74:
	lsl r4, r4, #1
	bcc loc_8019F80
	mov r0, #0xf7
	bl sub_801A4D0
	bcc loc_8019F80
loc_8019F80:
	lsl r4, r4, #1
	bcc locret_8019F84
locret_8019F84:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8019F44

	thumb_func_start sub_8019F86
sub_8019F86:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r1,#oCollisionData_HitModifierBase]
	mov pc, lr
	thumb_func_end sub_8019F86

	thumb_func_start sub_8019F8C
sub_8019F8C:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r5,#oBattleObject_Element]
	mov r2, #0xf
	and r2, r0
	strb r2, [r1,#oCollisionData_PrimaryElement]
	mov r2, #0xf0
	and r0, r2
	strb r0, [r1,#oCollisionData_SecondaryElement]
	mov pc, lr
	thumb_func_end sub_8019F8C

	thumb_local_start
sub_8019F9E:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r1,#oCollisionData_SecondaryElementWeakness]
	mov pc, lr
	thumb_func_end sub_8019F9E

	thumb_local_start
sub_8019FA4:
	push {lr}
	// memBlock
	ldr r0, off_8019FB0 // =unk_2034F60 
	// size
	mov r1, #0xa0
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	.balign 4, 0
off_8019FB0: .word unk_2034F60
	thumb_func_end sub_8019FA4

/* r0 = collision data offset
   r1 = self collision type
   r2 = target collision type
   r3 = collision modifier*/
	thumb_func_start object_setupCollisionData
object_setupCollisionData:
	push {r4,r7,lr}
	mov r7, r0
	str r5, [r7,#oCollisionData_ParentObjectPtr]
	strb r3, [r7,#oCollisionData_HitModifierBase]
	ldrb r3, [r5,#oBattleObject_Element]
	mov r4, #0xf
	and r4, r3
	strb r4, [r7,#oCollisionData_PrimaryElement]
	mov r4, #0xf0
	and r3, r4
	strb r3, [r7,#oCollisionData_SecondaryElement]
	ldrh r4, [r5,#oBattleObject_AllianceAndDirectionFlip]
	strh r4, [r7,#oCollisionData_AllianceAndDirectionFlip]
	lsl r4, r4, #2
	ldrh r3, [r5,#oBattleObject_PanelXY]
	strh r3, [r7,#oCollisionData_PanelXY]
	mov r3, #1
	strb r3, [r7,#oCollisionData_Region]
	ldrh r3, [r5,#oBattleObject_StaminaDamageCounterDisabler]
	strb r3, [r7,#oCollisionData_StaminaDamageCounterDisabler]
	ldrh r3, [r5,#oBattleObject_Damage]
	strh r3, [r7,#oCollisionData_SelfDamage]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r4, r2
	bl sub_801A0BA
	str r0, [r7,#oCollisionData_SelfCollisionTypeFlags]
	bl battle_isTimeStop
	tst r0, r0
	beq loc_8019FFC
	mov r1, #1
	lsl r1, r1, #0x10
	ldr r2, [r7,#oCollisionData_SelfCollisionTypeFlags]
	orr r2, r1
	str r2, [r7,#oCollisionData_SelfCollisionTypeFlags]
loc_8019FFC:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, r4
	bl sub_801A0BA
	str r0, [r7,#oCollisionData_TargetCollisionTypeFlags]
	mov r0, r7
	bl sub_8019F44
	pop {r4,r7,pc}
	thumb_func_end object_setupCollisionData

	thumb_func_start object_removeCollisionData
object_removeCollisionData:
	push {r4-r7,lr}
	ldr r0, off_801A0C8 // =_object_removeCollisionData+1 
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	thumb_func_end object_removeCollisionData

	thumb_func_start object_presentCollisionData
object_presentCollisionData:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldr r2, [r4,#oCollisionData_FlagsFromCollision]
	ldr r0, [r4,#oCollisionData_Unk_54]
	orr r0, r2
	str r1, [r4,#oCollisionData_Unk_54]
	bl battle_isTimeStop
	tst r0, r0
	bne loc_801A034
	mov r0, #0
	strb r0, [r4,#oCollisionData_HitModifierFinal]
	strb r0, [r4,#oCollisionData_Unk_03]
	str r0, [r4,#oCollisionData_Unk_54]
loc_801A034:
	mov r1, #0
	strb r1, [r4,#oCollisionData_StatusEffectFinal]
	mov r0, #0x68 
	add r0, r0, r4
	mov r1, #0x40 
	bl ZeroFillByHalfword
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r3, off_801A0CC // =sub_300777C+1 
	mov lr, pc
	bx r3
	pop {r4,pc}
	thumb_func_end object_presentCollisionData

	thumb_func_start object_updateCollisionPanels
object_updateCollisionPanels:
	push {r4,r6,lr}
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r2, [r6,#oCollisionData_PanelX]
	ldrb r3, [r6,#oCollisionData_PanelY]
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r6,#oCollisionData_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r6,#oCollisionData_PanelY]
	ldrb r4, [r5,#oBattleObject_Alliance]
	bl sub_800E994
	strb r0, [r6,#oCollisionData_Direction]
	pop {r4,r6,pc}
	thumb_func_end object_updateCollisionPanels

	thumb_func_start object_setCollisionPanelsToCurrent
object_setCollisionPanelsToCurrent:
	push {r4,lr}
	ldr r2, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r2,#oCollisionData_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r2,#oCollisionData_PanelY]
	pop {r4,pc}
	thumb_func_end object_setCollisionPanelsToCurrent

// () -> void
	thumb_func_start object_clearCollisionRegion
object_clearCollisionRegion:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0
	strb r1, [r0,#oCollisionData_Region]
	mov pc, lr
	thumb_func_end object_clearCollisionRegion

	thumb_func_start object_setCollisionRegion
object_setCollisionRegion:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r1,#oCollisionData_Region]
	mov pc, lr
	thumb_func_end object_setCollisionRegion

	thumb_func_start object_updateCollisionData
object_updateCollisionData:
	push {r4,r7,lr}
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	strb r3, [r7,#oCollisionData_HitModifierBase]
	ldrh r3, [r5,#oBattleObject_Damage]
	strh r3, [r7,#oCollisionData_SelfDamage]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r4, r2
	bl sub_801A0BA
	str r0, [r7,#oCollisionData_SelfCollisionTypeFlags]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, r4
	bl sub_801A0BA
	str r0, [r7,#oCollisionData_TargetCollisionTypeFlags]
	bl battle_isTimeStop
	tst r0, r0
	beq loc_801A0B2
	mov r1, #1
	lsl r1, r1, #0x10
	ldr r2, [r7,#oCollisionData_SelfCollisionTypeFlags]
	orr r2, r1
	str r2, [r7,#oCollisionData_SelfCollisionTypeFlags]
loc_801A0B2:
	mov r0, r7
	bl sub_8019F44
	pop {r4,r7,pc}
	thumb_func_end object_updateCollisionData

	thumb_local_start
sub_801A0BA:
	lsl r0, r0, #2
	ldr r3, off_801A0D0 // =byte_8019C7C
	lsl r1, r1, #3
	add r1, r1, r0
	ldr r0, [r3,r1]
	mov pc, lr
	.balign 4, 0x00
off_801A0C8: .word _object_removeCollisionData+1
off_801A0CC: .word sub_300777C+1
off_801A0D0: .word byte_8019C7C
	thumb_func_end sub_801A0BA

	thumb_func_start object_spawnCollisionEffect
object_spawnCollisionEffect:
	push {r4,r6,lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r6, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801A13C // =0x3f800000 
	tst r6, r1
	beq locret_801A0FE
	mov r1, #1
	tst r6, r1
	bne locret_801A0FE
	ldrb r0, [r3,#oCollisionData_HitEffect]
	cmp r0, #0xff
	beq locret_801A0FE
	mov r4, r0
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r0, #0xf
	bl AddRandomVarianceToTwoCoords
	bl sub_80E08C4
locret_801A0FE:
	pop {r4,r6,pc}
	thumb_func_end object_spawnCollisionEffect

	thumb_func_start sub_801A100
sub_801A100:
	push {r4,r6,lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r6, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801A13C // =0x3f800000 
	tst r6, r1
	beq locret_801A138
	mov r1, #1
	tst r6, r1
	bne locret_801A138
	ldrb r0, [r3,#oCollisionData_HitEffect]
	cmp r0, #0xff
	beq locret_801A138
	mov r4, r0
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	bl convertXYToPanelXY_800E258
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r0, #0xf
	bl AddRandomVarianceToTwoCoords
	bl sub_80E08C4
locret_801A138:
	pop {r4,r6,pc}
	.balign 4, 0
dword_801A13C: .word 0x3F800000
	thumb_func_end sub_801A100

	thumb_func_start object_setCollisionHitEffect
object_setCollisionHitEffect:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r3,#oCollisionData_HitEffect]
	mov pc, lr
	thumb_func_end object_setCollisionHitEffect

	thumb_func_start sub_801A146
sub_801A146:
	ldrb r0, [r5,#oBattleObject_Element]
	mov r3, #0xf
	and r0, r3
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r3,#oCollisionData_HitEffect]
	mov pc, lr
	thumb_func_end sub_801A146

// (int a1) -> void
	thumb_func_start object_setFlag1
object_setFlag1:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r2, [r1,#oCollisionData_ObjectFlags1]
	orr r2, r0
	str r2, [r1,#oCollisionData_ObjectFlags1]
	mov pc, lr
	thumb_func_end object_setFlag1

// (int bitfield) -> void
	thumb_func_start object_clearFlag
object_clearFlag:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r2, [r1,#oCollisionData_ObjectFlags1]
	bic r2, r0
	str r2, [r1,#oCollisionData_ObjectFlags1]
	mov pc, lr
	thumb_func_end object_clearFlag

// () -> int
	thumb_func_start object_getFlag
object_getFlag:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r1,#oCollisionData_ObjectFlags1]
	mov pc, lr
	thumb_func_end object_getFlag

	thumb_func_start object_setFlag2
object_setFlag2:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r2, [r1,#oCollisionData_ObjectFlags2]
	orr r2, r0
	str r2, [r1,#oCollisionData_ObjectFlags2]
	mov pc, lr
	thumb_func_end object_setFlag2

	thumb_func_start object_clearFlag2
object_clearFlag2:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r2, [r1,#oCollisionData_ObjectFlags2]
	bic r2, r0
	str r2, [r1,#oCollisionData_ObjectFlags2]
	mov pc, lr
	thumb_func_end object_clearFlag2

	thumb_func_start object_getFlag2
object_getFlag2:
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r1,#oCollisionData_ObjectFlags2]
	mov pc, lr
	thumb_func_end object_getFlag2

	thumb_local_start
sub_801A186:
	push {r7,lr}
	bl battle_isTimeStop
	bne locret_801A1FA
	bl battle_isPaused
	bne locret_801A1FA
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r7,#oCollisionData_Region]
	cmp r0, #0
	beq locret_801A1FA
	ldrb r0, [r7,#oCollisionData_PanelX]
	ldrb r1, [r7,#oCollisionData_PanelY]
	bl object_getPanelDataOffset
	tst r0, r0
	beq locret_801A1FA
	ldrb r0, [r0,#oPanelData_Type]
	cmp r0, #4
	bne loc_801A1CE
	bl object_getFlag // () -> int
	ldr r1, dword_801A1FC // =GameHeader
	tst r0, r1
	bne loc_801A1CE
	ldrb r0, [r7,#oCollisionData_PoisonPanelTimer]
	sub r0, #1
	strb r0, [r7,#oCollisionData_PoisonPanelTimer]
	bge locret_801A1FA
	mov r0, #6
	strb r0, [r7,#oCollisionData_PoisonPanelTimer]
	mov r1, #0x8c
	ldrh r0, [r7,r1]
	add r0, #1
	strh r0, [r7,r1]
	pop {r7,pc}
loc_801A1CE:
	mov r1, #0
	strb r1, [r7,#oCollisionData_PoisonPanelTimer]
	cmp r0, #6
	bne locret_801A1FA
	ldrb r0, [r5,#oBattleObject_Element]
	mov r1, #0xf
	and r0, r1
	cmp r0, #4
	bne locret_801A1FA
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	ldrb r0, [r2,#oBattleState_Unk_0e]
	ldrh r1, [r5,#oBattleObject_HP]
	cmp r1, #9
	bgt loc_801A1EE
	ldrb r0, [r2,#oBattleState_Unk_16]
loc_801A1EE:
	tst r0, r0
	bne locret_801A1FA
	mov r0, #1
	bl object_addHP
	pop {r7,pc}
locret_801A1FA:
	pop {r7,pc}
	.balign 4, 0
dword_801A1FC: .word 0x8000028
	thumb_func_end sub_801A186

	thumb_local_start
sub_801A200:
	push {r4,r6,lr}
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801A256
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x90
	ldrh r1, [r4,r2]
	tst r1, r1
	beq loc_801A24C
	ldr r2, dword_801A524 // =0x8000 
	tst r1, r2
	beq loc_801A24C
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r2, #1
	eor r0, r2
	mov r6, r0
	mov r1, #oNaviStats_Transformation
	bl GetBattleNaviStatsByte
	mov r2, r0
	cmp r2, #0
	beq loc_801A236
	cmp r2, #0xb
	beq loc_801A236
	cmp r2, #0xc
	bne loc_801A24C
loc_801A236:
	bl sub_801445C
	bne loc_801A24C
	bl sub_8014490
	bne loc_801A24C
	mov r0, r6
	mov r1, #0xff
	bl sub_8015BEC
	b loc_801A24C
loc_801A24C:
	mov r1, #0x8e
	ldrh r1, [r4,r1]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_8015C12
locret_801A256:
	pop {r4,r6,pc}
	thumb_func_end sub_801A200

	thumb_func_start object_setCollisionStatusEffect1
object_setCollisionStatusEffect1:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r3,#oCollisionData_StatusEffectBase]
	mov pc, lr
	thumb_func_end object_setCollisionStatusEffect1

	thumb_local_start
object_setCollisionStatusEffect2:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r3,#oCollisionData_StatusEffectFinal]
	mov pc, lr
	thumb_func_end object_setCollisionStatusEffect2

	thumb_func_start sub_801A264
sub_801A264:
	push {lr}
	ldr r0, dword_801A528 // =0x8001e800 
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, dword_801A52C // =0x300e8 
	bl object_clearFlag2
	mov r0, #0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r3,#oCollisionData_Unk_1c]
	strh r0, [r3,#oCollisionData_Unk_1e]
	strh r0, [r3,#oCollisionData_BlindTimer]
	strh r0, [r3,#oCollisionData_Unk_22]
	strh r0, [r3,#oCollisionData_Unk_2a]
	strh r0, [r3,#oCollisionData_Unk_2c]
	pop {pc}
	thumb_func_end sub_801A264

	thumb_func_start sub_801A284
sub_801A284:
	push {lr}
	ldr r0, off_801A530 // =0x800 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #8
	bl object_clearFlag2
	mov r0, #0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r3,#oCollisionData_Unk_1c]
	pop {pc}
	thumb_func_end sub_801A284

	thumb_func_start sub_801A29A
sub_801A29A:
	push {lr}
	ldr r0, dword_801A534 // =0x10000 
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, dword_801A534 // =0x10000 
	bl object_clearFlag2
	mov r0, #0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r3,#oCollisionData_Unk_2a]
	pop {pc}
	thumb_func_end sub_801A29A

	thumb_func_start sub_801A2B0
sub_801A2B0:
	push {lr}
	ldr r0, dword_801A538 // =0x80000000 
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, dword_801A53C // =0x20000 
	bl object_clearFlag2
	mov r0, #0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r3,#oCollisionData_Unk_2c]
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r0,#oAIData_Unk_3c]
	strh r0, [r5,#oBattleObject_Z16]
	pop {pc}
	thumb_func_end sub_801A2B0

	thumb_local_start
sub_801A2CC:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	mov r1, #0x10
	tst r0, r1
	beq locret_801A306
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r0,#oAIData_ActorType]
	cmp r1, #2
	beq loc_801A2EA
	ldr r0, dword_801A540 // =0xffff 
	strh r0, [r5,#oBattleObject_Chip]
	mov r0, #0
	strb r0, [r5,#oBattleObject_ChipsHeld]
	pop {pc}
loc_801A2EA:
	ldr r0, dword_801A540 // =0xffff 
	strh r0, [r5,#oBattleObject_Chip]
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl getBattleHandAddr_8010018
	ldrb r1, [r0]
	lsl r2, r1, #1
	add r2, #2
	ldrh r2, [r0,r2]
	ldr r3, dword_801A540 // =0xffff 
	cmp r2, r3
	beq locret_801A306
	add r1, #1
	strb r1, [r0]
locret_801A306:
	pop {pc}
	thumb_func_end sub_801A2CC

	thumb_local_start
sub_801A308:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_8010022
	mov r4, r0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x92
	ldrh r0, [r3,r2]
	ldrb r1, [r4,#oAIData_Unk_10]
	add r1, r1, r0
	strb r1, [r4,#oAIData_Unk_10]
	pop {r4,pc}
	thumb_func_end sub_801A308

	thumb_local_start
sub_801A324:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_8010022
	mov r4, r0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	mov r2, #0x92
	ldrh r0, [r3,r2]
	ldrb r1, [r4,#oAIData_Unk_10]
	add r1, r1, r0
	strb r1, [r4,#oAIData_Unk_10]
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldrb r4, [r3,#oAIData_Unk_10]
	mov r0, #0
	strb r0, [r3,#oAIData_Unk_10]
	ldrh r0, [r5,#oBattleObject_MaxHP]
	mov r1, #0xa
	svc 6
	mul r0, r4
	tst r0, r0
	beq locret_801A368
	bl object_addHP
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl spawn_t1_0x0_EffectObject
	mov r0, #SOUND_UNK_8A
	bl PlaySoundEffect
locret_801A368:
	pop {r4,pc}
	thumb_func_end sub_801A324

	thumb_local_start
sub_801A36A:
	push {r4,r7,lr}
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_isPaused
	bne loc_801A38A
	bl battle_isTimeStop
	bne loc_801A38A
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrh r0, [r1,#oAIData_Unk_38]
	tst r0, r0
	beq loc_801A38A
	sub r0, #1
	strh r0, [r1,#oAIData_Unk_38]
	bgt loc_801A38A
	b loc_801A3B8
loc_801A38A:
	bl object_getFlag // () -> int
	ldr r1, dword_801A544 // =0x100040 
	tst r0, r1
	bne locret_801A3D8
	ldrb r0, [r7,#oCollisionData_PanelX]
	ldrb r1, [r7,#oCollisionData_PanelY]
	bl object_getPanelDataOffset
	ldrb r1, [r0,#oPanelData_Type]
	cmp r1, #9
	blt loc_801A3AC
	cmp r1, #0xc
	bgt loc_801A3AC
	bl sub_801A400
	pop {r4,r7,pc}
loc_801A3AC:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x13
	tst r0, r1
	beq locret_801A3D8
loc_801A3B8:
	mov r0, #1
	lsl r0, r0, #0x13
	bl object_clearFlag // (int bitfield) -> void
	ldrb r0, [r7,#oCollisionData_PanelX]
	ldrb r1, [r7,#oCollisionData_PanelY]
	bl object_getPanelDataOffset
	tst r0, r0
	beq locret_801A3D8
	ldrb r1, [r0,#oPanelData_Type]
	cmp r1, #7
	bne locret_801A3D8
	bl sub_801A3DA
	pop {r4,r7,pc}
locret_801A3D8:
	pop {r4,r7,pc}
	thumb_func_end sub_801A36A

	thumb_local_start
sub_801A3DA:
	push {r7,lr}
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r7,#oCollisionData_PrimaryElement]
	cmp r0, #2
	beq locret_801A3FE
	bl object_getFlag // () -> int
	mov r1, #0x24 
	tst r0, r1
	bne locret_801A3FE
	ldr r1, off_801A548 // =timer_2000000 
	tst r0, r1
	beq locret_801A3FE
	mov r0, #0x10
	bl object_setFlag2
	mov r0, #2
	strb r0, [r5,#oBattleObject_Unk_0f]
locret_801A3FE:
	pop {r7,pc}
	thumb_func_end sub_801A3DA

	thumb_local_start
sub_801A400:
	push {r7,lr}
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	ldrh r1, [r7,#oAIData_Unk_38]
	tst r1, r1
	bne locret_801A41E
	bl object_getFlag // () -> int
	mov r1, #0x24 
	tst r0, r1
	bne locret_801A41E
	mov r0, #0x10
	bl object_setFlag2
	mov r0, #3
	strb r0, [r5,#oBattleObject_Unk_0f]
locret_801A41E:
	pop {r7,pc}
	thumb_func_end sub_801A400

	thumb_local_start
sub_801A420:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r3,#oCollisionData_CounterTimer]
	tst r0, r0
	beq locret_801A42C
	sub r0, #1
	strb r0, [r3,#oCollisionData_CounterTimer]
locret_801A42C:
	mov pc, lr
	thumb_func_end sub_801A420

	thumb_local_start
sub_801A42E:
	push {r4,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x74 
	ldrb r1, [r0,r1]
	cmp r1, #0
	beq locret_801A45A
	mov r1, #0x80
	ldrh r1, [r0,r1]
	cmp r1, #0
	beq locret_801A45A
	ldrh r0, [r5,#oBattleObject_NameID]
	mov r1, #5
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	bl getBattleArmPositionMaybe_8018810
	lsl r3, r1, #0x10
	lsl r1, r0, #0x10
	mov r2, #0
	mov r4, #0
	bl sub_80E8124
locret_801A45A:
	pop {r4,pc}
	thumb_func_end sub_801A42E

	thumb_local_start
sub_801A45C:
	push {r4,r6,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldr r6, [r4,#oCollisionData_FlagsFromCollision]
	mov r2, #0x40 
	tst r6, r2
	beq locret_801A4A4
	bl sub_800A8F8
	tst r0, r0
	beq loc_801A47C
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	ldr r1, off_801A54C // =0x1500 
	bl sub_802E032
loc_801A47C:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r1, #8
	mov r2, #1
	bl sub_800AB46
	mov r0, #0
	strb r0, [r4,#oCollisionData_CounterTimer]
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801A4A4
	bl sub_801E270
	push {r0}
	mov r0, #SOUND_SELECT_86
	bl PlaySoundEffect
	pop {r0}
locret_801A4A4:
	pop {r4,r6,pc}
	thumb_func_end sub_801A45C

	thumb_local_start
sub_801A4A6:
	push {r4,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa4
	ldrb r1, [r0,r1]
	cmp r1, #0xf4
	beq loc_801A4B6
	cmp r1, #0xf7
	bne locret_801A4CE
loc_801A4B6:
	ldrh r0, [r5,#oBattleObject_NameID]
	mov r1, #5
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	bl getBattleArmPositionMaybe_8018810
	lsl r3, r1, #0x10
	lsl r1, r0, #0x10
	mov r2, #0
	mov r4, #3
	bl sub_80E8124
locret_801A4CE:
	pop {r4,pc}
	thumb_func_end sub_801A4A6

	thumb_func_start sub_801A4D0
sub_801A4D0:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	lsl r1, r1, #8
	add r1, r1, r0
	mov r0, #0x12
	strh r1, [r3,r0]
	mov pc, lr
	thumb_func_end sub_801A4D0

	thumb_func_start sub_801A4DC
sub_801A4DC:
	push {r4,r5,lr}
	ldr r2, [r5,#oBattleObject_CollisionDataPtr]
	mov r5, r1
	ldr r1, [r2,#oCollisionData_Unk_7c]
	ldr r2, off_801A550 // =eCollisionData 
	mov r3, #0
loc_801A4E8:
	cmp r5, #4
	blt loc_801A502
	tst r1, r1
	beq loc_801A502
	lsl r1, r1, #1
	bcc loc_801A4FE
	ldr r4, [r2,#oCollisionData_ParentObjectPtr]
	str r4, [r0]
	add r0, #4
	add r3, #1
	sub r5, #4
loc_801A4FE:
	add r2, #oCollisionData_Size
	b loc_801A4E8
loc_801A502:
	mov r0, r3
	pop {r4,r5,pc}
	thumb_func_end sub_801A4DC

	thumb_local_start
sub_801A506:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	mov r0, #0x75 
	ldrb r0, [r3,r0]
	cmp r0, #0
	beq locret_801A520
	mov r0, #0x80
	ldrh r0, [r3,r0]
	cmp r0, #0
	beq locret_801A520
	ldr r0, dword_801A538 // =0x80000000 
	bl SetAIData_Unk_44_Flag
locret_801A520:
	pop {pc}
	.balign 4, 0
dword_801A524: .word 0x8000
dword_801A528: .word 0x8001E800
dword_801A52C: .word 0x300E8
off_801A530: .word 0x800
dword_801A534: .word 0x10000
dword_801A538: .word 0x80000000
dword_801A53C: .word 0x20000
dword_801A540: .word 0xFFFF
dword_801A544: .word 0x100040
off_801A548: .word 0x2000000
off_801A54C: .word 0x1500
off_801A550: .word eCollisionData
	thumb_func_end sub_801A506

	thumb_local_start
sub_801A554:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r3,#oCollisionData_StatusEffectFinal]
	cmp r0, #0
	beq locret_801A58C
	push {r0}
	lsr r1, r0, #4
	sub r1, #1
	lsl r1, r1, #2
	ldr r2, off_801A7B0 // =off_80209EC 
	ldr r2, [r2,r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	add r2, r2, r0
	ldrh r1, [r2,#4]
	ldrb r0, [r2,#6]
	strh r1, [r3,r0]
	ldr r0, [r2]
	bl object_setFlag2
	pop {r0}
	cmp r0, #0x50 
	blt locret_801A58C
	cmp r0, #0x55 
	bgt locret_801A58C
	mov r0, #6
	bl object_clearFlag2
locret_801A58C:
	pop {pc}
	thumb_func_end sub_801A554

	thumb_local_start
sub_801A58E:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r3,#oCollisionData_StatusEffectFinal]
	cmp r0, #0
	beq locret_801A5B8
	lsr r1, r0, #4
	cmp r1, #1
	bne locret_801A5B8
	sub r1, #1
	lsl r1, r1, #2
	ldr r2, off_801A7B4 // =off_80209EC 
	ldr r2, [r2,r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	add r2, r2, r0
	ldrh r1, [r2,#4]
	ldrb r0, [r2,#6]
	strh r1, [r3,r0]
	ldr r0, [r2]
	bl object_setFlag2
locret_801A5B8:
	pop {pc}
	thumb_func_end sub_801A58E

	thumb_local_start
sub_801A5BA:
	push {lr}
	ldr r3, [r0,#0x54]
	cmp r1, #0
	beq locret_801A5E0
	mov r0, r1
	lsr r1, r1, #4
	sub r1, #1
	lsl r1, r1, #2
	ldr r2, off_801A7B8 // =off_80209EC 
	ldr r2, [r2,r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x19
	add r2, r2, r0
	ldrh r1, [r2,#4]
	ldrb r0, [r2,#6]
	strh r1, [r3,r0]
	ldr r0, [r2]
	bl object_setFlag2
locret_801A5E0:
	pop {pc}
	thumb_func_end sub_801A5BA

	thumb_func_start sub_801A5E2
sub_801A5E2:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0
	str r1, [r0,#oCollisionData_Unk_48]
	mov r2, #0x4c 
	str r1, [r0,r2]
	mov pc, lr
	thumb_func_end sub_801A5E2

	thumb_local_start
sub_801A5EE:
	push {r6,lr}
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801A642
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldrh r0, [r6,#oCollisionData_FlashingInvisTimer]
	tst r0, r0
	bne loc_801A610
	bl object_getFlag2
	mov r1, #2
	tst r0, r1
	beq loc_801A610
	mov r0, #0x78 
	strh r0, [r6,#oCollisionData_FlashingInvisTimer]
loc_801A610:
	mov r0, #2
	bl object_clearFlag2
	ldrh r0, [r6,#oCollisionData_FlashingInvisTimer]
	tst r0, r0
	beq loc_801A632
	sub r0, #1
	strh r0, [r6,#oCollisionData_FlashingInvisTimer]
	bgt loc_801A63A
	bl object_getFlag // () -> int
	mov r1, #2
	tst r0, r1
	beq loc_801A632
	mov r0, #0x94
	bl PlaySoundEffect
loc_801A632:
	ldr r0, dword_801A644 // =0x202 
	bl object_clearFlag // (int bitfield) -> void
	b locret_801A642
loc_801A63A:
	mov r0, #1
	lsl r0, r0, #9
	bl object_setFlag1 // (int a1) -> void
locret_801A642:
	pop {r6,pc}
	.balign 4, 0
dword_801A644: .word 0x202
	thumb_func_end sub_801A5EE

	thumb_local_start
sub_801A648:
	push {lr}
	bl battle_isPaused
	bne locret_801A66A
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrh r1, [r3,#oCollisionData_FlashingInvisTimer]
	tst r1, r1
	beq locret_801A66A
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	mov r1, #4
	tst r0, r1
	beq locret_801A66A
	ldr r1, off_801A7BC // =0x1000 
	tst r0, r1
	bne locret_801A66A
	mov r0, #0
	strh r0, [r3,#oCollisionData_FlashingInvisTimer]
locret_801A66A:
	pop {pc}
	thumb_func_end sub_801A648

	thumb_func_start sub_801A66C
sub_801A66C:
	push {lr}
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	mov r0, #0x78 
	strh r0, [r1,#oCollisionData_FlashingInvisTimer]
	mov r0, #1
	lsl r0, r0, #9
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end sub_801A66C

	thumb_func_start sub_801A67E
sub_801A67E:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	mov r0, #0
	strh r0, [r3,#oCollisionData_FlashingInvisTimer]
	mov pc, lr
	thumb_func_end sub_801A67E

	thumb_local_start
sub_801A686:
	push {r4,lr}
	ldr r4, [r5,#0x54]
	mov r0, #0
	strb r0, [r4,#0xf]
	strb r0, [r4,#0x11]
	mov r1, #0xa4
	strh r0, [r4,r1]
	mov r0, #0x80
	add r0, r0, r4
	mov r1, #0x14
	bl ZeroFillByHalfword
	ldr r0, dword_801A7C0 // =0x106 
	bl object_clearFlag2
	pop {r4,pc}
	thumb_func_end sub_801A686

	thumb_local_start
sub_801A6A6:
	push {r4,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	add r0, #0x80
	mov r1, #0x14
	bl ZeroFillByHalfword
	pop {r4,pc}
	thumb_func_end sub_801A6A6

	thumb_local_start
sub_801A6B4:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	bl sub_801A6E8
	cmp r0, #0
	beq locret_801A6D4
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #1
	cmp r2, #7
	ble loc_801A6CE
	mov r2, #7
loc_801A6CE:
	mov r1, #0x18
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
locret_801A6D4:
	pop {r4,pc}
	thumb_func_end sub_801A6B4

	thumb_local_start
sub_801A6D6:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	bl sub_801A6E8
	cmp r0, #0
	beq locret_801A6E6
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
locret_801A6E6:
	pop {r4,pc}
	thumb_func_end sub_801A6D6

	thumb_local_start
sub_801A6E8:
	push {lr}
	mov r0, #0
	mov r1, #0xa4
	ldrb r1, [r4,r1]
	cmp r1, #0xf7
	beq loc_801A6FC
	cmp r1, #0xf4
	bne locret_801A71E
	mov r0, #1
	b locret_801A71E
loc_801A6FC:
	ldrh r0, [r5,#oBattleObject_HP]
	bl sub_8000C00
	mov r3, #0
loc_801A704:
	mov r1, #0xf
	and r1, r0
	cmp r1, #4
	bne loc_801A70E
	mov r3, #1
loc_801A70E:
	lsr r0, r0, #4
	cmp r0, #0
	bne loc_801A704
	mov r0, r3
	cmp r0, #0
	bne locret_801A71E
	mov r1, #0xa4
	strb r0, [r4,r1]
locret_801A71E:
	pop {pc}
	thumb_func_end sub_801A6E8

	thumb_local_start
sub_801A720:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa4
	ldrb r1, [r4,r1]
	cmp r1, #0xf6
	bne locret_801A758
	mov r1, #0x18
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #2
	cmp r2, #7
	ble loc_801A73A
	mov r2, #7
loc_801A73A:
	mov r1, #0x18
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	mov r1, #0x19
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	add r2, r0, #2
	cmp r2, #7
	ble loc_801A74E
	mov r2, #7
loc_801A74E:
	mov r1, #0x19
	bl SetBattleNaviStatsByte_AllianceFromBattleObject
	bl sub_801A77A
locret_801A758:
	pop {r4,pc}
	thumb_func_end sub_801A720

	thumb_local_start
sub_801A75A:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa4
	ldrb r1, [r4,r1]
	cmp r1, #0xf6
	bne locret_801A778
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r3,#oAIData_Unk_12]
	add r0, r2, #2
	cmp r0, #7
	ble loc_801A772
	mov r0, #7
loc_801A772:
	strb r0, [r3,#oAIData_Unk_12]
	bl sub_801A77A
locret_801A778:
	pop {r4,pc}
	thumb_func_end sub_801A75A

	thumb_local_start
sub_801A77A:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa4
	ldrb r1, [r4,r1]
	cmp r1, #0xf6
	bne locret_801A7AC
	mov r0, #8
	bl object_setFlag2
	mov r0, #0x96
	strh r0, [r4,#oCollisionData_Unk_1c]
	ldrh r0, [r5,#oBattleObject_NameID]
	ldr r1, dword_801A7C4 // =0x173 
	sub r0, r0, r1
	bmi loc_801A79C
	cmp r0, #0xb
	ble loc_801A7A6
loc_801A79C:
	mov r0, #0x20 
	bl object_setFlag2
	ldr r0, off_801A7C8 // =0x4b0 
	strh r0, [r4,#oCollisionData_BlindTimer]
loc_801A7A6:
	mov r0, #0
	mov r1, #0xa4
	strb r0, [r4,r1]
locret_801A7AC:
	pop {r4,pc}
	.balign 4, 0
off_801A7B0: .word off_80209EC
off_801A7B4: .word off_80209EC
off_801A7B8: .word off_80209EC
off_801A7BC: .word 0x1000
dword_801A7C0: .word 0x106
dword_801A7C4: .word 0x173
off_801A7C8: .word 0x4B0
	thumb_func_end sub_801A77A

	thumb_func_start sub_801A7CC
sub_801A7CC:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r3,#oCollisionData_Barrier]
	ldr r1, off_801A7F0 // =byte_8020B8C 
	ldrb r1, [r1,r0]
	strb r1, [r3,#oCollisionData_Unk_14]
	mov r1, #6
	mul r0, r1
	ldr r1, off_801A7EC // =byte_8020B2C 
	add r0, r0, r1
	ldrh r1, [r0]
	strb r1, [r3,#oCollisionData_Unk_16]
	ldrh r1, [r0,#2]
	strb r1, [r3,#oCollisionData_Unk_17]
	ldrh r1, [r0,#4]
	strh r1, [r3,#oCollisionData_Unk_1a_1b]
	mov pc, lr
	.balign 4, 0
off_801A7EC: .word byte_8020B2C
off_801A7F0: .word byte_8020B8C
	thumb_func_end sub_801A7CC

	thumb_func_start sub_801A7F4
sub_801A7F4:
	mov r0, #0
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	str r0, [r1,#oAIData_Unk_60]
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0
	strb r1, [r0,#oCollisionData_Barrier]
	mov pc, lr
	thumb_func_end sub_801A7F4

	thumb_local_start
sub_801A802:
	push {r4,r6,lr}
	bl battle_isPaused
	beq loc_801A80C
	pop {r4,r6,pc}
loc_801A80C:
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r6, [r4,#oCollisionData_Barrier]
	cmp r6, #0
	bne loc_801A816
	b locret_801A9A2
loc_801A816:
	cmp r6, #0xa
	bne loc_801A822
	ldrh r0, [r4,#oCollisionData_Unk_16]
	tst r0, r0
	beq loc_801A860
	b loc_801A82C
loc_801A822:
	cmp r6, #8
	bne loc_801A82C
	ldrh r0, [r4,#oCollisionData_Unk_16]
	tst r0, r0
	beq loc_801A860
loc_801A82C:
	mov r0, #0x77 
	ldrb r0, [r4,r0]
	mov r1, #0x20 
	tst r0, r1
	bne loc_801A83E
	ldr r0, [r4,#oCollisionData_Unk_6c]
	ldr r1, off_801A9B0 // =0xa20 
	tst r0, r1
	beq loc_801A860
loc_801A83E:
	cmp r6, #8
	bne loc_801A84A
	ldrh r0, [r4,#oCollisionData_Unk_16]
	tst r0, r0
	beq loc_801A860
	b loc_801A854
loc_801A84A:
	cmp r6, #0xa
	bne loc_801A854
	ldrh r0, [r4,#oCollisionData_Unk_16]
	tst r0, r0
	beq loc_801A860
loc_801A854:
	mov r6, #0x10
	strb r6, [r4,#oCollisionData_Barrier]
	mov r0, #0
	strh r0, [r4,#oCollisionData_Unk_16]
	ldrb r0, [r4,#oCollisionData_HitModifierFinal]
	strb r0, [r4,#oCollisionData_Unk_15]
loc_801A860:
	cmp r6, #8
	beq loc_801A888
	cmp r6, #0xa
	beq loc_801A8AE
	ldrb r0, [r4,#oCollisionData_Barrier]
	cmp r0, #0x10
	beq loc_801A874
	bl battle_isTimeStop
	bne loc_801A8E0
loc_801A874:
	ldrh r0, [r4,#oCollisionData_Unk_1a_1b]
	ldr r1, dword_801A9B4 // =0xffff 
	cmp r0, r1
	beq loc_801A8E0
	sub r0, #1
	strh r0, [r4,#oCollisionData_Unk_1a_1b]
	bgt loc_801A8E0
	mov r0, #0
	strb r0, [r4,#oCollisionData_Barrier]
	b loc_801A8E0
loc_801A888:
	ldrh r1, [r4,#oCollisionData_Unk_16]
	tst r1, r1
	bne loc_801A8E0
	bl battle_isTimeStop
	bne loc_801A8AC
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #7
	beq loc_801A8AC
	cmp r0, #6
	beq loc_801A8AC
	ldrh r0, [r4,#oCollisionData_Unk_1a_1b]
	add r0, #1
	strh r0, [r4,#oCollisionData_Unk_1a_1b]
	cmp r0, #0xf0
	blt loc_801A8AC
	mov r0, #1
	strh r0, [r4,#oCollisionData_Unk_16]
loc_801A8AC:
	b locret_801A9A2
loc_801A8AE:
	ldrh r1, [r4,#oCollisionData_Unk_16]
	tst r1, r1
	beq loc_801A8CA
	cmp r1, #0xc8
	bge loc_801A8C6
	ldrb r0, [r4,#oCollisionData_Unk_1a]
	add r0, #1
	cmp r0, #6
	blt loc_801A8C6
	add r1, #1
	strh r1, [r4,#oCollisionData_Unk_16]
	mov r0, #0
loc_801A8C6:
	strb r0, [r4,#oCollisionData_Unk_1a]
	b loc_801A8E0
loc_801A8CA:
	bl battle_isTimeStop
	bne locret_801A9A2
	ldrb r0, [r4,#oCollisionData_Unk_1b]
	add r0, #1
	strb r0, [r4,#oCollisionData_Unk_1b]
	cmp r0, #0x78 
	blt locret_801A9A2
	mov r0, #0xc8
	strh r0, [r4,#oCollisionData_Unk_16]
	b locret_801A9A2
	.balign 4, 0
loc_801A8E0: .align 1, 0
	cmp r6, #8
	bne loc_801A8FA
	mov r1, #oCollisionData_ElecElementDamage
	ldrh r1, [r4,r1]
	tst r1, r1
	beq loc_801A8FA
	mov r2, #oCollisionData_Unk_78
	ldrh r2, [r4,r2]
	mov r1, #oCollisionData_PanelDamage4
	ldrh r0, [r4,r1]
	add r0, r0, r2
	strh r0, [r4,r1]
	b loc_801A90A
loc_801A8FA:
	ldrb r0, [r4,#oCollisionData_Unk_14]
	cmp r0, #0
	beq loc_801A916
	lsl r0, r0, #1
	add r0, #oCollisionData_PrimaryElementDamages
	ldrh r0, [r4,r0]
	cmp r0, #0
	beq loc_801A916
loc_801A90A:
	mov r0, #0
	strb r0, [r4,#oCollisionData_Barrier]
	mov r0, #0
	strh r0, [r4,#oCollisionData_Unk_1a_1b]
	strb r0, [r4,#oCollisionData_Unk_16]
	b locret_801A9A2
loc_801A916:
	mov r0, #0x94
	ldrh r0, [r4,r0]
	mov r1, #0x96
	ldrh r1, [r4,r1]
	add r0, r0, r1
	mov r1, #0x98
	ldrh r1, [r4,r1]
	add r0, r0, r1
	mov r1, #0x9a
	ldrh r1, [r4,r1]
	add r0, r0, r1
	mov r1, #0x9c
	ldrh r1, [r4,r1]
	add r0, r0, r1
	push {r0,r4}
	ldrb r0, [r4,#oCollisionData_PanelX]
	ldrb r1, [r4,#oCollisionData_PanelY]
	bl object_getPanelDataOffset
	ldrb r0, [r0,#oPanelData_Type]
	cmp r0, #5
	pop {r0,r4}
	bne loc_801A948
	add r0, #1
	lsr r0, r0, #1
loc_801A948:
	ldrb r1, [r4,#oCollisionData_Unk_17]
	cmp r0, r1
	blt loc_801A96E
	ldrb r1, [r4,#oCollisionData_Unk_16]
	sub r1, r1, r0
	strb r1, [r4,#oCollisionData_Unk_16]
	bgt loc_801A96E
	cmp r6, #8
	beq loc_801A968
	cmp r6, #0xa
	beq loc_801A968
	ldrb r0, [r4,#oCollisionData_Barrier]
	cmp r0, #0x10
	beq loc_801A968
	mov r0, #0
	strb r0, [r4,#oCollisionData_Barrier]
loc_801A968:
	mov r0, #0
	strh r0, [r4,#oCollisionData_Unk_1a_1b]
	strb r0, [r4,#oCollisionData_Unk_16]
loc_801A96E:
	mov r0, #0
	mov r1, #0x82
	add r1, r1, r4
	strh r0, [r1]
	strh r0, [r1,#2]
	strh r0, [r1,#4]
	strh r0, [r1,#6]
	strh r0, [r1,#8]
	mov r1, #0x8e
	strh r0, [r4,r1]
	mov r1, #0x90
	strh r0, [r4,r1]
	mov r1, #0x92
	strh r0, [r4,r1]
	strb r0, [r4,#oCollisionData_HitModifierFinal]
	strb r0, [r4,#oCollisionData_StatusEffectFinal]
	mov r1, #0xa4
	strh r0, [r4,r1]
	mov r1, #0x74 
	strh r0, [r4,r1]
	mov r1, #0x76 
	strb r0, [r4,r1]
	mov r0, #0x50 
	ldr r1, [r4,#oCollisionData_FlagsFromCollision]
	bic r1, r0
	str r1, [r4,#oCollisionData_FlagsFromCollision]
locret_801A9A2:
	pop {r4,r6,pc}
	thumb_func_end sub_801A802

	thumb_local_start
sub_801A9A4:
	ldr r0, [r5,#0x54]
	ldrb r0, [r0,#0x16]
	mov pc, lr
	thumb_func_end sub_801A9A4

	thumb_local_start
sub_801A9AA:
	ldr r1, [r5,#0x54]
	strb r0, [r1,#0x16]
	mov pc, lr
off_801A9B0: .word 0xA20
dword_801A9B4: .word 0xFFFF
	thumb_func_end sub_801A9AA

	thumb_func_start sub_801A9B8
sub_801A9B8:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AA3C
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AA3C
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AA3C
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl hiveBlockHappensHere_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AEB0
	bl sub_800EB26
	ldrh r0, [r5,#oBattleObject_NameID]
	ldr r1, dword_801AA40 // =0x125 
	cmp r0, r1
	blt loc_801AA1C
	ldr r1, dword_801AA44 // =0x12a 
	cmp r0, r1
	ble loc_801AA20
loc_801AA1C:
	bl sub_801A554
loc_801AA20:
	bl sub_801A2CC
	bl sub_801A308
	bl object_calculateFinalDamage1
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AA3C:
	pop {r4,r7,pc}
	.balign 4, 0
dword_801AA40: .word 0x125
dword_801AA44: .word 0x12A
	thumb_func_end sub_801A9B8

	thumb_func_start sub_801AA48
sub_801AA48:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AABE
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AABE
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AABE
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl hiveBlockHappensHere_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AF0E
	bl sub_800EB26
	bl sub_801A554
	bl sub_801A2CC
	bl sub_801A308
	bl object_calculateFinalDamage1
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AABE:
	pop {r4,r7,pc}
	thumb_func_end sub_801AA48

	thumb_func_start sub_801AAC0
sub_801AAC0:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AB3E
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AB3E
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AB3E
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl GetBattleMode
	cmp r0, #0xa
	beq loc_801AB02
	bl sub_8010230
loc_801AB02:
	bl sub_802CFF8
	bl hiveBlockHappensHere_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AEB0
	bl sub_800EB26
	bl sub_801A554
	bl sub_801A2CC
	bl sub_801A308
	bl object_calculateFinalDamage1
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AB3E:
	pop {r4,r7,pc}
	thumb_func_end sub_801AAC0

	thumb_func_start sub_801AB40
sub_801AB40:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801ABB6
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801ABB6
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801ABB6
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl hiveBlockHappensHere_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_8013AE4
	bl sub_801AF0E
	bl sub_800EB26
	bl sub_801A58E
	bl sub_801A2CC
	bl sub_801A308
	bl object_calculateFinalDamage1
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801ABB6:
	pop {r4,r7,pc}
	thumb_func_end sub_801AB40

	thumb_func_start sub_801ABB8
sub_801ABB8:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AC6A
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AC6A
	bl battle_isPaused
	tst r0, r0
	bne locret_801AC6A
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AC6A
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_801A6D6
	bl sub_801A75A
	bl sub_8013B20
	bl sub_801026A
	ldrb r4, [r7,#oCollisionData_HitModifierFinal]
	mov r1, #0x3c 
	tst r4, r1
	beq loc_801AC46
	mov r1, #0x40 
	tst r4, r1
	beq loc_801AC32
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst r0, r1
	bne loc_801AC46
	mov r0, #1
	lsl r0, r0, #8
	bl object_setFlag2
	mov r0, #4
	bl object_clearFlag2
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
	b loc_801AC46
loc_801AC32:
	bl object_getFlag // () -> int
	ldr r1, dword_801AF38 // =0x100040 
	tst r0, r1
	bne loc_801AC46
	mov r0, #0x10
	bl object_setFlag2
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
loc_801AC46:
	bl sub_800EB26
	bl sub_801A554
	bl sub_801A2CC
	bl sub_801A308
	bl object_calculateFinalDamage1
	bl sub_801A420
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AC6A:
	pop {r4,r7,pc}
	thumb_func_end sub_801ABB8

	thumb_func_start sub_801AC6C
sub_801AC6C:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AD10
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AD10
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AD10
	bl sub_801A802
	bl sub_801A186
	bl sub_801A36A
	bl sub_8010230
	bl sub_802CFF8
	bl hiveBlockHappensHere_802CEF4
	bl sub_801A6B4
	bl sub_801A720
	bl sub_80139F6
	bl sub_801AEB0
	bl sub_800EB26
	bl sub_8013F1E
	mov r1, #0x29 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #7
	beq loc_801ACEC
	mov r1, #0x2c 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	cmp r0, #7
	beq loc_801ACEC
	cmp r0, #0x13
	beq loc_801ACEC
	mov r1, #0x52 
	bl GetBattleNaviStatsByte_AllianceFromBattleObject
	tst r0, r0
	bne loc_801ACEC
	bl sub_801A554
loc_801ACEC:
	bl sub_801A2CC
	bl sub_801A324
	bl object_calculateFinalDamage1
	bl sub_801A420
	bl sub_80143FC
	bl sub_80142DC
	bl sub_8010198
	bl sub_801A648
	bl object_spawnHiteffect
locret_801AD10:
	pop {r4,r7,pc}
	thumb_func_end sub_801AC6C

	thumb_func_start sub_801AD12
sub_801AD12:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AD68
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AD68
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AD68
	ldrb r4, [r7,#oCollisionData_HitModifierFinal]
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst r0, r1
	bne loc_801AD60
	mov r1, #0x40 
	tst r4, r1
	beq loc_801AD60
	mov r0, #1
	lsl r0, r0, #8
	bl object_setFlag2
	mov r0, #4
	bl object_clearFlag2
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
loc_801AD60:
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801AD68:
	pop {r4,r7,pc}
	thumb_func_end sub_801AD12

	thumb_func_start sub_801AD6A
sub_801AD6A:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AD9C
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AD9C
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AD9C
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801AD9C:
	pop {r4,r7,pc}
	thumb_func_end sub_801AD6A

	thumb_func_start sub_801AD9E
sub_801AD9E:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801ADF8
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801ADF8
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801ADF8
	ldrb r4, [r7,#oCollisionData_HitModifierFinal]
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst r0, r1
	bne loc_801ADF0
	mov r1, #0x40 
	tst r4, r1
	beq loc_801ADF0
	mov r0, #1
	lsl r0, r0, #8
	bl object_setFlag2
	mov r0, #4
	bl object_clearFlag2
	bl sub_801A6A6
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
loc_801ADF0:
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801ADF8:
	pop {r4,r7,pc}
	thumb_func_end sub_801AD9E

	thumb_func_start sub_801ADFA
sub_801ADFA:
	push {r4,r7,lr}
	bl sprite_clearFinalPalette
	ldr r7, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_getFlags
	mov r1, #1
	tst r0, r1
	beq locret_801AE54
	bl object_removeCollisionData
	bl battle_isBattleOver
	tst r0, r0
	bne locret_801AE54
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne locret_801AE54
	bl sub_801AE56
	ldrb r4, [r7,#oCollisionData_HitModifierFinal]
	bl object_getFlag // () -> int
	mov r1, #0x40 
	tst r0, r1
	bne loc_801AE4C
	mov r1, #0x40 
	tst r4, r1
	beq loc_801AE4C
	mov r0, #1
	lsl r0, r0, #8
	bl object_setFlag2
	mov r0, #4
	bl object_clearFlag2
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
loc_801AE4C:
	bl object_calculateFinalDamage2
	bl object_spawnHiteffect
locret_801AE54:
	pop {r4,r7,pc}
	thumb_func_end sub_801ADFA

	thumb_local_start
sub_801AE56:
	ldr r0, [r7,#oCollisionData_FlagsFromCollision]
	ldr r1, off_801AF3C // =0x1000 
	tst r0, r1
	bne locret_801AE90
	ldrb r0, [r7,#oCollisionData_HitModifierFinal]
	mov r1, #0x40 
	tst r0, r1
	bne locret_801AE90
	mov r1, #0
	ldr r0, [r7,#oCollisionData_FlagsFromCollision]
	ldr r3, dword_801AE98 // =0xa2000000 
	tst r3, r0
	beq loc_801AE72
	add r1, #1
loc_801AE72:
	ldr r3, dword_801AE9C // =0x51000000 
	tst r3, r0
	beq loc_801AE7A
	add r1, #2
loc_801AE7A:
	ldr r2, off_801AE94 // =byte_801AEA0
	ldrb r1, [r2,r1]
	cmp r1, #0xff
	beq locret_801AE90
	mov r2, #0x61 
	ldrb r3, [r7,r1]
	orr r3, r2
	strb r3, [r7,r1]
	ldrb r1, [r7,#oCollisionData_HitModifierFinal]
	orr r1, r2
	strb r1, [r7,#oCollisionData_HitModifierFinal]
locret_801AE90:
	mov pc, lr
	.balign 4, 0
off_801AE94: .word byte_801AEA0
dword_801AE98: .word 0xA2000000
dword_801AE9C: .word 0x51000000
byte_801AEA0: .byte 0xFF, 0xF, 0xF, 0xFF, 0xF, 0xFF, 0xFF, 0xFF, 0xF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_801AE56

	thumb_local_start
sub_801AEB0:
	push {r4,r7,lr}
	ldrb r4, [r7,#oCollisionData_HitModifierFinal]
	bl object_getFlag // () -> int
	ldr r1, dword_801AF40 // =0x220000 superarmor or anger
	tst r0, r1
	bne loc_801AECA
	mov r1, #1
	tst r4, r1
	beq loc_801AECA
	mov r0, #4
	bl object_setFlag2
loc_801AECA:
	mov r1, #2
	tst r4, r1
	beq loc_801AED6
	mov r0, #2
	bl object_setFlag2
loc_801AED6:
	mov r1, #0x3c
	tst r4, r1
	beq locret_801AF0C
	mov r1, #0x40 
	tst r4, r1
	beq loc_801AEF8
	mov r0, #1
	lsl r0, r0, #8
	bl object_setFlag2
	mov r0, #4
	bl object_clearFlag2
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
	strb r0, [r5,#oBattleObject_Unk_0f]
	b locret_801AF0C
loc_801AEF8:
	bl object_getFlag // () -> int
	ldr r1, dword_801AF38 // =0x100040 
	tst r0, r1
	bne locret_801AF0C
	mov r0, #0x10
	bl object_setFlag2
	mov r0, #1
	strb r0, [r5,#oBattleObject_Unk_0f]
locret_801AF0C:
	pop {r4,r7,pc}
	thumb_func_end sub_801AEB0

	thumb_local_start
sub_801AF0E:
	push {r4,r7,lr}
	ldrb r4, [r7,#oCollisionData_HitModifierFinal]
	bl object_getFlag // () -> int
	ldr r1, dword_801AF40 // =0x220000 
	tst r0, r1
	bne loc_801AF28
	mov r1, #1
	tst r4, r1
	beq loc_801AF28
	mov r0, #4
	bl object_setFlag2
loc_801AF28:
	mov r1, #2
	tst r4, r1
	beq locret_801AF34
	mov r0, #2
	bl object_setFlag2
locret_801AF34:
	pop {r4,r7,pc}
	.balign 4, 0
dword_801AF38: .word 0x100040
off_801AF3C: .word 0x1000
dword_801AF40: .word 0x220000
	thumb_func_end sub_801AF0E

	thumb_func_start ai_eventuallyRunsAIAttack_801AF44
ai_eventuallyRunsAIAttack_801AF44:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	bl battle_isPaused
	tst r0, r0
	beq loc_801AF5E
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801AF5E
	b loc_801B142
loc_801AF5E:
	bl sub_801A42E
	bl sub_801A4A6
	bl sub_801A45C
	bl sub_801A506
	bl applyDamageToPlayer_801ba12
	bl sub_801BADE
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801AF84
	b loc_801B142
loc_801AF84:
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801AFA4
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	bl object_setAttack0
	b loc_801B142
loc_801AFA4:
	bl GetAIDataUnk0x48Flag
	ldr r1, off_801B1AC // =0x2000 
	tst r0, r1
	beq loc_801AFB0
	b loc_801B18E
loc_801AFB0:
	bl GetAIDataUnk0x48Flag
	ldr r1, dword_801B1B4 // =0x10000 
	tst r0, r1
	beq loc_801AFBC
	b loc_801B18E
loc_801AFBC:
	bl GetAIDataUnk0x48Flag
	ldr r1, dword_801B1B8 // =0x20000 
	tst r0, r1
	beq loc_801AFC8
	b loc_801B18E
loc_801AFC8:
	bl GetAIDataUnk0x48Flag
	ldr r1, dword_801B1BC // =0x40000 
	tst r0, r1
	beq loc_801AFDC
	bl sub_8015766
	tst r0, r0
	beq loc_801AFDC
	b loc_801B1A0
loc_801AFDC:
	bl battle_isTimeStop
	beq loc_801AFE4
	b loc_801B142
loc_801AFE4:
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl GetAIData_Unk_44_Flag
	ldr r1, off_801B1A8 // =0x8000000
	tst r0, r1
	beq loc_801B006
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	ldr r0, off_801B1AC // =0x2000 
	bl SetAIDataUnk0x48Flag
	mov r0, #0x4c 
	bl object_setAttack0
	b loc_801B18E
loc_801B006:
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_801B1B0 // =0x40000000 
	tst r0, r1
	beq loc_801B024
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	ldr r0, dword_801B1B4 // =0x10000 
	bl SetAIDataUnk0x48Flag
	mov r0, #0x30 
	bl object_setAttack0
	b loc_801B18E
loc_801B024:
	bl GetAIData_Unk_44_Flag
	ldr r1, dword_801B1C0 // =0x80000000 
	tst r0, r1
	beq loc_801B052
	mov r0, r1
	bl ClearAIData_Unk_44_Flag
	ldrh r0, [r5,#oBattleObject_NameID]
	ldr r1, off_801B38C // =0x1ac 
	cmp r0, r1
	blt loc_801B052
	add r1, #0x15
	cmp r0, r1
	bgt loc_801B052
	ldr r0, dword_801B1BC // =0x40000 
	bl SetAIDataUnk0x48Flag
	bl object_exitAttackState
	bl sub_8015766
	b loc_801B1A0
loc_801B052:
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B0AA
	mov r0, r1
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B06E
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B06E:
	bl sub_801011A
	bl sub_801A29A
	bl sub_801A2B0
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	bne loc_801B096
	mov r1, #2
	tst r0, r1
	bne loc_801B092
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #4
	beq loc_801B096
loc_801B092:
	bl sub_801A284
loc_801B096:
	mov r0, #1
	lsl r0, r0, #0xe
	bl object_clearFlag2
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B142
loc_801B0AA:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B0BC
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B142
loc_801B0BC:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
	bl object_getFlag2
	mov r1, #0x10
	tst r0, r1
	beq loc_801B0D6
	mov r0, r1
	bl object_clearFlag2
	bl sub_80166B6
	b loc_801B0EC
loc_801B0D6:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq loc_801B0E8
	bl sub_80166B6
	b loc_801B0EC
loc_801B0E8:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
loc_801B0EC:
	bl object_getFlag2
	mov r1, #4
	tst r0, r1
	beq loc_801B126
	mov r0, r1
	bl object_clearFlag2
	bl sub_801011A
	bl sub_801BA92
	push {r0}
	bl sub_801BABE
	pop {r1}
	orr r0, r1
	beq loc_801B118
	mov r1, #2
	tst r0, r1
	bne loc_801B118
	b loc_801B11E
loc_801B118:
	mov r0, #3
	bl object_setAttack0
loc_801B11E:
	mov r0, #1
	lsl r0, r0, #0xe
	bl object_clearFlag2
loc_801B126:
	bl sub_801A5EE
	bl sub_800E730
	bl sub_8010162
	bl sub_8014326
	bl nullsub_6
	bl sub_8014498
	bl sub_802E1D8
loc_801B142:
	bl sprite_zeroColorShader
	mov r0, #1
	lsl r0, r0, #0xe
	bl object_clearFlag2
	bl sub_80143E4
	bl sub_801690A
	bl sub_8016860
	bl sub_80168C8
	bl sub_80168F0
	bl blindVisualHandledHere_8016934
	bl sub_8016CA4
	bl sub_801728E
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B18E
	bl battle_isPaused
	beq loc_801B188
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801B188
	b loc_801B19C
loc_801B188:
	bl battle_isTimeStop
	bne loc_801B196
loc_801B18E:
	ldr r0, [sp]
	bl RunAIAttack
	b loc_801B1A0
loc_801B196:
	bl sub_8017AB4
	b loc_801B1A0
loc_801B19C:
	bl sub_8017BC0
loc_801B1A0:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.word 0x40000
	.balign 4, 0
off_801B1A8: .word 0x8000000
off_801B1AC: .word 0x2000
dword_801B1B0: .word 0x40000000
dword_801B1B4: .word 0x10000
dword_801B1B8: .word 0x20000
dword_801B1BC: .word 0x40000
dword_801B1C0: .word 0x80000000
	thumb_func_end ai_eventuallyRunsAIAttack_801AF44

	thumb_func_start sub_801B1C4
sub_801B1C4:
	push {r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_isPaused
	tst r0, r0
	beq loc_801B21C
	bl object_getFlag2
	ldr r1, dword_801B390 // =0x80000 
	tst r0, r1
	beq loc_801B1E8
	bl object_updateCollisionPanels
	ldr r0, dword_801B390 // =0x80000 
	bl object_clearFlag2
loc_801B1E8:
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801B21C
	bl object_getFlag // () -> int
	ldr r1, dword_801B384 // =0x40000100 
	tst r0, r1
	beq loc_801B1FA
	b loc_801B338
loc_801B1FA:
	bl object_getFlag2
	ldr r1, dword_801B388 // =0x8000 
	tst r0, r1
	beq loc_801B21A
	mov r0, r1
	bl object_clearFlag2
	ldr r0, dword_801B384 // =0x40000100 
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B338
loc_801B21A:
	b loc_801B37A
loc_801B21C:
	bl sub_801A42E
	bl sub_801A4A6
	bl sub_801A45C
	bl sub_801BADE
	mov r0, #0x80
	ldrh r0, [r6,r0]
	tst r0, r0
	beq loc_801B24E
	push {r0}
	bl sprite_forceWhitePalette
	mov r0, #0x6d 
	bl PlaySoundEffect
	bl sub_801A67E
	pop {r0}
	bl object_subtractHP
	tst r1, r1
	beq loc_801B260
loc_801B24E:
	mov r0, #0x8c
	ldrh r0, [r6,r0]
	bl object_subtractHP
	bl sub_801B9BC
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801B266
loc_801B260:
	mov r0, #1
	bl object_setFlag2
loc_801B266:
	bl sub_801A200
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B338
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801B298
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B338
loc_801B298:
	bl battle_isTimeStop
	bne loc_801B338
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B2D6
	mov r0, r1
	bl object_clearFlag2
	bl sub_801A29A
	bl sub_801A2B0
	bl sub_801BA92
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B2CA
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B2CA:
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B338
loc_801B2D6:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B2E8
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B338
loc_801B2E8:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
	bl object_getFlag2
	mov r1, #0x10
	tst r0, r1
	beq loc_801B302
	mov r0, r1
	bl object_clearFlag2
	bl sub_80166B6
	b loc_801B318
loc_801B302:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq loc_801B314
	bl sub_80166B6
	b loc_801B318
loc_801B314:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
loc_801B318:
	ldrh r0, [r6,#oCollisionData_FlashingInvisTimer]
	tst r0, r0
	beq loc_801B324
	sub r0, #1
	strh r0, [r6,#oCollisionData_FlashingInvisTimer]
	bgt loc_801B32C
loc_801B324:
	ldr r0, dword_801B380 // =0x202 
	bl object_clearFlag // (int bitfield) -> void
	b loc_801B334
loc_801B32C:
	mov r0, #1
	lsl r0, r0, #9
	bl object_setFlag1 // (int a1) -> void
loc_801B334:
	bl sub_800E730
loc_801B338:
	bl sprite_zeroColorShader
	mov r0, #1
	lsl r0, r0, #0xe
	bl object_clearFlag2
	bl sub_801690A
	bl sub_8016860
	bl sub_80168C8
	bl sub_80168F0
	bl blindVisualHandledHere_8016934
	bl sub_8016CA4
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B36E
	bl battle_isTimeStop
	bne loc_801B376
loc_801B36E:
	ldr r0, [sp]
	bl RunAIAttack
	b loc_801B37A
loc_801B376:
	bl sub_8016BFC
loc_801B37A:
	add sp, sp, #4
	pop {r6,r7,pc}
	.balign 4, 0
dword_801B380: .word 0x202
dword_801B384: .word 0x40000100
dword_801B388: .word 0x8000
off_801B38C: .word 0x1AC
dword_801B390: .word 0x80000
	thumb_func_end sub_801B1C4

	thumb_func_start sub_801B394
sub_801B394: // JP: 0x801b904
	push {r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0x80
	ldrh r0, [r6,r0]
	tst r0, r0
	beq loc_801B3BC
	push {r0}
	bl sprite_forceWhitePalette
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	pop {r0}
	bl object_subtractHP
	tst r1, r1
	beq loc_801B3DA
loc_801B3BC:
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801B4BC // =0xc800002 
	tst r0, r1
	beq loc_801B3CA
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	b loc_801B3DA
loc_801B3CA:
	bl object_getFlag2
	ldr r1, dword_801B4D0 // =0x8000 
	tst r0, r1
	bne loc_801B3DA
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801B3E0
loc_801B3DA:
	mov r0, #1
	bl object_setFlag2
loc_801B3E0:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B4A2
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801B40E
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B4A2
loc_801B40E:
	bl object_getFlag2
	ldr r1, off_801B4C0 // =0xc00 
	tst r0, r1
	beq loc_801B41E
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B428
loc_801B41E:
	bl object_getFlag // () -> int
	ldr r1, off_801B4C4 // =LCDControl 
	tst r0, r1
	beq loc_801B42E
loc_801B428:
	bl sub_8018002
	b loc_801B4B6
loc_801B42E:
	bl object_getFlag2
	ldr r1, off_801B4C8 // =0x3000 
	tst r0, r1
	beq loc_801B43E
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B448
loc_801B43E:
	bl object_getFlag // () -> int
	ldr r1, dword_801B4CC // =0x30000000 
	tst r0, r1
	beq loc_801B44E
loc_801B448:
	bl sub_801813A
	b loc_801B4B6
loc_801B44E:
	bl battle_isTimeStop
	beq loc_801B460
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801B4A2
	bl sub_801823C
	b loc_801B4B6
loc_801B460:
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B48C
	mov r0, r1
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B480
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B480:
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B4A2
loc_801B48C:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B49E
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B4A2
loc_801B49E:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
loc_801B4A2:
	bl sprite_zeroColorShader
	bl hideSummonsWhenBlind_80181F6
	ldrb r0, [r5,#oBattleObject_CurAction]
	lsl r0, r0, #2
	ldr r1, [sp]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_801B4B6:
	add sp, sp, #4
	pop {r6,r7,pc}
	.balign 4, 0
dword_801B4BC: .word 0xC800002
off_801B4C0: .word 0xC00
off_801B4C4: .word LCDControl
off_801B4C8: .word 0x3000
dword_801B4CC: .word 0x30000000
dword_801B4D0: .word 0x8000
	thumb_func_end sub_801B394

	thumb_func_start sub_801B4D4
sub_801B4D4:
	push {r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0x80
	ldrh r0, [r6,r0]
	tst r0, r0
	beq loc_801B4FC
	push {r0}
	bl sprite_forceWhitePalette
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	pop {r0}
	bl object_subtractHP
	tst r1, r1
	beq loc_801B516
loc_801B4FC:
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801B5F8 // =0xc800002 
	tst r0, r1
	beq loc_801B506
	b loc_801B516
loc_801B506:
	bl object_getFlag2
	ldr r1, dword_801B60C // =0x8000 
	tst r0, r1
	bne loc_801B516
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801B51C
loc_801B516:
	mov r0, #1
	bl object_setFlag2
loc_801B51C:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B5DE
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801B54A
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B5DE
loc_801B54A:
	bl object_getFlag2
	ldr r1, off_801B5FC // =0xc00 
	tst r0, r1
	beq loc_801B55A
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B564
loc_801B55A:
	bl object_getFlag // () -> int
	ldr r1, off_801B600 // =LCDControl 
	tst r0, r1
	beq loc_801B56A
loc_801B564:
	bl sub_8018002
	b loc_801B5F2
loc_801B56A:
	bl object_getFlag2
	ldr r1, off_801B604 // =0x3000 
	tst r0, r1
	beq loc_801B57A
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B584
loc_801B57A:
	bl object_getFlag // () -> int
	ldr r1, dword_801B608 // =0x30000000 
	tst r0, r1
	beq loc_801B58A
loc_801B584:
	bl sub_801813A
	b loc_801B5F2
loc_801B58A:
	bl battle_isTimeStop
	beq loc_801B59C
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801B5DE
	bl sub_801823C
	b loc_801B5F2
loc_801B59C:
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B5C8
	mov r0, r1
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B5BC
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B5BC:
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B5DE
loc_801B5C8:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B5DA
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B5DE
loc_801B5DA:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
loc_801B5DE:
	bl sprite_zeroColorShader
	bl hideSummonsWhenBlind_80181F6
	ldrb r0, [r5,#oBattleObject_CurAction]
	lsl r0, r0, #2
	ldr r1, [sp]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_801B5F2:
	add sp, sp, #4
	pop {r6,r7,pc}
	.balign 4, 0
dword_801B5F8: .word 0xC800002
off_801B5FC: .word 0xC00
off_801B600: .word LCDControl
off_801B604: .word 0x3000
dword_801B608: .word 0x30000000
dword_801B60C: .word 0x8000
	thumb_func_end sub_801B4D4

	thumb_func_start sub_801B610
sub_801B610:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0x80
	ldrh r0, [r6,r0]
	tst r0, r0
	beq loc_801B638
	push {r0}
	bl sprite_forceWhitePalette
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	pop {r0}
	bl object_subtractHP
	tst r1, r1
	beq loc_801B656
loc_801B638:
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801B738 // =0x800002 
	tst r0, r1
	beq loc_801B646
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	b loc_801B656
loc_801B646:
	bl object_getFlag2
	ldr r1, dword_801B73C // =0x8000 
	tst r0, r1
	bne loc_801B656
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801B65C
loc_801B656:
	mov r0, #1
	bl object_setFlag2
loc_801B65C:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B71E
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801B68A
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B71E
loc_801B68A:
	bl object_getFlag2
	ldr r1, off_801B740 // =0xc00 
	tst r0, r1
	beq loc_801B69A
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B6A4
loc_801B69A:
	bl object_getFlag // () -> int
	ldr r1, off_801B744 // =LCDControl 
	tst r0, r1
	beq loc_801B6AA
loc_801B6A4:
	bl sub_8018002
	b loc_801B732
loc_801B6AA:
	bl object_getFlag2
	ldr r1, off_801B748 // =0x3000 
	tst r0, r1
	beq loc_801B6BA
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B6C4
loc_801B6BA:
	bl object_getFlag // () -> int
	ldr r1, dword_801B74C // =0x30000000 
	tst r0, r1
	beq loc_801B6CA
loc_801B6C4:
	bl sub_801813A
	b loc_801B732
loc_801B6CA:
	bl battle_isTimeStop
	beq loc_801B6DC
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801B71E
	bl sub_801823C
	b loc_801B732
loc_801B6DC:
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B708
	mov r0, r1
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B6FC
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B6FC:
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B71E
loc_801B708:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B71A
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B71E
loc_801B71A:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
loc_801B71E:
	bl sprite_zeroColorShader
	bl hideSummonsWhenBlind_80181F6
	ldrb r0, [r5,#oBattleObject_CurAction]
	lsl r0, r0, #2
	ldr r1, [sp]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_801B732:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_801B738: .word 0x800002
dword_801B73C: .word 0x8000
off_801B740: .word 0xC00
off_801B744: .word LCDControl
off_801B748: .word 0x3000
dword_801B74C: .word 0x30000000
	thumb_func_end sub_801B610

	thumb_func_start sub_801B750
sub_801B750:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0x80
	ldrh r0, [r6,r0]
	tst r0, r0
	beq loc_801B778
	push {r0}
	bl sprite_forceWhitePalette
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	pop {r0}
	bl object_subtractHP
	tst r1, r1
	beq loc_801B796
loc_801B778:
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801B870 // =0xc800002 
	tst r0, r1
	beq loc_801B786
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	b loc_801B796
loc_801B786:
	bl object_getFlag2
	ldr r1, dword_801B874 // =0x8000 
	tst r0, r1
	bne loc_801B796
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801B79C
loc_801B796:
	mov r0, #1
	bl object_setFlag2
loc_801B79C:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B858
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801B7CA
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B858
loc_801B7CA:
	bl object_getFlag2
	ldr r1, off_801BAFC // =0xc00 
	tst r0, r1
	beq loc_801B7DA
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B7E4
loc_801B7DA:
	bl object_getFlag // () -> int
	ldr r1, off_801BB00 // =LCDControl 
	tst r0, r1
	beq loc_801B7EA
loc_801B7E4:
	bl sub_8018002
	b loc_801B86C
loc_801B7EA:
	bl object_getFlag2
	ldr r1, off_801BB04 // =0x3000 
	tst r0, r1
	beq loc_801B7FA
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B804
loc_801B7FA:
	bl object_getFlag // () -> int
	ldr r1, dword_801BB08 // =0x30000000 
	tst r0, r1
	beq loc_801B80A
loc_801B804:
	bl sub_801813A
	b loc_801B86C
loc_801B80A:
	bl battle_isTimeStop
	beq loc_801B816
	bl sub_801823C
	b loc_801B86C
loc_801B816:
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B842
	mov r0, r1
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B836
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B836:
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B858
loc_801B842:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B854
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B858
loc_801B854:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
loc_801B858:
	bl sprite_zeroColorShader
	bl hideSummonsWhenBlind_80181F6
	ldrb r0, [r5,#oBattleObject_CurAction]
	lsl r0, r0, #2
	ldr r1, [sp]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_801B86C:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_801B870: .word 0xC800002
dword_801B874: .word 0x8000
	thumb_func_end sub_801B750

	thumb_func_start sub_801B878
sub_801B878:
	push {r6,r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	ldr r7, [r5,#oBattleObject_AIDataPtr]
	mov r0, #0x80
	ldrh r0, [r6,r0]
	tst r0, r0
	beq loc_801B8A0
	push {r0}
	bl sprite_forceWhitePalette
	mov r0, #SOUND_UNK_85
	bl PlaySoundEffect
	pop {r0}
	bl object_subtractHP
	tst r1, r1
	beq loc_801B8C4
loc_801B8A0:
	ldr r0, [r6,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_801B9A4 // =0xc800002 
	tst r0, r1
	beq loc_801B8B4
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #0
	bne loc_801B8B4
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
	b loc_801B8C4
loc_801B8B4:
	bl object_getFlag2
	ldr r1, dword_801B9B8 // =0x8000 
	tst r0, r1
	bne loc_801B8C4
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801B8CA
loc_801B8C4:
	mov r0, #1
	bl object_setFlag2
loc_801B8CA:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne loc_801B98C
	bl object_getFlag2
	mov r1, #1
	tst r0, r1
	beq loc_801B8F8
	mov r0, r1
	bl object_clearFlag2
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b loc_801B98C
loc_801B8F8:
	bl object_getFlag2
	ldr r1, off_801B9A8 // =0xc00 
	tst r0, r1
	beq loc_801B908
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B912
loc_801B908:
	bl object_getFlag // () -> int
	ldr r1, off_801B9AC // =LCDControl 
	tst r0, r1
	beq loc_801B918
loc_801B912:
	bl sub_8018002
	b loc_801B9A0
loc_801B918:
	bl object_getFlag2
	ldr r1, off_801B9B0 // =0x3000 
	tst r0, r1
	beq loc_801B928
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	b loc_801B932
loc_801B928:
	bl object_getFlag // () -> int
	ldr r1, dword_801B9B4 // =0x30000000 
	tst r0, r1
	beq loc_801B938
loc_801B932:
	bl sub_801813A
	b loc_801B9A0
loc_801B938:
	bl battle_isTimeStop
	beq loc_801B94A
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0
	beq loc_801B98C
	bl sub_801823C
	b loc_801B9A0
loc_801B94A:
	mov r0, #0
	strb r0, [r5,#oBattleObject_PreventAnim]
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801B976
	mov r0, r1
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_801B96A
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_801B96A:
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurPhase]
	strb r0, [r5,#oBattleObject_Unk_0d]
	b loc_801B98C
loc_801B976:
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0x14
	tst r0, r1
	beq loc_801B988
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAction]
	b loc_801B98C
loc_801B988:
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_0d]
loc_801B98C:
	bl sprite_zeroColorShader
	bl hideSummonsWhenBlind_80181F6
	ldrb r0, [r5,#oBattleObject_CurAction]
	lsl r0, r0, #2
	ldr r1, [sp]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_801B9A0:
	add sp, sp, #4
	pop {r6,r7,pc}
	.balign 4, 0
dword_801B9A4: .word 0xC800002
off_801B9A8: .word 0xC00
off_801B9AC: .word LCDControl
off_801B9B0: .word 0x3000
dword_801B9B4: .word 0x30000000
dword_801B9B8: .word 0x8000
	thumb_func_end sub_801B878

	thumb_local_start
sub_801B9BC:
	push {r5,lr}
	ldr r3, [r5,#oBattleObject_AIDataPtr]
	tst r3, r3
	beq locret_801B9E4
	ldrb r0, [r3,#oAIData_Unk_02]
	cmp r0, #1
	bne locret_801B9E4
	ldr r0, [r3,#oAIData_Unk_54]
	tst r0, r0
	beq locret_801B9E4
	push {r5}
	mov r5, r0
	bl object_getFlag // () -> int
	pop {r5}
	ldr r1, off_801BB0C // =0x100 
	tst r0, r1
	beq locret_801B9E4
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
locret_801B9E4:
	pop {r5,pc}
	thumb_func_end sub_801B9BC

	thumb_local_start
RunAIAttack:
	push {r4,r6,r7,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r6, #oAIData_AIState
	add r6, r6, r4 // r6 = AI state
	mov r7, #oAIData_AttackVars
	add r7, r7, r4 // r7 = current attack variable region
	ldrb r1, [r5,#oBattleObject_CurAction]
	cmp r1, #0x10
	blt loc_801BA08
	sub r1, #0x10
	ldr r0, off_801BB10 // =AIAttackJumptable
	ldrb r2, [r7,#oAIAttackVars_Unk_1d]
	cmp r2, #1
	bne loc_801BA08
	bl sub_80EAD9C
	b locret_801BA10
loc_801BA08:
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
locret_801BA10:
	pop {r4,r6,r7,pc}
	thumb_func_end RunAIAttack

	thumb_local_start
applyDamageToPlayer_801ba12:
	push {r4,lr}
	mov r0, #oCollisionData_FinalDamage
	ldrh r4, [r6,r0]
	tst r4, r4
	beq loc_801BA68
	mov r0, r4
	bl sub_8010548
	ldrh r1, [r5,#oBattleObject_HP]
	cmp r1, #1
	ble loc_801BA3A
	// undershirt?
	bl object_getFlag // () -> int
	ldr r1, dword_801BB14 // =0x40000 
	tst r0, r1
	beq loc_801BA3A
	ldrh r1, [r5,#oBattleObject_HP]
	cmp r1, r4
	bgt loc_801BA3A
	sub r4, r1, #1
loc_801BA3A:
	mov r0, r4
	bl object_subtractHP
	push {r1}
	mov r4, #0x6d 
	ldrh r0, [r5,#oBattleObject_NameID]
	bl sub_800F29C
	cmp r0, #2
	bne loc_801BA58
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	bne loc_801BA58
	mov r4, #0x6b 
loc_801BA58:
	mov r0, r4
	bl PlaySoundEffect
	pop {r1}
	tst r1, r1
	beq loc_801BA76
	bl sprite_forceWhitePalette
loc_801BA68:
	mov r0, #0x8c
	ldrh r0, [r6,r0]
	bl object_subtractHP
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	bne loc_801BA8C
loc_801BA76:
	bl sub_802DD2A
	tst r0, r0
	beq loc_801BA86
	ldr r0, off_801BB18 // =0x8000000
	bl SetAIData_Unk_44_Flag
	b loc_801BA8C
loc_801BA86:
	mov r0, #1
	bl object_setFlag2
loc_801BA8C:
	bl sub_801A200
	pop {r4,pc}
	thumb_func_end applyDamageToPlayer_801ba12

	thumb_local_start
sub_801BA92:
	push {r4,lr}
	mov r4, #0
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #4
	bne loc_801BABA
	mov r4, #1
	bl object_getFlag2
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	bne loc_801BABA
	bl object_getFlag2
	mov r1, #2
	tst r0, r1
	beq loc_801BABA
	bl sub_801A284
	mov r4, #2
loc_801BABA:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_801BA92

	thumb_local_start
sub_801BABE:
	push {r4,lr}
	mov r4, #0
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #6
	bne loc_801BADA
	mov r4, #1
	bl object_getFlag2
	mov r1, #2
	tst r0, r1
	beq loc_801BADA
	bl sub_801A29A
	mov r4, #2
loc_801BADA:
	mov r0, r4
	pop {r4,pc}
	thumb_func_end sub_801BABE

	thumb_local_start
sub_801BADE:
	push {r4,lr}
	mov r4, #0
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #7
	bne loc_801BAF6
	mov r0, #0x80
	ldrh r0, [r6,r0]
	cmp r0, #0
	beq loc_801BAF6
	bl sub_801A2B0
	mov r4, #1
loc_801BAF6:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
off_801BAFC: .word 0xC00
off_801BB00: .word LCDControl
off_801BB04: .word 0x3000
dword_801BB08: .word 0x30000000
off_801BB0C: .word 0x100
off_801BB10: .word AIAttackJumptable
dword_801BB14: .word 0x40000
off_801BB18: .word 0x8000000
	thumb_func_end sub_801BADE

	thumb_func_start object_reservePanel
object_reservePanel: // JP: 0x801bf38
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_801BB42
	ldr r2, [r0,#oPanelData_ReserverObjectPtr]
	tst r2, r2
	bne loc_801BB42
	str r5, [r0,#oPanelData_ReserverObjectPtr]
	ldr r1, [r0,#oPanelData_Flags]
	mov r2, #0x80
	orr r1, r2
	str r1, [r0,#oPanelData_Flags]
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #0x20 
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #1
	pop {pc}
loc_801BB42:
	mov r0, #0
	pop {pc}
	thumb_func_end object_reservePanel

	thumb_func_start object_removePanelReserve
object_removePanelReserve:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_801BB66
	ldr r1, [r0,#oPanelData_ReserverObjectPtr]
	cmp r1, r5
	bne loc_801BB66
	mov r1, #0
	str r1, [r0,#oPanelData_ReserverObjectPtr]
	ldr r1, [r0,#oPanelData_Flags]
	mov r2, #0x80
	bic r1, r2
	str r1, [r0,#oPanelData_Flags]
	mov r0, #1
	pop {pc}
loc_801BB66:
	mov r0, #0
	pop {pc}
	thumb_func_end object_removePanelReserve

	thumb_local_start
sub_801BB6A:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq locret_801BB76
	ldr r0, [r0,#0x1c]
locret_801BB76:
	pop {pc}
	thumb_func_end sub_801BB6A

	thumb_local_start
RemoveBattleObjectPanelReserves:
	push {r6,r7,lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #0x20 
	tst r0, r1
	beq locret_801BBA8
	mov r7, #4
loc_801BB84:
	mov r6, #7
loc_801BB86:
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	cmp r0, #0
	beq loc_801BBA0
	ldr r1, [r0,#oPanelData_ReserverObjectPtr]
	cmp r1, r5
	bne loc_801BBA0
	mov r0, r6
	mov r1, r7
	bl object_removePanelReserve
loc_801BBA0:
	sub r6, #1
	bne loc_801BB86
	sub r7, #1
	bne loc_801BB84
locret_801BBA8:
	pop {r6,r7,pc}
	.balign 4, 0x00
	thumb_func_end RemoveBattleObjectPanelReserves

	thumb_func_start object_updateSprite
object_updateSprite:
	push {lr}
	bl battle_isPaused
	bne locret_801BBF2
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #1
	tst r0, r1
	beq locret_801BBF2
	mov r1, #8
	tst r0, r1
	bne locret_801BBF2
	mov r1, #0x10
	tst r0, r1
	bne loc_801BBCE
	bl battle_isTimeStop
	bne locret_801BBF2
loc_801BBCE:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	tst r0, r0
	beq loc_801BBDA
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	tst r0, r0
	bne locret_801BBF2
loc_801BBDA:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_801BBEE
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
loc_801BBEE:
	bl sprite_update
locret_801BBF2:
	pop {pc}
	thumb_func_end object_updateSprite

	thumb_func_start object_updateSpriteTimestop
object_updateSpriteTimestop:
	push {lr}
	bl battle_isPaused
	bne locret_801BC22
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #1
	tst r0, r1
	beq locret_801BC22
	mov r1, #8
	tst r0, r1
	bne locret_801BC22
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_801BC1E
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
loc_801BC1E:
	bl sprite_update
locret_801BC22:
	pop {pc}
	thumb_func_end object_updateSpriteTimestop

	thumb_func_start sub_801BC24
sub_801BC24:
	push {lr}
	bl battle_isPaused
	bne locret_801BC62
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #1
	tst r0, r1
	beq locret_801BC62
	mov r1, #8
	tst r0, r1
	bne locret_801BC62
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #0x10
	tst r0, r1
	bne loc_801BC48
	bl battle_isTimeStop
	bne locret_801BC62
loc_801BC48:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_801BC5E
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	pop {pc}
loc_801BC5E:
	bl sprite_update
locret_801BC62:
	pop {pc}
	thumb_func_end sub_801BC24

	thumb_func_start UpdateBattleObjectSprite
UpdateBattleObjectSprite:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #OBJECT_FLAG_ACTIVE
	tst r0, r1
	beq .doNotUpdateSprite
	mov r1, #OBJECT_FLAG_STOP_SPRITE_UPDATE
	tst r0, r1
	bne .doNotUpdateSprite
	mov r1, #OBJECT_FLAG_UPDATE_DURING_TIMESTOP
	tst r0, r1
	bne .notTimestop
	bl battle_isTimeStop
	bne .doNotUpdateSprite
.notTimestop
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	tst r0, r0
	beq .noCollision
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	tst r0, r0
	bne .doNotUpdateSprite
.noCollision
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq .animNotChanged
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
.animNotChanged
	bl sprite_update
.doNotUpdateSprite
	pop {pc}
	thumb_func_end UpdateBattleObjectSprite

	thumb_func_start object_updateSpritePaused
object_updateSpritePaused:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #1
	tst r0, r1
	beq locret_801BCCE
	bl battle_isTimeStop
	bne locret_801BCCE
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_801BCCA
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
loc_801BCCA:
	bl sprite_update
locret_801BCCE:
	pop {pc}
	thumb_func_end object_updateSpritePaused

	thumb_func_start sub_801BCD0
sub_801BCD0:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #8
	tst r0, r1
	bne locret_801BCF2
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_801BCEE
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
loc_801BCEE:
	bl sprite_update
locret_801BCF2:
	pop {pc}
	thumb_func_end sub_801BCD0

	thumb_func_start sub_801BCF4
sub_801BCF4:
	push {lr}
	bl battle_isPaused
	bne locret_801BD3A
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #1
	tst r0, r1
	beq locret_801BD3A
	mov r1, #8
	tst r0, r1
	bne locret_801BD3A
	mov r1, #0x10
	tst r0, r1
	bne loc_801BD16
	bl battle_isTimeStop
	bne locret_801BD3A
loc_801BD16:
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	tst r0, r0
	beq loc_801BD22
	ldrb r0, [r5,#oBattleObject_PreventAnim]
	tst r0, r0
	bne locret_801BD3A
loc_801BD22:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r5,#oBattleObject_CurAnimCopy]
	cmp r0, r1
	beq loc_801BD36
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	ldrb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,#oBattleObject_CurAnimCopy]
loc_801BD36:
	bl sprite_update
locret_801BD3A:
	pop {pc}
	thumb_func_end sub_801BCF4

	thumb_func_start sub_801BD3C
sub_801BD3C:
	push {r4,r6,r7,lr}
	mov r6, r8
	push {r6}
	mov r8, r7
	push {r0-r3}
	mov r0, r4
	bl object_getAllianceDirection
	mov r6, r0
	pop {r0-r3}
	lsl r3, r3, #0x19
	bcs loc_801BDA2
	beq loc_801BD9C
	lsr r3, r3, #0x17
	ldr r7, off_801BE68 // =PanelOffsetListsPointerTable
	ldr r7, [r7,r3]
	mov r3, #0
loc_801BD5E:
	push {r0,r1}
	ldrsb r4, [r7,r3]
	cmp r4, #0x7f
	beq loc_801BD9A
	mul r4, r6
	add r0, r0, r4
	add r3, #1
	ldrsb r4, [r7,r3]
	add r1, r1, r4
	add r3, #1
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	beq loc_801BD96
	push {r0-r3}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	pop {r2}
	mov r4, r2
	mov r2, r1
	mov r1, r0
	mov r3, r8
	bl spawn_t1_0x0_EffectObject
	pop {r0-r3}
loc_801BD96:
	pop {r0,r1}
	b loc_801BD5E
loc_801BD9A:
	pop {r0,r1}
loc_801BD9C:
	pop {r0}
	mov r8, r0
	pop {r4,r6,r7,pc}
loc_801BDA2:
	lsr r3, r3, #0x16
	mov r4, r2
	mov r1, #3
	ldr r7, off_801BE6C // =byte_8019C34
	add r7, r7, r3
	ldr r2, [r7]
	ldr r3, [r7,#4]
loc_801BDB0:
	mov r0, #6
loc_801BDB2:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_801BDD0
	push {r0-r3}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	bl spawn_t1_0x0_EffectObject
	pop {r0-r3}
loc_801BDD0:
	sub r0, #1
	bne loc_801BDB2
	sub r1, #1
	bne loc_801BDB0
	pop {r0}
	mov r8, r0
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801BD3C

	thumb_func_start AddRandomVarianceToTwoCoords
// adds variance to input coords determined by randint(-mask/2,mask/2+1)
// randint is inclusive
// input args seem to (always?) be X and Z
AddRandomVarianceToTwoCoords:
	push {r4,r6,r7,lr}
	push {r0-r3}
	bl GetRNG // () -> int
	mov r7, r0
	pop {r0-r3}
	mov r4, r7
	// r4 = RNG() & r0
	and r4, r0
	// r4 = (RNG() & r0) - (r0>>1)
	lsr r6, r0, #1
	sub r4, r4, r6
	lsl r4, r4, #0x10
	// r1 += ((RNG() & r0) - (r0>>1))<<16
	add r1, r1, r4
	lsr r7, r7, #0x10
	and r7, r0
	lsr r0, r0, #1
	sub r7, r7, r0
	lsl r7, r7, #0x10
	// r3 += ((RNG() >> 16) & r0 - (r0>>1))<<16
	add r3, r3, r7
	pop {r4,r6,r7,pc}
	thumb_func_end AddRandomVarianceToTwoCoords

	thumb_func_start sub_801BE04
sub_801BE04:
	sub r0, r0, r2
	bgt loc_801BE0E
	blt loc_801BE12
	mov r0, #0
	b loc_801BE14
loc_801BE0E:
	mov r0, #8
	b loc_801BE14
loc_801BE12:
	mov r0, #4
loc_801BE14:
	sub r1, r1, r3
	bgt loc_801BE22
	blt loc_801BE1E
	mov r1, #0
	b loc_801BE24
loc_801BE1E:
	mov r1, #1
	b loc_801BE24
loc_801BE22:
	mov r1, #2
loc_801BE24:
	orr r0, r1
	mov pc, lr
	thumb_func_end sub_801BE04

	thumb_func_start nullsub_10
nullsub_10:
	mov pc, lr
	thumb_func_end nullsub_10

	thumb_func_start sub_801BE2A
sub_801BE2A:
	push {r6,r7,lr}
	mov r6, r0
	mov r0, #0x80
	lsl r1, r6, #0x10
	lsr r1, r1, #0x18
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	bl sprite_load // (int a1, int a2, int a3) ->
	bl sprite_loadAnimationData // () -> void
	lsr r0, r6, #0x18
	tst r0, r0
	beq loc_801BE4C
	bl sprite_hasShadow
	b loc_801BE50
loc_801BE4C:
	bl sprite_noShadow // () -> void
loc_801BE50:
	lsl r0, r6, #8
	lsr r0, r0, #0x18
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xff
	strb r0, [r5,#oBattleObject_CurAnimCopy]
	bl object_getFlip // () -> int
	bl sprite_setFlip
	mov r0, #1
	pop {r6,r7,pc}
	.balign 4, 0
off_801BE68: .word PanelOffsetListsPointerTable
off_801BE6C: .word byte_8019C34
	thumb_func_end sub_801BE2A

	thumb_func_start sub_801BE70
sub_801BE70:
	push {lr}
	// memBlock
	ldr r0, off_801BFE8 // =eStruct2035280
	// size
	mov r1, #0x60 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r2, #0x20 
	ldr r1, off_801BFE8 // =eStruct2035280
	strh r2, [r1,#0x22] // (word_20352A2 - 0x2035280)
	mov r2, #0
	sub r2, #1
	strh r2, [r1,#0x26] // (word_20352A6 - 0x2035280)
	// memBlock
	ldr r0, off_801BEA8 // =dword_20352E0 
	// size
	mov r1, #0x30 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	// memBlock
	ldr r0, off_801BEAC // =byte_203EB50 
	// size
	mov r1, #0x50 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r0, off_801BEB0 // =dword_203CA48 
	mov r1, #0
	str r1, [r0]
	str r1, [r0,#0x4] // (dword_203CA4C - 0x203ca48)
	ldr r1, off_801BEB4 // =dword_20367E0 
	mov r0, #0
	str r0, [r1]
	pop {pc}
	.balign 4, 0
off_801BEA8: .word dword_20352E0
off_801BEAC: .word byte_203EB50
off_801BEB0: .word dword_203CA48
off_801BEB4: .word dword_20367E0
	thumb_func_end sub_801BE70

	thumb_func_start sub_801BEB8
sub_801BEB8:
	ldr r1, off_801BFE8 // =eStruct2035280
	ldr r2, [r1,#0x44] // (dword_20352C4 - 0x2035280)
	orr r2, r0
	str r2, [r1,#0x44] // (dword_20352C4 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801BEB8

	thumb_func_start sub_801BEC2
sub_801BEC2:
	ldr r1, off_801BFE8 // =eStruct2035280
	ldr r2, [r1,#0x44] // (dword_20352C4 - 0x2035280)
	bic r2, r0
	str r2, [r1,#0x44] // (dword_20352C4 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801BEC2

	thumb_func_start sub_801BECC
sub_801BECC:
	ldr r1, off_801BFE8 // =eStruct2035280
	ldr r2, [r1,#0x40] // (dword_20352C0 - 0x2035280)
	orr r2, r0
	str r2, [r1,#0x40] // (dword_20352C0 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801BECC

	thumb_func_start sub_801BED6
sub_801BED6:
	ldr r1, off_801BFE8 // =eStruct2035280
	ldr r2, [r1,#0x40] // (dword_20352C0 - 0x2035280)
	bic r2, r0
	str r2, [r1,#0x40] // (dword_20352C0 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801BED6

	thumb_func_start sub_801BEE0
sub_801BEE0:
	push {r5-r7,lr}
	ldr r5, off_801BFE8 // =eStruct2035280
	ldr r6, off_801BF00 // =off_801BF04 
	ldr r7, [r5,#0x40] // (dword_20352C0 - 0x2035280)
loc_801BEE8:
	lsr r7, r7, #1
	bcs loc_801BEF2
	beq locret_801BEFC
	add r6, #4
	b loc_801BEE8
loc_801BEF2:
	ldr r0, [r6]
	mov lr, pc
	bx r0
	add r6, #4
	b loc_801BEE8
locret_801BEFC:
	pop {r5-r7,pc}
	.balign 4, 0
off_801BF00: .word off_801BF04
off_801BF04: .word sub_801BFEE+1
	.word sub_801BFF8+1
	.word sub_801C168+1
	.word sub_801C368+1
	.word sub_801C470+1
	.word sub_801C4AE+1
	.word nullsub_58+1
	.word sub_801C840+1
	.word sub_801CA0C+1
	.word nullsub_58+1
	.word sub_801C984+1
	.word nullsub_58+1
	.word sub_801CA28+1
	.word nullsub_58+1
	.word sub_801CADC+1
	.word sub_801CE28+1
	.word sub_801D1D8+1
	.word sub_801C5F4+1
	.word sub_801D2A0+1
	.word sub_801D450+1
	.word sub_801D514+1
	.word sub_801D548+1
	.word sub_801D590+1
	.word sub_801D71A+1
	thumb_func_end sub_801BEE0

	thumb_func_start sub_801BF64
sub_801BF64:
	push {r5-r7,lr}
	ldr r5, off_801BFE8 // =eStruct2035280
	ldr r6, off_801BF84 // =off_801BF88 
	ldr r7, [r5,#0x44] // (dword_20352C4 - 0x2035280)
loc_801BF6C:
	lsr r7, r7, #1
	bcs loc_801BF76
	beq locret_801BF80
	add r6, #4
	b loc_801BF6C
loc_801BF76:
	ldr r0, [r6]
	mov lr, pc
	bx r0
	add r6, #4
	b loc_801BF6C
locret_801BF80:
	pop {r5-r7,pc}
	.balign 4, 0
off_801BF84: .word off_801BF88
off_801BF88: .word sub_801C06E+1
	.word sub_801C078+1
	.word sub_801C202+1
	.word sub_801C416+1
	.word sub_801C4E4+1
	.word sub_801C576+1
	.word sub_801C6EE+1
	.word sub_801C906+1
	.word nullsub_58+1
	.word sub_801C9E4+1
	.word sub_801C9A4+1
	.word nullsub_58+1
	.word sub_801CA34+1
	.word sub_801CA80+1
	.word sub_801CDEC+1
	.word sub_801CF0E+1
	.word sub_801D1F6+1
	.word sub_801C640+1
	.word sub_801D2A4+1
	.word sub_801D47A+1
	.word nullsub_58+1
	.word sub_801D564+1
	.word sub_801D65C+1
	.word sub_801D792+1
off_801BFE8: .word eStruct2035280
	thumb_func_end sub_801BF64

	thumb_local_start
nullsub_58:
	mov pc, lr
	thumb_func_end nullsub_58

	thumb_local_start
sub_801BFEE:
	push {lr}
	mov r0, #1
	bl sub_801C002
	pop {pc}
	thumb_func_end sub_801BFEE

	thumb_local_start
sub_801BFF8:
	push {lr}
	mov r0, #0
	bl sub_801C002
	pop {pc}
	thumb_func_end sub_801BFF8

	thumb_local_start
sub_801C002:
	push {r4,r6,r7,lr}
	push {r0}
	ldr r4, off_801C148 // =dword_20352E0 
	mov r6, #6
	ldr r7, dword_801C14C // =0x6016a00 
loc_801C00C:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_801C062
	ldrb r0, [r4,#3]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_801C062
	ldr r0, [r4,#4]
	bl sub_800ED90
	cmp r3, #0
	beq loc_801C062
	ldr r1, [sp]
	cmp r1, #1
	bne loc_801C048
	push {r0}
	bl GetBattleMode
	cmp r0, #1
	pop {r0}
	beq loc_801C048
	push {r0}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	pop {r0}
	beq loc_801C048
	ldr r0, off_801C160 // =dword_872CE94 
	b loc_801C05A
loc_801C048:
	ldr r2, dword_801C150 // =0xffff 
	cmp r0, r2
	bne loc_801C050
	mov r0, #0
loc_801C050:
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldr r0, [r0,#0x20]
loc_801C05A:
	mov r1, r7
	mov r2, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
loc_801C062:
	add r4, #8
	add r7, #0x80
	sub r6, #1
	bne loc_801C00C
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801C002

	thumb_local_start
sub_801C06E:
	push {lr}
	mov r0, #1
	bl sub_801C082
	pop {pc}
	thumb_func_end sub_801C06E

	thumb_local_start
sub_801C078:
	push {lr}
	mov r0, #0
	bl sub_801C082
	pop {pc}
	thumb_func_end sub_801C078

	thumb_local_start
sub_801C082:
	push {r4-r7,lr}
	push {r0}
	ldr r4, off_801C148 // =dword_20352E0 
	mov r6, #6
	ldr r7, dword_801C158 // =0xab50 
loc_801C08C:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_801C13A
	ldrb r0, [r4,#3]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_801C13A
	push {r5}
	ldr r5, [r4,#4]
	bl GetAIDataUnk0x48Flag
	ldr r1, dword_801C164 // =0x100000 
	tst r0, r1
	pop {r5}
	bne loc_801C13A
	ldr r0, [r4,#4]
	bl sub_800ED90
	cmp r3, #0
	beq loc_801C13A
	push {r6}
	mov r5, r3
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	bl object_getAllianceDirection
	push {r0}
	ldr r0, [r4,#4]
	ldrb r1, [r0,#0x17]
	ldrb r0, [r0,#0x16]
	bl object_getFlipDirection // (int a1, int a2) -> int
	push {r0}
	ldr r0, [r4,#4]
	add r0, #0x34 
	bl sub_800362C
	cmp r2, #0
	beq loc_801C136
	ldr r2, [sp]
	ldr r3, [sp,#4]
	mul r3, r2
	lsl r3, r3, #3
	push {r0}
	mov r2, #1
	ldrsb r2, [r4,r2]
	ldr r3, [sp,#8]
	mul r2, r3
	pop {r0}
	sub r2, r2, r3
	add r0, r0, r2
	sub r0, #8
	ldr r2, dword_801C15C // =0x1ff 
	and r0, r2
	mov r2, #2
	ldrsb r2, [r4,r2]
	add r1, r1, r2
	mov r2, #0xff
	and r1, r2
	lsl r0, r0, #0x10
	add r6, r0, r1
loc_801C108:
	ldr r0, dword_801C154 // =0x40000000 
	mov r1, r7
	add r0, r0, r6
	mov r2, #2
	mov r3, r5
	add r3, #0xd0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr r0, [sp,#4]
	ldr r1, [sp]
	mul r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mul r1, r0
	sub r6, r6, r1
	lsr r0, r6, #8
	lsl r0, r0, #8
	sub r6, #2
	mov r1, #0xff
	and r6, r1
	orr r6, r0
	sub r5, #1
	bne loc_801C108
loc_801C136:
	add sp, sp, #8
	pop {r6}
loc_801C13A:
	add r4, #8
	add r7, #4
	sub r6, #1
	bne loc_801C08C
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0
off_801C148: .word dword_20352E0
dword_801C14C: .word 0x6016A00
dword_801C150: .word 0xFFFF
dword_801C154: .word 0x40000000
dword_801C158: .word 0xAB50
dword_801C15C: .word 0x1FF
off_801C160: .word dword_872CE94
dword_801C164: .word 0x100000
	thumb_func_end sub_801C082

	thumb_local_start
sub_801C168:
	push {r4,r6,lr}
	ldr r4, off_801C334 // =byte_203EB50 
	mov r6, #4
loc_801C16E:
	ldrb r1, [r4]
	mov r0, #1
	tst r1, r0
	beq loc_801C1C8
	ldr r2, [r4,#0xc]
	ldrh r0, [r4,#2]
	ldrh r1, [r2,#0x24]
	cmp r1, #0
	bne loc_801C186
	mov r0, #0
	strb r0, [r4]
	b loc_801C1C6
loc_801C186:
	mov r2, #0
	cmp r0, r1
	beq loc_801C19E
	blt loc_801C190
	mov r2, #4
loc_801C190:
	ldr r3, off_801C338 // =off_801C33C 
	ldr r2, [r3,r2]
	mov lr, pc
	bx r2
	ldr r2, dword_801C364 // =0xb0b0b0b 
	str r2, [r4,#0x10]
	b loc_801C1C6
loc_801C19E:
	ldr r2, [r4,#0xc]
	ldr r2, [r2,#0x54]
	ldrb r2, [r2,#8]
	cmp r2, #0
	beq loc_801C1B2
	mov r2, #1
	strb r2, [r4,#8]
	mov r2, #2
	strb r2, [r4,#9]
	b loc_801C1C6
loc_801C1B2:
	ldrb r1, [r4,#9]
	cmp r1, #0
	beq loc_801C1C8
	sub r1, #1
	strb r1, [r4,#9]
	bne loc_801C1C6
	mov r1, #0
	strb r1, [r4,#8]
	ldr r1, dword_801C364 // =0xb0b0b0b 
	str r1, [r4,#0x10]
loc_801C1C6:
	strh r0, [r4,#2]
loc_801C1C8:
	add r4, #0x14
	sub r6, #1
	bne loc_801C16E
	pop {r4,r6,pc}
	thumb_func_end sub_801C168

	thumb_local_start
sub_801C1D0:
	mov r2, #2
	strb r2, [r4,#8]
	mov r2, #0xa
	strb r2, [r4,#9]
	mov r2, r1
	sub r2, r2, r0
	asr r2, r2, #3
	add r2, #2
	add r0, r0, r2
	cmp r0, r1
	ble locret_801C1E8
	mov r0, r1
locret_801C1E8:
	mov pc, lr
	thumb_func_end sub_801C1D0

	thumb_local_start
sub_801C1EA:
	mov r2, #1
	strb r2, [r4,#8]
	strb r2, [r4,#9]
	mov r2, r0
	sub r2, r2, r1
	asr r2, r2, #3
	add r2, #2
	sub r0, r0, r2
	cmp r0, r1
	bge locret_801C200
	mov r0, r1
locret_801C200:
	mov pc, lr
	thumb_func_end sub_801C1EA

	thumb_local_start
sub_801C202:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r7, sp
	ldr r4, off_801C334 // =byte_203EB50 
	ldr r5, dword_801C344 // =0x6016600 
	mov r6, #4
	mov r3, #0
loc_801C210:
	ldrb r1, [r4]
	mov r0, #2
	tst r1, r0
	beq loc_801C286
	bl sub_801C296
	bl sub_801C304
	ldrb r0, [r4]
	mov r1, #8
	tst r0, r1
	beq loc_801C22C
	mov r0, #0
	str r0, [r7,#4]
loc_801C22C:
	push {r3}
	mov r0, #0
	mov r1, r10
	ldr r1, [r1,#oToolkit_CameraPtr]
	ldr r1, [r1,#oCamera_Y]
	asr r1, r1, #0x10
	neg r1, r1
	ldrb r2, [r4]
	mov r3, #4
	tst r2, r3
	beq loc_801C24E
	ldrb r0, [r4,#4]
	ldr r2, [r7,#4]
	add r0, r0, r2
	ldrb r2, [r4,#5]
	add r1, r1, r2
	b loc_801C26A
loc_801C24E:
	ldr r0, [r4,#0xc]
	add r0, #0x34 
	bl sub_800362C
	cmp r2, #0
	beq loc_801C284
	mov r2, #4
	ldrsb r2, [r4,r2]
	add r0, r0, r2
	ldr r2, [r7,#4]
	add r0, r0, r2
	mov r2, #5
	ldrsb r2, [r4,r2]
	add r1, r1, r2
loc_801C26A:
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r2, dword_801C360 // =0x1ff00ff 
	and r0, r2
	ldr r2, dword_801C358 // =0x80004000 
	orr r0, r2
	ldr r1, dword_801C35C // =0xeb30 
	ldr r2, [sp]
	add r1, r1, r2
	mov r2, #2
	mov r3, #0xdf
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_801C284:
	pop {r3}
loc_801C286:
	add r4, #0x14
	add r3, #8
	add r5, #0x80
	add r5, #0x80
	sub r6, #1
	bne loc_801C210
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end sub_801C202

	thumb_local_start
// print HP?
sub_801C296:
	push {r3,r6,lr}
	ldrh r0, [r4,#2]
	ldrb r1, [r4]
	mov r2, #0x10
	tst r1, r2
	beq loc_801C2A8
	ldr r1, [r4,#0xc]
	ldrh r1, [r1,#0x26]
	sub r0, r1, r0
loc_801C2A8:
	bl sub_8000C00
	mov r2, #0xf
	mov r1, r0
	and r1, r2
	strb r1, [r7]
	lsr r1, r0, #4
	and r1, r2
	strb r1, [r7,#1]
	lsr r1, r0, #8
	and r1, r2
	strb r1, [r7,#2]
	lsr r1, r0, #0xc
	and r1, r2
	strb r1, [r7,#3]
	bl sub_8000C5C
	lsl r1, r0, #2
	mov r2, #0x20 
	sub r2, r2, r1
	neg r2, r2
	str r2, [r7,#4]
	mov r1, #0xa
loc_801C2D6:
	cmp r0, #4
	bge loc_801C2E0
	strb r1, [r7,r0] // store blank character in HP?
	add r0, #1
	b loc_801C2D6
loc_801C2E0:
	ldr r1, [r4,#0x10]
	ldr r0, [r7]
	str r0, [r4,#0x10]
	mov r3, #0
loc_801C2E8:
	mov r2, #0xf
	and r2, r0
	mov r6, #0xf
	and r6, r1
	cmp r2, r6
	bne loc_801C2F6
	mov r2, #0xb
loc_801C2F6:
	strb r2, [r7,r3]
	lsr r0, r0, #8
	lsr r1, r1, #8
	add r3, #1
	cmp r3, #4
	blt loc_801C2E8
	pop {r3,r6,pc}
	thumb_func_end sub_801C296

	thumb_local_start
sub_801C304:
	push {r3-r6,lr}
	ldrb r0, [r4,#8]
	lsl r0, r0, #2
	ldr r4, off_801C348 // =off_801C34C 
	ldr r4, [r4,r0]
	mov r6, #3
loc_801C310:
	ldrb r0, [r7,r6]
	cmp r0, #0xb
	beq loc_801C32A
	lsl r0, r0, #2
	ldr r0, [r4,r0]
	mov r1, r5
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add r0, r0, r2
	add r1, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
loc_801C32A:
	add r5, #0x20 
	sub r6, #1
	bpl loc_801C310
	pop {r3-r6,pc}
	.balign 4, 0
off_801C334: .word byte_203EB50
off_801C338: .word off_801C33C
off_801C33C: .word sub_801C1D0+1
	.word sub_801C1EA+1
dword_801C344: .word 0x6016600
off_801C348: .word off_801C34C
off_801C34C: .word off_801D854
	.word off_801D880
	.word off_801D8AC
dword_801C358: .word 0x80004000
dword_801C35C: .word 0xEB30
dword_801C360: .word 0x1FF00FF
dword_801C364: .word 0xB0B0B0B
	thumb_func_end sub_801C304

	thumb_local_start
sub_801C368:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	bl sub_802D1B4
	ldr r1, dword_801C444 // =0x600c980 
	push {r0}
	bl sub_801C3A4
	pop {r0}
	ldr r1, off_801C454 // =byte_3001670 
	mov r2, #0
	bl sub_801C3EE
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	bl sub_802D1BE
	ldr r1, dword_801C448 // =0x600ca40 
	push {r0}
	bl sub_801C3A4
	pop {r0}
	ldr r1, off_801C458 // =word_3001684 
	mov r2, #1
	bl sub_801C3EE
	pop {pc}
	thumb_func_end sub_801C368

	thumb_local_start
sub_801C3A4:
	push {r4,r6,r7,lr}
	mov r6, r1
	cmp r0, #0x64 
	bne loc_801C3B2
	mov r0, #1
	lsl r0, r0, #8
	b loc_801C3C8
loc_801C3B2:
	cmp r0, #0xa
	bge loc_801C3BE
	mov r1, #0xaa
	lsl r1, r1, #4
	orr r0, r1
	b loc_801C3C8
loc_801C3BE:
	bl sub_8000C00
	mov r1, #0xa
	lsl r1, r1, #8
	orr r0, r1
loc_801C3C8:
	mov r4, r0
	mov r7, #3
loc_801C3CC:
	sub r1, r7, #1
	lsl r1, r1, #2
	mov r0, r4
	lsr r0, r1
	mov r1, #0xf
	and r0, r1
	ldr r1, off_801C44C // =off_801D8D8 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov r1, r6
	mov r2, #0x40 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add r6, #0x40 
	sub r7, #1
	bne loc_801C3CC
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801C3A4

	thumb_local_start
sub_801C3EE:
	push {r4,r6,r7,lr}
	mov r3, #0
	cmp r0, #0x3c 
	bgt loc_801C3FE
	add r3, #4
	cmp r0, #0x19
	bgt loc_801C3FE
	add r3, #4
loc_801C3FE:
	mov r0, #0xc
	mul r0, r2
	add r3, r3, r0
	ldr r0, off_801C46C // =off_801D92C 
	ldr r0, [r0,r3]
	mov r2, #0x14
	cmp r3, #0xc
	blt loc_801C410
	sub r2, #8
loc_801C410:
	bl QueueWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801C3EE

	thumb_local_start
sub_801C416:
	push {r4,r5,lr}
	// j
	mov r0, #0x11
	// i
	mov r1, #0x12
	// tileBlock32x32
	mov r2, #0
	// tileIds
	ldr r3, tileIds // =byte_801D904
	mov r4, #0xa
	mov r5, #2
	bl CopyBackgroundTiles
	ldr r0, dword_801C45C // =0x40780090 
	ldr r1, dword_801C460 // =0x9768 
	mov r2, #1
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr r0, dword_801C464 // =0x40a80090 
	ldr r1, dword_801C468 // =0x976c 
	mov r2, #1
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4,r5,pc}
	.balign 4, 0
dword_801C444: .word 0x600C980
dword_801C448: .word 0x600CA40
off_801C44C: .word off_801D8D8
tileIds: .word byte_801D904
off_801C454: .word byte_3001670
off_801C458: .word word_3001684
dword_801C45C: .word 0x40780090
dword_801C460: .word 0x9768
dword_801C464: .word 0x40A80090
dword_801C468: .word 0x976C
off_801C46C: .word off_801D92C
	thumb_func_end sub_801C416

	thumb_local_start
sub_801C470:
	push {lr}
	bl battle_isPaused
	bne locret_801C4AC
	bl battle_isTimeStop
	bne locret_801C4AC
	bl battle_getFlags
	mov r1, #2
	tst r0, r1
	bne locret_801C4AC
	ldrh r0, [r5,#0x22]
	ldrh r1, [r5,#0x20]
	ldr r2, dword_801C4DC // =0x4000 
	add r0, r0, r1
	strh r0, [r5,#0x20]
	cmp r0, r2
	blt locret_801C4AC
	strh r2, [r5,#0x20]
	bl sub_800A97A
	cmp r0, #0
	bne locret_801C4AC
	mov r0, #2
	bl battle_setFlags
	mov r0, #0x8f
	bl PlaySoundEffect
locret_801C4AC:
	pop {pc}
	thumb_func_end sub_801C470

	thumb_local_start
sub_801C4AE:
	push {lr}
	bl battle_getFlags
	mov r1, #2
	tst r0, r1
	bne locret_801C4DA
	bl sub_800A70C
	ldr r1, dword_801C4DC // =0x4000 
	mul r0, r1
	ldr r1, off_801C4E0 // =0x2d0 
	svc 6
	strh r0, [r5,#0x20]
	ldr r1, dword_801C4DC // =0x4000 
	cmp r0, r1
	bne locret_801C4DA
	mov r0, #2
	bl battle_setFlags
	mov r0, #0x8f
	bl PlaySoundEffect
locret_801C4DA:
	pop {pc}
	.balign 4, 0
dword_801C4DC: .word 0x4000
off_801C4E0: .word 0x2D0
	thumb_func_end sub_801C4AE

	thumb_local_start
sub_801C4E4:
	push {r4-r6,lr}
	bl sub_800A97A
	cmp r0, #0
	bne locret_801C574
	ldrh r6, [r5,#0x20]
	ldr r2, dword_801C6D8 // =0x4000 
	cmp r6, r2
	blt loc_801C534
	ldrb r6, [r5]
	add r6, #1
	cmp r6, #0x70 
	blt loc_801C500
	mov r6, #0
loc_801C500:
	strb r6, [r5]
	mov r0, r6
	mov r1, #7
	svc 6
	mov r1, #3
	and r0, r1
	ldr r3, dword_801C6B8 // =0x9232 
	add r3, r3, r0
	mov r0, #7
	mov r1, #1
	mov r2, #3
	mov r4, #0x10
	mov r5, #1
	bl call_sub_3005EBA
	mov r0, #8
	and r0, r6
	ldr r3, off_801C6BC // =byte_801C6C0
	add r3, r3, r0
	mov r0, #0xd
	mov r1, #1
	mov r2, #3
	mov r4, #4
	bl sub_80018E0
	b locret_801C574
loc_801C534:
	mov r0, #7
	mov r1, #1
	mov r2, #3
	ldr r3, dword_801C6B4 // =0x9222 
	mov r4, #0x10
	push {r5}
	mov r5, #1
	bl call_sub_3005EBA
	pop {r5}
	lsr r4, r6, #0xa
	cmp r4, #0
	beq loc_801C55C
	mov r0, #7
	mov r1, #1
	mov r2, #3
	ldr r3, dword_801C6B0 // =0x922a 
	mov r5, #1
	bl call_sub_3005EBA
loc_801C55C:
	lsr r6, r6, #7
	mov r0, #7
	and r0, r6
	ldr r3, dword_801C6B4 // =0x9222 
	add r3, r3, r0
	lsr r6, r6, #3
	mov r0, #7
	add r0, r0, r6
	mov r1, #1
	mov r2, #3
	bl sub_800187C
locret_801C574:
	pop {r4-r6,pc}
	thumb_func_end sub_801C4E4

	thumb_local_start
sub_801C576:
	push {r4-r6,lr}
	bl sub_800A97A
	cmp r0, #0
	bne locret_801C5F2
	ldrh r6, [r5,#0x20]
	ldr r2, dword_801C6D8 // =0x4000 
	cmp r6, r2
	blt loc_801C5B2
	ldrb r6, [r5]
	add r6, #1
	cmp r6, #0x70 
	blt loc_801C592
	mov r6, #0
loc_801C592:
	strb r6, [r5]
	mov r0, r6
	mov r1, #7
	svc 6
	mov r1, #3
	and r0, r1
	ldr r3, dword_801C6B8 // =0x9232 
	add r3, r3, r0
	mov r0, #7
	mov r1, #1
	mov r2, #3
	mov r4, #0x10
	mov r5, #1
	bl call_sub_3005EBA
	b locret_801C5F2
loc_801C5B2:
	mov r0, #7
	mov r1, #1
	mov r2, #3
	ldr r3, dword_801C6B4 // =0x9222 
	mov r4, #0x10
	push {r5}
	mov r5, #1
	bl call_sub_3005EBA
	pop {r5}
	lsr r4, r6, #0xa
	cmp r4, #0
	beq loc_801C5DA
	mov r0, #7
	mov r1, #1
	mov r2, #3
	ldr r3, dword_801C6B0 // =0x922a 
	mov r5, #1
	bl call_sub_3005EBA
loc_801C5DA:
	lsr r6, r6, #7
	mov r0, #7
	and r0, r6
	ldr r3, dword_801C6B4 // =0x9222 
	add r3, r3, r0
	lsr r6, r6, #3
	mov r0, #7
	add r0, r0, r6
	mov r1, #1
	mov r2, #3
	bl sub_800187C
locret_801C5F2:
	pop {r4-r6,pc}
	thumb_func_end sub_801C576

	thumb_local_start
sub_801C5F4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_MainJumptableIndexPtr]
	ldrb r1, [r0]
	cmp r1, #0x50 
	beq locret_801C63E
	ldrb r0, [r5,#0x18]
	strb r0, [r5,#0x19]
	mov r2, #0
	ldrh r0, [r5,#0x20]
	ldr r1, off_801C6D0 // =0x1500 
	cmp r0, r1
	blt loc_801C620
	add r2, #1
	ldr r1, off_801C6D4 // =0x2a00 
	cmp r0, r1
	blt loc_801C620
	add r2, #1
	ldr r1, dword_801C6D8 // =0x4000 
	cmp r0, r1
	bne loc_801C620
	add r2, #1
loc_801C620:
	strb r2, [r5,#0x18]
	bl sub_800A8F8
	cmp r0, #1
	bne locret_801C63E
	ldrb r0, [r5,#0x18]
	ldrb r1, [r5,#0x19]
	cmp r0, r1
	ble locret_801C63E
	sub r0, #1
	lsl r0, r0, #1
	ldr r1, off_801C6E4 // =byte_801C6E8
	ldrh r0, [r1,r0]
	bl PlaySoundEffect
locret_801C63E:
	pop {pc}
	thumb_func_end sub_801C5F4

	thumb_local_start
sub_801C640:
	push {r4-r6,lr}
	bl sub_800A97A
	cmp r0, #0
	bne locret_801C6AE
	mov r0, #7
	mov r1, #1
	mov r2, #3
	ldr r3, dword_801C6B4 // =0x9222 
	mov r4, #0x10
	push {r5}
	mov r5, #1
	bl call_sub_3005EBA
	pop {r5}
	ldrh r6, [r5,#0x20]
	lsr r4, r6, #0xa
	cmp r4, #0
	beq loc_801C678
	mov r0, #7
	mov r1, #1
	mov r2, #3
	ldr r3, dword_801C6B0 // =0x922a 
	push {r5}
	mov r5, #1
	bl call_sub_3005EBA
	pop {r5}
loc_801C678:
	ldr r0, dword_801C6D8 // =0x4000 
	cmp r0, r6
	beq loc_801C696
	lsr r6, r6, #7
	mov r0, #7
	and r0, r6
	ldr r3, dword_801C6B4 // =0x9222 
	add r3, r3, r0
	lsr r6, r6, #3
	mov r0, #7
	add r0, r0, r6
	mov r1, #1
	mov r2, #3
	bl sub_800187C
loc_801C696:
	ldrb r3, [r5,#0x18]
	cmp r3, #0
	bne loc_801C69E
	sub r3, #2
loc_801C69E:
	mov r2, #0x20 
	sub r3, #1
	mul r3, r2
	ldr r0, off_801C6DC // =byte_86E1CD8 
	add r0, r0, r3
	ldr r1, off_801C6E0 // =unk_3001A80 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
locret_801C6AE:
	pop {r4-r6,pc}
	.balign 4, 0
dword_801C6B0: .word 0x922A
dword_801C6B4: .word 0x9222
dword_801C6B8: .word 0x9232
off_801C6BC: .word byte_801C6C0
byte_801C6C0: .byte 0x36, 0x92, 0x37, 0x92, 0x38, 0x92, 0x39, 0x92, 0x3A
	.byte 0x92, 0x3B, 0x92, 0x3C, 0x92, 0x3D, 0x92
off_801C6D0: .word 0x1500
off_801C6D4: .word 0x2A00
dword_801C6D8: .word 0x4000
off_801C6DC: .word byte_86E1CD8
off_801C6E0: .word unk_3001A80
off_801C6E4: .word byte_801C6E8
byte_801C6E8: .byte 0x6A, 0x1, 0x69, 0x1, 0x8F, 0x0
	thumb_func_end sub_801C640

	thumb_local_start
sub_801C6EE:
	push {r4-r7,lr}
	mov r0, #0
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	push {r0}
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	mov r3, #0
	mov r4, #0x11
	mov r5, #2
	bl call_sub_3005EBA
	ldr r0, off_801C83C // =eStruct2035280
	ldr r0, [r0,#0x48] // (dword_20352C8 - 0x2035280)
	bl sub_800ED90
	cmp r3, #0
	beq loc_801C818
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	bl sub_8027D10
	ldr r2, off_801C81C // =byte_203EBA0 
	ldr r3, dword_801C820 // =0x600cb00 
	mov r4, #8
	mov r5, #1
	ldr r6, off_801C824 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r7, r0
	mov r4, r0
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	ldr r3, off_801C828 // =byte_801D944
	bl sub_80018E0
	mov r0, #0
	mov r1, #0x13
	mov r2, #3
	ldr r3, off_801C82C // =byte_801D954 
	mov r4, r7
	bl sub_80018E0
	// idx
	ldr r0, [sp]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #2
	tst r1, r2
	beq loc_801C818
	ldr r0, [sp,#4]
	bl sub_8000C00
	mov r4, r0
	bl sub_8000C5C
	mov r3, r0
	mov r6, r3
	add r2, sp, #0xc
	lsl r0, r0, #1
	add r2, r2, r0
	sub r2, #2
	ldr r1, dword_801C830 // =0xd1b8 
loc_801C786:
	mov r0, #0xf
	and r0, r4
	lsl r0, r0, #1
	add r0, r0, r1
	strh r0, [r2]
	add r0, #1
	strh r0, [r2,#0x12]
	sub r2, #2
	lsr r4, r4, #4
	sub r3, #1
	bne loc_801C786
	ldr r0, [sp,#8]
	cmp r0, #0
	beq loc_801C7DE
	bl sub_8000C00
	mov r4, r0
	bl sub_8000C5C
	mov r3, r0
	mov r2, r6
	lsl r2, r2, #1
	add r2, #0xc
	add r2, sp
	ldr r1, dword_801C834 // =0xd1ce 
	strh r1, [r2]
	add r1, #1
	strh r1, [r2,#0x12]
	lsl r0, r0, #1
	add r2, r2, r0
	add r6, r6, r3
	add r6, #1
	ldr r1, dword_801C830 // =0xd1b8 
loc_801C7C8:
	mov r0, #0xf
	and r0, r4
	lsl r0, r0, #1
	add r0, r0, r1
	strh r0, [r2]
	add r0, #1
	strh r0, [r2,#0x12]
	sub r2, #2
	lsr r4, r4, #4
	sub r3, #1
	bne loc_801C7C8
loc_801C7DE:
	ldr r0, off_801C83C // =eStruct2035280
	ldr r0, [r0,#0x48] // (dword_20352C8 - 0x2035280)
	ldr r1, [sp]
	mov r3, #0
	bl sub_8012A38
	tst r1, r1
	beq loc_801C806
	mov r2, r6
	lsl r2, r2, #1
	add r2, #0xc
	add r2, sp
	ldr r1, dword_801C838 // =0xd1d2 
	strh r1, [r2]
	add r1, #1
	strh r1, [r2,#0x12]
	add r1, #1
	strh r1, [r2,#2]
	add r1, #1
	strh r1, [r2,#0x14]
loc_801C806:
	mov r0, r7
	// j
	add r0, #0
	// i
	mov r1, #0x12
	// tileBlock32x32
	mov r2, #3
	// tileIds
	add r3, sp, #0xc
	mov r4, #9
	mov r5, #2
	bl CopyBackgroundTiles
loc_801C818:
	add sp, sp, #0x30
	pop {r4-r7,pc}
	.balign 4, 0
off_801C81C: .word byte_203EBA0
dword_801C820: .word 0x600CB00
off_801C824: .word dword_86B7AE0
off_801C828: .word byte_801D944
off_801C82C: .word byte_801D954
dword_801C830: .word 0xD1B8
dword_801C834: .word 0xD1CE
dword_801C838: .word 0xD1D2
off_801C83C: .word eStruct2035280
	thumb_func_end sub_801C6EE

	thumb_local_start
sub_801C840:
	push {r7,lr}
	ldr r7, [r5,#0x48]
	bl GetBattleMode
	cmp r0, #6
	bne loc_801C85A
	mov r0, #oBattleState_AlivePlayerActors
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	add r7, r7, r0
	ldr r7, [r7]
	tst r7, r7
	beq locret_801C904
loc_801C85A:
	bl battle_isBattleOver
	tst r0, r0
	bne loc_801C886
	bl battle_isPaused
	bne loc_801C886
	ldrh r1, [r7,#0x24]
	ldrh r2, [r7,#0x26]
	lsr r2, r2, #2
	cmp r1, r2
	bgt loc_801C886
	ldrb r0, [r5,#6]
	add r0, #1
	strb r0, [r5,#6]
	cmp r0, #0x2d 
	blt loc_801C886
	mov r0, #0
	strb r0, [r5,#6]
	mov r0, #SOUND_LOW_HP
	bl PlaySoundEffect
loc_801C886:
	ldrb r0, [r5,#0x1c]
	cmp r0, #0
	beq loc_801C890
	ldrh r0, [r7,#0x24]
	strh r0, [r5,#0x24]
loc_801C890:
	ldrh r1, [r5,#0x26]
	mov r2, #0xff
	lsl r2, r2, #8
	add r2, #0xff
	cmp r1, r2
	beq loc_801C8A2
	ldrh r3, [r5,#0x26]
	strh r3, [r5,#0x24]
	b loc_801C8A6
loc_801C8A2:
	ldrh r1, [r7,#0x24]
	ldrh r3, [r5,#0x24]
loc_801C8A6:
	cmp r1, r3
	beq loc_801C8DE
	bgt loc_801C8C2
	mov r0, #2
	strb r0, [r5,#3]
	mov r2, r3
	sub r2, r2, r1
	asr r2, r2, #3
	add r2, #4
	sub r3, r3, r2
	cmp r3, r1
	bge loc_801C8D6
	mov r3, r1
	b loc_801C8D6
loc_801C8C2:
	mov r0, #1
	strb r0, [r5,#3]
	mov r2, r1
	sub r2, r2, r3
	asr r2, r2, #3
	add r2, #4
	add r3, r3, r2
	cmp r3, r1
	ble loc_801C8D6
	mov r3, r1
loc_801C8D6:
	strh r3, [r5,#0x24]
	mov r0, #0xf
	strb r0, [r5,#5]
	pop {r7,pc}
loc_801C8DE:
	ldrb r0, [r5,#5]
	cmp r0, #0
	beq loc_801C8EA
	sub r0, #1
	strb r0, [r5,#5]
	bne locret_801C904
loc_801C8EA:
	ldrh r0, [r5,#0x26]
	mov r2, #0xff
	lsl r2, r2, #8
	add r2, #0xff
	cmp r0, r2
	bne loc_801C900
	mov r0, #2
	ldrh r2, [r7,#0x26]
	lsr r2, r2, #2
	cmp r1, r2
	ble loc_801C902
loc_801C900:
	mov r0, #0
loc_801C902:
	strb r0, [r5,#3]
locret_801C904:
	pop {r7,pc}
	thumb_func_end sub_801C840

	thumb_local_start
sub_801C906:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	mov r6, sp
	ldrh r0, [r5,#0x24]
	bl sub_8000C00
	mov r2, r0
	bl sub_8000C5C
	lsl r0, r0, #2
	ldr r1, dword_801C980 // =0xaaaa 
	lsl r1, r0
	orr r2, r1
	push {r5}
	ldr r5, dword_801C97C // =0xd1a0 
	mov r1, r6
	add r1, #8
	mov r3, #6
loc_801C92A:
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #1
	add r0, r0, r5
	strh r0, [r6,r3]
	add r0, #1
	strh r0, [r1,r3]
	lsr r2, r2, #4
	sub r3, #2
	bpl loc_801C92A
	ldr r5, [sp]
	ldrb r0, [r5,#1]
	// j
	add r0, #1
	// i
	ldrb r1, [r5,#2]
	// tileBlock32x32
	mov r2, #3
	// tileIds
	mov r3, r6
	mov r4, #4
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r5}
	ldrb r0, [r5,#3]
	lsl r0, r0, #5
	ldr r3, off_801C96C // =off_801C970 
	ldr r1, [r3]
	add r0, r0, r1
	ldr r1, [r3,#0x4] // (off_801C974 - 0x801c970)
	ldr r2, [r3,#0x8] // (dword_801C978 - 0x801c970)
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_801C96C: .word off_801C970
off_801C970: .word dword_86E1C78
off_801C974: .word byte_3001B00
dword_801C978: .word 0x20
dword_801C97C: .word 0xD1A0
dword_801C980: .word 0xAAAA
	thumb_func_end sub_801C906

	thumb_local_start
sub_801C984:
	push {lr}
	mov r0, #0
	bl sub_802CE60
	cmp r0, #0
	beq loc_801C992
	mov r0, #1
loc_801C992:
	strb r0, [r5,#7]
	mov r0, #1
	bl sub_802CE60
	cmp r0, #0
	beq loc_801C9A0
	mov r0, #1
loc_801C9A0:
	strb r0, [r5,#9]
	pop {pc}
	thumb_func_end sub_801C984

	thumb_local_start
sub_801C9A4:
	push {lr}
	ldrb r1, [r5,#7]
	ldrb r0, [r5,#8]
	cmp r0, r1
	beq loc_801C9B6
	strb r1, [r5,#8]
	mov r0, #6
	bl sub_801C9C8
loc_801C9B6:
	ldrb r1, [r5,#9]
	ldrb r0, [r5,#0xa]
	cmp r0, r1
	beq locret_801C9C6
	strb r1, [r5,#0xa]
	mov r0, #0x1a
	bl sub_801C9C8
locret_801C9C6:
	pop {pc}
	thumb_func_end sub_801C9A4

	thumb_local_start
sub_801C9C8:
	push {r4,r5,lr}
	lsl r1, r1, #4
	ldr r3, off_801C9E0 // =byte_801D964 
	// tileIds
	add r3, r3, r1
	// i
	mov r1, #2
	// tileBlock32x32
	mov r2, #3
	mov r4, #4
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r4,r5,pc}
	.balign 4, 0
off_801C9E0: .word byte_801D964
	thumb_func_end sub_801C9C8

	thumb_local_start
sub_801C9E4:
	push {lr}
	ldr r0, dword_801C9FC // =0x8064403f 
	ldr r1, dword_801CA00 // =0xe370 
	mov r2, #0
	mov r3, #6
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr r0, dword_801CA04 // =0x84803f 
	ldr r1, dword_801CA08 // =0xe378 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {pc}
	.balign 4, 0
dword_801C9FC: .word 0x8064403F
dword_801CA00: .word 0xE370
dword_801CA04: .word 0x84803F
dword_801CA08: .word 0xE378
	thumb_func_end sub_801C9E4

	thumb_local_start
sub_801CA0C:
	push {lr}
	ldrb r0, [r5,#0xb]
	sub r0, #1
	strb r0, [r5,#0xb]
	bne locret_801CA26
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BED6
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DACC
locret_801CA26:
	pop {pc}
	thumb_func_end sub_801CA0C

	thumb_local_start
sub_801CA28:
	ldrb r0, [r5]
	add r0, #1
	mov r1, #0x3f 
	and r0, r1
	strb r0, [r5]
	mov pc, lr
	thumb_func_end sub_801CA28

	thumb_local_start
sub_801CA34:
	push {r4-r6,lr}
	ldrb r6, [r5,#0xb]
	ldr r0, off_801CA78 // =dword_801CA7C 
	ldrb r6, [r0,r6]
	ldrb r0, [r5]
	mov r1, #0x1f
	and r1, r0
	bne locret_801CA72
	cmp r0, #0x20 
	bge loc_801CA5E
	mov r0, #0x16
	// j
	sub r0, r0, r6
	// i
	mov r1, #4
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801CA74 // =byte_801D984
	mov r4, #8
	add r4, r4, r6
	mov r5, #2
	bl CopyBackgroundTiles
	b locret_801CA72
loc_801CA5E:
	mov r0, #0x16
	sub r0, r0, r6
	mov r1, #4
	mov r2, #3
	mov r3, #0
	mov r4, #8
	add r4, r4, r6
	mov r5, #2
	bl call_sub_3005EBA
locret_801CA72:
	pop {r4-r6,pc}
	.balign 4, 0
off_801CA74: .word byte_801D984
off_801CA78: .word dword_801CA7C
dword_801CA7C: .word 0x30200
	thumb_func_end sub_801CA34

	thumb_local_start
sub_801CA80:
	push {r4-r7,lr}
	sub sp, sp, #0x24
	// i
	mov r1, #0
	mov r6, r5
	add r6, #0x28 
loc_801CA8A:
	mov r7, sp
	ldrh r2, [r6]
	cmp r2, #0xff
	beq loc_801CAD4
	ldr r0, dword_801CAD8 // =0xd1da 
	mov r3, #9
	mul r3, r1
	add r0, r0, r3
	add r5, r0, #1
	mov r3, #0
loc_801CA9E:
	strh r0, [r7,r3]
	add r0, #2
	add r3, #2
	cmp r3, #0x12
	bne loc_801CA9E
	add r7, #0x12
	mov r0, r5
	mov r3, #0
loc_801CAAE:
	strh r0, [r7,r3]
	add r0, #2
	add r3, #2
	cmp r3, #0x12
	bne loc_801CAAE
	mov r0, #0x1e
	// j
	sub r0, r0, r2
	// tileBlock32x32
	mov r2, #0
	// tileIds
	mov r3, sp
	mov r4, #9
	mov r5, #2
	push {r1}
	bl CopyBackgroundTiles
	pop {r1}
	add r1, #2
	add r6, #2
	cmp r1, #8
	bne loc_801CA8A
loc_801CAD4:
	add sp, sp, #0x24
	pop {r4-r7,pc}
	.balign 4, 0
dword_801CAD8: .word 0xD1DA
	thumb_func_end sub_801CA80

	thumb_local_start
sub_801CADC:
	push {lr}
	ldrb r0, [r5,#0x17]
	cmp r0, #0xff
	bne loc_801CAF0
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	mov r1, #0x29 
	bl GetBattleNaviStatsByte
loc_801CAF0:
	ldrb r1, [r5,#0x14]
	cmp r1, #0
	beq loc_801CB10
	sub r1, #1
	strb r1, [r5,#0x14]
	bne loc_801CB02
	strb r0, [r5,#0x15]
	cmp r0, #0
	beq loc_801CB2C
loc_801CB02:
	mov r2, #2
	tst r1, r2
	beq loc_801CB22
	ldrb r0, [r5,#0x1f]
	cmp r0, #0
	bne loc_801CB26
	b loc_801CB2C
loc_801CB10:
	ldrb r1, [r5,#0x15]
	cmp r0, r1
	beq loc_801CB1E
	cmp r1, #0xff
	beq loc_801CB1E
	mov r1, #0xa
	strb r1, [r5,#0x14]
loc_801CB1E:
	cmp r0, #0
	beq loc_801CB2C
loc_801CB22:
	cmp r0, #0
	beq loc_801CB2C
loc_801CB26:
	bl sub_801CC34
	b loc_801CB30
loc_801CB2C:
	bl sub_801CB38
loc_801CB30:
	strb r0, [r5,#0x15]
	bl sub_801CC94
	pop {pc}
	thumb_func_end sub_801CADC

	thumb_local_start
sub_801CB38:
	push {r0,r4,r6,r7,lr}
	mov r7, #0
	ldrb r0, [r5,#0x13]
	cmp r0, #0xff
	bne loc_801CB54
	mov r0, #0
	strb r0, [r5,#0x13]
	bl sub_801E6A8
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	strb r1, [r5,#0xe]
	strb r1, [r5,#0xd]
	b loc_801CBA2
loc_801CB54:
	mov r1, #0x4c 
	ldrb r0, [r5,r1]
	cmp r0, #0
	beq loc_801CB60
	ldrb r1, [r5,#0xe]
	b loc_801CBA2
loc_801CB60:
	ldrb r0, [r5,#0x17]
	cmp r0, #0
	beq loc_801CB72
	ldrb r0, [r5,#0x16]
	cmp r0, #0
	bne loc_801CB72
	bl sub_801E6A8
	b loc_801CB76
loc_801CB72:
	bl sub_801E69C
loc_801CB76:
	ldrb r2, [r5,#0x14]
	cmp r2, #0
	beq loc_801CB80
	strb r0, [r5,#0x10]
	b loc_801CBA2
loc_801CB80:
	ldrb r2, [r5,#0x10]
	cmp r0, r2
	bne loc_801CB94
	ldrb r2, [r5,#0xe]
	cmp r1, r2
	beq loc_801CBA2
	ldrb r3, [r5,#0xe]
	strb r3, [r5,#0xd]
	strb r1, [r5,#0xe]
	b loc_801CBA2
loc_801CB94:
	strb r2, [r5,#0x11]
	ldrb r3, [r5,#0xe]
	strb r3, [r5,#0xd]
	strb r0, [r5,#0x10]
	strb r1, [r5,#0xe]
	mov r1, #0xc
	strb r1, [r5,#0x13]
loc_801CBA2:
	cmp r0, #5
	bge loc_801CBBE
	cmp r0, #3
	beq loc_801CBBE
	ldrb r1, [r5,#0x13]
	mov r7, r1
	cmp r1, #0
	beq loc_801CBBE
	sub r2, r1, #1
	strb r2, [r5,#0x13]
	mov r2, #2
	and r2, r1
	beq loc_801CBBE
	ldrb r0, [r5,#0x11]
loc_801CBBE:
	mov r4, r0
	mov r6, r1
	lsl r0, r0, #2
	ldr r1, off_801CD04 // =off_801CD08 
	ldr r0, [r1,r0]
	ldr r1, dword_801CD68 // =0x6017680 
	ldr r2, off_801CD6C // =0x100 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	push {r0-r3}
	bl sub_801D814
	tst r0, r0
	pop {r0-r3}
	bne loc_801CBEC
	ldr r0, off_801CD64 // =dword_872D914 
	ldr r1, dword_801CD68 // =0x6017680 
	ldr r2, off_801CD6C // =0x100 
	add r1, r1, r2
	ldr r2, off_801CD70 // =0x80 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	b loc_801CC0A
loc_801CBEC:
	ldrb r1, [r5,#0xe]
	mov r2, #2
	and r2, r7
	beq loc_801CBF6
	ldrb r1, [r5,#0xd]
loc_801CBF6:
	mov r0, #0xa
	sub r0, r0, r1
	mov r1, #0x80
	mul r0, r1
	ldr r1, off_801CDC4 // =dword_872E994 
	add r0, r0, r1
	ldr r1, dword_801CDC8 // =0x6017780 
	mov r2, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
loc_801CC0A:
	ldrb r1, [r5,#0x10]
	cmp r1, #3
	bne loc_801CC24
	ldrb r1, [r5,#0x13]
	cmp r1, #0
	beq loc_801CC24
	sub r2, r1, #1
	strb r2, [r5,#0x13]
	mov r2, #2
	and r2, r1
	beq loc_801CC24
	ldr r0, off_801CD7C // =byte_801CD80
	b loc_801CC2A
loc_801CC24:
	lsl r0, r4, #5
	ldr r1, off_801CD74 // =dword_872F114 
	add r0, r0, r1
loc_801CC2A:
	ldr r1, off_801CD78 // =byte_30016D0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	pop {r0,r4,r6,r7,pc}
	thumb_func_end sub_801CB38

	thumb_local_start
sub_801CC34:
	push {r0,r4,r7,lr}
	sub sp, sp, #0x30
	mov r2, r0
	sub r0, #1
	ldr r1, off_801CDD8 // =byte_801CDDC
	ldrb r0, [r1,r0]
	str r0, [sp]
	ldrb r1, [r5,#0x15]
	cmp r2, r1
	beq loc_801CC64
	ldr r2, off_801CD6C // =0x100 
	mul r0, r2
	ldr r1, off_801CDCC // =byte_872D094
	add r0, r0, r1
	ldr r1, dword_801CD68 // =0x6017680 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	ldr r0, off_801CDD4 // =byte_872D014 
	add r1, r1, r2
	mov r2, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #0xff
	strb r0, [r5,#0x10]
loc_801CC64:
	bl sub_801E6A8
	mov r1, #0
	ldrb r2, [r5,#0x17]
	cmp r2, #0xff
	bne loc_801CC76
	cmp r0, #3
	bne loc_801CC76
	mov r1, #1
loc_801CC76:
	ldrb r0, [r5,#0x10]
	strb r1, [r5,#0x10]
	ldr r0, [sp]
	mov r2, #0x40 
	mul r0, r2
	ldr r2, off_801CDD0 // =dword_872D694 
	add r0, r0, r2
	mov r2, #0x20 
	mul r1, r2
	add r0, r0, r1
	ldr r1, off_801CD78 // =byte_30016D0 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add sp, sp, #0x30
	pop {r0,r4,r7,pc}
	thumb_func_end sub_801CC34

	thumb_local_start
sub_801CC94:
	push {lr}
	ldrb r0, [r5,#0x1d]
	cmp r0, #0
	bne loc_801CCDE
	ldrh r1, [r5,#0x38]
	sub r1, #1
	bne loc_801CCDA
	ldrb r0, [r5,#0x15]
	cmp r0, #0
	beq loc_801CCB0
	ldrb r0, [r5,#0x17]
	cmp r0, #0xff
	beq loc_801CCB6
	b loc_801CCD8
loc_801CCB0:
	ldrb r0, [r5,#0x1e]
	cmp r0, #0
	bne loc_801CCC8
loc_801CCB6:
	push {r5}
	bl sub_80103EC
	mov r5, r0
	bl sub_800FE52
	pop {r5}
	cmp r0, #0
	beq loc_801CCD8
loc_801CCC8:
	bl GetPositiveSignedRNGSecondary
	mov r1, #1
	and r1, r0
	add r1, #1
	strb r1, [r5,#0x1d]
	mov r0, #0xc
	strb r0, [r5,#0xf]
loc_801CCD8:
	mov r1, #0x14
loc_801CCDA:
	strh r1, [r5,#0x38]
	b locret_801CD00
loc_801CCDE:
	ldrb r1, [r5,#0xf]
	sub r2, r1, #1
	strb r2, [r5,#0xf]
	bne loc_801CCF0
	ldrb r0, [r5,#0x1d]
	sub r0, #1
	strb r0, [r5,#0x1d]
	mov r0, #0xc
	strb r0, [r5,#0xf]
loc_801CCF0:
	mov r0, #2
	tst r0, r1
	beq locret_801CD00
	ldr r0, off_801CDA0 // =byte_801CDA4
	ldr r1, off_801CD78 // =byte_30016D0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
locret_801CD00:
	pop {pc}
	.balign 4, 0
off_801CD04: .word off_801CD08
off_801CD08: .word dword_872D814
	.word dword_872D994
	.word dword_872DB14
	.word byte_872DC94
	.word dword_872DE14
	.word byte_872DF94
	.word dword_872E094
	.word dword_872E194
	.word dword_872E294
	.word dword_872E394
	.word dword_872E494
	.word dword_872E594
	.word dword_872E694
	.word dword_872E794
	.word dword_872E894
	.word byte_872DF94
	.word dword_872E094
	.word dword_872E194
	.word dword_872E294
	.word dword_872E394
	.word dword_872EF14
	.word dword_872EF14
	.word byte_872F014
off_801CD64: .word dword_872D914
dword_801CD68: .word 0x6017680
off_801CD6C: .word 0x100
off_801CD70: .word 0x80
off_801CD74: .word dword_872F114
off_801CD78: .word byte_30016D0
off_801CD7C: .word byte_801CD80
byte_801CD80: .byte 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF
	.byte 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF
	.byte 0x7F, 0xFF, 0x7F, 0xFF, 0x7F
off_801CDA0: .word byte_801CDA4
byte_801CDA4: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_801CDC4: .word dword_872E994
dword_801CDC8: .word 0x6017780
off_801CDCC: .word byte_872D094
off_801CDD0: .word dword_872D694
off_801CDD4: .word byte_872D014
off_801CDD8: .word byte_801CDDC
byte_801CDDC: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x0, 0x80, 0x52, 0x3
	.byte 0x2
	thumb_func_end sub_801CC94

	thumb_local_start
sub_801CDEC:
	push {r4-r6,lr}
	ldrb r0, [r5,#0xf]
	cmp r0, #6
	beq locret_801CE14
	cmp r0, #5
	beq locret_801CE14
	ldrb r4, [r5,#0x12]
	lsl r4, r4, #0x10
	mov r2, #0
	mov r3, #0
	ldr r0, dword_801CE18 // =0x80004012 
	add r0, r0, r4
	ldr r1, dword_801CE1C // =0xcbb4 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr r0, dword_801CE20 // =0x40200012 
	add r0, r0, r4
	ldr r1, dword_801CE24 // =0xcbbc 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801CE14:
	pop {r4-r6,pc}
	.balign 4, 0
dword_801CE18: .word 0x80004012
dword_801CE1C: .word 0xCBB4
dword_801CE20: .word 0x40200012
dword_801CE24: .word 0xCBBC
	thumb_func_end sub_801CDEC

	thumb_local_start
sub_801CE28:
	push {r5,lr}
	ldr r5, off_801CE54 // =byte_2036840 
	ldrb r0, [r5,#0x7] // (byte_2036847 - 0x2036840)
	add r0, #1
	cmp r0, #5
	bne loc_801CE44
	ldrb r1, [r5]
	cmp r1, #4
	bne loc_801CE44
	ldrb r1, [r5,#0x8] // (byte_2036848 - 0x2036840)
	cmp r1, #2
	beq loc_801CE46
	cmp r1, #4
	beq loc_801CE46
loc_801CE44:
	strb r0, [r5,#0x7] // (byte_2036847 - 0x2036840)
loc_801CE46:
	ldr r1, off_801CE58 // =off_801CE5C 
	ldrb r0, [r5]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r5,pc}
	.balign 4, 0
off_801CE54: .word byte_2036840
off_801CE58: .word off_801CE5C
off_801CE5C: .word sub_801CE6C+1
	.word sub_801CE92+1
	.word sub_801CED2+1
	.word sub_801CEFA+1
	thumb_func_end sub_801CE28

	thumb_local_start
sub_801CE6C:
	push {lr}
	ldrb r0, [r5,#7]
	mov r1, #0x20 
	mul r0, r1
	mov r2, #0xe0
	sub r2, r2, r0
	ldrb r3, [r5,#6]
	mov r0, #0
	mov r1, #0x40 
	bl sub_802FE7A
	ldrb r0, [r5,#7]
	cmp r0, #5
	blt locret_801CE90
	mov r0, #4
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#7]
locret_801CE90:
	pop {pc}
	thumb_func_end sub_801CE6C

	thumb_local_start
sub_801CE92:
	push {lr}
	ldrb r0, [r5,#7]
	cmp r0, #1
	beq loc_801CEB2
	cmp r0, #2
	beq loc_801CEB6
	cmp r0, #3
	beq loc_801CEAE
	cmp r0, #0x2e 
	beq loc_801CEB6
	cmp r0, #0x2f 
	beq loc_801CEB2
	cmp r0, #0x30 
	bne loc_801CEC2
loc_801CEAE:
	mov r2, #0x40 
	b loc_801CEB8
loc_801CEB2:
	mov r2, #0x34 
	b loc_801CEB8
loc_801CEB6:
	mov r2, #0x38 
loc_801CEB8:
	mov r0, #0
	mov r1, #0x40 
	ldrb r3, [r5,#6]
	bl sub_802FE7A
loc_801CEC2:
	ldrb r0, [r5,#7]
	cmp r0, #0x30 
	blt locret_801CED0
	mov r0, #8
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#7]
locret_801CED0:
	pop {pc}
	thumb_func_end sub_801CE92

	thumb_local_start
sub_801CED2:
	push {lr}
	ldrb r0, [r5,#7]
	mov r1, #0x20 
	mul r0, r1
	mov r2, #0x40 
	add r2, r2, r0
	ldrb r3, [r5,#6]
	mov r0, #0
	mov r1, #0x40 
	bl sub_802FE7A
	ldrb r0, [r5,#7]
	cmp r0, #5
	blt locret_801CEF8
	ldrb r0, [r5,#6]
	bl sub_802FE6A
	mov r0, #0xc
	strb r0, [r5]
locret_801CEF8:
	pop {pc}
	thumb_func_end sub_801CED2

	thumb_local_start
sub_801CEFA:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0xf
	bl sub_801BED6
	mov r0, #1
	lsl r0, r0, #0xf
	bl sub_801DACC
	pop {pc}
	thumb_func_end sub_801CEFA

	thumb_local_start
sub_801CF0E:
	push {r7,lr}
	ldr r7, off_801CF20 // =byte_2036840 
	ldrb r0, [r7,#0x8] // (byte_2036848 - 0x2036840)
	lsl r0, r0, #2
	ldr r1, off_801CF24 // =off_801CF28 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {r7,pc}
	.balign 4, 0
off_801CF20: .word byte_2036840
off_801CF24: .word off_801CF28
off_801CF28: .word sub_801CF3C+1
	.word sub_801CF3C+1
	.word sub_801CF3C+1
	.word sub_801CF9E+1
	.word sub_801D048+1
	thumb_func_end sub_801CF0E

// () -> void
	thumb_local_start
sub_801CF3C:
	// :param r7:
	push {r4-r7,lr}
	ldrb r0, [r7,#2]
	lsl r0, r0, #0x10
	ldrb r1, [r7,#3]
	add r1, r1, r0
	ldr r0, dword_801CF90 // =0x80004100 
	add r0, r0, r1
	ldrb r1, [r7,#6]
	lsl r1, r1, #0x19
	orr r0, r1
	ldr r1, dword_801CF94 // =0xb370 
	mov r2, #0
	mov r3, #0
	mov r5, #0x20 
	lsl r5, r5, #0x10
	mov r4, #5
loc_801CF5C:
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	add r0, r0, r5
	add r1, #8
	sub r4, #1
	bne loc_801CF5C
	ldrb r0, [r7,#8]
	cmp r0, #1
	bne locret_801CF8E
	ldrb r0, [r7,#4]
	lsl r0, r0, #0x10
	ldrb r1, [r7,#5]
	add r1, r1, r0
	ldr r0, dword_801CF98 // =0x40000100 
	add r0, r0, r1
	ldrb r1, [r7,#6]
	lsl r1, r1, #0x19
	orr r0, r1
	ldr r1, word_801CF9C // =0xb398
	mov r2, #0
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801CF8E:
	pop {r4-r7,pc}
	.balign 4, 0
dword_801CF90: .word 0x80004100
dword_801CF94: .word 0xB370
dword_801CF98: .word 0x40000100
word_801CF9C: .hword 0xB398
	thumb_func_end sub_801CF3C

	thumb_local_start
sub_801CF9E:
	push {r4-r6,lr}
	ldrb r0, [r7,#2]
	lsl r0, r0, #0x10
	ldrb r1, [r7,#3]
	add r1, r1, r0
	ldr r0, dword_801D028 // =0x8100 
	add r0, r0, r1
	ldrb r1, [r7,#6]
	lsl r1, r1, #0x19
	orr r0, r1
	ldr r1, dword_801D02C // =0xb370 
	mov r2, #0
	mov r3, #6
	mov r5, #8
	lsl r5, r5, #0x10
	ldrb r4, [r7,#9]
loc_801CFBE:
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	add r0, r0, r5
	add r1, #2
	sub r4, #1
	bne loc_801CFBE
	ldrb r1, [r7,#0xa]
	cmp r1, #0
	beq locret_801D026
	mov r4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	ldr r6, dword_801D028 // =0x8100 
	sub r0, r0, r6
	sub r0, r0, r4
	ldr r6, dword_801D030 // =0x80004100 
	add r0, r0, r6
	ldr r1, dword_801D034 // =0xb380 
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
	ldrb r1, [r7,#0xb]
	cmp r1, #0
	beq loc_801D012
	mov r4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	sub r0, r0, r4
	ldr r1, dword_801D038 // =0xb388 
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
loc_801D012:
	ldrb r1, [r7,#0xc]
	cmp r1, #0
	beq locret_801D026
	ldr r1, dword_801D040 // =0xc000c000 
	bic r0, r1
	ldr r1, dword_801D03C // =0x40000100 
	orr r0, r1
	ldr r1, dword_801D044 // =0xb390 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801D026:
	pop {r4-r6,pc}
	.balign 4, 0
dword_801D028: .word 0x8100
dword_801D02C: .word 0xB370
dword_801D030: .word 0x80004100
dword_801D034: .word 0xB380
dword_801D038: .word 0xB388
dword_801D03C: .word 0x40000100
dword_801D040: .word 0xC000C000
dword_801D044: .word 0xB390
	thumb_func_end sub_801CF9E

	thumb_local_start
sub_801D048:
	push {r4-r7,lr}
	bl sub_801CF3C // () -> void
	ldrb r0, [r7]
	cmp r0, #8
	blt loc_801D070
	ldrb r0, [r7,#0xe]
	cmp r0, #0
	bne locret_801D128
	mov r0, #1
	strb r0, [r7,#0xe]
	mov r0, #9
	mov r1, #5
	mov r2, #3
	mov r3, #0
	mov r4, #0xc
	mov r5, #2
	bl call_sub_3005EBA
	b locret_801D128
loc_801D070:
	push {r4-r7}
	ldr r0, off_801D1C4 // =TextScript86F0374 
	mov r1, #2
	ldr r2, off_801D1C8 // =byte_203C4E0 
	ldr r3, dword_801D1CC // =0x6009360 
	mov r4, #2
	mov r5, #1
	ldr r6, off_801D1D0 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	// j
	mov r0, #0xe
	// i
	mov r1, #5
	// tileIds
	ldr r3, off_801D18C // =byte_801D190
	// tileBlock32x32
	mov r2, #3
	mov r4, #2
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r4-r7}
	ldrh r0, [r7,#0xc]
	bl sub_801D12A
	ldr r7, off_801D1D4 // =byte_2036840 
	ldrh r0, [r7,#0xc] // (word_203684C - 0x2036840)
	bl sub_8000C5C
	cmp r0, #4
	beq loc_801D0FE
	cmp r0, #3
	beq loc_801D0DA
	cmp r0, #2
	beq loc_801D0C8
	ldr r1, [sp,#4]
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r0, #0
	str r0, [sp,#4]
	ldr r1, [sp,#0xc]
	lsr r1, r1, #0x10
	str r1, [sp,#8]
	mov r0, #0
	str r0, [sp,#0xc]
	b loc_801D0FE
loc_801D0C8:
	ldr r2, [sp,#4]
	str r2, [sp]
	mov r0, #0
	str r0, [sp,#4]
	ldr r2, [sp,#0xc]
	str r2, [sp,#8]
	mov r0, #0
	str r0, [sp,#0xc]
	b loc_801D0FE
loc_801D0DA:
	ldr r1, [sp]
	ldr r2, [sp,#4]
	mov r0, r2
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	orr r1, r2
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp,#4]
	ldr r1, [sp,#8]
	ldr r2, [sp,#0xc]
	mov r0, r2
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	orr r1, r2
	str r1, [sp,#8]
	lsr r0, r0, #0x10
	str r0, [sp,#0xc]
loc_801D0FE:
	ldrh r0, [r7,#0xa] // (word_203684A - 0x2036840)
	bl sub_801D12A
	// j
	mov r0, #9
	// i
	mov r1, #5
	// tileBlock32x32
	mov r2, #3
	// tileIds
	mov r3, sp
	mov r4, #4
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r0-r3}
	// j
	mov r0, #0x11
	// i
	mov r1, #5
	// tileBlock32x32
	mov r2, #3
	// tileIds
	mov r3, sp
	mov r4, #4
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r0-r3}
locret_801D128:
	pop {r4-r7,pc}
	thumb_func_end sub_801D048

	thumb_local_start
sub_801D12A:
	mov r4, r0
	mov r7, lr
	bl sub_8000C5C
	mov r2, r4
	mov r6, #4
	sub r6, r6, r0
	ldr r1, dword_801D198 // =0xd1b9 
	mov r3, #2
loc_801D13C:
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r4, r0, #0x10
	lsr r2, r2, #4
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #1
	add r0, r0, r1
	orr r0, r4
	push {r0}
	lsr r2, r2, #4
	sub r3, #1
	bne loc_801D13C
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, dword_801D19C // =0x10001 
	sub r0, r0, r2
	sub r1, r1, r2
	push {r0,r1}
	lsl r6, r6, #3
	ldr r3, off_801D1A0 // =byte_801D1A4
	ldr r2, [r3,r6]
	add r6, #4
	ldr r3, [r3,r6]
	mov r6, sp
	mov r1, #0
loc_801D174:
	ldr r0, [r6,r1]
	and r0, r2
	str r0, [r6,r1]
	add r1, #4
	ldr r0, [r6,r1]
	and r0, r3
	str r0, [r6,r1]
	add r1, #4
	cmp r1, #0x10
	bne loc_801D174
	mov pc, r7
	.balign 4, 0
off_801D18C: .word byte_801D190
byte_801D190: .byte 0x9B, 0xD0, 0x9D, 0xD0, 0x9C, 0xD0, 0x9E, 0xD0
dword_801D198: .word 0xD1B9
dword_801D19C: .word 0x10001
off_801D1A0: .word byte_801D1A4
byte_801D1A4: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xFF, 0xFF
off_801D1C4: .word TextScript86F0374
off_801D1C8: .word byte_203C4E0
dword_801D1CC: .word 0x6009360
off_801D1D0: .word dword_86B7AE0
off_801D1D4: .word byte_2036840
	thumb_func_end sub_801D12A

	thumb_local_start
sub_801D1D8:
	push {lr}
	ldr r3, off_801D27C // =unk_2036850 
	ldrb r0, [r3,#0x7] // (byte_2036857 - 0x2036850)
	sub r0, #1
	strb r0, [r3,#0x7] // (byte_2036857 - 0x2036850)
	bne locret_801D1F4
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801BED6
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801DACC
locret_801D1F4:
	pop {pc}
	thumb_func_end sub_801D1D8

	thumb_local_start
sub_801D1F6:
	push {r4-r7,lr}
	ldr r7, off_801D27C // =unk_2036850 
	ldrb r0, [r7,#0x2] // (word_2036852 - 0x2036850)
	lsl r0, r0, #0x10
	ldrb r1, [r7,#0x3] // (word_2036852+1 - 0x2036850)
	add r1, r1, r0
	ldr r0, dword_801D280 // =0x8000 
	add r0, r0, r1
	ldr r1, dword_801D284 // =0xb394 
	mov r2, #0
	mov r3, #6
	mov r5, #8
	lsl r5, r5, #0x10
	ldrb r4, [r7,#0x9] // (byte_2036859 - 0x2036850)
loc_801D212:
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	add r0, r0, r5
	add r1, #2
	sub r4, #1
	bne loc_801D212
	ldrb r1, [r7,#0xa] // (byte_203685A - 0x2036850)
	cmp r1, #0
	beq locret_801D27A
	mov r4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	ldr r6, dword_801D280 // =0x8000 
	sub r0, r0, r6
	sub r0, r0, r4
	ldr r6, dword_801D288 // =0x80004000 
	add r0, r0, r6
	ldr r1, dword_801D28C // =0xb3a4 
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
	ldrb r1, [r7,#0xb] // (byte_203685B - 0x2036850)
	cmp r1, #0
	beq loc_801D266
	mov r4, #4
	sub r4, r4, r1
	lsl r4, r4, #0x13
	sub r0, r0, r4
	ldr r1, dword_801D290 // =0xb3ac 
	mov r6, r0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r6
	mov r5, #0x20 
	lsl r5, r5, #0x10
	add r0, r0, r5
loc_801D266:
	ldrb r1, [r7,#0xc] // (byte_203685C - 0x2036850)
	cmp r1, #0
	beq locret_801D27A
	ldr r1, dword_801D298 // =0xc000c000 
	bic r0, r1
	ldr r1, dword_801D294 // =0x40000000 
	orr r0, r1
	ldr r1, dword_801D29C // =0xb390 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801D27A:
	pop {r4-r7,pc}
	.balign 4, 0
off_801D27C: .word unk_2036850
dword_801D280: .word 0x8000
dword_801D284: .word 0xB394
dword_801D288: .word 0x80004000
dword_801D28C: .word 0xB3A4
dword_801D290: .word 0xB3AC
dword_801D294: .word 0x40000000
dword_801D298: .word 0xC000C000
dword_801D29C: .word 0xB390
	thumb_func_end sub_801D1F6

	thumb_local_start
sub_801D2A0:
	push {lr}
	pop {pc}
	thumb_func_end sub_801D2A0

	thumb_local_start
sub_801D2A4:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	push {r5}
	// j
	mov r0, #1
	// i
	mov r1, #0x12
	// tileBlock32x32
	mov r2, #0
	// tileIds
	ldr r3, off_801D340 // =byte_801D9B4
	mov r4, #0x1c
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r5}
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl sub_802E066
	str r0, [sp]
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl sub_802E440
	mov r1, #0
	mov r2, #0
	ldr r3, [sp]
	bl sub_801D344
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl sub_802E44A
	ldr r1, dword_801D330 // =0x280
	ldr r2, dword_801D334 // =0x200
	ldr r3, [sp]
	bl sub_801D344
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl sub_802E454
	ldr r1, dword_801D338 // =0x500
	ldr r2, dword_801D33C // =0x400
	ldr r3, [sp]
	bl sub_801D344
	ldrb r0, [r5,#0x1a]
	cmp r0, #0
	beq loc_801D32A
	ldrh r0, [r5,#0x30]
	add r0, #1
	strh r0, [r5,#0x30]
	mov r1, #0x20 
	and r0, r1
	beq loc_801D32A
	push {r5}
	ldrb r0, [r5,#0x1a]
	sub r0, #1
	mov r1, #0xa
	mul r0, r1
	add r0, #1
	mov r1, #0x12
	mov r2, #0
	mov r3, #0
	mov r4, #9
	mov r5, #2
	bl call_sub_3005EBA
	pop {r5}
loc_801D32A:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
	.balign 4, 0
dword_801D330: .word 0x280
dword_801D334: .word 0x200
dword_801D338: .word 0x500
dword_801D33C: .word 0x400
off_801D340: .word byte_801D9B4
	thumb_func_end sub_801D2A4

	thumb_local_start
sub_801D344:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	ldr r1, dword_801D3E4 // =0x1ff 
	cmp r0, r1
	bne loc_801D36C
	ldr r1, dword_801D3D0 // =0x600c940 
	ldr r2, [sp,#4]
	add r1, r1, r2
	mov r3, #0xa
	bl sub_801D3F8
	ldr r0, off_801D3F4 // =TextScript86F0300 
	mov r1, #0x1c
	b loc_801D3A2
loc_801D36C:
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r3, [r0,#7]
	cmp r3, #2
	ble loc_801D378
	mov r3, #0
loc_801D378:
	lsl r3, r3, #2
	ldr r0, off_801D3BC // =off_801D3C0 
	ldr r0, [r0,r3]
	ldr r1, off_801D3D4 // =off_801D3D8 
	ldr r1, [r1,r3]
	ldr r2, [sp,#0xc]
	cmp r2, r1
	bge loc_801D390
	mov r1, #0x20 
	mov r2, #0x14
	mul r1, r2
	add r0, r0, r1
loc_801D390:
	ldr r1, dword_801D3D0 // =0x600c940 
	ldr r2, [sp,#4]
	add r1, r1, r2
	ldr r2, off_801D3CC // =0x280 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	ldr r0, [sp]
	bl sub_8027D10
loc_801D3A2:
	ldr r2, off_801D3E8 // =unk_203A380 
	ldr r3, dword_801D3EC // =0x600d0c0 
	ldr r4, [sp,#8]
	add r2, r2, r4
	add r3, r3, r4
	mov r4, #8
	mov r5, #1
	ldr r6, off_801D3F0 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0
off_801D3BC: .word off_801D3C0
off_801D3C0: .word dword_86E9A2C
	.word dword_86E9F2C
	.word dword_86EA42C
off_801D3CC: .word 0x280
dword_801D3D0: .word 0x600C940
off_801D3D4: .word off_801D3D8
off_801D3D8: .word 0x1500
	.word 0x2A00
	.word 0x4000
dword_801D3E4: .word 0x1FF
off_801D3E8: .word unk_203A380
dword_801D3EC: .word 0x600D0C0
off_801D3F0: .word dword_86B7AE0
off_801D3F4: .word TextScript86F0300
	thumb_func_end sub_801D344

	thumb_local_start
sub_801D3F8:
	push {r0-r4,lr}
	ldr r0, off_801D40C // =byte_801D410
	mov r4, r3
	mov r2, #0x40 
loc_801D400:
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add r1, r1, r2
	sub r4, #1
	bne loc_801D400
	pop {r0-r4,pc}
	.balign 4, 0
off_801D40C: .word byte_801D410
byte_801D410: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_801D3F8

	thumb_local_start
sub_801D450:
	push {lr}
	bl battle_isPaused
	tst r0, r0
	bne locret_801D478
	bl battle_isTimeStop
	bne locret_801D478
	ldrh r0, [r5,#0x34]
	add r0, #1
	cmp r0, #6
	blt loc_801D476
	ldrh r1, [r5,#0x36]
	add r1, #1
	cmp r1, #6
	blt loc_801D472
	mov r1, #0
loc_801D472:
	strh r1, [r5,#0x36]
	mov r0, #0
loc_801D476:
	strh r0, [r5,#0x34]
locret_801D478:
	pop {pc}
	thumb_func_end sub_801D450

	thumb_local_start
sub_801D47A:
	push {r4-r6,lr}
	ldrh r0, [r5,#0x36]
	mov r1, #1
	and r1, r0
	ldr r2, off_801D508 // =0x40 
	mul r1, r2
	ldr r0, off_801D500 // =dword_86E98CC 
	add r0, r0, r1
	ldr r1, dword_801D504 // =0x6017900 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	bl sub_802E070
	ldrh r1, [r0,#0x3e]
	mov r4, #0x50 
	mul r4, r1
	lsl r4, r4, #0x10
	ldrh r1, [r5,#0x36]
	cmp r1, #3
	blt loc_801D4AA
	sub r1, #3
loc_801D4AA:
	ldr r0, off_801D50C // =dword_801D510
	ldrb r0, [r0,r1]
	mov r2, #3
	mov r3, #0
	ldr r1, dword_801D4F0 // =0x80044080 
	add r0, r0, r1
	add r0, r0, r4
	mov r1, #0x14
	lsl r1, r1, #0x10
	add r0, r0, r1
	ldr r1, dword_801D4F4 // =0xc3c0 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r2, #3
	mov r3, #0
	ldr r0, dword_801D4F8 // =0x8090 
	add r0, r0, r4
	ldr r1, dword_801D4FC // =0xc3c8 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r2, #3
	mov r3, #0
	ldr r0, dword_801D4F8 // =0x8090 
	add r0, r0, r4
	mov r1, #0x48 
	lsl r1, r1, #0x10
	add r0, r0, r1
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r0, r1
	ldr r1, dword_801D4FC // =0xc3c8 
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4-r6,pc}
	.balign 4, 0
dword_801D4F0: .word 0x80044080
dword_801D4F4: .word 0xC3C0
dword_801D4F8: .word 0x8090
dword_801D4FC: .word 0xC3C8
off_801D500: .word dword_86E98CC
dword_801D504: .word 0x6017900
off_801D508: .word 0x40
off_801D50C: .word dword_801D510
dword_801D510: .word 0x10300
	thumb_func_end sub_801D47A

	thumb_local_start
sub_801D514:
	push {lr}
	ldrh r0, [r5,#0x32]
	sub r0, #1
	strh r0, [r5,#0x32]
	bne loc_801D526
	ldr r0, dword_801D544 // =0x100000 
	bl sub_801BED6
	b loc_801D53A
loc_801D526:
	mov r1, #0xf
	and r1, r0
	bne locret_801D540
	mov r1, #0x10
	tst r1, r0
	beq loc_801D53A
	ldr r0, dword_801D544 // =0x100000 
	bl sub_801DA48
	b locret_801D540
loc_801D53A:
	ldr r0, dword_801D544 // =0x100000 
	bl sub_801DACC
locret_801D540:
	pop {pc}
	.balign 4, 0
dword_801D544: .word 0x100000
	thumb_func_end sub_801D514

	thumb_local_start
sub_801D548:
	push {lr}
	ldrb r0, [r5,#0x1b]
	sub r0, #1
	strb r0, [r5,#0x1b]
	bne locret_801D562
	mov r0, #1
	lsl r0, r0, #0x15
	bl sub_801BED6
	mov r0, #1
	lsl r0, r0, #0x15
	bl sub_801DACC
locret_801D562:
	pop {pc}
	thumb_func_end sub_801D548

	thumb_local_start
sub_801D564:
	push {r4-r7,lr}
	ldr r0, dword_801D580 // =0x406c0000 
	ldr r1, dword_801D584 // =0xd368 
	mov r2, #0
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	ldr r0, dword_801D588 // =0x7c8000 
	ldr r1, dword_801D58C // =0xd36c 
	mov r2, #0
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4-r7,pc}
	.balign 4, 0
dword_801D580: .word 0x406C0000
dword_801D584: .word 0xD368
dword_801D588: .word 0x7C8000
dword_801D58C: .word 0xD36C
	thumb_func_end sub_801D564

	thumb_local_start
sub_801D590:
	push {r4,r6,r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldrb r0, [r0,#oBattleState_Unk_0d]
	bl sub_802E070
	ldrh r1, [r0,#0x36]
	cmp r1, #0
	bne loc_801D5AC
	ldrh r1, [r0,#0x38]
	cmp r1, #0
	beq locret_801D618
	ldr r0, off_801D630 // =dword_86E960C 
	b loc_801D5BA
loc_801D5AC:
	ldr r0, off_801D62C // =dword_86E958C 
	push {r1}
	ldr r1, dword_801D638 // =0x6017680 
	mov r2, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	b loc_801D5CE
loc_801D5BA:
	push {r1}
	ldr r1, dword_801D638 // =0x6017680 
	mov r2, #0x60 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	ldr r0, off_801D650 // =dword_86A5D60 
	ldr r1, dword_801D63C // =0x60176e0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
loc_801D5CE:
	ldr r0, off_801D654 // =dword_86E966C 
	ldr r1, dword_801D640 // =0x6017700 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r4, #0
	pop {r0}
	bl sub_8000C00
	mov r7, #0xf
	and r7, r0
	lsr r0, r0, #4
	mov r6, #0xf
	and r6, r0
	lsr r0, r0, #4
	ldr r1, dword_801D644 // =0x6017720 
	cmp r0, #0
	beq loc_801D5FA
	add r4, #1
	bl sub_801D61A
	add r1, #0x20 
loc_801D5FA:
	mov r0, r6
	bl sub_801D61A
	add r1, #0x20 
	mov r0, r7
	bl sub_801D61A
	add r1, #0x20 
	cmp r4, #0
	bne locret_801D618
	ldr r0, off_801D650 // =dword_86A5D60 
	ldr r1, dword_801D64C // =0x6017760 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
locret_801D618:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801D590

	thumb_local_start
sub_801D61A:
	push {r1,lr}
	mov r2, #0x20 
	mul r0, r2
	ldr r3, off_801D634 // =off_86E968C 
	add r0, r0, r3
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	pop {r1,pc}
	.balign 4, 0
off_801D62C: .word dword_86E958C
off_801D630: .word dword_86E960C
off_801D634: .word off_86E968C
dword_801D638: .word 0x6017680
dword_801D63C: .word 0x60176E0
dword_801D640: .word 0x6017700
dword_801D644: .word 0x6017720
	.word 0x6017740
dword_801D64C: .word 0x6017760
off_801D650: .word dword_86A5D60
off_801D654: .word dword_86E966C
	.word off_86E968C
	thumb_func_end sub_801D61A

	thumb_local_start
sub_801D65C:
	push {r4-r7,lr}
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl getBattleHandAddr_8010018
	ldrb r1, [r0]
	add r1, #1
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	ldr r1, dword_801D6D4 // =0xffff 
	cmp r0, r1
	bne locret_801D6C8
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl sub_802E070
	ldrh r1, [r0,#0x36]
	cmp r1, #0
	bne loc_801D688
	ldrh r1, [r0,#0x38]
	cmp r1, #0
	beq locret_801D6C8
loc_801D688:
	ldr r1, [r5,#0x48]
	mov r0, #0x34 
	add r0, r0, r1
	bl sub_800362C
	cmp r2, #0
	beq locret_801D6C8
	bl sub_801D6D8
	mov r2, #0xff
	add r2, r2, r2
	add r2, #1
	and r0, r2
	lsl r0, r0, #0x10
	mov r2, #0xff
	and r1, r2
	add r6, r0, r1
	ldr r1, dword_801D6D0 // =0xc7b4 
	ldr r0, dword_801D6CC // =0x40004000 
	add r0, r0, r6
	mov r2, #2
	mov r3, #0
	push {r0,r1}
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r0,r1}
	add r0, #9
	add r1, #4
	mov r2, #2
	mov r3, #0
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_801D6C8:
	pop {r4-r7,pc}
	.balign 4, 0
dword_801D6CC: .word 0x40004000
dword_801D6D0: .word 0xC7B4
dword_801D6D4: .word 0xFFFF
	thumb_func_end sub_801D65C

	thumb_local_start
sub_801D6D8:
	push {lr}
	push {r0,r1}
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	mov r1, #0x29 
	bl GetBattleNaviStatsByte
	add r0, r0, r0
	ldr r3, off_801D6FC // =dword_801D700
	add r3, r3, r0
	pop {r0,r1}
	mov r2, #0
	ldrsb r2, [r3,r2]
	add r0, r0, r2
	mov r2, #1
	ldrsb r2, [r3,r2]
	add r1, r1, r2
	pop {pc}
	.balign 4, 0
off_801D6FC: .word dword_801D700
dword_801D700: .word 0xBDF8C9F8
	.word 0xACF4C5F8
	.word 0xB8FBC000
	.word 0xC2FFB8FC
	.word 0xB1F7BAFB
	.word 0xC4FAC4FC
	.hword 0xB3F7
	thumb_func_end sub_801D6D8

	thumb_local_start
sub_801D71A:
	push {r4,r7,lr}
	mov r0, #oBattleState_AliveOpponentActors
	mov r7, r10
	ldr r7, [r7,#oToolkit_BattleStatePtr]
	add r7, r7, r0
	ldr r7, [r7]
	tst r7, r7
	beq locret_801D790
	ldrh r1, [r7,#0x24]
	mov r3, #0x50 
	ldrh r3, [r5,r3]
	cmp r1, r3
	beq loc_801D770
	bgt loc_801D74E
	mov r0, #2
	mov r4, #0x52 
	strb r0, [r5,r4]
	mov r2, r3
	sub r2, r2, r1
	asr r2, r2, #3
	add r2, #4
	sub r3, r3, r2
	cmp r3, r1
	bge loc_801D764
	mov r3, r1
	b loc_801D764
loc_801D74E:
	mov r0, #1
	mov r4, #0x52 
	strb r0, [r5,r4]
	mov r2, r1
	sub r2, r2, r3
	asr r2, r2, #3
	add r2, #4
	add r3, r3, r2
	cmp r3, r1
	ble loc_801D764
	mov r3, r1
loc_801D764:
	mov r4, #0x50 
	strh r3, [r5,r4]
	mov r0, #0xf
	mov r4, #0x54 
	strb r0, [r5,r4]
	pop {r4,r7,pc}
loc_801D770:
	mov r4, #0x54 
	ldrb r0, [r5,r4]
	cmp r0, #0
	beq loc_801D780
	sub r0, #1
	mov r4, #0x54 
	strb r0, [r5,r4]
	bne locret_801D790
loc_801D780:
	mov r0, #2
	ldrh r2, [r7,#0x26]
	lsr r2, r2, #2
	cmp r1, r2
	ble loc_801D78C
	mov r0, #0
loc_801D78C:
	mov r4, #0x52 
	strb r0, [r5,r4]
locret_801D790:
	pop {r4,r7,pc}
	thumb_func_end sub_801D71A

	thumb_local_start
sub_801D792:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x10
	mov r6, sp
	mov r4, #0x50 
	ldrh r0, [r5,r4]
	bl sub_8000C00
	mov r2, r0
	bl sub_8000C5C
	lsl r0, r0, #2
	ldr r1, dword_801D810 // =0xaaaa 
	lsl r1, r0
	orr r2, r1
	push {r5}
	ldr r5, dword_801D80C // =0xc1a0 
	mov r1, r6
	add r1, #8
	mov r3, #6
loc_801D7B8:
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #1
	add r0, r0, r5
	strh r0, [r6,r3]
	add r0, #1
	strh r0, [r1,r3]
	lsr r2, r2, #4
	sub r3, #2
	bpl loc_801D7B8
	ldr r5, [sp]
	mov r0, #0x18
	// j
	add r0, #1
	// i
	mov r1, #0
	// tileBlock32x32
	mov r2, #3
	// tileIds
	mov r3, r6
	mov r4, #4
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r5}
	mov r4, #0x52 
	ldrb r0, [r5,r4]
	lsl r0, r0, #5
	ldr r3, off_801D7FC // =off_801D800 
	ldr r1, [r3]
	add r0, r0, r1
	ldr r1, [r3,#0x4] // (off_801D804 - 0x801d800)
	ldr r2, [r3,#0x8] // (dword_801D808 - 0x801d800)
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add sp, sp, #0x10
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_801D7FC: .word off_801D800
off_801D800: .word dword_86E1C78
off_801D804: .word unk_3001AE0
dword_801D808: .word 0x20
dword_801D80C: .word 0xC1A0
dword_801D810: .word 0xAAAA
	thumb_func_end sub_801D792

	thumb_local_start
sub_801D814:
	push {r4,lr}
	mov r4, #0
	bl GetBattleMode
	cmp r0, #1
	beq loc_801D84A
	cmp r0, #5
	beq loc_801D848
	movflag EVENT_163
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne loc_801D84A
	bl TestBattleFlag_0x40
	bne loc_801D84A
	bl GetBattleEffects // () -> int
	ldr r1, dword_801D850 // =0x200000 
	tst r0, r1
	bne loc_801D84A
	movflag EVENT_E0
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	beq loc_801D84A
loc_801D848:
	mov r4, #1
loc_801D84A:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0
dword_801D850: .word 0x200000
off_801D854: .word dword_86E0AB8
	.word dword_86E0AF8
	.word dword_86E0B38
	.word dword_86E0B78
	.word dword_86E0BB8
	.word dword_86E0BF8
	.word dword_86E0C38
	.word dword_86E0C78
	.word dword_86E0CB8
	.word dword_86E0CF8
	.word dword_86B7AE0
off_801D880: .word dword_86E0D38
	.word dword_86E0D78
	.word dword_86E0DB8
	.word dword_86E0DF8
	.word dword_86E0E38
	.word dword_86E0E78
	.word dword_86E0EB8
	.word dword_86E0EF8
	.word dword_86E0F38
	.word dword_86E0F78
	.word dword_86B7AE0
off_801D8AC: .word dword_86E0FB8
	.word dword_86E0FF8
	.word dword_86E1038
	.word dword_86E1078
	.word dword_86E10B8
	.word dword_86E10F8
	.word dword_86E1138
	.word dword_86E1178
	.word dword_86E11B8
	.word dword_86E11F8
	.word dword_86B7AE0
off_801D8D8: .word dword_86B7B20
	.word dword_86B7B60
	.word dword_86B7BA0
	.word dword_86B7BE0
	.word dword_86B7C20
	.word dword_86B7C60
	.word dword_86B7CA0
	.word dword_86B7CE0
	.word dword_86B7D20
	.word dword_86B7D60
	.word dword_86B7AE0
byte_801D904: .byte 0x4C, 0xD2, 0x4E, 0xD2, 0x50, 0xD2, 0x4A, 0xD2, 0x0
	.byte 0x0, 0x0, 0x0, 0x52, 0xD2, 0x54, 0xD2, 0x56, 0xD2
	.byte 0x4A, 0xD2, 0x4D, 0xD2, 0x4F, 0xD2, 0x51, 0xD2, 0x4B
	.byte 0xD2, 0x0, 0x0, 0x0, 0x0, 0x53, 0xD2, 0x55, 0xD2
	.byte 0x57, 0xD2, 0x4B, 0xD2
off_801D92C: .word dword_86F2E00
	.word dword_86F2E20
	.word dword_86F2E40
	.word dword_86F2E14
	.word dword_86F2E34
	.word dword_86F2E54
byte_801D944: .byte 0x58, 0xD2, 0x5A, 0xD2, 0x5C, 0xD2, 0x5E, 0xD2, 0x60
	.byte 0xD2, 0x62, 0xD2, 0x64, 0xD2, 0x66, 0xD2
byte_801D954: .byte 0x59, 0xD2, 0x5B, 0xD2, 0x5D, 0xD2, 0x5F, 0xD2, 0x61
	.byte 0xD2, 0x63, 0xD2, 0x65, 0xD2, 0x67, 0xD2
byte_801D964: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xCC
	.byte 0xD1, 0xCC, 0xD1, 0xCC, 0xD1, 0xCC, 0xD1, 0xCD, 0xD1, 0xCD, 0xD1, 0xCD, 0xD1, 0xCD, 0xD1
byte_801D984: .byte 0xAB, 0xA0, 0xAC, 0xA0, 0xAD, 0xA0, 0xAE, 0xA0, 0xAF
	.byte 0xA0, 0xB0, 0xA0, 0xB1, 0xA0, 0xB2, 0xA0, 0xB3, 0xA0
	.byte 0xB4, 0xA0, 0xB5, 0xA0, 0xB6, 0xA0, 0xB7, 0xA0, 0xB8
	.byte 0xA0, 0xB9, 0xA0, 0xBA, 0xA0, 0xBB, 0xA0, 0xBC, 0xA0
	.byte 0xBD, 0xA0, 0xBE, 0xA0, 0xBF, 0xA0, 0xC0, 0xA0, 0xC1
	.byte 0xA0, 0xC2, 0xA0
byte_801D9B4: .byte 0x86, 0xD2, 0x88, 0xD2, 0x8A, 0xD2, 0x8C, 0xD2, 0x8E
	.byte 0xD2, 0x90, 0xD2, 0x92, 0xD2, 0x94, 0xD2, 0x0, 0x0
	.byte 0x0, 0x0, 0x96, 0xD2, 0x98, 0xD2, 0x9A, 0xD2, 0x9C
	.byte 0xD2, 0x9E, 0xD2, 0xA0, 0xD2, 0xA2, 0xD2, 0xA4, 0xD2
	.byte 0x0, 0x0, 0x0, 0x0, 0xA6, 0xD2, 0xA8, 0xD2, 0xAA
	.byte 0xD2, 0xAC, 0xD2, 0xAE, 0xD2, 0xB0, 0xD2, 0xB2, 0xD2
	.byte 0xB4, 0xD2, 0x87, 0xD2, 0x89, 0xD2, 0x8B, 0xD2, 0x8D
	.byte 0xD2, 0x8F, 0xD2, 0x91, 0xD2, 0x93, 0xD2, 0x95, 0xD2
	.byte 0x0, 0x0, 0x0, 0x0, 0x97, 0xD2, 0x99, 0xD2, 0x9B
	.byte 0xD2, 0x9D, 0xD2, 0x9F, 0xD2, 0xA1, 0xD2, 0xA3, 0xD2
	.byte 0xA5, 0xD2, 0x0, 0x0, 0x0, 0x0, 0xA7, 0xD2, 0xA9
	.byte 0xD2, 0xAB, 0xD2, 0xAD, 0xD2, 0xAF, 0xD2, 0xB1, 0xD2
	.byte 0xB3, 0xD2, 0xB5, 0xD2
	thumb_func_end sub_801D814

	thumb_func_start sub_801DA24
sub_801DA24:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_RenderInfoPtr]
	ldr r0, dword_801DA44 // =0x1f09 
	strh r0, [r1,#oRenderInfo_Unk_0a]
	// dataList
	ldr r0, off_801DA40 // =off_801ECB4 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	bl sub_80103EC
	ldr r1, off_801DB50 // =eStruct2035280
	str r0, [r1,#0x48] // (dword_20352C8 - 0x2035280)
	pop {pc}
	.balign 4, 0
off_801DA40: .word off_801ECB4
dword_801DA44: .word 0x1F09
	thumb_func_end sub_801DA24

	thumb_func_start sub_801DA48
sub_801DA48:
	push {r5-r7,lr}
	ldr r5, off_801DB50 // =eStruct2035280
	ldr r6, off_801DA68 // =off_801DA6C 
	mov r7, r0
loc_801DA50:
	lsr r7, r7, #1
	bcs loc_801DA5A
	beq locret_801DA64
	add r6, #4
	b loc_801DA50
loc_801DA5A:
	ldr r0, [r6]
	mov lr, pc
	bx r0
	add r6, #4
	b loc_801DA50
locret_801DA64:
	pop {r5-r7,pc}
	.balign 4, 0
off_801DA68: .word off_801DA6C
off_801DA6C: .word sub_801DB60+1
	.word sub_801DB78+1
	.word sub_801DC6E+1
	.word sub_801DD7C+1
	.word sub_801DDF6+1
	.word sub_801DE3C+1
	.word sub_801E006+1
	.word sub_801E03E+1
	.word sub_801E1E4+1
	.word sub_801E144+1
	.word sub_801E10E+1
	.word sub_801E376+1
	.word sub_801E468+1
	.word sub_801E4F4+1
	.word sub_801E5EC+1
	.word sub_801E748+1
	.word sub_801EB0C+1
	.word sub_801DE82+1
	.word sub_801EB7C+1
	.word sub_801EBDE+1
	.word sub_801E3E4+1
	.word sub_801EC38+1
	.word sub_801EC90+1
	.word sub_801E07C+1
	thumb_func_end sub_801DA48

	thumb_func_start sub_801DACC
sub_801DACC:
	push {r5-r7,lr}
	ldr r5, off_801DB50 // =eStruct2035280
	ldr r6, off_801DAEC // =off_801DAF0 
	ldr r7, [r5,#0x44] // (dword_20352C4 - 0x2035280)
	and r7, r0
loc_801DAD6:
	lsr r7, r7, #1
	bcs loc_801DAE0
	beq locret_801DAEA
	add r6, #4
	b loc_801DAD6
loc_801DAE0:
	ldr r0, [r6]
	mov lr, pc
	bx r0
	add r6, #4
	b loc_801DAD6
locret_801DAEA:
	pop {r5-r7,pc}
	.balign 4, 0
off_801DAEC: .word off_801DAF0
off_801DAF0: .word sub_801DB54+1
	.word sub_801DB6C+1
	.word sub_801DC60+1
	.word sub_801DD60+1
	.word sub_801DDD8+1
	.word sub_801DE1E+1
	.word sub_801DFEA+1
	.word sub_801E022+1
	.word sub_801E1A4+1
	.word sub_801E138+1
	.word sub_801E0DC+1
	.word sub_801E35A+1
	.word sub_801E44C+1
	.word sub_801E4B0+1
	.word sub_801E5E0+1
	.word sub_801E73C+1
	.word sub_801EB00+1
	.word sub_801DE64+1
	.word sub_801EB50+1
	.word sub_801EBD2+1
	.word sub_801E3C4+1
	.word sub_801EC2C+1
	.word sub_801EC84+1
	.word sub_801E060+1
off_801DB50: .word eStruct2035280
	thumb_func_end sub_801DACC

	thumb_local_start
sub_801DB54:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801DB54

	thumb_local_start
sub_801DB60:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801DB60

	thumb_local_start
sub_801DB6C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #1
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801DB6C

	thumb_local_start
sub_801DB78:
	push {lr}
	mov r0, #1
	lsl r0, r0, #1
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801DB78

	thumb_local_start
sub_801DB84:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	ldr r4, off_801DC5C // =dword_20352E0 
	mov r3, #6
loc_801DB90:
	ldrb r2, [r4]
	cmp r2, #0
	beq loc_801DB9C
	ldr r1, [r4,#4]
	cmp r1, r5
	beq locret_801DBD2
loc_801DB9C:
	add r4, #8
	sub r3, #1
	bne loc_801DB90
	ldr r4, off_801DC5C // =dword_20352E0 
	mov r3, #6
loc_801DBA6:
	ldrb r2, [r4]
	cmp r2, #0
	beq loc_801DBB6
	add r4, #8
	sub r3, #1
	bne loc_801DBA6
	mov r0, #1
	b locret_801DBD2
loc_801DBB6:
	strb r0, [r4,#3]
	ldrh r0, [r5,#oBattleObject_NameID]
	mov r1, #3
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	bl getBattleArmPositionMaybe_8018810
	neg r1, r1
	sub r1, #8
	strb r0, [r4,#1]
	strb r1, [r4,#2]
	str r5, [r4,#4]
	mov r0, #1
	strb r0, [r4]
locret_801DBD2:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801DB84

	thumb_func_start sub_801DBD4
sub_801DBD4:
	push {r4,r6,r7,lr}
	ldr r4, off_801DC5C // =dword_20352E0 
	mov r3, #6
loc_801DBDA:
	ldrb r2, [r4]
	cmp r2, #0
	beq loc_801DBE6
	ldr r0, [r4,#4]
	cmp r0, r5
	beq loc_801DBF0
loc_801DBE6:
	add r4, #8
	sub r3, #1
	bne loc_801DBDA
	mov r0, #1
	b locret_801DC04
loc_801DBF0:
	ldrh r0, [r5,#oBattleObject_NameID]
	mov r1, #3
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	bl getBattleArmPositionMaybe_8018810
	neg r1, r1
	sub r1, #8
	strb r0, [r4,#1]
	strb r1, [r4,#2]
locret_801DC04:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801DBD4

	thumb_local_start
sub_801DC06:
	push {r4,r6,r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	ldr r4, off_801DC5C // =dword_20352E0 
	mov r3, #6
loc_801DC12:
	ldrb r2, [r4]
	cmp r2, #0
	beq loc_801DC1E
	ldr r0, [r4,#4]
	cmp r0, r5
	beq loc_801DC28
loc_801DC1E:
	add r4, #8
	sub r3, #1
	bne loc_801DC12
	mov r0, #1
	b loc_801DC32
loc_801DC28:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	sub r1, #8
	strb r0, [r4,#1]
	strb r1, [r4,#2]
loc_801DC32:
	add sp, sp, #8
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801DC06

	thumb_func_start sub_801DC36
sub_801DC36:
	push {r4,r6,r7,lr}
	ldr r4, off_801DC5C // =dword_20352E0 
	mov r3, #6
loc_801DC3C:
	ldrb r2, [r4]
	cmp r2, #0
	beq loc_801DC48
	ldr r0, [r4,#4]
	cmp r0, r5
	beq loc_801DC52
loc_801DC48:
	add r4, #8
	sub r3, #1
	bne loc_801DC3C
	mov r0, #1
	b locret_801DC58
loc_801DC52:
	mov r0, #0
	str r0, [r4]
	str r0, [r4,#4]
locret_801DC58:
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_801DC5C: .word dword_20352E0
	thumb_func_end sub_801DC36

	thumb_local_start
sub_801DC60:
	push {lr}
	mov r0, #1
	mov r1, #2
	lsl r0, r1
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801DC60

	thumb_local_start
sub_801DC6E:
	push {lr}
	mov r0, #1
	mov r1, #2
	lsl r0, r1
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801DC6E

	thumb_func_start sub_801DC7C
sub_801DC7C:
	push {r4,r6,r7,lr}
	ldr r6, off_801DD58 // =byte_203EB50 
	mov r3, #4
loc_801DC82:
	ldrb r2, [r6]
	cmp r2, #0
	beq loc_801DC98
	ldr r2, [r6,#0xc]
	cmp r2, r5
	beq loc_801DC94
	add r6, #0x14
	sub r3, #1
	bne loc_801DC82
loc_801DC94:
	mov r0, #1
	b locret_801DCCA
loc_801DC98:
	ldrh r2, [r5,#oBattleObject_NameID]
	strh r2, [r6,#6]
	mov r3, #3
	cmp r2, #0xeb
	beq loc_801DCAA
	cmp r2, #0x49 
	blt loc_801DCAC
	cmp r2, #0x4e 
	bgt loc_801DCAC
loc_801DCAA:
	mov r3, #0x1b
loc_801DCAC:
	strb r3, [r6]
	strb r0, [r6,#4]
	strb r1, [r6,#5]
	ldrh r2, [r5,#oBattleObject_HP]
	strh r2, [r6,#2]
	ldr r0, dword_801DD5C // =0xb0b0b0b 
	str r0, [r6,#0x10]
	str r5, [r6,#0xc]
	mov r0, #0
	strb r0, [r6,#8]
	strb r0, [r6,#9]
	mov r0, #4
	bl sub_801BECC
	mov r0, #0
locret_801DCCA:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801DC7C

	thumb_func_start sub_801DCCC
sub_801DCCC:
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	ldr r2, off_801DD58 // =byte_203EB50 
	mov r3, #4
	mov r1, #1
loc_801DCD8:
	ldrb r0, [r2]
	tst r0, r1
	beq loc_801DCF0
	ldr r0, [r2,#0xc]
	cmp r0, r5
	bne loc_801DCF0
	ldr r0, [sp]
	strb r0, [r2,#4]
	ldr r0, [sp,#4]
	strb r0, [r2,#5]
	mov r0, #0
	b loc_801DCF8
loc_801DCF0:
	add r2, #0x14
	sub r3, #1
	bne loc_801DCD8
	mov r0, #1
loc_801DCF8:
	add sp, sp, #8
	mov pc, lr
	thumb_func_end sub_801DCCC

	thumb_local_start
sub_801DCFC:
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	ldr r2, off_801DD58 // =byte_203EB50 
	mov r3, #4
	mov r1, #1
loc_801DD08:
	ldrb r0, [r2]
	tst r0, r1
	beq loc_801DD28
	ldr r0, [r2,#0xc]
	cmp r0, r5
	bne loc_801DD28
	ldr r0, [sp]
	strb r0, [r2,#4]
	ldr r0, [sp,#4]
	strb r0, [r2,#5]
	ldrb r0, [r2]
	mov r1, #4
	orr r0, r1
	strb r0, [r2]
	mov r0, #0
	b loc_801DD30
loc_801DD28:
	add r2, #0x14
	sub r3, #1
	bne loc_801DD08
	mov r0, #1
loc_801DD30:
	add sp, sp, #8
	mov pc, lr
	thumb_func_end sub_801DCFC

	thumb_func_start sub_801DD34
sub_801DD34:
	ldr r2, off_801DD58 // =byte_203EB50 
	mov r3, #4
	mov r1, #1
loc_801DD3A:
	ldrb r0, [r2]
	tst r0, r1
	beq loc_801DD4C
	ldr r0, [r2,#0xc]
	cmp r0, r5
	bne loc_801DD4C
	mov r0, #0
	strb r0, [r2]
	b locret_801DD54
loc_801DD4C:
	add r2, #0x14
	sub r3, #1
	bne loc_801DD3A
	mov r0, #1
locret_801DD54:
	mov pc, lr
	.balign 4, 0
off_801DD58: .word byte_203EB50
dword_801DD5C: .word 0xB0B0B0B
	thumb_func_end sub_801DD34

	thumb_local_start
sub_801DD60:
	push {r4,r5,lr}
	mov r0, #1
	lsl r0, r0, #3
	bl sub_801BEC2
	mov r0, #0x11
	mov r1, #0x12
	mov r2, #0
	mov r3, #0
	mov r4, #0xc
	mov r5, #2
	bl call_sub_3005EBA
	pop {r4,r5,pc}
	thumb_func_end sub_801DD60

	thumb_local_start
sub_801DD7C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #3
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801DD7C

	thumb_local_start
sub_801DD88:
	push {lr}
	ldr r0, off_801DDA0 // =off_801DDA4 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	mov r0, #8
	bl sub_801BECC
	mov r0, #8
	bl sub_801DA48
	pop {pc}
	.balign 4, 0
off_801DDA0: .word off_801DDA4
off_801DDA4: .word dword_86BA0A0
	.word 0x600C940
	.word 0x40
	.word dword_86F2E00
	.word 0x3001670
	.word 0x20
	.word byte_86F2D00
	.word 0x6016D00
	.word 0x80
	.word byte_86F2D80
	.word 0x6016D80
	.word 0x80
	.word 0x0
	thumb_func_end sub_801DD88

	thumb_local_start
sub_801DDD8:
	push {r4,r5,lr}
	mov r0, #6
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x12
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	mov r1, #4
	lsl r0, r1
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801DDD8

	thumb_local_start
sub_801DDF6:
	push {r4,r5,lr}
	ldr r0, off_801DEC4 // =dword_86E1C78 
	ldr r1, off_801DEC8 // =unk_3001A80 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	// j
	mov r0, #6
	// i
	mov r1, #0
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801DEBC // =word_801ED6C 
	mov r4, #0x12
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	mov r1, #4
	lsl r0, r1
	bl sub_801BEB8
	pop {r4,r5,pc}
	thumb_func_end sub_801DDF6

	thumb_local_start
sub_801DE1E:
	push {r4,r5,lr}
	mov r0, #6
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x12
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	mov r1, #5
	lsl r0, r1
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801DE1E

	thumb_local_start
sub_801DE3C:
	push {r4,r5,lr}
	ldr r0, off_801DEC4 // =dword_86E1C78 
	ldr r1, off_801DEC8 // =unk_3001A80 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	// j
	mov r0, #6
	// i
	mov r1, #0
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801DEBC // =word_801ED6C 
	mov r4, #0x12
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	mov r1, #5
	lsl r0, r1
	bl sub_801BEB8
	pop {r4,r5,pc}
	thumb_func_end sub_801DE3C

	thumb_local_start
sub_801DE64:
	push {r4,r5,lr}
	mov r0, #6
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x12
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	mov r1, #0x11
	lsl r0, r1
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801DE64

	thumb_local_start
sub_801DE82:
	push {r4,r5,lr}
	ldrb r0, [r5,#0x18]
	cmp r0, #0
	bne loc_801DE8C
	sub r0, #2
loc_801DE8C:
	mov r2, #0x20 
	sub r0, #1
	mul r0, r2
	ldr r1, off_801DECC // =byte_86E1CD8 
	add r0, r0, r1
	ldr r1, off_801DEC8 // =unk_3001A80 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	// j
	mov r0, #6
	// i
	mov r1, #0
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801DEC0 // =word_801EDB4 
	mov r4, #0x12
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	mov r1, #0x11
	lsl r0, r1
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0
off_801DEBC: .word word_801ED6C
off_801DEC0: .word word_801EDB4
off_801DEC4: .word dword_86E1C78
off_801DEC8: .word unk_3001A80
off_801DECC: .word byte_86E1CD8
	thumb_func_end sub_801DE82

	thumb_func_start sub_801DED0
sub_801DED0:
	push {lr}
	bl ClearCustGauge
	ldr r0, off_801DF6C // =dword_86E489C 
	ldr r1, dword_801DF70 // =0x600c440 
	ldr r2, off_801DF74 // =0x380 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #0x10
	bl sub_801BECC
	mov r0, #0x10
	bl sub_801DA48
	pop {pc}
	thumb_func_end sub_801DED0

	thumb_func_start sub_801DEEE
sub_801DEEE:
	push {lr}
	bl ClearCustGauge
	ldr r0, off_801DF6C // =dword_86E489C 
	ldr r1, dword_801DF70 // =0x600c440 
	ldr r2, off_801DF74 // =0x380 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #0x20 
	bl sub_801BECC
	mov r0, #0x20 
	bl sub_801DA48
	pop {pc}
	thumb_func_end sub_801DEEE

	thumb_func_start sub_801DF0C
sub_801DF0C:
	push {lr}
	bl ClearCustGauge
	// dataList
	ldr r0, off_801DF5C // =off_801DF60 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	mov r0, #1
	lsl r0, r0, #0x11
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0x11
	bl sub_801DA48
	ldr r1, off_801E0D8 // =eStruct2035280
	mov r0, #0
	strb r0, [r1,#0x18] // (byte_2035298 - 0x2035280)
	strb r0, [r1,#0x19] // (byte_2035299 - 0x2035280)
	pop {pc}
	thumb_func_end sub_801DF0C

	thumb_local_start
sub_801DF32:
	push {lr}
	bl ClearCustGauge
	// dataList
	ldr r0, off_801DF5C // =off_801DF60 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	ldr r0, off_801DF80 // =dword_86E1C78 
	ldr r1, off_801DF84 // =byte_3001B00 
	ldr r2, dword_801DF88 // =0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #1
	lsl r0, r0, #0x11
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0x11
	bl sub_801DA48
	pop {pc}
	.balign 4, 0
off_801DF5C: .word off_801DF60
off_801DF60: .word dword_86E4C1C
	.word 0x600C7C0
	.word 0x180
off_801DF6C: .word dword_86E489C
dword_801DF70: .word 0x600C440
off_801DF74: .word 0x380
	.word 0x0
	.word 0x1500
off_801DF80: .word dword_86E1C78
off_801DF84: .word byte_3001B00
dword_801DF88: .word 0x20
	thumb_func_end sub_801DF32

	thumb_func_start sub_801DF8C
sub_801DF8C:
	ldr r1, off_801E0D8 // =eStruct2035280
	strh r0, [r1,#0x22] // (word_20352A2 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801DF8C

	thumb_func_start ClearCustGauge
ClearCustGauge:
	push {lr}
	ldr r1, off_801E0D8 // =eStruct2035280
	mov r0, #0
	strh r0, [r1,#0x20] // (word_20352A0 - 0x2035280)
	mov r0, #0x12
	bl battle_clearFlags
	pop {pc}
	thumb_func_end ClearCustGauge

	thumb_func_start SetCustGauge
SetCustGauge:
	push {r1,lr}
	ldr r1, dword_801DFB4 // =0x4000 
	cmp r0, r1
	ble loc_801DFAC
	mov r0, r1
loc_801DFAC:
	ldr r1, off_801E0D8 // =eStruct2035280
	strh r0, [r1,#0x20] // (word_20352A0 - 0x2035280)
	pop {r1,pc}
	.balign 4, 0
dword_801DFB4: .word 0x4000
	thumb_func_end SetCustGauge

	thumb_func_start sub_801DFB8
sub_801DFB8:
	push {lr}
	ldr r2, off_801E0D8 // =eStruct2035280
	ldrh r1, [r2,#0x20] // (word_20352A0 - 0x2035280)
	add r0, r0, r1
	ldr r1, dword_801DFCC // =0x4000 
	cmp r0, r1
	ble loc_801DFC8
	mov r0, r1
loc_801DFC8:
	strh r0, [r2,#0x20] // (word_20352A0 - 0x2035280)
	pop {pc}
	.balign 4, 0
dword_801DFCC: .word 0x4000
	thumb_func_end sub_801DFB8

	thumb_local_start
sub_801DFD0:
	push {lr}
	ldr r2, off_801E0D8 // =eStruct2035280
	ldrh r1, [r2,#0x20] // (word_20352A0 - 0x2035280)
	sub r1, r1, r0
	bge loc_801DFDC
	mov r1, #0
loc_801DFDC:
	strh r1, [r2,#0x20] // (word_20352A0 - 0x2035280)
	pop {pc}
	.word 0x4000
	thumb_func_end sub_801DFD0

	thumb_func_start sub_801DFE4
sub_801DFE4:
	ldr r0, off_801E0D8 // =eStruct2035280
	ldrh r0, [r0,#0x20] // (word_20352A0 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801DFE4

	thumb_local_start
sub_801DFEA:
	push {r4,r5,lr}
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	mov r3, #0
	mov r4, #0x11
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #6
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801DFEA

	thumb_local_start
sub_801E006:
	push {lr}
	mov r0, #1
	lsl r0, r0, #6
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801E006

	thumb_local_start
sub_801E012:
	push {r4,r6,r7,lr}
	mov r0, #0x40 
	bl sub_801BECC
	mov r0, #0x40 
	bl sub_801DA48
	pop {r4,r6,r7,pc}
	thumb_func_end sub_801E012

	thumb_local_start
sub_801E022:
	push {r4,r5,lr}
	ldrb r0, [r5,#1]
	ldrb r1, [r5,#2]
	mov r2, #3
	mov r3, #0
	mov r4, #6
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #7
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801E022

	thumb_local_start
sub_801E03E:
	push {r4,r5,lr}
	ldr r3, off_801E0D8 // =eStruct2035280
	// j
	ldrb r0, [r3,#0x1] // (byte_2035281 - 0x2035280)
	// i
	ldrb r1, [r3,#0x2] // (byte_2035282 - 0x2035280)
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801E05C // =byte_801EDFC
	mov r4, #6
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	lsl r0, r0, #7
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0
off_801E05C: .word byte_801EDFC
	thumb_func_end sub_801E03E

	thumb_local_start
sub_801E060:
	push {r4,r5,lr}
	mov r0, #0x18
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #6
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #0x17
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801E060

	thumb_local_start
sub_801E07C:
	push {r4,r5,lr}
	ldr r3, off_801E0D8 // =eStruct2035280
	// j
	mov r0, #0x18
	// i
	mov r1, #0
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801E09C // =byte_801EDFC
	mov r4, #6
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	lsl r0, r0, #0x17
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0
off_801E09C: .word byte_801EDFC
	thumb_func_end sub_801E07C

	thumb_func_start sub_801E0A0
sub_801E0A0:
	push {lr}
	ldr r3, off_801E0D8 // =eStruct2035280
	ldr r2, [r3,#0x48] // (dword_20352C8 - 0x2035280)
	ldrh r2, [r2,#0x24]
	strh r2, [r3,#0x24] // (word_20352A4 - 0x2035280)
	strb r0, [r3,#0x1] // (byte_2035281 - 0x2035280)
	strb r1, [r3,#0x2] // (byte_2035282 - 0x2035280)
	mov r0, #0x80
	bl sub_801BECC
	mov r0, #0x80
	bl sub_801DA48
	pop {pc}
	thumb_func_end sub_801E0A0

	thumb_local_start
sub_801E0BC:
	push {lr}
	ldr r1, off_801E0D8 // =eStruct2035280
	ldr r0, [r1,#0x48] // (dword_20352C8 - 0x2035280)
	ldrh r0, [r0,#0x24]
	strh r0, [r1,#0x24] // (word_20352A4 - 0x2035280)
	pop {pc}
	thumb_func_end sub_801E0BC

	thumb_func_start sub_801E0C8
sub_801E0C8:
	push {r5,lr}
	ldr r5, off_801E0D8 // =eStruct2035280
	strh r0, [r5,#0x26] // (word_20352A6 - 0x2035280)
	pop {r5,pc}
	thumb_func_end sub_801E0C8

	thumb_func_start sub_801E0D0
sub_801E0D0:
	push {lr}
	ldr r3, off_801E0D8 // =eStruct2035280
	strb r0, [r3,#0x1c] // (byte_203529C - 0x2035280)
	pop {pc}
off_801E0D8: .word eStruct2035280
	thumb_func_end sub_801E0D0

	thumb_local_start
sub_801E0DC:
	push {r4,r5,lr}
	mov r0, #0xff
	strb r0, [r5,#8]
	strb r0, [r5,#0xa]
	mov r0, #6
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r4, #4
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #0x1a
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r4, #4
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #0xa
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801E0DC

	thumb_local_start
sub_801E10E:
	push {lr}
	bl GetBattleMode
	cmp r0, #6
	beq loc_801E122
	ldr r0, off_801E12C // =dword_86E1C78 
	ldr r1, off_801E130 // =unk_3001A80 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
loc_801E122:
	mov r0, #1
	lsl r0, r0, #0xa
	bl sub_801BEB8
	pop {pc}
	.balign 4, 0
off_801E12C: .word dword_86E1C78
off_801E130: .word unk_3001A80
	.word dword_86E1C78
	thumb_func_end sub_801E10E

	thumb_local_start
sub_801E138:
	push {lr}
	mov r0, #1
	lsl r0, r0, #9
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801E138

	thumb_local_start
sub_801E144:
	push {lr}
	mov r0, #1
	lsl r0, r0, #9
	bl sub_801BEB8
	pop {pc}
	.word dword_86E1C78
	.word unk_3001A80
	.word dword_86E1C78
	thumb_func_end sub_801E144

	thumb_func_start sub_801E15C
sub_801E15C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801BED6
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801DACC
	// dataList
	ldr r0, off_801E184 // =off_801E188 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	mov r0, #1
	lsl r0, r0, #9
	bl sub_801DA48
	mov r0, #0x9f
	bl PlaySoundEffect
	pop {pc}
	.balign 4, 0
off_801E184: .word off_801E188
off_801E188: .word dword_86E611C
	.word 0x6016E00
	.word 0x140
	.word byte_86F2900
	.word 0x30016B0
	.word 0x20
	.word 0x0
	thumb_func_end sub_801E15C

	thumb_local_start
sub_801E1A4:
	push {r4-r6,lr}
	mov r6, #6
	ldrb r0, [r5,#0xc]
	cmp r0, #2
	beq loc_801E1B0
	mov r6, #0
loc_801E1B0:
	mov r0, #7
	lsr r1, r6, #1
	add r0, r0, r1
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r4, #0x11
	sub r4, r4, r6
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BEC2
	bl battle_isBattleOver
	cmp r0, #1
	beq locret_801E1E2
	cmp r6, #0
	bne locret_801E1E2
	mov r0, #1
	lsl r0, r0, #0xa
	bl sub_801DA48
locret_801E1E2:
	pop {r4-r6,pc}
	thumb_func_end sub_801E1A4

	thumb_local_start
sub_801E1E4:
	push {r4-r6,lr}
	mov r6, #9
	ldrb r0, [r5,#0xc]
	cmp r0, #2
	beq loc_801E1F8
	mov r6, #0
	mov r0, #1
	lsl r0, r0, #0xa
	bl sub_801DACC
loc_801E1F8:
	mov r0, #7
	lsr r1, r6, #1
	// j
	add r0, r0, r1
	// i
	mov r1, #2
	// tileBlock32x32
	mov r2, #3
	ldr r3, off_801E220 // =word_801EE14 
	cmp r6, #9
	bne loc_801E20A
	// tileIds
	ldr r3, off_801E224 // =word_801EE58 
loc_801E20A:
	mov r4, #0x11
	sub r4, r4, r6
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BEB8
	pop {r4-r6,pc}
	.balign 4, 0
off_801E220: .word word_801EE14
off_801E224: .word word_801EE58
	thumb_func_end sub_801E1E4

	thumb_func_start sub_801E228
sub_801E228:
	push {r4-r7,lr}
	cmp r0, #2
	bne loc_801E230
	mov r0, #0x13
loc_801E230:
	mov r7, r0
	ldr r6, off_801E4AC // =eStruct2035280
	ldr r1, [r6,#0x40] // (dword_20352C0 - 0x2035280)
	mov r0, #1
	lsl r0, r0, #8
	tst r1, r0
	beq loc_801E242
	bl sub_801DACC
loc_801E242:
	mov r0, #0x3c 
	strb r0, [r6,#0xb] // (byte_203528B - 0x2035280)
	mov r0, #0
	strb r0, [r6,#0xc] // (byte_203528C - 0x2035280)
	ldr r0, off_801E438 // =TextScript86F0374 
	mov r1, r7
	ldr r2, off_801E43C // =byte_203C4E0 
	ldr r3, dword_801E440 // =0x6009560 
	mov r4, #0x11
	mov r5, #1
	ldr r6, off_801E444 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DA48
	pop {r4-r7,pc}
	thumb_func_end sub_801E228

	thumb_local_start
sub_801E270:
	push {r4-r7,lr}
	ldr r6, off_801E4AC // =eStruct2035280
	ldr r0, [r6,#0x40] // (dword_20352C0 - 0x2035280)
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801E28C
	ldrb r0, [r6,#0xc] // (byte_203528C - 0x2035280)
	cmp r0, #0
	beq locret_801E2B8
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E28C:
	mov r0, #0x3c 
	strb r0, [r6,#0xb] // (byte_203528B - 0x2035280)
	mov r0, #1
	strb r0, [r6,#0xc] // (byte_203528C - 0x2035280)
	ldr r0, off_801E438 // =TextScript86F0374 
	mov r1, #0xe
	ldr r2, off_801E43C // =byte_203C4E0 
	ldr r3, dword_801E440 // =0x6009560 
	mov r4, #0x11
	mov r5, #1
	ldr r6, off_801E444 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DA48
locret_801E2B8:
	pop {r4-r7,pc}
	thumb_func_end sub_801E270

	thumb_func_start sub_801E2BA
sub_801E2BA:
	push {r4-r7,lr}
	push {r0}
	ldr r6, off_801E4AC // =eStruct2035280
	ldr r0, [r6,#0x40] // (dword_20352C0 - 0x2035280)
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801E2D8
	ldrb r0, [r6,#0xc] // (byte_203528C - 0x2035280)
	cmp r0, #0
	beq loc_801E312
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E2D8:
	mov r0, #0x3c 
	strb r0, [r6,#0xb] // (byte_203528B - 0x2035280)
	mov r0, #2
	strb r0, [r6,#0xc] // (byte_203528C - 0x2035280)
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk200a220_Ptr]
	ldr r0, [sp]
	str r0, [r1,#8]
	mov r1, #0xf
	cmp r0, #0
	bne loc_801E2F0
	mov r1, #0x10
loc_801E2F0:
	ldr r0, off_801E438 // =TextScript86F0374 
	ldr r2, off_801E43C // =byte_203C4E0 
	ldr r3, dword_801E440 // =0x6009560 
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_801E444 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DA48
loc_801E312:
	pop {r0}
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r6, off_801E4AC // =eStruct2035280
	ldr r0, [r6,#0x40] // (dword_20352C0 - 0x2035280)
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq loc_801E32C
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E32C:
	mov r0, #0x3c 
	strb r0, [r6,#0xb] // (byte_203528B - 0x2035280)
	mov r0, #3
	strb r0, [r6,#0xc] // (byte_203528C - 0x2035280)
	ldr r0, off_801E438 // =TextScript86F0374 
	mov r1, #0x11
	ldr r2, off_801E43C // =byte_203C4E0 
	ldr r3, dword_801E440 // =0x6009560 
	mov r4, #0x11
	mov r5, #1
	ldr r6, off_801E444 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DA48
	pop {r4-r7,pc}
	thumb_func_end sub_801E2BA

	thumb_local_start
sub_801E35A:
	push {r4,r5,lr}
	mov r0, #0xb
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #0xb
	bl sub_801BED6
	pop {r4,r5,pc}
	thumb_func_end sub_801E35A

	thumb_local_start
sub_801E376:
	push {r4,r5,lr}
	// j
	mov r0, #0xb
	// i
	mov r1, #0
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801E394 // =byte_801EE78
	mov r4, #8
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	lsl r0, r0, #0xb
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0
off_801E394: .word byte_801EE78
	thumb_func_end sub_801E376

	thumb_func_start sub_801E398
sub_801E398:
	push {r4-r7,lr}
	mov r7, r0
	ldr r0, off_801E438 // =TextScript86F0374 
	mov r1, r7
	add r1, #3
	ldr r2, off_801E43C // =byte_203C4E0 
	ldr r3, dword_801E440 // =0x6009560 
	mov r4, #8
	mov r5, #1
	ldr r6, off_801E444 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #1
	lsl r0, r0, #0xb
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0xb
	bl sub_801DA48
	pop {r4-r7,pc}
	thumb_func_end sub_801E398

	thumb_local_start
sub_801E3C4:
	push {r4,r5,lr}
	mov r0, #0xb
	mov r1, #0x10
	mov r2, #3
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl call_sub_3005EBA
	ldr r0, dword_801E3E0 // =0x100000 
	bl sub_801BEC2
	pop {r4,r5,pc}
	.balign 4, 0
dword_801E3E0: .word 0x100000
	thumb_func_end sub_801E3C4

	thumb_local_start
sub_801E3E4:
	push {r4,r5,lr}
	// j
	mov r0, #0xb
	// i
	mov r1, #0x10
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801E404 // =byte_801EF10
	mov r4, #8
	mov r5, #2
	bl CopyBackgroundTiles
	ldr r0, dword_801E400 // =0x100000 
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0
dword_801E400: .word 0x100000
off_801E404: .word byte_801EF10
	thumb_func_end sub_801E3E4

	thumb_func_start sub_801E408
sub_801E408:
	push {r4-r7,lr}
	ldr r1, off_801E4AC // =eStruct2035280
	mov r0, #0x32 
	strh r0, [r1,#0x32] // (word_20352B2 - 0x2035280)
	ldr r0, off_801E438 // =TextScript86F0374 
	mov r1, #0x12
	ldr r2, off_801E43C // =byte_203C4E0 
	ldr r3, dword_801E448 // =0x60098e0 
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_801E444 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #1
	lsl r0, r0, #0x14
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0x14
	bl sub_801DA48
	pop {r4-r7,pc}
	.balign 4, 0
off_801E438: .word TextScript86F0374
off_801E43C: .word byte_203C4E0
dword_801E440: .word 0x6009560
off_801E444: .word dword_86B7AE0
dword_801E448: .word 0x60098E0
	thumb_func_end sub_801E408

	thumb_local_start
sub_801E44C:
	push {r4,r5,lr}
	mov r0, #0x13
	mov r1, #4
	mov r2, #3
	mov r3, #0
	mov r4, #0xb
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801E44C

	thumb_local_start
sub_801E468:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801E468

	thumb_func_start sub_801E474
sub_801E474:
	push {lr}
	ldr r1, off_801E4AC // =eStruct2035280
	strb r0, [r1,#0xb] // (byte_203528B - 0x2035280)
	ldr r1, off_801E49C // =off_801E4A0 
	lsl r0, r0, #2
	// dataList
	ldr r0, [r1,r0]
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	ldr r1, off_801E4AC // =byte_2035280 
	mov r0, #0x3f 
	strb r0, [r1]
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_801DA48
	pop {pc}
	.balign 4, 0
off_801E49C: .word off_801E4A0
off_801E4A0: .word off_801EF30
	.word off_801EF4C
	.word off_801EF68
off_801E4AC: .word eStruct2035280
	thumb_func_end sub_801E474

	thumb_local_start
sub_801E4B0:
	push {r4-r6,lr}
	mov r1, #0
	mov r6, r5
	add r6, #0x28 
loc_801E4B8:
	ldrh r2, [r6]
	cmp r2, #0xff
	beq loc_801E4EA
	cmp r2, #9
	blt loc_801E4C4
	mov r2, #8
loc_801E4C4:
	mov r0, #0x1d
	sub r0, r0, r2
	add r4, r2, #1
	mov r5, #2
	mov r2, #0
	mov r3, #0
	push {r1}
	push {r0,r1,r3-r5}
	bl call_sub_3005EBA
	pop {r0,r1,r3-r5}
	mov r2, #3
	bl call_sub_3005EBA
	pop {r1}
	add r1, #2
	add r6, #2
	cmp r1, #8
	bne loc_801E4B8
loc_801E4EA:
	mov r0, #1
	lsl r0, r0, #0xd
	bl sub_801BEC2
	pop {r4-r6,pc}
	thumb_func_end sub_801E4B0

	thumb_local_start
sub_801E4F4:
	push {r4-r7,lr}
	sub sp, sp, #0x28
	mov r7, #0x28 
	add r7, r7, r5
	mov r4, #0
loc_801E4FE:
	ldrh r6, [r7]
	cmp r6, #0xff
	beq loc_801E568
	cmp r6, #0
	beq loc_801E560
	cmp r6, #9
	blt loc_801E51C
	mov r6, #9
	mov r3, sp
	add r2, r3, r6
	add r2, r2, r6
	ldr r0, word_801E5D8 // =0xd1d6
	add r0, #2
	add r1, r0, #1
	b loc_801E536
loc_801E51C:
	mov r3, sp
	add r2, r3, r6
	add r2, r2, r6
	add r2, #2
	// r2 = sp + r6*2 + 2
	ldr r0, word_801E5D8 // =0xd1d6
	strh r0, [r3]
	add r0, #1
	strh r0, [r2]
	add r3, #2
	add r2, #2
	add r0, #1
	add r1, r0, #1
	beq loc_801E542
loc_801E536:
	strh r0, [r3]
	strh r1, [r2]
	add r2, #2
	add r3, #2
	sub r6, #1
	bne loc_801E536
loc_801E542:
	// i
	mov r1, r4
	// tileBlock32x32
	mov r2, #3
	// tileIds
	mov r3, sp
	push {r4}
	mov r0, #0x1d
	ldrb r4, [r7]
	cmp r4, #9
	blt loc_801E554
	mov r4, #8
loc_801E554:
	// j
	sub r0, r0, r4
	add r4, #1
	mov r5, #2
	bl CopyBackgroundTiles
	pop {r4}
loc_801E560:
	add r7, #2
	add r4, #2
	cmp r4, #8
	blt loc_801E4FE
loc_801E568:
	mov r0, #1
	lsl r0, r0, #0xd
	bl sub_801BEB8
	add sp, sp, #0x28
	pop {r4-r7,pc}
	thumb_func_end sub_801E4F4

	thumb_func_start sub_801E574
sub_801E574:
	push {r4,r5,r7,lr}
	mov r1, #0xff
	ldr r0, off_801E77C // =eStruct2035280
	add r0, #0x28 
	strh r1, [r0]
	strh r1, [r0,#0x2] // (word_20352AA - 0x20352a8)
	strh r1, [r0,#0x4] // (word_20352AC - 0x20352a8)
	strh r1, [r0,#0x6] // (word_20352AE - 0x20352a8)
	mov r4, r0
	bl sub_800A998
	push {r0}
	pop {r0}
	ldr r2, off_801E5C8 // =byte_203EBA0 
	ldr r3, dword_801E5CC // =0x600bb40 
	ldr r6, off_801E5D0 // =dword_86B7AE0 
loc_801E594:
	push {r0,r2-r4,r6}
	ldrh r0, [r4]
	push {r2,r3}
	bl sub_800EC56
	pop {r2,r3}
	mov r4, #9
	mov r5, #1
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r7, r0
	pop {r0,r2-r4,r6}
	ldr r1, off_801E5D4 // =0x240 
	add r2, r2, r1
	add r3, r3, r1
	strh r7, [r4]
	add r4, #2
	sub r0, #1
	bne loc_801E594
	mov r0, #1
	lsl r0, r0, #0xd
	bl sub_801DA48
	pop {r4,r5,r7,pc}
	.balign 4, 0
off_801E5C8: .word byte_203EBA0
dword_801E5CC: .word 0x600BB40
off_801E5D0: .word dword_86B7AE0
off_801E5D4: .word 0x240
word_801E5D8: .hword 0xD1D6, 0x0, 0x1A0, 0x0
	thumb_func_end sub_801E574

	thumb_local_start
sub_801E5E0:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0xe
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801E5E0

	thumb_local_start
sub_801E5EC:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0xe
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801E5EC

	thumb_func_start sub_801E5F8
sub_801E5F8:
	push {r4,r5,lr}
	ldr r5, off_801E77C // =eStruct2035280
	mov r0, #0
	strb r0, [r5,#0x12] // (byte_2035292 - 0x2035280)
	mov r0, #0xff
	strb r0, [r5,#0x13] // (byte_2035293 - 0x2035280)
	strb r0, [r5,#0x17] // (eStruct2035280_NaviStatusGfxIdx17 - 0x2035280)
	mov r0, #0xff
	strb r0, [r5,#0x15] // (byte_2035295 - 0x2035280)
	mov r1, #0x78 
	strh r1, [r5,#0x38] // (word_20352B8 - 0x2035280)
	mov r4, #0
	bl GetBattleEffects // () -> int
	ldr r1, dword_801E654 // =0x200000 
	tst r0, r1
	bne loc_801E63E
	bl GetBattleMode
	cmp r0, #1
	beq loc_801E63E
	cmp r0, #2
	beq loc_801E63E
	cmp r0, #3
	beq loc_801E63E
	cmp r0, #4
	beq loc_801E63E
	cmp r0, #5
	beq loc_801E63E
	cmp r0, #8
	beq loc_801E63E
	bl sub_813BF1C
	beq loc_801E63E
	mov r4, #1
loc_801E63E:
	strb r4, [r5,#0x1e] // (byte_203529E - 0x2035280)
	mov r0, #1
	lsl r0, r0, #0xe
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0xe
	bl sub_801DA48
	pop {r4,r5,pc}
	.balign 4, 0
dword_801E654: .word 0x200000
	thumb_func_end sub_801E5F8

	thumb_func_start sub_801E658
sub_801E658:
	mov r0, #0
	ldr r1, off_801E77C // =eStruct2035280
	strb r0, [r1,#0x1e] // (byte_203529E - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801E658

	thumb_func_start sub_801E660
sub_801E660:
	push {r4,r6,lr}
	mov r4, r0
	ldr r2, off_801E6FC // =byte_801E700 
	ldrb r6, [r2,r4]
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl callPossiblyGetBattleEmotion_8015B54
	cmp r4, #0xb
	beq loc_801E678
	cmp r4, #0xc
	bne loc_801E684
loc_801E678:
	ldr r2, off_801E6F0 // =byte_801E6F4
	ldrb r0, [r2,r0]
	cmp r0, #3
	bne loc_801E696
	add r6, #1
	b loc_801E696
loc_801E684:
	cmp r4, #1
	blt loc_801E696
	cmp r4, #0xa
	bgt loc_801E696
	ldr r2, off_801E6F0 // =byte_801E6F4
	ldrb r0, [r2,r0]
	cmp r0, #2
	bne loc_801E696
	add r6, #5
loc_801E696:
	mov r0, r6
	mov r1, r3
	pop {r4,r6,pc}
	thumb_func_end sub_801E660

	thumb_local_start
sub_801E69C:
	push {r4,r6,lr}
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#0x16]
	bl sub_8015B5C
	b loc_801E6B2
	thumb_func_end sub_801E69C

	thumb_local_start
sub_801E6A8:
	push {r4,r6,lr}
	ldr r0, [r5,#0x48]
	ldrb r0, [r0,#oBattleObject_Alliance]
	bl callPossiblyGetBattleEmotion_8015B54
loc_801E6B2:
	cmp r1, #0
	bne loc_801E6BE
	ldr r2, off_801E6F0 // =byte_801E6F4
	ldrb r0, [r2,r0]
	mov r1, r3
	b locret_801E6EE
loc_801E6BE: .align 1, 0
	mov r4, r1
	ldr r2, off_801E6FC // =byte_801E700 
	ldrb r6, [r2,r4]
	cmp r4, #0xb
	beq loc_801E6CC
	cmp r4, #0xc
	bne loc_801E6D8
loc_801E6CC:
	ldr r2, off_801E6F0 // =byte_801E6F4
	ldrb r0, [r2,r0]
	cmp r0, #3
	bne loc_801E6EA
	add r6, #1
	b loc_801E6EA
loc_801E6D8:
	cmp r4, #1
	blt loc_801E6EA
	cmp r4, #0xa
	bgt loc_801E6EA
	ldr r2, off_801E6F0 // =byte_801E6F4
	ldrb r0, [r2,r0]
	cmp r0, #2
	bne loc_801E6EA
	add r6, #5
loc_801E6EA:
	mov r0, r6
	mov r1, r3
locret_801E6EE:
	pop {r4,r6,pc}
off_801E6F0: .word byte_801E6F4
byte_801E6F4: .byte 0x0, 0x2, 0x3, 0x1, 0x5, 0x4, 0x0, 0x0
off_801E6FC: .word byte_801E700
byte_801E700: .byte 0x0, 0x5, 0x6, 0x7, 0x8, 0x9, 0x5, 0x6, 0x7, 0x8, 0x9, 0x14, 0x14, 0xF, 0x10, 0x11, 0x12, 0x13, 0xf, 0x10, 0x11, 0x12, 0x13, 0x16, 0x16, 0x0, 0x0, 0x0
	thumb_func_end sub_801E6A8

	thumb_func_start sub_801E71C
sub_801E71C:
	push {r1,lr}
	ldr r1, off_801E77C // =eStruct2035280
	strb r0, [r1,#0x12] // (byte_2035292 - 0x2035280)
	pop {r1,pc}
	thumb_func_end sub_801E71C

	thumb_func_start sub_801E724
sub_801E724:
	push {r5,lr}
	ldr r5, off_801E77C // =eStruct2035280
	ldrb r2, [r5,#0x17] // (eStruct2035280_NaviStatusGfxIdx17 - 0x2035280)
	cmp r2, #0xff
	bne loc_801E730
	ldrb r2, [r5,#0x15] // (byte_2035295 - 0x2035280)
loc_801E730:
	strb r2, [r5,#0x1f] // (byte_203529F - 0x2035280)
	strb r1, [r5,#0x16] // (byte_2035296 - 0x2035280)
	strb r0, [r5,#0x17] // (eStruct2035280_NaviStatusGfxIdx17 - 0x2035280)
	mov r0, #0xff
	strb r0, [r5,#0x13] // (byte_2035293 - 0x2035280)
	pop {r5,pc}
	thumb_func_end sub_801E724

	thumb_local_start
sub_801E73C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0xf
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801E73C

	thumb_local_start
sub_801E748:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0xf
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801E748

	thumb_func_start sub_801E754
sub_801E754:
	push {r1,r2,lr}
	ldr r2, off_801E77C // =eStruct2035280
	ldr r1, [r2,#0x40] // (dword_20352C0 - 0x2035280)
	mov r0, #1
	lsl r0, r0, #0xf
	and r0, r1
	beq locret_801E778
	mov r0, #1
	ldr r2, off_801E924 // =byte_2036840 
	ldrb r1, [r2,#0x8] // (byte_2036848 - 0x2036840)
	cmp r1, #4
	beq loc_801E770
	cmp r1, #2
	bne locret_801E778
loc_801E770:
	ldrb r1, [r2]
	cmp r1, #4
	bne locret_801E778
	mov r0, #2
locret_801E778:
	pop {r1,r2,pc}
	.balign 4, 0
off_801E77C: .word eStruct2035280
	thumb_func_end sub_801E754

	thumb_func_start sub_801E780
sub_801E780:
	ldr r2, off_801E924 // =byte_2036840 
	ldrb r1, [r2,#0x8] // (byte_2036848 - 0x2036840)
	cmp r1, #4
	beq loc_801E78C
	cmp r1, #2
	bne locret_801E790
loc_801E78C:
	mov r0, #0x2d 
	strb r0, [r2,#0x7] // (byte_2036847 - 0x2036840)
locret_801E790:
	mov pc, lr
	thumb_func_end sub_801E780

	thumb_func_start sub_801E792
sub_801E792:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	ldr r3, off_801E824 // =eStruct2035280
	ldr r3, [r3,#0x40] // (dword_20352C0 - 0x2035280)
	mov r0, #1
	lsl r0, r0, #0xf
	tst r0, r3
	bne loc_801E81C
	ldr r5, off_801E924 // =byte_2036840 
	mov r2, #0
	strb r2, [r5,#0x7] // (byte_2036847 - 0x2036840)
	strb r2, [r5]
	bl sub_802FE48
	cmp r0, #0xff
	beq loc_801E81C
	strb r0, [r5,#0x6] // (byte_2036846 - 0x2036840)
	mov r3, r0
	mov r0, #0
	mov r1, #0x40 
	mov r2, #0xe0
	bl sub_802FE7A
	ldr r0, [sp]
	cmp r0, #0
	bne loc_801E7D8
	ldr r1, [sp,#4]
	cmp r1, #0
	beq loc_801E7D8
	mov r0, #0x30 
	str r0, [sp]
loc_801E7D8:
	strb r0, [r5,#0x1] // (byte_2036841 - 0x2036840)
	ldr r1, off_801E928 // =pt_801EF84 
	ldr r4, [r1,r0]
	ldrh r0, [r4]
	strh r0, [r5,#0x2] // (word_2036842 - 0x2036840)
	ldrb r0, [r4,#2]
	strb r0, [r5,#0x8] // (byte_2036848 - 0x2036840)
	lsl r0, r0, #2
	ldr r6, off_801E940 // =off_801E944 
	ldr r6, [r6,r0]
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	mov lr, pc
	bx r6
	mov r0, #1
	lsl r0, r0, #0xf
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0xf
	bl sub_801DA48
	ldrb r0, [r5,#0x1] // (byte_2036841 - 0x2036840)
	cmp r0, #0x24 
	bne loc_801E816
	mov r0, #1
	lsl r0, r0, #8
	bl sub_801DACC
loc_801E816:
	mov r0, #0
	add sp, sp, #0xc
	pop {r4-r7,pc}
loc_801E81C:
	mov r0, #1
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.balign 4, 0
off_801E824: .word eStruct2035280
	thumb_func_end sub_801E792

	thumb_local_start
sub_801E828:
	push {lr}
	cmp r1, #0x63 
	ble loc_801E830
	mov r1, #0x63 
loc_801E830:
	strb r1, [r5,#9]
	bl sub_801E838
	pop {pc}
	thumb_func_end sub_801E828

	thumb_local_start
sub_801E838:
	push {r4-r7,lr}
	add r7, r4, #4
	mov r4, #5
	ldr r1, dword_801E92C // =0x6016e00 
	mov r2, #0x20 
loc_801E842:
	mov r6, #4
loc_801E844:
	ldr r0, [r7]
	ldr r3, off_801E958 // =byte_801FDC0
	cmp r0, r3
	beq loc_801E84E
	add r7, #4
loc_801E84E:
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add r0, #0x20 
	add r1, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	sub r1, #0x60 
	sub r6, #1
	bne loc_801E844
	add r1, #0x80
	sub r4, #1
	bne loc_801E842
	ldrb r0, [r5,#8]
	cmp r0, #1
	bne loc_801E8C0
	ldr r0, [r7]
	ldr r1, off_801E958 // =byte_801FDC0
	cmp r0, r1
	bne loc_801E876
	add r7, #4
loc_801E876:
	ldrh r0, [r7]
	strh r0, [r5,#4]
	ldrb r0, [r5,#9]
	bl sub_8000C00
	mov r7, #0xf
	and r7, r0
	lsr r6, r0, #4
	bne loc_801E890
	mov r6, #0xa
	ldrb r0, [r5,#4]
	sub r0, #4
	strb r0, [r5,#4]
loc_801E890:
	ldr r3, off_801E930 // =off_801FD64 
	lsl r6, r6, #2
	ldr r6, [r3,r6]
	lsl r7, r7, #2
	ldr r7, [r3,r7]
	mov r2, #0x20 
	ldr r1, dword_801E934 // =0x6017300 
	mov r0, r6
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add r1, #0x20 
	mov r0, r7
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, r6
	add r0, #0x20 
	add r1, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, r7
	add r0, #0x20 
	add r1, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
loc_801E8C0:
	ldr r0, off_801E938 // =byte_86F2900 
	ldr r1, off_801E93C // =byte_30016B0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_801E838

	thumb_local_start
sub_801E8CC:
	push {r4,lr}
	mov r4, #0
	push {r0}
	bl sub_801E95C
	pop {r0}
	cmp r0, #0x50 
	bne locret_801E8E8
	ldrb r0, [r5,#0xc]
	cmp r0, #0
	beq locret_801E8E8
	ldrb r0, [r5,#2]
	sub r0, #0x10
	strb r0, [r5,#2]
locret_801E8E8:
	pop {r4,pc}
	thumb_func_end sub_801E8CC

	thumb_local_start
sub_801E8EA:
	push {lr}
	mov r3, #0
	strb r3, [r5,#0xe]
	bl sub_801E8FA
	bl sub_801E838
	pop {pc}
	thumb_func_end sub_801E8EA

	thumb_local_start
sub_801E8FA:
	push {r4,lr}
	bl sub_801EAEC
	mov r4, r2
	mov r0, r1
	bl sub_8000C00
	strh r0, [r5,#0xa]
	mov r0, r4
	bl sub_8000C00
	strh r2, [r5,#0xc]
	pop {r4,pc}
	thumb_func_end sub_801E8FA

	thumb_func_start sub_801E914
sub_801E914:
	push {r4,r5,lr}
	ldr r5, off_801E924 // =byte_2036840 
	mov r2, r1
	mov r1, r0
	bl sub_801E8FA
	pop {r4,r5,pc}
	.balign 4, 0
off_801E924: .word byte_2036840
off_801E928: .word pt_801EF84
dword_801E92C: .word 0x6016E00
off_801E930: .word off_801FD64
dword_801E934: .word 0x6017300
off_801E938: .word byte_86F2900
off_801E93C: .word byte_30016B0
off_801E940: .word off_801E944
off_801E944: .word sub_801E828+1
	.word sub_801E828+1
	.word sub_801E828+1
	.word sub_801E8CC+1
	.word sub_801E8EA+1
off_801E958: .word byte_801FDC0
	thumb_func_end sub_801E914

	thumb_local_start
sub_801E95C:
	push {r4-r7,lr}
	mov r6, #0
	strb r6, [r5,#7]
	strb r6, [r5]
	strb r6, [r5,#1]
	strh r6, [r5,#0xa]
	strb r6, [r5,#0xc]
	strh r3, [r5,#4]
	push {r1,r2,r4,r5}
	ldrh r0, [r5,#4]
	bl sub_8027D10
	bl sub_801EA5A
	mov r4, #8
	mov r5, #1
	ldr r6, off_801EAA0 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r2-r5}
	strb r0, [r5,#9]
	push {r2,r3}
	// idx
	ldrh r0, [r5,#4]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #2
	tst r0, r1
	pop {r2,r3}
	beq loc_801E9FC
	ldr r0, dword_801EAE4 // =0x8000 
	tst r0, r2
	beq loc_801E9A6
	bic r2, r0
	mov r0, #1
	strb r0, [r5,#0xc]
loc_801E9A6:
	ldr r0, dword_801EAE8 // =0x7800 
	bic r2, r0
	cmp r2, #0
	beq loc_801E9FC
	push {r3-r5}
	lsl r6, r4, #2
	mov r0, r2
	bl sub_8000C00
	mov r4, r0
	bl sub_8000C5C
	strb r0, [r5,#0xa]
	ldr r1, dword_801EA6C // =0xaaaa 
	lsl r0, r0, #2
	lsl r1, r0
	orr r4, r1
	ldr r1, off_801EA78 // =dword_801EA7C 
	ldr r1, [r1,r6]
	bl sub_801EA34
	pop {r0,r4,r5}
	ldr r1, dword_801EAE8 // =0x7800 
	bic r0, r1
	cmp r0, #0
	beq loc_801E9FC
	push {r4}
	bl sub_8000C00
	mov r4, r0
	bl sub_8000C5C
	add r1, r0, #1
	strb r1, [r5,#0xb]
	ldr r1, dword_801EA70 // =0xaaab 
	lsl r0, r0, #2
	lsl r1, r0
	orr r4, r1
	ldr r1, off_801EA84 // =dword_801EA88 
	ldr r1, [r1,r6]
	bl sub_801EA34
	pop {r4}
loc_801E9FC:
	ldrb r1, [r5,#9]
	ldrb r0, [r5,#0xa]
	add r1, r1, r0
	ldrb r0, [r5,#0xb]
	add r1, r1, r0
	mov r0, #0xf
	sub r0, r0, r1
	lsl r0, r0, #2
	ldrb r1, [r5,#0xc]
	lsl r1, r1, #4
	mul r1, r4
	sub r0, r0, r1
	ldrb r1, [r5,#2]
	add r0, r0, r1
	strb r0, [r5,#2]
	ldr r0, off_801EA90 // =dword_86E1C78 
	ldr r1, off_801EA94 // =byte_30016B0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	// dataList
	ldr r0, off_801EAAC // =off_801EAB0 
	bl QueueGFXTransfersInList // (u32 *dataRefs) -> void
	mov r0, #0
	pop {r4-r7,pc}
	pop {r1-r3,r5}
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_801E95C

	thumb_local_start
sub_801EA34:
	push {r6,lr}
	ldr r6, off_801EA74 // =off_801FD90 
	mov r7, #4
	mov r2, #0x20 
loc_801EA3C:
	mov r0, #0xf
	and r0, r4
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	add r0, r0, r2
	add r1, #0x80
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	sub r1, #0xa0
	lsr r4, r4, #4
	sub r7, #1
	bne loc_801EA3C
	pop {r6,pc}
	thumb_func_end sub_801EA34

	thumb_local_start
sub_801EA5A:
	ldr r2, [sp,#8]
	cmp r2, #1
	beq loc_801EA66
	ldr r2, off_801EA98 // =byte_203EDA0 
	ldr r3, dword_801EA9C // =0x6016e00 
	mov pc, lr
loc_801EA66:
	ldr r2, off_801EAA4 // =byte_203EFA0 
	ldr r3, dword_801EAA8 // =0x6017280 
	mov pc, lr
	.balign 4, 0
dword_801EA6C: .word 0xAAAA
dword_801EA70: .word 0xAAAB
off_801EA74: .word off_801FD90
off_801EA78: .word dword_801EA7C
dword_801EA7C: .word 0x6017060
	.word 0x60174E0
off_801EA84: .word dword_801EA88
dword_801EA88: .word 0x6017160
	.word 0x60175E0
off_801EA90: .word dword_86E1C78
off_801EA94: .word byte_30016B0
off_801EA98: .word byte_203EDA0
dword_801EA9C: .word 0x6016E00
off_801EAA0: .word dword_86B7AE0
off_801EAA4: .word byte_203EFA0
dword_801EAA8: .word 0x6017280
off_801EAAC: .word off_801EAB0
off_801EAB0: .word dword_86BA120
	.word 0x6017200
	.word 0x20
	.word byte_86BA140
	.word 0x6017240
	.word 0x20
	.word dword_86B7BA0
	.word 0x6017220
	.word 0x20
	.word byte_86B7BC0
	.word 0x6017260
	.word 0x20
	.word 0x0
dword_801EAE4: .word 0x8000
dword_801EAE8: .word 0x7800
	thumb_func_end sub_801EA5A

	thumb_local_start
sub_801EAEC:
	ldr r3, dword_801EAFC // =0x270f 
	cmp r1, r3
	ble loc_801EAF4
	mov r1, r3
loc_801EAF4:
	cmp r2, r3
	ble locret_801EAFA
	mov r2, r3
locret_801EAFA:
	mov pc, lr
dword_801EAFC: .word 0x270F
	thumb_func_end sub_801EAEC

	thumb_local_start
sub_801EB00:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801EB00

	thumb_local_start
sub_801EB0C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801EB0C

	thumb_func_start sub_801EB18
sub_801EB18:
	push {r4,r5,lr}
	mov r4, #0x50 // (pt_801EFD4 - 0x801ef84)
	ldr r3, off_801EB4C // =pt_801EF84 
	ldr r3, [r3,r4]
	ldr r5, off_801EB48 // =unk_2036850 
	ldrh r4, [r3]
	strh r4, [r5,#0x2] // (word_2036852 - 0x2036850)
	ldrb r4, [r3,#0x2] // (byte_801F556 - 0x801f554)
	strb r4, [r5,#0x8] // (byte_2036858 - 0x2036850)
	mov r4, #1
	mov r3, r0
	bl sub_801E95C
	mov r4, #0x3c 
	strb r4, [r5,#0x7] // (byte_2036857 - 0x2036850)
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801DA48
	pop {r4,r5,pc}
	.balign 4, 0
off_801EB48: .word unk_2036850
off_801EB4C: .word pt_801EF84
	thumb_func_end sub_801EB18

	thumb_local_start
sub_801EB50:
	push {r4,r5,lr}
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #0
	mov r1, #0x12
	mov r2, #0
	mov r3, #0
	mov r4, #0x1e
	mov r5, #2
	bl call_sub_3005EBA
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801EB50

	thumb_local_start
sub_801EB7C:
	push {lr}
	// j
	mov r0, #0
	// i
	mov r1, #0x12
	// tileBlock32x32
	mov r2, #3
	// tileIds
	ldr r3, off_801EB98 // =byte_801EE98
	mov r4, #0x1e
	mov r5, #2
	bl CopyBackgroundTiles
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_801BEB8
	pop {pc}

	.balign 4, 0
off_801EB98: .word byte_801EE98
	thumb_func_end sub_801EB7C

	thumb_local_start
sub_801EB9C:
	push {r4,r6,r7,lr}
	ldr r0, off_801EBC0 // =dword_86EA92C 
	ldr r1, off_801EBC4 // =unk_3001AC0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_801DA48
	mov r0, #0
	ldr r1, off_801ECB0 // =eStruct2035280
	strb r0, [r1,#0x1a] // (byte_203529A - 0x2035280)
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_801EBC0: .word dword_86EA92C
off_801EBC4: .word unk_3001AC0
	thumb_func_end sub_801EB9C

	thumb_local_start
sub_801EBC8:
	ldr r1, off_801ECB0 // =eStruct2035280
	strb r0, [r1,#0x1a] // (byte_203529A - 0x2035280)
	mov r0, #0
	strh r0, [r1,#0x30] // (word_20352B0 - 0x2035280)
	mov pc, lr
	thumb_func_end sub_801EBC8

	thumb_local_start
sub_801EBD2:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0x13
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801EBD2

	thumb_local_start
sub_801EBDE:
	push {lr}
	ldr r0, off_801EBF4 // =dword_86E97CC 
	ldr r1, dword_801EBF8 // =0x6017800 
	ldr r2, off_801EBFC // =0x100 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #1
	lsl r0, r0, #0x13
	bl sub_801BEB8
	pop {pc}
	.balign 4, 0
off_801EBF4: .word dword_86E97CC
dword_801EBF8: .word 0x6017800
off_801EBFC: .word 0x100
	push {lr}
	ldr r0, off_801EC24 // =dword_86E9A0C 
	ldr r1, off_801EC28 // =byte_30016D0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	ldr r0, dword_801EC20 // =0x80000 
	bl sub_801BECC
	ldr r0, dword_801EC20 // =0x80000 
	bl sub_801DA48
	mov r0, #0
	ldr r1, off_801ECB0 // =eStruct2035280
	strh r0, [r1,#0x34] // (word_20352B4 - 0x2035280)
	pop {pc}
dword_801EC20: .word 0x80000
off_801EC24: .word dword_86E9A0C
off_801EC28: .word byte_30016D0
	thumb_func_end sub_801EBDE

	thumb_local_start
sub_801EC2C:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0x15
	bl sub_801BEC2
	pop {pc}
	thumb_func_end sub_801EC2C

	thumb_local_start
sub_801EC38:
	push {lr}
	mov r0, #1
	lsl r0, r0, #0x15
	bl sub_801BEB8
	pop {pc}
	thumb_func_end sub_801EC38

	thumb_func_start sub_801EC44
sub_801EC44:
	push {r4,r6,r7,lr}
	ldr r0, off_801EC74 // =dword_86E994C 
	ldr r1, dword_801EC78 // =0x6016d00 
	mov r2, #0xc0
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	ldr r0, off_801EC7C // =dword_86E9A0C 
	ldr r1, off_801EC80 // =byte_30016F0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #1
	lsl r0, r0, #0x15
	bl sub_801BECC
	mov r0, #1
	lsl r0, r0, #0x15
	bl sub_801DA48
	ldr r1, off_801ECB0 // =eStruct2035280
	mov r0, #0x3c 
	strb r0, [r1,#0x1b] // (byte_203529B - 0x2035280)
	pop {r4,r6,r7,pc}
	.balign 4, 0
off_801EC74: .word dword_86E994C
dword_801EC78: .word 0x6016D00
off_801EC7C: .word dword_86E9A0C
off_801EC80: .word byte_30016F0
	thumb_func_end sub_801EC44

	thumb_local_start
sub_801EC84:
	push {r4,r5,lr}
	mov r0, #1
	lsl r0, r0, #0x16
	bl sub_801BEC2
	pop {r4,r5,pc}
	thumb_func_end sub_801EC84

	thumb_local_start
sub_801EC90:
	push {r4,r5,lr}
	ldr r0, off_801ECA8 // =dword_86E9A0C 
	ldr r1, off_801ECAC // =byte_30016D0 
	mov r2, #0x20 
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
	mov r0, #1
	lsl r0, r0, #0x16
	bl sub_801BEB8
	pop {r4,r5,pc}
	.balign 4, 0
off_801ECA8: .word dword_86E9A0C
off_801ECAC:
	// <endpool>
	.word byte_30016D0
	thumb_func_end sub_801EC90

off_801ECB0: .word eStruct2035280
/*For debugging purposes, connect comment at any range!*/
