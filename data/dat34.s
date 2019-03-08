	.include "data/dat34.inc"

byte_812DA94: .byte 0x26
	.byte 0x0, 0x0, 0xFF, 0x26, 0x1, 0x1, 0xFF, 0x26, 0x2, 0x2, 0xFF, 0x26
	.byte 0x3, 0x3, 0xFF, 0x26, 0x4, 0x4, 0xFF, 0x26, 0x5, 0x5, 0xFF, 0x26
	.byte 0x6, 0x6, 0xFF, 0x26, 0x7, 0x7, 0xFF, 0x26, 0x8, 0x8, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_812DABC: .byte 0x27, 0x9, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_812DAC4: .byte 0x27, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_812DACC: .byte 0x27, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_812DAD4: .byte 0x1D, 0x6, 0x1, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_812DADC: .byte 0x1E, 0x6, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_start sub_812DAE4
sub_812DAE4:
	push {lr}
	ldr r0, off_812DB0C // =off_812DB10 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812DB08
	mov r0, #0
	mov r1, #0
	bl sub_803C59C
locret_812DB08:
	pop {pc}
	.balign 4, 0x00
off_812DB0C: .word off_812DB10
off_812DB10: .word sub_812DB44+1
	.word sub_812DBE0+1
	.word sub_812DD08+1
	.word sub_812DFAC+1
	.word sub_812E08C+1
	.word sub_812E264+1
	.word sub_812E440+1
	.word sub_812E650+1
	.word sub_812E650+1
	.word sub_812E718+1
	.word sub_812E7F4+1
	.word sub_812E584+1
	.word sub_812E898+1
	thumb_func_end sub_812DAE4

	thumb_local_start
sub_812DB44:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#0x1b]
	mov r0, #0xc
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812DBD6
	cmp r0, #1
	beq locret_812DBDC
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812DB64
	b loc_812DB72
loc_812DB64:
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, byte_812DCFC // =0xdc 
	strh r1, [r0,#0xa]
loc_812DB72:
	mov r1, #8
	tst r4, r1
	bne locret_812DBDC
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812DCF8 // =0xffffffff 
	cmp r0, r1
	beq loc_812DBDA
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812DB94:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812DBDA
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812DBDA
	ldrh r1, [r4,#0xa]
	ldr r2, byte_812DCFC // =0xdc 
	cmp r1, r2
	bne loc_812DBDA
	lsr r3, r3, #1
	add r4, #0x10
	cmp r4, r7
	ble loc_812DB94
	tst r3, r3
	bne loc_812DBDA
	bl IsPaletteFadeActive // () -> zf
	beq loc_812DBDA
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	ldr r0, byte_812DCFC // =0xdc 
	strh r0, [r5,#0x2a]
	bl sub_812E9AC
	bl sub_812EC04
	b loc_812DBDA
loc_812DBD6:
	bl sub_812ED58
loc_812DBDA:
	b locret_812DBDC
locret_812DBDC:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812DB44

	thumb_local_start
sub_812DBE0:
	push {r4-r7,lr}
	mov r0, #0xc
	strb r0, [r5,#0x10]
	bl sub_812ED34
	strh r0, [r5,#0x2a]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812DCD6
	cmp r0, #1
	bne loc_812DBFA
	b loc_812DCEE
loc_812DBFA:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812DC04
	b loc_812DC10
loc_812DC04:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812DC10:
	mov r1, #8
	tst r4, r1
	beq loc_812DC20
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812DCE8
	b loc_812DCE6
loc_812DC20:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812DCF8 // =0xffffffff 
	cmp r0, r1
	beq loc_812DCE6
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812DC3C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812DCE6
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812DCE6
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812DC3C
	tst r3, r3
	bne loc_812DCE6
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812DD04 // =0x814c 
	cmp r1, r2
	bgt loc_812DCDC
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812DD04 // =0x814c 
	cmp r1, r2
	bgt loc_812DCDC
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812DCA4
	bl sub_812F014
	mov r1, #1
	strb r1, [r5,#0x16]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812DCE6
	push {r0}
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {r0}
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812DC9C
	mov r1, #4
loc_812DC9C:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812DCE6
loc_812DCA4:
	cmp r0, #0xff
	beq loc_812DCDC
	bl sub_803DD60
	tst r0, r0
	beq loc_812DCB2
	add r4, #0x10
loc_812DCB2:
	ldrh r1, [r4,#0xa]
	ldr r2, byte_812DCFC // =0xdc 
	cmp r1, r2
	beq loc_812DCE6
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	bl sub_81325CC
	mov r1, #2
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812DCE6
loc_812DCD6:
	bl sub_812ED58
	b loc_812DCE6
loc_812DCDC:
	bl IsPaletteFadeActive // () -> zf
	beq loc_812DCE6
	bl sub_812ECAC
loc_812DCE6:
	b loc_812DCEE
loc_812DCE8:
	mov r0, #4
	bl sub_812F000
loc_812DCEE:
	bl sub_812EC04
	bl sub_812EFD4
	pop {r4-r7,pc}
dword_812DCF8: .word 0xFFFFFFFF
byte_812DCFC: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
dword_812DD04: .word 0x814C
	thumb_func_end sub_812DBE0

	thumb_local_start
sub_812DD08:
	push {r4-r7,lr}
	ldr r0, off_812DD18 // =off_812DD1C 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812DD18: .word off_812DD1C
off_812DD1C: .word sub_812DD2C+1
	.word sub_812DD2C+1
	.word sub_812DDE8+1
	.word sub_812DF00+1
	thumb_func_end sub_812DD08

	thumb_local_start
sub_812DD2C:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812DDB0
	cmp r0, #1
	bne loc_812DD40
	b locret_812DDE4
loc_812DD40:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812DD4A
	b loc_812DD56
loc_812DD4A:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812DD56:
	mov r1, #8
	tst r4, r1
	beq loc_812DD66
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812DD66
	b loc_812DDDE
loc_812DD66:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812DF98 // =0xffffffff 
	cmp r0, r1
	beq loc_812DDB6
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812DD82:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812DDB6
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812DDB6
	ldrh r1, [r0,#8]
	cmp r1, #0
	beq loc_812DDB6
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812DFA4 // =0x814c 
	cmp r1, r2
	bgt loc_812DDB6
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812DD82
	tst r3, r3
	bne loc_812DDB6
	b loc_812DDB6
loc_812DDB0:
	bl sub_812ED58
	b loc_812DDCC
loc_812DDB6:
	bl IsPaletteFadeActive // () -> zf
	beq locret_812DDE4
	ldrb r0, [r5,#3]
	cmp r0, #4
	bne loc_812DDCC
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #4
	strh r0, [r5,#0x26]
	b loc_812DDDC
loc_812DDCC:
	bl sub_812ED94
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812DDDC:
	b locret_812DDE4
loc_812DDDE:
	mov r0, #8
	bl sub_812F000
locret_812DDE4:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812DD2C

	thumb_local_start
sub_812DDE8:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812DEBC
	cmp r0, #1
	bne loc_812DDFC
	b locret_812DEFE
loc_812DDFC:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812DE06
	b loc_812DE18
loc_812DE06:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	mov r2, #0x80
	lsl r2, r2, #8
	bic r1, r2
	strh r1, [r0,#0xa]
loc_812DE18:
	mov r1, #8
	tst r4, r1
	beq loc_812DE28
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812DE28
	b loc_812DEF8
loc_812DE28:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812DF98 // =0xffffffff 
	cmp r0, r1
	beq loc_812DEC2
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812DE44:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812DEC2
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812DEC2
	ldrh r1, [r0,#8]
	cmp r1, #8
	beq loc_812DE70
	ldrh r1, [r0,#8]
	cmp r1, #2
	beq loc_812DEF6
	ldrh r1, [r0,#8]
	cmp r1, #4
	bne loc_812DEC2
	ldrh r1, [r0,#0xa]
	ldr r2, off_812DFA8 // =0x14c 
	cmp r1, r2
	bgt loc_812DEC2
loc_812DE70:
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812DE44
	tst r3, r3
	bne loc_812DEC2
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812DEB2
	push {r0}
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {r0}
	mov r1, #0x24 
	strb r1, [r5,#2]
	mov r1, #0
	strb r1, [r5,#0x16]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812DEC2
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812DEAA
	mov r1, #4
loc_812DEAA:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812DEC2
loc_812DEB2:
	cmp r0, #0xff
	beq loc_812DEC2
	bl sub_812E910
	b loc_812DEF6
loc_812DEBC:
	bl sub_812ED58
	b loc_812DEF6
loc_812DEC2:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812DEF6
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	ldr r0, byte_812DF9C // =0xdc 
	strh r0, [r5,#0x2a]
	mov r1, #0
	strh r1, [r5,#0x26]
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, byte_812DF9C // =0xdc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812DEF6:
	b locret_812DEFE
loc_812DEF8:
	mov r0, #8
	bl sub_812F000
locret_812DEFE:
	pop {r4-r7,pc}
	thumb_func_end sub_812DDE8

	thumb_local_start
sub_812DF00:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812DF88
	cmp r0, #1
	bne loc_812DF14
	b locret_812DF94
loc_812DF14:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812DF1E
	b loc_812DF30
loc_812DF1E:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	mov r2, #0x80
	lsl r2, r2, #8
	bic r1, r2
	strh r1, [r0,#0xa]
loc_812DF30:
	mov r1, #8
	tst r4, r1
	beq loc_812DF40
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812DF40
	b loc_812DF8E
loc_812DF40:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812DF98 // =0xffffffff 
	cmp r0, r1
	beq loc_812DF8C
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812DF5C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812DF8C
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812DF8C
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812DFA4 // =0x814c 
	cmp r1, r2
	bgt loc_812DF8C
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812DF5C
	tst r3, r3
	bne loc_812DF8C
	mov r0, #8
	strb r0, [r5,#3]
	b loc_812DF8C
loc_812DF88:
	bl sub_812ED58
loc_812DF8C:
	b locret_812DF94
loc_812DF8E:
	mov r0, #8
	bl sub_812F000
locret_812DF94:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812DF98: .word 0xFFFFFFFF
byte_812DF9C: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
dword_812DFA4: .word 0x814C
off_812DFA8: .word 0x14C
	thumb_func_end sub_812DF00

	thumb_local_start
sub_812DFAC:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #7
	mov r2, #1
	ldrb r3, [r5,#0x14]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_812DFCA
	strb r0, [r5,#0x14]
loc_812DFCA:
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812E07C
	cmp r0, #1
	beq locret_812E088
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812DFE0
	b loc_812DFEC
loc_812DFE0:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812DFEC:
	mov r1, #8
	tst r4, r1
	beq loc_812DFFC
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812DFFC
	b loc_812E082
loc_812DFFC:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E258 // =0xffffffff 
	cmp r0, r1
	beq loc_812E080
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812E018:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E080
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E080
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812E018
	tst r3, r3
	bne loc_812E080
	mov r0, r4
	bl sub_8132430
	bl sub_803DD60
	tst r0, r0
	beq loc_812E046
	add r4, #0x10
loc_812E046:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812E25C // =0xfedc 
	cmp r1, r2
	bne loc_812E080
	bl IsPaletteFadeActive // () -> zf
	beq loc_812E080
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0
	bl sub_812EE78
	bl sub_812EF20
	bl sub_8046664 // () -> void
	bl sub_812EB88
	bl sub_812EB78
	bl sub_812EAAC
	mov r0, #4
	strb r0, [r5,#2]
	b loc_812E080
loc_812E07C:
	bl sub_812ED58
loc_812E080:
	b locret_812E088
loc_812E082:
	mov r0, #0xc
	bl sub_812F000
locret_812E088:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812DFAC

	thumb_local_start
sub_812E08C:
	push {r4-r7,lr}
	mov r0, #0x16
	strb r0, [r5,#0x10]
	ldrb r0, [r5,#3]
	tst r0, r0
	beq loc_812E0AC
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812E0FC
	mov r1, #0
	strh r1, [r5,#0x26]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_812E0FC
loc_812E0AC:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0x15]
	mov r4, r3
	bl sub_811FA0C
	cmp r4, r0
	beq loc_812E0C6
	strb r0, [r5,#0x15]
	b loc_812E0FC
loc_812E0C6:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812E0DA
	mov r0, #1
	strb r0, [r5,#0x15]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_812E0E2
loc_812E0DA:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_812E0FC
loc_812E0E2:
	mov r1, #4
	ldrb r0, [r5,#0x15]
	tst r0, r0
	beq loc_812E0EC
	mov r1, #8
loc_812E0EC:
	strh r1, [r5,#0x26]
	mov r0, #0x81
	ldrh r1, [r5,#0x26]
	cmp r1, #4
	beq loc_812E0F8
	mov r0, #0x83
loc_812E0F8:
	bl sound_play // () -> void
loc_812E0FC:
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812E106
	b loc_812E24A
loc_812E106:
	cmp r0, #1
	bne loc_812E10C
	b locret_812E256
loc_812E10C:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E116
	b loc_812E122
loc_812E116:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812E260 // =0xfedb 
	strh r1, [r0,#0xa]
loc_812E122:
	mov r1, #8
	tst r4, r1
	beq loc_812E134
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812E132
	b loc_812E250
loc_812E132:
	b loc_812E24E
loc_812E134:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E258 // =0xffffffff 
	cmp r0, r1
	bne loc_812E14C
	b loc_812E24E
loc_812E14C:
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812E152:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E24E
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E24E
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812E260 // =0xfedb 
	cmp r1, r2
	beq loc_812E184
	ldrh r0, [r5,#0x28]
	add r0, #1
	strh r0, [r5,#0x28]
	cmp r0, #0xb4
	blt loc_812E182
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	bl sub_812F014
	b locret_812E256
loc_812E182:
	b loc_812E24E
loc_812E184:
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812E152
	tst r3, r3
	bne loc_812E24E
	mov r0, r4
	bl sub_81324A8
	cmp r0, #8
	beq loc_812E1D6
	cmp r0, #2
	bgt loc_812E1FC
	cmp r0, #2
	beq loc_812E1D6
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0xc
	strb r0, [r5,#3]
	bl sub_81325CC
	mov r1, #4
	strh r1, [r0,#8]
	strh r1, [r5,#0x26]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	mov r0, #0x90
	mov r1, #1
	mov r2, #4
	bl sub_812EC2C
	mov r1, #1
	bl sub_812EDFC
	strh r0, [r5,#0x30]
	mov r0, #1
	bl sub_812EE78
	bl sub_812EDE4
	b loc_812E24E
loc_812E1D6:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812E25C // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812E24E
loc_812E1FC:
	cmp r0, #0xff
	bne loc_812E21E
	ldrb r0, [r5,#3]
	cmp r0, #4
	bne loc_812E214
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	mov r1, #6
	bl sub_811A940
	b loc_812E24E
loc_812E214:
	ldrb r0, [r5,#0x15]
	mov r1, #6
	bl sub_811A914
	b loc_812E24E
loc_812E21E:
	cmp r0, #3
	bne loc_812E230
	mov r0, #1
	mov r1, #6
	bl sub_811A940
	mov r0, #4
	strb r0, [r5,#3]
	b loc_812E24E
loc_812E230:
	cmp r0, #4
	bne loc_812E24E
	mov r0, #1
	mov r1, #6
	bl sub_811A940
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x78 
	strh r0, [r5,#0x28]
	b loc_812E24E
loc_812E24A:
	bl sub_812ED58
loc_812E24E:
	b locret_812E256
loc_812E250:
	mov r0, #0x10
	bl sub_812F000
locret_812E256:
	pop {r4-r7,pc}
dword_812E258: .word 0xFFFFFFFF
dword_812E25C: .word 0xFEDC
dword_812E260: .word 0xFEDB
	thumb_func_end sub_812E08C

	thumb_local_start
sub_812E264:
	push {r4-r7,lr}
	ldr r0, off_812E274 // =off_812E278 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812E274: .word off_812E278
off_812E278: .word sub_812E280+1
	.word sub_812E370+1
	thumb_func_end sub_812E264

	thumb_local_start
sub_812E280:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812E35A
	cmp r0, #1
	beq locret_812E360
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E29C
	b loc_812E2A8
loc_812E29C:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812E2A8:
	mov r1, #8
	tst r4, r1
	bne locret_812E360
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E364 // =0xffffffff 
	cmp r0, r1
	beq loc_812E35E
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812E2CA:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E35E
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E35E
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812E2CA
	tst r3, r3
	bne loc_812E35E
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812E36C // =0xfedb 
	cmp r1, r2
	bne loc_812E2FC
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812E36C // =0xfedb 
	cmp r1, r2
	beq loc_812E342
loc_812E2FC:
	bl sub_803DD60
	tst r0, r0
	beq loc_812E306
	add r4, #0x10
loc_812E306:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812E368 // =0xfedc 
	cmp r1, r2
	bne loc_812E35E
	bl IsPaletteFadeActive // () -> zf
	beq loc_812E35E
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0
	bl sub_812EE78
	mov r0, #1
	bl sub_812EE78
	bl sub_8046664 // () -> void
	bl sub_812EB88
	bl sub_812EB78
	bl sub_812EF20
	bl sub_812EAAC
	b loc_812E35E
loc_812E342:
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812E35E
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x78 
	strh r0, [r5,#0x28]
	b loc_812E35E
loc_812E35A:
	bl sub_812ED58
loc_812E35E:
	b locret_812E360
locret_812E360:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812E364: .word 0xFFFFFFFF
dword_812E368: .word 0xFEDC
dword_812E36C: .word 0xFEDB
	thumb_func_end sub_812E280

	thumb_local_start
sub_812E370:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812E436
	cmp r0, #1
	beq locret_812E43C
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E38C
	b loc_812E398
loc_812E38C:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812E398:
	mov r1, #8
	tst r4, r1
	bne locret_812E43C
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E578 // =0xffffffff 
	cmp r0, r1
	beq loc_812E43A
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812E3BA:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E43A
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E43A
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812E3BA
	tst r3, r3
	bne loc_812E43A
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812E580 // =0xfedb 
	cmp r1, r2
	bne loc_812E3EC
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812E580 // =0xfedb 
	cmp r1, r2
	beq loc_812E41E
loc_812E3EC:
	bl sub_803DD60
	tst r0, r0
	beq loc_812E3F6
	add r4, #0x10
loc_812E3F6:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812E57C // =0xfedc 
	cmp r1, r2
	bne loc_812E43A
	bl IsPaletteFadeActive // () -> zf
	beq loc_812E43A
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812E57C // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812E43A
loc_812E41E:
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812E43A
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x3c 
	strh r0, [r5,#0x28]
	b loc_812E43A
loc_812E436:
	bl sub_812ED58
loc_812E43A:
	b locret_812E43C
locret_812E43C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_812E370

	thumb_local_start
sub_812E440:
	push {r4-r7,lr}
	mov r0, #0x19
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812E450
	b loc_812E56E
loc_812E450:
	cmp r0, #1
	bne loc_812E456
	b locret_812E574
loc_812E456:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E460
	b loc_812E504
loc_812E460:
	bl sub_81325CC
	mov r1, #8
	tst r4, r1
	beq loc_812E478
	push {r0}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	pop {r0}
	bne loc_812E478
	b locret_812E574
loc_812E478:
	mov r4, r0
	ldrh r0, [r5,#0x28]
	sub r0, #1
	beq loc_812E4FA
	strh r0, [r5,#0x28]
	cmp r0, #0x32 
	bne loc_812E492
	mov r0, #6
	bl sub_811A968
	mov r0, #0
	strh r0, [r5,#0x2e]
	b loc_812E4EE
loc_812E492:
	cmp r0, #0x32 
	bge loc_812E4EE
	ldrh r1, [r5,#0x2e]
	add r1, #8
	strh r1, [r5,#0x2e]
	mov r0, #0x3c 
	add r0, r0, r1
	cmp r0, #0xb4
	blt loc_812E4BC
	ldrh r0, [r5,#0x2c]
	mov r1, r0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	mov r1, #0
	bl sub_812EDFC
	strh r0, [r5,#0x30]
	mov r0, #0
	bl loc_812EE38
	mov r0, #0xb4
loc_812E4BC:
	mov r1, #0x44 
	mov r2, #0
	bl sub_811BC24
	mov r0, #0xb4
	ldrh r1, [r5,#0x2e]
	sub r0, r0, r1
	cmp r0, #0x3c 
	bgt loc_812E4E6
	ldrh r0, [r5,#0x2a]
	mov r1, r0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	mov r1, #1
	bl sub_812EDFC
	strh r0, [r5,#0x30]
	mov r0, #1
	bl loc_812EE38
	mov r0, #0x3c 
loc_812E4E6:
	mov r1, #0x44 
	mov r2, #1
	bl sub_811BC24
loc_812E4EE:
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r4,#8]
	mov r1, #0
	strh r1, [r4,#0xa]
	b loc_812E504
loc_812E4FA:
	mov r1, #0x20 
	strh r1, [r5,#0x26]
	strh r1, [r4,#8]
	ldr r1, dword_812E57C // =0xfedc 
	strh r1, [r4,#0xa]
loc_812E504:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E578 // =0xffffffff 
	cmp r0, r1
	beq loc_812E572
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812E520:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E572
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E572
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812E57C // =0xfedc 
	cmp r1, r2
	bne loc_812E572
	lsr r3, r3, #1
	add r4, #0x10
	cmp r4, r7
	ble loc_812E520
	tst r3, r3
	bne loc_812E572
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x20 
	bne loc_812E572
	cmp r1, #0x20 
	bne loc_812E572
	mov r0, #0x2c 
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	mov r2, #0x1e
	ldrh r0, [r5,#0x2a]
	ldrh r1, [r5,#0x2c]
	cmp r0, r1
	beq loc_812E56A
	mov r2, #0x1c
loc_812E56A:
	strb r2, [r5,#0x10]
	b loc_812E572
loc_812E56E:
	bl sub_812ED58
loc_812E572:
	b locret_812E574
locret_812E574:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812E578: .word 0xFFFFFFFF
dword_812E57C: .word 0xFEDC
dword_812E580: .word 0xFEDB
	thumb_func_end sub_812E440

	thumb_local_start
sub_812E584:
	push {lr}
	ldr r0, off_812E594 // =off_812E598 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812E594: .word off_812E598
off_812E598: .word sub_812AC14+1
	.word sub_812E5A8+1
	.word sub_812E61C+1
	.word sub_812E6CC+1
	thumb_func_end sub_812E584

	thumb_local_start
sub_812E5A8:
	push {r7,lr}
	ldrh r0, [r5,#0x2a]
	mov r1, r0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	cmp r0, #0x90
	beq loc_812E5D8
	mov r1, #4
	svc 6
	lsl r0, r0, #2
	push {r0,r1}
	mov r1, #0x90
	sub r0, r0, r1
	bl sub_813B780
	mov r7, r0
	pop {r0,r1}
	mov r2, #0x10
	mul r1, r2
	add r1, r1, r7
	ldrb r1, [r1,#3]
	mov r2, #1
	bl sub_803D128
loc_812E5D8:
	ldrh r0, [r5,#0x2c]
	mov r1, r0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	cmp r0, #0x90
	beq loc_812E606
	mov r1, #4
	svc 6
	lsl r0, r0, #2
	push {r0,r1}
	mov r1, #0x90
	sub r0, r0, r1
	bl sub_813B780
	mov r7, r0
	pop {r0,r1}
	mov r2, #0x10
	mul r1, r2
	add r1, r1, r7
	ldrb r1, [r1,#3]
	mov r2, #1
	bl sub_803D108
loc_812E606:
	bl sub_803F798
	mov r0, #0x3d 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5,#0xc]
	pop {r7,pc}
	thumb_func_end sub_812E5A8

	thumb_local_start
sub_812E61C:
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812E64E
	bl eStruct200BC30_getJumpOffset00
	mov r4, r0
	bl sub_803EA50
	mov r6, r0
	bl sub_803EBAC
	mov r0, r4
	bl eStruct200BC30_setJumpOffset00
	mov r0, r6
	bl sub_803EA58
	mov r0, #0xc
	strb r0, [r5,#0xc]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_812E64E:
	pop {r4-r7,pc}
	thumb_func_end sub_812E61C

	thumb_local_start
sub_812E650:
	push {lr}
	ldr r0, off_812E664 // =off_812E668 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_812EFE4
	pop {pc}
	.balign 4, 0x00
off_812E664: .word off_812E668
off_812E668: .word sub_812AC14+1
	.word sub_812E678+1
	.word sub_812E6CC+1
	.word sub_812E714+1
	thumb_func_end sub_812E650

	thumb_local_start
sub_812E678:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_812E6A2
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812E6CA
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #2
	bne loc_812E6A2
	mov r0, #0xc
	strb r0, [r5,#0xc]
	bl sub_8149644
	bl sub_8149568
	b locret_812E6CA
loc_812E6A2:
	bl eStruct200BC30_getJumpOffset00
	mov r4, r0
	bl sub_803EA50
	mov r6, r0
	bl sub_803EBAC
	mov r0, r4
	bl eStruct200BC30_setJumpOffset00
	mov r0, r6
	bl sub_803EA58
	mov r0, #8
	strb r0, [r5,#0xc]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_812E6CA:
	pop {r4-r7,pc}
	thumb_func_end sub_812E678

	thumb_local_start
sub_812E6CC:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812E70A
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812E6E4
	bl sub_8149644
	bl sub_8149568
loc_812E6E4:
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	ldr r0, off_812E70C // =unk_20251A0 
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812E710 // =byte_8129150 
	bl sub_80465A0 // (void *a1) -> void
locret_812E70A:
	pop {pc}
off_812E70C: .word unk_20251A0
off_812E710: .word byte_8129150
	thumb_func_end sub_812E6CC

	thumb_local_start
sub_812E714:
	push {lr}
	pop {pc}
	thumb_func_end sub_812E714

	thumb_local_start
sub_812E718:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812E7EA
	cmp r0, #1
	bne loc_812E728
	b locret_812E7F0
loc_812E728:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E732
	b loc_812E73E
loc_812E732:
	bl sub_81325CC
	ldrh r1, [r5,#0x2a]
	strh r1, [r5,#0xa]
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812E73E:
	mov r1, #8
	tst r4, r1
	bne locret_812E7F0
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E904 // =0xffffffff 
	cmp r0, r1
	beq locret_812E7F0
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812E760:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E7EE
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E774
	lsr r3, r3, #1
loc_812E774:
	add r0, #0x10
	cmp r0, r7
	ble loc_812E760
	tst r3, r3
	bne loc_812E7EE
	ldrh r1, [r5,#0x26]
	cmp r1, #0x10
	bne loc_812E7B4
	bl sub_803DD60
	tst r0, r0
	beq loc_812E7A0
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812E7EE
	cmp r0, #0x10
	beq loc_812E7DE
	cmp r0, #8
	bne loc_812E7EE
	b loc_812E7DE
loc_812E7A0:
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812E7EE
	cmp r1, #0x10
	beq loc_812E7DE
	cmp r1, #8
	bne loc_812E7EE
	b loc_812E7DE
loc_812E7B4:
	cmp r1, #8
	bne loc_812E7EE
	bl sub_803DD60
	tst r0, r0
	beq loc_812E7D0
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812E7EE
	cmp r1, #8
	bne loc_812E7EE
	b loc_812E7DE
loc_812E7D0:
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812E7EE
	cmp r0, #8
	bne loc_812E7EE
loc_812E7DE:
	mov r0, #0x1c
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	b loc_812E7EE
loc_812E7EA:
	bl sub_812ED58
loc_812E7EE:
	b locret_812E7F0
locret_812E7F0:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812E718

	thumb_local_start
sub_812E7F4:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812E890
	cmp r0, #1
	beq locret_812E896
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E810
	b loc_812E81E
loc_812E810:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	mov r1, #0x80
	lsl r1, r1, #4
	strh r1, [r0,#0xa]
loc_812E81E:
	mov r1, #8
	tst r4, r1
	bne locret_812E896
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812E904 // =0xffffffff 
	cmp r0, r1
	beq loc_812E894
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812E840:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812E894
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812E894
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812E840
	tst r3, r3
	bne loc_812E894
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_812E894
	bl chatbox_8040818
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, byte_812E908 // =0xdc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812E894
loc_812E890:
	bl sub_812ED58
loc_812E894:
	b locret_812E896
locret_812E896:
	pop {r4-r7,pc}
	thumb_func_end sub_812E7F4

	thumb_local_start
sub_812E898:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812E8EC
	cmp r0, #1
	bne loc_812E8A8
	b loc_812E8F4
loc_812E8A8:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812E8B2
	b loc_812E8BE
loc_812E8B2:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812E8BE:
	mov r1, #8
	tst r4, r1
	beq loc_812E8C6
	b loc_812E8F4
loc_812E8C6:
	ldrh r0, [r5,#0x28]
	tst r0, r0
	beq loc_812E8D2
	sub r0, #1
	strh r0, [r5,#0x28]
	b loc_812E8F4
loc_812E8D2:
	bl sub_803E8E4
	cmp r0, #0xc
	beq loc_812E8F4
	ldrb r0, [r5,#0x1f]
	cmp r0, #0x10
	bne loc_812E8E4
	mov r1, #0
	strh r1, [r5,#0x28]
loc_812E8E4:
	strb r0, [r5,#2]
	bl chatbox_8040818
	b loc_812E8F4
loc_812E8EC:
	bl sub_812ED58
	b loc_812E8F2
loc_812E8F2:
	b loc_812E8F4
loc_812E8F4:
	ldrb r0, [r5,#0x1f]
	cmp r0, #4
	bne locret_812E902
	bl sub_812EC04
	bl sub_812EFD4
locret_812E902:
	pop {pc}
dword_812E904: .word 0xFFFFFFFF
byte_812E908: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
	thumb_func_end sub_812E898

	thumb_local_start
sub_812E910:
	push {r4-r7,lr}
	mov r0, r4
	ldrh r6, [r0,#0xa]
	add r0, #0x10
	ldrh r7, [r0,#0xa]
	bl sub_803DD60
	tst r0, r0
	beq loc_812E928
	strh r7, [r5,#0x2a]
	strh r6, [r5,#0x2c]
	b loc_812E92C
loc_812E928:
	strh r6, [r5,#0x2a]
	strh r7, [r5,#0x2c]
loc_812E92C:
	bl sub_81325CC
	ldr r1, dword_812E9A4 // =0xfedb 
	strh r1, [r0,#0xa]
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x15]
	strb r0, [r5,#3]
	strh r0, [r5,#0x28]
	ldrh r0, [r5,#0x2c]
	mov r1, #1
	mov r2, #4
	bl sub_812EC2C
	mov r1, #1
	bl sub_812EDFC
	strh r0, [r5,#0x30]
	mov r0, #1
	bl loc_812EE38
	ldrh r0, [r5,#0x2a]
	ldrh r1, [r5,#0x2c]
	cmp r0, r1
	bne loc_812E994
	cmp r0, #0x90
	bne loc_812E994
	mov r0, #0x28 
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0x3c 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #6
	bl sub_8046696
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812E9A8 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b locret_812E9A0
loc_812E994:
	bl loc_812EDEA
	mov r0, #0
	mov r1, #6
	bl sub_811A914
locret_812E9A0:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812E9A4: .word 0xFEDB
dword_812E9A8: .word 0xFEDC
	thumb_func_end sub_812E910

	thumb_local_start
sub_812E9AC:
	push {r7,lr}
	bl sub_812ED2C
	mov r7, r0
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	bl sub_8046664 // () -> void
	bl chatbox_8040818
	mov r0, r10
	ldr r0, [r0,#oToolkit_RenderInfoPtr]
	ldr r1, dword_812EA3C // =0xbf40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x2f 
	strb r1, [r0,#8]
	mov r1, #0x3f 
	strb r1, [r0,#0xa]
	mov r1, #0x10
	strb r1, [r0,#1]
	mov r1, #0
	strb r1, [r0,#5]
	mov r1, #0xf0
	strb r1, [r0]
	mov r1, #0xe
	strb r1, [r0,#4]
	mov r0, r7
	mov r1, #0x80
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl sub_812EAC4
	bl sub_812EA44
	bl sub_812EAAC
	bl sub_812EB88
	bl sub_812EB78
	bl sub_812EF20
	mov r0, #0
	ldr r1, off_812EA40 // =dword_8129180 
	bl sub_8120CC8
	strb r0, [r5,#0x17]
	strb r1, [r5,#0x18]
	strb r0, [r5,#0x19]
	strb r1, [r5,#0x1a]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r7,pc}
	.balign 4, 0x00
dword_812EA3C: .word 0xBF40
off_812EA40: .word dword_8129180
	thumb_func_end sub_812E9AC

	thumb_local_start
sub_812EA44:
	push {lr}
	bl sub_812AF3C
	bl sub_812AF78
	bl sub_812AF98
	// initRefs
	ldr r0, off_812EA5C // =off_812EA60 
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
off_812EA5C: .word off_812EA60
off_812EA60: .word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word 0x886DC688
	.word eGuiSprite2022FA0
	.word eDecompBuffer2013A00
	.word 0x886DC518
	.word eGuiSprite2022AA0
	.word eDecompBuffer2013A00
	.word 0x886DCCF0
	.word unk_2024290
	.word eDecompBuffer2013A00
	.word 0x886D497C
	.word unk_2025AE8
	.word eDecompBuffer2013A00
	.word 0x8873ECC8
	.word unk_2025070
	.word eDecompBuffer2013A00
	.word 0x0
	thumb_func_end sub_812EA44

/*For debugging purposes, connect comment at any range!*/
