.include "asm/asm04.inc"

.func
.thumb_func
sub_804E62C:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_804E688 // =off_804E38C 
	ldr R1, [R7,#0x14] // Toolkit.unk_2011BB0
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
	ldr R0, off_804E68C // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_804E694 // =off_804E698 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_804E720
	ldr R0, off_804E690 // =off_804E9CC 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	str R0, [R5,#0x64]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_804E688: .word off_804E38C
off_804E68C: .word unk_2037800
off_804E690: .word off_804E9CC
off_804E694: .word off_804E698
off_804E698: .word byte_804E6AC
	.word byte_804E6BE
	.word byte_804E6C2
	.word byte_804E6C6
	.word byte_804E6C8
byte_804E6AC: .byte 0x1C, 0x11, 0x1C, 0x15, 0x1C, 0x16, 0x1C, 0x51, 0x1C
	.byte 0x13, 0x18, 0x24, 0x18, 0x25, 0x18, 0x1C, 0xFF, 0xFF
byte_804E6BE: .byte 0x1C, 0x7, 0xFF, 0xFF
byte_804E6C2: .byte 0x1C, 0x14, 0xFF, 0xFF
byte_804E6C6: .byte 0xFF, 0xFF
byte_804E6C8: .byte 0x1C, 0x96, 0x1C, 0x9D, 0x18, 0x1C, 0xFF, 0xFF
.endfunc // sub_804E62C

.func
.thumb_func
sub_804E6D0:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_804E6E0 // =off_804E6E4 
	ldr R0, [R0,R1]
	bl sub_8002354
	pop {pc}
	.byte 0, 0
off_804E6E0: .word off_804E6E4
off_804E6E4: .word dword_804E6F8
	.word off_804E6FC
	.word off_804E70C
	.word dword_804E714
	.word off_804E718
dword_804E6F8: .word 0xFFFFFFFF
off_804E6FC: .word off_804E450
	.word off_804E478
	.word off_804E4A0
	.word 0xFFFFFFFF
off_804E70C: .word unk_804E5D4
	.word 0xFFFFFFFF
dword_804E714: .word 0xFFFFFFFF
off_804E718: .word dword_804E604
	.word 0xFFFFFFFF
.endfunc // sub_804E6D0

.func
.thumb_func
sub_804E720:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_804E734 // =off_804E738 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
off_804E734: .word off_804E738
off_804E738:
	// <endpool>
	.word byte_804E74C
.endfunc // sub_804E720

	.word unk_804E87C
	.word unk_804E8D0
	.word unk_804E8D4
	// <endfile>
	.word unk_804E8D8
/*For debugging purposes, connect comment at any range!*/
