.include "asm/asm13.inc"

	thumb_func_start sub_806FC08
sub_806FC08:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806FC60 // =off_806FA98 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_806FD54
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
	ldr r0, off_806FC64 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_806FC68 // =off_806FC6C 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_806FFDA
	bl sub_8034FB8
	pop {r4-r7,pc}
off_806FC60: .word off_806FA98
off_806FC64: .word unk_2037800
off_806FC68: .word off_806FC6C
off_806FC6C: .word dword_806FCAC
	.word dword_806FCB0
	.word dword_806FCB4
	.word dword_806FCB8
	.word 0x806FCBE, 0x806FCC2, 0x806FCC8, 0x806FCD0, 0x806FCD6
	.word 0x806FCDA, 0x806FCE0, 0x806FCE4, 0x806FCE8, 0x806FCEC
	.word 0x806FCF0, 0x806FCF4
dword_806FCAC: .word 0xFFFF061C
dword_806FCB0: .word 0xFFFF061C
dword_806FCB4: .word 0xFFFF061C
dword_806FCB8: .word 0x121C061C, 0x61CFFFF, 0x61CFFFF, 0xFFFF121C, 0x121C061C
	.word 0xFFFF1B1C, 0x121C061C, 0x61CFFFF, 0x61CFFFF, 0xFFFF5518
	.word 0xFFFF061C, 0xFFFF061C, 0xFFFF061C, 0xFFFF061C, 0xFFFF061C
	.word 0xFFFF061C
	thumb_func_end sub_806FC08

	thumb_func_start sub_806FCF8
sub_806FCF8:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806FD08 // =off_806FD0C 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_806FD08: .word off_806FD0C
off_806FD0C: .word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
	.word off_806FD4C
off_806FD4C: .word byte_806D820
	.word 0xFFFFFFFF
	thumb_func_end sub_806FCF8

	thumb_func_start sub_806FD54
sub_806FD54:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806FD88 // =off_806FD8C 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sub_8001778
	ldr r0, off_806FE8C // =off_806FE90 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_806FD88: .word off_806FD8C
off_806FD8C: .word nullsub_39+1
	.word sub_80019D0+1
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1
	.byte 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A
	.byte 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0
	.byte 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3
	.byte 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9
	.byte 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19
	.byte 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0
	.byte 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0
	.byte 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0
	.byte 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C
	.byte 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0
	.byte 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8
	.byte 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5
	.byte 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8
	.byte 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0
	.byte 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8
	.byte 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A, 0x0, 0x8, 0xD1
	.byte 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0, 0x0, 0xB5, 0x1A
	.byte 0x0, 0x8, 0xD1, 0x19, 0x0, 0x8, 0xD9, 0x5C, 0x0, 0x3, 0x0, 0x8, 0x0
	.byte 0x0
off_806FE8C: .word off_806FE90
off_806FE90: .word off_806FEEC
	.word off_806FEEC
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FEEC
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
	.word off_806FED0
off_806FED0: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616760
	.word 0x3001960
	.word 0x20
off_806FEEC: .word off_8616598
	.word 0x6008020
	.word byte_8616634
	.word 0x1800
	.word byte_8616EC4
	.word 0x3001960
	.word 0x20
	thumb_func_end sub_806FD54

	thumb_func_start sub_806FF08
sub_806FF08:
	push {r4-r7,lr}
	push {r0,r1}
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8e
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	mov r1, #0x8f
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r0,r1}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806FF30 // =jt_806FF34 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_806FF30: .word jt_806FF34
jt_806FF34: .word sub_806FF76+1
	.word sub_806FF94+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word sub_806FFBC+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	.word nullsub_27+1
	thumb_func_end sub_806FF08

	thumb_local_start
nullsub_27:
	mov pc, lr
	thumb_func_end nullsub_27

	thumb_local_start
sub_806FF76:
	push {lr}
	cmp r0, #2
	bne loc_806FF82
	cmp r1, #0xa
	bne loc_806FF82
	pop {pc}
loc_806FF82:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8f
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end sub_806FF76

	thumb_local_start
sub_806FF94:
	push {lr}
	cmp r0, #3
	bne loc_806FFAA
	cmp r1, #2
	bne loc_806FFAA
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldr r0, [r1,#oGameState_Unk_3c]
	cmp r0, #0
	beq loc_806FFAA
	pop {pc}
loc_806FFAA:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8f
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end sub_806FF94

	thumb_local_start
sub_806FFBC:
	push {lr}
	cmp r0, #3
	bne loc_806FFC8
	cmp r1, #4
	bne loc_806FFC8
	pop {pc}
loc_806FFC8:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8f
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end sub_806FFBC

	thumb_func_start sub_806FFDA
sub_806FFDA:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806FFF0 // =pt_806FFF4 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
	.byte 0, 0
off_806FFF0: .word pt_806FFF4
pt_806FFF4:
	// <endpool> <endfile>
	.word byte_8070034
	.word dword_8070074
	.word dword_80700B4
	.word dword_80700CC
	.word dword_80700E4
	.word byte_80700FC
	.word dword_8070114
	.word dword_807012C
	.word dword_8070144
	.word dword_8070184
	.word dword_807019C
	.word dword_80701B4
	.word dword_80701CC
	.word dword_80701E4
	.word byte_80701FC
	.word dword_8070214
	thumb_func_end sub_806FFDA

/*For debugging purposes, connect comment at any range!*/
