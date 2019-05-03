	.include "asm/asm07.inc"

	thumb_func_start sub_805DF08
sub_805DF08:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_805DF64 // =off_805DD24 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
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
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_805DF68 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_805DF70 // =off_805DF74 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_805DFF0
	ldr r0, off_805DF6C // =off_805E1FC 
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#0x64]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_805DF64: .word off_805DD24
off_805DF68: .word unk_2037800
off_805DF6C: .word off_805E1FC
off_805DF70: .word off_805DF74
off_805DF74: .word byte_805DF88
	.word dword_805DF90
	.word byte_805DF94
	.word byte_805DF9A
	.word byte_805DFA0
byte_805DF88: .byte 0x1C, 0x13, 0x18, 0x23, 0x1C, 0x9F, 0xFF, 0xFF
dword_805DF90: .word 0xFFFF591C
byte_805DF94: .byte 0x1C, 0x5A, 0x1C, 0x60, 0xFF, 0xFF
byte_805DF9A: .byte 0x1C, 0x5D, 0x1C, 0x62, 0xFF, 0xFF
byte_805DFA0: .byte 0xFF, 0xFF
	thumb_func_end sub_805DF08

	thumb_func_start sub_805DFA2
sub_805DFA2:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_805DFB0 // =off_805DFB4 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
off_805DFB0: .word off_805DFB4
off_805DFB4: .word off_805DFC8
	.word off_805DFD0
	.word off_805DFD8
	.word off_805DFE0
	.word off_805DFE8
off_805DFC8: .word off_805DE28
	.word 0xFFFFFFFF
off_805DFD0: .word byte_805DE50
	.word 0xFFFFFFFF
off_805DFD8: .word byte_805DE78
	.word 0xFFFFFFFF
off_805DFE0: .word byte_805DEA8
	.word 0xFFFFFFFF
off_805DFE8: .word byte_805DED8
	.word 0xFFFFFFFF
	thumb_func_end sub_805DFA2

	thumb_func_start sub_805DFF0
sub_805DFF0:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_805E004 // =pt_805E008 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_805E004: .word pt_805E008
pt_805E008:
	// <endpool> <endfile>
	.word byte_805E01C
	.word byte_805E084
	.word byte_805E09C
	.word byte_805E118
	.word dword_805E158
	thumb_func_end sub_805DFF0

/*For debugging purposes, connect comment at any range!*/
