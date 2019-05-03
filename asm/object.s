
	thumb_func_start sub_800B884
sub_800B884:
	push {lr}
	push {r1}
	bl sub_800BF5C
	pop {r1}
	strb r1, [r0,#1]
	pop {pc}
	thumb_func_end sub_800B884

	thumb_func_start sub_800B892
sub_800B892:
	push {lr}
	bl sub_800BF5C
	ldrb r0, [r0,#1]
	pop {pc}
	thumb_func_end sub_800B892

	thumb_func_start sub_800B89C
sub_800B89C:
	push {lr}
	bl sub_800BF5C
	mov r1, #0
	strb r1, [r0,#1]
	mov r1, #0
	str r1, [r0,#8]
	pop {pc}
	thumb_func_end sub_800B89C

	thumb_func_start sub_800B8AC
sub_800B8AC:
	push {r4,lr}
	mov r4, r0
	mov r0, #0
	bl sub_800BF5C
	strb r4, [r0]
	mov r0, #1
	bl sub_800BF5C
	strb r4, [r0]
	pop {r4,pc}
	thumb_func_end sub_800B8AC

	thumb_local_start
sub_800B8C2:
	push {lr}
	push {r0}
	bl sub_800BF5C
	ldrb r1, [r0]
	pop {r2}
	mov r0, #0
	cmp r1, r2
	bne locret_800B8D6
	mov r0, #1
locret_800B8D6:
	pop {pc}
	thumb_func_end sub_800B8C2

	thumb_func_start sub_800B8D8
sub_800B8D8:
	push {lr}
	push {r0}
	bl sub_800BF5C
	ldrb r1, [r0,#3]
	pop {r2}
	mov r0, #0
	cmp r1, r2
	bne locret_800B8EC
	mov r0, #1
locret_800B8EC:
	pop {pc}
	thumb_func_end sub_800B8D8

	thumb_func_start sub_800B8EE
sub_800B8EE:
	push {r4,lr}
	mov r1, #1
	eor r0, r1
	mov r1, #3
	mul r0, r1
	add r0, #2
	mov r1, #4
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x78
	lsl r3, r3, #0x10
	mov r4, #0x1e
	bl SpawnT4BattleObjectWithId0
	mov r0, #0xa5
	bl PlaySoundEffect
	pop {r4,pc}
	thumb_func_end sub_800B8EE

	thumb_func_start object_timefreezeBegin
object_timefreezeBegin:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	bne loc_800B928
	mov r0, #0x40
	bl sub_801DACC
loc_800B928:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8D8
	tst r0, r0
	beq loc_800B938
	mov r0, #4
	bl battle_setFlags
loc_800B938:
	ldrb r0, [r5,#oBattleObject_Alliance]
	lsl r0, r0, #2
	ldr r1, off_800B948 // =dword_200F3B8
	mov r2, #0
	str r2, [r1,r0]
	mov r0, #CUR_STATE_UPDATE
	strb r0, [r5,#oBattleObject_CurState]
	pop {pc}
off_800B948: .word dword_200F3B8
	thumb_func_end object_timefreezeBegin

	thumb_func_start object_dimScreen
object_dimScreen:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800B964
	mov r0, #0x3c
	mov r1, #4
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_800B964:
	ldrh r0, [r5,#oBattleObject_Timer]
	add r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_800B97C
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800B97C:
	pop {pc}
	thumb_func_end object_dimScreen

	thumb_func_start sub_800B97E
sub_800B97E:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800B996
	mov r0, #0x78
	mov r1, #0x80
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #0
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_800B996:
	ldrh r0, [r5,#oBattleObject_Timer]
	add r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_800B9AE
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800B9AE:
	pop {pc}
	thumb_func_end sub_800B97E

	thumb_func_start object_drawChipName
object_drawChipName:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BA28
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #3
	beq loc_800B9D4
	cmp r0, #0
	beq loc_800B9D4
	b locret_800BA88
loc_800B9D4:
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801BED6
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_801DACC
	ldrh r0, [r5,#oBattleObject_Unk_30] // idx
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r1, #0
	mov r2, #0
	ldrb r3, [r0,#9]
	lsr r3, r3, #2
	bcc loc_800B9F8
	ldrh r1, [r5,#oBattleObject_Damage]
	ldrh r2, [r5,#oBattleObject_Unk_32]
loc_800B9F8:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	push {r0-r2}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	pop {r0-r2}
	bne loc_800BA12
	mov r3, r0
	mov r0, #0x4c
	bl sub_801E792
	b loc_800BA1A
loc_800BA12:
	mov r3, r0
	mov r0, #0x50
	bl sub_801E792
loc_800BA1A:
	mov r0, #0x74
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b locret_800BA88
loc_800BA28:
	bl sub_801E754
	tst r0, r0
	bne locret_800BA88
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8C2
	tst r0, r0
	bne loc_800BA56
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #0
	beq loc_800BA56
	cmp r0, #5
	beq loc_800BA56
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	bl sub_800B884
	b locret_800BA88
loc_800BA56:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #4
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF5C
	ldrb r1, [r0,#2]
	tst r1, r1
	bne loc_800BA7E
	ldr r1, [r0,#0xc]
	ldrh r2, [r1,#0x24]
	tst r2, r2
	bne loc_800BA7E
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_800BA88
loc_800BA7E:
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800BA88:
	pop {pc}
	thumb_func_end object_drawChipName

	thumb_func_start sub_800BA8A
sub_800BA8A:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BB08
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B892
	cmp r0, #4
	beq loc_800BAB8
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #3
	beq loc_800BAB8
	cmp r0, #0
	beq loc_800BAB8
	b locret_800BB9E
loc_800BAB8:
	ldr r0, dword_800BBA0 // =0x10000
	bl sub_801BED6
	ldr r0, dword_800BBA0 // =0x10000
	bl sub_801DACC
	// idx
	ldrh r0, [r5,#oBattleObject_Unk_30]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r1, #0
	mov r2, #0
	ldrb r3, [r0,#9]
	lsr r3, r3, #2
	bcc loc_800BAD8
	ldrh r1, [r5,#oBattleObject_Damage]
	ldrh r2, [r5,#oBattleObject_Unk_32]
loc_800BAD8:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	push {r0-r2}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	pop {r0-r2}
	bne loc_800BAF2
	mov r3, r0
	mov r0, #0x4c
	bl sub_801E792
	b loc_800BAFA
loc_800BAF2:
	mov r3, r0
	mov r0, #0x50
	bl sub_801E792
loc_800BAFA:
	mov r0, #0x74
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b locret_800BB9E
loc_800BB08:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	bne loc_800BB18
	bl sub_801E754
	b loc_800BB1C
loc_800BB18:
	bl sub_801E754
loc_800BB1C:
	tst r0, r0
	bne locret_800BB9E
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8C2
	tst r0, r0
	bne loc_800BB46
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #0
	beq loc_800BB46
	cmp r0, #5
	beq loc_800BB46
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	bl sub_800B884
	b locret_800BB9E
loc_800BB46:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #4
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF5C
	ldr r1, [r0,#0xc]
	ldrh r2, [r1,#0x24]
	tst r2, r2
	bne loc_800BB72
	ldrb r1, [r5,#oBattleObject_Alliance]
	lsl r1, r1, #2
	ldr r0, off_800BBA4 // =dword_200F3B8
	mov r2, #1
	str r2, [r0,r1]
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_800BB9E
loc_800BB72:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	sub r0, #0xdd
	cmp r0, #0x3b
	bhi loc_800BB88
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_802CE78
	cmp r0, #0xba
	beq loc_800BB94
loc_800BB88:
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_800BB9E
loc_800BB94:
	ldrb r0, [r5,#oBattleObject_CurAction]
	sub r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800BB9E:
	pop {pc}
dword_800BBA0: .word 0x10000
off_800BBA4: .word dword_200F3B8
	thumb_func_end sub_800BA8A

	thumb_func_start sub_800BBA8
sub_800BBA8:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BC2C
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #2
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #3
	beq loc_800BBCC
	cmp r0, #0
	beq loc_800BBCC
	b locret_800BC86
loc_800BBCC:
	ldr r0, dword_800BF74 // =0x10000
	bl sub_801BED6
	ldr r0, dword_800BF74 // =0x10000
	bl sub_801DACC
	// idx
	ldrh r0, [r5,#oBattleObject_Unk_30]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r1, #0
	mov r2, #0
	ldrb r3, [r0,#9]
	lsr r3, r3, #2
	bcc loc_800BBEC
	ldrh r1, [r5,#oBattleObject_Damage]
	ldrh r2, [r5,#oBattleObject_Unk_32]
loc_800BBEC:
	ldrh r0, [r5,#oBattleObject_Unk_30]
	push {r0-r2}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl battle_networkInvert
	tst r0, r0
	pop {r0-r2}
	bne loc_800BC12
	ldrb r3, [r5,#oBattleObject_Param4]
	cmp r3, #1
	bne loc_800BC08
	ldr r0, off_800BF78 // =0x171
	mov r1, #0
	mov r2, #0
loc_800BC08:
	mov r3, r0
	mov r0, #0x4c
	bl sub_801E792
	b loc_800BC1E
loc_800BC12:
	ldr r3, off_800BF78 // =0x171
	mov r1, #0
	mov r2, #0
	mov r0, #0x50
	bl sub_801E792
loc_800BC1E:
	mov r0, #0x74
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b locret_800BC86
loc_800BC2C:
	bl sub_801E754
	tst r0, r0
	bne locret_800BC86
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8C2
	tst r0, r0
	bne loc_800BC5A
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #0
	beq loc_800BC5A
	cmp r0, #5
	beq loc_800BC5A
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #3
	bl sub_800B884
	b locret_800BC86
loc_800BC5A:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #4
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF5C
	ldr r1, [r0,#0xc]
	ldrh r2, [r1,#0x24]
	tst r2, r2
	bne loc_800BC7C
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #8
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_800BC86
loc_800BC7C:
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800BC86:
	pop {pc}
	thumb_func_end sub_800BBA8

	thumb_func_start object_undimScreen
object_undimScreen:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BCB0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #5
	beq loc_800BCA4
	cmp r0, #0
	beq loc_800BCA4
	b loc_800BCB8
loc_800BCA4:
	mov r0, #0x38
	mov r1, #4
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_800BCB0:
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_800BCBC
loc_800BCB8:
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_800BCBC:
	pop {pc}
	.byte 0, 0
	thumb_func_end object_undimScreen

	thumb_func_start sub_800BCC0
sub_800BCC0:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BCE8
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #5
	beq loc_800BCDC
	cmp r0, #0
	beq loc_800BCDC
	b loc_800BCF0
loc_800BCDC:
	mov r0, #0x74
	mov r1, #0x80
	bl SetScreenFade // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
loc_800BCE8:
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_800BCF4
loc_800BCF0:
	mov r0, #CUR_STATE_DESTROY
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_800BCF4:
	pop {pc}
	thumb_func_end sub_800BCC0

	thumb_local_start
sub_800BCF6:
	push {lr}
	ldrb r0, [r5,#0xb]
	tst r0, r0
	bne loc_800BD26
	ldrb r0, [r5,#0x16]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #5
	beq loc_800BD1A
	cmp r0, #0
	beq loc_800BD1A
	mov r0, #0x3c 
	ldr r1, off_800BF7C // =0x100 
	bl SetScreenFade // (int a1, int a2) -> void
	b loc_800BD22
loc_800BD1A:
	mov r0, #0x84
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
loc_800BD22:
	mov r0, #4
	strb r0, [r5,#0xb]
loc_800BD26:
	bl IsScreenFadeActive // () -> zf
	tst r0, r0
	bne locret_800BD32
	mov r0, #8
	str r0, [r5,#8]
locret_800BD32:
	pop {pc}
	thumb_func_end sub_800BCF6

	thumb_func_start object_timefreezeEnd
object_timefreezeEnd:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	beq loc_800BD42
	bl object_freeMemory
	pop {pc}
loc_800BD42:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #5
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B892
	cmp r0, #5
	beq loc_800BD5E
	cmp r0, #0
	beq loc_800BD5E
	b locret_800BDB0
loc_800BD5E:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8D8
	tst r0, r0
	beq loc_800BD94
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800BF5C
	ldr r1, [r0,#8]
	tst r1, r1
	beq loc_800BD80
	mov r2, #8
	str r2, [r1,#8]
	mov r2, #4
	strb r2, [r1,#0xb]
loc_800BD80:
	mov r2, #0
	str r2, [r0,#0xc]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800B89C
	mov r0, #4
	bl battle_clearFlags
loc_800BD94:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #0
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B89C
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF5C
	mov r2, #0
	str r2, [r0,#0xc]
	bl object_freeMemory
locret_800BDB0:
	pop {pc}
	thumb_func_end object_timefreezeEnd

	thumb_func_start sub_800BDB2
sub_800BDB2:
	push {lr}
	ldr r1, off_800BDC0 // =off_800BDC4 
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_800BDC0: .word off_800BDC4
off_800BDC4: .word sub_800BDD0+1
	.word sub_800BE0C+1
	.word sub_800BE2C+1
	thumb_func_end sub_800BDB2

	thumb_local_start
sub_800BDD0:
	push {r4,lr}
	ldrh r0, [r5,#oBattleObject_Unk_30]
	sub r0, #0xdd
	cmp r0, #0x3b 
	bhi loc_800BDE8
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_802CE78
	cmp r0, #0xba
	beq loc_800BDF4
loc_800BDE8:
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	b locret_800BE08
loc_800BDF4:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #4
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_800ABC6
	mov r0, #4
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800BE08:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_800BDD0

	thumb_local_start
sub_800BE0C:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BE1E
	mov r0, #0x1e
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b locret_800BE2A
loc_800BE1E:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge locret_800BE2A
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800BE2A:
	pop {pc}
	thumb_func_end sub_800BE0C

	thumb_local_start
sub_800BE2C:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	tst r0, r0
	bne loc_800BE6C
	mov r0, #0xba
	mov r1, #0
	mov r2, #0
	push {r0-r2}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl battle_networkInvert
	tst r0, r0
	pop {r0-r2}
	bne loc_800BE56
	mov r3, r0
	mov r0, #0x4c 
	bl sub_801E792
	b loc_800BE5E
loc_800BE56:
	mov r3, r0
	mov r0, #0x50 
	bl sub_801E792
loc_800BE5E:
	mov r0, #0x74 
	add r0, #0xff
	bl PlaySoundEffect
	mov r0, #4
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	b locret_800BED8
loc_800BE6C:
	bl sub_801E754
	tst r0, r0
	bne locret_800BED8
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B89C
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	strb r0, [r5,#oBattleObject_Alliance]
	bl sub_800B8AC
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #4
	bl sub_800B884
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF5C
	ldr r3, [r0,#8]
	tst r3, r3
	beq loc_800BEA2
	mov r1, #8
	str r1, [r3,#8]
	mov r1, #4
	strb r1, [r3,#0xb]
loc_800BEA2:
	push {r4}
	ldrb r4, [r5,#oBattleObject_Alliance]
	mov r0, #0
	bl sub_800BF5C
	strb r4, [r0,#3]
	mov r0, #1
	bl sub_800BF5C
	strb r4, [r0,#3]
	pop {r4}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802CE78
	mov r0, r3
	beq loc_800BEC8
	ldrh r1, [r0,#0x12]
	strh r1, [r5,#oBattleObject_PanelXY]
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
loc_800BEC8:
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_802CEA6
	ldrb r0, [r5,#oBattleObject_CurAction]
	add r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_800BED8:
	pop {pc}
	thumb_func_end sub_800BE2C

	thumb_func_start sub_800BEDA
sub_800BEDA:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	bl sub_800BF5C
	ldr r2, [r0,#0xc]
	tst r2, r2
	beq loc_800BEEC
	cmp r2, r5
	bne loc_800BF12
loc_800BEEC:
	ldrb r2, [r0,#1]
	cmp r2, #0
	beq loc_800BEF8
	cmp r2, #3
	beq loc_800BEF8
	b loc_800BF12
loc_800BEF8:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_800BF5C
	ldrb r2, [r0,#2]
	tst r2, r2
	bne loc_800BF12
	ldrb r2, [r0,#1]
	cmp r2, #2
	bne loc_800BF12
	mov r0, #1
	pop {pc}
loc_800BF12:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_800BEDA

	thumb_func_start sub_800BF16
sub_800BF16:
	push {r4,lr}
	push {r0-r2}
	mov r4, r0
	mov r0, #0
	bl sub_800BF5C
	strb r4, [r0,#3]
	mov r0, #1
	bl sub_800BF5C
	strb r4, [r0,#3]
	pop {r0-r2}
	b loc_800BF32
loc_800BF30:
	push {r4,lr}
loc_800BF32:
	push {r0-r2}
	bl sub_800B8AC
	pop {r0-r2}
	push {r1,r2}
	bl sub_800BF5C
	ldr r3, [r0,#8]
	tst r3, r3
	pop {r1,r2}
	beq loc_800BF50
	mov r4, #8
	str r4, [r3,#8]
	mov r4, #4
	strb r4, [r3,#0xb]
loc_800BF50:
	strb r1, [r0,#2]
	str r2, [r0,#8]
	str r5, [r0,#0xc]
	mov r1, #1
	strb r1, [r0,#1]
	pop {r4,pc}
	thumb_func_end sub_800BF16

	thumb_func_start sub_800BF5C
sub_800BF5C:
	mov r1, #0x50 
	mul r0, r1
	ldr r1, off_800BF80 // =byte_203CF00 
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_800BF5C

	thumb_func_start sub_800BF66
sub_800BF66:
	push {lr}
	// memBlock
	ldr r0, off_800BF84 // =byte_203CF00 
	// size
	mov r1, #0xa0
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	.balign 4, 0x00
dword_800BF74: .word 0x10000
off_800BF78: .word 0x171
off_800BF7C: .word 0x100
off_800BF80: .word byte_203CF00
off_800BF84: .word byte_203CF00
	thumb_func_end sub_800BF66

	thumb_func_start sub_800BF88
sub_800BF88:
	push {r4,r6,r7,lr}
	bl sub_800C4BC
	ldr r0, off_800C1F8 // =byte_203CB04 
	mov r1, #0x8c
	str r1, [r0]
	ldr r7, off_800BFC0 // =byte_2036740 
	mov r0, #0
	strb r0, [r7,#0x2] // (byte_2036742 - 0x2036740)
	strb r0, [r7,#0x4] // (byte_2036744 - 0x2036740)
	strb r0, [r7,#0x6] // (byte_2036746 - 0x2036740)
	strb r0, [r7,#0x8] // (byte_2036748 - 0x2036740)
	strb r0, [r7,#0xa] // (byte_203674A - 0x2036740)
	strb r0, [r7,#0xc] // (byte_203674C - 0x2036740)
	mov r0, #0xe
	strb r0, [r7,#0x3] // (byte_2036743 - 0x2036740)
	mov r0, #0xd
	strb r0, [r7,#0x5] // (byte_2036745 - 0x2036740)
	mov r0, #0xc
	strb r0, [r7,#0x7] // (byte_2036747 - 0x2036740)
	mov r0, #0xb
	strb r0, [r7,#0x9] // (byte_2036749 - 0x2036740)
	mov r0, #0xa
	strb r0, [r7,#0xb] // (byte_203674B - 0x2036740)
	mov r0, #9
	strb r0, [r7,#0xd] // (byte_203674D - 0x2036740)
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_800BFC0: .word byte_2036740
	thumb_func_end sub_800BF88

	thumb_func_start sub_800BFC4
sub_800BFC4:
	push {r4,r5,r7,lr}
	bl battle_isPaused
	tst r0, r0
	bne locret_800C016
	bl battle_isTimeStop
	bne locret_800C016
	bl sub_800C746
	ldr r0, off_800C1FC // =byte_203CB04 
	ldr r1, [r0]
	sub r1, #1
	str r1, [r0]
	bne loc_800BFE6
	mov r2, #0x8c
	str r2, [r0]
loc_800BFE6:
	ldr r7, off_800C018 // =unk_2039C00 
	mov r5, #1
loc_800BFEA:
	mov r4, #1
loc_800BFEC:
	mov r0, r4
	mov r1, r5
	bl sub_800C380
	mov r0, #0
	ldrb r1, [r7,#2]
	cmp r1, #3
	bne loc_800C004
	mov r0, r4
	mov r1, r5
	bl object_getPanelParameters
loc_800C004:
	str r0, [r7,#0x18]
	add r7, #0x20 
	add r4, #1
	cmp r4, #6
	ble loc_800BFEC
	add r7, #0x40 
	add r5, #1
	cmp r5, #3
	ble loc_800BFEA
locret_800C016:
	pop {r4,r5,r7,pc}
off_800C018: .word unk_2039C00
	thumb_func_end sub_800BFC4

	thumb_local_start
sub_800C01C:
	push {r4-r7,lr}
	sub sp, sp, #0x28
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	ldrb r4, [r6,#0xd]
	cmp r4, #0
	beq loc_800C038
	cmp r2, #0xb
	blt loc_800C038
	cmp r2, #0xc
	beq loc_800C036
	mov r2, #0xc
	b loc_800C038
loc_800C036:
	mov r2, #0xb
loc_800C038:
	eor r3, r4
	lsl r4, r4, #3
	ldr r6, off_800C088 // =byte_800C0AA 
	add r6, r6, r4
	ldrb r4, [r6,r0]
	str r4, [sp]
	mov r4, #3
	mul r4, r1
	add r4, #6
	str r4, [sp,#4]
	ldr r6, off_800C084 // =byte_800C08C 
	cmp r2, #0xff
	beq loc_800C066
	mov r4, #6
	mul r4, r2
	mov r2, #3
	mul r3, r2
	add r4, r4, r3
	add r4, r4, r1
	sub r4, #1
	ldr r6, off_800C07C // =byte_86DFA98 
	lsl r7, r4, #5
	add r6, r6, r7
loc_800C066:
	// j
	ldr r0, [sp]
	// i
	ldr r1, [sp,#4]
	// tileBlock32x32
	mov r2, #2
	// tileIds
	mov r3, r6
	mov r4, #5
	mov r5, #3
	ldr r6, off_800C080 // =iCopyBackgroundTiles+1
	mov lr, pc
	bx r6
	add sp, sp, #0x28
	pop {r4-r7,pc}
off_800C07C: .word byte_86DFA98
off_800C080: .word iCopyBackgroundTiles+1
off_800C084: .word byte_800C08C
off_800C088: .word byte_800C0AA
byte_800C08C: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_800C0AA: .byte 0xFB, 0x0, 0x5, 0xA, 0xF, 0x14, 0x19, 0x1E, 0x1E, 0x19
	.byte 0x14, 0xF, 0xA, 0x5, 0x0, 0xFB
	thumb_func_end sub_800C01C

	thumb_local_start
sub_800C0BA:
	push {r4-r7,lr}
	sub sp, sp, #0x28
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	ldrb r4, [r6,#0xd]
	lsl r4, r4, #3
	ldr r6, off_800C0FC // =byte_800C0AA 
	add r6, r6, r4
	ldrb r4, [r6,r0]
	str r4, [sp]
	mov r4, #3
	mul r4, r1
	add r4, #6
	str r4, [sp,#4]
	// j
	ldr r0, [sp]
	// i
	ldr r1, [sp,#4]
	ldr r3, off_800C0F0 // =off_800C0F4 
	lsl r2, r2, #2
	// tileIds
	ldr r3, [r3,r2]
	// tileBlock32x32
	mov r2, #2
	mov r4, #5
	mov r5, #3
	bl CopyBackgroundTiles
	add sp, sp, #0x28
	pop {r4-r7,pc}
	.byte 0, 0
off_800C0F0: .word off_800C0F4
off_800C0F4: .word dword_86E0458
	.word dword_86E0478
off_800C0FC: .word byte_800C0AA
	thumb_func_end sub_800C0BA

	thumb_local_start
sub_800C100:
	push {r4-r7,lr}
	sub sp, sp, #0x28
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	ldrb r4, [r6,#0xd]
	eor r2, r4
	lsl r4, r4, #3
	ldr r6, off_800C174 // =byte_800C182 
	add r6, r6, r4
	ldrb r4, [r6,r0]
	str r4, [sp]
	mov r4, #3
	mul r4, r1
	add r4, #6
	str r4, [sp,#4]
	ldr r6, off_800C16C // =byte_86E0498 
	lsl r7, r2, #5
	add r6, r6, r7
	// j
	ldr r0, [sp]
	// i
	ldr r1, [sp,#4]
	// tileBlock32x32
	mov r2, #2
	// tileIds
	mov r3, r6
	mov r4, #5
	mov r5, #1
	bl CopyBackgroundTiles
	add sp, sp, #0x28
	pop {r4-r7,pc}
	thumb_func_end sub_800C100

	thumb_local_start
sub_800C138:
	push {r4-r7,lr}
	sub sp, sp, #0x28
	mov r6, r10
	ldr r6, [r6,#oToolkit_BattleStatePtr]
	ldrb r4, [r6,#0xd]
	eor r2, r4
	lsl r4, r4, #3
	ldr r6, off_800C174 // =byte_800C182 
	add r6, r6, r4
	ldrb r4, [r6,r0]
	str r4, [sp]
	mov r4, #3
	mul r4, r1
	add r4, #6
	str r4, [sp,#4]
	ldr r6, off_800C170 // =byte_800C178 
	// j
	ldr r0, [sp]
	// i
	ldr r1, [sp,#4]
	// tileBlock32x32
	mov r2, #2
	// tileIds
	mov r3, r6
	mov r4, #5
	mov r5, #1
	bl CopyBackgroundTiles
	add sp, sp, #0x28
	pop {r4-r7,pc}
off_800C16C: .word byte_86E0498
off_800C170: .word byte_800C178
off_800C174: .word byte_800C182
byte_800C178: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_800C182: .byte 0xFB, 0x0, 0x5, 0xA, 0xF, 0x14, 0x19, 0x1E, 0x1E, 0x19
	.byte 0x14, 0xF, 0xA, 0x5, 0x0, 0xFB
	thumb_func_end sub_800C138

	thumb_local_start
sub_800C192:
	push {r4-r7,lr}
	ldr r5, off_800C1D8 // =byte_2036740 
	ldr r7, off_800C1D4 // =off_800C1DC 
loc_800C198:
	ldr r6, [r7]
	tst r6, r6
	beq locret_800C1D0
	ldrb r4, [r6,#2]
	ldrb r2, [r5,r4]
	sub r2, #1
	strb r2, [r5,r4]
	bgt loc_800C1CC
	ldrb r1, [r6]
	ldrb r3, [r6,#1]
	ldrb r2, [r5,r1]
	add r2, #1
	cmp r2, r3
	blt loc_800C1B6
	mov r2, #0
loc_800C1B6:
	strb r2, [r5,r1]
	lsl r2, r2, #3
	add r2, #8
	add r2, r2, r6
	ldr r0, [r2,#4]
	strb r0, [r5,r4]
	ldr r0, [r2]
	ldr r1, [r6,#4]
	mov r2, #0x20 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_800C1CC:
	add r7, #4
	b loc_800C198
locret_800C1D0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_800C1D4: .word off_800C1DC
off_800C1D8: .word byte_2036740
off_800C1DC: .word dword_800C200
	.word dword_800C258
	.word dword_800C2B0
	.word dword_800C2D8
	.word dword_800C300
	.word dword_800C340
	.word 0x0
off_800C1F8: .word byte_203CB04
off_800C1FC: .word byte_203CB04
dword_800C200: .word 0x30A02
	.word unk_30019A0
	.word byte_86E0918
	.word 0x10
	.word byte_86E04D8
	.word 0x10
	.word byte_86E04F8
	.word 0x10
	.word byte_86E0518
	.word 0x10
	.word byte_86E0538
	.word 0x10
	.word byte_86E0558
	.word 0x10
	.word byte_86E0538
	.word 0x10
	.word byte_86E0518
	.word 0x10
	.word byte_86E04F8
	.word 0x10
	.word byte_86E04D8
	.word 0x10
dword_800C258: .word 0x50A04
	.word unk_3001A20
	.word byte_86E0998
	.word 0x10
	.word byte_86E06D8
	.word 0x10
	.word byte_86E06F8
	.word 0x10
	.word byte_86E0718
	.word 0x10
	.word byte_86E0738
	.word 0x10
	.word byte_86E0758
	.word 0x10
	.word byte_86E0738
	.word 0x10
	.word byte_86E0718
	.word 0x10
	.word byte_86E06F8
	.word 0x10
	.word byte_86E06D8
	.word 0x10
dword_800C2B0: .word 0x70406
	.word unk_30019C0
	.word byte_86E0938
	.word 0x8
	.word byte_86E0578
	.word 0x8
	.word byte_86E0598
	.word 0x8
	.word byte_86E05B8
	.word 0x8
dword_800C2D8: .word 0x90408
	.word unk_3001A40
	.word byte_86E09B8
	.word 0x8
	.word byte_86E0778
	.word 0x8
	.word byte_86E0798
	.word 0x8
	.word byte_86E07B8
	.word 0x8
dword_800C300: .word 0xB070A
	.word unk_30019E0
	.word byte_86E0958
	.word 0xA
	.word byte_86E05D8
	.word 0xA
	.word byte_86E05F8
	.word 0xA
	.word byte_86E0618
	.word 0xA
	.word byte_86E0638
	.word 0xA
	.word byte_86E0658
	.word 0xA
	.word byte_86E0678
	.word 0xA
dword_800C340: .word 0xD070C
	.word unk_3001A60
	.word byte_86E09D8
	.word 0xA
	.word byte_86E07D8
	.word 0xA
	.word byte_86E07F8
	.word 0xA
	.word byte_86E0818
	.word 0xA
	.word byte_86E0838
	.word 0xA
	.word byte_86E0858
	.word 0xA
	.word byte_86E0878
	.word 0xA
	thumb_func_end sub_800C192

	thumb_local_start
sub_800C380:
	push {r4-r7,lr}
	mov r4, r0
	mov r5, r1
	ldrb r0, [r7,#2]
	cmp r0, #0
	bne loc_800C38E
	b locret_800C486
loc_800C38E:
	cmp r0, #1
	bne loc_800C398
	ldr r1, off_800C4B4 // =0x708 
	strh r1, [r7,#0x12]
	b loc_800C3D4
loc_800C398:
	cmp r0, #3
	bne loc_800C3A8
	bl sub_800C488
	strh r1, [r7,#0xe]
	ldr r1, off_800C4B4 // =0x708 
	strh r1, [r7,#0x12]
	b loc_800C402
loc_800C3A8:
	cmp r0, #8
	bne loc_800C3B8
	bl sub_800C488
	strh r1, [r7,#0xe]
	ldr r1, off_800C4B4 // =0x708 
	strh r1, [r7,#0x12]
	b loc_800C438
loc_800C3B8:
	cmp r0, #9
	blt loc_800C3C8
	cmp r0, #0xc
	bgt loc_800C3C8
	bl sub_800C488
	strh r1, [r7,#0xe]
	b loc_800C45C
loc_800C3C8:
	bl sub_800C488
	strh r1, [r7,#0xe]
	ldr r1, off_800C4B4 // =0x708 
	strh r1, [r7,#0x12]
	pop {r4-r7,pc}
loc_800C3D4:
	ldrh r1, [r7,#0xe]
	sub r1, #1
	strh r1, [r7,#0xe]
	tst r1, r1
	bne loc_800C3F2
	mov r0, #2
	strb r0, [r7,#2]
	mov r0, r4
	mov r1, r5
	bl object_updatePanelParameters
	bl sub_800C488
	strh r1, [r7,#0xe]
	pop {r4-r7,pc}
loc_800C3F2:
	mov r2, #1
	cmp r1, #0x3c 
	bgt loc_800C3FE
	lsr r1, r1, #2
	bcc loc_800C3FE
	mov r2, #2
loc_800C3FE:
	strb r2, [r7,#6]
	pop {r4-r7,pc}
loc_800C402:
	ldr r1, dword_800C4A0 // =0xf800000 
	ldr r0, [r7,#0x18]
	tst r0, r1
	beq locret_800C436
	ldr r1, byte_800C4A4 // =0x0 
	tst r0, r1
	bne locret_800C436
	mov r0, r4
	mov r1, r5
	bl object_getPanelParameters
	ldr r1, dword_800C49C // =0xf880080 
	tst r0, r1
	bne locret_800C436
	mov r0, #1
	strb r0, [r7,#2]
	mov r0, r4
	mov r1, r5
	bl object_updatePanelParameters
	bl sub_800C488
	strh r1, [r7,#0xe]
	mov r0, #0x97
	bl PlaySoundEffect
locret_800C436:
	pop {r4-r7,pc}
loc_800C438:
	ldr r0, off_800C4B8 // =byte_203CB04 
	ldr r1, [r0]
	mov r2, #0x8c
	ldrb r0, [r7,#0xa]
	cmp r0, #3
	ble loc_800C446
	mov r2, #0x46 
loc_800C446:
	cmp r1, r2
	bne locret_800C45A
	ldrb r0, [r7,#0xa]
	ldrb r1, [r7,#0xb]
	mov r2, #0
	mov r3, #0
	mov r4, #0x28 
	mov r6, #0x32 
	bl sub_80C5B76
locret_800C45A:
	pop {r4-r7,pc}
loc_800C45C:
	ldrh r1, [r7,#0x12]
	sub r1, #1
	strh r1, [r7,#0x12]
	tst r1, r1
	bne loc_800C478
	mov r0, #2
	strb r0, [r7,#2]
	mov r0, r4
	mov r1, r5
	bl object_updatePanelParameters
	ldr r1, off_800C4B4 // =0x708 
	strh r1, [r7,#0x12]
	pop {r4-r7,pc}
loc_800C478:
	ldrb r2, [r7,#2]
	cmp r1, #0x3c 
	bgt loc_800C484
	lsr r1, r1, #2
	bcc loc_800C484
	mov r2, #2
loc_800C484:
	strb r2, [r7,#6]
locret_800C486:
	pop {r4-r7,pc}
	thumb_func_end sub_800C380

	thumb_local_start
sub_800C488:
	push {r0,r2,r3,lr}
	bl GetBattleMode
	ldr r1, off_800C498 // =0x258 
	cmp r0, #1
	bne locret_800C496
	ldr r1, off_800C4B0 // =0x1e0 
locret_800C496:
	pop {r0,r2,r3,pc}
off_800C498: .word 0x258
dword_800C49C: .word 0xF880080
dword_800C4A0: .word 0xF800000
byte_800C4A4: .byte 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0x80, 0xF, 0x0, 0x80, 0x0, 0x0
off_800C4B0: .word 0x1E0
off_800C4B4: .word 0x708
off_800C4B8: .word byte_203CB04
	thumb_func_end sub_800C488

	thumb_local_start
sub_800C4BC:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp,#4]
	bl sub_800C6D6
	str r0, [sp]
	mov r0, #0
	bl sub_800C8C2
	// size
	mov r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	bl sub_800C8C2
	mov r7, r0
	mov r4, #0
loc_800C4DE:
	mov r1, #0xff
	sub r0, r4, #1
	cmp r0, #5
	bhi loc_800C4F0
	ldr r0, [sp,#4]
	sub r1, r4, #1
	lsr r0, r1
	mov r1, #1
	and r1, r0
loc_800C4F0:
	strb r1, [r7]
	add r7, #8
	add r4, #1
	cmp r4, #8
	blt loc_800C4DE
	// memBlock
	ldr r0, off_800C584 // =ePanelData
	// size
	ldr r1, off_800C588 // =0x500 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r5, #0
loc_800C504:
	mov r4, #0
loc_800C506:
	mov r0, r4
	mov r1, r5
	bl sub_800C6E0
	mov r7, r0
	mov r0, #8
	mul r0, r5
	add r0, r0, r4
	ldr r1, off_800C57C // =byte_800C590 
	ldrb r0, [r1,r0]
	strb r0, [r7]
	mov r0, r4
	mov r1, r5
	bl object_isValidPanel
	mov r1, #0
	tst r0, r0
	beq loc_800C53C
	ldr r0, [sp]
	sub r1, r5, #1
	lsl r1, r1, #2
	ldr r0, [r1,r0]
	sub r1, r4, #1
	lsl r1, r1, #2
	lsr r0, r1
	mov r1, #0xf
	and r1, r0
loc_800C53C:
	strb r1, [r7,#2]
	strb r1, [r7,#6]
	mov r0, r4
	bl sub_800C8C2
	ldrb r1, [r0]
	strb r1, [r7,#3]
	strb r1, [r7,#4]
	strb r1, [r7,#7]
	mov r0, #8
	mul r0, r5
	add r0, r0, r4
	ldr r1, off_800C580 // =byte_800C5B8 
	ldrb r0, [r1,r0]
	strb r0, [r7,#0xc]
	strb r4, [r7,#0xa]
	strb r5, [r7,#0xb]
	bl sub_800C488
	strh r1, [r7,#0xe]
	ldr r1, off_800C58C // =0x708 
	strh r1, [r7,#0x12]
	add r4, #1
	cmp r4, #8
	blt loc_800C506
	add r5, #1
	cmp r5, #5
	blt loc_800C504
	bl sub_800C67C
	add sp, sp, #8
	pop {r4-r7,pc}
off_800C57C: .word byte_800C590
off_800C580: .word byte_800C5B8
off_800C584: .word ePanelData
off_800C588: .word 0x500
off_800C58C: .word 0x708
byte_800C590: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0
	.byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_800C5B8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_800C4BC

	thumb_func_start sub_800C5E0
sub_800C5E0:
	push {r4-r7,lr}
	bl sub_800C192
	ldr r7, off_800C8CC // =ePanelData
	mov r6, #0
loc_800C5EA:
	ldrb r4, [r7,#0xa]
	ldrb r5, [r7,#0xb]
	mov r0, r4
	mov r1, r5
	bl object_isValidPanel
	beq loc_800C672
	ldrb r0, [r7]
	tst r0, r0
	beq loc_800C648
	ldrb r0, [r7,#0xd]
	tst r0, r0
	bne loc_800C626
	ldrb r0, [r7,#1]
	tst r0, r0
	bne loc_800C638
	mov r0, r4
	mov r1, r5
	ldrb r2, [r7,#6]
	ldrb r3, [r7,#7]
	bl sub_800C01C
	b loc_800C662
	mov r0, r4
	mov r1, r5
	ldrb r2, [r7,#2]
	ldrb r3, [r7,#3]
	bl sub_800C01C
	b loc_800C662
loc_800C626:
	mov r0, #0
	strb r0, [r7,#0xd]
	mov r0, r4
	mov r1, r5
	ldrb r2, [r7,#8]
	ldrb r3, [r7,#9]
	bl sub_800C01C
	b loc_800C662
loc_800C638:
	sub r2, r0, #1
	mov r0, #0
	strb r0, [r7,#1]
	mov r0, r4
	mov r1, r5
	bl sub_800C0BA
	b loc_800C662
loc_800C648:
	mov r0, r4
	mov r1, r5
	mov r2, #0xff
	mov r3, #0
	bl sub_800C01C
	ldrb r0, [r7,#0xa]
	ldrb r1, [r7,#0xb]
	add r1, #1
	ldrb r2, [r7,#7]
	bl sub_800C138
	b loc_800C672
loc_800C662:
	ldrb r0, [r7,#0xc]
	tst r0, r0
	beq loc_800C672
	mov r0, r4
	add r1, r5, #1
	ldrb r2, [r7,#7]
	bl sub_800C100
loc_800C672:
	add r7, #0x20 
	add r6, #1
	cmp r6, #0x28 
	blt loc_800C5EA
	pop {r4-r7,pc}
	thumb_func_end sub_800C5E0

	thumb_local_start
sub_800C67C:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	ldr r7, off_800C8D0 // =byte_203F6B0 
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	str r0, [sp,#4]
	mov r4, #1
loc_800C68C:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	cmp r0, r1
	bge loc_800C6CE
	mov r6, #1
	sub r6, r6, r4
	lsl r6, r6, #1
	mov r1, sp
	add r6, r6, r1
	ldr r0, [r6]
	mov r1, r4
	push {r0,r1}
	bl sub_800C84A
	strb r0, [r7,#2]
	strb r1, [r7,#3]
	mov r2, r0
	pop {r0,r1}
	sub r3, r2, #1
	mul r3, r1
	add r3, r3, r0
	strb r3, [r7]
	mov r3, r1
	neg r3, r3
	strb r3, [r7,#1]
	mov r3, r2
	mul r3, r4
	ldr r5, [r6]
	add r5, r5, r3
	str r5, [r6]
	neg r4, r4
	add r7, #4
	b loc_800C68C
loc_800C6CE:
	mov r0, #0xff
	strb r0, [r7]
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_800C67C

	thumb_local_start
sub_800C6D6:
	mov r1, #0xc
	mul r0, r1
	ldr r1, off_800C8D4 // =byte_800D730 
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_800C6D6

	thumb_local_start
sub_800C6E0:
	mov r2, #8
	mul r1, r2
	add r0, r0, r1
	mov r1, #0x20 
	mul r0, r1
	ldr r1, off_800C8D8 // =ePanelData
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_800C6E0

	thumb_local_start
sub_800C6F0:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r6, #0
	mov r7, #0
	mov r4, r0
	mov r5, #1
	str r6, [sp]
	str r6, [sp,#4]
loc_800C700:
	mov r0, r4
	mov r1, r5
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800C734
	ldrb r1, [r0,#3]
	ldrb r2, [r0,#4]
	cmp r1, r2
	beq loc_800C734
	add r6, #1
	mov r1, #1
	lsl r1, r5
	ldr r2, [sp]
	orr r2, r1
	str r2, [sp]
	ldr r1, [r0,#0x14]
	ldr r2, dword_800C8DC // =0xf880080 
	tst r1, r2
	bne loc_800C734
	add r7, #1
	mov r1, #1
	lsl r1, r5
	ldr r2, [sp,#4]
	orr r2, r1
	str r2, [sp,#4]
loc_800C734:
	add r5, #1
	cmp r5, #3
	ble loc_800C700
	mov r0, r6
	mov r1, r7
	ldr r2, [sp]
	ldr r3, [sp,#4]
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end sub_800C6F0

	thumb_local_start
sub_800C746:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	mov r4, #1
	ldr r7, off_800C8E0 // =unk_2034018 
loc_800C74E:
	mov r0, r4
	bl sub_800C6F0
	strb r0, [r7,#2]
	strb r1, [r7,#3]
	strb r2, [r7,#4]
	strb r3, [r7,#5]
	tst r0, r0
	bne loc_800C764
	mov r0, #0
	strh r0, [r7,#6]
loc_800C764:
	ldrh r0, [r7,#6]
	tst r0, r0
	beq loc_800C774
	sub r0, #1
	strh r0, [r7,#6]
	bne loc_800C774
	mov r0, #1
	strb r0, [r7,#1]
loc_800C774:
	add r7, #8
	add r4, #1
	cmp r4, #6
	ble loc_800C74E
	ldr r7, off_800C8E4 // =byte_203F6B0 
loc_800C77E:
	ldrb r4, [r7]
	cmp r4, #0xff
	beq loc_800C7E8
	mov r5, #0
	ldrb r6, [r7,#2]
loc_800C788:
	sub r6, #1
	blt loc_800C7BE
	mov r0, r4
	bl sub_800C8C2
	mov r3, r0
	ldrb r1, [r3,#4]
	tst r1, r1
	beq loc_800C7B6
	ldrb r0, [r3,#1]
	tst r0, r0
	beq loc_800C7B4
	ldrb r2, [r3,#5]
	cmp r1, r2
	bne loc_800C7B4
	add r1, r5, r5
	add r0, sp, #0
	add r0, r0, r1
	strb r4, [r0]
	strb r2, [r0,#1]
	add r5, #1
	b loc_800C7B6
loc_800C7B4:
	mov r5, #0
loc_800C7B6:
	mov r0, #1
	ldrsb r0, [r7,r0]
	add r4, r4, r0
	b loc_800C788
loc_800C7BE:
	mov r4, #0
	tst r5, r5
	beq loc_800C7E4
	add r0, r4, r4
	add r6, sp, #0
	add r6, r6, r0
	ldrb r0, [r6]
	bl sub_800C8C2
	mov r1, #0
	strb r1, [r0,#1]
	ldrb r1, [r6,#1]
	ldrb r2, [r7,#3]
	ldrb r0, [r6]
	bl sub_800C81E
	add r4, #1
	sub r5, #1
	b loc_800C7BE
loc_800C7E4:
	add r7, #4
	b loc_800C77E
loc_800C7E8:
	mov r7, #1
loc_800C7EA:
	mov r6, #1
loc_800C7EC:
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	ldrb r3, [r0,#3]
	strb r3, [r0,#7]
	ldrh r1, [r0,#0x10]
	tst r1, r1
	beq loc_800C80E
	sub r1, #1
	strh r1, [r0,#0x10]
	mov r3, #4
	and r3, r1
	lsr r3, r3, #2
	ldrb r4, [r0,#7]
	eor r4, r3
	strb r4, [r0,#7]
loc_800C80E:
	add r6, #1
	cmp r6, #6
	ble loc_800C7EC
	add r7, #1
	cmp r7, #3
	ble loc_800C7EA
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_func_end sub_800C746

	thumb_local_start
sub_800C81E:
	push {r4-r7,lr}
	mov r4, r0
	mov r5, #1
	mov r6, r2
	lsr r7, r1, #1
loc_800C828:
	lsr r7, r7, #1
	bcc loc_800C842
	mov r0, r4
	mov r1, r5
	bl sub_800C6E0
	strb r6, [r0,#3]
	mov r1, #0x5a 
	strb r1, [r0,#0x10]
	mov r0, r4
	mov r1, r5
	bl object_updatePanelParameters
loc_800C842:
	add r5, #1
	tst r7, r7
	bne loc_800C828
	pop {r4-r7,pc}
	thumb_func_end sub_800C81E

	thumb_local_start
sub_800C84A:
	push {r4-r6,lr}
	mov r4, r0
	mov r5, r1
	bl sub_800C8C2
	mov r2, #8
	mul r2, r5
	ldrb r3, [r0]
	add r0, r0, r2
	mov r6, #1
loc_800C85E:
	sub r1, r4, #1
	cmp r1, #5
	bhi loc_800C872
	ldrb r1, [r0]
	cmp r1, r3
	bne loc_800C872
	add r6, #1
	add r0, r0, r2
	add r4, r4, r5
	b loc_800C85E
loc_800C872:
	mov r0, r6
	mov r1, r3
	pop {r4-r6,pc}
	thumb_func_end sub_800C84A

	thumb_local_start
sub_800C878:
	push {r4-r7,lr}
	lsr r7, r0, #1
	ldr r6, off_800C8E8 // =unk_2034010 
loc_800C87E:
	add r6, #8
	tst r7, r7
	beq loc_800C894
	lsr r7, r7, #1
	bcc loc_800C87E
	mov r0, #1
	strb r0, [r6,#1]
	mov r0, #0
	strh r0, [r6,#6]
	strb r1, [r6]
	b loc_800C87E
loc_800C894:
	mov r5, #0
loc_800C896:
	mov r4, #0
loc_800C898:
	mov r0, r4
	mov r1, r5
	bl sub_800C6E0
	mov r7, r0
	mov r0, r4
	bl sub_800C8C2
	ldrb r1, [r0]
	strb r1, [r7,#4]
	mov r0, r4
	mov r1, r5
	bl object_updatePanelParameters
	add r4, #1
	cmp r4, #8
	blt loc_800C898
	add r5, #1
	cmp r5, #5
	blt loc_800C896
	pop {r4-r7,pc}
	thumb_func_end sub_800C878

	thumb_local_start
sub_800C8C2:
	mov r1, #8
	mul r1, r0
	ldr r0, off_800C8EC // =unk_2034010 
	add r0, r0, r1
	mov pc, lr
off_800C8CC: .word ePanelData
off_800C8D0: .word byte_203F6B0
off_800C8D4: .word byte_800D730
off_800C8D8: .word ePanelData
dword_800C8DC: .word 0xF880080
off_800C8E0: .word unk_2034018
off_800C8E4: .word byte_203F6B0
off_800C8E8: .word unk_2034010
off_800C8EC: .word unk_2034010
	thumb_func_end sub_800C8C2

	thumb_func_start sub_800C8F0
sub_800C8F0:
	push {lr}
	bl sub_800C918
	pop {pc}
	thumb_func_end sub_800C8F0

	thumb_func_start object_getPanelParameters
object_getPanelParameters:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800C906
	ldr r0, [r0,#0x14]
	pop {pc}
loc_800C906:
	mov r0, #0
	pop {pc}
	thumb_func_end object_getPanelParameters

	thumb_func_start object_getPanelDataOffset
object_getPanelDataOffset:
	push {lr}
	ldr r2, off_800C914 // =sub_3007958+1 
	mov lr, pc
	bx r2
	pop {pc}
off_800C914: .word sub_3007958+1
	thumb_func_end object_getPanelDataOffset

	thumb_local_start
sub_800C918:
	push {lr}
	ldr r0, off_800C924 // =sub_30078C8+1
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_800C924: .word sub_30078C8+1
	thumb_func_end sub_800C918

	thumb_local_start
object_updatePanelParameters:
	push {lr}
	ldr r2, off_800C934 // =sub_30078E0+1 
	mov lr, pc
	bx r2
	pop {pc}
	.balign 4, 0x00
off_800C934: .word sub_30078E0+1
	thumb_func_end object_updatePanelParameters

	thumb_func_start object_crackPanel
object_crackPanel:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800C988
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800C988
	mov r2, #0x40 
	tst r1, r2
	bne loc_800C96A
	orr r1, r2
	ldr r2, dword_800C994 // =0x3f0f 
	bic r1, r2
	add r1, #3
	str r1, [r0,#0x14]
	mov r2, #3
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800C96A:
	ldr r2, dword_800C98C // =0xf880080 
	tst r1, r2
	bne loc_800C988
	ldr r2, dword_800C990 // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800C988:
	mov r0, #0
	pop {pc}
dword_800C98C: .word 0xF880080
dword_800C990: .word 0x3F5F
dword_800C994: .word 0x3F0F
	thumb_func_end object_crackPanel

	thumb_func_start object_crackPanelDup1
object_crackPanelDup1:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800C9E8
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800C9E8
	mov r2, #0x40 
	tst r1, r2
	bne loc_800C9CA
	orr r1, r2
	ldr r2, dword_800C9F4 // =0x3f0f 
	bic r1, r2
	add r1, #3
	str r1, [r0,#0x14]
	mov r2, #3
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800C9CA:
	ldr r2, dword_800C9EC // =0xf880080 
	tst r1, r2
	bne loc_800C9E8
	ldr r2, dword_800C9F0 // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800C9E8:
	mov r0, #0
	pop {pc}
dword_800C9EC: .word 0xF880080
dword_800C9F0: .word 0x3F5F
dword_800C9F4: .word 0x3F0F
	thumb_func_end object_crackPanelDup1

	thumb_func_start object_breakPanel
object_breakPanel:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800CA28
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800CA28
	ldr r2, dword_800CA2C // =0xf880080 
	tst r1, r2
	bne loc_800CA28
	ldr r2, dword_800CA30 // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CA28:
	mov r0, #0
	pop {pc}
dword_800CA2C: .word 0xF880080
dword_800CA30: .word 0x3F5F
	thumb_func_end object_breakPanel

	thumb_func_start object_breakPanel_dup1
object_breakPanel_dup1:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800CA7C
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800CA7C
	ldr r2, dword_800CA80 // =0xf080080 
	tst r1, r2
	bne loc_800CA64
	ldr r2, dword_800CA84 // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CA64:
	mov r2, #0x40 
	orr r1, r2
	ldr r2, dword_800CA88 // =0x3f0f 
	bic r1, r2
	add r1, #3
	str r1, [r0,#0x14]
	mov r2, #3
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
loc_800CA7C:
	mov r0, #0
	pop {pc}
dword_800CA80: .word 0xF080080
dword_800CA84: .word 0x3F5F
dword_800CA88: .word 0x3F0F
	thumb_func_end object_breakPanel_dup1

	thumb_func_start object_breakPanel_dup2
object_breakPanel_dup2:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800CAD8
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800CAD8
	ldr r2, dword_800CADC // =0xf880080 
	tst r1, r2
	bne loc_800CABC
	ldr r2, dword_800CAE0 // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CABC:
	mov r2, #0x40 
	orr r1, r2
	ldr r2, dword_800CAE4 // =0x3f0f 
	bic r1, r2
	add r1, #3
	str r1, [r0,#0x14]
	mov r2, #3
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CAD8:
	mov r0, #0
	pop {pc}
dword_800CADC: .word 0xF880080
dword_800CAE0: .word 0x3F5F
dword_800CAE4: .word 0x3F0F
	thumb_func_end object_breakPanel_dup2

	thumb_func_start object_breakPanel_dup3
object_breakPanel_dup3:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800CB34
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800CB34
	ldr r2, dword_800CB38 // =0xf880080 
	tst r1, r2
	bne loc_800CB18
	ldr r2, dword_800CB3C // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CB18:
	mov r2, #0x40 
	orr r1, r2
	ldr r2, dword_800CB40 // =0x3f0f 
	bic r1, r2
	add r1, #3
	str r1, [r0,#0x14]
	mov r2, #3
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x97
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CB34:
	mov r0, #0
	pop {pc}
dword_800CB38: .word 0xF880080
dword_800CB3C: .word 0x3F5F
dword_800CB40: .word 0x3F0F
	thumb_func_end object_breakPanel_dup3

	thumb_func_start object_breakPanelLoud
object_breakPanelLoud:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800CB90
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800CB90
	ldr r2, dword_800CB94 // =0xf880080 
	tst r1, r2
	bne loc_800CB74
	ldr r2, dword_800CB98 // =0x3f5f 
	bic r1, r2
	add r1, #1
	str r1, [r0,#0x14]
	mov r2, #1
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0xda
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CB74:
	mov r2, #0x40 
	orr r1, r2
	ldr r2, dword_800CB9C // =0x3f0f 
	bic r1, r2
	add r1, #3
	str r1, [r0,#0x14]
	mov r2, #3
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0xda
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CB90:
	mov r0, #0
	pop {pc}
dword_800CB94: .word 0xF880080
dword_800CB98: .word 0x3F5F
dword_800CB9C: .word 0x3F0F
	thumb_func_end object_breakPanelLoud

	thumb_func_start object_panel_setPoison
object_panel_setPoison:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800CBCC
	ldr r1, [r0,#0x14]
	mov r2, #0x10
	tst r1, r2
	beq loc_800CBCC
	ldr r2, dword_800CBD0 // =0x3f5f 
	bic r1, r2
	ldr r2, off_800CBD4 // =0x114 
	orr r1, r2
	str r1, [r0,#0x14]
	mov r2, #4
	strb r2, [r0,#2]
	strb r2, [r0,#6]
	mov r0, #0x90
	bl PlaySoundEffect
	mov r0, #1
	pop {pc}
loc_800CBCC:
	mov r0, #0
	pop {pc}
dword_800CBD0: .word 0x3F5F
off_800CBD4: .word 0x114
	thumb_func_end object_panel_setPoison

	thumb_func_start object_highlightPanel
object_highlightPanel:
	push {lr}
	push {r0,r1}
	bl object_isValidPanel
	pop {r0,r1}
	beq locret_800CBEC
	bl object_getPanelDataOffset
	mov r1, #1
	strb r1, [r0,#1]
locret_800CBEC:
	pop {pc}
	thumb_func_end object_highlightPanel

	thumb_local_start
object_highlightPanelBlue:
	push {lr}
	push {r0,r1}
	bl object_isValidPanel
	pop {r0,r1}
	beq locret_800CC08
	bl object_getPanelDataOffset
	ldrb r1, [r0,#1]
	cmp r1, #1
	beq locret_800CC08
	mov r1, #2
	strb r1, [r0,#1]
locret_800CC08:
	pop {pc}
	thumb_func_end object_highlightPanelBlue

	thumb_func_start object_setPanelType
object_setPanelType:
	push {r4-r6,lr}
	ldr r4, off_800CE54 // =sub_30079A4+1 
	mov lr, pc
	bx r4
	pop {r4-r6,pc}
	thumb_func_end object_setPanelType

	thumb_func_start object_setPanelAlliance
object_setPanelAlliance:
	push {r4-r6,lr}
	mov r4, r0
	mov r5, r1
	mov r6, r2
	bl object_getPanelDataOffset
	ldrb r3, [r0,#2]
	tst r3, r3
	beq locret_800CC34
	strb r6, [r0,#3]
	mov r2, #0
	strh r2, [r0,#0x10]
	mov r0, r4
	mov r1, r5
	bl object_updatePanelParameters
locret_800CC34:
	pop {r4-r6,pc}
	thumb_func_end object_setPanelAlliance

	thumb_func_start object_setPanelAllianceTimerLong
object_setPanelAllianceTimerLong:
	mov r1, #8
	mul r1, r0
	ldr r0, off_800CE58 // =unk_2034010 
	add r1, r1, r0
	ldr r2, off_800CE5C // =0x708 
	strh r2, [r1,#6]
	mov pc, lr
	thumb_func_end object_setPanelAllianceTimerLong

	thumb_func_start object_setPanelAllianceTimerShort
object_setPanelAllianceTimerShort:
	mov r1, #8
	mul r1, r0
	ldr r0, off_800CE60 // =unk_2034010 
	add r1, r1, r0
	mov r2, #1
	strh r2, [r1,#6]
	mov pc, lr
	thumb_func_end object_setPanelAllianceTimerShort

	thumb_func_start object_setPanelTypeBlink
object_setPanelTypeBlink:
	push {lr}
	push {r2,r3}
	bl object_getPanelDataOffset
	pop {r2,r3}
	mov r1, #1
	strb r1, [r0,#0xd]
	strb r2, [r0,#8]
	strb r3, [r0,#9]
	pop {pc}
	thumb_func_end object_setPanelTypeBlink

	thumb_func_start object_isCurrentPanelValid
object_isCurrentPanelValid:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_isValidPanel
	pop {pc}
	thumb_func_end object_isCurrentPanelValid

	thumb_func_start object_isValidPanel
object_isValidPanel:
	sub r0, #1
	cmp r0, #6
	bcs loc_800CC82
	sub r1, #1
	cmp r1, #3
	bcs loc_800CC82
	mov r0, #1
	mov pc, lr
loc_800CC82:
	mov r0, #0
	mov pc, lr
	thumb_func_end object_isValidPanel

	thumb_func_start object_checkPanelParameters
// r0 = panelx
// r1 = panely
// r2 = flags that should be set
// r3 = flags that should be clear
object_checkPanelParameters:
	push {r4,r5,lr}
	mov r4, r2
	mov r5, r3
	bl object_getPanelParameters
	// does the panel have no flags?
	tst r0, r0
	beq .failure
	// check wanted clear flags
	tst r0, r5
	bne .failure
	// check wanted set flags
	and r0, r4
	cmp r0, r4
	bne .failure
	mov r0, #1
	pop {r4,r5,pc}
.failure
	mov r0, #0
	pop {r4,r5,pc}
	thumb_func_end object_checkPanelParameters

	thumb_func_start object_isCurrentPanelSolid
object_isCurrentPanelSolid:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_isPanelSolid
	pop {pc}
	thumb_func_end object_isCurrentPanelSolid

	thumb_func_start object_isPanelSolid
object_isPanelSolid:
	push {lr}
	bl object_getPanelParameters
	mov r1, #0x10
	and r0, r1
	pop {pc}
	thumb_func_end object_isPanelSolid

	thumb_func_start object_highlightCurrentCollisionPanels
object_highlightCurrentCollisionPanels:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r4,#oCollisionData_PanelX]
	ldrb r1, [r4,#oCollisionData_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	ldrb r2, [r4,#oCollisionData_Region]
	bl object_highlightPanelRegion
	pop {r4,pc}
	thumb_func_end object_highlightCurrentCollisionPanels

	thumb_func_start object_highlightPanelRegion
object_highlightPanelRegion:
	push {r4,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, #0xff
	and r0, r3
	str r0, [sp,#0xc]
	lsr r3, r3, #8
	str r3, [sp,#0x10]
	ldr r0, [sp,#0xc]
	ldr r1, [sp,#0x10]
	bl object_getFlipDirection // (int a1, int a2) -> int
	str r0, [sp,#0xc]
	ldr r4, off_800CDAC // =PanelOffsetListsPointerTable
	ldr r2, [sp,#8]
	lsl r2, r2, #2
	ldr r4, [r4,r2]
loc_800CCFA:
	ldrb r0, [r4]
	cmp r0, #0x7f
	beq loc_800CD1C
	mov r0, #0
	ldrsb r0, [r4,r0]
	ldr r1, [sp,#0xc]
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#4]
	add r1, r1, r2
	bl object_highlightPanel
	add r4, #2
	b loc_800CCFA
loc_800CD1C:
	add sp, sp, #0x14
	pop {r4,pc}
	thumb_func_end object_highlightPanelRegion

	thumb_func_start object_highlightPanelRegionBlue
object_highlightPanelRegionBlue:
	push {r4,r6,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, #0xff
	and r0, r3
	str r0, [sp,#0xc]
	lsr r3, r3, #8
	str r3, [sp,#0x10]
	mov r0, #0x80
	tst r0, r2
	bne loc_800CD6E
	ldr r0, [sp,#0xc]
	ldr r1, [sp,#0x10]
	bl object_getFlipDirection // (int a1, int a2) -> int
	str r0, [sp,#0xc]
	ldr r4, off_800CDAC // =PanelOffsetListsPointerTable
	ldr r2, [sp,#8]
	lsl r2, r2, #2
	ldr r4, [r4,r2]
loc_800CD4C:
	ldrb r0, [r4]
	cmp r0, #0x7f
	beq loc_800CDA8
	mov r0, #0
	ldrsb r0, [r4,r0]
	ldr r1, [sp,#0xc]
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#4]
	add r1, r1, r2
	bl object_highlightPanelBlue
	add r4, #2
	b loc_800CD4C
loc_800CD6E:
	ldr r1, [sp,#8]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x16
	ldr r0, off_800CDB0 // =byte_8019C34 
	add r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0,#4]
	mov r6, #1
loc_800CD7E:
	mov r4, #1
loc_800CD80:
	push {r2,r3}
	mov r0, r4
	mov r1, r6
	bl object_checkPanelParameters
	tst r0, r0
	pop {r2,r3}
	beq loc_800CD9C
	mov r0, r4
	mov r1, r6
	push {r2,r3}
	bl object_highlightPanelBlue
	pop {r2,r3}
loc_800CD9C:
	add r4, #1
	cmp r4, #6
	ble loc_800CD80
	add r6, #1
	cmp r6, #3
	ble loc_800CD7E
loc_800CDA8:
	add sp, sp, #0x14
	pop {r4,r6,pc}
off_800CDAC: .word PanelOffsetListsPointerTable
off_800CDB0: .word byte_8019C34
	thumb_func_end object_highlightPanelRegionBlue

	thumb_local_start
object_dead_getPanelsTypeAllianceCount:
	push {lr}
	sub sp, sp, #0x14
	str r0, [sp,#8]
	str r1, [sp,#0xc]
	mov r0, #0
	str r0, [sp,#0x10]
	mov r0, #1
	str r0, [sp]
	mov r1, #1
	str r1, [sp,#4]
loc_800CDC8:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl object_getPanelDataOffset
	ldrb r1, [r0,#3]
	ldr r2, [sp,#0xc]
	cmp r1, r2
	bne loc_800CDE6
	ldrb r1, [r0,#2]
	ldr r2, [sp,#8]
	cmp r1, r2
	bne loc_800CDE6
	ldr r0, [sp,#0x10]
	add r0, #1
	str r0, [sp,#0x10]
loc_800CDE6:
	ldr r0, [sp]
	add r0, #1
	str r0, [sp]
	cmp r0, #6
	ble loc_800CDC8
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp,#4]
	add r1, #1
	str r1, [sp,#4]
	cmp r1, #3
	ble loc_800CDC8
	ldr r0, [sp,#0x10]
	add sp, sp, #0x14
	pop {pc}
	thumb_func_end object_dead_getPanelsTypeAllianceCount

	thumb_local_start
object_dead_getPanelsTypeCount:
	push {r4-r7,lr}
	mov r4, r0
	mov r5, #0
	mov r6, #1
	mov r7, #1
	mov r0, #1
loc_800CE10:
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	ldrb r1, [r0,#2]
	cmp r1, r4
	bne loc_800CE20
	add r5, #1
loc_800CE20:
	add r6, #1
	cmp r6, #6
	ble loc_800CE10
	mov r6, #1
	add r7, #1
	cmp r7, #3
	ble loc_800CE10
	mov r0, r5
	pop {r4-r7,pc}
	thumb_func_end object_dead_getPanelsTypeCount

	thumb_func_start object_hidePanel
object_hidePanel:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq locret_800CE40
	mov r1, #0
	strb r1, [r0]
locret_800CE40:
	pop {pc}
	thumb_func_end object_hidePanel

	thumb_local_start
object_showPanel:
	push {lr}
	bl object_getPanelDataOffset
	tst r0, r0
	beq locret_800CE50
	mov r1, #1
	strb r1, [r0]
locret_800CE50:
	pop {pc}
	.balign 4, 0x00
off_800CE54: .word sub_30079A4+1
off_800CE58: .word unk_2034010
off_800CE5C: .word 0x708
off_800CE60: .word unk_2034010
	thumb_func_end object_showPanel

	thumb_func_start object_getPanelsExceptCurrentFiltered
object_getPanelsExceptCurrentFiltered:
	push {r4,r6,lr}
	mov r6, #0
	mov r1, #3
loc_800CE6A:
	mov r0, #6
loc_800CE6C:
	push {r0-r3,r6,r7}
	bl object_getPanelParameters
	mov r4, r0
	pop {r0-r3,r6,r7}
	tst r4, r3
	bne loc_800CE94
	and r4, r2
	cmp r4, r2
	bne loc_800CE94
	ldrb r4, [r5,#oBattleObject_PanelX]
	cmp r0, r4
	bne loc_800CE8C
	ldrb r4, [r5,#oBattleObject_PanelY]
	cmp r1, r4
	beq loc_800CE94
loc_800CE8C:
	lsl r4, r1, #4
	orr r4, r0
	strb r4, [r7,r6]
	add r6, #1
loc_800CE94:
	sub r0, #1
	bne loc_800CE6C
	sub r1, #1
	bne loc_800CE6A
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end object_getPanelsExceptCurrentFiltered

	thumb_func_start object_getPanelsFiltered
object_getPanelsFiltered:
	push {r4,r6,lr}
	mov r6, #0
	mov r1, #3
loc_800CEA6:
	mov r0, #6
loc_800CEA8:
	push {r0-r3,r6,r7}
	bl object_getPanelParameters
	mov r4, r0
	pop {r0-r3,r6,r7}
	tst r4, r3
	bne loc_800CEC4
	and r4, r2
	cmp r4, r2
	bne loc_800CEC4
	lsl r4, r1, #4
	orr r4, r0
	strb r4, [r7,r6]
	add r6, #1
loc_800CEC4:
	sub r0, #1
	bne loc_800CEA8
	sub r1, #1
	bne loc_800CEA6
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end object_getPanelsFiltered

	thumb_local_start
object_getRandomPanelFromCurrentColumn:
	push {r7,lr}
	sub sp, sp, #0x10
	push {r1}
	ldrb r1, [r5,#0x16]
	lsl r1, r1, #3
	add r2, r2, r1
	tst r1, r1
	bne loc_800CEE6
	mov r1, #7
	sub r1, r1, r0
	mov r0, r1
loc_800CEE6:
	pop {r1}
	ldr r3, [r2,#4]
	ldr r2, [r2]
	add r7, sp, #0
	bl object_getPanelsInColumnIgnoreRowFiltered
	tst r0, r0
	beq loc_800CF0E
	push {r0}
	bl GetPositiveSignedRNG2
	pop {r1}
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	add sp, sp, #0x10
	pop {r7,pc}
loc_800CF0E:
	add sp, sp, #0x10
	mov r2, r0
	pop {r7,pc}
	thumb_func_end object_getRandomPanelFromCurrentColumn

	thumb_func_start object_getPanelsInColumnIgnoreRowFiltered
object_getPanelsInColumnIgnoreRowFiltered:
	push {r4,r6,lr}
	mov r6, #0
	mov r4, r1
	mov r1, #1
loc_800CF1C:
	cmp r1, r4
	beq loc_800CF38
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_800CF38
	push {r0,r1}
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	pop {r0,r1}
loc_800CF38:
	add r1, #1
	cmp r1, #3
	ble loc_800CF1C
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end object_getPanelsInColumnIgnoreRowFiltered

	thumb_func_start object_getPanelsInRowIgnoreColumnFiltered
object_getPanelsInRowIgnoreColumnFiltered:
	push {r4,r6,lr}
	mov r6, #0
	mov r4, r0
	mov r0, #1
loc_800CF4A:
	cmp r0, r4
	beq loc_800CF66
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_800CF66
	push {r0,r1}
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	pop {r0,r1}
loc_800CF66:
	add r0, #1
	cmp r0, #6
	ble loc_800CF4A
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end object_getPanelsInRowIgnoreColumnFiltered

	thumb_func_start object_getPanelsIgnoreRowFiltered
object_getPanelsIgnoreRowFiltered:
	push {r4,r6,lr}
	mov r6, #0
	mov r4, r0
	mov r0, #1
loc_800CF78:
	cmp r0, r4
	beq loc_800CF9C
	mov r1, #1
loc_800CF7E:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_800CF96
	push {r0,r1}
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	pop {r0,r1}
loc_800CF96:
	add r1, #1
	cmp r1, #3
	ble loc_800CF7E
loc_800CF9C:
	add r0, #1
	cmp r0, #6
	ble loc_800CF78
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end object_getPanelsIgnoreRowFiltered

	thumb_func_start object_getPanelsIgnoreColumnFiltered
object_getPanelsIgnoreColumnFiltered:
	push {r4,r6,lr}
	mov r6, #0
	mov r4, r0
	mov r1, #1
loc_800CFAE:
	cmp r1, r4
	beq loc_800CFD2
	mov r0, #1
loc_800CFB4:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_800CFCC
	push {r0,r1}
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	pop {r0,r1}
loc_800CFCC:
	add r0, #1
	cmp r0, #6
	ble loc_800CFB4
loc_800CFD2:
	add r1, #1
	cmp r1, #3
	ble loc_800CFAE
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end object_getPanelsIgnoreColumnFiltered

	thumb_func_start object_getPanelsInColumnFiltered
object_getPanelsInColumnFiltered:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r4, r0
	mov r5, #1
	mov r6, #0
	str r2, [sp]
	str r3, [sp,#4]
loc_800CFEA:
	mov r0, r4
	mov r1, r5
	ldr r2, [sp]
	ldr r3, [sp,#4]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_800D006
	mov r0, r4
	mov r1, r5
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
loc_800D006:
	add r5, #1
	cmp r5, #3
	ble loc_800CFEA
	mov r0, r6
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end object_getPanelsInColumnFiltered

	thumb_func_start object_getPanelsInRowFiltered
object_getPanelsInRowFiltered:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r4, #1
	mov r5, r0
	mov r6, #0
	str r2, [sp]
	str r3, [sp,#4]
loc_800D020:
	mov r0, r4
	mov r1, r5
	ldr r2, [sp]
	ldr r3, [sp,#4]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_800D03C
	mov r0, r4
	mov r1, r5
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
loc_800D03C:
	add r4, #1
	cmp r4, #6
	ble loc_800D020
	mov r0, r6
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end object_getPanelsInRowFiltered

	thumb_local_start
object_getEnemyPlayerPanelY:
	push {lr}
	ldrb r0, [r5,#0x16]
	mov r1, #1
	eor r0, r1
	bl sub_80103BC
	mov r1, r0
	beq loc_800D066
	ldrb r0, [r1,#0x13]
	cmp r0, #1
	blt loc_800D062
	cmp r0, #3
	ble locret_800D068
loc_800D062:
	ldrb r0, [r1,#0x15]
	b locret_800D068
loc_800D066:
	ldrb r0, [r5,#0x13]
locret_800D068:
	pop {pc}
	thumb_func_end object_getEnemyPlayerPanelY

	thumb_func_start object_getEnemyPlayerPanels
object_getEnemyPlayerPanels:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103BC
	tst r0, r0
	beq loc_800D080
	ldrb r1, [r0,#oBattleObject_PanelY]
	ldrb r0, [r0,#oBattleObject_PanelX]
	pop {pc}
loc_800D080:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	pop {pc}
	thumb_func_end object_getEnemyPlayerPanels

	thumb_func_start object_getClosestPanelMatchingRowFiltered
object_getClosestPanelMatchingRowFiltered:
	push {r4,r5,lr}
	push {r0-r3}
	bl object_getAllianceDirection
	mov r5, r0
	neg r5, r5
	pop {r0-r3}
	mov r4, r0
	mov r0, #5
	mul r0, r4
	neg r0, r0
	add r0, #6
loc_800D09E:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	bne locret_800D0BA
	add r0, r0, r5
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	bne loc_800D09E
	mov r0, #0
locret_800D0BA:
	pop {r4,r5,pc}
	thumb_func_end object_getClosestPanelMatchingRowFiltered

	thumb_func_start object_getFirstPanelInDirectionFiltered
object_getFirstPanelInDirectionFiltered:
	push {lr}
loc_800D0BE:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	bne locret_800D0DA
	add r0, r0, r4
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	bne loc_800D0BE
	mov r0, #0
locret_800D0DA:
	pop {pc}
	thumb_func_end object_getFirstPanelInDirectionFiltered

	thumb_local_start
object_getFirstPanelInDirectionWithinDistanceFiltered:
	push {lr}
loc_800D0DE:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	bne locret_800D0FE
	add r0, r0, r4
	sub r6, #1
	ble loc_800D0FC
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	bne loc_800D0DE
loc_800D0FC:
	mov r0, #0
locret_800D0FE:
	pop {pc}
	thumb_func_end object_getFirstPanelInDirectionWithinDistanceFiltered

	thumb_local_start
object_getFirstPanelInDirectionFilteredDup1:
	push {lr}
loc_800D102:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	bne locret_800D11E
	add r1, r1, r4
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	bne loc_800D102
	mov r0, #0
locret_800D11E:
	pop {pc}
	thumb_func_end object_getFirstPanelInDirectionFilteredDup1

	thumb_func_start sub_800D120
sub_800D120:
	push {r6,r7,lr}
	sub sp, sp, #8
	mov r6, r0
	mov r7, r1
	str r0, [sp]
	str r1, [sp,#4]
loc_800D12C:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_800D13A
	mov r6, r0
loc_800D13A:
	add r0, r0, r4
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	bne loc_800D12C
	ldr r0, [sp]
	cmp r0, r6
	bne loc_800D152
	mov r0, #0
	b loc_800D154
loc_800D152:
	mov r0, r6
loc_800D154:
	mov r1, r7
	add sp, sp, #8
	pop {r6,r7,pc}
	thumb_func_end sub_800D120

	thumb_func_start sub_800D15A
sub_800D15A:
	push {r6,r7,lr}
	sub sp, sp, #8
	mov r6, r0
	mov r7, r1
	str r0, [sp]
	str r1, [sp,#4]
loc_800D166:
	push {r0-r3}
	bl object_checkPanelParameters
	tst r0, r0
	pop {r0-r3}
	beq loc_800D174
	mov r7, r1
loc_800D174:
	add r1, r1, r4
	push {r0-r3}
	bl object_isValidPanel
	tst r0, r0
	pop {r0-r3}
	bne loc_800D166
	ldr r1, [sp,#4]
	cmp r1, r7
	bne loc_800D18A
	mov r0, #0
loc_800D18A:
	mov r1, r7
	add sp, sp, #8
	pop {r6,r7,pc}
	thumb_func_end sub_800D15A

	thumb_local_start
sub_800D190:
	push {r4,lr}
	sub sp, sp, #0x14
	str r0, [sp,#0xc]
	str r2, [sp,#4]
	str r3, [sp,#8]
	mov r0, #1
	str r0, [sp,#0x10]
	mov r4, #0
loc_800D1A0:
	ldr r0, [sp,#0xc]
	ldr r1, [sp,#0x10]
	ldr r2, [sp,#4]
	ldr r3, [sp,#8]
	bl object_getClosestPanelMatchingRowFiltered
	tst r0, r0
	beq loc_800D1B6
	add r1, sp, #0
	strb r0, [r1,r4]
	add r4, #1
loc_800D1B6:
	ldr r0, [sp,#0x10]
	add r0, #1
	str r0, [sp,#0x10]
	cmp r0, #3
	ble loc_800D1A0
	tst r4, r4
	beq loc_800D1EA
	add r3, sp, #0
	ldrb r0, [r3]
	mov r1, #1
loc_800D1CA:
	cmp r1, r4
	bge loc_800D1EC
	ldr r2, [sp,#0xc]
	tst r2, r2
	bne loc_800D1DE
	ldrb r2, [r3,r1]
	cmp r2, r0
	blt loc_800D1DC
	mov r0, r2
loc_800D1DC:
	b loc_800D1E6
loc_800D1DE:
	ldrb r2, [r3,r1]
	cmp r2, r0
	bgt loc_800D1E6
	mov r0, r2
loc_800D1E6:
	add r1, #1
	b loc_800D1CA
loc_800D1EA:
	mov r0, #0
loc_800D1EC:
	add sp, sp, #0x14
	pop {r4,pc}
	thumb_func_end sub_800D190

	thumb_local_start
sub_800D1F0:
	push {r6,lr}
	sub sp, sp, #0x20
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
	bl object_getFlipDirection // (int a1, int a2) -> int
	mov r1, r0
	neg r1, r1
	str r1, [sp,#0x10]
	ldr r0, [sp]
	ldr r1, [sp,#4]
	eor r0, r1
	mov r1, r0
	mov r0, #5
	mul r0, r1
	neg r0, r0
	add r0, #6
	str r0, [sp,#0x14]
	str r0, [sp,#0x18]
	mov r1, #1
	str r1, [sp,#0x1c]
loc_800D220:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D25C
	ldrb r1, [r0,#3]
	ldr r2, [sp]
	cmp r1, r2
	bne loc_800D252
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_800D25C
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	b loc_800D25C
loc_800D252:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	str r0, [sp,#0x18]
	b loc_800D220
loc_800D25C:
	ldr r0, [sp,#0x14]
	str r0, [sp,#0x18]
	ldr r0, [sp,#0x1c]
	add r0, #1
	str r0, [sp,#0x1c]
	cmp r0, #3
	ble loc_800D220
	mov r0, r6
	add sp, sp, #0x20
	pop {r6,pc}
	thumb_func_end sub_800D1F0

	thumb_local_start
sub_800D270:
	push {r6,lr}
	sub sp, sp, #0x20
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
	bl object_getFlipDirection // (int a1, int a2) -> int
	mov r1, r0
	neg r1, r1
	str r1, [sp,#0x10]
	ldrb r0, [r5,#0x12]
	str r0, [sp,#0x14]
	str r0, [sp,#0x18]
	mov r1, #1
	str r1, [sp,#0x1c]
loc_800D292:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D2EC
	ldrb r1, [r0,#3]
	ldr r2, [sp]
	cmp r1, r2
	bne loc_800D2B0
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x10]
	sub r0, r0, r1
	str r0, [sp,#0x18]
	b loc_800D292
loc_800D2B0:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D2EC
	ldrb r1, [r0,#3]
	ldr r2, [sp]
	cmp r1, r2
	bne loc_800D2E2
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_800D2EC
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	b loc_800D2EC
loc_800D2E2:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	str r0, [sp,#0x18]
	b loc_800D2B0
loc_800D2EC:
	ldr r0, [sp,#0x14]
	str r0, [sp,#0x18]
	ldr r0, [sp,#0x1c]
	add r0, #1
	str r0, [sp,#0x1c]
	cmp r0, #3
	ble loc_800D292
	mov r0, r6
	add sp, sp, #0x20
	pop {r6,pc}
	thumb_func_end sub_800D270

	thumb_local_start
sub_800D300:
	push {r6,lr}
	sub sp, sp, #0x20
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
	bl object_getFlipDirection // (int a1, int a2) -> int
	mov r1, r0
	neg r1, r1
	str r1, [sp,#0x10]
	ldrb r0, [r5,#0x12]
	str r0, [sp,#0x14]
	str r0, [sp,#0x18]
	mov r1, #1
	str r1, [sp,#0x1c]
loc_800D322:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D392
	ldrb r1, [r0,#3]
	ldr r2, [sp]
	cmp r1, r2
	bne loc_800D340
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x10]
	sub r0, r0, r1
	str r0, [sp,#0x18]
	b loc_800D322
loc_800D340:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	bl object_getPanelParameters
	ldr r1, dword_800D4A4 // =0x1800000 
	ldr r2, [sp]
	cmp r2, #0
	beq loc_800D352
	ldr r1, dword_800D4A8 // =0x2800000 
loc_800D352:
	tst r0, r1
	bne loc_800D392
loc_800D356:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D392
	ldrb r1, [r0,#3]
	ldr r2, [sp]
	cmp r1, r2
	bne loc_800D388
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_800D392
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x1c]
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
	b loc_800D392
loc_800D388:
	ldr r0, [sp,#0x18]
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	str r0, [sp,#0x18]
	b loc_800D356
loc_800D392:
	ldr r0, [sp,#0x14]
	str r0, [sp,#0x18]
	ldr r0, [sp,#0x1c]
	add r0, #1
	str r0, [sp,#0x1c]
	cmp r0, #3
	ble loc_800D322
	mov r0, r6
	add sp, sp, #0x20
	pop {r6,pc}
	thumb_func_end sub_800D300

	thumb_local_start
sub_800D3A6:
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
loc_800D3BC:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_800D3F8
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
	beq loc_800D3F4
	ldr r0, [sp,#0x30]
	ldr r1, [sp,#0x34]
	lsl r1, r1, #4
	orr r0, r1
	ldr r1, [sp,#0x2c]
	strb r0, [r7,r1]
	add r1, #1
	str r1, [sp,#0x2c]
loc_800D3F4:
	add r4, #2
	b loc_800D3BC
loc_800D3F8:
	ldr r0, [sp,#0x2c]
	add sp, sp, #0x38
	pop {r4,pc}
	thumb_func_end sub_800D3A6

	thumb_func_start object_getPanelRegion
object_getPanelRegion:
	push {r4,r6,lr}
	sub sp, sp, #0x1c
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	ldr r0, off_800D458 // =PanelOffsetListsPointerTable
	lsl r4, r4, #2
	ldr r4, [r0,r4]
	mov r0, r6
	bl object_getAllianceDirection
	str r0, [sp,#0x10]
	mov r6, #0
loc_800D41A:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_800D452
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0x10]
	mul r0, r2
	ldr r2, [sp]
	add r0, r0, r2
	str r0, [sp,#0x14]
	ldr r2, [sp,#4]
	add r1, r1, r2
	str r1, [sp,#0x18]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_800D44E
	ldr r0, [sp,#0x14]
	ldr r1, [sp,#0x18]
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,r6]
	add r6, #1
loc_800D44E:
	add r4, #2
	b loc_800D41A
loc_800D452:
	mov r0, r6
	add sp, sp, #0x1c
	pop {r4,r6,pc}
off_800D458: .word PanelOffsetListsPointerTable
	thumb_func_end object_getPanelRegion

	thumb_func_start sub_800D45C
sub_800D45C:
	push {r4,r6,lr}
	mov r6, #0
	mov r1, #3
loc_800D462:
	mov r0, #6
loc_800D464:
	ldrb r4, [r5,#oBattleObject_PanelX]
	sub r4, r4, r0
	add r4, #1
	bmi loc_800D47C
	cmp r4, #2
	bgt loc_800D47C
	ldrb r4, [r5,#oBattleObject_PanelY]
	sub r4, r4, r1
	add r4, #1
	bmi loc_800D47C
	cmp r4, #2
	ble loc_800D498
loc_800D47C:
	push {r0-r3,r6,r7}
	bl object_getPanelParameters
	mov r4, r0
	pop {r0-r3,r6,r7}
	tst r4, r3
	bne loc_800D498
	and r4, r2
	cmp r4, r2
	bne loc_800D498
	lsl r4, r1, #4
	orr r4, r0
	strb r4, [r7,r6]
	add r6, #1
loc_800D498:
	sub r0, #1
	bne loc_800D464
	sub r1, #1
	bne loc_800D462
	mov r0, r6
	pop {r4,r6,pc}
dword_800D4A4: .word 0x1800000
dword_800D4A8: .word 0x2800000
	thumb_func_end sub_800D45C

	thumb_local_start
sub_800D4AC:
	push {lr}
	ldr r0, [r5,#0x58]
	ldr r0, [r0,#0x78]
	tst r0, r0
	beq loc_800D4BC
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	pop {pc}
loc_800D4BC:
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	pop {pc}
	thumb_func_end sub_800D4AC

	thumb_func_start object_getEdgePanelMatchingRow
object_getEdgePanelMatchingRow:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	ldrb r2, [r5,#oBattleObject_PanelY]
	bl sub_800D4D0
	pop {pc}
	thumb_func_end object_getEdgePanelMatchingRow

	thumb_func_start sub_800D4D0
sub_800D4D0:
	push {r4,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#0xc]
	bl object_getFlipDirection // (int a1, int a2) -> int
	neg r0, r0
	str r0, [sp,#0x10]
	ldr r0, [sp,#0xc]
	ldr r1, [sp]
	ldr r2, [sp,#4]
	bl sub_800D53C
	tst r0, r0
	beq loc_800D524
	ldr r2, [sp]
	lsl r2, r2, #3
	ldr r1, off_800D528 // =byte_800D52C 
	add r1, r1, r2
	ldr r2, [r1]
	ldr r3, [r1,#4]
	ldr r1, [sp,#0xc]
	ldr r4, [sp,#0x10]
	bl object_getFirstPanelInDirectionFiltered
	str r0, [sp,#8]
	tst r0, r0
	beq loc_800D524
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl object_getFlipDirection // (int a1, int a2) -> int
	ldr r1, [sp,#8]
	add r0, r0, r1
	str r0, [sp,#8]
	ldr r1, [sp,#0xc]
	bl object_isValidPanel
	tst r0, r0
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
loc_800D524:
	add sp, sp, #0x14
	pop {r4,pc}
off_800D528: .word byte_800D52C
byte_800D52C: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_800D4D0

	thumb_local_start
sub_800D53C:
	push {lr}
	sub sp, sp, #0x14
	str r0, [sp,#4]
	str r1, [sp,#8]
	str r2, [sp,#0xc]
	eor r2, r1
	mov r1, #5
	mul r2, r1
	neg r2, r2
	add r2, #6
	str r2, [sp]
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	bl object_getFlipDirection // (int a1, int a2) -> int
	neg r0, r0
	str r0, [sp,#0x10]
loc_800D55E:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl object_isValidPanel
	beq loc_800D582
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl object_getPanelDataOffset
	ldrb r0, [r0,#3]
	ldr r1, [sp,#8]
	cmp r0, r1
	bne loc_800D586
	ldr r0, [sp]
	ldr r1, [sp,#0x10]
	add r0, r0, r1
	str r0, [sp]
	b loc_800D55E
loc_800D582:
	mov r0, #0
	str r0, [sp]
loc_800D586:
	ldr r0, [sp]
	add sp, sp, #0x14
	pop {pc}
	thumb_func_end sub_800D53C

	thumb_func_start sub_800D58C
sub_800D58C:
	push {r4,r6,r7,lr}
	bl sub_800D5BA
	mov r6, r0
	ldrb r7, [r5,#oBattleObject_Alliance]
	bl object_getFrontDirection // () -> int
	mov r4, r0
loc_800D59C:
	mov r0, r6
	mov r1, r7
	bl sub_800D5F0
	tst r0, r0
	bne loc_800D5B6
	add r6, r6, r4
	mov r0, r6
	mov r1, #1
	bl object_isValidPanel
	bne loc_800D59C
	mov r6, r0
loc_800D5B6:
	mov r0, r6
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800D58C

	thumb_local_start
sub_800D5BA:
	push {r4,r6,r7,lr}
	ldrb r6, [r5,#oBattleObject_PanelX]
	ldrb r7, [r5,#oBattleObject_Alliance]
	bl object_getFrontDirection // () -> int
	neg r4, r0
loc_800D5C6:
	mov r0, r6
	mov r1, #1
	bl object_isValidPanel
	beq loc_800D5E4
	mov r0, r6
	mov r1, r7
	bl sub_800D5F0
	tst r0, r0
	beq loc_800D5E0
	add r6, r6, r4
	b loc_800D5C6
loc_800D5E0:
	mov r0, r6
	pop {r4,r6,r7,pc}
loc_800D5E4:
	ldrb r6, [r5,#oBattleObject_PanelX]
	bl object_getFrontDirection // () -> int
	mov r4, r0
	b loc_800D5C6
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800D5BA

	thumb_func_start sub_800D5F0
sub_800D5F0:
	push {r4-r7,lr}
	mov r4, r1
	mov r5, #0
	mov r6, r0
	mov r7, #1
loc_800D5FA:
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D60E
	ldrb r1, [r0,#3]
	cmp r1, r4
	beq loc_800D60E
	add r5, #1
loc_800D60E:
	add r7, #1
	cmp r7, #3
	ble loc_800D5FA
	mov r0, r5
	pop {r4-r7,pc}
	thumb_func_end sub_800D5F0

	thumb_func_start sub_800D618
sub_800D618:
	push {r4,lr}
	mov r4, r2
	bl object_getPanelDataOffset
	tst r0, r0
	beq locret_800D634
	ldrb r1, [r0,#4]
	ldrb r2, [r0,#3]
	mov r0, #0
	cmp r1, r2
	beq locret_800D634
	cmp r1, r4
	bne locret_800D634
	mov r0, #1
locret_800D634:
	pop {r4,pc}
	thumb_func_end sub_800D618

	thumb_local_start
sub_800D636:
	push {r4,r5,r7,lr}
	mov r2, #8
	mul r2, r0
	ldr r3, off_800D724 // =unk_2034010 
	add r3, r3, r2
	ldrb r2, [r3]
	cmp r2, r1
	bne loc_800D664
	mov r4, r0
	mov r5, r1
	sub r0, #1
	bl sub_800D6CC
	tst r0, r0
	bne loc_800D664
	add r0, r4, #1
	mov r1, r5
	bl sub_800D6CC
	tst r0, r0
	bne loc_800D664
	mov r0, #0
	pop {r4,r5,r7,pc}
loc_800D664:
	mov r0, #1
	pop {r4,r5,r7,pc}
	thumb_func_end sub_800D636

	thumb_func_start sub_800D668
sub_800D668:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	mov r5, r1
	mov r6, r2
	mov r3, #0
	str r3, [sp,#8]
	mov r3, #8
	mul r3, r0
	ldr r4, off_800D728 // =unk_2034010 
	add r4, r4, r3
	ldrb r3, [r4]
	cmp r3, r2
	bne loc_800D6C6
	mov r7, #1
loc_800D688:
	ldr r4, [sp]
loc_800D68A:
	add r4, r4, r7
	mov r0, r4
	mov r1, r5
	bl object_isValidPanel
	tst r0, r0
	beq loc_800D6B4
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl sub_800D618
	tst r0, r0
	bne loc_800D6B4
	mov r0, r4
	mov r1, r6
	bl sub_800D6CC
	tst r0, r0
	bne loc_800D6C6
	b loc_800D68A
loc_800D6B4:
	ldr r0, [sp,#8]
	tst r0, r0
	bne loc_800D6C2
	neg r7, r7
	mov r0, #1
	str r0, [sp,#8]
	b loc_800D688
loc_800D6C2:
	mov r0, #0
	b loc_800D6C8
loc_800D6C6:
	mov r0, #1
loc_800D6C8:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_800D668

	thumb_local_start
sub_800D6CC:
	push {r4-r6,lr}
	mov r2, #8
	mul r2, r0
	ldr r3, off_800D72C // =unk_2034010 
	add r3, r3, r2
	ldrb r6, [r3]
	cmp r6, r1
	bne loc_800D6FC
	mov r4, r0
	mov r5, #1
loc_800D6E0:
	mov r0, r4
	mov r1, r5
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800D6FC
	ldrb r1, [r0,#3]
	cmp r1, r6
	bne loc_800D6FC
	add r5, #1
	cmp r5, #3
	ble loc_800D6E0
	mov r0, #1
	pop {r4-r6,pc}
loc_800D6FC:
	mov r0, #0
	pop {r4-r6,pc}
	thumb_func_end sub_800D6CC

	thumb_local_start
sub_800D700:
	push {r4-r7,lr}
	mov r4, #0
	mov r5, r1
	mov r6, r0
	mov r7, #1
loc_800D70A:
	mov r0, r6
	mov r1, r7
	bl object_getPanelDataOffset
	ldrb r1, [r0,#3]
	cmp r1, r5
	bne loc_800D71A
	add r4, #1
loc_800D71A:
	add r7, #1
	cmp r7, #3
	ble loc_800D70A
	mov r0, r4
	pop {r4-r7,pc}
off_800D724: .word unk_2034010
off_800D728: .word unk_2034010
off_800D72C: .word unk_2034010
byte_800D730: .byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x23, 0x32, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x32, 0x22, 0x32, 0x0, 0x32, 0x22, 0x32, 0x0, 0x22, 0x32
	.byte 0x22, 0x0, 0x23, 0x22, 0x22, 0x0, 0x22, 0x22, 0x32, 0x0
	.byte 0x22, 0x23, 0x22, 0x0, 0x23, 0x32, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x33, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x23, 0x22, 0x23, 0x0, 0x22, 0x23, 0x32, 0x0, 0x32, 0x32
	.byte 0x22, 0x0, 0x22, 0x23, 0x32, 0x0, 0x23, 0x32, 0x22, 0x0
	.byte 0x22, 0x23, 0x32, 0x0, 0x32, 0x22, 0x23, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x32, 0x22, 0x23, 0x0, 0x22, 0x23, 0x22, 0x0
	.byte 0x32, 0x32, 0x32, 0x0, 0x23, 0x22, 0x23, 0x0, 0x22, 0x33
	.byte 0x22, 0x0, 0x22, 0x33, 0x22, 0x0, 0x22, 0x33, 0x22, 0x0
	.byte 0x32, 0x22, 0x23, 0x0, 0x23, 0x22, 0x32, 0x0, 0x32, 0x22
	.byte 0x23, 0x0, 0x33, 0x33, 0x33, 0x0, 0x23, 0x33, 0x32, 0x0
	.byte 0x33, 0x33, 0x33, 0x0, 0x33, 0x33, 0x33, 0x0, 0x33, 0x33
	.byte 0x33, 0x0, 0x33, 0x33, 0x33, 0x0, 0x22, 0x33, 0x22, 0x0
	.byte 0x32, 0x0, 0x23, 0x0, 0x22, 0x33, 0x22, 0x0, 0x22, 0x30
	.byte 0x22, 0x0, 0x22, 0x0, 0x22, 0x0, 0x22, 0x3, 0x22, 0x0
	.byte 0x23, 0x32, 0x22, 0x0, 0x2, 0x22, 0x20, 0x0, 0x22, 0x23
	.byte 0x32, 0x0, 0x32, 0x30, 0x22, 0x0, 0x22, 0x3, 0x23, 0x0
	.byte 0x22, 0x32, 0x30, 0x0, 0x22, 0x33, 0x2, 0x0, 0x20, 0x22
	.byte 0x23, 0x0, 0x32, 0x2, 0x23, 0x0, 0x2, 0x2, 0x32, 0x0
	.byte 0x23, 0x22, 0x22, 0x0, 0x22, 0x33, 0x2, 0x0, 0x22, 0x30
	.byte 0x22, 0x0, 0x22, 0x3, 0x22, 0x0, 0x22, 0x30, 0x22, 0x0
	.byte 0x30, 0x22, 0x3, 0x0, 0x23, 0x22, 0x32, 0x0, 0x30, 0x22
	.byte 0x3, 0x0, 0x22, 0x22, 0x2, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x20, 0x22, 0x22, 0x0, 0x20, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x2, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x2, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x2
	.byte 0x22, 0x0, 0x22, 0x20, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x2, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x20, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x20, 0x22, 0x2, 0x0, 0x22, 0x22, 0x22, 0x0, 0x2, 0x22
	.byte 0x20, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x20, 0x0
	.byte 0x22, 0x20, 0x22, 0x0, 0x20, 0x2, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x20, 0x0, 0x2, 0x0, 0x22, 0x0, 0x22, 0x0
	.byte 0x20, 0x0, 0x2, 0x0, 0x20, 0x20, 0x20, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x2, 0x2, 0x2, 0x0, 0x20, 0x22, 0x22, 0x0
	.byte 0xC2, 0x22, 0x2B, 0x0, 0x22, 0x22, 0x2, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0xA, 0x22, 0x90, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x0, 0x22, 0x0, 0xC2, 0x22
	.byte 0x2B, 0x0, 0x22, 0x22, 0x22, 0x0, 0x20, 0x22, 0xA2, 0x0
	.byte 0x2C, 0x22, 0xB2, 0x0, 0x29, 0x22, 0x2, 0x0, 0xA0, 0x2
	.byte 0x2A, 0x0, 0x22, 0x22, 0x22, 0x0, 0x92, 0x20, 0x9, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0xA0, 0x22, 0x9, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x2C, 0x0, 0xB2, 0x22, 0x2B, 0x0
	.byte 0xC2, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x29, 0x9A, 0xA2, 0x0, 0x22, 0x22, 0x22, 0x0, 0xAC, 0x22
	.byte 0x22, 0x0, 0x29, 0x22, 0xA2, 0x0, 0x22, 0x22, 0xB9, 0x0
	.byte 0xC2, 0x22, 0x22, 0x0, 0x22, 0xCB, 0x22, 0x0, 0x22, 0x22
	.byte 0x2B, 0x0, 0x2C, 0x22, 0x22, 0x0, 0xC2, 0x22, 0x2B, 0x0
	.byte 0x22, 0x22, 0xB2, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x2A, 0xCB, 0xA2, 0x0, 0x22, 0x22, 0x22, 0x0, 0x2C, 0x99
	.byte 0xB2, 0x0, 0x72, 0x27, 0x22, 0x0, 0x72, 0x77, 0x27, 0x0
	.byte 0x22, 0x72, 0x27, 0x0, 0xB2, 0x22, 0x2C, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0xC2, 0x22, 0x2B, 0x0, 0x62, 0x26, 0x22, 0x0
	.byte 0x22, 0x66, 0x22, 0x0, 0x22, 0x62, 0x26, 0x0, 0x62, 0x22
	.byte 0x26, 0x0, 0x66, 0x66, 0x66, 0x0, 0x62, 0x22, 0x26, 0x0
	.byte 0x66, 0x22, 0x22, 0x0, 0x26, 0x22, 0x62, 0x0, 0x22, 0x22
	.byte 0x66, 0x0, 0x26, 0x22, 0x62, 0x0, 0x66, 0x22, 0x66, 0x0
	.byte 0x26, 0x22, 0x62, 0x0, 0x22, 0x62, 0x66, 0x0, 0x62, 0x22
	.byte 0x26, 0x0, 0x66, 0x26, 0x22, 0x0, 0x22, 0x66, 0x26, 0x0
	.byte 0x22, 0x66, 0x22, 0x0, 0x62, 0x66, 0x22, 0x0, 0x22, 0x22
	.byte 0x66, 0x0, 0x22, 0x26, 0x62, 0x0, 0x62, 0x66, 0x22, 0x0
	.byte 0x26, 0x66, 0x26, 0x0, 0x66, 0x62, 0x22, 0x0, 0x26, 0x22
	.byte 0x62, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x77, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x72, 0x22
	.byte 0x27, 0x0, 0x22, 0x22, 0x22, 0x0, 0x72, 0x22, 0x27, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x72, 0x22, 0x27, 0x0, 0x72, 0x22
	.byte 0x22, 0x0, 0x27, 0x22, 0x72, 0x0, 0x22, 0x22, 0x27, 0x0
	.byte 0x72, 0x77, 0x77, 0x0, 0x22, 0x77, 0x77, 0x0, 0x22, 0x72
	.byte 0x77, 0x0, 0x22, 0x22, 0x22, 0x0, 0x27, 0x77, 0x72, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x27, 0x27, 0x0, 0x27, 0x77
	.byte 0x72, 0x0, 0x72, 0x72, 0x22, 0x0, 0x77, 0x22, 0x77, 0x0
	.byte 0x72, 0x27, 0x72, 0x0, 0x22, 0x77, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x27, 0x22, 0x72, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x72, 0x22, 0x27, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x27, 0x22, 0x72, 0x0, 0x27, 0x22, 0x72, 0x0
	.byte 0x27, 0x22, 0x72, 0x0, 0x77, 0x27, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x72, 0x77, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x27, 0x77, 0x72, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x44
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x24, 0x22, 0x42, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x72, 0x22, 0x27, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x77, 0x27, 0x72, 0x0, 0x27, 0x22, 0x72, 0x0
	.byte 0x27, 0x72, 0x77, 0x0, 0x70, 0x7, 0x77, 0x0, 0x77, 0x77
	.byte 0x77, 0x0, 0x77, 0x70, 0x7, 0x0, 0x70, 0x77, 0x77, 0x0
	.byte 0x27, 0x77, 0x72, 0x0, 0x77, 0x77, 0x7, 0x0, 0x22, 0x20
	.byte 0x2, 0x0, 0x77, 0x77, 0x77, 0x0, 0x20, 0x2, 0x22, 0x0
	.byte 0x22, 0x44, 0x22, 0x0, 0x22, 0x44, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x77, 0x2, 0x22, 0x0, 0x27, 0x22, 0x72, 0x0
	.byte 0x22, 0x20, 0x77, 0x0, 0x77, 0x70, 0x7, 0x0, 0x72, 0x27
	.byte 0x77, 0x0, 0x22, 0x27, 0x72, 0x0, 0x42, 0x24, 0x22, 0x0
	.byte 0x22, 0x44, 0x22, 0x0, 0x22, 0x42, 0x24, 0x0, 0x77, 0x77
	.byte 0x77, 0x0, 0x27, 0x22, 0x72, 0x0, 0x77, 0x77, 0x77, 0x0
	.byte 0x32, 0x22, 0x22, 0x0, 0x53, 0x22, 0x35, 0x0, 0x22, 0x22
	.byte 0x23, 0x0, 0x35, 0x52, 0x23, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x32, 0x25, 0x53, 0x0, 0x32, 0x22, 0x25, 0x0, 0x52, 0x22
	.byte 0x25, 0x0, 0x52, 0x22, 0x23, 0x0, 0x23, 0x32, 0x22, 0x0
	.byte 0x52, 0x22, 0x25, 0x0, 0x22, 0x23, 0x32, 0x0, 0x22, 0x42
	.byte 0x24, 0x0, 0x22, 0x44, 0x22, 0x0, 0x42, 0x24, 0x22, 0x0
	.byte 0x44, 0x22, 0x44, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x44
	.byte 0x22, 0x0, 0x22, 0x28, 0x22, 0x0, 0x22, 0x28, 0x82, 0x0
	.byte 0x22, 0x22, 0x82, 0x0, 0x23, 0x52, 0x22, 0x0, 0x52, 0x22
	.byte 0x25, 0x0, 0x22, 0x25, 0x32, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x52, 0x22, 0x25, 0x0, 0x22, 0x22, 0x22, 0x0, 0x52, 0x55
	.byte 0x25, 0x0, 0x52, 0x22, 0x25, 0x0, 0x52, 0x55, 0x25, 0x0
	.byte 0x22, 0x52, 0x22, 0x0, 0x22, 0x25, 0x22, 0x0, 0x52, 0x22
	.byte 0x22, 0x0, 0x25, 0x22, 0x52, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x25, 0x22, 0x52, 0x0, 0x22, 0x52, 0x22, 0x0, 0x25, 0x22
	.byte 0x52, 0x0, 0x22, 0x25, 0x22, 0x0, 0x52, 0x22, 0x25, 0x0
	.byte 0x22, 0x55, 0x22, 0x0, 0x52, 0x22, 0x25, 0x0, 0x55, 0x22
	.byte 0x22, 0x0, 0x55, 0x22, 0x55, 0x0, 0x22, 0x22, 0x55, 0x0
	.byte 0x52, 0x22, 0x22, 0x0, 0x55, 0x55, 0x55, 0x0, 0x52, 0x22
	.byte 0x22, 0x0, 0x22, 0x55, 0x22, 0x0, 0x52, 0x44, 0x25, 0x0
	.byte 0x22, 0x55, 0x22, 0x0, 0x52, 0x54, 0x22, 0x0, 0x22, 0x45
	.byte 0x25, 0x0, 0x22, 0x52, 0x54, 0x0, 0x52, 0x54, 0x22, 0x0
	.byte 0x22, 0x55, 0x22, 0x0, 0x22, 0x45, 0x25, 0x0, 0x54, 0x44
	.byte 0x45, 0x0, 0x55, 0x55, 0x55, 0x0, 0x54, 0x44, 0x45, 0x0
	.byte 0x25, 0x22, 0x52, 0x0, 0x54, 0x22, 0x45, 0x0, 0x25, 0x22
	.byte 0x52, 0x0, 0x22, 0x22, 0x22, 0x0, 0x45, 0x55, 0x54, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x82, 0x22, 0x28, 0x0, 0x82, 0x22
	.byte 0x28, 0x0, 0x22, 0x22, 0x22, 0x0, 0x45, 0x25, 0x22, 0x0
	.byte 0x52, 0x22, 0x25, 0x0, 0x22, 0x52, 0x54, 0x0, 0x22, 0x55
	.byte 0x22, 0x0, 0x82, 0x22, 0x28, 0x0, 0x25, 0x22, 0x52, 0x0
	.byte 0x72, 0x27, 0x22, 0x0, 0x72, 0x77, 0x27, 0x0, 0x22, 0x72
	.byte 0x27, 0x0, 0x22, 0x22, 0x58, 0x0, 0x28, 0x22, 0x82, 0x0
	.byte 0x85, 0x22, 0x22, 0x0, 0x55, 0x28, 0x82, 0x0, 0x25, 0x22
	.byte 0x52, 0x0, 0x28, 0x82, 0x55, 0x0, 0x70, 0x77, 0x77, 0x0
	.byte 0x77, 0x77, 0x77, 0x0, 0x77, 0x77, 0x7, 0x0, 0xC2, 0x22
	.byte 0x2B, 0x0, 0xC2, 0x22, 0x2B, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x82, 0x88, 0x0, 0x22, 0x88, 0x58, 0x0, 0x82, 0x88
	.byte 0x55, 0x0, 0x85, 0x55, 0x58, 0x0, 0x58, 0x88, 0x85, 0x0
	.byte 0x85, 0x55, 0x58, 0x0, 0x34, 0x22, 0x22, 0x0, 0x23, 0x22
	.byte 0x32, 0x0, 0x22, 0x22, 0x43, 0x0, 0x23, 0x22, 0x32, 0x0
	.byte 0x24, 0x22, 0x42, 0x0, 0x23, 0x22, 0x32, 0x0, 0x23, 0x22
	.byte 0x22, 0x0, 0x42, 0x22, 0x24, 0x0, 0x22, 0x22, 0x32, 0x0
	.byte 0x32, 0x24, 0x22, 0x0, 0x22, 0x33, 0x22, 0x0, 0x22, 0x42
	.byte 0x23, 0x0, 0x22, 0x32, 0x34, 0x0, 0x32, 0x22, 0x23, 0x0
	.byte 0x43, 0x23, 0x22, 0x0, 0x32, 0x44, 0x23, 0x0, 0x22, 0x33
	.byte 0x22, 0x0, 0x32, 0x44, 0x23, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x43, 0x33, 0x34, 0x0, 0x22, 0x22, 0x22, 0x0, 0x32, 0x44
	.byte 0x23, 0x0, 0x22, 0x43, 0x34, 0x0, 0x32, 0x44, 0x23, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x42, 0x22, 0x24, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x44, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x44, 0x0, 0x22, 0x22, 0x22, 0x0, 0x42, 0x44
	.byte 0x24, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x24, 0x22, 0x0
	.byte 0x42, 0x22, 0x24, 0x0, 0x22, 0x42, 0x22, 0x0, 0x22, 0x22
	.byte 0x42, 0x0, 0x24, 0x22, 0x42, 0x0, 0x24, 0x22, 0x22, 0x0
	.byte 0x22, 0x24, 0x22, 0x0, 0x22, 0x44, 0x22, 0x0, 0x22, 0x42
	.byte 0x22, 0x0, 0x22, 0x24, 0x22, 0x0, 0x42, 0x44, 0x24, 0x0
	.byte 0x22, 0x42, 0x22, 0x0, 0x22, 0x44, 0x44, 0x0, 0x22, 0x42
	.byte 0x44, 0x0, 0x22, 0x22, 0x44, 0x0, 0x42, 0x44, 0x44, 0x0
	.byte 0x22, 0x42, 0x44, 0x0, 0x42, 0x44, 0x44, 0x0, 0x44, 0x22
	.byte 0x44, 0x0, 0x24, 0x42, 0x24, 0x0, 0x22, 0x44, 0x22, 0x0
	.byte 0x44, 0x44, 0x44, 0x0, 0x24, 0x44, 0x42, 0x0, 0x44, 0x44
	.byte 0x44, 0x0, 0x44, 0x44, 0x44, 0x0, 0x44, 0x44, 0x44, 0x0
	.byte 0x44, 0x44, 0x44, 0x0, 0x28, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x82, 0x0, 0x22, 0x82, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x28, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x82, 0x22, 0x28, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x28, 0x22, 0x82, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x82, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x28, 0x0, 0x22, 0x22, 0x22, 0x0, 0x28, 0x22
	.byte 0x82, 0x0, 0x22, 0x22, 0x22, 0x0, 0x28, 0x22, 0x22, 0x0
	.byte 0x82, 0x22, 0x28, 0x0, 0x22, 0x22, 0x82, 0x0, 0x82, 0x22
	.byte 0x22, 0x0, 0x28, 0x22, 0x82, 0x0, 0x22, 0x22, 0x28, 0x0
	.byte 0xC2, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22
	.byte 0x2B, 0x0, 0x22, 0x22, 0x22, 0x0, 0xC2, 0x22, 0x2B, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x2A, 0xA2, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x29, 0x92, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0xB2, 0x22, 0x2C, 0x0, 0x22, 0x22, 0x22, 0x0, 0x2C, 0xC2
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x2B, 0xB2, 0x0
	.byte 0xB2, 0x22, 0x2B, 0x0, 0x22, 0x22, 0x22, 0x0, 0xC2, 0x22
	.byte 0x2C, 0x0, 0xC2, 0xC2, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x2B, 0x2B, 0x0, 0xA2, 0x22, 0x2A, 0x0, 0x92, 0x22
	.byte 0x29, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x24, 0x2, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x20, 0x42, 0x22, 0x0, 0x20, 0x22
	.byte 0x42, 0x0, 0x22, 0x22, 0x22, 0x0, 0x24, 0x22, 0x2, 0x0
	.byte 0x22, 0x22, 0x4, 0x0, 0x22, 0x22, 0x22, 0x0, 0x40, 0x22
	.byte 0x22, 0x0, 0x20, 0x42, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x24, 0x2, 0x0, 0x22, 0x20, 0x22, 0x0, 0x24, 0x22
	.byte 0x22, 0x0, 0x22, 0x2, 0x42, 0x0, 0x2, 0x22, 0x42, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x24, 0x22, 0x20, 0x0, 0x22, 0x44
	.byte 0x22, 0x0, 0x20, 0x22, 0x2, 0x0, 0x22, 0x44, 0x22, 0x0
	.byte 0x20, 0x22, 0x2, 0x0, 0x22, 0x22, 0x22, 0x0, 0x24, 0x22
	.byte 0x42, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0xBB, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0xCC, 0x22, 0x22, 0x0, 0x6, 0x66, 0x60, 0x0
	.byte 0x66, 0x66, 0x66, 0x0, 0x6, 0x66, 0x60, 0x0, 0x66, 0x0
	.byte 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x0, 0x66, 0x0
	.byte 0x66, 0x66, 0x66, 0x0, 0x6, 0x6, 0x6, 0x0, 0x66, 0x66
	.byte 0x66, 0x0, 0xCC, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0xBB, 0x0, 0x66, 0x66, 0x0, 0x0, 0x60, 0x66
	.byte 0x6, 0x0, 0x0, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0
	.byte 0x66, 0x0, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x60
	.byte 0x66, 0x0, 0x66, 0x0, 0x66, 0x0, 0x66, 0x6, 0x66, 0x0
	.byte 0x60, 0x66, 0x6, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x0
	.byte 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x6, 0x66, 0x60, 0x0
	.byte 0x66, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x6, 0x0
	.byte 0x60, 0x0, 0x66, 0x66, 0x66, 0x0, 0x72, 0x22, 0x27, 0x0
	.byte 0x24, 0x22, 0x42, 0x0, 0x72, 0x22, 0x27, 0x0, 0x22, 0x24
	.byte 0x42, 0x0, 0x72, 0x22, 0x27, 0x0, 0x24, 0x42, 0x22, 0x0
	.byte 0x72, 0x42, 0x27, 0x0, 0x72, 0x22, 0x27, 0x0, 0x72, 0x24
	.byte 0x27, 0x0, 0x24, 0x22, 0x22, 0x0, 0x74, 0x22, 0x47, 0x0
	.byte 0x22, 0x22, 0x42, 0x0, 0x24, 0x22, 0x42, 0x0, 0x27, 0x77
	.byte 0x72, 0x0, 0x24, 0x22, 0x42, 0x0, 0x74, 0x42, 0x27, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x72, 0x24, 0x47, 0x0, 0x74, 0x22
	.byte 0x22, 0x0, 0x27, 0x22, 0x72, 0x0, 0x22, 0x22, 0x47, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x74, 0x44, 0x47, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x64, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0
	.byte 0x66, 0x66, 0x46, 0x0, 0x66, 0x66, 0x44, 0x0, 0x66, 0x66
	.byte 0x66, 0x0, 0x44, 0x66, 0x66, 0x0, 0x22, 0x22, 0x46, 0x0
	.byte 0x66, 0x22, 0x66, 0x0, 0x64, 0x22, 0x22, 0x0, 0x66, 0x66
	.byte 0x44, 0x0, 0x4, 0x6, 0x6, 0x0, 0x64, 0x66, 0x66, 0x0
	.byte 0x66, 0x66, 0x66, 0x0, 0x6, 0x6, 0x6, 0x0, 0x6, 0x44
	.byte 0x66, 0x0, 0x60, 0x66, 0x6, 0x0, 0x66, 0x44, 0x66, 0x0
	.byte 0x60, 0x66, 0x6, 0x0, 0x6, 0x46, 0x6, 0x0, 0x66, 0x44
	.byte 0x66, 0x0, 0x60, 0x64, 0x60, 0x0, 0x66, 0x44, 0x66, 0x0
	.byte 0x6, 0x0, 0x60, 0x0, 0x66, 0x44, 0x66, 0x0, 0x66, 0x66
	.byte 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0
	.byte 0x77, 0x77, 0x77, 0x0, 0x77, 0x77, 0x77, 0x0, 0x77, 0x77
	.byte 0x77, 0x0, 0x23, 0x22, 0x22, 0x0, 0x82, 0x22, 0x28, 0x0
	.byte 0x22, 0x22, 0x32, 0x0, 0x22, 0x22, 0x22, 0x0, 0x32, 0x88
	.byte 0x23, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x33, 0x22, 0x0
	.byte 0x82, 0x22, 0x28, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x28
	.byte 0x32, 0x0, 0x22, 0x22, 0x22, 0x0, 0x23, 0x82, 0x22, 0x0
	.byte 0x32, 0x28, 0x22, 0x0, 0x22, 0x33, 0x22, 0x0, 0x22, 0x82
	.byte 0x23, 0x0, 0x28, 0x22, 0x32, 0x0, 0x22, 0x88, 0x22, 0x0
	.byte 0x23, 0x22, 0x82, 0x0, 0x82, 0x82, 0x22, 0x0, 0x32, 0x22
	.byte 0x23, 0x0, 0x22, 0x28, 0x28, 0x0, 0x23, 0x82, 0x22, 0x0
	.byte 0x82, 0x22, 0x28, 0x0, 0x22, 0x28, 0x32, 0x0, 0x22, 0x33
	.byte 0x22, 0x0, 0x32, 0x88, 0x23, 0x0, 0x22, 0x33, 0x22, 0x0
	.byte 0x22, 0x23, 0x32, 0x0, 0x88, 0x88, 0x88, 0x0, 0x23, 0x32
	.byte 0x22, 0x0, 0x0, 0x22, 0x0, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x20, 0x22, 0x2, 0x0, 0x22, 0x0, 0x22, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x20, 0x22, 0x2, 0x0, 0x20, 0x22, 0x2, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x20, 0x22, 0x2, 0x0, 0x82, 0x88
	.byte 0x28, 0x0, 0x22, 0x88, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x28, 0x22, 0x82, 0x0, 0x28, 0x22, 0x82, 0x0, 0x28, 0x22
	.byte 0x82, 0x0, 0x22, 0x88, 0x22, 0x0, 0x22, 0x88, 0x22, 0x0
	.byte 0x22, 0x88, 0x22, 0x0, 0x82, 0x88, 0x28, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x23, 0x22
	.byte 0x32, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x33, 0x22, 0x0
	.byte 0x23, 0x22, 0x32, 0x0, 0x23, 0x22, 0x32, 0x0, 0x23, 0x22
	.byte 0x32, 0x0, 0x23, 0x33, 0x32, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x23, 0x33, 0x32, 0x0, 0x32, 0x22, 0x23, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x23, 0x22, 0x32, 0x0, 0x20, 0x22, 0x2, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x22, 0x0, 0x22, 0x0, 0x22, 0x20
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x2, 0x22, 0x0
	.byte 0x22, 0x2, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x20
	.byte 0x22, 0x0, 0x20, 0x22, 0x2, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x20, 0x22, 0x2, 0x0, 0x66, 0x22, 0x66, 0x0, 0x66, 0x22
	.byte 0x66, 0x0, 0x66, 0x22, 0x66, 0x0, 0x62, 0x66, 0x26, 0x0
	.byte 0x66, 0x66, 0x66, 0x0, 0x62, 0x66, 0x26, 0x0, 0x22, 0x22
	.byte 0x66, 0x0, 0x66, 0x22, 0x66, 0x0, 0x66, 0x22, 0x22, 0x0
	.byte 0x66, 0x22, 0x22, 0x0, 0x66, 0x22, 0x66, 0x0, 0x22, 0x22
	.byte 0x66, 0x0, 0x70, 0x77, 0x7, 0x0, 0x77, 0x77, 0x77, 0x0
	.byte 0x77, 0x77, 0x77, 0x0, 0x72, 0x77, 0x27, 0x0, 0x72, 0x77
	.byte 0x27, 0x0, 0x72, 0x77, 0x27, 0x0, 0x77, 0x22, 0x77, 0x0
	.byte 0x77, 0x22, 0x77, 0x0, 0x77, 0x22, 0x77, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x77, 0x77, 0x77, 0x0, 0x77, 0x77, 0x77, 0x0, 0x77, 0x0
	.byte 0x77, 0x0, 0xB2, 0xCB, 0x2C, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0xCC, 0x22, 0xBB, 0x0, 0xCC, 0x22, 0xBB, 0x0, 0x22, 0x22
	.byte 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0xAA, 0x22, 0x0
	.byte 0x22, 0x22, 0x22, 0x0, 0x92, 0x22, 0x29, 0x0, 0xCC, 0x22
	.byte 0xBB, 0x0, 0x29, 0x22, 0x92, 0x0, 0x22, 0x22, 0x22, 0x0
	.byte 0x22, 0x44, 0x22, 0x0, 0x22, 0x44, 0x22, 0x0, 0x22, 0x44
	.byte 0x22, 0x0, 0x24, 0x22, 0x42, 0x0, 0x24, 0x22, 0x42, 0x0
	.byte 0x24, 0x22, 0x42, 0x0, 0x66, 0x44, 0x66, 0x0, 0x46, 0x44
	.byte 0x64, 0x0, 0x66, 0x44, 0x66, 0x0, 0x44, 0x66, 0x44, 0x0
	.byte 0x64, 0x66, 0x46, 0x0, 0x66, 0x66, 0x66, 0x0, 0x46, 0x44
	.byte 0x64, 0x0, 0x46, 0x44, 0x64, 0x0, 0x46, 0x44, 0x64, 0x0
	.byte 0x22, 0x55, 0x22, 0x0, 0x22, 0x55, 0x22, 0x0, 0x22, 0x55
	.byte 0x22, 0x0, 0x22, 0x2, 0x0, 0x0, 0x22, 0x2, 0x0, 0x0
	.byte 0x22, 0x2, 0x0, 0x0
	thumb_func_end sub_800D700

	thumb_func_start sub_800E24C
sub_800E24C:
	push {lr}
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	bl sub_800E258
	pop {pc}
	thumb_func_end sub_800E24C

	thumb_func_start sub_800E258
sub_800E258:
	push {r5,r6,lr}
	mov r6, r1
	asr r0, r0, #0x10
	add r0, #0xa0
	mov r1, #0x28 
	svc 6
	push {r0}
	mov r0, r6
	asr r0, r0, #0x10
	add r0, #0x20 
	mov r1, #0x18
	svc 6
	mov r1, r0
	pop {r0}
	pop {r5,r6,pc}
	thumb_func_end sub_800E258

// (int a1, int a2) -> (int n1, int n2)
	thumb_func_start object_getCoordinatesForPanels
object_getCoordinatesForPanels:
	mov r2, #0x28 
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	mul r0, r2
	lsl r0, r0, #0x10
	mov r2, #0x18
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	mul r1, r2
	lsl r1, r1, #0x10
	ldr r2, dword_800E294 // =0xff740000 
	add r0, r0, r2
	ldr r2, dword_800E298 // =0xffec0000 
	add r1, r1, r2
	mov pc, lr
dword_800E294: .word 0xFF740000
dword_800E298: .word 0xFFEC0000
	thumb_func_end object_getCoordinatesForPanels

// () -> void
	thumb_func_start object_setCoordinatesFromPanels
object_setCoordinatesFromPanels:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	str r0, [r5,#oBattleObject_X]
	str r1, [r5,#oBattleObject_Y]
	pop {pc}
	thumb_func_end object_setCoordinatesFromPanels

	thumb_func_start object_setPanelsFromCoordinates
object_setPanelsFromCoordinates:
	push {lr}
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	mov r2, #0
	ldr r2, [r5,#oBattleObject_Z]
	bl sub_800E258
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	pop {pc}
	thumb_func_end object_setPanelsFromCoordinates

	thumb_func_start object_getEnemyDirection
object_getEnemyDirection:
	ldrb r0, [r5,#oBattleObject_Alliance]
	thumb_func_end object_getEnemyDirection

	thumb_func_start object_getAllianceDirection
object_getAllianceDirection:
	lsl r0, r0, #1
	sub r0, #1
	neg r0, r0
	mov pc, lr
	thumb_func_end object_getAllianceDirection

// () -> int
	thumb_func_start object_getFrontDirection
object_getFrontDirection:
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	thumb_func_end object_getFrontDirection

// (int a1, int a2) -> int
	thumb_func_start object_getFlipDirection
object_getFlipDirection:
	eor r0, r1
	lsl r0, r0, #1
	sub r0, #1
	neg r0, r0
	mov pc, lr
	thumb_func_end object_getFlipDirection

	thumb_func_start object_subtractHP
object_subtractHP:
	push {r4,lr}
	ldrh r1, [r5,#oBattleObject_HP]
	sub r1, r1, r0
	bge loc_800E2E2
	mov r1, #0
loc_800E2E2:
	strh r1, [r5,#oBattleObject_HP]
	pop {r4,pc}
	.balign 4, 0x00
	.word 0x40000000
	thumb_func_end object_subtractHP

	thumb_func_start object_addHP
object_addHP:
	ldrh r1, [r5,#oBattleObject_HP]
	add r1, r1, r0
	ldrh r0, [r5,#oBattleObject_MaxHP]
	cmp r1, r0
	ble loc_800E2F8
	mov r1, r0
loc_800E2F8:
	strh r1, [r5,#oBattleObject_HP]
	mov pc, lr
	thumb_func_end object_addHP

	thumb_func_start sub_800E2FC
sub_800E2FC:
	push {r4,r6,r7,lr}
	mov r6, r0
	tst r1, r1
	beq loc_800E314
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_802CE78
	mov r7, r0
	cmp r0, #0xbd
	beq loc_800E330
loc_800E314:
	mov r0, r6
	bl object_addHP
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl SpawnT4BattleObjectWithId0
	mov r0, #SOUND_UNK_8A
	bl PlaySoundEffect
	mov r0, #0
	b locret_800E35E
loc_800E330:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x1e
	lsl r2, r2, #0x10
	add r6, r6, r2
	mov r2, #0
	bl sub_80E37D2
	mov r2, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	bl sub_800BF16
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_800ABC6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_802CEA6
	mov r0, #1
locret_800E35E:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800E2FC

	thumb_func_start sub_800E360
sub_800E360:
	push {r4,r6,r7,lr}
	mov r6, r0
	tst r1, r1
	beq loc_800E378
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_802CE78
	mov r7, r0
	cmp r0, #0xbd
	beq loc_800E38E
loc_800E378:
	mov r0, r6
	bl object_addHP
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #6
	bl SpawnT4BattleObjectWithId0
	mov r0, #0
	b locret_800E3BC
loc_800E38E:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x1e
	lsl r2, r2, #0x10
	add r6, r6, r2
	mov r2, #0
	bl sub_80E37D2
	mov r2, r0
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	bl sub_800BF16
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_800ABC6
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_802CEA6
	mov r0, #1
locret_800E3BC:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800E360

	thumb_func_start sub_800E3BE
sub_800E3BE:
	push {r4,lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	add r3, #0x82
	mov r1, #5
	mov r0, #0
loc_800E3C8:
	ldrh r2, [r3]
	add r0, r0, r2
	add r3, #2
	sub r1, #1
	bgt loc_800E3C8
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	add r1, #0x80
	strh r0, [r3,r1]
	mov r1, #0x8c
	ldrh r1, [r3,r1]
	pop {r4,pc}
	thumb_func_end sub_800E3BE

	thumb_func_start object_calculateFinalDamage1
object_calculateFinalDamage1:
	push {r4,r6,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelDataOffset
	mov r4, #0
	mov r6, #0
	ldrb r1, [r0,#2]
	cmp r1, #5
	bne loc_800E3F6
	add r4, #1
loc_800E3F6:
	mov r6, #1
	lsl r6, r4
	sub r6, #1
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	add r3, #0x82
	mov r1, #5
	mov r0, #0
loc_800E404:
	ldrh r2, [r3]
	add r2, r2, r6
	lsr r2, r4
	strh r2, [r3]
	add r0, r0, r2
	add r3, #2
	sub r1, #1
	bgt loc_800E404
	bl sub_802CE10
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	add r3, #0x80
	strh r0, [r3]
	pop {r4,r6,pc}
	thumb_func_end object_calculateFinalDamage1

	thumb_func_start object_calculateFinalDamage2
object_calculateFinalDamage2:
	push {r4,lr}
	ldr r4, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelDataOffset
	mov r4, #0
	ldrb r1, [r0,#2]
	cmp r1, #5
	bne loc_800E436
	mov r4, #1
loc_800E436:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	add r3, #0x82
	mov r1, #5
	mov r0, #0
loc_800E43E:
	ldrh r2, [r3]
	add r2, r2, r4
	lsr r2, r4
	strh r2, [r3]
	add r0, r0, r2
	add r3, #2
	sub r1, #1
	bgt loc_800E43E
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	add r3, #0x80
	strh r0, [r3]
	pop {r4,pc}
	thumb_func_end object_calculateFinalDamage2

// () -> int
	thumb_func_start object_getFlip
object_getFlip:
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	mov pc, lr
	thumb_func_end object_getFlip

	thumb_func_start sub_800E45E
sub_800E45E:
	push {lr}
	mov r0, #1
	bl sub_800E468
	pop {pc}
	thumb_func_end sub_800E45E

	thumb_func_start sub_800E468
sub_800E468:
	push {r4,lr}
	sub sp, sp, #0x10
	ldrb r0, [r5,#oBattleObject_Unk_0f]
	bl sub_800E498
	str r0, [sp,#4]
	str r1, [sp,#8]
	str r2, [sp,#0xc]
	ldrb r3, [r5,#oBattleObject_PanelX]
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_PanelY]
	add r1, r1, r3
	bl sub_800E5AC
	bne loc_800E48E
	mov r0, #0
	mov r1, #0
	mov r2, #0
	b loc_800E494
loc_800E48E:
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	ldr r2, [sp,#0xc]
loc_800E494:
	add sp, sp, #0x10
	pop {r4,pc}
	thumb_func_end sub_800E468

	thumb_local_start
sub_800E498:
	push {lr}
	lsl r0, r0, #2
	ldr r1, off_800E4AC // =off_800E4B0 
	ldr r1, [r1,r0]
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r0, [r0,#oCollisionData_Direction]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_800E4AC: .word off_800E4B0
off_800E4B0: .word sub_800E4C0+1
	.word sub_800E548+1
	.word sub_800E4C8+1
	.word sub_800E500+1
	thumb_func_end sub_800E498

	thumb_local_start
sub_800E4C0:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov pc, lr
	thumb_func_end sub_800E4C0

	thumb_local_start
sub_800E4C8:
	push {r4,lr}
	mov r4, r0
	bl object_getEnemyDirection
	lsl r4, r4, #2
	ldr r3, off_800E4E4 // =byte_800E4E8
	add r3, r3, r4
	mov r1, #0
	ldrsb r1, [r3,r1]
	mul r0, r1
	mov r1, #1
	ldrsb r1, [r3,r1]
	ldrb r2, [r3,#2]
	pop {r4,pc}
	thumb_func_end sub_800E4C8
off_800E4E4: .word byte_800E4E8
byte_800E4E8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0x1, 0x0, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x1
	.byte 0x0, 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0

	thumb_local_start
sub_800E500:
	push {r4,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelDataOffset
	tst r0, r0
	beq loc_800E52C
	ldrb r0, [r0,#2]
	cmp r0, #9
	blt loc_800E52C
	cmp r0, #0xc
	bgt loc_800E52C
	sub r0, #9
	lsl r0, r0, #2
	ldr r3, off_800E534 // =byte_800E538 
	add r3, r3, r0
	mov r0, #0
	ldrsb r0, [r3,r0]
	mov r1, #1
	ldrsb r1, [r3,r1]
	ldrb r2, [r3,#2]
	b locret_800E532
loc_800E52C:
	mov r0, #0
	mov r1, #0
	mov r2, #0
locret_800E532:
	pop {r4,pc}
off_800E534: .word byte_800E538
byte_800E538: .byte 0x0, 0xFF, 0x1, 0x0, 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0
	thumb_func_end sub_800E500

	thumb_local_start
sub_800E548:
	push {r4,r6,lr}
	bl object_getEnemyDirection
	mov r4, r0
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldrb r1, [r3,#oCollisionData_HitModifierFinal]
	mov r6, #0
	mov r2, #0x80
	tst r1, r2
	beq loc_800E560
	bic r1, r2
	mov r6, #5
loc_800E560:
	lsr r1, r1, #2
	mov r2, #0
loc_800E564:
	lsr r1, r1, #1
	bcs loc_800E56E
	add r2, #1
	cmp r2, #4
	blt loc_800E564
loc_800E56E:
	add r2, r2, r6
	mov r1, #3
	mul r2, r1
	ldr r1, off_800E588 // =off_800E58C
	add r2, r2, r1
	mov r1, #0
	ldrsb r1, [r2,r1]
	mov r0, r4
	mul r0, r1
	mov r1, #1
	ldrsb r1, [r2,r1]
	ldrb r2, [r2,#2]
	pop {r4,r6,pc}
	thumb_func_end sub_800E548
off_800E588: .word byte_800E58C
byte_800E58C: .byte 0x1, 0x0, 0x6, 0xFF, 0x0, 0x6, 0x1, 0x0, 0x1, 0xFF, 0x0, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0xFF, 0x6, 0x0, 0x1, 0x6, 0x0, 0xFF, 0x1, 0x0, 0x1, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0

	thumb_func_start sub_800E5AC
sub_800E5AC:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800E5DE
	bl object_getFlag // () -> int
	mov r2, #0
	mov r1, #0x10
	and r1, r0
	beq loc_800E5C6
	mov r2, #0x10
loc_800E5C6:
	ldrb r1, [r5,#oBattleObject_Alliance]
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r1, off_800E65C // =byte_800E660 
	add r1, r1, r2
	ldr r2, [r1]
	ldr r3, [r1,#4]
	mov r0, r6
	mov r1, r7
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800E5DE:
	mov r0, #0
	pop {r6,r7,pc}
	thumb_func_end sub_800E5AC

	thumb_func_start object_canMove
object_canMove:
	push {r4,lr}
	bl object_getFlag // () -> int
	mov r4, r0
	ldr r1, dword_800E5F8 // =0x5040 
	tst r4, r1
	bne loc_800E5F4
	mov r0, #1
	pop {r4,pc}
loc_800E5F4:
	mov r0, #0
	pop {r4,pc}
dword_800E5F8: .word 0x5040
	thumb_func_end object_canMove

	thumb_func_start sub_800E5FC
sub_800E5FC:
	push {r4,lr}
	bl object_getFlag // () -> int
	mov r4, r0
	ldr r1, off_800E614 // =0x1040 
	tst r4, r1
	bne loc_800E60E
	mov r0, #1
	pop {r4,pc}
loc_800E60E:
	mov r0, #0
	pop {r4,pc}
	.balign 4, 0x00
off_800E614: .word 0x1040
	thumb_func_end sub_800E5FC

	thumb_func_start sub_800E618
sub_800E618:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800E656
	bl object_getFlag // () -> int
	mov r1, #0x10
	tst r0, r1
	bne loc_800E63C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_isPanelSolid
	beq loc_800E63C
	mov r0, #0
	b loc_800E63E
loc_800E63C:
	mov r0, #0x10
loc_800E63E:
	ldrb r1, [r5,#oBattleObject_Alliance]
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r1, off_800E65C // =byte_800E660 
	add r1, r1, r0
	ldr r2, [r1]
	ldr r3, [r1,#4]
	mov r0, r6
	mov r1, r7
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800E656:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0x00
off_800E65C: .word byte_800E660
byte_800E660: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xB, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0x7, 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xB, 0x20, 0x0
	.byte 0x0, 0x0, 0x80, 0x0, 0x88, 0x7
	thumb_func_end sub_800E618

	thumb_func_start sub_800E680
sub_800E680:
	push {r6,r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_isValidPanel
	beq loc_800E6BE
	bl object_getFlag // () -> int
	mov r1, #0x10
	tst r0, r1
	bne loc_800E6A4
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_isPanelSolid
	beq loc_800E6A4
	mov r0, #0
	b loc_800E6A6
loc_800E6A4:
	mov r0, #0x10
loc_800E6A6:
	ldrb r1, [r5,#oBattleObject_Alliance]
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r1, off_800E6C4 // =byte_800E6C8 
	add r1, r1, r0
	ldr r2, [r1]
	ldr r3, [r1,#4]
	mov r0, r6
	mov r1, r7
	bl object_checkPanelParameters
	pop {r6,r7,pc}
loc_800E6BE:
	mov r0, #0
	pop {r6,r7,pc}
	.balign 4, 0x00
off_800E6C4: .word byte_800E6C8
byte_800E6C8: .byte 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x7, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x80, 0xB, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x7, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x80, 0xB
	thumb_func_end sub_800E680

	thumb_func_start sub_800E6E8
sub_800E6E8:
	mov r3, #0
	cmp r0, r1
	bgt loc_800E6FA
	cmp r2, r0
	ble loc_800E704
	cmp r2, r1
	bgt loc_800E704
	mov r3, #1
	b loc_800E704
loc_800E6FA:
	cmp r2, r1
	ble loc_800E704
	cmp r2, r0
	bgt loc_800E704
	mov r3, #1
loc_800E704:
	mov r0, r3
	mov pc, lr
	thumb_func_end sub_800E6E8

	thumb_func_start sub_800E708
sub_800E708:
	mov r3, #0
	cmp r0, r2
	beq loc_800E72A
	cmp r1, r2
	beq loc_800E72A
	cmp r0, r1
	bgt loc_800E722
	cmp r2, r0
	ble loc_800E72C
	cmp r2, r1
	bgt loc_800E72C
	mov r3, #1
	b loc_800E72C
loc_800E722:
	cmp r2, r1
	blt loc_800E72C
	cmp r2, r0
	bgt loc_800E72C
loc_800E72A:
	mov r3, #1
loc_800E72C:
	mov r0, r3
	mov pc, lr
	thumb_func_end sub_800E708

	thumb_func_start sub_800E730
sub_800E730:
	push {r4,r6,r7,lr}
	sub sp, sp, #4
	bl object_getFlag2
	str r0, [sp]
	ldr r6, [r5,#oBattleObject_CollisionDataPtr]
	bl battle_isPaused
	beq loc_800E744
	b loc_800E95C
loc_800E744:
	ldrh r0, [r6,#oCollisionData_Unk_1c]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_1c]
	bgt loc_800E75E
	ldr r0, off_800E960 // =0x800 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #8
	bl object_clearFlag2
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_1c]
	b loc_800E7AE
loc_800E75E:
	ldr r1, [sp]
	mov r0, #8
	tst r1, r0
	beq loc_800E786
	mov r0, #0x88
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_800E776
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_800E776:
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_1e]
	strh r0, [r6,#oCollisionData_Unk_2a]
	strh r0, [r6,#oCollisionData_Unk_2c]
loc_800E786:
	ldr r0, dword_800E964 // =0x80018000 
	bl object_clearFlag // (int bitfield) -> void
	bl object_getFlag // () -> int
	ldr r1, off_800E960 // =0x800 
	tst r0, r1
	bne loc_800E7AE
	mov r0, r1
	bl object_setFlag1 // (int a1) -> void
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_800E7A6
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_800E7A6:
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
loc_800E7AE:
	ldrh r0, [r6,#oCollisionData_Unk_2a]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_2a]
	bgt loc_800E7C2
	ldr r0, dword_800E968 // =0x10000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_2a]
	b loc_800E820
loc_800E7C2:
	ldr r1, [sp]
	ldr r0, dword_800E968 // =0x10000 
	tst r1, r0
	beq loc_800E7EA
	ldr r0, dword_800E96C // =0x30080 
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_800E7DA
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_800E7DA:
	mov r0, #6
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_1e]
	strh r0, [r6,#oCollisionData_Unk_1c]
	strh r0, [r6,#oCollisionData_Unk_2c]
loc_800E7EA:
	ldr r0, dword_800E970 // =0x80008000 
	bl object_clearFlag // (int bitfield) -> void
	bl object_getFlag // () -> int
	ldr r1, dword_800E968 // =0x10000 
	tst r0, r1
	bne loc_800E820
	mov r0, r1
	bl object_setFlag1 // (int a1) -> void
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_800E80A
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_800E80A:
	mov r0, #6
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	mov r7, #0x58 
	add r7, r7, r6
	ldr r0, [r7]
	tst r0, r0
	bne loc_800E836
	bl sub_80E9BDC
loc_800E820:
	ldrh r0, [r6,#oCollisionData_Unk_2c]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_2c]
	bgt loc_800E836
	ldr r0, dword_800E974 // =0x80000000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_2c]
	str r0, [r6,#oCollisionData_Unk_60]
	b loc_800E894
loc_800E836:
	ldr r1, [sp]
	ldr r0, dword_800E978 // =0x20000 
	tst r1, r0
	beq loc_800E85E
	ldr r0, dword_800E97C // =0x20080 
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_800E84E
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_800E84E:
	mov r0, #7
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_1e]
	strh r0, [r6,#oCollisionData_Unk_1c]
	strh r0, [r6,#oCollisionData_Unk_2a]
loc_800E85E:
	ldr r0, dword_800E980 // =0x8000 
	bl object_clearFlag // (int bitfield) -> void
	bl object_getFlag // () -> int
	ldr r1, dword_800E974 // =0x80000000 
	tst r0, r1
	bne loc_800E894
	mov r0, r1
	bl object_setFlag1 // (int a1) -> void
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_800E87E
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_800E87E:
	mov r0, #7
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	mov r7, #0x60 
	add r7, r7, r6
	ldr r0, [r7]
	tst r0, r0
	bne loc_800E8B0
	bl sub_80E4B34
loc_800E894:
	ldrh r0, [r6,#oCollisionData_Unk_1e]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_1e]
	bgt loc_800E8B0
	ldr r0, dword_800E980 // =0x8000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0x80
	bl object_clearFlag2
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_1e]
	str r0, [r6,#oCollisionData_Unk_48]
	b loc_800E8E2
loc_800E8B0:
	ldr r1, [sp]
	mov r0, #0x80
	tst r1, r0
	beq loc_800E8C6
	ldr r0, dword_800E984 // =0x30088 
	bl object_clearFlag2
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_1c]
	strh r0, [r6,#oCollisionData_Unk_2a]
	strh r0, [r6,#oCollisionData_Unk_2c]
loc_800E8C6:
	ldr r0, dword_800E980 // =0x8000 
	bl object_setFlag1 // (int a1) -> void
	ldr r0, dword_800E988 // =0x80010800 
	bl object_clearFlag // (int bitfield) -> void
	mov r7, #0x48 
	add r7, r7, r6
	ldr r0, [r7]
	tst r0, r0
	bne loc_800E8E2
	mov r4, #0
	bl sub_80E09EE
loc_800E8E2:
	ldrh r0, [r6,#oCollisionData_Unk_22]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_22]
	bgt loc_800E8F6
	ldr r0, dword_800E98C // =0x4000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_22]
	b loc_800E908
loc_800E8F6:
	ldr r1, [sp]
	mov r0, #0x40 
	tst r1, r0
	beq loc_800E908
	bl object_clearFlag2
	ldr r0, dword_800E98C // =0x4000 
	bl object_setFlag1 // (int a1) -> void
loc_800E908:
	ldrh r0, [r6,#oCollisionData_Unk_20]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_20]
	bgt loc_800E920
	ldr r0, off_800E990 // =0x2000 
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_20]
	mov r1, #0x4c 
	str r0, [r6,r1]
	b loc_800E942
loc_800E920:
	ldr r1, [sp]
	mov r0, #0x20 
	tst r1, r0
	beq loc_800E942
	bl object_clearFlag2
	ldr r0, off_800E990 // =0x2000 
	bl object_setFlag1 // (int a1) -> void
	mov r7, #0x4c 
	add r7, r7, r6
	ldr r0, [r7]
	tst r0, r0
	bne loc_800E942
	mov r4, #1
	bl sub_80E09EE
loc_800E942:
	ldrh r0, [r6,#oCollisionData_Unk_28]
	sub r0, #1
	strh r0, [r6,#oCollisionData_Unk_28]
	bgt loc_800E956
	mov r0, #8
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0
	strh r0, [r6,#oCollisionData_Unk_28]
	b loc_800E95C
loc_800E956:
	mov r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
loc_800E95C:
	add sp, sp, #4
	pop {r4,r6,r7,pc}
off_800E960: .word 0x800
dword_800E964: .word 0x80018000
dword_800E968: .word 0x10000
dword_800E96C: .word 0x30080
dword_800E970: .word 0x80008000
dword_800E974: .word 0x80000000
dword_800E978: .word 0x20000
dword_800E97C: .word 0x20080
dword_800E980: .word 0x8000
dword_800E984: .word 0x30088
dword_800E988: .word 0x80010800
dword_800E98C: .word 0x4000
off_800E990: .word 0x2000
	thumb_func_end sub_800E730

	thumb_func_start sub_800E994
sub_800E994:
	sub r0, r0, r2
	sub r1, r1, r3
	cmp r0, #2
	bge loc_800E9D8
	cmp r1, #2
	bge loc_800E9D8
	tst r0, r0
	bgt loc_800E9CC
	blt loc_800E9C0
	tst r1, r1
	bgt loc_800E9B8
	blt loc_800E9B0
	mov r0, #0
	mov pc, lr
loc_800E9B0:
	tst r0, r0
	bne loc_800E9D8
	mov r0, #1
	mov pc, lr
loc_800E9B8:
	tst r0, r0
	bne loc_800E9D8
	mov r0, #2
	mov pc, lr
loc_800E9C0:
	tst r1, r1
	bne loc_800E9D8
	tst r4, r4
	bne loc_800E9D4
loc_800E9C8:
	mov r0, #3
	mov pc, lr
loc_800E9CC:
	tst r1, r1
	bne loc_800E9D8
	tst r4, r4
	bne loc_800E9C8
loc_800E9D4:
	mov r0, #4
	mov pc, lr
loc_800E9D8:
	mov r0, #5
	mov pc, lr
	thumb_func_end sub_800E994

	thumb_func_start object_setCounterTime
object_setCounterTime:
	push {lr}
	ldr r2, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r2]
	cmp r1, #2
	bne loc_800E9F4
	push {r0}
	bl GetBattleEffects // () -> int
	mov r1, #8
	tst r0, r1
	pop {r0}
	beq locret_800E9F8
loc_800E9F4:
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	strb r0, [r3,#0xd]
locret_800E9F8:
	pop {pc}
	thumb_func_end object_setCounterTime

	thumb_func_start sub_800E9FA
sub_800E9FA:
	push {lr}
	ldr r0, dword_800ECD8 // =0x301fe 
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	add r0, #0x80
	mov r1, #0xe
	bl ZeroFillByHalfword
	pop {pc}
	thumb_func_end sub_800E9FA

	thumb_func_start sub_800EA0E
sub_800EA0E:
	push {lr}
	ldr r0, dword_800ECD8 // =0x301fe 
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	add r0, #0x80
	mov r1, #0xe
	bl ZeroFillByHalfword
	pop {pc}
	thumb_func_end sub_800EA0E

	thumb_func_start sub_800EA22
sub_800EA22:
	push {lr}
	ldr r0, dword_800ECDC // =0x300ee 
	bl object_clearFlag2
	ldr r2, [r5,#oBattleObject_CollisionDataPtr]
	mov r3, #0x74
	mov r0, #0
	strb r0, [r2,r0]
	mov r1, #0x80
	ldrh r1, [r2,r1]
	mov r3, #0x82
loc_800EA38:
	ldrh r0, [r2,r3]
	sub r1, r1, r0
	mov r0, #0
	strh r0, [r2,r3]
	add r3, #2
	cmp r3, #0x8c
	bne loc_800EA38
	str r0, [r2,r3]
	mov r3, #0x80
	strh r1, [r2,r3]
	pop {pc}
	thumb_func_end sub_800EA22

	thumb_local_start
sub_800EA4E:
	push {lr}
	ldr r0, dword_800ECD8 // =0x301fe 
	bl object_clearFlag2
	ldr r2, [r5,#0x54]
	mov r3, #0x74 
	mov r0, #0
	strb r0, [r2,r0]
	mov r1, #0x80
	ldrh r1, [r2,r1]
	mov r3, #0x82
loc_800EA64:
	ldrh r0, [r2,r3]
	sub r1, r1, r0
	mov r0, #0
	strh r0, [r2,r3]
	add r3, #2
	cmp r3, #0x8c
	bne loc_800EA64
	mov r3, #0x8e
	strh r0, [r2,r3]
	cmp r1, #0
	beq loc_800EA82
	bmi loc_800EA82
	mov r3, #0x80
	strh r1, [r2,r3]
	b locret_800EA8E
loc_800EA82:
	ldr r0, [r5,#0x54]
	mov r1, #0x80
	mov r2, #1
	strh r2, [r0,r1]
	mov r1, #0x82
	strh r2, [r0,r1]
locret_800EA8E:
	pop {pc}
	thumb_func_end sub_800EA4E

	thumb_func_start sub_800EA90
sub_800EA90:
	push {r4,lr}
	ldr r2, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x80
	ldrh r1, [r2,r1]
	mov r4, r1
	mov r3, #0x82
loc_800EA9C:
	ldrh r0, [r2,r3]
	add r0, #1
	lsr r0, r0, #1
	sub r1, r1, r0
	strh r0, [r2,r3]
	add r3, #2
	cmp r3, #0x8c
	bne loc_800EA9C
	mov r3, #0x80
	strh r1, [r2,r3]
	mov r0, #0
	cmp r1, r4
	bne locret_800EAB8
	mov r0, #1
locret_800EAB8:
	pop {r4,pc}
	thumb_func_end sub_800EA90

	thumb_func_start sub_800EABA
sub_800EABA:
	push {lr}
	ldr r0, dword_800ECD8 // =0x301fe 
	bl object_clearFlag2
	pop {pc}
	thumb_func_end sub_800EABA

	thumb_func_start sub_800EAC4
sub_800EAC4:
	push {lr}
	ldr r2, [r5,#oBattleObject_CollisionDataPtr]
	mov r3, #0x84
	ldrh r0, [r2,r3]
	mov r1, #0
	strh r1, [r2,r3]
	mov r3, #0x80
	ldrh r1, [r2,r3]
	sub r1, r1, r0
	strh r1, [r2,r3]
	pop {pc}
	thumb_func_end sub_800EAC4

	thumb_func_start sub_800EADA
sub_800EADA:
	push {lr}
	ldr r0, dword_800ECD8 // =0x301fe 
	bl object_clearFlag2
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	add r0, #0x80
	mov r1, #0xe
	bl ZeroFillByHalfword
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0
	strh r1, [r0,#oCollisionData_Unk_2c]
	strh r1, [r0,#oCollisionData_Unk_1c]
	pop {pc}
	thumb_func_end sub_800EADA

	thumb_local_start
sub_800EAF6:
	push {r4,r6,r7,lr}
	pop {r4,r6,r7,pc}
	thumb_func_end sub_800EAF6

	thumb_func_start object_setInvulnerableTime
object_setInvulnerableTime:
	push {lr}
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	strh r0, [r1,#oCollisionData_Unk_28]
	mov r0, #OBJECT_FLAGS_INVULNERABLE
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end object_setInvulnerableTime

	thumb_func_start sub_800EB08
sub_800EB08:
	push {lr}
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	mov r0, #0
	strh r0, [r1,#oCollisionData_Unk_28]
	mov r0, #8
	bl object_clearFlag // (int bitfield) -> void
	pop {pc}
	thumb_func_end sub_800EB08

	thumb_local_start
sub_800EB18:
	push {lr}
	ldr r1, [r5,#0x54]
	strh r0, [r1,#0x22]
	ldr r0, dword_800ECE0 // =0x4000 
	bl object_setFlag1 // (int a1) -> void
	pop {pc}
	thumb_func_end sub_800EB18

	thumb_func_start sub_800EB26
sub_800EB26:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	mov r1, #0x40 
	tst r0, r1
	beq locret_800EB4C
	ldrb r0, [r3,#oCollisionData_StatusEffectFinal]
	cmp r0, #0x60 
	blt loc_800EB3C
	cmp r0, #0x65 
	ble locret_800EB4C
loc_800EB3C:
	mov r1, #0x12
	strb r1, [r3,#oCollisionData_StatusEffectFinal]
	ldr r0, dword_800ECE0 // =0x4000 
	bl object_setFlag2
	mov r0, #6
	bl object_clearFlag2
locret_800EB4C:
	pop {pc}
	thumb_func_end sub_800EB26

	thumb_local_start
sub_800EB4E:
	push {r4,lr}
	ldr r4, [r5,#0x54]
	ldr r0, [r4,#0x70]
	mov r1, #0x40 
	tst r0, r1
	beq locret_800EB6A
	mov r1, #0x12
	strb r1, [r4,#0x11]
	ldr r0, dword_800ECE0 // =0x4000 
	bl object_setFlag2
	mov r0, #6
	bl object_clearFlag2
locret_800EB6A:
	pop {r4,pc}
	thumb_func_end sub_800EB4E

	thumb_func_start sub_800EB6C
sub_800EB6C:
	push {r4,r5,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	push {r0}
	bl battle_networkInvert
	tst r0, r0
	pop {r0}
	beq loc_800EB9A
	mov r1, #1
	eor r0, r1
	bl sub_80103BC
	mov r5, r0
	bne loc_800EB8C
	b loc_800EB9A
loc_800EB8C:
	bl object_getFlag // () -> int
	ldr r1, dword_800ECE4 // =0x2000 
	tst r0, r1
	beq loc_800EB9A
	mov r0, #0
	pop {r4,r5,pc}
loc_800EB9A:
	mov r0, #1
	pop {r4,r5,pc}
	thumb_func_end sub_800EB6C

	thumb_func_start object_spawnHiteffect
object_spawnHiteffect:
	push {r4,r6,lr}
	bl battle_isPaused
	bne locret_800EBCE
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r1,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_800EBD0 // =0x20000 
	tst r1, r0
	beq locret_800EBCE
	mov r0, #0x6e 
	bl PlaySoundEffect
	mov r0, #0x34 
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r0, #0x10
	lsl r0, r0, #0x10
	add r3, r3, r0
	mov r0, #0xf
	bl AddRandomVarianceToTwoCoords
	mov r4, #8
	bl sub_80E08C4
locret_800EBCE:
	pop {r4,r6,pc}
dword_800EBD0: .word 0x20000
	thumb_func_end object_spawnHiteffect

	thumb_func_start object_getEnemyByNameRange
object_getEnemyByNameRange:
	push {r4-r7,lr}
	mov r4, #0x10
	mul r3, r4
	add r3, #0x80
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	add r4, r4, r3
	mov r3, #0
	mov r5, #0
loc_800EBE6:
	ldr r7, [r4]
	tst r7, r7
	beq loc_800EBFC
	ldrh r6, [r7,#oBattleObject_NameID]
	cmp r6, r1
	blt loc_800EBFC
	cmp r6, r2
	bgt loc_800EBFC
	str r7, [r0]
	add r0, #4
	add r5, #1
loc_800EBFC:
	add r4, #4
	add r3, #1
	cmp r3, #4
	blt loc_800EBE6
	mov r0, r5
	pop {r4-r7,pc}
	thumb_func_end object_getEnemyByNameRange

	thumb_local_start
sub_800EC08:
	push {r4-r7,lr}
	mov r4, #0x10
	mul r3, r4
	add r3, #0xd0
	mov r4, r10
	ldr r4, [r4,#oToolkit_BattleStatePtr]
	add r4, r4, r3
	mov r3, #0
	mov r5, #0
loc_800EC1A:
	ldr r7, [r4]
	tst r7, r7
	beq loc_800EC30
	ldrh r6, [r7,#0x28]
	cmp r6, r1
	blt loc_800EC30
	cmp r6, r2
	bgt loc_800EC30
	str r7, [r0]
	add r0, #4
	add r5, #1
loc_800EC30:
	add r4, #4
	add r3, #1
	cmp r3, #4
	blt loc_800EC1A
	mov r0, r5
	pop {r4-r7,pc}
	thumb_func_end sub_800EC08

	thumb_func_start sub_800EC3C
sub_800EC3C:
	push {r5,lr}
	mov r5, r0
	ldr r0, dword_800ECE8 // =0x8000 
	bl object_setFlag2
	pop {r5,pc}
	thumb_func_end sub_800EC3C

	thumb_func_start sub_800EC48
sub_800EC48:
	ldrb r2, [r5,#oBattleObject_Alliance]
	lsl r2, r2, #3
	add r3, r3, r2
	ldr r2, [r3]
	add r3, #4
	ldr r3, [r3]
	mov pc, lr
	thumb_func_end sub_800EC48

	thumb_func_start sub_800EC56
sub_800EC56:
	ldr r2, off_800ECEC // =dword_86F047C 
	cmp r0, #0xff
	ble loc_800EC5E
	ldr r2, off_800ECF0 // =dword_86F0D7C 
loc_800EC5E:
	mov r1, #0xff
	and r1, r0
	mov r0, r2
	mov pc, lr
	thumb_func_end sub_800EC56

	thumb_local_start
sub_800EC66:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	add r0, #0x94
	ldr r1, [r0]
	tst r1, r1
	beq locret_800EC7E
	add r0, #4
	ldr r1, [r0]
	tst r1, r1
	beq locret_800EC7E
	mov r0, #0
locret_800EC7E:
	pop {pc}
	thumb_func_end sub_800EC66

	thumb_func_start sub_800EC80
sub_800EC80:
	push {r4,r5,r7,lr}
	push {r0}
	bl sub_8000E30
	mov r7, r0
	bl sub_8014150
	cmp r0, r7
	ble loc_800EC94
	mov r7, r0
loc_800EC94:
	pop {r0}
	mov r4, r0
	bl sub_80182B4
	mov r5, r0
	ldrb r1, [r0,#1]
	cmp r1, #2
	beq loc_800ECD2
	cmp r1, #0
	bne loc_800ECD2
	ldrb r1, [r5]
	mov r0, #5
	sub r0, r0, r1
	ble loc_800ECD2
	add r7, r7, r7
	cmp r7, r0
	ble loc_800ECB8
	mov r7, r0
loc_800ECB8:
	add r0, r4, r7
	b locret_800ECD4
	cmp r1, #1
	bne loc_800ECD2
	ldrb r1, [r5]
	mov r0, #2
	sub r0, r0, r1
	ble loc_800ECD2
	cmp r7, r0
	ble loc_800ECCE
	mov r7, r0
loc_800ECCE:
	add r0, r4, r7
	b locret_800ECD4
loc_800ECD2:
	mov r0, r4
locret_800ECD4:
	pop {r4,r5,r7,pc}
	.balign 4, 0x00
dword_800ECD8: .word 0x301FE
dword_800ECDC: .word 0x300EE
dword_800ECE0: .word 0x4000
dword_800ECE4: .word 0x2000
dword_800ECE8: .word 0x8000
off_800ECEC: .word dword_86F047C
off_800ECF0: .word dword_86F0D7C
	.word 0x0
	.word 0x0
	.word 0x0
	thumb_func_end sub_800EC80

	thumb_func_start sub_800ED00
sub_800ED00:
	ldr r0, off_800ED20 // =unk_2034080 
	ldr r1, dword_800ED24 // =0x80000000 
	mov r2, #0
	mov r3, #0x80
	add r3, r3, r3
loc_800ED0A:
	str r1, [r0,#0x7c]
	add r0, r0, r3
	lsr r1, r1, #1
	add r2, #1
	cmp r2, #8
	blt loc_800ED0A
	mov r0, #0
	ldr r1, off_800ED28 // =byte_203F6A0 
	str r0, [r1]
	mov pc, lr
	.balign 4, 0
off_800ED20: .word unk_2034080
dword_800ED24: .word 0x80000000
off_800ED28: .word byte_203F6A0
	thumb_func_end sub_800ED00

	thumb_func_start object_createAIData
object_createAIData:
	push {r4,r5,lr}
	// memBlock
	ldr r0, off_800ED78 // =unk_2034080 
	ldr r3, off_800ED7C // =byte_203F6A0 
	ldr r2, [r3]
	mov r1, #1
	lsl r1, r1, #0x1f
	mov r4, #0
	mov r5, #0x80
	add r5, r5, r5
loc_800ED3E:
	tst r2, r1
	beq loc_800ED52
	add r4, #1
	cmp r4, #8
	bge loc_800ED4E
	add r0, r0, r5
	lsr r1, r1, #1
	bne loc_800ED3E
loc_800ED4E:
	mov r0, #0
	pop {r4,r5,pc}
loc_800ED52:
	orr r2, r1
	str r2, [r3]
	mov r4, r0
	// size
	mov r1, #0x7c 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x80
	// memBlock
	add r0, r0, r4
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0xa0
	// memBlock
	add r0, r0, r4
	// size
	mov r1, #0x50 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, r4
	pop {r4,r5,pc}
	.balign 4, 0x00
off_800ED78: .word unk_2034080
off_800ED7C: .word byte_203F6A0
	thumb_func_end object_createAIData

/*For debugging purposes, connect comment at any range!*/
