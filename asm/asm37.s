.include "asm37.inc"

.thumb
sub_813B768:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    mov r1, #0
    strh r1, [r0]
    mov r0, r10
    ldr r0, [r0,#0x60]
    mov r1, #0x10
    bl sub_80008B4
    pop {pc}
    .byte 0, 0
// end of function sub_813B768

.thumb
sub_813B780:
    ldr r1, [pc, #0x813b78c-0x813b780-4] // =dword_813944C
    mov r2, #0x10
    mul r0, r2
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_813B78C:    .word dword_813944C
// end of function sub_813B780

.thumb
sub_813B790:
    push {lr}
    ldr r1, [pc, #0x813b79c-0x813b792-2] // =byte_20096D8
    ldrb r1, [r1]
    bl loc_813B7A0
    pop {pc}
off_813B79C:    .word byte_20096D8
// end of function sub_813B790

loc_813B7A0:
    push {r4,r6,r7,lr}
    add r6, r1, #0
    add r4, r0, #0
    bl sub_813B780
    add r7, r0, #0
    mov r2, #8
    ldr r1, [pc, #0x813b7e8-0x813b7ae-2] // =0x2660
    add r1, r1, r4
    add r0, r1, #0
    bl sub_802F168
    beq loc_813B7BC
    mov r2, #0xc
loc_813B7BC:
    ldr r7, [r7,r2]
    ldr r4, [pc, #0x813b7e4-0x813b7be-2] // =unk_2009F00
    ldr r0, [pc, #0x813b7d0-0x813b7c0-4] // =off_813B7D4
    lsl r1, r6, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    add r0, r4, #0
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_813B7D0:    .word off_813B7D4
off_813B7D4:    .word sub_813B7EC+1
    .word sub_813B7FC+1
    .word sub_813B818+1
    .word sub_813B830+1
off_813B7E4:    .word unk_2009F00
dword_813B7E8:    .word 0x2660
.thumb
sub_813B7EC:
    push {lr}
    add r0, r7, #0
    add r1, r4, #0
    mov r2, #0x31 
    bl sub_8000920
    pop {pc}
    .balign 4, 0x00
// end of function sub_813B7EC

.thumb
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
// end of function sub_813B7FC

.thumb
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
// end of function sub_813B818

.thumb
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
// end of function sub_813B830

.thumb
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
// end of function sub_813B84C

.thumb
sub_813B920:
    ldr r1, [pc, #0x813b930-0x813b920-4] // =byte_20096D8
    strb r0, [r1]
    mov pc, lr
    .balign 4, 0x00
// end of function sub_813B920

.thumb
sub_813B928:
    ldr r1, [pc, #0x813b930-0x813b928-4] // =byte_20096D8
    ldrb r0, [r1]
    mov pc, lr
    .byte 0, 0
off_813B930:    .word byte_20096D8
// end of function sub_813B928

.thumb
sub_813B934:
    push {lr}
    mov r0, r10
// memBlock
    ldr r0, [r0,#0x5c]
// numWords
    ldr r1, [pc, #0x813b94c-0x813b93a-2] // =0x188
    bl CpuSet_ZeroFillWord
    mov r0, r10
// memBlock
    ldr r0, [r0,#0x58]
// numWords
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord
    pop {pc}
off_813B94C:    .word 0x188
// end of function sub_813B934

.thumb
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
// end of function sub_813B950

.thumb
sub_813B9B4:
    mov r3, r10
    ldr r3, [r3,#0x58]
    mov r2, #7
    mul r1, r2
    add r0, r0, r1
    ldrb r0, [r3,r0]
    tst r0, r0
    mov pc, lr
// end of function sub_813B9B4

.thumb
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
// end of function sub_813B9C4

.thumb
sub_813B9E0:
    push {lr}
    ldr r1, [pc, #0x813b9ec-0x813b9e2-2] // =off_813B9F0
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    pop {pc}
    .balign 4, 0x00
off_813B9EC:    .word off_813B9F0
off_813B9F0:    .word dword_813B1C4+0x28
    .byte 0xCD
    .byte 0xB2
    .byte 0x13
    .byte 8
    .byte 0xAE
    .byte 0xB3
    .byte 0x13
    .byte 8
// end of function sub_813B9E0

.thumb
sub_813B9FC:
    mov r1, r10
    ldr r1, [r1,#0x5c]
    mov r2, #8
    mul r0, r2
    add r0, r0, r1
    mov pc, lr
// end of function sub_813B9FC

.thumb
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
// end of function sub_813BA08

.thumb
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
// end of function sub_813BA48

.thumb
sub_813BA64:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x58]
    ldr r1, [pc, #0x813ba9c-0x813ba6a-2] // =unk_201BA00
    mov r2, #0x40 
    bl sub_800093C
    mov r0, r10
    ldr r0, [r0,#0x5c]
    ldr r1, [pc, #0x813baa0-0x813ba76-2] // =unk_201BA40
    ldr r2, [pc, #0x813baa4-0x813ba78-4] // =0x188
    bl sub_800093C
    pop {pc}
// end of function sub_813BA64

.thumb
sub_813BA80:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x58]
    ldr r0, [pc, #0x813ba9c-0x813ba86-2] // =unk_201BA00
    mov r2, #0x40 
    bl sub_800093C
    mov r1, r10
    ldr r1, [r1,#0x5c]
    ldr r0, [pc, #0x813baa0-0x813ba92-2] // =unk_201BA40
    ldr r2, [pc, #0x813baa4-0x813ba94-4] // =0x188
    bl sub_800093C
    pop {pc}
off_813BA9C:    .word unk_201BA00
off_813BAA0:    .word unk_201BA40
off_813BAA4:    .word 0x188
// end of function sub_813BA80

.thumb
sub_813BAA8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x58]
    ldr r1, [pc, #0x813bae0-0x813baae-2] // =unk_201BC40
    mov r2, #0x40 
    bl sub_800093C
    mov r0, r10
    ldr r0, [r0,#0x5c]
    ldr r1, [pc, #0x813bae4-0x813baba-2] // =unk_201BC80
    ldr r2, [pc, #0x813bae8-0x813babc-4] // =0x188
    bl sub_800093C
    pop {pc}
// end of function sub_813BAA8

.thumb
sub_813BAC4:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x58]
    ldr r0, [pc, #0x813bae0-0x813baca-2] // =unk_201BC40
    mov r2, #0x40 
    bl sub_800093C
    mov r1, r10
    ldr r1, [r1,#0x5c]
    ldr r0, [pc, #0x813bae4-0x813bad6-2] // =unk_201BC80
    ldr r2, [pc, #0x813bae8-0x813bad8-4] // =0x188
    bl sub_800093C
    pop {pc}
off_813BAE0:    .word unk_201BC40
off_813BAE4:    .word unk_201BC80
off_813BAE8:    .word 0x188
// end of function sub_813BAC4

.thumb
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
// end of function sub_813BAEC

.thumb
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
// end of function sub_813BB00

.thumb
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
// end of function sub_813BB68

.thumb
sub_813BBD4:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x60]
    add r7, r0, #0
    mov r1, #0x10
    bl sub_80008B4
    ldr r0, [pc, #0x813bd18-0x813bbe2-2] // =unk_2006CF8
    mov r1, #0x31 
    bl sub_80008B4
    ldr r0, [pc, #0x813bd1c-0x813bbea-2] // =unk_2006C88
    mov r1, #0x31 
    bl sub_80008B4
    ldr r0, [pc, #0x813bd20-0x813bbf2-2] // =unk_2006CC0
    mov r1, #0x31 
    bl sub_80008B4
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
// end of function sub_813BBD4

.thumb
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
    ldr r7, [pc, #0x813bd20-0x813bc82-2] // =unk_2006CC0
    b loc_813BC88
loc_813BC86:
    ldr r7, [pc, #0x813bd18-0x813bc86-2] // =unk_2006CF8
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
// end of function sub_813BC1C

.thumb
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
    ldr r7, [pc, #0x813bd1c-0x813bcf8-4] // =unk_2006C88
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
// end of function sub_813BC98

.thumb
sub_813BD0C:
    ldr r7, [pc, #0x813bd18-0x813bd0c-4] // =unk_2006CF8
    mov pc, lr
// end of function sub_813BD0C

.thumb
sub_813BD10:
    ldr r7, [pc, #0x813bd1c-0x813bd10-4] // =unk_2006C88
    mov pc, lr
// end of function sub_813BD10

.thumb
sub_813BD14:
    ldr r7, [pc, #0x813bd20-0x813bd14-4] // =unk_2006CC0
    mov pc, lr
off_813BD18:    .word unk_2006CF8
off_813BD1C:    .word unk_2006C88
off_813BD20:    .word unk_2006CC0
// end of function sub_813BD14

.thumb
sub_813BD24:
    push {r4-r7,lr}
    mov r0, r8
    push {r0}
    mov r6, #0
loc_813BD2C:
    ldr r0, [pc, #0x813be88-0x813bd2c-4] // =byte_2006C50
    mov r1, #0x31 
    bl sub_80008B4
    ldr r0, [pc, #0x813be88-0x813bd34-4] // =byte_2006C50
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
// end of function sub_813BD24

.thumb
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
    ldr r4, [pc, #0x813be88-0x813bdec-4] // =byte_2006C50
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
// end of function sub_813BD90

.thumb
sub_813BE38:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r6, [sp]
    bl sub_813B780
    add r7, r0, #0
    ldrb r4, [r7,#3]
    mov r6, #0
    ldr r5, [pc, #0x813be88-0x813be48-4] // =byte_2006C50
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
off_813BE88:    .word byte_2006C50
// end of function sub_813BE38

.thumb
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
// end of function sub_813BE8C

.thumb
sub_813BEA8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x813bf08-0x813beaa-2] // =unk_2006D30
    add r4, r0, #0
    mov r1, #0x31 
    mov r2, #0xff
    bl initMemblockToByte
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
off_813BF08:    .word unk_2006D30
// end of function sub_813BEA8

.thumb
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
// end of function sub_813BF0C

.thumb
sub_813BF1C:
    push {r4-r7,lr}
    mov r6, #1
    mov r0, #0x17
    mov r1, #0x20 
    bl sub_802F164
    beq loc_813BF36
    b loc_813BF38
    mov r0, #0x17
    mov r1, #0x23 
    bl sub_802F164
    bne loc_813BF38
loc_813BF36:
    mov r6, #0
loc_813BF38:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_813BF1C

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
.thumb
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
// end of function sub_813BF60

.thumb
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
// end of function sub_813BFB8

.thumb
sub_813C020:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x60]
    mov r1, #0x10
    bl sub_80008B4
    pop {pc}
    .byte 0, 0
// end of function sub_813C020

.thumb
sub_813C030:
    push {r4-r7,lr}
    mov r5, #0x94
    mov r6, #1
loc_813C036:
    ldr r7, [pc, #0x813c064-0x813c036-2] // =dword_813944C
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
    ldr r0, [pc, #0x813c068-0x813c05a-2] // =0x14C
    cmp r5, r0
    blt loc_813C036
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813C064:    .word dword_813944C
off_813C068:    .word 0x14C
// end of function sub_813C030

.thumb
sub_813C06C:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r2, [sp,#4]
    ldr r5, [pc, #0x813c180-0x813c072-2] // =unk_813C188
    mov r3, #0xe
    mul r2, r3
    add r5, r5, r2
    ldr r4, [pc, #0x813c184-0x813c07a-2] // =unk_813C1A4
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
    ldr r2, [pc, #0x813c144-0x813c0ba-2] // =0x4142
    ldrh r1, [r5,r0]
    cmp r1, r2
    beq loc_813C0D4
    ldr r2, [pc, #0x813c148-0x813c0c2-2] // =0x51E4
    cmp r1, r2
    beq loc_813C0D4
    ldr r1, [pc, #0x813c13c-0x813c0c8-4] // =0x522E
    ldr r2, [sp,#4]
    tst r2, r2
    bne loc_813C0DE
    ldr r1, [pc, #0x813c140-0x813c0d0-4] // =0x35C0
    b loc_813C0DE
loc_813C0D4:
    ldr r1, [pc, #0x813c134-0x813c0d4-4] // =0x6F15
    ldr r2, [sp,#4]
    tst r2, r2
    bne loc_813C0DE
    ldr r1, [pc, #0x813c138-0x813c0dc-4] // =0x5A91
loc_813C0DE:
    push {r0,r1}
    bl sub_813C4C8
    add r3, r1, #0
    pop {r0,r1}
    ldr r2, [pc, #0x813c12c-0x813c0e8-4] // =unk_30019E0
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
    ldr r2, [pc, #0x813c12c-0x813c104-4] // =unk_30019E0
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
off_813C12C:    .word unk_30019E0
    .word unk_813C14C
dword_813C134:    .word 0x6F15
dword_813C138:    .word 0x5A91
dword_813C13C:    .word 0x522E
dword_813C140:    .word 0x35C3
dword_813C144:    .word 0x4142
dword_813C148:    .word 0x51E4
unk_813C14C:    .byte 0x1D
    .byte 0x1C, 0x3E, 0x3D
    .byte 0x3C 
    .byte 0x4D, 0x4C, 0x1E
    .byte 0x14
    .byte 0x18, 0x34, 0x38
    .byte 0x54 
    .byte 0x5F, 0x1F, 0x16
    .byte 0x1A
a6VDhxFjzDfhjtx:    .byte 0x36, 0x3A, 0x56, 0x5E, 0x2C
    .byte 0x24, 0x28, 0x44, 0x48, 0x58
    .byte 0x5D, 0x2D, 0x26, 0x2A, 0x46
    .byte 0x4A, 0x5A, 0x5C, 0x2E, 0x64
    .byte 0x66, 0x68, 0x6A, 0x74, 0x78
    .byte 0x2F, 0x6C, 0x6D, 0x6E, 0x6F
    .byte 0x76, 0x77, 0x0
    .byte 0, 0
off_813C180:    .word unk_813C188
off_813C184:    .word unk_813C1A4
unk_813C188:    .byte 4
    .byte 0x31 
    .byte 0x7B 
    .byte 0x6F 
    .byte 0x7B 
    .byte 3
    .byte 0x3B 
    .byte 0x62 
    .byte 0x5B 
    .byte 0
    .byte 5
    .byte 0x6E 
    .byte 3
    .byte 3
    .byte 0xA9
    .byte 0x45 
    .byte 0xFF
    .byte 0x7F 
    .byte 0xFF
    .byte 0x13
    .byte 0xBF
    .byte 0x72 
    .byte 0xDF
    .byte 0x10
    .byte 0x89
    .byte 0x7E 
    .byte 0x87
    .byte 7
unk_813C1A4:    .byte 4
    .byte 0x31 
    .byte 0xF7
    .byte 0x5E 
    .byte 0xF7
    .byte 2
    .byte 0xB7
    .byte 0x51 
    .byte 0x17
    .byte 0
    .byte 0x81
    .byte 0x5D 
    .byte 0x80
    .byte 2
    .byte 0xA9
    .byte 0x45 
    .byte 0x7B 
    .byte 0x6F 
    .byte 0x7B 
    .byte 3
    .byte 0x3B 
    .byte 0x62 
    .byte 0x5B 
    .byte 0
    .byte 5
    .byte 0x6E 
    .byte 2
    .byte 3
// end of function sub_813C06C

.thumb
sub_813C1C0:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp,#4]
    ldr r5, [pc, #0x813c2e4-0x813c1c6-2] // =unk_813C2EC
    mov r1, #0xe
    mul r0, r1
    add r5, r5, r0
    ldr r1, [pc, #0x813c2e8-0x813c1ce-2] // =unk_813C308
    add r1, r1, r0
    str r1, [sp]
    mov r6, r10
    ldr r6, [r6,#0x58]
    mov r4, #0
loc_813C1DA:
    ldrb r0, [r6,r4]
    tst r0, r0
    bne loc_813C1E4
    ldr r7, [pc, #0x813c29c-0x813c1e0-4] // =byte_813C2A0
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
    ldr r2, [pc, #0x813c294-0x813c20a-2] // =0x4142
    ldrh r1, [r5,r0]
    cmp r1, r2
    beq loc_813C224
    ldr r2, [pc, #0x813c298-0x813c212-2] // =0x51E4
    cmp r1, r2
    beq loc_813C224
    ldr r1, [pc, #0x813c28c-0x813c218-4] // =0x41AA
    ldr r2, [sp,#4]
    tst r2, r2
    bne loc_813C22E
    ldr r1, [pc, #0x813c290-0x813c220-4] // =0x3968
    b loc_813C22E
loc_813C224:
    ldr r1, [pc, #0x813c284-0x813c224-4] // =0x6F15
    ldr r2, [sp,#4]
    tst r2, r2
    bne loc_813C22E
    ldr r1, [pc, #0x813c288-0x813c22c-4] // =0x5A91
loc_813C22E:
    push {r0,r1}
    bl sub_813C4C8
    add r3, r1, #0
    pop {r0,r1}
    ldr r2, [pc, #0x813c27c-0x813c238-4] // =unk_30019E0
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
    ldr r2, [pc, #0x813c27c-0x813c254-4] // =unk_30019E0
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
off_813C27C:    .word unk_30019E0
    .word unk_813C2B0
dword_813C284:    .word 0x6F15
dword_813C288:    .word 0x5A91
dword_813C28C:    .word 0x41AA
dword_813C290:    .word 0x3968
dword_813C294:    .word 0x4142
dword_813C298:    .word 0x51E4
off_813C29C:    .word byte_813C2A0
byte_813C2A0:    .byte 0x0
byte_813C2A1:    .byte 0x0
    .word 0, 0, 0
    .byte 0, 0
unk_813C2B0:    .byte 0x1D
    .byte 0x1C, 0x3E, 0x3D
    .byte 0x3C 
    .byte 0x4D, 0x4C, 0x1E
    .byte 0x14
    .byte 0x18, 0x34, 0x38
    .byte 0x54 
    .byte 0x5F, 0x1F, 0x16
    .byte 0x1A
a6VDhxFjzDfhjtx_0:    .byte 0x36, 0x3A, 0x56, 0x5E, 0x2C
    .byte 0x24, 0x28, 0x44, 0x48, 0x58
    .byte 0x5D, 0x2D, 0x26, 0x2A, 0x46
    .byte 0x4A, 0x5A, 0x5C, 0x2E, 0x64
    .byte 0x66, 0x68, 0x6A, 0x74, 0x78
    .byte 0x2F, 0x6C, 0x6D, 0x6E, 0x6F
    .byte 0x76, 0x77, 0x0
    .balign 4, 0x00
off_813C2E4:    .word unk_813C2EC
off_813C2E8:    .word unk_813C308
unk_813C2EC:    .byte 0x42 
    .byte 0x41 
    .byte 0x7B 
    .byte 0x6F 
    .byte 0x7B 
    .byte 3
    .byte 0x3B 
    .byte 0x62 
    .byte 0x5B 
    .byte 0
    .byte 5
    .byte 0x6E 
    .byte 3
    .byte 3
    .byte 0xE4
    .byte 0x51 
    .byte 0xFF
    .byte 0x7F 
    .byte 0xFF
    .byte 0x13
    .byte 0xBF
    .byte 0x72 
    .byte 0xDF
    .byte 0x10
    .byte 0x89
    .byte 0x7E 
    .byte 0x87
    .byte 7
unk_813C308:    .byte 0x42 
    .byte 0x41 
    .byte 0xF7
    .byte 0x5E 
    .byte 0xF7
    .byte 2
    .byte 0xB7
    .byte 0x51 
    .byte 0x17
    .byte 0
    .byte 0x81
    .byte 0x5D 
    .byte 0x80
    .byte 2
    .byte 0xE4
    .byte 0x51 
    .byte 0x7B 
    .byte 0x6F 
    .byte 0x7B 
    .byte 3
    .byte 0x3B 
    .byte 0x62 
    .byte 0x5B 
    .byte 0
    .byte 5
    .byte 0x6E 
    .byte 2
    .byte 3
// end of function sub_813C1C0

.thumb
sub_813C324:
    push {lr}
    ldr r0, [pc, #0x813c330-0x813c326-2] // =unk_2000090
    mov r1, #8
    bl sub_80008B4
    pop {pc}
off_813C330:    .word unk_2000090
// end of function sub_813C324

.thumb
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
    ldr r1, [pc, #0x813c398-0x813c346-2] // =0x813B50C
    mov r2, #0xa
    mul r3, r2
    add r1, r1, r3
    add r4, r1, #0
    cmp r6, #0xa
    beq loc_813C394
    ldrb r2, [r1,r6]
    cmp r2, #0xff
    beq loc_813C362
    ldr r1, [pc, #0x813c39c-0x813c35a-2] // =dword_813C3A4
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
    ldr r2, [pc, #0x813c3a0-0x813c370-4] // =0x2660
    add r2, r2, r3
    add r0, r2, #0
    bl sub_802F168
    beq loc_813C386
    add r0, r2, #0
    mov r2, #4
    bl loc_802F1AC
    b loc_813C38E
loc_813C386:
    add r0, r2, #0
    mov r2, #4
    bl loc_802F182
loc_813C38E:
    mov r0, #0x8b
    bl sound_play
loc_813C394:
    add r0, r6, #0
    pop {r4-r7,pc}
dword_813C398:    .word 0x813B522
off_813C39C:    .word dword_813C3A4
dword_813C3A0:    .word 0x2660
dword_813C3A4:    .word 0x1000200
    .word 0x20001
// end of function sub_813C334

.thumb
sub_813C3AC:
    push {r4-r7,lr}
    bl getPETNaviSelect
    tst r0, r0
    beq loc_813C3B8
    b loc_813C3CC
loc_813C3B8:
    bl sub_813C458
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164
    beq loc_813C3CC
    bl loc_8121154
    b loc_813C3CC
loc_813C3CC:
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_813C40E
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F164
    beq locret_813C454
    mov r0, #0
    mov r1, #0x42 
    bl sub_80137FE
    add r7, r0, #0
    mov r0, #0
    mov r1, #0x40 
    add r2, r7, #0
    bl sub_80137E6
    bl getPETNaviSelect
    mov r1, #0x42 
    bl sub_80137FE
    add r7, r0, #0
    bl getPETNaviSelect
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
    bl getPETNaviSelect
    mov r1, #0x42 
    bl sub_80137FE
    add r4, r0, #0
    bl getPETNaviSelect
    mov r1, #0x40 
    bl sub_80137FE
    cmp r0, r4
    ble locret_813C454
    bl getPETNaviSelect
    mov r1, #0x40 
    add r2, r4, #0
    bl sub_80137E6
locret_813C454:
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_813C3AC

.thumb
sub_813C458:
    push {r4,lr}
    bl sub_813BBD4
    bl sub_8136C24
    bl getPETNaviSelect
    add r4, r0, #0
    mov r0, #0
    bl sub_80010BE
    bl sub_813C678
    mov r0, #0x17
    mov r1, #0xd
    bl sub_802F12C
    bl loc_813C684
    bl sub_813CBCC
    add r0, r4, #0
    bl sub_80010BE
    bl sub_803CE44
    pop {r4,pc}
    .byte 0, 0
// end of function sub_813C458

.thumb
sub_813C490:
    push {r4,lr}
    mov r4, #0
    mov r0, #0
    mov r1, #0x1f
    bl sub_80137B6
    cmp r0, #1
    bne loc_813C4A2
    mov r4, #1
loc_813C4A2:
    add r0, r4, #0
    pop {r4,pc}
    .balign 4, 0x00
// end of function sub_813C490

.thumb
sub_813C4A8:
    push {lr}
    mov r0, #0x71 
    bl sub_803CE28
    ldr r1, [pc, #0x813c4b8-0x813c4b0-4] // =sub_813C4BC
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    pop {pc}
off_813C4B8:    .word sub_813C4BC
// end of function sub_813C4A8

.thumb
sub_813C4BC:
    push {r0-r3,r7}
    lsr r3, r2, #0x20
    push {r6,r7}
    lsr r3, r2, #0x20
    push {r0,r4-r7}
    lsr r3, r2, #0x20
// end of function sub_813C4BC

.thumb
sub_813C4C8:
    push {lr}
    mov r0, #0x71 
    bl sub_803CE28
    ldr r1, [pc, #0x813c4d8-0x813c4d0-4] // =off_813C4DC
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    pop {pc}
off_813C4D8:    .word off_813C4DC
off_813C4DC:    .word dword_813C4E8
    .word unk_813C51C
    .word unk_813C550
dword_813C4E8:    .word 0x3D3E3F1D, 0x1E004C3C, 0x38341814, 0x161F005F, 0x5E3A361A
    .word 0x28242C00, 0x5D4844, 0x462A262D, 0x2F005C4A, 0x6F6E6D6C
    .word 0x77, 0x0, 0x0
unk_813C51C:    .byte 0x1D
    .byte 0x3F, 0x3E, 0x3D
    .byte 0x3C 
    .byte 0x4D, 0x4C, 0x1E
    .byte 0x14
    .byte 0x18, 0x34, 0x38
    .byte 0x54 
    .byte 0x5F, 0x1F, 0x16
    .byte 0x1A
a6VDhxFjzLmnovw:    .byte 0x36, 0x3A, 0x56, 0x5E, 0x2C
    .byte 0x24, 0x28, 0x44, 0x48, 0x58
    .byte 0x5D, 0x2D, 0x26, 0x2A, 0x46
    .byte 0x4A, 0x5A, 0x5C, 0x2F, 0x6C
    .byte 0x6D, 0x6E, 0x6F, 0x76, 0x77
    .byte 0x0
    .byte 0x0
    .word 0
    .byte 0, 0, 0, 0
unk_813C550:    .byte 0x1D
    .byte 0x3F, 0x3E, 0x3D
    .byte 0x3C 
    .byte 0x4D, 0x4C, 0x1E
    .byte 0x14
    .byte 0x18, 0x34, 0x38
    .byte 0x54 
    .byte 0x5F, 0x1F, 0x16
    .byte 0x1A
a6VDhxFjzDfhjtx_1:    .byte 0x36, 0x3A, 0x56, 0x5E, 0x2C
    .byte 0x24, 0x28, 0x44, 0x48, 0x58
    .byte 0x5D, 0x2D, 0x26, 0x2A, 0x46
    .byte 0x4A, 0x5A, 0x5C, 0x2E, 0x64
    .byte 0x66, 0x68, 0x6A, 0x74, 0x78
    .byte 0x2F, 0x6C, 0x6D, 0x6E, 0x6F
    .byte 0x76, 0x77, 0x0
    .balign 4, 0x00
// end of function sub_813C4C8

.thumb
sub_813C584:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r0, [pc, #0x813c638-0x813c58a-2] // =unk_2006D68
    mov r1, #0x31 
    bl sub_80008B4
    ldr r0, [pc, #0x813c63c-0x813c592-2] // =byte_2006DA0
    mov r1, #0x31 
    bl sub_80008B4
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
    ldr r1, [pc, #0x813c638-0x813c5c6-2] // =unk_2006D68
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
    ldr r2, [pc, #0x813c638-0x813c5de-2] // =unk_2006D68
    ldrb r0, [r2,r4]
    cmp r0, r6
    bne loc_813C5EE
    ldr r2, [pc, #0x813c63c-0x813c5e6-2] // =byte_2006DA0
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
    ldr r2, [pc, #0x813c63c-0x813c5fc-4] // =byte_2006DA0
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
// end of function sub_813C584

.thumb
sub_813C624:
    push {r0,r2,lr}
    mov r0, #7
    mul r2, r0
    add r2, r2, r1
    ldr r0, [pc, #0x813c634-0x813c62c-4] // =dword_813C640
    ldrb r1, [r0,r2]
    pop {r0,r2,pc}
    .balign 4, 0x00
off_813C634:    .word dword_813C640
off_813C638:    .word unk_2006D68
off_813C63C:    .word byte_2006DA0
dword_813C640:    .word 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x0
    .word 0xFFFF00, 0x0
    .word 0xFFFF, 0xFF000000, 0xFF, 0xFFFF0000, 0x0
    .word 0xFFFF00, 0x0
    .word 0xFFFFFFFF, 0xFFFFFFFF
// end of function sub_813C624

.thumb
sub_813C678:
    push {lr}
    mov r0, #0
    mov r1, r10
    ldr r1, [r1,#0x68]
    strh r0, [r1]
    pop {pc}
// end of function sub_813C678

loc_813C684:
    push {r4-r7,lr}
    sub sp, sp, #4
    ldr r0, [pc, #0x813c744-0x813c688-4] // =unk_2006DD8
    mov r1, #8
    bl sub_80008B4
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
    ldr r0, [pc, #0x813c744-0x813c6b8-4] // =unk_2006DD8
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
    ldr r1, [pc, #0x813c748-0x813c6ce-2] // =off_813C74C
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
    ldr r1, [pc, #0x813c748-0x813c6fa-2] // =off_813C74C
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
    ldr r1, [pc, #0x813c748-0x813c728-4] // =off_813C74C
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
loc_813C730:
    add r6, #1
    cmp r6, #0x31 
    blt loc_813C710
    bl sub_803CED4
    bl sub_813CEA0
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813C744:    .word unk_2006DD8
off_813C748:    .word off_813C74C
off_813C74C:    .word sub_813C808+1
    .word sub_813C80C+1
    .word sub_813C81C+1
    .word sub_813C838+1
    .word sub_813C854+1
    .word sub_813C870+1
    .word sub_813C88C+1
    .word sub_813C8A8+1
    .word sub_813C8B8+1
    .word sub_813C8C8+1
    .word sub_813C8D8+1
    .word sub_813C8E8+1
    .word sub_813C8F8+1
    .word sub_813C908+1
    .word sub_813C918+1
    .word sub_813C928+1
    .word sub_813C938+1
    .word sub_813C948+1
    .word sub_813C95C+1
    .word sub_813C970+1
    .word sub_813C984+1
    .word sub_813C998+1
    .word sub_813C9B0+1
    .word sub_813C9C0+1
    .word sub_813C9D0+1
    .word sub_813C9E0+1
    .word sub_813C9F0+1
    .word sub_813CA00+1
    .word sub_813CA4C+1
    .word sub_813CA60+1
    .word sub_813CA6C+1
    .word sub_813CA78+1
    .word sub_813CA88+1
    .word sub_813CAA4+1
    .word sub_813CAC0+1
    .word sub_813CADC+1
    .word sub_813CAF8+1
    .word sub_813CB14+1
    .word sub_813CB30+1
    .word sub_813CB40+1
    .word sub_813CB50+1
    .word sub_813CB60+1
    .word sub_813CB70+1
    .word sub_813CB80+1
    .word sub_813CB90+1
    .word sub_813CBA4+1
    .word sub_813CBB8+1
.thumb
sub_813C808:
    push {lr}
    pop {pc}
// end of function sub_813C808

.thumb
sub_813C80C:
    push {lr}
    mov r0, #0
    mov r1, #0x23 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C80C

.thumb
sub_813C81C:
    push {lr}
    mov r0, #0
    mov r1, #0xa
    bl sub_80137B6
    add r2, r0, #1
    cmp r2, #8
    ble loc_813C82E
    mov r2, #8
loc_813C82E:
    mov r0, #0
    mov r1, #0xa
    bl sub_801379E
    pop {pc}
// end of function sub_813C81C

.thumb
sub_813C838:
    push {lr}
    mov r0, #0
    mov r1, #0xa
    bl sub_80137B6
    add r2, r0, #2
    cmp r2, #8
    ble loc_813C84A
    mov r2, #8
loc_813C84A:
    mov r0, #0
    mov r1, #0xa
    bl sub_801379E
    pop {pc}
// end of function sub_813C838

.thumb
sub_813C854:
    push {lr}
    mov r0, #0
    mov r1, #0xb
    bl sub_80137B6
    add r2, r0, #1
    cmp r2, #0xa
    ble loc_813C866
    mov r2, #0xa
loc_813C866:
    mov r0, #0
    mov r1, #0xb
    bl sub_801379E
    pop {pc}
// end of function sub_813C854

.thumb
sub_813C870:
    push {lr}
    mov r0, #0
    mov r1, #0xb
    bl sub_80137B6
    add r2, r0, #2
    cmp r2, #0xa
    ble loc_813C882
    mov r2, #0xa
loc_813C882:
    mov r0, #0
    mov r1, #0xb
    bl sub_801379E
    pop {pc}
// end of function sub_813C870

.thumb
sub_813C88C:
    push {lr}
    mov r0, #0
    mov r1, #0xc
    bl sub_80137B6
    add r2, r0, #1
    cmp r2, #0xa
    ble loc_813C89E
    mov r2, #0xa
loc_813C89E:
    mov r0, #0
    mov r1, #0xc
    bl sub_801379E
    pop {pc}
// end of function sub_813C88C

.thumb
sub_813C8A8:
    push {lr}
    mov r0, #0
    mov r1, #6
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C8A8

.thumb
sub_813C8B8:
    push {lr}
    mov r0, #0
    mov r1, #7
    mov r2, #0x3b 
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C8B8

.thumb
sub_813C8C8:
    push {lr}
    mov r0, #0
    mov r1, #7
    mov r2, #0x8b
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C8C8

.thumb
sub_813C8D8:
    push {lr}
    mov r0, #0
    mov r1, #7
    mov r2, #0x3d 
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C8D8

.thumb
sub_813C8E8:
    push {lr}
    mov r0, #0
    mov r1, #0x1b
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C8E8

.thumb
sub_813C8F8:
    push {lr}
    mov r0, #0
    mov r1, #0x1c
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C8F8

.thumb
sub_813C908:
    push {lr}
    mov r0, #0
    mov r1, #0x1d
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C908

.thumb
sub_813C918:
    push {lr}
    mov r0, #0
    mov r1, #0x60 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C918

.thumb
sub_813C928:
    push {lr}
    mov r0, #0
    mov r1, #0x61 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C928

.thumb
sub_813C938:
    push {lr}
    mov r0, #0
    mov r1, #0x1e
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813C938

.thumb
sub_813C948:
    push {lr}
    mov r0, #0
    mov r1, #0x27 
    ldr r2, [pc, #0x813c958-0x813c94e-2] // =0x0
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
dword_813C958:    .word 0x2
// end of function sub_813C948

.thumb
sub_813C95C:
    push {lr}
    mov r0, #0
    mov r1, #0x27 
    ldr r2, [pc, #0x813c96c-0x813c962-2] // =0x4
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
dword_813C96C:    .word 0x4
// end of function sub_813C95C

.thumb
sub_813C970:
    push {lr}
    mov r0, #0
    mov r1, #0x27 
    ldr r2, [pc, #0x813c980-0x813c976-2] // =0x8
    bl sub_801379E
    pop {pc}
    .byte 0, 0
dword_813C980:    .word 0x8
// end of function sub_813C970

.thumb
sub_813C984:
    push {lr}
    mov r0, #0
    mov r1, #0x27 
    ldr r2, [pc, #0x813c994-0x813c98a-2] // =0x10
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
dword_813C994:    .word 0x10
// end of function sub_813C984

.thumb
sub_813C998:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    bl sub_80137B6
    mov r2, #2
    orr r2, r0
    mov r0, #0
    mov r1, #0x26 
    bl sub_801379E
    pop {pc}
// end of function sub_813C998

.thumb
sub_813C9B0:
    push {lr}
    mov r0, #0
    mov r1, #0x33 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813C9B0

.thumb
sub_813C9C0:
    push {lr}
    mov r0, #0
    mov r1, #0x25 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813C9C0

.thumb
sub_813C9D0:
    push {lr}
    mov r0, #0
    mov r1, #0x5f 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813C9D0

.thumb
sub_813C9E0:
    push {lr}
    mov r0, #0
    mov r1, #0x35 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813C9E0

.thumb
sub_813C9F0:
    push {lr}
    mov r0, #0
    mov r1, #0x36 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813C9F0

.thumb
sub_813CA00:
    push {lr}
    mov r0, #0
    mov r1, #1
    bl sub_80137B6
    add r2, r0, #3
    cmp r2, #4
    ble loc_813CA12
    mov r2, #4
loc_813CA12:
    mov r0, #0
    mov r1, #1
    bl sub_801379E
    mov r0, #0
    mov r1, #2
    bl sub_80137B6
    add r2, r0, #3
    cmp r2, #4
    ble loc_813CA2A
    mov r2, #4
loc_813CA2A:
    mov r0, #0
    mov r1, #2
    bl sub_801379E
    mov r0, #0
    mov r1, #3
    bl sub_80137B6
    add r2, r0, #3
    cmp r2, #4
    ble loc_813CA42
    mov r2, #4
loc_813CA42:
    mov r0, #0
    mov r1, #3
    bl sub_801379E
    pop {pc}
// end of function sub_813CA00

.thumb
sub_813CA4C:
    push {lr}
    bl sub_813C80C
    bl sub_813C8E8
    bl sub_813C8F8
    bl sub_813C908
    pop {pc}
// end of function sub_813CA4C

.thumb
sub_813CA60:
    push {lr}
    bl sub_813C854
    bl sub_813C81C
    pop {pc}
// end of function sub_813CA60

.thumb
sub_813CA6C:
    push {lr}
    bl sub_813C870
    bl sub_813C838
    pop {pc}
// end of function sub_813CA6C

.thumb
sub_813CA78:
    push {lr}
    mov r0, #0
    mov r1, #0x1f
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CA78

.thumb
sub_813CA88:
    push {lr}
    mov r0, #0
    mov r1, #0xd
    bl sub_80137B6
    add r3, r0, #0
    mov r0, #0
    mov r1, #0xd
    mov r2, #1
    orr r2, r3
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CA88

.thumb
sub_813CAA4:
    push {lr}
    mov r0, #0
    mov r1, #0xd
    bl sub_80137B6
    add r3, r0, #0
    mov r0, #0
    mov r1, #0xd
    mov r2, #2
    orr r2, r3
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CAA4

.thumb
sub_813CAC0:
    push {lr}
    mov r0, #0
    mov r1, #0xd
    bl sub_80137B6
    add r3, r0, #0
    mov r0, #0
    mov r1, #0xd
    mov r2, #4
    orr r2, r3
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CAC0

.thumb
sub_813CADC:
    push {lr}
    mov r0, #0
    mov r1, #1
    bl sub_80137B6
    add r2, r0, #1
    cmp r2, #4
    ble loc_813CAEE
    mov r2, #4
loc_813CAEE:
    mov r0, #0
    mov r1, #1
    bl sub_801379E
    pop {pc}
// end of function sub_813CADC

.thumb
sub_813CAF8:
    push {lr}
    mov r0, #0
    mov r1, #2
    bl sub_80137B6
    add r2, r0, #1
    cmp r2, #4
    ble loc_813CB0A
    mov r2, #4
loc_813CB0A:
    mov r0, #0
    mov r1, #2
    bl sub_801379E
    pop {pc}
// end of function sub_813CAF8

.thumb
sub_813CB14:
    push {lr}
    mov r0, #0
    mov r1, #3
    bl sub_80137B6
    add r2, r0, #1
    cmp r2, #4
    ble loc_813CB26
    mov r2, #4
loc_813CB26:
    mov r0, #0
    mov r1, #3
    bl sub_801379E
    pop {pc}
// end of function sub_813CB14

.thumb
sub_813CB30:
    push {lr}
    mov r0, #0
    mov r1, #1
    mov r2, #4
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CB30

.thumb
sub_813CB40:
    push {lr}
    mov r0, #0
    mov r1, #2
    mov r2, #4
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CB40

.thumb
sub_813CB50:
    push {lr}
    mov r0, #0
    mov r1, #3
    mov r2, #4
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CB50

.thumb
sub_813CB60:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    ldrh r1, [r0]
    add r1, #0x32 
    strh r1, [r0]
    pop {pc}
    .byte 0, 0
// end of function sub_813CB60

.thumb
sub_813CB70:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    ldrh r1, [r0]
    add r1, #0x64 
    strh r1, [r0]
    pop {pc}
    .byte 0, 0
// end of function sub_813CB70

.thumb
sub_813CB80:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    ldrh r1, [r0]
    add r1, #0xc8
    strh r1, [r0]
    pop {pc}
    .byte 0, 0
// end of function sub_813CB80

.thumb
sub_813CB90:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    ldrh r1, [r0]
    ldr r2, [pc, #0x813cba0-0x813cb98-4] // =0x12C
    add r1, r1, r2
    strh r1, [r0]
    pop {pc}
off_813CBA0:    .word 0x12C
// end of function sub_813CB90

.thumb
sub_813CBA4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    ldrh r1, [r0]
    ldr r2, [pc, #0x813cbb4-0x813cbac-4] // =0x190
    add r1, r1, r2
    strh r1, [r0]
    pop {pc}
off_813CBB4:    .word 0x190
// end of function sub_813CBA4

.thumb
sub_813CBB8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x68]
    ldrh r1, [r0]
    ldr r2, [pc, #0x813cbc8-0x813cbc0-4] // =0x1F4
    add r1, r1, r2
    strh r1, [r0]
    pop {pc}
off_813CBC8:    .word 0x1F4
// end of function sub_813CBB8

.thumb
sub_813CBCC:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x20 
    bl sub_802F12C
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
    ldr r1, [pc, #0x813cc14-0x813cbf8-4] // =dword_813CC18
    ldr r1, [r1,r0]
    tst r1, r1
    beq loc_813CC0C
    mov lr, pc
    bx r1
    mov r0, #0x17
    mov r1, #0x20 
    bl sub_802F110
loc_813CC0C:
    add r6, #1
    cmp r6, #0x10
    blt loc_813CBE6
locret_813CC12:
    pop {r4-r7,pc}
off_813CC14:    .word dword_813CC18
dword_813CC18:    .word 0x0, 0x0, 0x0, 0x0
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
// end of function sub_813CBCC

.thumb
sub_813CCE8:
    push {lr}
    pop {pc}
// end of function sub_813CCE8

.thumb
sub_813CCEC:
    push {lr}
    mov r0, #0
    mov r1, #0x31 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CCEC

.thumb
sub_813CCFC:
    push {lr}
    pop {pc}
// end of function sub_813CCFC

.thumb
sub_813CD00:
    push {lr}
    mov r0, #0
    mov r1, #0x24 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CD00

.thumb
sub_813CD10:
    push {lr}
    pop {pc}
// end of function sub_813CD10

.thumb
sub_813CD14:
    push {lr}
    bl sub_813CD3E
    mov r2, #2
    bl sub_813CD4C
    pop {pc}
// end of function sub_813CD14

.thumb
sub_813CD22:
    push {lr}
    bl sub_813CD3E
    mov r2, #3
    bl sub_813CD4C
    pop {pc}
// end of function sub_813CD22

.thumb
sub_813CD30:
    push {lr}
    bl sub_813CD3E
    mov r2, #4
    bl sub_813CD4C
    pop {pc}
// end of function sub_813CD30

.thumb
sub_813CD3E:
    push {lr}
    mov r0, #0
    mov r1, #0x12
    mov r2, #3
    bl sub_801379E
    pop {pc}
// end of function sub_813CD3E

.thumb
sub_813CD4C:
    push {lr}
    mov r0, #0
    mov r1, #0x13
    bl sub_801379E
    pop {pc}
// end of function sub_813CD4C

.thumb
sub_813CD58:
    push {lr}
    pop {pc}
// end of function sub_813CD58

.thumb
sub_813CD5C:
    push {lr}
    mov r2, #4
    bl sub_813CD7A
    pop {pc}
// end of function sub_813CD5C

.thumb
sub_813CD66:
    push {lr}
    mov r2, #3
    bl sub_813CD7A
    pop {pc}
// end of function sub_813CD66

.thumb
sub_813CD70:
    push {lr}
    mov r2, #2
    bl sub_813CD7A
    pop {pc}
// end of function sub_813CD70

.thumb
sub_813CD7A:
    push {lr}
    mov r0, #0
    mov r1, #0x63 
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CD7A

.thumb
sub_813CD88:
    push {lr}
    pop {pc}
// end of function sub_813CD88

.thumb
sub_813CD8C:
    push {lr}
    mov r0, #0
    mov r1, #0x28 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CD8C

.thumb
sub_813CD9C:
    push {lr}
    pop {pc}
// end of function sub_813CD9C

.thumb
sub_813CDA0:
    push {lr}
    mov r0, #0
    mov r1, #0x26 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CDA0

.thumb
sub_813CDB0:
    push {lr}
    pop {pc}
// end of function sub_813CDB0

.thumb
sub_813CDB4:
    push {r4-r7,lr}
    mov r4, #6
    mov r6, #1
    bl sub_813CDD8
    pop {r4-r7,pc}
// end of function sub_813CDB4

.thumb
sub_813CDC0:
    push {r4-r7,lr}
    mov r4, #0xa
    mov r6, #2
    bl sub_813CDD8
    pop {r4-r7,pc}
// end of function sub_813CDC0

.thumb
sub_813CDCC:
    push {r4-r7,lr}
    mov r4, #0xd
    mov r6, #3
    bl sub_813CDD8
    pop {r4-r7,pc}
// end of function sub_813CDCC

.thumb
sub_813CDD8:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x14
    add r2, r4, #0
    bl sub_801379E
    mov r0, #0
    mov r1, #0x15
    add r2, r6, #0
    bl sub_801379E
    pop {r4-r7,pc}
// end of function sub_813CDD8

.thumb
sub_813CDF0:
    push {lr}
    pop {pc}
// end of function sub_813CDF0

.thumb
sub_813CDF4:
    push {lr}
    mov r0, #0
    mov r1, #0xd
    mov r2, #0xff
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CDF4

.thumb
sub_813CE04:
    push {lr}
    pop {pc}
// end of function sub_813CE04

.thumb
sub_813CE08:
    push {r4-r7,lr}
    mov r4, #1
    bl sub_813CE26
    pop {r4-r7,pc}
// end of function sub_813CE08

.thumb
sub_813CE12:
    push {r4-r7,lr}
    mov r4, #2
    bl sub_813CE26
    pop {r4-r7,pc}
// end of function sub_813CE12

.thumb
sub_813CE1C:
    push {r4-r7,lr}
    mov r4, #3
    bl sub_813CE26
    pop {r4-r7,pc}
// end of function sub_813CE1C

.thumb
sub_813CE26:
    push {lr}
    mov r0, #0
    mov r1, #0x18
    bl sub_80137B6
    add r2, r0, r4
    mov r0, #0
    mov r1, #0x18
    bl sub_801379E
    mov r0, #0
    mov r1, #0x16
    mov r2, #3
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CE26

.thumb
sub_813CE48:
    push {lr}
    pop {pc}
// end of function sub_813CE48

.thumb
sub_813CE4C:
    push {lr}
    mov r2, #3
    bl sub_813CE6A
    pop {pc}
// end of function sub_813CE4C

.thumb
sub_813CE56:
    push {lr}
    mov r2, #2
    bl sub_813CE6A
    pop {pc}
// end of function sub_813CE56

.thumb
sub_813CE60:
    push {lr}
    mov r2, #1
    bl sub_813CE6A
    pop {pc}
// end of function sub_813CE60

.thumb
sub_813CE6A:
    push {lr}
    mov r0, #0
    mov r1, #0x62 
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CE6A

.thumb
sub_813CE78:
    push {lr}
    pop {pc}
// end of function sub_813CE78

.thumb
sub_813CE7C:
    push {lr}
    mov r0, #0
    mov r1, #0x1a
    mov r2, #9
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
// end of function sub_813CE7C

.thumb
sub_813CE8C:
    push {lr}
    pop {pc}
// end of function sub_813CE8C

.thumb
sub_813CE90:
    push {lr}
    mov r0, #0
    mov r1, #0x1a
    mov r2, #0xa
    bl sub_801379E
    pop {pc}
    .byte 0, 0
// end of function sub_813CE90

.thumb
sub_813CEA0:
    push {r4-r7,lr}
    sub sp, sp, #4
    mov r0, #0
    mov r1, #9
    bl sub_80137B6
    add r7, r0, #0
    mov r0, #0
    mov r1, #0x2d 
    bl sub_80137B6
    str r0, [sp]
    add r1, r0, #0
    add r1, #0x2e 
    add r6, r1, #0
    mov r0, #0
    bl sub_80137B6
    cmp r0, #0xff
    beq loc_813CEF2
    ldr r1, [sp]
    mov r2, #0x3c 
    mul r1, r2
    mov r2, r10
    ldr r2, [r2,#0x48]
    add r1, r1, r2
    lsl r0, r0, #1
    add r0, r0, r1
    ldrh r0, [r0]
    bl sub_8021AE0
    bl sub_8021AA4
    ldrb r0, [r0,#8]
    cmp r0, r7
    ble loc_813CEF2
    mov r0, #0
    add r1, r6, #0
    mov r2, #0xff
    bl sub_801379E
loc_813CEF2:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_813CEA0

    push {r4,lr}
    add r4, r0, #0
    add r2, r1, #0
    mov r0, #0
    mov r1, #0x12
    mov r2, #3
    bl sub_801379E
    add r2, r4, #0
    bl sub_813CD4C
    pop {r4,pc}
    push {r4,r6,lr}
    add r4, r0, #0
    add r6, r1, #0
    bl sub_813CDD8
    pop {r4,r6,pc}
    push {lr}
    add r2, r0, #0
    mov r0, #0
    mov r1, #0x16
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
    push {lr}
    add r2, r0, #0
    mov r0, #0
    mov r1, #0x54 
    bl sub_80137E6
    pop {pc}
    .balign 4, 0x00
    push {lr}
    mov r0, #0
    mov r1, #0x24 
    mov r2, #1
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
    push {r4,lr}
    add r4, r0, #0
    mov r0, #0
    mov r1, #0x18
    bl sub_80137B6
    add r3, r0, #0
    mov r0, #0
    mov r1, #0x18
    add r2, r3, r4
    cmp r2, #7
    ble loc_813CF66
    mov r2, #7
loc_813CF66:
    bl sub_801379E
    pop {r4,pc}
    push {r4,lr}
    add r4, r0, #0
    mov r0, #0
    mov r1, #0x19
    bl sub_80137B6
    add r3, r0, #0
    mov r0, #0
    mov r1, #0x19
    add r2, r3, r4
    cmp r2, #7
    ble loc_813CF86
    mov r2, #7
loc_813CF86:
    bl sub_801379E
    pop {r4,pc}
    push {lr}
    add r2, r0, #0
    mov r0, #0
    mov r1, #0x1a
    bl sub_801379E
    pop {pc}
    .balign 4, 0x00
byte_813CF9C:    .byte 0x2
byte_813CF9D:    .byte 0xFF
word_813CF9E:    .hword 0x81
    .word 0x90860961, 0xE9619045, 0x81FF02, 0x4F181890, 0x8661094F
    .word 0x81FF02, 0x9086E986, 0xCC099018, 0x82FF02, 0x1890E909
    .word 0x4F9045E9, 0x82FF02, 0x45181845, 0xE9094F45, 0x82FF02
    .word 0xE9459009, 0x18E90961, 0x83FF02, 0x6190E918, 0x4509E918
    .word 0x83FF02, 0x4561CCCC, 0x4F3E90CC, 0x83FF02, 0x3E3EE93E
    .word 0x184F903E, 0x84FF02, 0x4F0961E9
    .word 0xE9E9614F
dword_813D014:    .word 0x84FF02, 0x3E3E614F, 0x90E94561, 0x84FF02, 0x86864F45
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
unk_813D410:    .byte 0x3E 
    .byte 0x45 
    .byte 0xCC
    .byte 0x86
    .byte 0x90
    .byte 0x18
    .byte 0x4F 
    .byte 9
    .byte 0x61 
    .byte 0xE9
    .byte 0
    .byte 0
.thumb
sub_813D41C:
    push {r5-r7,lr}
    ldr r7, [pc, #0x813d480-0x813d41e-2] // =byte_813CF9C
    ldr r6, [pc, #0x813d484-0x813d420-4] // =unk_813D410
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
    ldr r4, [pc, #0x813d488-0x813d44a-2] // =0x2620
    add r4, r4, r5
    add r0, r4, #0
    bl sub_802F168
    bne loc_813D466
    add r0, r4, #0
    bl sub_802F114
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
off_813D480:    .word byte_813CF9C
off_813D484:    .word unk_813D410
dword_813D488:    .word 0x2620
// end of function sub_813D41C

loc_813D48C:
    push {r4-r7,lr}
    push {r0}
    bl sub_802D15E
    add r2, r0, #0
    pop {r0}
    ldr r3, [pc, #0x813d4f4-0x813d498-4] // =dword_813D4FC
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
    ldr r4, [pc, #0x813d4e0-0x813d4b0-4] // =off_813D4E4
    lsl r0, r0, #2
    ldr r4, [r4,r0]
    bl sub_800151C
    mov r1, #0xf
    and r0, r1
    ldr r1, [pc, #0x813d4f8-0x813d4be-2] // =dword_813D500
    ldrb r0, [r1,r0]
    lsl r0, r0, #2
    ldr r1, [pc, #0x813d4d0-0x813d4c4-4] // =off_813D4D4
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
loc_813D4CC:
    add r0, r7, #0
    pop {r4-r7,pc}
off_813D4D0:    .word off_813D4D4
off_813D4D4:    .word sub_813D510+1
    .word sub_813D568+1
    .word sub_813D598+1
off_813D4E0:    .word off_813D4E4
off_813D4E4:    .word dword_813D014+0x24C
    .word dword_813D014+0x2B8
    .word dword_813D014+0x324
    .word dword_813D014+0x390
off_813D4F4:    .word dword_813D4FC
off_813D4F8:    .word dword_813D500
dword_813D4FC:    .word 0x321E140A
dword_813D500:    .word 0x0, 0x0, 0x0, 0x0
.thumb
sub_813D510:
    push {r4-r7,lr}
    bl sub_800151C
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
    add r0, r2, #0
    bl sub_8021AA4
    add r7, r0, #0
    bl sub_800151C
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
// end of function sub_813D510

.thumb
sub_813D568:
    push {r4-r7,lr}
    bl sub_800151C
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
// end of function sub_813D568

.thumb
sub_813D598:
    push {r4-r7,lr}
    bl sub_800151C
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
// end of function sub_813D598

.thumb
sub_813D5C8:
    ldr r1, [pc, #0x813d5d8-0x813d5c8-4] // =byte_200BC50
    strb r0, [r1,#0x6] // (byte_200BC56 - 0x200bc50)
    mov pc, lr
    .byte 0, 0
// end of function sub_813D5C8

.thumb
sub_813D5D0:
    ldr r1, [pc, #0x813d5d8-0x813d5d0-4] // =byte_200BC50
    ldrb r0, [r1,#0x6] // (byte_200BC56 - 0x200bc50)
    mov pc, lr
    .balign 4, 0x00
off_813D5D8:    .word byte_200BC50
// end of function sub_813D5D0

.thumb
sub_813D5DC:
    push {lr}
    bl sub_814692C
    pop {pc}
// end of function sub_813D5DC

    push {r4,lr}
    pop {r4,pc}
.thumb
sub_813D5E8:
    ldr r1, [pc, #0x813d608-0x813d5e8-4] // =byte_200AF80
    ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
    orr r2, r0
    strb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
    mov pc, lr
    .balign 4, 0x00
// end of function sub_813D5E8

    ldr r1, [pc, #0x813d608-0x813d5f4-4] // =byte_200AF80
    ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
    bic r2, r0
    strb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
    mov pc, lr
    .byte 0, 0
    ldr r1, [pc, #0x813d608-0x813d600-4] // =byte_200AF80
    ldrb r2, [r1,#0x5] // (byte_200AF85 - 0x200af80)
    tst r2, r0
    mov pc, lr
off_813D608:    .word byte_200AF80
.thumb
sub_813D60C:
    push {lr}
    ldr r1, [pc, #0x813d618-0x813d60e-2] // =byte_200BC50
    ldrb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
    tst r0, r0
    pop {pc}
    .balign 4, 0x00
off_813D618:    .word byte_200BC50
// end of function sub_813D60C

    push {lr}
    ldr r1, [pc, #0x813d628-0x813d61e-2] // =byte_200BC50
    mov r0, #0
    strb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
    pop {pc}
    .balign 4, 0x00
off_813D628:    .word byte_200BC50
.thumb
sub_813D62C:
    push {lr}
    ldr r1, [pc, #0x813d634-0x813d62e-2] // =byte_200BC50
    strb r0, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
    pop {pc}
off_813D634:    .word byte_200BC50
// end of function sub_813D62C

.thumb
sub_813D638:
    push {lr}
    ldr r0, [pc, #0x813d644-0x813d63a-2] // =byte_2009470
    ldrb r0, [r0]
    tst r0, r0
    pop {pc}
    .balign 4, 0x00
off_813D644:    .word byte_2009470
// end of function sub_813D638

.thumb
sub_813D648:
    push {lr}
    bl sub_8149718
    ldr r1, [pc, #0x813d654-0x813d64e-2] // =0x8001
    cmp r0, r1
    pop {pc}
dword_813D654:    .word 0x8001
// end of function sub_813D648

    push {r4,lr}
    bl sub_8146E78
    pop {r4,pc}
    .word byte_200AF80
    .word unk_200FFF0
    .word unk_2009480
.thumb
sub_813D66C:
    push {r4,lr}
    bl sub_8147B3C
    pop {r4,pc}
    .word byte_200AF80
    .word unk_200FFF0
    .word unk_2009480
// end of function sub_813D66C

    push {lr}
    ldr r0, [pc, #0x813d68c-0x813d682-2] // =byte_200AF80
    mov r1, #0x18
    bl CpuSet_ZeroFillWord
    pop {pc}
off_813D68C:    .word byte_200AF80
    push {lr}
    push {r0}
    ldr r1, [pc, #0x813d6c0-0x813d694-4] // =off_813D6C4
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    tst r1, r1
    beq loc_813D6A2
    mov lr, pc
    bx r1
loc_813D6A2:
    pop {r0}
    ldr r3, [pc, #0x813d6b8-0x813d6a4-4] // =byte_200AF80
    ldr r2, [pc, #0x813d6bc-0x813d6a6-2] // =byte_200DD10
    strb r0, [r2,#0x1] // (byte_200DD11 - 0x200dd10)
    str r1, [r2,#0x4] // (dword_200DD14 - 0x200dd10)
    ldrb r0, [r3,#0x3] // (byte_200AF83 - 0x200af80)
    strb r0, [r2]
    add r0, #1
    strb r0, [r3,#0x3] // (byte_200AF83 - 0x200af80)
    pop {pc}
    .balign 4, 0x00
off_813D6B8:    .word byte_200AF80
off_813D6BC:    .word byte_200DD10
off_813D6C0:    .word off_813D6C4
off_813D6C4:    .word sub_813D6DC+1
    .word 0x0
    .word sub_813D6F4+1
    .word 0x0
    .word sub_813D714+1
    .word 0x0
.thumb
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
// end of function sub_813D6DC

.thumb
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
// end of function sub_813D6F4

.thumb
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
// end of function sub_813D714

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
.thumb
sub_813D750:
    push {lr}
    ldr r0, [pc, #0x813d75c-0x813d752-2] // =byte_200BC50
    mov r1, #0xb
    strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    pop {pc}
    .balign 4, 0x00
off_813D75C:    .word byte_200BC50
// end of function sub_813D750

.thumb
sub_813D760:
    push {lr}
    ldr r0, [pc, #0x813d76c-0x813d762-2] // =byte_200BC50
    mov r1, #0
    strb r1, [r0,#0x5] // (byte_200BC55 - 0x200bc50)
    pop {pc}
    .balign 4, 0x00
off_813D76C:    .word byte_200BC50
// end of function sub_813D760

    push {r4,lr}
    mov r0, #1
    ldr r4, [pc, #0x813d788-0x813d774-4] // =byte_200AF80
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
off_813D788:    .word byte_200AF80
.thumb
sub_813D78C:
    push {lr}
    ldr r2, [pc, #0x813d79c-0x813d78e-2] // =dword_813D7A0
    lsl r0, r0, #2
    ldr r0, [r2,r0]
    ldr r2, [r1,#0x1c]
    orr r2, r0
    str r2, [r1,#0x1c]
    pop {pc}
off_813D79C:    .word dword_813D7A0
dword_813D7A0:    .word 0x0
    .word 0x1, 0x4, 0x10, 0x40, 0x100
// end of function sub_813D78C

.thumb
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
    ldr r1, [pc, #0x813d7e4-0x813d7cc-4] // =off_813D7E8
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldr r4, [pc, #0x813d800-0x813d7d4-4] // =byte_200AF80
    mov r0, #0
    strb r0, [r4,#0x1] // (byte_200AF81 - 0x200af80)
    pop {r5,r7,pc}
loc_813D7DC:
    mov r0, #1
    bl sub_813D5E8
    pop {r5,r7,pc}
off_813D7E4:    .word off_813D7E8
off_813D7E8:    .word sub_813D804+1
    .word sub_813D838+1
    .word sub_813D848+1
    .word sub_813D87C+1
    .word sub_813D88C+1
    .word sub_813D8AC+1
off_813D800:    .word byte_200AF80
// end of function sub_813D7B8

.thumb
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
// end of function sub_813D804

.thumb
sub_813D838:
    push {lr}
    ldr r0, [pc, #0x813d844-0x813d83a-2] // =0x0
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    pop {pc}
dword_813D844:    .word 0x2
// end of function sub_813D838

.thumb
sub_813D848:
    push {r4,lr}
    ldr r0, [pc, #0x813d878-0x813d84a-2] // =0x8
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
dword_813D878:    .word 0x8
// end of function sub_813D848

.thumb
sub_813D87C:
    push {lr}
    ldr r0, [pc, #0x813d888-0x813d87e-2] // =0x20
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    pop {pc}
dword_813D888:    .word 0x20
// end of function sub_813D87C

.thumb
sub_813D88C:
    push {lr}
    ldr r0, [pc, #0x813d8a8-0x813d88e-2] // =0x80
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
off_813D8A8:    .word 0x80
// end of function sub_813D88C

.thumb
sub_813D8AC:
    push {lr}
    ldr r0, [pc, #0x813d8c0-0x813d8ae-2] // =0x200
    ldr r1, [r5,#0x1c]
    orr r1, r0
    str r1, [r5,#0x1c]
    ldr r0, [r7,#4]
    mov r1, #3
    and r0, r1
    strb r0, [r5,#0xb]
    pop {pc}
off_813D8C0:    .word 0x200
// end of function sub_813D8AC

.thumb
sub_813D8C4:
    ldr r0, [pc, #0x813d8cc-0x813d8c4-4] // =byte_20099D0
    mov r1, #4
    str r1, [r0,#0x58] // (dword_2009A28 - 0x20099d0)
    mov pc, lr
off_813D8CC:    .word byte_20099D0
// end of function sub_813D8C4

.thumb
sub_813D8D0:
    push {lr}
    mov r0, #0x10
    bl sub_803CB00
    pop {pc}
    .balign 4, 0x00
// end of function sub_813D8D0

    push {lr}
    bl sub_800151C
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    ldr r0, [pc, #0x813d908-0x813d8e6-2] // =unk_2010150
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
off_813D908:    .word unk_2010150
.thumb
sub_813D90C:
    ldr r1, [pc, #0x813d974-0x813d90c-4] // =byte_200BC50
    strb r0, [r1,#0x7] // (byte_200BC57 - 0x200bc50)
    mov pc, lr
    .balign 4, 0x00
// end of function sub_813D90C

    ldr r1, [pc, #0x813d974-0x813d914-4] // =byte_200BC50
    strb r0, [r1,#0x1] // (byte_200BC51 - 0x200bc50)
    mov pc, lr
    .balign 4, 0x00
.thumb
sub_813D91C:
    ldr r1, [pc, #0x813d974-0x813d91c-4] // =byte_200BC50
    ldrb r0, [r1,#0x1] // (byte_200BC51 - 0x200bc50)
    mov pc, lr
    .balign 4, 0x00
// end of function sub_813D91C

.thumb
sub_813D924:
    ldr r0, [pc, #0x813db08-0x813d924-4] // =0x214
    ldr r1, [pc, #0x813d974-0x813d926-2] // =byte_200BC50
    ldrb r1, [r1,#0x7] // (byte_200BC57 - 0x200bc50)
    tst r1, r1
    bne locret_813D930
    mov r0, #0x2b 
locret_813D930:
    mov pc, lr
    .balign 4, 0x00
// end of function sub_813D924

.thumb
sub_813D934:
    push {lr}
    ldr r1, [pc, #0x813d974-0x813d936-2] // =byte_200BC50
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
// end of function sub_813D934

.thumb
sub_813D94C:
    push {lr}
    mov r2, #0
    ldr r1, [pc, #0x813d974-0x813d950-4] // =byte_200BC50
    ldrb r1, [r1]
    cmp r1, r0
    beq loc_813D95A
    mov r2, #1
loc_813D95A:
    add r0, r2, #0
    pop {pc}
    .byte 0, 0
// end of function sub_813D94C

.thumb
sub_813D960:
    push {r4,r7,lr}
    ldr r7, [pc, #0x813d974-0x813d962-2] // =byte_200BC50
    ldrb r4, [r7,#0x7] // (byte_200BC57 - 0x200bc50)
// memBlock
    add r0, r7, #0
// numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord
    strb r4, [r7,#0x7] // (byte_200BC57 - 0x200bc50)
    pop {r4,r7,pc}
    .balign 4, 0x00
off_813D974:    .word byte_200BC50
// end of function sub_813D960

.thumb
sub_813D978:
    push {lr}
    ldr r0, [pc, #0x813d988-0x813d97a-2] // =byte_200BC50
    mov r1, #9
    strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0
    bl sub_813D934
    pop {pc}
off_813D988:    .word byte_200BC50
// end of function sub_813D978

.thumb
sub_813D98C:
    push {lr}
    bl sub_813D978
    mov r0, #4
    ldr r1, [pc, #0x813d99c-0x813d994-4] // =byte_200BC30
    strb r0, [r1,#0xe] // (byte_200BC3E - 0x200bc30)
    pop {pc}
    .balign 4, 0x00
off_813D99C:    .word byte_200BC30
// end of function sub_813D98C

.thumb
sub_813D9A0:
    push {lr}
    ldr r1, [pc, #0x813d9a8-0x813d9a2-2] // =byte_200BC50
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    pop {pc}
off_813D9A8:    .word byte_200BC50
// end of function sub_813D9A0

loc_813D9AC:
    push {r4,lr}
    ldr r0, [pc, #0x813d9cc-0x813d9ae-2] // =byte_200BC50
    ldrb r2, [r0,#0x1] // (byte_200BC51 - 0x200bc50)
    lsl r2, r2, #2
    ldr r1, [pc, #0x813d9d0-0x813d9b4-4] // =off_813D9D4
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
off_813D9CC:    .word byte_200BC50
off_813D9D0:    .word off_813D9D4
off_813D9D4:    .word sub_813D9DC+1
    .word sub_813D9E8+1
.thumb
sub_813D9DC:
    push {lr}
    bl sub_8148884
    bl sub_813DAF4
    pop {pc}
// end of function sub_813D9DC

.thumb
sub_813D9E8:
    push {lr}
    bl sub_8148FC0
    bl sub_813DAF4
    pop {pc}
// end of function sub_813D9E8

.thumb
sub_813D9F4:
    push {lr}
    mov r4, #2
    ldr r0, [pc, #0x813da08-0x813d9f8-4] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #1
    ble loc_813DA02
    mov r4, #4
loc_813DA02:
    add r0, r4, #0
    pop {pc}
    .balign 4, 0x00
off_813DA08:    .word byte_20101B4
// end of function sub_813D9F4

    push {r4,lr}
    ldr r4, [pc, #0x813db0c-0x813da0e-2] // =dword_203F7D8
    mov r0, #2
    strb r0, [r4,#0x1] // (dword_203F7D8+1 - 0x203f7d8)
    ldrb r0, [r4]
    tst r0, r0
    beq loc_813DA22
    bl loc_813D9AC
    strb r0, [r4,#0x1] // (dword_203F7D8+1 - 0x203f7d8)
    b locret_813DA36
loc_813DA22:
    ldr r0, [pc, #0x813db10-0x813da22-2] // =word_2036780
    ldr r1, [pc, #0x813db14-0x813da24-4] // =unk_20399F0
    mov r2, #0x10
    bl sub_800093C
    ldr r0, [pc, #0x813db18-0x813da2c-4] // =word_2036780
    ldr r1, [pc, #0x813db1c-0x813da2e-2] // =unk_2039A00
    mov r2, #0x10
    bl sub_800093C
locret_813DA36:
    pop {r4,pc}
    push {lr}
    ldr r3, [pc, #0x813da7c-0x813da3a-2] // =byte_20099D0
    ldrb r3, [r3,#0x6] // (byte_20099D6 - 0x20099d0)
    cmp r3, #1
    bne locret_813DA4C
    add r2, r1, #0
    add r1, r0, #0
    ldr r0, [r3,#0x34]
    bl sub_800093C
locret_813DA4C:
    pop {pc}
    .byte 0, 0
    push {lr}
    bl sub_800093C
    pop {pc}
    push {r4,lr}
    add r2, r1, #0
    ldr r3, [pc, #0x813da7c-0x813da5c-4] // =byte_20099D0
    ldrb r0, [r3,#0x6] // (byte_20099D6 - 0x20099d0)
    cmp r0, #1
    bne locret_813DA78
    strb r1, [r7,#6]
    ldr r1, [r3,#0x38] // (dword_2009A08 - 0x20099d0)
    ldr r4, [pc, #0x813da80-0x813da68-4] // =byte_200BC50
    ldrb r4, [r4,#0x1] // (byte_200BC51 - 0x200bc50)
    tst r4, r4
    beq loc_813DA72
    ldr r1, [r3,#0x3c] // (dword_2009A0C - 0x20099d0)
loc_813DA72:
    mov r2, #0xa
    bl sub_800092A
locret_813DA78:
    pop {r4,pc}
    .balign 4, 0x00
off_813DA7C:    .word byte_20099D0
off_813DA80:    .word byte_200BC50
.thumb
sub_813DA84:
    push {lr}
// memBlock
    ldr r0, [pc, #0x813da90-0x813da86-2] // =byte_2010290
// numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord
    pop {pc}
off_813DA90:    .word byte_2010290
// end of function sub_813DA84

loc_813DA94:
    push {r4,r5,lr}
    mov r4, #1
    ldr r5, [pc, #0x813dab0-0x813da98-4] // =byte_200BC50
    ldr r0, [pc, #0x813dab4-0x813da9a-2] // =off_813DAB8
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
off_813DAB0:    .word byte_200BC50
off_813DAB4:    .word off_813DAB8
off_813DAB8:    .word sub_813DAC0+1
    .word sub_813DADC+1
.thumb
sub_813DAC0:
    push {lr}
    bl start_800027C
// end of function sub_813DAC0

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
.thumb
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
// end of function sub_813DADC

.thumb
sub_813DAF4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r1, [r0]
    ldr r0, [pc, #0x813db04-0x813dafc-4] // =word_2036780
    strh r1, [r0]
    strh r1, [r0,#0xa] // (dword_2036788+2 - 0x2036780)
    pop {pc}
off_813DB04:    .word word_2036780
off_813DB08:    .word 0x214
off_813DB0C:    .word dword_203F7D8
off_813DB10:    .word word_2036780
off_813DB14:    .word unk_20399F0
off_813DB18:    .word word_2036780
off_813DB1C:    .word unk_2039A00
// end of function sub_813DAF4

    push {lr}
    pop {pc}
.thumb
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
    ldr r4, [pc, #0x813dba0-0x813db36-2] // =byte_200F360
    strb r0, [r4]
    mov r5, #0
loc_813DB3C:
    ldr r1, [pc, #0x813dbbc-0x813db3c-4] // =byte_20099D0
    ldr r6, [r1,#0x3c] // (dword_2009A0C - 0x20099d0)
    tst r5, r5
    bne loc_813DB46
    ldr r6, [r1,#0x38] // (dword_2009A08 - 0x20099d0)
loc_813DB46:
    ldr r0, [r6]
    ldr r1, [pc, #0x813dba4-0x813db48-4] // =0x42523545
    cmp r0, r1
    bne loc_813DB58
    ldrh r0, [r6,#4]
    ldr r1, [pc, #0x813dba8-0x813db50-4] // =dword_813DBAC
    ldr r1, [r1,r7]
    cmp r0, r1
    bne loc_813DB58
loc_813DB58:
    add r5, #1
    cmp r5, #2
    blt loc_813DB3C
    ldr r1, [pc, #0x813dbbc-0x813db5e-2] // =byte_20099D0
    ldr r6, [r1,#0x38] // (dword_2009A08 - 0x20099d0)
    str r6, [sp]
    ldr r6, [r1,#0x3c] // (dword_2009A0C - 0x20099d0)
    ldrb r5, [r4]
    tst r5, r5
    beq loc_813DB72
    ldr r6, [r1,#0x3c] // (dword_2009A0C - 0x20099d0)
    str r6, [sp]
    ldr r6, [r1,#0x38] // (dword_2009A08 - 0x20099d0)
loc_813DB72:
    ldr r0, [r6]
    ldr r1, [pc, #0x813dba4-0x813db74-4] // =0x42523545
    cmp r0, r1
    bne loc_813DB96
    ldrh r0, [r6,#4]
    ldr r1, [pc, #0x813dba8-0x813db7c-4] // =dword_813DBAC
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
off_813DBA0:    .word byte_200F360
dword_813DBA4:    .word 0x42523545
off_813DBA8:    .word dword_813DBAC
dword_813DBAC:    .word 0x4000, 0x200, 0x0
    .word 0x1
off_813DBBC:    .word byte_20099D0
// end of function sub_813DB24

.thumb
sub_813DBC0:
    push {r4,lr}
    ldr r4, [pc, #0x813dbd4-0x813dbc2-2] // =dword_200B1B0
    strh r0, [r4,#0x8] // (word_200B1B8 - 0x200b1b0)
    strh r1, [r4,#0x6] // (word_200B1B6 - 0x200b1b0)
    strh r2, [r4,#0x4] // (word_200B1B4 - 0x200b1b0)
    ldr r0, [pc, #0x813dbd8-0x813dbca-2] // =0x42523545
    str r0, [r4]
    mov r0, #0x3c 
    strh r0, [r4,#0xa] // (word_200B1BA - 0x200b1b0)
    pop {r4,pc}
off_813DBD4:    .word dword_200B1B0
dword_813DBD8:    .word 0x42523545
unk_813DBDC:    .byte 0
    .byte 0x0, 0x0, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
unk_813DBE4:    .byte 0
    .byte 0x42, 0x2, 0x42
    .byte 4
    .byte 0x42, 0x6, 0x42
    .byte 8
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
    .byte 3
    .byte 0x42, 0x5, 0x42
    .byte 7
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
    .byte 0
    .byte 0x43, 0x2, 0x43
    .byte 4
    .byte 0x43, 0x6, 0x43
    .byte 8
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
    .byte 3
    .byte 0x43, 0x5, 0x43
    .byte 7
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
unk_813DEC4:    .byte 0
    .byte 0x60, 0x0, 0x60
    .byte 0
a02468:    .byte 0x60, 0x20, 0x60, 0x22, 0x60, 0x24, 0x60, 0x26
    .byte 0x60, 0x28, 0x60, 0x2A, 0x60, 0x2C, 0x60, 0x2E
    .byte 0x60, 0x30, 0x60, 0x32, 0x60, 0x34, 0x60, 0x36
    .byte 0x60, 0x38, 0x60, 0x3A, 0x60, 0x3C, 0x60, 0x0
aBDFHJL:    .byte 0x60, 0x3E
    .byte 0x60, 0x40
    .byte 0x60, 0x42
    .byte 0x60, 0x44
    .byte 0x60, 0x46
    .byte 0x60, 0x48
    .byte 0x60, 0x4A
    .byte 0x60, 0x4C
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
a13579:    .byte 0x60, 0x21
    .byte 0x60, 0x23
    .byte 0x60, 0x25
    .byte 0x60, 0x27
    .byte 0x60, 0x29
    .byte 0x60, 0x2B
    .byte 0x60, 0x2D
    .byte 0x60, 0x2F
    .byte 0x60, 0x31
    .byte 0x60, 0x33
    .byte 0x60, 0x35
    .byte 0x60, 0x37
    .byte 0x60, 0x39
    .byte 0x60, 0x3B
    .byte 0x60, 0x3D
    .byte 0x60, 0x0
aACEGIKM:    .byte 0x60, 0x3F
    .byte 0x60, 0x41
    .byte 0x60, 0x43
    .byte 0x60, 0x45
    .byte 0x60, 0x47
    .byte 0x60, 0x49
    .byte 0x60, 0x4B
    .byte 0x60, 0x4D
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60
dword_813DF44:    .word 0x61E261E0, 0x61E661E4, 0x61EA61E8, 0x61EE61EC, 0x61F261F0
    .word 0x61F661F4, 0x61E361E1, 0x61E761E5, 0x61EB61E9, 0x61EF61ED
    .word 0x61F361F1, 0x61F761F5
off_813DF74:    .word unk_2025A04
    .word reqBBS_requestInfo_textOffsets
dword_813DF7C:    .word 0x17A0, 0x19A0, 0x2000FC0, 0x2000FF0, 0x2001400, 0x2018204
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
// end of function sub_813DBC0

.thumb
sub_813E07C:
    push {r4-r7,lr}
    push {r0}
// memBlock
    ldr r0, [pc, #0x813e0a0-0x813e080-4] // =byte_2001150
// numWords
    mov r1, #0x2c 
    bl CpuSet_ZeroFillWord
    pop {r0}
    ldr r5, [pc, #0x813e0a0-0x813e08a-2] // =byte_2001150
    strb r0, [r5,#0x4] // (byte_2001154 - 0x2001150)
    ldr r2, [pc, #0x813e09c-0x813e08e-2] // =off_813DF74
    mov r1, #0x24 
    mul r0, r1
    add r0, r0, r2
    str r0, [r5,#0x28] // (dword_2001178 - 0x2001150)
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813E09C:    .word off_813DF74
off_813E0A0:    .word byte_2001150
// end of function sub_813E07C

reqBBS_cb_draw_813E0A4:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x813e0c4-0x813e0ae-2] // =byte_2001150
    ldr r0, [pc, #0x813e0c8-0x813e0b0-4] // =off_813E0CC
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_813E0C4:    .word byte_2001150
off_813E0C8:    .word off_813E0CC
off_813E0CC:    .word sub_813E0F8+1
    .word sub_813E188+1
    .word sub_813E1C8+1
    .word sub_813E224+1
    .word sub_813E2AC+1
    .word sub_813E33C+1
    .word sub_813E398+1
    .word sub_813E450+1
    .word sub_813E4AC+1
    .word sub_813E4F4+1
    .word sub_813E3F4+1
.thumb
sub_813E0F8:
    push {lr}
    mov r0, #0
    strb r0, [r5,#8]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    strb r0, [r5,#9]
    strb r0, [r5,#0xb]
    bl sub_813E6D0
    bl sub_813E834
    bl sub_813E890
// end of function sub_813E0F8

    bl sub_813E5A0
    ldrh r0, [r5,#0x24]
    bl sub_813E8CC
    bl sub_813EEF4
    mov r7, r10
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x17
    bl sub_80015FC
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    ldr r0, [pc, #0x813e178-0x813e13a-2] // =unk_813DBDC
    bl sub_80465A0
    ldrh r0, [r5,#0x1e]
    cmp r0, #0
    beq loc_813E14C
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_813E15E
loc_813E14C:
    mov r0, #0x28 
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813e17c-0x813e158-4] // =0x5F40
    strh r1, [r0]
    b loc_813E174
loc_813E15E:
    mov r0, #4
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    bl sub_813ED0C
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813e180-0x813e16e-2] // =0x5E40
    strh r1, [r0]
    b loc_813E174
loc_813E174:
    mov r0, #0
    pop {pc}
off_813E178:    .word unk_813DBDC
dword_813E17C:    .word 0x5F40
dword_813E180:    .word 0x5E40
    .word 0x17A0
.thumb
sub_813E188:
    push {lr}
    ldr r0, [pc, #0x813e1c4-0x813e18a-2] // =0x1F40
    bl sub_8001778
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0
    ble loc_813E1A2
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
loc_813E1A2:
    ldrh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    ldrh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    bl engine_isScreeneffectAnimating
    beq loc_813E1B6
    mov r0, #0
    bl sub_813EC10
loc_813E1B6:
    bl sub_813E534
// end of function sub_813E188

    bl sub_813EDE4
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_813E1C4:    .word 0x1F40
.thumb
sub_813E1C8:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813e220-0x813e1ce-2] // =0x1F40
    strh r1, [r0]
    bl sub_813E534
// end of function sub_813E1C8

    bl engine_isScreeneffectAnimating
    beq loc_813E21C
    ldrb r0, [r5,#5]
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0x14]
    str r0, [r1]
    bl sub_809E122
    mov r0, r10
    ldr r0, [r0,#0x1c]
    mov r1, #0
    strb r1, [r0,#9]
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#1]
    strb r1, [r0,#5]
    strb r1, [r0,#3]
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0]
    strb r1, [r0,#4]
    strb r1, [r0,#2]
    strb r1, [r0,#6]
    mov r0, r10
    ldr r0, [r0,#0x20]
    mov r1, #0
    strb r1, [r0]
    mov r1, #0
    strb r1, [r0,#4]
    strb r1, [r0,#6]
    bl sub_8005F84
    mov r0, #1
    pop {pc}
loc_813E21C:
    mov r0, #0
    pop {pc}
dword_813E220:    .word 0x1F40
.thumb
sub_813E224:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813e4a8-0x813e22a-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813E282
    mov r0, r10
    ldr r0, [r0,#0x2c]
    mov r1, #4
    str r1, [r0,#0x4c]
    ldrh r1, [r5,#0x24]
    ldrh r2, [r5,#0x20]
    add r2, r2, r1
    ldr r7, [r5,#0x28]
    ldr r0, [r7,#4]
    ldr r1, [pc, #0x813e2a8-0x813e266-2] // =reqBBS_requestEntries_IDs
    ldrb r1, [r1,r2]
    ldrb r2, [r5,#4]
    lsl r2, r2, #2
    ldr r3, [pc, #0x813e290-0x813e26e-2] // =off_813E294
    ldr r2, [r3,r2]
    bl reqBBS_80404C0
    bl sub_813ECC0
    bl sub_813ED0C
    mov r0, #0x10
    strb r0, [r5]
loc_813E282:
    bl sub_813E534
// end of function sub_813E224

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word 0x800
off_813E290:    .word off_813E294
off_813E294:    .word dword_87E76B8
    .word dword_87E771C
    .word dword_87E7780
    .word dword_87E77E4
    .word dword_87E7848
off_813E2A8:    .word reqBBS_requestEntries_IDs
.thumb
sub_813E2AC:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813E2C8
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813E2C8:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813E320
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r1, r1, r0
    ldr r0, [pc, #0x813e338-0x813e2d6-2] // =reqBBS_requestEntries_IDs
    ldr r2, [r5,#0x28]
    ldr r2, [r2,#0xc]
    ldrb r0, [r0,r1]
    add r0, r0, r2
    mov r8, r0
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_813E2F6
    mov r0, r8
    bl sub_802F130
    ldrb r0, [r5,#5]
    add r0, #0
    strb r0, [r5,#5]
loc_813E2F6:
    bl sub_8040818
    bl sub_813E834
    mov r0, #0x14
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r0, #6
    strb r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #4
    strb r0, [r7,#4]
    mov r0, #0x40 
    strb r0, [r7,#6]
    b loc_813E32C
loc_813E320:
    bl sub_813E534
    bl sub_813ED40
    mov r0, #0
    pop {pc}
loc_813E32C:
    bl sub_813E534
// end of function sub_813E2AC

    bl sub_813E890
    mov r0, #0
    pop {pc}
off_813E338:    .word reqBBS_requestEntries_IDs
.thumb
sub_813E33C:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813E38E
    mov r0, #4
    strb r0, [r5]
    bl sub_813E890
    ldr r0, [r7,#0x1c]
    mov r1, #0x3f 
    strb r1, [r0,#9]
    mov r1, #0x3f 
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#2]
    mov r1, #0xff
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0,#6]
loc_813E38E:
    bl sub_813E534
// end of function sub_813E33C

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_813E398:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    bl engine_isScreeneffectAnimating
    beq loc_813E3EA
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    mov r0, #0xc
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
loc_813E3EA:
    bl sub_813E534
// end of function sub_813E398

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_813E3F4:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    bl engine_isScreeneffectAnimating
    beq loc_813E446
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    mov r0, #0x1c
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
loc_813E446:
    bl sub_813E534
// end of function sub_813E3F4

    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_813E450:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813e4a8-0x813e456-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813E49A
    mov r0, #0
    ldrh r1, [r5,#0x1e]
    cmp r1, #0
    bne loc_813E48A
    mov r0, #1
loc_813E48A:
    add r1, r0, #0
    ldr r0, [pc, #0x813e4a4-0x813e48c-4] // =reqBBS_dialogList
    bl chatbox_runScript
    bl sub_813ED0C
    mov r0, #0x20 
    strb r0, [r5]
loc_813E49A:
    bl sub_813E534
// end of function sub_813E450

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_813E4A4:    .word reqBBS_dialogList
dword_813E4A8:    .word 0x5F40
.thumb
sub_813E4AC:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813E4C8
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813E4C8:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813E4EC
    bl sub_8040818
    mov r0, #0x24 
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1f
    strb r1, [r0,#9]
    mov r0, #5
    strb r0, [r5,#8]
    mov r0, #0x10
    mov r1, #8
    bl engine_setScreeneffect
loc_813E4EC:
    bl sub_813E534
// end of function sub_813E4AC

    mov r0, #0
    pop {pc}
.thumb
sub_813E4F4:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813E52A
    ldrh r0, [r5,#0x1e]
    cmp r0, #0
    bne loc_813E522
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
    b loc_813E52A
loc_813E522:
    mov r0, #4
    strb r0, [r5]
    bl sub_813E890
loc_813E52A:
    bl sub_813E534
// end of function sub_813E4F4

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_813E534:
    push {r5,lr}
    bl sub_80465BC
    bl sub_80465F8
    ldrh r0, [r5,#0x24]
    bl sub_813E8CC
// end of function sub_813E534

    bl sub_813EF2C
    ldrh r0, [r5,#0x1e]
    tst r0, r0
    beq loc_813E57A
    ldrb r0, [r5]
    cmp r0, #0x18
    beq loc_813E57A
    mov r0, r10
    ldr r0, [r0,#0x1c]
    ldrb r0, [r0,#7]
    cmp r0, #0x50 
    beq loc_813E566
    cmp r0, #0xff
    beq loc_813E566
    tst r0, r0
    bne loc_813E57A
loc_813E566:
    mov r0, #4
    ldrh r1, [r5,#0x20]
    lsl r1, r1, #4
    add r1, #0x18
    ldrb r2, [r5,#9]
    mov r3, #0
    ldrb r0, [r5]
    cmp r0, #0x10
    beq loc_813E57A
    strb r2, [r5,#9]
loc_813E57A:
    bl sub_813EA94
    mov r0, #0xe4
    mov r1, #0x10
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x813e598-0x813e586-2] // =0x20002
    ldrh r2, [r5,#0x1e]
    ldrh r3, [r5,#0x24]
    mov r4, #8
    ldr r6, [pc, #0x813e59c-0x813e58e-2] // =0xC000
    mov r7, #0x7c 
    bl sub_811FA98
    pop {r5,pc}
dword_813E598:    .word 0x20002
dword_813E59C:    .word 0xC000
.thumb
sub_813E5A0:
    push {r5,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #3
    ldr r3, [pc, #0x813e5c8-0x813e5a6-2] // =dword_813DF7C+208
    add r3, r3, r0
    push {r3}
    ldr r0, [r3]
    ldr r1, [pc, #0x813e5cc-0x813e5ae-2] // =unk_2025A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r3}
    ldr r0, [r3,#4]
    ldr r1, [pc, #0x813e5d0-0x813e5b8-4] // =unk_2029A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    ldr r0, [pc, #0x813e5d4-0x813e5be-2] // =dword_87EE1AC
    ldr r1, [pc, #0x813e5d8-0x813e5c0-4] // =unk_2033A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r5,pc}
off_813E5C8:    .word dword_813DF7C+0xD0
off_813E5CC:    .word unk_2025A00
off_813E5D0:    .word unk_2029A00
off_813E5D4:    .word dword_87EE1AC
off_813E5D8:    .word unk_2033A00
// end of function sub_813E5A0

.thumb
sub_813E5DC:
    push {r3,r7,lr}
    add r7, r0, #0
    mov r1, #2
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    add r0, r7, #0
    ldr r3, [pc, #0x813e6a4-0x813e5ea-2] // =0x17A0
    sub r0, r0, r3
    ldr r3, [pc, #0x813e6a8-0x813e5ee-2] // =0x19A0
    add r0, r0, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    ldr r1, [pc, #0x813e6a4-0x813e5f8-4] // =0x17A0
    sub r7, r7, r1
    lsr r3, r7, #6
    lsl r3, r3, #6
    ldr r2, [pc, #0x813e6ac-0x813e600-4] // =unk_2001400
    add r2, r2, r3
    lsr r3, r3, #4
    ldr r1, [pc, #0x813e6b0-0x813e606-2] // =unk_2000FC0
    ldr r0, [r1,r3]
    lsl r7, r7, #0x1a
    lsr r7, r7, #0x1a
    strb r7, [r2,r0]
    add r0, #1
    str r0, [r1,r3]
    pop {r3,r7,pc}
// end of function sub_813E5DC

.thumb
sub_813E616:
    push {lr}
    ldr r0, [pc, #0x813e6b4-0x813e618-4] // =unk_2001400
    ldr r1, [pc, #0x813e6b8-0x813e61a-2] // =0x200
    mov r2, #0x40 
    bl initMemblockToByte
// memBlock
    ldr r0, [pc, #0x813e6bc-0x813e622-2] // =unk_2000FC0
// numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord
// memBlock
    ldr r0, [pc, #0x813e6c0-0x813e62a-2] // =unk_2000FF0
// numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function sub_813E616

    push {r4,lr}
    add r4, r0, #0
    lsl r0, r0, #6
    ldr r1, [pc, #0x813e6c4-0x813e63a-2] // =unk_2001400
    add r0, r0, r1
    mov r1, #0x40 
    mov r2, #0x40 
    bl initMemblockToByte
    lsl r0, r4, #2
    ldr r1, [pc, #0x813e6c8-0x813e648-4] // =unk_2000FC0
    add r0, r0, r1
    mov r1, #4
    bl CpuSet_ZeroFillWord
    lsl r0, r4, #2
    ldr r1, [pc, #0x813e6cc-0x813e654-4] // =unk_2000FF0
    add r0, r0, r1
    mov r1, #4
    bl CpuSet_ZeroFillWord
    pop {r4,pc}
    push {r4,r5,lr}
    ldr r3, [pc, #0x813e688-0x813e662-2] // =dword_813E68C
    mov r1, #0
loc_813E666:
    mov r2, #0
    lsl r1, r1, #2
loc_813E66A:
    ldr r0, [r3,r1]
    add r0, r0, r2
    push {r0-r3}
    bl sub_813E5DC
    pop {r0-r3}
    add r2, #1
    cmp r2, #0x1f
    bne loc_813E66A
    lsr r1, r1, #2
    add r1, #1
    cmp r1, #6
    bne loc_813E666
    pop {r4,r5,pc}
    .balign 4, 0x00
off_813E688:    .word dword_813E68C
dword_813E68C:    .word 0x17A0, 0x17E0, 0x1820, 0x1860, 0x18A0, 0x18E0
off_813E6A4:    .word 0x17A0
off_813E6A8:    .word 0x19A0
off_813E6AC:    .word unk_2001400
off_813E6B0:    .word unk_2000FC0
off_813E6B4:    .word unk_2001400
off_813E6B8:    .word 0x200
off_813E6BC:    .word unk_2000FC0
off_813E6C0:    .word unk_2000FF0
off_813E6C4:    .word unk_2001400
off_813E6C8:    .word unk_2000FC0
off_813E6CC:    .word unk_2000FF0
.thumb
sub_813E6D0:
    push {r5,lr}
    bl sub_80017AA
    bl sub_80017E0
    ldr r0, [pc, #0x813e6f8-0x813e6da-2] // =dword_813E6FC
    bl sub_8000B30
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x813e754-0x813e6e2-2] // =off_813E758
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_8000B30
    bl sub_800183C
    bl sub_8046664
    pop {r5,pc}
    .balign 4, 0x00
off_813E6F8:    .word dword_813E6FC
dword_813E6FC:    .word 0x887E7368, 0x6000200, 0x2017A00, 0x887E72A0, 0x0
    .word unk_2018200
    .word 0x887E723C, 0x0
    .word unk_2018A00
    .word dword_87EF5A4
    .word 0x6001000, 0x280, 0x886C9D38, 0x6010000, 0x2019200
    .word 0x86C9D6C, 0x30016D0, 0x20, 0x886C9BD4, 0x0
    .word unk_201AA00
    .word 0x0
off_813E754:    .word off_813E758
off_813E758:    .word off_813E76C
    .word off_813E794
    .word off_813E7BC
    .word off_813E7E4
    .word off_813E80C
off_813E76C:    .word dword_87E74F4
    .word unk_30019C0
    .word 0x20, 0x87E76B8, 0x30019E0, 0x60, 0x87EF824, 0x3001960
    .word 0x60, 0x0
off_813E794:    .word dword_87E7514
    .word unk_30019C0
    .word 0x20, 0x87E771C, 0x30019E0, 0x60, 0x87EF824, 0x3001960
    .word 0x60, 0x0
off_813E7BC:    .word dword_87E7534
    .word unk_30019C0
    .word 0x20, 0x87E7780, 0x30019E0, 0x60, 0x87EF824, 0x3001960
    .word 0x60, 0x0
off_813E7E4:    .word dword_87E7554
    .word unk_30019C0
    .word 0x20, 0x87E77E4, 0x30019E0, 0x60, 0x87EF824, 0x3001960
    .word 0x60, 0x0
off_813E80C:    .word dword_87E7574
    .word unk_30019C0
    .word 0x20, 0x87E7848, 0x30019E0, 0x60, 0x87EF824, 0x3001960
    .word 0x60, 0x0
// end of function sub_813E6D0

.thumb
sub_813E834:
    push {r4-r7,lr}
    ldr r0, [pc, #0x813e88c-0x813e836-2] // =reqBBS_requestEntries_IDs
    mov r1, #0x30 
    mov r2, #0x2f 
    bl initMemblockToByte
    ldr r6, [r5,#0x28]
    ldr r0, [r6,#0x10]
    ldr r0, [r0]
    strh r0, [r5,#0x1e]
    ldr r6, [r6,#0x18]
    ldr r7, [pc, #0x813e88c-0x813e84a-2] // =reqBBS_requestEntries_IDs
loc_813E84C:
    sub r0, #1
    blt loc_813E862
    ldrb r3, [r6,r0]
    strb r3, [r7]
    ldrb r2, [r5]
    tst r2, r2
    bne loc_813E85E
    bl sub_813ED60
loc_813E85E:
    add r7, #1
    b loc_813E84C
loc_813E862:
    mov r0, #0
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0xc]
    mov r7, #0
    ldrh r6, [r5,#0x1e]
    tst r6, r6
    beq loc_813E886
loc_813E870:
    push {r0,r1}
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    pop {r0,r1}
    beq loc_813E880
    add r7, #1
loc_813E880:
    add r0, #1
    cmp r0, #0x30 
    blt loc_813E870
loc_813E886:
    strb r7, [r5,#5]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813E88C:    .word reqBBS_requestEntries_IDs
// end of function sub_813E834

.thumb
sub_813E890:
    push {r4-r7,lr}
    add r7, r5, #0
    mov r0, #5
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x813e8c8-0x813e89a-2] // =unk_813DBE4
    mov r4, #0x17
    mov r5, #0x10
    bl sub_80018C2
// end of function sub_813E890

    ldr r3, [r7,#0x28]
    ldr r3, [r3,#0x1c]
    mov r0, #0
    mov r1, #0
    mov r2, #1
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018C2
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
    pop {r4-r7,pc}
off_813E8C8:    .word unk_813DBE4
.thumb
sub_813E8CC:
    push {r4-r7,lr}
    ldr r1, [pc, #0x813e90c-0x813e8ce-2] // =reqBBS_requestEntries_IDs
    ldr r7, [r5,#0x28]
    ldr r7, [r7]
    add r5, r0, r1
    add r0, r7, #0
    mov r1, #0
    ldr r2, [pc, #0x813e900-0x813e8da-2] // =word_2013A00
    ldr r3, [pc, #0x813e904-0x813e8dc-4] // =0x6004000
    ldr r6, [pc, #0x813e908-0x813e8de-2] // =dword_86A5D60
loc_813E8E0:
    push {r0-r3,r5,r6}
    ldrb r1, [r5,r1]
    mov r4, #0x17
    mov r5, #1
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function sub_813E8CC

    pop {r0-r3,r5,r6}
    mov r4, #0x80
    lsl r4, r4, #4
    add r2, r2, r4
    add r3, r3, r4
    add r1, #1
    cmp r1, #8
    blt loc_813E8E0
    pop {r4-r7,pc}
off_813E900:    .word word_2013A00
dword_813E904:    .word 0x6004000
off_813E908:    .word dword_86A5D60
off_813E90C:    .word reqBBS_requestEntries_IDs
    push {r4-r7,lr}
    ldr r0, [pc, #0x813e97c-0x813e912-2] // =unk_2018A04
    mov r1, #0x40 
    bl sub_80008C0
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    add r3, r3, r6
    ldrh r0, [r5,#0x24]
    ldr r4, [pc, #0x813ea90-0x813e92a-2] // =reqBBS_requestEntries_IDs
    add r4, r4, r0
    ldr r7, [r5,#0x28]
    ldr r7, [r7,#0xc]
    mov r6, #0
loc_813E934:
    ldrb r2, [r4,r6]
    add r0, r2, r7
    push {r3}
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    pop {r3}
    beq loc_813E968
    push {r4-r7}
    mov r1, r10
    ldr r3, [r1,#0x24]
    ldrh r3, [r3]
    mov r7, #0x1f
    and r3, r7
    lsl r3, r3, #2
    ldr r0, [pc, #0x813e988-0x813e952-2] // =dword_813E990
    ldr r0, [r0,r3]
    mov r2, #8
    mul r2, r6
    ldr r1, [pc, #0x813e97c-0x813e95a-2] // =unk_2018A04
    str r0, [r1,r2]
    add r2, #4
    ldr r0, [pc, #0x813e98c-0x813e960-4] // =dword_813EA10
    ldr r0, [r0,r3]
    str r0, [r1,r2]
    pop {r4-r7}
loc_813E968:
    add r6, #1
    cmp r6, #8
    blt loc_813E934
    mov r0, #2
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x813e97c-0x813e974-4] // =unk_2018A04
    mov r4, #2
    mov r5, #0x10
    pop {r4-r7,pc}
off_813E97C:    .word unk_2018A04
    .word 0x52315230, 0x52335232
off_813E988:    .word dword_813E990
off_813E98C:    .word dword_813EA10
dword_813E990:    .word 0x52315230, 0x52315230, 0x52315230, 0x52315230, 0x52315230
    .word 0x52315230, 0x52315230, 0x52315230, 0x52315230, 0x52315230
    .word 0x52315230, 0x52315230, 0x52315230, 0x52315230, 0x52315230
    .word 0x52315230, 0x52355234, 0x52355234, 0x52355234, 0x52355234
    .word 0x52355234, 0x52355234, 0x52355234, 0x52355234, 0x52355234
    .word 0x52355234, 0x52355234, 0x52355234, 0x52355234, 0x52355234
    .word 0x52355234, 0x52355234
dword_813EA10:    .word 0x52335232, 0x52335232, 0x52335232, 0x52335232, 0x52335232
    .word 0x52335232, 0x52335232, 0x52335232, 0x52335232, 0x52335232
    .word 0x52335232, 0x52335232, 0x52335232, 0x52335232, 0x52335232
    .word 0x52335232, 0x52375236, 0x52375236, 0x52375236, 0x52375236
    .word 0x52375236, 0x52375236, 0x52375236, 0x52375236, 0x52375236
    .word 0x52375236, 0x52375236, 0x52375236, 0x52375236, 0x52375236
    .word 0x52375236, 0x52375236
off_813EA90:    .word reqBBS_requestEntries_IDs
.thumb
sub_813EA94:
    push {r0-r7,lr}
    ldrh r7, [r5,#0x24]
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r4, #0x1f
    and r4, r6
    lsl r4, r4, #2
    mov r6, #0
loc_813EAA6:
    ldr r3, [r5,#0x28]
    ldr r3, [r3,#0xc]
    ldr r2, [pc, #0x813eb08-0x813eaaa-2] // =reqBBS_requestEntries_IDs
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_813EAD6
    push {r4-r7}
    mov r0, #2
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    ldr r3, [pc, #0x813eb0c-0x813eac6-2] // =off_813EB10
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
    b loc_813EAEE
loc_813EAD6:
    push {r4-r7}
    mov r0, #2
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    mov r3, #0
    mov r4, #2
    mov r5, #2
    bl sub_80018D0
// end of function sub_813EA94

    pop {r4-r7}
loc_813EAEE:
    add r6, #1
    cmp r6, #8
    bne loc_813EAA6
    mov r0, #0x13
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x813eb0c-0x813eafa-2] // =off_813EB10
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl sub_80018C2
    pop {r0-r7,pc}
off_813EB08:    .word reqBBS_requestEntries_IDs
off_813EB0C:    .word off_813EB10
off_813EB10:    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EB90
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
    .word unk_813EBD0
unk_813EB90:    .byte 0x80
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
unk_813EBD0:    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
.thumb
sub_813EC10:
    push {r4-r7,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_813EC26
    bl sub_813EC54
    b locret_813EC4C
loc_813EC26:
    ldrh r1, [r5,#0x1e]
    cmp r1, #0
    beq locret_813EC4C
    mov r1, #1
    tst r1, r0
    beq loc_813EC38
    bl sub_813EC6C
    b locret_813EC4C
loc_813EC38:
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x813ec50-0x813ec3a-2] // =0x3C0
    tst r0, r1
    beq locret_813EC4C
    mov r1, #8
    mov r2, #0
    mov r3, #0
    bl sub_811F7F8
    strb r7, [r5,#0xb]
locret_813EC4C:
    pop {r4-r7,pc}
    .byte 0, 0
off_813EC50:    .word 0x3C0
// end of function sub_813EC10

.thumb
sub_813EC54:
    push {lr}
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x68 
    bl sound_play
    pop {pc}
    .balign 4, 0x00
// end of function sub_813EC54

.thumb
sub_813EC6C:
    push {lr}
    mov r0, #0x18
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    mov r0, #0x67 
    bl sound_play
    mov r0, #6
    strb r0, [r5,#8]
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
// end of function sub_813EC6C

    pop {r5}
    bl sub_813ED0C
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    pop {pc}
.thumb
sub_813ECC0:
    push {r4-r7,lr}
    ldr r3, [pc, #0x813ecd4-0x813ecc2-2] // =unk_2018A04
    mov r0, #2
    mov r1, #5
    mov r2, #1
    mov r4, #0x1a
    mov r5, #0xa
    bl sub_80018C2
// end of function sub_813ECC0

    pop {r4-r7,pc}
off_813ECD4:    .word unk_2018A04
    push {r4-r7,lr}
    ldr r3, [pc, #0x813ecf0-0x813ecda-2] // =unk_2018A04
    mov r0, #3
    mov r1, #5
    mov r3, #0
    mov r2, #1
    mov r4, #0x18
    mov r5, #0xa
    bl sub_80018D0
    pop {r4-r7,pc}
    .byte 0, 0
off_813ECF0:    .word unk_2018A04
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r2, #1
    ldr r3, [pc, #0x813ed08-0x813ecfc-4] // =unk_2018A04
    mov r4, #0x18
    mov r5, #0xa
    bl sub_80018C2
    pop {r4-r7,pc}
off_813ED08:    .word unk_2018A04
.thumb
sub_813ED0C:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r1, [pc, #0x813ed30-0x813ed14-4] // =reqBBS_requestEntries_IDs
    ldrb r1, [r1,r0]
    ldr r0, [r5,#0x28]
    ldr r0, [r0]
    ldr r2, [pc, #0x813ed34-0x813ed1c-4] // =unk_201B200
    ldr r3, [pc, #0x813ed38-0x813ed1e-2] // =0x6008400
    mov r4, #0x17
    mov r5, #1
    ldr r6, [pc, #0x813ed3c-0x813ed24-4] // =dword_86A5D60
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function sub_813ED0C

    pop {r4-r7,pc}
    .byte 0, 0
off_813ED30:    .word reqBBS_requestEntries_IDs
off_813ED34:    .word unk_201B200
dword_813ED38:    .word 0x6008400
off_813ED3C:    .word dword_86A5D60
.thumb
sub_813ED40:
    push {r4-r7,lr}
    ldr r0, [pc, #0x813ed58-0x813ed42-2] // =unk_813DEC4
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
// end of function sub_813ED40

    pop {r4-r7,pc}
    .balign 4, 0x00
off_813ED58:    .word unk_813DEC4
    push {r4-r7,lr}
    pop {r4-r7,pc}
.thumb
sub_813ED60:
    push {r0,r4-r7,lr}
    ldrh r6, [r5,#0x1e]
    tst r6, r6
    beq locret_813ED90
    mov r0, #0
    ldr r1, [pc, #0x813ed94-0x813ed6a-2] // =reqBBS_requestEntries_IDs
    sub r7, r7, r1
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0xc]
    add r3, r3, r1
    add r0, r3, #0
    bl sub_802F168
    beq locret_813ED90
    add r0, r7, #0
    mov r1, #7
    sub r2, r0, r1
    bge loc_813ED88
    mov r2, #0
    b loc_813ED8A
loc_813ED88:
    add r0, r1, #0
loc_813ED8A:
    strh r0, [r5,#0x20]
    strh r2, [r5,#0x24]
    strh r2, [r5,#0x26]
locret_813ED90:
    pop {r0,r4-r7,pc}
    .balign 4, 0x00
off_813ED94:    .word reqBBS_requestEntries_IDs
// end of function sub_813ED60

    push {r0-r7,lr}
    ldrh r7, [r5,#0x1e]
    ldrh r6, [r5,#0x20]
    ldrh r4, [r5,#0x24]
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r0, [r3,#4]
    mov r1, #0x40 
    tst r1, r0
    bne loc_813EDB4
    mov r1, #0x80
    tst r1, r0
    bne loc_813EDC8
    b locret_813EDE2
loc_813EDB4:
    tst r6, r6
    beq loc_813EDBE
    sub r6, #1
    strh r6, [r5,#0x20]
    b locret_813EDE2
loc_813EDBE:
    tst r4, r4
    beq locret_813EDE2
    sub r4, #1
    strh r4, [r5,#0x24]
    b locret_813EDE2
loc_813EDC8:
    sub r7, #1
    cmp r6, r7
    beq loc_813EDD8
    cmp r6, #7
    beq loc_813EDD8
    add r6, #1
    strh r6, [r5,#0x20]
    b locret_813EDE2
loc_813EDD8:
    add r3, r4, r6
    cmp r3, r7
    beq locret_813EDE2
    add r4, #1
    strh r4, [r5,#0x24]
locret_813EDE2:
    pop {r0-r7,pc}
.thumb
sub_813EDE4:
    push {r0-r7,lr}
    ldrb r0, [r5,#9]
    ldr r1, [pc, #0x813ee3c-0x813ede8-4] // =dword_813EE40+2
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x813ee34-0x813edee-2] // =unk_201AA04
    add r0, r0, r2
    ldr r1, [pc, #0x813ee38-0x813edf2-2] // =0x6017F80
    mov r2, #0x80
    bl loc_8000AC8
// end of function sub_813EDE4

    ldrh r1, [r5,#0x20]
    mov r0, #3
    mov r3, #0x10
    mul r1, r3
    add r1, #0x18
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#9]
    ldr r3, [pc, #0x813ee3c-0x813ee0a-2] // =dword_813EE40+2
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_813EE18
    mov r2, #1
    ldrh r1, [r3]
loc_813EE18:
    strb r2, [r5,#9]
    ldr r2, [pc, #0x813ee30-0x813ee1a-2] // =0x40000000
    orr r0, r2
    ldr r1, [pc, #0x813ee40-0x813ee1e-2] // =0xC3FC
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    pop {r0-r7,pc}
dword_813EE30:    .word 0x40000000
off_813EE34:    .word unk_201AA04
dword_813EE38:    .word 0x6017F80
off_813EE3C:    .word dword_813EE40+2
dword_813EE40:    .word 0xC3FC
    .byte 0, 0, 0, 0
    .word 0x1010101, 0x2020101, 0x2020202, 0xFF
.thumb
sub_813EE58:
    push {r5,lr}
    ldr r0, [pc, #0x813eeec-0x813ee5a-2] // =0x3FFFFFFF
    ldrh r1, [r5,#0x1e]
    cmp r1, #0x28 
    blt loc_813EE68
    mov r1, #0x28 
    mov r2, #0xa
    b loc_813EE8A
loc_813EE68:
    cmp r1, #0x1e
    blt loc_813EE72
    mov r1, #0x1e
    mov r2, #0xb
    b loc_813EE8A
loc_813EE72:
    cmp r1, #0x14
    blt loc_813EE7C
    mov r1, #0x14
    mov r2, #0xc
    b loc_813EE8A
loc_813EE7C:
    cmp r1, #0xa
    blt loc_813EE86
    mov r1, #0xa
    mov r2, #0xd
    b loc_813EE8A
loc_813EE86:
    mov r1, #0
    mov r2, #0xe
loc_813EE8A:
    mov r3, #1
    lsl r3, r2
    eor r0, r3
    ldrh r2, [r5,#0x1e]
    mov r3, #1
    sub r2, r2, r1
    mov r1, #9
    sub r1, r1, r2
    lsl r3, r1
    eor r0, r3
    ldrb r1, [r5,#5]
    mov r2, #0
    cmp r1, #0x28 
    blt loc_813EEAC
    mov r1, #0x28 
    mov r2, #0x19
    b loc_813EECE
loc_813EEAC:
    cmp r1, #0x1e
    blt loc_813EEB6
    mov r1, #0x1e
    mov r2, #0x1a
    b loc_813EECE
loc_813EEB6:
    cmp r1, #0x14
    blt loc_813EEC0
    mov r1, #0x14
    mov r2, #0x1b
    b loc_813EECE
loc_813EEC0:
    cmp r1, #0xa
    blt loc_813EECA
    mov r1, #0xa
    mov r2, #0x1c
    b loc_813EECE
loc_813EECA:
    mov r1, #0
    mov r2, #0x1d
loc_813EECE:
    mov r3, #1
    lsl r3, r2
    eor r0, r3
    ldrb r2, [r5,#5]
    mov r3, #1
    sub r2, r2, r1
    mov r1, #9
    sub r1, r1, r2
    add r1, #0xf
    lsl r3, r1
    eor r0, r3
    ldr r5, [pc, #0x813eef0-0x813eee4-4] // =byte_2008450
    bl sub_8002FA6
    pop {r5,pc}
dword_813EEEC:    .word 0x3FFFFFFF
off_813EEF0:    .word byte_2008450
// end of function sub_813EE58

.thumb
sub_813EEF4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x813ef10-0x813eef6-2] // =reqBBS_dialogList
    ldr r1, [pc, #0x813ef20-0x813eef8-4] // =dword_813EF24
    ldrb r2, [r5,#4]
    ldrb r1, [r1,r2]
    ldr r2, [pc, #0x813ef14-0x813eefe-2] // =unk_201CA00
    ldr r3, [pc, #0x813ef18-0x813ef00-4] // =0x6003C00
    mov r4, #0xc
    mov r5, #1
    ldr r6, [pc, #0x813ef1c-0x813ef06-2] // =dword_86B7AE0
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function sub_813EEF4

    pop {r4-r7,pc}
off_813EF10:    .word reqBBS_dialogList
off_813EF14:    .word unk_201CA00
dword_813EF18:    .word 0x6003C00
off_813EF1C:    .word dword_86B7AE0
off_813EF20:    .word dword_813EF24
dword_813EF24:    .word 0x9080706, 0xA
.thumb
sub_813EF2C:
    push {r4-r7,lr}
    mov r0, #1
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x813ef40-0x813ef34-4] // =dword_813DF44
    mov r4, #0xc
    mov r5, #2
    bl sub_80018C2
// end of function sub_813EF2C

    pop {r4-r7,pc}
off_813EF40:    .word dword_813DF44
unk_813EF44:    .byte 0x35 
    .byte 0x0, 0x0, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
unk_813EF4C:    .byte 0
    .byte 0x42, 0x2, 0x42
    .byte 4
    .byte 0x42, 0x6, 0x42
    .byte 8
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
    .byte 3
    .byte 0x42, 0x5, 0x42
    .byte 7
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
    .byte 0
    .byte 0x43, 0x2, 0x43
    .byte 4
    .byte 0x43, 0x6, 0x43
    .byte 8
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
    .byte 3
    .byte 0x43, 0x5, 0x43
    .byte 7
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
unk_813F22C:    .byte 0
    .byte 0x60, 0x0, 0x60
    .byte 0
a02468BDFHJL:    .byte 0x60, 0x20, 0x60, 0x22, 0x60, 0x24, 0x60, 0x26
    .byte 0x60, 0x28, 0x60, 0x2A, 0x60, 0x2C, 0x60, 0x2E
    .byte 0x60, 0x30, 0x60, 0x32, 0x60, 0x34, 0x60, 0x36
    .byte 0x60, 0x38, 0x60, 0x3A, 0x60, 0x3C, 0x60, 0x3E
    .byte 0x60, 0x40, 0x60, 0x42, 0x60, 0x44, 0x60, 0x46
    .byte 0x60, 0x48, 0x60, 0x4A, 0x60, 0x4C, 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
a13579ACEGIKM:    .byte 0x60, 0x21
    .byte 0x60, 0x23
    .byte 0x60, 0x25
    .byte 0x60, 0x27
    .byte 0x60, 0x29
    .byte 0x60, 0x2B
    .byte 0x60, 0x2D
    .byte 0x60, 0x2F
    .byte 0x60, 0x31
    .byte 0x60, 0x33
    .byte 0x60, 0x35
    .byte 0x60, 0x37
    .byte 0x60, 0x39
    .byte 0x60, 0x3B
    .byte 0x60, 0x3D
    .byte 0x60, 0x3F
    .byte 0x60, 0x41
    .byte 0x60, 0x43
    .byte 0x60, 0x45
    .byte 0x60, 0x47
    .byte 0x60, 0x49
    .byte 0x60, 0x4B
    .byte 0x60, 0x4D
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
asc_813F2AB:    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
a014589ADEHIJ:    .byte 0x60, 0x20, 0x60, 0x21, 0x60, 0x24
    .byte 0x60, 0x25, 0x60, 0x28, 0x60, 0x29
    .byte 0x60, 0x2C, 0x60, 0x2D, 0x60, 0x30
    .byte 0x60, 0x31, 0x60, 0x34, 0x60, 0x35
    .byte 0x60, 0x38, 0x60, 0x39, 0x60, 0x3C
    .byte 0x60, 0x3D, 0x60, 0x40, 0x60, 0x41
    .byte 0x60, 0x44, 0x60, 0x45, 0x60, 0x48
    .byte 0x60, 0x49, 0x60, 0x4A, 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
a2367BCFGJKL:    .byte 0x60, 0x22, 0x60, 0x23
    .byte 0x60, 0x26, 0x60, 0x27
    .byte 0x60, 0x2A, 0x60, 0x2B
    .byte 0x60, 0x2E, 0x60, 0x2F
    .byte 0x60, 0x32, 0x60, 0x33
    .byte 0x60, 0x36, 0x60, 0x37
    .byte 0x60, 0x3A, 0x60, 0x3B
    .byte 0x60, 0x3E, 0x60, 0x3F
    .byte 0x60, 0x42, 0x60, 0x43
    .byte 0x60, 0x46, 0x60, 0x47
    .byte 0x60, 0x4A, 0x60, 0x4B
    .byte 0x60, 0x4C, 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60, 0x0
    .byte 0x60
dword_813F32C:    .word 0x61E261E0, 0x61E661E4, 0x61EA61E8, 0x61EE61EC, 0x61E361E1
    .word 0x61E761E5, 0x61EB61E9, 0x61EF61ED
reqBBS_textualPointers:    .word unk_2025A04
    .word reqBBS_requestInfo_textOffsets
dword_813F354:    .word 0x1B60, 0x1BA0, 0x1BE0, 0x1C20
dword_813F364:    .word 0x1C60
    .word reqBBS_numRequestsSent
    .word unk_2000770
    .word reqBBS_requestEntriesList
    .word unk_2018204
off_813F378:    .word dword_87EE2F0
    .word dword_87EE5B0
dword_813F380:    .word 0x1000000, 0x1010000, 0x1000000, 0x1000002, 0x1010102
    .word 0x3030302, 0x2020103, 0x1000101, 0x20202, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
.thumb
reqBBS_init_s_2005780:
    push {r4-r7,lr}
    push {r0}
// memBlock
    ldr r0, [pc, #0x813f400-0x813f3c4-4] // =byte_2005780
    mov r1, #0xd // (byte_200578D - 0x2005780)
    ldrb r1, [r0,r1]
    mov r2, #0xe // (byte_200578E - 0x2005780)
    ldrb r2, [r0,r2]
    mov r3, #0xf // (byte_200578F - 0x2005780)
    ldrb r3, [r0,r3]
    push {r1-r3}
// numWords
    mov r1, #0x2c 
    bl CpuSet_ZeroFillWord
    pop {r1-r3}
    ldr r0, [pc, #0x813f400-0x813f3dc-4] // =byte_2005780
    mov r4, #0xd // (byte_200578D - 0x2005780)
    strb r1, [r0,r4]
    mov r4, #0xe // (byte_200578E - 0x2005780)
    strb r2, [r0,r4]
    mov r4, #0xf // (byte_200578F - 0x2005780)
    strb r3, [r0,r4]
    pop {r0}
    ldr r5, [pc, #0x813f400-0x813f3ec-4] // =byte_2005780
    strb r0, [r5,#0x4] // (byte_2005784 - 0x2005780)
    ldr r2, [pc, #0x813f3fc-0x813f3f0-4] // =reqBBS_textualPointers
    mov r1, #0x2c 
    mul r0, r1
    add r0, r0, r2
    str r0, [r5,#0x28] // (dword_20057A8 - 0x2005780)
    pop {r4-r7,pc}
off_813F3FC:    .word reqBBS_textualPointers
off_813F400:    .word byte_2005780
// end of function reqBBS_init_s_2005780

reqBBS_cb_813F404:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, [pc, #0x813f424-0x813f40e-2] // =byte_2005780
    ldr r0, [pc, #0x813f428-0x813f410-4] // =off_813F42C
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_813F424:    .word byte_2005780
off_813F428:    .word off_813F42C
off_813F42C:    .word sub_813F474+1
    .word sub_813F550+1
    .word sub_813F590+1
    .word sub_813F5EC+1
    .word sub_813F65C+1
    .word sub_813F6F8+1
    .word sub_813F754+1
    .word sub_813F80C+1
    .word sub_813F868+1
    .word sub_813F8B0+1
    .word sub_813F7B0+1
    .word sub_813FA54+1
    .word sub_813FAB0+1
    .word sub_813FB24+1
    .word sub_813FBC0+1
    .word sub_813FC30+1
    .word sub_813FC8C+1
    .word sub_813FD14+1
.thumb
sub_813F474:
    push {lr}
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164
    beq loc_813F4B6
    ldr r0, [pc, #0x813f548-0x813f480-4] // =byte_2005780
    ldr r1, [pc, #0x813f544-0x813f482-2] // =0xF
    ldrb r2, [r0,r1]
    ldr r3, [pc, #0x813f54c-0x813f486-2] // =reqBBS_textualPointers
    ldr r3, [r3,#0x18] // (dword_813F364 - 0x813f34c)
    add r2, r2, r3
    add r0, r2, #0
    bl sub_802F168
    beq loc_813F4B6
    ldr r0, [pc, #0x813f548-0x813f494-4] // =byte_2005780
    ldr r1, [pc, #0x813f544-0x813f496-2] // =0xF
    ldrb r2, [r0,r1]
    ldr r3, [pc, #0x813f54c-0x813f49a-2] // =reqBBS_textualPointers
    ldr r3, [r3,#0x14] // (dword_813F354+0xC - 0x813f34c)
    add r2, r2, r3
    add r0, r2, #0
    bl sub_802F114
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F12C
    ldr r0, [pc, #0x813f548-0x813f4ae-2] // =byte_2005780
    ldr r1, [pc, #0x813f544-0x813f4b0-4] // =0xF
    mov r3, #0
    strb r3, [r0,r1]
loc_813F4B6:
    mov r0, #0
    strb r0, [r5,#8]
    strh r0, [r5,#0x20]
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    strb r0, [r5,#9]
    strb r0, [r5,#0xb]
    bl sub_813FDA8
    bl sub_813FE54
    bl sub_813FEB0
// end of function sub_813F474

    bl sub_813F964
    ldrh r0, [r5,#0x24]
    bl sub_813FEEC
    bl sub_81405C0
    mov r7, r10
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x17
    bl sub_80015FC
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    ldr r0, [pc, #0x813f534-0x813f4f6-2] // =unk_813EF44
    bl sub_80465A0
    ldrh r0, [r5,#0x1e]
    cmp r0, #0
    beq loc_813F508
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_813F51A
loc_813F508:
    mov r0, #0x28 
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813f538-0x813f514-4] // =0x5F40
    strh r1, [r0]
    b loc_813F530
loc_813F51A:
    mov r0, #4
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    bl sub_81404E8
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813f53c-0x813f52a-2] // =0x5E40
    strh r1, [r0]
    b loc_813F530
loc_813F530:
    mov r0, #0
    pop {pc}
off_813F534:    .word unk_813EF44
dword_813F538:    .word 0x5F40
dword_813F53C:    .word 0x5E40
    .word 0x17A0
dword_813F544:    .word 0xF
off_813F548:    .word byte_2005780
off_813F54C:    .word reqBBS_textualPointers
.thumb
sub_813F550:
    push {lr}
    ldr r0, [pc, #0x813f58c-0x813f552-2] // =0x1F40
    bl sub_8001778
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0
    ble loc_813F56A
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
loc_813F56A:
    ldrh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    ldrh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    bl engine_isScreeneffectAnimating
    beq loc_813F57E
    mov r0, #0
    bl sub_8140358
loc_813F57E:
    bl reqBBS_813F8F0
// end of function sub_813F550

    bl sub_8140688
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_813F58C:    .word 0x1F40
.thumb
sub_813F590:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813f5e8-0x813f596-2] // =0x1F40
    strh r1, [r0]
    bl reqBBS_813F8F0
// end of function sub_813F590

    bl engine_isScreeneffectAnimating
    beq loc_813F5E4
    ldrb r0, [r5,#5]
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0x20]
    str r0, [r1]
    bl sub_809E122
    mov r0, r10
    ldr r0, [r0,#0x1c]
    mov r1, #0
    strb r1, [r0,#9]
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#1]
    strb r1, [r0,#5]
    strb r1, [r0,#3]
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0]
    strb r1, [r0,#4]
    strb r1, [r0,#2]
    strb r1, [r0,#6]
    mov r0, r10
    ldr r0, [r0,#0x20]
    mov r1, #0
    strb r1, [r0]
    mov r1, #0
    strb r1, [r0,#4]
    strb r1, [r0,#6]
    bl sub_8005F84
    mov r0, #1
    pop {pc}
loc_813F5E4:
    mov r0, #0
    pop {pc}
dword_813F5E8:    .word 0x1F40
.thumb
sub_813F5EC:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813f864-0x813f5f2-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813F648
    mov r0, r10
    ldr r0, [r0,#0x2c]
    mov r1, #4
    str r1, [r0,#0x4c]
    ldrh r1, [r5,#0x24]
    ldrh r2, [r5,#0x20]
    add r2, r2, r1
    ldr r7, [r5,#0x28]
    ldr r0, [r7,#4]
    ldr r1, [pc, #0x813f658-0x813f62e-2] // =reqBBS_requestEntries_IDs
    ldrb r1, [r1,r2]
    ldr r2, [pc, #0x813f654-0x813f632-2] // =reqBBS_textualShades
    bl reqBBS_80404C0
    bl sub_8140600
    bl reqBBS_drawChatbox_dup1
    bl sub_81404E8
    mov r0, #0x10
    strb r0, [r5]
loc_813F648:
    bl reqBBS_813F8F0
// end of function sub_813F5EC

    mov r0, #0
    pop {pc}
    .word 0x800
off_813F654:    .word reqBBS_textualShades
off_813F658:    .word reqBBS_requestEntries_IDs
.thumb
sub_813F65C:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813F678
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813F678:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813F6CE
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r1, r1, r0
    ldr r0, [pc, #0x813f6ec-0x813f686-2] // =reqBBS_requestEntries_IDs
    ldr r2, [r5,#0x28]
    ldr r2, [r2,#0xc]
    ldrb r0, [r0,r1]
    add r0, r0, r2
    mov r8, r0
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_813F6A6
    mov r0, r8
    bl sub_802F130
    ldrb r0, [r5,#5]
    add r0, #0
    strb r0, [r5,#5]
loc_813F6A6:
    bl sub_8040818
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r1, [pc, #0x813f6ec-0x813f6b0-4] // =reqBBS_requestEntries_IDs
    ldrb r0, [r1,r0]
    bl sub_8140868
    tst r0, r0
    beq loc_813F6C0
    mov r1, #2
    b loc_813F6C2
loc_813F6C0:
    mov r1, #0x11
loc_813F6C2:
    ldr r0, [pc, #0x813f6f4-0x813f6c2-2] // =reqBBS_dialogList
    ldr r2, [pc, #0x813f6f0-0x813f6c4-4] // =reqBBS_textualShades
    bl reqBBS_80404C0
    mov r0, #0x40 
    strb r0, [r5]
loc_813F6CE:
    bl reqBBS_813F8F0
// end of function sub_813F65C

    bl sub_8140588
    bl sub_81402CC
    mov r0, #0
    pop {pc}
    bl reqBBS_813F8F0
    bl sub_813FEB0
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_813F6EC:    .word reqBBS_requestEntries_IDs
off_813F6F0:    .word reqBBS_textualShades
off_813F6F4:    .word reqBBS_dialogList
.thumb
sub_813F6F8:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813F74A
    mov r0, #4
    strb r0, [r5]
    bl sub_813FEB0
    ldr r0, [r7,#0x1c]
    mov r1, #0x3f 
    strb r1, [r0,#9]
    mov r1, #0x3f 
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#2]
    mov r1, #0xff
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0,#6]
loc_813F74A:
    bl reqBBS_813F8F0
// end of function sub_813F6F8

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_813F754:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    bl engine_isScreeneffectAnimating
    beq loc_813F7A6
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    mov r0, #0xc
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
loc_813F7A6:
    bl reqBBS_813F8F0
// end of function sub_813F754

    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_813F7B0:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    bl engine_isScreeneffectAnimating
    beq loc_813F802
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    mov r0, #0x1c
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
loc_813F802:
    bl reqBBS_813F8F0
// end of function sub_813F7B0

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_813F80C:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813f864-0x813f812-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813F856
    mov r0, #0
    ldrh r1, [r5,#0x1e]
    cmp r1, #0
    bne loc_813F846
    mov r0, #1
loc_813F846:
    add r1, r0, #0
    ldr r0, [pc, #0x813f860-0x813f848-4] // =reqBBS_dialogList
    bl chatbox_runScript
    bl sub_81404E8
    mov r0, #0x20 
    strb r0, [r5]
loc_813F856:
    bl reqBBS_813F8F0
// end of function sub_813F80C

    mov r0, #0
    pop {pc}
    .byte 0, 0
off_813F860:    .word reqBBS_dialogList
dword_813F864:    .word 0x5F40
.thumb
sub_813F868:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813F884
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813F884:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813F8A8
    bl sub_8040818
    mov r0, #0x24 
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1f
    strb r1, [r0,#9]
    mov r0, #5
    strb r0, [r5,#8]
    mov r0, #0x10
    mov r1, #8
    bl engine_setScreeneffect
loc_813F8A8:
    bl reqBBS_813F8F0
// end of function sub_813F868

    mov r0, #0
    pop {pc}
.thumb
sub_813F8B0:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813F8E6
    ldrh r0, [r5,#0x1e]
    cmp r0, #0
    bne loc_813F8DE
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
    b loc_813F8E6
loc_813F8DE:
    mov r0, #4
    strb r0, [r5]
    bl sub_813FEB0
loc_813F8E6:
    bl reqBBS_813F8F0
// end of function sub_813F8B0

    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
reqBBS_813F8F0:
    push {r5,lr}
    bl sub_80465BC
    bl sub_80465F8
    ldrh r0, [r5,#0x24]
    bl sub_813FEEC
// end of function reqBBS_813F8F0

    bl sub_81405E8
    ldrh r0, [r5,#0x1e]
    tst r0, r0
    beq loc_813F936
    ldrb r0, [r5]
    cmp r0, #0x18
    beq loc_813F936
    mov r0, r10
    ldr r0, [r0,#0x1c]
    ldrb r0, [r0,#7]
    cmp r0, #0x50 
    beq loc_813F922
    cmp r0, #0xff
    beq loc_813F922
    tst r0, r0
    bne loc_813F936
loc_813F922:
    mov r0, #4
    ldrh r1, [r5,#0x20]
    lsl r1, r1, #4
    add r1, #0x18
    ldrb r2, [r5,#9]
    mov r3, #0
    ldrb r0, [r5]
    cmp r0, #0x10
    beq loc_813F936
    strb r2, [r5,#9]
loc_813F936:
    bl sub_814004C
    bl sub_81401C8
    bl sub_814024C
    mov r0, #0xe4
    mov r1, #0x10
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x813f95c-0x813f94a-2] // =0x20002
    ldrh r2, [r5,#0x1e]
    ldrh r3, [r5,#0x24]
    mov r4, #8
    ldr r6, [pc, #0x813f960-0x813f952-2] // =0xC000
    mov r7, #0x7c 
    bl sub_811FA98
    pop {r5,pc}
dword_813F95C:    .word 0x20002
dword_813F960:    .word 0xC000
.thumb
sub_813F964:
    push {r5,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #3
    ldr r3, [pc, #0x813f98c-0x813f96a-2] // =off_813F378
    add r3, r3, r0
    push {r3}
    ldr r0, [r3]
    ldr r1, [pc, #0x813f990-0x813f972-2] // =unk_2025A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r3}
    ldr r0, [r3,#4]
    ldr r1, [pc, #0x813f994-0x813f97c-4] // =unk_2029A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    ldr r0, [pc, #0x813f998-0x813f982-2] // =dword_87EFE14
    ldr r1, [pc, #0x813f99c-0x813f984-4] // =unk_2033A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    pop {r5,pc}
off_813F98C:    .word off_813F378
off_813F990:    .word unk_2025A00
off_813F994:    .word unk_2029A00
off_813F998:    .word dword_87EFE14
off_813F99C:    .word unk_2033A00
// end of function sub_813F964

.thumb
sub_813F9A0:
    push {r3,r7,lr}
    add r7, r0, #0
    mov r1, #2
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    add r0, r7, #0
    ldr r3, [pc, #0x813fd74-0x813f9ae-2] // =0x1B60
    sub r0, r0, r3
    ldr r3, [pc, #0x813fd78-0x813f9b2-2] // =0x1BA0
    add r0, r0, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    ldr r1, [pc, #0x813fd74-0x813f9bc-4] // =0x1B60
    sub r7, r7, r1
    lsr r3, r7, #6
    lsl r3, r3, #6
    ldr r2, [pc, #0x813fd7c-0x813f9c4-4] // =reqBBS_requestEntriesList
    add r2, r2, r3
    lsr r3, r3, #4
    ldr r1, [pc, #0x813fd80-0x813f9ca-2] // =reqBBS_numRequestsSent
    ldr r0, [r1,r3]
    lsl r7, r7, #0x1a
    lsr r7, r7, #0x1a
    strb r7, [r2,r0]
    add r0, #1
    str r0, [r1,r3]
    pop {r3,r7,pc}
// end of function sub_813F9A0

.thumb
reqBBS_initMemory_813F9DA:
    push {lr}
    ldr r0, [pc, #0x813fd84-0x813f9dc-4] // =reqBBS_requestEntriesList
    mov r1, #0x80
    mov r2, #0x80
    bl initMemblockToByte
// memBlock
    ldr r0, [pc, #0x813fd88-0x813f9e6-2] // =reqBBS_numRequestsSent
// numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord
// memBlock
    ldr r0, [pc, #0x813fd8c-0x813f9ee-2] // =unk_2000770
// numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord
    pop {pc}
// end of function reqBBS_initMemory_813F9DA

.thumb
reqBBS_dead_initMemory_813F9F8:
    push {r4,lr}
    add r4, r0, #0
    lsl r0, r0, #7
    ldr r1, [pc, #0x813fd90-0x813f9fe-2] // =reqBBS_requestEntriesList
    add r0, r0, r1
    mov r1, #0x80
    mov r2, #0x80
    bl initMemblockToByte
    lsl r0, r4, #2
    ldr r1, [pc, #0x813fd94-0x813fa0c-4] // =reqBBS_numRequestsSent
// memBlock
    add r0, r0, r1
// numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord
    lsl r0, r4, #2
    ldr r1, [pc, #0x813fd98-0x813fa18-4] // =unk_2000770
// memBlock
    add r0, r0, r1
// numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord
    pop {r4,pc}
// end of function reqBBS_dead_initMemory_813F9F8

    push {r4,r5,lr}
    ldr r3, [pc, #0x813fa4c-0x813fa26-2] // =dword_813FA50
    mov r1, #0
loc_813FA2A:
    mov r2, #0
    lsl r1, r1, #2
loc_813FA2E:
    ldr r0, [r3,r1]
    add r0, r0, r2
    push {r0-r3}
    bl sub_813F9A0
    pop {r0-r3}
    add r2, #1
    cmp r2, #0x30 
    bne loc_813FA2E
    lsr r1, r1, #2
    add r1, #1
    cmp r1, #1
    bne loc_813FA2A
    pop {r4,r5,pc}
    .balign 4, 0x00
off_813FA4C:    .word dword_813FA50
dword_813FA50:    .word 0x1B60
.thumb
sub_813FA54:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    bl engine_isScreeneffectAnimating
    beq loc_813FAA6
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    mov r0, #0x30 
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1a
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
loc_813FAA6:
    bl reqBBS_813F8F0
// end of function sub_813FA54

    mov r0, #0
    pop {pc}
    .byte 0, 0
.thumb
sub_813FAB0:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, [pc, #0x813fb14-0x813fab6-2] // =0x5F40
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    sub r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    add r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813FB02
    ldr r0, [pc, #0x813fd9c-0x813fae0-4] // =unk_2009CD0
    ldr r1, [pc, #0x813fda0-0x813fae2-2] // =byte_2005780
    ldr r2, [pc, #0x813fb1c-0x813fae4-4] // =0xF
    ldr r3, [pc, #0x813fb20-0x813fae6-2] // =0x50
    ldrb r1, [r1,r2]
    str r1, [r0,r3]
    ldr r0, [pc, #0x813fb18-0x813faec-4] // =reqBBS_dialogList
    mov r1, #6
    ldr r2, [pc, #0x813fb10-0x813faf0-4] // =reqBBS_textualShades
    bl reqBBS_80404C0
    bl reqBBS_drawSelectChatbox
    bl reqBBS_changeChatboxHeader
    mov r0, #0x34 
    strb r0, [r5]
loc_813FB02:
    bl reqBBS_813F8F0
// end of function sub_813FAB0

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word 0x800
off_813FB10:    .word reqBBS_textualShades
dword_813FB14:    .word 0x5F40
off_813FB18:    .word reqBBS_dialogList
dword_813FB1C:    .word 0xF
off_813FB20:    .word 0x50
.thumb
sub_813FB24:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813FB40
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813FB40:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813FB98
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164
    beq loc_813FB6E
    ldr r0, [pc, #0x813fbb4-0x813fb52-2] // =reqBBS_requestInfo_textOffsets
    ldr r1, [pc, #0x813fda4-0x813fb54-4] // =byte_2005780
    ldr r2, [pc, #0x813fbbc-0x813fb56-2] // =0xF
    ldrb r1, [r1,r2]
    ldr r2, [pc, #0x813fbb8-0x813fb5a-2] // =reqBBS_textualShades
    bl reqBBS_80404C0
    mov r0, #0x38 
    strb r0, [r5]
    bl reqBBS_drawChatbox_dup1
    bl reqBBS_setChatboxHeaderBasedOn_0F
    b loc_813FB98
loc_813FB6E:
    bl sub_8040818
    bl sub_813FE54
    mov r0, #0x3c 
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r0, #6
    strb r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #4
    strb r0, [r7,#4]
    mov r0, #0x40 
    strb r0, [r7,#6]
    b loc_813FBA4
loc_813FB98:
    bl reqBBS_813F8F0
    bl sub_81405A4
    mov r0, #0
    pop {pc}
loc_813FBA4:
    bl reqBBS_813F8F0
// end of function sub_813FB24

    bl sub_813FEB0
    mov r0, #0
    pop {pc}
    .word reqBBS_requestEntries_IDs
off_813FBB4:    .word reqBBS_requestInfo_textOffsets
off_813FBB8:    .word reqBBS_textualShades
dword_813FBBC:    .word 0xF
.thumb
sub_813FBC0:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813FBDC
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813FBDC:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813FC0E
    bl sub_8040818
    bl sub_813FE54
    mov r0, #0x3c 
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r0, #6
    strb r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #4
    strb r0, [r7,#4]
    mov r0, #0x40 
    strb r0, [r7,#6]
    b loc_813FC1E
loc_813FC0E:
    bl reqBBS_813F8F0
    bl sub_8140588
    bl sub_814030C
    mov r0, #0
    pop {pc}
loc_813FC1E:
    bl reqBBS_813F8F0
// end of function sub_813FBC0

    bl sub_813FEB0
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word reqBBS_requestEntries_IDs
.thumb
sub_813FC30:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    ldrb r1, [r0,#7]
    add r1, #8
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    sub r1, #8
    strb r1, [r0,#6]
    ldrb r0, [r5,#8]
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813FC82
    mov r0, #4
    strb r0, [r5]
    bl sub_813FEB0
    ldr r0, [r7,#0x1c]
    mov r1, #0x3f 
    strb r1, [r0,#9]
    mov r1, #0x3f 
    strb r1, [r0,#0xa]
    mov r1, #0xff
    strb r1, [r0,#3]
    mov r1, #0
    strb r1, [r0,#2]
    mov r1, #0xff
    strb r1, [r0,#7]
    mov r1, #0
    strb r1, [r0,#6]
loc_813FC82:
    bl reqBBS_813F8F0
// end of function sub_813FC30

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_813FC8C:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813FCA8
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813FCA8:
    bl sub_81408F0
    tst r0, r0
    beq loc_813FCBE
    add r1, r0, #0
    ldr r0, [pc, #0x813fd0c-0x813fcb2-2] // =reqBBS_dialogList
    bl chatbox_runScript
    mov r0, #0x44 
    strb r0, [r5]
    b loc_813FCF0
loc_813FCBE:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813FCF0
    bl sub_8040818
    bl sub_813FE54
    mov r0, #0x14
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r0, #6
    strb r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #4
    strb r0, [r7,#4]
    mov r0, #0x40 
    strb r0, [r7,#6]
    b loc_813FD00
loc_813FCF0:
    bl reqBBS_813F8F0
    bl sub_8140588
    bl sub_81402CC
    mov r0, #0
    pop {pc}
loc_813FD00:
    bl reqBBS_813F8F0
// end of function sub_813FC8C

    bl sub_813FEB0
    mov r0, #0
    pop {pc}
off_813FD0C:    .word reqBBS_dialogList
    .word reqBBS_requestEntries_IDs
.thumb
sub_813FD14:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20]
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813FD30
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813FD30:
    mov r0, #8
    bl sub_8045F3C
    beq loc_813FD6C
    bl sub_8040818
    bl sub_813FE54
    mov r0, #0x14
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r0, #6
    strb r0, [r5,#8]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #4
    strb r0, [r7,#4]
    mov r0, #0x40 
    strb r0, [r7,#6]
    bl reqBBS_813F8F0
    bl sub_813FEB0
    mov r0, #0
    pop {pc}
loc_813FD6C:
    bl reqBBS_813F8F0
// end of function sub_813FD14

    mov r0, #0
    pop {pc}
off_813FD74:    .word 0x1B60
off_813FD78:    .word 0x1BA0
off_813FD7C:    .word reqBBS_requestEntriesList
off_813FD80:    .word reqBBS_numRequestsSent
off_813FD84:    .word reqBBS_requestEntriesList
off_813FD88:    .word reqBBS_numRequestsSent
off_813FD8C:    .word unk_2000770
off_813FD90:    .word reqBBS_requestEntriesList
off_813FD94:    .word reqBBS_numRequestsSent
off_813FD98:    .word unk_2000770
off_813FD9C:    .word unk_2009CD0
off_813FDA0:    .word byte_2005780
off_813FDA4:    .word byte_2005780
.thumb
sub_813FDA8:
    push {r5,lr}
    bl sub_80017AA
    bl sub_80017E0
    ldr r0, [pc, #0x813fdc8-0x813fdb2-2] // =dword_813FDCC
    bl sub_8000B30
    bl sub_8140600
    bl sub_800183C
    bl sub_8046664
    pop {r5,pc}
    .balign 4, 0x00
off_813FDC8:    .word dword_813FDCC
dword_813FDCC:    .word 0x887EF884, 0x6000200, 0x2017A00, 0x887EFC28, 0x0
    .word unk_2018200
    .word 0x887EFD14, 0x0
    .word unk_2018A00
    .word 0x887EFD78, 0x0
    .word unk_201BA00
    .word dword_87EFBA4
    .word unk_30019C0
    .word 0x20, 0x87EFBC8, 0x30019E0, 0x60, 0x87EF5A4, 0x6001000
    .word 0x280, 0x87EF824, 0x3001960, 0x60, 0x886C9D38, 0x6010000
    .word 0x2019200, 0x86C9D6C, 0x30016D0, 0x20, 0x886C9BD4, 0x0
    .word unk_201AA00
    .word 0x0
// end of function sub_813FDA8

.thumb
sub_813FE54:
    push {r4-r7,lr}
    ldr r0, [pc, #0x813feac-0x813fe56-2] // =reqBBS_requestEntries_IDs
    mov r1, #0x30 
    mov r2, #0x2f 
    bl initMemblockToByte
    ldr r6, [r5,#0x28]
    ldr r0, [r6,#0x1c]
    ldr r0, [r0]
    strh r0, [r5,#0x1e]
    ldr r6, [r6,#0x24]
    ldr r7, [pc, #0x813feac-0x813fe6a-2] // =reqBBS_requestEntries_IDs
loc_813FE6C:
    sub r0, #1
    blt loc_813FE82
    ldrb r3, [r6,r0]
    strb r3, [r7]
    ldrb r2, [r5]
    tst r2, r2
    bne loc_813FE7E
    bl sub_8140604
loc_813FE7E:
    add r7, #1
    b loc_813FE6C
loc_813FE82:
    mov r0, #0
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0xc]
    mov r7, #0
    ldrh r6, [r5,#0x1e]
    tst r6, r6
    beq loc_813FEA6
loc_813FE90:
    push {r0,r1}
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    pop {r0,r1}
    beq loc_813FEA0
    add r7, #1
loc_813FEA0:
    add r0, #1
    cmp r0, #0x30 
    blt loc_813FE90
loc_813FEA6:
    strb r7, [r5,#5]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813FEAC:    .word reqBBS_requestEntries_IDs
// end of function sub_813FE54

.thumb
sub_813FEB0:
    push {r4-r7,lr}
    add r7, r5, #0
    mov r0, #5
    mov r1, #3
    mov r2, #2
    ldr r3, [pc, #0x813fee8-0x813feba-2] // =unk_813EF4C
    mov r4, #0x17
    mov r5, #0x10
    bl sub_80018C2
// end of function sub_813FEB0

    ldr r3, [r7,#0x28]
    ldr r3, [r3,#0x28]
    mov r0, #0
    mov r1, #0
    mov r2, #1
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018C2
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
    pop {r4-r7,pc}
off_813FEE8:    .word unk_813EF4C
.thumb
sub_813FEEC:
    push {r4-r7,lr}
    ldr r1, [pc, #0x813ff2c-0x813feee-2] // =reqBBS_requestEntries_IDs
    ldr r7, [r5,#0x28]
    ldr r7, [r7]
    add r5, r0, r1
    add r0, r7, #0
    mov r1, #0
    ldr r2, [pc, #0x813ff20-0x813fefa-2] // =word_2013A00
    ldr r3, [pc, #0x813ff24-0x813fefc-4] // =0x6004000
    ldr r6, [pc, #0x813ff28-0x813fefe-2] // =dword_86A5D60
loc_813FF00:
    push {r0-r3,r5,r6}
    ldrb r1, [r5,r1]
    mov r4, #0x17
    mov r5, #1
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function sub_813FEEC

    pop {r0-r3,r5,r6}
    mov r4, #0x80
    lsl r4, r4, #4
    add r2, r2, r4
    add r3, r3, r4
    add r1, #1
    cmp r1, #8
    blt loc_813FF00
    pop {r4-r7,pc}
off_813FF20:    .word word_2013A00
dword_813FF24:    .word 0x6004000
off_813FF28:    .word dword_86A5D60
off_813FF2C:    .word reqBBS_requestEntries_IDs
    push {r4-r7,lr}
    pop {r4-r7,pc}
    .word unk_2018A04
    .byte 0x30 
    .byte 0x52, 0x31, 0x52
    .byte 0x32 
    .byte 0x52, 0x33, 0x52
    .word a0r1r0r1r0r1r0r
    .word a0r1r0r1r0r1r0r+0x80
a0r1r0r1r0r1r0r:    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x30
    .byte 0x52
    .byte 0x31
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x34
    .byte 0x52
    .byte 0x35
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x32
    .byte 0x52
    .byte 0x33
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x36
    .byte 0x52
    .byte 0x37
    .byte 0x52
    .byte 0x0
    .byte 0x3A, 0x2, 0x2
.thumb
sub_814004C:
    push {r0-r7,lr}
    ldrh r7, [r5,#0x24]
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r4, #0x1f
    and r4, r6
    lsl r4, r4, #2
    mov r6, #0
loc_814005E:
    ldr r3, [r5,#0x28]
    ldr r3, [r3,#0xc]
    ldr r2, [pc, #0x81400c0-0x8140062-2] // =reqBBS_requestEntries_IDs
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_814008E
    push {r4-r7}
    mov r0, #2
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    ldr r3, [pc, #0x81400c4-0x814007e-2] // =off_81400C8
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
    b loc_81400A6
loc_814008E:
    push {r4-r7}
    mov r0, #2
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    mov r3, #0
    mov r4, #2
    mov r5, #2
    bl sub_80018D0
// end of function sub_814004C

    pop {r4-r7}
loc_81400A6:
    add r6, #1
    cmp r6, #8
    bne loc_814005E
    mov r0, #0x15
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x81400c4-0x81400b2-2] // =off_81400C8
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl sub_80018C2
    pop {r0-r7,pc}
off_81400C0:    .word reqBBS_requestEntries_IDs
off_81400C4:    .word off_81400C8
off_81400C8:    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140148
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
    .word unk_8140188
unk_8140148:    .byte 0x80
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x81
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x84
    .byte 0
unk_8140188:    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
    .byte 0x84
    .byte 0
    .byte 0x85
    .byte 0
    .byte 0x86
    .byte 0
    .byte 0x87
    .byte 0
.thumb
sub_81401C8:
    push {r4-r7,lr}
    ldrh r7, [r5,#0x24]
    mov r6, #0
loc_81401CE:
    ldr r3, [r5,#0x28]
    ldr r3, [r3,#0x14]
    ldr r2, [pc, #0x8140230-0x81401d2-2] // =reqBBS_requestEntries_IDs
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_81401FC
    push {r4-r7}
    mov r0, #2
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8140234-0x81401ee-2] // =dword_8140238
    mov r4, #2
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
    b loc_8140228
loc_81401FC:
    ldr r3, [r5,#0x28]
    ldr r3, [r3,#0x10]
    ldr r2, [pc, #0x8140230-0x8140200-4] // =reqBBS_requestEntries_IDs
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_8140228
    push {r4-r7}
    mov r0, #2
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    ldr r3, [pc, #0x8140240-0x814021c-4] // =unk_8140244
    mov r4, #2
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
loc_8140228:
    add r6, #1
    cmp r6, #8
    bne loc_81401CE
    pop {r4-r7,pc}
off_8140230:    .word reqBBS_requestEntries_IDs
off_8140234:    .word dword_8140238
dword_8140238:    .word 0x8B008A, 0x8D008C
off_8140240:    .word unk_8140244
unk_8140244:    .byte 0x8E
    .byte 0
    .byte 0x8F
    .byte 0
    .byte 0x90
    .byte 0
    .byte 0x91
    .byte 0
// end of function sub_81401C8

.thumb
sub_814024C:
    push {r4-r7,lr}
    ldrh r7, [r5,#0x24]
    mov r6, #0
loc_8140252:
    ldr r3, [r5,#0x28]
    ldr r3, [r3,#8]
    ldr r2, [pc, #0x81402bc-0x8140256-2] // =reqBBS_requestEntries_IDs
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_81402B4
    push {r4-r7}
    mov r0, #0x16
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    mov r3, #0
    mov r4, #5
    mov r5, #2
    bl sub_80018D0
    pop {r4-r7}
    ldr r0, [pc, #0x81402c0-0x814027e-2] // =dword_813F380
    ldr r1, [pc, #0x81402bc-0x8140280-4] // =reqBBS_requestEntries_IDs
    add r2, r7, r6
    ldrb r1, [r1,r2]
    ldrb r0, [r0,r1]
    add r0, #1
    tst r0, r0
    beq loc_81402B4
    mov r1, #0
loc_8140290:
    push {r0,r1}
    push {r4-r7}
    mov r0, #0x1a
    sub r0, r0, r1
    mov r1, #2
    mul r1, r6
    add r1, #3
    mov r2, #2
    ldr r3, [pc, #0x81402c4-0x81402a0-4] // =unk_81402C8
    mov r4, #1
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
    pop {r0,r1}
    add r1, #1
    cmp r1, r0
    bne loc_8140290
loc_81402B4:
    add r6, #1
    cmp r6, #8
    bne loc_8140252
    pop {r4-r7,pc}
off_81402BC:    .word reqBBS_requestEntries_IDs
off_81402C0:    .word dword_813F380
off_81402C4:    .word unk_81402C8
unk_81402C8:    .byte 0x88
    .byte 0x60 
    .byte 0x89
    .byte 0x60 
// end of function sub_814024C

.thumb
sub_81402CC:
    push {r4-r7,lr}
    bl sub_81408C8
    ldr r1, [pc, #0x8140300-0x81402d2-2] // =dword_813F380
    ldrb r0, [r1,r0]
    add r0, #1
    tst r0, r0
    beq locret_81402FE
    mov r1, #0
loc_81402DE:
    push {r0,r1}
    push {r4-r7}
    mov r0, #0x1a
    sub r0, r0, r1
    mov r1, #6
    mov r2, #1
    ldr r3, [pc, #0x8140304-0x81402ea-2] // =unk_8140308
    mov r4, #1
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
    pop {r0,r1}
    add r1, #1
    cmp r1, r0
    bne loc_81402DE
locret_81402FE:
    pop {r4-r7,pc}
off_8140300:    .word dword_813F380
off_8140304:    .word unk_8140308
unk_8140308:    .byte 0x92
    .byte 0x60 
    .byte 0x93
    .byte 0x60 
// end of function sub_81402CC

.thumb
sub_814030C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8140344-0x814030e-2] // =byte_2005780
    ldr r1, [pc, #0x8140348-0x8140310-4] // =0xF
    ldrb r0, [r0,r1]
    ldr r1, [pc, #0x814034c-0x8140314-4] // =dword_813F380
    ldrb r0, [r1,r0]
    add r0, #1
    tst r0, r0
    beq locret_8140340
    mov r1, #0
loc_8140320:
    push {r0,r1}
    push {r4-r7}
    mov r0, #0x1a
    sub r0, r0, r1
    mov r1, #6
    mov r2, #1
    ldr r3, [pc, #0x8140350-0x814032c-4] // =unk_8140354
    mov r4, #1
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7}
    pop {r0,r1}
    add r1, #1
    cmp r1, r0
    bne loc_8140320
locret_8140340:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8140344:    .word byte_2005780
dword_8140348:    .word 0xF
off_814034C:    .word dword_813F380
off_8140350:    .word unk_8140354
unk_8140354:    .byte 0x92
    .byte 0x60 
    .byte 0x93
    .byte 0x60 
// end of function sub_814030C

.thumb
sub_8140358:
    push {r4-r7,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_814036E
    bl sub_81403A8
    b locret_81403A0
loc_814036E:
    ldrh r1, [r5,#0x1e]
    cmp r1, #0
    beq locret_81403A0
    mov r1, #4
    tst r1, r0
    beq loc_8140380
    bl sub_8140414
    b locret_81403A0
loc_8140380:
    mov r1, #1
    tst r1, r0
    beq loc_814038C
    bl sub_81403C0
    b locret_81403A0
loc_814038C:
    ldrh r0, [r7,#4]
    ldr r1, [pc, #0x81403a4-0x814038e-2] // =0x3C0
    tst r0, r1
    beq locret_81403A0
    mov r1, #8
    mov r2, #0
    mov r3, #0
    bl sub_811F7F8
    strb r7, [r5,#0xb]
locret_81403A0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81403A4:    .word 0x3C0
// end of function sub_8140358

.thumb
sub_81403A8:
    push {lr}
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x68 
    bl sound_play
    pop {pc}
    .byte 0, 0
// end of function sub_81403A8

.thumb
sub_81403C0:
    push {lr}
    mov r0, #0x18
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    mov r0, #0x67 
    bl sound_play
    mov r0, #6
    strb r0, [r5,#8]
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
// end of function sub_81403C0

    pop {r5}
    bl sub_81404E8
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    pop {pc}
.thumb
sub_8140414:
    push {lr}
    mov r0, #0x2c 
    strb r0, [r5]
    mov r7, r10
    ldr r0, [r7,#0x1c]
    mov r1, #0x1b
    strb r1, [r0,#9]
    mov r1, #0x36 
    strb r1, [r0,#0xa]
    mov r1, #0
    strb r1, [r0,#3]
    mov r1, #0xff
    strb r1, [r0,#2]
    mov r1, #0x50 
    strb r1, [r0,#7]
    mov r1, #0x50 
    strb r1, [r0,#6]
    mov r0, #0x67 
    bl sound_play
    mov r0, #6
    strb r0, [r5,#8]
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
// end of function sub_8140414

    pop {r5}
    bl reqBBS_changeChatboxHeader
    ldr r0, [pc, #0x8140488-0x8140458-4] // =unk_2009CD0
    ldr r2, [pc, #0x8140480-0x814045a-2] // =0xC
    ldrb r1, [r5,r2]
    ldr r2, [pc, #0x8140484-0x814045e-2] // =0x4C
    str r1, [r0,r2]
    ldr r1, [pc, #0x814048c-0x8140462-2] // =0xE
    ldrb r0, [r5,r1]
    ldr r1, [pc, #0x8140490-0x8140466-2] // =dword_8140494
    ldrb r1, [r1,r0]
    ldr r0, [pc, #0x8140488-0x814046a-2] // =unk_2009CD0
    ldr r2, [pc, #0x814049c-0x814046c-4] // =0x54
    str r1, [r0,r2]
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    pop {pc}
dword_8140480:    .word 0xD
off_8140484:    .word 0x4C
off_8140488:    .word unk_2009CD0
dword_814048C:    .word 0xE
off_8140490:    .word dword_8140494
dword_8140494:    .word 0x4B23190A, 0x4B
off_814049C:    .word 0x54
.thumb
reqBBS_drawChatbox_dup1:
    push {r4-r7,lr}
    ldr r3, [pc, #0x81404b4-0x81404a2-2] // =unk_2018A04
    mov r0, #2
    mov r1, #5
    mov r2, #1
    mov r4, #0x1a
    mov r5, #0xa
    bl sub_80018C2
// end of function reqBBS_drawChatbox_dup1

    pop {r4-r7,pc}
off_81404B4:    .word unk_2018A04
.thumb
reqBBS_drawSelectChatbox:
    push {r4-r7,lr}
    ldr r3, [pc, #0x81404cc-0x81404ba-2] // =unk_201BA04
    mov r0, #5
    mov r1, #5
    mov r2, #1
    mov r4, #0x14
    mov r5, #0xa
    bl sub_80018C2
// end of function reqBBS_drawSelectChatbox

    pop {r4-r7,pc}
off_81404CC:    .word unk_201BA04
    push {r4-r7,lr}
    mov r0, #3
    mov r1, #5
    mov r3, #0
    mov r2, #1
    mov r4, #0x18
    mov r5, #0xa
    bl sub_80018D0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    pop {r4-r7,pc}
.thumb
sub_81404E8:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r1, [pc, #0x814050c-0x81404f0-4] // =reqBBS_requestEntries_IDs
    ldrb r1, [r1,r0]
    ldr r0, [r5,#0x28]
    ldr r0, [r0]
    ldr r2, [pc, #0x8140510-0x81404f8-4] // =unk_201B200
    ldr r3, [pc, #0x8140514-0x81404fa-2] // =0x6008400
    mov r4, #0x17
    mov r5, #1
    ldr r6, [pc, #0x8140518-0x8140500-4] // =dword_86A5D60
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function sub_81404E8

    pop {r4-r7,pc}
    .balign 4, 0x00
off_814050C:    .word reqBBS_requestEntries_IDs
off_8140510:    .word unk_201B200
dword_8140514:    .word 0x6008400
off_8140518:    .word dword_86A5D60
.thumb
reqBBS_setChatboxHeaderBasedOn_0F:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8140550-0x814051e-2] // =byte_2005780
    ldr r1, [pc, #0x814054c-0x8140520-4] // =0xF
    ldrb r1, [r0,r1]
    ldr r0, [r5,#0x28]
    ldr r0, [r0]
    ldr r2, [pc, #0x8140540-0x8140528-4] // =unk_201B200
    ldr r3, [pc, #0x8140544-0x814052a-2] // =0x6008400
    mov r4, #0x17
    mov r5, #1
    ldr r6, [pc, #0x8140548-0x8140530-4] // =dword_86A5D60
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function reqBBS_setChatboxHeaderBasedOn_0F

    pop {r4-r7,pc}
    .balign 4, 0x00
    .word reqBBS_requestEntries_IDs
off_8140540:    .word unk_201B200
dword_8140544:    .word 0x6008400
off_8140548:    .word dword_86A5D60
dword_814054C:    .word 0xF
off_8140550:    .word byte_2005780
.thumb
reqBBS_changeChatboxHeader:
    push {r4-r7,lr}
    bl sub_8140798
    mov r1, #8
    add r1, r1, r0
    ldr r0, [pc, #0x8140574-0x814055e-2] // =reqBBS_dialogList
    ldr r2, [pc, #0x8140578-0x8140560-4] // =unk_201B200
    ldr r3, [pc, #0x814057c-0x8140562-2] // =0x6008400
    mov r4, #0xc
    mov r5, #1
    ldr r6, [pc, #0x8140580-0x8140568-4] // =dword_86ACD24+60
    ldr r7, [pc, #0x8140584-0x814056a-2] // =unk_201C200
    bl sub_8045FC6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8140574:    .word reqBBS_dialogList
off_8140578:    .word unk_201B200
dword_814057C:    .word 0x6008400
off_8140580:    .word dword_86ACD24+0x3C
off_8140584:    .word unk_201C200
// end of function reqBBS_changeChatboxHeader

.thumb
sub_8140588:
    push {r4-r7,lr}
    ldr r0, [pc, #0x81405a0-0x814058a-2] // =unk_813F22C
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
// end of function sub_8140588

    pop {r4-r7,pc}
    .byte 0, 0
off_81405A0:    .word unk_813F22C
.thumb
sub_81405A4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x81405bc-0x81405a6-2] // =asc_813F2AB+1
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
// end of function sub_81405A4

    pop {r4-r7,pc}
    .balign 4, 0x00
off_81405BC:    .word asc_813F2AB+1
.thumb
sub_81405C0:
    push {r4-r7,lr}
    ldr r0, [pc, #0x81405d8-0x81405c2-2] // =reqBBS_dialogList
    mov r1, #0x12
    ldr r2, [pc, #0x81405dc-0x81405c6-2] // =unk_201CA00
    ldr r3, [pc, #0x81405e0-0x81405c8-4] // =0x6003C00
    mov r4, #8
    mov r5, #1
    ldr r6, [pc, #0x81405e4-0x81405ce-2] // =dword_86B7AE0
    mov r7, #0
    bl render_graphicalText_8045F8C
// end of function sub_81405C0

    pop {r4-r7,pc}
off_81405D8:    .word reqBBS_dialogList
off_81405DC:    .word unk_201CA00
dword_81405E0:    .word 0x6003C00
off_81405E4:    .word dword_86B7AE0
.thumb
sub_81405E8:
    push {r4-r7,lr}
    mov r0, #0xa
    mov r1, #0
    mov r2, #2
    ldr r3, [pc, #0x81405fc-0x81405f0-4] // =dword_813F32C
    mov r4, #8
    mov r5, #2
    bl sub_80018C2
// end of function sub_81405E8

    pop {r4-r7,pc}
off_81405FC:    .word dword_813F32C
.thumb
sub_8140600:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_8140600

.thumb
sub_8140604:
    push {r0,r4-r7,lr}
    ldrh r6, [r5,#0x1e]
    tst r6, r6
    beq locret_8140634
    mov r0, #0
    ldr r1, [pc, #0x8140638-0x814060e-2] // =reqBBS_requestEntries_IDs
    sub r7, r7, r1
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0xc]
    add r3, r3, r1
    add r0, r3, #0
    bl sub_802F168
    beq locret_8140634
    add r0, r7, #0
    mov r1, #7
    sub r2, r0, r1
    bge loc_814062C
    mov r2, #0
    b loc_814062E
loc_814062C:
    add r0, r1, #0
loc_814062E:
    strh r0, [r5,#0x20]
    strh r2, [r5,#0x24]
    strh r2, [r5,#0x26]
locret_8140634:
    pop {r0,r4-r7,pc}
    .balign 4, 0x00
off_8140638:    .word reqBBS_requestEntries_IDs
// end of function sub_8140604

    push {r0-r7,lr}
    ldrh r7, [r5,#0x1e]
    ldrh r6, [r5,#0x20]
    ldrh r4, [r5,#0x24]
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r0, [r3,#4]
    mov r1, #0x40 
    tst r1, r0
    bne loc_8140658
    mov r1, #0x80
    tst r1, r0
    bne loc_814066C
    b locret_8140686
loc_8140658:
    tst r6, r6
    beq loc_8140662
    sub r6, #1
    strh r6, [r5,#0x20]
    b locret_8140686
loc_8140662:
    tst r4, r4
    beq locret_8140686
    sub r4, #1
    strh r4, [r5,#0x24]
    b locret_8140686
loc_814066C:
    sub r7, #1
    cmp r6, r7
    beq loc_814067C
    cmp r6, #7
    beq loc_814067C
    add r6, #1
    strh r6, [r5,#0x20]
    b locret_8140686
loc_814067C:
    add r3, r4, r6
    cmp r3, r7
    beq locret_8140686
    add r4, #1
    strh r4, [r5,#0x24]
locret_8140686:
    pop {r0-r7,pc}
.thumb
sub_8140688:
    push {r0-r7,lr}
    ldrb r0, [r5,#9]
    ldr r1, [pc, #0x81406e0-0x814068c-4] // =dword_81406E4+2
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x81406d8-0x8140692-2] // =unk_201AA04
    add r0, r0, r2
    ldr r1, [pc, #0x81406dc-0x8140696-2] // =0x6017F80
    mov r2, #0x80
    bl loc_8000AC8
// end of function sub_8140688

    ldrh r1, [r5,#0x20]
    mov r0, #3
    mov r3, #0x10
    mul r1, r3
    add r1, #0x18
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#9]
    ldr r3, [pc, #0x81406e0-0x81406ae-2] // =dword_81406E4+2
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_81406BC
    mov r2, #1
    ldrh r1, [r3]
loc_81406BC:
    strb r2, [r5,#9]
    ldr r2, [pc, #0x81406d4-0x81406be-2] // =0x40000000
    orr r0, r2
    ldr r1, [pc, #0x81406e4-0x81406c2-2] // =0xC3FC
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    pop {r0-r7,pc}
dword_81406D4:    .word 0x40000000
off_81406D8:    .word unk_201AA04
dword_81406DC:    .word 0x6017F80
off_81406E0:    .word dword_81406E4+2
dword_81406E4:    .word 0xC3FC
    .word 0x0
    .word 0x1010101, 0x2020101, 0x2020202, 0xFF
.thumb
sub_81406FC:
    push {r5,lr}
    ldr r0, [pc, #0x8140790-0x81406fe-2] // =0x3FFFFFFF
    ldrh r1, [r5,#0x1e]
    cmp r1, #0x28 
    blt loc_814070C
    mov r1, #0x28 
    mov r2, #0xa
    b loc_814072E
loc_814070C:
    cmp r1, #0x1e
    blt loc_8140716
    mov r1, #0x1e
    mov r2, #0xb
    b loc_814072E
loc_8140716:
    cmp r1, #0x14
    blt loc_8140720
    mov r1, #0x14
    mov r2, #0xc
    b loc_814072E
loc_8140720:
    cmp r1, #0xa
    blt loc_814072A
    mov r1, #0xa
    mov r2, #0xd
    b loc_814072E
loc_814072A:
    mov r1, #0
    mov r2, #0xe
loc_814072E:
    mov r3, #1
    lsl r3, r2
    eor r0, r3
    ldrh r2, [r5,#0x1e]
    mov r3, #1
    sub r2, r2, r1
    mov r1, #9
    sub r1, r1, r2
    lsl r3, r1
    eor r0, r3
    ldrb r1, [r5,#5]
    mov r2, #0
    cmp r1, #0x28 
    blt loc_8140750
    mov r1, #0x28 
    mov r2, #0x19
    b loc_8140772
loc_8140750:
    cmp r1, #0x1e
    blt loc_814075A
    mov r1, #0x1e
    mov r2, #0x1a
    b loc_8140772
loc_814075A:
    cmp r1, #0x14
    blt loc_8140764
    mov r1, #0x14
    mov r2, #0x1b
    b loc_8140772
loc_8140764:
    cmp r1, #0xa
    blt loc_814076E
    mov r1, #0xa
    mov r2, #0x1c
    b loc_8140772
loc_814076E:
    mov r1, #0
    mov r2, #0x1d
loc_8140772:
    mov r3, #1
    lsl r3, r2
    eor r0, r3
    ldrb r2, [r5,#5]
    mov r3, #1
    sub r2, r2, r1
    mov r1, #9
    sub r1, r1, r2
    add r1, #0xf
    lsl r3, r1
    eor r0, r3
    ldr r5, [pc, #0x8140794-0x8140788-4] // =byte_2008450
    bl sub_8002FA6
    pop {r5,pc}
dword_8140790:    .word 0x3FFFFFFF
off_8140794:    .word byte_2008450
// end of function sub_81406FC

.thumb
sub_8140798:
    push {r4-r7,lr}
    ldr r0, [pc, #0x81409a4-0x814079a-2] // =byte_2005780
    ldr r1, [pc, #0x81407a4-0x814079c-4] // =0xE
    ldrb r0, [r0,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407A4:    .word 0xE
// end of function sub_8140798

    push {r4-r7,lr}
    ldr r1, [pc, #0x81409a8-0x81407aa-2] // =byte_2005780
    ldr r2, [pc, #0x81407b4-0x81407ac-4] // =0xE
    strb r0, [r1,r2]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407B4:    .word 0xE
    push {r4-r7,lr}
    ldr r0, [pc, #0x81409ac-0x81407ba-2] // =byte_2005780
    ldr r1, [pc, #0x81407c4-0x81407bc-4] // =0xC
    ldrb r0, [r0,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407C4:    .word 0xD
    push {r4-r7,lr}
    ldr r1, [pc, #0x81409b0-0x81407ca-2] // =byte_2005780
    ldr r2, [pc, #0x81407d4-0x81407cc-4] // =0xC
    strb r0, [r1,r2]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407D4:    .word 0xD
.thumb
sub_81407D8:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164
    beq loc_8140814
    ldr r0, [pc, #0x81409b4-0x81407e4-4] // =byte_2005780
    ldr r1, [pc, #0x8140820-0x81407e6-2] // =0xF
    ldrb r0, [r0,r1]
    bl sub_814084C
    tst r0, r0
    beq loc_8140814
    ldr r0, [pc, #0x81409b8-0x81407f2-2] // =byte_2005780
    ldr r1, [pc, #0x8140818-0x81407f4-4] // =0xC
    ldr r2, [pc, #0x814081c-0x81407f6-2] // =0xE
    ldrb r1, [r0,r1]
    ldrb r2, [r0,r2]
    ldr r0, [pc, #0x8140824-0x81407fc-4] // =dword_8140828
    ldrb r0, [r0,r2]
    tst r0, r0
    beq loc_8140814
    cmp r0, r1
    bgt loc_8140814
    add r2, #1
    ldr r0, [pc, #0x81409bc-0x814080a-2] // =byte_2005780
    ldr r1, [pc, #0x814081c-0x814080c-4] // =0xE
    strb r2, [r0,r1]
    mov r0, #1
    pop {r4-r7,pc}
loc_8140814:
    mov r0, #0
    pop {r4-r7,pc}
dword_8140818:    .word 0xD
dword_814081C:    .word 0xE
dword_8140820:    .word 0xF
off_8140824:    .word dword_8140828
dword_8140828:    .word 0x4B23190A, 0x0
// end of function sub_81407D8

    push {r4-r7,lr}
    ldr r1, [pc, #0x8140848-0x8140832-2] // =reqBBS_textualPointers
    ldr r1, [r1,#0x10] // (dword_813F354+8 - 0x813f34c)
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_8140844
    mov r0, #1
    b locret_8140846
loc_8140844:
    mov r0, #0
locret_8140846:
    pop {r4-r7,pc}
off_8140848:    .word reqBBS_textualPointers
.thumb
sub_814084C:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8140864-0x814084e-2] // =reqBBS_textualPointers
    ldr r1, [r1,#0x18] // (dword_813F364 - 0x813f34c)
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_8140860
    mov r0, #1
    b locret_8140862
loc_8140860:
    mov r0, #0
locret_8140862:
    pop {r4-r7,pc}
off_8140864:    .word reqBBS_textualPointers
// end of function sub_814084C

.thumb
sub_8140868:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8140880-0x814086a-2] // =reqBBS_textualPointers
    ldr r1, [r1,#0x14] // (dword_813F354+0xC - 0x813f34c)
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_814087C
    mov r0, #1
    b locret_814087E
loc_814087C:
    mov r0, #0
locret_814087E:
    pop {r4-r7,pc}
off_8140880:    .word reqBBS_textualPointers
// end of function sub_8140868

.thumb
sub_8140884:
    push {r4-r7,lr}
    push {r0}
    bl sub_8140798
    pop {r2}
    ldr r1, [pc, #0x81409c0-0x814088e-2] // =dword_813F380
    ldrb r1, [r1,r2]
    cmp r0, r1
    blt loc_814089A
    mov r0, #0
    b locret_814089C
loc_814089A:
    mov r0, #1
locret_814089C:
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_8140884

.thumb
sub_81408A0:
    push {r4-r7,lr}
    ldr r1, [pc, #0x81408b0-0x81408a2-2] // =reqBBS_textualPointers
    ldr r1, [r1,#0x10] // (dword_813F354+8 - 0x813f34c)
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    pop {r4-r7,pc}
off_81408B0:    .word reqBBS_textualPointers
// end of function sub_81408A0

.thumb
sub_81408B4:
    push {r4-r7,lr}
    ldr r1, [pc, #0x81408c4-0x81408b6-2] // =reqBBS_textualPointers
    ldr r1, [r1,#0x18] // (dword_813F364 - 0x813f34c)
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    pop {r4-r7,pc}
off_81408C4:    .word reqBBS_textualPointers
// end of function sub_81408B4

.thumb
sub_81408C8:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r1, [pc, #0x81408d8-0x81408d0-4] // =reqBBS_requestEntries_IDs
    ldrb r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81408D8:    .word reqBBS_requestEntries_IDs
// end of function sub_81408C8

.thumb
sub_81408DC:
    push {r4-r7,lr}
    bl sub_81408C8
    ldr r1, [pc, #0x81409c4-0x81408e2-2] // =byte_2005780
    ldr r2, [pc, #0x81408ec-0x81408e4-4] // =0xF
    strb r0, [r1,r2]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81408EC:    .word 0xF
// end of function sub_81408DC

.thumb
sub_81408F0:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    beq loc_814095E
    mov r0, #0x20 
    bl sub_8045F3C
    beq loc_814096A
    ldr r0, [pc, #0x8140970-0x8140902-2] // =0x110
    bl sub_8045F3C
    bne loc_814096A
    bl sub_81408C8
    bl sub_8140868
    tst r0, r0
    bne loc_814095E
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164
    bne loc_8140962
    bl sub_81408C8
    bl sub_8140884
    tst r0, r0
    bne loc_8140966
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F164
    beq loc_814095A
    bl getPETNaviSelect
    cmp r0, #0
    bne loc_814095A
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x3c 
    bl sub_802F110
    bl sub_81408C8
    bl sub_81408A0
    bl sub_81408DC
loc_814095A:
    mov r0, #0xd
    b locret_814096C
loc_814095E:
    mov r0, #0xe
    b locret_814096C
loc_8140962:
    mov r0, #0xf
    b locret_814096C
loc_8140966:
    mov r0, #0x10
    b locret_814096C
loc_814096A:
    mov r0, #0
locret_814096C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8140970:    .word 0x110
// end of function sub_81408F0

.thumb
sub_8140974:
    push {r4-r7,lr}
    ldr r0, [pc, #0x81409c8-0x8140976-2] // =byte_2005780
    ldr r1, [pc, #0x8140980-0x8140978-4] // =0xF
    ldrb r0, [r0,r1]
    pop {r4-r7,pc}
    .byte 0, 0
dword_8140980:    .word 0xF
// end of function sub_8140974

.thumb
sub_8140984:
    push {r4-r7,lr}
    ldr r0, [pc, #0x81409cc-0x8140986-2] // =byte_2005780
    mov r1, #0
    ldr r2, [pc, #0x8140998-0x814098a-2] // =0xC
    strb r1, [r0,r2]
    ldr r2, [pc, #0x814099c-0x814098e-2] // =0xE
    strb r1, [r0,r2]
    ldr r2, [pc, #0x81409a0-0x8140992-2] // =0xF
    strb r1, [r0,r2]
    pop {r4-r7,pc}
dword_8140998:    .word 0xD
dword_814099C:    .word 0xE
dword_81409A0:    .word 0xF
off_81409A4:    .word byte_2005780
off_81409A8:    .word byte_2005780
off_81409AC:    .word byte_2005780
off_81409B0:    .word byte_2005780
off_81409B4:    .word byte_2005780
off_81409B8:    .word byte_2005780
off_81409BC:    .word byte_2005780
off_81409C0:    .word dword_813F380
off_81409C4:    .word byte_2005780
off_81409C8:    .word byte_2005780
off_81409CC:    .word byte_2005780
// end of function sub_8140984

.thumb
sub_81409D0:
    push {r6,lr}
    add r6, r0, #0
    bl sub_800151C
    mov r1, #0xff
    and r0, r1
    add r1, r6, #0
    svc 6
    add r0, r1, #0
    pop {r6,pc}
// end of function sub_81409D0

.thumb
sub_81409E4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    add r0, #0x1c
    bl sub_8031A7A
    pop {pc}
// end of function sub_81409E4

.thumb
sub_81409F4:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#0xe]
    pop {pc}
    .byte 0, 0
// end of function sub_81409F4

.thumb
sub_8140A00:
    push {lr}
    mov r0, #0x17
    mov r1, #0
    bl sub_802F110
    pop {pc}
// end of function sub_8140A00

.thumb
sub_8140A0C:
    push {r4,r5,lr}
    mov r0, #0x17
    mov r1, #0
    bl sub_802F12C
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r3, #0x14
    ldrh r0, [r5,r3]
    mov r3, #0x12
    strh r0, [r5,r3]
    pop {r4,r5,pc}
// end of function sub_8140A0C

    push {lr}
    mov r0, #0x16
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_802F17E
    mov r0, #0x16
    mov r1, #0xc0
    mov r2, #0x10
    bl sub_802F17E
    mov r0, #0
    pop {pc}
    .byte 0, 0
    push {lr}
    mov r0, #0x16
    mov r1, #0xf3
    mov r2, #0xd
    bl sub_802F17E
    mov r0, #0x16
    mov r1, #0xc0
    mov r2, #0x10
    bl sub_802F17E
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.thumb
sub_8140A5C:
    push {lr}
    ldr r2, [pc, #0x8140a6c-0x8140a5e-2] // =off_8140A70
    lsl r0, r0, #2
    ldr r0, [r2,r0]
    bl chatbox_runScript
    pop {pc}
    .balign 4, 0x00
off_8140A6C:    .word off_8140A70
off_8140A70:    .word dword_87DAC90
    .word 0x78789678, 0x96AA7878, 0xAAAA9696, 0xAAAAAAAA, 0x969696A0
    .word 0x96969696, 0x78789678, 0x96AA7878, 0xAAAA9696, 0xAAAAAAAA
    .word 0x969696A0, 0x96969696, 0x0
    .word unk_3001B60
    .word 0xFF0D0E0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001750
    .word 0xFF0C0F0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001B60
    .word 0xFF0D0E0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001750
    .word 0xFF0C0F0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001750
    .word 0xFF0C0F0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001B60
    .word 0xFF0D0E0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001750
    .word 0xFF0C0F0C, 0x80000009, 0x1, 0x0, 0x0
    .word unk_3001B60
    .word 0xFF0D0E0C, 0x8000000C, 0x1, 0x0, 0x0
    .word unk_3001750
    .word 0xFF0C0F0C, 0x8000000C, 0x1, 0x0, 0x0
    .word unk_3001B60
    .word 0xFF0D0E0C, 0x80000010, 0x1, 0x0, 0x0
    .word unk_3001750
    .word 0xFF0C0F0C, 0x80000010, 0x1, 0x0
    .word 0x4, 0x3001B60, 0xFF0D0E0C, 0x80000880, 0xA, 0x800010C0
    .word 0x1E, 0x80001900, 0x1E, 0x80002140, 0x1E, 0x80001940
    .word 0x1E, 0x80001100, 0x1E, 0x2, 0x8140BC0, 0x4
    .word 0x3001750, 0xFF0C0F0C, 0x80000880, 0xA, 0x2, 0x8140BC0
    .word 0x4, 0x3001B60, 0xFF0D0E0C, 0x80001900, 0xA, 0x800010C0
    .word 0xA, 0x80000880, 0xA, 0x80000040, 0xA, 0x80000000
    .word 0x1, 0x0
    .word 0x4, 0x3001750, 0xFF0C0F0C, 0x80001900, 0xA, 0x2, 0x8140C20
dword_8140C60:    .word 0x15000, 0x18000
dword_8140C68:    .word 0xFFC000EA, 0xFFC0002E, 0xFF48002E, 0xFF4800EA, 0xFF00FF
dword_8140C7C:    .word 0x0, 0x0, 0x0, 0x0
    .word 0xFF00FF
dword_8140C90:    .word 0x0, 0x0, 0x0, 0x0
    .word 0xFF00FF
dword_8140CA4:    .word 0xAC0044, 0xAC00C0, 0xFFAE00C0, 0xFFAE0044, 0xFF00FF
dword_8140CB8:    .word 0x0, 0x0, 0x0, 0x0
    .word 0xFF00FF
dword_8140CCC:    .word 0x0, 0x0, 0x0, 0x0
    .word 0xFF00FF
dword_8140CE0:    .word 0x8C0072, 0x14C0072, 0x14CFF94, 0x8CFF94, 0xFF00FF
dword_8140CF4:    .word 0x8EFED2, 0xCAFED2, 0xCEFF50, 0x10CFF50, 0x10CFF14
    .word 0x8EFF14, 0xFF00FF
dword_8140D10:    .word 0xFE6E004C, 0xFE6EFF72, 0xFF00FF
dword_8140D1C:    .word 0xFE26FFDC, 0xFE66FFDC, 0xFE66007C, 0xFEC4007C, 0xFEC4FF9C
    .word 0xFF26FF9C, 0xFF26001A, 0xFF26FF9C, 0xFEC4FF9C, 0xFEC4007C
    .word 0xFE66007C, 0xFE66FFDC, 0xFE26FFDC, 0xFE260078, 0xFF00FF
dword_8140D58:    .word 0xFFA6001A, 0xFFA6FF9A, 0x24FF9A, 0x24001A, 0xFF00FF
dword_8140D6C:    .word 0x400FFFF, 0xFFFFFFFF, 0x500FFFF, 0xFFFF0203, 0x6000101
    .word 0xFFFFFFFF, 0x800FFFF, 0xFFFFFFFF, 0xF00FFFF, 0x20503
    .word 0xA000401, 0x1020603, 0xB000501, 0x2020703, 0xD000601
    .word 0xFFFF0803, 0xFFFF0701, 0x3020903, 0xE000801, 0xFFFFFFFF
    .word 0x1000FFFF, 0x5020B03, 0x14000A01, 0x602FFFF, 0xFFFFFFFF
    .word 0xFFFF0D03, 0x15000C01, 0x7020E03, 0x16000D01, 0x902FFFF
    .word 0xFFFFFFFF, 0x4021003, 0x11000F01, 0xA02FFFF, 0x1800FFFF
    .word 0x10021203, 0xFFFF1101, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF1403
    .word 0x19001301, 0xB021503, 0x1A001401, 0xD021603, 0x1B001501
    .word 0xE02FFFF, 0xFFFFFFFF, 0xF02FFFF, 0x1C00FFFF, 0x11021903
    .word 0x1D001801, 0x1402FFFF, 0x1E00FFFF, 0x15021B03, 0x1F001A01
    .word 0x1602FFFF, 0xFFFFFFFF, 0x18021D03, 0xFFFF1C01, 0x1902FFFF
    .word 0xFFFFFFFF, 0x1A021F03, 0xFFFF1E01, 0x1B02FFFF
dword_8140E6C:    .word 0x200FFFF, 0xFFFFFFFF, 0xA00FFFF, 0xFFFF0203, 0xFFFF0101
    .word 0x20303, 0xE000201, 0xFFFFFFFF, 0x1000FFFF, 0xFFFF0503
    .word 0x12000401, 0xFFFFFFFF, 0xFFFF0501, 0xFFFFFFFF, 0xC00FFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF0903, 0x1C000801, 0xFFFF0A03
    .word 0xFFFF0901, 0x1020B03, 0x1D000A01, 0xFFFF0C03, 0xFFFF0B01
    .word 0xFFFF0D03, 0x17000C01, 0xFFFF0E03, 0xFFFF0D01, 0x3020F03
    .word 0x18000E01, 0xFFFF1003, 0xFFFF0F01, 0x4021103, 0x19001001
    .word 0xFFFF1203, 0xFFFF1101, 0x5021303, 0x1A001201, 0xFFFF1403
    .word 0x1B001301, 0xFFFF1503, 0x24001401, 0xFFFF1603, 0xFFFF1501
    .word 0xFFFFFFFF, 0x1E00FFFF, 0xD021803, 0xFFFF1701, 0xF021903
    .word 0xFFFF1801, 0x11021A03, 0x20001901, 0x13021B03, 0x23001A01
    .word 0x1402FFFF, 0xFFFFFFFF, 0x9021D03, 0xFFFF1C01, 0xB02FFFF
    .word 0x2500FFFF, 0x17021F03, 0x26001E01, 0xFFFF2003, 0x27001F01
    .word 0x1A022103, 0xFFFF2001, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF2303
    .word 0x28002201, 0x1B022403, 0x29002301, 0x1502FFFF, 0xFFFFFFFF
    .word 0x1E02FFFF, 0xFFFFFFFF, 0x1F022703, 0xFFFF2601, 0x2002FFFF
    .word 0xFFFFFFFF, 0x23022903, 0xFFFF2801, 0x2402FFFF
dword_8140FBC:    .word 0x700FFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF0203, 0xA00FFFF
    .word 0xFFFF0303, 0xB000201, 0xFFFFFFFF, 0xC00FFFF, 0xFFFF0503
    .word 0xD000401, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF0703, 0xF000601
    .word 0xFFFFFF, 0x1000FFFF, 0xFFFFFFFF, 0x1700FFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0x2020B03, 0x11000A01, 0x3020C03, 0x13000B01
    .word 0x4020D03, 0x1B000C01, 0x5020E03, 0x1C000D01, 0xFFFFFFFF
    .word 0x1500FFFF, 0x7021003, 0x16000F01, 0x802FFFF, 0xFFFFFFFF
    .word 0xB021203, 0x1A001101, 0xFFFF1303, 0xFFFF1201, 0xC02FFFF
    .word 0xFFFFFFFF, 0xFFFF1503, 0xFFFF1401, 0xF021603, 0x1F001501
    .word 0x10021703, 0x21001601, 0x9021803, 0xFFFF1701, 0xFFFFFFFF
    .word 0x2400FFFF, 0xFFFF1A03, 0x26001901, 0x12021B03, 0x2A001A01
    .word 0xD021C03, 0x2B001B01, 0xE02FFFF, 0xFFFFFFFF, 0xFFFF1E03
    .word 0x2E001D01, 0xFFFF1F03, 0xFFFF1E01, 0x16022003, 0x30001F01
    .word 0xFFFF2103, 0xFFFF2001, 0x17022203, 0xFFFF2101, 0xFFFFFFFF
    .word 0x2800FFFF, 0xFFFF2403, 0x29002301, 0x1902FFFF, 0x3300FFFF
    .word 0xFFFF2603, 0xFFFF2501, 0x1A022703, 0x34002601, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0x23022903, 0x32002801, 0x2402FFFF, 0x3500FFFF
    .word 0x1B022B03, 0x46002A01, 0x1C02FFFF, 0xFFFFFFFF, 0xFFFF2D03
    .word 0x3A002C01, 0xFFFF2E03, 0xFFFF2D01, 0x1E022F03, 0x3B002E01
    .word 0xFFFF3003, 0xFFFF2F01, 0x20023103, 0xFFFF3001, 0xFFFFFFFF
    .word 0x4300FFFF, 0x29023303, 0x36003201, 0x2502FFFF, 0x3800FFFF
    .word 0x27023503, 0x45003401, 0x2A02FFFF, 0xFFFFFFFF, 0x33023703
    .word 0x44003601, 0xFFFF3803, 0xFFFF3701, 0x3402FFFF, 0xFFFFFFFF
    .word 0xFFFF3A03, 0xFFFF3901, 0x2D023B03, 0x3E003A01, 0x2F023C03
    .word 0x3F003B01, 0xFFFF3D03, 0xFFFF3C01, 0xFFFFFFFF, 0x4B00FFFF
    .word 0x3B023F03, 0xFFFF3E01, 0x3C024003, 0x4C003F01, 0xFFFF4103
    .word 0x4D004001, 0xFFFFFFFF, 0xFFFFFFFF, 0x2802FFFF, 0xFFFFFFFF
    .word 0x32024403, 0xFFFF4301, 0x37024503, 0x48004401, 0x35024603
    .word 0x49004501, 0x2B024703, 0x4A004601, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x45024903, 0xFFFF4801, 0x46024A03, 0xFFFF4901, 0x4702FFFF
    .word 0xFFFFFFFF, 0x3E024C03, 0xFFFF4B01, 0x40024D03, 0xFFFF4C01
    .word 0x4102FFFF
dword_814122C:    .word 0x600FFFF, 0xFFFF0103, 0x8000001, 0xFFFFFFFF, 0x900FFFF
    .word 0xFFFF0303, 0x4000201, 0xFFFFFFFF, 0xF00FFFF, 0x3020503
    .word 0xA000401, 0xFFFFFFFF, 0xFFFFFFFF, 0x20703, 0xFFFF0601
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0x1020903, 0xE000801, 0x202FFFF
    .word 0xFFFFFFFF, 0x5020B03, 0xC000A01, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xB020D03, 0x26000C01, 0xFFFFFFFF, 0x1000FFFF, 0x9020F03
    .word 0x11000E01, 0x402FFFF, 0xFFFFFFFF, 0xE02FFFF, 0xFFFFFFFF
    .word 0xF021203, 0x25001101, 0xFFFFFFFF, 0x1B00FFFF, 0xFFFFFFFF
    .word 0x5300FFFF, 0xFFFFFFFF, 0x1C00FFFF, 0xFFFF1603, 0x1E001501
    .word 0xFFFF1703, 0x20001601, 0xFFFFFFFF, 0x2100FFFF, 0xFFFF1903
    .word 0x1A001801, 0xFFFFFFFF, 0x2200FFFF, 0x19021B03, 0x23001A01
    .word 0x1302FFFF, 0xFFFFFFFF, 0x15021D03, 0x34001C01, 0xFFFF1E03
    .word 0xFFFF1D01, 0x1602FFFF, 0x2700FFFF, 0xFFFFFFFF, 0x2800FFFF
    .word 0x17022103, 0x29002001, 0x18022203, 0xFFFF2101, 0x1A02FFFF
    .word 0xFFFFFFFF, 0x1B022403, 0x2CFF2301, 0xFFFF2503, 0xFFFF2401
    .word 0x12022603, 0xFFFF2501, 0xD02FFFF, 0x3900FFFF, 0x1F022803
    .word 0x40002701, 0x2002FFFF, 0x4100FFFF, 0x21022A03, 0x3A002901
    .word 0xFFFFFFFF, 0x3B00FFFF, 0xFFFF2C03, 0xFFFF2B01, 0x24022D03
    .word 0x44002C01, 0xFFFFFFFF, 0x5300FFFF, 0xFFFF3C03, 0x46005301
    .word 0xFFFFFFFF, 0x4800FFFF, 0xFFFF3103, 0x49003001, 0xFFFFFFFF
    .word 0x3700FFFF, 0xFFFF3403, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF3201
    .word 0x1D023503, 0x38003401, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF3703
    .word 0x3E003601, 0x3202FFFF, 0x3F00FFFF, 0x35023903, 0x4B003801
    .word 0x2702FFFF, 0x4200FFFF, 0x2A023B03, 0x43003A01, 0x2B02FFFF
    .word 0xFFFFFFFF, 0x2E023D03, 0xFFFF3C01, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x37023F03, 0xFFFF3E01, 0x3802FFFF, 0x4C00FFFF, 0x28024103
    .word 0x4E004001, 0x29024203, 0xFFFF4101, 0x3A02FFFF, 0xFFFFFFFF
    .word 0x3B024403, 0xFFFF4301, 0x2D02FFFF, 0xFFFFFFFF, 0xFFFF4603
    .word 0x50004501, 0x2F02FFFF, 0xFFFFFFFF, 0xFFFF4803, 0x51004701
    .word 0x3002FFFF, 0x5200FFFF, 0x31024A03, 0xFFFF4901, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0x39024C03, 0x4D004B01, 0x4002FFFF, 0xFFFFFFFF
    .word 0x4C024E03, 0xFFFF4D01, 0x41024F03, 0xFFFF4E01, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0x46025103, 0xFFFF5001, 0x4802FFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_81414CC:    .word 0x146FEEA, 0xC6FEEA, 0x46FEEA, 0xFF66FEEA, 0x146FF6A
    .word 0xC6FF6A, 0x46FF6A, 0xFFC6FF6A, 0xFF66FF6A, 0xFF48FF6A
    .word 0xC6FFCA, 0x46FFCA, 0xFFFAFFCA, 0xFFC6FFCA, 0xFF48FFCA
    .word 0x146FFEA, 0xC6FFEA, 0xC6002A, 0xA6002A, 0x64002A
    .word 0x46002A, 0xFFC6002A, 0xFF48002A, 0x1460064, 0xC6008A
    .word 0x46008A, 0xFFC6008A, 0xFF48008A, 0xC600EA, 0x4600EA
    .word 0xFFC600EA, 0xFF4800EA
dword_814154C:    .word 0x13CFEBA, 0x1AEFF42, 0x13CFF42, 0xCEFF42, 0x6EFF64
    .word 0xEFF64, 0xFFACFF64, 0x14CFF82, 0x22CFFC4, 0x1CEFFC4
    .word 0x1AEFFC4, 0x16EFFC4, 0x14CFFC4, 0x12EFFC4, 0xCEFFC4
    .word 0xAEFFC4, 0x6EFFC4, 0x2EFFC4, 0xEFFC4, 0xFFACFFC4
    .word 0xFF2CFFC4, 0xFEAEFFC4, 0xFE50FFC4, 0x12E0002, 0xAE0002
    .word 0x2E0002, 0xFFAC0002, 0xFF2C0002, 0x1CE0044, 0x16E0044
    .word 0x12E0044, 0xAE0044, 0xFFAC0044, 0xFF8C0044, 0xFF4C0044
    .word 0xFF2C0044, 0xFEAE0044, 0x12E00C2, 0xAE00C2, 0xFFAC00C2
    .word 0xFF2C00C2, 0xFEAE00C2
dword_81415F4:    .word 0xFFEEFE94, 0x1AEFED2, 0x14EFED2, 0x10EFED2, 0xCEFED2
    .word 0x8EFED2, 0xEFF02, 0xFFEEFF02, 0xFF58FF02, 0xFEECFF02
    .word 0x14EFF14, 0x10EFF14, 0xCEFF14, 0x8EFF14, 0x4CFF14
    .word 0xFFEEFF32, 0xFF5CFF32, 0x10EFF52, 0xECFF52, 0xCEFF52
    .word 0x6FF74, 0xFFEEFF74, 0xFF5CFF74, 0xFEECFF74, 0xFEB2FF74
    .word 0x14EFF94, 0xECFF94, 0x8EFF94, 0x4CFF94, 0x6FFB2
    .word 0xFFAEFFB2, 0xFF5CFFB2, 0xFF0EFFB2, 0xFEECFFB2, 0xFEB2FFB2
    .word 0x18EFFB2, 0x14EFFB2, 0x10EFFD4, 0xECFFD4, 0xCEFFD4
    .word 0x18EFFF2, 0x14EFFF2, 0x8EFFF2, 0x4CFFF2, 0x6FFF2
    .word 0xFFEEFFF2, 0xFFAEFFF2, 0xFF5CFFF2, 0xFF0EFFF2, 0xFEB2FFF2
    .word 0x14E0014, 0x10E0014, 0xCE0014, 0x8E0014, 0x10E0032
    .word 0xEC0032, 0xCE0032, 0xE0032, 0xFFEE0032, 0xFF5C0032
    .word 0xFF0E0032, 0xFEB20032, 0xFF5C0074, 0xFF0E0074, 0xFEEC0074
    .word 0xFEB20074, 0x18E004C, 0x14E0074, 0xEC0074, 0x8E0074
    .word 0x4C0074, 0xE0074, 0x8E00B2, 0x4C00B2, 0xE00B2
    .word 0xFF5C00B2, 0xFEEC00B2, 0xFEB200B2
dword_814172C:    .word 0x104FE3C, 0xA6FE3C, 0x64FE3C, 0xFFE6FE3C, 0xFFE6FE5A
    .word 0xFFA4FE5A, 0x104FE7A, 0xE6FE7A, 0xA6FE7A, 0x64FE7A
    .word 0xFFA4FE9C, 0xFF66FE9C, 0xFF66FEBA, 0xFF44FEBA, 0x64FEBA
    .word 0xFFE6FEBA, 0x64FED8, 0xFFE6FEFA, 0xFF84FEFA, 0x24FEFC
    .word 0x0
    .word 0x1A6FF1A, 0x164FF1A, 0xE6FF1A, 0xA4FF1A, 0x64FF1A
    .word 0x64FF3C, 0x24FF3C, 0x1A6FF5C, 0x184FF5C, 0x164FF5C
    .word 0x126FF5C, 0xE6FF5C, 0xA4FF5C, 0x64FF5C, 0x24FF5C
    .word 0xFFE4FF5C, 0xFF84FF5C, 0xFF44FF5C, 0x126FF7E, 0xE6FF7E
    .word 0xA4FF9A, 0x64FF9A, 0x24FF9A, 0xFFE4FF9A, 0xFFA6FF9A
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x1A6FF9A, 0x0
    .word 0x184FF9A, 0x164FF9A, 0x1C2FFBA, 0x1A6FFBA, 0x164FFBA
    .word 0x126FFBA, 0x64FFDA, 0x24FFDA, 0x0, 0x0
    .word 0x1A6FFDC, 0x164FFDC, 0xE6FFFA, 0xA4FFFA, 0x64FFFA
    .word 0x24001A, 0xFFA6001A, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0
    .word 0x126001A, 0xE6001A, 0xE6003C, 0xA4003C, 0x64003C
    .word 0x0, 0x0, 0x0, 0x0
// end of function sub_8140A5C

.thumb
sub_814187C:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x814187e-2] // =byte_2001010
    add r0, r5, #0
// memBlock
    add r0, #8
// numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord
    mov r0, #0x50 
    strb r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
    mov r0, #7
    mov r1, #0
    bl sub_802F110
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_814187C

    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x814189c-4] // =byte_2001010
    bl sub_814187C
    bl sub_81418F0
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418ac-4] // =byte_2001010
    mov r0, #1
    strb r0, [r5,#0xd] // (dword_200101C+1 - 0x2001010)
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418b8-4] // =byte_2001010
    mov r0, #0
    strb r0, [r5,#0xd] // (dword_200101C+1 - 0x2001010)
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418c4-4] // =byte_2001010
    mov r0, #0
    strb r0, [r5,#0xe] // (dword_200101C+2 - 0x2001010)
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418d0-4] // =byte_2001010
    mov r0, #1
    strb r0, [r5,#0xe] // (dword_200101C+2 - 0x2001010)
    mov r0, #0
    pop {r4-r7,pc}
.thumb
sub_81418DA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418dc-4] // =byte_2001010
    strb r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
    strb r1, [r5,#0x15] // (dword_2001024+1 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_81418DA

.thumb
sub_81418E4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418e6-2] // =byte_2001010
    ldrb r0, [r5,#0x16] // (dword_2001024+2 - 0x2001010)
    ldrb r1, [r5,#0x15] // (dword_2001024+1 - 0x2001010)
    ldrb r2, [r5,#0x14] // (dword_2001024 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_81418E4

.thumb
sub_81418F0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81418f2-2] // =byte_2001010
    mov r0, #0
    bl sub_81420C8
    push {r0}
    mov r0, #1
    bl sub_81420C8
    push {r0}
    mov r0, #2
    bl sub_81420C8
    pop {r1,r2}
    add r0, r0, r1
    add r0, r0, r2
    strb r0, [r5,#0x16] // (dword_2001024+2 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_81418F0

    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x8141916-2] // =byte_2001010
    ldr r4, [pc, #0x8141954-0x8141918-4] // =dword_8141958
    lsl r6, r3, #3
    add r4, r4, r6
    ldr r6, [r4]
    add r0, r0, r6
    ldr r6, [r4,#4]
    add r1, r1, r6
    str r0, [r5,#0x1c] // (dword_200102C - 0x2001010)
    str r1, [r5,#0x20] // (dword_2001030 - 0x2001010)
    str r2, [r5,#0x24] // (dword_2001034 - 0x2001010)
    strb r3, [r5,#0x1b] // (dword_2001028+3 - 0x2001010)
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    strb r0, [r5,#0x18] // (dword_2001028 - 0x2001010)
    ldrb r0, [r7,#5]
    strb r0, [r5,#0x19] // (dword_2001028+1 - 0x2001010)
    mov r0, #0
    strb r0, [r5,#0x1a] // (dword_2001028+2 - 0x2001010)
    add r5, #0x18
    mov r0, #0xc
    strb r0, [r5,#0x10] // (byte_2001038 - 0x2001028)
    mov r0, #8
    strb r0, [r5,#0x11] // (byte_2001039 - 0x2001028)
    mov r0, #0xff
    strb r0, [r5,#0x12] // (byte_200103A - 0x2001028)
    mov r0, #0xff
    strb r0, [r5,#0x13] // (byte_200103B - 0x2001028)
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8141954:    .word dword_8141958
dword_8141958:    .word 0xFF0000, 0xFF0000, 0x180000, 0x0
    .word 0xFF0000, 0xFF0000, 0x0
    .word 0x180000, 0xFF0000, 0xFF0000, 0xFFE80000, 0x0
    .word 0xFF0000, 0xFF0000, 0x0
    .word 0xFFE80000, 0x485EB5F0, 0xBDF03018
.thumb
sub_81419A0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8141b14-0x81419a2-2] // =byte_2001010
    bl sub_8141AA8
    bne loc_8141A0C
    ldrb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    tst r0, r0
    beq loc_81419CC
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    bl sub_80468BA
    mov r0, #1
    mov r1, #0
    mov r2, #0
    bl sub_80468C6
    mov r0, #2
    mov r1, #1
    mov r2, #0
    bl sub_80468C6
loc_81419CC:
    bl sub_8046818
    bl sub_8046854
    bl sub_811E0BA
    bl sub_8036F36
    bne loc_8141A0C
    bl sub_809E462
    bne loc_8141A0C
    bl engine_isScreeneffectAnimating
    beq loc_8141A0C
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_8141A0C
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0]
    cmp r0, #4
    bne loc_8141A0C
    bl sub_8141AD2
    bne loc_8141A08
    bl sub_8141A10
    b loc_8141A0C
loc_8141A08:
    bl sub_8141A70
loc_8141A0C:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_81419A0

.thumb
sub_8141A10:
    push {r4-r7,lr}
    ldrb r0, [r5,#0xd]
    tst r0, r0
    bne locret_8141A6A
    mov r0, #2
    strb r0, [r5,#0xb]
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bgt locret_8141A6A
    mov r0, #0
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#0x10]
    tst r0, r0
    ble loc_8141A36
    sub r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strb r0, [r5,#0xc]
loc_8141A36:
    ldrb r0, [r5,#0x10]
    cmp r0, #0x27 
    bne loc_8141A4A
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne locret_8141A6A
    mov r0, #1
    strb r0, [r5,#0x13]
    mov r1, #5
    b loc_8141A62
loc_8141A4A:
    cmp r0, #0x13
    bne loc_8141A5C
    ldrb r0, [r5,#0x17]
    tst r0, r0
    bne locret_8141A6A
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r1, #6
    b loc_8141A62
loc_8141A5C:
    cmp r0, #0
    bne loc_8141ACA
    mov r1, #7
loc_8141A62:
    ldr r0, [pc, #0x8141a6c-0x8141a62-2] // =dword_808A128
    bl sub_8036E90
    bne loc_8141ABC
locret_8141A6A:
    pop {r4-r7,pc}
off_8141A6C:    .word dword_808A128
// end of function sub_8141A10

.thumb
sub_8141A70:
    push {r4-r7,lr}
    ldrb r0, [r5,#0xd]
    tst r0, r0
    bne locret_8141AA6
    mov r0, #0
    strb r0, [r5,#0x13]
    strb r0, [r5,#0x17]
    mov r0, #0x1e
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bgt locret_8141AA6
    ldrb r0, [r5,#0x11]
    sub r0, #1
    blt loc_8141A92
    strb r0, [r5,#0x11]
loc_8141A92:
    ldrb r0, [r5,#0x10]
    add r0, #1
    cmp r0, #0x50 
    bgt loc_8141AA2
    strb r0, [r5,#0x10]
    mov r0, #2
    strb r0, [r5,#0xb]
    b locret_8141AA6
loc_8141AA2:
    mov r0, #0
    strb r0, [r5,#0x11]
locret_8141AA6:
    pop {r4-r7,pc}
// end of function sub_8141A70

.thumb
sub_8141AA8:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_811EBE0
    bne loc_8141ACE
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x8141b04-0x8141aba-2] // =dword_8141B08
loc_8141ABC:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_8141ACE
    cmp r0, r7
    beq loc_8141ACA
    add r6, #2
    b loc_8141ABC
loc_8141ACA:
    mov r0, #0
    pop {r4-r7,pc}
loc_8141ACE:
    mov r0, #1
    pop {r4-r7,pc}
// end of function sub_8141AA8

.thumb
sub_8141AD2:
    push {r4-r7,lr}
    mov r0, #7
    mov r1, #1
    bl sub_802F164
    beq loc_8141B00
    ldrb r0, [r5,#0x11]
    tst r0, r0
    bne loc_8141B00
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x8141b04-0x8141aec-4] // =dword_8141B08
loc_8141AEE:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_8141B00
    cmp r0, r7
    beq loc_8141AFC
    add r6, #2
    b loc_8141AEE
loc_8141AFC:
    mov r0, #0
    pop {r4-r7,pc}
loc_8141B00:
    mov r0, #1
    pop {r4-r7,pc}
off_8141B04:    .word dword_8141B08
dword_8141B08:    .word 0x1910091, 0x3880291, 0x0
off_8141B14:    .word byte_2001010
off_8141B18:    .word off_8141B30
    .word off_8141C9C
    .word off_8141E1C
    .word dword_8141C84
    .word dword_8141E04
    .word dword_8141F64
off_8141B30:    .word dword_8141B48
    .word dword_8141B90
    .word dword_8141BC8
    .word dword_8141C00
    .word dword_8141C48
    .byte 0, 0, 0, 0
dword_8141B48:    .word 0xFAFEF814, 0x180001FF, 0x1401001E, 0x1000406, 0x8040614
    .word 0x1402001E, 0x1E080406, 0x6140200, 0x1E0804, 0x4061401
    .word 0x1001E08, 0x8040614, 0x1402001E, 0x1E080406, 0x6140200
    .word 0x81E0804, 0x1B871001, 0x814
dword_8141B90:    .word 0x2DFFC614, 0x18000100, 0x1E01001E, 0x1E180408, 0x81E0100
    .word 0x1E1804, 0x4081E01, 0x1001E18, 0x1804081E, 0x1E01001E
    .word 0x1E180408, 0x81E0100, 0x10010804, 0x8141BC1
dword_8141BC8:    .word 0x14002814, 0x18000200, 0x1E01001E, 0x1E180410, 0x101E0100
    .word 0x1E1804, 0x4101E01, 0x2001E18, 0x1804101E, 0x1E02001E
    .word 0x1E180410, 0x101E0200, 0x10010804, 0x8141BF9
dword_8141C00:    .word 0xE8FFA614, 0x18000200, 0x1E01001E, 0x1E180408, 0x81E0200
    .word 0x1E1804, 0x4081E01, 0x2001E18, 0x1804081E, 0x1E01001E
    .word 0x1E180408, 0x81E0200, 0x1E1804, 0x4081E01, 0x2001E18
    .word 0x1804081E, 0x1001081E, 0x8141C41
dword_8141C48:    .word 0xACFEFA14, 0x18000100, 0x1401001E, 0x1E180408, 0x8140100
    .word 0x1E1804, 0x4081402, 0x2001E18, 0x18040814, 0xE601001E
    .word 0x1E180408, 0x8140200, 0x81E1804, 0x1C7B1001, 0x814
dword_8141C84:    .word 0xE05, 0x4C0000, 0xFEC40000, 0x400000, 0x3, 0xFF
off_8141C9C:    .word dword_8141CB4
    .word unk_8141CF0
    .word dword_8141D38
    .word dword_8141D80
    .word dword_8141DC8
    .word 0x0
dword_8141CB4:    .word 0x2E000814, 0x180001FF, 0x1401001E, 0x14080406, 0x6140300
    .word 0x140804, 0x4061401, 0x3001408, 0x8040614, 0x14010014
    .word 0x14080406, 0x6140300, 0x8140804, 0x1CE71001, 0x814
unk_8141CF0:    .byte 0x14
    .byte 0x52 
    .byte 0xFF
    .byte 0x44 
    .word 0x18000100, 0x1E01001E, 0x1E180408, 0x81E0100, 0x1E1804
    .word 0x4081E00, 0x1E18, 0x1804081E, 0x1E03001E, 0x1E180408
    .word 0x81E0300, 0x1E1804, 0x4081E02, 0x2001E18, 0x1804081E
    .word 0x1001081E, 0x8141D31
dword_8141D38:    .word 0xE8FFFC14, 0x180001FF, 0x1401001E, 0x1E180406, 0x6140200
    .word 0x1E1804, 0x4061401, 0x2001E18, 0x18040614, 0x1401001E
    .word 0x1E180406, 0x6140200, 0x1E1804, 0x4061401, 0x2001E18
    .word 0x18040614, 0x1001081E, 0x8141D79
dword_8141D80:    .word 0x17015414, 0x180001FF, 0x1A01001E, 0x1E180408, 0x81A0100
    .word 0x1E1804, 0x4081A01, 0x1001E18, 0x1804081A, 0x1A01001E
    .word 0x1E180408, 0x81A0100, 0x1E1804, 0x4081A01, 0x1001E18
    .word 0x1804081A, 0x1001081E, 0x8141DC1
dword_8141DC8:    .word 0xC200A814, 0x18000200, 0x1E02001E, 0x1E180410, 0x101E0200
    .word 0x1E1804, 0x4101E01, 0x1001E18, 0x1804101E, 0x1E02001E
    .word 0x1E180410, 0x101E0200, 0x81E1804, 0x1DFB1001, 0x814
dword_8141E04:    .word 0xE05, 0x860000, 0xFE880000, 0x0
    .word 0x3, 0xFF
off_8141E1C:    .word dword_8141E34
    .word dword_8141E7C
    .word dword_8141EC4
    .word dword_8141EF0
    .word dword_8141F1C
    .word 0x0
dword_8141E34:    .word 0xE8010E14, 0x180002FE, 0x1402001E, 0x1E180406, 0x6140200
    .word 0x1E1804, 0x4061402, 0x2001E18, 0x18040614, 0x1402001E
    .word 0x1E180406, 0x6140200, 0x1E1804, 0x4061402, 0x2001E18
    .word 0x18040614, 0x1001081E, 0x8141E75
dword_8141E7C:    .word 0xB400DA14, 0x180002FF, 0x1A02001E, 0x1E180408, 0x81A0100
    .word 0x1E1804, 0x4081A02, 0x1001E18, 0x1804081A, 0x1A02001E
    .word 0x1E180408, 0x81A0100, 0x1E1804, 0x4081A02, 0x1001E18
    .word 0x1804081A, 0x1001081E, 0x8141EBD
dword_8141EC4:    .word 0xEFF9E14, 0x18000300, 0x1E03001E, 0x1E180410, 0x101E0000
    .word 0x1E1804, 0x4101E03, 0x1E18, 0x1804101E, 0x1001081E
    .word 0x8141EE9
dword_8141EF0:    .word 0xFEFEDC14, 0x180001FF, 0x1E01001E, 0x1E180408, 0x81E0200
    .word 0x1E1804, 0x4081E01, 0x2001E18, 0x1804081E, 0x1001081E
    .word 0x8141F15
dword_8141F1C:    .word 0xD2006A14, 0x180003FF, 0x1403001E, 0x1E180406, 0x61E0000
    .word 0x1E1804, 0x4061E03, 0x1E18, 0x1804061E, 0x1E03001E
    .word 0x1E180406, 0x61E0000, 0x1E1804, 0x4061E03, 0x1E18
    .word 0x1804061E, 0x1001081E, 0x8141F5D
dword_8141F64:    .word 0xE05, 0x1A00000, 0xFEEE0000, 0x0
    .word 0x3, 0xFF, 0x4651B5F0, 0x790A6BC9, 0x79487B0B, 0x807B49
    .word 0xB40F0089, 0x21002007, 0xF8E6F6ED, 0xD103BC0F, 0xD101429A, 0xD0074288
    .word 0x4862B4FF, 0xF6BE4923, 0xF7FFFC99, 0xBCFFFC74, 0xF864F000, 0x4F1E0080
    .word 0x2400583F, 0x42006838, 0x1C20D00E, 0xF892F000, 0xF6ED1C00, 0xD104F8CB
    .word 0x200DB4F0, 0xFC02F6C2, 0x3401BCF0, 0xE7ED3704, 0xF84CF000, 0x5C084915
    .word 0xF7FF210F, 0xF000FC74, 0x4F11F845, 0x58380080, 0xFAB8F6C1, 0x21022007
    .word 0xF8AEF6ED, 0x480FD007, 0xF6F42100, 0x2007FF3F, 0xF6ED2102, 0xF75CF889
    .word 0xD004F9C2, 0xF6BF2054, 0xF7FEF8A6, 0x2007FCEB, 0xF6ED2100, 0xBDF0F87D
    .word 0x8141B18, 0x140, 0x8141B24, 0x8142044, 0xFF050505, 0x8089DF4
    .word 0xBDF0B5F0
// end of function sub_8141AD2

.thumb
sub_8142050:
    push {r4-r6,lr}
    lsl r4, r0, #2
    bl sub_8142080
    lsl r0, r0, #2
    ldr r7, [pc, #0x8142064-0x814205a-2] // =off_8141B18
    ldr r7, [r7,r0]
    ldr r7, [r7,r4]
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8142064:    .word off_8141B18
// end of function sub_8142050

.thumb
sub_8142068:
    ldr r6, [pc, #0x8142130-0x8142068-4] // =unk_2000BE0
    mov r1, #0x28 
    mul r0, r1
    add r6, r6, r0
    mov pc, lr
// end of function sub_8142068

    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0xf
    bl sub_81418DA
    mov r0, #0
    pop {r4-r7,pc}
.thumb
sub_8142080:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x81420a4-0x814208a-2] // =dword_81420A8
loc_814208C:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_81420A0
    cmp r0, r7
    beq loc_814209A
    add r6, #2
    b loc_814208C
loc_814209A:
    lsr r0, r6, #1
    tst r0, r0
    pop {r4-r7,pc}
loc_81420A0:
    mov r0, #0xff
    pop {r4-r7,pc}
off_81420A4:    .word dword_81420A8
dword_81420A8:    .word 0x1910091, 0x291
// end of function sub_8142080

.thumb
sub_81420B0:
    push {r4-r7,lr}
    bl sub_8142080
    ldr r1, [pc, #0x81420c0-0x81420b6-2] // =unk_81420C4
    ldrb r0, [r1,r0]
    lsl r0, r0, #0x10
    pop {r4-r7,pc}
    .byte 0, 0
off_81420C0:    .word unk_81420C4
unk_81420C4:    .byte 0x80
    .byte 0x40 
    .byte 0x40 
    .byte 0
// end of function sub_81420B0

.thumb
sub_81420C8:
    push {r4-r7,lr}
    ldr r7, [pc, #0x814211c-0x81420ca-2] // =dword_8142120
    lsl r0, r0, #2
    add r7, r7, r0
    mov r4, #0
    mov r6, #0
loc_81420D4:
    ldrh r0, [r7,#2]
    cmp r4, r0
    bge loc_81420EC
    ldrh r0, [r7]
    add r0, r0, r4
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_81420E8
    add r6, #1
loc_81420E8:
    add r4, #1
    b loc_81420D4
loc_81420EC:
    add r0, r6, #0
    pop {r4-r7,pc}
// end of function sub_81420C8

.thumb
sub_81420F0:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_8142080
    ldr r1, [pc, #0x814211c-0x81420f8-4] // =dword_8142120
    lsl r0, r0, #2
    ldrh r0, [r1,r0]
    add r0, r0, r4
    pop {r4-r7,pc}
// end of function sub_81420F0

    push {r4-r7,lr}
    bl sub_8142080
    ldr r1, [pc, #0x814211c-0x8142108-4] // =dword_8142120
    lsl r0, r0, #2
    add r1, r1, r0
    ldrh r0, [r1]
    ldrh r1, [r1,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    add r2, r1, #0
    bl loc_802F1AC
    pop {r4-r7,pc}
off_814211C:    .word dword_8142120
dword_8142120:    .word 0x50710, 0x50720, 0x50730, 0x0
off_8142130:    .word unk_2000BE0
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142136-2] // =byte_2000780
    add r0, r5, #0
    add r0, #8
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord
    mov r0, #7
    mov r1, #0x40 
    bl sub_802F110
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142150-4] // =byte_2000780
    mov r0, #0
    strb r0, [r5,#0xd] // (byte_200078D - 0x2000780)
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x814215c-4] // =byte_2000780
    mov r0, #1
    strb r0, [r5,#0xd] // (byte_200078D - 0x2000780)
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142168-4] // =byte_2000780
    strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
    pop {r4-r7,pc}
.thumb
sub_814216E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142170-4] // =byte_2000780
    ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_814216E

    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x814217a-2] // =byte_2000780
    ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
    add r0, #1
    strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
    pop {r4-r7,pc}
.thumb
sub_8142184:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142186-2] // =byte_2000780
    ldrb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
    sub r0, #1
    strb r0, [r5,#0xe] // (byte_200078E - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_8142184

.thumb
sub_8142190:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142192-2] // =byte_2000780
    add r0, #0x10
    ldrb r0, [r5,r0]
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8142190

.thumb
sub_814219C:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x814219e-2] // =byte_2000780
    ldrb r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
    ldrb r1, [r5,#0x11] // (dword_2000790+1 - 0x2000780)
    add r0, r0, r1
    ldrb r1, [r5,#0x12] // (dword_2000790+2 - 0x2000780)
    add r0, r0, r1
    ldrb r1, [r5,#0x13] // (dword_2000790+3 - 0x2000780)
    add r0, r0, r1
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_814219C

.thumb
sub_81421B2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x81421b4-4] // =byte_2000780
    add r1, r0, #0
    add r1, #0x10
    ldrb r0, [r5,r1]
    sub r2, r0, #1
    blt loc_81421C4
    strb r2, [r5,r1]
    add r0, r2, #0
loc_81421C4:
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_81421B2

.thumb
sub_81421C8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x81421ca-2] // =byte_2000780
    strb r0, [r5,#0xb] // (byte_200078B - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_81421C8

.thumb
sub_81421D0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x81421d2-2] // =byte_2000780
    ldrb r0, [r5,#0xb] // (byte_200078B - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_81421D0

.thumb
sub_81421D8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8142308-0x81421da-2] // =byte_2000780
    add r0, #0x18
    pop {r4-r7,pc}
// end of function sub_81421D8

.thumb
sub_81421E0:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8142308-0x81421e2-2] // =byte_2000780
    ldr r0, [r0,#0x18] // (dword_2000798 - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_81421E0

.thumb
sub_81421E8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x81421ea-2] // =byte_2000780
    mov r4, #0
loc_81421EE:
    ldr r1, [r5,#0x18]
    tst r1, r1
    beq loc_81421FE
    cmp r0, r1
    beq loc_81421FC
    add r5, #4
    b loc_81421EE
loc_81421FC:
    mov r4, #1
loc_81421FE:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_81421E8

.thumb
sub_8142204:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142206-2] // =byte_2000780
    ldr r1, [r5,#0x28] // (dword_20007A8 - 0x2000780)
    add r2, r1, #1
    str r2, [r5,#0x28] // (dword_20007A8 - 0x2000780)
    lsl r1, r1, #2
    add r1, #0x2c 
    ldr r2, [pc, #0x814221c-0x8142212-2] // =unk_8142220
    ldrb r0, [r2,r0]
    str r0, [r5,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_814221C:    .word unk_8142220
unk_8142220:    .byte 0
    .byte 0xA
    .byte 0x14
    .byte 0x1E
// end of function sub_8142204

.thumb
sub_8142224:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142226-2] // =byte_2000780
    mov r6, #0
    ldr r4, [r5,#0x28] // (dword_20007A8 - 0x2000780)
    sub r4, #1
    blt loc_8142238
    str r4, [r5,#0x28] // (dword_20007A8 - 0x2000780)
    lsl r4, r4, #2
    add r4, #0x2c 
    ldr r6, [r5,r4]
loc_8142238:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8142224

.thumb
sub_814223E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x8142240-4] // =byte_2000780
    mov r0, #0
    str r0, [r5,#0x28] // (dword_20007A8 - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_814223E

.thumb
sub_8142248:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x814224a-2] // =byte_2000780
    bl sub_81422BE
    bne loc_8142272
    ldrb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
    tst r0, r0
    beq loc_814226A
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_2000783 - 0x2000780)
    bl sub_80468BA
    mov r0, #3
    mov r1, #0
    mov r2, #0
    bl sub_80468C6
loc_814226A:
    bl sub_8046818
    bl sub_8046854
loc_8142272:
    bl sub_8142C90
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_8142248

    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x814227c-4] // =byte_2000780
    bl sub_81426CE
    ldr r1, [pc, #0x8142290-0x8142282-2] // =unk_8142294
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_8142290:    .word unk_8142294
unk_8142294:    .byte 2
    .byte 2
    .byte 1
    .byte 1
    .byte 2
    .byte 2
    .byte 4
    .byte 1
    .byte 3
    .byte 4
    .byte 4
    .byte 2
    .byte 4
    .byte 4
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 5
    .byte 4
    .byte 3
    .byte 4
    .byte 6
    .byte 4
    .byte 6
    .byte 3
    .byte 4
    .byte 5
    .byte 3
.thumb
sub_81422B4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142308-0x81422b6-2] // =byte_2000780
    mov r0, #0
    str r0, [r5,#0x10] // (dword_2000790 - 0x2000780)
    pop {r4-r7,pc}
// end of function sub_81422B4

.thumb
sub_81422BE:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_811EBE0
    bne loc_81422F0
    bl sub_81426CE
    add r4, r0, #0
    cmp r4, #0xff
    beq loc_81422F0
    bl sub_81427CE
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_81422F0
    ldr r1, [pc, #0x81422f4-0x81422de-2] // =dword_81422F8
    lsl r4, r4, #1
    ldrh r0, [r1,r4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_81422F0
    mov r0, #0
    pop {r4-r7,pc}
loc_81422F0:
    mov r0, #1
    pop {r4-r7,pc}
off_81422F4:    .word dword_81422F8
dword_81422F8:    .word 0x6870686, 0x6890688, 0x68B068A, 0x68D068C
off_8142308:    .word byte_2000780
    .word dword_814232C
    .word dword_814234C
    .word dword_814237C
    .word dword_81423B0
    .word dword_81423E8
    .word dword_8142424
    .word dword_8142468
    .word dword_81424BC
dword_814232C:    .word 0x1028379, 0x2017E81, 0x1027E82, 0x1028188, 0x2018189
    .word 0x1008089, 0x2007F89, 0xFFFF0000
dword_814234C:    .word 0x102867C, 0x201867D, 0x102877D, 0x103867E, 0x1017F83
    .word 0x2017F84, 0x1017F85, 0x1007883, 0x2007783, 0x2017784
    .word 0x1017684, 0xFFFF0000
dword_814237C:    .word 0x101847D, 0x301847E, 0x101837E, 0x2018482, 0x2028483
    .word 0x1018382, 0x2038182, 0x2008183, 0x1008083, 0x2037C7F
    .word 0x1037C80, 0x3027C81, 0xFFFF0000
dword_81423B0:    .word 0x300817B, 0x201817C, 0x200807C, 0x1007F7C, 0x2027E81
    .word 0x1017E84, 0x2028686, 0x3028586, 0x2028486, 0x2028587
    .word 0x2038487, 0x2038C75, 0x2028C77, 0xFFFF0000
dword_81423E8:    .word 0x3008979, 0x201897A, 0x100897B, 0x2018188, 0x2018088
    .word 0x2037F88, 0x1037E88, 0x1037F8A, 0x2037585, 0x3037584
    .word 0x2027583, 0x1027683, 0x3027D7C, 0x3027D7B, 0xFFFF0000
dword_8142424:    .word 0x1028576, 0x2018577, 0x1018475, 0x2018476, 0x3038477
    .word 0x1018478, 0x1018376, 0x1018377, 0x303798B, 0x303788B
    .word 0x202778B, 0x100768B, 0x300788D, 0x300788C, 0x3007284
    .word 0x2017282, 0xFFFF0000
dword_8142468:    .word 0x3028682, 0x3028882, 0x3028783, 0x2008784, 0x1028187
    .word 0x2018188, 0x2018189, 0x1028087, 0x2038089, 0x3027F87
    .word 0x1017F88, 0x3037F89, 0x201847D, 0x303837D, 0x303827D
    .word 0x301817D, 0x3027B7D, 0x1018277, 0x1008375, 0x3028275
    .word 0xFFFF0000
dword_81424BC:    .word 0x101818B, 0x101818A, 0x3008189, 0x1018384, 0x2018383
    .word 0x3038382, 0x3038283, 0x2038183, 0x3007E85, 0x300857E
    .word 0x203857D, 0x200847E, 0x100817E, 0x201817D, 0x101807D
    .word 0x1027D7D, 0x3017C7D, 0x3037B7E, 0x1017B7D, 0x2017B7C
    .word 0xFFFF0000, 0x2016B5F0, 0x22182150, 0xFE31F6EC, 0xF957F000
    .word 0xF6EC1C00, 0xD069FE21, 0xF930F000, 0x20072601, 0xF6EC2140
    .word 0xD002FE17, 0xF0002600, 0x2000F8FB, 0xFE11F7FF, 0xF8C3F000
    .word 0x804F2D, 0x4DE0583F, 0x88382400, 0xD01D4200, 0xD1044236
    .word 0x78F880A8, 0x78B870A8, 0x1C2070E8, 0xF91CF000, 0xF6EC1C00
    .word 0xD10BFDFB, 0x200FB4F0, 0xF932F6C2, 0xF7FFBCF0, 0x4820FDFB
    .word 0x1C001900, 0xFDD2F6EC, 0x35083401, 0xE7DE3704, 0xFA34F7FE
    .word 0xF6F42021, 0x2000FC74, 0xF6EC2128, 0xD105FDDF, 0xF891F000
    .word 0xDA012806, 0xFF1BF6F2, 0xF88BF000, 0x5C094914, 0x6BC04650
    .word 0x20077541, 0xF6EC2144, 0xD003FDCD, 0x2100480E, 0xFC5EF6F4
    .word 0x21402007, 0xFDA8F6EC, 0x21422007, 0xFDA4F6EC, 0x21432007
    .word 0xFDA0F6EC, 0x21462007, 0xFD9CF6EC, 0x21472007, 0xFD98F6EC
    .word 0xBDF0, 0x814230C, 0x1650, 0x8089448, 0x8142610
    .word 0x3C2D2D2D, 0x96963C3C, 0xF6F2B5F0, 0xD025FB0C, 0xF8D5F000
    .word 0xF6EC1C00, 0xD01FFD9F, 0x21422007, 0xFD98F6EC, 0x4653D109
    .word 0x7C586BDB, 0xD01D4200, 0x21422007, 0xFD64F6EC, 0x2007E018
    .word 0xF6EC2143, 0xD104FD89, 0x21432007, 0xFD5AF6EC, 0xF6F3E00E
    .word 0xD103F8A6, 0x21004814, 0xFC12F6F4, 0x21422007, 0xFD5CF6EC
    .word 0x21432007, 0xFD58F6EC, 0x21462007, 0xFD70F6EC, 0x480DD004
    .word 0xF6F42100, 0xD0FFFC01, 0x21472007, 0xFD66F6EC, 0x4809D004
    .word 0xF6F42100, 0xD0FFFBF7, 0x21462007, 0xFD40F6EC, 0x21472007
    .word 0xFD3CF6EC, 0xBDF0, 0x8089554, 0x80893CC, 0x8089128
    .word 0x21084E82, 0x18364348
// end of function sub_81422BE

    mov pc, lr
.thumb
sub_81426CE:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x81426f4-0x81426d8-4] // =dword_81426F8
loc_81426DA:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_81426EE
    cmp r0, r7
    beq loc_81426E8
    add r6, #2
    b loc_81426DA
loc_81426E8:
    lsr r0, r6, #1
    tst r0, r0
    pop {r4-r7,pc}
loc_81426EE:
    mov r0, #0xff
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81426F4:    .word dword_81426F8
dword_81426F8:    .word 0x1900090, 0x910290, 0x2910191, 0x1930093, 0xB5F00000
    .word 0xFFDFF7FF, 0x404F17, 0xF0005A3F, 0x1C04F839, 0x3C012600
    .word 0x1938DB06, 0xF6EC1C00, 0xD0F8FD1F, 0xE7F63601, 0xBDF01C30
    .word 0xF7FFB5F0, 0x4F0DFFCA, 0x5A3F0040, 0xF824F000, 0x3C011C04
    .word 0x1938DB04, 0xF6EC1C00, 0xE7F8FCEF, 0x490C485E, 0xF8C2F6BE
    .word 0xF849F000, 0xF6EC1C00, 0xD001FD01, 0xFD87F7FF, 0xBDF0
    .word 0x8142774, 0x7640750, 0x78C0778, 0x7B407A0, 0x7DC07C8
    .word 0x0
    .word 0xA0
// end of function sub_81426CE

    push {r4-r7,lr}
    bl sub_81426CE
    ldr r7, [pc, #0x8142798-0x8142792-2] // =unk_814279C
    ldrb r0, [r7,r0]
    pop {r4-r7,pc}
off_8142798:    .word unk_814279C
unk_814279C:    .byte 7
    .byte 0xB
    .byte 0xC
    .byte 0xD
    .byte 0xE
    .byte 0x10
    .byte 0x14
    .byte 0x14
.thumb
sub_81427A4:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_81426CE
    ldr r1, [pc, #0x81427b8-0x81427ac-4] // =dword_81427BC
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    add r0, r0, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81427B8:    .word dword_81427BC
dword_81427BC:    .word 0x7640750, 0x78C0778, 0x7B407A0, 0x7DC07C8
    .byte 0x0, 0x0
// end of function sub_81427A4

.thumb
sub_81427CE:
    push {r4-r7,lr}
    bl sub_81426CE
    ldr r1, [pc, #0x81427dc-0x81427d4-4] // =dword_81427E0
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    pop {r4-r7,pc}
off_81427DC:    .word dword_81427E0
dword_81427E0:    .word 0x7F107F0, 0x7F307F2, 0x7F507F4, 0x7F707F6, 0xB5F00000
    .word 0xFF6BF7FF, 0x404901, 0xBDF05A08, 0x8142804, 0x6870686
    .word 0x6890688, 0x68B068A, 0x68D068C
    .byte 0x0, 0x0
// end of function sub_81427CE

.thumb
sub_8142816:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81428d0-0x8142818-4] // =unk_2006670
    push {r0,r1}
    bl sub_814283C
    pop {r3,r4}
    asr r3, r3, #0x10
    asr r4, r4, #0x10
    add r0, r0, r3
    add r1, r1, r4
    asr r0, r0, #5
    asr r1, r1, #5
    add r0, #0x80
    add r1, #0x80
    mov r5, #0x80
    lsl r5, r5, #1
    mul r1, r5
    add r0, r0, r1
    pop {r4-r7,pc}
// end of function sub_8142816

.thumb
sub_814283C:
    push {r4-r7,lr}
    bl sub_81426CE
    ldr r3, [pc, #0x8142854-0x8142842-2] // =dword_8142858
    lsl r0, r0, #1
    add r3, r3, r0
    mov r0, #0
    ldrsb r0, [r3,r0]
    mov r1, #1
    ldrsb r1, [r3,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8142854:    .word dword_8142858
dword_8142858:    .word 0xF8080000, 0x80808F8, 0x100808, 0xFC04040C
// end of function sub_814283C

.thumb
sub_8142868:
    push {r4-r7,lr}
    mov r1, #0x80
    lsl r1, r1, #1
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    sub r0, #0x80
    sub r1, #0x80
    lsl r0, r0, #5
    lsl r1, r1, #5
    push {r0,r1}
    bl sub_814283C
    pop {r3,r4}
    sub r0, r3, r0
    sub r1, r4, r1
    add r0, #0x10
    add r1, #0x10
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    mov r2, #0
    pop {r4-r7,pc}
// end of function sub_8142868

.thumb
sub_8142896:
    push {r4-r7,lr}
    add r4, r1, #0
    bl sub_8142868
    push {r0,r1}
    add r0, r4, #0
    bl sub_8142868
    pop {r2,r3}
    sub r0, r0, r2
    sub r1, r3, r1
    bl calcAngle_800117C
    add r0, #0x10
    lsr r0, r0, #4
    mov r1, #0xf
    and r0, r1
    lsr r0, r0, #1
    sub r0, #1
    mov r1, #7
    and r0, r1
    pop {r4-r7,pc}
// end of function sub_8142896

.thumb
sub_81428C2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81428d0-0x81428c4-4] // =unk_2006670
    mov r1, #8
    mul r0, r1
    add r0, r0, r5
    pop {r4-r7,pc}
    .byte 0, 0
off_81428D0:    .word unk_2006670
// end of function sub_81428C2

.thumb
sub_81428D4:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    bl sub_8142990
    add r4, r0, #0
    bl sub_809E2B8
    mov r1, #1
    tst r0, r1
    beq loc_81428F6
    add r1, r0, #0
    add r0, r4, #0
    mov r2, #1
    bl sub_8142952
    add sp, sp, #0x10
    pop {r4-r7,pc}
loc_81428F6:
    sub r1, r0, #1
    add r7, r0, #1
    mov r0, #7
    and r7, r0
    and r1, r0
    add r0, r4, #0
    mov r2, #1
    bl sub_8142952
    add r6, r0, #0
    add r0, r4, #0
    add r1, r7, #0
    mov r2, #1
    bl sub_8142952
    add r7, r0, #0
    bl sub_809E1AE
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r6, #0
    bl sub_8142868
    ldr r2, [sp]
    ldr r3, [sp,#4]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    str r0, [sp,#8]
    add r0, r7, #0
    bl sub_8142868
    ldr r2, [sp]
    ldr r3, [sp,#4]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    ldr r1, [sp,#8]
    cmp r0, r1
    ble loc_814294C
    add r7, r6, #0
loc_814294C:
    add r0, r7, #0
    add sp, sp, #0x10
    pop {r4-r7,pc}
// end of function sub_81428D4

.thumb
sub_8142952:
    push {r4-r7,lr}
    add r6, r2, #0
    ldr r7, [pc, #0x814297c-0x8142956-2] // =dword_8142980
    lsl r1, r1, #1
    add r7, r7, r1
    add r4, r0, #0
    mov r0, #0xff
    and r0, r4
    lsr r1, r4, #8
    mov r2, #0
    ldrsb r2, [r7,r2]
    mov r3, #1
    ldrsb r3, [r7,r3]
    mul r2, r6
    mul r3, r6
    add r0, r0, r2
    add r1, r1, r3
    lsl r1, r1, #8
    orr r0, r1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_814297C:    .word dword_8142980
dword_8142980:    .word 0x10000, 0x1000000, 0xFF0000, 0xFF000000
// end of function sub_8142952

.thumb
sub_8142990:
    push {r4-r7,lr}
    bl sub_809E1AE
    bl sub_8142816
    pop {r4-r7,pc}
// end of function sub_8142990

.thumb
sub_814299C:
    push {r4-r7,lr}
    mov r7, #0
    lsr r2, r0, #8
    mov r3, #0xff
    and r3, r0
    lsr r4, r1, #8
    mov r5, #0xff
    and r5, r1
    sub r2, r2, r4
    sub r3, r3, r5
    cmp r2, #0
    bge loc_81429B6
    neg r2, r2
loc_81429B6:
    cmp r3, #0
    bge loc_81429BC
    neg r3, r3
loc_81429BC:
    add r2, r2, r3
    cmp r2, #1
    bgt loc_81429C4
    mov r7, #1
loc_81429C4:
    add r0, r7, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_814299C

.thumb
sub_81429CA:
    push {r4-r7,lr}
    bl sub_81421D8
    add r6, r0, #0
// numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord
    bl sub_8142990
    add r4, r0, #0
    bl sub_81421D0
    ldr r7, [pc, #0x8142a18-0x81429e2-2] // =off_8142A1C
    lsl r0, r0, #2
    ldr r7, [r7,r0]
    bl sub_809E2B8
    lsr r0, r0, #1
    lsl r0, r0, #1
    add r7, r7, r0
loc_81429F2:
    mov r2, #0
    ldrsb r2, [r7,r2]
    mov r3, #1
    ldrsb r3, [r7,r3]
    cmp r2, #0x7f
    beq locret_8142A14
    mov r0, #0xff
    and r0, r4
    lsr r1, r4, #8
    add r0, r0, r2
    add r1, r1, r3
    lsl r1, r1, #8
    orr r0, r1
    str r0, [r6]
    add r6, #4
    add r7, #8
    b loc_81429F2
locret_8142A14:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8142A18:    .word off_8142A1C
off_8142A1C:    .word dword_8142A2C
    .word dword_8142A3C
    .word dword_8142A54
    .word dword_8142A74
dword_8142A2C:    .word 0x1000001, 0xFF0000FF, 0x7F7F7F7F, 0x7F7F7F7F
dword_8142A3C:    .word 0x1000001, 0xFF0000FF, 0x2000002, 0xFE0000FE, 0x7F7F7F7F
    .word 0x7F7F7F7F
dword_8142A54:    .word 0x1000001, 0xFF0000FF, 0x1FFFF01, 0xFF0101FF, 0x1010101
    .word 0xFFFFFFFF, 0x7F7F7F7F, 0x7F7F7F7F
dword_8142A74:    .word 0x3000003, 0xFD0000FD, 0x7F7F7F7F, 0x7F7F7F7F
// end of function sub_81429CA

.thumb
sub_8142A84:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r5, [pc, #0x8142aac-0x8142a88-4] // =byte_2011EE0
    mov r4, #0
    mov r6, #0
loc_8142A8E:
    bl sub_8142B28
    beq loc_8142A9C
    bl sub_81421E8
    beq loc_8142A9C
    add r6, #1
loc_8142A9C:
    add r5, #0x78 
    add r4, #1
    cmp r4, #0x38 
    blt loc_8142A8E
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8142AAC:    .word byte_2011EE0
// end of function sub_8142A84

    push {r4-r7,lr}
    ldr r5, [pc, #0x8142c8c-0x8142ab2-2] // =unk_2006670
    bl sub_81421E0
    add r7, r0, #0
    mov r4, #0
    mov r6, #0
loc_8142ABE:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142ACC
    cmp r0, r7
    bne loc_8142ACC
    mov r6, #1
    b loc_8142AD4
loc_8142ACC:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142ABE
loc_8142AD4:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
.thumb
sub_8142ADA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142c8c-0x8142adc-4] // =unk_2006670
    mov r4, #0
    mov r6, #0
loc_8142AE2:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142AF6
    bl sub_8142990
    ldrh r1, [r5,#4]
    bl sub_814299C
    beq loc_8142AF6
    add r6, #1
loc_8142AF6:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142AE2
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8142ADA

.thumb
sub_8142B04:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r5, [pc, #0x8142b54-0x8142b08-4] // =byte_2011EE0
    mov r4, #0
    mov r6, #0
loc_8142B0E:
    bl sub_8142B28
    beq loc_8142B1A
    cmp r0, r7
    bne loc_8142B1A
    add r6, #1
loc_8142B1A:
    add r5, #0x78 
    add r4, #1
    cmp r4, #0x38 
    blt loc_8142B0E
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8142B04

.thumb
sub_8142B28:
    push {r4-r7,lr}
    mov r4, #0
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r0
    beq loc_8142B4C
    ldrb r0, [r5,#1]
    cmp r0, #0xf
    bne loc_8142B4C
    bl sub_809E1AE
    ldr r0, [r5,#0x14]
    cmp r0, r2
    bne loc_8142B4C
    ldrb r0, [r5,#4]
    bl sub_81428C2
    ldrh r4, [r0,#4]
loc_8142B4C:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8142B54:    .word byte_2011EE0
// end of function sub_8142B28

.thumb
sub_8142B58:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142c8c-0x8142b5a-2] // =unk_2006670
    mov r4, #0
    mov r6, #0xff
loc_8142B60:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142B7E
    bl sub_81421E0
    ldrh r1, [r5,#4]
    cmp r0, r1
    bne loc_8142B7E
    bl sub_8142990
    ldrh r1, [r5,#4]
    bl sub_8142896
    add r6, r0, #0
    b loc_8142BB2
loc_8142B7E:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142B60
    ldr r5, [pc, #0x8142c8c-0x8142b86-2] // =unk_2006670
    mov r4, #0
loc_8142B8A:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142BAA
    bl sub_8142990
    ldrh r1, [r5,#4]
    bl sub_814299C
    beq loc_8142BAA
    bl sub_8142990
    ldrh r1, [r5,#4]
    bl sub_8142896
    add r6, r0, #0
    b loc_8142BB2
loc_8142BAA:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142B8A
loc_8142BB2:
    add r0, r6, #0
    pop {r4-r7,pc}
// end of function sub_8142B58

.thumb
sub_8142BB6:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142c8c-0x8142bb8-4] // =unk_2006670
    mov r4, #0
loc_8142BBC:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142BEA
    bl sub_81421E8
    beq loc_8142BEA
    mov r0, #4
    strb r0, [r5,#6]
    push {r0-r7}
    ldrh r0, [r5,#4]
    bl sub_8142868
    add r3, r2, #0
    add r2, r1, #0
    add r1, r0, #0
    mov r0, #0x13
    mov r4, #0
    bl sub_8004822
    pop {r0-r7}
    mov r0, #0x6d 
    bl sound_play
loc_8142BEA:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142BBC
    pop {r4-r7,pc}
// end of function sub_8142BB6

.thumb
sub_8142BF4:
    push {r4-r7,lr}
    mov r7, #0x14
    b loc_8142BFE
// end of function sub_8142BF4

.thumb
sub_8142BFA:
    push {r4-r7,lr}
    mov r7, #0xc
loc_8142BFE:
    ldr r5, [pc, #0x8142c8c-0x8142bfe-2] // =unk_2006670
    mov r4, #0
loc_8142C02:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142C16
    bl sub_8142990
    ldrh r1, [r5,#4]
    bl sub_814299C
    beq loc_8142C16
    strb r7, [r5,#6]
loc_8142C16:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142C02
    pop {r4-r7,pc}
// end of function sub_8142BFA

.thumb
sub_8142C20:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r5, [pc, #0x8142c8c-0x8142c24-4] // =unk_2006670
    mov r4, #0
    mov r6, #0
loc_8142C2A:
    ldrh r0, [r5,#4]
    tst r0, r0
    beq loc_8142C38
    ldrb r0, [r5,#6]
    cmp r0, r7
    bne loc_8142C38
    add r6, #1
loc_8142C38:
    add r5, #8
    add r4, #1
    cmp r4, #0x14
    blt loc_8142C2A
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8142C20

.thumb
sub_8142C46:
    push {r4-r7,lr}
    add r4, r0, #0
    bl getPETNaviSelect
    bl sub_80010D4
    sub r4, r0, r4
    bge loc_8142C58
    mov r4, #0
loc_8142C58:
    bl getPETNaviSelect
    add r1, r4, #0
    bl sub_80010EC
    bl sub_809E1AE
    add r3, r2, #0
    add r2, r1, #0
    add r1, r0, #0
    mov r0, #0x13
    mov r4, #4
    bl sub_8004822
    mov r0, #1
    mov r1, #0x14
    bl sub_80302A8
    mov r0, #0x6b 
    bl sound_play
    mov r0, #0xd
    add r0, #0xff
    bl sound_play
    pop {r4-r7,pc}
off_8142C8C:    .word unk_2006670
// end of function sub_8142C46

.thumb
sub_8142C90:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_8142C90

.thumb
sub_8142C94:
    push {lr}
    ldr r0, [pc, #0x8142ca4-0x8142c96-2] // =dword_8619730
    ldr r1, [pc, #0x8142ca8-0x8142c98-4] // =0x6006C00
    ldr r2, [pc, #0x8142cac-0x8142c9a-2] // =0x420
    bl loc_8000AC8
// end of function sub_8142C94

    pop {pc}
    .balign 4, 0x00
off_8142CA4:    .word dword_8619730
dword_8142CA8:    .word 0x6006C00
off_8142CAC:    .word 0x420
.thumb
sub_8142CB0:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142d54-0x8142cb2-2] // =byte_200BE70
    bl sub_8142D58
    bl sub_8142DA0
    ldr r5, [r5,#0xc] // (dword_200BE7C - 0x200be70)
    ldr r1, [r5,#8]
    add r1, r1, r5
    add r0, r0, r1
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_8142CB0

.thumb
sub_8142CC8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142d54-0x8142cca-2] // =byte_200BE70
    ldrb r4, [r5]
    add r5, r0, #0
    lsl r1, r1, #2
    ldr r6, [pc, #0x8142d40-0x8142cd2-2] // =off_8142D44
    ldr r6, [r6,r1]
    ldrh r0, [r6,#6]
    strh r0, [r5,#6]
    ldrh r0, [r6,#8]
    strh r0, [r5,#8]
    mov r7, #1
    mov r1, #8
    mov r2, #1
loc_8142CE4:
    add r3, r1, #0
    mul r3, r2
    add r3, r3, r7
    lsl r3, r3, #1
    ldrh r0, [r6,r3]
    add r3, r4, #0
    mul r3, r2
    add r3, r3, r7
    lsl r3, r3, #1
    strh r0, [r5,r3]
    add r7, #1
    cmp r7, #7
    blt loc_8142CE4
    mov r7, #1
    mov r1, #8
    mov r2, #2
loc_8142D04:
    add r3, r1, #0
    mul r3, r2
    add r3, r3, r7
    lsl r3, r3, #1
    ldrh r0, [r6,r3]
    add r3, r4, #0
    mul r3, r2
    add r3, r3, r7
    lsl r3, r3, #1
    strh r0, [r5,r3]
    add r7, #1
    cmp r7, #7
    blt loc_8142D04
    mov r7, #3
    mov r1, #8
    mov r2, #3
loc_8142D24:
    add r3, r1, #0
    mul r3, r2
    add r3, r3, r7
    lsl r3, r3, #1
    ldrh r0, [r6,r3]
    add r3, r4, #0
    mul r3, r2
    add r3, r3, r7
    lsl r3, r3, #1
    strh r0, [r5,r3]
    add r7, #1
    cmp r7, #5
    blt loc_8142D24
    pop {r4-r7,pc}
off_8142D40:    .word off_8142D44
off_8142D44:    .word dword_8619B50
    .word dword_8619B90
// end of function sub_8142CC8

.thumb
sub_8142D4C:
    push {r4-r7,lr}
    bl sub_80307D8
    pop {r4-r7,pc}
off_8142D54:    .word byte_200BE70
// end of function sub_8142D4C

.thumb
sub_8142D58:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8142e04-0x8142d5a-2] // =byte_200BE70
    ldr r6, [pc, #0x8142e08-0x8142d5c-4] // =unk_2000B40
    ldrb r4, [r5]
    ldrb r0, [r6,#0x8] // (byte_2000B48 - 0x2000b40)
    mov r1, #0x80
    cmp r0, r1
    blt loc_8142D84
    sub r0, r0, r1
    add r7, r0, #0
    lsl r0, r0, #1
    mul r0, r4
    add r1, r7, #0
    mov r2, #4
    mul r1, r2
    sub r0, r0, r1
    lsl r0, r0, #1
    add r4, r0, #0
    bl sub_8142DE6
    sub r0, r0, r4
    b locret_8142D9E
loc_8142D84:
    sub r0, r1, r0
    add r7, r0, #0
    lsl r0, r0, #1
    mul r0, r4
    add r1, r7, #0
    mov r2, #4
    mul r1, r2
    sub r0, r0, r1
    lsl r0, r0, #1
    add r4, r0, #0
    bl sub_8142DE6
    add r0, r0, r4
locret_8142D9E:
    pop {r4-r7,pc}
// end of function sub_8142D58

.thumb
sub_8142DA0:
    push {r4-r7,lr}
    push {r0}
    ldr r5, [pc, #0x8142e04-0x8142da4-4] // =byte_200BE70
    ldr r6, [pc, #0x8142e08-0x8142da6-2] // =unk_2000B40
    ldrb r4, [r5]
    ldrb r0, [r6,#0x9] // (byte_2000B49 - 0x2000b40)
    mov r1, #0x80
    cmp r0, r1
    blt loc_8142DCC
    sub r0, r0, r1
    add r7, r0, #0
    lsl r0, r0, #1
    mul r0, r4
    add r1, r7, #0
    mov r2, #4
    mul r1, r2
    add r0, r0, r1
    lsl r0, r0, #1
    add r4, r0, #0
    pop {r0}
    add r0, r0, r4
    b locret_8142DE4
loc_8142DCC:
    sub r0, r1, r0
    add r7, r0, #0
    lsl r0, r0, #1
    mul r0, r4
    add r1, r7, #0
    mov r2, #4
    mul r1, r2
    add r0, r0, r1
    lsl r0, r0, #1
    add r4, r0, #0
    pop {r0}
    sub r0, r0, r4
locret_8142DE4:
    pop {r4-r7,pc}
// end of function sub_8142DA0

.thumb
sub_8142DE6:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r2, [r1,#4]
    cmp r2, #0x85
    bne loc_8142DF6
    mov r1, #3
    b loc_8142DF8
loc_8142DF6:
    ldrb r1, [r1,#5]
loc_8142DF8:
    lsl r1, r1, #1
    ldr r2, [pc, #0x8142e00-0x8142dfa-2] // =dword_8142E0C
    ldrh r0, [r2,r1]
    pop {pc}
off_8142E00:    .word dword_8142E0C
off_8142E04:    .word byte_200BE70
off_8142E08:    .word unk_2000B40
dword_8142E0C:    .word 0x45D03C50, 0x49C04A90, 0x8142E24, 0x8142E7C, 0x8142E48
    .word 0x8142EA0, 0xFF0EFF00, 0xFFCE, 0xD2FF01, 0x172
    .word 0x30FF02, 0x20FEB0, 0xFFCEFF03, 0x16E, 0x4FF
    .word 0x50FF00, 0x20FF92, 0xFFD2FF01, 0xFFD0, 0x172FF02
    .word 0xFFCE, 0xFF54FF03, 0x16C, 0xFF10FF04, 0x4E
    .word 0x30FF05, 0x20FE30, 0x6FF, 0xFF68FF00, 0x200008
    .word 0xFF48FF01, 0xFE7A, 0xFF0CFF02, 0x214, 0x1A4FF03
    .word 0x20FFB6, 0x4FF, 0xFF0CFF00, 0xFF38, 0x188FF01
    .word 0x200032, 0xA6FF02, 0xB8, 0xFFA4FF03, 0x1BA
    .word 0x28FF04, 0x1FC, 0x5FF, 0xF000B5F0, 0x1C00F905
    .word 0xF948F6EC, 0x4651D16F, 0x790A6BC9, 0x79487B0B, 0x807B49
    .word 0xB40F0089, 0x21602009, 0xF938F6EC, 0xD103BC0F, 0xD101429A
    .word 0xD0034288, 0xF000B4FF, 0xBCFFF960, 0xF8BEF000, 0x4F2C0080
    .word 0x2400583F, 0x28FF7838, 0x1C20D014, 0xF8CBF000, 0xF6EC1C00
    .word 0xD10AF921, 0x2016B4F0, 0x4098879, 0x41288BA, 0x41B88FB
    .word 0xFC52F6C1, 0x3401BCF0, 0xE7E73708, 0xF0007878, 0xF000FA3C
    .word 0x80F89D, 0x583F4F1C, 0x78382400, 0xD01728FF, 0xF0001C20
    .word 0x1C08F8AA, 0xF900F6EC, 0xB4F0D10D, 0x2002001, 0x20164304
    .word 0x4098879, 0x41288BA, 0x41B88FB, 0xFC2EF6C1, 0x3401BCF0
    .word 0xE7E43708, 0x24004D3D, 0x42007828, 0xB4F0D007, 0x21002018
    .word 0x23002200, 0xFC1EF6C1, 0x3514BCF0, 0x2C083401, 0xF000DBF0
    .word 0x2009F8A1, 0xF6EC2160, 0x2000F8B9, 0xBDF0, 0x8142E14
    .word 0x8142E1C, 0xF6F1B5F0, 0xD046FE34, 0xF884F000, 0xF6EC1C00
    .word 0xD140F8C7, 0xF99AF000, 0xF932F000, 0x21622009, 0xF8BCF6EC
    .word 0x4653D110, 0x7C586BDB, 0xD0274200, 0xF9EFF000, 0x2009D004
    .word 0xF6EC2162, 0xE01FF885, 0xF6BD2069, 0xE01BFADF, 0x21632009
    .word 0xF8A6F6EC, 0x2009D104, 0xF6EC2163, 0xE011F877, 0xFBC3F6F2
    .word 0x4815D106, 0xF6F32100, 0x2001FF2F, 0xF9DFF000, 0x21622009
    .word 0xF876F6EC, 0x21632009, 0xF872F6EC, 0xF8A6F000, 0xF000D10F
    .word 0x4908F81B
    .word 0x58080080
// end of function sub_8142DE6

    mov r1, #0
    bl sub_8036E90
    mov r0, #9
    mov r1, #0x62 
    bl sub_802F12C
    mov r0, #9
    mov r1, #0x63 
    bl sub_802F12C
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word off_8143078
off_8143078:    .word dword_808BF48+0xBC
    .word dword_808BF48+0x1AC
    .byte 0xF0
    .byte 0xC2
    .byte 8
    .byte 8
    .byte 0x20
    .byte 0xD
    .byte 0
    .byte 2
.thumb
sub_8143088:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x81430ac-0x8143092-2] // =dword_81430B0
loc_8143094:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_81430A8
    cmp r0, r7
    beq loc_81430A2
    add r6, #2
    b loc_8143094
loc_81430A2:
    lsr r0, r6, #1
    tst r0, r0
    pop {r4-r7,pc}
loc_81430A8:
    mov r0, #0xff
    pop {r4-r7,pc}
off_81430AC:    .word dword_81430B0
dword_81430B0:    .word 0x1920092
    .byte 0x0, 0x0
// end of function sub_8143088

.thumb
sub_81430B6:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_8143088
    ldr r1, [pc, #0x81430d0-0x81430be-2] // =unk_81430D4
    lsl r0, r0, #2
    add r1, r1, r0
    ldrh r0, [r1]
    ldrh r1, [r1,#2]
    add r0, r0, r4
    add r1, r1, r4
    pop {r4-r7,pc}
    .byte 0, 0
off_81430D0:    .word unk_81430D4
unk_81430D4:    .byte 0x70 
    .byte 9
    .byte 0x78 
    .byte 9
    .byte 0x80
    .byte 9
    .byte 0x88
    .byte 9
// end of function sub_81430B6

.thumb
sub_81430DC:
    push {r4-r7,lr}
    bl sub_8143088
    ldr r1, [pc, #0x81430ec-0x81430e2-2] // =unk_81430F0
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81430EC:    .word unk_81430F0
unk_81430F0:    .byte 0x6E 
    .byte 9
    .byte 0x6F 
    .byte 9
    .byte 0xF0
    .byte 0xB5
    .byte 0xFD
    .byte 0xF7
    .byte 0x83
    .byte 0xFC
    .byte 0xFF
    .byte 0xF7
    .byte 0xC5
    .byte 0xFF
    .byte 0x19
    .byte 0x4C 
    .byte 0x80
    .byte 0
    .byte 0x24 
    .byte 0x58 
    .byte 0x20
    .byte 0x78 
    .byte 0
    .byte 0x42 
    .byte 0xE
    .byte 0xD0
    .byte 0x21 
    .byte 0x49 
    .byte 4
    .byte 0x22 
    .byte 0x50 
    .byte 0x43 
    .byte 9
    .byte 0x18
    .byte 0x60 
    .byte 0x68 
    .word 0x481F6008
    .word 0x39017821, 0x1C001840, 0xFFF8F6EB, 0xE7ED3408, 0xBDF02000
    .word 0xF7FDB5F0, 0xF7FFFC6D, 0x4C0BFFA9, 0x58240080, 0x42007820
    .word 0x4913D00E, 0x43502204, 0x20001809, 0x48116008, 0x39017821
    .word 0x1C001840, 0xFFEAF6EB, 0xE7ED3408, 0xBDF02000
    .word off_8143168
off_8143168:    .word dword_8143170
    .word dword_8143184
dword_8143170:    .word 0xFFFFFF02, 0x8050502, 0xFFFFFF0C, 0x8FF0502, 0x0
dword_8143184:    .word 0xFFFFFF01, 0x8010502, 0x0
    .word unk_2011EA0
    .word 0x16F1
// end of function sub_81430DC

.thumb
sub_8143198:
    push {r4-r7,lr}
    bl sub_81433CA
    add r6, r0, #0
    mov r0, #0
    bl sub_81430B6
    add r7, r0, #0
    mov r4, #0
loc_81431AA:
    add r0, r7, #0
    bl sub_802F168
    beq loc_81431B4
    add r4, #1
loc_81431B4:
    add r7, #1
    sub r6, #1
    bgt loc_81431AA
    bl sub_81433CA
    add r1, r0, #0
    add r0, r4, #0
    cmp r0, r1
    pop {r4-r7,pc}
// end of function sub_8143198

    push {r4-r7,lr}
    ldr r5, [pc, #0x8143398-0x81431c8-4] // =byte_2000D20
    bl sub_814339C
    add r0, r5, #0
    ldr r1, [pc, #0x81431f4-0x81431d0-4] // =0xA0
    bl CpuSet_ZeroFillWord
    mov r0, #0
    bl sub_81430B6
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    mov r2, #8
    bl loc_802F1AC
    mov r0, #0
    bl sub_81430B6
    add r0, r1, #0
    mov r2, #8
    bl loc_802F1AC
    pop {r4-r7,pc}
off_81431F4:    .word 0xA0
.thumb
sub_81431F8:
    push {r4-r7,lr}
    ldr r5, [pc, #0x8143398-0x81431fa-2] // =byte_2000D20
    mov r1, #0x14
    mul r0, r1
    add r0, r0, r5
    pop {r4-r7,pc}
// end of function sub_81431F8

.thumb
sub_8143204:
    push {r4-r7,lr}
    bl sub_81431F8
    add r5, r0, #0
    bl sub_800151C
    mov r1, #0x3f 
    and r1, r0
    ldr r0, [pc, #0x814321c-0x8143214-4] // =0x1E
    add r0, r0, r1
    strh r0, [r5,#6]
    pop {r4-r7,pc}
dword_814321C:    .word 0x1E
// end of function sub_8143204

.thumb
sub_8143220:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_81431F8
    add r5, r0, #0
    bl sub_800151C
    mov r1, #0x3f 
    and r1, r0
    ldr r0, [pc, #0x8143244-0x8143232-2] // =0x1E
    add r0, r0, r1
    strh r0, [r5,#2]
    add r0, r4, #0
    mov r1, #1
    bl sub_81432FA
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8143244:    .word 0x1E
// end of function sub_8143220

    push {r4-r7,lr}
    mov r6, #0
    ldr r7, [pc, #0x8143398-0x814324c-4] // =byte_2000D20
loc_814324E:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_814328A
    add r4, r6, #1
    add r5, r7, #0
    add r5, #0x14
loc_814325A:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8143282
    ldr r0, [r5,#8]
    ldr r1, [r5,#0xc]
    ldr r2, [r7,#8]
    ldr r3, [r7,#0xc]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    mov r1, #6
    lsl r1, r1, #0x10
    cmp r0, r1
    bge loc_8143282
    add r0, r6, #0
    mov r1, #2
    bl sub_81432FA
    b loc_814328A
loc_8143282:
    add r5, #0x14
    add r4, #1
    cmp r4, #8
    blt loc_814325A
loc_814328A:
    add r7, #0x14
    add r6, #1
    cmp r6, #8
    blt loc_814324E
    pop {r4-r7,pc}
.thumb
sub_8143294:
    push {r4-r7,lr}
    mov r4, #0
    ldr r5, [pc, #0x8143398-0x8143298-4] // =byte_2000D20
loc_814329A:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_81432CE
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldr r2, [r0,#0x20]
    ldr r3, [r0,#0x1c]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#8]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    ldrb r1, [r5]
    mov r2, #0xfa
    lsl r2, r2, #0x10
    cmp r0, r2
    bge loc_81432C6
    mov r1, #3
    mov r0, #8
    strb r0, [r5,#1]
loc_81432C6:
    add r0, r4, #0
    mov r1, #1
    bl sub_81432FA
loc_81432CE:
    add r5, #0x14
    add r4, #1
    cmp r4, #8
    blt loc_814329A
    pop {r4-r7,pc}
// end of function sub_8143294

    push {r4-r7,lr}
    mov r6, #0
    mov r4, #0
    ldr r5, [pc, #0x8143398-0x81432de-2] // =byte_2000D20
loc_81432E0:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_81432EC
    cmp r0, #3
    bne loc_81432EC
    add r6, #1
loc_81432EC:
    add r5, #0x14
    add r4, #1
    cmp r4, #8
    blt loc_81432E0
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
.thumb
sub_81432FA:
    push {r4-r7,lr}
    add r4, r1, #0
    bl sub_81431F8
    add r5, r0, #0
    ldrb r0, [r5]
    cmp r0, #3
    beq locret_814330C
    strb r4, [r5]
locret_814330C:
    pop {r4-r7,pc}
    .byte 0, 0
    .word 0x1E, 0x4D20B5F0, 0xF8AAF000, 0xF000D137, 0x2400F88C
    .word 0x42007828, 0x2001D12D, 0x20007028, 0xF6BE7068, 0x80A8F8F3
    .word 0xF7FF1C20, 0x1C20FF63, 0xFF6EF7FF, 0xF6BEB4F0, 0x21F0F8E9
    .word 0x404008, 0x4A10490F, 0x5E125E09, 0x1002080, 0x43424341
    .word 0x1520149, 0x6BC04650, 0x69C36980, 0x60A91A59, 0x1A9A6A03
    .word 0x201860EA, 0x22002100, 0xF6C12300, 0xBCF0FA2F, 0x3514E003
    .word 0x2C063401, 0xBDF0DBCA, 0x8006660, 0x80065E0
off_8143398:    .word byte_2000D20
// end of function sub_81432FA

.thumb
sub_814339C:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_8003A64
    ldr r5, [pc, #0x81434e0-0x81433a4-4] // =byte_2001010
    add r0, r5, #0
// memBlock
    add r0, #8
// numWords
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord
    mov r0, #5
    bl sub_81433D2
    bl sub_8143406
    bl sub_814343A
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_814339C

    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x81433c4-4] // =byte_2001010
    strb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
    pop {r4-r7,pc}
.thumb
sub_81433CA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x81433cc-4] // =byte_2001010
    ldrb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_81433CA

.thumb
sub_81433D2:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x81433d4-4] // =byte_2001010
    strb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_81433D2

.thumb
sub_81433DA:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x81433dc-4] // =byte_2001010
    ldrb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_81433DA

.thumb
sub_81433E4:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x81433e6-2] // =byte_2001010
    ldrb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
    add r1, r1, r0
    cmp r1, #5
    ble loc_81433F2
    mov r1, #5
loc_81433F2:
    strb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_81433E4

    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x81433f8-4] // =byte_2001010
    ldrb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
    sub r1, r1, r0
    bge loc_8143402
    mov r1, #0
loc_8143402:
    strb r1, [r5,#0x9] // (byte_2001019 - 0x2001010)
    pop {r4-r7,pc}
.thumb
sub_8143406:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x8143408-4] // =byte_2001010
    bl sub_800151C
    mov r1, #3
    and r0, r1
    strb r0, [r5,#0xa] // (byte_200101A - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_8143406

    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x8143418-4] // =byte_2001010
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x10
    mov r2, #0x20 
    bl initMemblockToByte
    mov r0, sp
    mov r1, #0
    ldrb r2, [r5,#0xa] // (byte_200101A - 0x2001010)
    strb r1, [r0,r2]
    mov r1, #4
    bl sub_8000E3A
    strb r0, [r5,#0xa] // (byte_200101A - 0x2001010)
    add sp, sp, #0x10
    pop {r4-r7,pc}
.thumb
sub_814343A:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x814343c-4] // =byte_2001010
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x10
    mov r2, #0x20 
    bl initMemblockToByte
    mov r0, sp
    mov r1, #3
    bl sub_8000E3A
    ldr r1, [pc, #0x8143460-0x8143452-2] // =dword_8143464
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
    add sp, sp, #0x10
    mov r0, #0
    pop {r4-r7,pc}
off_8143460:    .word dword_8143464
dword_8143464:    .word 0x5, 0x5, 0x5, 0x4D1BB5F0, 0x380168E8, 0x2000DA00, 0x420060E8
// end of function sub_814343A

    pop {r4-r7,pc}
.thumb
sub_8143482:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81434e0-0x8143484-4] // =byte_2001010
    bl sub_81434BA
    bne loc_81434B6
    ldrb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    tst r0, r0
    beq loc_81434AE
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    bl sub_80468BA
    mov r0, #8
    mov r1, #0
    mov r2, #0
    bl sub_80468C6
    mov r0, #9
    mov r1, #1
    mov r2, #0
    bl sub_80468C6
loc_81434AE:
    bl sub_8046818
    bl sub_8046854
loc_81434B6:
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_8143482

.thumb
sub_81434BA:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_811EBE0
    bne loc_81434DC
    bl sub_8143088
    cmp r0, #0xff
    beq loc_81434DC
    bl sub_81430DC
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    bne loc_81434DC
    mov r0, #0
    pop {r4-r7,pc}
loc_81434DC:
    mov r0, #1
    pop {r4-r7,pc}
off_81434E0:    .word byte_2001010
dword_81434E4:    .word 0xFF3800CC, 0x20505, 0xF2008C, 0x20707, 0xBE001C, 0x30505
    .word 0x28FF42, 0x30707, 0xFF24FEEC, 0x30101, 0xFF6C011E, 0x20303
    .word 0x720054, 0x20505, 0x15C0006, 0x30505, 0x5CFDFE, 0x20303
    .word 0xFF6A015E, 0x20303, 0x1720082, 0x20505, 0x1DAFF3A, 0x30101
    .word 0x78FE9E, 0x20707, 0x10FEA8, 0x20101, 0xFEA60052, 0x30707
    .word 0xFE7E00A4, 0x30505, 0xFFCC00FE, 0x20707, 0xF200A6, 0x20505
    .word 0x1400024, 0x30707, 0x192FE82, 0x20505, 0xFF68FE9E, 0x20303
    .word 0xFF0CFF9E, 0x20707, 0xFF0C007E, 0x20303, 0xFF4200B4, 0x820505
    .word 0x70700DE, 0xB40008, 0xFF420505, 0x7070014, 0xFF1AFF00, 0x1140101
    .word 0x303FF80, 0x720036, 0xFFE60505, 0x5050152, 0x76FDF4, 0x1540303
    .word 0x303FF7E, 0x17C006E, 0xFF480505, 0x10101DA, 0x6AFE94, 0xFEB60707
    .word 0x101001A, 0xFEBA005A, 0xB80303, 0x101FE76, 0xFFB800F4, 0x920707
    .word 0x50500FC, 0x1320024, 0xFE960707, 0x101019C, 0xFF7CFE94, 0xFF940303
    .word 0x303FF20, 0xFF200074, 0x303, 0xFF1400CC, 0xA80505, 0x10100F2
    .word 0xF3001C, 0xFF0E0303, 0x5050032, 0xFF52FEEC, 0x1440303, 0x303FF6C
    .word 0x540054, 0x60707, 0x101018E, 0x5CFE22, 0x1840101, 0x303FF6A
    .word 0x1520086, 0xFF020707, 0x50501DA, 0x7AFEBC, 0xFEA60101, 0x707FFF2
    .word 0xFEAA0026, 0xA40505, 0x303FEA8, 0xFFCC0126, 0xA60303, 0x10100CC
    .word 0x1700024, 0xFE820505, 0x7070166, 0xFF66FEC8, 0xFFC40101, 0x303FF0C
    .word 0xFF0C00A4, 0x101
dword_81436B4:    .word 0x12000, 0xC8003C, 0x3CFF9E, 0x2
dword_81436C4:    .word 0x22000, 0xA0002D, 0xA00028, 0x2, 0x22000, 0xA0002D
    .word 0x8EFF06, 0x2
dword_81436E4:    .word 0x28000, 0x8C0028, 0x8E00BC, 0x2, 0x28000, 0x8C0028
    .word 0x114FF3E, 0x2
dword_8143704:    .word 0x28000, 0x8C0028, 0xF2FF50, 0x2, 0x28000, 0x8C0028
    .word 0xFF6A00C0, 0x2
dword_8143724:    .word 0x3200AE, 0x4000040, 0xFFCE0054, 0x10040, 0xFFC0FF96
    .word 0x1010040, 0x1EFF94, 0x2010040, 0x9E0004, 0x3010040
    .word 0xB8FF2E, 0x6010040, 0xF4FEAC, 0x5000040
dword_814375C:    .word 0xAA0126, 0x4000040, 0x3E0054, 0x10040, 0xFFACFF64
    .word 0x5000040, 0xFFD6FFE2, 0x6010040, 0xFFF8FEC8, 0x2010040
    .word 0xBCFED0, 0x3010040, 0xE20038, 0x1010040
dword_8143794:    .word 0x1CCFFA4, 0x4000040, 0x70FFA2, 0x5000040, 0xFF4C00C2
    .word 0x6000040, 0xAA00DC, 0x10040, 0xCEFF42, 0x1010040
    .word 0xFF5AFF26, 0x2010040, 0x0
    .word 0x3010040
dword_81437CC:    .word 0x4C00E6, 0x3000040, 0xD0FFC2, 0x4000040, 0xFFD0FE62
    .word 0x5000040, 0xFF4AFEF4, 0x6000040, 0x10AFF16, 0x10040
    .word 0xFFACFF18, 0x1010040, 0xFF8A00C8, 0x2010040, 0x8143814
    .word 0x81438D0
off_814380C:    .word dword_81438B8
    .word dword_8143960
    .word 0x7B78FF00, 0x7C78FF01, 0x7D78FF02, 0x7E78FF03, 0x8276FF04
    .word 0x8277FF05, 0x8278FF06, 0x8677FF07, 0x8678FF08, 0x837DFF09
    .word 0x847DFF0A, 0x857DFF0B, 0x827EFF0C, 0x837EFF0D, 0x857EFF0E
    .word 0x827FFF0F, 0x837FFF10, 0x847FFF11, 0x857FFF12, 0x8682FF13
    .word 0x8782FF14, 0x8386FF15, 0x8286FF16, 0x7F82FF17, 0x7E83FF18
    .word 0x7E84FF19, 0x7F83FF1A, 0x7F84FF1B, 0x7E85FF1C, 0x7E86FF1D
    .word 0x7A86FF1E, 0x7B86FF1F, 0x7C86FF20, 0x7781FF21, 0x7782FF22
    .word 0x7783FF23, 0x797FFF24, 0x7A7FFF25, 0x767BFF26, 0x767CFF27
    .word 0x28FF
dword_81438B8:    .word 0x79868486, 0x847E7780, 0x82758676, 0x0, 0x0
    .word 0xFFFF, 0x8774FF00, 0x8775FF01, 0x807AFF02, 0x807BFF03
    .word 0x807CFF04, 0x807DFF05, 0x817DFF06, 0x827DFF07, 0x847DFF08
    .word 0x857DFF09, 0x7F7FFF0A, 0x817FFF0B, 0x827FFF0C, 0x7F81FF0D
    .word 0x8081FF0E, 0x8084FF0F, 0x8184FF10, 0x8284FF11, 0x8485FF12
    .word 0x8486FF13, 0x8781FF14, 0x8782FF15, 0x8487FF16, 0x8783FF17
    .word 0x8784FF18, 0x8488FF19, 0x7B7DFF1A, 0x7B83FF1B, 0x7780FF1C
    .word 0x7781FF1D, 0x7782FF1E, 0x7984FF1F, 0x7985FF20, 0x7986FF21
    .word 0x7983FF22, 0x23FF
dword_8143960:    .word 0x80797F7D, 0x807F837D, 0x7F84837F, 0x0, 0x0
    .word 0xFFFF, 0x2016B5F0, 0x22302170, 0xFBFDF6EB, 0xF948F000
    .word 0xF6EB1C00, 0xD15AFBED, 0x6BC94651, 0x7B0B790A, 0x7B497948
    .word 0x890080, 0x200DB40F, 0xF6EB2130, 0xBC0FFBDD, 0x429AD103
    .word 0x4288D101, 0xB4FFD003, 0xF93AF000, 0xF000BCFF, 0x80F8B7
    .word 0x583F4F21, 0x78382400, 0xD01828FF, 0xF0001C20, 0x1C0EF8C4
    .word 0xF6EB1C00, 0xD10DFBC5, 0xF6EB1C30, 0xB4F0FBA5, 0xF0008878
    .word 0x1C13F9E7, 0x1C011C0A, 0xF6C0202B, 0xBCF0FEF3, 0x37043401
    .word 0x7878E7E3, 0xFAA8F000, 0xF93EF000, 0xF929F000, 0x2136200D
    .word 0xFBA6F6EB, 0x480DD009, 0xF6F32100, 0xF000FA37, 0x200DFA89
    .word 0xF6EB2136, 0x200DFB7F, 0xF6EB2130, 0x200DFB7B, 0xF6EB2134
    .word 0x200DFB77, 0xF6EB2135, 0x2000FB73, 0xBDF0, 0x8143804
    .word 0x8093358, 0xF6F1B5F0, 0xD053F8EE, 0xF8DCF000, 0xF6EB1C00
    .word 0xD14DFB81, 0x2134200D, 0xFB7AF6EB, 0x4653D109, 0x7C586BDB
    .word 0xD02C4200, 0x2134200D, 0xFB46F6EB, 0x200DE027, 0xF6EB2135
    .word 0xD104FB6B, 0x2135200D, 0xFB3CF6EB, 0xF6F1E01D, 0xD112FE88
    .word 0xF9A3F000, 0xFA1AF000, 0xF000D00D, 0xF000F9FB, 0xD104F87F
    .word 0x2100481B, 0xF9EAF6F3, 0x481BE003, 0xF6F32100, 0x200DF9E5
    .word 0xF6EB2134, 0x200DFB2F, 0xF6EB2135, 0xF000FB2B, 0x4288F939
    .word 0xF000D108, 0x490DF827, 0x58080080, 0xF6F32100, 0xD109F9D1
    .word 0xFA3FF000, 0xF000D10E, 0x1C01F81B, 0xF6F3480A, 0xD1FFF9C7
    .word 0x2134200D, 0xFB10F6EB, 0x2135200D, 0xFB0CF6EB, 0xBDF0
    .word 0x8143B1C, 0x8092C78, 0x8092A98, 0x8092DE8, 0x809326C
    .word 0x80933B8
// end of function sub_81434BA

.thumb
sub_8143B30:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r7, [r7,#4]
    mov r6, #0
    ldr r4, [pc, #0x8143b54-0x8143b3a-2] // =dword_8143B58
loc_8143B3C:
    ldrh r0, [r4,r6]
    tst r0, r0
    beq loc_8143B50
    cmp r0, r7
    beq loc_8143B4A
    add r6, #2
    b loc_8143B3C
loc_8143B4A:
    lsr r0, r6, #1
    tst r0, r0
    pop {r4-r7,pc}
loc_8143B50:
    mov r0, #0xff
    pop {r4-r7,pc}
off_8143B54:    .word dword_8143B58
dword_8143B58:    .word 0x1900090
    .byte 0x0, 0x0
// end of function sub_8143B30

.thumb
sub_8143B5E:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_8143B30
    lsl r3, r0, #1
    ldr r0, [pc, #0x8143b78-0x8143b68-4] // =dword_8143B7C
    ldrh r0, [r0,r3]
    add r0, r0, r4
    ldr r1, [pc, #0x8143b80-0x8143b6e-2] // =unk_8143B84
    ldrh r1, [r1,r3]
    add r1, r1, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8143B78:    .word dword_8143B7C
dword_8143B7C:    .word 0xD680D38
off_8143B80:    .word unk_8143B84
unk_8143B84:    .byte 0x70 
    .byte 0x16
    .byte 0x70 
    .byte 0x16
// end of function sub_8143B5E

.thumb
sub_8143B88:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_8143B30
    lsl r0, r0, #2
    ldr r3, [pc, #0x8143bec-0x8143b92-2] // =dword_8143BF0
    ldr r3, [r3,r0]
    sub r2, r4, r3
    ldr r7, [pc, #0x8143bac-0x8143b98-4] // =off_814380C
    ldr r7, [r7,r0]
    lsl r1, r2, #1
    ldrh r1, [r7,r1]
    ldr r7, [pc, #0x8143bf0-0x8143ba0-4] // =0xD98
    sub r2, r4, r7
    add r2, #0x14
    add r0, r4, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8143BAC:    .word off_814380C
// end of function sub_8143B88

    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_8143B30
    lsl r0, r0, #2
    ldr r7, [pc, #0x8143bf8-0x8143bba-2] // =off_814380C
    ldr r7, [r7,r0]
    ldr r5, [pc, #0x8143bec-0x8143bbe-2] // =dword_8143BF0
    ldr r5, [r5,r0]
    mov r6, #0
    mvn r6, r6
    lsr r6, r6, #0x10
loc_8143BC8:
    ldrh r0, [r7]
    cmp r0, r6
    beq loc_8143BE8
    tst r0, r0
    beq loc_8143BE2
    cmp r0, r4
    bne loc_8143BE2
    add r0, r5, #0
    bl sub_802F168
    bne loc_8143BE8
    mov r0, #1
    pop {r4-r7,pc}
loc_8143BE2:
    add r5, #1
    add r7, #2
    b loc_8143BC8
loc_8143BE8:
    mov r0, #0
    pop {r4-r7,pc}
off_8143BEC:    .word dword_8143BF0
dword_8143BF0:    .word 0xD98
    .word 0xDA2
off_8143BF8:    .word off_814380C
.thumb
sub_8143BFC:
    push {r4-r7,lr}
    bl sub_8143B30
    ldr r1, [pc, #0x8143c0c-0x8143c02-2] // =dword_8143C10
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8143C0C:    .word dword_8143C10
dword_8143C10:    .word 0x1E78, 0x1D4C
// end of function sub_8143BFC

.thumb
sub_8143C18:
    push {r4-r7,lr}
    bl sub_8143B30
    ldr r1, [pc, #0x8143c28-0x8143c1e-2] // =loc_8143C2C
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8143C28:    .word loc_8143C2C
// end of function sub_8143C18

loc_8143C2C:
    lsr r2, r6, #0x14
    lsr r3, r6, #0x14
    push {r4-r7,lr}
    bl sub_8143F20
    mov r0, #0
    bl sub_8143B5E
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    mov r2, #0x30 
    bl loc_802F1AC
    mov r0, #0xd
    mov r1, #0x98
    mov r2, #0xa
    bl sub_802F1A8
    mov r0, #0xd
    mov r1, #0xa2
    mov r2, #0xa
    bl sub_802F1A8
    bl sub_8143BFC
    bl sub_8143F68
    pop {r4-r7,pc}
    push {r4-r7,lr}
    bl sub_8143B30
    ldr r1, [pc, #0x8143c7c-0x8143c68-4] // =off_8143C80
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_8030A60
    mov r0, #0x17
    mov r1, #0x21 
    bl sub_802F110
    pop {r4-r7,pc}
off_8143C7C:    .word off_8143C80
off_8143C80:    .word dword_8072BCC+0x44
    .word dword_8073610+0x40
    push {r4-r7,lr}
    bl sub_8140A00
    mov r0, #1
    mov r1, #0xbb
    bl sub_802F110
    bl sub_8143B30
    ldr r4, [pc, #0x8143d08-0x8143c9a-2] // =off_8143D0C
    lsl r0, r0, #2
    ldr r4, [r4,r0]
loc_8143CA0:
    ldrb r0, [r4]
    tst r0, r0
    beq loc_8143CC4
    ldr r1, [pc, #0x8143d44-0x8143ca6-2] // =unk_2011EA0
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    ldr r0, [r4,#4]
    str r0, [r1]
    ldr r0, [pc, #0x8143d48-0x8143cb2-2] // =0x16F0
    ldrb r1, [r4]
    sub r1, #1
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    add r4, #8
    b loc_8143CA0
loc_8143CC4:
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    bl sub_8140A0C
    mov r0, #1
    mov r1, #0xbb
    bl sub_802F12C
    bl sub_8143B30
    ldr r4, [pc, #0x8143d08-0x8143cda-2] // =off_8143D0C
    lsl r0, r0, #2
    ldr r4, [r4,r0]
loc_8143CE0:
    ldrb r0, [r4]
    tst r0, r0
    beq loc_8143D04
    ldr r1, [pc, #0x8143d44-0x8143ce6-2] // =unk_2011EA0
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    mov r0, #0
    str r0, [r1]
    ldr r0, [pc, #0x8143d48-0x8143cf2-2] // =0x16F0
    ldrb r1, [r4]
    sub r1, #1
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    add r4, #8
    b loc_8143CE0
loc_8143D04:
    mov r0, #0
    pop {r4-r7,pc}
off_8143D08:    .word off_8143D0C
off_8143D0C:    .word dword_8143D14
    .word dword_8143D30
dword_8143D14:    .word 0xFFFFFF01, 0x8FF1402, 0xFFFFFF04, 0x8051402, 0xFFFFFF05
    .word 0x8FF1402, 0x0
dword_8143D30:    .word 0xFFFFFF01, 0x8011402, 0xFFFFFF02, 0x8031402, 0x0
off_8143D44:    .word unk_2011EA0
dword_8143D48:    .word 0x16F1
.thumb
sub_8143D4C:
    push {r4-r7,lr}
    bl sub_8143F60
    add r7, r0, #0
    mov r4, #0
    mov r6, #0
loc_8143D58:
    add r0, r4, #0
    bl sub_8143B5E
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_8143D68
    add r6, #1
loc_8143D68:
    add r4, #1
    cmp r4, r7
    blt loc_8143D58
    bl sub_8143F60
    add r1, r0, #0
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8143D4C

.thumb
sub_8143D7A:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_8143D9E
    pop {r3,r4}
    asr r3, r3, #0x10
    asr r4, r4, #0x10
    add r0, r0, r3
    add r1, r1, r4
    asr r0, r0, #5
    asr r1, r1, #5
    add r0, #0x80
    add r1, #0x80
    mov r5, #0x80
    lsl r5, r5, #1
    mul r1, r5
    add r0, r0, r1
    pop {r4-r7,pc}
// end of function sub_8143D7A

.thumb
sub_8143D9E:
    push {r4-r7,lr}
    bl sub_8143B30
    ldr r3, [pc, #0x8143db4-0x8143da4-4] // =dword_8143DB8
    lsl r0, r0, #1
    add r3, r3, r0
    mov r0, #0
    ldrsb r0, [r3,r0]
    mov r1, #1
    ldrsb r1, [r3,r1]
    pop {r4-r7,pc}
off_8143DB4:    .word dword_8143DB8
dword_8143DB8:    .word 0xF8080000
// end of function sub_8143D9E

.thumb
sub_8143DBC:
    push {r4-r7,lr}
    mov r1, #0x80
    lsl r1, r1, #1
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    sub r0, #0x80
    sub r1, #0x80
    lsl r0, r0, #5
    lsl r1, r1, #5
    push {r0,r1}
    bl sub_8143D9E
    pop {r3,r4}
    sub r0, r3, r0
    sub r1, r4, r1
    add r0, #0x10
    add r1, #0x10
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    mov r2, #0
    pop {r4-r7,pc}
// end of function sub_8143DBC

    push {r4-r7,lr}
    sub sp, sp, #0x10
    bl sub_8143EA4
    add r4, r0, #0
    bl sub_809E2B8
    mov r1, #1
    tst r0, r1
    beq loc_8143E0C
    add r1, r0, #0
    add r0, r4, #0
    mov r2, #1
    bl sub_8143E68
    add sp, sp, #0x10
    pop {r4-r7,pc}
loc_8143E0C:
    sub r1, r0, #1
    add r7, r0, #1
    mov r0, #7
    and r7, r0
    and r1, r0
    add r0, r4, #0
    mov r2, #1
    bl sub_8143E68
    add r6, r0, #0
    add r0, r4, #0
    add r1, r7, #0
    mov r2, #1
    bl sub_8143E68
    add r7, r0, #0
    bl sub_809E1AE
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r6, #0
    bl sub_8143DBC
    ldr r2, [sp]
    ldr r3, [sp,#4]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    str r0, [sp,#8]
    add r0, r7, #0
    bl sub_8143DBC
    ldr r2, [sp]
    ldr r3, [sp,#4]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    ldr r1, [sp,#8]
    cmp r0, r1
    ble loc_8143E62
    add r7, r6, #0
loc_8143E62:
    add r0, r7, #0
    add sp, sp, #0x10
    pop {r4-r7,pc}
.thumb
sub_8143E68:
    push {r4-r7,lr}
    add r6, r2, #0
    ldr r7, [pc, #0x8143e90-0x8143e6c-4] // =dword_8143E94
    lsl r1, r1, #1
    add r7, r7, r1
    add r4, r0, #0
    mov r0, #0xff
    and r0, r4
    lsr r1, r4, #8
    mov r2, #0
    ldrsb r2, [r7,r2]
    mov r3, #1
    ldrsb r3, [r7,r3]
    mul r2, r6
    mul r3, r6
    add r0, r0, r2
    add r1, r1, r3
    lsl r1, r1, #8
    orr r0, r1
    pop {r4-r7,pc}
off_8143E90:    .word dword_8143E94
dword_8143E94:    .word 0x10000, 0x1000000, 0xFF0000, 0xFF000000
// end of function sub_8143E68

.thumb
sub_8143EA4:
    push {r4-r7,lr}
    bl sub_809E1AE
    bl sub_8143D7A
    pop {r4-r7,pc}
// end of function sub_8143EA4

    push {r4-r7,lr}
    add r4, r1, #0
    bl sub_8143DBC
    push {r0,r1}
    add r0, r4, #0
    bl sub_8143DBC
    pop {r2,r3}
    sub r0, r0, r2
    sub r1, r3, r1
    bl calcAngle_800117C
    add r0, #0x10
    lsr r0, r0, #4
    mov r1, #0xf
    and r0, r1
    lsr r0, r0, #1
    sub r0, #1
    mov r1, #7
    and r0, r1
    pop {r4-r7,pc}
    push {r4-r7,lr}
    add r6, r0, #0
    bl sub_8143B30
    lsl r0, r0, #2
    ldr r7, [pc, #0x8143f18-0x8143ee6-2] // =dword_81437CC+56
    ldr r7, [r7,r0]
    mov r4, #0
loc_8143EEC:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_8143F12
    add r0, r4, #0
    bl sub_8143B5E
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    bne loc_8143F0C
    ldrh r0, [r7,#2]
    cmp r0, r6
    bne loc_8143F0C
    add r1, r4, #0
    mov r0, #1
    pop {r4-r7,pc}
loc_8143F0C:
    add r4, #1
    add r7, #4
    b loc_8143EEC
loc_8143F12:
    mov r1, #0xff
    mov r0, #0
    pop {r4-r7,pc}
off_8143F18:    .word dword_81437CC+0x38
.thumb
sub_8143F1C:
    push {r4-r7,lr}
    pop {r4-r7,pc}
// end of function sub_8143F1C

.thumb
sub_8143F20:
    push {r4-r7,lr}
    mov r0, #5
    bl sub_8003A64
    ldr r5, [pc, #0x81440d4-0x8143f28-4] // =byte_2001010
    add r0, r5, #0
// memBlock
    add r0, #8
// numWords
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_8143F20

    mov r0, #1
    b loc_8143F3E
    mov r0, #0
loc_8143F3E:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f40-4] // =byte_2001010
    strb r0, [r5,#0x9] // (byte_2001019 - 0x2001010)
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f4a-2] // =byte_2001010
    strb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f52-2] // =byte_2001010
    ldrb r0, [r5,#0x8] // (byte_2001018 - 0x2001010)
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f5a-2] // =byte_2001010
    str r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
    pop {r4-r7,pc}
.thumb
sub_8143F60:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f62-2] // =byte_2001010
    ldr r0, [r5,#0x10] // (dword_2001020 - 0x2001010)
    pop {r4-r7,pc}
// end of function sub_8143F60

.thumb
sub_8143F68:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f6a-2] // =byte_2001010
    str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8143F68

.thumb
sub_8143F72:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f74-4] // =byte_2001010
    ldr r0, [r5,#0xc] // (dword_200101C - 0x2001010)
    tst r0, r0
    pop {r4-r7,pc}
// end of function sub_8143F72

.thumb
sub_8143F7C:
    push {r4-r7,lr}
    ldrb r0, [r5,#9]
    tst r0, r0
    bne locret_8143F8E
    ldr r5, [pc, #0x81440d4-0x8143f84-4] // =byte_2001010
    ldr r0, [r5,#0xc] // (dword_200101C - 0x2001010)
    sub r0, #1
    blt locret_8143F8E
    str r0, [r5,#0xc] // (dword_200101C - 0x2001010)
locret_8143F8E:
    pop {r4-r7,pc}
// end of function sub_8143F7C

.thumb
sub_8143F90:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143f92-2] // =byte_2001010
    bl sub_8143F72
    add r4, r0, #0
    bl sub_8143BFC
    add r1, r0, #0
    mov r0, #0x28 
    lsl r0, r0, #0x10
    svc 6
    mul r0, r4
    pop {r4-r7,pc}
// end of function sub_8143F90

    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143fac-4] // =byte_2001010
    mov r0, #0
    str r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
    ldr r0, [pc, #0x8143fbc-0x8143fb2-2] // =0x0
    str r0, [r5,#0x18] // (dword_2001028 - 0x2001010)
    ldr r0, [pc, #0x8143fc0-0x8143fb6-2] // =0x2000
    str r0, [r5,#0x1c] // (dword_200102C - 0x2001010)
    pop {r4-r7,pc}
dword_8143FBC:    .word 0x0
dword_8143FC0:    .word 0x2000
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8143fc6-2] // =byte_2001010
    ldr r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
    cmp r0, #0
    bne loc_8143FD6
    mov r0, #0xb9
    add r0, #0xff
    bl sound_play
loc_8143FD6:
    ldr r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
    ldr r1, [r5,#0x18] // (dword_2001028 - 0x2001010)
    ldr r2, [r5,#0x1c] // (dword_200102C - 0x2001010)
    add r0, r0, r1
    add r1, r1, r2
    cmp r0, #0
    blt loc_8143FF6
    mov r3, #0x64 
    lsl r3, r3, #0x10
    cmp r0, r3
    blt loc_8143FFE
    mov r0, #0x64 
    lsl r0, r0, #0x10
    neg r1, r1
    add r1, r1, r2
    b loc_8143FFE
loc_8143FF6:
    mov r0, #0
    lsl r0, r0, #0x10
    neg r1, r1
    add r1, r1, r2
loc_8143FFE:
    str r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
    str r1, [r5,#0x18] // (dword_2001028 - 0x2001010)
    str r2, [r5,#0x1c] // (dword_200102C - 0x2001010)
    pop {r4-r7,pc}
    .hword 0x0
    .word 0x0
    .word 0x2000
.thumb
sub_8144010:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x8144012-2] // =byte_2001010
    ldr r0, [r5,#0x14] // (dword_2001024 - 0x2001010)
    asr r0, r0, #0x10
    cmp r0, #0
    blt loc_8144024
    cmp r0, #0x64 
    blt loc_8144026
    mov r0, #0x64 
    b loc_8144026
loc_8144024:
    mov r0, #0
loc_8144026:
    ldr r2, [pc, #0x814403c-0x8144026-2] // =a5jzd
    mov r1, #0
loc_814402A:
    ldrb r3, [r2,r1]
    cmp r0, r3
    blt locret_8144038
    add r1, #1
    cmp r1, #4
    ble loc_814402A
    mov r1, #4
locret_8144038:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_814403C:    .word a5jzd
a5jzd:    .byte 0x1B, 0x35, 0x4A
    .byte 0x5A, 0x64, 0x0
    .balign 4, 0x00
// end of function sub_8144010

.thumb
sub_8144048:
    push {r4-r7,lr}
    ldr r5, [pc, #0x81440d4-0x814404a-2] // =byte_2001010
    bl sub_81440AE
    bne loc_81440A6
    ldrb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    tst r0, r0
    beq loc_814407E
    mov r0, #0
    strb r0, [r5,#0x3] // (byte_2001013 - 0x2001010)
    bl sub_80468BA
    mov r0, #0xe
    mov r1, #0
    mov r2, #0
    bl sub_80468C6
    mov r0, #0xc
    mov r1, #1
    mov r2, #0
    bl sub_80468C6
    mov r0, #0xd
    mov r1, #2
    mov r2, #0
    bl sub_80468C6
loc_814407E:
    bl sub_8046818
    bl sub_8046854
    mov r0, #3
    bl sub_804691A
    beq loc_8144092
    bl sub_811E744
loc_8144092:
    bl engine_isScreeneffectAnimating
    beq loc_81440A6
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0]
    cmp r0, #4
    bne loc_81440A6
    bl sub_8143F7C
loc_81440A6:
    bl sub_8143F1C
    mov r0, #0
    pop {r4-r7,pc}
// end of function sub_8144048

.thumb
sub_81440AE:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_811EBE0
    bne loc_81440D0
    bl sub_8143B30
    cmp r0, #0xff
    beq loc_81440D0
    bl sub_8143C18
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    bne loc_81440D0
    mov r0, #0
    pop {r4-r7,pc}
loc_81440D0:
    mov r0, #1
    pop {r4-r7,pc}
off_81440D4:    .word byte_2001010
// end of function sub_81440AE

.thumb
sub_81440D8:
    push {r4,r5,lr}
    sub sp, sp, #8
    ldr r0, [pc, #0x8144130-0x81440dc-4] // =word_2006DFC
    ldr r2, [pc, #0x8144134-0x81440de-2] // =InterruptMasterEnableRegister
    ldrh r4, [r2]
    strh r4, [r0]
    mov r5, #0
    strh r5, [r2]
    ldr r3, [pc, #0x8144138-0x81440e8-4] // =InterruptEnableRegister
    ldrh r1, [r3]
    ldr r0, [pc, #0x814413c-0x81440ec-4] // =0xFF3F
    and r0, r1
    strh r0, [r3]
    strh r4, [r2]
    ldr r1, [pc, #0x8144140-0x81440f4-4] // =SIOControlRegister
    mov r2, #0x80
    lsl r2, r2, #6
    add r0, r2, #0
    strh r0, [r1]
    ldr r0, [pc, #0x8144144-0x81440fe-2] // =Timer3Control
    strh r5, [r0]
    add r1, #0xda
    mov r0, #0xc0
    strh r0, [r1]
    mov r4, #0
    str r4, [sp]
    ldr r1, [pc, #0x8144148-0x814410c-4] // =byte_200F460
    ldr r2, [pc, #0x814414c-0x814410e-2] // =0x5000266
    mov r0, sp
    bl SWI_CpuSet
    add r0, sp, #4
    strh r4, [r0]
    ldr r4, [pc, #0x8144150-0x814411a-2] // =unk_200F44C
    ldr r2, [pc, #0x8144154-0x814411c-4] // =0x1000002
    add r1, r4, #0
    bl SWI_CpuSet
    strb r5, [r4,#0x1] // (byte_200F44D - 0x200f44c)
    add sp, sp, #8
    pop {r4,r5}
    pop {r0}
    bx r0
    .byte 0, 0
off_8144130:    .word word_2006DFC
off_8144134:    .word InterruptMasterEnableRegister
off_8144138:    .word InterruptEnableRegister
dword_814413C:    .word 0xFF3F
off_8144140:    .word SIOControlRegister
off_8144144:    .word Timer3Control
off_8144148:    .word byte_200F460
dword_814414C:    .word 0x5000266
off_8144150:    .word unk_200F44C
dword_8144154:    .word 0x1000002
// end of function sub_81440D8

.thumb
sub_8144158:
    push {r4-r7,lr}
    sub sp, sp, #8
    ldr r6, [pc, #0x81441ec-0x814415c-4] // =word_2006DFC
    ldr r3, [pc, #0x81441f0-0x814415e-2] // =InterruptMasterEnableRegister
    ldrh r2, [r3]
    mov r4, #0
    strh r4, [r3]
    ldr r5, [pc, #0x81441f4-0x8144166-2] // =InterruptEnableRegister
    ldrh r1, [r5]
    ldr r0, [pc, #0x81441f8-0x814416a-2] // =0xFF3F
    and r0, r1
    strh r0, [r5]
    strh r2, [r3]
    ldr r0, [pc, #0x81441fc-0x8144172-2] // =SIOModeSelect_GeneralPurposeData
    strh r4, [r0]
    ldr r2, [pc, #0x8144200-0x8144176-2] // =SIOControlRegister
    mov r1, #0x80
    lsl r1, r1, #6
    add r0, r1, #0
    strh r0, [r2]
    ldrh r0, [r2]
    ldr r7, [pc, #0x8144204-0x8144182-2] // =0x4003
    add r1, r7, #0
    orr r0, r1
    strh r0, [r2]
    ldrh r2, [r3]
    strh r2, [r6]
    strh r4, [r3]
    ldrh r0, [r5]
    mov r1, #0x80
    orr r0, r1
    strh r0, [r5]
    strh r2, [r3]
    ldr r0, [pc, #0x8144208-0x814419a-2] // =SIOData_Normal_8bitandUARTMode_
    strh r4, [r0]
    ldr r2, [pc, #0x814420c-0x814419e-2] // =SIOData0_Parent__Multi_PlayerMode_
    mov r0, #0
    mov r1, #0
    str r0, [r2]
    str r1, [r2,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
    mov r5, #0
    str r5, [sp]
    ldr r1, [pc, #0x8144210-0x81441ac-4] // =byte_200F460
    ldr r2, [pc, #0x8144214-0x81441ae-2] // =0x5000266
    mov r0, sp
    bl SWI_CpuSet
    add r0, sp, #4
    strh r5, [r0]
    ldr r1, [pc, #0x8144218-0x81441ba-2] // =unk_200F44C
    ldr r2, [pc, #0x814421c-0x81441bc-4] // =0x1000002
    bl SWI_CpuSet
    ldr r0, [pc, #0x8144220-0x81441c2-2] // =byte_200F450
    strb r4, [r0]
    ldr r0, [pc, #0x8144224-0x81441c6-2] // =byte_2006DFE
    strb r4, [r0]
    ldr r0, [pc, #0x8144228-0x81441ca-2] // =byte_2006E00
    strb r4, [r0]
    ldr r0, [pc, #0x814422c-0x81441ce-2] // =byte_200F440
    strb r4, [r0]
    ldr r0, [pc, #0x8144230-0x81441d2-2] // =byte_200F448
    strb r4, [r0]
    ldr r0, [pc, #0x8144234-0x81441d6-2] // =byte_2006E01
    strb r4, [r0]
    ldr r0, [pc, #0x8144238-0x81441da-2] // =word_2006E02
    strh r5, [r0]
    ldr r0, [pc, #0x814423c-0x81441de-2] // =word_2006E04
    strh r5, [r0]
    add sp, sp, #8
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81441EC:    .word word_2006DFC
off_81441F0:    .word InterruptMasterEnableRegister
off_81441F4:    .word InterruptEnableRegister
dword_81441F8:    .word 0xFF3F
off_81441FC:    .word SIOModeSelect_GeneralPurposeData
off_8144200:    .word SIOControlRegister
dword_8144204:    .word 0x4003
off_8144208:    .word SIOData_Normal_8bitandUARTMode_
off_814420C:    .word SIOData0_Parent__Multi_PlayerMode_
off_8144210:    .word byte_200F460
dword_8144214:    .word 0x5000266
off_8144218:    .word unk_200F44C
dword_814421C:    .word 0x1000002
off_8144220:    .word byte_200F450
off_8144224:    .word byte_2006DFE
off_8144228:    .word byte_2006E00
off_814422C:    .word byte_200F440
off_8144230:    .word byte_200F448
off_8144234:    .word byte_2006E01
off_8144238:    .word word_2006E02
off_814423C:    .word word_2006E04
// end of function sub_8144158

.thumb
sub_8144240:
    push {lr}
    bl sub_8144158
    bl sub_81440D8
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8144240

.thumb
sub_8144250:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    ldr r0, [pc, #0x814426c-0x8144258-4] // =byte_200F460
    ldrb r0, [r0,#0x1] // (byte_200F461 - 0x200f460)
// switch 6 cases 
    cmp r0, #5
    bhi def_8144268
    lsl r0, r0, #2
    ldr r1, [pc, #0x8144270-0x8144262-2] // =jpt_8144268
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .balign 4, 0x00
off_814426C:    .word byte_200F460
off_8144270:    .word jpt_8144268
// jump table for switch statement
jpt_8144268:    .word loc_814428C
    .word loc_814429C
    .word loc_81442B4
    .word loc_81442F0
    .word loc_81442FA
    .word loc_814430C
loc_814428C:
    bl sub_81440D8
    ldr r1, [pc, #0x8144298-0x8144290-4] // =byte_200F460
    mov r0, #1
    strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
    b def_8144268
off_8144298:    .word byte_200F460
loc_814429C:
    ldrb r0, [r4]
    cmp r0, #1
    bne def_8144268
    bl sub_8144158
    ldr r1, [pc, #0x81442b0-0x81442a6-2] // =byte_200F460
    mov r0, #2
    strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
    b def_8144268
    .byte 0, 0
off_81442B0:    .word byte_200F460
loc_81442B4:
    ldrb r1, [r4]
    cmp r1, #1
    beq loc_81442C4
    cmp r1, #2
    beq loc_81442DC
    bl sub_8144380
    b def_8144268
loc_81442C4:
    ldr r2, [pc, #0x81442d8-0x81442c4-4] // =byte_200F460
    ldrb r0, [r2]
    cmp r0, #0
    beq def_8144268
    ldrb r0, [r2,#0x3] // (byte_200F463 - 0x200f460)
    cmp r0, #1
    bls def_8144268
    strb r1, [r2,#0x10] // (byte_200F470 - 0x200f460)
    b def_8144268
    .balign 4, 0x00
off_81442D8:    .word byte_200F460
loc_81442DC:
    ldr r0, [pc, #0x81442e8-0x81442dc-4] // =byte_200F460
    mov r1, #0
    strb r1, [r0,#0x1] // (byte_200F461 - 0x200f460)
    ldr r0, [pc, #0x81442ec-0x81442e2-2] // =SIOData_Normal_8bitandUARTMode_
    strh r1, [r0]
    b def_8144268
off_81442E8:    .word byte_200F460
off_81442EC:    .word SIOData_Normal_8bitandUARTMode_
loc_81442F0:
    bl sub_81443AC
    ldr r1, [pc, #0x8144308-0x81442f4-4] // =byte_200F460
    mov r0, #4
    strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
loc_81442FA:
    add r0, r5, #0
    bl sub_81443FC
    add r0, r6, #0
    bl sub_81444E4
    b def_8144268
off_8144308:    .word byte_200F460
loc_814430C:
    ldr r1, [pc, #0x8144354-0x814430c-4] // =byte_200F460
    mov r0, #2
    strb r0, [r1,#0x15] // (byte_200F475 - 0x200f460)
def_8144268:
    mov r0, #0
    strb r0, [r4]
    ldr r1, [pc, #0x8144354-0x8144316-2] // =byte_200F460
    ldrb r2, [r1,#0x2] // (byte_200F462 - 0x200f460)
    ldrb r0, [r1,#0x3] // (byte_200F463 - 0x200f460)
    lsl r0, r0, #2
    orr r2, r0
    ldrb r0, [r1]
    cmp r0, #8
    bne loc_814432A
    mov r0, #0x20 
    orr r2, r0
loc_814432A:
    ldrb r0, [r1,#0xc] // (byte_200F46C - 0x200f460)
    lsl r3, r0, #8
    ldrb r0, [r1,#0x11] // (byte_200F471 - 0x200f460)
    lsl r4, r0, #9
    ldrb r0, [r1,#0x12] // (byte_200F472 - 0x200f460)
    lsl r5, r0, #0x10
    ldrb r0, [r1,#0x13] // (byte_200F473 - 0x200f460)
    lsl r6, r0, #0x11
    ldrb r0, [r1,#0x14] // (byte_200F474 - 0x200f460)
    lsl r7, r0, #0x12
    ldrb r0, [r1,#0x15] // (byte_200F475 - 0x200f460)
    lsl r0, r0, #0x14
    mov r12, r0
    ldrb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
    cmp r0, #4
    bne loc_8144358
    mov r0, #0x40 
    orr r0, r3
    orr r0, r2
    b loc_814435C
    .balign 4, 0x00
off_8144354:    .word byte_200F460
loc_8144358:
    add r0, r2, #0
    orr r0, r3
loc_814435C:
    orr r0, r4
    orr r0, r5
    orr r0, r6
    orr r0, r7
    mov r2, r12
    orr r0, r2
    add r2, r0, #0
    ldrb r0, [r1,#0x2] // (byte_200F462 - 0x200f460)
    cmp r0, #3
    bls loc_8144376
    mov r0, #0x80
    lsl r0, r0, #0xf
    orr r2, r0
loc_8144376:
    add r0, r2, #0
    pop {r4-r7}
    pop {r1}
    bx r1
    .byte 0, 0
// end of function sub_8144250

.thumb
sub_8144380:
    push {lr}
    ldr r0, [pc, #0x814439c-0x8144382-2] // =SIOControlRegister
    ldr r1, [r0]
    mov r0, #0xc
    and r1, r0
    ldr r2, [pc, #0x81443a0-0x814438a-2] // =byte_200F460
    cmp r1, #8
    bne loc_81443A4
    ldrb r0, [r2,#0x2] // (byte_200F462 - 0x200f460)
    cmp r0, #0
    bne loc_81443A4
    strb r1, [r2]
    b loc_81443A8
    .balign 4, 0x00
off_814439C:    .word SIOControlRegister
off_81443A0:    .word byte_200F460
loc_81443A4:
    mov r0, #0
    strb r0, [r2]
loc_81443A8:
    pop {r0}
    bx r0
// end of function sub_8144380

.thumb
sub_81443AC:
    push {r4,lr}
    ldr r0, [pc, #0x81443e4-0x81443ae-2] // =byte_200F460
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_81443DC
    ldr r1, [pc, #0x81443e8-0x81443b6-2] // =Timer3Counter_Reload
    ldr r2, [pc, #0x81443ec-0x81443b8-4] // =0xFF7C
    add r0, r2, #0
    strh r0, [r1]
    add r1, #2
    mov r0, #0x41 
    strh r0, [r1]
    ldr r0, [pc, #0x81443f0-0x81443c4-4] // =word_2006DFC
    ldr r2, [pc, #0x81443f4-0x81443c6-2] // =InterruptMasterEnableRegister
    ldrh r4, [r2]
    strh r4, [r0]
    mov r0, #0
    strh r0, [r2]
    ldr r3, [pc, #0x81443f8-0x81443d0-4] // =InterruptEnableRegister
    ldrh r0, [r3]
    mov r1, #0x40 
    orr r0, r1
    strh r0, [r3]
    strh r4, [r2]
loc_81443DC:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81443E4:    .word byte_200F460
off_81443E8:    .word Timer3Counter_Reload
dword_81443EC:    .word 0xFF7C
off_81443F0:    .word word_2006DFC
off_81443F4:    .word InterruptMasterEnableRegister
off_81443F8:    .word InterruptEnableRegister
// end of function sub_81443AC

.thumb
sub_81443FC:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r3, r0, #0
    ldr r2, [pc, #0x8144474-0x8144408-4] // =word_2006DFC
    ldr r1, [pc, #0x8144478-0x814440a-2] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    strh r0, [r2]
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x814447c-0x8144414-4] // =byte_200F460
    ldr r4, [pc, #0x8144480-0x8144416-2] // =0x211
    add r0, r1, r4
    ldrb r4, [r0]
    mov r10, r2
    add r6, r1, #0
    cmp r4, #0x1d
    bhi loc_814448C
    mov r1, #0x84
    lsl r1, r1, #2
    add r0, r6, r1
    ldrb r0, [r0]
    add r0, r4, r0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_814443C
    sub r0, #0x1e
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
loc_814443C:
    mov r2, #0
    ldr r4, [pc, #0x8144484-0x814443e-2] // =word_2006E02
    mov r8, r4
    ldr r1, [pc, #0x8144488-0x8144442-2] // =byte_200F440
    mov r9, r1
    lsl r5, r0, #1
    mov r0, #0x30 
    add r0, r0, r6
    mov r12, r0
    mov r7, #0
loc_8144450:
    ldrh r0, [r4]
    ldrh r1, [r3]
    orr r0, r1
    strh r0, [r4]
    lsl r0, r2, #4
    sub r0, r0, r2
    lsl r0, r0, #2
    add r0, r5, r0
    add r0, r12
    strh r1, [r0]
    strh r7, [r3]
    add r3, #2
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_8144450
    b loc_814449C
off_8144474:    .word word_2006DFC
off_8144478:    .word InterruptMasterEnableRegister
off_814447C:    .word byte_200F460
off_8144480:    .word 0x211
off_8144484:    .word word_2006E02
off_8144488:    .word byte_200F440
loc_814448C:
    ldrb r1, [r6,#0x14] // (byte_200F474 - 0x200f460)
    mov r0, #1
    orr r0, r1
    strb r0, [r6,#0x14] // (byte_200F474 - 0x200f460)
    ldr r1, [pc, #0x81444d4-0x8144494-4] // =word_2006E02
    mov r8, r1
    ldr r2, [pc, #0x81444d8-0x8144498-4] // =byte_200F440
    mov r9, r2
loc_814449C:
    mov r4, r8
    ldrh r0, [r4]
    cmp r0, #0
    beq loc_81444B2
    ldr r1, [pc, #0x81444dc-0x81444a4-4] // =0x211
    add r0, r6, r1
    ldrb r1, [r0]
    add r1, #1
    mov r2, #0
    strb r1, [r0]
    strh r2, [r4]
loc_81444B2:
    ldr r1, [pc, #0x81444e0-0x81444b2-2] // =InterruptMasterEnableRegister
    mov r2, r10
    ldrh r0, [r2]
    strh r0, [r1]
    ldr r4, [pc, #0x81444dc-0x81444ba-2] // =0x211
    add r0, r6, r4
    ldrb r0, [r0]
    mov r1, r9
    strb r0, [r1]
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81444D4:    .word word_2006E02
off_81444D8:    .word byte_200F440
off_81444DC:    .word 0x211
off_81444E0:    .word InterruptMasterEnableRegister
// end of function sub_81443FC

.thumb
sub_81444E4:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    mov r12, r0
    ldr r2, [pc, #0x8144544-0x81444f0-4] // =word_2006DFC
    ldr r1, [pc, #0x8144548-0x81444f2-2] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    strh r0, [r2]
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x814454c-0x81444fc-4] // =byte_200F460
    ldr r3, [pc, #0x8144550-0x81444fe-2] // =0x994
    add r0, r1, r3
    ldrb r0, [r0]
    add r7, r1, #0
    cmp r0, #0
    bne loc_8144554
    mov r3, #0
    mov r8, r7
    ldrb r6, [r7,#0x3] // (byte_200F463 - 0x200f460)
loc_8144510:
    mov r2, #0
    add r5, r3, #1
    cmp r2, r6
    bcs loc_8144534
    lsl r0, r3, #3
    mov r1, r12
    add r3, r0, r1
    mov r4, #0
    mov r0, r8
    ldrb r1, [r0,#0x3] // (byte_200F463 - 0x200f460)
loc_8144524:
    lsl r0, r2, #1
    add r0, r0, r3
    strh r4, [r0]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, r1
    bcc loc_8144524
loc_8144534:
    lsl r0, r5, #0x18
    lsr r3, r0, #0x18
    cmp r3, #7
    bls loc_8144510
    mov r0, #1
    strb r0, [r7,#0xc] // (byte_200F46C - 0x200f460)
    b loc_81445CC
    .balign 4, 0x00
off_8144544:    .word word_2006DFC
off_8144548:    .word InterruptMasterEnableRegister
off_814454C:    .word byte_200F460
dword_8144550:    .word 0x995
loc_8144554:
    mov r3, #0
    ldrb r1, [r7,#0x3] // (byte_200F463 - 0x200f460)
    mov r9, r1
    mov r2, #0x85
    lsl r2, r2, #2
    add r2, r2, r7
    mov r8, r2
    mov r10, r7
loc_8144564:
    mov r2, #0
    add r5, r3, #1
    cmp r2, r9
    bcs loc_81445A0
    lsl r0, r3, #3
    mov r1, r12
    add r6, r0, r1
    ldr r0, [pc, #0x81445e4-0x8144572-2] // =byte_200FDF4
    ldrb r1, [r0]
    lsl r1, r1, #1
    mov r0, r10
    ldrb r4, [r0,#0x3] // (byte_200F463 - 0x200f460)
    lsl r0, r3, #4
    sub r0, r0, r3
    lsl r0, r0, #2
    add r3, r1, r0
loc_8144584:
    lsl r1, r2, #1
    add r1, r1, r6
    lsl r0, r2, #4
    sub r0, r0, r2
    lsl r0, r0, #5
    add r0, r3, r0
    add r0, r8
    ldrh r0, [r0]
    strh r0, [r1]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, r4
    bcc loc_8144584
loc_81445A0:
    lsl r0, r5, #0x18
    lsr r3, r0, #0x18
    cmp r3, #7
    bls loc_8144564
    add r2, r7, #0
    ldr r3, [pc, #0x81445e8-0x81445aa-2] // =0x994
    add r1, r2, r3
    ldrb r0, [r1]
    sub r0, #1
    mov r3, #0
    strb r0, [r1]
    ldr r0, [pc, #0x81445ec-0x81445b6-2] // =0x994
    add r2, r2, r0
    ldrb r0, [r2]
    add r0, #1
    strb r0, [r2]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_81445CA
    strb r3, [r2]
loc_81445CA:
    strb r3, [r7,#0xc] // (byte_200F46C - 0x200f460)
loc_81445CC:
    ldr r1, [pc, #0x81445f0-0x81445cc-4] // =InterruptMasterEnableRegister
    ldr r2, [pc, #0x81445f4-0x81445ce-2] // =word_2006DFC
    ldrh r0, [r2]
    strh r0, [r1]
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81445E4:    .word byte_200FDF4
dword_81445E8:    .word 0x995
off_81445EC:    .word 0x994
off_81445F0:    .word InterruptMasterEnableRegister
off_81445F4:    .word word_2006DFC
// end of function sub_81444E4

.thumb
sub_81445F8:
    push {r4,lr}
    ldr r4, [pc, #0x8144620-0x81445fa-2] // =byte_200F460
    ldrb r3, [r4]
    cmp r3, #0
    beq loc_8144664
    ldrb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
    cmp r0, #2
    beq loc_814462C
    cmp r0, #4
    bne loc_8144690
    ldrb r0, [r4,#0xd] // (byte_200F46D - 0x200f460)
    cmp r0, #8
    bhi loc_8144624
    ldrb r0, [r4,#0x12] // (byte_200F472 - 0x200f460)
    cmp r0, #0
    bne loc_814462C
    mov r0, #1
    strb r0, [r4,#0x15] // (byte_200F475 - 0x200f460)
    b loc_8144690
    .byte 0, 0
off_8144620:    .word byte_200F460
loc_8144624:
    ldrb r0, [r4,#0x15] // (byte_200F475 - 0x200f460)
    cmp r0, #0
    bne loc_8144690
    strb r0, [r4,#0xd] // (byte_200F46D - 0x200f460)
loc_814462C:
    bl sub_814474C
    ldr r0, [pc, #0x8144658-0x8144630-4] // =byte_200F454
    ldrb r2, [r0]
    cmp r2, #2
    bne loc_8144690
    ldr r1, [pc, #0x814465c-0x8144638-4] // =byte_200F450
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #6
    bls loc_8144690
    ldr r0, [pc, #0x8144660-0x8144648-4] // =byte_200F460
    mov r1, #0
    strb r2, [r0,#0x15] // (byte_200F475 - 0x200f460)
    strb r1, [r0,#0x2] // (byte_200F462 - 0x200f460)
    strb r1, [r0,#0x3] // (byte_200F463 - 0x200f460)
    strb r1, [r0,#0x11] // (byte_200F471 - 0x200f460)
    b loc_8144690
    .balign 4, 0x00
off_8144658:    .word byte_200F454
off_814465C:    .word byte_200F450
off_8144660:    .word byte_200F460
loc_8144664:
    ldrb r2, [r4,#0x1] // (byte_200F461 - 0x200f460)
    cmp r2, #4
    beq loc_814466E
    cmp r2, #2
    bne loc_8144690
loc_814466E:
    ldr r1, [pc, #0x8144698-0x814466e-2] // =byte_200F450
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #6
    bls loc_8144690
    cmp r2, #4
    bne loc_8144686
    mov r0, #2
    strb r0, [r4,#0x15] // (byte_200F475 - 0x200f460)
loc_8144686:
    cmp r2, #2
    bne loc_8144690
    strb r3, [r4,#0x2] // (byte_200F462 - 0x200f460)
    strb r3, [r4,#0x3] // (byte_200F463 - 0x200f460)
    strb r3, [r4,#0x11] // (byte_200F471 - 0x200f460)
loc_8144690:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8144698:    .word byte_200F450
// end of function sub_81445F8

.thumb
sub_814469C:
    push {lr}
    bl sub_8144BBC
    bl sub_814474C
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814469C

.thumb
sub_81446AC:
    push {r4,lr}
    ldr r0, [pc, #0x81446d4-0x81446ae-2] // =SIOControlRegister
    ldr r0, [r0]
    ldr r4, [pc, #0x81446d8-0x81446b2-2] // =byte_200F460
    lsl r0, r0, #0x1a
    lsr r0, r0, #0x1e
    strb r0, [r4,#0x2] // (byte_200F462 - 0x200f460)
    ldrb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
    cmp r0, #2
    beq loc_81446DC
    cmp r0, #4
    bne loc_8144714
    bl sub_8144920
    bl sub_8144AFC
    bl sub_8144BF0
    b loc_8144714
    .balign 4, 0x00
off_81446D4:    .word SIOControlRegister
off_81446D8:    .word byte_200F460
loc_81446DC:
    bl sub_814475C
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_81446FC
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_81446F6
    mov r0, #3
    strb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
    mov r0, #8
    strb r0, [r4,#0xd] // (byte_200F46D - 0x200f460)
    b loc_8144714
loc_81446F6:
    mov r0, #4
    strb r0, [r4,#0x1] // (byte_200F461 - 0x200f460)
    b loc_8144714
loc_81446FC:
    mov r2, #0
    add r4, #0x2a 
    mov r3, #0xff
loc_8144702:
    add r0, r2, r4
    ldrb r1, [r0]
    orr r1, r3
    strb r1, [r0]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_8144702
loc_8144714:
    ldr r3, [pc, #0x814473c-0x8144714-4] // =byte_200F460
    ldrb r0, [r3,#0xd] // (byte_200F46D - 0x200f460)
    add r0, #1
    mov r2, #0
    strb r0, [r3,#0xd] // (byte_200F46D - 0x200f460)
    ldr r1, [pc, #0x8144740-0x814471e-2] // =byte_200F450
    strb r2, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #8
    bne loc_8144734
    ldr r0, [pc, #0x8144744-0x814472a-2] // =byte_200F448
    ldr r2, [pc, #0x8144748-0x814472c-4] // =0x994
    add r1, r3, r2
    ldrb r1, [r1]
    strb r1, [r0]
loc_8144734:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814473C:    .word byte_200F460
off_8144740:    .word byte_200F450
off_8144744:    .word byte_200F448
dword_8144748:    .word 0x995
// end of function sub_81446AC

.thumb
sub_814474C:
    ldr r0, [pc, #0x8144758-0x814474c-4] // =SIOControlRegister
    ldrh r1, [r0]
    mov r2, #0x80
    orr r1, r2
    strh r1, [r0]
    bx lr
off_8144758:    .word SIOControlRegister
// end of function sub_814474C

.thumb
sub_814475C:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    mov r0, #0
    mov r9, r0
    ldr r1, [pc, #0x814478c-0x814476a-2] // =0xFFFF
    mov r12, r1
    ldr r0, [pc, #0x8144790-0x814476e-2] // =byte_200F454
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_814477C
    cmp r0, #2
    beq loc_814477C
    b loc_81448CC
loc_814477C:
    ldr r0, [pc, #0x8144794-0x814477c-4] // =byte_200F460
    ldrb r1, [r0,#0x10] // (byte_200F470 - 0x200f460)
    mov r10, r0
    cmp r1, #1
    bne loc_81447B0
    ldr r1, [pc, #0x8144798-0x8144786-2] // =SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x814479c-0x8144788-4] // =0x8FFF
    b loc_81447B4
dword_814478C:    .word 0xFFFF
off_8144790:    .word byte_200F454
off_8144794:    .word byte_200F460
off_8144798:    .word SIOData_Normal_8bitandUARTMode_
dword_814479C:    .word 0x8FFF
loc_81447A0:
    mov r0, r8
    add r0, #0x2a 
    add r0, r4, r0
    mov r1, #0xff
    strb r1, [r0]
    mov r0, #0
    mov r9, r0
    b loc_8144872
loc_81447B0:
    ldr r1, [pc, #0x8144824-0x81447b0-4] // =SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x8144828-0x81447b2-2] // =0xA6C0
loc_81447B4:
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
    mov r1, r10
    strb r0, [r1,#0x10] // (byte_200F470 - 0x200f460)
    mov r4, #0
    mov r2, r10
    add r2, #4
    mov r5, r10
    add r5, #0x2a 
    mov r3, #0xff
loc_81447CA:
    add r0, r4, r5
    ldrb r1, [r0]
    orr r1, r3
    strb r1, [r0]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_81447CA
    ldr r0, [pc, #0x814482c-0x81447dc-4] // =SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r0,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
    ldr r0, [r0]
    str r0, [r2]
    str r1, [r2,#0x4] // (dword_200F468 - 0x200f464)
    mov r4, #0
    sub r0, r2, #4
    mov r8, r0
    add r5, r2, #0
    mov r7, #0xff
    lsl r7, r7, #8
    mov r6, r8
    add r6, #0x2a 
loc_81447F6:
    lsl r2, r4, #1
    add r0, r2, r5
    ldrh r3, [r0]
    mov r0, #4
    neg r0, r0
    and r0, r3
    ldr r1, [pc, #0x8144828-0x8144802-2] // =0xA6C0
    cmp r0, r1
    beq loc_8144814
    add r0, r3, #0
    ldr r1, [pc, #0x8144830-0x814480a-2] // =0x8FFF
    cmp r0, r1
    beq loc_8144814
    cmp r0, r7
    bne loc_8144856
loc_8144814:
    add r0, r2, r5
    ldrh r0, [r0]
    cmp r0, r7
    bne loc_8144834
    add r1, r4, r6
    mov r0, #2
    b loc_8144838
    .balign 4, 0x00
off_8144824:    .word SIOData_Normal_8bitandUARTMode_
dword_8144828:    .word 0xA6C0
off_814482C:    .word SIOData0_Parent__Multi_PlayerMode_
dword_8144830:    .word 0x8FFF
loc_8144834:
    add r1, r4, r6
    mov r0, #1
loc_8144838:
    strb r0, [r1]
    mov r0, r9
    add r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r9, r0
    add r0, r2, r5
    ldrh r1, [r0]
    cmp r12, r1
    bls loc_8144868
    cmp r1, #0
    beq loc_8144868
    add r0, r1, #0
    mov r12, r0
    b loc_8144868
loc_8144856:
    ldr r2, [pc, #0x8144894-0x8144856-2] // =0xFFFF
    cmp r0, r2
    bne loc_81447A0
    mov r0, r8
    ldrb r0, [r0,#0x2] // (byte_200F462 - 0x200f460)
    cmp r4, r0
    bne loc_8144868
    mov r1, #0
    mov r9, r1
loc_8144868:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_81447F6
loc_8144872:
    mov r0, r9
    mov r2, r10
    strb r0, [r2,#0x3] // (byte_200F463 - 0x200f460)
    mov r0, r9
    cmp r0, #1
    bls loc_81448B6
    ldr r1, [pc, #0x8144898-0x814487e-2] // =byte_2006E00
    ldrb r1, [r1]
    cmp r0, r1
    bne loc_81448A0
    ldrh r1, [r2,#0x4] // (dword_200F464 - 0x200f460)
    ldr r0, [pc, #0x814489c-0x8144888-4] // =0x8FFF
    cmp r1, r0
    bne loc_81448A0
    mov r0, #1
    b loc_8144904
    .balign 4, 0x00
dword_8144894:    .word 0xFFFF
off_8144898:    .word byte_2006E00
dword_814489C:    .word 0x8FFF
loc_81448A0:
    mov r2, r10
    ldrb r0, [r2,#0x3] // (byte_200F463 - 0x200f460)
    cmp r0, #1
    bls loc_81448B6
    mov r0, #3
    mov r1, r12
    and r1, r0
    mov r12, r1
    mov r0, r12
    add r0, #1
    b loc_81448BA
loc_81448B6:
    mov r0, #0
    mov r2, r10
loc_81448BA:
    strb r0, [r2,#0x11] // (byte_200F471 - 0x200f460)
    mov r1, r10
    ldrb r0, [r1,#0x3] // (byte_200F463 - 0x200f460)
    ldr r2, [pc, #0x81448c8-0x81448c0-4] // =byte_2006E00
    strb r0, [r2]
    b loc_8144902
    .balign 4, 0x00
off_81448C8:    .word byte_2006E00
loc_81448CC:
    ldr r0, [pc, #0x81448dc-0x81448cc-4] // =byte_200F460
    ldrb r1, [r0,#0x10] // (byte_200F470 - 0x200f460)
    mov r10, r0
    cmp r1, #1
    bne loc_81448E8
    ldr r1, [pc, #0x81448e0-0x81448d6-2] // =SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x81448e4-0x81448d8-4] // =0x8FFF
    b loc_81448EC
off_81448DC:    .word byte_200F460
off_81448E0:    .word SIOData_Normal_8bitandUARTMode_
dword_81448E4:    .word 0x8FFF
loc_81448E8:
    ldr r1, [pc, #0x8144914-0x81448e8-4] // =SIOData_Normal_8bitandUARTMode_
    ldr r2, [pc, #0x8144918-0x81448ea-2] // =0xA6C0
loc_81448EC:
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
    mov r1, r10
    strb r0, [r1,#0x10] // (byte_200F470 - 0x200f460)
    ldr r0, [pc, #0x814491c-0x81448f6-2] // =SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r0,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
    ldr r0, [r0]
    mov r2, r10
    str r0, [r2,#0x4] // (dword_200F464 - 0x200f460)
    str r1, [r2,#0x8] // (dword_200F468 - 0x200f460)
loc_8144902:
    mov r0, #0
loc_8144904:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
off_8144914:    .word SIOData_Normal_8bitandUARTMode_
dword_8144918:    .word 0xA6C0
off_814491C:    .word SIOData0_Parent__Multi_PlayerMode_
// end of function sub_814475C

.thumb
sub_8144920:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    sub sp, sp, #8
    ldr r0, [pc, #0x81449a0-0x814492a-2] // =SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r0,#0x4] // (siodata2_2ndchild__multi_playermode_ - 0x4000120)
    ldr r0, [r0]
    str r0, [sp]
    str r1, [sp,#4]
    mov r4, #0
    ldr r5, [pc, #0x81449a4-0x8144936-2] // =byte_200F489
loc_8144938:
    lsl r0, r4, #1
    add r0, sp
    ldrh r0, [r0]
    ldrb r2, [r5]
    add r1, r4, #0
    bl sub_803F618
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8144938
    ldr r0, [pc, #0x81449a8-0x8144950-4] // =byte_200F460
    add r6, r0, #0
    add r0, #0x28 
    ldrb r0, [r0]
    add r3, r6, #0
    cmp r0, #0
    bne loc_81449E0
    mov r4, #0
    ldr r0, [pc, #0x81449ac-0x8144960-4] // =byte_2006E01
    mov r9, r0
    ldrb r1, [r3,#0x3] // (byte_200F463 - 0x200f460)
    cmp r4, r1
    bcs loc_81449D4
    add r5, r3, #0
    mov r2, #0xff
    lsl r2, r2, #8
    mov r8, r2
    mov r7, #0x20 
    add r7, r7, r3
    mov r12, r7
loc_8144978:
    add r0, r5, #0
    add r0, #0x2a 
    add r0, r4, r0
    ldrb r2, [r0]
    cmp r2, #1
    bne loc_81449B0
    lsl r0, r4, #1
    mov r7, sp
    add r1, r7, r0
    ldrh r0, [r6,#0x16] // (word_200F476 - 0x200f460)
    ldrh r1, [r1]
    cmp r0, r1
    beq loc_81449C6
    mov r1, r9
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_81449C6
    strb r2, [r5,#0x13] // (byte_200F473 - 0x200f460)
    b loc_81449C6
    .byte 0, 0
off_81449A0:    .word SIOData0_Parent__Multi_PlayerMode_
off_81449A4:    .word byte_200F489
off_81449A8:    .word byte_200F460
off_81449AC:    .word byte_2006E01
loc_81449B0:
    cmp r2, #2
    bne loc_81449C6
    lsl r1, r4, #1
    mov r2, sp
    add r0, r2, r1
    ldrh r0, [r0]
    cmp r0, r8
    bne loc_81449C6
    add r1, r12
    mov r0, #0
    strh r0, [r1]
loc_81449C6:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    add r6, r3, #0
    ldrb r7, [r3,#0x3] // (byte_200F463 - 0x200f460)
    cmp r4, r7
    bcc loc_8144978
loc_81449D4:
    mov r0, #0
    strh r0, [r3,#0x16] // (word_200F476 - 0x200f460)
    mov r0, #1
    mov r1, r9
    strb r0, [r1]
    b loc_8144AE4
loc_81449E0:
    ldr r2, [pc, #0x8144a54-0x81449e0-4] // =0x994
    add r1, r3, r2
    ldr r7, [pc, #0x8144a58-0x81449e4-4] // =0x994
    add r0, r3, r7
    ldrb r2, [r0]
    ldrb r1, [r1]
    add r0, r2, r1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_81449FC
    sub r0, #0x1e
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
loc_81449FC:
    cmp r2, #0x1d
    bhi loc_8144AB4
    mov r4, #0
    ldrb r1, [r3,#0x3] // (byte_200F463 - 0x200f460)
    cmp r4, r1
    bcs loc_8144ABC
    mov r12, r3
    lsl r7, r0, #1
    mov r2, #0x85
    lsl r2, r2, #2
    add r2, r2, r3
    mov r8, r2
    ldr r6, [pc, #0x8144a5c-0x8144a14-4] // =word_2006E04
    add r5, r3, #0
    add r5, #0x20 
loc_8144A1A:
    mov r0, r12
    add r0, #0x2a 
    add r0, r4, r0
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_8144A60
    lsl r0, r4, #1
    add r0, sp
    ldrh r2, [r0]
    ldrh r1, [r3,#0x16] // (word_200F476 - 0x200f460)
    add r0, r2, r1
    strh r0, [r3,#0x16] // (word_200F476 - 0x200f460)
    ldrh r0, [r6]
    orr r0, r2
    strh r0, [r6]
    add r0, r3, #0
    add r0, #0x29 
    ldrb r0, [r0]
    lsl r1, r0, #4
    sub r1, r1, r0
    lsl r1, r1, #2
    add r1, r7, r1
    lsl r0, r4, #4
    sub r0, r0, r4
    lsl r0, r0, #5
    add r1, r1, r0
    add r1, r8
    strh r2, [r1]
    b loc_8144AA4
dword_8144A54:    .word 0x994
dword_8144A58:    .word 0x995
off_8144A5C:    .word word_2006E04
loc_8144A60:
    cmp r0, #2
    bne loc_8144AA4
    mov r0, r12
    add r0, #0x28 
    ldrb r0, [r0]
    cmp r0, #4
    bne loc_8144A7C
    lsl r0, r4, #1
    mov r1, r12
    add r1, #0x18
    add r1, r0, r1
    add r0, sp
    ldrh r0, [r0]
    b loc_8144AA2
loc_8144A7C:
    cmp r0, #3
    bne loc_8144A92
    lsl r1, r4, #1
    add r2, r1, r5
    ldrh r0, [r2]
    add r1, sp
    add r0, #1
    ldrh r1, [r1]
    add r0, r0, r1
    strh r0, [r2]
    b loc_8144AA4
loc_8144A92:
    cmp r0, #5
    bne loc_8144AA4
    lsl r0, r4, #1
    add r1, r0, r5
    add r0, sp
    ldrh r0, [r0]
    ldrh r2, [r1]
    add r0, r0, r2
loc_8144AA2:
    strh r0, [r1]
loc_8144AA4:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    mov r0, r12
    ldrb r0, [r0,#0x3] // (byte_200F463 - 0x200f460)
    cmp r4, r0
    bcc loc_8144A1A
    b loc_8144ABC
loc_8144AB4:
    ldrb r1, [r3,#0x14] // (byte_200F474 - 0x200f460)
    mov r0, #2
    orr r0, r1
    strb r0, [r3,#0x14] // (byte_200F474 - 0x200f460)
loc_8144ABC:
    add r1, r3, #0
    add r1, #0x29 
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #8
    bne loc_8144AE4
    ldr r2, [pc, #0x8144af4-0x8144ace-2] // =word_2006E04
    ldrh r0, [r2]
    cmp r0, #0
    beq loc_8144AE4
    ldr r1, [pc, #0x8144af8-0x8144ad6-2] // =0x994
    add r0, r3, r1
    ldrb r1, [r0]
    add r1, #1
    strb r1, [r0]
    mov r0, #0
    strh r0, [r2]
loc_8144AE4:
    add sp, sp, #8
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8144AF4:    .word word_2006E04
dword_8144AF8:    .word 0x995
// end of function sub_8144920

.thumb
sub_8144AFC:
    push {lr}
    ldr r1, [pc, #0x8144b40-0x8144afe-2] // =byte_200F460
    add r0, r1, #0
    add r0, #0x28 
    ldrb r0, [r0]
    mov r12, r1
    cmp r0, #8
    bne loc_8144B54
    ldr r1, [pc, #0x8144b44-0x8144b0c-4] // =SIOData_Normal_8bitandUARTMode_
    mov r2, r12
    ldrh r0, [r2,#0x16] // (word_200F476 - 0x200f460)
    strh r0, [r1]
    ldr r1, [pc, #0x8144b48-0x8144b14-4] // =byte_2006DFE
    ldrb r2, [r1]
    cmp r2, #0
    bne loc_8144B50
    ldr r1, [pc, #0x8144b4c-0x8144b1c-4] // =0x211
    add r1, r12
    ldrb r0, [r1]
    sub r0, #1
    strb r0, [r1]
    mov r1, #0x84
    lsl r1, r1, #2
    add r1, r12
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x1d
    bls loc_8144BB2
    strb r2, [r1]
    b loc_8144BB2
    .byte 0, 0
off_8144B40:    .word byte_200F460
off_8144B44:    .word SIOData_Normal_8bitandUARTMode_
off_8144B48:    .word byte_2006DFE
off_8144B4C:    .word 0x211
loc_8144B50:
    mov r0, #0
    b loc_8144BB0
loc_8144B54:
    ldr r1, [pc, #0x8144b78-0x8144b54-4] // =byte_2006DFE
    cmp r0, #0
    bne loc_8144B68
    ldr r0, [pc, #0x8144b7c-0x8144b5a-2] // =0x211
    add r0, r12
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8144B68
    mov r0, #1
    strb r0, [r1]
loc_8144B68:
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_8144B84
    ldr r1, [pc, #0x8144b80-0x8144b6e-2] // =SIOData_Normal_8bitandUARTMode_
    mov r0, #0
    strh r0, [r1]
    b loc_8144BA8
    .balign 4, 0x00
off_8144B78:    .word byte_2006DFE
off_8144B7C:    .word 0x211
off_8144B80:    .word SIOData_Normal_8bitandUARTMode_
loc_8144B84:
    ldr r3, [pc, #0x8144bb8-0x8144b84-4] // =SIOData_Normal_8bitandUARTMode_
    mov r0, #0x84
    lsl r0, r0, #2
    add r0, r12
    ldrb r1, [r0]
    lsl r1, r1, #1
    mov r0, r12
    add r0, #0x28 
    ldrb r2, [r0]
    lsl r0, r2, #4
    sub r0, r0, r2
    lsl r0, r0, #2
    add r1, r1, r0
    mov r0, r12
    add r0, #0x30 
    add r1, r1, r0
    ldrh r0, [r1]
    strh r0, [r3]
loc_8144BA8:
    mov r1, r12
    add r1, #0x28 
    ldrb r0, [r1]
    add r0, #1
loc_8144BB0:
    strb r0, [r1]
loc_8144BB2:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8144BB8:    .word SIOData_Normal_8bitandUARTMode_
// end of function sub_8144AFC

.thumb
sub_8144BBC:
    push {lr}
    ldr r0, [pc, #0x8144bdc-0x8144bbe-2] // =byte_200F460
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_8144BD8
    ldr r2, [pc, #0x8144be0-0x8144bc6-2] // =Timer3Control
    ldrh r1, [r2]
    ldr r0, [pc, #0x8144be4-0x8144bca-2] // =0xFF7F
    and r0, r1
    strh r0, [r2]
    ldr r1, [pc, #0x8144be8-0x8144bd0-4] // =Timer3Counter_Reload
    ldr r2, [pc, #0x8144bec-0x8144bd2-2] // =0xFF7C
    add r0, r2, #0
    strh r0, [r1]
loc_8144BD8:
    pop {r0}
    bx r0
off_8144BDC:    .word byte_200F460
off_8144BE0:    .word Timer3Control
dword_8144BE4:    .word 0xFF7F
off_8144BE8:    .word Timer3Counter_Reload
dword_8144BEC:    .word 0xFF7C
// end of function sub_8144BBC

.thumb
sub_8144BF0:
    push {lr}
    ldr r1, [pc, #0x8144c08-0x8144bf2-2] // =byte_200F460
    add r2, r1, #0
    add r2, #0x29 
    ldrb r0, [r2]
    cmp r0, #8
    bne loc_8144C0C
    add r1, #0x28 
    mov r0, #0
    strb r0, [r1]
    strb r0, [r2]
    b loc_8144C1C
off_8144C08:    .word byte_200F460
loc_8144C0C:
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_8144C1C
    ldr r0, [pc, #0x8144c20-0x8144c12-2] // =Timer3Control
    ldrh r1, [r0]
    mov r2, #0x80
    orr r1, r2
    strh r1, [r0]
loc_8144C1C:
    pop {r0}
    bx r0
off_8144C20:    .word Timer3Control
// end of function sub_8144BF0

    push {r4,r5,lr}
    ldr r1, [pc, #0x8144c68-0x8144c26-2] // =byte_200F460
    ldr r2, [pc, #0x8144c6c-0x8144c28-4] // =0x211
    add r0, r1, r2
    mov r2, #0
    strb r2, [r0]
    mov r3, #0x84
    lsl r3, r3, #2
    add r0, r1, r3
    strb r2, [r0]
    add r5, r1, #0
    add r5, #0x30 
    ldr r4, [pc, #0x8144c70-0x8144c3c-4] // =0xEFFF
loc_8144C3E:
    mov r3, #0
    lsl r0, r2, #4
    add r1, r2, #1
    sub r0, r0, r2
    lsl r2, r0, #2
loc_8144C48:
    lsl r0, r3, #1
    add r0, r0, r2
    add r0, r0, r5
    strh r4, [r0]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #0x1d
    bls loc_8144C48
    lsl r0, r1, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_8144C3E
    pop {r4,r5}
    pop {r0}
    bx r0
off_8144C68:    .word byte_200F460
off_8144C6C:    .word 0x211
dword_8144C70:    .word 0xEFFF
    push {r4-r7,lr}
    ldr r1, [pc, #0x8144cd0-0x8144c76-2] // =byte_200F460
    ldr r2, [pc, #0x8144cd4-0x8144c78-4] // =0x994
    add r0, r1, r2
    mov r2, #0
    strb r2, [r0]
    ldr r3, [pc, #0x8144cd8-0x8144c80-4] // =0x994
    add r0, r1, r3
    strb r2, [r0]
    mov r3, #0
    mov r0, #0x85
    lsl r0, r0, #2
    add r7, r1, r0
    ldr r6, [pc, #0x8144cdc-0x8144c8e-2] // =0xEFFF
loc_8144C90:
    mov r2, #0
    lsl r0, r3, #4
    add r5, r3, #1
    sub r0, r0, r3
    lsl r4, r0, #5
loc_8144C9A:
    mov r3, #0
    lsl r0, r2, #4
    add r1, r2, #1
    sub r0, r0, r2
    lsl r2, r0, #2
loc_8144CA4:
    lsl r0, r3, #1
    add r0, r0, r2
    add r0, r0, r4
    add r0, r0, r7
    strh r6, [r0]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #0x1d
    bls loc_8144CA4
    lsl r0, r1, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_8144C9A
    lsl r0, r5, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_8144C90
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
off_8144CD0:    .word byte_200F460
dword_8144CD4:    .word 0x995
dword_8144CD8:    .word 0x994
dword_8144CDC:    .word 0xEFFF
.thumb
sub_8144CE0:
    ldr r0, [pc, #0x8144ce8-0x8144ce0-4] // =byte_200F460
    ldrb r0, [r0,#0x1] // (byte_200F461 - 0x200f460)
    bx lr
    .balign 4, 0x00
off_8144CE8:    .word byte_200F460
// end of function sub_8144CE0

    ldr r0, [pc, #0x8144cf4-0x8144cec-4] // =byte_200F460
    add r0, #0x29 
    ldrb r0, [r0]
    bx lr
off_8144CF4:    .word byte_200F460
    ldr r1, [pc, #0x8144d00-0x8144cf8-4] // =byte_200F454
    strb r0, [r1]
    bx lr
    .byte 0, 0
off_8144D00:    .word byte_200F454
.thumb
sub_8144D04:
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldr r1, [pc, #0x8144d14-0x8144d08-4] // =byte_200F460
    add r1, #0x2a 
    add r0, r0, r1
    ldrb r0, [r0]
    bx lr
    .balign 4, 0x00
off_8144D14:    .word byte_200F460
// end of function sub_8144D04

.thumb
sub_8144D18:
    ldr r0, [pc, #0x8144d20-0x8144d18-4] // =byte_200F440
    ldrb r0, [r0]
    bx lr
    .byte 0, 0
off_8144D20:    .word byte_200F440
// end of function sub_8144D18

.thumb
sub_8144D24:
    ldr r0, [pc, #0x8144d2c-0x8144d24-4] // =byte_200F448
    ldrb r0, [r0]
    bx lr
    .balign 4, 0x00
off_8144D2C:    .word byte_200F448
// end of function sub_8144D24

.thumb
sub_8144D30:
    ldr r1, [pc, #0x8144d38-0x8144d30-4] // =byte_200F460
    mov r0, #5
    strb r0, [r1,#0x1] // (byte_200F461 - 0x200f460)
    bx lr
off_8144D38:    .word byte_200F460
// end of function sub_8144D30

    push {lr}
    ldr r0, [pc, #0x8144d54-0x8144d3e-2] // =byte_200F440
    ldrb r0, [r0]
    cmp r0, #5
    bhi unk_8144D5C
    ldr r0, [pc, #0x8144d58-0x8144d46-2] // =byte_200F448
    ldrb r0, [r0]
    cmp r0, #5
    bhi unk_8144D5C
    mov r0, #0
    b unk_8144D5E
    .balign 4, 0x00
off_8144D54:    .word byte_200F440
off_8144D58:    .word byte_200F448
unk_8144D5C:    .byte 1
    .byte 0x20
unk_8144D5E:    .byte 2
    .byte 0xBC
    .byte 8
    .byte 0x47 
    .balign 4, 0x00
.thumb
sub_8144D64:
    push {r4,lr}
    bl sub_8149718
    add r4, r0, #0
    ldr r0, [pc, #0x8144da8-0x8144d6c-4] // =0x8001
    cmp r4, r0
    bne loc_8144D78
    ldr r1, [pc, #0x8144dac-0x8144d72-2] // =byte_200FE00
    mov r0, #1
    strb r0, [r1,#0x8] // (byte_200FE08 - 0x200fe00)
loc_8144D78:
    ldr r0, [pc, #0x8144dac-0x8144d78-4] // =byte_200FE00
    ldrb r2, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    add r1, r0, #0
    cmp r2, #0x17
    beq loc_8144D8C
    cmp r2, #1
    beq loc_8144D8C
    mov r0, #0
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8144D8C:
    mov r0, #0
    strb r0, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
    strb r0, [r1,#0xd] // (byte_200FE0D - 0x200fe00)
    strb r0, [r1,#0x1] // (byte_200FE01 - 0x200fe00)
    strb r0, [r1]
    mov r0, #0xff
    strb r0, [r1,#0x6] // (byte_200FE06 - 0x200fe00)
    bl sub_81464B4
    add r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .balign 4, 0x00
dword_8144DA8:    .word 0x8001
off_8144DAC:    .word byte_200FE00
// end of function sub_8144D64

.thumb
sub_8144DB0:
    push {lr}
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    ldr r0, [pc, #0x8144dd0-0x8144db6-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8144DD8
    ldr r0, [pc, #0x8144dd4-0x8144dc0-4] // =byte_200FE00
    ldrb r0, [r0,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r2, #0
    cmp r0, #1
    bne loc_8144DE0
    mov r2, #1
    b loc_8144DE0
    .byte 0, 0
off_8144DD0:    .word dword_2010CC0
off_8144DD4:    .word byte_200FE00
loc_8144DD8:
    ldr r0, [pc, #0x8144dec-0x8144dd8-4] // =byte_200FE00
    ldrb r1, [r0,#0x3] // (byte_200FE03 - 0x200fe00)
    mov r1, #0
    strb r1, [r0,#0x3] // (byte_200FE03 - 0x200fe00)
loc_8144DE0:
    add r0, r2, #0
    bl sub_814B0B4
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8144DEC:    .word byte_200FE00
// end of function sub_8144DB0

.thumb
sub_8144DF0:
    push {r4-r6,lr}
    sub sp, sp, #4
    add r5, r0, #0
    add r6, r1, #0
    cmp r5, #0
    beq loc_8144E38
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    ldr r4, [pc, #0x8144e28-0x8144e02-2] // =byte_200FE00
    ldr r2, [pc, #0x8144e2c-0x8144e04-4] // =0x1000024
    mov r0, sp
    add r1, r4, #0
    bl SWI_CpuSet
    mov r0, #0xff
    strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
    str r5, [r4,#0x40] // (dword_200FE40 - 0x200fe00)
    str r6, [r4,#0x44] // (dword_200FE44 - 0x200fe00)
    ldr r0, [pc, #0x8144e30-0x8144e16-2] // =sub_8145D54+1
    bl sub_8149464
    ldr r0, [pc, #0x8144e34-0x8144e1c-4] // =sub_8145658+1
    bl sub_8149470
    mov r0, #0
    b loc_8144E3A
    .balign 4, 0x00
off_8144E28:    .word byte_200FE00
dword_8144E2C:    .word 0x1000024
off_8144E30:    .word sub_8145D54+1
off_8144E34:    .word sub_8145658+1
loc_8144E38:
    mov r0, #4
loc_8144E3A:
    add sp, sp, #4
    pop {r4-r6}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8144DF0

.thumb
sub_8144E44:
    push {r4,lr}
    sub sp, sp, #4
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    ldr r4, [pc, #0x8144e68-0x8144e4e-2] // =byte_200FE00
    ldr r2, [pc, #0x8144e6c-0x8144e50-4] // =0x1000020
    mov r0, sp
    add r1, r4, #0
    bl SWI_CpuSet
    mov r0, #0xff
    strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
    add sp, sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8144E68:    .word byte_200FE00
dword_8144E6C:    .word 0x1000020
// end of function sub_8144E44

.thumb
sub_8144E70:
    push {r4,lr}
    add r4, r0, #0
    bl sub_8144EA4
    ldr r1, [pc, #0x8144ea0-0x8144e78-4] // =byte_200FE00
    mov r2, #1
    strb r2, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #2
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    str r4, [r1,#0x3c] // (dword_200FE3C - 0x200fe00)
    ldrb r0, [r4,#0x11]
    strb r0, [r1,#0x9] // (byte_200FE09 - 0x200fe00)
    ldrh r0, [r4,#0x12]
    strh r0, [r1,#0x32] // (word_200FE32 - 0x200fe00)
    ldrh r0, [r4,#0x14]
    strh r0, [r1,#0x18] // (word_200FE18 - 0x200fe00)
    ldrb r0, [r4,#0x10]
    cmp r0, #0
    beq loc_8144E98
    strb r2, [r1,#0xb] // (byte_200FE0B - 0x200fe00)
loc_8144E98:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0, 0
off_8144EA0:    .word byte_200FE00
// end of function sub_8144E70

.thumb
sub_8144EA4:
    push {r4,r5,lr}
    ldr r2, [pc, #0x8144ee8-0x8144ea6-2] // =byte_200FE00
    mov r0, #0
    strb r0, [r2,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r1, #0xff
    strb r1, [r2,#0x6] // (byte_200FE06 - 0x200fe00)
    strb r0, [r2,#0x7] // (byte_200FE07 - 0x200fe00)
    strb r0, [r2,#0x10] // (byte_200FE10 - 0x200fe00)
    strb r0, [r2,#0xc] // (byte_200FE0C - 0x200fe00)
    add r1, r2, #0
    add r1, #0x24 
    strb r0, [r1]
    add r1, #0xc
    strb r0, [r1]
    mov r3, #0
    add r5, r2, #0
    add r5, #0x28 
    mov r4, #0
    add r2, #0x34 
loc_8144ECC:
    lsl r1, r3, #1
    add r0, r1, r5
    strh r4, [r0]
    add r1, r1, r2
    strh r4, [r1]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_8144ECC
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8144EE8:    .word byte_200FE00
// end of function sub_8144EA4

.thumb
sub_8144EEC:
    ldr r1, [pc, #0x8144ef4-0x8144eec-4] // =byte_200FE00
    mov r0, #0x15
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    bx lr
off_8144EF4:    .word byte_200FE00
// end of function sub_8144EEC

.thumb
sub_8144EF8:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    add r6, r3, #0
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    lsl r2, r2, #0x10
    lsr r2, r2, #0x10
    mov r8, r2
    ldr r1, [pc, #0x8144f30-0x8144f0e-2] // =byte_200FE00
    ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    beq loc_8144F34
    cmp r0, #8
    bne loc_8144F1E
    cmp r5, #1
    beq loc_8144F34
loc_8144F1E:
    mov r0, #1
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #1
    b loc_8144FC6
    .byte 0, 0
off_8144F30:    .word byte_200FE00
loc_8144F34:
    bl sub_814A7F0
    lsl r0, r0, #0x18
    cmp r0, #0
    bne loc_8144F54
    ldr r1, [pc, #0x8144f50-0x8144f3e-2] // =byte_200FE00
    mov r0, #2
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #2
    b loc_8144FC6
off_8144F50:    .word byte_200FE00
loc_8144F54:
    mov r2, #0
    ldrh r0, [r6]
    ldr r4, [pc, #0x8144f88-0x8144f58-4] // =0xFFFF
    add r1, r6, #2
    ldr r3, [pc, #0x8144f8c-0x8144f5c-4] // =byte_200FE00
    cmp r0, r4
    beq loc_8144F74
loc_8144F62:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #0xf
    bhi loc_8144F74
    ldrh r0, [r1]
    add r1, #2
    cmp r0, r4
    bne loc_8144F62
loc_8144F74:
    cmp r2, #0x10
    bne loc_8144F90
    mov r0, #4
    strh r0, [r3,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #4
    b loc_8144FC6
dword_8144F88:    .word 0xFFFF
off_8144F8C:    .word byte_200FE00
loc_8144F90:
    cmp r5, #1
    bls loc_8144F9E
    mov r0, #1
    strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r5, #1
    mov r7, #0
    b loc_8144FA2
loc_8144F9E:
    mov r0, #0
    strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
loc_8144FA2:
    cmp r5, #0
    beq loc_8144FAC
    mov r0, #5
    strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
    b loc_8144FBA
loc_8144FAC:
    mov r0, #9
    strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r0, [r3,#0xb] // (byte_200FE0B - 0x200fe00)
    cmp r0, #0
    beq loc_8144FBA
    mov r0, #2
    strb r0, [r3,#0xb] // (byte_200FE0B - 0x200fe00)
loc_8144FBA:
    strb r5, [r3,#0x6] // (byte_200FE06 - 0x200fe00)
    strh r7, [r3,#0x1a] // (word_200FE1A - 0x200fe00)
    mov r0, r8
    strh r0, [r3,#0x26] // (word_200FE26 - 0x200fe00)
    str r6, [r3,#0x20] // (dword_200FE20 - 0x200fe00)
    mov r0, #0
loc_8144FC6:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
// end of function sub_8144EF8

.thumb
sub_8144FD0:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    lsl r0, r0, #0x10
    lsr r6, r0, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r8, r1
    ldr r1, [pc, #0x8145004-0x8144fe0-4] // =byte_200FE00
    ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    beq loc_8145008
    sub r0, #9
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #2
    bls loc_8145008
    mov r0, #1
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #1
    b loc_81450A8
    .balign 4, 0x00
off_8145004:    .word byte_200FE00
loc_8145008:
    bl sub_814A7F0
    lsl r0, r0, #0x18
    cmp r0, #0
    bne loc_8145028
    ldr r1, [pc, #0x8145024-0x8145012-2] // =byte_200FE00
    mov r0, #2
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #2
    b loc_81450A8
off_8145024:    .word byte_200FE00
loc_8145028:
    mov r2, #0
    ldr r0, [pc, #0x8145074-0x814502a-2] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r3, [r1,#8]
    ldr r5, [pc, #0x8145078-0x8145030-4] // =byte_200FE00
    add r7, r0, #0
    cmp r2, r3
    bcs loc_8145056
    ldrh r0, [r1,#0x14]
    cmp r0, r6
    beq loc_8145056
    add r4, r1, #0
    add r1, r3, #0
loc_8145042:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, r1
    bcs loc_8145056
    lsl r0, r2, #5
    add r0, r4, r0
    ldrh r0, [r0,#0x14]
    cmp r0, r6
    bne loc_8145042
loc_8145056:
    ldr r0, [r7]
    ldrb r0, [r0,#8]
    cmp r0, #0
    beq loc_8145062
    cmp r2, r0
    bne loc_814507C
loc_8145062:
    mov r0, #3
    strh r0, [r5,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #3
    b loc_81450A8
    .balign 4, 0x00
off_8145074:    .word dword_2010CC0
off_8145078:    .word byte_200FE00
loc_814507C:
    ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    beq loc_8145086
    cmp r0, #9
    bne loc_814508E
loc_8145086:
    mov r0, #0xc
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0xd
    b loc_8145094
loc_814508E:
    mov r0, #0xb
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0xc
loc_8145094:
    strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strh r6, [r5,#0x1e] // (word_200FE1E - 0x200fe00)
    mov r0, r8
    strh r0, [r5,#0x1a] // (word_200FE1A - 0x200fe00)
    ldrb r0, [r5,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #0
    beq loc_81450A6
    mov r0, #7
    strb r0, [r5,#0x7] // (byte_200FE07 - 0x200fe00)
loc_81450A6:
    mov r0, #0
loc_81450A8:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8144FD0

    push {r4-r7,lr}
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    ldr r6, [pc, #0x8145118-0x81450ba-2] // =byte_200FE00
    add r3, r6, #0
    add r3, #0x30 
    ldrb r2, [r3]
    add r0, r1, #0
    and r0, r2
    cmp r0, #0
    beq loc_8145110
    add r0, r2, #0
    bic r0, r1
    strb r0, [r3]
    mov r4, #0
    ldr r7, [pc, #0x814511c-0x81450d2-2] // =dword_2010CC0
    mov r5, #1
    add r3, #4
    mov r2, #0
loc_81450DA:
    add r0, r1, #0
    asr r0, r4
    and r0, r5
    cmp r0, #0
    beq loc_81450EA
    lsl r0, r4, #1
    add r0, r0, r3
    strh r2, [r0]
loc_81450EA:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_81450DA
    ldr r0, [r7]
    ldrb r4, [r0,#3]
    and r4, r1
    cmp r4, #0
    beq loc_8145104
    add r0, r4, #0
    bl sub_81461D8
loc_8145104:
    ldr r0, [pc, #0x8145118-0x8145104-4] // =byte_200FE00
    strh r4, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x33 
    add r1, r4, #0
    bl sub_81461B0
loc_8145110:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8145118:    .word byte_200FE00
off_814511C:    .word dword_2010CC0
.thumb
sub_8145120:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    mov r2, #0
    ldr r1, [pc, #0x814513c-0x8145126-2] // =byte_200FE00
    strb r2, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
    add r5, r1, #0
    cmp r0, #0
    beq loc_8145140
    bl sub_8144EA4
    mov r0, #0x17
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    b loc_814520A
    .balign 4, 0x00
off_814513C:    .word byte_200FE00
loc_8145140:
    ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
// switch 14 cases 
    sub r0, #5
    cmp r0, #0xd
    bhi def_8145150
    lsl r0, r0, #2
    ldr r1, [pc, #0x8145154-0x814514a-2] // =jpt_8145150
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .balign 4, 0x00
off_8145154:    .word jpt_8145150
// jump table for switch statement
jpt_8145150:    .word loc_8145190
    .word loc_814519C
    .word loc_814519C
    .word loc_81451FC
    .word loc_81451A6
    .word loc_81451B0
    .word loc_81451B0
    .word loc_81451BA
    .word loc_81451C4
    .word loc_81451C4
    .word loc_81451FC
    .word loc_81451CA
    .word loc_81451F0
    .word loc_81451F0
loc_8145190:
    mov r1, #0
    mov r0, #8
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r1, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    mov r2, #0x13
    b loc_81451FC
loc_814519C:
    mov r0, #7
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #8
    strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    b loc_81451FC
loc_81451A6:
    mov r0, #0
    strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r2, #0x21 
    b loc_81451FC
loc_81451B0:
    mov r1, #0
    mov r0, #0xb
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r1, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    b loc_81451FC
loc_81451BA:
    mov r0, #0
    strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r2, #0x23 
    b loc_81451FC
loc_81451C4:
    mov r0, #0xe
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    b loc_81451FC
loc_81451CA:
    ldrb r0, [r5,#0x11] // (byte_200FE11 - 0x200fe00)
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r0, [r5,#0x12] // (byte_200FE12 - 0x200fe00)
    strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    ldr r4, [pc, #0x81451ec-0x81451d2-2] // =dword_2010CC0
    ldr r0, [r4]
    ldrb r0, [r0,#3]
    bl sub_81461D8
    ldr r0, [r4]
    ldrb r0, [r0,#3]
    strh r0, [r5,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x33 
    mov r1, #1
    bl sub_81461B0
    b loc_814520A
off_81451EC:    .word dword_2010CC0
loc_81451F0:
    mov r0, #0x12
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    b loc_81451FC
def_8145150:
    strb r2, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r2, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r2, #0x43 
loc_81451FC:
    ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    bne loc_814520A
    add r0, r2, #0
    mov r1, #0
    bl sub_81461B0
loc_814520A:
    pop {r4,r5}
    pop {r0}
    bx r0
// end of function sub_8145120

.thumb
sub_8145210:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    sub sp, sp, #4
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    mov r1, #0
    mov r8, r1
    mov r5, sp
    add r5, #1
    mov r4, sp
    add r4, #2
    mov r1, sp
    add r2, r5, #0
    add r3, r4, #0
    bl sub_814A060
    mov r0, sp
    ldrb r0, [r0]
    add r7, r4, #0
    cmp r0, #0
    beq loc_81452E2
    ldr r1, [pc, #0x81452ac-0x814523e-2] // =byte_200FE00
    mov r0, sp
    ldrb r0, [r0]
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    ldrb r0, [r5]
    strh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
    ldrb r0, [r1,#0x9] // (byte_200FE09 - 0x200fe00)
    add r6, r1, #0
    cmp r0, #0
    beq loc_81452CA
    mov r0, #1
    strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
    ldrb r0, [r6,#0x6] // (byte_200FE06 - 0x200fe00)
    cmp r0, #0
    bne loc_8145266
    ldrb r0, [r5]
    cmp r0, #0
    bne loc_8145266
    mov r0, #4
    strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
loc_8145266:
    ldrb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
    cmp r0, #1
    bne loc_81452B0
    mov r2, #0
    mov r4, sp
    mov r5, #1
    mov r12, r6
    mov r3, r12
    add r3, #0x30 
    mov r6, #0x34 
    add r6, r12
    mov r9, r6
loc_814527E:
    ldrb r0, [r4]
    asr r0, r2
    and r0, r5
    cmp r0, #0
    beq loc_814529C
    add r0, r5, #0
    lsl r0, r2
    ldrb r1, [r3]
    orr r0, r1
    strb r0, [r3]
    lsl r0, r2, #1
    add r0, r9
    mov r6, r12
    ldrh r1, [r6,#0x32] // (word_200FE32 - 0x200fe00)
    strh r1, [r0]
loc_814529C:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_814527E
    mov r0, #0x31 
    b loc_81452C2
    .balign 4, 0x00
off_81452AC:    .word byte_200FE00
loc_81452B0:
    mov r0, #0
    strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
    mov r0, sp
    ldrb r0, [r0]
    bl sub_81461D8
    mov r0, #1
    mov r8, r0
    mov r0, #0x33 
loc_81452C2:
    mov r1, #1
    bl sub_81461B0
    b loc_81452DE
loc_81452CA:
    mov r0, sp
    ldrb r0, [r0]
    bl sub_81461D8
    mov r1, #1
    mov r8, r1
    mov r0, #0x30 
    mov r1, #2
    bl sub_81461B0
loc_81452DE:
    bl sub_81464B4
loc_81452E2:
    ldr r0, [pc, #0x81453cc-0x81452e2-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_81453BC
    ldrb r0, [r7]
    cmp r0, #0
    beq loc_8145340
    mov r2, #0
    ldr r6, [pc, #0x81453d0-0x81452f4-4] // =byte_200FE00
    mov r3, #1
    add r4, r6, #0
    add r4, #0x34 
    add r6, #0x30 
    add r5, r7, #0
loc_8145300:
    ldrb r0, [r6]
    asr r0, r2
    and r0, r3
    cmp r0, #0
    beq loc_814531C
    ldrb r0, [r5]
    asr r0, r2
    and r0, r3
    cmp r0, #0
    beq loc_814531C
    lsl r0, r2, #1
    add r0, r0, r4
    mov r1, #0
    strh r1, [r0]
loc_814531C:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_8145300
    ldr r3, [pc, #0x81453d0-0x8145326-2] // =byte_200FE00
    add r2, r3, #0
    add r2, #0x30 
    ldrb r1, [r7]
    ldrb r0, [r2]
    bic r0, r1
    strb r0, [r2]
    ldrb r0, [r7]
    strh r0, [r3,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x32 
    mov r1, #1
    bl sub_81461B0
loc_8145340:
    ldr r0, [pc, #0x81453d0-0x8145340-4] // =byte_200FE00
    add r3, r0, #0
    add r3, #0x30 
    ldrb r1, [r3]
    add r6, r0, #0
    cmp r1, #0
    beq loc_81453B8
    mov r4, #0
    mov r2, #0
    mov r5, #1
loc_8145354:
    ldrb r0, [r3]
    asr r0, r2
    and r0, r5
    cmp r0, #0
    beq loc_8145386
    lsl r1, r2, #1
    add r0, r6, #0
    add r0, #0x34 
    add r1, r1, r0
    ldrh r0, [r1]
    cmp r0, #0
    beq loc_8145386
    sub r0, #1
    strh r0, [r1]
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_8145386
    add r0, r5, #0
    lsl r0, r2
    ldrb r1, [r3]
    bic r1, r0
    strb r1, [r3]
    orr r4, r0
    lsl r0, r4, #0x18
    lsr r4, r0, #0x18
loc_8145386:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_8145354
    cmp r4, #0
    beq loc_81453AA
    add r0, r4, #0
    bl sub_81461D8
    mov r6, #1
    mov r8, r6
    ldr r0, [pc, #0x81453d0-0x814539e-2] // =byte_200FE00
    strh r4, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x33 
    mov r1, #1
    bl sub_81461B0
loc_81453AA:
    ldr r0, [pc, #0x81453d0-0x81453aa-2] // =byte_200FE00
    add r1, r0, #0
    add r1, #0x30 
    ldrb r1, [r1]
    add r6, r0, #0
    cmp r1, #0
    bne loc_81453BC
loc_81453B8:
    mov r0, #0
    strb r0, [r6,#0xa] // (byte_200FE0A - 0x200fe00)
loc_81453BC:
    mov r0, r8
    add sp, sp, #4
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r1}
    bx r1
off_81453CC:    .word dword_2010CC0
off_81453D0:    .word byte_200FE00
// end of function sub_8145210

.thumb
sub_81453D4:
    push {lr}
    bl sub_8149F80
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_81453EC
    mov r0, #0xf1
    mov r1, #0
    bl sub_81461B0
    bl sub_81464B4
loc_81453EC:
    pop {r0}
    bx r0
// end of function sub_81453D4

.thumb
sub_81453F0:
    push {r4,lr}
    add r3, r0, #0
    ldr r1, [pc, #0x8145408-0x81453f4-4] // =byte_200FE00
    ldr r2, [r1,#0x40] // (dword_200FE40 - 0x200fe00)
    cmp r2, #0
    bne loc_814540C
    ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    beq loc_814540C
    strb r2, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    b loc_81455DA
    .balign 4, 0x00
off_8145408:    .word byte_200FE00
loc_814540C:
    ldr r0, [pc, #0x8145440-0x814540c-4] // =byte_200FE00
    ldrb r0, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #0
    beq loc_814541A
    add r0, r3, #0
    bl sub_81455E8
loc_814541A:
    ldr r4, [pc, #0x8145440-0x814541a-2] // =byte_200FE00
    ldrb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    bne loc_8145424
    b loc_81455A4
loc_8145424:
    bl sub_8149568
    mov r0, #1
    strb r0, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    ldrb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
// switch 23 cases 
    sub r0, #1
    cmp r0, #0x16
    bls loc_8145436
    b def_814543E
loc_8145436:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8145444-0x8145438-4] // =jpt_814543E
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
off_8145440:    .word byte_200FE00
off_8145444:    .word jpt_814543E
// jump table for switch statement
jpt_814543E:    .word loc_81454C8
    .word loc_8145500
    .word loc_8145506
    .word loc_814551C
    .word loc_8145534
    .word loc_814553A
    .word loc_8145540
    .word def_814543E
    .word loc_8145546
    .word loc_814554C
    .word loc_8145552
    .word loc_8145558
    .word loc_8145568
    .word loc_814556E
    .word def_814543E
    .word loc_8145574
    .word loc_8145584
    .word loc_814558A
    .word loc_8145590
    .word def_814543E
    .word loc_8145596
    .word def_814543E
    .word loc_81454A4
loc_81454A4:
    bl sub_8144D64
    ldr r1, [pc, #0x81454c0-0x81454a8-4] // =0x8001
    mov r2, #0xff
    cmp r0, r1
    bne loc_81454B2
    mov r2, #0x44 
loc_81454B2:
    ldr r1, [pc, #0x81454c4-0x81454b2-2] // =byte_200FE00
    mov r0, #0
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    add r0, r2, #0
    b loc_81454F2
    .byte 0, 0
dword_81454C0:    .word 0x8001
off_81454C4:    .word byte_200FE00
loc_81454C8:
    bl sub_8144D64
    ldr r1, [pc, #0x81454e0-0x81454cc-4] // =0x8001
    cmp r0, r1
    bne loc_81454E8
    ldr r0, [pc, #0x81454e4-0x81454d2-2] // =byte_200FE00
    ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r1, #3
    strb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    b def_814543E
    .byte 0, 0
dword_81454E0:    .word 0x8001
off_81454E4:    .word byte_200FE00
loc_81454E8:
    ldr r1, [pc, #0x81454fc-0x81454e8-4] // =byte_200FE00
    mov r0, #0
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0xff
loc_81454F2:
    mov r1, #0
    bl sub_81461B0
    b def_814543E
    .balign 4, 0x00
off_81454FC:    .word byte_200FE00
loc_8145500:
    bl sub_8149754
    b def_814543E
loc_8145506:
    ldr r0, [pc, #0x8145518-0x8145506-2] // =byte_200FE00
    ldr r2, [r0,#0x3c] // (dword_200FE3C - 0x200fe00)
    ldrh r0, [r2,#2]
    ldrb r1, [r2]
    ldrb r2, [r2,#1]
    bl sub_814978C
    b def_814543E
    .balign 4, 0x00
off_8145518:    .word byte_200FE00
loc_814551C:
    ldr r0, [pc, #0x8145530-0x814551c-4] // =byte_200FE00
    ldr r3, [r0,#0x3c] // (dword_200FE3C - 0x200fe00)
    ldrb r0, [r3,#4]
    ldrh r1, [r3,#6]
    ldr r2, [r3,#8]
    ldr r3, [r3,#0xc]
    bl sub_81497F4
    b def_814543E
    .byte 0, 0
off_8145530:    .word byte_200FE00
loc_8145534:
    bl sub_814991C
    b def_814543E
loc_814553A:
    bl sub_81499F8
    b def_814543E
loc_8145540:
    bl sub_8149A0C
    b def_814543E
loc_8145546:
    bl sub_8149BE4
    b def_814543E
loc_814554C:
    bl sub_8149C1C
    b def_814543E
loc_8145552:
    bl sub_8149C54
    b def_814543E
loc_8145558:
    ldr r0, [pc, #0x8145564-0x8145558-4] // =byte_200FE00
    ldrh r0, [r0,#0x1e] // (word_200FE1E - 0x200fe00)
    bl sub_8149D78
    b def_814543E
    .balign 4, 0x00
off_8145564:    .word byte_200FE00
loc_8145568:
    bl sub_8149DE0
    b def_814543E
loc_814556E:
    bl sub_8149F48
    b def_814543E
loc_8145574:
    ldr r0, [pc, #0x8145580-0x8145574-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#3]
    bl sub_814A63C
    b def_814543E
off_8145580:    .word dword_2010CC0
loc_8145584:
    bl sub_814A698
    b def_814543E
loc_814558A:
    bl sub_814A780
    b def_814543E
loc_8145590:
    bl sub_814A7C4
    b def_814543E
loc_8145596:
    bl sub_8149644
def_814543E:
    bl sub_8149568
    ldr r1, [pc, #0x81455e0-0x814559e-2] // =byte_200FE00
    mov r0, #0
    strb r0, [r1,#0xe] // (byte_200FE0E - 0x200fe00)
loc_81455A4:
    ldr r0, [pc, #0x81455e0-0x81455a4-4] // =byte_200FE00
    ldrb r0, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    sub r0, #0x12
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #1
    bhi loc_81455B4
    b loc_814541A
loc_81455B4:
    ldr r0, [pc, #0x81455e4-0x81455b4-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_81455CA
    mov r0, #0
    bl sub_8145210
    lsl r0, r0, #0x18
    cmp r0, #0
    bne loc_81455DA
loc_81455CA:
    bl sub_8145DD8
    bl sub_8145FFC
    bl sub_814610C
    bl sub_81462D8
loc_81455DA:
    pop {r4}
    pop {r0}
    bx r0
off_81455E0:    .word byte_200FE00
off_81455E4:    .word dword_2010CC0
// end of function sub_81453F0

.thumb
sub_81455E8:
    push {r4,lr}
    add r3, r0, #0
    ldr r0, [pc, #0x814560c-0x81455ec-4] // =byte_200FE00
    ldrb r1, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
    add r4, r0, #0
    cmp r1, #5
    bne loc_8145612
    mov r2, #1
    strb r2, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
    strb r1, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrh r0, [r4,#0x1c] // (word_200FE1C - 0x200fe00)
    strh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8145610
    mov r0, #6
    strb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
    b loc_8145612
off_814560C:    .word byte_200FE00
loc_8145610:
    strb r2, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
loc_8145612:
    ldrb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #1
    bne loc_814563C
    strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
    mov r0, #5
    strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    add r0, r3, #0
    mov r1, #0x8c
    bl sub_814DB34
    strh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
    mov r1, #0x8c
    sub r1, r1, r0
    strh r1, [r4,#0x1c] // (word_200FE1C - 0x200fe00)
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8145638
    mov r0, #2
    b loc_814563A
loc_8145638:
    mov r0, #3
loc_814563A:
    strb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
loc_814563C:
    ldrb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #3
    bne loc_8145652
    mov r0, #0
    strb r0, [r4,#0x6] // (byte_200FE06 - 0x200fe00)
    mov r0, #0x28 
    strh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
    mov r0, #4
    strb r0, [r4,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r0, #9
    strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145652:
    pop {r4}
    pop {r0}
    bx r0
// end of function sub_81455E8

.thumb
sub_8145658:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    mov r8, r0
    lsl r1, r1, #0x10
    lsr r6, r1, #0x10
    ldr r0, [pc, #0x8145690-0x814566a-2] // =byte_200FE00
    ldrb r1, [r0,#0xe] // (byte_200FE0E - 0x200fe00)
    add r7, r0, #0
    cmp r1, #0
    bne loc_8145676
    b loc_8145B3C
loc_8145676:
    mov r0, #0
    strb r0, [r7,#0xe] // (byte_200FE0E - 0x200fe00)
    mov r0, r8
// switch 46 cases 
    sub r0, #0x10
    cmp r0, #0x2d 
    bls loc_8145684
    b def_814568C
loc_8145684:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8145694-0x8145686-2] // =jpt_814568C
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .byte 0, 0
off_8145690:    .word byte_200FE00
off_8145694:    .word jpt_814568C
// jump table for switch statement
jpt_814568C:    .word loc_8145750
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word loc_814577C
    .word loc_8145768
    .word def_814568C
    .word loc_8145790
    .word loc_81457A0
    .word loc_81457C4
    .word loc_81457E4
    .word loc_8145804
    .word loc_8145874
    .word loc_81458A6
    .word loc_81458BC
    .word loc_8145904
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word loc_8145A7C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word loc_8145974
    .word loc_81459C0
    .word loc_8145A08
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word def_814568C
    .word loc_8145B1C
loc_8145750:
    cmp r6, #0
    beq loc_8145756
    b def_814568C
loc_8145756:
    ldr r0, [pc, #0x8145764-0x8145756-2] // =byte_200FE00
    ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r1, #4
    strb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    b def_814568C
    .balign 4, 0x00
off_8145764:    .word byte_200FE00
loc_8145768:
    cmp r6, #0
    beq loc_814576E
    b def_814568C
loc_814576E:
    ldr r0, [pc, #0x8145778-0x814576e-2] // =byte_200FE00
    ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    b def_814568C
off_8145778:    .word byte_200FE00
loc_814577C:
    cmp r6, #0
    beq loc_8145782
    b def_814568C
loc_8145782:
    ldr r0, [pc, #0x814578c-0x8145782-2] // =byte_200FE00
    strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r6, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0
    b loc_8145A9A
off_814578C:    .word byte_200FE00
loc_8145790:
    cmp r6, #0
    beq loc_8145796
    b def_814568C
loc_8145796:
    ldr r1, [pc, #0x814579c-0x8145796-2] // =byte_200FE00
    mov r0, #6
    b loc_81458B0
off_814579C:    .word byte_200FE00
loc_81457A0:
    ldr r1, [pc, #0x81457c0-0x81457a0-4] // =byte_200FE00
    ldrh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
    cmp r0, #0
    bne loc_81457AA
    b def_814568C
loc_81457AA:
    sub r0, #1
    strh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_81457B6
    b def_814568C
loc_81457B6:
    mov r0, #7
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #8
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    b def_814568C
off_81457C0:    .word byte_200FE00
loc_81457C4:
    cmp r6, #0
    beq loc_81457CA
    b def_814568C
loc_81457CA:
    ldr r0, [pc, #0x81457e0-0x81457ca-2] // =byte_200FE00
    ldrb r1, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r1, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    ldrb r0, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #0
    beq loc_81457DA
    b def_814568C
loc_81457DA:
    mov r0, #0x13
    b loc_8145A9A
    .byte 0, 0
off_81457E0:    .word byte_200FE00
loc_81457E4:
    cmp r6, #0
    beq loc_81457EA
    b def_814568C
loc_81457EA:
    ldrb r0, [r7,#0xb] // (byte_200FE0B - 0x200fe00)
    cmp r0, #1
    bne loc_81457FA
    ldrh r0, [r7,#0x1a] // (word_200FE1A - 0x200fe00)
    cmp r0, #1
    bls loc_81457FA
    sub r0, #1
    strh r0, [r7,#0x1a] // (word_200FE1A - 0x200fe00)
loc_81457FA:
    ldr r1, [pc, #0x8145800-0x81457fa-2] // =byte_200FE00
    mov r0, #0xa
    b loc_81458B0
off_8145800:    .word byte_200FE00
loc_8145804:
    cmp r6, #0
    bne loc_814584A
    bl sub_8146138
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r1, sp
    strb r0, [r1]
    ldr r4, [pc, #0x814586c-0x8145814-4] // =byte_200FE00
    strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
    cmp r0, #0
    beq loc_8145824
    mov r0, #0x20 
    mov r1, #1
    bl sub_81461B0
loc_8145824:
    ldrb r0, [r4,#0xb] // (byte_200FE0B - 0x200fe00)
    cmp r0, #0
    beq loc_814584A
    ldrh r0, [r4,#0x1a] // (word_200FE1A - 0x200fe00)
    cmp r0, #1
    beq loc_814584A
    ldr r0, [pc, #0x8145870-0x8145830-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#8]
    cmp r0, #4
    bne loc_814584A
    bl sub_8149C54
    bl sub_8149568
    mov r0, #9
    strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #1
    strb r0, [r4,#0xb] // (byte_200FE0B - 0x200fe00)
loc_814584A:
    ldr r1, [pc, #0x814586c-0x814584a-2] // =byte_200FE00
    ldrh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
    cmp r0, #0
    bne loc_8145854
    b def_814568C
loc_8145854:
    sub r0, #1
    strh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8145860
    b def_814568C
loc_8145860:
    mov r0, #0xb
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    b def_814568C
    .balign 4, 0x00
off_814586C:    .word byte_200FE00
off_8145870:    .word dword_2010CC0
loc_8145874:
    cmp r6, #0
    beq loc_814587A
    b def_814568C
loc_814587A:
    ldr r2, [pc, #0x8145894-0x814587a-2] // =byte_200FE00
    ldrb r0, [r2,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r1, [r2,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r1, #0
    bne loc_8145898
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_814588E
    b def_814568C
loc_814588E:
    mov r0, #0x21 
    b loc_8145A9A
    .balign 4, 0x00
off_8145894:    .word byte_200FE00
loc_8145898:
    cmp r1, #7
    bne loc_814589E
    b def_814568C
loc_814589E:
    mov r0, #5
    strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r0, [r2,#0x7] // (byte_200FE07 - 0x200fe00)
    b def_814568C
loc_81458A6:
    cmp r6, #0
    beq loc_81458AC
    b def_814568C
loc_81458AC:
    ldr r1, [pc, #0x81458b8-0x81458ac-4] // =byte_200FE00
    mov r0, #0xd
loc_81458B0:
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    b def_814568C
    .balign 4, 0x00
off_81458B8:    .word byte_200FE00
loc_81458BC:
    cmp r6, #0
    bne loc_81458E0
    ldr r4, [pc, #0x81458fc-0x81458c0-4] // =byte_200FE10
    mov r0, sp
    add r1, r4, #0
    bl sub_8149F14
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_81458E0
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_81458E0
    add r1, r4, #0
    sub r1, #0x10
    mov r0, #0xe
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_81458E0:
    ldr r1, [pc, #0x8145900-0x81458e0-4] // =byte_200FE00
    ldrh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
    cmp r0, #0
    bne loc_81458EA
    b def_814568C
loc_81458EA:
    sub r0, #1
    strh r0, [r1,#0x1a] // (word_200FE1A - 0x200fe00)
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_81458F6
    b def_814568C
loc_81458F6:
    mov r0, #0xe
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    b def_814568C
off_81458FC:    .word byte_200FE10
off_8145900:    .word byte_200FE00
loc_8145904:
    cmp r6, #0
    beq loc_814590A
    b def_814568C
loc_814590A:
    ldr r4, [pc, #0x814593c-0x814590a-2] // =byte_200FE10
    mov r0, sp
    add r1, r4, #0
    bl sub_8149F14
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_814591C
    b def_814568C
loc_814591C:
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8145940
    add r1, r4, #0
    sub r1, #0x10
    mov r0, #0x13
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0xf
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    mov r0, #0x22 
    strh r0, [r1,#0x1e] // (word_200FE1E - 0x200fe00)
    ldrb r0, [r1,#0x10] // (byte_200FE10 - 0x200fe00)
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    b loc_8145960
    .balign 4, 0x00
off_814593C:    .word byte_200FE10
loc_8145940:
    add r1, r4, #0
    sub r1, #0x10
    strb r6, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r6, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0x23 
    strh r0, [r1,#0x1e] // (word_200FE1E - 0x200fe00)
    mov r0, sp
    ldrb r0, [r0]
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    ldrb r0, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #0
    beq loc_8145960
    mov r0, #3
    strb r0, [r1,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r0, #9
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145960:
    ldr r4, [pc, #0x8145970-0x8145960-4] // =byte_200FE00
    ldrb r0, [r4,#0x1e] // (word_200FE1E - 0x200fe00)
    mov r1, #1
    bl sub_81461B0
    mov r0, #0
    strh r0, [r4,#0x1e] // (word_200FE1E - 0x200fe00)
    b def_814568C
off_8145970:    .word byte_200FE00
loc_8145974:
    cmp r6, #0
    beq loc_814597A
    b def_814568C
loc_814597A:
    ldr r2, [pc, #0x81459bc-0x814597a-2] // =dword_2010CC0
    ldr r3, [r2]
    ldrb r0, [r3,#3]
    mov r1, #0
    strh r0, [r7,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x11
    strb r0, [r7,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r1, [r7,#0x10] // (byte_200FE10 - 0x200fe00)
    ldrb r0, [r3,#3]
    mov r1, #1
    and r0, r1
    cmp r0, #0
    beq loc_8145998
    b def_814568C
loc_8145998:
    add r1, r7, #0
    mov r3, #1
loc_814599C:
    ldrb r0, [r1,#0x10] // (byte_200FE10 - 0x200fe00)
    add r0, #1
    strb r0, [r1,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #3
    bls loc_81459AC
    b def_814568C
loc_81459AC:
    ldr r0, [r2]
    ldrb r0, [r0,#3]
    ldrb r4, [r7,#0x10] // (byte_200FE10 - 0x200fe00)
    asr r0, r4
    and r0, r3
    cmp r0, #0
    beq loc_814599C
    b def_814568C
off_81459BC:    .word dword_2010CC0
loc_81459C0:
    cmp r6, #0
    bne loc_81459DE
    mov r0, sp
    bl sub_814A750
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_81459DE
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #1
    bhi loc_81459DE
    ldr r1, [pc, #0x8145a04-0x81459d8-4] // =byte_200FE00
    mov r0, #0x12
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_81459DE:
    ldr r2, [pc, #0x8145a04-0x81459de-2] // =byte_200FE00
    ldrb r0, [r2,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #1
    add r1, r2, #0
    add r1, #0x34 
    add r1, r0, r1
    ldrh r0, [r1]
    cmp r0, #0
    bne loc_81459F2
    b def_814568C
loc_81459F2:
    sub r0, #1
    strh r0, [r1]
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_81459FE
    b def_814568C
loc_81459FE:
    mov r0, #0x12
    strb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
    b def_814568C
off_8145A04:    .word byte_200FE00
loc_8145A08:
    cmp r6, #0
    beq loc_8145A0E
    b def_814568C
loc_8145A0E:
    mov r0, sp
    bl sub_814A750
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8145A1C
    b def_814568C
loc_8145A1C:
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8145A38
    ldr r1, [pc, #0x8145a34-0x8145a24-4] // =byte_200FE00
    mov r0, #0x13
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0x16
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    mov r0, #0x32 
    strh r0, [r1,#0x1e] // (word_200FE1E - 0x200fe00)
    b loc_8145A4C
off_8145A34:    .word byte_200FE00
loc_8145A38:
    ldr r4, [pc, #0x8145a74-0x8145a38-4] // =byte_200FE00
    strb r6, [r4,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r6, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    ldr r0, [pc, #0x8145a78-0x8145a3e-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#3]
    bl sub_81461D8
    mov r0, #0x33 
    strh r0, [r4,#0x1e] // (word_200FE1E - 0x200fe00)
loc_8145A4C:
    ldr r5, [pc, #0x8145a74-0x8145a4c-4] // =byte_200FE00
    ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #1
    add r1, r5, #0
    add r1, #0x34 
    add r0, r0, r1
    mov r1, #0
    mov r4, #0
    strh r4, [r0]
    add r0, r5, #0
    add r0, #0x30 
    strb r1, [r0]
    strb r1, [r5,#0xa] // (byte_200FE0A - 0x200fe00)
    ldrb r0, [r5,#0x1e] // (word_200FE1E - 0x200fe00)
    mov r1, #1
    bl sub_81461B0
    strh r4, [r5,#0x1e] // (word_200FE1E - 0x200fe00)
    b def_814568C
    .balign 4, 0x00
off_8145A74:    .word byte_200FE00
off_8145A78:    .word dword_2010CC0
loc_8145A7C:
    cmp r6, #0
    bne def_814568C
    ldr r5, [pc, #0x8145aa4-0x8145a80-4] // =byte_200FE00
    ldrb r1, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    add r0, r1, #0
    cmp r0, #0x16
    bne loc_8145AA8
    ldrb r0, [r5,#0x11] // (byte_200FE11 - 0x200fe00)
    strb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r0, [r5,#0x12] // (byte_200FE12 - 0x200fe00)
    strb r0, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r0, #1
    strb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r0, #0x41 
loc_8145A9A:
    mov r1, #0
    bl sub_81461B0
    b def_814568C
    .balign 4, 0x00
off_8145AA4:    .word byte_200FE00
loc_8145AA8:
    cmp r0, #0xf
    bne def_814568C
    strb r1, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r4, #1
    strb r4, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r0, #0x41 
    mov r1, #0
    bl sub_81461B0
    add r1, r5, #0
    add r1, #0x24 
    ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r4, r0
    ldrb r0, [r1]
    orr r4, r0
    strb r4, [r1]
    ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #1
    add r1, #4
    add r0, r0, r1
    ldrh r1, [r5,#0x26] // (word_200FE26 - 0x200fe00)
    mov r7, #0
    strh r1, [r0]
    ldrb r1, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    mov r0, #4
    bl sub_814A934
    mov r4, sp
    ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    mov r1, #0xe
    bl sub_814ABB8
    strb r0, [r4]
    lsl r0, r0, #0x18
    cmp r0, #0
    beq def_814568C
    strb r7, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r7, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    bl sub_81464B4
    ldr r0, [pc, #0x8145b18-0x8145afa-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    orr r0, r1
    bl sub_81461D8
    mov r0, sp
    ldrb r0, [r0]
    strh r0, [r5,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x25 
    mov r1, #1
    bl sub_81461B0
    b def_814568C
off_8145B18:    .word dword_2010CC0
loc_8145B1C:
    cmp r6, #0
    bne def_814568C
    ldr r0, [pc, #0x8145b38-0x8145b20-4] // =byte_200FE00
    strb r6, [r0,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r6, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0x42 
    mov r1, #0
    bl sub_81461B0
def_814568C:
    ldr r1, [pc, #0x8145b38-0x8145b2e-2] // =byte_200FE00
    mov r0, #1
    strb r0, [r1,#0xe] // (byte_200FE0E - 0x200fe00)
    b loc_8145B8A
    .balign 4, 0x00
off_8145B38:    .word byte_200FE00
loc_8145B3C:
    cmp r6, #3
    bne loc_8145B8A
    ldrb r0, [r7,#0xf] // (byte_200FE0F - 0x200fe00)
    cmp r0, #0
    beq loc_8145B8A
    mov r3, r8
    cmp r3, #0x24 
    beq loc_8145B54
    cmp r3, #0x26 
    beq loc_8145B54
    cmp r3, #0x27 
    bne loc_8145B8A
loc_8145B54:
    bl sub_814957C
    bl sub_8149568
    mov r0, sp
    bl sub_8149590
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8145B8A
    ldr r4, [pc, #0x8145ba0-0x8145b6a-2] // =dword_2010CC0
    ldr r0, [r4]
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_8145B8A
    bl sub_8149454
    ldr r1, [r4]
    ldrb r1, [r1,#2]
    strb r1, [r0,#4]
    mov r1, #1
    strb r1, [r0,#5]
    mov r0, #0x29 
    bl sub_8145210
    mov r6, #0
loc_8145B8A:
    mov r4, r8
    cmp r4, #0x26 
    bne loc_8145B92
    b loc_8145CA6
loc_8145B92:
    cmp r4, #0x26 
    bgt loc_8145BA4
    cmp r4, #0x10
    bne loc_8145B9C
    b loc_8145CC4
loc_8145B9C:
    b loc_8145CE2
    .byte 0, 0
off_8145BA0:    .word dword_2010CC0
loc_8145BA4:
    mov r0, r8
    cmp r0, #0x30 
    beq loc_8145BB2
    cmp r0, #0x3d 
    bne loc_8145BB0
    b loc_8145CC4
loc_8145BB0:
    b loc_8145CE2
loc_8145BB2:
    cmp r6, #0
    beq loc_8145BB8
    b loc_8145CE6
loc_8145BB8:
    bl sub_8149454
    ldr r4, [pc, #0x8145c68-0x8145bbc-4] // =byte_200FE00
    ldrb r0, [r0,#8]
    strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
    bl sub_81461FC
    add r2, r4, #0
    add r2, #0x30 
    ldrb r1, [r2]
    cmp r1, #0
    beq loc_8145C0E
    ldrb r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
    add r3, r1, #0
    bic r3, r0
    add r0, r3, #0
    strb r0, [r2]
    mov r3, #0
    add r7, r4, #0
    add r1, r7, #0
    mov r5, #1
    add r4, r1, #0
    add r4, #0x34 
    mov r2, #0
loc_8145BE8:
    ldrh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    asr r0, r3
    and r0, r5
    cmp r0, #0
    beq loc_8145BF8
    lsl r0, r3, #1
    add r0, r0, r4
    strh r2, [r0]
loc_8145BF8:
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_8145BE8
    ldr r1, [pc, #0x8145c68-0x8145c02-2] // =byte_200FE00
    ldrb r0, [r1,#0x6] // (byte_200FE06 - 0x200fe00)
    cmp r0, #0
    bne loc_8145C0E
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145C0E:
    mov r3, sp
    ldr r1, [pc, #0x8145c68-0x8145c10-4] // =byte_200FE00
    ldrb r2, [r1]
    ldrb r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    and r0, r2
    strb r0, [r3]
    mov r3, #0
    add r7, r1, #0
    ldr r2, [pc, #0x8145c6c-0x8145c1e-2] // =dword_2010CC0
    mov r1, sp
    mov r5, #1
    add r4, r7, #0
loc_8145C26:
    ldrb r0, [r1]
    asr r0, r3
    and r0, r5
    cmp r0, #0
    beq loc_8145C3A
    ldrb r0, [r4,#0x1] // (byte_200FE01 - 0x200fe00)
    cmp r0, #0
    beq loc_8145C3A
    sub r0, #1
    strb r0, [r7,#0x1] // (byte_200FE01 - 0x200fe00)
loc_8145C3A:
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_8145C26
    ldrb r1, [r7,#0x14] // (word_200FE14 - 0x200fe00)
    ldrb r0, [r7]
    bic r0, r1
    strb r0, [r7]
    ldrb r1, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r1, #0
    beq loc_8145C84
    ldr r0, [r2]
    ldrb r0, [r0]
    cmp r0, #0xff
    bne loc_8145C96
    cmp r1, #8
    bne loc_8145C70
    ldrh r0, [r7,#0x1c] // (word_200FE1C - 0x200fe00)
    strh r0, [r7,#0x1a] // (word_200FE1A - 0x200fe00)
    mov r0, #6
    strb r0, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
    b loc_8145C82
off_8145C68:    .word byte_200FE00
off_8145C6C:    .word dword_2010CC0
loc_8145C70:
    ldrb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
    sub r0, #6
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #1
    bls loc_8145C84
    mov r0, #1
    strb r0, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r0, #5
loc_8145C82:
    strb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145C84:
    ldr r0, [r2]
    ldrb r0, [r0]
    cmp r0, #0xff
    bne loc_8145C96
    ldrb r0, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0
    bne loc_8145C96
    mov r0, #0xff
    strb r0, [r7,#0x6] // (byte_200FE06 - 0x200fe00)
loc_8145C96:
    ldrb r0, [r7,#0xe] // (byte_200FE0E - 0x200fe00)
    cmp r0, #0
    bne loc_8145CE2
    mov r0, #0x40 
    mov r1, #1
    bl sub_81461B0
    b loc_8145CE2
loc_8145CA6:
    bl sub_81460B0
    ldr r0, [pc, #0x8145cc0-0x8145caa-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0xff
    beq loc_8145CE2
    mov r0, #0x50 
    mov r1, #0
    bl sub_81461B0
    b loc_8145CE2
    .byte 0, 0
off_8145CC0:    .word dword_2010CC0
loc_8145CC4:
    cmp r6, #0
    bne loc_8145CE6
    ldr r0, [pc, #0x8145d10-0x8145cc8-4] // =byte_200FE00
    strb r6, [r0,#0xd] // (byte_200FE0D - 0x200fe00)
    strb r6, [r0,#0x1] // (byte_200FE01 - 0x200fe00)
    strb r6, [r0]
    mov r1, #0xff
    strb r1, [r0,#0x6] // (byte_200FE06 - 0x200fe00)
    bl sub_81464B4
    mov r4, r8
    cmp r4, #0x3d 
    bne loc_8145CE2
    bl sub_8144E44
loc_8145CE2:
    cmp r6, #0
    beq loc_8145D36
loc_8145CE6:
    ldr r7, [pc, #0x8145d10-0x8145ce6-2] // =byte_200FE00
    mov r0, r8
    cmp r0, #0x1c
    bne loc_8145D18
    cmp r6, #0
    beq loc_8145D18
    ldrb r0, [r7,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #4
    bne loc_8145D18
    ldr r2, [pc, #0x8145d14-0x8145cf8-4] // =dword_2010CC0
    ldr r1, [r2]
    mov r0, #1
    strb r0, [r1]
    ldr r1, [r2]
    mov r0, #0xf
    strb r0, [r1,#2]
    bl sub_81461D8
    bl sub_8149568
    b loc_8145D48
off_8145D10:    .word byte_200FE00
off_8145D14:    .word dword_2010CC0
loc_8145D18:
    mov r1, #0
    mov r3, r8
    strh r3, [r7,#0x14] // (word_200FE14 - 0x200fe00)
    strh r6, [r7,#0x16] // (word_200FE16 - 0x200fe00)
    ldrb r0, [r7,#0xe] // (byte_200FE0E - 0x200fe00)
    cmp r0, #0
    beq loc_8145D2A
    strb r1, [r7,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r1, [r7,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145D2A:
    mov r0, #0xf0
    mov r1, #2
    bl sub_81461B0
    bl sub_81464B4
loc_8145D36:
    mov r4, r8
    cmp r4, #0xff
    bne loc_8145D48
    mov r0, #0xf2
    mov r1, #0
    bl sub_81461B0
    bl sub_81464B4
loc_8145D48:
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_8145658

.thumb
sub_8145D54:
    push {r4-r7,lr}
    sub sp, sp, #4
    lsl r0, r0, #0x10
    lsr r6, r0, #0x10
    ldr r4, [pc, #0x8145d88-0x8145d5c-4] // =byte_200FE00
    ldrb r7, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    mov r0, #0
    strb r0, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    mov r0, #1
    strb r0, [r4,#0xf] // (byte_200FE0F - 0x200fe00)
    ldr r0, [pc, #0x8145d8c-0x8145d68-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r5, [r0]
    cmp r5, #0
    bne loc_8145D90
    add r0, r6, #0
    bl sub_8145210
    ldrb r0, [r4,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #1
    beq loc_8145DA8
    bl sub_81464B4
    strb r5, [r4,#0xf] // (byte_200FE0F - 0x200fe00)
    strb r7, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    b loc_8145DCC
off_8145D88:    .word byte_200FE00
off_8145D8C:    .word dword_2010CC0
loc_8145D90:
    mov r0, sp
    bl sub_81493F8
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_8145DA8
    mov r1, sp
    ldrb r0, [r4,#0x3] // (byte_200FE03 - 0x200fe00)
    ldrb r1, [r1]
    orr r0, r1
    ldrb r1, [r4,#0x3] // (byte_200FE03 - 0x200fe00)
    strb r0, [r4,#0x3] // (byte_200FE03 - 0x200fe00)
loc_8145DA8:
    ldr r4, [pc, #0x8145dd4-0x8145da8-4] // =byte_200FE00
    ldr r1, [r4,#0x44] // (dword_200FE44 - 0x200fe00)
    cmp r1, #0
    beq loc_8145DC4
    add r0, r6, #0
    bl sub_814DA64
    bl sub_8149568
    ldrb r0, [r4,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #2
    bne loc_8145DC4
    bl sub_81464B4
loc_8145DC4:
    ldr r1, [pc, #0x8145dd4-0x8145dc4-4] // =byte_200FE00
    mov r0, #0
    strb r0, [r1,#0xf] // (byte_200FE0F - 0x200fe00)
    strb r7, [r1,#0xe] // (byte_200FE0E - 0x200fe00)
loc_8145DCC:
    add sp, sp, #4
    pop {r4-r7}
    pop {r0}
    bx r0
off_8145DD4:    .word byte_200FE00
// end of function sub_8145D54

.thumb
sub_8145DD8:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #8
    ldr r1, [pc, #0x8145e5c-0x8145de4-4] // =byte_200FE00
    ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    sub r0, #5
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r3, r1, #0
    cmp r0, #3
    bls loc_8145DF6
    b loc_8145FEA
loc_8145DF6:
    ldr r0, [pc, #0x8145e60-0x8145df6-2] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r1, [r2,#2]
    ldrb r0, [r3,#0xc] // (byte_200FE0C - 0x200fe00)
    add r4, r1, #0
    eor r4, r0
    and r4, r1
    ldrb r0, [r2,#7]
    bic r4, r0
    mov r8, r4
    strb r1, [r3,#0xc] // (byte_200FE0C - 0x200fe00)
    cmp r4, #0
    beq loc_8145E1E
    strh r4, [r3,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x10
    mov r1, #1
    str r3, [sp,#4]
    bl sub_81461B0
    ldr r3, [sp,#4]
loc_8145E1E:
    mov r0, #0
    str r0, [sp]
    mov r6, #0
    add r7, r3, #0
    mov r1, #0x24 
    add r1, r1, r3
    mov r9, r1
loc_8145E2C:
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r6
    lsr r4, r0, #0x18
    mov r5, #0
    mov r0, r8
    and r0, r4
    cmp r0, #0
    beq loc_8145E7E
    lsl r1, r6, #1
    add r0, r7, #0
    add r0, #0x28 
    add r1, r1, r0
    ldrh r0, [r7,#0x26]
    strh r0, [r1]
    mov r2, r9
    ldrb r1, [r2]
    add r0, r4, #0
    orr r0, r1
    strb r0, [r2]
    add r6, #1
    mov r10, r6
    b loc_8145F34
    .balign 4, 0x00
off_8145E5C:    .word byte_200FE00
off_8145E60:    .word dword_2010CC0
loc_8145E64:
    ldrb r1, [r7]
    add r0, r4, #0
    orr r0, r1
    strb r0, [r7]
    ldrb r0, [r7,#1]
    add r0, #1
    strb r0, [r7,#1]
    ldr r0, [sp]
    orr r0, r4
    str r0, [sp]
    mov r0, #1
    orr r5, r0
    b loc_8145EC8
loc_8145E7E:
    mov r1, r9
    ldrb r0, [r1]
    and r0, r4
    add r2, r6, #1
    mov r10, r2
    cmp r0, #0
    beq loc_8145F34
    ldr r0, [pc, #0x8145ed8-0x8145e8c-4] // =dword_2010CB0
    lsl r1, r6, #2
    add r1, r1, r0
    ldr r1, [r1]
    ldrh r0, [r1,#0x34]
    cmp r0, #0x46 
    bne loc_8145EE4
    add r0, r1, #0
    add r0, #0x61 
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_8145EFC
    mov r5, #2
    ldr r3, [r3,#0x20]
    ldrh r2, [r3]
    ldr r0, [pc, #0x8145edc-0x8145eaa-2] // =0xFFFF
    cmp r2, r0
    beq loc_8145EC8
    ldr r0, [pc, #0x8145ee0-0x8145eb0-4] // =dword_2010CC0
    ldr r0, [r0]
    lsl r1, r6, #5
    add r0, r0, r1
    ldrh r0, [r0,#0x18]
    ldr r1, [pc, #0x8145edc-0x8145eba-2] // =0xFFFF
loc_8145EBC:
    cmp r0, r2
    beq loc_8145E64
    add r3, #2
    ldrh r2, [r3]
    cmp r2, r1
    bne loc_8145EBC
loc_8145EC8:
    mov r0, #1
    and r0, r5
    cmp r0, #0
    bne loc_8145EFC
    mov r0, #4
    orr r5, r0
    b loc_8145EFC
    .balign 4, 0x00
off_8145ED8:    .word dword_2010CB0
dword_8145EDC:    .word 0xFFFF
off_8145EE0:    .word dword_2010CC0
loc_8145EE4:
    lsl r1, r6, #1
    add r0, r3, #0
    add r0, #0x28 
    add r1, r1, r0
    ldrh r0, [r1]
    sub r0, #1
    strh r0, [r1]
    ldr r1, [pc, #0x8145fb8-0x8145ef2-2] // =0xFFFF
    and r0, r1
    cmp r0, #0
    bne loc_8145EFC
    mov r5, #6
loc_8145EFC:
    mov r0, #2
    and r0, r5
    cmp r0, #0
    beq loc_8145F22
    mov r2, r9
    ldrb r0, [r2]
    bic r0, r4
    mov r2, #0
    mov r1, r9
    strb r0, [r1]
    lsl r0, r6, #1
    add r1, r7, #0
    add r1, #0x28 
    add r0, r0, r1
    strh r2, [r0]
    mov r0, #8
    add r1, r6, #0
    bl sub_814A934
loc_8145F22:
    mov r0, #4
    and r5, r0
    ldr r3, [pc, #0x8145fbc-0x8145f26-2] // =byte_200FE00
    cmp r5, #0
    beq loc_8145F34
    ldrb r1, [r7,#0xd]
    add r0, r4, #0
    orr r0, r1
    strb r0, [r7,#0xd]
loc_8145F34:
    mov r2, r10
    lsl r0, r2, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bhi loc_8145F40
    b loc_8145E2C
loc_8145F40:
    ldr r4, [sp]
    cmp r4, #0
    beq loc_8145F52
    ldr r0, [pc, #0x8145fbc-0x8145f46-2] // =byte_200FE00
    strh r4, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x11
    mov r1, #1
    bl sub_81461B0
loc_8145F52:
    ldr r1, [pc, #0x8145fbc-0x8145f52-2] // =byte_200FE00
    ldrb r0, [r1,#0xd] // (byte_200FE0D - 0x200fe00)
    cmp r0, #0
    beq loc_8145F8E
    mov r5, #1
    ldr r0, [pc, #0x8145fc0-0x8145f5c-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#6]
    cmp r0, #0
    beq loc_8145F72
    ldrb r0, [r1,#0x3] // (byte_200FE03 - 0x200fe00)
    ldrb r1, [r1]
    and r0, r1
    cmp r0, r1
    beq loc_8145F72
    mov r5, #0
loc_8145F72:
    cmp r5, #0
    beq loc_8145F8E
    ldr r4, [pc, #0x8145fbc-0x8145f76-2] // =byte_200FE00
    ldrb r0, [r4,#0xd] // (byte_200FE0D - 0x200fe00)
    bl sub_81461D8
    ldrb r0, [r4,#0xd] // (byte_200FE0D - 0x200fe00)
    mov r1, #0
    strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
    strb r1, [r4,#0xd] // (byte_200FE0D - 0x200fe00)
    mov r0, #0x12
    mov r1, #1
    bl sub_81461B0
loc_8145F8E:
    ldr r0, [pc, #0x8145fbc-0x8145f8e-2] // =byte_200FE00
    add r1, r0, #0
    add r1, #0x24 
    ldrb r1, [r1]
    add r3, r0, #0
    cmp r1, #0
    bne loc_8145FEA
    ldrb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #8
    bne loc_8145FEA
    ldrb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
    cmp r0, #0
    bne loc_8145FC4
    strb r0, [r3,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0x14
    mov r1, #0
    bl sub_81461B0
    b loc_8145FEA
    .balign 4, 0x00
dword_8145FB8:    .word 0xFFFF
off_8145FBC:    .word byte_200FE00
off_8145FC0:    .word dword_2010CC0
loc_8145FC4:
    cmp r0, #2
    bne loc_8145FD0
    mov r0, #3
    strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r0, #9
    b loc_8145FD6
loc_8145FD0:
    mov r0, #1
    strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r0, #5
loc_8145FD6:
    strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r0, [r3]
    cmp r0, #0
    beq loc_8145FEA
    mov r0, #0
    strh r0, [r3,#0x1a] // (word_200FE1A - 0x200fe00)
    mov r0, #8
    strb r0, [r3,#0x7] // (byte_200FE07 - 0x200fe00)
    mov r0, #5
    strb r0, [r3,#0x4] // (byte_200FE04 - 0x200fe00)
loc_8145FEA:
    add sp, sp, #8
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8145DD8

.thumb
sub_8145FFC:
    push {r4-r6,lr}
    ldr r1, [pc, #0x81460a0-0x8145ffe-2] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    add r6, r0, #0
    mov r0, #0
    strh r0, [r1]
    ldr r4, [pc, #0x81460a4-0x8146008-4] // =byte_200FE00
    ldrb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0xf
    bne loc_8146060
    ldrb r1, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r1, r1, #1
    add r5, r4, #0
    add r5, #0x28 
    add r1, r1, r5
    ldrh r0, [r1]
    sub r0, #1
    strh r0, [r1]
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8146036
    ldr r1, [pc, #0x81460a8-0x8146026-2] // =dword_2010CB0
    ldrb r0, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r0, [r0]
    cmp r0, #0x27 
    bne loc_8146060
loc_8146036:
    bl sub_81464D4
    mov r0, #0x18
    strb r0, [r4,#0x4] // (byte_200FE04 - 0x200fe00)
    ldrb r1, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
    mov r0, #4
    bl sub_814A934
    add r2, r4, #0
    add r2, #0x24 
    mov r1, #1
    ldrb r0, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r1, r0
    ldrb r0, [r2]
    bic r0, r1
    strb r0, [r2]
    ldrb r0, [r4,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #1
    add r0, r0, r5
    mov r1, #0
    strh r1, [r0]
loc_8146060:
    ldr r0, [pc, #0x81460a0-0x8146060-4] // =InterruptMasterEnableRegister
    strh r6, [r0]
    ldr r5, [pc, #0x81460a4-0x8146064-4] // =byte_200FE00
    ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0x18
    bne loc_814609A
    ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #1
    bne loc_8146076
    bl sub_81464D4
loc_8146076:
    ldrb r0, [r5,#0x2] // (byte_200FE02 - 0x200fe00)
    add r4, r0, #0
    cmp r4, #0
    bne loc_814609A
    strb r4, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r4, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    ldr r0, [pc, #0x81460ac-0x8146082-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    orr r0, r1
    bl sub_81461D8
    strh r4, [r5,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0x25 
    mov r1, #1
    bl sub_81461B0
loc_814609A:
    pop {r4-r6}
    pop {r0}
    bx r0
off_81460A0:    .word InterruptMasterEnableRegister
off_81460A4:    .word byte_200FE00
off_81460A8:    .word dword_2010CB0
off_81460AC:    .word dword_2010CC0
// end of function sub_8145FFC

.thumb
sub_81460B0:
    push {r4,r5,lr}
    ldr r5, [pc, #0x8146104-0x81460b2-2] // =byte_200FE00
    ldrb r0, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #0xf
    bne loc_81460FC
    ldr r1, [pc, #0x8146108-0x81460ba-2] // =dword_2010CB0
    ldrb r2, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r0, [r0]
    cmp r0, #0x26 
    bne loc_81460FC
    mov r4, #0
    strb r4, [r5,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r4, [r5,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
    add r2, r5, #0
    add r2, #0x24 
    mov r1, #1
    ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r1, r0
    ldrb r0, [r2]
    bic r0, r1
    strb r0, [r2]
    ldrb r0, [r5,#0x10] // (byte_200FE10 - 0x200fe00)
    lsl r0, r0, #1
    add r1, r5, #0
    add r1, #0x28 
    add r0, r0, r1
    strh r4, [r0]
    mov r0, #0x24 
    mov r1, #0
    bl sub_81461B0
loc_81460FC:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8146104:    .word byte_200FE00
off_8146108:    .word dword_2010CB0
// end of function sub_81460B0

.thumb
sub_814610C:
    push {lr}
    ldr r1, [pc, #0x8146134-0x814610e-2] // =byte_200FE00
    ldrb r0, [r1,#0x6] // (byte_200FE06 - 0x200fe00)
    cmp r0, #0
    bne loc_8146130
    ldrb r0, [r1,#0xa] // (byte_200FE0A - 0x200fe00)
    cmp r0, #1
    bne loc_8146130
    ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    strb r0, [r1,#0x11] // (byte_200FE11 - 0x200fe00)
    ldrb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    strb r0, [r1,#0x12] // (byte_200FE12 - 0x200fe00)
    mov r0, #0x10
    strb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    mov r0, #0x11
    strb r0, [r1,#0x5] // (byte_200FE05 - 0x200fe00)
    mov r0, #2
    strb r0, [r1,#0xa] // (byte_200FE0A - 0x200fe00)
loc_8146130:
    pop {r0}
    bx r0
off_8146134:    .word byte_200FE00
// end of function sub_814610C

.thumb
sub_8146138:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    mov r6, #0
    mov r5, #0
    ldr r1, [pc, #0x81461a4-0x8146146-2] // =dword_2010CC0
    ldr r0, [r1]
    ldrb r0, [r0,#8]
    cmp r6, r0
    bcs loc_8146194
    mov r8, r0
    ldr r0, [pc, #0x81461a8-0x8146152-2] // =byte_200FE00
    mov r10, r0
    mov r9, r1
loc_8146158:
    mov r1, r10
    ldr r3, [r1,#0x20] // (dword_200FE20 - 0x200fe00)
    ldrh r2, [r3]
    add r0, r5, #1
    mov r12, r0
    ldr r1, [pc, #0x81461ac-0x8146162-2] // =0xFFFF
    cmp r2, r1
    beq loc_814618A
    mov r1, r9
    ldr r0, [r1]
    lsl r1, r5, #5
    add r0, r0, r1
    ldrh r4, [r0,#0x18]
    ldr r7, [pc, #0x81461ac-0x8146172-2] // =0xFFFF
    mov r1, #1
    lsl r1, r5
loc_8146178:
    cmp r4, r2
    bne loc_8146182
    orr r6, r1
    lsl r0, r6, #0x18
    lsr r6, r0, #0x18
loc_8146182:
    add r3, #2
    ldrh r2, [r3]
    cmp r2, r7
    bne loc_8146178
loc_814618A:
    mov r1, r12
    lsl r0, r1, #0x18
    lsr r5, r0, #0x18
    cmp r5, r8
    bcc loc_8146158
loc_8146194:
    add r0, r6, #0
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
off_81461A4:    .word dword_2010CC0
off_81461A8:    .word byte_200FE00
dword_81461AC:    .word 0xFFFF
// end of function sub_8146138

.thumb
sub_81461B0:
    push {r4,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    ldr r4, [pc, #0x81461d4-0x81461ba-2] // =byte_200FE00
    ldr r2, [r4,#0x40] // (dword_200FE40 - 0x200fe00)
    cmp r2, #0
    beq loc_81461C6
    bl sub_814DA68
loc_81461C6:
    mov r0, #0
    strh r0, [r4,#0x16] // (word_200FE16 - 0x200fe00)
    strh r0, [r4,#0x14] // (word_200FE14 - 0x200fe00)
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81461D4:    .word byte_200FE00
// end of function sub_81461B0

.thumb
sub_81461D8:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldr r4, [pc, #0x81461f8-0x81461de-2] // =byte_200FE00
    ldrb r5, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    mov r1, #1
    strb r1, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    bl sub_814A4CC
    bl sub_8149568
    strb r5, [r4,#0xe] // (byte_200FE0E - 0x200fe00)
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81461F8:    .word byte_200FE00
// end of function sub_81461D8

.thumb
sub_81461FC:
    push {r4-r7,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    ldr r0, [pc, #0x81462c8-0x8146202-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#4]
    cmp r0, #0
    beq loc_8146244
    mov r4, #0
loc_814620E:
    ldr r1, [pc, #0x81462cc-0x814620e-2] // =dword_2010CB0
    lsl r0, r4, #2
    add r0, r0, r1
    ldr r2, [r0]
    ldrh r0, [r2]
    mov r3, #0x80
    lsl r3, r3, #8
    add r1, r3, #0
    and r0, r1
    cmp r0, #0
    beq loc_814623A
    ldrb r1, [r2,#0x1a]
    add r0, r5, #0
    and r0, r1
    cmp r0, #0
    beq loc_814623A
    add r2, r1, #0
    bic r2, r5
    mov r0, #0x20 
    add r1, r4, #0
    bl sub_814ADF4
loc_814623A:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814620E
loc_8146244:
    ldr r0, [pc, #0x81462c8-0x8146244-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#5]
    cmp r0, #0
    beq loc_8146282
    mov r4, #0
loc_8146250:
    ldr r1, [pc, #0x81462cc-0x8146250-4] // =dword_2010CB0
    lsl r0, r4, #2
    add r0, r0, r1
    ldr r2, [r0]
    ldrh r0, [r2,#0x34]
    mov r3, #0x80
    lsl r3, r3, #8
    add r1, r3, #0
    and r0, r1
    cmp r0, #0
    beq loc_8146278
    add r0, r2, #0
    add r0, #0x4e 
    ldrb r0, [r0]
    and r0, r5
    cmp r0, #0
    beq loc_8146278
    add r0, r4, #0
    bl sub_814AF5C
loc_8146278:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8146250
loc_8146282:
    ldr r0, [pc, #0x81462c8-0x8146282-2] // =dword_2010CC0
    ldr r3, [r0]
    ldrb r2, [r3,#6]
    cmp r2, #0
    beq loc_81462C0
    mvn r1, r5
    add r0, r1, #0
    and r0, r2
    strb r0, [r3,#6]
    mov r4, #0
    ldr r7, [pc, #0x81462d0-0x8146296-2] // =dword_2010CA0
    ldr r6, [pc, #0x81462d4-0x8146298-4] // =0x8024
loc_814629A:
    lsl r0, r4, #2
    add r0, r0, r7
    ldr r2, [r0]
    ldrh r0, [r2]
    cmp r0, r6
    bne loc_81462B6
    ldrb r3, [r2,#3]
    add r0, r5, #0
    and r0, r3
    cmp r0, #0
    beq loc_81462B6
    add r0, r1, #0
    and r0, r3
    strb r0, [r2,#3]
loc_81462B6:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814629A
loc_81462C0:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81462C8:    .word dword_2010CC0
off_81462CC:    .word dword_2010CB0
off_81462D0:    .word dword_2010CA0
dword_81462D4:    .word 0x8024
// end of function sub_81461FC

.thumb
sub_81462D8:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    ldr r0, [pc, #0x81463c4-0x81462e4-4] // =byte_200FE00
    ldrh r0, [r0,#0x18] // (word_200FE18 - 0x200fe00)
    cmp r0, #0
    beq loc_81463B4
    ldr r0, [pc, #0x81463c8-0x81462ec-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#4]
    cmp r0, #0
    beq loc_8146378
    mov r6, #0
loc_81462F8:
    ldr r3, [pc, #0x81463cc-0x81462f8-4] // =dword_2010CB0
    lsl r2, r6, #2
    add r0, r2, r3
    ldr r0, [r0]
    ldrh r1, [r0]
    mov r4, #0x80
    lsl r4, r4, #8
    add r0, r4, #0
    and r1, r0
    add r7, r2, #0
    add r0, r6, #1
    mov r9, r0
    cmp r1, #0
    beq loc_814636E
    mov r5, #0
    mov r4, #0
    mov r1, #1
    mov r8, r1
    mov r10, r3
loc_814631E:
    add r0, r7, r3
    ldr r0, [r0]
    ldrb r0, [r0,#0x1a]
    asr r0, r4
    mov r1, r8
    and r0, r1
    cmp r0, #0
    beq loc_8146348
    lsl r0, r4, #2
    add r0, r0, r3
    ldr r0, [r0]
    ldr r1, [pc, #0x81463c4-0x8146334-4] // =byte_200FE00
    ldrh r0, [r0,#2]
    ldrh r1, [r1,#0x18] // (word_200FE18 - 0x200fe00)
    cmp r0, r1
    bls loc_8146348
    mov r0, r8
    lsl r0, r4
    orr r5, r0
    lsl r0, r5, #0x18
    lsr r5, r0, #0x18
loc_8146348:
    cmp r5, #0
    beq loc_8146364
    mov r1, r10
    add r0, r7, r1
    ldr r0, [r0]
    ldrb r0, [r0,#0x1a]
    add r2, r5, #0
    eor r2, r0
    mov r0, #0x20 
    add r1, r6, #0
    str r3, [sp]
    bl sub_814ADF4
    ldr r3, [sp]
loc_8146364:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814631E
loc_814636E:
    mov r3, r9
    lsl r0, r3, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_81462F8
loc_8146378:
    ldr r0, [pc, #0x81463c8-0x8146378-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#5]
    cmp r0, #0
    beq loc_81463B4
    mov r6, #0
loc_8146384:
    ldr r1, [pc, #0x81463cc-0x8146384-4] // =dword_2010CB0
    lsl r0, r6, #2
    add r0, r0, r1
    ldr r2, [r0]
    ldrh r0, [r2,#0x34]
    mov r4, #0x80
    lsl r4, r4, #8
    add r1, r4, #0
    and r0, r1
    cmp r0, #0
    beq loc_81463AA
    ldr r1, [pc, #0x81463c4-0x814639a-2] // =byte_200FE00
    ldrh r0, [r2,#0x36]
    ldrh r1, [r1,#0x18] // (word_200FE18 - 0x200fe00)
    cmp r0, r1
    bls loc_81463AA
    add r0, r6, #0
    bl sub_814AF5C
loc_81463AA:
    add r0, r6, #1
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_8146384
loc_81463B4:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
off_81463C4:    .word byte_200FE00
off_81463C8:    .word dword_2010CC0
off_81463CC:    .word dword_2010CB0
// end of function sub_81462D8

.thumb
sub_81463D0:
    push {lr}
    ldr r1, [pc, #0x81463e0-0x81463d2-2] // =byte_200FE00
    str r0, [r1,#0x44] // (dword_200FE44 - 0x200fe00)
    ldr r0, [pc, #0x81463e4-0x81463d6-2] // =sub_8145D54+1
    bl sub_8149464
    pop {r0}
    bx r0
off_81463E0:    .word byte_200FE00
off_81463E4:    .word sub_8145D54+1
// end of function sub_81463D0

.thumb
sub_81463E8:
    ldr r1, [pc, #0x81463f0-0x81463e8-4] // =byte_200FE00
    str r0, [r1,#0x40] // (dword_200FE40 - 0x200fe00)
    bx lr
    .byte 0, 0
off_81463F0:    .word byte_200FE00
// end of function sub_81463E8

    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    lsl r1, r1, #0x10
    lsr r5, r1, #0x10
    ldr r0, [pc, #0x8146418-0x81463fe-2] // =byte_200FE00
    ldrb r1, [r0,#0x9] // (byte_200FE09 - 0x200fe00)
    add r3, r0, #0
    cmp r1, #0
    beq unk_814641C
    cmp r4, #0
    bne unk_814641C
    add r0, #0x30 
    ldrb r0, [r0]
    cmp r0, #0
    beq unk_814641C
    mov r0, #5
    b unk_814642C
off_8146418:    .word byte_200FE00
unk_814641C:    .byte 5
    .byte 0x4A 
    .byte 0x11
    .byte 0x88
    .byte 0
    .byte 0x20
    .byte 0x10
    .byte 0x80
    .byte 0x5C 
    .byte 0x72 
    .byte 0x5D 
    .byte 0x86
    .byte 0x11
    .byte 0x80
    .byte 0
    .byte 0x20
unk_814642C:    .byte 0x30 
    .byte 0xBC
    .byte 2
    .byte 0xBC
    .byte 8
    .byte 0x47 
    .balign 4, 0x00
    .word InterruptMasterEnableRegister
    push {lr}
    lsl r0, r0, #0x10
    lsr r2, r0, #0x10
    ldr r0, [pc, #0x8146454-0x814643e-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#4]
    ldrb r0, [r0,#5]
    orr r0, r1
    cmp r0, #0
    bne unk_814645C
    ldr r0, [pc, #0x8146458-0x814644c-4] // =byte_200FE00
    strh r2, [r0,#0x18] // (word_200FE18 - 0x200fe00)
    mov r0, #0
    b unk_814646C
off_8146454:    .word dword_2010CC0
off_8146458:    .word byte_200FE00
unk_814645C:    .byte 4
    .byte 0x49 
    .byte 6
    .byte 0x20
    .byte 0x88
    .byte 0x82
    .byte 0xF3
    .byte 0x20
    .byte 1
    .byte 0x21 
    .byte 0xFF
    .byte 0xF7
    .byte 0xA3
    .byte 0xFE
    .byte 6
    .byte 0x20
unk_814646C:    .byte 2
    .byte 0xBC
    .byte 8
    .byte 0x47 
    .word byte_200FE00
    push {lr}
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    add r3, r2, #0
    ldr r1, [pc, #0x814649c-0x814647c-4] // =byte_200FE00
    ldrb r0, [r1,#0x4] // (byte_200FE04 - 0x200fe00)
    sub r0, #9
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #2
    bhi unk_81464A0
    mov r0, #7
    strh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    mov r0, #0xf3
    mov r1, #1
    bl sub_81461B0
    mov r0, #7
    b unk_81464AE
    .balign 4, 0x00
off_814649C:    .word byte_200FE00
unk_81464A0:    .byte 0
    .byte 0x2A 
    .byte 2
    .byte 0xD0
    .byte 1
    .byte 0x20
    .byte 0xC8
    .byte 0x72 
    .byte 0
    .byte 0xE0
    .byte 0xCB
    .byte 0x72 
    .byte 0
    .byte 0x20
unk_81464AE:    .byte 2
    .byte 0xBC
    .byte 8
    .byte 0x47 
    .balign 4, 0x00
.thumb
sub_81464B4:
    push {lr}
    ldr r1, [pc, #0x81464d0-0x81464b6-2] // =byte_200FE00
    ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #0
    beq loc_81464CC
    ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r0, #0
    strb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r0, #0x45 
    mov r1, #0
    bl sub_81461B0
loc_81464CC:
    pop {r0}
    bx r0
off_81464D0:    .word byte_200FE00
// end of function sub_81464B4

.thumb
sub_81464D4:
    push {lr}
    ldr r1, [pc, #0x81464e8-0x81464d6-2] // =byte_200FE00
    ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #0
    bne loc_81464EC
    mov r0, #0x45 
    mov r1, #0
    bl sub_81461B0
    b loc_81464F8
off_81464E8:    .word byte_200FE00
loc_81464EC:
    ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #1
    bne loc_81464F8
    ldrb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
    mov r0, #2
    strb r0, [r1,#0x2] // (byte_200FE02 - 0x200fe00)
loc_81464F8:
    pop {r0}
    bx r0
// end of function sub_81464D4

    push {lr}
    ldr r0, [pc, #0x814651c-0x81464fe-2] // =byte_200FE00
    ldrb r1, [r0,#0x7] // (byte_200FE07 - 0x200fe00)
    add r2, r0, #0
    cmp r1, #0
    beq def_8146518
    ldrb r0, [r2,#0x4] // (byte_200FE04 - 0x200fe00)
// switch 7 cases 
    sub r0, #5
    cmp r0, #6
    bhi def_8146518
    lsl r0, r0, #2
    ldr r1, [pc, #0x8146520-0x8146512-2] // =jpt_8146518
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .balign 4, 0x00
off_814651C:    .word byte_200FE00
off_8146520:    .word jpt_8146518
// jump table for switch statement
jpt_8146518:    .word unk_8146540
    .word unk_8146548
    .word unk_8146552
    .word unk_8146552
    .word unk_8146558
    .word unk_8146558
    .word unk_814655E
unk_8146540:    .byte 3
    .byte 0x20
    .byte 0xD0
    .byte 0x71 
    .byte 9
    .byte 0x20
    .byte 0xD
    .byte 0xE0
unk_8146548:    .byte 2
    .byte 0x20
    .byte 0xD0
    .byte 0x71 
    .byte 1
    .byte 0x20
    .byte 0x50 
    .byte 0x83
    .byte 9
    .byte 0xE0
unk_8146552:    .byte 2
    .byte 0x20
    .byte 0xD0
    .byte 0x71 
    .byte 6
    .byte 0xE0
unk_8146558:    .byte 0x28 
    .byte 0x20
    .byte 0x50 
    .byte 0x83
    .byte 3
    .byte 0xE0
unk_814655E:    .byte 0x28 
    .byte 0x20
    .byte 0x50 
    .byte 0x83
    .byte 0xA
    .byte 0x20
    .byte 0x10
    .byte 0x71 
def_8146518:    .byte 1
    .byte 0xBC
    .byte 0
    .byte 0x47 
    .balign 4, 0x00
.thumb
sub_814656C:
    push {lr}
    ldr r0, [pc, #0x814657c-0x814656e-2] // =word_20102D0
    ldrh r0, [r0]
    cmp r0, #3
    beq loc_8146580
    mov r0, #1
    b loc_8146582
    .balign 4, 0x00
off_814657C:    .word word_20102D0
loc_8146580:
    mov r0, #0
loc_8146582:
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_814656C

.thumb
sub_8146588:
    ldr r1, [pc, #0x81465a8-0x8146588-4] // =byte_200FE80
    mov r0, #0
    strb r0, [r1]
    ldr r1, [pc, #0x81465ac-0x814658e-2] // =byte_2010160
    mov r0, #0x20 
    strb r0, [r1]
    ldr r0, [pc, #0x81465b0-0x8146594-4] // =byte_200FFE4
    mov r1, #1
    strb r1, [r0]
    ldr r0, [pc, #0x81465b4-0x814659a-2] // =byte_2010164
    strb r1, [r0]
    ldr r1, [pc, #0x81465b8-0x814659e-2] // =word_200FE50
    mov r0, #0xf0
    strh r0, [r1]
    bx lr
    .balign 4, 0x00
off_81465A8:    .word byte_200FE80
off_81465AC:    .word byte_2010160
off_81465B0:    .word byte_200FFE4
off_81465B4:    .word byte_2010164
off_81465B8:    .word word_200FE50
// end of function sub_8146588

.thumb
sub_81465BC:
    push {r4,lr}
    ldr r0, [pc, #0x81465e8-0x81465be-2] // =word_3000000
    ldr r1, [pc, #0x81465ec-0x81465c0-4] // =0xE64
    ldr r4, [pc, #0x81465f0-0x81465c2-2] // =dword_3000E8C
    add r2, r4, #0
    mov r3, #1
    bl sub_8149220
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_81465F4
    sub r1, r4, #4
    mov r0, #3
    bl sub_8149440
    bl sub_813D8C4
    mov r0, #4
    bl sub_803DE88
    mov r0, #1
    b loc_81465F6
off_81465E8:    .word word_3000000
dword_81465EC:    .word 0xE64
off_81465F0:    .word dword_3000E8C
loc_81465F4:
    mov r0, #0
loc_81465F6:
    pop {r4}
    pop {r1}
    bx r1
// end of function sub_81465BC

.thumb
sub_81465FC:
    push {r4,lr}
    add r4, r0, #0
    bl sub_813D924
    mov r2, #0
    mov r1, #4
    strb r1, [r4]
    ldr r1, [pc, #0x8146644-0x814660a-2] // =byte_2010160
    ldrb r1, [r1]
    strb r1, [r4,#1]
    strb r2, [r4,#4]
    mov r1, #0
    strh r0, [r4,#6]
    ldr r0, [pc, #0x8146648-0x8146616-2] // =unk_2010150
    str r0, [r4,#8]
    ldr r0, [pc, #0x814664c-0x814661a-2] // =unk_200FE63
    str r0, [r4,#0xc]
    ldr r0, [pc, #0x8146650-0x814661e-2] // =byte_2010164
    ldrb r0, [r0]
    strb r0, [r4,#0x11]
    ldr r0, [pc, #0x8146654-0x8146624-4] // =word_200FE50
    ldrh r0, [r0]
    strh r0, [r4,#0x12]
    mov r0, #0x96
    lsl r0, r0, #2
    strh r0, [r4,#0x14]
    strb r1, [r4,#0x10]
    ldr r0, [pc, #0x8146658-0x8146632-2] // =byte_200FFE4
    ldrb r1, [r0]
    mov r0, #4
    sub r0, r0, r1
    strh r0, [r4,#2]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8146644:    .word byte_2010160
off_8146648:    .word unk_2010150
off_814664C:    .word unk_200FE63
off_8146650:    .word byte_2010164
off_8146654:    .word word_200FE50
off_8146658:    .word byte_200FFE4
// end of function sub_81465FC

.thumb
sub_814665C:
    push {r4-r7,lr}
    ldr r1, [pc, #0x81466b4-0x814665e-2] // =byte_2010288
    mov r0, #0
    strb r0, [r1]
    mov r2, #0
    ldr r3, [pc, #0x81466b8-0x8146666-2] // =dword_2010CC0
    ldr r0, [r3]
    add r7, r3, #0
    ldrb r0, [r0,#8]
    cmp r2, r0
    bcs loc_81466AC
    ldr r6, [pc, #0x81466bc-0x8146672-2] // =unk_2010330
    add r4, r1, #0
    ldr r5, [pc, #0x81466c0-0x8146676-2] // =byte_2010324
loc_8146678:
    ldrb r0, [r5]
    asr r0, r2
    mov r1, #1
    and r0, r1
    cmp r0, #0
    beq loc_814669C
    ldr r0, [r3]
    lsl r1, r2, #5
    add r0, r0, r1
    ldrb r0, [r0,#0x16]
    cmp r0, #3
    bhi loc_814669C
    ldrb r0, [r4]
    add r0, r0, r6
    strb r2, [r0]
    ldrb r0, [r4]
    add r0, #1
    strb r0, [r4]
loc_814669C:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    add r3, r7, #0
    ldr r0, [r3]
    ldrb r0, [r0,#8]
    cmp r2, r0
    bcc loc_8146678
loc_81466AC:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81466B4:    .word byte_2010288
off_81466B8:    .word dword_2010CC0
off_81466BC:    .word unk_2010330
off_81466C0:    .word byte_2010324
// end of function sub_814665C

.thumb
sub_81466C4:
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldr r2, [pc, #0x81466dc-0x81466c8-4] // =dword_2010CC0
    ldr r1, [pc, #0x81466e0-0x81466ca-2] // =unk_2010330
    add r0, r0, r1
    ldrb r1, [r0]
    lsl r1, r1, #5
    add r1, #0x14
    ldr r0, [r2]
    add r0, r0, r1
    add r0, #0x15
    bx lr
off_81466DC:    .word dword_2010CC0
off_81466E0:    .word unk_2010330
// end of function sub_81466C4

.thumb
sub_81466E4:
    lsl r0, r0, #0x18
    ldr r1, [pc, #0x81466f0-0x81466e6-2] // =unk_2009750
    lsr r0, r0, #0x15
    add r1, r0, r1
    add r0, r1, #0
    bx lr
off_81466F0:    .word unk_2009750
// end of function sub_81466E4

.thumb
sub_81466F4:
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldr r2, [pc, #0x814670c-0x81466f8-4] // =dword_2010CC0
    ldr r1, [pc, #0x8146710-0x81466fa-2] // =unk_2010330
    add r0, r0, r1
    ldrb r1, [r0]
    lsl r1, r1, #5
    add r1, #0x14
    ldr r0, [r2]
    add r0, r0, r1
    add r0, #6
    bx lr
off_814670C:    .word dword_2010CC0
off_8146710:    .word unk_2010330
// end of function sub_81466F4

.thumb
sub_8146714:
    lsl r0, r0, #0x18
    ldr r1, [pc, #0x8146720-0x8146716-2] // =unk_20098B0
    lsr r0, r0, #0x14
    add r1, r0, r1
    add r0, r1, #0
    bx lr
off_8146720:    .word unk_20098B0
// end of function sub_8146714

.thumb
sub_8146724:
    add r0, #0xb
    bx lr
// end of function sub_8146724

.thumb
sub_8146728:
    add r0, #0xb
    ldrb r1, [r0]
    ldrb r0, [r0,#1]
    lsl r0, r0, #8
    orr r1, r0
    add r0, r1, #0
    bx lr
    .balign 4, 0x00
// end of function sub_8146728

.thumb
sub_8146738:
    ldrb r0, [r0,#0xa]
    bx lr
// end of function sub_8146738

.thumb
sub_814673C:
    push {r4-r7,lr}
    ldr r7, [pc, #0x8146790-0x814673e-2] // =unk_20098B0
    ldr r6, [pc, #0x8146794-0x8146740-4] // =unk_2009750
    ldr r1, [pc, #0x8146798-0x8146742-2] // =byte_2009470
    mov r0, #0
    strb r0, [r1]
    mov r4, #0
    ldr r0, [pc, #0x814679c-0x814674a-2] // =byte_2010288
    ldrb r0, [r0]
    cmp r4, r0
    bcs loc_8146788
    add r5, r1, #0
loc_8146754:
    add r0, r4, #0
    bl sub_81466F4
    add r1, r7, #0
    mov r2, #0xd
    bl sub_81469F0
    add r0, r4, #0
    bl sub_81466C4
    add r1, r6, #0
    mov r2, #8
    bl sub_81469F0
    add r7, #0x10
    add r6, #8
    ldrb r0, [r5]
    add r0, #1
    strb r0, [r5]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    ldr r0, [pc, #0x814679c-0x8146780-4] // =byte_2010288
    ldrb r0, [r0]
    cmp r4, r0
    bcc loc_8146754
loc_8146788:
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
off_8146790:    .word unk_20098B0
off_8146794:    .word unk_2009750
off_8146798:    .word byte_2009470
off_814679C:    .word byte_2010288
// end of function sub_814673C

.thumb
sub_81467A0:
    push {r4-r7,lr}
    ldr r7, [pc, #0x81467f8-0x81467a2-2] // =unk_20098B0
    ldr r6, [pc, #0x81467fc-0x81467a4-4] // =unk_2009750
    bl sub_814665C
    ldr r1, [pc, #0x8146800-0x81467aa-2] // =byte_2009470
    mov r0, #0
    strb r0, [r1]
    mov r4, #0
    ldr r0, [pc, #0x8146804-0x81467b2-2] // =byte_2010288
    ldrb r0, [r0]
    cmp r4, r0
    bcs loc_81467F0
    add r5, r1, #0
loc_81467BC:
    add r0, r4, #0
    bl sub_81466F4
    add r1, r7, #0
    mov r2, #0xd
    bl sub_81469F0
    add r0, r4, #0
    bl sub_81466C4
    add r1, r6, #0
    mov r2, #8
    bl sub_81469F0
    add r7, #0x10
    add r6, #8
    ldrb r0, [r5]
    add r0, #1
    strb r0, [r5]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    ldr r0, [pc, #0x8146804-0x81467e8-4] // =byte_2010288
    ldrb r0, [r0]
    cmp r4, r0
    bcc loc_81467BC
loc_81467F0:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81467F8:    .word unk_20098B0
off_81467FC:    .word unk_2009750
off_8146800:    .word byte_2009470
off_8146804:    .word byte_2010288
// end of function sub_81467A0

.thumb
sub_8146808:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    ldr r5, [pc, #0x814681c-0x814680c-4] // =unk_20098B0
    lsr r0, r0, #0x14
    add r5, r0, r5
    bl sub_814665C
    mov r4, #0
    b loc_8146840
    .balign 4, 0x00
off_814681C:    .word unk_20098B0
loc_8146820:
    add r0, r4, #0
    bl sub_81466F4
    add r1, r0, #0
    add r0, r5, #0
    mov r2, #0xd
    bl sub_8146A18
    lsl r0, r0, #0x18
    cmp r0, #0
    bne loc_814683A
    add r0, r4, #0
    b loc_814684A
loc_814683A:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
loc_8146840:
    ldr r0, [pc, #0x8146850-0x8146840-4] // =byte_2010288
    ldrb r0, [r0]
    cmp r4, r0
    bcc loc_8146820
    mov r0, #4
loc_814684A:
    pop {r4,r5}
    pop {r1}
    bx r1
off_8146850:    .word byte_2010288
// end of function sub_8146808

.thumb
sub_8146854:
    push {r4-r6,lr}
    ldr r6, [pc, #0x8146880-0x8146856-2] // =unk_20098B0
    ldr r5, [pc, #0x8146884-0x8146858-4] // =unk_2009750
    mov r4, #0
// memBlock
loc_814685C:
    add r0, r6, #0
// numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord
// memBlock
    add r0, r5, #0
// numWords
    mov r1, #8
    bl CpuSet_ZeroFillWord
    add r6, #0x10
    add r5, #8
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #7
    bls loc_814685C
    pop {r4-r6}
    pop {r0}
    bx r0
off_8146880:    .word unk_20098B0
off_8146884:    .word unk_2009750
// end of function sub_8146854

.thumb
sub_8146888:
    push {lr}
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    ldr r0, [pc, #0x81468a0-0x814688e-2] // =byte_200FE00
    ldrb r0, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    sub r0, #9
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #2
    bls loc_81468A4
    mov r0, #1
    b loc_81468B0
off_81468A0:    .word byte_200FE00
loc_81468A4:
    ldr r0, [pc, #0x81468b4-0x81468a4-4] // =byte_200BC50
    mov r1, #7
    strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    ldr r0, [pc, #0x81468b8-0x81468aa-2] // =byte_20103E4
    strb r2, [r0]
    mov r0, #0
loc_81468B0:
    pop {r1}
    bx r1
off_81468B4:    .word byte_200BC50
off_81468B8:    .word byte_20103E4
// end of function sub_8146888

.thumb
sub_81468BC:
    ldr r0, [pc, #0x81468c4-0x81468bc-4] // =byte_2010290
    ldrb r0, [r0,#0x3] // (byte_2010293 - 0x2010290)
    bx lr
    .balign 4, 0x00
off_81468C4:    .word byte_2010290
// end of function sub_81468BC

.thumb
sub_81468C8:
    add r1, r0, #0
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    lsl r0, r1, #2
    add r0, r0, r1
    lsl r0, r0, #1
    ldr r1, [pc, #0x81468dc-0x81468d4-4] // =unk_2010294
    add r0, r0, r1
    bx lr
    .balign 4, 0x00
off_81468DC:    .word unk_2010294
// end of function sub_81468C8

.thumb
sub_81468E0:
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r1, #0xd
    mul r0, r1
    ldr r1, [pc, #0x81468f0-0x81468e8-4] // =unk_20102E0
    add r0, r0, r1
    bx lr
    .byte 0, 0
off_81468F0:    .word unk_20102E0
// end of function sub_81468E0

.thumb
sub_81468F4:
    ldr r1, [pc, #0x8146904-0x81468f4-4] // =byte_200FE00
    ldr r0, [pc, #0x8146908-0x81468f6-2] // =byte_20103E0
    ldrb r0, [r0]
    lsl r0, r0, #1
    add r1, #0x28 
    add r0, r0, r1
    ldrh r0, [r0]
    bx lr
off_8146904:    .word byte_200FE00
off_8146908:    .word byte_20103E0
// end of function sub_81468F4

.thumb
sub_814690C:
    ldr r0, [pc, #0x8146914-0x814690c-4] // =byte_200FE00
    ldrh r0, [r0,#0x26] // (word_200FE26 - 0x200fe00)
    bx lr
    .balign 4, 0x00
off_8146914:    .word byte_200FE00
// end of function sub_814690C

.thumb
sub_8146918:
    lsl r0, r0, #0x18
    ldr r1, [pc, #0x8146928-0x814691a-2] // =byte_200FE00
    lsr r0, r0, #0x17
    add r1, #0x34 
    add r0, r0, r1
    ldrh r0, [r0]
    bx lr
    .balign 4, 0x00
off_8146928:    .word byte_200FE00
// end of function sub_8146918

.thumb
sub_814692C:
    push {lr}
    bl sub_81453D4
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814692C

.thumb
sub_8146938:
    push {lr}
    ldr r2, [pc, #0x814694c-0x814693a-2] // =byte_2010280
    ldr r0, [pc, #0x8146950-0x814693c-4] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r0, [r2]
    ldrb r1, [r1,#2]
    cmp r0, r1
    beq loc_8146954
    mov r0, #1
    b loc_8146956
off_814694C:    .word byte_2010280
off_8146950:    .word dword_2010CC0
loc_8146954:
    mov r0, #0
loc_8146956:
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8146938

.thumb
sub_814695C:
    push {r4,lr}
    ldr r4, [pc, #0x8146998-0x814695e-2] // =unk_200FE63
    add r1, r4, #0
    mov r2, #8
    bl sub_81469F0
    sub r1, r4, #3
    mov r0, #1
    strb r0, [r1,#0x2] // (byte_200FE62 - 0x200fe60)
    ldrb r0, [r4,#0x1] // (byte_200FE64 - 0x200fe63)
    cmp r0, #0
    beq loc_814698A
    add r2, r1, #0
    mov r3, #0xff
    add r1, r4, #0
loc_814697A:
    ldrb r0, [r2,#0x2] // (byte_200FE62 - 0x200fe60)
    add r0, #1
    strb r0, [r2,#0x2] // (byte_200FE62 - 0x200fe60)
    and r0, r3
    add r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_814697A
loc_814698A:
    ldr r1, [pc, #0x814699c-0x814698a-2] // =byte_200FE60
    mov r0, #1
    strb r0, [r1]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8146998:    .word unk_200FE63
off_814699C:    .word byte_200FE60
// end of function sub_814695C

.thumb
sub_81469A0:
    ldr r0, [pc, #0x81469a4-0x81469a0-4] // =unk_200FE63
    bx lr
off_81469A4:    .word unk_200FE63
// end of function sub_81469A0

    push {lr}
    ldr r1, [pc, #0x81469b8-0x81469aa-2] // =unk_2010150
    mov r2, #0xb
    bl sub_8146A48
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81469B8:    .word unk_2010150
.thumb
sub_81469BC:
    push {r4-r6,lr}
    lsl r5, r1, #0x10
    lsr r6, r5, #0x10
    ldr r4, [pc, #0x81469d8-0x81469c2-2] // =unk_2010150
    add r1, r4, #0
    mov r2, #0xb
    bl sub_8146A48
    strb r6, [r4,#0xb] // (byte_201015B - 0x2010150)
    lsr r5, r5, #0x18
    strb r5, [r4,#0xc] // (byte_201015C - 0x2010150)
    pop {r4-r6}
    pop {r0}
    bx r0
off_81469D8:    .word unk_2010150
// end of function sub_81469BC

.thumb
sub_81469DC:
    ldr r1, [pc, #0x81469e4-0x81469dc-4] // =byte_201015A
    strb r0, [r1]
    bx lr
    .balign 4, 0x00
off_81469E4:    .word byte_201015A
// end of function sub_81469DC

.thumb
sub_81469E8:
    ldr r0, [pc, #0x81469ec-0x81469e8-4] // =unk_2010150
    bx lr
off_81469EC:    .word unk_2010150
// end of function sub_81469E8

.thumb
sub_81469F0:
    push {r4,lr}
    add r4, r0, #0
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r3, #0
    cmp r3, r2
    bcs loc_8146A10
loc_81469FE:
    ldrb r0, [r4]
    strb r0, [r1]
    add r4, #1
    add r1, #1
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, r2
    bcc loc_81469FE
loc_8146A10:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_81469F0

.thumb
sub_8146A18:
    push {r4,r5,lr}
    add r4, r0, #0
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r3, #0
    cmp r3, r2
    bcs loc_8146A40
loc_8146A26:
    ldrb r0, [r4]
    ldrb r5, [r1]
    cmp r0, r5
    beq loc_8146A32
    mov r0, #1
    b loc_8146A42
loc_8146A32:
    add r4, #1
    add r1, #1
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, r2
    bcc loc_8146A26
loc_8146A40:
    mov r0, #0
loc_8146A42:
    pop {r4,r5}
    pop {r1}
    bx r1
// end of function sub_8146A18

.thumb
sub_8146A48:
    push {r4,lr}
    add r4, r0, #0
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r3, #0
    cmp r3, r2
    bcs loc_8146A68
loc_8146A56:
    ldrb r0, [r4]
    strb r0, [r1]
    add r4, #1
    add r1, #1
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, r2
    bcc loc_8146A56
loc_8146A68:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8146A48

.thumb
sub_8146A70:
    push {r4,lr}
    sub sp, sp, #4
    add r4, r0, #0
    mov r0, #0
    str r0, [sp]
    ldr r2, [pc, #0x8146a90-0x8146a7a-2] // =0x5000055
    mov r0, sp
    add r1, r4, #0
    bl SWI_CpuSet
    mov r0, #1
    strb r0, [r4]
    add sp, sp, #4
    pop {r4}
    pop {r0}
    bx r0
dword_8146A90:    .word 0x5000055
// end of function sub_8146A70

    push {r4,lr}
    add r4, r0, #0
    add r3, r1, #0
    ldrb r0, [r4]
    cmp r0, #0
    bne loc_8146AAC
    ldrb r0, [r4,#1]
    ldrb r1, [r4,#2]
    cmp r0, r1
    bne loc_8146AAC
    mov r0, #1
    b loc_8146ADC
loc_8146AAC:
    ldrb r1, [r4,#2]
    mov r0, #0x54 
    mul r1, r0
    add r1, #4
    add r1, r4, r1
    lsl r2, r2, #9
    lsr r2, r2, #0xb
    mov r0, #0x80
    lsl r0, r0, #0x13
    orr r2, r0
    add r0, r3, #0
    bl SWI_CpuSet
    ldrb r0, [r4,#3]
    add r0, #1
    mov r2, #0
    strb r0, [r4,#3]
    ldrb r0, [r4,#2]
    add r0, #1
    mov r1, #3
    and r0, r1
    strb r0, [r4,#2]
    strb r2, [r4]
    mov r0, #0
loc_8146ADC:
    pop {r4}
    pop {r1}
    bx r1
    .balign 4, 0x00
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    add r6, r0, #0
    ldrb r7, [r6]
    cmp r7, #0
    beq loc_8146AF8
    mov r0, #0
    b loc_8146B52
loc_8146AF8:
    ldr r0, [pc, #0x8146b60-0x8146af8-4] // =InterruptMasterEnableRegister
    mov r8, r0
    strh r7, [r0]
    ldrb r0, [r6,#1]
    mov r5, #0x54 
    mul r0, r5
    add r0, #4
    add r0, r6, r0
    lsl r4, r2, #9
    lsr r4, r4, #0xb
    mov r2, #0x80
    lsl r2, r2, #0x13
    orr r2, r4
    bl SWI_CpuSet
    str r7, [sp]
    ldrb r0, [r6,#1]
    add r1, r0, #0
    mul r1, r5
    add r1, #4
    add r1, r6, r1
    mov r0, #0xa0
    lsl r0, r0, #0x13
    orr r4, r0
    mov r0, sp
    add r2, r4, #0
    bl SWI_CpuSet
    ldrb r0, [r6,#3]
    sub r0, #1
    strb r0, [r6,#3]
    ldrb r0, [r6,#1]
    add r0, #1
    mov r1, #3
    and r0, r1
    strb r0, [r6,#1]
    ldrb r1, [r6,#2]
    cmp r0, r1
    bne loc_8146B4A
    mov r0, #1
    strb r0, [r6]
loc_8146B4A:
    mov r0, #1
    mov r1, r8
    strh r0, [r1]
    mov r0, #1
loc_8146B52:
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
    .byte 0, 0
off_8146B60:    .word InterruptMasterEnableRegister
    ldr r0, [pc, #0x8146b6c-0x8146b64-4] // =byte_2010480
    ldrb r0, [r0]
    bx lr
    .balign 4, 0x00
off_8146B6C:    .word byte_2010480
.thumb
sub_8146B70:
    push {r4,r5,lr}
    ldr r2, [pc, #0x8146ba4-0x8146b72-2] // =byte_200FE80
    ldr r5, [pc, #0x8146ba8-0x8146b74-4] // =unk_2010440
    add r0, r5, #0
    add r0, #0x3c 
    ldrb r1, [r0]
    ldrb r0, [r2]
    cmp r0, r1
    beq loc_8146BB0
    strb r1, [r2]
    ldr r4, [pc, #0x8146bac-0x8146b84-4] // =unk_20399F0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x10
    bl sub_800093C
    add r0, r5, #0
    add r0, #0xc
    add r4, #0x10
    add r1, r4, #0
    mov r2, #0x10
    bl sub_800093C
    mov r0, #2
    b loc_8146BB2
    .balign 4, 0x00
off_8146BA4:    .word byte_200FE80
off_8146BA8:    .word unk_2010440
off_8146BAC:    .word unk_20399F0
loc_8146BB0:
    mov r0, #8
loc_8146BB2:
    pop {r4,r5}
    pop {r1}
    bx r1
// end of function sub_8146B70

.thumb
sub_8146BB8:
    push {lr}
    ldr r0, [pc, #0x8146bd4-0x8146bba-2] // =dword_2010CC0
    ldr r0, [r0]
    ldr r1, [pc, #0x8146bd8-0x8146bbe-2] // =byte_200AF80
    add r0, #0xa
    ldrb r1, [r1,#0x4] // (byte_200AF84 - 0x200af80)
    add r0, r0, r1
    ldrb r0, [r0]
    add r1, r0, #0
    cmp r0, #0xe5
    bls loc_8146BDC
    mov r0, #4
    b loc_8146BF0
    .balign 4, 0x00
off_8146BD4:    .word dword_2010CC0
off_8146BD8:    .word byte_200AF80
loc_8146BDC:
    lsl r0, r0, #0x18
    cmp r0, #0
    bge loc_8146BE6
    mov r0, #3
    b loc_8146BF0
loc_8146BE6:
    cmp r1, #0x19
    bhi loc_8146BEE
    mov r0, #1
    b loc_8146BF0
loc_8146BEE:
    mov r0, #2
loc_8146BF0:
    pop {r1}
    bx r1
// end of function sub_8146BB8

.thumb
sub_8146BF4:
    push {lr}
    ldr r0, [pc, #0x8146c08-0x8146bf6-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    beq loc_8146C04
    cmp r0, #0
    bne loc_8146C0C
loc_8146C04:
    mov r0, #1
    b loc_8146C0E
off_8146C08:    .word dword_2010CC0
loc_8146C0C:
    mov r0, #0
loc_8146C0E:
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8146BF4

    ldr r1, [pc, #0x8146c1c-0x8146c14-4] // =word_2010168
    mov r0, #0
    strh r0, [r1]
    bx lr
off_8146C1C:    .word word_2010168
.thumb
sub_8146C20:
    push {r4,lr}
    add r4, r0, #0
    ldrb r0, [r4]
    cmp r0, #1
    beq loc_8146C4C
    cmp r0, #1
    bgt loc_8146C34
    cmp r0, #0
    beq loc_8146C40
    b loc_8146C5A
loc_8146C34:
    cmp r0, #2
    beq loc_8146C54
    cmp r0, #3
    bne loc_8146C5A
    mov r0, #0
    strb r0, [r4]
loc_8146C40:
    ldrb r0, [r4,#2]
    cmp r0, #0
    beq loc_8146C5A
    add r0, r4, #0
    bl sub_8146CE4
loc_8146C4C:
    add r0, r4, #0
    bl sub_8146C60
    b loc_8146C5A
loc_8146C54:
    add r0, r4, #0
    bl sub_8146C9C
loc_8146C5A:
    pop {r4}
    pop {r0}
    bx r0
// end of function sub_8146C20

.thumb
sub_8146C60:
    push {r4,lr}
    add r4, r0, #0
    ldr r1, [pc, #0x8146c88-0x8146c64-4] // =byte_20103E0
    mov r0, #0x80
    lsl r0, r0, #0x11
    ldrb r1, [r1]
    lsl r0, r1
    lsr r0, r0, #0x18
    ldr r3, [r4,#0x10]
    add r1, r3, #2
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    ldr r2, [pc, #0x8146c8c-0x8146c78-4] // =byte_200DD10
    bl sub_814AB50
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8146C90
    mov r0, #4
    b loc_8146C92
off_8146C88:    .word byte_20103E0
off_8146C8C:    .word byte_200DD10
loc_8146C90:
    mov r0, #2
loc_8146C92:
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8146C60

.thumb
sub_8146C9C:
    push {r4,lr}
    add r4, r0, #0
    ldr r1, [pc, #0x8146cc4-0x8146ca0-4] // =dword_2010CB0
    ldr r0, [pc, #0x8146cc8-0x8146ca2-2] // =byte_20103E0
    ldrb r2, [r0]
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r0, [r0]
    cmp r0, #0x26 
    bne loc_8146CCC
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
    mov r1, #0
    mov r0, #3
    strb r0, [r4]
    strb r1, [r4,#2]
    b loc_8146CDC
off_8146CC4:    .word dword_2010CB0
off_8146CC8:    .word byte_20103E0
loc_8146CCC:
    cmp r0, #0x27 
    bne loc_8146CDC
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
    mov r0, #4
    strb r0, [r4]
loc_8146CDC:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8146C9C

.thumb
sub_8146CE4:
    push {lr}
    ldr r3, [r0,#8]
    ldr r1, [pc, #0x8146cf8-0x8146ce8-4] // =byte_200DD10
    ldr r2, [r0,#0x10]
    add r0, r3, #0
    bl sub_800093C
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8146CF8:    .word byte_200DD10
// end of function sub_8146CE4

.thumb
sub_8146CFC:
    push {lr}
    sub sp, sp, #4
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x8146d18-0x8146d06-2] // =byte_200AF80
    ldr r2, [pc, #0x8146d1c-0x8146d08-4] // =0x100000C
    mov r0, sp
    bl SWI_CpuSet
    add sp, sp, #4
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8146D18:    .word byte_200AF80
dword_8146D1C:    .word 0x100000C
// end of function sub_8146CFC

.thumb
sub_8146D20:
    push {lr}
    ldr r1, [pc, #0x8146d34-0x8146d22-2] // =byte_200AF80
    ldrb r0, [r1,#0x2] // (byte_200AF82 - 0x200af80)
    cmp r0, #0
    bne loc_8146D38
    mov r0, #1
    strb r0, [r1,#0x2] // (byte_200AF82 - 0x200af80)
    mov r0, #0
    b loc_8146D3A
    .balign 4, 0x00
off_8146D34:    .word byte_200AF80
loc_8146D38:
    mov r0, #1
loc_8146D3A:
    pop {r1}
    bx r1
    .byte 0, 0
// end of function sub_8146D20

.thumb
sub_8146D40:
    push {r4-r6,lr}
    add r5, r0, #0
    ldr r6, [pc, #0x8146d74-0x8146d44-4] // =unk_2009480
    mov r4, #0
loc_8146D48:
    ldr r0, [pc, #0x8146d78-0x8146d48-4] // =byte_2010290
    ldrb r1, [r0,#0x2] // (byte_2010292 - 0x2010290)
    mov r0, #2
    lsl r0, r4
    and r1, r0
    cmp r1, #0
    beq loc_8146D7C
    mov r0, #8
    add r1, r4, #0
    bl sub_814A934
    ldr r3, [r5,#0x14]
    mov r0, #0x20 
    add r1, r4, #0
    add r2, r6, #0
    bl sub_814AAF0
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8146D7C
    mov r0, #1
    b loc_8146D90
off_8146D74:    .word unk_2009480
off_8146D78:    .word byte_2010290
loc_8146D7C:
    ldr r0, [r5,#0x14]
    lsr r0, r0, #2
    lsl r0, r0, #2
    add r6, r6, r0
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8146D48
    mov r0, #0
loc_8146D90:
    pop {r4-r6}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8146D40

.thumb
sub_8146D98:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    add r6, r0, #0
    ldr r0, [pc, #0x8146de0-0x8146da2-2] // =unk_2009480
    mov r9, r0
    mov r7, #0
    mov r4, #0
    mov r0, #2
    mov r8, r0
loc_8146DAE:
    mov r0, r8
    lsl r0, r4
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r5, r0, #0
    ldr r0, [pc, #0x8146de4-0x8146db8-4] // =byte_2010290
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r5
    cmp r0, #0
    beq loc_8146DFC
    ldr r0, [pc, #0x8146de8-0x8146dc2-2] // =dword_2010CB0
    lsl r1, r4, #2
    add r1, r1, r0
    ldr r0, [r1]
    ldrh r0, [r0,#0x34]
    cmp r0, #0x47 
    beq loc_8146DF0
    cmp r0, #0x46 
    bne loc_8146DEC
    mov r0, #8
    add r1, r4, #0
    bl sub_814A934
    orr r7, r5
    b loc_8146DFC
off_8146DE0:    .word unk_2009480
off_8146DE4:    .word byte_2010290
off_8146DE8:    .word dword_2010CB0
loc_8146DEC:
    cmp r0, #0x48 
    bne loc_8146DFC
loc_8146DF0:
    mov r0, #8
    add r1, r4, #0
    bl sub_814A934
    mov r0, r8
    strb r0, [r6,#1]
loc_8146DFC:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8146DAE
    ldr r0, [pc, #0x8146e40-0x8146e06-2] // =byte_2010290
    mov r1, #1
    orr r7, r1
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    and r7, r0
    cmp r7, r0
    bne loc_8146E34
    mov r0, #1
    strb r0, [r6,#1]
// numWords
    ldr r1, [r6,#0x14]
    lsr r2, r1, #2
    ldr r0, [pc, #0x8146e44-0x8146e1c-4] // =byte_2010328
    ldrb r0, [r0]
    mul r0, r2
    lsl r0, r0, #2
    add r9, r0
// memBlock
    ldr r0, [r6,#0xc]
    bl CpuSet_ZeroFillWord
    add r0, r6, #0
    mov r1, r9
    bl sub_8146E48
loc_8146E34:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
off_8146E40:    .word byte_2010290
off_8146E44:    .word byte_2010328
// end of function sub_8146D98

.thumb
sub_8146E48:
    push {lr}
    add r3, r1, #0
    ldr r1, [r0,#0xc]
    ldr r2, [r0,#0x14]
    add r0, r3, #0
    bl sub_800093C
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8146E48

.thumb
sub_8146E5C:
    strb r1, [r0,#5]
    bx lr
// end of function sub_8146E5C

.thumb
sub_8146E60:
    push {lr}
    ldr r0, [pc, #0x8146e70-0x8146e62-2] // =byte_20101E0
    ldr r1, [pc, #0x8146e74-0x8146e64-4] // =unk_2010230
    mov r2, #0xc
    bl sub_8146E90
    pop {r0}
    bx r0
off_8146E70:    .word byte_20101E0
off_8146E74:    .word unk_2010230
// end of function sub_8146E60

.thumb
sub_8146E78:
    push {lr}
    ldr r0, [pc, #0x8146e88-0x8146e7a-2] // =byte_20101E0
    ldr r1, [pc, #0x8146e8c-0x8146e7c-4] // =unk_2010230
    mov r2, #0xc
    bl sub_8146F90
    pop {r0}
    bx r0
off_8146E88:    .word byte_20101E0
off_8146E8C:    .word unk_2010230
// end of function sub_8146E78

.thumb
sub_8146E90:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    add r3, r0, #0
    mov r8, r1
    add r7, r2, #0
    mov r0, sp
    mov r6, #0
    strh r6, [r0]
    lsr r2, r7, #1
    ldr r5, [pc, #0x8146f64-0x8146ea6-2] // =0x1FFFFF
    and r2, r5
    mov r4, #0x80
    lsl r4, r4, #0x11
    orr r2, r4
    add r1, r3, #0
    bl SWI_CpuSet
    mov r0, sp
    add r0, #2
    strh r6, [r0]
    lsl r2, r7, #1
    and r2, r5
    orr r2, r4
    mov r1, r8
    bl SWI_CpuSet
    ldr r0, [pc, #0x8146f68-0x8146ec8-4] // =unk_200FFF0
    bl sub_8146A70
    ldr r0, [pc, #0x8146f6c-0x8146ece-2] // =unk_200FE90
    bl sub_8146A70
    ldr r0, [pc, #0x8146f70-0x8146ed4-4] // =byte_20101B4
    mov r1, #1
    strb r1, [r0]
    ldr r2, [pc, #0x8146f74-0x8146eda-2] // =byte_2010290
    ldr r0, [pc, #0x8146f78-0x8146edc-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#2]
    lsl r0, r0, #1
    orr r0, r1
    strb r0, [r2,#0x2] // (byte_2010292 - 0x2010290)
    mov r4, #0
    ldr r6, [pc, #0x8146f7c-0x8146eea-2] // =byte_2010220
    mov r2, #0
    ldr r5, [pc, #0x8146f80-0x8146eee-2] // =word_2010400
    ldr r3, [pc, #0x8146f84-0x8146ef0-4] // =word_2010428
loc_8146EF2:
    add r0, r4, r6
    strb r2, [r0]
    lsl r1, r4, #1
    add r0, r1, r5
    strh r2, [r0]
    add r1, r1, r3
    strh r2, [r1]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8146EF2
    ldr r1, [pc, #0x8146f88-0x8146f0a-2] // =byte_20101E0
    mov r0, #0
    strb r0, [r1]
    mov r4, #0
    ldr r5, [pc, #0x8146f8c-0x8146f12-2] // =byte_200BC50
loc_8146F14:
    ldr r0, [pc, #0x8146f74-0x8146f14-4] // =byte_2010290
    ldrb r1, [r0,#0x2] // (byte_2010292 - 0x2010290)
    mov r0, #2
    lsl r0, r4
    and r1, r0
    cmp r1, #0
    beq loc_8146F46
    mov r0, #0xc
    add r1, r4, #0
    bl sub_814A934
    lsl r2, r4, #2
    add r2, r8
    mov r0, #0x20 
    add r1, r4, #0
    add r3, r7, #0
    bl sub_814AAF0
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8146F46
    ldrh r1, [r5,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x80
    orr r0, r1
    strh r0, [r5,#0x8] // (word_200BC58 - 0x200bc50)
loc_8146F46:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8146F14
    ldr r1, [pc, #0x8146f8c-0x8146f50-4] // =byte_200BC50
    mov r0, #0
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_8146F64:    .word 0x1FFFFF
off_8146F68:    .word unk_200FFF0
off_8146F6C:    .word unk_200FE90
off_8146F70:    .word byte_20101B4
off_8146F74:    .word byte_2010290
off_8146F78:    .word dword_2010CC0
off_8146F7C:    .word byte_2010220
off_8146F80:    .word word_2010400
off_8146F84:    .word word_2010428
off_8146F88:    .word byte_20101E0
off_8146F8C:    .word byte_200BC50
// end of function sub_8146E90

.thumb
sub_8146F90:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    add r6, r0, #0
    add r7, r1, #0
    add r5, r2, #0
    ldr r0, [pc, #0x814700c-0x8146f9c-4] // =byte_200AF80
    mov r8, r0
    ldr r0, [pc, #0x8147010-0x8146fa0-4] // =byte_200BC50
    ldrh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    beq loc_8146FAE
    b def_814700A
loc_8146FAE:
    ldr r1, [pc, #0x8147014-0x8146fae-2] // =byte_2010368
loc_8146FB0:
    ldrb r0, [r1]
    cmp r0, #1
    beq loc_8146FB0
    mov r0, #0
    bl sub_81453F0
    ldr r4, [pc, #0x8147018-0x8146fbc-4] // =byte_2010340
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_8146FD0
    bl sub_814A4CC
    bl sub_8149568
    mov r0, #0
    strb r0, [r4]
loc_8146FD0:
    ldr r0, [pc, #0x814701c-0x8146fd0-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0]
    cmp r1, #1
    bne loc_8146FE4
    ldr r0, [pc, #0x8147014-0x8146fda-2] // =byte_2010368
    strb r1, [r0]
    mov r0, #1
    bl sub_8144DB0
loc_8146FE4:
    mov r0, r8
    add r1, r6, #0
    add r2, r5, #0
    bl sub_81472F8
    mov r0, r8
    add r1, r7, #0
    bl sub_814713C
    ldr r0, [pc, #0x8147010-0x8146ff6-2] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
// switch 56 cases 
    sub r0, #9
    cmp r0, #0x37 
    bls loc_8147002
    b def_814700A
loc_8147002:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8147020-0x8147004-4] // =jpt_814700A
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
off_814700C:    .word byte_200AF80
off_8147010:    .word byte_200BC50
off_8147014:    .word byte_2010368
off_8147018:    .word byte_2010340
off_814701C:    .word dword_2010CC0
off_8147020:    .word jpt_814700A
// jump table for switch statement
jpt_814700A:    .word loc_8147104
    .word def_814700A
    .word loc_8147108
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word loc_8147118
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word def_814700A
    .word loc_8147122
loc_8147104:
    mov r0, #1
    b loc_8147124
loc_8147108:
    bl sub_8144EEC
    ldr r1, [pc, #0x8147114-0x814710c-4] // =byte_200BC50
    mov r0, #0xc
    b loc_814712C
    .balign 4, 0x00
off_8147114:    .word byte_200BC50
loc_8147118:
    bl sub_814A828
    bl sub_813D760
    b def_814700A
loc_8147122:
    mov r0, #0
loc_8147124:
    bl sub_8145120
    ldr r1, [pc, #0x8147138-0x8147128-4] // =byte_200BC50
    mov r0, #0xa
loc_814712C:
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_814700A:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
off_8147138:    .word byte_200BC50
// end of function sub_8146F90

.thumb
sub_814713C:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    add r7, r0, #0
    mov r9, r1
    mov r6, #0
    mov r4, #0
    mov r0, #2
    mov r8, r0
loc_8147150:
    mov r0, r8
    lsl r0, r4
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r5, r0, #0
    ldr r0, [pc, #0x8147184-0x814715a-2] // =byte_2010290
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r5
    cmp r0, #0
    beq loc_814719C
    ldr r0, [pc, #0x8147188-0x8147164-4] // =dword_2010CB0
    lsl r1, r4, #2
    add r1, r1, r0
    ldr r0, [r1]
    ldrh r0, [r0,#0x34]
    cmp r0, #0x47 
    beq loc_8147190
    cmp r0, #0x46 
    bne loc_814718C
    mov r0, #8
    add r1, r4, #0
    bl sub_814A934
    orr r6, r5
    b loc_814719C
    .balign 4, 0x00
off_8147184:    .word byte_2010290
off_8147188:    .word dword_2010CB0
loc_814718C:
    cmp r0, #0x48 
    bne loc_814719C
loc_8147190:
    mov r0, #8
    add r1, r4, #0
    bl sub_814A934
    mov r0, r8
    strb r0, [r7,#1]
loc_814719C:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8147150
    ldr r0, [pc, #0x81471d0-0x81471a6-2] // =byte_2010290
    mov r1, #1
    orr r6, r1
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    and r6, r0
    cmp r6, r0
    bne loc_81471C4
    mov r0, #1
    strb r0, [r7,#1]
    ldr r0, [pc, #0x81471d4-0x81471b8-4] // =byte_2010328
    ldrb r0, [r0]
    lsl r0, r0, #2
    add r0, r9
    bl sub_813D7B8
loc_81471C4:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
off_81471D0:    .word byte_2010290
off_81471D4:    .word byte_2010328
// end of function sub_814713C

.thumb
sub_81471D8:
    push {r4,lr}
    add r4, r0, #0
    add r3, r1, #0
    ldr r0, [pc, #0x814720c-0x81471de-2] // =byte_2010280
    ldrb r0, [r0]
    add r1, r3, #3
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    ldr r2, [pc, #0x8147210-0x81471e8-4] // =byte_20101E0
    bl sub_814AB50
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    beq loc_814721C
    mov r0, #4
    strb r0, [r4]
    ldr r2, [pc, #0x8147214-0x81471fa-2] // =byte_200BC50
    ldrh r1, [r2,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x80
    orr r0, r1
    strh r0, [r2,#0x8] // (word_200BC58 - 0x200bc50)
    ldr r1, [pc, #0x8147218-0x8147204-4] // =byte_20101B4
    mov r0, #0x83
    strb r0, [r1]
    b loc_8147222
off_814720C:    .word byte_2010280
off_8147210:    .word byte_20101E0
off_8147214:    .word byte_200BC50
off_8147218:    .word byte_20101B4
loc_814721C:
    mov r0, #2
    strb r0, [r4]
    strb r1, [r4,#2]
loc_8147222:
    pop {r4}
    pop {r0}
    bx r0
// end of function sub_81471D8

.thumb
sub_8147228:
    push {r4-r6,lr}
    add r5, r0, #0
    add r6, r1, #0
    ldr r1, [pc, #0x814726c-0x814722e-2] // =dword_2010CB0
    ldr r0, [pc, #0x8147270-0x8147230-4] // =byte_2010328
    ldrb r2, [r0]
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r1, [r0]
    ldrh r0, [r1]
    cmp r0, #0x26 
    bne loc_8147274
    add r0, r1, #0
    add r0, #0x2c 
    ldrb r0, [r0]
    ldrb r4, [r1,#0x1a]
    eor r4, r0
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
    cmp r4, #0
    bne loc_8147280
    mov r0, #3
    strb r0, [r5]
    ldrb r4, [r6,#1]
    mov r0, #0
    bl sub_802D064
    add r1, r0, #0
    add r0, r4, #0
    bl sub_813D78C
    b loc_8147284
off_814726C:    .word dword_2010CB0
off_8147270:    .word byte_2010328
loc_8147274:
    cmp r0, #0x27 
    bne loc_8147284
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
loc_8147280:
    mov r0, #4
    strb r0, [r5]
loc_8147284:
    pop {r4-r6}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8147228

.thumb
sub_814728C:
    push {r4,r5,lr}
    sub sp, sp, #4
    ldr r1, [pc, #0x81472e4-0x8147290-4] // =byte_20101E0
    ldrb r5, [r1]
    mov r2, sp
    mov r0, #0
    strh r0, [r2]
    ldr r2, [pc, #0x81472e8-0x814729a-2] // =0x1000006
    mov r0, sp
    bl SWI_CpuSet
    mov r4, #0
loc_81472A4:
    ldr r0, [pc, #0x81472ec-0x81472a4-4] // =byte_2010290
    ldrb r1, [r0,#0x2] // (byte_2010292 - 0x2010290)
    mov r0, #2
    lsl r0, r4
    and r1, r0
    cmp r1, #0
    beq loc_81472C4
    ldr r0, [pc, #0x81472f0-0x81472b2-2] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_81472C4
    ldr r0, [pc, #0x81472f4-0x81472ba-2] // =byte_200DD10
    ldr r1, [pc, #0x81472e4-0x81472bc-4] // =byte_20101E0
    mov r2, #0xc
    bl sub_800093C
loc_81472C4:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_81472A4
    ldr r0, [pc, #0x81472f0-0x81472ce-2] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_81472DC
    ldr r1, [pc, #0x81472e4-0x81472d6-2] // =byte_20101E0
    add r0, r5, #1
    strb r0, [r1]
loc_81472DC:
    add sp, sp, #4
    pop {r4,r5}
    pop {r0}
    bx r0
off_81472E4:    .word byte_20101E0
dword_81472E8:    .word 0x1000006
off_81472EC:    .word byte_2010290
off_81472F0:    .word byte_20101B4
off_81472F4:    .word byte_200DD10
// end of function sub_814728C

.thumb
sub_81472F8:
    push {r4,r5,lr}
    add r4, r0, #0
    add r3, r1, #0
    add r5, r2, #0
    ldrb r0, [r4]
// switch 5 cases 
    cmp r0, #4
    bhi def_814730E
    lsl r0, r0, #2
    ldr r1, [pc, #0x8147310-0x8147308-4] // =jpt_814730E
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
off_8147310:    .word jpt_814730E
// jump table for switch statement
jpt_814730E:    .word loc_814732C
    .word loc_8147336
    .word loc_8147340
    .word loc_8147328
    .word def_814730E
loc_8147328:
    mov r0, #0
    strb r0, [r4]
loc_814732C:
    ldrb r0, [r4,#2]
    cmp r0, #0
    beq def_814730E
    bl sub_814728C
loc_8147336:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_81471D8
    b def_814730E
loc_8147340:
    add r0, r4, #0
    add r1, r3, #0
    bl sub_8147228
def_814730E:
    pop {r4,r5}
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_81472F8

.thumb
sub_8147350:
    push {r4,lr}
    sub sp, sp, #4
    mov r0, #4
    bl sub_803DE88
    ldr r0, [pc, #0x81473b4-0x814735a-2] // =byte_2010280
    mov r1, #0
    strb r1, [r0]
    ldr r0, [pc, #0x81473b8-0x8147360-4] // =byte_201033C
    strb r1, [r0]
    ldr r0, [pc, #0x81473bc-0x8147364-4] // =byte_201028C
    strb r1, [r0]
    ldr r0, [pc, #0x81473c0-0x8147368-4] // =byte_2010340
    strb r1, [r0]
    ldr r0, [pc, #0x81473c4-0x814736c-4] // =byte_2010328
    strb r1, [r0]
    ldr r0, [pc, #0x81473c8-0x8147370-4] // =byte_2010368
    strb r1, [r0]
    bl sub_813D960
    mov r0, sp
    mov r4, #0
    strh r4, [r0]
    ldr r1, [pc, #0x81473cc-0x814737e-2] // =byte_2010290
    ldr r2, [pc, #0x81473d0-0x8147380-4] // =0x1000020
    bl SWI_CpuSet
    ldr r0, [pc, #0x81473d4-0x8147386-2] // =unk_2010350
    bl sub_81465FC
    ldr r0, [pc, #0x81473d8-0x814738c-4] // =sub_81473EC+1
    ldr r1, [pc, #0x81473dc-0x814738e-2] // =sub_81475B8+1
    bl sub_8144DF0
    ldr r0, [pc, #0x81473e0-0x8147394-4] // =Timer2Counter_Reload
    strh r4, [r0]
    ldr r1, [pc, #0x81473e4-0x8147398-4] // =Timer2Control
    mov r0, #0x83
    strh r0, [r1]
    ldr r1, [pc, #0x81473e8-0x814739e-2] // =byte_200BC50
    mov r2, #1
    mov r0, #1
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    strb r2, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
    bl sub_8146CFC
    add sp, sp, #4
    pop {r4}
    pop {r1}
    bx r1
off_81473B4:    .word byte_2010280
off_81473B8:    .word byte_201033C
off_81473BC:    .word byte_201028C
off_81473C0:    .word byte_2010340
off_81473C4:    .word byte_2010328
off_81473C8:    .word byte_2010368
off_81473CC:    .word byte_2010290
dword_81473D0:    .word 0x1000020
off_81473D4:    .word unk_2010350
off_81473D8:    .word sub_81473EC+1
off_81473DC:    .word sub_81475B8+1
off_81473E0:    .word Timer2Counter_Reload
off_81473E4:    .word Timer2Control
off_81473E8:    .word byte_200BC50
// end of function sub_8147350

.thumb
sub_81473EC:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    cmp r0, #0x32 
    bne loc_81473FA
    b loc_81475AA
loc_81473FA:
    cmp r0, #0x32 
    bgt loc_814742A
    cmp r0, #0x12
    beq loc_8147490
    cmp r0, #0x12
    bgt loc_8147416
    cmp r0, #0x10
    bne loc_814740C
    b loc_81475AA
loc_814740C:
    cmp r0, #0x10
    bgt loc_8147478
    cmp r0, #0
    beq loc_8147470
    b loc_81475AA
loc_8147416:
    cmp r0, #0x14
    beq loc_81474C4
    cmp r0, #0x14
    bge loc_8147420
    b loc_81475AA
loc_8147420:
    cmp r0, #0x30 
    beq loc_81474F0
    cmp r0, #0x31 
    beq loc_81474E8
    b loc_81475AA
loc_814742A:
    cmp r0, #0x44 
    bne loc_8147430
    b loc_8147538
loc_8147430:
    cmp r0, #0x44 
    bgt loc_8147444
    cmp r0, #0x42 
    bne loc_814743A
    b loc_8147544
loc_814743A:
    cmp r0, #0x42 
    bgt loc_8147524
    cmp r0, #0x33 
    beq loc_81474F0
    b loc_81475AA
loc_8147444:
    cmp r0, #0xf0
    bne loc_814744A
    b loc_8147550
loc_814744A:
    cmp r0, #0xf0
    bgt loc_8147454
    cmp r0, #0x50 
    beq loc_8147462
    b loc_81475AA
loc_8147454:
    cmp r1, #0xf1
    bne loc_814745A
    b loc_8147598
loc_814745A:
    cmp r1, #0xff
    bne loc_8147460
    b loc_8147588
loc_8147460:
    b loc_81475AA
loc_8147462:
    ldr r1, [pc, #0x814746c-0x8147462-2] // =byte_2010368
    mov r0, #0
    strb r0, [r1]
    b loc_81475AA
    .balign 4, 0x00
off_814746C:    .word byte_2010368
loc_8147470:
    ldr r1, [pc, #0x8147474-0x8147470-4] // =byte_200BC50
    b loc_814750E
off_8147474:    .word byte_200BC50
loc_8147478:
    ldr r2, [pc, #0x8147488-0x8147478-4] // =byte_2010280
    ldr r0, [pc, #0x814748c-0x814747a-2] // =byte_200FE00
    ldrb r1, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    ldrb r0, [r2]
    orr r0, r1
    strb r0, [r2]
    b loc_81475AA
    .balign 4, 0x00
off_8147488:    .word byte_2010280
off_814748C:    .word byte_200FE00
loc_8147490:
    mov r2, #0
    ldr r0, [pc, #0x81474bc-0x8147492-2] // =byte_200FE00
    ldrh r5, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    mov r4, #1
    ldr r3, [pc, #0x81474c0-0x8147498-4] // =byte_2010284
loc_814749A:
    add r0, r5, #0
    asr r0, r2
    and r0, r4
    cmp r0, #0
    beq loc_81474AE
    add r0, r4, #0
    lsl r0, r2
    ldrb r1, [r3]
    orr r0, r1
    strb r0, [r3]
loc_81474AE:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_814749A
    b loc_81475AA
    .balign 4, 0x00
off_81474BC:    .word byte_200FE00
off_81474C0:    .word byte_2010284
loc_81474C4:
    ldr r0, [pc, #0x81474d4-0x81474c4-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#1]
    cmp r0, #0
    bne loc_81474DC
    ldr r1, [pc, #0x81474d8-0x81474ce-2] // =byte_200BC50
    b loc_814750E
    .balign 4, 0x00
off_81474D4:    .word dword_2010CC0
off_81474D8:    .word byte_200BC50
loc_81474DC:
    ldr r1, [pc, #0x81474e4-0x81474dc-4] // =byte_200BC50
    mov r0, #0x22 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_81475AA
off_81474E4:    .word byte_200BC50
loc_81474E8:
    mov r0, #0xe
    bl sub_813D934
    b loc_81475AA
loc_81474F0:
    ldr r2, [pc, #0x8147514-0x81474f0-4] // =byte_2010280
    ldr r0, [pc, #0x8147518-0x81474f2-2] // =byte_200FE00
    ldrb r1, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    ldrb r0, [r2]
    bic r0, r1
    strb r0, [r2]
    ldr r1, [pc, #0x814751c-0x81474fc-4] // =byte_200BC50
    ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #4
    beq loc_81475AA
    ldr r0, [pc, #0x8147520-0x8147504-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0xff
    bne loc_81475AA
loc_814750E:
    mov r0, #3
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_81475AA
off_8147514:    .word byte_2010280
off_8147518:    .word byte_200FE00
off_814751C:    .word byte_200BC50
off_8147520:    .word dword_2010CC0
loc_8147524:
    ldr r1, [pc, #0x8147534-0x8147524-4] // =byte_200BC50
    mov r0, #3
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x14
    bl sub_813D934
    b loc_81475AA
    .balign 4, 0x00
off_8147534:    .word byte_200BC50
loc_8147538:
    ldr r1, [pc, #0x8147540-0x8147538-4] // =byte_200BC50
    mov r0, #0xb
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_81475AA
off_8147540:    .word byte_200BC50
loc_8147544:
    ldr r1, [pc, #0x814754c-0x8147544-4] // =byte_200BC50
    mov r0, #0x34 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_81475AA
off_814754C:    .word byte_200BC50
loc_8147550:
    mov r0, #0x15
    bl sub_813D94C
    cmp r0, #0
    beq loc_8147560
    mov r0, #0x15
    bl sub_813D934
loc_8147560:
    ldr r1, [pc, #0x8147578-0x8147560-4] // =word_20102D0
    ldr r0, [pc, #0x814757c-0x8147562-2] // =byte_200FE00
    ldrh r0, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    strh r0, [r1]
    ldr r1, [pc, #0x8147580-0x8147568-4] // =byte_2010368
    mov r0, #0
    strb r0, [r1]
    ldr r1, [pc, #0x8147584-0x814756e-2] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_81475AA
    .balign 4, 0x00
off_8147578:    .word word_20102D0
off_814757C:    .word byte_200FE00
off_8147580:    .word byte_2010368
off_8147584:    .word byte_200BC50
loc_8147588:
    ldr r1, [pc, #0x8147594-0x8147588-4] // =byte_200BC50
    mov r4, #0
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #1
    b loc_81475A2
off_8147594:    .word byte_200BC50
loc_8147598:
    ldr r1, [pc, #0x81475b0-0x8147598-4] // =byte_200BC50
    mov r4, #0
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0xd
loc_81475A2:
    bl sub_813D934
    ldr r0, [pc, #0x81475b4-0x81475a6-2] // =byte_2010368
    strb r4, [r0]
loc_81475AA:
    pop {r4,r5}
    pop {r0}
    bx r0
off_81475B0:    .word byte_200BC50
off_81475B4:    .word byte_2010368
// end of function sub_81473EC

.thumb
sub_81475B8:
    push {lr}
    bl sub_814B694
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_81475B8

    push {lr}
    ldr r0, [pc, #0x81475d0-0x81475c6-2] // =dword_814FE94
    bl sub_81475D4
    pop {r0}
    bx r0
off_81475D0:    .word dword_814FE94
.thumb
sub_81475D4:
    push {r4,r5,lr}
    add r5, r0, #0
    ldr r1, [pc, #0x8147630-0x81475d8-4] // =byte_2010368
loc_81475DA:
    ldrb r0, [r1]
    cmp r0, #1
    beq loc_81475DA
    ldr r0, [pc, #0x8147634-0x81475e0-4] // =Timer2Counter_Reload
    ldrh r0, [r0]
    bl sub_81453F0
    ldr r4, [pc, #0x8147638-0x81475e8-4] // =byte_2010340
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_81475FC
    bl sub_814A4CC
    bl sub_8149568
    mov r0, #0
    strb r0, [r4]
loc_81475FC:
    ldr r0, [pc, #0x814763c-0x81475fc-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0]
    cmp r1, #1
    bne loc_8147610
    ldr r0, [pc, #0x8147630-0x8147606-2] // =byte_2010368
    strb r1, [r0]
    mov r0, #1
    bl sub_8144DB0
loc_8147610:
    bl sub_8147834
    bl sub_8147A84
    ldr r0, [pc, #0x8147640-0x8147618-4] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
// switch 64 cases 
    sub r0, #1
    cmp r0, #0x3f 
    bls loc_8147624
    b def_814762C
loc_8147624:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8147644-0x8147626-2] // =jpt_814762C
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .byte 0, 0
off_8147630:    .word byte_2010368
off_8147634:    .word Timer2Counter_Reload
off_8147638:    .word byte_2010340
off_814763C:    .word dword_2010CC0
off_8147640:    .word byte_200BC50
off_8147644:    .word jpt_814762C
// jump table for switch statement
jpt_814762C:    .word loc_8147748
    .word def_814762C
    .word loc_814775C
    .word loc_8147784
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word loc_81477B0
    .word def_814762C
    .word loc_8147804
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word loc_81477B4
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word loc_8147814
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word def_814762C
    .word loc_814781E
loc_8147748:
    ldr r0, [pc, #0x8147754-0x8147748-4] // =unk_2010350
    bl sub_8144E70
    ldr r1, [pc, #0x8147758-0x814774e-2] // =byte_200BC50
    mov r0, #2
    b loc_8147828
off_8147754:    .word unk_2010350
off_8147758:    .word byte_200BC50
loc_814775C:
    mov r0, #1
    mov r1, #0
    mov r2, #0x78 
    add r3, r5, #0
    bl sub_8144EF8
    lsl r0, r0, #0x18
    cmp r0, #0
    bne def_814762C
    ldr r1, [pc, #0x814777c-0x814776e-2] // =byte_200BC50
    mov r2, #0
    mov r0, #4
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    ldr r0, [pc, #0x8147780-0x8147776-2] // =byte_2010284
    strb r2, [r0]
    b def_814762C
off_814777C:    .word byte_200BC50
off_8147780:    .word byte_2010284
loc_8147784:
    ldr r0, [pc, #0x81477a0-0x8147784-4] // =byte_2010280
    ldrb r1, [r0]
    cmp r1, #0
    beq loc_8147796
    ldr r0, [pc, #0x81477a4-0x814778c-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#2]
    cmp r1, r0
    beq loc_81477A8
loc_8147796:
    mov r0, #0xb
    bl sub_813D934
    b def_814762C
    .byte 0, 0
off_81477A0:    .word byte_2010280
off_81477A4:    .word dword_2010CC0
loc_81477A8:
    mov r0, #0xc
    bl sub_813D934
    b def_814762C
loc_81477B0:
    mov r0, #1
    b loc_8147820
loc_81477B4:
    ldr r0, [pc, #0x81477d8-0x81477b4-4] // =byte_201028C
    ldrb r1, [r0]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    beq def_814762C
    ldr r0, [pc, #0x81477dc-0x81477c0-4] // =byte_2010290
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_81477E4
    ldr r0, [pc, #0x81477e0-0x81477c8-4] // =byte_200AF80
    ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
    cmp r0, #1
    bne def_814762C
    bl sub_813D98C
    b def_814762C
    .balign 4, 0x00
off_81477D8:    .word byte_201028C
off_81477DC:    .word byte_2010290
off_81477E0:    .word byte_200AF80
loc_81477E4:
    ldr r0, [pc, #0x81477f4-0x81477e4-4] // =byte_200AF80
    ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
    cmp r0, #1
    bne loc_81477F8
    bl sub_813D978
    b def_814762C
    .balign 4, 0x00
off_81477F4:    .word byte_200AF80
loc_81477F8:
    bl sub_813D8D0
    mov r0, #0
    bl sub_813D934
    b def_814762C
loc_8147804:
    bl sub_8144EEC
    ldr r1, [pc, #0x8147810-0x8147808-4] // =byte_200BC50
    mov r0, #0xc
    b loc_8147828
    .byte 0, 0
off_8147810:    .word byte_200BC50
loc_8147814:
    bl sub_814A828
    bl sub_813D760
    b def_814762C
loc_814781E:
    mov r0, #0
loc_8147820:
    bl sub_8145120
    ldr r1, [pc, #0x8147830-0x8147824-4] // =byte_200BC50
    mov r0, #0xa
loc_8147828:
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_814762C:
    pop {r4,r5}
    pop {r0}
    bx r0
off_8147830:    .word byte_200BC50
// end of function sub_81475D4

.thumb
sub_8147834:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    ldr r0, [pc, #0x8147868-0x814783a-2] // =byte_200AF80
    mov r8, r0
    mov r7, #0
    ldr r1, [pc, #0x814786c-0x8147840-4] // =byte_201028C
    ldrb r2, [r1]
    mov r0, #2
    and r0, r2
    add r5, r1, #0
    cmp r0, #0
    bne loc_8147862
    ldr r0, [pc, #0x8147870-0x814784e-2] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r1, [r1,#3]
    add r6, r0, #0
    cmp r1, #0
    bne loc_8147862
    mov r0, #0x80
    and r0, r2
    cmp r0, #0
    beq loc_8147874
loc_8147862:
    mov r0, #0
    b loc_814792A
    .balign 4, 0x00
off_8147868:    .word byte_200AF80
off_814786C:    .word byte_201028C
off_8147870:    .word dword_2010CC0
loc_8147874:
    ldr r0, [pc, #0x8147934-0x8147874-4] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #0x22 
    bne loc_814788A
    mov r0, #0x40 
    and r0, r2
    cmp r0, #0
    bne loc_814788A
    mov r0, #0x45 
    orr r0, r2
    strb r0, [r5]
loc_814788A:
    ldr r0, [pc, #0x8147938-0x814788a-2] // =byte_201033C
    ldr r1, [pc, #0x814793c-0x814788c-4] // =byte_2010280
    ldrb r2, [r0]
    add r3, r0, #0
    add r4, r1, #0
    ldrb r0, [r4]
    cmp r2, r0
    beq loc_81478B0
    ldrb r1, [r5]
    mov r0, #4
    orr r1, r0
    strb r1, [r5]
    ldr r0, [r6]
    ldrb r0, [r0,#2]
    cmp r0, #0
    beq loc_81478B0
    mov r0, #1
    orr r1, r0
    strb r1, [r5]
loc_81478B0:
    ldrb r0, [r4]
    strb r0, [r3]
    ldrb r1, [r5]
    mov r0, #4
    and r0, r1
    cmp r0, #0
    beq loc_81478CC
    bl sub_814794C
    ldrb r1, [r5]
    mov r0, #0xfb
    and r0, r1
    strb r0, [r5]
    mov r7, #1
loc_81478CC:
    ldrb r1, [r5]
    mov r6, #1
    add r0, r6, #0
    and r0, r1
    cmp r0, #0
    beq loc_8147928
    ldrb r0, [r4]
    ldr r2, [pc, #0x8147940-0x81478da-2] // =byte_2010290
    mov r1, #0x43 
    mov r3, #0x40 
    bl sub_814AB50
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_8147928
    mov r2, #0
    ldr r0, [pc, #0x8147944-0x81478ec-4] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r1, [r1,#2]
    and r1, r6
    add r6, r0, #0
    ldr r4, [pc, #0x8147948-0x81478f6-2] // =byte_2010328
    cmp r1, #0
    bne loc_8147916
    add r3, r6, #0
    mov r1, #1
loc_8147900:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bhi loc_8147916
    ldr r0, [r3]
    ldrb r0, [r0,#2]
    asr r0, r2
    and r0, r1
    cmp r0, #0
    beq loc_8147900
loc_8147916:
    strb r2, [r4]
    mov r0, r8
    strb r2, [r0,#0x4] // (byte_200AF84 - 0x200af80)
    ldrb r0, [r5]
    mov r1, #0xfe
    and r1, r0
    mov r0, #2
    orr r1, r0
    strb r1, [r5]
loc_8147928:
    add r0, r7, #0
loc_814792A:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
off_8147934:    .word byte_200BC50
off_8147938:    .word byte_201033C
off_814793C:    .word byte_2010280
off_8147940:    .word byte_2010290
off_8147944:    .word dword_2010CC0
off_8147948:    .word byte_2010328
// end of function sub_8147834

.thumb
sub_814794C:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    mov r0, sp
    mov r5, #0
    strh r5, [r0]
    ldr r4, [pc, #0x814798c-0x814795e-2] // =byte_2010290
    ldr r2, [pc, #0x8147990-0x8147960-4] // =0x1000020
    add r1, r4, #0
    bl SWI_CpuSet
    ldr r0, [pc, #0x8147994-0x8147968-4] // =byte_200AF80
    ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
    sub r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #1
    bhi loc_814797A
    mov r0, #1
    strb r0, [r4]
loc_814797A:
    ldr r0, [pc, #0x8147998-0x814797a-2] // =byte_201028C
    ldrb r1, [r0]
    mov r0, #0x40 
    and r0, r1
    cmp r0, #0
    beq loc_814799C
    mov r0, #1
    strb r0, [r4,#0x1] // (byte_2010291 - 0x2010290)
    b loc_814799E
off_814798C:    .word byte_2010290
dword_8147990:    .word 0x1000020
off_8147994:    .word byte_200AF80
off_8147998:    .word byte_201028C
loc_814799C:
    strb r5, [r4,#0x1] // (byte_2010291 - 0x2010290)
loc_814799E:
    ldr r0, [pc, #0x8147a70-0x814799e-2] // =byte_2010290
    mov r1, #1
    strb r1, [r0,#0x3] // (byte_2010293 - 0x2010290)
    mov r6, #0
    add r4, r0, #0
    ldr r5, [pc, #0x8147a74-0x81479a8-4] // =dword_2010CC0
    ldr r0, [pc, #0x8147a78-0x81479aa-2] // =byte_2010280
    ldrb r2, [r0]
    mov r3, #1
    add r1, r4, #0
loc_81479B2:
    add r0, r2, #0
    asr r0, r6
    and r0, r3
    cmp r0, #0
    beq loc_81479C2
    ldrb r0, [r1,#0x3] // (byte_2010293 - 0x2010290)
    add r0, #1
    strb r0, [r1,#0x3] // (byte_2010293 - 0x2010290)
loc_81479C2:
    add r0, r6, #1
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_81479B2
    ldr r0, [pc, #0x8147a78-0x81479cc-4] // =byte_2010280
    ldrb r0, [r0]
    lsl r0, r0, #1
    mov r1, #1
    orr r0, r1
    strb r0, [r4,#0x2] // (byte_2010292 - 0x2010290)
    ldr r0, [r5]
    add r0, #0xa9
    add r1, r4, #4
    mov r2, #8
    bl sub_81469F0
    ldr r0, [r5]
    add r1, r0, #0
    add r1, #0x94
    ldrh r1, [r1]
    strh r1, [r4,#0x36] // (word_20102C6 - 0x2010290)
    add r0, #0x9a
    ldr r1, [pc, #0x8147a7c-0x81479f0-4] // =unk_20102E0
    mov r2, #0xd
    bl sub_81469F0
    mov r6, #0
    mov r8, r5
    mov r0, #0xe
    add r0, r0, r4
    mov r10, r0
    add r4, #0x36 
    mov r9, r4
loc_8147A06:
    ldr r0, [pc, #0x8147a78-0x8147a06-2] // =byte_2010280
    ldrb r1, [r0]
    asr r1, r6
    mov r0, #1
    and r1, r0
    add r7, r6, #1
    cmp r1, #0
    beq loc_8147A56
    lsl r5, r6, #5
    add r4, r5, #0
    add r4, #0x14
    mov r1, r8
    ldr r0, [r1]
    add r0, r0, r4
    add r0, #0x15
    lsl r1, r6, #2
    add r1, r1, r6
    lsl r1, r1, #1
    add r1, r10
    mov r2, #8
    bl sub_81469F0
    mov r2, r8
    ldr r0, [r2]
    add r0, r0, r4
    add r0, #6
    mov r1, #0xd
    mul r1, r6
    ldr r2, [pc, #0x8147a80-0x8147a3e-2] // =0x20102ED
    add r1, r1, r2
    mov r2, #0xd
    bl sub_81469F0
    lsl r1, r7, #1
    add r1, r9
    mov r2, r8
    ldr r0, [r2]
    add r0, r0, r5
    ldrh r0, [r0,#0x14]
    strh r0, [r1]
loc_8147A56:
    lsl r0, r7, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_8147A06
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
off_8147A70:    .word byte_2010290
off_8147A74:    .word dword_2010CC0
off_8147A78:    .word byte_2010280
off_8147A7C:    .word unk_20102E0
dword_8147A80:    .word 0x20102ED
// end of function sub_814794C

.thumb
sub_8147A84:
    push {r4,r5,lr}
    mov r4, #0
    ldr r5, [pc, #0x8147ad4-0x8147a88-4] // =byte_201028C
    ldrb r1, [r5]
    mov r0, #2
    and r0, r1
    cmp r0, #0
    beq loc_8147B14
    ldr r1, [pc, #0x8147ad8-0x8147a94-4] // =dword_2010CB0
    ldr r0, [pc, #0x8147adc-0x8147a96-2] // =byte_2010328
    ldrb r3, [r0]
    lsl r0, r3, #2
    add r0, r0, r1
    ldr r2, [r0]
    ldrh r0, [r2]
    cmp r0, #0x26 
    bne loc_8147AE0
    add r0, r2, #0
    add r0, #0x2c 
    ldrb r1, [r0]
    ldrb r0, [r2,#0x1a]
    add r4, r0, #0
    eor r4, r1
    mov r0, #4
    add r1, r3, #0
    bl sub_814A934
    ldrb r0, [r5]
    mov r2, #0xfd
    and r2, r0
    strb r2, [r5]
    mov r0, #0x40 
    and r0, r2
    cmp r0, #0
    beq loc_8147B08
    mov r1, #0x80
    add r0, r2, #0
    orr r0, r1
    strb r0, [r5]
    b loc_8147B08
off_8147AD4:    .word byte_201028C
off_8147AD8:    .word dword_2010CB0
off_8147ADC:    .word byte_2010328
loc_8147AE0:
    cmp r0, #0x27 
    bne loc_8147B08
    add r0, r2, #0
    add r0, #0x2c 
    ldrb r1, [r0]
    ldrb r0, [r2,#0x1a]
    add r4, r0, #0
    eor r4, r1
    mov r0, #4
    add r1, r3, #0
    bl sub_814A934
    mov r0, #0
    strb r0, [r5]
    ldr r1, [pc, #0x8147b1c-0x8147afc-4] // =byte_200BC50
    ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #0x22 
    bne loc_8147B08
    mov r0, #3
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
loc_8147B08:
    cmp r4, #0
    beq loc_8147B14
    ldr r1, [pc, #0x8147b20-0x8147b0c-4] // =byte_2010340
    ldrb r0, [r1]
    orr r4, r0
    strb r4, [r1]
loc_8147B14:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8147B1C:    .word byte_200BC50
off_8147B20:    .word byte_2010340
// end of function sub_8147A84

.thumb
sub_8147B24:
    push {lr}
    ldr r0, [pc, #0x8147b34-0x8147b26-2] // =byte_2010390
    ldr r1, [pc, #0x8147b38-0x8147b28-4] // =unk_20103A0
    mov r2, #0xc
    bl sub_8147B54
    pop {r0}
    bx r0
off_8147B34:    .word byte_2010390
off_8147B38:    .word unk_20103A0
// end of function sub_8147B24

.thumb
sub_8147B3C:
    push {lr}
    ldr r0, [pc, #0x8147b4c-0x8147b3e-2] // =byte_2010390
    ldr r1, [pc, #0x8147b50-0x8147b40-4] // =unk_20103A0
    mov r2, #0xc
    bl sub_8147C20
    pop {r0}
    bx r0
off_8147B4C:    .word byte_2010390
off_8147B50:    .word unk_20103A0
// end of function sub_8147B3C

.thumb
sub_8147B54:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    add r3, r0, #0
    add r7, r1, #0
    mov r8, r2
    mov r0, sp
    mov r5, #0
    strh r5, [r0]
    lsl r4, r2, #0xa
    lsr r4, r4, #0xb
    mov r0, #0x80
    lsl r0, r0, #0x11
    orr r4, r0
    mov r0, sp
    add r1, r3, #0
    add r2, r4, #0
    bl SWI_CpuSet
    mov r0, sp
    add r0, #2
    strh r5, [r0]
    add r1, r7, #0
    add r2, r4, #0
    bl SWI_CpuSet
    ldr r0, [pc, #0x8147bf4-0x8147b8a-2] // =unk_200FFF0
    bl sub_8146A70
    ldr r0, [pc, #0x8147bf8-0x8147b90-4] // =unk_200FE90
    bl sub_8146A70
    ldr r1, [pc, #0x8147bfc-0x8147b96-2] // =byte_20101B4
    mov r0, #1
    strb r0, [r1]
    ldr r1, [pc, #0x8147c00-0x8147b9c-4] // =byte_2010274
    ldr r0, [pc, #0x8147c04-0x8147b9e-2] // =byte_2010290
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    strb r0, [r1]
    mov r2, #0
    ldr r6, [pc, #0x8147c08-0x8147ba6-2] // =byte_2010220
    mov r3, #0
    ldr r5, [pc, #0x8147c0c-0x8147baa-2] // =word_2010400
    ldr r4, [pc, #0x8147c10-0x8147bac-4] // =word_2010428
loc_8147BAE:
    add r0, r2, r6
    strb r3, [r0]
    lsl r1, r2, #1
    add r0, r1, r5
    strh r3, [r0]
    add r1, r1, r4
    strh r3, [r1]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_8147BAE
    ldr r1, [pc, #0x8147c14-0x8147bc6-2] // =byte_2010390
    mov r0, #0
    strb r0, [r1]
    ldr r4, [pc, #0x8147c18-0x8147bcc-4] // =byte_20103E0
    ldrb r1, [r4]
    mov r0, #0xc
    bl sub_814A934
    ldrb r1, [r4]
    mov r0, #0x20 
    add r2, r7, #0
    mov r3, r8
    bl sub_814AAF0
    ldr r1, [pc, #0x8147c1c-0x8147be2-2] // =byte_200BC50
    mov r0, #0x31 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
off_8147BF4:    .word unk_200FFF0
off_8147BF8:    .word unk_200FE90
off_8147BFC:    .word byte_20101B4
off_8147C00:    .word byte_2010274
off_8147C04:    .word byte_2010290
off_8147C08:    .word byte_2010220
off_8147C0C:    .word word_2010400
off_8147C10:    .word word_2010428
off_8147C14:    .word byte_2010390
off_8147C18:    .word byte_20103E0
off_8147C1C:    .word byte_200BC50
// end of function sub_8147B54

.thumb
sub_8147C20:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r5, r2, #0
    ldr r4, [pc, #0x8147c6c-0x8147c28-4] // =byte_200AF80
    ldrb r0, [r4,#0x1] // (byte_200AF81 - 0x200af80)
    cmp r0, #2
    beq loc_8147C36
    ldrb r0, [r4]
    cmp r0, #4
    bne loc_8147C3C
loc_8147C36:
    mov r0, #0xf
    bl sub_813D934
loc_8147C3C:
    ldr r0, [pc, #0x8147c70-0x8147c3c-4] // =Timer2Counter_Reload
    ldrh r0, [r0]
    bl sub_81453F0
    add r0, r4, #0
    add r1, r6, #0
    add r2, r5, #0
    bl sub_8147F50
    add r0, r4, #0
    add r1, r7, #0
    bl sub_8147DE0
    ldr r0, [pc, #0x8147c74-0x8147c56-2] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
// switch 55 cases 
    sub r0, #9
    cmp r0, #0x36 
    bls loc_8147C62
    b def_8147C6A
loc_8147C62:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8147c78-0x8147c64-4] // =jpt_8147C6A
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
off_8147C6C:    .word byte_200AF80
off_8147C70:    .word Timer2Counter_Reload
off_8147C74:    .word byte_200BC50
off_8147C78:    .word jpt_8147C6A
// jump table for switch statement
jpt_8147C6A:    .word loc_8147DAC
    .word def_8147C6A
    .word loc_8147DC0
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word loc_8147D88
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word loc_8147D58
    .word loc_8147DD0
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
    .word def_8147C6A
loc_8147D58:
    ldr r0, [pc, #0x8147d74-0x8147d58-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    orr r0, r1
    cmp r0, #0
    beq loc_8147D7C
    ldr r1, [pc, #0x8147d78-0x8147d66-2] // =byte_200BC50
    mov r0, #0x10
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    bl sub_81464D4
    b def_8147C6A
    .balign 4, 0x00
off_8147D74:    .word dword_2010CC0
off_8147D78:    .word byte_200BC50
loc_8147D7C:
    ldr r1, [pc, #0x8147d84-0x8147d7c-4] // =byte_200BC50
    mov r0, #5
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_8147C6A
off_8147D84:    .word byte_200BC50
loc_8147D88:
    ldr r0, [pc, #0x8147da4-0x8147d88-4] // =byte_200FE00
    ldrb r0, [r0,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #0
    bne def_8147C6A
    ldr r0, [pc, #0x8147da8-0x8147d90-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    orr r0, r1
    bl sub_814A4CC
    bl sub_8149568
    b def_8147C6A
off_8147DA4:    .word byte_200FE00
off_8147DA8:    .word dword_2010CC0
loc_8147DAC:
    mov r0, #1
    bl sub_8145120
    ldr r1, [pc, #0x8147dbc-0x8147db2-2] // =byte_200BC50
    mov r0, #0xa
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_8147C6A
    .balign 4, 0x00
off_8147DBC:    .word byte_200BC50
loc_8147DC0:
    bl sub_8144EEC
    ldr r1, [pc, #0x8147dcc-0x8147dc4-4] // =byte_200BC50
    mov r0, #0xc
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_8147C6A
off_8147DCC:    .word byte_200BC50
loc_8147DD0:
    bl sub_814A828
    bl sub_813D760
def_8147C6A:
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8147C20

.thumb
sub_8147DE0:
    push {r4,r5,lr}
    add r4, r0, #0
    add r5, r1, #0
    ldrb r0, [r4,#1]
    cmp r0, #0
    bne loc_8147E38
    ldr r1, [pc, #0x8147e18-0x8147dec-4] // =dword_2010CB0
    ldr r0, [pc, #0x8147e1c-0x8147dee-2] // =byte_20103E0
    ldrb r2, [r0]
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r0, [r0,#0x34]
    cmp r0, #0x47 
    beq loc_8147E24
    cmp r0, #0x46 
    bne loc_8147E20
    mov r0, #8
    add r1, r2, #0
    bl sub_814A934
    mov r0, #1
    strb r0, [r4,#1]
    add r0, r5, #0
    bl sub_813D7B8
    b loc_8147E38
    .balign 4, 0x00
off_8147E18:    .word dword_2010CB0
off_8147E1C:    .word byte_20103E0
loc_8147E20:
    cmp r0, #0x48 
    bne loc_8147E38
loc_8147E24:
    mov r0, #8
    add r1, r2, #0
    bl sub_814A934
    ldr r0, [pc, #0x8147e40-0x8147e2c-4] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #0x31 
    bne loc_8147E38
    mov r0, #2
    strb r0, [r4,#1]
loc_8147E38:
    pop {r4,r5}
    pop {r0}
    bx r0
    .byte 0, 0
off_8147E40:    .word byte_200BC50
// end of function sub_8147DE0

.thumb
sub_8147E44:
    push {r4,lr}
    add r4, r0, #0
    add r3, r1, #0
    ldr r1, [pc, #0x8147e7c-0x8147e4a-2] // =byte_20103E0
    mov r0, #0x80
    lsl r0, r0, #0x11
    ldrb r1, [r1]
    lsl r0, r1
    lsr r0, r0, #0x18
    add r1, r3, #2
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    ldr r2, [pc, #0x8147e80-0x8147e5c-4] // =byte_2010390
    bl sub_814AB50
    lsl r0, r0, #0x10
    cmp r0, #0
    beq loc_8147E8C
    ldr r0, [pc, #0x8147e84-0x8147e68-4] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #0x31 
    bne loc_8147E74
    mov r0, #4
    strb r0, [r4]
loc_8147E74:
    ldr r1, [pc, #0x8147e88-0x8147e74-4] // =byte_20101B4
    mov r0, #0x83
    strb r0, [r1]
    b loc_8147E90
off_8147E7C:    .word byte_20103E0
off_8147E80:    .word byte_2010390
off_8147E84:    .word byte_200BC50
off_8147E88:    .word byte_20101B4
loc_8147E8C:
    mov r0, #2
    strb r0, [r4]
loc_8147E90:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8147E44

.thumb
sub_8147E98:
    push {r4,r5,lr}
    add r4, r0, #0
    add r5, r1, #0
    ldr r1, [pc, #0x8147ed4-0x8147e9e-2] // =dword_2010CB0
    ldr r0, [pc, #0x8147ed8-0x8147ea0-4] // =byte_20103E0
    ldrb r2, [r0]
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r0, [r0]
    cmp r0, #0x26 
    bne loc_8147EDC
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
    mov r1, #0
    mov r0, #3
    strb r0, [r4]
    strb r1, [r4,#2]
    ldrb r4, [r5,#1]
    mov r0, #0
    bl sub_802D064
    add r1, r0, #0
    add r0, r4, #0
    bl sub_813D78C
    b loc_8147EF4
    .balign 4, 0x00
off_8147ED4:    .word dword_2010CB0
off_8147ED8:    .word byte_20103E0
loc_8147EDC:
    cmp r0, #0x27 
    bne loc_8147EF4
    mov r0, #4
    add r1, r2, #0
    bl sub_814A934
    ldr r0, [pc, #0x8147efc-0x8147ee8-4] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #0x31 
    bne loc_8147EF4
    mov r0, #4
    strb r0, [r4]
loc_8147EF4:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8147EFC:    .word byte_200BC50
// end of function sub_8147E98

.thumb
sub_8147F00:
    push {r4-r7,lr}
    sub sp, sp, #4
    add r7, r0, #0
    add r5, r1, #0
    ldr r4, [pc, #0x8147f44-0x8147f08-4] // =byte_2010390
    ldrb r6, [r4]
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    lsl r2, r5, #0xa
    lsr r2, r2, #0xb
    mov r0, #0x80
    lsl r0, r0, #0x11
    orr r2, r0
    mov r0, sp
    add r1, r4, #0
    bl SWI_CpuSet
    ldr r0, [pc, #0x8147f48-0x8147f24-4] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_8147F3A
    add r0, r6, #1
    strb r0, [r4]
    ldr r0, [pc, #0x8147f4c-0x8147f30-4] // =byte_200DD10
    add r1, r7, #0
    add r2, r5, #0
    bl sub_800093C
loc_8147F3A:
    add sp, sp, #4
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8147F44:    .word byte_2010390
off_8147F48:    .word byte_20101B4
off_8147F4C:    .word byte_200DD10
// end of function sub_8147F00

.thumb
sub_8147F50:
    push {r4,r5,lr}
    add r4, r0, #0
    add r5, r2, #0
    ldrb r0, [r4]
    cmp r0, #1
    beq loc_8147F80
    cmp r0, #1
    bgt loc_8147F66
    cmp r0, #0
    beq loc_8147F72
    b loc_8147F90
loc_8147F66:
    cmp r0, #2
    beq loc_8147F8A
    cmp r0, #3
    bne loc_8147F90
    mov r0, #0
    strb r0, [r4]
loc_8147F72:
    ldrb r0, [r4,#2]
    cmp r0, #0
    beq loc_8147F90
    add r0, r1, #0
    add r1, r5, #0
    bl sub_8147F00
loc_8147F80:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_8147E44
    b loc_8147F90
loc_8147F8A:
    add r0, r4, #0
    bl sub_8147E98
loc_8147F90:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8147F50

.thumb
sub_8147F98:
    push {r4-r6,lr}
    sub sp, sp, #4
    mov r0, #4
    bl sub_803DE88
    ldr r4, [pc, #0x8147ff4-0x8147fa2-2] // =unk_2010350
    add r0, r4, #0
    bl sub_81465FC
    mov r6, #0
    mov r5, #0
    strh r5, [r4,#0x2] // (word_2010352 - 0x2010350)
    bl sub_813D960
    ldr r0, [pc, #0x8147ff8-0x8147fb4-4] // =sub_814801C+1
    ldr r1, [pc, #0x8147ffc-0x8147fb6-2] // =sub_8148208+1
    bl sub_8144DF0
    ldr r0, [pc, #0x8148000-0x8147fbc-4] // =Timer2Counter_Reload
    strh r5, [r0]
    ldr r1, [pc, #0x8148004-0x8147fc0-4] // =Timer2Control
    mov r0, #0x83
    strh r0, [r1]
    ldr r1, [pc, #0x8148008-0x8147fc6-2] // =byte_200BC50
    mov r2, #1
    mov r0, #1
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    strb r2, [r1,#0x5] // (byte_200BC55 - 0x200bc50)
    ldr r0, [pc, #0x814800c-0x8147fd0-4] // =byte_2010288
    strb r6, [r0]
    ldr r0, [pc, #0x8148010-0x8147fd4-4] // =byte_20103E0
    strb r6, [r0]
    mov r0, sp
    strh r5, [r0]
    ldr r1, [pc, #0x8148014-0x8147fdc-4] // =byte_2010290
    ldr r2, [pc, #0x8148018-0x8147fde-2] // =0x1000020
    bl SWI_CpuSet
    bl sub_8146CFC
    mov r0, #0
    add sp, sp, #4
    pop {r4-r6}
    pop {r1}
    bx r1
    .balign 4, 0x00
off_8147FF4:    .word unk_2010350
off_8147FF8:    .word sub_814801C+1
off_8147FFC:    .word sub_8148208+1
off_8148000:    .word Timer2Counter_Reload
off_8148004:    .word Timer2Control
off_8148008:    .word byte_200BC50
off_814800C:    .word byte_2010288
off_8148010:    .word byte_20103E0
off_8148014:    .word byte_2010290
dword_8148018:    .word 0x1000020
// end of function sub_8147F98

.thumb
sub_814801C:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    ldr r2, [pc, #0x8148048-0x8148024-4] // =byte_200AF80
    cmp r0, #0x32 
    bne loc_814802C
    b loc_8148164
loc_814802C:
    cmp r0, #0x32 
    bgt loc_814806C
    cmp r0, #0x23 
    beq loc_8148104
    cmp r0, #0x23 
    bgt loc_8148058
    cmp r0, #0x20 
    beq loc_81480BC
    cmp r0, #0x20 
    bgt loc_814804C
    cmp r0, #0
    bne loc_8148046
    b loc_8148184
loc_8148046:
    b loc_8148200
off_8148048:    .word byte_200AF80
loc_814804C:
    cmp r0, #0x21 
    bne loc_8148052
    b loc_8148184
loc_8148052:
    cmp r0, #0x22 
    beq loc_81480D0
    b loc_8148200
loc_8148058:
    cmp r0, #0x25 
    beq loc_8148134
    cmp r0, #0x25 
    blt loc_8148120
    cmp r0, #0x30 
    bne loc_8148066
    b loc_8148178
loc_8148066:
    cmp r0, #0x31 
    beq loc_8148148
    b loc_8148200
loc_814806C:
    cmp r0, #0x50 
    beq loc_81480B4
    cmp r0, #0x50 
    bgt loc_8148094
    cmp r0, #0x42 
    bne loc_814807A
    b loc_814819C
loc_814807A:
    cmp r0, #0x42 
    bgt loc_8148086
    cmp r0, #0x33 
    bne loc_8148084
    b loc_8148178
loc_8148084:
    b loc_8148200
loc_8148086:
    cmp r0, #0x43 
    bne loc_814808C
    b loc_8148180
loc_814808C:
    cmp r0, #0x44 
    bne loc_8148092
    b loc_8148190
loc_8148092:
    b loc_8148200
loc_8148094:
    cmp r0, #0xf1
    bne loc_814809A
    b loc_81481E0
loc_814809A:
    cmp r0, #0xf1
    bgt loc_81480A6
    cmp r0, #0xf0
    bne loc_81480A4
    b loc_81481A8
loc_81480A4:
    b loc_8148200
loc_81480A6:
    cmp r1, #0xf2
    bne loc_81480AC
    b loc_81481F4
loc_81480AC:
    cmp r1, #0xff
    bne loc_81480B2
    b loc_81481CC
loc_81480B2:
    b loc_8148200
loc_81480B4:
    mov r0, #1
    bl sub_8144DB0
    b loc_8148200
loc_81480BC:
    ldr r0, [pc, #0x81480c8-0x81480bc-4] // =byte_2010324
    ldr r1, [pc, #0x81480cc-0x81480be-2] // =byte_200FE00
    ldrh r1, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    strb r1, [r0]
    b loc_8148200
    .balign 4, 0x00
off_81480C8:    .word byte_2010324
off_81480CC:    .word byte_200FE00
loc_81480D0:
    ldr r1, [pc, #0x81480f4-0x81480d0-4] // =byte_20103E0
    ldr r0, [pc, #0x81480f8-0x81480d2-2] // =byte_200FE00
    ldrh r0, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    strb r0, [r1]
    strb r0, [r2,#0x4] // (byte_200AF84 - 0x200af80)
    ldrb r1, [r1]
    ldr r2, [pc, #0x81480fc-0x81480dc-4] // =byte_2010290
    mov r0, #0x20 
    mov r3, #0x40 
    bl sub_814AAF0
    ldr r1, [pc, #0x8148100-0x81480e6-2] // =byte_200BC50
    mov r0, #0xd
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0xa
    bl sub_813D934
    b loc_8148200
off_81480F4:    .word byte_20103E0
off_81480F8:    .word byte_200FE00
off_81480FC:    .word byte_2010290
off_8148100:    .word byte_200BC50
loc_8148104:
    ldr r1, [pc, #0x8148118-0x8148104-4] // =word_20102D0
    mov r0, #3
    strh r0, [r1]
    ldr r1, [pc, #0x814811c-0x814810a-2] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #2
    bl sub_813D934
    b loc_8148200
off_8148118:    .word word_20102D0
off_814811C:    .word byte_200BC50
loc_8148120:
    ldr r1, [pc, #0x8148130-0x8148120-4] // =byte_200BC50
    mov r0, #0x25 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x10
    bl sub_813D934
    b loc_8148200
    .byte 0, 0
off_8148130:    .word byte_200BC50
loc_8148134:
    ldr r1, [pc, #0x8148144-0x8148134-4] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #3
    bl sub_813D934
    b loc_8148200
    .balign 4, 0x00
off_8148144:    .word byte_200BC50
loc_8148148:
    mov r0, #0xe
    bl sub_813D934
    ldr r2, [pc, #0x814815c-0x814814e-2] // =word_2010338
    ldr r1, [pc, #0x8148160-0x8148150-4] // =byte_200BC50
    ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    strh r0, [r2]
    mov r0, #0xe
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148200
off_814815C:    .word word_2010338
off_8148160:    .word byte_200BC50
loc_8148164:
    ldr r0, [pc, #0x8148170-0x8148164-4] // =byte_200BC50
    ldr r1, [pc, #0x8148174-0x8148166-2] // =word_2010338
    ldrh r1, [r1]
    strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148200
    .byte 0, 0
off_8148170:    .word byte_200BC50
off_8148174:    .word word_2010338
loc_8148178:
    mov r0, #0xf
    bl sub_813D934
    b loc_8148200
loc_8148180:
    bl sub_814A828
loc_8148184:
    ldr r1, [pc, #0x814818c-0x8148184-4] // =byte_200BC50
    mov r0, #5
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148200
off_814818C:    .word byte_200BC50
loc_8148190:
    ldr r1, [pc, #0x8148198-0x8148190-4] // =byte_200BC50
    mov r0, #0xb
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148200
off_8148198:    .word byte_200BC50
loc_814819C:
    ldr r1, [pc, #0x81481a4-0x814819c-4] // =byte_200BC50
    mov r0, #0x34 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148200
off_81481A4:    .word byte_200BC50
loc_81481A8:
    ldr r1, [pc, #0x81481c0-0x81481a8-4] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    ldr r1, [pc, #0x81481c4-0x81481ae-2] // =word_20102D0
    ldr r0, [pc, #0x81481c8-0x81481b0-4] // =byte_200FE00
    ldrh r0, [r0,#0x14] // (word_200FE14 - 0x200fe00)
    strh r0, [r1]
    mov r0, #5
    bl sub_813D934
    b loc_8148200
    .byte 0, 0
off_81481C0:    .word byte_200BC50
off_81481C4:    .word word_20102D0
off_81481C8:    .word byte_200FE00
loc_81481CC:
    ldr r1, [pc, #0x81481dc-0x81481cc-4] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #1
    bl sub_813D934
    b loc_8148200
    .balign 4, 0x00
off_81481DC:    .word byte_200BC50
loc_81481E0:
    ldr r1, [pc, #0x81481f0-0x81481e0-4] // =byte_200BC50
    mov r0, #1
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0xd
    bl sub_813D934
    b loc_8148200
    .byte 0, 0
off_81481F0:    .word byte_200BC50
loc_81481F4:
    ldr r1, [pc, #0x8148204-0x81481f4-4] // =byte_200BC50
    mov r0, #1
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x13
    bl sub_813D934
loc_8148200:
    pop {r0}
    bx r0
off_8148204:    .word byte_200BC50
// end of function sub_814801C

.thumb
sub_8148208:
    push {lr}
    bl sub_814B694
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8148208

.thumb
sub_8148214:
    push {lr}
    ldr r0, [pc, #0x8148220-0x8148216-2] // =dword_814FE90
    bl sub_8148234
    pop {r0}
    bx r0
off_8148220:    .word dword_814FE90
// end of function sub_8148214

.thumb
sub_8148224:
    push {lr}
    ldr r0, [pc, #0x8148230-0x8148226-2] // =dword_814FE94
    bl sub_8148234
    pop {r0}
    bx r0
off_8148230:    .word dword_814FE94
// end of function sub_8148224

.thumb
sub_8148234:
    push {r4,lr}
    add r4, r0, #0
    ldr r1, [pc, #0x814825c-0x8148238-4] // =byte_2010324
    mov r0, #0
    strb r0, [r1]
    ldr r0, [pc, #0x8148260-0x814823e-2] // =Timer2Counter_Reload
    ldrh r0, [r0]
    bl sub_81453F0
    ldr r0, [pc, #0x8148264-0x8148246-2] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
// switch 63 cases 
    sub r0, #1
    cmp r0, #0x3e 
    bls loc_8148252
    b def_814825A
loc_8148252:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8148268-0x8148254-4] // =jpt_814825A
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
off_814825C:    .word byte_2010324
off_8148260:    .word Timer2Counter_Reload
off_8148264:    .word byte_200BC50
off_8148268:    .word jpt_814825A
// jump table for switch statement
jpt_814825A:    .word loc_8148368
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word loc_8148380
    .word loc_81483B0
    .word loc_81483E8
    .word def_814825A
    .word loc_814850C
    .word def_814825A
    .word loc_8148520
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word loc_81484E8
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word loc_814843C
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word loc_81484B8
    .word loc_8148530
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
    .word def_814825A
loc_8148368:
    ldr r0, [pc, #0x8148378-0x8148368-4] // =unk_2010350
    bl sub_8144E70
    ldr r1, [pc, #0x814837c-0x814836e-2] // =byte_200BC50
    mov r0, #2
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_814825A
    .balign 4, 0x00
off_8148378:    .word unk_2010350
off_814837C:    .word byte_200BC50
loc_8148380:
    mov r0, #0
    mov r1, #0
    mov r2, #0x78 
    add r3, r4, #0
    bl sub_8144EF8
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    cmp r1, #0
    beq loc_8148396
    b def_814825A
loc_8148396:
    ldr r0, [pc, #0x81483a8-0x8148396-2] // =byte_2010324
    strb r1, [r0]
    ldr r1, [pc, #0x81483ac-0x814839a-2] // =byte_200BC50
    mov r0, #6
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    bl sub_8146854
    b def_814825A
    .balign 4, 0x00
off_81483A8:    .word byte_2010324
off_81483AC:    .word byte_200BC50
loc_81483B0:
    ldr r0, [pc, #0x81483d8-0x81483b0-4] // =byte_2010288
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_81483C4
    ldr r0, [pc, #0x81483dc-0x81483b8-4] // =byte_200FE00
    ldrb r0, [r0,#0x4] // (byte_200FE04 - 0x200fe00)
    cmp r0, #8
    bls loc_81483C4
    cmp r0, #0xb
    bls loc_81483E0
loc_81483C4:
    bl sub_803C514
    cmp r0, #0
    beq loc_81483CE
    b def_814825A
loc_81483CE:
    mov r0, #6
    bl sub_813D934
    b def_814825A
    .balign 4, 0x00
off_81483D8:    .word byte_2010288
off_81483DC:    .word byte_200FE00
loc_81483E0:
    mov r0, #7
    bl sub_813D934
    b def_814825A
loc_81483E8:
    ldr r0, [pc, #0x8148418-0x81483e8-4] // =dword_2010CC0
    ldr r1, [r0]
    ldr r2, [pc, #0x814841c-0x81483ec-4] // =unk_2010330
    ldr r0, [pc, #0x8148420-0x81483ee-2] // =byte_20103E4
    ldrb r0, [r0]
    add r0, r0, r2
    ldrb r0, [r0]
    lsl r0, r0, #5
    add r1, r1, r0
    ldrh r0, [r1,#0x14]
    mov r1, #0x78 
    bl sub_8144FD0
    lsl r0, r0, #0x18
    cmp r0, #0
    bne loc_8148428
    mov r0, #9
    bl sub_813D934
    ldr r1, [pc, #0x8148424-0x814840e-2] // =byte_200BC50
    mov r0, #8
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_814825A
    .balign 4, 0x00
off_8148418:    .word dword_2010CC0
off_814841C:    .word unk_2010330
off_8148420:    .word byte_20103E4
off_8148424:    .word byte_200BC50
loc_8148428:
    mov r0, #8
    bl sub_813D934
    ldr r1, [pc, #0x8148438-0x814842e-2] // =byte_200BC50
    mov r0, #7
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_814825A
    .balign 4, 0x00
off_8148438:    .word byte_200BC50
loc_814843C:
    ldr r1, [pc, #0x8148470-0x814843c-4] // =dword_2010CB0
    ldr r0, [pc, #0x8148474-0x814843e-2] // =byte_20103E0
    ldrb r2, [r0]
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r0, [r0,#0x34]
    cmp r0, #0x46 
    bne loc_8148492
    mov r0, #8
    add r1, r2, #0
    bl sub_814A934
    ldr r1, [pc, #0x8148478-0x8148456-2] // =byte_2010290
    ldrb r0, [r1,#0x1] // (byte_2010291 - 0x2010290)
    cmp r0, #0
    beq loc_814847C
    ldrb r0, [r1]
    cmp r0, #0
    bne loc_8148482
    bl sub_813D8D0
    mov r0, #0
    bl sub_813D934
    b def_814825A
off_8148470:    .word dword_2010CB0
off_8148474:    .word byte_20103E0
off_8148478:    .word byte_2010290
loc_814847C:
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_814848A
loc_8148482:
    mov r0, #0x12
    bl sub_813D934
    b def_814825A
loc_814848A:
    mov r0, #0x11
    bl sub_813D934
    b def_814825A
loc_8148492:
    sub r0, #0x47 
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #1
    bhi def_814825A
    mov r0, #8
    add r1, r2, #0
    bl sub_814A934
    ldr r1, [pc, #0x81484b4-0x81484a4-4] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #4
    bl sub_813D934
    b def_814825A
    .balign 4, 0x00
off_81484B4:    .word byte_200BC50
loc_81484B8:
    ldr r0, [pc, #0x81484d4-0x81484b8-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    orr r0, r1
    cmp r0, #0
    beq loc_81484DC
    ldr r1, [pc, #0x81484d8-0x81484c6-2] // =byte_200BC50
    mov r0, #0x10
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    bl sub_81464D4
    b def_814825A
    .balign 4, 0x00
off_81484D4:    .word dword_2010CC0
off_81484D8:    .word byte_200BC50
loc_81484DC:
    ldr r1, [pc, #0x81484e4-0x81484dc-4] // =byte_200BC50
    mov r0, #5
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_814825A
off_81484E4:    .word byte_200BC50
loc_81484E8:
    ldr r0, [pc, #0x8148504-0x81484e8-4] // =byte_200FE00
    ldrb r0, [r0,#0x2] // (byte_200FE02 - 0x200fe00)
    cmp r0, #0
    bne def_814825A
    ldr r0, [pc, #0x8148508-0x81484f0-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    orr r0, r1
    bl sub_814A4CC
    bl sub_8149568
    b def_814825A
off_8148504:    .word byte_200FE00
off_8148508:    .word dword_2010CC0
loc_814850C:
    mov r0, #1
    bl sub_8145120
    ldr r1, [pc, #0x814851c-0x8148512-2] // =byte_200BC50
    mov r0, #0xa
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_814825A
    .balign 4, 0x00
off_814851C:    .word byte_200BC50
loc_8148520:
    bl sub_8144EEC
    ldr r1, [pc, #0x814852c-0x8148524-4] // =byte_200BC50
    mov r0, #0xc
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b def_814825A
off_814852C:    .word byte_200BC50
loc_8148530:
    bl sub_814A828
    bl sub_813D760
def_814825A:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8148234

.thumb
sub_8148540:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    ldr r0, [pc, #0x81486ac-0x8148548-4] // =byte_200AF80
    mov r8, r0
    mov r0, sp
    mov r4, #0
    strh r4, [r0]
    ldr r1, [pc, #0x81486b0-0x8148552-2] // =byte_20101E0
    ldr r5, [pc, #0x81486b4-0x8148554-4] // =0x1000020
    add r2, r5, #0
    bl SWI_CpuSet
    mov r0, sp
    add r0, #2
    strh r4, [r0]
    ldr r1, [pc, #0x81486b8-0x8148562-2] // =unk_2010230
    add r2, r5, #0
    bl SWI_CpuSet
    ldr r0, [pc, #0x81486bc-0x814856a-2] // =unk_200FFF0
    bl sub_8146A70
    ldr r0, [pc, #0x81486c0-0x8148570-4] // =unk_200FE90
    bl sub_8146A70
    ldr r0, [pc, #0x81486c4-0x8148576-2] // =byte_2010270
    strb r4, [r0]
    ldr r0, [pc, #0x81486c8-0x814857a-2] // =byte_2010408
    strb r4, [r0]
    ldr r1, [pc, #0x81486cc-0x814857e-2] // =dword_2010418
    mov r0, #0
    str r0, [r1]
    ldr r0, [pc, #0x81486d0-0x8148584-4] // =byte_20103F4
    strb r4, [r0]
    ldr r0, [pc, #0x81486d4-0x8148588-4] // =byte_2010434
    strb r4, [r0]
    ldr r0, [pc, #0x81486d8-0x814858c-4] // =byte_20101D4
    strb r4, [r0]
    ldr r0, [pc, #0x81486dc-0x8148590-4] // =byte_20103F8
    strb r4, [r0]
    ldr r0, [pc, #0x81486e0-0x8148594-4] // =byte_2010480
    strb r4, [r0]
    mov r4, #0
    ldr r1, [pc, #0x81486e4-0x814859a-2] // =byte_2010220
    mov r12, r1
    mov r2, #0
    ldr r7, [pc, #0x81486e8-0x81485a0-4] // =word_2010400
    ldr r6, [pc, #0x81486ec-0x81485a2-2] // =word_2010420
    ldr r5, [pc, #0x81486f0-0x81485a4-4] // =word_2010428
    ldr r3, [pc, #0x81486f4-0x81485a6-2] // =unk_2010410
loc_81485A8:
    mov r1, r12
    add r0, r4, r1
    strb r2, [r0]
    lsl r1, r4, #1
    add r0, r1, r7
    strh r2, [r0]
    add r0, r1, r6
    strh r2, [r0]
    add r0, r1, r5
    strh r2, [r0]
    add r1, r1, r3
    strh r2, [r1]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_81485A8
    ldr r0, [pc, #0x81486f8-0x81485ca-2] // =byte_20101B0
    mov r2, #1
    strb r2, [r0]
    ldr r0, [pc, #0x81486fc-0x81485d0-4] // =byte_20101D0
    strb r2, [r0]
    ldr r0, [pc, #0x8148700-0x81485d4-4] // =byte_20101B4
    strb r2, [r0]
    ldr r1, [pc, #0x8148704-0x81485d8-4] // =byte_20103F0
    mov r0, #0
    strb r0, [r1]
    ldr r1, [pc, #0x8148708-0x81485de-2] // =byte_2010274
    ldr r3, [pc, #0x814870c-0x81485e0-4] // =byte_2010290
    ldrb r0, [r3,#0x2] // (byte_2010292 - 0x2010290)
    strb r0, [r1]
    ldr r0, [pc, #0x8148710-0x81485e6-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#2]
    lsl r0, r0, #1
    orr r0, r2
    strb r0, [r3,#0x2] // (byte_2010292 - 0x2010290)
    ldr r4, [pc, #0x81486b0-0x81485f2-2] // =byte_20101E0
    add r0, r4, #0
    add r0, #0x3c 
    mov r1, #1
    strb r1, [r0]
    ldr r0, [pc, #0x8148714-0x81485fc-4] // =byte_2010430
    strb r1, [r0]
    bl sub_803ECFC
    add r0, r4, #0
    mov r1, #0xc
    bl sub_803F030
    ldr r0, [pc, #0x8148718-0x814860c-4] // =sub_8148738+1
    bl sub_81463E8
    ldr r0, [pc, #0x814871c-0x8148612-2] // =sub_8148878+1
    bl sub_81463D0
    mov r4, #0
loc_814861A:
    ldr r5, [pc, #0x814870c-0x814861a-2] // =byte_2010290
    ldrb r1, [r5,#0x2] // (byte_2010292 - 0x2010290)
    mov r6, #2
    add r0, r6, #0
    lsl r0, r4
    and r1, r0
    cmp r1, #0
    beq loc_8148642
    lsl r2, r4, #4
    ldr r0, [pc, #0x81486b8-0x814862c-4] // =unk_2010230
    add r2, r2, r0
    mov r0, #0x10
    add r1, r4, #0
    mov r3, #0xe
    bl sub_814AAF0
    mov r0, #3
    add r1, r4, #0
    bl sub_814A934
loc_8148642:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814861A
    ldr r1, [pc, #0x81486b0-0x814864c-4] // =byte_20101E0
    ldrb r0, [r5,#0x3] // (byte_2010293 - 0x2010290)
    add r2, r1, #0
    add r2, #0x3d 
    strb r0, [r2]
    ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
    lsr r0, r0, #1
    mov r2, #0x40 
    bl sub_814AB7C
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    bne loc_8148728
    ldr r1, [pc, #0x8148720-0x8148668-4] // =byte_2010328
    strb r0, [r1]
    ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r6
    add r3, r1, #0
    cmp r0, #0
    bne loc_8148698
    add r2, r3, #0
    add r4, r5, #0
    mov r5, #2
loc_814867C:
    ldrb r0, [r2]
    add r0, #1
    strb r0, [r2]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #3
    bhi loc_8148698
    ldrb r1, [r4,#0x2] // (byte_2010292 - 0x2010290)
    add r0, r5, #0
    ldrb r6, [r3]
    lsl r0, r6
    and r1, r0
    cmp r1, #0
    beq loc_814867C
loc_8148698:
    ldrb r0, [r3]
    mov r1, r8
    strb r0, [r1,#0x4] // (byte_200AF84 - 0x200af80)
    ldrb r0, [r3]
    bl sub_814B068
    ldr r2, [pc, #0x8148724-0x81486a4-4] // =byte_200BC50
    mov r1, #0x30 
    strh r1, [r2,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_814872A
off_81486AC:    .word byte_200AF80
off_81486B0:    .word byte_20101E0
dword_81486B4:    .word 0x1000020
off_81486B8:    .word unk_2010230
off_81486BC:    .word unk_200FFF0
off_81486C0:    .word unk_200FE90
off_81486C4:    .word byte_2010270
off_81486C8:    .word byte_2010408
off_81486CC:    .word dword_2010418
off_81486D0:    .word byte_20103F4
off_81486D4:    .word byte_2010434
off_81486D8:    .word byte_20101D4
off_81486DC:    .word byte_20103F8
off_81486E0:    .word byte_2010480
off_81486E4:    .word byte_2010220
off_81486E8:    .word word_2010400
off_81486EC:    .word word_2010420
off_81486F0:    .word word_2010428
off_81486F4:    .word unk_2010410
off_81486F8:    .word byte_20101B0
off_81486FC:    .word byte_20101D0
off_8148700:    .word byte_20101B4
off_8148704:    .word byte_20103F0
off_8148708:    .word byte_2010274
off_814870C:    .word byte_2010290
off_8148710:    .word dword_2010CC0
off_8148714:    .word byte_2010430
off_8148718:    .word sub_8148738+1
off_814871C:    .word sub_8148878+1
off_8148720:    .word byte_2010328
off_8148724:    .word byte_200BC50
loc_8148728:
    mov r0, #1
loc_814872A:
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8148540

.thumb
sub_8148738:
    push {r4,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    cmp r0, #0x43 
    bne loc_8148746
    b loc_814886C
loc_8148746:
    cmp r0, #0x43 
    bgt loc_8148774
    cmp r0, #0x32 
    bne loc_8148750
    b loc_814886C
loc_8148750:
    cmp r0, #0x32 
    bgt loc_814875E
    cmp r0, #0x30 
    beq loc_81487B0
    cmp r0, #0x31 
    beq loc_81487A2
    b loc_814886C
loc_814875E:
    cmp r0, #0x40 
    bne loc_8148764
    b loc_814886C
loc_8148764:
    cmp r0, #0x40 
    bgt loc_814876E
    cmp r0, #0x33 
    beq loc_81487B0
    b loc_814886C
loc_814876E:
    cmp r0, #0x42 
    beq loc_81487CC
    b loc_814886C
loc_8148774:
    cmp r0, #0xf0
    beq loc_81487E4
    cmp r0, #0xf0
    bgt loc_8148786
    cmp r0, #0x44 
    beq loc_81487D8
    cmp r0, #0x50 
    beq loc_8148794
    b loc_814886C
loc_8148786:
    cmp r1, #0xf2
    beq loc_8148860
    cmp r1, #0xf2
    blt loc_8148834
    cmp r1, #0xff
    beq loc_8148844
    b loc_814886C
loc_8148794:
    bl sub_8148B80
    bl sub_8148BCC
    ldr r1, [pc, #0x81487ac-0x814879c-4] // =byte_2010368
    mov r0, #0
    strb r0, [r1]
loc_81487A2:
    mov r0, #0xe
    bl sub_813D934
    b loc_814886C
    .balign 4, 0x00
off_81487AC:    .word byte_2010368
loc_81487B0:
    ldr r1, [pc, #0x81487c4-0x81487b0-4] // =byte_2010408
    mov r0, #1
    strb r0, [r1]
    ldr r1, [pc, #0x81487c8-0x81487b6-2] // =byte_2010368
    mov r0, #0
    strb r0, [r1]
    mov r0, #0xf
    bl sub_813D934
    b loc_814886C
off_81487C4:    .word byte_2010408
off_81487C8:    .word byte_2010368
loc_81487CC:
    ldr r1, [pc, #0x81487d4-0x81487cc-4] // =byte_200BC50
    mov r0, #0x34 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_814886C
off_81487D4:    .word byte_200BC50
loc_81487D8:
    ldr r1, [pc, #0x81487e0-0x81487d8-4] // =byte_200BC50
    mov r0, #0xb
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_814886C
off_81487E0:    .word byte_200BC50
loc_81487E4:
    ldr r1, [pc, #0x8148804-0x81487e4-4] // =byte_200FE00
    ldrh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    cmp r0, #0x26 
    bne loc_8148810
    ldr r0, [pc, #0x8148808-0x81487ec-4] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #0x8f
    beq loc_81487FC
    ldr r0, [pc, #0x814880c-0x81487f4-4] // =byte_2010290
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    cmp r0, #1
    bne loc_814886C
loc_81487FC:
    mov r0, #0
    strh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
    b loc_814886C
    .balign 4, 0x00
off_8148804:    .word byte_200FE00
off_8148808:    .word byte_20101B4
off_814880C:    .word byte_2010290
loc_8148810:
    ldrh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
    cmp r0, #0
    beq loc_814886C
    ldr r1, [pc, #0x814882c-0x8148816-2] // =byte_200BC50
    mov r2, #0
    mov r0, #0x32 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    ldr r0, [pc, #0x8148830-0x814881e-2] // =byte_2010368
    strb r2, [r0]
    mov r0, #0x15
    bl sub_813D934
    b loc_814886C
    .balign 4, 0x00
off_814882C:    .word byte_200BC50
off_8148830:    .word byte_2010368
loc_8148834:
    ldr r1, [pc, #0x8148840-0x8148834-4] // =byte_200BC50
    mov r4, #0
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0xd
    b loc_814884E
off_8148840:    .word byte_200BC50
loc_8148844:
    ldr r1, [pc, #0x8148858-0x8148844-4] // =byte_200BC50
    mov r4, #0
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #1
loc_814884E:
    bl sub_813D934
    ldr r0, [pc, #0x814885c-0x8148852-2] // =byte_2010368
    strb r4, [r0]
    b loc_814886C
off_8148858:    .word byte_200BC50
off_814885C:    .word byte_2010368
loc_8148860:
    ldr r1, [pc, #0x8148874-0x8148860-4] // =byte_2010368
    mov r0, #0
    strb r0, [r1]
    mov r0, #0x13
    bl sub_813D934
loc_814886C:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8148874:    .word byte_2010368
// end of function sub_8148738

.thumb
sub_8148878:
    push {lr}
    bl sub_814B694
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8148878

.thumb
sub_8148884:
    push {lr}
    ldr r1, [pc, #0x81488f4-0x8148886-2] // =byte_2010368
loc_8148888:
    ldrb r0, [r1]
    cmp r0, #1
    beq loc_8148888
    mov r0, #0
    bl sub_81453F0
    ldr r3, [pc, #0x81488f8-0x8148894-4] // =byte_2010408
    ldrb r0, [r3]
    cmp r0, #0
    beq loc_81488B4
    ldr r1, [pc, #0x81488fc-0x814889c-4] // =byte_2010270
    ldrb r0, [r1]
    cmp r0, #0
    beq loc_81488B4
    mov r2, #0
    strb r2, [r1]
    ldr r0, [pc, #0x8148900-0x81488a8-4] // =byte_20101D0
    mov r1, #1
    strb r1, [r0]
    ldr r0, [pc, #0x8148904-0x81488ae-2] // =byte_20101B0
    strb r1, [r0]
    strb r2, [r3]
loc_81488B4:
    bl sub_8148A80
    ldr r0, [pc, #0x8148908-0x81488b8-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#3]
    cmp r0, #0
    bne loc_8148920
    ldr r0, [pc, #0x814890c-0x81488c2-2] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    cmp r0, #0x30 
    bne loc_8148920
    ldr r0, [pc, #0x8148910-0x81488ca-2] // =byte_2010430
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_8148920
    ldr r1, [pc, #0x81488f4-0x81488d2-2] // =byte_2010368
    mov r0, #1
    strb r0, [r1]
    ldr r0, [pc, #0x81488fc-0x81488d8-4] // =byte_2010270
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_814891C
    ldr r0, [pc, #0x8148914-0x81488e0-4] // =byte_2010328
    ldrb r0, [r0]
    ldr r1, [pc, #0x8148918-0x81488e4-4] // =byte_20101E0
    mov r2, #0x40 
    bl sub_814AFD4
    mov r0, #1
    bl sub_8144DB0
    b loc_8148920
off_81488F4:    .word byte_2010368
off_81488F8:    .word byte_2010408
off_81488FC:    .word byte_2010270
off_8148900:    .word byte_20101D0
off_8148904:    .word byte_20101B0
off_8148908:    .word dword_2010CC0
off_814890C:    .word byte_200BC50
off_8148910:    .word byte_2010430
off_8148914:    .word byte_2010328
off_8148918:    .word byte_20101E0
loc_814891C:
    bl sub_81493E4
loc_8148920:
    ldr r0, [pc, #0x8148938-0x8148920-4] // =byte_200BC50
    ldrh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    add r2, r0, #0
// switch 64 cases 
    cmp r1, #0x3f 
    bls loc_814892C
    b def_8148934
loc_814892C:
    lsl r0, r1, #2
    ldr r1, [pc, #0x814893c-0x814892e-2] // =jpt_8148934
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .balign 4, 0x00
off_8148938:    .word byte_200BC50
off_814893C:    .word jpt_8148934
// jump table for switch statement
jpt_8148934:    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word loc_8148A6A
    .word def_8148934
    .word loc_8148A52
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word loc_8148A40
    .word def_8148934
    .word loc_8148A60
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
    .word def_8148934
loc_8148A40:
    mov r0, #0
    strh r0, [r2,#0x8] // (word_200BC58 - 0x200bc50)
    bl sub_814A828
    bl sub_8144D64
    bl sub_813D760
    b def_8148934
loc_8148A52:
    bl sub_8144EEC
    ldr r1, [pc, #0x8148a5c-0x8148a56-2] // =byte_200BC50
    mov r0, #0xc
    b loc_8148A74
off_8148A5C:    .word byte_200BC50
loc_8148A60:
    bl sub_814A828
    bl sub_813D760
    b def_8148934
loc_8148A6A:
    mov r0, #1
    bl sub_8145120
    ldr r1, [pc, #0x8148a7c-0x8148a70-4] // =byte_200BC50
    mov r0, #0xa
loc_8148A74:
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_8148934:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8148A7C:    .word byte_200BC50
// end of function sub_8148884

.thumb
sub_8148A80:
    push {r4-r6,lr}
    sub sp, sp, #4
    ldr r0, [pc, #0x8148b58-0x8148a84-4] // =byte_20101B4
    ldrb r2, [r0]
    cmp r2, #0x8f
    beq loc_8148B4E
    ldr r0, [pc, #0x8148b5c-0x8148a8c-4] // =byte_20101D0
    ldr r1, [pc, #0x8148b60-0x8148a8e-2] // =byte_2010290
    ldrb r0, [r0]
    ldrb r1, [r1,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r1
    cmp r0, r1
    bne loc_8148B4E
    ldr r1, [pc, #0x8148b64-0x8148a9a-2] // =byte_20101E0
    add r0, r1, #0
    add r0, #0x3c 
    ldrb r6, [r0]
    cmp r2, #1
    bne loc_8148AB6
    ldr r0, [pc, #0x8148b68-0x8148aa6-2] // =byte_20103F0
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_8148AB6
    add r0, r1, #0
    mov r1, #0x40 
    bl sub_803F334
loc_8148AB6:
    ldr r1, [pc, #0x8148b6c-0x8148ab6-2] // =byte_2010430
    mov r0, #0
    strb r0, [r1]
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    ldr r4, [pc, #0x8148b64-0x8148ac2-2] // =byte_20101E0
    ldr r2, [pc, #0x8148b70-0x8148ac4-4] // =0x1000020
    mov r0, sp
    add r1, r4, #0
    bl SWI_CpuSet
    ldr r0, [pc, #0x8148b60-0x8148ace-2] // =byte_2010290
    ldrb r0, [r0,#0x3] // (byte_2010293 - 0x2010290)
    add r4, #0x3d 
    strb r0, [r4]
    mov r4, #0
loc_8148AD8:
    mov r0, #0x80
    lsl r0, r0, #0x12
    lsl r0, r4
    lsr r0, r0, #0x18
    ldr r1, [pc, #0x8148b60-0x8148ae0-4] // =byte_2010290
    ldrb r1, [r1,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r1
    cmp r0, #0
    beq loc_8148B08
    ldr r0, [pc, #0x8148b58-0x8148aea-2] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_8148B08
    lsl r0, r4, #4
    ldr r1, [pc, #0x8148b74-0x8148af4-4] // =unk_2010230
    add r0, r0, r1
    lsl r1, r4, #1
    add r1, r1, r4
    lsl r1, r1, #2
    ldr r2, [pc, #0x8148b78-0x8148afe-2] // =unk_20101EC
    add r1, r1, r2
    mov r2, #0xc
    bl sub_800093C
loc_8148B08:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8148AD8
    ldr r0, [pc, #0x8148b58-0x8148b12-2] // =byte_20101B4
    ldrb r4, [r0]
    cmp r4, #1
    bne loc_8148B40
    ldr r5, [pc, #0x8148b64-0x8148b1a-2] // =byte_20101E0
    add r0, r5, #0
    mov r1, #0xc
    bl sub_803F030
    cmp r0, #0
    bne loc_8148B38
    ldr r0, [pc, #0x8148b68-0x8148b28-4] // =byte_20103F0
    strb r4, [r0]
    add r1, r6, #1
    add r0, r5, #0
    add r0, #0x3c 
    strb r1, [r0]
    bl sub_803F05C
loc_8148B38:
    ldr r0, [pc, #0x8148b5c-0x8148b38-4] // =byte_20101D0
    strb r4, [r0]
    ldr r0, [pc, #0x8148b7c-0x8148b3c-4] // =byte_20101B0
    strb r4, [r0]
loc_8148B40:
    ldr r0, [pc, #0x8148b60-0x8148b40-4] // =byte_2010290
    ldrb r0, [r0,#0x3] // (byte_2010293 - 0x2010290)
    cmp r0, #1
    bls loc_8148B4E
    ldr r1, [pc, #0x8148b6c-0x8148b48-4] // =byte_2010430
    mov r0, #1
    strb r0, [r1]
loc_8148B4E:
    add sp, sp, #4
    pop {r4-r6}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8148B58:    .word byte_20101B4
off_8148B5C:    .word byte_20101D0
off_8148B60:    .word byte_2010290
off_8148B64:    .word byte_20101E0
off_8148B68:    .word byte_20103F0
off_8148B6C:    .word byte_2010430
dword_8148B70:    .word 0x1000020
off_8148B74:    .word unk_2010230
off_8148B78:    .word unk_20101EC
off_8148B7C:    .word byte_20101B0
// end of function sub_8148A80

.thumb
sub_8148B80:
    push {lr}
    ldr r2, [pc, #0x8148ba8-0x8148b82-2] // =byte_20101D0
    ldr r0, [pc, #0x8148bac-0x8148b84-4] // =byte_200FE00
    ldrb r0, [r0,#0x3] // (byte_200FE03 - 0x200fe00)
    lsl r0, r0, #1
    ldrb r1, [r2]
    orr r0, r1
    strb r0, [r2]
    ldr r1, [pc, #0x8148bb0-0x8148b90-4] // =byte_2010290
    ldrb r1, [r1,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r1
    cmp r0, r1
    bne loc_8148BBC
    ldr r0, [pc, #0x8148bb4-0x8148b9a-2] // =byte_2010270
    mov r1, #0
    strb r1, [r0]
    ldr r0, [pc, #0x8148bb8-0x8148ba0-4] // =byte_2010430
    strb r1, [r0]
    b loc_8148BC2
    .balign 4, 0x00
off_8148BA8:    .word byte_20101D0
off_8148BAC:    .word byte_200FE00
off_8148BB0:    .word byte_2010290
off_8148BB4:    .word byte_2010270
off_8148BB8:    .word byte_2010430
loc_8148BBC:
    ldr r1, [pc, #0x8148bc8-0x8148bbc-4] // =byte_2010270
    mov r0, #1
    strb r0, [r1]
loc_8148BC2:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8148BC8:    .word byte_2010270
// end of function sub_8148B80

.thumb
sub_8148BCC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8148c30-0x8148bce-2] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #0x8f
    bne loc_8148BD8
    b loc_8148D16
loc_8148BD8:
    mov r4, #0
    ldr r5, [pc, #0x8148c34-0x8148bda-2] // =byte_2010290
    ldr r7, [pc, #0x8148c38-0x8148bdc-4] // =byte_20101B0
    ldr r6, [pc, #0x8148c3c-0x8148bde-2] // =unk_2010230
loc_8148BE0:
    mov r0, #0x80
    lsl r0, r0, #0x12
    lsl r0, r4
    lsr r3, r0, #0x18
    ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r3
    cmp r0, #0
    beq loc_8148CA2
    ldr r1, [pc, #0x8148c40-0x8148bf0-4] // =dword_2010CA0
    lsl r0, r4, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrb r0, [r0,#0x12]
    cmp r0, #0
    beq loc_8148CA2
    ldr r2, [pc, #0x8148c38-0x8148bfe-2] // =byte_20101B0
    ldrb r1, [r2]
    add r0, r3, #0
    orr r0, r1
    strb r0, [r2]
    add r0, r4, #0
    bl sub_814B094
    ldr r0, [pc, #0x8148c44-0x8148c0e-2] // =byte_2010220
    add r0, r4, r0
    ldrb r3, [r0]
    add r0, r3, #1
    lsl r2, r4, #4
    add r1, r2, r6
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldrb r1, [r1,#0xc]
    add r5, r2, #0
    cmp r0, r1
    bne loc_8148C4C
    ldr r0, [pc, #0x8148c48-0x8148c26-2] // =word_2010420
    lsl r1, r4, #1
    add r1, r1, r0
    mov r0, #0
    b loc_8148C92
off_8148C30:    .word byte_20101B4
off_8148C34:    .word byte_2010290
off_8148C38:    .word byte_20101B0
off_8148C3C:    .word unk_2010230
off_8148C40:    .word dword_2010CA0
off_8148C44:    .word byte_2010220
off_8148C48:    .word word_2010420
loc_8148C4C:
    lsl r0, r3, #0x18
    lsr r0, r0, #0x18
    cmp r0, r1
    bne loc_8148C74
    ldr r1, [pc, #0x8148c6c-0x8148c54-4] // =word_2010400
    lsl r2, r4, #1
    add r1, r2, r1
    ldrh r0, [r1]
    add r0, #1
    strh r0, [r1]
    ldr r0, [pc, #0x8148c70-0x8148c60-4] // =word_2010420
    add r2, r2, r0
    ldrh r0, [r2]
    add r0, #1
    strh r0, [r2]
    b loc_8148C94
off_8148C6C:    .word word_2010400
off_8148C70:    .word word_2010420
loc_8148C74:
    sub r0, r3, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, r1
    bne loc_8148C88
    ldr r0, [pc, #0x8148c84-0x8148c7e-2] // =unk_2010410
    b loc_8148C8A
    .balign 4, 0x00
off_8148C84:    .word unk_2010410
loc_8148C88:
    ldr r0, [pc, #0x8148cec-0x8148c88-4] // =word_2010428
loc_8148C8A:
    lsl r1, r4, #1
    add r1, r1, r0
    ldrh r0, [r1]
    add r0, #1
loc_8148C92:
    strh r0, [r1]
loc_8148C94:
    ldr r0, [pc, #0x8148cf0-0x8148c94-4] // =byte_2010220
    add r0, r4, r0
    add r1, r5, r6
    ldrb r1, [r1,#0xc]
    strb r1, [r0]
    ldr r5, [pc, #0x8148cf4-0x8148c9e-2] // =byte_2010290
    ldr r7, [pc, #0x8148cf8-0x8148ca0-4] // =byte_20101B0
loc_8148CA2:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8148BE0
    ldrb r1, [r7]
    ldrb r0, [r5,#0x2] // (byte_2010292 - 0x2010290)
    add r3, r0, #0
    add r2, r3, #0
    and r2, r1
    ldr r4, [pc, #0x8148cfc-0x8148cb6-2] // =byte_20101D0
    cmp r2, r0
    bne loc_8148CCC
    ldrb r0, [r4]
    and r3, r0
    cmp r3, r2
    beq loc_8148CD6
    ldr r1, [pc, #0x8148d00-0x8148cc4-4] // =byte_2010434
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
loc_8148CCC:
    ldrb r0, [r4]
    ldrb r1, [r5,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r1
    cmp r0, r1
    bne loc_8148D16
loc_8148CD6:
    ldrb r0, [r7]
    ldrb r1, [r5,#0x2] // (byte_2010292 - 0x2010290)
    and r0, r1
    cmp r0, r1
    beq loc_8148D16
    ldr r1, [pc, #0x8148d04-0x8148ce0-4] // =byte_20103F8
    ldrb r0, [r1]
    cmp r0, #0
    bne loc_8148D08
    mov r0, #1
    b loc_8148D14
off_8148CEC:    .word word_2010428
off_8148CF0:    .word byte_2010220
off_8148CF4:    .word byte_2010290
off_8148CF8:    .word byte_20101B0
off_8148CFC:    .word byte_20101D0
off_8148D00:    .word byte_2010434
off_8148D04:    .word byte_20103F8
loc_8148D08:
    ldr r1, [pc, #0x8148d1c-0x8148d08-4] // =byte_20101D4
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    ldr r1, [pc, #0x8148d20-0x8148d10-4] // =byte_20101B4
    mov r0, #0x83
loc_8148D14:
    strb r0, [r1]
loc_8148D16:
    pop {r4-r7}
    pop {r0}
    bx r0
off_8148D1C:    .word byte_20101D4
off_8148D20:    .word byte_20101B4
// end of function sub_8148BCC

.thumb
sub_8148D24:
    push {r4-r7,lr}
    sub sp, sp, #4
    ldr r2, [pc, #0x8148e1c-0x8148d28-4] // =byte_2010480
    mov r0, #0
    strb r0, [r2]
    ldr r4, [pc, #0x8148e20-0x8148d2e-2] // =byte_2010290
    ldr r5, [pc, #0x8148e24-0x8148d30-4] // =dword_2010CC0
    ldr r0, [r5]
    add r0, #0x94
    ldrh r1, [r4,#0x36] // (word_20102C6 - 0x2010290)
    mov r6, sp
    add r6, #2
    ldrh r0, [r0]
    cmp r1, r0
    beq loc_8148D6A
    add r3, r2, #0
    add r7, r4, #0
    add r7, #0x36 
    add r4, r5, #0
loc_8148D4A:
    ldrb r0, [r3]
    add r0, #1
    strb r0, [r3]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #4
    bhi loc_8148D6A
    ldrb r0, [r2]
    lsl r0, r0, #1
    add r0, r0, r7
    ldr r1, [r4]
    add r1, #0x94
    ldrh r0, [r0]
    ldrh r1, [r1]
    cmp r0, r1
    bne loc_8148D4A
loc_8148D6A:
    mov r0, sp
    mov r4, #0
    strh r4, [r0]
    ldr r1, [pc, #0x8148e28-0x8148d70-4] // =byte_2010390
    ldr r2, [pc, #0x8148e2c-0x8148d72-2] // =0x1000008
    bl SWI_CpuSet
    strh r4, [r6]
    ldr r1, [pc, #0x8148e30-0x8148d7a-2] // =unk_20103A0
    ldr r2, [pc, #0x8148e34-0x8148d7c-4] // =0x1000020
    add r0, r6, #0
    bl SWI_CpuSet
    ldr r0, [pc, #0x8148e38-0x8148d84-4] // =unk_200FFF0
    bl sub_8146A70
    ldr r0, [pc, #0x8148e3c-0x8148d8a-2] // =unk_200FE90
    bl sub_8146A70
    mov r2, #0
    ldr r7, [pc, #0x8148e40-0x8148d92-2] // =byte_2010220
    mov r3, #0
    ldr r6, [pc, #0x8148e44-0x8148d96-2] // =word_2010400
    ldr r5, [pc, #0x8148e48-0x8148d98-4] // =word_2010420
    ldr r4, [pc, #0x8148e4c-0x8148d9a-2] // =word_2010428
loc_8148D9C:
    add r0, r2, r7
    strb r3, [r0]
    lsl r1, r2, #1
    add r0, r1, r6
    strh r3, [r0]
    add r0, r1, r5
    strh r3, [r0]
    add r1, r1, r4
    strh r3, [r1]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_8148D9C
    ldr r1, [pc, #0x8148e50-0x8148db8-4] // =byte_20101B4
    mov r0, #0
    strb r0, [r1]
    ldr r1, [pc, #0x8148e54-0x8148dbe-2] // =byte_2010274
    ldr r0, [pc, #0x8148e20-0x8148dc0-4] // =byte_2010290
    ldrb r0, [r0,#0x2] // (byte_2010292 - 0x2010290)
    strb r0, [r1]
    ldr r5, [pc, #0x8148e28-0x8148dc6-2] // =byte_2010390
    mov r0, #0
    strb r0, [r5,#0xc] // (byte_201039C - 0x2010390)
    ldr r0, [pc, #0x8148e58-0x8148dcc-4] // =sub_8148E74+1
    bl sub_81463E8
    ldr r0, [pc, #0x8148e5c-0x8148dd2-2] // =sub_8148FB4+1
    bl sub_81463D0
    ldr r4, [pc, #0x8148e60-0x8148dd8-4] // =byte_20103E0
    ldrb r1, [r4]
    ldr r2, [pc, #0x8148e30-0x8148ddc-4] // =unk_20103A0
    mov r0, #0x10
    mov r3, #0x40 
    bl sub_814AAF0
    ldrb r1, [r4]
    mov r0, #3
    bl sub_814A934
    bl sub_803ECFC
    add r0, r5, #0
    mov r1, #0xc
    bl sub_803F030
    mov r0, #0x80
    lsl r0, r0, #0x11
    ldrb r4, [r4]
    lsl r0, r4
    lsr r0, r0, #0x18
    add r1, r5, #0
    mov r2, #0xe
    bl sub_814AB7C
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_8148E68
    ldr r1, [pc, #0x8148e64-0x8148e12-2] // =byte_200BC50
    mov r0, #0x31 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0
    b loc_8148E6A
off_8148E1C:    .word byte_2010480
off_8148E20:    .word byte_2010290
off_8148E24:    .word dword_2010CC0
off_8148E28:    .word byte_2010390
dword_8148E2C:    .word 0x1000008
off_8148E30:    .word unk_20103A0
dword_8148E34:    .word 0x1000020
off_8148E38:    .word unk_200FFF0
off_8148E3C:    .word unk_200FE90
off_8148E40:    .word byte_2010220
off_8148E44:    .word word_2010400
off_8148E48:    .word word_2010420
off_8148E4C:    .word word_2010428
off_8148E50:    .word byte_20101B4
off_8148E54:    .word byte_2010274
off_8148E58:    .word sub_8148E74+1
off_8148E5C:    .word sub_8148FB4+1
off_8148E60:    .word byte_20103E0
off_8148E64:    .word byte_200BC50
loc_8148E68:
    mov r0, #1
loc_8148E6A:
    add sp, sp, #4
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_8148D24

.thumb
sub_8148E74:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    cmp r0, #0x41 
    bgt loc_8148E9E
    cmp r0, #0x40 
    blt loc_8148E86
    b loc_8148FAC
loc_8148E86:
    cmp r0, #0x30 
    beq loc_8148F04
    cmp r0, #0x30 
    bgt loc_8148E90
    b loc_8148FAC
loc_8148E90:
    cmp r0, #0x32 
    beq loc_8148EF0
    cmp r0, #0x32 
    blt loc_8148ED4
    cmp r0, #0x33 
    beq loc_8148F04
    b loc_8148FAC
loc_8148E9E:
    cmp r0, #0x50 
    beq loc_8148ECE
    cmp r0, #0x50 
    bgt loc_8148EB6
    cmp r0, #0x43 
    bne loc_8148EAC
    b loc_8148FAC
loc_8148EAC:
    cmp r0, #0x43 
    blt loc_8148F18
    cmp r0, #0x44 
    beq loc_8148F24
    b loc_8148FAC
loc_8148EB6:
    cmp r0, #0xf1
    beq loc_8148F78
    cmp r0, #0xf1
    bgt loc_8148EC4
    cmp r0, #0xf0
    beq loc_8148F30
    b loc_8148FAC
loc_8148EC4:
    cmp r1, #0xf2
    beq loc_8148FA0
    cmp r1, #0xff
    beq loc_8148F8C
    b loc_8148FAC
loc_8148ECE:
    bl sub_814912C
    b loc_8148FAC
loc_8148ED4:
    mov r0, #0xe
    bl sub_813D934
    ldr r2, [pc, #0x8148ee8-0x8148eda-2] // =word_2010338
    ldr r1, [pc, #0x8148eec-0x8148edc-4] // =byte_200BC50
    ldrh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    strh r0, [r2]
    mov r0, #0xe
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148FAC
off_8148EE8:    .word word_2010338
off_8148EEC:    .word byte_200BC50
loc_8148EF0:
    ldr r0, [pc, #0x8148efc-0x8148ef0-4] // =byte_200BC50
    ldr r1, [pc, #0x8148f00-0x8148ef2-2] // =word_2010338
    ldrh r1, [r1]
    strh r1, [r0,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148FAC
    .balign 4, 0x00
off_8148EFC:    .word byte_200BC50
off_8148F00:    .word word_2010338
loc_8148F04:
    ldr r1, [pc, #0x8148f14-0x8148f04-4] // =byte_200BC50
    mov r0, #0x32 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0xf
    bl sub_813D934
    b loc_8148FAC
    .balign 4, 0x00
off_8148F14:    .word byte_200BC50
loc_8148F18:
    ldr r1, [pc, #0x8148f20-0x8148f18-4] // =byte_200BC50
    mov r0, #0x34 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148FAC
off_8148F20:    .word byte_200BC50
loc_8148F24:
    ldr r1, [pc, #0x8148f2c-0x8148f24-4] // =byte_200BC50
    mov r0, #0xb
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    b loc_8148FAC
off_8148F2C:    .word byte_200BC50
loc_8148F30:
    ldr r1, [pc, #0x8148f6c-0x8148f30-4] // =byte_200FE00
    ldrh r0, [r1,#0x14] // (word_200FE14 - 0x200fe00)
    cmp r0, #0x30 
    bne loc_8148F56
    ldr r0, [pc, #0x8148f70-0x8148f38-4] // =byte_20101B4
    ldrb r0, [r0]
    cmp r0, #0x8f
    bne loc_8148F56
    ldrh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
    cmp r0, #3
    bne loc_8148F56
    mov r0, #0
    strh r0, [r1,#0x16] // (word_200FE16 - 0x200fe00)
    ldr r1, [pc, #0x8148f74-0x8148f4a-2] // =byte_200BC50
    mov r0, #0x32 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x15
    bl sub_813D934
loc_8148F56:
    ldr r0, [pc, #0x8148f6c-0x8148f56-2] // =byte_200FE00
    ldrh r0, [r0,#0x16] // (word_200FE16 - 0x200fe00)
    cmp r0, #0
    beq loc_8148FAC
    ldr r1, [pc, #0x8148f74-0x8148f5e-2] // =byte_200BC50
    mov r0, #0x32 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x15
    bl sub_813D934
    b loc_8148FAC
off_8148F6C:    .word byte_200FE00
off_8148F70:    .word byte_20101B4
off_8148F74:    .word byte_200BC50
loc_8148F78:
    ldr r1, [pc, #0x8148f88-0x8148f78-4] // =byte_200BC50
    mov r0, #0x32 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0xd
    bl sub_813D934
    b loc_8148FAC
    .balign 4, 0x00
off_8148F88:    .word byte_200BC50
loc_8148F8C:
    ldr r1, [pc, #0x8148f9c-0x8148f8c-4] // =byte_200BC50
    mov r0, #0x3f 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #1
    bl sub_813D934
    b loc_8148FAC
    .balign 4, 0x00
off_8148F9C:    .word byte_200BC50
loc_8148FA0:
    ldr r1, [pc, #0x8148fb0-0x8148fa0-4] // =byte_200BC50
    mov r0, #0x32 
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    mov r0, #0x13
    bl sub_813D934
loc_8148FAC:
    pop {r0}
    bx r0
off_8148FB0:    .word byte_200BC50
// end of function sub_8148E74

.thumb
sub_8148FB4:
    push {lr}
    bl sub_814B694
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8148FB4

.thumb
sub_8148FC0:
    push {lr}
    mov r0, #0
    bl sub_81453F0
    ldr r0, [pc, #0x8148fdc-0x8148fc8-4] // =byte_200BC50
    ldrh r0, [r0,#0x8] // (word_200BC58 - 0x200bc50)
// switch 64 cases 
    cmp r0, #0x3f 
    bls loc_8148FD2
    b def_8148FDA
loc_8148FD2:
    lsl r0, r0, #2
    ldr r1, [pc, #0x8148fe0-0x8148fd4-4] // =jpt_8148FDA
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
off_8148FDC:    .word byte_200BC50
off_8148FE0:    .word jpt_8148FDA
// jump table for switch statement
jpt_8148FDA:    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word loc_8149116
    .word def_8148FDA
    .word loc_81490E4
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word loc_81490F4
    .word def_8148FDA
    .word loc_814910C
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
    .word def_8148FDA
loc_81490E4:
    bl sub_8144EEC
    ldr r1, [pc, #0x81490f0-0x81490e8-4] // =byte_200BC50
    mov r0, #0xc
    b loc_8149120
    .byte 0, 0
off_81490F0:    .word byte_200BC50
loc_81490F4:
    bl sub_814A828
    bl sub_8144D64
    ldr r1, [pc, #0x8149108-0x81490fc-4] // =byte_200BC50
    mov r0, #0
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
    bl sub_813D760
    b def_8148FDA
off_8149108:    .word byte_200BC50
loc_814910C:
    bl sub_814A828
    bl sub_813D760
    b def_8148FDA
loc_8149116:
    mov r0, #1
    bl sub_8145120
    ldr r1, [pc, #0x8149128-0x814911c-4] // =byte_200BC50
    mov r0, #0xa
loc_8149120:
    strh r0, [r1,#0x8] // (word_200BC58 - 0x200bc50)
def_8148FDA:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8149128:    .word byte_200BC50
// end of function sub_8148FC0

.thumb
sub_814912C:
    push {lr}
    bl sub_8149150
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_8149140
    ldr r0, [pc, #0x814914c-0x8149138-4] // =byte_20103E0
    ldrb r0, [r0]
    bl sub_814B068
loc_8149140:
    mov r0, #1
    bl sub_8144DB0
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814914C:    .word byte_20103E0
// end of function sub_814912C

.thumb
sub_8149150:
    push {r4-r6,lr}
    mov r6, #0
    ldr r5, [pc, #0x8149160-0x8149154-4] // =byte_20101B4
    ldrb r0, [r5]
    cmp r0, #0x8f
    bne loc_8149164
    mov r0, #0
    b loc_8149216
off_8149160:    .word byte_20101B4
loc_8149164:
    ldr r1, [pc, #0x81491b4-0x8149164-4] // =dword_2010CA0
    ldr r0, [pc, #0x81491b8-0x8149166-2] // =byte_20103E0
    ldrb r2, [r0]
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrb r0, [r0,#0x12]
    cmp r0, #0
    beq loc_8149214
    mov r6, #1
    add r0, r2, #0
    bl sub_814B094
    ldr r0, [pc, #0x81491bc-0x814917e-2] // =byte_2010220
    ldrb r2, [r0]
    add r0, r2, #1
    ldr r3, [pc, #0x81491c0-0x8149184-4] // =unk_20103A0
    add r1, r3, #0
    add r1, #0x3c 
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldrb r1, [r1]
    cmp r0, r1
    bne loc_81491F0
    add r0, r3, #0
    mov r1, #0x40 
    bl sub_803F334
    strb r6, [r5]
    ldr r4, [pc, #0x81491c4-0x814919e-2] // =byte_2010390
    add r0, r4, #0
    mov r1, #0xc
    bl sub_803F030
    cmp r0, #0
    beq loc_81491C8
    mov r0, #0x83
    strb r0, [r5]
    b loc_81491D2
    .balign 4, 0x00
off_81491B4:    .word dword_2010CA0
off_81491B8:    .word byte_20103E0
off_81491BC:    .word byte_2010220
off_81491C0:    .word unk_20103A0
off_81491C4:    .word byte_2010390
loc_81491C8:
    ldrb r0, [r4,#0xc] // (byte_201039C - 0x2010390)
    add r0, #1
    strb r0, [r4,#0xc] // (byte_201039C - 0x2010390)
    bl sub_803F05C
loc_81491D2:
    ldr r2, [pc, #0x81491e4-0x81491d2-2] // =byte_2010220
    ldr r0, [pc, #0x81491e8-0x81491d4-4] // =unk_20103A0
    add r0, #0x3c 
    ldrb r0, [r0]
    mov r1, #0
    strb r0, [r2]
    ldr r0, [pc, #0x81491ec-0x81491de-2] // =word_2010420
    strh r1, [r0]
    b loc_8149214
off_81491E4:    .word byte_2010220
off_81491E8:    .word unk_20103A0
off_81491EC:    .word word_2010420
loc_81491F0:
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    cmp r0, r1
    bne loc_814920C
    ldr r1, [pc, #0x8149204-0x81491f8-4] // =word_2010400
    ldrh r0, [r1]
    add r0, #1
    strh r0, [r1]
    ldr r1, [pc, #0x8149208-0x8149200-4] // =word_2010420
    b loc_814920E
off_8149204:    .word word_2010400
off_8149208:    .word word_2010420
loc_814920C:
    ldr r1, [pc, #0x814921c-0x814920c-4] // =word_2010428
loc_814920E:
    ldrh r0, [r1]
    add r0, #1
    strh r0, [r1]
loc_8149214:
    add r0, r6, #0
loc_8149216:
    pop {r4-r6}
    pop {r1}
    bx r1
off_814921C:    .word word_2010428
// end of function sub_8149150

.thumb
sub_8149220:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r12, r2
    lsl r1, r1, #0x10
    lsr r2, r1, #0x10
    lsl r3, r3, #0x18
    lsr r7, r3, #0x18
    mov r0, #0xf0
    lsl r0, r0, #0x14
    and r0, r4
    mov r1, #0x80
    lsl r1, r1, #0x12
    cmp r0, r1
    bne loc_8149240
    cmp r7, #0
    bne loc_8149248
loc_8149240:
    mov r0, #3
    and r0, r4
    cmp r0, #0
    beq loc_814924C
loc_8149248:
    mov r0, #2
    b loc_8149336
loc_814924C:
    cmp r7, #0
    beq loc_8149258
    ldr r3, [pc, #0x8149254-0x8149250-4] // =0xE64
    b loc_814925A
dword_8149254:    .word 0xE64
loc_8149258:
    ldr r3, [pc, #0x8149264-0x8149258-4] // =0x504
loc_814925A:
    cmp r2, r3
    bcs loc_8149268
    mov r0, #1
    b loc_8149336
    .balign 4, 0x00
off_8149264:    .word 0x504
loc_8149268:
    ldr r0, [pc, #0x814933c-0x8149268-4] // =dword_2010CC0
    str r4, [r0]
    ldr r1, [pc, #0x8149340-0x814926c-4] // =dword_2010CC4
    add r0, r4, #0
    add r0, #0xb4
    str r0, [r1]
    ldr r1, [pc, #0x8149344-0x8149274-4] // =dword_2010CC8
    add r0, #0x28 
    str r0, [r1]
    ldr r2, [pc, #0x8149348-0x814927a-2] // =dword_2010CB0
    mov r1, #0xde
    lsl r1, r1, #1
    add r0, r4, r1
    str r0, [r2]
    ldr r1, [pc, #0x814934c-0x8149284-4] // =dword_2010CA0
    mov r3, #0xdf
    lsl r3, r3, #2
    add r0, r4, r3
    str r0, [r1]
    mov r5, #1
    add r6, r2, #0
    add r4, r1, #0
loc_8149294:
    lsl r2, r5, #2
    add r3, r2, r6
    sub r1, r5, #1
    lsl r1, r1, #2
    add r0, r1, r6
    ldr r0, [r0]
    add r0, #0x70 
    str r0, [r3]
    add r2, r2, r4
    add r1, r1, r4
    ldr r0, [r1]
    add r0, #0x1c
    str r0, [r2]
    add r0, r5, #1
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    cmp r5, #3
    bls loc_8149294
    ldr r0, [pc, #0x8149344-0x81492b8-4] // =dword_2010CC8
    ldr r1, [r0]
    add r1, #0xdc
    ldr r4, [pc, #0x814934c-0x81492be-2] // =dword_2010CA0
    ldr r0, [r4,#0xc] // (dword_2010CAC - 0x2010ca0)
    add r0, #0x1c
    str r0, [r1]
    mov r1, r12
    add r2, r7, #0
    bl sub_814C10C
    bl sub_814935C
    mov r5, #0
    ldr r3, [pc, #0x8149348-0x81492d4-4] // =dword_2010CB0
    mov r2, #0
loc_81492D8:
    lsl r1, r5, #2
    add r0, r1, r3
    ldr r0, [r0]
    str r2, [r0,#0x68]
    str r2, [r0,#0x6c]
    add r1, r1, r4
    ldr r0, [r1]
    str r2, [r0,#0x14]
    str r2, [r0,#0x18]
    add r0, r5, #1
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    cmp r5, #3
    bls loc_81492D8
    ldr r1, [pc, #0x8149350-0x81492f4-4] // =word_814A794+1
    mov r5, #2
    neg r5, r5
    and r5, r1
    ldr r2, [pc, #0x8149344-0x81492fc-4] // =dword_2010CC8
    ldr r0, [r2]
    add r4, r0, #0
    add r4, #8
    ldr r0, [pc, #0x8149354-0x8149304-4] // =sub_814A7C4+1
    sub r0, r0, r1
    lsl r0, r0, #0xf
    lsr r3, r0, #0x10
    sub r0, r3, #1
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    ldr r0, [pc, #0x8149358-0x8149312-2] // =0xFFFF
    cmp r3, r0
    beq loc_814932C
    add r6, r0, #0
loc_814931A:
    ldrh r0, [r5]
    strh r0, [r4]
    add r5, #2
    add r4, #2
    sub r0, r3, #1
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    cmp r3, r6
    bne loc_814931A
loc_814932C:
    ldr r1, [r2]
    add r0, r1, #0
    add r0, #9
    str r0, [r1,#4]
    mov r0, #0
loc_8149336:
    pop {r4-r7}
    pop {r1}
    bx r1
off_814933C:    .word dword_2010CC0
off_8149340:    .word dword_2010CC4
off_8149344:    .word dword_2010CC8
off_8149348:    .word dword_2010CB0
off_814934C:    .word dword_2010CA0
off_8149350:    .word word_814A794+1
off_8149354:    .word sub_814A7C4+1
dword_8149358:    .word 0xFFFF
// end of function sub_8149220

.thumb
sub_814935C:
    push {r4-r7,lr}
    sub sp, sp, #4
    ldr r1, [pc, #0x81493d0-0x8149360-4] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    add r7, r0, #0
    mov r6, #0
    strh r6, [r1]
    ldr r5, [pc, #0x81493d4-0x814936a-2] // =dword_2010CC4
    ldr r1, [r5]
    ldrb r4, [r1]
    mov r0, sp
    strh r6, [r0]
    ldr r2, [pc, #0x81493d8-0x8149374-4] // =0x1000014
    bl SWI_CpuSet
    ldr r2, [r5]
    mov r0, #8
    and r4, r0
    mov r1, #0
    strb r4, [r2]
    mov r0, sp
    add r0, #2
    strh r1, [r0]
    ldr r4, [pc, #0x81493dc-0x814938a-2] // =dword_2010CC0
    ldr r1, [r4]
    ldr r2, [pc, #0x81493e0-0x814938e-2] // =0x100005A
    bl SWI_CpuSet
    ldr r1, [r4]
    mov r0, #4
    strb r0, [r1,#9]
    ldr r0, [r5]
    strb r6, [r0,#6]
    ldr r1, [r4]
    mov r0, #0xff
    strb r0, [r1]
    bl sub_814A828
    ldr r0, [r5]
    strb r6, [r0,#9]
    mov r2, #0
    mov r3, #0
loc_81493B0:
    ldr r0, [r5]
    lsl r1, r2, #1
    add r0, #0x12
    add r0, r0, r1
    strh r3, [r0]
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_81493B0
    ldr r0, [pc, #0x81493d0-0x81493c4-4] // =InterruptMasterEnableRegister
    strh r7, [r0]
    add sp, sp, #4
    pop {r4-r7}
    pop {r0}
    bx r0
off_81493D0:    .word InterruptMasterEnableRegister
off_81493D4:    .word dword_2010CC4
dword_81493D8:    .word 0x1000014
off_81493DC:    .word dword_2010CC0
dword_81493E0:    .word 0x100005A
// end of function sub_814935C

.thumb
sub_81493E4:
    push {lr}
    ldr r0, [pc, #0x81493f4-0x81493e6-2] // =sub_81494B8+1
    bl sub_814C360
    bl sub_814C7D4
    pop {r0}
    bx r0
off_81493F4:    .word sub_81494B8+1
// end of function sub_81493E4

.thumb
sub_81493F8:
    push {r4,r5,lr}
    add r4, r0, #0
    mov r0, #0
    strb r0, [r4]
    ldr r5, [pc, #0x8149410-0x8149400-4] // =dword_2010CC0
    ldr r0, [r5]
    ldrb r0, [r0]
    cmp r0, #1
    beq loc_8149414
    mov r0, #0xc0
    lsl r0, r0, #2
    b loc_814943A
off_8149410:    .word dword_2010CC0
loc_8149414:
    bl sub_8149454
    add r1, r0, #0
    ldrb r0, [r1]
    cmp r0, #0x28 
    beq loc_8149424
    cmp r0, #0x36 
    bne loc_8149438
loc_8149424:
    ldrb r0, [r1,#1]
    cmp r0, #0
    bne loc_8149430
    ldr r0, [r5]
    ldrb r0, [r0,#2]
    b loc_8149432
loc_8149430:
    ldrb r0, [r1,#4]
loc_8149432:
    strb r0, [r4]
    mov r0, #0
    b loc_814943A
loc_8149438:
    mov r0, #0x10
loc_814943A:
    pop {r4,r5}
    pop {r1}
    bx r1
// end of function sub_81493F8

.thumb
sub_8149440:
    push {lr}
    add r2, r0, #0
    add r0, r1, #0
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    add r1, r2, #0
    bl sub_814C1E4
    pop {r0}
    bx r0
// end of function sub_8149440

.thumb
sub_8149454:
    ldr r0, [pc, #0x8149460-0x8149454-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    bx lr
    .byte 0, 0
off_8149460:    .word dword_2010CC8
// end of function sub_8149454

.thumb
sub_8149464:
    push {lr}
    bl sub_814C36C
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8149464

.thumb
sub_8149470:
    push {lr}
    add r1, r0, #0
    ldr r0, [pc, #0x8149488-0x8149474-4] // =dword_2010CC8
    ldr r0, [r0]
    str r1, [r0]
    neg r0, r1
    orr r0, r1
    lsr r0, r0, #0x1f
    bl sub_814948C
    pop {r0}
    bx r0
off_8149488:    .word dword_2010CC8
// end of function sub_8149470

.thumb
sub_814948C:
    push {lr}
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_81494A4
    ldr r0, [pc, #0x81494a0-0x8149494-4] // =dword_2010CC4
    ldr r2, [r0]
    ldrb r1, [r2]
    mov r0, #8
    orr r0, r1
    b loc_81494AE
off_81494A0:    .word dword_2010CC4
loc_81494A4:
    ldr r0, [pc, #0x81494b4-0x81494a4-4] // =dword_2010CC4
    ldr r2, [r0]
    ldrb r1, [r2]
    mov r0, #0xf7
    and r0, r1
loc_81494AE:
    strb r0, [r2]
    pop {r0}
    bx r0
off_81494B4:    .word dword_2010CC4
// end of function sub_814948C

.thumb
sub_81494B8:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    lsl r1, r1, #0x10
    lsr r4, r1, #0x10
    ldr r0, [pc, #0x81494ec-0x81494c2-2] // =sub_81494F8+1
    bl sub_814C360
    ldr r0, [pc, #0x81494f0-0x81494c8-4] // =dword_2010CC4
    ldr r0, [r0]
    strh r4, [r0,#0x1c]
    ldrb r1, [r0]
    mov r0, #8
    and r0, r1
    cmp r0, #0
    beq loc_81494E6
    ldr r0, [pc, #0x81494f4-0x81494d8-4] // =dword_2010CC8
    ldr r0, [r0]
    ldr r2, [r0]
    add r0, r5, #0
    add r1, r4, #0
    bl sub_814DA68
loc_81494E6:
    pop {r4,r5}
    pop {r0}
    bx r0
off_81494EC:    .word sub_81494F8+1
off_81494F0:    .word dword_2010CC4
off_81494F4:    .word dword_2010CC8
// end of function sub_81494B8

.thumb
sub_81494F8:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r1, r1, #0x10
    lsr r3, r1, #0x10
    cmp r0, #0xff
    bne loc_8149554
    ldr r0, [pc, #0x814955c-0x8149506-2] // =dword_2010CC4
    ldr r0, [r0]
    ldrb r1, [r0]
    mov r0, #8
    and r0, r1
    cmp r0, #0
    beq loc_8149522
    ldr r0, [pc, #0x8149560-0x8149514-4] // =dword_2010CC8
    ldr r0, [r0]
    ldr r2, [r0]
    mov r0, #0xff
    add r1, r3, #0
    bl sub_814DA68
loc_8149522:
    ldr r0, [pc, #0x8149564-0x8149522-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    add r5, r0, #0
    orr r5, r1
    mov r4, #0
loc_8149530:
    add r0, r5, #0
    asr r0, r4
    mov r1, #1
    and r0, r1
    cmp r0, #0
    beq loc_8149542
    add r0, r4, #0
    bl sub_814A41C
loc_8149542:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_8149530
    ldr r0, [pc, #0x8149564-0x814954c-4] // =dword_2010CC0
    ldr r1, [r0]
    mov r0, #0xff
    strb r0, [r1]
loc_8149554:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814955C:    .word dword_2010CC4
off_8149560:    .word dword_2010CC8
off_8149564:    .word dword_2010CC0
// end of function sub_81494F8

.thumb
sub_8149568:
    push {lr}
    bl sub_814C384
    ldr r0, [pc, #0x8149578-0x814956e-2] // =dword_2010CC4
    ldr r0, [r0]
    ldrh r0, [r0,#0x1c]
    pop {r1}
    bx r1
off_8149578:    .word dword_2010CC4
// end of function sub_8149568

.thumb
sub_814957C:
    push {lr}
    ldr r0, [pc, #0x814958c-0x814957e-2] // =sub_81494B8+1
    bl sub_814C360
    bl sub_814C418
    pop {r0}
    bx r0
off_814958C:    .word sub_81494B8+1
// end of function sub_814957C

.thumb
sub_8149590:
    push {r4,r5,lr}
    add r4, r0, #0
    ldr r5, [pc, #0x81495a8-0x8149594-4] // =dword_2010CC8
    ldr r0, [r5]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0x93
    beq loc_81495AC
    mov r0, #0x10
    b loc_81495C6
    .balign 4, 0x00
off_81495A8:    .word dword_2010CC8
loc_81495AC:
    bl sub_814C384
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_81495C0
    ldr r0, [r5]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0,#7]
    b loc_81495C2
loc_81495C0:
    mov r0, #0xff
loc_81495C2:
    strb r0, [r4]
    mov r0, #0
loc_81495C6:
    pop {r4,r5}
    pop {r1}
    bx r1
// end of function sub_8149590

    push {lr}
    ldr r2, [pc, #0x81495d4-0x81495ce-2] // =byte_81C03D8
    ldr r3, [pc, #0x81495d8-0x81495d0-4] // =byte_30000F0
    b unk_81495E6
off_81495D4:    .word byte_81C03D8
off_81495D8:    .word byte_30000F0
    .byte 0x18
    .byte 0x78 
    .byte 1
    .byte 0x33 
    .byte 1
    .byte 0x32 
    .byte 0x81
    .byte 0x42 
    .byte 0x2A 
    .byte 0xD1
unk_81495E6:    .byte 0x11
    .byte 0x78 
    .byte 0
    .byte 0x29 
    .byte 0xF7
    .byte 0xD1
    .byte 0xC0
    .byte 0x22 
    .byte 0x92
    .byte 4
    .byte 0
    .byte 0x23 
    .byte 0
    .byte 0x21 
    .byte 0x10
    .byte 0x88
    .byte 0x18
    .byte 0x18
    .byte 0
    .byte 4
    .byte 3
    .byte 0xC
    .byte 2
    .byte 0x32 
    .byte 0x48 
    .byte 0x1C
    .byte 0
    .byte 6
    .byte 1
    .byte 0xE
    .byte 0x59 
    .byte 0x29 
    .byte 0xF5
    .byte 0xD9
    .byte 9
    .byte 0x48 
    .byte 0
    .byte 0x88
    .byte 0x83
    .byte 0x42 
    .byte 0x15
    .byte 0xD1
    .byte 0xC0
    .byte 0x20
    .byte 0x80
    .byte 4
    .byte 7
    .byte 0x49 
    .byte 9
    .byte 0x68 
    .byte 0x5A 
    .byte 0x22 
    .byte 4
    .byte 0xF0
    .byte 0x4D 
    .byte 0xF9
    .byte 6
    .byte 0x48 
    .byte 2
    .byte 0x68 
    .byte 0x11
    .byte 0x78 
    .byte 0x80
    .byte 0x20
    .byte 8
    .byte 0x43 
    .byte 0x10
    .byte 0x70 
    .byte 0
    .byte 0x20
    .byte 7
    .byte 0xE0
    .byte 0, 0
    .word word_30000FA
    .word dword_2010CC0
    .word dword_2010CC4
    .byte 1
    .byte 0x20
    .byte 2
    .byte 0xBC
    .byte 8
    .byte 0x47 
    .balign 4, 0x00
.thumb
sub_8149644:
    push {lr}
    ldr r0, [pc, #0x8149664-0x8149646-2] // =InterruptMasterEnableRegister
    ldrh r0, [r0]
    cmp r0, #0
    bne loc_814966C
    mov r0, #0x3d 
    mov r1, #6
    bl sub_81494B8
    ldr r0, [pc, #0x8149668-0x8149656-2] // =dword_2010CCC
    ldr r1, [r0]
    ldrh r0, [r1,#0x12]
    mov r0, #6
    strh r0, [r1,#0x12]
    b loc_81496E2
    .balign 4, 0x00
off_8149664:    .word InterruptMasterEnableRegister
off_8149668:    .word dword_2010CCC
loc_814966C:
    bl sub_814C220
    bl sub_814935C
    mov r0, #8
    bl sub_814CC48
    ldr r1, [pc, #0x81496bc-0x814967a-2] // =0x8001
    cmp r0, r1
    bne loc_81496D0
    ldr r0, [pc, #0x81496c0-0x8149680-4] // =dword_2010CCC
    ldr r0, [r0]
    ldrb r0, [r0,#0xa]
    lsl r0, r0, #2
    ldr r2, [pc, #0x81496c4-0x8149688-4] // =Timer0Counter_Reload
    add r1, r0, r2
    mov r0, #0
    str r0, [r1]
    mov r0, #0x83
    lsl r0, r0, #0x10
    str r0, [r1]
    ldr r0, [r1]
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x81496c8-0x814969a-2] // =0x105FFFF
    ldr r3, [pc, #0x81496cc-0x814969c-4] // =sub_81496EC+1
    cmp r0, r2
    bhi loc_81496AA
loc_81496A2:
    ldr r0, [r1]
    lsl r0, r0, #0x10
    cmp r0, r2
    bls loc_81496A2
loc_81496AA:
    mov r0, #0
    str r0, [r1]
    add r0, r3, #0
    bl sub_814C360
    bl sub_814C8E4
    b loc_81496E2
    .balign 4, 0x00
dword_81496BC:    .word 0x8001
off_81496C0:    .word dword_2010CCC
off_81496C4:    .word Timer0Counter_Reload
dword_81496C8:    .word 0x105FFFF
off_81496CC:    .word sub_81496EC+1
loc_81496D0:
    ldr r1, [pc, #0x81496e8-0x81496d0-4] // =SIOControlRegister
    mov r2, #0x80
    lsl r2, r2, #6
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0x3d 
    mov r1, #0
    bl sub_81494B8
loc_81496E2:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_81496E8:    .word SIOControlRegister
// end of function sub_8149644

.thumb
sub_81496EC:
    push {r4,lr}
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    add r2, r1, #0
    cmp r2, #0
    bne loc_8149706
    ldr r1, [pc, #0x8149714-0x81496fc-4] // =SIOControlRegister
    mov r4, #0x80
    lsl r4, r4, #6
    add r0, r4, #0
    strh r0, [r1]
loc_8149706:
    add r0, r3, #0
    add r1, r2, #0
    bl sub_81494B8
    pop {r4}
    pop {r0}
    bx r0
off_8149714:    .word SIOControlRegister
// end of function sub_81496EC

.thumb
sub_8149718:
    push {lr}
    ldr r0, [pc, #0x8149728-0x814971a-2] // =InterruptMasterEnableRegister
    ldrh r0, [r0]
    cmp r0, #0
    bne loc_814972C
    mov r0, #1
    neg r0, r0
    b loc_814974C
off_8149728:    .word InterruptMasterEnableRegister
loc_814972C:
    bl sub_814C220
    bl sub_814935C
    mov r0, #0x1e
    bl sub_814CC48
    add r2, r0, #0
    cmp r2, #0
    bne loc_814974A
    ldr r1, [pc, #0x8149750-0x8149740-4] // =SIOControlRegister
    mov r3, #0x80
    lsl r3, r3, #6
    add r0, r3, #0
    strh r0, [r1]
loc_814974A:
    add r0, r2, #0
loc_814974C:
    pop {r1}
    bx r1
off_8149750:    .word SIOControlRegister
// end of function sub_8149718

.thumb
sub_8149754:
    push {lr}
    ldr r0, [pc, #0x8149764-0x8149756-2] // =sub_8149768+1
    bl sub_814C360
    bl sub_814C3AC
    pop {r0}
    bx r0
off_8149764:    .word sub_8149768+1
// end of function sub_8149754

.thumb
sub_8149768:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    add r4, r1, #0
    cmp r4, #0
    bne loc_814977C
    bl sub_814935C
loc_814977C:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_81494B8
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8149768

.thumb
sub_814978C:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    lsl r4, r4, #0x10
    lsr r4, r4, #0x10
    lsl r5, r5, #0x18
    lsr r5, r5, #0x18
    lsl r2, r2, #0x18
    lsr r6, r2, #0x18
    ldr r0, [pc, #0x81497c4-0x814979e-2] // =sub_81494B8+1
    bl sub_814C360
    mov r0, #3
    and r4, r0
    mov r0, #0x3c 
    orr r4, r0
    add r0, r4, #0
    add r1, r5, #0
    add r2, r6, #0
    bl sub_814C4DC
    cmp r6, #0
    bne loc_81497CC
    ldr r0, [pc, #0x81497c8-0x81497ba-2] // =dword_2010CC4
    ldr r1, [r0]
    mov r0, #1
    strh r0, [r1,#0x1a]
    b loc_81497E6
off_81497C4:    .word sub_81494B8+1
off_81497C8:    .word dword_2010CC4
loc_81497CC:
    ldr r5, [pc, #0x81497ec-0x81497cc-4] // =InterruptMasterEnableRegister
    ldrh r4, [r5]
    mov r0, #0
    strh r0, [r5]
    mov r0, #0x96
    lsl r0, r0, #2
    add r1, r6, #0
    bl SWI_Div
    ldr r1, [pc, #0x81497f0-0x81497de-2] // =dword_2010CC4
    ldr r1, [r1]
    strh r0, [r1,#0x1a]
    strh r4, [r5]
loc_81497E6:
    pop {r4-r6}
    pop {r0}
    bx r0
off_81497EC:    .word InterruptMasterEnableRegister
off_81497F0:    .word dword_2010CC4
// end of function sub_814978C

.thumb
sub_81497F4:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    add r4, r2, #0
    add r7, r3, #0
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    lsl r2, r1, #0x10
    add r5, r4, #0
    mov r0, sp
    strb r1, [r0]
    lsr r2, r2, #0x18
    strb r2, [r0,#1]
    cmp r6, #0
    beq loc_814981A
    mov r1, #0x80
    orr r2, r1
    mov r1, #0
    orr r2, r1
    strb r2, [r0,#1]
loc_814981A:
    mov r2, #2
    ldr r0, [pc, #0x814987c-0x814981c-4] // =sub_8149880+1
    mov r12, r0
loc_8149820:
    mov r3, sp
    add r1, r3, r2
    ldrb r0, [r4]
    strb r0, [r1]
    add r4, #1
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #0xe
    bls loc_8149820
    mov r3, #0
    add r1, r7, #0
    mov r2, #0
loc_814983A:
    ldrb r0, [r1]
    add r0, r3, r0
    lsl r0, r0, #0x18
    add r1, #1
    lsr r0, r0, #0x18
    ldrb r3, [r5]
    add r0, r0, r3
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    add r5, #1
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_814983A
    mov r1, sp
    mvn r0, r3
    strb r0, [r1,#0xf]
    cmp r6, #0
    beq loc_8149866
    mov r0, #0
    strb r0, [r1,#0xe]
loc_8149866:
    mov r0, r12
    bl sub_814C360
    mov r0, sp
    add r1, r7, #0
    bl sub_814C484
    add sp, sp, #0x10
    pop {r4-r7}
    pop {r0}
    bx r0
off_814987C:    .word sub_8149880+1
// end of function sub_81497F4

.thumb
sub_8149880:
    push {r4-r7,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r12, r0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    cmp r7, #0
    bne loc_814990A
    ldr r0, [pc, #0x81498c4-0x8149890-4] // =dword_2010CCC
    ldr r0, [r0]
    ldr r1, [r0,#0x24]
    ldr r0, [pc, #0x81498c8-0x8149896-2] // =dword_2010CC0
    ldr r6, [r0]
    ldrb r2, [r1,#4]
    add r5, r6, #0
    add r5, #0x98
    strh r2, [r5]
    ldrb r0, [r1,#5]
    lsl r3, r0, #8
    orr r3, r2
    strh r3, [r5]
    add r4, r1, #6
    mov r1, #0x80
    lsl r1, r1, #8
    add r0, r3, #0
    and r0, r1
    cmp r0, #0
    beq loc_81498CC
    eor r3, r1
    strh r3, [r5]
    add r1, r6, #0
    add r1, #0x97
    mov r0, #1
    b loc_81498D2
off_81498C4:    .word dword_2010CCC
off_81498C8:    .word dword_2010CC0
loc_81498CC:
    add r1, r6, #0
    add r1, #0x97
    mov r0, #0
loc_81498D2:
    strb r0, [r1]
    mov r2, #0
    ldr r3, [pc, #0x8149918-0x81498d6-2] // =dword_2010CC0
loc_81498D8:
    ldr r0, [r3]
    add r0, #0x9a
    add r0, r0, r2
    ldrb r1, [r4]
    strb r1, [r0]
    add r4, #1
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #0xc
    bls loc_81498D8
    add r4, #1
    mov r2, #0
    ldr r3, [pc, #0x8149918-0x81498f2-2] // =dword_2010CC0
loc_81498F4:
    ldr r0, [r3]
    add r0, #0xa9
    add r0, r0, r2
    ldrb r1, [r4]
    strb r1, [r0]
    add r4, #1
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #7
    bls loc_81498F4
loc_814990A:
    mov r0, r12
    add r1, r7, #0
    bl sub_81494B8
    pop {r4-r7}
    pop {r0}
    bx r0
off_8149918:    .word dword_2010CC0
// end of function sub_8149880

.thumb
sub_814991C:
    push {lr}
    ldr r0, [pc, #0x814994c-0x814991e-2] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C418
    bl sub_814C384
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_8149954
    ldr r0, [pc, #0x8149950-0x8149934-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0,#7]
    cmp r0, #0
    bne loc_814995A
    mov r0, #1
    bl sub_8149994
    b loc_814995A
    .balign 4, 0x00
off_814994C:    .word sub_81494F8+1
off_8149950:    .word dword_2010CC8
loc_8149954:
    mov r0, #0x19
    bl sub_81494B8
loc_814995A:
    ldr r0, [pc, #0x8149968-0x814995a-2] // =sub_814996C+1
    bl sub_814C360
    bl sub_814C51C
    pop {r0}
    bx r0
off_8149968:    .word sub_814996C+1
// end of function sub_814991C

.thumb
sub_814996C:
    push {lr}
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    add r2, r1, #0
    cmp r2, #0
    bne loc_8149984
    ldr r0, [pc, #0x8149990-0x814997c-4] // =dword_2010CC4
    ldr r1, [r0]
    mov r0, #1
    strb r0, [r1,#9]
loc_8149984:
    add r0, r3, #0
    add r1, r2, #0
    bl sub_81494B8
    pop {r0}
    bx r0
off_8149990:    .word dword_2010CC4
// end of function sub_814996C

.thumb
sub_8149994:
    push {r4,r5,lr}
    sub sp, sp, #4
    add r4, r0, #0
    lsl r4, r4, #0x18
    lsr r4, r4, #0x18
    bl sub_814A828
    cmp r4, #0
    beq loc_81499BC
    mov r0, sp
    mov r5, #0
    strh r5, [r0]
    ldr r4, [pc, #0x81499f0-0x81499ac-4] // =dword_2010CC0
    ldr r1, [r4]
    add r1, #0x14
    ldr r2, [pc, #0x81499f4-0x81499b2-2] // =0x1000040
    bl SWI_CpuSet
    ldr r0, [r4]
    strb r5, [r0,#8]
loc_81499BC:
    mov r1, #0
    ldr r2, [pc, #0x81499f0-0x81499be-2] // =dword_2010CC0
    add r4, r2, #0
    mov r3, #0
loc_81499C4:
    ldr r0, [r4]
    add r0, #0xa
    add r0, r0, r1
    strb r3, [r0]
    add r0, r1, #1
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    cmp r1, #3
    bls loc_81499C4
    ldr r0, [r2]
    mov r1, #0
    strb r1, [r0,#1]
    ldr r0, [r2]
    strb r1, [r0,#2]
    ldr r0, [r2]
    strb r1, [r0,#3]
    ldr r0, [r2]
    strb r1, [r0,#7]
    add sp, sp, #4
    pop {r4,r5}
    pop {r0}
    bx r0
off_81499F0:    .word dword_2010CC0
dword_81499F4:    .word 0x1000040
// end of function sub_8149994

.thumb
sub_81499F8:
    push {lr}
    ldr r0, [pc, #0x8149a08-0x81499fa-2] // =sub_8149A20+1
    bl sub_814C360
    bl sub_814C540
    pop {r0}
    bx r0
off_8149A08:    .word sub_8149A20+1
// end of function sub_81499F8

.thumb
sub_8149A0C:
    push {lr}
    ldr r0, [pc, #0x8149a1c-0x8149a0e-2] // =sub_8149A20+1
    bl sub_814C360
    bl sub_814C564
    pop {r0}
    bx r0
off_8149A1C:    .word sub_8149A20+1
// end of function sub_8149A0C

.thumb
sub_8149A20:
    push {r4-r6,lr}
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    lsl r1, r1, #0x10
    lsr r6, r1, #0x10
    cmp r6, #0
    bne loc_8149A32
    bl sub_8149AA8
loc_8149A32:
    cmp r4, #0x1a
    bne loc_8149A74
    ldr r5, [pc, #0x8149a68-0x8149a36-2] // =dword_2010CC0
    ldr r0, [r5]
    add r0, #0x94
    ldrh r0, [r0]
    cmp r0, #0
    bne loc_8149A90
    ldr r0, [pc, #0x8149a6c-0x8149a42-2] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C418
    bl sub_814C384
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_8149A90
    ldr r1, [r5]
    ldr r0, [pc, #0x8149a70-0x8149a58-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrh r0, [r0,#4]
    add r1, #0x94
    strh r0, [r1]
    b loc_8149A90
off_8149A68:    .word dword_2010CC0
off_8149A6C:    .word sub_81494F8+1
off_8149A70:    .word dword_2010CC8
loc_8149A74:
    cmp r4, #0x1b
    bne loc_8149A90
    ldr r0, [pc, #0x8149aa0-0x8149a78-4] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r0, [r1]
    cmp r0, #0xff
    bne loc_8149A88
    add r1, #0x94
    mov r0, #0
    strh r0, [r1]
loc_8149A88:
    ldr r0, [pc, #0x8149aa4-0x8149a88-4] // =dword_2010CC4
    ldr r1, [r0]
    mov r0, #0
    strb r0, [r1,#9]
loc_8149A90:
    add r0, r4, #0
    add r1, r6, #0
    bl sub_81494B8
    pop {r4-r6}
    pop {r0}
    bx r0
    .byte 0, 0
off_8149AA0:    .word dword_2010CC0
off_8149AA4:    .word dword_2010CC4
// end of function sub_8149A20

.thumb
sub_8149AA8:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    ldr r1, [pc, #0x8149bd4-0x8149ab4-4] // =dword_2010CC8
    ldr r0, [r1]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r2, [r0,#1]
    mov r8, r2
    add r4, r1, #0
    cmp r2, #0
    beq loc_8149B06
    ldr r5, [r0,#4]
    ldr r0, [pc, #0x8149bd8-0x8149ac8-4] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C3D0
    bl sub_814C384
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_8149AFA
    ldr r0, [r4]
    add r0, #0xdc
    ldr r0, [r0]
    add r4, r0, #4
    mov r2, #0
loc_8149AE6:
    mov r0, sp
    add r1, r0, r2
    ldrb r0, [r4]
    strb r0, [r1]
    add r4, #1
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_8149AE6
loc_8149AFA:
    ldr r0, [pc, #0x8149bd4-0x8149afa-2] // =dword_2010CC8
    ldr r1, [r0]
    add r1, #0xdc
    ldr r1, [r1]
    str r5, [r1,#4]
    add r4, r0, #0
loc_8149B06:
    ldr r0, [r4]
    add r0, #0xdc
    ldr r0, [r0]
    add r4, r0, #4
    mov r1, r8
    cmp r1, #0
    beq loc_8149BC2
    ldr r2, [pc, #0x8149bdc-0x8149b14-4] // =dword_2010CC4
    mov r9, r2
    ldr r7, [pc, #0x8149be0-0x8149b18-4] // =dword_2010CC0
    mov r10, r9
loc_8149B1C:
    ldrb r2, [r4,#2]
    add r5, r2, #0
    cmp r2, #3
    bhi loc_8149BB2
    ldr r1, [r7]
    ldrb r0, [r1,#2]
    asr r0, r2
    mov r6, #1
    and r0, r6
    cmp r0, #0
    bne loc_8149BB2
    ldrb r3, [r1,#3]
    asr r3, r2
    and r3, r6
    cmp r3, #0
    bne loc_8149BB2
    mov r1, sp
    add r0, r1, r2
    ldrb r0, [r0]
    mov r12, r10
    cmp r0, #0
    beq loc_8149B56
    mov r0, r9
    ldr r1, [r0]
    add r1, #0xe
    add r1, r1, r2
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
loc_8149B56:
    mov r1, r9
    ldr r0, [r1]
    add r0, #0xe
    add r1, r0, r5
    ldrb r0, [r1]
    cmp r0, #3
    bls loc_8149BB2
    strb r3, [r1]
    ldr r0, [r7]
    add r0, #0xa
    add r0, r0, r5
    mov r1, #0xff
    strb r1, [r0]
    ldr r2, [r7]
    add r0, r6, #0
    lsl r0, r5
    ldrb r1, [r2,#2]
    orr r0, r1
    strb r0, [r2,#2]
    ldr r1, [r7]
    ldrb r0, [r1,#1]
    add r0, #1
    strb r0, [r1,#1]
    ldr r1, [r7]
    lsl r3, r5, #5
    add r1, r1, r3
    ldrh r0, [r4]
    strh r0, [r1,#0x14]
    strb r5, [r1,#0x16]
    ldr r0, [r7]
    strb r6, [r0]
    mov r0, r12
    ldr r2, [r0]
    ldrb r1, [r2]
    mov r0, #0x7f
    and r0, r1
    strb r0, [r2]
    mov r2, r12
    ldr r1, [r2]
    lsl r0, r5, #1
    add r1, #0x12
    add r1, r1, r0
    ldr r0, [r7]
    add r0, r0, r3
    ldrh r0, [r0,#0x14]
    strh r0, [r1]
loc_8149BB2:
    mov r0, r8
    sub r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r8, r0
    add r4, #4
    cmp r0, #0
    bne loc_8149B1C
loc_8149BC2:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_8149BD4:    .word dword_2010CC8
off_8149BD8:    .word sub_81494F8+1
off_8149BDC:    .word dword_2010CC4
off_8149BE0:    .word dword_2010CC0
// end of function sub_8149AA8

.thumb
sub_8149BE4:
    push {lr}
    ldr r0, [pc, #0x8149bf4-0x8149be6-2] // =sub_8149BF8+1
    bl sub_814C360
    bl sub_814C588
    pop {r0}
    bx r0
off_8149BF4:    .word sub_8149BF8+1
// end of function sub_8149BE4

.thumb
sub_8149BF8:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    add r4, r1, #0
    cmp r4, #0
    bne loc_8149C0E
    mov r0, #0
    bl sub_8149994
loc_8149C0E:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_81494B8
    pop {r4,r5}
    pop {r0}
    bx r0
// end of function sub_8149BF8

.thumb
sub_8149C1C:
    push {lr}
    ldr r0, [pc, #0x8149c2c-0x8149c1e-2] // =sub_8149C30+1
    bl sub_814C360
    bl sub_814C5AC
    pop {r0}
    bx r0
off_8149C2C:    .word sub_8149C30+1
// end of function sub_8149C1C

.thumb
sub_8149C30:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    add r4, r1, #0
    cmp r4, #0
    bne loc_8149C44
    bl sub_8149C68
loc_8149C44:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_81494B8
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_8149C30

.thumb
sub_8149C54:
    push {lr}
    ldr r0, [pc, #0x8149c64-0x8149c56-2] // =sub_81494B8+1
    bl sub_814C360
    bl sub_814C5D0
    pop {r0}
    bx r0
off_8149C64:    .word sub_81494B8+1
// end of function sub_8149C54

.thumb
sub_8149C68:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    mov r0, sp
    mov r4, #0
    strh r4, [r0]
    ldr r5, [pc, #0x8149d10-0x8149c76-2] // =dword_2010CC0
    ldr r1, [r5]
    add r1, #0x14
    ldr r2, [pc, #0x8149d14-0x8149c7c-4] // =0x1000040
    bl SWI_CpuSet
    ldr r0, [pc, #0x8149d18-0x8149c82-2] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r2, [r0]
    ldrb r7, [r2,#1]
    add r2, #4
    ldr r0, [r5]
    strb r4, [r0,#8]
    mov r6, #0
    cmp r7, #0
    beq loc_8149D6C
    mov r12, r5
    ldr r0, [pc, #0x8149d1c-0x8149c9a-2] // =0x7FFF
    mov r8, r0
loc_8149C9E:
    sub r0, r7, #7
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    add r1, r2, #6
    add r2, #0x13
    ldrb r0, [r2]
    mvn r0, r0
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    add r2, #1
    mov r4, #0
    mov r3, #0
    add r6, #1
loc_8149CB8:
    ldrb r0, [r2]
    add r0, r4, r0
    lsl r0, r0, #0x18
    add r2, #1
    lsr r0, r0, #0x18
    ldrb r4, [r1]
    add r0, r0, r4
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    add r1, #1
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #7
    bls loc_8149CB8
    cmp r4, r5
    bne loc_8149D60
    sub r2, #0x1c
    mov r0, r12
    ldr r1, [r0]
    ldrb r0, [r1,#8]
    lsl r0, r0, #5
    add r0, #0x14
    add r4, r1, r0
    ldrh r0, [r2]
    mov r3, #0
    strh r0, [r4]
    add r2, #2
    ldrb r0, [r2]
    strb r0, [r4,#2]
    add r2, #2
    ldrh r1, [r2]
    mov r0, r8
    and r0, r1
    strh r0, [r4,#4]
    ldrh r1, [r2]
    mov r0, #0x80
    lsl r0, r0, #8
    and r0, r1
    cmp r0, #0
    beq loc_8149D20
    mov r0, #1
    strb r0, [r4,#3]
    b loc_8149D22
off_8149D10:    .word dword_2010CC0
dword_8149D14:    .word 0x1000040
off_8149D18:    .word dword_2010CC8
dword_8149D1C:    .word 0x7FFF
loc_8149D20:
    strb r3, [r4,#3]
loc_8149D22:
    add r2, #2
    mov r3, #0
    add r5, r4, #0
    add r5, #0x15
    add r4, #6
loc_8149D2C:
    add r1, r4, r3
    ldrb r0, [r2]
    strb r0, [r1]
    add r2, #1
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #0xc
    bls loc_8149D2C
    add r2, #1
    mov r3, #0
    add r4, r5, #0
loc_8149D44:
    add r1, r4, r3
    ldrb r0, [r2]
    strb r0, [r1]
    add r2, #1
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #7
    bls loc_8149D44
    mov r4, r12
    ldr r1, [r4]
    ldrb r0, [r1,#8]
    add r0, #1
    strb r0, [r1,#8]
loc_8149D60:
    lsl r0, r6, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bhi loc_8149D6C
    cmp r7, #0
    bne loc_8149C9E
loc_8149D6C:
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_8149C68

.thumb
sub_8149D78:
    push {r4,r5,lr}
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    mov r3, #0
    mov r2, #0
    ldr r1, [pc, #0x8149dc4-0x8149d82-2] // =dword_2010CC0
    ldr r0, [r1]
    ldrh r0, [r0,#0x14]
    cmp r0, r4
    beq loc_8149DA4
    add r5, r1, #0
loc_8149D8E:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bhi loc_8149DA4
    ldr r0, [r5]
    lsl r1, r2, #5
    add r0, r0, r1
    ldrh r0, [r0,#0x14]
    cmp r0, r4
    bne loc_8149D8E
loc_8149DA4:
    cmp r2, #4
    bne loc_8149DAC
    mov r3, #0x80
    lsl r3, r3, #1
loc_8149DAC:
    cmp r3, #0
    bne loc_8149DD0
    ldr r0, [pc, #0x8149dc8-0x8149db0-4] // =dword_2010CC4
    ldr r0, [r0]
    strh r4, [r0,#0x1e]
    ldr r0, [pc, #0x8149dcc-0x8149db6-2] // =sub_81494B8+1
    bl sub_814C360
    add r0, r4, #0
    bl sub_814C5F4
    b loc_8149DD8
off_8149DC4:    .word dword_2010CC0
off_8149DC8:    .word dword_2010CC4
off_8149DCC:    .word sub_81494B8+1
loc_8149DD0:
    mov r0, #0x1f
    add r1, r3, #0
    bl sub_81494B8
loc_8149DD8:
    pop {r4,r5}
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_8149D78

.thumb
sub_8149DE0:
    push {lr}
    ldr r0, [pc, #0x8149df0-0x8149de2-2] // =sub_8149DF4+1
    bl sub_814C360
    bl sub_814C624
    pop {r0}
    bx r0
off_8149DF0:    .word sub_8149DF4+1
// end of function sub_8149DE0

.thumb
sub_8149DF4:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #0x2c
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp,#0x24]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    str r1, [sp,#0x28]
    cmp r1, #0
    bne loc_8149EF6
    ldr r0, [pc, #0x8149eb0-0x8149e10-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrh r5, [r0,#4]
    ldrb r1, [r0,#6]
    mov r10, r1
    ldrb r0, [r0,#7]
    cmp r0, #0
    bne loc_8149EF6
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r1
    lsr r2, r0, #0x18
    ldr r4, [pc, #0x8149eb4-0x8149e2c-4] // =dword_2010CC0
    ldr r3, [r4]
    ldrb r1, [r3,#2]
    add r0, r2, #0
    and r0, r1
    cmp r0, #0
    bne loc_8149EF6
    add r0, r2, #0
    orr r0, r1
    strb r0, [r3,#2]
    ldr r1, [r4]
    ldrb r0, [r1,#3]
    bic r0, r2
    strb r0, [r1,#3]
    ldr r1, [r4]
    add r0, r1, #0
    add r0, #0x94
    mov r2, #0
    strh r5, [r0]
    ldrb r0, [r1,#1]
    add r0, #1
    strb r0, [r1,#1]
    ldr r0, [r4]
    strb r2, [r0]
    ldr r3, [pc, #0x8149eb8-0x8149e5c-4] // =dword_2010CC4
    ldr r2, [r3]
    ldrb r1, [r2]
    mov r0, #0x80
    orr r0, r1
    strb r0, [r2]
    mov r5, #0
    add r7, r4, #0
    add r6, sp, #0x20
    mov r0, #0
    mov r8, r0
loc_8149E72:
    ldr r2, [r7]
    lsl r4, r5, #5
    add r0, r2, r4
    ldr r1, [r3]
    ldrh r0, [r0,#0x14]
    ldrh r1, [r1,#0x1e]
    cmp r0, r1
    bne loc_8149ECA
    ldrb r0, [r2,#8]
    cmp r0, #0
    beq loc_8149EC0
    mov r9, sp
    add r0, r4, #0
    add r0, #0x14
    add r0, r2, r0
    mov r1, sp
    mov r2, #0x10
    bl SWI_CpuSet
    mov r1, r8
    strh r1, [r6]
    ldr r1, [r7]
    add r1, #0x14
    add r0, r6, #0
    ldr r2, [pc, #0x8149ebc-0x8149ea2-2] // =0x1000040
    bl SWI_CpuSet
    ldr r0, [r7]
    mov r1, r8
    strb r1, [r0,#8]
    b loc_8149ED4
off_8149EB0:    .word dword_2010CC8
off_8149EB4:    .word dword_2010CC0
off_8149EB8:    .word dword_2010CC4
dword_8149EBC:    .word 0x1000040
loc_8149EC0:
    add r0, r4, #0
    add r0, #0x14
    add r2, r2, r0
    mov r9, r2
    b loc_8149ED4
loc_8149ECA:
    add r0, r5, #1
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #3
    bls loc_8149E72
loc_8149ED4:
    cmp r5, #3
    bhi loc_8149EF6
    ldr r4, [pc, #0x8149f10-0x8149ed8-4] // =dword_2010CC0
    mov r0, r10
    lsl r5, r0, #5
    add r0, r5, #0
    add r0, #0x14
    ldr r1, [r4]
    add r1, r1, r0
    mov r0, r9
    mov r2, #0x10
    bl SWI_CpuSet
    ldr r0, [r4]
    add r0, r0, r5
    mov r1, r10
    strb r1, [r0,#0x16]
loc_8149EF6:
    ldr r0, [sp,#0x24]
    ldr r1, [sp,#0x28]
    bl sub_81494B8
    add sp, sp, #0x2c
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
off_8149F10:    .word dword_2010CC0
// end of function sub_8149DF4

.thumb
sub_8149F14:
    push {lr}
    add r3, r0, #0
    mov r0, #0xff
    strb r0, [r3]
    ldr r0, [pc, #0x8149f34-0x8149f1c-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r2, [r0]
    ldrb r0, [r2]
    add r0, #0x60 
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #1
    bls loc_8149F38
    mov r0, #0x10
    b loc_8149F44
off_8149F34:    .word dword_2010CC8
loc_8149F38:
    add r2, #6
    ldrb r0, [r2]
    strb r0, [r1]
    ldrb r0, [r2,#1]
    strb r0, [r3]
    mov r0, #0
loc_8149F44:
    pop {r1}
    bx r1
// end of function sub_8149F14

.thumb
sub_8149F48:
    push {lr}
    ldr r0, [pc, #0x8149f74-0x8149f4a-2] // =sub_8149DF4+1
    bl sub_814C360
    bl sub_814C648
    ldr r0, [pc, #0x8149f78-0x8149f54-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r1, [r0]
    ldrb r0, [r1,#6]
    cmp r0, #3
    bhi loc_8149F70
    ldr r0, [pc, #0x8149f7c-0x8149f62-2] // =dword_2010CC4
    ldr r0, [r0]
    add r0, #0xa
    ldrb r1, [r1,#6]
    add r0, r0, r1
    mov r1, #0
    strb r1, [r0]
loc_8149F70:
    pop {r0}
    bx r0
off_8149F74:    .word sub_8149DF4+1
off_8149F78:    .word dword_2010CC8
off_8149F7C:    .word dword_2010CC4
// end of function sub_8149F48

.thumb
sub_8149F80:
    push {r4,r5,lr}
    bl sub_814C058
    ldr r0, [pc, #0x8149fc8-0x8149f86-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0xff
    beq loc_814A058
    ldr r4, [pc, #0x8149fcc-0x8149f90-4] // =dword_2010CC4
    ldr r1, [r4]
    ldrb r0, [r1,#6]
    cmp r0, #0
    beq loc_8149F9E
    sub r0, #1
    strb r0, [r1,#6]
loc_8149F9E:
    bl sub_814A7F0
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    ldr r2, [r4]
    ldrb r1, [r2]
    mov r0, #2
    and r0, r1
    cmp r0, #0
    bne loc_8149FD0
    cmp r3, #0
    bne loc_8149FDE
    mov r0, #4
    orr r0, r1
    strb r0, [r2]
    ldr r1, [r4]
    mov r0, #0xb4
    lsl r0, r0, #1
    strh r0, [r1,#0x20]
    b loc_8149FDA
    .balign 4, 0x00
off_8149FC8:    .word dword_2010CC0
off_8149FCC:    .word dword_2010CC4
loc_8149FD0:
    cmp r3, #0
    beq loc_8149FF0
    mov r0, #0xfb
    and r0, r1
    strb r0, [r2]
loc_8149FDA:
    cmp r3, #0
    beq loc_8149FF0
loc_8149FDE:
    ldr r3, [pc, #0x8149fec-0x8149fde-2] // =dword_2010CC4
    ldr r2, [r3]
    ldrb r1, [r2]
    mov r0, #0xfd
    and r0, r1
    b loc_8149FFA
    .balign 4, 0x00
off_8149FEC:    .word dword_2010CC4
loc_8149FF0:
    ldr r3, [pc, #0x814a04c-0x8149ff0-4] // =dword_2010CC4
    ldr r2, [r3]
    ldrb r1, [r2]
    mov r0, #2
    orr r0, r1
loc_8149FFA:
    strb r0, [r2]
    ldr r3, [r3]
    ldrb r1, [r3]
    mov r0, #4
    and r0, r1
    cmp r0, #0
    beq loc_814A058
    ldrh r0, [r3,#0x20]
    cmp r0, #0
    bne loc_814A054
    mov r0, #0xfb
    and r0, r1
    strb r0, [r3]
    ldr r0, [pc, #0x814a050-0x814a014-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    ldrb r0, [r0,#3]
    add r5, r0, #0
    orr r5, r1
    mov r4, #0
loc_814A022:
    add r0, r5, #0
    asr r0, r4
    mov r1, #1
    and r0, r1
    cmp r0, #0
    beq loc_814A034
    add r0, r4, #0
    bl sub_814A41C
loc_814A034:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814A022
    ldr r0, [pc, #0x814a050-0x814a03e-2] // =dword_2010CC0
    ldr r1, [r0]
    mov r0, #0xff
    strb r0, [r1]
    mov r0, #1
    b loc_814A05A
    .balign 4, 0x00
off_814A04C:    .word dword_2010CC4
off_814A050:    .word dword_2010CC0
loc_814A054:
    sub r0, #1
    strh r0, [r3,#0x20]
loc_814A058:
    mov r0, #0
loc_814A05A:
    pop {r4,r5}
    pop {r1}
    bx r1
// end of function sub_8149F80

.thumb
sub_814A060:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #0x18
    mov r8, r1
    str r2, [sp]
    str r3, [sp,#4]
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    mov r0, #0
    str r0, [sp,#8]
    mov r1, #0
    str r1, [sp,#0xc]
    mov r2, r8
    strb r1, [r2]
    mov r0, sp
    ldrb r1, [r0,#0xc]
    ldr r0, [sp]
    strb r1, [r0]
    mov r2, sp
    ldrb r0, [r2,#0xc]
    ldr r2, [sp,#4]
    strb r0, [r2]
    ldr r4, [pc, #0x814a100-0x814a092-2] // =dword_2010CC0
    ldr r0, [r4]
    ldrb r0, [r0]
    cmp r0, #0xff
    bne loc_814A09E
    b loc_814A3FE
loc_814A09E:
    ldr r0, [pc, #0x814a104-0x814a09e-2] // =dword_2010CCC
    ldr r0, [r0]
    ldrb r0, [r0,#0x14]
    cmp r0, #0
    bne loc_814A0AA
    b loc_814A3FE
loc_814A0AA:
    ldr r3, [pc, #0x814a108-0x814a0aa-2] // =dword_2010CC4
    ldr r2, [r3]
    ldrb r1, [r2]
    mov r0, #4
    and r0, r1
    cmp r0, #0
    beq loc_814A0BE
    mov r0, #0xb4
    lsl r0, r0, #1
    strh r0, [r2,#0x20]
loc_814A0BE:
    ldr r1, [r3]
    ldrb r0, [r1,#6]
    cmp r0, #0
    bne loc_814A0D0
    ldr r0, [r4]
    ldrb r0, [r0,#9]
    strb r0, [r1,#6]
    mov r1, #1
    str r1, [sp,#8]
loc_814A0D0:
    lsl r0, r5, #0x18
    lsr r0, r0, #0x18
    cmp r0, #0x29 
    bne loc_814A110
    ldr r0, [pc, #0x814a10c-0x814a0d8-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r1, [r0]
    ldrb r0, [r1,#4]
    mov r2, r8
    strb r0, [r2]
    ldrb r0, [r1,#5]
    ldr r1, [sp]
    strb r0, [r1]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #1
    bne loc_814A0FA
    ldr r0, [r4]
    ldrb r0, [r0,#2]
    strb r0, [r2]
loc_814A0FA:
    mov r2, #2
    str r2, [sp,#8]
    b loc_814A168
off_814A100:    .word dword_2010CC0
off_814A104:    .word dword_2010CCC
off_814A108:    .word dword_2010CC4
off_814A10C:    .word dword_2010CC8
loc_814A110:
    mov r0, #0x9b
    lsl r0, r0, #1
    cmp r5, r0
    bne loc_814A160
    ldr r0, [pc, #0x814a1bc-0x814a118-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r6, [r0,#5]
    ldr r0, [r4]
    ldrb r0, [r0,#2]
    eor r6, r0
    and r6, r0
    mov r0, r8
    strb r6, [r0]
    mov r0, #1
    ldr r1, [sp]
    strb r0, [r1]
    mov r5, #0
loc_814A136:
    mov r2, r8
    ldrb r0, [r2]
    asr r0, r5
    mov r1, #1
    and r0, r1
    cmp r0, #0
    beq loc_814A156
    ldr r0, [pc, #0x814a1c0-0x814a144-4] // =dword_2010CC0
    ldr r0, [r0]
    add r0, #0xa
    add r0, r0, r5
    mov r1, #0
    strb r1, [r0]
    add r0, r5, #0
    bl sub_814A41C
loc_814A156:
    add r0, r5, #1
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #3
    bls loc_814A136
loc_814A160:
    ldr r0, [sp,#8]
    cmp r0, #0
    bne loc_814A168
    b loc_814A3FE
loc_814A168:
    ldr r4, [pc, #0x814a1bc-0x814a168-4] // =dword_2010CC8
    ldr r0, [r4]
    add r0, #0xdc
    ldr r0, [r0]
    ldr r1, [r0]
    str r1, [sp,#0x10]
    ldr r0, [r0,#4]
    str r0, [sp,#0x14]
    ldr r0, [pc, #0x814a1c4-0x814a178-4] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C3D0
    bl sub_814C384
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp,#0xc]
    cmp r0, #0
    bne loc_814A1C8
    ldr r0, [r4]
    add r0, #0xdc
    ldr r0, [r0]
    add r2, r0, #4
    mov r5, #0
    ldr r3, [pc, #0x814a1c0-0x814a19a-2] // =dword_2010CC0
loc_814A19C:
    ldr r0, [r3]
    add r0, #0xa
    add r0, r0, r5
    ldrb r1, [r2]
    strb r1, [r0]
    add r2, #1
    add r0, r5, #1
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #3
    bls loc_814A19C
    mov r2, #0
    mov r9, r2
    mov r5, #0
    b loc_814A1D4
    .balign 4, 0x00
off_814A1BC:    .word dword_2010CC8
off_814A1C0:    .word dword_2010CC0
off_814A1C4:    .word sub_81494F8+1
loc_814A1C8:
    mov r0, #0x11
    ldr r1, [sp,#0xc]
    bl sub_81494B8
    ldr r0, [sp,#0xc]
    b loc_814A400
loc_814A1D4:
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r5
    lsr r6, r0, #0x18
    add r0, r5, #1
    mov r10, r0
    ldr r1, [sp,#0xc]
    cmp r1, #0
    beq loc_814A1E8
    b loc_814A3B2
loc_814A1E8:
    ldr r2, [sp,#8]
    cmp r2, #1
    bne loc_814A2BE
    ldr r4, [pc, #0x814a228-0x814a1ee-2] // =dword_2010CC0
    ldr r1, [r4]
    ldrb r0, [r1,#2]
    and r0, r6
    cmp r0, #0
    beq loc_814A2BE
    add r0, r1, #0
    add r0, #0xa
    add r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_814A2B0
    ldrb r0, [r1]
    cmp r0, #1
    bne loc_814A230
    ldr r2, [pc, #0x814a22c-0x814a20c-4] // =dword_2010CC4
    ldr r1, [r2]
    add r1, #0xa
    add r1, r1, r5
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    ldr r0, [r2]
    add r0, #0xa
    add r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #3
    bls loc_814A2BE
    b loc_814A296
off_814A228:    .word dword_2010CC0
off_814A22C:    .word dword_2010CC4
loc_814A230:
    bl sub_814C418
    bl sub_814C384
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814A2BE
    ldr r0, [pc, #0x814a260-0x814a23e-2] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0,#7]
    cmp r0, #0
    bne loc_814A264
    mov r2, r8
    ldrb r1, [r2]
    add r0, r6, #0
    orr r0, r1
    strb r0, [r2]
    mov r0, sp
    ldrb r1, [r0,#8]
    ldr r0, [sp]
    b loc_814A2BC
    .byte 0, 0
off_814A260:    .word dword_2010CC8
loc_814A264:
    ldr r2, [pc, #0x814a2ac-0x814a264-4] // =dword_2010CC4
    ldr r1, [r2]
    add r1, #0xa
    add r1, r1, r5
    ldrb r0, [r1]
    add r0, #1
    strb r0, [r1]
    lsl r0, r0, #0x18
    ldr r2, [r2]
    lsr r0, r0, #0x18
    ldrh r1, [r2,#0x1a]
    cmp r0, r1
    bls loc_814A2BE
    add r0, r2, #0
    add r0, #0xa
    add r0, r0, r5
    mov r2, sp
    ldrb r2, [r2,#0xc]
    strb r2, [r0]
    ldr r0, [r4]
    ldrb r0, [r0,#2]
    bl sub_814C7F8
    bl sub_814C384
loc_814A296:
    mov r0, r8
    ldrb r1, [r0]
    add r0, r6, #0
    orr r0, r1
    mov r1, r8
    strb r0, [r1]
    mov r2, sp
    ldrb r0, [r2,#8]
    ldr r2, [sp]
    strb r0, [r2]
    b loc_814A2BE
off_814A2AC:    .word dword_2010CC4
loc_814A2B0:
    ldr r0, [pc, #0x814a320-0x814a2b0-4] // =dword_2010CC4
    ldr r0, [r0]
    add r0, #0xa
    add r0, r0, r5
    mov r1, sp
    ldrb r1, [r1,#0xc]
loc_814A2BC:
    strb r1, [r0]
loc_814A2BE:
    ldr r2, [pc, #0x814a324-0x814a2be-2] // =dword_2010CC0
    mov r12, r2
    ldr r1, [r2]
    ldrb r7, [r1]
    add r0, r5, #1
    mov r10, r0
    cmp r7, #1
    bne loc_814A3B2
    add r0, r1, #0
    add r0, #0xa
    add r4, r0, r5
    ldrb r3, [r4]
    cmp r3, #0
    beq loc_814A3B2
    ldrb r2, [r1,#3]
    add r0, r6, #0
    and r0, r2
    cmp r0, #0
    beq loc_814A32E
    cmp r3, #0xa
    bls loc_814A328
    ldr r2, [sp,#4]
    ldrb r1, [r2]
    add r0, r6, #0
    orr r0, r1
    strb r0, [r2]
    mov r0, r12
    ldr r2, [r0]
    ldrb r1, [r2,#2]
    add r0, r6, #0
    orr r0, r1
    mov r3, #0
    strb r0, [r2,#2]
    mov r2, r12
    ldr r1, [r2]
    ldrb r0, [r1,#3]
    bic r0, r6
    strb r0, [r1,#3]
    ldr r1, [r2]
    ldrb r0, [r1,#1]
    add r0, #1
    strb r0, [r1,#1]
    ldr r0, [pc, #0x814a320-0x814a312-2] // =dword_2010CC4
    ldr r0, [r0]
    add r0, #0xa
    add r0, r0, r5
    strb r3, [r0]
    b loc_814A3B2
    .byte 0, 0
off_814A320:    .word dword_2010CC4
off_814A324:    .word dword_2010CC0
loc_814A328:
    mov r0, #0
    strb r0, [r4]
    b loc_814A3B2
loc_814A32E:
    ldrb r0, [r1,#2]
    orr r0, r2
    and r0, r6
    cmp r0, #0
    bne loc_814A3B2
    bl sub_814C43C
    bl sub_814C384
    ldr r0, [pc, #0x814a378-0x814a340-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r2, [r0]
    ldrb r0, [r2,#1]
    sub r0, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    add r2, #8
    cmp r3, #0
    beq loc_814A3B2
    ldrh r4, [r2]
    ldrb r0, [r2,#2]
    cmp r0, r5
    bne loc_814A380
    ldr r0, [pc, #0x814a37c-0x814a35e-2] // =dword_2010CC4
    ldr r0, [r0]
    lsl r1, r5, #1
    add r0, #0x12
    add r0, r0, r1
    ldrh r0, [r0]
    cmp r4, r0
    bne loc_814A380
    lsl r7, r5
    mov r0, r9
    orr r0, r7
    lsl r0, r0, #0x18
    b loc_814A3AE
off_814A378:    .word dword_2010CC8
off_814A37C:    .word dword_2010CC4
loc_814A380:
    add r2, #4
    sub r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #0
    beq loc_814A3B2
    ldrh r4, [r2]
    ldrb r0, [r2,#2]
    cmp r0, r5
    bne loc_814A380
    ldr r0, [pc, #0x814a410-0x814a394-4] // =dword_2010CC4
    ldr r0, [r0]
    lsl r1, r5, #1
    add r0, #0x12
    add r0, r0, r1
    ldrh r0, [r0]
    cmp r4, r0
    bne loc_814A380
    mov r0, #1
    lsl r0, r5
    mov r1, r9
    orr r1, r0
    lsl r0, r1, #0x18
loc_814A3AE:
    lsr r0, r0, #0x18
    mov r9, r0
loc_814A3B2:
    ldr r0, [pc, #0x814a414-0x814a3b2-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r1, [r0,#2]
    mov r2, r8
    ldrb r0, [r2]
    and r0, r1
    and r6, r0
    cmp r6, #0
    beq loc_814A3CC
    add r0, r5, #0
    mov r1, #0
    bl sub_814A41C
loc_814A3CC:
    mov r1, r10
    lsl r0, r1, #0x18
    lsr r5, r0, #0x18
    cmp r5, #3
    bhi loc_814A3D8
    b loc_814A1D4
loc_814A3D8:
    mov r2, r9
    cmp r2, #0
    beq loc_814A3E8
    mov r0, r9
    bl sub_814C7F8
    bl sub_814C384
loc_814A3E8:
    ldr r1, [pc, #0x814a418-0x814a3e8-4] // =dword_2010CC8
    ldr r0, [r1]
    add r0, #0xdc
    ldr r0, [r0]
    ldr r2, [sp,#0x10]
    str r2, [r0]
    ldr r0, [r1]
    add r0, #0xdc
    ldr r0, [r0]
    ldr r1, [sp,#0x14]
    str r1, [r0,#4]
loc_814A3FE:
    mov r0, #0
loc_814A400:
    add sp, sp, #0x18
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
off_814A410:    .word dword_2010CC4
off_814A414:    .word dword_2010CC0
off_814A418:    .word dword_2010CC8
// end of function sub_814A060

.thumb
sub_814A41C:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r12, r1
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r7
    lsr r5, r0, #0x18
    ldr r1, [pc, #0x814a4c0-0x814a436-2] // =dword_2010CC0
    ldr r4, [r1]
    ldrb r0, [r4,#2]
    and r0, r5
    mov r8, r1
    cmp r0, #0
    beq loc_814A44E
    ldrb r0, [r4,#1]
    cmp r0, #0
    beq loc_814A44E
    sub r0, #1
    strb r0, [r4,#1]
loc_814A44E:
    mov r3, r8
    ldr r2, [r3]
    mvn r6, r5
    ldrb r1, [r2,#2]
    add r0, r6, #0
    and r0, r1
    strb r0, [r2,#2]
    ldr r2, [r3]
    ldrb r1, [r2,#3]
    add r0, r5, #0
    orr r0, r1
    strb r0, [r2,#3]
    ldr r3, [r3]
    ldr r0, [r3]
    ldr r1, [pc, #0x814a4c4-0x814a46a-2] // =0xFF00FF
    and r0, r1
    cmp r0, #0
    bne loc_814A476
    mov r0, #0xff
    strb r0, [r3]
loc_814A476:
    mov r0, r12
    cmp r0, #0
    beq loc_814A4B4
    mov r1, sp
    mov r4, #0
    mov r0, #0
    strh r0, [r1]
    lsl r0, r7, #5
    add r0, #0x14
    mov r2, r8
    ldr r1, [r2]
    add r1, r1, r0
    ldr r2, [pc, #0x814a4c8-0x814a48e-2] // =0x1000010
    mov r0, sp
    bl SWI_CpuSet
    mov r0, r8
    ldr r2, [r0]
    ldrb r1, [r2,#3]
    add r0, r6, #0
    and r0, r1
    strb r0, [r2,#3]
    mov r2, r8
    ldr r1, [r2]
    ldrb r0, [r1,#7]
    and r6, r0
    strb r6, [r1,#7]
    ldr r0, [r2]
    add r0, #0xa
    add r0, r0, r7
    strb r4, [r0]
loc_814A4B4:
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
off_814A4C0:    .word dword_2010CC0
dword_814A4C4:    .word 0xFF00FF
dword_814A4C8:    .word 0x1000010
// end of function sub_814A41C

.thumb
sub_814A4CC:
    push {r4,lr}
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    ldr r2, [pc, #0x814a510-0x814a4d2-2] // =dword_2010CC0
    ldr r1, [r2]
    ldrb r0, [r1,#2]
    ldrb r1, [r1,#3]
    orr r0, r1
    and r0, r4
    cmp r0, #0
    beq loc_814A550
    ldr r0, [pc, #0x814a514-0x814a4e2-2] // =dword_2010CC4
    ldr r1, [r0]
    strb r4, [r1,#5]
    ldr r2, [r2]
    ldrb r1, [r2]
    add r3, r0, #0
    cmp r1, #0xff
    bne loc_814A518
    ldr r0, [r3]
    ldrb r1, [r0]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    beq loc_814A518
    ldrb r0, [r2,#3]
    and r0, r4
    cmp r0, #0
    beq loc_814A550
    mov r0, #0x30 
    mov r1, #0
    bl sub_814A55C
    b loc_814A550
off_814A510:    .word dword_2010CC0
off_814A514:    .word dword_2010CC4
loc_814A518:
    ldr r0, [r3]
    ldrb r0, [r0,#9]
    cmp r0, #0
    beq loc_814A544
    ldr r0, [pc, #0x814a540-0x814a520-4] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C564
    bl sub_814C384
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    beq loc_814A544
    mov r0, #0x1b
    bl sub_81494B8
    b loc_814A550
    .byte 0, 0
off_814A540:    .word sub_81494F8+1
loc_814A544:
    ldr r0, [pc, #0x814a558-0x814a544-4] // =sub_814A55C+1
    bl sub_814C360
    add r0, r4, #0
    bl sub_814C7F8
loc_814A550:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814A558:    .word sub_814A55C+1
// end of function sub_814A4CC

.thumb
sub_814A55C:
    push {r4-r6,lr}
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    lsl r1, r1, #0x10
    lsr r5, r1, #0x10
    cmp r5, #3
    bne loc_814A598
    ldr r0, [pc, #0x814a62c-0x814a56a-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_814A598
    ldr r0, [pc, #0x814a630-0x814a574-4] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C418
    bl sub_814C384
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814A598
    ldr r0, [pc, #0x814a634-0x814a588-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0,#7]
    cmp r0, #0
    bne loc_814A598
    mov r5, #0
loc_814A598:
    ldr r3, [pc, #0x814a638-0x814a598-4] // =dword_2010CC4
    ldr r2, [r3]
    ldr r0, [pc, #0x814a62c-0x814a59c-4] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r0, [r1,#2]
    ldrb r1, [r1,#3]
    orr r0, r1
    ldrb r1, [r2,#5]
    and r0, r1
    strb r0, [r2,#5]
    ldr r0, [pc, #0x814a634-0x814a5ac-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r1, [r0]
    ldr r0, [r3]
    ldrb r0, [r0,#5]
    strb r0, [r1,#8]
    cmp r5, #0
    bne loc_814A5E6
    mov r4, #0
loc_814A5C0:
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r4
    lsr r0, r0, #0x18
    ldr r1, [pc, #0x814a638-0x814a5c8-4] // =dword_2010CC4
    ldr r1, [r1]
    ldrb r1, [r1,#5]
    and r0, r1
    cmp r0, #0
    beq loc_814A5DC
    add r0, r4, #0
    mov r1, #1
    bl sub_814A41C
loc_814A5DC:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814A5C0
loc_814A5E6:
    ldr r0, [pc, #0x814a62c-0x814a5e6-2] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r1, [r2,#2]
    ldrb r0, [r2,#3]
    orr r0, r1
    cmp r0, #0
    bne loc_814A5F8
    mov r0, #0xff
    strb r0, [r2]
loc_814A5F8:
    add r0, r6, #0
    add r1, r5, #0
    bl sub_81494B8
    ldr r0, [pc, #0x814a638-0x814a600-4] // =dword_2010CC4
    ldr r0, [r0]
    ldrb r0, [r0,#9]
    cmp r0, #0
    beq loc_814A626
    ldr r0, [pc, #0x814a630-0x814a60a-2] // =sub_81494F8+1
    bl sub_814C360
    bl sub_814C51C
    bl sub_814C384
    add r5, r0, #0
    cmp r5, #0
    beq loc_814A626
    mov r0, #0x19
    add r1, r5, #0
    bl sub_81494B8
loc_814A626:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814A62C:    .word dword_2010CC0
off_814A630:    .word sub_81494F8+1
off_814A634:    .word dword_2010CC8
off_814A638:    .word dword_2010CC4
// end of function sub_814A55C

.thumb
sub_814A63C:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    ldr r0, [pc, #0x814a68c-0x814a642-2] // =dword_2010CC4
    ldr r0, [r0]
    strb r5, [r0,#5]
    mov r4, #0
    mov r0, #1
    and r0, r5
    ldr r2, [pc, #0x814a690-0x814a64e-2] // =sub_81494B8+1
    cmp r0, #0
    bne loc_814A66A
    mov r1, #1
loc_814A656:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bhi loc_814A66A
    add r0, r5, #0
    asr r0, r4
    and r0, r1
    cmp r0, #0
    beq loc_814A656
loc_814A66A:
    add r0, r2, #0
    bl sub_814C360
    ldr r0, [pc, #0x814a694-0x814a670-4] // =dword_2010CC0
    ldr r1, [r0]
    lsl r0, r4, #5
    add r0, r1, r0
    ldrh r0, [r0,#0x14]
    add r1, #0x94
    ldrh r1, [r1]
    add r2, r5, #0
    bl sub_814C860
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814A68C:    .word dword_2010CC4
off_814A690:    .word sub_81494B8+1
off_814A694:    .word dword_2010CC0
// end of function sub_814A63C

.thumb
sub_814A698:
    push {lr}
    ldr r0, [pc, #0x814a6a8-0x814a69a-2] // =sub_814A6AC+1
    bl sub_814C360
    bl sub_814C89C
    pop {r0}
    bx r0
off_814A6A8:    .word sub_814A6AC+1
// end of function sub_814A698

.thumb
sub_814A6AC:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r8, r0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    cmp r7, #0
    bne loc_814A730
    ldr r0, [pc, #0x814a744-0x814a6c0-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0,#4]
    cmp r0, #0
    bne loc_814A730
    ldr r0, [pc, #0x814a748-0x814a6ce-2] // =dword_2010CC4
    ldr r1, [r0]
    ldrb r1, [r1,#5]
    add r6, r0, #0
    cmp r1, #0
    beq loc_814A730
    ldr r1, [pc, #0x814a74c-0x814a6da-2] // =dword_2010CC0
    ldr r0, [r1]
    strb r7, [r0]
    mov r4, #0
    add r5, r1, #0
    mov r12, r4
loc_814A6E6:
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r4
    lsr r3, r0, #0x18
    ldr r2, [r5]
    ldr r0, [r6]
    ldrb r0, [r0,#5]
    and r0, r3
    ldrb r1, [r2,#3]
    and r0, r1
    cmp r0, #0
    beq loc_814A720
    ldrb r1, [r2,#2]
    add r0, r3, #0
    orr r0, r1
    strb r0, [r2,#2]
    ldr r1, [r5]
    ldrb r0, [r1,#3]
    bic r0, r3
    strb r0, [r1,#3]
    ldr r1, [r5]
    ldrb r0, [r1,#1]
    add r0, #1
    strb r0, [r1,#1]
    ldr r0, [r6]
    add r0, #0xa
    add r0, r0, r4
    mov r1, r12
    strb r1, [r0]
loc_814A720:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814A6E6
    ldr r1, [r6]
    mov r0, #0
    strb r0, [r1,#5]
loc_814A730:
    mov r0, r8
    add r1, r7, #0
    bl sub_81494B8
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814A744:    .word dword_2010CC8
off_814A748:    .word dword_2010CC4
off_814A74C:    .word dword_2010CC0
// end of function sub_814A6AC

.thumb
sub_814A750:
    push {lr}
    add r2, r0, #0
    mov r0, #0xff
    strb r0, [r2]
    ldr r0, [pc, #0x814a770-0x814a758-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r1, [r0]
    ldrb r0, [r1]
    add r0, #0x4d 
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #1
    bls loc_814A774
    mov r0, #0x10
    b loc_814A77A
off_814A770:    .word dword_2010CC8
loc_814A774:
    ldrb r0, [r1,#4]
    strb r0, [r2]
    mov r0, #0
loc_814A77A:
    pop {r1}
    bx r1
    .byte 0, 0
// end of function sub_814A750

.thumb
sub_814A780:
    push {lr}
    ldr r0, [pc, #0x814a790-0x814a782-2] // =sub_814A6AC+1
    bl sub_814C360
    bl sub_814C8C0
    pop {r0}
    bx r0
off_814A790:    .word sub_814A6AC+1
word_814A794:    .hword 0xB570
    .byte 5
    .byte 0x1C
    .byte 0xE
    .byte 0x1C
    .byte 0x2B 
    .byte 0x68 
    .byte 0x31 
    .byte 0x68 
    .byte 1
    .byte 0x3A 
    .byte 1
    .byte 0x20
    .byte 0x40 
    .byte 0x42 
    .byte 0x82
    .byte 0x42 
    .byte 7
    .byte 0xD0
    .byte 4
    .byte 0x1C
    .byte 0x18
    .byte 0x78 
    .byte 8
    .byte 0x70 
    .byte 1
    .byte 0x33 
    .byte 1
    .byte 0x31 
    .byte 1
    .byte 0x3A 
    .byte 0xA2
    .byte 0x42 
    .byte 0xF8
    .byte 0xD1
    .byte 0x2B 
    .byte 0x60 
    .byte 0x31 
    .byte 0x60 
    .byte 0x70 
    .byte 0xBC
    .byte 1
    .byte 0xBC
    .byte 0
    .byte 0x47 
    .balign 4, 0x00
// end of function sub_814A780

.thumb
sub_814A7C4:
    push {lr}
    mov r0, #1
    bl sub_814C2E8
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #1
    bne loc_814A7E4
    ldr r0, [pc, #0x814a7e0-0x814a7d4-4] // =sub_81494B8+1
    bl sub_814C360
    bl sub_814C720
    b loc_814A7EC
off_814A7E0:    .word sub_81494B8+1
loc_814A7E4:
    mov r0, #0x27 
    mov r1, #0
    bl sub_81494B8
loc_814A7EC:
    pop {r0}
    bx r0
// end of function sub_814A7C4

.thumb
sub_814A7F0:
    push {lr}
    mov r0, #1
    bl sub_814C2E8
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #1
    bne loc_814A81E
    ldr r0, [pc, #0x814a824-0x814a800-4] // =dword_2010CCC
    ldr r1, [r0]
    add r0, r1, #0
    add r0, #0x2c 
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_814A81E
    ldrb r0, [r1,#6]
    cmp r0, #0x27 
    beq loc_814A81C
    cmp r0, #0x25 
    beq loc_814A81C
    cmp r0, #0x37 
    bne loc_814A81E
loc_814A81C:
    mov r2, #0
loc_814A81E:
    add r0, r2, #0
    pop {r1}
    bx r1
off_814A824:    .word dword_2010CCC
// end of function sub_814A7F0

.thumb
sub_814A828:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #4
    ldr r1, [pc, #0x814a8ac-0x814a830-4] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    mov r8, r0
    mov r0, #0
    strh r0, [r1]
    mov r5, #0
    mov r0, sp
    add r0, #2
    mov r7, #0
    add r6, r0, #0
loc_814A844:
    mov r0, sp
    strh r7, [r0]
    ldr r0, [pc, #0x814a8b0-0x814a848-4] // =dword_2010CB0
    lsl r4, r5, #2
    add r0, r4, r0
    ldr r1, [r0]
    mov r0, sp
    ldr r2, [pc, #0x814a8b4-0x814a852-2] // =0x1000034
    bl SWI_CpuSet
    strh r7, [r6]
    ldr r0, [pc, #0x814a8b8-0x814a85a-2] // =dword_2010CA0
    add r4, r4, r0
    ldr r1, [r4]
    add r0, r6, #0
    ldr r2, [pc, #0x814a8bc-0x814a862-2] // =0x100000A
    bl SWI_CpuSet
    ldr r3, [pc, #0x814a8c0-0x814a868-4] // =dword_2010CC0
    ldr r0, [r3]
    add r0, #0x10
    add r0, r0, r5
    mov r1, #0x10
    strb r1, [r0]
    add r0, r5, #1
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    cmp r5, #3
    bls loc_814A844
    ldr r2, [r3]
    mov r1, #0
    mov r0, #0x57 
    strb r0, [r2,#0xf]
    ldr r0, [r3]
    strb r1, [r0,#4]
    ldr r0, [r3]
    strb r1, [r0,#5]
    ldr r0, [r3]
    strb r1, [r0,#6]
    ldr r0, [pc, #0x814a8c4-0x814a892-2] // =dword_2010CC4
    ldr r0, [r0]
    strb r1, [r0,#2]
    ldr r0, [pc, #0x814a8ac-0x814a898-4] // =InterruptMasterEnableRegister
    mov r1, r8
    strh r1, [r0]
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814A8AC:    .word InterruptMasterEnableRegister
off_814A8B0:    .word dword_2010CB0
dword_814A8B4:    .word 0x1000034
off_814A8B8:    .word dword_2010CA0
dword_814A8BC:    .word 0x100000A
off_814A8C0:    .word dword_2010CC0
off_814A8C4:    .word dword_2010CC4
// end of function sub_814A828

.thumb
sub_814A8C8:
    push {r4-r6,lr}
    add r4, r2, #0
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    add r5, r2, #0
    lsl r1, r1, #0x18
    lsr r3, r1, #0x18
    ldr r0, [pc, #0x814a900-0x814a8d6-2] // =dword_2010CC4
    ldr r0, [r0]
    ldrb r1, [r0]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    bne loc_814A908
    ldr r6, [pc, #0x814a904-0x814a8e4-4] // =dword_2010CC0
    cmp r3, #0
    bne loc_814A8F4
    ldr r1, [r6]
    ldrb r0, [r1,#0xf]
    ldrh r4, [r4,#0x2e]
    add r0, r0, r4
    strb r0, [r1,#0xf]
loc_814A8F4:
    ldr r1, [r6]
    ldrb r0, [r1,#0xf]
    add r0, #3
    strb r0, [r1,#0xf]
    b loc_814A928
    .byte 0, 0
off_814A900:    .word dword_2010CC4
off_814A904:    .word dword_2010CC0
loc_814A908:
    ldr r6, [pc, #0x814a930-0x814a908-4] // =dword_2010CC0
    cmp r3, #0
    bne loc_814A91C
    ldr r1, [r6]
    add r1, #0x10
    add r1, r1, r2
    ldrb r0, [r1]
    ldrh r4, [r4,#0x2e]
    add r0, r0, r4
    strb r0, [r1]
loc_814A91C:
    ldr r1, [r6]
    add r1, #0x10
    add r1, r1, r5
    ldrb r0, [r1]
    add r0, #2
    strb r0, [r1]
loc_814A928:
    pop {r4-r6}
    pop {r0}
    bx r0
    .byte 0, 0
off_814A930:    .word dword_2010CC0
// end of function sub_814A8C8

.thumb
sub_814A934:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r8, r0
    lsl r1, r1, #0x18
    lsr r7, r1, #0x18
    cmp r7, #3
    bls loc_814A954
    mov r0, #0x80
    lsl r0, r0, #3
    b loc_814AACC
loc_814A954:
    mov r0, #0xf
    mov r1, r8
    and r0, r1
    cmp r0, #0
    bne loc_814A964
    mov r0, #0xc0
    lsl r0, r0, #3
    b loc_814AACC
loc_814A964:
    ldr r1, [pc, #0x814a9a8-0x814a964-4] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    mov r10, r0
    mov r0, #0
    strh r0, [r1]
    mov r0, #0xc
    mov r2, r8
    and r0, r2
    cmp r0, #0
    beq loc_814AA2C
    mov r3, #0
    ldr r1, [pc, #0x814a9ac-0x814a97a-2] // =dword_2010CB0
    lsl r0, r7, #2
    add r0, r0, r1
    mov r9, r0
loc_814A982:
    mov r4, #0
    cmp r3, #0
    bne loc_814A9B4
    mov r0, #4
    mov r1, r8
    and r0, r1
    cmp r0, #0
    beq loc_814A9D4
    mov r2, r9
    ldr r4, [r2]
    ldr r0, [pc, #0x814a9b0-0x814a996-2] // =dword_2010CC0
    ldr r2, [r0]
    add r0, r4, #0
    add r0, #0x2c 
    ldrb r1, [r0]
    ldrb r0, [r2,#4]
    bic r0, r1
    strb r0, [r2,#4]
    b loc_814A9D4
off_814A9A8:    .word InterruptMasterEnableRegister
off_814A9AC:    .word dword_2010CB0
off_814A9B0:    .word dword_2010CC0
loc_814A9B4:
    mov r0, #8
    mov r1, r8
    and r0, r1
    cmp r0, #0
    beq loc_814A9D4
    mov r2, r9
    ldr r0, [r2]
    add r4, r0, #0
    add r4, #0x34 
    ldr r0, [pc, #0x814aa68-0x814a9c6-2] // =dword_2010CC0
    ldr r2, [r0]
    mov r1, #1
    lsl r1, r7
    ldrb r0, [r2,#5]
    bic r0, r1
    strb r0, [r2,#5]
loc_814A9D4:
    add r6, r3, #1
    cmp r4, #0
    beq loc_814AA24
    ldrh r0, [r4]
    mov r2, #0x80
    lsl r2, r2, #8
    add r1, r2, #0
    and r0, r1
    cmp r0, #0
    beq loc_814AA14
    lsl r1, r3, #0x18
    lsr r1, r1, #0x18
    add r0, r7, #0
    add r2, r4, #0
    bl sub_814A8C8
    mov r1, #0
    add r2, r4, #0
    add r2, #0x2c 
    mov r5, #1
    mov r3, #0
loc_814A9FE:
    ldrb r0, [r2]
    asr r0, r1
    and r0, r5
    cmp r0, #0
    beq loc_814AA0A
    strh r3, [r4,#2]
loc_814AA0A:
    add r0, r1, #1
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #3
    bls loc_814A9FE
loc_814AA14:
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    mov r0, sp
    add r1, r4, #0
    ldr r2, [pc, #0x814aa6c-0x814aa1e-2] // =0x100001A
    bl SWI_CpuSet
loc_814AA24:
    lsl r0, r6, #0x10
    lsr r3, r0, #0x10
    cmp r3, #1
    bls loc_814A982
loc_814AA2C:
    mov r0, #1
    mov r4, r8
    and r0, r4
    cmp r0, #0
    beq loc_814AAA2
    ldr r1, [pc, #0x814aa70-0x814aa36-2] // =dword_2010CA0
    lsl r0, r7, #2
    add r0, r0, r1
    ldr r3, [r0]
    ldrh r1, [r3]
    mov r0, #0x80
    lsl r0, r0, #8
    and r0, r1
    cmp r0, #0
    beq loc_814AA94
    ldr r0, [pc, #0x814aa74-0x814aa4a-2] // =dword_2010CC4
    ldr r0, [r0]
    ldrb r1, [r0]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    bne loc_814AA78
    ldr r2, [pc, #0x814aa68-0x814aa58-4] // =dword_2010CC0
    ldr r1, [r2]
    ldrb r0, [r1,#0xf]
    add r0, #3
    ldrb r4, [r3,#4]
    add r0, r0, r4
    strb r0, [r1,#0xf]
    b loc_814AA8A
off_814AA68:    .word dword_2010CC0
dword_814AA6C:    .word 0x100001A
off_814AA70:    .word dword_2010CA0
off_814AA74:    .word dword_2010CC4
loc_814AA78:
    ldr r2, [pc, #0x814aadc-0x814aa78-4] // =dword_2010CC0
    ldr r1, [r2]
    add r1, #0x10
    add r1, r1, r7
    ldrb r0, [r1]
    add r0, #2
    ldrb r4, [r3,#4]
    add r0, r0, r4
    strb r0, [r1]
loc_814AA8A:
    ldr r2, [r2]
    ldrb r1, [r3,#3]
    ldrb r0, [r2,#6]
    bic r0, r1
    strb r0, [r2,#6]
loc_814AA94:
    mov r0, sp
    mov r1, #0
    strh r1, [r0]
    ldr r2, [pc, #0x814aae0-0x814aa9a-2] // =0x1000006
    add r1, r3, #0
    bl SWI_CpuSet
loc_814AAA2:
    mov r0, #2
    mov r1, r8
    and r0, r1
    cmp r0, #0
    beq loc_814AAC4
    mov r1, sp
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x814aae4-0x814aab2-2] // =dword_2010CA0
    lsl r0, r7, #2
    add r0, r0, r1
    ldr r1, [r0]
    add r1, #0xc
    ldr r2, [pc, #0x814aae8-0x814aabc-4] // =0x1000004
    mov r0, sp
    bl SWI_CpuSet
loc_814AAC4:
    ldr r0, [pc, #0x814aaec-0x814aac4-4] // =InterruptMasterEnableRegister
    mov r2, r10
    strh r2, [r0]
    mov r0, #0
loc_814AACC:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
off_814AADC:    .word dword_2010CC0
dword_814AAE0:    .word 0x1000006
off_814AAE4:    .word dword_2010CA0
dword_814AAE8:    .word 0x1000004
off_814AAEC:    .word InterruptMasterEnableRegister
// end of function sub_814A934

.thumb
sub_814AAF0:
    push {r4-r6,lr}
    add r5, r2, #0
    add r6, r3, #0
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    add r2, r3, #0
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    add r4, r1, #0
    cmp r1, #3
    bls loc_814AB0C
    mov r0, #0x80
    lsl r0, r0, #3
    b loc_814AB44
loc_814AB0C:
    mov r0, #0x20 
    and r0, r3
    cmp r0, #0
    beq loc_814AB28
    ldr r0, [pc, #0x814ab24-0x814ab14-4] // =dword_2010CB0
    lsl r1, r1, #2
    add r1, r1, r0
    ldr r0, [r1]
    str r5, [r0,#0x68]
    str r6, [r0,#0x6c]
    b loc_814AB42
    .balign 4, 0x00
off_814AB24:    .word dword_2010CB0
loc_814AB28:
    mov r0, #0x10
    and r2, r0
    cmp r2, #0
    bne loc_814AB36
    mov r0, #0xc0
    lsl r0, r0, #3
    b loc_814AB44
loc_814AB36:
    ldr r0, [pc, #0x814ab4c-0x814ab36-2] // =dword_2010CA0
    lsl r1, r4, #2
    add r1, r1, r0
    ldr r0, [r1]
    str r5, [r0,#0x14]
    str r6, [r0,#0x18]
loc_814AB42:
    mov r0, #0
loc_814AB44:
    pop {r4-r6}
    pop {r1}
    bx r1
    .balign 4, 0x00
off_814AB4C:    .word dword_2010CA0
// end of function sub_814AAF0

.thumb
sub_814AB50:
    push {r4-r6,lr}
    sub sp, sp, #4
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    lsl r4, r4, #0x18
    lsr r4, r4, #0x18
    lsl r5, r5, #0x18
    lsr r5, r5, #0x18
    str r3, [sp]
    mov r0, #0x20 
    add r1, r4, #0
    add r2, r5, #0
    add r3, r6, #0
    bl sub_814ABEC
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add sp, sp, #4
    pop {r4-r6}
    pop {r1}
    bx r1
// end of function sub_814AB50

.thumb
sub_814AB7C:
    push {lr}
    sub sp, sp, #4
    add r3, r1, #0
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    ldr r0, [pc, #0x814ab98-0x814ab8a-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_814AB9C
    add r0, r2, #3
    b loc_814AB9E
off_814AB98:    .word dword_2010CC0
loc_814AB9C:
    add r0, r2, #2
loc_814AB9E:
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    mov r0, #0
    str r0, [sp]
    mov r0, #0x10
    bl sub_814ABEC
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add sp, sp, #4
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_814AB7C

.thumb
sub_814ABB8:
    push {lr}
    sub sp, sp, #4
    add r2, r1, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r1, #0x80
    lsl r1, r1, #0x11
    lsl r1, r0
    lsr r1, r1, #0x18
    ldr r0, [pc, #0x814abe8-0x814abce-2] // =dword_2010CC0
    ldr r3, [r0]
    add r3, #0x98
    mov r0, #0x1a
    str r0, [sp]
    mov r0, #0x40 
    bl sub_814ABEC
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add sp, sp, #4
    pop {r1}
    bx r1
off_814ABE8:    .word dword_2010CC0
// end of function sub_814ABB8

.thumb
sub_814ABEC:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #8
    str r3, [sp]
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    lsl r1, r1, #0x18
    lsr r3, r1, #0x18
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r8, r2
    ldr r0, [pc, #0x814ac18-0x814ac08-4] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r1, [r2]
    mov r10, r0
    cmp r1, #0xff
    bne loc_814AC20
    ldr r0, [pc, #0x814ac1c-0x814ac14-4] // =0x301
    b loc_814ADD6
off_814AC18:    .word dword_2010CC0
off_814AC1C:    .word 0x301
loc_814AC20:
    mov r0, #0xf
    and r0, r3
    cmp r0, #0
    bne loc_814AC2E
    mov r0, #0x80
    lsl r0, r0, #3
    b loc_814ADD6
loc_814AC2E:
    ldrb r0, [r2,#2]
    ldrb r1, [r2,#3]
    orr r0, r1
    and r0, r3
    cmp r0, r3
    beq loc_814AC44
    ldr r0, [pc, #0x814ac40-0x814ac3a-2] // =0x401
    b loc_814ADD6
    .byte 0, 0
off_814AC40:    .word 0x401
loc_814AC44:
    mov r0, #0x10
    and r0, r6
    cmp r0, #0
    beq loc_814AC50
    ldrb r0, [r2,#6]
    b loc_814AC52
loc_814AC50:
    ldrb r0, [r2,#4]
loc_814AC52:
    and r0, r3
    cmp r0, #0
    beq loc_814AC60
    ldr r0, [pc, #0x814ac5c-0x814ac58-4] // =0x401
    b loc_814ADD6
dword_814AC5C:    .word 0x402
loc_814AC60:
    mov r2, #0
    mov r0, #1
    and r0, r3
    ldr r4, [pc, #0x814ac90-0x814ac66-2] // =dword_81C03AC
    cmp r0, #0
    bne loc_814AC82
    mov r1, #1
loc_814AC6E:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bhi loc_814AC82
    add r0, r3, #0
    asr r0, r2
    and r0, r1
    cmp r0, #0
    beq loc_814AC6E
loc_814AC82:
    mov r0, r10
    ldr r1, [r0]
    ldrb r0, [r1]
    cmp r0, #1
    bne loc_814AC94
    add r1, #0xf
    b loc_814AC9E
off_814AC90:    .word dword_81C03AC
loc_814AC94:
    cmp r0, #0
    bne loc_814ACA0
    add r0, r2, #0
    add r0, #0x10
    add r1, r1, r0
loc_814AC9E:
    mov r9, r1
loc_814ACA0:
    mov r1, r10
    ldr r0, [r1]
    ldrb r0, [r0]
    lsl r0, r0, #4
    add r0, r0, r4
    ldrb r4, [r0]
    mov r0, r9
    ldrb r0, [r0]
    cmp r8, r0
    bhi loc_814ACB8
    cmp r8, r4
    bhi loc_814ACBE
loc_814ACB8:
    mov r0, #0xa0
    lsl r0, r0, #3
    b loc_814ADD6
loc_814ACBE:
    ldr r1, [pc, #0x814ad0c-0x814acbe-2] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    str r0, [sp,#4]
    mov r7, #0
    strh r7, [r1]
    mov r0, #0x20 
    and r0, r6
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #0
    bne loc_814ACD8
    cmp r6, #0x40 
    bne loc_814AD94
loc_814ACD8:
    ldr r1, [pc, #0x814ad10-0x814acd8-4] // =dword_2010CB0
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r0, [r0]
    mov r12, r0
    mov r1, #0
    strh r1, [r0,#0x18]
    mov r1, r12
    add r1, #0x2d 
    mov r2, r12
    str r1, [r2,#4]
    mov r0, #7
    str r0, [r2,#0x14]
    mov r0, r12
    add r0, #0x2c 
    strb r3, [r0]
    strb r3, [r2,#0x1a]
    mov r2, r8
    sub r0, r2, r4
    mov r2, r12
    strh r0, [r2,#0x2e]
    cmp r5, #0
    beq loc_814AD14
    strb r7, [r1]
    b loc_814AD18
    .balign 4, 0x00
off_814AD0C:    .word InterruptMasterEnableRegister
off_814AD10:    .word dword_2010CB0
loc_814AD14:
    mov r0, #1
    strb r0, [r1]
loc_814AD18:
    ldr r0, [sp,#0x28]
    mov r1, r12
    str r0, [r1,#0x30]
    ldr r2, [sp]
    str r2, [r1,#0x28]
    mov r1, #0
    mov r0, r12
    strb r1, [r0,#0x1f]
    add r0, #0x20 
    strb r1, [r0]
    mov r4, r12
    add r4, #0x1b
    mov r6, #0
    mov r2, r12
    add r2, #0x21 
    mov r5, #1
loc_814AD38:
    add r0, r4, r1
    strb r6, [r0]
    add r0, r2, r1
    strb r5, [r0]
    add r0, r1, #1
    lsl r0, r0, #0x18
    lsr r1, r0, #0x18
    cmp r1, #3
    bls loc_814AD38
    mov r2, #0
    mov r5, #1
    ldr r4, [pc, #0x814ad8c-0x814ad4e-2] // =dword_2010CB0
    mov r1, #0
loc_814AD52:
    add r0, r3, #0
    asr r0, r2
    and r0, r5
    cmp r0, #0
    beq loc_814AD64
    lsl r0, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    strh r1, [r0,#2]
loc_814AD64:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_814AD52
    mov r1, r10
    ldr r2, [r1]
    ldrb r1, [r2,#4]
    add r0, r3, #0
    orr r0, r1
    strb r0, [r2,#4]
    mov r2, r9
    ldrb r0, [r2]
    mov r1, r8
    sub r0, r0, r1
    strb r0, [r2]
    ldr r0, [pc, #0x814ad90-0x814ad84-4] // =0x8021
    mov r2, r12
    strh r0, [r2]
    b loc_814ADCC
off_814AD8C:    .word dword_2010CB0
dword_814AD90:    .word 0x8021
loc_814AD94:
    mov r0, #0x10
    and r0, r6
    cmp r0, #0
    beq loc_814ADCC
    ldr r1, [pc, #0x814ade8-0x814ad9c-4] // =dword_2010CA0
    lsl r0, r2, #2
    add r0, r0, r1
    ldr r1, [r0]
    strb r3, [r1,#3]
    ldr r0, [sp]
    str r0, [r1,#8]
    mov r2, r8
    sub r0, r2, r4
    strh r0, [r1,#4]
    mov r2, r9
    ldrb r0, [r2]
    mov r2, r8
    sub r0, r0, r2
    mov r2, r9
    strb r0, [r2]
    ldr r0, [pc, #0x814adec-0x814adbc-4] // =0x8024
    strh r0, [r1]
    mov r0, r10
    ldr r2, [r0]
    ldrb r1, [r2,#6]
    add r0, r3, #0
    orr r0, r1
    strb r0, [r2,#6]
loc_814ADCC:
    ldr r0, [pc, #0x814adf0-0x814adcc-4] // =InterruptMasterEnableRegister
    mov r1, sp
    ldrh r1, [r1,#4]
    strh r1, [r0]
    mov r0, #0
loc_814ADD6:
    add sp, sp, #8
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
off_814ADE8:    .word dword_2010CA0
dword_814ADEC:    .word 0x8024
off_814ADF0:    .word InterruptMasterEnableRegister
// end of function sub_814ABEC

.thumb
sub_814ADF4:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r3, r0, #0
    lsl r1, r1, #0x18
    lsr r7, r1, #0x18
    lsl r2, r2, #0x18
    lsr r6, r2, #0x18
    cmp r7, #3
    bls loc_814AE18
    mov r0, #0x80
    lsl r0, r0, #3
    b loc_814AF4C
loc_814AE18:
    cmp r0, #0x20 
    bne loc_814AEB8
    ldr r0, [pc, #0x814aea8-0x814ae1c-4] // =dword_2010CB0
    mov r12, r0
    lsl r0, r7, #2
    add r0, r12
    ldr r5, [r0]
    ldrh r2, [r5]
    ldr r1, [pc, #0x814aeac-0x814ae28-4] // =0x8020
    add r0, r1, #0
    and r0, r2
    cmp r0, r1
    bne loc_814AECE
    ldrb r0, [r5,#0x1a]
    add r3, r6, #0
    eor r3, r0
    add r2, r3, #0
    and r2, r6
    cmp r2, #0
    bne loc_814AF06
    cmp r3, #0
    bne loc_814AE46
    b loc_814AF4A
loc_814AE46:
    ldr r1, [pc, #0x814aeb0-0x814ae46-2] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    mov r8, r0
    strh r2, [r1]
    mov r2, #0
    mvn r1, r3
    str r1, [sp]
    lsl r4, r6, #0x18
    mov r10, r4
    mov r0, #1
    mov r9, r0
    mov r1, #0
loc_814AE5E:
    add r0, r3, #0
    asr r0, r2
    mov r4, r9
    and r0, r4
    cmp r0, #0
    beq loc_814AE72
    lsl r0, r2, #2
    add r0, r12
    ldr r0, [r0]
    strh r1, [r0,#2]
loc_814AE72:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_814AE5E
    ldr r0, [pc, #0x814aeb4-0x814ae7c-4] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r0, [r1,#4]
    ldr r2, [sp]
    and r2, r0
    strb r2, [r1,#4]
    strb r6, [r5,#0x1a]
    mov r0, r10
    cmp r0, #0
    bne loc_814AE9E
    add r0, r7, #0
    mov r1, #0
    add r2, r5, #0
    bl sub_814A8C8
    mov r0, #0x27 
    strh r0, [r5]
loc_814AE9E:
    ldr r0, [pc, #0x814aeb0-0x814ae9e-2] // =InterruptMasterEnableRegister
    mov r1, r8
    strh r1, [r0]
    b loc_814AF4A
    .balign 4, 0x00
off_814AEA8:    .word dword_2010CB0
dword_814AEAC:    .word 0x8020
off_814AEB0:    .word InterruptMasterEnableRegister
off_814AEB4:    .word dword_2010CC0
loc_814AEB8:
    cmp r3, #0x10
    bne loc_814AF44
    ldr r3, [pc, #0x814aed4-0x814aebc-4] // =dword_2010CA0
    lsl r1, r7, #2
    add r0, r1, r3
    ldr r0, [r0]
    ldrh r2, [r0]
    ldr r0, [pc, #0x814aed8-0x814aec6-2] // =0x8024
    add r5, r3, #0
    cmp r2, r0
    beq loc_814AEE0
loc_814AECE:
    ldr r0, [pc, #0x814aedc-0x814aece-2] // =0x401
    b loc_814AF4C
    .balign 4, 0x00
off_814AED4:    .word dword_2010CA0
dword_814AED8:    .word 0x8024
dword_814AEDC:    .word 0x403
loc_814AEE0:
    mov r3, #0
    mov r2, #0
    add r4, r5, #0
loc_814AEE6:
    cmp r2, r7
    beq loc_814AEF4
    lsl r0, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    ldrb r0, [r0,#3]
    orr r3, r0
loc_814AEF4:
    add r0, r2, #1
    lsl r0, r0, #0x18
    lsr r2, r0, #0x18
    cmp r2, #3
    bls loc_814AEE6
    add r2, r6, #0
    and r2, r3
    cmp r2, #0
    beq loc_814AF10
loc_814AF06:
    ldr r0, [pc, #0x814af0c-0x814af06-2] // =0x404
    b loc_814AF4C
    .balign 4, 0x00
off_814AF0C:    .word 0x404
loc_814AF10:
    ldr r3, [pc, #0x814af3c-0x814af10-4] // =InterruptMasterEnableRegister
    ldrh r0, [r3]
    mov r8, r0
    strh r2, [r3]
    ldr r4, [pc, #0x814af40-0x814af18-4] // =dword_2010CC0
    ldr r2, [r4]
    add r5, r1, r5
    ldr r0, [r5]
    ldrb r1, [r0,#3]
    ldrb r0, [r2,#6]
    bic r0, r1
    strb r0, [r2,#6]
    ldr r2, [r4]
    ldrb r1, [r2,#6]
    add r0, r6, #0
    orr r0, r1
    strb r0, [r2,#6]
    ldr r0, [r5]
    strb r6, [r0,#3]
    mov r2, r8
    strh r2, [r3]
    b loc_814AF4A
off_814AF3C:    .word InterruptMasterEnableRegister
off_814AF40:    .word dword_2010CC0
loc_814AF44:
    mov r0, #0xc0
    lsl r0, r0, #3
    b loc_814AF4C
loc_814AF4A:
    mov r0, #0
loc_814AF4C:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
// end of function sub_814ADF4

.thumb
sub_814AF5C:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_814AF6C
    mov r0, #0x80
    lsl r0, r0, #3
    b loc_814AFC6
loc_814AF6C:
    ldr r1, [pc, #0x814af98-0x814af6c-4] // =dword_2010CB0
    lsl r0, r3, #2
    add r0, r0, r1
    ldr r2, [r0]
    add r5, r2, #0
    add r5, #0x34 
    ldr r1, [pc, #0x814af9c-0x814af78-4] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    add r4, r0, #0
    mov r0, #0
    strh r0, [r1]
    ldrh r1, [r2,#0x34]
    mov r0, #0x80
    lsl r0, r0, #8
    and r0, r1
    cmp r0, #0
    beq loc_814AFC0
    ldr r0, [pc, #0x814afa0-0x814af8e-2] // =0x8043
    cmp r1, r0
    bne loc_814AFA4
    mov r0, #0x48 
    b loc_814AFA6
off_814AF98:    .word dword_2010CB0
off_814AF9C:    .word InterruptMasterEnableRegister
dword_814AFA0:    .word 0x8043
loc_814AFA4:
    mov r0, #0x47 
loc_814AFA6:
    strh r0, [r2,#0x34]
    ldr r0, [pc, #0x814afcc-0x814afa8-4] // =dword_2010CC0
    ldr r2, [r0]
    mov r1, #1
    lsl r1, r3
    ldrb r0, [r2,#5]
    bic r0, r1
    strb r0, [r2,#5]
    add r0, r3, #0
    mov r1, #1
    add r2, r5, #0
    bl sub_814A8C8
loc_814AFC0:
    ldr r0, [pc, #0x814afd0-0x814afc0-4] // =InterruptMasterEnableRegister
    strh r4, [r0]
    mov r0, #0
loc_814AFC6:
    pop {r4,r5}
    pop {r1}
    bx r1
off_814AFCC:    .word dword_2010CC0
off_814AFD0:    .word InterruptMasterEnableRegister
// end of function sub_814AF5C

.thumb
sub_814AFD4:
    push {r4-r7,lr}
    add r7, r1, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r3, r0, #0
    lsl r2, r2, #0x18
    lsr r5, r2, #0x18
    cmp r0, #3
    bls loc_814AFEC
    mov r0, #0x80
    lsl r0, r0, #3
    b loc_814B060
loc_814AFEC:
    ldr r1, [pc, #0x814b000-0x814afec-4] // =dword_2010CA0
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r4, [r0]
    ldrh r1, [r4]
    ldr r0, [pc, #0x814b004-0x814aff6-2] // =0x8024
    cmp r1, r0
    beq loc_814B00C
    ldr r0, [pc, #0x814b008-0x814affc-4] // =0x401
    b loc_814B060
off_814B000:    .word dword_2010CA0
dword_814B004:    .word 0x8024
dword_814B008:    .word 0x403
loc_814B00C:
    ldr r0, [pc, #0x814b020-0x814b00c-4] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r0, [r1]
    cmp r0, #1
    bne loc_814B024
    add r6, r1, #0
    add r6, #0xf
    ldrb r0, [r4,#4]
    ldrb r1, [r1,#0xf]
    b loc_814B032
off_814B020:    .word dword_2010CC0
loc_814B024:
    add r0, r3, #0
    add r0, #0x10
    add r6, r1, r0
    add r1, #0x10
    add r1, r1, r3
    ldrb r0, [r4,#4]
    ldrb r1, [r1]
loc_814B032:
    add r0, r0, r1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, r5
    bcc loc_814B05C
    ldr r2, [pc, #0x814b058-0x814b03c-4] // =InterruptMasterEnableRegister
    ldrh r1, [r2]
    mov r0, #0
    strh r0, [r2]
    str r7, [r4,#8]
    sub r0, r3, r5
    strb r0, [r6]
    strh r5, [r4,#4]
    mov r0, #1
    strb r0, [r4,#2]
    strh r1, [r2]
    mov r0, #0
    b loc_814B060
    .balign 4, 0x00
off_814B058:    .word InterruptMasterEnableRegister
loc_814B05C:
    mov r0, #0xa0
    lsl r0, r0, #3
loc_814B060:
    pop {r4-r7}
    pop {r1}
    bx r1
    .balign 4, 0x00
// end of function sub_814AFD4

.thumb
sub_814B068:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #3
    bhi loc_814B086
    ldr r1, [pc, #0x814b08c-0x814b072-2] // =dword_2010CA0
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r2, [r0]
    ldrh r1, [r2]
    ldr r0, [pc, #0x814b090-0x814b07c-4] // =0x8024
    cmp r1, r0
    bne loc_814B086
    mov r0, #1
    strb r0, [r2,#2]
loc_814B086:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814B08C:    .word dword_2010CA0
dword_814B090:    .word 0x8024
// end of function sub_814B068

.thumb
sub_814B094:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #3
    bhi loc_814B0AA
    ldr r1, [pc, #0x814b0b0-0x814b09e-2] // =dword_2010CA0
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r1, [r0]
    mov r0, #0
    strb r0, [r1,#0x12]
loc_814B0AA:
    pop {r0}
    bx r0
    .byte 0, 0
off_814B0B0:    .word dword_2010CA0
// end of function sub_814B094

.thumb
sub_814B0B4:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    ldr r0, [pc, #0x814b100-0x814b0ba-2] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r1, [r2]
    add r4, r0, #0
    cmp r1, #0xff
    bne loc_814B0C8
    b loc_814B1EE
loc_814B0C8:
    cmp r1, #1
    bne loc_814B158
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    add r3, r0, #0
    orr r3, r1
    ldrb r0, [r2,#6]
    orr r3, r0
    cmp r3, #0
    bne loc_814B158
    ldr r0, [pc, #0x814b104-0x814b0dc-4] // =dword_2010CC4
    ldr r2, [r0]
    ldrb r1, [r2,#3]
    add r4, r0, #0
    cmp r1, #0
    beq loc_814B0F0
    mov r0, #0x10
    strb r0, [r2,#8]
    ldr r0, [r4]
    strb r3, [r0,#7]
loc_814B0F0:
    ldr r1, [r4]
    ldrb r0, [r1,#8]
    cmp r0, #0
    beq loc_814B108
    sub r0, #1
    strb r0, [r1,#8]
    b loc_814B10E
    .byte 0, 0
off_814B100:    .word dword_2010CC0
off_814B104:    .word dword_2010CC4
loc_814B108:
    ldrb r0, [r1,#7]
    add r0, #1
    strb r0, [r1,#7]
loc_814B10E:
    ldr r1, [r4]
    ldrb r0, [r1,#8]
    cmp r0, #0
    bne loc_814B120
    ldrb r1, [r1,#7]
    mov r0, #0xf
    and r0, r1
    cmp r0, #0
    bne loc_814B1B2
loc_814B120:
    ldr r4, [pc, #0x814b144-0x814b120-4] // =dword_2010CC8
    ldr r1, [r4]
    mov r0, #1
    str r0, [r1,#0x68]
    mov r0, #0xff
    str r0, [r1,#0x78]
    ldr r0, [pc, #0x814b148-0x814b12c-4] // =sub_814B2A0+1
    bl sub_814C360
    cmp r5, #0
    bne loc_814B14C
    ldr r0, [r4]
    add r0, #0x68 
    mov r1, #1
    bl sub_814C66C
    b loc_814B1EE
    .balign 4, 0x00
off_814B144:    .word dword_2010CC8
off_814B148:    .word sub_814B2A0+1
loc_814B14C:
    ldr r0, [r4]
    add r0, #0x68 
    mov r1, #1
    bl sub_814C6B4
    b loc_814B1EE
loc_814B158:
    ldr r0, [r4]
    ldrb r0, [r0,#0xe]
    cmp r0, #0
    bne loc_814B164
    bl sub_814B2C8
loc_814B164:
    ldr r0, [r4]
    ldrb r0, [r0,#0xe]
    cmp r0, #0
    beq loc_814B1B2
    ldr r0, [pc, #0x814b190-0x814b16c-4] // =sub_814B1F8+1
    bl sub_814C360
    cmp r5, #0
    beq loc_814B19C
    ldr r0, [pc, #0x814b194-0x814b176-2] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0x68 
    ldr r1, [pc, #0x814b198-0x814b17c-4] // =dword_2010CC4
    ldr r1, [r1]
    ldr r1, [r1,#0x24]
    add r1, #4
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    bl sub_814C6B4
    b loc_814B1EE
    .byte 0, 0
off_814B190:    .word sub_814B1F8+1
off_814B194:    .word dword_2010CC8
off_814B198:    .word dword_2010CC4
loc_814B19C:
    ldr r0, [pc, #0x814b1d4-0x814b19c-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0x68 
    ldr r1, [pc, #0x814b1d8-0x814b1a2-2] // =dword_2010CC4
    ldr r1, [r1]
    ldr r1, [r1,#0x24]
    add r1, #4
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    bl sub_814C66C
loc_814B1B2:
    cmp r5, #0
    beq loc_814B1EE
    ldr r0, [pc, #0x814b1dc-0x814b1b6-2] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_814B1E4
    ldr r0, [pc, #0x814b1e0-0x814b1c0-4] // =dword_2010CCC
    ldr r0, [r0]
    ldr r1, [r0,#0x1c]
    cmp r1, #0
    beq loc_814B1EE
    mov r0, #0x27 
    bl sub_814DA64
    b loc_814B1EE
    .balign 4, 0x00
off_814B1D4:    .word dword_2010CC8
off_814B1D8:    .word dword_2010CC4
off_814B1DC:    .word dword_2010CC0
off_814B1E0:    .word dword_2010CCC
loc_814B1E4:
    ldr r0, [pc, #0x814b1f4-0x814b1e4-4] // =sub_814B290+1
    bl sub_814C360
    bl sub_814C720
loc_814B1EE:
    pop {r4,r5}
    pop {r0}
    bx r0
off_814B1F4:    .word sub_814B290+1
// end of function sub_814B0B4

.thumb
sub_814B1F8:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    cmp r7, #0
    bne loc_814B262
    mov r6, #0
    ldr r0, [pc, #0x814b280-0x814b208-4] // =0x8020
    mov r8, r0
loc_814B20C:
    ldr r0, [pc, #0x814b284-0x814b20c-4] // =dword_2010CA0
    lsl r2, r6, #2
    add r0, r2, r0
    ldr r1, [r0]
    ldrb r0, [r1,#2]
    cmp r0, #0
    beq loc_814B21E
    mov r0, #0
    strb r0, [r1,#2]
loc_814B21E:
    ldr r0, [pc, #0x814b288-0x814b21e-2] // =dword_2010CB0
    add r0, r2, r0
    ldr r4, [r0]
    ldrh r0, [r4]
    cmp r0, r8
    bne loc_814B258
    add r0, r6, #0
    mov r1, #0
    add r2, r4, #0
    bl sub_814A8C8
    ldr r5, [pc, #0x814b28c-0x814b234-4] // =dword_2010CC0
    ldr r2, [r5]
    ldrb r1, [r4,#0x1a]
    ldrb r0, [r2,#4]
    bic r0, r1
    strb r0, [r2,#4]
    add r0, r4, #0
    add r0, #0x2d 
    ldrb r3, [r0]
    cmp r3, #1
    bne loc_814B254
    ldr r1, [r5]
    lsl r3, r6
    ldrb r0, [r1,#7]
    orr r3, r0
    strb r3, [r1,#7]
loc_814B254:
    mov r0, #0x26 
    strh r0, [r4]
loc_814B258:
    add r0, r6, #1
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_814B20C
loc_814B262:
    ldr r0, [pc, #0x814b28c-0x814b262-2] // =dword_2010CC0
    ldr r1, [r0]
    ldrb r0, [r1,#0xe]
    mov r0, #0
    strb r0, [r1,#0xe]
    mov r0, #0x24 
    add r1, r7, #0
    bl sub_81494B8
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
dword_814B280:    .word 0x8020
off_814B284:    .word dword_2010CA0
off_814B288:    .word dword_2010CB0
off_814B28C:    .word dword_2010CC0
// end of function sub_814B1F8

.thumb
sub_814B290:
    push {lr}
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r0, #0x24 
    bl sub_81494B8
    pop {r0}
    bx r0
// end of function sub_814B290

.thumb
sub_814B2A0:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    cmp r1, #0
    beq loc_814B2B6
    mov r0, #0x24 
    bl sub_81494B8
    b loc_814B2C2
loc_814B2B6:
    cmp r0, #0xff
    bne loc_814B2C2
    mov r0, #0xff
    mov r1, #0
    bl sub_81494B8
loc_814B2C2:
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814B2A0

.thumb
sub_814B2C8:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    ldr r0, [pc, #0x814b374-0x814b2d4-4] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r0, [r2]
    cmp r0, #0xff
    bne loc_814B2E0
    b loc_814B3E4
loc_814B2E0:
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    orr r0, r1
    ldrb r1, [r2,#6]
    orr r0, r1
    cmp r0, #0
    beq loc_814B3E4
    ldrb r0, [r2,#0xe]
    mov r0, #0
    strb r0, [r2,#0xe]
    mov r8, r0
    ldr r0, [pc, #0x814b378-0x814b2f6-2] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0x6c 
    str r0, [sp]
    mov r6, #0
    mov r0, #0x80
    lsl r0, r0, #8
    mov r9, r0
    ldr r1, [pc, #0x814b37c-0x814b306-2] // =0x8024
    mov r10, r1
loc_814B30A:
    mov r5, #0
    ldr r0, [pc, #0x814b380-0x814b30c-4] // =dword_2010CB0
    lsl r7, r6, #2
    add r4, r7, r0
    ldr r2, [r4]
    ldrh r1, [r2]
    mov r0, r9
    and r0, r1
    cmp r0, #0
    beq loc_814B32A
    add r0, r6, #0
    mov r1, sp
    bl sub_814B400
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
loc_814B32A:
    ldr r2, [r4]
    ldrh r1, [r2,#0x34]
    mov r0, r9
    and r0, r1
    cmp r0, #0
    beq loc_814B346
    add r2, #0x34 
    add r0, r6, #0
    mov r1, sp
    bl sub_814B400
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add r5, r5, r0
loc_814B346:
    ldr r0, [pc, #0x814b384-0x814b346-2] // =dword_2010CA0
    add r0, r7, r0
    ldr r0, [r0]
    ldrh r0, [r0]
    cmp r0, r10
    bne loc_814B360
    add r0, r6, #0
    mov r1, sp
    bl sub_814B5C0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add r5, r5, r0
loc_814B360:
    cmp r5, #0
    beq loc_814B394
    ldr r0, [pc, #0x814b374-0x814b364-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_814B388
    add r8, r5
    b loc_814B394
    .balign 4, 0x00
off_814B374:    .word dword_2010CC0
off_814B378:    .word dword_2010CC8
dword_814B37C:    .word 0x8024
off_814B380:    .word dword_2010CB0
off_814B384:    .word dword_2010CA0
loc_814B388:
    add r0, r7, r6
    add r0, #8
    lsl r5, r0
    mov r2, r8
    orr r2, r5
    mov r8, r2
loc_814B394:
    add r0, r6, #1
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_814B30A
    ldr r6, [pc, #0x814b3f4-0x814b39e-2] // =dword_2010CC4
    mov r0, r8
    cmp r0, #0
    beq loc_814B3DE
    ldr r2, [sp]
    mov r0, #3
    and r0, r2
    ldr r5, [pc, #0x814b3f8-0x814b3ac-4] // =dword_2010CC0
    ldr r1, [pc, #0x814b3fc-0x814b3ae-2] // =dword_2010CC8
    cmp r0, #0
    beq loc_814B3C6
    mov r4, #0
    mov r3, #3
loc_814B3B8:
    strb r4, [r2]
    add r0, r2, #1
    str r0, [sp]
    add r2, r0, #0
    and r0, r3
    cmp r0, #0
    bne loc_814B3B8
loc_814B3C6:
    ldr r0, [r1]
    mov r2, r8
    str r2, [r0,#0x68]
    ldr r0, [r5]
    ldrb r0, [r0]
    cmp r0, #0
    bne loc_814B3DE
    ldr r0, [sp]
    sub r0, #0x6c 
    ldr r1, [r1]
    sub r0, r0, r1
    mov r8, r0
loc_814B3DE:
    ldr r0, [r6]
    mov r1, r8
    str r1, [r0,#0x24]
loc_814B3E4:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
off_814B3F4:    .word dword_2010CC4
off_814B3F8:    .word dword_2010CC0
off_814B3FC:    .word dword_2010CC8
// end of function sub_814B2C8

.thumb
sub_814B400:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #8
    mov r12, r1
    add r4, r2, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r10, r0
    ldr r2, [pc, #0x814b47c-0x814b416-2] // =dword_2010CC0
    ldr r0, [r2]
    ldrb r0, [r0]
    lsl r0, r0, #4
    ldr r1, [pc, #0x814b480-0x814b41e-2] // =dword_81C03AC
    add r0, r0, r1
    mov r8, r0
    ldrh r1, [r4]
    ldr r0, [pc, #0x814b484-0x814b426-2] // =0x8022
    cmp r1, r0
    bne loc_814B46A
    add r3, r4, #0
    add r3, #0x20 
    ldrb r1, [r3]
    lsl r1, r1, #2
    add r5, r4, #4
    add r1, r5, r1
    ldr r2, [r4,#0x28]
    ldr r0, [r4,#0x30]
    add r2, r2, r0
    ldr r0, [r1]
    add r6, r3, #0
    cmp r0, r2
    bcc loc_814B46A
    mov r7, #0
loc_814B448:
    ldrb r0, [r3]
    add r0, #1
    strb r0, [r3]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #4
    bne loc_814B458
    strb r7, [r6]
loc_814B458:
    ldrb r1, [r3]
    lsl r1, r1, #2
    add r1, r5, r1
    ldr r2, [r4,#0x28]
    ldr r0, [r4,#0x30]
    add r2, r2, r0
    ldr r0, [r1]
    cmp r0, r2
    bcs loc_814B448
loc_814B46A:
    ldrh r1, [r4]
    mov r0, #0x40 
    and r0, r1
    mov r9, r1
    cmp r0, #0
    beq loc_814B488
    mov r5, #0
    b loc_814B4CC
    .balign 4, 0x00
off_814B47C:    .word dword_2010CC0
off_814B480:    .word dword_81C03AC
dword_814B484:    .word 0x8022
loc_814B488:
    ldr r0, [pc, #0x814b4b4-0x814b488-4] // =0x8022
    cmp r9, r0
    bne loc_814B4BC
    add r3, r4, #0
    add r3, #0x20 
    ldrb r0, [r3]
    lsl r0, r0, #2
    add r1, r4, #4
    add r1, r1, r0
    ldrh r7, [r4,#0x2e]
    ldr r5, [r1]
    add r2, r5, r7
    ldr r1, [r4,#0x28]
    ldr r0, [r4,#0x30]
    add r0, r1, r0
    add r6, r3, #0
    cmp r2, r0
    bls loc_814B4B8
    sub r0, r0, r5
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    b loc_814B4D0
dword_814B4B4:    .word 0x8022
loc_814B4B8:
    add r5, r7, #0
    b loc_814B4D0
loc_814B4BC:
    ldrh r2, [r4,#0x2e]
    ldr r0, [r4,#0x14]
    cmp r0, r2
    bcc loc_814B4C8
    add r5, r2, #0
    b loc_814B4CC
loc_814B4C8:
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
loc_814B4CC:
    add r6, r4, #0
    add r6, #0x20 
loc_814B4D0:
    mov r3, #0xf
    mov r0, r9
    and r3, r0
    mov r1, r8
    ldrb r1, [r1,#3]
    lsl r3, r1
    ldrb r0, [r4,#0x1f]
    mov r2, r8
    ldrb r2, [r2,#4]
    lsl r0, r2
    orr r3, r0
    ldrb r1, [r6]
    add r0, r1, #0
    mov r7, r8
    ldrb r7, [r7,#5]
    lsl r0, r7
    orr r3, r0
    add r0, r4, #0
    add r0, #0x21 
    add r0, r0, r1
    ldrb r0, [r0]
    mov r1, r8
    ldrb r1, [r1,#6]
    lsl r0, r1
    orr r3, r0
    orr r3, r5
    str r3, [sp]
    ldr r2, [pc, #0x814b58c-0x814b506-2] // =dword_2010CC0
    ldr r0, [r2]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_814B518
    ldrb r0, [r4,#0x1a]
    lsl r0, r0, #0x12
    orr r3, r0
    str r3, [sp]
loc_814B518:
    mov r2, sp
    mov r3, #0
    mov r7, r8
    ldrb r7, [r7]
    cmp r3, r7
    bcs loc_814B542
loc_814B524:
    mov r0, r12
    ldr r1, [r0]
    ldrb r0, [r2]
    strb r0, [r1]
    add r2, #1
    add r1, #1
    mov r7, r12
    str r1, [r7]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    mov r0, r8
    ldrb r0, [r0]
    cmp r3, r0
    bcc loc_814B524
loc_814B542:
    cmp r5, #0
    beq loc_814B562
    ldrb r1, [r6]
    lsl r1, r1, #2
    add r0, r4, #4
    add r0, r0, r1
    ldr r0, [r0]
    str r0, [sp,#4]
    ldr r0, [pc, #0x814b590-0x814b552-2] // =dword_2010CC8
    ldr r1, [r0]
    add r0, sp, #4
    ldr r3, [r1,#4]
    mov r1, r12
    add r2, r5, #0
    bl sub_814DA6C
loc_814B562:
    ldrh r1, [r4]
    ldr r0, [pc, #0x814b594-0x814b564-4] // =0x8022
    cmp r1, r0
    bne loc_814B57C
    ldrb r0, [r6]
    add r0, #1
    strb r0, [r6]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #4
    bne loc_814B57C
    mov r0, #0
    strb r0, [r6]
loc_814B57C:
    ldr r0, [pc, #0x814b58c-0x814b57c-4] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r1, [r2]
    cmp r1, #1
    bne loc_814B598
    ldrb r0, [r2,#0xe]
    strb r1, [r2,#0xe]
    b loc_814B5A6
off_814B58C:    .word dword_2010CC0
off_814B590:    .word dword_2010CC8
dword_814B594:    .word 0x8022
loc_814B598:
    mov r0, #1
    mov r1, r10
    lsl r0, r1
    ldrb r1, [r2,#0xe]
    orr r0, r1
    ldrb r1, [r2,#0xe]
    strb r0, [r2,#0xe]
loc_814B5A6:
    mov r2, r8
    ldrb r0, [r2]
    add r0, r5, r0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add sp, sp, #8
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
// end of function sub_814B400

.thumb
sub_814B5C0:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    sub sp, sp, #8
    add r6, r1, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r8, r0
    ldr r1, [pc, #0x814b5e8-0x814b5d0-4] // =dword_2010CA0
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r4, [r0]
    ldrb r0, [r4,#2]
    cmp r0, #0
    beq loc_814B5E4
    ldrb r0, [r4,#3]
    cmp r0, #0
    bne loc_814B5EC
loc_814B5E4:
    mov r0, #0
    b loc_814B688
off_814B5E8:    .word dword_2010CA0
loc_814B5EC:
    ldr r0, [pc, #0x814b664-0x814b5ec-4] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r0, [r2]
    lsl r0, r0, #4
    ldr r1, [pc, #0x814b668-0x814b5f4-4] // =dword_81C03AC
    add r5, r0, r1
    ldrh r0, [r4]
    mov r1, #0xf
    and r1, r0
    ldrb r0, [r5,#3]
    lsl r1, r0
    ldrh r0, [r4,#4]
    orr r1, r0
    str r1, [sp]
    ldrb r0, [r2]
    cmp r0, #1
    bne loc_814B616
    ldrb r0, [r4,#3]
    lsl r0, r0, #0x12
    orr r1, r0
    str r1, [sp]
loc_814B616:
    mov r2, sp
    mov r3, #0
    ldr r1, [pc, #0x814b66c-0x814b61a-2] // =dword_2010CC8
    mov r12, r1
    add r7, sp, #4
    ldrb r0, [r5]
    cmp r3, r0
    bcs loc_814B63E
loc_814B626:
    ldr r1, [r6]
    ldrb r0, [r2]
    strb r0, [r1]
    add r2, #1
    add r1, #1
    str r1, [r6]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    ldrb r1, [r5]
    cmp r3, r1
    bcc loc_814B626
loc_814B63E:
    ldr r0, [r4,#8]
    str r0, [sp,#4]
    mov r2, r12
    ldr r0, [r2]
    ldrh r2, [r4,#4]
    ldr r3, [r0,#4]
    add r0, r7, #0
    add r1, r6, #0
    bl sub_814DA6C
    ldr r0, [pc, #0x814b664-0x814b652-2] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r0, [r2]
    cmp r0, #1
    bne loc_814B670
    ldrb r0, [r2,#0xe]
    mov r0, #0x10
    b loc_814B67C
    .balign 4, 0x00
off_814B664:    .word dword_2010CC0
off_814B668:    .word dword_81C03AC
off_814B66C:    .word dword_2010CC8
loc_814B670:
    mov r0, #0x10
    mov r1, r8
    lsl r0, r1
    ldrb r1, [r2,#0xe]
    orr r0, r1
    ldrb r1, [r2,#0xe]
loc_814B67C:
    strb r0, [r2,#0xe]
    ldrh r0, [r4,#4]
    ldrb r5, [r5]
    add r0, r0, r5
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
loc_814B688:
    add sp, sp, #8
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
// end of function sub_814B5C0

.thumb
sub_814B694:
    push {r4,lr}
    ldr r0, [pc, #0x814b6c8-0x814b696-2] // =dword_2010CC0
    ldr r4, [r0]
    ldrb r0, [r4]
    cmp r0, #0xff
    beq loc_814B6C0
    ldr r2, [pc, #0x814b6cc-0x814b6a0-4] // =dword_2010CC4
    ldr r3, [r2]
    ldrb r0, [r4,#4]
    ldrb r1, [r4,#5]
    orr r0, r1
    ldrb r1, [r4,#6]
    orr r0, r1
    mov r1, #0
    strb r0, [r3,#3]
    ldr r0, [r2]
    strb r1, [r0,#4]
    ldr r0, [pc, #0x814b6d0-0x814b6b6-2] // =sub_814B6D4+1
    bl sub_814C360
    bl sub_814C6FC
loc_814B6C0:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814B6C8:    .word dword_2010CC0
off_814B6CC:    .word dword_2010CC4
off_814B6D0:    .word sub_814B6D4+1
// end of function sub_814B694

.thumb
sub_814B6D4:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    sub sp, sp, #4
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r9, r0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    cmp r7, #0
    bne loc_814B798
    ldr r0, [pc, #0x814b710-0x814b6ec-4] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r0, [r0]
    ldrb r0, [r0,#1]
    cmp r0, #0
    beq loc_814B798
    ldr r0, [pc, #0x814b714-0x814b6fa-2] // =dword_2010CC4
    ldr r0, [r0]
    strb r7, [r0,#1]
    ldr r0, [pc, #0x814b718-0x814b700-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_814B71C
    bl sub_814B7C0
    b loc_814B720
off_814B710:    .word dword_2010CC8
off_814B714:    .word dword_2010CC4
off_814B718:    .word dword_2010CC0
loc_814B71C:
    bl sub_814B858
loc_814B720:
    mov r6, #0
    ldr r0, [pc, #0x814b7b0-0x814b722-2] // =0x8043
    mov r8, r0
    ldr r3, [pc, #0x814b7b4-0x814b726-2] // =dword_2010CC0
loc_814B728:
    ldr r0, [pc, #0x814b7b8-0x814b728-4] // =dword_2010CB0
    lsl r1, r6, #2
    add r1, r1, r0
    ldr r4, [r1]
    ldrh r0, [r4,#0x34]
    cmp r0, r8
    bne loc_814B77A
    ldr r0, [pc, #0x814b7bc-0x814b736-2] // =dword_2010CC4
    ldr r0, [r0]
    ldrb r0, [r0,#1]
    asr r0, r6
    mov r1, #1
    and r0, r1
    cmp r0, #0
    bne loc_814B77A
    add r5, r4, #0
    add r5, #0x34 
    add r0, r4, #0
    add r0, #0x61 
    ldrb r2, [r0]
    cmp r2, #1
    bne loc_814B75E
    ldr r1, [r3]
    lsl r2, r6
    ldrb r0, [r1,#7]
    orr r2, r0
    strb r2, [r1,#7]
loc_814B75E:
    add r0, r6, #0
    mov r1, #1
    add r2, r5, #0
    str r3, [sp]
    bl sub_814A8C8
    ldr r3, [sp]
    ldr r2, [r3]
    ldrb r1, [r5,#0x1a]
    ldrb r0, [r2,#5]
    bic r0, r1
    strb r0, [r2,#5]
    mov r0, #0x46 
    strh r0, [r4,#0x34]
loc_814B77A:
    add r0, r6, #1
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    cmp r6, #3
    bls loc_814B728
    ldr r0, [pc, #0x814b7bc-0x814b784-4] // =dword_2010CC4
    ldr r1, [r0]
    ldrb r0, [r1,#4]
    cmp r0, #0
    beq loc_814B798
    add r7, r0, #0
    mov r1, #0xe0
    lsl r1, r1, #3
    add r0, r1, #0
    orr r7, r0
loc_814B798:
    mov r0, r9
    add r1, r7, #0
    bl sub_81494B8
    add sp, sp, #4
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
dword_814B7B0:    .word 0x8043
off_814B7B4:    .word dword_2010CC0
off_814B7B8:    .word dword_2010CB0
off_814B7BC:    .word dword_2010CC4
// end of function sub_814B6D4

.thumb
sub_814B7C0:
    push {r4-r7,lr}
    sub sp, sp, #4
    ldr r1, [pc, #0x814b850-0x814b7c4-4] // =dword_2010CC8
    ldr r0, [r1]
    add r0, #0xdc
    ldr r0, [r0]
    ldr r0, [r0,#4]
    lsr r3, r0, #8
    mov r5, #0
    mov r12, r1
    mov r7, #0x1f
    ldr r4, [pc, #0x814b854-0x814b7d6-2] // =dword_2010CC4
    mov r6, #1
loc_814B7DA:
    mov r0, sp
    add r1, r0, r5
    add r0, r3, #0
    and r0, r7
    strb r0, [r1]
    lsr r3, r3, #5
    cmp r0, #0
    bne loc_814B7F6
    ldr r0, [r4]
    add r1, r6, #0
    lsl r1, r5
    ldrb r2, [r0,#1]
    orr r1, r2
    strb r1, [r0,#1]
loc_814B7F6:
    add r0, r5, #1
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #3
    bls loc_814B7DA
    mov r1, r12
    ldr r0, [r1]
    add r0, #0xdc
    ldr r0, [r0]
    add r6, r0, #0
    add r6, #8
    mov r5, #0
loc_814B80E:
    mov r0, sp
    add r1, r0, r5
    ldrb r0, [r1]
    add r7, r5, #1
    cmp r0, #0
    beq loc_814B840
    add r4, r1, #0
loc_814B81C:
    ldrb r2, [r4]
    add r0, r5, #0
    add r1, r6, #0
    bl sub_814B8B0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r6, r6, r0
    ldrb r1, [r4]
    sub r1, r1, r0
    strb r1, [r4]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    bne loc_814B840
    lsl r0, r1, #0x18
    cmp r0, #0
    bne loc_814B81C
loc_814B840:
    lsl r0, r7, #0x18
    lsr r5, r0, #0x18
    cmp r5, #3
    bls loc_814B80E
    add sp, sp, #4
    pop {r4-r7}
    pop {r0}
    bx r0
off_814B850:    .word dword_2010CC8
off_814B854:    .word dword_2010CC4
// end of function sub_814B7C0

.thumb
sub_814B858:
    push {r4-r6,lr}
    ldr r0, [pc, #0x814b8a8-0x814b85a-2] // =dword_2010CC8
    ldr r0, [r0]
    add r0, #0xdc
    ldr r1, [r0]
    ldrh r0, [r1,#4]
    mov r4, #0x7f
    and r4, r0
    add r5, r1, #0
    add r5, #8
    cmp r4, #0
    bne loc_814B878
    ldr r0, [pc, #0x814b8ac-0x814b870-4] // =dword_2010CC4
    ldr r1, [r0]
    mov r0, #0xf
    strb r0, [r1,#1]
loc_814B878:
    mov r0, #0x80
    lsl r0, r0, #8
    add r6, r0, #0
loc_814B87E:
    cmp r4, #0
    beq loc_814B8A0
    mov r0, #0
    add r1, r5, #0
    add r2, r4, #0
    bl sub_814B8B0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add r5, r5, r0
    sub r0, r4, r0
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    add r0, r4, #0
    and r0, r6
    cmp r0, #0
    beq loc_814B87E
loc_814B8A0:
    pop {r4-r6}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814B8A8:    .word dword_2010CC8
off_814B8AC:    .word dword_2010CC4
// end of function sub_814B858

.thumb
sub_814B8B0:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #8
    add r7, r1, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r12, r0
    lsl r2, r2, #0x10
    lsr r3, r2, #0x10
    ldr r2, [pc, #0x814b8e4-0x814b8c8-4] // =dword_2010CC0
    ldr r0, [r2]
    ldrb r0, [r0]
    mvn r0, r0
    mov r1, #1
    and r0, r1
    lsl r0, r0, #4
    ldr r1, [pc, #0x814b8e8-0x814b8d6-2] // =dword_81C03AC
    add r6, r0, r1
    ldrb r0, [r6]
    cmp r3, r0
    bcs loc_814B8EC
    add r0, r3, #0
    b loc_814BADE
off_814B8E4:    .word dword_2010CC0
off_814B8E8:    .word dword_81C03AC
loc_814B8EC:
    mov r5, #0
    mov r4, #0
    ldrb r3, [r6,#1]
    ldrb r1, [r6,#7]
    mov r8, r1
    ldr r2, [sp]
    mov r9, r2
    cmp r4, r0
    bcs loc_814B914
    add r2, r0, #0
loc_814B900:
    ldrb r0, [r7]
    lsl r1, r4, #3
    lsl r0, r1
    orr r5, r0
    add r7, #1
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, r2
    bcc loc_814B900
loc_814B914:
    add r0, r5, #0
    lsr r0, r3
    mov r3, r8
    and r0, r3
    ldr r1, [pc, #0x814b9ec-0x814b91c-4] // =0xFFFFFF00
    mov r10, r1
    mov r3, r10
    mov r2, r9
    and r3, r2
    orr r3, r0
    str r3, [sp]
    add r0, r5, #0
    ldrb r1, [r6,#2]
    lsr r0, r1
    ldrb r1, [r6,#8]
    and r0, r1
    lsl r0, r0, #8
    ldr r4, [pc, #0x814b9f0-0x814b936-2] // =0xFFFF00FF
    add r2, r4, #0
    and r2, r3
    orr r2, r0
    str r2, [sp]
    add r0, r5, #0
    ldrb r3, [r6,#3]
    lsr r0, r3
    ldrb r1, [r6,#9]
    and r0, r1
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x814b9f4-0x814b94c-4] // =0xFF00FFFF
    and r3, r2
    orr r3, r0
    str r3, [sp]
    add r0, r5, #0
    ldrb r1, [r6,#4]
    lsr r0, r1
    ldrb r1, [r6,#0xa]
    and r0, r1
    lsl r0, r0, #0x18
    ldr r2, [pc, #0x814b9f8-0x814b960-4] // =0xFFFFFF
    mov r8, r2
    mov r1, r8
    and r1, r3
    orr r1, r0
    mov r8, r1
    str r1, [sp]
    add r1, r5, #0
    ldrb r2, [r6,#5]
    lsr r1, r2
    ldrb r0, [r6,#0xb]
    and r1, r0
    mov r9, sp
    ldr r2, [sp,#4]
    mov r3, r10
    and r2, r3
    orr r2, r1
    str r2, [sp,#4]
    add r0, r5, #0
    ldrb r1, [r6,#6]
    lsr r0, r1
    ldrb r1, [r6,#0xc]
    and r0, r1
    lsl r0, r0, #8
    and r4, r2
    orr r4, r0
    str r4, [sp,#4]
    ldrh r0, [r6,#0xe]
    and r5, r0
    lsl r1, r5, #0x10
    ldr r0, [pc, #0x814b9fc-0x814b99c-4] // =0xFFFF
    and r0, r4
    orr r0, r1
    str r0, [sp,#4]
    lsr r0, r0, #0x10
    ldrb r6, [r6]
    add r0, r0, r6
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    mov r10, r0
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    beq loc_814B9BA
    b loc_814BADC
loc_814B9BA:
    ldr r2, [pc, #0x814ba00-0x814b9ba-2] // =dword_2010CC0
    ldr r3, [r2]
    ldrb r2, [r3]
    cmp r2, #1
    bne loc_814BA78
    ldrb r0, [r3,#2]
    mov r5, r12
    asr r0, r5
    and r0, r2
    cmp r0, #0
    bne loc_814B9D2
    b loc_814BADC
loc_814B9D2:
    mov r1, r8
    lsr r0, r1, #0x10
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    cmp r0, #4
    bne loc_814BA04
    mov r0, r12
    mov r1, sp
    add r2, r7, #0
    bl sub_814BAF4
    b loc_814BADC
    .balign 4, 0x00
dword_814B9EC:    .word 0xFFFFFF00
dword_814B9F0:    .word 0xFFFF00FF
dword_814B9F4:    .word 0xFF00FFFF
dword_814B9F8:    .word 0xFFFFFF
dword_814B9FC:    .word 0xFFFF
off_814BA00:    .word dword_2010CC0
loc_814BA04:
    mov r5, r9
    ldrb r0, [r5,#3]
    cmp r0, #0
    bne loc_814BA18
    mov r0, r12
    mov r1, sp
    add r2, r7, #0
    bl sub_814BD94
    b loc_814BADC
loc_814BA18:
    mov r4, #0
    ldr r1, [pc, #0x814ba30-0x814ba1a-2] // =dword_2010CB0
    ldr r0, [r1]
    ldrb r0, [r0,#0x1a]
    mov r5, r12
    asr r0, r5
    and r0, r2
    cmp r0, #0
    beq loc_814BA34
    ldrb r0, [r3,#4]
    b loc_814BA5A
    .byte 0, 0
off_814BA30:    .word dword_2010CB0
loc_814BA34:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bhi loc_814BADC
    lsl r0, r4, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrb r0, [r0,#0x1a]
    mov r2, r12
    asr r0, r2
    mov r2, #1
    and r0, r2
    cmp r0, #0
    beq loc_814BA34
    ldr r3, [pc, #0x814ba74-0x814ba52-2] // =dword_2010CC0
    ldr r0, [r3]
    ldrb r0, [r0,#4]
    mov r5, r12
loc_814BA5A:
    asr r0, r5
    and r0, r2
    cmp r0, #0
    beq loc_814BA34
    cmp r4, #3
    bhi loc_814BADC
    add r0, r4, #0
    mov r1, r12
    mov r2, sp
    add r3, r7, #0
    bl sub_814BBA8
    b loc_814BADC
off_814BA74:    .word dword_2010CC0
loc_814BA78:
    ldrb r1, [r3,#2]
    mov r2, r9
    ldrb r0, [r2,#1]
    add r5, r1, #0
    and r5, r0
    cmp r5, #0
    beq loc_814BADC
    mov r4, #0
    mov r6, #1
loc_814BA8A:
    add r0, r5, #0
    asr r0, r4
    and r0, r6
    cmp r0, #0
    beq loc_814BAD2
    mov r1, sp
    ldrb r0, [r1,#2]
    cmp r0, #4
    bne loc_814BAA6
    add r0, r4, #0
    add r2, r7, #0
    bl sub_814BAF4
    b loc_814BAD2
loc_814BAA6:
    ldrb r0, [r1,#3]
    cmp r0, #0
    bne loc_814BAB8
    add r0, r4, #0
    mov r1, sp
    add r2, r7, #0
    bl sub_814BD94
    b loc_814BAD2
loc_814BAB8:
    ldr r0, [pc, #0x814baf0-0x814bab8-4] // =dword_2010CC0
    ldr r0, [r0]
    ldrb r0, [r0,#4]
    asr r0, r4
    and r0, r6
    cmp r0, #0
    beq loc_814BAD2
    add r0, r4, #0
    add r1, r4, #0
    mov r2, sp
    add r3, r7, #0
    bl sub_814BBA8
loc_814BAD2:
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814BA8A
loc_814BADC:
    mov r0, r10
loc_814BADE:
    add sp, sp, #8
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r1}
    bx r1
    .byte 0, 0
off_814BAF0:    .word dword_2010CC0
// end of function sub_814B8B0

.thumb
sub_814BAF4:
    push {r4-r7,lr}
    sub sp, sp, #8
    add r6, r1, #0
    str r2, [sp]
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    ldr r2, [pc, #0x814bb28-0x814bb00-4] // =dword_2010CA0
    lsl r1, r7, #2
    add r1, r1, r2
    ldr r3, [r1]
    add r5, r3, #0
    add r5, #0xc
    mov r4, #0
    mov r0, #0
    strh r0, [r5,#2]
    ldr r0, [r1]
    ldr r0, [r0,#0x18]
    add r1, r2, #0
    ldrh r2, [r6,#6]
    cmp r0, r2
    bcs loc_814BB30
    mov r0, #0x49 
    strh r0, [r3,#0xc]
    ldr r0, [pc, #0x814bb2c-0x814bb22-2] // =0x700
    strh r0, [r5,#2]
    b loc_814BB7E
off_814BB28:    .word dword_2010CA0
dword_814BB2C:    .word 0x701
loc_814BB30:
    ldrb r0, [r5,#7]
    cmp r0, #0
    beq loc_814BB48
    ldrb r0, [r5,#6]
    cmp r0, #0
    beq loc_814BB54
    ldr r0, [pc, #0x814bb44-0x814bb3c-4] // =0x708
    strh r0, [r5,#2]
    b loc_814BB7E
    .balign 4, 0x00
dword_814BB44:    .word 0x709
loc_814BB48:
    ldrb r0, [r5,#6]
    cmp r0, #0
    beq loc_814BB54
    mov r0, #0xe1
    lsl r0, r0, #3
    strh r0, [r5,#2]
loc_814BB54:
    mov r4, #0
    ldr r0, [pc, #0x814bb9c-0x814bb56-2] // =0x8042
    strh r0, [r5]
    ldrh r0, [r6,#6]
    strh r0, [r5,#4]
    ldrh r2, [r6,#6]
    lsl r0, r7, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldr r0, [r0,#0x14]
    str r0, [sp,#4]
    ldr r0, [pc, #0x814bba0-0x814bb6a-2] // =dword_2010CC8
    ldr r0, [r0]
    add r1, sp, #4
    ldr r3, [r0,#4]
    mov r0, sp
    bl sub_814DA6C
    mov r0, #1
    strb r0, [r5,#6]
    strh r4, [r5]
loc_814BB7E:
    ldrh r0, [r5,#2]
    cmp r0, #0
    beq loc_814BB92
    ldr r0, [pc, #0x814bba4-0x814bb84-4] // =dword_2010CC4
    ldr r2, [r0]
    mov r0, #0x10
    lsl r0, r7
    ldrb r1, [r2,#4]
    orr r0, r1
    strb r0, [r2,#4]
loc_814BB92:
    add sp, sp, #8
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814BB9C:    .word 0x8042
off_814BBA0:    .word dword_2010CC8
off_814BBA4:    .word dword_2010CC4
// end of function sub_814BAF4

.thumb
sub_814BBA8:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    add r6, r2, #0
    lsl r0, r0, #0x18
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r10, r1
    ldr r1, [pc, #0x814bc74-0x814bbbe-2] // =dword_2010CB0
    lsr r0, r0, #0x16
    add r0, r0, r1
    ldr r0, [r0]
    mov r12, r0
    ldrh r0, [r0]
    mov r9, r0
    mov r0, r12
    add r0, #0x21 
    ldrb r2, [r6,#4]
    add r0, r0, r2
    ldrb r0, [r0]
    str r0, [sp]
    ldrb r2, [r6,#2]
    cmp r2, #2
    bne loc_814BBE4
    ldr r0, [pc, #0x814bc78-0x814bbde-2] // =0x8022
    cmp r9, r0
    beq loc_814BBFE
loc_814BBE4:
    cmp r2, #1
    bne loc_814BBEE
    ldr r0, [pc, #0x814bc7c-0x814bbe8-4] // =0x8021
    cmp r9, r0
    beq loc_814BBFE
loc_814BBEE:
    mov r3, #0x1b
    add r3, r12
    mov r8, r3
    cmp r2, #3
    bne loc_814BC22
    ldr r0, [pc, #0x814bc80-0x814bbf8-4] // =0x8023
    cmp r9, r0
    bne loc_814BC22
loc_814BBFE:
    ldrb r1, [r6,#4]
    mov r0, r12
    add r0, #0x21 
    add r0, r0, r1
    ldrb r0, [r0]
    mov r7, #0x1b
    add r7, r12
    mov r8, r7
    ldrb r2, [r6,#5]
    cmp r0, r2
    bne loc_814BC22
    add r0, r7, r1
    mov r1, #1
    mov r3, r10
    lsl r1, r3
    ldrb r2, [r0]
    orr r1, r2
    strb r1, [r0]
loc_814BC22:
    ldrb r2, [r6,#4]
    mov r7, r8
    add r0, r7, r2
    ldrb r0, [r0]
    mov r3, r12
    ldrb r1, [r3,#0x1a]
    and r0, r1
    cmp r0, r1
    bne loc_814BD1E
    add r3, #0x21 
    add r2, r3, r2
    ldrb r0, [r2]
    add r0, #1
    mov r1, #3
    and r0, r1
    mov r1, #0
    strb r0, [r2]
    ldrb r0, [r6,#4]
    add r0, r8
    strb r1, [r0]
    mov r7, r12
    ldrh r1, [r7]
    ldr r2, [pc, #0x814bc84-0x814bc4e-2] // =0x7FDF
    add r0, r1, r2
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    add r5, r3, #0
    cmp r0, #1
    bhi loc_814BD10
    ldr r0, [pc, #0x814bc7c-0x814bc5c-4] // =0x8021
    cmp r1, r0
    bne loc_814BC88
    ldrb r1, [r6,#4]
    lsl r1, r1, #2
    sub r3, #0x1d
    add r1, r3, r1
    ldrh r2, [r7,#0x2e]
    ldr r0, [r1]
    add r0, r0, r2
    str r0, [r1]
    b loc_814BC9E
off_814BC74:    .word dword_2010CB0
dword_814BC78:    .word 0x8022
dword_814BC7C:    .word 0x8021
dword_814BC80:    .word 0x8023
dword_814BC84:    .word 0x7FDF
loc_814BC88:
    ldrb r2, [r6,#4]
    lsl r2, r2, #2
    mov r3, r12
    add r3, #4
    add r2, r3, r2
    mov r7, r12
    ldrh r1, [r7,#0x2e]
    lsl r1, r1, #2
    ldr r0, [r2]
    add r0, r0, r1
    str r0, [r2]
loc_814BC9E:
    mov r0, r12
    ldrh r1, [r0,#0x2e]
    ldr r0, [r0,#0x14]
    sub r0, r0, r1
    mov r1, r12
    str r0, [r1,#0x14]
    cmp r0, #0
    beq loc_814BCB2
    cmp r0, #0
    bge loc_814BD1E
loc_814BCB2:
    mov r0, r12
    add r0, #0x20 
    mov r2, #0
    strb r2, [r0]
    mov r7, r12
    ldrh r1, [r7]
    ldr r0, [pc, #0x814bcf4-0x814bcbe-2] // =0x8021
    cmp r1, r0
    bne loc_814BCFC
    mov r4, #0
loc_814BCC6:
    add r0, r5, r4
    mov r1, #1
    strb r1, [r0]
    lsl r1, r4, #2
    add r1, r3, r1
    mov r2, r12
    ldrh r0, [r2,#0x2e]
    add r2, r0, #0
    mul r2, r4
    mov r7, r12
    ldr r0, [r7,#0x28]
    add r0, r0, r2
    str r0, [r1]
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #3
    bls loc_814BCC6
    ldr r0, [r7,#0x30]
    str r0, [r7,#0x14]
    ldr r0, [pc, #0x814bcf8-0x814bcee-2] // =0x8022
    strh r0, [r7]
    b loc_814BD1E
dword_814BCF4:    .word 0x8021
dword_814BCF8:    .word 0x8022
loc_814BCFC:
    strb r2, [r5]
    mov r0, r12
    str r2, [r0,#0x14]
    ldr r0, [pc, #0x814bd0c-0x814bd02-2] // =0x8023
    mov r1, r12
    strh r0, [r1]
    b loc_814BD1E
    .balign 4, 0x00
dword_814BD0C:    .word 0x8023
loc_814BD10:
    lsl r1, r1, #0x10
    ldr r0, [pc, #0x814bd80-0x814bd12-2] // =0x80230000
    cmp r1, r0
    bne loc_814BD1E
    ldr r0, [pc, #0x814bd84-0x814bd18-4] // =0x8020
    mov r2, r12
    strh r0, [r2]
loc_814BD1E:
    mov r3, r12
    ldrh r0, [r3]
    cmp r0, r9
    bne loc_814BD48
    ldrb r2, [r6,#4]
    mov r0, r12
    add r0, #0x21 
    add r0, r0, r2
    ldrb r0, [r0]
    ldr r7, [sp]
    cmp r0, r7
    bne loc_814BD48
    mov r1, r8
    add r0, r1, r2
    ldrb r0, [r0]
    mov r2, r10
    asr r0, r2
    mov r1, #1
    and r0, r1
    cmp r0, #0
    beq loc_814BD6E
loc_814BD48:
    ldr r4, [pc, #0x814bd88-0x814bd48-4] // =InterruptMasterEnableRegister
    ldrh r2, [r4]
    mov r0, #0
    strh r0, [r4]
    ldr r0, [pc, #0x814bd8c-0x814bd50-4] // =dword_2010CC4
    ldr r3, [r0]
    mov r0, #0x10
    mov r7, r10
    lsl r0, r7
    ldrb r1, [r3,#2]
    orr r0, r1
    mov r1, #0
    strb r0, [r3,#2]
    lsl r0, r7, #2
    ldr r3, [pc, #0x814bd90-0x814bd64-4] // =dword_2010CB0
    add r0, r0, r3
    ldr r0, [r0]
    strh r1, [r0,#2]
    strh r2, [r4]
loc_814BD6E:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
dword_814BD80:    .word 0x80230000
dword_814BD84:    .word 0x8020
off_814BD88:    .word InterruptMasterEnableRegister
off_814BD8C:    .word dword_2010CC4
off_814BD90:    .word dword_2010CB0
// end of function sub_814BBA8

.thumb
sub_814BD94:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #4
    add r6, r1, #0
    str r2, [sp]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    mov r8, r0
    mov r7, #0
    ldr r1, [pc, #0x814bdf4-0x814bdac-4] // =dword_2010CB0
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r4, [r0]
    add r5, r4, #0
    add r5, #0x34 
    ldrh r0, [r4,#0x34]
    mov r9, r0
    ldrb r0, [r6,#4]
    add r3, r4, #0
    add r3, #0x55 
    add r0, r3, r0
    ldrb r0, [r0]
    mov r10, r0
    ldrb r0, [r6,#2]
    cmp r0, #3
    bne loc_814BE04
    ldr r0, [pc, #0x814bdf8-0x814bdce-2] // =dword_2010CC4
    ldr r2, [r0]
    mov r0, #1
    mov r1, r8
    lsl r0, r1
    ldrb r1, [r2,#1]
    orr r0, r1
    strb r0, [r2,#1]
    ldrh r1, [r4,#0x34]
    ldr r0, [pc, #0x814bdfc-0x814bde0-4] // =0x8042
    cmp r1, r0
    bne loc_814BE4A
    add r0, r4, #0
    add r0, #0x54 
    strb r7, [r0]
    strb r7, [r3]
    ldr r0, [pc, #0x814be00-0x814bdee-2] // =0x8043
    strh r0, [r4,#0x34]
    b loc_814BE4A
off_814BDF4:    .word dword_2010CB0
off_814BDF8:    .word dword_2010CC4
dword_814BDFC:    .word 0x8042
dword_814BE00:    .word 0x8043
loc_814BE04:
    cmp r0, #2
    bne loc_814BE30
    ldr r0, [pc, #0x814be28-0x814be08-4] // =0x8041
    cmp r9, r0
    bne loc_814BE1C
    ldr r0, [r5,#0x14]
    cmp r0, #0
    bne loc_814BE1C
    mov r0, r8
    add r1, r5, #0
    bl sub_814BFA0
loc_814BE1C:
    ldrh r1, [r5]
    ldr r0, [pc, #0x814be2c-0x814be1e-2] // =0x8042
    cmp r1, r0
    bne loc_814BE4A
    b loc_814BE4E
    .balign 4, 0x00
dword_814BE28:    .word 0x8041
dword_814BE2C:    .word 0x8042
loc_814BE30:
    cmp r0, #1
    bne loc_814BE4A
    ldr r7, [pc, #0x814befc-0x814be34-4] // =0x8041
    cmp r9, r7
    beq loc_814BE4E
    mov r0, r8
    add r1, r5, #0
    bl sub_814BF10
    ldrh r0, [r4,#0x34]
    cmp r0, r7
    bne loc_814BEEA
    mov r7, #1
loc_814BE4A:
    cmp r7, #0
    beq loc_814BEA4
loc_814BE4E:
    ldrb r2, [r6,#5]
    ldrb r3, [r6,#4]
    add r4, r5, #0
    add r4, #0x21 
    add r0, r4, r3
    ldrb r0, [r0]
    add r0, #1
    mov r1, #3
    and r0, r1
    cmp r2, r0
    bne loc_814BEA4
    ldr r0, [pc, #0x814bf00-0x814be64-4] // =dword_2010CC8
    ldr r0, [r0]
    lsl r1, r3, #2
    add r1, #4
    add r1, r5, r1
    ldrh r2, [r6,#6]
    ldr r3, [r0,#4]
    mov r0, sp
    bl sub_814DA6C
    ldrh r1, [r5]
    ldr r0, [pc, #0x814bf04-0x814be7a-2] // =0x8042
    cmp r1, r0
    bne loc_814BE94
    ldrb r0, [r6,#4]
    lsl r0, r0, #2
    add r2, r5, #4
    add r2, r2, r0
    ldrh r0, [r5,#0x2e]
    lsl r1, r0, #1
    add r1, r1, r0
    ldr r0, [r2]
    add r0, r0, r1
    str r0, [r2]
loc_814BE94:
    ldrh r1, [r6,#6]
    ldr r0, [r5,#0x14]
    sub r0, r0, r1
    str r0, [r5,#0x14]
    ldrb r0, [r6,#4]
    add r0, r4, r0
    ldrb r1, [r6,#5]
    strb r1, [r0]
loc_814BEA4:
    ldrh r0, [r5,#0x18]
    cmp r0, #0
    bne loc_814BEEA
    ldrb r0, [r6,#4]
    add r1, r5, #0
    add r1, #0x20 
    strb r0, [r1]
    ldrh r0, [r5]
    cmp r0, r9
    bne loc_814BECC
    add r0, r5, #0
    add r0, #0x21 
    ldrb r2, [r6,#4]
    add r0, r0, r2
    ldrb r0, [r0]
    cmp r0, r10
    bne loc_814BECC
    ldrb r6, [r6,#5]
    cmp r0, r6
    bne loc_814BEEA
loc_814BECC:
    ldr r3, [pc, #0x814bf08-0x814becc-4] // =InterruptMasterEnableRegister
    ldrh r2, [r3]
    mov r0, #0
    strh r0, [r3]
    ldr r0, [pc, #0x814bf0c-0x814bed4-4] // =dword_2010CC4
    ldr r4, [r0]
    mov r0, #1
    mov r1, r8
    lsl r0, r1
    ldrb r1, [r4,#2]
    orr r0, r1
    mov r1, #0
    strb r0, [r4,#2]
    strh r1, [r5,#2]
    strh r2, [r3]
loc_814BEEA:
    add sp, sp, #4
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814BEFC:    .word 0x8041
off_814BF00:    .word dword_2010CC8
dword_814BF04:    .word 0x8042
off_814BF08:    .word InterruptMasterEnableRegister
off_814BF0C:    .word dword_2010CC4
// end of function sub_814BD94

.thumb
sub_814BF10:
    push {r4-r7,lr}
    add r2, r1, #0
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    ldr r0, [pc, #0x814bf2c-0x814bf18-4] // =dword_2010CC0
    ldr r3, [r0]
    ldrb r1, [r3]
    mov r12, r0
    cmp r1, #1
    bne loc_814BF30
    mov r5, #3
    add r1, r3, #0
    add r1, #0xf
    b loc_814BF38
off_814BF2C:    .word dword_2010CC0
loc_814BF30:
    mov r5, #2
    add r0, r4, #0
    add r0, #0x10
    add r1, r3, r0
loc_814BF38:
    mov r7, #1
    add r0, r7, #0
    lsl r0, r4
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    add r4, r6, #0
    ldrh r3, [r2]
    cmp r3, #0
    bne loc_814BF96
    ldrb r0, [r1]
    cmp r0, r5
    bcs loc_814BF70
    mov r0, #0x49 
    strh r0, [r2]
    ldr r0, [pc, #0x814bf68-0x814bf54-4] // =0x700
    strh r0, [r2,#0x18]
    ldr r0, [pc, #0x814bf6c-0x814bf58-4] // =dword_2010CC4
    ldr r2, [r0]
    ldrb r1, [r2,#4]
    add r0, r6, #0
    orr r0, r1
    strb r0, [r2,#4]
    b loc_814BF96
    .balign 4, 0x00
dword_814BF68:    .word 0x702
off_814BF6C:    .word dword_2010CC4
loc_814BF70:
    strh r3, [r2,#0x18]
    ldrb r0, [r1]
    sub r0, r0, r5
    strb r0, [r1]
    add r0, r2, #0
    add r0, #0x2d 
    str r0, [r2,#4]
    mov r0, #7
    str r0, [r2,#0x14]
    strb r7, [r2,#0x1f]
    strh r3, [r2,#0x2e]
    strb r4, [r2,#0x1a]
    ldr r0, [pc, #0x814bf9c-0x814bf88-4] // =0x8041
    strh r0, [r2]
    mov r0, r12
    ldr r1, [r0]
    ldrb r0, [r1,#5]
    orr r4, r0
    strb r4, [r1,#5]
loc_814BF96:
    pop {r4-r7}
    pop {r0}
    bx r0
dword_814BF9C:    .word 0x8041
// end of function sub_814BF10

.thumb
sub_814BFA0:
    push {r4-r7,lr}
    add r4, r1, #0
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    add r0, r4, #0
    add r0, #0x2d 
    ldrb r0, [r0]
    cmp r0, #1
    bne loc_814BFC4
    ldr r0, [pc, #0x814bfc0-0x814bfb2-2] // =dword_2010CC0
    lsl r1, r5, #5
    add r1, #0x14
    ldr r0, [r0]
    add r0, r0, r1
    add r0, #4
    b loc_814C01A
off_814BFC0:    .word dword_2010CC0
loc_814BFC4:
    ldr r1, [pc, #0x814c008-0x814bfc4-4] // =dword_2010CB0
    lsl r0, r5, #2
    add r0, r0, r1
    ldr r2, [r0]
    ldr r1, [r4,#0x30]
    ldr r0, [r2,#0x6c]
    cmp r1, r0
    bls loc_814C018
    mov r1, #0x80
    lsl r1, r1, #0x11
    lsl r1, r5
    lsr r1, r1, #0x18
    ldr r0, [pc, #0x814c00c-0x814bfdc-4] // =dword_2010CC4
    ldr r3, [r0]
    ldrb r2, [r3,#4]
    add r0, r1, #0
    orr r0, r2
    strb r0, [r3,#4]
    ldr r0, [pc, #0x814c010-0x814bfe8-4] // =dword_2010CC0
    ldr r2, [r0]
    ldrb r0, [r2,#5]
    bic r0, r1
    strb r0, [r2,#5]
    ldr r0, [pc, #0x814c014-0x814bff2-2] // =0x700
    strh r0, [r4,#0x18]
    mov r0, #0x47 
    strh r0, [r4]
    add r0, r5, #0
    mov r1, #1
    add r2, r4, #0
    bl sub_814A8C8
    b loc_814C04C
    .balign 4, 0x00
off_814C008:    .word dword_2010CB0
off_814C00C:    .word dword_2010CC4
off_814C010:    .word dword_2010CC0
dword_814C014:    .word 0x701
loc_814C018:
    ldr r0, [r2,#0x68]
loc_814C01A:
    str r0, [r4,#4]
    mov r3, #0
    add r6, r4, #0
    add r6, #0x21 
    mov r7, #0
    add r5, r4, #4
loc_814C026:
    add r0, r6, r3
    strb r7, [r0]
    lsl r1, r3, #2
    add r1, r5, r1
    ldrh r0, [r4,#0x2e]
    add r2, r0, #0
    mul r2, r3
    ldr r0, [r4,#4]
    add r0, r0, r2
    str r0, [r1]
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_814C026
    ldr r0, [r4,#0x30]
    str r0, [r4,#0x14]
    ldr r0, [pc, #0x814c054-0x814c048-4] // =0x8042
    strh r0, [r4]
loc_814C04C:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814C054:    .word 0x8042
// end of function sub_814BFA0

.thumb
sub_814C058:
    push {r4-r7,lr}
    ldr r2, [pc, #0x814c0e4-0x814c05a-2] // =dword_2010CC0
    ldr r0, [r2]
    ldrb r1, [r0,#4]
    ldrb r0, [r0,#5]
    orr r0, r1
    cmp r0, #0
    beq loc_814C0DE
    ldr r1, [pc, #0x814c0e8-0x814c068-4] // =InterruptMasterEnableRegister
    ldrh r0, [r1]
    mov r12, r0
    mov r0, #0
    strh r0, [r1]
    ldr r1, [pc, #0x814c0ec-0x814c072-2] // =dword_2010CC4
    ldr r0, [r1]
    ldrb r0, [r0,#2]
    lsr r7, r0, #4
    mov r3, #0
    add r6, r1, #0
    add r5, r2, #0
    ldr r4, [pc, #0x814c0f0-0x814c080-4] // =dword_2010CB0
loc_814C082:
    mov r0, #0x80
    lsl r0, r0, #0x11
    lsl r0, r3
    lsr r2, r0, #0x18
    ldr r0, [r5]
    ldrb r0, [r0,#4]
    and r0, r2
    cmp r0, #0
    beq loc_814C0AA
    ldr r0, [r6]
    ldrb r0, [r0,#2]
    and r0, r2
    cmp r0, #0
    bne loc_814C0AA
    lsl r0, r3, #2
    add r0, r0, r4
    ldr r1, [r0]
    ldrh r0, [r1,#2]
    add r0, #1
    strh r0, [r1,#2]
loc_814C0AA:
    ldr r0, [r5]
    ldrb r0, [r0,#5]
    and r0, r2
    cmp r0, #0
    beq loc_814C0C8
    add r0, r7, #0
    and r0, r2
    cmp r0, #0
    bne loc_814C0C8
    lsl r0, r3, #2
    add r0, r0, r4
    ldr r1, [r0]
    ldrh r0, [r1,#0x36]
    add r0, #1
    strh r0, [r1,#0x36]
loc_814C0C8:
    add r0, r3, #1
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    cmp r3, #3
    bls loc_814C082
    ldr r0, [r6]
    mov r1, #0
    strb r1, [r0,#2]
    ldr r0, [pc, #0x814c0e8-0x814c0d8-4] // =InterruptMasterEnableRegister
    mov r1, r12
    strh r1, [r0]
loc_814C0DE:
    pop {r4-r7}
    pop {r0}
    bx r0
off_814C0E4:    .word dword_2010CC0
off_814C0E8:    .word InterruptMasterEnableRegister
off_814C0EC:    .word dword_2010CC4
off_814C0F0:    .word dword_2010CB0
// end of function sub_814C058

    push {lr}
    ldr r0, [pc, #0x814c108-0x814c0f6-2] // =sub_81494B8+1
    bl sub_814C360
    mov r0, #1
    mov r1, #0
    bl sub_814C828
    pop {r0}
    bx r0
off_814C108:    .word sub_81494B8+1
.thumb
sub_814C10C:
    push {r4,lr}
    add r3, r0, #0
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    cmp r2, #1
    bne loc_814C148
    add r2, r3, #0
    add r2, #0xe8
    str r2, [r1]
    ldr r1, [pc, #0x814c134-0x814c11e-2] // =DMA3SourceAddress
    ldr r0, [pc, #0x814c138-0x814c120-4] // =dword_814CF54
    str r0, [r1]
    str r2, [r1,#0x4] // (DMA3DestinationAddress - 0x40000d4)
    ldr r0, [pc, #0x814c13c-0x814c126-2] // =0x800004B0
    str r0, [r1,#0x8] // (DMA3WordCount - 0x40000d4)
    ldr r0, [r1,#0x8] // (DMA3WordCount - 0x40000d4)
    ldr r1, [pc, #0x814c140-0x814c12c-4] // =dword_2010CCC
    ldr r2, [pc, #0x814c144-0x814c12e-2] // =0xA48
    add r0, r3, r2
    b loc_814C152
off_814C134:    .word DMA3SourceAddress
off_814C138:    .word dword_814CF54
dword_814C13C:    .word 0x800004B0
off_814C140:    .word dword_2010CCC
dword_814C144:    .word 0xA48
loc_814C148:
    ldr r0, [pc, #0x814c1cc-0x814c148-4] // =dword_814CF54
    str r0, [r1]
    ldr r1, [pc, #0x814c1d0-0x814c14c-4] // =dword_2010CCC
    add r0, r3, #0
    add r0, #0xe8
loc_814C152:
    str r0, [r1]
    add r2, r1, #0
    ldr r1, [r2]
    str r3, [r1,#0x28]
    add r0, r3, #0
    add r0, #0x74 
    str r0, [r1,#0x24]
    ldrb r0, [r1,#0x14]
    mov r4, #0
    mov r0, #1
    strb r0, [r1,#0x14]
    ldr r0, [r2]
    str r4, [r0]
    strb r4, [r0,#4]
    ldr r0, [r2]
    strb r4, [r0,#5]
    ldr r0, [r2]
    strb r4, [r0,#7]
    ldr r0, [r2]
    strb r4, [r0,#8]
    ldr r0, [r2]
    strb r4, [r0,#9]
    ldr r0, [r2]
    str r4, [r0,#0xc]
    ldrb r1, [r0,#0x10]
    strb r4, [r0,#0x10]
    ldr r0, [r2]
    ldrh r1, [r0,#0x12]
    mov r1, #0
    strh r4, [r0,#0x12]
    strb r1, [r0,#0x15]
    ldr r0, [r2]
    add r0, #0x2c 
    ldrb r2, [r0]
    strb r1, [r0]
    ldr r1, [pc, #0x814c1d4-0x814c198-4] // =SIOModeSelect_GeneralPurposeData
    mov r2, #0x80
    lsl r2, r2, #1
    add r0, r2, #0
    strh r0, [r1]
    sub r1, #0xc
    ldr r2, [pc, #0x814c1d8-0x814c1a4-4] // =0x5003
    add r0, r2, #0
    strh r0, [r1]
    bl sub_814C348
    bl sub_814C354
    ldr r3, [pc, #0x814c1dc-0x814c1b2-2] // =InterruptMasterEnableRegister
    ldrh r2, [r3]
    strh r4, [r3]
    ldr r4, [pc, #0x814c1e0-0x814c1b8-4] // =InterruptEnableRegister
    ldrh r0, [r4]
    mov r1, #0x80
    orr r0, r1
    strh r0, [r4]
    strh r2, [r3]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C1CC:    .word dword_814CF54
off_814C1D0:    .word dword_2010CCC
off_814C1D4:    .word SIOModeSelect_GeneralPurposeData
dword_814C1D8:    .word 0x5003
off_814C1DC:    .word InterruptMasterEnableRegister
off_814C1E0:    .word InterruptEnableRegister
// end of function sub_814C10C

.thumb
sub_814C1E4:
    push {r4,r5,lr}
    ldr r2, [pc, #0x814c210-0x814c1e6-2] // =sub_814C908+1
    str r2, [r0]
    ldr r5, [pc, #0x814c214-0x814c1ea-2] // =dword_2010CCC
    ldr r0, [r5]
    mov r4, #0
    strb r1, [r0,#0xa]
    ldr r3, [pc, #0x814c218-0x814c1f2-2] // =InterruptMasterEnableRegister
    ldrh r2, [r3]
    strh r4, [r3]
    ldr r4, [pc, #0x814c21c-0x814c1f8-4] // =InterruptEnableRegister
    ldr r1, [r5]
    mov r0, #8
    ldrb r1, [r1,#0xa]
    lsl r0, r1
    ldrh r1, [r4]
    orr r0, r1
    strh r0, [r4]
    strh r2, [r3]
    pop {r4,r5}
    pop {r0}
    bx r0
off_814C210:    .word sub_814C908+1
off_814C214:    .word dword_2010CCC
off_814C218:    .word InterruptMasterEnableRegister
off_814C21C:    .word InterruptEnableRegister
// end of function sub_814C1E4

.thumb
sub_814C220:
    push {r4,r5,lr}
    ldr r5, [pc, #0x814c2b8-0x814c222-2] // =SIOModeSelect_GeneralPurposeData
    mov r1, #0x80
    lsl r1, r1, #8
    add r0, r1, #0
    strh r0, [r5]
    ldr r2, [pc, #0x814c2bc-0x814c22c-4] // =0x80A0
    add r0, r2, #0
    strh r0, [r5]
    ldr r1, [pc, #0x814c2c0-0x814c232-2] // =dword_2010CCC
    ldr r0, [r1]
    ldrb r0, [r0,#0xa]
    lsl r0, r0, #2
    ldr r3, [pc, #0x814c2c4-0x814c23a-2] // =Timer0Counter_Reload
    add r2, r0, r3
    ldr r4, [pc, #0x814c2c8-0x814c23e-2] // =Timer0Control
    add r3, r0, r4
    mov r0, #0
    strh r0, [r3]
    strh r0, [r2]
    mov r0, #0x83
    strh r0, [r3]
    ldrh r0, [r2]
    add r4, r1, #0
    cmp r0, #0x11
    bhi loc_814C260
    ldr r0, [pc, #0x814c2cc-0x814c254-4] // =0x80A2
    add r1, r0, #0
loc_814C258:
    strh r1, [r5]
    ldrh r0, [r2]
    cmp r0, #0x11
    bls loc_814C258
loc_814C260:
    mov r0, #3
    strh r0, [r3]
    ldr r1, [pc, #0x814c2b8-0x814c264-4] // =SIOModeSelect_GeneralPurposeData
    ldr r2, [pc, #0x814c2bc-0x814c266-2] // =0x80A0
    add r0, r2, #0
    strh r0, [r1]
    sub r1, #0xc
    ldr r3, [pc, #0x814c2d0-0x814c26e-2] // =0x5003
    add r0, r3, #0
    strh r0, [r1]
    ldr r0, [r4]
    mov r2, #0
    str r2, [r0]
    strb r2, [r0,#4]
    ldr r0, [r4]
    strb r2, [r0,#5]
    ldr r0, [r4]
    strb r2, [r0,#6]
    ldr r0, [r4]
    strb r2, [r0,#7]
    ldr r0, [r4]
    strb r2, [r0,#8]
    ldr r0, [r4]
    strb r2, [r0,#9]
    ldr r0, [r4]
    str r2, [r0,#0xc]
    ldrb r1, [r0,#0x10]
    strb r2, [r0,#0x10]
    ldr r1, [r4]
    ldrh r0, [r1,#0x12]
    mov r3, #0
    strh r2, [r1,#0x12]
    ldrb r0, [r1,#0x14]
    mov r0, #1
    strb r0, [r1,#0x14]
    ldr r0, [r4]
    strb r3, [r0,#0x15]
    ldr r0, [r4]
    add r0, #0x2c 
    ldrb r1, [r0]
    strb r3, [r0]
    pop {r4,r5}
    pop {r0}
    bx r0
off_814C2B8:    .word SIOModeSelect_GeneralPurposeData
dword_814C2BC:    .word 0x80A0
off_814C2C0:    .word dword_2010CCC
off_814C2C4:    .word Timer0Counter_Reload
off_814C2C8:    .word Timer0Control
dword_814C2CC:    .word 0x80A2
dword_814C2D0:    .word 0x5003
// end of function sub_814C220

    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    ldr r1, [pc, #0x814c2e4-0x814c2d8-4] // =dword_2010CCC
    ldr r1, [r1]
    ldrb r2, [r1,#0x14]
    strb r0, [r1,#0x14]
    bx lr
    .balign 4, 0x00
off_814C2E4:    .word dword_2010CCC
.thumb
sub_814C2E8:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    cmp r0, #1
    beq loc_814C314
    cmp r0, #1
    bgt loc_814C2FE
    cmp r0, #0
    beq loc_814C308
    b loc_814C33C
loc_814C2FE:
    cmp r1, #2
    beq loc_814C320
    cmp r1, #3
    beq loc_814C330
    b loc_814C33C
loc_814C308:
    ldr r0, [pc, #0x814c310-0x814c308-4] // =dword_2010CCC
    ldr r0, [r0]
    ldrh r0, [r0,#0x12]
    b loc_814C33E
off_814C310:    .word dword_2010CCC
loc_814C314:
    ldr r0, [pc, #0x814c31c-0x814c314-4] // =dword_2010CCC
    ldr r0, [r0]
    ldrb r0, [r0,#0x14]
    b loc_814C33E
off_814C31C:    .word dword_2010CCC
loc_814C320:
    ldr r0, [pc, #0x814c32c-0x814c320-4] // =dword_2010CCC
    ldr r0, [r0]
    ldr r0, [r0]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    b loc_814C33E
off_814C32C:    .word dword_2010CCC
loc_814C330:
    ldr r0, [pc, #0x814c338-0x814c330-4] // =dword_2010CCC
    ldr r0, [r0]
    ldrb r0, [r0,#6]
    b loc_814C33E
off_814C338:    .word dword_2010CCC
loc_814C33C:
    ldr r0, [pc, #0x814c344-0x814c33c-4] // =0xFFFF
loc_814C33E:
    pop {r1}
    bx r1
    .balign 4, 0x00
dword_814C344:    .word 0xFFFF
// end of function sub_814C2E8

.thumb
sub_814C348:
    push {lr}
    mov r0, #0
    bl sub_814C360
    pop {r0}
    bx r0
// end of function sub_814C348

.thumb
sub_814C354:
    push {lr}
    mov r0, #0
    bl sub_814C36C
    pop {r0}
    bx r0
// end of function sub_814C354

.thumb
sub_814C360:
    ldr r1, [pc, #0x814c368-0x814c360-4] // =dword_2010CCC
    ldr r1, [r1]
    str r0, [r1,#0x18]
    bx lr
off_814C368:    .word dword_2010CCC
// end of function sub_814C360

.thumb
sub_814C36C:
    ldr r1, [pc, #0x814c374-0x814c36c-4] // =dword_2010CCC
    ldr r1, [r1]
    str r0, [r1,#0x1c]
    bx lr
off_814C374:    .word dword_2010CCC
// end of function sub_814C36C

.thumb
sub_814C378:
    ldr r1, [pc, #0x814c380-0x814c378-4] // =dword_2010CCC
    ldr r1, [r1]
    str r0, [r1,#0x20]
    bx lr
off_814C380:    .word dword_2010CCC
// end of function sub_814C378

.thumb
sub_814C384:
    push {lr}
    ldr r0, [pc, #0x814c3a8-0x814c386-2] // =dword_2010CCC
    ldr r1, [r0]
    add r2, r1, #0
    add r2, #0x2c 
    ldrb r1, [r2]
    add r3, r0, #0
    cmp r1, #1
    bne loc_814C39E
    add r1, r2, #0
loc_814C398:
    ldrb r0, [r1]
    cmp r0, #1
    beq loc_814C398
loc_814C39E:
    ldr r0, [r3]
    ldrh r0, [r0,#0x12]
    pop {r1}
    bx r1
    .balign 4, 0x00
off_814C3A8:    .word dword_2010CCC
// end of function sub_814C384

.thumb
sub_814C3AC:
    push {lr}
    mov r0, #0x10
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C3C6
    ldr r0, [pc, #0x814c3cc-0x814c3bc-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C3C6:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C3CC:    .word dword_2010CCC
// end of function sub_814C3AC

.thumb
sub_814C3D0:
    push {lr}
    mov r0, #0x11
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C3EA
    ldr r0, [pc, #0x814c3f0-0x814c3e0-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C3EA:
    pop {r0}
    bx r0
    .byte 0, 0
off_814C3F0:    .word dword_2010CCC
// end of function sub_814C3D0

    push {lr}
    mov r0, #0x12
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C40E
    ldr r0, [pc, #0x814c414-0x814c404-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C40E:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C414:    .word dword_2010CCC
.thumb
sub_814C418:
    push {lr}
    mov r0, #0x13
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C432
    ldr r0, [pc, #0x814c438-0x814c428-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C432:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C438:    .word dword_2010CCC
// end of function sub_814C418

.thumb
sub_814C43C:
    push {lr}
    mov r0, #0x14
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C456
    ldr r0, [pc, #0x814c45c-0x814c44c-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C456:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C45C:    .word dword_2010CCC
// end of function sub_814C43C

    push {lr}
    mov r0, #0x15
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C47A
    ldr r0, [pc, #0x814c480-0x814c470-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C47A:
    pop {r0}
    bx r0
    .byte 0, 0
off_814C480:    .word dword_2010CCC
.thumb
sub_814C484:
    push {r4,r5,lr}
    add r4, r0, #0
    add r5, r1, #0
    mov r0, #0x16
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C4D0
    ldr r2, [pc, #0x814c4d8-0x814c496-2] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #6
    strb r0, [r1,#4]
    ldr r0, [r2]
    ldr r1, [r0,#0x24]
    add r1, #4
    ldrh r0, [r4]
    strh r0, [r1]
    add r1, #2
    add r4, #2
    mov r2, #0xd
loc_814C4AE:
    ldrb r0, [r4]
    strb r0, [r1]
    add r1, #1
    add r4, #1
    sub r2, #1
    cmp r2, #0
    bge loc_814C4AE
    mov r2, #7
loc_814C4BE:
    ldrb r0, [r5]
    strb r0, [r1]
    add r1, #1
    add r5, #1
    sub r2, #1
    cmp r2, #0
    bge loc_814C4BE
    bl sub_814CB1C
loc_814C4D0:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C4D8:    .word dword_2010CCC
// end of function sub_814C484

.thumb
sub_814C4DC:
    push {r4-r6,lr}
    lsl r0, r0, #0x10
    lsr r6, r0, #0x10
    lsl r1, r1, #0x18
    lsr r5, r1, #0x18
    lsl r2, r2, #0x18
    lsr r4, r2, #0x18
    mov r0, #0x17
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C512
    ldr r2, [pc, #0x814c518-0x814c4f6-2] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #1
    strb r0, [r1,#4]
    ldr r0, [r2]
    ldr r0, [r0,#0x24]
    add r0, #4
    strb r4, [r0]
    add r0, #1
    strb r5, [r0]
    add r0, #1
    strh r6, [r0]
    bl sub_814CB1C
loc_814C512:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814C518:    .word dword_2010CCC
// end of function sub_814C4DC

.thumb
sub_814C51C:
    push {lr}
    mov r0, #0x19
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C536
    ldr r0, [pc, #0x814c53c-0x814c52c-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C536:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C53C:    .word dword_2010CCC
// end of function sub_814C51C

.thumb
sub_814C540:
    push {lr}
    mov r0, #0x1a
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C55A
    ldr r0, [pc, #0x814c560-0x814c550-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C55A:
    pop {r0}
    bx r0
    .byte 0, 0
off_814C560:    .word dword_2010CCC
// end of function sub_814C540

.thumb
sub_814C564:
    push {lr}
    mov r0, #0x1b
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C57E
    ldr r0, [pc, #0x814c584-0x814c574-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C57E:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C584:    .word dword_2010CCC
// end of function sub_814C564

.thumb
sub_814C588:
    push {lr}
    mov r0, #0x1c
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C5A2
    ldr r0, [pc, #0x814c5a8-0x814c598-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C5A2:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C5A8:    .word dword_2010CCC
// end of function sub_814C588

.thumb
sub_814C5AC:
    push {lr}
    mov r0, #0x1d
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C5C6
    ldr r0, [pc, #0x814c5cc-0x814c5bc-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C5C6:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C5CC:    .word dword_2010CCC
// end of function sub_814C5AC

.thumb
sub_814C5D0:
    push {lr}
    mov r0, #0x1e
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C5EA
    ldr r0, [pc, #0x814c5f0-0x814c5e0-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C5EA:
    pop {r0}
    bx r0
    .byte 0, 0
off_814C5F0:    .word dword_2010CCC
// end of function sub_814C5D0

.thumb
sub_814C5F4:
    push {r4,lr}
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    mov r0, #0x1f
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C618
    ldr r2, [pc, #0x814c620-0x814c606-2] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #1
    strb r0, [r1,#4]
    ldr r0, [r2]
    ldr r0, [r0,#0x24]
    str r4, [r0,#4]
    bl sub_814CB1C
loc_814C618:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0, 0
off_814C620:    .word dword_2010CCC
// end of function sub_814C5F4

.thumb
sub_814C624:
    push {lr}
    mov r0, #0x20 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C63E
    ldr r0, [pc, #0x814c644-0x814c634-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C63E:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C644:    .word dword_2010CCC
// end of function sub_814C624

.thumb
sub_814C648:
    push {lr}
    mov r0, #0x21 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C662
    ldr r0, [pc, #0x814c668-0x814c658-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C662:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C668:    .word dword_2010CCC
// end of function sub_814C648

.thumb
sub_814C66C:
    push {r4-r6,lr}
    add r6, r0, #0
    lsl r4, r1, #0x18
    lsr r5, r4, #0x18
    mov r0, #0x24 
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C6AA
    lsr r2, r4, #0x1a
    mov r0, #3
    and r0, r5
    cmp r0, #0
    beq loc_814C68C
    add r2, #1
loc_814C68C:
    ldr r1, [pc, #0x814c6b0-0x814c68c-4] // =dword_2010CCC
    ldr r0, [r1]
    strb r2, [r0,#4]
    ldr r0, [r1]
    ldr r1, [r0,#0x24]
    add r1, #4
    ldrb r2, [r0,#4]
    mov r0, #0x80
    lsl r0, r0, #0x13
    orr r2, r0
    add r0, r6, #0
    bl SWI_CpuSet
    bl sub_814CB1C
loc_814C6AA:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814C6B0:    .word dword_2010CCC
// end of function sub_814C66C

.thumb
sub_814C6B4:
    push {r4-r6,lr}
    add r6, r0, #0
    lsl r4, r1, #0x18
    lsr r5, r4, #0x18
    mov r0, #0x25 
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C6F2
    lsr r2, r4, #0x1a
    mov r0, #3
    and r0, r5
    cmp r0, #0
    beq loc_814C6D4
    add r2, #1
loc_814C6D4:
    ldr r1, [pc, #0x814c6f8-0x814c6d4-4] // =dword_2010CCC
    ldr r0, [r1]
    strb r2, [r0,#4]
    ldr r0, [r1]
    ldr r1, [r0,#0x24]
    add r1, #4
    ldrb r2, [r0,#4]
    mov r0, #0x80
    lsl r0, r0, #0x13
    orr r2, r0
    add r0, r6, #0
    bl SWI_CpuSet
    bl sub_814CB1C
loc_814C6F2:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814C6F8:    .word dword_2010CCC
// end of function sub_814C6B4

.thumb
sub_814C6FC:
    push {lr}
    mov r0, #0x26 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C716
    ldr r0, [pc, #0x814c71c-0x814c70c-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C716:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C71C:    .word dword_2010CCC
// end of function sub_814C6FC

.thumb
sub_814C720:
    push {lr}
    mov r0, #0x27 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C73A
    ldr r0, [pc, #0x814c740-0x814c730-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C73A:
    pop {r0}
    bx r0
    .byte 0, 0
off_814C740:    .word dword_2010CCC
// end of function sub_814C720

    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    add r5, r4, #0
    mov r0, #0x28 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    cmp r3, #0
    bne unk_814C78A
    cmp r4, #0
    bne unk_814C76C
    ldr r0, [pc, #0x814c768-0x814c75e-2] // =dword_2010CCC
    ldr r0, [r0]
    strb r3, [r0,#4]
    b unk_814C786
    .balign 4, 0x00
off_814C768:    .word dword_2010CCC
unk_814C76C:    .byte 8
    .byte 0x4A 
    .byte 0x11
    .byte 0x68 
    .byte 1
    .byte 0x20
    .byte 8
    .byte 0x71 
    .byte 0x10
    .byte 0x68 
    .byte 0x40 
    .byte 0x6A 
    .byte 4
    .byte 0x30 
    .byte 5
    .byte 0x70 
    .byte 1
    .byte 0x30 
    .byte 3
    .byte 0x70 
    .byte 1
    .byte 0x30 
    .byte 3
    .byte 0x70 
    .byte 0x43 
    .byte 0x70 
unk_814C786:    .byte 0
    .byte 0xF0
    .byte 0xC9
    .byte 0xF9
unk_814C78A:    .byte 0x30 
    .byte 0xBC
    .byte 1
    .byte 0xBC
    .byte 0
    .byte 0x47 
    .word dword_2010CCC
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    lsl r1, r1, #0x18
    lsr r5, r1, #0x18
    mov r0, #0x29 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    cmp r3, #0
    bne loc_814C7CA
    ldr r2, [pc, #0x814c7d0-0x814c7ac-4] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #1
    strb r0, [r1,#4]
    ldr r0, [r2]
    ldr r0, [r0,#0x24]
    add r0, #4
    strb r4, [r0]
    add r0, #1
    strb r5, [r0]
    add r0, #1
    strb r3, [r0]
    strb r3, [r0,#1]
    bl sub_814CB1C
loc_814C7CA:
    pop {r4,r5}
    pop {r0}
    bx r0
off_814C7D0:    .word dword_2010CCC
.thumb
sub_814C7D4:
    push {lr}
    mov r0, #0x37 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C7EE
    ldr r0, [pc, #0x814c7f4-0x814c7e4-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C7EE:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C7F4:    .word dword_2010CCC
// end of function sub_814C7D4

.thumb
sub_814C7F8:
    push {r4,lr}
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    mov r0, #0x30 
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C81C
    ldr r2, [pc, #0x814c824-0x814c80a-2] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #1
    strb r0, [r1,#4]
    ldr r0, [r2]
    ldr r0, [r0,#0x24]
    str r4, [r0,#4]
    bl sub_814CB1C
loc_814C81C:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C824:    .word dword_2010CCC
// end of function sub_814C7F8

.thumb
sub_814C828:
    push {r4,r5,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    lsl r1, r1, #0x18
    lsr r4, r1, #0x18
    mov r0, #0x31 
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C854
    ldr r2, [pc, #0x814c85c-0x814c83e-2] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #1
    strb r0, [r1,#4]
    ldr r0, [r2]
    ldr r1, [r0,#0x24]
    lsl r0, r4, #8
    orr r0, r5
    str r0, [r1,#4]
    bl sub_814CB1C
loc_814C854:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C85C:    .word dword_2010CCC
// end of function sub_814C828

.thumb
sub_814C860:
    push {r4-r6,lr}
    lsl r0, r0, #0x10
    lsr r5, r0, #0x10
    lsl r1, r1, #0x10
    lsr r4, r1, #0x10
    lsl r2, r2, #0x18
    lsr r6, r2, #0x18
    mov r0, #0x32 
    bl sub_814CA44
    lsl r0, r0, #0x10
    cmp r0, #0
    bne loc_814C892
    ldr r2, [pc, #0x814c898-0x814c87a-2] // =dword_2010CCC
    ldr r1, [r2]
    mov r0, #2
    strb r0, [r1,#4]
    lsl r0, r5, #0x10
    orr r0, r4
    ldr r1, [r2]
    ldr r1, [r1,#0x24]
    str r0, [r1,#4]
    str r6, [r1,#8]
    bl sub_814CB1C
loc_814C892:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814C898:    .word dword_2010CCC
// end of function sub_814C860

.thumb
sub_814C89C:
    push {lr}
    mov r0, #0x33 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C8B6
    ldr r0, [pc, #0x814c8bc-0x814c8ac-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C8B6:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C8BC:    .word dword_2010CCC
// end of function sub_814C89C

.thumb
sub_814C8C0:
    push {lr}
    mov r0, #0x34 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C8DA
    ldr r0, [pc, #0x814c8e0-0x814c8d0-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C8DA:
    pop {r0}
    bx r0
    .byte 0, 0
off_814C8E0:    .word dword_2010CCC
// end of function sub_814C8C0

.thumb
sub_814C8E4:
    push {lr}
    mov r0, #0x3d 
    bl sub_814CA44
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814C8FE
    ldr r0, [pc, #0x814c904-0x814c8f4-4] // =dword_2010CCC
    ldr r0, [r0]
    strb r1, [r0,#4]
    bl sub_814CB1C
loc_814C8FE:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814C904:    .word dword_2010CCC
// end of function sub_814C8E4

.thumb
sub_814C908:
    push {r4,lr}
    ldr r4, [pc, #0x814c920-0x814c90a-2] // =dword_2010CCC
    ldr r1, [r4]
    ldr r0, [r1,#0xc]
    cmp r0, #2
    beq loc_814C92E
    cmp r0, #2
    bhi loc_814C924
    cmp r0, #1
    beq loc_814C93C
    b loc_814C964
    .byte 0, 0
off_814C920:    .word dword_2010CCC
loc_814C924:
    cmp r0, #3
    beq loc_814C946
    cmp r0, #4
    beq loc_814C93C
    b loc_814C964
loc_814C92E:
    ldrb r0, [r1,#0x10]
    mov r0, #1
    strb r0, [r1,#0x10]
    mov r0, #0x32 
    bl sub_814C96C
    b loc_814C964
loc_814C93C:
    bl sub_814CA18
    bl sub_814CB90
    b loc_814C964
loc_814C946:
    ldrb r0, [r1,#0x10]
    mov r0, #1
    strb r0, [r1,#0x10]
    bl sub_814CA18
    bl sub_814CC10
    ldr r0, [r4]
    ldr r2, [r0,#0x18]
    cmp r2, #0
    beq loc_814C964
    mov r0, #0xff
    mov r1, #0
    bl sub_814DA68
loc_814C964:
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814C908

.thumb
sub_814C96C:
    push {r4-r7,lr}
    lsl r0, r0, #0x18
    lsr r3, r0, #0x18
    add r5, r3, #0
    ldr r2, [pc, #0x814c99c-0x814c974-4] // =dword_2010CCC
    ldr r0, [r2]
    ldrb r0, [r0,#0xa]
    lsl r0, r0, #2
    ldr r1, [pc, #0x814c9a0-0x814c97c-4] // =Timer0Counter_Reload
    add r4, r0, r1
    add r1, #2
    add r7, r0, r1
    ldr r1, [pc, #0x814c9a4-0x814c984-4] // =InterruptMasterEnableRegister
    mov r0, #0
    strh r0, [r1]
    add r6, r2, #0
    cmp r3, #0x50 
    beq loc_814C9C4
    cmp r3, #0x50 
    bgt loc_814C9A8
    cmp r3, #0x32 
    beq loc_814C9B2
    b loc_814C9F0
    .balign 4, 0x00
off_814C99C:    .word dword_2010CCC
off_814C9A0:    .word Timer0Counter_Reload
off_814C9A4:    .word InterruptMasterEnableRegister
loc_814C9A8:
    cmp r5, #0x64 
    beq loc_814C9D4
    cmp r5, #0x82
    beq loc_814C9E4
    b loc_814C9F0
loc_814C9B2:
    ldr r1, [pc, #0x814c9c0-0x814c9b2-2] // =0xFCCB
    add r0, r1, #0
    strh r0, [r4]
    ldr r1, [r6]
    mov r0, #1
    b loc_814C9EE
    .byte 0, 0
dword_814C9C0:    .word 0xFCCB
loc_814C9C4:
    ldr r1, [pc, #0x814c9d0-0x814c9c4-4] // =0xFAE0
    add r0, r1, #0
    strh r0, [r4]
    ldr r1, [r6]
    mov r0, #2
    b loc_814C9EE
dword_814C9D0:    .word 0xFAE0
loc_814C9D4:
    ldr r1, [pc, #0x814c9e0-0x814c9d4-4] // =0xF996
    add r0, r1, #0
    strh r0, [r4]
    ldr r1, [r6]
    mov r0, #3
    b loc_814C9EE
dword_814C9E0:    .word 0xF996
loc_814C9E4:
    ldr r1, [pc, #0x814ca0c-0x814c9e4-4] // =0xF7AD
    add r0, r1, #0
    strh r0, [r4]
    ldr r1, [r6]
    mov r0, #4
loc_814C9EE:
    str r0, [r1,#0xc]
loc_814C9F0:
    mov r0, #0xc3
    strh r0, [r7]
    ldr r2, [pc, #0x814ca10-0x814c9f4-4] // =InterruptRequestFlags_IRQAcknowledge
    ldr r1, [r6]
    mov r0, #8
    ldrb r1, [r1,#0xa]
    lsl r0, r1
    strh r0, [r2]
    ldr r1, [pc, #0x814ca14-0x814ca00-4] // =InterruptMasterEnableRegister
    mov r0, #1
    strh r0, [r1]
    pop {r4-r7}
    pop {r0}
    bx r0
dword_814CA0C:    .word 0xF7AD
off_814CA10:    .word InterruptRequestFlags_IRQAcknowledge
off_814CA14:    .word InterruptMasterEnableRegister
// end of function sub_814C96C

.thumb
sub_814CA18:
    ldr r2, [pc, #0x814ca38-0x814ca18-4] // =dword_2010CCC
    ldr r0, [r2]
    mov r1, #0
    str r1, [r0,#0xc]
    ldrb r0, [r0,#0xa]
    lsl r0, r0, #2
    ldr r3, [pc, #0x814ca3c-0x814ca24-4] // =Timer0Counter_Reload
    add r0, r0, r3
    strh r1, [r0]
    ldr r0, [r2]
    ldrb r0, [r0,#0xa]
    lsl r0, r0, #2
    ldr r2, [pc, #0x814ca40-0x814ca30-4] // =Timer0Control
    add r0, r0, r2
    strh r1, [r0]
    bx lr
off_814CA38:    .word dword_2010CCC
off_814CA3C:    .word Timer0Counter_Reload
off_814CA40:    .word Timer0Control
// end of function sub_814CA18

.thumb
sub_814CA44:
    push {r4-r6,lr}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    add r6, r5, #0
    ldr r0, [pc, #0x814ca70-0x814ca4c-4] // =InterruptMasterEnableRegister
    ldrh r0, [r0]
    cmp r0, #0
    bne loc_814CA78
    ldr r0, [pc, #0x814ca74-0x814ca54-4] // =dword_2010CCC
    ldr r1, [r0]
    ldrh r0, [r1,#0x12]
    mov r0, #6
    strh r0, [r1,#0x12]
    ldr r2, [r1,#0x18]
    cmp r2, #0
    beq loc_814CAC2
    ldrh r1, [r1,#0x12]
    add r0, r5, #0
    bl sub_814DA68
    b loc_814CAC2
    .byte 0, 0
off_814CA70:    .word InterruptMasterEnableRegister
off_814CA74:    .word dword_2010CCC
loc_814CA78:
    ldr r4, [pc, #0x814caa4-0x814ca78-4] // =dword_2010CCC
    ldr r2, [r4]
    add r3, r2, #0
    add r3, #0x2c 
    ldrb r0, [r3]
    cmp r0, #1
    bne loc_814CAA8
    ldrh r0, [r2,#0x12]
    mov r1, #0
    mov r0, #2
    strh r0, [r2,#0x12]
    ldrb r0, [r3]
    strb r1, [r3]
    ldr r0, [r4]
    ldr r2, [r0,#0x18]
    cmp r2, #0
    beq loc_814CAC2
    ldrh r1, [r0,#0x12]
    add r0, r5, #0
loc_814CA9E:
    bl sub_814DA68
    b loc_814CAC2
off_814CAA4:    .word dword_2010CCC
loc_814CAA8:
    ldrb r0, [r2,#0x14]
    cmp r0, #0
    bne loc_814CAC6
    ldrh r0, [r2,#0x12]
    mov r0, #4
    strh r0, [r2,#0x12]
    ldr r3, [r2,#0x18]
    cmp r3, #0
    beq loc_814CAC2
    ldrh r1, [r2,#0x12]
    add r0, r5, #0
    bl sub_814DA6C
loc_814CAC2:
    mov r0, #1
    b loc_814CB0E
loc_814CAC6:
    ldrb r0, [r3]
    mov r1, #0
    mov r0, #1
    strb r0, [r3]
    ldr r0, [r4]
    strb r6, [r0,#6]
    ldr r0, [r4]
    str r1, [r0]
    strb r1, [r0,#4]
    ldr r0, [r4]
    strb r1, [r0,#5]
    ldr r0, [r4]
    strb r1, [r0,#7]
    ldr r0, [r4]
    strb r1, [r0,#8]
    ldr r0, [r4]
    strb r1, [r0,#9]
    ldr r0, [r4]
    str r1, [r0,#0xc]
    ldrb r2, [r0,#0x10]
    strb r1, [r0,#0x10]
    ldr r0, [r4]
    ldrh r2, [r0,#0x12]
    mov r2, #0
    strh r1, [r0,#0x12]
    strb r2, [r0,#0x15]
    ldr r1, [pc, #0x814cb14-0x814cafa-2] // =SIOModeSelect_GeneralPurposeData
    mov r2, #0x80
    lsl r2, r2, #1
    add r0, r2, #0
    strh r0, [r1]
    sub r1, #0xc
    ldr r2, [pc, #0x814cb18-0x814cb06-2] // =0x5003
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
loc_814CB0E:
    pop {r4-r6}
    pop {r1}
    bx r1
off_814CB14:    .word SIOModeSelect_GeneralPurposeData
dword_814CB18:    .word 0x5003
// end of function sub_814CA44

.thumb
sub_814CB1C:
    push {r4,r5,lr}
    ldr r5, [pc, #0x814cb74-0x814cb1e-2] // =dword_2010CCC
    ldr r0, [r5]
    ldr r3, [r0,#0x24]
    ldrb r1, [r0,#4]
    lsl r1, r1, #8
    ldrb r0, [r0,#6]
    ldr r2, [pc, #0x814cb78-0x814cb2a-2] // =0x99660000
    orr r0, r2
    orr r1, r0
    str r1, [r3]
    ldr r2, [pc, #0x814cb7c-0x814cb32-2] // =SIOData0_Parent__Multi_PlayerMode_
    ldr r1, [r5]
    ldr r0, [r1,#0x24]
    ldr r0, [r0]
    str r0, [r2]
    mov r2, #0
    str r2, [r1]
    mov r0, #1
    strb r0, [r1,#5]
    ldr r4, [pc, #0x814cb80-0x814cb44-4] // =InterruptMasterEnableRegister
    ldrh r3, [r4]
    strh r2, [r4]
    ldr r2, [pc, #0x814cb84-0x814cb4a-2] // =InterruptEnableRegister
    ldr r1, [r5]
    mov r0, #8
    ldrb r1, [r1,#0xa]
    lsl r0, r1
    ldrh r1, [r2]
    orr r0, r1
    strh r0, [r2]
    ldrh r0, [r2]
    mov r1, #0x80
    orr r0, r1
    strh r0, [r2]
    strh r3, [r4]
    ldr r1, [pc, #0x814cb88-0x814cb64-4] // =SIOControlRegister
    ldr r2, [pc, #0x814cb8c-0x814cb66-2] // =0x5083
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
    pop {r4,r5}
    pop {r1}
    bx r1
off_814CB74:    .word dword_2010CCC
dword_814CB78:    .word 0x99660000
off_814CB7C:    .word SIOData0_Parent__Multi_PlayerMode_
off_814CB80:    .word InterruptMasterEnableRegister
off_814CB84:    .word InterruptEnableRegister
off_814CB88:    .word SIOControlRegister
dword_814CB8C:    .word 0x5083
// end of function sub_814CB1C

.thumb
sub_814CB90:
    push {r4,lr}
    ldr r4, [pc, #0x814cba8-0x814cb92-2] // =dword_2010CCC
    ldr r2, [r4]
    ldrb r0, [r2,#0x15]
    add r3, r4, #0
    cmp r0, #1
    bhi loc_814CBAC
    add r0, #1
    strb r0, [r2,#0x15]
    bl sub_814CB1C
    b loc_814CC06
off_814CBA8:    .word dword_2010CCC
loc_814CBAC:
    ldrb r0, [r2,#6]
    cmp r0, #0x27 
    beq loc_814CBBE
    cmp r0, #0x25 
    beq loc_814CBBE
    cmp r0, #0x35 
    beq loc_814CBBE
    cmp r0, #0x37 
    bne loc_814CBE0
loc_814CBBE:
    ldr r0, [r3]
    ldrh r1, [r0,#0x12]
    mov r2, #0
    mov r1, #1
    strh r1, [r0,#0x12]
    add r0, #0x2c 
    ldrb r1, [r0]
    strb r2, [r0]
    ldr r1, [r3]
    ldr r2, [r1,#0x18]
    cmp r2, #0
    beq loc_814CC06
    ldrb r0, [r1,#6]
    ldrh r1, [r1,#0x12]
    bl sub_814DA68
    b loc_814CC06
loc_814CBE0:
    ldrh r0, [r2,#0x12]
    mov r1, #0
    mov r0, #1
    strh r0, [r2,#0x12]
    add r0, r2, #0
    add r0, #0x2c 
    ldrb r2, [r0]
    strb r1, [r0]
    ldr r1, [r4]
    ldr r2, [r1,#0x18]
    cmp r2, #0
    beq loc_814CC00
    ldrb r0, [r1,#6]
    ldrh r1, [r1,#0x12]
loc_814CBFC:
    bl sub_814DA68
loc_814CC00:
    ldr r1, [r4]
    mov r0, #4
    str r0, [r1]
loc_814CC06:
    mov r0, #0
    pop {r4}
    pop {r1}
    bx r1
    .byte 0
    .byte 0
// end of function sub_814CB90

.thumb
sub_814CC10:
    ldr r3, [pc, #0x814cc3c-0x814cc10-4] // =dword_2010CCC
    ldr r1, [r3]
    mov r0, #5
    str r0, [r1]
    mov r2, #0
    strb r2, [r1,#4]
    ldr r0, [r3]
    strb r2, [r0,#5]
    ldr r1, [pc, #0x814cc40-0x814cc20-4] // =SIOData0_Parent__Multi_PlayerMode_
    mov r0, #0x80
    lsl r0, r0, #0x18
    str r0, [r1]
    add r1, #8
    strh r2, [r1]
    ldr r2, [pc, #0x814cc44-0x814cc2c-4] // =0x5003
    add r0, r2, #0
    strh r0, [r1]
    add r2, #0x7f
    add r0, r2, #0
    strh r0, [r1]
    mov r0, #0
    bx lr
off_814CC3C:    .word dword_2010CCC
off_814CC40:    .word SIOData0_Parent__Multi_PlayerMode_
dword_814CC44:    .word 0x5003
// end of function sub_814CC10

.thumb
sub_814CC48:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    ldr r0, [pc, #0x814cc60-0x814cc52-2] // =InterruptMasterEnableRegister
    ldrh r0, [r0]
    cmp r0, #0
    bne loc_814CC64
    mov r0, #1
    neg r0, r0
    b loc_814CCE4
off_814CC60:    .word InterruptMasterEnableRegister
loc_814CC64:
    ldr r0, [pc, #0x814cc90-0x814cc64-4] // =InterruptEnableRegister
    ldrh r0, [r0]
    mov r8, r0
    ldr r4, [pc, #0x814cc94-0x814cc6a-2] // =dword_2010CCC
    ldr r1, [r4]
    mov r0, #0xa
    str r0, [r1]
    ldr r0, [pc, #0x814cc98-0x814cc72-2] // =sub_814CE64+1
    bl sub_814C378
    bl sub_814CCFC
    ldr r0, [r4]
    ldrb r0, [r0,#0xa]
    lsl r0, r0, #2
    ldr r1, [pc, #0x814cc9c-0x814cc82-2] // =Timer0Counter_Reload
    add r4, r0, r1
    lsl r0, r5, #0x1b
    lsr r5, r0, #0x18
    mov r7, #0
    b loc_814CCB2
    .byte 0, 0
off_814CC90:    .word InterruptEnableRegister
off_814CC94:    .word dword_2010CCC
off_814CC98:    .word sub_814CE64+1
off_814CC9C:    .word Timer0Counter_Reload
loc_814CCA0:
    strh r6, [r4,#2]
    strh r6, [r4]
    mov r0, #0x83
    strh r0, [r4,#2]
loc_814CCA8:
    ldrh r0, [r4]
    cmp r0, #0x1f
    bls loc_814CCA8
    strh r7, [r4,#2]
    strh r7, [r4]
loc_814CCB2:
    sub r0, r5, #1
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #0xff
    beq loc_814CCC6
    bl sub_814CD70
    add r6, r0, #0
    cmp r6, #0
    beq loc_814CCA0
loc_814CCC6:
    ldr r1, [pc, #0x814ccf0-0x814ccc6-2] // =InterruptMasterEnableRegister
    mov r0, #0
    strh r0, [r1]
    ldr r0, [pc, #0x814ccf4-0x814cccc-4] // =InterruptEnableRegister
    mov r2, r8
    strh r2, [r0]
    mov r0, #1
    strh r0, [r1]
    ldr r0, [pc, #0x814ccf8-0x814ccd6-2] // =dword_2010CCC
    ldr r1, [r0]
    mov r0, #0
    str r0, [r1]
    bl sub_814C378
    add r0, r6, #0
loc_814CCE4:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r1}
    bx r1
    .byte 0, 0
off_814CCF0:    .word InterruptMasterEnableRegister
off_814CCF4:    .word InterruptEnableRegister
off_814CCF8:    .word dword_2010CCC
// end of function sub_814CC48

.thumb
sub_814CCFC:
    push {r4,r5,lr}
    sub sp, sp, #4
    ldr r3, [pc, #0x814cd54-0x814cd00-4] // =InterruptMasterEnableRegister
    mov r4, #0
    strh r4, [r3]
    ldr r2, [pc, #0x814cd58-0x814cd06-2] // =InterruptEnableRegister
    ldr r0, [pc, #0x814cd5c-0x814cd08-4] // =dword_2010CCC
    ldr r0, [r0]
    mov r1, #8
    ldrb r0, [r0,#0xa]
    lsl r1, r0
    mov r5, #0x80
    orr r1, r5
    ldrh r0, [r2]
    bic r0, r1
    strh r0, [r2]
    mov r0, #1
    strh r0, [r3]
    ldr r0, [pc, #0x814cd60-0x814cd20-4] // =SIOModeSelect_GeneralPurposeData
    strh r4, [r0]
    sub r2, #0xd8
    mov r1, #0x80
    lsl r1, r1, #5
    add r0, r1, #0
    strh r0, [r2]
    ldrh r0, [r2]
    mov r3, #0x81
    lsl r3, r3, #7
    add r1, r3, #0
    orr r0, r1
    strh r0, [r2]
    mov r0, #0
    str r0, [sp]
    ldr r1, [pc, #0x814cd64-0x814cd3e-2] // =byte_2010CD0
    ldr r2, [pc, #0x814cd68-0x814cd40-4] // =0x5000003
    mov r0, sp
    bl SWI_CpuSet
    ldr r0, [pc, #0x814cd6c-0x814cd48-4] // =InterruptRequestFlags_IRQAcknowledge
    strh r5, [r0]
    add sp, sp, #4
    pop {r4,r5}
    pop {r0}
    bx r0
off_814CD54:    .word InterruptMasterEnableRegister
off_814CD58:    .word InterruptEnableRegister
off_814CD5C:    .word dword_2010CCC
off_814CD60:    .word SIOModeSelect_GeneralPurposeData
off_814CD64:    .word byte_2010CD0
dword_814CD68:    .word 0x5000003
off_814CD6C:    .word InterruptRequestFlags_IRQAcknowledge
// end of function sub_814CCFC

.thumb
sub_814CD70:
    push {r4-r7,lr}
    ldr r0, [pc, #0x814cd84-0x814cd72-2] // =byte_2010CD0
    ldrb r1, [r0,#0x1] // (byte_2010CD1 - 0x2010cd0)
    mov r12, r1
    add r7, r0, #0
    cmp r1, #0
    beq loc_814CD88
    cmp r1, #1
    beq loc_814CDC0
    b loc_814CE58
off_814CD84:    .word byte_2010CD0
loc_814CD88:
    mov r6, #1
    strb r6, [r7]
    ldr r3, [pc, #0x814cdb4-0x814cd8c-4] // =SIOControlRegister
    ldrh r0, [r3]
    mov r5, #1
    orr r0, r5
    strh r0, [r3]
    ldr r4, [pc, #0x814cdb8-0x814cd96-2] // =InterruptMasterEnableRegister
    mov r0, r12
    strh r0, [r4]
    ldr r2, [pc, #0x814cdbc-0x814cd9c-4] // =InterruptEnableRegister
    ldrh r0, [r2]
    mov r1, #0x80
    orr r0, r1
    strh r0, [r2]
    strh r6, [r4]
    strb r5, [r7,#0x1] // (byte_2010CD1 - 0x2010cd0)
    ldrb r0, [r3]
    orr r0, r1
    strb r0, [r3]
    b loc_814CE5C
    .balign 4, 0x00
off_814CDB4:    .word SIOControlRegister
off_814CDB8:    .word InterruptMasterEnableRegister
off_814CDBC:    .word InterruptEnableRegister
loc_814CDC0:
    ldrh r0, [r7,#0xa] // (word_2010CDA - 0x2010cd0)
    cmp r0, #0
    bne loc_814CE54
    ldrb r0, [r7]
    cmp r0, #1
    bne loc_814CDF0
    ldrh r0, [r7,#0x2] // (word_2010CD2 - 0x2010cd0)
    cmp r0, #0
    bne loc_814CE5C
    ldr r3, [pc, #0x814cde8-0x814cdd2-2] // =InterruptMasterEnableRegister
    strh r0, [r3]
    ldr r2, [pc, #0x814cdec-0x814cdd6-2] // =SIOControlRegister
    ldrh r0, [r2]
    mov r1, #0x80
    orr r0, r1
    strh r0, [r2]
    mov r1, r12
    strh r1, [r3]
    b loc_814CE5C
    .balign 4, 0x00
off_814CDE8:    .word InterruptMasterEnableRegister
off_814CDEC:    .word SIOControlRegister
loc_814CDF0:
    ldrh r1, [r7,#0x4] // (word_2010CD4 - 0x2010cd0)
    ldr r0, [pc, #0x814ce3c-0x814cdf2-2] // =0x8001
    cmp r1, r0
    beq loc_814CE5C
    ldrh r6, [r7,#0x2] // (word_2010CD2 - 0x2010cd0)
    cmp r6, #0
    bne loc_814CE5C
    ldr r4, [pc, #0x814ce40-0x814cdfe-2] // =InterruptMasterEnableRegister
    strh r6, [r4]
    ldr r3, [pc, #0x814ce44-0x814ce02-2] // =InterruptEnableRegister
    ldrh r1, [r3]
    ldr r0, [pc, #0x814ce48-0x814ce06-2] // =0xFF7F
    and r0, r1
    strh r0, [r3]
    mov r7, r12
    strh r7, [r4]
    ldr r2, [pc, #0x814ce4c-0x814ce10-4] // =SIOControlRegister
    strh r6, [r2]
    mov r1, #0x80
    lsl r1, r1, #5
    add r0, r1, #0
    strh r0, [r2]
    ldr r0, [pc, #0x814ce50-0x814ce1c-4] // =InterruptRequestFlags_IRQAcknowledge
    mov r5, #0x80
    strh r5, [r0]
    ldrh r0, [r2]
    mov r7, #0x81
    lsl r7, r7, #7
    add r1, r7, #0
    orr r0, r1
    strh r0, [r2]
    strh r6, [r4]
    ldrh r0, [r3]
    orr r0, r5
    strh r0, [r3]
    mov r0, r12
    strh r0, [r4]
    b loc_814CE5C
dword_814CE3C:    .word 0x8001
off_814CE40:    .word InterruptMasterEnableRegister
off_814CE44:    .word InterruptEnableRegister
dword_814CE48:    .word 0xFF7F
off_814CE4C:    .word SIOControlRegister
off_814CE50:    .word InterruptRequestFlags_IRQAcknowledge
loc_814CE54:
    mov r0, #2
    strb r0, [r7,#0x1] // (byte_2010CD1 - 0x2010cd0)
loc_814CE58:
    ldrh r0, [r7,#0xa] // (word_2010CDA - 0x2010cd0)
    b loc_814CE5E
loc_814CE5C:
    mov r0, #0
loc_814CE5E:
    pop {r4-r7}
    pop {r1}
    bx r1
// end of function sub_814CD70

.thumb
sub_814CE64:
    push {r4,r5,lr}
    ldr r0, [pc, #0x814ceac-0x814ce66-2] // =SIOData0_Parent__Multi_PlayerMode_
    ldr r5, [r0]
    ldr r0, [pc, #0x814ceb0-0x814ce6a-2] // =byte_2010CD0
    ldrb r1, [r0]
    add r4, r0, #0
    cmp r1, #1
    beq loc_814CE7E
    ldr r0, [pc, #0x814ceb4-0x814ce74-4] // =SIOControlRegister
    ldrh r1, [r0]
    mov r2, #0x80
    orr r1, r2
    strh r1, [r0]
loc_814CE7E:
    ldrb r2, [r4]
    lsl r1, r2, #4
    add r0, r5, #0
    lsl r0, r1
    lsr r1, r0, #0x10
    mov r0, #1
    sub r0, r0, r2
    lsl r0, r0, #4
    lsl r5, r0
    add r0, r5, #0
    lsr r5, r0, #0x10
    ldrh r0, [r4,#0xa] // (word_2010CDA - 0x2010cd0)
    cmp r0, #0
    bne loc_814CED2
    ldrh r2, [r4,#0x6] // (word_2010CD6 - 0x2010cd0)
    cmp r1, r2
    bne loc_814CED0
    ldrh r3, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
    cmp r3, #3
    bls loc_814CEB8
    strh r5, [r4,#0xa] // (word_2010CDA - 0x2010cd0)
    b loc_814CED2
    .balign 4, 0x00
off_814CEAC:    .word SIOData0_Parent__Multi_PlayerMode_
off_814CEB0:    .word byte_2010CD0
off_814CEB4:    .word SIOControlRegister
loc_814CEB8:
    ldrh r0, [r4,#0x4] // (word_2010CD4 - 0x2010cd0)
    mvn r0, r0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r1, r0
    bne loc_814CED2
    mvn r0, r2
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r5, r0
    bne loc_814CED2
    add r0, r3, #1
loc_814CED0:
    strh r0, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
loc_814CED2:
    ldrh r0, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
    cmp r0, #3
    bhi loc_814CEE8
    lsl r0, r0, #1
    ldr r1, [pc, #0x814cee4-0x814ceda-2] // =aNintendosio32i
    add r0, r0, r1
    ldrh r0, [r0]
    b loc_814CEEA
    .balign 4, 0x00
off_814CEE4:    .word aNintendosio32i
loc_814CEE8:
    ldr r0, [pc, #0x814cf40-0x814cee8-4] // =0x8001
loc_814CEEA:
    strh r0, [r4,#0x4] // (word_2010CD4 - 0x2010cd0)
    mvn r0, r5
    strh r0, [r4,#0x6] // (word_2010CD6 - 0x2010cd0)
    ldr r3, [pc, #0x814cf44-0x814cef0-4] // =SIOData0_Parent__Multi_PlayerMode_
    ldrh r2, [r4,#0x4] // (word_2010CD4 - 0x2010cd0)
    ldrb r1, [r4]
    mov r0, #1
    sub r0, r0, r1
    lsl r0, r0, #4
    lsl r2, r0
    ldrh r0, [r4,#0x6] // (word_2010CD6 - 0x2010cd0)
    lsl r1, r1, #4
    lsl r0, r1
    add r2, r2, r0
    str r2, [r3]
    ldrb r0, [r4]
    cmp r0, #1
    bne loc_814CF38
    ldrh r0, [r4,#0x2] // (word_2010CD2 - 0x2010cd0)
    cmp r0, #0
    bne loc_814CF1A
    ldr r0, [pc, #0x814cf48-0x814cf14-4] // =0x494E
    cmp r5, r0
    bne loc_814CF38
loc_814CF1A:
    mov r0, #0
    ldr r1, [pc, #0x814cf4c-0x814cf1c-4] // =0x254
loc_814CF1E:
    add r0, #1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, r1
    bls loc_814CF1E
    ldrh r0, [r4,#0xa] // (word_2010CDA - 0x2010cd0)
    cmp r0, #0
    bne loc_814CF38
    ldr r0, [pc, #0x814cf50-0x814cf2e-2] // =SIOControlRegister
    ldrh r1, [r0]
    mov r2, #0x80
    orr r1, r2
    strh r1, [r0]
loc_814CF38:
    pop {r4,r5}
    pop {r0}
    bx r0
    .byte 0, 0
dword_814CF40:    .word 0x8001
off_814CF44:    .word SIOData0_Parent__Multi_PlayerMode_
dword_814CF48:    .word 0x494E
dword_814CF4C:    .word 0x257
off_814CF50:    .word SIOControlRegister
dword_814CF54:    .word 0xE1A0C00D
    .word 0xE92DD800
    .word 0xE59F3050
    .word 0xE5930000
dword_814CF64:    .word 0xE5902000
    .word 0xE24CB004
    .word 0xE352000A
    .byte 6
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0x20
    .byte 0
    .byte 0x90
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0xE3
    .byte 0
    .byte 0x68 
    .byte 0x1B
    .byte 9
    .word 0x12FFF1E
    .byte 0x49 
    .byte 2
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
    .byte 0x14
    .byte 0x30 
    .byte 0xD0
    .byte 0xE5
    .byte 1
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 2
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 5
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
    .byte 0xA6
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
off_814CFB4:    .word dword_2010CCC
    .byte 0xD
    .byte 0xC0
    .byte 0xA0
    .byte 0xE1
    .byte 0x70 
    .byte 0xD8
    .byte 0x2D 
    .byte 0xE9
    .byte 0x50 
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 4
    .byte 0xB0
    .byte 0x4C 
    .byte 0xE2
    .byte 0xBB
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 0x12
    .byte 0x4E 
    .byte 0xA0
    .byte 0xE3
    .byte 0x54 
    .byte 0x22 
    .byte 0x9F
    .byte 0xE5
    .byte 1
    .byte 0x43 
    .byte 0x84
    .byte 0xE2
    .byte 0
    .byte 0xE0
    .byte 0x94
    .byte 0xE5
    .byte 0x0, 0xC0
    .byte 0x92
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x9C
    .byte 0xE5
    .byte 2
    .byte 0x60 
    .byte 0xA0
    .byte 0xE1
    .byte 0
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x11
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 2
    .byte 1
    .byte 0x5E 
    .byte 0xE3
    .byte 0x2F 
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 5
    .byte 0x20
    .byte 0xDC
    .byte 0xE5
    .byte 4
    .byte 0x30 
    .byte 0xDC
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 7
    .byte 0
    .byte 0
    .byte 0x8A
    .byte 0x24 
    .byte 0x30 
    .byte 0x9C
    .byte 0xE5
    .byte 2
    .byte 0x10
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 0x21 
    .byte 0x93
    .byte 0xE7
    .byte 0
    .byte 0x20
    .byte 0x84
    .byte 0xE5
    .byte 5
    .byte 0x30 
    .byte 0xDC
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 5
    .byte 0x30 
    .byte 0xCC
    .byte 0xE5
    .byte 0x3A 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 1
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x8C
    .byte 0xE5
    .byte 0
    .byte 0xE0
    .byte 0x84
    .byte 0xE5
    .byte 0x36 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0x30 
    .byte 0x9C
    .byte 0xE5
    .byte 1
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0x99
    .byte 0x34 
    .byte 0xA0
    .byte 0xE3
    .byte 0x66 
    .byte 0x38 
    .byte 0x83
    .byte 0xE2
    .byte 2
    .byte 0x51 
    .byte 0xA0
    .byte 0xE3
    .byte 0xC5
    .byte 0x27 
    .byte 0xE
    .byte 0xE0
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 0x16
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 8
    .byte 0x30 
    .byte 0xCC
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x96
    .byte 0xE5
    .byte 8
    .byte 0
    .byte 0xD1
    .byte 0xE5
    .byte 0x28 
    .byte 0x20
    .byte 0x91
    .byte 0xE5
    .byte 0
    .byte 0xE1
    .byte 0x82
    .byte 0xE7
    .byte 8
    .byte 0x30 
    .byte 0xD1
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 8
    .byte 0x30 
    .byte 0xC1
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x96
    .byte 0xE5
    .byte 9
    .byte 0xE0
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x96
    .byte 0xE5
    .byte 0x2E 
    .byte 0x24 
    .byte 0xA0
    .byte 0xE1
    .byte 7
    .byte 0x20
    .byte 0xC3
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x96
    .byte 0xE5
    .byte 7
    .byte 0x20
    .byte 0xD1
    .byte 0xE5
    .byte 8
    .byte 0x30 
    .byte 0xD1
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 0x15
    .byte 0
    .byte 0
    .byte 0x3A 
    .byte 2
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x81
    .byte 0xE5
    .byte 0
    .byte 0x50 
    .byte 0x84
    .byte 0xE5
    .byte 0x16
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0xC3
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 0x82
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0x7D 
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 0x5D 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0x30 
    .byte 0x9C
    .byte 0xE5
    .byte 2
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0xF
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 8
    .byte 0x10
    .byte 0xDC
    .byte 0xE5
    .byte 0x28 
    .byte 0x20
    .byte 0x9C
    .byte 0xE5
    .byte 1
    .byte 0xE1
    .byte 0x82
    .byte 0xE7
    .byte 8
    .byte 0x30 
    .byte 0xDC
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 8
    .byte 0x30 
    .byte 0xCC
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x96
    .byte 0xE5
    .byte 7
    .byte 0x20
    .byte 0xD1
    .byte 0xE5
    .byte 8
    .byte 0x30 
    .byte 0xD1
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 2
    .byte 0
    .byte 0
    .byte 0x2A 
    .byte 3
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x81
    .byte 0xE5
    .byte 1
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 2
    .byte 0x31 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x84
    .byte 0xE5
    .byte 1
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0x4D 
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 8
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 8
    .byte 0x50 
    .byte 0xE3
    .byte 0x45 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x4A 
    .byte 0x4F 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x43 
    .byte 0x84
    .byte 0xE2
    .byte 5
    .byte 0x5A 
    .byte 0xA0
    .byte 0xE3
    .byte 0xB
    .byte 0x30 
    .byte 0x85
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC4
    .byte 0xE1
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0x43 
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 8
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 8
    .byte 0x50 
    .byte 0xE3
    .byte 0x3B 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x9D
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 0x10
    .byte 0x96
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x91
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x50 
    .byte 0xE3
    .byte 0x32 
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 9
    .byte 0x30 
    .byte 0xD1
    .byte 0xE5
    .byte 0xA5
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0xA7
    .byte 0
    .byte 0x53 
    .byte 0x13
    .byte 4
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0xFF
    .byte 0x30 
    .byte 3
    .byte 0xE2
    .byte 0xB5
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 1
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0xB7
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x11
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0x12
    .byte 0x1E
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0x4A 
    .byte 0xCF
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0xC3
    .byte 0x8C
    .byte 0xE2
    .byte 0
    .byte 0
    .byte 0x96
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0x14
    .byte 0x30 
    .byte 0xC0
    .byte 0xE5
    .byte 2
    .byte 0x21 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x20
    .byte 0x81
    .byte 0xE5
    .byte 5
    .byte 0x3A 
    .byte 0x83
    .byte 0xE2
    .byte 2
    .byte 0x20
    .byte 0x83
    .byte 0xE2
    .byte 0xB0
    .byte 0x20
    .byte 0xCC
    .byte 0xE1
    .byte 0x82
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xCC
    .byte 0xE1
    .byte 0
    .byte 0x20
    .byte 0x96
    .byte 0xE5
    .byte 5
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0xEE
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 5
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 3
    .byte 0x30 
    .byte 0x85
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC4
    .byte 0xE1
    .byte 4
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x20
    .byte 0x81
    .byte 0xE5
    .byte 0xB2
    .byte 1
    .byte 0xC1
    .byte 0xE1
    .byte 3
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 3
    .byte 0x30 
    .byte 0x85
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC4
    .byte 0xE1
    .byte 4
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x20
    .byte 0x81
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x96
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0x2C 
    .byte 0x30 
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x96
    .byte 0xE5
    .byte 0x18
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 8
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0xB2
    .byte 0x11
    .byte 0xD0
    .byte 0xE1
    .byte 6
    .byte 0
    .byte 0xD0
    .byte 0xE5
    .byte 0x9F
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 4
    .byte 0
    .hword 0xEA00
    .word dword_2010CCC
    .byte 3
    .byte 0x30 
    .byte 0x85
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC4
    .byte 0xE1
    .byte 0x83
    .byte 0x20
    .byte 0x85
    .byte 0xE2
    .byte 0xB0
    .byte 0x20
    .byte 0xC4
    .byte 0xE1
    .byte 0x70 
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
    .byte 0xD
    .byte 0xC0
    .byte 0xA0
    .byte 0xE1
    .byte 0x70 
    .byte 0xD8
    .byte 0x2D 
    .byte 0xE9
    .byte 0x9C
    .byte 0x43 
    .byte 0x9F
    .byte 0xE5
    .byte 0x64 
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x94
    .byte 0xE5
    .byte 0
    .byte 0x60 
    .byte 0xA0
    .byte 0xE3
    .byte 0x10
    .byte 0x60 
    .byte 0xC3
    .byte 0xE5
    .byte 4
    .byte 0xB0
    .byte 0x4C 
    .byte 0xE2
    .byte 0x13
    .byte 1
    .byte 0
    .byte 0xEB
    .byte 6
    .byte 0
    .byte 0xA0
    .byte 0xE1
    .byte 0xF7
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 8
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 8
    .byte 0x50 
    .byte 0xE3
    .byte 4
    .byte 0x50 
    .byte 0xA0
    .byte 0xE1
    .byte 0xF1
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x4A 
    .byte 0x3F 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x33 
    .byte 0x83
    .byte 0xE2
    .byte 5
    .byte 0x2A 
    .byte 0xA0
    .byte 0xE3
    .byte 0xA
    .byte 0x20
    .byte 0x82
    .byte 0xE2
    .byte 0xB0
    .byte 0x20
    .byte 0xC3
    .byte 0xE1
    .byte 0x12
    .byte 0xEE
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0
    .byte 0x95
    .byte 0xE5
    .byte 1
    .byte 0xE3
    .byte 0x8E
    .byte 0xE2
    .word 0xE59EC000
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 5
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x30 
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0x28 
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 1
    .byte 0x40 
    .byte 0xA0
    .byte 0xE3
    .byte 0x99
    .byte 4
    .byte 0xA0
    .byte 0xE3
    .word 0xE583C000
    .byte 0x66 
    .byte 8
    .byte 0x80
    .byte 0xE2
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 0x20
    .byte 0x38 
    .byte 0xA0
    .byte 0xE1
    .byte 5
    .byte 0x40 
    .byte 0xC2
    .byte 0xE5
    .byte 0x2C 
    .byte 8
    .byte 0x53 
    .byte 0xE1
    .byte 0x79 
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0
    .byte 0x30 
    .byte 0x95
    .byte 0xE5
    .byte 0x2C 
    .byte 0x24 
    .byte 0xA0
    .byte 0xE1
    .byte 4
    .byte 0x20
    .byte 0xC3
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 6
    .byte 0xC0
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x95
    .byte 0xE5
    .byte 4
    .byte 0x30 
    .byte 0xD1
    .byte 0xE5
    .byte 6
    .byte 0
    .byte 0x53 
    .byte 0xE1
    .byte 0x16
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 6
    .byte 0x20
    .byte 0xD1
    .byte 0xE5
    .byte 0x27 
    .byte 0x30 
    .byte 0x42 
    .byte 0xE2
    .byte 0x36 
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 2
    .byte 0
    .byte 0x53 
    .byte 0x13
    .byte 6
    .byte 0
    .byte 0
    .byte 0x8A
    .byte 0x80
    .byte 0x30 
    .byte 0x82
    .byte 0xE2
    .byte 9
    .byte 0x30 
    .byte 0xC1
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 9
    .byte 0x30 
    .byte 0xD2
    .byte 0xE5
    .byte 0x24 
    .byte 0x10
    .byte 0x92
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x83
    .byte 0xE0
    .byte 0x2B 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x24 
    .byte 0x20
    .byte 0x91
    .byte 0xE5
    .byte 0xBC
    .byte 0x32 
    .byte 0x9F
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 6
    .byte 0x30 
    .byte 0xD2
    .byte 0xE5
    .byte 0x10
    .byte 0x30 
    .byte 0x43 
    .byte 0xE2
    .byte 0x2D 
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x31 
    .byte 0
    .byte 0
    .byte 0x8A
    .byte 0x24 
    .byte 0x30 
    .byte 0x92
    .byte 0xE5
    .byte 4
    .byte 0x40 
    .byte 0x83
    .byte 0xE5
    .byte 0x31 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 2
    .byte 0x31 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x8E
    .byte 0xE5
    .byte 5
    .byte 0x40 
    .byte 0xC1
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 0x1A
    .byte 0x31 
    .byte 0x83
    .byte 0xE2
    .byte 0
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 0x56 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 6
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x3C 
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 5
    .byte 0x10
    .byte 0xD0
    .byte 0xE5
    .byte 0x28 
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 1
    .byte 0xC1
    .byte 0x82
    .byte 0xE7
    .byte 5
    .byte 0x30 
    .byte 0xD0
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 5
    .byte 0x30 
    .byte 0xC0
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x95
    .byte 0xE5
    .byte 4
    .byte 0x20
    .byte 0xD1
    .byte 0xE5
    .byte 5
    .byte 0x30 
    .byte 0xD1
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 0x2E 
    .byte 0
    .byte 0
    .byte 0x2A 
    .byte 6
    .byte 0x20
    .byte 0xD1
    .byte 0xE5
    .byte 0x28 
    .byte 0x30 
    .byte 0x42 
    .byte 0xE2
    .byte 0x36 
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 1
    .byte 0
    .byte 0x53 
    .byte 0x13
    .byte 0xA
    .byte 0
    .byte 0
    .byte 0x8A
    .byte 0x80
    .byte 0x30 
    .byte 0x82
    .byte 0xE2
    .byte 9
    .byte 0x30 
    .byte 0xC1
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 9
    .byte 0x30 
    .byte 0xD2
    .byte 0xE5
    .byte 0x24 
    .byte 0x10
    .byte 0x92
    .byte 0xE5
    .byte 0x99
    .byte 0x34 
    .byte 0x83
    .byte 0xE3
    .byte 0x66 
    .byte 0x38 
    .byte 0x83
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x81
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 7
    .byte 0x60 
    .byte 0xC2
    .byte 0xE5
    .byte 0x12
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x24 
    .byte 0x20
    .byte 0x91
    .byte 0xE5
    .byte 0xFC
    .byte 0x31 
    .byte 0x9F
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 6
    .byte 0x30 
    .byte 0xD2
    .byte 0xE5
    .byte 0x10
    .byte 0x30 
    .byte 0x43 
    .byte 0xE2
    .byte 0x2D 
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x24 
    .byte 0x20
    .byte 0x92
    .byte 0x95
    .byte 1
    .byte 0x30 
    .byte 0xA0
    .byte 0x93
    .byte 1
    .byte 0
    .byte 0
    .byte 0x9A
    .byte 0x24 
    .byte 0x20
    .byte 0x92
    .byte 0xE5
    .byte 2
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 4
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x95
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 7
    .byte 0x30 
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x95
    .byte 0xE5
    .byte 2
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 0xB2
    .byte 0x31 
    .byte 0xC1
    .byte 0xE1
    .byte 0
    .byte 0
    .byte 0x95
    .byte 0xE5
    .byte 0x24 
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 0x12
    .byte 0x3E 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x10
    .byte 0x92
    .byte 0xE5
    .byte 1
    .byte 0x33 
    .byte 0x83
    .byte 0xE2
    .byte 0
    .byte 0x10
    .byte 0x83
    .byte 0xE5
    .byte 1
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 8
    .byte 0x20
    .byte 0xC0
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x95
    .byte 0xE5
    .byte 7
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x81
    .byte 0xE5
    .byte 0x19
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 2
    .byte 0x31 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x8E
    .byte 0xE5
    .byte 0x16
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 7
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 0x13
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 2
    .byte 1
    .byte 0x5C 
    .byte 0xE3
    .byte 0xD
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 7
    .byte 0x20
    .byte 0xD0
    .byte 0xE5
    .byte 8
    .byte 0x30 
    .byte 0xD0
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 8
    .byte 0x30 
    .byte 0xA0
    .byte 0x33 
    .byte 0
    .byte 0x30 
    .byte 0x80
    .byte 0x35 
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0x3A 
    .byte 8
    .byte 0x10
    .byte 0xD0
    .byte 0xE5
    .byte 0x24 
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 1
    .byte 0x21 
    .byte 0x93
    .byte 0xE7
    .byte 0
    .byte 0x20
    .byte 0x8E
    .byte 0xE5
    .byte 8
    .byte 0x30 
    .byte 0xD0
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 8
    .byte 0x30 
    .byte 0xC0
    .byte 0xE5
    .byte 3
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0xC0
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0x64 
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0x7A 
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0x5D 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 1
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0x5D 
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 8
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 8
    .byte 0x50 
    .byte 0xE3
    .byte 0x58 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 5
    .byte 0x60 
    .byte 0xA0
    .byte 0xE1
    .byte 0
    .byte 0x30 
    .byte 0x96
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x93
    .byte 0xE5
    .byte 8
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 0x27 
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0x4A 
    .byte 0x4F 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x43 
    .byte 0x84
    .byte 0xE2
    .byte 5
    .byte 0x3A 
    .byte 0xA0
    .byte 0xE3
    .byte 2
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC4
    .byte 0xE1
    .byte 0xAD
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 0
    .byte 0x96
    .byte 0xE5
    .byte 0xB2
    .byte 0x31 
    .byte 0xD0
    .byte 0xE1
    .byte 3
    .byte 0
    .byte 0x53 
    .byte 0xE3
    .byte 8
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0xBC
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0
    .byte 0x30 
    .byte 0x96
    .byte 0xE5
    .byte 0x1C
    .byte 0x10
    .byte 0x93
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x51 
    .byte 0xE3
    .byte 0x44 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x7B 
    .byte 0xF
    .byte 0xA0
    .byte 0xE3
    .byte 2
    .byte 0
    .byte 0x80
    .byte 0xE2
    .byte 0xD9
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0x40 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x12
    .byte 0x3E 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x33 
    .byte 0x83
    .byte 0xE2
    .byte 0
    .byte 0x10
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x10
    .byte 0x83
    .byte 0xE5
    .byte 5
    .byte 0x2A 
    .byte 0xA0
    .byte 0xE3
    .byte 0xB0
    .byte 0x10
    .byte 0xC4
    .byte 0xE1
    .byte 3
    .byte 0x20
    .byte 0x82
    .byte 0xE2
    .byte 0xB0
    .byte 0x20
    .byte 0xC4
    .byte 0xE1
    .byte 1
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0x14
    .byte 0x30 
    .byte 0xC0
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x95
    .byte 0xE5
    .byte 0x1C
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0x80
    .byte 0xE5
    .byte 1
    .byte 0
    .byte 0x52 
    .byte 0xE1
    .byte 0x31 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 4
    .byte 0x30 
    .byte 0xD0
    .byte 0xE5
    .byte 6
    .byte 0
    .byte 0xD0
    .byte 0xE5
    .byte 2
    .byte 0x10
    .byte 0xA0
    .byte 0xE1
    .byte 3
    .byte 4
    .byte 0x80
    .byte 0xE1
    .byte 0xC4
    .byte 0
    .byte 0
    .byte 0xEB
    .byte 0x2B 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x82
    .byte 0x3F 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x33 
    .byte 0x83
    .byte 0xE2
    .byte 0
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 0xB0
    .byte 0x20
    .byte 0xC3
    .byte 0xE1
    .byte 1
    .byte 0x1C
    .byte 0xA0
    .byte 0xE3
    .byte 0x81
    .byte 0x23 
    .byte 0x81
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xD2
    .byte 0xE1
    .byte 0x80
    .byte 0
    .byte 0x13
    .byte 0xE3
    .byte 0x17
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0xB0
    .byte 0x30 
    .byte 0xD2
    .byte 0xE1
    .byte 3
    .byte 0
    .byte 0x13
    .byte 0xE3
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0x1A
    .byte 0xFF
    .byte 0x2C 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xD1
    .byte 0xE1
    .byte 0x9B
    .byte 0x20
    .byte 0x82
    .byte 0xE2
    .byte 2
    .byte 0
    .byte 0x53 
    .byte 0xE1
    .byte 0xE
    .byte 0
    .byte 0
    .byte 0x9A
    .byte 0xB0
    .byte 0x30 
    .byte 0xD1
    .byte 0xE1
    .byte 2
    .byte 0
    .byte 0x53 
    .byte 0xE1
    .word 0x8AFFFFFC
    .byte 0xA
    .byte 0
    .hword 0xEA00
    .word dword_2010CCC
    .word 0x996601EE
    .byte 0xFF
    .byte 0x2C 
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xD1
    .byte 0xE1
    .byte 0xFE
    .byte 0x20
    .byte 0x82
    .byte 0xE2
    .byte 2
    .byte 0
    .byte 0x53 
    .byte 0xE1
    .byte 2
    .byte 0
    .byte 0
    .byte 0x9A
    .byte 0xB0
    .byte 0x30 
    .byte 0xD1
    .byte 0xE1
    .byte 2
    .byte 0
    .byte 0x53 
    .byte 0xE1
    .byte 0xFC, 0xFF
    .byte 0xFF
    .byte 0x8A
    .byte 0x4A 
    .byte 0x1F
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0x82
    .byte 0xF
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 3
    .byte 0x80
    .byte 0xE2
    .byte 5
    .byte 0x3A 
    .byte 0xA0
    .byte 0xE3
    .byte 2
    .byte 0x20
    .byte 0x83
    .byte 0xE2
    .byte 0xB0
    .byte 0x20
    .byte 0xC1
    .byte 0xE1
    .byte 0x82
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC1
    .byte 0xE1
    .byte 1
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 0xB0
    .byte 0x20
    .byte 0xC0
    .byte 0xE1
    .byte 0x70 
    .byte 0x68 
    .hword 0xE91B
    .byte 0x1E, 0xFF
    .byte 0x2F 
    .byte 0xE1
    .byte 0xD
    .byte 0xC0
    .byte 0xA0
    .byte 0xE1
    .byte 0
    .byte 0xD8
    .byte 0x2D 
    .byte 0xE9
    .byte 0x4A 
    .byte 0x1F
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0
    .byte 8
    .byte 0xA0
    .byte 0xE1
    .byte 0x48 
    .byte 0x20
    .byte 0x9F
    .byte 0xE5
    .byte 4
    .byte 0xB0
    .byte 0x4C 
    .byte 0xE2
    .byte 0x20
    .byte 0xE7
    .byte 0xA0
    .byte 0xE1
    .word 0xE592C000
    .byte 0x10
    .byte 0x30 
    .byte 0xDC
    .byte 0xE5
    .byte 0xFF
    .byte 0
    .byte 3
    .byte 0xE2
    .byte 1
    .byte 0
    .byte 0x50 
    .byte 0xE3
    .byte 6
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0xB0
    .byte 0x30 
    .byte 0xD1
    .byte 0xE1
    .byte 4
    .byte 0x30 
    .byte 3
    .byte 0xE2
    .byte 0xE
    .byte 0
    .byte 0x53 
    .byte 0xE1
    .word 0x1AFFFFF7
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
    .byte 0
    .byte 0x20
    .byte 0x92
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0x10
    .byte 0x30 
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
    .word dword_2010CCC
    .byte 0xD
    .byte 0xC0
    .byte 0xA0
    .byte 0xE1
    .byte 0x30 
    .byte 0xD8
    .byte 0x2D 
    .byte 0xE9
    .byte 0x82
    .byte 0x1F
    .byte 0xA0
    .byte 0xE3
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 4
    .byte 0xB0
    .byte 0x4C 
    .byte 0xE2
    .byte 0x98
    .byte 0xC0
    .byte 0x9F
    .byte 0xE5
    .byte 0xFF
    .byte 0xE0
    .byte 0
    .byte 0xE2
    .byte 0
    .byte 0x20
    .byte 0x9C
    .byte 0xE5
    .byte 0x50 
    .byte 0
    .byte 0x5E 
    .byte 0xE3
    .byte 0xA
    .byte 0
    .byte 0xD2
    .byte 0xE5
    .byte 0xC
    .byte 0x40 
    .byte 0xA0
    .byte 0xE1
    .byte 0xE
    .byte 0x20
    .byte 0xA0
    .byte 0xE1
    .byte 0xB0
    .byte 0x30 
    .byte 0xC1
    .byte 0xE1
    .byte 0
    .byte 1
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 0x3C 
    .byte 0x83
    .byte 0xE2
    .byte 1
    .byte 0x13
    .byte 0x83
    .byte 0xE2
    .byte 0x81
    .byte 0x33 
    .byte 0x83
    .byte 0xE2
    .byte 3
    .byte 0x50 
    .byte 0x80
    .byte 0xE0
    .byte 0xD
    .byte 0
    .byte 0
    .byte 0xA
    .byte 2
    .byte 0
    .hword 0xCA00
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0xE3
    .byte 5
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x1C
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x64 
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 0xD
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x82
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 0x12
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x17
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0xCD
    .byte 0x3F 
    .byte 0xE0
    .byte 0xE3
    .byte 0xB1
    .byte 0x30 
    .byte 0x80
    .byte 0xE1
    .byte 0
    .byte 0x20
    .byte 0x94
    .byte 0xE5
    .byte 1
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0x11
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0xAE
    .byte 0x34 
    .byte 0xA0
    .byte 0xE3
    .byte 0x43 
    .byte 0x3A 
    .byte 0xA0
    .byte 0xE1
    .byte 0xB1
    .byte 0x30 
    .byte 0x80
    .byte 0xE1
    .byte 0
    .byte 0x20
    .byte 0x94
    .byte 0xE5
    .byte 2
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x66 
    .byte 0x3E 
    .byte 0xE0
    .byte 0xE3
    .byte 9
    .byte 0x30 
    .byte 0x43 
    .byte 0xE2
    .byte 0xB1
    .byte 0x30 
    .byte 0x80
    .byte 0xE1
    .byte 0
    .byte 0x20
    .byte 0x94
    .byte 0xE5
    .byte 3
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 5
    .byte 0
    .hword 0xEA00
    .word dword_2010CCC
    .byte 0x85
    .byte 0x3E 
    .byte 0xE0
    .byte 0xE3
    .byte 2
    .byte 0x30 
    .byte 0x43 
    .byte 0xE2
    .byte 0xB1
    .byte 0x30 
    .byte 0x80
    .byte 0xE1
    .byte 0
    .byte 0x20
    .byte 0x94
    .byte 0xE5
    .byte 4
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0xC
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 2
    .byte 0xCC
    .byte 0xA0
    .byte 0xE3
    .byte 0x81
    .byte 0xC3
    .byte 0x8C
    .byte 0xE2
    .byte 0xC3
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0xB0
    .byte 0x30 
    .byte 0xC5
    .byte 0xE1
    .byte 0x82
    .byte 0x1F
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x20
    .byte 0x94
    .byte 0xE5
    .byte 1
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 0xA
    .byte 0
    .byte 0xD2
    .byte 0xE5
    .byte 0xBB
    .byte 0x30 
    .byte 0x43 
    .byte 0xE2
    .byte 0x13
    .byte 0x30 
    .byte 0xA0
    .byte 0xE1
    .byte 0xB0
    .byte 0x30 
    .byte 0xCC
    .byte 0xE1
    .byte 1
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 0xB0
    .byte 0x20
    .byte 0xC1
    .byte 0xE1
    .byte 0x30 
    .byte 0x68 
    .hword 0xE91B
    .byte 0x1E, 0xFF
    .byte 0x2F 
    .byte 0xE1
    .byte 0xD
    .byte 0xC0
    .byte 0xA0
    .byte 0xE1
    .byte 0
    .byte 0xD8
    .byte 0x2D 
    .byte 0xE9
    .byte 1
    .byte 0x1C
    .byte 0xA0
    .byte 0xE3
    .byte 0x38 
    .byte 0xE0
    .byte 0x9F
    .byte 0xE5
    .byte 1
    .byte 3
    .byte 0x81
    .byte 0xE2
    .byte 0
    .byte 0x20
    .byte 0x9E
    .byte 0xE5
    .byte 4
    .byte 0xB0
    .byte 0x4C 
    .byte 0xE2
    .byte 0xA
    .byte 0x30 
    .byte 0xD2
    .byte 0xE5
    .byte 0x0, 0xC0
    .byte 0xA0
    .byte 0xE3
    .byte 0xC
    .byte 0xC0
    .byte 0x82
    .byte 0xE5
    .byte 3
    .byte 0x31 
    .byte 0xA0
    .byte 0xE1
    .byte 0xB0
    .byte 0xC0
    .byte 0x83
    .byte 0xE1
    .byte 0
    .byte 0x20
    .byte 0x9E
    .byte 0xE5
    .byte 0xA
    .byte 0x30 
    .byte 0xD2
    .byte 0xE5
    .byte 0x81
    .byte 0x13
    .byte 0x81
    .byte 0xE2
    .byte 3
    .byte 0x31 
    .byte 0xA0
    .byte 0xE1
    .byte 0xB1
    .byte 0xC0
    .byte 0x83
    .byte 0xE1
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
    .word dword_2010CCC
    .byte 0xD
    .byte 0xC0
    .byte 0xA0
    .byte 0xE1
    .byte 0
    .byte 0xD8
    .byte 0x2D 
    .byte 0xE9
    .byte 0x78 
    .byte 0
    .byte 0x9F
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 5
    .byte 0x30 
    .byte 0xA0
    .byte 0xE3
    .byte 0
    .byte 0x30 
    .byte 0x82
    .byte 0xE5
    .byte 0
    .byte 0x10
    .byte 0xA0
    .byte 0xE3
    .byte 0x14
    .byte 0x10
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 4
    .byte 0x10
    .byte 0xC3
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 5
    .byte 0x10
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 6
    .byte 0x10
    .byte 0xC3
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 7
    .byte 0x10
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 8
    .byte 0x10
    .byte 0xC3
    .byte 0xE5
    .byte 0
    .byte 0x20
    .byte 0x90
    .byte 0xE5
    .byte 9
    .byte 0x10
    .byte 0xC2
    .byte 0xE5
    .byte 0
    .byte 0x30 
    .byte 0x90
    .byte 0xE5
    .byte 0xC
    .byte 0x10
    .byte 0x83
    .byte 0xE5
    .byte 4
    .byte 0xB0
    .byte 0x4C 
    .byte 0xE2
    .byte 0x10
    .byte 0x10
    .byte 0xC3
    .byte 0xE5
    .byte 0x4A 
    .byte 0x2F 
    .byte 0xA0
    .byte 0xE3
    .byte 0x0, 0xC0
    .byte 0x90
    .byte 0xE5
    .byte 1
    .byte 0x23 
    .byte 0x82
    .byte 0xE2
    .byte 0xB2
    .byte 0x11
    .byte 0xCC
    .byte 0xE1
    .byte 5
    .byte 0x3A 
    .byte 0xA0
    .byte 0xE3
    .byte 0x15
    .byte 0x10
    .byte 0xCC
    .byte 0xE5
    .byte 0x82
    .byte 0x30 
    .byte 0x83
    .byte 0xE2
    .byte 0xB0
    .byte 0x30 
    .byte 0xC2
    .byte 0xE1
    .byte 0
    .byte 0x68 
    .hword 0xE91B
    .word 0xE12FFF1E
off_814D8A4:    .word dword_2010CCC
    .word 0xE12FFF12, 0xE12FFF11, 0xE12FFF10
// end of function sub_814CE64

.thumb
//   r0    Source address        (must be aligned by 4)
//   r1    Destination address   (must be aligned by 4)
//   r2    Length/Mode
//           Bit 0-20  Wordcount (GBA: rounded-up to multiple of 8 words)
//           Bit 24    Fixed Source Address (0=Copy, 1=Fill by WORD[r0])
// Return: No return value, Data written to destination address.
SWI_CpuFastSet:
    svc 0xc
    bx lr
// end of function SWI_CpuFastSet

.thumb
//   r0    Source address        (must be aligned by 4 for 32bit, by 2 for 16bit)
//   r1    Destination address   (must be aligned by 4 for 32bit, by 2 for 16bit)
//   r2    Length/Mode
//           Bit 0-20  Wordcount (for 32bit), or Halfwordcount (for 16bit)
//           Bit 24    Fixed Source Address (0=Copy, 1=Fill by {HALF}WORD[r0])
//           Bit 26    Datasize (0=16bit, 1=32bit)
// Return: No return value, Data written to destination address.
SWI_CpuSet:
    svc 0xb
    bx lr
// end of function SWI_CpuSet

.thumb
// Signed Division, r0/r1.
//   r0  signed 32bit Number
//   r1  signed 32bit Denom
// Return:
//   r0  Number DIV Denom ;signed
//   r1  Number MOD Denom ;signed
//   r3  ABS (Number DIV Denom) ;unsigned
SWI_Div:
    svc 6
    bx lr
// end of function SWI_Div

.thumb
//   r0  Source address, pointing to data as such:
//        Data header (32bit)
//          Bit 0-3   Reserved
//          Bit 4-7   Compressed type (must be 1 for LZ77)
//          Bit 8-31  Size of decompressed data
//        Repeat below. Each Flag Byte followed by eight Blocks.
//        Flag data (8bit)
//          Bit 0-7   Type Flags for next 8 Blocks, MSB first
//        Block Type 0 - Uncompressed - Copy 1 Byte from Source to Dest
//          Bit 0-7   One data byte to be copied to dest
//        Block Type 1 - Compressed - Copy N+3 Bytes from Dest-Disp-1 to Dest
//          Bit 0-3   Disp MSBs
//          Bit 4-7   Number of bytes to copy (minus 3)
//          Bit 8-15  Disp LSBs
//   r1  Destination address
// Return: No return value.
SWI_LZ77UnCompReadNormalWrite16bit:
    svc 0x12
    bx lr
// end of function SWI_LZ77UnCompReadNormalWrite16bit

.thumb
//   r0  Source address, pointing to data as such:
//        Data header (32bit)
//          Bit 0-3   Reserved
//          Bit 4-7   Compressed type (must be 1 for LZ77)
//          Bit 8-31  Size of decompressed data
//        Repeat below. Each Flag Byte followed by eight Blocks.
//        Flag data (8bit)
//          Bit 0-7   Type Flags for next 8 Blocks, MSB first
//        Block Type 0 - Uncompressed - Copy 1 Byte from Source to Dest
//          Bit 0-7   One data byte to be copied to dest
//        Block Type 1 - Compressed - Copy N+3 Bytes from Dest-Disp-1 to Dest
//          Bit 0-3   Disp MSBs
//          Bit 4-7   Number of bytes to copy (minus 3)
//          Bit 8-15  Disp LSBs
//   r1  Destination address
// Return: No return value.
SWI_LZ77UnCompReadNormalWrite8bit:
    svc 0x11
    bx lr
// end of function SWI_LZ77UnCompReadNormalWrite8bit

.thumb
// Calculate square root.
//   r0   unsigned 32bit number
// Return:
//   r0   unsigned 16bit number
SWI_Sqrt:
    svc 8
    bx lr
word_814D8CC:    .hword 0xB510
    .byte 4
    .byte 0x1C
    .byte 0x53 
    .byte 0x1E
    .byte 0
    .byte 0x2A 
    .byte 8
    .byte 0xD0
    .byte 1
    .byte 0x22 
    .byte 0x52 
    .byte 0x42 
    .byte 0x20
    .byte 0x78 
    .byte 8
    .byte 0x70 
    .byte 1
    .byte 0x34 
    .byte 1
    .byte 0x31 
    .byte 1
    .byte 0x3B 
    .byte 0x93
    .byte 0x42 
    .byte 0xF8
    .byte 0xD1
    .byte 0x10
    .byte 0xBC
    .byte 1
    .byte 0xBC
    .byte 0
    .byte 0x47 
    .byte 0, 0
// end of function SWI_Sqrt

.thumb
sub_814D8F0:
    push {r4-r6,lr}
    sub sp, sp, #0x80
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    ldr r2, [pc, #0x814d91c-0x814d8fa-2] // =GamePakWaitstateControl
    ldrh r0, [r2]
    ldr r1, [pc, #0x814d920-0x814d8fe-2] // =0xFFFC
    and r0, r1
    mov r1, #3
    orr r0, r1
    strh r0, [r2]
    ldr r3, [pc, #0x814d924-0x814d908-4] // =word_814D8CC+1
    mov r0, #1
    bic r3, r0
    mov r2, sp
    ldr r0, [pc, #0x814d928-0x814d910-4] // =sub_814D8F0+1
    ldr r1, [pc, #0x814d924-0x814d912-2] // =word_814D8CC+1
    sub r0, r0, r1
    lsl r0, r0, #0xf
    b loc_814D938
    .balign 4, 0x00
off_814D91C:    .word GamePakWaitstateControl
dword_814D920:    .word 0xFFFC
off_814D924:    .word word_814D8CC+1
off_814D928:    .word sub_814D8F0+1
loc_814D92C:
    ldrh r0, [r3]
    strh r0, [r2]
    add r3, #2
    add r2, #2
    sub r0, r1, #1
    lsl r0, r0, #0x10
loc_814D938:
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814D92C
    mov r3, sp
    add r3, #1
    add r0, r4, #0
    add r1, r5, #0
    add r2, r6, #0
loc_814D948:
    bl sub_814DA6C
    add sp, sp, #0x80
    pop {r4-r6}
    pop {r0}
    bx r0
// end of function sub_814D8F0

.thumb
sub_814D954:
    push {r4,r5,lr}
    add r5, r0, #0
    add r4, r1, #0
    add r3, r2, #0
    ldr r2, [pc, #0x814d98c-0x814d95c-4] // =GamePakWaitstateControl
    ldrh r0, [r2]
    ldr r1, [pc, #0x814d990-0x814d960-4] // =0xFFFC
    and r0, r1
    mov r1, #3
    orr r0, r1
    strh r0, [r2]
    sub r3, #1
    mov r0, #1
    neg r0, r0
    cmp r3, r0
    beq loc_814D984
    add r1, r0, #0
loc_814D976:
    ldrb r0, [r5]
    strb r0, [r4]
    add r5, #1
    add r4, #1
    sub r3, #1
    cmp r3, r1
    bne loc_814D976
loc_814D984:
    pop {r4,r5}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814D98C:    .word GamePakWaitstateControl
dword_814D990:    .word 0xFFFC
word_814D994:    .hword 0xB530
    .byte 5
    .byte 0x1C
    .byte 0xB
    .byte 0x1C
    .byte 0x54 
    .byte 0x1E
    .byte 0
    .byte 0x2A 
    .byte 0xC
    .byte 0xD0
    .byte 1
    .byte 0x22 
    .byte 0x52 
    .byte 0x42 
    .byte 0x19
    .byte 0x78 
    .byte 0x28 
    .byte 0x78 
    .byte 1
    .byte 0x35 
    .byte 1
    .byte 0x33 
    .byte 0x81
    .byte 0x42 
    .byte 1
    .byte 0xD0
    .byte 0x58 
    .byte 0x1E
    .byte 3
    .byte 0xE0
    .byte 1
    .byte 0x3C 
    .byte 0x94
    .byte 0x42 
    .byte 0xF4
    .byte 0xD1
    .byte 0
    .byte 0x20
    .byte 0x30 
    .byte 0xBC
    .byte 2
    .byte 0xBC
    .byte 8
    .byte 0x47 
    .balign 4, 0x00
// end of function sub_814D954

.thumb
sub_814D9C4:
    push {r4-r6,lr}
    sub sp, sp, #0xc0
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    ldr r2, [pc, #0x814d9f0-0x814d9ce-2] // =GamePakWaitstateControl
    ldrh r0, [r2]
    ldr r1, [pc, #0x814d9f4-0x814d9d2-2] // =0xFFFC
    and r0, r1
    mov r1, #3
    orr r0, r1
    strh r0, [r2]
    ldr r3, [pc, #0x814d9f8-0x814d9dc-4] // =word_814D994+1
    mov r0, #1
    bic r3, r0
    mov r2, sp
    ldr r0, [pc, #0x814d9fc-0x814d9e4-4] // =sub_814D9C4+1
    ldr r1, [pc, #0x814d9f8-0x814d9e6-2] // =word_814D994+1
    sub r0, r0, r1
    lsl r0, r0, #0xf
    b loc_814DA0C
    .byte 0, 0
off_814D9F0:    .word GamePakWaitstateControl
dword_814D9F4:    .word 0xFFFC
off_814D9F8:    .word word_814D994+1
off_814D9FC:    .word sub_814D9C4+1
loc_814DA00:
    ldrh r0, [r3]
    strh r0, [r2]
    add r3, #2
    add r2, #2
    sub r0, r1, #1
    lsl r0, r0, #0x10
loc_814DA0C:
    lsr r1, r0, #0x10
    cmp r1, #0
    bne loc_814DA00
    mov r3, sp
    add r3, #1
    add r0, r4, #0
    add r1, r5, #0
    add r2, r6, #0
    bl sub_814DA6C
    add sp, sp, #0xc0
    pop {r4-r6}
    pop {r1}
    bx r1
// end of function sub_814D9C4

.thumb
sub_814DA28:
    push {r4-r7,lr}
    add r6, r0, #0
    add r5, r1, #0
    add r4, r2, #0
    mov r7, #0
    b loc_814DA3A
loc_814DA34:
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
loc_814DA3A:
    cmp r7, #2
    bhi loc_814DA58
    add r0, r6, #0
    add r1, r5, #0
    add r2, r4, #0
    bl sub_814D954
    add r0, r6, #0
    add r1, r5, #0
    add r2, r4, #0
    bl sub_814D9C4
    add r3, r0, #0
    cmp r3, #0
    bne loc_814DA34
loc_814DA58:
    add r0, r3, #0
    pop {r4-r7}
    pop {r1}
    bx r1
    bx r0
    nop 
// end of function sub_814DA28

.thumb
sub_814DA64:
    bx r1
    .hword 0x46C0
// end of function sub_814DA64

.thumb
sub_814DA68:
    bx r2
    nop 
// end of function sub_814DA68

.thumb
sub_814DA6C:
    bx r3
// end of function sub_814DA6C

    nop 
    bx r4
    nop 
    bx r5
    nop 
    bx r6
    nop 
    bx r7
    nop 
    bx r8
    nop 
    bx r9
    nop 
    bx r10
    nop 
    bx r11
    nop 
    bx r12
    nop 
    bx sp
    nop 
    bx lr
    nop 
.thumb
sub_814DA9C:
    cmp r1, #0
    beq loc_814DB24
    push {r4}
    add r4, r0, #0
    eor r4, r1
    mov r12, r4
    mov r3, #1
    mov r2, #0
    cmp r1, #0
    bpl loc_814DAB2
    neg r1, r1
loc_814DAB2:
    cmp r0, #0
    bpl loc_814DAB8
    neg r0, r0
loc_814DAB8:
    cmp r0, r1
    bcc loc_814DB16
    mov r4, #1
    lsl r4, r4, #0x1c
loc_814DAC0:
    cmp r1, r4
    bcs loc_814DACE
    cmp r1, r0
    bcs loc_814DACE
    lsl r1, r1, #4
    lsl r3, r3, #4
    b loc_814DAC0
loc_814DACE:
    lsl r4, r4, #3
loc_814DAD0:
    cmp r1, r4
    bcs loc_814DADE
    cmp r1, r0
    bcs loc_814DADE
    lsl r1, r1, #1
    lsl r3, r3, #1
    b loc_814DAD0
loc_814DADE:
    cmp r0, r1
    bcc loc_814DAE6
    sub r0, r0, r1
    orr r2, r3
loc_814DAE6:
    lsr r4, r1, #1
    cmp r0, r4
    bcc loc_814DAF2
    sub r0, r0, r4
    lsr r4, r3, #1
    orr r2, r4
loc_814DAF2:
    lsr r4, r1, #2
    cmp r0, r4
    bcc loc_814DAFE
    sub r0, r0, r4
    lsr r4, r3, #2
    orr r2, r4
loc_814DAFE:
    lsr r4, r1, #3
    cmp r0, r4
    bcc loc_814DB0A
    sub r0, r0, r4
    lsr r4, r3, #3
    orr r2, r4
loc_814DB0A:
    cmp r0, #0
    beq loc_814DB16
    lsr r3, r3, #4
    beq loc_814DB16
    lsr r1, r1, #4
    b loc_814DADE
loc_814DB16:
    add r0, r2, #0
    mov r4, r12
    cmp r4, #0
    bpl loc_814DB20
    neg r0, r0
loc_814DB20:
    pop {r4}
    mov pc, lr
loc_814DB24:
    push {lr}
loc_814DB26:
    bl nullsub_1
    mov r0, #0
    pop {pc}
    .byte 0, 0
// end of function sub_814DA9C

.thumb
nullsub_1:
    mov pc, lr
    .byte 0
    .byte 0
// end of function nullsub_1

.thumb
sub_814DB34:
    cmp r1, #0
    beq loc_814DBEA
    mov r3, #1
    cmp r0, r1
    bcs loc_814DB40
    mov pc, lr
loc_814DB40:
    push {r4}
    mov r4, #1
    lsl r4, r4, #0x1c
loc_814DB46:
    cmp r1, r4
    bcs loc_814DB54
    cmp r1, r0
    bcs loc_814DB54
    lsl r1, r1, #4
    lsl r3, r3, #4
    b loc_814DB46
loc_814DB54:
    lsl r4, r4, #3
loc_814DB56:
    cmp r1, r4
    bcs loc_814DB64
    cmp r1, r0
    bcs loc_814DB64
    lsl r1, r1, #1
    lsl r3, r3, #1
    b loc_814DB56
loc_814DB64:
    mov r2, #0
    cmp r0, r1
    bcc loc_814DB6C
    sub r0, r0, r1
loc_814DB6C:
    lsr r4, r1, #1
    cmp r0, r4
    bcc loc_814DB7E
    sub r0, r0, r4
    mov r12, r3
    mov r4, #1
    ror r3, r4
    orr r2, r3
    mov r3, r12
loc_814DB7E:
    lsr r4, r1, #2
    cmp r0, r4
    bcc loc_814DB90
    sub r0, r0, r4
    mov r12, r3
    mov r4, #2
    ror r3, r4
    orr r2, r3
    mov r3, r12
loc_814DB90:
    lsr r4, r1, #3
    cmp r0, r4
    bcc loc_814DBA2
    sub r0, r0, r4
    mov r12, r3
    mov r4, #3
    ror r3, r4
    orr r2, r3
    mov r3, r12
loc_814DBA2:
    mov r12, r3
    cmp r0, #0
    beq loc_814DBB0
    lsr r3, r3, #4
    beq loc_814DBB0
    lsr r1, r1, #4
    b loc_814DB64
loc_814DBB0:
    mov r4, #0xe
    lsl r4, r4, #0x1c
    and r2, r4
    bne loc_814DBBC
    pop {r4}
    mov pc, lr
loc_814DBBC:
    mov r3, r12
    mov r4, #3
    ror r3, r4
    tst r2, r3
    beq loc_814DBCA
    lsr r4, r1, #3
    add r0, r0, r4
loc_814DBCA:
    mov r3, r12
    mov r4, #2
    ror r3, r4
    tst r2, r3
    beq loc_814DBD8
    lsr r4, r1, #2
    add r0, r0, r4
loc_814DBD8:
    mov r3, r12
    mov r4, #1
    ror r3, r4
    tst r2, r3
    beq loc_814DBE6
    lsr r4, r1, #1
    add r0, r0, r4
loc_814DBE6:
    pop {r4}
    mov pc, lr
loc_814DBEA:
    push {lr}
    bl nullsub_1
    mov r0, #0
    pop {pc}
dword_814DBF4:    .word 0x4710A200
    .word 0xE0832190
    .word 0xE2830000
    .word 0xE12FFF1E
// end of function sub_814DB34

.thumb
sub_814DC04:
    ldr r0, [pc, #0x814dc70-0x814dc04-4] // =loc_3007FF0
    ldr r0, [r0]
    ldr r2, [pc, #0x814dc74-0x814dc08-4] // =0x68736D53
    ldr r3, [r0]
    cmp r2, r3
    beq loc_814DC12
    bx lr
loc_814DC12:
    add r3, #1
    str r3, [r0]
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r10
    mov r4, r11
    push {r0-r4}
    sub sp, sp, #0x18
    ldrb r1, [r0,#0xc]
    cmp r1, #0
    beq loc_814DC36
    ldr r2, [pc, #0x814dc7c-0x814dc2a-2] // =VerticalCounter_LY_
    ldrb r2, [r2]
    cmp r2, #0xa0
    bcs loc_814DC34
    add r2, #0xe4
loc_814DC34:
    add r1, r1, r2
loc_814DC36:
    str r1, [sp,#0x14]
    ldr r3, [r0,#0x20]
    cmp r3, #0
    beq loc_814DC46
    ldr r0, [r0,#0x24]
loc_814DC40:
    bl sub_814E026
    ldr r0, [sp,#0x18]
loc_814DC46:
    ldr r3, [r0,#0x28]
loc_814DC48:
    bl sub_814E026
    ldr r0, [sp,#0x18]
    ldr r3, [r0,#0x10]
    mov r8, r3
    ldr r5, [pc, #0x814dc80-0x814dc52-2] // =0x350
    add r5, r5, r0
    ldrb r4, [r0,#4]
    sub r7, r4, #1
    bls loc_814DC66
    ldrb r1, [r0,#0xb]
    sub r1, r1, r7
    mov r2, r8
    mul r2, r1
    add r5, r5, r2
loc_814DC66:
    str r5, [sp,#8]
    ldr r6, [pc, #0x814dc84-0x814dc68-4] // =0x630
    ldr r3, [pc, #0x814dc78-0x814dc6a-2] // =loc_3005700+1
    bx r3
    .byte 0, 0
off_814DC70:    .word loc_3007FF0
dword_814DC74:    .word 0x68736D53
off_814DC78:    .word loc_3005700+1
off_814DC7C:    .word VerticalCounter_LY_
off_814DC80:    .word 0x350
off_814DC84:    .word 0x630
    .byte 0x43 
unk_814DC89:    .byte 0x79 
    .byte 0
    .byte 0x2B 
    .byte 0x2C 
    .byte 0xD0
    .byte 1
    .byte 0xA1
    .byte 8
    .byte 0x47 
    .balign 4, 0x00
    .byte 2
    .byte 0
    .byte 0x54 
    .byte 0xE3
    .byte 0x35 
    .byte 0x7E 
    .byte 0x80
    .byte 2
    .byte 8
    .byte 0x70 
    .byte 0x85
    .byte 0x10
    .byte 8
    .byte 0x40 
    .byte 0xA0
    .byte 0xE1
    .byte 0xD6
    .byte 0
    .byte 0x95
    .byte 0xE1
    .byte 0xD0
    .byte 0x10
    .byte 0xD5
    .byte 0xE1
    .byte 1
    .byte 0
    .byte 0x80
    .byte 0xE0
    .byte 0xD6
    .byte 0x10
    .byte 0x97
    .byte 0xE1
    .byte 1
    .byte 0
    .byte 0x80
    .byte 0xE0
    .byte 0xD1
    .byte 0x10
    .byte 0xD7
    .byte 0xE0
    .byte 1
    .byte 0
    .byte 0x80
    .byte 0xE0
    .byte 0x90
    .byte 3
    .byte 1
    .byte 0xE0
    .byte 0xC1
    .byte 4
    .byte 0xA0
    .byte 0xE1
    .byte 0x80
    .byte 0
    .byte 0x10
    .byte 0xE3
    .byte 1
    .byte 0
    .byte 0x80
    .byte 0x12
    .byte 6
    .byte 0
    .byte 0xC5
    .byte 0xE7
    .byte 1
    .byte 0
    .byte 0xC5
    .byte 0xE4
    .byte 1
    .byte 0x40 
    .byte 0x54 
    .byte 0xE2
    .word 0xCAFFFFF0
    .byte 0x2F 
    .byte 0
    .byte 0x8F
    .byte 0xE2
    .word 0xE12FFF10
    .byte 0
    .byte 0x20
    .byte 0x41 
    .byte 0x46 
    .byte 0x76 
    .byte 0x19
    .byte 0xC9
    .byte 8
    .byte 1
    .byte 0xD3
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 0x49 
    .byte 8
    .byte 3
    .byte 0xD3
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 1
    .byte 0xC5
    .byte 1
    .byte 0xC6
    .byte 1
    .byte 0x39 
    .byte 0xF5
    .byte 0xDC
    .byte 6
    .byte 0x9C
    .byte 0xA0
    .byte 0x69 
    .byte 0x84
    .byte 0x46 
    .byte 0xA0
    .byte 0x79 
    .byte 0x50 
    .byte 0x34 
    .byte 1
    .byte 0x90
    .byte 0x63 
    .byte 0x6A 
    .byte 5
    .byte 0x98
    .byte 0
    .byte 0x28 
    .byte 0xA
    .byte 0xD0
    .byte 4
    .byte 0x49 
    .byte 9
    .byte 0x78 
    .byte 0xA0
    .byte 0x29 
    .byte 0
    .byte 0xD2
    .byte 0xE4
    .byte 0x31 
    .byte 0x81
    .byte 0x42 
    .byte 3
    .byte 0xD3
    .byte 0x6B 
    .byte 0xE1
    .balign 4, 0x00
    .word VerticalCounter_LY_
    .byte 0x26 
    .byte 0x78 
    .byte 0xC7
    .byte 0x20
    .byte 0x30 
    .byte 0x42 
    .byte 0
    .byte 0xD1
    .byte 0x5E 
    .byte 0xE1
    .byte 0x80
    .byte 0x20
    .byte 0x30 
    .byte 0x42 
    .byte 0x14
    .byte 0xD0
    .byte 0x40 
    .byte 0x20
    .byte 0x30 
    .byte 0x42 
    .byte 0x19
    .byte 0xD1
    .byte 3
    .byte 0x26 
    .byte 0x26 
    .byte 0x70 
    .byte 0x18
    .byte 0x1C
    .byte 0x10
    .byte 0x30 
    .byte 0xA0
    .byte 0x62 
    .byte 0xD8
    .byte 0x68 
    .byte 0xA0
    .byte 0x61 
    .byte 0
    .byte 0x25 
    .byte 0x65 
    .byte 0x72 
    .byte 0xE5
    .byte 0x61 
    .byte 0xDA
    .byte 0x78 
    .byte 0xC0
    .byte 0x20
    .byte 0x10
    .byte 0x42 
    .byte 0x2F 
    .byte 0xD0
    .byte 0x10
    .byte 0x20
    .byte 6
    .byte 0x43 
    .byte 0x26 
    .byte 0x70 
    .byte 0x2B 
    .byte 0xE0
    .byte 0x65 
    .byte 0x7A 
    .byte 4
    .byte 0x20
    .byte 0x30 
    .byte 0x42 
    .byte 6
    .byte 0xD0
    .byte 0x60 
    .byte 0x7B 
    .byte 1
    .byte 0x38 
    .byte 0x60 
    .byte 0x73 
    .byte 0x2A 
    .byte 0xD8
    .byte 0
    .byte 0x20
    .byte 0x20
    .byte 0x70 
    .byte 0x3B 
    .byte 0xE1
    .byte 0x40 
    .byte 0x20
    .byte 0x30 
    .byte 0x42 
    .byte 0xC
    .byte 0xD0
    .byte 0xE0
    .byte 0x79 
    .byte 0x45 
    .byte 0x43 
    .byte 0x2D 
    .byte 0xA
    .byte 0x20
    .byte 0x7B 
    .byte 0x85
    .byte 0x42 
    .byte 0x1E
    .byte 0xD8
    .byte 0x25 
    .byte 0x7B 
    .byte 0
    .byte 0x2D 
    .byte 0xF0
    .byte 0xD0
    .byte 4
    .byte 0x20
    .byte 6
    .byte 0x43 
    .byte 0x26 
    .byte 0x70 
    .byte 0x17
    .byte 0xE0
    .byte 3
    .byte 0x22 
    .byte 0x32 
    .byte 0x40 
    .byte 2
    .byte 0x2A 
    .byte 0xA
    .byte 0xD1
    .byte 0x60 
    .byte 0x79 
    .byte 0x45 
    .byte 0x43 
    .byte 0x2D 
    .byte 0xA
    .byte 0xA0
    .byte 0x79 
    .byte 0x85
    .byte 0x42 
    .byte 0xD
    .byte 0xD8
    .byte 5
    .byte 0x1C
    .byte 0xEC
    .byte 0xD0
    .byte 1
    .byte 0x3E 
    .byte 0x26 
    .byte 0x70 
    .byte 8
    .byte 0xE0
    .byte 3
    .byte 0x2A 
    .byte 6
    .byte 0xD1
    .byte 0x20
    .byte 0x79 
    .byte 0x2D 
    .byte 0x18
    .byte 0xFF
    .byte 0x2D 
    .byte 2
    .byte 0xD3
    .byte 0xFF
    .byte 0x25 
    .byte 1
    .byte 0x3E 
    .byte 0x26 
    .byte 0x70 
    .byte 0x65 
    .byte 0x72 
    .byte 6
    .byte 0x98
    .byte 0xC0
    .byte 0x79 
    .byte 1
    .byte 0x30 
    .byte 0x68 
    .byte 0x43 
    .byte 5
    .byte 9
    .byte 0xA0
    .byte 0x78 
    .byte 0x68 
    .byte 0x43 
    .byte 0
    .byte 0xA
    .byte 0xA0
    .byte 0x72 
    .byte 0xE0
    .byte 0x78 
    .byte 0x68 
    .byte 0x43 
    .byte 0
    .byte 0xA
    .byte 0xE0
    .byte 0x72 
    .byte 0x10
    .byte 0x20
    .byte 0x30 
    .byte 0x40 
    .byte 4
    .byte 0x90
    .byte 7
    .byte 0xD0
    .byte 0x18
    .byte 0x1C
    .byte 0x10
    .byte 0x30 
    .byte 0x99
    .byte 0x68 
    .byte 0x40 
    .byte 0x18
    .byte 3
    .byte 0x90
    .byte 0xD8
    .byte 0x68 
    .byte 0x40 
    .byte 0x1A
    .byte 4
    .byte 0x90
    .byte 2
    .byte 0x9D
    .byte 0xA2
    .byte 0x69 
    .byte 0xA3
    .byte 0x6A 
    .byte 1
    .byte 0xA0
    .byte 0
    .byte 0x47 
    .byte 0, 0
    .byte 0
    .byte 0x80
    .byte 0x8D
    .byte 0xE5
    .byte 0xA
    .byte 0xA0
    .byte 0xD4
    .byte 0xE5
    .byte 0xB
    .byte 0xB0
    .byte 0xD4
    .byte 0xE5
    .byte 0xA
    .byte 0xA8
    .byte 0xA0
    .byte 0xE1
    .byte 0xB
    .byte 0xB8
    .byte 0xA0
    .byte 0xE1
    .byte 1
    .byte 0
    .byte 0xD4
    .byte 0xE5
    .byte 8
    .byte 0
    .byte 0x10
    .byte 0xE3
    .byte 0x47 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 4
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 0x19
    .byte 0
    .byte 0
    .byte 0xDA
    .byte 8
    .byte 0x20
    .byte 0x52 
    .byte 0xE0
    .byte 0
    .byte 0xE0
    .byte 0xA0
    .byte 0xC3
    .byte 5
    .byte 0
    .hword 0xCA00
    .byte 8
    .byte 0xE0
    .byte 0xA0
    .byte 0xE1
    .byte 8
    .byte 0x20
    .byte 0x82
    .byte 0xE0
    .byte 4
    .byte 0x80
    .byte 0x42 
    .byte 0xE2
    .byte 8
    .byte 0xE0
    .byte 0x4E 
    .byte 0xE0
    .byte 3
    .byte 0x20
    .byte 0x12
    .byte 0xE2
    .byte 4
    .byte 0x20
    .byte 0xA0
    .byte 3
    .byte 0
    .byte 0x60 
    .byte 0x95
    .byte 0xE5
    .byte 0x30 
    .byte 0x76 
    .byte 0x95
    .byte 0xE5
    .byte 0xD1
    .byte 0
    .byte 0xD3
    .byte 0xE0
    .byte 0x9A
    .byte 0
    .byte 1
    .byte 0xE0
    .byte 0xFF
    .byte 0x18
    .byte 0xC1
    .byte 0xE3
    .byte 0x66 
    .byte 0x64 
    .byte 0x81
    .byte 0xE0
    .byte 0x9B
    .byte 0
    .byte 1
    .byte 0xE0
    .byte 0xFF
    .byte 0x18
    .byte 0xC1
    .byte 0xE3
    .byte 0x67 
    .byte 0x74 
    .byte 0x81
    .byte 0xE0
    .byte 1
    .byte 0x51 
    .byte 0x95
    .byte 0xE2
    .word 0x3AFFFFF6
    .byte 0x30 
    .byte 0x76 
    .byte 0x85
    .byte 0xE5
    .byte 4
    .byte 0x60 
    .byte 0x85
    .byte 0xE4
    .byte 4
    .byte 0x80
    .byte 0x58 
    .byte 0xE2
    .word 0xCAFFFFF0
    .byte 0xE
    .byte 0x80
    .byte 0x98
    .byte 0xE0
    .byte 0x50 
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0
    .byte 0x60 
    .byte 0x95
    .byte 0xE5
    .byte 0x30 
    .byte 0x76 
    .byte 0x95
    .byte 0xE5
    .byte 0xD1
    .byte 0
    .byte 0xD3
    .byte 0xE0
    .byte 0x9A
    .byte 0
    .byte 1
    .byte 0xE0
    .byte 0xFF
    .byte 0x18
    .byte 0xC1
    .byte 0xE3
    .byte 0x66 
    .byte 0x64 
    .byte 0x81
    .byte 0xE0
    .byte 0x9B
    .byte 0
    .byte 1
    .byte 0xE0
    .byte 0xFF
    .byte 0x18
    .byte 0xC1
    .byte 0xE3
    .byte 0x67 
    .byte 0x74 
    .byte 0x81
    .byte 0xE0
    .byte 1
    .byte 0x20
    .byte 0x52 
    .byte 0xE2
    .byte 0x12
    .byte 0
    .byte 0
    .byte 0xA
    .byte 1
    .byte 0x51 
    .byte 0x95
    .byte 0xE2
    .word 0x3AFFFFF4
    .byte 0x30 
    .byte 0x76 
    .byte 0x85
    .byte 0xE5
    .byte 4
    .byte 0x60 
    .byte 0x85
    .byte 0xE4
    .byte 4
    .byte 0x80
    .byte 0x58 
    .byte 0xE2
    .byte 0xD2, 0xFF
    .byte 0xFF
    .byte 0xCA
    .byte 0x3E 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x18
    .byte 0
    .byte 0x9D
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0xE3
    .byte 5
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0x14
    .byte 0x30 
    .byte 0x9D
    .byte 0xE5
    .byte 0
    .byte 0x90
    .byte 0x62 
    .byte 0xE2
    .byte 2
    .byte 0x20
    .byte 0x90
    .byte 0xE0
    .byte 0x2B 
    .byte 0
    .hword 0xCA00
    .byte 0
    .byte 0x90
    .byte 0x49 
    .byte 0xE0
    .byte 0xFB, 0xFF
    .hword 0xEAFF
    .byte 0x10
    .byte 0x10
    .byte 0xBD
    .byte 0xE8
    .byte 0
    .byte 0x20
    .byte 0xA0
    .byte 0xE3
    .byte 3
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x10
    .byte 0x20
    .byte 0x9D
    .byte 0xE5
    .byte 0
    .byte 0
    .byte 0x52 
    .byte 0xE3
    .byte 0xC
    .byte 0x30 
    .byte 0x9D
    .byte 0x15
    .word 0x1AFFFFE8
    .byte 0
    .byte 0x20
    .byte 0xC4
    .byte 0xE5
    .byte 0x25 
    .byte 0xF
    .byte 0xA0
    .byte 0xE1
    .byte 3
    .byte 0x51 
    .byte 0xC5
    .byte 0xE3
    .byte 3
    .byte 0
    .byte 0x60 
    .byte 0xE2
    .byte 0x80
    .byte 1
    .byte 0xA0
    .byte 0xE1
    .byte 0x76 
    .byte 0x60 
    .byte 0xA0
    .byte 0xE1
    .byte 0x77 
    .byte 0x70 
    .byte 0xA0
    .byte 0xE1
    .byte 0x30 
    .byte 0x76 
    .byte 0x85
    .byte 0xE5
    .byte 4
    .byte 0x60 
    .byte 0x85
    .byte 0xE4
    .byte 0x26 
    .byte 0
    .byte 0
    .byte 0xEA
    .byte 0x10
    .byte 0x10
    .hword 0xE92D
    .byte 0x1C
    .byte 0xE0
    .byte 0x94
    .byte 0xE5
    .byte 0x20
    .byte 0x10
    .byte 0x94
    .byte 0xE5
    .byte 0x9C
    .byte 1
    .byte 4
    .byte 0xE0
    .byte 0xD0
    .byte 0
    .byte 0xD3
    .byte 0xE1
    .byte 0xD1
    .byte 0x10
    .byte 0xF3
    .byte 0xE1
    .byte 0
    .byte 0x10
    .byte 0x41 
    .byte 0xE0
    .byte 0
    .byte 0x60 
    .byte 0x95
    .byte 0xE5
    .byte 0x30 
    .byte 0x76 
    .byte 0x95
    .byte 0xE5
    .byte 0x9E
    .byte 1
    .byte 9
    .byte 0xE0
    .byte 0xC9
    .byte 0x9B
    .byte 0x80
    .byte 0xE0
    .byte 0x9A
    .byte 9
    .byte 0xC
    .byte 0xE0
    .byte 0xFF
    .byte 0xC8
    .byte 0xCC
    .byte 0xE3
    .byte 0x66 
    .byte 0x64 
    .byte 0x8C
    .byte 0xE0
    .byte 0x9B
    .byte 9
    .byte 0xC
    .byte 0xE0
    .byte 0xFF
    .byte 0xC8
    .byte 0xCC
    .byte 0xE3
    .byte 0x67 
    .byte 0x74 
    .byte 0x8C
    .byte 0xE0
    .byte 4
    .byte 0xE0
    .byte 0x8E
    .byte 0xE0
    .byte 0xAE
    .byte 0x9B
    .byte 0xB0
    .byte 0xE1
    .byte 7
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0xFE
    .byte 0xE5
    .hword 0xE3CE
    .byte 9
    .byte 0x20
    .byte 0x52 
    .byte 0xE0
    .word 0xDAFFFFCE
    .byte 1
    .byte 0x90
    .byte 0x59 
    .byte 0xE2
    .byte 1
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0xD9
    .byte 0
    .byte 0xB3
    .byte 0x11
    .byte 0xD1
    .byte 0x10
    .byte 0xF3
    .byte 0xE1
    .byte 0
    .byte 0x10
    .byte 0x41 
    .byte 0xE0
    .byte 1
    .byte 0x51 
    .byte 0x95
    .byte 0xE2
    .word 0x3AFFFFEA
    .byte 0x30 
    .byte 0x76 
    .byte 0x85
    .byte 0xE5
    .byte 4
    .byte 0x60 
    .byte 0x85
    .byte 0xE4
    .byte 4
    .byte 0x80
    .byte 0x58 
    .byte 0xE2
    .byte 0xE4, 0xFF
    .byte 0xFF
    .byte 0xCA
    .byte 1
    .byte 0x30 
    .byte 0x43 
    .byte 0xE2
    .byte 0x10
    .byte 0x10
    .hword 0xE8BD
    .byte 0x1C
    .byte 0xE0
    .byte 0x84
    .byte 0xE5
    .byte 0x18
    .byte 0x20
    .byte 0x84
    .byte 0xE5
    .byte 0x28 
    .byte 0x30 
    .byte 0x84
    .byte 0xE5
    .byte 0
    .byte 0x80
    .byte 0x9D
    .byte 0xE5
    .byte 1
    .byte 0
    .byte 0x8F
    .byte 0xE2
    .word 0xE12FFF10
    .byte 1
    .byte 0x98
    .byte 1
    .byte 0x38 
    .byte 1
    .byte 0xDD
    .byte 0x40 
    .byte 0x34 
    .byte 0x86
    .byte 0xE6
    .byte 6
    .byte 0x98
    .byte 4
    .byte 0x4B 
    .byte 3
    .byte 0x60 
    .byte 7
    .byte 0xB0
    .byte 0xFF
    .byte 0xBC
    .byte 0x80
    .byte 0x46 
    .byte 0x89
    .byte 0x46 
    .byte 0x92
    .byte 0x46 
    .byte 0x9B
    .byte 0x46 
    .byte 8
    .byte 0xBC
// end of function sub_814DC04

.thumb
sub_814E026:
    bx r3
    ldr r3, [r2,#0x54]
    ldr r3, [r6,#4]
    mov r12, r4
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r4, #0
    stmia r0!, {r1-r4}
    stmia r0!, {r1-r4}
    stmia r0!, {r1-r4}
    stmia r0!, {r1-r4}
    mov r4, r12
    bx lr
    .balign 4, 0x00
// end of function sub_814E026

.thumb
sub_814E044:
    ldr r3, [r0,#0x2c]
    cmp r3, #0
    beq locret_814E062
    ldr r1, [r0,#0x34]
    ldr r2, [r0,#0x30]
    cmp r2, #0
    beq loc_814E056
    str r1, [r2,#0x34]
    b loc_814E058
loc_814E056:
    str r1, [r3,#0x20]
loc_814E058:
    cmp r1, #0
    beq loc_814E05E
    str r2, [r1,#0x30]
loc_814E05E:
    mov r1, #0
    str r1, [r0,#0x2c]
locret_814E062:
    bx lr
// end of function sub_814E044

.thumb
sub_814E064:
    push {r4,r5,lr}
    add r5, r1, #0
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_814E092
loc_814E06E:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_814E07C
    mov r0, #0x40 
    orr r1, r0
    strb r1, [r4]
loc_814E07C:
    add r0, r4, #0
    bl sub_814E044
    ldr r1, [r4,#0x34]
    cmp r1, r4
    bne loc_814E08C
    mov r1, #0
    str r1, [r4,#0x34]
loc_814E08C:
    add r4, r1, #0
    cmp r4, #0
    bne loc_814E06E
loc_814E092:
    mov r0, #0
    strb r0, [r5]
    pop {r4,r5}
    pop {r0}
    bx r0
// end of function sub_814E064

.thumb
sub_814E09C:
    mov r12, lr
    mov r1, #0x24 
    ldr r2, [pc, #0x814e0cc-0x814e0a0-4] // =off_81C0418
loc_814E0A2:
    ldr r3, [r2]
    bl sub_814E0B6
    stmia r0!, {r3}
    add r2, #4
    sub r1, #1
    bgt loc_814E0A2
    bx r12
    .byte 0
    .byte 0
// end of function sub_814E09C

.thumb
sub_814E0B4:
    ldrb r3, [r2]
// end of function sub_814E0B4

.thumb
sub_814E0B6:
    push {r0}
    lsr r0, r2, #0x19
    bne loc_814E0C8
    ldr r0, [pc, #0x814e0cc-0x814e0bc-4] // =off_81C0418
    cmp r2, r0
    bcc loc_814E0C6
    lsr r0, r2, #0xe
    beq loc_814E0C8
loc_814E0C6:
    mov r3, #0
loc_814E0C8:
    pop {r0}
    bx lr
off_814E0CC:    .word off_81C0418
// end of function sub_814E0B6

.thumb
sub_814E0D0:
    ldr r2, [r1,#0x40]
loc_814E0D2:
    add r3, r2, #1
    str r3, [r1,#0x40]
    ldrb r3, [r2]
    b sub_814E0B6
    .balign 4, 0x00
// end of function sub_814E0D0

.thumb
sub_814E0DC:
    push {lr}
loc_814E0DE:
    ldr r2, [r1,#0x40]
    ldrb r0, [r2,#3]
    lsl r0, r0, #8
    ldrb r3, [r2,#2]
    orr r0, r3
    lsl r0, r0, #8
    ldrb r3, [r2,#1]
    orr r0, r3
    lsl r0, r0, #8
    bl sub_814E0B4
    orr r0, r3
    str r0, [r1,#0x40]
    pop {r0}
    bx r0
// end of function sub_814E0DC

.thumb
sub_814E0FC:
    ldrb r2, [r1,#2]
    cmp r2, #3
    bcs loc_814E114
    lsl r2, r2, #2
    add r3, r1, r2
    ldr r2, [r1,#0x40]
    add r2, #4
    str r2, [r3,#0x44]
    ldrb r2, [r1,#2]
    add r2, #1
    strb r2, [r1,#2]
    b sub_814E0DC
loc_814E114:
    b sub_814E064
    .balign 4, 0x00
// end of function sub_814E0FC

.thumb
sub_814E118:
    ldrb r2, [r1,#2]
    cmp r2, #0
    beq locret_814E12A
    sub r2, #1
    strb r2, [r1,#2]
    lsl r2, r2, #2
    add r3, r1, r2
    ldr r2, [r3,#0x44]
    str r2, [r1,#0x40]
locret_814E12A:
    bx lr
// end of function sub_814E118

.thumb
sub_814E12C:
    push {lr}
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    cmp r3, #0
    bne loc_814E13C
    add r2, #1
    str r2, [r1,#0x40]
    b loc_814E0DE
loc_814E13C:
    ldrb r3, [r1,#3]
    add r3, #1
    strb r3, [r1,#3]
    mov r12, r3
    bl sub_814E0D0
    cmp r12, r3
    bcs loc_814E14E
    b loc_814E0DE
loc_814E14E:
    mov r3, #0
    strb r3, [r1,#3]
    add r2, #5
    str r2, [r1,#0x40]
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814E12C

.thumb
sub_814E15C:
    mov r12, lr
    bl sub_814E0D0
    strb r3, [r1,#0x1d]
    bx r12
    .balign 4, 0x00
// end of function sub_814E15C

.thumb
sub_814E168:
    mov r12, lr
    bl sub_814E0D0
    lsl r3, r3, #1
    strh r3, [r0,#0x1c]
    ldrh r2, [r0,#0x1e]
    mul r3, r2
    lsr r3, r3, #8
    strh r3, [r0,#0x20]
    bx r12
// end of function sub_814E168

.thumb
sub_814E17C:
    mov r12, lr
    bl sub_814E0D0
    strb r3, [r1,#0xa]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
    .byte 0, 0
// end of function sub_814E17C

.thumb
sub_814E190:
    mov r12, lr
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    add r2, #1
    str r2, [r1,#0x40]
    lsl r2, r3, #1
    add r2, r2, r3
    lsl r2, r2, #2
    ldr r3, [r0,#0x30]
    add r2, r2, r3
    ldr r3, [r2]
    bl sub_814E0B6
    str r3, [r1,#0x24]
    ldr r3, [r2,#4]
    bl sub_814E0B6
    str r3, [r1,#0x28]
    ldr r3, [r2,#8]
    bl sub_814E0B6
    str r3, [r1,#0x2c]
    bx r12
    .byte 0, 0
// end of function sub_814E190

.thumb
sub_814E1C0:
    mov r12, lr
    bl sub_814E0D0
    strb r3, [r1,#0x12]
    ldrb r3, [r1]
    mov r2, #3
    orr r3, r2
    strb r3, [r1]
    bx r12
    .balign 4, 0x00
// end of function sub_814E1C0

.thumb
sub_814E1D4:
    mov r12, lr
    bl sub_814E0D0
    sub r3, #0x40 
    strb r3, [r1,#0x14]
    ldrb r3, [r1]
    mov r2, #3
    orr r3, r2
    strb r3, [r1]
    bx r12
// end of function sub_814E1D4

.thumb
sub_814E1E8:
    mov r12, lr
    bl sub_814E0D0
    sub r3, #0x40 
    strb r3, [r1,#0xe]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
// end of function sub_814E1E8

.thumb
sub_814E1FC:
    mov r12, lr
    bl sub_814E0D0
    strb r3, [r1,#0xf]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
    .byte 0, 0
// end of function sub_814E1FC

.thumb
sub_814E210:
    mov r12, lr
    bl sub_814E0D0
    strb r3, [r1,#0x1b]
    bx r12
    .balign 4, 0x00
// end of function sub_814E210

.thumb
sub_814E21C:
    mov r12, lr
    bl sub_814E0D0
    ldrb r0, [r1,#0x18]
    cmp r0, r3
    beq loc_814E232
    strb r3, [r1,#0x18]
    ldrb r3, [r1]
    mov r2, #0xf
    orr r3, r2
    strb r3, [r1]
loc_814E232:
    bx r12
// end of function sub_814E21C

.thumb
sub_814E234:
    mov r12, lr
    bl sub_814E0D0
    sub r3, #0x40 
    strb r3, [r1,#0xc]
    ldrb r3, [r1]
    mov r2, #0xc
    orr r3, r2
    strb r3, [r1]
    bx r12
// end of function sub_814E234

.thumb
sub_814E248:
    mov r12, lr
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    add r2, #1
    ldr r0, [pc, #0x814e25c-0x814e250-4] // =Channel1Sweepregister_NR10_
    add r0, r0, r3
    bl loc_814E0D2
    .byte 3
    .byte 0x70 
    .byte 0x60 
    .byte 0x47 
off_814E25C:    .word Channel1Sweepregister_NR10_
// end of function sub_814E248

.thumb
sub_814E260:
    ldr r2, [pc, #0x814e4d8-0x814e260-4] // =0x68736D53
    ldr r3, [r0,#0x34]
    cmp r2, r3
    beq loc_814E26A
    bx lr
loc_814E26A:
    add r3, #1
    str r3, [r0,#0x34]
    push {r0,lr}
    ldr r3, [r0,#0x38]
    cmp r3, #0
    beq loc_814E27C
    ldr r0, [r0,#0x3c]
    bl sub_814E4CC
loc_814E27C:
    pop {r0}
    push {r4-r7}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4-r7}
    add r7, r0, #0
    ldr r0, [r7,#4]
    cmp r0, #0
    bge loc_814E294
    b loc_814E4BC
loc_814E294:
    ldr r0, [pc, #0x814e4d4-0x814e294-4] // =loc_3007FF0
    ldr r0, [r0]
    mov r8, r0
    add r0, r7, #0
    bl sub_814F228
    ldr r0, [r7,#4]
    cmp r0, #0
    bge loc_814E2A8
    b loc_814E4BC
loc_814E2A8:
    ldrh r0, [r7,#0x22]
    ldrh r1, [r7,#0x20]
    add r0, r0, r1
    b loc_814E402
loc_814E2B0:
    ldrb r6, [r7,#8]
    ldr r5, [r7,#0x2c]
    mov r3, #1
    mov r4, #0
loc_814E2B8:
    ldrb r0, [r5]
    mov r1, #0x80
    tst r1, r0
    bne loc_814E2C2
    b loc_814E3DE
loc_814E2C2:
    mov r10, r3
    orr r4, r3
    mov r11, r4
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_814E300
loc_814E2CE:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_814E2EA
    ldrb r0, [r4,#0x10]
    cmp r0, #0
    beq loc_814E2F0
    sub r0, #1
    strb r0, [r4,#0x10]
    bne loc_814E2F0
    mov r0, #0x40 
    orr r1, r0
    strb r1, [r4]
    b loc_814E2F0
loc_814E2EA:
    add r0, r4, #0
loc_814E2EC:
    bl sub_814ECA0
loc_814E2F0:
    ldr r1, [r4,#0x34]
    cmp r1, r4
    bne loc_814E2FA
    mov r1, #0
    str r1, [r4,#0x34]
loc_814E2FA:
    add r4, r1, #0
    cmp r4, #0
    bne loc_814E2CE
loc_814E300:
    ldrb r3, [r5]
    mov r0, #0x40 
    tst r0, r3
    beq loc_814E37E
    add r0, r5, #0
    bl sub_814ECB4
    mov r0, #0x80
    strb r0, [r5]
    mov r0, #2
    strb r0, [r5,#0xf]
    mov r0, #0x40 
    strb r0, [r5,#0x13]
    mov r0, #0x16
    strb r0, [r5,#0x19]
    mov r0, #1
    add r1, r5, #6
    strb r0, [r1,#0x1e]
    b loc_814E37E
loc_814E326:
    ldr r2, [r5,#0x40]
    ldrb r1, [r2]
    cmp r1, #0x80
    bcs loc_814E332
    ldrb r1, [r5,#7]
    b loc_814E33C
loc_814E332:
    add r2, #1
    str r2, [r5,#0x40]
    cmp r1, #0xbd
    bcc loc_814E33C
    strb r1, [r5,#7]
loc_814E33C:
    cmp r1, #0xcf
    bcc loc_814E352
    mov r0, r8
    ldr r3, [r0,#0x38]
    add r0, r1, #0
    sub r0, #0xcf
    add r1, r7, #0
    add r2, r5, #0
    bl sub_814E4CC
    b loc_814E37E
loc_814E352:
    cmp r1, #0xb0
    bls loc_814E374
    add r0, r1, #0
    sub r0, #0xb1
    strb r0, [r7,#0xa]
    mov r3, r8
    ldr r3, [r3,#0x34]
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    add r0, r7, #0
    add r1, r5, #0
    bl sub_814E4CC
    ldrb r0, [r5]
    cmp r0, #0
    beq loc_814E3DA
    b loc_814E37E
loc_814E374:
    ldr r0, [pc, #0x814e4d0-0x814e374-4] // =unk_81C068C
    sub r1, #0x80
    add r1, r1, r0
    ldrb r0, [r1]
    strb r0, [r5,#1]
loc_814E37E:
    ldrb r0, [r5,#1]
    cmp r0, #0
    beq loc_814E326
    sub r0, #1
    strb r0, [r5,#1]
    ldrb r1, [r5,#0x19]
    cmp r1, #0
    beq loc_814E3DA
    ldrb r0, [r5,#0x17]
    cmp r0, #0
    beq loc_814E3DA
    ldrb r0, [r5,#0x1c]
    cmp r0, #0
    beq loc_814E3A0
    sub r0, #1
    strb r0, [r5,#0x1c]
    b loc_814E3DA
loc_814E3A0:
    ldrb r0, [r5,#0x1a]
    add r0, r0, r1
    strb r0, [r5,#0x1a]
    add r1, r0, #0
    sub r0, #0x40 
    lsl r0, r0, #0x18
    bpl loc_814E3B4
    lsl r2, r1, #0x18
    asr r2, r2, #0x18
    b loc_814E3B8
loc_814E3B4:
    mov r0, #0x80
    sub r2, r0, r1
loc_814E3B8:
    ldrb r0, [r5,#0x17]
    mul r0, r2
    asr r2, r0, #6
    ldrb r0, [r5,#0x16]
    eor r0, r2
    lsl r0, r0, #0x18
    beq loc_814E3DA
    strb r2, [r5,#0x16]
    ldrb r0, [r5]
    ldrb r1, [r5,#0x18]
    cmp r1, #0
    bne loc_814E3D4
    mov r1, #0xc
    b loc_814E3D6
loc_814E3D4:
    mov r1, #3
loc_814E3D6:
    orr r0, r1
    strb r0, [r5]
loc_814E3DA:
    mov r3, r10
    mov r4, r11
loc_814E3DE:
    sub r6, #1
    ble loc_814E3EA
    mov r0, #0x50 
    add r5, r5, r0
    lsl r3, r3, #1
    b loc_814E2B8
loc_814E3EA:
    ldr r0, [r7,#0xc]
    add r0, #1
    str r0, [r7,#0xc]
    cmp r4, #0
    bne loc_814E3FC
    mov r0, #0x80
    lsl r0, r0, #0x18
    str r0, [r7,#4]
    b loc_814E4BC
loc_814E3FC:
    str r4, [r7,#4]
    ldrh r0, [r7,#0x22]
    sub r0, #0x96
loc_814E402:
    strh r0, [r7,#0x22]
    cmp r0, #0x96
    bcc loc_814E40A
    b loc_814E2B0
loc_814E40A:
    ldrb r2, [r7,#8]
    ldr r5, [r7,#0x2c]
loc_814E40E:
    ldrb r0, [r5]
    mov r1, #0x80
    tst r1, r0
    beq loc_814E4B2
    mov r1, #0xf
    tst r1, r0
    beq loc_814E4B2
    mov r9, r2
    add r0, r7, #0
    add r1, r5, #0
    bl sub_814F2F0
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_814E4A8
loc_814E42C:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    bne loc_814E43C
    add r0, r4, #0
    bl sub_814ECA0
    b loc_814E498
loc_814E43C:
    ldrb r0, [r4,#1]
    mov r6, #7
    and r6, r0
    ldrb r3, [r5]
    mov r0, #3
    tst r0, r3
    beq loc_814E45A
    bl sub_814E528
    cmp r6, #0
    beq loc_814E45A
    ldrb r0, [r4,#0x1d]
    mov r1, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
loc_814E45A:
    ldrb r3, [r5]
    mov r0, #0xc
    tst r0, r3
    beq loc_814E498
    ldrb r1, [r4,#8]
    mov r0, #8
    ldrsb r0, [r5,r0]
    add r2, r1, r0
    bpl loc_814E46E
    mov r2, #0
loc_814E46E:
    cmp r6, #0
    beq loc_814E48C
    mov r0, r8
    ldr r3, [r0,#0x30]
    add r1, r2, #0
    ldrb r2, [r5,#9]
    add r0, r6, #0
    bl sub_814E4CC
    str r0, [r4,#0x20]
    ldrb r0, [r4,#0x1d]
    mov r1, #2
    orr r0, r1
    strb r0, [r4,#0x1d]
    b loc_814E498
loc_814E48C:
    add r1, r2, #0
    ldrb r2, [r5,#9]
    ldr r0, [r4,#0x24]
    bl sub_814E7F4
    str r0, [r4,#0x20]
loc_814E498:
    ldr r1, [r4,#0x34]
    cmp r1, r4
    bne loc_814E4A2
    mov r1, #0
    str r1, [r4,#0x34]
loc_814E4A2:
    add r4, r1, #0
    cmp r4, #0
    bne loc_814E42C
loc_814E4A8:
    ldrb r0, [r5]
    mov r1, #0xf0
    and r0, r1
    strb r0, [r5]
    mov r2, r9
loc_814E4B2:
    sub r2, #1
    ble loc_814E4BC
    mov r0, #0x50 
    add r5, r5, r0
    bgt loc_814E40E
loc_814E4BC:
    ldr r0, [pc, #0x814e4d8-0x814e4bc-4] // =0x68736D53
    str r0, [r7,#0x34]
    pop {r0-r7}
    mov r8, r0
    mov r9, r1
    mov r10, r2
    mov r11, r3
    pop {r3}
// end of function sub_814E260

.thumb
sub_814E4CC:
    bx r3
    .byte 0, 0
off_814E4D0:    .word unk_81C068C
off_814E4D4:    .word loc_3007FF0
dword_814E4D8:    .word 0x68736D53
// end of function sub_814E4CC

.thumb
sub_814E4DC:
    push {r4-r6,lr}
    add r5, r1, #0
    ldrb r1, [r5]
    mov r0, #0x80
    tst r0, r1
    beq loc_814E51E
    ldr r4, [r5,#0x20]
    cmp r4, #0
    beq loc_814E51C
    mov r6, #0
loc_814E4F0:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_814E50A
    ldrb r0, [r4,#1]
    mov r3, #7
    and r0, r3
    beq loc_814E508
    ldr r3, [pc, #0x814e524-0x814e4fe-2] // =loc_3007FF0
    ldr r3, [r3]
    ldr r3, [r3,#0x2c]
    bl sub_814E4CC
loc_814E508:
    strb r6, [r4]
loc_814E50A:
    str r6, [r4,#0x2c]
    ldr r0, [r4,#0x34]
    cmp r0, r4
    bne loc_814E516
    mov r0, #0
    str r0, [r4,#0x34]
loc_814E516:
    add r4, r0, #0
    cmp r4, #0
    bne loc_814E4F0
loc_814E51C:
    str r4, [r5,#0x20]
loc_814E51E:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814E524:    .word loc_3007FF0
// end of function sub_814E4DC

.thumb
sub_814E528:
    ldrb r1, [r4,#0x12]
    mov r0, #0x14
    ldrsb r2, [r4,r0]
    mov r3, #0x80
    add r3, r3, r2
    mul r3, r1
    ldrb r0, [r5,#0x10]
    mul r0, r3
    asr r0, r0, #0xe
    cmp r0, #0xff
    bls loc_814E540
    mov r0, #0xff
loc_814E540:
    strb r0, [r4,#2]
    mov r3, #0x7f
    sub r3, r3, r2
    mul r3, r1
    ldrb r0, [r5,#0x11]
    mul r0, r3
    asr r0, r0, #0xe
    cmp r0, #0xff
    bls loc_814E554
    mov r0, #0xff
loc_814E554:
    strb r0, [r4,#3]
    bx lr
// end of function sub_814E528

.thumb
sub_814E558:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4-r7}
    sub sp, sp, #0x18
    str r1, [sp]
    add r5, r2, #0
    ldr r1, [pc, #0x814e750-0x814e56a-2] // =loc_3007FF0
    ldr r1, [r1]
    str r1, [sp,#4]
    ldr r1, [pc, #0x814e754-0x814e570-4] // =unk_81C068C
    add r0, r0, r1
    ldrb r0, [r0]
    strb r0, [r5,#4]
    ldr r3, [r5,#0x40]
    ldrb r0, [r3]
    cmp r0, #0x80
    bcs loc_814E59E
    strb r0, [r5,#5]
    add r3, #1
    ldrb r0, [r3]
    cmp r0, #0x80
    bcs loc_814E59C
    strb r0, [r5,#6]
    add r3, #1
    ldrb r0, [r3]
    cmp r0, #0x80
    bcs loc_814E59C
    ldrb r1, [r5,#4]
    add r1, r1, r0
    strb r1, [r5,#4]
    add r3, #1
loc_814E59C:
    str r3, [r5,#0x40]
loc_814E59E:
    mov r0, #0
    str r0, [sp,#0x14]
    add r4, r5, #0
    add r4, #0x24 
    ldrb r2, [r4]
    mov r0, #0xc0
    tst r0, r2
    beq loc_814E5F0
    ldrb r3, [r5,#5]
    mov r0, #0x40 
    tst r0, r2
    beq loc_814E5BE
    ldr r1, [r5,#0x2c]
    add r1, r1, r3
    ldrb r0, [r1]
    b loc_814E5C0
loc_814E5BE:
    add r0, r3, #0
loc_814E5C0:
    lsl r1, r0, #1
    add r1, r1, r0
    lsl r1, r1, #2
    ldr r0, [r5,#0x28]
    add r1, r1, r0
    mov r9, r1
    mov r6, r9
    ldrb r1, [r6]
    mov r0, #0xc0
    tst r0, r1
    beq loc_814E5D8
    b loc_814E73E
loc_814E5D8:
    mov r0, #0x80
    tst r0, r2
    beq loc_814E5F4
    ldrb r1, [r6,#3]
    mov r0, #0x80
    tst r0, r1
    beq loc_814E5EC
    sub r1, #0xc0
    lsl r1, r1, #1
    str r1, [sp,#0x14]
loc_814E5EC:
    ldrb r3, [r6,#1]
    b loc_814E5F4
loc_814E5F0:
    mov r9, r4
    ldrb r3, [r5,#5]
loc_814E5F4:
    str r3, [sp,#8]
    ldr r6, [sp]
    ldrb r1, [r6,#9]
    ldrb r0, [r5,#0x1d]
    add r0, r0, r1
    cmp r0, #0xff
    bls loc_814E604
    mov r0, #0xff
loc_814E604:
    str r0, [sp,#0x10]
    mov r6, r9
    ldrb r0, [r6]
    mov r6, #7
    and r6, r0
    str r6, [sp,#0xc]
    beq loc_814E644
    ldr r0, [sp,#4]
    ldr r4, [r0,#0x1c]
    cmp r4, #0
    bne loc_814E61C
    b loc_814E73E
loc_814E61C:
    sub r6, #1
    lsl r0, r6, #6
    add r4, r4, r0
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_814E698
    mov r0, #0x40 
    tst r0, r1
    bne loc_814E698
    ldrb r1, [r4,#0x13]
    ldr r0, [sp,#0x10]
    cmp r1, r0
    bcc loc_814E698
    beq loc_814E63C
    b loc_814E73E
loc_814E63C:
    ldr r0, [r4,#0x2c]
    cmp r0, r5
    bcs loc_814E698
    b loc_814E73E
loc_814E644:
    ldr r6, [sp,#0x10]
    add r7, r5, #0
    mov r2, #0
    mov r8, r2
    ldr r4, [sp,#4]
    ldrb r3, [r4,#6]
    add r4, #0x50 
loc_814E652:
    ldrb r1, [r4]
    mov r0, #0xc7
    tst r0, r1
    beq loc_814E698
    mov r0, #0x40 
    tst r0, r1
    beq loc_814E66C
    cmp r2, #0
    bne loc_814E670
    add r2, #1
    ldrb r6, [r4,#0x13]
    ldr r7, [r4,#0x2c]
    b loc_814E68A
loc_814E66C:
    cmp r2, #0
    bne loc_814E68C
loc_814E670:
    ldrb r0, [r4,#0x13]
    cmp r0, r6
    bcs loc_814E67C
    add r6, r0, #0
    ldr r7, [r4,#0x2c]
    b loc_814E68A
loc_814E67C:
    bhi loc_814E68C
    ldr r0, [r4,#0x2c]
    cmp r0, r7
    bls loc_814E688
    add r7, r0, #0
    b loc_814E68A
loc_814E688:
    bcc loc_814E68C
loc_814E68A:
    mov r8, r4
loc_814E68C:
    add r4, #0x40 
    sub r3, #1
    bgt loc_814E652
    mov r4, r8
    cmp r4, #0
    beq loc_814E73E
loc_814E698:
    add r0, r4, #0
    bl sub_814ECA0
    mov r1, #0
    str r1, [r4,#0x30]
    ldr r3, [r5,#0x20]
    str r3, [r4,#0x34]
    cmp r3, #0
    beq loc_814E6AC
    str r4, [r3,#0x30]
loc_814E6AC:
    str r4, [r5,#0x20]
    str r5, [r4,#0x2c]
    ldrb r0, [r5,#0x1b]
    strb r0, [r5,#0x1c]
    cmp r0, r1
    beq loc_814E6BE
    add r1, r5, #0
    bl sub_814E7A4
loc_814E6BE:
    ldr r0, [sp]
    add r1, r5, #0
    bl sub_814F2F0
    ldr r0, [r5,#4]
    str r0, [r4,#0x10]
    ldr r0, [sp,#0x10]
    strb r0, [r4,#0x13]
    ldr r0, [sp,#8]
    strb r0, [r4,#8]
    ldr r0, [sp,#0x14]
    strb r0, [r4,#0x14]
    mov r6, r9
    ldrb r0, [r6]
    strb r0, [r4,#1]
    ldr r7, [r6,#4]
    str r7, [r4,#0x24]
    ldr r0, [r6,#8]
    str r0, [r4,#4]
    ldrh r0, [r5,#0x1e]
    strh r0, [r4,#0xc]
    bl sub_814E528
    ldrb r1, [r4,#8]
    mov r0, #8
    ldrsb r0, [r5,r0]
    add r3, r1, r0
    bpl loc_814E6F8
    mov r3, #0
loc_814E6F8:
    ldr r6, [sp,#0xc]
    cmp r6, #0
    beq loc_814E726
    mov r6, r9
    ldrb r0, [r6,#2]
    strb r0, [r4,#0x1e]
    ldrb r1, [r6,#3]
    mov r0, #0x80
    tst r0, r1
    bne loc_814E712
    mov r0, #0x70 
    tst r0, r1
    bne loc_814E714
loc_814E712:
    mov r1, #8
loc_814E714:
    strb r1, [r4,#0x1f]
    ldrb r2, [r5,#9]
    add r1, r3, #0
    ldr r0, [sp,#0xc]
    ldr r3, [sp,#4]
    ldr r3, [r3,#0x30]
    bl sub_814E4CC
    b loc_814E730
loc_814E726:
    ldrb r2, [r5,#9]
    add r1, r3, #0
    add r0, r7, #0
loc_814E72C:
    bl sub_814E7F4
loc_814E730:
    str r0, [r4,#0x20]
    mov r0, #0x80
    strb r0, [r4]
    ldrb r1, [r5]
    mov r0, #0xf0
    and r0, r1
    strb r0, [r5]
loc_814E73E:
    add sp, sp, #0x18
    pop {r0-r7}
    mov r8, r0
    mov r9, r1
    mov r10, r2
    mov r11, r3
    pop {r0}
    bx r0
    .byte 0, 0
off_814E750:    .word loc_3007FF0
off_814E754:    .word unk_81C068C
// end of function sub_814E558

.thumb
sub_814E758:
    push {r4,r5}
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    cmp r3, #0x80
    bcs loc_814E76A
    strb r3, [r1,#5]
    add r2, #1
    str r2, [r1,#0x40]
    b loc_814E76C
loc_814E76A:
    ldrb r3, [r1,#5]
loc_814E76C:
    ldr r1, [r1,#0x20]
    cmp r1, #0
    beq loc_814E79E
    mov r4, #0x83
    mov r5, #0x40 
loc_814E776:
    ldrb r2, [r1]
    tst r2, r4
    beq loc_814E78E
    tst r2, r5
    bne loc_814E78E
    ldrb r0, [r1,#0x11]
    cmp r0, r3
    bne loc_814E78E
    mov r0, #0x40 
    orr r2, r0
    strb r2, [r1]
    b loc_814E79E
loc_814E78E:
    ldr r2, [r1,#0x34]
    cmp r2, r1
    bne loc_814E798
    mov r2, #0
    str r2, [r1,#0x34]
loc_814E798:
    add r1, r2, #0
    cmp r1, #0
    bne loc_814E776
loc_814E79E:
    pop {r4,r5}
    bx lr
    .balign 4, 0x00
// end of function sub_814E758

.thumb
sub_814E7A4:
    mov r2, #0
    strb r2, [r1,#0x16]
    strb r2, [r1,#0x1a]
    ldrb r2, [r1,#0x18]
    cmp r2, #0
    bne loc_814E7B4
    mov r2, #0xc
    b loc_814E7B6
loc_814E7B4:
    mov r2, #3
loc_814E7B6:
    ldrb r3, [r1]
    orr r3, r2
    strb r3, [r1]
    bx lr
    .byte 0, 0
// end of function sub_814E7A4

.thumb
sub_814E7C0:
    ldr r2, [r1,#0x40]
    add r3, r2, #1
    str r3, [r1,#0x40]
    ldrb r3, [r2]
    bx lr
    .balign 4, 0x00
// end of function sub_814E7C0

.thumb
sub_814E7CC:
    mov r12, lr
    bl sub_814E7C0
    strb r3, [r1,#0x19]
    cmp r3, #0
    bne loc_814E7DC
    bl sub_814E7A4
loc_814E7DC:
    bx r12
    .byte 0, 0
// end of function sub_814E7CC

.thumb
sub_814E7E0:
    mov r12, lr
    bl sub_814E7C0
    strb r3, [r1,#0x17]
    cmp r3, #0
    bne loc_814E7F0
    bl sub_814E7A4
loc_814E7F0:
    bx r12
    .balign 4, 0x00
// end of function sub_814E7E0

.thumb
sub_814E7F4:
    push {r4-r7,lr}
    mov r12, r0
    lsl r1, r1, #0x18
    lsr r6, r1, #0x18
    lsl r7, r2, #0x18
    cmp r6, #0xb2
    bls loc_814E808
    mov r6, #0xb2
    mov r7, #0xff
    lsl r7, r7, #0x18
loc_814E808:
    ldr r3, [pc, #0x814e850-0x814e808-4] // =unk_81C04A8
    add r0, r6, r3
    ldrb r5, [r0]
    ldr r4, [pc, #0x814e854-0x814e80e-2] // =dword_81C055C
    mov r2, #0xf
    add r0, r5, #0
    and r0, r2
    lsl r0, r0, #2
    add r0, r0, r4
    lsr r1, r5, #4
    ldr r5, [r0]
    lsr r5, r1
    add r0, r6, #1
    add r0, r0, r3
    ldrb r1, [r0]
    add r0, r1, #0
    and r0, r2
    lsl r0, r0, #2
    add r0, r0, r4
    lsr r1, r1, #4
    ldr r0, [r0]
    lsr r0, r1
    mov r1, r12
    ldr r4, [r1,#4]
    sub r0, r0, r5
    add r1, r7, #0
    bl dword_814DBF4
    add r1, r0, #0
    add r1, r5, r1
    add r0, r4, #0
    bl dword_814DBF4
    pop {r4-r7}
    pop {r1}
    bx r1
off_814E850:    .word unk_81C04A8
off_814E854:    .word dword_81C055C
// end of function sub_814E7F4

    bx lr
    .balign 4, 0x00
.thumb
sub_814E85C:
    push {lr}
    add r2, r0, #0
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x814e874-0x814e862-2] // =0x68736D53
    cmp r3, r0
    bne loc_814E870
    ldr r0, [r2,#4]
    ldr r1, [pc, #0x814e878-0x814e86a-2] // =0x7FFFFFFF
    and r0, r1
    str r0, [r2,#4]
loc_814E870:
    pop {r0}
    bx r0
dword_814E874:    .word 0x68736D53
dword_814E878:    .word 0x7FFFFFFF
// end of function sub_814E85C

.thumb
sub_814E87C:
    push {lr}
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x814e89c-0x814e886-2] // =0x68736D53
    cmp r3, r0
    bne loc_814E896
    strh r1, [r2,#0x26]
    strh r1, [r2,#0x24]
    mov r0, #0x80
    lsl r0, r0, #1
    strh r0, [r2,#0x28]
loc_814E896:
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814E89C:    .word 0x68736D53
// end of function sub_814E87C

.thumb
sub_814E8A0:
    push {r4-r6,lr}
    ldr r0, [pc, #0x814e8f4-0x814e8a2-2] // =unk_814DC89
    mov r1, #2
    neg r1, r1
    and r0, r1
    ldr r1, [pc, #0x814e8f8-0x814e8aa-2] // =loc_3005700
    ldr r2, [pc, #0x814e8fc-0x814e8ac-4] // =Timer0Counter_Reload
    bl SWI_CpuSet
    ldr r0, [pc, #0x814e900-0x814e8b2-2] // =unk_30045C0
    bl sub_814ECC8
    ldr r0, [pc, #0x814e904-0x814e8b8-4] // =unk_3005600
    bl sub_814EB84
    ldr r0, [pc, #0x814e908-0x814e8be-2] // =0x93F400
    bl sub_814EE2C
    ldr r0, [pc, #0x814e90c-0x814e8c4-4] // =0x20
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    beq loc_814E8EE
    ldr r5, [pc, #0x814e910-0x814e8ce-2] // =off_8158278
    add r6, r0, #0
loc_814E8D2:
    ldr r4, [r5]
    ldr r1, [r5,#4]
    ldrb r2, [r5,#8]
    add r0, r4, #0
    bl sub_814F08C
    ldrh r0, [r5,#0xa]
    strb r0, [r4,#0xb]
    ldr r0, [pc, #0x814e914-0x814e8e2-2] // =byte_2010B90
    str r0, [r4,#0x18]
    add r5, #0xc
    sub r6, #1
    cmp r6, #0
    bne loc_814E8D2
loc_814E8EE:
    pop {r4-r6}
    pop {r0}
    bx r0
off_814E8F4:    .word unk_814DC89
off_814E8F8:    .word loc_3005700
off_814E8FC:    .word Timer0Counter_Reload
off_814E900:    .word unk_30045C0
off_814E904:    .word unk_3005600
dword_814E908:    .word 0x93F400
dword_814E90C:    .word 0x20
off_814E910:    .word off_8158278
off_814E914:    .word byte_2010B90
// end of function sub_814E8A0

.thumb
sub_814E918:
    push {lr}
    bl sub_814DC04
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814E918

.thumb
m4a_SongNumStart:
    push {lr}
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x814e948-0x814e928-4] // =off_8158278
    ldr r1, [pc, #0x814e94c-0x814e92a-2] // =sound_MusicTable
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r2, [r0,#4]
    lsl r1, r2, #1
    add r1, r1, r2
    lsl r1, r1, #2
    add r1, r1, r3
    ldr r2, [r1]
    ldr r1, [r0]
    add r0, r2, #0
    bl sound_814F104
    pop {r0}
    bx r0
off_814E948:    .word off_8158278
off_814E94C:    .word sound_MusicTable
// end of function m4a_SongNumStart

.thumb
sub_814E950:
    push {lr}
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x814e97c-0x814e954-4] // =off_8158278
    ldr r1, [pc, #0x814e980-0x814e956-2] // =sound_MusicTable
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r2, [r0,#4]
    lsl r1, r2, #1
    add r1, r1, r2
    lsl r1, r1, #2
    add r1, r1, r3
    ldr r1, [r1]
    ldr r3, [r1]
    ldr r2, [r0]
    cmp r3, r2
    beq loc_814E984
    add r0, r1, #0
    add r1, r2, #0
    bl sound_814F104
    b loc_814E998
    .balign 4, 0x00
off_814E97C:    .word off_8158278
off_814E980:    .word sound_MusicTable
loc_814E984:
    ldr r2, [r1,#4]
    ldrh r0, [r1,#4]
    cmp r0, #0
    beq loc_814E990
    cmp r2, #0
    bge loc_814E998
loc_814E990:
    add r0, r1, #0
    add r1, r3, #0
    bl sound_814F104
loc_814E998:
    pop {r0}
    bx r0
// end of function sub_814E950

.thumb
sub_814E99C:
    push {lr}
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x814e9c8-0x814e9a0-4] // =off_8158278
    ldr r1, [pc, #0x814e9cc-0x814e9a2-2] // =sound_MusicTable
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r2, [r0,#4]
    lsl r1, r2, #1
    add r1, r1, r2
    lsl r1, r1, #2
    add r1, r1, r3
    ldr r1, [r1]
    ldr r3, [r1]
    ldr r2, [r0]
    cmp r3, r2
    beq loc_814E9D0
    add r0, r1, #0
    add r1, r2, #0
    bl sound_814F104
    b loc_814E9EC
    .balign 4, 0x00
off_814E9C8:    .word off_8158278
off_814E9CC:    .word sound_MusicTable
loc_814E9D0:
    ldr r2, [r1,#4]
    ldrh r0, [r1,#4]
    cmp r0, #0
    bne loc_814E9E2
    add r0, r1, #0
    add r1, r3, #0
    bl sound_814F104
    b loc_814E9EC
loc_814E9E2:
    cmp r2, #0
    bge loc_814E9EC
    add r0, r1, #0
    bl sub_814E85C
loc_814E9EC:
    pop {r0}
    bx r0
// end of function sub_814E99C

.thumb
sub_814E9F0:
    push {lr}
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x814ea1c-0x814e9f4-4] // =off_8158278
    ldr r1, [pc, #0x814ea20-0x814e9f6-2] // =sound_MusicTable
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r2, [r0,#4]
    lsl r1, r2, #1
    add r1, r1, r2
    lsl r1, r1, #2
    add r1, r1, r3
    ldr r2, [r1]
    ldr r1, [r2]
    ldr r0, [r0]
    cmp r1, r0
    bne loc_814EA16
    add r0, r2, #0
    bl sub_814F1E8
loc_814EA16:
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814EA1C:    .word off_8158278
off_814EA20:    .word sound_MusicTable
// end of function sub_814E9F0

.thumb
sub_814EA24:
    push {lr}
    lsl r0, r0, #0x10
    ldr r3, [pc, #0x814ea50-0x814ea28-4] // =off_8158278
    ldr r1, [pc, #0x814ea54-0x814ea2a-2] // =sound_MusicTable
    lsr r0, r0, #0xd
    add r0, r0, r1
    ldrh r2, [r0,#4]
    lsl r1, r2, #1
    add r1, r1, r2
    lsl r1, r1, #2
    add r1, r1, r3
    ldr r2, [r1]
    ldr r1, [r2]
    ldr r0, [r0]
    cmp r1, r0
    bne loc_814EA4A
    add r0, r2, #0
    bl sub_814E85C
loc_814EA4A:
    pop {r0}
    bx r0
    .byte 0, 0
off_814EA50:    .word off_8158278
off_814EA54:    .word sound_MusicTable
// end of function sub_814EA24

.thumb
sub_814EA58:
    push {r4,r5,lr}
    ldr r0, [pc, #0x814ea7c-0x814ea5a-2] // =0x20
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    beq loc_814EA76
    ldr r5, [pc, #0x814ea80-0x814ea64-4] // =off_8158278
    add r4, r0, #0
loc_814EA68:
    ldr r0, [r5]
    bl sub_814F1E8
    add r5, #0xc
    sub r4, #1
    cmp r4, #0
    bne loc_814EA68
loc_814EA76:
    pop {r4,r5}
    pop {r0}
    bx r0
dword_814EA7C:    .word 0x20
off_814EA80:    .word off_8158278
// end of function sub_814EA58

.thumb
sub_814EA84:
    push {lr}
    bl sub_814E85C
    pop {r0}
    bx r0
    .byte 0, 0
// end of function sub_814EA84

.thumb
sub_814EA90:
    push {r4,r5,lr}
    ldr r0, [pc, #0x814eab4-0x814ea92-2] // =0x20
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    cmp r0, #0
    beq loc_814EAAE
    ldr r5, [pc, #0x814eab8-0x814ea9c-4] // =off_8158278
    add r4, r0, #0
loc_814EAA0:
    ldr r0, [r5]
    bl sub_814E85C
    add r5, #0xc
    sub r4, #1
    cmp r4, #0
    bne loc_814EAA0
loc_814EAAE:
    pop {r4,r5}
    pop {r0}
    bx r0
dword_814EAB4:    .word 0x20
off_814EAB8:    .word off_8158278
// end of function sub_814EA90

.thumb
sub_814EABC:
    push {lr}
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    bl sub_814E87C
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814EABC

.thumb
sub_814EACC:
    push {lr}
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x814eae8-0x814ead6-2] // =0x68736D53
    cmp r3, r0
    bne loc_814EAE4
    strh r1, [r2,#0x26]
    strh r1, [r2,#0x24]
    ldr r0, [pc, #0x814eaec-0x814eae0-4] // =0x101
    strh r0, [r2,#0x28]
loc_814EAE4:
    pop {r0}
    bx r0
dword_814EAE8:    .word 0x68736D53
off_814EAEC:    .word 0x101
// end of function sub_814EACC

.thumb
sub_814EAF0:
    push {lr}
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x814eb14-0x814eafa-2] // =0x68736D53
    cmp r3, r0
    bne loc_814EB10
    strh r1, [r2,#0x26]
    strh r1, [r2,#0x24]
    mov r0, #2
    strh r0, [r2,#0x28]
    ldr r0, [r2,#4]
    ldr r1, [pc, #0x814eb18-0x814eb0a-2] // =0x7FFFFFFF
    and r0, r1
    str r0, [r2,#4]
loc_814EB10:
    pop {r0}
    bx r0
dword_814EB14:    .word 0x68736D53
dword_814EB18:    .word 0x7FFFFFFF
// end of function sub_814EAF0

.thumb
sub_814EB1C:
    push {r4-r7,lr}
    sub sp, sp, #4
    add r7, r0, #0
    ldr r1, [r7,#0x34]
    ldr r0, [pc, #0x814eb80-0x814eb24-4] // =0x68736D53
    cmp r1, r0
    bne loc_814EB76
    add r0, r1, #1
    str r0, [r7,#0x34]
    ldrb r5, [r7,#8]
    ldr r4, [r7,#0x2c]
    cmp r5, #0
    ble loc_814EB72
    mov r2, #0x80
loc_814EB38:
    ldrb r1, [r4]
    add r0, r2, #0
    and r0, r1
    cmp r0, #0
    beq loc_814EB6A
    mov r6, #0x40 
    add r0, r6, #0
    and r0, r1
    cmp r0, #0
    beq loc_814EB6A
    add r0, r4, #0
    str r2, [sp]
    bl sub_814ECB4
    ldr r2, [sp]
    strb r2, [r4]
    mov r0, #2
    strb r0, [r4,#0xf]
    strb r6, [r4,#0x13]
    mov r0, #0x16
    strb r0, [r4,#0x19]
    add r1, r4, #0
    add r1, #0x24 
    mov r0, #1
    strb r0, [r1]
loc_814EB6A:
    sub r5, #1
    add r4, #0x50 
    cmp r5, #0
    bgt loc_814EB38
loc_814EB72:
    ldr r0, [pc, #0x814eb80-0x814eb72-2] // =0x68736D53
    str r0, [r7,#0x34]
loc_814EB76:
    add sp, sp, #4
    pop {r4-r7}
    pop {r0}
    bx r0
    .byte 0, 0
dword_814EB80:    .word 0x68736D53
// end of function sub_814EB1C

.thumb
sub_814EB84:
    push {r4-r6,lr}
    sub sp, sp, #4
    add r5, r0, #0
    ldr r1, [pc, #0x814ec4c-0x814eb8a-2] // =ControlSoundon_off_NR52_
    mov r0, #0x8f
    strh r0, [r1]
    ldr r3, [pc, #0x814ec50-0x814eb90-4] // =ControlStereo_Volume_Enable_NR50_NR51_
    mov r2, #0
    strh r2, [r3]
    ldr r0, [pc, #0x814ec54-0x814eb96-2] // =Channel1Duty_Length_Envelope_NR11_NR12_+1
    mov r1, #8
    strb r1, [r0]
    add r0, #6
    strb r1, [r0]
    add r0, #0x10
    strb r1, [r0]
    sub r0, #0x14
    mov r1, #0x80
    strb r1, [r0]
    add r0, #8
    strb r1, [r0]
    add r0, #0x10
    strb r1, [r0]
    sub r0, #0xd
    strb r2, [r0]
    mov r0, #0x77 
    strb r0, [r3]
    ldr r0, [pc, #0x814ec58-0x814ebba-2] // =loc_3007FF0
    ldr r4, [r0]
    ldr r6, [r4]
    ldr r0, [pc, #0x814ec5c-0x814ebc0-4] // =0x68736D53
    cmp r6, r0
    bne loc_814EC44
    add r0, r6, #1
    str r0, [r4]
    ldr r1, [pc, #0x814ec60-0x814ebca-2] // =dword_3005570
    ldr r0, [pc, #0x814ec64-0x814ebcc-4] // =sub_814FBFC+1
    str r0, [r1,#0x20] // (dword_3005590 - 0x3005570)
    ldr r0, [pc, #0x814ec68-0x814ebd0-4] // =sub_814E7CC+1
    str r0, [r1,#0x44] // (dword_30055B4 - 0x3005570)
    ldr r0, [pc, #0x814ec6c-0x814ebd4-4] // =sub_814E7E0+1
    str r0, [r1,#0x4c] // (dword_30055BC - 0x3005570)
    ldr r0, [pc, #0x814ec70-0x814ebd8-4] // =sub_814FD54+1
    str r0, [r1,#0x70] // (dword_30055E0 - 0x3005570)
    ldr r0, [pc, #0x814ec74-0x814ebdc-4] // =sub_814E758+1
    str r0, [r1,#0x74] // (dword_30055E4 - 0x3005570)
    ldr r0, [pc, #0x814ec78-0x814ebe0-4] // =sub_814EDC0+1
    str r0, [r1,#0x78] // (dword_30055E8 - 0x3005570)
    ldr r0, [pc, #0x814ec7c-0x814ebe4-4] // =sub_814E4DC+1
    str r0, [r1,#0x7c] // (dword_30055EC - 0x3005570)
    add r2, r1, #0
    add r2, #0x80
    ldr r0, [pc, #0x814ec80-0x814ebec-4] // =sub_814F228+1
    str r0, [r2]
    add r1, #0x84
    ldr r0, [pc, #0x814ec84-0x814ebf2-2] // =sub_814F2F0+1
    str r0, [r1]
    str r5, [r4,#0x1c]
    ldr r0, [pc, #0x814ec88-0x814ebf8-4] // =sub_814F508+1
    str r0, [r4,#0x28]
    ldr r0, [pc, #0x814ec8c-0x814ebfc-4] // =sub_814F44C+1
    str r0, [r4,#0x2c]
    ldr r0, [pc, #0x814ec90-0x814ec00-4] // =sub_814F3A4+1
    str r0, [r4,#0x30]
    ldr r0, [pc, #0x814ec94-0x814ec04-4] // =0x0
    mov r1, #0
    strb r0, [r4,#0xc]
    str r1, [sp]
    ldr r2, [pc, #0x814ec98-0x814ec0c-4] // =0x5000040
    mov r0, sp
    add r1, r5, #0
    bl SWI_CpuSet
    mov r0, #1
    strb r0, [r5,#1]
    mov r0, #0x11
    strb r0, [r5,#0x1c]
    add r1, r5, #0
    add r1, #0x41 
    mov r0, #2
    strb r0, [r1]
    add r1, #0x1b
    mov r0, #0x22 
    strb r0, [r1]
    add r1, #0x25 
    mov r0, #3
    strb r0, [r1]
    add r1, #0x1b
    mov r0, #0x44 
    strb r0, [r1]
    add r1, #0x24 
    mov r0, #4
    strb r0, [r1,#1]
    mov r0, #0x88
    strb r0, [r1,#0x1c]
    str r6, [r4]
loc_814EC44:
    add sp, sp, #4
    pop {r4-r6}
    pop {r0}
    bx r0
off_814EC4C:    .word ControlSoundon_off_NR52_
off_814EC50:    .word ControlStereo_Volume_Enable_NR50_NR51_
off_814EC54:    .word Channel1Duty_Length_Envelope_NR11_NR12_+1
off_814EC58:    .word loc_3007FF0
dword_814EC5C:    .word 0x68736D53
off_814EC60:    .word dword_3005570
off_814EC64:    .word sub_814FBFC+1
off_814EC68:    .word sub_814E7CC+1
off_814EC6C:    .word sub_814E7E0+1
off_814EC70:    .word sub_814FD54+1
off_814EC74:    .word sub_814E758+1
off_814EC78:    .word sub_814EDC0+1
off_814EC7C:    .word sub_814E4DC+1
off_814EC80:    .word sub_814F228+1
off_814EC84:    .word sub_814F2F0+1
off_814EC88:    .word sub_814F508+1
off_814EC8C:    .word sub_814F44C+1
off_814EC90:    .word sub_814F3A4+1
dword_814EC94:    .word 0x0
dword_814EC98:    .word 0x5000040
// end of function sub_814EB84

    svc 0x2a 
    bx lr
.thumb
sub_814ECA0:
    push {lr}
    ldr r1, [pc, #0x814ecb0-0x814eca2-2] // =dword_30055F8
    ldr r1, [r1]
    bl sub_814DA64
    pop {r0}
    bx r0
    .byte 0, 0
off_814ECB0:    .word dword_30055F8
// end of function sub_814ECA0

.thumb
sub_814ECB4:
    push {lr}
    ldr r1, [pc, #0x814ecc4-0x814ecb6-2] // =dword_30055FC
    ldr r1, [r1]
    bl sub_814DA64
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814ECC4:    .word dword_30055FC
// end of function sub_814ECB4

.thumb
sub_814ECC8:
    push {r4,r5,lr}
    sub sp, sp, #4
    add r5, r0, #0
    mov r3, #0
    str r3, [r5]
    ldr r1, [pc, #0x814ed80-0x814ecd2-2] // =DMA1WordCount
    ldr r0, [r1]
    mov r2, #0x80
    lsl r2, r2, #0x12
    and r0, r2
    cmp r0, #0
    beq loc_814ECE4
    ldr r0, [pc, #0x814ed84-0x814ece0-4] // =0x84400004
    str r0, [r1]
loc_814ECE4:
    ldr r1, [pc, #0x814ed88-0x814ece4-4] // =DMA2WordCount
    ldr r0, [r1]
    and r0, r2
    cmp r0, #0
    beq loc_814ECF2
    ldr r0, [pc, #0x814ed84-0x814ecee-2] // =0x84400004
    str r0, [r1]
loc_814ECF2:
    ldr r0, [pc, #0x814ed8c-0x814ecf2-2] // =DMA1Control
    mov r2, #0x80
    lsl r2, r2, #3
    add r1, r2, #0
    strh r1, [r0]
    add r0, #0xc
    strh r1, [r0]
    ldr r1, [pc, #0x814ed90-0x814ed00-4] // =ControlSoundon_off_NR52_
    mov r0, #0x8f
    strh r0, [r1]
    sub r1, #2
    ldr r2, [pc, #0x814ed94-0x814ed08-4] // =0xA90E
    add r0, r2, #0
    strh r0, [r1]
    ldr r2, [pc, #0x814ed98-0x814ed0e-2] // =SoundPWMControl+1
    ldrb r1, [r2]
    mov r0, #0x3f 
    and r0, r1
    mov r1, #0x40 
    orr r0, r1
    strb r0, [r2]
    ldr r1, [pc, #0x814ed9c-0x814ed1c-4] // =DMA1SourceAddress
    mov r2, #0xd4
    lsl r2, r2, #2
    add r0, r5, r2
    str r0, [r1]
    add r1, #4
    ldr r0, [pc, #0x814eda0-0x814ed28-4] // =ChannelAFIFO_Data0_3
    str r0, [r1]
    add r1, #8
    mov r2, #0x98
    lsl r2, r2, #4
    add r0, r5, r2
    str r0, [r1]
    add r1, #4
    ldr r0, [pc, #0x814eda4-0x814ed38-4] // =ChannelBFIFO_Data0_3
    str r0, [r1]
    ldr r0, [pc, #0x814eda8-0x814ed3c-4] // =loc_3007FF0
    str r5, [r0]
    str r3, [sp]
    ldr r2, [pc, #0x814edac-0x814ed42-2] // =0x50003EC
    mov r0, sp
    add r1, r5, #0
    bl SWI_CpuSet
    mov r0, #8
    strb r0, [r5,#6]
    mov r0, #0xf
    strb r0, [r5,#7]
    ldr r0, [pc, #0x814edb0-0x814ed54-4] // =sub_814E558+1
    str r0, [r5,#0x38]
    ldr r0, [pc, #0x814edb4-0x814ed58-4] // =nullsub_23+1
    str r0, [r5,#0x28]
    str r0, [r5,#0x2c]
    str r0, [r5,#0x30]
    str r0, [r5,#0x3c]
    ldr r4, [pc, #0x814edb8-0x814ed62-2] // =dword_3005570
    add r0, r4, #0
    bl sub_814E09C
    str r4, [r5,#0x34]
    mov r0, #0x80
    lsl r0, r0, #0xb
    bl sub_814EDC0
    ldr r0, [pc, #0x814edbc-0x814ed74-4] // =0x68736D53
    str r0, [r5]
    add sp, sp, #4
    pop {r4,r5}
    pop {r0}
    bx r0
off_814ED80:    .word DMA1WordCount
dword_814ED84:    .word 0x84400004
off_814ED88:    .word DMA2WordCount
off_814ED8C:    .word DMA1Control
off_814ED90:    .word ControlSoundon_off_NR52_
dword_814ED94:    .word 0xA90E
off_814ED98:    .word SoundPWMControl+1
off_814ED9C:    .word DMA1SourceAddress
off_814EDA0:    .word ChannelAFIFO_Data0_3
off_814EDA4:    .word ChannelBFIFO_Data0_3
off_814EDA8:    .word loc_3007FF0
dword_814EDAC:    .word 0x50003EC
off_814EDB0:    .word sub_814E558+1
off_814EDB4:    .word nullsub_23+1
off_814EDB8:    .word dword_3005570
dword_814EDBC:    .word 0x68736D53
// end of function sub_814ECC8

.thumb
sub_814EDC0:
    push {r4,r5,lr}
    add r4, r0, #0
    bl sub_814EF14
    ldr r0, [pc, #0x814ee18-0x814edc8-4] // =loc_3007FF0
    ldr r5, [r0]
    mov r0, #0xf0
    lsl r0, r0, #0xc
    and r0, r4
    lsr r4, r0, #0x10
    strb r4, [r5,#8]
    ldr r1, [pc, #0x814ee1c-0x814edd6-2] // =dword_81C058C
    sub r0, r4, #1
    lsl r0, r0, #1
    add r0, r0, r1
    ldrh r4, [r0]
    str r4, [r5,#0x10]
    mov r0, #0xc6
    lsl r0, r0, #3
    add r1, r4, #0
    bl sub_814DA9C
    strb r0, [r5,#0xb]
    ldr r0, [pc, #0x814ee20-0x814edee-2] // =0x91D1B
    mul r0, r4
    ldr r1, [pc, #0x814ee24-0x814edf2-2] // =0x1388
    add r0, r0, r1
    ldr r1, [pc, #0x814ee28-0x814edf6-2] // =0x2710
    bl sub_814DA9C
    add r1, r0, #0
    str r1, [r5,#0x14]
    mov r0, #0x80
    lsl r0, r0, #0x11
    bl sub_814DA9C
    add r0, #1
    asr r0, r0, #1
    str r0, [r5,#0x18]
    bl sub_814EF94
    pop {r4,r5}
    pop {r0}
    bx r0
off_814EE18:    .word loc_3007FF0
off_814EE1C:    .word dword_81C058C
dword_814EE20:    .word 0x91D1B
dword_814EE24:    .word 0x1388
dword_814EE28:    .word 0x2710
// end of function sub_814EDC0

.thumb
sub_814EE2C:
    push {r4,r5,lr}
    add r5, r0, #0
    ldr r0, [pc, #0x814eeb4-0x814ee30-4] // =loc_3007FF0
    ldr r4, [r0]
    ldr r1, [r4]
    ldr r0, [pc, #0x814eeb8-0x814ee36-2] // =0x68736D53
    cmp r1, r0
    bne loc_814EEAE
    add r0, r1, #1
    str r0, [r4]
    mov r3, #0xff
    and r3, r5
    cmp r3, #0
    beq loc_814EE4E
    mov r0, #0x7f
    and r3, r0
    strb r3, [r4,#5]
loc_814EE4E:
    mov r3, #0xf0
    lsl r3, r3, #4
    and r3, r5
    cmp r3, #0
    beq loc_814EE6E
    lsr r0, r3, #8
    strb r0, [r4,#6]
    mov r3, #0xc
    add r0, r4, #0
    add r0, #0x50 
    mov r1, #0
loc_814EE64:
    strb r1, [r0]
    sub r3, #1
    add r0, #0x40 
    cmp r3, #0
    bne loc_814EE64
loc_814EE6E:
    mov r3, #0xf0
    lsl r3, r3, #8
    and r3, r5
    cmp r3, #0
    beq loc_814EE7C
    lsr r0, r3, #0xc
    strb r0, [r4,#7]
loc_814EE7C:
    mov r3, #0xb0
    lsl r3, r3, #0x10
    and r3, r5
    cmp r3, #0
    beq loc_814EE9A
    mov r0, #0xc0
    lsl r0, r0, #0xe
    and r0, r3
    lsr r3, r0, #0xe
    ldr r2, [pc, #0x814eebc-0x814ee8e-2] // =SoundPWMControl+1
    ldrb r1, [r2]
    mov r0, #0x3f 
    and r0, r1
    orr r0, r3
    strb r0, [r2]
loc_814EE9A:
    mov r3, #0xf0
    lsl r3, r3, #0xc
    and r3, r5
    cmp r3, #0
    beq loc_814EEAA
    add r0, r3, #0
    bl sub_814EDC0
loc_814EEAA:
    ldr r0, [pc, #0x814eeb8-0x814eeaa-2] // =0x68736D53
    str r0, [r4]
loc_814EEAE:
    pop {r4,r5}
    pop {r0}
    bx r0
off_814EEB4:    .word loc_3007FF0
dword_814EEB8:    .word 0x68736D53
off_814EEBC:    .word SoundPWMControl+1
// end of function sub_814EE2C

.thumb
sub_814EEC0:
    push {r4-r7,lr}
    ldr r0, [pc, #0x814ef0c-0x814eec2-2] // =loc_3007FF0
    ldr r6, [r0]
    ldr r1, [r6]
    ldr r0, [pc, #0x814ef10-0x814eec8-4] // =0x68736D53
    cmp r1, r0
    bne loc_814EF06
    add r0, r1, #1
    str r0, [r6]
    mov r5, #0xc
    add r4, r6, #0
    add r4, #0x50 
    mov r0, #0
loc_814EEDA:
    strb r0, [r4]
    sub r5, #1
    add r4, #0x40 
    cmp r5, #0
    bgt loc_814EEDA
    ldr r4, [r6,#0x1c]
    cmp r4, #0
    beq loc_814EF02
    mov r5, #1
    mov r7, #0
loc_814EEEE:
    lsl r0, r5, #0x18
    lsr r0, r0, #0x18
    ldr r1, [r6,#0x2c]
    bl sub_814DA64
    strb r7, [r4]
    add r5, #1
    add r4, #0x40 
    cmp r5, #4
    ble loc_814EEEE
loc_814EF02:
    ldr r0, [pc, #0x814ef10-0x814ef02-2] // =0x68736D53
    str r0, [r6]
loc_814EF06:
    pop {r4-r7}
    pop {r0}
    bx r0
off_814EF0C:    .word loc_3007FF0
dword_814EF10:    .word 0x68736D53
// end of function sub_814EEC0

.thumb
sub_814EF14:
    push {lr}
    sub sp, sp, #4
    ldr r0, [pc, #0x814ef78-0x814ef18-4] // =loc_3007FF0
    ldr r2, [r0]
    ldr r1, [r2]
    ldr r3, [pc, #0x814ef7c-0x814ef1e-2] // =0x978C92AD
    add r0, r1, r3
    cmp r0, #1
    bhi loc_814EF72
    add r0, r1, #0
    add r0, #0xa
    str r0, [r2]
    ldr r1, [pc, #0x814ef80-0x814ef2c-4] // =Timer0Control
    mov r0, #0
    strh r0, [r1]
    sub r1, #0x3e 
    ldr r0, [r1]
    mov r3, #0x80
    lsl r3, r3, #0x12
    and r0, r3
    cmp r0, #0
    beq loc_814EF44
    ldr r0, [pc, #0x814ef84-0x814ef40-4] // =0x84400004
    str r0, [r1]
loc_814EF44:
    ldr r1, [pc, #0x814ef88-0x814ef44-4] // =DMA2WordCount
    ldr r0, [r1]
    and r0, r3
    cmp r0, #0
    beq loc_814EF52
    ldr r0, [pc, #0x814ef84-0x814ef4e-2] // =0x84400004
    str r0, [r1]
loc_814EF52:
    ldr r0, [pc, #0x814ef8c-0x814ef52-2] // =DMA1Control
    mov r3, #0x80
    lsl r3, r3, #3
    add r1, r3, #0
    strh r1, [r0]
    add r0, #0xc
    strh r1, [r0]
    mov r0, #0
    str r0, [sp]
    mov r0, #0xd4
    lsl r0, r0, #2
    add r1, r2, r0
    ldr r2, [pc, #0x814ef90-0x814ef6a-2] // =0x5000318
    mov r0, sp
    bl SWI_CpuSet
loc_814EF72:
    add sp, sp, #4
    pop {r0}
    bx r0
off_814EF78:    .word loc_3007FF0
dword_814EF7C:    .word 0x978C92AD
off_814EF80:    .word Timer0Control
dword_814EF84:    .word 0x84400004
off_814EF88:    .word DMA2WordCount
off_814EF8C:    .word DMA1Control
dword_814EF90:    .word 0x5000318
// end of function sub_814EF14

.thumb
sub_814EF94:
    push {r4,lr}
    ldr r0, [pc, #0x814eff0-0x814ef96-2] // =loc_3007FF0
    ldr r2, [r0]
    ldr r3, [r2]
    ldr r0, [pc, #0x814eff4-0x814ef9c-4] // =0x68736D53
    cmp r3, r0
    beq loc_814EFE8
    ldr r0, [pc, #0x814eff8-0x814efa2-2] // =DMA1Control
    mov r4, #0xb6
    lsl r4, r4, #8
    add r1, r4, #0
    strh r1, [r0]
    add r0, #0xc
    strh r1, [r0]
    ldrb r0, [r2,#4]
    mov r0, #0
    strb r0, [r2,#4]
    add r0, r3, #0
    sub r0, #0xa
    str r0, [r2]
    ldr r3, [pc, #0x814effc-0x814efbc-4] // =VerticalCounter_LY_
    ldrb r0, [r3]
    ldr r1, [r2,#0x10]
    cmp r0, #0x9f
    bne loc_814EFCE
    add r2, r3, #0
loc_814EFC8:
    ldrb r0, [r2]
    cmp r0, #0x9f
    beq loc_814EFC8
loc_814EFCE:
    ldr r2, [pc, #0x814effc-0x814efce-2] // =VerticalCounter_LY_
loc_814EFD0:
    ldrb r0, [r2]
    cmp r0, #0x9f
    bne loc_814EFD0
    ldr r4, [pc, #0x814f000-0x814efd6-2] // =Timer0Counter_Reload
    ldr r0, [pc, #0x814f004-0x814efd8-4] // =0x44940
    bl sub_814DA9C
    neg r0, r0
    strh r0, [r4]
    ldr r1, [pc, #0x814f008-0x814efe2-2] // =Timer0Control
    mov r0, #0x80
    strh r0, [r1]
loc_814EFE8:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0, 0
off_814EFF0:    .word loc_3007FF0
dword_814EFF4:    .word 0x68736D53
off_814EFF8:    .word DMA1Control
off_814EFFC:    .word VerticalCounter_LY_
off_814F000:    .word Timer0Counter_Reload
dword_814F004:    .word 0x44940
off_814F008:    .word Timer0Control
// end of function sub_814EF94

.thumb
sub_814F00C:
    push {lr}
    ldr r0, [pc, #0x814f070-0x814f00e-2] // =loc_3007FF0
    ldr r2, [r0]
    ldr r0, [r2]
    ldr r1, [pc, #0x814f074-0x814f014-4] // =0x978C92AD
    add r0, r0, r1
    cmp r0, #1
    bhi loc_814F06A
    ldrb r0, [r2,#4]
    sub r0, #1
    ldrb r1, [r2,#4]
    strb r0, [r2,#4]
    ldrb r0, [r2,#4]
    lsl r0, r0, #0x18
    cmp r0, #0
    bgt loc_814F06A
    ldrb r0, [r2,#0xb]
    ldrb r1, [r2,#4]
    strb r0, [r2,#4]
    ldr r1, [pc, #0x814f078-0x814f032-2] // =DMA1WordCount
    ldr r0, [r1]
    mov r2, #0x80
    lsl r2, r2, #0x12
    and r0, r2
    cmp r0, #0
    beq loc_814F044
    ldr r0, [pc, #0x814f07c-0x814f040-4] // =0x84400004
    str r0, [r1]
loc_814F044:
    ldr r1, [pc, #0x814f080-0x814f044-4] // =DMA2WordCount
    ldr r0, [r1]
    and r0, r2
    cmp r0, #0
    beq loc_814F052
    ldr r0, [pc, #0x814f07c-0x814f04e-2] // =0x84400004
    str r0, [r1]
loc_814F052:
    ldr r2, [pc, #0x814f084-0x814f052-2] // =DMA1Control
    mov r3, #0x80
    lsl r3, r3, #3
    add r0, r3, #0
    strh r0, [r2]
    ldr r1, [pc, #0x814f088-0x814f05c-4] // =DMA2Control
    strh r0, [r1]
    mov r3, #0xb6
    lsl r3, r3, #8
    add r0, r3, #0
    strh r0, [r2]
    strh r0, [r1]
loc_814F06A:
    pop {r0}
    bx r0
    .byte 0, 0
off_814F070:    .word loc_3007FF0
dword_814F074:    .word 0x978C92AD
off_814F078:    .word DMA1WordCount
dword_814F07C:    .word 0x84400004
off_814F080:    .word DMA2WordCount
off_814F084:    .word DMA1Control
off_814F088:    .word DMA2Control
// end of function sub_814F00C

.thumb
sub_814F08C:
    push {r4-r7,lr}
    add r7, r0, #0
    add r6, r1, #0
    lsl r2, r2, #0x18
    lsr r4, r2, #0x18
    cmp r4, #0
    beq loc_814F0F0
    cmp r4, #0x10
    bls loc_814F0A0
    mov r4, #0x10
loc_814F0A0:
    ldr r0, [pc, #0x814f0f8-0x814f0a0-4] // =loc_3007FF0
    ldr r5, [r0]
    ldr r1, [r5]
    ldr r0, [pc, #0x814f0fc-0x814f0a6-2] // =0x68736D53
    cmp r1, r0
    bne loc_814F0F0
    add r0, r1, #1
    str r0, [r5]
    add r0, r7, #0
    bl sub_814ECB4
    str r6, [r7,#0x2c]
    strb r4, [r7,#8]
    mov r0, #0x80
    lsl r0, r0, #0x18
    str r0, [r7,#4]
    cmp r4, #0
    beq loc_814F0D4
    mov r1, #0
loc_814F0C6:
    strb r1, [r6]
    sub r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    add r6, #0x50 
    cmp r4, #0
    bne loc_814F0C6
loc_814F0D4:
    ldr r0, [r5,#0x20]
    cmp r0, #0
    beq loc_814F0E4
    str r0, [r7,#0x38]
    ldr r0, [r5,#0x24]
    str r0, [r7,#0x3c]
    mov r0, #0
    str r0, [r5,#0x20]
loc_814F0E4:
    str r7, [r5,#0x24]
    ldr r0, [pc, #0x814f100-0x814f0e6-2] // =sub_814E260+1
    str r0, [r5,#0x20]
    ldr r0, [pc, #0x814f0fc-0x814f0ea-2] // =0x68736D53
    str r0, [r5]
    str r0, [r7,#0x34]
loc_814F0F0:
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814F0F8:    .word loc_3007FF0
dword_814F0FC:    .word 0x68736D53
off_814F100:    .word sub_814E260+1
// end of function sub_814F08C

.thumb
sound_814F104:
    push {r4-r7,lr}
    mov r7, r8
    push {r7}
    add r5, r0, #0
    add r7, r1, #0
    ldr r1, [r5,#0x34]
    ldr r0, [pc, #0x814f1e4-0x814f110-4] // =0x68736D53
    cmp r1, r0
    bne loc_814F1D8
    add r0, r1, #1
    str r0, [r5,#0x34]
    ldrb r0, [r5,#0xb]
    ldrb r2, [r7,#2]
    cmp r0, #0
    beq loc_814F14A
    ldr r0, [r5]
    cmp r0, #0
    beq loc_814F134
    ldr r0, [r5,#0x2c]
    ldrb r1, [r0]
    mov r0, #0x40 
    and r0, r1
    cmp r0, #0
    bne loc_814F140
loc_814F134:
    ldr r1, [r5,#4]
    ldrh r0, [r5,#4]
    cmp r0, #0
    beq loc_814F14A
    cmp r1, #0
    blt loc_814F14A
loc_814F140:
    ldrb r0, [r7,#2]
    ldrb r1, [r5,#9]
    add r2, r0, #0
    cmp r1, r2
    bhi loc_814F1D4
loc_814F14A:
    mov r1, #0
    str r1, [r5,#4]
    str r7, [r5]
    ldr r0, [r7,#4]
    str r0, [r5,#0x30]
    strb r2, [r5,#9]
    str r1, [r5,#0xc]
    mov r0, #0x96
    strh r0, [r5,#0x1c]
    strh r0, [r5,#0x20]
    add r0, #0x6a 
    strh r0, [r5,#0x1e]
    strh r1, [r5,#0x22]
    strh r1, [r5,#0x24]
    mov r6, #0
    ldr r4, [r5,#0x2c]
    ldrb r0, [r7]
    cmp r6, r0
    bge loc_814F1A4
    ldrb r0, [r5,#8]
    cmp r6, r0
    bge loc_814F1C4
    mov r8, r6
loc_814F178:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_814E4DC
    mov r0, #0xc0
    strb r0, [r4]
    mov r0, r8
    str r0, [r4,#0x20]
    lsl r1, r6, #2
    add r0, r7, #0
    add r0, #8
    add r0, r0, r1
    ldr r0, [r0]
    str r0, [r4,#0x40]
    add r6, #1
    add r4, #0x50 
    ldrb r0, [r7]
    cmp r6, r0
    bge loc_814F1A4
    ldrb r0, [r5,#8]
    cmp r6, r0
    blt loc_814F178
loc_814F1A4:
    ldrb r0, [r5,#8]
    cmp r6, r0
    bge loc_814F1C4
    mov r0, #0
    mov r8, r0
loc_814F1AE:
    add r0, r5, #0
    add r1, r4, #0
    bl sub_814E4DC
    mov r0, r8
    strb r0, [r4]
    add r6, #1
    add r4, #0x50 
    ldrb r0, [r5,#8]
    cmp r6, r0
    blt loc_814F1AE
loc_814F1C4:
    ldrb r1, [r7,#3]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    beq loc_814F1D4
    ldrb r0, [r7,#3]
    bl sub_814EE2C
loc_814F1D4:
    ldr r0, [pc, #0x814f1e4-0x814f1d4-4] // =0x68736D53
    str r0, [r5,#0x34]
loc_814F1D8:
    pop {r3}
    mov r8, r3
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814F1E4:    .word 0x68736D53
// end of function sound_814F104

.thumb
sub_814F1E8:
    push {r4-r6,lr}
    add r6, r0, #0
    ldr r1, [r6,#0x34]
    ldr r0, [pc, #0x814f224-0x814f1ee-2] // =0x68736D53
    cmp r1, r0
    bne loc_814F21E
    add r0, r1, #1
    str r0, [r6,#0x34]
    ldr r0, [r6,#4]
    mov r1, #0x80
    lsl r1, r1, #0x18
    orr r0, r1
    str r0, [r6,#4]
    ldrb r4, [r6,#8]
    ldr r5, [r6,#0x2c]
    cmp r4, #0
    ble loc_814F21A
loc_814F20A:
    add r0, r6, #0
    add r1, r5, #0
    bl sub_814E4DC
    sub r4, #1
    add r5, #0x50 
    cmp r4, #0
    bgt loc_814F20A
loc_814F21A:
    ldr r0, [pc, #0x814f224-0x814f21a-2] // =0x68736D53
    str r0, [r6,#0x34]
loc_814F21E:
    pop {r4-r6}
    pop {r0}
    bx r0
dword_814F224:    .word 0x68736D53
// end of function sub_814F1E8

.thumb
sub_814F228:
    push {r4-r7,lr}
    add r6, r0, #0
    ldrh r1, [r6,#0x24]
    cmp r1, #0
    beq loc_814F2EA
    ldrh r0, [r6,#0x26]
    sub r0, #1
    strh r0, [r6,#0x26]
    ldr r3, [pc, #0x814f268-0x814f238-4] // =0xFFFF
    add r2, r3, #0
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    cmp r3, #0
    bne loc_814F2EA
    strh r1, [r6,#0x26]
    ldrh r1, [r6,#0x28]
    mov r0, #2
    and r0, r1
    cmp r0, #0
    beq loc_814F26C
    add r0, r1, #0
    add r0, #0x10
    strh r0, [r6,#0x28]
    and r0, r2
    cmp r0, #0xff
    bls loc_814F2BE
    mov r0, #0x80
    lsl r0, r0, #1
    strh r0, [r6,#0x28]
    strh r3, [r6,#0x24]
    b loc_814F2BE
    .balign 4, 0x00
dword_814F268:    .word 0xFFFF
loc_814F26C:
    add r0, r1, #0
    sub r0, #0x10
    strh r0, [r6,#0x28]
    and r0, r2
    lsl r0, r0, #0x10
    cmp r0, #0
    bgt loc_814F2BE
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    cmp r5, #0
    ble loc_814F29E
loc_814F282:
    add r0, r6, #0
    add r1, r4, #0
    bl sub_814E4DC
    ldrh r0, [r6,#0x28]
    mov r1, #1
    and r1, r0
    cmp r1, #0
    bne loc_814F296
    strb r1, [r4]
loc_814F296:
    sub r5, #1
    add r4, #0x50 
    cmp r5, #0
    bgt loc_814F282
loc_814F29E:
    ldrh r1, [r6,#0x28]
    mov r0, #1
    and r0, r1
    cmp r0, #0
    beq loc_814F2B2
    ldr r0, [r6,#4]
    mov r1, #0x80
    lsl r1, r1, #0x18
    orr r0, r1
    b loc_814F2B6
loc_814F2B2:
    mov r0, #0x80
    lsl r0, r0, #0x18
loc_814F2B6:
    str r0, [r6,#4]
    mov r0, #0
    strh r0, [r6,#0x24]
    b loc_814F2EA
loc_814F2BE:
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    cmp r5, #0
    ble loc_814F2EA
    mov r3, #0x80
    mov r7, #0
    mov r2, #3
loc_814F2CC:
    ldrb r1, [r4]
    add r0, r3, #0
    and r0, r1
    cmp r0, #0
    beq loc_814F2E2
    ldrh r0, [r6,#0x28]
    lsr r0, r0, #2
    strb r0, [r4,#0x13]
    add r0, r1, #0
    orr r0, r2
    strb r0, [r4]
loc_814F2E2:
    sub r5, #1
    add r4, #0x50 
    cmp r5, #0
    bgt loc_814F2CC
loc_814F2EA:
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_814F228

.thumb
sub_814F2F0:
    push {r4,lr}
    add r2, r1, #0
    ldrb r1, [r2]
    mov r0, #1
    and r0, r1
    cmp r0, #0
    beq loc_814F352
    ldrb r0, [r2,#0x12]
    ldrb r1, [r2,#0x13]
    mul r0, r1
    lsr r3, r0, #5
    ldrb r4, [r2,#0x18]
    cmp r4, #1
    bne loc_814F316
    mov r0, #0x16
    ldrsb r0, [r2,r0]
    add r0, #0x80
    mul r0, r3
    lsr r3, r0, #7
loc_814F316:
    mov r0, #0x14
    ldrsb r0, [r2,r0]
    lsl r0, r0, #1
    mov r1, #0x15
    ldrsb r1, [r2,r1]
    add r1, r0, r1
    cmp r4, #2
    bne loc_814F32C
    mov r0, #0x16
    ldrsb r0, [r2,r0]
    add r1, r1, r0
loc_814F32C:
    mov r0, #0x80
    neg r0, r0
    cmp r1, r0
    bge loc_814F338
    add r1, r0, #0
    b loc_814F33E
loc_814F338:
    cmp r1, #0x7f
    ble loc_814F33E
    mov r1, #0x7f
loc_814F33E:
    add r0, r1, #0
    add r0, #0x80
    mul r0, r3
    lsr r0, r0, #8
    strb r0, [r2,#0x10]
    mov r0, #0x7f
    sub r0, r0, r1
    mul r0, r3
    lsr r0, r0, #8
    strb r0, [r2,#0x11]
loc_814F352:
    ldrb r1, [r2]
    mov r0, #4
    and r0, r1
    add r3, r1, #0
    cmp r0, #0
    beq loc_814F396
    mov r1, #0xe
    ldrsb r1, [r2,r1]
    ldrb r0, [r2,#0xf]
    mul r0, r1
    mov r1, #0xc
    ldrsb r1, [r2,r1]
    add r1, r1, r0
    lsl r1, r1, #2
    mov r0, #0xa
    ldrsb r0, [r2,r0]
    lsl r0, r0, #8
    add r1, r1, r0
    mov r0, #0xb
    ldrsb r0, [r2,r0]
    lsl r0, r0, #8
    add r1, r1, r0
    ldrb r0, [r2,#0xd]
    add r1, r1, r0
    ldrb r0, [r2,#0x18]
    cmp r0, #0
    bne loc_814F390
    mov r0, #0x16
    ldrsb r0, [r2,r0]
    lsl r0, r0, #4
    add r1, r1, r0
loc_814F390:
    asr r0, r1, #8
    strb r0, [r2,#8]
    strb r1, [r2,#9]
loc_814F396:
    mov r0, #0xfa
    and r0, r3
    strb r0, [r2]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814F2F0

.thumb
sub_814F3A4:
    push {r4-r7,lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r1, r1, #0x18
    lsr r5, r1, #0x18
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r12, r2
    cmp r0, #4
    bne loc_814F3DC
    cmp r5, #0x14
    bhi loc_814F3C0
    mov r5, #0
    b loc_814F3CE
loc_814F3C0:
    add r0, r5, #0
    sub r0, #0x15
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #0x3b 
    bls loc_814F3CE
    mov r5, #0x3b 
loc_814F3CE:
    ldr r0, [pc, #0x814f3d8-0x814f3ce-2] // =byte_81C0640
    add r0, r5, r0
    ldrb r0, [r0]
    b loc_814F43E
    .balign 4, 0x00
off_814F3D8:    .word byte_81C0640
loc_814F3DC:
    cmp r5, #0x23 
    bhi loc_814F3E8
    mov r0, #0
    mov r12, r0
    mov r5, #0
    b loc_814F3FA
loc_814F3E8:
    add r0, r5, #0
    sub r0, #0x24 
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #0x82
    bls loc_814F3FA
    mov r5, #0x82
    mov r1, #0xff
    mov r12, r1
loc_814F3FA:
    ldr r3, [pc, #0x814f444-0x814f3fa-2] // =byte_81C05A4
    add r0, r5, r3
    ldrb r6, [r0]
    ldr r4, [pc, #0x814f448-0x814f400-4] // =dword_81C0628
    mov r2, #0xf
    add r0, r6, #0
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r4
    mov r7, #0
    ldrsh r1, [r0,r7]
    asr r0, r6, #4
    add r6, r1, #0
    asr r6, r0
    add r0, r5, #1
    add r0, r0, r3
    ldrb r1, [r0]
    add r0, r1, #0
    and r0, r2
    lsl r0, r0, #1
    add r0, r0, r4
    mov r2, #0
    ldrsh r0, [r0,r2]
    asr r1, r1, #4
    asr r0, r1
    sub r0, r0, r6
    mov r7, r12
    mul r7, r0
    add r0, r7, #0
    asr r0, r0, #8
    add r0, r6, r0
    mov r1, #0x80
    lsl r1, r1, #4
    add r0, r0, r1
loc_814F43E:
    pop {r4-r7}
    pop {r1}
    bx r1
off_814F444:    .word byte_81C05A4
off_814F448:    .word dword_81C0628
// end of function sub_814F3A4

.thumb
sub_814F44C:
    push {lr}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    add r1, r0, #0
    cmp r0, #2
    beq loc_814F478
    cmp r0, #2
    bgt loc_814F462
    cmp r0, #1
    beq loc_814F468
    b loc_814F48C
loc_814F462:
    cmp r1, #3
    beq loc_814F480
    b loc_814F48C
loc_814F468:
    ldr r1, [pc, #0x814f474-0x814f468-4] // =Channel1Duty_Length_Envelope_NR11_NR12_+1
    mov r0, #8
    strb r0, [r1]
    add r1, #2
    b loc_814F494
    .balign 4, 0x00
off_814F474:    .word Channel1Duty_Length_Envelope_NR11_NR12_+1
loc_814F478:
    ldr r1, [pc, #0x814f47c-0x814f478-4] // =Channel2Duty_Length_Envelope_NR21_NR22_+1
    b loc_814F48E
off_814F47C:    .word Channel2Duty_Length_Envelope_NR21_NR22_+1
loc_814F480:
    ldr r1, [pc, #0x814f488-0x814f480-4] // =Channel3Stop_WaveRAMselect_NR30_
    mov r0, #0
    b loc_814F496
    .balign 4, 0x00
off_814F488:    .word Channel3Stop_WaveRAMselect_NR30_
loc_814F48C:
    ldr r1, [pc, #0x814f49c-0x814f48c-4] // =Channel4Length_Envelope_NR41_NR42_+1
loc_814F48E:
    mov r0, #8
    strb r0, [r1]
    add r1, #4
loc_814F494:
    mov r0, #0x80
loc_814F496:
    strb r0, [r1]
    pop {r0}
    bx r0
off_814F49C:    .word Channel4Length_Envelope_NR41_NR42_+1
// end of function sub_814F44C

.thumb
sub_814F4A0:
    push {r4,lr}
    add r2, r0, #0
    ldrb r0, [r2,#2]
    ldrb r1, [r2,#3]
    lsl r3, r0, #0x18
    lsr r4, r3, #0x18
    lsl r0, r1, #0x18
    lsr r1, r0, #0x18
    cmp r4, r1
    bcc loc_814F4C0
    lsr r0, r3, #0x19
    cmp r0, r1
    bcc loc_814F4CC
    mov r0, #0xf
    strb r0, [r2,#0x1b]
    b loc_814F4DA
loc_814F4C0:
    lsr r0, r0, #0x19
    cmp r0, r4
    bcc loc_814F4CC
    mov r0, #0xf0
    strb r0, [r2,#0x1b]
    b loc_814F4DA
loc_814F4CC:
    mov r0, #0xff
    strb r0, [r2,#0x1b]
    ldrb r0, [r2,#2]
    ldrb r1, [r2,#3]
    add r0, r0, r1
    lsr r0, r0, #4
    b loc_814F4EA
loc_814F4DA:
    ldrb r0, [r2,#2]
    ldrb r1, [r2,#3]
    add r0, r0, r1
    lsr r0, r0, #4
    strb r0, [r2,#0xa]
    cmp r0, #0xf
    bls loc_814F4EC
    mov r0, #0xf
loc_814F4EA:
    strb r0, [r2,#0xa]
loc_814F4EC:
    ldrb r1, [r2,#0xa]
    ldrb r0, [r2,#6]
    mul r0, r1
    add r0, #0xf
    asr r0, r0, #4
    strb r0, [r2,#0x19]
    ldrb r1, [r2,#0x1b]
    ldrb r0, [r2,#0x1c]
    and r0, r1
    strb r0, [r2,#0x1b]
    pop {r4}
    pop {r0}
    bx r0
    .balign 4, 0x00
// end of function sub_814F4A0

.thumb
sub_814F508:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    sub sp, sp, #0x24
    ldr r0, [pc, #0x814f528-0x814f514-4] // =loc_3007FF0
    ldr r0, [r0]
    str r0, [sp,#8]
    ldrb r0, [r0,#0xa]
    cmp r0, #0
    beq loc_814F52C
    sub r0, #1
    ldr r1, [sp,#8]
    strb r0, [r1,#0xa]
    b loc_814F532
off_814F528:    .word loc_3007FF0
loc_814F52C:
    mov r0, #0xe
    ldr r3, [sp,#8]
    strb r0, [r3,#0xa]
loc_814F532:
    mov r6, #1
    ldr r0, [sp,#8]
    ldr r4, [r0,#0x1c]
    mov r1, sp
    str r1, [sp,#0x1c]
loc_814F53C:
    ldrb r1, [r4]
    mov r0, #0xc7
    and r0, r1
    add r3, r6, #1
    mov r10, r3
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r0, #0
    bne loc_814F552
    b loc_814F96E
loc_814F552:
    cmp r6, #2
    beq loc_814F588
    cmp r6, #2
    bgt loc_814F560
    cmp r6, #1
    beq loc_814F566
    b loc_814F5D0
loc_814F560:
    cmp r6, #3
    beq loc_814F5AC
    b loc_814F5D0
loc_814F566:
    ldr r3, [pc, #0x814f57c-0x814f566-2] // =Channel1Sweepregister_NR10_
    str r3, [sp,#0xc]
    add r3, #2
    ldr r0, [pc, #0x814f580-0x814f56c-4] // =Channel1Duty_Length_Envelope_NR11_NR12_+1
    str r0, [sp,#0x10]
    ldr r1, [pc, #0x814f584-0x814f570-4] // =Channel1Frequency_Control_NR13_NR14_
    str r1, [sp,#0x14]
    add r0, #2
    str r0, [sp,#0x18]
    mov r0, #0
    b loc_814F5E4
off_814F57C:    .word Channel1Sweepregister_NR10_
off_814F580:    .word Channel1Duty_Length_Envelope_NR11_NR12_+1
off_814F584:    .word Channel1Frequency_Control_NR13_NR14_
loc_814F588:
    ldr r3, [pc, #0x814f5a0-0x814f588-4] // =Channel1Sweepregister_NR10_+1
    str r3, [sp,#0xc]
    add r3, #7
    ldr r0, [pc, #0x814f5a4-0x814f58e-2] // =Channel2Duty_Length_Envelope_NR21_NR22_+1
    str r0, [sp,#0x10]
    ldr r1, [pc, #0x814f5a8-0x814f592-2] // =Channel2Frequency_Control_NR23_NR24_
    str r1, [sp,#0x14]
    add r0, #4
    str r0, [sp,#0x18]
    mov r0, #1
    b loc_814F5E4
    .byte 0, 0
off_814F5A0:    .word Channel1Sweepregister_NR10_+1
off_814F5A4:    .word Channel2Duty_Length_Envelope_NR21_NR22_+1
off_814F5A8:    .word Channel2Frequency_Control_NR23_NR24_
loc_814F5AC:
    ldr r3, [pc, #0x814f5c4-0x814f5ac-4] // =Channel3Stop_WaveRAMselect_NR30_
    str r3, [sp,#0xc]
    add r3, #2
    ldr r0, [pc, #0x814f5c8-0x814f5b2-2] // =Channel3Length_Volume_NR31_NR32_+1
    str r0, [sp,#0x10]
    ldr r1, [pc, #0x814f5cc-0x814f5b6-2] // =Channel3Frequency_Control_NR33_NR34_
    str r1, [sp,#0x14]
    add r0, #2
    str r0, [sp,#0x18]
    mov r0, #2
    b loc_814F5E4
    .balign 4, 0x00
off_814F5C4:    .word Channel3Stop_WaveRAMselect_NR30_
off_814F5C8:    .word Channel3Length_Volume_NR31_NR32_+1
off_814F5CC:    .word Channel3Frequency_Control_NR33_NR34_
loc_814F5D0:
    ldr r3, [pc, #0x814f638-0x814f5d0-4] // =Channel3Stop_WaveRAMselect_NR30_+1
    str r3, [sp,#0xc]
    add r3, #7
    ldr r0, [pc, #0x814f63c-0x814f5d6-2] // =Channel4Length_Envelope_NR41_NR42_+1
    str r0, [sp,#0x10]
    ldr r1, [pc, #0x814f640-0x814f5da-2] // =Channel4Frequency_Control_NR43_NR44_
    str r1, [sp,#0x14]
    add r0, #4
    str r0, [sp,#0x18]
    mov r0, #3
loc_814F5E4:
    ldr r1, [sp,#0x1c]
    strb r0, [r1]
    ldr r0, [sp,#8]
    ldrb r0, [r0,#0xa]
    str r0, [sp,#4]
    ldr r1, [sp,#0x10]
    ldrb r0, [r1]
    mov r8, r0
    ldrb r2, [r4]
    mov r0, #0x80
    and r0, r2
    cmp r0, #0
    beq loc_814F6DE
    mov r7, #0x40 
    add r0, r7, #0
    and r0, r2
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    add r0, r6, #1
    mov r10, r0
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r5, #0
    beq loc_814F618
    b loc_814F714
loc_814F618:
    mov r0, #3
    strb r0, [r4]
    strb r0, [r4,#0x1d]
    add r0, r4, #0
    str r3, [sp,#0x20]
    bl sub_814F4A0
    ldr r3, [sp,#0x20]
    cmp r6, #2
    beq loc_814F650
    cmp r6, #2
    bgt loc_814F644
    cmp r6, #1
    beq loc_814F64A
    b loc_814F6A4
    .balign 4, 0x00
off_814F638:    .word Channel3Stop_WaveRAMselect_NR30_+1
off_814F63C:    .word Channel4Length_Envelope_NR41_NR42_+1
off_814F640:    .word Channel4Frequency_Control_NR43_NR44_
loc_814F644:
    cmp r6, #3
    beq loc_814F65C
    b loc_814F6A4
loc_814F64A:
    ldrb r0, [r4,#0x1f]
    ldr r1, [sp,#0xc]
    strb r0, [r1]
loc_814F650:
    ldr r0, [r4,#0x24]
    lsl r0, r0, #6
    ldrb r1, [r4,#0x1e]
    add r0, r0, r1
    strb r0, [r3]
    b loc_814F6B0
loc_814F65C:
    ldr r1, [r4,#0x24]
    ldr r0, [r4,#0x28]
    cmp r1, r0
    beq loc_814F684
    ldr r0, [sp,#0xc]
    strb r7, [r0]
    ldr r1, [pc, #0x814f698-0x814f668-4] // =Channel3WavePatternRAM_2banks___
    ldr r2, [r4,#0x24]
    ldr r0, [r2]
    str r0, [r1]
    add r1, #4
    ldr r0, [r2,#4]
    str r0, [r1]
    add r1, #4
    ldr r0, [r2,#8]
    str r0, [r1]
    add r1, #4
    ldr r0, [r2,#0xc]
    str r0, [r1]
    str r2, [r4,#0x28]
loc_814F684:
    ldr r1, [sp,#0xc]
    strb r5, [r1]
    ldrb r0, [r4,#0x1e]
    strb r0, [r3]
    ldrb r0, [r4,#0x1e]
    cmp r0, #0
    beq loc_814F69C
    mov r0, #0xc0
    b loc_814F6BE
    .balign 4, 0x00
off_814F698:    .word Channel3WavePatternRAM_2banks___
loc_814F69C:
    mov r3, #0x80
    neg r3, r3
    strb r3, [r4,#0x1a]
    b loc_814F6C0
loc_814F6A4:
    ldrb r0, [r4,#0x1e]
    strb r0, [r3]
    ldr r0, [r4,#0x24]
    lsl r0, r0, #3
    ldr r1, [sp,#0x14]
    strb r0, [r1]
loc_814F6B0:
    ldrb r0, [r4,#4]
    add r0, #8
    mov r8, r0
    ldrb r0, [r4,#0x1e]
    cmp r0, #0
    beq loc_814F6BE
    mov r0, #0x40 
loc_814F6BE:
    strb r0, [r4,#0x1a]
loc_814F6C0:
    ldrb r1, [r4,#4]
    mov r2, #0
    strb r1, [r4,#0xb]
    mov r0, #0xff
    and r0, r1
    add r3, r6, #1
    mov r10, r3
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r0, #0
    bne loc_814F6DA
    b loc_814F82E
loc_814F6DA:
    strb r2, [r4,#9]
    b loc_814F85C
loc_814F6DE:
    mov r0, #4
    and r0, r2
    cmp r0, #0
    bne loc_814F6F8
    ldr r0, [pc, #0x814f724-0x814f6e6-2] // =ControlSoundon_off_NR52_
    ldrb r1, [r0]
    ldr r3, [sp,#0x1c]
    ldrb r0, [r3]
    asr r1, r0
    mov r0, #1
    and r1, r0
    cmp r1, #0
    bne loc_814F728
loc_814F6F8:
    ldrb r0, [r4,#0xd]
    sub r0, #1
    strb r0, [r4,#0xd]
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #0x18
    add r3, r6, #1
    mov r10, r3
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r0, #0
    ble loc_814F714
    b loc_814F86E
loc_814F714:
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    bl sub_814F44C
    mov r0, #0
    strb r0, [r4]
    b loc_814F96A
    .balign 4, 0x00
off_814F724:    .word ControlSoundon_off_NR52_
loc_814F728:
    mov r0, #0x40 
    and r0, r2
    add r3, r6, #1
    mov r10, r3
    mov r1, #0x40 
    add r1, r1, r4
    mov r9, r1
    cmp r0, #0
    beq loc_814F768
    mov r0, #3
    and r0, r2
    cmp r0, #0
    beq loc_814F768
    mov r0, #0xfc
    and r0, r2
    mov r2, #0
    strb r0, [r4]
    ldrb r1, [r4,#7]
    strb r1, [r4,#0xb]
    mov r0, #0xff
    and r0, r1
    cmp r0, #0
    beq loc_814F79A
    ldrb r0, [r4,#0x1d]
    mov r1, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
    cmp r6, #3
    beq loc_814F85C
    ldrb r3, [r4,#7]
    mov r8, r3
    b loc_814F85C
loc_814F768:
    ldrb r0, [r4,#0xb]
    cmp r0, #0
    bne loc_814F85C
    cmp r6, #3
    bne loc_814F77A
    ldrb r1, [r4,#0x1d]
    mov r0, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
loc_814F77A:
    add r0, r4, #0
    bl sub_814F4A0
    ldrb r0, [r4]
    mov r1, #3
    and r1, r0
    cmp r1, #0
    bne loc_814F7CC
    ldrb r0, [r4,#9]
    sub r0, #1
    strb r0, [r4,#9]
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #0x18
    cmp r0, #0
    bgt loc_814F7C8
loc_814F79A:
    ldrb r1, [r4,#0xa]
    ldrb r0, [r4,#0xc]
    mul r0, r1
    add r0, #0xff
    asr r0, r0, #8
    mov r1, #0
    strb r0, [r4,#9]
    lsl r0, r0, #0x18
    cmp r0, #0
    beq loc_814F714
    ldrb r0, [r4]
    mov r1, #4
    orr r0, r1
    strb r0, [r4]
    ldrb r0, [r4,#0x1d]
    mov r1, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
    cmp r6, #3
    beq loc_814F86E
    mov r3, #8
    mov r8, r3
    b loc_814F86E
loc_814F7C8:
    ldrb r0, [r4,#7]
    b loc_814F85A
loc_814F7CC:
    cmp r1, #1
    bne loc_814F7D8
loc_814F7D0:
    ldrb r0, [r4,#0x19]
    strb r0, [r4,#9]
    mov r0, #7
    b loc_814F85A
loc_814F7D8:
    cmp r1, #2
    bne loc_814F81E
    ldrb r0, [r4,#9]
    sub r0, #1
    strb r0, [r4,#9]
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    mov r1, #0x19
    ldrsb r1, [r4,r1]
    cmp r0, r1
    bgt loc_814F81A
loc_814F7F2:
    ldrb r0, [r4,#6]
    cmp r0, #0
    bne loc_814F802
    ldrb r1, [r4]
    mov r0, #0xfc
    and r0, r1
    strb r0, [r4]
    b loc_814F79A
loc_814F802:
    ldrb r0, [r4]
    sub r0, #1
    strb r0, [r4]
    ldrb r1, [r4,#0x1d]
    mov r0, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
    cmp r6, #3
    beq loc_814F7D0
    mov r3, #8
    mov r8, r3
    b loc_814F7D0
loc_814F81A:
    ldrb r0, [r4,#5]
    b loc_814F85A
loc_814F81E:
    ldrb r0, [r4,#9]
    add r0, #1
    strb r0, [r4,#9]
    mov r1, #0xff
    and r0, r1
    ldrb r3, [r4,#0xa]
    cmp r0, r3
    bcc loc_814F858
loc_814F82E:
    ldrb r0, [r4]
    sub r0, #1
    mov r2, #0
    strb r0, [r4]
    ldrb r1, [r4,#5]
    strb r1, [r4,#0xb]
    mov r0, #0xff
    and r0, r1
    cmp r0, #0
    beq loc_814F7F2
    ldrb r0, [r4,#0x1d]
    mov r1, #1
    orr r0, r1
    strb r0, [r4,#0x1d]
    ldrb r0, [r4,#0xa]
    strb r0, [r4,#9]
    cmp r6, #3
    beq loc_814F85C
    ldrb r0, [r4,#5]
    mov r8, r0
    b loc_814F85C
loc_814F858:
    ldrb r0, [r4,#4]
loc_814F85A:
    strb r0, [r4,#0xb]
loc_814F85C:
    ldrb r0, [r4,#0xb]
    sub r0, #1
    strb r0, [r4,#0xb]
    ldr r1, [sp,#4]
    cmp r1, #0
    bne loc_814F86E
    sub r1, #1
    str r1, [sp,#4]
    b loc_814F768
loc_814F86E:
    ldrb r1, [r4,#0x1d]
    mov r0, #2
    and r0, r1
    cmp r0, #0
    beq loc_814F8E8
    cmp r6, #3
    bgt loc_814F8AE
    ldrb r1, [r4,#1]
    mov r0, #8
    and r0, r1
    cmp r0, #0
    beq loc_814F8AE
    ldr r0, [pc, #0x814f898-0x814f886-2] // =SoundPWMControl+1
    ldrb r0, [r0]
    add r1, r0, #0
    cmp r1, #0x3f 
    bgt loc_814F8A0
    ldr r0, [r4,#0x20]
    add r0, #2
    ldr r1, [pc, #0x814f89c-0x814f894-4] // =0x7FC
    b loc_814F8AA
off_814F898:    .word SoundPWMControl+1
dword_814F89C:    .word 0x7FC
loc_814F8A0:
    cmp r1, #0x7f
    bgt loc_814F8AE
    ldr r0, [r4,#0x20]
    add r0, #1
    ldr r1, [pc, #0x814f8b8-0x814f8a8-4] // =0x7FC
loc_814F8AA:
    and r0, r1
    str r0, [r4,#0x20]
loc_814F8AE:
    cmp r6, #4
    beq loc_814F8BC
    ldr r0, [r4,#0x20]
    b loc_814F8C8
    .balign 4, 0x00
dword_814F8B8:    .word 0x7FE
loc_814F8BC:
    ldr r1, [sp,#0x14]
    ldrb r0, [r1]
    mov r1, #8
    and r1, r0
    ldr r0, [r4,#0x20]
    orr r0, r1
loc_814F8C8:
    ldr r3, [sp,#0x14]
    strb r0, [r3]
    ldrb r0, [r4,#0x1a]
    mov r1, #0xc0
    and r1, r0
    ldr r0, [r4,#0x20]
    mov r2, #0xfc
    lsl r2, r2, #6
    and r0, r2
    lsr r0, r0, #8
    add r1, r1, r0
    strb r1, [r4,#0x1a]
    mov r0, #0xff
    and r1, r0
    ldr r3, [sp,#0x18]
    strb r1, [r3]
loc_814F8E8:
    ldrb r1, [r4,#0x1d]
    mov r0, #1
    and r0, r1
    cmp r0, #0
    beq loc_814F96A
    ldr r2, [pc, #0x814f930-0x814f8f2-2] // =ControlStereo_Volume_Enable_NR50_NR51_+1
    ldrb r1, [r4,#0x1c]
    ldrb r0, [r2]
    bic r0, r1
    ldrb r1, [r4,#0x1b]
    orr r0, r1
    strb r0, [r2]
    cmp r6, #3
    bne loc_814F938
    ldr r1, [pc, #0x814f934-0x814f904-4] // =dword_81C067C
    ldrb r0, [r4,#9]
    add r0, r0, r1
    ldrb r0, [r0]
    ldr r1, [sp,#0x10]
    strb r0, [r1]
    ldrb r1, [r4,#0x1a]
    mov r2, #0x80
    add r0, r2, #0
    and r0, r1
    cmp r0, #0
    beq loc_814F96A
    ldr r3, [sp,#0xc]
    strb r2, [r3]
    ldrb r0, [r4,#0x1a]
    ldr r1, [sp,#0x18]
    strb r0, [r1]
    ldrb r1, [r4,#0x1a]
    mov r0, #0x7f
    and r0, r1
    strb r0, [r4,#0x1a]
    b loc_814F96A
off_814F930:    .word ControlStereo_Volume_Enable_NR50_NR51_+1
off_814F934:    .word dword_81C067C
loc_814F938:
    mov r0, #0xf
    mov r3, r8
    and r3, r0
    mov r8, r3
    ldrb r0, [r4,#9]
    lsl r0, r0, #4
    add r0, r8
    ldr r1, [sp,#0x10]
    strb r0, [r1]
    ldrb r0, [r4,#0x1a]
    mov r2, #0x80
    orr r0, r2
    ldr r3, [sp,#0x18]
    strb r0, [r3]
    cmp r6, #1
    bne loc_814F96A
    ldr r0, [sp,#0xc]
    ldrb r1, [r0]
    mov r0, #8
    and r0, r1
    cmp r0, #0
    bne loc_814F96A
    ldrb r0, [r4,#0x1a]
    orr r0, r2
    strb r0, [r3]
loc_814F96A:
    mov r0, #0
    strb r0, [r4,#0x1d]
loc_814F96E:
    mov r6, r10
    mov r4, r9
    cmp r6, #4
    bgt loc_814F978
    b loc_814F53C
loc_814F978:
    add sp, sp, #0x24
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
// end of function sub_814F508

.thumb
sub_814F988:
    push {lr}
    add r2, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r3, [r2,#0x34]
    ldr r0, [pc, #0x814f9a8-0x814f992-2] // =0x68736D53
    cmp r3, r0
    bne loc_814F9A4
    strh r1, [r2,#0x1e]
    ldrh r1, [r2,#0x1c]
    ldrh r0, [r2,#0x1e]
    mul r0, r1
    asr r0, r0, #8
    strh r0, [r2,#0x20]
loc_814F9A4:
    pop {r0}
    bx r0
dword_814F9A8:    .word 0x68736D53
// end of function sub_814F988

.thumb
sub_814F9AC:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    add r4, r0, #0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    lsl r6, r2, #0x10
    ldr r3, [r4,#0x34]
    ldr r0, [pc, #0x814fa10-0x814f9be-2] // =0x68736D53
    cmp r3, r0
    bne loc_814FA04
    add r0, r3, #1
    str r0, [r4,#0x34]
    ldrb r2, [r4,#8]
    ldr r1, [r4,#0x2c]
    mov r5, #1
    cmp r2, #0
    ble loc_814FA00
    mov r0, #0x80
    mov r8, r0
    lsr r6, r6, #0x12
    mov r0, #3
    mov r12, r0
loc_814F9DC:
    add r0, r7, #0
    and r0, r5
    cmp r0, #0
    beq loc_814F9F6
    ldrb r3, [r1]
    mov r0, r8
    and r0, r3
    cmp r0, #0
    beq loc_814F9F6
    strb r6, [r1,#0x13]
    mov r0, r12
    orr r0, r3
    strb r0, [r1]
loc_814F9F6:
    sub r2, #1
    add r1, #0x50 
    lsl r5, r5, #1
    cmp r2, #0
    bgt loc_814F9DC
loc_814FA00:
    ldr r0, [pc, #0x814fa10-0x814fa00-4] // =0x68736D53
    str r0, [r4,#0x34]
loc_814FA04:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
dword_814FA10:    .word 0x68736D53
// end of function sub_814F9AC

.thumb
sub_814FA14:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r4, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r12, r1
    lsl r2, r2, #0x10
    lsr r6, r2, #0x10
    ldr r3, [r4,#0x34]
    ldr r0, [pc, #0x814fa84-0x814fa2c-4] // =0x68736D53
    cmp r3, r0
    bne loc_814FA76
    add r0, r3, #1
    str r0, [r4,#0x34]
    ldrb r2, [r4,#8]
    ldr r3, [r4,#0x2c]
    mov r5, #1
    cmp r2, #0
    ble loc_814FA72
    mov r0, #0x80
    mov r9, r0
    lsl r0, r6, #0x10
    asr r7, r0, #0x18
    mov r0, #0xc
    mov r8, r0
loc_814FA4C:
    mov r0, r12
    and r0, r5
    cmp r0, #0
    beq loc_814FA68
    ldrb r1, [r3]
    mov r0, r9
    and r0, r1
    cmp r0, #0
    beq loc_814FA68
    strb r7, [r3,#0xb]
    strb r6, [r3,#0xd]
    mov r0, r8
    orr r0, r1
    strb r0, [r3]
loc_814FA68:
    sub r2, #1
    add r3, #0x50 
    lsl r5, r5, #1
    cmp r2, #0
    bgt loc_814FA4C
loc_814FA72:
    ldr r0, [pc, #0x814fa84-0x814fa72-2] // =0x68736D53
    str r0, [r4,#0x34]
loc_814FA76:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
dword_814FA84:    .word 0x68736D53
// end of function sub_814FA14

.thumb
sub_814FA88:
    push {r4-r7,lr}
    mov r7, r9
    mov r6, r8
    push {r6,r7}
    add r4, r0, #0
    lsl r1, r1, #0x10
    lsr r7, r1, #0x10
    lsl r2, r2, #0x18
    lsr r6, r2, #0x18
    ldr r3, [r4,#0x34]
    ldr r0, [pc, #0x814faec-0x814fa9c-4] // =0x68736D53
    cmp r3, r0
    bne loc_814FAE0
    add r0, r3, #1
    str r0, [r4,#0x34]
    ldrb r2, [r4,#8]
    ldr r1, [r4,#0x2c]
    mov r5, #1
    cmp r2, #0
    ble loc_814FADC
    mov r0, #0x80
    mov r8, r0
    mov r0, #3
    mov r12, r0
loc_814FAB8:
    add r0, r7, #0
    and r0, r5
    cmp r0, #0
    beq loc_814FAD2
    ldrb r3, [r1]
    mov r0, r8
    and r0, r3
    cmp r0, #0
    beq loc_814FAD2
    strb r6, [r1,#0x15]
    mov r0, r12
    orr r0, r3
    strb r0, [r1]
loc_814FAD2:
    sub r2, #1
    add r1, #0x50 
    lsl r5, r5, #1
    cmp r2, #0
    bgt loc_814FAB8
loc_814FADC:
    ldr r0, [pc, #0x814faec-0x814fadc-4] // =0x68736D53
    str r0, [r4,#0x34]
loc_814FAE0:
    pop {r3,r4}
    mov r8, r3
    mov r9, r4
    pop {r4-r7}
    pop {r0}
    bx r0
dword_814FAEC:    .word 0x68736D53
// end of function sub_814FA88

.thumb
sub_814FAF0:
    push {lr}
    add r2, r0, #0
    mov r1, #0
    mov r0, #0
    strb r0, [r2,#0x1a]
    strb r0, [r2,#0x16]
    ldrb r0, [r2,#0x18]
    cmp r0, #0
    bne loc_814FB08
    ldrb r0, [r2]
    mov r1, #0xc
    b loc_814FB0C
loc_814FB08:
    ldrb r0, [r2]
    mov r1, #3
loc_814FB0C:
    orr r0, r1
    strb r0, [r2]
    pop {r0}
    bx r0
// end of function sub_814FAF0

.thumb
sub_814FB14:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r6, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r10, r1
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r8, r2
    ldr r1, [r6,#0x34]
    ldr r0, [pc, #0x814fb84-0x814fb2e-2] // =0x68736D53
    cmp r1, r0
    bne loc_814FB74
    add r0, r1, #1
    str r0, [r6,#0x34]
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    mov r7, #1
    cmp r5, #0
    ble loc_814FB70
    mov r9, r8
loc_814FB44:
    mov r0, r10
    and r0, r7
    cmp r0, #0
    beq loc_814FB66
    ldrb r1, [r4]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    beq loc_814FB66
    mov r0, r8
    strb r0, [r4,#0x17]
    mov r0, r9
    cmp r0, #0
    bne loc_814FB66
    add r0, r4, #0
    bl sub_814FAF0
loc_814FB66:
    sub r5, #1
    add r4, #0x50 
    lsl r7, r7, #1
    cmp r5, #0
    bgt loc_814FB44
loc_814FB70:
    ldr r0, [pc, #0x814fb84-0x814fb70-4] // =0x68736D53
    str r0, [r6,#0x34]
loc_814FB74:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814FB84:    .word 0x68736D53
// end of function sub_814FB14

.thumb
sub_814FB88:
    push {r4-r7,lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5-r7}
    add r6, r0, #0
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r10, r1
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    mov r8, r2
    ldr r1, [r6,#0x34]
    ldr r0, [pc, #0x814fbf8-0x814fba2-2] // =0x68736D53
    cmp r1, r0
    bne loc_814FBE8
    add r0, r1, #1
    str r0, [r6,#0x34]
    ldrb r5, [r6,#8]
    ldr r4, [r6,#0x2c]
    mov r7, #1
    cmp r5, #0
    ble loc_814FBE4
    mov r9, r8
loc_814FBB8:
    mov r0, r10
    and r0, r7
    cmp r0, #0
    beq loc_814FBDA
    ldrb r1, [r4]
    mov r0, #0x80
    and r0, r1
    cmp r0, #0
    beq loc_814FBDA
    mov r0, r8
    strb r0, [r4,#0x19]
    mov r0, r9
    cmp r0, #0
    bne loc_814FBDA
    add r0, r4, #0
    bl sub_814FAF0
loc_814FBDA:
    sub r5, #1
    add r4, #0x50 
    lsl r7, r7, #1
    cmp r5, #0
    bgt loc_814FBB8
loc_814FBE4:
    ldr r0, [pc, #0x814fbf8-0x814fbe4-4] // =0x68736D53
    str r0, [r6,#0x34]
loc_814FBE8:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4-r7}
    pop {r0}
    bx r0
    .balign 4, 0x00
dword_814FBF8:    .word 0x68736D53
// end of function sub_814FB88

.thumb
sub_814FBFC:
    push {r4-r6,lr}
    add r4, r0, #0
    add r6, r1, #0
    ldr r0, [r6,#0x40]
    ldrb r5, [r0]
    add r1, r0, #1
    str r1, [r6,#0x40]
    ldrb r2, [r0,#1]
    ldr r0, [r4,#0x18]
    add r2, r0, r2
    add r0, r1, #1
    str r0, [r6,#0x40]
    ldrb r3, [r1,#1]
    add r0, #1
    str r0, [r6,#0x40]
// switch 18 cases 
    cmp r5, #0x11
    bls loc_814FC20
    b def_814FC28
loc_814FC20:
    lsl r0, r5, #2
    ldr r1, [pc, #0x814fc2c-0x814fc22-2] // =jpt_814FC28
    add r0, r0, r1
    ldr r0, [r0]
// switch jump
    mov pc, r0
    .balign 4, 0x00
off_814FC2C:    .word jpt_814FC28
// jump table for switch statement
jpt_814FC28:    .word loc_814FC78
    .word loc_814FC7C
    .word loc_814FC84
    .word loc_814FC8C
    .word loc_814FC96
    .word loc_814FCA4
    .word loc_814FCB2
    .word loc_814FCBA
    .word loc_814FCC2
    .word loc_814FCCA
    .word loc_814FCD2
    .word loc_814FCDA
    .word loc_814FCE2
    .word loc_814FCF0
    .word loc_814FCFE
    .word loc_814FD0C
    .word loc_814FD1A
    .word loc_814FD28
loc_814FC78:
    strb r3, [r2]
    b def_814FC28
loc_814FC7C:
    ldrb r0, [r2]
    add r0, r3, r0
    strb r0, [r2]
    b def_814FC28
loc_814FC84:
    ldrb r0, [r2]
    sub r0, r0, r3
    strb r0, [r2]
    b def_814FC28
loc_814FC8C:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r0, [r0]
    strb r0, [r2]
    b def_814FC28
loc_814FC96:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r0, [r0]
    ldrb r1, [r2]
    add r0, r0, r1
    strb r0, [r2]
    b def_814FC28
loc_814FCA4:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    sub r1, r1, r0
    strb r1, [r2]
    b def_814FC28
loc_814FCB2:
    ldrb r0, [r2]
    cmp r0, r3
    beq loc_814FD34
    b loc_814FD48
loc_814FCBA:
    ldrb r0, [r2]
    cmp r0, r3
    bne loc_814FD34
    b loc_814FD48
loc_814FCC2:
    ldrb r0, [r2]
    cmp r0, r3
    bhi loc_814FD34
    b loc_814FD48
loc_814FCCA:
    ldrb r0, [r2]
    cmp r0, r3
    bcs loc_814FD34
    b loc_814FD48
loc_814FCD2:
    ldrb r0, [r2]
    cmp r0, r3
    bls loc_814FD34
    b loc_814FD48
loc_814FCDA:
    ldrb r0, [r2]
    cmp r0, r3
    bcc loc_814FD34
    b loc_814FD48
loc_814FCE2:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    cmp r1, r0
    beq loc_814FD34
    b loc_814FD48
loc_814FCF0:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    cmp r1, r0
    bne loc_814FD34
    b loc_814FD48
loc_814FCFE:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    cmp r1, r0
    bhi loc_814FD34
    b loc_814FD48
loc_814FD0C:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    cmp r1, r0
    bcs loc_814FD34
    b loc_814FD48
loc_814FD1A:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    cmp r1, r0
    bls loc_814FD34
    b loc_814FD48
loc_814FD28:
    ldr r0, [r4,#0x18]
    add r0, r0, r3
    ldrb r1, [r2]
    ldrb r0, [r0]
    cmp r1, r0
    bcs loc_814FD48
loc_814FD34:
    ldr r0, [pc, #0x814fd44-0x814fd34-4] // =dword_3005574
    ldr r2, [r0]
    add r0, r4, #0
    add r1, r6, #0
    bl sub_814DA68
    b def_814FC28
    .balign 4, 0x00
off_814FD44:    .word dword_3005574
loc_814FD48:
    ldr r0, [r6,#0x40]
    add r0, #4
    str r0, [r6,#0x40]
def_814FC28:
    pop {r4-r6}
    pop {r0}
    bx r0
// end of function sub_814FBFC

.thumb
sub_814FD54:
    push {lr}
    ldr r2, [r1,#0x40]
    ldrb r3, [r2]
    add r2, #1
    str r2, [r1,#0x40]
    ldr r2, [pc, #0x814fd70-0x814fd5e-2] // =off_81C06C0
    lsl r3, r3, #2
    add r3, r3, r2
    ldr r2, [r3]
    bl sub_814DA68
    pop {r0}
    bx r0
    .byte 0, 0
off_814FD70:    .word off_81C06C0
// end of function sub_814FD54

.thumb
sub_814FD74:
    push {lr}
    ldr r2, [pc, #0x814fd84-0x814fd76-2] // =dword_3005570
    ldr r2, [r2]
    bl sub_814DA68
    pop {r0}
    bx r0
    .balign 4, 0x00
off_814FD84:    .word dword_3005570
// end of function sub_814FD74

.thumb
sub_814FD88:
    push {r4,lr}
    ldr r3, [r1,#0x40]
    ldrb r2, [r3]
    ldr r0, [pc, #0x814fdc0-0x814fd8e-2] // =0xFFFFFF00
    and r4, r0
    orr r4, r2
    ldrb r0, [r3,#1]
    lsl r0, r0, #8
    ldr r2, [pc, #0x814fdc4-0x814fd98-4] // =0xFFFF00FF
    and r4, r2
    orr r4, r0
    ldrb r0, [r3,#2]
    lsl r0, r0, #0x10
    ldr r2, [pc, #0x814fdc8-0x814fda2-2] // =0xFF00FFFF
    and r4, r2
    orr r4, r0
    ldrb r0, [r3,#3]
    lsl r0, r0, #0x18
    ldr r2, [pc, #0x814fdcc-0x814fdac-4] // =0xFFFFFF
    and r4, r2
    orr r4, r0
    str r4, [r1,#0x28]
    add r3, #4
    str r3, [r1,#0x40]
    pop {r4}
    pop {r0}
    bx r0
    .byte 0, 0
dword_814FDC0:    .word 0xFFFFFF00
dword_814FDC4:    .word 0xFFFF00FF
dword_814FDC8:    .word 0xFF00FFFF
dword_814FDCC:    .word 0xFFFFFF
// end of function sub_814FD88

.thumb
sub_814FDD0:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    add r0, r1, #0
    add r0, #0x24 
    strb r2, [r0]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
// end of function sub_814FDD0

.thumb
sub_814FDE4:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    add r0, r1, #0
    add r0, #0x2c 
    strb r2, [r0]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
// end of function sub_814FDE4

.thumb
sub_814FDF8:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x2d 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
// end of function sub_814FDF8

.thumb
sub_814FE0C:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x2e 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .hword 0x0
// end of function sub_814FE0C

.thumb
sub_814FE20:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x2f 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
// end of function sub_814FE20

.thumb
sub_814FE34:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    strb r2, [r1,#0x1e]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
// end of function sub_814FE34

.thumb
sub_814FE40:
    ldr r0, [r1,#0x40]
    ldrb r2, [r0]
    strb r2, [r1,#0x1f]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
// end of function sub_814FE40

.thumb
sub_814FE4C:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x26 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .byte 0, 0
// end of function sub_814FE4C

.thumb
sub_814FE60:
    ldr r0, [r1,#0x40]
    ldrb r0, [r0]
    add r2, r1, #0
    add r2, #0x27 
    strb r0, [r2]
    ldr r0, [r1,#0x40]
    add r0, #1
    str r0, [r1,#0x40]
    bx lr
    .balign 4, 0x00
// end of function sub_814FE60

.thumb
// <endpool>
nullsub_23:
    bx lr
// end of function nullsub_23

    .balign 4, 0x00
// <endfile>
debug_timestamp:    .byte 0x41, 0x70, 0x72, 0x20, 0x20
    .byte 0x36, 0x20, 0x32, 0x30, 0x30
    .byte 0x36, 0x20, 0x31, 0x34, 0x3A
    .byte 0x31, 0x34, 0x3A, 0x35, 0x34
    .byte 0x0
/*For debugging purposes, connect comment at any range!*/
