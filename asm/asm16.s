	.include "asm/asm16.inc"

	thumb_func_start sub_8077D00
sub_8077D00:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_8077D58 // =off_8077618 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_8077DE0
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
	ldr r0, off_8077D5C // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_8077D60 // =off_8077D64 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_8077E84
	bl sub_8034FB8
	pop {r4-r7,pc}
off_8077D58: .word off_8077618
off_8077D5C: .word unk_2037800
off_8077D60: .word off_8077D64
off_8077D64: .word byte_8077D6C
	.word byte_8077D78
byte_8077D6C: .byte 0x1C, 0x66, 0x1C, 0x67, 0x1C, 0x68, 0x1C, 0x6A, 0x1C
	.byte 0x1F, 0xFF, 0xFF
byte_8077D78: .byte 0x1C, 0x2B, 0x1C, 0x53, 0x1C, 0x1F, 0x1C, 0x66, 0x1C
	.byte 0x67, 0x1C, 0x68, 0x1C, 0x6A, 0x18, 0x1C, 0xFF, 0xFF
	thumb_func_end sub_8077D00

	thumb_func_start sub_8077D8A
sub_8077D8A:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8077D98 // =off_8077D9C 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
off_8077D98: .word off_8077D9C
off_8077D9C: .word off_8077DA4
	.word off_8077DC4
off_8077DA4: .word off_8077720
	.word byte_8077A10
	.word byte_8077A60
	.word byte_8077AB0
	.word byte_8077B00
	.word byte_8077B30
	.word byte_8077B70
	.word 0xFFFFFFFF
off_8077DC4: .word off_8077720
	.word byte_8077BC0
	.word byte_8077BF0
	.word byte_8077C20
	.word byte_8077C70
	.word byte_8077CC0
	.word 0xFFFFFFFF
	thumb_func_end sub_8077D8A

	thumb_func_start sub_8077DE0
sub_8077DE0:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_8077E14 // =off_8077E18 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sub_8001778
	ldr r0, off_8077E38 // =off_8077E3C 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8077E14: .word off_8077E18
off_8077E18: .word nullsub_39+1
	.word sub_80019D0+1
	.word nullsub_38+1
	.word 0x800
	.word nullsub_39+1
	.word sub_80019D0+1
	.word nullsub_38+1
	.word 0x800
off_8077E38: .word off_8077E3C
off_8077E3C: .word off_8077E44
	.word off_8077E44
off_8077E44: .word off_8617068
	.word 0x6008020
	.word dword_8617190
	.word 0x1800
	.word dword_861876C
	.word byte_3001960
	.word 0x20
	thumb_func_end sub_8077DE0

	thumb_func_start sub_8077E60
sub_8077E60:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_8077E74 // =off_8077E78 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_8077E74: .word off_8077E78
off_8077E78: .word nullsub_77+1
	.word nullsub_78+1
	thumb_func_end sub_8077E60

	thumb_local_start
nullsub_77:
	mov pc, lr
	thumb_func_end nullsub_77

	thumb_local_start
nullsub_78:
	mov pc, lr
	thumb_func_end nullsub_78

	thumb_func_start sub_8077E84
sub_8077E84:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8077E98 // =pt_8077E9C 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_8077E98: .word pt_8077E9C
pt_8077E9C:
	// <endpool> <endfile>
	.word byte_8077EA4
	.word byte_8077EF8
	thumb_func_end sub_8077E84

/*For debugging purposes, connect comment at any range!*/
