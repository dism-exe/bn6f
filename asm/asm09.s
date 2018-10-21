.include "asm/asm09.inc"

.func
.thumb_func
sub_8062AB0:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_8062B0C // =off_8062728 
	ldr R1, [R7,#0x14]
	ldrb R2, [R5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr R0, [R0]
	str R0, [R1,#0x14]
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	bl sub_803037C
	ldrb R0, [R5,#4]
	ldrb R1, [R5,#5]
	bl sub_8030AA4
	ldr R0, [R5,#0x24]
	ldr R1, [R5,#0x28]
	ldr R2, [R5,#0x2C]
	ldrb R3, [R5,#4]
	ldrb R4, [R5,#5]
	bl sub_802FF4C
	bl loc_8030472
	ldr R0, off_8062B10 // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_8062B18 // =off_8062B1C 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_8062BCC
	ldr R0, off_8062B14 // =off_8063008 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	str R0, [R5,#0x64]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8062B0C: .word off_8062728
off_8062B10: .word unk_2037800
off_8062B14: .word off_8063008
off_8062B18: .word off_8062B1C
off_8062B1C: .word byte_8062B34
	.word byte_8062B3E
	.word byte_8062B4A
	.word byte_8062B4E
	.word byte_8062B52
	.word byte_8062B58
byte_8062B34: .byte 0x1C, 0x70, 0x1C, 0x76, 0x1C, 0x77, 0x1C, 0x78, 0xFF
	.byte 0xFF
byte_8062B3E: .byte 0x1C, 0x8B, 0x1C, 0x8C, 0x18, 0x38, 0x18, 0x39, 0x18
	.byte 0x3A, 0xFF, 0xFF
byte_8062B4A: .byte 0x1C, 0x35, 0xFF, 0xFF
byte_8062B4E: .byte 0x1C, 0x7B, 0xFF, 0xFF
byte_8062B52: .byte 0x1C, 0x65, 0x1C, 0x20, 0xFF, 0xFF
byte_8062B58: .byte 0x1C, 0x85, 0x1C, 0x83, 0x1C, 0x84, 0x1C, 0x94, 0x1C
	.byte 0x97, 0xFF, 0xFF
.endfunc // sub_8062AB0

.func
.thumb_func
sub_8062B64:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_8062B74 // =off_8062B78 
	ldr R0, [R0,R1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_8062B74: .word off_8062B78
off_8062B78: .word off_8062B90
	.word off_8062B9C
	.word off_8062BA4
	.word off_8062BAC
	.word off_8062BB8
	.word off_8062BC4
off_8062B90: .word byte_8062860
	.word byte_80628A0
	.word 0xFFFFFFFF
off_8062B9C: .word byte_80628E0
	.word 0xFFFFFFFF
off_8062BA4: .word byte_8062908
	.word 0xFFFFFFFF
off_8062BAC: .word byte_8062958
	.word byte_80629C0
	.word 0xFFFFFFFF
off_8062BB8: .word byte_80629F0
	.word byte_8062A30
	.word 0xFFFFFFFF
off_8062BC4: .word byte_8062A70
	.word 0xFFFFFFFF
.endfunc // sub_8062B64

.func
.thumb_func
sub_8062BCC:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_8062BE0 // =pt_8062BE4 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
off_8062BE0: .word pt_8062BE4
pt_8062BE4:
	// <endpool> <endfile>
	.word dword_8062BFC
	.word dword_8062DA4
	.word dword_8062DE4
	.word dword_8062E88
	.word dword_8062EB4
	.word dword_8062F1C
.endfunc // sub_8062BCC

/*For debugging purposes, connect comment at any range!*/
