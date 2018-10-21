.include "asm/asm16.inc"

.func
.thumb_func
sub_8077D00:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_8077D58 // =off_8077618 
	ldr R1, [R7,#0x14]
	ldrb R2, [R5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr R0, [R0]
	str R0, [R1,#0x14]
	bl sub_8077DE0
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
	ldr R0, off_8077D5C // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_8077D60 // =off_8077D64 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_8077E84
	bl sub_8034FB8
	pop {R4-R7,pc}
off_8077D58: .word off_8077618
off_8077D5C: .word unk_2037800
off_8077D60: .word off_8077D64
off_8077D64: .word dword_8077D6C
	.word dword_8077D78
dword_8077D6C: .word 0x671C661C, 0x6A1C681C, 0xFFFF1F1C
dword_8077D78: .word 0x531C2B1C, 0x661C1F1C, 0x681C671C, 0x1C186A1C
	.byte 0xFF, 0xFF
.endfunc // sub_8077D00

.func
.thumb_func
sub_8077D8A:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_8077D98 // =off_8077D9C 
	ldr R0, [R0,R1]
	bl sub_8002354
	pop {pc}
off_8077D98: .word off_8077D9C
off_8077D9C: .word off_8077DA4
	.word off_8077DC4
off_8077DA4: .word off_8077720
	.word dword_8077724+0x2EC
	.word dword_8077724+0x33C
	.word dword_8077724+0x38C
	.word dword_8077724+0x3DC
	.word dword_8077724+0x40C
	.word dword_8077724+0x44C
	.word 0xFFFFFFFF
off_8077DC4: .word off_8077720
	.word dword_8077724+0x49C
	.word dword_8077724+0x4CC
	.word dword_8077724+0x4FC
	.word dword_8077724+0x54C
	.word dword_8077724+0x59C
	.word 0xFFFFFFFF
.endfunc // sub_8077D8A

.func
.thumb_func
sub_8077DE0:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R1, [R5,#5]
	lsl r1, r1, #4
	ldr R7, off_8077E14 // =off_8077E18 
	add r7, r7, r1
	ldr R0, [R7]
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr R1, [R7,#0xC]
	orr R0, R1
	bl sub_8001778
	ldr R0, off_8077E38 // =off_8077E3C 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	bl sub_80304E8
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8077E14: .word off_8077E18
off_8077E18: .word locret_8001AB4+1
	.word sub_80019D0+1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
	.word 0x800
off_8077E38: .word off_8077E3C
off_8077E3C: .word off_8077E44
	.word off_8077E44
off_8077E44: .word off_8617068
	.word 0x6008020, 0x8617190, 0x1800, 0x861876C, 0x3001960
	.word 0x20
.endfunc // sub_8077DE0

.func
.thumb_func
sub_8077E60:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R6, [R5,#5]
	lsl r6, r6, #2
	ldr R7, off_8077E74 // =off_8077E78 
	ldr R7, [R7,R6]
	mov LR, PC
	bx r7
	pop {R4-R7,pc}
off_8077E74: .word off_8077E78
off_8077E78: .word locret_8077E80+1
	.word locret_8077E82+1
.endfunc // sub_8077E60

locret_8077E80:
	mov PC, LR
locret_8077E82:
	mov PC, LR
.func
.thumb_func
sub_8077E84:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_8077E98 // =pt_8077E9C 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
off_8077E98: .word pt_8077E9C
pt_8077E9C:
	// <endpool> <endfile>
	.word dword_8077EA4
	.word dword_8077EF8
.endfunc // sub_8077E84

/*For debugging purposes, connect comment at any range!*/
