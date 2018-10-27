.include "asm/asm04.inc"

thumb_func_start sub_804E62C
sub_804E62C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_804E688 // =off_804E38C 
	ldr r1, [r7,#0x14] // Toolkit.unk_2011BB0
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
	bl sub_802FF4C
	bl sub_8030472
	ldr r0, off_804E68C // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_804E694 // =off_804E698 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_804E720
	ldr r0, off_804E690 // =off_804E9CC 
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#0x64]
	pop {r4-r7,pc}
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
thumb_func_end sub_804E62C

thumb_func_start sub_804E6D0
sub_804E6D0:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_804E6E0 // =off_804E6E4 
	ldr r0, [r0,r1]
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
off_804E70C: .word byte_804E5D4
	.word 0xFFFFFFFF
dword_804E714: .word 0xFFFFFFFF
off_804E718: .word dword_804E604
	.word 0xFFFFFFFF
thumb_func_end sub_804E6D0

thumb_func_start sub_804E720
sub_804E720:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#5]
	lsl r0, r0, #2
	ldr r1, off_804E734 // =off_804E738 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
off_804E734: .word off_804E738
off_804E738:
	// <endpool>
	.word byte_804E74C
thumb_func_end sub_804E720

	.word byte_804E87C
	.word byte_804E8D0
	.word byte_804E8D4
	// <endfile>
	.word byte_804E8D8
/*For debugging purposes, connect comment at any range!*/
