.include "asm/asm07.inc"

.func
.thumb_func
sub_805DF08:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_805DF64 // =off_805DD24 
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
	ldr R0, off_805DF68 // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_805DF70 // =off_805DF74 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_805DFF0
	ldr R0, off_805DF6C // =off_805E1FC 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	str R0, [R5,#0x64]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_805DF64: .word off_805DD24
off_805DF68: .word unk_2037800
off_805DF6C: .word off_805E1FC
off_805DF70: .word off_805DF74
off_805DF74: .word dword_805DF88
	.word dword_805DF90
	.word dword_805DF94
	.word 0x805DF9A, 0x805DFA0
dword_805DF88: .word 0x2318131C, 0xFFFF9F1C
dword_805DF90: .word 0xFFFF591C
dword_805DF94: .word 0x601C5A1C, 0x5D1CFFFF, 0xFFFF621C
	.byte 0xFF, 0xFF
.endfunc // sub_805DF08

.func
.thumb_func
sub_805DFA2:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_805DFB0 // =off_805DFB4 
	ldr R0, [R0,R1]
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
.endfunc // sub_805DFA2

.func
.thumb_func
sub_805DFF0:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_805E004 // =pt_805E008 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
off_805E004: .word pt_805E008
pt_805E008:
	// <endpool> <endfile>
	.word dword_805E01C
	.word dword_805E084
	.word dword_805E09C
	.word dword_805E118
	.word dword_805E158
.endfunc // sub_805DFF0

/*For debugging purposes, connect comment at any range!*/
