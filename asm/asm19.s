.include "asm/asm19.inc"

	thumb_func_start sub_807CDEC
sub_807CDEC:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_807CE44 // =off_807C82C 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_807CF24
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
	ldr r0, off_807CE48 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_807CE4C // =off_807CE50 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_807CFFC
	bl sub_8034FB8
	pop {r4-r7,pc}
off_807CE44: .word off_807C82C
off_807CE48: .word unk_2037800
off_807CE4C: .word off_807CE50
off_807CE50: .word dword_807CE60
	.word dword_807CE68
	.word dword_807CE7C
	.word 0x807CE8A
dword_807CE60: .word 0x721C711C, 0xFFFF5A18
dword_807CE68: .word 0x1F1C0E1C, 0x721C201C, 0x9B1C4B1C, 0x9C1C931C, 0xFFFF5B18
dword_807CE7C: .word 0x811C5F1C, 0x3818951C, 0x3A183918, 0x721CFFFF, 0xFFFF861C
	thumb_func_end sub_807CDEC

	thumb_func_start sub_807CE90
sub_807CE90:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_807CEA0 // =off_807CEA4 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.byte 0, 0
off_807CEA0: .word off_807CEA4
off_807CEA4: .word off_807CEB4
	.word off_807CED0
	.word off_807CEE4
	.word off_807CF10
off_807CEB4: .word off_807C94C
	.word off_807C974
	.word dword_807C978+0x8C
	.word dword_807C978+0xDC
	.word dword_807C978+0x12C
	.word dword_807C978+0x154
	.word 0xFFFFFFFF
off_807CED0: .word off_807C94C
	.word off_807C974
	.word dword_807C978+0x8C
	.word dword_807C978+0xDC
	.word 0xFFFFFFFF
off_807CEE4: .word off_807C94C
	.word off_807C974
	.word dword_807C978+0x1A4
	.word dword_807C978+0x1F4
	.word dword_807C978+0x244
	.word dword_807C978+0x294
	.word dword_807C978+0x2BC
	.word dword_807C978+0x2E4
	.word dword_807C978+0x334
	.word dword_807C978+0x384
	.word 0xFFFFFFFF
off_807CF10: .word off_807C94C
	.word off_807C974
	.word dword_807C978+0x3D4
	.word dword_807C978+0x424
	.word 0xFFFFFFFF
	thumb_func_end sub_807CE90

	thumb_func_start sub_807CF24
sub_807CF24:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_807CF58 // =off_807CF5C 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sub_8001778
	ldr r0, off_807CF9C // =off_807CFA0 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_807CF58: .word off_807CF5C
off_807CF5C: .word nullsub_39+1
	.word nullsub_36+1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019B3, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x80019B3, 0x3005CD9, 0x800
	.word 0x8001AB5, 0x80019B3, 0x3005CD9, 0x800
off_807CF9C: .word off_807CFA0
off_807CFA0: .word off_807CFB0
	.word off_807CFB0
	.word off_807CFB0
	.word off_807CFB0
off_807CFB0: .word dword_8618DFC
	.word 0x6008020, 0x8618E40, 0x1800, 0x8618F50, 0x3001960
	.word 0x20
	thumb_func_end sub_807CF24

	thumb_func_start sub_807CFCC
sub_807CFCC:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_807CFE0 // =off_807CFE4 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_807CFE0: .word off_807CFE4
off_807CFE4: .word nullsub_84+1
	.word nullsub_85+1
	.word nullsub_86+1
	.word nullsub_87+1
	thumb_func_end sub_807CFCC

	thumb_local_start
nullsub_84:
	mov pc, lr
	thumb_func_end nullsub_84

	thumb_local_start
nullsub_85:
	mov pc, lr
	thumb_func_end nullsub_85

	thumb_local_start
nullsub_86:
	mov pc, lr
	thumb_func_end nullsub_86

	thumb_local_start
nullsub_87:
	mov pc, lr
	thumb_func_end nullsub_87

	thumb_func_start sub_807CFFC
sub_807CFFC:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_807D010 // =pt_807D014 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
off_807D010: .word pt_807D014
pt_807D014:
	// <endpool> <endfile>
	.word dword_807D024
	.word dword_807D0B4
	.word dword_807D1A8
	.word dword_807D210
	thumb_func_end sub_807CFFC

/*For debugging purposes, connect comment at any range!*/
