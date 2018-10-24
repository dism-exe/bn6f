.include "asm/asm20.inc"

.func
.thumb_func
sub_807ECD0:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_807ED28 // =off_807EA6C 
	ldr r1, [r7,#0x14]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_807EDD4
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
	ldr r0, off_807ED2C // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_807ED30 // =off_807ED34 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_807EE92
	bl sub_8034FB8
	pop {r4-r7,pc}
off_807ED28: .word off_807EA6C
off_807ED2C: .word unk_2037800
off_807ED30: .word off_807ED34
off_807ED34: .word byte_807ED40
	.word 0x807ED4E, 0x807ED60
byte_807ED40: .byte 0x1C, 0xE, 0x1C, 0x1F, 0x1C, 0x20, 0x1C, 0x4B, 0x1C
	.byte 0x86, 0x1C, 0x8F, 0xFF, 0xFF, 0x1C, 0xE, 0x1C, 0x1F
	.byte 0x1C, 0x20, 0x1C, 0x4B, 0x1C, 0x8E, 0x1C, 0x9B, 0x1C
	.byte 0x99, 0x18, 0x5B, 0xFF, 0xFF, 0x1C, 0x9C, 0x1C, 0x9A
	.byte 0x18, 0x34, 0x18, 0x36, 0x1C, 0x99, 0xFF, 0xFF
.endfunc // sub_807ECD0

.func
.thumb_func
sub_807ED6C:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_807ED7C // =off_807ED80 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_807ED7C: .word off_807ED80
off_807ED80: .word off_807ED8C
	.word off_807EDA8
	.word off_807EDBC
off_807ED8C: .word off_807EB18
	.word dword_807EB68
	.word dword_807EBB8
	.byte  8
	.byte 0xEC
	.byte  7
	.byte  8
	.byte 0x58 
	.byte 0xEC
	.byte  7
	.byte  8
	.byte 0xA8
	.byte 0xEC
	.byte  7
	.byte  8
	.byte 0xFF
	.byte 0xFF
	.byte 0xFF
	.byte 0xFF
off_807EDA8: .word off_807EB18
	.word dword_807EB68
	.word dword_807EBB8
	.word off_807ECA8
	.word 0xFFFFFFFF
off_807EDBC: .word off_807EB18
	.word dword_807EB68
	.word dword_807EBB8
	.word off_807EC58
	.word off_807ECA8
	.word 0xFFFFFFFF
.endfunc // sub_807ED6C

.func
.thumb_func
sub_807EDD4:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldrb r1, [r5,#5]
	lsl r1, r1, #4
	ldr r7, off_807EE08 // =off_807EE0C 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sub_8001778
	ldr r0, off_807EE3C // =off_807EE40 
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_807EE08: .word off_807EE0C
off_807EE0C: .word nullsub_39+1
	.word sub_8001A46+1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x8001A47, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x8001A47, 0x3005CD9, 0x800
off_807EE3C: .word off_807EE40
off_807EE40: .word off_807EE4C
	.word off_807EE4C
	.word off_807EE4C
off_807EE4C: .word off_8619174
	.word 0x6008020, 0x8619474, 0x1800, 0x0, 0x0, 0x0
.endfunc // sub_807EDD4

.func
.thumb_func
sub_807EE68:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#0x3c]
	ldrb r6, [r5,#5]
	lsl r6, r6, #2
	ldr r7, off_807EE7C // =off_807EE80 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_807EE7C: .word off_807EE80
off_807EE80: .word nullsub_88+1
	.word nullsub_89+1
	.word nullsub_90+1
.endfunc // sub_807EE68

.func
.thumb_func
nullsub_88:
	mov pc, lr
.endfunc // nullsub_88

.func
.thumb_func
nullsub_89:
	mov pc, lr
.endfunc // nullsub_89

.func
.thumb_func
nullsub_90:
	mov pc, lr
.endfunc // nullsub_90

.func
.thumb_func
sub_807EE92:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#5]
	lsl r0, r0, #2
	ldr r1, off_807EEA8 // =pt_807EEAC 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
	.balign 4, 0x00
off_807EEA8: .word pt_807EEAC
pt_807EEAC:
	// <endpool> <endfile>
	.word dword_807EEB8
	.word dword_807EFD4
	.word dword_807F1E0
.endfunc // sub_807EE92

/*For debugging purposes, connect comment at any range!*/
