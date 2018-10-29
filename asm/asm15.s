.include "asm/asm15.inc"

	thumb_func_start sub_807544C
sub_807544C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_80754A4 // =off_8074F30 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_8075530
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl sub_802FF4C
	bl sub_8030472
	ldr r0, off_80754A8 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_80754AC // =off_80754B0 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_80755EE
	bl sub_8034FB8
	pop {r4-r7,pc}
off_80754A4: .word off_8074F30
off_80754A8: .word unk_2037800
off_80754AC: .word off_80754B0
off_80754B0: .word dword_80754BC
	.word dword_80754C8
	.word 0x80754D2
dword_80754BC: .word 0x491C3E1C, 0x4B1C4A1C, 0xFFFF0E1C
dword_80754C8: .word 0x491C0E1C, 0x4B1C4A1C, 0x491CFFFF, 0x4B1C4A1C, 0xE1C381C
	.word 0x251C951C
	.byte 0xFF, 0xFF
	thumb_func_end sub_807544C

	thumb_func_start sub_80754E2
sub_80754E2:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_80754F0 // =off_80754F4 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
off_80754F0: .word off_80754F4
off_80754F4: .word off_8075500
	.word off_8075510
	.word off_8075520
off_8075500: .word dword_8074FCC+0x10
	.word dword_8074FCC+0x40
	.word dword_8074FCC+0x90
	.word 0xFFFFFFFF
off_8075510: .word dword_8074FCC+0x380
	.word dword_8074FCC+0x3B0
	.word dword_8074FCC+0x90
	.word 0xFFFFFFFF
off_8075520: .word dword_8074FCC+0x400
	.word dword_8074FCC+0x430
	.word dword_8074FCC+0x90
	.word 0xFFFFFFFF
	thumb_func_end sub_80754E2

	thumb_func_start sub_8075530
sub_8075530:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8075564 // =off_8075568 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sub_8001778
	ldr r0, off_8075598 // =off_807559C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8075564: .word off_8075568
off_8075568: .word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9
	.byte 0x5C 
	.byte  0
	.byte  3
	.byte  0
	.byte  8
	.byte  0
	.byte  0
	.byte 0xB5
	.byte 0x1A
	.byte  0
	.byte  8
	.byte 0xD1
	.byte 0x19
	.byte  0
	.byte  8
	.byte 0xD9
	.byte 0x5C 
	.byte  0
	.byte  3
	.byte  0
	.byte  8
	.byte  0
	.byte  0
	.byte 0xB5
	.byte 0x1A
	.byte  0
	.byte  8
	.byte 0xD1
	.byte 0x19
	.byte  0
	.byte  8
	.byte 0xD9
	.byte 0x5C 
	.byte  0
	.byte  3
	.byte  0
	.byte  8
	.byte  0
	.byte  0
off_8075598: .word off_807559C
off_807559C: .word off_80755A8
	.word off_80755A8
	.word off_80755A8
off_80755A8: .word off_8617068
	.word 0x6008020, 0x8617190, 0x1800, 0x86185C8, 0x3001960
	.word 0x20
	thumb_func_end sub_8075530

	thumb_func_start sub_80755C4
sub_80755C4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_80755D8 // =off_80755DC 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_80755D8: .word off_80755DC
off_80755DC: .word nullsub_74+1
	.word nullsub_75+1
	.word nullsub_76+1
	thumb_func_end sub_80755C4

	thumb_local_start
nullsub_74:
	mov pc, lr
	thumb_func_end nullsub_74

	thumb_local_start
nullsub_75:
	mov pc, lr
	thumb_func_end nullsub_75

	thumb_local_start
nullsub_76:
	mov pc, lr
	thumb_func_end nullsub_76

	thumb_func_start sub_80755EE
sub_80755EE:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8075604 // =off_8075608 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
	.balign 4, 0x00
off_8075604: .word off_8075608
off_8075608:
	// <endpool>
	.word dword_8075614
	thumb_func_end sub_80755EE

	.word dword_8075708
	// <endfile>
	.word dword_807575C
/*For debugging purposes, connect comment at any range!*/
