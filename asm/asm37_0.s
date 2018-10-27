.include "asm/asm37_0.inc"

.func
.thumb_func
sub_813B768:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	mov r1, #0
	strh r1, [r0]
	mov r0, r10
	ldr r0, [r0,#0x60]
	mov r1, #0x10
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_813B768

.func
.thumb_func
sub_813B780:
	ldr r1, off_813B78C // =dword_813944C 
	mov r2, #0x10
	mul r0, r2
	add r0, r0, r1
	mov pc, lr
	.balign 4, 0x00
off_813B78C: .word dword_813944C
.endfunc // sub_813B780

.func
.thumb_func
sub_813B790:
	push {lr}
	ldr r1, off_813B79C // =byte_20096D8 
	ldrb r1, [r1]
	bl loc_813B7A0
	pop {pc}
off_813B79C: .word byte_20096D8
.endfunc // sub_813B790

loc_813B7A0:
	push {r4,r6,r7,lr}
	add r6, r1, #0
	add r4, r0, #0
	bl sub_813B780
	add r7, r0, #0
	mov r2, #8
	ldr r1, dword_813B7E8 // =0x2660 
	add r1, r1, r4
	add r0, r1, #0
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
	add r0, r4, #0
	pop {r4,r6,r7,pc}
	.byte 0, 0
off_813B7D0: .word off_813B7D4
off_813B7D4: .word sub_813B7EC+1
	.word sub_813B7FC+1
	.word sub_813B818+1
	.word sub_813B830+1
off_813B7E4: .word unk_2009F00
dword_813B7E8: .word 0x2660
.func
.thumb_func
sub_813B7EC:
	push {lr}
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x31 
	bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813B7EC

.func
.thumb_func
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
.endfunc // sub_813B7FC

.func
.thumb_func
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
.endfunc // sub_813B818

.func
.thumb_func
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
.endfunc // sub_813B830

.func
.thumb_func
sub_813B84C:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	bl sub_813B790
	add r7, r0, #0
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
	add r4, r2, #0
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
	add r4, r2, #0
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
	add r4, r2, #0
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
	add r4, r2, #0
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
.endfunc // sub_813B84C

.func
.thumb_func
sub_813B920:
	ldr r1, off_813B930 // =byte_20096D8 
	strb r0, [r1]
	mov pc, lr
	.balign 4, 0x00
.endfunc // sub_813B920

.func
.thumb_func
sub_813B928:
	ldr r1, off_813B930 // =byte_20096D8 
	ldrb r0, [r1]
	mov pc, lr
	.byte 0, 0
off_813B930: .word byte_20096D8
.endfunc // sub_813B928

.func
.thumb_func
sub_813B934:
	push {lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#0x5c]
	// size
	ldr r1, off_813B94C // =0x188 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, r10
	// memBlock
	ldr r0, [r0,#0x58]
	// size
	mov r1, #0x40 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_813B94C: .word 0x188
.endfunc // sub_813B934

.func
.thumb_func
sub_813B950:
	push {r4-r7,lr}
	sub sp, sp, #0x10
	add r0, #1
	str r0, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	add r0, r1, #0
	bl sub_813B790
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp,#4]
	sub r1, #3
	ldr r2, [sp,#8]
	sub r2, #3
	mov r3, #7
	mul r3, r2
	add r3, r3, r1
	mov r6, r10
	ldr r6, [r6,#0x58]
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
.endfunc // sub_813B950

.func
.thumb_func
sub_813B9B4:
	mov r3, r10
	ldr r3, [r3,#0x58]
	mov r2, #7
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r3,r0]
	tst r0, r0
	mov pc, lr
.endfunc // sub_813B9B4

.func
.thumb_func
sub_813B9C4:
	push {lr}
	mov r3, r10
	ldr r3, [r3,#0x58]
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
.endfunc // sub_813B9C4

.func
.thumb_func
sub_813B9E0:
	push {lr}
	ldr r1, off_813B9EC // =off_813B9F0 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	pop {pc}
	.balign 4, 0x00
off_813B9EC: .word off_813B9F0
off_813B9F0: .word dword_813B1C4+0x28
	.byte 0xCD
	.byte 0xB2
	.byte 0x13
	.byte  8
	.byte 0xAE
	.byte 0xB3
	.byte 0x13
	.byte  8
.endfunc // sub_813B9E0

.func
.thumb_func
sub_813B9FC:
	mov r1, r10
	ldr r1, [r1,#0x5c]
	mov r2, #8
	mul r0, r2
	add r0, r0, r1
	mov pc, lr
.endfunc // sub_813B9FC

.func
.thumb_func
sub_813BA08:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	str r4, [sp,#0x10]
	mov r7, r10
	ldr r7, [r7,#0x5c]
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
	add r0, r1, #0
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
.endfunc // sub_813BA08

.func
.thumb_func
sub_813BA48:
	push {lr}
	mov r3, r10
	ldr r3, [r3,#0x5c]
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
.endfunc // sub_813BA48

.func
.thumb_func
sub_813BA64:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x58]
	ldr r1, off_813BA9C // =unk_201BA00 
	mov r2, #0x40 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, r10
	ldr r0, [r0,#0x5c]
	ldr r1, off_813BAA0 // =unk_201BA40 
	ldr r2, off_813BAA4 // =0x188 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
.endfunc // sub_813BA64

.func
.thumb_func
sub_813BA80:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#0x58]
	ldr r0, off_813BA9C // =unk_201BA00 
	mov r2, #0x40 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov r1, r10
	ldr r1, [r1,#0x5c]
	ldr r0, off_813BAA0 // =unk_201BA40 
	ldr r2, off_813BAA4 // =0x188 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
off_813BA9C: .word unk_201BA00
off_813BAA0: .word unk_201BA40
off_813BAA4: .word 0x188
.endfunc // sub_813BA80

.func
.thumb_func
sub_813BAA8:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x58]
	ldr r1, off_813BAE0 // =unk_201BC40 
	mov r2, #0x40 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, r10
	ldr r0, [r0,#0x5c]
	ldr r1, off_813BAE4 // =unk_201BC80 
	ldr r2, off_813BAE8 // =0x188 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
.endfunc // sub_813BAA8

.func
.thumb_func
sub_813BAC4:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#0x58]
	ldr r0, off_813BAE0 // =unk_201BC40 
	mov r2, #0x40 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov r1, r10
	ldr r1, [r1,#0x5c]
	ldr r0, off_813BAE4 // =unk_201BC80 
	ldr r2, off_813BAE8 // =0x188 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
off_813BAE0: .word unk_201BC40
off_813BAE4: .word unk_201BC80
off_813BAE8: .word 0x188
.endfunc // sub_813BAC4

.func
.thumb_func
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
.endfunc // sub_813BAEC

.func
.thumb_func
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
	add r7, r0, #0
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
.endfunc // sub_813BB00

.func
.thumb_func
sub_813BB68:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	bl sub_813B790
	add r7, r0, #0
	ldr r1, [sp,#8]
	ldr r2, [sp,#0xc]
	sub r1, #3
	str r1, [sp,#0x10]
	sub r2, #3
	mov r3, #7
	mul r3, r2
	add r3, r3, r1
	mov r6, r10
	ldr r6, [r6,#0x58]
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
	add r1, r0, #0
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
.endfunc // sub_813BB68

.func
.thumb_func
sub_813BBD4:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#0x60]
	add r7, r0, #0
	mov r1, #0x10
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr r0, off_813BD18 // =unk_2006CF8 
	mov r1, #0x31 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr r0, off_813BD1C // =unk_2006C88 
	mov r1, #0x31 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr r0, off_813BD20 // =unk_2006CC0 
	mov r1, #0x31 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	add r0, r7, #0
	bl sub_813BC1C
	add r0, r7, #0
	bl sub_813BC98
	bl sub_813BD24
	bl sub_813BE8C
	bl sub_813BEA8
	add r0, r7, #0
	bl sub_813C584
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_813BBD4

.func
.thumb_func
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
	add r0, r6, #0
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
	add r7, r0, #0
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
.endfunc // sub_813BC1C

.func
.thumb_func
sub_813BC98:
	push {r4-r7,lr}
	sub sp, sp, #0x20
	str r0, [sp,#0x1c]
	mov r6, #0
	mov r5, #0
loc_813BCA2:
	add r0, r6, #0
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
	add r0, r6, #0
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
	add r7, r0, #0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BD02
	bl sub_813B780
	add r7, r0, #0
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
.endfunc // sub_813BC98

.func
.thumb_func
sub_813BD0C:
	ldr r7, off_813BD18 // =unk_2006CF8 
	mov pc, lr
.endfunc // sub_813BD0C

.func
.thumb_func
sub_813BD10:
	ldr r7, off_813BD1C // =unk_2006C88 
	mov pc, lr
.endfunc // sub_813BD10

.func
.thumb_func
sub_813BD14:
	ldr r7, off_813BD20 // =unk_2006CC0 
	mov pc, lr
off_813BD18: .word unk_2006CF8
off_813BD1C: .word unk_2006C88
off_813BD20: .word unk_2006CC0
.endfunc // sub_813BD14

.func
.thumb_func
sub_813BD24:
	push {r4-r7,lr}
	mov r0, r8
	push {r0}
	mov r6, #0
loc_813BD2C:
	ldr r0, off_813BE88 // =byte_2006C50 
	mov r1, #0x31 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr r0, off_813BE88 // =byte_2006C50 
	mov r8, r0
	add r0, r6, #0
	bl sub_813B9FC
	add r7, r0, #0
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
.endfunc // sub_813BD24

.func
.thumb_func
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
	add r1, r3, #0
	bl loc_813B7A0
	add r7, r0, #0
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	sub r1, #3
	sub r2, #3
	mov r3, #7
	mul r3, r2
	add r3, r3, r1
	mov r6, r10
	ldr r6, [r6,#0x58]
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
.endfunc // sub_813BD90

.func
.thumb_func
sub_813BE38:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r6, [sp]
	bl sub_813B780
	add r7, r0, #0
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
	add r7, r0, #0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BE7C
	bl sub_813B780
	add r7, r0, #0
	ldrb r0, [r7,#3]
	cmp r0, r4
	bne loc_813BE7C
	mov r0, r10
	ldr r0, [r0,#0x60]
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
.endfunc // sub_813BE38

.func
.thumb_func
sub_813BE8C:
	push {r4-r7,lr}
	mov r6, #0
loc_813BE90:
	add r0, r6, #0
	bl sub_813B9FC
	add r7, r0, #0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BE9E
loc_813BE9E:
	add r6, #1
	cmp r6, #0x31 
	blt loc_813BE90
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_813BE8C

.func
.thumb_func
sub_813BEA8:
	push {r4-r7,lr}
	// mem
	ldr r0, off_813BF08 // =unk_2006D30 
	add r4, r0, #0
	// byteCount
	mov r1, #0x31 
	// byte
	mov r2, #0xff
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	mov r6, #0
	mov r5, #0
loc_813BEBA:
	add r0, r6, #0
	bl sub_813B9FC
	add r7, r0, #0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813BEE2
	bl sub_813B780
	add r7, r0, #0
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
	ldr r0, [r0,#0x60]
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
off_813BF08: .word unk_2006D30
.endfunc // sub_813BEA8

.func
.thumb_func
sub_813BF0C:
	mov r1, r10
	ldr r1, [r1,#0x60]
	ldrb r0, [r1,r0]
	cmp r0, #3
	ble locret_813BF18
	mov r0, #3
locret_813BF18:
	mov pc, lr
	.balign 4, 0x00
.endfunc // sub_813BF0C

.func
.thumb_func
sub_813BF1C:
	push {r4-r7,lr}
	mov r6, #1
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x20 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_813BF36
	b loc_813BF38
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x23 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_813BF38
loc_813BF36:
	mov r6, #0
loc_813BF38:
	add r0, r6, #0
	tst r0, r0
	pop {r4-r7,pc}
	.byte 0, 0
.endfunc // sub_813BF1C

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
.func
.thumb_func
sub_813BF60:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp]
	str r2, [sp,#4]
	bl sub_813B790
	add r7, r0, #0
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
.endfunc // sub_813BF60

.func
.thumb_func
sub_813BFB8:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp]
	str r2, [sp,#4]
	bl sub_813B790
	add r7, r0, #0
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
.endfunc // sub_813BFB8

.func
.thumb_func
sub_813C020:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x60]
	mov r1, #0x10
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_813C020

.func
.thumb_func
// () -> void
sub_813C030:
	push {r4-r7,lr}
	mov r5, #0x94
	mov r6, #1
loc_813C036:
	ldr r7, off_813C064 // =dword_813944C 
	mov r4, #0x40 
	mul r4, r6
	add r4, #3
	add r7, r7, r4
	mov r4, #0
loc_813C042:
	add r0, r5, #0
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
off_813C064: .word dword_813944C
off_813C068: .word 0x14C
.endfunc // sub_813C030

.func
.thumb_func
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
	ldr r6, [r6,#0x58]
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
	add r7, r0, #0
	ldrh r0, [r7]
	bl sub_813B780
	add r7, r0, #0
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
	add r3, r1, #0
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
	add r3, r1, #0
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
	.word unk_813C14C
dword_813C134: .word 0x6F15
dword_813C138: .word 0x5A91
dword_813C13C: .word 0x522E
dword_813C140: .word 0x35C3
dword_813C144: .word 0x4142
dword_813C148: .word 0x51E4
unk_813C14C: .byte 0x1D
	.byte 0x1C, 0x3E, 0x3D
	.byte 0x3C 
	.byte 0x4D, 0x4C, 0x1E
	.byte 0x14
	.byte 0x18, 0x34, 0x38
	.byte 0x54 
	.byte 0x5F, 0x1F, 0x16
	.byte 0x1A
a6VDhxFjzDfhjtx: .asciz "6:V^,$(DHX]-&*FJZ\\.dfhjtx/lmnovw"
	.balign 4, 0x00
off_813C180: .word byte_813C188
off_813C184: .word byte_813C1A4
byte_813C188: .byte 0x4, 0x31, 0x7B, 0x6F, 0x7B, 0x3, 0x3B, 0x62, 0x5B, 0x0
	.byte 0x5, 0x6E, 0x3, 0x3, 0xA9, 0x45, 0xFF, 0x7F, 0xFF, 0x13
	.byte 0xBF, 0x72, 0xDF, 0x10, 0x89, 0x7E, 0x87, 0x7
byte_813C1A4: .byte 0x4, 0x31, 0xF7, 0x5E, 0xF7, 0x2, 0xB7, 0x51, 0x17, 0x0
	.byte 0x81, 0x5D, 0x80, 0x2, 0xA9, 0x45, 0x7B, 0x6F, 0x7B, 0x3
	.byte 0x3B, 0x62, 0x5B, 0x0, 0x5, 0x6E, 0x2, 0x3
.endfunc // sub_813C06C

.func
.thumb_func
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
	ldr r6, [r6,#0x58]
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
	add r7, r0, #0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_813C1FA
	bl sub_813B780
	add r7, r0, #0
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
	add r3, r1, #0
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
	add r3, r1, #0
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
	.word unk_813C2B0
dword_813C284: .word 0x6F15
dword_813C288: .word 0x5A91
dword_813C28C: .word 0x41AA
dword_813C290: .word 0x3968
dword_813C294: .word 0x4142
dword_813C298: .word 0x51E4
off_813C29C: .word byte_813C2A0
byte_813C2A0: .byte 0x0
byte_813C2A1: .byte 0x0
	.word 0, 0, 0
	.byte 0, 0
unk_813C2B0: .byte 0x1D
	.byte 0x1C, 0x3E, 0x3D
	.byte 0x3C 
	.byte 0x4D, 0x4C, 0x1E
	.byte 0x14
	.byte 0x18, 0x34, 0x38
	.byte 0x54 
	.byte 0x5F, 0x1F, 0x16
	.byte 0x1A
a6VDhxFjzDfhjtx_0: .asciz "6:V^,$(DHX]-&*FJZ\\.dfhjtx/lmnovw"
	.balign 4, 0x00
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
.endfunc // sub_813C1C0

.func
.thumb_func
sub_813C324:
	push {lr}
	ldr r0, off_813C330 // =unk_2000090 
	mov r1, #8
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {pc}
off_813C330: .word unk_2000090
.endfunc // sub_813C324

.func
.thumb_func
sub_813C334:
	push {r4-r7,lr}
	add r6, r1, #0
	add r7, r0, #0
	mov r0, r10
	ldr r0, [r0,#4]
	ldrh r0, [r0,#2]
	tst r0, r0
	beq loc_813C394
	lsr r3, r7, #2
	ldr r1, dword_813C398 // = 
	mov r2, #0xa
	mul r3, r2
	add r1, r1, r3
	add r4, r1, #0
	cmp r6, #0xa
	beq loc_813C394
	ldrb r2, [r1,r6]
	cmp r2, #0xff
	beq loc_813C362
	ldr r1, off_813C39C // =dword_813C3A4 
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
	add r0, r2, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813C386
	add r0, r2, #0
	mov r2, #4
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	b loc_813C38E
loc_813C386:
	add r0, r2, #0
	mov r2, #4
	bl SetEventFlagRange // (u16 entryFlagBitfield) -> void
loc_813C38E:
	mov r0, #0x8b
	bl sound_play // () -> void
loc_813C394:
	add r0, r6, #0
	pop {r4-r7,pc}
dword_813C398: .word 0x813B522
off_813C39C: .word dword_813C3A4
dword_813C3A0: .word 0x2660
dword_813C3A4: .word 0x1000200
	.word 0x20001
.endfunc // sub_813C334

.func
.thumb_func
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
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_813C3CC
	bl loc_8121154
	b loc_813C3CC
loc_813C3CC:
	mov r0, r10
	ldr r0, [r0,#0x3c]
	ldrb r0, [r0,#4]
	cmp r0, #0x80
	bge loc_813C40E
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x1d
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_813C454
	mov r0, #0
	mov r1, #0x42 
	bl sub_80137FE
	add r7, r0, #0
	mov r0, #0
	mov r1, #0x40 
	add r2, r7, #0
	bl sub_80137E6
	bl getPETNaviSelect // () -> u8
	mov r1, #0x42 
	bl sub_80137FE
	add r7, r0, #0
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	add r2, r7, #0
	bl sub_80137E6
	b locret_813C454
loc_813C40E:
	mov r0, #0
	mov r1, #0x42 
	bl sub_80137FE
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x40 
	bl sub_80137FE
	cmp r0, r4
	ble loc_813C42E
	mov r0, #0
	mov r1, #0x40 
	add r2, r4, #0
	bl sub_80137E6
loc_813C42E:
	bl getPETNaviSelect // () -> u8
	mov r1, #0x42 
	bl sub_80137FE
	add r4, r0, #0
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	bl sub_80137FE
	cmp r0, r4
	ble locret_813C454
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	add r2, r4, #0
	bl sub_80137E6
locret_813C454:
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_813C3AC

.func
.thumb_func
sub_813C458:
	push {r4,lr}
	bl sub_813BBD4
	bl sub_8136C24
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	mov r0, #0
	bl sub_80010BE
	bl sub_813C678
	mov r0, #0x17
	mov r1, #0xd
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_813C684
	bl sub_813CBCC
	add r0, r4, #0
	bl sub_80010BE
	bl sub_803CE44
	pop {r4,pc}
	.byte 0, 0
.endfunc // sub_813C458

.func
.thumb_func
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
	add r0, r4, #0
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_813C490

.func
.thumb_func
sub_813C4A8:
	push {lr}
	mov r0, #0x71 
	bl sub_803CE28
	ldr r1, off_813C4B8 // =pt_813C4BC 
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	pop {pc}
off_813C4B8: .word pt_813C4BC
pt_813C4BC: .word dword_813B48C+3
	.word dword_813B4B0+16
	.word dword_813B4D4+29
.endfunc // sub_813C4A8

.func
.thumb_func
sub_813C4C8:
	push {lr}
	mov r0, #0x71 
	bl sub_803CE28
	ldr r1, off_813C4D8 // =off_813C4DC 
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	pop {pc}
off_813C4D8: .word off_813C4DC
off_813C4DC: .word dword_813C4E8
	.word unk_813C51C
	.word unk_813C550
dword_813C4E8: .word 0x3D3E3F1D, 0x1E004C3C, 0x38341814, 0x161F005F, 0x5E3A361A
	.word 0x28242C00, 0x5D4844, 0x462A262D, 0x2F005C4A, 0x6F6E6D6C
	.word 0x77, 0x0, 0x0
unk_813C51C: .byte 0x1D
	.byte 0x3F, 0x3E, 0x3D
	.byte 0x3C 
	.byte 0x4D, 0x4C, 0x1E
	.byte 0x14
	.byte 0x18, 0x34, 0x38
	.byte 0x54 
	.byte 0x5F, 0x1F, 0x16
	.byte 0x1A
a6VDhxFjzLmnovw: .asciz "6:V^,$(DHX]-&*FJZ\\/lmnovw"
	.byte 0x0
	.word 0
	.byte 0, 0, 0, 0
unk_813C550: .byte 0x1D
	.byte 0x3F, 0x3E, 0x3D
	.byte 0x3C 
	.byte 0x4D, 0x4C, 0x1E
	.byte 0x14
	.byte 0x18, 0x34, 0x38
	.byte 0x54 
	.byte 0x5F, 0x1F, 0x16
	.byte 0x1A
a6VDhxFjzDfhjtx_1: .asciz "6:V^,$(DHX]-&*FJZ\\.dfhjtx/lmnovw"
	.balign 4, 0x00
.endfunc // sub_813C4C8

.func
.thumb_func
sub_813C584:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r0, [sp]
	ldr r0, off_813C638 // =unk_2006D68 
	mov r1, #0x31 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr r0, off_813C63C // =byte_2006DA0 
	mov r1, #0x31 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
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
	add r0, r6, #0
	add r1, r7, #0
	bl sub_813B9B4
	tst r0, r0
	beq loc_813C5CC
	ldr r1, off_813C638 // =unk_2006D68 
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
	ldr r2, off_813C638 // =unk_2006D68 
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
.endfunc // sub_813C584

.func
.thumb_func
sub_813C624:
	push {r0,r2,lr}
	mov r0, #7
	mul r2, r0
	add r2, r2, r1
	ldr r0, off_813C634 // =dword_813C640 
	ldrb r1, [r0,r2]
	pop {r0,r2,pc}
	.balign 4, 0x00
off_813C634: .word dword_813C640
off_813C638: .word unk_2006D68
off_813C63C: .word byte_2006DA0
dword_813C640: .word 0xFFFFFFFF, 0xFFFFFFFF
	.word 0x0
	.word 0xFFFF00, 0x0
	.word 0xFFFF, 0xFF000000, 0xFF, 0xFFFF0000, 0x0
	.word 0xFFFF00, 0x0
	.word 0xFFFFFFFF, 0xFFFFFFFF
.endfunc // sub_813C624

.func
.thumb_func
sub_813C678:
	push {lr}
	mov r0, #0
	mov r1, r10
	ldr r1, [r1,#0x68]
	strh r0, [r1]
	pop {pc}
.endfunc // sub_813C678

.func
.thumb_func
sub_813C684:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r0, off_813C744 // =unk_2006DD8 
	mov r1, #8
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
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
	add r0, r4, #0
	bl sub_813B780
	ldrb r1, [r0]
	tst r1, r1
	beq loc_813C6CA
	ldr r0, off_813C744 // =unk_2006DD8 
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
off_813C744: .word unk_2006DD8
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
.endfunc // sub_813C684

.func
.thumb_func
sub_813C808:
	push {lr}
	pop {pc}
.endfunc // sub_813C808

.func
.thumb_func
navicust_NCP_SuperArmor:
	push {lr}
	mov r0, #0
	// NCP category
	mov r1, #0x23 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_SuperArmor

.func
.thumb_func
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
.endfunc // navicust_NCP_Custom1

.func
.thumb_func
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
.endfunc // navicust_NCP_Custom2

.func
.thumb_func
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
.endfunc // navicust_NCP_MegFldr1

.func
.thumb_func
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
.endfunc // navicust_NCP_MegFldr2

.func
.thumb_func
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
.endfunc // navicust_GigFldr1

.func
.thumb_func
navicust_NCP_FstBarr:
	push {lr}
	mov r0, #0
	mov r1, #6
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_FstBarr

.func
.thumb_func
navicust_NCP_Shield:
	push {lr}
	mov r0, #0
	mov r1, #7
	mov r2, #0x3b 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_Shield

.func
.thumb_func
navicust_NCP_Reflect:
	push {lr}
	mov r0, #0
	mov r1, #7
	mov r2, #0x8b
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_Reflect

.func
.thumb_func
navicust_NCP_AntiDmg:
	push {lr}
	mov r0, #0
	mov r1, #7
	mov r2, #0x3d 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_AntiDmg

.func
.thumb_func
navicust_NCP_FlotShoe:
	push {lr}
	mov r0, #0
	mov r1, #0x1b
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_FlotShoe

.func
.thumb_func
navicust_NCP_AirShoes:
	push {lr}
	mov r0, #0
	mov r1, #0x1c
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_AirShoes

.func
.thumb_func
navicust_NCP_UnderSht:
	push {lr}
	mov r0, #0
	mov r1, #0x1d
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_UnderSht

.func
.thumb_func
navicust_NCP_ChpShufl:
	push {lr}
	mov r0, #0
	mov r1, #0x60 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_ChpShufl

.func
.thumb_func
navicust_NCP_NumbrOpn:
	push {lr}
	mov r0, #0
	mov r1, #0x61 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_NumbrOpn

.func
.thumb_func
navicust_NCP_SneakRun:
	push {lr}
	mov r0, #0
	mov r1, #0x1e
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_SneakRun

.func
.thumb_func
navicust_NCP_OilBody:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C958 // =0x2 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
dword_813C958: .word 0x2
.endfunc // navicust_NCP_OilBody

.func
.thumb_func
navicust_NCP_Fish:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C96C // =0x4 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
dword_813C96C: .word 0x4
.endfunc // navicust_NCP_Fish

.func
.thumb_func
navicust_NCP_Battery:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C980 // =0x8 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
dword_813C980: .word 0x8
.endfunc // navicust_NCP_Battery

.func
.thumb_func
navicust_NCP_Jungle:
	push {lr}
	mov r0, #0
	mov r1, #0x27 
	ldr r2, dword_813C994 // =0x10 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
dword_813C994: .word 0x10
.endfunc // navicust_NCP_Jungle

.func
.thumb_func
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
.endfunc // navicust_NCP_Collect

.func
.thumb_func
navicust_NCP_Millions:
	push {lr}
	mov r0, #0
	mov r1, #0x33 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_Millions

.func
.thumb_func
navicust_NCP_Humor:
	push {lr}
	mov r0, #0
	mov r1, #0x25 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_Humor

.func
.thumb_func
navicust_NCP_Poem:
	push {lr}
	mov r0, #0
	mov r1, #0x5f 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_Poem

.func
.thumb_func
navicust_NCP_SlipRunr:
	push {lr}
	mov r0, #0
	mov r1, #0x35 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_SlipRunr

.func
.thumb_func
navicust_NCP_AutoHeal:
	push {lr}
	mov r0, #0
	mov r1, #0x36 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_AutoHeal

.func
.thumb_func
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
.endfunc // navicust_NCP_BustPack

.func
.thumb_func
navicust_NCP_BodyPack:
	push {lr}
	bl navicust_NCP_SuperArmor
	bl navicust_NCP_FlotShoe
	bl navicust_NCP_AirShoes
	bl navicust_NCP_UnderSht
	pop {pc}
.endfunc // navicust_NCP_BodyPack

.func
.thumb_func
navicust_NCP_FldrPak1:
	push {lr}
	bl navicust_NCP_MegFldr1
	bl navicust_NCP_Custom1
	pop {pc}
.endfunc // navicust_NCP_FldrPak1

.func
.thumb_func
navicust_NCP_FldrPak2:
	push {lr}
	bl navicust_NCP_MegFldr2
	bl navicust_NCP_Custom2
	pop {pc}
.endfunc // navicust_NCP_FldrPak2

.func
.thumb_func
navicust_NCP_BugStop:
	push {lr}
	mov r0, #0
	mov r1, #0x1f
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_BugStop

.func
.thumb_func
navicust_NCP_Rush:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r3, r0, #0
	mov r0, #0
	mov r1, #0xd
	mov r2, #1
	orr r2, r3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_Rush

.func
.thumb_func
navicust_NCP_Beat:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r3, r0, #0
	mov r0, #0
	mov r1, #0xd
	mov r2, #2
	orr r2, r3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_Beat

.func
.thumb_func
navicust_NCP_Tango:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r3, r0, #0
	mov r0, #0
	mov r1, #0xd
	mov r2, #4
	orr r2, r3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // navicust_NCP_Tango

.func
.thumb_func
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
.endfunc // navicust_NCP_AttackPlus1

.func
.thumb_func
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
.endfunc // navicust_NCP_SpeedPlus1

.func
.thumb_func
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
.endfunc // navicust_NCP_ChargePlus1

.func
.thumb_func
navicust_NCP_AttckMAX:
	push {lr}
	mov r0, #0
	mov r1, #1
	mov r2, #4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_AttckMAX

.func
.thumb_func
navicust_NCP_SpeedMAX:
	push {lr}
	mov r0, #0
	mov r1, #2
	mov r2, #4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_SpeedMAX

.func
.thumb_func
navicust_NCP_ChargMAX:
	push {lr}
	mov r0, #0
	mov r1, #3
	mov r2, #4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_ChargMAX

.func
.thumb_func
navicust_NCP_HPPlus50:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	ldrh r1, [r0]
	add r1, #0x32 
	strh r1, [r0]
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_HPPlus50

.func
.thumb_func
navicust_NCP_HPPlus100:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	ldrh r1, [r0]
	add r1, #0x64 
	strh r1, [r0]
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_HPPlus100

.func
.thumb_func
navicust_NCP_HPPlus200:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	ldrh r1, [r0]
	add r1, #0xc8
	strh r1, [r0]
	pop {pc}
	.byte 0, 0
.endfunc // navicust_NCP_HPPlus200

.func
.thumb_func
navicust_NCP_HPPlus300:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	ldrh r1, [r0]
	ldr r2, off_813CBA0 // =0x12c 
	add r1, r1, r2
	strh r1, [r0]
	pop {pc}
off_813CBA0: .word 0x12C
.endfunc // navicust_NCP_HPPlus300

.func
.thumb_func
navicust_NCP_HPPlus400:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	ldrh r1, [r0]
	ldr r2, off_813CBB4 // =0x190 
	add r1, r1, r2
	strh r1, [r0]
	pop {pc}
off_813CBB4: .word 0x190
.endfunc // navicust_NCP_HPPlus400

.func
.thumb_func
navicust_NCP_HPPlus500:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#0x68]
	ldrh r1, [r0]
	ldr r2, off_813CBC8 // =0x1f4 
	add r1, r1, r2
	strh r1, [r0]
	pop {pc}
off_813CBC8: .word 0x1F4
.endfunc // navicust_NCP_HPPlus500

.func
.thumb_func
sub_813CBCC:
	push {r4-r7,lr}
	mov r0, #0x17
	mov r1, #0x20 
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_813C490
	cmp r0, #1
	bne loc_813CBE4
	bl sub_813C020
	b locret_813CC12
loc_813CBE4:
	mov r6, #1
loc_813CBE6:
	add r0, r6, #0
	bl sub_813BF0C
	tst r0, r0
	beq loc_813CC0C
	lsl r0, r0, #2
	lsl r1, r6, #4
	add r0, r0, r1
	mov r2, #0
	ldr r1, off_813CC14 // =dword_813CC18 
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
off_813CC14: .word dword_813CC18
dword_813CC18: .word 0x0, 0x0, 0x0, 0x0
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
.endfunc // sub_813CBCC

.func
.thumb_func
sub_813CCE8:
	push {lr}
	pop {pc}
.endfunc // sub_813CCE8

.func
.thumb_func
sub_813CCEC:
	push {lr}
	mov r0, #0
	mov r1, #0x31 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CCEC

.func
.thumb_func
sub_813CCFC:
	push {lr}
	pop {pc}
.endfunc // sub_813CCFC

.func
.thumb_func
sub_813CD00:
	push {lr}
	mov r0, #0
	mov r1, #0x24 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_813CD00

.func
.thumb_func
sub_813CD10:
	push {lr}
	pop {pc}
.endfunc // sub_813CD10

.func
.thumb_func
sub_813CD14:
	push {lr}
	bl sub_813CD3E
	mov r2, #2
	bl sub_813CD4C
	pop {pc}
.endfunc // sub_813CD14

.func
.thumb_func
sub_813CD22:
	push {lr}
	bl sub_813CD3E
	mov r2, #3
	bl sub_813CD4C
	pop {pc}
.endfunc // sub_813CD22

.func
.thumb_func
sub_813CD30:
	push {lr}
	bl sub_813CD3E
	mov r2, #4
	bl sub_813CD4C
	pop {pc}
.endfunc // sub_813CD30

.func
.thumb_func
sub_813CD3E:
	push {lr}
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
.endfunc // sub_813CD3E

.func
.thumb_func
sub_813CD4C:
	push {lr}
	mov r0, #0
	mov r1, #0x13
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
.endfunc // sub_813CD4C

.func
.thumb_func
sub_813CD58:
	push {lr}
	pop {pc}
.endfunc // sub_813CD58

.func
.thumb_func
sub_813CD5C:
	push {lr}
	mov r2, #4
	bl sub_813CD7A
	pop {pc}
.endfunc // sub_813CD5C

.func
.thumb_func
sub_813CD66:
	push {lr}
	mov r2, #3
	bl sub_813CD7A
	pop {pc}
.endfunc // sub_813CD66

.func
.thumb_func
sub_813CD70:
	push {lr}
	mov r2, #2
	bl sub_813CD7A
	pop {pc}
.endfunc // sub_813CD70

.func
.thumb_func
sub_813CD7A:
	push {lr}
	mov r0, #0
	mov r1, #0x63 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CD7A

.func
.thumb_func
sub_813CD88:
	push {lr}
	pop {pc}
.endfunc // sub_813CD88

.func
.thumb_func
sub_813CD8C:
	push {lr}
	mov r0, #0
	mov r1, #0x28 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CD8C

.func
.thumb_func
sub_813CD9C:
	push {lr}
	pop {pc}
.endfunc // sub_813CD9C

.func
.thumb_func
sub_813CDA0:
	push {lr}
	mov r0, #0
	mov r1, #0x26 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_813CDA0

.func
.thumb_func
sub_813CDB0:
	push {lr}
	pop {pc}
.endfunc // sub_813CDB0

.func
.thumb_func
sub_813CDB4:
	push {r4-r7,lr}
	mov r4, #6
	mov r6, #1
	bl sub_813CDD8
	pop {r4-r7,pc}
.endfunc // sub_813CDB4

.func
.thumb_func
sub_813CDC0:
	push {r4-r7,lr}
	mov r4, #0xa
	mov r6, #2
	bl sub_813CDD8
	pop {r4-r7,pc}
.endfunc // sub_813CDC0

.func
.thumb_func
sub_813CDCC:
	push {r4-r7,lr}
	mov r4, #0xd
	mov r6, #3
	bl sub_813CDD8
	pop {r4-r7,pc}
.endfunc // sub_813CDCC

.func
.thumb_func
sub_813CDD8:
	push {r4-r7,lr}
	mov r0, #0
	mov r1, #0x14
	add r2, r4, #0
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, #0
	mov r1, #0x15
	add r2, r6, #0
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r4-r7,pc}
.endfunc // sub_813CDD8

.func
.thumb_func
sub_813CDF0:
	push {lr}
	pop {pc}
.endfunc // sub_813CDF0

.func
.thumb_func
sub_813CDF4:
	push {lr}
	mov r0, #0
	mov r1, #0xd
	mov r2, #0xff
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CDF4

.func
.thumb_func
sub_813CE04:
	push {lr}
	pop {pc}
.endfunc // sub_813CE04

.func
.thumb_func
sub_813CE08:
	push {r4-r7,lr}
	mov r4, #1
	bl sub_813CE26
	pop {r4-r7,pc}
.endfunc // sub_813CE08

.func
.thumb_func
sub_813CE12:
	push {r4-r7,lr}
	mov r4, #2
	bl sub_813CE26
	pop {r4-r7,pc}
.endfunc // sub_813CE12

.func
.thumb_func
sub_813CE1C:
	push {r4-r7,lr}
	mov r4, #3
	bl sub_813CE26
	pop {r4-r7,pc}
.endfunc // sub_813CE1C

.func
.thumb_func
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
.endfunc // sub_813CE26

.func
.thumb_func
sub_813CE48:
	push {lr}
	pop {pc}
.endfunc // sub_813CE48

.func
.thumb_func
sub_813CE4C:
	push {lr}
	mov r2, #3
	bl sub_813CE6A
	pop {pc}
.endfunc // sub_813CE4C

.func
.thumb_func
sub_813CE56:
	push {lr}
	mov r2, #2
	bl sub_813CE6A
	pop {pc}
.endfunc // sub_813CE56

.func
.thumb_func
sub_813CE60:
	push {lr}
	mov r2, #1
	bl sub_813CE6A
	pop {pc}
.endfunc // sub_813CE60

.func
.thumb_func
sub_813CE6A:
	push {lr}
	mov r0, #0
	mov r1, #0x62 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CE6A

.func
.thumb_func
sub_813CE78:
	push {lr}
	pop {pc}
.endfunc // sub_813CE78

.func
.thumb_func
sub_813CE7C:
	push {lr}
	mov r0, #0
	mov r1, #0x1a
	mov r2, #9
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CE7C

.func
.thumb_func
sub_813CE8C:
	push {lr}
	pop {pc}
.endfunc // sub_813CE8C

.func
.thumb_func
sub_813CE90:
	push {lr}
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xa
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_813CE90

.func
.thumb_func
// () -> void
sub_813CEA0:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r0, #0
	mov r1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r7, r0, #0
	mov r0, #0
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	str r0, [sp]
	add r1, r0, #0
	add r1, #0x2e 
	add r6, r1, #0
	mov r0, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0xff
	beq loc_813CEF2
	ldr r1, [sp]
	mov r2, #0x3c 
	mul r1, r2
	mov r2, r10
	ldr r2, [r2,#0x48] // Toolkit.sChip_2002178
	add r1, r1, r2
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#8]
	cmp r0, r7
	ble loc_813CEF2
	mov r0, #0
	add r1, r6, #0
	mov r2, #0xff
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_813CEF2:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
.endfunc // sub_813CEA0

.func
.thumb_func
sub_813CEF8:
	push {r4,lr}
	add r4, r0, #0
	add r2, r1, #0
	mov r0, #0
	mov r1, #0x12
	mov r2, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	add r2, r4, #0
	bl sub_813CD4C
	pop {r4,pc}
.endfunc // sub_813CEF8

.func
.thumb_func
sub_813CF10:
	push {r4,r6,lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_813CDD8
	pop {r4,r6,pc}
.endfunc // sub_813CF10

.func
.thumb_func
sub_813CF1C:
	push {lr}
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x16
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CF1C

.func
.thumb_func
sub_813CF2C:
	push {lr}
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x54 
	bl sub_80137E6
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CF2C

.func
.thumb_func
sub_813CF3C:
	push {lr}
	mov r0, #0
	mov r1, #0x24 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813CF3C

.func
.thumb_func
sub_813CF4C:
	push {r4,lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x18
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r3, r0, #0
	mov r0, #0
	mov r1, #0x18
	add r2, r3, r4
	cmp r2, #7
	ble loc_813CF66
	mov r2, #7
loc_813CF66:
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r4,pc}
.endfunc // sub_813CF4C

.func
.thumb_func
sub_813CF6C:
	push {r4,lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x19
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r3, r0, #0
	mov r0, #0
	mov r1, #0x19
	add r2, r3, r4
	cmp r2, #7
	ble loc_813CF86
	mov r2, #7
loc_813CF86:
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {r4,pc}
.endfunc // sub_813CF6C

.func
.thumb_func
sub_813CF8C:
	push {lr}
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1a
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	pop {pc}
	.balign 4, 0x00
byte_813CF9C: .byte 0x2
byte_813CF9D: .byte 0xFF
word_813CF9E: .hword 0x81
	.word 0x90860961, 0xE9619045, 0x81FF02, 0x4F181890, 0x8661094F
	.word 0x81FF02, 0x9086E986, 0xCC099018, 0x82FF02, 0x1890E909
	.word 0x4F9045E9, 0x82FF02, 0x45181845, 0xE9094F45, 0x82FF02
	.word 0xE9459009, 0x18E90961, 0x83FF02, 0x6190E918, 0x4509E918
	.word 0x83FF02, 0x4561CCCC, 0x4F3E90CC, 0x83FF02, 0x3E3EE93E
	.word 0x184F903E, 0x84FF02, 0x4F0961E9
	.word 0xE9E9614F
dword_813D014: .word 0x84FF02, 0x3E3E614F, 0x90E94561, 0x84FF02, 0x86864F45
	.word 0x961904F, 0x84FF02, 0xE9900986, 0x86189018, 0x85FF02
	.word 0x6109903E, 0xE90990E9, 0x85FF02, 0x45E9E9E9, 0x9018E93E
	.word 0x85FF02, 0x4F454590, 0xE9864545, 0x85FF02, 0x4F18CC61
	.word 0xE9458690, 0xFC0403, 0xE909E945, 0x3ECC903E, 0x1000303
	.word 0x9CC61CC, 0xCC3E3E45, 0x1100203, 0x8645CC86, 0x619086CC
	.word 0x1140503, 0x90093E09, 0x86901845, 0x1180603, 0x9018E94F
	.word 0x4F180961, 0x12C0603, 0x903ECC45, 0x3E45CC4F, 0x1300503
	.word 0x3E8690E9, 0x9619018, 0x1340303, 0x61610986, 0x61094FE9
	.word 0x1380103, 0x18E9E990, 0x9868645, 0x13C0103, 0xCC6190CC
	.word 0x184F4F86, 0x1400303, 0x184F9018, 0x61454F90, 0x1440603
	.word 0x9009613E, 0x3E6109E9, 0x1480103, 0x863E1818, 0x18CC8645
	.word 0x330C00, 0x61613E4F, 0x61864590, 0x800E00, 0x18094509
	.word 0x909E909, 0x760C00, 0x94F6161, 0x18CC4590, 0x111600
	.word 0x45CC9045, 0x91861CC, 0xA71A00, 0x45456186, 0xE990904F
	.word 0xB90600, 0x3E9009E9, 0x3E3E3E86, 0xC51A00, 0x6109613E
	.word 0xE94F86E9, 0xC61A00, 0xE9619090, 0x99018CC, 0xC90C00
	.word 0xCC0986CC, 0x9086CCCC, 0xA11800, 0x904F1809, 0xCCE98645
	.word 0x771A00, 0x9018E94F, 0xE94F1890, 0x8E1500, 0x9864518
	.word 0x18613E61, 0xC70700, 0x903E09E9, 0xE9E961E9, 0xE31A00
	.word 0x3E90CC45, 0xCC3E3E90, 0xE61A00, 0xCC903E86, 0x90451890
	.word 0xE91A00, 0x45E91818, 0x453E4F3E, 0xEC1A00, 0x61869061
	.word 0x86901809, 0xEF1A00, 0x93ECCE9, 0x184F093E, 0xF21A00
	.word 0x3E094518, 0x45E909CC, 0xF51A00, 0xCC18094F, 0xE909453E
	.word 0xF81A00, 0xE9CC3E3E, 0x45CC9009, 0xFB1A00, 0x45903E45
	.word 0x61096190, 0xFE1A00, 0x4561E909, 0x4F4F4F90, 0x1011A00
	.word 0x454F90CC, 0x9E9904F, 0x1041A00, 0x4586CC86, 0x9CC613E
	.word 0x53FF01, 0x86610909, 0x45CC9009, 0x51FF01, 0x9E94590
	.word 0x3E45E94F, 0x55FF01, 0x18CCE93E, 0x90CC184F, 0xFFFFFFFF
	.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFF00, 0xFFFFFF02, 0xFFFFFFFF
	.word 0x10FF00, 0xFFFFFF04, 0xFFFFFFFF, 0xE0FF00, 0xFFFFFF06
	.word 0xFFFFFFFF, 0x110FF00, 0xFFFFFF08, 0xFFFFFFFF, 0x116FF00
	.word 0xFFFFFF0A, 0xFFFFFFFF, 0x114FF00, 0xFFFFFF0C, 0xFFFFFFFF
	.word 0x116FF00, 0xFFFFFF0E, 0xFFFFFFFF, 0x114FF00, 0xFFFFFF10
	.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x10FF00
	.word 0xFFFFFF02, 0xFFFFFFFF, 0x11FF00, 0xFFFFFF04, 0xFFFFFFFF
	.word 0xE1FF00, 0xFFFFFF06, 0xFFFFFFFF, 0x111FF00, 0xFFFFFF08
	.word 0xFFFFFFFF, 0x116FF00, 0xFFFFFF0A, 0xFFFFFFFF, 0x113FF00
	.word 0xFFFFFF0C, 0xFFFFFFFF, 0x117FF00, 0xFFFFFF0E, 0xFFFFFFFF
	.word 0x114FF00, 0xFFFFFF10, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
	.word 0xFFFFFFFF, 0x11FF00, 0xFFFFFF02, 0xFFFFFFFF, 0x12FF00
	.word 0xFFFFFF04, 0xFFFFFFFF, 0xE1FF00, 0xFFFFFF06, 0xFFFFFFFF
	.word 0x111FF00, 0xFFFFFF08, 0xFFFFFFFF, 0x117FF00, 0xFFFFFF0A
	.word 0xFFFFFFFF, 0x114FF00, 0xFFFFFF0C, 0xFFFFFFFF, 0x118FF00
	.word 0xFFFFFF0E, 0xFFFFFFFF, 0x115FF00, 0xFFFFFF10, 0xFFFFFFFF
	.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x11FF00, 0xFFFFFF02
	.word 0xFFFFFFFF, 0x12FF00, 0xFFFFFF04, 0xFFFFFFFF, 0xE2FF00
	.word 0xFFFFFF06, 0xFFFFFFFF, 0x112FF00, 0xFFFFFF08, 0xFFFFFFFF
	.word 0x118FF00, 0xFFFFFF0A, 0xFFFFFFFF, 0x114FF00, 0xFFFFFF0C
	.word 0xFFFFFFFF, 0x99FF00, 0xFFFFFF0E, 0xFFFFFFFF, 0x115FF00
	.word 0xFFFFFF10, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
byte_813D410: .byte 0x3E, 0x45, 0xCC, 0x86, 0x90, 0x18, 0x4F, 0x9, 0x61
	.byte 0xE9, 0x0, 0x0
.endfunc // sub_813CF8C

.func
.thumb_func
sub_813D41C:
	push {r5-r7,lr}
	ldr r7, off_813D480 // =byte_813CF9C 
	ldr r6, off_813D484 // =byte_813D410 
	add r4, r0, #0
	mov r5, #0
loc_813D426:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_813D472
	add r3, r7, #0
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
	add r0, r4, #0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_813D466
	// bitfield
	add r0, r4, #0
	bl SetEventFlag // (u16 entryFlagBitfield) -> void
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
.endfunc // sub_813D41C

loc_813D48C:
	push {r4-r7,lr}
	push {r0}
	bl sub_802D15E
	add r2, r0, #0
	pop {r0}
	ldr r3, off_813D4F4 // =dword_813D4FC 
	ldrb r3, [r3,r0]
	sub r2, r2, r3
	bge loc_813D4A4
	mov r7, #0
	b loc_813D4CC
loc_813D4A4:
	push {r0}
	add r0, r2, #0
	bl sub_802D158
	pop {r0}
	mov r7, #1
	ldr r4, off_813D4E0 // =off_813D4E4 
	lsl r0, r0, #2
	ldr r4, [r4,r0]
	bl change_20013F0_800151C // () -> int
	mov r1, #0xf
	and r0, r1
	ldr r1, off_813D4F8 // =dword_813D500 
	ldrb r0, [r1,r0]
	lsl r0, r0, #2
	ldr r1, off_813D4D0 // =off_813D4D4 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
loc_813D4CC:
	add r0, r7, #0
	pop {r4-r7,pc}
off_813D4D0: .word off_813D4D4
off_813D4D4: .word sub_813D510+1
	.word sub_813D568+1
	.word sub_813D598+1
off_813D4E0: .word off_813D4E4
off_813D4E4: .word dword_813D014+0x24C
	.word dword_813D014+0x2B8
	.word dword_813D014+0x324
	.word dword_813D014+0x390
off_813D4F4: .word dword_813D4FC
off_813D4F8: .word dword_813D500
dword_813D4FC: .word 0x321E140A
dword_813D500: .word 0x0, 0x0, 0x0, 0x0
.func
.thumb_func
sub_813D510:
	push {r4-r7,lr}
	bl change_20013F0_800151C // () -> int
	mov r1, #0xf
	and r0, r1
	add r6, r0, #0
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
	add r0, r2, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	add r7, r0, #0
	bl change_20013F0_800151C // () -> int
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
.endfunc // sub_813D510

.func
.thumb_func
sub_813D568:
	push {r4-r7,lr}
	bl change_20013F0_800151C // () -> int
	mov r1, #0xf
	and r0, r1
	add r6, r0, #0
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
.endfunc // sub_813D568

.func
.thumb_func
sub_813D598:
	push {r4-r7,lr}
	bl change_20013F0_800151C // () -> int
	mov r1, #0xf
	and r0, r1
	add r6, r0, #0
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
.endfunc // sub_813D598

.func
.thumb_func
sub_813D5C8:
	ldr r1, off_813D5D8 // =byte_200BC50 
	strb r0, [r1,#0x6] // (byte_200BC56 - 0x200bc50)
	mov pc, lr
	.byte 0, 0
.endfunc // sub_813D5C8

.func
.thumb_func
sub_813D5D0:
	ldr r1, off_813D5D8 // =byte_200BC50 
	ldrb r0, [r1,#0x6] // (byte_200BC56 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
off_813D5D8: .word byte_200BC50
.endfunc // sub_813D5D0

.func
.thumb_func
sub_813D5DC:
	push {lr}
	bl sub_814692C
	pop {pc}
.endfunc // sub_813D5DC

	push {r4,lr}
	pop {r4,pc}
.func
.thumb_func
sub_813D5E8:
	ldr r1, off_813D608 // =byte_200AF80 
	ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	orr r2, r0
	strb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
	mov pc, lr
	.balign 4, 0x00
.endfunc // sub_813D5E8

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
.func
.thumb_func
sub_813D60C:
	push {lr}
	ldr r1, off_813D618 // =byte_200BC50 
	ldrb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	tst r0, r0
	pop {pc}
	.balign 4, 0x00
off_813D618: .word byte_200BC50
.endfunc // sub_813D60C

	push {lr}
	ldr r1, off_813D628 // =byte_200BC50 
	mov r0, #0
	strb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	pop {pc}
	.balign 4, 0x00
off_813D628: .word byte_200BC50
.func
.thumb_func
sub_813D62C:
	push {lr}
	ldr r1, off_813D634 // =byte_200BC50 
	strb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
	pop {pc}
off_813D634: .word byte_200BC50
.endfunc // sub_813D62C

.func
.thumb_func
sub_813D638:
	push {lr}
	ldr r0, off_813D644 // =byte_2009470 
	ldrb r0, [r0]
	tst r0, r0
	pop {pc}
	.balign 4, 0x00
off_813D644: .word byte_2009470
.endfunc // sub_813D638

.func
.thumb_func
sub_813D648:
	push {lr}
	bl sub_8149718
	ldr r1, dword_813D654 // =0x8001 
	cmp r0, r1
	pop {pc}
dword_813D654: .word 0x8001
.endfunc // sub_813D648

	push {r4,lr}
	bl sub_8146E78
	pop {r4,pc}
	.word byte_200AF80
	.word unk_200FFF0
	.word unk_2009480
.func
.thumb_func
sub_813D66C:
	push {r4,lr}
	bl sub_8147B3C
	pop {r4,pc}
	.word byte_200AF80
	.word unk_200FFF0
	.word unk_2009480
.endfunc // sub_813D66C

	push {lr}
	ldr r0, off_813D68C // =byte_200AF80 
	mov r1, #0x18
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
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
	str r1, [r2,#0x4] // (dword_200DD14 - 0x200dd10)
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
.func
.thumb_func
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
.endfunc // sub_813D6DC

.func
.thumb_func
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
.endfunc // sub_813D6F4

.func
.thumb_func
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
.endfunc // sub_813D714

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
.func
.thumb_func
sub_813D750:
	push {lr}
	ldr r0, off_813D75C // =byte_200BC50 
	mov r1, #0xb
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	pop {pc}
	.balign 4, 0x00
off_813D75C: .word byte_200BC50
.endfunc // sub_813D750

.func
.thumb_func
sub_813D760:
	push {lr}
	ldr r0, off_813D76C // =byte_200BC50 
	mov r1, #0
	strb r1, [r0,#0x5] // (byte_200BC55 - 0x200bc50)
	pop {pc}
	.balign 4, 0x00
off_813D76C: .word byte_200BC50
.endfunc // sub_813D760

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
.func
.thumb_func
sub_813D78C:
	push {lr}
	ldr r2, off_813D79C // =dword_813D7A0 
	lsl r0, r0, #2
	ldr r0, [r2,r0]
	ldr r2, [r1,#0x1c]
	orr r2, r0
	str r2, [r1,#0x1c]
	pop {pc}
off_813D79C: .word dword_813D7A0
dword_813D7A0: .word 0x0
	.word 0x1, 0x4, 0x10, 0x40, 0x100
.endfunc // sub_813D78C

.func
.thumb_func
sub_813D7B8:
	push {r5,r7,lr}
	add r7, r0, #0
	mov r0, #0
	bl sub_802D064
	add r5, r0, #0
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
.endfunc // sub_813D7B8

.func
.thumb_func
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
.endfunc // sub_813D804

.func
.thumb_func
sub_813D838:
	push {lr}
	ldr r0, dword_813D844 // =0x2 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	pop {pc}
dword_813D844: .word 0x2
.endfunc // sub_813D838

.func
.thumb_func
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
	add r2, r0, #0
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
.endfunc // sub_813D848

.func
.thumb_func
sub_813D87C:
	push {lr}
	ldr r0, dword_813D888 // =0x20 
	ldr r1, [r5,#0x1c]
	orr r1, r0
	str r1, [r5,#0x1c]
	pop {pc}
dword_813D888: .word 0x20
.endfunc // sub_813D87C

.func
.thumb_func
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
.endfunc // sub_813D88C

.func
.thumb_func
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
.endfunc // sub_813D8AC

.func
.thumb_func
sub_813D8C4:
	ldr r0, off_813D8CC // =sCamera+80 
	mov r1, #4
	str r1, [r0,#0x58] // (dword_2009A28 - 0x20099d0)
	mov pc, lr
off_813D8CC: .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_813D8C4

.func
.thumb_func
sub_813D8D0:
	push {lr}
	mov r0, #0x10
	bl sub_803CB00
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_813D8D0

	push {lr}
	bl change_20013F0_800151C // () -> int
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
	add r3, r4, #0
	lsr r3, r3, #8
	strb r3, [r0,r2]
	add r2, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	strb r4, [r0,r2]
	pop {pc}
	.balign 4, 0x00
off_813D908: .word unk_2010150
.func
.thumb_func
sub_813D90C:
	ldr r1, off_813D974 // =byte_200BC50 
	strb r0, [r1,#0x7] // (byte_200BC57 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
.endfunc // sub_813D90C

	ldr r1, off_813D974 // =byte_200BC50 
	strb r0, [r1,#0x1] // (byte_200BC51 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
.func
.thumb_func
sub_813D91C:
	ldr r1, off_813D974 // =byte_200BC50 
	ldrb r0, [r1,#0x1] // (byte_200BC51 - 0x200bc50)
	mov pc, lr
	.balign 4, 0x00
.endfunc // sub_813D91C

.func
.thumb_func
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
.endfunc // sub_813D924

.func
.thumb_func
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
.endfunc // sub_813D934

.func
.thumb_func
sub_813D94C:
	push {lr}
	mov r2, #0
	ldr r1, off_813D974 // =byte_200BC50 
	ldrb r1, [r1]
	cmp r1, r0
	beq loc_813D95A
	mov r2, #1
loc_813D95A:
	add r0, r2, #0
	pop {pc}
	.byte 0, 0
.endfunc // sub_813D94C

.func
.thumb_func
sub_813D960:
	push {r4,r7,lr}
	ldr r7, off_813D974 // =byte_200BC50 
	ldrb r4, [r7,#0x7] // (byte_200BC57 - 0x200bc50)
	// memBlock
	add r0, r7, #0
	// size
	mov r1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	strb r4, [r7,#0x7] // (byte_200BC57 - 0x200bc50)
	pop {r4,r7,pc}
	.balign 4, 0x00
off_813D974: .word byte_200BC50
.endfunc // sub_813D960

.func
.thumb_func
sub_813D978:
	push {lr}
	ldr r0, off_813D988 // =byte_200BC50 
	mov r1, #9
	strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
	mov r0, #0
	bl sub_813D934
	pop {pc}
off_813D988: .word byte_200BC50
.endfunc // sub_813D978

.func
.thumb_func
sub_813D98C:
	push {lr}
	bl sub_813D978
	mov r0, #4
	ldr r1, off_813D99C // =byte_200BC30 
	strb r0, [r1,#0xe] // (byte_200BC3E - 0x200bc30)
	pop {pc}
	.balign 4, 0x00
off_813D99C: .word byte_200BC30
.endfunc // sub_813D98C

.func
.thumb_func
sub_813D9A0:
	push {lr}
	ldr r1, off_813D9A8 // =byte_200BC50 
	strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
	pop {pc}
off_813D9A8: .word byte_200BC50
.endfunc // sub_813D9A0

.func
.thumb_func
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
	add r4, r0, #0
	cmp r4, #4
	beq locret_813D9CA
	bl sub_8146B70
locret_813D9CA:
	pop {r4,pc}
off_813D9CC: .word byte_200BC50
off_813D9D0: .word off_813D9D4
off_813D9D4: .word sub_813D9DC+1
	.word sub_813D9E8+1
.endfunc // sub_813D9AC

.func
.thumb_func
sub_813D9DC:
	push {lr}
	bl sub_8148884
	bl sub_813DAF4
	pop {pc}
.endfunc // sub_813D9DC

.func
.thumb_func
sub_813D9E8:
	push {lr}
	bl sub_8148FC0
	bl sub_813DAF4
	pop {pc}
.endfunc // sub_813D9E8

.func
.thumb_func
sub_813D9F4:
	push {lr}
	mov r4, #2
	ldr r0, off_813DA08 // =byte_20101B4 
	ldrb r0, [r0]
	cmp r0, #1
	ble loc_813DA02
	mov r4, #4
loc_813DA02:
	add r0, r4, #0
	pop {pc}
	.balign 4, 0x00
off_813DA08: .word byte_20101B4
.endfunc // sub_813D9F4

.func
.thumb_func
sub_813DA0C:
	push {r4,lr}
	ldr r4, off_813DB0C // =byte_203F7D8 
	mov r0, #2
	strb r0, [r4,#0x1] // (byte_203F7D8+1 - 0x203f7d8)
	ldrb r0, [r4]
	tst r0, r0
	beq loc_813DA22
	bl sub_813D9AC
	strb r0, [r4,#0x1] // (byte_203F7D8+1 - 0x203f7d8)
	b locret_813DA36
loc_813DA22:
	ldr r0, off_813DB10 // =word_2036780 
	ldr r1, off_813DB14 // =unk_20399F0 
	mov r2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r0, off_813DB18 // =word_2036780 
	ldr r1, off_813DB1C // =unk_2039A00 
	mov r2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
locret_813DA36:
	pop {r4,pc}
.endfunc // sub_813DA0C

	push {lr}
	ldr r3, off_813DA7C // =sCamera+80 
	ldrb r3, [r3,#0x6] // (sCamera.pad_56 - 0x20099d0)
	cmp r3, #1
	bne locret_813DA4C
	add r2, r1, #0
	add r1, r0, #0
	ldr r0, [r3,#0x34]
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
locret_813DA4C:
	pop {pc}
	.byte 0, 0
	push {lr}
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	push {r4,lr}
	add r2, r1, #0
	ldr r3, off_813DA7C // =sCamera+80 
	ldrb r0, [r3,#0x6] // (sCamera.pad_56 - 0x20099d0)
	cmp r0, #1
	bne locret_813DA78
	strb r1, [r7,#6]
	ldr r1, [r3,#0x38] // (sCamera.unk_88 - 0x20099d0)
	ldr r4, off_813DA80 // =byte_200BC50 
	ldrb r4, [r4,#0x1] // (byte_200BC51 - 0x200bc50)
	tst r4, r4
	beq loc_813DA72
	ldr r1, [r3,#0x3c] // (sCamera.unk_8C - 0x20099d0)
loc_813DA72:
	mov r2, #0xa
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
locret_813DA78:
	pop {r4,pc}
	.balign 4, 0x00
off_813DA7C: .word sCamera+0x50 // sCamera.unk_50
off_813DA80: .word byte_200BC50
.func
.thumb_func
sub_813DA84:
	push {lr}
	// memBlock
	ldr r0, off_813DA90 // =byte_2010290 
	// size
	mov r1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
off_813DA90: .word byte_2010290
.endfunc // sub_813DA84

.func
.thumb_func
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
	add r0, r4, #0
	pop {r4,r5,pc}
	.byte 0, 0
off_813DAB0: .word byte_200BC50
off_813DAB4: .word off_813DAB8
off_813DAB8: .word sub_813DAC0+1
	.word sub_813DADC+1
.endfunc // sub_813DA94

.func
.thumb_func
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
.endfunc // sub_813DAC0

.func
.thumb_func
sub_813DADC:
	push {r4,r6,lr}
	mov r4, #1
	mov r6, #8
	bl sub_813D648
	beq loc_813DAEA
	mov r4, #2
loc_813DAEA:
	strb r6, [r5,#2]
	add r0, r4, #0
	bl sub_813D62C
	pop {r4,r6,pc}
.endfunc // sub_813DADC

.func
.thumb_func
sub_813DAF4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#4]
	ldrh r1, [r0]
	ldr r0, off_813DB04 // =word_2036780 
	strh r1, [r0]
	strh r1, [r0,#0xa] // (dword_2036788+2 - 0x2036780)
	pop {pc}
off_813DB04: .word word_2036780
off_813DB08: .word 0x214
off_813DB0C: .word byte_203F7D8
off_813DB10: .word word_2036780
off_813DB14: .word unk_20399F0
off_813DB18: .word word_2036780
off_813DB1C: .word unk_2039A00
.endfunc // sub_813DAF4

	push {lr}
	pop {pc}
.func
.thumb_func
sub_813DB24:
	push {r4-r7,lr}
	sub sp, sp, #8
	str r1, [sp,#4]
	lsl r0, r0, #2
	add r7, r0, #0
	bl sub_803DD30
	beq loc_813DB36
	mov r0, #1
loc_813DB36:
	ldr r4, off_813DBA0 // =byte_200F360 
	strb r0, [r4]
	mov r5, #0
loc_813DB3C:
	ldr r1, off_813DBBC // =sCamera+80 
	ldr r6, [r1,#0x3c] // (sCamera.unk_8C - 0x20099d0)
	tst r5, r5
	bne loc_813DB46
	ldr r6, [r1,#0x38] // (sCamera.unk_88 - 0x20099d0)
loc_813DB46:
	ldr r0, [r6]
	ldr r1, dword_813DBA4 // =0x42523545 
	cmp r0, r1
	bne loc_813DB58
	ldrh r0, [r6,#4]
	ldr r1, off_813DBA8 // =dword_813DBAC 
	ldr r1, [r1,r7]
	cmp r0, r1
	bne loc_813DB58
loc_813DB58:
	add r5, #1
	cmp r5, #2
	blt loc_813DB3C
	ldr r1, off_813DBBC // =sCamera+80 
	ldr r6, [r1,#0x38] // (sCamera.unk_88 - 0x20099d0)
	str r6, [sp]
	ldr r6, [r1,#0x3c] // (sCamera.unk_8C - 0x20099d0)
	ldrb r5, [r4]
	tst r5, r5
	beq loc_813DB72
	ldr r6, [r1,#0x3c] // (sCamera.unk_8C - 0x20099d0)
	str r6, [sp]
	ldr r6, [r1,#0x38] // (sCamera.unk_88 - 0x20099d0)
loc_813DB72:
	ldr r0, [r6]
	ldr r1, dword_813DBA4 // =0x42523545 
	cmp r0, r1
	bne loc_813DB96
	ldrh r0, [r6,#4]
	ldr r1, off_813DBA8 // =dword_813DBAC 
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
	add r0, r6, #0
	b loc_813DB98
loc_813DB96:
	mov r0, #0xff
loc_813DB98:
	ldr r1, [sp]
	add sp, sp, #8
	pop {r4-r7,pc}
	.byte 0, 0
off_813DBA0: .word byte_200F360
dword_813DBA4: .word 0x42523545
off_813DBA8: .word dword_813DBAC
dword_813DBAC: .word 0x4000, 0x200, 0x0
	.word 0x1
off_813DBBC: .word sCamera+0x50 // sCamera.unk_50
byte_813DBC0: .byte 0x10
	.byte 0xB5
.endfunc // sub_813DB24

	ldr r4, off_813DBD4 // =dword_200B1B0 
	strh r0, [r4,#0x8] // (word_200B1B8 - 0x200b1b0)
	strh r1, [r4,#0x6] // (word_200B1B6 - 0x200b1b0)
	strh r2, [r4,#0x4] // (word_200B1B4 - 0x200b1b0)
	ldr r0, dword_813DBD8 // =0x42523545 
	str r0, [r4]
	mov r0, #0x3c 
	strh r0, [r4,#0xa] // (word_200B1BA - 0x200b1b0)
	pop {r4,pc}
off_813DBD4: .word dword_200B1B0
dword_813DBD8: .word 0x42523545
unk_813DBDC: .byte  0
	.byte 0x0, 0x0, 0xFF
	.byte 0xFF
	.byte 0xFF, 0xFF, 0xFF
tileRefs_813DBE4: .hword 0x4200
	.byte  2
	.byte 0x42 
	.byte  4
	.byte 0x42, 0x6, 0x42
	.byte  8
	.byte 0x42, 0xA, 0x42
	.byte 0xC
	.byte 0x42, 0xE, 0x42
	.byte 0x10
	.byte 0x42, 0x12, 0x42
	.byte 0x14
	.byte 0x42, 0x16, 0x42
	.byte 0x18
	.byte 0x42, 0x1A, 0x42
	.byte 0x1C
	.byte 0x42, 0x1E, 0x42
	.byte 0x20
	.byte 0x42, 0x22, 0x42
	.byte 0x24 
	.byte 0x42, 0x26, 0x42
	.byte 0x28 
	.byte 0x42, 0x2A, 0x42
	.byte 0x2C 
	.byte 0x42, 0x1, 0x42
	.byte  3
	.byte 0x42, 0x5, 0x42
	.byte  7
	.byte 0x42, 0x9, 0x42
	.byte 0xB
	.byte 0x42, 0xD, 0x42
	.byte 0xF
	.byte 0x42, 0x11, 0x42
	.byte 0x13
	.byte 0x42, 0x15, 0x42
	.byte 0x17
	.byte 0x42, 0x19, 0x42
	.byte 0x1B
	.byte 0x42, 0x1D, 0x42
	.byte 0x1F
	.byte 0x42, 0x21, 0x42
	.byte 0x23 
	.byte 0x42, 0x25, 0x42
	.byte 0x27 
	.byte 0x42, 0x29, 0x42
	.byte 0x2B 
	.byte 0x42, 0x2D, 0x42
	.byte 0x40 
	.byte 0x52, 0x42, 0x52
	.byte 0x44 
	.byte 0x52, 0x46, 0x52
	.byte 0x48 
	.byte 0x52, 0x4A, 0x52
	.byte 0x4C 
	.byte 0x52, 0x4E, 0x52
	.byte 0x50 
	.byte 0x52, 0x52, 0x52
	.byte 0x54 
	.byte 0x52, 0x56, 0x52
	.byte 0x58 
	.byte 0x52, 0x5A, 0x52
	.byte 0x5C 
	.byte 0x52, 0x5E, 0x52
	.byte 0x60 
	.byte 0x52, 0x62, 0x52
	.byte 0x64 
	.byte 0x52, 0x66, 0x52
	.byte 0x68 
	.byte 0x52, 0x6A, 0x52
	.byte 0x6C 
	.byte 0x52, 0x41, 0x52
	.byte 0x43 
	.byte 0x52, 0x45, 0x52
	.byte 0x47 
	.byte 0x52, 0x49, 0x52
	.byte 0x4B 
	.byte 0x52, 0x4D, 0x52
	.byte 0x4F 
	.byte 0x52, 0x51, 0x52
	.byte 0x53 
	.byte 0x52, 0x55, 0x52
	.byte 0x57 
	.byte 0x52, 0x59, 0x52
	.byte 0x5B 
	.byte 0x52, 0x5D, 0x52
	.byte 0x5F 
	.byte 0x52, 0x61, 0x52
	.byte 0x63 
	.byte 0x52, 0x65, 0x52
	.byte 0x67 
	.byte 0x52, 0x69, 0x52
	.byte 0x6B 
	.byte 0x52, 0x6D, 0x52
	.byte 0x80
	.byte 0x42, 0x82, 0x42
	.byte 0x84
	.byte 0x42, 0x86, 0x42
	.byte 0x88
	.byte 0x42, 0x8A, 0x42
	.byte 0x8C
	.byte 0x42, 0x8E, 0x42
	.byte 0x90
	.byte 0x42, 0x92, 0x42
	.byte 0x94
	.byte 0x42, 0x96, 0x42
	.byte 0x98
	.byte 0x42, 0x9A, 0x42
	.byte 0x9C
	.byte 0x42, 0x9E, 0x42
	.byte 0xA0
	.byte 0x42, 0xA2, 0x42
	.byte 0xA4
	.byte 0x42, 0xA6, 0x42
	.byte 0xA8
	.byte 0x42, 0xAA, 0x42
	.byte 0xAC
	.byte 0x42, 0x81, 0x42
	.byte 0x83
	.byte 0x42, 0x85, 0x42
	.byte 0x87
	.byte 0x42, 0x89, 0x42
	.byte 0x8B
	.byte 0x42, 0x8D, 0x42
	.byte 0x8F
	.byte 0x42, 0x91, 0x42
	.byte 0x93
	.byte 0x42, 0x95, 0x42
	.byte 0x97
	.byte 0x42, 0x99, 0x42
	.byte 0x9B
	.byte 0x42, 0x9D, 0x42
	.byte 0x9F
	.byte 0x42, 0xA1, 0x42
	.byte 0xA3
	.byte 0x42, 0xA5, 0x42
	.byte 0xA7
	.byte 0x42, 0xA9, 0x42
	.byte 0xAB
	.byte 0x42, 0xAD, 0x42
	.byte 0xC0
	.byte 0x52, 0xC2, 0x52
	.byte 0xC4
	.byte 0x52, 0xC6, 0x52
	.byte 0xC8
	.byte 0x52, 0xCA, 0x52
	.byte 0xCC
	.byte 0x52, 0xCE, 0x52
	.byte 0xD0
	.byte 0x52, 0xD2, 0x52
	.byte 0xD4
	.byte 0x52, 0xD6, 0x52
	.byte 0xD8
	.byte 0x52, 0xDA, 0x52
	.byte 0xDC
	.byte 0x52, 0xDE, 0x52
	.byte 0xE0
	.byte 0x52, 0xE2, 0x52
	.byte 0xE4
	.byte 0x52, 0xE6, 0x52
	.byte 0xE8
	.byte 0x52, 0xEA, 0x52
	.byte 0xEC
	.byte 0x52, 0xC1, 0x52
	.byte 0xC3
	.byte 0x52, 0xC5, 0x52
	.byte 0xC7
	.byte 0x52, 0xC9, 0x52
	.byte 0xCB
	.byte 0x52, 0xCD, 0x52
	.byte 0xCF
	.byte 0x52, 0xD1, 0x52
	.byte 0xD3
	.byte 0x52, 0xD5, 0x52
	.byte 0xD7
	.byte 0x52, 0xD9, 0x52
	.byte 0xDB
	.byte 0x52, 0xDD, 0x52
	.byte 0xDF
	.byte 0x52, 0xE1, 0x52
	.byte 0xE3
	.byte 0x52, 0xE5, 0x52
	.byte 0xE7
	.byte 0x52, 0xE9, 0x52
	.byte 0xEB
	.byte 0x52, 0xED, 0x52
	.byte  0
	.byte 0x43, 0x2, 0x43
	.byte  4
	.byte 0x43, 0x6, 0x43
	.byte  8
	.byte 0x43, 0xA, 0x43
	.byte 0xC
	.byte 0x43, 0xE, 0x43
	.byte 0x10
	.byte 0x43, 0x12, 0x43
	.byte 0x14
	.byte 0x43, 0x16, 0x43
	.byte 0x18
	.byte 0x43, 0x1A, 0x43
	.byte 0x1C
	.byte 0x43, 0x1E, 0x43
	.byte 0x20
	.byte 0x43, 0x22, 0x43
	.byte 0x24 
	.byte 0x43, 0x26, 0x43
	.byte 0x28 
	.byte 0x43, 0x2A, 0x43
	.byte 0x2C 
	.byte 0x43, 0x1, 0x43
	.byte  3
	.byte 0x43, 0x5, 0x43
	.byte  7
	.byte 0x43, 0x9, 0x43
	.byte 0xB
	.byte 0x43, 0xD, 0x43
	.byte 0xF
	.byte 0x43, 0x11, 0x43
	.byte 0x13
	.byte 0x43, 0x15, 0x43
	.byte 0x17
	.byte 0x43, 0x19, 0x43
	.byte 0x1B
	.byte 0x43, 0x1D, 0x43
	.byte 0x1F
	.byte 0x43, 0x21, 0x43
	.byte 0x23 
	.byte 0x43, 0x25, 0x43
	.byte 0x27 
	.byte 0x43, 0x29, 0x43
	.byte 0x2B 
	.byte 0x43, 0x2D, 0x43
	.byte 0x40 
	.byte 0x53, 0x42, 0x53
	.byte 0x44 
	.byte 0x53, 0x46, 0x53
	.byte 0x48 
	.byte 0x53, 0x4A, 0x53
	.byte 0x4C 
	.byte 0x53, 0x4E, 0x53
	.byte 0x50 
	.byte 0x53, 0x52, 0x53
	.byte 0x54 
	.byte 0x53, 0x56, 0x53
	.byte 0x58 
	.byte 0x53, 0x5A, 0x53
	.byte 0x5C 
	.byte 0x53, 0x5E, 0x53
	.byte 0x60 
	.byte 0x53, 0x62, 0x53
	.byte 0x64 
	.byte 0x53, 0x66, 0x53
	.byte 0x68 
	.byte 0x53, 0x6A, 0x53
	.byte 0x6C 
	.byte 0x53, 0x41, 0x53
	.byte 0x43 
	.byte 0x53, 0x45, 0x53
	.byte 0x47 
	.byte 0x53, 0x49, 0x53
	.byte 0x4B 
	.byte 0x53, 0x4D, 0x53
	.byte 0x4F 
	.byte 0x53, 0x51, 0x53
	.byte 0x53 
	.byte 0x53, 0x55, 0x53
	.byte 0x57 
	.byte 0x53, 0x59, 0x53
	.byte 0x5B 
	.byte 0x53, 0x5D, 0x53
	.byte 0x5F 
	.byte 0x53, 0x61, 0x53
	.byte 0x63 
	.byte 0x53, 0x65, 0x53
	.byte 0x67 
	.byte 0x53, 0x69, 0x53
	.byte 0x6B 
	.byte 0x53, 0x6D, 0x53
	.byte 0x80
	.byte 0x43, 0x82, 0x43
	.byte 0x84
	.byte 0x43, 0x86, 0x43
	.byte 0x88
	.byte 0x43, 0x8A, 0x43
	.byte 0x8C
	.byte 0x43, 0x8E, 0x43
	.byte 0x90
	.byte 0x43, 0x92, 0x43
	.byte 0x94
	.byte 0x43, 0x96, 0x43
	.byte 0x98
	.byte 0x43, 0x9A, 0x43
	.byte 0x9C
	.byte 0x43, 0x9E, 0x43
	.byte 0xA0
	.byte 0x43, 0xA2, 0x43
	.byte 0xA4
	.byte 0x43, 0xA6, 0x43
	.byte 0xA8
	.byte 0x43, 0xAA, 0x43
	.byte 0xAC
	.byte 0x43, 0x81, 0x43
	.byte 0x83
	.byte 0x43, 0x85, 0x43
	.byte 0x87
	.byte 0x43, 0x89, 0x43
	.byte 0x8B
	.byte 0x43, 0x8D, 0x43
	.byte 0x8F
	.byte 0x43, 0x91, 0x43
	.byte 0x93
	.byte 0x43, 0x95, 0x43
	.byte 0x97
	.byte 0x43, 0x99, 0x43
	.byte 0x9B
	.byte 0x43, 0x9D, 0x43
	.byte 0x9F
	.byte 0x43, 0xA1, 0x43
	.byte 0xA3
	.byte 0x43, 0xA5, 0x43
	.byte 0xA7
	.byte 0x43, 0xA9, 0x43
	.byte 0xAB
	.byte 0x43, 0xAD, 0x43
	.byte 0xC0
	.byte 0x53, 0xC2, 0x53
	.byte 0xC4
	.byte 0x53, 0xC6, 0x53
	.byte 0xC8
	.byte 0x53, 0xCA, 0x53
	.byte 0xCC
	.byte 0x53, 0xCE, 0x53
	.byte 0xD0
	.byte 0x53, 0xD2, 0x53
	.byte 0xD4
	.byte 0x53, 0xD6, 0x53
	.byte 0xD8
	.byte 0x53, 0xDA, 0x53
	.byte 0xDC
	.byte 0x53, 0xDE, 0x53
	.byte 0xE0
	.byte 0x53, 0xE2, 0x53
	.byte 0xE4
	.byte 0x53, 0xE6, 0x53
	.byte 0xE8
	.byte 0x53, 0xEA, 0x53
	.byte 0xEC
	.byte 0x53, 0xC1, 0x53
	.byte 0xC3
	.byte 0x53, 0xC5, 0x53
	.byte 0xC7
	.byte 0x53, 0xC9, 0x53
	.byte 0xCB
	.byte 0x53, 0xCD, 0x53
	.byte 0xCF
	.byte 0x53, 0xD1, 0x53
	.byte 0xD3
	.byte 0x53, 0xD5, 0x53
	.byte 0xD7
	.byte 0x53, 0xD9, 0x53
	.byte 0xDB
	.byte 0x53, 0xDD, 0x53
	.byte 0xDF
	.byte 0x53, 0xE1, 0x53
	.byte 0xE3
	.byte 0x53, 0xE5, 0x53
	.byte 0xE7
	.byte 0x53, 0xE9, 0x53
	.byte 0xEB
	.byte 0x53, 0xED, 0x53
unk_813DEC4: .byte  0
	.byte 0x60, 0x0, 0x60
	.byte  0
a02468: .asciz "` `\"`$`&`(`*`,`.`0`2`4`6`8`:`<`"
aBDFHJL: .asciz "`>`@`B`D`F`H`J`L`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
a13579: .asciz "`!`#`%`'`)`+`-`/`1`3`5`7`9`;`=`"
aACEGIKM: .asciz "`?`A`C`E`G`I`K`M`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
	.asciz "`"
	.byte 0x60
tileRefs_813DF44: .hword 0x61E0, 0x61E2, 0x61E4, 0x61E6, 0x61E8, 0x61EA, 0x61EC, 0x61EE
	.hword 0x61F0, 0x61F2, 0x61F4, 0x61F6, 0x61E1, 0x61E3, 0x61E5, 0x61E7
	.hword 0x61E9, 0x61EB, 0x61ED, 0x61EF, 0x61F1, 0x61F3, 0x61F5, 0x61F7
off_813DF74: .word reqBBS_requestNames_textualData
	.word reqBBS_requestInfo_textOffsets
dword_813DF7C: .word 0x17A0, 0x19A0, 0x2000FC0, 0x2000FF0, 0x2001400, 0x2018204
	.word 0x201A204, 0x2025A04, 0x2029A04, 0x17E0, 0x19E0, 0x2000FC4
	.word 0x2000FF4, 0x2001440, 0x2018204, 0x201A204, 0x2025A04, 0x2029A04
	.word 0x1820, 0x1A20, 0x2000FC8, 0x2000FF8, 0x2001480, 0x2018204
	.word 0x201A204, 0x2025A04, 0x2029A04, 0x1860, 0x1A60, 0x2000FCC
	.word 0x2000FFC, 0x20014C0, 0x2018204, 0x201A204, 0x2025A04, 0x2029A04
	.word 0x18A0, 0x1AA0, 0x2000FD0, 0x2001000, 0x2001500, 0x2018204
	.word 0x201A204, 0x2025A04, 0x2029A04, 0x18E0, 0x1AE0, 0x2000FD4
	.word 0x2001004, 0x2001540, 0x2018204, 0x201A204, 0x87E78A8, 0x87E7B30
	.word 0x87E9320, 0x87E9578, 0x87EA788, 0x87EA9F4, 0x87EBAB8, 0x87EBDDC
	.word 0x87ECF34, 0x87ED240, 0x87ECF34, 0x87ED240
/*For debugging purposes, connect comment at any range!*/
