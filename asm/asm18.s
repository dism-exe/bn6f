.include "asm/asm18.inc"

.func
.thumb_func
sub_807A8E0:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_807A938 // =off_8079F74 
	ldr R1, [R7,#0x14]
	ldrb R2, [R5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr R0, [R0]
	str R0, [R1,#0x14]
	bl sub_807A9CC
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
	ldr R0, off_807A93C // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_807A940 // =off_807A944 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_807AAD6
	bl sub_8034FB8
	pop {R4-R7,pc}
off_807A938: .word off_8079F74
off_807A93C: .word unk_2037800
off_807A940: .word off_807A944
off_807A944: .word dword_807A950
	.word 0x807A95A, 0x807A964
dword_807A950: .word 0x201C1F1C, 0x791C2B1C, 0x641CFFFF, 0x951C0E1C, 0xFFFF791C
	.word 0x7F1C7E1C, 0x1F1C801C, 0x39183818, 0xFFFF3A18
.endfunc // sub_807A8E0

.func
.thumb_func
sub_807A974:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_807A984 // =off_807A988 
	ldr R0, [R0,R1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_807A984: .word off_807A988
off_807A988: .word off_807A994
	.word off_807A9A0
	.word off_807A9B8
off_807A994: .word off_807A080
	.word dword_807A084+0x2EC
	.word 0xFFFFFFFF
off_807A9A0: .word off_807A080
	.word dword_807A084+0x33C
	.word dword_807A084+0x38C
	.word dword_807A084+0x3DC
	.word dword_807A084+0x42C
	.word 0xFFFFFFFF
off_807A9B8: .word dword_807A084+0x45C
	.word dword_807A084+0x74C
	.word dword_807A084+0x77C
	.word dword_807A084+0x7CC
	.word 0xFFFFFFFF
.endfunc // sub_807A974

.func
.thumb_func
sub_807A9CC:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R1, [R5,#5]
	lsl r1, r1, #4
	ldr R7, off_807AA30 // =off_807AA34 
	add r7, r7, r1
	ldr R0, [R7]
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr R1, [R7,#0xC]
	orr R0, R1
	bl sub_8001778
	ldr R0, off_807AA64 // =off_807AA68 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	bl sub_80304E8
	pop {R4-R7,pc}
.endfunc // sub_807A9CC

	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R1, [R5,#5]
	lsl r1, r1, #4
	ldr R7, off_807AA30 // =off_807AA34 
	add r7, r7, r1
	ldr R0, [R7]
	ldr R1, [R7,#4]
	ldr R2, [R7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr R1, [R7,#0xC]
	orr R0, R1
	bl sub_8001778
	ldr R0, off_807AA64 // =off_807AA68 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	bl sub_8030540
	pop {R4-R7,pc}
off_807AA30: .word off_807AA34
off_807AA34: .word locret_8001AB4+1
	.word sub_80019D0+1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800
off_807AA64: .word off_807AA68
off_807AA68: .word off_807AA74
	.word off_807AA74
	.word off_807AA90
off_807AA74: .word off_8617068
	.word 0x6008020, 0x8617190, 0x1800, 0x8618AB4, 0x3001960
	.word 0x20
off_807AA90: .word off_8617068
	.word 0x6008020, 0x8617190, 0x1800, 0x8618C58, 0x3001960
	.word 0x20
.func
.thumb_func
sub_807AAAC:
	push {R4-R7,lr}
	mov R5, R10
	ldr R5, [R5,#0x3C]
	ldrb R6, [R5,#5]
	lsl r6, r6, #2
	ldr R7, off_807AAC0 // =off_807AAC4 
	ldr R7, [R7,R6]
	mov LR, PC
	bx r7
	pop {R4-R7,pc}
off_807AAC0: .word off_807AAC4
off_807AAC4: .word locret_807AAD0+1
	.word locret_807AAD2+1
	.word locret_807AAD4+1
.endfunc // sub_807AAAC

locret_807AAD0:
	mov PC, LR
locret_807AAD2:
	mov PC, LR
locret_807AAD4:
	mov PC, LR
.func
.thumb_func
sub_807AAD6:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_807AAEC // =pt_807AAF0 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
	.balign 4, 0x00
off_807AAEC: .word pt_807AAF0
pt_807AAF0:
	// <endpool> <endfile>
	.word dword_807AAFC
	.word dword_807AC18
	.word dword_807ACA8
.endfunc // sub_807AAD6

/*For debugging purposes, connect comment at any range!*/
