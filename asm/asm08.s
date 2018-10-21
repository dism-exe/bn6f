.include "asm/asm08.inc"

.func
.thumb_func
sub_806036C:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_80603C8 // =off_8060184 
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
	ldr R0, off_80603CC // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_80603D4 // =off_80603D8 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_806044C
	ldr R0, off_80603D0 // =off_80606BC 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	str R0, [R5,#0x64]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_80603C8: .word off_8060184
off_80603CC: .word unk_2037800
off_80603D0: .word off_80606BC
off_80603D4: .word off_80603D8
off_80603D8: .word dword_80603E8
	.word 0x80603EE, 0x80603FC, 0x80603FE
dword_80603E8: .word 0x2118131C, 0x6E1CFFFF, 0x411C581C, 0x911C901C, 0xFFFF4B1C
	.word 0x651CFFFF, 0x25182418
	.byte 0xFF, 0xFF
.endfunc // sub_806036C

.func
.thumb_func
sub_8060406:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_8060414 // =off_8060418 
	ldr R0, [R0,R1]
	bl sub_8002354
	pop {pc}
off_8060414: .word off_8060418
off_8060418: .word off_8060428
	.word off_8060430
	.word off_806043C
	.word off_8060444
off_8060428: .word off_8060284
	.word 0xFFFFFFFF
off_8060430: .word byte_80602A4
	.word byte_80602CC
	.word 0xFFFFFFFF
off_806043C: .word byte_80602FC
	.word 0xFFFFFFFF
off_8060444: .word byte_806032C
	.word 0xFFFFFFFF
.endfunc // sub_8060406

.func
.thumb_func
sub_806044C:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_8060460 // =pt_8060464 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
off_8060460: .word pt_8060464
pt_8060464:
	// <endpool> <endfile>
	.word dword_8060474
	.word dword_80604A0
	.word dword_80605E4
	.word dword_80605E8
.endfunc // sub_806044C

/*For debugging purposes, connect comment at any range!*/
