	.include "asm/asm32.inc"

	thumb_func_start sub_810D970
sub_810D970:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810D986
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	cmp r0, #0
	beq loc_810D986
	bl sub_80C4072
loc_810D986:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_810D970

	thumb_func_start sub_810D98C
sub_810D98C:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	bl sub_810DCCE
	pop {pc}
	thumb_func_end sub_810D98C

	thumb_func_start sub_810D998
sub_810D998:
	push {r4,r6,lr}
	bl sub_810DAF0
	cmp r0, #0
	bne locret_810D9AC
	ldr r1, off_810D9B0 // =off_810D9B4
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_810D9AC:
	pop {r4,r6,pc}
	.byte 0, 0
off_810D9B0: .word off_810D9B4
off_810D9B4: .word sub_810D9C4+1
	.word sub_810DA00+1
	.word sub_810DA24+1
	.word sub_810DAE4+1
	thumb_func_end sub_810D998

	thumb_local_start
sub_810D9C4:
	push {lr}
	bl sub_810DB88
	cmp r0, #0
	beq loc_810D9DC
	bl sub_810DC00
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	lsl r1, r1, #4
	orr r0, r1
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
loc_810D9DC:
	ldrb r0, [r6,#oAIState_Unk_06]
	add r0, #1
	cmp r0, #1
	blt loc_810D9E6
	mov r0, #0
loc_810D9E6:
	strb r0, [r6,#oAIState_Unk_06]
	bne locret_810D9FE
	bl object_getFlag // () -> int
	ldr r1, dword_810DCE8 // =0x2000
	tst r0, r1
	beq loc_810D9FA
	mov r0, #0xc
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810D9FE
loc_810D9FA:
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
locret_810D9FE:
	pop {pc}
	thumb_func_end sub_810D9C4

	thumb_local_start
sub_810DA00:
	push {lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, [r5,#oBattleObject_ExtraVars+4]
	bl sub_8109708
	cmp r0, #0
	beq loc_810DA1C
	mov r0, #0xc
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810DA22
loc_810DA1C:
	strb r0, [r6,#oAIState_Unk_02]
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
locret_810DA22:
	pop {pc}
	thumb_func_end sub_810DA00

	thumb_local_start
sub_810DA24:
	push {lr}
	ldr r1, off_810DA40 // =off_810DA44
	ldrb r0, [r6,#oAIState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_810DA40: .word off_810DA44
off_810DA44: .word sub_810DA4C+1
	.word sub_810DAAA+1
	thumb_func_end sub_810DA24

	thumb_local_start
sub_810DA4C:
	push {r4,lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, [r5,#oBattleObject_ExtraVars+4]
	bl sub_8109708
	cmp r0, #0
	beq loc_810DA68
	mov r0, #0xc
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810DAA8
loc_810DA68:
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	mov r4, r0
	ldrb r0, [r4,#0x13]
	strb r0, [r6,#oAIState_Unk_05]
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r1, r1, r0
	ldr r2, [r5,#oBattleObject_ExtraVars]
	mul r0, r2
	ldrb r2, [r5,#oBattleObject_PanelX]
	add r2, r2, r0
	cmp r1, r2
	blt loc_810DA92
	mov r3, r1
	mov r1, r2
	mov r2, r3
loc_810DA92:
	ldrb r3, [r4,#0x12]
	cmp r3, r1
	blt loc_810DAA0
	cmp r3, r2
	bgt loc_810DAA0
	ldrb r3, [r5,#oBattleObject_PanelX]
	b loc_810DAA2
loc_810DAA0:
	sub r3, r3, r0
loc_810DAA2:
	strb r3, [r6,#oAIState_Unk_04]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_02]
locret_810DAA8:
	pop {r4,pc}
	thumb_func_end sub_810DA4C

	thumb_local_start
sub_810DAAA:
	push {lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, [r5,#oBattleObject_ExtraVars+4]
	bl sub_8109708
	cmp r0, #0
	bne loc_810DADE
	bl object_getFlag // () -> int
	ldr r1, dword_810DCEC // =0xa000
	tst r0, r1
	beq loc_810DAD0
	bl sub_810DB72
	b loc_810DAD4
loc_810DAD0:
	bl sub_810DB20
loc_810DAD4:
	cmp r0, #0
	beq loc_810DADE
	bl sub_810DC00
	b locret_810DAE2
loc_810DADE:
	mov r0, #0xc
	strb r0, [r6,#oAIState_Unk_00]
locret_810DAE2:
	pop {pc}
	thumb_func_end sub_810DAAA

	thumb_local_start
sub_810DAE4:
	push {lr}
	bl sub_810DC4C
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_810DAE4

	thumb_local_start
sub_810DAF0:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_810DB1C
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	bl sub_800A704
	ldr r1, off_810DCF0 // =0x12c
	cmp r0, r1
	blt loc_810DB1C
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_810DB1C:
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_810DAF0

	thumb_local_start
sub_810DB20:
	push {r4,r6,r7,lr}
	ldrb r0, [r6,#oAIState_Unk_05]
	ldrb r1, [r5,#oBattleObject_PanelY]
	cmp r1, r0
	beq loc_810DB46
	blt loc_810DB30
	sub r1, #1
	b loc_810DB32
loc_810DB30:
	add r1, #1
loc_810DB32:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldr r3, off_810DCF4 // =byte_810DBF0
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne locret_810DB70
loc_810DB46:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r6,#oAIState_Unk_04]
	cmp r0, r1
	beq loc_810DB54
	blt loc_810DB58
	sub r0, #1
	b loc_810DB5A
loc_810DB54:
	mov r0, #0
	b locret_810DB70
loc_810DB58:
	add r0, #1
loc_810DB5A:
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_810DCF8 // =byte_810DBF0
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne locret_810DB70
	mov r0, #0
locret_810DB70:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_810DB20

	thumb_local_start
sub_810DB72:
	push {r4,r6,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r4, #0xa
	ldrb r6, [r5,#oBattleObject_Alliance]
	ldr r3, off_810DCFC // =byte_810DBF0
	bl sub_81096FA
	bl sub_8015E46
	pop {r4,r6,pc}
	thumb_func_end sub_810DB72

	thumb_local_start
sub_810DB88:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r4, #0xa
	ldrb r6, [r5,#oBattleObject_Alliance]
	ldr r3, off_810DD00 // =byte_810DBF0
	bl sub_81096FA
	mov r7, sp
	bl object_getPanelRegion
	cmp r0, #0
	beq loc_810DBE0
	cmp r0, #1
	beq loc_810DBCC
	ldr r1, [r5,#oBattleObject_ExtraVars+0x10]
	mov r3, r0
	mov r4, sp
loc_810DBAE:
	ldrb r2, [r4]
	cmp r2, r1
	bne loc_810DBC6
	sub r0, #1
	add r7, r4, #1
loc_810DBB8:
	ldrb r1, [r7]
	strb r1, [r4]
	add r4, #1
	add r7, #1
	sub r3, #1
	bne loc_810DBB8
	b loc_810DBCC
loc_810DBC6:
	add r4, #1
	sub r3, #1
	bne loc_810DBAE
loc_810DBCC:
	mov r7, r0
	bl GetPositiveSignedRNG2
	mov r1, r7
	svc 6
	mov r0, sp
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_810DBE0:
	add sp, sp, #0x18
	pop {r4,r6,r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
byte_810DBF0: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_810DB88

	thumb_local_start
sub_810DC00:
	push {lr}
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r1, off_810DC30 // =byte_810DC34
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldr r3, off_810DD04 // =byte_810DBF0
	bl sub_81096FA
	str r2, [r7,#oAIAttackVars_Unk_34]
	str r3, [r7,#oAIAttackVars_Unk_38]
	mov r0, #0xa
	bl object_setAttack0
	bl sub_8109804
	pop {pc}
	.word 0
	.byte 0, 0
off_810DC30: .word byte_810DC34
byte_810DC34: .byte 0x0, 0x80, 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x0, 0x0, 0xB0
	.byte 0x0, 0x0, 0x0, 0xC0, 0x0, 0x0, 0x0, 0xD0, 0x0, 0x0
	thumb_func_end sub_810DC00

	thumb_local_start
sub_810DC4C:
	push {lr}
	ldrb r2, [r4,#oAIData_Version_16]
	ldr r1, off_810DCB0 // =byte_810DCBC
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r1, off_810DCB4 // =byte_810DCC2
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r1, off_810DCB8 // =byte_810DCC8
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	bl object_getFlag // () -> int
	ldr r1, dword_810DCEC // =0xa000
	tst r0, r1
	beq loc_810DC74
	mov r0, #0x78
	strh r0, [r7,#oAIAttackVars_Unk_18]
loc_810DC74:
	bl object_getFlag // () -> int
	mov r2, #1
	mov r3, #1
	ldr r1, dword_810DD08 // =0x8000
	tst r0, r1
	bne loc_810DC90
	mov r2, #3
	mov r3, #6
	ldr r1, dword_810DCE8 // =0x2000
	tst r0, r1
	bne loc_810DC90
	ldr r2, [r5,#oBattleObject_ExtraVars]
	ldr r3, [r5,#oBattleObject_ExtraVars+4]
loc_810DC90:
	strb r2, [r7,#oAIAttackVars_Unk_0c]
	strb r3, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #0x68
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0x6c
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xb
	bl object_setAttack0
	pop {pc}
	.word 0
	.byte 0, 0, 0, 0
off_810DCB0: .word byte_810DCBC
off_810DCB4: .word byte_810DCC2
off_810DCB8: .word byte_810DCC8
byte_810DCBC: .byte 0x14, 0x28, 0x50, 0x64, 0x3C, 0x64
byte_810DCC2: .byte 0x5A, 0x78, 0x96, 0xA0, 0x78, 0xB4
byte_810DCC8: .byte 0x78, 0x64, 0x50, 0x3C, 0x50, 0x28
	thumb_func_end sub_810DC4C

	thumb_func_start sub_810DCCE
sub_810DCCE:
	push {r4,lr}
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	cmp r0, #0
	bne locret_810DCE6
	mov r0, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	ldr r4, dword_810DD0C // =0x10b04
	bl sub_80C4038
	str r0, [r5,#oBattleObject_ExtraVars+8]
locret_810DCE6:
	pop {r4,pc}
dword_810DCE8: .word 0x2000
dword_810DCEC: .word 0xA000
off_810DCF0: .word 0x12C
off_810DCF4: .word byte_810DBF0
off_810DCF8: .word byte_810DBF0
off_810DCFC: .word byte_810DBF0
off_810DD00: .word byte_810DBF0
off_810DD04: .word byte_810DBF0
dword_810DD08: .word 0x8000
dword_810DD0C: .word 0x10B04
byte_810DD10: .byte 0x4, 0xC, 0x3, 0x0, 0xC, 0x0, 0x0, 0x1
byte_810DD18: .byte 0x96, 0x10, 0x0, 0x8, 0x3C, 0x0, 0xC8, 0x10, 0x1, 0x8, 0x50
	.byte 0x0, 0xF0, 0x10, 0x2, 0x8, 0x64, 0x0, 0x18, 0x11, 0x3, 0x8
	.byte 0x78, 0x0, 0xC8, 0x10, 0x4, 0x8, 0x64, 0x0, 0x18, 0x11, 0x5
	.byte 0x8, 0x8C, 0x0
byte_810DD3C: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	.byte 0xFF, 0xFF, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_810DCCE

	thumb_local_start
sub_810DE00:
	push {lr}
	bl sub_810E2EC
	cmp r0, #0xff
	beq loc_810DE1E
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
	bl sub_810DEC4
	bl sub_810E0D4
	bl sub_801171C
	b locret_810DE28
loc_810DE1E:
	ldr r1, off_810DE2C // =off_810DE30
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_810DE28:
	pop {pc}
	.balign 4, 0x00
off_810DE2C: .word off_810DE30
off_810DE30: .word sub_810DE3C+1
	.word sub_810DE96+1
	.word sub_81097BA+1
	thumb_func_end sub_810DE00

	thumb_local_start
sub_810DE3C:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810DE6A
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r2, #0x7a
	ldrb r0, [r5,r2]
	mov r2, #0x7b
	ldrb r1, [r5,r2]
	lsl r0, r0, #4
	orr r0, r1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	bl sub_810DFD0
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
loc_810DE6A:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne loc_810DE76
	bl sub_810DED2
loc_810DE76:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810DE94
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x10
	bl object_setCounterTime
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_810DE94:
	pop {r4,pc}
	thumb_func_end sub_810DE3C

	thumb_local_start
sub_810DE96:
	push {r4,r6,lr}
	mov r0, #0
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_810DEAE
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl sub_810DF2E
	mov r0, #0xf7
	bl sound_play // () -> void
loc_810DEAE:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810DEC2
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sub_810DEC4
	bl object_exitAttackState
locret_810DEC2:
	pop {r4,r6,pc}
	thumb_func_end sub_810DE96

	thumb_local_start
sub_810DEC4:
	push {r4,r6,lr}
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	pop {r4,r6,pc}
	thumb_func_end sub_810DEC4

	thumb_local_start
sub_810DED2:
	push {r4-r7,lr}
	mov r2, #0x78
	ldrb r0, [r5,r2]
	mov r2, #0x79
	ldrb r1, [r5,r2]
	ldr r2, off_810DF94 // =off_810DF98
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	lsl r1, r1, #2
	ldr r2, [r2,r1]
	mov r3, #0
loc_810DEE8:
	push {r2,r3}
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r4, #2
	mul r4, r3
	ldrb r3, [r2,r4]
	add r4, #1
	ldrb r4, [r2,r4]
	add r1, r1, r3
	add r0, r0, r4
	mov r3, r0
	mov r0, r1
	mov r1, r3
	push {r0,r1}
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	pop {r0,r1}
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_8109660
	pop {r2,r3}
	add r3, #1
	cmp r3, #4
	blt loc_810DEE8
	pop {r4-r7,pc}
	thumb_func_end sub_810DED2

	thumb_local_start
sub_810DF2E:
	push {r4-r7,lr}
	mov r2, #0x78
	ldrb r0, [r5,r2]
	mov r2, #0x79
	ldrb r1, [r5,r2]
	ldr r2, off_810DF94 // =off_810DF98
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	lsl r1, r1, #2
	ldr r2, [r2,r1]
	mov r3, #0
loc_810DF44:
	push {r2,r3}
	push {r3}
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r4, #2
	mul r4, r3
	ldrb r3, [r2,r4]
	add r4, #1
	ldrb r4, [r2,r4]
	add r1, r1, r3
	add r0, r0, r4
	mov r3, r0
	mov r0, r1
	mov r1, r3
	push {r0,r1}
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	pop {r0,r1}
	pop {r3}
	mov r2, #4
	mul r2, r3
	mov r3, #0x68
	add r3, r3, r5
	add r3, r3, r2
	ldrb r2, [r5,#oBattleObject_Element]
	mov r4, #0x78
	lsl r4, r4, #8
	bl sub_80D8400
	pop {r2,r3}
	add r3, #1
	cmp r3, #4
	blt loc_810DF44
	pop {r4-r7,pc}
	.balign 4, 0x00
off_810DF94: .word off_810DF98
off_810DF98: .word off_810DFA0
	.word off_810DFA8
off_810DFA0: .word byte_810DFB0
	.word byte_810DFB8
off_810DFA8: .word byte_810DFC0
	.word byte_810DFC8
byte_810DFB0: .byte 0x0, 0x0, 0x0, 0xFF, 0x1, 0xFF, 0x1, 0x0
byte_810DFB8: .byte 0x0, 0x0, 0xFF, 0x0, 0xFF, 0xFF, 0x0, 0xFF
byte_810DFC0: .byte 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0, 0x1
byte_810DFC8: .byte 0x0, 0x0, 0x0, 0x1, 0xFF, 0x1, 0xFF, 0x0
	thumb_func_end sub_810DF2E

	thumb_local_start
sub_810DFD0:
	push {r4-r7,lr}
	push {r0}
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r3, [r5,#oBattleObject_Alliance]
	mov r2, #1
	eor r2, r3
	mov r3, #5
	mul r2, r3
	add r2, #1
	cmp r2, r1
	beq loc_810E004
	push {r0,r1}
	bl object_getFrontDirection // () -> int
	pop {r1,r2}
	sub r0, r2, r0
	ldr r3, off_810E110 // =byte_810E090
	bl sub_81096FA
	bl object_checkPanelParameters
	tst r0, r0
	bne loc_810E02A
	b loc_810E054
loc_810E004:
	pop {r0}
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldr r1, off_810E0A0 // =off_810E0A4
	sub r0, #1
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	push {r0}
	bl GetRNG2 // () -> int
	pop {r1}
	mov r2, #7
	and r0, r2
	ldrb r0, [r1,r0]
	ldrb r2, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r1, r2
	b loc_810E086
loc_810E02A:
	pop {r0}
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldr r1, off_810E0A0 // =off_810E0A4
	sub r0, #1
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	push {r0}
	bl GetRNG2 // () -> int
	pop {r1}
	mov r2, #7
	and r0, r2
	ldrb r0, [r1,r0]
	ldrb r2, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r1, r2
	sub r1, #1
	neg r1, r1
	b loc_810E086
loc_810E054:
	pop {r0}
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldr r1, off_810E0A0 // =off_810E0A4
	sub r0, #1
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	push {r0}
	bl GetRNG2 // () -> int
	pop {r1}
	mov r2, #7
	and r0, r2
	ldrb r0, [r1,r0]
	push {r0}
	ldr r0, off_810E0C8 // =byte_810E0CC
	push {r0}
	bl GetRNG2 // () -> int
	pop {r1}
	mov r2, #7
	and r0, r2
	ldrb r1, [r1,r0]
	pop {r0}
loc_810E086:
	mov r2, #0x78
	strb r0, [r5,r2]
	mov r2, #0x79
	strb r1, [r5,r2]
	pop {r4-r7,pc}
byte_810E090: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
off_810E0A0: .word off_810E0A4
off_810E0A4: .word byte_810E0B0
	.word byte_810E0B8
	.word byte_810E0C0
byte_810E0B0: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
byte_810E0B8: .byte 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1
byte_810E0C0: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_810E0C8: .word byte_810E0CC
byte_810E0CC: .byte 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1
	thumb_func_end sub_810DFD0

	thumb_local_start
sub_810E0D4:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	tst r0, r0
	beq loc_810E0E4
	bl sub_80D842E
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
loc_810E0E4:
	ldr r0, [r5,#oBattleObject_ExtraVars+0xc]
	tst r0, r0
	beq loc_810E0F2
	bl sub_80D842E
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
loc_810E0F2:
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	tst r0, r0
	beq loc_810E100
	bl sub_80D842E
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
loc_810E100:
	ldr r0, [r5,#oBattleObject_ExtraVars+0x14]
	tst r0, r0
	beq locret_810E10E
	bl sub_80D842E
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
locret_810E10E:
	pop {r4-r7,pc}
off_810E110: .word byte_810E090
	.word 0, 0
	.byte 0, 0, 0, 0
off_810E120: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810E37A+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810E17A+1
	.word sub_81097B4+1
	.word sub_810DE00+1
	.word sub_8109952+1
	.word sub_8109804+1
byte_810E154: .byte 0x32, 0x50, 0x82, 0x96, 0x64, 0x96, 0x0, 0x0
byte_810E15C: .byte 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0x0, 0x0, 0x78, 0x78, 0x78
	.byte 0x78, 0x78, 0x78, 0x0, 0x0
byte_810E16C: .byte 0x24, 0x24, 0x1E, 0x1E, 0x1E, 0x18, 0x0, 0x0
byte_810E174: .byte 0x78, 0x78, 0x78, 0x78, 0x78, 0x78
	thumb_func_end sub_810E0D4

	thumb_local_start
sub_810E17A:
	push {r4,r6,lr}
	mov r0, #0x66
	ldrb r0, [r5,r0]
	tst r0, r0
	bne loc_810E18C
	bl sub_810E34A
	cmp r0, #0
	bne loc_810E1AA
loc_810E18C:
	bl sub_810E2EC
	cmp r0, #0xff
	beq loc_810E1A0
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sub_810E0D4
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
	b loc_810E1AA
loc_810E1A0:
	ldr r1, off_810E1AC
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_810E1AA:
	pop {r4,r6,pc}
	.balign 4, 0
off_810E1AC: .word off_810E1B0
off_810E1B0: .word sub_810E1BC+1
	.word sub_810E1F0+1
	.word sub_810E262+1
	thumb_func_end sub_810E17A

	thumb_local_start
sub_810E1BC:
	push {lr}
	mov r0, #0x66
	ldrb r0, [r5,r0]
	cmp r0, #0
	bne locret_810E1EE
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #0x7c
	ldrh r1, [r5,r1]
	cmp r0, r1
	blt locret_810E1EE
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x60
	mov r1, #0x43
	mov r2, #0x48
	bl sub_8109630
	cmp r0, #0
	bne locret_810E1EE
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
locret_810E1EE:
	pop {pc}
	thumb_func_end sub_810E1BC

	thumb_local_start
sub_810E1F0:
	push {lr}
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_810E3C0 // =byte_810E174
	ldrb r0, [r0,r1]
	mov r2, #0x7c
	strh r0, [r5,r2]
	ldr r0, off_810E3C4 // =byte_810E16C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r0, off_810E3C8 // =byte_810E174
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_810E3CC // =byte_810E154
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_810E3D0 // =byte_810E15C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	tst r0, r0
	beq loc_810E25C
	bl object_getFlag // () -> int
	ldr r1, dword_810E3D4 // =0xa000
	tst r0, r1
	beq loc_810E248
	bl sub_810E3A0
	tst r0, r0
	beq loc_810E25C
	mov r2, #0x7a
	strb r0, [r5,r2]
	mov r2, #0x7b
	strb r1, [r5,r2]
	mov r0, #0x7c
	ldrh r1, [r5,r0]
	add r1, #0x3c
	strh r1, [r5,r0]
	b loc_810E256
loc_810E248:
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r0,#0x12]
	ldrb r2, [r0,#0x13]
	mov r3, #0x7a
	strb r1, [r5,r3]
	mov r3, #0x7b
	strb r2, [r5,r3]
loc_810E256:
	mov r0, #0xa
	bl object_setAttack0
loc_810E25C:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_810E1F0

	thumb_local_start
sub_810E262:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810E2A4
	mov r0, #0x64
	ldrb r0, [r5,r0]
	tst r0, r0
	bne loc_810E280
	mov r0, #0x65
	ldrb r0, [r5,r0]
	tst r0, r0
	bne loc_810E28C
	b locret_810E2A4
loc_810E280:
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #2
	mov r1, #0x66
	strb r0, [r5,r1]
	b loc_810E296
loc_810E28C:
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	mov r1, #0x66
	strb r0, [r5,r1]
loc_810E296:
	mov r0, #0
	mov r1, #0x64
	strb r0, [r5,r1]
	mov r1, #0x65
	strb r0, [r5,r1]
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
locret_810E2A4:
	pop {pc}
	thumb_func_end sub_810E262

	thumb_func_start sub_810E2A6
sub_810E2A6:
	push {r4,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq locret_810E2E4
	ldr r1, dword_810E2E8 // =0xa00
	tst r0, r1
	beq loc_810E2C8
	mov r1, #0x66
	ldrb r0, [r5,r1]
	mov r1, #3
	and r0, r1
	bne locret_810E2E4
	mov r0, #1
	mov r1, #0x64
	strb r0, [r5,r1]
	b locret_810E2E4
loc_810E2C8:
	mov r0, #0x67
	ldrb r0, [r5,r0]
	tst r0, r0
	beq locret_810E2E4
	mov r1, #0x66
	ldrb r0, [r5,r1]
	cmp r0, #0
	beq locret_810E2E4
	mov r1, #0x10
	and r0, r1
	bne locret_810E2E4
	mov r0, #1
	mov r1, #0x65
	strb r0, [r5,r1]
locret_810E2E4:
	pop {r4,pc}
	.balign 4, 0x00
dword_810E2E8: .word 0xA00
	thumb_func_end sub_810E2A6

	thumb_local_start
sub_810E2EC:
	push {r4-r7,lr}
	mov r0, #0x64
	ldrb r0, [r5,r0]
	tst r0, r0
	beq loc_810E30A
	mov r1, #0x66
	ldrb r0, [r5,r1]
	mov r1, #1
	cmp r0, r1
	beq loc_810E332
	mov r0, #1
	mov r1, #0x66
	strb r0, [r5,r1]
	mov r0, #1
	b locret_810E334
loc_810E30A:
	mov r0, #0x65
	ldrb r0, [r5,r0]
	tst r0, r0
	beq loc_810E332
	mov r1, #0x66
	ldrb r0, [r5,r1]
	mov r1, #0x10
	cmp r0, r1
	beq loc_810E332
	mov r0, #0x10
	mov r1, #0x66
	strb r0, [r5,r1]
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Version_16]
	ldr r1, off_810E3D8 // =byte_810E174
	ldrb r0, [r1,r0]
	mov r1, #0x7c
	strh r0, [r5,r1]
	mov r0, #3
	b locret_810E334
loc_810E332:
	mov r0, #0xff
locret_810E334:
	pop {r4-r7,pc}
	thumb_func_end sub_810E2EC

	thumb_func_start sub_810E336
sub_810E336:
	push {lr}
	mov r0, #1
	mov r1, #0x67
	strb r0, [r5,r1]
	pop {pc}
	thumb_func_end sub_810E336

	thumb_func_start sub_810E340
sub_810E340:
	push {lr}
	mov r0, #0
	mov r1, #0x67
	strb r0, [r5,r1]
	pop {pc}
	thumb_func_end sub_810E340

	thumb_local_start
sub_810E34A:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_810E376
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	bl sub_800A704
	ldr r1, off_810E3DC // =0x12c
	cmp r0, r1
	blt loc_810E376
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_810E376:
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_810E34A

	thumb_local_start
sub_810E37A:
	push {r4-r7,lr}
	bl sub_810E0D4
	bl sub_80165C2
	pop {r4-r7,pc}
	thumb_func_end sub_810E37A

	thumb_func_start sub_810E386
sub_810E386:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Version_16]
	ldr r1, off_810E3E0 // =byte_810E174
	ldrb r0, [r1,r0]
	mov r1, #0x7c
	strh r0, [r5,r1]
	pop {r4-r7,pc}
	thumb_func_end sub_810E386

	thumb_local_start
sub_810E3A0:
	push {r4-r7,lr}
	ldr r3, off_810E3E4 // =byte_810E3B0
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.byte 0, 0
byte_810E3B0: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
off_810E3C0: .word byte_810E174
off_810E3C4: .word byte_810E16C
off_810E3C8: .word byte_810E174
off_810E3CC: .word byte_810E154
off_810E3D0: .word byte_810E15C
dword_810E3D4: .word 0xA000
off_810E3D8: .word byte_810E174
off_810E3DC: .word 0x12C
off_810E3E0: .word byte_810E174
off_810E3E4: .word byte_810E3B0
byte_810E3E8: .byte 0x4, 0xD, 0x3, 0x0, 0xD, 0x0, 0x0, 0x1
byte_810E3F0: .byte 0x64, 0x0, 0x0, 0x8, 0xA, 0x0, 0x64, 0x0, 0x1, 0x8, 0x28, 0x0, 0x64
	.byte 0x0, 0x2, 0x8, 0x50, 0x0, 0x64, 0x0, 0x3, 0x8, 0x78, 0x0, 0x64, 0x0
	.byte 0x4, 0x8, 0xA0, 0x0, 0x64, 0x0, 0x5, 0x8, 0xC8, 0x0
byte_810E414: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_810E3A0

	thumb_local_start
sub_810E4D4:
	push {lr}
	ldr r1, off_810E4E4 // =off_810E4E8
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_810E4E4: .word off_810E4E8
off_810E4E8: .word sub_810E4F0+1
	.word sub_810E54E+1
	thumb_func_end sub_810E4D4

	thumb_local_start
sub_810E4F0:
	push {r4,r6,lr}
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
	mov r0, r5
	bl sub_80077B4
	bl sub_801DD34
	bl sub_800AAE8
	bl object_getFrontDirection // () -> int
	ldr r4, dword_810E7A0 // =0xf00000
	mul r4, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	sub r1, r0, r4
	mov r3, #0
	mov r4, #0x28
	strh r4, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x34
	add r0, r0, r5
	ldr r6, dword_810E7A4 // =0xffff8000
	bl sub_8001330
	str r0, [r5,#oBattleObject_XVelocity]
	str r2, [r5,#oBattleObject_ZVelocity]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,r6,pc}
	thumb_func_end sub_810E4F0

	thumb_local_start
sub_810E54E:
	push {r4,lr}
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_ZVelocity]
	ldr r0, [r5,#oBattleObject_Z]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Z]
	ldr r0, dword_810E7A4 // =0xffff8000
	add r1, r1, r0
	str r1, [r5,#oBattleObject_ZVelocity]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810E57A
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #8
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
locret_810E57A:
	pop {r4,pc}
	thumb_func_end sub_810E54E

	thumb_local_start
sub_810E57C:
	push {r4-r7,lr}
	ldr r1, off_810E58C // =off_810E590
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_810E58C: .word off_810E590
off_810E590: .word sub_810E5B0+1
	.word sub_810E5F4+1
	.word sub_810E63C+1
	.word sub_810E666+1
	.word sub_810E6D2+1
	.word sub_810E6E2+1
	.word sub_810E6F6+1
	.word sub_81097B4+1
	thumb_func_end sub_810E57C

	thumb_local_start
sub_810E5B0:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_810E774
	mov r0, #0x77
	ldrb r0, [r5,r0]
	mov r1, #0x78
	ldrb r1, [r5,r1]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_810E746
	mov r0, #3
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sub_810EB42
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	pop {r4-r7,pc}
	thumb_func_end sub_810E5B0

	thumb_local_start
sub_810E5F4:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810E620
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_810E63A
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x85
	add r0, #0xff
	bl sound_play // () -> void
	mov r1, #3
	strb r1, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	tst r0, r0
	beq locret_810E63A
	mov r1, #8
	strb r1, [r0,#0x10]
	b locret_810E63A
loc_810E620:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810E63A
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_32]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_810E63A:
	pop {r4-r7,pc}
	thumb_func_end sub_810E5F4

	thumb_local_start
sub_810E63C:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge loc_810E660
	mov r1, #5
	strb r1, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	tst r0, r0
	beq loc_810E654
	mov r1, #9
	strb r1, [r0,#0x10]
loc_810E654:
	ldrh r0, [r7,#oAIAttackVars_Unk_34]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_810E660:
	bl sub_810EB5C
	pop {r4-r7,pc}
	thumb_func_end sub_810E63C

	thumb_local_start
sub_810E666:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #8
	bne loc_810E6A6
	push {r4-r7}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #2
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldr r4, byte_810E7A8 // =0x10
	mov r3, #0
	mov r7, #3
	bl object_spawnCollisionRegion
	pop {r4-r7}
	push {r4-r7}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x32
	mov r3, #0x10
	ldrb r4, [r5,#oBattleObject_Alliance]
	ldrb r7, [r5,#oBattleObject_DirectionFlip]
	eor r4, r7
	mov r7, #0
	bl sub_801BD3C
	pop {r4-r7}
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
loc_810E6A6:
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	cmp r0, #4
	bne loc_810E6B8
	mov r0, #0x86
	add r0, #0xff
	bl sound_play // () -> void
loc_810E6B8:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge loc_810E6CC
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_810E6CC:
	bl sub_810EB5C
	pop {r4-r7,pc}
	thumb_func_end sub_810E666

	thumb_local_start
sub_810E6D2:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	pop {r4-r7,pc}
	thumb_func_end sub_810E6D2

	thumb_local_start
sub_810E6E2:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_810E6F4
	mov r0, #0x18
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_810E6F4:
	pop {r4-r7,pc}
	thumb_func_end sub_810E6E2

	thumb_local_start
sub_810E6F6:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_810E774
	mov r0, #0x75
	ldrb r0, [r5,r0]
	mov r1, #0x76
	ldrb r1, [r5,r1]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_810E746
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	thumb_func_end sub_810E6F6

	mov r0, #0x77
	ldrb r0, [r5,r0]
	mov r1, #0x78
	ldrb r1, [r5,r1]
	bl object_removePanelReserve
	ldrh r0, [r7,#oAIAttackVars_Unk_30]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
	mov r0, #0x1c
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	pop {r4-r7,pc}
	thumb_local_start
sub_810E746:
	push {r4-r7,lr}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_810E770 // =0x15
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
	.byte 0, 0
dword_810E770: .word 0x15
	thumb_func_end sub_810E746

	thumb_local_start
sub_810E774:
	push {r4-r7,lr}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_810E79C // =0x14
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
dword_810E79C: .word 0x14
dword_810E7A0: .word 0xF00000
dword_810E7A4: .word 0xFFFF8000
byte_810E7A8: .byte 0x10, 0xFF, 0x5, 0x4, 0x0, 0x0, 0x0, 0x0
off_810E7B0: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810E8DA+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810EA4E+1
	.word sub_81097BA+1
	.word sub_810E4D4+1
	.word sub_8109952+1
	.word sub_810E57C+1
byte_810E7E4: .byte 0x64, 0x0, 0xA, 0x0, 0x96, 0x0, 0xA, 0x0, 0xC8, 0x0, 0xA, 0x0
	.byte 0xFA, 0x0, 0xA, 0x0, 0x64, 0x0, 0xA, 0x0, 0x96, 0x0, 0xA, 0x0
byte_810E7FC: .byte 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x0, 0x0
byte_810E804: .byte 0x3C, 0x36, 0x30, 0x2A, 0x24, 0x1E
byte_810E80A: .byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
byte_810E810: .byte 0x48, 0x42, 0x3C, 0x36, 0x30, 0x2A, 0x0, 0x0
byte_810E818: .byte 0x3C, 0x36, 0x30, 0x2A, 0x24, 0x1E
	thumb_func_end sub_810E774

	thumb_func_start sub_810E81E
sub_810E81E:
	push {r4,lr}
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	ldr r4, dword_810E850 // =0x12d10
	bl sub_80C4038
	str r0, [r5,#oBattleObject_ExtraVars]
	ldrb r1, [r5,#oBattleObject_Alliance]
	strb r1, [r0,#oBattleObject_DirectionFlip]
	bl sub_80C407C
	mov r0, #0
	mov r1, #0x74
	strb r0, [r5,r1]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
	pop {r4,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
dword_810E850: .word 0x12D10
	thumb_func_end sub_810E81E

	thumb_func_start sub_810E854
sub_810E854:
	push {lr}
	bl battle_isPaused
	bne loc_810E87E
	bl battle_isTimeStop
	bne loc_810E87E
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	add r0, #1
	cmp r0, #4
	blt loc_810E87C
	ldrh r0, [r5,#oBattleObject_HP]
	cmp r0, #0
	beq loc_810E87C
	ldrh r1, [r5,#oBattleObject_MaxHP]
	cmp r0, r1
	bge loc_810E87A
	add r0, #1
	strh r0, [r5,#oBattleObject_HP]
loc_810E87A:
	mov r0, #0
loc_810E87C:
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
loc_810E87E:
	ldr r0, [r5,#oBattleObject_ExtraVars+0x1c]
	tst r0, r0
	bne locret_810E8C6
	mov r1, #0
	ldrh r0, [r5,#oBattleObject_HP]
	cmp r0, #0x50
	bgt loc_810E898
	mov r1, #1
	cmp r0, #0x1e
	bgt loc_810E898
	mov r1, #2
	cmp r0, #0
	beq locret_810E8C6
loc_810E898:
	ldr r0, off_810E8D0 // =byte_810E8D4
	lsl r1, r1, #1
	ldrb r2, [r0,r1]
	add r1, #1
	ldrb r3, [r0,r1]
	strb r2, [r5,#oBattleObject_CurAnim]
	cmp r3, #0xff
	beq loc_810E8B8
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #NULL
	beq loc_810E8B2
	strb r3, [r0,#0x10]
	b locret_810E8C6
loc_810E8B2:
	bl sub_810EB42
	b locret_810E8C6
loc_810E8B8:
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #NULL
	beq locret_810E8C6
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
locret_810E8C6:
	pop {pc}
	.word 0
	.byte 0, 0, 0, 0
off_810E8D0: .word byte_810E8D4
byte_810E8D4: .byte 0x0, 0xFF, 0x1, 0x6, 0x2, 0x7
	thumb_func_end sub_810E854

	thumb_local_start
sub_810E8DA:
	push {r4,r6,r7,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_810EC40 // =0x40000000
	tst r0, r1
	bne loc_810E904
	bl battle_isTimeStop
	bne locret_810E90E
	bl battle_isPaused
	bne locret_810E90E
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	cmp r0, #0
	bne loc_810E90A
	ldr r1, off_810E910 // =off_810E914
	ldrb r0, [r5,#oBattleObject_CurPhase]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	b locret_810E90E
loc_810E904:
	bl sub_8016EC4
	b locret_810E90E
loc_810E90A:
	bl sub_80165C2
locret_810E90E:
	pop {r4,r6,r7,pc}
off_810E910: .word off_810E914
off_810E914: .word sub_810E928+1
	.word sub_810E97A+1
	.word sub_810E9B6+1
	.word sub_810E9D4+1
	.word sub_810EA3E+1
	thumb_func_end sub_810E8DA

	thumb_local_start
sub_810E928:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	bl sub_801A5E2
	bl sub_801A284
	bl sub_801A29A
	bl sub_801A2B0
	bl sub_80101C4
	bl sub_801DC36
	mov r0, #0
	strb r0, [r5,#oBattleObject_ChipsHeld]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Chip]
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	bl sub_801A7F4
	bl sub_802EF5C
	bl sub_802CDD0
	bl sub_810EB42
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	ldr r0, dword_810EC44 // =0x100c00
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #4
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_810E928

	thumb_local_start
sub_810E97A:
	push {r4,r7,lr}
	ldrb r0, [r5,#oBattleObject_PhaseInitialized]
	cmp r0, #0
	bne loc_810E99A
	mov r0, #1
	strb r0, [r5,#oBattleObject_PhaseInitialized]
	mov r0, #0x85
	add r0, #0xff
	bl sound_play // () -> void
	mov r1, #3
	strb r1, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	mov r1, #8
	strb r1, [r0,#0x10]
	b locret_810E9B4
loc_810E99A:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810E9B4
	mov r1, #4
	strb r1, [r5,#oBattleObject_CurAnim]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_810EC48 // =byte_810E7FC
	ldrb r0, [r0,r1]
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #8
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_810E9B4:
	pop {r4,r7,pc}
	thumb_func_end sub_810E97A

	thumb_local_start
sub_810E9B6:
	push {lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge locret_810E9D2
	mov r1, #5
	strb r1, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	mov r1, #9
	strb r1, [r0,#0x10]
	mov r0, #0x20
	strh r0, [r5,#oBattleObject_Timer]
	mov r0, #0xc
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_810E9D2:
	pop {pc}
	thumb_func_end sub_810E9B6

	thumb_local_start
sub_810E9D4:
	push {r4,r6,r7,lr}
	ldrh r0, [r5,#oBattleObject_Timer]
	cmp r0, #8
	bne loc_810EA18
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #2
	ldr r6, off_810EC4C // =byte_810E7E4
	ldrb r3, [r4,#oAIData_Version_16]
	lsl r3, r3, #2
	ldr r6, [r6,r3]
	mov r4, #0x80
	lsl r4, r4, #0x10
	orr r6, r4
	ldr r4, dword_810EC50 // =0x482aff10
	mov r3, #0
	mov r7, #3
	bl object_spawnCollisionRegion
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x32
	mov r3, #0x10
	ldrb r4, [r5,#oBattleObject_Alliance]
	ldrb r7, [r5,#oBattleObject_DirectionFlip]
	eor r4, r7
	mov r7, #0
	bl sub_801BD3C
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
loc_810EA18:
	ldrh r0, [r5,#oBattleObject_Timer]
	cmp r0, #0x14
	bne loc_810EA26
	mov r0, #0x86
	add r0, #0xff
	bl sound_play // () -> void
loc_810EA26:
	ldrh r0, [r5,#oBattleObject_Timer]
	sub r0, #1
	strh r0, [r5,#oBattleObject_Timer]
	bge loc_810EA38
	ldr r0, [r5,#oBattleObject_ExtraVars]
	bl sub_80C4072
	mov r0, #0x10
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
loc_810EA38:
	bl sub_810EB5C
	pop {r4,r6,r7,pc}
	thumb_func_end sub_810E9D4

	thumb_local_start
sub_810EA3E:
	push {lr}
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+8]
	bl sub_801DD34
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_810EA3E

	thumb_local_start
sub_810EA4E:
	push {r4,r6,lr}
	ldr r1, off_810EA5C // =off_810EA60
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
off_810EA5C: .word off_810EA60
off_810EA60: .word sub_810EA70+1
	.word sub_810EAA2+1
	.word sub_810EAA6+1
	.word sub_810EADE+1
	thumb_func_end sub_810EA4E

	thumb_local_start
sub_810EA70:
	push {r4-r7,lr}
	ldrb r0, [r4,#oAIData_Version_16]
	tst r0, r0
	beq locret_810EAA0
	mov r1, #0x74
	ldrb r0, [r5,r1]
	cmp r0, #3
	blt loc_810EA9C
	mov r0, #0
	strb r0, [r5,r1]
	mov r0, #0x7c
	mov r1, #0x49
	mov r2, #0x4e
	bl sub_8109630
	cmp r0, #0
	bne loc_810EA9C
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
	mov r0, #0xc
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810EAA0
loc_810EA9C:
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
locret_810EAA0:
	pop {r4-r7,pc}
	thumb_func_end sub_810EA70

	thumb_local_start
sub_810EAA2:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_810EAA2

	thumb_local_start
sub_810EAA6:
	push {r4-r7,lr}
	mov r1, #0x74
	ldrb r0, [r5,r1]
	add r0, #1
	strb r0, [r5,r1]
	ldr r0, off_810EC54 // =sub_810EB76+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldr r0, off_810EC58 // =byte_810E804
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x15
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #3
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	bl sub_8109952
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {r4-r7,pc}
	thumb_func_end sub_810EAA6

	thumb_local_start
sub_810EADE:
	push {r4-r7,lr}
	bl sub_810EBB0
	tst r0, r0
	beq loc_810EB2E
	mov r2, #0x77
	strb r0, [r5,r2]
	mov r2, #0x78
	strb r1, [r5,r2]
	bl object_reservePanel
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x75
	strb r0, [r5,r2]
	mov r2, #0x76
	strb r1, [r5,r2]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_810EC5C // =byte_810E80A
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_34]
	ldr r0, off_810EC60 // =byte_810E810
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_810EC64 // =byte_810E818
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_30]
	ldr r0, off_810EC68 // =byte_810E7FC
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_32]
	ldr r0, off_810EC6C // =byte_810E7E4
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xc
	bl object_setAttack0
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810EB40
loc_810EB2E:
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
	mov r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	mov r0, #9
	bl object_setAttack0
locret_810EB40:
	pop {r4-r7,pc}
	thumb_func_end sub_810EADE

	thumb_local_start
sub_810EB42:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #0
	bne locret_810EB5A
	mov r0, #0
	mov r1, #0
	mov r2, #7
	mov r3, #0
	ldr r4, dword_810EC70 // =0x10d04
	bl sub_80C4038
	str r0, [r5,#oBattleObject_ExtraVars+4]
locret_810EB5A:
	pop {r4-r7,pc}
	thumb_func_end sub_810EB42

	thumb_local_start
sub_810EB5C:
	push {r4-r7,lr}
	ldrh r0, [r5,#oBattleObject_Timer2]
	add r0, #1
	strh r0, [r5,#oBattleObject_Timer2]
	lsr r0, r0, #3
	bcs locret_810EB74
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x10
	mov r3, #0
	bl sub_8109660
locret_810EB74:
	pop {r4-r7,pc}
	thumb_func_end sub_810EB5C

	thumb_local_start
sub_810EB76:
	push {r4-r7,lr}
	bl sub_810EB86
	tst r0, r0
	bne locret_810EB84
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
locret_810EB84:
	pop {r4-r7,pc}
	thumb_func_end sub_810EB76

	thumb_local_start
sub_810EB86:
	push {r4-r7,lr}
	ldr r3, off_810EC74 // =byte_810EBA0
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
byte_810EBA0: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_810EB86

	thumb_local_start
sub_810EBB0:
	push {r4-r7,lr}
	bl sub_810EBB8
	pop {r4-r7,pc}
	thumb_func_end sub_810EBB0

	thumb_local_start
sub_810EBB8:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r1, #2
	mov r2, #0
	mov r3, #0x20
	bl object_getClosestPanelMatchingRowFiltered
	tst r0, r0
	beq locret_810EBDA
	ldr r3, off_810EC78 // =byte_810EC30
	bl sub_81096FA
	ldr r4, off_810EBE0 // =byte_810EBE4
	bl sub_8015D80
locret_810EBDA:
	pop {r4-r7,pc}
	.word 0x0
off_810EBE0: .word byte_810EBE4
byte_810EBE4: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x1, 0xFF, 0x1, 0x1, 0xFF, 0xFF, 0xFF
	.byte 0x7F, 0x0, 0x0, 0x0, 0xF0, 0xB5, 0xA8, 0x7D, 0x1, 0x21, 0x48, 0x40
	.byte 0x2, 0x21, 0x0, 0x22, 0x20, 0x23, 0xFE, 0xF6, 0x40, 0xFA, 0x0, 0x42
	.byte 0x5, 0xD0, 0x1C, 0x4B, 0xFA, 0xF7, 0x75, 0xFD, 0x3, 0x4C, 0x7, 0xF7
	.byte 0xB5, 0xF8, 0xF0, 0xBD, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word byte_810EC24
byte_810EC24: .byte 0x1, 0x1, 0xFF, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x7F, 0x0, 0x0, 0x0
byte_810EC30: .byte 0x10, 0x0, 0x0, 0x0, 0x80, 0x0, 0x88, 0xF, 0x10, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
dword_810EC40: .word 0x40000000
dword_810EC44: .word 0x100C00
off_810EC48: .word byte_810E7FC
off_810EC4C: .word byte_810E7E4
dword_810EC50: .word 0x482AFF10
off_810EC54: .word sub_810EB76+1
off_810EC58: .word byte_810E804
off_810EC5C: .word byte_810E80A
off_810EC60: .word byte_810E810
off_810EC64: .word byte_810E818
off_810EC68: .word byte_810E7FC
off_810EC6C: .word byte_810E7E4
dword_810EC70: .word 0x10D04
off_810EC74: .word byte_810EBA0
off_810EC78: .word byte_810EC30
	.word byte_810EC30
byte_810EC80: .byte 0x4, 0xE, 0x4, 0x0, 0xE, 0x0, 0x0, 0x1
byte_810EC88: .byte 0x50, 0x20, 0x0, 0x4, 0x50, 0x0, 0x78, 0x20, 0x1, 0x4, 0x8C
	.byte 0x0, 0xC8, 0x20, 0x2, 0x4, 0xC8, 0x0, 0xF0, 0x20, 0x3, 0x4
	.byte 0x4, 0x1, 0xAA, 0x20, 0x4, 0x4, 0xC8, 0x0, 0xFA, 0x20, 0x5
	.byte 0x4, 0x4, 0x1
byte_810ECAC: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xB2, 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB2, 0x34, 0xB2
	.byte 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB3, 0x34, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xB2, 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB2
	.byte 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB2, 0x34
	.byte 0xB2, 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB2
	.byte 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB2, 0x34, 0xB3, 0x34
	.byte 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3
	.byte 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34
	.byte 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3, 0x34, 0xB3
	.byte 0x34, 0xB3, 0x34, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_810EBB8

	thumb_local_start
sub_810ED70:
	push {lr}
	ldr r0, [r7,#oAIAttackVars_Unk_28]
	ldr r0, [r0]
	cmp r0, #0
	beq loc_810ED9C
	bl battle_isBattleOver
	tst r0, r0
	beq loc_810ED9C
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	bne loc_810ED9C
	ldrh r0, [r0,#0x24]
	tst r0, r0
	bne loc_810ED9C
	bl sub_801171C
	b locret_810EDA6
loc_810ED9C:
	ldr r1, off_810EDA8 // =off_810EDAC
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_810EDA6:
	pop {pc}
off_810EDA8: .word off_810EDAC
off_810EDAC: .word sub_810EDB8+1
	.word sub_810EE04+1
	.word sub_810EE3E+1
	thumb_func_end sub_810ED70

	thumb_local_start
sub_810EDB8:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810EDE2
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_UNK_BIT_22_BIT
	bl object_setFlag1 // (int a1) -> void
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r1, #4
	mul r0, r1
	add r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_0f]
	b locret_810EE02
loc_810EDE2:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810EE02
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	sub r0, #1
	lsl r0, r0, #2
	ldr r1, off_810F004 // =off_810EFB0
	ldr r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_34]
	ldrb r0, [r5,#oBattleObject_CurAnim]
	add r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810EE02:
	pop {pc}
	thumb_func_end sub_810EDB8

	thumb_local_start
sub_810EE04:
	push {r4,r6,lr}
	bl sub_810EEDE
	b loc_810EE0C
loc_810EE0C:
	lsl r1, r1, #8
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r4, [r7,#oAIAttackVars_Unk_34]
	add r6, r4, #1
	str r6, [r7,#oAIAttackVars_Unk_34]
	ldrb r4, [r4]
	lsl r4, r4, #8
	orr r4, r0
	ldrb r0, [r7,#oAIAttackVars_Unk_0d]
	orr r4, r0
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	bl sub_810EF40
	bl sub_80C59F6
	mov r0, #0x87
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0xe
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,r6,pc}
	thumb_func_end sub_810EE04

	thumb_local_start
sub_810EE3E:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_810EE62
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	bne loc_810EE5E
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r1, #4
	mul r0, r1
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sub_801171C
	b locret_810EE62
loc_810EE5E:
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810EE62:
	pop {pc}
	thumb_func_end sub_810EE3E

	thumb_local_start
sub_810EE64:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	cmp r0, #0
	bne loc_810EE7E
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #3
	ldrb r1, [r7,#oAIAttackVars_Unk_0c]
	cmp r1, #1
	beq loc_810EE7A
	mov r0, #7
loc_810EE7A:
	strb r0, [r5,#oBattleObject_CurAnim]
	b locret_810EE94
loc_810EE7E:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810EE94
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r1, #4
	mul r0, r1
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sub_801171C
locret_810EE94:
	pop {pc}
	thumb_func_end sub_810EE64

	push {r4,r6,lr}
	bl object_getFlag // () -> int
	ldr r1, byte_810F008 // =0x0
	tst r0, r1
	bne loc_810EEC0
	ldrb r0, [r5,#0x16]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	mov r4, #9
	ldrb r6, [r5,#0x16]
	ldr r3, off_810EF24 // =byte_810EF30
	bl sub_81096FA
	bl sub_8015E46
	b locret_810EEDC
loc_810EEC0:
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	cmp r0, #0xa
	blt loc_810EECE
	ldr r3, off_810EF24 // =byte_810EF30
loc_810EECE:
	ldr r3, off_810EF20 // =byte_810EF28
	bl sub_81096FA
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	bl sub_8015C94
locret_810EEDC:
	pop {r4,r6,pc}
	thumb_local_start
sub_810EEDE:
	push {r4,r6,lr}
	bl object_getFlag // () -> int
	ldr r1, byte_810F008 // =0x0
	tst r0, r1
	bne loc_810EEFA
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	b locret_810EF16
loc_810EEFA:
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	cmp r0, #0xa
	blt loc_810EF08
	ldr r3, off_810EF24 // =byte_810EF30
loc_810EF08:
	ldr r3, off_810EF20 // =byte_810EF28
	bl sub_81096FA
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_8015C94
locret_810EF16:
	pop {r4,r6,pc}
	.word 0
	.byte 0, 0, 0, 0
off_810EF20: .word byte_810EF28
off_810EF24: .word byte_810EF30
byte_810EF28: .byte 0x0, 0x0, 0x1, 0x0, 0x20, 0x0, 0x0, 0x0
byte_810EF30: .byte 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_810EEDE

	thumb_local_start
sub_810EF40:
	push {r4,lr}
	bl object_getFrontDirection // () -> int
	mov r4, r0
	bl GetPositiveSignedRNG2
	mov r1, #0xe
	and r0, r1
	ldr r1, off_810EF70 // =byte_810EF74
	add r0, r0, r1
	ldrb r2, [r7,#oAIAttackVars_Unk_0e]
	lsl r2, r2, #4
	add r0, r0, r2
	mov r3, #0
	ldrsb r3, [r0,r3]
	mul r3, r4
	lsl r3, r3, #0x10
	ldr r1, [r5,#oBattleObject_X]
	add r1, r1, r3
	mov r3, #1
	ldrsb r3, [r0,r3]
	lsl r3, r3, #0x10
	ldr r2, [r5,#oBattleObject_Y]
	pop {r4,pc}
off_810EF70: .word byte_810EF74
byte_810EF74: .byte 0x0, 0xC, 0x4, 0x10, 0x1, 0x14, 0xFE, 0x12, 0x2, 0xE, 0xFE
	.byte 0xF, 0x0, 0x13, 0xFC, 0xD, 0x0, 0x12, 0x2, 0x16, 0x1, 0x1A
	.byte 0xFE, 0x16, 0x2, 0x12, 0xFE, 0x13, 0x0, 0x17, 0xFC, 0x11, 0x0
	.byte 0x1E, 0xFC, 0x22, 0xFF, 0x24, 0xFE, 0x1E, 0xFD, 0x1C, 0xF8, 0x1B
	.byte 0xFA, 0x1F, 0xFC, 0x17, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0
off_810EFB0: .word byte_810EFD4
	.word byte_810EFD5
	.word byte_810EFD7
	.word dword_810EFDA
	.word byte_810EFDE
	.word byte_810EFE3
	.word byte_810EFE9
	.word byte_810EFF0
	.word byte_810EFF8
byte_810EFD4: .byte 0x8
byte_810EFD5: .byte 0x0, 0x4
byte_810EFD7: .byte 0x1, 0x4, 0x7
dword_810EFDA: .word 0x7050301
byte_810EFDE: .byte 0x0, 0x2, 0x4, 0x6, 0x8
byte_810EFE3: .byte 0x0, 0x2, 0x3, 0x5, 0x6, 0x8
byte_810EFE9: .byte 0x1, 0x2, 0x3, 0x4, 0x6, 0x7, 0x8
byte_810EFF0: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
byte_810EFF8: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x0, 0x0, 0x0
off_810F004: .word off_810EFB0
byte_810F008: .byte 0x0, 0xA0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_810F010: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810F0C0+1
	.word sub_81097D6+1
	.word sub_810ED70+1
	.word sub_810EE64+1
	thumb_func_end sub_810EF40

	thumb_func_start sub_810F040
sub_810F040:
	push {r4-r7,lr}
	ldrh r0, [r5,#oBattleObject_HP]
	str r0, [r5,#oBattleObject_ExtraVars+8]
	mov r0, #0
	ldr r1, off_810F084 // =off_810F088
	ldrb r2, [r5,#oBattleObject_Alliance]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	mov r2, r10
	ldr r2, [r2,#oToolkit_BattleStatePtr]
	add r1, r1, r2
	ldrb r2, [r5,#oObjectHeader_ListIndex]
	mov r3, #0
loc_810F05A:
	ldr r4, [r1]
	tst r4, r4
	beq loc_810F072
	ldrh r6, [r4,#0x28]
	cmp r6, #0x4f
	blt loc_810F072
	cmp r6, #0x54
	bgt loc_810F072
	ldrb r6, [r4,#3]
	cmp r2, r6
	ble loc_810F072
	add r3, #1
loc_810F072:
	add r0, #1
	add r1, #4
	cmp r0, #4
	blt loc_810F05A
	mov r0, #0x14
	mul r0, r3
	mov r1, #0x6c
	strh r0, [r5,r1]
	pop {r4-r7,pc}
off_810F084: .word off_810F088
off_810F088: .word 0x80
	.word 0x90
	thumb_func_end sub_810F040

	thumb_func_start sub_810F090
sub_810F090:
	push {r4,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x82
	ldrh r1, [r0,r1]
	mov r2, #0x84
	ldrh r2, [r0,r2]
	add r1, r1, r2
	mov r2, #0x86
	ldrh r2, [r0,r2]
	add r1, r1, r2
	mov r2, #0x88
	ldrh r2, [r0,r2]
	add r1, r1, r2
	mov r2, #0x8a
	ldrh r2, [r0,r2]
	add r1, r1, r2
	tst r1, r1
	beq locret_810F0BE
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #2
	beq locret_810F0BE
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+4]
locret_810F0BE:
	pop {r4,pc}
	thumb_func_end sub_810F090

	thumb_local_start
sub_810F0C0:
	push {r4,r6,lr}
	ldr r1, off_810F0D0 // =off_810F0D4
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.byte 0, 0
off_810F0D0: .word off_810F0D4
off_810F0D4: .word sub_810F0D8+1
	thumb_func_end sub_810F0C0

	thumb_local_start
sub_810F0D8:
	push {lr}
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #0
	beq loc_810F0F4
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
	ldr r0, [r5,#oBattleObject_ExtraVars]
	add r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0xb
	bl object_setAttack0
	b locret_810F178
loc_810F0F4:
	bl sub_810F1B6
	cmp r0, #0
	bne locret_810F178
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	sub r0, #1
	strh r0, [r5,r1]
	cmp r0, #0
	bgt locret_810F178
	mov r0, #0
	strh r0, [r5,r1]
	ldrb r0, [r6,#oAIState_Unk_04]
	add r1, r0, #1
	strb r1, [r6,#oAIState_Unk_04]
	cmp r0, #3
	blt loc_810F160
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_04]
	bl battle_isBattleOver
	tst r0, r0
	bne loc_810F160
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq loc_810F160
	ldrh r0, [r0,#0x24]
	tst r0, r0
	beq loc_810F160
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_810F180 // =byte_810F18C
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	bl sub_810F1E6
	ldr r1, off_810F184 // =byte_810F192
	ldrb r0, [r1,r0]
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	ldrb r0, [r4,#oAIData_Version_16]
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	ldr r0, [r5,#oBattleObject_ExtraVars]
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #0x64
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0xa
	bl object_setAttack0
	b locret_810F178
loc_810F160:
	bl sub_810F1E6
	ldr r1, off_810F188 // =byte_810F1A4
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_810F1F8 // =sub_810F1F2+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #9
	bl object_setAttack0
locret_810F178:
	pop {pc}
	.word 0
	.byte 0, 0
off_810F180: .word byte_810F18C
off_810F184: .word byte_810F192
off_810F188: .word byte_810F1A4
byte_810F18C: .byte 0xA, 0x1E, 0x50, 0x64, 0x32, 0x64
byte_810F192: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x3, 0x3, 0x3, 0x3, 0x3
	.byte 0x3
byte_810F1A4: .byte 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0xA, 0xA, 0xA
	.byte 0xA, 0xA, 0xA, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	thumb_func_end sub_810F0D8

	thumb_local_start
sub_810F1B6:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_810F1E2
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	bl sub_800A704
	ldr r1, off_810F1FC // =0x12c
	cmp r0, r1
	blt loc_810F1E2
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_810F1E2:
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_810F1B6

	thumb_local_start
sub_810F1E6:
	ldr r1, [r5,#oBattleObject_ExtraVars]
	mov r0, #6
	mul r1, r0
	ldrb r0, [r4,#oAIData_Version_16]
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_810F1E6

	thumb_local_start
sub_810F1F2:
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	mov pc, lr
	.balign 4, 0x00
off_810F1F8: .word sub_810F1F2+1
off_810F1FC: .word 0x12C
byte_810F200: .byte 0x4, 0xF, 0x1, 0x0, 0xF, 0x0, 0x0, 0x1
byte_810F208: .byte 0x3C, 0x20, 0x0, 0x4, 0xA, 0x0, 0x78, 0x20, 0x1, 0x4, 0x14, 0x0
	.byte 0xD2, 0x20, 0x2, 0x4, 0x28, 0x0, 0xF0, 0x20, 0x3, 0x4, 0x3C, 0x0
	.byte 0xB4, 0x20, 0x4, 0x4, 0x28, 0x0, 0xF0, 0x20, 0x5, 0x4, 0x3C, 0x0
byte_810F22C: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_810F1F2

	thumb_local_start
sub_810F2EC:
	push {lr}
	ldr r1, off_810F2FC // =off_810F300
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_810F2FC: .word off_810F300
off_810F300: .word sub_810F310+1
	.word sub_810F33C+1
	.word sub_810F376+1
	.word sub_81097BA+1
	thumb_func_end sub_810F2EC

	thumb_local_start
sub_810F310:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_810F328
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x10
	bl object_setCounterTime
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	b locret_810F33A
loc_810F328:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_810F33A
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810F33A:
	pop {pc}
	thumb_func_end sub_810F310

	thumb_local_start
sub_810F33C:
	push {r4,r6,r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	lsl r1, r1, #4
	orr r0, r1
	ldr r3, [r7,#oAIAttackVars_Unk_34]
loc_810F356:
	ldr r2, [r3]
	cmp r2, #0
	beq loc_810F360
	add r3, #4
	b loc_810F356
loc_810F360:
	ldr r1, [r7,#oAIAttackVars_Unk_3c]
	ldr r2, [r7,#oAIAttackVars_Unk_30]
	ldrb r4, [r7,#oAIAttackVars_Unk_0d]
	ldr r6, [r7,#oAIAttackVars_Unk_38]
	lsl r6, r6, #8
	orr r4, r6
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldr r7, [r7,#oAIAttackVars_Unk_28]
	bl sub_80CBAB8
	pop {r4,r6,r7,pc}
	thumb_func_end sub_810F33C

	thumb_local_start
sub_810F376:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_810F39A
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	beq loc_810F38E
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_810F39A
loc_810F38E:
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_810F39A:
	pop {pc}
off_810F39C: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810F402+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_810F434+1
	.word sub_81097BA+1
	.word sub_810F2EC+1
byte_810F3C8: .byte 0x0, 0x50, 0x1, 0x0, 0x0, 0x60, 0x1, 0x0, 0x0, 0x70, 0x1, 0x0, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x90, 0x1, 0x0, 0x0, 0xA0, 0x1, 0x0
byte_810F3E0: .byte 0x14, 0x28, 0x64, 0x78, 0x3C, 0x78
byte_810F3E6: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
byte_810F3EC: .byte 0x3, 0x3, 0x3, 0x3, 0x3, 0x3
byte_810F3F2: .byte 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	thumb_func_end sub_810F376

	thumb_func_start sub_810F3F8
sub_810F3F8:
	push {lr}
	bl sub_80E5B62
	str r0, [r5,#oBattleObject_ExtraVars+8]
	pop {pc}
	thumb_func_end sub_810F3F8

	thumb_local_start
sub_810F402:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810F42E
	ldr r0, [r5,#oBattleObject_ExtraVars+0xc]
	cmp r0, #0
	beq loc_810F414
	bl sub_80CBAF2
loc_810F414:
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	cmp r0, #0
	beq loc_810F41E
	bl sub_80CBAF2
loc_810F41E:
	ldr r0, [r5,#oBattleObject_ExtraVars+0x14]
	cmp r0, #0
	beq loc_810F428
	bl sub_80CBAF2
loc_810F428:
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	bl sub_80E5B6E
loc_810F42E:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_810F402

	thumb_local_start
sub_810F434:
	push {r4,r6,lr}
	ldr r1, off_810F444 // =off_810F448
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_810F444: .word off_810F448
off_810F448: .word sub_810F44C+1
	thumb_func_end sub_810F434

	thumb_local_start
sub_810F44C:
	push {lr}
	ldrb r3, [r4,#oAIData_Version_16]
	ldr r0, off_810F4C8 // =byte_810F3EC
	ldrb r0, [r0,r3]
	ldr r1, [r5,#oBattleObject_ExtraVars]
	cmp r1, r0
	bge locret_810F4C4
	cmp r1, #0
	bne locret_810F4C4
	sub r0, r0, r1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	bl object_getFlag // () -> int
	ldr r1, dword_810F4CC // =0x8000
	tst r0, r1
	beq loc_810F470
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
loc_810F470:
	ldr r0, off_810F4D0 // =byte_810F3E6
	ldrb r0, [r0,r3]
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	ldr r0, off_810F4D4 // =byte_810F3F2
	ldrb r0, [r0,r3]
	strh r0, [r7,#oAIAttackVars_Unk_0e]
	ldr r0, off_810F4D8 // =byte_810F3E0
	ldrb r0, [r0,r3]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	lsl r3, r3, #2
	ldr r0, off_810F4DC // =byte_810F3C8
	ldr r0, [r0,r3]
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0x6c
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_34]
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	str r0, [r7,#oAIAttackVars_Unk_38]
	add r0, #1
	mov r1, #3
	and r0, r1
	str r0, [r5,#oBattleObject_ExtraVars+4]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	str r0, [r7,#oAIAttackVars_Unk_3c]
	mov r0, #0x78
	strh r0, [r7,#oAIAttackVars_Unk_18]
	bl object_getFlag // () -> int
	ldr r1, dword_810F4E0 // =0x2000
	tst r0, r1
	beq loc_810F4B8
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	add r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_18]
loc_810F4B8:
	mov r0, #0x60
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0xa
	bl object_setAttack0
locret_810F4C4:
	pop {pc}
	.balign 4, 0x00
off_810F4C8: .word byte_810F3EC
dword_810F4CC: .word 0x8000
off_810F4D0: .word byte_810F3E6
off_810F4D4: .word byte_810F3F2
off_810F4D8: .word byte_810F3E0
off_810F4DC: .word byte_810F3C8
dword_810F4E0: .word 0x2000
byte_810F4E4: .byte 0x4, 0x10, 0x3, 0x0, 0x10, 0x0, 0x0, 0x0
byte_810F4EC: .byte 0xC8, 0x10, 0x0, 0x6, 0x64, 0x0, 0xE6, 0x30, 0x1, 0x6, 0x78
	.byte 0x0, 0x4, 0x21, 0x2, 0x6, 0xAA, 0x0, 0x2C, 0x41, 0x3, 0x6
	.byte 0xBE, 0x0, 0xFA, 0x0, 0x4, 0x6, 0x96, 0x0, 0x2C, 0x1, 0x5
	.byte 0x6, 0xC8, 0x0
byte_810F510: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_810F44C

	thumb_local_start
sub_810F5D0:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq loc_810F610
	ldr r1, dword_810F658 // =0xc000000
	tst r0, r1
	beq loc_810F610
	ldr r0, off_810F63C // =byte_810F640
	mov r1, #0x7e
	ldrb r1, [r5,r1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_8110222
	bl object_clearCollisionRegion // () -> void
	ldrb r0, [r4,#oAIData_Version_16]
	tst r0, r0
	bne loc_810F610
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	ldr r1, off_810F65C // =0x400
	tst r0, r1
	beq loc_810F610
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #2
	bl object_setPanelType
loc_810F610:
	ldr r1, off_810F61C // =off_810F620
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
off_810F61C: .word off_810F620
off_810F620: .word sub_810F660+1
	.word sub_810F6C4+1
	.word sub_810F770+1
	.word sub_810F7EC+1
	.word sub_810F898+1
	.word sub_810F96C+1
	.word sub_81097B4+1
off_810F63C: .word byte_810F640
byte_810F640: .byte 0x8, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0xB, 0x0, 0x0, 0x0
	.byte 0xD, 0x0, 0x0, 0x0, 0xD, 0x0, 0x0, 0x0
dword_810F658: .word 0xC000000
off_810F65C: .word 0x400
	thumb_func_end sub_810F5D0

	thumb_local_start
sub_810F660:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_810F678
	mov r0, #0xca
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_810F678:
	mov r1, #0x6e
	ldrb r0, [r5,r1]
	add r0, #1
	strb r0, [r5,r1]
	cmp r0, #0x28
	bne locret_810F6BA
	mov r0, #0
	strb r0, [r5,r1]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, dword_810F6BC // =0x200000
	bl sub_811016C
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0x7f
	mov r1, #0
	strb r1, [r5,r0]
	bl object_getFlag // () -> int
	ldr r1, dword_810F6C0 // =0xa000
	tst r0, r1
	beq loc_810F6B2
	mov r0, #0x7f
	mov r1, #1
	strb r1, [r5,r0]
loc_810F6B2:
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_810F6BA:
	pop {r4-r7,pc}
dword_810F6BC: .word 0x200000
dword_810F6C0: .word 0xA000
	thumb_func_end sub_810F660

	thumb_local_start
sub_810F6C4:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_810F6E4
	mov r0, #0
	mov r1, #0
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_810F6E4:
	bl object_clearCollisionRegion // () -> void
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	beq loc_810F6FA
	b locret_810F76E
loc_810F6FA:
	bl sub_810F9F6
	tst r0, r0
	beq loc_810F766
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	ldrh r0, [r5,#oBattleObject_Z16]
	sub r0, #0x24
	strh r0, [r5,#oBattleObject_Z16]
	bl object_updateCollisionPanels
	mov r0, #1
	bl sub_810FC0C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6c
	strb r0, [r5,r2]
	mov r2, #0x6d
	strb r1, [r5,r2]
	bl sub_802D234
	cmp r0, #6
	beq loc_810F738
	mov r0, #0x10
	bl object_setCounterTime
loc_810F738:
	bl sub_810FAA0
	bl sub_810FB30
	mov r0, #0xf7
	bl sound_play // () -> void
	mov r0, #1
	bl object_setCollisionRegion
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_8016934
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_810F76E
loc_810F766:
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_810F76E:
	pop {r4,pc}
	thumb_func_end sub_810F6C4

	thumb_local_start
sub_810F770:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_YVelocity]
	ldr r1, [r5,#oBattleObject_Y]
	add r1, r1, r0
	str r1, [r5,#oBattleObject_Y]
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
	mov r0, #0
	bl sub_810FBD8
	bl sub_810FC30
	mov r0, #0x74
	ldrb r0, [r5,r0]
	mov r1, #1
	eor r0, r1
	mov r1, #3
	mul r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	cmp r0, r1
	beq loc_810F7B0
	b locret_810F7EA
loc_810F7B0:
	mov r0, #0x67
	ldrb r0, [r5,r0]
	cmp r0, #0
	beq loc_810F7DE
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r1, #5
	mul r0, r1
	add r0, #1
	ldrb r1, [r5,#oBattleObject_PanelX]
	cmp r0, r1
	beq loc_810F7DE
	mov r0, #0x77
	mov r1, #0
	strb r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_Y]
	str r0, [r5,#oBattleObject_ExtraVars+0x18]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_810F7EA
loc_810F7DE:
	bl sub_810FCA2
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_810F7EA:
	pop {r4-r7,pc}
	thumb_func_end sub_810F770

	thumb_local_start
sub_810F7EC:
	push {r4-r7,lr}
	mov r0, #0x6e
	mov r1, #0x75
	ldrb r2, [r5,r0]
	add r2, #1
	strb r2, [r5,r0]
	ldrb r3, [r5,r1]
	cmp r2, r3
	beq loc_810F836
	mov r0, r2
	mov r1, r3
	bl sub_810FA4C
	mov r1, #0x74
	ldrb r1, [r5,r1]
	ldr r2, off_810F884 // =dword_810F888
	ldrb r2, [r2,r1]
	lsl r1, r1, #2
	ldr r3, off_810F88C // =byte_810F890
	ldr r1, [r3,r1]
	mul r0, r1
	add r0, r0, r2
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_XVelocity]
	ldr r1, [r5,#oBattleObject_X]
	add r1, r1, r0
	str r1, [r5,#oBattleObject_X]
	bl sub_810FA64
	bl object_setPanelsFromCoordinates
	mov r0, #1
	bl sub_810FBD8
	bl sub_810FC30
	b loc_810F86C
loc_810F836:
	mov r0, #0x67
	ldrb r1, [r5,r0]
	sub r1, #1
	strb r1, [r5,r0]
	mov r0, #0x74
	ldrb r1, [r5,r0]
	mov r2, #1
	eor r1, r2
	strb r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_YVelocity]
	neg r0, r0
	str r0, [r5,#oBattleObject_YVelocity]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	str r0, [r5,#oBattleObject_X]
	mov r0, #0x6e
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0xf7
	bl sound_play // () -> void
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_810F86C:
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_810F884: .word dword_810F888
dword_810F888: .word 0x602
off_810F88C: .word byte_810F890
byte_810F890: .byte 0x1, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_810F7EC

	thumb_local_start
sub_810F898:
	push {r4-r7,lr}
	mov r0, #0x6e
	ldrb r1, [r5,r0]
	cmp r1, #0
	beq loc_810F8D2
	sub r1, #1
	strb r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_YVelocity]
	ldr r1, [r5,#oBattleObject_Y]
	add r1, r1, r0
	str r1, [r5,#oBattleObject_Y]
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
	mov r0, #0
	bl sub_810FBD8
	bl sub_810FC30
	b locret_810F96A
loc_810F8D2:
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_810F8E4
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x74
	ldrb r0, [r5,r0]
	bl sub_810FC0C
loc_810F8E4:
	bl object_clearCollisionRegion // () -> void
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x7c
	ldrb r1, [r5,r0]
	tst r1, r1
	beq locret_810F96A
	mov r1, #0
	strb r1, [r5,r0]
	bl sub_810FB54
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	mov r2, #0x64
	ldrb r0, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	mov r2, #0x65
	ldrb r0, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_17]
	strb r0, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	mov r0, #1
	bl object_setCollisionRegion
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_8016934
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r2, #0x64
	ldrb r0, [r5,r2]
	mov r2, #0x65
	ldrb r1, [r5,r2]
	ldr r2, dword_810FCCC // =0x200000
	bl sub_811013C
	mov r2, #0x64
	ldrb r0, [r5,r2]
	mov r2, #0x65
	ldrb r1, [r5,r2]
	bl object_removePanelReserve
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x40
	bl object_clearFlag
locret_810F96A:
	pop {r4-r7,pc}
	thumb_func_end sub_810F898

	thumb_local_start
sub_810F96C:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_810F978
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_810F978:
	bl object_clearCollisionRegion // () -> void
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x7c
	mov r1, #0
	strb r1, [r5,r0]
	bl sub_810FB54
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	mov r2, #0x64
	ldrb r0, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	mov r2, #0x65
	ldrb r0, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_17]
	strb r0, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	bl object_updateCollisionPanels
	mov r0, #1
	bl object_setCollisionRegion
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r2, #0x64
	ldrb r0, [r5,r2]
	mov r2, #0x65
	ldrb r1, [r5,r2]
	ldr r2, dword_810FCCC // =0x200000
	bl sub_811013C
	mov r2, #0x64
	ldrb r0, [r5,r2]
	mov r2, #0x65
	ldrb r1, [r5,r2]
	bl object_removePanelReserve
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0x40
	bl object_clearFlag
	pop {r4-r7,pc}
	thumb_func_end sub_810F96C

	thumb_local_start
sub_810F9F6:
	push {r4-r7,lr}
	mov r0, #0x7f
	ldrb r0, [r5,r0]
	tst r0, r0
	beq loc_810FA0C
	bl sub_810FA2C
	tst r0, r0
	beq loc_810FA28
	mov r1, #0
	b locret_810FA2A
loc_810FA0C:
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	tst r0, r0
	beq loc_810FA28
	ldrh r1, [r0,#0x24]
	cmp r1, #0
	ble loc_810FA28
	ldrb r1, [r0,#0x12]
	sub r1, r1, r4
	mov r0, r1
	mov r1, #0
	b locret_810FA2A
loc_810FA28:
	mov r0, #0
locret_810FA2A:
	pop {r4-r7,pc}
	thumb_func_end sub_810F9F6

	thumb_local_start
sub_810FA2C:
	push {r4-r7,lr}
	ldr r3, off_810FCD0 // =byte_810FA3C
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.balign 4, 0
byte_810FA3C: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_810FA2C

	thumb_func_start sub_810FA4C
sub_810FA4C:
	push {lr}
	push {r0}
	mov r0, r1
	mov r1, #5
	svc 6
	mov r1, r0
	pop {r0}
	svc 6
	cmp r0, #5
	bne locret_810FA62
	mov r0, #4
locret_810FA62:
	pop {pc}
	thumb_func_end sub_810FA4C

	thumb_local_start
sub_810FA64:
	push {r4-r7,lr}
	mov r0, #0x76
	ldrb r1, [r5,r0]
	mov r2, #0x77
	ldrb r3, [r5,r2]
	add r3, r3, r1
	strb r3, [r5,r2]
	lsl r3, r3, #1
	ldr r2, off_810FCD4 // =math_sinTable
	ldrh r0, [r2,r3]
	mov r1, #0xc
	mul r0, r1
	lsl r0, r0, #8
	mov r1, #0x74
	ldrb r1, [r5,r1]
	lsl r1, r1, #2
	ldr r2, off_810FA94 // =byte_810FA98
	ldr r1, [r2,r1]
	mul r0, r1
	ldr r1, [r5,#oBattleObject_ExtraVars+0x18]
	add r1, r1, r0
	str r1, [r5,#oBattleObject_Y]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_810FA94: .word byte_810FA98
byte_810FA98: .byte 0x1, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_810FA64

	thumb_local_start
sub_810FAA0:
	push {r4-r7,lr}
	mov r2, #0
	ldr r0, off_810FCD8 // =byte_810FD58
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #2
	add r0, r0, r1
loc_810FAAC:
	push {r0,r2}
	ldrb r3, [r0,r2]
	bl sub_80C1400
	pop {r0,r2}
	add r2, #1
	cmp r2, #4
	bne loc_810FAAC
	pop {r4-r7,pc}
	.byte 0x0, 0x0
	.word byte_810FAC4
byte_810FAC4: .byte 0xFF, 0xFF, 0x7, 0x6, 0x3, 0x4
	thumb_func_end sub_810FAA0

	thumb_local_start
sub_810FACA:
	push {r4-r7,lr}
	push {r0,r1}
	mov r0, #0x7e
	ldrb r0, [r5,r0]
	lsl r0, r0, #2
	ldr r4, off_810FAF8 // =byte_810FAFC
	ldr r4, [r4,r0]
	push {r0}
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	ldrb r2, [r7,#oAIAttackVars_Unk_02]
	pop {r3}
	ldr r7, off_810FB14 // =byte_810FB18
	ldr r7, [r7,r3]
	mov r3, #0
	pop {r0,r1}
	bl object_spawnCollisionRegion
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_810FAF8: .word byte_810FAFC
byte_810FAFC: .byte 0x1, 0x1, 0x5, 0x6, 0x1, 0x3, 0x5, 0x6, 0x1, 0x2, 0x5, 0x6, 0x1, 0x4, 0x5, 0x6, 0x1
	.byte 0x6, 0x5, 0x6, 0x1, 0x6, 0x5, 0x6
off_810FB14: .word byte_810FB18
byte_810FB18: .byte 0x3, 0x0, 0x0, 0x0, 0x1, 0x10, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0
	.byte 0x3, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0
	thumb_func_end sub_810FACA

	thumb_local_start
sub_810FB30:
	push {r4-r7,lr}
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r1, off_810FB84 // =byte_810FB88
	ldr r1, [r1,r0]
	ldr r2, off_810FB68 // =byte_810FB6C
	ldr r2, [r2,r0]
	ldr r3, off_810FBA0 // =byte_810FBA4
	ldr r3, [r3,r0]
	bl sub_801A082
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r1, off_810FBBC // =byte_810FBC0
	ldr r0, [r1,r0]
	bl object_setCollisionStatusEffect1
	pop {r4-r7,pc}
	thumb_func_end sub_810FB30

	thumb_local_start
sub_810FB54:
	push {r4-r7,lr}
	mov r1, #0x10
	mov r2, #2
	mov r3, #3
	bl sub_801A082
	mov r0, #0
	bl object_setCollisionStatusEffect1
	pop {r4-r7,pc}
off_810FB68: .word byte_810FB6C
byte_810FB6C: .byte 0x2, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x2
	.byte 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
off_810FB84: .word byte_810FB88
byte_810FB88: .byte 0x35, 0x0, 0x0, 0x0, 0x35, 0x0, 0x0, 0x0, 0x35, 0x0, 0x0, 0x0, 0x35
	.byte 0x0, 0x0, 0x0, 0x35, 0x0, 0x0, 0x0, 0x35, 0x0, 0x0, 0x0
off_810FBA0: .word byte_810FBA4
byte_810FBA4: .byte 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x3
	.byte 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0
off_810FBBC: .word byte_810FBC0
byte_810FBC0: .byte 0x0, 0x0, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_810FB54

	thumb_local_start
sub_810FBD8:
	push {r4-r7,lr}
	tst r0, r0
	bne loc_810FBE8
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	ldr r2, [r5,#oBattleObject_YVelocity]
	add r1, r1, r2
	b loc_810FBF0
loc_810FBE8:
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	ldr r2, [r5,#oBattleObject_XVelocity]
	add r0, r0, r2
loc_810FBF0:
	mov r2, #0
	ldr r2, [r5,#oBattleObject_Z]
	bl sub_800E258
	push {r0,r1}
	bl object_getPanelParameters
	ldr r1, dword_810FCDC // =0x800000
	tst r0, r1
	pop {r0,r1}
	beq locret_810FC0A
	bl sub_810FACA
locret_810FC0A:
	pop {r4-r7,pc}
	thumb_func_end sub_810FBD8

	thumb_local_start
sub_810FC0C:
	push {r4-r7,lr}
	tst r0, r0
	beq locret_810FC2A
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	ldr r1, [r5,#oBattleObject_X]
	ldr r2, [r5,#oBattleObject_Y]
	ldr r3, [r5,#oBattleObject_Z]
	mov r3, #0
	ldr r4, dword_810FC2C // =0x2
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
locret_810FC2A:
	pop {r4-r7,pc}
dword_810FC2C: .word 0x2
	thumb_func_end sub_810FC0C

	thumb_local_start
sub_810FC30:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6c
	ldrb r2, [r5,r2]
	mov r3, #0x6d
	ldrb r3, [r5,r3]
	cmp r0, r2
	bne loc_810FC48
	cmp r1, r3
	bne loc_810FC48
	b locret_810FC66
loc_810FC48:
	mov r2, #0x6c
	ldrb r0, [r5,r2]
	mov r2, #0x6d
	ldrb r1, [r5,r2]
	bl sub_810FC68
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6c
	strb r0, [r5,r2]
	mov r2, #0x6d
	strb r1, [r5,r2]
	mov r0, #1
	bl object_setCollisionRegion
locret_810FC66:
	pop {r4-r7,pc}
	thumb_func_end sub_810FC30

	thumb_local_start
sub_810FC68:
	push {r4-r7,lr}
	cmp r0, #0
	ble locret_810FC94
	cmp r0, #7
	bge locret_810FC94
	cmp r1, #0
	ble locret_810FC94
	cmp r1, #4
	bge locret_810FC94
	push {r0,r1}
	bl object_isPanelSolid
	tst r0, r0
	pop {r0,r1}
	beq locret_810FC94
	ldrb r2, [r4,#oAIData_Version_16]
	ldr r3, off_810FC98 // =byte_810FC9C
	ldrb r2, [r3,r2]
	cmp r2, #0xff
	beq locret_810FC94
	bl object_setPanelType
locret_810FC94:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_810FC98: .word byte_810FC9C
byte_810FC9C: .byte 0xFF, 0xFF, 0x7, 0x6, 0x3, 0x4
	thumb_func_end sub_810FC68

	thumb_local_start
sub_810FCA2:
	push {r4-r7,lr}
	mov r0, #0x74
	ldrb r0, [r5,r0]
	lsl r0, r0, #2
	ldr r1, off_810FCC0 // =byte_810FCC4
	ldr r0, [r1,r0]
	ldr r1, [r5,#oBattleObject_YVelocity]
	cmp r1, #0
	bge loc_810FCB6
	neg r1, r1
loc_810FCB6:
	svc 6
	mov r1, #0x6e
	strb r0, [r5,r1]
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_810FCC0: .word byte_810FCC4
byte_810FCC4: .byte 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x10, 0x0
dword_810FCCC: .word 0x200000
off_810FCD0: .word byte_810FA3C
off_810FCD4: .word math_sinTable
off_810FCD8: .word byte_810FD58
dword_810FCDC: .word 0x800000
off_810FCE0: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_810FDF0+1
	.word sub_80166AE+1
	.word sub_810FD70+1
	.word sub_8016CE8+1
	.word sub_810FD90+1
	.word sub_810FDB0+1
	.word sub_810FDD0+1
	.word sub_81097B4+1
	.word sub_810F5D0+1
	.word sub_8109952+1
	.word sub_8109804+1
byte_810FD14: .byte 0x3C, 0x3C, 0x3C, 0x3C, 0x1E, 0x1E
byte_810FD1A: .byte 0x50, 0x50, 0x32, 0x32, 0x64, 0xC8
byte_810FD20: .byte 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0x0, 0x0
byte_810FD28: .byte 0x3C, 0x3C, 0x3C, 0x3C, 0x1E, 0x1E, 0x0, 0x0
byte_810FD30: .byte 0x3C, 0x3C, 0x3C, 0x3C, 0x1E, 0x1E, 0x0, 0x0
byte_810FD38: .byte 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0
	.byte 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0
byte_810FD50: .byte 0x1, 0x1, 0x1, 0x1, 0x2, 0x2, 0x0, 0x0
byte_810FD58: .byte 0x8, 0x10, 0x18, 0x20, 0x8, 0x10, 0x18, 0x20, 0x8, 0x10
	.byte 0x18, 0x20, 0x8, 0x10, 0x18, 0x20, 0x8, 0x10, 0x18, 0x20
	.byte 0x8, 0x10, 0x18, 0x20
	thumb_func_end sub_810FCA2

	thumb_local_start
sub_810FD70:
	push {lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq loc_810FD84
	ldr r1, dword_810FD8C // =0xc000000
	tst r0, r1
	beq loc_810FD84
	bl object_clearCollisionRegion // () -> void
loc_810FD84:
	bl sub_8016B02
	pop {pc}
	.balign 4, 0x00
dword_810FD8C: .word 0xC000000
	thumb_func_end sub_810FD70

	thumb_local_start
sub_810FD90:
	push {lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq loc_810FDA4
	ldr r1, dword_810FDAC // =0xc000000
	tst r0, r1
	beq loc_810FDA4
	bl object_clearCollisionRegion // () -> void
loc_810FDA4:
	bl sub_8016B36
	pop {pc}
	.balign 4, 0x00
dword_810FDAC: .word 0xC000000
	thumb_func_end sub_810FD90

	thumb_local_start
sub_810FDB0:
	push {lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq loc_810FDC4
	ldr r1, dword_810FDCC // =0xc000000
	tst r0, r1
	beq loc_810FDC4
	bl object_clearCollisionRegion // () -> void
loc_810FDC4:
	bl sub_8016B72
	pop {pc}
	.balign 4, 0x00
dword_810FDCC: .word 0xC000000
	thumb_func_end sub_810FDB0

	thumb_local_start
sub_810FDD0:
	push {r4,r6,lr}
	ldr r1, off_810FDE0 // =off_810FDE4
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.byte 0, 0
off_810FDE0: .word off_810FDE4
off_810FDE4: .word sub_810FE18+1
	.word sub_810FE5C+1
	.word sub_810FF1C+1
	thumb_func_end sub_810FDD0

	thumb_local_start
sub_810FDF0:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_810FE0C
	bl object_getFlag // () -> int
	ldr r1, dword_810FE14 // =0x40000000
	tst r0, r1
	beq loc_810FE0C
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	bl sub_80C10E8
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
loc_810FE0C:
	bl sub_80165C2
	pop {pc}
	.balign 4, 0x00
dword_810FE14: .word 0x40000000
	thumb_func_end sub_810FDF0

	thumb_local_start
sub_810FE18:
	push {r4-r7,lr}
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x60
	mov r1, #0x5b
	mov r2, #0x60
	bl sub_8109630
	cmp r0, #0
	bne locret_810FE5A
	mov r0, #0x7d
	ldrb r1, [r5,r0]
	tst r1, r1
	beq loc_810FE3C
	mov r1, #0
	strb r1, [r5,r0]
	b loc_810FE48
loc_810FE3C:
	mov r0, #0x66
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #2
	ble loc_810FE56
loc_810FE48:
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810FE5A
loc_810FE56:
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
locret_810FE5A:
	pop {r4-r7,pc}
	thumb_func_end sub_810FE18

	thumb_local_start
sub_810FE5C:
	push {lr}
	bl object_canMove
	beq loc_810FEF4
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x64
	strb r0, [r5,r2]
	mov r2, #0x65
	strb r1, [r5,r2]
	bl object_reservePanel
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_810FF00 // =byte_810FD30
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_810FF04 // =byte_810FD1A
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_810FF08 // =byte_810FD38
	lsl r2, r1, #2
	ldr r0, [r0,r2]
	str r0, [r5,#oBattleObject_YVelocity]
	push {r1}
	mov r2, r0
	bl object_getFrontDirection // () -> int
	mul r0, r2
	str r0, [r5,#oBattleObject_XVelocity]
	mov r1, r2
	ldr r0, dword_810FF0C // =0x280000
	svc 6
	mov r1, #0x75
	strb r0, [r5,r1]
	cmp r0, #0
	beq loc_810FEBA
	mov r1, r0
	mov r0, #0x80
	svc 6
	mov r1, #0x76
	strb r0, [r5,r1]
loc_810FEBA:
	pop {r1}
	ldr r0, off_810FF10 // =byte_810FD50
	mov r2, #0x67
	ldrb r3, [r0,r1]
	strb r3, [r5,r2]
	mov r0, #0
	mov r2, #0x74
	strb r0, [r5,r2]
	ldr r0, off_810FF14 // =byte_810FD20
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, off_810FF18 // =byte_810FD28
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r1, #0x6e
	strb r0, [r5,r1]
	mov r1, #0x6f
	strb r0, [r5,r1]
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_810FEFC
loc_810FEF4:
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
locret_810FEFC:
	pop {pc}
	.byte 0, 0
off_810FF00: .word byte_810FD30
off_810FF04: .word byte_810FD1A
off_810FF08: .word byte_810FD38
dword_810FF0C: .word 0x280000
off_810FF10: .word byte_810FD50
off_810FF14: .word byte_810FD20
off_810FF18: .word byte_810FD28
	thumb_func_end sub_810FE5C

	thumb_local_start
sub_810FF1C:
	push {lr}
	ldr r0, off_8110274 // =sub_810FF68+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_8110278 // =byte_810FD14
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	bl object_getFlag // () -> int
	ldr r1, dword_811027C // =0x8000
	tst r0, r1
	beq loc_810FF46
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	add r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_18]
loc_810FF46:
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x15
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #3
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	bl sub_8109952
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_810FF1C

	thumb_local_start
sub_810FF68:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	bl sub_810FF9C
	tst r0, r0
	bne loc_810FF8E
	bl sub_810FFC4
	tst r0, r0
	bne loc_810FF8E
	bl sub_8110000
	tst r0, r0
	bne loc_810FF8E
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
loc_810FF8E:
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_810FF68

	thumb_local_start
sub_810FF9C:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq locret_810FFC2
	push {r0}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_8110280 // =byte_81100A0
	bl sub_81096FA
	mov r4, #0x2c
	ldrb r6, [r5,#oBattleObject_Alliance]
	pop {r5}
	bl sub_811000E
locret_810FFC2:
	pop {r4-r7,pc}
	thumb_func_end sub_810FF9C

	thumb_local_start
sub_810FFC4:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq loc_810FFFC
	ldrb r0, [r0,#0x13]
	ldr r3, off_8110284 // =byte_81100A0
	bl sub_81096FA
	mov r7, sp
	bl object_getPanelsIgnoreColumnFiltered
	tst r0, r0
	beq loc_810FFFC
	push {r0}
	bl GetPositiveSignedRNG2
	pop {r1}
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_810FFFC:
	add sp, sp, #0x18
	pop {r4-r7,pc}
	thumb_func_end sub_810FFC4

	thumb_local_start
sub_8110000:
	push {r4-r7,lr}
	ldr r3, off_8110288 // =byte_81100A0
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	thumb_func_end sub_8110000

	thumb_local_start
sub_811000E:
	push {r4-r7,lr}
	ldr r7, off_811001C // =off_8019B78
	lsl r4, r4, #2
	ldr r4, [r7,r4]
	bl sub_8110020
	pop {r4-r7,pc}
off_811001C: .word off_8019B78
	thumb_func_end sub_811000E

	thumb_local_start
sub_8110020:
	push {r4-r7,lr}
	sub sp, sp, #0x38
	str r0, [sp,#0x1c]
	str r1, [sp,#0x20]
	str r2, [sp,#0x24]
	str r3, [sp,#0x28]
	mov r0, r6
	bl object_getAllianceDirection
	str r0, [sp,#0x2c]
	mov r6, #0
loc_8110036:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_8110078
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0x2c]
	mul r0, r2
	ldr r2, [sp,#0x1c]
	add r0, r0, r2
	str r0, [sp,#0x30]
	ldr r2, [sp,#0x20]
	add r1, r1, r2
	str r1, [sp,#0x34]
	ldr r2, [sp,#0x24]
	ldr r3, [sp,#0x28]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_8110074
	ldr r0, [sp,#0x34]
	ldrb r1, [r5,#0x13]
	cmp r0, r1
	beq loc_8110074
	ldr r0, [sp,#0x30]
	ldr r1, [sp,#0x34]
	lsl r1, r1, #4
	orr r0, r1
	add r1, sp, #0
	strb r0, [r1,r6]
	add r6, #1
loc_8110074:
	add r4, #2
	b loc_8110036
loc_8110078:
	mov r2, r6
	mov r0, r6
	beq loc_8110092
	bl GetPositiveSignedRNG2
	mov r1, r6
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, r6
loc_8110092:
	add sp, sp, #0x38
	pop {r4-r7,pc}
	.hword 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_81100A0: .byte 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8110020

	thumb_func_start sub_81100B0
sub_81100B0:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	mov r0, #0
	mov r1, #0x7d
	strb r0, [r5,r1]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x64
	strb r0, [r5,r2]
	mov r2, #0x65
	strb r1, [r5,r2]
	mov r0, #0x66
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0x7e
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r1,#oAIData_Version_16]
	strb r1, [r5,r0]
	bl sub_80C10C8
	str r0, [r5,#oBattleObject_ExtraVars+8]
	pop {r4-r7,pc}
	thumb_func_end sub_81100B0

	thumb_func_start sub_81100E2
sub_81100E2:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_ExtraVars]
	tst r0, r0
	bne locret_8110102
	ldr r0, off_8110104 // =byte_8110108
	mov r1, #0x7e
	ldrb r1, [r5,r1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldr r1, [r5,#oBattleObject_CollisionDataPtr]
	ldrh r2, [r1,r0]
	cmp r2, #0
	beq locret_8110102
	mov r0, #0x7d
	mov r1, #1
	strb r1, [r5,r0]
locret_8110102:
	pop {r4-r7,pc}
off_8110104: .word byte_8110108
byte_8110108: .byte 0x86, 0x0, 0x0, 0x0, 0x8A, 0x0, 0x0, 0x0, 0x84, 0x0, 0x0, 0x0, 0x88
	.byte 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.word byte_8110124
byte_8110124: .byte 0x8, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0xB, 0x0, 0x0, 0x0
	.byte 0xD, 0x0, 0x0, 0x0, 0xD, 0x0, 0x0, 0x0
	thumb_func_end sub_81100E2

	thumb_local_start
sub_811013C:
	push {r4-r7,lr}
	mov r4, r2
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, r4
	pop {r0}
	ldr r4, dword_8110168 // =0x15
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
dword_8110168: .word 0x15
	thumb_func_end sub_811013C

	thumb_local_start
sub_811016C:
	push {r4-r7,lr}
	mov r4, r2
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, r4
	pop {r0}
	ldr r4, byte_8110198 // =0x14
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
byte_8110198: .byte 0x14, 0x0, 0x0, 0x0, 0xF0, 0xB5, 0x82, 0xB0, 0xA9, 0x7C
	.byte 0x0, 0x91, 0xE9, 0x7C, 0x1, 0x91, 0x56, 0x46, 0xB6, 0x69
	.byte 0x10, 0x21, 0x48, 0x43, 0xD0, 0x30, 0x36, 0x18, 0x4, 0x24
	.byte 0x0, 0x27, 0x35, 0x68, 0x2D, 0x42, 0x21, 0xD0, 0x28, 0x7A
	.byte 0x8, 0x28, 0x1E, 0xD0, 0x28, 0x8D, 0xFF, 0xF6, 0x69, 0xF8
	.byte 0x2, 0x28, 0x3, 0xD0, 0x0, 0x28, 0x1, 0xD0, 0x1, 0x28
	.byte 0x15, 0xD1, 0x9, 0xF7, 0xC6, 0xFF, 0x2C, 0x49, 0x8, 0x42
	.byte 0x10, 0xD0, 0xA8, 0x7C, 0xE9, 0x7C, 0x0, 0xAB, 0x0, 0xF0
	.byte 0x12, 0xF8, 0x0, 0x2F, 0x8, 0xD0, 0x1, 0xB4, 0xB8, 0x7C
	.byte 0xF9, 0x7C, 0x1, 0xAB, 0x0, 0xF0, 0xA, 0xF8, 0x2, 0xBC
	.byte 0x88, 0x42, 0x0, 0xDD, 0x2F, 0x1C, 0x4, 0x36, 0x1, 0x3C
	.byte 0xD7, 0xD1, 0x38, 0x1C, 0x2, 0xB0, 0xF0, 0xBD, 0x1A, 0x68
	.byte 0x10, 0x1A, 0x2, 0x1C, 0x50, 0x43, 0x5A, 0x68, 0x51, 0x1A
	.byte 0xA, 0x1C, 0x51, 0x43, 0x40, 0x18, 0xF7, 0x46
	thumb_func_end sub_811016C

	thumb_local_start
sub_8110222:
	push {r4-r7,lr}
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	push {r0}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_8110250 // =0x0
	orr r4, r0
	pop {r0}
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
	.byte 0x0, 0x0
dword_8110250: .word 0x0
	thumb_func_end sub_8110222

	thumb_func_start sub_8110254
sub_8110254:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Version_16]
	ldr r1, off_8110270 // =byte_810FD20
	ldrb r0, [r1,r0]
	strh r0, [r5,#oBattleObject_StaminaDamageCounterDisabler]
	pop {r4-r7,pc}
	.word 0, 0, 0
	.byte 0, 0
off_8110270: .word byte_810FD20
off_8110274: .word sub_810FF68+1
off_8110278: .word byte_810FD14
dword_811027C: .word 0x8000
off_8110280: .word byte_81100A0
off_8110284: .word byte_81100A0
off_8110288: .word byte_81100A0
	.word 0x800
byte_8110290: .byte 0x4, 0x11, 0x4, 0x0, 0x11, 0x0, 0x0, 0x1
byte_8110298: .byte 0x64, 0x30, 0x0, 0x8, 0x50, 0x0, 0x8C, 0x30, 0x1, 0x8, 0x78
	.byte 0x0, 0xB4, 0x30, 0x2, 0x8, 0xB4, 0x0, 0xDC, 0x30, 0x3, 0x8
	.byte 0xDC, 0x0, 0xB4, 0x30, 0x4, 0x8, 0xB4, 0x0, 0xDC, 0x30, 0x5
	.byte 0x8, 0xFA, 0x0
byte_81102BC: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_8110254

	thumb_local_start
sub_811037C:
	push {lr}
	ldr r1, off_811038C // =off_8110390
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_811038C: .word off_8110390
off_8110390: .word sub_81103A0+1
	.word sub_8110416+1
	.word sub_811046A+1
	.word sub_81104B2+1
	thumb_func_end sub_811037C

	thumb_local_start
sub_81103A0:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_81103DC
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x34
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x45
	bl SpawnT4BattleObjectWithId0
	ldr r0, dword_81104CC // =0x200000
	mov r1, #1
	mov r2, #5
	mov r3, #0
	ldr r4, dword_81104D0 // =0x10011104
	bl sub_80C4038
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	str r0, [r1]
	mov r0, #0x2f
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0x8a
	bl sound_play // () -> void
loc_81103DC:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0x10
	bgt loc_81103FE
	mov r1, #4
	tst r0, r1
	bne loc_81103FE
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #8
	bl sub_8109660
loc_81103FE:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8110414
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_8110416
locret_8110414:
	pop {r4,pc}
	thumb_func_end sub_81103A0

	thumb_local_start
sub_8110416:
	push {r4,r6,lr}
	mov r0, #6
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	ldr r1, [r1]
	strb r0, [r1,#0x10]
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	push {r7}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldrh r4, [r7,#oAIAttackVars_Unk_12]
	lsl r4, r4, #8
	add r4, #1
	mov r2, #3
	mov r3, #0
	ldr r7, [r7,#oAIAttackVars_Unk_34]
	bl sub_80D5890
	pop {r7}
	mov r0, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	ldr r4, dword_81104D0 // =0x10011104
	bl sub_80C4038
	ldr r1, [r7,#oAIAttackVars_Unk_34]
	add r1, #4
	str r0, [r1]
	bl sub_80C4090
	mov r0, #0x9b
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4,r6,pc}
	thumb_func_end sub_8110416

	thumb_local_start
sub_811046A:
	push {lr}
	bl object_getFlag // () -> int
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne loc_8110488
	ldr r0, [r7,#oAIAttackVars_Unk_34]
	ldr r0, [r0]
	cmp r0, #0
	beq loc_8110488
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	bgt locret_81104B0
loc_8110488:
	ldr r0, [r7,#oAIAttackVars_Unk_34]
	mov r1, #0
	str r1, [r0]
	ldr r2, [r7,#oAIAttackVars_Unk_28]
	ldr r0, [r2]
	mov r1, #0
	str r1, [r2]
	bl sub_80C4072
	ldr r2, [r7,#oAIAttackVars_Unk_34]
	add r2, #4
	ldr r0, [r2]
	mov r1, #0
	str r1, [r2]
	bl sub_80C4072
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81104B0:
	pop {pc}
	thumb_func_end sub_811046A

	thumb_local_start
sub_81104B2:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81104C8
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	mov r1, #0
	str r1, [r0]
	bl object_exitAttackState
locret_81104C8:
	pop {pc}
	.balign 4, 0x00
dword_81104CC: .word 0x200000
dword_81104D0: .word 0x10011104
off_81104D4: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_8110518+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_811055C+1
	.word sub_81097BA+1
	.word sub_811037C+1
byte_8110500: .byte 0x1E, 0x3C, 0x50, 0x64, 0x46, 0x6E
	thumb_func_end sub_81104B2

loc_8110506:
	push {r2,r4,r5,r7}
	push {r2,r4,r5,r7}
	push {r2,r4,r5,r7}
byte_811050C: .byte 0x3C, 0x3C, 0x3C, 0x3C, 0x3C, 0x3C
byte_8110512: .byte 0x78, 0x78, 0x78, 0x78, 0x78, 0x78
	thumb_local_start
sub_8110518:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_8110540
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	ldr r0, [r5,#oBattleObject_ExtraVars+0xc]
	cmp r0, #0
	beq loc_8110532
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
loc_8110532:
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #0
	beq loc_8110540
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
loc_8110540:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_8110518

	thumb_func_start sub_8110546
sub_8110546:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	ldr r0, [r5,#oBattleObject_ExtraVars+0xc]
	cmp r0, #NULL
	beq locret_811055A
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
locret_811055A:
	pop {pc}
	thumb_func_end sub_8110546

	thumb_local_start
sub_811055C:
	push {r4,r6,lr}
	ldr r1, off_811056C // =off_8110570
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_811056C: .word off_8110570
off_8110570: .word sub_8110574+1
	thumb_func_end sub_811055C

	thumb_local_start
sub_8110574:
	push {lr}
	ldrb r0, [r6,#oAIState_Unk_02]
	cmp r0, #0
	bne loc_8110598
	mov r0, #1
	strb r0, [r6,#oAIState_Unk_02]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8110610 // =loc_8110506
	ldrb r0, [r0,r1]
	strh r0, [r6,#oAIState_Unk_08]
	bl object_getFlag // () -> int
	ldr r1, byte_8110614 // =0x0
	tst r0, r1
	beq loc_8110598
	ldrh r0, [r6,#oAIState_Unk_08]
	add r0, #0x78
	strh r0, [r6,#oAIState_Unk_08]
loc_8110598:
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	bne loc_81105D4
	ldrh r0, [r6,#oAIState_Unk_08]
	cmp r0, #0x3c
	bgt loc_81105BA
	mov r1, #4
	and r0, r1
	beq loc_81105BA
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
loc_81105BA:
	ldrh r0, [r6,#oAIState_Unk_08]
	sub r0, #1
	strh r0, [r6,#oAIState_Unk_08]
	bgt locret_8110608
	bl object_getFlag // () -> int
	ldr r1, byte_8110618 // =0x0
	tst r0, r1
	bne loc_81105D4
	ldrh r0, [r5,#oBattleObject_MaxHP]
	mov r1, #0
	bl sub_800E360
loc_81105D4:
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_811061C // =byte_8110500
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, off_8110620 // =byte_811050C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r0, off_8110624 // =byte_8110512
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #0x60
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0x68
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0x64
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_02]
locret_8110608:
	pop {pc}
	thumb_func_end sub_8110574

	thumb_func_start sub_811060A
sub_811060A:
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	mov pc, lr
off_8110610: .word loc_8110506
byte_8110614: .byte 0x0, 0x20, 0x0, 0x0
byte_8110618: .byte 0x0, 0x80, 0x0, 0x0
off_811061C: .word byte_8110500
off_8110620: .word byte_811050C
off_8110624: .word byte_8110512
byte_8110628: .byte 0x4, 0x12, 0x3, 0x0, 0x12, 0x0, 0x0, 0x1
byte_8110630: .byte 0x78, 0x30, 0x0, 0x4, 0x3C, 0x0, 0xA0, 0x30, 0x1, 0x4, 0x5A
	.byte 0x0, 0xC8, 0x30, 0x2, 0x4, 0x78, 0x0, 0xF0, 0x30, 0x3, 0x4
	.byte 0x96, 0x0, 0xB4, 0x30, 0x4, 0x4, 0x78, 0x0, 0x18, 0x31, 0x5
	.byte 0x4, 0xB4, 0x0
byte_8110654: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_811060A

	thumb_local_start
sub_8110714:
	push {lr}
	ldr r1, off_8110724 // =off_8110728
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8110724: .word off_8110728
off_8110728: .word sub_811072C+1
	thumb_func_end sub_8110714

	thumb_local_start
sub_811072C:
	push {lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq loc_8110794
	ldrh r1, [r0,#0x24]
	tst r1, r1
	beq loc_8110794
	ldrb r1, [r0,#0x13]
	ldrb r2, [r5,#oBattleObject_PanelY]
	cmp r1, r2
	bne loc_8110794
	push {r0}
	bl object_getFrontDirection // () -> int
	mov r1, r0
	pop {r0}
	ldrb r2, [r5,#oBattleObject_PanelX]
	ldrb r3, [r0,#0x12]
	sub r2, r3, r2
	mul r1, r2
	cmp r1, #0
	ble loc_8110794
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0x6c
	mov r1, #0x67
	mov r2, #0x6c
	bl sub_8109630
	cmp r0, #0
	bne loc_8110794
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	bl sub_8110D18
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r0,#0x12]
	ldrb r2, [r0,#0x13]
	mov r0, #0x80
	strb r1, [r5,r0]
	mov r0, #0x81
	strb r2, [r5,r0]
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
	mov r0, #0
	strh r0, [r6,#oAIState_Unk_02]
	bl sub_801171C
	b locret_811079E
loc_8110794:
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
locret_811079E:
	pop {pc}
	thumb_func_end sub_811072C

	thumb_local_start
sub_81107A0:
	push {lr}
	ldr r1, off_81107B0 // =off_81107B4
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_81107B0: .word off_81107B4
off_81107B4: .word sub_81107BC+1
	.word sub_81107F2+1
	thumb_func_end sub_81107A0

	thumb_local_start
sub_81107BC:
	push {r4,r6,r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	ldr r2, [r7,#oAIAttackVars_Unk_34]
	ldr r3, [r7,#oAIAttackVars_Unk_38]
	bl object_checkPanelParameters
	cmp r0, #0
	beq loc_81107E8
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_8110840
	bl sub_81107F2
	b locret_81107F0
loc_81107E8:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl sub_801171C
locret_81107F0:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_81107BC

	thumb_local_start
sub_81107F2:
	push {lr}
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_YVelocity]
	ldr r0, [r5,#oBattleObject_Y]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	ldrh r1, [r7,#oAIAttackVars_Unk_12]
	cmp r0, r1
	bne loc_8110814
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
loc_8110814:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_811083E
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_setCollisionPanelsToCurrent
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
locret_811083E:
	pop {pc}
	thumb_func_end sub_81107F2

	thumb_local_start
sub_8110840:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_17]
	ldrb r1, [r5,#oBattleObject_PanelY]
	sub r0, r0, r1
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mul r1, r0
	beq loc_811085A
	str r1, [r5,#oBattleObject_YVelocity]
	mov r0, #0
	str r0, [r5,#oBattleObject_XVelocity]
	mov r0, #0x18
	lsl r0, r0, #0x10
	b loc_811087E
loc_811085A:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r5,#oBattleObject_PanelX]
	sub r0, r0, r1
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mul r0, r1
	bne loc_8110874
	mov r0, #0
	str r0, [r5,#oBattleObject_XVelocity]
	str r0, [r5,#oBattleObject_YVelocity]
	mov r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	strh r0, [r7,#oAIAttackVars_Unk_12]
	b locret_8110888
loc_8110874:
	str r0, [r5,#oBattleObject_XVelocity]
	mov r0, #0
	str r0, [r5,#oBattleObject_YVelocity]
	mov r0, #0x28
	lsl r0, r0, #0x10
loc_811087E:
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	svc 6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	lsr r0, r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
locret_8110888:
	pop {pc}
	thumb_func_end sub_8110840

	thumb_local_start
sub_811088A:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq loc_811089E
	ldr r1, dword_81108E0 // =0xc000000
	tst r0, r1
	beq loc_811089E
	bl object_clearCollisionRegion // () -> void
loc_811089E:
	ldr r1, off_81108B0 // =off_81108B4
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	bl sub_8110D7C
	pop {r4-r7,pc}
	.byte 0, 0
off_81108B0: .word off_81108B4
off_81108B4: .word sub_81108E4+1
	.word sub_811095E+1
	.word sub_81109F6+1
	.word sub_8110A8E+1
	.word sub_8110AE4+1
	.word sub_8110B16+1
	.word sub_8110B38+1
	.word sub_8110B50+1
	.word sub_8110B70+1
	.word sub_8110C26+1
	.word sub_81097B4+1
dword_81108E0: .word 0xC000000
	thumb_func_end sub_811088A

	thumb_local_start
sub_81108E4:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8110900
	ldrh r0, [r7,#oAIAttackVars_Unk_34]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x82
	strb r0, [r5,r2]
	mov r2, #0x83
	strb r1, [r5,r2]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110900:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_811095C
	bl object_getFrontDirection // () -> int
	mov r2, r0
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	sub r0, r0, r2
	bl object_isValidPanel
	tst r0, r0
	beq loc_811092E
	bl object_getFrontDirection // () -> int
	ldr r1, [r7,#oAIAttackVars_Unk_2c]
	ldrb r2, [r1,#0x12]
	ldrb r3, [r1,#0x13]
	sub r0, r2, r0
	mov r1, r3
	b loc_811093E
loc_811092E:
	bl object_getFrontDirection // () -> int
	mov r1, #0x80
	ldrb r1, [r5,r1]
	mov r2, #0x81
	ldrb r2, [r5,r2]
	sub r0, r1, r0
	mov r1, r2
loc_811093E:
	mov r2, #0x7a
	strb r0, [r5,r2]
	mov r2, #0x7b
	strb r1, [r5,r2]
	bl sub_8110CC6
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #OBJECT_FLAGS_GUARD
	bl object_setFlag1 // (int a1) -> void
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_811095C:
	pop {r4-r7,pc}
	thumb_func_end sub_81108E4

	thumb_local_start
sub_811095E:
	push {r4-r7,lr}
	mov r1, #0x7c
	ldrh r0, [r5,r1]
	sub r0, #1
	strh r0, [r5,r1]
	tst r0, r0
	blt loc_811097E
	bl sub_8110D34
	tst r0, r0
	bne loc_81109A6
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	b loc_811099C
loc_811097E:
	mov r2, #0x7a
	ldrb r0, [r5,r2]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_811099C:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	b locret_81109F4
loc_81109A6:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_81110C8
	ldrh r0, [r7,#oAIAttackVars_Unk_32]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r2, #0x78
	ldrb r0, [r5,r2]
	mov r2, #0x79
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_811109C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x28
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_81109F4:
	pop {r4-r7,pc}
	thumb_func_end sub_811095E

	thumb_local_start
sub_81109F6:
	push {r4-r7,lr}
	mov r1, #0x7e
	ldrh r0, [r5,r1]
	sub r0, #1
	strh r0, [r5,r1]
	tst r0, r0
	blt loc_8110A16
	bl sub_8110D58
	tst r0, r0
	bne loc_8110A3E
	ldr r0, [r5,#oBattleObject_Y]
	ldr r1, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	b loc_8110A34
loc_8110A16:
	ldrb r0, [r5,#oBattleObject_PanelX]
	mov r2, #0x7b
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110A34:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	b locret_8110A8C
loc_8110A3E:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_81110C8
	ldrh r0, [r7,#oAIAttackVars_Unk_32]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r2, #0x78
	ldrb r0, [r5,r2]
	mov r2, #0x79
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_811109C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x28
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8110A8C:
	pop {r4-r7,pc}
	thumb_func_end sub_81109F6

	thumb_local_start
sub_8110A8E:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8110A9E
	ldrh r0, [r7,#oAIAttackVars_Unk_36]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110A9E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_8110AC4
	mov r0, #0x10
	bl object_setCounterTime
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #1
	bl object_clearFlag // (int bitfield) -> void
	ldrh r0, [r7,#oAIAttackVars_Unk_0e]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8110AE2
loc_8110AC4:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne locret_8110AE2
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #0x15
	bl sub_8109660
locret_8110AE2:
	pop {r4-r7,pc}
	thumb_func_end sub_8110A8E

	thumb_local_start
sub_8110AE4:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8110B14
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #3
	mov r3, #0
	ldr r4, [r7,#oAIAttackVars_Unk_0c]
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldr r7, [r7,#oAIAttackVars_Unk_28]
	bl sub_80D6B78
locret_8110B14:
	pop {r4-r7,pc}
	thumb_func_end sub_8110AE4

	thumb_local_start
sub_8110B16:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8110B22
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110B22:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8110B36
	ldrh r0, [r7,#oAIAttackVars_Unk_30]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8110B36:
	pop {r4-r7,pc}
	thumb_func_end sub_8110B16

	thumb_local_start
sub_8110B38:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8110B4E
	mov r0, #6
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1c
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8110B4E:
	pop {r4-r7,pc}
	thumb_func_end sub_8110B38

	thumb_local_start
sub_8110B50:
	push {r4-r7,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8110B6E
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #OBJECT_FLAGS_GUARD
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0x20
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8110B6E:
	pop {r4-r7,pc}
	thumb_func_end sub_8110B50

	thumb_local_start
sub_8110B70:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8110B98
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	mov r0, #0x78
	ldrb r1, [r5,r0]
	mov r0, #0x7a
	strb r1, [r5,r0]
	mov r0, #0x79
	ldrb r1, [r5,r0]
	mov r0, #0x7b
	strb r1, [r5,r0]
	bl sub_8110CC6
	ldrh r0, [r7,#oAIAttackVars_Unk_32]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110B98:
	mov r1, #0x7e
	ldrh r0, [r5,r1]
	sub r0, #1
	strh r0, [r5,r1]
	tst r0, r0
	blt loc_8110BB6
	bl sub_8110D58
	tst r0, r0
	bne loc_8110BDE
	ldr r0, [r5,#oBattleObject_Y]
	ldr r1, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	b loc_8110BD4
loc_8110BB6:
	ldrb r0, [r5,#oBattleObject_PanelX]
	mov r2, #0x7b
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0x24
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110BD4:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	b locret_8110C24
loc_8110BDE:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_81110C8
	mov r2, #0x78
	ldrb r0, [r5,r2]
	mov r2, #0x79
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_811109C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x28
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8110C24:
	pop {r4-r7,pc}
	thumb_func_end sub_8110B70

	thumb_local_start
sub_8110C26:
	push {r4-r7,lr}
	mov r1, #0x7c
	ldrh r0, [r5,r1]
	sub r0, #1
	strh r0, [r5,r1]
	tst r0, r0
	blt loc_8110C46
	bl sub_8110D34
	tst r0, r0
	bne loc_8110C7E
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	b loc_8110C74
loc_8110C46:
	mov r2, #0x7a
	ldrb r0, [r5,r2]
	mov r2, #0x7b
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x28
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8110C74:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	b locret_8110CC4
loc_8110C7E:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_81110C8
	mov r2, #0x78
	ldrb r0, [r5,r2]
	mov r2, #0x79
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_811109C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x28
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8110CC4:
	pop {r4-r7,pc}
	thumb_func_end sub_8110C26

	thumb_local_start
sub_8110CC6:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0x7c
	strh r0, [r5,r1]
	mov r1, #0x7e
	strh r0, [r5,r1]
	ldr r0, off_8110DA4 // =byte_8110E0C
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#oBattleObject_XVelocity]
	str r0, [r5,#oBattleObject_YVelocity]
	ldrb r0, [r5,#oBattleObject_PanelX]
	mov r1, #0x7a
	ldrb r1, [r5,r1]
	sub r0, r1, r0
	ldr r1, [r5,#oBattleObject_XVelocity]
	cmp r0, #0
	bge loc_8110CEE
	neg r1, r1
loc_8110CEE:
	str r1, [r5,#oBattleObject_XVelocity]
	ldr r2, dword_8110DA8 // =0x280000
	mul r0, r2
	svc 6
	mov r2, #0x7c
	strh r0, [r5,r2]
	ldrb r0, [r5,#oBattleObject_PanelY]
	mov r1, #0x7b
	ldrb r1, [r5,r1]
	sub r0, r1, r0
	ldr r1, [r5,#oBattleObject_YVelocity]
	cmp r0, #0
	bge loc_8110D0A
	neg r1, r1
loc_8110D0A:
	str r1, [r5,#oBattleObject_YVelocity]
	ldr r2, dword_8110DAC // =0x180000
	mul r0, r2
	svc 6
	mov r2, #0x7e
	strh r0, [r5,r2]
	pop {r4-r7,pc}
	thumb_func_end sub_8110CC6

	thumb_local_start
sub_8110D18:
	push {r4-r7,lr}
	ldrh r0, [r5,#oBattleObject_NameID]
	mov r1, #5
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	bl sub_8018810
	lsl r3, r1, #0x10
	lsl r1, r0, #0x10
	mov r2, #0
	mov r4, #0
	bl sub_80E8124
	pop {r4-r7,pc}
	thumb_func_end sub_8110D18

	thumb_local_start
sub_8110D34:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	ldr r1, [r5,#oBattleObject_Y]
	mov r2, #0
	ldr r2, [r5,#oBattleObject_Z]
	bl sub_800E258
	bl object_getPanelParameters
	ldr r1, byte_8110DB0 // =0x0
	and r0, r1
	bne loc_8110D54
	mov r0, #0
	b locret_8110D56
loc_8110D54:
	mov r0, #1
locret_8110D56:
	pop {r4-r7,pc}
	thumb_func_end sub_8110D34

	thumb_local_start
sub_8110D58:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	ldr r2, [r5,#oBattleObject_YVelocity]
	add r1, r1, r2
	mov r2, #0
	ldr r2, [r5,#oBattleObject_Z]
	bl sub_800E258
	bl object_getPanelParameters
	ldr r1, byte_8110DB0 // =0x0
	and r0, r1
	bne loc_8110D78
	mov r0, #0
	b locret_8110D7A
loc_8110D78:
	mov r0, #1
locret_8110D7A:
	pop {r4-r7,pc}
	thumb_func_end sub_8110D58

	thumb_local_start
sub_8110D7C:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x82
	ldrb r2, [r5,r2]
	mov r3, #0x83
	ldrb r3, [r5,r3]
	cmp r0, r2
	bne loc_8110D94
	cmp r1, r3
	bne loc_8110D94
	b locret_8110DA2
loc_8110D94:
	mov r2, #0x82
	strb r0, [r5,r2]
	mov r2, #0x83
	strb r1, [r5,r2]
	mov r0, #1
	bl object_setCollisionRegion
locret_8110DA2:
	pop {r4-r7,pc}
off_8110DA4: .word byte_8110E0C
dword_8110DA8: .word 0x280000
dword_8110DAC: .word 0x180000
byte_8110DB0: .byte 0x0, 0x0, 0x80, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8110DC0: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8110E90+1
	.word sub_81097BA+1
	.word sub_8110714+1
	.word sub_811088A+1
	.word sub_81107A0+1
byte_8110DF4: .byte 0x0, 0xC0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x80, 0x2, 0x0, 0x0, 0x0, 0x3
	.byte 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x3, 0x0
byte_8110E0C: .byte 0x0, 0x0, 0x7, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0xA
	.byte 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0xA, 0x0
byte_8110E24: .byte 0x0, 0x10, 0x3, 0x20, 0x3, 0x30, 0x3, 0x41, 0x0, 0x11, 0x0, 0x12
byte_8110E30: .byte 0x28, 0x50, 0x82, 0x96, 0x64, 0x96, 0x0, 0x0
byte_8110E38: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8110E40: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8110E48: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8110E50: .byte 0x1E, 0x1B, 0x18, 0x15, 0x18, 0x12, 0x0, 0x0
byte_8110E58: .byte 0x1E, 0x18, 0x12, 0xC, 0x12, 0xC, 0x0, 0x0
byte_8110E60: .byte 0x3C, 0x36, 0x30, 0x2A, 0x30, 0x24, 0x0, 0x0
byte_8110E68: .byte 0x1E, 0x1B, 0x18, 0x15, 0x18, 0x12, 0x0, 0x0
byte_8110E70: .byte 0x1E, 0x1B, 0x18, 0x15, 0x18, 0x12
	thumb_func_end sub_8110D7C

	thumb_func_start sub_8110E76
sub_8110E76:
	push {lr}
	mov r0, #OBJECT_FLAGS_GUARD
	bl object_setFlag1 // (int a1) -> void
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	bl GetPositiveSignedRNG2
	mov r1, #3
	and r0, r1
	str r0, [r5,#oBattleObject_ExtraVars+8]
	pop {pc}
	thumb_func_end sub_8110E76

	thumb_local_start
sub_8110E90:
	push {r4,r6,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_81110F4 // =0xa000
	tst r0, r1
	bne locret_8110EA6
	ldr r1, off_8110EA8 // =off_8110EAC
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_8110EA6:
	pop {r4,r6,pc}
off_8110EA8: .word off_8110EAC
off_8110EAC: .word sub_8110EB8+1
	.word sub_8110EF8+1
	.word sub_8110F36+1
	thumb_func_end sub_8110E90

	thumb_local_start
sub_8110EB8:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	mov r0, #OBJECT_FLAGS_GUARD
	bl object_setFlag1 // (int a1) -> void
	ldr r1, off_8110ED0 // =off_8110ED4
	ldrb r0, [r6,#oAIState_Unk_02]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8110ED0: .word off_8110ED4
off_8110ED4: .word sub_8110ED8+1
	thumb_func_end sub_8110EB8

	thumb_local_start
sub_8110ED8:
	push {lr}
	bl sub_8110F8C
	tst r0, r0
	beq loc_8110EEC
	bl sub_8111030
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8110EF6
loc_8110EEC:
	mov r0, #0x50
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
locret_8110EF6:
	pop {pc}
	thumb_func_end sub_8110ED8

	thumb_local_start
sub_8110EF8:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	mov r0, #OBJECT_FLAGS_GUARD
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0x6c
	mov r1, #0x67
	mov r2, #0x6c
	bl sub_8109630
	cmp r0, #0
	bne loc_8110F2C
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_81110F8 // =byte_8110E40
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r0, off_81110FC // =byte_8110E48
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #0x74
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0xa
	bl object_setAttack0
loc_8110F2C:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	mov r0, #0
	strh r0, [r6,#oAIState_Unk_02]
	pop {pc}
	thumb_func_end sub_8110EF8

	thumb_local_start
sub_8110F36:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x78
	strb r0, [r5,r2]
	mov r2, #0x79
	strb r1, [r5,r2]
	bl object_reservePanel
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8111100 // =byte_8110E60
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0e]
	ldr r0, off_8111104 // =byte_8110E68
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_30]
	ldr r0, off_8111108 // =byte_8110E70
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_32]
	ldr r0, off_811110C // =byte_8110E50
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_34]
	ldr r0, off_8111110 // =byte_8110E58
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_36]
	ldr r0, off_8111114 // =byte_8110E30
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, off_8111118 // =byte_8110E24
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x70
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0xb
	bl object_setAttack0
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_8110F36

	thumb_local_start
sub_8110F8C:
	push {r4-r7,lr}
	bl sub_8110FA2
	tst r0, r0
	bne locret_8110FA0
	bl sub_8110FF4
	tst r0, r0
	bne locret_8110FA0
	b locret_8110FA0
locret_8110FA0:
	pop {r4-r7,pc}
	thumb_func_end sub_8110F8C

	thumb_local_start
sub_8110FA2:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	ldr r1, off_8110FC0 // =off_8110FC4
	lsl r0, r0, #2
	ldr r4, [r1,r0]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_811111C // =byte_8111020
	bl sub_81096FA
	bl sub_8015D80
	pop {r4-r7,pc}
	.word 0x0
off_8110FC0: .word off_8110FC4
off_8110FC4: .word byte_8110FD4
	.word byte_8110FDC
	.word byte_8110FE4
	.word byte_8110FEC
byte_8110FD4: .byte 0x0, 0xFF, 0x1, 0x0, 0xFF, 0x0, 0x7F, 0x0
byte_8110FDC: .byte 0x0, 0x1, 0x1, 0x0, 0xFF, 0x0, 0x7F, 0x0
byte_8110FE4: .byte 0x0, 0xFF, 0x0, 0x1, 0xFF, 0x0, 0x7F, 0x0
byte_8110FEC: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x7F, 0x0
	thumb_func_end sub_8110FA2

	thumb_local_start
sub_8110FF4:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_8111120 // =byte_8111020
	bl sub_81096FA
	ldr r4, off_8111010 // =byte_8111014
	bl sub_8015D80
	pop {r4-r7,pc}
	.word 0
	.byte 0, 0, 0, 0
off_8111010: .word byte_8111014
byte_8111014: .byte 0x0, 0xFF, 0x0, 0x1, 0xFF, 0x0, 0x1, 0x0, 0x7F, 0x0, 0x0, 0x0
byte_8111020: .byte 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8110FF4

	thumb_local_start
sub_8111030:
	push {lr}
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r1, off_8111124 // =byte_8110DF4
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldr r1, off_8111128 // =byte_8110E38
	ldrb r0, [r4,#oAIData_Version_16]
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r2, #0
	ldr r3, dword_811112C // =0xf880080
	str r2, [r7,#oAIAttackVars_Unk_34]
	str r3, [r7,#oAIAttackVars_Unk_38]
	mov r0, #0x74
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_2c]
	bl object_getFrontDirection // () -> int
	mov r2, r0
	mov r3, #0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_16]
	cmp r0, r1
	beq loc_811107A
	sub r0, r1, r0
	mul r0, r2
	cmp r0, #0
	bgt loc_8111076
	mov r3, #2
	b loc_811108E
loc_8111076:
	mov r3, #3
	b loc_811108E
loc_811107A:
	ldrb r0, [r5,#oBattleObject_PanelY]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	cmp r0, r1
	beq loc_811108E
	sub r0, r1, r0
	cmp r0, #0
	bgt loc_811108C
	mov r3, #0
	b loc_811108E
loc_811108C:
	mov r3, #1
loc_811108E:
	str r3, [r5,#oBattleObject_ExtraVars+8]
	mov r0, #0xc
	bl object_setAttack0
	bl sub_81107A0
	pop {pc}
	thumb_func_end sub_8111030

	thumb_local_start
sub_811109C:
	push {r4-r7,lr}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_81110C4 // =0x15
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
dword_81110C4: .word 0x15
	thumb_func_end sub_811109C

	thumb_local_start
sub_81110C8:
	push {r4-r7,lr}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_81110F0 // =0x14
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
dword_81110F0: .word 0x14
dword_81110F4: .word 0xA000
off_81110F8: .word byte_8110E40
off_81110FC: .word byte_8110E48
off_8111100: .word byte_8110E60
off_8111104: .word byte_8110E68
off_8111108: .word byte_8110E70
off_811110C: .word byte_8110E50
off_8111110: .word byte_8110E58
off_8111114: .word byte_8110E30
off_8111118: .word byte_8110E24
off_811111C: .word byte_8111020
off_8111120: .word byte_8111020
off_8111124: .word byte_8110DF4
off_8111128: .word byte_8110E38
dword_811112C: .word 0xF880080
byte_8111130: .byte 0x4, 0x13, 0x1, 0x0, 0x13, 0x0, 0x0, 0x1
byte_8111138: .byte 0x64, 0x0, 0x0, 0x8, 0xA, 0x0, 0x96, 0x0, 0x1, 0x8, 0x14, 0x0, 0xC8
	.byte 0x0, 0x2, 0x8, 0x1E, 0x0, 0xFA, 0x0, 0x3, 0x8, 0x28, 0x0, 0xAA, 0x0
	.byte 0x4, 0x8, 0x1E, 0x0, 0xE, 0x1, 0x5, 0x8, 0x28, 0x0
byte_811115C: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_81110C8

	thumb_local_start
sub_811121C:
	push {r4-r7,lr}
	ldr r1, off_811122C // =off_8111230
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811122C: .word off_8111230
off_8111230: .word sub_811123C+1
	.word sub_811128C+1
	.word sub_81097B4+1
	thumb_func_end sub_811121C

	thumb_local_start
sub_811123C:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_8111264
	mov r0, #0x18
	bl object_setCounterTime
	mov r0, #0x69
	ldrb r0, [r5,r0]
	ldr r1, off_8111284 // =off_8111288
	ldrb r0, [r1,r0]
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xb
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8111280
loc_8111264:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne locret_8111280
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
locret_8111280:
	pop {r4,pc}
	.balign 4, 0x00
off_8111284: .word off_8111288
off_8111288: .word 0x201
	thumb_func_end sub_811123C

	thumb_local_start
sub_811128C:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_81112AA
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_81112AA
	bl sub_81112DC
	mov r0, #0xb2
	bl sound_play // () -> void
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_81112AA:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81112D0
	mov r0, #0x69
	ldrb r0, [r5,r0]
	ldr r1, off_81112D4 // =off_81112D8
	ldrb r0, [r1,r0]
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81112D0:
	pop {r4,r6,pc}
	.balign 4, 0x00
off_81112D4: .word off_81112D8
off_81112D8: .word 0x300
	thumb_func_end sub_811128C

	thumb_local_start
sub_81112DC:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r1, r0
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	ldr r2, off_8111324 // =byte_8111328
	ldrb r3, [r4,#oAIData_Version_16]
	ldrb r4, [r2,r3]
	ldrb r2, [r7,#oAIAttackVars_Unk_0d]
	lsl r2, r2, #8
	orr r4, r0
	orr r4, r1
	orr r4, r2
	bl object_getFrontDirection // () -> int
	mov r1, #0x10
	mul r0, r1
	lsl r0, r0, #0x10
	ldr r1, [r5,#oBattleObject_X]
	add r1, r1, r0
	mov r2, #0x20
	lsl r2, r2, #0x10
	ldr r3, [r5,#oBattleObject_Z]
	add r3, r3, r2
	ldr r2, [r5,#oBattleObject_Y]
	bl sub_80D9CA4
	pop {r4-r7,pc}
off_8111324: .word byte_8111328
byte_8111328: .byte 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x0, 0x0
off_8111330: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8111384+1
	.word sub_81097B4+1
	.word sub_811121C+1
	.word sub_8109974+1
	.word sub_8109804+1
byte_8111364: .byte 0x12, 0xE, 0xA, 0x6, 0xC, 0xA, 0x0, 0x0
byte_811136C: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0
byte_8111374: .byte 0x1E, 0x32, 0x50, 0x64, 0x32, 0x78, 0x0, 0x0
byte_811137C: .byte 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0x0, 0x0
	thumb_func_end sub_81112DC

	thumb_local_start
sub_8111384:
	push {r4,r6,lr}
	mov r1, #0x69
	ldrb r0, [r5,r1]
	tst r0, r0
	beq loc_81113A6
	mov r1, #0x68
	ldrb r0, [r5,r1]
	tst r0, r0
	bne loc_81113A6
	mov r0, #1
	strb r0, [r5,r1]
	mov r0, #0x78
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	b locret_81113B0
loc_81113A6:
	ldr r1, off_81113B4 // =off_81113B8
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_81113B0:
	pop {r4,r6,pc}
	.balign 4, 0x00
off_81113B4: .word off_81113B8
off_81113B8: .word sub_81113C4+1
	.word sub_81113DE+1
	.word sub_8111438+1
	thumb_func_end sub_8111384

	thumb_local_start
sub_81113C4:
	push {lr}
	mov r0, #0x67
	ldrb r1, [r5,r0]
	cmp r1, #4
	blt loc_81113D8
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	b locret_81113DC
loc_81113D8:
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
locret_81113DC:
	pop {pc}
	thumb_func_end sub_81113C4

	thumb_local_start
sub_81113DE:
	push {lr}
	bl object_canMove
	beq loc_8111428
	mov r0, #0x60
	mov r1, #0x6d
	mov r2, #0x72
	bl sub_8109630
	cmp r0, #0
	bne loc_8111428
	ldrb r1, [r4,#oAIData_Version_16]
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_8111430 // =byte_8111374
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_8111434 // =byte_811137C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl sub_81116D2
	tst r0, r0
	beq loc_8111428
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0xa
	bl object_setAttack0
loc_8111428:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	.byte 0, 0
off_8111430: .word byte_8111374
off_8111434: .word byte_811137C
	thumb_func_end sub_81113DE

	thumb_local_start
sub_8111438:
	push {lr}
	mov r0, #0x67
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #4
	beq loc_8111452
	bl sub_81114C8
	tst r0, r0
	beq loc_81114B2
	ldr r0, off_81114B8 // =sub_81114C8+1
	b loc_811145C
loc_8111452:
	bl sub_8111674
	tst r0, r0
	beq loc_81114B2
	ldr r0, off_81114BC // =sub_8111674+1
loc_811145C:
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_81114C0 // =byte_811136C
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x15
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #0x68
	ldrb r0, [r5,r0]
	tst r0, r0
	beq loc_8111490
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_0f]
	b loc_8111498
loc_8111490:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_0f]
loc_8111498:
	ldr r0, off_81114C4 // =byte_8111364
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	bl sub_8109974
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_81114B6
loc_81114B2:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
locret_81114B6:
	pop {pc}
off_81114B8: .word sub_81114C8+1
off_81114BC: .word sub_8111674+1
off_81114C0: .word byte_811136C
off_81114C4: .word byte_8111364
	thumb_func_end sub_8111438

	thumb_local_start
sub_81114C8:
	push {r4-r7,lr}
	bl sub_81114EE
	tst r0, r0
	bne loc_81114E0
	bl sub_811152C
	tst r0, r0
	bne loc_81114E0
	bl sub_8111650
	b locret_81114EC
loc_81114E0:
	bl sub_81117DA
	mov r2, #0x65
	strb r0, [r5,r2]
	mov r2, #0x66
	strb r1, [r5,r2]
locret_81114EC:
	pop {r4-r7,pc}
	thumb_func_end sub_81114C8

	thumb_local_start
sub_81114EE:
	push {r4-r7,lr}
	ldr r0, off_8111520 // =byte_8111524
	mov r1, #0x64
	ldrb r1, [r5,r1]
	lsl r1, r1, #1
	ldrsb r2, [r0,r1]
	add r1, #1
	ldrsb r3, [r0,r1]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	add r0, r0, r2
	add r1, r1, r3
	ldr r3, off_81118D4 // =byte_8111740
	bl sub_81096FA
	mov r4, #1
	ldrb r6, [r5,#oBattleObject_Alliance]
	bl sub_8015E46
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0
off_8111520: .word byte_8111524
byte_8111524: .byte 0x0, 0xFF, 0x1, 0x0, 0x0, 0x1, 0xFF, 0x0
	thumb_func_end sub_81114EE

	thumb_local_start
sub_811152C:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelY]
	cmp r0, #1
	beq loc_8111540
	cmp r0, #2
	beq loc_8111578
	cmp r0, #3
	beq loc_81115E4
	mov r0, #0
	b locret_811161A
loc_8111540:
	ldrb r0, [r5,#oBattleObject_PanelY]
	add r0, #1
	bl sub_810971A
	tst r0, r0
	bne loc_8111564
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	add r1, #1
	ldr r3, off_81118D8 // =byte_8111740
	bl sub_81096FA
	mov r4, #1
	ldrb r6, [r5,#oBattleObject_Alliance]
	bl sub_8015E46
	tst r0, r0
	bne locret_811161A
loc_8111564:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81118DC // =byte_8111740
	bl sub_81096FA
	ldr r4, off_8111620 // =off_8111624
	ldr r4, [r4,#0x4] // (off_8111628 - 0x8111624)
	bl sub_8015D80
	b locret_811161A
loc_8111578:
	ldrb r0, [r5,#oBattleObject_PanelY]
	sub r0, #1
	bl sub_810971A
	bne loc_81115A0
	ldrb r0, [r5,#oBattleObject_PanelY]
	add r0, #1
	bl sub_810971A
	bne loc_81115B8
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81118E0 // =byte_8111740
	bl sub_81096FA
	ldr r4, off_8111620 // =off_8111624
	ldr r4, [r4]
	bl sub_8015D80
	b locret_811161A
loc_81115A0:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	add r1, #1
	ldr r3, off_81118E4 // =byte_8111740
	bl sub_81096FA
	mov r4, #1
	ldrb r6, [r5,#oBattleObject_Alliance]
	bl sub_8015E46
	beq loc_81115D0
	b locret_811161A
loc_81115B8:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	sub r1, #1
	ldr r3, off_81118E8 // =byte_8111740
	bl sub_81096FA
	mov r4, #1
	ldrb r6, [r5,#oBattleObject_Alliance]
	bl sub_8015E46
	beq loc_81115D0
	b locret_811161A
loc_81115D0:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81118EC // =byte_8111740
	bl sub_81096FA
	ldr r4, off_8111620 // =off_8111624
	ldr r4, [r4,#0x4] // (off_8111628 - 0x8111624)
	bl sub_8015D80
	b locret_811161A
loc_81115E4:
	ldrb r0, [r5,#oBattleObject_PanelY]
	sub r0, #1
	bl sub_810971A
	tst r0, r0
	bne loc_8111608
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	sub r1, #1
	ldr r3, off_81118F0 // =byte_8111740
	bl sub_81096FA
	mov r4, #1
	ldrb r6, [r5,#oBattleObject_Alliance]
	bl sub_8015E46
	tst r0, r0
	bne locret_811161A
loc_8111608:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81118F4 // =byte_8111740
	bl sub_81096FA
	ldr r4, off_8111620 // =off_8111624
	ldr r4, [r4,#0x4] // (off_8111628 - 0x8111624)
	bl sub_8015D80
locret_811161A:
	pop {r4-r7,pc}
	.word 0x0
off_8111620: .word off_8111624
off_8111624: .word byte_8111630
off_8111628: .word byte_8111640
	.word 0x0
byte_8111630: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
byte_8111640: .byte 0xFF, 0x0, 0x1, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_811152C

	thumb_local_start
sub_8111650:
	push {r4-r7,lr}
	bl sub_8015C48
	thumb_func_end sub_8111650

	tst r0, r0
	beq locret_8111672
	mov r2, #0x65
	strb r0, [r5,r2]
	mov r2, #0x66
	strb r1, [r5,r2]
	push {r0,r1}
	bl GetRNG2 // () -> int
	mov r1, #3
	and r0, r1
	mov r1, #0x64
	strb r0, [r5,r1]
	pop {r0,r1}
locret_8111672:
	pop {r4-r7,pc}
	thumb_local_start
sub_8111674:
	push {r4-r7,lr}
	push {r5}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #5
	mul r0, r1
	add r0, #1
	mov r1, #2
	ldr r3, off_81118F8 // =byte_8111740
	bl sub_81096FA
	mov r4, #0xf
	ldrb r6, [r5,#oBattleObject_Alliance]
	pop {r5}
	bl sub_8111750
	pop {r5}
	tst r0, r0
	beq loc_81116C4
	mov r2, #0x65
	strb r0, [r5,r2]
	mov r2, #0x66
	strb r1, [r5,r2]
	push {r0,r1}
	bl GetRNG2 // () -> int
	mov r1, #3
	and r0, r1
	mov r1, #0x64
	strb r0, [r5,r1]
	pop {r0,r1}
loc_81116C4:
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	thumb_func_end sub_8111674

	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_local_start
sub_81116D2:
	push {r4-r7,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_81118FC // =0xa000
	tst r0, r1
	beq loc_81116E4
	bl sub_8111726
	b locret_81116F2
loc_81116E4:
	ldr r0, off_8111700 // =off_8111704
	mov r1, #0x69
	ldrb r1, [r5,r1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
locret_81116F2:
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_8111700: .word off_8111704
off_8111704: .word sub_811170C+1
	.word sub_8111726+1
	thumb_func_end sub_81116D2

	thumb_local_start
sub_811170C:
	push {r4-r7,lr}
	bl object_getFrontDirection // () -> int
	mov r1, #3
	mul r1, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	tst r0, r0
	beq locret_8111724
	mov r2, #0
	strb r2, [r7,#oAIAttackVars_Unk_0d]
locret_8111724:
	pop {r4-r7,pc}
	thumb_func_end sub_811170C

	thumb_local_start
sub_8111726:
	push {r4-r7,lr}
	ldr r3, off_8111900 // =byte_8111740
	bl sub_81096FA
	bl sub_8015C94
	tst r0, r0
	beq locret_811173A
	mov r2, #1
	strb r2, [r7,#oAIAttackVars_Unk_0d]
locret_811173A:
	pop {r4-r7,pc}
	.word 0x0
byte_8111740: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8111726

	thumb_local_start
sub_8111750:
	push {r4-r7,lr}
	ldr r7, off_8111760 // =off_8019B78
	lsl r4, r4, #2
	ldr r4, [r7,r4]
	bl sub_8111764
	pop {r4-r7,pc}
	.byte 0, 0
off_8111760: .word off_8019B78
	thumb_func_end sub_8111750

	thumb_local_start
sub_8111764:
	push {r4-r7,lr}
	sub sp, sp, #0x38
	str r0, [sp,#0x1c]
	str r1, [sp,#0x20]
	str r2, [sp,#0x24]
	str r3, [sp,#0x28]
	mov r0, r6
	bl object_getAllianceDirection
	str r0, [sp,#0x2c]
	mov r6, #0
loc_811177A:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_81117BC
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0x2c]
	mul r0, r2
	ldr r2, [sp,#0x1c]
	add r0, r0, r2
	str r0, [sp,#0x30]
	ldr r2, [sp,#0x20]
	add r1, r1, r2
	str r1, [sp,#0x34]
	ldr r2, [sp,#0x24]
	ldr r3, [sp,#0x28]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_81117B8
	ldr r0, [sp,#0x34]
	ldrb r1, [r5,#0x13]
	cmp r0, r1
	beq loc_81117B8
	ldr r0, [sp,#0x30]
	ldr r1, [sp,#0x34]
	lsl r1, r1, #4
	orr r0, r1
	add r1, sp, #0
	strb r0, [r1,r6]
	add r6, #1
loc_81117B8:
	add r4, #2
	b loc_811177A
loc_81117BC:
	mov r2, r6
	mov r0, r6
	beq loc_81117D6
	bl GetPositiveSignedRNG2
	mov r1, r6
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, r6
loc_81117D6:
	add sp, sp, #0x38
	pop {r4-r7,pc}
	thumb_func_end sub_8111764

	thumb_local_start
sub_81117DA:
	push {r4-r7,lr}
	push {r0,r1}
	mov r3, #0x65
	ldrb r2, [r5,r3]
	mov r3, #0x66
	ldrb r3, [r5,r3]
	sub r0, r0, r2
	sub r1, r1, r3
	mov r2, #0x64
	cmp r0, #0
	beq loc_8111800
	cmp r0, #1
	beq loc_81117FA
	mov r0, #3
	strb r0, [r5,r2]
	b loc_8111812
loc_81117FA:
	mov r0, #1
	strb r0, [r5,r2]
	b loc_8111812
loc_8111800:
	cmp r1, #0
	beq loc_8111812
	cmp r1, #1
	beq loc_811180E
	mov r0, #0
	strb r0, [r5,r2]
	b loc_8111812
loc_811180E:
	mov r0, #2
	strb r0, [r5,r2]
loc_8111812:
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_81117DA

	thumb_func_start sub_8111816
sub_8111816:
	push {r4,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	bl GetRNG2 // () -> int
	mov r1, #3
	and r0, r1
	mov r1, #0x64
	strb r0, [r5,r1]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x65
	strb r0, [r5,r2]
	mov r2, #0x66
	strb r1, [r5,r2]
	mov r0, #0x67
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0
	mov r1, #0x68
	strb r0, [r5,r1]
	mov r1, #0x69
	strb r0, [r5,r1]
	pop {r4,pc}
	thumb_func_end sub_8111816

	thumb_func_start sub_8111846
sub_8111846:
	push {r4,lr}
	ldrh r0, [r5,#oBattleObject_HP]
	tst r0, r0
	beq locret_81118CC
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_ObjectFlags1]
	ldr r1, dword_8111904 // =0x80000000
	tst r0, r1
	bne locret_81118CC
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r1, [r0,#oCollisionData_FlagsFromCollision]
	tst r1, r1
	beq locret_81118CC
	ldr r2, dword_81118D0 // =0xa00
	tst r1, r2
	beq locret_81118CC
	mov r2, #0x69
	ldrb r1, [r5,r2]
	tst r1, r1
	bne locret_81118CC
	ldrb r1, [r0,#oCollisionData_HitModifierFinal]
	mov r2, #0x14
	tst r1, r2
	bne loc_811187A
	mov r1, #0
	b loc_811187C
loc_811187A:
	mov r1, #1
loc_811187C:
	mov r2, #0
	bl sub_80BCB12
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #0xc
	bl object_clearFlag2
	mov r0, #0
	strb r0, [r5,#oBattleObject_Unk_1f]
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldr r0, dword_8111908 // =0x501040
	bl object_clearFlag // (int bitfield) -> void
	bl sub_801171C
	ldr r0, [r5,#oBattleObject_Unk_5c]
	cmp r0, #0
	beq loc_81118C2
	mov r0, #0
	str r0, [r5,#oBattleObject_Unk_5c]
	ldr r0, [r5,#oBattleObject_Unk_5c]
	tst r0, r0
	bne loc_81118C2
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	str r0, [r5,#oBattleObject_Unk_5c]
loc_81118C2:
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #1
	mov r1, #0x69
	strb r0, [r5,r1]
locret_81118CC:
	pop {r4,pc}
	.byte 0, 0
dword_81118D0: .word 0xA00
off_81118D4: .word byte_8111740
off_81118D8: .word byte_8111740
off_81118DC: .word byte_8111740
off_81118E0: .word byte_8111740
off_81118E4: .word byte_8111740
off_81118E8: .word byte_8111740
off_81118EC: .word byte_8111740
off_81118F0: .word byte_8111740
off_81118F4: .word byte_8111740
off_81118F8: .word byte_8111740
dword_81118FC: .word 0xA000
off_8111900: .word byte_8111740
dword_8111904: .word 0x80000000
dword_8111908: .word 0x501040
byte_811190C: .byte 0x4, 0x14, 0x3, 0x0, 0x14, 0x0, 0x0, 0x1
byte_8111914: .byte 0x8C, 0x40, 0x0, 0x8, 0x14, 0x0, 0xB4, 0x40, 0x1, 0x8, 0x28
	.byte 0x0, 0xF0, 0x40, 0x2, 0x8, 0x3C, 0x0, 0xE, 0x41, 0x3, 0x8
	.byte 0x50, 0x0, 0xB4, 0x40, 0x4, 0x8, 0x3C, 0x0, 0xE, 0x41, 0x5
	.byte 0x8, 0x64, 0x0
byte_8111938: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xA3, 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_8111846

	thumb_local_start
sub_8111A00:
	push {lr}
	ldr r1, off_8111A10 // =off_8111A14
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_8111A10: .word off_8111A14
off_8111A14: .word sub_8111A28+1
	.word sub_8111A72+1
	.word sub_8111A8C+1
	.word sub_8111AEC+1
	.word sub_81097DC+1
	thumb_func_end sub_8111A00

	thumb_local_start
sub_8111A28:
	push {r4,r6,r7,lr}
	bl object_canMove
	beq loc_8111A68
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	ldr r2, [r7,#oAIAttackVars_Unk_34]
	ldr r3, [r7,#oAIAttackVars_Unk_38]
	bl object_checkPanelParameters
	cmp r0, #0
	beq loc_8111A68
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_8111B06
	bl sub_8111A72
	b locret_8111A70
loc_8111A68:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_exitAttackState
locret_8111A70:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8111A28

	thumb_local_start
sub_8111A72:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8111A8A
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_8111A8C
locret_8111A8A:
	pop {pc}
	thumb_func_end sub_8111A72

	thumb_local_start
sub_8111A8C:
	push {lr}
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_YVelocity]
	ldr r0, [r5,#oBattleObject_Y]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	ldrh r1, [r7,#oAIAttackVars_Unk_12]
	cmp r0, r1
	bne loc_8111AAE
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
loc_8111AAE:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #4
	bne loc_8111AB8
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
loc_8111AB8:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8111AEA
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_setCollisionPanelsToCurrent
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_CURRENTLY_MOVING_1_BIT
	bl object_setFlag1 // (int a1) -> void
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8111AEA:
	pop {pc}
	thumb_func_end sub_8111A8C

	thumb_local_start
sub_8111AEC:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8111B04
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8111B04:
	pop {pc}
	thumb_func_end sub_8111AEC

	thumb_local_start
sub_8111B06:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_XVelocity]
	str r0, [r5,#oBattleObject_YVelocity]
	mov r1, #0x10
	strh r1, [r7,#oAIAttackVars_Unk_10]
	lsr r0, r1, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	cmp r1, #0
	beq locret_8111B48
	ldrb r0, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r5,#oBattleObject_PanelY]
	sub r0, r0, r2
	beq loc_8111B30
	push {r0}
	mov r0, #0x18
	lsl r0, r0, #0x10
	svc 6
	pop {r1}
	mul r0, r1
	str r0, [r5,#oBattleObject_YVelocity]
loc_8111B30:
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r2, [r5,#oBattleObject_PanelX]
	sub r0, r0, r2
	beq locret_8111B48
	push {r0}
	mov r0, #0x28
	lsl r0, r0, #0x10
	mov r1, #0x10
	svc 6
	pop {r1}
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
locret_8111B48:
	pop {pc}
	thumb_func_end sub_8111B06

	thumb_local_start
sub_8111B4A:
	push {lr}
	ldr r1, off_8111B58 // =off_8111B5C
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8111B58: .word off_8111B5C
off_8111B5C: .word sub_8111B70+1
	.word sub_8111B88+1
	.word sub_8111BB2+1
	.word sub_8111BC8+1
	.word sub_81097BA+1
	thumb_func_end sub_8111B4A

	thumb_local_start
sub_8111B70:
	push {lr}
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_UNK_BIT_22_BIT
	bl object_setFlag1 // (int a1) -> void
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {pc}
	thumb_func_end sub_8111B70

	thumb_local_start
sub_8111B88:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	cmp r0, #0x11
	bne loc_8111B96
	mov r0, #0x14
	bl object_setCounterTime
loc_8111B96:
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	bge locret_8111BB0
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	bl sub_8111BDE
	mov r0, #0x81
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8111BB0:
	pop {pc}
	thumb_func_end sub_8111B88

	thumb_local_start
sub_8111BB2:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8111BC6
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8111BC6:
	pop {pc}
	thumb_func_end sub_8111BB2

	thumb_local_start
sub_8111BC8:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8111BDC
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8111BDC:
	pop {pc}
	thumb_func_end sub_8111BC8

	thumb_local_start
sub_8111BDE:
	push {r4,r6,lr}
	mov r4, r0
	mov r6, #0
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_0c]
loc_8111BE8:
	mov r0, r6
	bl sub_8111BFE
	cmp r0, #0
	beq loc_8111BF6
	sub r4, #1
	beq locret_8111BFC
loc_8111BF6:
	add r6, #1
	cmp r6, #5
	blt loc_8111BE8
locret_8111BFC:
	pop {r4,r6,pc}
	thumb_func_end sub_8111BDE

	thumb_local_start
sub_8111BFE:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x18
	lsl r0, r0, #2
	ldr r1, off_8111C70 // =off_8111C74
	ldr r6, [r1,r0]
	mov r4, sp
	bl object_getFlag // () -> int
	ldr r1, dword_8111D90 // =0xa000
	tst r0, r1
	beq loc_8111C1A
	bl sub_8111D28
	b loc_8111C1E
loc_8111C1A:
	mov lr, pc
	bx r6
loc_8111C1E:
	cmp r0, #0
	beq loc_8111C62
	mov r4, r0
	bl GetPositiveSignedRNG2
	mov r1, r4
	svc 6
	mov r0, sp
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	lsl r4, r1, #8
	orr r4, r0
	lsl r4, r4, #8
	add r4, #0x28
	lsl r4, r4, #8
	ldrb r0, [r7,#oAIAttackVars_Unk_10]
	orr r4, r0
	bl object_getFrontDirection // () -> int
	ldr r6, dword_8111D94 // =0x30000
	mul r6, r0
	ldr r1, [r5,#oBattleObject_X]
	add r1, r1, r6
	ldr r2, [r5,#oBattleObject_Y]
	ldr r3, [r5,#oBattleObject_Z]
	ldr r6, dword_8111D98 // =0xc0000
	add r3, r3, r6
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldr r7, [r7,#oAIAttackVars_Unk_28]
	bl sub_80C579E
	mov r0, #1
loc_8111C62:
	add sp, sp, #0x18
	pop {r4,r6,r7,pc}
	.word 0, 0
	.byte 0, 0
off_8111C70: .word off_8111C74
off_8111C74: .word sub_8111C88+1
	.word sub_8111CBA+1
	.word sub_8111CE0+1
	.word sub_8111D06+1
	.word sub_8111D46+1
	thumb_func_end sub_8111BFE

	thumb_local_start
sub_8111C88:
	push {r6,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	mov r6, r0
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	ldr r3, off_8111D9C // =off_8111D70
	bl sub_81096FA
	bl object_checkPanelParameters
	cmp r0, #0
	beq locret_8111CB8
	ldrb r0, [r6,#0x12]
	ldrb r1, [r6,#0x13]
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r4]
	ldrb r0, [r6,#0x12]
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #1
locret_8111CB8:
	pop {r6,pc}
	thumb_func_end sub_8111C88

	thumb_local_start
sub_8111CBA:
	push {r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r1, #5
	mul r0, r1
	add r0, #1
	ldrb r1, [r7,#oAIAttackVars_Unk_0c]
	cmp r0, r1
	bne loc_8111CD2
	mov r0, #0
	b locret_8111CDE
loc_8111CD2:
	ldr r3, off_8111DA0 // =off_8111D70
	bl sub_81096FA
	mov r7, r4
	bl object_getPanelsInColumnFiltered
locret_8111CDE:
	pop {r7,pc}
	thumb_func_end sub_8111CBA

	thumb_local_start
sub_8111CE0:
	push {r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	mov r1, #3
	mul r0, r1
	add r0, #2
	ldrb r1, [r7,#oAIAttackVars_Unk_0c]
	cmp r0, r1
	bne loc_8111CF8
	mov r0, #0
	b locret_8111D04
loc_8111CF8:
	ldr r3, off_8111DA4 // =off_8111D70
	bl sub_81096FA
	mov r7, r4
	bl object_getPanelsInColumnFiltered
locret_8111D04:
	pop {r7,pc}
	thumb_func_end sub_8111CE0

	thumb_local_start
sub_8111D06:
	push {r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	add r0, #3
	mov r1, #2
	ldr r3, off_8111DA8 // =off_8111D70
	bl sub_81096FA
	mov r7, r4
	ldrb r6, [r5,#oBattleObject_Alliance]
	mov r4, #1
	eor r6, r4
	mov r4, #0x21
	bl object_getPanelRegion
	pop {r7,pc}
	thumb_func_end sub_8111D06

	thumb_local_start
sub_8111D28:
	push {r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #5
	mul r0, r1
	add r0, #1
	mov r1, #2
	ldr r3, off_8111DAC // =off_8111D70
	bl sub_81096FA
	mov r7, r4
	ldrb r6, [r5,#oBattleObject_Alliance]
	mov r4, #0x23
	bl object_getPanelRegion
	pop {r7,pc}
	thumb_func_end sub_8111D28

	thumb_local_start
sub_8111D46:
	push {r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #5
	mul r0, r1
	add r0, #1
	mov r1, #2
	ldr r3, off_8111DB0 // =byte_8111D80
	bl sub_81096FA
	mov r7, r4
	ldrb r6, [r5,#oBattleObject_Alliance]
	mov r4, #0x23
	bl object_getPanelRegion
	pop {r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_8111D70: .word 0x30
	.byte 0x0, 0x0, 0x80, 0x3, 0x10, 0x0, 0x0, 0x0, 0x20, 0x0, 0x80, 0x3
byte_8111D80: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x3, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0
	.byte 0x80, 0x3
dword_8111D90: .word 0xA000
dword_8111D94: .word 0x30000
dword_8111D98: .word 0xC0000
off_8111D9C: .word off_8111D70
off_8111DA0: .word off_8111D70
off_8111DA4: .word off_8111D70
off_8111DA8: .word off_8111D70
off_8111DAC: .word off_8111D70
off_8111DB0: .word byte_8111D80
	.word 0, 0
	.byte 0, 0, 0, 0
off_8111DC0: .word sub_8016380+1
	.word sub_8111DF0+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8111DFC+1
	.word sub_81097BA+1
	.word sub_8111A00+1
	.word sub_8111B4A+1
	thumb_func_end sub_8111D46

	thumb_local_start
sub_8111DF0:
	push {lr}
	mov r0, #1
	strh r0, [r6,#oAIState_Unk_04]
	bl sub_80165B8
	pop {pc}
	thumb_func_end sub_8111DF0

	thumb_local_start
sub_8111DFC:
	push {r4,r6,lr}
	ldr r1, off_8111E0C // =off_8111E10
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8111E0C: .word off_8111E10
off_8111E10: .word sub_8111E14+1
	thumb_func_end sub_8111DFC

	thumb_local_start
sub_8111E14:
	push {lr}
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #1
	bne loc_8111E20
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
loc_8111E20:
	bl sub_8111FAE
	cmp r0, #0
	bne locret_8111ED4
	ldrb r0, [r6,#oAIState_Unk_04]
	cmp r0, #0
	bne loc_8111E8C
	bl sub_8111F70
	cmp r0, #0
	beq loc_8111E8C
	mov r0, #0x60
	mov r1, #0x73
	mov r2, #0x78
	bl sub_8109630
	cmp r0, #2
	bge loc_8111E8C
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldrb r2, [r4,#oAIData_Version_16]
	ldr r1, off_8111EEC // =byte_8111F02
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r1, off_8111EE4 // =byte_8111EF6
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r1, off_8111EE8 // =byte_8111EFC
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #0x60
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #2
	ldrb r1, [r4,#oAIData_Version_16]
	cmp r1, #2
	blt loc_8111E6C
	mov r0, #3
loc_8111E6C:
	strb r0, [r7,#oAIAttackVars_Unk_03]
	bl object_getFlag // () -> int
	ldr r1, dword_8111FE0 // =0xa000
	tst r0, r1
	beq loc_8111E7C
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
loc_8111E7C:
	mov r0, #0xb
	bl object_setAttack0
	mov r0, #1
	strb r0, [r6,#oAIState_Unk_04]
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	b locret_8111ED4
loc_8111E8C:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_04]
	bl sub_8111F08
	cmp r0, #0
	bne loc_8111E9C
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
loc_8111E9C:
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	ldr r3, off_8111FE4 // =byte_8111F60
	bl sub_81096FA
	str r2, [r7,#oAIAttackVars_Unk_34]
	str r3, [r7,#oAIAttackVars_Unk_38]
	ldrb r0, [r4,#oAIData_Version_16]
	ldr r1, off_8111EE0 // =byte_8111EF0
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	bl object_getFlag // () -> int
	ldr r1, dword_8111FE8 // =0x8000
	tst r0, r1
	beq loc_8111EC2
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	add r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_18]
loc_8111EC2:
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_8111FEC // =sub_8111F94+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0xa
	bl object_setAttack0
	bl sub_8111A00
locret_8111ED4:
	pop {pc}
	.word 0, 0
	.byte 0, 0
off_8111EE0: .word byte_8111EF0
off_8111EE4: .word byte_8111EF6
off_8111EE8: .word byte_8111EFC
off_8111EEC: .word byte_8111F02
byte_8111EF0: .byte 0x1, 0x4, 0x3, 0x2, 0x3, 0x1
byte_8111EF6: .byte 0x19, 0x19, 0x19, 0x19, 0x19, 0x19
byte_8111EFC: .byte 0x28, 0x23, 0x1E, 0x19, 0x1E, 0x14
byte_8111F02: .byte 0x1E, 0x3C, 0x64, 0x78, 0x46, 0x82
	thumb_func_end sub_8111E14

	thumb_local_start
sub_8111F08:
	push {r4,r7,lr}
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldrb r7, [r6,#oAIState_Unk_05]
	cmp r7, #0
	bne loc_8111F22
	mov r0, r4
	bl sub_8111F38
	cmp r0, #0
	bne loc_8111F34
	mov r7, #1
loc_8111F22:
	neg r0, r4
	bl sub_8111F38
	cmp r0, #0
	bne loc_8111F34
	mov r7, #0
	mov r0, r4
	bl sub_8111F38
loc_8111F34:
	strb r7, [r6,#oAIState_Unk_05]
	pop {r4,r7,pc}
	thumb_func_end sub_8111F08

	thumb_local_start
sub_8111F38:
	push {lr}
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	push {r0,r1}
	ldr r3, off_8111FF0 // =byte_8111F60
	bl sub_81096FA
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne locret_8111F54
	mov r0, #0
locret_8111F54:
	pop {pc}
	.word 0, 0
	.byte 0, 0
byte_8111F60: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8111F38

	thumb_local_start
sub_8111F70:
	push {lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	mov r1, #0x20
	and r1, r0
	mov r0, #1
	mov r3, #0x20
	ldrb r2, [r5,#oBattleObject_Alliance]
	mul r2, r3
	cmp r1, r2
	bne locret_8111F92
	mov r0, #0
locret_8111F92:
	pop {pc}
	thumb_func_end sub_8111F70

	thumb_local_start
sub_8111F94:
	push {lr}
	mov r0, #0x60
	mov r1, #0x73
	mov r2, #0x78
	bl sub_8109630
	cmp r0, #2
	bge loc_8111FA8
	mov r0, #0
	b locret_8111FAC
loc_8111FA8:
	bl sub_8111F70
locret_8111FAC:
	pop {pc}
	thumb_func_end sub_8111F94

	thumb_local_start
sub_8111FAE:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_8111FDA
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	bl sub_800A704
	ldr r1, off_8111FF4 // =0x12c
	cmp r0, r1
	blt loc_8111FDA
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_8111FDA:
	mov r0, r6
	pop {r4,r6,pc}
	.byte 0, 0
dword_8111FE0: .word 0xA000
off_8111FE4: .word byte_8111F60
dword_8111FE8: .word 0x8000
off_8111FEC: .word sub_8111F94+1
off_8111FF0: .word byte_8111F60
off_8111FF4: .word 0x12C
byte_8111FF8: .byte 0x4, 0x15, 0x1, 0x0, 0x15, 0x0, 0x0, 0x1
byte_8112000: .byte 0x64, 0x40, 0x0, 0x8, 0x14, 0x0, 0xA0, 0x40, 0x1, 0x8, 0x28
	.byte 0x0, 0xD2, 0x40, 0x2, 0x8, 0x50, 0x0, 0xF0, 0x40, 0x3, 0x8
	.byte 0x64, 0x0, 0xB4, 0x40, 0x4, 0x8, 0x50, 0x0, 0xF0, 0x40, 0x5
	.byte 0x8, 0x78, 0x0
byte_8112024: .byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x34, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34
	.byte 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3, 0x34, 0xA3
	.byte 0x34, 0xA3, 0x34
	thumb_func_end sub_8111FAE

	thumb_local_start
sub_81120E4:
	push {lr}
	ldr r1, off_81120F4 // =off_81120F8
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_81120F4: .word off_81120F8
off_81120F8: .word sub_8112104+1
	.word sub_811219C+1
	.word sub_81097BA+1
	thumb_func_end sub_81120E4

	thumb_local_start
sub_8112104:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8112138
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	ldrb r0, [r5,#oBattleObject_PanelY]
	ldrb r1, [r7,#oAIAttackVars_Unk_0c]
	cmp r1, #0
	beq loc_8112130
	cmp r0, #3
	beq loc_8112130
	cmp r0, #1
	bne loc_8112124
	mov r0, #2
	b loc_8112130
loc_8112124:
	mov r0, #2
	ldr r1, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r1,#0x13]
	cmp r1, #2
	ble loc_8112130
	mov r0, #3
loc_8112130:
	strb r0, [r7,#oAIAttackVars_Unk_0f]
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	b loc_811214C
loc_8112138:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	cmp r0, #2
	bne loc_811214C
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_811214C
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
loc_811214C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne loc_8112180
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	cmp r0, #0
	beq loc_811216A
	mov r2, #0x18
loc_811216A:
	ldrb r0, [r5,#oBattleObject_PanelX]
	add r0, r0, r4
	ldrb r1, [r7,#oAIAttackVars_Unk_0f]
loc_8112170:
	push {r0-r3}
	bl sub_8109660
	pop {r0-r3}
	add r0, r0, r4
	beq loc_8112180
	cmp r0, #6
	ble loc_8112170
loc_8112180:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_811219A
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_811219A:
	pop {r4,pc}
	thumb_func_end sub_8112104

	thumb_local_start
sub_811219C:
	push {r4,r6,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	add r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0x19
	bne loc_81121DA
	push {r7}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r7,#oAIAttackVars_Unk_0f]
	mov r2, #4
	mov r3, #8
	lsl r3, r3, #0x10
	ldr r4, [r7,#oAIAttackVars_Unk_0c]
	lsl r4, r4, #8
	lsr r4, r4, #8
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldr r7, [r7,#oAIAttackVars_Unk_28]
	bl sub_80D1442
	pop {r7}
	mov r0, #0xa7
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0xa8
	add r0, #0xff
	bl sound_play // () -> void
loc_81121DA:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81121EC
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81121EC:
	pop {r4,r6,pc}
	.byte 0, 0
off_81121F0: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8112278+1
	.word sub_81097B4+1
	.word sub_81120E4+1
	.word sub_8109952+1
	.word sub_8109804+1
byte_8112224: .byte 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0
	.byte 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0
byte_811223C: .byte 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x5, 0x0, 0x0
	.byte 0x0, 0x3, 0x0, 0x0, 0x0, 0x6, 0x0
byte_8112254: .byte 0x14, 0x46, 0x64, 0x78, 0x5A, 0x8C
byte_811225A: .byte 0x3, 0x6, 0xA, 0xA, 0xA, 0xA
byte_8112260: .byte 0x30, 0x2A, 0x24, 0x1E, 0x1E, 0x18
byte_8112266: .byte 0x18, 0x18, 0x12, 0x12, 0x18, 0x12
byte_811226C: .byte 0x12, 0xC, 0x6, 0x6, 0xC, 0x6
byte_8112272: .byte 0x12, 0x12, 0x12, 0x12, 0x12, 0x12
	thumb_func_end sub_811219C

	thumb_local_start
sub_8112278:
	push {r4,r6,lr}
	bl sub_8112600
	cmp r0, #0
	bne locret_811228C
	ldr r1, off_8112290 // =off_8112294
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_811228C:
	pop {r4,r6,pc}
	.byte 0, 0
off_8112290: .word off_8112294
off_8112294: .word sub_81122A0+1
	.word sub_8112340+1
	.word sub_811239A+1
	thumb_func_end sub_8112278

	thumb_local_start
sub_81122A0:
	push {lr}
	bl object_getFlag // () -> int
	ldr r1, dword_8112684 // =0xa000
	tst r0, r1
	beq loc_81122B8
	ldr r1, off_8112688 // =byte_811223C
	str r1, [r6,#oAIState_Unk_0c]
	mov r0, #1
	strb r0, [r6,#oAIState_Unk_04]
	mov r0, #0x3c
	b loc_81122D2
loc_81122B8:
	bl sub_81123EC
	cmp r0, #0
	bne loc_81122E8
	ldr r1, off_811268C // =byte_8112224
	str r1, [r6,#oAIState_Unk_0c]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_04]
	bl sub_8112648
	ldr r1, off_8112690 // =byte_8112260
	ldrb r0, [r4,#oAIData_Version_16]
	ldrb r0, [r1,r0]
loc_81122D2:
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	ldrb r0, [r5,#oBattleObject_PanelX]
	str r0, [r5,#oBattleObject_ExtraVars]
	ldrb r1, [r5,#oBattleObject_PanelY]
	str r1, [r5,#oBattleObject_ExtraVars+4]
	b loc_811233A
loc_81122E8:
	bl sub_8112630
	bl sub_81124D4
	cmp r0, #0
	bne loc_8112302
	mov r0, #0x12
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_8112694 // =sub_81123EC+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	bl sub_8112666
	b loc_811233A
loc_8112302:
	ldrh r0, [r6,#oAIState_Unk_08]
	add r0, #1
	strh r0, [r6,#oAIState_Unk_08]
	cmp r0, #0x3c
	blt locret_811233E
	mov r0, #0x6c
	mov r1, #0x79
	mov r2, #0x7e
	bl sub_8109630
	cmp r0, #0
	bne locret_811233E
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	mov r0, #5
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_8112698 // =sub_81124F2+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	bl sub_8112666
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
loc_811233A:
	mov r0, #0
	strh r0, [r6,#oAIState_Unk_08]
locret_811233E:
	pop {pc}
	thumb_func_end sub_81122A0

	thumb_local_start
sub_8112340:
	push {lr}
	ldrb r0, [r6,#oAIState_Unk_04]
	sub r0, #1
	strb r0, [r6,#oAIState_Unk_04]
	bmi loc_8112392
	bl sub_811252C
	cmp r0, #0
	beq loc_8112392
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	push {r4}
	ldrb r4, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r4, r2
	ldrb r2, [r5,#oBattleObject_PanelX]
	str r2, [r5,#oBattleObject_ExtraVars]
	ldrb r3, [r5,#oBattleObject_PanelY]
	str r3, [r5,#oBattleObject_ExtraVars+4]
	bl sub_800E994
	str r0, [r5,#oBattleObject_ExtraVars+8]
	pop {r4}
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r1, [r6,#oAIState_Unk_0c]
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldr r3, off_811269C // =byte_81125E0
	bl sub_81096FA
	str r2, [r7,#oAIAttackVars_Unk_34]
	str r3, [r7,#oAIAttackVars_Unk_38]
	mov r0, #0xc
	bl object_setAttack0
	bl sub_8109804
	b locret_8112398
loc_8112392:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8112398
locret_8112398:
	pop {pc}
	thumb_func_end sub_8112340

	thumb_local_start
sub_811239A:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_1a]
	cmp r0, #0
	bne loc_81123A8
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	b loc_81123E6
loc_81123A8:
	ldrb r1, [r4,#oAIData_Version_16]
	str r1, [r7,#oAIAttackVars_Unk_0c]
	ldr r0, off_81126A0 // =byte_8112266
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r0, off_81126A4 // =byte_811226C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_81126A8 // =byte_8112272
	ldrb r0, [r0,r1]
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	ldr r0, off_81126AC // =byte_811225A
	ldrb r0, [r0,r1]
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	ldr r0, off_81126B0 // =byte_8112254
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x6c
	add r0, r0, r5
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0xa
	bl object_setAttack0
loc_81123E6:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_811239A

	thumb_local_start
sub_81123EC:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x24
	ldr r2, dword_81126B4 // =0x800000
	mov r3, #0
	add r7, sp, #0
	bl object_getPanelsExceptCurrentFiltered
	cmp r0, #0
	beq loc_8112406
	bl sub_8112426
	cmp r0, #0
	bne loc_811240E
loc_8112406:
	bl sub_8112466
	cmp r0, #0
	beq loc_8112422
loc_811240E:
	mov r4, r0
	bl GetPositiveSignedRNG2
	mov r1, r4
	svc 6
	add r0, sp, #0x10
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8112422:
	add sp, sp, #0x24
	pop {r4,r6,r7,pc}
	thumb_func_end sub_81123EC

	thumb_local_start
sub_8112426:
	push {r4-r7,lr}
	mov r4, r0
	bl object_getFrontDirection // () -> int
	mov r6, r0
	ldr r3, off_81126B8 // =byte_81125E0
	bl sub_81096FA
	mov r5, r7
	add r5, #0x10
	push {r5}
loc_811243C:
	ldrb r0, [r7]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	sub r0, r0, r6
	push {r0-r3}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0-r3}
	beq loc_811245A
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5]
	add r5, #1
loc_811245A:
	add r7, #1
	sub r4, #1
	bne loc_811243C
	pop {r1}
	sub r0, r5, r1
	pop {r4-r7,pc}
	thumb_func_end sub_8112426

	thumb_local_start
sub_8112466:
	push {r4-r7,lr}
	mov r0, r7
	mov r1, #1
	mov r2, #0xae
	ldrb r3, [r5,#oBattleObject_Alliance]
	bl object_getEnemyByNameRange
	mov r6, r0
	beq locret_81124D2
	bl object_getFrontDirection // () -> int
	mov r4, r0
	mov r0, #0
	str r0, [r7,#0x20]
	mov r0, #0
	str r0, [r7,#0x1c]
	mov r3, r7
loc_8112488:
	push {r3}
	ldr r1, [r3]
	cmp r1, r5
	beq loc_81124C8
	ldrb r0, [r1,#oBattleObject_PanelX]
	sub r0, r0, r4
	ldrb r1, [r1,#oBattleObject_PanelY]
	ldr r3, off_81126BC // =byte_81125E0
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	beq loc_81124C8
	ldr r2, [r7]
	ldrh r2, [r2,#oBattleObject_HP]
	ldr r3, [r7,#0x1c]
	cmp r2, r3
	blt loc_81124C8
	beq loc_81124BA
	str r2, [r7,#0x1c]
	mov r2, #0
	str r2, [r7,#0x20]
loc_81124BA:
	lsl r1, r1, #4
	orr r0, r1
	ldr r3, [r7,#0x20]
	add r2, r3, #1
	str r2, [r7,#0x20]
	add r3, r3, r7
	strb r0, [r3,#0x10]
loc_81124C8:
	pop {r3}
	add r3, #4
	sub r6, #1
	bne loc_8112488
	ldr r0, [r7,#0x20]
locret_81124D2:
	pop {r4-r7,pc}
	thumb_func_end sub_8112466

	thumb_local_start
sub_81124D4:
	push {lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	ldr r1, byte_81126C0 // =0x0
	ldrb r2, [r5,#oBattleObject_Alliance]
	cmp r2, #0
	beq loc_81124EE
	ldr r1, byte_81126C4 // =0x0
loc_81124EE:
	and r0, r1
	pop {pc}
	thumb_func_end sub_81124D4

	thumb_local_start
sub_81124F2:
	push {r4,r6,lr}
	mov r4, r0
	ldrb r0, [r5,#0x16]
	ldrb r1, [r5,#0x17]
	eor r0, r1
	ldrb r1, [r4,#0x13]
	ldr r3, off_81126C8 // =byte_81125F0
	bl sub_81096FA
	bl object_getClosestPanelMatchingRowFiltered
	beq locret_811252A
	ldrb r1, [r4,#0x13]
	ldr r3, off_81126CC // =byte_81125E0
	bl sub_81096FA
	push {r0-r3}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0-r3}
	bne locret_811252A
	ldrb r6, [r5,#0x16]
	ldrb r4, [r5,#0x17]
	eor r6, r4
	mov r4, #5
	bl sub_8015E46
locret_811252A:
	pop {r4,r6,pc}
	thumb_func_end sub_81124F2

	thumb_local_start
sub_811252C:
	push {r4,r6,r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelY]
	bl sub_810971A
	cmp r0, #0
	beq loc_8112548
	ldr r4, off_8112580 // =off_8112584
	ldr r2, [r5,#oBattleObject_ExtraVars+8]
	lsl r2, r2, #2
	ldr r4, [r4,r2]
	bl sub_8112562
	cmp r0, #0
	bne locret_8112560
loc_8112548:
	ldr r4, off_8112598 // =off_811259C
	ldr r2, [r5,#oBattleObject_ExtraVars+8]
	lsl r2, r2, #2
	ldr r4, [r4,r2]
	bl sub_8112562
	cmp r0, #0
	bne locret_8112560
	ldr r4, off_8112598 // =off_811259C
	ldr r4, [r4]
	bl sub_8112562
locret_8112560:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_811252C

	thumb_local_start
sub_8112562:
	push {lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81126D0 // =byte_81125E0
	bl sub_81096FA
	bl sub_8015D80
	pop {pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_8112580: .word off_8112584
off_8112584: .word byte_81125B0
	.word byte_81125B5
	.word byte_81125B8
	.word byte_81125B0
	.word byte_81125B0
off_8112598: .word off_811259C
off_811259C: .word byte_81125BB
	.word byte_81125C4
	.word byte_81125CB
	.word byte_81125D2
	.word byte_81125D9
byte_81125B0: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F
byte_81125B5: .byte 0x0, 0xFF, 0x7F
byte_81125B8: .byte 0x0, 0x1, 0x7F
byte_81125BB: .byte 0x0, 0xFF, 0x0, 0x1, 0xFF, 0x0, 0x1, 0x0, 0x7F
byte_81125C4: .byte 0x0, 0xFF, 0xFF, 0x0, 0x1, 0x0, 0x7F
byte_81125CB: .byte 0x0, 0x1, 0xFF, 0x0, 0x1, 0x0, 0x7F
byte_81125D2: .byte 0x0, 0xFF, 0x0, 0x1, 0xFF, 0x0, 0x7F
byte_81125D9: .byte 0x0, 0xFF, 0x0, 0x1, 0x1, 0x0, 0x7F
byte_81125E0: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
byte_81125F0: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_8112562

	thumb_local_start
sub_8112600:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_811262C
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	bl sub_800A704
	ldr r1, off_81126D4 // =0x12c
	cmp r0, r1
	blt loc_811262C
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_811262C:
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_8112600

	thumb_local_start
sub_8112630:
	push {r4,lr}
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	cmp r0, #0
	beq locret_8112646
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
locret_8112646:
	pop {r4,pc}
	thumb_func_end sub_8112630

	thumb_local_start
sub_8112648:
	push {r4,lr}
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	cmp r0, #0
	bne locret_8112664
	mov r0, #0
	mov r1, #0
	mov r2, #5
	mov r3, #0
	ldr r4, dword_81126D8 // =0x11504
	bl sub_80C4038
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
locret_8112664:
	pop {r4,pc}
	thumb_func_end sub_8112648

	thumb_local_start
sub_8112666:
	push {lr}
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x12
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x13
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #3
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	pop {pc}
	.balign 4, 0x00
dword_8112684: .word 0xA000
off_8112688: .word byte_811223C
off_811268C: .word byte_8112224
off_8112690: .word byte_8112260
off_8112694: .word sub_81123EC+1
off_8112698: .word sub_81124F2+1
off_811269C: .word byte_81125E0
off_81126A0: .word byte_8112266
off_81126A4: .word byte_811226C
off_81126A8: .word byte_8112272
off_81126AC: .word byte_811225A
off_81126B0: .word byte_8112254
dword_81126B4: .word 0x800000
off_81126B8: .word byte_81125E0
off_81126BC: .word byte_81125E0
byte_81126C0: .byte 0x0, 0x0, 0x80, 0x8
byte_81126C4: .byte 0x0, 0x0, 0x80, 0x4
off_81126C8: .word byte_81125F0
off_81126CC: .word byte_81125E0
off_81126D0: .word byte_81125E0
off_81126D4: .word 0x12C
dword_81126D8: .word 0x11504
byte_81126DC: .byte 0x4, 0x16, 0x1, 0x0, 0x16, 0x0, 0x0, 0x1
byte_81126E4: .byte 0x82, 0x40, 0x0, 0x6, 0x5, 0x0, 0xAA, 0x40, 0x1, 0x6, 0x7, 0x0, 0xD2
	.byte 0x40, 0x2, 0x6, 0x9, 0x0, 0xFA, 0x40, 0x3, 0x6, 0xB, 0x0, 0xC8, 0x40
	.byte 0x4, 0x6, 0x9, 0x0, 0xFA, 0x40, 0x5, 0x6, 0xF, 0x0
byte_8112708: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_8112666

	thumb_local_start
sub_81127C8:
	push {lr}
	ldr r1, off_81127D8 // =off_81127DC
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_81127D8: .word off_81127DC
off_81127DC: .word sub_81127E8+1
	.word sub_8112820+1
	.word sub_811288C+1
	thumb_func_end sub_81127C8

	thumb_local_start
sub_81127E8:
	push {lr}
	bl object_canMove
	beq loc_8112816
	ldr r0, [r7,#oAIAttackVars_Unk_28]
	mov lr, pc
	bx r0
	tst r0, r0
	beq loc_8112816
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_811281E
loc_8112816:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_exitAttackState
locret_811281E:
	pop {pc}
	thumb_func_end sub_81127E8

	thumb_local_start
sub_8112820:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	blt loc_8112850
	beq loc_811283A
	mov r1, #4
	tst r0, r1
	bne loc_8112850
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_highlightPanel
	b loc_8112850
loc_811283A:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	mov r4, #0x15
	bl SpawnT4BattleObjectWithId0
loc_8112850:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_811288A
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
	bl sub_81096BA
	mov r0, #3
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_811288A:
	pop {r4,pc}
	thumb_func_end sub_8112820

	thumb_local_start
sub_811288C:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_81128B0
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_CURRENTLY_MOVING_1_BIT
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_exitAttackState
locret_81128B0:
	pop {pc}
	thumb_func_end sub_811288C

	thumb_local_start
sub_81128B2:
	push {lr}
	ldr r1, off_81128C0 // =off_81128C4
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_81128C0: .word off_81128C4
off_81128C4: .word sub_81128DA+1
	.word sub_81128FA+1
	.word sub_8112928+1
	.word sub_81097BA+1
	thumb_func_end sub_81128B2

	bl object_exitAttackState
	pop {pc}
	thumb_local_start
sub_81128DA:
	push {lr}
	cmp r0, #0
	bne loc_81128E8
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
loc_81128E8:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_81128F8
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81128F8:
	pop {pc}
	thumb_func_end sub_81128DA

	thumb_local_start
sub_81128FA:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8112926
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	bl object_getFlag // () -> int
	ldr r1, byte_8112998 // =0x0
	tst r0, r1
	beq loc_811291E
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0f]
	b loc_8112922
loc_811291E:
	mov r0, #3
	strb r0, [r7,#oAIAttackVars_Unk_0f]
loc_8112922:
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8112926:
	pop {pc}
	thumb_func_end sub_81128FA

	thumb_local_start
sub_8112928:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8112944
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl sub_8112968
	mov r0, #0xa9
	add r0, #0xff
	bl sound_play // () -> void
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_8112944:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8112966
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	add r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	ldrb r1, [r7,#oAIAttackVars_Unk_0f]
	cmp r0, r1
	blt loc_8112962
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_8112966
loc_8112962:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8112966:
	pop {pc}
	thumb_func_end sub_8112928

	thumb_local_start
sub_8112968:
	push {r4,r6,r7,lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r7,#oAIAttackVars_Unk_0d]
	add r2, r2, r5
	ldrb r3, [r7,#oAIAttackVars_Unk_0e]
	cmp r3, #0
	beq loc_8112984
	lsl r3, r3, #2
	add r2, r2, r3
	sub r3, r2, r3
loc_8112984:
	ldrb r4, [r7,#oAIAttackVars_Unk_03]
	ldrb r6, [r7,#oAIAttackVars_Unk_0e]
	lsl r6, r6, #8
	orr r4, r6
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	ldrb r7, [r7,#oAIAttackVars_Unk_0c]
	add r7, r7, r5
	bl sub_80D1EB8
	pop {r4,r6,r7,pc}
byte_8112998: .byte 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_81129A0: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_8112A1E+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8112A4A+1
	.word sub_81097BA+1
	.word sub_81127C8+1
	.word sub_81128B2+1
byte_81129D0: .byte 0x5, 0xA, 0x14, 0x19, 0xF, 0x19
byte_81129D6: .byte 0xFF, 0x78, 0x5C, 0x44, 0x5C, 0x2C
byte_81129DC: .byte 0x3C, 0x30, 0x24, 0x18, 0x24, 0x12
byte_81129E2: .byte 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E
byte_81129E8: .byte 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E
	thumb_func_end sub_8112968

	thumb_func_start sub_81129EE
sub_81129EE:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurAction]
	cmp r0, #0xb
	beq locret_8112A1C
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0x82
	ldrh r1, [r0,r1]
	mov r2, #0x84
	ldrh r2, [r0,r2]
	add r1, r1, r2
	mov r2, #0x86
	ldrh r2, [r0,r2]
	add r1, r1, r2
	mov r2, #0x88
	ldrh r2, [r0,r2]
	add r1, r1, r2
	mov r2, #0x8a
	ldrh r2, [r0,r2]
	add r1, r1, r2
	tst r1, r1
	beq locret_8112A1C
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
locret_8112A1C:
	pop {pc}
	thumb_func_end sub_81129EE

	thumb_local_start
sub_8112A1E:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_8112A44
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	cmp r0, #0
	beq loc_8112A30
	bl sub_80D1EE8
loc_8112A30:
	ldr r0, [r5,#oBattleObject_ExtraVars+0xc]
	cmp r0, #0
	beq loc_8112A3A
	bl sub_80D1EE8
loc_8112A3A:
	ldr r0, [r5,#oBattleObject_ExtraVars+0x10]
	cmp r0, #0
	beq loc_8112A44
	bl sub_80D1EE8
loc_8112A44:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_8112A1E

	thumb_local_start
sub_8112A4A:
	push {r4,r6,lr}
	ldr r1, off_8112A58 // =off_8112A5C
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
off_8112A58: .word off_8112A5C
off_8112A5C: .word sub_8112A64+1
	.word sub_8112A78+1
	thumb_func_end sub_8112A4A

	thumb_local_start
sub_8112A64:
	push {lr}
	ldr r1, off_8112B70 // =byte_81129D6
	ldrb r0, [r4,#oAIData_Version_16]
	ldrb r0, [r1,r0]
	strh r0, [r6,#oAIState_Unk_08]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	bl sub_8112A78
	pop {pc}
	thumb_func_end sub_8112A64

	thumb_local_start
sub_8112A78:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
	ldrh r0, [r6,#oAIState_Unk_08]
	cmp r0, #0xff
	beq loc_8112A9A
	sub r0, #1
	strh r0, [r6,#oAIState_Unk_08]
	bne loc_8112A9A
	ldr r0, off_8112B74 // =sub_8112B06+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8112B04
loc_8112A9A:
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq locret_8112B04
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #0x74
	mov r1, #0x7f
	mov r2, #0x84
	bl sub_8109630
	cmp r0, #0
	bne locret_8112B04
	mov r0, #0x64
	mov r1, #0x7f
	mov r2, #0x84
	bl sub_8109630
	cmp r0, #0
	bne locret_8112B04
	bl object_getFlag // () -> int
	ldr r1, dword_8112B78 // =0x8000
	tst r0, r1
	bne locret_8112B04
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
	ldrb r1, [r4,#oAIData_Version_16]
	strb r1, [r7,#oAIAttackVars_Unk_03]
	ldr r0, off_8112B7C // =byte_81129DC
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r0, off_8112B80 // =byte_81129E2
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_12]
	ldr r0, off_8112B84 // =byte_81129E8
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_8112B88 // =byte_81129D0
	ldrb r0, [r1,r0]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x64
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x68
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	str r0, [r5,#oBattleObject_ExtraVars+0xc]
	str r0, [r5,#oBattleObject_ExtraVars+0x10]
	mov r0, #0xb
	bl object_setAttack0
locret_8112B04:
	pop {pc}
	thumb_func_end sub_8112A78

	thumb_local_start
sub_8112B06:
	push {r4,r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	ldrb r0, [r4,#oAIData_Unk_13]
	ldr r3, off_8112B8C // =byte_8112B60
	bl sub_81096FA
	add r7, sp, #0
	bl sub_800D45C
	tst r0, r0
	bne loc_8112B36
	ldrb r0, [r4,#oAIData_Unk_13]
	ldr r3, off_8112B90 // =byte_8112B60
	bl sub_81096FA
	add r7, sp, #0
	bl object_getPanelsFiltered
	tst r0, r0
	beq loc_8112B4A
loc_8112B36:
	mov r7, r0
	bl GetPositiveSignedRNG2
	mov r1, r7
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8112B4A:
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	pop {r0,r1}
	add sp, sp, #0x18
	pop {r4,r7,pc}
	.word 0
	.byte 0, 0
byte_8112B60: .byte 0x0, 0x0, 0x1, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0, 0x1, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
off_8112B70: .word byte_81129D6
off_8112B74: .word sub_8112B06+1
dword_8112B78: .word 0x8000
off_8112B7C: .word byte_81129DC
off_8112B80: .word byte_81129E2
off_8112B84: .word byte_81129E8
off_8112B88: .word byte_81129D0
off_8112B8C: .word byte_8112B60
off_8112B90: .word byte_8112B60
byte_8112B94: .byte 0x4, 0x17, 0x1, 0x0, 0x17, 0x0, 0x0, 0x1
byte_8112B9C: .byte 0x3C, 0x0, 0x0, 0x8, 0xA, 0x0, 0x8C, 0x0, 0x1, 0x8, 0x14, 0x0, 0xDC
	.byte 0x0, 0x2, 0x8, 0x28, 0x0, 0xFA, 0x0, 0x3, 0x8, 0x50, 0x0, 0xB4, 0x0
	.byte 0x4, 0x8, 0x28, 0x0, 0xFA, 0x0, 0x5, 0x8, 0x64, 0x0
byte_8112BC0: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	.byte 0xFF, 0xFF, 0x9B, 0x34, 0x9B, 0x34, 0x9B, 0x34, 0x9B
	.byte 0x34, 0x9B, 0x34, 0x9B, 0x34, 0x9B, 0x34, 0x9B, 0x34
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9E, 0x34
	.byte 0x9E, 0x34, 0x9E, 0x34, 0x9E, 0x34, 0x9E, 0x34, 0x9E
	.byte 0x34, 0x9E, 0x34, 0x9E, 0x34, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
	thumb_func_end sub_8112B06

	thumb_local_start
sub_8112C80:
	push {lr}
	ldr r1, off_8112C90 // =off_8112C94
	ldrb r0, [r7]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_8112C90: .word off_8112C94
off_8112C94: .word sub_8112CA4+1
	.word sub_8112CF4+1
	.word sub_8112D2A+1
	.word sub_8112D60+1
	thumb_func_end sub_8112C80

	thumb_local_start
sub_8112CA4:
	push {r4,lr}
	ldrb r0, [r7,#1]
	cmp r0, #0
	bne loc_8112CBC
	mov r0, #1
	strb r0, [r7,#1]
	mov r0, #0
	str r0, [r7,#0x28]
	ldrb r0, [r7,#0xc]
	strh r0, [r7,#0x10]
	mov r0, #1
	strb r0, [r5,#0x10]
loc_8112CBC:
	ldrh r0, [r7,#0x10]
	sub r0, #1
	strh r0, [r7,#0x10]
	bgt locret_8112CF2
	ldrb r0, [r7,#0x16]
	ldrb r1, [r7,#0x17]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0xc
	lsl r3, r3, #0x10
	mov r4, #0x58
	bl SpawnT4BattleObjectWithId0
	cmp r0, #0
	beq loc_8112CE2
	ldrb r1, [r7,#0xd]
	strh r1, [r0,#0x20]
loc_8112CE2:
	str r0, [r7,#0x28]
	ldrb r0, [r7,#0xd]
	strh r0, [r7,#0x10]
	mov r0, #0xbd
	bl sound_play // () -> void
	mov r0, #4
	strh r0, [r7]
locret_8112CF2:
	pop {r4,pc}
	thumb_func_end sub_8112CA4

	thumb_local_start
sub_8112CF4:
	push {r4,lr}
	ldrh r0, [r7,#0x10]
	sub r0, #1
	strh r0, [r7,#0x10]
	bgt locret_8112D28
	mov r0, #2
	strb r0, [r5,#0x10]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	ldr r4, dword_8113070 // =0x2810
	bl sub_80C4038
	str r0, [r7,#0x30]
	bl sub_80C4086
	ldrb r1, [r7,#0xe]
	mov r2, #0xa
	mul r1, r2
	strh r1, [r0,#0x20]
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #8
	strh r0, [r7]
locret_8112D28:
	pop {r4,pc}
	thumb_func_end sub_8112CF4

	thumb_local_start
sub_8112D2A:
	push {lr}
	ldrb r0, [r7,#1]
	cmp r0, #0
	bne loc_8112D3E
	mov r0, #1
	strb r0, [r7,#1]
	bl sub_8112F34
	mov r0, #0xa
	strh r0, [r7,#0x10]
loc_8112D3E:
	ldrh r0, [r7,#0x10]
	sub r0, #1
	strh r0, [r7,#0x10]
	bgt locret_8112D5E
	ldrb r0, [r7,#0xe]
	sub r0, #1
	strb r0, [r7,#0xe]
	beq loc_8112D54
	mov r0, #0
	strb r0, [r7,#1]
	b locret_8112D5E
loc_8112D54:
	ldr r0, [r7,#0x30]
	bl sub_80C4072
	mov r0, #0xc
	strh r0, [r7]
locret_8112D5E:
	pop {pc}
	thumb_func_end sub_8112D2A

	thumb_local_start
sub_8112D60:
	push {r4,lr}
	ldrb r0, [r7,#1]
	cmp r0, #0
	bne loc_8112D70
	mov r0, #1
	strb r0, [r7,#1]
	mov r0, #3
	strb r0, [r5,#0x10]
loc_8112D70:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8112D82
	mov r0, #0
	strb r0, [r5,#0x10]
	bl object_exitAttackState
locret_8112D82:
	pop {r4,pc}
	thumb_func_end sub_8112D60

	thumb_local_start
sub_8112D84:
	push {lr}
	ldrh r0, [r7,#0x12]
	add r0, #1
	strh r0, [r7,#0x12]
	mov r1, #4
	tst r0, r1
	bne locret_8112D9A
	ldrb r0, [r7,#0x16]
	ldrb r1, [r7,#0x17]
	bl object_highlightPanel
locret_8112D9A:
	pop {pc}
	thumb_func_end sub_8112D84

	thumb_local_start
sub_8112D9C:
	push {lr}
	ldr r1, off_8112DAC // =off_8112DB0
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8112DAC: .word off_8112DB0
off_8112DB0: .word sub_8112DC0+1
	.word sub_8112E34+1
	.word sub_8112E7C+1
	.word sub_8112EC4+1
	thumb_func_end sub_8112D9C

	thumb_local_start
sub_8112DC0:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8112DD8
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
loc_8112DD8:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8112E12
	push {r6,r7}
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_8112E20 // =byte_8112E24
	bl sub_81096FA
	bl object_getFirstPanelInDirectionFiltered
	ldr r2, [r7,#oAIAttackVars_Unk_30]
	mov r3, #0xc
	lsl r3, r3, #0x10
	ldrb r4, [r7,#oAIAttackVars_Unk_0c]
	mov r6, #0x16
	add r6, r6, r7
	mov r7, #0x4c
	add r7, r7, r5
	bl sub_80E3CF2
	pop {r6,r7}
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8112E12:
	pop {r4,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_8112E20: .word byte_8112E24
byte_8112E24: .byte 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_8112DC0

	thumb_local_start
sub_8112E34:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject1Ptr]
	cmp r0, #1
	bne loc_8112E72
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	ldr r4, dword_8113074 // =0x12810
	bl sub_80C4038
	str r0, [r7,#oAIAttackVars_Unk_30]
	bl sub_80C4086
	ldrb r1, [r7,#oAIAttackVars_Unk_0e]
	mov r2, #0xa
	mul r1, r2
	strh r1, [r0,#oBattleObject_Timer]
	bl object_getFrontDirection // () -> int
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_8112E7A
loc_8112E72:
	cmp r0, #0
	bne locret_8112E7A
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8112E7A:
	pop {pc}
	thumb_func_end sub_8112E34

	thumb_local_start
sub_8112E7C:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8112E90
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl sub_8112F34
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_8112E90:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8112EC2
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	beq loc_8112EB8
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl sub_8112EFA
	cmp r0, #0
	bne locret_8112EC2
	ldr r0, [r7,#oAIAttackVars_Unk_34]
	neg r0, r0
	str r0, [r7,#oAIAttackVars_Unk_34]
	bl sub_8112EFA
	b locret_8112EC2
loc_8112EB8:
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	bl sub_80C4072
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8112EC2:
	pop {pc}
	thumb_func_end sub_8112E7C

	thumb_local_start
sub_8112EC4:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8112ED8
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_8112ED8:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	cmp r0, #0
	beq loc_8112EEC
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_8112EEC
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
loc_8112EEC:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8112EF8
	bl object_exitAttackState
locret_8112EF8:
	pop {r4,pc}
	thumb_func_end sub_8112EC4

	thumb_local_start
sub_8112EFA:
	push {lr}
	ldr r1, [r7,#oAIAttackVars_Unk_34]
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	add r0, r0, r1
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	ldr r3, off_8112F20 // =byte_8112F24
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r1,r2}
	beq locret_8112F1A
	strb r1, [r7,#oAIAttackVars_Unk_16]
	strb r2, [r7,#oAIAttackVars_Unk_17]
locret_8112F1A:
	pop {pc}
	.word 0x0
off_8112F20: .word byte_8112F24
byte_8112F24: .byte 0x20, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_8112EFA

	thumb_local_start
sub_8112F34:
	push {r4,r6,r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	mov r4, #0xa
	lsl r4, r4, #8
	ldrb r2, [r7,#oAIAttackVars_Unk_0f]
	add r4, r4, r2
	mov r2, #0
	mov r3, #0
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	bl sub_80DFF84
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8112F34

	thumb_local_start
sub_8112F4E:
	push {lr}
	ldr r1, off_8112F5C // =off_8112F60
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_8112F5C: .word off_8112F60
off_8112F60: .word sub_8112F70+1
	.word sub_8112FBA+1
	.word sub_8113002+1
	.word sub_8113038+1
	thumb_func_end sub_8112F4E

	thumb_local_start
sub_8112F70:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8112F86
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	b locret_8112FB8
loc_8112F86:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8112FB8
	push {r6,r7}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, [r7,#oAIAttackVars_Unk_30]
	mov r3, #0xc
	lsl r3, r3, #0x10
	ldrb r4, [r7,#oAIAttackVars_Unk_0c]
	mov r6, #1
	lsl r6, r6, #8
	orr r4, r6
	mov r6, #0x16
	add r6, r6, r7
	mov r7, #0x4c
	add r7, r7, r5
	bl sub_80E3CF2
	pop {r6,r7}
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8112FB8:
	pop {r4,pc}
	thumb_func_end sub_8112F70

	thumb_local_start
sub_8112FBA:
	push {lr}
	ldr r0, [r5,#oBattleObject_RelatedObject1Ptr]
	cmp r0, #1
	bne loc_8112FF8
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	ldr r4, dword_8113074 // =0x12810
	bl sub_80C4038
	str r0, [r7,#oAIAttackVars_Unk_30]
	bl sub_80C4086
	ldrb r1, [r7,#oAIAttackVars_Unk_0e]
	mov r2, #0xa
	mul r1, r2
	strh r1, [r0,#oBattleObject_Timer]
	bl object_getFrontDirection // () -> int
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_8113000
loc_8112FF8:
	cmp r0, #0
	bne locret_8113000
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8113000:
	pop {pc}
	thumb_func_end sub_8112FBA

	thumb_local_start
sub_8113002:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8113016
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl sub_8112F34
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_8113016:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8113036
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	beq loc_811302C
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8113036
loc_811302C:
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	bl sub_80C4072
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8113036:
	pop {pc}
	thumb_func_end sub_8113002

	thumb_local_start
sub_8113038:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_811304C
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_811304C:
	ldrb r0, [r5,#oBattleObject_CurAnim]
	cmp r0, #0
	beq loc_8113060
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_8113060
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
loc_8113060:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_811306C
	bl object_exitAttackState
locret_811306C:
	pop {r4,pc}
	.byte 0, 0
dword_8113070: .word 0x2810
dword_8113074: .word 0x12810
off_8113078: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_81130E4+1
	.word sub_81130F0+1
	.word sub_81130FC+1
	.word sub_8113108+1
	.word sub_8113124+1
	.word sub_81097BA+1
	.word sub_8112F4E+1
	.word sub_8112D9C+1
byte_81130A8: .byte 0x0, 0x0, 0x3, 0x0, 0x0, 0x50, 0x1, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x50, 0x2
	.byte 0x0, 0x0, 0x50, 0x4, 0x0, 0x0, 0x0, 0x3, 0x0
byte_81130C0: .byte 0xA, 0x1E, 0x32, 0x46, 0x28, 0x5A
byte_81130C6: .byte 0x18, 0x18, 0xC, 0xC, 0xC, 0xC, 0x18, 0x18, 0xC, 0xC
	.byte 0x12, 0xC
byte_81130D2: .byte 0x18, 0x18, 0xC, 0xC, 0x18, 0x6
byte_81130D8: .byte 0x3, 0x5, 0x3, 0x7, 0x3, 0x7
byte_81130DE: .byte 0x0, 0x0, 0x1, 0x1, 0x1, 0x1
	thumb_func_end sub_8113038

	thumb_local_start
sub_81130E4:
	push {lr}
	bl sub_8113114
	bl sub_8016B02
	pop {pc}
	thumb_func_end sub_81130E4

	thumb_local_start
sub_81130F0:
	push {lr}
	bl sub_8113114
	bl sub_8016CE8
	pop {pc}
	thumb_func_end sub_81130F0

	thumb_local_start
sub_81130FC:
	push {lr}
	bl sub_8113114
	bl sub_8016B36
	pop {pc}
	thumb_func_end sub_81130FC

	thumb_local_start
sub_8113108:
	push {lr}
	bl sub_8113114
	bl sub_8016B72
	pop {pc}
	thumb_func_end sub_8113108

	thumb_local_start
sub_8113114:
	push {lr}
	ldrb r0, [r4,#oAIData_Version_16]
	mov r1, #1
	and r0, r1
	bne loc_811311E
loc_811311E:
	mov r0, #0
	str r0, [r5,#oBattleObject_RelatedObject1Ptr]
	pop {pc}
	thumb_func_end sub_8113114

	thumb_local_start
sub_8113124:
	push {r4,r6,lr}
	bl sub_81131D8
	cmp r0, #0
	bne locret_8113142
	bl object_getFlag // () -> int
	ldr r1, dword_8113208 // =0xa000
	tst r0, r1
	bne locret_8113142
	ldr r1, off_8113144 // =loc_8113148
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_8113142:
	pop {r4,r6,pc}
off_8113144: .word loc_8113148
	thumb_func_end sub_8113124

loc_8113148:
	add r1, #0x55
	lsr r1, r2, #0x20
	add r1, #0x63
	lsr r1, r2, #0x20
	add r1, #0xa3
	lsr r1, r2, #0x20
	ldrb r0, [r4,#0x16]
	mov r1, #1
	and r0, r1
	lsl r0, r0, #2
	add r0, #4
	strb r0, [r6]
	mov pc, lr
	push {lr}
	ldrb r0, [r5,#0x13]
	bl sub_810971A
	cmp r0, #0
	beq locret_81131A0
	ldrb r1, [r4,#0x16]
	ldr r0, off_811320C // =byte_81130DE
	ldrb r0, [r0,r1]
	strb r0, [r7,#0xf]
	ldr r0, off_8113210 // =byte_81130D8
	ldrb r0, [r0,r1]
	strb r0, [r7,#0xe]
	ldr r0, off_8113214 // =byte_81130C6
	ldrb r0, [r0,r1]
	strb r0, [r7,#0xc]
	ldr r0, off_8113218 // =byte_81130D2
	ldrb r0, [r0,r1]
	strb r0, [r7,#0x18]
	ldr r0, off_811321C // =byte_81130C0
	ldrb r0, [r0,r1]
	strh r0, [r7,#8]
	mov r0, #0xa
	strh r0, [r7,#0xa]
	lsl r1, r1, #2
	ldr r0, off_8113220 // =byte_81130A8
	ldr r0, [r0,r1]
	str r0, [r7,#0x30]
	mov r0, #0xa
	bl object_setAttack0
locret_81131A0:
	pop {pc}
	push {lr}
	ldrb r1, [r4,#0x16]
	ldr r0, off_8113224 // =byte_81130DE
	ldrb r0, [r0,r1]
	strb r0, [r7,#0xf]
	ldr r0, off_8113228 // =byte_81130D8
	ldrb r0, [r0,r1]
	strb r0, [r7,#0xe]
	ldr r0, off_811322C // =byte_81130C6
	ldrb r0, [r0,r1]
	strb r0, [r7,#0xc]
	ldr r0, off_8113230 // =byte_81130D2
	ldrb r0, [r0,r1]
	strb r0, [r7,#0x18]
	ldr r0, off_8113234 // =byte_81130C0
	ldrb r0, [r0,r1]
	strh r0, [r7,#8]
	mov r0, #0xa
	strh r0, [r7,#0xa]
	lsl r1, r1, #2
	ldr r0, off_8113238 // =byte_81130A8
	ldr r0, [r0,r1]
	str r0, [r7,#0x30]
	mov r0, #0xb
	bl object_setAttack0
	pop {pc}
	thumb_local_start
sub_81131D8:
	push {r4,r6,lr}
	mov r6, #0
	mov r0, r5
	bl sub_800ED90
	tst r3, r3
	beq loc_8113204
	lsl r4, r0, #0x17
	lsr r4, r4, #0x17
	ldrh r0, [r5,#oBattleObject_HP]
	ldrh r1, [r5,#oBattleObject_MaxHP]
	lsr r1, r1, #1
	cmp r0, r1
	bgt loc_8113204
	mov r0, r4
	bl sub_80126E4
	bl object_setAttack0
	bl sub_800F322
	mov r6, #1
loc_8113204:
	mov r0, r6
	pop {r4,r6,pc}
dword_8113208: .word 0xA000
off_811320C: .word byte_81130DE
off_8113210: .word byte_81130D8
off_8113214: .word byte_81130C6
off_8113218: .word byte_81130D2
off_811321C: .word byte_81130C0
off_8113220: .word byte_81130A8
off_8113224: .word byte_81130DE
off_8113228: .word byte_81130D8
off_811322C: .word byte_81130C6
off_8113230: .word byte_81130D2
off_8113234: .word byte_81130C0
off_8113238: .word byte_81130A8
byte_811323C: .byte 0x4, 0x18, 0x1, 0x0, 0x18, 0x0, 0x0, 0x1
byte_8113244: .byte 0x8C, 0x0, 0x0, 0x6, 0x14, 0x0, 0xB4, 0x0, 0x1, 0x6, 0x28, 0x0, 0xFA
	.byte 0x0, 0x2, 0x6, 0x3C, 0x0, 0x18, 0x1, 0x3, 0x6, 0x50, 0x0, 0xD2, 0x0
	.byte 0x4, 0x6, 0x3C, 0x0, 0x36, 0x1, 0x5, 0x6, 0x64, 0x0
byte_8113268: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	.byte 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_81131D8

	thumb_local_start
sub_8113330:
	push {lr}
	ldr r1, off_8113340 // =off_8113344
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8113340: .word off_8113344
off_8113344: .word sub_8113350+1
	.word sub_811339A+1
	.word sub_81097B4+1
	thumb_func_end sub_8113330

	thumb_local_start
sub_8113350:
	push {r4,r6,r7,lr}
	bl object_canMove
	beq loc_8113394
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	ldrb r0, [r6,#oAIState_Unk_04]
	cmp r0, #1
	bne loc_8113378
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #0xaa
	add r0, #0xff
	bl sound_play // () -> void
loc_8113378:
	bl object_getFrontDirection // () -> int
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	ldr r0, dword_81135C0 // =0x280000
	svc 6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_811339A
	b locret_8113398
loc_8113394:
	bl sub_801171C
locret_8113398:
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8113350

	thumb_local_start
sub_811339A:
	push {r4,lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_81135C4 // =0xc000000
	tst r0, r1
	beq loc_81133AE
	ldrh r0, [r5,#oBattleObject_PanelXY]
	str r0, [r7,#oAIAttackVars_Unk_3c]
	bl object_clearCollisionRegion // () -> void
loc_81133AE:
	ldrh r0, [r5,#oBattleObject_PanelXY]
	ldr r1, [r7,#oAIAttackVars_Unk_3c]
	cmp r0, r1
	beq loc_81133BC
	mov r0, #1
	bl object_setCollisionRegion
loc_81133BC:
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	bl object_setPanelsFromCoordinates
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r2, [r7,#oAIAttackVars_Unk_34]
	ldr r3, [r7,#oAIAttackVars_Unk_38]
	cmp r0, #0
	beq loc_8113400
	cmp r0, #7
	beq loc_8113400
	bl object_checkPanelParameters
	cmp r0, #0
	bne loc_8113400
	mov r0, #0x34
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	mov r4, #0x14
	bl SpawnT4BattleObjectWithId0
	mov r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_04]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b loc_8113452
loc_8113400:
	bl object_updateCollisionPanels
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_811348C
	bl object_isCurrentPanelValid
	cmp r0, #0
	bne loc_8113440
	bl object_getFrontDirection // () -> int
	mov r1, #6
	mul r0, r1
	ldrb r1, [r5,#oBattleObject_PanelX]
	sub r1, r1, r0
	strb r1, [r5,#oBattleObject_PanelX]
	ldrb r0, [r6,#oAIState_Unk_04]
	cmp r0, #1
	bne loc_811343C
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	tst r0, r0
	beq loc_811343C
	ldr r1, [r5,#oBattleObject_AIDataPtr]
	ldrb r1, [r1,#oAIData_Version_16]
	tst r1, r1
	beq loc_811343C
	ldrb r0, [r0,#0x13]
	strb r0, [r5,#oBattleObject_PanelY]
	b loc_8113440
loc_811343C:
	ldrb r0, [r5,#oBattleObject_FuturePanelY]
	strb r0, [r5,#oBattleObject_PanelY]
loc_8113440:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_PanelX]
	cmp r0, r1
	beq loc_8113452
	bl object_setCoordinatesFromPanels // () -> void
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	b locret_811348C
loc_8113452:
	ldrb r0, [r6,#oAIState_Unk_04]
	cmp r0, #1
	bne loc_811345A
	b loc_8113466
loc_811345A:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
loc_8113466:
	bl object_setCoordinatesFromPanels // () -> void
	bl object_setCollisionPanelsToCurrent
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_CURRENTLY_MOVING_1_BIT
	bl object_setFlag1 // (int a1) -> void
	mov r0, #1
	bl object_setCollisionRegion
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	cmp r0, #8
	beq locret_811348C
	bl sub_801171C
locret_811348C:
	pop {r4,pc}
	thumb_func_end sub_811339A

	thumb_local_start
sub_811348E:
	push {lr}
	ldr r1, off_811349C // =off_81134A0
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_811349C: .word off_81134A0
off_81134A0: .word sub_81134B0+1
	.word sub_8113510+1
	.word sub_81135A4+1
	.word sub_81097B4+1
	thumb_func_end sub_811348E

	thumb_local_start
sub_81134B0:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_81134C4
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_81134C4:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_811350E
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #9
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_17]
	bl object_getFrontDirection // () -> int
	mov r4, r0
	ldrb r6, [r5,#oBattleObject_PanelX]
	add r6, r6, r4
loc_81134E2:
	mov r0, r6
	ldrb r1, [r5,#oBattleObject_Alliance]
	bl sub_800D5F0
	cmp r0, #3
	beq loc_81134F2
	add r6, r6, r4
	b loc_81134E2
loc_81134F2:
	strb r6, [r7,#oAIAttackVars_Unk_16]
	mov r0, #0x1e
	bl object_setCounterTime
	mov r0, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	ldr r4, dword_81135C8 // =0x12810
	bl sub_80C4038
	str r0, [r5,#oBattleObject_ExtraVars+8]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_811350E:
	pop {r4,r6,pc}
	thumb_func_end sub_81134B0

	thumb_local_start
sub_8113510:
	push {r4,r6,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_8113532
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	mov r2, #0
	mov r3, #0
	ldrb r4, [r7,#oAIAttackVars_Unk_0c]
	lsl r4, r4, #8
	ldr r6, [r7,#oAIAttackVars_Unk_08]
	bl sub_80DFF84
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_8113532:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bgt locret_8113588
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	beq loc_8113576
	bl object_getFrontDirection // () -> int
	ldrh r1, [r7,#oAIAttackVars_Unk_12]
	mov r2, #8
	sub r2, r2, r1
	lsl r2, r2, #1
	ldr r1, off_8113590 // =byte_8113594
	add r1, r1, r2
	mov r3, #0
	ldrsb r2, [r1,r3]
	mul r0, r2
	mov r3, #1
	ldrsb r1, [r1,r3]
	ldrb r2, [r7,#oAIAttackVars_Unk_17]
	add r2, r2, r1
	strb r2, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r7,#oAIAttackVars_Unk_16]
	add r2, r2, r0
	strb r2, [r7,#oAIAttackVars_Unk_16]
	cmp r2, #1
	blt loc_8113576
	cmp r2, #6
	bgt loc_8113576
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8113588
loc_8113576:
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	bl sub_80C4072
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8113588:
	pop {r4,r6,pc}
	.word 0
	.byte 0, 0
off_8113590: .word byte_8113594
byte_8113594: .byte 0x0, 0x1, 0x0, 0x1, 0x1, 0x0, 0x0, 0xFF, 0x0, 0xFF, 0x1, 0x0, 0x0, 0x1, 0x0
	.byte 0x1
	thumb_func_end sub_8113510

	thumb_local_start
sub_81135A4:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81135BC
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81135BC:
	pop {pc}
	.byte 0, 0
dword_81135C0: .word 0x280000
dword_81135C4: .word 0xC000000
dword_81135C8: .word 0x12810
off_81135CC: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_811363C+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_811365A+1
	.word sub_81097BA+1
	.word sub_8113330+1
	.word sub_811348E+1
byte_81135FC: .byte 0x0, 0x50, 0x2, 0x0, 0x0, 0x60, 0x2, 0x0, 0x0, 0x70, 0x2, 0x0, 0x0, 0x80
	.byte 0x2, 0x0, 0x0, 0x90, 0x2, 0x0, 0x0, 0x0, 0x3, 0x0
byte_8113614: .byte 0x14, 0x28, 0x50, 0x64, 0x3C, 0x78
byte_811361A: .byte 0xC, 0xA, 0xA, 0x8, 0x8, 0x8
byte_8113620: .byte 0x3C, 0x36, 0x30, 0x2A, 0x30, 0x24
	thumb_func_end sub_81135A4

	thumb_func_start sub_8113626
sub_8113626:
	push {lr}
	mov r3, #0
	bl sub_80B89DC
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #8
	lsl r0, r0, #0x10
	str r0, [r5,#oBattleObject_Z]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	pop {pc}
	thumb_func_end sub_8113626

	thumb_local_start
sub_811363C:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurPhase]
	cmp r0, #0
	bne loc_8113654
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_8113654
	bl sub_80B8A0A
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	bl sub_80C4072
loc_8113654:
	bl sub_80165C2
	pop {pc}
	thumb_func_end sub_811363C

	thumb_local_start
sub_811365A:
	push {r4,r6,lr}
	ldr r1, off_8113668 // =off_811366C
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
off_8113668: .word off_811366C
off_811366C: .word sub_8113674+1
	.word sub_811368A+1
	thumb_func_end sub_811365A

	thumb_local_start
sub_8113674:
	push {lr}
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8113730 // =byte_8113620
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_8113674

	thumb_local_start
sub_811368A:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
	ldrb r0, [r6,#oAIState_Unk_04]
	cmp r0, #2
	blt loc_8113700
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_04]
	bl object_getFlag // () -> int
	ldr r1, dword_8113734 // =0x8000
	tst r0, r1
	beq loc_81136A8
	ldrb r0, [r6,#oAIState_Unk_04]
	b loc_8113700
loc_81136A8:
	bl object_getFlag // () -> int
	ldr r1, dword_8113738 // =0x2000
	tst r0, r1
	beq loc_81136BE
	mov r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	b locret_811372C
loc_81136BE:
	mov r0, #0x64
	mov r1, #0x8b
	mov r2, #0x90
	bl sub_8109630
	cmp r0, #0
	bne loc_81136F0
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+4]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_811373C // =byte_811361A
	ldrb r0, [r0,r1]
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	ldr r0, off_8113740 // =byte_8113620
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_8113744 // =byte_8113614
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	mov r0, #0xa
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0xb
	bl object_setAttack0
	b locret_811372C
loc_81136F0:
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8113748 // =byte_8113620
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	b locret_811372C
loc_8113700:
	add r0, #1
	strb r0, [r6,#oAIState_Unk_04]
	mov r2, #0
	ldr r3, dword_811374C // =0x3800000
	str r2, [r7,#oAIAttackVars_Unk_34]
	str r3, [r7,#oAIAttackVars_Unk_38]
	ldr r1, off_8113750 // =byte_81135FC
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0xa
	bl object_setAttack0
	bl sub_8113330
locret_811372C:
	pop {pc}
	.byte 0, 0
off_8113730: .word byte_8113620
dword_8113734: .word 0x8000
dword_8113738: .word 0x2000
off_811373C: .word byte_811361A
off_8113740: .word byte_8113620
off_8113744: .word byte_8113614
off_8113748: .word byte_8113620
dword_811374C: .word 0x3800000
off_8113750: .word byte_81135FC
byte_8113754: .byte 0x4, 0x19, 0x2, 0x0, 0x19, 0x0, 0x40, 0x1
byte_811375C: .byte 0xB4, 0x0, 0x0, 0x0, 0x32, 0x0, 0xF0, 0x0, 0x1, 0x0, 0x64, 0x0, 0xE
	.byte 0x1, 0x2, 0x0, 0x96, 0x0, 0x2C, 0x1, 0x3, 0x0, 0xC8, 0x0, 0xF0, 0x0
	.byte 0x4, 0x0, 0x96, 0x0, 0x2C, 0x1, 0x5, 0x0, 0xC8, 0x0
byte_8113780: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_811368A

	thumb_local_start
sub_8113840:
	push {r4-r7,lr}
	ldr r1, off_8113850 // =off_8113854
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.byte 0, 0
off_8113850: .word off_8113854
off_8113854: .word sub_811387C+1
	.word sub_811389E+1
	.word sub_81138D8+1
	.word sub_8113910+1
	.word sub_811393A+1
	.word sub_8113984+1
	.word sub_8113A1C+1
	.word sub_8113A76+1
	.word sub_8113AB8+1
	.word sub_81097B4+1
	thumb_func_end sub_8113840

	thumb_local_start
sub_811387C:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	lsl r0, r0, #2
	ldr r1, off_8113890 // =off_8113894
	ldr r0, [r1,r0]
	ldrb r0, [r0]
	strb r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	pop {r4-r7,pc}
off_8113890: .word off_8113894
off_8113894: .word byte_811389C
	.word byte_811389D
byte_811389C: .byte 0x4
byte_811389D: .byte 0x10
	thumb_func_end sub_811387C

	thumb_local_start
sub_811389E:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_81138B8
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #7
	bl sub_80C00C2
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_81138D6
loc_81138B8:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81138D6
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #8
	bl sub_80C00C2
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_81138D6:
	pop {r4,pc}
	thumb_func_end sub_811389E

	thumb_local_start
sub_81138D8:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_811390E
	mov r0, #0x18
	bl object_setCounterTime
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #9
	bl sub_80C00C2
	bl sub_8113C48
	bl sub_8113BAC
	mov r0, #0xba
	bl sound_play // () -> void
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_811390E:
	pop {r4-r7,pc}
	thumb_func_end sub_81138D8

	thumb_local_start
sub_8113910:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8113938
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #6
	bl sub_80C00C2
	mov r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #0x24
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8113938:
	pop {r4-r7,pc}
	thumb_func_end sub_8113910

	thumb_local_start
sub_811393A:
	push {r4-r7,lr}
	bl sub_8113B20
	beq loc_811397A
	mov r2, #0x6c
	strb r0, [r5,r2]
	mov r2, #0x6d
	strb r1, [r5,r2]
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #0xa
	bl sub_80C00C2
	mov r0, #0x6e
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0x6f
	strb r1, [r5,r0]
	bl sub_8113CC8
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	bl sub_8113C84
	mov r0, #0xbd
	bl sound_play // () -> void
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8113982
loc_811397A:
	mov r0, #0x20
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8113982:
	pop {r4-r7,pc}
	thumb_func_end sub_811393A

	thumb_local_start
sub_8113984:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_81139A6
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_8113A12
	mov r0, #0x6f
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #0x14
	bne loc_8113A12
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_81139A6:
	mov r1, #0x6e
	ldrb r0, [r5,r1]
	sub r0, #1
	strb r0, [r5,r1]
	tst r0, r0
	beq loc_81139DC
	push {r0}
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r0, [r5,#oBattleObject_Y]
	ldr r1, [r5,#oBattleObject_YVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Y]
	pop {r0}
	mov r1, #2
	and r0, r1
	beq loc_81139D6
	bl sub_8114192
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	bl sub_80C0136
loc_81139D6:
	bl object_clearCollisionRegion // () -> void
	b loc_8113A12
loc_81139DC:
	mov r2, #0x6c
	ldrb r0, [r5,r2]
	mov r2, #0x6d
	ldrb r1, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r1, #0x67
	ldrb r0, [r5,r1]
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	mov r0, #0x6e
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8113A12:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	pop {r4-r7,pc}
	thumb_func_end sub_8113984

	thumb_local_start
sub_8113A1C:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8113A28
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8113A28:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_8113A56
	mov r0, #0x10
	bl object_setCounterTime
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #0xb
	bl sub_80C00C2
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x6e
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0x1c
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8113A74
loc_8113A56:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne locret_8113A74
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
locret_8113A74:
	pop {r4-r7,pc}
	thumb_func_end sub_8113A1C

	thumb_local_start
sub_8113A76:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8113A9C
	mov r0, #0x6e
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #3
	bne loc_8113A9C
	bl sub_8113BEC
	bl sub_8113C18
	mov r0, #0xb0
	bl sound_play // () -> void
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8113A9C:
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8113AB6
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8113AB6
	mov r0, #0x20
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
locret_8113AB6:
	pop {r4-r7,pc}
	thumb_func_end sub_8113A76

	thumb_local_start
sub_8113AB8:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	ldr r0, off_8113D34 // =byte_8113D84
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, [r5,#oBattleObject_ExtraVars+8]
	mov r1, #6
	bl sub_80C00C2
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl sub_81141E8
	mov r2, #0x64
	ldrb r0, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	mov r2, #0x65
	ldrb r0, [r5,r2]
	strb r0, [r7,#oAIAttackVars_Unk_17]
	strb r0, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r2, #0x64
	ldrb r0, [r5,r2]
	mov r2, #0x65
	ldrb r1, [r5,r2]
	bl sub_81141BC
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_800F2C6
	mov r2, #0x64
	ldrb r0, [r5,r2]
	mov r2, #0x65
	ldrb r1, [r5,r2]
	bl object_removePanelReserve
	thumb_func_end sub_8113AB8

	mov r0, #0x24
	strh r0, [r7,#oAIAttackVars_Unk_00]
	pop {r4-r7,pc}
	thumb_local_start
sub_8113B20:
	push {r4-r7,lr}
	bl object_getFrontDirection // () -> int
	neg r0, r0
	mov r4, r0
	ldr r6, [r7,#oAIAttackVars_Unk_2c]
	mov r0, r6
	tst r0, r0
	beq locret_8113B78
	ldrh r0, [r0,#0x24]
	cmp r0, #0
	beq locret_8113B78
	ldrb r0, [r6,#0x12]
	ldrb r1, [r6,#0x13]
	add r0, r0, r4
	push {r0,r1}
	bl object_getPanelParameters
	mov r1, #0x10
	tst r0, r1
	beq loc_8113B52
	ldr r1, dword_8113D38 // =0xf800000
	tst r0, r1
	bne loc_8113B52
	b loc_8113B6C
loc_8113B52:
	pop {r0,r1}
	ldrb r0, [r6,#0x12]
	ldrb r1, [r6,#0x13]
	sub r0, r0, r4
	push {r0,r1}
	bl object_getPanelParameters
	mov r1, #0x10
	tst r0, r1
	beq loc_8113B74
	ldr r1, dword_8113D38 // =0xf800000
	tst r0, r1
	bne loc_8113B74
loc_8113B6C:
	pop {r0,r1}
	bl sub_8113B7A
	b locret_8113B78
loc_8113B74:
	pop {r0,r1}
	mov r0, #0
locret_8113B78:
	pop {r4-r7,pc}
	thumb_func_end sub_8113B20

	thumb_local_start
sub_8113B7A:
	push {r4-r7,lr}
	push {r0,r1}
	ldr r2, [r7,#oAIAttackVars_Unk_2c]
	tst r2, r2
	beq loc_8113BA8
	ldrh r3, [r2,#0x24]
	cmp r3, #0
	beq loc_8113BA8
	ldrb r2, [r2,#0x12]
	sub r0, r0, r2
	push {r0}
	bl object_getFrontDirection // () -> int
	mov r1, r0
	pop {r0}
	mul r0, r1
	cmp r0, #0
	bgt loc_8113BA2
	mov r0, #0
	b loc_8113BA4
loc_8113BA2:
	mov r0, #1
loc_8113BA4:
	mov r1, #0x67
	strb r0, [r5,r1]
loc_8113BA8:
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_8113B7A

	thumb_local_start
sub_8113BAC:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	ldrb r0, [r4,#oAIData_Version_16]
	ldrb r1, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	orr r0, r1
	orr r0, r2
	mov r4, r0
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	ldr r2, dword_8113D3C // =0x1c0000
	ldrb r3, [r7,#oAIAttackVars_Unk_02]
	ldr r5, [r7,#oAIAttackVars_Unk_2c]
	bl sub_80DD25E
	pop {r4-r7,pc}
	.balign 4, 0x00
	.byte 0x1, 0xFF, 0x7, 0x7, 0x3, 0x0, 0x0, 0x0
	thumb_func_end sub_8113BAC

	thumb_local_start
sub_8113BEC:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r7,#oAIAttackVars_Unk_02]
	mov r3, #0
	ldr r4, dword_8113C10 // =0x707ff01
	ldr r7, dword_8113C14 // =0x3
	bl object_spawnCollisionRegion
	pop {r4-r7,pc}
dword_8113C10: .word 0x707FF01
dword_8113C14: .word 0x3
	thumb_func_end sub_8113BEC

	thumb_local_start
sub_8113C18:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	push {r0}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_8113C44 // =0x16
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
dword_8113C44: .word 0x16
	thumb_func_end sub_8113C18

	thumb_local_start
sub_8113C48:
	push {r4-r7,lr}
	ldrb r2, [r4,#oAIData_Version_16]
	add r2, #0x10
	lsl r2, r2, #0x10
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	orr r0, r2
	push {r0}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, off_8113C80 // =0x55
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	cmp r0, #0
	beq locret_8113C7C
	bl sub_80E060E
locret_8113C7C:
	pop {r4-r7,pc}
	.byte 0, 0
off_8113C80: .word 0x55
	thumb_func_end sub_8113C48

	thumb_local_start
sub_8113C84:
	push {r4-r7,lr}
	cmp r0, #0
	beq locret_8113CC2
	ldrh r1, [r0,#0x24]
	cmp r1, #0
	beq locret_8113CC2
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r4, r0
	pop {r0}
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	ldr r3, dword_8113D40 // =0x110000
	mov r0, r4
	ldr r4, dword_8113CC4 // =0x20056
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	cmp r0, #0
	beq locret_8113CC2
	mov r2, #0x6e
	ldrb r1, [r5,r2]
	add r1, #0x20
	strh r1, [r0,#oBattleObject_Timer]
locret_8113CC2:
	pop {r4-r7,pc}
dword_8113CC4: .word 0x20056
	thumb_func_end sub_8113C84

	thumb_local_start
sub_8113CC8:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_XVelocity]
	str r0, [r5,#oBattleObject_YVelocity]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r3, #0x6c
	ldrb r2, [r5,r3]
	mov r3, #0x6d
	ldrb r3, [r5,r3]
	sub r0, r2, r0
	sub r1, r3, r1
	cmp r0, #0
	beq loc_8113D10
	ldr r2, dword_8113D44 // =0x140000
	cmp r0, #0
	bgt loc_8113CEE
	neg r0, r0
	neg r2, r2
loc_8113CEE:
	str r2, [r5,#oBattleObject_XVelocity]
	mov r2, #2
	mul r0, r2
	mov r2, #0x6e
	strb r0, [r5,r2]
	cmp r1, #0
	bne loc_8113D00
	mov r0, #0
	b loc_8113D0C
loc_8113D00:
	ldr r2, dword_8113D48 // =0x180000
	mul r1, r2
	mov r2, r0
	mov r0, r1
	mov r1, r2
	svc 6
loc_8113D0C:
	str r0, [r5,#oBattleObject_YVelocity]
	b locret_8113D30
loc_8113D10:
	cmp r1, #0
	beq loc_8113D2A
	ldr r2, dword_8113D4C // =0xc0000
	cmp r1, #0
	bgt loc_8113D1E
	neg r1, r1
	neg r2, r2
loc_8113D1E:
	str r2, [r5,#oBattleObject_YVelocity]
	mov r2, #2
	mul r1, r2
	mov r2, #0x6e
	strb r1, [r5,r2]
	b locret_8113D30
loc_8113D2A:
	mov r0, #1
	mov r1, #0x6e
	strb r0, [r5,r1]
locret_8113D30:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8113D34: .word byte_8113D84
dword_8113D38: .word 0xF800000
dword_8113D3C: .word 0x1C0000
dword_8113D40: .word 0x110000
dword_8113D44: .word 0x140000
dword_8113D48: .word 0x180000
dword_8113D4C: .word 0xC0000
off_8113D50: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8113DD8+1
	.word sub_81097B4+1
	.word sub_8113840+1
	.word sub_8114214+1
	.word sub_8109804+1
byte_8113D84: .byte 0x1E, 0x18, 0x12, 0x12, 0x18, 0xC
byte_8113D8A: .byte 0xA, 0xA, 0xA, 0xA, 0xA, 0xA
byte_8113D90: .byte 0x64, 0x78, 0x96, 0xB4, 0x8C, 0xC8, 0x0, 0x0
byte_8113D98: .byte 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0x0, 0x0
byte_8113DA0: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0
byte_8113DA8: .byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0x0, 0x0
byte_8113DB0: .byte 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x0, 0x0
byte_8113DB8: .byte 0x3C, 0x36, 0x30, 0x2A, 0x24, 0x1E, 0x0, 0x0
byte_8113DC0: .byte 0x0, 0x50, 0x1, 0x0, 0x0, 0x60, 0x1, 0x0, 0x0, 0x70, 0x1, 0x0, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x90, 0x1, 0x0, 0x0, 0x0, 0x2, 0x0
	thumb_func_end sub_8113CC8

	thumb_local_start
sub_8113DD8:
	push {r4,r6,lr}
	ldr r1, off_8113DE8 // =off_8113DEC
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8113DE8: .word off_8113DEC
off_8113DEC: .word sub_8113DFC+1
	.word sub_8113E54+1
	.word sub_8113EAC+1
	.word sub_8113F10+1
	thumb_func_end sub_8113DD8

	thumb_local_start
sub_8113DFC:
	push {r4-r7,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_8113E50 // =0xa000
	tst r0, r1
	bne locret_8113E4E
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_8114316
	tst r0, r0
	bne loc_8113E2C
	mov r0, #0x66
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #3
	blt loc_8113E4A
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8113E4E
loc_8113E2C:
	push {r0}
	mov r0, #0x60
	mov r1, #0x91
	mov r2, #0x96
	bl sub_8109630
	cmp r0, #0
	pop {r1}
	bne locret_8113E4E
	str r1, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8113E4E
loc_8113E4A:
	mov r0, #0xc
	strb r0, [r6,#oAIState_Unk_00]
locret_8113E4E:
	pop {r4-r7,pc}
dword_8113E50: .word 0xA000
	thumb_func_end sub_8113DFC

	thumb_local_start
sub_8113E54:
	push {lr}
	bl object_canMove
	beq loc_8113E96
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8113E9C // =byte_8113DB0
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_8113EA0 // =byte_8113D8A
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_8113EA4 // =byte_8113D98
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, off_8113EA8 // =byte_8113DA8
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8113E96:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
off_8113E9C: .word byte_8113DB0
off_8113EA0: .word byte_8113D8A
off_8113EA4: .word byte_8113D98
off_8113EA8: .word byte_8113DA8
	thumb_func_end sub_8113E54

	thumb_local_start
sub_8113EAC:
	push {lr}
	bl object_canMove
	beq loc_8113EF4
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x64
	strb r0, [r5,r2]
	mov r2, #0x65
	strb r1, [r5,r2]
	bl object_reservePanel
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8113F00 // =byte_8113DB8
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_8113F04 // =byte_8113D90
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_8113F08 // =byte_8113D98
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, off_8113F0C // =byte_8113DA0
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b loc_8113EF8
loc_8113EF4:
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
loc_8113EF8:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	.byte 0, 0
off_8113F00: .word byte_8113DB8
off_8113F04: .word byte_8113D90
off_8113F08: .word byte_8113D98
off_8113F0C: .word byte_8113DA0
	thumb_func_end sub_8113EAC

	thumb_local_start
sub_8113F10:
	push {lr}
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, off_8113F58 // =sub_8113F94+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_8113F5C // =byte_8113D84
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x15
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	mov r0, #3
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	bl sub_8114214
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8113F54
	mov r0, #0
	strb r0, [r6]
locret_8113F54:
	pop {pc}
	.balign 4, 0x00
off_8113F58: .word sub_8113F94+1
off_8113F5C: .word byte_8113D84
	thumb_func_end sub_8113F10

	thumb_local_start
sub_8113F60:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	bl object_reservePanel
	bl sub_8113FC0
	tst r0, r0
	bne loc_8113F86
	bl sub_8113FE8
	tst r0, r0
	bne loc_8113F86
	bl sub_8114030
	tst r0, r0
	bne loc_8113F86
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
loc_8113F86:
	push {r0,r1}
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	bl object_removePanelReserve
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_8113F60

	thumb_local_start
sub_8113F94:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	bl sub_8114040
	tst r0, r0
	bne loc_8113FB2
	bl sub_8114060
	tst r0, r0
	bne loc_8113FB2
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
loc_8113FB2:
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	thumb_func_end sub_8113F94

	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_local_start
sub_8113FC0:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x16]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq locret_8113FE6
	push {r0}
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	ldr r3, off_81143A4 // =byte_8114160
	bl sub_81096FA
	mov r4, #0x2c
	ldrb r6, [r5,#0x16]
	pop {r5}
	bl sub_8114074
locret_8113FE6:
	pop {r4-r7,pc}
	thumb_func_end sub_8113FC0

	thumb_local_start
sub_8113FE8:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	ldrb r0, [r5,#0x16]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq loc_8114020
	ldrb r0, [r0,#0x13]
	ldr r3, off_81143A8 // =byte_8114160
	bl sub_81096FA
	mov r7, sp
	bl object_getPanelsIgnoreColumnFiltered
	tst r0, r0
	beq loc_8114020
	push {r0}
	bl GetPositiveSignedRNG2
	pop {r1}
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
loc_8114020:
	add sp, sp, #0x18
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
	thumb_func_end sub_8113FE8

	thumb_local_start
sub_8114030:
	push {r4-r7,lr}
	ldr r3, off_81143AC // =byte_8114160
	bl sub_81096FA
	bl sub_8015C94
	thumb_func_end sub_8114030

	pop {r4-r7,pc}
	.byte 0, 0
	thumb_local_start
sub_8114040:
	push {r4-r7,lr}
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #2
	ldr r4, off_81143B0 // =off_8114100
	ldr r4, [r4,r0]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81143B4 // =byte_8114160
	bl sub_81096FA
	bl sub_8015D80
	pop {r4-r7,pc}
	thumb_func_end sub_8114040

	thumb_local_start
sub_8114060:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81143B8 // =byte_8114160
	bl sub_81096FA
	ldr r4, off_81143BC // =byte_8114150
	bl sub_8015D80
	pop {r4-r7,pc}
	thumb_func_end sub_8114060

	thumb_local_start
sub_8114074:
	push {r4-r7,lr}
	ldr r7, off_8114084 // =off_8019B78
	lsl r4, r4, #2
	ldr r4, [r7,r4]
	bl sub_8114088
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8114084: .word off_8019B78
	thumb_func_end sub_8114074

	thumb_local_start
sub_8114088:
	push {r4-r7,lr}
	sub sp, sp, #0x38
	str r0, [sp,#0x1c]
	str r1, [sp,#0x20]
	str r2, [sp,#0x24]
	str r3, [sp,#0x28]
	mov r0, r6
	bl object_getAllianceDirection
	str r0, [sp,#0x2c]
	mov r6, #0
loc_811409E:
	mov r0, #0
	ldrsb r0, [r4,r0]
	cmp r0, #0x7f
	beq loc_81140E0
	mov r1, #1
	ldrsb r1, [r4,r1]
	ldr r2, [sp,#0x2c]
	mul r0, r2
	ldr r2, [sp,#0x1c]
	add r0, r0, r2
	str r0, [sp,#0x30]
	ldr r2, [sp,#0x20]
	add r1, r1, r2
	str r1, [sp,#0x34]
	ldr r2, [sp,#0x24]
	ldr r3, [sp,#0x28]
	bl object_checkPanelParameters
	tst r0, r0
	beq loc_81140DC
	ldr r0, [sp,#0x34]
	ldrb r1, [r5,#0x13]
	cmp r0, r1
	beq loc_81140DC
	ldr r0, [sp,#0x30]
	ldr r1, [sp,#0x34]
	lsl r1, r1, #4
	orr r0, r1
	add r1, sp, #0
	strb r0, [r1,r6]
	add r6, #1
loc_81140DC:
	add r4, #2
	b loc_811409E
loc_81140E0:
	mov r2, r6
	mov r0, r6
	beq loc_81140FA
	bl GetPositiveSignedRNG2
	mov r1, r6
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	mov r2, r6
loc_81140FA:
	add sp, sp, #0x38
	pop {r4-r7,pc}
	.byte 0, 0
off_8114100: .word byte_8114143
	.word byte_8114146
	.word byte_8114149
	.word byte_8114143
	.word byte_8114140
	.word byte_8114143
	.word byte_8114146
	.word byte_8114143
	.word byte_8114143
	.word byte_8114140
	.word byte_8114140
	.word byte_8114149
	.word byte_8114140
	.word byte_8114140
	.word byte_8114143
	.word byte_8114140
byte_8114140: .byte 0x1, 0x0, 0x7F
byte_8114143: .byte 0xFF, 0x0, 0x7F
byte_8114146: .byte 0x0, 0xFF, 0x7F
byte_8114149: .byte 0x0, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0
byte_8114150: .byte 0x0, 0x1, 0x0, 0xFF, 0x1, 0x0, 0xFF, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
byte_8114160: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8114088

	thumb_func_start sub_8114170
sub_8114170:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x64
	strb r0, [r5,r2]
	mov r2, #0x65
	strb r1, [r5,r2]
	mov r0, #0x66
	mov r1, #0
	strb r1, [r5,r0]
	mov r2, #0
	bl sub_80C0098
	str r0, [r5,#oBattleObject_ExtraVars+8]
	pop {r4-r7,pc}
	thumb_func_end sub_8114170

	thumb_local_start
sub_8114192:
	push {r4-r7,lr}
	bl object_getFlip // () -> int
	lsl r4, r0, #0x18
	ldr r0, dword_81141B8 // =0x41904
	orr r4, r0
	ldr r1, [r5,#oBattleObject_X]
	ldr r2, [r5,#oBattleObject_Y]
	ldr r3, [r5,#oBattleObject_Z]
	ldr r6, dword_81141B0 // =0x83e0
	ldr r7, dword_81141B4 // =0x1010008
	bl sub_80E33FA
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81141B0: .word 0x83E0
dword_81141B4: .word 0x1010008
dword_81141B8: .word 0x41904
	thumb_func_end sub_8114192

	thumb_local_start
sub_81141BC:
	push {r4-r7,lr}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_81141E4 // =0x15
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
dword_81141E4: .word 0x15
	thumb_func_end sub_81141BC

	thumb_local_start
sub_81141E8:
	push {r4-r7,lr}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	mov r2, r0
	pop {r0,r1}
	push {r2}
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, dword_8114210 // =0x14
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
dword_8114210: .word 0x14
	thumb_func_end sub_81141E8

	thumb_local_start
sub_8114214:
	push {lr}
	ldr r1, off_8114224 // =off_8114228
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.balign 4, 0x00
off_8114224: .word off_8114228
off_8114228: .word sub_8114238+1
	.word sub_811427A+1
	.word sub_81142F0+1
	.word sub_81097BA+1
	thumb_func_end sub_8114214

	thumb_local_start
sub_8114238:
	push {lr}
	bl object_canMove
	beq loc_8114270
	ldr r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r1, [r7,#oAIAttackVars_Unk_28]
	mov lr, pc
	bx r1
	tst r0, r0
	beq loc_8114270
	strb r0, [r5,#oBattleObject_FuturePanelX]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	mov r1, #1
	tst r0, r1
	beq loc_8114266
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	strb r0, [r5,#oBattleObject_CurAnim]
loc_8114266:
	ldr r0, [r7,#oAIAttackVars_Unk_30]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_8114278
loc_8114270:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_exitAttackState
locret_8114278:
	pop {pc}
	thumb_func_end sub_8114238

	thumb_local_start
sub_811427A:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #3
	bne loc_81142A0
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	mov r1, #2
	tst r0, r1
	beq loc_81142A0
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0x10
	lsl r3, r3, #0x10
	ldrb r4, [r7,#oAIAttackVars_Unk_0d]
	bl SpawnT4BattleObjectWithId0
loc_81142A0:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_81142EE
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	mov r1, #2
	tst r0, r1
	beq loc_81142C2
	mov r0, #0x34
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	mov r4, #0x10
	lsl r4, r4, #0x10
	add r3, r3, r4
	ldrb r4, [r7,#oAIAttackVars_Unk_0c]
	bl SpawnT4BattleObjectWithId0
loc_81142C2:
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl sub_81096BA
	ldrb r0, [r7,#oAIAttackVars_Unk_03]
	mov r1, #1
	tst r0, r1
	beq loc_81142E6
	ldrb r0, [r7,#oAIAttackVars_Unk_0f]
	strb r0, [r5,#oBattleObject_CurAnim]
loc_81142E6:
	ldr r0, [r7,#oAIAttackVars_Unk_34]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81142EE:
	pop {r4,pc}
	thumb_func_end sub_811427A

	thumb_local_start
sub_81142F0:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8114314
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_CURRENTLY_MOVING_1_BIT
	bl object_setFlag1 // (int a1) -> void
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8114314:
	pop {pc}
	thumb_func_end sub_81142F0

	thumb_local_start
sub_8114316:
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
	add r0, #0xd0
	add r6, r6, r0
	mov r4, #4
	mov r7, #0
loc_8114332:
	ldr r5, [r6]
	tst r5, r5
	beq loc_8114382
	ldrb r0, [r5,#8]
	cmp r0, #8
	beq loc_8114382
	ldrh r0, [r5,#0x28]
	bl sub_800F29C
	cmp r0, #2
	beq loc_8114350
	cmp r0, #0
	beq loc_8114350
	cmp r0, #1
	bne loc_8114382
loc_8114350:
	bl object_getFlag // () -> int
	ldr r1, byte_81143C0 // =0x0
	tst r0, r1
	beq loc_8114382
	ldr r1, byte_81143C4 // =0x0
	tst r0, r1
	bne loc_8114382
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	add r3, sp, #0
	bl sub_811438E
	cmp r7, #0
	beq loc_8114380
	push {r0}
	ldrb r0, [r7,#0x12]
	ldrb r1, [r7,#0x13]
	add r3, sp, #4
	bl sub_811438E
	pop {r1}
	cmp r0, r1
	ble loc_8114382
loc_8114380:
	mov r7, r5
loc_8114382:
	add r6, #4
	sub r4, #1
	bne loc_8114332
	mov r0, r7
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end sub_8114316

	thumb_local_start
sub_811438E:
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
	.byte 0x0, 0x0
off_81143A4: .word byte_8114160
off_81143A8: .word byte_8114160
off_81143AC: .word byte_8114160
off_81143B0: .word off_8114100
off_81143B4: .word byte_8114160
off_81143B8: .word byte_8114160
off_81143BC: .word byte_8114150
byte_81143C0: .byte 0x0, 0x8, 0x0, 0x0
byte_81143C4: .byte 0x0, 0x2, 0x0, 0x0
byte_81143C8: .byte 0x4, 0x1A, 0x1, 0x0, 0x1A, 0x0, 0x20, 0x1
byte_81143D0: .byte 0x82, 0x0, 0x0, 0x0, 0x3C, 0x0, 0xAA, 0x0, 0x1, 0x0, 0x50, 0x0, 0xFA
	.byte 0x0, 0x2, 0x0, 0x8C, 0x0, 0x18, 0x1, 0x3, 0x0, 0xAA, 0x0, 0xC8, 0x0
	.byte 0x4, 0x0, 0x64, 0x0, 0x18, 0x1, 0x5, 0x0, 0xC8, 0x0
byte_81143F4: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_811438E

	thumb_local_start
sub_81144B4:
	push {lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r0,#oCollisionData_FlagsFromCollision]
	tst r0, r0
	beq loc_81144C8
	ldr r1, dword_81146F8 // =0xc000000
	tst r0, r1
	beq loc_81144C8
	bl object_clearCollisionRegion // () -> void
loc_81144C8:
	ldr r1, off_81144D4 // =off_81144D8
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
off_81144D4: .word off_81144D8
off_81144D8: .word sub_81144E8+1
	.word sub_811456A+1
	.word sub_8114612+1
	.word sub_81146BC+1
	thumb_func_end sub_81144B4

	thumb_local_start
sub_81144E8:
	push {r4-r7,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_81144FA
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	bl object_setCollisionRegion
loc_81144FA:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	mov r1, #0x10
	and r0, r1
	bne loc_8114510
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_8114510:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_811455C
	mov r0, #0x72
	mov r1, #0
	strh r1, [r5,r0]
	bl sub_802D234
	cmp r0, #6
	beq loc_811452C
	mov r0, #0x1e
	bl object_setCounterTime
loc_811452C:
	ldr r0, dword_81146FC // =0x160000
	mov r1, #1
	bl sub_8114FB8
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, r5
	bl sub_80BC998
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
	mov r0, #0xe1
	bl sound_play // () -> void
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x78
	strb r0, [r5,r2]
	mov r2, #0x79
	strb r1, [r5,r2]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	b locret_8114568
loc_811455C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne locret_8114568
	bl sub_8114694
locret_8114568:
	pop {r4-r7,pc}
	thumb_func_end sub_81144E8

	thumb_local_start
sub_811456A:
	push {r4-r7,lr}
	mov r0, #0x84
	ldrh r1, [r5,r0]
	sub r1, #1
	strh r1, [r5,r0]
	cmp r1, #0
	bgt loc_8114586
	mov r1, #0
	strh r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_ExtraVars+0x1c]
	bl sub_80BC9BE
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
loc_8114586:
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r0, off_8114700 // =math_sinTable
	mov r1, #0x6e
	ldrh r1, [r5,r1]
	lsr r1, r1, #8
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	ldr r1, dword_81146FC // =0x160000
	lsr r1, r1, #0x10
	mul r0, r1
	lsl r0, r0, #8
	str r0, [r5,#oBattleObject_Z]
	mov r1, #0x64
	ldrh r0, [r5,r1]
	mov r1, #0x66
	ldrh r1, [r5,r1]
	bl sub_8114F52
	add r0, #1
	mov r1, #0x68
	ldrb r2, [r5,r1]
	cmp r0, r2
	beq loc_81145BE
	strb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,r1]
loc_81145BE:
	mov r0, #0x6c
	ldrh r0, [r5,r0]
	mov r1, #0x6e
	ldrh r2, [r5,r1]
	add r0, r0, r2
	strh r0, [r5,r1]
	mov r1, #0x64
	ldrh r0, [r5,r1]
	add r0, #1
	strh r0, [r5,r1]
	mov r1, #0x66
	ldrh r1, [r5,r1]
	cmp r0, r1
	bne loc_8114600
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, r5
	bl sub_80BC998
	mov r1, #0x80
	str r0, [r5,r1]
	mov r0, #0xbf
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_8114600:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	bl sub_81146CC
	bl sub_8115028
	thumb_func_end sub_811456A

	pop {r4-r7,pc}
	thumb_local_start
sub_8114612:
	push {r4-r7,lr}
	mov r0, #0x84
	ldrh r1, [r5,r0]
	sub r1, #1
	strh r1, [r5,r0]
	cmp r1, #0
	bgt loc_811462E
	mov r1, #0
	strh r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_ExtraVars+0x1c]
	bl sub_80BC9BE
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
loc_811462E:
	mov r0, #0x86
	ldrh r1, [r5,r0]
	sub r1, #1
	strh r1, [r5,r0]
	cmp r1, #0
	bgt locret_8114692
	mov r1, #0
	strh r1, [r5,r0]
	mov r0, #0x80
	ldr r0, [r5,r0]
	bl sub_80BC9BE
	mov r0, #0
	mov r1, #0x80
	str r0, [r5,r1]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
	mov r2, #0x6a
	ldrb r0, [r5,r2]
	mov r2, #0x6b
	ldrb r1, [r5,r2]
	bl object_removePanelReserve
	mov r2, #0x6a
	ldrb r0, [r5,r2]
	mov r2, #0x6b
	ldrb r1, [r5,r2]
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl sub_801DD34
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x61
	mov r1, #1
	strb r1, [r5,r0]
	bl object_clearCollisionRegion // () -> void
	mov r0, #0x1e
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
locret_8114692:
	pop {r4-r7,pc}
	thumb_func_end sub_8114612

	thumb_local_start
sub_8114694:
	push {r4-r7,lr}
	bl object_getFrontDirection // () -> int
	mov r6, r0
	mov r4, #0
loc_811469E:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r3, r6
	mul r3, r4
	add r0, r0, r3
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #1
	bl sub_8109660
	add r4, #1
	cmp r4, #3
	bne loc_811469E
	pop {r4-r7,pc}
	thumb_func_end sub_8114694

	thumb_local_start
sub_81146BC:
	push {r4-r7,lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_81097BA
	pop {r4-r7,pc}
	thumb_func_end sub_81146BC

	thumb_local_start
sub_81146CC:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x78
	ldrb r2, [r5,r2]
	mov r3, #0x79
	ldrb r3, [r5,r3]
	cmp r0, r2
	bne loc_81146E4
	cmp r1, r3
	bne loc_81146E4
	b locret_81146F6
loc_81146E4:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x78
	strb r0, [r5,r2]
	mov r2, #0x79
	strb r1, [r5,r2]
	mov r0, #1
	bl object_setCollisionRegion
locret_81146F6:
	pop {r4-r7,pc}
dword_81146F8: .word 0xC000000
dword_81146FC: .word 0x160000
off_8114700: .word math_sinTable
	.word 0, 0
	.byte 0, 0, 0, 0
off_8114710: .word sub_8016380+1
	.word sub_8114FAA+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_81147F4+1
	.word sub_8114EFC+1
	.word sub_81144B4+1
	.word sub_8109952+1
	.word sub_8114E44+1
byte_8114744: .byte 0x1C, 0x0, 0x1A, 0x0, 0x18, 0x0, 0x16, 0x0, 0x16, 0x0, 0x16
	.byte 0x0
byte_8114750: .byte 0x3C, 0x5A, 0x78, 0x96, 0x78, 0xB4, 0x0, 0x0
byte_8114758: .byte 0xA, 0x14, 0x1E, 0x28, 0x1E, 0x32, 0x0, 0x0
byte_8114760: .byte 0x18, 0x0, 0x16, 0x0, 0x14, 0x0, 0x12, 0x0, 0x12, 0x0, 0x12
	.byte 0x0
byte_811476C: .byte 0x8, 0x10, 0x18, 0x20, 0x28, 0xFF, 0xFF, 0x7, 0xE, 0x15
	.byte 0x1C, 0x23, 0xFF, 0xFF, 0x6, 0xC, 0x12, 0x18, 0x1E, 0xFF
	.byte 0xFF, 0x6, 0xC, 0x12, 0x18, 0x1E, 0xFF, 0xFF, 0x6, 0xC
	.byte 0x12, 0x18, 0x1E, 0xFF, 0xFF, 0x6, 0xC, 0x12, 0x18, 0x1E
	.byte 0xFF, 0xFF, 0x0, 0x0
byte_8114798: .byte 0x6, 0xC, 0x12, 0x18, 0x1E, 0x24, 0x2A, 0x5, 0xA, 0xF
	.byte 0x14, 0x19
	.word 0x804231E
	.byte 0xC, 0x10, 0x14, 0x18, 0x1C, 0x4, 0x8, 0xC, 0x10, 0x14
	.byte 0x18, 0x1C, 0x4, 0x8, 0xC, 0x10, 0x14, 0x18, 0x1C, 0x4
	.byte 0x8, 0xC, 0x10, 0x14, 0x18, 0x1C, 0x0, 0x0
byte_81147C4: .byte 0x28, 0x0, 0x28, 0x0, 0x23, 0x0, 0x23, 0x0, 0x1E, 0x0, 0x1E
	.byte 0x0, 0x1E, 0x0, 0x1E, 0x0, 0x1E, 0x0, 0x1E, 0x0, 0x1E, 0x0
	.byte 0x1E, 0x0
byte_81147DC: .byte 0x2A, 0x0, 0x2A, 0x0, 0x23, 0x0, 0x23, 0x0, 0x1C, 0x0, 0x1C
	.byte 0x0, 0x1C, 0x0, 0x1C, 0x0, 0x1C, 0x0, 0x1C, 0x0, 0x1C, 0x0
	.byte 0x1C, 0x0
	thumb_func_end sub_81146CC

	thumb_local_start
sub_81147F4:
	push {r4-r7,lr}
	mov r0, #0x61
	ldrb r1, [r5,r0]
	tst r1, r1
	beq loc_8114806
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_8114806:
	ldr r1, off_8114814 // =off_8114818
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8114814: .word off_8114818
off_8114818: .word sub_8114824+1
	.word sub_8114856+1
	.word sub_8114910+1
	thumb_func_end sub_81147F4

	thumb_local_start
sub_8114824:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0x7c
	mov r2, #0x80
	str r0, [r5,r1]
	str r0, [r5,r2]
	bl sub_8114CF2
	tst r0, r0
	beq loc_8114850
	mov r0, #0x74
	mov r1, #0x97
	mov r2, #0x9c
	bl sub_8109630
	cmp r0, #0
	bne loc_8114850
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8114854
loc_8114850:
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
locret_8114854:
	pop {r4-r7,pc}
	thumb_func_end sub_8114824

	thumb_local_start
sub_8114856:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_81149E0
	tst r0, r0
	beq loc_81148EC
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #2
	ldr r0, off_8114908 // =byte_81147C4
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #0x84
	strh r1, [r5,r2]
	ldrh r1, [r0,#2]
	mov r2, #0x86
	strh r1, [r5,r2]
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_811490C // =byte_8114750
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_8114900 // =byte_8114744
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	mov r1, #0x70
	strh r0, [r5,r1]
	push {r4}
	mov r2, #0x62
	ldrb r0, [r5,r2]
	mov r2, #0x63
	ldrb r1, [r5,r2]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	mov r0, #0x34
	add r0, r0, r5
	mov r4, #0x70
	ldrh r4, [r5,r4]
	bl sub_8114F6A
	str r0, [r5,#oBattleObject_XVelocity]
	str r1, [r5,#oBattleObject_YVelocity]
	str r2, [r5,#oBattleObject_ZVelocity]
	mov r0, #0x6c
	strh r3, [r5,r0]
	pop {r4}
	mov r0, #0
	mov r1, #0x64
	strh r0, [r5,r1]
	mov r0, #0x70
	ldrh r0, [r5,r0]
	mov r1, #0x66
	strh r0, [r5,r1]
	mov r0, #0x6e
	mov r1, #0
	strh r1, [r5,r0]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r1, #0x68
	strb r0, [r5,r1]
	ldr r0, dword_8114904 // =0x160000
	mov r1, #0
	bl sub_8114FB8
	mov r0, #0xc
	bl object_setAttack0
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	bl sub_8115028
	b loc_81148F0
loc_81148EC:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
loc_81148F0:
	bl sub_800F2C6
	bl sub_8115074
	pop {r4-r7,pc}
	.word 0
	.byte 0, 0
off_8114900: .word byte_8114744
dword_8114904: .word 0x160000
off_8114908: .word byte_81147C4
off_811490C: .word byte_8114750
	thumb_func_end sub_8114856

	thumb_local_start
sub_8114910:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl sub_8114AF0
	tst r0, r0
	beq loc_81149B4
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #2
	ldr r0, off_81149DC // =byte_81147DC
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #0x84
	strh r1, [r5,r2]
	ldrh r1, [r0,#2]
	mov r2, #0x86
	strh r1, [r5,r2]
	ldr r0, off_81149D8 // =byte_8114760
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	mov r1, #0x70
	strh r0, [r5,r1]
	push {r4}
	mov r2, #0x62
	ldrb r0, [r5,r2]
	mov r2, #0x63
	ldrb r1, [r5,r2]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	mov r0, #0x34
	add r0, r0, r5
	mov r4, #0x70
	ldrh r4, [r5,r4]
	bl sub_8114F6A
	str r0, [r5,#oBattleObject_XVelocity]
	str r1, [r5,#oBattleObject_YVelocity]
	str r2, [r5,#oBattleObject_ZVelocity]
	mov r0, #0x6c
	strh r3, [r5,r0]
	pop {r4}
	mov r0, #0
	mov r1, #0x64
	strh r0, [r5,r1]
	mov r0, #0x70
	ldrh r0, [r5,r0]
	mov r1, #0x66
	strh r0, [r5,r1]
	mov r0, #0x6e
	mov r1, #0
	strh r1, [r5,r0]
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r1, #0x68
	strb r0, [r5,r1]
	ldrb r1, [r4,#oAIData_Version_16]
	mov r0, #0x5a
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_81149D0 // =byte_8114750
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_81149D4 // =byte_8114758
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0
	strh r0, [r7,#oAIAttackVars_Unk_12]
	bl object_clearCollisionRegion // () -> void
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	bl sub_8115028
	b loc_81149B8
loc_81149B4:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
loc_81149B8:
	bl sub_800F2C6
	bl sub_8115074
	pop {r4-r7,pc}
	.word 0, 0, 0
	.byte 0, 0
off_81149D0: .word byte_8114750
off_81149D4: .word byte_8114758
off_81149D8: .word byte_8114760
off_81149DC: .word byte_81147DC
	thumb_func_end sub_8114910

	thumb_local_start
sub_81149E0:
	push {r4-r7,lr}
	bl sub_8114A4A
	tst r0, r0
	bne loc_8114A02
	bl sub_8114A64
	tst r0, r0
	bne loc_8114A02
	bl sub_8114A84
	tst r0, r0
	bne loc_8114A02
	bl sub_8114AA4
	tst r0, r0
	beq locret_8114A48
loc_8114A02:
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl sub_8114AC4
	tst r0, r0
	beq locret_8114A48
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6a
	strb r0, [r5,r2]
	mov r2, #0x6b
	strb r1, [r5,r2]
	bl object_reservePanel
	pop {r0,r1}
	mov r2, #0x62
	strb r0, [r5,r2]
	mov r2, #0x63
	strb r1, [r5,r2]
	push {r0,r1}
	bl sub_8114D74
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, r5
	bl sub_80BC998
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
	mov r0, #0xe1
	bl sound_play // () -> void
	pop {r0,r1}
locret_8114A48:
	pop {r4-r7,pc}
	thumb_func_end sub_81149E0

	thumb_local_start
sub_8114A4A:
	push {r4-r7,lr}
	ldr r3, off_8114A60 // =byte_8114C30
	bl sub_81096FA
	bl sub_8114C90
	pop {r4-r7,pc}
	.word 0
	.byte 0, 0, 0, 0
off_8114A60: .word byte_8114C30
	thumb_func_end sub_8114A4A

	thumb_local_start
sub_8114A64:
	push {r4-r7,lr}
	ldr r3, off_8114A80 // =byte_8114C30
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.word 0, 0, 0
	.byte 0, 0
off_8114A80: .word byte_8114C30
	thumb_func_end sub_8114A64

	thumb_local_start
sub_8114A84:
	push {r4-r7,lr}
	ldr r3, off_8114AA0 // =byte_8114C40
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.word 0, 0, 0
	.byte 0, 0
off_8114AA0: .word byte_8114C40
	thumb_func_end sub_8114A84

	thumb_local_start
sub_8114AA4:
	push {r4-r7,lr}
	ldr r3, off_8114AC0 // =byte_8114C50
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.word 0, 0, 0
	.byte 0, 0
off_8114AC0: .word byte_8114C50
	thumb_func_end sub_8114AA4

	thumb_local_start
sub_8114AC4:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_8114AE0 // =byte_8114C60
	bl sub_81096FA
	ldr r4, off_8114AE4 // =byte_8114AE8
	bl sub_8015D80
	pop {r4-r7,pc}
	.word 0
	.byte 0, 0, 0, 0
off_8114AE0: .word byte_8114C60
off_8114AE4: .word byte_8114AE8
byte_8114AE8: .byte 0x1, 0x0, 0xFF, 0x0, 0x7F, 0x0, 0x0, 0x0
	thumb_func_end sub_8114AC4

	thumb_local_start
sub_8114AF0:
	push {r4-r7,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_8114BB0 // =0x2000
	tst r0, r1
	bne loc_8114B54
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq locret_8114BA2
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldrb r2, [r0,#0x16]
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	bl sub_8114BB4
	tst r0, r0
	beq loc_8114B54
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6a
	strb r0, [r5,r2]
	mov r2, #0x6b
	strb r1, [r5,r2]
	pop {r0,r1}
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl sub_8114D8E
	mov r2, #0x62
	strb r0, [r5,r2]
	mov r2, #0x63
	strb r1, [r5,r2]
	push {r0,r1}
	bl sub_8114DAC
	pop {r0,r1}
	b locret_8114BA2
loc_8114B54:
	bl sub_8114BF0
	tst r0, r0
	beq locret_8114BA2
	push {r0,r1}
	bl sub_8114C04
	tst r0, r0
	bne loc_8114B6C
	pop {r0,r1}
	mov r0, #0
	b locret_8114BA2
loc_8114B6C:
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6a
	strb r0, [r5,r2]
	mov r2, #0x6b
	strb r1, [r5,r2]
	pop {r0,r1}
	mov r2, #0x62
	strb r0, [r5,r2]
	mov r2, #0x63
	strb r1, [r5,r2]
	pop {r0,r1}
	push {r0,r1}
	strb r0, [r5,#oBattleObject_PanelX]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	bl sub_8114DAC
	pop {r0,r1}
locret_8114BA2:
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
dword_8114BB0: .word 0x2000
	thumb_func_end sub_8114AF0

	thumb_local_start
sub_8114BB4:
	push {r4-r7,lr}
	mov r3, #5
	mul r2, r3
	add r2, #1
	ldr r4, off_8114BE0 // =byte_8114BE4
	cmp r0, r2
	bne loc_8114BC4
	ldr r4, off_8114BD0 // =byte_8114BD4
loc_8114BC4:
	ldr r3, off_8114BEC // =byte_8114C70
	bl sub_81096FA
	bl sub_8015D80
	pop {r4-r7,pc}
off_8114BD0: .word byte_8114BD4
byte_8114BD4: .byte 0x2, 0x0, 0xFE, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8114BE0: .word byte_8114BE4
byte_8114BE4: .byte 0x1, 0x0, 0xFF, 0x0, 0x7F, 0x0, 0x0, 0x0
off_8114BEC: .word byte_8114C70
	thumb_func_end sub_8114BB4

	thumb_local_start
sub_8114BF0:
	push {r4-r7,lr}
	ldr r3, off_8114C00 // =byte_8114C70
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.byte 0, 0
off_8114C00: .word byte_8114C70
	thumb_func_end sub_8114BF0

	thumb_local_start
sub_8114C04:
	push {r4-r7,lr}
	ldr r3, off_8114C20 // =byte_8114C80
	bl sub_81096FA
	ldr r4, off_8114C24 // =byte_8114C28
	bl sub_8015D80
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_8114C20: .word byte_8114C80
off_8114C24: .word byte_8114C28
byte_8114C28: .byte 0x2, 0x0, 0xFE, 0x0, 0x7F, 0x0, 0x0, 0x0
byte_8114C30: .byte 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
byte_8114C40: .byte 0x0, 0x0, 0x80, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x80, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
byte_8114C50: .byte 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x10, 0x0
	.byte 0x0, 0x0
byte_8114C60: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
byte_8114C70: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xC
byte_8114C80: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8114C04

	thumb_local_start
sub_8114C90:
	push {r7,lr}
	sub sp, sp, #0x18
	add r7, sp, #0
	bl sub_8114CBC
	tst r0, r0
	beq loc_8114CB4
	mov r7, r0
	bl GetPositiveSignedRNG2
	mov r1, r7
	svc 6
	add r0, sp, #0
	ldrb r0, [r0,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	b loc_8114CB8
loc_8114CB4:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
loc_8114CB8:
	add sp, sp, #0x18
	pop {r7,pc}
	thumb_func_end sub_8114C90

	thumb_local_start
sub_8114CBC:
	push {r4,r6,lr}
	mov r6, #0
	mov r1, #3
loc_8114CC2:
	mov r0, #6
loc_8114CC4:
	push {r0-r3,r6,r7}
	bl object_getPanelParameters
	mov r4, r0
	pop {r0-r3,r6,r7}
	tst r4, r3
	bne loc_8114CE6
	and r4, r2
	cmp r4, r2
	bne loc_8114CE6
	ldrb r4, [r5,#oBattleObject_PanelY]
	cmp r1, r4
	beq loc_8114CE6
	lsl r4, r1, #4
	orr r4, r0
	strb r4, [r7,r6]
	add r6, #1
loc_8114CE6:
	sub r0, #1
	bne loc_8114CC4
	sub r1, #1
	bne loc_8114CC2
	mov r0, r6
	pop {r4,r6,pc}
	thumb_func_end sub_8114CBC

	thumb_local_start
sub_8114CF2:
	push {r4-r7,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_811509C // =0x8000
	tst r0, r1
	beq loc_8114D02
	mov r0, #0
	b locret_8114D0E
loc_8114D02:
	ldr r0, off_8114D10 // =off_8114D14
	ldrb r1, [r4,#oAIData_Version_16]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
locret_8114D0E:
	pop {r4-r7,pc}
off_8114D10: .word off_8114D14
off_8114D14: .word sub_8114D2C+1
	.word sub_8114D44+1
	.word sub_8114D2C+1
	.word sub_8114D44+1
	.word sub_8114D2C+1
	.word sub_8114D44+1
	thumb_func_end sub_8114CF2

	thumb_local_start
sub_8114D2C:
	push {r4-r7,lr}
	mov r0, #0
	mov r2, #0x69
	ldrb r1, [r5,r2]
	add r1, #1
	strb r1, [r5,r2]
	cmp r1, #3
	ble locret_8114D42
	mov r1, #0
	strb r1, [r5,r2]
	mov r0, #1
locret_8114D42:
	pop {r4-r7,pc}
	thumb_func_end sub_8114D2C

	thumb_local_start
sub_8114D44:
	push {r4-r7,lr}
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	ldr r1, off_8114D60 // =byte_8114D64
	ldrb r0, [r1,r0]
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0, 0, 0
off_8114D60: .word byte_8114D64
byte_8114D64: .byte 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0
	thumb_func_end sub_8114D44

	thumb_local_start
sub_8114D74:
	push {r4-r7,lr}
	bl object_getFrontDirection // () -> int
	mov r3, #0
	ldrb r1, [r5,#oBattleObject_PanelX]
	mov r2, #0x62
	ldrb r2, [r5,r2]
	sub r1, r2, r1
	cmp r0, r1
	beq loc_8114D8A
	mov r3, #1
loc_8114D8A:
	strb r3, [r5,#oBattleObject_DirectionFlip]
	pop {r4-r7,pc}
	thumb_func_end sub_8114D74

	thumb_local_start
sub_8114D8E:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldr r1, [r7,#oAIAttackVars_Unk_2c]
	ldrb r1, [r1,#0x12]
	sub r0, r1, r0
	cmp r0, #0
	bge loc_8114DA4
	ldrb r0, [r5,#oBattleObject_PanelX]
	sub r0, #2
	ldrb r1, [r5,#oBattleObject_PanelY]
	b locret_8114DAA
loc_8114DA4:
	ldrb r0, [r5,#oBattleObject_PanelX]
	add r0, #2
	ldrb r1, [r5,#oBattleObject_PanelY]
locret_8114DAA:
	pop {r4-r7,pc}
	thumb_func_end sub_8114D8E

	thumb_local_start
sub_8114DAC:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	bl object_getFrontDirection // () -> int
	mov r3, #0
	ldrb r1, [r5,#oBattleObject_PanelX]
	mov r2, #0x62
	ldrb r2, [r5,r2]
	sub r1, r2, r1
	asr r1, r1, #1
	cmp r0, r1
	beq loc_8114DC8
	mov r3, #1
loc_8114DC8:
	strb r3, [r5,#oBattleObject_DirectionFlip]
	pop {r4-r7,pc}
	thumb_func_end sub_8114DAC

	push {r4-r7,lr}
	mov r6, r0
	mov r7, r1
	bl object_getPanelParameters
	mov r1, #0x10
	and r0, r1
	beq locret_8114DF0
	mov r0, r6
	mov r1, r7
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	mov r4, #0x50
	bl SpawnT4BattleObjectWithId0
locret_8114DF0:
	pop {r4-r7,pc}
	thumb_func_start sub_8114DF2
sub_8114DF2:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0x84
	strh r0, [r5,r1]
	mov r1, #0x86
	strh r0, [r5,r1]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x14]
	mov r0, #0x69
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0x61
	mov r1, #0
	ldrb r1, [r5,r0]
	mov r1, #0x3a
	mov r2, #2
	mov r3, #3
	bl sub_801A082
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x6a
	strb r0, [r5,r2]
	mov r2, #0x6b
	strb r1, [r5,r2]
	mov r0, #0
	mov r1, #0x7c
	mov r2, #0x80
	str r0, [r5,r1]
	str r0, [r5,r2]
	pop {r4-r7,pc}
	thumb_func_end sub_8114DF2

	thumb_func_start sub_8114E30
sub_8114E30:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Version_16]
	ldr r1, off_8114E40 // =byte_8114758
	ldrb r0, [r1,r0]
	strh r0, [r5,#oBattleObject_StaminaDamageCounterDisabler]
	pop {r4-r7,pc}
	.byte 0, 0
off_8114E40: .word byte_8114758
	thumb_func_end sub_8114E30

	thumb_local_start
sub_8114E44:
	push {r4-r7,lr}
	mov r0, #0x84
	ldrh r1, [r5,r0]
	sub r1, #1
	strh r1, [r5,r0]
	cmp r1, #0
	bgt loc_8114E60
	mov r1, #0
	strh r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_ExtraVars+0x1c]
	bl sub_80BC9BE
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
loc_8114E60:
	mov r0, #1
	bl object_setCollisionRegion
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_XVelocity]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r0, off_81150A0 // =math_sinTable
	mov r1, #0x6e
	ldrh r1, [r5,r1]
	lsr r1, r1, #8
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	ldr r1, dword_81150A4 // =0x160000
	lsr r1, r1, #0x10
	mul r0, r1
	lsl r0, r0, #8
	str r0, [r5,#oBattleObject_Z]
	mov r1, #0x64
	ldrh r0, [r5,r1]
	mov r1, #0x66
	ldrh r1, [r5,r1]
	bl sub_8114F52
	add r0, #1
	mov r1, #0x68
	ldrb r2, [r5,r1]
	cmp r0, r2
	beq loc_8114E9E
	strb r0, [r5,#oBattleObject_CurAnim]
	strb r0, [r5,r1]
loc_8114E9E:
	mov r0, #0x6c
	ldrh r0, [r5,r0]
	mov r1, #0x6e
	ldrh r2, [r5,r1]
	add r0, r0, r2
	strh r0, [r5,r1]
	mov r1, #0x64
	ldrh r0, [r5,r1]
	add r0, #1
	strh r0, [r5,r1]
	mov r1, #0x66
	ldrh r1, [r5,r1]
	cmp r0, r1
	bne loc_8114EEE
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, r5
	bl sub_80BC998
	mov r1, #0x80
	str r0, [r5,r1]
	mov r0, #0xbf
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	mov r0, #0x17
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	mov r2, #0x6a
	ldrb r0, [r5,r2]
	mov r2, #0x6b
	ldrb r1, [r5,r2]
	bl object_removePanelReserve
loc_8114EEE:
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	bl sub_8115028
	thumb_func_end sub_8114E44

	pop {r4-r7,pc}
	thumb_local_start
sub_8114EFC:
	push {r4-r7,lr}
	mov r0, #0x84
	ldrh r1, [r5,r0]
	sub r1, #1
	strh r1, [r5,r0]
	cmp r1, #0
	bgt loc_8114F18
	mov r1, #0
	strh r1, [r5,r0]
	ldr r0, [r5,#oBattleObject_ExtraVars+0x1c]
	bl sub_80BC9BE
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+0x1c]
loc_8114F18:
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	mov r1, #0x10
	and r0, r1
	bne loc_8114F2E
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
loc_8114F2E:
	mov r0, #0x86
	ldrh r1, [r5,r0]
	sub r1, #1
	strh r1, [r5,r0]
	cmp r1, #0
	bgt locret_8114F50
	mov r1, #0
	strh r1, [r5,r0]
	mov r0, #0x80
	ldr r0, [r5,r0]
	bl sub_80BC9BE
	mov r0, #0
	mov r1, #0x80
	str r0, [r5,r1]
	bl sub_81097B4
locret_8114F50:
	pop {r4-r7,pc}
	thumb_func_end sub_8114EFC

	thumb_func_start sub_8114F52
sub_8114F52:
	push {lr}
	push {r0}
	mov r0, r1
	mov r1, #4
	svc 6
	mov r1, r0
	pop {r0}
	svc 6
	cmp r0, #4
	bne locret_8114F68
	mov r0, #3
locret_8114F68:
	pop {pc}
	thumb_func_end sub_8114F52

	thumb_func_start sub_8114F6A
sub_8114F6A:
	push {r5-r7,lr}
	ldr r5, [r0]
	sub r1, r1, r5
	ldr r5, [r0,#4]
	sub r2, r2, r5
	ldr r5, [r0,#8]
	sub r3, r3, r5
	push {r2,r3}
	mov r0, r1
	mov r1, r4
	svc 6
	pop {r2,r3}
	push {r0}
	push {r3}
	mov r0, r2
	mov r1, r4
	svc 6
	pop {r3}
	push {r0}
	mov r0, r3
	mov r1, r4
	svc 6
	push {r0}
	mov r0, #0x80
	lsl r0, r0, #8
	mov r1, r4
	svc 6
	mov r3, r0
	pop {r2}
	pop {r1}
	pop {r0}
	pop {r5-r7,pc}
	thumb_func_end sub_8114F6A

	thumb_local_start
sub_8114FAA:
	push {r4-r7,lr}
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	bl sub_80165B8
	pop {r4-r7,pc}
	thumb_func_end sub_8114FAA

	thumb_local_start
sub_8114FB8:
	push {r4-r7,lr}
	ldrb r2, [r4,#oAIData_Version_16]
	mov r6, r0
	mov r7, r2
	mov r0, #0
loc_8114FC2:
	push {r0,r1}
	ldr r2, off_811500C // =off_8115010
	lsl r3, r1, #2
	ldr r2, [r2,r3]
	ldrb r4, [r2,r0]
	cmp r4, #0xff
	beq loc_8114FEC
	ldr r2, off_8115000 // =off_8115004
	lsl r1, r1, #2
	ldr r2, [r2,r1]
	mov r3, #7
	mul r3, r7
	add r3, r3, r0
	ldrb r3, [r2,r3]
	mov r0, #0x62
	ldrb r0, [r5,r0]
	mov r1, #0x63
	ldrb r1, [r5,r1]
	mov r2, r7
	bl sub_80BE6D8
loc_8114FEC:
	pop {r0,r1}
	add r0, #1
	cmp r0, #7
	blt loc_8114FC2
	pop {r4-r7,pc}
	.word 0, 0
	.byte 0, 0
off_8115000: .word off_8115004
off_8115004: .word byte_811476C
	.word byte_8114798
off_811500C: .word off_8115010
off_8115010: .word byte_8115018
	.word byte_811501F
byte_8115018: .byte 0x0, 0x0, 0x0, 0x10, 0x1, 0xFF, 0xFF
byte_811501F: .byte 0x0, 0x0, 0x10, 0x0, 0x0, 0x10, 0x1, 0x0, 0x0
	thumb_func_end sub_8114FB8

	thumb_local_start
sub_8115028:
	push {r4-r7,lr}
	ldr r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_Y]
	ldr r2, [r5,#oBattleObject_XVelocity]
	add r0, r0, r2
	ldr r2, [r5,#oBattleObject_Z]
	bl sub_800E258
	push {r0,r1}
	bl object_getPanelParameters
	ldr r1, dword_81150A8 // =0x800000
	tst r0, r1
	pop {r0,r1}
	beq locret_811504A
	bl sub_811504C
locret_811504A:
	pop {r4-r7,pc}
	thumb_func_end sub_8115028

	thumb_local_start
sub_811504C:
	push {r4-r7,lr}
	push {r0,r1}
	ldr r4, dword_811506C // =0x605ff01
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	ldrb r2, [r7,#oAIAttackVars_Unk_02]
	ldr r7, dword_8115070 // =0x0
	mov r3, #0
	pop {r0,r1}
	bl object_spawnCollisionRegion
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811506C: .word 0x605FF01
dword_8115070: .word 0x0
	thumb_func_end sub_811504C

	thumb_local_start
sub_8115074:
	push {r4-r7,lr}
	mov r0, #0x61
	ldrb r1, [r5,r0]
	tst r1, r1
	beq locret_8115096
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0
	mov r1, #0
	bl sub_801DC7C
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_8016934
locret_8115096:
	pop {r4-r7,pc}
	thumb_func_end sub_8115074

	thumb_func_start sub_8115098
sub_8115098:
	push {r4-r7,lr}
	pop {r4-r7,pc}
dword_811509C: .word 0x8000
off_81150A0: .word math_sinTable
dword_81150A4: .word 0x160000
dword_81150A8: .word 0x800000
byte_81150AC: .byte 0x4, 0x1B, 0x1, 0x0, 0x1B, 0x0, 0x0, 0x1
byte_81150B4: .byte 0x64, 0x0, 0x0, 0x8, 0x14, 0x0, 0x82, 0x0, 0x1, 0x8, 0x32, 0x0, 0xA0
	.byte 0x0, 0x2, 0x8, 0x78, 0x0, 0xBE, 0x0, 0x3, 0x8, 0x96, 0x0, 0xA0, 0x0
	.byte 0x4, 0x8, 0x46, 0x0, 0xD2, 0x0, 0x5, 0x8, 0xB4, 0x0
byte_81150D8: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	.byte 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_8115098

	thumb_local_start
sub_81151A0:
	push {lr}
	ldr r1, off_81151B0 // =off_81151B4
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_81151B0: .word off_81151B4
off_81151B4: .word sub_81151CC+1
	.word loc_811523C+1
	.word loc_8115272+1
	.word sub_8115340+1
	.word sub_8115398+1
	.word sub_8115404+1
	thumb_func_end sub_81151A0

	thumb_local_start
sub_81151CC:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_81152CA
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl object_canMove
	bne loc_81151E4
	bl object_exitAttackState
	b locret_8115228
loc_81151E4:
	mov r1, #0x35
	mov r2, #2
	mov r3, #3
	bl sub_801A082
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_UNK_BIT_22_BIT
	bl object_setFlag1 // (int a1) -> void
	bl sub_802D234
	cmp r0, #6
	beq loc_811520A
	mov r0, #0x10
	bl object_setCounterTime
loc_811520A:
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	ldr r1, off_8115230 // =loc_8115234
	ldrb r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_8115492
locret_8115228:
	pop {pc}
	.word 0
	.byte 0, 0
off_8115230: .word loc_8115234
loc_8115234:
	lsl r1, r0, #4
	lsl r2, r0, #0x18
	mov r0, #7
	lsr r0, r1, #0x20
loc_811523C:
	push {lr}
	bl sub_8115432
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge loc_811526C
	bl object_getFrontDirection // () -> int
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	mul r0, r1
	str r0, [r5,#oBattleObject_XVelocity]
	ldrb r0, [r5,#oBattleObject_PanelX]
	strb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	strb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_reservePanel
	mov r0, #0x88
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_811526C:
	bl sub_8115492
	pop {pc}
loc_8115272:
	push {lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_81154D8 // =0xc000000
	tst r0, r1
	beq loc_8115286
	ldrh r0, [r5,#oBattleObject_PanelXY]
	str r0, [r7,#oAIAttackVars_Unk_38]
	bl object_clearCollisionRegion // () -> void
loc_8115286:
	ldrh r0, [r5,#oBattleObject_PanelXY]
	ldr r1, [r7,#oAIAttackVars_Unk_38]
	cmp r0, r1
	beq loc_8115294
	mov r0, #1
	bl object_setCollisionRegion
loc_8115294:
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_81152CA
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_81154DC // =byte_8115330
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	beq loc_811531A
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	ldr r0, dword_81154E0 // =0x280000
	ldr r1, [r7,#oAIAttackVars_Unk_30]
	svc 6
	strh r0, [r7,#oAIAttackVars_Unk_10]
	lsr r0, r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
loc_81152CA:
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	cmp r0, #1
	bne loc_81152D4
	bl sub_8115466
loc_81152D4:
	bl sub_81154B8
	bl sub_8115432
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	ldrh r1, [r7,#oAIAttackVars_Unk_12]
	cmp r0, r1
	bne loc_81152F4
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
loc_81152F4:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge loc_8115322
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_setCollisionPanelsToCurrent
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	beq loc_811531A
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b loc_8115322
loc_811531A:
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_8115322:
	bl sub_8115492
	pop {pc}
	.word 0
	.byte 0, 0, 0, 0
byte_8115330: .byte 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x3, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x80, 0x3
	thumb_func_end sub_81151CC

	thumb_local_start
sub_8115340:
	push {r4,r6,lr}
	ldr r3, [r5,#oBattleObject_CollisionDataPtr]
	ldr r0, [r3,#oCollisionData_FlagsFromCollision]
	ldr r1, dword_81154D8 // =0xc000000
	tst r0, r1
	beq loc_8115350
	bl object_clearCollisionRegion // () -> void
loc_8115350:
	bl sub_81154B8
	bl sub_8115432
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8115396
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	mov r4, #0x1e
	strh r4, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x34
	add r0, r0, r5
	ldr r6, dword_81154E4 // =0xffff6000
	bl sub_8001330
	str r0, [r5,#oBattleObject_XVelocity]
	str r2, [r5,#oBattleObject_ZVelocity]
	bl object_clearCollisionRegion // () -> void
	mov r0, #1
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
	bl sub_8115398
locret_8115396:
	pop {r4,r6,pc}
	thumb_func_end sub_8115340

	thumb_local_start
sub_8115398:
	push {lr}
	ldr r1, [r5,#oBattleObject_XVelocity]
	ldr r0, [r5,#oBattleObject_X]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_X]
	ldr r1, [r5,#oBattleObject_ZVelocity]
	ldr r0, [r5,#oBattleObject_Z]
	add r0, r0, r1
	str r0, [r5,#oBattleObject_Z]
	ldr r0, dword_81154E4 // =0xffff6000
	add r1, r1, r0
	str r1, [r5,#oBattleObject_ZVelocity]
	bl object_setPanelsFromCoordinates
	bl object_updateCollisionPanels
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #8
	bne loc_81153C2
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAnim]
loc_81153C2:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8115402
	ldrb r0, [r5,#oBattleObject_FuturePanelX]
	strb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_FuturePanelY]
	strb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	mov r0, #0
	str r0, [r5,#oBattleObject_Z]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #0x40
	bl object_clearFlag // (int bitfield) -> void
	mov r0, #1
	lsl r0, r0, #OBJECT_FLAGS_CURRENTLY_MOVING_1_BIT
	bl object_setFlag1 // (int a1) -> void
	bl sub_8115446
	mov r0, #0x18
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8115402:
	pop {pc}
	thumb_func_end sub_8115398

	thumb_local_start
sub_8115404:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurAnim]
	cmp r0, #0
	beq loc_811541A
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq loc_811541A
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
loc_811541A:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bge locret_8115430
	mov r1, #1
	mov r2, #2
	mov r3, #3
	bl sub_801A082
	bl object_exitAttackState
locret_8115430:
	pop {pc}
	thumb_func_end sub_8115404

	thumb_local_start
sub_8115432:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_0d]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	bne locret_8115444
	mov r0, #0x10
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	bl sub_8115446
locret_8115444:
	pop {pc}
	thumb_func_end sub_8115432

	thumb_local_start
sub_8115446:
	push {r4,lr}
	bl object_getFrontDirection // () -> int
	mov r4, #0xe
	lsl r4, r4, #0x10
	mul r4, r0
	mov r0, #0x34
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	sub r1, r1, r4
	ldr r4, byte_81154E8 // =0x0
	add r3, r3, r4
	mov r4, #1
	bl SpawnT4BattleObjectWithId0
	pop {r4,pc}
	thumb_func_end sub_8115446

	thumb_local_start
sub_8115466:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_0e]
	sub r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	bne locret_8115490
	mov r0, #4
	strb r0, [r7,#oAIAttackVars_Unk_0e]
	bl object_getFrontDirection // () -> int
	mov r4, #0xe
	lsl r4, r4, #0x10
	mul r4, r0
	mov r0, #0x34
	add r0, r0, r5
	ldmia r0!, {r1-r3}
	add r1, r1, r4
	ldr r4, byte_81154E8 // =0x0
	add r3, r3, r4
	mov r4, #1
	bl SpawnT4BattleObjectWithId0
locret_8115490:
	pop {r4,pc}
	thumb_func_end sub_8115466

	thumb_local_start
sub_8115492:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_0f]
	add r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0f]
	mov r1, #4
	tst r0, r1
	bne locret_81154B6
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_FuturePanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	ldr r2, [r7,#oAIAttackVars_Unk_34]
	bl sub_8109660
locret_81154B6:
	pop {pc}
	thumb_func_end sub_8115492

	thumb_local_start
sub_81154B8:
	push {lr}
	ldrb r0, [r5,#oBattleObject_CurAnim]
	cmp r0, #2
	bne locret_81154D4
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81154D4
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #OBJECT_FLAGS_GUARD
	bl object_setFlag1 // (int a1) -> void
locret_81154D4:
	pop {pc}
	.balign 4, 0x00
dword_81154D8: .word 0xC000000
off_81154DC: .word byte_8115330
dword_81154E0: .word 0x280000
dword_81154E4: .word 0xFFFF6000
byte_81154E8: .byte 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0
off_81154F0: .word sub_8016380+1
	.word sub_811555C+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_811557C+1
	.word sub_81097BA+1
	.word sub_8109804+1
	.word sub_81151A0+1
byte_8115520: .byte 0x0, 0x70, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0xA0
	.byte 0x0, 0x0, 0x0, 0xB0, 0x0, 0x0, 0x0, 0xC0, 0x0, 0x0
byte_8115538: .byte 0x0, 0x0, 0x8, 0x0, 0x0, 0x50, 0x8, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x50, 0xA
	.byte 0x0, 0x0, 0x0, 0xB, 0x0, 0x0, 0x50, 0xB, 0x0
byte_8115550: .byte 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E
byte_8115556: .byte 0x3, 0x4, 0x4, 0x4, 0x4, 0x5
	thumb_func_end sub_81154B8

	thumb_local_start
sub_811555C:
	push {lr}
	ldr r0, [r5,#oBattleObject_CollisionDataPtr]
	mov r1, #0xa
	strb r1, [r0,#oCollisionData_StaminaDamageCounterDisabler]
	bl GetPositiveSignedRNG2
	mov r1, #2
	and r1, r0
	sub r1, #1
	str r1, [r5,#oBattleObject_ExtraVars]
	mov r0, #0
	mov r1, #0x6c
	strh r0, [r5,r1]
	bl sub_80165B8
	pop {pc}
	thumb_func_end sub_811555C

	thumb_local_start
sub_811557C:
	push {r4,r6,lr}
	ldr r1, off_811558C // =off_8115590
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_811558C: .word off_8115590
off_8115590: .word sub_8115598+1
	.word sub_8115654+1
	thumb_func_end sub_811557C

	thumb_local_start
sub_8115598:
	push {lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+8]
	bl object_getFlag // () -> int
	ldr r1, dword_81156E0 // =0xa000
	tst r0, r1
	bne loc_81155EC
	mov r0, #0x68
	mov r1, #0x9d
	mov r2, #0xa2
	bl sub_8109630
	ldrb r2, [r5,#oBattleObject_PanelY]
	mov r0, #1
	lsl r0, r2
	tst r0, r1
	bne loc_81155EC
	ldrb r0, [r5,#oBattleObject_PanelY]
	bl sub_810971A
	cmp r0, #0
	beq loc_81155EC
	ldrb r2, [r4,#oAIData_Version_16]
	ldr r1, off_81156E4 // =byte_8115556
	ldrb r0, [r1,r2]
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	ldr r1, off_81156E8 // =byte_8115550
	ldrb r0, [r1,r2]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	lsl r2, r2, #2
	ldr r1, off_81156EC // =byte_8115538
	ldr r0, [r1,r2]
	str r0, [r7,#oAIAttackVars_Unk_30]
	mov r0, #0xb
	bl object_setAttack0
	mov r0, #1
	ldrb r1, [r5,#oBattleObject_PanelY]
	lsl r0, r1
	str r0, [r5,#oBattleObject_ExtraVars+8]
	b locret_8115652
loc_81155EC:
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_1a]
	bl object_getFlag // () -> int
	ldr r1, dword_81156E0 // =0xa000
	tst r0, r1
	beq loc_8115614
	ldr r1, dword_81156F0 // =0x8000
	tst r0, r1
	beq loc_811560A
	mov r0, #0
	mov r1, #0x6c
	strh r0, [r5,r1]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
loc_811560A:
	bl sub_81156AC
	cmp r0, #0
	beq loc_811564E
	b loc_811561C
loc_8115614:
	bl sub_8115668
	cmp r0, #0
	beq loc_811564E
loc_811561C:
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r5,#oBattleObject_PanelY]
	eor r2, r1
	str r2, [r5,#oBattleObject_ExtraVars+4]
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_03]
	ldr r1, off_81156F4 // =byte_8115520
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r7,#oAIAttackVars_Unk_30]
	ldr r3, off_81156F8 // =byte_81156D0
	bl sub_81096FA
	str r2, [r7,#oAIAttackVars_Unk_34]
	str r3, [r7,#oAIAttackVars_Unk_38]
	mov r0, #0xa
	bl object_setAttack0
	bl sub_8109804
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	b locret_8115652
loc_811564E:
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
locret_8115652:
	pop {pc}
	thumb_func_end sub_8115598

	thumb_local_start
sub_8115654:
	push {lr}
	mov r0, #0x6c
	ldrh r1, [r5,r0]
	add r1, #1
	strh r1, [r5,r0]
	cmp r1, #0x3c
	blt locret_8115666
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
locret_8115666:
	pop {pc}
	thumb_func_end sub_8115654

	thumb_local_start
sub_8115668:
	push {lr}
	bl sub_811567E
	cmp r0, #0
	bne locret_811567C
	ldr r0, [r5,#oBattleObject_ExtraVars]
	neg r0, r0
	str r0, [r5,#oBattleObject_ExtraVars]
	bl sub_811567E
locret_811567C:
	pop {pc}
	thumb_func_end sub_8115668

	thumb_local_start
sub_811567E:
	push {r4,r6,lr}
	ldr r0, [r5,#oBattleObject_ExtraVars]
	ldrb r1, [r5,#oBattleObject_PanelY]
	cmp r1, #2
	beq loc_8115690
	mov r0, #1
	cmp r1, #1
	beq loc_8115690
	sub r0, #2
loc_8115690:
	str r0, [r5,#oBattleObject_ExtraVars]
	add r1, r1, r0
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldr r3, off_81156FC // =byte_81156D0
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	bne locret_81156AA
	mov r0, #0
locret_81156AA:
	pop {r4,r6,pc}
	thumb_func_end sub_811567E

	thumb_local_start
sub_81156AC:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldr r3, off_8115700 // =byte_81156D0
	bl sub_81096FA
	ldr r4, off_81156C0 // =byte_81156C4
	bl sub_8015D80
	pop {r4-r7,pc}
off_81156C0: .word byte_81156C4
byte_81156C4: .byte 0x0, 0xFF, 0x0, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_81156D0: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
dword_81156E0: .word 0xA000
off_81156E4: .word byte_8115556
off_81156E8: .word byte_8115550
off_81156EC: .word byte_8115538
dword_81156F0: .word 0x8000
off_81156F4: .word byte_8115520
off_81156F8: .word byte_81156D0
off_81156FC: .word byte_81156D0
off_8115700: .word byte_81156D0
byte_8115704: .byte 0x4, 0x1C, 0x1, 0x0, 0x1C, 0x0, 0x0, 0x1
byte_811570C: .byte 0x78, 0x0, 0x0, 0x8, 0x1E, 0x0, 0xA0, 0x0, 0x1, 0x8, 0x3C, 0x0, 0xC8
	.byte 0x0, 0x2, 0x8, 0x5A, 0x0, 0xF0, 0x0, 0x3, 0x8, 0x78, 0x0, 0xC8, 0x0
	.byte 0x4, 0x8, 0x5A, 0x0, 0xF0, 0x0, 0x5, 0x8, 0x96, 0x0
byte_8115730: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_81156AC

	thumb_local_start
sub_81157F0:
	push {lr}
	ldr r1, off_8115800 // =off_8115804
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_8115800: .word off_8115804
off_8115804: .word sub_811581C+1
	.word sub_8115876+1
	.word sub_81158A4+1
	.word sub_81158C2+1
	.word sub_81158DC+1
	.word sub_81097BA+1
	thumb_func_end sub_81157F0

	thumb_local_start
sub_811581C:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	cmp r0, #0
	bne loc_811584E
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	bl object_getFlag // () -> int
	ldr r1, dword_8115948 // =0x2000
	tst r0, r1
	beq loc_8115844
	bl sub_811592A
	tst r0, r0
	beq loc_8115844
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
	b loc_811584E
loc_8115844:
	ldr r1, [r7,#oAIAttackVars_Unk_2c]
	ldrb r0, [r1,#0x12]
	ldrb r1, [r1,#0x13]
	strb r0, [r7,#oAIAttackVars_Unk_16]
	strb r1, [r7,#oAIAttackVars_Unk_17]
loc_811584E:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_8115870
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x3c
	bl object_setCounterTime
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x89
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_8115870:
	bl sub_811590A
	pop {pc}
	thumb_func_end sub_811581C

	thumb_local_start
sub_8115876:
	push {r4,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #2
	ldrh r1, [r7,#oAIAttackVars_Unk_10]
	cmp r0, r1
	bne loc_8115882
loc_8115882:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_811589E
	ldr r0, [r7,#oAIAttackVars_Unk_28]
	ldr r1, [r7,#oAIAttackVars_Unk_08]
	ldrb r2, [r7,#oAIAttackVars_Unk_16]
	ldrb r3, [r7,#oAIAttackVars_Unk_17]
	bl sub_80B87AC
	mov r0, #0x3f
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
loc_811589E:
	bl sub_811590A
	pop {r4,pc}
	thumb_func_end sub_8115876

	thumb_local_start
sub_81158A4:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	cmp r0, #0x3c
	blt loc_81158B0
	bl sub_811590A
loc_81158B0:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_81158C0
	mov r0, #3
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0xc
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81158C0:
	pop {pc}
	thumb_func_end sub_81158A4

	thumb_local_start
sub_81158C2:
	push {r4,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_81158DA
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #3
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_81158DA:
	pop {r4,pc}
	thumb_func_end sub_81158C2

	thumb_local_start
sub_81158DC:
	push {lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne locret_8115908
	ldr r0, [r7,#oAIAttackVars_Unk_28]
	bl sub_80B87F0
	mov r0, #0
	strb r0, [r5,#oBattleObject_CurAnim]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bl object_getFlag // () -> int
	ldr r1, dword_8115948 // =0x2000
	tst r0, r1
	beq loc_8115904
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	add r0, #0x3c
	strh r0, [r7,#oAIAttackVars_Unk_10]
loc_8115904:
	mov r0, #0x14
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8115908:
	pop {pc}
	thumb_func_end sub_81158DC

	thumb_local_start
sub_811590A:
	push {lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_0c]
	add r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r1, #4
	tst r0, r1
	bne locret_8115928
	ldrb r0, [r7,#oAIAttackVars_Unk_16]
	ldrb r1, [r7,#oAIAttackVars_Unk_17]
	ldrb r2, [r5,#oBattleObject_Alliance]
	ldrb r3, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #4
	bl sub_8109660
locret_8115928:
	pop {pc}
	thumb_func_end sub_811590A

	thumb_local_start
sub_811592A:
	push {r4-r7,lr}
	ldr r3, off_811594C // =byte_8115938
	bl sub_81096FA
	bl sub_8015C94
	thumb_func_end sub_811592A

	pop {r4-r7,pc}
byte_8115938: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0
	.byte 0x0
dword_8115948: .word 0x2000
off_811594C: .word byte_8115938
off_8115950: .word sub_8016380+1
	.word sub_80165B8+1
	.word sub_81159C4+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8115A02+1
	.word sub_81097BA+1
	.word sub_81157F0+1
	.word sub_8109952+1
byte_8115980: .byte 0x32, 0x0, 0xA, 0x0, 0x78, 0x0, 0xA, 0x0, 0xC8, 0x0, 0xA, 0x0
	.byte 0xDC, 0x0, 0xA, 0x0, 0x96, 0x0, 0xA, 0x0, 0xDC, 0x0, 0xA, 0x0
byte_8115998: .byte 0x64, 0x64, 0x64, 0x64, 0x64, 0x64
byte_811599E: .byte 0x3C, 0x3C, 0x3C, 0x3C, 0x3C, 0x3C
byte_81159A4: .byte 0x6, 0x6, 0x6, 0x6, 0x6, 0x6
byte_81159AA: .byte 0xB4, 0xB4, 0xB4, 0xB4, 0xB4, 0xB4
	thumb_func_start sub_81159B0
sub_81159B0:
	push {r4,r6,lr}
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r4, [r0,#oAIData_Version_16]
	lsl r1, r4, #2
	ldr r6, off_8115BB8 // =byte_8115980
	ldr r6, [r6,r1]
	bl sub_80B8786
	str r0, [r5,#oBattleObject_ExtraVars]
	pop {r4,r6,pc}
	thumb_func_end sub_81159B0

	thumb_local_start
sub_81159C4:
	push {lr}
	bl sub_80165C2
	ldr r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	cmp r0, #8
	bne loc_81159DA
	ldr r0, [r5,#oBattleObject_ExtraVars]
	cmp r0, #0
	beq loc_81159DA
	bl sub_80B87A6
loc_81159DA:
	pop {pc}
	thumb_func_end sub_81159C4

	thumb_func_start sub_81159DC
sub_81159DC:
	push {lr}
	bl battle_isPaused
	bne locret_8115A00
	bl battle_isTimeStop
	bne locret_8115A00
	ldr r0, [r5,#oBattleObject_ExtraVars+4]
	cmp r0, #0
	beq locret_8115A00
	sub r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+4]
	mov r1, #2
	tst r0, r1
	beq locret_8115A00
	mov r0, #0xf
	bl sprite_setColorShader
locret_8115A00:
	pop {pc}
	thumb_func_end sub_81159DC

	thumb_local_start
sub_8115A02:
	push {r4,r6,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_8115BBC // =0x8000
	tst r0, r1
	bne locret_8115A18
	ldr r1, off_8115A1C // =off_8115A20
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
locret_8115A18:
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8115A1C: .word off_8115A20
off_8115A20: .word sub_8115A2C+1
	.word sub_8115A5C+1
	.word sub_8115A96+1
	thumb_func_end sub_8115A02

	thumb_local_start
sub_8115A2C:
	push {lr}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getPanelParameters
	ldr r1, off_8115BC0 // =0x8000000
	ldrb r2, [r5,#oBattleObject_Alliance]
	cmp r2, #0
	beq loc_8115A46
	ldr r1, off_8115BC4 // =LCDControl
loc_8115A46:
	mov r3, #4
	tst r0, r1
	beq loc_8115A4E
	mov r3, #8
loc_8115A4E:
	strb r3, [r6,#oAIState_Unk_00]
	mov r0, #0xf0
	str r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #9
	bl object_setAttack0
	pop {pc}
	thumb_func_end sub_8115A2C

	thumb_local_start
sub_8115A5C:
	push {lr}
	ldrb r1, [r4,#oAIData_Version_16]
	cmp r1, #0
	beq loc_8115A90
	ldr r0, off_8115BC8 // =byte_8115998
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x12
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x13
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	ldr r0, off_8115BCC // =sub_8115AD0+1
	cmp r1, #0
	bne loc_8115A7E
	ldr r0, off_8115BD0 // =sub_8015C48+1
loc_8115A7E:
	str r0, [r7,#oAIAttackVars_Unk_28]
	mov r0, #3
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	bl sub_8109952
loc_8115A90:
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_8115A5C

	thumb_local_start
sub_8115A96:
	push {lr}
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_8115BD4 // =byte_811599E
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	ldr r0, off_8115BD8 // =byte_81159A4
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_12]
	ldr r0, off_8115BDC // =byte_81159AA
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	lsl r1, r1, #2
	ldr r0, off_8115BE0 // =byte_8115980
	ldr r0, [r0,r1]
	str r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, [r5,#oBattleObject_ExtraVars]
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_8115A96

	thumb_local_start
sub_8115AD0:
	push {r4,r6,r7,lr}
	sub sp, sp, #0x1c
	mov r0, r7
	mov r1, #1
	mov r2, #0xae
	ldrb r3, [r5,#0x16]
	bl object_getEnemyByNameRange
	mov r6, r0
	beq loc_8115B94
	bl object_getFrontDirection // () -> int
	mov r4, r0
	mov r0, #0
	str r0, [sp,#0x14]
	ldr r0, dword_8115BE4 // =0xffff
	str r0, [sp,#0x10]
loc_8115AF2:
	ldr r1, [r7]
	cmp r1, r5
	beq loc_8115B30
	ldrb r0, [r1,#0x12]
	add r0, r0, r4
	ldrb r1, [r1,#0x13]
	ldr r3, off_8115BE8 // =byte_8115BA0
	bl sub_81096FA
	push {r0,r1}
	bl object_checkPanelParameters
	cmp r0, #0
	pop {r0,r1}
	beq loc_8115B30
	ldr r2, [r7]
	ldrh r2, [r2,#0x24]
	ldr r3, [sp,#0x10]
	cmp r2, r3
	bgt loc_8115B30
	beq loc_8115B22
	str r2, [sp,#0x10]
	mov r2, #0
	str r2, [sp,#0x14]
loc_8115B22:
	lsl r1, r1, #4
	orr r0, r1
	ldr r3, [sp,#0x14]
	add r2, r3, #1
	str r2, [sp,#0x14]
	add r3, sp
	strb r0, [r3,#0x18]
loc_8115B30:
	add r7, #4
	sub r6, #1
	bne loc_8115AF2
	ldr r0, [sp,#0x14]
	cmp r0, #1
	blt loc_8115B94
	bgt loc_8115B4E
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	lsl r1, r1, #4
	orr r0, r1
	mov r1, sp
	ldrb r1, [r1,#0x18]
	sub r0, r0, r1
	beq loc_8115B98
loc_8115B4E:
	ldr r3, [sp,#0x14]
	add r4, sp, #0x18
	ldrb r0, [r5,#0x12]
	ldrb r1, [r5,#0x13]
	lsl r1, r1, #4
	orr r0, r1
	mov r6, r0
loc_8115B5C:
	ldrb r0, [r4]
	cmp r0, r6
	bne loc_8115B7A
	ldr r0, [sp,#0x14]
	sub r0, #1
	str r0, [sp,#0x14]
	mov r2, r4
	push {r3}
loc_8115B6C:
	ldrb r0, [r2,#1]
	strb r0, [r2]
	add r2, #1
	sub r3, #1
	bne loc_8115B6C
	pop {r3}
	sub r4, #1
loc_8115B7A:
	add r4, #1
	sub r3, #1
	bne loc_8115B5C
	bl GetPositiveSignedRNG2
	ldr r1, [sp,#0x14]
	svc 6
	add r2, sp, #0x18
	ldrb r0, [r2,r1]
	lsr r1, r0, #4
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	b loc_8115B98
loc_8115B94:
	bl sub_8015C48
loc_8115B98:
	add sp, sp, #0x1c
	pop {r4,r6,r7,pc}
	.word 0x0
byte_8115BA0: .byte 0x10, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x30, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_8115AD0

	thumb_func_start sub_8115BB0
sub_8115BB0:
	mov r0, #0x18
	str r0, [r5,#oBattleObject_ExtraVars+4]
	mov pc, lr
	.balign 4, 0x00
off_8115BB8: .word byte_8115980
dword_8115BBC: .word 0x8000
off_8115BC0: .word 0x8000000
off_8115BC4: .word LCDControl
off_8115BC8: .word byte_8115998
off_8115BCC: .word sub_8115AD0+1
off_8115BD0: .word sub_8015C48+1
off_8115BD4: .word byte_811599E
off_8115BD8: .word byte_81159A4
off_8115BDC: .word byte_81159AA
off_8115BE0: .word byte_8115980
dword_8115BE4: .word 0xFFFF
off_8115BE8: .word byte_8115BA0
byte_8115BEC: .byte 0x4, 0x1D, 0x3, 0x0, 0x1D, 0x0, 0x0, 0x1
byte_8115BF4: .byte 0x64, 0x0, 0x0, 0x6, 0x28, 0x0, 0x8C, 0x0, 0x1, 0x6, 0x3C, 0x0, 0xB4
	.byte 0x0, 0x2, 0x6, 0x50, 0x0, 0xDC, 0x0, 0x3, 0x6, 0x64, 0x0, 0xB4, 0x0
	.byte 0x4, 0x6, 0x50, 0x0, 0x4, 0x1, 0x5, 0x6, 0x78, 0x0
byte_8115C18: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
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
	thumb_func_end sub_8115BB0

	thumb_local_start
sub_8115CD8:
	push {r4-r7,lr}
	ldr r1, off_8115CE8 // =off_8115CEC
	ldrb r0, [r7,#oAIAttackVars_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8115CE8: .word off_8115CEC
off_8115CEC: .word sub_8115CF8+1
	.word sub_8115D58+1
	.word sub_81097B4+1
	thumb_func_end sub_8115CD8

	thumb_local_start
sub_8115CF8:
	push {r4,lr}
	ldrb r0, [r7,#oAIAttackVars_Unk_01]
	tst r0, r0
	bne loc_8115D0C
	ldrh r0, [r7,#oAIAttackVars_Unk_12]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_12]
	bne locret_8115D56
	mov r0, #1
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8115D0C:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	sub r0, #1
	strh r0, [r7,#oAIAttackVars_Unk_10]
	bne loc_8115D38
	mov r0, #0x10
	bl object_setCounterTime
	mov r0, #2
	strb r0, [r5,#oBattleObject_CurAnim]
	bl sub_8115D76
	bl sub_8115DA4
	mov r0, #0xb
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #4
	strh r0, [r7,#oAIAttackVars_Unk_00]
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
	b locret_8115D56
loc_8115D38:
	ldrh r0, [r7,#oAIAttackVars_Unk_10]
	mov r1, #4
	tst r0, r1
	bne locret_8115D56
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r3, [r5,#oBattleObject_Alliance]
	ldrb r2, [r5,#oBattleObject_DirectionFlip]
	eor r3, r2
	mov r2, #4
	bl sub_8109660
locret_8115D56:
	pop {r4,pc}
	thumb_func_end sub_8115CF8

	thumb_local_start
sub_8115D58:
	push {r4,r6,lr}
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8115D74
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
	ldrh r0, [r7,#oAIAttackVars_Unk_18]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #8
	strh r0, [r7,#oAIAttackVars_Unk_00]
locret_8115D74:
	pop {r4,r6,pc}
	thumb_func_end sub_8115D58

	thumb_local_start
sub_8115D76:
	push {r4-r7,lr}
	ldrh r0, [r7,#oAIAttackVars_Unk_08]
	ldrh r1, [r7,#oAIAttackVars_Unk_0a]
	lsl r1, r1, #0x10
	orr r0, r1
	mov r6, r0
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	ldrb r2, [r7,#oAIAttackVars_Unk_02]
	mov r3, #0
	ldr r4, dword_8115D9C // =0x705ff04
	ldr r7, dword_8115DA0 // =0x3
	bl object_spawnCollisionRegion
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8115D9C: .word 0x705FF04
dword_8115DA0: .word 0x3
	thumb_func_end sub_8115D76

	thumb_local_start
sub_8115DA4:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	ldrb r1, [r5,#oBattleObject_DirectionFlip]
	eor r0, r1
	lsl r0, r0, #8
	push {r0}
	bl object_getFrontDirection // () -> int
	ldrb r1, [r5,#oBattleObject_PanelX]
	add r0, r0, r1
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_getCoordinatesForPanels // (int a1, int a2) -> (int n1, int n2)
	mov r2, r1
	mov r1, r0
	mov r3, #0
	pop {r0}
	ldr r4, byte_8115DD0 // =0x16
	orr r4, r0
	bl SpawnT4BattleObjectWithId0
	pop {r4-r7,pc}
byte_8115DD0: .byte 0x16, 0x2, 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8115DE0: .word sub_8016380+1
	.word sub_81162AE+1
	.word sub_80165C2+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8115E4C+1
	.word sub_81097B4+1
	.word sub_8115CD8+1
	.word sub_8109974+1
	.word sub_8109804+1
byte_8115E14: .byte 0x28, 0x3C, 0x64, 0x78, 0x50, 0x78, 0x0, 0x0
byte_8115E1C: .byte 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0x0, 0x0
byte_8115E24: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0
byte_8115E2C: .byte 0x3C, 0x30, 0x24, 0x18, 0x18, 0x18, 0x0, 0x0
byte_8115E34: .byte 0x5, 0x4, 0x4, 0x3, 0x3, 0x3, 0x0, 0x0
byte_8115E3C: .byte 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x0, 0x0
byte_8115E44: .byte 0x3C, 0x30, 0x24, 0x18, 0x18, 0x18, 0x0, 0x0
	thumb_func_end sub_8115DA4

	thumb_local_start
sub_8115E4C:
	push {r4,r6,lr}
	ldr r1, off_8115E5C // =off_8115E60
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8115E5C: .word off_8115E60
off_8115E60: .word sub_8115E6C+1
	.word sub_8115F2E+1
	.word sub_8115F74+1
	thumb_func_end sub_8115E4C

	thumb_local_start
sub_8115E6C:
	push {r4-r7,lr}
	mov r0, #0x60
	ldr r1, off_8115E80 // =off_8115E84
	ldrb r0, [r5,r0]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.word 0x0
off_8115E80: .word off_8115E84
off_8115E84: .word sub_8115E94+1
	.word sub_8115EBC+1
	.word sub_8115EDC+1
	.word sub_8115EF4+1
	thumb_func_end sub_8115E6C

	thumb_local_start
sub_8115E94:
	push {r4-r7,lr}
	bl object_clearCollisionRegion // () -> void
	mov r0, #0x6b
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #0x3c
	bne locret_8115EBA
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #5
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #0x44
	add r0, #0xff
	bl sound_play // () -> void
	mov r0, #4
	str r0, [r5,#oBattleObject_ExtraVars]
locret_8115EBA:
	pop {r4-r7,pc}
	thumb_func_end sub_8115E94

	thumb_local_start
sub_8115EBC:
	push {r4-r7,lr}
	bl object_clearCollisionRegion // () -> void
	bl sprite_getFrameParameters
	mov r1, #0x80
	tst r0, r1
	beq locret_8115EDA
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #1
	bl object_setCollisionRegion
	mov r0, #8
	str r0, [r5,#oBattleObject_ExtraVars]
locret_8115EDA:
	pop {r4-r7,pc}
	thumb_func_end sub_8115EBC

	thumb_local_start
sub_8115EDC:
	push {r4-r7,lr}
	mov r0, #0x6b
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	cmp r1, #0x3c
	bne locret_8115EF2
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0xc
	str r0, [r5,#oBattleObject_ExtraVars]
locret_8115EF2:
	pop {r4-r7,pc}
	thumb_func_end sub_8115EDC

	thumb_local_start
sub_8115EF4:
	push {r4-r7,lr}
	bl object_getFlag // () -> int
	ldr r1, dword_81162C0 // =0xa000
	tst r0, r1
	beq loc_8115F08
	mov r0, #0x6b
	mov r1, #0
	strb r1, [r5,r0]
	b loc_8115F24
loc_8115F08:
	mov r0, #0x6b
	ldrb r1, [r5,r0]
	add r1, #1
	strb r1, [r5,r0]
	ldr r3, off_81162C4 // =byte_8115E34
	ldrb r2, [r4,#oAIData_Version_16]
	ldrb r2, [r3,r2]
	cmp r1, r2
	ble loc_8115F24
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #4
	strb r0, [r6,#oAIState_Unk_00]
	b loc_8115F28
loc_8115F24:
	mov r0, #8
	strb r0, [r6,#oAIState_Unk_00]
loc_8115F28:
	bl sub_800F2C6
	pop {r4-r7,pc}
	thumb_func_end sub_8115EF4

	thumb_local_start
sub_8115F2E:
	push {lr}
	mov r0, #0x64
	mov r1, #0xa9
	mov r2, #0xae
	bl sub_8109630
	cmp r0, #0
	bne loc_8115F6E
	ldrb r1, [r4,#oAIData_Version_16]
	ldr r0, off_81162C8 // =byte_8115E44
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_18]
	ldr r0, off_81162CC // =byte_8115E14
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_08]
	ldr r0, off_81162D0 // =byte_8115E1C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_0a]
	ldr r0, off_81162D4 // =byte_8115E3C
	ldrb r0, [r0,r1]
	strh r0, [r7,#oAIAttackVars_Unk_10]
	mov r0, #0x10
	strh r0, [r7,#oAIAttackVars_Unk_12]
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAnim]
	mov r0, #1
	str r0, [r5,#oBattleObject_ExtraVars+4]
	mov r0, #0xa
	bl object_setAttack0
	mov r0, #0
	strb r0, [r7,#oAIAttackVars_Unk_01]
loc_8115F6E:
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	pop {pc}
	thumb_func_end sub_8115F2E

	thumb_local_start
sub_8115F74:
	push {lr}
	mov r0, #4
	strb r0, [r5,#oBattleObject_CurAnim]
	ldr r0, off_81162D8 // =sub_8115FCE+1
	str r0, [r7,#oAIAttackVars_Unk_28]
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	str r0, [r7,#oAIAttackVars_Unk_2c]
	ldr r0, off_81162DC // =byte_8115E2C
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	mov r3, r0
	bl object_getFlag // () -> int
	ldr r1, dword_81162C0 // =0xa000
	tst r0, r1
	beq loc_8115F9E
	add r3, #0x3c
loc_8115F9E:
	mov r0, r3
	strh r0, [r7,#oAIAttackVars_Unk_18]
	mov r0, #2
	strb r0, [r7,#oAIAttackVars_Unk_03]
	mov r0, #0x14
	strb r0, [r7,#oAIAttackVars_Unk_0c]
	mov r0, #0x15
	strb r0, [r7,#oAIAttackVars_Unk_0d]
	ldr r0, off_81162E0 // =byte_8115E24
	ldrb r1, [r4,#oAIData_Version_16]
	ldrb r0, [r0,r1]
	str r0, [r7,#oAIAttackVars_Unk_30]
	str r0, [r7,#oAIAttackVars_Unk_34]
	mov r0, #0xb
	bl object_setAttack0
	bl sub_8109974
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_00]
	b locret_8115FCC
	mov r0, #0
	strb r0, [r6]
locret_8115FCC:
	pop {pc}
	thumb_func_end sub_8115F74

	thumb_local_start
sub_8115FCE:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_reservePanel
	bl object_getFlag // () -> int
	ldr r1, dword_81162C0 // =0xa000
	tst r0, r1
	beq loc_8116004
	bl sub_81160B0
	tst r0, r0
	bne loc_8115FF2
	mov r2, #0x69
	ldrb r0, [r5,r2]
	mov r2, #0x6a
	ldrb r1, [r5,r2]
loc_8115FF2:
	mov r2, #0x69
	strb r0, [r5,r2]
	mov r2, #0x6a
	strb r1, [r5,r2]
	push {r0,r1}
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	pop {r0,r1}
	b loc_8116036
loc_8116004:
	bl sub_8116044
	tst r0, r0
	bne loc_8116026
	bl sub_811606A
	tst r0, r0
	bne loc_8116026
	bl sub_8116090
	tst r0, r0
	bne loc_8116036
	mov r2, #0x69
	ldrb r0, [r5,r2]
	mov r2, #0x6a
	ldrb r1, [r5,r2]
	b loc_8116036
loc_8116026:
	bl sub_81161B0
	bl sub_8116210
	mov r2, #0x69
	strb r0, [r5,r2]
	mov r2, #0x6a
	strb r1, [r5,r2]
loc_8116036:
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	bl object_removePanelReserve
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_8115FCE

	thumb_local_start
sub_8116044:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	mov r1, #0x68
	ldrb r1, [r5,r1]
	lsl r1, r1, #2
	ldr r4, off_81160C0 // =off_81160C4
	ldr r4, [r4,r1]
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	ldr r3, off_81162E4 // =byte_8116190
	bl sub_81096FA
	bl sub_8015D80
	pop {r4-r7,pc}
	thumb_func_end sub_8116044

	thumb_local_start
sub_811606A:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	mov r1, #0x68
	ldrb r1, [r5,r1]
	lsl r1, r1, #2
	ldr r4, off_81160DC // =off_81160E0
	ldr r4, [r4,r1]
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	ldr r3, off_81162E8 // =byte_8116190
	bl sub_81096FA
	bl sub_8015D80
	pop {r4-r7,pc}
	thumb_func_end sub_811606A

	thumb_local_start
sub_8116090:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	ldrb r1, [r0,#0x13]
	ldrb r0, [r0,#0x12]
	ldr r3, off_81162EC // =byte_8116190
	bl sub_81096FA
	ldr r4, off_81160F8 // =byte_8116180
	bl sub_8015D80
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_8116090

	thumb_local_start
sub_81160B0:
	push {r4-r7,lr}
	ldr r3, off_81162F0 // =byte_81161A0
	bl sub_81096FA
	bl sub_8015C94
	pop {r4-r7,pc}
	.byte 0, 0
off_81160C0: .word off_81160C4
off_81160C4: .word byte_8116100
	.word byte_8116110
	.word byte_8116120
	.word byte_8116130
	.word byte_8116140
	.word byte_8116140
off_81160DC: .word off_81160E0
off_81160E0: .word byte_8116150
	.word byte_8116150
	.word byte_8116150
	.word byte_8116150
	.word byte_8116160
	.word byte_8116170
off_81160F8: .word byte_8116180
	.word 0x0
byte_8116100: .byte 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
byte_8116110: .byte 0xFF, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
byte_8116120: .byte 0xFF, 0xFF, 0x1, 0xFF, 0x1, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
byte_8116130: .byte 0xFF, 0xFF, 0x1, 0xFF, 0xFF, 0x1, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
byte_8116140: .byte 0xFF, 0xFF, 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0x7F, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
byte_8116150: .byte 0xFF, 0x0, 0x1, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
byte_8116160: .byte 0xFF, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
byte_8116170: .byte 0x1, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8116180: .byte 0xFF, 0xFF, 0x1, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0x0, 0x1, 0x0
	.byte 0x7F, 0x0, 0x0, 0x0
byte_8116190: .byte 0x0, 0x0, 0x0, 0x0, 0x80, 0x0, 0x88, 0xF, 0x0, 0x0, 0x0, 0x0, 0x80, 0x0
	.byte 0x88, 0xF
byte_81161A0: .byte 0x0, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x88, 0xF, 0x20, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x88, 0xF
	thumb_func_end sub_81160B0

	thumb_local_start
sub_81161B0:
	push {r4-r7,lr}
	push {r0,r1}
	push {r0,r1}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	ldrb r2, [r0,#0x12]
	ldrb r3, [r0,#0x13]
	pop {r0,r1}
	sub r0, r0, r2
	sub r1, r1, r3
	push {r0,r1}
	bl object_getEnemyDirection
	mov r2, r0
	pop {r0,r1}
	mul r0, r2
	cmp r1, #0
	bne loc_81161EA
	cmp r0, #1
	bge loc_81161E4
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	b loc_811620C
loc_81161E4:
	mov r0, #1
	strb r0, [r5,#oBattleObject_DirectionFlip]
	b loc_811620C
loc_81161EA:
	cmp r0, #1
	bge loc_81161FE
	cmp r1, #1
	bge loc_81161F8
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	b loc_811620C
loc_81161F8:
	mov r0, #0
	strb r0, [r5,#oBattleObject_DirectionFlip]
	b loc_811620C
loc_81161FE:
	cmp r1, #1
	bge loc_8116208
	mov r0, #1
	strb r0, [r5,#oBattleObject_DirectionFlip]
	b loc_811620C
loc_8116208:
	mov r0, #1
	strb r0, [r5,#oBattleObject_DirectionFlip]
loc_811620C:
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_81161B0

	thumb_local_start
sub_8116210:
	push {r4-r7,lr}
	push {r0,r1}
	bl object_getEnemyDirection
	push {r0}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	ldrb r2, [r0,#0x12]
	ldrb r3, [r0,#0x13]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	sub r0, r0, r2
	pop {r2}
	mul r0, r2
	sub r1, r1, r3
	cmp r1, #0
	bne loc_811624C
	cmp r0, #1
	bge loc_8116244
	mov r0, #4
	mov r1, #0x68
	strb r0, [r5,r1]
	b loc_8116276
loc_8116244:
	mov r0, #5
	mov r1, #0x68
	strb r0, [r5,r1]
	b loc_8116276
loc_811624C:
	cmp r0, #1
	bge loc_8116264
	cmp r1, #1
	bge loc_811625C
	mov r0, #0
	mov r1, #0x68
	strb r0, [r5,r1]
	b loc_8116276
loc_811625C:
	mov r0, #2
	mov r1, #0x68
	strb r0, [r5,r1]
	b loc_8116276
loc_8116264:
	cmp r1, #1
	bge loc_8116270
	mov r0, #1
	mov r1, #0x68
	strb r0, [r5,r1]
	b loc_8116276
loc_8116270:
	mov r0, #3
	mov r1, #0x68
	strb r0, [r5,r1]
loc_8116276:
	pop {r0,r1}
	pop {r4-r7,pc}
	thumb_func_end sub_8116210

	thumb_func_start sub_811627A
sub_811627A:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars+4]
	bl GetRNG2 // () -> int
	mov r1, #3
	and r0, r1
	mov r1, #0x68
	strb r0, [r5,r1]
	ldrb r0, [r5,#oBattleObject_PanelX]
	ldrb r1, [r5,#oBattleObject_PanelY]
	mov r2, #0x69
	strb r0, [r5,r2]
	mov r2, #0x6a
	strb r1, [r5,r2]
	mov r0, #0x6b
	mov r1, #0
	strb r1, [r5,r0]
	mov r0, #0
	str r0, [r5,#oBattleObject_ExtraVars]
	mov r0, #OBJECT_FLAGS_CURRENTLY_MOVING
	bl object_setFlag1 // (int a1) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_811627A

	thumb_func_start sub_81162AA
sub_81162AA:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_81162AA

	thumb_local_start
sub_81162AE:
	push {r4-r7,lr}
	bl sub_80165B8
	ldr r0, dword_81162F4 // =0x800000
	bl object_setFlag1 // (int a1) -> void
	bl object_clearCollisionRegion // () -> void
	pop {r4-r7,pc}
dword_81162C0: .word 0xA000
off_81162C4: .word byte_8115E34
off_81162C8: .word byte_8115E44
off_81162CC: .word byte_8115E14
off_81162D0: .word byte_8115E1C
off_81162D4: .word byte_8115E3C
off_81162D8: .word sub_8115FCE+1
off_81162DC: .word byte_8115E2C
off_81162E0: .word byte_8115E24
off_81162E4: .word byte_8116190
off_81162E8: .word byte_8116190
off_81162EC: .word byte_8116190
off_81162F0: .word byte_81161A0
dword_81162F4: .word 0x800000
byte_81162F8: .byte 0x4, 0x1F, 0x1, 0x0, 0x1F, 0x0, 0x0, 0x0
byte_8116300: .byte 0x1, 0x0, 0x0, 0x8, 0x3C, 0x0, 0x1, 0x0, 0x1, 0x8, 0x3C, 0x0, 0x1, 0x0, 0x2
	.byte 0x8, 0x78, 0x0, 0x1, 0x0, 0x3, 0x8, 0x78, 0x0, 0x1, 0x0, 0x4, 0x8, 0xC8, 0x0
	.byte 0x1, 0x0, 0x5, 0x8, 0xC8, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_81163F0: .word sub_8116470+1
	.word sub_80165B8+1
	.word sub_811648C+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_811649E+1
	thumb_func_end sub_81162AE

	thumb_func_start sub_8116414
sub_8116414:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	mov r0, #7
	strb r0, [r5,#oBattleObject_PanelX]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	mov r0, #0
	mov r1, #0x60
	strh r0, [r5,r1]
	mov r1, #0x62
	strh r0, [r5,r1]
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Version_16]
	lsl r0, r0, #1
	ldr r1, off_8116458 // =byte_811645C
	ldrh r0, [r1,r0]
	mov r2, #0x62
	strh r0, [r5,r2]
	mov r1, r0
	ldr r0, dword_81165B8 // =0x4000
	svc 6
	mov r1, #0x66
	strh r0, [r5,r1]
	ldr r0, [r5,#oBattleObject_AIDataPtr]
	ldrb r0, [r0,#oAIData_Version_16]
	lsl r0, r0, #1
	ldr r1, off_8116464 // =byte_8116468
	ldrh r0, [r1,r0]
	mov r2, #0x64
	strh r0, [r5,r2]
	pop {pc}
off_8116458: .word byte_811645C
byte_811645C: .byte 0x28, 0x0, 0x3C, 0x0, 0x50, 0x0, 0x0, 0x0
off_8116464: .word byte_8116468
byte_8116468: .byte 0x64, 0x0, 0x5A, 0x0, 0x3C, 0x0, 0x0, 0x0
	thumb_func_end sub_8116414

	thumb_local_start
sub_8116470:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_811648A
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_811648A:
	pop {pc}
	thumb_func_end sub_8116470

	thumb_local_start
sub_811648C:
	push {lr}
	bl sub_800A11C
	mov r0, r5
	bl sub_80077B4
	mov r0, #8
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_811648C

	thumb_local_start
sub_811649E:
	push {r4-r7,lr}
	bl battle_isBattleOver
	tst r0, r0
	bne loc_81164CC
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq loc_81164CC
	ldrh r0, [r0,#0x24]
	tst r0, r0
	beq loc_81164CC
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r6, #0x80
	add r6, r6, r4
	ldr r1, off_81164E4 // =off_81164E8
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_81164CC:
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	mov r0, #0x60
	ldrh r0, [r5,r0]
	mov r1, #0x66
	ldrh r1, [r5,r1]
	mul r0, r1
	bl sub_801DFA2
	pop {r4-r7,pc}
off_81164E4: .word off_81164E8
off_81164E8: .word sub_81164EC+1
	thumb_func_end sub_811649E

	thumb_local_start
sub_81164EC:
	push {r4-r7,lr}
	ldrb r0, [r6,#oAIState_Unk_02]
	cmp r0, #0
	bne loc_8116502
	mov r0, #1
	strb r0, [r6,#oAIState_Unk_02]
	mov r0, #0x64
	ldrh r0, [r5,r0]
	strh r0, [r6,#oAIState_Unk_08]
	bl sub_8116510
loc_8116502:
	ldrh r0, [r6,#oAIState_Unk_08]
	sub r0, #1
	strh r0, [r6,#oAIState_Unk_08]
	bne locret_811650E
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_02]
locret_811650E:
	pop {r4-r7,pc}
	thumb_func_end sub_81164EC

	thumb_local_start
sub_8116510:
	push {r4-r7,lr}
	ldrb r0, [r5,#oBattleObject_Alliance]
	mov r1, #1
	eor r0, r1
	bl sub_80103F8
	tst r0, r0
	beq locret_811654E
	push {r0}
	ldrb r0, [r4,#oAIData_Version_16]
	lsl r0, r0, #2
	ldr r1, off_8116550 // =off_8116554
	ldr r0, [r1,r0]
	push {r0}
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	pop {r1}
	ldrb r0, [r1,r0]
	push {r0}
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	ldr r1, off_8116590 // =loc_8116594
	ldrb r1, [r1,r0]
	pop {r0}
	pop {r2}
	bl sub_80DFAD6
locret_811654E:
	pop {r4-r7,pc}
off_8116550: .word off_8116554
off_8116554: .word byte_8116560
	.word byte_8116570
	.word byte_8116580
byte_8116560: .byte 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0
byte_8116570: .byte 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0, 0x2, 0x3, 0x0
byte_8116580: .byte 0x0, 0x2, 0x3, 0x4, 0x0, 0x2, 0x3, 0x4, 0x0, 0x2, 0x3, 0x4, 0x0, 0x2, 0x3, 0x4
off_8116590: .word byte_8116594
byte_8116594: .byte 0x0, 0x1, 0x2, 0x0, 0x1, 0x2, 0x0, 0x1, 0x2, 0x0, 0x1, 0x2, 0x0, 0x1, 0x2, 0x0
	thumb_func_end sub_8116510

	thumb_func_start sub_81165A4
sub_81165A4:
	mov r0, #0x60
	ldrh r0, [r5,r0]
	mov r1, #0x62
	ldrh r1, [r5,r1]
	cmp r1, r0
	bgt locret_81165B4
	mov r0, #0
	strh r0, [r5,#oBattleObject_HP]
locret_81165B4:
	mov pc, lr
	thumb_func_end sub_81165A4

	.balign 4, 0x00
dword_81165B8: .word 0x4000
byte_81165BC: .byte 0x4, 0x1F, 0x1, 0x0, 0x1F, 0x0, 0x0, 0x0
byte_81165C4: .byte 0x1E, 0x0, 0x0, 0x8, 0x3C, 0x0, 0x32, 0x0, 0x1, 0x8, 0x3C, 0x0, 0x46
	.byte 0x0, 0x2, 0x8, 0x78, 0x0, 0x64, 0x0, 0x3, 0x8, 0x78, 0x0, 0x64, 0x0
	.byte 0x4, 0x8, 0xC8, 0x0, 0x64, 0x0, 0x5, 0x8, 0xC8, 0x0, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
off_81166B0: .word sub_81166F2+1
	.word sub_80165B8+1
	.word sub_811670E+1
	.word sub_80166AE+1
	.word sub_8016B02+1
	.word sub_8016CE8+1
	.word sub_8016B36+1
	.word sub_8016B72+1
	.word sub_8116720+1
	thumb_func_start sub_81166D4
sub_81166D4:
	push {lr}
	bl object_clearCollisionRegion // () -> void
	mov r0, #7
	strb r0, [r5,#oBattleObject_PanelX]
	bl object_setCoordinatesFromPanels // () -> void
	bl object_updateCollisionPanels
	ldrh r1, [r5,#oBattleObject_MaxHP]
	ldr r0, dword_8116888 // =0x4000
	svc 6
	mov r1, #0x80
	strh r0, [r5,r1]
	pop {pc}
	thumb_func_end sub_81166D4

	thumb_local_start
sub_81166F2:
	push {lr}
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	bl sub_800139A
	lsr r0, r0, #2
	bcc locret_811670C
	mov r0, #1
	strb r0, [r5,#oBattleObject_CurAction]
	mov r0, #0
	strh r0, [r5,#oBattleObject_CurPhaseAndPhaseInitialized]
locret_811670C:
	pop {pc}
	thumb_func_end sub_81166F2

	thumb_local_start
sub_811670E:
	push {lr}
	bl sub_800A11C
	mov r0, r5
	bl sub_80077B4
	mov r0, #8
	str r0, [r5,#oBattleObject_CurStateActionPhaseAndPhaseInitialized]
	pop {pc}
	thumb_func_end sub_811670E

	thumb_local_start
sub_8116720:
	push {r4,r6,lr}
	ldr r4, [r5,#oBattleObject_AIDataPtr]
	mov r6, #0x80
	add r6, r6, r4
	ldr r1, off_8116750 // =off_8116754
	ldrb r0, [r6,#oAIState_Unk_00]
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldrb r0, [r5,#oObjectHeader_Flags]
	mov r1, #2
	bic r0, r1
	strb r0, [r5,#oObjectHeader_Flags]
	ldrh r0, [r5,#oBattleObject_HP]
	ldrh r1, [r5,#oBattleObject_MaxHP]
	mov r2, #0x80
	ldrh r2, [r5,r2]
	sub r1, r1, r0
	mov r0, r1
	mul r0, r2
	bl sub_801DFA2
	pop {r4,r6,pc}
	.byte 0, 0
off_8116750: .word off_8116754
off_8116754: .word sub_8116758+1
	thumb_func_end sub_8116720

	thumb_local_start
sub_8116758:
	push {lr}
	ldrb r0, [r6,#oAIState_Unk_02]
	cmp r0, #0
	bne loc_811676C
	mov r0, #1
	strb r0, [r6,#oAIState_Unk_02]
	mov r0, #0x1e
	strh r0, [r6,#oAIState_Unk_08]
	bl sub_811677A
loc_811676C:
	ldrh r0, [r6,#oAIState_Unk_08]
	sub r0, #1
	strh r0, [r6,#oAIState_Unk_08]
	bne locret_8116778
	mov r0, #0
	strb r0, [r6,#oAIState_Unk_02]
locret_8116778:
	pop {pc}
	thumb_func_end sub_8116758

	thumb_local_start
sub_811677A:
	push {r4,r6,r7,lr}
	mov r0, #0x60
	add r0, r0, r5
	mov r3, #8
loc_8116782:
	ldr r1, [r0]
	cmp r1, #0
	beq loc_8116790
	add r0, #4
	sub r3, #1
	bne loc_8116782
	b locret_81167B6
loc_8116790:
	mov r7, r0
	bl sub_81167D2
	ldr r4, off_81167C0 // =byte_81167C8
	ldrb r4, [r4,r0]
	lsl r4, r4, #8
	orr r4, r0
	ldr r6, off_81167C4 // =byte_81167CD
	ldrb r6, [r6,r0]
	ldr r2, dword_811688C // =0x10000
	ldr r3, dword_8116890 // =0xf880080
	bl sub_8015C94
	cmp r0, #0
	beq locret_81167B6
	mov r2, #0
	mov r3, #0
	bl sub_80D464A
locret_81167B6:
	pop {r4,r6,r7,pc}
	.word 0
	.byte 0, 0, 0, 0
off_81167C0: .word byte_81167C8
off_81167C4: .word byte_81167CD
byte_81167C8: .byte 0x78, 0x64, 0x5A, 0x3C, 0x5A
byte_81167CD: .byte 0x1E, 0x32, 0x46, 0x5A, 0x0
	thumb_func_end sub_811677A

	thumb_local_start
sub_81167D2:
	push {lr}
	bl sub_8116834
	cmp r0, #4
	beq locret_81167EE
	bl GetPositiveSignedRNG2
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#oBattleObject_Param1]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, off_81167F0 // =byte_81167F4
	ldrb r0, [r1,r0]
locret_81167EE:
	pop {pc}
off_81167F0: .word byte_81167F4
byte_81167F4: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1
	.byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x2
	.byte 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x3, 0x3, 0x3
	.byte 0x3, 0x3, 0x3, 0x3, 0x3, 0x2, 0x2, 0x2, 0x1, 0x1, 0x1, 0x0, 0x0
	thumb_func_end sub_81167D2

	thumb_local_start
sub_8116834:
	push {r4,r6,r7,lr}
	mov r7, #0
	mov r0, #0x60
	add r0, r0, r5
	mov r3, #8
	mov r4, #0
	mov r6, #0
loc_8116842:
	ldr r1, [r0]
	cmp r1, #0
	beq loc_8116858
	add r4, #1
	ldrb r2, [r1,#4]
	cmp r2, #4
	beq loc_8116874
	ldrb r1, [r1,#6]
	cmp r1, #1
	blt loc_8116858
	add r6, #1
loc_8116858:
	add r0, #4
	sub r3, #1
	bne loc_8116842
	cmp r4, #5
	blt loc_8116874
	cmp r6, #3
	blt loc_8116874
	bl GetPositiveSignedRNG2
	mov r1, #7
	and r0, r1
	cmp r0, #4
	bne loc_8116874
	mov r7, r0
loc_8116874:
	mov r0, r7
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8116834

	thumb_func_start sub_8116878
sub_8116878:
	push {lr}
	ldrh r1, [r0,#oBattleObject_HP]
	cmp r1, #0
	ble locret_8116884
	sub r1, #1
	strh r1, [r0,#oBattleObject_HP]
locret_8116884:
	pop {pc}
	.balign 4, 0x00
dword_8116888: .word 0x4000
dword_811688C: .word 0x10000
dword_8116890: .word 0xF880080
	thumb_func_end sub_8116878

	thumb_func_start sub_8116894
sub_8116894:
	push {lr}
	ldr r0, off_81168A4 // =off_81168A8
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_81168A4: .word off_81168A8
off_81168A8: .word sub_81168B4+1
	.word sub_8116904+1
	.word sub_811691C+1
	thumb_func_end sub_8116894

	thumb_local_start
sub_81168B4:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x3e
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_8116900 // =0x390
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xc8
	mov r1, #7
	bl sprite_setCoordinates
	bl sub_8116904
	pop {pc}
	.byte 0, 0
off_8116900: .word 0x390
	thumb_func_end sub_81168B4

	thumb_local_start
sub_8116904:
	push {lr}
	push {r5}
	ldr r5, off_8116918 // =reqBBS_eStruct2001150
	bl reqBBS_813EE58
	pop {r5}
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_8116918: .word reqBBS_eStruct2001150
	thumb_func_end sub_8116904

	thumb_local_start
sub_811691C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811691C

	thumb_func_start sub_8116924
sub_8116924:
	push {lr}
	ldr r0, off_8116934 // =off_8116938
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8116934: .word off_8116938
off_8116938: .word sub_8116944+1
	.word sub_81169B0+1
	.word sub_8116A3C+1
	thumb_func_end sub_8116924

	thumb_local_start
sub_8116944:
	push {lr}
	mov r0, #1
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xc
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, dword_81169A4 // =0x2d4
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	mov r1, #1
	ldrb r2, [r5,#5]
	tst r2, r2
	beq loc_811698A
	mov r0, #8
	mov r1, #0x23
loc_811698A:
	strb r0, [r5,#9]
	strb r1, [r5]
	ldr r0, dword_81169A8 // =0xb0
	ldr r1, dword_81169AC // =0x40
	bl sprite_setCoordinates
	mov r0, #0xff
	strb r0, [r5,#4]
	mov r0, #6
	strb r0, [r5,#0xc]
	bl sub_81169B0
	pop {pc}
dword_81169A4: .word 0x2D4
dword_81169A8: .word 0xB0
dword_81169AC: .word 0x40
	thumb_func_end sub_8116944

	thumb_local_start
sub_81169B0:
	push {r7,lr}
	ldr r7, off_81169C4 // =ePETMenuData
	ldr r0, off_81169C8 // =off_81169CC
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {r7,pc}
off_81169C4: .word ePETMenuData
off_81169C8: .word off_81169CC
off_81169CC: .word sub_81169D8+1
	.word sub_8116A04+1
	.word sub_8116A28+1
	thumb_func_end sub_81169B0

	thumb_local_start
sub_81169D8:
	push {lr}
	mov r0, #0x10
	ldrsh r1, [r7,r0]
	tst r1, r1
	bne locret_8116A00
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_8116A00
	mov r0, #4
	strb r0, [r5,#9]
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
locret_8116A00:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81169D8

	thumb_local_start
sub_8116A04:
	push {lr}
	bl sprite_getFrameParameters
	mov r1, #0xc0
	tst r0, r1
	beq locret_8116A26
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_8116A44
	mov r0, #8
	strb r0, [r5,#9]
locret_8116A26:
	pop {pc}
	thumb_func_end sub_8116A04

	thumb_local_start
sub_8116A28:
	push {lr}
	ldrb r0, [r7]
	cmp r0, #8
	bne loc_8116A34
	mov r0, #8
	strb r0, [r5,#8]
loc_8116A34:
	bl sub_8116A44
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8116A28

	thumb_local_start
sub_8116A3C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8116A3C

	thumb_local_start
sub_8116A44:
	push {r4-r7,lr}
	ldr r7, off_8116A90 // =dword_8116A94
	mov r6, #0
loc_8116A4A:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_8116A98 - 0x8116a94)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	cmp r6, #3
	blt loc_8116A4A
	ldr r7, off_8116AAC // =dword_8116AB0
	mov r6, #0
loc_8116A62:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_8116AB4 - 0x8116ab0)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	cmp r6, #3
	blt loc_8116A62
	ldr r7, off_8116AC8 // =dword_8116ACC
	mov r6, #0
loc_8116A7A:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_8116AD0 - 0x8116acc)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	cmp r6, #2
	blt loc_8116A7A
	pop {r4-r7,pc}
off_8116A90: .word dword_8116A94
dword_8116A94: .word 0x80904022
byte_8116A98: .byte 0x80, 0xE2, 0x0, 0x0, 0x22, 0x40, 0xB0, 0x80, 0x88, 0xE2
	.byte 0x0, 0x0, 0x22, 0x80, 0xD0, 0x0, 0x90, 0xE2, 0x0, 0x0
off_8116AAC: .word dword_8116AB0
dword_8116AB0: .word 0x80A0403A
byte_8116AB4: .byte 0x92, 0xE2, 0x0, 0x0, 0x3A, 0x0, 0xC0, 0x40, 0x9A, 0xE2
	.byte 0x0, 0x0, 0x3A, 0x80, 0xD0, 0x0, 0x9E, 0xE2, 0x0, 0x0
off_8116AC8: .word dword_8116ACC
dword_8116ACC: .word 0x80A84052
byte_8116AD0: .byte 0xA0, 0xE2, 0x0, 0x0, 0x52, 0x0, 0xC8, 0x40, 0xA8, 0xE2
	.byte 0x0, 0x0
	thumb_func_end sub_8116A44

	thumb_func_start sub_8116ADC
sub_8116ADC:
	push {r7,lr}
	ldr r7, off_8116AFC // =ePETMenuData
	ldr r0, off_8116AEC // =off_8116AF0
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r7,pc}
off_8116AEC: .word off_8116AF0
off_8116AF0: .word sub_8116B00+1
	.word sub_8116B9C+1
	.word sub_8116C38+1
off_8116AFC: .word ePETMenuData
	thumb_func_end sub_8116ADC

	thumb_local_start
sub_8116B00:
	push {r4,lr}
	mov r0, #0x23
	ldrb r1, [r5,#4]
	tst r1, r1
	beq loc_8116B0C
	mov r0, #0x43
loc_8116B0C:
	strb r0, [r5]
	mov r0, #0
	bl loc_8002774 // (int a1, int a2) -> void
	ldrb r4, [r5,#4]
	cmp r4, #3
	bne loc_8116B24
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	beq loc_8116B24
	mov r4, #8
loc_8116B24:
	mov r0, r4
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xd
	bl sub_800304A
	mov r0, #1
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, off_8116B8C // =off_8116B90
	ldr r0, [r0]
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#9]
	mov r1, #0x20
	ldrb r0, [r5,#5]
	tst r0, r0
	beq loc_8116B76
	ldr r0, off_8116BE8 // =byte_8116BEC
	ldrb r1, [r5,#4]
	lsl r1, r1, #1
	ldrb r1, [r0,r1]
	ldrb r3, [r7,#4]
	ldrb r2, [r5,#4]
	cmp r3, r2
	bne loc_8116B76
	mov r0, #0x1e
	b loc_8116B78
loc_8116B76:
	mov r0, #0x16
loc_8116B78:
	bl sprite_setCoordinates
	mov r0, #1
	strb r0, [r5,#0xd]
	mov r0, #0
	strb r0, [r5,#0xc]
	bl sub_8116B9C
	pop {r4,pc}
	.balign 4, 0x00
off_8116B8C: .word off_8116B90
off_8116B90: .word 0x350
	.word dword_8116B98
dword_8116B98: .word 0x20
	thumb_func_end sub_8116B00

	thumb_local_start
sub_8116B9C:
	push {lr}
	ldr r0, off_8116BB0 // =off_8116BB4
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.byte 0, 0
off_8116BB0: .word off_8116BB4
off_8116BB4: .word sub_8116BC0+1
	.word sub_8116BFC+1
	.word sub_8116C14+1
	thumb_func_end sub_8116B9C

	thumb_local_start
sub_8116BC0:
	push {lr}
	mov r0, #0
	mov r1, #8
	bl sprite_addCoordinates
	bl sprite_getCoordinates
	ldr r3, off_8116BE8 // =byte_8116BEC
	ldrb r2, [r5,#4]
	lsl r2, r2, #1
	ldrh r3, [r3,r2]
	cmp r3, r1
	bgt locret_8116BE4
	mov r1, r3
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#9]
locret_8116BE4:
	pop {pc}
	.balign 4, 0x00
off_8116BE8: .word byte_8116BEC
byte_8116BEC: .byte 0x20, 0x0, 0x30, 0x0, 0x40, 0x0, 0x50, 0x0, 0x60, 0x0, 0x70
	.byte 0x0, 0x80, 0x0, 0x90, 0x0
	thumb_func_end sub_8116BC0

	thumb_local_start
sub_8116BFC:
	push {lr}
	bl sub_8116C40
	bl sub_8116C78
	ldrb r0, [r7]
	cmp r0, #8
	bne locret_8116C10
	mov r0, #8
	strb r0, [r5,#9]
locret_8116C10:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8116BFC

	thumb_local_start
sub_8116C14:
	push {lr}
	mov r1, #0x10
	ldrsh r0, [r7,r1]
	lsl r0, r0, #3
	mov r1, #0
	bl sprite_addCoordinates
	bl sprite_getCoordinates
	cmp r0, #0
	bge locret_8116C2E
	bl sub_804668A
locret_8116C2E:
	pop {pc}
	.word dword_8116C34
dword_8116C34: .word 0x20
	thumb_func_end sub_8116C14

	thumb_local_start
sub_8116C38:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8116C38

	thumb_local_start
sub_8116C40:
	push {r4-r6,lr}
	bl sub_8116CD4
	mov r4, r0
	mov r0, #0x16
	mov r1, #2
	neg r1, r1
	mov r3, #0
	ldrb r6, [r7,#4]
	ldrb r2, [r5,#4]
	cmp r6, r2
	bne loc_8116C5E
	mov r0, #0x1e
	mov r1, #2
	mov r3, #1
loc_8116C5E:
	ldrh r2, [r4,#0xc]
	add r2, r2, r1
	tst r3, r3
	beq loc_8116C6C
	cmp r2, r0
	bge loc_8116C72
	b loc_8116C70
loc_8116C6C:
	cmp r2, r0
	ble loc_8116C72
loc_8116C70:
	mov r0, r2
loc_8116C72:
	strh r0, [r4,#0xc]
	pop {r4-r6,pc}
	.balign 4, 0x00
	thumb_func_end sub_8116C40

	thumb_local_start
sub_8116C78:
	push {r4-r6,lr}
	mov r4, #1
	mov r6, #0xd
	mov r2, #0
	ldrb r0, [r7,#4]
	ldrb r1, [r5,#4]
	cmp r0, r1
	bne loc_8116C8E
	mov r4, #0
	mov r6, #0xc
	mov r2, #1
loc_8116C8E:
	ldrb r0, [r5]
	mov r1, #0x40
	bic r0, r1
	strb r0, [r5]
	tst r2, r2
	beq loc_8116CBA
	ldr r0, off_8116CC8 // =byte_8116CCC
	ldrb r1, [r5,#0xc]
	lsl r1, r1, #2
	ldrb r6, [r0,r1]
	add r1, #1
	ldrb r4, [r0,r1]
	ldrb r2, [r5,#0xd]
	sub r2, #1
	strb r2, [r5,#0xd]
	bge loc_8116CBA
	add r1, #1
	ldrb r2, [r0,r1]
	strb r2, [r5,#0xc]
	add r1, #1
	ldrb r2, [r0,r1]
	strb r2, [r5,#0xd]
loc_8116CBA:
	mov r0, r6
	bl sub_800304A
	mov r0, r4
	bl sprite_setPalette // (int pallete) -> void
	pop {r4-r6,pc}
off_8116CC8: .word byte_8116CCC
byte_8116CCC: .byte 0xC, 0x0, 0x1, 0x8, 0xD, 0x1, 0x0, 0x8
	thumb_func_end sub_8116C78

	thumb_local_start
sub_8116CD4:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_8116CD4

	thumb_func_start sub_8116CE0
sub_8116CE0:
	push {lr}
	ldr r0, off_8116CF0 // =off_8116CF4
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_8116CF0: .word off_8116CF4
off_8116CF4: .word sub_8116D00+1
	.word sub_8116D6C+1
	.word sub_8116E08+1
	thumb_func_end sub_8116CE0

	thumb_local_start
sub_8116D00:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #2
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	strb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xc
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, dword_8116D5C // =0x38b
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	ldr r0, dword_8116D60 // =0x11a
	mov r2, #0
	ldrb r1, [r5,#5]
	tst r1, r1
	beq loc_8116D4E
	ldr r0, off_8116D68 // =0xaa
	mov r2, #4
loc_8116D4E:
	strb r2, [r5,#9]
	ldr r1, dword_8116D64 // =0x97
	bl sprite_setCoordinates
	bl sub_8116D6C
	pop {pc}
dword_8116D5C: .word 0x38B
dword_8116D60: .word 0x11A
dword_8116D64: .word 0x97
off_8116D68: .word 0xAA
	thumb_func_end sub_8116D00

	thumb_local_start
sub_8116D6C:
	push {lr}
	ldr r0, off_8116D80 // =off_8116D84
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.byte 0, 0
off_8116D80: .word off_8116D84
off_8116D84: .word sub_8116D90+1
	.word sub_8116DB4+1
	.word sub_8116DEC+1
	thumb_func_end sub_8116D6C

	thumb_local_start
sub_8116D90:
	push {lr}
	mov r0, #0x10
	neg r0, r0
	mov r1, #0
	bl sprite_addCoordinates
	bl sprite_getCoordinates
	mov r2, #0xaa
	cmp r0, r2
	bgt locret_8116DB0
	mov r0, r2
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#9]
locret_8116DB0:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8116D90

	thumb_local_start
sub_8116DB4:
	push {r7,lr}
	mov r0, #0
	ldr r7, off_8116DE8 // =ePETMenuData
	ldrb r3, [r7,#0x4] // (byte_200DF24 - 0x200df20)
	cmp r3, #8
	bne loc_8116DC2
	mov r0, #1
loc_8116DC2:
	strb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq loc_8116DD8
	strb r0, [r5,#0xd]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_8116DD8:
	bl sprite_update
	ldrb r0, [r7]
	cmp r0, #8
	bne locret_8116DE6
	mov r0, #8
	strb r0, [r5,#9]
locret_8116DE6:
	pop {r7,pc}
off_8116DE8: .word ePETMenuData
	thumb_func_end sub_8116DB4

	thumb_local_start
sub_8116DEC:
	push {lr}
	mov r0, #0x16
	mov r1, #0
	bl sprite_addCoordinates
	ldr r2, dword_8116E04 // =0x11a
	cmp r0, r2
	blt locret_8116E00
	mov r0, #8
	strb r0, [r5,#8]
locret_8116E00:
	pop {pc}
	.balign 4, 0x00
dword_8116E04: .word 0x11A
	thumb_func_end sub_8116DEC

	thumb_local_start
sub_8116E08:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8116E08

	thumb_func_start sub_8116E10
sub_8116E10:
	push {lr}
	ldr r0, off_8116E20 // =off_8116E24
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_8116E20: .word off_8116E24
off_8116E24: .word sub_8116E30+1
	.word sub_8116F34+1
	.word sub_8116FD4+1
	thumb_func_end sub_8116E10

	thumb_local_start
sub_8116E30:
	push {lr}
	mov r0, #0x23
	ldrb r4, [r5,#4]
	tst r4, r4
	beq loc_8116E3C
	mov r0, #0xa3
loc_8116E3C:
	strb r0, [r5]
	mov r0, #6
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r2, off_8116F08 // =off_8116F0C
	ldr r1, [r2,r1]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldr r0, off_8116EAC // =byte_8116F18
	ldrb r0, [r0,r4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_8116EB0 // =byte_8116F1D
	ldrb r0, [r0,r4]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	ldr r0, off_8116EB4 // =off_8116EB8
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0,r4]
	bl sub_8002E14
	ldr r0, off_8116EC4 // =off_8116EC8
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	lsl r2, r4, #2
	ldr r0, [r0,r2]
	bl sub_800306C
	ldr r0, off_8116EE8 // =off_8116EEC
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0,r4]
	bl sub_800304A
	ldr r0, off_8116EF8 // =off_8116EFC
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0,r4]
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_8116F34
	pop {pc}
	.balign 4, 0x00
off_8116EAC: .word byte_8116F18
off_8116EB0: .word byte_8116F1D
off_8116EB4: .word off_8116EB8
off_8116EB8: .word byte_8116F23
	.word byte_8116F23
	.word byte_8116F23
off_8116EC4: .word off_8116EC8
off_8116EC8: .word off_8116ED4
	.word off_8116ED4
	.word off_8116ED4
off_8116ED4: .word 0x140
	.word 0x150
	.word 0x160
	.word 0x140
	.word 0x150
off_8116EE8: .word off_8116EEC
off_8116EEC: .word byte_8116F28
	.word byte_8116F28
	.word byte_8116F28
off_8116EF8: .word off_8116EFC
off_8116EFC: .word byte_8116F2D
	.word byte_8116F2D
	.word byte_8116F2D
off_8116F08: .word off_8116F0C
off_8116F0C: .word unk_2020500
	.word unk_2020500
	.word unk_2034B6C
byte_8116F18: .byte 0x0, 0x2, 0x2, 0x1, 0x2
byte_8116F1D: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8116F23: .byte 0x2, 0x2, 0x2, 0x2, 0x2
byte_8116F28: .byte 0xA, 0xA, 0xA, 0xA, 0xA
byte_8116F2D: .byte 0x0, 0x1, 0x1, 0x0, 0x1, 0x0, 0x0
	thumb_func_end sub_8116E30

	thumb_local_start
sub_8116F34:
	push {lr}
	ldr r0, off_8116F48 // =jt_8116F4C
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
off_8116F48: .word jt_8116F4C
jt_8116F4C: .word sub_8116F60+1
	.word sub_8116F8C+1
	.word sub_8116F9C+1
	.word sub_8116F60+1
	.word sub_8116F8C+1
	thumb_func_end sub_8116F34

	thumb_local_start
sub_8116F60:
	push {lr}
	mov r0, #0
	ldrh r1, [r5,#0xe]
	tst r1, r1
	bne loc_8116F6C
	mov r0, #1
loc_8116F6C:
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#4]
	cmp r0, #3
	beq locret_8116F88
	ldrb r0, [r5,#5]
	tst r0, r0
	bne locret_8116F88
	bl sub_81170AC
locret_8116F88:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8116F60

	thumb_local_start
sub_8116F8C:
	push {lr}
	bl sub_81170AC
	ldrh r0, [r5,#0xc]
	bl sub_81170C0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8116F8C

	thumb_local_start
sub_8116F9C:
	push {lr}
	mov r0, #0xa3
	ldrh r1, [r5,#0xe]
	tst r1, r1
	bne loc_8116FA8
	mov r0, #1
loc_8116FA8:
	strb r0, [r5]
	bl sub_81170AC
	ldrh r0, [r5,#0xe]
	bl sub_81170C0
	ldr r0, off_8116FD0 // =sSubmenu
	ldrb r0, [r0]
	cmp r0, #0x18
	beq loc_8116FC0
	cmp r0, #8
	bne locret_8116FCC
loc_8116FC0:
	bl sprite_getCoordinates
	cmp r0, #0x38
	bge locret_8116FCC
	mov r0, #1
	strb r0, [r5]
locret_8116FCC:
	pop {pc}
	.byte 0, 0
off_8116FD0: .word sSubmenu
	thumb_func_end sub_8116F9C

	thumb_local_start
sub_8116FD4:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8116FD4

	thumb_func_start sub_8116FDC
sub_8116FDC:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, #0
	str r0, [sp,#0xc]
	mov r4, r2
	add r7, r4, #3
loc_8116FEE:
	mov r0, r4
	bl getStructFrom2008450
	beq loc_811704A
	mov r5, r1
	ldr r3, [sp,#0xc]
	lsl r3, r3, #3
	ldr r2, off_811705C // =byte_8117060
	ldr r6, [r2,r3]
	ldr r1, [sp,#8]
	cmp r1, r4
	beq loc_8117016
	ldrh r1, [r5,#0xe]
	tst r1, r1
	bne loc_8117016
	ldr r6, dword_811707C // =0xfffffffd
	ldrh r1, [r5,#0xc]
	cmp r1, #0xa
	bge loc_8117016
	ldr r6, dword_8117078 // =0xfffffff9
loc_8117016:
	ldr r0, [sp]
	add r0, r0, r6
	add r3, #4
	ldr r6, [r2,r3]
	ldr r1, [sp,#4]
	add r1, r1, r6
	bl sprite_setCoordinates
	ldr r0, [sp]
	cmp r0, #0x38
	bge loc_8117042
	ldr r0, off_8117080 // =sSubmenu
	ldrb r0, [r0]
	cmp r0, #0x18
	beq loc_8117038
	cmp r0, #8
	bne loc_8117042
loc_8117038:
	ldrb r0, [r5]
	mov r1, #2
	bic r0, r1
	strb r0, [r5]
	b loc_811704A
loc_8117042:
	ldrb r0, [r5]
	mov r1, #2
	orr r0, r1
	strb r0, [r5]
loc_811704A:
	ldr r0, [sp,#0xc]
	add r0, #1
	str r0, [sp,#0xc]
	add r4, #1
	cmp r4, r7
	blt loc_8116FEE
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811705C: .word byte_8117060
byte_8117060: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xF3, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x0, 0x0, 0x0, 0xD, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_8117078: .word 0xFFFFFFF9
dword_811707C: .word 0xFFFFFFFD
off_8117080: .word sSubmenu
	thumb_func_end sub_8116FDC

	thumb_func_start sub_8117084
sub_8117084:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r4, r2
	add r6, r2, #3
loc_8117090:
	mov r0, r4
	bl getStructFrom2008450
	beq loc_81170A6
	ldr r0, [sp]
	strh r0, [r1,#0xc]
	ldr r0, [sp,#4]
	strh r0, [r1,#0xe]
	add r4, #1
	cmp r4, r6
	blt loc_8117090
loc_81170A6:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8117084

	thumb_local_start
sub_81170AC:
	push {lr}
	mov r0, #1
	ldrh r1, [r5,#0xc]
	ldrh r2, [r5,#0xe]
	cmp r1, r2
	bne loc_81170BA
	mov r0, #0
loc_81170BA:
	bl sprite_setPalette // (int pallete) -> void
	pop {pc}
	thumb_func_end sub_81170AC

	thumb_local_start
sub_81170C0:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	mov r1, #0x64
	svc 6
	str r0, [sp]
	mov r0, r1
	mov r1, #0xa
	svc 6
	str r0, [sp,#4]
	str r1, [sp,#8]
	ldr r0, dword_8117100 // =0x7ffffe00
	ldr r1, dword_8117104 // =0x80000000
	ldr r2, [sp]
	lsr r1, r2
	bic r0, r1
	ldr r2, [sp,#4]
	tst r2, r2
	bne loc_81170EA
	ldr r1, [sp]
	tst r1, r1
	beq loc_81170F0
loc_81170EA:
	ldr r1, dword_8117108 // =0x10000000
	lsr r1, r2
	bic r0, r1
loc_81170F0:
	ldr r2, [sp,#8]
	ldr r1, dword_811710C // =0x40000
	lsr r1, r2
	bic r0, r1
	bl sub_8002FA6
	add sp, sp, #0x10
	pop {r4-r7,pc}
dword_8117100: .word 0x7FFFFE00
dword_8117104: .word 0x80000000
dword_8117108: .word 0x10000000
dword_811710C: .word 0x40000
	thumb_func_end sub_81170C0

	thumb_func_start sub_8117110
sub_8117110:
	push {lr}
	ldr r0, off_8117120 // =off_8117124
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_8117120: .word off_8117124
off_8117124: .word sub_8117130+1
	.word sub_81171B4+1
	.word sub_81171CC+1
	thumb_func_end sub_8117110

	thumb_local_start
sub_8117130:
	push {lr}
	mov r0, #0x23
	ldrb r1, [r5,#6]
	mov r2, #2
	tst r1, r2
	bne loc_811713E
	mov r0, #1
loc_811713E:
	strb r0, [r5]
	mov r0, #0xb
	ldr r1, off_81171A8 // =off_81171AC
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_8117194 // =off_8117198
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	mov r0, #0xa
	ldrb r1, [r5,#4]
	cmp r1, #2
	blt loc_811717E
	mov r0, #4
loc_811717E:
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_81171B4
	pop {pc}
	.balign 4, 0x00
off_8117194: .word off_8117198
off_8117198: .word 0x180
	.word 0x198
	.word 0x1B0
	.word 0x1C8
off_81171A8: .word off_81171AC
off_81171AC: .word unk_203526C
	.word unk_201D884
	thumb_func_end sub_8117130

	thumb_local_start
sub_81171B4:
	push {lr}
	mov r0, #0x23
	ldrb r1, [r5,#6]
	mov r2, #2
	tst r1, r2
	bne loc_81171C2
	mov r0, #1
loc_81171C2:
	strb r0, [r5]
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81171B4

	thumb_local_start
sub_81171CC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81171CC

	thumb_func_start sub_81171D4
sub_81171D4:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_81171EE
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_81171EE:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_81171D4

	thumb_func_start sub_81171F4
sub_81171F4:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_8117214
	ldrb r2, [r1,#6]
	mov r3, #2
	ldr r0, [sp]
	tst r0, r0
	bne loc_8117210
	orr r2, r3
	b loc_8117212
loc_8117210:
	bic r2, r3
loc_8117212:
	strb r2, [r1,#6]
loc_8117214:
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end sub_81171F4

	thumb_func_start sub_8117218
sub_8117218:
	push {lr}
	ldr r0, off_8117228 // =off_811722C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8117228: .word off_811722C
off_811722C: .word sub_8117238+1
	.word sub_811727C+1
	.word sub_81172A6+1
	thumb_func_end sub_8117218

	thumb_local_start
sub_8117238:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x18
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #8
	bl sub_800304A
	ldr r0, off_8117278 // =0x380
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	mov r0, #0
	mov r1, #0
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811727C
	pop {pc}
	.balign 4, 0x00
off_8117278: .word 0x380
	thumb_func_end sub_8117238

	thumb_local_start
sub_811727C:
	push {lr}
	mov r4, #0x21
	mov r0, #1
	ldrb r1, [r5,#4]
	lsl r0, r1
	bl sub_803C316
	beq loc_811729E
	mov r4, #0x23
	mov r0, #0x19
	mov r1, #0x29
	ldrb r2, [r5,#4]
	mov r3, #0x20
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
loc_811729E:
	strb r4, [r5]
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811727C

	thumb_local_start
sub_81172A6:
	push {lr}
	bl sub_804668A
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_81172A6

	thumb_func_start sub_81172B0
sub_81172B0:
	push {lr}
	ldr r0, off_81172C0 // =off_81172C4
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_81172C0: .word off_81172C4
off_81172C4: .word sub_81172D0+1
	.word sub_811734C+1
	.word sub_8117354+1
	thumb_func_end sub_81172B0

	thumb_local_start
sub_81172D0:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	ldrb r0, [r5,#4]
	cmp r0, #0x1c
	beq loc_81172E2
	cmp r0, #0x1d
	beq loc_81172E6
	b loc_81172E8
loc_81172E2:
	ldr r1, off_8117344 // =unk_2032A04
	b loc_81172E8
loc_81172E6:
	ldr r1, off_8117348 // =unk_2032A04
loc_81172E8:
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#5]
	mov r1, #0x7f
	and r0, r1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#3]
	add r0, #1
	bl sub_800304A
	ldrb r0, [r5,#3]
	lsl r0, r0, #6
	ldr r1, off_8117340 // =0x100
	add r0, r0, r1
	bl sub_800306C
	mov r0, #3
	bl sub_8002E14
	mov r0, #4
	bl sub_8003060
	ldrb r0, [r5,#6]
	ldrb r1, [r5,#7]
	bl sprite_setCoordinates
	ldrb r0, [r5,#5]
	mov r1, #0x80
	tst r0, r1
	beq loc_8117334
	mov r0, #1
	bl sprite_setFlip
loc_8117334:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811734C
	pop {pc}
	.byte 0, 0
off_8117340: .word 0x100
off_8117344: .word unk_2032A04
off_8117348: .word unk_2032A04
	thumb_func_end sub_81172D0

	thumb_local_start
sub_811734C:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811734C

	thumb_local_start
sub_8117354:
	push {lr}
	bl sub_804668A
	pop {pc}
off_811735C: .word byte_8117374
	.word byte_811738C
	.word byte_81173A4
	.word byte_81173BC
	.word byte_81173D4
	.word byte_81173EC
byte_8117374: .byte 0x8, 0x0, 0x28, 0x0, 0xF6, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x4, 0x0, 0x9
	.byte 0x0, 0x0, 0x0, 0xF, 0x0, 0xF7, 0x0, 0x93, 0x0, 0xC, 0x0
byte_811738C: .byte 0x8, 0x0, 0x50, 0x0, 0xF1, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x4, 0x0, 0x7
	.byte 0x0, 0x0, 0x0, 0xF, 0x0, 0xFA, 0x0, 0x93, 0x0, 0xC, 0x0
byte_81173A4: .byte 0x8, 0x0, 0x6E, 0x0, 0xE7, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x4, 0x0, 0x13
	.byte 0x0, 0x0, 0x0, 0xF, 0x0, 0xFD, 0x0, 0x93, 0x0, 0xC, 0x0
byte_81173BC: .byte 0x8, 0x0, 0x91, 0x0, 0xD0, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x4, 0x0, 0xE
	.byte 0x0, 0x0, 0x0, 0xF, 0x0, 0x4, 0x0, 0x93, 0x0, 0xC, 0x0
byte_81173D4: .byte 0x8, 0x0, 0xB4, 0x0, 0xF6, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x4, 0x0, 0x8
	.byte 0x0, 0x0, 0x0, 0xF, 0x0, 0xA, 0x0, 0x93, 0x0, 0xC, 0x0
byte_81173EC: .byte 0x8, 0x0, 0xD2, 0x0, 0xE8, 0xFF, 0x10, 0x0, 0x0, 0x0, 0x4, 0x0, 0xA
	.byte 0x0, 0x0, 0x0, 0xF, 0x0, 0xD, 0x0, 0x93, 0x0, 0xC, 0x0
	thumb_func_end sub_8117354

	thumb_func_start sub_8117404
sub_8117404:
	push {lr}
	ldr r0, off_8117414 // =off_8117418
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8117414: .word off_8117418
off_8117418: .word sub_8117424+1
	.word sub_8117488+1
	.word sub_81174B8+1
	thumb_func_end sub_8117404

	thumb_local_start
sub_8117424:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0xc
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x80
	mov r2, #0x80
	bl sprite_setScaleParameters
	mov r0, #5
	ldrb r1, [r5,#5]
	add r0, r0, r1
	bl sub_800304A
	ldrb r0, [r5,#5]
	lsl r0, r0, #4
	ldr r1, off_8117484 // =0x200
	add r0, r0, r1
	bl sub_800306C
	mov r0, #3
	bl sub_8002E14
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	mov r1, #0
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_81175AC
	bl sub_8117488
	pop {pc}
off_8117484: .word 0x200
	thumb_func_end sub_8117424

	thumb_local_start
sub_8117488:
	push {lr}
loc_811748A:
	bl sub_81175C4
	ldrh r0, [r0]
	ldr r1, off_81174A0 // =off_81174A4
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bne loc_811748A
	bl sprite_update
	pop {pc}
off_81174A0: .word off_81174A4
off_81174A4: .word sub_81174C0+1
	.word sub_811753C+1
	.word sub_811756C+1
	.word sub_8117588+1
	.word sub_8117592+1
	thumb_func_end sub_8117488

	thumb_local_start
sub_81174B8:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81174B8

	thumb_local_start
sub_81174C0:
	push {lr}
	ldrb r0, [r5,#9]
	tst r0, r0
	bne loc_8117508
	mov r0, #1
	strb r0, [r5,#9]
	bl sub_81175C4
	ldrh r1, [r0,#2]
	str r1, [r5,#0x10]
	ldrh r1, [r0,#4]
	ldr r2, off_81175C8 // =math_sinTable
	lsl r3, r1, #1
	ldrsh r2, [r2,r3]
	str r2, [r5,#0x14]
	ldr r2, off_81175CC // =math_cosTable
	lsl r3, r1, #1
	ldrsh r2, [r2,r3]
	str r2, [r5,#0x18]
	ldrh r1, [r0,#6]
	ldr r2, [r5,#0x14]
	lsl r2, r2, #4
	mul r2, r1
	str r2, [r5,#0x14]
	ldr r2, [r5,#0x18]
	lsl r2, r2, #4
	mul r2, r1
	str r2, [r5,#0x18]
	ldrh r0, [r0,#4]
	mov r1, #0x10
	lsl r1, r1, #4
	sub r0, r1, r0
	mov r1, #0x40
	mov r2, #0x40
	bl sprite_setScaleParameters
loc_8117508:
	bl sprite_getCoordinates
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r3, [r5,#0x14]
	add r0, r0, r3
	ldr r3, [r5,#0x18]
	add r1, r1, r3
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl sprite_setCoordinates
	ldr r0, [r5,#0x10]
	sub r0, #1
	str r0, [r5,#0x10]
	bge loc_8117538
	mov r0, #0
	strb r0, [r5,#9]
	str r0, [r5,#0x10]
	mov r0, #8
	bl sub_81175BC
	mov r0, #1
	pop {pc}
loc_8117538:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_81174C0

	thumb_local_start
sub_811753C:
	push {lr}
	ldrb r0, [r5,#9]
	tst r0, r0
	bne loc_8117550
	mov r0, #1
	strb r0, [r5,#9]
	bl sub_81175C4
	ldrh r0, [r0,#2]
	str r0, [r5,#0x10]
loc_8117550:
	ldr r0, [r5,#0x10]
	sub r0, #1
	str r0, [r5,#0x10]
	bge loc_8117568
	mov r0, #0
	strb r0, [r5,#9]
	str r0, [r5,#0x10]
	mov r0, #4
	bl sub_81175BC
	mov r0, #1
	pop {pc}
loc_8117568:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_811753C

	thumb_local_start
sub_811756C:
	push {lr}
	bl sub_81175C4
	mov r2, #4
	ldrsh r1, [r0,r2]
	mov r2, #2
	ldrsh r0, [r0,r2]
	bl sprite_setCoordinates
	mov r0, #6
	bl sub_81175BC
	mov r0, #1
	pop {pc}
	thumb_func_end sub_811756C

	thumb_local_start
sub_8117588:
	push {lr}
	bl sub_81175AC
	mov r0, #1
	pop {pc}
	thumb_func_end sub_8117588

	thumb_local_start
sub_8117592:
	push {lr}
	bl sub_81175C4
	ldrh r0, [r0,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #4
	bl sub_81175BC
	mov r0, #1
	pop {pc}
	thumb_func_end sub_8117592

	thumb_local_start
sub_81175AC:
	ldrb r0, [r5,#5]
	ldr r1, off_81175B8 // =off_811735C
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0xc]
	mov pc, lr
off_81175B8: .word off_811735C
	thumb_func_end sub_81175AC

	thumb_local_start
sub_81175BC:
	ldr r1, [r5,#0xc]
	add r0, r0, r1
	str r0, [r5,#0xc]
	mov pc, lr
	thumb_func_end sub_81175BC

	thumb_local_start
sub_81175C4:
	ldr r0, [r5,#0xc]
	mov pc, lr
off_81175C8: .word math_sinTable
off_81175CC: .word math_cosTable
	thumb_func_end sub_81175C4

	thumb_func_start sub_81175D0
sub_81175D0:
	push {lr}
	ldr r0, off_81175E0 // =off_81175E4
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_81175E0: .word off_81175E4
off_81175E4: .word sub_81175F0+1
	.word sub_8117680+1
	.word sub_8117688+1
	thumb_func_end sub_81175D0

	thumb_local_start
sub_81175F0:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0xd
	ldr r1, off_8117638 // =byte_2016A04
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sub_800304A
	ldrb r0, [r5,#3]
	lsl r0, r0, #2
	ldr r1, off_811763C // =byte_8117640
	ldr r0, [r1,r0]
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	ldrb r0, [r5,#5]
	ldrb r1, [r5,#6]
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_8117680
	pop {pc}
	.balign 4, 0x00
off_8117638: .word byte_2016A04
off_811763C: .word byte_8117640
byte_8117640: .byte 0x20, 0x0, 0x0, 0x0, 0x60, 0x0, 0x0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0xA0, 0x0, 0x0, 0x0, 0xB0, 0x0
	.byte 0x0, 0x0, 0xC0, 0x0, 0x0, 0x0, 0xD0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0
	.byte 0x0, 0xF0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x10, 0x1, 0x0, 0x0
	.byte 0x20, 0x1, 0x0, 0x0, 0x30, 0x1, 0x0, 0x0, 0x40, 0x1, 0x0, 0x0
	thumb_func_end sub_81175F0

	thumb_local_start
sub_8117680:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_8117680

	thumb_local_start
sub_8117688:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8117688

	thumb_func_start sub_8117690
sub_8117690:
	push {lr}
	ldr r0, off_81176A0 // =off_81176A4
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_81176A0: .word off_81176A4
off_81176A4: .word sub_81176B0+1
	.word sub_81176C0+1
	.word sub_81176C8+1
	thumb_func_end sub_8117690

	thumb_local_start
sub_81176B0:
	push {lr}
	mov r0, #1
	strb r0, [r5]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_81176C0
	pop {pc}
	thumb_func_end sub_81176B0

	thumb_local_start
sub_81176C0:
	push {lr}
	bl sub_81176D0
	pop {pc}
	thumb_func_end sub_81176C0

	thumb_local_start
sub_81176C8:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81176C8

	thumb_local_start
sub_81176D0:
	push {r4-r7,lr}
	ldr r3, off_8117720 // =byte_8117724
	ldrb r2, [r5,#4]
	lsl r2, r2, #2
	ldrh r1, [r3,r2]
	add r2, #2
	ldrh r0, [r3,r2]
	lsl r4, r1, #0x10
	orr r4, r0
	mov r6, #0
loc_81176E4:
	ldr r0, off_811773C // =off_8117740
	lsl r1, r6, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldr r2, dword_811771C // =0x0
	orr r2, r0
	ldr r0, dword_8117718 // =0x0
	orr r0, r4
	mov r1, #0xa
	lsl r1, r1, #0xc
	orr r1, r2
	mov r2, #2
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, #8
	lsl r0, r0, #0x10
	add r4, r4, r0
	add r6, #1
	cmp r6, #3
	blt loc_81176E4
	pop {r4-r7,pc}
dword_8117718: .word 0x0
dword_811771C: .word 0x0
off_8117720: .word byte_8117724
byte_8117724: .byte 0x54, 0x0, 0x33, 0x0, 0x54, 0x0, 0x43, 0x0, 0x54, 0x0, 0x53
	.byte 0x0, 0x54, 0x0, 0x63, 0x0, 0x54, 0x0, 0x73, 0x0, 0x54, 0x0
	.byte 0x83, 0x0
off_811773C: .word off_8117740
off_8117740: .word sub_811774C+1
	.word loc_8117764+1
	.word sub_8117768+1
	thumb_func_end sub_81176D0

	thumb_local_start
sub_811774C:
	ldr r0, off_8117760 // =unk_201C400
	ldrb r1, [r5,#4]
	lsl r1, r1, #1
	add r1, #1
	ldrb r0, [r0,r1]
	cmp r0, #8
	ble locret_811775C
	mov r0, #8
locret_811775C:
	mov pc, lr
	.byte 0, 0
off_8117760: .word unk_201C400
	thumb_func_end sub_811774C

loc_8117764:
	mov r0, #9
	mov pc, lr
	thumb_local_start
sub_8117768:
	push {lr}
	mov r0, #0x75
	bl sub_803CE28
	cmp r0, #4
	bge loc_8117778
	mov r0, #4
	b locret_811777E
loc_8117778:
	cmp r0, #8
	ble locret_811777E
	mov r0, #8
locret_811777E:
	pop {pc}
	thumb_func_end sub_8117768

	thumb_func_start sub_8117780
sub_8117780:
	push {lr}
	ldr r6, off_81177A0 // =byte_2011C10
	ldr r0, off_8117790 // =off_8117794
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8117790: .word off_8117794
off_8117794: .word sub_81177A4+1
	.word sub_81177EC+1
	.word sub_8117818+1
off_81177A0: .word byte_2011C10
	thumb_func_end sub_8117780

	thumb_local_start
sub_81177A4:
	push {lr}
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #0xf
	ldr r1, off_81177E4 // =byte_202FA04
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	str r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #8
	bl sub_800304A
	ldr r0, off_81177E8 // =0x40
	bl sub_800306C
	mov r0, #1
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_81177EC
	pop {pc}
off_81177E4: .word byte_202FA04
off_81177E8: .word 0x40
	thumb_func_end sub_81177A4

	thumb_local_start
sub_81177EC:
	push {lr}
	mov r0, #0x78
	mov r1, #0x40
	bl sprite_setCoordinates
	bl sub_8117872
	bl sub_8117820
	bl sub_811788C
	ldr r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117812
	str r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_8117812:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_81177EC

	thumb_local_start
sub_8117818:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8117818

	thumb_local_start
sub_8117820:
	push {r4-r7,lr}
	bl sub_81178AC
	tst r0, r0
	beq loc_8117868
	sub r0, #0x90
	mov r1, #0
	bl sub_813B7A0
	mov r7, r0
	add r7, #8
	mov r4, #0
	mov r0, #0
	mvn r0, r0
	lsl r0, r0, #4
	lsr r0, r0, #4
	mov r2, #0x80
	lsl r2, r2, #0x14
	mov r6, #0
loc_8117846:
	ldrb r3, [r7]
	tst r3, r3
	beq loc_811784E
	bic r0, r2
loc_811784E:
	lsr r2, r2, #1
	add r7, #1
	add r6, #1
	cmp r6, #5
	blt loc_811785C
	mov r6, #0
	add r7, #2
loc_811785C:
	add r4, #1
	cmp r4, #0x19
	blt loc_8117846
	bl sub_8002FA6
	pop {r4-r7,pc}
loc_8117868:
	mov r0, #0
	mvn r0, r0
	bl sub_8002FA6
	pop {r4-r7,pc}
	thumb_func_end sub_8117820

	thumb_local_start
sub_8117872:
	push {r4-r7,lr}
	bl sub_81178AC
	tst r0, r0
	beq loc_8117886
	sub r0, #0x90
	bl sub_813B780
	ldrb r0, [r0,#3]
	sub r0, #1
loc_8117886:
	bl sprite_setPalette // (int pallete) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_8117872

	thumb_local_start
sub_811788C:
	push {r4-r7,lr}
	bl sub_81178AC
	mov r2, #0
	tst r0, r0
	beq loc_81178A8
	sub r0, #0x90
	bl sub_813B780
	mov r2, #0
	ldrb r1, [r0,#1]
	cmp r1, #0
	beq loc_81178A8
	mov r2, #1
loc_81178A8:
	mov r0, r2
	pop {r4-r7,pc}
	thumb_func_end sub_811788C

	thumb_local_start
sub_81178AC:
	push {r4-r7,lr}
	ldr r7, off_81178D4 // =byte_2019A00
	ldrh r0, [r6,#0x14]
	ldrh r1, [r6,#0x18]
	add r0, r0, r1
	mov r1, #8
	mul r0, r1
	add r7, r7, r0
	ldrb r0, [r7]
	cmp r0, #3
	bne loc_81178CE
	ldrh r0, [r7,#2]
	add r0, #0x90
	ldrh r1, [r7,#4]
	bl sub_803D148
	pop {r4-r7,pc}
loc_81178CE:
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81178D4: .word byte_2019A00
	thumb_func_end sub_81178AC

	thumb_func_start sub_81178D8
sub_81178D8:
	push {lr}
	ldr r7, off_81178F8 // =byte_2011C10
	ldr r0, off_81178E8 // =off_81178EC
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_81178E8: .word off_81178EC
off_81178EC: .word sub_81178FC+1
	.word sub_811794C+1
	.word sub_8117990+1
off_81178F8: .word byte_2011C10
	thumb_func_end sub_81178D8

	thumb_local_start
sub_81178FC:
	push {lr}
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #0x10
	ldr r1, off_8117944 // =byte_2030204
	bl loc_8002774 // (int a1, int a2) -> void
	bl sub_8117998
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #9
	ldrb r1, [r5,#4]
	add r0, r0, r1
	bl sub_800304A
	ldr r0, off_8117948 // =0x180
	bl sub_800306C
	mov r0, #1
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811794C
	pop {pc}
	.balign 4, 0x00
off_8117944: .word byte_2030204
off_8117948: .word 0x180
	thumb_func_end sub_81178FC

	thumb_local_start
sub_811794C:
	push {lr}
	mov r4, #0x23
	bl sub_8047D84
	ldrb r1, [r0]
	cmp r1, #1
	bne loc_8117962
	ldrh r1, [r0,#2]
	cmp r1, #0x70
	bne loc_8117962
	mov r4, #0x21
loc_8117962:
	strb r4, [r5]
	ldrb r0, [r7,#8]
	sub r0, #0xc
	mov r1, #0x1e
	sub r0, r1, r0
	lsl r0, r0, #3
	add r0, #0x24
	mov r1, #0x38
	bl sprite_setCoordinates
	bl sub_8117998
	ldrb r1, [r5,#5]
	cmp r0, r1
	beq loc_811798A
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_811798A:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811794C

	thumb_local_start
sub_8117990:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8117990

	thumb_local_start
sub_8117998:
	push {r4-r7,lr}
	bl sub_8047D84
	mov r4, r0
	mov r6, #0
	ldrb r0, [r4]
	sub r0, #1
	lsl r0, r0, #1
	ldrb r1, [r5,#4]
	add r0, r0, r1
	pop {r4-r7,pc}
	thumb_func_end sub_8117998

	thumb_func_start sub_81179AE
sub_81179AE:
	push {r4-r7,lr}
	ldr r7, off_81179DC // =byte_2011C10
	bl sub_8047D84
	mov r4, r0
	ldrb r1, [r4]
	lsl r1, r1, #2
	ldr r0, off_81179C8 // =off_81179CC
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81179C8: .word off_81179CC
off_81179CC: .word sub_81179E0+1
	.word sub_81179E4+1
	.word sub_8117A14+1
	.word sub_8117AB4+1
off_81179DC: .word byte_2011C10
	thumb_func_end sub_81179AE

	thumb_local_start
sub_81179E0:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_81179E0

	thumb_local_start
sub_81179E4:
	push {r4-r7,lr}
	ldrh r0, [r4,#2]
	bl sub_803CE28
	mov r2, r10
	ldr r2, [r2,#oToolkit_Unk200a220_Ptr]
	str r0, [r2,#8]
	ldr r0, [r7,#0x24]
	mov r1, #0x12
	ldr r2, off_8117A08 // =unk_2016200
	ldr r3, dword_8117A0C // =0x6013520
	mov r4, #2
	mov r5, #1
	ldr r6, off_8117A10 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
off_8117A08: .word unk_2016200
dword_8117A0C: .word 0x6013520
off_8117A10: .word dword_86A5D60
	thumb_func_end sub_81179E4

	thumb_local_start
sub_8117A14:
	push {r4-r7,lr}
	ldr r6, off_8117A7C // =unk_2016300
	mov r0, r6
	mov r1, #0x20
	lsl r1, r1, #4
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	// idx
	ldrh r0, [r4,#2]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r5, r0
	ldrb r0, [r5]
	bl sub_8117A84
	ldrb r0, [r5,#1]
	bl sub_8117A84
	ldrb r0, [r5,#2]
	bl sub_8117A84
	ldrb r0, [r5,#3]
	bl sub_8117A84
	ldrh r4, [r4,#2]
	mov r0, r4
	ldrb r7, [r5]
	mov r1, r7
	bl sub_8117AA0
	mov r0, r4
	ldrb r7, [r5,#1]
	mov r1, r7
	bl sub_8117AA0
	mov r0, r4
	ldrb r7, [r5,#2]
	mov r1, r7
	bl sub_8117AA0
	mov r0, r4
	ldrb r7, [r5,#3]
	mov r1, r7
	bl sub_8117AA0
	ldr r0, off_8117A7C // =unk_2016300
	ldr r1, dword_8117A80 // =0x6013b40
	mov r2, #0x20
	lsl r2, r2, #4
	bl sub_8000AC8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8117A7C: .word unk_2016300
dword_8117A80: .word 0x6013B40
	thumb_func_end sub_8117A14

	thumb_local_start
sub_8117A84:
	push {lr}
	cmp r0, #0x1a
	bgt loc_8117A98
	lsl r0, r0, #6
	ldr r1, off_8117A9C // =unk_2031344
	add r0, r0, r1
	mov r1, r6
	mov r2, #0x40
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_8117A98:
	add r6, #0x40
	pop {pc}
off_8117A9C: .word unk_2031344
	thumb_func_end sub_8117A84

	thumb_local_start
sub_8117AA0:
	push {lr}
	cmp r1, #0x1a
	bgt loc_8117AB0
	bl GetChipCountOfCode
	bl sub_8117B94
	pop {pc}
loc_8117AB0:
	add r6, #0x40
	pop {pc}
	thumb_func_end sub_8117AA0

	thumb_local_start
sub_8117AB4:
	push {r4-r7,lr}
	ldr r6, off_8117B34 // =byte_30016A8
	bl sub_8117B5C
	ldrh r0, [r4,#2]
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#3]
	bl sub_8117B4A
	add r7, #0x10
	ldrb r0, [r7,#3]
	bl sub_8117B4A
	add r7, #0x10
	ldrb r0, [r7,#3]
	bl sub_8117B4A
	add r7, #0x10
	ldrb r0, [r7,#3]
	bl sub_8117B4A
	ldr r6, off_8117B2C // =unk_2016400
	mov r0, r6
	mov r1, #0x10
	lsl r1, r1, #4
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldrh r0, [r4,#2]
	bl sub_813B780
	mov r7, r0
	ldrh r0, [r4,#2]
	ldrb r1, [r7,#3]
	bl sub_8117B38
	add r7, #0x10
	ldrh r0, [r4,#2]
	ldrb r1, [r7,#3]
	bl sub_8117B38
	add r7, #0x10
	ldrh r0, [r4,#2]
	ldrb r1, [r7,#3]
	bl sub_8117B38
	add r7, #0x10
	ldrh r0, [r4,#2]
	ldrb r1, [r7,#3]
	bl sub_8117B38
	ldr r0, off_8117B2C // =unk_2016400
	ldr r1, dword_8117B30 // =0x6013c40
	mov r2, #0x10
	lsl r2, r2, #4
	bl sub_8000AC8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8117B2C: .word unk_2016400
dword_8117B30: .word 0x6013C40
off_8117B34: .word byte_30016A8
	thumb_func_end sub_8117AB4

	thumb_local_start
sub_8117B38:
	push {lr}
	cmp r1, #0
	beq locret_8117B48
	add r0, #0x90
	bl sub_803D138
	bl sub_8117B94
locret_8117B48:
	pop {pc}
	thumb_func_end sub_8117B38

	thumb_local_start
sub_8117B4A:
	push {lr}
	cmp r0, #0
	beq locret_8117B5A
	ldr r1, off_8117B74 // =byte_8117B78
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	strh r0, [r6]
	add r6, #2
locret_8117B5A:
	pop {pc}
	thumb_func_end sub_8117B4A

	thumb_local_start
sub_8117B5C:
	push {lr}
	ldr r1, off_8117B88 // =off_8117B8C
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r6]
	strh r0, [r6,#4]
	ldr r0, [r1,#0x4] // (off_8117B90 - 0x8117b8c)
	ldrh r0, [r0]
	strh r0, [r6,#2]
	strh r0, [r6,#6]
	pop {pc}
	.balign 4, 0x00
off_8117B74: .word byte_8117B78
byte_8117B78: .byte 0x0, 0x0, 0xFF, 0x7F, 0xDD, 0x3, 0x5F, 0x72, 0x1C, 0x0, 0x48
	.byte 0x7D, 0xA0, 0xB, 0x0, 0x0
off_8117B88: .word off_8117B8C
off_8117B8C: .word word_3001684
off_8117B90: .word byte_3001686
	thumb_func_end sub_8117B5C

	thumb_local_start
sub_8117B94:
	push {r7,lr}
	mov r1, #0xa
	svc 6
	mov r7, r1
	tst r0, r0
	beq loc_8117BAE
	lsl r0, r0, #5
	ldr r1, off_8117BC4 // =unk_2031204
	add r0, r0, r1
	mov r1, r6
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_8117BAE:
	add r6, #0x20
	lsl r0, r7, #5
	ldr r1, off_8117BC4 // =unk_2031204
	add r0, r0, r1
	mov r1, r6
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	add r6, #0x20
	pop {r7,pc}
	.balign 4, 0x00
off_8117BC4: .word unk_2031204
	thumb_func_end sub_8117B94

	thumb_func_start sub_8117BC8
sub_8117BC8:
	push {lr}
	ldr r0, off_8117BD8 // =off_8117BDC
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8117BD8: .word off_8117BDC
off_8117BDC: .word sub_8117BE8+1
	.word sub_8117C4C+1
	.word sub_8117CCC+1
	thumb_func_end sub_8117BC8

	thumb_local_start
sub_8117BE8:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0xa
	ldr r1, off_8117C3C // =unk_2034B6C
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #9
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_8117C40 // =0x170
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	ldr r0, off_8117C44 // =0xd4
	ldr r1, dword_8117C48 // =0xc
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#9]
	bl sub_8117C4C
	pop {pc}
	.balign 4, 0x00
off_8117C3C: .word unk_2034B6C
off_8117C40: .word 0x170
off_8117C44: .word 0xD4
dword_8117C48: .word 0xC
	thumb_func_end sub_8117BE8

	thumb_local_start
sub_8117C4C:
	push {lr}
	ldr r0, off_8117C60 // =off_8117C64
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.byte 0, 0
off_8117C60: .word off_8117C64
off_8117C64: .word sub_8117C70+1
	.word sub_8117C9C+1
	.word sub_8117CC4+1
	thumb_func_end sub_8117C4C

	thumb_local_start
sub_8117C70:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117C8C
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_8117C8C:
	bl sprite_getFrameParameters
	mov r1, #0xc0
	tst r0, r1
	beq locret_8117C9A
	bl sub_8117CD4
locret_8117C9A:
	pop {pc}
	thumb_func_end sub_8117C70

	thumb_local_start
sub_8117C9C:
	push {lr}
	mov r0, #1
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117CB4
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_8117CB4:
	bl sprite_getFrameParameters
	mov r1, #0xc0
	tst r0, r1
	beq locret_8117CC2
	mov r0, #1
	strb r0, [r5]
locret_8117CC2:
	pop {pc}
	thumb_func_end sub_8117C9C

	thumb_local_start
sub_8117CC4:
	push {lr}
	bl sub_8117CD4
	pop {pc}
	thumb_func_end sub_8117CC4

	thumb_local_start
sub_8117CCC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8117CCC

	thumb_local_start
sub_8117CD4:
	push {r7,lr}
	ldr r7, off_8117D00 // =sSubmenu
	bl sub_81355D8
	beq loc_8117CE4
	bl sub_81312F4
	mov r7, r0
loc_8117CE4:
	mov r1, #0x18
	ldrsh r1, [r7,r1]
	lsl r1, r1, #0x13
	ldr r2, dword_8117D0C // =0xc08003
	sub r2, r2, r1
	ldr r1, dword_8117D04 // =0x5140
	ldrb r0, [r7,#0x17]
	ldrh r3, [r7,#0x1e]
	cmp r0, r3
	beq loc_8117CFA
	ldr r1, dword_8117D08 // =0x6140
loc_8117CFA:
	bl sub_812068C
	pop {r7,pc}
off_8117D00: .word sSubmenu
dword_8117D04: .word 0x5140
dword_8117D08: .word 0x6140
dword_8117D0C: .word 0xC08003
	thumb_func_end sub_8117CD4

	thumb_func_start sub_8117D10
sub_8117D10:
	push {r4-r7,lr}
	mov r6, r0
	mov r0, r1
	bl getStructFrom2008450
	beq locret_8117D28
	tst r6, r6
	bne loc_8117D24
	mov r0, #0
	b loc_8117D26
loc_8117D24:
	mov r0, #4
loc_8117D26:
	strb r0, [r1,#9]
locret_8117D28:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8117D10

	thumb_func_start sub_8117D2C
sub_8117D2C:
	push {lr}
	ldr r0, off_8117D3C // =off_8117D40
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8117D3C: .word off_8117D40
off_8117D40: .word sub_8117D4C+1
	.word sub_8117DC8+1
	.word sub_8117EC0+1
	thumb_func_end sub_8117D2C

	thumb_local_start
sub_8117D4C:
	push {r4,lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x61
	ldr r1, off_8117DBC // =unk_20251B0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	add r0, #5
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_8117DB0 // =off_8117DB4
	ldrb r1, [r5,#3]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	ldr r0, off_8117DC0 // =loc_8117DC4
	ldrb r1, [r5,#3]
	ldrb r0, [r0,r1]
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #0x78
	mov r1, #0x28
	ldrb r2, [r5,#3]
	mov r3, #0x20
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_8117DC8
	pop {r4,pc}
	.byte 0, 0
off_8117DB0: .word off_8117DB4
off_8117DB4: .word 0x90
	.word 0xC0
off_8117DBC: .word unk_20251B0
off_8117DC0: .word loc_8117DC4
	thumb_func_end sub_8117D4C

loc_8117DC4:
	lsl r2, r0, #0xc
	lsl r4, r0, #0
	thumb_local_start
sub_8117DC8:
	push {lr}
	ldr r0, off_8117DD8 // =off_8117DDC
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8117DD8: .word off_8117DDC
off_8117DDC: .word sub_8117DE0+1
	thumb_func_end sub_8117DC8

	thumb_local_start
sub_8117DE0:
	push {r7,lr}
	ldr r7, off_8117E1C // =sSubmenu
	ldr r0, off_8117DFC // =off_8117E00
	ldrb r1, [r7,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	cmp r1, #8
	bne loc_8117DF2
	bl sprite_update
	b locret_8117DFA
loc_8117DF2:
	ldrb r1, [r7,#0x2] // (sSubmenu.unk_02 - 0x2009a30)
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
locret_8117DFA:
	pop {r7,pc}
off_8117DFC: .word off_8117E00
off_8117E00: .word sub_8117E20+1
	.word sub_8117E20+1
	.word sub_8117E20+1
	.word sub_8117E60+1
	.word sub_8117E20+1
	.word sub_8117E60+1
	.word sub_8117E60+1
off_8117E1C: .word sSubmenu
	thumb_func_end sub_8117DE0

	thumb_local_start
sub_8117E20:
	push {lr}
	ldrb r0, [r7,#0xd]
	ldrb r1, [r5,#3]
	cmp r0, r1
	bne loc_8117E42
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117E5A
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	b loc_8117E5A
loc_8117E42:
	ldrb r0, [r5,#4]
	add r0, #5
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117E5A
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_8117E5A:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_8117E20

	thumb_local_start
sub_8117E60:
	push {lr}
	ldrb r0, [r7,#0xd]
	lsr r0, r0, #1
	ldrb r1, [r5,#3]
	cmp r0, r1
	bne loc_8117E92
	ldrb r0, [r5,#4]
	ldrb r1, [r7,#0xd]
	cmp r1, #2
	beq loc_8117E7C
	ldrb r1, [r7,#0xd]
	tst r1, r1
	beq loc_8117E7C
	add r0, #1
loc_8117E7C:
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117EBA
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	b loc_8117EBA
loc_8117E92:
	ldrb r0, [r5,#4]
	ldrb r1, [r7,#0xd]
	cmp r1, #2
	blt loc_8117EA4
	mov r1, #0x21
	ldrb r1, [r7,r1]
	tst r1, r1
	beq loc_8117EA4
	add r0, #1
loc_8117EA4:
	add r0, #5
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8117EBA
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_8117EBA:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_8117E60

	thumb_local_start
sub_8117EC0:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8117EC0

	thumb_func_start sub_8117EC8
sub_8117EC8:
	push {lr}
	ldr r0, off_8117ED8 // =off_8117EDC
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8117ED8: .word off_8117EDC
off_8117EDC: .word sub_8117EE8+1
	.word sub_8117F78+1
	.word sub_81180FC+1
	thumb_func_end sub_8117EC8

	thumb_local_start
sub_8117EE8:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x11
	ldr r1, off_8117F60 // =unk_201DD70
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_8117F40 // =off_8117F44
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
	mov r0, #0xb8
	ldr r3, off_8117F64 // =byte_8117F68
	ldrb r2, [r5,#4]
	lsl r2, r2, #1
	ldrh r1, [r3,r2]
	strh r1, [r5,#0x14]
	bl sprite_setCoordinates
	bl sub_8117F78
	pop {pc}
	.byte 0, 0
off_8117F40: .word off_8117F44
off_8117F44: .word 0x180
	.word 0x140
	.word 0x100
	.word 0xC0
	.word 0x80
	.word 0x40
	.word 0x0
off_8117F60: .word unk_201DD70
off_8117F64: .word byte_8117F68
byte_8117F68: .byte 0xF6, 0xFF, 0x8, 0x0, 0x1A, 0x0, 0x2C, 0x0, 0x3E, 0x0, 0x50
	.byte 0x0, 0x62, 0x0, 0x0, 0x0
	thumb_func_end sub_8117EE8

	thumb_local_start
sub_8117F78:
	push {lr}
	ldr r0, off_8117F90 // =off_8117F94
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_8118234
	bl sprite_update
	pop {pc}
	.byte 0, 0
off_8117F90: .word off_8117F94
off_8117F94: .word sub_8117F9C+1
	.word sub_8117FC4+1
	thumb_func_end sub_8117F78

	thumb_local_start
sub_8117F9C:
	push {lr}
	ldrb r0, [r5,#0xa]
	tst r0, r0
	bne loc_8117FAA
	mov r0, #4
	strb r0, [r5,#0xa]
	b locret_8117FC2
loc_8117FAA:
	bl sub_8118104
	bl sub_8118134
	bl sub_81181DC
	bl sub_81182A4
	mov r0, #4
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
locret_8117FC2:
	pop {pc}
	thumb_func_end sub_8117F9C

	thumb_local_start
sub_8117FC4:
	push {lr}
	ldr r0, off_8117FDC // =off_8117FE0
	ldrb r1, [r5,#0xa]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_8118314
	ldrh r1, [r5,#0x14]
	strh r1, [r0,#0xe]
	pop {pc}
	.balign 4, 0x00
off_8117FDC: .word off_8117FE0
off_8117FE0: .word sub_8117FF8+1
	.word sub_811800C+1
	.word sub_8118030+1
	.word sub_811805C+1
	.word loc_8118098+1
	.word sub_81180E0+1
	thumb_func_end sub_8117FC4

	thumb_local_start
sub_8117FF8:
	push {lr}
	bl sub_81182A4
	ldrb r0, [r5,#0xa]
	cmp r0, #0
	bne locret_811800A
	ldr r0, off_8118310 // =sSubmenu
	mov r1, #0
	strb r1, [r0,#0xd] // (sSubmenu.unk_0D - 0x2009a30)
locret_811800A:
	pop {pc}
	thumb_func_end sub_8117FF8

	thumb_local_start
sub_811800C:
	push {lr}
	mov r4, #0x16
	ldrsh r0, [r5,r4]
	mov r6, #0x14
	ldrsh r1, [r5,r6]
	bl sub_8118320
	strh r0, [r5,r6]
	ldrsh r0, [r5,r4]
	ldrsh r1, [r5,r6]
	cmp r0, r1
	bne locret_811802C
	mov r0, #8
	strb r0, [r5,#0xa]
	mov r0, #2
	strh r0, [r5,#0x12]
locret_811802C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811800C

	thumb_local_start
sub_8118030:
	push {lr}
	ldrh r0, [r5,#0x12]
	sub r0, #1
	strh r0, [r5,#0x12]
	bgt locret_811805A
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	mov r1, #0x14
	strh r0, [r5,r1]
	mov r0, #0
	strb r0, [r5,#0xa]
	ldr r0, off_8118310 // =sSubmenu
	ldrb r1, [r0,#0xd] // (sSubmenu.unk_0D - 0x2009a30)
	lsr r1, r1, #1
	strb r1, [r0,#0xd] // (sSubmenu.unk_0D - 0x2009a30)
	bl sub_8118104
	bl sub_8118134
	bl sub_81181DC
locret_811805A:
	pop {pc}
	thumb_func_end sub_8118030

	thumb_local_start
sub_811805C:
	push {lr}
	ldrb r2, [r5,#0x12]
	add r2, #0x30
	cmp r2, #0xff
	blt loc_8118068
	mov r2, #0xff
loc_8118068:
	strb r2, [r5,#0x12]
	mov r0, #0
	mov r1, #0x40
	bl sprite_setScaleParameters
	ldrb r0, [r5,#0x12]
	cmp r0, #0xff
	bne locret_81180DC
	mov r0, #0x10
	strb r0, [r5,#0xa]
	mov r3, #1
	ldr r2, off_8118310 // =sSubmenu
	ldrh r0, [r2,#0x24] // (sSubmenu.unk_24 - 0x2009a30)
	ldrb r1, [r5,#3]
	add r0, r0, r1
	sub r0, #2
	blt loc_8118092
	ldrh r1, [r2,#0x1e] // (sSubmenu.unk_1E - 0x2009a30)
	cmp r0, r1
	bge loc_8118092
	mov r3, #0x23
loc_8118092:
	strb r3, [r5]
	pop {pc}
	.balign 4, 0x00
loc_8118098:
	push {lr}
	ldrb r2, [r5,#0x12]
	sub r2, #0x30
	cmp r2, #0x40
	bgt loc_81180A4
	mov r2, #0x40
loc_81180A4:
	strb r2, [r5,#0x12]
	mov r0, #0
	mov r1, #0x40
	bl sprite_setScaleParameters
	ldrb r0, [r5,#0x12]
	cmp r0, #0x40
	bne locret_81180DC
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	mov r1, #0x14
	strh r0, [r5,r1]
	mov r0, #0
	strb r0, [r5,#0xa]
	ldr r0, off_8118310 // =sSubmenu
	mov r1, #0
	strb r1, [r0,#0xc] // (sSubmenu.unk_0C - 0x2009a30)
	bl sprite_makeUnscalable
	mov r0, #0
	bl sub_8002FA6
	bl sub_8118104
	bl sub_8118134
	bl sub_81181DC
locret_81180DC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811805C

	thumb_local_start
sub_81180E0:
	push {lr}
	mov r0, #0
	strb r0, [r5,#0xa]
	bl sub_8118104
	bl sub_8118134
	bl sub_81181DC
	ldr r0, off_8118310 // =sSubmenu
	mov r1, #0
	strb r1, [r0,#0xc] // (sSubmenu.unk_0C - 0x2009a30)
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81180E0

	thumb_local_start
sub_81180FC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81180FC

	thumb_local_start
sub_8118104:
	push {lr}
	ldr r2, off_8118310 // =sSubmenu
	ldrh r0, [r2,#0x24] // (sSubmenu.unk_24 - 0x2009a30)
	cmp r0, #1
	blt loc_8118110
	mov r0, #1
loc_8118110:
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt loc_811812C
	ldrh r0, [r2,#0x24] // (sSubmenu.unk_24 - 0x2009a30)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	ldrh r1, [r2,#0x1e] // (sSubmenu.unk_1E - 0x2009a30)
	cmp r0, r1
	bge loc_811812C
	mov r0, #0x23
	strb r0, [r5]
	b locret_8118130
loc_811812C:
	mov r0, #1
	strb r0, [r5]
locret_8118130:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8118104

	thumb_local_start
sub_8118134:
	push {r4-r7,lr}
	ldr r6, off_8118310 // =sSubmenu
	ldrh r0, [r6,#0x24] // (sSubmenu.unk_24 - 0x2009a30)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt locret_811818A
	ldrh r1, [r6,#0x1e] // (sSubmenu.unk_1E - 0x2009a30)
	cmp r0, r1
	bge locret_811818A
	lsl r0, r0, #2
	ldr r1, off_811818C // =word_201DA80
	add r1, r1, r0
	mov r4, #4
	ldrh r2, [r1]
	ldr r3, off_81181B8 // =0x14c
	cmp r2, r3
	beq loc_8118162
	ldrh r2, [r1,#2]
	mov r4, #0
	tst r2, r2
	bne loc_8118162
	mov r4, #2
loc_8118162:
	strb r4, [r5,#0xe]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk200a220_Ptr]
	str r2, [r4,#8]
	ldrh r1, [r1]
	sub r1, #0x90
	lsr r1, r1, #2
	ldr r0, off_8118194 // =byte_873EA50
	ldrb r4, [r5,#4]
	lsl r4, r4, #2
	ldr r2, off_8118198 // =off_811819C
	ldr r2, [r2,r4]
	ldr r3, off_81181BC // =byte_81181C0
	ldr r3, [r3,r4]
	mov r4, #8
	mov r5, #1
	ldr r6, off_8118190 // =dword_86B7AE0
	mov r7, #0
	bl renderTextGfx_8045F8C
locret_811818A:
	pop {r4-r7,pc}
off_811818C: .word word_201DA80
off_8118190: .word dword_86B7AE0
off_8118194: .word byte_873EA50
off_8118198: .word off_811819C
off_811819C: .word byte_2017A00
	.word unk_2017E00
	.word unk_2018200
	.word unk_2018600
	.word unk_2018A00
	.word unk_2018E00
	.word unk_2019200
off_81181B8: .word 0x14C
off_81181BC: .word byte_81181C0
byte_81181C0: .byte 0xC0, 0x33, 0x1, 0x6, 0xC0, 0x2B, 0x1, 0x6, 0xC0, 0x23, 0x1
	.byte 0x6, 0xC0, 0x1B, 0x1, 0x6, 0xC0, 0x13, 0x1, 0x6, 0xC0, 0xB
	.byte 0x1, 0x6, 0xC0, 0x3, 0x1, 0x6
	thumb_func_end sub_8118134

	thumb_local_start
sub_81181DC:
	push {r4-r7,lr}
	ldr r6, off_8118310 // =sSubmenu
	ldrh r0, [r6,#0x24] // (sSubmenu.unk_24 - 0x2009a30)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt locret_8118202
	ldrh r1, [r6,#0x1e] // (sSubmenu.unk_1E - 0x2009a30)
	cmp r0, r1
	bge locret_8118202
	lsl r0, r0, #2
	ldr r1, off_8118204 // =word_201DA80
	add r0, r0, r1
	ldrh r1, [r0,#2]
	lsl r1, r1, #2
	ldr r0, off_8118208 // =byte_811820C
	ldr r0, [r0,r1]
	bl sub_8002FA6
locret_8118202:
	pop {r4-r7,pc}
off_8118204: .word word_201DA80
off_8118208: .word byte_811820C
byte_811820C: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFE, 0x3, 0x0, 0x0, 0xFE, 0x0
	.byte 0x0, 0x0, 0x7E, 0x1, 0x0, 0x0, 0xBE, 0x1, 0x0, 0x0, 0xDE
	.byte 0x1, 0x0, 0x0, 0xEE, 0x1, 0x0, 0x0, 0xF6, 0x1, 0x0, 0x0
	.byte 0xFA, 0x1, 0x0, 0x0, 0xFC, 0x1, 0x0
	thumb_func_end sub_81181DC

	thumb_local_start
sub_8118234:
	push {r4-r7,lr}
	mov r4, #1
	mov r6, #0xa
	mov r7, #0
	ldr r2, off_8118310 // =sSubmenu
	ldrb r0, [r2,#0x2] // (sSubmenu.unk_02 - 0x2009a30)
	cmp r0, #4
	bne loc_8118254
	ldrh r0, [r2,#0x20] // (sSubmenu.unk_20 - 0x2009a30)
	add r0, #2
	ldrb r1, [r5,#4]
	cmp r0, r1
	bne loc_8118254
	mov r4, #0
	mov r6, #9
	mov r7, #1
loc_8118254:
	ldrb r0, [r5]
	mov r1, #0x40
	bic r0, r1
	strb r0, [r5]
	tst r7, r7
	beq loc_8118280
	ldr r0, off_8118298 // =byte_811829C
	ldrb r1, [r5,#0xc]
	lsl r1, r1, #2
	ldrb r6, [r0,r1]
	add r1, #1
	ldrb r4, [r0,r1]
	ldrb r2, [r5,#0xd]
	sub r2, #1
	strb r2, [r5,#0xd]
	bge loc_8118280
	add r1, #1
	ldrb r2, [r0,r1]
	strb r2, [r5,#0xc]
	add r1, #1
	ldrb r2, [r0,r1]
	strb r2, [r5,#0xd]
loc_8118280:
	mov r0, r6
	ldrb r1, [r5,#0xe]
	lsr r1, r1, #1
	add r0, r0, r1
	bl sub_800304A
	mov r0, r4
	ldrb r1, [r5,#0xe]
	add r0, r0, r1
	bl sprite_setPalette // (int pallete) -> void
	pop {r4-r7,pc}
off_8118298: .word byte_811829C
byte_811829C: .byte 0x9, 0x0, 0x1, 0x8, 0xA, 0x1, 0x0, 0x8
	thumb_func_end sub_8118234

	thumb_local_start
sub_81182A4:
	push {r4-r7,lr}
	bl sub_8118314
	mov r3, r0
	mov r7, #0
	ldr r0, off_8118310 // =sSubmenu
	ldrb r4, [r0,#0xc] // (sSubmenu.unk_0C - 0x2009a30)
	tst r4, r4
	beq loc_81182FA
	cmp r4, #0x10
	bne loc_81182C2
	ldrh r0, [r3,#0xe]
	strh r0, [r5,#0x14]
	mov r7, #0x14
	b loc_81182FA
loc_81182C2:
	mov r0, #0xb8
	strh r0, [r3,#0xc]
	mov r1, #0xe
	ldrsh r0, [r3,r1]
	strh r0, [r5,#0x10]
	strh r0, [r5,#0x14]
	cmp r4, #0xc
	beq loc_81182DE
	ldr r1, off_8118300 // =byte_8118304
	ldr r1, [r1,r4]
	add r0, r0, r1
	strh r0, [r5,#0x16]
	mov r7, #4
	b loc_81182FA
loc_81182DE:
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x40
	mov r2, #0x40
	strh r2, [r5,#0x12]
	bl sprite_setScaleParameters
	mov r0, #0xfc
	lsl r0, r0, #0x18
	mvn r0, r0
	bl sub_8002FA6
	mov r7, #0xc
loc_81182FA:
	strb r7, [r5,#0xa]
	pop {r4-r7,pc}
	.byte 0, 0
off_8118300: .word byte_8118304
byte_8118304: .byte 0x0, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x0, 0xEE, 0xFF, 0xFF, 0xFF
off_8118310: .word sSubmenu
	thumb_func_end sub_81182A4

	thumb_local_start
sub_8118314:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_8118314

	thumb_local_start
sub_8118320:
	mov r2, r0
	sub r0, r1, r0
	cmp r0, #0
	blt loc_8118332
	lsr r0, r0, #1
	cmp r0, #1
	ble loc_8118340
	add r2, r2, r0
	b loc_8118340
loc_8118332:
	mov r1, r0
	neg r0, r0
	lsr r0, r0, #1
	cmp r0, #1
	ble loc_8118340
	asr r1, r1, #1
	add r2, r2, r1
loc_8118340:
	mov r0, r2
	mov pc, lr
	thumb_func_end sub_8118320

	thumb_func_start sub_8118344
sub_8118344:
	push {lr}
	ldr r6, off_8118364 // =sSubmenu
	ldr r0, off_8118354 // =off_8118358
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8118354: .word off_8118358
off_8118358: .word sub_8118368+1
	.word sub_81183C4+1
	.word sub_81185B8+1
off_8118364: .word sSubmenu
	thumb_func_end sub_8118344

	thumb_local_start
sub_8118368:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x12
	ldr r1, off_81183C0 // =unk_201F6F0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_81183BC // =0x1c0
	bl sub_800306C
	mov r0, #1
	bl sub_8003060
	mov r0, #8
	bl sub_800304A
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xe6
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x14
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	mov r0, #0
	strb r0, [r5,#0xc]
	bl sub_81183C4
	pop {pc}
	.balign 4, 0x00
off_81183BC: .word 0x1C0
off_81183C0: .word unk_201F6F0
	thumb_func_end sub_8118368

	thumb_local_start
sub_81183C4:
	push {lr}
	ldr r0, off_81183E4 // =off_81183E8
	ldrb r1, [r6,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_81185C0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_81183E4: .word off_81183E8
off_81183E8: .word sub_8118424+1
	.word sub_811842C+1
	.word sub_811847C+1
	.word sub_81184A8+1
	.word sub_81184C0+1
	.word sub_81184EC+1
	.word sub_8118510+1
	.word sub_81184A8+1
	.word sub_8118550+1
	.word sub_811857C+1
	.word sub_8118510+1
	.word sub_811842C+1
	.word sub_81185A8+1
	.word sub_811842C+1
	.word sub_81184A8+1
	thumb_func_end sub_81183C4

	thumb_local_start
sub_8118424:
	push {lr}
	mov r0, #1
	strb r0, [r5]
	pop {pc}
	thumb_func_end sub_8118424

	thumb_local_start
sub_811842C:
	push {r4-r7,lr}
	mov r4, #1
	ldrb r0, [r6]
	cmp r0, #0x28
	beq loc_811843E
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8118454
loc_811843E:
	ldrb r0, [r6,#0xc]
	cmp r0, #0xc
	beq loc_8118454
	ldrh r0, [r6,#0x20]
	ldrh r1, [r6,#0x24]
	add r0, r0, r1
	ldrh r1, [r6,#0x1e]
	sub r1, #1
	cmp r0, r1
	beq loc_8118454
	mov r4, #0x23
loc_8118454:
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#0xc]
	mov r0, #0xe6
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x12
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	bl sub_8002CCE
	bl sub_8002EE8
	bl sub_81185E4
	bl sub_8118604
	pop {r4-r7,pc}
	thumb_func_end sub_811842C

	thumb_local_start
sub_811847C:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_811848A
	mov r4, #0x23
loc_811848A:
	mov r1, #2
	ldrb r0, [r6,#0x10]
	tst r0, r0
	bne loc_8118496
	mov r1, #0
	mov r4, #1
loc_8118496:
	strb r1, [r5,#0xc]
	strb r4, [r5]
	bl sub_81186A8
	bl sub_81185E4
	bl sub_8118604
	pop {r4-r7,pc}
	thumb_func_end sub_811847C

	thumb_local_start
sub_81184A8:
	push {lr}
	mov r4, #1
	strb r4, [r5]
	mov r1, #0
	strb r1, [r5,#0xc]
	bl sub_8118744
	bl sub_81185E4
	bl sub_8118658
	pop {pc}
	thumb_func_end sub_81184A8

	thumb_local_start
sub_81184C0:
	push {lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_81184CE
	mov r4, #0x23
loc_81184CE:
	strb r4, [r5]
	mov r0, #0
	strb r0, [r5,#0xc]
	mov r0, #0xa
	bl sub_8002C7A
	bl sub_8002EE8
	bl sub_81186A8
	bl sub_81185E4
	bl sub_8118658
	pop {pc}
	thumb_func_end sub_81184C0

	thumb_local_start
sub_81184EC:
	push {lr}
	mov r4, #0x23
	mov r1, #0
	strb r1, [r5,#0xc]
	strb r4, [r5]
	mov r0, #0xa
	bl sub_8002C7A
	bl sub_8002EE8
	bl sub_81186A8
	bl sub_81185E4
	bl sub_8118658
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_81184EC

	thumb_local_start
sub_8118510:
	push {lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_811851E
	mov r4, #0x23
loc_811851E:
	strb r4, [r5]
	mov r1, #0
	strb r1, [r5,#0xc]
	ldrb r0, [r6,#2]
	cmp r0, #0x28
	bne loc_8118538
	mov r4, #0
	bl sub_8118794
	beq loc_8118534
	mov r4, #1
loc_8118534:
	strb r4, [r6,#0xd]
	b loc_8118544
loc_8118538:
	mov r4, #0
	bl sub_81186A8
	beq loc_8118542
	mov r4, #1
loc_8118542:
	strb r4, [r6,#0xd]
loc_8118544:
	bl sub_81185E4
	bl sub_8118658
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8118510

	thumb_local_start
sub_8118550:
	push {lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_811855E
	mov r4, #0x23
loc_811855E:
	strb r4, [r5]
	mov r0, #0
	strb r0, [r5,#0xc]
	mov r0, #0xa
	bl sub_8002C7A
	bl sub_8002EE8
	bl sub_811870C
	bl sub_81185E4
	bl sub_8118658
	pop {pc}
	thumb_func_end sub_8118550

	thumb_local_start
sub_811857C:
	push {lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_811858A
	mov r4, #0x23
loc_811858A:
	mov r1, #0
	strb r1, [r5,#0xc]
	strb r4, [r5]
	mov r0, #0xa
	bl sub_8002C7A
	bl sub_8002EE8
	bl sub_81186A8
	bl sub_81185E4
	bl sub_8118658
	pop {pc}
	thumb_func_end sub_811857C

	thumb_local_start
sub_81185A8:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq locret_81185B6
	mov r0, #1
	strb r0, [r5]
locret_81185B6:
	pop {pc}
	thumb_func_end sub_81185A8

	thumb_local_start
sub_81185B8:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81185B8

	thumb_local_start
sub_81185C0:
	push {lr}
	ldrh r0, [r6,#0x3a]
	ldrh r1, [r6,#0x38]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_81186A4 // =word_201DA80
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	bl sub_813B780
	mov r1, r0
	ldrb r0, [r5,#0xc]
	ldrb r1, [r1,#1]
	cmp r1, #0
	beq locret_81185E2
	add r0, #1
locret_81185E2:
	pop {pc}
	thumb_func_end sub_81185C0

	thumb_local_start
sub_81185E4:
	push {lr}
	ldrh r0, [r6,#0x3a]
	ldrh r1, [r6,#0x38]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_81186A4 // =word_201DA80
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	bl sub_813B780
	ldrb r0, [r0,#3]
	sub r0, #1
	bl sprite_setPalette // (int pallete) -> void
	pop {pc}
	thumb_func_end sub_81185E4

	thumb_local_start
sub_8118604:
	push {r4-r7,lr}
	ldrh r0, [r6,#0x3a]
	ldrh r1, [r6,#0x38]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_81186A4 // =word_201DA80
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	ldrb r1, [r6,#0xe]
	mov r2, #0
	bl sub_813B7A0
	mov r7, r0
	add r7, #8
	mov r4, #0
	mov r6, #0
	mov r0, #0
	mvn r0, r0
	lsl r0, r0, #1
	lsr r0, r0, #1
	mov r2, #0x80
	lsl r2, r2, #0x17
loc_8118632:
	ldrb r3, [r7]
	tst r3, r3
	beq loc_811863A
	bic r0, r2
loc_811863A:
	lsr r2, r2, #1
	add r6, #1
	cmp r6, #5
	blt loc_8118648
	mov r6, #0
	add r7, #2
	add r4, #2
loc_8118648:
	add r7, #1
	add r4, #1
	cmp r4, #0x31
	blt loc_8118632
	bl sub_8002FA6
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118604

	thumb_local_start
sub_8118658:
	push {r4-r7,lr}
	ldrh r0, [r6,#0x3a]
	ldrh r1, [r6,#0x38]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_81186A4 // =word_201DA80
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	ldrb r1, [r6,#0xe]
	bl sub_813B7A0
	mov r7, r0
	add r7, #8
	mov r4, #0
	mov r6, #0
	mov r0, #0
	mvn r0, r0
	mov r2, #0x80
	lsl r2, r2, #0x18
loc_8118680:
	ldrb r3, [r7]
	tst r3, r3
	beq loc_8118688
	bic r0, r2
loc_8118688:
	lsr r2, r2, #1
	add r6, #1
	cmp r6, #5
	blt loc_8118696
	mov r6, #0
	add r7, #2
	add r4, #2
loc_8118696:
	add r7, #1
	add r4, #1
	cmp r4, #0x31
	blt loc_8118680
	bl sub_8002FA6
	pop {r4-r7,pc}
off_81186A4: .word word_201DA80
	thumb_func_end sub_8118658

	thumb_local_start
sub_81186A8:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp,#4]
	bl sub_81187DC
	mov r7, r0
	ldr r4, off_8118738 // =byte_811873C
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r4, r4, r0
	ldrh r0, [r6,#0x28]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4]
	add r0, r0, r1
	sub r0, #1
	str r0, [sp]
	ldrh r1, [r7,#0xc]
	bl sub_8118320
	strh r0, [r7,#0xc]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_81186E0
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_81186E0:
	ldrh r0, [r6,#0x2c]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4,#1]
	add r0, r0, r1
	sub r0, #1
	str r0, [sp]
	ldrh r1, [r7,#0xe]
	bl sub_8118320
	strh r0, [r7,#0xe]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8118702
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_8118702:
	ldr r0, [sp,#4]
	cmp r0, #2
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_81186A8

	thumb_local_start
sub_811870C:
	push {r4-r7,lr}
	bl sub_81187DC
	mov r7, r0
	ldr r4, off_8118738 // =byte_811873C
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r4, r4, r0
	ldrh r0, [r6,#0x28]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4]
	add r0, r0, r1
	strh r0, [r7,#0xc]
	ldrh r0, [r6,#0x2c]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4,#1]
	add r0, r0, r1
	strh r0, [r7,#0xe]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8118738: .word byte_811873C
byte_811873C: .byte 0x16, 0x26, 0xE, 0x26, 0xE, 0x1E, 0x0, 0x0
	thumb_func_end sub_811870C

	thumb_local_start
sub_8118744:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp,#4]
	bl sub_81187DC
	mov r7, r0
	mov r0, #0xb6
	str r0, [sp]
	ldrh r1, [r7,#0xc]
	bl sub_8118320
	strh r0, [r7,#0xc]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_811876A
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_811876A:
	ldrh r0, [r6,#0x20]
	mov r1, #0x12
	mul r0, r1
	mov r1, #0x1b
	add r0, r0, r1
	str r0, [sp]
	ldrh r1, [r7,#0xe]
	bl sub_8118320
	strh r0, [r7,#0xe]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_811878A
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_811878A:
	ldr r0, [sp,#4]
	cmp r0, #2
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118744

	thumb_local_start
sub_8118794:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp,#4]
	bl sub_81187DC
	mov r7, r0
	mov r0, #0xb6
	str r0, [sp]
	ldrh r1, [r7,#0xc]
	bl sub_8118320
	strh r0, [r7,#0xc]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_81187BA
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_81187BA:
	mov r0, #0x2f
	str r0, [sp]
	ldrh r1, [r7,#0xe]
	bl sub_8118320
	strh r0, [r7,#0xe]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_81187D2
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_81187D2:
	ldr r0, [sp,#4]
	cmp r0, #2
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118794

	thumb_local_start
sub_81187DC:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_81187DC

	thumb_func_start sub_81187E8
sub_81187E8:
	push {lr}
	ldr r6, off_8118808 // =sSubmenu
	ldr r0, off_81187F8 // =off_81187FC
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_81187F8: .word off_81187FC
off_81187FC: .word sub_811880C+1
	.word sub_8118874+1
	.word sub_8118AA8+1
off_8118808: .word sSubmenu
	thumb_func_end sub_81187E8

	thumb_local_start
sub_811880C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x15
	ldr r1, off_8118870 // =unk_20218F0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_811886C // =0x1d8
	bl sub_800306C
	mov r0, #3
	bl sub_8003060
	mov r0, #7
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xff
	strb r0, [r5,#0xd]
	mov r0, #0x88
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x14
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	mov r0, #0
	strb r0, [r5,#0xc]
	bl sub_8118874
	pop {pc}
	.balign 4, 0x00
off_811886C: .word 0x1D8
off_8118870: .word unk_20218F0
	thumb_func_end sub_811880C

	thumb_local_start
sub_8118874:
	push {lr}
	ldrb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	ldr r0, off_811888C // =off_8118890
	ldrb r1, [r6,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811888C: .word off_8118890
off_8118890: .word sub_81188CC+1
	.word sub_81188EC+1
	.word sub_811891C+1
	.word sub_8118964+1
	.word sub_8118998+1
	.word sub_81189C0+1
	.word sub_8118A00+1
	.word sub_81189D4+1
	.word sub_81189E0+1
	.word sub_811891C+1
	.word sub_8118A2C+1
	.word sub_8118A58+1
	.word sub_8118A88+1
	.word sub_81188EC+1
	.word sub_81189D4+1
	thumb_func_end sub_8118874

	thumb_local_start
sub_81188CC:
	push {lr}
	mov r0, #1
	strb r0, [r5]
	bl sub_8118AB0
	mov r0, #2
	strb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_81188E8
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_81188E8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81188CC

	thumb_local_start
sub_81188EC:
	push {r4-r7,lr}
	mov r4, #0x23
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#0xc]
	mov r0, #0x88
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x12
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	mov r0, #3
	strb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_8118918
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_8118918:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_81188EC

	thumb_local_start
sub_811891C:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_811892A
	mov r4, #0x23
loc_811892A:
	strb r4, [r5]
	mov r7, #0
	ldrb r0, [r6,#0x10]
	tst r0, r0
	beq loc_8118938
	mov r7, #2
	b loc_8118944
loc_8118938:
	ldrh r0, [r6,#0x28]
	ldrh r1, [r6,#0x2c]
	bl sub_813B9B4
	beq loc_8118944
	mov r7, #1
loc_8118944:
	strb r7, [r5,#0xc]
	mov r4, #0
	bl sub_8118AB0
	beq loc_8118950
	mov r4, #1
loc_8118950:
	strb r4, [r6,#0xd]
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_8118962
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_8118962:
	pop {r4-r7,pc}
	thumb_func_end sub_811891C

	thumb_local_start
sub_8118964:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8118972
	mov r4, #0x23
loc_8118972:
	strb r4, [r5]
	mov r1, #3
	strb r1, [r5,#0xc]
	mov r4, #0
	bl sub_8118B48
	beq loc_8118982
	mov r4, #1
loc_8118982:
	strb r4, [r6,#0xd]
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_8118994
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_8118994:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118964

	thumb_local_start
sub_8118998:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	bl sub_8118AB0
	bne loc_81189A8
	mov r0, #1
	strb r0, [r6,#0xd]
loc_81189A8:
	mov r0, #4
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_81189BC
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_81189BC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8118998

	thumb_local_start
sub_81189C0:
	push {lr}
	mov r4, #1
	strb r4, [r5]
	mov r4, #0
	bl sub_8118AB0
	beq loc_81189D0
	mov r4, #1
loc_81189D0:
	strb r4, [r6,#0xd]
	pop {pc}
	thumb_func_end sub_81189C0

	thumb_local_start
sub_81189D4:
	push {r4-r7,lr}
	mov r4, #0x23
	strb r4, [r5]
	bl sub_8118AB0
	pop {r4-r7,pc}
	thumb_func_end sub_81189D4

	thumb_local_start
sub_81189E0:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #1
	strb r0, [r6,#0xd]
	mov r0, #2
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_81189FE
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_81189FE:
	pop {pc}
	thumb_func_end sub_81189E0

	thumb_local_start
sub_8118A00:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8118A0E
	mov r4, #0x23
loc_8118A0E:
	strb r4, [r5]
	mov r1, #2
	strb r1, [r5,#0xc]
	bl sub_8118AB0
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_8118A28
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_8118A28:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118A00

	thumb_local_start
sub_8118A2C:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8118A3A
	mov r4, #0x23
loc_8118A3A:
	strb r4, [r5]
	mov r1, #0
	strb r1, [r5,#0xc]
	bl sub_8118AB0
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_8118A54
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_8118A54:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118A2C

	thumb_local_start
sub_8118A58:
	push {r4-r7,lr}
	mov r4, #1
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#0xc]
	mov r0, #0x88
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x12
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	mov r0, #3
	strb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq locret_8118A84
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
locret_8118A84:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118A58

	thumb_local_start
sub_8118A88:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	mov r0, #0
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#0xc]
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq loc_8118AA2
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_8118AA2:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_8118A88

	thumb_local_start
sub_8118AA8:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8118AA8

	thumb_local_start
sub_8118AB0:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp,#4]
	bl sub_8118B98
	mov r7, r0
	ldr r4, off_8118B3C // =byte_8118B40
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r4, r4, r0
	ldrh r0, [r6,#0x28]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4]
	add r0, r0, r1
	str r0, [sp]
	ldrh r1, [r7,#0xc]
	bl sub_8118320
	strh r0, [r7,#0xc]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8118AE6
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_8118AE6:
	ldrh r0, [r6,#0x2c]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4,#1]
	add r0, r0, r1
	str r0, [sp]
	ldrh r1, [r7,#0xe]
	bl sub_8118320
	strh r0, [r7,#0xe]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8118B06
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_8118B06:
	ldr r0, [sp,#4]
	cmp r0, #2
	add sp, sp, #8
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_8118AB0

	push {r4-r7,lr}
	bl sub_8118B98
	mov r7, r0
	ldr r4, off_8118B3C // =byte_8118B40
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r4, r4, r0
	ldrh r0, [r6,#0x28]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4]
	add r0, r0, r1
	strh r0, [r7,#0xc]
	ldrh r0, [r6,#0x2c]
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4,#1]
	add r0, r0, r1
	strh r0, [r7,#0xe]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8118B3C: .word byte_8118B40
byte_8118B40: .byte 0x15, 0x25, 0xD, 0x25, 0xD, 0x1D, 0x0, 0x0
	thumb_local_start
sub_8118B48:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp,#4]
	bl sub_8118B98
	mov r7, r0
	mov r0, #0x88
	str r0, [sp]
	ldrh r1, [r7,#0xc]
	bl sub_8118320
	strh r0, [r7,#0xc]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8118B6E
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_8118B6E:
	ldrh r0, [r6,#0x20]
	mov r1, #0x12
	mul r0, r1
	mov r1, #0x1b
	add r0, r0, r1
	str r0, [sp]
	ldrh r1, [r7,#0xe]
	bl sub_8118320
	strh r0, [r7,#0xe]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8118B8E
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_8118B8E:
	ldr r0, [sp,#4]
	cmp r0, #2
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8118B48

	thumb_local_start
sub_8118B98:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_8118B98

	thumb_func_start sub_8118BA4
sub_8118BA4:
	push {lr}
	ldr r6, off_8118BC4 // =sSubmenu
	ldr r0, off_8118BB4 // =off_8118BB8
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8118BB4: .word off_8118BB8
off_8118BB8: .word sub_8118BC8+1
	.word sub_8118C2C+1
	.word sub_8118CEC+1
off_8118BC4: .word sSubmenu
	thumb_func_end sub_8118BA4

	thumb_local_start
sub_8118BC8:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x13
	ldr r1, off_8118C28 // =unk_2021FF0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_8118C24 // =0x1e0
	bl sub_800306C
	mov r0, #4
	bl sub_8003060
	mov r0, #6
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x80
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x14
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	mov r0, #0xff
	strb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	bl sub_8118C2C
	pop {pc}
	.balign 4, 0x00
off_8118C24: .word 0x1E0
off_8118C28: .word unk_2021FF0
	thumb_func_end sub_8118BC8

	thumb_local_start
sub_8118C2C:
	push {lr}
	ldrb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	ldr r0, off_8118C44 // =off_8118C48
	ldrb r1, [r6,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_8118C44: .word off_8118C48
off_8118C48: .word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C8C+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	.word sub_8118C84+1
	thumb_func_end sub_8118C2C

	thumb_local_start
sub_8118C84:
	push {lr}
	mov r0, #1
	strb r0, [r5]
	pop {pc}
	thumb_func_end sub_8118C84

	thumb_local_start
sub_8118C8C:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8118C9A
	mov r4, #0x43
loc_8118C9A:
	ldrh r0, [r6,#0x28]
	ldrh r1, [r6,#0x2c]
	bl sub_813B9B4
	bne loc_8118CA6
	mov r4, #1
loc_8118CA6:
	strb r4, [r5]
	sub r0, #1
	blt loc_8118CD4
	bl sub_813B9FC
	ldrh r1, [r0]
	lsr r1, r1, #2
	ldrb r0, [r5,#0xd]
	cmp r1, r0
	beq loc_8118CD4
	strb r1, [r5,#0xc]
	push {r4-r7}
	ldr r0, off_8118CDC // =byte_873EA50
	ldr r2, off_8118CE0 // =byte_2017A00
	ldr r3, dword_8118CE8 // =0x6013c00
	mov r4, #8
	mov r5, #1
	ldr r6, off_8118CE4 // =dword_86B7AE0
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7}
	strb r0, [r5,#0xe]
loc_8118CD4:
	bl sub_8118CF4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8118CDC: .word byte_873EA50
off_8118CE0: .word byte_2017A00
off_8118CE4: .word dword_86B7AE0
dword_8118CE8: .word 0x6013C00
	thumb_func_end sub_8118C8C

	thumb_local_start
sub_8118CEC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8118CEC

	thumb_local_start
sub_8118CF4:
	push {r4-r7,lr}
	bl sub_8118D54
	mov r7, r0
	ldr r4, off_8118D48 // =byte_8118D4C
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r4, r4, r0
	ldrh r0, [r6,#0x28]
	cmp r0, #0
	bgt loc_8118D0E
	mov r0, #1
	b loc_8118D16
loc_8118D0E:
	ldrh r0, [r6,#0x28]
	cmp r0, #4
	blt loc_8118D16
	mov r0, #4
loc_8118D16:
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4]
	add r0, r0, r1
	ldrb r2, [r5,#0xe]
	mov r1, #8
	sub r1, r1, r2
	lsr r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	strh r0, [r7,#0xc]
	mov r2, #6
	ldrh r0, [r6,#0x2c]
	cmp r0, #6
	blt loc_8118D38
	mov r0, #4
	mov r2, #0x10
loc_8118D38:
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4,#1]
	add r0, r0, r1
	add r0, r0, r2
	strh r0, [r7,#0xe]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8118D48: .word byte_8118D4C
byte_8118D4C: .byte 0x16, 0x26, 0xE, 0x26, 0xE, 0x1E, 0x0, 0x0
	thumb_func_end sub_8118CF4

	thumb_local_start
sub_8118D54:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_8118D54

	thumb_func_start sub_8118D60
sub_8118D60:
	push {lr}
	ldr r6, off_8118D80 // =sSubmenu
	ldr r0, off_8118D70 // =off_8118D74
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8118D70: .word off_8118D74
off_8118D74: .word sub_8118D84+1
	.word sub_8118DE0+1
	.word sub_8118E1C+1
off_8118D80: .word sSubmenu
	thumb_func_end sub_8118D60

	thumb_local_start
sub_8118D84:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x14
	ldr r1, off_8118DDC // =unk_20222F0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_8118DD8 // =0x200
	bl sub_800306C
	mov r0, #4
	bl sub_8003060
	mov r0, #5
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x80
	mov r1, #0x1b
	ldrh r2, [r6,#0x20]
	mov r3, #0x14
	mul r2, r3
	add r1, r1, r2
	bl sprite_setCoordinates
	bl sub_8118DE0
	pop {pc}
off_8118DD8: .word 0x200
off_8118DDC: .word unk_20222F0
	thumb_func_end sub_8118D84

	thumb_local_start
sub_8118DE0:
	push {lr}
	ldr r0, off_8118DF4 // =off_8118DF8
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_8118DF4: .word off_8118DF8
off_8118DF8: .word sub_8118DFC+1
	thumb_func_end sub_8118DE0

	thumb_local_start
sub_8118DFC:
	push {lr}
	bl sub_8118E24
	ldr r0, off_8118E10 // =off_8118E14
	ldrh r1, [r6,#0x30]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_8002FA6
	pop {pc}
off_8118E10: .word off_8118E14
off_8118E14: .word 0x8000000
	.word 0x10000000
	thumb_func_end sub_8118DFC

	thumb_local_start
sub_8118E1C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8118E1C

	thumb_local_start
sub_8118E24:
	push {r4-r7,lr}
	bl sub_8118E78
	mov r7, r0
	ldr r4, off_8118E6C // =byte_8118E70
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r4, r4, r0
	ldrh r0, [r6,#0x28]
	cmp r0, #0
	bgt loc_8118E3E
	mov r0, #1
	b loc_8118E46
loc_8118E3E:
	ldrh r0, [r6,#0x28]
	cmp r0, #6
	blt loc_8118E46
	mov r0, #5
loc_8118E46:
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4]
	add r0, r0, r1
	strh r0, [r7,#0xc]
	mov r2, #0x14
	ldrh r0, [r6,#0x2c]
	cmp r0, #5
	blt loc_8118E5C
	mov r2, #0x1e
	neg r2, r2
loc_8118E5C:
	mov r1, #0x14
	mul r0, r1
	ldrb r1, [r4,#1]
	add r0, r0, r1
	add r0, r0, r2
	strh r0, [r7,#0xe]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8118E6C: .word byte_8118E70
byte_8118E70: .byte 0x16, 0x26, 0xE, 0x26, 0xE, 0x1E, 0x0, 0x0
	thumb_func_end sub_8118E24

	thumb_local_start
sub_8118E78:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_8118E78

	thumb_func_start sub_8118E84
sub_8118E84:
	push {lr}
	ldr r6, off_8118EA4 // =sSubmenu
	ldr r0, off_8118E94 // =off_8118E98
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8118E94: .word off_8118E98
off_8118E98: .word sub_8118EA8+1
	.word sub_8118F14+1
	.word sub_8118F1C+1
off_8118EA4: .word sSubmenu
	thumb_func_end sub_8118E84

	thumb_local_start
sub_8118EA8:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x17
	ldr r1, off_8118F04 // =unk_20226F0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r6,#0xf]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, off_8118F00 // =0x220
	bl sub_800306C
	mov r0, #4
	bl sub_8003060
	mov r0, #4
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	bl sub_8002C52
	mov r0, #4
	strb r0, [r5,#8]
	ldr r2, off_8118F08 // =byte_8118F0C
	ldrb r0, [r6,#0xf]
	lsl r0, r0, #1
	add r2, r2, r0
	ldrb r0, [r2]
	ldrb r1, [r2,#1]
	bl sprite_setCoordinates
	bl sub_8118F14
	pop {pc}
off_8118F00: .word 0x220
off_8118F04: .word unk_20226F0
off_8118F08: .word byte_8118F0C
byte_8118F0C: .byte 0x4F, 0x60, 0x47, 0x60, 0x47, 0x58, 0x0, 0x0
	thumb_func_end sub_8118EA8

	thumb_local_start
sub_8118F14:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_8118F14

	thumb_local_start
sub_8118F1C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8118F1C

	thumb_func_start sub_8118F24
sub_8118F24:
	push {lr}
	ldr r0, off_8118F34 // =off_8118F38
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8118F34: .word off_8118F38
off_8118F38: .word sub_8118F44+1
	.word sub_8118FC0+1
	.word sub_81190D8+1
	thumb_func_end sub_8118F24

	thumb_local_start
sub_8118F44:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #8
	ldr r1, off_8118F9C // =unk_201E284
	bl loc_8002774 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, dword_8118F98 // =0x0
	bl sub_800306C
	bl sub_81190E0
	mov r0, #4
	bl sub_8003060
	ldr r2, off_8118FA0 // =byte_8118FA4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldrh r0, [r2,r1]
	add r1, #2
	ldrh r1, [r2,r1]
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_8118FC0
	pop {pc}
dword_8118F98: .word 0x0
off_8118F9C: .word unk_201E284
off_8118FA0: .word byte_8118FA4
byte_8118FA4: .byte 0x30, 0x0, 0x20, 0x0, 0x78, 0x0, 0x20, 0x0, 0xC0, 0x0, 0x20
	.byte 0x0, 0x2A, 0x0, 0x62, 0x0, 0x2A, 0x0, 0x5A, 0x0
	.word dword_8118FBC
dword_8118FBC: .word 0x100
	thumb_func_end sub_8118F44

	thumb_local_start
sub_8118FC0:
	push {lr}
	ldr r1, off_8118FD4 // =off_8118FD8
	ldrb r0, [r5,#6]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
off_8118FD4: .word off_8118FD8
off_8118FD8: .word sub_8118FE0+1
	.word sub_8118FE4+1
	thumb_func_end sub_8118FC0

	thumb_local_start
sub_8118FE0:
	push {lr}
	pop {pc}
	thumb_func_end sub_8118FE0

	thumb_local_start
sub_8118FE4:
	push {lr}
	ldr r1, off_811900C // =off_8119010
	ldrb r0, [r5,#9]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	ldrb r0, [r5,#4]
	thumb_func_end sub_8118FE4

	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq locret_811900A
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_81190E0
locret_811900A:
	pop {pc}
off_811900C: .word off_8119010
off_8119010: .word sub_8119018+1
	.word sub_8119084+1
	thumb_local_start
sub_8119018:
	push {r4-r7,lr}
	mov r0, #4
	strb r0, [r5,#9]
	ldrb r1, [r5,#3]
	mov r0, #7
	sub r1, r1, r0
	lsl r3, r1, #2
	ldr r0, off_8119058 // =off_811905C
	ldr r2, [r0,r3]
	ldr r0, off_8119068 // =byte_811906C
	ldr r3, [r0,r3]
	mov r0, r1
	bl sub_8137884
	lsr r0, r0, #4
	bl sub_804A24C
	mov r4, #8
	mov r5, #1
	ldr r6, off_8119078 // =dword_86B7AE0
	mov r7, #0
	ldr r1, off_811907C // =sub_3006B94+1
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word unk_20347D8
	.word unk_20018EC
	.word byte_20065C0
off_8119058: .word off_811905C
off_811905C: .word byte_2017A00
	.word unk_2017C00
	.word unk_2017E00
off_8119068: .word byte_811906C
byte_811906C: .byte 0x0, 0x20, 0x1, 0x6, 0x0, 0x22, 0x1, 0x6, 0x0, 0x24, 0x1, 0x6
off_8119078: .word dword_86B7AE0
off_811907C: .word sub_3006B94+1
	.word TextScript86CF4AC
	thumb_func_end sub_8119018

	thumb_local_start
sub_8119084:
	push {r4-r7,lr}
	ldr r4, off_81190B4 // =byte_81190B8
	ldr r6, off_81190C8 // =byte_81190CC
	ldrb r0, [r5,#3]
	mov r1, #7
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r6, [r6,r0]
	ldr r4, [r4,r0]
	mov r7, #8
loc_8119098:
	mov r0, r4
	mov r1, r6
	ldr r2, dword_81190C4 // =0x0
	mov r3, #5
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, #8
	lsl r0, r0, #0x10
	add r4, r4, r0
	mov r0, #2
	add r6, r6, r0
	sub r7, #1
	bgt loc_8119098
	pop {r4-r7,pc}
off_81190B4: .word byte_81190B8
byte_81190B8: .byte 0x18, 0x80, 0x10, 0x0, 0x18, 0x80, 0x58, 0x0, 0x18, 0x80
	.byte 0xA0, 0x0
dword_81190C4: .word 0x0
off_81190C8: .word byte_81190CC
byte_81190CC: .byte 0x0, 0xB9, 0x0, 0x0, 0x10, 0xB9, 0x0, 0x0, 0x20, 0xB9, 0x0, 0x0
	thumb_func_end sub_8119084

	thumb_local_start
sub_81190D8:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81190D8

	thumb_local_start
sub_81190E0:
	push {lr}
	ldr r0, off_81190F0 // =off_81190F4
	ldrb r1, [r5,#4]
	ldr r0, [r0,r1]
	bl sub_800304A
	pop {pc}
	.byte 0, 0
off_81190F0: .word off_81190F4
off_81190F4: .word 0x100
	thumb_func_end sub_81190E0

	thumb_func_start sub_81190F8
sub_81190F8:
	push {r4,r5,lr}
	mov r4, #0
	bl getStructFrom2008450
	beq loc_8119110
	mov r5, r1
	bl sprite_getFrameParameters
	mov r1, #0xc0
	tst r0, r1
	beq loc_8119110
	mov r4, #1
loc_8119110:
	mov r0, r4
	tst r0, r0
	pop {r4,r5,pc}
	.balign 4, 0x00
	thumb_func_end sub_81190F8

	thumb_func_start sub_8119118
sub_8119118:
	push {lr}
	bl getStructFrom2008450
	beq locret_8119124
	mov r0, #8
	strb r0, [r1,#8]
locret_8119124:
	pop {pc}
	.balign 4, 0x00
off_8119128: .word off_8119140
	.word off_811914C
	.word off_8119140
	.word off_8119140
	.word off_8119158
	.word off_8119164
off_8119140: .word 0xB0
	.word 0x0
	.word 0x100
off_811914C: .word 0xD0
	.byte 0x20, 0x0, 0x0, 0x0, 0x20, 0x1, 0x0, 0x0
off_8119158: .word 0x140
	.word 0x0
	.word 0x190
off_8119164: .word 0x178
	.word 0x208
	.word 0x1C8
off_8119170: .word dword_8119188
	.word dword_811918C
	.word dword_8119188
	.word dword_8119190
	.word dword_8119194
	.word dword_8119198
dword_8119188: .word 0x1
dword_811918C: .word 0x1
dword_8119190: .word 0x2020203
dword_8119194: .word 0x6060607
dword_8119198: .word 0x8080809
dword_811919C: .word 0x2019A00
	.word unk_2033A00
	.word byte_2019A00
	.word byte_2017A00
	.word unk_2018200
	.word unk_2032D00
off_81191B4: .word off_81191CC
	.word off_81191D8
	.word off_81191E4
	.word off_81191F0
	.word off_81191F0
	.word off_81191FC
off_81191CC: .word unk_2026A20
	.word unk_2024A20
	.word unk_2026A20
off_81191D8: .word unk_2035A04
	.word unk_2037A04
	.word unk_2035A04
off_81191E4: .word unk_2020C00
	.word byte_2022C00
	.word unk_2020C00
off_81191F0: .word byte_202E17C
	.word byte_202F57C
	.word byte_202E17C
off_81191FC: .word unk_2036500
	.word unk_2034E00
	.word unk_2036500
off_8119208: .word dword_8119220
	.word dword_8119224
	.word dword_8119220
	.word dword_8119220
	.word dword_8119220
	.word dword_8119224
dword_8119220: .word 0x20202
dword_8119224: .word 0x0
off_8119228: .word dword_8119240
	.word dword_8119244
	.word dword_8119248
	.word dword_8119240
	.word dword_8119240
	.word dword_8119244
dword_8119240: .word 0x1
dword_8119244: .word 0x1
dword_8119248: .word 0x2020203
off_811924C: .word byte_8119264
	.word byte_8119284
	.word byte_8119264
	.word byte_81192A4
	.word byte_81192C4
	.word byte_81192E4
byte_8119264: .byte 0x1, 0x2, 0x3, 0x2, 0x2, 0x2, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_8119284: .byte 0x1, 0x2, 0x3, 0x2, 0x2, 0x2, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_81192A4: .byte 0x3, 0x4, 0x5, 0x4, 0x4, 0x4, 0x4, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2
	.byte 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2
byte_81192C4: .byte 0x7, 0x8, 0x9, 0x8, 0x8, 0x8, 0x8, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6
	.byte 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6, 0x6
byte_81192E4: .byte 0x9, 0xA, 0xB, 0xA, 0xA, 0xA, 0xA, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
off_8119304: .word dword_811931C
	.word dword_8119320
	.word dword_811931C
	.word dword_8119324
	.word dword_8119328
	.word dword_811932C
dword_811931C: .word 0x2
dword_8119320: .word 0x2
dword_8119324: .word 0x4
dword_8119328: .word 0x8
dword_811932C: .word 0xA
off_8119330: .word dword_8119348
	.word dword_811934C
	.word dword_8119348
	.word dword_8119350
	.word dword_8119354
	.word dword_8119358
dword_8119348: .word 0x3
dword_811934C: .word 0x3
dword_8119350: .word 0x5
dword_8119354: .word 0x9
dword_8119358: .word 0xB
byte_811935C: .byte 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8119118

	thumb_func_start sub_8119364
sub_8119364:
	push {lr}
	ldr r0, off_8119374 // =off_8119378
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8119374: .word off_8119378
off_8119378: .word sub_8119384+1
	.word sub_81196A0+1
	.word sub_8119804+1
	thumb_func_end sub_8119364

	thumb_local_start
sub_8119384:
	push {lr}
	ldrb r1, [r5,#4]
	mov r2, #0x10
	tst r1, r2
	beq loc_8119396
	bic r1, r2
	strb r1, [r5,#4]
	mov r0, #1
	strb r0, [r5,#0xa]
loc_8119396:
	mov r0, #0x83
	ldrb r1, [r5,#4]
	cmp r1, #1
	bne loc_81193A0
	mov r0, #0x23
loc_81193A0:
	strb r0, [r5]
	tst r1, r1
	bne loc_81193AA
	bl sub_81195E4
loc_81193AA:
	ldr r1, off_8119620 // =dword_8119624
	ldrb r4, [r5,#4]
	ldrb r0, [r1,r4]
	lsl r2, r4, #2
	ldr r1, off_8119630 // =off_81191B4
	ldrb r3, [r5,#5]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	ldr r1, [r1,r2]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldr r1, off_8119638 // =dword_811963C
	ldrb r0, [r1,r4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r1, off_8119640 // =off_8119208
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	ldrb r0, [r1,r4]
	bl sub_8002E14
	ldr r1, off_8119628 // =off_8119128
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	lsl r0, r4, #2
	ldr r0, [r1,r0]
	bl sub_800306C
	ldr r1, off_8119634 // =off_8119170
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	ldrb r0, [r1,r4]
	bl sub_800304A
	ldr r0, off_8119644 // =off_8119228
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0,r4]
	bl sub_8003060
	tst r4, r4
	bne loc_8119420
	ldr r0, off_8119648 // =off_811924C
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_8002FEC
loc_8119420:
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xff
	strh r0, [r5,#0x10]
	strb r0, [r5,#0xd]
	strh r0, [r5,#0x1a]
	mov r0, #0
	strb r0, [r5,#0x13]
	bl sub_81196A0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8119384

	thumb_local_start
sub_8119438:
	push {r4-r7,lr}
	sub sp, sp, #4
	// idx
	ldrh r0, [r5,#0xe]
	tst r0, r0
	beq loc_811944E
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r7, r0
	ldr r0, [r7,#0x24]
	tst r0, r0
	bne loc_8119454
loc_811944E:
	bl sub_81195E4
	b loc_811958E
loc_8119454:
	ldr r1, off_8119628 // =off_8119128
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r1, [r1]
	lsl r1, r1, #5
	ldr r2, dword_8119654 // =0x6010000
	add r1, r1, r2
	str r1, [sp]
	push {r0,r1}
	mov r0, r1
	ldr r1, dword_8119664 // =0x800
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r0,r1}
	mov r2, #0xe0
	mov r4, r2
	mov r6, #0
loc_8119478:
	push {r0-r2}
	bl sub_8000AC8
	pop {r0-r2}
	add r0, r0, r4
	ldr r3, off_8119658 // =0x100
	add r1, r1, r3
	add r6, #1
	cmp r6, #6
	blt loc_8119478
	ldr r1, off_8119634 // =off_8119170
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldrb r0, [r1]
	lsl r0, r0, #5
	ldr r1, off_811965C // =byte_3001550
	add r1, r1, r0
	mov r2, #0x20
	ldr r0, [r7,#0x28]
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldrb r0, [r5,#0xc]
	mov r1, #0x40
	mul r0, r1
	ldr r1, off_8119660 // =dword_86E2E98
	add r0, r0, r1
	ldr r1, [sp]
	ldr r2, dword_8119664 // =0x800
	add r1, r1, r2
	mov r2, #0x40
	bl sub_8000AC8
	ldr r1, off_811964C // =off_8119304
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldrb r0, [r1]
	lsl r0, r0, #5
	ldr r1, off_811965C // =byte_3001550
	add r1, r1, r0
	mov r2, #0x20
	ldr r0, off_8119668 // =byte_86E587C
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldrb r0, [r7,#6]
	mov r1, #0x80
	mul r0, r1
	ldr r1, off_811966C // =dword_86E3B9C
	add r0, r0, r1
	ldr r1, [sp]
	ldr r2, dword_8119670 // =0x840
	add r1, r1, r2
	mov r2, #0x80
	bl sub_8000AC8
	ldr r1, off_8119650 // =off_8119330
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldrb r0, [r1]
	lsl r0, r0, #5
	ldr r1, off_811965C // =byte_3001550
	add r1, r1, r0
	mov r2, #0x20
	ldr r0, off_8119674 // =dword_86E43DC
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldrh r0, [r7,#0x1a]
	ldrb r1, [r7,#9]
	mov r2, #0x10
	tst r1, r2
	bne loc_8119550
	mov r2, #2
	tst r1, r2
	bne loc_8119520
	ldr r0, [sp]
	ldr r1, dword_8119680 // =0x8c0
	add r0, r0, r1
	ldr r1, off_8119684 // =0xc0
	add r1, #0x40
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	b loc_811955C
loc_8119520:
	ldr r1, off_8119678 // =0x3e8
	cmp r0, r1
	ble loc_8119548
	ldrb r0, [r5,#0xa]
	tst r0, r0
	beq loc_8119542
	ldr r0, off_811969C // =sSubmenu
	ldrb r1, [r0]
	cmp r1, #0x18
	bne loc_8119542
	ldrb r1, [r0,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	cmp r1, #0x1c
	bne loc_8119542
	ldrh r0, [r5,#0xe]
	bl sub_8010CE0
	b loc_8119548
loc_8119542:
	ldrh r0, [r5,#0xe]
	bl sub_8010C76
loc_8119548:
	ldr r1, [sp]
	bl sub_8119594
	b loc_811955C
loc_8119550:
	mov r0, #0xaa
	lsl r1, r0, #8
	orr r0, r1
	ldr r1, [sp]
	bl sub_8119594
loc_811955C:
	ldr r0, off_8119690 // =dword_86EE0CC
	ldrh r1, [r5,#0xe]
	cmp r1, #0xff
	bgt loc_8119566
	ldr r0, off_811968C // =byte_86EB8B8
loc_8119566:
	mov r2, #0xff
	and r1, r2
	ldr r2, off_811962C // =dword_811919C
	ldrb r3, [r5,#5]
	lsl r3, r3, #2
	ldr r2, [r2,r3]
	ldr r3, off_8119628 // =off_8119128
	ldrb r4, [r5,#5]
	lsl r4, r4, #2
	ldr r3, [r3,r4]
	ldr r3, [r3,#8]
	lsl r3, r3, #5
	ldr r4, dword_8119654 // =0x6010000
	add r3, r3, r4
	mov r4, #0xa
	mov r5, #3
	ldr r6, off_8119688 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
loc_811958E:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119438

	thumb_local_start
sub_8119594:
	push {r4-r7,lr}
	ldr r2, dword_8119680 // =0x8c0
	add r1, r1, r2
	ldr r2, off_8119684 // =0xc0
	add r7, r1, r2
	push {r0}
	mov r0, r1
	mov r1, r2
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r0}
	mov r1, #0xaa
	lsl r2, r1, #8
	orr r1, r2
	cmp r0, r1
	bne loc_81195BA
	mov r6, #3
	mov r4, r0
	b loc_81195C6
loc_81195BA:
	bl sub_8000C00
	mov r4, r0
	bl sub_8000C5C
	mov r6, r0
loc_81195C6:
	mov r0, #0xf
	and r0, r4
	lsr r4, r4, #4
	mov r2, #0x40
	mul r0, r2
	ldr r1, off_811967C // =dword_86E411C
	add r0, r0, r1
	mov r1, r7
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	sub r7, #0x40
	sub r6, #1
	bgt loc_81195C6
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119594

	thumb_local_start
sub_81195E4:
	push {lr}
	ldr r1, off_8119628 // =off_8119128
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r1, [r1]
	lsl r1, r1, #5
	ldr r2, dword_8119654 // =vObjectTiles
	add r1, r1, r2
	push {r0,r1}
	mov r0, r1
	ldr r1, dword_8119694 // =0xa00
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r0,r1}
	ldr r1, off_8119628 // =off_8119128
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r1, [r1,#8]
	lsl r1, r1, #5
	ldr r2, dword_8119654 // =vObjectTiles
	add r1, r1, r2
	push {r0,r1}
	mov r0, r1
	ldr r1, dword_8119698 // =0x780
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r0,r1}
	pop {pc}
off_8119620: .word dword_8119624
dword_8119624: .word 0x50705
off_8119628: .word off_8119128
off_811962C: .word dword_811919C
off_8119630: .word off_81191B4
off_8119634: .word off_8119170
off_8119638: .word dword_811963C
dword_811963C: .word 0x10000
off_8119640: .word off_8119208
off_8119644: .word off_8119228
off_8119648: .word off_811924C
off_811964C: .word off_8119304
off_8119650: .word off_8119330
dword_8119654: .word vObjectTiles
off_8119658: .word 0x100
off_811965C: .word byte_3001550
off_8119660: .word dword_86E2E98
dword_8119664: .word 0x800
off_8119668: .word byte_86E587C
off_811966C: .word dword_86E3B9C
dword_8119670: .word 0x840
off_8119674: .word dword_86E43DC
off_8119678: .word 0x3E8
off_811967C: .word dword_86E411C
dword_8119680: .word 0x8C0
off_8119684: .word 0xC0
off_8119688: .word dword_86A5D60
off_811968C: .word byte_86EB8B8
off_8119690: .word dword_86EE0CC
dword_8119694: .word 0xA00
dword_8119698: .word 0x780
off_811969C: .word sSubmenu
	thumb_func_end sub_81195E4

	thumb_local_start
sub_81196A0:
	push {lr}
	ldr r0, off_81196B4 // =off_81196B8
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
off_81196B4: .word off_81196B8
off_81196B8: .word sub_81196C4+1
	.word sub_811979C+1
	.word sub_8119800+1
	thumb_func_end sub_81196A0

	thumb_local_start
sub_81196C4:
	push {lr}
	ldr r0, off_81196D8 // =off_81196DC
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_81198E8
	pop {pc}
	.balign 4, 0x00
off_81196D8: .word off_81196DC
off_81196DC: .word sub_81196F0+1
	.word sub_8119730+1
	.word sub_811974C+1
	.word sub_811975C+1
	.word sub_811976C+1
	thumb_func_end sub_81196C4

	thumb_local_start
sub_81196F0:
	push {r4-r7,lr}
	bl sub_8119880
	beq loc_811970A
	bl sub_8119438
	ldrh r0, [r5,#0xe]
	strh r0, [r5,#0x10]
	ldrb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	ldrh r0, [r5,#0x18]
	strh r0, [r5,#0x1a]
	b locret_811972C
loc_811970A:
	ldrh r4, [r5,#0xe]
	ldrb r6, [r5,#0xc]
	ldrh r3, [r5,#0x18]
	ldrh r1, [r5,#0x1a]
	cmp r3, r1
	bne loc_8119722
	ldrh r0, [r5,#0x10]
	cmp r4, r0
	bne loc_8119722
	ldrb r0, [r5,#0xd]
	cmp r6, r0
	beq locret_811972C
loc_8119722:
	strh r3, [r5,#0x1a]
	strh r4, [r5,#0x10]
	strb r6, [r5,#0xd]
	mov r0, #4
	strb r0, [r5,#9]
locret_811972C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_81196F0

	thumb_local_start
sub_8119730:
	push {lr}
	mov r0, #0x90
	strb r0, [r5,#0x12]
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x90
	mov r2, #0x40
	bl sprite_setScaleParameters
	mov r0, #8
	strb r0, [r5,#9]
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8119730

	thumb_local_start
sub_811974C:
	push {lr}
	ldrb r0, [r5]
	mov r1, #2
	bic r0, r1
	strb r0, [r5]
	mov r0, #0xc
	strb r0, [r5,#9]
	pop {pc}
	thumb_func_end sub_811974C

	thumb_local_start
sub_811975C:
	push {lr}
	bl sub_8119438
	mov r0, #0x10
	strb r0, [r5,#9]
	bl sub_811976C
	pop {pc}
	thumb_func_end sub_811975C

	thumb_local_start
sub_811976C:
	push {lr}
	ldrb r0, [r5]
	mov r1, #2
	orr r0, r1
	strb r0, [r5]
	ldrb r0, [r5,#0x12]
	sub r0, #0x30
	strb r0, [r5,#0x12]
	cmp r0, #0x40
	bgt loc_811978E
	mov r0, #0xc0
	strb r0, [r5,#0x12]
	mov r0, #0
	strb r0, [r5,#9]
	bl sprite_makeUnscalable
	b locret_8119798
loc_811978E:
	mov r1, r0
	mov r0, #0
	mov r2, #0x40
	bl sprite_setScaleParameters
locret_8119798:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811976C

	thumb_local_start
sub_811979C:
	push {lr}
	ldr r0, off_81197AC // =off_81197B0
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_81197AC: .word off_81197B0
off_81197B0: .word sub_81197B4+1
	thumb_func_end sub_811979C

	thumb_local_start
sub_81197B4:
	push {r4-r7,lr}
	bl sub_81198B0
	bne loc_81197C6
	ldr r1, [r5,#0x14]
	ldrb r0, [r1]
	mov r1, #2
	tst r0, r1
	bne locret_81197F0
loc_81197C6:
	ldrh r4, [r5,#0xe]
	ldrb r6, [r5,#0xc]
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_81197E8
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #0x20
	tst r1, r2
	beq loc_81197E2
	mov r0, #3
	b loc_81197E8
loc_81197E2:
	ldrb r0, [r0,#7]
	ldr r1, off_81197F4 // =byte_81197F8
	ldrb r0, [r1,r0]
loc_81197E8:
	bl sprite_setPalette // (int pallete) -> void
	strh r4, [r5,#0x10]
	strb r6, [r5,#0xd]
locret_81197F0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81197F4: .word byte_81197F8
byte_81197F8: .byte 0x0, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_81197B4

	thumb_local_start
sub_8119800:
	push {lr}
	pop {pc}
	thumb_func_end sub_8119800

	thumb_local_start
sub_8119804:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8119804

	thumb_func_start sub_811980C
sub_811980C:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r4, r2
	add r7, r4, #3
loc_811981C:
	mov r0, r4
	bl getStructFrom2008450
	beq loc_8119830
	ldr r0, [sp]
	strh r0, [r1,#0xe]
	ldr r0, [sp,#4]
	strb r0, [r1,#0xc]
	ldr r0, [sp,#0xc]
	strh r0, [r1,#0x18]
loc_8119830:
	add r4, #1
	cmp r4, r7
	blt loc_811981C
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811980C

	thumb_func_start sub_811983C
sub_811983C:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_811984E
	ldr r0, [sp]
	strb r0, [r1,#0x13]
loc_811984E:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811983C

	thumb_func_start sub_8119854
sub_8119854:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r4, r2
	add r7, r4, #3
loc_8119862:
	mov r0, r4
	bl getStructFrom2008450
	beq loc_8119874
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_8119874:
	add r4, #1
	cmp r4, r7
	blt loc_8119862
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_8119854

	thumb_local_start
sub_8119880:
	push {lr}
	ldrb r0, [r5,#5]
	ldr r1, off_81198AC // =byte_811935C
	ldrb r0, [r1,r0]
	beq locret_811989E
	ldr r6, off_81198A8 // =sSubmenu
	bl sub_81355D8
	beq loc_8119898
	bl sub_81312F4
	mov r6, r0
loc_8119898:
	ldrb r0, [r6,#0xe]
	ldrb r1, [r6,#0xf]
	cmp r0, r1
locret_811989E:
	pop {pc}
	mov r0, #1
	tst r0, r0
	pop {pc}
	.balign 4, 0x00
off_81198A8: .word sSubmenu
off_81198AC: .word byte_811935C
	thumb_func_end sub_8119880

	thumb_local_start
sub_81198B0:
	push {lr}
	ldrb r0, [r5,#5]
	cmp r0, #1
	beq loc_81198DE
	cmp r0, #2
	beq loc_81198DE
	cmp r0, #3
	beq loc_81198DE
	cmp r0, #4
	beq loc_81198DE
	cmp r0, #5
	beq loc_81198DE
	ldr r6, off_81198E4 // =sSubmenu
	bl sub_81355D8
	beq loc_81198D6
	bl sub_81312F4
	mov r6, r0
loc_81198D6:
	ldrb r0, [r6,#0xe]
	ldrb r1, [r6,#0xf]
	cmp r0, r1
	pop {pc}
loc_81198DE:
	mov r0, #1
	tst r0, r0
	pop {pc}
off_81198E4: .word sSubmenu
	thumb_func_end sub_81198B0

	thumb_local_start
sub_81198E8:
	push {lr}
	ldr r0, dword_81198FC // =0x0
	ldrb r1, [r5,#0xc]
	cmp r1, #0xff
	bne loc_81198F4
	ldr r0, dword_8119900 // =0x40000000
loc_81198F4:
	bl sub_8002FA6
	pop {pc}
	.balign 4, 0x00
dword_81198FC: .word 0x0
dword_8119900: .word 0x40000000
	thumb_func_end sub_81198E8

loc_8119904:
	mov r1, #0xc0
	mov r1, #0xc2
	mov r1, #0xc4
	mov r1, #0xc6
	mov r1, #0xc8
	mov r1, #0xca
	mov r1, #0xcc
	mov r1, #0xce
	mov r1, #0xd0
	mov r1, #0xd2
	mov r1, #0xc1
	mov r1, #0xc3
	mov r1, #0xc5
	mov r1, #0xc7
	mov r1, #0xc9
	mov r1, #0xcb
	mov r1, #0xcd
	mov r1, #0xcf
	mov r1, #0xd1
	mov r1, #0xd3
loc_811992C:
	mov r1, #0xd4
	mov r1, #0xd5
	mov r1, #0xd6
	mov r1, #0xd7
	mov r1, #0xd8
	mov r1, #0xd9
	mov r1, #0xda
	mov r1, #0xdb
	mov r1, #0xdc
	mov r1, #0xdd
	mov r1, #0xde
	mov r1, #0xdf
	mov r1, #0xe0
	mov r1, #0xe1
	mov r1, #0xe2
	mov r1, #0xe3
	mov r1, #0xe4
	mov r1, #0xe5
	mov r1, #0xe6
	mov r1, #0xe7
	mov r1, #0xe8
	mov r1, #0xe9
	mov r1, #0xea
	mov r1, #0xeb
	mov r1, #0xec
	mov r1, #0xed
	mov r1, #0xee
	mov r1, #0xef
	mov r1, #0xf0
	mov r1, #0xf1
	mov r1, #0xf2
	mov r1, #0xf3
	mov r1, #0xf4
	mov r1, #0xf5
	mov r1, #0xf6
	mov r1, #0xf7
	mov r1, #0xf8
	mov r1, #0xf9
	mov r1, #0xfa
	mov r1, #0xfb
	thumb_func_start sub_811997C
sub_811997C:
	push {lr}
	ldr r6, off_811999C // =sSubmenu
	ldr r0, off_811998C // =off_8119990
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811998C: .word off_8119990
off_8119990: .word sub_81199A0+1
	.word sub_81199C0+1
	.word sub_81199DC+1
off_811999C: .word sSubmenu
	thumb_func_end sub_811997C

	thumb_local_start
sub_81199A0:
	push {lr}
	mov r0, #1
	strb r0, [r5]
	mov r0, #0
	str r0, [r5,#0xc]
	str r0, [r5,#0x10]
	str r0, [r5,#0x14]
	str r0, [r5,#0x18]
	mov r0, #4
	strb r0, [r5,#8]
	ldrh r0, [r6,#0x1c]
	mvn r0, r0
	str r0, [r5,#0xc]
	bl sub_81199C0
	pop {pc}
	thumb_func_end sub_81199A0

	thumb_local_start
sub_81199C0:
	push {lr}
	ldrb r0, [r6,#0x13]
	tst r0, r0
	bne loc_81199CE
	ldrh r0, [r6,#0x1c]
	cmp r0, #0xff
	beq loc_81199D2
loc_81199CE:
	bl sub_81199E4
loc_81199D2:
	mov r0, #0xff
	strh r0, [r6,#0x1c]
	bl sub_8119A48
	pop {pc}
	thumb_func_end sub_81199C0

	thumb_local_start
sub_81199DC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_81199DC

	thumb_local_start
sub_81199E4:
	push {r4-r7,lr}
	mov r0, #0
	str r0, [r5,#0x10]
	push {r5,r6}
	ldr r0, off_8119A3C // =eTextScript201D280
	mov r1, #0xa
	ldrb r2, [r5,#4]
	tst r2, r2
	beq loc_81199F8
	ldrh r1, [r6,#0x1c]
loc_81199F8:
	ldr r2, off_8119A40 // =byte_201B200
	ldr r3, dword_8119A44 // =0x600b800
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_8119A38 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r5,r6}
	push {r5,r6}
	ldr r0, off_8119A34 // =byte_873EA50
	ldrh r1, [r6,#0x1c]
	ldr r2, off_8119A2C // =byte_201B480
	ldr r3, dword_8119A30 // =0x600ba80
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_8119A38 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r5,r6}
	str r0, [r5,#0x14]
	mov r0, #0
	str r0, [r5,#0x18]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8119A2C: .word byte_201B480
dword_8119A30: .word 0x600BA80
off_8119A34: .word byte_873EA50
off_8119A38: .word dword_86A5D60
off_8119A3C: .word eTextScript201D280
off_8119A40: .word byte_201B200
dword_8119A44: .word 0x600B800
	thumb_func_end sub_81199E4

	thumb_local_start
sub_8119A48:
	push {r4-r7,lr}
	mov r2, #0x28
	ldr r1, [r5,#0x10]
	add r1, #2
	str r1, [r5,#0x10]
	ldr r3, [r5,#0x14]
	lsl r3, r3, #2
	cmp r1, r3
	bge loc_8119A76
	mov r2, r1
	ldr r4, [r5,#0x18]
	add r4, #1
	str r4, [r5,#0x18]
	mov r3, #3
	and r4, r3
	bne loc_8119A76
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8119A76
	mov r0, #0x7e
	bl sound_play // () -> void
loc_8119A76:
	push {r2,r5}
	// j
	mov r0, #0x12
	// i
	mov r1, #0xd
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_8119A9C // =loc_8119904
	mov r4, #0xa
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r2,r5}
	ldrb r0, [r5,#4]
	tst r0, r0
	bne locret_8119A9A
	mov r0, #0x12
	mov r1, #0xf
	lsr r2, r2, #2
	bl sub_8119AA0
locret_8119A9A:
	pop {r4-r7,pc}
off_8119A9C: .word loc_8119904
	thumb_func_end sub_8119A48

	thumb_local_start
sub_8119AA0:
	push {r4-r7,lr}
	// tileRefs
	ldr r3, off_8119AC8 // =loc_811992C
	mov r4, #0
loc_8119AA6:
	push {r0-r4}
	// cpyOff
	mov r2, #0
	mov r4, #1
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r0-r4}
	sub r2, #1
	bgt loc_8119ABA
	b locret_8119AC4
loc_8119ABA:
	add r0, #1
	add r3, #4
	add r4, #1
	cmp r4, #0xa
	blt loc_8119AA6
locret_8119AC4:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8119AC8: .word loc_811992C
	thumb_func_end sub_8119AA0

	thumb_func_start sub_8119ACC
sub_8119ACC:
	push {lr}
	ldr r0, off_8119ADC // =off_8119AE0
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8119ADC: .word off_8119AE0
off_8119AE0: .word sub_8119AEC+1
	.word sub_8119BD0+1
	.word sub_8119BE0+1
	thumb_func_end sub_8119ACC

	thumb_local_start
sub_8119AEC:
	push {r4,lr}
	mov r4, #0x23
	strb r4, [r5]
	bl getPETNaviSelect // () -> u8
	tst r0, r0
	beq loc_8119B02
	lsl r0, r0, #2
	ldr r1, off_8119B70 // =byte_8119B74
	ldr r0, [r1,r0]
	b loc_8119B30
loc_8119B02:
	mov r0, #0
	mov r1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	bl notZero_eByte200AD04
	beq loc_8119B22
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8119B22
	mov r0, #0xc
	add r0, r0, r4
	b loc_8119B24
loc_8119B22:
	mov r0, #0
loc_8119B24:
	ldr r1, off_8119B70 // =byte_8119B74
	lsl r0, r0, #2
	ldr r4, [r1,r0]
	mov r0, r4
	b loc_8119B30
	mov r0, #0x1b
loc_8119B30:
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_8119C08
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, dword_8119B6C // =0x0
	bl sub_800306C
	mov r0, #0
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_8119BD0
	pop {r4,pc}
dword_8119B6C: .word 0x0
off_8119B70: .word byte_8119B74
byte_8119B74: .byte 0x1B, 0x0, 0x0, 0x0, 0x3F, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0, 0x41
	.byte 0x0, 0x0, 0x0, 0x42, 0x0, 0x0, 0x0, 0x43, 0x0, 0x0, 0x0, 0x44, 0x0
	.byte 0x0, 0x0, 0x45, 0x0, 0x0, 0x0, 0x46, 0x0, 0x0, 0x0, 0x47, 0x0, 0x0
	.byte 0x0, 0x48, 0x0, 0x0, 0x0, 0x62, 0x0, 0x0, 0x0, 0x5F, 0x0, 0x0, 0x0
	.byte 0x54, 0x0, 0x0, 0x0, 0x55, 0x0, 0x0, 0x0, 0x56, 0x0, 0x0, 0x0, 0x57
	.byte 0x0, 0x0, 0x0, 0x58, 0x0, 0x0, 0x0, 0x59, 0x0, 0x0, 0x0, 0x5A, 0x0
	.byte 0x0, 0x0, 0x5B, 0x0, 0x0, 0x0, 0x5C, 0x0, 0x0, 0x0, 0x5D, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_8119AEC

	thumb_local_start
sub_8119BD0:
	push {lr}
	bl sub_8119C08
	bl sprite_setPalette // (int pallete) -> void
	bl sprite_update
	pop {pc}
	thumb_func_end sub_8119BD0

	thumb_local_start
sub_8119BE0:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8119BE0

	thumb_func_start sub_8119BE8
sub_8119BE8:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_8119C02
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_8119C02:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119BE8

	thumb_local_start
sub_8119C08:
	push {r4-r7,lr}
	mov r4, #0
	mov r7, #0
	bl getPETNaviSelect // () -> u8
	tst r0, r0
	bne loc_8119C44
	bl notZero_eByte200AD04
	beq loc_8119C20
	mov r0, #0
	b loc_8119C3C
loc_8119C20:
	mov r0, #0
	mov r1, #0x10
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r6, r0
	tst r6, r6
	beq loc_8119C36
	lsl r1, r0, #2
	add r0, r0, r1
	add r0, #0x12
	b loc_8119C3C
loc_8119C36:
	mov r0, r6
	ldr r1, off_8119C54 // =byte_80203EA
	ldrb r0, [r1,r0]
loc_8119C3C:
	bl sub_8119C58
	mov r7, r0
	b loc_8119C4C
loc_8119C44:
	mov r0, #0
	bl sub_8119C58
	mov r7, r0
loc_8119C4C:
	add r4, r4, r7
	mov r0, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8119C54: .word byte_80203EA
	thumb_func_end sub_8119C08

	thumb_local_start
sub_8119C58:
	push {r7,lr}
	mov r7, r0
	bl getPETNaviSelect // () -> u8
	mov r1, #0xe
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0xff
	beq loc_8119C6E
	mov r0, r7
	b locret_8119C70
loc_8119C6E:
	add r0, r7, #4
locret_8119C70:
	pop {r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119C58

	thumb_func_start sub_8119C74
sub_8119C74:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_8119C8E
	mov r0, #0x23
	ldr r2, [sp]
	tst r2, r2
	bne loc_8119C8C
	mov r0, #1
loc_8119C8C:
	strb r0, [r1]
loc_8119C8E:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119C74

	thumb_func_start sub_8119C94
sub_8119C94:
	push {r4,lr}
	bl getPETNaviSelect // () -> u8
	tst r0, r0
	bne loc_8119CB8
	mov r0, #0
	mov r1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8119CB6
	mov r0, #0x17
	add r4, r4, r0
loc_8119CB6:
	b loc_8119CBC
loc_8119CB8:
	mov r4, #0xb
	add r4, r4, r0
loc_8119CBC:
	lsl r4, r4, #2
	ldr r1, off_8119CC8 // =byte_8119CCC
	ldrsh r0, [r1,r4]
	add r4, #2
	ldrsh r1, [r1,r4]
	pop {r4,pc}
off_8119CC8: .word byte_8119CCC
byte_8119CCC: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x2, 0x0, 0xFC, 0xFF, 0x2
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0xFC, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0xFA, 0xFF, 0x6
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0xFC
	.byte 0xFF, 0x4, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
	thumb_func_end sub_8119C94

	thumb_func_start sub_8119D54
sub_8119D54:
	push {lr}
	ldr r0, off_8119D64 // =off_8119D68
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8119D64: .word off_8119D68
off_8119D68: .word sub_8119D74+1
	.word sub_8119DE8+1
	.word sub_8119E38+1
	thumb_func_end sub_8119D54

	thumb_local_start
sub_8119D74:
	push {lr}
	mov r4, #0xa3
	strb r4, [r5]
	mov r0, #0x2d
	ldr r1, off_8119DC0 // =unk_201D774
	ldrb r2, [r5,#4]
	tst r2, r2
	beq loc_8119D86
	ldr r1, off_8119DC4 // =unk_2024A00
loc_8119D86:
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, byte_8119DC8 // =0x0
	bl sub_8002FEC
	mov r0, #2
	bl sub_8002E14
	ldr r0, dword_8119DBC // =0x20
	bl sub_800306C
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_8119DE8
	pop {pc}
	.balign 4, 0x00
dword_8119DBC: .word 0x20
off_8119DC0: .word unk_201D774
off_8119DC4: .word unk_2024A00
byte_8119DC8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8119D74

	thumb_local_start
sub_8119DE8:
	push {r4-r7,lr}
	mov r0, #0
	bl getStructFrom2008450
	mov r6, r1
	add r1, #0x20
	ldrh r0, [r1,#0xc]
	ldrh r1, [r1,#0xe]
	bl sprite_setCoordinates
	ldrb r4, [r6]
	mov r1, #0x80
	orr r4, r1
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x20
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8119E1A
	b loc_8119E18
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x23
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8119E1A
loc_8119E18:
	mov r4, #1
loc_8119E1A:
	strb r4, [r5]
	mov r0, r6
	bl sprite_getMosaicScalingParameters
	bl sprite_setMosaicScalingParameters
	mov r0, r6
	bl sub_8002F3E
	bl loc_8002F02
	bl sprite_update
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119DE8

	thumb_local_start
sub_8119E38:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_8119E38

	thumb_func_start sub_8119E40
sub_8119E40:
	push {lr}
	ldr r0, off_8119E50 // =off_8119E54
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_8119E50: .word off_8119E54
off_8119E54: .word sub_8119E60+1
	.word sub_811A0A4+1
	.word sub_811A1EC+1
	thumb_func_end sub_8119E40

	thumb_local_start
sub_8119E60:
	push {lr}
	mov r0, #0x83
	ldrb r1, [r5,#4]
	cmp r1, #1
	bne loc_8119E6C
	mov r0, #0x23
loc_8119E6C:
	strb r0, [r5]
	tst r1, r1
	bne loc_8119E76
	bl sub_8119F88
loc_8119E76:
	ldr r1, off_8119FC4 // =dword_8119FC8
	ldrb r4, [r5,#4]
	ldrb r0, [r1,r4]
	lsl r2, r4, #2
	ldr r1, off_8119FF4 // =off_8119FF8
	ldrb r3, [r5,#5]
	lsl r3, r3, #2
	ldr r1, [r1,r3]
	ldr r1, [r1,r2]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldr r1, off_811A018 // =dword_811A01C
	ldrb r0, [r1,r4]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r1, off_811A020 // =dword_811A024
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldrb r0, [r1,r0]
	bl sub_8002E14
	ldr r1, off_8119FCC // =off_8119FD0
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	lsl r0, r4, #2
	ldr r0, [r1,r0]
	bl sub_800306C
	ldr r1, off_811A00C // =off_811A010
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	ldrb r0, [r1,r4]
	bl sub_800304A
	ldr r0, off_811A028 // =off_811A02C
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0,r4]
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xff
	strh r0, [r5,#0x10]
	strb r0, [r5,#0xd]
	strh r0, [r5,#0x1a]
	bl sub_811A0A4
	pop {pc}
	thumb_func_end sub_8119E60

	thumb_local_start
sub_8119EEC:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldrh r0, [r5,#0xe]
	tst r0, r0
	beq loc_8119F12
	push {r0}
	bl sub_811A268
	pop {r0}
	tst r2, r2
	bne loc_8119F06
	tst r1, r1
	bne loc_8119F12
loc_8119F06:
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r7, r0
	ldr r0, [r7,#0x24]
	tst r0, r0
	bne loc_8119F18
loc_8119F12:
	bl sub_8119F88
	b loc_8119F82
loc_8119F18:
	push {r5}
	ldr r0, off_811A094 // =unk_2028000
	ldrh r1, [r5,#0xe]
	ldr r2, off_811A0A0 // =0x140
	sub r1, r1, r2
	mov r2, #5
	mul r1, r2
	ldrb r2, [r5,#0xc]
	add r1, r1, r2
	ldr r2, off_8119FEC // =off_8119FF0
	ldrb r3, [r5,#5]
	lsl r3, r3, #2
	ldr r2, [r2,r3]
	ldr r3, off_8119FCC // =off_8119FD0
	ldrb r4, [r5,#5]
	lsl r4, r4, #2
	ldr r3, [r3,r4]
	ldr r3, [r3]
	lsl r3, r3, #5
	ldr r4, off_811A04C // =0x0
	add r3, r3, r4
	mov r4, #9
	mov r5, #5
	ldr r6, off_811A088 // =dword_86B7AE0
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r5}
	ldr r0, off_811A090 // =dword_86EE0CC
	ldrh r1, [r5,#0xe]
	cmp r1, #0xff
	bgt loc_8119F5A
	ldr r0, off_811A08C // =byte_86EB8B8
loc_8119F5A:
	mov r2, #0xff
	and r1, r2
	ldr r2, off_8119FE4 // =off_8119FE8
	ldrb r3, [r5,#5]
	lsl r3, r3, #2
	ldr r2, [r2,r3]
	ldr r3, off_8119FCC // =off_8119FD0
	ldrb r4, [r5,#5]
	lsl r4, r4, #2
	ldr r3, [r3,r4]
	ldr r3, [r3,#8]
	lsl r3, r3, #5
	ldr r4, off_811A04C // =0x0
	add r3, r3, r4
	mov r4, #9
	mov r5, #4
	ldr r6, off_811A084 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
loc_8119F82:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8119EEC

	thumb_local_start
sub_8119F88:
	push {lr}
	ldr r1, off_8119FCC // =off_8119FD0
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r1, [r1]
	lsl r1, r1, #5
	ldr r2, off_811A04C // =vObjectTiles
	add r1, r1, r2
	push {r0,r1}
	mov r0, r1
	ldr r1, dword_811A098 // =0xa00
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r0,r1}
	ldr r1, off_8119FCC // =off_8119FD0
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r1, [r1,#8]
	lsl r1, r1, #5
	ldr r2, off_811A04C // =vObjectTiles
	add r1, r1, r2
	push {r0,r1}
	mov r0, r1
	ldr r1, dword_811A09C // =0x780
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r0,r1}
	pop {pc}
off_8119FC4: .word dword_8119FC8
dword_8119FC8: .word 0x4040304
off_8119FCC: .word off_8119FD0
off_8119FD0: .word off_8119FD4
off_8119FD4: .word 0xC0
	.word 0x0
	.word 0x170
	.word 0xF6
off_8119FE4: .word off_8119FE8
off_8119FE8: .word unk_201A800
off_8119FEC: .word off_8119FF0
off_8119FF0: .word unk_2019200
off_8119FF4: .word off_8119FF8
off_8119FF8: .word off_8119FFC
off_8119FFC: .word unk_2026C00
	.word unk_2024C00
	.word unk_2026C00
	.word unk_2026C00
off_811A00C: .word off_811A010
off_811A010: .word dword_811A014
dword_811A014: .word 0xB00000B
off_811A018: .word dword_811A01C
dword_811A01C: .word 0x1020000
off_811A020: .word dword_811A024
dword_811A024: .word 0x0
off_811A028: .word off_811A02C
off_811A02C: .word dword_811A030
dword_811A030: .word 0x3020203
	.word off_811A038
off_811A038: .word dword_811A03C
dword_811A03C: .word 0x3000003
	.word off_811A044
off_811A044: .word dword_811A048
dword_811A048: .word 0x5000005
off_811A04C: .word vObjectTiles
	.byte 0x0, 0x1, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0
	.word byte_3001550
	.word dword_86E2E98
	.word 0x800
	.word byte_86E587C
	.word dword_86E3B9C
	.word 0x840
	.word dword_86E43DC
	.word 0x3E7
	.word dword_86E411C
	.byte 0xC0, 0x8, 0x0, 0x0, 0xC0, 0x0, 0x0, 0x0
off_811A084: .word dword_86A5D60
off_811A088: .word dword_86B7AE0
off_811A08C: .word byte_86EB8B8
off_811A090: .word dword_86EE0CC
off_811A094: .word unk_2028000
dword_811A098: .word 0xA00
dword_811A09C: .word 0x780
off_811A0A0: .word 0x140
	thumb_func_end sub_8119F88

	thumb_local_start
sub_811A0A4:
	push {lr}
	ldr r0, off_811A0B8 // =off_811A0BC
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
off_811A0B8: .word off_811A0BC
off_811A0BC: .word sub_811A0CC+1
	.word sub_811A190+1
	.word sub_811A1E8+1
	.word sub_811A0CC+1
	thumb_func_end sub_811A0A4

	thumb_local_start
sub_811A0CC:
	push {lr}
	ldr r0, off_811A0DC // =off_811A0E0
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811A0DC: .word off_811A0E0
off_811A0E0: .word sub_811A0F4+1
	.word sub_811A11C+1
	.word sub_811A138+1
	.word sub_811A148+1
	.word sub_811A160+1
	thumb_func_end sub_811A0CC

	thumb_local_start
sub_811A0F4:
	push {r4-r7,lr}
	ldrh r4, [r5,#0xe]
	ldrb r6, [r5,#0xc]
	ldrh r3, [r5,#0x18]
	ldrh r1, [r5,#0x1a]
	cmp r3, r1
	bne loc_811A10E
	ldrh r0, [r5,#0x10]
	cmp r4, r0
	bne loc_811A10E
	ldrb r0, [r5,#0xd]
	cmp r6, r0
	beq locret_811A118
loc_811A10E:
	strh r3, [r5,#0x1a]
	strh r4, [r5,#0x10]
	strb r6, [r5,#0xd]
	mov r0, #4
	strb r0, [r5,#9]
locret_811A118:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811A0F4

	thumb_local_start
sub_811A11C:
	push {lr}
	mov r0, #0x90
	strb r0, [r5,#0x12]
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x90
	mov r2, #0x40
	bl sprite_setScaleParameters
	mov r0, #8
	strb r0, [r5,#9]
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811A11C

	thumb_local_start
sub_811A138:
	push {lr}
	ldrb r0, [r5]
	mov r1, #2
	bic r0, r1
	strb r0, [r5]
	mov r0, #0xc
	strb r0, [r5,#9]
	pop {pc}
	thumb_func_end sub_811A138

	thumb_local_start
sub_811A148:
	push {lr}
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_811A154
	bl sub_8119EEC
loc_811A154:
	mov r0, #0x10
	strb r0, [r5,#9]
	bl sub_811A160
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811A148

	thumb_local_start
sub_811A160:
	push {lr}
	ldrb r0, [r5]
	mov r1, #2
	orr r0, r1
	strb r0, [r5]
	ldrb r0, [r5,#0x12]
	sub r0, #0x20
	strb r0, [r5,#0x12]
	cmp r0, #0x40
	bgt loc_811A182
	mov r0, #0xc0
	strb r0, [r5,#0x12]
	mov r0, #0
	strb r0, [r5,#9]
	bl sprite_makeUnscalable
	b locret_811A18C
loc_811A182:
	mov r1, r0
	mov r0, #0
	mov r2, #0x40
	bl sprite_setScaleParameters
locret_811A18C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811A160

	thumb_local_start
sub_811A190:
	push {lr}
	ldr r0, off_811A1A8 // =off_811A1AC
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_811A29C
	bl sub_811A2EC
	pop {pc}
	.balign 4, 0x00
off_811A1A8: .word off_811A1AC
off_811A1AC: .word sub_811A1B0+1
	thumb_func_end sub_811A190

	thumb_local_start
sub_811A1B0:
	push {lr}
	bl sub_811A24C
	bne loc_811A1C2
	ldr r1, [r5,#0x14]
	ldrb r0, [r1]
	mov r1, #2
	tst r0, r1
	bne locret_811A1DA
loc_811A1C2:
	ldrh r4, [r5,#0xe]
	ldrb r6, [r5,#0xc]
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#7]
	ldr r1, off_811A1DC // =byte_811A1E0
	ldrb r0, [r1,r0]
	bl sprite_setPalette // (int pallete) -> void
	strh r4, [r5,#0x10]
	strb r6, [r5,#0xd]
locret_811A1DA:
	pop {pc}
off_811A1DC: .word byte_811A1E0
byte_811A1E0: .byte 0x0, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811A1B0

	thumb_local_start
sub_811A1E8:
	push {lr}
	pop {pc}
	thumb_func_end sub_811A1E8

	thumb_local_start
sub_811A1EC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811A1EC

	thumb_func_start sub_811A1F4
sub_811A1F4:
	push {r4,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r4, r2
loc_811A202:
	mov r0, r4
	bl getStructFrom2008450
	beq loc_811A216
	ldr r0, [sp]
	strh r0, [r1,#0xe]
	ldr r0, [sp,#4]
	strb r0, [r1,#0xc]
	ldr r0, [sp,#0xc]
	strh r0, [r1,#0x18]
loc_811A216:
	add r4, #1
	cmp r4, #4
	blt loc_811A202
	add sp, sp, #0x10
	pop {r4,pc}
	thumb_func_end sub_811A1F4

	thumb_func_start sub_811A220
sub_811A220:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r4, r2
	add r7, r4, #4
loc_811A22E:
	mov r0, r4
	bl getStructFrom2008450
	beq loc_811A240
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811A240:
	add r4, #1
	cmp r4, r7
	blt loc_811A22E
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811A220

	thumb_local_start
sub_811A24C:
	push {lr}
	ldrb r0, [r5,#5]
	cmp r0, #2
	beq locret_811A260
	cmp r0, #3
	beq locret_811A260
	ldr r6, off_811A264 // =sSubmenu
	ldrb r0, [r6,#0xe] // (sSubmenu.unk_0E - 0x2009a30)
	ldrb r1, [r6,#0xf] // (sSubmenu.unk_0F - 0x2009a30)
	cmp r0, r1
locret_811A260:
	pop {pc}
	.balign 4, 0x00
off_811A264: .word sSubmenu
	thumb_func_end sub_811A24C

	thumb_local_start
sub_811A268:
	push {r4-r7,lr}
	ldr r3, off_811A290 // =dword_201FC20
	ldr r6, off_811A294 // =sSubmenu
	ldrb r0, [r6]
	cmp r0, #8
	beq loc_811A276
	ldr r6, off_811A298 // =unk_2037780
loc_811A276:
	mov r1, #0x40
	ldrh r1, [r6,r1]
	mov r2, #0x3c
	ldrh r2, [r6,r2]
	add r1, r1, r2
	lsl r1, r1, #2
	add r3, r3, r1
	ldrh r0, [r3]
	ldrb r1, [r3,#2]
	ldrb r2, [r3,#3]
	tst r0, r0
	pop {r4-r7,pc}
	.byte 0, 0
off_811A290: .word dword_201FC20
off_811A294: .word sSubmenu
off_811A298: .word unk_2037780
	thumb_func_end sub_811A268

	thumb_local_start
sub_811A29C:
	push {r4-r7,lr}
	bl sub_811A268
	tst r0, r0
	beq loc_811A2CA
	tst r2, r2
	bne loc_811A2AE
	tst r1, r1
	bne loc_811A2CA
loc_811A2AE:
	ldr r4, off_811A334 // =0x140
	sub r0, r0, r4
	ldr r4, off_811A2DC // =byte_8124B1C
	ldrb r4, [r4,r0]
	bl sub_8002FB2
	ldr r1, dword_811A2E0 // =0x7e
	orr r0, r1
	mov r2, #0x40
	lsr r2, r4
	bic r0, r2
	bl sub_8002FA6
	pop {r4-r7,pc}
loc_811A2CA:
	bl sub_8002FB2
	ldr r1, dword_811A2E0 // =0x7e
	bic r0, r1
	ldr r1, byte_811A2E4 // =0x3e
	orr r0, r1
	bl sub_8002FA6
	pop {r4-r7,pc}
off_811A2DC: .word byte_8124B1C
dword_811A2E0: .word 0x7E
byte_811A2E4: .byte 0x3E, 0x0, 0x0, 0x0, 0x9E, 0x7, 0x0, 0x0
	thumb_func_end sub_811A29C

	thumb_local_start
sub_811A2EC:
	push {r4-r7,lr}
	bl sub_811A268
	tst r0, r0
	beq loc_811A316
	tst r2, r2
	bne loc_811A2FE
	tst r1, r1
	bne loc_811A316
loc_811A2FE:
	mov r4, r2
	add r4, #1
	bl sub_8002FB2
	ldr r1, dword_811A328 // =0x1fc0
	orr r0, r1
	ldr r2, dword_811A330 // =0x1000
	lsr r2, r4
	bic r0, r2
	bl sub_8002FA6
	pop {r4-r7,pc}
loc_811A316:
	bl sub_8002FB2
	ldr r1, dword_811A328 // =0x1fc0
	bic r0, r1
	ldr r1, dword_811A32C // =0xf80
	orr r0, r1
	bl sub_8002FA6
	pop {r4-r7,pc}
dword_811A328: .word 0x1FC0
dword_811A32C: .word 0xF80
dword_811A330: .word 0x1000
off_811A334: .word 0x140
	thumb_func_end sub_811A2EC

	thumb_func_start sub_811A338
sub_811A338:
	push {lr}
	ldr r0, off_811A348 // =off_811A34C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811A348: .word off_811A34C
off_811A34C: .word sub_811A358+1
	.word sub_811A370+1
	.word sub_811A3A4+1
	thumb_func_end sub_811A338

	thumb_local_start
sub_811A358:
	push {lr}
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811A3AC
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	bl sub_811A370
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811A358

	thumb_local_start
sub_811A370:
	push {lr}
	ldrb r0, [r5,#0xc]
	add r0, #1
	strb r0, [r5,#0xc]
	cmp r0, #5
	blt loc_811A394
	mov r0, #0
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#0xd]
	add r0, #1
	cmp r0, #3
	blt loc_811A38A
	mov r0, #0
loc_811A38A:
	strb r0, [r5,#0xd]
	ldr r1, off_811A39C // =dword_811A3A0
	ldrb r0, [r1,r0]
	bl sprite_setPalette // (int pallete) -> void
loc_811A394:
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811A39C: .word dword_811A3A0
dword_811A3A0: .word 0x10200
	thumb_func_end sub_811A370

	thumb_local_start
sub_811A3A4:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811A3A4

	thumb_local_start
sub_811A3AC:
	push {r4,r5,lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x28
	ldr r1, off_811A3EC // =unk_201D700
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, dword_811A3E8 // =0x0
	bl sub_800306C
	mov r0, #8
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	pop {r4,r5,pc}
dword_811A3E8: .word 0x0
off_811A3EC: .word unk_201D700
	thumb_func_end sub_811A3AC

	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r4, r2
	add r7, r4, #4
	mov r0, r4
	bl getStructFrom2008450
	beq loc_811A410
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811A410:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_start sub_811A414
sub_811A414:
	push {lr}
	ldr r0, off_811A424 // =off_811A428
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811A424: .word off_811A428
off_811A428: .word sub_811A434+1
	.word sub_811A4DC+1
	.word sub_811A5B4+1
	thumb_func_end sub_811A414

	thumb_local_start
sub_811A434:
	push {r4-r7,lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r4, #0x24
	ldr r7, off_811A4C8 // =byte_20231A0
	ldr r0, off_811A4B4 // =sSubmenu
	ldrb r0, [r0,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	cmp r0, #0x1c
	bne loc_811A448
	ldr r7, off_811A4D0 // =byte_20231A0
loc_811A448:
	ldrb r2, [r5,#4]
	tst r2, r2
	beq loc_811A45C
	mov r4, #0x23
	ldr r7, off_811A4CC // =eGuiSprite2022AA0
	ldr r0, off_811A4B4 // =sSubmenu
	ldrb r0, [r0,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	cmp r0, #0x1c
	bne loc_811A45C
	ldr r7, off_811A4D4 // =eGuiSprite2022AA0
loc_811A45C:
	mov r0, r4
	mov r1, r7
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#5]
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r1, off_811A4B8 // =byte_811A4BC
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	bl sub_800306C
	ldr r1, off_811A4C4 // =off_811A4D8
	ldrb r0, [r5,#4]
	ldrb r0, [r1,r0]
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	bl sub_811A5BC
	ldrb r0, [r5,#4]
	tst r0, r0
	beq loc_811A4AA
	bl sub_811A640
loc_811A4AA:
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811A4DC
	pop {r4-r7,pc}
off_811A4B4: .word sSubmenu
off_811A4B8: .word byte_811A4BC
byte_811A4BC: .byte 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0
off_811A4C4: .word off_811A4D8
off_811A4C8: .word byte_20231A0
off_811A4CC: .word eGuiSprite2022AA0
off_811A4D0: .word byte_20231A0
off_811A4D4: .word eGuiSprite2022AA0
off_811A4D8: .word 0x100
	thumb_func_end sub_811A434

	thumb_local_start
sub_811A4DC:
	push {lr}
	ldr r0, off_811A4F0 // =off_811A4F4
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
off_811A4F0: .word off_811A4F4
off_811A4F4: .word sub_811A4FC+1
	.word sub_811A500+1
	thumb_func_end sub_811A4DC

	thumb_local_start
sub_811A4FC:
	push {lr}
	pop {pc}
	thumb_func_end sub_811A4FC

	thumb_local_start
sub_811A500:
	push {lr}
	ldr r0, off_811A510 // =off_811A514
	ldrb r1, [r5,#7]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811A510: .word off_811A514
off_811A514: .word sub_811A51C+1
	.word sub_811A57C+1
	thumb_func_end sub_811A500

	thumb_local_start
sub_811A51C:
	push {r4-r7,lr}
	mov r7, #0
	mov r6, #0
loc_811A522:
	mov r4, #8
	mul r4, r7
	bl sprite_getCoordinates
	sub r0, #0x20
	sub r1, #9
	add r0, r0, r4
	cmp r0, #0
	blt loc_811A558
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_811A564 // =0x8000
	orr r0, r1
	ldr r1, off_811A568 // =byte_811A56C
	ldrb r2, [r5,#6]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	mov r2, #2
	lsl r2, r2, #0xa
	orr r1, r2
	mov r4, #2
	mul r4, r7
	add r1, r1, r4
	mov r2, #0
	mov r3, #4
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_811A558:
	add r7, #1
	add r6, #1
	cmp r6, #8
	blt loc_811A522
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811A564: .word 0x8000
off_811A568: .word byte_811A56C
byte_811A56C: .byte 0x50, 0xB0, 0x0, 0x0, 0x60, 0xB0, 0x0, 0x0, 0x70, 0xB0, 0x0
	.byte 0x0, 0x80, 0xB0, 0x0, 0x0
	thumb_func_end sub_811A51C

	thumb_local_start
sub_811A57C:
	push {lr}
	mov r0, #0x10
	mov r1, #0
	bl sprite_addCoordinates
	bl sprite_getCoordinates
	cmp r0, #0x3c
	blt loc_811A5A0
	mov r0, #0x3c
	ldr r1, off_811A5A8 // =byte_811A5AC
	ldrb r2, [r5,#6]
	lsl r2, r2, #1
	ldrh r1, [r1,r2]
	bl sprite_setCoordinates
	mov r0, #0
	strb r0, [r5,#7]
loc_811A5A0:
	bl sub_811A51C
	pop {pc}
	.balign 4, 0x00
off_811A5A8: .word byte_811A5AC
byte_811A5AC: .byte 0x26, 0x0, 0x39, 0x0, 0x4C, 0x0, 0x5F, 0x0
	thumb_func_end sub_811A57C

	thumb_local_start
sub_811A5B4:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811A5B4

	thumb_local_start
sub_811A5BC:
	push {lr}
	ldr r3, off_811A5E4 // =dword_811A5FC
	ldrb r0, [r5,#4]
	tst r0, r0
	beq loc_811A5D0
	ldr r3, off_811A5E0 // =byte_811A5EC
	ldrb r0, [r5,#7]
	tst r0, r0
	beq loc_811A5D0
	ldr r3, off_811A5E8 // =byte_811A600
loc_811A5D0:
	ldrb r2, [r5,#6]
	lsl r2, r2, #2
	ldrsh r0, [r3,r2]
	add r2, #2
	ldrsh r1, [r3,r2]
	bl sprite_setCoordinates
	pop {pc}
off_811A5E0: .word byte_811A5EC
off_811A5E4: .word dword_811A5FC
off_811A5E8: .word byte_811A600
byte_811A5EC: .byte 0x3C, 0x0, 0x26, 0x0, 0x3C, 0x0, 0x39, 0x0, 0x3C, 0x0, 0x4C
	.byte 0x0, 0x3C, 0x0, 0x5F, 0x0
dword_811A5FC: .word 0x16002C
byte_811A600: .byte 0xD0, 0xFF, 0x26, 0x0, 0xD0, 0xFF, 0x39, 0x0, 0xD0, 0xFF
	.byte 0x4C, 0x0, 0xD0, 0xFF, 0x5F, 0x0
	thumb_func_end sub_811A5BC

	thumb_func_start sub_811A610
sub_811A610:
	push {r4,r5,lr}
	mov r4, r0
	mov r0, r1
	bl getStructFrom2008450
	beq locret_811A63C
	ldrb r0, [r1]
	mov r2, #8
	tst r0, r2
	bne locret_811A63C
	mov r5, r1
	ldrb r0, [r5,#0xc]
	cmp r4, r0
	beq locret_811A63C
	mov r0, r4
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
locret_811A63C:
	pop {r4,r5,pc}
	.byte 0x0, 0x0
	thumb_func_end sub_811A610

	thumb_local_start
sub_811A640:
	push {r4-r7,lr}
	ldr r7, off_811A664 // =sSubmenu
	ldrb r0, [r7,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	cmp r0, #0x1c
	bne loc_811A652
	ldrb r1, [r5,#6]
	bl sub_811A704
	b locret_811A662
loc_811A652:
	ldr r1, off_811A668 // =dword_811A66C
	ldrb r0, [r7,#0x2] // (sSubmenu.unk_02 - 0x2009a30)
	ldr r0, [r1,r0]
	tst r0, r0
	beq locret_811A662
	ldrb r1, [r5,#6]
	mov lr, pc
	bx r0
locret_811A662:
	pop {r4-r7,pc}
off_811A664: .word sSubmenu
off_811A668: .word dword_811A66C
dword_811A66C: .word 0x0
	.word sub_811A68C+1
	.word sub_811A6A0+1
	.word sub_811A6B4+1
	.word sub_811A6C8+1
	.word sub_811A6DC+1
	.word sub_811A6DC+1
	.word sub_811A6DC+1
	thumb_func_end sub_811A640

	thumb_local_start
sub_811A68C:
	push {lr}
	ldr r4, off_811A698 // =dword_811A69C
	ldrb r0, [r4,r1]
	bl sub_811A718
	pop {pc}
off_811A698: .word dword_811A69C
dword_811A69C: .word 0x151413
	thumb_func_end sub_811A68C

	thumb_local_start
sub_811A6A0:
	push {lr}
	ldr r4, off_811A6AC // =dword_811A6B0
	ldrb r0, [r4,r1]
	bl sub_811A718
	pop {pc}
off_811A6AC: .word dword_811A6B0
dword_811A6B0: .word 0x181716
	thumb_func_end sub_811A6A0

	thumb_local_start
sub_811A6B4:
	push {lr}
	ldr r4, off_811A6C0 // =dword_811A6C4
	ldrb r0, [r4,r1]
	bl sub_811A718
	pop {pc}
off_811A6C0: .word dword_811A6C4
dword_811A6C4: .word 0x1C1B
	thumb_func_end sub_811A6B4

	thumb_local_start
sub_811A6C8:
	push {lr}
	ldr r4, off_811A6D4 // =dword_811A6D8
	ldrb r0, [r4,r1]
	bl sub_811A718
	pop {pc}
off_811A6D4: .word dword_811A6D8
dword_811A6D8: .word 0x1F1E1D
	thumb_func_end sub_811A6C8

	thumb_local_start
sub_811A6DC:
	push {lr}
	cmp r1, #2
	bne loc_811A6F2
	ldrb r2, [r7,#0x1b]
	mov r3, #2
	tst r2, r3
	bne loc_811A6F2
	add r2, r1, #1
	ldr r4, off_811A6FC // =dword_811A700
	ldrb r0, [r4,r2]
	b loc_811A6F6
loc_811A6F2:
	ldr r4, off_811A6FC // =dword_811A700
	ldrb r0, [r4,r1]
loc_811A6F6:
	bl sub_811A718
	pop {pc}
off_811A6FC: .word dword_811A700
dword_811A700: .word 0x302F1A19
	thumb_func_end sub_811A6DC

	thumb_local_start
sub_811A704:
	push {lr}
	ldr r4, off_811A710 // =dword_811A714
	ldrb r0, [r4,r1]
	bl sub_811A718
	pop {pc}
off_811A710: .word dword_811A714
dword_811A714: .word 0x666564
	thumb_func_end sub_811A704

	thumb_local_start
sub_811A718:
	push {r4-r7,lr}
	ldr r2, off_811A73C // =off_811A740
	lsl r3, r1, #2
	ldr r2, [r2,r3]
	ldr r4, off_811A750 // =byte_811A754
	ldr r3, [r4,r3]
	mov r4, #8
	mov r5, #1
	ldr r6, off_811A764 // =dword_86B7AE0
	mov r7, #0
	mov r1, r0
	ldr r0, off_811A738 // =eTextScript201BA20
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811A738: .word eTextScript201BA20
off_811A73C: .word off_811A740
off_811A740: .word byte_2017A00
	.word unk_2017C00
	.word unk_2017E00
	.word unk_2018000
off_811A750: .word byte_811A754
byte_811A754: .byte 0x0, 0xA, 0x1, 0x6, 0x0, 0xC, 0x1, 0x6, 0x0, 0xE, 0x1, 0x6, 0x0, 0x10
	.byte 0x1, 0x6
off_811A764: .word dword_86B7AE0
	thumb_func_end sub_811A718

	thumb_func_start sub_811A768
sub_811A768:
	push {r4,r5,lr}
	mov r4, #1
	mov r5, r1
	mov r1, #0
	bl sprite_addCoordinates
	bl sprite_getCoordinates
	ldr r1, dword_811A788 // =0xffffffd0
	cmp r0, r1
	bge loc_811A784
	mov r0, #8
	strb r0, [r5,#8]
	mov r4, #0
loc_811A784:
	mov r0, r4
	pop {r4,r5,pc}
dword_811A788: .word 0xFFFFFFD0
	thumb_func_end sub_811A768

	thumb_func_start sub_811A78C
sub_811A78C:
	push {lr}
	ldr r0, off_811A79C // =off_811A7A0
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811A79C: .word off_811A7A0
off_811A7A0: .word sub_811A7AC+1
	.word sub_811A818+1
	.word sub_811A830+1
	thumb_func_end sub_811A78C

	thumb_local_start
sub_811A7AC:
	push {lr}
	mov r4, #0x23
	strb r4, [r5]
	ldr r1, off_811A804 // =eGuiSprite2022AA0
	mov r0, #0x2a
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811A800 // =0x1d0
	bl sub_800306C
	mov r0, #0xa
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	ldrb r2, [r5,#4]
	ldr r1, off_811A808 // =byte_811A810
	ldrb r0, [r1,r2]
	ldr r1, off_811A80C // =byte_811A813
	ldrb r1, [r1,r2]
	mov r2, #6
	bl sub_811A838
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811A818
	pop {pc}
off_811A800: .word 0x1D0
off_811A804: .word eGuiSprite2022AA0
off_811A808: .word byte_811A810
off_811A80C: .word byte_811A813
byte_811A810: .byte 0xBC, 0xB0, 0xAC
byte_811A813: .byte 0x40, 0x48, 0x48, 0x0, 0x0
	thumb_func_end sub_811A7AC

	thumb_local_start
sub_811A818:
	push {r4,lr}
	mov r4, #0x23
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_811A826
	mov r4, #1
loc_811A826:
	strb r4, [r5]
	bl sprite_update
	pop {r4,pc}
	.byte 0, 0
	thumb_func_end sub_811A818

	thumb_local_start
sub_811A830:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811A830

	thumb_local_start
sub_811A838:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811A852
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811A852:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811A838

	thumb_func_start sub_811A858
sub_811A858:
	push {lr}
	ldr r0, off_811A868 // =off_811A86C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811A868: .word off_811A86C
off_811A86C: .word sub_811A878+1
	.word sub_811A8D0+1
	.word sub_811A8EC+1
	thumb_func_end sub_811A858

	thumb_local_start
sub_811A878:
	push {lr}
	mov r4, #0x23
	strb r4, [r5]
	ldr r1, off_811A8CC // =eGuiSprite2022FA0
	mov r0, #0x2b
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	mov r1, #6
	bl sub_811A940
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811A8C8 // =0x1d0
	bl sub_800306C
	mov r0, #0xa
	bl sub_800304A
	mov r0, #4
	bl sub_8003060
	mov r0, #0x78
	mov r1, #0x50
	mov r2, #6
	bl sub_811A8F4
	mov r0, #0
	mov r1, #6
	bl sub_811A914
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811A8D0
	pop {pc}
off_811A8C8: .word 0x1D0
off_811A8CC: .word eGuiSprite2022FA0
	thumb_func_end sub_811A878

	thumb_local_start
sub_811A8D0:
	push {r4,r7,lr}
	ldrb r4, [r5]
	mov r7, #2
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_811A8E2
	bic r4, r7
	b loc_811A8E4
loc_811A8E2:
	orr r4, r7
loc_811A8E4:
	strb r4, [r5]
	bl sprite_update
	pop {r4,r7,pc}
	thumb_func_end sub_811A8D0

	thumb_local_start
sub_811A8EC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811A8EC

	thumb_local_start
sub_811A8F4:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811A90E
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811A90E:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811A8F4

	thumb_func_start sub_811A914
sub_811A914:
	push {r4-r7,lr}
	mov r4, r0
	mov r0, r1
	bl getStructFrom2008450
	mov r5, r1
	lsl r4, r4, #2
	ldr r1, off_811A934 // =byte_811A938
	ldr r0, [r1,r4]
	bl sub_8002FA6
	ldrb r0, [r5]
	mov r1, #8
	tst r0, r1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811A934: .word byte_811A938
byte_811A938: .byte 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0, 0x40
	thumb_func_end sub_811A914

	thumb_func_start sub_811A940
sub_811A940:
	push {r4-r7,lr}
	mov r4, r0
	mov r0, r1
	bl getStructFrom2008450
	mov r5, r1
	mov r0, r4
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	cmp r4, #1
	bne locret_811A964
	mov r0, #0
	bl sub_8002FA6
locret_811A964:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811A940

	thumb_func_start sub_811A968
sub_811A968:
	push {r4-r7,lr}
	bl getStructFrom2008450
	mov r5, r1
	bl sub_804668A
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811A968

	thumb_func_start sub_811A978
sub_811A978:
	push {lr}
	ldr r0, off_811A988 // =off_811A98C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811A988: .word off_811A98C
off_811A98C: .word sub_811A998+1
	.word sub_811AA14+1
	.word sub_811AB0C+1
	thumb_func_end sub_811A978

	thumb_local_start
sub_811A998:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x26
	ldr r1, off_811A9F0 // =unk_202488C
	bl loc_8002774 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, dword_811A9EC // =0x0
	bl sub_800306C
	bl sub_811AB14
	mov r0, #4
	bl sub_8003060
	ldr r2, off_811A9F4 // =byte_811A9F8
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldrh r0, [r2,r1]
	add r1, #2
	ldrh r1, [r2,r1]
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811AA14
	pop {pc}
dword_811A9EC: .word 0x0
off_811A9F0: .word unk_202488C
off_811A9F4: .word byte_811A9F8
byte_811A9F8: .byte 0x3D, 0x0, 0x20, 0x0, 0x84, 0x0, 0x20, 0x0, 0xCB, 0x0, 0x20
	.byte 0x0, 0x2A, 0x0, 0x62, 0x0, 0x2A, 0x0, 0x5A, 0x0
	.word dword_811AA10
dword_811AA10: .word 0x100
	thumb_func_end sub_811A998

	thumb_local_start
sub_811AA14:
	push {lr}
	ldr r1, off_811AA40 // =off_811AA44
	ldrb r0, [r5,#9]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	ldrb r0, [r5,#4]
	thumb_func_end sub_811AA14

	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_811AA3A
	strb r0, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sub_811AB14
loc_811AA3A:
	bl sprite_update
	pop {pc}
off_811AA40: .word off_811AA44
off_811AA44: .word sub_811AA4C+1
	.word sub_811AAB8+1
	thumb_local_start
sub_811AA4C:
	push {r4-r7,lr}
	mov r0, #4
	strb r0, [r5,#9]
	ldrb r1, [r5,#3]
	mov r0, #0
	sub r1, r1, r0
	lsl r3, r1, #2
	ldr r0, off_811AA8C // =off_811AA90
	ldr r2, [r0,r3]
	ldr r0, off_811AA9C // =byte_811AAA0
	ldr r3, [r0,r3]
	mov r0, r1
	bl sub_8137884
	lsr r0, r0, #4
	bl sub_804A24C
	mov r4, #8
	mov r5, #1
	ldr r6, off_811AAAC // =dword_86B7AE0
	mov r7, #0
	ldr r1, off_811AAB4 // =sub_3006B94+1
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.byte 0, 0
	.word unk_20347D8
	.word word_2023FA0
	.word TextScript86CF4AC
off_811AA8C: .word off_811AA90
off_811AA90: .word unk_2017E00
	.word unk_2018000
	.word unk_2018200
off_811AA9C: .word byte_811AAA0
byte_811AAA0: .byte 0x0, 0x6, 0x1, 0x6, 0x0, 0x8, 0x1, 0x6, 0x0, 0xA, 0x1, 0x6
off_811AAAC: .word dword_86B7AE0
	.word byte_20065C0
off_811AAB4: .word sub_3006B94+1
	thumb_func_end sub_811AA4C

	thumb_local_start
sub_811AAB8:
	push {r4-r7,lr}
	ldr r4, off_811AAE8 // =byte_811AAEC
	ldr r6, off_811AAFC // =byte_811AB00
	ldrb r0, [r5,#3]
	mov r1, #0
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r6, [r6,r0]
	ldr r4, [r4,r0]
	mov r7, #8
loc_811AACC:
	mov r0, r4
	mov r1, r6
	ldr r2, dword_811AAF8 // =0x0
	mov r3, #5
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, #8
	lsl r0, r0, #0x10
	add r4, r4, r0
	mov r0, #2
	add r6, r6, r0
	sub r7, #1
	bgt loc_811AACC
	pop {r4-r7,pc}
off_811AAE8: .word byte_811AAEC
byte_811AAEC: .byte 0x18, 0x80, 0x1D, 0x0, 0x18, 0x80, 0x64, 0x0, 0x18, 0x80
	.byte 0xAB, 0x0
dword_811AAF8: .word 0x0
off_811AAFC: .word byte_811AB00
byte_811AB00: .byte 0x30, 0xB8, 0x0, 0x0, 0x40, 0xB8, 0x0, 0x0, 0x50, 0xB8, 0x0
	.byte 0x0
	thumb_func_end sub_811AAB8

	thumb_local_start
sub_811AB0C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811AB0C

	thumb_local_start
sub_811AB14:
	push {lr}
	ldr r0, off_811AB24 // =off_811AB28
	ldrb r1, [r5,#4]
	ldr r0, [r0,r1]
	bl sub_800304A
	pop {pc}
	.balign 4, 0x00
off_811AB24: .word off_811AB28
off_811AB28: .word 0x100
	thumb_func_end sub_811AB14

	push {r4,r5,lr}
	mov r4, #0
	bl getStructFrom2008450
	beq loc_811AB44
	mov r5, r1
	bl sprite_getFrameParameters
	mov r1, #0xc0
	tst r0, r1
	beq loc_811AB44
	mov r4, #1
loc_811AB44:
	mov r0, r4
	tst r0, r0
	pop {r4,r5,pc}
	.balign 4, 0x00
	push {lr}
	bl getStructFrom2008450
	beq locret_811AB58
	mov r0, #8
	strb r0, [r1,#8]
locret_811AB58:
	pop {pc}
	.balign 4, 0x00
	thumb_func_start sub_811AB5C
sub_811AB5C:
	push {lr}
	ldr r0, off_811AB6C // =off_811AB70
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811AB6C: .word off_811AB70
off_811AB70: .word sub_811AB7C+1
	.word sub_811ABC8+1
	.word sub_811ACFC+1
	thumb_func_end sub_811AB5C

	thumb_local_start
sub_811AB7C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #8
	ldr r1, off_811ABC4 // =unk_2024E8C
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, dword_811ABC0 // =0x0
	bl sub_800306C
	mov r0, #0
	bl sub_800304A
	mov r0, #2
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811ABC8
	pop {pc}
dword_811ABC0: .word 0x0
off_811ABC4: .word unk_2024E8C
	thumb_func_end sub_811AB7C

	thumb_local_start
sub_811ABC8:
	push {lr}
	mov r0, #0x23
	ldrh r1, [r5,#0xc]
	cmp r1, #0x80
	bne loc_811ABD4
	mov r0, #1
loc_811ABD4:
	strb r0, [r5]
	cmp r0, #1
	beq loc_811ABE4
	ldr r1, off_811ABEC // =off_811ABF0
	ldrb r0, [r5,#9]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_811ABE4:
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811ABEC: .word off_811ABF0
off_811ABF0: .word sub_811ABF8+1
	.word sub_811ACA8+1
	thumb_func_end sub_811ABC8

	thumb_local_start
sub_811ABF8:
	push {r4-r7,lr}
	mov r0, #4
	strb r0, [r5,#9]
	ldr r4, off_811AC90 // =unk_202714C
	bl sub_803DD60
	tst r0, r0
	beq loc_811AC0A
	ldr r4, off_811AC8C // =unk_20270EC
loc_811AC0A:
	ldrh r1, [r5,#0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	tst r1, r1
	bne loc_811AC18
	ldr r4, off_811AC98 // =byte_811AC9C
	b loc_811AC40
loc_811AC18:
	ldrb r1, [r5,#3]
	mov r0, #0
	cmp r0, r1
	bne loc_811AC40
	ldrh r1, [r5,#0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	sub r1, #1
	push {r1}
	mov r0, r1
	bl sub_8137884
	cmp r0, #0x22
	pop {r1}
	blt loc_811AC38
	mov r1, #2
loc_811AC38:
	mov r0, r1
	bl sub_804A24C
	mov r4, r0
loc_811AC40:
	ldrb r1, [r5,#3]
	mov r0, #0
	sub r1, r1, r0
	lsl r3, r1, #2
	ldr r0, off_811AC68 // =off_811AC6C
	ldr r2, [r0,r3]
	ldr r0, off_811AC78 // =byte_811AC7C
	ldr r3, [r0,r3]
	mov r0, r4
	mov r4, #8
	mov r5, #1
	ldr r6, off_811AC88 // =dword_86B7AE0
	mov r7, #0
	ldr r1, off_811AC94 // =sub_3006B94+1
	mov lr, pc
	bx r1
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word TextScript86CF4AC
off_811AC68: .word off_811AC6C
off_811AC6C: .word unk_2017C00
	.word unk_2017E00
	.word unk_2018000
off_811AC78: .word byte_811AC7C
byte_811AC7C: .byte 0x0, 0x22, 0x1, 0x6, 0x0, 0x24, 0x1, 0x6, 0x0, 0x26, 0x1, 0x6
off_811AC88: .word dword_86B7AE0
off_811AC8C: .word unk_20270EC
off_811AC90: .word unk_202714C
off_811AC94: .word sub_3006B94+1
off_811AC98: .word byte_811AC9C
byte_811AC9C: .byte 0x98, 0x98, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xE6, 0x0, 0x0, 0x0
	thumb_func_end sub_811ABF8

	thumb_local_start
sub_811ACA8:
	push {r4-r7,lr}
	bl sprite_getCoordinates
	sub r0, #0x20
	sub r1, #8
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r4, dword_811ACE4 // =0x8000
	orr r4, r0
	ldr r6, off_811ACEC // =byte_811ACF0
	ldrb r0, [r5,#3]
	mov r1, #0
	sub r0, r0, r1
	lsl r0, r0, #2
	ldr r6, [r6,r0]
	mov r7, #8
loc_811ACC8:
	mov r0, r4
	mov r1, r6
	ldr r2, dword_811ACE8 // =0x0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, #8
	lsl r0, r0, #0x10
	add r4, r4, r0
	mov r0, #2
	add r6, r6, r0
	sub r7, #1
	bgt loc_811ACC8
	pop {r4-r7,pc}
dword_811ACE4: .word 0x8000
dword_811ACE8: .word 0x0
off_811ACEC: .word byte_811ACF0
byte_811ACF0: .byte 0x10, 0xB9, 0x0, 0x0, 0x20, 0xB9, 0x0, 0x0, 0x30, 0xB9, 0x0
	.byte 0x0
	thumb_func_end sub_811ACA8

	thumb_local_start
sub_811ACFC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811ACFC

	thumb_func_start sub_811AD04
sub_811AD04:
	push {r4-r7,lr}
	mov r4, r0
	mov r0, r2
	bl getStructFrom2008450
	beq locret_811AD16
	strh r4, [r1,#0xc]
	mov r0, #0
	strb r0, [r1,#9]
locret_811AD16:
	pop {r4-r7,pc}
	thumb_func_end sub_811AD04

	thumb_func_start sub_811AD18
sub_811AD18:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811AD34
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811AD34:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_811AD18

	thumb_func_start sub_811AD38
sub_811AD38:
	push {lr}
	ldr r0, off_811AD48 // =off_811AD4C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811AD48: .word off_811AD4C
off_811AD4C: .word sub_811AD58+1
	.word sub_811ADC0+1
	.word sub_811AE54+1
	thumb_func_end sub_811AD38

	thumb_local_start
sub_811AD58:
	push {r4,lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x68
	ldr r1, off_811ADB0 // =eGuiSprite2022FA0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811ADAC // =0xa0
	bl sub_800306C
	mov r0, #2
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	ldrb r2, [r5,#3]
	ldr r1, off_811ADB4 // =byte_811ADB8
	lsl r3, r2, #2
	ldrh r0, [r1,r3]
	add r3, #2
	ldrh r1, [r1,r3]
	bl sub_811AE5C
	bl sub_811ADC0
	pop {r4,pc}
off_811ADAC: .word 0xA0
off_811ADB0: .word eGuiSprite2022FA0
off_811ADB4: .word byte_811ADB8
byte_811ADB8: .byte 0x7E, 0x0, 0x24, 0x0, 0x7E, 0x0, 0x48, 0x0
	thumb_func_end sub_811AD58

	thumb_local_start
sub_811ADC0:
	push {lr}
	ldr r0, off_811ADF0 // =off_811ADF4
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	ldrb r0, [r5]
	thumb_func_end sub_811ADC0

	mov r1, #2
	tst r0, r1
	beq locret_811ADEC
	bl sub_811B104
	bl sub_811B14C
	bl sub_811B194
	bl sub_811B098
	bl sub_811B028
locret_811ADEC:
	pop {pc}
	.byte 0, 0
off_811ADF0: .word off_811ADF4
off_811ADF4: .word sub_811AE00+1
	.word sub_811AE04+1
	.word sub_811AE2C+1
	thumb_local_start
sub_811AE00:
	push {lr}
	pop {pc}
	thumb_func_end sub_811AE00

	thumb_local_start
sub_811AE04:
	push {lr}
	ldrb r2, [r5,#0x10]
	sub r2, #0x30
	cmp r2, #0x40
	bgt loc_811AE10
	mov r2, #0x40
loc_811AE10:
	strb r2, [r5,#0x10]
	mov r0, #0
	mov r1, #0x40
	bl sprite_setScaleParameters
	ldrb r0, [r5,#0x10]
	cmp r0, #0x40
	bne locret_811AE28
	bl sprite_makeUnscalable
	mov r0, #0
	strb r0, [r5,#9]
locret_811AE28:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811AE04

	thumb_local_start
sub_811AE2C:
	push {lr}
	ldrb r2, [r5,#0x10]
	add r2, #0x30
	cmp r2, #0xff
	blt loc_811AE38
	mov r2, #0xff
loc_811AE38:
	strb r2, [r5,#0x10]
	mov r0, #0
	mov r1, #0x40
	bl sprite_setScaleParameters
	ldrb r0, [r5,#0x10]
	cmp r0, #0xff
	bne locret_811AE50
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #1
	strb r0, [r5]
locret_811AE50:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811AE2C

	thumb_local_start
sub_811AE54:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811AE54

	thumb_func_start sub_811AE5C
sub_811AE5C:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811AE76
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811AE76:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811AE5C

	thumb_func_start sub_811AE7C
sub_811AE7C:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_811AEF4
	mov r5, r1
	mov r1, #1
	ldr r0, [sp]
	tst r0, r0
	beq loc_811AEF2
	ldr r0, [sp,#4]
	lsl r0, r0, #2
	ldr r1, off_811AEF8 // =off_811AEFC
	ldr r0, [r1,r0]
	ldrb r0, [r0]
	lsr r6, r0, #4
	mov r4, #0xf
	and r4, r0
	ldr r1, off_811AF04 // =off_811AF08
	lsl r4, r4, #2
	ldr r0, [r1,r4]
	ldr r1, off_811AF38 // =byte_811AF3C
	ldr r2, [sp,#4]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r2, off_811AF44 // =0x80
	bl sub_8000AC8
	ldr r1, off_811AF48 // =off_811AF4C
	ldr r0, [r1,r4]
	ldr r1, off_811AF7C // =off_811AF80
	ldr r2, [sp,#4]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	mov r2, #0x20
	bl sub_8000AC8
	ldr r1, off_811AF88 // =off_811AF8C
	lsl r6, r6, #2
	ldr r0, [r1,r6]
	ldr r1, off_811AFB8 // =byte_811AFBC
	ldr r2, [sp,#4]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	ldr r2, off_811AFD4 // =0x200
	bl sub_8000AC8
	ldr r0, off_811AFD0 // =off_86DC3F8
	ldr r1, off_811AFC4 // =off_811AFC8
	ldr r2, [sp,#4]
	lsl r2, r2, #2
	ldr r1, [r1,r2]
	mov r2, #0x20
	bl sub_8000AC8
	mov r1, #0x23
loc_811AEF2:
	strb r1, [r5]
loc_811AEF4:
	add sp, sp, #8
	pop {r4-r7,pc}
off_811AEF8: .word off_811AEFC
off_811AEFC: .word byte_2023BC0
	.word byte_2023BC8
off_811AF04: .word off_811AF08
off_811AF08: .word byte_86C14A0
	.word byte_86C1520
	.word byte_86C15A0
	.word byte_86C1620
	.word byte_86C16A0
	.word byte_86C1720
	.word byte_86C1BA0
	.word byte_86C1C20
	.word byte_86C1CA0
	.word byte_86C1D20
	.word byte_86C1DA0
	.word byte_86C1EA0
off_811AF38: .word byte_811AF3C
byte_811AF3C: .byte 0x0, 0xE, 0x1, 0x6, 0x0, 0xF, 0x1, 0x6
off_811AF44: .word 0x80
off_811AF48: .word off_811AF4C
off_811AF4C: .word byte_86C0B20
	.word byte_86C0B60
	.word byte_86C0BA0
	.word byte_86C0BE0
	.word byte_86C0C20
	.word byte_86C0C60
	.word byte_86C18E0
	.word byte_86C1920
	.word byte_86C1960
	.word byte_86C19A0
	.word byte_86C19E0
	.word byte_86C1A60
off_811AF7C: .word off_811AF80
off_811AF80: .word byte_30015B0
	.word byte_30015D0
off_811AF88: .word off_811AF8C
off_811AF8C: .word unk_202CA00
	.word unk_202CC00
	.word byte_202CE00
	.word byte_202D000
	.word byte_202D200
	.word byte_202D400
	.word byte_202D600
	.word byte_202D800
	.word byte_202DA00
	.word byte_202DC00
	.word unk_202DE00
off_811AFB8: .word byte_811AFBC
byte_811AFBC: .byte 0x0, 0x10, 0x1, 0x6, 0x0, 0x12, 0x1, 0x6
off_811AFC4: .word off_811AFC8
off_811AFC8: .word byte_30015F0
	.word byte_3001610
off_811AFD0: .word off_86DC3F8
off_811AFD4: .word 0x200
	thumb_func_end sub_811AE7C

	push {r4-r7,lr}
	bl getStructFrom2008450
	beq locret_811AFFA
	mov r5, r1
	mov r0, #0x23
	strb r0, [r5]
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x40
	mov r2, #0x40
	strh r2, [r5,#0x10]
	bl sprite_setScaleParameters
	mov r0, #8
	strb r0, [r5,#9]
locret_811AFFA:
	pop {r4-r7,pc}
	push {r4-r7,lr}
	bl getStructFrom2008450
	beq locret_811B00E
	mov r5, r1
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #4
	strb r0, [r5,#9]
locret_811B00E:
	pop {r4-r7,pc}
	thumb_func_start sub_811B010
sub_811B010:
	push {r4-r7,lr}
	bl getStructFrom2008450
	beq locret_811B026
	mov r5, r1
	ldrb r0, [r5,#0x11]
	mov r1, #3
	tst r1, r0
	beq locret_811B026
	bl sprite_makeUnscalable
locret_811B026:
	pop {r4-r7,pc}
	thumb_func_end sub_811B010

	thumb_local_start
sub_811B028:
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, off_811B070 // =off_811B074
	ldrb r1, [r5,#3]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0]
	lsr r1, r0, #4
	mov r2, #0xf
	and r0, r2
	bl sprite_getCoordinates
	str r0, [sp]
	str r1, [sp,#4]
	ldr r1, off_811B088 // =word_811B08C
	mov r2, #0
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	ldr r2, [sp]
	add r0, r0, r2
	ldr r2, [sp,#4]
	add r1, r1, r2
	ldrb r2, [r5,#3]
	lsl r3, r2, #2
	ldr r5, off_811B07C // =off_811B080
	ldr r5, [r5,r3]
	ldr r2, off_811B090 // =dword_811B094
	lsr r3, r3, #2
	ldrb r2, [r2,r3]
	mov r3, r5
	bl sub_8132A50
	add sp, sp, #8
	pop {r4-r7,pc}
	.byte 0, 0
off_811B070: .word off_811B074
off_811B074: .word byte_2023BC0
	.word byte_2023BC8
off_811B07C: .word off_811B080
off_811B080: .word 0x480
	.word 0x490
off_811B088: .word word_811B08C
word_811B08C: .hword 0x24
	.hword 0xFFEA
off_811B090: .word dword_811B094
dword_811B094: .word 0x605
	thumb_func_end sub_811B028

	thumb_local_start
sub_811B098:
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, off_811B0DC // =byte_811B0E0
	ldrb r1, [r5,#3]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r0, [r0]
	lsr r1, r0, #4
	mov r2, #0xf
	and r0, r2
	bl sprite_getCoordinates
	str r0, [sp]
	str r1, [sp,#4]
	ldr r1, off_811B0F4 // =word_811B0F8
	mov r2, #0
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	ldr r2, [sp]
	add r0, r0, r2
	ldr r2, [sp,#4]
	add r1, r1, r2
	ldrb r2, [r5,#3]
	lsl r3, r2, #2
	ldr r5, off_811B0E8 // =byte_811B0EC
	ldr r5, [r5,r3]
	ldr r2, off_811B0FC // =dword_811B100
	lsr r3, r3, #2
	ldrb r2, [r2,r3]
	bl sub_8132A9E
	add sp, sp, #8
	pop {r4-r7,pc}
off_811B0DC: .word byte_811B0E0
byte_811B0E0: .byte 0xC0, 0x3B, 0x2, 0x2, 0xC8, 0x3B, 0x2, 0x2
off_811B0E8: .word byte_811B0EC
byte_811B0EC: .byte 0x70, 0x4, 0x0, 0x0, 0x78, 0x4, 0x0, 0x0
off_811B0F4: .word word_811B0F8
word_811B0F8: .hword 0xFF93
	.byte 0xF8, 0xFF
off_811B0FC: .word dword_811B100
dword_811B100: .word 0x403
	thumb_func_end sub_811B098

	thumb_local_start
sub_811B104:
	push {r4-r7,lr}
	sub sp, sp, #8
	bl sprite_getCoordinates
	str r0, [sp]
	str r1, [sp,#4]
	ldr r1, off_811B144 // =word_811B148
	mov r2, #0
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	ldr r2, [sp]
	add r0, r0, r2
	ldr r2, [sp,#4]
	add r1, r1, r2
	ldrb r2, [r5,#3]
	lsl r3, r2, #2
	ldr r5, off_811B138 // =byte_811B13C
	ldr r5, [r5,r3]
	mov r2, #0
	mov r4, #5
	bl sub_81329C8
	add sp, sp, #8
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_811B138: .word byte_811B13C
byte_811B13C: .byte 0x0, 0x4, 0x0, 0x0, 0x40, 0x4, 0x0, 0x0
off_811B144: .word word_811B148
word_811B148: .hword 0xFFA8
	.byte 0xFB, 0xFF
	thumb_func_end sub_811B104

	thumb_local_start
sub_811B14C:
	push {r4-r7,lr}
	sub sp, sp, #8
	bl sprite_getCoordinates
	str r0, [sp]
	str r1, [sp,#4]
	ldr r1, off_811B18C // =word_811B190
	mov r2, #0
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	ldr r2, [sp]
	add r0, r0, r2
	ldr r2, [sp,#4]
	add r1, r1, r2
	ldrb r2, [r5,#3]
	lsl r3, r2, #2
	ldr r5, off_811B180 // =byte_811B184
	ldr r5, [r5,r3]
	mov r2, #1
	mov r4, #9
	bl sub_81329C8
	add sp, sp, #8
	pop {r4-r7,pc}
	.byte 0x0, 0x0
off_811B180: .word byte_811B184
byte_811B184: .byte 0x10, 0x4, 0x0, 0x0, 0x50, 0x4, 0x0, 0x0
off_811B18C: .word word_811B190
word_811B190: .hword 0xFFFE
	.byte 0xFB, 0xFF
	thumb_func_end sub_811B14C

	thumb_local_start
sub_811B194:
	push {r4-r7,lr}
	sub sp, sp, #8
	bl sprite_getCoordinates
	str r0, [sp]
	str r1, [sp,#4]
	ldr r1, off_811B1E4 // =word_811B1E8
	mov r2, #0
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	ldr r2, [sp]
	add r0, r0, r2
	ldr r2, [sp,#4]
	add r1, r1, r2
	ldrb r2, [r5,#3]
	lsl r3, r2, #2
	ldr r5, off_811B1CC // =byte_811B1D0
	ldr r5, [r5,r3]
	ldr r2, off_811B1D8 // =byte_811B1DC
	ldr r3, [r2,r3]
	ldrh r3, [r3]
	mov r2, #0
	bl sub_8132A14
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811B1CC: .word byte_811B1D0
byte_811B1D0: .byte 0x30, 0x4, 0x0, 0x0, 0x30, 0x4, 0x0, 0x0
off_811B1D8: .word byte_811B1DC
byte_811B1DC: .byte 0xA0, 0x3B, 0x2, 0x2, 0xB0, 0x3B, 0x2, 0x2
off_811B1E4: .word word_811B1E8
word_811B1E8: .hword 0xFFA4
	.byte 0xF2, 0xFF
	thumb_func_end sub_811B194

	thumb_func_start sub_811B1EC
sub_811B1EC:
	push {lr}
	ldr r0, off_811B1FC // =off_811B200
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811B1FC: .word off_811B200
off_811B200: .word sub_811B20C+1
	.word sub_811B284+1
	.word sub_811B290+1
	thumb_func_end sub_811B1EC

	thumb_local_start
sub_811B20C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #9
	ldrb r2, [r5,#4]
	lsl r2, r2, #2
	ldr r1, off_811B274 // =off_811B278
	ldr r1, [r1,r2]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	tst r0, r0
	beq loc_811B232
	mov r0, #2
	ldr r1, off_811B280 // =unk_2037780
	ldrb r1, [r1,#0xc] // (byte_203778C - 0x2037780)
	tst r1, r1
	bne loc_811B232
	mov r0, #1
loc_811B232:
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811B270 // =0x130
	bl sub_800306C
	mov r0, #2
	bl sub_800304A
	mov r0, #5
	bl sub_8003060
	bl sub_811B298
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#0xc]
	bl sub_811B284
	pop {pc}
	.byte 0, 0
off_811B270: .word 0x130
off_811B274: .word off_811B278
off_811B278: .word unk_2020484
	.word unk_202458C
off_811B280: .word unk_2037780
	thumb_func_end sub_811B20C

	thumb_local_start
sub_811B284:
	push {lr}
	bl sub_811B298
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811B284

	thumb_local_start
sub_811B290:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811B290

	thumb_local_start
sub_811B298:
	push {r7,lr}
	ldr r7, off_811B2E0 // =off_811B2E4
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r7, [r7,r0]
	ldrb r0, [r5,#4]
	tst r0, r0
	beq loc_811B2C8
	ldrb r0, [r5,#0xc]
	ldrb r1, [r7,#0xc]
	cmp r0, r1
	beq loc_811B2C8
	mov r0, #2
	ldrb r1, [r7,#0xc]
	strb r1, [r5,#0xc]
	tst r1, r1
	bne loc_811B2BC
	mov r0, #1
loc_811B2BC:
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_811B2C8:
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r2, off_811B2EC // =off_811B2F0
	ldr r2, [r2,r0]
	ldrb r1, [r7,#0xc]
	lsl r1, r1, #2
	ldr r0, [r2,r1]
	mov r1, #0x20
	bl sprite_setCoordinates
	pop {r7,pc}
	.byte 0, 0
off_811B2E0: .word off_811B2E4
off_811B2E4: .word sSubmenu
	.word unk_2037780
off_811B2EC: .word off_811B2F0
off_811B2F0: .word off_811B2F8
	.word byte_811B304
off_811B2F8: .word 0x30
	.word 0x78
	.word 0xC0
byte_811B304: .byte 0xE, 0x0, 0x0, 0x0, 0x3D, 0x0, 0x0, 0x0, 0x84, 0x0, 0x0, 0x0, 0xCB, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_811B298

	thumb_func_start sub_811B314
sub_811B314:
	push {r4,r5,lr}
	mov r4, r1
	bl getStructFrom2008450
	beq locret_811B336
	ldrb r0, [r1]
	mov r2, #8
	tst r0, r2
	bne locret_811B336
	mov r5, r1
	mov r0, r4
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
locret_811B336:
	pop {r4,r5,pc}
	thumb_func_end sub_811B314

	thumb_func_start sub_811B338
sub_811B338:
	push {lr}
	ldr r6, off_811B358 // =sSubmenu
	ldr r0, off_811B348 // =off_811B34C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811B348: .word off_811B34C
off_811B34C: .word sub_811B35C+1
	.word sub_811B3B0+1
	.word sub_811B3EC+1
off_811B358: .word sSubmenu
	thumb_func_end sub_811B338

	thumb_local_start
sub_811B35C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x14
	ldr r1, off_811B3AC // =unk_2026A00
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, off_811B3A8 // =0x210
	bl sub_800306C
	mov r0, #2
	bl sub_8003060
	mov r0, #0xa
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x20
	mov r1, #0x50
	bl sprite_setCoordinates
	bl sub_811B3B0
	pop {pc}
off_811B3A8: .word 0x210
off_811B3AC: .word unk_2026A00
	thumb_func_end sub_811B35C

	thumb_local_start
sub_811B3B0:
	push {lr}
	ldr r0, off_811B3C4 // =off_811B3C8
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811B3C4: .word off_811B3C8
off_811B3C8: .word sub_811B3CC+1
	thumb_func_end sub_811B3B0

	thumb_local_start
sub_811B3CC:
	push {lr}
	ldr r0, off_811B3DC // =byte_811B3E0
	ldrh r1, [r6,#0x26]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_8002FA6
	pop {pc}
off_811B3DC: .word byte_811B3E0
byte_811B3E0: .byte 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0xA
	thumb_func_end sub_811B3CC

	thumb_local_start
sub_811B3EC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811B3EC

	thumb_func_start sub_811B3F4
sub_811B3F4:
	push {lr}
	ldr r0, off_811B404 // =jt_811B408
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811B404: .word jt_811B408
jt_811B408: .word sub_811B414+1
	.word sub_811B45C+1
	.word sub_811B464+1
	thumb_func_end sub_811B3F4

	thumb_local_start
sub_811B414:
	push {r4,lr}
	mov r0, #1
	strb r0, [r5]
	mov r0, #0x2c
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	bl sub_80101F8
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811B458 // =0xc0
	bl sub_800306C
	mov r0, #6
	bl sub_800304A
	mov r0, #4
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811B45C
	pop {r4,pc}
off_811B458: .word 0xC0
	thumb_func_end sub_811B414

	thumb_local_start
sub_811B45C:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811B45C

	thumb_local_start
sub_811B464:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811B464

	thumb_func_start sub_811B46C
sub_811B46C:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811B486
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811B486:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811B46C

	thumb_func_start sub_811B48C
sub_811B48C:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_811B4A6
	mov r0, #0x23
	ldr r2, [sp]
	tst r2, r2
	bne loc_811B4A4
	mov r0, #1
loc_811B4A4:
	strb r0, [r1]
loc_811B4A6:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811B48C

	thumb_func_start sub_811B4AC
sub_811B4AC:
	push {lr}
	ldr r0, off_811B4BC // =loc_811B4C0
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811B4BC: .word loc_811B4C0
	thumb_func_end sub_811B4AC

loc_811B4C0:
	push {r0,r2,r3,r6,r7}
	lsr r1, r2, #0x20
	push {r0,r4-r6,lr}
	lsr r1, r2, #0x20
	.word sub_811B6D8+1
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x25
	ldr r1, off_811B554 // =unk_2024290
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_811B52C // =off_811B530
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	ldrb r0, [r5,#4]
	mov r1, #0
	add r0, r0, r1
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
	mov r0, #0xb0
	ldr r3, off_811B558 // =byte_811B55C
	ldrb r2, [r5,#4]
	lsl r2, r2, #1
	ldrh r1, [r3,r2]
	strh r1, [r5,#0x14]
	bl sprite_setCoordinates
	bl sub_811B570
	pop {pc}
off_811B52C: .word off_811B530
off_811B530: .word 0x240
	.word 0x1F8
	.word 0x1B0
	.word 0x168
	.word 0x120
	.word 0xD8
	.word 0x90
	.word 0x48
	.word 0x0
off_811B554: .word unk_2024290
off_811B558: .word byte_811B55C
byte_811B55C: .byte 0x2, 0x0, 0x14, 0x0, 0x26, 0x0, 0x38, 0x0, 0x4A, 0x0, 0x5C, 0x0
	.byte 0x6E, 0x0, 0x80, 0x0, 0x92, 0x0, 0x0, 0x0
	thumb_local_start
sub_811B570:
	push {lr}
	ldr r0, off_811B588 // =jt_811B58C
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_811B8C8
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811B588: .word jt_811B58C
jt_811B58C: .word sub_811B594+1
	.word sub_811B5C0+1
	thumb_func_end sub_811B570

	thumb_local_start
sub_811B594:
	push {lr}
	ldrb r0, [r5,#0xa]
	tst r0, r0
	bne loc_811B5A2
	mov r0, #4
	strb r0, [r5,#0xa]
	b locret_811B5BE
loc_811B5A2:
	bl sub_811B6E0
	bl sub_811B71C
	bl sub_811B7D4
	bl sub_811B814
	bl sub_811B914
	mov r0, #4
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
locret_811B5BE:
	pop {pc}
	thumb_func_end sub_811B594

	thumb_local_start
sub_811B5C0:
	push {lr}
	ldr r0, off_811B5D8 // =loc_811B5DC
	ldrb r1, [r5,#0xa]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_811B984
	mov r2, #0x14
	ldrsh r1, [r5,r2]
	strh r1, [r0,#0xe]
	pop {pc}
off_811B5D8: .word loc_811B5DC
	thumb_func_end sub_811B5C0

loc_811B5DC:
	push {r0,r2,r4-r7,lr}
	lsr r1, r2, #0x20
	push {r0,r2-r7,lr}
	lsr r1, r2, #0x20
	.word sub_811B620+1
	.word sub_811B648+1
	.word loc_811B66C+1
	.word sub_811B6B8+1
	push {lr}
	bl sub_811B914
	pop {pc}
	push {lr}
	mov r4, #0x16
	ldrsh r0, [r5,r4]
	mov r6, #0x14
	ldrsh r1, [r5,r6]
	bl sub_811B990
	strh r0, [r5,r6]
	ldrsh r0, [r5,r4]
	ldrsh r1, [r5,r6]
	cmp r0, r1
	bne locret_811B61C
	mov r0, #8
	strb r0, [r5,#0xa]
	mov r0, #2
	strh r0, [r5,#0x12]
locret_811B61C:
	pop {pc}
	.byte 0, 0
	thumb_local_start
sub_811B620:
	push {lr}
	ldrh r0, [r5,#0x12]
	sub r0, #1
	strh r0, [r5,#0x12]
	bgt locret_811B646
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	mov r1, #0x14
	strh r0, [r5,r1]
	mov r0, #0
	strb r0, [r5,#0xa]
	bl sub_811B6E0
	bl sub_811B71C
	bl sub_811B7D4
	bl sub_811B814
locret_811B646:
	pop {pc}
	thumb_func_end sub_811B620

	thumb_local_start
sub_811B648:
	push {lr}
	ldrb r2, [r5,#0x12]
	add r2, #0x30
	cmp r2, #0xff
	blt loc_811B654
	mov r2, #0xff
loc_811B654:
	strb r2, [r5,#0x12]
	mov r0, #0
	mov r1, #0x40
	bl sprite_setScaleParameters
	ldrb r0, [r5,#0x12]
	cmp r0, #0xff
	bne locret_811B6B4
	mov r0, #0x10
	strb r0, [r5,#0xa]
	pop {pc}
	.balign 4, 0x00
loc_811B66C:
	push {lr}
	ldrb r2, [r5,#0x12]
	sub r2, #0x30
	cmp r2, #0x40
	bgt loc_811B678
	mov r2, #0x40
loc_811B678:
	strb r2, [r5,#0x12]
	mov r0, #0
	mov r1, #0x40
	bl sprite_setScaleParameters
	ldrb r0, [r5,#0x12]
	cmp r0, #0x40
	bne locret_811B6B4
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	mov r1, #0x14
	strh r0, [r5,r1]
	mov r0, #0
	strb r0, [r5,#0xa]
	ldr r0, off_811B980 // =unk_2037780
	mov r1, #0
	strb r1, [r0,#0xc] // (byte_203778C - 0x2037780)
	bl sprite_makeUnscalable
	mov r0, #0
	bl sub_8002FA6
	bl sub_811B6E0
	bl sub_811B71C
	bl sub_811B7D4
	bl sub_811B814
locret_811B6B4:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811B648

	thumb_local_start
sub_811B6B8:
	push {lr}
	mov r0, #0
	strb r0, [r5,#0xa]
	bl sub_811B6E0
	bl sub_811B71C
	bl sub_811B7D4
	bl sub_811B814
	ldr r0, off_811B980 // =unk_2037780
	mov r1, #0
	strb r1, [r0,#0xc] // (byte_203778C - 0x2037780)
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811B6B8

	thumb_local_start
sub_811B6D8:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811B6D8

	thumb_local_start
sub_811B6E0:
	push {lr}
	ldr r2, off_811B980 // =unk_2037780
	ldrh r0, [r2,#0x24] // (word_20377A4 - 0x2037780)
	cmp r0, #1
	blt loc_811B6EC
	mov r0, #1
loc_811B6EC:
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt loc_811B714
	ldrh r0, [r2,#0x24] // (word_20377A4 - 0x2037780)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	ldrh r1, [r2,#0x1e] // (word_203779E - 0x2037780)
	cmp r0, r1
	bge loc_811B714
	mov r2, #0x14
	ldrsh r1, [r5,r2]
	cmp r1, #0x14
	ble loc_811B714
	cmp r1, #0x80
	bgt loc_811B714
	mov r0, #0x23
	strb r0, [r5]
	b locret_811B718
loc_811B714:
	mov r0, #1
	strb r0, [r5]
locret_811B718:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811B6E0

	thumb_local_start
sub_811B71C:
	push {r4-r7,lr}
	ldr r6, off_811B980 // =unk_2037780
	ldrh r0, [r6,#0x24] // (word_20377A4 - 0x2037780)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt locret_811B772
	ldrh r1, [r6,#0x1e] // (word_203779E - 0x2037780)
	cmp r0, r1
	bge locret_811B772
	lsl r0, r0, #2
	ldr r1, off_811B774 // =word_2023FA0
	add r1, r1, r0
	mov r4, #4
	ldrh r2, [r1]
	ldr r3, off_811B7A8 // =0x14c
	cmp r2, r3
	beq loc_811B74A
	ldrh r2, [r1,#2]
	mov r4, #0
	tst r2, r2
	bne loc_811B74A
	mov r4, #2
loc_811B74A:
	strb r4, [r5,#0xe]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk200a220_Ptr]
	str r2, [r4,#8]
	ldrh r1, [r1]
	sub r1, #0x90
	lsr r1, r1, #2
	ldr r0, off_811B77C // =byte_873EA50
	ldrb r4, [r5,#4]
	lsl r4, r4, #2
	ldr r2, off_811B780 // =off_811B784
	ldr r2, [r2,r4]
	ldr r3, off_811B7AC // =byte_811B7B0
	ldr r3, [r3,r4]
	mov r4, #8
	mov r5, #1
	ldr r6, off_811B778 // =dword_86B7AE0
	mov r7, #0
	bl renderTextGfx_8045F8C
locret_811B772:
	pop {r4-r7,pc}
off_811B774: .word word_2023FA0
off_811B778: .word dword_86B7AE0
off_811B77C: .word byte_873EA50
off_811B780: .word off_811B784
off_811B784: .word byte_2017A00
	.word unk_2017E00
	.word unk_2018200
	.word unk_2018600
	.word unk_2018A00
	.word unk_2018E00
	.word unk_2019200
	.word unk_2019600
	.word byte_2019A00
off_811B7A8: .word 0x14C
off_811B7AC: .word byte_811B7B0
byte_811B7B0: .byte 0x80, 0x4E, 0x1, 0x6, 0x80, 0x45, 0x1, 0x6, 0x80, 0x3C, 0x1
	.byte 0x6, 0x80, 0x33, 0x1, 0x6, 0x80, 0x2A, 0x1, 0x6, 0x80, 0x21
	.byte 0x1, 0x6, 0x80, 0x18, 0x1, 0x6, 0x80, 0xF, 0x1, 0x6, 0x80
	.byte 0x6, 0x1, 0x6
	thumb_func_end sub_811B71C

	thumb_local_start
sub_811B7D4:
	push {r4-r7,lr}
	ldr r6, off_811B980 // =unk_2037780
	ldrh r0, [r6,#0x24] // (word_20377A4 - 0x2037780)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt locret_811B812
	ldrh r1, [r6,#0x1e] // (word_203779E - 0x2037780)
	cmp r0, r1
	bge locret_811B812
	lsl r0, r0, #2
	ldr r1, off_811B868 // =word_2023FA0
	add r0, r0, r1
	ldrh r1, [r0,#2]
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200a220_Ptr]
	str r1, [r0,#8]
	mov r1, #0x46
	ldrb r4, [r5,#4]
	lsl r4, r4, #2
	ldr r0, off_811B870 // =eTextScript201BA20
	ldr r2, off_811B874 // =off_811B878
	ldr r2, [r2,r4]
	ldr r3, off_811B8A0 // =byte_811B8A4
	ldr r3, [r3,r4]
	mov r4, #1
	mov r5, #1
	ldr r6, off_811B86C // =dword_86B7AE0
	mov r7, #0
	bl renderTextGfx_8045F8C
locret_811B812:
	pop {r4-r7,pc}
	thumb_func_end sub_811B7D4

	thumb_local_start
sub_811B814:
	push {r4-r7,lr}
	ldr r6, off_811B980 // =unk_2037780
	ldrh r0, [r6,#0x24] // (word_20377A4 - 0x2037780)
	ldrb r1, [r5,#4]
	add r0, r0, r1
	sub r0, #2
	blt locret_811B85C
	ldrh r1, [r6,#0x1e] // (word_203779E - 0x2037780)
	cmp r0, r1
	bge locret_811B85C
	lsl r0, r0, #2
	ldr r1, off_811B868 // =word_2023FA0
	add r0, r0, r1
	ldrh r4, [r0]
	mov r0, r4
	sub r0, #0x90
	bne loc_811B840
	ldr r0, dword_811B860 // =0x100000
	bl sub_8002FA6
	mov r0, #0
	b loc_811B84A
loc_811B840:
	push {r0}
	ldr r0, dword_811B864 // =0x0
	bl sub_8002FA6
	pop {r0}
loc_811B84A:
	bl sub_813B780
	ldrb r0, [r0,#3]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
locret_811B85C:
	pop {r4-r7,pc}
	.byte 0, 0
dword_811B860: .word 0x100000
dword_811B864: .word 0x0
off_811B868: .word word_2023FA0
off_811B86C: .word dword_86B7AE0
off_811B870: .word eTextScript201BA20
off_811B874: .word off_811B878
off_811B878: .word unk_2017C00
	.word unk_2018000
	.word unk_2018400
	.word unk_2018800
	.word unk_2018C00
	.word unk_2019000
	.word unk_2019400
	.word unk_2019800
	.word unk_2019C00
	.word 0x14C
off_811B8A0: .word byte_811B8A4
byte_811B8A4: .byte 0x80, 0x50, 0x1, 0x6, 0x80, 0x47, 0x1, 0x6, 0x80, 0x3E, 0x1
	.byte 0x6, 0x80, 0x35, 0x1, 0x6, 0x80, 0x2C, 0x1, 0x6, 0x80, 0x23
	.byte 0x1, 0x6, 0x80, 0x1A, 0x1, 0x6, 0x80, 0x11, 0x1, 0x6, 0x80
	.byte 0x8, 0x1, 0x6
	thumb_func_end sub_811B814

	thumb_local_start
sub_811B8C8:
	push {r4-r7,lr}
	bl sub_8002EE8
	ldr r4, off_811B980 // =unk_2037780
	ldrh r0, [r4,#0x20] // (word_20377A0 - 0x2037780)
	add r0, #2
	ldrb r1, [r5,#4]
	cmp r0, r1
	bne loc_811B8F2
	ldr r7, off_811B900 // =byte_811B904
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	mov r1, #0xf
	and r0, r1
	lsr r0, r0, #1
	lsl r0, r0, #1
	ldrh r0, [r7,r0]
	bl sprite_setColorShader
	b locret_811B8F8
loc_811B8F2:
	ldr r0, dword_811B8FC // =0xa108
	bl sprite_setColorShader
locret_811B8F8:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811B8FC: .word 0xA108
off_811B900: .word byte_811B904
byte_811B904: .byte 0x0, 0x0, 0x42, 0x8, 0x84, 0x10, 0x42, 0x8, 0x0, 0x80, 0x42
	.byte 0x88, 0x84, 0x90, 0x42, 0x88
	thumb_func_end sub_811B8C8

	thumb_local_start
sub_811B914:
	push {r4-r7,lr}
	bl sub_811B984
	mov r3, r0
	mov r7, #0
	ldr r0, off_811B980 // =unk_2037780
	ldrb r4, [r0,#0xc] // (byte_203778C - 0x2037780)
	tst r4, r4
	beq loc_811B96A
	cmp r4, #0x10
	bne loc_811B932
	ldrh r0, [r3,#0xe]
	strh r0, [r5,#0x14]
	mov r7, #0x14
	b loc_811B96A
loc_811B932:
	mov r0, #0xb0
	strh r0, [r3,#0xc]
	mov r1, #0xe
	ldrsh r0, [r3,r1]
	strh r0, [r5,#0x10]
	strh r0, [r5,#0x14]
	cmp r4, #0xc
	beq loc_811B94E
	ldr r1, off_811B970 // =byte_811B974
	ldr r1, [r1,r4]
	add r0, r0, r1
	strh r0, [r5,#0x16]
	mov r7, #4
	b loc_811B96A
loc_811B94E:
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x40
	mov r2, #0x40
	strh r2, [r5,#0x12]
	bl sprite_setScaleParameters
	mov r0, #0xfc
	lsl r0, r0, #0x18
	mvn r0, r0
	bl sub_8002FA6
	mov r7, #0xc
loc_811B96A:
	strb r7, [r5,#0xa]
	pop {r4-r7,pc}
	.byte 0, 0
off_811B970: .word byte_811B974
byte_811B974: .byte 0x0, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x0, 0xEE, 0xFF, 0xFF, 0xFF
off_811B980: .word unk_2037780
	thumb_func_end sub_811B914

	thumb_local_start
sub_811B984:
	ldrb r0, [r5,#2]
	lsr r0, r0, #4
	lsl r0, r0, #4
	add r0, r0, r5
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_811B984

	thumb_local_start
sub_811B990:
	mov r2, r0
	sub r0, r1, r0
	cmp r0, #0
	blt loc_811B9A2
	lsr r0, r0, #1
	cmp r0, #1
	ble loc_811B9B0
	add r2, r2, r0
	b loc_811B9B0
loc_811B9A2:
	mov r1, r0
	neg r0, r0
	lsr r0, r0, #1
	cmp r0, #1
	ble loc_811B9B0
	asr r1, r1, #1
	add r2, r2, r1
loc_811B9B0:
	mov r0, r2
	mov pc, lr
	thumb_func_end sub_811B990

	thumb_func_start sub_811B9B4
sub_811B9B4:
	push {lr}
	ldr r6, off_811B9D4 // =unk_2037780
	ldr r0, off_811B9C4 // =off_811B9C8
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811B9C4: .word off_811B9C8
off_811B9C8: .word sub_811B9D8+1
	.word sub_811BA58+1
	.word sub_811BAEC+1
off_811B9D4: .word unk_2037780
	thumb_func_end sub_811B9B4

	thumb_local_start
sub_811B9D8:
	push {r4,lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x12
	ldr r1, off_811BA54 // =unk_2025AE8
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #6
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #3
	bl sub_8002E14
	mov r0, #1
	bl sub_8003060
	ldrb r0, [r5,#4]
	tst r0, r0
	beq loc_811BA1C
	ldr r1, off_811BA48 // =off_811BA4C
	ldrb r0, [r5,#3]
	mov r4, r0
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	bl sub_800306C
	mov r0, r4
	mov r1, #0xb
	add r0, r0, r1
	b loc_811BA28
loc_811BA1C:
	ldr r1, off_811BA48 // =off_811BA4C
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	bl sub_800306C
	mov r0, #0xb
loc_811BA28:
	bl sub_800304A
	mov r0, #4
	strb r0, [r5,#8]
	mov r4, #4
	ldrb r0, [r5,#4]
	tst r0, r0
	bne loc_811BA3A
	mov r4, #0
loc_811BA3A:
	strb r4, [r5,#9]
	mov r0, #6
	strb r0, [r5,#0xc]
	bl sub_811BA58
	pop {r4,pc}
	.balign 4, 0x00
off_811BA48: .word off_811BA4C
off_811BA4C: .word 0x300
	.word 0x260
off_811BA54: .word unk_2025AE8
	thumb_func_end sub_811B9D8

	thumb_local_start
sub_811BA58:
	push {lr}
	ldr r0, off_811BA7C // =off_811BA80
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldrb r1, [r5,#9]
	thumb_func_end sub_811BA58

	cmp r1, #4
	beq loc_811BA76
	bl sub_811BAF4
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_811BA76:
	bl sprite_update
	pop {pc}
off_811BA7C: .word off_811BA80
off_811BA80: .word sub_811BA88+1
	.word sub_811BAC4+1
	thumb_local_start
sub_811BA88:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_811BAAC
	ldrb r0, [r6,#0xc]
	cmp r0, #0xc
	beq loc_811BAAC
	ldrh r0, [r6,#0x20]
	ldrh r1, [r6,#0x24]
	add r0, r0, r1
	tst r0, r0
	beq loc_811BAAC
	ldrh r1, [r6,#0x1e]
	cmp r0, r1
	beq loc_811BAAC
	mov r4, #0x23
loc_811BAAC:
	strb r4, [r5]
	mov r0, #6
	strb r0, [r5,#0xc]
	bl sub_8002CCE
	bl sub_8002EE8
	bl sub_811BB30
	bl sub_811BB64
	pop {r4-r7,pc}
	thumb_func_end sub_811BA88

	thumb_local_start
sub_811BAC4:
	push {lr}
	mov r1, #0x23
	ldrh r0, [r5,#0xe]
	sub r0, #0x90
	tst r0, r0
	bne loc_811BAD2
	mov r1, #1
loc_811BAD2:
	strb r1, [r5]
	bl sub_811BB50
	bl sub_811BBB8
	bl sub_811BB18
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811BAC4

	thumb_local_start
sub_811BAEC:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811BAEC

	thumb_local_start
sub_811BAF4:
	push {lr}
	ldrh r0, [r6,#0x3c]
	ldrh r1, [r6,#0x3e]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_811BBB4 // =word_2023FA0
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	bl sub_813B780
	mov r1, r0
	ldrb r0, [r5,#0xc]
	ldrb r1, [r1,#1]
	cmp r1, #0
	beq locret_811BB16
	add r0, #1
locret_811BB16:
	pop {pc}
	thumb_func_end sub_811BAF4

	thumb_local_start
sub_811BB18:
	push {lr}
	ldrh r0, [r5,#0xe]
	sub r0, #0x90
	bl sub_813B780
	mov r1, r0
	ldrb r0, [r5,#0xc]
	ldrb r1, [r1,#1]
	cmp r1, #0
	beq locret_811BB2E
	add r0, #1
locret_811BB2E:
	pop {pc}
	thumb_func_end sub_811BB18

	thumb_local_start
sub_811BB30:
	push {lr}
	ldrh r0, [r6,#0x3e]
	ldrh r1, [r6,#0x3c]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_811BBB4 // =word_2023FA0
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	bl sub_813B780
	ldrb r0, [r0,#3]
	sub r0, #1
	bl sprite_setPalette // (int pallete) -> void
	pop {pc}
	thumb_func_end sub_811BB30

	thumb_local_start
sub_811BB50:
	push {lr}
	ldrh r0, [r5,#0xe]
	sub r0, #0x90
	bl sub_813B780
	ldrb r0, [r0,#3]
	sub r0, #1
	bl sprite_setPalette // (int pallete) -> void
	pop {pc}
	thumb_func_end sub_811BB50

	thumb_local_start
sub_811BB64:
	push {r4-r7,lr}
	ldrh r0, [r6,#0x3e]
	ldrh r1, [r6,#0x3c]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_811BBB4 // =word_2023FA0
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, #0x90
	mov r1, #0
	mov r2, #0
	bl sub_813B7A0
	mov r7, r0
	add r7, #8
	mov r4, #0
	mov r6, #0
	mov r0, #0
	mvn r0, r0
	mov r2, #0x80
	lsl r2, r2, #0x14
loc_811BB8E:
	ldrb r3, [r7]
	tst r3, r3
	beq loc_811BB96
	bic r0, r2
loc_811BB96:
	lsr r2, r2, #1
	add r6, #1
	cmp r6, #5
	blt loc_811BBA4
	mov r6, #0
	add r7, #2
	add r4, #2
loc_811BBA4:
	add r7, #1
	add r4, #1
	cmp r4, #0x31
	blt loc_811BB8E
	bl sub_8002FA6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811BBB4: .word word_2023FA0
	thumb_func_end sub_811BB64

	thumb_local_start
sub_811BBB8:
	push {r4-r7,lr}
	ldrh r0, [r5,#0xe]
	sub r0, #0x90
	mov r1, #0
	mov r2, #0
	bl sub_813B7A0
	mov r7, r0
	add r7, #8
	mov r4, #0
	mov r6, #0
	mov r0, #0
	mvn r0, r0
	mov r2, #0x80
	lsl r2, r2, #0x14
loc_811BBD6:
	ldrb r3, [r7]
	tst r3, r3
	beq loc_811BBDE
	bic r0, r2
loc_811BBDE:
	lsr r2, r2, #1
	add r6, #1
	cmp r6, #5
	blt loc_811BBEC
	mov r6, #0
	add r7, #2
	add r4, #2
loc_811BBEC:
	add r7, #1
	add r4, #1
	cmp r4, #0x31
	blt loc_811BBD6
	bl sub_8002FA6
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word word_2023FA0
	thumb_func_end sub_811BBB8

	thumb_func_start sub_811BC00
sub_811BC00:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811BC20
	ldr r0, [sp]
	strh r0, [r1,#0xe]
	ldr r0, [sp,#0xc]
	strh r0, [r1,#0x18]
	ldr r0, [sp,#4]
	strb r0, [r1,#9]
loc_811BC20:
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_func_end sub_811BC00

	thumb_func_start sub_811BC24
sub_811BC24:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811BC40
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811BC40:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	thumb_func_end sub_811BC24

	thumb_func_start sub_811BC44
sub_811BC44:
	push {lr}
	ldr r0, off_811BC54 // =off_811BC58
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811BC54: .word off_811BC58
off_811BC58: .word sub_811BC68+1
	.word sub_811BCD8+1
	.word sub_811BD34+1
	.word sub_811BD3C+1
	thumb_func_end sub_811BC44

	thumb_local_start
sub_811BC68:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r1, off_811BCC8 // =off_811BCCC
	ldr r1, [r1,r0]
	mov r0, #0x29
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #3
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811BCB8 // =off_811BCBC
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	mov r0, #8
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811BD34
	pop {pc}
off_811BCB8: .word off_811BCBC
off_811BCBC: .word 0x140
	.word 0x180
	.word 0x1C0
off_811BCC8: .word off_811BCCC
off_811BCCC: .word unk_201F294
	.word unk_201F294
	.word unk_201F294
	thumb_func_end sub_811BC68

	thumb_local_start
sub_811BCD8:
	push {r4-r7,lr}
	push {r5}
	ldrb r7, [r5,#5]
	ldr r4, off_811BD04 // =dword_811BD30
	ldrb r1, [r4,r7]
	ldr r0, off_811BD08 // =eTextScript201BF20
	ldr r2, off_811BD0C // =off_811BD10
	lsl r7, r7, #2
	ldr r2, [r2,r7]
	ldr r3, off_811BD1C // =byte_811BD20
	ldr r3, [r3,r7]
	mov r4, #9
	mov r5, #1
	ldr r6, off_811BD2C // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r5}
	mov r0, #8
	strb r0, [r5,#8]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811BD04: .word dword_811BD30
off_811BD08: .word eTextScript201BF20
off_811BD0C: .word off_811BD10
off_811BD10: .word unk_201AA00
	.word byte_201AE00
	.word byte_201B200
off_811BD1C: .word byte_811BD20
byte_811BD20: .byte 0x0, 0x2A, 0x1, 0x6, 0x0, 0x32, 0x1, 0x6, 0x0, 0x3A, 0x1, 0x6
off_811BD2C: .word dword_86A5D60
dword_811BD30: .word 0x34333A
	thumb_func_end sub_811BCD8

	thumb_local_start
sub_811BD34:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811BD34

	thumb_local_start
sub_811BD3C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811BD3C

	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811BD5E
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811BD5E:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_start sub_811BD64
sub_811BD64:
	push {r6,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_SubmenuPtr]
	ldr r0, off_811BD78 // =off_811BD7C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r6,pc}
	.balign 4, 0x00
off_811BD78: .word off_811BD7C
off_811BD7C: .word sub_811BD88+1
	.word sub_811BDCC+1
	.word sub_811BDF4+1
	thumb_func_end sub_811BD64

	thumb_local_start
sub_811BD88:
	push {r4,lr}
	mov r0, #1
	strb r0, [r5]
	bl getPETNaviSelect // () -> u8
	tst r0, r0
	bne loc_811BDB8
	mov r0, #0
	mov r1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	bl notZero_eByte200AD04
	beq loc_811BDB4
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_811BDB4
	mov r1, #0x17
	add r4, r4, r1
loc_811BDB4:
	mov r0, r4
	b loc_811BDBC
loc_811BDB8:
	mov r1, #0xb
	add r0, r0, r1
loc_811BDBC:
	str r0, [r5,#0xc]
	bl sub_811BE1C
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811BDCC
	pop {r4,pc}
	thumb_func_end sub_811BD88

	thumb_local_start
sub_811BDCC:
	push {lr}
	ldr r0, off_811BDE4 // =off_811BDE8
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_811BE90
	beq locret_811BDE2
	bl sprite_update
locret_811BDE2:
	pop {pc}
off_811BDE4: .word off_811BDE8
off_811BDE8: .word sub_811BDEC+1
	thumb_func_end sub_811BDCC

	thumb_local_start
sub_811BDEC:
	push {lr}
	bl sub_811BE9C
	pop {pc}
	thumb_func_end sub_811BDEC

	thumb_local_start
sub_811BDF4:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811BDF4

	thumb_func_start sub_811BDFC
sub_811BDFC:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811BE16
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811BE16:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811BDFC

	thumb_local_start
sub_811BE1C:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	ldr r2, off_811BEFC // =byte_811BF94
	ldrb r0, [r2,r0]
	tst r0, r0
	beq locret_811BE8E
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #4
	bl sub_800304A
	ldrb r1, [r5,#0xc]
	cmp r1, #0x17
	bne loc_811BE60
	bl getPETNaviSelect // () -> u8
	mov r1, #0xe
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0xff
	bne loc_811BE5E
	mov r0, #0xc
	b loc_811BE64
loc_811BE5E:
	mov r1, #0x17
loc_811BE60:
	ldr r0, off_811BF08 // =byte_811BFD8
	ldrb r0, [r0,r1]
loc_811BE64:
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811BEF8 // =0x120
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	ldrb r1, [r5,#0xc]
	ldr r0, off_811BF04 // =byte_811BFB6
	ldrb r0, [r0,r1]
	bl sub_8003060
	ldrb r2, [r5,#0xc]
	lsl r2, r2, #2
	ldr r1, off_811BF00 // =byte_811BF0C
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	bl sprite_setCoordinates
locret_811BE8E:
	pop {pc}
	thumb_func_end sub_811BE1C

	thumb_local_start
sub_811BE90:
	ldr r0, [r5,#0xc]
	ldr r2, off_811BEFC // =byte_811BF94
	ldrb r0, [r2,r0]
	tst r0, r0
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_811BE90

	thumb_local_start
sub_811BE9C:
	push {lr}
	sub sp, sp, #8
	bl sprite_getCoordinates
	str r0, [sp]
	str r1, [sp,#4]
	ldrb r2, [r5,#0xc]
	lsl r2, r2, #2
	ldr r1, off_811BF00 // =byte_811BF0C
	ldrsh r0, [r1,r2]
	ldr r3, [sp]
	add r0, r0, r3
	add r2, #2
	ldrsh r1, [r1,r2]
	ldr r3, [sp,#4]
	add r1, r1, r3
	bl sprite_setCoordinates
	mov r1, #1
	ldr r2, off_811BEFC // =byte_811BF94
	ldrb r0, [r5,#0xc]
	ldrb r0, [r2,r0]
	tst r0, r0
	beq loc_811BECE
	mov r1, #0x23
loc_811BECE:
	strb r1, [r5]
	add sp, sp, #8
	pop {pc}
	thumb_func_end sub_811BE9C

	thumb_func_start sub_811BED4
sub_811BED4:
	push {r4-r7,lr}
	mov r4, r0
	mov r0, r1
	bl getStructFrom2008450
	beq locret_811BEF4
	mov r0, #1
	tst r4, r4
	beq loc_811BEF2
	ldr r2, off_811BEFC // =byte_811BF94
	ldrb r3, [r1,#0xc]
	ldrb r3, [r2,r3]
	tst r3, r3
	beq loc_811BEF2
	mov r0, #0x23
loc_811BEF2:
	strb r0, [r1]
locret_811BEF4:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811BEF8: .word 0x120
off_811BEFC: .word byte_811BF94
off_811BF00: .word byte_811BF0C
off_811BF04: .word byte_811BFB6
off_811BF08: .word byte_811BFD8
byte_811BF0C: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811BF94: .byte 0x0, 0x4C, 0x4D, 0x4E, 0x4F, 0x90, 0x50, 0x91, 0x51
	.byte 0x52, 0x92, 0x0, 0x49, 0x0, 0x0, 0x0, 0x0, 0x4A
	.byte 0x0, 0x0, 0x4B, 0x0, 0x0, 0x53, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x53, 0x53, 0x53, 0x53, 0x53
byte_811BFB6: .byte 0x0, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0
	.byte 0x3, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811BFD8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x0, 0x6, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xB5, 0x3, 0x48, 0x29, 0x7A, 0x40, 0x58, 0xFE, 0x46, 0x0, 0x47, 0x0, 0xBD, 0x0
	.byte 0x0
	.word off_811C010
off_811C010: .word sub_811C01C+1
	.word sub_811C07C+1
	.word sub_811C084+1
	thumb_func_end sub_811BED4

	thumb_local_start
sub_811C01C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x34
	bl loc_8002774 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	add r0, #8
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811C070 // =0x1f8
	bl sub_800306C
	mov r0, #0xb
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	ldr r1, off_811C074 // =dword_811C078
	ldrb r0, [r5,#4]
	lsl r0, r0, #1
	add r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r1,#1]
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811C07C
	pop {pc}
off_811C070: .word 0x1F8
off_811C074: .word dword_811C078
dword_811C078: .word 0x78782878
	thumb_func_end sub_811C01C

	thumb_local_start
sub_811C07C:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811C07C

	thumb_local_start
sub_811C084:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811C084

	thumb_func_start sub_811C08C
sub_811C08C:
	push {lr}
	ldr r0, off_811C09C // =off_811C0A0
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811C09C: .word off_811C0A0
off_811C0A0: .word sub_811C0AC+1
	.word sub_811C0F8+1
	.word sub_811C10E+1
	thumb_func_end sub_811C08C

	thumb_local_start
sub_811C0AC:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x3d
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #4
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811C0F4 // =0x3c0
	bl sub_800306C
	mov r0, #0xf
	bl sub_800304A
	mov r0, #0
	bl sub_8003060
	mov r0, #1
	bl sub_8002E14
	mov r0, #0x78
	ldr r1, [r5,#4]
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x10
	strb r0, [r5,#4]
	bl sub_811C0F8
	pop {pc}
off_811C0F4: .word 0x3C0
	thumb_func_end sub_811C0AC

	thumb_local_start
sub_811C0F8:
	push {lr}
	bl sprite_update
	ldrb r0, [r5,#4]
	sub r0, #1
	strb r0, [r5,#4]
	cmp r0, #0
	bgt locret_811C10C
	mov r0, #8
	strb r0, [r5,#8]
locret_811C10C:
	pop {pc}
	thumb_func_end sub_811C0F8

	thumb_local_start
sub_811C10E:
	push {lr}
	bl loc_8002676
	bl sub_804668A
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811C10E

	thumb_func_start sub_811C11C
sub_811C11C:
	push {lr}
	ldr r0, off_811C12C // =off_811C130
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811C12C: .word off_811C130
off_811C130: .word sub_811C13C+1
	.word sub_811C18C+1
	.word sub_811C1A4+1
	thumb_func_end sub_811C11C

	thumb_local_start
sub_811C13C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x3e
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_811C188 // =0x390
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xd8
	mov r1, #7
	bl sprite_setCoordinates
	bl sub_811C18C
	pop {pc}
	.balign 4, 0x00
off_811C188: .word 0x390
	thumb_func_end sub_811C13C

	thumb_local_start
sub_811C18C:
	push {lr}
	push {r5}
	ldr r5, off_811C1A0 // =eReqBBSGui
	bl reqBBS_81406FC
	pop {r5}
	bl sprite_update
	pop {pc}
	.byte 0, 0
off_811C1A0: .word eReqBBSGui
	thumb_func_end sub_811C18C

	thumb_local_start
sub_811C1A4:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811C1A4

	thumb_func_start sub_811C1AC
sub_811C1AC:
	push {lr}
	ldr r0, off_811C1BC // =off_811C1C0
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811C1BC: .word off_811C1C0
off_811C1C0: .word sub_811C1CC+1
	.word sub_811C22C+1
	.word sub_811C234+1
	thumb_func_end sub_811C1AC

	thumb_local_start
sub_811C1CC:
	push {r4,lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x69
	ldr r1, off_811C220 // =unk_20222A0
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811C21C // =0xf0
	bl sub_800306C
	mov r0, #5
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	mov r0, #4
	strb r0, [r5,#8]
	ldr r0, off_811C224 // =0x78
	ldr r1, off_811C228 // =0x28
	ldrb r2, [r5,#3]
	bl sub_811C23C
	bl sub_811C22C
	pop {r4,pc}
	.balign 4, 0x00
off_811C21C: .word 0xF0
off_811C220: .word unk_20222A0
off_811C224: .word 0x78
off_811C228: .word 0x28
	thumb_func_end sub_811C1CC

	thumb_local_start
sub_811C22C:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811C22C

	thumb_local_start
sub_811C234:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811C234

	thumb_func_start sub_811C23C
sub_811C23C:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811C256
	mov r5, r1
	ldr r0, [sp]
	ldr r1, [sp,#4]
	bl sprite_setCoordinates
loc_811C256:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811C23C

	thumb_func_start sub_811C25C
sub_811C25C:
	push {lr}
	ldr r0, off_811C26C // =off_811C270
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811C26C: .word off_811C270
off_811C270: .word sub_811C27C+1
	.word sub_811C298+1
	.word sub_811C2A0+1
	thumb_func_end sub_811C25C

	thumb_local_start
sub_811C27C:
	push {r4,lr}
	mov r4, #1
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xb0
	mov r1, #0x40
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811C298
	pop {r4,pc}
	thumb_func_end sub_811C27C

	thumb_local_start
sub_811C298:
	push {lr}
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811C298

	thumb_local_start
sub_811C2A0:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811C2A0

	thumb_func_start sub_811C2A8
sub_811C2A8:
	push {r4,r5,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_811C316
	mov r5, r1
	mov r1, #0x23
	strb r1, [r5]
	ldr r0, [sp]
	lsl r4, r0, #2
	ldr r1, off_811C3A0 // =SpritePointerArr811C3A4
	ldr r0, [r1,r4]
	lsl r0, r0, #1
	bcs loc_811C2CC
	lsr r0, r0, #1
	b loc_811C2D8
loc_811C2CC:
	lsr r0, r0, #1
	// dest
	ldr r1, off_811C39C // =unk_201D2F8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r1, off_811C39C // =unk_201D2F8
	add r1, #4
loc_811C2D8:
	ldr r0, off_811C320 // =byte_811C324
	ldr r0, [r0,r4]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	lsr r1, r4, #2
	ldr r0, off_811C41C // =off_811C420
	ldrb r0, [r0,r1]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, dword_811C31C // =0x0
	bl sub_800306C
	mov r0, #0
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	lsr r0, r4, #2
	bl sub_811C440
loc_811C316:
	add sp, sp, #4
	pop {r4,r5,pc}
	.balign 4, 0x00
dword_811C31C: .word 0x0
off_811C320: .word byte_811C324
byte_811C324: .byte 0x0, 0x0, 0x0, 0x0, 0x6A, 0x0, 0x0, 0x0, 0x6B, 0x0, 0x0, 0x0, 0x6C, 0x0
	.byte 0x0, 0x0, 0x6D, 0x0, 0x0, 0x0, 0x6E, 0x0, 0x0, 0x0, 0x6F, 0x0, 0x0, 0x0
	.byte 0x70, 0x0, 0x0, 0x0, 0x71, 0x0, 0x0, 0x0, 0x72, 0x0, 0x0, 0x0, 0x73, 0x0
	.byte 0x0, 0x0, 0x74, 0x0, 0x0, 0x0, 0x75, 0x0, 0x0, 0x0, 0x76, 0x0, 0x0, 0x0
	.byte 0x77, 0x0, 0x0, 0x0, 0x78, 0x0, 0x0, 0x0, 0x79, 0x0, 0x0, 0x0, 0x7A, 0x0
	.byte 0x0, 0x0, 0x7B, 0x0, 0x0, 0x0, 0x7C, 0x0, 0x0, 0x0, 0x7D, 0x0, 0x0, 0x0
	.byte 0x7E, 0x0, 0x0, 0x0, 0x7F, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x81, 0x0
	.byte 0x0, 0x0, 0x82, 0x0, 0x0, 0x0, 0x83, 0x0, 0x0, 0x0, 0x84, 0x0, 0x0, 0x0
	.byte 0x85, 0x0, 0x0, 0x0, 0x86, 0x0, 0x0, 0x0
off_811C39C: .word unk_201D2F8
off_811C3A0: .word SpritePointerArr811C3A4
SpritePointerArr811C3A4: .word 0x0
	.word 0x88241EC4
	.word 0x88242E94
	.word virusBattleSprite_8244164
	.word 0x882455B0
	.word virusBattleSprite_8246A24
	.word 0x882489C8
	.word 0x882492FC
	.word 0x88249C7C
	.word virusBattleSprite_824AC94
	.word virusBattleSprite_824B254
	.word 0x8824D23C
	.word 0x8824DC7C
	.word virusBattleSprite_824EAF4
	.word 0x88252558
	.word sprite_82533F4
	.word sprite_8253F88
	.word 0x88257994
	.word 0x8825859C
	.word 0x88258FF8
	.word 0x8825A0D8
	.word 0x8825AD90
	.word 0x8825B860
	.word 0x8825BFC4
	.word sprite_825C9AC
	.word 0x8825DFB4
	.word sprite_825F2C8
	.word sprite_8260F88
	.word 0x88262CEC
	.word 0x88263484
off_811C41C: .word off_811C420
off_811C420: .word timer_2000000
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0
	thumb_func_end sub_811C2A8

	thumb_local_start
sub_811C440:
	push {lr}
	lsl r2, r0, #2
	ldr r1, off_811C45C // =byte_811C460
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	mov r2, #0xb0
	mov r3, #0x40
	add r0, r0, r2
	add r1, r1, r3
	bl sprite_setCoordinates
	pop {pc}
	.balign 4, 0x00
off_811C45C: .word byte_811C460
byte_811C460: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0
	.byte 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x6, 0x0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x10
	.byte 0x0
	thumb_func_end sub_811C440

	thumb_func_start sub_811C4D8
sub_811C4D8:
	push {lr}
	bl getStructFrom2008450
	beq locret_811C4E4
	mov r0, #1
	strb r0, [r1]
locret_811C4E4:
	pop {pc}
	.byte 0x0, 0x0
	thumb_func_end sub_811C4D8

	thumb_func_start sub_811C4E8
sub_811C4E8:
	push {lr}
	ldr r0, off_811C4F8 // =off_811C4FC
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811C4F8: .word off_811C4FC
off_811C4FC: .word sub_811C508+1
	.word sub_811C52C+1
	.word sub_811C53C+1
	thumb_func_end sub_811C4E8

	thumb_local_start
sub_811C508:
	push {r4,lr}
	mov r4, #1
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0x80
	mov r1, #0x80
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#0x12]
	strb r0, [r5,#0x13]
	bl sub_811C52C
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_811C508

	thumb_local_start
sub_811C52C:
	push {lr}
	ldrb r1, [r5]
	mov r0, #2
	tst r0, r1
	beq locret_811C53A
	bl sub_811C654
locret_811C53A:
	pop {pc}
	thumb_func_end sub_811C52C

	thumb_local_start
sub_811C53C:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811C53C

	thumb_local_start
sub_811C544:
	push {r5,lr}
	bl getStructFrom2008450
	beq locret_811C550
	mov r0, #1
	strb r0, [r1,#0x12]
locret_811C550:
	pop {r5,pc}
	.balign 4, 0x00
	thumb_func_end sub_811C544

	thumb_local_start
sub_811C554:
	push {r4,r5,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_811C5C8
	mov r5, r1
	mov r1, #0x23
	strb r1, [r5]
	ldr r0, [sp]
	lsl r4, r0, #2
	ldr r1, off_811C5F8 // =dword_811C5FC
	ldr r0, [r1,r4]
	lsl r0, r0, #1
	bcs loc_811C578
	lsr r0, r0, #1
	b loc_811C584
loc_811C578:
	lsr r0, r0, #1
	// dest
	ldr r1, off_811C5F4 // =unk_2018A00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r1, off_811C5F4 // =unk_2018A00
	add r1, #4
loc_811C584:
	ldr r0, off_811C5DC // =byte_811C5E0
	ldr r0, [r0,r4]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	lsr r1, r4, #2
	ldr r0, off_811C610 // =byte_811C618
	ldrb r0, [r0,r1]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811C5CC // =byte_811C5D0
	ldr r0, [r0,r4]
	bl sub_800306C
	ldr r0, off_811C614 // =byte_811C61B
	lsr r1, r4, #2
	ldrb r0, [r0,r1]
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	lsr r0, r4, #2
	bl sub_811C620
loc_811C5C8:
	add sp, sp, #4
	pop {r4,r5,pc}
off_811C5CC: .word byte_811C5D0
byte_811C5D0: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x0, 0x0
off_811C5DC: .word byte_811C5E0
byte_811C5E0: .byte 0x0, 0x0, 0x0, 0x0, 0x87, 0x0, 0x0, 0x0, 0x88, 0x0, 0x0, 0x0, 0x87, 0x0
	.byte 0x0, 0x0, 0x88, 0x0, 0x0, 0x0
off_811C5F4: .word unk_2018A00
off_811C5F8: .word dword_811C5FC
dword_811C5FC: .word 0x0
	.word npcSpriteLan
	.word npcSpriteMegaMan
	.word npcSpriteLan
	.word npcSpriteMegaMan
off_811C610: .word byte_811C618
off_811C614: .word byte_811C61B
byte_811C618: .byte 0x0, 0xA, 0xE
byte_811C61B: .byte 0x0, 0x0, 0x1, 0x0, 0x0
	thumb_func_end sub_811C554

	thumb_local_start
sub_811C620:
	push {lr}
	lsl r2, r0, #2
	ldr r1, off_811C63C // =byte_811C640
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	mov r2, #0x80
	mov r3, #0x80
	add r0, r0, r2
	add r1, r1, r3
	bl sprite_setCoordinates
	pop {pc}
	.balign 4, 0x00
off_811C63C: .word byte_811C640
byte_811C640: .byte 0x0, 0x0, 0x0, 0x0, 0x80, 0xFF, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x80, 0xFF, 0x0, 0x0
	thumb_func_end sub_811C620

	thumb_local_start
sub_811C654:
	push {lr}
	ldrb r0, [r5,#0xb]
	cmp r0, #0
	bne loc_811C698
	ldrb r0, [r5,#0x13]
	add r0, #1
	cmp r0, #6
	blt loc_811C666
	mov r0, #0
loc_811C666:
	strb r0, [r5,#0x13]
	ldr r3, off_811C6D0 // =off_811C6D4
	ldrb r1, [r5,#3]
	lsl r1, r1, #2
	ldr r3, [r3,r1]
	mov r2, #0xa
	mul r0, r2
	add r3, r3, r0
	ldrh r0, [r3]
	strh r0, [r5,#0x1a]
	ldrh r0, [r3,#2]
	strh r0, [r5,#0x1e]
	ldrh r0, [r3,#4]
	strh r0, [r5,#0x14]
	ldrh r0, [r3,#6]
	strh r0, [r5,#0x16]
	ldrh r0, [r3,#8]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #1
	strb r0, [r5,#0xb]
loc_811C698:
	ldrb r0, [r5,#0xb]
	cmp r0, #1
	bne loc_811C6B6
	bl sub_811C754
	beq loc_811C6C2
	ldrb r0, [r5,#0x12]
	tst r0, r0
	beq loc_811C6B0
	mov r0, #8
	strb r0, [r5,#8]
	b loc_811C6C2
loc_811C6B0:
	mov r0, #2
	strb r0, [r5,#0xb]
	b loc_811C6C2
loc_811C6B6:
	bl sub_811C754
	bne loc_811C6C2
	mov r0, #0
	strb r0, [r5,#9]
	strh r0, [r5,#0xa]
loc_811C6C2:
	bl sub_811C784
	bl sub_811C7A0
	bl sprite_update
	pop {pc}
off_811C6D0: .word off_811C6D4
off_811C6D4: .word byte_811C6DC
	.word byte_811C718
byte_811C6DC: .byte 0x70, 0x0, 0xD0, 0xFF, 0x0, 0x0, 0x0, 0xC, 0x14, 0x0, 0xD0, 0xFF
	.byte 0x20, 0x0, 0x0, 0xC, 0x0, 0x0, 0x12, 0x0, 0x20, 0x1, 0x90, 0x0
	.byte 0x0, 0xF4, 0x0, 0x0, 0x16, 0x0, 0xD0, 0xFF, 0x20, 0x0, 0xA, 0xB
	.byte 0x5C, 0x3, 0x13, 0x0, 0x20, 0x1, 0x20, 0x0, 0xF6, 0xF4, 0x5C, 0x3
	.byte 0x15, 0x0, 0xD0, 0xFF, 0x90, 0x0, 0xA, 0xB, 0xA4, 0xFC, 0x11, 0x0
byte_811C718: .byte 0x90, 0x0, 0xD0, 0xFF, 0x0, 0x0, 0x0, 0xC, 0xC, 0x0, 0x20, 0x1
	.byte 0x90, 0x0, 0x0, 0xF4, 0x0, 0x0, 0xE, 0x0, 0xD0, 0xFF, 0x20, 0x0
	.byte 0x0, 0xC, 0x0, 0x0, 0xA, 0x0, 0x20, 0x1, 0x90, 0x0, 0xF6, 0xF4
	.byte 0xA4, 0xFC, 0xF, 0x0, 0xD0, 0xFF, 0x90, 0x0, 0xA, 0xB, 0xA4, 0xFC
	.byte 0x9, 0x0, 0x20, 0x1, 0x20, 0x0, 0xF6, 0xF4, 0x5C, 0x3, 0xD, 0x0
	thumb_func_end sub_811C654

	thumb_local_start
sub_811C754:
	push {lr}
	bl sprite_getCoordinates
	ldr r2, dword_811C778 // =0xffffffe0
	cmp r0, r2
	blt loc_811C774
	cmp r1, r2
	blt loc_811C774
	ldr r3, off_811C77C // =0x110
	cmp r0, r3
	bgt loc_811C774
	ldr r3, off_811C780 // =0xc0
	cmp r1, r3
	bgt loc_811C774
	mov r0, #1
	pop {pc}
loc_811C774:
	mov r0, #0
	pop {pc}
dword_811C778: .word 0xFFFFFFE0
off_811C77C: .word 0x110
off_811C780: .word 0xC0
	thumb_func_end sub_811C754

	thumb_local_start
sub_811C784:
	ldr r0, [r5,#0x18]
	mov r2, #0x14
	ldrsh r1, [r5,r2]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [r5,#0x18]
	ldr r0, [r5,#0x1c]
	mov r2, #0x16
	ldrsh r1, [r5,r2]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [r5,#0x1c]
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_811C784

	thumb_local_start
sub_811C7A0:
	push {lr}
	ldrh r0, [r5,#0x1a]
	ldrh r1, [r5,#0x1e]
	bl sprite_setCoordinates
	pop {pc}
byte_811C7AC: .byte 0x18, 0x0, 0x8, 0x0, 0x75, 0x0, 0x41, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x4, 0x0, 0x14, 0x0, 0x0, 0x0, 0x14, 0x0
	.byte 0x8C, 0x0, 0x94, 0x1, 0x30, 0x1, 0x90, 0x0, 0x8, 0x1, 0xC, 0x0, 0x18
	.byte 0x0, 0x8, 0x0, 0x7B, 0x0, 0x4D, 0x0, 0x0, 0x0, 0x0, 0x80, 0x10, 0x0
	.byte 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x35, 0x0, 0x6C, 0x0, 0x30, 0x0, 0x10
	.byte 0x1, 0x80, 0x0, 0x5, 0x1, 0xC, 0x0
byte_811C7F4: .byte 0x18, 0x0, 0x8, 0x0, 0x82, 0x0, 0x46, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x2, 0x0, 0x14, 0x0, 0x0, 0x0, 0x12, 0x0
	.byte 0x5C, 0x0, 0x90, 0x1, 0x40, 0x1, 0x90, 0x0, 0x81, 0x0, 0xC, 0x0
byte_811C81A: .byte 0x18, 0x0, 0x8, 0x0, 0x85, 0x0, 0x50, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x19, 0x0, 0x44, 0x0, 0x90, 0x1
	.byte 0x40, 0x1, 0x95, 0x0, 0x75, 0x0, 0xC, 0x0, 0x18, 0x0, 0x8, 0x0, 0x87
	.byte 0x0, 0x50, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10, 0x0, 0x0, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0x1B, 0x0, 0x3F, 0x0, 0x90, 0x1, 0x40, 0x1, 0x95, 0x0, 0x75
	.byte 0x0, 0xC, 0x0
byte_811C85E: .byte 0x18, 0x0, 0x8, 0x0, 0x81, 0x0, 0x55, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x21, 0x0
	.byte 0x36, 0x0, 0x40, 0x1, 0x3, 0x1, 0x60, 0x0, 0x90, 0x0, 0xC, 0x0
byte_811C884: .byte 0x18, 0x0, 0x8, 0x0, 0x80, 0x0, 0x5A, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x2B, 0x0, 0x22, 0x0, 0x78, 0x1
	.byte 0x6, 0x1, 0x50, 0x0, 0x41, 0x0, 0xC, 0x0
byte_811C8A6: .byte 0x18, 0x0, 0x8, 0x0, 0x7A, 0x0, 0x50, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x1C, 0x0, 0x10, 0x0, 0x50, 0x1
	.byte 0x30, 0x1, 0x90, 0x0, 0x83, 0x0, 0xC, 0x0, 0x18, 0x0, 0x8, 0x0, 0x79
	.byte 0x0, 0x58, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10, 0x0, 0x0, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0x26, 0x0, 0xC, 0x0, 0x20, 0x0, 0x20, 0x1, 0x0, 0x1, 0x75
	.byte 0x0, 0xC, 0x0
byte_811C8EA: .byte 0x18, 0x0, 0x8, 0x0, 0x73, 0x0, 0x5A, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x2, 0x0, 0x14, 0x0, 0x0, 0x0, 0x14, 0x0
	.byte 0xF0, 0x0, 0x60, 0x1, 0x30, 0x1, 0x79, 0x0, 0x6, 0x1, 0xC, 0x0, 0x18
	.byte 0x0, 0x8, 0x0, 0x75, 0x0, 0x56, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10, 0x0
	.byte 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x25, 0x0, 0xE6, 0x0, 0x25, 0x0, 0x50
	.byte 0x1, 0x90, 0x0, 0x75, 0x0, 0xC, 0x0
byte_811C932: .byte 0x18, 0x0, 0x8, 0x0, 0x6E, 0x0, 0x52, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x15, 0x0, 0xD0, 0x0, 0x83, 0x0
	.byte 0x52, 0x1, 0x90, 0x0, 0x71, 0x0, 0xC, 0x0, 0x18, 0x0, 0x8, 0x0, 0x73
	.byte 0x0, 0x50, 0x0, 0x0, 0x0, 0x0, 0x80, 0x10, 0x0, 0x0, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0x32, 0x0, 0xC0, 0x0, 0x20, 0x0, 0x39, 0x1, 0x0, 0x1, 0x75
	.byte 0x0, 0xC, 0x0
byte_811C976: .byte 0x18, 0x0, 0x8, 0x0, 0x76, 0x0, 0x4D, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x16, 0x0
	.byte 0xB0, 0x0, 0x70, 0x1, 0x40, 0x1, 0x0, 0x1, 0x76, 0x0, 0xC, 0x0, 0x18
	.byte 0x0, 0x8, 0x0, 0x71, 0x0, 0x46, 0x0, 0x5, 0x0, 0x0, 0x80, 0x10, 0x0
	.byte 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x1B, 0x0, 0xA0, 0x0, 0x90, 0x1, 0x43
	.byte 0x1, 0x0, 0x1, 0x65, 0x0, 0xC, 0x0, 0x0, 0x0
off_811C9C0: .word byte_811C7AC
	.word 0x0
	.word byte_811C7F4
	.word byte_811C81A
	.word 0x0
	.word byte_811C85E
	.word byte_811C884
	.word byte_811C8A6
	.word 0x0
	.word byte_811C8EA
	.word 0x0
	.word byte_811C932
	.word 0x0
	.word byte_811C976
	.word 0x0
	thumb_func_end sub_811C7A0

	thumb_func_start sub_811C9FC
sub_811C9FC:
	push {lr}
	ldr r0, off_811CA0C // =off_811CA10
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811CA0C: .word off_811CA10
off_811CA10: .word sub_811CA1C+1
	.word sub_811CA94+1
	.word sub_811CAE4+1
	thumb_func_end sub_811C9FC

	thumb_local_start
sub_811CA1C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x89
	ldr r1, off_811CA90 // =unk_201BA04
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	bl sprite_makeScalable
	mov r0, #0
	mov r1, #0x80
	mov r2, #0x80
	bl sprite_setScaleParameters
	mov r0, #0
	ldrb r1, [r5,#4]
	add r0, r0, r1
	bl sub_800304A
	ldrb r0, [r5,#4]
	mov r1, #0x30
	mul r0, r1
	ldr r1, off_811CA8C // =0x80
	add r0, r0, r1
	bl sub_800306C
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	mov r1, #0
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811CC4E
	tst r0, r0
	beq loc_811CA84
	bl sub_811CA94
	pop {pc}
loc_811CA84:
	bl sub_804668A
	pop {pc}
	.balign 4, 0x00
off_811CA8C: .word 0x80
off_811CA90: .word unk_201BA04
	thumb_func_end sub_811CA1C

	thumb_local_start
sub_811CA94:
	push {lr}
loc_811CA96:
	bl sub_811CC68
	ldrh r0, [r0]
	ldr r1, off_811CAC0 // =off_811CAC4
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bne loc_811CA96
	ldrb r4, [r5]
	mov r1, #2
	bic r4, r1
	ldrh r0, [r5,#0x1a]
	ldr r2, dword_811CAE0 // =0x1150
	cmp r0, r2
	blt loc_811CAB6
	orr r4, r1
loc_811CAB6:
	strb r4, [r5]
	bl sprite_update
	pop {pc}
	.byte 0, 0
off_811CAC0: .word off_811CAC4
off_811CAC4: .word sub_811CAEC+1
	.word sub_811CBA0+1
	.word sub_811CBD0+1
	.word sub_811CC02+1
	.word sub_811CC0C+1
	.word sub_811CC26+1
	.word sub_811CC3A+1
dword_811CAE0: .word 0x1150
	thumb_func_end sub_811CA94

	thumb_local_start
sub_811CAE4:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811CAE4

	thumb_local_start
sub_811CAEC:
	push {lr}
	sub sp, sp, #0x10
	ldrb r0, [r5,#9]
	tst r0, r0
	bne loc_811CB12
	mov r0, #1
	strb r0, [r5,#9]
	bl sub_811CC68
	ldrh r1, [r0,#2]
	str r1, [r5,#0x10]
	ldrh r1, [r0,#6]
	strh r1, [r5,#0x16]
	ldrh r1, [r0,#8]
	strh r1, [r5,#0x18]
	ldrh r1, [r0,#0xa]
	strh r1, [r5,#0x1c]
	ldrh r1, [r0,#0xc]
	strh r1, [r5,#0x1e]
loc_811CB12:
	bl sub_811CC68
	ldrh r1, [r0,#4]
	ldr r2, off_811CC6C // =math_sinTable
	lsl r3, r1, #1
	ldrsh r2, [r2,r3]
	str r2, [sp]
	ldr r2, off_811CC70 // =math_cosTable
	lsl r3, r1, #1
	ldrsh r2, [r2,r3]
	str r2, [sp,#4]
	ldrh r1, [r5,#0x16]
	ldrh r2, [r5,#0x14]
	add r1, r1, r2
	strh r1, [r5,#0x14]
	ldr r2, [sp]
	mul r2, r1
	asr r2, r2, #4
	str r2, [sp]
	ldr r2, [sp,#4]
	mul r2, r1
	asr r2, r2, #4
	str r2, [sp,#4]
	mov r0, #0
	ldrh r1, [r5,#0x1c]
	ldrh r2, [r5,#0x1a]
	sub r2, r2, r1
	cmp r2, #0
	bge loc_811CB4E
	mov r2, #0
loc_811CB4E:
	strh r2, [r5,#0x1a]
	mov r1, r2
	lsr r1, r1, #8
	lsr r2, r2, #8
	bl sprite_setScaleParameters
	ldrh r1, [r5,#0x16]
	ldrh r2, [r5,#0x18]
	add r2, r2, r1
	strh r2, [r5,#0x16]
	ldrh r1, [r5,#0x1c]
	ldrh r2, [r5,#0x1e]
	add r2, r2, r1
	strh r2, [r5,#0x1c]
	bl sprite_getCoordinates
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r3, [sp]
	add r0, r0, r3
	ldr r3, [sp,#4]
	add r1, r1, r3
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl sprite_setCoordinates
	add sp, sp, #0x10
	ldr r0, [r5,#0x10]
	sub r0, #1
	str r0, [r5,#0x10]
	bge loc_811CB9C
	mov r0, #0
	strb r0, [r5,#9]
	str r0, [r5,#0x10]
	mov r0, #0xe
	bl sub_811CC60
	mov r0, #1
	pop {pc}
loc_811CB9C:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_811CAEC

	thumb_local_start
sub_811CBA0:
	push {lr}
	ldrb r0, [r5,#9]
	tst r0, r0
	bne loc_811CBB4
	mov r0, #1
	strb r0, [r5,#9]
	bl sub_811CC68
	ldrh r0, [r0,#2]
	str r0, [r5,#0x10]
loc_811CBB4:
	ldr r0, [r5,#0x10]
	sub r0, #1
	str r0, [r5,#0x10]
	bge loc_811CBCC
	mov r0, #0
	strb r0, [r5,#9]
	str r0, [r5,#0x10]
	mov r0, #4
	bl sub_811CC60
	mov r0, #1
	pop {pc}
loc_811CBCC:
	mov r0, #0
	pop {pc}
	thumb_func_end sub_811CBA0

	thumb_local_start
sub_811CBD0:
	push {lr}
	bl sub_811CC68
	mov r2, #4
	ldrsh r1, [r0,r2]
	mov r2, #2
	ldrsh r0, [r0,r2]
	bl sprite_setCoordinates
	bl sub_811CC68
	ldrh r1, [r0,#6]
	strh r1, [r5,#0x14]
	ldrh r1, [r0,#8]
	strh r1, [r5,#0x1a]
	mov r0, #0
	lsr r1, r1, #8
	mov r2, r1
	bl sprite_setScaleParameters
	mov r0, #0xa
	bl sub_811CC60
	mov r0, #1
	pop {pc}
	thumb_func_end sub_811CBD0

	thumb_local_start
sub_811CC02:
	push {lr}
	bl sub_811CC4E
	mov r0, #1
	pop {pc}
	thumb_func_end sub_811CC02

	thumb_local_start
sub_811CC0C:
	push {lr}
	bl sub_811CC68
	ldrh r0, [r0,#2]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	mov r0, #4
	bl sub_811CC60
	mov r0, #1
	pop {pc}
	thumb_func_end sub_811CC0C

	thumb_local_start
sub_811CC26:
	push {lr}
	ldrb r0, [r5]
	mov r1, #2
	orr r0, r1
	strb r0, [r5]
	mov r0, #2
	bl sub_811CC60
	mov r0, #1
	pop {pc}
	thumb_func_end sub_811CC26

	thumb_local_start
sub_811CC3A:
	push {lr}
	ldrb r0, [r5]
	mov r1, #2
	bic r0, r1
	strb r0, [r5]
	mov r0, #2
	bl sub_811CC60
	mov r0, #1
	pop {pc}
	thumb_func_end sub_811CC3A

	thumb_local_start
sub_811CC4E:
	ldrb r0, [r5,#4]
	ldr r1, off_811CC5C // =off_811C9C0
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0xc]
	mov pc, lr
	.balign 4, 0x00
off_811CC5C: .word off_811C9C0
	thumb_func_end sub_811CC4E

	thumb_local_start
sub_811CC60:
	ldr r1, [r5,#0xc]
	add r0, r0, r1
	str r0, [r5,#0xc]
	mov pc, lr
	thumb_func_end sub_811CC60

	thumb_local_start
sub_811CC68:
	ldr r0, [r5,#0xc]
	mov pc, lr
off_811CC6C: .word math_sinTable
off_811CC70: .word math_cosTable
	thumb_func_end sub_811CC68

	thumb_func_start sub_811CC74
sub_811CC74:
	push {lr}
	ldr r0, off_811CC84 // =off_811CC88
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811CC84: .word off_811CC88
off_811CC88: .word sub_811CC94+1
	.word sub_811CD08+1
	.word sub_811D2E0+1
	thumb_func_end sub_811CC74

	thumb_local_start
sub_811CC94:
	push {r4,lr}
	mov r4, #1
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#8]
	ldr r0, byte_811CCC4 // =0xf8
	mov r1, #0x80
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0
	strb r0, [r5,#0x12]
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#4]
	lsl r0, r0, #2
	ldr r1, off_811CCCC // =off_811CCD0
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bl sub_811CD08
	pop {r4,pc}
	.balign 4, 0x00
byte_811CCC4: .byte 0xF8, 0xFF, 0xFF, 0xFF, 0xF8, 0x0, 0x0, 0x0
off_811CCCC: .word off_811CCD0
off_811CCD0: .word sub_811D2F8+1
	.word sub_811D464+1
	.word sub_811D410+1
	.word sub_811D6F4+1
	.word sub_811D7D0+1
	.word sub_811D464+1
	.word sub_811D954+1
	.word sub_811D2F8+1
	.word sub_811DA00+1
	.word sub_811D530+1
	.word sub_811D894+1
	.word sub_811DA94+1
	.word sub_811DAF0+1
	.word sub_811DB7C+1
	thumb_func_end sub_811CC94

	thumb_local_start
sub_811CD08:
	push {lr}
	ldr r0, off_811CD24 // =off_811CD28
	ldrb r1, [r5,#4]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldrb r0, [r5,#7]
	tst r0, r0
	bne locret_811CD20
	bl sprite_update
locret_811CD20:
	pop {pc}
	.balign 4, 0x00
off_811CD24: .word off_811CD28
off_811CD28: .word sub_811CD60+1
	.word sub_811CD94+1
	.word sub_811CF94+1
	.word sub_811CD94+1
	.word sub_811CD60+1
	.word sub_811CD94+1
	.word sub_811CFA4+1
	.word sub_811D0AC+1
	.word sub_811D124+1
	.word sub_811D1B8+1
	.word sub_811D1B8+1
	.word sub_811D2C4+1
	.word sub_811D2C8+1
	.word sub_811D1B8+1
	thumb_func_end sub_811CD08

	thumb_local_start
sub_811CD60:
	push {lr}
	ldrb r0, [r5,#9]
	tst r0, r0
	bne loc_811CD76
	ldrb r0, [r5,#0xc]
	tst r0, r0
	beq locret_811CD92
	strb r0, [r5,#0x12]
	mov r0, #1
	strb r0, [r5,#9]
	b locret_811CD92
loc_811CD76:
	mov r2, #2
	ldrb r0, [r5,#0x12]
	mov r1, #2
	and r1, r0
	beq loc_811CD82
	mov r2, #0
loc_811CD82:
	ldrb r1, [r5]
	eor r1, r2
	strb r1, [r5]
	sub r0, #1
	strb r0, [r5,#0x12]
	bne locret_811CD92
	mov r0, #8
	strb r0, [r5,#8]
locret_811CD92:
	pop {pc}
	thumb_func_end sub_811CD60

	thumb_local_start
sub_811CD94:
	push {lr}
	ldr r0, off_811CDA4 // =off_811CDA8
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811CDA4: .word off_811CDA8
off_811CDA8: .word sub_811CDC8+1
	.word sub_811CDF4+1
	.word sub_811CE34+1
	.word sub_811CE64+1
	.word sub_811CE88+1
	.word sub_811CEC4+1
	.word sub_811CF44+1
	.word sub_811CF64+1
	thumb_func_end sub_811CD94

	thumb_local_start
sub_811CDC8:
	push {lr}
	ldrb r0, [r5,#0xc]
	cmp r0, #0xf
	bne loc_811CDE0
	push {r0}
	ldrb r0, [r5,#4]
	cmp r0, #1
	bne loc_811CDDE
	mov r0, #0x8d
	bl sound_play // () -> void
loc_811CDDE:
	pop {r0}
loc_811CDE0:
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CDF2
	mov r0, #4
	strb r0, [r5,#9]
	bl sub_8002EE8
	mov r0, #0x20
	strb r0, [r5,#0xc]
locret_811CDF2:
	pop {pc}
	thumb_func_end sub_811CDC8

	thumb_local_start
sub_811CDF4:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CE2C
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_811CE14
	mov r1, #2
	ldrb r0, [r5]
	bic r0, r1
	strb r0, [r5]
	ldrb r0, [r5,#5]
	add r0, #5
	strb r0, [r5,#5]
	b loc_811CE18
loc_811CE14:
	bl sub_811D5F8
loc_811CE18:
	mov r0, #0xf
	strb r0, [r5,#0xc]
	mov r0, #8
	strb r0, [r5,#9]
	ldr r0, off_811CE30 // =0x1cd
	bl sound_play // () -> void
	mov r0, #0xf7
	bl sound_play // () -> void
locret_811CE2C:
	pop {pc}
	.byte 0, 0
off_811CE30: .word 0x1CD
	thumb_func_end sub_811CDF4

	thumb_local_start
sub_811CE34:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CE62
	mov r0, #0x10
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_811CE52
	mov r0, #0xc
	strb r0, [r5,#9]
	bl sub_811D6F4
	b locret_811CE62
loc_811CE52:
	mov r0, #0x1c
	strb r0, [r5,#9]
	bl sub_811DBD0
	mov r0, #0x10
	strb r0, [r5,#0xc]
	mov r0, #0
	strb r0, [r5,#0xe]
locret_811CE62:
	pop {pc}
	thumb_func_end sub_811CE34

	thumb_local_start
sub_811CE64:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CE80
	mov r0, #0x10
	strb r0, [r5,#9]
	bl sub_8002EE8
	mov r0, #0x14
	strb r0, [r5,#0xc]
	ldr r0, off_811CE84 // =0x100
	bl sound_play // () -> void
locret_811CE80:
	pop {pc}
	.balign 4, 0x00
off_811CE84: .word 0x100
	thumb_func_end sub_811CE64

	thumb_local_start
sub_811CE88:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CEB4
	mov r0, #0x14
	strb r0, [r5,#9]
	mov r0, #0xa
	strb r0, [r5,#0xc]
	ldrb r0, [r5,#7]
	tst r0, r0
	bne locret_811CEB4
	ldr r1, off_811CEB8 // =byte_811CEBC
	ldrb r0, [r5,#5]
	sub r0, #5
	ldrb r0, [r1,r0]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
locret_811CEB4:
	pop {pc}
	.balign 4, 0x00
off_811CEB8: .word byte_811CEBC
byte_811CEBC: .byte 0x11, 0x17, 0x13, 0x15, 0x19, 0x0, 0x0, 0x0
	thumb_func_end sub_811CE88

	thumb_local_start
sub_811CEC4:
	push {r4,lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CF1A
	ldrb r0, [r5,#7]
	tst r0, r0
	bne loc_811CEE8
	ldr r1, off_811CF1C // =byte_811CF3C
	ldrb r0, [r5,#5]
	sub r0, #5
	ldrb r0, [r1,r0]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
loc_811CEE8:
	ldrb r0, [r5,#4]
	cmp r0, #5
	bne loc_811CF12
	mov r0, #0x10
	strb r0, [r5,#0xb]
	ldr r1, off_811CF20 // =byte_811CF28
	ldrb r0, [r5,#5]
	sub r0, #5
	lsl r4, r0, #1
	ldrh r0, [r1,r4]
	bl sound_play // () -> void
	ldr r1, off_811CF24 // =byte_811CF32
	ldrh r0, [r1,r4]
	mov r1, #0xff
	lsl r2, r1, #8
	orr r1, r2
	cmp r0, r1
	beq loc_811CF12
	bl sound_play // () -> void
loc_811CF12:
	mov r0, #0x28
	strb r0, [r5,#0xc]
	mov r0, #0x18
	strb r0, [r5,#9]
locret_811CF1A:
	pop {r4,pc}
off_811CF1C: .word byte_811CF3C
off_811CF20: .word byte_811CF28
off_811CF24: .word byte_811CF32
byte_811CF28: .byte 0xF4, 0x0, 0xB7, 0x0, 0xB8, 0x0, 0xBF, 0x1, 0xFF, 0x0
byte_811CF32: .byte 0xB8, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xC7, 0x1, 0xFF, 0xFF
byte_811CF3C: .byte 0x12, 0x18, 0x14, 0x16, 0x19, 0x0, 0x0, 0x0
	thumb_func_end sub_811CEC4

	thumb_local_start
sub_811CF44:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CF52
	mov r0, #8
	strb r0, [r5,#8]
locret_811CF52:
	pop {pc}
	.word byte_811CF58
byte_811CF58: .byte 0xF4, 0x0, 0xB7, 0x0, 0xB8, 0x0, 0xBF, 0x1, 0xFF, 0x0, 0x0, 0x0
	thumb_func_end sub_811CF44

	thumb_local_start
sub_811CF64:
	push {lr}
	ldrb r0, [r5,#0xe]
	add r0, #2
	cmp r0, #0x1f
	blt loc_811CF70
	mov r0, #0x1f
loc_811CF70:
	strb r0, [r5,#0xe]
	ldrb r0, [r5,#0xc]
	sub r0, #1
	bgt loc_811CF7E
	mov r0, #8
	strb r0, [r5,#8]
	mov r0, #0
loc_811CF7E:
	strb r0, [r5,#0xc]
	ldrb r3, [r5,#0xe]
	mov r0, r3
	lsl r1, r3, #5
	orr r0, r1
	lsl r1, r3, #0xa
	orr r0, r1
	bl sprite_setColorShader
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811CF64

	thumb_local_start
sub_811CF94:
	push {lr}
	ldrb r0, [r5,#0x12]
	sub r0, #1
	strb r0, [r5,#0x12]
	bne locret_811CFA2
	mov r0, #8
	strb r0, [r5,#8]
locret_811CFA2:
	pop {pc}
	thumb_func_end sub_811CF94

	thumb_local_start
sub_811CFA4:
	push {lr}
	ldr r0, off_811CFB4 // =off_811CFB8
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811CFB4: .word off_811CFB8
off_811CFB8: .word sub_811CFD0+1
	.word sub_811CFEC+1
	.word sub_811D020+1
	.word sub_811D058+1
	.word sub_811D080+1
	.word sub_811D0A8+1
	thumb_func_end sub_811CFA4

	thumb_local_start
sub_811CFD0:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811CFE2
	ldr r0, byte_811CFE4 // =0x1e
	strh r0, [r5,#0xc]
	mov r0, #4
	strb r0, [r5,#9]
locret_811CFE2:
	pop {pc}
byte_811CFE4: .byte 0x1E, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0
	thumb_func_end sub_811CFD0

	thumb_local_start
sub_811CFEC:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	ble loc_811CFF8
	strb r0, [r5,#0xc]
	bne locret_811D014
loc_811CFF8:
	ldr r0, dword_811D018 // =0xffff
	bl sprite_setColorShader
	mov r0, #0x1f
	strh r0, [r5,#0xe]
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #3
	strh r0, [r5,#0xc]
	mov r0, #8
	strb r0, [r5,#9]
	ldr r0, off_811D01C // =0x194
	bl sound_play // () -> void
locret_811D014:
	pop {pc}
	.balign 4, 0x00
dword_811D018: .word 0xFFFF
off_811D01C: .word 0x194
	thumb_func_end sub_811CFEC

	thumb_local_start
sub_811D020:
	push {lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D056
	ldrh r0, [r5,#0xe]
	sub r0, #1
	strh r0, [r5,#0xe]
	cmp r0, #0
	bne loc_811D03C
	mov r0, #0xc
	strb r0, [r5,#9]
	mov r0, #0x3c
	b loc_811D03E
loc_811D03C:
	mov r0, #3
loc_811D03E:
	strh r0, [r5,#0xc]
	ldrb r3, [r5,#0xe]
	mov r0, r3
	lsl r1, r3, #5
	orr r0, r1
	lsl r1, r3, #0xa
	orr r0, r1
	mov r1, #1
	lsl r1, r1, #0xf
	orr r0, r1
	bl sprite_setColorShader
locret_811D056:
	pop {pc}
	thumb_func_end sub_811D020

	thumb_local_start
sub_811D058:
	push {lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D07C
	mov r0, #4
	ldrb r1, [r5,#0x10]
	add r0, r0, r1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xf
	strh r0, [r5,#0xc]
	mov r0, #0x10
	strb r0, [r5,#9]
locret_811D07C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811D058

	thumb_local_start
sub_811D080:
	push {lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D0A4
	mov r0, #5
	ldrb r1, [r5,#0x10]
	add r0, r0, r1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0x14
	strb r0, [r5,#9]
	mov r0, #0x32
	strh r0, [r5,#0xc]
locret_811D0A4:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811D080

	thumb_local_start
sub_811D0A8:
	push {lr}
	pop {pc}
	thumb_func_end sub_811D0A8

	thumb_local_start
sub_811D0AC:
	push {lr}
	ldr r0, off_811D0BC // =off_811D0C0
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811D0BC: .word off_811D0C0
off_811D0C0: .word sub_811D0CC+1
	.word sub_811D0EC+1
	.word sub_811D120+1
	thumb_func_end sub_811D0AC

	thumb_local_start
sub_811D0CC:
	push {lr}
	mov r0, #0x80
	mov r1, #0x80
	bl sprite_setCoordinates
	ldr r0, dword_811D0E8 // =0x10
	strh r0, [r5,#0xc]
	mov r0, #4
	strb r0, [r5,#9]
	mov r0, #0x76
	bl sound_play // () -> void
	pop {pc}
	.balign 4, 0x00
dword_811D0E8: .word 0x10
	thumb_func_end sub_811D0CC

	thumb_local_start
sub_811D0EC:
	push {lr}
	ldrb r0, [r5,#0xc]
	sub r0, #1
	strb r0, [r5,#0xc]
	bne locret_811D11E
	mov r0, #0x8a
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #2
	bl sub_8002E14
	mov r0, #3
	bl sub_8003060
	mov r0, #0x1e
	strb r0, [r5,#0xc]
	mov r0, #8
	strb r0, [r5,#9]
locret_811D11E:
	pop {pc}
	thumb_func_end sub_811D0EC

	thumb_local_start
sub_811D120:
	push {lr}
	pop {pc}
	thumb_func_end sub_811D120

	thumb_local_start
sub_811D124:
	push {lr}
	ldr r0, off_811D134 // =off_811D138
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811D134: .word off_811D138
off_811D138: .word sub_811D148+1
	.word sub_811D15C+1
	.word sub_811D19C+1
	.word sub_811D1B4+1
	thumb_func_end sub_811D124

	thumb_local_start
sub_811D148:
	push {lr}
	ldr r0, dword_811D158 // =0xcf
	strh r0, [r5,#0xc]
	mov r0, #4
	strb r0, [r5,#9]
	mov r0, #0
	strb r0, [r5,#0xa]
	pop {pc}
dword_811D158: .word 0xCF
	thumb_func_end sub_811D148

	thumb_local_start
sub_811D15C:
	push {r4,lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D18E
	ldrb r4, [r5,#0xa]
	ldr r1, off_811D190 // =dword_811D198
	ldrh r0, [r1,r4]
	add r4, #2
	ldrh r1, [r1,r4]
	strh r1, [r5,#0xc]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldrb r0, [r5,#5]
	cmp r0, #0
	bne loc_811D18A
	ldr r0, dword_811D194 // =0x1c6
	bl sound_play // () -> void
loc_811D18A:
	mov r0, #8
	strb r0, [r5,#9]
locret_811D18E:
	pop {r4,pc}
off_811D190: .word dword_811D198
dword_811D194: .word 0x1C6
dword_811D198: .word 0x7000C
	thumb_func_end sub_811D15C

	thumb_local_start
sub_811D19C:
	push {lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D1B2
	mov r0, #1
	strh r0, [r5,#0xc]
	mov r1, #4
	mov r1, #0xc
	strb r1, [r5,#9]
	strb r0, [r5,#0xa]
locret_811D1B2:
	pop {pc}
	thumb_func_end sub_811D19C

	thumb_local_start
sub_811D1B4:
	push {lr}
	pop {pc}
	thumb_func_end sub_811D1B4

	thumb_local_start
sub_811D1B8:
	push {lr}
	ldr r0, off_811D1C8 // =off_811D1CC
	ldrb r1, [r5,#9]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811D1C8: .word off_811D1CC
off_811D1CC: .word sub_811D1DC+1
	.word sub_811D20C+1
	.word sub_811D248+1
	.word sub_811D2C0+1
	thumb_func_end sub_811D1B8

	thumb_local_start
sub_811D1DC:
	push {lr}
	ldr r0, off_811D1F0 // =byte_811D1F4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	strh r0, [r5,#0xc]
	mov r0, #4
	strb r0, [r5,#9]
	pop {pc}
	.byte 0, 0
off_811D1F0: .word byte_811D1F4
byte_811D1F4: .byte 0x5, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0xF, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0
	.byte 0x0, 0x19, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0
	thumb_func_end sub_811D1DC

	thumb_local_start
sub_811D20C:
	push {lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D238
	mov r0, #0xa
	strh r0, [r5,#0xc]
	ldr r1, off_811D23C // =byte_811D240
	ldrb r0, [r5,#5]
	ldrb r0, [r1,r0]
	cmp r0, #0xff
	beq loc_811D234
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r1, #0x23
	strb r1, [r5]
loc_811D234:
	mov r0, #8
	strb r0, [r5,#9]
locret_811D238:
	pop {pc}
	.balign 4, 0x00
off_811D23C: .word byte_811D240
byte_811D240: .byte 0x11, 0x0, 0x13, 0x15, 0x19, 0xFF, 0x0, 0x0
	thumb_func_end sub_811D20C

	thumb_local_start
sub_811D248:
	push {r4,lr}
	ldrh r0, [r5,#0xc]
	sub r0, #1
	strh r0, [r5,#0xc]
	bne locret_811D296
	mov r1, #0x23
	strb r1, [r5]
	ldr r1, off_811D298 // =byte_811D2B8
	ldrb r0, [r5,#5]
	ldrb r0, [r1,r0]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xc
	strb r0, [r5,#9]
	ldrb r0, [r5,#4]
	cmp r0, #9
	bne locret_811D296
	ldrb r0, [r5,#5]
	cmp r0, #5
	beq locret_811D296
	ldr r1, off_811D29C // =byte_811D2A4
	ldrb r0, [r5,#5]
	lsl r4, r0, #1
	ldrh r0, [r1,r4]
	bl sound_play // () -> void
	ldr r1, off_811D2A0 // =byte_811D2AE
	ldrh r0, [r1,r4]
	mov r1, #0xff
	lsl r2, r1, #8
	orr r1, r2
	cmp r0, r1
	beq locret_811D296
	bl sound_play // () -> void
locret_811D296:
	pop {r4,pc}
off_811D298: .word byte_811D2B8
off_811D29C: .word byte_811D2A4
off_811D2A0: .word byte_811D2AE
byte_811D2A4: .byte 0xF4, 0x0, 0xB7, 0x0, 0xB8, 0x0, 0xBF, 0x1, 0xFF, 0x0
byte_811D2AE: .byte 0xB8, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xC7, 0x1, 0xFF, 0xFF
byte_811D2B8: .byte 0x12, 0xB, 0x14, 0x16, 0x19, 0x13, 0x0, 0x0
	thumb_func_end sub_811D248

	thumb_local_start
sub_811D2C0:
	push {lr}
	pop {pc}
	thumb_func_end sub_811D2C0

	thumb_local_start
sub_811D2C4:
	push {lr}
	pop {pc}
	thumb_func_end sub_811D2C4

	thumb_local_start
sub_811D2C8:
	push {lr}
	ldrh r0, [r5,#0xc]
	tst r0, r0
	bne loc_811D2D6
	mov r1, #0x23
	strb r1, [r5]
	b loc_811D2DA
loc_811D2D6:
	sub r0, #1
	strh r0, [r5,#0xc]
loc_811D2DA:
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811D2C8

	thumb_local_start
sub_811D2E0:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811D2E0

	thumb_local_start
sub_811D2E8:
	push {r5,lr}
	bl getStructFrom2008450
	beq locret_811D2F6
	mov r5, r1
	bl sub_804668A
locret_811D2F6:
	pop {r5,pc}
	thumb_func_end sub_811D2E8

	thumb_local_start
sub_811D2F8:
	push {r4-r7,lr}
	mov r1, #0x23
	strb r1, [r5]
	ldrb r0, [r5,#5]
	lsl r4, r0, #2
	ldrb r0, [r5,#6]
	lsl r6, r0, #2
	ldr r1, off_811D3C4 // =off_811D3C8
	ldr r0, [r1,r4]
	lsl r0, r0, #1
	bcs loc_811D312
	lsr r0, r0, #1
	b loc_811D320
loc_811D312:
	lsr r0, r0, #1
	ldr r1, off_811D3B8 // =off_811D3BC
	ldr r7, [r1,r6]
	// dest
	mov r1, r7
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	add r1, r7, #4
loc_811D320:
	ldr r0, off_811D398 // =byte_811D39C
	ldr r0, [r0,r4]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	lsr r1, r6, #2
	ldr r0, off_811D3E4 // =byte_811D404
	ldrb r0, [r0,r1]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811D38C // =byte_811D390
	ldr r0, [r0,r6]
	bl sub_800306C
	lsr r1, r6, #2
	ldr r0, off_811D3E8 // =byte_811D40B
	ldrb r0, [r0,r1]
	bl sub_800304A
	mov r0, #3
	bl sub_8003060
	ldr r1, off_811D3EC // =byte_811D3FC
	ldrh r0, [r1,r6]
	add r2, r6, #2
	ldrh r1, [r1,r2]
	bl sub_811DC00
	strh r0, [r5,#0x1a]
	strh r1, [r5,#0x1e]
	bl sprite_setCoordinates
	ldr r1, off_811D3F0 // =off_811D3F4
	ldr r0, [r1,r6]
	strh r0, [r5,#0x14]
	mov r0, #0
	strh r0, [r5,#0x16]
	mov r0, #0
	tst r6, r6
	beq loc_811D384
	mov r0, #1
loc_811D384:
	bl sprite_setFlip
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811D38C: .word byte_811D390
byte_811D390: .byte 0x0, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0
off_811D398: .word byte_811D39C
byte_811D39C: .byte 0x8A, 0x0, 0x0, 0x0, 0x44, 0x0, 0x0, 0x0, 0x45, 0x0, 0x0, 0x0, 0x46
	.byte 0x0, 0x0, 0x0, 0x47, 0x0, 0x0, 0x0, 0x48, 0x0, 0x0, 0x0, 0x19, 0x0
	.byte 0x0, 0x0
off_811D3B8: .word off_811D3BC
off_811D3BC: .word unk_201AA00
	.word eTextScript201BA00
off_811D3C4: .word off_811D3C8
off_811D3C8: .word battleSpriteMegaMan
	.word battleSpriteSpoutMan
	.word sprite_829D818
	.word sprite_82A5AF0
	.word sprite_82B0690
	.word sprite_82BA7BC
	.word sprite_849B424
off_811D3E4: .word byte_811D404
off_811D3E8: .word byte_811D40B
off_811D3EC: .word byte_811D3FC
off_811D3F0: .word off_811D3F4
off_811D3F4: .word 0x700
	.word 0xFFFFF900
byte_811D3FC: .byte 0xF8, 0xFF, 0x80, 0x0, 0xF8, 0x0, 0x80, 0x0
byte_811D404: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811D40B: .byte 0x0, 0x1, 0x0, 0x0, 0x0
	thumb_func_end sub_811D2F8

	thumb_local_start
sub_811D410:
	push {r4-r7,lr}
	mov r1, #0x23
	strb r1, [r5]
	ldr r0, dword_811D460 // =0x8e
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811D45C // =0x180
	bl sub_800306C
	mov r0, #3
	bl sub_800304A
	mov r0, #5
	bl sub_8003060
	mov r0, #0x78
	mov r1, #0x70
	bl sub_811DC00
	bl sprite_setCoordinates
	mov r0, #0x15
	strb r0, [r5,#0x12]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811D45C: .word 0x180
dword_811D460: .word 0x8E
	thumb_func_end sub_811D410

	thumb_local_start
sub_811D464:
	push {r4-r7,lr}
	mov r1, #0x23
	strb r1, [r5]
	ldr r1, off_811D4E4 // =byte_811D4E8
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldr r1, off_811D514 // =byte_811D51C
	ldrb r0, [r5,#5]
	ldrb r0, [r1,r0]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r1, off_811D518 // =byte_811D526
	ldrb r0, [r5,#5]
	ldrb r0, [r1,r0]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #2
	bl sub_8002E14
	ldr r0, off_811D4DC // =0x100
	ldrb r1, [r5,#4]
	cmp r1, #1
	beq loc_811D4A2
	ldr r0, off_811D4E0 // =0x200
loc_811D4A2:
	bl sub_800306C
	mov r0, #2
	ldrb r1, [r5,#4]
	cmp r1, #1
	beq loc_811D4B0
	mov r0, #6
loc_811D4B0:
	bl sub_800304A
	mov r0, #4
	bl sub_8003060
	mov r0, #0x78
	mov r1, #0x80
	bl sub_811DC00
	bl sprite_setCoordinates
	mov r0, #0x10
	ldrb r1, [r5,#4]
	cmp r1, #1
	beq loc_811D4D0
	mov r0, #0x11
loc_811D4D0:
	strb r0, [r5,#0xc]
	ldr r0, dword_811D510 // =0x7fff
	bl sprite_setColorShader
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811D4DC: .word 0x100
off_811D4E0: .word 0x200
off_811D4E4: .word byte_811D4E8
byte_811D4E8: .byte 0x8A, 0x0, 0x0, 0x0, 0x8A, 0x0, 0x0, 0x0, 0x8A, 0x0, 0x0, 0x0, 0x8A
	.byte 0x0, 0x0, 0x0, 0x8A, 0x0, 0x0, 0x0, 0x59, 0x0, 0x0, 0x0, 0x5A, 0x0
	.byte 0x0, 0x0, 0x5B, 0x0, 0x0, 0x0, 0x5C, 0x0, 0x0, 0x0, 0x5D, 0x0, 0x0
	.byte 0x0
dword_811D510: .word 0x7FFF
off_811D514: .word byte_811D51C
off_811D518: .word byte_811D526
byte_811D51C: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811D526: .byte 0x5, 0x11, 0xB, 0xF, 0x15, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811D464

	thumb_local_start
sub_811D530:
	push {r4-r7,lr}
	mov r1, #1
	strb r1, [r5]
	ldr r1, off_811D5AC // =byte_811D5B0
	ldrb r0, [r5,#5]
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r1, off_811D5CC // =byte_811D5F2
	ldrb r0, [r5,#5]
	ldrb r0, [r1,r0]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #3
	bl sub_8002E14
	ldr r0, off_811D594 // =byte_811D598
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	ldr r0, off_811D5C4 // =byte_811D5E8
	ldrb r1, [r5,#5]
	ldrb r0, [r0,r1]
	bl sub_800304A
	ldrb r1, [r5,#5]
	ldr r0, off_811D5C8 // =byte_811D5ED
	ldrb r0, [r0,r1]
	bl sub_8003060
	ldr r1, off_811D5D0 // =byte_811D5D4
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldrh r0, [r2,r1]
	add r1, #2
	ldrh r1, [r2,r1]
	bl sprite_setCoordinates
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811D594: .word byte_811D598
byte_811D598: .byte 0x80, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x2, 0x0
	.byte 0x0, 0x80, 0x2, 0x0, 0x0
off_811D5AC: .word byte_811D5B0
byte_811D5B0: .byte 0x59, 0x0, 0x0, 0x0, 0x5A, 0x0, 0x0, 0x0, 0x5B, 0x0, 0x0, 0x0, 0x5C
	.byte 0x0, 0x0, 0x0, 0x5D, 0x0, 0x0, 0x0
off_811D5C4: .word byte_811D5E8
off_811D5C8: .word byte_811D5ED
off_811D5CC: .word byte_811D5F2
off_811D5D0: .word byte_811D5D4
byte_811D5D4: .byte 0xA8, 0x0, 0x59, 0x0, 0x38, 0x0, 0x8C, 0x0, 0x6D, 0x0, 0x55
	.byte 0x0, 0xB7, 0x0, 0x8F, 0x0, 0x48, 0x0, 0x61, 0x0
byte_811D5E8: .byte 0x2, 0x4, 0x6, 0x8, 0xA
byte_811D5ED: .byte 0x3, 0x3, 0x3, 0x3, 0x2
byte_811D5F2: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811D530

	thumb_local_start
sub_811D5F8:
	push {r7,lr}
	// src
	ldr r0, off_811D62C // =comp_82FCA14
	// dest
	ldr r1, off_811D630 // =unk_201AA00
	mov r7, r1
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	add r1, r7, #4
	ldr r0, dword_811D628 // =0x8f
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0x80
	mov r1, #0x80
	bl sub_811DC00
	bl sprite_setCoordinates
	pop {r7,pc}
dword_811D628: .word 0x8F
off_811D62C: .word comp_82FCA14
off_811D630: .word unk_201AA00
	thumb_func_end sub_811D5F8

	thumb_func_start sub_811D634
sub_811D634:
	push {r5,lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp,#4]
	mov r0, r2
	bl getStructFrom2008450
	beq loc_811D64E
	mov r5, r1
	bl sub_811D6CC
	bl sub_811D6E8
loc_811D64E:
	add sp, sp, #8
	pop {r5,pc}
	.balign 4, 0x00
	.word byte_811D658
byte_811D658: .byte 0x0, 0x0, 0x0, 0x0, 0x80, 0xFF, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x80
	.byte 0x0, 0x0, 0x0, 0x80, 0xFF, 0x0, 0x0
	thumb_func_end sub_811D634

	thumb_func_start sub_811D66C
sub_811D66C:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	mov r6, r1
	bl getStructFrom2008450
	beq loc_811D692
	mov r5, r1
	ldr r0, [sp]
	mov r1, #0x32
	lsl r1, r1, #1
	mul r0, r1
	svc 6
	tst r6, r6
	beq loc_811D690
	ldr r1, dword_811D698 // =0xffffffff
	mul r0, r1
loc_811D690:
	strh r0, [r5,#0x14]
loc_811D692:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811D698: .word 0xFFFFFFFF
	thumb_func_end sub_811D66C

	thumb_func_start sub_811D69C
sub_811D69C:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	mov r6, r1
	bl getStructFrom2008450
	beq loc_811D6C2
	mov r5, r1
	ldr r0, [sp]
	mov r1, #0x32
	lsl r1, r1, #1
	mul r0, r1
	svc 6
	tst r6, r6
	beq loc_811D6C0
	ldr r1, dword_811D6C8 // =0xffffffff
	mul r0, r1
loc_811D6C0:
	strh r0, [r5,#0x14]
loc_811D6C2:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811D6C8: .word 0xFFFFFFFF
	thumb_func_end sub_811D69C

	thumb_local_start
sub_811D6CC:
	ldr r0, [r5,#0x18]
	mov r2, #0x14
	ldrsh r1, [r5,r2]
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [r5,#0x18]
	ldr r0, [r5,#0x1c]
	mov r2, #0x16
	ldrsh r1, [r5,r2]
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [r5,#0x1c]
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_811D6CC

	thumb_local_start
sub_811D6E8:
	push {lr}
	ldrh r0, [r5,#0x1a]
	ldrh r1, [r5,#0x1e]
	bl sprite_setCoordinates
	pop {pc}
	thumb_func_end sub_811D6E8

	thumb_local_start
sub_811D6F4:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	ldrb r0, [r5,#5]
	ldr r2, off_811D774 // =byte_811D7B0
	ldrb r0, [r2,r0]
	tst r0, r0
	bne loc_811D70A
	mov r0, #1
	strb r0, [r5,#7]
	b locret_811D76C
loc_811D70A:
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #4
	bl sub_800304A
	ldrb r1, [r5,#5]
	ldr r0, off_811D780 // =byte_811D7C4
	ldrb r0, [r0,r1]
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811D770 // =0x1a0
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	ldrb r1, [r5,#5]
	ldr r0, off_811D77C // =byte_811D7BA
	ldrb r0, [r0,r1]
	bl sub_8003060
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r1, off_811D778 // =byte_811D788
	ldrsh r0, [r1,r2]
	mov r3, #0x78
	add r0, r0, r3
	add r2, #2
	ldrsh r1, [r1,r2]
	mov r3, #0x80
	add r1, r1, r3
	bl sub_811DC00
	bl sprite_setCoordinates
	mov r0, #0x10
	strb r0, [r5,#0xc]
	ldr r0, dword_811D784 // =0x7fff
	bl sprite_setColorShader
locret_811D76C:
	pop {pc}
	.byte 0, 0
off_811D770: .word 0x1A0
off_811D774: .word byte_811D7B0
off_811D778: .word byte_811D788
off_811D77C: .word byte_811D7BA
off_811D780: .word byte_811D7C4
dword_811D784: .word 0x7FFF
byte_811D788: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811D7B0: .byte 0x50, 0x91, 0x51, 0x52, 0x92, 0x53, 0x53, 0x53, 0x53
	.byte 0x53
byte_811D7BA: .byte 0x5, 0x5, 0x5, 0x5, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811D7C4: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x4, 0x6, 0x8, 0xA, 0x0, 0x0
	thumb_func_end sub_811D6F4

	thumb_local_start
sub_811D7D0:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	ldrb r0, [r5,#5]
	ldr r2, off_811D85C // =byte_811D884
	ldrb r0, [r2,r0]
	tst r0, r0
	bne loc_811D7E6
	mov r0, #1
	strb r0, [r5,#7]
	b locret_811D854
loc_811D7E6:
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #5
	bl sub_800304A
	ldrb r1, [r5,#5]
	ldr r0, off_811D868 // =byte_811D88E
	ldrb r0, [r0,r1]
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811D858 // =0x1e0
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	ldrb r1, [r5,#5]
	ldr r0, off_811D864 // =byte_811D889
	ldrb r0, [r0,r1]
	bl sub_8003060
	ldrb r2, [r5,#6]
	lsl r2, r2, #2
	ldr r1, off_811D860 // =byte_811D87C
	ldrh r0, [r1,r2]
	add r2, #2
	ldrh r1, [r1,r2]
	bl sub_811DC00
	strh r0, [r5,#0x1a]
	strh r1, [r5,#0x1e]
	bl sprite_setCoordinates
	ldrb r2, [r5,#6]
	lsl r2, r2, #2
	ldr r1, off_811D870 // =off_811D874
	ldr r0, [r1,r2]
	strh r0, [r5,#0x14]
	mov r0, #0
	strh r0, [r5,#0x16]
	mov r0, #0
	tst r6, r6
	beq loc_811D850
	mov r0, #1
loc_811D850:
	bl sprite_setFlip
locret_811D854:
	pop {pc}
	.balign 4, 0x00
off_811D858: .word 0x1E0
off_811D85C: .word byte_811D884
off_811D860: .word byte_811D87C
off_811D864: .word byte_811D889
off_811D868: .word byte_811D88E
	.word 0x7FFF
off_811D870: .word off_811D874
off_811D874: .word 0x700
	.word 0xFFFFF900
byte_811D87C: .byte 0xF8, 0xFF, 0x80, 0x0, 0xF8, 0x0, 0x80, 0x0
byte_811D884: .byte 0x4A, 0x0, 0x0, 0x4B, 0x0
byte_811D889: .byte 0x2, 0x2, 0x2, 0x2, 0x2
byte_811D88E: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811D7D0

	thumb_local_start
sub_811D894:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	ldrb r0, [r5,#5]
	ldr r2, off_811D918 // =byte_811D940
	ldrb r0, [r2,r0]
	tst r0, r0
	bne loc_811D8AA
	mov r0, #1
	strb r0, [r5,#7]
	b locret_811D8FC
loc_811D8AA:
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811D91C // =byte_811D945
	ldrb r1, [r5,#5]
	ldrb r0, [r0,r1]
	bl sub_800304A
	ldrb r1, [r5,#5]
	ldr r0, off_811D924 // =byte_811D94F
	ldrb r0, [r0,r1]
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811D900 // =off_811D904
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	mov r0, #3
	bl sub_8002E14
	ldrb r1, [r5,#5]
	ldr r0, off_811D920 // =byte_811D94A
	ldrb r0, [r0,r1]
	bl sub_8003060
	ldr r1, off_811D928 // =byte_811D92C
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldrh r0, [r2,r1]
	add r1, #2
	ldrh r1, [r2,r1]
	bl sprite_setCoordinates
locret_811D8FC:
	pop {pc}
	.byte 0, 0
off_811D900: .word off_811D904
off_811D904: .word 0x300
	.word 0x320
	.word 0x340
	.word 0x360
	.word 0x380
off_811D918: .word byte_811D940
off_811D91C: .word byte_811D945
off_811D920: .word byte_811D94A
off_811D924: .word byte_811D94F
off_811D928: .word byte_811D92C
byte_811D92C: .byte 0xA8, 0x0, 0x59, 0x0, 0x38, 0x0, 0x8C, 0x0, 0x6D, 0x0, 0x55
	.byte 0x0, 0xB7, 0x0, 0x8F, 0x0, 0x48, 0x0, 0x61, 0x0
byte_811D940: .byte 0x53, 0x53, 0x53, 0x53, 0x53
byte_811D945: .byte 0x3, 0x5, 0x7, 0x9, 0xB
byte_811D94A: .byte 0x3, 0x3, 0x3, 0x3, 0x2
byte_811D94F: .byte 0x2, 0x4, 0x6, 0x8, 0xA
	thumb_func_end sub_811D894

	thumb_local_start
sub_811D954:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	ldr r1, off_811D9E8 // =unk_201AA00
	add r1, #4
	ldr r0, dword_811D9D0 // =0x93
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	ldrb r1, [r5,#5]
	ldr r0, off_811D9DC // =dword_811D9F4
	ldrb r0, [r0,r1]
	strb r0, [r5,#0x10]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811D9E4 // =byte_811D9F8
	ldrb r1, [r5,#5]
	ldrb r0, [r0,r1]
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811D9B8 // =off_811D9BC
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	ldrb r1, [r5,#5]
	ldr r0, off_811D9D8 // =dword_811D9F0
	ldrb r0, [r0,r1]
	bl sub_8003060
	ldr r1, off_811D9D4 // =word_811D9EC
	ldrh r0, [r1]
	strh r0, [r5,#0x1a]
	ldrh r1, [r1,#0x2] // (word_811D9EE - 0x811d9ec)
	strh r1, [r5,#0x1e]
	bl sprite_setCoordinates
	mov r0, #0x10
	strb r0, [r5,#0xc]
	pop {pc}
off_811D9B8: .word off_811D9BC
off_811D9BC: .word 0x80
	.word 0x100
	.word 0x1A0
	.word 0x220
	.word 0x2A0
dword_811D9D0: .word 0x93
off_811D9D4: .word word_811D9EC
off_811D9D8: .word dword_811D9F0
off_811D9DC: .word dword_811D9F4
	.word 0x7FFF
off_811D9E4: .word byte_811D9F8
off_811D9E8: .word unk_201AA00
word_811D9EC: .hword 0x80
word_811D9EE: .hword 0x60
dword_811D9F0: .word 0x2020202
dword_811D9F4: .word 0x1E140A00
byte_811D9F8: .byte 0x1, 0x2, 0x3, 0x4, 0x5, 0x0, 0x0, 0x0
	thumb_func_end sub_811D954

	thumb_local_start
sub_811DA00:
	push {lr}
	mov r1, #1
	strb r1, [r5]
	ldr r0, off_811DA70 // =byte_811DA74
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	tst r0, r0
	beq locret_811DA60
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #0x23
	strb r1, [r5]
	ldrb r1, [r5,#5]
	ldr r0, off_811DA88 // =dword_811DA90
	ldrb r0, [r0,r1]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811DA64 // =byte_811DA68
	ldrb r1, [r5,#5]
	ldrb r0, [r0,r1]
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811DA64 // =byte_811DA68
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_800306C
	mov r0, #3
	bl sub_8002E14
	ldrb r1, [r5,#5]
	ldr r0, off_811DA80 // =byte_811DA8E
	ldrb r0, [r0,r1]
	bl sub_8003060
	mov r0, #0x80
	mov r1, #0x90
	bl sprite_setCoordinates
locret_811DA60:
	pop {pc}
	.balign 4, 0x00
off_811DA64: .word byte_811DA68
byte_811DA68: .byte 0x0, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0
off_811DA70: .word byte_811DA74
byte_811DA74: .byte 0x5F, 0x0, 0x0, 0x0, 0x53, 0x0, 0x0, 0x0
	.word byte_811DA8C
off_811DA80: .word byte_811DA8E
	.word 0x7FFF
off_811DA88: .word dword_811DA90
byte_811DA8C: .byte 0x0, 0x1
byte_811DA8E: .byte 0x5, 0x4
dword_811DA90: .word 0x0
	thumb_func_end sub_811DA00

	thumb_local_start
sub_811DA94:
	push {lr}
	ldr r0, dword_811DAE8 // =0x96
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #0x23
	strb r1, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #6
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811DAE4 // =0x320
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	mov r0, #1
	bl sub_8003060
	ldr r0, dword_811DAEC // =0x193
	bl sound_play // () -> void
	mov r0, #0xf3
	bl sound_play // () -> void
	mov r0, #0xc0
	mov r1, #0x64
	bl sprite_setCoordinates
	pop {pc}
	.balign 4, 0x00
off_811DAE4: .word 0x320
dword_811DAE8: .word 0x96
dword_811DAEC: .word 0x193
	thumb_func_end sub_811DA94

	thumb_local_start
sub_811DAF0:
	push {lr}
	ldr r0, dword_811DB50 // =0x97
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #1
	strb r1, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #6
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811DB4C // =0x320
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	mov r0, #1
	bl sub_8003060
	ldrb r2, [r5,#5]
	lsl r2, r2, #2
	ldr r3, off_811DB54 // =byte_811DB58
	ldr r1, [r3,r2]
	mov r0, #0xb0
	add r0, r0, r1
	add r2, #2
	ldr r2, [r3,r2]
	mov r1, #0x6c
	add r1, r1, r2
	bl sprite_setCoordinates
	ldr r0, off_811DB70 // =off_811DB74
	ldrb r2, [r5,#5]
	ldrb r0, [r0,r2]
	strh r0, [r5,#0xc]
	pop {pc}
	.balign 4, 0x00
off_811DB4C: .word 0x320
dword_811DB50: .word 0x97
off_811DB54: .word byte_811DB58
byte_811DB58: .byte 0x10, 0x0, 0xE, 0x0, 0x22, 0x0, 0x16, 0x0, 0x1A, 0x0, 0x1E, 0x0
	.byte 0x2A, 0x0, 0x1A, 0x0, 0x2A, 0x0, 0x2A, 0x0, 0x20, 0x0, 0x28, 0x0
off_811DB70: .word off_811DB74
off_811DB74: .word unk_2010100
	.word 0x202
	thumb_func_end sub_811DAF0

	thumb_local_start
sub_811DB7C:
	push {lr}
	ldr r0, dword_811DBC4 // =0x1e
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #1
	strb r1, [r5]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xc
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	ldr r0, off_811DBC0 // =0x3a0
	bl sub_800306C
	mov r0, #2
	bl sub_8002E14
	mov r0, #1
	bl sub_8003060
	ldr r0, off_811DBC8 // =0x38
	ldr r1, off_811DBCC // =0x8c
	bl sprite_setCoordinates
	pop {pc}
	.byte 0, 0
off_811DBC0: .word 0x3A0
dword_811DBC4: .word 0x1E
off_811DBC8: .word 0x38
off_811DBCC: .word 0x8C
	thumb_func_end sub_811DB7C

	thumb_local_start
sub_811DBD0:
	push {lr}
	ldrb r0, [r5,#5]
	add r0, #5
	strb r0, [r5,#5]
	ldr r2, [r5,#4]
	lsr r2, r2, #8
	lsl r2, r2, #8
	mov r0, #5
	orr r2, r0
	mov r0, #0x3a
	mov r1, #6
	bl sub_8046670
	mov r1, #0xc
	strb r1, [r0,#9]
	pop {pc}
	thumb_func_end sub_811DBD0

	thumb_func_start sub_811DBF0
sub_811DBF0:
	push {lr}
	bl getStructFrom2008450
	beq locret_811DBFC
	mov r0, #0xc
	strb r0, [r1,#0xc]
locret_811DBFC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_811DBF0

	thumb_local_start
sub_811DC00:
	push {r4,lr}
	ldr r2, off_811DC20 // =byte_811DC28
	ldr r3, off_811DC24 // =byte_2011E40
	ldrb r4, [r3,#0x2] // (byte_2011E42 - 0x2011e40)
	cmp r4, #4
	beq loc_811DC14
	cmp r4, #8
	beq loc_811DC14
	cmp r4, #0xc
	bne locret_811DC1C
loc_811DC14:
	ldrb r3, [r3,#0x6] // (byte_2011E46 - 0x2011e40)
	lsl r3, r3, #1
	ldrsh r2, [r2,r3]
	add r1, r1, r2
locret_811DC1C:
	pop {r4,pc}
	.byte 0, 0
off_811DC20: .word byte_811DC28
off_811DC24: .word byte_2011E40
byte_811DC28: .byte 0x10, 0x0, 0xE0, 0xFF, 0x0, 0x0, 0xF0, 0xFF, 0xD0, 0xFF
	.byte 0x0, 0x0
	thumb_func_end sub_811DC00

	thumb_func_start sub_811DC34
sub_811DC34:
	push {lr}
	ldr r0, off_811DC44 // =off_811DC48
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811DC44: .word off_811DC48
off_811DC48: .word sub_811DC54+1
	.word sub_811DC70+1
	.word sub_811DC80+1
	thumb_func_end sub_811DC34

	thumb_local_start
sub_811DC54:
	push {r4,lr}
	mov r4, #1
	strb r4, [r5]
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #0xb0
	mov r1, #0x40
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811DC70
	pop {r4,pc}
	thumb_func_end sub_811DC54

	thumb_local_start
sub_811DC70:
	push {lr}
	mov r1, #2
	ldrb r0, [r5]
	tst r0, r1
	beq locret_811DC7E
	bl sprite_update
locret_811DC7E:
	pop {pc}
	thumb_func_end sub_811DC70

	thumb_local_start
sub_811DC80:
	push {lr}
	bl sub_804668A
	pop {pc}
	thumb_func_end sub_811DC80

	thumb_func_start sub_811DC88
sub_811DC88:
	push {r4,r5,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r0, r1
	bl getStructFrom2008450
	beq loc_811DD06
	mov r5, r1
	mov r1, #1
	strb r1, [r5]
	ldr r0, [sp]
	lsl r4, r0, #2
	ldr r1, off_811DD90 // =byte_811DD94
	ldr r0, [r1,r4]
	tst r0, r0
	beq loc_811DD06
	lsl r0, r0, #1
	bcs loc_811DCB0
	lsr r0, r0, #1
	b loc_811DCBC
loc_811DCB0:
	lsr r0, r0, #1
	// dest
	ldr r1, off_811DD8C // =unk_20212F8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r1, off_811DD8C // =unk_20212F8
	add r1, #4
loc_811DCBC:
	ldr r0, off_811DD10 // =byte_811DD14
	ldr r0, [r0,r4]
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r1, #0x23
	strb r1, [r5]
	lsr r1, r4, #2
	ldr r0, off_811DE0C // =off_811DE18
	ldrb r0, [r0,r1]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	lsr r1, r4, #2
	ldr r0, off_811DE14 // =byte_811DE54
	ldrb r0, [r0,r1]
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8002E14
	ldr r0, off_811DD0C // =0x80
	bl sub_800306C
	mov r0, #1
	bl sub_800304A
	ldr r0, off_811DE10 // =byte_811DE36
	lsr r1, r4, #2
	ldrb r0, [r0,r1]
	bl sub_8003060
	lsr r0, r4, #2
	bl sub_811DE74
loc_811DD06:
	add sp, sp, #4
	pop {r4,r5,pc}
	.byte 0x0, 0x0
off_811DD0C: .word 0x80
off_811DD10: .word byte_811DD14
byte_811DD14: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6C, 0x0, 0x0, 0x0
	.byte 0x6D, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x9D, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x9E, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x9F, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0xA0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_811DD8C: .word unk_20212F8
off_811DD90: .word byte_811DD94
byte_811DD94: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word virusBattleSprite_8244164
	.word 0x882455B0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3C, 0xD2, 0x24, 0x88, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sprite_8253F88
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xB4, 0xDF
	.byte 0x25, 0x88, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sprite_837D8E0
	.word 0x0
off_811DE0C: .word off_811DE18
off_811DE10: .word byte_811DE36
off_811DE14: .word byte_811DE54
off_811DE18: .word unk_3000000
	.byte 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x0
byte_811DE36: .byte 0x0, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x2
	.byte 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3
byte_811DE54: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x12
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811DC88

	thumb_local_start
sub_811DE74:
	push {lr}
	lsl r2, r0, #2
	ldr r1, off_811DE90 // =byte_811DE94
	ldrsh r0, [r1,r2]
	add r2, #2
	ldrsh r1, [r1,r2]
	mov r2, #0xb0
	mov r3, #0x40
	add r0, r0, r2
	add r1, r1, r3
	bl sprite_setCoordinates
	pop {pc}
	.byte 0, 0
off_811DE90: .word byte_811DE94
byte_811DE94: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0
	.byte 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8
	.byte 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0
	.byte 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x8, 0x0, 0x6, 0x0
	.byte 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x10
	.byte 0x0
	thumb_func_end sub_811DE74

	thumb_func_start sub_811DF0C
sub_811DF0C:
	push {lr}
	bl getStructFrom2008450
	beq locret_811DF18
	mov r0, #1
	strb r0, [r1]
locret_811DF18:
	pop {pc}
	.byte 0x0, 0x0
	thumb_func_end sub_811DF0C

	thumb_func_start sub_811DF1C
sub_811DF1C:
	push {lr}
	ldr r0, off_811DF2C // =off_811DF30
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	ldr r6, off_811DF3C // =unk_2000310
	mov lr, pc
	bx r0
	pop {pc}
off_811DF2C: .word off_811DF30
off_811DF30: .word sub_811DF40+1
	.word sub_811DF94+1
	.word sub_811DFCC+1
off_811DF3C: .word unk_2000310
	thumb_func_end sub_811DF1C

	thumb_local_start
sub_811DF40:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x3b
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xb
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8003060
	ldr r0, off_811DF90 // =0x270
	bl sub_800306C
	mov r0, #1
	bl sub_8002E14
	mov r0, #0xd2
	mov r1, #0xa
	bl sprite_setCoordinates
	mov r0, #0
	strb r0, [r5,#9]
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811DF94
	pop {pc}
	.byte 0, 0
off_811DF90: .word 0x270
	thumb_func_end sub_811DF40

	thumb_local_start
sub_811DF94:
	push {r4,lr}
	ldrb r0, [r6,#0xb]
	cmp r0, #0
	bne loc_811DFB0
	mov r0, #0xff
	strb r0, [r6,#4]
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	b loc_811DFBA
loc_811DFB0:
	// entryIdx
	mov r0, #0xb
	// byteFlagIdx
	mov r1, #0xf2
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_811DFC0
loc_811DFBA:
	bl sub_811DFD4
	b loc_811DFC4
loc_811DFC0:
	bl sub_811E000
loc_811DFC4:
	bl sprite_update
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_811DF94

	thumb_local_start
sub_811DFCC:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811DFCC

	thumb_local_start
sub_811DFD4:
	push {lr}
	ldrb r0, [r6,#4]
	cmp r0, #0xff
	bne loc_811DFE6
	ldr r0, dword_811DFFC // =0x3f800000
	str r0, [r6,#0x20]
	bl sub_8002FA6
	b locret_811DFF8
loc_811DFE6:
	mov r2, #0x1d
	sub r2, r2, r0
	mov r3, #1
	lsl r3, r2
	ldr r0, [r6,#0x20]
	bic r0, r3
	str r0, [r6,#0x20]
	bl sub_8002FA6
locret_811DFF8:
	pop {pc}
	.balign 4, 0x00
dword_811DFFC: .word 0x3F800000
	thumb_func_end sub_811DFD4

	thumb_local_start
sub_811E000:
	push {lr}
	ldrb r3, [r5,#9]
	cmp r3, #0
	bgt locret_811E020
	add r3, #1
	strb r3, [r5,#9]
	mov r0, #1
	bl sub_8002FA6
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
locret_811E020:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811E000

	thumb_func_start sub_811E024
sub_811E024:
	push {lr}
	ldr r6, off_811E044 // =byte_2001010
	ldr r0, off_811E034 // =off_811E038
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E034: .word off_811E038
off_811E038: .word sub_811E048+1
	.word sub_811E090+1
	.word sub_811E0B2+1
off_811E044: .word byte_2001010
	thumb_func_end sub_811E024

	thumb_local_start
sub_811E048:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x31
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xb
	bl sub_800304A
	ldr r0, off_811E08C // =0x298
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #1
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E090
	pop {pc}
	.balign 4, 0x00
off_811E08C: .word 0x298
	thumb_func_end sub_811E048

	thumb_local_start
sub_811E090:
	push {lr}
	ldrb r4, [r5]
	mov r1, #2
	ldrb r0, [r6,#0xe]
	tst r0, r0
	beq loc_811E0A0
	bic r4, r1
	b loc_811E0A2
loc_811E0A0:
	orr r4, r1
loc_811E0A2:
	strb r4, [r5]
	mov r0, #0xbc
	mov r1, #0xa
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E090

	thumb_local_start
sub_811E0B2:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E0B2

	thumb_func_start sub_811E0BA
sub_811E0BA:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_811E160 // =byte_2027200
	mov r7, r0
	mov r1, #0xa
	lsl r1, r1, #5
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r1, off_811E164 // =byte_2001010
	ldrb r4, [r1,#0x10] // (dword_2001020 - 0x2001010)
	cmp r4, #0
	beq loc_811E118
	mov r0, #0
	strb r0, [r1,#0x12] // (dword_2001020+2 - 0x2001010)
	mov r0, #0xc0
	cmp r4, #0x28
	bge loc_811E0E2
	mov r0, #0xd0
	cmp r4, #0x14
	bge loc_811E0E2
	mov r0, #0xe0
loc_811E0E2:
	lsr r1, r0, #4
	mov r6, #0
loc_811E0E6:
	mov r2, #0
	cmp r6, r4
	bge loc_811E0F6
	mov r2, r1
	add r6, #1
	cmp r6, r4
	bge loc_811E0F6
	orr r2, r0
loc_811E0F6:
	strb r2, [r7]
	strb r2, [r7,#4]
	strb r2, [r7,#8]
	strb r2, [r7,#0xc]
	strb r2, [r7,#0x10]
	strb r2, [r7,#0x14]
	strb r2, [r7,#0x18]
	strb r2, [r7,#0x1c]
	add r7, #1
	add r6, #1
	mov r2, #7
	tst r6, r2
	bne loc_811E112
	add r7, #0x1c
loc_811E112:
	cmp r6, r4
	blt loc_811E0E6
	b loc_811E14C
loc_811E118:
	ldr r1, off_811E164 // =byte_2001010
	ldrb r0, [r1,#0x12] // (dword_2001020+2 - 0x2001010)
	add r0, #1
	strb r0, [r1,#0x12] // (dword_2001020+2 - 0x2001010)
	mov r1, #0x3f
	and r0, r1
	cmp r0, #0x20
	blt loc_811E14C
	mov r0, #0xee
	mov r6, #0
loc_811E12C:
	strb r0, [r7]
	strb r0, [r7,#4]
	strb r0, [r7,#8]
	strb r0, [r7,#0xc]
	strb r0, [r7,#0x10]
	strb r0, [r7,#0x14]
	strb r0, [r7,#0x18]
	strb r0, [r7,#0x1c]
	add r7, #1
	add r6, #2
	mov r2, #7
	tst r6, r2
	bne loc_811E148
	add r7, #0x1c
loc_811E148:
	cmp r6, #0x50
	blt loc_811E12C
loc_811E14C:
	ldr r0, off_811E160 // =byte_2027200
	ldr r1, dword_811E15C // =0x6015580
	mov r2, #0xa
	lsl r2, r2, #5
	bl sub_8000AC8
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811E15C: .word 0x6015580
off_811E160: .word byte_2027200
off_811E164: .word byte_2001010
	thumb_func_end sub_811E0BA

	thumb_func_start sub_811E168
sub_811E168:
	push {lr}
	ldr r6, off_811E188 // =byte_2001010
	ldr r0, off_811E178 // =off_811E17C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E178: .word off_811E17C
off_811E17C: .word sub_811E18C+1
	.word sub_811E1D4+1
	.word sub_811E1FA+1
off_811E188: .word byte_2001010
	thumb_func_end sub_811E168

	thumb_local_start
sub_811E18C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x32
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xa
	bl sub_800304A
	ldr r0, off_811E1D0 // =0x258
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #1
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E1D4
	pop {pc}
	.byte 0, 0
off_811E1D0: .word 0x258
	thumb_func_end sub_811E18C

	thumb_local_start
sub_811E1D4:
	push {lr}
	ldrb r4, [r5]
	mov r1, #2
	ldrb r0, [r6,#0xe]
	tst r0, r0
	beq loc_811E1E4
	bic r4, r1
	b loc_811E1E6
loc_811E1E4:
	orr r4, r1
loc_811E1E6:
	strb r4, [r5]
	bl sub_811E202
	mov r0, #0xcc
	mov r1, #0x1e
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E1D4

	thumb_local_start
sub_811E1FA:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E1FA

	thumb_local_start
sub_811E202:
	push {r4-r7,lr}
	ldr r7, dword_811E240 // =0x1ffffff8
	bl sub_81418E4
	mov r4, r1
	mov r1, #0xa
	svc 6
	mov r2, #1
	lsl r2, r2, #0x1c
	lsr r2, r0
	bic r7, r2
	mov r2, #1
	lsl r2, r2, #0x19
	lsr r2, r1
	bic r7, r2
	mov r0, r4
	mov r1, #0xa
	svc 6
	mov r2, #1
	lsl r2, r2, #0xf
	lsr r2, r0
	bic r7, r2
	mov r2, #1
	lsl r2, r2, #0xc
	lsr r2, r1
	bic r7, r2
	mov r0, r7
	bl sub_8002FA6
	pop {r4-r7,pc}
	.byte 0, 0
dword_811E240: .word 0x1FFFFFF8
	.word byte_2001010
	thumb_func_end sub_811E202

	thumb_func_start sub_811E248
sub_811E248:
	push {lr}
	ldr r6, off_811E268 // =byte_2000780
	ldr r0, off_811E258 // =off_811E25C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E258: .word off_811E25C
off_811E25C: .word sub_811E26C+1
	.word sub_811E2B4+1
	.word sub_811E30C+1
off_811E268: .word byte_2000780
	thumb_func_end sub_811E248

	thumb_local_start
sub_811E26C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x33
	bl loc_8002774 // (int a1, int a2) -> void
	ldrb r0, [r5,#4]
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xb
	bl sub_800304A
	ldr r0, off_811E2B0 // =0x290
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E2B4
	pop {pc}
off_811E2B0: .word 0x290
	thumb_func_end sub_811E26C

	thumb_local_start
sub_811E2B4:
	push {lr}
	ldrb r4, [r5]
	mov r1, #2
	ldrb r0, [r6,#0xd]
	tst r0, r0
	beq loc_811E2C4
	bic r4, r1
	b loc_811E2C6
loc_811E2C4:
	orr r4, r1
loc_811E2C6:
	strb r4, [r5]
	ldrb r0, [r5,#4]
	tst r0, r0
	beq loc_811E2E4
	bl sub_81421D0
	add r0, #1
	ldrb r1, [r5,#5]
	cmp r0, r1
	beq loc_811E2E4
	strb r0, [r5,#5]
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
loc_811E2E4:
	mov r0, #0xdc
	mov r1, #0x24
	push {r0,r1}
	ldr r0, off_811E308 // =dword_8089128
	bl sub_8036F70
	pop {r0,r1}
	beq loc_811E2F8
	sub r0, #0x14
	add r1, #8
loc_811E2F8:
	bl sprite_setCoordinates
	bl sub_811E314
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811E308: .word dword_8089128
	thumb_func_end sub_811E2B4

	thumb_local_start
sub_811E30C:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E30C

	thumb_local_start
sub_811E314:
	push {r4-r7,lr}
	ldr r7, dword_811E358 // =0xfffffff
	mov r0, #0
	bl sub_8142190
	mov r2, #1
	lsl r2, r2, #0x1b
	lsr r2, r0
	bic r7, r2
	mov r0, #1
	bl sub_8142190
	mov r2, #1
	lsl r2, r2, #0x14
	lsr r2, r0
	bic r7, r2
	mov r0, #2
	bl sub_8142190
	mov r2, #1
	lsl r2, r2, #0xd
	lsr r2, r0
	bic r7, r2
	mov r0, #3
	bl sub_8142190
	mov r2, #1
	lsl r2, r2, #6
	lsr r2, r0
	bic r7, r2
	mov r0, r7
	bl sub_8002FA6
	pop {r4-r7,pc}
dword_811E358: .word 0xFFFFFFF
	.word byte_2000780
	thumb_func_end sub_811E314

	thumb_func_start sub_811E360
sub_811E360:
	push {lr}
	ldr r6, off_811E380 // =byte_2000780
	ldr r0, off_811E370 // =off_811E374
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E370: .word off_811E374
off_811E374: .word sub_811E384+1
	.word sub_811E3CC+1
	.word sub_811E40C+1
off_811E380: .word byte_2000780
	thumb_func_end sub_811E360

	thumb_local_start
sub_811E384:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x36
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xa
	bl sub_800304A
	ldr r0, off_811E3C8 // =0x280
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E3CC
	pop {pc}
	.balign 4, 0x00
off_811E3C8: .word 0x280
	thumb_func_end sub_811E384

	thumb_local_start
sub_811E3CC:
	push {lr}
	ldrb r4, [r5]
	mov r1, #2
	ldrb r0, [r6,#0xd]
	tst r0, r0
	beq loc_811E3DC
	bic r4, r1
	b loc_811E3DE
loc_811E3DC:
	orr r4, r1
loc_811E3DE:
	strb r4, [r5]
	bl sub_81421D0
	mov r1, #0x10
	mul r1, r0
	add r1, #0xc
	mov r0, #0xdc
	push {r0,r1}
	ldr r0, off_811E408 // =dword_8089128
	bl sub_8036F70
	pop {r0,r1}
	beq loc_811E3FC
	sub r0, #0x14
	add r1, #8
loc_811E3FC:
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	.balign 4, 0x00
off_811E408: .word dword_8089128
	thumb_func_end sub_811E3CC

	thumb_local_start
sub_811E40C:
	push {lr}
	bl sub_80468E0
	pop {pc}
	.word byte_2000780
	thumb_func_end sub_811E40C

	thumb_func_start sub_811E418
sub_811E418:
	push {lr}
	ldr r0, off_811E428 // =off_811E42C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811E428: .word off_811E42C
off_811E42C: .word sub_811E438+1
	.word sub_811E490+1
	.word sub_811E510+1
	thumb_func_end sub_811E418

	thumb_local_start
sub_811E438:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0xa1
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #1
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811E488 // =0x280
	bl sub_800306C
	mov r0, #0xc
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8003060
	mov r0, #2
	bl sub_8002E14
	bl sub_811E51C
	bl sub_811E548
	mov r0, #4
	strb r0, [r5,#8]
	mov r0, #1
	strb r0, [r5,#9]
	bl sub_811E490
	pop {pc}
	.balign 4, 0x00
off_811E488: .word 0x280
	.word 0x180000
	thumb_func_end sub_811E438

	thumb_local_start
sub_811E490:
	push {lr}
	ldr r0, off_811E50C // =byte_2011E40
	ldrb r0, [r0,#0x2] // (byte_2011E42 - 0x2011e40)
	cmp r0, #0x10
	blt loc_811E4AC
	ldrb r0, [r5,#9]
	cmp r0, #2
	beq loc_811E4A8
	mov r0, #2
	strb r0, [r5,#9]
	mov r0, #0
	strh r0, [r5,#0x1c]
loc_811E4A8:
	bl sub_811E558
loc_811E4AC:
	ldrb r0, [r5,#9]
	cmp r0, #1
	beq loc_811E4E4
	ldr r0, [r5,#0x14]
	ldr r2, dword_811E500 // =0x8000
	add r0, r0, r2
	str r0, [r5,#0x14]
	ldr r1, [r5,#0xc]
	sub r1, r1, r0
	str r1, [r5,#0xc]
	asr r1, r1, #0x10
	ldr r2, byte_811E504 // =0x58
	cmp r1, r2
	bge loc_811E4F0
	ldrb r0, [r5,#9]
	cmp r0, #2
	bne loc_811E4D4
	mov r0, #8
	strb r0, [r5,#8]
	b loc_811E4F8
loc_811E4D4:
	bl sub_811E51C
	bl sub_811E548
	ldrb r0, [r5,#9]
	add r0, #1
	strb r0, [r5,#9]
	b loc_811E4F0
loc_811E4E4:
	ldrb r0, [r5,#7]
	sub r0, #1
	strb r0, [r5,#7]
	bne loc_811E4F0
	mov r0, #0
	strb r0, [r5,#9]
loc_811E4F0:
	ldrh r0, [r5,#0xe]
	ldrh r1, [r5,#0x12]
	bl sprite_setCoordinates
loc_811E4F8:
	bl sprite_update
	pop {pc}
	.byte 0, 0
dword_811E500: .word 0x8000
byte_811E504: .byte 0x58, 0xFF, 0xFF, 0xFF, 0x5E, 0x1, 0x0, 0x0
off_811E50C: .word byte_2011E40
	thumb_func_end sub_811E490

	thumb_local_start
sub_811E510:
	push {lr}
	bl sub_811E558
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E510

	thumb_local_start
sub_811E51C:
	push {lr}
	bl GetRNG2 // () -> int
	mov r1, #0x1f
	and r0, r1
	mov r1, #0x20
	ldrb r2, [r5,#3]
	mul r1, r2
	add r1, r1, r0
	add r1, #0x10
	ldr r0, dword_811E540 // =0x15e
	strh r0, [r5,#0xe]
	strh r1, [r5,#0x12]
	bl sprite_setCoordinates
	ldr r0, dword_811E544 // =0x180000
	str r0, [r5,#0x14]
	pop {pc}
dword_811E540: .word 0x15E
dword_811E544: .word 0x180000
	thumb_func_end sub_811E51C

	thumb_local_start
sub_811E548:
	push {lr}
	bl GetRNG2 // () -> int
	mov r1, #0x3f
	and r0, r1
	strb r0, [r5,#7]
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811E548

	thumb_local_start
sub_811E558:
	push {lr}
	ldrh r0, [r5,#0x1c]
	lsl r1, r0, #5
	lsl r2, r0, #0xa
	orr r1, r2
	orr r0, r1
	ldr r1, dword_811E578 // =0x8000
	orr r0, r1
	bl sprite_setColorShader
	ldrh r0, [r5,#0x1c]
	add r0, #1
	cmp r0, #0x20
	bge locret_811E576
	strh r0, [r5,#0x1c]
locret_811E576:
	pop {pc}
dword_811E578: .word 0x8000
	thumb_func_end sub_811E558

	thumb_func_start sub_811E57C
sub_811E57C:
	push {lr}
	ldr r0, off_811E58C // =off_811E590
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811E58C: .word off_811E590
off_811E590: .word sub_811E59C+1
	.word sub_811E5EC+1
	.word sub_811E5F8+1
	thumb_func_end sub_811E57C

	thumb_local_start
sub_811E59C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x3a
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811E5E8 // =0x280
	bl sub_800306C
	mov r0, #0xa
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0xd8
	mov r1, #0xe
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E5EC
	pop {pc}
	.balign 4, 0x00
off_811E5E8: .word 0x280
	thumb_func_end sub_811E59C

	thumb_local_start
sub_811E5EC:
	push {lr}
	bl sub_811E600
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E5EC

	thumb_local_start
sub_811E5F8:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E5F8

	thumb_local_start
sub_811E600:
	push {r4-r7,lr}
	ldr r7, dword_811E618 // =0x3ff00000
	bl sub_8143198
	mov r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r0
	bic r7, r2
	mov r0, r7
	bl sub_8002FA6
	pop {r4-r7,pc}
dword_811E618: .word 0x3FF00000
	thumb_func_end sub_811E600

	thumb_func_start sub_811E61C
sub_811E61C:
	push {lr}
	ldr r0, off_811E62C // =off_811E630
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_811E62C: .word off_811E630
off_811E630: .word sub_811E63C+1
	.word sub_811E68C+1
	.word sub_811E698+1
	thumb_func_end sub_811E61C

	thumb_local_start
sub_811E63C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x39
	bl initGuiSprite_8002770 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	ldr r0, off_811E688 // =0x2a8
	bl sub_800306C
	mov r0, #0xb
	bl sub_800304A
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0xdc
	mov r1, #0x2c
	bl sprite_setCoordinates
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E68C
	pop {pc}
	.balign 4, 0x00
off_811E688: .word 0x2A8
	thumb_func_end sub_811E63C

	thumb_local_start
sub_811E68C:
	push {lr}
	bl sub_811E6A0
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E68C

	thumb_local_start
sub_811E698:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E698

	thumb_local_start
sub_811E6A0:
	push {r4-r7,lr}
	bl sub_81433DA
	ldr r1, off_811E6B4 // =byte_811E6B8
	ldrb r0, [r1,r0]
	lsl r0, r0, #0x18
	bl sub_8002FA6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811E6B4: .word byte_811E6B8
byte_811E6B8: .byte 0x7C, 0x3C, 0x1C, 0xC, 0x4, 0x0, 0x0, 0x0
	thumb_func_end sub_811E6A0

	thumb_func_start sub_811E6C0
sub_811E6C0:
	push {lr}
	ldr r6, off_811E6E0 // =byte_2001010
	ldr r0, off_811E6D0 // =off_811E6D4
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E6D0: .word off_811E6D4
off_811E6D4: .word sub_811E6E4+1
	.word sub_811E72C+1
	.word sub_811E73C+1
off_811E6E0: .word byte_2001010
	thumb_func_end sub_811E6C0

	thumb_local_start
sub_811E6E4:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x63
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xb
	bl sub_800304A
	ldr r0, off_811E728 // =0x1f0
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E72C
	pop {pc}
	.balign 4, 0x00
off_811E728: .word 0x1F0
	thumb_func_end sub_811E6E4

	thumb_local_start
sub_811E72C:
	push {lr}
	mov r0, #0x78
	mov r1, #0x78
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E72C

	thumb_local_start
sub_811E73C:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E73C

	thumb_func_start sub_811E744
sub_811E744:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_811E798 // =unk_2027000
	mov r1, #0x34
	lsl r1, r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_8144010
	mov r6, r0
	ldr r7, off_811E798 // =unk_2027000
	mov r4, #0
loc_811E75A:
	ldr r0, off_811E79C // =byte_811E7A0
	ldr r0, [r0,r4]
	cmp r6, #8
	bge loc_811E772
	lsl r1, r6, #2
	mov r2, #0x20
	sub r1, r2, r1
	mov r2, #0
	mvn r2, r2
	lsr r2, r1
	and r0, r2
	mov r6, #8
loc_811E772:
	mov r3, #0
loc_811E774:
	str r0, [r7,r3]
	add r3, #4
	cmp r3, #0x28
	blt loc_811E774
	sub r6, #8
	add r7, #0x40
	add r4, #4
	cmp r4, #0x34
	blt loc_811E75A
	ldr r0, off_811E798 // =unk_2027000
	ldr r1, dword_811E794 // =0x6014180
	mov r2, #0x34
	lsl r2, r2, #4
	bl sub_8000AC4
	pop {r4-r7,pc}
dword_811E794: .word 0x6014180
off_811E798: .word unk_2027000
off_811E79C: .word byte_811E7A0
byte_811E7A0: .byte 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA
	.byte 0xAA, 0xAA, 0xAA, 0xAA, 0xBA, 0xBB, 0xBB, 0xBB, 0xBB
	.byte 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xCB
	.byte 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC
	.byte 0xCC, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD
	.byte 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0x0, 0x0
	thumb_func_end sub_811E744

	thumb_func_start sub_811E7D4
sub_811E7D4:
	push {lr}
	ldr r6, off_811E7F4 // =byte_2001010
	ldr r0, off_811E7E4 // =off_811E7E8
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E7E4: .word off_811E7E8
off_811E7E8: .word sub_811E7F8+1
	.word sub_811E840+1
	.word sub_811E850+1
off_811E7F4: .word byte_2001010
	thumb_func_end sub_811E7D4

	thumb_local_start
sub_811E7F8:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x64
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xb
	bl sub_800304A
	ldr r0, off_811E83C // =0x230
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E840
	pop {pc}
	.balign 4, 0x00
off_811E83C: .word 0x230
	thumb_func_end sub_811E7F8

	thumb_local_start
sub_811E840:
	push {lr}
	mov r0, #0x78
	mov r1, #0x78
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E840

	thumb_local_start
sub_811E850:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E850

	thumb_func_start sub_811E858
sub_811E858:
	push {lr}
	ldr r6, off_811E878 // =byte_2001010
	ldr r0, off_811E868 // =off_811E86C
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E868: .word off_811E86C
off_811E86C: .word sub_811E87C+1
	.word sub_811E8C4+1
	.word sub_811E8D8+1
off_811E878: .word byte_2001010
	thumb_func_end sub_811E858

	thumb_local_start
sub_811E87C:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x65
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xf
	bl sub_800304A
	ldr r0, off_811E8C0 // =0x290
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E8C4
	pop {pc}
	.byte 0, 0
off_811E8C0: .word 0x290
	thumb_func_end sub_811E87C

	thumb_local_start
sub_811E8C4:
	push {lr}
	bl sub_811E8E0
	mov r0, #0xe0
	mov r1, #0x3e
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E8C4

	thumb_local_start
sub_811E8D8:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E8D8

	thumb_local_start
sub_811E8E0:
	push {r4-r7,lr}
	bl sub_8143F90
	lsr r0, r0, #0x10
	mov r1, #8
	svc 6
	ldr r7, off_811E8F8 // =byte_811E8FC
	lsl r0, r0, #2
	ldr r0, [r7,r0]
	bl sub_8002FA6
	pop {r4-r7,pc}
off_811E8F8: .word byte_811E8FC
byte_811E8FC: .byte 0x0, 0x0, 0x0, 0xF0, 0x0, 0x0, 0x0, 0xE0, 0x0, 0x0, 0x0, 0xC0, 0x0, 0x0
	.byte 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811E8E0

	thumb_func_start sub_811E914
sub_811E914:
	push {lr}
	ldr r6, off_811E934 // =byte_2001010
	ldr r0, off_811E924 // =off_811E928
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E924: .word off_811E928
off_811E928: .word sub_811E938+1
	.word sub_811E980+1
	.word sub_811E998+1
off_811E934: .word byte_2001010
	thumb_func_end sub_811E914

	thumb_local_start
sub_811E938:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x66
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xf
	bl sub_800304A
	ldr r0, off_811E97C // =0x2a8
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811E980
	pop {pc}
	.balign 4, 0x00
off_811E97C: .word 0x2A8
	thumb_func_end sub_811E938

	thumb_local_start
sub_811E980:
	push {lr}
	bl sub_8143F90
	lsr r2, r0, #0x10
	mov r0, #0xe0
	mov r1, #0x42
	sub r1, r1, r2
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811E980

	thumb_local_start
sub_811E998:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811E998

	thumb_func_start sub_811E9A0
sub_811E9A0:
	push {lr}
	ldr r6, off_811E9C0 // =byte_2001010
	ldr r0, off_811E9B0 // =off_811E9B4
	ldrb r1, [r5,#8]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_811E9B0: .word off_811E9B4
off_811E9B4: .word sub_811E9C4+1
	.word sub_811EA0C+1
	.word sub_811EA20+1
off_811E9C0: .word byte_2001010
	thumb_func_end sub_811E9A0

	thumb_local_start
sub_811E9C4:
	push {lr}
	mov r0, #0x23
	strb r0, [r5]
	mov r0, #0x67
	bl loc_8002774 // (int a1, int a2) -> void
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_noShadow // () -> void
	mov r0, #0xf
	bl sub_800304A
	ldr r0, off_811EA08 // =0x250
	bl sub_800306C
	mov r0, #0
	bl sub_8003060
	mov r0, #0
	bl sub_8002E14
	mov r0, #0
	bl sprite_setPalette // (int pallete) -> void
	mov r0, #4
	strb r0, [r5,#8]
	bl sub_811EA0C
	pop {pc}
	.balign 4, 0x00
off_811EA08: .word 0x250
	thumb_func_end sub_811E9C4

	thumb_local_start
sub_811EA0C:
	push {lr}
	bl sub_811EA28
	mov r0, #0xce
	mov r1, #0xc
	bl sprite_setCoordinates
	bl sprite_update
	pop {pc}
	thumb_func_end sub_811EA0C

	thumb_local_start
sub_811EA20:
	push {lr}
	bl sub_80468E0
	pop {pc}
	thumb_func_end sub_811EA20

	thumb_local_start
sub_811EA28:
	push {r4-r7,lr}
	ldr r7, dword_811EA64 // =0x1fffffff
	bl sub_8143D4C
	mov r4, r1
	mov r1, #0xa
	svc 6
	mov r2, #1
	lsl r2, r2, #0x1c
	lsr r2, r0
	bic r7, r2
	mov r2, #1
	lsl r2, r2, #0x17
	lsr r2, r1
	bic r7, r2
	mov r0, r4
	mov r1, #0xa
	svc 6
	mov r2, #1
	lsl r2, r2, #0xd
	lsr r2, r0
	bic r7, r2
	mov r2, #1
	lsl r2, r2, #8
	lsr r2, r1
	bic r7, r2
	mov r0, r7
	bl sub_8002FA6
	pop {r4-r7,pc}
dword_811EA64: .word 0x1FFFFFFF
byte_811EA68: .byte 0x4, 0x0, 0x0, 0x0, 0x60, 0x1B, 0x0, 0x3, 0xC, 0x10, 0xE, 0xFF
	.byte 0x42, 0x8, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
byte_811EA7C: .byte 0x84, 0x10, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0xC6, 0x18, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0x8, 0x21, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x4A, 0x29, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x8C, 0x31, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0xCE, 0x39, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x10, 0x42, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811EAB8: .byte 0x4, 0x0, 0x0, 0x0, 0x50, 0x17, 0x0, 0x3, 0xC, 0x11, 0xB, 0xFF
	.byte 0x42, 0x8, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.word byte_811EA7C
byte_811EAD4: .byte 0x4, 0x0, 0x0, 0x0, 0x60, 0x1B, 0x0, 0x3, 0xC, 0x10, 0xE, 0xFF
	.byte 0x10, 0x42, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811EAEC: .byte 0x4, 0x0, 0x0, 0x0, 0x50, 0x17, 0x0, 0x3, 0xC, 0x11, 0xB, 0xFF
	.byte 0x10, 0x42, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811EB04: .byte 0x4, 0x0, 0x0, 0x0, 0x60, 0x1B, 0x0, 0x3, 0xC, 0x10, 0xE, 0xFF
	.byte 0x10, 0x42, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
byte_811EB18: .byte 0xCE, 0x39, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x8C, 0x31, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0x4A, 0x29, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x8, 0x21, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0xC6, 0x18, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0x84, 0x10, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x42, 0x8, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80
	.byte 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_811EB5C: .byte 0x4, 0x0, 0x0, 0x0, 0x50, 0x17, 0x0, 0x3, 0xC, 0x11, 0xB, 0xFF
	.byte 0x10, 0x42, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.word byte_811EB18
byte_811EB78: .byte 0x1, 0x0, 0x1, 0x0, 0x2, 0x1, 0x0, 0x0, 0x2, 0x2, 0x1, 0x0, 0x2, 0x3, 0x2, 0x0, 0x2
	.byte 0x4, 0x3, 0x0, 0x2, 0x5, 0x4, 0x0, 0x2, 0x6, 0x5, 0x0, 0x2, 0x7, 0x6, 0x0, 0x2, 0x8
	.byte 0x7, 0x0, 0x3, 0xA, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_811EBA4: .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1, 0x0, 0x1, 0x2, 0x2, 0x1, 0x1, 0x2, 0x3, 0x2, 0x1, 0x2
	.byte 0x4, 0x3, 0x1, 0x2, 0x5, 0x4, 0x1, 0x2, 0x6, 0x5, 0x1, 0x2, 0x7, 0x6, 0x1, 0x2, 0x8
	.byte 0x7, 0x1, 0x3, 0xA, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF
byte_811EBD0: .byte 0x74, 0xC3, 0x78, 0xC3, 0x7C, 0xC3, 0x74, 0xC3, 0xFF
	.byte 0xFF
byte_811EBDA: .byte 0x4, 0x4, 0x4, 0x4, 0x4, 0x0
	thumb_func_end sub_811EA28

	thumb_func_start sub_811EBE0
sub_811EBE0:
	ldr r2, off_811EC4C // =ePETMenuData
	ldrb r1, [r2,#0x5] // (eFlags200DF25 - 0x200df20)
	tst r1, r0
	mov pc, lr
	thumb_func_end sub_811EBE0

	thumb_local_start
sub_811EBE8:
	ldr r2, off_811EC4C // =ePETMenuData
	ldrb r1, [r2,#0x5] // (eFlags200DF25 - 0x200df20)
	orr r1, r0
	strb r1, [r2,#0x5] // (eFlags200DF25 - 0x200df20)
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_811EBE8

	thumb_func_start sub_811EBF4
sub_811EBF4:
	ldr r2, off_811EC4C // =ePETMenuData
	ldrb r1, [r2,#0x5] // (eFlags200DF25 - 0x200df20)
	bic r1, r0
	strb r1, [r2,#0x5] // (eFlags200DF25 - 0x200df20)
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_811EBF4

	thumb_func_start sub_811EC00
sub_811EC00:
	push {lr}
	// memBlock
	ldr r0, off_811EC4C // =ePETMenuData
	mov r4, r0
	// size
	mov r1, #0x18
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	.balign 4, 0
	thumb_func_end sub_811EC00

	thumb_func_start sub_811EC10
sub_811EC10:
	push {r4,lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_SubmenuPtr]
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	// memBlock
	ldr r0, off_811EC4C // =ePETMenuData
	mov r4, r0
	// size
	mov r1, #0x18
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #1
	bl sub_811EBE8
	ldr r0, dword_811EC44 // =0xffffffe0
	strh r0, [r4,#0x10] // (word_200DF30 - 0x200df20)
	mov r0, #0
	ldr r1, off_811EC48 // =byte_811EBDA
	bl sub_8120CC8
	strb r0, [r4,#0xa] // (byte_200DF2A - 0x200df20)
	strb r1, [r4,#0xb] // (byte_200DF2B - 0x200df20)
	bl sub_8046664 // () -> void
	pop {r4,pc}
	.balign 4, 0x00
dword_811EC44: .word 0xFFFFFFE0
off_811EC48: .word byte_811EBDA
off_811EC4C: .word ePETMenuData
	thumb_func_end sub_811EC10

	thumb_func_start sub_811EC50
sub_811EC50:
	push {lr}
	bl sub_811EC68
	bl sub_811EFB8
	bl sub_811F014
	bl sub_811F050
	bl sub_811F08C
	pop {pc}
	thumb_func_end sub_811EC50

	thumb_local_start
sub_811EC68:
	push {r4-r7,lr}
	ldr r4, off_811ECF4 // =unk_20096E0
	mov r6, #0
	mov r7, #0
	ldr r5, off_811ECF8 // =off_811ECFC
loc_811EC72:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_811EC84:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_811EC84
	cmp r7, #0x20
	blt loc_811EC72
	ldr r5, off_811ECB0 // =off_811ECB4
	mov r7, #0
loc_811EC9A:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r7, #4
	add r6, #4
	tst r0, r0
	bne loc_811EC9A
	// dataList
	ldr r0, off_811ECF4 // =unk_20096E0
	bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
	pop {r4-r7,pc}
	.byte 0, 0
off_811ECB0: .word off_811ECB4
off_811ECB4: .word byte_86C9DCC
	.byte 0x0, 0xD0, 0x0, 0x6, 0x40, 0x3, 0x0, 0x0
	.word dword_86CA10C
	.byte 0x40, 0xD3, 0x0, 0x6, 0x40, 0xB, 0x0, 0x0
	.word dword_86C9AF4
	.byte 0x10, 0x17, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
	.word dword_86CD924
	.byte 0x80, 0x6E, 0x1, 0x6, 0x80, 0x1, 0x0, 0x0
	.word dword_86CD7C4
	.byte 0x0, 0x70, 0x1, 0x6, 0x60, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_811ECF4: .word unk_20096E0
off_811ECF8: .word off_811ECFC
off_811ECFC: .word byte_86C9D8C
	.word 0x1
	.word unk_3001B20
	.word 0x20
	.word byte_86C9DAC
	.word 0x1
	.word unk_3001B40
	.word 0x20
	thumb_func_end sub_811EC68

// () -> void
	thumb_func_start ho_811ED1C
ho_811ED1C:
	push {r5,lr}
	ldr r5, off_811ED54 // =ePETMenuData
	ldr r0, off_811ED38 // =jt_811ED3C
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl sub_811F508 // () -> void
	pop {r5,pc}
off_811ED38: .word jt_811ED3C
jt_811ED3C: .word sub_811ED58+1
	.word sub_811EDB4+1
	.word sub_811EE98+1
	.word sub_811EED0+1
	.word sub_811EF0C+1
	.word sub_811EF28+1
off_811ED54: .word ePETMenuData
	thumb_func_end ho_811ED1C

// () -> void
	thumb_local_start
sub_811ED58:
	push {lr}
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	add r0, #4
	strh r0, [r5,#0x10]
	blt loc_811ED8E
	ldr r0, off_811EDAC // =byte_811EA68
	bl sub_8001B1C
	ldr r0, off_811EDB0 // =byte_811EAB8
	bl sub_8001B1C
	mov r0, #0
	strh r0, [r5,#0x10]
	strb r0, [r5,#9]
	strb r0, [r5,#0xe]
	mov r0, #2
	strb r0, [r5,#0xd]
	mov r0, #4
	strb r0, [r5]
	// a1
	ldr r0, off_811EDA8 // =byte_811EB78
	bl sub_80465A0 // (void *a1) -> void
	bl sub_811F1B8
	bl sub_811F24C
loc_811ED8E:
	bl sub_811F0C8
	bl sub_811F11C
	bl copyTiles_PET_811EF70 // () -> void
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	cmp r0, #0
	blt locret_811EDA6
	bl copyTiles_onNaviSelect_811F54C // () -> void
locret_811EDA6:
	pop {pc}
off_811EDA8: .word byte_811EB78
off_811EDAC: .word byte_811EA68
off_811EDB0: .word byte_811EAB8
	thumb_func_end sub_811ED58

	thumb_local_start
sub_811EDB4:
	push {r4,lr}
	bl copyTiles_PET_811EF70 // () -> void
	bl copyTiles_onNaviSelect_811F54C // () -> void
	bl sub_811F24C
	mov r0, #0x10
	bl sub_8001B84
	bne loc_811EE82
	ldrb r0, [r5,#9]
	tst r0, r0
	beq loc_811EDD6
	sub r0, #1
	strb r0, [r5,#9]
	b loc_811EE82
loc_811EDD6:
	bl IsPaletteFadeActive // () -> zf
	beq loc_811EE82
	mov r0, #0xa
	bl isJoystickIRQActive
	bne loc_811EDF2
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_811EE34
	ldrb r0, [r5,#4]
	cmp r0, #8
	blt loc_811EE08
loc_811EDF2:
	mov r0, #8
	strb r0, [r5]
	mov r0, #1
	strb r0, [r5,#0xd]
	ldr r0, off_811EE90 // =byte_811EB04
	bl sub_8001B1C
	ldr r0, off_811EE94 // =byte_811EB5C
	bl sub_8001B1C
	b loc_811EE82
loc_811EE08:
	mov r4, r0
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #6
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_811EE24
	cmp r4, #6
	beq loc_811EE1C
	cmp r4, #7
	bne loc_811EE24
loc_811EE1C:
	mov r0, #0x69
	bl sound_play // () -> void
	b loc_811EE34
loc_811EE24:
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0x10
	strb r0, [r5]
	mov r0, #4
	strb r0, [r5,#1]
	b loc_811EE82
loc_811EE34:
	ldrb r0, [r5,#4]
	cmp r0, #8
	blt loc_811EE52
	mov r0, #0xe0
	bl isJoystickIRQActive
	beq loc_811EE82
	mov r0, #0x7f
	bl sound_play // () -> void
	ldrb r0, [r5,#3]
	strb r0, [r5,#4]
	mov r0, #3
	strb r0, [r5,#9]
	b loc_811EE82
loc_811EE52:
	mov r0, #0x10
	bl isJoystickIRQActive
	beq loc_811EE70
	mov r0, #0x7f
	bl sound_play // () -> void
	ldrb r0, [r5,#4]
	strb r0, [r5,#3]
	mov r0, #8
	strb r0, [r5,#4]
	mov r0, #0
	strb r0, [r5,#6]
	strb r0, [r5,#7]
	b loc_811EE82
loc_811EE70:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #8
	mov r2, #1
	ldrb r3, [r5,#4]
	bl sub_811FA22
	strb r0, [r5,#4]
loc_811EE82:
	bl sub_811F1B8
	bl sub_811F0C8
	bl sub_811F11C
	pop {r4,pc}
off_811EE90: .word byte_811EB04
off_811EE94: .word byte_811EB5C
	thumb_func_end sub_811EDB4

	thumb_local_start
sub_811EE98:
	push {lr}
	mov r1, #0x10
	ldrsh r0, [r5,r1]
	sub r0, #4
	strh r0, [r5,#0x10]
	ldr r1, byte_811EEC8 // =0xe0
	cmp r0, r1
	bgt loc_811EEB6
	strh r1, [r5,#0x10]
	mov r0, #0x10
	bl sub_8001B84
	bne loc_811EEB6
	mov r0, #0xc
	strb r0, [r5]
loc_811EEB6:
	bl sub_811F0C8
	bl sub_811F11C
	bl copyTiles_PET_811EF70 // () -> void
	bl copyTiles_onNaviSelect_811F54C // () -> void
	pop {pc}
byte_811EEC8: .byte 0xE0, 0xFF, 0xFF, 0xFF, 0x20, 0x0, 0x0, 0x0
	thumb_func_end sub_811EE98

	thumb_local_start
sub_811EED0:
	push {lr}
	bl copyMemory_8001850
	bl sub_8033978
	mov r0, #1
	bl sub_811EBF4
	mov r0, #0x7c
	bl sound_play // () -> void
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_811EEF8
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_811EEF8
loc_811EEF8:
	mov r0, #8
	strb r0, [r5,#1]
	bl sub_811F0C8
	bl sub_811F11C
	bl copyTiles_PET_811EF70 // () -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_811EED0

	thumb_local_start
sub_811EF0C:
	push {lr}
	bl sub_811F1B8
	bl sub_811F214
	bl sub_811F0C8
	bl sub_811F11C
	bl copyTiles_PET_811EF70 // () -> void
	bl copyTiles_onNaviSelect_811F54C // () -> void
	pop {pc}
	thumb_func_end sub_811EF0C

	thumb_local_start
sub_811EF28:
	push {lr}
	mov r0, #0
	strh r0, [r5,#0x10]
	bl sub_8046664 // () -> void
	// a1
	ldr r0, off_811EF64 // =byte_811EBA4
	bl sub_80465A0 // (void *a1) -> void
	mov r0, #4
	strb r0, [r5]
	ldr r0, off_811EF68 // =byte_811EAD4
	bl sub_8001B1C
	ldr r0, off_811EF6C // =byte_811EAEC
	bl sub_8001B1C
	bl sub_811F1B8
	bl sub_811F214
	bl sub_811F0C8
	bl sub_811F11C
	bl copyTiles_PET_811EF70 // () -> void
	bl copyTiles_onNaviSelect_811F54C // () -> void
	pop {pc}
	.balign 4, 0x00
off_811EF64: .word byte_811EBA4
off_811EF68: .word byte_811EAD4
off_811EF6C: .word byte_811EAEC
	thumb_func_end sub_811EF28

// () -> void
// [disable] PET: (The PET graphics on top is gone)
	thumb_local_start
copyTiles_PET_811EF70:
	push {r4,r5,r7,lr}
	mov r7, r5
	// i
	mov r1, #0
	mov r0, #0x10
	// j
	ldrsh r0, [r7,r0]
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_811EF88 // =PET_Gfx_tileRefs
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5,r7,pc}
off_811EF88: .word PET_Gfx_tileRefs
	thumb_func_end copyTiles_PET_811EF70

	thumb_local_start
sub_811EF8C:
	push {lr}
	// initRefs
	ldr r0, off_811EF98 // =off_811EF9C
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
off_811EF98: .word off_811EF9C
off_811EF9C: .word sprite_86CBB7C
	.word 0x6015000
	.word 0x5C0
	.word sprite_86CC13C
	.word 0x60155C0
	.word 0x12D4
	.word 0x0
	thumb_func_end sub_811EF8C

	thumb_local_start
sub_811EFB8:
	push {r4-r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200a220_Ptr]
	bl sub_8123360
	tst r0, r0
	bne loc_811EFCE
	mov r0, #0
	str r0, [r6,#8]
	str r0, [r6,#0xc]
	b loc_811EFE6
loc_811EFCE:
	bl getPETNaviSelect // () -> u8
	mov r4, r0
	mov r1, #0x40
	bl sub_80137FE
	str r0, [r6,#8]
	mov r0, r4
	mov r1, #0x42
	bl sub_80137FE
	str r0, [r6,#0xc]
loc_811EFE6:
	ldr r0, off_811F0C0 // =byte_86CB360
	mov r1, #0xf0
	ldr r2, off_811F008 // =unk_200BEA0
	mov r3, #0
	mov r4, #9
	mov r5, #1
	ldr r6, off_811F0C4 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_811F008 // =unk_200BEA0
	ldr r1, off_811F010 // =byte_200CC20
	ldr r2, dword_811F00C // =0x6015000
	mov r3, #9
	bl sub_811F5DC
	pop {r4-r7,pc}
off_811F008: .word unk_200BEA0
dword_811F00C: .word 0x6015000
off_811F010: .word byte_200CC20
	thumb_func_end sub_811EFB8

	thumb_local_start
sub_811F014:
	push {r4-r7,lr}
	bl sub_803D06C
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200a220_Ptr]
	str r0, [r6,#8]
	ldr r0, off_811F0C0 // =byte_86CB360
	mov r1, #0xf1
	ldr r2, off_811F044 // =unk_200C0E0
	mov r3, #0
	mov r4, #7
	mov r5, #1
	ldr r6, off_811F0C4 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_811F044 // =unk_200C0E0
	ldr r1, off_811F04C // =byte_200CF20
	ldr r2, dword_811F048 // =0x6015240
	mov r3, #7
	bl sub_811F5DC
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811F044: .word unk_200C0E0
dword_811F048: .word 0x6015240
off_811F04C: .word byte_200CF20
	thumb_func_end sub_811F014

	thumb_local_start
sub_811F050:
	push {r4-r7,lr}
	bl sub_803D0F4
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200a220_Ptr]
	str r0, [r6,#8]
	ldr r0, off_811F0C0 // =byte_86CB360
	mov r1, #0xf2
	ldr r2, off_811F080 // =unk_200C2A0
	mov r3, #0
	mov r4, #6
	mov r5, #1
	ldr r6, off_811F0C4 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_811F080 // =unk_200C2A0
	ldr r1, off_811F088 // =byte_200D220
	ldr r2, dword_811F084 // =0x6015400
	mov r3, #6
	bl sub_811F5DC
	pop {r4-r7,pc}
	.byte 0, 0
off_811F080: .word unk_200C2A0
dword_811F084: .word 0x6015400
off_811F088: .word byte_200D220
	thumb_func_end sub_811F050

	thumb_local_start
sub_811F08C:
	push {r4-r7,lr}
	bl sub_811F290
	mov r1, r0
	ldr r0, off_811F0C0 // =byte_86CB360
	ldr r2, off_811F0B4 // =byte_200C620
	mov r3, #0
	mov r4, #0xc
	mov r5, #1
	ldr r6, off_811F0C4 // =dword_86A5D60
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_811F0B4 // =byte_200C620
	ldr r1, off_811F0BC // =byte_200C920
	ldr r2, dword_811F0B8 // =0x6015780
	mov r3, #0xc
	bl sub_811F5DC
	pop {r4-r7,pc}
off_811F0B4: .word byte_200C620
dword_811F0B8: .word 0x6015780
off_811F0BC: .word byte_200C920
off_811F0C0: .word byte_86CB360
off_811F0C4: .word dword_86A5D60
	thumb_func_end sub_811F08C

	thumb_local_start
sub_811F0C8:
	push {lr}
	ldrb r0, [r5,#4]
	cmp r0, #8
	beq loc_811F0DE
	ldr r1, off_811F0F4 // =off_811F0F8
	mov r0, #0
	ldr r0, [r1,r0]
	ldrh r0, [r0,#0x4] // (word_811F110 - 0x811f10c)
	ldr r1, off_811F0F0 // =word_3001B2C
	strh r0, [r1]
	b locret_811F0EE
loc_811F0DE:
	ldr r0, off_811F0F0 // =word_3001B2C
	ldr r1, off_811F0F4 // =off_811F0F8
	ldrb r2, [r5,#6]
	ldrb r3, [r5,#7]
	bl sub_811F184
	strb r0, [r5,#7]
	strb r1, [r5,#6]
locret_811F0EE:
	pop {pc}
off_811F0F0: .word word_3001B2C
off_811F0F4: .word off_811F0F8
off_811F0F8: .word dword_811F10C
	.word dword_811F10C
	.word dword_811F10C
	.word dword_811F10C
	.word dword_811F10C
dword_811F10C: .word 0x87BF4
word_811F110: .hword 0x19A
	.hword 0x6
	.byte 0xCB, 0x4E, 0x6, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_811F0C8

	thumb_local_start
sub_811F11C:
	push {r4,lr}
	ldr r4, off_811F154 // =byte_811F158
	mov r0, #0
loc_811F122:
	ldr r2, [r4,r0]
	ldr r1, dword_811F17C // =0x537f
	strh r1, [r2]
	add r0, #4
	cmp r0, #0x20
	blt loc_811F122
	ldrb r0, [r5,#4]
	cmp r0, #8
	beq loc_811F13C
	lsl r0, r0, #2
	ldr r2, [r4,r0]
	ldr r1, dword_811F178 // =0x7bfe
	strh r1, [r2]
loc_811F13C:
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #6
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_811F150
	ldr r2, [r4,#0x1c] // (off_811F174 - 0x811f158)
	ldr r1, dword_811F180 // =0x5a7a
	strh r1, [r2]
	ldr r2, [r4,#0x18] // (off_811F170 - 0x811f158)
	strh r1, [r2]
locret_811F150:
	pop {r4,pc}
	.balign 4, 0x00
off_811F154: .word byte_811F158
byte_811F158: .byte 0x4A, 0x1B, 0x0, 0x3, 0x4C, 0x1B, 0x0, 0x3, 0x4E, 0x1B, 0x0
	.byte 0x3, 0x50, 0x1B, 0x0, 0x3, 0x52, 0x1B, 0x0, 0x3, 0x54, 0x1B
	.byte 0x0, 0x3
off_811F170: .word word_3001B56
off_811F174: .word word_3001B58
dword_811F178: .word 0x7BFE
dword_811F17C: .word 0x537F
dword_811F180: .word 0x5A7A
	thumb_func_end sub_811F11C

	thumb_local_start
sub_811F184:
	push {r4-r7,lr}
	sub r3, #1
	ble loc_811F190
	mov r0, r3
	mov r1, r2
	b locret_811F1B6
loc_811F190:
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	ldrb r3, [r1,#6]
	lsl r3, r3, #2
	ldr r6, [r6,r3]
	lsl r2, r2, #2
	ldrh r0, [r6,r2]
	tst r0, r0
	bne loc_811F1AE
	mov r2, #0
	mov r4, r2
	ldrh r0, [r6,r2]
loc_811F1AE:
	strh r0, [r7]
	add r2, #2
	ldrh r0, [r6,r2]
	add r1, r4, #1
locret_811F1B6:
	pop {r4-r7,pc}
	thumb_func_end sub_811F184

	thumb_local_start
sub_811F1B8:
	push {r4-r7,lr}
	ldr r7, off_811F1EC // =dword_811F1F0
	mov r6, #0
loc_811F1BE:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_811F1F4 - 0x811f1f0)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	cmp r6, #2
	blt loc_811F1BE
	ldr r7, off_811F200 // =dword_811F204
	mov r6, #0
loc_811F1D6:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_811F208 - 0x811f204)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	cmp r6, #2
	blt loc_811F1D6
	pop {r4-r7,pc}
off_811F1EC: .word dword_811F1F0
dword_811F1F0: .word 0x40044011
byte_811F1F4: .byte 0x85, 0xC3, 0x0, 0x0, 0x11, 0x40, 0x24, 0x0, 0x89, 0xC3
	.byte 0x0, 0x0
off_811F200: .word dword_811F204
dword_811F204: .word 0x4078406E
byte_811F208: .byte 0x80, 0xC3, 0x0, 0x0, 0x6E, 0x0, 0x98, 0x0, 0x84, 0xC3, 0x0
	.byte 0x0
	thumb_func_end sub_811F1B8

	thumb_local_start
sub_811F214:
	push {r4-r7,lr}
	ldr r7, off_811F230 // =dword_811F234
	mov r6, #0
loc_811F21A:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_811F238 - 0x811f234)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	cmp r6, #3
	blt loc_811F21A
	pop {r4-r7,pc}
off_811F230: .word dword_811F234
dword_811F234: .word 0x80804076
byte_811F238: .byte 0xBC, 0xE2, 0x0, 0x0, 0x76, 0x40, 0xA0, 0x80, 0xC4, 0xE2
	.byte 0x0, 0x0, 0x76, 0x40, 0xC0, 0x80, 0xCC, 0xE2, 0x0, 0x0
	thumb_func_end sub_811F214

	thumb_local_start
sub_811F24C:
	push {r4-r7,lr}
	// r5 = 0200DF20
	ldrb r0, [r5,#0xc]
	add r0, #1
	cmp r0, #3
	bgt loc_811F258
	strb r0, [r5,#0xc]
loc_811F258:
	ldr r7, off_811F274 // =dword_811F278
	mov r6, #0
loc_811F25C:
	ldr r0, [r7]
	ldr r1, [r7,#0x4] // (byte_811F27C - 0x811f278)
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #8
	add r6, #1
	ldrb r0, [r5,#0xc]
	cmp r6, r0
	blt loc_811F25C
	pop {r4-r7,pc}
off_811F274: .word dword_811F278
dword_811F278: .word 0x80804076
byte_811F27C: .byte 0xBC, 0xE2, 0x0, 0x0, 0x76, 0x40, 0xA0, 0x80, 0xC4, 0xE2
	.byte 0x0, 0x0, 0x76, 0x40, 0xC0, 0x80, 0xCC, 0xE2, 0x0, 0x0
	thumb_func_end sub_811F24C

	thumb_func_start sub_811F290
sub_811F290:
	push {lr}
	mov r2, r10
	ldr r2, [r2,#oToolkit_GameStatePtr]
	ldrb r0, [r2,#oGameState_MapGroup]
	cmp r0, #0x80
	blt loc_811F2A0
	sub r0, #0x80
	add r0, #7
loc_811F2A0:
	ldrb r1, [r2,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r2, off_811F2AC // =off_811F2B0
	ldr r2, [r2,r0]
	ldrb r0, [r2,r1]
	pop {pc}
off_811F2AC: .word off_811F2B0
off_811F2B0: .word byte_811F328
	.word byte_811F338
	.word byte_811F348
	.word byte_811F358
	.word byte_811F368
	.word byte_811F378
	.word byte_811F388
	.word byte_811F398
	.word byte_811F3A8
	.word byte_811F3B8
	.word byte_811F3C8
	.word byte_811F3D8
	.word byte_811F3E8
	.word byte_811F3F8
	.word byte_811F408
	.word byte_811F418
	.word byte_811F428
	.word byte_811F438
	.word byte_811F448
	.word byte_811F458
	.word byte_811F468
	.word byte_811F478
	.word byte_811F488
	.word byte_811F498
	.word byte_811F4A8
	.word byte_811F4B8
	.word byte_811F4C8
	.word byte_811F4D8
	.word byte_811F4E8
	.word byte_811F4F8
byte_811F328: .byte 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F338: .byte 0x2, 0x3, 0x4, 0x5, 0x6, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F348: .byte 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F358: .byte 0x12, 0x13, 0x14, 0x15, 0x16, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F368: .byte 0x17, 0x18, 0x19, 0x1A, 0x1B, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F378: .byte 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F388: .byte 0x21, 0x22, 0x23, 0x24, 0x25, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F398: .byte 0x26, 0x27, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F3A8: .byte 0x28, 0x29, 0x2A, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F3B8: .byte 0x2B, 0x2C, 0x2D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F3C8: .byte 0x2E, 0x2F, 0x30, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F3D8: .byte 0x31, 0x32, 0x33, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F3E8: .byte 0x34, 0x35, 0x36, 0x37, 0x38, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F3F8: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F408: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F418: .byte 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41
	.byte 0x42, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F428: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F438: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F448: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F458: .byte 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B
	.byte 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52
byte_811F468: .byte 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B
	.byte 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62
byte_811F478: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F488: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F498: .byte 0x63, 0x64, 0x65, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F4A8: .byte 0x66, 0x67, 0x68, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F4B8: .byte 0x69, 0x6A, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F4C8: .byte 0x6B, 0x6C, 0x6D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F4D8: .byte 0x6E, 0x6F, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F4E8: .byte 0x71, 0x72, 0x73, 0x74, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_811F4F8: .byte 0x75, 0x76, 0x77, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_811F290

// () -> void
	thumb_local_start
sub_811F508:
	push {r4,lr}
	mov r0, #0x10
	lsl r0, r0, #0x10
	ldrh r1, [r5,#0x10]
	tst r1, r1
	bne locret_811F538
	mov r2, #0
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_811F53C // =0x0
	ldrb r2, [r5,#0xa]
	ldr r3, off_811F540 // =byte_811EBD0
	ldr r4, dword_811F544 // =0x40000000
	bl sub_811FAF4
	ldrb r1, [r5,#0xb]
	sub r1, #1
	strb r1, [r5,#0xb]
	bne locret_811F538
	strb r0, [r5,#0xa]
	ldr r1, off_811F548 // =byte_811EBDA
	bl sub_8120CC8
	strb r1, [r5,#0xb]
locret_811F538:
	pop {r4,pc}
	.byte 0x0, 0x0
dword_811F53C: .word 0x0
off_811F540: .word byte_811EBD0
dword_811F544: .word 0x40000000
off_811F548: .word byte_811EBDA
	thumb_func_end sub_811F508

// () -> void
	thumb_local_start
copyTiles_onNaviSelect_811F54C:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp,#4]
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	beq loc_811F560
	// if (naviSelect != 0)
	mov r0, #1
	str r0, [sp,#4]
loc_811F560:
	ldrb r0, [r5,#0xd]
	sub r0, #1
	strb r0, [r5,#0xd]
	bne loc_811F576
	mov r0, #2
	strb r0, [r5,#0xd]
	ldrb r0, [r5,#0xe]
	add r0, #1
	cmp r0, #8
	bge loc_811F576
	strb r0, [r5,#0xe]
loc_811F576:
	ldrb r0, [r5,#0xe]
	str r0, [sp]
	ldr r6, off_811F5B4 // =off_811F5B8
	mov r7, r5
loc_811F57E:
	mov r0, #0x10
	ldrsh r0, [r7,r0]
	// j
	add r0, #4
	mov r1, #3
	ldr r3, [sp]
	lsl r2, r3, #1
	// i
	add r1, r1, r2
	cmp r3, #3
	bne loc_811F598
	ldr r2, [sp,#4]
	tst r2, r2
	beq loc_811F598
	mov r3, #8
loc_811F598:
	lsl r3, r3, #2
	// tileRefs
	ldr r3, [r6,r3]
	// cpyOff
	mov r2, #0
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r3, [sp]
	sub r3, #1
	str r3, [sp]
	bge loc_811F57E
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811F5B4: .word off_811F5B8
off_811F5B8: .word TileRefs_86CB21C
	.word TileRefs_86CB240
	.word TileRefs_86CB264
	.word TileRefs_86CB288
	.word TileRefs_86CB2AC
	.word TileRefs_86CB2D0
	.word TileRefs_86CB2F4
	.word TileRefs_86CB318
	.word TileRefs_86CB33C
	thumb_func_end copyTiles_onNaviSelect_811F54C

	thumb_local_start
sub_811F5DC:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	str r1, [sp,#8]
	str r2, [sp,#0xc]
	str r3, [sp,#0x10]
	str r3, [sp,#0x14]
	mov r2, #0
	str r2, [sp]
	str r2, [sp,#4]
	mov r6, r0
	mov r7, r1
	mov r5, #0
	mov r4, #0
	mov r3, #0
loc_811F5F8:
	ldr r0, [sp,#0x14]
	sub r0, #4
	bge loc_811F66A
	ldr r0, [sp,#0x14]
	sub r0, #2
	bge loc_811F62C
	ldr r0, [sp,#0x14]
	sub r0, #1
	blt loc_811F6A8
	str r0, [sp,#0x14]
	mov r2, #0
loc_811F60E:
	ldr r0, [r6,r3]
	str r0, [r7,r4]
	add r4, #4
	add r3, #4
	add r2, #4
	cmp r2, #0x40
	blt loc_811F60E
	mov r0, #0
	str r0, [sp,#4]
	mov r5, #0
	mov r3, #0x40
	ldr r0, [sp]
	add r3, r3, r0
	str r3, [sp]
	b loc_811F5F8
loc_811F62C:
	str r0, [sp,#0x14]
loc_811F62E:
	mov r2, #0
loc_811F630:
	ldr r0, [r6,r3]
	str r0, [r7,r4]
	add r4, #4
	add r3, #4
	add r2, #4
	cmp r2, #0x20
	blt loc_811F630
	add r3, #0x20
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
	cmp r0, #2
	blt loc_811F62E
	ldr r0, [sp]
	mov r3, #0x20
	add r3, r3, r0
	mov r0, #0
	str r0, [sp,#4]
	add r5, #1
	cmp r5, #2
	blt loc_811F62E
	mov r0, #0
	str r0, [sp,#4]
	mov r5, #0
	mov r3, #0x80
	ldr r0, [sp]
	add r3, r3, r0
	str r3, [sp]
	b loc_811F5F8
loc_811F66A:
	str r0, [sp,#0x14]
loc_811F66C:
	mov r2, #0
loc_811F66E:
	ldr r0, [r6,r3]
	str r0, [r7,r4]
	add r4, #4
	add r3, #4
	add r2, #4
	cmp r2, #0x20
	blt loc_811F66E
	add r3, #0x20
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
	cmp r0, #4
	blt loc_811F66C
	ldr r0, [sp]
	mov r3, #0x20
	add r3, r3, r0
	mov r0, #0
	str r0, [sp,#4]
	add r5, #1
	cmp r5, #2
	blt loc_811F66C
	mov r0, #0
	str r0, [sp,#4]
	mov r5, #0
	ldr r3, off_811F6BC // =0x100
	ldr r0, [sp]
	add r3, r3, r0
	str r3, [sp]
	b loc_811F5F8
loc_811F6A8:
	ldr r0, [sp,#8]
	ldr r1, [sp,#0xc]
	ldr r2, [sp,#0x10]
	mov r3, #0x40
	mul r2, r3
	bl sub_8000AC8
	add sp, sp, #0x18
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811F6BC: .word 0x100
	thumb_func_end sub_811F5DC

	thumb_func_start sub_811F6C0
sub_811F6C0:
	push {r4,r5,lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_SubmenuPtr]
	mov r4, r0
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r5, off_811F704 // =ePETMenuData
	ldrb r0, [r5,#0x4] // (byte_200DF24 - 0x200df20)
	lsl r0, r0, #2
	strb r0, [r4]
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrh r1, [r0,#oGameState_MapGroup]
	strh r1, [r0,#oGameState_LastMapGroup]
	pop {r4,r5,pc}
	thumb_func_end sub_811F6C0

	thumb_func_start sub_811F6E0
sub_811F6E0:
	push {r4,r5,lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_SubmenuPtr]
	mov r4, r0
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldr r5, off_811F704 // =ePETMenuData
	mov r0, #0x10
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4,#0xd]
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrh r1, [r0,#oGameState_MapGroup]
	strh r1, [r0,#oGameState_LastMapGroup]
	pop {r4,r5,pc}
	.balign 4, 0x00
off_811F704: .word ePETMenuData
	thumb_func_end sub_811F6E0

	thumb_func_start sub_811F708
sub_811F708:
	push {lr}
	bl sub_811F728
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r1, #8
	strb r1, [r0,#oGameState_Unk_16]
	ldr r1, off_811F770 // =ePETMenuData
	mov r0, #0x14
	strb r0, [r1]
	mov r0, #0
	strb r0, [r1,#0x1] // (byte_200DF21 - 0x200df20)
	strb r0, [r1,#0x8] // (byte_200DF28 - 0x200df20)
	mov r0, #3
	strb r0, [r1,#0x9] // (byte_200DF29 - 0x200df20)
	pop {pc}
	thumb_func_end sub_811F708

	thumb_func_start sub_811F728
sub_811F728:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_MainJumptableIndexPtr]
	mov r1, #4
	strb r1, [r0]
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r1, #0
	strb r1, [r0,#oGameState_SubsystemIndex]
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldr r1, off_811F76C // =0x40
	strh r1, [r0]
	mov r0, #6
	bl sub_80015FC
	bl sub_809F68C
	bl chatbox_8040818
	mov r0, #0x40
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	pop {pc}
	thumb_func_end sub_811F728

	thumb_func_start sub_811F758
sub_811F758:
	push {lr}
	bl sub_8005524
	mov r0, r10
	ldr r0, [r0,#oToolkit_SubmenuPtr]
	mov r1, #0x18
	strb r1, [r0]
	bl sub_8129248
	pop {pc}
off_811F76C: .word 0x40
off_811F770: .word ePETMenuData
	thumb_func_end sub_811F758

// () -> void
	thumb_func_start SubMenuControl
SubMenuControl:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_SubmenuPtr]
	ldr r0, off_811F79C // =JumpTable811F7A0
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldrb r0, [r5]
	cmp r0, #0x18
	bne loc_811F794
	ldrb r0, [r5,#1]
	cmp r0, #0x18
	beq locret_811F798
	cmp r0, #0x1c
	beq locret_811F798
loc_811F794:
	bl GetRNG2 // () -> int
locret_811F798:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811F79C: .word JumpTable811F7A0
// SubmenuPtr* r5
JumpTable811F7A0: .word HandleChipFolderMenu8123434+1
	.word HandleSubChipMenu8123F5C+1
	.word HandleLibraryMenu8124B3C+1
	.word HandleMegaManStatusMenu8126B4C+1
	.word HandleEmailMenu81279F8+1
	.word HandleKeyItemMenu8128730+1
	.word HandleCommMenu81291E8+1
	.word HandleSaveMenu8132B88+1
	.word sub_8133200+1
	.word sub_81356D4+1
	.word sub_8136DE0+1
	.word sub_81378B4+1
	.word sub_8128CBC+1
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	thumb_func_end SubMenuControl

	thumb_func_start isJoystickIRQActive
isJoystickIRQActive:
	mov r1, r10
	ldr r1, [r1,#oToolkit_JoypadPtr]
	ldrh r1, [r1,#2]
	tst r0, r1
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end isJoystickIRQActive

	thumb_func_start sub_811F7F8
sub_811F7F8:
	push {r4-r7,lr}
	mov r6, r8
	push {r6}
	sub sp, sp, #0xc
	str r1, [sp]
	str r2, [sp,#8]
	mov r4, #2
	bic r2, r4
	mov r4, #0
	str r4, [sp,#4]
	mov r4, #0xc0
	bic r1, r4
	mov r8, r3
	mov r12, r2
	sub r1, #1
	mov r9, r1
	mov r6, #0x1e
	add r6, r8
	ldrh r6, [r5,r6]
	sub r6, #1
	mov r2, #0x20
	add r2, r8
	ldrh r2, [r5,r2]
	mov r3, #0x24
	add r3, r8
	ldrh r3, [r5,r3]
	mov r4, r9
	add r4, #1
	ldr r1, [sp]
	lsr r1, r1, #7
	tst r1, r1
	bne loc_811F844
	ldr r1, off_811F914 // =0x200
	tst r1, r0
	beq loc_811F844
	mov r1, #1
	str r1, [sp,#4]
	b loc_811F86E
loc_811F844:
	ldr r1, [sp]
	lsl r1, r1, #1
	lsr r1, r1, #7
	tst r1, r1
	bne loc_811F876
	mov r4, #1
	mov r1, #0x40
	tst r1, r0
	beq loc_811F876
	sub r2, r2, r4
	bge loc_811F876
	mov r2, #0
	mov r7, r12
	cmp r7, #0
	beq loc_811F86E
	cmp r3, #0
	bne loc_811F86E
	mov r2, r9
	mov r3, r9
	sub r3, r6, r3
	add r3, #1
loc_811F86E:
	sub r3, r3, r4
	bgt loc_811F8D2
	mov r3, #0
	b loc_811F8D2
loc_811F876:
	mov r4, r9
	add r4, #1
	ldr r1, [sp]
	lsr r1, r1, #7
	tst r1, r1
	bne loc_811F88E
	ldr r1, off_811F918 // =0x100
	tst r1, r0
	beq loc_811F88E
	mov r1, #1
	str r1, [sp,#4]
	b loc_811F8AE
loc_811F88E:
	ldr r1, [sp]
	lsl r1, r1, #1
	lsr r1, r1, #7
	tst r1, r1
	bne loc_811F8D2
	mov r4, #1
	mov r1, #0x80
	tst r1, r0
	beq loc_811F8D2
	cmp r6, r9
	blt loc_811F8A6
	mov r6, r9
loc_811F8A6:
	add r2, r2, r4
	cmp r2, r6
	ble loc_811F8D2
	mov r2, r6
loc_811F8AE:
	cmp r6, r9
	blt loc_811F8D2
	mov r6, #0x1e
	add r6, r8
	ldrh r6, [r5,r6]
	mov r0, r9
	sub r6, r6, r0
	sub r6, #1
	add r3, r3, r4
	cmp r3, r6
	ble loc_811F8D2
	mov r3, r6
	mov r7, r12
	cmp r7, #0
	beq loc_811F8D2
	mov r2, #0
	mov r3, #0
	b loc_811F8D2
loc_811F8D2:
	mov r4, #0x20
	add r4, r8
	ldrh r4, [r5,r4]
	cmp r2, r4
	bne loc_811F8EA
	mov r4, #0x24
	add r4, r8
	ldrh r4, [r5,r4]
	cmp r3, r4
	bne loc_811F8EA
	mov r7, #0
	b loc_811F8FA
loc_811F8EA:
	ldr r0, [sp,#8]
	mov r1, #2
	tst r0, r1
	bne loc_811F8F8
	mov r0, #0x7f
	bl sound_play // () -> void
loc_811F8F8:
	mov r7, #0xff
loc_811F8FA:
	mov r0, #0x20
	add r0, r8
	strh r2, [r5,r0]
	mov r0, #0x24
	add r0, r8
	strh r3, [r5,r0]
	ldr r1, [sp,#4]
	add sp, sp, #0xc
	pop {r0}
	mov r8, r0
	mov r0, r7
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811F914: .word 0x200
off_811F918: .word 0x100
	thumb_func_end sub_811F7F8

	thumb_func_start sub_811F91C
sub_811F91C:
	push {r4-r7,lr}
	mov r6, r8
	push {r6}
	sub sp, sp, #4
	str r1, [sp]
	mov r4, #0x80
	bic r1, r4
	mov r8, r3
	mov r12, r2
	sub r1, #1
	mov r9, r1
	mov r6, #0x1e
	add r6, r8
	ldrh r6, [r5,r6]
	sub r6, #1
	mov r2, #0x20
	add r2, r8
	ldrh r2, [r5,r2]
	mov r3, #0x24
	add r3, r8
	ldrh r3, [r5,r3]
	mov r4, #4
	add r4, #1
	ldr r1, [sp]
	lsr r1, r1, #7
	tst r1, r1
	bne loc_811F958
	ldr r1, off_811FA04 // =0x200
	tst r1, r0
	bne loc_811F978
loc_811F958:
	mov r4, #1
	mov r1, #0x40
	tst r1, r0
	beq loc_811F980
	sub r2, r2, r4
	bge loc_811F980
	mov r2, #0
	mov r7, r12
	cmp r7, #0
	beq loc_811F978
	cmp r3, #0
	bne loc_811F978
	mov r2, r9
	mov r3, r9
	sub r3, r6, r3
	add r3, #1
loc_811F978:
	sub r3, r3, r4
	bgt loc_811F9CC
	mov r3, #0
	b loc_811F9CC
loc_811F980:
	mov r4, #4
	add r4, #1
	ldr r1, [sp]
	lsr r1, r1, #7
	tst r1, r1
	bne loc_811F992
	ldr r1, off_811FA08 // =0x100
	tst r1, r0
	bne loc_811F9A8
loc_811F992:
	mov r4, #1
	mov r1, #0x80
	tst r1, r0
	beq loc_811F9CC
	cmp r6, r9
	blt loc_811F9A0
	mov r6, r9
loc_811F9A0:
	add r2, r2, r4
	cmp r2, r6
	ble loc_811F9CC
	mov r2, r6
loc_811F9A8:
	cmp r6, r9
	blt loc_811F9CC
	mov r6, #0x1e
	add r6, r8
	ldrh r6, [r5,r6]
	mov r0, r9
	sub r6, r6, r0
	sub r6, #1
	add r3, r3, r4
	cmp r3, r6
	ble loc_811F9CC
	mov r3, r6
	mov r7, r12
	cmp r7, #0
	beq loc_811F9CC
	mov r2, #0
	mov r3, #0
	b loc_811F9CC
loc_811F9CC:
	mov r4, #0x20
	add r4, r8
	ldrh r4, [r5,r4]
	cmp r2, r4
	bne loc_811F9E4
	mov r4, #0x24
	add r4, r8
	ldrh r4, [r5,r4]
	cmp r3, r4
	bne loc_811F9E4
	mov r7, #0
	b loc_811F9EC
loc_811F9E4:
	mov r0, #0x7f
	bl sound_play // () -> void
	mov r7, #0xff
loc_811F9EC:
	mov r0, #0x20
	add r0, r8
	strh r2, [r5,r0]
	mov r0, #0x24
	add r0, r8
	strh r3, [r5,r0]
	add sp, sp, #4
	pop {r0}
	mov r8, r0
	mov r0, r7
	pop {r4-r7,pc}
	.balign 4, 0x00
off_811FA04: .word 0x200
off_811FA08: .word 0x100
	thumb_func_end sub_811F91C

	thumb_func_start sub_811FA0C
sub_811FA0C:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r3, [sp,#8]
	mov r4, #0x20
	str r4, [sp]
	mov r4, #0x10
	str r4, [sp,#4]
	str r2, [sp,#0xc]
	mov r4, #2
	bic r2, r4
	b loc_811FA36
	thumb_func_end sub_811FA0C

	thumb_func_start sub_811FA22
sub_811FA22:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r3, [sp,#8]
	mov r4, #0x40
	str r4, [sp]
	mov r4, #0x80
	str r4, [sp,#4]
	str r2, [sp,#0xc]
	mov r4, #2
	bic r2, r4
loc_811FA36:
	mov r4, r3
	mov r6, #0
	ldr r3, [sp]
	tst r0, r3
	beq loc_811FA5C
	mov r6, #1
	sub r4, #1
	cmp r4, #0
	bge loc_811FA7E
	mov r6, #0
	tst r2, r2
	beq loc_811FA74
	mov r6, #1
	sub r4, r1, #1
	ldr r3, [sp,#8]
	cmp r4, r3
	bne loc_811FA7E
	mov r6, #0
	b loc_811FA7E
loc_811FA5C:
	ldr r3, [sp,#4]
	tst r0, r3
	beq loc_811FA7E
	mov r6, #1
	add r4, #1
	cmp r4, r1
	blt loc_811FA7E
	tst r2, r2
	bne loc_811FA74
	sub r4, #1
	mov r6, #0
	b loc_811FA90
loc_811FA74:
	mov r4, #0
	ldr r3, [sp,#8]
	cmp r4, r3
	beq loc_811FA90
	mov r6, #1
loc_811FA7E:
	tst r6, r6
	beq loc_811FA90
	ldr r0, [sp,#0xc]
	mov r1, #2
	tst r0, r1
	bne loc_811FA90
	mov r0, #0x7f
	bl sound_play // () -> void
loc_811FA90:
	mov r0, r4
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811FA22

	thumb_func_start sub_811FA98
sub_811FA98:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r6, [sp,#0xc]
	mov r6, r1
	lsr r6, r6, #0x10
	str r6, [sp]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r6, #0xff
	and r6, r1
	str r6, [sp,#8]
	lsr r1, r1, #8
	str r1, [sp,#4]
	cmp r0, #0
	blt loc_811FAEC
	cmp r2, r4
	ble loc_811FAEC
	sub r2, r2, r4
	push {r0,r1,r3}
	lsl r0, r7, #0x10
	lsl r1, r2, #4
	svc 6
	mov r2, r0
	pop {r0,r1,r3}
	mul r2, r3
	lsr r2, r2, #0xc
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	add r1, r1, r2
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_811FAF0 // =0x8000
	orr r0, r1
	ldr r2, [sp]
	lsl r2, r2, #0xa
	ldr r1, [sp,#0xc]
	orr r1, r2
	ldr r2, [sp,#4]
	ldr r3, [sp,#8]
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_811FAEC:
	add sp, sp, #0x10
	pop {r4-r7,pc}
dword_811FAF0: .word 0x8000
	thumb_func_end sub_811FA98

	thumb_func_start sub_811FAF4
sub_811FAF4:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	mov r6, r1
	lsr r6, r6, #0x10
	str r6, [sp]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r7, #0xff
	and r7, r1
	str r7, [sp,#8]
	lsr r1, r1, #8
	str r1, [sp,#4]
	mov r7, r2
	lsl r7, r7, #1
	lsr r7, r7, #1
	cmp r0, #0
	blt loc_811FB5A
	orr r4, r0
	mov r6, r4
	lsr r0, r2, #0x1f
	beq loc_811FB2A
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	mov r1, #3
	tst r0, r1
	beq loc_811FB5A
loc_811FB2A:
	lsl r2, r2, #1
	ldrh r0, [r3,r2]
	ldr r1, dword_811FB60 // =0xffff
	cmp r0, r1
	bne loc_811FB3A
	sub r2, #2
	ldrh r0, [r3,r2]
	b loc_811FB42
loc_811FB3A:
	tst r0, r0
	bne loc_811FB42
	ldr r0, [r3]
	mov r2, #0
loc_811FB42:
	mov r7, r2
	lsr r7, r7, #1
	add r7, #1
	ldr r2, [sp]
	lsl r2, r2, #0xa
	orr r0, r2
	mov r1, r0
	mov r0, r6
	ldr r2, [sp,#4]
	ldr r3, [sp,#8]
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_811FB5A:
	mov r0, r7
	add sp, sp, #0xc
	pop {r4-r7,pc}
dword_811FB60: .word 0xFFFF
	thumb_func_end sub_811FAF4

	thumb_func_start sub_811FB64
sub_811FB64:
	push {lr}
	strb r0, [r5,#1]
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {pc}
	thumb_func_end sub_811FB64

	thumb_func_start sub_811FB78
sub_811FB78:
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	mov r0, #0
	strb r0, [r1,#6]
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_811FB78

	thumb_func_start sub_811FB84
sub_811FB84:
	push {r4-r7,lr}
	ldr r4, dword_811FC0C // =0xffffffff
	lsl r1, r1, #2
	mov r7, r1
	ldr r3, off_811FBB8 // =off_811FBBC
	ldr r3, [r3,r1]
	mov r6, #0
	mov r1, #0
loc_811FB94:
	ldr r2, [r3,r1]
	cmp r2, r0
	bne loc_811FBAC
	ldr r3, off_811FBD0 // =off_811FBD4
	ldr r3, [r3,r7]
	ldr r3, [r3,r1]
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	ldrb r1, [r1,#6]
	lsl r1, r1, #2
	ldr r4, [r3,r1]
	b loc_811FBB4
loc_811FBAC:
	add r1, #4
	ldr r2, dword_811FC0C // =0xffffffff
	cmp r2, r0
	bne loc_811FB94
loc_811FBB4:
	mov r0, r4
	pop {r4-r7,pc}
off_811FBB8: .word off_811FBBC
off_811FBBC: .word off_811FBE8
	.word off_811FC04
	.word off_811FC20
	.word off_811FC84
	.word off_811FC94
off_811FBD0: .word off_811FBD4
off_811FBD4: .word off_811FBF4
	.word off_811FC10
	.word off_811FC44
	.word off_811FC8C
	.word off_811FC9C
off_811FBE8: .word byte_86C9D8C
	.word byte_86C9DAC
	.word 0xFFFFFFFF
off_811FBF4: .word off_811FBFC
	.word off_811FC00
off_811FBFC: .word byte_86C9D8C
off_811FC00: .word byte_86C9DAC
off_811FC04: .word byte_86C9D8C, byte_86C9DAC
dword_811FC0C: .word 0xFFFFFFFF
off_811FC10: .word off_811FC18
	.word off_811FC1C
off_811FC18: .word byte_86C9D8C
off_811FC1C: .word byte_86C9DAC
off_811FC20: .word dword_86C9108
	.word dword_86C9B54
	.word 0x886C9AA4
	.word byte_872CF94
	.word dword_86C9AF4
	.word dword_86C9B14
	.word dword_86C9B34
	.word dword_86C9B94
	.word 0xFFFFFFFF
off_811FC44: .word off_811FC64
	.word off_811FC68
	.word off_811FC6C
	.word off_811FC70
	.word off_811FC74
	.word off_811FC78
	.word off_811FC7C
	.word off_811FC80
off_811FC64: .word dword_86C9108
off_811FC68: .word dword_86C9B54
off_811FC6C: .word 0x886C9AA4
off_811FC70: .word byte_872CF94
off_811FC74: .word dword_86C9AF4
off_811FC78: .word dword_86C9B14
off_811FC7C: .word dword_86C9B34
off_811FC80: .word dword_86C9B94
off_811FC84: .word 0x886D3CF4
	.word 0xFFFFFFFF
off_811FC8C: .word off_811FC90
off_811FC90: .word 0x886D3CF4
off_811FC94: .word dword_86DAC40
	.word 0xFFFFFFFF
off_811FC9C: .word off_811FCA0
off_811FCA0: .word dword_86DAC40
	thumb_func_end sub_811FB84

	thumb_func_start sub_811FCA4
sub_811FCA4:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	str r2, [sp,#0x10]
	mov r5, r1
	str r5, [sp,#0xc]
	str r3, [sp,#0x14]
	mov r7, r0
	str r7, [sp,#8]
	b loc_811FCD0
	.balign 4, 0x00
	thumb_func_end sub_811FCA4

	thumb_func_start sub_811FCB8
sub_811FCB8:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	str r2, [sp,#0x10]
	mov r5, r1
	str r5, [sp,#0xc]
	str r3, [sp,#0x14]
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r2, #0x3c
	mul r0, r2
	add r7, r7, r0
	str r7, [sp,#8]
loc_811FCD0:
	mov r0, r5
	bl sub_811FE34
	ldr r0, [sp,#0x14]
	mov r1, #0x78
	bl ZeroFillByEightWords // (int a1, int a2) -> void
loc_811FCDE:
	ldrh r0, [r7]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	str r0, [sp]
	str r1, [sp,#4]
	lsl r4, r0, #7
	orr r4, r1
	ldr r1, [r5,#0x1c]
	orr r1, r4
	str r1, [r5,#0x1c]
	// idx
	ldr r0, [sp]
	tst r0, r0
	beq loc_811FDB0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r6, r0
	mov r3, #0
	mov r2, r0
loc_811FD02:
	ldrb r1, [r2,r3]
	ldr r0, [sp,#4]
	cmp r1, r0
	beq loc_811FD12
	add r3, #1
	cmp r3, #3
	ble loc_811FD02
	b loc_811FDB0
loc_811FD12:
	ldr r2, [sp,#0x10]
	tst r2, r2
	bne loc_811FD22
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #1
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
loc_811FD22:
	ldrh r0, [r6,#0x1c]
	lsl r2, r0, #7
	ldr r3, [sp,#4]
	orr r3, r2
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r5]
	ldr r0, [sp,#4]
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r5,#8]
	mov r4, r3
	ldrh r0, [r6,#0x18]
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [r5,#4]
	ldrb r0, [r6,#6]
	bl sub_811FF54
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [r5,#0x10]
	ldrb r0, [r6,#8]
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [r5,#0x18]
	ldr r0, [sp]
	bl sub_811FF80
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [r5,#0xc]
	mov r0, #1
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [r5,#0x14]
	ldr r0, [sp,#0x14]
	bl sub_811FE48
	add r5, #0x20
	add r7, #2
	ldr r0, off_811FE44 // =0x3c
	ldr r1, [sp,#8]
	add r0, r0, r1
	cmp r7, r0
	blt loc_811FCDE
	mov r6, #0
	mov r4, #0
	ldr r5, [sp,#0xc]
loc_811FD84:
	ldr r7, [sp,#0x14]
loc_811FD86:
	ldrh r0, [r5,#0x1c]
	ldrh r1, [r7]
	cmp r0, r1
	beq loc_811FD92
	add r7, #4
	b loc_811FD86
loc_811FD92:
	ldrh r1, [r7,#2]
	lsl r1, r1, #0x10
	ldr r2, [r5,#0x14]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	orr r2, r1
	str r2, [r5,#0x14]
	add r5, #0x20
	add r4, #1
	cmp r4, #0x1e
	blt loc_811FD84
	add sp, sp, #0x18
	mov r0, #0
	tst r0, r0
	pop {r4-r7,pc}
loc_811FDB0:
	add sp, sp, #0x18
	mov r0, #1
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_811FCB8

	thumb_func_start sub_811FDB8
sub_811FDB8:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r6, [r0,#5]
	cmp r6, #1
	ble loc_811FE22
	mov r5, #0
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	str r7, [sp,#8]
	str r7, [sp,#0x10]
loc_811FDD2:
	cmp r4, r5
	beq loc_811FE1C
	mov r0, #0x3c
	mul r0, r5
	ldr r7, [sp,#0x10]
	add r7, r7, r0
	str r7, [sp,#8]
loc_811FDE0:
	ldrh r0, [r7]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	str r0, [sp]
	str r1, [sp,#4]
	tst r0, r0
	beq loc_811FE2A
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r2, r0
	mov r3, #0
loc_811FDF6:
	ldrb r1, [r2,r3]
	ldr r0, [sp,#4]
	cmp r1, r0
	beq loc_811FE06
	add r3, #1
	cmp r3, #3
	ble loc_811FDF6
	b loc_811FE2A
loc_811FE06:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #1
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	add r7, #2
	ldr r0, off_811FE44 // =0x3c
	ldr r1, [sp,#8]
	add r0, r0, r1
	cmp r7, r0
	blt loc_811FDE0
loc_811FE1C:
	add r5, #1
	sub r6, #1
	bgt loc_811FDD2
loc_811FE22:
	add sp, sp, #0x14
	mov r0, #0
	tst r0, r0
	pop {r4-r7,pc}
loc_811FE2A:
	add sp, sp, #0x14
	mov r0, #1
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_811FDB8

	thumb_func_start sub_811FE34
sub_811FE34:
	push {lr}
	ldr r1, off_811FE40 // =0x3c0
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
off_811FE40: .word 0x3C0
off_811FE44: .word 0x3C
	thumb_func_end sub_811FE34

	thumb_local_start
sub_811FE48:
	push {r4-r7,lr}
	mov r4, r0
	mov r3, #0
	ldrh r0, [r5,#0x1c]
loc_811FE50:
	ldrh r1, [r4,r3]
	tst r1, r1
	beq loc_811FE6C
	cmp r0, r1
	bne loc_811FE64
	add r3, #2
	ldrh r0, [r4,r3]
	add r0, #1
	strh r0, [r4,r3]
	b locret_811FE74
loc_811FE64:
	add r3, #4
	cmp r3, #0x78
	blt loc_811FE50
	b locret_811FE74
loc_811FE6C:
	strh r0, [r4,r3]
	add r3, #2
	mov r0, #1
	strh r0, [r4,r3]
locret_811FE74:
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word unk_20343E0
	thumb_func_end sub_811FE48

	thumb_func_start sub_811FE7C
sub_811FE7C:
	push {r4-r7,lr}
	sub sp, sp, #0x18
	str r1, [sp,#0x14]
	str r0, [sp,#0x10]
	mov r6, r0
	bl sub_811FF6C
	mov r7, #1
loc_811FE8C:
	// idx
	mov r0, r7
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r5, r0
	mov r4, #0
	ldr r1, [sp,#0x14]
	tst r1, r1
	beq loc_811FEB0
	ldr r0, dword_811FF4C // =0x137
	cmp r7, r0
	beq loc_811FF34
	ldrb r1, [r5,#7]
	cmp r1, #2
	beq loc_811FF34
	ldrb r1, [r5,#9]
	mov r0, #0x20
	tst r1, r0
	bne loc_811FF34
loc_811FEB0:
	ldrb r1, [r5,#0x16]
	mov r0, #0x20
	tst r1, r0
	bne loc_811FF34
	// searchItem
	ldrb r1, [r5,r4]
	str r1, [sp]
	cmp r1, #0xff
	beq loc_811FF2E
	// idx
	mov r0, r7
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	ldrb r1, [r0]
	str r1, [sp,#4]
	tst r1, r1
	beq loc_811FF2E
	mov r1, r3
	bl sub_81376CC
	mov r3, r7
	str r3, [sp,#8]
	lsl r3, r3, #7
	ldr r1, [sp]
	orr r3, r1
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#0x1c]
	ldrh r3, [r5,#0x1c]
	lsl r3, r3, #7
	ldr r1, [sp]
	orr r3, r1
	ldrh r0, [r5,#0x1c]
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#8]
	ldrh r0, [r5,#0x18]
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#4]
	ldrb r0, [r5,#6]
	bl sub_811FF54
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#0x10]
	ldrb r0, [r5,#8]
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#0x18]
	ldr r0, [sp,#4]
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#0x14]
	ldr r0, [sp,#8]
	bl sub_811FF80
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r6,#0xc]
	add r6, #0x20
loc_811FF2E:
	add r4, #1
	cmp r4, #3
	ble loc_811FEB0
loc_811FF34:
	add r7, #1
	ldr r0, dword_811FF50 // =0x13a
	cmp r7, r0
	ble loc_811FE8C
	ldr r1, [sp,#0x10]
	add sp, sp, #0x18
	mov r0, r6
	sub r0, r0, r1
	mov r1, #0x20
	svc 6
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_811FF4C: .word 0x137
dword_811FF50: .word 0x13A
	thumb_func_end sub_811FE7C

	thumb_local_start
sub_811FF54:
	push {lr}
	ldr r1, off_811FF5C // =byte_811FF60
	ldrb r0, [r1,r0]
	pop {pc}
off_811FF5C: .word byte_811FF60
byte_811FF60: .byte 0x0, 0x1, 0x2, 0x3, 0x8, 0x4, 0x6, 0x7, 0x5, 0x9, 0xA, 0x0
	thumb_func_end sub_811FF54

	thumb_func_start sub_811FF6C
sub_811FF6C:
	push {lr}
	ldr r1, byte_811FF78 // =0x0
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {pc}
	.balign 4, 0x00
byte_811FF78: .byte 0x0, 0xA0, 0x0, 0x0, 0x3A, 0x1, 0x0, 0x0
	thumb_func_end sub_811FF6C

	thumb_local_start
sub_811FF80:
	push {r3,r4,lr}
	mov r4, r0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r3, #0x10
	and r1, r3
	bne loc_811FFB2
	ldrb r1, [r0,#9]
	mov r3, #2
	and r1, r3
	beq loc_811FFAC
	ldrh r2, [r0,#0x1a]
	ldr r1, dword_811FFBC // =0x3e7
	cmp r2, r1
	ble loc_811FFA8
	mov r0, r4
	bl sub_8010C76
	mov r2, r0
loc_811FFA8:
	mov r1, #0
	b loc_811FFB6
loc_811FFAC:
	mov r2, #5
	mov r1, #0
	b loc_811FFB6
loc_811FFB2:
	mov r2, #1
	mov r1, #1
loc_811FFB6:
	mov r0, r2
	pop {r3,r4,pc}
	.balign 4, 0x00
dword_811FFBC: .word 0x3E7
	thumb_func_end sub_811FF80

// () -> void
	thumb_func_start sub_811FFC0
sub_811FFC0:
	push {r4-r7,lr}
	// idx
	mov r0, #1
loc_811FFC4:
	mov r7, r0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r5, r0
	ldr r1, dword_8120010 // =0x136
	cmp r7, r1
	bgt loc_811FFFC
	ldr r1, dword_812000C // =0x137
	cmp r7, r1
	beq loc_811FFE6
	ldr r1, off_8120014 // =0x138
	cmp r7, r1
	beq loc_811FFE6
	ldrb r0, [r5,#9]
	mov r1, #0x60
	tst r0, r1
	beq loc_811FFFC
loc_811FFE6:
	mov r6, #3
loc_811FFE8:
	mov r0, r7
	ldrb r1, [r5,r6]
	cmp r1, #0xff
	beq loc_811FFF6
	mov r2, #0x5a
	bl sub_8021AEE
loc_811FFF6:
	sub r6, #1
	cmp r6, #0
	bge loc_811FFE8
loc_811FFFC:
	mov r0, r7
	add r0, #1
	ldr r1, off_8120008 // =0x140
	cmp r0, r1
	blt loc_811FFC4
	pop {r4-r7,pc}
off_8120008: .word 0x140
dword_812000C: .word 0x137
dword_8120010: .word 0x136
off_8120014: .word 0x138
	thumb_func_end sub_811FFC0

	thumb_func_start sub_8120018
sub_8120018:
	push {lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	tst r3, r3
	bne loc_812004E
	mov r7, r1
	sub r7, #1
	lsl r2, r2, #2
loc_812002E:
	mov r6, #0x20
	mul r6, r7
	add r1, r0, r6
	ldr r3, [r1,r2]
	mov r4, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	tst r3, r3
	bne loc_8120048
	mvn r3, r3
	lsl r3, r3, #1
	lsr r3, r3, #1
	str r3, [r1,r2]
loc_8120048:
	sub r7, #1
	bge loc_812002E
	b loc_8120074
loc_812004E:
	mov r7, r1
	sub r7, #1
	lsl r2, r2, #2
loc_8120054:
	mov r6, #0x20
	mul r6, r7
	add r1, r0, r6
	ldr r3, [r1,r2]
	mov r4, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	mvn r3, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	lsr r4, r4, #0x10
	lsl r4, r4, #0x10
	orr r3, r4
	str r3, [r1,r2]
	sub r7, #1
	bge loc_8120054
loc_8120074:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	ldr r4, off_81200DC // =byte_81200E0
	ldr r4, [r4,r3]
	mov lr, pc
	bx r4
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	tst r3, r3
	bne loc_81200B2
	mov r7, r1
	sub r7, #1
	lsl r2, r2, #2
loc_8120096:
	mov r6, #0x20
	mul r6, r7
	add r1, r0, r6
	ldr r3, [r1,r2]
	str r0, [sp,#0x10]
	ldr r0, dword_81200E8 // =0x7fffffff
	cmp r0, r3
	bne loc_81200AC
	ldr r0, [sp,#0x10]
	mov r3, #0
	str r3, [r1,r2]
loc_81200AC:
	sub r7, #1
	bge loc_8120096
	b loc_81200D8
loc_81200B2:
	mov r7, r1
	sub r7, #1
	lsl r2, r2, #2
loc_81200B8:
	mov r6, #0x20
	mul r6, r7
	add r1, r0, r6
	ldr r3, [r1,r2]
	mov r4, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	mvn r3, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	lsr r4, r4, #0x10
	lsl r4, r4, #0x10
	orr r3, r4
	str r3, [r1,r2]
	sub r7, #1
	bge loc_81200B8
loc_81200D8:
	add sp, sp, #0x14
	pop {pc}
off_81200DC: .word byte_81200E0
byte_81200E0: .byte 0xA9, 0x69, 0x0, 0x3, 0x5F, 0x6A, 0x0, 0x3
dword_81200E8: .word 0x7FFFFFFF
	thumb_func_end sub_8120018

	thumb_func_start sub_81200EC
sub_81200EC:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r5, [sp,#4]
	ldr r6, off_8120180 // =0x200
	lsl r3, r3, #0xc
	orr r3, r6
	str r3, [sp]
	mov r3, #0x20
	mul r0, r3
	add r5, r0, r1
	mov r3, #0x10
	add r3, r3, r2
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
loc_812010A:
	ldrh r1, [r5,#0x1c]
	lsr r1, r1, #7
	tst r1, r1
	beq loc_812014E
	ldr r0, off_8120174 // =off_8120178
	push {r2}
	ldr r2, dword_8120184 // =0x137
	cmp r1, r2
	beq loc_8120128
	ldr r2, dword_8120188 // =0x139
	cmp r1, r2
	bne loc_812012E
	ldr r0, off_8120190 // =unk_200119E
	pop {r2}
	b loc_8120140
loc_8120128:
	ldr r0, off_812018C // =unk_2001186
	pop {r2}
	b loc_8120140
loc_812012E:
	pop {r2}
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr r0, [r0,r7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
loc_8120140:
	ldr r4, [sp]
	push {r5}
	mov r5, #8
	bl sub_81202B4
	pop {r5}
	b loc_8120160
loc_812014E:
	push {r2,r3}
	mov r0, r2
	mov r1, #0x20
	mov r2, #0
	bl WordFill
	pop {r2,r3}
	add r2, #0x10
	add r3, #0x10
loc_8120160:
	add r5, #0x20
	add r2, #0x10
	add r3, #0x10
	add r6, #1
	ldr r0, [sp,#4]
	cmp r6, r0
	blt loc_812010A
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8120174: .word off_8120178
off_8120178: .word dword_86EA94C
	.word TextScriptEnemyNames86EB354
off_8120180: .word 0x200
dword_8120184: .word 0x137
dword_8120188: .word 0x139
off_812018C: .word unk_2001186
off_8120190: .word unk_200119E
	thumb_func_end sub_81200EC

	thumb_func_start sub_8120194
sub_8120194:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r5, [sp,#4]
	mov r6, #0
	str r6, [sp,#0x10]
	ldr r6, off_8120224 // =0x200
	lsl r3, r3, #0xc
	orr r3, r6
	str r3, [sp]
	mov r3, #0x20
	mul r0, r3
	add r5, r0, r1
	mov r3, #0x10
	add r3, r3, r2
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
loc_81201B6:
	ldrh r1, [r5,#0x1c]
	lsr r1, r1, #7
	tst r1, r1
	bne loc_81201E4
	ldr r0, [sp,#0x10]
	tst r0, r0
	beq loc_81201D8
	push {r2,r3}
	mov r0, r2
	mov r1, #0x20
	mov r2, #0
	bl WordFill
	pop {r2,r3}
	add r2, #0x10
	add r3, #0x10
	b loc_8120202
loc_81201D8:
	mov r0, #1
	str r0, [sp,#0x10]
	ldr r0, off_8120214 // =off_8120218
	ldr r0, [r0,#0x8] // (off_8120220 - 0x8120218)
	mov r1, #0x31
	b loc_81201F0
loc_81201E4:
	ldr r0, off_8120214 // =off_8120218
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr r0, [r0,r7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
loc_81201F0:
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	ldr r4, [sp]
	push {r5}
	mov r5, #8
	bl sub_81202B4
	pop {r5}
loc_8120202:
	add r5, #0x20
	add r2, #0x10
	add r3, #0x10
	add r6, #1
	ldr r0, [sp,#4]
	cmp r6, r0
	blt loc_81201B6
	add sp, sp, #0x14
	pop {r4-r7,pc}
off_8120214: .word off_8120218
off_8120218: .word dword_86EA94C
	.word TextScriptEnemyNames86EB354
off_8120220: .word eTextScript201BA20
off_8120224: .word 0x200
	thumb_func_end sub_8120194

	thumb_func_start sub_8120228
sub_8120228:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	ldr r6, dword_812027C // =0x200
	lsl r3, r3, #0xc
	orr r3, r6
	str r3, [sp]
	mov r3, #0x10
	add r3, r3, r2
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
	mov r1, r4
	tst r1, r1
	bne loc_812024C
	ldr r0, off_812026C // =off_8120270
	ldr r0, [r0,#0x8] // (off_8120278 - 0x8120270)
	mov r1, #0x31
	b loc_8120258
loc_812024C:
	ldr r0, off_812026C // =off_8120270
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr r0, [r0,r7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
loc_8120258:
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	ldr r4, [sp]
	mov r5, #8
	bl sub_81202B4
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812026C: .word off_8120270
off_8120270: .word dword_86EA94C
	.word TextScriptEnemyNames86EB354
off_8120278: .word eTextScript201BA20
dword_812027C: .word 0x200
	thumb_func_end sub_8120228

	thumb_func_start sub_8120280
sub_8120280:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	ldr r6, dword_81202B0 // =0x200
	lsl r3, r3, #0xc
	orr r3, r6
	str r3, [sp]
	mov r3, #0x10
	add r3, r3, r2
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r6, #0
	mov r1, r4
	ldr r0, off_81202AC // =byte_873EA50
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	ldr r4, [sp]
	mov r5, #8
	bl sub_81202B4
	add sp, sp, #0x10
	pop {r4-r7,pc}
off_81202AC: .word byte_873EA50
dword_81202B0: .word 0x200
	thumb_func_end sub_8120280

	thumb_func_start sub_81202B4
sub_81202B4:
	push {r4-r7,lr}
	mov r7, #0
loc_81202B8:
	ldrb r1, [r0]
	cmp r1, #0xe6
	bge loc_81202E2
	cmp r1, #0xe5
	beq loc_81202DE
	cmp r1, #0xe4
	bne loc_81202CC
	ldrb r6, [r0]
	lsl r6, r6, #8
	orr r1, r6
loc_81202CC:
	mov r6, r4
	lsl r1, r1, #1
	add r6, r6, r1
	strh r6, [r2]
	add r6, #1
	strh r6, [r3]
	add r2, #2
	add r3, #2
	add r7, #1
loc_81202DE:
	add r0, #1
	b loc_81202B8
loc_81202E2:
	mov r6, r7
loc_81202E4:
	cmp r7, r5
	bge loc_81202F6
	mov r4, #0
	strh r4, [r2]
	strh r4, [r3]
	add r2, #2
	add r3, #2
	add r7, #1
	b loc_81202E4
loc_81202F6:
	mov r0, r6
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_81202B4

	thumb_func_start sub_81202FC
sub_81202FC:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r3, [sp,#0x10]
	sub r3, r4, r3
	str r3, [sp,#4]
	ldr r6, off_8120344 // =0x200
	lsl r2, r2, #0xc
	orr r2, r6
	str r2, [sp]
	lsl r3, r4, #1
	add r3, r3, r1
	str r1, [sp,#8]
	mov r2, r1
	str r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	ldr r1, [sp]
loc_812031C:
	strh r1, [r2]
	strh r1, [r3]
	add r2, #2
	add r3, #2
	sub r4, #1
	bgt loc_812031C
	mov r6, #0
	ldr r1, off_8120340 // =TextScript86CF4AC
	lsl r0, r0, #1
	ldrh r0, [r1,r0]
	add r0, r0, r1
	ldr r4, [sp]
	ldr r5, [sp,#4]
	bl sub_81202B4
	add sp, sp, #0x14
	pop {r4-r7,pc}
	.byte 0, 0
off_8120340: .word TextScript86CF4AC
off_8120344: .word 0x200
	thumb_func_end sub_81202FC

	thumb_func_start sub_8120348
sub_8120348:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r3, [sp,#0x10]
	sub r3, r4, r3
	str r3, [sp,#4]
	ldr r6, off_812038C // =0x200
	lsl r2, r2, #0xc
	orr r2, r6
	str r2, [sp]
	lsl r3, r4, #1
	add r3, r3, r1
	str r1, [sp,#8]
	mov r2, r1
	str r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	ldr r1, [sp]
loc_8120368:
	strh r1, [r2]
	strh r1, [r3]
	add r2, #2
	add r3, #2
	sub r4, #1
	bgt loc_8120368
	mov r6, #0
	bl sub_804A24C
	ldr r4, [sp]
	ldr r5, [sp,#4]
	bl sub_81202B4
	add sp, sp, #0x14
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word byte_20065C0
off_812038C: .word 0x200
	thumb_func_end sub_8120348

	thumb_func_start sub_8120390
sub_8120390:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r5, [sp,#0xc]
	mov r0, r3
	mov r1, r2
	mov r2, #0x38
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r5, #0x20
	ldr r0, [sp]
	mul r0, r5
	ldr r1, [sp,#4]
	add r5, r0, r1
	mov r6, #0
	ldr r7, [sp,#8]
loc_81203B4:
	ldrh r0, [r5,#0x1c]
	lsr r0, r0, #7
	tst r0, r0
	beq loc_81203CC
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldr r0, [r0,#0x20]
	mov r1, r4
	mov r2, #0x80
	bl sub_8000AC4
	b loc_81203D2
loc_81203CC:
	mov r0, #0
	str r0, [r7]
	str r0, [r7,#4]
loc_81203D2:
	add r5, #0x20
	add r4, #0x80
	add r7, #8
	add r6, #1
	ldr r0, [sp,#0xc]
	cmp r6, r0
	blt loc_81203B4
	add sp, sp, #0x10
	pop {r4-r7,pc}
	thumb_func_end sub_8120390

	thumb_func_start sub_81203E4
sub_81203E4:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0x10]
	str r5, [sp,#0xc]
	// memBlock
	mov r0, r2
	// size
	mov r1, #0x38
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r5, #0x20
	ldr r0, [sp]
	mul r0, r5
	ldr r1, [sp,#4]
	add r5, r0, r1
	mov r6, #0
	ldr r7, [sp,#8]
loc_8120408:
	ldrh r0, [r5,#0x1c]
	lsr r0, r0, #7
	tst r0, r0
	beq loc_8120436
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#6]
	bl sub_811FF54
	mov r1, #4
	mul r0, r1
	ldr r1, [sp,#0x10]
	add r1, r1, r0
	add r3, r1, #1
	lsl r3, r3, #0x10
	orr r3, r1
	lsl r2, r6, #2
	str r3, [r7,r2]
	add r2, #4
	ldr r1, dword_8120454 // =0x20002
	add r3, r3, r1
	str r3, [r7,r2]
	b loc_8120440
loc_8120436:
	mov r0, #0
	lsl r2, r6, #2
	str r0, [r7,r2]
	add r2, #4
	str r0, [r7,r2]
loc_8120440:
	add r5, #0x20
	add r4, #0x80
	add r7, #4
	add r6, #1
	ldr r0, [sp,#0xc]
	cmp r6, r0
	blt loc_8120408
	add sp, sp, #0x14
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8120454: .word 0x20002
	thumb_func_end sub_81203E4

	thumb_func_start sub_8120458
sub_8120458:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0x10]
	str r5, [sp,#0xc]
	mov r0, r2
	mov r1, #0xe
	bl ZeroFillByHalfword
	mov r5, #0x20
	ldr r0, [sp]
	mul r0, r5
	ldr r1, [sp,#4]
	add r5, r0, r1
	mov r6, #0
	ldr r7, [sp,#8]
loc_812047C:
	ldrh r1, [r5,#0x1c]
	lsr r0, r1, #7
	tst r0, r0
	beq loc_81204AC
	mov r4, #0x7f
	and r4, r1
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r2, #0
loc_812048E:
	ldrb r1, [r0,r2]
	cmp r1, r4
	beq loc_812049C
	add r2, #1
	cmp r2, #3
	ble loc_812048E
	b loc_81204AC
loc_812049C:
	lsl r4, r4, #1
	add r4, r4, r3
	lsl r0, r6, #2
	strh r4, [r7,r0]
	add r4, #1
	add r0, #2
	strh r4, [r7,r0]
	b loc_81204B6
loc_81204AC:
	mov r0, #0
	lsl r1, r6, #2
	strh r0, [r7,r1]
	add r1, #2
	strh r0, [r7,r1]
loc_81204B6:
	add r5, #0x20
	add r6, #1
	ldr r0, [sp,#0xc]
	cmp r6, r0
	blt loc_812047C
	add sp, sp, #0x14
	pop {r4-r7,pc}
	thumb_func_end sub_8120458

	thumb_func_start sub_81204C4
sub_81204C4:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r5, [sp]
	mov r5, #0x20
	mul r0, r5
	add r5, r0, r1
	mov r6, #0
	mov r7, r2
	mov r4, r3
loc_81204D6:
	ldrh r1, [r5,#0x1c]
	lsr r0, r1, #7
	tst r0, r0
	beq loc_81204EE
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#8]
	mov r1, r7
	mov r2, r4
	bl sub_8120504
	b loc_81204F4
loc_81204EE:
	mov r0, #0
	str r0, [r7]
	str r0, [r7,#4]
loc_81204F4:
	add r5, #0x20
	add r7, #8
	add r6, #1
	ldr r0, [sp]
	cmp r6, r0
	blt loc_81204D6
	add sp, sp, #4
	pop {r4-r7,pc}
	thumb_func_end sub_81204C4

	thumb_local_start
sub_8120504:
	push {r4-r7,lr}
	mov r7, r1
	mov r4, r2
	mov r1, #0xa
	svc 6
	mov r2, r0
	mov r0, r1
	mov r1, r2
	tst r1, r1
	bne loc_812051C
	add r1, r1, r4
	b loc_8120520
loc_812051C:
	add r1, r1, r4
	add r1, #1
loc_8120520:
	add r0, r0, r4
	add r0, #1
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r7]
	mov r0, #0xb
	add r1, r4, r0
	mov r2, #0xc
	add r0, r4, r2
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r7,#4]
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8120504

	thumb_func_start sub_812053C
sub_812053C:
	push {r4-r7,lr}
	mov r4, r1
	mov r3, #0
	bl sub_81205C0
	tst r0, r0
	blt locret_812055E
	ldr r1, dword_8120560 // =0xc0008000
	bic r0, r1
	ldr r1, byte_8120564 // =0x0
	orr r0, r1
	mov r1, #0xc
	add r1, r1, r4
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_812055E:
	pop {r4-r7,pc}
dword_8120560: .word 0xC0008000
byte_8120564: .byte 0x0, 0x40, 0x0, 0x0, 0xF0, 0xB5, 0x1E, 0x1C, 0xC, 0x1C, 0x0
	.byte 0x23, 0x0, 0xF0, 0x26, 0xF8, 0x7, 0x1C, 0x0, 0x42, 0x5, 0xDB
	.byte 0xB, 0x21, 0x9, 0x19, 0x0, 0x22, 0x1, 0x23, 0xF, 0xF7, 0x51
	.byte 0xFC, 0x39, 0x4, 0x9, 0xC, 0x3A, 0x14, 0x7, 0x32, 0x12, 0x4
	.byte 0xA, 0x43, 0x30, 0x1C, 0x21, 0x1C, 0x0, 0x23, 0x0, 0xF0, 0x12
	.byte 0xF8, 0x0, 0x42, 0x9, 0xDB, 0x5, 0x49, 0x88, 0x43, 0x5, 0x49
	.byte 0x8, 0x43, 0xC, 0x21, 0x9, 0x19, 0x0, 0x22, 0x1, 0x23, 0xF
	.byte 0xF7, 0x3A, 0xFC, 0xF0, 0xBD, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x40, 0x0, 0x0
	thumb_func_end sub_812053C

	thumb_local_start
sub_81205C0:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r7, r2
	mov r4, r1
	mov r5, r3
	mov r1, #0xa
	svc 6
	mov r2, r0
	str r1, [sp,#4]
	str r2, [sp]
	mov r6, #0
loc_81205D6:
	mov r0, r7
	tst r0, r0
	blt loc_81205F8
	mov r2, sp
	add r2, r2, r6
	ldr r1, [r2]
	cmp r6, #0
	bne loc_81205EA
	tst r1, r1
	beq loc_81205EC
loc_81205EA:
	add r1, #1
loc_81205EC:
	lsl r1, r5
	add r1, r1, r4
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_81205F8:
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	asr r7, r7, #0x10
	tst r5, r5
	bne loc_8120606
	add r7, #7
	b loc_8120608
loc_8120606:
	add r7, #8
loc_8120608:
	lsl r7, r7, #0x10
	orr r7, r1
	add r6, #4
	cmp r6, #8
	blt loc_81205D6
	mov r0, r7
	add sp, sp, #8
	pop {r4-r7,pc}
	thumb_func_end sub_81205C0

	thumb_func_start sub_8120618
sub_8120618:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r5, [sp]
	mov r5, #0x20
	mul r0, r5
	add r5, r0, r1
	mov r6, #0
	mov r7, r2
	mov r4, r3
loc_812062A:
	ldrh r1, [r5,#0x1c]
	lsr r0, r1, #7
	tst r0, r0
	beq loc_8120670
	ldr r0, [r5,#0x14]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	tst r1, r1
	beq loc_8120670
	lsr r0, r0, #0x10
	cmp r0, #0x63
	ble loc_8120644
	mov r0, #0x63
loc_8120644:
	mov r1, #0xa
	svc 6
	mov r2, r0
	mov r0, r1
	mov r1, r2
	tst r1, r1
	bne loc_8120656
	add r1, r1, r4
	b loc_812065C
loc_8120656:
	add r1, #1
	lsl r1, r1, #1
	add r1, r1, r4
loc_812065C:
	add r0, #1
	lsl r0, r0, #1
	add r0, r0, r4
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r7]
	ldr r1, dword_8120688 // =0x10001
	add r0, r0, r1
	str r0, [r7,#4]
	b loc_8120676
loc_8120670:
	mov r0, #0
	str r0, [r7]
	str r0, [r7,#4]
loc_8120676:
	add r5, #0x20
	add r7, #8
	add r6, #1
	ldr r0, [sp]
	cmp r6, r0
	blt loc_812062A
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8120688: .word 0x10001
	thumb_func_end sub_8120618

	thumb_local_start
sub_812068C:
	push {r4-r7,lr}
	mov r4, r1
	mov r6, r3
	mov r3, #1
	bl sub_81205C0
	mov r7, r0
	tst r0, r0
	blt loc_81206AA
	mov r1, #0x16
	add r1, r1, r4
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
loc_81206AA:
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	asr r2, r7, #0x10
	add r2, #8
	lsl r2, r2, #0x10
	orr r2, r1
	mov r0, r6
	mov r1, r4
	mov r3, #1
	bl sub_81205C0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812068C

	thumb_func_start sub_81206C4
sub_81206C4:
	push {r4-r7,lr}
	mov r7, r0
	mov r4, #0
	ldrh r5, [r5,#0x28]
	tst r5, r5
	beq locret_81206F6
	sub r0, r5, #1
	mov r1, #0x20
	mul r0, r1
	add r7, r7, r0
loc_81206D8:
	ldr r2, [r7,#0x14]
	lsr r2, r2, #0x10
	ldr r1, [r7,#0x1c]
	lsl r1, r1, #0x10
	lsr r0, r1, #0x17
	tst r0, r0
	beq loc_81206EE
	lsl r1, r1, #9
	lsr r1, r1, #0x19
	bl sub_8021AEE
loc_81206EE:
	sub r7, #0x20
	add r4, #1
	cmp r4, r5
	blt loc_81206D8
locret_81206F6:
	pop {r4-r7,pc}
	thumb_func_end sub_81206C4

	thumb_func_start sub_81206F8
sub_81206F8:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r4, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r2, #0x3c
	mul r1, r2
	add r7, r7, r1
	mov r0, #0x1e
	mov r1, #0x20
	mul r0, r1
	add r0, r0, r4
	str r0, [sp]
loc_8120712:
	ldr r1, [r4,#0x1c]
	lsl r1, r1, #0x10
	lsr r0, r1, #0x17
	lsl r1, r1, #9
	lsr r1, r1, #0x19
	tst r0, r0
	beq loc_8120732
	ldrb r2, [r5,#2]
	tst r2, r2
	bne loc_812072C
	lsl r3, r1, #9
	orr r3, r0
	strh r3, [r7]
loc_812072C:
	mov r2, #1
	bl sub_8021B2A
loc_8120732:
	add r7, #2
	add r4, #0x20
	ldr r0, [sp]
	cmp r4, r0
	blt loc_8120712
	add sp, sp, #4
	pop {r4-r7,pc}
	thumb_func_end sub_81206F8

	thumb_func_start sub_8120740
sub_8120740:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r6, [r0,#5]
	cmp r6, #1
	ble loc_81207A8
	mov r5, #0
loc_8120752:
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	str r7, [sp,#8]
	cmp r4, r5
	beq loc_81207A2
	mov r0, #0x3c
	mul r0, r5
	ldr r7, [sp,#8]
	add r7, r7, r0
	str r7, [sp,#8]
loc_8120766:
	ldrh r0, [r7]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	str r0, [sp]
	str r1, [sp,#4]
	tst r0, r0
	beq loc_81207B0
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r2, r0
	mov r3, #0
loc_812077C:
	ldrb r1, [r2,r3]
	ldr r0, [sp,#4]
	cmp r1, r0
	beq loc_812078C
	add r3, #1
	cmp r3, #3
	ble loc_812077C
	b loc_81207B0
loc_812078C:
	ldr r0, [sp]
	ldr r1, [sp,#4]
	mov r2, #1
	bl sub_8021B2A
	add r7, #2
	ldr r0, off_81207BC // =0x3c
	ldr r1, [sp,#8]
	add r0, r0, r1
	cmp r7, r0
	blt loc_8120766
loc_81207A2:
	add r5, #1
	sub r6, #1
	bgt loc_8120752
loc_81207A8:
	add sp, sp, #0x10
	mov r0, #0
	tst r0, r0
	pop {r4-r7,pc}
loc_81207B0:
	add sp, sp, #0x10
	mov r0, #1
	tst r0, r0
	pop {r4-r7,pc}
	.word 0x3C0
off_81207BC: .word 0x3C
	.word unk_20343E0
	thumb_func_end sub_8120740

	thumb_func_start sub_81207C4
sub_81207C4:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r4, r0
	mov r7, r1
	mov r0, #0x1e
	mov r1, #0x20
	mul r0, r1
	add r0, r0, r4
	str r0, [sp]
loc_81207D6:
	ldr r1, [r4,#0x1c]
	lsl r1, r1, #0x10
	lsr r0, r1, #0x17
	lsl r1, r1, #9
	lsr r1, r1, #0x19
	tst r0, r0
	beq loc_81207EA
	lsl r3, r1, #9
	orr r3, r0
	strh r3, [r7]
loc_81207EA:
	add r7, #2
	add r4, #0x20
	ldr r0, [sp]
	cmp r4, r0
	blt loc_81207D6
	add sp, sp, #4
	pop {r4-r7,pc}
	thumb_func_end sub_81207C4

	thumb_func_start sub_81207F8
sub_81207F8:
	push {r4-r7,lr}
	mov r5, r0
	ldr r4, off_812087C // =word_8120888
	mov r6, #0
	mov r7, #0
loc_8120802:
	cmp r5, #4
	bne loc_8120808
	ldr r4, off_8120880 // =word_8120890
loc_8120808:
	ldrh r0, [r4]
	add r0, r0, r7
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_812082C
	ldrh r0, [r4,#2]
	add r0, r0, r7
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_812082C
	ldrh r0, [r4,#4]
	add r0, r0, r7
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_812086E
loc_812082C:
	cmp r5, #4
	bne loc_8120836
	ldr r1, off_8120884 // =0x140
	add r0, r7, r1
	b loc_8120838
loc_8120836:
	// idx
	mov r0, r7
loc_8120838:
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	cmp r5, #6
	beq loc_8120856
	ldrb r1, [r0,#9]
	mov r2, #0x40
	tst r1, r2
	beq loc_812086E
	cmp r5, #5
	bne loc_8120856
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	beq loc_812086E
	b loc_812086C
loc_8120856:
	ldrb r1, [r0,#9]
	mov r2, #0x20
	tst r1, r2
	bne loc_812086C
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	bne loc_812086E
	ldrb r0, [r0,#7]
	cmp r0, r5
	bne loc_812086E
loc_812086C:
	add r6, #1
loc_812086E:
	add r7, #1
	ldrh r0, [r4,#6]
	cmp r7, r0
	ble loc_8120802
	mov r0, r6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812087C: .word word_8120888
off_8120880: .word word_8120890
off_8120884: .word 0x140
word_8120888: .hword 0x1E20
word_812088A: .hword 0x2020
word_812088C: .hword 0x2220
word_812088E: .hword 0x13F
word_8120890: .hword 0x1F60
word_8120892: .hword 0x2160
word_8120894: .hword 0x2360
word_8120896: .hword 0x1E
	thumb_func_end sub_81207F8

	thumb_local_start
sub_8120898:
	push {r4-r7,lr}
	mov r5, r0
	mov r6, #0
	mov r7, #1
loc_81208A0:
	// idx
	mov r0, r7
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r1, [r0,#9]
	mov r2, #0x20
	tst r1, r2
	beq loc_81208B2
	cmp r5, #6
	beq loc_81208D8
loc_81208B2:
	mov r2, #0x40
	tst r1, r2
	beq loc_81208F0
	cmp r5, #5
	blt loc_81208CA
	cmp r5, #6
	beq loc_81208CA
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	beq loc_81208F0
	b loc_81208D8
loc_81208CA:
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	bne loc_81208F0
	ldrb r1, [r0,#7]
	cmp r1, r5
	bne loc_81208F0
loc_81208D8:
	push {r5}
	mov r5, #0
	mov r4, r0
loc_81208DE:
	ldrb r1, [r4,r5]
	mov r0, r7
	bl GetChipCountOfCode
	add r6, r6, r0
	add r5, #1
	cmp r5, #3
	ble loc_81208DE
	pop {r5}
loc_81208F0:
	add r7, #1
	ldr r0, dword_81208FC // =0x13f
	cmp r7, r0
	ble loc_81208A0
	mov r0, r6
	pop {r4-r7,pc}
dword_81208FC: .word 0x13F
	thumb_func_end sub_8120898

	thumb_func_start sub_8120900
sub_8120900:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r6, [sp,#0x10]
	mov r7, r0
	mov r6, #0xb
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r0, [sp]
	bl sub_8000C00
	str r0, [sp]
	ldr r0, [sp,#4]
	bl sub_8000C00
	str r0, [sp,#4]
	mov r4, #0
	ldr r0, [sp,#8]
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	add r4, #2
	mov r5, #0
	mov r2, #0xc
loc_8120936:
	ldr r0, [sp]
	mov r3, #0xf
	lsl r3, r2
	and r0, r3
	lsr r0, r2
	tst r0, r0
	bne loc_8120958
	tst r5, r5
	bne loc_8120958
	cmp r4, #8
	beq loc_8120958
	ldr r0, [sp,#8]
	add r0, #0x18
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	b loc_8120968
loc_8120958:
	ldr r1, [sp,#8]
	lsl r0, r0, #1
	add r0, #2
	add r0, r0, r1
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	mov r5, #1
loc_8120968:
	sub r2, #4
	add r4, #2
	cmp r4, #0xa
	blt loc_8120936
	ldr r0, [sp,#8]
	add r0, #0x16
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	add r4, #2
	mov r5, #0
	mov r2, #0xc
loc_8120980:
	ldr r0, [sp,#4]
	mov r3, #0xf
	lsl r3, r2
	and r0, r3
	lsr r0, r2
	tst r0, r0
	bne loc_81209A2
	tst r5, r5
	bne loc_81209A2
	cmp r4, #0x12
	beq loc_81209A2
	ldr r0, [sp,#8]
	add r0, #0x18
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	b loc_81209B2
loc_81209A2:
	ldr r1, [sp,#8]
	lsl r0, r0, #1
	add r0, #2
	add r0, r0, r1
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	mov r5, #1
loc_81209B2:
	sub r2, #4
	add r4, #2
	cmp r4, #0x14
	blt loc_8120980
	ldr r0, [sp,#8]
	mov r1, #1
	lsl r1, r1, #0xa
	orr r0, r1
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	// j
	ldr r0, [sp,#0xc]
	// i
	ldr r1, [sp,#0x10]
	// cpyOff
	mov r2, #2
	// tileRefs
	mov r3, r7
	mov r4, #0xb
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	add sp, sp, #0x14
	pop {r4-r7,pc}
	thumb_func_end sub_8120900

	thumb_func_start sub_81209DC
sub_81209DC:
	push {r6,r7,lr}
	mov r7, r0
	ldr r1, off_8120A0C // =off_8120A14
	lsl r0, r0, #2
	ldr r6, [r1,r0]
	bl GetPositiveSignedRNG1
	mov r1, r6
	svc 6
	cmp r7, #2
	blt loc_81209F6
	mov r0, #0x60
	add r1, r1, r0
loc_81209F6:
	mov r6, r1
	bl GetPositiveSignedRNG2
	mov r1, #0x15 // (byte_8120A35 - 0x8120a20)
	svc 6
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	ldr r2, off_8120A10 // =byte_8120A20
	ldrb r1, [r2,r1]
	pop {r6,r7,pc}
	.balign 4, 0x00
off_8120A0C: .word off_8120A14
off_8120A10: .word byte_8120A20
off_8120A14: .word 0x44
	.word 0x60
	.word 0x44
byte_8120A20: .byte 0x0, 0x1, 0x1, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE
	.byte 0xF, 0x10, 0x11, 0x11, 0x13, 0x13
byte_8120A35: .byte 0x0, 0x0, 0x0
	thumb_func_end sub_81209DC

	thumb_func_start sub_8120A38
sub_8120A38:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	bl sub_8120A88
	mov r0, #0
	bl sub_8120898
	str r0, [sp]
	mov r0, #1
	bl sub_8120898
	str r0, [sp,#4]
	ldr r0, dword_8120A84 // =0x137
	bl GetTotalChipCount
	tst r0, r0
	beq loc_8120A60
	ldr r1, [sp,#8]
	sub r1, r1, r0
	str r1, [sp,#8]
loc_8120A60:
	mov r0, #2
	bl sub_8120898
	str r0, [sp,#8]
	mov r0, #5
	bl sub_8120898
	str r0, [sp,#0xc]
	bl sub_8120AB8
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8120A84: .word 0x137
	thumb_func_end sub_8120A38

	thumb_func_start sub_8120A88
sub_8120A88:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r4, [r0,#5]
loc_8120A90:
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r2, #0x3c
	sub r0, r4, #1
	mul r0, r2
	add r7, r7, r0
	mov r6, #0
loc_8120A9E:
	ldrh r0, [r7,r6]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	mov r2, #1
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	add r6, #2
	cmp r6, #0x3c
	blt loc_8120A9E
	sub r4, #1
	bgt loc_8120A90
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8120A88

	thumb_func_start sub_8120AB8
sub_8120AB8:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r4, [r0,#5]
loc_8120AC0:
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r2, #0x3c
	sub r0, r4, #1
	mul r0, r2
	add r7, r7, r0
	mov r6, #0
loc_8120ACE:
	ldrh r0, [r7,r6]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	mov r2, #1
	bl sub_8021B2A
	add r6, #2
	cmp r6, #0x3c
	blt loc_8120ACE
	sub r4, #1
	bgt loc_8120AC0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8120AB8

	thumb_local_start
sub_8120AE8:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	bl getPETNaviSelect // () -> u8
	mov r1, #0x2d
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r1, #0x3c
	mul r0, r1
	mov r4, r10
	ldr r4, [r4,#oToolkit_S_Chip_2002178_Ptr]
	add r4, r4, r0
	mov r7, #0
	mov r6, #0
loc_8120B06:
	ldrh r0, [r4,r7]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#7]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8120B1A
	add r6, #1
loc_8120B1A:
	add r7, #2
	cmp r7, #0x3c
	blt loc_8120B06
	mov r0, r6
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8120AE8

	thumb_local_start
sub_8120B28:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	mov r4, r1
	mov r7, #0
	mov r6, #0
loc_8120B34:
	ldrh r0, [r4,r7]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#7]
	ldr r1, [sp]
	cmp r0, r1
	bne loc_8120B48
	add r6, #1
loc_8120B48:
	add r7, #2
	cmp r7, #0x3c
	blt loc_8120B34
	mov r0, r6
	add sp, sp, #4
	pop {r4-r7,pc}
	thumb_func_end sub_8120B28

	thumb_func_start sub_8120B54
sub_8120B54:
	push {r4-r7,lr}
	bl notZero_eByte200AD04
	beq loc_8120BA2
	bl sub_803F674
	cmp r0, #2
	blt loc_8120B74
	bl sub_802D246 // () -> int
	mov r1, #8
	tst r0, r1
	bne loc_8120B74
	bl sub_8144D30
	b loc_8120BA2
loc_8120B74:
	ldr r5, off_8120BAC // =eStruct200F360
	mov r0, #4
	bl sub_803F740
	tst r1, r1
	bne loc_8120BA2
	ldr r4, off_8120BB0 // =byte_8120BB4
	mov r6, #0
loc_8120B84:
	mov r3, #0
loc_8120B86:
	ldr r7, [r4,r6]
	add r7, r7, r3
	cmp r7, r2
	beq loc_8120B9C
	add r3, #1
	cmp r3, #0xf
	blt loc_8120B86
	add r6, #4
	cmp r6, #0x18
	blt loc_8120B84
	mov r6, #0x14
loc_8120B9C:
	ldr r0, off_8120BC8 // =byte_8120BCC
	ldr r0, [r0,r6]
	pop {r4-r7,pc}
loc_8120BA2:
	mov r6, #0x14 // (dword_8120BE0 - 0x8120bcc)
	ldr r0, off_8120BC8 // =byte_8120BCC
	ldr r0, [r0,r6]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8120BAC: .word eStruct200F360
off_8120BB0: .word byte_8120BB4
byte_8120BB4: .byte 0x9B, 0x1, 0x0, 0x0, 0xAA, 0x1, 0x0, 0x0, 0xB9, 0x1, 0x0, 0x0, 0xC8
	.byte 0x1, 0x0, 0x0, 0xD7, 0x1, 0x0, 0x0
off_8120BC8: .word byte_8120BCC
byte_8120BCC: .byte 0x6, 0x0, 0x0, 0x0, 0x7, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0xA
	.byte 0x0, 0x0, 0x0
dword_8120BE0: .word 0xFF
	thumb_func_end sub_8120B54

	thumb_func_start sub_8120BE4
sub_8120BE4:
	push {r6,r7,lr}
	sub sp, sp, #0x14
	mov r0, #0
	mov r1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp]
	mov r0, #0
	mov r1, #0x2d
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp,#4]
	mov r0, #0
	mov r1, #0x2e
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp,#8]
	mov r0, #0
	mov r1, #0x2f
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp,#0xc]
	mov r0, #0
	mov r1, #0x30
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp,#0x10]
	bl getPETNaviSelect // () -> u8
	mov r6, r0
	mov r1, #9
	ldr r2, [sp]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, r6
	mov r1, #0x2d
	ldr r2, [sp,#4]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, r6
	mov r1, #0x2e
	ldr r2, [sp,#8]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, r6
	mov r1, #0x2f
	ldr r2, [sp,#0xc]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, r6
	mov r1, #0x30
	ldr r2, [sp,#0x10]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	add sp, sp, #0x14
	pop {r6,r7,pc}
	thumb_func_end sub_8120BE4

	push {r4-r7,lr}
	mov r5, r0
	ldr r4, off_8120C88 // =word_8120C8C
	mov r6, #0
	mov r7, #1
	ldrh r0, [r4]
	add r0, r0, r5
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8120C84
	ldrh r0, [r4,#0x2] // (word_8120C8E - 0x8120c8c)
	add r0, r0, r5
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8120C84
	ldrh r0, [r4,#0x4] // (word_8120C90 - 0x8120c8c)
	add r0, r0, r5
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8120C84
	mov r7, #0
loc_8120C84:
	mov r0, r7
	pop {r4-r7,pc}
off_8120C88: .word word_8120C8C
word_8120C8C: .hword 0x1E20
word_8120C8E: .hword 0x2020
word_8120C90: .hword 0x2220
	.balign 4, 0x00
	thumb_func_start sub_8120C94
sub_8120C94:
	push {r4-r7,lr}
	push {r0-r3}
	lsl r1, r1, #1
	mul r1, r2
	bl ZeroFillByHalfword
	pop {r0-r3}
	lsl r4, r1, #1
	mov r6, r2
	mov r7, r0
	mov r2, #0
loc_8120CAA:
	mov r0, #0
	add r1, r4, r0
loc_8120CAE:
	strh r3, [r7,r0]
	add r3, #1
	strh r3, [r7,r1]
	add r3, #1
	add r0, #2
	add r1, r4, r0
	cmp r0, r4
	blt loc_8120CAE
	add r7, r7, r1
	add r2, #1
	cmp r2, r6
	blt loc_8120CAA
	pop {r4-r7,pc}
	thumb_func_end sub_8120C94

	thumb_func_start sub_8120CC8
sub_8120CC8:
	mov r3, r0
	mov r2, r1
	ldrb r1, [r2,r3]
	cmp r1, #0xff
	bne locret_8120CD6
	mov r0, #0
	ldrb r1, [r2,r0]
locret_8120CD6:
	mov pc, lr
	thumb_func_end sub_8120CC8

	push {r4-r7,lr}
	mov r7, #1
	mov r6, #0
	mov r0, #0
	mov r1, #0xb
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	mov r0, #1
	bl sub_8120AE8
	cmp r0, r4
	bgt loc_8120D08
	mov r0, #0
	mov r1, #0xc
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	mov r0, #2
	bl sub_8120AE8
	cmp r0, r4
	bgt loc_8120D08
	mov r7, #0
loc_8120D08:
	mov r0, r7
	tst r0, r0
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_start sub_8120D10
sub_8120D10:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp]
	bl getPETNaviSelect // () -> u8
	str r0, [sp,#4]
	mov r6, #0
	ldr r0, [sp,#4]
	mov r1, #0xb
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	mov r0, #1
	bl sub_8120AE8
	cmp r0, r4
	bgt loc_8120D46
	ldr r0, [sp,#4]
	mov r1, #0xc
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	mov r0, #2
	bl sub_8120AE8
	cmp r0, r4
	ble loc_8120DA2
loc_8120D46:
	mov r6, #0xf
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r0, [r0,#5]
	cmp r0, #1
	bne loc_8120D64
	mov r6, #0x10
	mov r0, #0x22
	bl sub_8137718
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r2, [r0,#5]
	sub r2, #1
	b loc_8120D9A
loc_8120D64:
	mov r0, #0x22
	bl sub_81377EC
	mov r2, r0
	cmp r2, #3
	bge loc_8120D8A
	ldr r0, [sp]
	tst r0, r0
	bne loc_8120D9A
	push {r2}
	mov r0, r2
	bl sub_8137890
	bl sub_8120DAC
	pop {r2}
	beq loc_8120D9A
	mov r6, #0x11
	b loc_8120D8C
loc_8120D8A:
	mov r6, #0x10
loc_8120D8C:
	mov r0, #0x22
	bl sub_8137718
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r2, [r0,#5]
	sub r2, #1
loc_8120D9A:
	ldr r0, [sp,#4]
	mov r1, #0x2d
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8120DA2:
	add sp, sp, #8
	mov r1, r6
	tst r1, r1
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8120D10

	thumb_func_start sub_8120DAC
sub_8120DAC:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r4, r0
	mov r7, #1
	bl getPETNaviSelect // () -> u8
	str r0, [sp]
	mov r1, #0xb
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r6, r0
	mov r0, #1
	mov r1, r4
	bl sub_8120B28
	cmp r0, r6
	bgt loc_8120DE6
	ldr r0, [sp]
	mov r1, #0xc
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r6, r0
	mov r0, #2
	mov r1, r4
	bl sub_8120B28
	cmp r0, r6
	bgt loc_8120DE6
	mov r7, #0
loc_8120DE6:
	add sp, sp, #4
	mov r0, r7
	tst r0, r0
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_8120DAC

	thumb_func_start sub_8120DF0
sub_8120DF0:
	push {r4-r7,lr}
	sub sp, sp, #0x40
	mov r7, sp
	mov r4, r7
	mov r6, #0
loc_8120DFA:
	ldr r0, off_81210C4 // =byte_81210C8
	ldr r1, [r0,r6]
	ldr r2, dword_8121104 // =0xffffffff
	cmp r1, r2
	beq loc_8120E22
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r0, [r0,#7]
	cmp r1, #0x40
	bne loc_8120E16
	mov r1, #0x40
	bl sub_80137FE
	b loc_8120E1A
loc_8120E16:
	bl sub_80137B6 // (int a1, int a2) -> u8
loc_8120E1A:
	str r0, [r7]
	add r7, #4
	add r6, #4
	b loc_8120DFA
loc_8120E22:
	bl getPETNaviSelect // () -> u8
	mov r7, r0
	cmp r7, #0
	bne loc_8120E56
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8120E56
	mov r7, r4
	mov r6, #0
loc_8120E3A:
	ldr r1, off_81210C4 // =byte_81210C8
	ldr r1, [r1,r6]
	ldr r2, dword_8121104 // =0xffffffff
	cmp r1, #0x40
	beq loc_8120E50
	cmp r1, r2
	beq loc_8120F3C
	ldr r2, [r7]
	mov r0, #0
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8120E50:
	add r7, #4
	add r6, #4
	b loc_8120E3A
loc_8120E56:
	mov r0, r7
	bl navicust_8014018 // (int idx_8014034) -> bool
	mov r1, r7
	bl init_8013B4E // (bool a1, int a2) -> void
	mov r7, r4
	mov r6, #0
loc_8120E66:
	bl getPETNaviSelect // () -> u8
	ldr r1, off_81210C4 // =byte_81210C8
	ldr r1, [r1,r6]
	ldr r2, dword_8121104 // =0xffffffff
	cmp r1, #0x40
	bne loc_8120E7C
	ldr r2, [r7]
	bl sub_80137E6
	b loc_8120EA0
loc_8120E7C:
	cmp r1, r2
	beq loc_8120EA6
	cmp r1, #0xb
	beq loc_8120E8C
	cmp r1, #0xc
	beq loc_8120E8C
	cmp r1, #0xa
	bne loc_8120E9A
loc_8120E8C:
	push {r0,r1}
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	pop {r0,r1}
	bne loc_8120EA0
loc_8120E9A:
	ldr r2, [r7]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8120EA0:
	add r7, #4
	add r6, #4
	b loc_8120E66
loc_8120EA6:
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8120EF2
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	beq loc_8120F3C
	mov r4, r0
	lsl r0, r0, #2
	ldr r1, off_8120F40 // =off_8120F44
	ldr r2, [r1,r0]
	bl sub_8121108
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	mov r6, r2
	mov r0, r4
	mov r1, #0x42
	bl sub_80137E6
	mov r0, r4
	mov r1, #0x3e
	mov r2, r6
	bl sub_80137E6
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_MapGroup]
	cmp r0, #0x80
	bge loc_8120F3C
	mov r2, r6
	mov r0, r4
	mov r1, #0x40
	bl sub_80137E6
	b loc_8120F3C
loc_8120EF2:
	bl getPETNaviSelect // () -> u8
	mov r4, r0
	lsl r0, r0, #2
	ldr r1, off_8120F40 // =off_8120F44
	ldr r2, [r1,r0]
	bl sub_8121108
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	mov r6, r2
	mov r0, r4
	mov r1, #0x42
	bl sub_80137E6
	mov r0, r4
	mov r1, #0x3e
	mov r2, r6
	bl sub_80137E6
	bl sub_8121154
	mov r0, r4
	mov r1, #0x42
	bl sub_80137FE
	mov r6, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_MapGroup]
	cmp r0, #0x80
	bge loc_8120F3C
	mov r2, r6
	mov r0, r4
	mov r1, #0x40
	bl sub_80137E6
loc_8120F3C:
	add sp, sp, #0x40
	pop {r4-r7,pc}
off_8120F40: .word off_8120F44
off_8120F44: .word byte_8120F74
	.word off_8120F90
	.word off_8120FAC
	.word off_8120FC8
	.word off_8120FE4
	.word off_8121000
	.word off_812101C
	.word off_8121038
	.word off_8121054
	.word off_8121070
	.word off_812108C
	.word off_81210A8
byte_8120F74: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8120F90: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_8120FAC: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_8120FC8: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_8120FE4: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x2BC
off_8121000: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_812101C: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_8121038: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_8121054: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_8121070: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_812108C: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_81210A8: .word 0x12C
	.word 0x12C
	.word 0x12C
	.word 0x190
	.word 0x1F4
	.word 0x258
	.word 0x320
off_81210C4: .word byte_81210C8
byte_81210C8: .byte 0x2D, 0x0, 0x0, 0x0, 0x2E, 0x0, 0x0, 0x0, 0x2F, 0x0, 0x0, 0x0, 0x30
	.byte 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0x56, 0x0, 0x0, 0x0, 0x57, 0x0
	.byte 0x0, 0x0, 0x58, 0x0, 0x0, 0x0, 0x59, 0x0, 0x0, 0x0, 0x5A, 0x0, 0x0
	.byte 0x0, 0x5B, 0x0, 0x0, 0x0, 0xB, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0
	.byte 0xA, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x0
dword_8121104: .word 0xFFFFFFFF
	thumb_func_end sub_8120DF0

	thumb_local_start
sub_8121108:
	push {r2,r4,r6,lr}
	ldr r4, off_8121124 // =off_8121128
	mov r6, #0x18
loc_812110E:
	ldr r0, [r4,r6]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_812111E
	sub r6, #4
	bge loc_812110E
	mov r6, #0
loc_812111E:
	lsr r0, r6, #2
	pop {r2,r4,r6,pc}
	.balign 4, 0x00
off_8121124: .word off_8121128
off_8121128: .word 0x400
	.word 0x500
	.word 0x600
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0xC, 0x0, 0x0, 0x0, 0xE, 0x0
	.byte 0x0
	thumb_func_end sub_8121108

	thumb_func_start sub_8121144
sub_8121144:
	push {r4-r7,lr}
	ldr r0, off_8121150 // =word_200DCF0
	mov r1, #0x18
	bl ZeroFillByHalfword
	pop {r4-r7,pc}
off_8121150: .word word_200DCF0
	thumb_func_end sub_8121144

	thumb_func_start sub_8121154
sub_8121154:
	push {r4-r7,lr}
	bl sub_8121144
	mov r1, r10
	ldr r1, [r1,#0x40]
	ldr r4, [r1,#0x30]
	bl getPETNaviSelect // () -> u8
	mov r2, r0
	lsl r0, r0, #1
	ldr r1, off_81211B0 // =byte_81211B4
	ldrh r1, [r1,r0]
	sub r4, r4, r1
	lsl r0, r2, #2
	ldr r1, off_81211FC // =pt_8121200
	ldr r1, [r1,r0]
	ldr r1, [r1]
	lsl r4, r4, #2
	ldr r4, [r1,r4]
loc_812117A:
	ldr r1, [r4]
	mov r2, #1
	neg r2, r2
	cmp r1, r2
	beq loc_8121192
	ldr r2, off_81211CC // =off_81211D0
	ldr r1, [r2,r1]
	ldr r0, [r4,#4]
	mov lr, pc
	bx r1
	add r4, #8
	b loc_812117A
loc_8121192:
	bl sub_8123208
	pop {r4-r7,pc}
	thumb_func_end sub_8121154

	thumb_func_start sub_8121198
sub_8121198:
	push {r4,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	ldr r4, [r1,#0x30]
	bl getPETNaviSelect // () -> u8
	lsl r0, r0, #1
	ldr r1, off_81211B0 // =byte_81211B4
	ldrh r1, [r1,r0]
	sub r0, r4, r1
	// <endpool>
	pop {r4,pc}
	thumb_func_end sub_8121198

	.byte 0, 0
off_81211B0: .word byte_81211B4
byte_81211B4: .byte 0x41, 0x1, 0x50, 0x1, 0x5F, 0x1, 0x6E, 0x1, 0x7D, 0x1, 0x8C
	.byte 0x1, 0x9B, 0x1, 0xAA, 0x1, 0xB9, 0x1, 0xC8, 0x1, 0xD7, 0x1
	.byte 0xE6, 0x1
off_81211CC: .word off_81211D0
off_81211D0: .word byte_8123199
	.word byte_81231A5
	.word byte_81231B1
	.word byte_81231BD
	.word byte_81231C9
	.word byte_81231D5
	.word byte_81231E1
	.word byte_81231E9
	.word byte_81231F1
	.word byte_81231F9
	.word byte_8123201
off_81211FC: .word pt_8121200
pt_8121200: .word off_8121230
	.word off_812148C
	.word off_8121748
	.word off_8121A2C
	.word off_8121C40
	.word off_8121EA4
	.word off_81220F8
	.word off_8122334
	.word off_8122618
	.word off_812291C
	.word off_8122BF8
	.word off_8122EBC
off_8121230: .word off_8121234
off_8121234: .word byte_8121270
	.word byte_812127C
	.word byte_8121288
	.word byte_812129C
	.word byte_81212B0
	.word byte_81212CC
	.word byte_81212E8
	.word byte_812130C
	.word byte_8121330
	.word byte_8121354
	.word byte_8121388
	.word byte_81213BC
	.word byte_81213F0
	.word byte_8121424
	// <endfile>
	.word byte_8121458
/*For debugging purposes, connect comment at any range!*/
