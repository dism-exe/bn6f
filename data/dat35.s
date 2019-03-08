	.include "data/dat35.inc"

	.word byte_8129178
	.byte 0x2, 0x0, 0x2, 0x0, 0x0, 0x0, 0x0, 0x40
	thumb_func_start sub_812EFE4
sub_812EFE4:
	push {lr}
	mov r0, #6
	bl getStructFrom2008450
	bne locret_812EFFC
	ldrb r0, [r1,#1]
	cmp r0, #0x1d
	beq loc_812EFF8
	cmp r0, #0x1e
	beq locret_812EFFC
loc_812EFF8:
	bl sub_812EFD4
locret_812EFFC:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812EFE4

	thumb_func_start sub_812F000
sub_812F000:
	push {lr}
	strb r0, [r5,#0x1f]
	mov r0, #0x30 
	strb r0, [r5,#2]
	mov r0, #0x41 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0xf0
	strh r0, [r5,#0x28]
	pop {pc}
	thumb_func_end sub_812F000

	thumb_func_start sub_812F014
sub_812F014:
	push {r0,lr}
	bl sub_80062C8
	cmp r0, #0xc
	bne loc_812F026
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812F026:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812F034
	bl sub_81440D8 // static () -> void
	b loc_812F038
loc_812F034:
	bl sub_803C754
loc_812F038:
	mov r1, #0x1c
	strb r1, [r5,#2]
	mov r1, #0
	strb r1, [r5,#0xc]
	strb r1, [r5,#3]
	pop {r0,pc}
byte_812F044: .byte 0x23, 0x3, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_812F04C: .byte 0x20, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_812F054: .byte 0x20, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_812F05C: .byte 0x1D, 0x6, 0x2, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_812F064: .byte 0x1E, 0x6, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_812F06C: .byte 0x90, 0xC3, 0x91, 0xC3, 0x92, 0xC3, 0x93, 0xC3, 0x94
	.byte 0xC3, 0x95, 0xC3, 0x96, 0xC3, 0x97, 0xC3, 0x98, 0xC3
	.byte 0x99, 0xC3, 0x9A, 0xC3, 0x9B, 0xC3, 0x9C, 0xC3, 0x9D
	.byte 0xC3, 0x9E, 0xC3, 0x9F, 0xC3, 0xA0, 0xC3, 0xA1, 0xC3
	.byte 0xA2, 0xC3, 0xA3, 0xC3
	thumb_func_end sub_812F014

	thumb_func_start sub_812F094
sub_812F094:
	push {lr}
	ldr r0, off_812F0BC // =off_812F0C0 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812F0B8
	mov r0, #0
	mov r1, #0
	bl sub_803C59C
locret_812F0B8:
	pop {pc}
	.balign 4, 0x00
off_812F0BC: .word off_812F0C0
off_812F0C0: .word sub_812F0F8+1
	.word sub_812F190+1
	.word sub_812F2AC+1
	.word sub_812F530+1
	.word sub_812F628+1
	.word sub_812F904+1
	.word sub_812FAE4+1
	.word sub_812FD44+1
	.word sub_812FD44+1
	.word sub_812FE10+1
	.word sub_812FEF0+1
	.word sub_812FC2C+1
	.word sub_812F7C8+1
	.word sub_812F858+1
	thumb_func_end sub_812F094

	thumb_local_start
sub_812F0F8:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#0x1b]
	mov r0, #0xc
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F186
	cmp r0, #1
	beq locret_812F18C
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F118
	b loc_812F126
loc_812F118:
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, byte_812F2A0 // =0xdc 
	strh r1, [r0,#0xa]
loc_812F126:
	mov r1, #8
	tst r4, r1
	bne locret_812F18C
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F29C // =0xffffffff 
	cmp r0, r1
	beq loc_812F18A
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F148:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F18A
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F18A
	ldrh r1, [r4,#0xa]
	ldr r2, byte_812F2A0 // =0xdc 
	cmp r1, r2
	bne loc_812F18A
	lsr r3, r3, #1
	add r4, #0x10
	cmp r4, r7
	ble loc_812F148
	tst r3, r3
	bne loc_812F18A
	bl IsPaletteFadeActive // () -> zf
	beq loc_812F18A
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	ldr r0, byte_812F2A0 // =0xdc 
	strh r0, [r5,#0x2a]
	bl sub_8130084
	b loc_812F18A
loc_812F186:
	bl sub_8130424
loc_812F18A:
	b locret_812F18C
locret_812F18C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_812F0F8

	thumb_local_start
sub_812F190:
	push {r4-r7,lr}
	mov r0, #0xc
	strb r0, [r5,#0x10]
	bl sub_813040C
	strh r0, [r5,#0x2a]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F27E
	cmp r0, #1
	bne loc_812F1AA
	b loc_812F290
loc_812F1AA:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F1B4
	b loc_812F1C0
loc_812F1B4:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812F1C0:
	mov r1, #8
	tst r4, r1
	bne loc_812F290
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F29C // =0xffffffff 
	cmp r0, r1
	beq loc_812F28E
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F1E2:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F28E
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F28E
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F1E2
	tst r3, r3
	bne loc_812F28E
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F2A8 // =0x8003 
	cmp r1, r2
	bgt loc_812F284
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F2A8 // =0x8003 
	cmp r1, r2
	bgt loc_812F284
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812F24C
	bl sub_8130864
	mov r1, #4
	mov r2, #0x49 
	strb r1, [r5,r2]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812F28E
	push {r0}
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {r0}
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812F244
	mov r1, #4
loc_812F244:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812F28E
loc_812F24C:
	cmp r0, #0xff
	beq loc_812F284
	bl sub_803DD60
	tst r0, r0
	beq loc_812F25A
	add r4, #0x10
loc_812F25A:
	ldrh r1, [r4,#0xa]
	ldr r2, byte_812F2A0 // =0xdc 
	cmp r1, r2
	beq loc_812F28E
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
	b loc_812F28E
loc_812F27E:
	bl sub_8130424
	b loc_812F28E
loc_812F284:
	bl IsPaletteFadeActive // () -> zf
	beq loc_812F28E
	bl sub_8130370
loc_812F28E:
	b loc_812F290
loc_812F290:
	bl sub_813064C
	bl sub_8130810
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812F29C: .word 0xFFFFFFFF
byte_812F2A0: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
dword_812F2A8: .word 0x8003
	thumb_func_end sub_812F190

	thumb_local_start
sub_812F2AC:
	push {r4-r7,lr}
	ldr r0, off_812F2BC // =off_812F2C0 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812F2BC: .word off_812F2C0
off_812F2C0: .word sub_812F2D0+1
	.word sub_812F2D0+1
	.word sub_812F390+1
	.word sub_812F494+1
	thumb_func_end sub_812F2AC

	thumb_local_start
sub_812F2D0:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F34A
	cmp r0, #1
	bne loc_812F2E4
	b locret_812F38C
loc_812F2E4:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F2EE
	b loc_812F2FA
loc_812F2EE:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812F2FA:
	mov r1, #8
	tst r4, r1
	bne locret_812F38C
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F51C // =0xffffffff 
	cmp r0, r1
	beq loc_812F350
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F31C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F350
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F350
	ldrh r1, [r0,#8]
	cmp r1, #0
	beq loc_812F350
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F528 // =0x8003 
	cmp r1, r2
	bgt loc_812F350
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F31C
	tst r3, r3
	bne loc_812F350
	b loc_812F350
loc_812F34A:
	bl sub_8130424
	b loc_812F376
loc_812F350:
	bl IsPaletteFadeActive // () -> zf
	bne loc_812F366
	ldrb r0, [r5,#3]
	tst r0, r0
	bne locret_812F38C
	bl sub_813064C
	bl sub_8130810
	b locret_812F38C
loc_812F366:
	ldrb r0, [r5,#3]
	cmp r0, #4
	bne loc_812F376
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #4
	strh r0, [r5,#0x26]
	b loc_812F38A
loc_812F376:
	bl sub_8130464
	bl sub_8130850
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812F38A:
	b locret_812F38C
locret_812F38C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_812F2D0

	thumb_local_start
sub_812F390:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F460
	cmp r0, #1
	bne loc_812F3A4
	b locret_812F490
loc_812F3A4:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F3AE
	b loc_812F3C0
loc_812F3AE:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	mov r2, #0x80
	lsl r2, r2, #8
	bic r1, r2
	strh r1, [r0,#0xa]
loc_812F3C0:
	mov r1, #8
	tst r4, r1
	bne locret_812F490
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F51C // =0xffffffff 
	cmp r0, r1
	beq loc_812F466
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F3E2:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F466
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F466
	ldrh r1, [r0,#8]
	cmp r1, #8
	beq loc_812F40E
	ldrh r1, [r0,#8]
	cmp r1, #2
	beq loc_812F48E
	ldrh r1, [r0,#8]
	cmp r1, #4
	bne loc_812F466
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F52C // =0x3 
	cmp r1, r2
	bgt loc_812F466
loc_812F40E:
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F3E2
	tst r3, r3
	bne loc_812F466
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812F456
	push {r0}
	mov r0, #0x40 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {r0}
	ldrb r1, [r5,#2]
	mov r2, #0x49 
	strb r1, [r5,r2]
	mov r1, #0x24 
	strb r1, [r5,#2]
	mov r1, #0
	strb r1, [r5,#0x16]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	beq loc_812F466
	mov r1, #3
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812F44E
	mov r1, #4
loc_812F44E:
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812F466
loc_812F456:
	cmp r0, #0xff
	beq loc_812F466
	bl sub_812FFA0
	b loc_812F48E
loc_812F460:
	bl sub_8130424
	b loc_812F48E
loc_812F466:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812F48E
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	strb r0, [r5,#3]
	ldr r0, byte_812F520 // =0xdc 
	strh r0, [r5,#0x2a]
	mov r1, #0
	strh r1, [r5,#0x26]
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, byte_812F520 // =0xdc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812F48E:
	b locret_812F490
locret_812F490:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812F390

	thumb_local_start
sub_812F494:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F512
	cmp r0, #1
	bne loc_812F4A8
	b locret_812F518
loc_812F4A8:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F4B2
	b loc_812F4C4
loc_812F4B2:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	mov r2, #0x80
	lsl r2, r2, #8
	bic r1, r2
	strh r1, [r0,#0xa]
loc_812F4C4:
	mov r1, #8
	tst r4, r1
	bne locret_812F518
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F51C // =0xffffffff 
	cmp r0, r1
	beq loc_812F516
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F4E6:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F516
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F516
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F528 // =0x8003 
	cmp r1, r2
	bgt loc_812F516
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F4E6
	tst r3, r3
	bne loc_812F516
	mov r0, #8
	strb r0, [r5,#3]
	b loc_812F516
loc_812F512:
	bl sub_8130424
loc_812F516:
	b locret_812F518
locret_812F518:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812F51C: .word 0xFFFFFFFF
byte_812F520: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
dword_812F528: .word 0x8003
dword_812F52C: .word 0x3
	thumb_func_end sub_812F494

	thumb_local_start
sub_812F530:
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
	beq loc_812F550
	strb r0, [r5,#0x14]
	b loc_812F550
loc_812F550:
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F61E
	cmp r0, #1
	beq locret_812F624
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F566
	b loc_812F572
loc_812F566:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812F572:
	mov r1, #8
	tst r4, r1
	bne locret_812F624
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F7BC // =0xffffffff 
	cmp r0, r1
	beq loc_812F622
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F594:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F622
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F622
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F594
	tst r3, r3
	bne loc_812F622
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812F5C2
	bl sub_813005C
	b loc_812F622
loc_812F5C2:
	bl sub_803DD60
	tst r0, r0
	beq loc_812F5CC
	add r4, #0x10
loc_812F5CC:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812F7C0 // =0xfedc 
	cmp r1, r2
	bne loc_812F622
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_812F5EE
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #1
	strb r0, [r5,#3]
	b loc_812F622
loc_812F5EE:
	bl IsPaletteFadeActive // () -> zf
	beq loc_812F622
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8046664 // () -> void
	bl sub_81301DC
	bl sub_8130208
	bl sub_813064C
	bl sub_8130810
	bl sub_81304EC
	bl sub_813017C
	mov r0, #4
	strb r0, [r5,#2]
	b loc_812F622
loc_812F61E:
	bl sub_8130424
loc_812F622:
	b locret_812F624
locret_812F624:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812F530

	thumb_local_start
sub_812F628:
	push {r4-r7,lr}
	mov r0, #0x16
	strb r0, [r5,#0x10]
	ldrb r0, [r5,#3]
	tst r0, r0
	beq loc_812F648
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812F698
	mov r1, #0
	strh r1, [r5,#0x26]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_812F698
loc_812F648:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0x15]
	mov r4, r3
	bl sub_811FA0C
	cmp r4, r0
	beq loc_812F662
	strb r0, [r5,#0x15]
	b loc_812F698
loc_812F662:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812F676
	mov r0, #1
	strb r0, [r5,#0x15]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_812F67E
loc_812F676:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_812F698
loc_812F67E:
	mov r1, #4
	ldrb r0, [r5,#0x15]
	tst r0, r0
	beq loc_812F688
	mov r1, #8
loc_812F688:
	strh r1, [r5,#0x26]
	mov r0, #0x81
	ldrh r1, [r5,#0x26]
	cmp r1, #4
	beq loc_812F694
	mov r0, #0x83
loc_812F694:
	bl sound_play // () -> void
loc_812F698:
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812F6A2
	b loc_812F7B2
loc_812F6A2:
	cmp r0, #1
	bne loc_812F6A8
	b locret_812F7B8
loc_812F6A8:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F6B2
	b loc_812F6BE
loc_812F6B2:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812F7C4 // =0xfedb 
	strh r1, [r0,#0xa]
loc_812F6BE:
	mov r1, #8
	tst r4, r1
	beq loc_812F6C6
	b locret_812F7B8
loc_812F6C6:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812F7BC // =0xffffffff 
	cmp r0, r1
	beq loc_812F7B6
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F6E2:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F7B6
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F7B6
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F7C4 // =0xfedb 
	cmp r1, r2
	bne loc_812F7B6
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F6E2
	tst r3, r3
	bne loc_812F7B6
	mov r0, r4
	bl sub_81324A8
	cmp r0, #8
	beq loc_812F73E
	cmp r0, #2
	bgt loc_812F764
	cmp r0, #2
	beq loc_812F73E
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
	mov r0, #0x80
	mov r1, #1
	bl sub_81302F4
	bl sub_81304A4
	b loc_812F7B6
loc_812F73E:
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
	ldr r1, dword_812F7C0 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812F7B6
loc_812F764:
	cmp r0, #0xff
	bne loc_812F786
	ldrb r0, [r5,#3]
	cmp r0, #4
	bne loc_812F77C
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	mov r1, #6
	bl sub_811A940
	b loc_812F7B6
loc_812F77C:
	ldrb r0, [r5,#0x15]
	mov r1, #6
	bl sub_811A914
	b loc_812F7B6
loc_812F786:
	cmp r0, #3
	bne loc_812F798
	mov r0, #1
	mov r1, #6
	bl sub_811A940
	mov r0, #4
	strb r0, [r5,#3]
	b loc_812F7B6
loc_812F798:
	cmp r0, #4
	bne loc_812F7B6
	mov r0, #1
	mov r1, #6
	bl sub_811A940
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x3c 
	strh r0, [r5,#0x28]
	b loc_812F7B6
loc_812F7B2:
	bl sub_8130424
loc_812F7B6:
	b locret_812F7B8
locret_812F7B8:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812F7BC: .word 0xFFFFFFFF
dword_812F7C0: .word 0xFEDC
dword_812F7C4: .word 0xFEDB
	thumb_func_end sub_812F628

	thumb_local_start
sub_812F7C8:
	push {r4-r7,lr}
	mov r0, #0x16
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812F7D8
	b loc_812F84E
loc_812F7D8:
	cmp r0, #1
	bne loc_812F7DE
	b locret_812F854
loc_812F7DE:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F7E8
	b loc_812F7F4
loc_812F7E8:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812F8FC // =0xfed8 
	strh r1, [r0,#0xa]
loc_812F7F4:
	mov r1, #8
	tst r4, r1
	beq loc_812F7FC
	b locret_812F854
loc_812F7FC:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, byte_812F8F0 // =0xff 
	cmp r0, r1
	beq loc_812F852
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F818:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F852
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F852
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F8FC // =0xfed8 
	cmp r1, r2
	bne loc_812F852
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F818
	tst r3, r3
	bne loc_812F852
	bl sub_813068C
	mov r0, #0x34 
	strb r0, [r5,#2]
	mov r0, #0x41 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b loc_812F852
loc_812F84E:
	bl sub_8130424
loc_812F852:
	b locret_812F854
locret_812F854:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812F7C8

	thumb_local_start
sub_812F858:
	push {r4-r7,lr}
	mov r0, #0x16
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812F868
	b loc_812F8E6
loc_812F868:
	cmp r0, #1
	bne loc_812F86E
	b locret_812F8EC
loc_812F86E:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F878
	b loc_812F87C
loc_812F878:
	bl sub_81325CC
loc_812F87C:
	mov r1, #8
	tst r4, r1
	beq loc_812F884
	b locret_812F8EC
loc_812F884:
	bl sub_81306F0
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, byte_812F8F0 // =0xff 
	cmp r0, r1
	beq loc_812F8EA
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F8A4:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F8EA
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F8EA
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812F900 // =0xfed9 
	push {r3}
	ldrh r3, [r5,#0x2e]
	add r2, r2, r3
	pop {r3}
	cmp r1, r2
	bne loc_812F8EA
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F8A4
	tst r3, r3
	bne loc_812F8EA
	ldr r0, [r5,#0x40]
	add r0, #2
	str r0, [r5,#0x40]
	ldrh r0, [r5,#0x2e]
	add r0, #1
	strh r0, [r5,#0x2e]
	mov r0, r4
	bl sub_8130728
	b loc_812F8EA
loc_812F8E6:
	bl sub_8130424
loc_812F8EA:
	b locret_812F8EC
locret_812F8EC:
	pop {r4-r7,pc}
	.byte 0, 0
byte_812F8F0: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE
	.byte 0x0, 0x0
dword_812F8FC: .word 0xFED8
dword_812F900: .word 0xFED9
	thumb_func_end sub_812F858

	thumb_local_start
sub_812F904:
	push {r4-r7,lr}
	ldr r0, off_812F914 // =off_812F918 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812F914: .word off_812F918
off_812F918: .word sub_812F920+1
	.word sub_812FA0C+1
	thumb_func_end sub_812F904

	thumb_local_start
sub_812F920:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812F9F6
	cmp r0, #1
	beq locret_812F9FC
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812F93C
	b loc_812F948
loc_812F93C:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812F948:
	mov r1, #8
	tst r4, r1
	bne locret_812F9FC
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812FA00 // =0xffffffff 
	cmp r0, r1
	beq loc_812F9FA
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812F96A:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812F9FA
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812F9FA
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812F96A
	tst r3, r3
	bne loc_812F9FA
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812FA08 // =0xfedb 
	cmp r1, r2
	bne loc_812F99C
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812FA08 // =0xfedb 
	cmp r1, r2
	beq loc_812F9DE
loc_812F99C:
	bl sub_803DD60
	tst r0, r0
	beq loc_812F9A6
	add r4, #0x10
loc_812F9A6:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812FA04 // =0xfedc 
	cmp r1, r2
	bne loc_812F9FA
	bl IsPaletteFadeActive // () -> zf
	beq loc_812F9FA
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#3]
	bl sub_8046664 // () -> void
	bl sub_81301DC
	bl sub_8130208
	bl sub_8130250
	bl sub_81304BC
	bl sub_81304EC
	bl sub_813017C
	b loc_812F9FA
loc_812F9DE:
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812F9FA
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x3c 
	strh r0, [r5,#0x28]
	b loc_812F9FA
loc_812F9F6:
	bl sub_8130424
loc_812F9FA:
	b locret_812F9FC
locret_812F9FC:
	pop {r4-r7,pc}
	.byte 0, 0
dword_812FA00: .word 0xFFFFFFFF
dword_812FA04: .word 0xFEDC
dword_812FA08: .word 0xFEDB
	thumb_func_end sub_812F920

	thumb_local_start
sub_812FA0C:
	push {r4-r7,lr}
	bl sub_813064C
	bl sub_8130810
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812FADA
	cmp r0, #1
	beq locret_812FAE0
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812FA30
	b loc_812FA3C
loc_812FA30:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
loc_812FA3C:
	mov r1, #8
	tst r4, r1
	bne locret_812FAE0
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812FC20 // =0xffffffff 
	cmp r0, r1
	beq loc_812FADE
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812FA5E:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812FADE
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812FADE
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812FA5E
	tst r3, r3
	bne loc_812FADE
	mov r0, r4
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812FC28 // =0xfedb 
	cmp r1, r2
	bne loc_812FA90
	add r0, #0x10
	ldrh r1, [r0,#0xa]
	ldr r2, dword_812FC28 // =0xfedb 
	cmp r1, r2
	beq loc_812FAC2
loc_812FA90:
	bl sub_803DD60
	tst r0, r0
	beq loc_812FA9A
	add r4, #0x10
loc_812FA9A:
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812FC24 // =0xfedc 
	cmp r1, r2
	bne loc_812FADE
	bl IsPaletteFadeActive // () -> zf
	beq loc_812FADE
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	ldr r1, dword_812FC24 // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812FADE
loc_812FAC2:
	mov r0, r4
	bl sub_8132430
	cmp r0, #4
	bne loc_812FADE
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x14]
	mov r0, #0x3c 
	strh r0, [r5,#0x28]
	b loc_812FADE
loc_812FADA:
	bl sub_8130424
loc_812FADE:
	b locret_812FAE0
locret_812FAE0:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812FA0C

	thumb_local_start
sub_812FAE4:
	push {r4-r7,lr}
	mov r0, #0x19
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812FAF4
	b loc_812FC18
loc_812FAF4:
	cmp r0, #1
	bne loc_812FAFA
	b locret_812FC1E
loc_812FAFA:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812FB04
	b loc_812FB86
loc_812FB04:
	bl sub_81325CC
	mov r1, #8
	tst r4, r1
	beq loc_812FB10
	b locret_812FC1E
loc_812FB10:
	mov r4, r0
	ldrh r0, [r5,#0x28]
	sub r0, #1
	beq loc_812FB66
	strh r0, [r5,#0x28]
	cmp r0, #0x32 
	bne loc_812FB2A
	mov r0, #6
	bl sub_811A968
	mov r0, #0
	strh r0, [r5,#0x2e]
	b loc_812FB5A
loc_812FB2A:
	cmp r0, #0x32 
	bge loc_812FB5A
	ldrh r1, [r5,#0x2e]
	add r1, #8
	strh r1, [r5,#0x2e]
	mov r0, #0x40 
	add r0, r0, r1
	cmp r0, #0xb0
	blt loc_812FB3E
	mov r0, #0xb0
loc_812FB3E:
	mov r1, #0x44 
	mov r2, #0
	bl sub_811AD18
	mov r0, #0xb0
	ldrh r1, [r5,#0x2e]
	sub r0, r0, r1
	cmp r0, #0x40 
	bgt loc_812FB52
	mov r0, #0x40 
loc_812FB52:
	mov r1, #0x44 
	mov r2, #1
	bl sub_811AD18
loc_812FB5A:
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r4,#8]
	mov r1, #0
	strh r1, [r4,#0xa]
	b loc_812FB86
loc_812FB66:
	bl sub_8130780
	tst r0, r0
	beq loc_812FB72
loc_812FB6E:
	mov r1, #8
	b loc_812FB7E
loc_812FB72:
	mov r0, r1
	bl sub_8120DAC
	tst r0, r0
	bne loc_812FB6E
	mov r1, #0x20 
loc_812FB7E:
	strh r1, [r5,#0x26]
	strh r1, [r4,#8]
	ldr r1, dword_812FC24 // =0xfedc 
	strh r1, [r4,#0xa]
loc_812FB86:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812FC20 // =0xffffffff 
	cmp r0, r1
	beq loc_812FC1C
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812FBA2:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812FC1C
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812FC1C
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812FC24 // =0xfedc 
	cmp r1, r2
	bne loc_812FC1C
	lsr r3, r3, #1
	add r4, #0x10
	cmp r4, r7
	ble loc_812FBA2
	tst r3, r3
	bne loc_812FC1C
	mov r0, r4
	bl sub_81325C0
	cmp r0, #8
	beq loc_812FBE0
	cmp r1, #8
	beq loc_812FBE0
	cmp r0, #0x20 
	bne loc_812FC1C
	cmp r1, #0x20 
	beq loc_812FBFE
	b loc_812FC1C
loc_812FBE0:
	bl sub_81307BC
	bne loc_812FC1C
	mov r0, #0x42 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	ldrb r0, [r5,#2]
	mov r1, #0x49 
	strb r0, [r5,r1]
	mov r0, #0x1c
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	b loc_812FC1C
loc_812FBFE:
	mov r0, #0x2c 
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	mov r2, #0x1e
	ldrh r0, [r5,#0x2a]
	ldrh r1, [r5,#0x2c]
	cmp r0, r1
	beq loc_812FC14
	mov r2, #0x1c
loc_812FC14:
	strb r2, [r5,#0x10]
	b loc_812FC1C
loc_812FC18:
	bl sub_8130424
loc_812FC1C:
	b locret_812FC1E
locret_812FC1E:
	pop {r4-r7,pc}
dword_812FC20: .word 0xFFFFFFFF
dword_812FC24: .word 0xFEDC
dword_812FC28: .word 0xFEDB
	thumb_func_end sub_812FAE4

	thumb_local_start
sub_812FC2C:
	push {lr}
	ldr r0, off_812FC3C // =off_812FC40 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812FC3C: .word off_812FC40
off_812FC40: .word sub_812AC14+1
	.word sub_812FC50+1
	.word sub_812FD10+1
	.word sub_812FDC0+1
	thumb_func_end sub_812FC2C

	thumb_local_start
sub_812FC50:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x2c]
	mov r1, r0
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	tst r0, r0
	beq loc_812FCEC
	mov r0, #0x22 
	bl sub_81377EC
	cmp r0, #3
	beq loc_812FCCC
	mov r2, #0x26 
	ldr r3, off_812FD04 // =unk_20018EC 
	strb r2, [r3,r0]
	mov r4, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r2, #0x3c 
	mul r0, r2
	add r7, r7, r0
	mov r6, #0
loc_812FC7C:
	ldrh r0, [r7,r6]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	mov r2, #1
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	add r6, #2
	cmp r6, #0x3c 
	blt loc_812FC7C
loc_812FC8E:
	ldr r6, off_812FD0C // =unk_202714C 
	bl sub_803DD60
	tst r0, r0
	beq loc_812FC9A
	ldr r6, off_812FD08 // =unk_20270EC 
loc_812FC9A:
	mov r0, #0x20 
	add r0, r0, r6
	mov r1, r7
	mov r2, #0x3c 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, #2
	bl sub_804A24C
	mov r1, r0
	mov r0, r6
	mov r2, #0x20 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r6, #0
loc_812FCB8:
	ldrh r0, [r7,r6]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	mov r2, #1
	bl sub_8021AEE
	add r6, #2
	cmp r6, #0x3c 
	blt loc_812FCB8
	b loc_812FCEC
loc_812FCCC:
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r1, [r0,#5]
	mov r4, r1
	mov r2, #0x26 
	ldr r3, off_812FD04 // =unk_20018EC 
	strb r2, [r3,r1]
	add r1, #1
	strb r1, [r0,#5]
	mov r0, r4
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	mov r2, #0x3c 
	mul r0, r2
	add r7, r7, r0
	b loc_812FC8E
loc_812FCEC:
	bl sub_803F798
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #0x3d 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #8
	strb r0, [r5,#0xc]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812FD04: .word unk_20018EC
off_812FD08: .word unk_20270EC
off_812FD0C: .word unk_202714C
	thumb_func_end sub_812FC50

	thumb_local_start
sub_812FD10:
	push {r4-r7,lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812FD42
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
locret_812FD42:
	pop {r4-r7,pc}
	thumb_func_end sub_812FD10

	thumb_local_start
sub_812FD44:
	push {lr}
	ldr r0, off_812FD58 // =off_812FD5C 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_81307F4
	pop {pc}
	.balign 4, 0x00
off_812FD58: .word off_812FD5C
off_812FD5C: .word sub_812AC14+1
	.word sub_812FD6C+1
	.word sub_812FDC0+1
	.word sub_812FE0C+1
	thumb_func_end sub_812FD44

	thumb_local_start
sub_812FD6C:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_812FD96
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812FDBE
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #2
	bne loc_812FD96
	mov r0, #0xc
	strb r0, [r5,#0xc]
	bl sub_8149644
	bl sub_8149568
	b locret_812FDBE
loc_812FD96:
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
locret_812FDBE:
	pop {pc}
	thumb_func_end sub_812FD6C

	thumb_local_start
sub_812FDC0:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812FE02
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812FDD8
	bl sub_8149644
	bl sub_8149568
loc_812FDD8:
	bl sub_8130850
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	ldr r0, off_812FE04 // =unk_20251A0 
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812FE08 // =byte_8129150 
	bl sub_80465A0 // (void *a1) -> void
locret_812FE02:
	pop {pc}
off_812FE04: .word unk_20251A0
off_812FE08: .word byte_8129150
	thumb_func_end sub_812FDC0

	thumb_local_start
sub_812FE0C:
	push {lr}
	pop {pc}
	thumb_func_end sub_812FE0C

	thumb_local_start
sub_812FE10:
	push {lr}
	bl sub_81307F4
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812FEE6
	cmp r0, #1
	bne loc_812FE24
	b locret_812FEEC
loc_812FE24:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812FE2E
	b loc_812FE3A
loc_812FE2E:
	bl sub_81325CC
	ldrh r1, [r5,#0x2a]
	strh r1, [r5,#0xa]
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812FE3A:
	mov r1, #8
	tst r4, r1
	bne locret_812FEEC
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812FF94 // =0xffffffff 
	cmp r0, r1
	beq locret_812FEEC
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812FE5C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812FEEA
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812FE70
	lsr r3, r3, #1
loc_812FE70:
	add r0, #0x10
	cmp r0, r7
	ble loc_812FE5C
	tst r3, r3
	bne loc_812FEEA
	ldrh r1, [r5,#0x26]
	cmp r1, #0x10
	bne loc_812FEB0
	bl sub_803DD60
	tst r0, r0
	beq loc_812FE9C
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812FEEA
	cmp r0, #0x10
	beq loc_812FEDA
	cmp r0, #8
	bne loc_812FEEA
	b loc_812FEDA
loc_812FE9C:
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812FEEA
	cmp r1, #0x10
	beq loc_812FEDA
	cmp r1, #8
	bne loc_812FEEA
	b loc_812FEDA
loc_812FEB0:
	cmp r1, #8
	bne loc_812FEEA
	bl sub_803DD60
	tst r0, r0
	beq loc_812FECC
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812FEEA
	cmp r1, #8
	bne loc_812FEEA
	b loc_812FEDA
loc_812FECC:
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812FEEA
	cmp r0, #8
	bne loc_812FEEA
loc_812FEDA:
	mov r0, #0x1c
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	b loc_812FEEA
loc_812FEE6:
	bl sub_8130424
loc_812FEEA:
	b locret_812FEEC
locret_812FEEC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812FE10

	thumb_local_start
sub_812FEF0:
	push {r4-r7,lr}
	mov r0, #0x13
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812FF8C
	cmp r0, #1
	beq locret_812FF92
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812FF0C
	b loc_812FF1A
loc_812FF0C:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
	mov r1, #0x80
	lsl r1, r1, #4
	strh r1, [r0,#0xa]
loc_812FF1A:
	mov r1, #8
	tst r4, r1
	bne locret_812FF92
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812FF94 // =0xffffffff 
	cmp r0, r1
	beq loc_812FF90
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812FF3C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812FF90
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812FF90
	lsr r3, r3, #1
	add r0, #0x10
	cmp r0, r7
	ble loc_812FF3C
	tst r3, r3
	bne loc_812FF90
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_812FF90
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
	ldr r1, byte_812FF98 // =0xdc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b loc_812FF90
loc_812FF8C:
	bl sub_8130424
loc_812FF90:
	b locret_812FF92
locret_812FF92:
	pop {r4-r7,pc}
dword_812FF94: .word 0xFFFFFFFF
byte_812FF98: .byte 0xDC, 0xFE, 0x0, 0x0, 0xDB, 0xFE, 0x0, 0x0
	thumb_func_end sub_812FEF0

	thumb_local_start
sub_812FFA0:
	push {r4-r7,lr}
	mov r0, r4
	ldrh r6, [r0,#0xa]
	add r0, #0x10
	ldrh r7, [r0,#0xa]
	bl sub_803DD60
	tst r0, r0
	beq loc_812FFB8
	strh r7, [r5,#0x2a]
	strh r6, [r5,#0x2c]
	b loc_812FFBC
loc_812FFB8:
	strh r6, [r5,#0x2a]
	strh r7, [r5,#0x2c]
loc_812FFBC:
	bl sub_81325CC
	ldr r1, dword_8130018 // =0xfedb 
	strh r1, [r0,#0xa]
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
	mov r0, #0x30 
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0x15]
	strb r0, [r5,#3]
	strh r0, [r5,#0x2e]
	ldrh r0, [r5,#0x2a]
	ldrh r1, [r5,#0x2c]
	cmp r0, r1
	bne locret_8130014
	cmp r0, #0
	bne locret_8130014
	ldrh r0, [r5,#0x2c]
	mov r1, #1
	bl sub_81302F4
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
	ldr r1, dword_813001C // =0xfedc 
	strh r1, [r5,#0x2a]
	strh r1, [r0,#0xa]
	b locret_8130014
locret_8130014:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8130018: .word 0xFEDB
dword_813001C: .word 0xFEDC
	thumb_func_end sub_812FFA0

/*For debugging purposes, connect comment at any range!*/
