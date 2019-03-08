	.include "data/dat33.inc"

byte_812C258: .byte 0x16
	.byte 0x0, 0x0, 0x3, 0x16, 0x1, 0x1, 0x3, 0x16, 0x2, 0x2, 0x3, 0xFF, 0xFF
	.byte 0xFF, 0xFF
byte_812C268: .byte 0x16, 0x3, 0x0, 0x4, 0x16, 0x4, 0x1, 0x4, 0x16, 0x5, 0x2, 0x4, 0xFF
	.byte 0xFF, 0xFF, 0xFF
byte_812C278: .byte 0x1D, 0x6, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_812C280: .byte 0x1E, 0x6, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_812C288: .byte 0xB0, 0xC3, 0xB1, 0xC3, 0xB2, 0xC3, 0xB3, 0xC3, 0xB4
	.byte 0xC3, 0xB5, 0xC3, 0xB6, 0xC3, 0xB7, 0xC3, 0xB8, 0xC3
	.byte 0xB9, 0xC3, 0xBA, 0xC3, 0xBB, 0xC3, 0xBC, 0xC3, 0xBD
	.byte 0xC3, 0xBE, 0xC3, 0xBF, 0xC3, 0xC0, 0xC3, 0xC1, 0xC3
	.byte 0xC2, 0xC3, 0xC3, 0xC3, 0xC4, 0xC3, 0xC5, 0xC3, 0xC6
	.byte 0xC3, 0xC7, 0xC3, 0xC8, 0xC3, 0xC9, 0xC3, 0xCA, 0xC3
	.byte 0xCB, 0xC3
	thumb_func_start sub_812C2C0
sub_812C2C0:
	push {lr}
	ldr r0, off_812C2E8 // =off_812C2EC 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812C2E4
	mov r0, #0
	mov r1, #0
	bl sub_803C59C
locret_812C2E4:
	pop {pc}
	.balign 4, 0x00
off_812C2E8: .word off_812C2EC
off_812C2EC: .word sub_812C320+1
	.word sub_812C3BC+1
	.word sub_812C4E8+1
	.word sub_812C7B4+1
	.word sub_812C884+1
	.word sub_812CA68+1
	.word sub_812CC44+1
	.word sub_812CE28+1
	.word sub_812CEF0+1
	.word sub_812CFD4+1
	.word sub_812D0C0+1
	.word sub_812CD88+1
	.word sub_812D164+1
	thumb_func_end sub_812C2C0

	thumb_local_start
sub_812C320:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#0x1b]
	mov r0, #0xc
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812C3B2
	cmp r0, #1
	beq locret_812C3B8
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C340
	b loc_812C34E
loc_812C340:
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, byte_812C4DC // =0xdc 
	strh r1, [r0,#0xa]
loc_812C34E:
	mov r1, #8
	tst r4, r1
	bne locret_812C3B8
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812C4D8 // =0xffffffff 
	cmp r0, r1
	beq loc_812C3B6
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C370:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812C3B6
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812C3B6
	ldrh r1, [r4,#0xa]
	ldr r2, byte_812C4DC // =0xdc 
	cmp r1, r2
	bne loc_812C3B6
	lsr r3, r3, #1
	add r4, #0x10
	cmp r4, r7
	ble loc_812C370
	tst r3, r3
	bne loc_812C3B6
	bl IsPaletteFadeActive // () -> zf
	beq loc_812C3B6
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	ldr r0, byte_812C4DC // =0xdc 
	strh r0, [r5,#0x2a]
	bl sub_812D298
	bl sub_812D5A0
	b loc_812C3B6
loc_812C3B2:
	bl sub_812D880
loc_812C3B6:
	b locret_812C3B8
locret_812C3B8:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812C320

	thumb_local_start
sub_812C3BC:
	push {r4-r7,lr}
	mov r0, #0xc
	strb r0, [r5,#0x10]
	bl sub_812D854
	strh r0, [r5,#0x2a]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812C4B2
	cmp r0, #1
	bne loc_812C3D6
	b loc_812C4CA
loc_812C3D6:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C3E0
	b loc_812C3EC
loc_812C3E0:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812C3EC:
	mov r1, #8
	tst r4, r1
	beq loc_812C3FC
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812C4C4
	b loc_812C4C2
loc_812C3FC:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812C4D8 // =0xffffffff 
	cmp r0, r1
	beq loc_812C4C2
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C418:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812C4C2
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812C4C2
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812C418
	tst r3, r3
	bne loc_812C4C2
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812C4E4 // =0xb560 
	cmp r1, r2
	bgt loc_812C4B8
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812C4E4 // =0xb560 
	cmp r1, r2
	bgt loc_812C4B8
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812C480
	bl sub_812DA60
	ldrb r1, [r5,#0x1b]
	mov r2, #0x10
	orr r1, r2
	strb r1, [r5,#0x1b]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812C4C2
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812C478
	mov r1, #4
loc_812C478:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812C4C2
loc_812C480:
	cmp r0, #0xff
	beq loc_812C4B8
	bl sub_803DD60
	tst r0, r0
	beq loc_812C48E
	add r4, #0x10
loc_812C48E:
	ldrh r1, [r4,#0xa]
	ldr r2, byte_812C4DC // =0xdc 
	cmp r1, r2
	beq loc_812C4C2
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
	b loc_812C4C2
loc_812C4B2:
	bl sub_812D880
	b loc_812C4C2
loc_812C4B8:
	bl IsPaletteFadeActive // () -> zf
	beq loc_812C4C2
	bl sub_812D690
loc_812C4C2:
	b loc_812C4CA
loc_812C4C4:
	mov r0, #4
	bl sub_812DA4C
loc_812C4CA:
	bl sub_812D5A0
	bl sub_812D3E4
	bl sub_812D4FC
	pop {r4-r7,pc}
dword_812C4D8: .word 0xFFFFFFFF
byte_812C4DC: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
dword_812C4E4: .word 0xB560
	thumb_func_end sub_812C3BC

	thumb_local_start
sub_812C4E8:
	push {r4-r7,lr}
	ldr r0, off_812C4F8 // =off_812C4FC 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812C4F8: .word off_812C4FC
off_812C4FC: .word sub_812C50C+1
	.word sub_812C50C+1
	.word sub_812C5D0+1
	.word sub_812C708+1
	thumb_func_end sub_812C4E8

	thumb_local_start
sub_812C50C:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812C590
	cmp r0, #1
	bne loc_812C520
	b locret_812C5CE
loc_812C520:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C52A
	b loc_812C536
loc_812C52A:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812C536:
	mov r1, #8
	tst r4, r1
	beq loc_812C546
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812C5C6
	b loc_812C5C8
loc_812C546:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812C7A0 // =0xffffffff 
	cmp r0, r1
	beq loc_812C596
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C562:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812C596
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812C596
	ldrh r1, [r0,#8]
	cmp r1, #0
	beq loc_812C596
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812C7AC // =0xb560 
	cmp r1, r2
	bgt loc_812C596
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812C562
	tst r3, r3
	bne loc_812C596
	b loc_812C596
loc_812C590:
	bl sub_812D880
	b loc_812C5B6
loc_812C596:
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_812C5A0
	bl sub_812D4FC
loc_812C5A0:
	bl IsPaletteFadeActive // () -> zf
	beq locret_812C5CE
	ldrb r0, [r5,#3]
	cmp r0, #4
	bne loc_812C5B6
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #4
	strh r0, [r5,#0x26]
	b loc_812C5C6
loc_812C5B6:
	bl sub_812D8C8
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812C5C6:
	b locret_812C5CE
loc_812C5C8:
	mov r0, #8
	bl sub_812DA4C
locret_812C5CE:
	pop {r4-r7,pc}
	thumb_func_end sub_812C50C

	thumb_local_start
sub_812C5D0:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812C6C2
	cmp r0, #1
	bne loc_812C5E4
	b locret_812C704
loc_812C5E4:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C5EE
	b loc_812C600
loc_812C5EE:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	mov r2, #0x80
	lsl r2, r2, #8
	bic r1, r2
	strh r1, [r0,#0xa]
loc_812C600:
	mov r1, #8
	tst r4, r1
	beq loc_812C610
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812C6FC
	b loc_812C6FE
loc_812C610:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812C7A0 // =0xffffffff 
	cmp r0, r1
	beq loc_812C6C8
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C62C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812C6C8
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812C6C8
	ldrh r1, [r0,#8]
	cmp r1, #8
	beq loc_812C672
	ldrh r1, [r0,#8]
	cmp r1, #2
	beq loc_812C6FC
	ldrh r1, [r0,#8]
	cmp r1, #0
	bne loc_812C664
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812C7A8 // =0xfedb 
	cmp r1, r2
	bne loc_812C664
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	bl sub_812DA60
	b locret_812C704
loc_812C664:
	ldrh r1, [r0,#8]
	cmp r1, #4
	bne loc_812C6C8
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812C7B0 // =0x3560 
	cmp r1, r2
	bgt loc_812C6C8
loc_812C672:
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812C62C
	tst r3, r3
	bne loc_812C6C8
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812C6B8
	push {r0}
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {r0}
	mov r1, #0x24 
	strb r1, [r5,#2]
	ldrb r1, [r5,#0x1b]
	mov r2, #0x10
	bic r1, r2
	strb r1, [r5,#0x1b]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812C6C8
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812C6B0
	mov r1, #4
loc_812C6B0:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812C6C8
loc_812C6B8:
	cmp r0, #0xff
	beq loc_812C6C8
	bl sub_812D204
	b loc_812C6FC
loc_812C6C2:
	bl sub_812D880
	b loc_812C6FC
loc_812C6C8:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812C6FC
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	ldr r0, dword_812C7A4 // =0xfedc 
	strh r0, [r5,#0x2a]
	mov r1, #0
	strh r1, [r5,#0x26]
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812C7A4 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812C6FC:
	b locret_812C704
loc_812C6FE:
	mov r0, #8
	bl sub_812DA4C
locret_812C704:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812C5D0

	thumb_local_start
sub_812C708:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812C790
	cmp r0, #1
	bne loc_812C71C
	b locret_812C79C
loc_812C71C:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C726
	b loc_812C738
loc_812C726:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	mov r2, #0x80
	lsl r2, r2, #8
	bic r1, r2
	strh r1, [r0,#0xa]
loc_812C738:
	mov r1, #8
	tst r4, r1
	beq loc_812C748
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812C748
	b loc_812C796
loc_812C748:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812C7A0 // =0xffffffff 
	cmp r0, r1
	beq loc_812C794
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C764:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812C794
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812C794
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812C7AC // =0xb560 
	cmp r1, r2
	bgt loc_812C794
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812C764
	tst r3, r3
	bne loc_812C794
	mov r0, #8
	strb r0, [r5,#3]
	b loc_812C794
loc_812C790:
	bl sub_812D880
loc_812C794:
	b locret_812C79C
loc_812C796:
	mov r0, #8
	bl sub_812DA4C
locret_812C79C:
	pop {r4-r7,pc}
	.byte 0, 0
dword_812C7A0: .word 0xFFFFFFFF
dword_812C7A4: .word 0xFEDC
dword_812C7A8: .word 0xFEDB
dword_812C7AC: .word 0xB560
dword_812C7B0: .word 0x3560
	thumb_func_end sub_812C708

	thumb_local_start
sub_812C7B4:
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
	beq loc_812C7D4
	strb r0, [r5,#0x14]
	b loc_812C7D4
loc_812C7D4:
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812C87C
	cmp r0, #1
	beq locret_812C882
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C7EA
	b loc_812C7F6
loc_812C7EA:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812C7F6:
	mov r1, #8
	tst r4, r1
	bne locret_812C882
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812CA5C // =0xffffffff 
	cmp r0, r1
	beq loc_812C880
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C818:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812C880
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812C880
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812C818
	tst r3, r3
	bne loc_812C880
	mov r0, r4
	bl sub_8132430
	bl sub_803DD60
	tst r0, r0
	beq loc_812C846
	add r4, #0x10
loc_812C846:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812CA60 // =0xfedc 
	cmp r1, r2
	bne loc_812C880
	bl IsPaletteFadeActive // () -> zf
	beq loc_812C880
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8046664 // () -> void
	bl sub_812D528
	bl sub_812D378
	bl sub_812D3E4
	bl sub_812D4FC
	mov r0, #0
	bl sub_812D99C
	mov r0, #4
	strb r0, [r5,#2]
	b loc_812C880
loc_812C87C:
	bl sub_812D880
loc_812C880:
	b locret_812C882
locret_812C882:
	pop {r4-r7,pc}
	thumb_func_end sub_812C7B4

	thumb_local_start
sub_812C884:
	push {r4-r7,lr}
	mov r0, #0x16
	strb r0, [r5,#0x10]
	ldrb r0, [r5,#3]
	tst r0, r0
	beq loc_812C8A4
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812C8F4
	mov r1, #0
	strh r1, [r5,#0x26]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_812C8F4
loc_812C8A4:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0x15]
	mov r4, r3
	bl sub_811FA0C
	cmp r4, r0
	beq loc_812C8BE
	strb r0, [r5,#0x15]
	b loc_812C8F4
loc_812C8BE:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812C8D2
	mov r0, #1
	strb r0, [r5,#0x15]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_812C8DA
loc_812C8D2:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_812C8F4
loc_812C8DA:
	mov r1, #4
	ldrb r0, [r5,#0x15]
	tst r0, r0
	beq loc_812C8E4
	mov r1, #8
loc_812C8E4:
	strh r1, [r5,#0x26]
	mov r0, #0x81
	ldrh r1, [r5,#0x26]
	cmp r1, #4
	beq loc_812C8F0
	mov r0, #0x83
loc_812C8F0:
	bl sound_play // () -> void
loc_812C8F4:
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812C8FE
	b loc_812CA4C
loc_812C8FE:
	cmp r0, #1
	bne loc_812C904
	b locret_812CA58
loc_812C904:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812C90E
	b loc_812C91A
loc_812C90E:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812CA64 // =0xfedb 
	strh r1, [r0,#0xa]
loc_812C91A:
	mov r1, #8
	tst r4, r1
	beq loc_812C92C
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812C92A
	b loc_812CA52
loc_812C92A:
	b loc_812CA50
loc_812C92C:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812CA5C // =0xffffffff 
	cmp r0, r1
	bne loc_812C944
	b loc_812CA50
loc_812C944:
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812C94A:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	beq loc_812C954
	b loc_812CA50
loc_812C954:
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812CA50
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812CA64 // =0xfedb 
	cmp r1, r2
	beq loc_812C986
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812C986
	ldrh r0, [r5,#0x28]
	add r0, #1
	strh r0, [r5,#0x28]
	cmp r0, #0xb4
	blt loc_812C984
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	bl sub_812DA60
	b locret_812CA58
loc_812C984:
	b loc_812CA50
loc_812C986:
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812C94A
	tst r3, r3
	bne loc_812CA50
	mov r0, r4
	bl sub_81324A8
	cmp r0, #8
	beq loc_812C9D8
	cmp r0, #2
	bgt loc_812C9FE
	cmp r0, #2
	beq loc_812C9D8
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
	mov r0, #0
	mov r1, #3
	mov r2, #0
	bl sub_812D5D0
	mov r1, #1
	bl sub_812D934
	strh r0, [r5,#0x30]
	mov r0, #1
	bl sub_812D99C
	bl sub_812D91C
	b loc_812CA50
loc_812C9D8:
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
	ldr r1, dword_812CA60 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812CA50
loc_812C9FE:
	cmp r0, #0xff
	bne loc_812CA20
	ldrb r0, [r5,#3]
	cmp r0, #4
	bne loc_812CA16
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	mov r1, #6
	bl sub_811A940
	b loc_812CA50
loc_812CA16:
	ldrb r0, [r5,#0x15]
	mov r1, #6
	bl sub_811A914
	b loc_812CA50
loc_812CA20:
	cmp r0, #3
	bne loc_812CA32
	mov r0, #1
	mov r1, #6
	bl sub_811A940
	mov r0, #4
	strb r0, [r5,#3]
	b loc_812CA50
loc_812CA32:
	cmp r0, #4
	bne loc_812CA50
	mov r0, #1
	mov r1, #6
	bl sub_811A940
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x78 
	strh r0, [r5,#0x28]
	b loc_812CA50
loc_812CA4C:
	bl sub_812D880
loc_812CA50:
	b locret_812CA58
loc_812CA52:
	mov r0, #0x10
	bl sub_812DA4C
locret_812CA58:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812CA5C: .word 0xFFFFFFFF
dword_812CA60: .word 0xFEDC
dword_812CA64: .word 0xFEDB
	thumb_func_end sub_812C884

	thumb_local_start
sub_812CA68:
	push {r4-r7,lr}
	ldr r0, off_812CA78 // =off_812CA7C 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812CA78: .word off_812CA7C
off_812CA7C: .word sub_812CA84+1
	.word sub_812CB74+1
	thumb_func_end sub_812CA68

	thumb_local_start
sub_812CA84:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812CB5E
	cmp r0, #1
	beq locret_812CB64
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812CAA0
	b loc_812CAAC
loc_812CAA0:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812CAAC:
	mov r1, #8
	tst r4, r1
	bne locret_812CB64
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812CB68 // =0xffffffff 
	cmp r0, r1
	beq loc_812CB62
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812CACE:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812CB62
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812CB62
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812CACE
	tst r3, r3
	bne loc_812CB62
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812CB70 // =0xfedb 
	cmp r1, r2
	bne loc_812CB00
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812CB70 // =0xfedb 
	cmp r1, r2
	beq loc_812CB46
loc_812CB00:
	bl sub_803DD60
	tst r0, r0
	beq loc_812CB0A
	add r4, #0x10
loc_812CB0A:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812CB6C // =0xfedc 
	cmp r1, r2
	bne loc_812CB62
	bl IsPaletteFadeActive // () -> zf
	beq loc_812CB62
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0
	bl sub_812D99C
	mov r0, #1
	bl sub_812D99C
	bl sub_8046664 // () -> void
	bl sub_812D528
	bl sub_812D378
	bl sub_812D3E4
	bl sub_812D4FC
	b loc_812CB62
loc_812CB46:
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812CB62
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x78 
	strh r0, [r5,#0x28]
	b loc_812CB62
loc_812CB5E:
	bl sub_812D880
loc_812CB62:
	b locret_812CB64
locret_812CB64:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812CB68: .word 0xFFFFFFFF
dword_812CB6C: .word 0xFEDC
dword_812CB70: .word 0xFEDB
	thumb_func_end sub_812CA84

	thumb_local_start
sub_812CB74:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812CC3A
	cmp r0, #1
	beq locret_812CC40
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812CB90
	b loc_812CB9C
loc_812CB90:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812CB9C:
	mov r1, #8
	tst r4, r1
	bne locret_812CC40
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812CD7C // =0xffffffff 
	cmp r0, r1
	beq loc_812CC3E
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812CBBE:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812CC3E
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812CC3E
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812CBBE
	tst r3, r3
	bne loc_812CC3E
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812CD84 // =0xfedb 
	cmp r1, r2
	bne loc_812CBF0
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812CD84 // =0xfedb 
	cmp r1, r2
	beq loc_812CC22
loc_812CBF0:
	bl sub_803DD60
	tst r0, r0
	beq loc_812CBFA
	add r4, #0x10
loc_812CBFA:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812CD80 // =0xfedc 
	cmp r1, r2
	bne loc_812CC3E
	bl IsPaletteFadeActive // () -> zf
	beq loc_812CC3E
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812CD80 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812CC3E
loc_812CC22:
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812CC3E
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x3c 
	strh r0, [r5,#0x28]
	b loc_812CC3E
loc_812CC3A:
	bl sub_812D880
loc_812CC3E:
	b locret_812CC40
locret_812CC40:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812CB74

	thumb_local_start
sub_812CC44:
	push {r4-r7,lr}
	mov r0, #0x19
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812CC54
	b loc_812CD72
loc_812CC54:
	cmp r0, #1
	bne loc_812CC5A
	b locret_812CD78
loc_812CC5A:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812CC64
	b loc_812CD08
loc_812CC64:
	bl sub_81325CC
	mov r1, #8
	tst r4, r1
	beq loc_812CC7C
	push {r0}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	pop {r0}
	bne loc_812CC7C
	b locret_812CD78
loc_812CC7C:
	mov r4, r0
	ldrh r0, [r5,#0x28]
	sub r0, #1
	beq loc_812CCFE
	strh r0, [r5,#0x28]
	cmp r0, #0x32 
	bne loc_812CC96
	mov r0, #6
	bl sub_811A968
	mov r0, #0
	strh r0, [r5,#0x2e]
	b loc_812CCF2
loc_812CC96:
	cmp r0, #0x32 
	bge loc_812CCF2
	ldrh r1, [r5,#0x2e]
	add r1, #8
	strh r1, [r5,#0x2e]
	mov r0, #0x30 
	add r0, r0, r1
	cmp r0, #0xc0
	blt loc_812CCC0
	ldrh r0, [r5,#0x2c]
	mov r1, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r1, #0
	bl sub_812D934
	strh r0, [r5,#0x30]
	mov r0, #0
	bl sub_812D954
	mov r0, #0xc0
loc_812CCC0:
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	mov r0, #0xc0
	ldrh r1, [r5,#0x2e]
	sub r0, r0, r1
	cmp r0, #0x30 
	bgt loc_812CCEA
	ldrh r0, [r5,#0x2a]
	mov r1, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	mov r1, #1
	bl sub_812D934
	strh r0, [r5,#0x30]
	mov r0, #1
	bl sub_812D954
	mov r0, #0x30 
loc_812CCEA:
	mov r1, #0x58 
	mov r2, #3
	bl sub_8119854
loc_812CCF2:
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r4,#8]
	mov r1, #0
	strh r1, [r4,#0xa]
	b loc_812CD08
loc_812CCFE:
	mov r1, #0x20 
	strh r1, [r5,#0x26]
	strh r1, [r4,#8]
	ldr r1, dword_812CD80 // =0xfedc 
	strh r1, [r4,#0xa]
loc_812CD08:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812CD7C // =0xffffffff 
	cmp r0, r1
	beq loc_812CD76
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812CD24:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812CD76
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812CD76
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812CD80 // =0xfedc 
	cmp r1, r2
	bne loc_812CD76
	lsr r3, r3, #1
	add r4, #0x10
	cmp r4, r7
	ble loc_812CD24
	tst r3, r3
	bne loc_812CD76
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x20 
	bne loc_812CD76
	cmp r1, #0x20 
	bne loc_812CD76
	mov r0, #0x2c 
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	mov r2, #0x1e
	ldrh r0, [r5,#0x2a]
	ldrh r1, [r5,#0x2c]
	cmp r0, r1
	beq loc_812CD6E
	mov r2, #0x1c
loc_812CD6E:
	strb r2, [r5,#0x10]
	b loc_812CD76
loc_812CD72:
	bl sub_812D880
loc_812CD76:
	b locret_812CD78
locret_812CD78:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812CD7C: .word 0xFFFFFFFF
dword_812CD80: .word 0xFEDC
dword_812CD84: .word 0xFEDB
	thumb_func_end sub_812CC44

	thumb_local_start
sub_812CD88:
	push {lr}
	ldr r0, off_812CD98 // =off_812CD9C 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812CD98: .word off_812CD9C
off_812CD9C: .word sub_812AC14+1
	.word sub_812CDAC+1
	.word sub_812CDF4+1
	.word sub_812CEA4+1
	thumb_func_end sub_812CD88

	thumb_local_start
sub_812CDAC:
	push {lr}
	ldrh r0, [r5,#0x2a]
	mov r1, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	tst r0, r0
	beq loc_812CDC4
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	mov r2, #1
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
loc_812CDC4:
	ldrh r0, [r5,#0x2c]
	mov r1, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	tst r0, r0
	beq loc_812CDDA
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	mov r2, #1
	bl sub_8021AEE
loc_812CDDA:
	bl sub_8120AB8
	bl sub_803F798
	mov r0, #0x3d 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5,#0xc]
	pop {pc}
	thumb_func_end sub_812CDAC

	thumb_local_start
sub_812CDF4:
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812CE26
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
locret_812CE26:
	pop {r4-r7,pc}
	thumb_func_end sub_812CDF4

	thumb_local_start
sub_812CE28:
	push {lr}
	ldr r0, off_812CE3C // =off_812CE40 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_812DA3C
	pop {pc}
	.balign 4, 0x00
off_812CE3C: .word off_812CE40
off_812CE40: .word sub_812AC14+1
	.word sub_812CE50+1
	.word sub_812CEA4+1
	.word sub_812CEEC+1
	thumb_func_end sub_812CE28

	thumb_local_start
sub_812CE50:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_812CE7A
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812CEA2
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #2
	bne loc_812CE7A
	mov r0, #0xc
	strb r0, [r5,#0xc]
	bl sub_8149644
	bl sub_8149568
	b locret_812CEA2
loc_812CE7A:
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
locret_812CEA2:
	pop {r4-r7,pc}
	thumb_func_end sub_812CE50

	thumb_local_start
sub_812CEA4:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812CEE2
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812CEBC
	bl sub_8149644
	bl sub_8149568
loc_812CEBC:
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	ldr r0, off_812CEE4 // =unk_20251A0 
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812CEE8 // =byte_8129150 
	bl sub_80465A0 // (void *a1) -> void
locret_812CEE2:
	pop {pc}
off_812CEE4: .word unk_20251A0
off_812CEE8: .word byte_8129150
	thumb_func_end sub_812CEA4

	thumb_local_start
sub_812CEEC:
	push {lr}
	pop {pc}
	thumb_func_end sub_812CEEC

	thumb_local_start
sub_812CEF0:
	push {r4-r7,lr}
	ldrb r1, [r5,#0x14]
	strh r1, [r5,#0x2a]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812CFA8
	cmp r0, #1
	bne loc_812CF04
	b loc_812CFBC
loc_812CF04:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812CF0E
	b loc_812CF1A
loc_812CF0E:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812CF1A:
	mov r1, #8
	tst r4, r1
	beq loc_812CF2A
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812CFB2
	b loc_812CFAC
loc_812CF2A:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, byte_812CFC8 // =0xff 
	cmp r0, r1
	beq loc_812CFAC
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812CF46:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812CFAC
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812CFAC
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812CF46
	tst r3, r3
	bne loc_812CFB2
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812CF9E
	push {r0}
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {r0}
	mov r1, #0x24 
	strb r1, [r5,#2]
	ldrb r1, [r5,#0x1b]
	mov r2, #0x10
	orr r1, r2
	strb r1, [r5,#0x1b]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812CFAC
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812CF96
	mov r1, #4
loc_812CF96:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812CFAC
loc_812CF9E:
	cmp r0, #0xff
	bne loc_812CFAC
	bl sub_812D748
	b loc_812CFBC
loc_812CFA8:
	bl sub_812D880
loc_812CFAC:
	bl sub_812D778
	b loc_812CFBC
loc_812CFB2:
	bl sub_812D778
	mov r0, #0x20 
	bl sub_812DA4C
loc_812CFBC:
	bl sub_812D3E4
	bl sub_812D4FC
	pop {r4-r7,pc}
	.balign 4, 0x00
byte_812CFC8: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE
	.byte 0x0, 0x0
	thumb_func_end sub_812CEF0

	thumb_local_start
sub_812CFD4:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812D0A6
	cmp r0, #1
	bne loc_812CFE4
	b loc_812D0AC
loc_812CFE4:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812CFEE
	b loc_812CFFA
loc_812CFEE:
	bl sub_81325CC
	ldrh r1, [r5,#0x2a]
	strh r1, [r5,#0xa]
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812CFFA:
	mov r1, #8
	tst r4, r1
	bne loc_812D0AC
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812D1F8 // =0xffffffff 
	cmp r0, r1
	beq loc_812D0AC
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812D01C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812D0AA
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812D030
	lsr r3, r3, #1
loc_812D030:
	add r0, #0x10
	cmp r0, r7
	ble loc_812D01C
	tst r3, r3
	bne loc_812D0AA
	ldrh r1, [r5,#0x26]
	cmp r1, #0x10
	bne loc_812D070
	bl sub_803DD60
	tst r0, r0
	beq loc_812D05C
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812D0AA
	cmp r0, #0x10
	beq loc_812D09A
	cmp r0, #8
	bne loc_812D0AA
	b loc_812D09A
loc_812D05C:
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812D0AA
	cmp r1, #0x10
	beq loc_812D09A
	cmp r1, #8
	bne loc_812D0AA
	b loc_812D09A
loc_812D070:
	cmp r1, #8
	bne loc_812D0AA
	bl sub_803DD60
	tst r0, r0
	beq loc_812D08C
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812D0AA
	cmp r1, #8
	bne loc_812D0AA
	b loc_812D09A
loc_812D08C:
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812D0AA
	cmp r0, #8
	bne loc_812D0AA
loc_812D09A:
	mov r0, #0x1c
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	b loc_812D0AA
loc_812D0A6:
	bl sub_812D880
loc_812D0AA:
	b loc_812D0AC
loc_812D0AC:
	ldrb r1, [r5,#0x1b]
	mov r0, #0x10
	tst r1, r0
	beq locret_812D0BE
	bl sub_812D3E4
	bl sub_812D4FC
	b locret_812D0BE
locret_812D0BE:
	pop {pc}
	thumb_func_end sub_812CFD4

	thumb_local_start
sub_812D0C0:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812D15C
	cmp r0, #1
	beq locret_812D162
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812D0DC
	b loc_812D0EA
loc_812D0DC:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	mov r1, #0x80
	lsl r1, r1, #4
	strh r1, [r0,#0xa]
loc_812D0EA:
	mov r1, #8
	tst r4, r1
	bne locret_812D162
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812D1F8 // =0xffffffff 
	cmp r0, r1
	beq loc_812D160
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812D10C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812D160
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812D160
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812D10C
	tst r3, r3
	bne loc_812D160
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_812D160
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
	ldr r1, byte_812D1FC // =0xdc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812D160
loc_812D15C:
	bl sub_812D880
loc_812D160:
	b locret_812D162
locret_812D162:
	pop {r4-r7,pc}
	thumb_func_end sub_812D0C0

	thumb_local_start
sub_812D164:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812D1B8
	cmp r0, #1
	bne loc_812D174
	b loc_812D1C0
loc_812D174:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812D17E
	b loc_812D18A
loc_812D17E:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812D18A:
	mov r1, #8
	tst r4, r1
	beq loc_812D192
	b loc_812D1C0
loc_812D192:
	ldrh r0, [r5,#0x28]
	tst r0, r0
	beq loc_812D19E
	sub r0, #1
	strh r0, [r5,#0x28]
	b loc_812D1C0
loc_812D19E:
	bl sub_803E8E4
	cmp r0, #0xc
	beq loc_812D1C0
	ldrb r0, [r5,#0x1f]
	cmp r0, #0x10
	bne loc_812D1B0
	mov r1, #0
	strh r1, [r5,#0x28]
loc_812D1B0:
	strb r0, [r5,#2]
	bl chatbox_8040818
	b loc_812D1C0
loc_812D1B8:
	bl sub_812D880
	b loc_812D1BE
loc_812D1BE:
	b loc_812D1C0
loc_812D1C0:
	ldrb r0, [r5,#0x1f]
	cmp r0, #0x20 
	bne loc_812D1D4
	bl sub_812D78C
	bl sub_812D3E4
	bl sub_812D4FC
	b locret_812D1F4
loc_812D1D4:
	cmp r0, #8
	bne loc_812D1E4
	ldrb r0, [r5,#3]
	cmp r0, #8
	bge locret_812D1F4
	bl sub_812D8C8
	.byte 0x7, 0xE0
loc_812D1E4:
	cmp r0, #0x10
	beq locret_812D1F4
	bl sub_812D5A0
	bl sub_812D3E4
	bl sub_812D4FC
locret_812D1F4:
	pop {pc}
	.byte 0x0, 0x0
dword_812D1F8: .word 0xFFFFFFFF
byte_812D1FC: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
	thumb_func_end sub_812D164

	thumb_local_start
sub_812D204:
	push {r4-r7,lr}
	mov r0, r4
	ldrh r6, [r0,#0xa]
	add r0, #0x10
	ldrh r7, [r0,#0xa]
	bl sub_803DD60
	tst r0, r0
	beq loc_812D21C
	strh r7, [r5,#0x2a]
	strh r6, [r5,#0x2c]
	b loc_812D220
loc_812D21C:
	strh r6, [r5,#0x2a]
	strh r7, [r5,#0x2c]
loc_812D220:
	bl sub_81325CC
	ldr r1, dword_812D290 // =0xfedb 
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
	mov r1, #3
	mov r2, #1
	bl sub_812D5D0
	mov r1, #1
	bl sub_812D934
	strh r0, [r5,#0x30]
	mov r0, #1
	bl sub_812D954
	ldrh r0, [r5,#0x2a]
	ldrh r1, [r5,#0x2c]
	cmp r0, r1
	bne loc_812D282
	tst r0, r0
	bne loc_812D282
	mov r0, #0x28 
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0x3c 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812D294 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b locret_812D28E
loc_812D282:
	bl loc_812D922
	mov r0, #0
	mov r1, #6
	bl sub_811A914
locret_812D28E:
	pop {r4-r7,pc}
dword_812D290: .word 0xFEDB
dword_812D294: .word 0xFEDC
	thumb_func_end sub_812D204

	thumb_local_start
sub_812D298:
	push {r7,lr}
	bl sub_812D6F8
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
	ldr r1, dword_812D308 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, r7
	mov r1, #0x80
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl sub_812D3A8
	bl sub_812D310
	bl sub_812D378
	bl sub_812D3E4
	bl sub_812D4FC
	bl sub_812D528
	mov r0, #0
	ldr r1, off_812D30C // =dword_8129180 
	bl sub_8120CC8
	strb r0, [r5,#0x17]
	strb r1, [r5,#0x18]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r7,pc}
	.byte 0x0, 0x0
dword_812D308: .word 0x1F40
off_812D30C: .word dword_8129180
	thumb_func_end sub_812D298

	thumb_local_start
sub_812D310:
	push {lr}
	bl sub_812AF3C
	bl sub_812AF78
	bl sub_812AF84
	// initRefs
	ldr r0, off_812D328 // =byte_812D32C 
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.byte 0x0, 0x0
off_812D328: .word byte_812D32C
byte_812D32C: .byte 0x38, 0x9D, 0x6C, 0x88, 0x80, 0x49, 0x1, 0x6, 0x0, 0x3A
	.byte 0x1, 0x2
	.word byte_86C9D6C
	.byte 0xD0, 0x16, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0, 0xD8, 0x73, 0x6C
	.byte 0x88, 0x7C, 0xE1, 0x2, 0x2, 0x0, 0x3A, 0x1, 0x2, 0x80, 0x79
	.byte 0x6C, 0x88, 0x7C, 0xF5, 0x2, 0x2, 0x0, 0x3A, 0x1, 0x2, 0x88
	.byte 0xC6, 0x6D, 0x88, 0xA0, 0x2F, 0x2, 0x2, 0x0, 0x3A, 0x1, 0x2
	.byte 0x18, 0xC5, 0x6D, 0x88, 0xA0, 0x2A, 0x2, 0x2, 0x0, 0x3A, 0x1
	.byte 0x2, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_812D310

/*For debugging purposes, connect comment at any range!*/
