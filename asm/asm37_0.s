	.include "asm/asm37_0.inc"

	thumb_func_start sub_813B768
sub_813B768:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	mov r1, #0
	strh r1, [r0]
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200431c_Ptr]
	mov r1, #0x10
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_813B768

	thumb_func_start sub_813B780
sub_813B780:
	ldr r1, off_813B78C // =StructArr_813944C
	mov r2, #0x10
	mul r0, r2
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_813B78C: .word StructArr_813944C
	thumb_func_end sub_813B780

	thumb_local_start
sub_813B790:
	push {lr}
	ldr r1, off_813B79C // =byte_20096D8 
	ldrb r1, [r1]
	bl sub_813B7A0
	pop {pc}
off_813B79C: .word byte_20096D8
	thumb_func_end sub_813B790

	thumb_func_start sub_813B7A0
sub_813B7A0:
	push {r4,r6,r7,lr}
	mov r6, r1
	mov r4, r0
	bl sub_813B780
	mov r7, r0
	mov r2, #8
	ldr r1, dword_813B7E8 // =0x2660 
	add r1, r1, r4
	mov r0, r1
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813B7BC
	mov r2, #0xc
loc_813B7BC:
	ldr r7, [r7,r2]
	ldr r4, off_813B7E4 // =unk_2009F00 
	ldr r0, off_813B7D0 // =off_813B7D4 
	lsl r1, r6, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, r4
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_813B7D0: .word off_813B7D4
off_813B7D4: .word sub_813B7EC+1
	.word sub_813B7FC+1
	.word sub_813B818+1
	.word sub_813B830+1
off_813B7E4: .word unk_2009F00
dword_813B7E8: .word 0x2660
	thumb_func_end sub_813B7A0

	thumb_local_start
sub_813B7EC:
	push {lr}
	mov r0, r7
	mov r1, r4
	mov r2, #0x31 
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813B7EC

	thumb_local_start
sub_813B7FC:
	push {r5,r6,lr}
	mov r5, #6
loc_813B800:
	mov r6, #0
loc_813B802:
	add r3, r5, r6
	ldrb r0, [r7]
	strb r0, [r4,r3]
	add r7, #1
	add r6, #7
	cmp r6, #0x31 
	blt loc_813B802
	sub r5, #1
	bge loc_813B800
	pop {r5,r6,pc}
	.balign 4, 0x00
	thumb_func_end sub_813B7FC

	thumb_local_start
sub_813B818:
	push {r5,r6,lr}
	mov r5, #0x2a 
loc_813B81C:
	mov r6, #6
loc_813B81E:
	add r3, r5, r6
	ldrb r0, [r7]
	strb r0, [r4,r3]
	add r7, #1
	sub r6, #1
	bge loc_813B81E
	sub r5, #7
	bge loc_813B81C
	pop {r5,r6,pc}
	thumb_func_end sub_813B818

	thumb_local_start
sub_813B830:
	push {r5,r6,lr}
	mov r5, #0
loc_813B834:
	mov r6, #0x2a 
loc_813B836:
	add r3, r5, r6
	ldrb r0, [r7]
	strb r0, [r4,r3]
	add r7, #1
	sub r6, #7
	bge loc_813B836
	add r5, #1
	cmp r5, #7
	blt loc_813B834
	pop {r5,r6,pc}
	.balign 4, 0x00
	thumb_func_end sub_813B830

	thumb_func_start sub_813B84C
sub_813B84C:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	bl sub_813B790
	mov r7, r0
	str r7, [sp]
	mov r1, #0
	mov r4, #7
loc_813B85C:
	mov r0, #0
	mov r2, #0
	mov r6, #0
loc_813B862:
	ldrb r3, [r7,r0]
	tst r3, r3
	beq loc_813B86A
	mov r6, #1
loc_813B86A:
	tst r6, r6
	bne loc_813B870
	add r2, #1
loc_813B870:
	add r0, #1
	cmp r0, #7
	blt loc_813B862
	cmp r2, r4
	bgt loc_813B87C
	mov r4, r2
loc_813B87C:
	add r7, #7
	add r1, #1
	cmp r1, #7
	blt loc_813B85C
	str r4, [sp,#4]
	ldr r7, [sp]
	mov r1, #0
	mov r4, #7
loc_813B88C:
	mov r0, #6
	mov r2, #0
	mov r6, #0
loc_813B892:
	ldrb r3, [r7,r0]
	tst r3, r3
	beq loc_813B89A
	mov r6, #1
loc_813B89A:
	tst r6, r6
	bne loc_813B8A0
	add r2, #1
loc_813B8A0:
	sub r0, #1
	bge loc_813B892
	cmp r2, r4
	bgt loc_813B8AA
	mov r4, r2
loc_813B8AA:
	add r7, #7
	add r1, #1
	cmp r1, #7
	blt loc_813B88C
	str r4, [sp,#8]
	ldr r7, [sp]
	mov r1, #0
	mov r4, #7
loc_813B8BA:
	mov r0, #0
	mov r2, #0
	mov r6, #0
loc_813B8C0:
	ldrb r3, [r7,r0]
	tst r3, r3
	beq loc_813B8C8
	mov r6, #1
loc_813B8C8:
	tst r6, r6
	bne loc_813B8CE
	add r2, #1
loc_813B8CE:
	add r0, #7
	cmp r0, #0x31 
	blt loc_813B8C0
	cmp r2, r4
	bgt loc_813B8DA
	mov r4, r2
loc_813B8DA:
	add r7, #1
	add r1, #1
	cmp r1, #7
	blt loc_813B8BA
	str r4, [sp,#0xc]
	ldr r7, [sp]
	mov r1, #0
	mov r4, #7
loc_813B8EA:
	mov r0, #0x2a 
	mov r2, #0
	mov r6, #0
loc_813B8F0:
	ldrb r3, [r7,r0]
	tst r3, r3
	beq loc_813B8F8
	mov r6, #1
loc_813B8F8:
	tst r6, r6
	bne loc_813B8FE
	add r2, #1
loc_813B8FE:
	sub r0, #7
	bge loc_813B8F0
	cmp r2, r4
	bgt loc_813B908
	mov r4, r2
loc_813B908:
	add r7, #1
	add r1, #1
	cmp r1, #7
	blt loc_813B8EA
	str r4, [sp,#0x10]
	ldr r0, [sp,#4]
	ldr r1, [sp,#8]
	ldr r2, [sp,#0xc]
	ldr r3, [sp,#0x10]
	add sp, sp, #0x14
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_813B84C

	thumb_func_start sub_813B920
sub_813B920:
	ldr r1, off_813B930 // =byte_20096D8 
	strb r0, [r1]
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_813B920

	thumb_func_start sub_813B928
sub_813B928:
	ldr r1, off_813B930 // =byte_20096D8 
	ldrb r0, [r1]
	mov pc, lr
	.byte 0, 0
off_813B930: .word byte_20096D8
	thumb_func_end sub_813B928

	thumb_func_start zeroFill_813B934
zeroFill_813B934:
	push {lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_Unk2004190_Ptr]
	// size
	ldr r1, off_813B94C // =0x188 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_Unk200414c_Ptr]
	// size
	mov r1, #0x40 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
off_813B94C: .word 0x188
	thumb_func_end zeroFill_813B934

	thumb_func_start sub_813B950
sub_813B950:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	add r0, #1
	str r0, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	mov r0, r1
	bl sub_813B790
	mov r7, r0
	ldr r0, [sp]
	ldr r1, [sp,#4]
	sub r1, #3
	ldr r2, [sp,#8]
	sub r2, #3
	mov r3, #7
	mul r3, r2
	add r3, r3, r1
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200414c_Ptr]
	add r6, r6, r3
	mov r5, #0
loc_813B97C:
	mov r3, #0
	str r1, [sp,#4]
	cmp r2, #0
	blt loc_813B9A0
	cmp r2, #7
	bge loc_813B9A0
loc_813B988:
	cmp r1, #0
	blt loc_813B998
	cmp r1, #7
	bge loc_813B998
	ldrb r4, [r7,r3]
	tst r4, r4
	beq loc_813B998
	strb r0, [r6,r3]
loc_813B998:
	add r1, #1
	add r3, #1
	cmp r3, #7
	blt loc_813B988
loc_813B9A0:
	ldr r1, [sp,#4]
	add r6, #7
	add r7, #7
	add r2, #1
	add r5, #1
	cmp r5, #7
	blt loc_813B97C
	add sp, sp, #0x10
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813B950

	thumb_func_start sub_813B9B4
sub_813B9B4:
	mov r3, r10
	ldr r3, [r3,#oToolkit_Unk200414c_Ptr]
	mov r2, #7
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r3,r0]
	tst r0, r0
	mov pc, lr
	thumb_func_end sub_813B9B4

	thumb_func_start sub_813B9C4
sub_813B9C4:
	push {lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_Unk200414c_Ptr]
	mov r1, #0
	add r0, #1
loc_813B9CE:
	ldrb r2, [r3,r1]
	cmp r2, r0
	bne loc_813B9D8
	mov r2, #0
	strb r2, [r3,r1]
loc_813B9D8:
	add r1, #1
	cmp r1, #0x31 
	blt loc_813B9CE
	pop {pc}
	thumb_func_end sub_813B9C4

	thumb_func_start sub_813B9E0
sub_813B9E0:
	push {lr}
	ldr r1, off_813B9EC // =off_813B9F0 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	pop {pc}
	.balign 4, 0x00
off_813B9EC: .word off_813B9F0
off_813B9F0: .word byte_813B1EC
	.word byte_813B2CD
	.word byte_813B3AE
	thumb_func_end sub_813B9E0

	thumb_func_start sub_813B9FC
sub_813B9FC:
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2004190_Ptr]
	mov r2, #8
	mul r0, r2
	add r0, r0, r1
	mov pc, lr
	thumb_func_end sub_813B9FC

	thumb_func_start sub_813BA08
sub_813BA08:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	str r4, [sp,#0x10]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2004190_Ptr]
	mov r1, #0
loc_813BA1C:
	ldrh r0, [r7]
	tst r0, r0
	bne loc_813BA3A
	ldr r2, [sp]
	strh r2, [r7]
	ldr r2, [sp,#4]
	strb r2, [r7,#3]
	ldr r2, [sp,#8]
	strb r2, [r7,#4]
	ldr r2, [sp,#0xc]
	strb r2, [r7,#5]
	ldr r2, [sp,#0x10]
	strb r2, [r7,#6]
	mov r0, r1
	b loc_813BA42
loc_813BA3A:
	add r7, #8
	add r1, #1
	cmp r1, #0x31 
	blt loc_813BA1C
loc_813BA42:
	add sp, sp, #0x14
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813BA08

	thumb_func_start sub_813BA48
sub_813BA48:
	push {lr}
	mov r3, r10
	ldr r3, [r3,#oToolkit_Unk2004190_Ptr]
	mov r1, #8
	mul r0, r1
	add r3, r3, r0
	mov r0, #0
	strh r0, [r3]
	strb r0, [r3,#3]
	strb r0, [r3,#4]
	strb r0, [r3,#5]
	strb r0, [r3,#6]
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813BA48

	thumb_func_start sub_813BA64
sub_813BA64:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200414c_Ptr]
	ldr r1, off_813BA9C // =eTextScript201BA00
	mov r2, #0x40 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004190_Ptr]
	ldr r1, off_813BAA0 // =byte_201BA40
	ldr r2, off_813BAA4 // =0x188 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	thumb_func_end sub_813BA64

	thumb_func_start sub_813BA80
sub_813BA80:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk200414c_Ptr]
	ldr r0, off_813BA9C // =eTextScript201BA00
	mov r2, #0x40 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2004190_Ptr]
	ldr r0, off_813BAA0 // =byte_201BA40
	ldr r2, off_813BAA4 // =0x188 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
off_813BA9C: .word eTextScript201BA00
off_813BAA0: .word byte_201BA40
off_813BAA4: .word 0x188
	thumb_func_end sub_813BA80

	thumb_func_start sub_813BAA8
sub_813BAA8:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200414c_Ptr]
	ldr r1, off_813BAE0 // =byte_201BC40
	mov r2, #0x40 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004190_Ptr]
	ldr r1, off_813BAE4 // =byte_201BC80
	ldr r2, off_813BAE8 // =0x188 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	thumb_func_end sub_813BAA8

	thumb_func_start sub_813BAC4
sub_813BAC4:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk200414c_Ptr]
	ldr r0, off_813BAE0 // =byte_201BC40
	mov r2, #0x40 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2004190_Ptr]
	ldr r0, off_813BAE4 // =byte_201BC80
	ldr r2, off_813BAE8 // =0x188 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
off_813BAE0: .word byte_201BC40
off_813BAE4: .word byte_201BC80
off_813BAE8: .word 0x188
	thumb_func_end sub_813BAC4

	thumb_func_start sub_813BAEC
sub_813BAEC:
	push {lr}
	push {r0-r3}
	bl sub_813BB00
	pop {r0-r3}
	bne loc_813BAFC
	bl sub_813BB68
loc_813BAFC:
	tst r0, r0
	pop {pc}
	thumb_func_end sub_813BAEC

	thumb_local_start
sub_813BB00:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	mov r1, #1
	str r1, [sp,#0x10]
	bl sub_813B790
	mov r7, r0
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	ldr r3, [sp,#0xc]
	sub r2, #3
	add r2, #5
	add r1, r1, r2
	sub r3, #3
	add r3, #5
	mov r2, #0xf
	mul r3, r2
	add r1, r1, r3
	mov r2, #0
	mov r0, #1
loc_813BB30:
	mov r3, #0
loc_813BB32:
	ldrb r4, [r7,r3]
	tst r4, r4
	beq loc_813BB46
	ldrb r5, [r1,r3]
	tst r5, r5
	beq loc_813BB58
	cmp r5, #3
	beq loc_813BB46
	mov r5, #0
	str r5, [sp,#0x10]
loc_813BB46:
	add r3, #1
	cmp r3, #7
	blt loc_813BB32
	add r7, #7
	add r1, #0xf
	add r2, #1
	cmp r2, #7
	blt loc_813BB30
	mov r0, #0
loc_813BB58:
	ldr r1, [sp,#0x10]
	tst r1, r1
	beq loc_813BB60
	mov r0, #1
loc_813BB60:
	add sp, sp, #0x14
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813BB00

	thumb_func_start sub_813BB68
sub_813BB68:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	bl sub_813B790
	mov r7, r0
	ldr r1, [sp,#8]
	ldr r2, [sp,#0xc]
	sub r1, #3
	str r1, [sp,#0x10]
	sub r2, #3
	mov r3, #7
	mul r3, r2
	add r3, r3, r1
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200414c_Ptr]
	add r6, r6, r3
	mov r5, #0
loc_813BB92:
	ldr r1, [sp,#0x10]
	mov r3, #0
	cmp r2, #0
	blt loc_813BBC0
	cmp r2, #7
	bge loc_813BBC0
loc_813BB9E:
	cmp r1, #0
	blt loc_813BBB8
	cmp r1, #7
	bge loc_813BBB8
	ldrb r4, [r7,r3]
	tst r4, r4
	beq loc_813BBB8
	ldrb r0, [r6,r3]
	tst r0, r0
	beq loc_813BBB8
	mov r1, r0
	mov r0, #1
	b loc_813BBCE
loc_813BBB8:
	add r1, #1
	add r3, #1
	cmp r3, #7
	blt loc_813BB9E
loc_813BBC0:
	add r6, #7
	add r7, #7
	add r2, #1
	add r5, #1
	cmp r5, #7
	blt loc_813BB92
	mov r0, #0
loc_813BBCE:
	add sp, sp, #0x14
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813BB68

	thumb_func_start sub_813BBD4
sub_813BBD4:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200431c_Ptr]
	mov r7, r0
	mov r1, #0x10
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r0, off_813BD18 // =unk_2006CF8 
	mov r1, #0x31 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r0, off_813BD1C // =unk_2006C88 
	mov r1, #0x31 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r0, off_813BD20 // =unk_2006CC0 
	mov r1, #0x31 
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r0, r7
	bl sub_813BC1C
	mov r0, r7
	bl sub_813BC98
	bl sub_813BD24
	bl sub_813BE8C
	bl sub_813BEA8
	mov r0, r7
	bl sub_813C584
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813BBD4

	thumb_local_start
sub_813BC1C:
	push {r4-r7,lr}
	sub sp, sp, #0x24
	str r0, [sp,#0x1c]
	mov r0, #0xff
	str r0, [sp]
	str r0, [sp,#4]
	str r0, [sp,#8]
	str r0, [sp,#0xc]
	str r0, [sp,#0x10]
	str r0, [sp,#0x14]
	str r0, [sp,#0x18]
	mov r6, #6
	mov r5, #0
loc_813BC36:
	mov r0, r6
	mov r1, #3
	bl sub_813B9B4
	mov r1, sp
	add r1, r1, r5
	str r1, [sp,#0x20]
	mov r4, #0
loc_813BC46:
	mov r2, sp
	add r2, r2, r4
	ldr r2, [r2]
	cmp r0, r2
	beq loc_813BC8E
	add r4, #4
	cmp r4, #0x1c
	blt loc_813BC46
	tst r0, r0
	beq loc_813BC8E
	str r0, [r1]
	sub r0, #1
	bl sub_813B9FC
	ldrh r0, [r0]
	tst r0, r0
	beq loc_813BC8E
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#1]
	cmp r0, #2
	beq loc_813BC82
	cmp r0, #1
	bne loc_813BC86
	ldr r0, [sp,#0x1c]
	ldrb r1, [r7,#4]
	ldrb r2, [r0,r1]
	add r2, #1
	strb r2, [r0,r1]
loc_813BC82:
	ldr r7, off_813BD20 // =unk_2006CC0 
	b loc_813BC88
loc_813BC86:
	ldr r7, off_813BD18 // =unk_2006CF8 
loc_813BC88:
	ldr r1, [sp,#0x20]
	ldr r0, [r1]
	strb r0, [r7,r6]
loc_813BC8E:
	add r5, #4
	sub r6, #1
	bge loc_813BC36
	add sp, sp, #0x24
	pop {r4-r7,pc}
	thumb_func_end sub_813BC1C

	thumb_local_start
sub_813BC98:
	push {r4-r7,lr}
	sub sp, sp, #0x20
	str r0, [sp,#0x1c]
	mov r6, #0
	mov r5, #0
loc_813BCA2:
	mov r0, r6
	mov r1, #3
	bl sub_813B9B4
	mov r1, sp
	add r1, r1, r5
	sub r0, #1
	str r0, [r1]
	add r5, #4
	add r6, #1
	cmp r6, #7
	blt loc_813BCA2
	mov r6, #0
loc_813BCBC:
	mov r0, r6
	mov r4, #0
loc_813BCC0:
	mov r2, sp
	add r2, r2, r4
	ldr r2, [r2]
	cmp r0, r2
	beq loc_813BD02
	add r4, #4
	cmp r4, #0x1c
	blt loc_813BCC0
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BD02
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#1]
	cmp r0, #2
	beq loc_813BCF8
	cmp r0, #0
	bne loc_813BCF8
	ldr r0, [sp,#0x1c]
	ldrb r1, [r7,#4]
	ldrb r2, [r0,r1]
	add r2, #1
	strb r2, [r0,r1]
	b loc_813BD02
loc_813BCF8:
	ldr r7, off_813BD1C // =unk_2006C88 
	add r7, r7, r6
	add r6, #1
	strb r6, [r7]
	sub r6, #1
loc_813BD02:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813BCBC
	add sp, sp, #0x20
	pop {r4-r7,pc}
	thumb_func_end sub_813BC98

	thumb_local_start
sub_813BD0C:
	ldr r7, off_813BD18 // =unk_2006CF8 
	mov pc, lr
	thumb_func_end sub_813BD0C

	thumb_local_start
sub_813BD10:
	ldr r7, off_813BD1C // =unk_2006C88 
	mov pc, lr
	thumb_func_end sub_813BD10

	thumb_local_start
sub_813BD14:
	ldr r7, off_813BD20 // =unk_2006CC0 
	mov pc, lr
off_813BD18: .word unk_2006CF8
off_813BD1C: .word unk_2006C88
off_813BD20: .word unk_2006CC0
	thumb_func_end sub_813BD14

	thumb_local_start
sub_813BD24:
	push {r4-r7,lr}
	mov r0, r8
	push {r0}
	mov r6, #0
loc_813BD2C:
	ldr r0, off_813BE88 // =byte_2006C50 
	mov r1, #0x31 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r0, off_813BE88 // =byte_2006C50 
	mov r8, r0
	mov r0, r6
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BD82
	ldrb r1, [r7,#3]
	sub r1, #1
	ldrb r2, [r7,#4]
	ldrb r3, [r7,#5]
	bl sub_813BD90
	ldrh r0, [r7]
	ldrb r1, [r7,#3]
	add r1, #1
	ldrb r2, [r7,#4]
	ldrb r3, [r7,#5]
	bl sub_813BD90
	ldrh r0, [r7]
	ldrb r1, [r7,#3]
	ldrb r2, [r7,#4]
	sub r2, #1
	ldrb r3, [r7,#5]
	bl sub_813BD90
	ldrh r0, [r7]
	ldrb r1, [r7,#3]
	ldrb r2, [r7,#4]
	add r2, #1
	ldrb r3, [r7,#5]
	bl sub_813BD90
	ldrh r0, [r7]
	bl sub_813BE38
loc_813BD82:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813BD2C
	pop {r0}
	mov r8, r0
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_813BD24

	thumb_local_start
sub_813BD90:
	push {r4-r7,lr}
	sub sp, sp, #0x20
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	add r6, #1
	str r6, [sp,#0xc]
	mov r0, r8
	str r0, [sp,#0x10]
	mov r0, #0
	str r0, [sp,#0x14]
	ldr r0, [sp]
	mov r1, r3
	bl sub_813B7A0
	mov r7, r0
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	sub r1, #3
	sub r2, #3
	mov r3, #7
	mul r3, r2
	add r3, r3, r1
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200414c_Ptr]
	add r6, r6, r3
	mov r5, #0
loc_813BDC6:
	mov r3, #0
	str r1, [sp,#0x18]
	str r5, [sp,#0x1c]
	cmp r2, #0
	blt loc_813BE1E
	cmp r2, #7
	bge loc_813BE1E
loc_813BDD4:
	cmp r1, #0
	blt loc_813BE16
	cmp r1, #7
	bge loc_813BE16
	ldrb r4, [r7,r3]
	tst r4, r4
	beq loc_813BE16
	ldrb r0, [r6,r3]
	tst r0, r0
	beq loc_813BE16
	str r1, [sp,#0x14]
	mov r1, #0
	ldr r4, off_813BE88 // =byte_2006C50 
	ldr r5, [sp,#0xc]
	cmp r5, r0
	beq loc_813BE14
loc_813BDF4:
	ldrb r5, [r4]
	cmp r5, r0
	beq loc_813BE14
	add r4, #1
	add r1, #1
	cmp r1, #0x31 
	blt loc_813BDF4
	ldr r1, [sp,#0x14]
	bl sub_813C624
	tst r1, r1
	bne loc_813BE14
	ldr r4, [sp,#0x10]
	strb r0, [r4]
	add r4, #1
	str r4, [sp,#0x10]
loc_813BE14:
	ldr r1, [sp,#0x14]
loc_813BE16:
	add r1, #1
	add r3, #1
	cmp r3, #7
	blt loc_813BDD4
loc_813BE1E:
	ldr r1, [sp,#0x18]
	ldr r5, [sp,#0x1c]
	add r6, #7
	add r7, #7
	add r2, #1
	add r5, #1
	cmp r5, #7
	blt loc_813BDC6
	ldr r0, [sp,#0x10]
	mov r8, r0
	add sp, sp, #0x20
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813BD90

	thumb_local_start
sub_813BE38:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r6, [sp]
	bl sub_813B780
	mov r7, r0
	ldrb r4, [r7,#3]
	mov r6, #0
	ldr r5, off_813BE88 // =byte_2006C50 
loc_813BE4A:
	ldrb r0, [r5,r6]
	tst r0, r0
	beq loc_813BE7C
	sub r0, #1
	ldr r1, [sp]
	cmp r0, r1
	beq loc_813BE7C
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BE7C
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#3]
	cmp r0, r4
	bne loc_813BE7C
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200431c_Ptr]
	ldrb r1, [r7,#4]
	ldrb r2, [r0,r1]
	add r2, #1
	strb r2, [r0,r1]
loc_813BE7C:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813BE4A
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813BE88: .word byte_2006C50
	thumb_func_end sub_813BE38

	thumb_local_start
sub_813BE8C:
	push {r4-r7,lr}
	mov r6, #0
loc_813BE90:
	mov r0, r6
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BE9E
loc_813BE9E:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813BE90
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813BE8C

	thumb_local_start
sub_813BEA8:
	push {r4-r7,lr}
	// mem
	ldr r0, off_813BF08 // =byte_2006D30 
	mov r4, r0
	// byteCount
	mov r1, #0x31 
	// byte
	mov r2, #0xff
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	mov r6, #0
	mov r5, #0
loc_813BEBA:
	mov r0, r6
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BEE2
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#3]
	mov r1, #0
loc_813BED2:
	ldrb r2, [r4,r1]
	cmp r2, r0
	beq loc_813BEE2
	add r1, #1
	cmp r1, #0x31 
	blt loc_813BED2
	strb r0, [r4,r5]
	add r5, #1
loc_813BEE2:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813BEBA
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200431c_Ptr]
	cmp r5, #4
	ble locret_813BF06
	cmp r5, #5
	bne loc_813BEFE
	mov r1, #0xb
	ldrb r2, [r0,r1]
	add r2, #1
	strb r2, [r0,r1]
	b locret_813BF06
loc_813BEFE:
	mov r1, #0xc
	ldrb r2, [r0,r1]
	add r2, #2
	strb r2, [r0,r1]
locret_813BF06:
	pop {r4-r7,pc}
off_813BF08: .word byte_2006D30
	thumb_func_end sub_813BEA8

	thumb_local_start
sub_813BF0C:
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk200431c_Ptr]
	ldrb r0, [r1,r0]
	cmp r0, #3
	ble locret_813BF18
	mov r0, #3
locret_813BF18:
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_813BF0C

	thumb_func_start sub_813BF1C
sub_813BF1C:
	push {r4-r7,lr}
	mov r6, #1
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x20 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_813BF36
	b loc_813BF38
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x23 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_813BF38
loc_813BF36:
	mov r6, #0
loc_813BF38:
	mov r0, r6
	tst r0, r0
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_813BF1C

	mov r3, r10
	ldr r3, [r3,#0x60]
	ldrb r2, [r3,r0]
	add r2, r2, r1
	strb r2, [r3,r0]
	mov pc, lr
	mov r3, r10
	ldr r3, [r3,#0x60]
	strb r1, [r3,r0]
	mov pc, lr
	mov r1, r10
	ldr r1, [r1,#0x60]
	mov r2, #0
	strb r2, [r1,r0]
	mov pc, lr
	.byte 0, 0
	thumb_func_start sub_813BF60
sub_813BF60:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp]
	str r2, [sp,#4]
	bl sub_813B790
	mov r7, r0
	ldr r1, [sp]
	ldr r2, [sp,#4]
	sub r1, #3
	sub r2, #3
	mov r5, #0
loc_813BF78:
	mov r3, #0
	push {r1}
	cmp r2, #0
	blt loc_813BFA6
	cmp r2, #7
	bge loc_813BFA6
loc_813BF84:
	cmp r1, #0
	blt loc_813BF9E
	cmp r1, #7
	bge loc_813BF9E
	ldrb r4, [r7,r3]
	tst r4, r4
	beq loc_813BF9E
	cmp r2, #3
	bne loc_813BF9E
	pop {r1}
	add sp, sp, #8
	mov r0, #1
	pop {r4-r7,pc}
loc_813BF9E:
	add r1, #1
	add r3, #1
	cmp r3, #7
	blt loc_813BF84
loc_813BFA6:
	pop {r1}
	add r7, #7
	add r2, #1
	add r5, #1
	cmp r5, #7
	blt loc_813BF78
	add sp, sp, #8
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_813BF60

	thumb_func_start sub_813BFB8
sub_813BFB8:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp]
	str r2, [sp,#4]
	bl sub_813B790
	mov r7, r0
	ldr r1, [sp]
	ldr r2, [sp,#4]
	sub r1, #3
	sub r2, #3
	mov r5, #0
loc_813BFD0:
	mov r3, #0
	push {r1}
	cmp r2, #0
	blt loc_813C00C
	cmp r2, #7
	bge loc_813C00C
loc_813BFDC:
	cmp r1, #0
	blt loc_813C004
	cmp r1, #7
	bge loc_813C004
	ldrb r4, [r7,r3]
	tst r4, r4
	beq loc_813C004
	cmp r1, #1
	blt loc_813BFFC
	cmp r1, #4
	bgt loc_813BFFC
	cmp r2, #1
	blt loc_813BFFC
	cmp r2, #4
	bgt loc_813BFFC
	b loc_813C004
loc_813BFFC:
	pop {r1}
	add sp, sp, #8
	mov r0, #1
	pop {r4-r7,pc}
loc_813C004:
	add r1, #1
	add r3, #1
	cmp r3, #7
	blt loc_813BFDC
loc_813C00C:
	pop {r1}
	add r7, #7
	add r2, #1
	add r5, #1
	cmp r5, #7
	blt loc_813BFD0
	add sp, sp, #8
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_813BFB8

	thumb_local_start
sub_813C020:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200431c_Ptr]
	mov r1, #0x10
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_813C020

// () -> void
	thumb_func_start sub_813C030
sub_813C030:
	push {r4-r7,lr}
	mov r5, #0x94
	mov r6, #1
loc_813C036:
	ldr r7, off_813C064 // =StructArr_813944C
	mov r4, #0x40 
	mul r4, r6
	add r4, #3
	add r7, r7, r4
	mov r4, #0
loc_813C042:
	mov r0, r5
	ldrb r1, [r7,r4]
	cmp r1, #0
	beq loc_813C050
	mov r2, #9
	bl sub_803D108
loc_813C050:
	add r4, #0x10
	cmp r4, #0x40 
	blt loc_813C042
	add r6, #1
	add r5, #4
	ldr r0, off_813C068 // =0x14c 
	cmp r5, r0
	blt loc_813C036
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813C064: .word StructArr_813944C
off_813C068: .word 0x14C
	thumb_func_end sub_813C030

	thumb_func_start sub_813C06C
sub_813C06C:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r2, [sp,#4]
	ldr r5, off_813C180 // =byte_813C188 
	mov r3, #0xe
	mul r2, r3
	add r5, r5, r2
	ldr r4, off_813C184 // =byte_813C1A4 
	add r4, r4, r2
	str r4, [sp]
	bl sub_813B9B4
	str r0, [sp,#8]
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200414c_Ptr]
	mov r4, #0
loc_813C08C:
	ldrb r0, [r6,r4]
	ldr r1, [sp,#8]
	cmp r0, r1
	bne loc_813C120
	tst r0, r0
	beq loc_813C120
	sub r0, #1
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#3]
	lsl r0, r0, #1
	push {r0}
	bl sub_813C4A8
	pop {r0}
	ldrb r1, [r1,r4]
	tst r1, r1
	beq loc_813C0F8
	ldr r2, dword_813C144 // =0x4142 
	ldrh r1, [r5,r0]
	cmp r1, r2
	beq loc_813C0D4
	ldr r2, dword_813C148 // =0x51e4 
	cmp r1, r2
	beq loc_813C0D4
	ldr r1, dword_813C13C // =0x522e 
	ldr r2, [sp,#4]
	tst r2, r2
	bne loc_813C0DE
	ldr r1, dword_813C140 // =0x35c3 
	b loc_813C0DE
loc_813C0D4:
	ldr r1, dword_813C134 // =0x6f15 
	ldr r2, [sp,#4]
	tst r2, r2
	bne loc_813C0DE
	ldr r1, dword_813C138 // =0x5a91 
loc_813C0DE:
	push {r0,r1}
	bl sub_813C4C8
	mov r3, r1
	pop {r0,r1}
	ldr r2, off_813C12C // =unk_30019E0 
	ldrb r3, [r3,r4]
	tst r3, r3
	beq loc_813C120
	lsl r3, r3, #1
	add r2, r2, r3
	strh r1, [r2]
	b loc_813C120
loc_813C0F8:
	ldrh r1, [r5,r0]
	push {r0,r1}
	bl sub_813C4C8
	mov r3, r1
	pop {r0,r1}
	ldr r2, off_813C12C // =unk_30019E0 
	ldrb r3, [r3,r4]
	tst r3, r3
	beq loc_813C120
	lsl r3, r3, #1
	add r2, r2, r3
	strh r1, [r2]
	strh r1, [r2,#2]
	ldrb r3, [r7,#1]
	cmp r3, #0
	beq loc_813C120
	ldr r1, [sp]
	ldrh r1, [r1,r0]
	strh r1, [r2,#2]
loc_813C120:
	add r4, #1
	cmp r4, #0x31 
	blt loc_813C08C
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813C12C: .word unk_30019E0
	.word byte_813C14C
dword_813C134: .word 0x6F15
dword_813C138: .word 0x5A91
dword_813C13C: .word 0x522E
dword_813C140: .word 0x35C3
dword_813C144: .word 0x4142
dword_813C148: .word 0x51E4
byte_813C14C: .byte 0x1D, 0x1C, 0x3E, 0x3D, 0x3C, 0x4D, 0x4C, 0x1E, 0x14
	.byte 0x18, 0x34, 0x38, 0x54, 0x5F, 0x1F, 0x16, 0x1A, 0x36
	.byte 0x3A, 0x56, 0x5E, 0x2C, 0x24, 0x28, 0x44, 0x48, 0x58
	.byte 0x5D, 0x2D, 0x26, 0x2A, 0x46, 0x4A, 0x5A, 0x5C, 0x2E
	.byte 0x64, 0x66, 0x68, 0x6A, 0x74, 0x78, 0x2F, 0x6C, 0x6D
	.byte 0x6E, 0x6F, 0x76, 0x77, 0x0, 0x0, 0x0
off_813C180: .word byte_813C188
off_813C184: .word byte_813C1A4
byte_813C188: .byte 0x4, 0x31, 0x7B, 0x6F, 0x7B, 0x3, 0x3B, 0x62, 0x5B, 0x0
	.byte 0x5, 0x6E, 0x3, 0x3, 0xA9, 0x45, 0xFF, 0x7F, 0xFF, 0x13
	.byte 0xBF, 0x72, 0xDF, 0x10, 0x89, 0x7E, 0x87, 0x7
byte_813C1A4: .byte 0x4, 0x31, 0xF7, 0x5E, 0xF7, 0x2, 0xB7, 0x51, 0x17, 0x0
	.byte 0x81, 0x5D, 0x80, 0x2, 0xA9, 0x45, 0x7B, 0x6F, 0x7B, 0x3
	.byte 0x3B, 0x62, 0x5B, 0x0, 0x5, 0x6E, 0x2, 0x3
	thumb_func_end sub_813C06C

	thumb_func_start sub_813C1C0
sub_813C1C0:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r0, [sp,#4]
	ldr r5, off_813C2E4 // =byte_813C2EC 
	mov r1, #0xe
	mul r0, r1
	add r5, r5, r0
	ldr r1, off_813C2E8 // =byte_813C308 
	add r1, r1, r0
	str r1, [sp]
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200414c_Ptr]
	mov r4, #0
loc_813C1DA:
	ldrb r0, [r6,r4]
	tst r0, r0
	bne loc_813C1E4
	ldr r7, off_813C29C // =byte_813C2A0 
	b loc_813C1FA
loc_813C1E4:
	sub r0, #1
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813C1FA
	bl sub_813B780
	mov r7, r0
	ldrb r0, [r7,#3]
loc_813C1FA:
	lsl r0, r0, #1
	push {r0}
	bl sub_813C4A8
	pop {r0}
	ldrb r1, [r1,r4]
	tst r1, r1
	beq loc_813C248
	ldr r2, dword_813C294 // =0x4142 
	ldrh r1, [r5,r0]
	cmp r1, r2
	beq loc_813C224
	ldr r2, dword_813C298 // =0x51e4 
	cmp r1, r2
	beq loc_813C224
	ldr r1, dword_813C28C // =0x41aa 
	ldr r2, [sp,#4]
	tst r2, r2
	bne loc_813C22E
	ldr r1, dword_813C290 // =0x3968 
	b loc_813C22E
loc_813C224:
	ldr r1, dword_813C284 // =0x6f15 
	ldr r2, [sp,#4]
	tst r2, r2
	bne loc_813C22E
	ldr r1, dword_813C288 // =0x5a91 
loc_813C22E:
	push {r0,r1}
	bl sub_813C4C8
	mov r3, r1
	pop {r0,r1}
	ldr r2, off_813C27C // =unk_30019E0 
	ldrb r3, [r3,r4]
	tst r3, r3
	beq loc_813C270
	lsl r3, r3, #1
	add r2, r2, r3
	strh r1, [r2]
	b loc_813C270
loc_813C248:
	ldrh r1, [r5,r0]
	push {r0,r1}
	bl sub_813C4C8
	mov r3, r1
	pop {r0,r1}
	ldr r2, off_813C27C // =unk_30019E0 
	ldrb r3, [r3,r4]
	tst r3, r3
	beq loc_813C270
	lsl r3, r3, #1
	add r2, r2, r3
	strh r1, [r2]
	strh r1, [r2,#2]
	ldrb r3, [r7,#1]
	cmp r3, #0
	beq loc_813C270
	ldr r1, [sp]
	ldrh r1, [r1,r0]
	strh r1, [r2,#2]
loc_813C270:
	add r4, #1
	cmp r4, #0x31 
	blt loc_813C1DA
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813C27C: .word unk_30019E0
	.word byte_813C2B0
dword_813C284: .word 0x6F15
dword_813C288: .word 0x5A91
dword_813C28C: .word 0x41AA
dword_813C290: .word 0x3968
dword_813C294: .word 0x4142
dword_813C298: .word 0x51E4
off_813C29C: .word byte_813C2A0
byte_813C2A0: .byte 0x0
byte_813C2A1: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_813C2B0: .byte 0x1D, 0x1C, 0x3E, 0x3D, 0x3C, 0x4D, 0x4C, 0x1E, 0x14
	.byte 0x18, 0x34, 0x38, 0x54, 0x5F, 0x1F, 0x16, 0x1A, 0x36
	.byte 0x3A, 0x56, 0x5E, 0x2C, 0x24, 0x28, 0x44, 0x48, 0x58
	.byte 0x5D, 0x2D, 0x26, 0x2A, 0x46, 0x4A, 0x5A, 0x5C, 0x2E
	.byte 0x64, 0x66, 0x68, 0x6A, 0x74, 0x78, 0x2F, 0x6C, 0x6D
	.byte 0x6E, 0x6F, 0x76, 0x77, 0x0, 0x0, 0x0
off_813C2E4: .word byte_813C2EC
off_813C2E8: .word byte_813C308
byte_813C2EC: .byte 0x42, 0x41, 0x7B, 0x6F, 0x7B, 0x3, 0x3B, 0x62, 0x5B
	.byte 0x0, 0x5, 0x6E, 0x3, 0x3, 0xE4, 0x51, 0xFF, 0x7F
	.byte 0xFF, 0x13, 0xBF, 0x72, 0xDF, 0x10, 0x89, 0x7E, 0x87
	.byte 0x7
byte_813C308: .byte 0x42, 0x41, 0xF7, 0x5E, 0xF7, 0x2, 0xB7, 0x51, 0x17
	.byte 0x0, 0x81, 0x5D, 0x80, 0x2, 0xE4, 0x51, 0x7B, 0x6F
	.byte 0x7B, 0x3, 0x3B, 0x62, 0x5B, 0x0, 0x5, 0x6E, 0x2
	.byte 0x3
	thumb_func_end sub_813C1C0

	thumb_func_start sub_813C324
sub_813C324:
	push {lr}
	ldr r0, off_813C330 // =unk_2000090 
	mov r1, #8
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {pc}
off_813C330: .word unk_2000090
	thumb_func_end sub_813C324

	thumb_func_start sub_813C334
sub_813C334:
	push {r4-r7,lr}
	mov r6, r1
	mov r7, r0
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	tst r0, r0
	beq loc_813C394
	lsr r3, r7, #2
	ldr r1, off_813C398 // =byte_813B522
	mov r2, #0xa
	mul r3, r2
	add r1, r1, r3
	mov r4, r1
	cmp r6, #0xa
	beq loc_813C394
	ldrb r2, [r1,r6]
	cmp r2, #0xff
	beq loc_813C362
	ldr r1, off_813C39C // =byte_813C3A4 
	ldrh r3, [r1,r2]
	tst r0, r3
	bne loc_813C366
loc_813C362:
	mov r6, #0
	b loc_813C394
loc_813C366:
	add r6, #1
	cmp r6, #0xa
	bne loc_813C394
	lsr r3, r7, #2
	lsl r3, r3, #2
	ldr r2, dword_813C3A0 // =0x2660 
	add r2, r2, r3
	mov r0, r2
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813C386
	mov r0, r2
	mov r2, #4
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	b loc_813C38E
loc_813C386:
	mov r0, r2
	mov r2, #4
	bl SetEventFlagRange // (u16 entryFlagBitfield) -> void
loc_813C38E:
	mov r0, #0x8b
	bl sound_play // () -> void
loc_813C394:
	mov r0, r6
	pop {r4-r7,pc}
off_813C398: .word byte_813B522
off_813C39C: .word byte_813C3A4
dword_813C3A0: .word 0x2660
byte_813C3A4: .byte 0x0, 0x2, 0x0, 0x1, 0x1, 0x0, 0x2, 0x0
	thumb_func_end sub_813C334

	thumb_func_start sub_813C3AC
sub_813C3AC:
	push {r4-r7,lr}
	bl getPETNaviSelect // () -> u8
	tst r0, r0
	beq loc_813C3B8
	b loc_813C3CC
loc_813C3B8:
	bl sub_813C458
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_813C3CC
	bl sub_8121154
	b loc_813C3CC
loc_813C3CC:
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #0x80
	bge loc_813C40E
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x1d
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_813C454
	mov r0, #0
	mov r1, #0x42 
	bl sub_80137FE
	mov r7, r0
	mov r0, #0
	mov r1, #0x40 
	mov r2, r7
	bl sub_80137E6
	bl getPETNaviSelect // () -> u8
	mov r1, #0x42 
	bl sub_80137FE
	mov r7, r0
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	mov r2, r7
	bl sub_80137E6
	b locret_813C454
loc_813C40E:
	mov r0, #0
	mov r1, #0x42 
	bl sub_80137FE
	mov r4, r0
	mov r0, #0
	mov r1, #0x40 
	bl sub_80137FE
	cmp r0, r4
	ble loc_813C42E
	mov r0, #0
	mov r1, #0x40 
	mov r2, r4
	bl sub_80137E6
loc_813C42E:
	bl getPETNaviSelect // () -> u8
	mov r1, #0x42 
	bl sub_80137FE
	mov r4, r0
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	bl sub_80137FE
	cmp r0, r4
	ble locret_813C454
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	mov r2, r4
	bl sub_80137E6
locret_813C454:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813C3AC

	thumb_local_start
sub_813C458:
	push {r4,lr}
	bl sub_813BBD4
	bl sub_8136C24
	bl getPETNaviSelect // () -> u8
	mov r4, r0
	mov r0, #0
	bl sub_80010BE
	bl sub_813C678
	mov r0, #0x17
	mov r1, #0xd
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_813C684
	bl sub_813CBCC
	mov r0, r4
	bl sub_80010BE
	bl sub_803CE44
	pop {r4,pc}
	.byte 0, 0
	thumb_func_end sub_813C458

	thumb_local_start
sub_813C490:
	push {r4,lr}
	mov r4, #0
	mov r0, #0
	mov r1, #0x1f
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #1
	bne loc_813C4A2
	mov r4, #1
loc_813C4A2:
	mov r0, r4
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_813C490

	thumb_local_start
sub_813C4A8:
	push {lr}
	mov r0, #0x71 
	bl sub_803CE28
	ldr r1, off_813C4B8 // =pt_813C4BC 
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	pop {pc}
off_813C4B8: .word pt_813C4BC
pt_813C4BC: .word byte_813B3AE+225
	.word byte_813B3AE+274
	.word byte_813B3AE+323
	thumb_func_end sub_813C4A8

	thumb_local_start
sub_813C4C8:
	push {lr}
	mov r0, #0x71 
	bl sub_803CE28
	ldr r1, off_813C4D8 // =off_813C4DC 
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	pop {pc}
off_813C4D8: .word off_813C4DC
off_813C4DC: .word byte_813C4E8
	.word byte_813C51C
	.word byte_813C550
byte_813C4E8: .byte 0x1D, 0x3F, 0x3E, 0x3D, 0x3C, 0x4C, 0x0, 0x1E, 0x14
	.byte 0x18, 0x34, 0x38, 0x5F, 0x0, 0x1F, 0x16, 0x1A, 0x36
	.byte 0x3A, 0x5E, 0x0, 0x2C, 0x24, 0x28, 0x44, 0x48, 0x5D
	.byte 0x0, 0x2D, 0x26, 0x2A, 0x46, 0x4A, 0x5C, 0x0, 0x2F
	.byte 0x6C, 0x6D, 0x6E, 0x6F, 0x77, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_813C51C: .byte 0x1D, 0x3F, 0x3E, 0x3D, 0x3C, 0x4D, 0x4C, 0x1E, 0x14
	.byte 0x18, 0x34, 0x38, 0x54, 0x5F, 0x1F, 0x16, 0x1A, 0x36
	.byte 0x3A, 0x56, 0x5E, 0x2C, 0x24, 0x28, 0x44, 0x48, 0x58
	.byte 0x5D, 0x2D, 0x26, 0x2A, 0x46, 0x4A, 0x5A, 0x5C, 0x2F
	.byte 0x6C, 0x6D, 0x6E, 0x6F, 0x76, 0x77, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
byte_813C550: .byte 0x1D, 0x3F, 0x3E, 0x3D, 0x3C, 0x4D, 0x4C, 0x1E, 0x14
	.byte 0x18, 0x34, 0x38, 0x54, 0x5F, 0x1F, 0x16, 0x1A, 0x36
	.byte 0x3A, 0x56, 0x5E, 0x2C, 0x24, 0x28, 0x44, 0x48, 0x58
	.byte 0x5D, 0x2D, 0x26, 0x2A, 0x46, 0x4A, 0x5A, 0x5C, 0x2E
	.byte 0x64, 0x66, 0x68, 0x6A, 0x74, 0x78, 0x2F, 0x6C, 0x6D
	.byte 0x6E, 0x6F, 0x76, 0x77, 0x0, 0x0, 0x0
	thumb_func_end sub_813C4C8

	thumb_local_start
sub_813C584:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r0, off_813C638 // =byte_2006D68 
	mov r1, #0x31 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r0, off_813C63C // =byte_2006DA0 
	mov r1, #0x31 
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r7, #0
	mov r5, #0
loc_813C59E:
	mov r6, #0
loc_813C5A0:
	mov r0, #0x71 
	bl sub_803CE28
	bl sub_813B9E0
	mov r1, #0xf
	add r2, r7, #5
	mul r1, r2
	add r1, r1, r6
	add r1, #5
	ldrb r0, [r0,r1]
	cmp r0, #3
	bne loc_813C5CC
	mov r0, r6
	mov r1, r7
	bl sub_813B9B4
	tst r0, r0
	beq loc_813C5CC
	ldr r1, off_813C638 // =byte_2006D68 
	strb r0, [r1,r5]
	add r5, #1
loc_813C5CC:
	add r6, #1
	cmp r6, #7
	blt loc_813C5A0
	add r7, #1
	cmp r7, #7
	blt loc_813C59E
	mov r7, #0
	mov r6, #1
loc_813C5DC:
	mov r4, #0
loc_813C5DE:
	ldr r2, off_813C638 // =byte_2006D68 
	ldrb r0, [r2,r4]
	cmp r0, r6
	bne loc_813C5EE
	ldr r2, off_813C63C // =byte_2006DA0 
	strb r0, [r2,r7]
	add r7, #1
	b loc_813C5F4
loc_813C5EE:
	add r4, #1
	cmp r4, #0x31 
	blt loc_813C5DE
loc_813C5F4:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813C5DC
	mov r4, #0
loc_813C5FC:
	ldr r2, off_813C63C // =byte_2006DA0 
	ldrb r0, [r2,r4]
	tst r0, r0
	beq loc_813C61E
	sub r0, #1
	bl sub_813B9FC
	ldrh r0, [r0]
	bl sub_813B780
	ldrb r1, [r0,#4]
	ldr r0, [sp]
	ldrb r2, [r0,r1]
	add r2, #1
	strb r2, [r0,r1]
	add r4, #1
	b loc_813C5FC
loc_813C61E:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813C584

	thumb_local_start
sub_813C624:
	push {r0,r2,lr}
	mov r0, #7
	mul r2, r0
	add r2, r2, r1
	ldr r0, off_813C634 // =byte_813C640 
	ldrb r1, [r0,r2]
	pop {r0,r2,pc}
	.balign 4, 0x00
off_813C634: .word byte_813C640
off_813C638: .word byte_2006D68
off_813C63C: .word byte_2006DA0
byte_813C640: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0xFF, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF
	thumb_func_end sub_813C624

	thumb_local_start
sub_813C678:
	push {lr}
	mov r0, #0
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2004334_Ptr]
	strh r0, [r1]
	pop {pc}
	thumb_func_end sub_813C678

	thumb_local_start
sub_813C684:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r0, off_813C744 // =byte_2006DD8 
	mov r1, #8
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r6, #6
	bl sub_813BD0C
	str r7, [sp]
loc_813C698:
	ldr r7, [sp]
	ldrb r0, [r7,r6]
	tst r0, r0
	beq loc_813C6D6
	sub r0, #1
	bl sub_813B9FC
	ldrh r4, [r0]
	tst r4, r4
	beq loc_813C6D6
	mov r0, r4
	bl sub_813B780
	ldrb r1, [r0]
	tst r1, r1
	beq loc_813C6CA
	ldr r0, off_813C744 // =byte_2006DD8 
	strb r1, [r0,r6]
	add r2, r6, #1
loc_813C6BE:
	ldrb r3, [r0,r2]
	cmp r1, r3
	beq loc_813C6D6
	add r2, #1
	cmp r2, #8
	blt loc_813C6BE
loc_813C6CA:
	lsr r0, r4, #2
	lsl r0, r0, #2
	ldr r1, off_813C748 // =navicust_jt_NCPs 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_813C6D6:
	sub r6, #1
	bge loc_813C698
	mov r6, #0
	bl sub_813BD10
	str r7, [sp]
loc_813C6E2:
	ldr r7, [sp]
	ldrb r0, [r7,r6]
	tst r0, r0
	beq loc_813C702
	sub r0, #1
	bl sub_813B9FC
	ldrh r4, [r0]
	tst r4, r4
	beq loc_813C702
	lsr r0, r4, #2
	lsl r0, r0, #2
	ldr r1, off_813C748 // =navicust_jt_NCPs 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_813C702:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813C6E2
	mov r6, #0
	bl sub_813BD14
	str r7, [sp]
loc_813C710:
	ldr r7, [sp]
	ldrb r0, [r7,r6]
	tst r0, r0
	beq loc_813C730
	sub r0, #1
	bl sub_813B9FC
	ldrh r4, [r0]
	tst r4, r4
	beq loc_813C730
	lsr r0, r4, #2
	lsl r0, r0, #2
	ldr r1, off_813C748 // =navicust_jt_NCPs 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_813C730:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813C710
	bl sub_803CED4
	bl sub_813CEA0 // () -> void
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813C744: .word byte_2006DD8
off_813C748: .word navicust_jt_NCPs
navicust_jt_NCPs: .word sub_813C808+1
	.word navicust_NCP_SuperArmor+1
	.word navicust_NCP_Custom1+1
	.word navicust_NCP_Custom2+1
	.word navicust_NCP_MegFldr1+1
	.word navicust_NCP_MegFldr2+1
	.word navicust_GigFldr1+1
	.word navicust_NCP_FstBarr+1
	.word navicust_NCP_Shield+1
	.word navicust_NCP_Reflect+1
	.word navicust_NCP_AntiDmg+1
	.word navicust_NCP_FlotShoe+1
	.word navicust_NCP_AirShoes+1
	.word navicust_NCP_UnderSht+1
	.word navicust_NCP_ChpShufl+1
	.word navicust_NCP_NumbrOpn+1
	.word navicust_NCP_SneakRun+1
	.word navicust_NCP_OilBody+1
	.word navicust_NCP_Fish+1
	.word navicust_NCP_Battery+1
	.word navicust_NCP_Jungle+1
	.word navicust_NCP_Collect+1
	.word navicust_NCP_Millions+1
	.word navicust_NCP_Humor+1
	.word navicust_NCP_Poem+1
	.word navicust_NCP_SlipRunr+1
	.word navicust_NCP_AutoHeal+1
	.word navicust_NCP_BustPack+1
	.word navicust_NCP_BodyPack+1
	.word navicust_NCP_FldrPak1+1
	.word navicust_NCP_FldrPak2+1
	.word navicust_NCP_BugStop+1
	.word navicust_NCP_Rush+1
	.word navicust_NCP_Beat+1
	.word navicust_NCP_Tango+1
	.word navicust_NCP_AttackPlus1+1
	.word navicust_NCP_SpeedPlus1+1
	.word navicust_NCP_ChargePlus1+1
	.word navicust_NCP_AttckMAX+1
	.word navicust_NCP_SpeedMAX+1
	.word navicust_NCP_ChargMAX+1
	.word navicust_NCP_HPPlus50+1
	.word navicust_NCP_HPPlus100+1
	.word navicust_NCP_HPPlus200+1
	.word navicust_NCP_HPPlus300+1
	.word navicust_NCP_HPPlus400+1
	.word navicust_NCP_HPPlus500+1
	thumb_func_end sub_813C684

	thumb_local_start
sub_813C808:
	push {lr}
	pop {pc}
	thumb_func_end sub_813C808

	thumb_local_start
navicust_NCP_SuperArmor:
	push {lr}
	mov r0, #0
	// NCP category
	mov r1, #0x23 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_SuperArmor

	thumb_local_start
navicust_NCP_Custom1:
	push {lr}
	mov r0, #0
	mov r1, #0xa
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #1
	cmp r2, #8
	ble loc_813C82E
	mov r2, #8
loc_813C82E:
	mov r0, #0
	mov r1, #0xa
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_Custom1

	thumb_local_start
navicust_NCP_Custom2:
	push {lr}
	mov r0, #0
	mov r1, #0xa
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #2
	cmp r2, #8
	ble loc_813C84A
	mov r2, #8
loc_813C84A:
	mov r0, #0
	mov r1, #0xa
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_Custom2

	thumb_local_start
navicust_NCP_MegFldr1:
	push {lr}
	mov r0, #0
	mov r1, #0xb
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #1
	cmp r2, #0xa
	ble loc_813C866
	mov r2, #0xa
loc_813C866:
	mov r0, #0
	mov r1, #0xb
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_MegFldr1

	thumb_local_start
navicust_NCP_MegFldr2:
	push {lr}
	mov r0, #0
	mov r1, #0xb
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #2
	cmp r2, #0xa
	ble loc_813C882
	mov r2, #0xa
loc_813C882:
	mov r0, #0
	mov r1, #0xb
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_MegFldr2

	thumb_local_start
navicust_GigFldr1:
	push {lr}
	mov r0, #0
	mov r1, #0xc
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #1
	cmp r2, #0xa
	ble loc_813C89E
	mov r2, #0xa
loc_813C89E:
	mov r0, #0
	mov r1, #0xc
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_GigFldr1

	thumb_local_start
navicust_NCP_FstBarr:
	push {lr}
	mov r0, #0
	mov r1, #6
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_FstBarr

	thumb_local_start
navicust_NCP_Shield:
	push {lr}
	mov r0, #0
	mov r1, #7
	mov r2, #0x3b 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_Shield

	thumb_local_start
navicust_NCP_Reflect:
	push {lr}
	mov r0, #0
	mov r1, #7
	mov r2, #0x8b
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_Reflect

	thumb_local_start
navicust_NCP_AntiDmg:
	push {lr}
	mov r0, #0
	mov r1, #7
	mov r2, #0x3d 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_AntiDmg

	thumb_local_start
navicust_NCP_FlotShoe:
	push {lr}
	mov r0, #0
	mov r1, #0x1b
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_FlotShoe

	thumb_local_start
navicust_NCP_AirShoes:
	push {lr}
	mov r0, #0
	mov r1, #0x1c
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_AirShoes

	thumb_local_start
navicust_NCP_UnderSht:
	push {lr}
	mov r0, #0
	mov r1, #0x1d
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_UnderSht

	thumb_local_start
navicust_NCP_ChpShufl:
	push {lr}
	mov r0, #0
	mov r1, #0x60 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_ChpShufl

	thumb_local_start
navicust_NCP_NumbrOpn:
	push {lr}
	mov r0, #0
	mov r1, #0x61 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_NumbrOpn

	thumb_local_start
navicust_NCP_SneakRun:
	push {lr}
	mov r0, #0
	mov r1, #0x1e
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_SneakRun

	thumb_local_start
navicust_NCP_OilBody:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C958 // =0x2 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
dword_813C958: .word 0x2
	thumb_func_end navicust_NCP_OilBody

	thumb_local_start
navicust_NCP_Fish:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C96C // =0x4 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
dword_813C96C: .word 0x4
	thumb_func_end navicust_NCP_Fish

	thumb_local_start
navicust_NCP_Battery:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C980 // =0x8 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
dword_813C980: .word 0x8
	thumb_func_end navicust_NCP_Battery

	thumb_local_start
navicust_NCP_Jungle:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C994 // =0x10 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
dword_813C994: .word 0x10
	thumb_func_end navicust_NCP_Jungle

	thumb_local_start
navicust_NCP_Collect:
	push {lr}
	mov r0, #0
	mov r1, #0x26 
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r2, #2
	orr r2, r0
	mov r0, #0
	mov r1, #0x26 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_Collect

	thumb_local_start
navicust_NCP_Millions:
	push {lr}
	mov r0, #0
	mov r1, #0x33 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_Millions

	thumb_local_start
navicust_NCP_Humor:
	push {lr}
	mov r0, #0
	mov r1, #0x25 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_Humor

	thumb_local_start
navicust_NCP_Poem:
	push {lr}
	mov r0, #0
	mov r1, #0x5f 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_Poem

	thumb_local_start
navicust_NCP_SlipRunr:
	push {lr}
	mov r0, #0
	mov r1, #0x35 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_SlipRunr

	thumb_local_start
navicust_NCP_AutoHeal:
	push {lr}
	mov r0, #0
	mov r1, #0x36 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_AutoHeal

	thumb_local_start
navicust_NCP_BustPack:
	push {lr}
	mov r0, #0
	mov r1, #1
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #3
	cmp r2, #4
	ble loc_813CA12
	mov r2, #4
loc_813CA12:
	mov r0, #0
	mov r1, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, #0
	mov r1, #2
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #3
	cmp r2, #4
	ble loc_813CA2A
	mov r2, #4
loc_813CA2A:
	mov r0, #0
	mov r1, #2
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, #0
	mov r1, #3
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #3
	cmp r2, #4
	ble loc_813CA42
	mov r2, #4
loc_813CA42:
	mov r0, #0
	mov r1, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_BustPack

	thumb_local_start
navicust_NCP_BodyPack:
	push {lr}
	bl navicust_NCP_SuperArmor
	bl navicust_NCP_FlotShoe
	bl navicust_NCP_AirShoes
	bl navicust_NCP_UnderSht
	pop {pc}
	thumb_func_end navicust_NCP_BodyPack

	thumb_local_start
navicust_NCP_FldrPak1:
	push {lr}
	bl navicust_NCP_MegFldr1
	bl navicust_NCP_Custom1
	pop {pc}
	thumb_func_end navicust_NCP_FldrPak1

	thumb_local_start
navicust_NCP_FldrPak2:
	push {lr}
	bl navicust_NCP_MegFldr2
	bl navicust_NCP_Custom2
	pop {pc}
	thumb_func_end navicust_NCP_FldrPak2

	thumb_local_start
navicust_NCP_BugStop:
	push {lr}
	mov r0, #0
	mov r1, #0x1f
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_BugStop

	thumb_local_start
navicust_NCP_Rush:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r3, r0
	mov r0, #0
	mov r1, #0xd
	mov r2, #1
	orr r2, r3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_Rush

	thumb_local_start
navicust_NCP_Beat:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r3, r0
	mov r0, #0
	mov r1, #0xd
	mov r2, #2
	orr r2, r3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_Beat

	thumb_local_start
navicust_NCP_Tango:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r3, r0
	mov r0, #0
	mov r1, #0xd
	mov r2, #4
	orr r2, r3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end navicust_NCP_Tango

	thumb_local_start
navicust_NCP_AttackPlus1:
	push {lr}
	mov r0, #0
	mov r1, #1
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #1
	cmp r2, #4
	ble loc_813CAEE
	mov r2, #4
loc_813CAEE:
	mov r0, #0
	mov r1, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_AttackPlus1

	thumb_local_start
navicust_NCP_SpeedPlus1:
	push {lr}
	mov r0, #0
	mov r1, #2
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #1
	cmp r2, #4
	ble loc_813CB0A
	mov r2, #4
loc_813CB0A:
	mov r0, #0
	mov r1, #2
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_SpeedPlus1

	thumb_local_start
navicust_NCP_ChargePlus1:
	push {lr}
	mov r0, #0
	mov r1, #3
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, #1
	cmp r2, #4
	ble loc_813CB26
	mov r2, #4
loc_813CB26:
	mov r0, #0
	mov r1, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end navicust_NCP_ChargePlus1

	thumb_local_start
navicust_NCP_AttckMAX:
	push {lr}
	mov r0, #0
	mov r1, #1
	mov r2, #4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_AttckMAX

	thumb_local_start
navicust_NCP_SpeedMAX:
	push {lr}
	mov r0, #0
	mov r1, #2
	mov r2, #4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_SpeedMAX

	thumb_local_start
navicust_NCP_ChargMAX:
	push {lr}
	mov r0, #0
	mov r1, #3
	mov r2, #4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_ChargMAX

	thumb_local_start
navicust_NCP_HPPlus50:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	ldrh r1, [r0]
	add r1, #0x32 
	strh r1, [r0]
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_HPPlus50

	thumb_local_start
navicust_NCP_HPPlus100:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	ldrh r1, [r0]
	add r1, #0x64 
	strh r1, [r0]
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_HPPlus100

	thumb_local_start
navicust_NCP_HPPlus200:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	ldrh r1, [r0]
	add r1, #0xc8
	strh r1, [r0]
	pop {pc}
	.byte 0, 0
	thumb_func_end navicust_NCP_HPPlus200

	thumb_local_start
navicust_NCP_HPPlus300:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	ldrh r1, [r0]
	ldr r2, off_813CBA0 // =0x12c 
	add r1, r1, r2
	strh r1, [r0]
	pop {pc}
off_813CBA0: .word 0x12C
	thumb_func_end navicust_NCP_HPPlus300

	thumb_local_start
navicust_NCP_HPPlus400:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	ldrh r1, [r0]
	ldr r2, off_813CBB4 // =0x190 
	add r1, r1, r2
	strh r1, [r0]
	pop {pc}
off_813CBB4: .word 0x190
	thumb_func_end navicust_NCP_HPPlus400

	thumb_local_start
navicust_NCP_HPPlus500:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004334_Ptr]
	ldrh r1, [r0]
	ldr r2, off_813CBC8 // =0x1f4 
	add r1, r1, r2
	strh r1, [r0]
	pop {pc}
off_813CBC8: .word 0x1F4
	thumb_func_end navicust_NCP_HPPlus500

	thumb_local_start
sub_813CBCC:
	push {r4-r7,lr}
	mov r0, #0x17
	mov r1, #0x20 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_813C490
	cmp r0, #1
	bne loc_813CBE4
	bl sub_813C020
	b locret_813CC12
loc_813CBE4:
	mov r6, #1
loc_813CBE6:
	mov r0, r6
	bl sub_813BF0C
	tst r0, r0
	beq loc_813CC0C
	lsl r0, r0, #2
	lsl r1, r6, #4
	add r0, r0, r1
	mov r2, #0
	ldr r1, off_813CC14 // =byte_813CC18 
	ldr r1, [r1,r0]
	tst r1, r1
	beq loc_813CC0C
	mov lr, pc
	bx r1
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x20 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
loc_813CC0C:
	add r6, #1
	cmp r6, #0x10
	blt loc_813CBE6
locret_813CC12:
	pop {r4-r7,pc}
off_813CC14: .word byte_813CC18
byte_813CC18: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word sub_813CCE8+1
	.word sub_813CCEC+1
	.word sub_813CCEC+1
	.word sub_813CCEC+1
	.word sub_813CCFC+1
	.word sub_813CD00+1
	.word sub_813CD00+1
	.word sub_813CD00+1
	.word sub_813CD10+1
	.word sub_813CD14+1
	.word sub_813CD22+1
	.word sub_813CD30+1
	.word sub_813CD58+1
	.word sub_813CD5C+1
	.word sub_813CD66+1
	.word sub_813CD70+1
	.word sub_813CD88+1
	.word sub_813CD8C+1
	.word sub_813CD8C+1
	.word sub_813CD8C+1
	.word sub_813CD9C+1
	.word sub_813CDA0+1
	.word sub_813CDA0+1
	.word sub_813CDA0+1
	.word sub_813CDB0+1
	.word sub_813CDB4+1
	.word sub_813CDC0+1
	.word sub_813CDCC+1
	.word sub_813CDF0+1
	.word sub_813CDF4+1
	.word sub_813CDF4+1
	.word sub_813CDF4+1
	.word sub_813CE04+1
	.word sub_813CE08+1
	.word sub_813CE12+1
	.word sub_813CE1C+1
	.word sub_813CE48+1
	.word sub_813CE4C+1
	.word sub_813CE56+1
	.word sub_813CE60+1
	.word sub_813CE78+1
	.word sub_813CE7C+1
	.word sub_813CE7C+1
	.word sub_813CE7C+1
	.word sub_813CE8C+1
	.word sub_813CE90+1
	.word sub_813CE90+1
	.word sub_813CE90+1
	thumb_func_end sub_813CBCC

	thumb_local_start
sub_813CCE8:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CCE8

	thumb_local_start
sub_813CCEC:
	push {lr}
	mov r0, #0
	mov r1, #0x31 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CCEC

	thumb_local_start
sub_813CCFC:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CCFC

	thumb_local_start
sub_813CD00:
	push {lr}
	mov r0, #0
	mov r1, #0x24 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_813CD00

	thumb_local_start
sub_813CD10:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CD10

	thumb_local_start
sub_813CD14:
	push {lr}
	bl sub_813CD3E
	mov r2, #2
	bl sub_813CD4C
	pop {pc}
	thumb_func_end sub_813CD14

	thumb_local_start
sub_813CD22:
	push {lr}
	bl sub_813CD3E
	mov r2, #3
	bl sub_813CD4C
	pop {pc}
	thumb_func_end sub_813CD22

	thumb_local_start
sub_813CD30:
	push {lr}
	bl sub_813CD3E
	mov r2, #4
	bl sub_813CD4C
	pop {pc}
	thumb_func_end sub_813CD30

	thumb_local_start
sub_813CD3E:
	push {lr}
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end sub_813CD3E

	thumb_local_start
sub_813CD4C:
	push {lr}
	mov r0, #0
	mov r1, #0x13
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	thumb_func_end sub_813CD4C

	thumb_local_start
sub_813CD58:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CD58

	thumb_local_start
sub_813CD5C:
	push {lr}
	mov r2, #4
	bl sub_813CD7A
	pop {pc}
	thumb_func_end sub_813CD5C

	thumb_local_start
sub_813CD66:
	push {lr}
	mov r2, #3
	bl sub_813CD7A
	pop {pc}
	thumb_func_end sub_813CD66

	thumb_local_start
sub_813CD70:
	push {lr}
	mov r2, #2
	bl sub_813CD7A
	pop {pc}
	thumb_func_end sub_813CD70

	thumb_local_start
sub_813CD7A:
	push {lr}
	mov r0, #0
	mov r1, #0x63 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CD7A

	thumb_local_start
sub_813CD88:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CD88

	thumb_local_start
sub_813CD8C:
	push {lr}
	mov r0, #0
	mov r1, #0x28 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CD8C

	thumb_local_start
sub_813CD9C:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CD9C

	thumb_local_start
sub_813CDA0:
	push {lr}
	mov r0, #0
	mov r1, #0x26 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_813CDA0

	thumb_local_start
sub_813CDB0:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CDB0

	thumb_local_start
sub_813CDB4:
	push {r4-r7,lr}
	mov r4, #6
	mov r6, #1
	bl sub_813CDD8
	pop {r4-r7,pc}
	thumb_func_end sub_813CDB4

	thumb_local_start
sub_813CDC0:
	push {r4-r7,lr}
	mov r4, #0xa
	mov r6, #2
	bl sub_813CDD8
	pop {r4-r7,pc}
	thumb_func_end sub_813CDC0

	thumb_local_start
sub_813CDCC:
	push {r4-r7,lr}
	mov r4, #0xd
	mov r6, #3
	bl sub_813CDD8
	pop {r4-r7,pc}
	thumb_func_end sub_813CDCC

	thumb_local_start
sub_813CDD8:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0x14
	mov r2, r4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, #0
	mov r1, #0x15
	mov r2, r6
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_813CDD8

	thumb_local_start
sub_813CDF0:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CDF0

	thumb_local_start
sub_813CDF4:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	mov r2, #0xff
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CDF4

	thumb_local_start
sub_813CE04:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CE04

	thumb_local_start
sub_813CE08:
	push {r4-r7,lr}
	mov r4, #1
	bl sub_813CE26
	pop {r4-r7,pc}
	thumb_func_end sub_813CE08

	thumb_local_start
sub_813CE12:
	push {r4-r7,lr}
	mov r4, #2
	bl sub_813CE26
	pop {r4-r7,pc}
	thumb_func_end sub_813CE12

	thumb_local_start
sub_813CE1C:
	push {r4-r7,lr}
	mov r4, #3
	bl sub_813CE26
	pop {r4-r7,pc}
	thumb_func_end sub_813CE1C

	thumb_local_start
sub_813CE26:
	push {lr}
	mov r0, #0
	mov r1, #0x18
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r2, r0, r4
	mov r0, #0
	mov r1, #0x18
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, #0
	mov r1, #0x16
	mov r2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CE26

	thumb_local_start
sub_813CE48:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CE48

	thumb_local_start
sub_813CE4C:
	push {lr}
	mov r2, #3
	bl sub_813CE6A
	pop {pc}
	thumb_func_end sub_813CE4C

	thumb_local_start
sub_813CE56:
	push {lr}
	mov r2, #2
	bl sub_813CE6A
	pop {pc}
	thumb_func_end sub_813CE56

	thumb_local_start
sub_813CE60:
	push {lr}
	mov r2, #1
	bl sub_813CE6A
	pop {pc}
	thumb_func_end sub_813CE60

	thumb_local_start
sub_813CE6A:
	push {lr}
	mov r0, #0
	mov r1, #0x62 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CE6A

	thumb_local_start
sub_813CE78:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CE78

	thumb_local_start
sub_813CE7C:
	push {lr}
	mov r0, #0
	mov r1, #0x1a
	mov r2, #9
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CE7C

	thumb_local_start
sub_813CE8C:
	push {lr}
	pop {pc}
	thumb_func_end sub_813CE8C

	thumb_local_start
sub_813CE90:
	push {lr}
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xa
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_813CE90

// () -> void
	thumb_local_start
sub_813CEA0:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r0, #0
	mov r1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r7, r0
	mov r0, #0
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp]
	mov r1, r0
	add r1, #0x2e 
	mov r6, r1
	mov r0, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0xff
	beq loc_813CEF2
	ldr r1, [sp]
	mov r2, #0x3c 
	mul r1, r2
	mov r2, r10
	ldr r2, [r2,#oToolkit_S_Chip_2002178_Ptr]
	add r1, r1, r2
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#8]
	cmp r0, r7
	ble loc_813CEF2
	mov r0, #0
	mov r1, r6
	mov r2, #0xff
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_813CEF2:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813CEA0

	thumb_local_start
sub_813CEF8:
	push {r4,lr}
	mov r4, r0
	mov r2, r1
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r2, r4
	bl sub_813CD4C
	pop {r4,pc}
	thumb_func_end sub_813CEF8

	thumb_local_start
sub_813CF10:
	push {r4,r6,lr}
	mov r4, r0
	mov r6, r1
	bl sub_813CDD8
	pop {r4,r6,pc}
	thumb_func_end sub_813CF10

	thumb_local_start
sub_813CF1C:
	push {lr}
	mov r2, r0
	mov r0, #0
	mov r1, #0x16
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CF1C

	thumb_local_start
sub_813CF2C:
	push {lr}
	mov r2, r0
	mov r0, #0
	mov r1, #0x54 
	bl sub_80137E6
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CF2C

	thumb_local_start
sub_813CF3C:
	push {lr}
	mov r0, #0
	mov r1, #0x24 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813CF3C

	thumb_local_start
sub_813CF4C:
	push {r4,lr}
	mov r4, r0
	mov r0, #0
	mov r1, #0x18
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r3, r0
	mov r0, #0
	mov r1, #0x18
	add r2, r3, r4
	cmp r2, #7
	ble loc_813CF66
	mov r2, #7
loc_813CF66:
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r4,pc}
	thumb_func_end sub_813CF4C

	thumb_local_start
sub_813CF6C:
	push {r4,lr}
	mov r4, r0
	mov r0, #0
	mov r1, #0x19
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r3, r0
	mov r0, #0
	mov r1, #0x19
	add r2, r3, r4
	cmp r2, #7
	ble loc_813CF86
	mov r2, #7
loc_813CF86:
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r4,pc}
	thumb_func_end sub_813CF6C

	thumb_local_start
sub_813CF8C:
	push {lr}
	mov r2, r0
	mov r0, #0
	mov r1, #0x1a
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
byte_813CF9C: .byte 0x2
byte_813CF9D: .byte 0xFF
word_813CF9E: .hword 0x81
	.byte 0x61, 0x9, 0x86, 0x90, 0x45, 0x90, 0x61, 0xE9, 0x2, 0xFF
	.byte 0x81, 0x0, 0x90, 0x18, 0x18, 0x4F, 0x4F, 0x9, 0x61, 0x86
	.byte 0x2, 0xFF, 0x81, 0x0, 0x86, 0xE9, 0x86, 0x90, 0x18, 0x90
	.byte 0x9, 0xCC, 0x2, 0xFF, 0x82, 0x0, 0x9, 0xE9, 0x90, 0x18
	.byte 0xE9, 0x45, 0x90, 0x4F, 0x2, 0xFF, 0x82, 0x0, 0x45, 0x18
	.byte 0x18, 0x45, 0x45, 0x4F, 0x9, 0xE9, 0x2, 0xFF, 0x82, 0x0
	.byte 0x9, 0x90, 0x45, 0xE9, 0x61, 0x9, 0xE9, 0x18, 0x2, 0xFF
	.byte 0x83, 0x0, 0x18, 0xE9, 0x90, 0x61, 0x18, 0xE9, 0x9, 0x45
	.byte 0x2, 0xFF, 0x83, 0x0, 0xCC, 0xCC, 0x61, 0x45, 0xCC, 0x90
	.byte 0x3E, 0x4F, 0x2, 0xFF, 0x83, 0x0, 0x3E, 0xE9, 0x3E, 0x3E
	.byte 0x3E, 0x90, 0x4F, 0x18, 0x2, 0xFF, 0x84, 0x0, 0xE9, 0x61
	.byte 0x9, 0x4F, 0x4F, 0x61, 0xE9, 0xE9, 0x2, 0xFF, 0x84, 0x0
	.byte 0x4F, 0x61, 0x3E, 0x3E, 0x61, 0x45, 0xE9, 0x90, 0x2, 0xFF
	.byte 0x84, 0x0, 0x45, 0x4F, 0x86, 0x86, 0x4F, 0x90, 0x61, 0x9
	.byte 0x2, 0xFF, 0x84, 0x0, 0x86, 0x9, 0x90, 0xE9, 0x18, 0x90
	.byte 0x18, 0x86, 0x2, 0xFF, 0x85, 0x0, 0x3E, 0x90, 0x9, 0x61
	.byte 0xE9, 0x90, 0x9, 0xE9, 0x2, 0xFF, 0x85, 0x0, 0xE9, 0xE9
	.byte 0xE9, 0x45, 0x3E, 0xE9, 0x18, 0x90, 0x2, 0xFF, 0x85, 0x0
	.byte 0x90, 0x45, 0x45, 0x4F, 0x45, 0x45, 0x86, 0xE9, 0x2, 0xFF
	.byte 0x85, 0x0, 0x61, 0xCC, 0x18, 0x4F, 0x90, 0x86, 0x45, 0xE9
	.byte 0x3, 0x4, 0xFC, 0x0, 0x45, 0xE9, 0x9, 0xE9, 0x3E, 0x90
	.byte 0xCC, 0x3E, 0x3, 0x3, 0x0, 0x1, 0xCC, 0x61, 0xCC, 0x9
	.byte 0x45, 0x3E, 0x3E, 0xCC, 0x3, 0x2, 0x10, 0x1, 0x86, 0xCC
	.byte 0x45, 0x86, 0xCC, 0x86, 0x90, 0x61, 0x3, 0x5, 0x14, 0x1
	.byte 0x9, 0x3E, 0x9, 0x90, 0x45, 0x18, 0x90, 0x86, 0x3, 0x6
	.byte 0x18, 0x1, 0x4F, 0xE9, 0x18, 0x90, 0x61, 0x9, 0x18, 0x4F
	.byte 0x3, 0x6, 0x2C, 0x1, 0x45, 0xCC, 0x3E, 0x90, 0x4F, 0xCC
	.byte 0x45, 0x3E, 0x3, 0x5, 0x30, 0x1, 0xE9, 0x90, 0x86, 0x3E
	.byte 0x18, 0x90, 0x61, 0x9, 0x3, 0x3, 0x34, 0x1, 0x86, 0x9
	.byte 0x61, 0x61, 0xE9, 0x4F, 0x9, 0x61, 0x3, 0x1, 0x38, 0x1
	.byte 0x90, 0xE9, 0xE9, 0x18, 0x45, 0x86, 0x86, 0x9, 0x3, 0x1
	.byte 0x3C, 0x1, 0xCC, 0x90, 0x61, 0xCC, 0x86, 0x4F, 0x4F, 0x18
	.byte 0x3, 0x3, 0x40, 0x1, 0x18, 0x90, 0x4F, 0x18, 0x90, 0x4F
	.byte 0x45, 0x61, 0x3, 0x6, 0x44, 0x1, 0x3E, 0x61, 0x9, 0x90
	.byte 0xE9, 0x9, 0x61, 0x3E, 0x3, 0x1, 0x48, 0x1, 0x18, 0x18
	.byte 0x3E, 0x86, 0x45, 0x86, 0xCC, 0x18, 0x0, 0xC, 0x33, 0x0
	.byte 0x4F, 0x3E, 0x61, 0x61, 0x90, 0x45, 0x86, 0x61, 0x0, 0xE
	.byte 0x80, 0x0, 0x9, 0x45, 0x9, 0x18, 0x9, 0xE9, 0x9, 0x9
	.byte 0x0, 0xC, 0x76, 0x0, 0x61, 0x61, 0x4F, 0x9, 0x90, 0x45
	.byte 0xCC, 0x18, 0x0, 0x16, 0x11, 0x0, 0x45, 0x90, 0xCC, 0x45
	.byte 0xCC, 0x61, 0x18, 0x9, 0x0, 0x1A, 0xA7, 0x0, 0x86, 0x61
	.byte 0x45, 0x45, 0x4F, 0x90, 0x90, 0xE9, 0x0, 0x6, 0xB9, 0x0
	.byte 0xE9, 0x9, 0x90, 0x3E, 0x86, 0x3E, 0x3E, 0x3E, 0x0, 0x1A
	.byte 0xC5, 0x0, 0x3E, 0x61, 0x9, 0x61, 0xE9, 0x86, 0x4F, 0xE9
	.byte 0x0, 0x1A, 0xC6, 0x0, 0x90, 0x90, 0x61, 0xE9, 0xCC, 0x18
	.byte 0x90, 0x9, 0x0, 0xC, 0xC9, 0x0, 0xCC, 0x86, 0x9, 0xCC
	.byte 0xCC, 0xCC, 0x86, 0x90, 0x0, 0x18, 0xA1, 0x0, 0x9, 0x18
	.byte 0x4F, 0x90, 0x45, 0x86, 0xE9, 0xCC, 0x0, 0x1A, 0x77, 0x0
	.byte 0x4F, 0xE9, 0x18, 0x90, 0x90, 0x18, 0x4F, 0xE9, 0x0, 0x15
	.byte 0x8E, 0x0, 0x18, 0x45, 0x86, 0x9, 0x61, 0x3E, 0x61, 0x18
	.byte 0x0, 0x7, 0xC7, 0x0, 0xE9, 0x9, 0x3E, 0x90, 0xE9, 0x61
	.byte 0xE9, 0xE9, 0x0, 0x1A, 0xE3, 0x0, 0x45, 0xCC, 0x90, 0x3E
	.byte 0x90, 0x3E, 0x3E, 0xCC, 0x0, 0x1A, 0xE6, 0x0, 0x86, 0x3E
	.byte 0x90, 0xCC, 0x90, 0x18, 0x45, 0x90, 0x0, 0x1A, 0xE9, 0x0
	.byte 0x18, 0x18, 0xE9, 0x45, 0x3E, 0x4F, 0x3E, 0x45, 0x0, 0x1A
	.byte 0xEC, 0x0, 0x61, 0x90, 0x86, 0x61, 0x9, 0x18, 0x90, 0x86
	.byte 0x0, 0x1A, 0xEF, 0x0, 0xE9, 0xCC, 0x3E, 0x9, 0x3E, 0x9
	.byte 0x4F, 0x18, 0x0, 0x1A, 0xF2, 0x0, 0x18, 0x45, 0x9, 0x3E
	.byte 0xCC, 0x9, 0xE9, 0x45, 0x0, 0x1A, 0xF5, 0x0, 0x4F, 0x9
	.byte 0x18, 0xCC, 0x3E, 0x45, 0x9, 0xE9, 0x0, 0x1A, 0xF8, 0x0
	.byte 0x3E, 0x3E, 0xCC, 0xE9, 0x9, 0x90, 0xCC, 0x45, 0x0, 0x1A
	.byte 0xFB, 0x0, 0x45, 0x3E, 0x90, 0x45, 0x90, 0x61, 0x9, 0x61
	.byte 0x0, 0x1A, 0xFE, 0x0, 0x9, 0xE9, 0x61, 0x45, 0x90, 0x4F
	.byte 0x4F, 0x4F, 0x0, 0x1A, 0x1, 0x1, 0xCC, 0x90, 0x4F, 0x45
	.byte 0x4F, 0x90, 0xE9, 0x9, 0x0, 0x1A, 0x4, 0x1, 0x86, 0xCC
	.byte 0x86, 0x45, 0x3E, 0x61, 0xCC, 0x9, 0x1, 0xFF, 0x53, 0x0
	.byte 0x9, 0x9, 0x61, 0x86, 0x9, 0x90, 0xCC, 0x45, 0x1, 0xFF
	.byte 0x51, 0x0, 0x90, 0x45, 0xE9, 0x9, 0x4F, 0xE9, 0x45, 0x3E
	.byte 0x1, 0xFF, 0x55, 0x0, 0x3E, 0xE9, 0xCC, 0x18, 0x4F, 0x18
	.byte 0xCC, 0x90, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
byte_813D260: .byte 0x0, 0xFF, 0xF, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x0, 0xFF, 0x10, 0x0, 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0xE0, 0x0, 0x6, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x10, 0x1, 0x8, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x16, 0x1, 0xA, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x14, 0x1, 0xC, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x16, 0x1, 0xE
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x14, 0x1
	.byte 0x10, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_813D2CC: .byte 0x0, 0xFF, 0x10, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0x11, 0x0, 0x4, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xE1, 0x0, 0x6, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x11, 0x1
	.byte 0x8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF
	.byte 0x16, 0x1, 0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x0, 0xFF, 0x13, 0x1, 0xC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0x17, 0x1, 0xE, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x14, 0x1, 0x10, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_813D338: .byte 0x0, 0xFF, 0x11, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0x12, 0x0, 0x4, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xE1, 0x0, 0x6, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x11, 0x1
	.byte 0x8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF
	.byte 0x17, 0x1, 0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x0, 0xFF, 0x14, 0x1, 0xC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0x18, 0x1, 0xE, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x15, 0x1, 0x10, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_813D3A4: .byte 0x0, 0xFF, 0x11, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0x12, 0x0, 0x4, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xE2, 0x0, 0x6, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x12, 0x1
	.byte 0x8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF
	.byte 0x18, 0x1, 0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x0, 0xFF, 0x14, 0x1, 0xC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0xFF, 0x99, 0x0, 0xE, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x15, 0x1, 0x10, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_813D410: .byte 0x3E, 0x45, 0xCC, 0x86, 0x90, 0x18, 0x4F, 0x9, 0x61
	.byte 0xE9, 0x0, 0x0
	thumb_func_end sub_813CF8C

	thumb_func_start sub_813D41C
sub_813D41C:
	push {r5-r7,lr}
	ldr r7, off_813D480 // =byte_813CF9C 
	ldr r6, off_813D484 // =byte_813D410 
	mov r4, r0
	mov r5, #0
loc_813D426:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_813D472
	mov r3, r7
	add r3, #4
	mov r2, #0
loc_813D432:
	ldrb r0, [r3,r2]
	ldrb r1, [r4,r2]
	ldrb r1, [r6,r1]
	cmp r0, r1
	bne loc_813D444
	add r2, #1
	cmp r2, #8
	blt loc_813D432
	b loc_813D44A
loc_813D444:
	add r5, #1
	add r7, #0xc
	b loc_813D426
loc_813D44A:
	ldr r4, dword_813D488 // =0x2620 
	add r4, r4, r5
	mov r0, r4
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_813D466
	// bitfield
	mov r0, r4
	bl SetEventFlag
	mov r0, #1
	ldrb r1, [r7]
	ldrh r2, [r7,#2]
	ldrb r3, [r7,#1]
	pop {r5-r7,pc}
loc_813D466:
	mov r0, #2
	mov r1, #0xff
	mov r2, #0xff
	mov r3, #0xff
	mov r4, #0xff
	pop {r5-r7,pc}
loc_813D472:
	mov r0, #0
	mov r1, #0xff
	mov r2, #0xff
	mov r3, #0xff
	mov r4, #0xff
	pop {r5-r7,pc}
	.byte 0, 0
off_813D480: .word byte_813CF9C
off_813D484: .word byte_813D410
dword_813D488: .word 0x2620
	thumb_func_end sub_813D41C

	thumb_func_start sub_813D48C
sub_813D48C:
	push {r4-r7,lr}
	push {r0}
	bl sub_802D15E
	mov r2, r0
	pop {r0}
	ldr r3, off_813D4F4 // =dword_813D4FC 
	ldrb r3, [r3,r0]
	sub r2, r2, r3
	bge loc_813D4A4
	mov r7, #0
	b loc_813D4CC
loc_813D4A4:
	push {r0}
	mov r0, r2
	bl sub_802D158
	pop {r0}
	mov r7, #1
	ldr r4, off_813D4E0 // =off_813D4E4 
	lsl r0, r0, #2
	ldr r4, [r4,r0]
	bl GetRNG2 // () -> int
	mov r1, #0xf
	and r0, r1
	ldr r1, off_813D4F8 // =byte_813D500 
	ldrb r0, [r1,r0]
	lsl r0, r0, #2
	ldr r1, off_813D4D0 // =off_813D4D4 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_813D4CC:
	mov r0, r7
	pop {r4-r7,pc}
off_813D4D0: .word off_813D4D4
off_813D4D4: .word sub_813D510+1
	.word sub_813D568+1
	.word sub_813D598+1
off_813D4E0: .word off_813D4E4
off_813D4E4: .word byte_813D260
	.word byte_813D2CC
	.word byte_813D338
	.word byte_813D3A4
off_813D4F4: .word dword_813D4FC
off_813D4F8: .word byte_813D500
dword_813D4FC: .word 0x321E140A
byte_813D500: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_813D48C

	thumb_local_start
sub_813D510:
	push {r4-r7,lr}
	bl GetRNG2 // () -> int
	mov r1, #0xf
	and r0, r1
	mov r6, r0
	mov r3, #0
loc_813D51E:
	mov r0, #0xc
	mul r0, r3
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0xff
	beq loc_813D538
	tst r0, r0
	bne loc_813D534
	ldrb r0, [r5,#4]
	cmp r0, r6
	bgt loc_813D538
loc_813D534:
	add r3, #1
	b loc_813D51E
loc_813D538:
	ldrb r1, [r5]
	ldrh r2, [r5,#2]
	push {r0-r2,r4}
	mov r4, #0
	mov r6, #0
	// idx
	mov r0, r2
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	mov r7, r0
	bl GetRNG2 // () -> int
	mov r1, #3
	and r0, r1
	add r6, r6, r0
loc_813D554:
	ldrb r3, [r7,r6]
	cmp r3, #0xff
	bne loc_813D564
	add r6, #1
	cmp r6, #0
	ble loc_813D554
	mov r6, #0
	b loc_813D554
loc_813D564:
	pop {r0-r2,r4}
	pop {r4-r7,pc}
	thumb_func_end sub_813D510

	thumb_local_start
sub_813D568:
	push {r4-r7,lr}
	bl GetRNG2 // () -> int
	mov r1, #0xf
	and r0, r1
	mov r6, r0
	mov r3, #0
loc_813D576:
	mov r0, #0xc
	mul r0, r3
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0xff
	beq loc_813D590
	cmp r0, #1
	bne loc_813D58C
	ldrb r0, [r5,#4]
	cmp r0, r6
	bgt loc_813D590
loc_813D58C:
	add r3, #1
	b loc_813D576
loc_813D590:
	ldrb r1, [r5]
	ldrh r2, [r5,#2]
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_813D568

	thumb_local_start
sub_813D598:
	push {r4-r7,lr}
	bl GetRNG2 // () -> int
	mov r1, #0xf
	and r0, r1
	mov r6, r0
	mov r3, #0
loc_813D5A6:
	mov r0, #0xc
	mul r0, r3
	add r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #0xff
	beq loc_813D5C0
	cmp r0, #2
	bne loc_813D5BC
	ldrb r0, [r5,#4]
	cmp r0, r6
	bgt loc_813D5C0
loc_813D5BC:
	add r3, #1
	b loc_813D5A6
loc_813D5C0:
	ldrb r1, [r5]
	ldrh r2, [r5,#2]
	ldrb r3, [r5,#1]
	pop {r4-r7,pc}
	thumb_func_end sub_813D598

	thumb_func_start sub_813D5C8
sub_813D5C8:
	ldr r1, off_813D5D8 // =byte_200BC50 
	strb r0, [r1,#0x6] // (byte_200BC56 - 0x200bc50)
	mov pc, lr
	.byte 0, 0
	thumb_func_end sub_813D5C8

	thumb_func_start sub_813D5D0
sub_813D5D0:
	ldr r1, off_813D5D8 // =byte_200BC50 
	ldrb r0, [r1,#0x6] // (byte_200BC56 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
off_813D5D8: .word byte_200BC50
	thumb_func_end sub_813D5D0

	thumb_func_start sub_813D5DC
sub_813D5DC:
	push {lr}
	bl sub_814692C
	pop {pc}
	thumb_func_end sub_813D5DC

	push {r4,lr}
	pop {r4,pc}
	thumb_local_start
sub_813D5E8:
	ldr r1, off_813D608 // =byte_200AF80 
	ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	orr r2, r0
	strb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_813D5E8

	ldr r1, off_813D608 // =byte_200AF80 
	ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	bic r2, r0
	strb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	mov pc, lr
	.byte 0, 0
	ldr r1, off_813D608 // =byte_200AF80 
	ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	tst r2, r0
	mov pc, lr
off_813D608: .word byte_200AF80
	thumb_func_start sub_813D60C
sub_813D60C:
	push {lr}
	ldr r1, off_813D618 // =byte_200BC50 
	ldrb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	tst r0, r0
	pop {pc}
	.balign 4, 0x00
off_813D618: .word byte_200BC50
	thumb_func_end sub_813D60C

	push {lr}
	ldr r1, off_813D628 // =byte_200BC50 
	mov r0, #0
	strb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	pop {pc}
	.balign 4, 0x00
off_813D628: .word byte_200BC50
	thumb_local_start
sub_813D62C:
	push {lr}
	ldr r1, off_813D634 // =byte_200BC50 
	strb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	pop {pc}
off_813D634: .word byte_200BC50
	thumb_func_end sub_813D62C

	thumb_func_start sub_813D638
sub_813D638:
	push {lr}
	ldr r0, off_813D644 // =byte_2009470 
	ldrb r0, [r0]
	tst r0, r0
	pop {pc}
	.balign 4, 0x00
off_813D644: .word byte_2009470
	thumb_func_end sub_813D638

	thumb_func_start sub_813D648
sub_813D648:
	push {lr}
	bl sub_8149718
	ldr r1, byte_813D654 // =0x1 
	cmp r0, r1
	pop {pc}
byte_813D654: .byte 0x1, 0x80, 0x0, 0x0, 0x10, 0xB5, 0x9, 0xF0, 0xD, 0xFC, 0x10
	.byte 0xBD
	.word byte_200AF80
	.word unk_200FFF0
	.word unk_2009480
	thumb_func_end sub_813D648

	thumb_func_start sub_813D66C
sub_813D66C:
	push {r4,lr}
	bl sub_8147B3C
	pop {r4,pc}
	.word byte_200AF80
	.word unk_200FFF0
	.word unk_2009480
	thumb_func_end sub_813D66C

	push {lr}
	ldr r0, off_813D68C // =byte_200AF80 
	mov r1, #0x18
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
off_813D68C: .word byte_200AF80
	push {lr}
	push {r0}
	ldr r1, off_813D6C0 // =off_813D6C4 
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	tst r1, r1
	beq loc_813D6A2
	mov lr, pc
	bx r1
loc_813D6A2:
	pop {r0}
	ldr r3, off_813D6B8 // =byte_200AF80 
	ldr r2, off_813D6BC // =byte_200DD10 
	strb r0, [r2,#0x1] // (byte_200DD11 - 0x200dd10)
	str r1, [r2,#0x4] // (byte_200DD14 - 0x200dd10)
	ldrb r0, [r3,#0x3] // (byte_200AF83 - 0x200af80)
	strb r0, [r2]
	add r0, #1
	strb r0, [r3,#0x3] // (byte_200AF83 - 0x200af80)
	pop {pc}
	.balign 4, 0x00
off_813D6B8: .word byte_200AF80
off_813D6BC: .word byte_200DD10
off_813D6C0: .word off_813D6C4
off_813D6C4: .word sub_813D6DC+1
	.word 0x0
	.word sub_813D6F4+1
	.word 0x0
	.word sub_813D714+1
	.word 0x0
	thumb_local_start
sub_813D6DC:
	push {r4,lr}
	mov r0, #0
	bl sub_802D064
	ldrb r4, [r0,#0xc]
	ldrb r2, [r0,#0xe]
	lsl r2, r2, #8
	orr r4, r2
	lsl r1, r0, #0x10
	orr r1, r4
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_813D6DC

	thumb_local_start
sub_813D6F4:
	push {lr}
	mov r0, #0
	bl sub_802D064
	mov r2, #3
	mov r1, #0
loc_813D700:
	lsl r1, r1, #4
	ldrb r3, [r0,r2]
	orr r1, r3
	sub r2, #1
	bge loc_813D700
	mov r3, #0
	lsl r3, r3, #0x10
	orr r1, r3
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813D6F4

	thumb_local_start
sub_813D714:
	push {lr}
	mov r0, #0
	bl sub_802D064
	ldrh r1, [r0,#0x14]
	ldrb r2, [r0,#0x11]
	lsl r2, r2, #0x10
	orr r1, r2
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813D714

	push {lr}
	mov r0, #0
	bl sub_802D064
	mov r2, #1
	ldrb r1, [r0,#9]
	bic r1, r2
	strb r1, [r0,#9]
	mov r2, #0
	str r2, [r0,#4]
	pop {pc}
	.byte 0, 0
	push {lr}
	mov r0, #0
	bl sub_802D064
	ldr r1, [r0,#0x1c]
	mov r0, #0x80
	and r0, r1
	pop {pc}
	thumb_func_start sub_813D750
sub_813D750:
	push {lr}
	ldr r0, off_813D75C // =byte_200BC50 
	mov r1, #0xb
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	pop {pc}
	.balign 4, 0x00
off_813D75C: .word byte_200BC50
	thumb_func_end sub_813D750

	thumb_func_start sub_813D760
sub_813D760:
	push {lr}
	ldr r0, off_813D76C // =byte_200BC50 
	mov r1, #0
	strb r1, [r0,#0x5] // (byte_200BC55 - 0x200bc50)
	pop {pc}
	.balign 4, 0x00
off_813D76C: .word byte_200BC50
	thumb_func_end sub_813D760

	push {r4,lr}
	mov r0, #1
	ldr r4, off_813D788 // =byte_200AF80 
	ldrb r1, [r4,#0x2] // (byte_200AF82 - 0x200af80)
	tst r1, r1
	bne loc_813D782
	mov r1, #1
	strb r1, [r4,#0x2] // (byte_200AF82 - 0x200af80)
	mov r0, #0
loc_813D782:
	tst r0, r0
	pop {r4,pc}
	.balign 4, 0x00
off_813D788: .word byte_200AF80
	thumb_func_start sub_813D78C
sub_813D78C:
	push {lr}
	ldr r2, off_813D79C // =byte_813D7A0 
	lsl r0, r0, #2
	ldr r0, [r2,r0]
	ldr r2, [r1,#0x1c]
	orr r2, r0
	str r2, [r1,#0x1c]
	pop {pc}
off_813D79C: .word byte_813D7A0
byte_813D7A0: .byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x10, 0x0, 0x0, 0x0
	.byte 0x40, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0
	thumb_func_end sub_813D78C

	thumb_func_start sub_813D7B8
sub_813D7B8:
	push {r5,r7,lr}
	mov r7, r0
	mov r0, #0
	bl sub_802D064
	mov r5, r0
	ldrb r0, [r7,#1]
	cmp r0, #0x14
	bgt loc_813D7DC
	lsl r0, r0, #2
	ldr r1, off_813D7E4 // =off_813D7E8 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	ldr r4, off_813D800 // =byte_200AF80 
	mov r0, #0
	strb r0, [r4,#0x1] // (byte_200AF81 - 0x200af80)
	pop {r5,r7,pc}
loc_813D7DC:
	mov r0, #1
	bl sub_813D5E8
	pop {r5,r7,pc}
off_813D7E4: .word off_813D7E8
off_813D7E8: .word sub_813D804+1
	.word sub_813D838+1
	.word sub_813D848+1
	.word sub_813D87C+1
	.word sub_813D88C+1
	.word sub_813D8AC+1
off_813D800: .word byte_200AF80
	thumb_func_end sub_813D7B8

	thumb_local_start
sub_813D804:
	push {r4,lr}
	ldr r0, [r7,#4]
	mov r1, #0xff
	and r1, r0
	strb r1, [r5,#0xd]
	ldr r0, [r7,#4]
	lsr r0, r0, #8
	mov r1, #0xff
	and r1, r0
	strb r1, [r5,#0xf]
	mov r2, #0x10
	add r2, r2, r0
	ldr r0, [r7,#4]
	lsr r0, r0, #0x10
	mov r3, #4
loc_813D822:
	mov r1, #0xf
	and r1, r0
	ldrb r4, [r2]
	add r1, r1, r4
	strb r1, [r2]
	lsr r0, r0, #4
	add r2, #1
	sub r3, #1
	bne loc_813D822
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_813D804

	thumb_local_start
sub_813D838:
	push {lr}
	ldr r0, dword_813D844 // =0x2 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	pop {pc}
dword_813D844: .word 0x2
	thumb_func_end sub_813D838

	thumb_local_start
sub_813D848:
	push {r4,lr}
	ldr r0, dword_813D878 // =0x8 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r7,#4]
	lsr r1, r0, #0x10
	mov r2, #1
	and r1, r2
	strb r1, [r5,#9]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xf
	mov r3, #4
loc_813D864:
	mov r2, r0
	and r2, r1
	ldrb r4, [r5,r3]
	add r2, r2, r4
	strb r2, [r5,r3]
	add r3, #1
	lsr r0, r0, #4
	tst r0, r0
	bne loc_813D864
	pop {r4,pc}
dword_813D878: .word 0x8
	thumb_func_end sub_813D848

	thumb_local_start
sub_813D87C:
	push {lr}
	ldr r0, dword_813D888 // =0x20 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	pop {pc}
dword_813D888: .word 0x20
	thumb_func_end sub_813D87C

	thumb_local_start
sub_813D88C:
	push {lr}
	ldr r0, off_813D8A8 // =0x80 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r7,#4]
	lsr r1, r0, #0x10
	mov r2, #3
	and r1, r2
	strb r1, [r5,#0x12]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r5,#0x18]
	pop {pc}
off_813D8A8: .word 0x80
	thumb_func_end sub_813D88C

	thumb_local_start
sub_813D8AC:
	push {lr}
	ldr r0, off_813D8C0 // =0x200 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	ldr r0, [r7,#4]
	mov r1, #3
	and r0, r1
	strb r0, [r5,#0xb]
	pop {pc}
off_813D8C0: .word 0x200
	thumb_func_end sub_813D8AC

	thumb_func_start sub_813D8C4
sub_813D8C4:
	ldr r0, off_813D8CC // =eCamera+80 
	mov r1, #4
	str r1, [r0,#0x58] // (dword_2009A28 - 0x20099d0)
	mov pc, lr
off_813D8CC: .word eCamera+0x50 // eCamera.unk_50
	thumb_func_end sub_813D8C4

	thumb_func_start sub_813D8D0
sub_813D8D0:
	push {lr}
	mov r0, #0x10
	bl sub_803CB00
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_813D8D0

	push {lr}
	bl GetRNG2 // () -> int
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, off_813D908 // =unk_2010150 
	mov r2, #0
loc_813D8EA:
	ldrb r1, [r0,r2]
	tst r1, r1
	beq loc_813D8F6
	add r2, #1
	cmp r2, #0xb
	blt loc_813D8EA
loc_813D8F6:
	mov r3, r4
	lsr r3, r3, #8
	strb r3, [r0,r2]
	add r2, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	strb r4, [r0,r2]
	pop {pc}
	.balign 4, 0x00
off_813D908: .word unk_2010150
	thumb_func_start sub_813D90C
sub_813D90C:
	ldr r1, off_813D974 // =byte_200BC50 
	strb r0, [r1,#0x7] // (byte_200BC57 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_813D90C

	ldr r1, off_813D974 // =byte_200BC50 
	strb r0, [r1,#0x1] // (byte_200BC51 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
	thumb_func_start sub_813D91C
sub_813D91C:
	ldr r1, off_813D974 // =byte_200BC50 
	ldrb r0, [r1,#0x1] // (byte_200BC51 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_813D91C

	thumb_func_start sub_813D924
sub_813D924:
	ldr r0, off_813DB08 // =0x214 
	ldr r1, off_813D974 // =byte_200BC50 
	ldrb r1, [r1,#0x7] // (byte_200BC57 - 0x200bc50)
	tst r1, r1
	bne locret_813D930
	mov r0, #0x2b 
locret_813D930:
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end sub_813D924

	thumb_func_start sub_813D934
sub_813D934:
	push {lr}
	ldr r1, off_813D974 // =byte_200BC50 
	ldrb r2, [r1]
	strb r0, [r1]
	cmp r0, r2
	beq locret_813D94A
	mov r0, #0
	strb r0, [r1,#0x2] // (byte_200BC52 - 0x200bc50)
	strb r0, [r1,#0x3] // (byte_200BC53 - 0x200bc50)
	strb r0, [r1,#0x4] // (byte_200BC54 - 0x200bc50)
	strh r0, [r1,#0xa] // (word_200BC5A - 0x200bc50)
locret_813D94A:
	pop {pc}
	thumb_func_end sub_813D934

	thumb_func_start sub_813D94C
sub_813D94C:
	push {lr}
	mov r2, #0
	ldr r1, off_813D974 // =byte_200BC50 
	ldrb r1, [r1]
	cmp r1, r0
	beq loc_813D95A
	mov r2, #1
loc_813D95A:
	mov r0, r2
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_813D94C

	thumb_func_start sub_813D960
sub_813D960:
	push {r4,r7,lr}
	ldr r7, off_813D974 // =byte_200BC50 
	ldrb r4, [r7,#0x7] // (byte_200BC57 - 0x200bc50)
	// memBlock
	mov r0, r7
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	strb r4, [r7,#0x7] // (byte_200BC57 - 0x200bc50)
	pop {r4,r7,pc}
	.balign 4, 0x00
off_813D974: .word byte_200BC50
	thumb_func_end sub_813D960

	thumb_func_start sub_813D978
sub_813D978:
	push {lr}
	ldr r0, off_813D988 // =byte_200BC50 
	mov r1, #9
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0
	bl sub_813D934
	pop {pc}
off_813D988: .word byte_200BC50
	thumb_func_end sub_813D978

	thumb_func_start sub_813D98C
sub_813D98C:
	push {lr}
	bl sub_813D978
	mov r0, #4
	ldr r1, off_813D99C // =eStruct200BC30 
	strb r0, [r1,#0xe] // (byte_200BC3E - 0x200bc30)
	pop {pc}
	.balign 4, 0x00
off_813D99C: .word eStruct200BC30
	thumb_func_end sub_813D98C

	thumb_func_start sub_813D9A0
sub_813D9A0:
	push {lr}
	ldr r1, off_813D9A8 // =byte_200BC50 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	pop {pc}
off_813D9A8: .word byte_200BC50
	thumb_func_end sub_813D9A0

	thumb_local_start
sub_813D9AC:
	push {r4,lr}
	ldr r0, off_813D9CC // =byte_200BC50 
	ldrb r2, [r0,#0x1] // (byte_200BC51 - 0x200bc50)
	lsl r2, r2, #2
	ldr r1, off_813D9D0 // =off_813D9D4 
	ldr r1, [r1,r2]
	mov lr, pc
	bx r1
	bl sub_813D9F4
	mov r4, r0
	cmp r4, #4
	beq locret_813D9CA
	bl sub_8146B70
locret_813D9CA:
	pop {r4,pc}
off_813D9CC: .word byte_200BC50
off_813D9D0: .word off_813D9D4
off_813D9D4: .word sub_813D9DC+1
	.word sub_813D9E8+1
	thumb_func_end sub_813D9AC

	thumb_local_start
sub_813D9DC:
	push {lr}
	bl sub_8148884
	bl sub_813DAF4
	pop {pc}
	thumb_func_end sub_813D9DC

	thumb_local_start
sub_813D9E8:
	push {lr}
	bl sub_8148FC0
	bl sub_813DAF4
	pop {pc}
	thumb_func_end sub_813D9E8

	thumb_local_start
sub_813D9F4:
	push {lr}
	mov r4, #2
	ldr r0, off_813DA08 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #1
	ble loc_813DA02
	mov r4, #4
loc_813DA02:
	mov r0, r4
	pop {pc}
	.balign 4, 0x00
off_813DA08: .word byte_20101B4
	thumb_func_end sub_813D9F4

	thumb_local_start
sub_813DA0C:
	push {r4,lr}
	ldr r4, off_813DB0C // =eStruct203F7D8 
	mov r0, #2
	strb r0, [r4,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	ldrb r0, [r4]
	tst r0, r0
	beq loc_813DA22
	bl sub_813D9AC
	strb r0, [r4,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	b locret_813DA36
loc_813DA22:
	ldr r0, off_813DB10 // =eStruct2036780 
	ldr r1, off_813DB14 // =unk_20399F0 
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r0, off_813DB18 // =eStruct2036780 
	ldr r1, off_813DB1C // =unk_2039A00 
	mov r2, #0x10
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
locret_813DA36:
	pop {r4,pc}
	thumb_func_end sub_813DA0C

	push {lr}
	ldr r3, off_813DA7C // =eCamera+80 
	ldrb r3, [r3,#0x6] // (eCamera.pad_56 - 0x20099d0)
	cmp r3, #1
	bne locret_813DA4C
	mov r2, r1
	mov r1, r0
	ldr r0, [r3,#0x34]
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
locret_813DA4C:
	pop {pc}
	.byte 0, 0
	push {lr}
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	push {r4,lr}
	mov r2, r1
	ldr r3, off_813DA7C // =eCamera+80 
	ldrb r0, [r3,#0x6] // (eCamera.pad_56 - 0x20099d0)
	cmp r0, #1
	bne locret_813DA78
	strb r1, [r7,#6]
	ldr r1, [r3,#0x38] // (eCamera.unk_88 - 0x20099d0)
	ldr r4, off_813DA80 // =byte_200BC50 
	ldrb r4, [r4,#0x1] // (byte_200BC51 - 0x200bc50)
	tst r4, r4
	beq loc_813DA72
	ldr r1, [r3,#0x3c] // (eCamera.unk_8C - 0x20099d0)
loc_813DA72:
	mov r2, #0xa
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
locret_813DA78:
	pop {r4,pc}
	.balign 4, 0x00
off_813DA7C: .word eCamera+0x50 // eCamera.unk_50
off_813DA80: .word byte_200BC50
	thumb_func_start sub_813DA84
sub_813DA84:
	push {lr}
	// memBlock
	ldr r0, off_813DA90 // =byte_2010290 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
off_813DA90: .word byte_2010290
	thumb_func_end sub_813DA84

	thumb_func_start sub_813DA94
sub_813DA94:
	push {r4,r5,lr}
	mov r4, #1
	ldr r5, off_813DAB0 // =byte_200BC50 
	ldr r0, off_813DAB4 // =off_813DAB8 
	ldrb r1, [r5,#0x2] // (byte_200BC52 - 0x200bc50)
	cmp r1, #8
	beq loc_813DAAA
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r4, #0
loc_813DAAA:
	mov r0, r4
	pop {r4,r5,pc}
	.byte 0, 0
off_813DAB0: .word byte_200BC50
off_813DAB4: .word off_813DAB8
off_813DAB8: .word sub_813DAC0+1
	.word sub_813DADC+1
	thumb_func_end sub_813DA94

	thumb_local_start
sub_813DAC0:
	push {lr}
	bl start_800027C
	bl sub_81465BC
	tst r0, r0
	beq loc_813DAD4
	ldrb r0, [r5,#2]
	add r0, #4
	strb r0, [r5,#2]
loc_813DAD4:
	mov r0, #0
	bl sub_813D62C
	pop {pc}
	thumb_func_end sub_813DAC0

	thumb_local_start
sub_813DADC:
	push {r4,r6,lr}
	mov r4, #1
	mov r6, #8
	bl sub_813D648
	beq loc_813DAEA
	mov r4, #2
loc_813DAEA:
	strb r6, [r5,#2]
	mov r0, r4
	bl sub_813D62C
	pop {r4,r6,pc}
	thumb_func_end sub_813DADC

	thumb_local_start
sub_813DAF4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r1, [r0]
	ldr r0, off_813DB04 // =eStruct2036780 
	strh r1, [r0]
	strh r1, [r0,#0xa] // (dword_2036788+2 - 0x2036780)
	pop {pc}
off_813DB04: .word eStruct2036780
off_813DB08: .word 0x214
off_813DB0C: .word eStruct203F7D8
off_813DB10: .word eStruct2036780
off_813DB14: .word unk_20399F0
off_813DB18: .word eStruct2036780
off_813DB1C: .word unk_2039A00
	thumb_func_end sub_813DAF4

	push {lr}
	pop {pc}
	thumb_func_start sub_813DB24
sub_813DB24:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp,#4]
	lsl r0, r0, #2
	mov r7, r0
	bl sub_803DD30
	beq loc_813DB36
	mov r0, #1
loc_813DB36:
	ldr r4, off_813DBA0 // =eStruct200F360 
	strb r0, [r4]
	mov r5, #0
loc_813DB3C:
	ldr r1, off_813DBBC // =eCamera+80 
	ldr r6, [r1,#0x3c] // (eCamera.unk_8C - 0x20099d0)
	tst r5, r5
	bne loc_813DB46
	ldr r6, [r1,#0x38] // (eCamera.unk_88 - 0x20099d0)
loc_813DB46:
	ldr r0, [r6]
	ldr r1, dword_813DBA4 // =0x42523545 
	cmp r0, r1
	bne loc_813DB58
	ldrh r0, [r6,#4]
	ldr r1, off_813DBA8 // =byte_813DBAC 
	ldr r1, [r1,r7]
	cmp r0, r1
	bne loc_813DB58
loc_813DB58:
	add r5, #1
	cmp r5, #2
	blt loc_813DB3C
	ldr r1, off_813DBBC // =eCamera+80 
	ldr r6, [r1,#0x38] // (eCamera.unk_88 - 0x20099d0)
	str r6, [sp]
	ldr r6, [r1,#0x3c] // (eCamera.unk_8C - 0x20099d0)
	ldrb r5, [r4]
	tst r5, r5
	beq loc_813DB72
	ldr r6, [r1,#0x3c] // (eCamera.unk_8C - 0x20099d0)
	str r6, [sp]
	ldr r6, [r1,#0x38] // (eCamera.unk_88 - 0x20099d0)
loc_813DB72:
	ldr r0, [r6]
	ldr r1, dword_813DBA4 // =0x42523545 
	cmp r0, r1
	bne loc_813DB96
	ldrh r0, [r6,#4]
	ldr r1, off_813DBA8 // =byte_813DBAC 
	ldr r1, [r1,r7]
	ldr r2, [sp,#4]
	tst r2, r2
	beq loc_813DB8E
	mov r2, #0xff
	lsl r2, r2, #8
	and r0, r2
	and r1, r2
loc_813DB8E:
	cmp r0, r1
	bne loc_813DB96
	mov r0, r6
	b loc_813DB98
loc_813DB96:
	mov r0, #0xff
loc_813DB98:
	ldr r1, [sp]
	add sp, sp, #8
	pop {r4-r7,pc}
	.byte 0, 0
off_813DBA0: .word eStruct200F360
dword_813DBA4: .word 0x42523545
off_813DBA8: .word byte_813DBAC
byte_813DBAC: .byte 0x0, 0x40, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0
off_813DBBC: .word eCamera+0x50 // eCamera.unk_50
byte_813DBC0: .byte 0x10, 0xB5, 0x4, 0x4C, 0x20, 0x81, 0xE1, 0x80, 0xA2
	.byte 0x80, 0x3, 0x48, 0x20, 0x60, 0x3C, 0x20, 0x60, 0x81
	.byte 0x10, 0xBD
	.word dword_200B1B0
	.word 0x42523545
byte_813DBDC: .byte 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
tileRefs_813DBE4: .hword 0x4200
	.byte 0x2, 0x42, 0x4, 0x42, 0x6, 0x42, 0x8, 0x42, 0xA, 0x42, 0xC
	.byte 0x42, 0xE, 0x42, 0x10, 0x42, 0x12, 0x42, 0x14, 0x42, 0x16, 0x42
	.byte 0x18, 0x42, 0x1A, 0x42, 0x1C, 0x42, 0x1E, 0x42, 0x20, 0x42, 0x22
	.byte 0x42, 0x24, 0x42, 0x26, 0x42, 0x28, 0x42, 0x2A, 0x42, 0x2C, 0x42
	.byte 0x1, 0x42, 0x3, 0x42, 0x5, 0x42, 0x7, 0x42, 0x9, 0x42, 0xB
	.byte 0x42, 0xD, 0x42, 0xF, 0x42, 0x11, 0x42, 0x13, 0x42, 0x15, 0x42
	.byte 0x17, 0x42, 0x19, 0x42, 0x1B, 0x42, 0x1D, 0x42, 0x1F, 0x42, 0x21
	.byte 0x42, 0x23, 0x42, 0x25, 0x42, 0x27, 0x42, 0x29, 0x42, 0x2B, 0x42
	.byte 0x2D, 0x42, 0x40, 0x52, 0x42, 0x52, 0x44, 0x52, 0x46, 0x52, 0x48
	.byte 0x52, 0x4A, 0x52, 0x4C, 0x52, 0x4E, 0x52, 0x50, 0x52, 0x52, 0x52
	.byte 0x54, 0x52, 0x56, 0x52, 0x58, 0x52, 0x5A, 0x52, 0x5C, 0x52, 0x5E
	.byte 0x52, 0x60, 0x52, 0x62, 0x52, 0x64, 0x52, 0x66, 0x52, 0x68, 0x52
	.byte 0x6A, 0x52, 0x6C, 0x52, 0x41, 0x52, 0x43, 0x52, 0x45, 0x52, 0x47
	.byte 0x52, 0x49, 0x52, 0x4B, 0x52, 0x4D, 0x52, 0x4F, 0x52, 0x51, 0x52
	.byte 0x53, 0x52, 0x55, 0x52, 0x57, 0x52, 0x59, 0x52, 0x5B, 0x52, 0x5D
	.byte 0x52, 0x5F, 0x52, 0x61, 0x52, 0x63, 0x52, 0x65, 0x52, 0x67, 0x52
	.byte 0x69, 0x52, 0x6B, 0x52, 0x6D, 0x52, 0x80, 0x42, 0x82, 0x42, 0x84
	.byte 0x42, 0x86, 0x42, 0x88, 0x42, 0x8A, 0x42, 0x8C, 0x42, 0x8E, 0x42
	.byte 0x90, 0x42, 0x92, 0x42, 0x94, 0x42, 0x96, 0x42, 0x98, 0x42, 0x9A
	.byte 0x42, 0x9C, 0x42, 0x9E, 0x42, 0xA0, 0x42, 0xA2, 0x42, 0xA4, 0x42
	.byte 0xA6, 0x42, 0xA8, 0x42, 0xAA, 0x42, 0xAC, 0x42, 0x81, 0x42, 0x83
	.byte 0x42, 0x85, 0x42, 0x87, 0x42, 0x89, 0x42, 0x8B, 0x42, 0x8D, 0x42
	.byte 0x8F, 0x42, 0x91, 0x42, 0x93, 0x42, 0x95, 0x42, 0x97, 0x42, 0x99
	.byte 0x42, 0x9B, 0x42, 0x9D, 0x42, 0x9F, 0x42, 0xA1, 0x42, 0xA3, 0x42
	.byte 0xA5, 0x42, 0xA7, 0x42, 0xA9, 0x42, 0xAB, 0x42, 0xAD, 0x42, 0xC0
	.byte 0x52, 0xC2, 0x52, 0xC4, 0x52, 0xC6, 0x52, 0xC8, 0x52, 0xCA, 0x52
	.byte 0xCC, 0x52, 0xCE, 0x52, 0xD0, 0x52, 0xD2, 0x52, 0xD4, 0x52, 0xD6
	.byte 0x52, 0xD8, 0x52, 0xDA, 0x52, 0xDC, 0x52, 0xDE, 0x52, 0xE0, 0x52
	.byte 0xE2, 0x52, 0xE4, 0x52, 0xE6, 0x52, 0xE8, 0x52, 0xEA, 0x52, 0xEC
	.byte 0x52, 0xC1, 0x52, 0xC3, 0x52, 0xC5, 0x52, 0xC7, 0x52, 0xC9, 0x52
	.byte 0xCB, 0x52, 0xCD, 0x52, 0xCF, 0x52, 0xD1, 0x52, 0xD3, 0x52, 0xD5
	.byte 0x52, 0xD7, 0x52, 0xD9, 0x52, 0xDB, 0x52, 0xDD, 0x52, 0xDF, 0x52
	.byte 0xE1, 0x52, 0xE3, 0x52, 0xE5, 0x52, 0xE7, 0x52, 0xE9, 0x52, 0xEB
	.byte 0x52, 0xED, 0x52, 0x0, 0x43, 0x2, 0x43, 0x4, 0x43, 0x6, 0x43
	.byte 0x8, 0x43, 0xA, 0x43, 0xC, 0x43, 0xE, 0x43, 0x10, 0x43, 0x12
	.byte 0x43, 0x14, 0x43, 0x16, 0x43, 0x18, 0x43, 0x1A, 0x43, 0x1C, 0x43
	.byte 0x1E, 0x43, 0x20, 0x43, 0x22, 0x43, 0x24, 0x43, 0x26, 0x43, 0x28
	.byte 0x43, 0x2A, 0x43, 0x2C, 0x43, 0x1, 0x43, 0x3, 0x43, 0x5, 0x43
	.byte 0x7, 0x43, 0x9, 0x43, 0xB, 0x43, 0xD, 0x43, 0xF, 0x43, 0x11
	.byte 0x43, 0x13, 0x43, 0x15, 0x43, 0x17, 0x43, 0x19, 0x43, 0x1B, 0x43
	.byte 0x1D, 0x43, 0x1F, 0x43, 0x21, 0x43, 0x23, 0x43, 0x25, 0x43, 0x27
	.byte 0x43, 0x29, 0x43, 0x2B, 0x43, 0x2D, 0x43, 0x40, 0x53, 0x42, 0x53
	.byte 0x44, 0x53, 0x46, 0x53, 0x48, 0x53, 0x4A, 0x53, 0x4C, 0x53, 0x4E
	.byte 0x53, 0x50, 0x53, 0x52, 0x53, 0x54, 0x53, 0x56, 0x53, 0x58, 0x53
	.byte 0x5A, 0x53, 0x5C, 0x53, 0x5E, 0x53, 0x60, 0x53, 0x62, 0x53, 0x64
	.byte 0x53, 0x66, 0x53, 0x68, 0x53, 0x6A, 0x53, 0x6C, 0x53, 0x41, 0x53
	.byte 0x43, 0x53, 0x45, 0x53, 0x47, 0x53, 0x49, 0x53, 0x4B, 0x53, 0x4D
	.byte 0x53, 0x4F, 0x53, 0x51, 0x53, 0x53, 0x53, 0x55, 0x53, 0x57, 0x53
	.byte 0x59, 0x53, 0x5B, 0x53, 0x5D, 0x53, 0x5F, 0x53, 0x61, 0x53, 0x63
	.byte 0x53, 0x65, 0x53, 0x67, 0x53, 0x69, 0x53, 0x6B, 0x53, 0x6D, 0x53
	.byte 0x80, 0x43, 0x82, 0x43, 0x84, 0x43, 0x86, 0x43, 0x88, 0x43, 0x8A
	.byte 0x43, 0x8C, 0x43, 0x8E, 0x43, 0x90, 0x43, 0x92, 0x43, 0x94, 0x43
	.byte 0x96, 0x43, 0x98, 0x43, 0x9A, 0x43, 0x9C, 0x43, 0x9E, 0x43, 0xA0
	.byte 0x43, 0xA2, 0x43, 0xA4, 0x43, 0xA6, 0x43, 0xA8, 0x43, 0xAA, 0x43
	.byte 0xAC, 0x43, 0x81, 0x43, 0x83, 0x43, 0x85, 0x43, 0x87, 0x43, 0x89
	.byte 0x43, 0x8B, 0x43, 0x8D, 0x43, 0x8F, 0x43, 0x91, 0x43, 0x93, 0x43
	.byte 0x95, 0x43, 0x97, 0x43, 0x99, 0x43, 0x9B, 0x43, 0x9D, 0x43, 0x9F
	.byte 0x43, 0xA1, 0x43, 0xA3, 0x43, 0xA5, 0x43, 0xA7, 0x43, 0xA9, 0x43
	.byte 0xAB, 0x43, 0xAD, 0x43, 0xC0, 0x53, 0xC2, 0x53, 0xC4, 0x53, 0xC6
	.byte 0x53, 0xC8, 0x53, 0xCA, 0x53, 0xCC, 0x53, 0xCE, 0x53, 0xD0, 0x53
	.byte 0xD2, 0x53, 0xD4, 0x53, 0xD6, 0x53, 0xD8, 0x53, 0xDA, 0x53, 0xDC
	.byte 0x53, 0xDE, 0x53, 0xE0, 0x53, 0xE2, 0x53, 0xE4, 0x53, 0xE6, 0x53
	.byte 0xE8, 0x53, 0xEA, 0x53, 0xEC, 0x53, 0xC1, 0x53, 0xC3, 0x53, 0xC5
	.byte 0x53, 0xC7, 0x53, 0xC9, 0x53, 0xCB, 0x53, 0xCD, 0x53, 0xCF, 0x53
	.byte 0xD1, 0x53, 0xD3, 0x53, 0xD5, 0x53, 0xD7, 0x53, 0xD9, 0x53, 0xDB
	.byte 0x53, 0xDD, 0x53, 0xDF, 0x53, 0xE1, 0x53, 0xE3, 0x53, 0xE5, 0x53
	.byte 0xE7, 0x53, 0xE9, 0x53, 0xEB, 0x53, 0xED, 0x53
byte_813DEC4: .byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x20, 0x60, 0x22, 0x60
	.byte 0x24, 0x60, 0x26, 0x60, 0x28, 0x60, 0x2A, 0x60, 0x2C, 0x60
	.byte 0x2E, 0x60, 0x30, 0x60, 0x32, 0x60, 0x34, 0x60, 0x36, 0x60
	.byte 0x38, 0x60, 0x3A, 0x60, 0x3C, 0x60, 0x0, 0x60, 0x3E, 0x60
	.byte 0x40, 0x60, 0x42, 0x60, 0x44, 0x60, 0x46, 0x60, 0x48, 0x60
	.byte 0x4A, 0x60, 0x4C, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x21, 0x60, 0x23, 0x60, 0x25, 0x60, 0x27, 0x60, 0x29, 0x60
	.byte 0x2B, 0x60, 0x2D, 0x60, 0x2F, 0x60, 0x31, 0x60, 0x33, 0x60
	.byte 0x35, 0x60, 0x37, 0x60, 0x39, 0x60, 0x3B, 0x60, 0x3D, 0x60
	.byte 0x0, 0x60, 0x3F, 0x60, 0x41, 0x60, 0x43, 0x60, 0x45, 0x60
	.byte 0x47, 0x60, 0x49, 0x60, 0x4B, 0x60, 0x4D, 0x60, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
tileRefs_813DF44: .hword 0x61E0, 0x61E2, 0x61E4, 0x61E6, 0x61E8, 0x61EA, 0x61EC, 0x61EE
	.hword 0x61F0, 0x61F2, 0x61F4, 0x61F6, 0x61E1, 0x61E3, 0x61E5, 0x61E7
	.hword 0x61E9, 0x61EB, 0x61ED, 0x61EF, 0x61F1, 0x61F3, 0x61F5, 0x61F7
off_813DF74: .word reqBBS_requestNames_textualData
	.word reqBBS_requestInfo_textOffsets
	.word 0x17A0
	.byte 0xA0, 0x19, 0x0, 0x0, 0xC0, 0xF, 0x0, 0x2, 0xF0, 0xF, 0x0, 0x2
	.byte 0x0, 0x14, 0x0, 0x2, 0x4, 0x82, 0x1, 0x2, 0x4, 0xA2, 0x1, 0x2
	.byte 0x4, 0x5A, 0x2, 0x2, 0x4, 0x9A, 0x2, 0x2, 0xE0, 0x17, 0x0, 0x0
	.byte 0xE0, 0x19, 0x0, 0x0, 0xC4, 0xF, 0x0, 0x2, 0xF4, 0xF, 0x0, 0x2
	.byte 0x40, 0x14, 0x0, 0x2, 0x4, 0x82, 0x1, 0x2, 0x4, 0xA2, 0x1, 0x2
	.byte 0x4, 0x5A, 0x2, 0x2, 0x4, 0x9A, 0x2, 0x2, 0x20, 0x18, 0x0, 0x0
	.byte 0x20, 0x1A, 0x0, 0x0, 0xC8, 0xF, 0x0, 0x2, 0xF8, 0xF, 0x0, 0x2
	.byte 0x80, 0x14, 0x0, 0x2, 0x4, 0x82, 0x1, 0x2, 0x4, 0xA2, 0x1, 0x2
	.byte 0x4, 0x5A, 0x2, 0x2, 0x4, 0x9A, 0x2, 0x2, 0x60, 0x18, 0x0, 0x0
	.byte 0x60, 0x1A, 0x0, 0x0, 0xCC, 0xF, 0x0, 0x2, 0xFC, 0xF, 0x0, 0x2
	.byte 0xC0, 0x14, 0x0, 0x2, 0x4, 0x82, 0x1, 0x2, 0x4, 0xA2, 0x1, 0x2
	.byte 0x4, 0x5A, 0x2, 0x2, 0x4, 0x9A, 0x2, 0x2, 0xA0, 0x18, 0x0, 0x0
	.byte 0xA0, 0x1A, 0x0, 0x0, 0xD0, 0xF, 0x0, 0x2, 0x0, 0x10, 0x0, 0x2
	.byte 0x0, 0x15, 0x0, 0x2, 0x4, 0x82, 0x1, 0x2, 0x4, 0xA2, 0x1, 0x2
	.byte 0x4, 0x5A, 0x2, 0x2, 0x4, 0x9A, 0x2, 0x2, 0xE0, 0x18, 0x0, 0x0
	.byte 0xE0, 0x1A, 0x0, 0x0, 0xD4, 0xF, 0x0, 0x2, 0x4, 0x10, 0x0, 0x2
	.byte 0x40, 0x15, 0x0, 0x2, 0x4, 0x82, 0x1, 0x2, 0x4, 0xA2, 0x1, 0x2
off_813E04C: .word byte_87E78A8
	.word byte_87E7B30
	.word byte_87E9320
	.word byte_87E9578
	.word byte_87EA788
	.word byte_87EA9F4
	.word byte_87EBAB8
	.word byte_87EBDDC
	.word byte_87ECF34
	.word byte_87ED240
	.word byte_87ECF34
	.word byte_87ED240
	thumb_func_end sub_813DB24

/*For debugging purposes, connect comment at any range!*/
