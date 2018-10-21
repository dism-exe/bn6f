.include "asm/asm05.inc"

.func
.thumb_func
sub_8052688:
	push {R4-R7,lr}
	mov R7, R10
	ldr R0, off_80526E4 // =off_8052244 
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
	ldr R0, off_80526E8 // =unk_2037800 
	bl sub_80028D4
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, off_80526F0 // =off_80526F4 
	ldr R0, [R0,R1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_80527F0
	ldr R0, off_80526EC // =off_8052EE8 
	ldrb R1, [R5,#5]
	lsl r1, r1, #2
	ldr R0, [R0,R1]
	str R0, [R5,#0x64]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_80526E4: .word off_8052244
off_80526E8: .word unk_2037800
off_80526EC: .word off_8052EE8
off_80526F0: .word off_80526F4
off_80526F4: .word byte_8052720
	.word byte_805272A
	.word byte_805272E
	.word byte_8052732
	.word byte_8052736
	.word byte_805273E
	.word byte_8052744
	.word off_8052748
	.word byte_8052754
	.word byte_805275C
	.word byte_8052760
byte_8052720: .byte 0x1C, 0x9, 0x1C, 0x10, 0x1C, 0x19, 0x1C, 0x23, 0xFF
	.byte 0xFF
byte_805272A: .byte 0x1C, 0x9, 0xFF, 0xFF
byte_805272E: .byte 0x1C, 0x9, 0xFF, 0xFF
byte_8052732: .byte 0x1C, 0x9, 0xFF, 0xFF
byte_8052736: .byte 0x1C, 0x10, 0x1C, 0x25, 0x18, 0x23, 0xFF, 0xFF
byte_805273E: .byte 0x1C, 0x10, 0x1C, 0x25, 0xFF, 0xFF
byte_8052744: .byte 0x1C, 0x2A, 0xFF, 0xFF
off_8052748: .word unk_81C241C
	.byte 0x1C
	.byte 0x10
	.byte 0x1C
	.byte 0x23 
	.byte 0x18
	.byte 0x1F
	.byte 0xFF
	.byte 0xFF
byte_8052754: .byte 0x1C, 0x43, 0x1C, 0x7A, 0x18, 0x1C, 0xFF, 0xFF
byte_805275C: .byte 0x18, 0x1F, 0xFF, 0xFF
byte_8052760: .byte 0x18, 0x24, 0xFF, 0xFF
.endfunc // sub_8052688

.func
.thumb_func
sub_8052764:
	push {lr}
	lsl r1, r1, #2
	ldr R0, off_8052774 // =off_8052778 
	ldr R0, [R0,R1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_8052774: .word off_8052778
off_8052778: .word off_80527A4
	.word off_80527AC
	.word off_80527B4
	.word off_80527BC
	.word off_80527C4
	.word off_80527CC
	.word off_80527D4
	.word off_80527DC
	.word dword_80527E4
	.word dword_80527E8
	.word dword_80527EC
off_80527A4: .word off_8052480
	.word 0xFFFFFFFF
off_80527AC: .word off_80524C0
	.word 0xFFFFFFFF
off_80527B4: .word off_8052480
	.word 0xFFFFFFFF
off_80527BC: .word off_80524C0
	.word 0xFFFFFFFF
off_80527C4: .word unk_80524E8
	.word 0xFFFFFFFF
off_80527CC: .word unk_80524E8
	.word 0xFFFFFFFF
off_80527D4: .word unk_8052510
	.word 0xFFFFFFFF
off_80527DC: .word unk_8052538
	.word 0xFFFFFFFF
dword_80527E4: .word 0xFFFFFFFF
dword_80527E8: .word 0xFFFFFFFF
dword_80527EC: .word 0xFFFFFFFF
.endfunc // sub_8052764

.func
.thumb_func
sub_80527F0:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#5]
	lsl r0, r0, #2
	ldr R1, off_8052804 // =off_8052808 
	ldr R0, [R1,R0]
	bl sub_8003570
	pop {pc}
off_8052804: .word off_8052808
off_8052808: .word dword_8052834
	.word dword_80529B4
	.word dword_8052A6C
	.word dword_8052B24
	.word dword_8052BDC
	.word dword_8052BE0
	.word dword_8052BE4
	.word dword_8052C10
	.word dword_8052D54
	.word dword_8052D80
	// <endpool> <endfile>
	.word dword_8052D84
.endfunc // sub_80527F0

/*For debugging purposes, connect comment at any range!*/
