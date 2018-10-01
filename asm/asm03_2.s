.include "asm/asm03_2.inc"

.func
.thumb_func
render_graphicalText_8045F8C:
    push {lr}
    push {r7}
    mov r7, r10
    ldr r7, [r7,#0x38] // Toolkit.unk_200A220
    str r0, [r7,#0x40]
    pop {r7}
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    mov r1, r8
    push {r1}
    mov r1, r9
    push {r1}
    ldr r1, off_8045FB8 // =loc_3006B94+1 
    mov lr, pc
    bx r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {pc}
    .balign 4, 0x00
off_8045FB8:    .word loc_3006B94+1
.endfunc // render_graphicalText_8045F8C

.func
.thumb_func
sub_8045FBC:
    push {lr}
    push {r0-r3}
    mov r0, #0
    mov r3, #0
    b loc_8045FEE
.endfunc // sub_8045FBC

.func
.thumb_func
sub_8045FC6:
    push {lr}
    push {r0-r3}
    mov r0, #1
    mov r3, #0
    b loc_8045FEE
.endfunc // sub_8045FC6

loc_8045FD0:
    push {lr}
    push {r0-r3}
    mov r0, #1
    mov r3, #1
    b loc_8045FEE
    push {lr}
    push {r0-r3}
    mov r0, #0
    mov r3, #1
    b loc_8045FEE
loc_8045FE4:
    push {lr}
    push {r0-r3}
    mov r0, #2
    mov r3, #0
    b loc_8045FEE
loc_8045FEE:
    mov r2, r10
    ldr r2, [r2,#0x38]
    strb r0, [r2,#3]
    strb r3, [r2,#4]
    lsr r0, r1, #0x10
    ldr r1, dword_8046030 // = 
    ldr r0, [r1,r0]
    str r0, [r2,#0x38]
    pop {r0-r3}
    lsl r1, r1, #0x10
    lsr r1, r1, #0xf
    ldrh r1, [r0,r1]
    add r0, r0, r1
    mov r1, r12
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r8
    push {r1}
    ldr r1, off_804602C // =sub_8046154+1 
    mov lr, pc
    bx r1
    pop {r1}
    mov r8, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r12, r1
    ldr r1, off_8046034 // =byte_200A220 
    ldr r0, [r1,#0x3c] // (dword_200A25C - 0x200a220)
    pop {pc}
off_804602C:    .word sub_8046154+1
dword_8046030:    .word 0x3006B84
off_8046034:    .word byte_200A220
    push {r6,r7,lr}
    mov r1, r8
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r12
    push {r1}
    sub sp, sp, #0x10
    mov r8, r2
    str r2, [sp,#8]
    mov r9, r3
    add r7, r4, #0
    str r4, [sp,#4]
    mov r1, #8
    mul r0, r1
    ldr r6, off_80460B8 // =dword_80460BC 
    add r6, r6, r0
    ldr r0, dword_80460B4 // =0x40000000 
    mov r12, r0
    ldr r1, [r6]
    str r1, [sp]
loc_8046062:
    lsl r4, r4, #0x10
    orr r0, r4
    orr r0, r5
    ldrb r2, [r6,#5]
    lsl r2, r2, #0xa
    orr r1, r2
    ldrb r2, [r6,#4]
    ldrb r3, [r6,#6]
    bl sub_802FE28
    mov r2, #0x10
    add r7, r7, r2
    add r4, r7, #0
    mov r0, r12
    ldr r1, [sp]
    add r1, #4
    str r1, [sp]
    mov r2, r8
    sub r2, #1
    mov r8, r2
    cmp r2, #0
    bgt loc_8046062
    add r5, #0x10
    ldr r4, [sp,#4]
    add r7, r4, #0
    ldr r2, [sp,#8]
    mov r8, r2
    mov r2, r9
    sub r2, #1
    mov r9, r2
    cmp r2, #0
    bgt loc_8046062
    add sp, sp, #0x10
    pop {r1}
    mov r12, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r8, r1
    pop {r6,r7,pc}
    .balign 4, 0x00
dword_80460B4:    .word 0x40000000
off_80460B8:    .word dword_80460BC
dword_80460BC:    .word 0xE2B8, 0xFF000000, 0xE0B0, 0xFF010300, 0xE0B0, 0xFF010300
    .word 0x8340, 0xFF000300, 0xE340, 0xFF000000, 0xE340, 0xFF000000
    .word 0xE340, 0xFF000000
off_80460F4:    .word loc_3006C38+1
    .word sub_804634C+1
    .word loc_3006F42+1
    .word sub_3006F74+1
    .word sub_8046356+1
    .word loc_3006C8E+1
    .word 0x0
    .word loc_3006CA8+1
    .word 0x0
    .word loc_3006F20+1
    .word loc_3006F24+1
    .word 0x0
    .word sub_3006F48+1
    .word sub_80463A0+1
    .word 0x0
    .word 0x0
    .word loc_3006F5C+1
    .word loc_3006F70+1
    .word 0x0
    .word 0x0
    .word 0x0
    .word sub_8046450+1
    .word 0x0
    .word 0x0
.func
.thumb_func
sub_8046154:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x38]
    lsl r4, r4, #3
    strb r4, [r1]
    strb r5, [r1,#2]
    str r6, [r1,#0x18]
    mov r6, #0
    strb r6, [r1,#1]
    str r6, [r1,#0x1c]
    str r6, [r1,#0x34]
    str r6, [r1,#0x30]
    str r2, [r1,#0x20]
    str r7, [r1,#0x24]
    str r6, [r1,#0x3c]
    add r6, r0, #0
    push {r3}
    add r0, r2, #0
    lsl r5, r5, #4
    mul r4, r5
    ldr r2, [r1,#0x38]
    add r1, r4, #0
    bl CpuFastSet_80009AC
    add r0, r7, #0
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    add r0, r6, #0
    mov r3, #1
loc_804618E:
    cmp r3, #0
    beq loc_80461BE
    ldrb r1, [r0]
    cmp r1, #0xe5
    blt loc_80461A6
    sub r1, #0xe5
    lsl r1, r1, #2
    ldr r7, off_80461C8 // =off_80460F4 
    ldr r1, [r7,r1]
    mov lr, pc
    bx r1
    b loc_804618E
loc_80461A6:
    cmp r1, #0xe4
    beq loc_80461B2
    bl sub_80461D0
    add r0, #1
    b loc_804618E
loc_80461B2:
    ldrb r1, [r0,#1]
    add r1, #0xe4
    bl sub_80461D0
    add r0, #2
    b loc_804618E
loc_80461BE:
    pop {r0}
    bl sub_8046290
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80461C8:    .word off_80460F4
    .word byte_200A220
.endfunc // sub_8046154

.func
.thumb_func
sub_80461D0:
    push {r0,r3,lr}
    mov r3, r10
    push {r3}
    mov r3, r8
    push {r3}
    sub sp, sp, #4
    ldr r5, off_804627C // =byte_200A220 
    ldr r6, [r5,#0x38] // (dword_200A258 - 0x200a220)
    str r6, [sp]
    ldr r6, [r5,#0x1c] // (dword_200A23C - 0x200a220)
    lsr r7, r6, #5
    lsl r7, r7, #2
    ldr r4, [r5,#0x20] // (dword_200A240 - 0x200a220)
    add r7, r7, r4
    mov r8, r7
    mov r4, #0x1f
    and r6, r4
    mov r9, r6
    ldr r0, [r5,#0x18] // (dword_200A238 - 0x200a220)
    mov r7, #0x60 
    mul r7, r1
    add r7, r7, r0
    ldr r4, off_8046280 // =off_8046284 
    ldrb r6, [r5,#0x3] // (byte_200A223 - 0x200a220)
    lsl r6, r6, #2
    ldr r4, [r4,r6]
    ldrb r3, [r4,r1]
    ldr r4, [r5,#0x3c] // (dword_200A25C - 0x200a220)
    add r4, r4, r3
    str r4, [r5,#0x3c] // (dword_200A25C - 0x200a220)
    lsl r3, r3, #2
    ldr r4, [r5,#0x1c] // (dword_200A23C - 0x200a220)
    add r4, r4, r3
    str r4, [r5,#0x1c] // (dword_200A23C - 0x200a220)
    mov r2, #0x40 
    sub r2, r3, r2
    neg r2, r2
    mov r10, r2
    mov r6, #0xb
    add r3, r9
    mov r12, r3
loc_8046222:
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [sp]
    add r0, r0, r2
    add r1, r1, r2
    mov r2, r10
    lsl r1, r2
    lsr r1, r2
    mov r3, r9
    mov r5, #0x20 
    sub r4, r5, r3
    add r5, r1, #0
    lsr r5, r4
    add r2, r5, #0
    lsl r1, r3
    add r5, r0, #0
    lsr r5, r4
    orr r1, r5
    lsl r0, r3
    mov r5, r8
    ldr r3, [r5]
    lsl r3, r4
    lsr r3, r4
    orr r0, r3
    str r0, [r5]
    mov r4, r12
    sub r4, #0x20 
    ble loc_8046262
    str r1, [r5,#4]
    sub r4, #0x20 
    ble loc_8046262
    str r2, [r5,#8]
loc_8046262:
    mov r0, #8
    add r7, r7, r0
    ldr r0, off_804627C // =byte_200A220 
    ldrb r0, [r0]
    add r8, r0
    sub r6, #1
    bge loc_8046222
    add sp, sp, #4
    pop {r3}
    mov r8, r3
    pop {r3}
    mov r10, r3
    pop {r0,r3,pc}
off_804627C:    .word byte_200A220
off_8046280:    .word off_8046284
off_8046284:    .word byte_8043CA4
    .word byte_8043E84
    .word byte_8044064
.endfunc // sub_80461D0

.func
.thumb_func
sub_8046290:
    push {r0,lr}
    mov r1, r12
    push {r1}
    sub sp, sp, #0x10
    ldr r7, off_8046348 // =byte_200A220 
    ldrb r1, [r7,#0x2] // (byte_200A222 - 0x200a220)
    str r1, [sp,#4]
    ldrb r1, [r7]
    lsr r3, r1, #3
    mov r9, r3
    lsl r2, r1, #1
    ldr r6, [r7,#0x20] // (dword_200A240 - 0x200a220)
    ldr r7, [r7,#0x24] // (dword_200A244 - 0x200a220)
    mov r5, #0
    mov r12, r5
    str r6, [sp]
loc_80462B0:
    ldr r6, [sp]
    add r6, r6, r5
    mov r0, r9
    tst r0, r0
    beq loc_8046308
    sub r0, #1
    mov r9, r0
    mov r3, #2
loc_80462C0:
    mov r8, r6
    mov r4, #2
loc_80462C4:
    ldr r0, [r6]
    str r0, [r7]
    ldr r0, [r6,r1]
    str r0, [r7,#4]
    add r6, r6, r2
    ldr r0, [r6]
    str r0, [r7,#8]
    ldr r0, [r6,r1]
    str r0, [r7,#0xc]
    add r6, r6, r2
    ldr r0, [r6]
    str r0, [r7,#0x10]
    ldr r0, [r6,r1]
    str r0, [r7,#0x14]
    add r6, r6, r2
    ldr r0, [r6]
    str r0, [r7,#0x18]
    ldr r0, [r6,r1]
    str r0, [r7,#0x1c]
    mov r6, r8
    add r6, #4
    add r7, #0x20 
    mov r8, r6
    sub r4, #1
    bgt loc_80462C4
    mov r0, #8
    mul r0, r1
    sub r0, #8
    add r6, r6, r0
    sub r3, #1
    cmp r3, #0
    bgt loc_80462C0
    add r5, #8
    b loc_80462B0
loc_8046308:
    mov r0, r12
    add r0, #1
    mov r12, r0
    ldr r6, [sp]
    add r3, r1, #0
    lsl r3, r3, #4
    add r6, r6, r3
    str r6, [sp]
    mov r5, #0
    lsr r3, r1, #3
    mov r9, r3
    ldr r3, [sp,#4]
    cmp r0, r3
    bne loc_80462B0
    add sp, sp, #0x10
    pop {r1}
    mov r12, r1
    pop {r1}
    ldr r6, off_8046348 // =byte_200A220 
    ldr r0, [r6,#0x24] // (dword_200A244 - 0x200a220)
    sub r7, r7, r0
    add r2, r7, #0
    ldrb r3, [r6,#0x4] // (byte_200A224 - 0x200a220)
    tst r3, r3
    bne loc_804633E
    bl loc_8000AC8
loc_804633E:
    add r0, r7, #0
    pop {pc}
    .balign 4, 0x00
    .word 0xF00
off_8046348:    .word byte_200A220
.endfunc // sub_8046290

.func
.thumb_func
sub_804634C:
    push {lr}
    bl sub_8046356
    mov r3, #0
    pop {pc}
.endfunc // sub_804634C

.func
.thumb_func
sub_8046356:
    push {r0}
    ldr r2, off_804644C // =byte_200A220 
    ldr r6, [r2,#0x1c] // (dword_200A23C - 0x200a220)
    lsr r7, r6, #5
    lsl r7, r7, #2
    ldr r4, [r2,#0x20] // (dword_200A240 - 0x200a220)
    add r7, r7, r4
    mov r4, #0x1f
    and r6, r4
    ldr r4, [r2,#0x38] // (dword_200A258 - 0x200a220)
    lsr r4, r6
    lsl r4, r6
    ldrb r1, [r2]
    mov r3, #0xb
loc_8046372:
    ldr r0, [r7]
    orr r0, r4
    tst r6, r6
    ble loc_804637C
    str r0, [r7]
loc_804637C:
    add r7, r7, r1
    sub r3, #1
    bge loc_8046372
    ldrb r4, [r2,#0x1] // (byte_200A221 - 0x200a220)
    add r4, #1
    strb r4, [r2,#0x1] // (byte_200A221 - 0x200a220)
    ldrb r1, [r2]
    mov r7, #0xe
    mul r1, r7
    lsl r1, r1, #3
    mul r1, r4
    str r1, [r2,#0x1c] // (dword_200A23C - 0x200a220)
    pop {r0}
    add r0, #1
    mov r3, #1
    mov pc, lr
    .word byte_200A220
.endfunc // sub_8046356

.func
.thumb_func
sub_80463A0:
    push {r3,lr}
    push {r0,r4-r6}
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    add r1, #8
    ldr r7, off_804644C // =byte_200A220 
    ldr r0, [r7,r1]
    ldr r6, off_8046444 // =sub_8000C00+1 
    mov lr, pc
    bx r6
    mov r8, r0
    ldr r6, off_8046448 // =sub_8000C5C+1 
    mov lr, pc
    bx r6
    add r7, r0, #0
    sub r0, #1
    lsl r1, r0, #2
    pop {r0,r4-r6}
    ldrb r3, [r0,#2]
    cmp r3, #0x80
    bge loc_8046402
    sub r3, r3, r7
    mov r7, #0
    cmp r3, #0x40 
    blt loc_80463D6
    sub r3, #0x40 
    mov r7, #1
loc_80463D6:
    push {r0}
    push {r7}
    mov r0, #0xf
loc_80463DC:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_80461D0
    pop {r1}
    sub r1, #4
    bge loc_80463DC
    pop {r0}
loc_80463F4:
    cmp r3, #0
    ble loc_804643C
    sub r3, #1
    add r1, r0, #0
    bl sub_80461D0
    b loc_80463F4
loc_8046402:
    sub r3, #0x80
    sub r3, r3, r7
    push {r0,r1}
    mov r0, #0
    cmp r3, #0x40 
    blt loc_8046412
    sub r3, #0x40 
    mov r0, #1
loc_8046412:
    cmp r3, #0
    ble loc_8046420
    sub r3, #1
    add r1, r0, #0
    bl sub_80461D0
    b loc_8046412
loc_8046420:
    pop {r0,r1}
    push {r0}
    mov r0, #0xf
loc_8046426:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_80461D0
    pop {r1}
    sub r1, #4
    bge loc_8046426
loc_804643C:
    pop {r0}
    add r0, #3
    pop {r3,pc}
    .balign 4, 0x00
off_8046444:    .word sub_8000C00+1
off_8046448:    .word sub_8000C5C+1
off_804644C:    .word byte_200A220
.endfunc // sub_80463A0

.func
.thumb_func
sub_8046450:
    push {r3,r7,lr}
    ldr r1, off_8046460 // =dword_8046464 
    ldrb r3, [r0,#1]
    lsl r3, r3, #2
    ldr r1, [r1,r3]
    mov lr, pc
    bx r1
    pop {r3,r7,pc}
off_8046460:    .word dword_8046464
dword_8046464:    .word 0x0
    .word 0x3006DC9
off_804646C:    .word sub_8116894+1
    .word sub_8116924+1
    .word loc_8116ADC+1
    .word sub_8116CE0+1
    .word sub_8116E10+1
    .word sub_8117110+1
    .word sub_8117218+1
    .word sub_81172B0+1
    .word sub_8117404+1
    .word sub_81175D0+1
    .word sub_8117690+1
    .word sub_8117780+1
    .word loc_81178D8+1
    .word sub_8117BC8+1
    .word sub_8117D2C+1
    .word sub_8117EC8+1
    .word loc_8118344+1
    .word loc_81187E8+1
    .word loc_8118BA4+1
    .word loc_8118D60+1
    .word loc_8118E84+1
    .word sub_8118F24+1
    .word sub_8119364+1
    .word loc_811997C+1
    .word sub_8119ACC+1
    .word sub_8119D54+1
    .word sub_8119E40+1
    .word sub_811A338+1
    .word sub_811A414+1
    .word sub_811A78C+1
    .word sub_811A858+1
    .word sub_811A978+1
    .word sub_811AB5C+1
    .word sub_811AD38+1
    .byte 0, 0, 0, 0
    .word sub_811B1EC+1
    .word loc_811B338+1
    .word sub_811B3F4+1
    .word sub_811B4AC+1
    .word unk_811B9B5
    .word 0x0
    .word sub_811BC44+1
    .word sub_811BD64+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
    .word sub_811C08C+1
    .word sub_811C11C+1
    .word sub_811C1AC+1
    .word sub_811C25C+1
    .word sub_811C4E8+1
    .word sub_811C9FC+1
    .word sub_811CC74+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word sub_811DC34+1
    .word 0x0, 0x0
.endfunc // sub_8046450

.func
.thumb_func
// () -> void
sub_804657C:
    push {r4-r7,lr}
    // memBlock
    ldr r0, off_80466D4 // =byte_2008450 
    // size
    ldr r1, off_804659C // =0x528 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r5, off_80466D4 // =byte_2008450 
    mov r7, #0
loc_804658A:
    mov r0, #0x20 
    strb r0, [r5,#2]
    strb r7, [r5,#3]
    add r5, #0x58 
    add r7, #1
    cmp r7, #0xf
    blt loc_804658A
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804659C:    .word 0x528
.endfunc // sub_804657C

.func
.thumb_func
// (void *a1) -> void
sub_80465A0:
    push {r4-r7,lr}
loc_80465A2:
    ldrb r7, [r0]
    cmp r7, #0xff
    beq locret_80465BA
    push {r0}
    ldrh r2, [r0,#2]
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    bl sub_8046670
    pop {r0}
    add r0, #4
    b loc_80465A2
locret_80465BA:
    pop {r4-r7,pc}
.endfunc // sub_80465A0

.func
.thumb_func
sub_80465BC:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, off_80466D4 // =byte_2008450 
    mov r7, #0
loc_80465CA:
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq loc_80465E2
    ldr r0, off_80465F4 // =off_804646C 
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    push {r7}
    mov lr, pc
    bx r0
    pop {r7}
loc_80465E2:
    add r5, #0x58 
    add r7, #1
    cmp r7, #0xf
    blt loc_80465CA
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_80465F4:    .word off_804646C
.endfunc // sub_80465BC

.func
.thumb_func
// () -> void
sub_80465F8:
    mov r0, #0
    b loc_80465FC
loc_80465FC:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    add r4, r0, #0
    ldr r5, off_80466D4 // =byte_2008450 
    mov r7, #0
loc_804660C:
    ldrb r0, [r5]
    mov r1, #2
    tst r0, r1
    beq loc_8046652
    push {r0,r4,r5,r7}
    add r5, #0x20 
    bl sub_80466D8
    pop {r0,r4,r5,r7}
    mov r1, #0x40 
    tst r0, r1
    bne loc_8046644
    mov r1, #0x80
    tst r0, r1
    bne loc_8046634
    push {r0,r4,r5,r7}
    add r5, #0x20 
    bl sub_8002818
    pop {r0,r4,r5,r7}
loc_8046634:
    mov r1, #0x20 
    tst r0, r1
    beq loc_8046644
    push {r4,r5,r7}
    add r5, #0x20 
    bl sub_8002874
    pop {r4,r5,r7}
loc_8046644:
    push {r4,r5,r7}
    add r5, #0x20 
    add r0, r4, #0
    mov r1, #0
    bl sub_8002694
    pop {r4,r5,r7}
loc_8046652:
    add r5, #0x58 
    add r7, #1
    cmp r7, #0xf
    blt loc_804660C
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
.endfunc // sub_80465F8

.func
.thumb_func
// () -> void
sub_8046664:
    push {r4-r7,lr}
    bl sub_80466AA // () -> void
    bl sub_804657C // () -> void
    pop {r4-r7,pc}
.endfunc // sub_8046664

.func
.thumb_func
sub_8046670:
    push {r4-r7,lr}
    ldr r5, off_80466D4 // =byte_2008450 
    mov r4, #0x58 
    mul r1, r4
    add r5, r5, r1
    strb r0, [r5,#1]
    mov r0, #9
    strb r0, [r5]
    str r2, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    add r0, r5, #0
    pop {r4-r7,pc}
.endfunc // sub_8046670

.func
.thumb_func
sub_804668A:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5]
    bl sprite_makeUnscalable
    pop {r4-r7,pc}
.endfunc // sub_804668A

.func
.thumb_func
sub_8046696:
    push {r4-r7,lr}
    ldr r5, off_80466D4 // =byte_2008450 
    mov r1, #0x58 
    mul r1, r0
    add r5, r5, r1
    mov r0, #0
    strb r0, [r5]
    bl sprite_makeUnscalable
    pop {r4-r7,pc}
.endfunc // sub_8046696

.func
.thumb_func
// () -> void
sub_80466AA:
    push {r4-r7,lr}
    ldr r5, off_80466D4 // =byte_2008450 
    mov r7, #0
loc_80466B0:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_80466BA
    bl sub_804668A
loc_80466BA:
    add r5, #0x58 
    add r7, #1
    cmp r7, #0xf
    blt loc_80466B0
    pop {r4-r7,pc}
.endfunc // sub_80466AA

.func
.thumb_func
sub_80466C4:
    ldr r1, off_80466D4 // =byte_2008450 
    mov r2, #0x58 
    mul r2, r0
    add r1, r1, r2
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
    .balign 4, 0x00
off_80466D4:    .word byte_2008450
.endfunc // sub_80466C4

.func
.thumb_func
sub_80466D8:
    push {r5,lr}
    mov r1, #0xc
    ldrsh r1, [r5,r1]
    mov r6, #0xe
    ldrsh r6, [r5,r6]
    mov r12, r6
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x10
    and r3, r2
    beq loc_80466F0
    mov r0, #1
loc_80466F0:
    mov r8, r0
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x20 
    and r3, r2
    beq loc_80466FE
    mov r0, #1
loc_80466FE:
    mov r9, r0
    ldr r3, [r5,#0x20]
    ldrb r2, [r3]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r3, [r5,#0x18]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r2, r2, r3
    mov r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
loc_8046718:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_8046764
    mov r3, #1
    ldrsb r3, [r2,r3]
    mov r0, r8
    tst r0, r0
    beq loc_804672A
    neg r3, r3
loc_804672A:
    add r3, r3, r1
    mov r0, #0x40 
    neg r0, r0
    cmp r3, r0
    blt loc_804675C
    mov r0, #0xf0
    add r0, #0x41 
    cmp r3, r0
    bge loc_804675C
    mov r3, #2
    ldrsb r3, [r2,r3]
    mov r0, r9
    tst r0, r0
    beq loc_8046748
    neg r3, r3
loc_8046748:
    add r3, r12
    mov r0, #0x20 
    neg r0, r0
    cmp r3, r0
    blt loc_804675C
    mov r0, #0xa0
    add r0, #0x21 
    cmp r3, r0
    bge loc_804675C
    orr r7, r4
loc_804675C:
    mov r12, r6
    lsr r4, r4, #1
    add r2, #5
    b loc_8046718
loc_8046764:
    ldrb r3, [r5,#3]
    mov r4, #4
    tst r3, r4
    bne loc_804678A
    add r6, r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
    bic r6, r4
    mov r4, #8
    bic r3, r4
    tst r6, r6
    beq loc_804677E
    orr r3, r4
loc_804677E:
    mov r4, #2
    bic r3, r4
    tst r7, r7
    beq loc_8046794
    orr r3, r4
    b loc_8046794
loc_804678A:
    mov r4, #0xa
    bic r3, r4
    tst r7, r7
    beq loc_8046794
    orr r3, r4
loc_8046794:
    strb r3, [r5,#3]
    str r7, [r5,#0x28]
    pop {r5,pc}
    .balign 4, 0x00
off_804679C:    .word loc_811DF1C+1
    .word loc_811E024+1
    .word loc_811E168+1
    .word loc_811E248+1
    .word loc_811E360+1
    .word 0x0
    .word loc_811E418+1
    .word 0x0
    .word loc_811E57C+1
    .word loc_811E61C+1
    .word loc_811E6C0+1
    .word loc_811E7D4+1
    .word loc_811E858+1
    .word loc_811E914+1
    .word loc_811E9A0+1
.endfunc // sub_80466D8

.func
.thumb_func
sub_80467D8:
    push {r4-r7,lr}
    // memBlock
    ldr r0, off_8046928 // =byte_2011860 
    // size
    ldr r1, off_80467F8 // =0x1B8 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r5, off_8046928 // =byte_2011860 
    mov r7, #0
loc_80467E6:
    mov r0, #0x20 
    strb r0, [r5,#2]
    strb r7, [r5,#3]
    add r5, #0x58 
    add r7, #1
    cmp r7, #5
    blt loc_80467E6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80467F8:    .word 0x1B8
.endfunc // sub_80467D8

.func
.thumb_func
sub_80467FC:
    push {r4-r7,lr}
loc_80467FE:
    ldrb r7, [r0]
    cmp r7, #0xff
    beq locret_8046816
    push {r0}
    ldrh r2, [r0,#2]
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    bl sub_80468C6
    pop {r0}
    add r0, #4
    b loc_80467FE
locret_8046816:
    pop {r4-r7,pc}
.endfunc // sub_80467FC

.func
.thumb_func
sub_8046818:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, off_8046928 // =byte_2011860 
    mov r7, #0
loc_8046826:
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq loc_804683E
    ldr r0, off_8046850 // =off_804679C 
    ldrb r1, [r5,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    push {r7}
    mov lr, pc
    bx r0
    pop {r7}
loc_804683E:
    add r5, #0x58 
    add r7, #1
    cmp r7, #5
    blt loc_8046826
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_8046850:    .word off_804679C
.endfunc // sub_8046818

.func
.thumb_func
sub_8046854:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, off_8046928 // =byte_2011860 
    mov r7, #0
loc_8046862:
    ldrb r0, [r5]
    mov r1, #2
    tst r0, r1
    beq loc_80468A8
    push {r0,r5,r7}
    add r5, #0x20 
    bl sub_804692C
    pop {r0,r5,r7}
    mov r1, #0x40 
    tst r0, r1
    bne loc_804689A
    mov r1, #0x80
    tst r0, r1
    bne loc_804688A
    push {r0,r5,r7}
    add r5, #0x20 
    bl sub_8002818
    pop {r0,r5,r7}
loc_804688A:
    mov r1, #0x20 
    tst r0, r1
    beq loc_804689A
    push {r5,r7}
    add r5, #0x20 
    bl sub_8002874
    pop {r5,r7}
loc_804689A:
    push {r5,r7}
    add r5, #0x20 
    mov r0, #0
    mov r1, #0
    bl sub_8002694
    pop {r5,r7}
loc_80468A8:
    add r5, #0x58 
    add r7, #1
    cmp r7, #5
    blt loc_8046862
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
.endfunc // sub_8046854

.func
.thumb_func
sub_80468BA:
    push {r4-r7,lr}
    bl sub_8046900
    bl sub_80467D8
    pop {r4-r7,pc}
.endfunc // sub_80468BA

.func
.thumb_func
sub_80468C6:
    push {r4-r7,lr}
    ldr r5, off_8046928 // =byte_2011860 
    mov r4, #0x58 
    mul r1, r4
    add r5, r5, r1
    strb r0, [r5,#1]
    mov r0, #9
    strb r0, [r5]
    str r2, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    add r0, r5, #0
    pop {r4-r7,pc}
.endfunc // sub_80468C6

.func
.thumb_func
sub_80468E0:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5]
    bl sprite_makeUnscalable
    pop {r4-r7,pc}
.endfunc // sub_80468E0

.func
.thumb_func
sub_80468EC:
    push {r4-r7,lr}
    ldr r5, off_8046928 // =byte_2011860 
    mov r1, #0x58 
    mul r1, r0
    add r5, r5, r1
    mov r0, #0
    strb r0, [r5]
    bl sprite_makeUnscalable
    pop {r4-r7,pc}
.endfunc // sub_80468EC

.func
.thumb_func
sub_8046900:
    push {r4-r7,lr}
    ldr r5, off_8046928 // =byte_2011860 
    mov r7, #0
loc_8046906:
    ldrb r0, [r5]
    tst r0, r0
    beq loc_8046910
    bl sub_80468E0
loc_8046910:
    add r5, #0x58 
    add r7, #1
    cmp r7, #5
    blt loc_8046906
    pop {r4-r7,pc}
.endfunc // sub_8046900

.func
.thumb_func
sub_804691A:
    ldr r1, off_8046928 // =byte_2011860 
    mov r2, #0x58 
    mul r2, r0
    add r1, r1, r2
    ldrb r0, [r1]
    tst r0, r0
    mov pc, lr
off_8046928:    .word byte_2011860
.endfunc // sub_804691A

.func
.thumb_func
sub_804692C:
    push {r5,lr}
    mov r1, #0xc
    ldrsh r1, [r5,r1]
    mov r6, #0xe
    ldrsh r6, [r5,r6]
    mov r12, r6
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x10
    and r3, r2
    beq loc_8046944
    mov r0, #1
loc_8046944:
    mov r8, r0
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x20 
    and r3, r2
    beq loc_8046952
    mov r0, #1
loc_8046952:
    mov r9, r0
    ldr r3, [r5,#0x20]
    ldrb r2, [r3]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r3, [r5,#0x18]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r2, r2, r3
    mov r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
loc_804696C:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_80469B8
    mov r3, #1
    ldrsb r3, [r2,r3]
    mov r0, r8
    tst r0, r0
    beq loc_804697E
    neg r3, r3
loc_804697E:
    add r3, r3, r1
    mov r0, #0x40 
    neg r0, r0
    cmp r3, r0
    blt loc_80469B0
    mov r0, #0xf0
    add r0, #0x41 
    cmp r3, r0
    bge loc_80469B0
    mov r3, #2
    ldrsb r3, [r2,r3]
    mov r0, r9
    tst r0, r0
    beq loc_804699C
    neg r3, r3
loc_804699C:
    add r3, r12
    mov r0, #0x20 
    neg r0, r0
    cmp r3, r0
    blt loc_80469B0
    mov r0, #0xa0
    add r0, #0x21 
    cmp r3, r0
    bge loc_80469B0
    orr r7, r4
loc_80469B0:
    mov r12, r6
    lsr r4, r4, #1
    add r2, #5
    b loc_804696C
loc_80469B8:
    ldrb r3, [r5,#3]
    mov r4, #4
    tst r3, r4
    bne loc_80469DE
    add r6, r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
    bic r6, r4
    mov r4, #8
    bic r3, r4
    tst r6, r6
    beq loc_80469D2
    orr r3, r4
loc_80469D2:
    mov r4, #2
    bic r3, r4
    tst r7, r7
    beq loc_80469E8
    orr r3, r4
    b loc_80469E8
loc_80469DE:
    mov r4, #0xa
    bic r3, r4
    tst r7, r7
    beq loc_80469E8
    orr r3, r4
loc_80469E8:
    strb r3, [r5,#3]
    str r7, [r5,#0x28]
    pop {r5,pc}
    .byte 0, 0
unk_80469F0:    .byte 0x20
    .byte 0x10, 0x22, 0x10
    .byte 0x24 
    .byte 0x10, 0x26, 0x10
    .byte 0x28 
    .byte 0x10, 0x2A, 0x10
    .byte 0x2C 
    .byte 0x10, 0x2E, 0x10
    .byte  0
    .byte 0x10, 0x30, 0x10
    .byte  0
    .byte 0x10, 0x32, 0x10
    .byte 0x34 
    .byte 0x10, 0x36, 0x10
    .byte 0x38 
    .byte 0x10, 0x3A, 0x10
    .byte 0x3C 
    .byte 0x10, 0x3E, 0x10
    .byte 0x21 
    .byte 0x10, 0x23, 0x10
    .byte 0x25 
    .byte 0x10, 0x27, 0x10
    .byte 0x29 
    .byte 0x10, 0x2B, 0x10
    .byte 0x2D 
    .byte 0x10, 0x2F, 0x10
    .byte  0
    .byte 0x10, 0x31, 0x10
    .byte  0
    .byte 0x10, 0x33, 0x10
    .byte 0x35 
    .byte 0x10, 0x37, 0x10
    .byte 0x39 
    .byte 0x10, 0x3B, 0x10
    .byte 0x3D 
    .byte 0x10, 0x3F, 0x10
aBDFHJLN:    .byte 0x40, 0x20, 0x42, 0x20, 0x44, 0x20, 0x46, 0x20, 0x48, 0x20
    .byte 0x4A, 0x20, 0x4C, 0x20, 0x4E, 0x20, 0x0
    .byte 0x10, 0x50, 0x20
    .byte  0
    .byte 0x10, 0x52, 0x20
aTVXZACEGIKMO:    .byte 0x54, 0x20, 0x56, 0x20, 0x58, 0x20, 0x5A, 0x20, 0x5C, 0x20, 0x5E, 0x20, 0x41, 0x20, 0x43, 0x20
    .byte 0x45, 0x20, 0x47, 0x20, 0x49, 0x20, 0x4B, 0x20, 0x4D, 0x20, 0x4F, 0x20, 0x0
    .byte 0x10, 0x51, 0x20
    .byte  0
    .byte 0x10
    .byte 0x53 
    .byte 0x20
    .byte 0x55 
    .byte 0x20
    .byte 0x57 
    .byte 0x20
    .byte 0x59 
    .byte 0x20
    .byte 0x5B 
    .byte 0x20
    .byte 0x5D 
    .byte 0x20
    .byte 0x5F 
    .byte 0x20
    .byte 0x60 
    .byte 0x10
    .byte 0x62 
    .byte 0x10
    .byte 0x64 
    .byte 0x10
    .byte 0x66 
    .byte 0x10
    .byte 0x68 
    .byte 0x10
    .byte 0x6A 
    .byte 0x10
    .byte 0x6C 
    .byte 0x10
    .byte 0x6E 
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0x70 
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0x72 
    .byte 0x10
    .byte 0x74 
    .byte 0x10
    .byte 0x76 
    .byte 0x10
    .byte 0x78 
    .byte 0x10
    .byte 0x7A 
    .byte 0x10
    .byte 0x7C 
    .byte 0x10
    .byte 0x7E 
    .byte 0x10
    .byte 0x61 
    .byte 0x10
    .byte 0x63 
    .byte 0x10
    .byte 0x65 
    .byte 0x10
    .byte 0x67 
    .byte 0x10
    .byte 0x69 
    .byte 0x10
    .byte 0x6B 
    .byte 0x10
    .byte 0x6D 
    .byte 0x10
    .byte 0x6F 
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0x71 
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0x73 
    .byte 0x10
    .byte 0x75 
    .byte 0x10
    .byte 0x77 
    .byte 0x10
    .byte 0x79 
    .byte 0x10
    .byte 0x7B 
    .byte 0x10
    .byte 0x7D 
    .byte 0x10
    .byte 0x7F 
    .byte 0x10
    .byte 0x80
    .byte 0x20
    .byte 0x82
    .byte 0x20
    .byte 0x84
    .byte 0x20
    .byte 0x86
    .byte 0x20
    .byte 0x88
    .byte 0x20
    .byte 0x8A
    .byte 0x20
    .byte 0x8C
    .byte 0x20
    .byte 0x8E
    .byte 0x20
    .byte  0
    .byte 0x10
    .byte 0x90
    .byte 0x20
    .byte  0
    .byte 0x10
    .byte 0x92
    .byte 0x20
    .byte 0x94
    .byte 0x20
    .byte 0x96
    .byte 0x20
    .byte 0x98
    .byte 0x20
    .byte 0x9A
    .byte 0x20
    .byte 0x9C
    .byte 0x20
    .byte 0x9E
    .byte 0x20
    .byte 0x81
    .byte 0x20
    .byte 0x83
    .byte 0x20
    .byte 0x85
    .byte 0x20
    .byte 0x87
    .byte 0x20
    .byte 0x89
    .byte 0x20
    .byte 0x8B
    .byte 0x20
    .byte 0x8D
    .byte 0x20
    .byte 0x8F
    .byte 0x20
    .byte  0
    .byte 0x10
    .byte 0x91
    .byte 0x20
    .byte  0
    .byte 0x10
    .byte 0x93
    .byte 0x20
    .byte 0x95
    .byte 0x20
    .byte 0x97
    .byte 0x20
    .byte 0x99
    .byte 0x20
    .byte 0x9B
    .byte 0x20
    .byte 0x9D
    .byte 0x20
    .byte 0x9F
    .byte 0x20
    .byte 0xA0
    .byte 0x10
    .byte 0xA2
    .byte 0x10
    .byte 0xA4
    .byte 0x10
    .byte 0xA6
    .byte 0x10
    .byte 0xA8
    .byte 0x10
    .byte 0xAA
    .byte 0x10
    .byte 0xAC
    .byte 0x10
    .byte 0xAE
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0xB0
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0xB2
    .byte 0x10
    .byte 0xB4
    .byte 0x10
    .byte 0xB6
    .byte 0x10
    .byte 0xB8
    .byte 0x10
    .byte 0xBA
    .byte 0x10
    .byte 0xBC
    .byte 0x10
    .byte 0xBE
    .byte 0x10
    .byte 0xA1
    .byte 0x10
    .byte 0xA3
    .byte 0x10
    .byte 0xA5
    .byte 0x10
    .byte 0xA7
    .byte 0x10
    .byte 0xA9
    .byte 0x10
    .byte 0xAB
    .byte 0x10
    .byte 0xAD
    .byte 0x10
    .byte 0xAF
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0xB1
    .byte 0x10
    .byte  0
    .byte 0x10
    .byte 0xB3
    .byte 0x10
    .byte 0xB5
    .byte 0x10
    .byte 0xB7
    .byte 0x10
    .byte 0xB9
    .byte 0x10
    .byte 0xBB
    .byte 0x10
    .byte 0xBD
    .byte 0x10
    .byte 0xBF
    .byte 0x10
unk_8046B58:    .byte 0x20
    .byte 0x11
    .byte 0x22 
    .byte 0x11
    .byte 0x24 
    .byte 0x11
    .byte 0x26 
    .byte 0x11
    .byte 0x28 
    .byte 0x11
    .byte 0x2A 
    .byte 0x11
    .byte 0x2C 
    .byte 0x11
    .byte 0x21 
    .byte 0x11
    .byte 0x23 
    .byte 0x11
    .byte 0x25 
    .byte 0x11
    .byte 0x27 
    .byte 0x11
    .byte 0x29 
    .byte 0x11
    .byte 0x2B 
    .byte 0x11
    .byte 0x2D 
    .byte 0x11
unk_8046B74:    .byte 0x16
    .byte  0
    .byte  0
    .byte  1
    .byte 0x16
    .byte  1
    .byte  1
    .byte  1
    .byte 0x16
    .byte  2
    .byte  2
    .byte  1
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
unk_8046B84:    .byte 0xB
    .byte  3
    .byte  0
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
unk_8046B8C:    .byte 0xC
    .byte  4
    .byte  0
    .byte 0xFF
    .byte 0xC
    .byte  5
    .byte  1
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
unk_8046B98:    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .word dword_87F0DA0
    .word 0x0
    .word 0x8, 0x0
    .word dword_87F0DA0
    .word 0x40
    .word 0x8, 0x0
    .word dword_87F1278
    .word 0x80
    .word 0x8, 0x0
    .word dword_87F14CC
    .word 0xC0
    .word 0x8, 0x0
    .word dword_87F0FF4
    .word 0x100
    .word 0x8, 0x0
    .word dword_87F0DA0
    .word 0x140
    .word 0x8
    .word 0x1
    .word dword_87F1714
    .word 0x180
    .word 0x8
    .word 0x1
    .word dword_87F1714
    .word 0x1C0
    .word 0x8
    .word 0x0
    .word dword_87F1278
    .word 0x200
    .word 0x8, 0x0
    .word dword_87F195C
    .word 0x240
    .word 0x8, 0x0
    .word dword_87F1278
    .word 0x280
    .word 0x8, 0x0
    .word dword_87F1BA8
    .word 0x2C0
    .word 0x8, 0x0
    .word dword_87F1BA8
    .word 0x300
    .word 0x8, 0x0
    .word dword_87F1BA8
    .word 0x340
    .word 0x8, 0x0
    .word dword_87F1BA8
    .word 0x380
    .word 0x8, 0x0
    .word dword_87F1BA8
    .word 0x3C0
    .word 0x8, 0x0
    .word unk_87F1E10
    .word 0x400
    .word 0x8, 0x0
    .word dword_87F195C
    .word 0x440
    .word 0x8
    .word 0x2
    .word unk_87F2094
    .word 0x480
    .word 0x140
.endfunc // sub_804692C

.func
.thumb_func
sub_8046CC8:
    push {r4-r7,lr}
    ldr r5, off_8046D48 // =byte_2011C10 
    add r4, r0, #0
    // memBlock
    ldr r0, off_8046D48 // =byte_2011C10 
    // size
    mov r1, #0x34 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    strb r4, [r5,#0x4] // (byte_2011C14 - 0x2011c10)
    ldr r2, off_8046CF0 // =unk_8046B98 
    mov r0, #0x10
    mul r0, r4
    add r0, r0, r2
    str r0, [r5,#0x1c] // (dword_2011C2C - 0x2011c10)
    ldr r0, off_8046CF4 // =reqBBS_requestInfo_textOffsets 
    str r0, [r5,#0x24] // (dword_2011C34 - 0x2011c10)
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrh r0, [r1,#4]
    strh r0, [r1,#0xc]
    pop {r4-r7,pc}
off_8046CF0:    .word unk_8046B98
off_8046CF4:    .word reqBBS_requestInfo_textOffsets
.endfunc // sub_8046CC8

cb_8046CF8:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, off_8046D48 // =byte_2011C10 
    ldr r0, off_8046D18 // =off_8046D1C 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_8046D18:    .word off_8046D1C
off_8046D1C:    .word sub_8046D4C+1
    .word sub_8046DDC+1
    .word sub_8046DF8+1
    .word sub_8046E06+1
    .word sub_8046E48+1
    .word sub_8046E84+1
    .word sub_8046ED2+1
    .word sub_8047028+1
    .word sub_8047050+1
    .word sub_8047066+1
    .word sub_804709C+1
off_8046D48:    .word byte_2011C10
.func
.thumb_func
sub_8046D4C:
    push {lr}
    ldrb r0, [r5,#4]
    ldr r1, off_8046DCC // =byte_2019A00 
    ldr r2, off_8046DD0 // =byte_201AE00 
    bl sub_8048DF8
    bl copyData_804747C
    bl uncomp_80471F8
    mov r0, #0
    bl sub_8047B88
    strh r0, [r5,#0x12]
    bl sub_804754C
.endfunc // sub_8046D4C

    bl sub_8047CEC
    mov r0, #0
    ldr r1, off_8046DCC // =byte_2019A00 
    bl sub_8047594
    bl sub_804758C
    bl sub_8047800
    ldr r0, off_8046DD8 // =unk_8046B8C 
    bl sub_80465A0 // (void *a1) -> void
    ldr r0, [r5,#0x24]
    mov r1, #0
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    ldr r0, dword_8046DD4 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x18
    bl sub_80015FC
    mov r0, #8
    mov r1, #0xc
    bl engine_setScreeneffect // (int a1, int a2) -> void
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #1
    bne loc_8046DB8
    bl sub_803D0F4
    b loc_8046DBC
loc_8046DB8:
    bl sub_803D06C
loc_8046DBC:
    str r0, [r5,#0x28]
    bl sub_804733C
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8046DCC:    .word byte_2019A00
off_8046DD0:    .word byte_201AE00
dword_8046DD4:    .word 0x1F40
off_8046DD8:    .word unk_8046B8C
.func
.thumb_func
sub_8046DDC:
    push {lr}
    ldrb r0, [r5,#8]
    add r0, #2
    strb r0, [r5,#8]
    cmp r0, #0x15
    blt loc_8046DF0
    mov r0, #0x15
    strb r0, [r5,#8]
    mov r0, #8
    strb r0, [r5]
loc_8046DF0:
    bl sub_8047134
.endfunc // sub_8046DDC

    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8046DF8:
    push {lr}
    bl sub_8047950
    bl sub_8047134
.endfunc // sub_8046DF8

    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8046E06:
    push {lr}
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8046E40
    ldr r0, [r5,#0x28]
    bl sub_8047366
    bne loc_8046E40
    ldrb r0, [r5,#8]
    sub r0, #2
    strb r0, [r5,#8]
    cmp r0, #0
    bgt loc_8046E40
    mov r0, #0
    strb r0, [r5,#8]
    ldrb r0, [r5,#0xa]
    add r0, #1
    strb r0, [r5,#0xa]
    cmp r0, #0x10
    blt loc_8046E40
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0x10
    strb r0, [r5]
    mov r0, #0xc
    mov r1, #0xc
    bl engine_setScreeneffect // (int a1, int a2) -> void
loc_8046E40:
    bl sub_8047134
.endfunc // sub_8046E06

    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8046E48:
    push {lr}
    bl sub_8047134
.endfunc // sub_8046E48

    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8046E80
    ldr r1, [r5,#0x28]
    add r0, r1, #0
    bl sub_8047366
    bne loc_8046E80
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #1
    bne loc_8046E6E
    add r0, r1, #0
    bl sub_803D0B4
    b loc_8046E74
loc_8046E6E:
    add r0, r1, #0
    bl sub_803D02C
loc_8046E74:
    bl sub_809E122
    bl sub_8005F84
    mov r0, #1
    pop {pc}
loc_8046E80:
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8046E84:
    push {lr}
    bl sub_8047134
.endfunc // sub_8046E84

    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8046E9E
    mov r0, #0x68 
    bl sound_play // () -> void
    b loc_8046EBC
loc_8046E9E:
    mov r0, #0x20 
    bl chatbox_8045F3C
    beq loc_8046ECE
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_8046EBC
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #8
    strb r0, [r5]
    b loc_8046ECE
loc_8046EBC:
    mov r0, #0x40 
    bl chatbox_8045F1C
    ldr r0, [r5,#0x24]
    mov r1, #3
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #0xc
    strb r0, [r5]
loc_8046ECE:
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8046ED2:
    push {lr}
    bl sub_8047134
.endfunc // sub_8046ED2

    mov r0, #0x20 
    bl chatbox_8045F3C
    beq loc_8046EF2
    ldr r0, off_8047024 // =0x100 
    bl chatbox_8045F3C
    beq loc_8046EF2
    mov r0, #1
    strb r0, [r5,#7]
    mov r0, #0x68 
    bl sound_play // () -> void
loc_8046EF2:
    mov r0, #8
    bl chatbox_8045F3C
    bne loc_8046EFC
    b loc_8047020
loc_8046EFC:
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_8046F12
    ldrb r0, [r5,#7]
    tst r0, r0
    bne loc_8047000
    mov r0, #0x68 
    bl sound_play // () -> void
    b loc_8047000
loc_8046F12:
    ldr r1, [r5,#0x1c]
    ldr r1, [r1]
    ldr r2, [r5,#0x20]
    ldrh r2, [r2,#6]
    cmp r1, #1
    beq loc_8046F22
    mov r1, #0x64 
    mul r2, r1
loc_8046F22:
    ldr r0, [r5,#0x28]
    bl sub_8047366
    bne loc_8046F2E
    sub r0, r0, r2
    bge loc_8046F32
loc_8046F2E:
    mov r1, #8
    b loc_804700E
loc_8046F32:
    mov r8, r0
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #2
    bne loc_8046F42
    mov r0, #0x67 
    bl sound_play // () -> void
loc_8046F42:
    ldr r7, [r5,#0x20]
    ldrb r2, [r7]
    cmp r2, #2
    bne loc_8046F84
    ldr r0, [r5,#0x1c]
    ldr r0, [r0]
    cmp r0, #2
    beq loc_8046F6E
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    bl sub_8047384
    bne loc_8047000
    mov r2, #1
    bl sub_8021AEE
    mov r1, #9
    cmp r0, #0
    bne loc_804700E
    mov r1, #7
    b loc_8046FBE
loc_8046F6E:
    mov r0, r8
    str r0, [r5,#0x2c]
    bl sub_804733C
    mov r1, #6
    mov r0, #0x28 
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    b loc_8047020
loc_8046F84:
    cmp r2, #1
    bne loc_8046FA2
    ldrh r0, [r7,#2]
    mov r1, #0xff
    bl sub_8047384
    bne loc_8047000
    mov r1, #1
    bl sub_803CD98
    mov r1, #9
    cmp r0, #0
    bne loc_804700E
    mov r1, #6
    b loc_8046FBE
loc_8046FA2:
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    bl sub_8047384
    bne loc_8047000
    add r0, #0x90
    mov r2, #1
    bl sub_803D108
    mov r1, #9
    cmp r0, #0
    bne loc_804700E
    mov r1, #0xc
    b loc_8046FBE
loc_8046FBE:
    mov r0, r8
    str r0, [r5,#0x28]
    bl sub_804733C
    push {r1}
    ldr r7, [r5,#0x20]
    ldrb r0, [r5,#4]
    ldrb r1, [r7]
    ldrh r2, [r7,#2]
    ldrb r3, [r7,#4]
    ldr r4, [r5,#0x1c]
    ldr r4, [r4]
    bl sub_8048DAE
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    bl sub_8047B88
    strh r0, [r5,#0x12]
    bl sub_8047CB6
    pop {r1}
    mov r0, #0x1c
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r7, #0xff
    strb r7, [r5,#0xd]
    mov r0, #0x73 
    bl sound_play // () -> void
    b loc_8047020
loc_8047000:
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #8
    strb r0, [r5]
    b loc_8047020
loc_804700E:
    ldr r0, [r5,#0x24]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #0x69 
    bl sound_play // () -> void
    mov r0, #0x1c
    strb r0, [r5]
    b loc_8047020
loc_8047020:
    mov r0, #0
    pop {pc}
off_8047024:    .word 0x100
.func
.thumb_func
sub_8047028:
    push {lr}
    bl sub_8047134
.endfunc // sub_8047028

    mov r0, #8
    bl chatbox_8045F3C
    beq loc_804704C
    mov r1, #1
    mov r2, #8
    ldrh r0, [r5,#0x12]
    tst r0, r0
    bne loc_8047044
    mov r1, #0xa
    mov r2, #0x20 
loc_8047044:
    strb r2, [r5]
    ldr r0, [r5,#0x24]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
loc_804704C:
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8047050:
    push {lr}
    bl sub_8047134
.endfunc // sub_8047050

    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8047062
    mov r0, #0xc
    strb r0, [r5]
loc_8047062:
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8047066:
    push {lr}
    bl sub_8047134
.endfunc // sub_8047066

    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8047094
    mov r0, #0
    bl chatbox_8045EEC
    ldr r2, dword_8047098 // =0x2420 
    add r2, r2, r0
    add r0, r2, #0
    bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
    mov r7, #0xff
    strb r7, [r5,#0xd]
    ldrb r0, [r5,#1]
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    ldrb r1, [r5,#6]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
loc_8047094:
    mov r0, #0
    pop {pc}
dword_8047098:    .word 0x2420
.func
.thumb_func
sub_804709C:
    push {lr}
    bl sub_8047134
.endfunc // sub_804709C

    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8047130
    ldr r0, [r5,#0x2c]
    bl sub_8047366
    bne loc_8047130
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    bl sub_8047384
    bne loc_804710A
    mov r2, #1
    bl sub_8021AEE
    mov r1, #9
    cmp r0, #0
    bne loc_8047118
    ldr r0, [r5,#0x2c]
    str r0, [r5,#0x28]
    bl sub_804733C
    ldr r7, [r5,#0x20]
    ldrb r0, [r5,#4]
    ldrb r1, [r7]
    ldrh r2, [r7,#2]
    ldrb r3, [r7,#4]
    ldr r4, [r5,#0x1c]
    ldr r4, [r4]
    bl sub_8048DAE
    ldr r7, [r5,#0x20]
    ldrh r0, [r7,#2]
    bl sub_8047B88
    strh r0, [r5,#0x12]
    bl sub_8047CB6
    mov r0, #0x1c
    strb r0, [r5]
    mov r1, #7
    ldr r0, [r5,#0x24]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r7, #0xff
    strb r7, [r5,#0xd]
    mov r0, #0x73 
    bl sound_play // () -> void
    b loc_8047130
loc_804710A:
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #8
    strb r0, [r5]
    b loc_8047130
loc_8047118:
    ldr r0, [r5,#0x28]
    str r0, [r5,#0x2c]
    bl sub_804733C
    ldr r0, [r5,#0x24]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #0x69 
    bl sound_play // () -> void
    mov r0, #0x1c
    strb r0, [r5]
loc_8047130:
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_8047134:
    push {r4-r7,lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #2
    mov r3, #0
    mov r4, #0x20 
    mov r5, #0x14
    bl sub_80018D0
    pop {r5}
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    bl sub_81179AE
    bl sub_80473E6
    bne loc_8047174
    ldrh r0, [r5,#0xe]
    tst r0, r0
    bne loc_8047174
    ldrb r3, [r5,#0xd]
    cmp r3, #0
    beq loc_8047188
    mov r3, #0
    strb r3, [r5,#0xd]
    mov r0, #0
    bl sub_8047B88
    strh r0, [r5,#0x12]
loc_8047174:
    bl sub_8047CB6
    bl sub_8047CEC
    ldrh r0, [r5,#0x18]
    ldr r1, off_80471F4 // =byte_2019A00 
    bl sub_8047594
    bl sub_8047834
loc_8047188:
    bl sub_804758C
    bl sub_8047800
    mov r7, r10
    ldr r7, [r7,#8]
    ldrh r6, [r7,#0x10]
    sub r6, #1
    strh r6, [r7,#0x10]
    ldrh r6, [r7,#0x12]
    sub r6, #1
    strh r6, [r7,#0x12]
    ldrb r0, [r5]
    cmp r0, #4
    beq locret_80471F0
    cmp r0, #0xc
    beq locret_80471F0
    cmp r0, #0x10
    beq locret_80471F0
    mov r0, #0
    ldrh r1, [r5,#0x14]
    lsl r1, r1, #4
    add r1, #8
    ldrb r2, [r5,#0xb]
    mov r3, #0
    bl sub_80472E8
    ldrb r0, [r5]
    cmp r0, #8
    bne loc_80471C6
    strb r2, [r5,#0xb]
loc_80471C6:
    ldrh r0, [r5,#0x12]
    cmp r0, #5
    blt locret_80471F0
    ldrh r0, [r5,#0x18]
    tst r0, r0
    beq loc_80471DC
    mov r0, #0x50 
    mov r1, #3
    mov r2, #0
    bl sub_804722C
loc_80471DC:
    ldrh r0, [r5,#0x12]
    ldrh r1, [r5,#0x18]
    sub r0, r0, r1
    cmp r0, #5
    ble locret_80471F0
    mov r0, #0x50 
    mov r1, #0x55 
    mov r2, #1
    bl sub_804722C
locret_80471F0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80471F4:    .word byte_2019A00
.endfunc // sub_8047134

.func
.thumb_func
uncomp_80471F8:
    push {r4-r7,lr}
    ldr r0, [r5,#0x1c]
    // src
    ldr r0, [r0,#4]
    // dest
    ldr r1, off_8047218 // =unk_2029A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    // src
    ldr r0, off_804721C // =comp_873DE4C 
    // dest
    ldr r1, off_8047220 // =unk_202BA00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    // src
    ldr r0, off_8047224 // =comp_873ECC8 
    // dest
    ldr r1, off_8047228 // =unk_202DA00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8047218:    .word unk_2029A00
off_804721C:    .word comp_873DE4C
off_8047220:    .word unk_202BA00
off_8047224:    .word comp_873ECC8
off_8047228:    .word unk_202DA00
.endfunc // uncomp_80471F8

.func
.thumb_func
sub_804722C:
    push {r4-r7,lr}
    ldrb r3, [r5,#5]
    tst r3, r3
    bne locret_804725E
    ldr r3, off_8047264 // =dword_8047268 
    lsl r4, r2, #1
    lsl r0, r0, #0x10
    orr r0, r1
    mov r6, r10
    ldr r6, [r6,#0x24]
    ldrh r6, [r6]
    mov r7, #0x1f
    and r6, r7
    lsl r6, r6, #1
    ldrh r1, [r3,r6]
    add r1, r1, r4
    ldr r2, dword_8047260 // =0x0 
    orr r0, r2
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
locret_804725E:
    pop {r4-r7,pc}
dword_8047260:    .word 0x0
off_8047264:    .word dword_8047268
dword_8047268:    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00FE00F
    .word 0xE00EE00E
    .word 0xE00EE00E
    .word 0xE00EE00E
    .word 0xE00EE00E
    .word 0xE00EE00E
    .word 0xE00EE00E
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE011E011
    .word 0xE010E010
    .word 0xE010E010
    .word 0xE010E010
    .word 0xE010E010
    .word 0xE010E010
    .word 0xE010E010
.endfunc // sub_804722C

.func
.thumb_func
sub_80472E8:
    push {r4-r7,lr}
    add r7, r2, #0
    lsl r0, r0, #0x10
    orr r1, r0
    ldr r0, dword_8047310 // =0x40000000 
    orr r0, r1
    lsl r2, r2, #1
    ldr r1, off_8047314 // =dword_8047318 
    ldrh r1, [r1,r2]
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
    add r2, r7, #0
    add r2, #1
    cmp r2, #0x12
    blt locret_804730C
    mov r2, #0
locret_804730C:
    pop {r4-r7,pc}
    .byte 0, 0
dword_8047310:    .word 0x40000000
off_8047314:    .word dword_8047318
dword_8047318:    .word 0xE002E002
    .word 0xE002E002
    .word 0xE002E002
    .word 0xE006E006
    .word 0xE006E006
    .word 0xE006E006
    .word 0xE00AE00A
    .word 0xE00AE00A
    .word 0xE00AE00A
.endfunc // sub_80472E8

.func
.thumb_func
sub_804733C:
    push {r0-r4,lr}
    add r4, r0, #0
loc_8047340:
    bl sub_8001532
    mov r2, #0xff
    and r2, r0
    tst r2, r2
    beq loc_8047340
    add r1, r4, #0
    add r1, r1, r2
    lsl r1, r1, #8
    lsr r3, r2, #4
    mov r0, #0xf
    and r2, r0
    eor r2, r3
    lsl r3, r3, #0x1c
    orr r1, r3
    orr r1, r2
    mvn r1, r1
    str r1, [r5,#0x30]
    pop {r0-r4,pc}
.endfunc // sub_804733C

.func
.thumb_func
sub_8047366:
    push {r0-r2,r4,lr}
    add r4, r0, #0
    ldr r0, [r5,#0x30]
    mvn r0, r0
    lsl r1, r0, #4
    lsr r1, r1, #0xc
    mov r2, #0xf
    and r2, r0
    lsr r0, r0, #0x1c
    eor r2, r0
    lsl r0, r0, #4
    orr r0, r2
    sub r1, r1, r0
    cmp r1, r4
    pop {r0-r2,r4,pc}
.endfunc // sub_8047366

.func
.thumb_func
sub_8047384:
    push {r0,r1,r4-r7,lr}
    mov r2, r8
    mov r3, r9
    push {r2,r3}
    mov r8, r0
    mov r9, r1
    ldr r7, [r5,#0x1c]
    ldr r2, [r7]
    cmp r2, #2
    beq loc_80473D0
    mov r3, #0
    ldr r4, [r7,#0xc]
    ldr r7, [r5,#0x1c]
    ldr r7, [r7,#8]
    ldr r2, off_8047478 // =byte_8047DA0 
    add r7, r7, r2
    mov r0, r8
    ldrh r1, [r7,#2]
    bl sub_804743C
    bne loc_80473B8
    mov r0, r9
    ldrb r1, [r7,#4]
    bl sub_8047456
    beq loc_80473DA
loc_80473B8:
    // memBlock
    ldr r0, off_8047470 // =byte_2019A00 
    mov r1, #0x40 
    // size
    add r1, #0x40 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r0, off_8047474 // =byte_2011C10 
    mov r1, #0
    strh r1, [r0,#0x12] // (word_2011C22 - 0x2011c10)
    mov r0, #1
    strh r0, [r5,#0xe]
    mov r0, #1
    b loc_80473DC
loc_80473D0:
    mov r0, r8
    mov r1, r9
    bl sub_8006F1E
    bne loc_80473B8
loc_80473DA:
    mov r0, #0
loc_80473DC:
    tst r0, r0
    pop {r2,r3}
    mov r8, r2
    mov r9, r3
    pop {r0,r1,r4-r7,pc}
.endfunc // sub_8047384

.func
.thumb_func
sub_80473E6:
    push {r4-r7,lr}
    ldr r7, [r5,#0x1c]
    ldr r0, [r7]
    cmp r0, #2
    beq loc_8047436
    mov r3, #0
    ldr r4, [r7,#0xc]
    ldr r6, off_8047470 // =byte_2019A00 
loc_80473F6:
    ldrb r0, [r6]
    tst r0, r0
    beq loc_8047418
    ldr r7, [r5,#0x1c]
    ldr r7, [r7,#8]
    ldr r0, off_8047478 // =byte_8047DA0 
    add r7, r7, r0
    ldrh r0, [r6,#2]
    ldrh r1, [r7,#2]
    bl sub_804743C
    bne loc_8047422
    ldrb r0, [r6,#4]
    ldrb r1, [r7,#4]
    bl sub_8047456
    bne loc_8047422
loc_8047418:
    add r6, #8
    add r3, #1
    cmp r3, r4
    blt loc_80473F6
    b loc_8047436
loc_8047422:
    // memBlock
    ldr r0, off_8047470 // =byte_2019A00 
    mov r1, #0x40 
    // size
    add r1, #0x40 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r0, off_8047474 // =byte_2011C10 
    mov r1, #0
    strh r1, [r0,#0x12] // (word_2011C22 - 0x2011c10)
    mov r0, #1
    b loc_8047438
loc_8047436:
    mov r0, #0
loc_8047438:
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_80473E6

.func
.thumb_func
sub_804743C:
    push {r3-r7,lr}
    mov r6, #0
    mov r3, #0
loc_8047442:
    ldrh r1, [r7,#2]
    cmp r0, r1
    beq loc_8047452
    add r7, #8
    add r3, #1
    cmp r3, r4
    blt loc_8047442
    mov r6, #1
loc_8047452:
    tst r6, r6
    pop {r3-r7,pc}
.endfunc // sub_804743C

.func
.thumb_func
sub_8047456:
    push {r3-r7,lr}
    mov r6, #0
    mov r3, #0
loc_804745C:
    ldrb r1, [r7,#4]
    cmp r0, r1
    beq loc_804746C
    add r7, #8
    add r3, #1
    cmp r3, r4
    blt loc_804745C
    mov r6, #1
loc_804746C:
    tst r6, r6
    pop {r3-r7,pc}
off_8047470:    .word byte_2019A00
off_8047474:    .word byte_2011C10
off_8047478:    .word byte_8047DA0
.endfunc // sub_8047456

.func
.thumb_func
copyData_804747C:
    push {r5,lr}
    bl sub_800183C
    bl sub_8046664 // () -> void
    // initRefs
    ldr r0, off_8047490 // =off_8047494 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    pop {r5,pc}
    .byte 0, 0
off_8047490:    .word off_8047494
off_8047494:    .word unk_87F0340
    .word word_3001960
    .word 0x20
    .word comp_87F006C + 1<<31
    .word 0x6000020
    .word byte_2016A00
    .word comp_87F0218 + 1<<31
    .word 0x0
    .word byte_2017200
    .word unk_87F05A4
    .word unk_3001980
    .word 0xC0
    .word comp_87F0360 + 1<<31
    .word 0x6000800
    .word unk_2018200
    .word comp_87F04D4 + 1<<31
    .word 0x0
    .word unk_2018A00
    .word comp_87F0534 + 1<<31
    .word 0x0
    .word unk_2019200
    .word comp_87F056C + 1<<31
    .word 0x0
    .word unk_2019400
    .word unk_86A48C0
    .word 0x6010040
    .word 0x180
    .word unk_86A4CC0
    .word 0x60101C0
    .word 0x80
    .word comp_86C7980 + 1<<31
    .word 0x0
    .word unk_2037A00
    .word comp_86C73D8 + 1<<31
    .word 0x0
    .word unk_2035A00
    .word comp_87F0664 + 1<<31
    .word 0x0
    .word unk_202FA00
    .word comp_87F0834 + 1<<31
    .word 0x0
    .word unk_2030200
    .word comp_87F0C00 + 1<<31
    .word 0x0
    .word unk_2031200
    .word 0x0
.endfunc // copyData_804747C

.func
.thumb_func
sub_804754C:
    push {r5,lr}
    ldr r0, off_8047578 // =byte_2017204 
    mov r1, r10
    ldr r1, [r1,#0x28]
    mov r2, #0x80
    lsl r2, r2, #4
    add r1, r1, r2
    ldr r2, dword_804757C // =0x800 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    ldr r0, [r5,#0x24]
    mov r1, #0x10
    ldr r2, off_8047580 // =unk_2015E00 
    ldr r3, dword_8047584 // =0x6002000 
    mov r4, #1
    mov r5, #1
    ldr r6, off_8047588 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_804754C

    pop {r5,pc}
    .balign 4, 0x00
off_8047578:    .word byte_2017204
dword_804757C:    .word 0x800
off_8047580:    .word unk_2015E00
dword_8047584:    .word 0x6002000
off_8047588:    .word dword_86A5D60
.func
.thumb_func
sub_804758C:
    push {r5,lr}
    bl sub_80478D4
.endfunc // sub_804758C

    pop {r5,pc}
.func
.thumb_func
sub_8047594:
    push {r5,r6,lr}
    add r7, r1, #0
    mov r1, #8
    mul r1, r0
    add r7, r7, r1
    mov r0, #0
loc_80475A0:
    ldrb r3, [r7]
    cmp r3, #1
    bne loc_80475BA
    ldrh r1, [r7,#2]
    bl sub_804760E
    ldrh r1, [r7,#6]
    ldrb r2, [r7,#1]
    ldrh r3, [r7,#2]
    ldrb r4, [r7,#5]
    bl sub_8047790
    b loc_8047604
loc_80475BA:
    cmp r3, #2
    bne loc_80475DE
    ldrh r1, [r7,#2]
    ldrb r2, [r7,#4]
    ldrb r3, [r7,#1]
    ldrb r4, [r7,#5]
    mov r6, #0
    bl sub_8047CFA
    bl sub_8047664
    ldrh r1, [r7,#6]
    ldrb r2, [r7,#1]
    ldrh r3, [r7,#2]
    ldrb r4, [r7,#5]
    bl sub_8047790
    b loc_8047604
loc_80475DE:
    cmp r3, #3
    bne loc_8047600
    ldrh r1, [r7,#2]
    ldrb r2, [r7,#4]
    ldrb r4, [r7,#5]
    mov r6, #1
    bl sub_8047CFA
    bl sub_8047708
    ldrh r1, [r7,#6]
    ldrb r2, [r7,#1]
    ldrh r3, [r7,#2]
    ldrb r4, [r7,#5]
    bl sub_8047790
    b loc_8047604
loc_8047600:
    bl sub_8047760
.endfunc // sub_8047594

loc_8047604:
    add r7, #8
    add r0, #1
    cmp r0, #5
    blt loc_80475A0
    pop {r5,r6,pc}
.func
.thumb_func
sub_804760E:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    push {r4,r5}
    ldr r0, off_804764C // =byte_873D9FC 
    ldr r2, off_8047650 // =decomp_2013A00 
    ldr r3, dword_8047654 // =0x6008400 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #8
    mov r5, #1
    ldr r6, off_8047660 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_804760E

    pop {r4,r5}
    ldr r0, [r5,#0x24]
    mov r1, #0x10
    ldr r2, off_8047658 // =unk_2013C00 
    ldr r3, dword_804765C // =0x6008600 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #1
    mov r5, #1
    ldr r6, off_8047660 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r0,r5,r7,pc}
    .balign 4, 0x00
off_804764C:    .word byte_873D9FC
off_8047650:    .word decomp_2013A00
dword_8047654:    .word 0x6008400
off_8047658:    .word unk_2013C00
dword_804765C:    .word 0x6008600
off_8047660:    .word dword_86A5D60
.func
.thumb_func
sub_8047664:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    push {r1-r4,r7}
    ldr r0, off_80476E0 // =off_80476E4 
    ldr r2, off_80476EC // =decomp_2013A00 
    ldr r3, dword_80476F0 // =0x6008400 
    add r2, r2, r4
    add r3, r3, r4
    lsr r4, r1, #8
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r4, #8
    mov r5, #1
    ldr r6, off_8047700 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r1-r4,r7}
    tst r3, r3
    bne loc_8047698
    mov r3, #0x1b
    b loc_80476C4
loc_8047698:
    add r3, r2, #0
    ldr r6, [r5,#0x1c] // (dword_1C+1 - 1)
    ldr r6, [r6]
    cmp r6, #2
    bne loc_80476C4
    push {r1-r3}
    ldr r2, dword_8047704 // =0x1E20 
    add r1, r1, r2
    add r0, r1, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r1-r3}
    bne loc_80476C4
    push {r1-r3}
    ldr r2, dword_80477FC // =0x2420 
    add r1, r1, r2
    add r0, r1, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r1-r3}
    bne loc_80476C4
    mov r3, #0x1b
loc_80476C4:
    ldr r0, off_80476F4 // =byte_86EF71C 
    add r1, r3, #0
    ldr r2, off_80476F8 // =unk_2013C00 
    ldr r3, dword_80476FC // =0x6008600 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #1
    mov r5, #1
    ldr r6, off_8047700 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r0,r5,r7,pc}
    .byte 0, 0
off_80476E0:    .word off_80476E4
off_80476E4:    .word byte_86EA94C
    .word byte_86EB354
off_80476EC:    .word decomp_2013A00
dword_80476F0:    .word 0x6008400
off_80476F4:    .word byte_86EF71C
off_80476F8:    .word unk_2013C00
dword_80476FC:    .word 0x6008600
off_8047700:    .word dword_86A5D60
dword_8047704:    .word 0x1E20
.endfunc // sub_8047664

.func
.thumb_func
sub_8047708:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    push {r4,r5}
    ldr r0, off_8047748 // =byte_873EA50 
    lsr r1, r1, #2
    ldr r2, off_804774C // =decomp_2013A00 
    ldr r3, dword_8047750 // =0x6008400 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #8
    mov r5, #1
    ldr r6, off_804775C // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_8047708

    pop {r4,r5}
    ldr r0, [r5,#0x24]
    mov r1, #0x10
    ldr r2, off_8047754 // =unk_2013C00 
    ldr r3, dword_8047758 // =0x6008600 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #1
    mov r5, #1
    ldr r6, off_804775C // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r0,r5,r7,pc}
    .balign 4, 0x00
off_8047748:    .word byte_873EA50
off_804774C:    .word decomp_2013A00
dword_8047750:    .word 0x6008400
off_8047754:    .word unk_2013C00
dword_8047758:    .word 0x6008600
off_804775C:    .word dword_86A5D60
.func
.thumb_func
sub_8047760:
    push {r0,r5,r7,lr}
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    ldr r0, [r5,#0x24]
    mov r1, #0x10
    ldr r2, off_8047784 // =decomp_2013A00 
    ldr r3, dword_8047788 // =0x6008400 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #0x10
    mov r5, #1
    ldr r6, off_804778C // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_8047760

    pop {r0,r5,r7,pc}
    .balign 4, 0x00
off_8047784:    .word decomp_2013A00
dword_8047788:    .word 0x6008400
off_804778C:    .word dword_86A5D60
.func
.thumb_func
sub_8047790:
    push {r0,r5,r7,lr}
    lsl r7, r4, #3
    push {r2}
    bl sub_8047CDC
    mov r4, #0x40 
    lsl r4, r4, #4
    mul r4, r0
    mov r0, r10
    ldr r0, [r0,#0x38]
    str r1, [r0,#8]
    ldr r0, [r5,#0x24]
    mov r1, #0xf
    ldr r6, [r5,#0x1c]
    ldr r6, [r6]
    cmp r6, #1
    bne loc_80477B4
    mov r1, #0xd
loc_80477B4:
    cmp r6, #2
    bne loc_80477D2
    tst r7, r7
    beq loc_80477D2
    push {r0,r1}
    ldr r2, dword_80477FC // =0x2420 
    add r3, r3, r2
    add r0, r3, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r0,r1}
    bne loc_80477D2
    mov r1, #0x10
    pop {r2}
    b loc_80477DA
loc_80477D2:
    pop {r2}
    tst r2, r2
    bne loc_80477DA
    mov r1, #0x11
loc_80477DA:
    ldr r2, off_80477F4 // =unk_2013C40 
    ldr r3, dword_80477F8 // =0x6008640 
    add r2, r2, r4
    add r3, r3, r4
    mov r4, #7
    mov r5, #1
    ldr r6, off_80477F0 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_8047790

    pop {r0,r5,r7,pc}
off_80477F0:    .word dword_86A5D60
off_80477F4:    .word unk_2013C40
dword_80477F8:    .word 0x6008640
dword_80477FC:    .word 0x2420
.func
.thumb_func
sub_8047800:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrb r0, [r7,#8]
    // j
    sub r0, #0x15
    // i
    mov r1, #0
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804782C // =unk_2018A04 
    mov r4, #0x15
    mov r5, #0xc
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8047800

    ldrb r0, [r7,#8]
    sub r0, #0x15
    add r0, #2
    mov r1, #1
    mov r2, #0
    ldr r3, off_8047830 // =unk_202F800 
    mov r4, #0x12
    mov r5, #0xa
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
off_804782C:    .word unk_2018A04
off_8047830:    .word unk_202F800
.func
.thumb_func
sub_8047834:
    push {r4-r7,lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq locret_80478A0
    ldr r7, off_80478B0 // =byte_2019A00 
    ldrh r0, [r5,#0x14]
    ldrh r1, [r5,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldrb r3, [r7]
    cmp r3, #2
    bne loc_804787A
    bl sub_80478B8
    // a1
    ldr r0, off_80478A4 // =unk_8046B74 
    bl sub_80465A0 // (void *a1) -> void
    ldrh r0, [r7,#2]
    ldrb r1, [r7,#4]
    mov r2, #0
    mov r3, #0
    bl sub_811980C
    mov r0, #0x78 
    mov r1, #0x50 
    mov r2, #0
    bl sub_8119854
    ldr r0, off_80478A8 // =unk_202BA04 
    mov r1, #0x7f
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    b locret_80478A0
loc_804787A:
    cmp r3, #1
    bne loc_804788C
    ldr r0, off_80478A8 // =unk_202BA04 
    ldrh r1, [r7,#2]
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    bl sub_80478B8
    b locret_80478A0
loc_804788C:
    ldr r0, off_80478AC // =unk_202DA04 
    ldrh r1, [r7,#2]
    lsr r1, r1, #2
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    bl sub_80478B8
    // a1
    ldr r0, off_80478B4 // =unk_8046B84 
    bl sub_80465A0 // (void *a1) -> void
locret_80478A0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80478A4:    .word unk_8046B74
off_80478A8:    .word unk_202BA04
off_80478AC:    .word unk_202DA04
off_80478B0:    .word byte_2019A00
off_80478B4:    .word unk_8046B84
.endfunc // sub_8047834

.func
.thumb_func
sub_80478B8:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8046696
    mov r0, #1
    bl sub_8046696
    mov r0, #2
    bl sub_8046696
    mov r0, #3
    bl sub_8046696
    pop {r4-r7,pc}
.endfunc // sub_80478B8

.func
.thumb_func
sub_80478D4:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrb r0, [r7,#8]
    sub r0, #0xc
    mov r1, #0x1e
    // j
    sub r0, r1, r0
    // i
    mov r1, #0
    // cpyOff
    mov r2, #2
    ldr r3, off_8047938 // =unk_2019404 
    ldr r4, [r7,#0x1c]
    ldr r4, [r4]
    cmp r4, #1
    beq loc_80478F0
    // tileRefs
    ldr r3, off_804793C // =unk_2019204 
loc_80478F0:
    mov r4, #9
    mov r5, #5
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_80478D4

    ldrb r0, [r7,#8]
    sub r0, #0xd
    mov r1, #0x1e
    sub r0, r1, r0
    mov r1, #2
    mov r2, #0
    ldr r3, off_8047940 // =unk_8046B58 
    mov r4, #7
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    mov r1, #0xe
    ldr r2, [r7,#0x1c]
    ldr r2, [r2]
    cmp r2, #1
    bne loc_804791A
    mov r1, #0xd
loc_804791A:
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldr r0, [r7,#0x28]
    str r0, [r2,#8]
    ldr r0, [r7,#0x24]
    ldr r2, off_8047944 // =unk_2015A00 
    ldr r3, dword_8047948 // =0x600A400 
    mov r4, #7
    mov r5, #1
    ldr r6, off_804794C // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8047938:    .word unk_2019404
off_804793C:    .word unk_2019204
off_8047940:    .word unk_8046B58
off_8047944:    .word unk_2015A00
dword_8047948:    .word 0x600A400
off_804794C:    .word dword_86A5D60
.func
.thumb_func
sub_8047950:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    ldrh r0, [r5,#0x14]
    strh r0, [r5,#0x16]
    ldr r4, [r5,#0x1c]
    ldr r4, [r4]
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_8047976
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_8047988
    bl sub_8047A80
    b loc_8047A64
loc_8047976:
    ldrh r1, [r5,#0x12]
    cmp r1, #0
    beq loc_8047A64
    cmp r4, #2
    beq loc_80479AC
    mov r1, #0x10
    lsl r1, r1, #4
    tst r1, r0
    beq loc_80479AC
loc_8047988:
    mov r0, #0x66 
    bl sound_play // () -> void
    ldrb r0, [r5,#5]
    mov r1, #0xff
    eor r0, r1
    strb r0, [r5,#5]
    tst r0, r0
    bne loc_80479A6
    ldr r0, [r5,#0x24]
    mov r1, #1
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    bl sub_80478B8
loc_80479A6:
    mov r0, #0xff
    strb r0, [r5,#0xd]
    b loc_8047A64
loc_80479AC:
    ldrh r1, [r5,#0x12]
    cmp r1, #0
    beq loc_8047A64
    mov r1, #1
    tst r1, r0
    beq loc_80479C4
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_8047988
    bl sub_8047A96
    b loc_8047A64
loc_80479C4:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r7, [r7,#4]
    mov r0, #0x40 
    tst r0, r7
    beq loc_80479EA
    ldrh r0, [r5,#0x14]
    sub r0, #1
    strh r0, [r5,#0x14]
    bge loc_8047A64
    mov r0, #0
    strh r0, [r5,#0x14]
    ldrh r0, [r5,#0x18]
    sub r0, #1
    strh r0, [r5,#0x18]
    bge loc_8047A64
    mov r0, #0
    strh r0, [r5,#0x18]
    b loc_8047A64
loc_80479EA:
    ldrh r0, [r5,#0x12]
    mov r1, #5
    cmp r0, r1
    ble loc_8047A0C
    cmp r4, #2
    bne loc_8047A0C
    mov r0, #0x20 
    lsl r0, r0, #4
    tst r0, r7
    beq loc_8047A0C
    ldrh r0, [r5,#0x18]
    sub r0, #5
    strh r0, [r5,#0x18]
    bge loc_8047A64
    mov r0, #0
    strh r0, [r5,#0x18]
    b loc_8047A64
loc_8047A0C:
    mov r0, #0x80
    tst r0, r7
    beq loc_8047A3E
    ldrh r0, [r5,#0x14]
    add r0, #1
    strh r0, [r5,#0x14]
    ldrh r1, [r5,#0x12]
    mov r2, #5
    cmp r1, r2
    ble loc_8047A22
    add r1, r2, #0
loc_8047A22:
    cmp r0, r1
    blt loc_8047A64
    sub r0, r1, #1
    strh r0, [r5,#0x14]
    ldrh r1, [r5,#0x18]
    add r1, #1
    strh r1, [r5,#0x18]
    ldrh r2, [r5,#0x12]
    sub r2, r2, r0
    cmp r1, r2
    blt loc_8047A64
    sub r2, #1
    strh r2, [r5,#0x18]
    b loc_8047A64
loc_8047A3E:
    ldrh r0, [r5,#0x12]
    mov r1, #5
    cmp r0, r1
    ble loc_8047A64
    cmp r4, #2
    bne loc_8047A64
    mov r0, #0x10
    lsl r0, r0, #4
    tst r0, r7
    beq loc_8047A64
    ldrh r1, [r5,#0x18]
    add r1, #5
    strh r1, [r5,#0x18]
    ldrh r2, [r5,#0x12]
    sub r2, #5
    cmp r1, r2
    blt loc_8047A64
    strh r2, [r5,#0x18]
    b loc_8047A64
loc_8047A64:
    ldrh r0, [r5,#0x14]
    ldrh r1, [r5,#0x16]
    cmp r0, r1
    bne loc_8047A74
    ldrh r0, [r5,#0x18]
    ldrh r1, [r5,#0x1a]
    cmp r0, r1
    beq locret_8047A7E
loc_8047A74:
    mov r0, #0x66 
    bl sound_play // () -> void
    mov r0, #0xff
    strb r0, [r5,#0xd]
locret_8047A7E:
    pop {r4-r7,pc}
.endfunc // sub_8047950

.func
.thumb_func
sub_8047A80:
    push {lr}
    mov r0, #0x14
    strb r0, [r5]
    ldr r0, [r5,#0x24]
    mov r1, #2
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    mov r0, #0x68 
    bl sound_play // () -> void
    pop {pc}
.endfunc // sub_8047A80

.func
.thumb_func
sub_8047A96:
    push {r4-r7,lr}
    ldr r7, off_8047B7C // =byte_2019A00 
    ldrh r0, [r5,#0x14]
    ldrh r1, [r5,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    str r7, [r5,#0x20]
    ldrh r4, [r7,#2]
    ldrb r2, [r7]
    cmp r2, #3
    bne loc_8047AB2
    add r4, #0x90
loc_8047AB2:
    ldrh r1, [r7,#6]
    bl sub_8047CDC
    ldrb r2, [r7,#4]
    push {r0-r7}
    add r3, r1, #0
    add r0, r4, #0
    add r1, r2, #0
    add r2, r3, #0
    bl chatbox_8045EFC
    pop {r0-r7}
    ldr r2, [r5,#0x1c]
    ldr r2, [r2]
    cmp r2, #2
    beq loc_8047AF8
    ldrb r0, [r7]
    ldrh r1, [r7,#2]
    bl sub_8047CA0
    bne loc_8047B72
    mov r1, #5
    ldrb r2, [r7]
    cmp r2, #2
    beq loc_8047AEC
    mov r1, #4
    cmp r2, #1
    beq loc_8047AEC
    mov r1, #0xb
loc_8047AEC:
    add r7, r1, #0
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
    b loc_8047B62
loc_8047AF8:
    ldrb r6, [r7,#1]
    mov r7, #5
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
    ldr r2, dword_8047B80 // =0x1E20 
    add r2, r2, r4
    add r0, r2, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    beq loc_8047B1C
loc_8047B10:
    tst r6, r6
    bne loc_8047B62
    mov r7, #0x1c
    mov r0, #0x1c
    strb r0, [r5]
    b loc_8047B68
loc_8047B1C:
    ldr r2, dword_8047B84 // =0x2420 
    add r2, r2, r4
    add r0, r2, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_8047B10
    mov r7, #0x18
    mov r0, #0x1b
    strb r0, [r5,#6]
    add r0, r4, #0
    bl sub_8048F68
    beq loc_8047B3C
    mov r7, #0x1a
    mov r0, #0x1b
    strb r0, [r5,#6]
loc_8047B3C:
    mov r0, #0x24 
    strb r0, [r5]
    mov r0, #0x18
    strb r0, [r5,#1]
    tst r6, r6
    bne loc_8047B62
    mov r7, #0x19
    mov r0, #0x1c
    strb r0, [r5,#6]
    mov r0, #0x1c
    strb r0, [r5,#1]
    add r0, r4, #0
    bl sub_8048F68
    beq loc_8047B68
    mov r7, #0x1a
    mov r0, #0x1d
    strb r0, [r5,#6]
    b loc_8047B68
loc_8047B62:
    mov r0, #0x67 
    bl sound_play // () -> void
loc_8047B68:
    ldr r0, [r5,#0x24]
    add r1, r7, #0
    bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
    pop {r4-r7,pc}
loc_8047B72:
    mov r0, #0x69 
    bl sound_play // () -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8047B7C:    .word byte_2019A00
dword_8047B80:    .word 0x1E20
dword_8047B84:    .word 0x2420
.endfunc // sub_8047A96

.func
.thumb_func
sub_8047B88:
    push {r4-r7,lr}
    add r4, r0, #0
    // memBlock
    ldr r0, off_8047C98 // =byte_2019A00 
    mov r1, #0x40 
    // size
    add r1, #0x40 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r7, [r5,#0x1c]
    ldr r0, [r7]
    cmp r0, #2
    beq loc_8047C3A
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r6, r10
    ldr r6, [r6,#0x54]
    add r7, r7, r6
    ldr r6, off_8047C98 // =byte_2019A00 
    sub r6, #8
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r4, #0
loc_8047BB4:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8047C1A
    ldrb r0, [r7,#1]
    tst r0, r0
    beq loc_8047C1A
    ldrb r0, [r7]
    cmp r0, r1
    bne loc_8047BD4
    ldrh r0, [r7,#2]
    cmp r0, r2
    bne loc_8047BD4
    ldrb r0, [r7,#4]
    cmp r0, r3
    bne loc_8047BD4
    b loc_8047C1A
loc_8047BD4:
    push {r0-r3}
    ldrb r0, [r7]
    ldrh r1, [r7,#2]
    bl sub_8047CB0
    pop {r0-r3}
    bne loc_8047C1A
    push {r0-r3}
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    pop {r0-r3}
    beq loc_8047BFA
    ldrb r0, [r7]
    cmp r0, #1
    bne loc_8047BFA
    ldrh r0, [r7,#2]
    cmp r0, #0x70 
    beq loc_8047C1A
loc_8047BFA:
    add r6, #8
    ldrb r0, [r7]
    strb r0, [r6]
    ldrb r0, [r7,#1]
    strb r0, [r6,#1]
    ldrh r0, [r7,#2]
    strh r0, [r6,#2]
    ldrb r0, [r7,#4]
    strb r0, [r6,#4]
    ldrb r0, [r7,#5]
    strb r0, [r6,#5]
    ldrh r0, [r7,#6]
    strh r0, [r6,#6]
    ldrb r1, [r6]
    ldrh r2, [r6,#2]
    ldrb r3, [r6,#4]
loc_8047C1A:
    add r7, #8
    add r4, #1
    cmp r4, r5
    blt loc_8047BB4
    ldr r7, off_8047C98 // =byte_2019A00 
    mov r0, #0
    mov r1, #0
loc_8047C28:
    ldrb r4, [r7,#1]
    tst r4, r4
    beq loc_8047C30
    add r0, #1
loc_8047C30:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_8047C28
    pop {r4-r7,pc}
loc_8047C3A:
    add r3, r4, #0
    ldr r5, [r7,#0xc]
    ldr r7, off_8047C9C // =byte_201AE00 
    ldr r6, off_8047C98 // =byte_2019A00 
    sub r6, #8
    mov r4, #0
loc_8047C46:
    ldrh r0, [r7,#2]
    bl sub_8047CA8
    bne loc_8047C76
    add r6, #8
    ldrb r0, [r7]
    strb r0, [r6]
    ldrh r1, [r7,#2]
    strh r1, [r6,#2]
    ldrb r0, [r7,#4]
    strb r0, [r6,#4]
    ldrb r0, [r7,#5]
    strb r0, [r6,#5]
    ldrh r0, [r7,#6]
    strh r0, [r6,#6]
    ldrb r0, [r7,#1]
    strb r0, [r6,#1]
    cmp r1, r3
    bne loc_8047C76
    cmp r0, #0xff
    beq loc_8047C76
    sub r0, #1
    strb r0, [r7,#1]
    strb r0, [r6,#1]
loc_8047C76:
    add r7, #8
    add r4, #1
    cmp r4, r5
    blt loc_8047C46
    ldr r7, off_8047C98 // =byte_2019A00 
    mov r0, #0
    mov r1, #0
loc_8047C84:
    ldrh r4, [r7,#2]
    tst r4, r4
    beq loc_8047C8C
    add r0, #1
loc_8047C8C:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_8047C84
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8047C98:    .word byte_2019A00
off_8047C9C:    .word byte_201AE00
.endfunc // sub_8047B88

.func
.thumb_func
sub_8047CA0:
    push {r2-r7,lr}
    mov r0, #0
    tst r0, r0
    pop {r2-r7,pc}
.endfunc // sub_8047CA0

.func
.thumb_func
sub_8047CA8:
    push {r1-r7,lr}
    mov r0, #0
    tst r0, r0
    pop {r1-r7,pc}
.endfunc // sub_8047CA8

.func
.thumb_func
sub_8047CB0:
    push {lr}
    mov r0, #0
    pop {pc}
.endfunc // sub_8047CB0

.func
.thumb_func
sub_8047CB6:
    push {lr}
    ldrh r0, [r5,#0x12]
    cmp r0, #4
    ble loc_8047CCC
    ldrh r1, [r5,#0x18]
    add r1, #5
    cmp r0, r1
    bge locret_8047CDA
    sub r0, #5
    strh r0, [r5,#0x18]
    b locret_8047CDA
loc_8047CCC:
    tst r0, r0
    beq locret_8047CDA
    sub r0, #1
    ldrh r1, [r5,#0x14]
    cmp r0, r1
    bgt locret_8047CDA
    strh r0, [r5,#0x14]
locret_8047CDA:
    pop {pc}
.endfunc // sub_8047CB6

.func
.thumb_func
sub_8047CDC:
    push {r0,r2-r7,lr}
    ldr r6, [r5,#0x1c]
    ldr r6, [r6]
    cmp r6, #1
    beq locret_8047CEA
    mov r2, #0x64 
    mul r1, r2
locret_8047CEA:
    pop {r0,r2-r7,pc}
.endfunc // sub_8047CDC

.func
.thumb_func
sub_8047CEC:
    push {lr}
    ldr r0, off_8047D74 // =unk_80469F0 
    ldr r1, off_8047D6C // =unk_202F800 
    ldr r2, off_8047D70 // =0x168 
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
    pop {pc}
.endfunc // sub_8047CEC

.func
.thumb_func
sub_8047CFA:
    push {r0-r7,lr}
    lsl r5, r4, #0xd
    tst r6, r6
    beq loc_8047D16
    add r6, r0, #0
    add r0, r1, #0
    add r0, #0x90
    add r1, r2, #0
    bl sub_803D138
    tst r0, r0
    bne locret_8047D68
    add r0, r6, #0
    b loc_8047D26
loc_8047D16:
    add r6, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    bl sub_8021BC0
    tst r0, r0
    bne locret_8047D68
    add r0, r6, #0
loc_8047D26:
    ldr r7, off_8047D6C // =unk_202F800 
    ldr r2, dword_8047D78 // =0x3000 
    mov r1, #1
    and r1, r0
    beq loc_8047D32
    ldr r2, dword_8047D7C // =0x4000 
loc_8047D32:
    mov r1, #0x48 
    mul r0, r1
    add r7, r7, r0
    mov r3, #0
    mov r0, #0
loc_8047D3C:
    ldrh r4, [r7,r3]
    ldr r1, dword_8047D80 // =0xFFF 
    and r4, r1
    orr r4, r2
    add r4, r4, r5
    strh r4, [r7,r3]
    add r3, #2
    add r0, #1
    cmp r0, #0xa
    blt loc_8047D3C
    mov r3, #0x24 
    mov r0, #0
loc_8047D54:
    ldrh r4, [r7,r3]
    ldr r1, dword_8047D80 // =0xFFF 
    and r4, r1
    orr r4, r2
    add r4, r4, r5
    strh r4, [r7,r3]
    add r3, #2
    add r0, #1
    cmp r0, #0xa
    blt loc_8047D54
locret_8047D68:
    pop {r0-r7,pc}
    .balign 4, 0x00
off_8047D6C:    .word unk_202F800
off_8047D70:    .word 0x168
off_8047D74:    .word unk_80469F0
dword_8047D78:    .word 0x3000
dword_8047D7C:    .word 0x4000
dword_8047D80:    .word 0xFFF
.endfunc // sub_8047CFA

.func
.thumb_func
sub_8047D84:
    push {r4-r7,lr}
    ldr r5, off_8047D9C // =byte_2011C10 
    ldr r4, off_8047D98 // =byte_2019A00 
    ldrh r0, [r5,#0x14] // (word_2011C24 - 0x2011c10)
    ldrh r1, [r5,#0x18] // (word_2011C28 - 0x2011c10)
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r0, r0, r4
    pop {r4-r7,pc}
off_8047D98:    .word byte_2019A00
off_8047D9C:    .word byte_2011C10
byte_8047DA0:    .byte 0x1
byte_8047DA1:    .byte 0x1
word_8047DA2:    .hword 0x70
byte_8047DA4:    .byte 0xFF
    .byte 0x0
word_8047DA6:    .hword 0xA
    .word 0x700101, 0x1400FF, 0x700101, 0x2800FF, 0x700101, 0x5000FF
    .word 0x9FF02, 0x6000B, 0x9BFF02, 0xA001A, 0xCFF02, 0x180011
    .word 0x13FF02, 0x2E000B, 0x700101, 0x1900FF, 0x700101, 0x3200FF
    .word 0x700101, 0x4B00FF, 0x700101, 0x6400FF, 0x4FFF02, 0x2A0016
    .word 0x9DFF02, 0x1E000A, 0xB3FF02, 0x260007, 0x90FF02, 0x580007
    .word 0x81FF01, 0xA00FF, 0x84FF01, 0x4600FF, 0x82FF01, 0x500FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x700101, 0x3000FF, 0x700101, 0x5400FF, 0x80303, 0x2E0005
    .word 0x100303, 0x1E0006, 0x2C0103, 0x260003, 0x380103, 0x420006
    .word 0x8C0103, 0x140003, 0xAC0103, 0x2A0002, 0xFFF02, 0xA0002
    .word 0x32FF02, 0x26000D, 0x33FF02, 0x320006, 0x4BFF02, 0x3E000C
    .word 0x17FF02, 0x46000F, 0xCAFF02, 0x5A0015, 0xAE0002, 0x4E001A
    .word 0x8A0002, 0x7E000D, 0x700101, 0x2800FF, 0x700101, 0x4B00FF
    .word 0x700101, 0x6400FF, 0x700101, 0x8200FF, 0x75FF02, 0x320001
    .word 0x50FF02, 0x480005, 0x8DFF02, 0x580005, 0xADFF02, 0x78000C
    .word 0xB5FF02, 0x180010, 0x91FF02, 0x240012, 0x46FF02, 0x30000F
    .word 0xA5FF02, 0x410010, 0x53FF02, 0x50000D, 0x136FF02, 0x640015
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x400103, 0x140001, 0x40103, 0x230004, 0x240103, 0x300006
    .word 0x540103, 0x3E0003, 0xB40103, 0x4C0002, 0x180103, 0x640004
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x81FF01, 0xA00FF, 0x85FF01, 0x2800FF, 0x83FF01, 0x800FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x700101, 0x6400FF, 0x700101, 0xA000FF, 0x700101, 0xE600FF
    .word 0x700101, 0x12C00FF, 0x76FF02, 0x640016, 0x35FF02, 0x920015
    .word 0xC7FF02, 0xB80013, 0x134FF02, 0x12C0003, 0x81FF01, 0xA00FF
    .word 0x84FF01, 0x4600FF, 0x83FF01, 0x800FF, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0
    .word 0x81FF01, 0xA00FF, 0x85FF01, 0x2800FF, 0x82FF01, 0x500FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x81FF01, 0xA00FF, 0x84FF01, 0x4600FF, 0x82FF01, 0x500FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x84FF01, 0x4600FF, 0x82FF01, 0x500FF, 0x83FF01, 0x800FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x81FF01, 0xA00FF, 0x84FF01, 0x4600FF, 0x83FF01, 0x800FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x80FF01, 0x100FF, 0x85FF01, 0x2800FF, 0x84FF01, 0x4600FF
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xACFF02, 0x3A001A, 0xBDFF02, 0x450000, 0x43FF02, 0x500006
    .word 0xBAFF02, 0x5C000B, 0xC5FF02, 0x6A0012, 0xB9FF02, 0x78000B
    .word 0x0, 0x0, 0x0, 0x0
    .word 0xB4FF02, 0x70000A, 0x11FF02, 0x78000D, 0x80FF02, 0x810013
    .word 0xA9FF02, 0x980019, 0xC9FF02, 0x98000B, 0xB6FF02, 0xE00014
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x10102, 0x140000, 0x20102, 0x3C000B, 0x30102, 0x780011
    .word 0x40102, 0x18001A, 0x50102, 0x1C0003, 0x60102, 0x410005
    .word 0x70102, 0x6E0000, 0x80102, 0xB40015, 0x90102, 0x1E000C
    .word 0xA0102, 0x460001, 0xB0102, 0x820011, 0xC0102, 0x2D0000
    .word 0xD0102, 0x5A000B, 0xE0102, 0x870001, 0xF0102, 0x320013
    .word 0x100102, 0x640011, 0x110102, 0x96000D, 0x130102, 0x50000C
    .word 0x140102, 0x280007, 0x150102, 0x500014, 0x160102, 0x8C0004
    .word 0x170102, 0x640010, 0x180102, 0x340000, 0x190102, 0x620006
    .word 0x1A0102, 0x91000C, 0x1B0102, 0x2D0013, 0x1C0102, 0x590015
    .word 0x1D0102, 0x850012, 0x1E0102, 0x300011, 0x1F0102, 0x3C0004
    .word 0x200102, 0x64000B, 0x210102, 0x8C0011, 0x220102, 0x500009
    .word 0x230102, 0x820004, 0x240102, 0xB40000, 0x250102, 0x480012
    .word 0x260102, 0x720011, 0x270102, 0x9C0000, 0x280102, 0x3A0008
    .word 0x290102, 0x660004, 0x2A0102, 0x9C0005, 0x2B0102, 0x240013
    .word 0x2C0102, 0x4A0012, 0x2D0102, 0x7A000C, 0x2E0102, 0x640011
    .word 0x2F0102, 0x88000B, 0x300102, 0xAC000F, 0x310102, 0xDC0013
    .word 0x320102, 0x5A000B, 0x330102, 0x5A0006, 0x340102, 0x460011
    .word 0x350102, 0xA00012, 0x360102, 0x1C0001, 0x370102, 0x380002
    .word 0x380102, 0x710006, 0x390102, 0x4D0010, 0x3A0102, 0x7B0011
    .word 0x3B0102, 0x9C0012, 0x3C0102, 0x870005, 0x3D0102, 0x31000F
    .word 0x3E0102, 0x58000A, 0x3F0102, 0x7F0000, 0x400102, 0x350009
    .word 0x410102, 0x5F0002, 0x420102, 0x94000F, 0x430102, 0x640015
    .word 0x440102, 0x410012, 0x450102, 0x500011, 0x460102, 0xA0000F
    .word 0x470102, 0x250012, 0x480102, 0x4D0012, 0x490102, 0x5A0012
    .word 0x4A0102, 0xAA0001, 0x4B0102, 0xAA0001, 0x4C0102, 0x64000E
    .word 0x4D0102, 0x780008, 0x4E0102, 0x8C000A, 0x4F0102, 0x820012
    .word 0x500102, 0x960005, 0x510102, 0xAC000F, 0x520102, 0xBC000A
    .word 0x530102, 0x104000D, 0x540102, 0x780000, 0x550102, 0xDC000C
    .word 0x560102, 0x63000B, 0x570102, 0x7F000C, 0x580102, 0x9B0011
    .word 0x590102, 0x220000, 0x5A0102, 0x500011, 0x5B0102, 0x6A0015
    .word 0x5C0102, 0x450006, 0x5D0102, 0x6A000D, 0x5E0102, 0x900013
    .word 0x5F0102, 0x460002, 0x600102, 0x6E0004, 0x610102, 0x960006
    .word 0x620102, 0x3F0005, 0x630102, 0x5D0004, 0x640102, 0x8C0006
    .word 0x650102, 0x50000B, 0x660102, 0x780018, 0x670102, 0xA00012
    .word 0x680102, 0x48000A, 0x690102, 0x670013, 0x6A0102, 0x900014
    .word 0x6B0102, 0x320004, 0x6C0102, 0x5F0012, 0x6D0102, 0x8C0001
    .word 0x6E0102, 0x500007, 0x6F0102, 0x7D0003, 0x700102, 0xAA0004
    .word 0x710102, 0x640016, 0x720102, 0x960018, 0x730102, 0xC80010
    .word 0x740102, 0x36000A, 0x750102, 0x63000B, 0x760102, 0x980016
    .word 0x770102, 0x6E0000, 0x780102, 0x3B000A, 0x790102, 0x59000F
    .word 0x7A0102, 0x8B000C, 0x7B0102, 0x340009, 0x7C0102, 0x500002
    .word 0x7D0102, 0x86000B, 0x7E0102, 0x460011, 0x7F0102, 0x720013
    .word 0x800102, 0xA20013, 0x810102, 0x28001A, 0x820102, 0x28001A
    .word 0x830102, 0x230000, 0x840102, 0x460001, 0x850102, 0x730004
    .word 0x860102, 0x5F0007, 0x870102, 0x5C0008, 0x880102, 0x91000E
    .word 0x890102, 0xC60018, 0x8A0102, 0xF0000D, 0x8B0102, 0xFE0011
    .word 0x8C0102, 0x1160009, 0x8D0102, 0x75000B, 0x8E0102, 0x7D0013
    .word 0x8F0102, 0x32001A, 0x900102, 0x420006, 0x910102, 0x780012
    .word 0x920102, 0x410019, 0x930102, 0x550012, 0x940102, 0x690013
    .word 0x950102, 0x7D0016, 0x960102, 0x8E001A, 0x970102, 0xBE000E
    .word 0x980102, 0x110000F, 0x9A0102, 0x1E0000, 0x9B0102, 0x320004
    .word 0x9C0102, 0x460002, 0x9D0102, 0x640007, 0x9E0102, 0x82000F
    .word 0x9F0102, 0xA0000C, 0xA00102, 0xBE0019, 0xA10102, 0xDC0009
    .word 0xA20102, 0x28001A, 0xA30102, 0x500012, 0xA40102, 0x550012
    .word 0xA50102, 0x870019, 0xA60102, 0x32001A, 0xA70102, 0x930000
    .word 0xA80102, 0x4C0000, 0xA90102, 0xBE0019, 0xAA0102, 0x4F001A
    .word 0xAB0102, 0x4F001A, 0xAC0102, 0x8E0001, 0xAD0102, 0xBD000C
    .word 0xAE0102, 0xD2001A, 0xAF0102, 0x48001A, 0xB00102, 0x94000A
    .word 0xB10102, 0x49001A, 0xB20102, 0x1E0011, 0xB30102, 0x5A0018
    .word 0xB40102, 0x8C0016, 0xB50102, 0x960010, 0xB60102, 0x1180014
    .word 0xB70102, 0x3E001A, 0xB80102, 0x64001A, 0xB90102, 0x8B0011
    .word 0xBA0102, 0x63001A, 0xBB0102, 0x550015, 0xBC0102, 0x5A0011
    .word 0xBD0102, 0x5D0005, 0xBE0102, 0x2D001A, 0xBF0102, 0x40001A
    .word 0xC00102, 0x2A001A, 0xC10102, 0x57001A, 0xC20102, 0x46001A
    .word 0xC30102, 0xAC001A, 0xC40102, 0xC2001A, 0xC50102, 0x9B0014
    .word 0xC60102, 0x870011, 0xC70102, 0xC80013, 0xC80102, 0x820003
    .word 0xC90102, 0xBE000B, 0xCA0102, 0x780015, 0xDD0102, 0x640011
    .word 0xDE0102, 0xA00011, 0xDF0102, 0xDC0011, 0xE00102, 0xA00001
    .word 0xE10102, 0xDC0001, 0xE20102, 0x1180001, 0xE30102, 0x820007
    .word 0xE40102, 0xB40007, 0xE50102, 0xE60007, 0xE60102, 0x820004
    .word 0xE70102, 0xB40004, 0xE80102, 0xE60004, 0xE90102, 0x820012
    .word 0xEA0102, 0xB40012, 0xEB0102, 0xE60012, 0xEC0102, 0x82000A
    .word 0xED0102, 0xB4000A, 0xEE0102, 0xE6000A, 0xEF0102, 0x820002
    .word 0xF00102, 0xB40002, 0xF10102, 0xE60002, 0xF20102, 0x820000
    .word 0xF30102, 0xB40000, 0xF40102, 0xE60000, 0xF50102, 0x820013
    .word 0xF60102, 0xB40013, 0xF70102, 0xE60013, 0xF80102, 0x820013
    .word 0xF90102, 0xB40013, 0xFA0102, 0xE60013, 0xFB0102, 0x820006
    .word 0xFC0102, 0xB40006, 0xFD0102, 0xE60006, 0xFE0102, 0x820003
    .word 0xFF0102, 0xB40003, 0x1000102, 0xE60003, 0x1010102, 0x640001
    .word 0x1020102, 0x960001, 0x1030102, 0xC80001, 0x1040102, 0x640003
    .word 0x1050102, 0x960003, 0x1060102, 0xC80003, 0x1070102, 0x640002
    .word 0x1080102, 0x960002, 0x1090102, 0xC80002, 0x10A0102, 0x640009
    .word 0x10B0102, 0x960009, 0x10C0102, 0xC80009, 0x10D0102, 0x640004
    .word 0x10E0102, 0x960004, 0x10F0102, 0xC80004, 0x1100102, 0x640002
    .word 0x1110102, 0x960002, 0x1120102, 0xC80002, 0x0, 0x0
    .word 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
word_8048BE0:    .hword 0x0
    .balign 4, 0x00
dword_8048BE4:    .word 0xAEFF02, 0x4E001A, 0x8AFF02, 0x7E000D, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.endfunc // sub_8047D84

.func
.thumb_func
sub_8048C24:
    push {r4-r7,lr}
    ldr r2, off_8048F98 // =unk_8046B98 
    mov r1, #0x10
    mul r0, r1
    add r2, r2, r0
    ldr r4, [r2,#0xc]
    ldr r2, [r2,#8]
    mov r0, r10
    ldr r0, [r0,#0x54]
    add r2, r2, r0
    mov r0, #0
loc_8048C3A:
    ldrb r3, [r2,#1]
    tst r3, r3
    beq loc_8048C5C
    push {r0-r3}
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    pop {r0-r3}
    beq loc_8048C58
    ldrb r1, [r2]
    cmp r1, #1
    bne loc_8048C58
    ldrh r1, [r2,#2]
    cmp r1, #0x70 
    beq loc_8048C5C
loc_8048C58:
    mov r0, #1
    pop {r4-r7,pc}
loc_8048C5C:
    add r2, #8
    add r0, #1
    cmp r0, r4
    blt loc_8048C3A
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8048C24

.func
.thumb_func
sub_8048C68:
    push {lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x54]
    // size
    ldr r1, dword_8048CC8 // =0xE80 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r0, off_8048CC4 // =byte_8047DA0 
    mov r1, r10
    ldr r1, [r1,#0x54]
    ldr r2, dword_8048CC8 // =0xE80 
loc_8048C7C:
    sub r2, #8
    blt locret_8048C96
    ldrb r3, [r0,#1]
    tst r3, r3
    beq loc_8048C90
    push {r0-r3}
    mov r2, #8
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    pop {r0-r3}
loc_8048C90:
    add r0, #8
    add r1, #8
    b loc_8048C7C
locret_8048C96:
    pop {pc}
.endfunc // sub_8048C68

.func
.thumb_func
sub_8048C98:
    push {lr}
    ldr r0, off_8048CC4 // =byte_8047DA0 
    mov r1, r10
    ldr r1, [r1,#0x54]
    ldr r2, dword_8048CC8 // =0xE80 
loc_8048CA2:
    sub r2, #8
    blt locret_8048CC2
    ldrb r3, [r0,#1]
    tst r3, r3
    beq loc_8048CBC
    ldrb r3, [r0]
    strb r3, [r1]
    ldrh r3, [r0,#2]
    strh r3, [r1,#2]
    ldrb r3, [r0,#4]
    strb r3, [r1,#4]
    ldrh r3, [r0,#6]
    strh r3, [r1,#6]
loc_8048CBC:
    add r0, #8
    add r1, #8
    b loc_8048CA2
locret_8048CC2:
    pop {pc}
off_8048CC4:    .word byte_8047DA0
dword_8048CC8:    .word 0xE80
.endfunc // sub_8048C98

.func
.thumb_func
sub_8048CCC:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    add r6, r1, #0
    ldr r7, off_8048F98 // =unk_8046B98 
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r0, r10
    ldr r0, [r0,#0x54]
    add r7, r7, r0
    mov r8, r7
    mov r0, #0
loc_8048CEE:
    ldrb r3, [r6]
    tst r3, r3
    beq loc_8048D4E
    mov r1, #0
    mov r7, r8
loc_8048CF8:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_8048D24
    ldrb r3, [r6]
    cmp r3, r4
    bne loc_8048D24
    ldrh r3, [r6,#2]
    ldrh r4, [r7,#2]
    cmp r3, r4
    bne loc_8048D24
    ldrb r3, [r6,#4]
    ldrb r4, [r7,#4]
    cmp r3, r4
    bne loc_8048D24
    ldrb r3, [r6,#1]
    ldrb r4, [r7,#1]
    add r4, r4, r3
    cmp r4, #0xff
    ble loc_8048D20
    mov r4, #0xff
loc_8048D20:
    strb r4, [r7,#1]
    b loc_8048D4E
loc_8048D24:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_8048CF8
    mov r1, #0
    mov r7, r8
loc_8048D30:
    ldrb r4, [r7]
    tst r4, r4
    bne loc_8048D46
    push {r0,r1,r6,r7}
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #8
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    pop {r0,r1,r6,r7}
    b loc_8048D4E
loc_8048D46:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_8048D30
loc_8048D4E:
    add r6, #8
    add r0, #1
    cmp r0, r5
    blt loc_8048CEE
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
.endfunc // sub_8048CCC

.func
.thumb_func
sub_8048D60:
    push {r4-r7,lr}
    add r6, r1, #0
    ldr r7, off_8048F98 // =unk_8046B98 
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r7, r7, r1
    mov r1, #0
loc_8048D78:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_8048D92
    ldrh r4, [r7,#2]
    cmp r6, r4
    bne loc_8048D92
    ldrb r4, [r7,#1]
    add r4, #1
    cmp r4, #0xff
    ble loc_8048D8E
    mov r4, #0xff
loc_8048D8E:
    strb r4, [r7,#1]
    b locret_8048D9A
loc_8048D92:
    add r7, #8
    add r1, #1
    cmp r1, r5
    blt loc_8048D78
locret_8048D9A:
    pop {r4-r7,pc}
.endfunc // sub_8048D60

    ldr r2, off_8048F98 // =unk_8046B98 
    mov r1, #0x10
    mul r0, r1
    add r2, r2, r0
    ldr r0, [r2,#8]
    mov r1, r10
    ldr r1, [r1,#0x54]
    add r0, r0, r1
    mov pc, lr
.func
.thumb_func
sub_8048DAE:
    push {r4-r7,lr}
    ldr r7, off_8048F98 // =unk_8046B98 
    mov r6, #0x10
    mul r0, r6
    add r7, r7, r0
    ldr r5, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r6, r10
    ldr r6, [r6,#0x54]
    add r7, r7, r6
    mov r6, #0
loc_8048DC4:
    ldrb r4, [r7]
    tst r4, r4
    beq loc_8048DEC
    cmp r4, r1
    bne loc_8048DEC
    ldrh r4, [r7,#2]
    cmp r4, r2
    bne loc_8048DEC
    ldrb r4, [r7,#4]
    cmp r4, r3
    bne loc_8048DEC
    ldrb r4, [r7,#1]
    cmp r4, #0
    ble loc_8048DEC
    cmp r4, #0xff
    beq loc_8048DE8
    sub r4, #1
    strb r4, [r7,#1]
loc_8048DE8:
    mov r0, #1
    pop {r4-r7,pc}
loc_8048DEC:
    add r7, #8
    add r6, #1
    cmp r6, r5
    blt loc_8048DC4
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8048DAE

.func
.thumb_func
sub_8048DF8:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r7, off_8048F98 // =unk_8046B98 
    mov r6, #0x10
    mul r0, r6
    add r7, r7, r0
    ldr r0, [r7]
    ldr r4, [r7,#0xc]
    ldr r7, [r7,#8]
    mov r3, r10
    ldr r3, [r3,#0x54]
    add r7, r7, r3
    cmp r0, #2
    beq loc_8048E24
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
loc_8048E24:
    add r5, r1, #0
    add r6, r2, #0
    mov r1, #8
    mul r4, r1
    lsl r4, r4, #1
    // memBlock
    add r0, r5, #0
    // size
    add r1, r4, #0
    add r2, r0, r1
    mov r8, r2
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    // memBlock
    add r0, r6, #0
    // size
    add r1, r4, #0
    add r2, r0, r1
    mov r9, r2
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
loc_8048E46:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_8048EC0
    add r4, r6, #0
    ldr r3, off_8048F64 // =0x140 
    ldrh r0, [r7,#2]
    ldr r1, dword_8048F58 // =0x1E20 
    add r0, r0, r1
    push {r3}
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r3}
    bne loc_8048E8A
    mov r3, #0
    ldrh r0, [r7,#2]
    ldr r1, dword_8048F5C // =0x2020 
    add r0, r0, r1
    push {r3}
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r3}
    bne loc_8048E8A
    ldrh r0, [r7,#2]
    ldr r1, dword_8048F60 // =0x2220 
    add r0, r0, r1
    push {r3}
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r3}
    bne loc_8048E8A
    add r4, r5, #0
loc_8048E8A:
    mov r12, r3
    // idx
    ldrh r0, [r7,#2]
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrh r0, [r0,#0x1c]
    add r0, r12
    mov r1, #8
    mul r0, r1
    add r0, r0, r4
    ldrb r1, [r7]
    strb r1, [r0]
    ldrb r1, [r7,#1]
    strb r1, [r0,#1]
    ldrh r1, [r7,#2]
    strh r1, [r0,#2]
    ldrb r1, [r7,#4]
    strb r1, [r0,#4]
    mov r1, #0
    mov r3, r12
    tst r3, r3
    bne loc_8048EB6
    mov r1, #1
loc_8048EB6:
    strb r1, [r0,#5]
    ldrh r1, [r7,#6]
    strh r1, [r0,#6]
    add r7, #8
    b loc_8048E46
loc_8048EC0:
    add r2, r5, #0
loc_8048EC2:
    ldrb r0, [r5]
    tst r0, r0
    bne loc_8048F00
    add r4, r5, #0
    add r4, #8
loc_8048ECC:
    ldrb r1, [r4]
    tst r1, r1
    beq loc_8048EF8
    strb r1, [r5]
    ldrb r1, [r4,#1]
    strb r1, [r5,#1]
    ldrh r1, [r4,#2]
    strh r1, [r5,#2]
    ldrb r1, [r4,#4]
    strb r1, [r5,#4]
    ldrb r1, [r4,#5]
    strb r1, [r5,#5]
    ldrh r1, [r4,#6]
    strh r1, [r5,#6]
    mov r1, #0
    strb r1, [r4]
    strb r1, [r4,#1]
    strh r1, [r4,#2]
    strb r1, [r4,#4]
    strb r1, [r4,#5]
    strh r1, [r4,#6]
    b loc_8048F00
loc_8048EF8:
    add r4, #8
    cmp r4, r8
    blt loc_8048ECC
    b loc_8048F06
loc_8048F00:
    add r5, #8
    cmp r5, r8
    blt loc_8048EC2
loc_8048F06:
    add r3, r6, #0
loc_8048F08:
    ldrb r0, [r6]
    tst r0, r0
    bne loc_8048F46
    add r4, r6, #0
    add r4, #8
loc_8048F12:
    ldrb r1, [r4]
    tst r1, r1
    beq loc_8048F3E
    strb r1, [r6]
    ldrb r1, [r4,#1]
    strb r1, [r6,#1]
    ldrh r1, [r4,#2]
    strh r1, [r6,#2]
    ldrb r1, [r4,#4]
    strb r1, [r6,#4]
    ldrb r1, [r4,#5]
    strb r1, [r6,#5]
    ldrh r1, [r4,#6]
    strh r1, [r6,#6]
    mov r1, #0
    strb r1, [r4]
    strb r1, [r4,#1]
    strh r1, [r4,#2]
    strb r1, [r4,#4]
    strb r1, [r4,#5]
    strh r1, [r4,#6]
    b loc_8048F46
loc_8048F3E:
    add r4, #8
    cmp r4, r9
    blt loc_8048F12
    b loc_8048F4C
loc_8048F46:
    add r6, #8
    cmp r6, r9
    blt loc_8048F08
loc_8048F4C:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8048F58:    .word 0x1E20
dword_8048F5C:    .word 0x2020
dword_8048F60:    .word 0x2220
off_8048F64:    .word 0x140
.endfunc // sub_8048DF8

.func
.thumb_func
sub_8048F68:
    push {r0-r2,lr}
    ldr r1, off_8048F84 // =word_8048BE0 
loc_8048F6C:
    ldrh r2, [r1]
    tst r2, r2
    beq loc_8048F7A
    cmp r0, r2
    beq loc_8048F7E
    add r1, #2
    b loc_8048F6C
loc_8048F7A:
    mov r0, #0
    pop {r0-r2,pc}
loc_8048F7E:
    mov r0, #1
    pop {r0-r2,pc}
    .balign 4, 0x00
off_8048F84:    .word word_8048BE0
.endfunc // sub_8048F68

.func
.thumb_func
sub_8048F88:
    push {r4-r7,lr}
    mov r0, #4
    ldr r1, off_8048F94 // =dword_8048BE4 
    bl sub_8048CCC
    pop {r4-r7,pc}
off_8048F94:    .word dword_8048BE4
off_8048F98:    .word unk_8046B98
.endfunc // sub_8048F88

.func
.thumb_func
sub_8048F9C:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r5, off_8049008 // =byte_200A290 
    // memBlock
    add r0, r5, #0
    // size
    ldr r1, off_8048FC0 // =0x1B0 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0x30 
    strb r0, [r1]
    strh r4, [r5,#0x22] // (word_200A2B2 - 0x200a290)
    mov r0, #8
    strh r0, [r5,#0x24] // (word_200A2B4 - 0x200a290)
    mov r0, #0xa
    strh r0, [r5,#0x26] // (word_200A2B6 - 0x200a290)
    pop {r4-r7,pc}
    .byte 0, 0
off_8048FC0:    .word 0x1B0
.endfunc // sub_8048F9C

.func
.thumb_func
sub_8048FC4:
    push {r4-r7,lr}
    ldr r5, off_8049008 // =byte_200A290 
    ldrb r0, [r5]
    ldrb r1, [r5,#0x1] // (byte_200A291 - 0x200a290)
    pop {r4-r7,pc}
    .byte 0, 0
    .word 0x1B0
.endfunc // sub_8048FC4

.func
.thumb_func
cb_8048FD4:
    push {r4-r7,lr}
    ldr r5, off_8049008 // =byte_200A290 
    ldr r0, off_8048FF4 // =off_8048FF8 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800A7D0 // () -> (zf, int)
    bne locret_8048FF0
    mov r0, #0xda
    mov r1, #2
    bl sub_803C59C
locret_8048FF0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8048FF4:    .word off_8048FF8
off_8048FF8:    .word sub_804900C+1
    .word sub_8049058+1
    .word sub_8049080+1
    .word sub_804971C+1
off_8049008:    .word byte_200A290
.endfunc // cb_8048FD4

.func
.thumb_func
sub_804900C:
    push {r4-r7,lr}
    bl chatbox_8040818
    ldr r0, off_8049054 // =0x40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x11
    bl sub_80015FC
    bl sub_8005F40
    bl sub_803BEC0
    bl sub_8049CBC
    bl sub_8049D42
    beq loc_804903E
    ldrh r0, [r5,#0x22]
    tst r0, r0
    beq loc_8049048
loc_804903E:
    mov r0, #0xc
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    b locret_8049050
loc_8049048:
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
locret_8049050:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049054:    .word 0x40
.endfunc // sub_804900C

.func
.thumb_func
sub_8049058:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq locret_804907A
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    bl chatbox_8040818
    ldr r0, off_804907C // =0x40 
    bl sub_8001778
    bl sub_811F758
locret_804907A:
    pop {r4-r7,pc}
off_804907C:    .word 0x40
.endfunc // sub_8049058

.func
.thumb_func
sub_8049080:
    push {r4-r7,lr}
    ldr r0, off_8049094 // =off_8049098 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_803CB78
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049094:    .word off_8049098
off_8049098:    .word sub_8049104+1
    .word sub_8049158+1
    .word sub_8049164+1
    .word sub_804918A+1
    .word sub_80491C4+1
    .word sub_80491E6+1
    .word sub_80491FC+1
    .word sub_804921E+1
    .word sub_8049272+1
    .word sub_8049290+1
    .word sub_8049360+1
    .word sub_80493BC+1
    .word sub_80493FE+1
    .word sub_8049416+1
    .word sub_804946E+1
    .word sub_80494DE+1
    .word sub_804952C+1
    .word sub_80494CA+1
    .word sub_80494D6+1
    .word sub_8049582+1
    .word sub_804959C+1
    .word sub_80495B4+1
    .word sub_80495CE+1
    .word sub_80495EC+1
    .word sub_8049606+1
    .word sub_804961C+1
    .word sub_8049636+1
.endfunc // sub_8049080

.func
.thumb_func
sub_8049104:
    push {r4-r7,lr}
    ldr r0, dword_8049154 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x12
    bl sub_80015FC
    bl sub_8046664 // () -> void
    bl copyData_8049AAC
    bl chatbox_8040818
    mov r0, #2
    bl sub_803BE30
    bl sub_8049D70
    mov r0, #0xf0
    mov r1, #0x30 
    mov r2, #0x80
    lsl r2, r2, #1
    mov r3, #0x90
    add r0, r0, r5
    add r1, r1, r5
    add r2, r2, r5
    add r3, r3, r5
    bl sub_803C1A8
    bl sub_803C320
    bl sub_803C26A
    mov r0, #4
    strb r0, [r5,#1]
    pop {r4-r7,pc}
dword_8049154:    .word 0x1F40
.endfunc // sub_8049104

.func
.thumb_func
sub_8049158:
    push {r4-r7,lr}
    mov r0, #8
    strb r0, [r5,#1]
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8049158

.func
.thumb_func
sub_8049164:
    push {r4-r7,lr}
    bl sub_813D648
    beq loc_8049180
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_8049184
loc_8049180:
    mov r0, #0xc
    strb r0, [r5,#1]
loc_8049184:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8049164

.func
.thumb_func
sub_804918A:
    push {r4-r7,lr}
    bl sub_8146588
    add r0, r5, #0
    add r0, #0xf0
    bl sub_814695C
    bl sub_8049D7C
    add r1, r0, #0
    mov r0, #0x80
    lsl r0, r0, #1
    add r0, r0, r5
    bl sub_81469BC
    bl sub_8132664
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0xa
    bl sub_803BB2C
    mov r0, #0x18
    strb r0, [r5,#1]
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_804918A

.func
.thumb_func
sub_80491C4:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_80491E0
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_80491E0
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x14
    strb r0, [r5,#1]
loc_80491E0:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_80491C4

.func
.thumb_func
sub_80491E6:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_80491F6
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_80491F6:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_80491E6

.func
.thumb_func
sub_80491FC:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8049218
    bl sub_803C320
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0x1e
    bl sub_803BB7C
    mov r0, #0
    bl sub_803BB90
loc_8049218:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_80491FC

.func
.thumb_func
sub_804921E:
    push {r4-r7,lr}
    bl sub_803BB80
    beq loc_804926C
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #2
    tst r0, r1
    beq loc_8049244
    bl sub_803CAF8
    mov r1, #8
    tst r0, r1
    bne loc_804926C
    mov r0, #0x83
    bl sub_803C28A
    b loc_804926C
loc_8049244:
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_804926C
    bl sub_803BB94
    beq loc_804926C
    bl sub_803C558
    mov r0, #0x1e
    bl sub_803BB90
    bl sub_813D638
    beq loc_804926C
    mov r0, #0xb
    bl sub_803BB2C
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_804926C:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_804921E

.func
.thumb_func
sub_8049272:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_804928A
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #0x24 
    strb r0, [r5,#1]
loc_804928A:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8049272

.func
.thumb_func
sub_8049290:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_803CB00
    mov r0, #2
    bl sub_803CB18
    bne loc_80492D4
    bl sub_813D638
    bne loc_80492C2
    bl sub_803C320
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0x1e
    bl sub_803BB7C
    mov r0, #0
    bl sub_803BB90
    mov r0, #0xe
    bl sub_803BB2C
    b loc_80492D4
loc_80492C2:
    mov r0, #0x7f
    bl sub_803A5F4
    beq loc_80492D4
    ldr r1, off_80492E0 // =dword_80492E4 
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_80492D4:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
    .byte 0, 0
off_80492E0:    .word dword_80492E4
dword_80492E4:    .word 0x0
    .word sub_80492F4+1
    .word sub_804930C+1
    .word sub_804930C+1
.endfunc // sub_8049290

.func
.thumb_func
sub_80492F4:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_803CB18
    bne loc_8049308
    mov r0, #0x83
    bl sub_803C28A
    mov r0, #0x5c 
    strb r0, [r5,#1]
loc_8049308:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_80492F4

.func
.thumb_func
sub_804930C:
    push {r4-r7,lr}
    bl sub_813D638
    add r2, r0, #0
    ldrb r0, [r5,#0xe]
    ldrb r1, [r5,#0xb]
    add r0, r0, r1
    cmp r0, r2
    bge loc_804934C
    bl sub_803C440
    add r2, r1, #0
    push {r0,r1}
    ldr r1, off_8049358 // =unk_202AB00 
    ldr r3, off_804935C // =unk_202AF00 
    bl sub_803C150
    pop {r2,r3}
    ldr r0, off_8049358 // =unk_202AB00 
    ldr r1, off_804935C // =unk_202AF00 
    bl sub_803C2AA
    mov r0, #0xc
    bl sub_803BB2C
    mov r0, #0x28 
    strb r0, [r5,#1]
    mov r0, #0x81
    bl sound_play // () -> void
    mov r0, #1
    pop {r4-r7,pc}
loc_804934C:
    mov r0, #0x69 
    bl sound_play // () -> void
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049358:    .word unk_202AB00
off_804935C:    .word unk_202AF00
.endfunc // sub_804930C

.func
.thumb_func
sub_8049360:
    push {r4-r7,lr}
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_80493B2
    bl chatbox_8045F4C
    cmp r0, #0
    bne loc_80493A6
    bl sub_813D638
    add r2, r0, #0
    ldrb r0, [r5,#0xe]
    ldrb r1, [r5,#0xb]
    add r0, r0, r1
    cmp r0, r2
    bge loc_80493A6
    push {r0}
    bl sub_813D5C8
    pop {r0}
    strb r0, [r5,#0x16]
    mov r0, #4
    bl sub_803CB00
    mov r0, #0x10
    lsl r0, r0, #4
    bl sub_803CB00
    mov r0, #0xd
    bl sub_803BB2C
    mov r0, #0x2c 
    strb r0, [r5,#1]
    b loc_80493B2
loc_80493A6:
    mov r0, #0xb
    bl sub_803BB2C
    mov r0, #0x30 
    strb r0, [r5,#1]
    b loc_80493B2
loc_80493B2:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_8049360

.func
.thumb_func
sub_80493BC:
    push {r4-r7,lr}
    mov r0, #0x40 
    bl sub_803CB18
    bne loc_80493F4
    mov r0, #8
    bl sub_803CB18
    bne loc_80493EE
    bl sub_803C330
    beq loc_80493E0
    bl sub_803C2A0
    mov r0, #0x20 
    bl sub_803CB00
    b loc_80493EE
loc_80493E0:
    mov r0, #0x10
    bl sub_803CB18
    beq loc_80493F4
    mov r0, #0x44 
    strb r0, [r5,#1]
    b loc_80493F4
loc_80493EE:
    mov r0, #0x3c 
    strb r0, [r5,#1]
    b loc_80493F4
loc_80493F4:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_80493BC

.func
.thumb_func
sub_80493FE:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_804940C
    mov r0, #0x24 
    strb r0, [r5,#1]
loc_804940C:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_80493FE

.func
.thumb_func
sub_8049416:
    push {r4-r7,lr}
    bl sub_8049680
    beq loc_8049432
    bl sub_814656C
    tst r0, r0
    bne loc_8049464
    mov r0, #0xf
    bl sub_803BB2C
    mov r0, #0x38 
    strb r0, [r5,#1]
    b loc_8049464
loc_8049432:
    mov r0, #8
    bl sub_803CB18
    bne loc_804944A
    bl sub_803C330
    beq loc_8049450
    bl sub_803C2A0
    mov r0, #0x20 
    bl sub_803CB00
loc_804944A:
    mov r0, #0x3c 
    strb r0, [r5,#1]
    b loc_8049464
loc_8049450:
    mov r0, #0x10
    bl sub_803CB18
    beq loc_8049464
    bl sub_8132648
    bl sub_8148D24
    mov r0, #0x44 
    strb r0, [r5,#1]
loc_8049464:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_8049416

.func
.thumb_func
sub_804946E:
    push {r4-r7,lr}
    bl sub_80496B4
    beq loc_80494C0
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_80494C0
    bl sub_8146588
    add r0, r5, #0
    add r0, #0xf0
    bl sub_814695C
    bl sub_8049D7C
    add r1, r0, #0
    mov r0, #0x80
    lsl r0, r0, #1
    add r0, r0, r5
    bl sub_81469BC
    bl sub_8132664
    bl sub_81465BC
    tst r0, r0
    bne loc_80494B6
    bl sub_803C320
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_80494C0
loc_80494B6:
    mov r0, #0xa
    bl sub_803BB2C
    mov r0, #0x18
    strb r0, [r5,#1]
loc_80494C0:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_804946E

.func
.thumb_func
sub_80494CA:
    push {r4-r7,lr}
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_80494CA

.func
.thumb_func
sub_80494D6:
    push {r4-r7,lr}
    bl sub_81291D8
    pop {r4-r7,pc}
.endfunc // sub_80494D6

.func
.thumb_func
sub_80494DE:
    push {r4-r7,lr}
    mov r0, #0x10
    bl sub_803CB18
    bne loc_8049516
    bl sub_813D60C
    bne loc_8049522
    mov r0, #0x83
    bl sound_play // () -> void
    mov r4, #0xf
    mov r0, #0x80
    bl sub_803CB18
    bne loc_804950A
    mov r4, #0x10
    mov r0, #0x20 
    bl sub_803CB18
    bne loc_804950A
    mov r4, #0x11
loc_804950A:
    add r0, r4, #0
    bl sub_803BB2C
    mov r0, #0x40 
    strb r0, [r5,#1]
    b loc_8049522
loc_8049516:
    mov r0, #0x10
    lsl r0, r0, #4
    bl sub_803CB0C
    mov r0, #0x44 
    strb r0, [r5,#1]
loc_8049522:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_80494DE

.func
.thumb_func
sub_804952C:
    push {r4-r7,lr}
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8049578
    bl sub_8146588
    add r0, r5, #0
    add r0, #0xf0
    bl sub_814695C
    bl sub_8049D7C
    add r1, r0, #0
    mov r0, #0x80
    lsl r0, r0, #1
    add r0, r0, r5
    bl sub_81469BC
    bl sub_8132664
    bl sub_81465BC
    tst r0, r0
    bne loc_804956E
    bl sub_803C320
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_8049578
loc_804956E:
    mov r0, #0xa
    bl sub_803BB2C
    mov r0, #0x18
    strb r0, [r5,#1]
loc_8049578:
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_804952C

.func
.thumb_func
sub_8049582:
    push {r4-r7,lr}
    bl sub_8049704
    beq loc_8049596
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x50 
    strb r0, [r5,#1]
loc_8049596:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8049582

.func
.thumb_func
sub_804959C:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_80495AE
    bl sub_8001850
    bl sub_803CCC0
    pop {r4-r7,pc}
loc_80495AE:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_804959C

.func
.thumb_func
sub_80495B4:
    push {r4-r7,lr}
    bl sub_80496B4
    beq loc_80495C8
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x58 
    strb r0, [r5,#1]
loc_80495C8:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_80495B4

.func
.thumb_func
sub_80495CE:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_80495E2
    bl sub_8001850
    ldr r0, off_80495E8 // =sub_8039570+1 
    bl sub_803CB8C
    pop {r4-r7,pc}
loc_80495E2:
    bl sub_803A1B0
    pop {r4-r7,pc}
off_80495E8:    .word sub_8039570+1
.endfunc // sub_80495CE

.func
.thumb_func
sub_80495EC:
    push {r4-r7,lr}
    bl sub_80496B4
    beq loc_8049600
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x60 
    strb r0, [r5,#1]
loc_8049600:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_80495EC

.func
.thumb_func
sub_8049606:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8049616
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_8049616:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8049606

.func
.thumb_func
sub_804961C:
    push {r4-r7,lr}
    bl sub_80496B4
    beq loc_8049630
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x68 
    strb r0, [r5,#1]
loc_8049630:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_804961C

.func
.thumb_func
sub_8049636:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8049646
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_8049646:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8049636

    push {r4-r7,lr}
    bl sub_803C620
    add r4, r0, #0
    tst r1, r1
    bne loc_804966E
    tst r0, r0
    beq loc_804966E
    bl sub_813D978
    ldr r3, off_8049678 // =unk_804967C 
    ldrb r0, [r3,r4]
    strb r0, [r5,#1]
    bl sub_8147F98
    mov r0, #1
    pop {r4-r7,pc}
loc_804966E:
    bl sub_8147F98
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049678:    .word unk_804967C
unk_804967C:    .byte  0
    .byte 0x4C 
    .byte 0x54 
    .byte  0
.func
.thumb_func
sub_8049680:
    push {r4-r7,lr}
    bl sub_803C620
    add r4, r0, #0
    tst r1, r1
    bne loc_80496AC
    tst r0, r0
    beq loc_80496AC
    bl sub_813D978
    ldr r3, off_80496E8 // =dword_80496EC 
    lsl r4, r4, #3
    add r3, r3, r4
    ldr r0, [r3]
    strb r0, [r5,#1]
    ldr r0, [r3,#4]
    mov lr, pc
    bx r0
    bl sub_8148224
    mov r0, #1
    pop {r4-r7,pc}
loc_80496AC:
    bl sub_8148224
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8049680

.func
.thumb_func
sub_80496B4:
    push {r4-r7,lr}
    bl sub_803C620
    add r4, r0, #0
    tst r1, r1
    bne loc_80496DE
    cmp r0, #1
    beq loc_80496CE
    bl sub_813D60C
    bne loc_80496DE
    mov r0, #1
    pop {r4-r7,pc}
loc_80496CE:
    ldr r3, off_80496E8 // =dword_80496EC 
    lsl r4, r4, #3
    add r3, r3, r4
    ldr r0, [r3]
    strb r0, [r5,#1]
    ldr r0, [r3,#4]
    mov lr, pc
    bx r0
loc_80496DE:
    bl sub_8148224
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80496E8:    .word dword_80496EC
dword_80496EC:    .word 0x0
    .word sub_803C34E+1
    .word 0x4C
    .word sub_813D750+1
    .word 0x54
    .word sub_803C34E+1
.endfunc // sub_80496B4

.func
.thumb_func
sub_8049704:
    push {r4-r7,lr}
    bl sub_803C620
    bl sub_813D60C
    bne loc_8049714
    mov r0, #1
    pop {r4-r7,pc}
loc_8049714:
    bl sub_8148224
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8049704

.func
.thumb_func
sub_804971C:
    push {r4-r7,lr}
    ldr r0, off_804972C // =off_8049730 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804972C:    .word off_8049730
off_8049730:    .word sub_8049770+1
    .word sub_80497D0+1
    .word sub_80497EE+1
    .word sub_8049808+1
    .word sub_8049844+1
    .word sub_804986E+1
    .word sub_8049888+1
    .word sub_80498AA+1
    .word sub_80498D4+1
    .word sub_80498E4+1
    .word sub_80498F8+1
    .word sub_8049934+1
    .word sub_804996A+1
    .word sub_8049984+1
    .word sub_80499AE+1
    .word sub_80499CE+1
.endfunc // sub_804971C

.func
.thumb_func
sub_8049770:
    push {r4-r7,lr}
    ldr r0, dword_80497CC // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x13
    bl sub_80015FC
    bl sub_8046664 // () -> void
    bl copyData_8049A18
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0
    strb r0, [r5,#8]
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x1c]
    strb r0, [r5,#0x1d]
    strb r0, [r5,#0x13]
    bl sub_803BEC0
    bl sub_8049CBC
    bl sub_803A740
    bl sub_803A752
.endfunc // sub_8049770

    bl sub_803A764
    mov r0, #0
    bl sub_803BE30
    mov r0, #1
    bl sub_803BE30
    bl chatbox_8040818
    mov r0, #4
    strb r0, [r5,#1]
    pop {r4-r7,pc}
dword_80497CC:    .word 0x1F40
.func
.thumb_func
sub_80497D0:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_80497E8
    mov r0, #0x14
    bl sub_803BB2C
    mov r0, #0xf
    bl sub_803BB7C
    mov r0, #8
    strb r0, [r5,#1]
loc_80497E8:
    bl sub_803A820
.endfunc // sub_80497D0

    pop {r4-r7,pc}
.func
.thumb_func
sub_80497EE:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8049802
    bl sub_803BB80
    beq loc_8049802
    mov r0, #0xc
    strb r0, [r5,#1]
loc_8049802:
    bl sub_803A820
.endfunc // sub_80497EE

    pop {r4-r7,pc}
.func
.thumb_func
sub_8049808:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803AFC2
    beq loc_804981C
    ldr r1, off_8049828 // =dword_804982C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_804981C:
    bl sub_803A7B8
.endfunc // sub_8049808

    mov r0, #0
    bl sub_803BC7C
    pop {r4-r7,pc}
off_8049828:    .word dword_804982C
dword_804982C:    .word 0x0
    .word sub_803AA24+1
    .word loc_803AA40+1
    .word sub_803ABF4+1
    .word sub_803AB6C+1
    .word sub_803AB94+1
.func
.thumb_func
sub_8049844:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8049868
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_804985C
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_8049868
loc_804985C:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x14
    strb r0, [r5,#1]
loc_8049868:
    bl sub_803A820
.endfunc // sub_8049844

    pop {r4-r7,pc}
.func
.thumb_func
sub_804986E:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8049882
    bl sub_8049CBC
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_8049882:
    bl sub_803A820
.endfunc // sub_804986E

    pop {r4-r7,pc}
.func
.thumb_func
sub_8049888:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_80498A4
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_80498A0
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_80498A4
loc_80498A0:
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_80498A4:
    bl sub_803A820
.endfunc // sub_8049888

    pop {r4-r7,pc}
.func
.thumb_func
sub_80498AA:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_80498CE
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C0BE
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C132
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strb r0, [r5,#1]
loc_80498CE:
    bl sub_803A820
.endfunc // sub_80498AA

    pop {r4-r7,pc}
.func
.thumb_func
sub_80498D4:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#8]
    mov r0, #0x24 
    strb r0, [r5,#1]
    bl sub_803A820
.endfunc // sub_80498D4

    pop {r4-r7,pc}
.func
.thumb_func
sub_80498E4:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_80498F2
    mov r0, #0x28 
    strb r0, [r5,#1]
loc_80498F2:
    bl sub_803A820
.endfunc // sub_80498E4

    pop {r4-r7,pc}
.func
.thumb_func
sub_80498F8:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803AFC2
    beq loc_804990C
    ldr r1, off_8049918 // =dword_804991C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_804990C:
    bl sub_803A7EC
.endfunc // sub_80498F8

    mov r0, #0
    bl sub_803BC7C
    pop {r4-r7,pc}
off_8049918:    .word dword_804991C
dword_804991C:    .word 0x0
    .word sub_803AD04+1
    .word loc_803AD20+1
    .word sub_803AED8+1
    .word sub_803AE50+1
    .word sub_803AE78+1
.func
.thumb_func
sub_8049934:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8049964
    ldrb r0, [r5,#3]
    cmp r0, #1
    beq loc_8049960
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_8049952
    mov r0, #0x28 
    strb r0, [r5,#1]
    b loc_8049964
loc_8049952:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x30 
    strb r0, [r5,#1]
    b loc_8049964
loc_8049960:
    mov r0, #0xc
    strb r0, [r5,#1]
loc_8049964:
    bl sub_803A820
.endfunc // sub_8049934

    pop {r4-r7,pc}
.func
.thumb_func
sub_804996A:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_804997E
    bl sub_8049CBC
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_804997E:
    bl sub_803A820
.endfunc // sub_804996A

    pop {r4-r7,pc}
.func
.thumb_func
sub_8049984:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_80499A8
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_804999C
    mov r0, #0x28 
    strb r0, [r5,#1]
    b loc_80499A8
loc_804999C:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x3c 
    strb r0, [r5,#1]
loc_80499A8:
    bl sub_803A820
.endfunc // sub_8049984

    pop {r4-r7,pc}
.func
.thumb_func
sub_80499AE:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_80499C8
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C0BE
    mov r0, #0x28 
    strb r0, [r5,#1]
loc_80499C8:
    bl sub_803A820
.endfunc // sub_80499AE

    pop {r4-r7,pc}
.func
.thumb_func
sub_80499CE:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8049A0E
    mov r4, #0
    bl sub_8049D42
    beq loc_80499E0
    mov r4, #1
loc_80499E0:
    strb r4, [r5,#4]
    bl sub_8049D70
    bl sub_8049D4A
    bl sub_8049D3A
    bl sub_803F79E
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    ldr r0, off_8049A14 // =0x40 
    bl sub_8001778
    bl chatbox_8040818
    bl sub_811F758
    b locret_8049A12
loc_8049A0E:
    bl sub_803A820
.endfunc // sub_80499CE

locret_8049A12:
    pop {r4-r7,pc}
off_8049A14:    .word 0x40
.func
.thumb_func
copyData_8049A18:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // initRefs
    ldr r0, off_8049A50 // =initRefs_8049A54 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#0x16]
    sub r0, #4
    strh r0, [r3,#0x16]
    ldrh r0, [r3,#0x14]
    sub r0, #2
    strh r0, [r3,#0x14]
    ldrh r0, [r3,#0x1a]
    sub r0, #2
    strh r0, [r3,#0x1a]
    ldrh r0, [r3,#0x18]
    sub r0, #4
    strh r0, [r3,#0x18]
    mov r0, #3
    bl sub_803B91C
    pop {r4-r7,pc}
off_8049A50:    .word initRefs_8049A54
initRefs_8049A54:    .word comp_87E50D4 + 1<<31
    .word 0x6004000
    .word unk_2027A00
    .word comp_87E5550 + 1<<31
    .word 0x0
    .word unk_2028200
    .word comp_87E56A0 + 1<<31
    .word 0x600D600
    .word unk_2027A00
    .word unk_87F25B4
    .word unk_3001980
    .word 0xA0
    .word unk_86A4D40
    .word 0x6010020
    .word 0x240
    .word dword_86A4A40
    .word 0x6010300
    .word 0x100
    .word dword_86A5500
    .word unk_3001550
    .word 0x20
    .word 0x0
.endfunc // copyData_8049A18

.func
.thumb_func
copyData_8049AAC:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // initRefs
    ldr r0, off_8049AD4 // =dword_8049AD8 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    mov r0, #4
    bl sub_803B91C
    mov r0, #5
    bl sub_803B91C
    mov r0, #0
    strb r0, [r5,#0x18]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049AD4:    .word dword_8049AD8
dword_8049AD8:    .word comp_87E57BC + 1<<31
    .word 0x6004000
    .word unk_2027A00
    .word comp_84E0C4C + 1<<31
    .word 0x6000020
    .word unk_2027A00
    .word comp_87E6840 + 1<<31
    .word 0x0
    .word unk_2028200
    .word comp_87E674C + 1<<31
    .word 0x0
    .word unk_2028A00
    .word comp_84E0C4C + 1<<31
    .word 0x0
    .word unk_2029200
    .word comp_84E0C4C + 1<<31
    .word 0x0
    .word unk_2029A00
    .word comp_84E0C4C + 1<<31
    .word 0x0
    .word unk_2029E00
    .word comp_84E0C4C + 1<<31
    .word 0x0
    .word unk_202A200
    .word comp_84E0C4C + 1<<31
    .word 0x0
    .word unk_202A600
    .word dword_87F28DC
    .word unk_30019C0
    .word 0x140
    .word byte_84E0554
    .word unk_3001980
    .word 0x40
    .word unk_86A5180
    .word 0x6010020
    .word 0x180
    .word comp_87E6924 + 1<<31
    .word 0x6010280
    .word unk_2027A00
    .word dword_86A5500
    .word unk_3001550
    .word 0x20
    .word dword_87F28DC
    .word unk_30015D0
    .word 0x120
    .word unk_86C14A0
    .word 0x6016600
    .word 0x400
    .word unk_86C1B20
    .word 0x6016A00
    .word 0x400
    .word comp_86DBD94 + 1<<31
    .word 0x0
    .word unk_202BA00
    .word off_86DC3F8
    .word unk_3001570
    .word 0x20
    .word 0x0
.endfunc // copyData_8049AAC

.func
.thumb_func
sub_8049BC0:
    push {r4-r7,lr}
    mov r4, #0
loc_8049BC4:
    mov r0, #1
    lsl r0, r4
    bl sub_803C316
    beq loc_8049C42
    bl sub_813D638
    cmp r4, r0
    bge loc_8049C42
    add r0, r4, #0
    bl sub_803C440
    add r0, r1, #0
    bl sub_8146738
    mov r6, #0xf
    and r6, r0
    lsr r7, r0, #4
    ldr r0, off_8049C80 // =off_8049C84 
    lsl r1, r6, #2
    ldr r0, [r0,r1]
    ldr r1, off_8049C6C // =off_8049C70 
    lsl r2, r4, #2
    ldr r1, [r1,r2]
    mov r2, #0x20 
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
    ldr r3, off_8049C64 // =dword_8049C68 
    ldrb r3, [r3,r4]
    lsl r3, r3, #0xc
    ldr r2, off_8049C54 // =dword_8049C58 
    ldrb r2, [r2,r6]
    ldr r1, dword_8049C50 // =0xB30 
    add r1, r1, r2
    orr r1, r3
    lsl r2, r4, #5
    ldr r0, dword_8049C4C // =0x40110020 
    add r0, r0, r2
    mov r2, #2
    mov r3, #0
    bl sub_802FE28
    ldr r0, off_8049CB4 // =unk_202BA04 
    lsl r1, r7, #9
    add r0, r0, r1
    ldr r1, dword_8049CB8 // =0x6016E00 
    lsl r2, r4, #9
    add r1, r1, r2
    mov r2, #0x20 
    lsl r2, r2, #4
    bl loc_8000AC8
    mov r0, #0xa6
    mov r1, #0x13
    lsl r2, r4, #5
    add r1, r1, r2
    mov r3, #0x37 
    lsl r3, r3, #4
    lsl r2, r4, #4
    add r3, r3, r2
    mov r2, #1
    bl sub_8132A50
loc_8049C42:
    add r4, #1
    cmp r4, #4
    blt loc_8049BC4
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8049C4C:    .word 0x40110020
dword_8049C50:    .word 0xB30
off_8049C54:    .word dword_8049C58
dword_8049C58:    .word 0xC080400, 0x28241410, 0x1C34302C
off_8049C64:    .word dword_8049C68
dword_8049C68:    .word 0xC0B080F
off_8049C6C:    .word off_8049C70
off_8049C70:    .word unk_3001730
    .word byte_3001650
    .word unk_30016B0
    .word unk_30016D0
off_8049C80:    .word off_8049C84
off_8049C84:    .word byte_86C0B20
    .word byte_86C0B60
    .word byte_86C0BA0
    .word byte_86C0BE0
    .word byte_86C0C20
    .word byte_86C0C60
    .word byte_86C18E0
    .word byte_86C1920
    .word byte_86C1960
    .word byte_86C19A0
    .word byte_86C19E0
    .word byte_86C1A60
off_8049CB4:    .word unk_202BA04
dword_8049CB8:    .word 0x6016E00
.endfunc // sub_8049BC0

.func
.thumb_func
sub_8049CBC:
    push {r4-r7,lr}
    ldr r7, off_8049CF4 // =word_2001800 
    mov r0, #8
    add r0, r0, r7
    add r1, r5, #0
    add r1, #0x30 
    mov r2, #0x20 
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    mov r0, #0x28 
    add r0, r0, r7
    add r1, r5, #0
    add r1, #0x90
    mov r2, #0x20 
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C132
    strb r0, [r5,#0x10]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C132
    strb r0, [r5,#0x11]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049CF4:    .word word_2001800
.endfunc // sub_8049CBC

.func
.thumb_func
sub_8049CF8:
    push {r4-r7,lr}
    ldr r5, off_8049D94 // =word_2001800 
    // memBlock
    add r0, r5, #0
    // size
    mov r1, #0x48 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    add r0, r5, #0
    add r0, #8
    mov r1, #0x20 
    mov r2, #0xe5
    mov r3, #0xe5
    lsl r3, r3, #8
    orr r2, r3
    bl sub_800096C
    add r0, r5, #0
    add r0, #8
    mov r1, #0xe6
    strb r1, [r0,#0x10] // (byte_2001818 - 0x2001808)
    add r0, r5, #0
    add r0, #0x28 
    mov r1, #0x20 
    mov r2, #0xe5
    mov r3, #0xe5
    lsl r3, r3, #8
    orr r2, r3
    bl sub_800096C
    add r0, r5, #0
    add r0, #0x28 
    mov r1, #0xe6
    strb r1, [r0,#0x14] // (byte_200183C - 0x2001828)
    pop {r4-r7,pc}
.endfunc // sub_8049CF8

.func
.thumb_func
sub_8049D3A:
    ldr r0, off_8049D94 // =word_2001800 
    mov r1, #1
    strb r1, [r0,#0x2] // (byte_2001802 - 0x2001800)
    mov pc, lr
.endfunc // sub_8049D3A

.func
.thumb_func
sub_8049D42:
    ldr r0, off_8049D94 // =word_2001800 
    ldrb r0, [r0,#0x2] // (byte_2001802 - 0x2001800)
    tst r0, r0
    mov pc, lr
.endfunc // sub_8049D42

.func
.thumb_func
sub_8049D4A:
    push {r4-r7,lr}
    ldr r0, off_8049D6C // =byte_200A290 
    add r0, #0x70 
    ldr r1, off_8049D94 // =word_2001800 
    add r1, #8
    mov r2, #0x20 
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    ldr r0, off_8049D6C // =byte_200A290 
    add r0, #0xd0
    ldr r1, off_8049D94 // =word_2001800 
    add r1, #0x28 
    mov r2, #0x20 
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049D6C:    .word byte_200A290
.endfunc // sub_8049D4A

.func
.thumb_func
sub_8049D70:
    push {r4-r7,lr}
    bl change_20013F0_800151C // () -> int
    ldr r1, off_8049D94 // =word_2001800 
    strh r0, [r1]
    pop {r4-r7,pc}
.endfunc // sub_8049D70

.func
.thumb_func
sub_8049D7C:
    ldr r1, off_8049D94 // =word_2001800 
    ldrh r0, [r1]
    mov pc, lr
.endfunc // sub_8049D7C

.func
.thumb_func
sub_8049D82:
    push {r4-r7,lr}
    ldr r3, off_8049D94 // =word_2001800 
    mov r0, #8
    mov r1, #0x28 
    mov r2, #0
    add r0, r0, r3
    add r1, r1, r3
    add r2, r2, r3
    pop {r4-r7,pc}
off_8049D94:    .word word_2001800
.endfunc // sub_8049D82

.func
.thumb_func
sub_8049D98:
    push {r4-r7,lr}
    bl sub_803BEC0
    pop {r4-r7,pc}
.endfunc // sub_8049D98

.func
.thumb_func
sub_8049DA0:
    push {r4-r7,lr}
    add r2, r1, #0
    ldr r1, off_8049DBC // =unk_2001808 
    ldr r3, off_8049DC0 // =unk_2001828 
    push {r2,r3}
    mov r2, #8
    bl sub_803C1BC
    pop {r0,r1}
    mov r2, #0xa
    bl sub_803C1BC
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049DBC:    .word unk_2001808
off_8049DC0:    .word unk_2001828
.endfunc // sub_8049DA0

.func
.thumb_func
sub_8049DC4:
    push {r4-r7,lr}
    push {r2,r3}
    mov r2, #8
    mov r3, #0x20 
    bl sub_803C168
    pop {r0,r1}
    mov r2, #0xa
    mov r3, #0x20 
    bl sub_803C168
    pop {r4-r7,pc}
.endfunc // sub_8049DC4

.func
.thumb_func
sub_8049DDC:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r5, off_8049E24 // =byte_200A290 
    // memBlock
    add r0, r5, #0
    // size
    ldr r1, off_8049E00 // =0x1B0 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0x4c 
    strb r0, [r1]
    strh r4, [r5,#0x22] // (word_200A2B2 - 0x200a290)
    mov r0, #8
    strh r0, [r5,#0x24] // (word_200A2B4 - 0x200a290)
    mov r0, #1
    strh r0, [r5,#0x26] // (word_200A2B6 - 0x200a290)
    pop {r4-r7,pc}
    .byte 0, 0
off_8049E00:    .word 0x1B0
.endfunc // sub_8049DDC

cb_8049E04:
    push {r4-r7,lr}
    ldr r5, off_8049E24 // =byte_200A290 
    ldr r0, off_8049E14 // =off_8049E18 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_8049E14:    .word off_8049E18
off_8049E18:    .word sub_8049E28+1
    .word sub_8049E5C+1
    .word sub_8049E84+1
off_8049E24:    .word byte_200A290
.func
.thumb_func
sub_8049E28:
    push {r4-r7,lr}
    bl chatbox_8040818
    ldr r0, off_8049E58 // =0x40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x11
    bl sub_80015FC
    bl sub_8005F40
.endfunc // sub_8049E28

    bl sub_803BEC0
    bl sub_804A14C
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    pop {r4-r7,pc}
off_8049E58:    .word 0x40
.func
.thumb_func
sub_8049E5C:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq locret_8049E7E
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    bl chatbox_8040818
    ldr r0, off_8049E80 // =0x40 
    bl sub_8001778
    bl sub_8123408
locret_8049E7E:
    pop {r4-r7,pc}
off_8049E80:    .word 0x40
.endfunc // sub_8049E5C

.func
.thumb_func
sub_8049E84:
    push {r4-r7,lr}
    ldr r0, off_8049E94 // =off_8049E98 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049E94:    .word off_8049E98
off_8049E98:    .word sub_8049EBC+1
    .word sub_8049F32+1
    .word sub_8049F8A+1
    .word sub_8049FA4+1
    .word sub_8049FE0+1
    .word sub_804A00A+1
    .word sub_804A024+1
    .word sub_804A04E+1
    .word sub_804A078+1
.endfunc // sub_8049E84

.func
.thumb_func
sub_8049EBC:
    push {r4-r7,lr}
    ldr r0, dword_8049F1C // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x13
    bl sub_80015FC
    bl sub_8046664 // () -> void
    bl copyData_804A0AC
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0
    strb r0, [r5,#8]
    strb r0, [r5,#0x1c]
    strb r0, [r5,#0x1d]
    strb r0, [r5,#0x13]
    mov r0, #0
    strb r0, [r5,#0x12]
    bl sub_803BEC0
    bl sub_804A14C
    bl sub_803A740
    bl sub_803A752
.endfunc // sub_8049EBC

    bl sub_8049F20
    mov r0, #0
    bl sub_803BE30
    mov r0, #1
    bl sub_803BE30
    bl chatbox_8040818
    mov r0, #4
    strb r0, [r5,#1]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8049F1C:    .word 0x1F40
.func
.thumb_func
sub_8049F20:
    push {r4-r7,lr}
    mov r4, #0x29 
loc_8049F24:
    add r0, r4, #0
    bl sub_803B674
.endfunc // sub_8049F20

    add r4, #1
    cmp r4, #0x2c 
    ble loc_8049F24
    pop {r4-r7,pc}
.func
.thumb_func
sub_8049F32:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_8049F4A
    mov r0, #0x14
    bl sub_803BB2C
    mov r0, #0xf
    bl sub_803BB7C
    mov r0, #8
    strb r0, [r5,#1]
loc_8049F4A:
    bl sub_8049F70
.endfunc // sub_8049F32

    pop {r4-r7,pc}
.func
.thumb_func
sub_8049F50:
    push {r4-r7,lr}
    bl sub_803BA64
    mov r0, #0
    bl sub_803BAE2
    mov r0, #0xa
    bl sub_803B522
    mov r0, #0x28 
    bl sub_803B674
.endfunc // sub_8049F50

    mov r0, #1
    bl sub_803A8B4
    pop {r4-r7,pc}
.func
.thumb_func
sub_8049F70:
    push {r4-r7,lr}
    bl sub_803BA64
    mov r0, #0xa
    bl sub_803B522
    mov r0, #0x28 
    bl sub_803B674
.endfunc // sub_8049F70

    mov r0, #1
    bl sub_803A8B4
    pop {r4-r7,pc}
.func
.thumb_func
sub_8049F8A:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8049F9E
    bl sub_803BB80
    beq loc_8049F9E
    mov r0, #0xc
    strb r0, [r5,#1]
loc_8049F9E:
    bl sub_8049F70
.endfunc // sub_8049F8A

    pop {r4-r7,pc}
.func
.thumb_func
sub_8049FA4:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_803AFC2
    beq loc_8049FB8
    ldr r1, off_8049FC4 // =dword_8049FC8 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_8049FB8:
    bl sub_8049F50
.endfunc // sub_8049FA4

    bl sub_803BC7C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8049FC4:    .word dword_8049FC8
dword_8049FC8:    .word 0x0
    .word sub_803AA24+1
    .word loc_803AA40+1
    .word sub_803ABF4+1
    .word sub_803AB6C+1
    .word sub_803AB94+1
.func
.thumb_func
sub_8049FE0:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_804A004
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_8049FF8
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_804A004
loc_8049FF8:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x14
    strb r0, [r5,#1]
loc_804A004:
    bl sub_8049F70
.endfunc // sub_8049FE0

    pop {r4-r7,pc}
.func
.thumb_func
sub_804A00A:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_804A01E
    bl sub_804A14C
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_804A01E:
    bl sub_8049F70
.endfunc // sub_804A00A

    pop {r4-r7,pc}
.func
.thumb_func
sub_804A024:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_804A048
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_804A03C
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_804A048
loc_804A03C:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_804A048:
    bl sub_8049F70
.endfunc // sub_804A024

    pop {r4-r7,pc}
.func
.thumb_func
sub_804A04E:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_804A072
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C0BE
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C132
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strb r0, [r5,#1]
loc_804A072:
    bl sub_8049F70
.endfunc // sub_804A04E

    pop {r4-r7,pc}
.func
.thumb_func
sub_804A078:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_804A0A2
    ldrh r0, [r5,#0x22]
    bl sub_804A230
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    ldr r0, off_804A0A8 // =0x40 
    bl sub_8001778
    bl chatbox_8040818
    bl sub_8123408
    b locret_804A0A6
loc_804A0A2:
    bl sub_8049F70
locret_804A0A6:
    pop {r4-r7,pc}
off_804A0A8:    .word 0x40
.endfunc // sub_804A078

.func
.thumb_func
copyData_804A0AC:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // initRefs
    ldr r0, off_804A0E4 // =dword_804A0E8 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#0x16]
    sub r0, #4
    strh r0, [r3,#0x16]
    ldrh r0, [r3,#0x14]
    sub r0, #2
    strh r0, [r3,#0x14]
    ldrh r0, [r3,#0x1a]
    sub r0, #2
    strh r0, [r3,#0x1a]
    ldrh r0, [r3,#0x18]
    sub r0, #4
    strh r0, [r3,#0x18]
    mov r0, #3
    bl sub_803B91C
    pop {r4-r7,pc}
off_804A0E4:    .word dword_804A0E8
dword_804A0E8:    .word comp_87E50D4 + 1<<31
    .word 0x6004000
    .word unk_2027A00
    .word comp_87E5550 + 1<<31
    .word 0x0
    .word unk_2028200
    .word comp_87F24FC + 1<<31
    .word 0x0
    .word unk_2028200
    .word comp_87E56A0 + 1<<31
    .word 0x600D600
    .word unk_2027A00
    .word unk_87F25B4
    .word unk_3001980
    .word 0xA0
    .word unk_86A4D40
    .word 0x6010020
    .word 0x240
    .word dword_86A4A40
    .word 0x6010300
    .word 0x100
    .word dword_86A5500
    .word unk_3001550
    .word 0x20
    .word 0x0
.endfunc // copyData_804A0AC

.func
.thumb_func
sub_804A14C:
    push {r4-r7,lr}
    ldr r7, off_804A170 // =unk_2001850 
    ldr r1, off_804A174 // =unk_804A178 
    ldrh r0, [r5,#0x22]
    ldrb r0, [r1,r0]
    add r0, r0, r7
    add r1, r5, #0
    add r1, #0x30 
    mov r2, #0x20 
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C132
    strb r0, [r5,#0x10]
    pop {r4-r7,pc}
    .byte 0, 0
off_804A170:    .word unk_2001850
off_804A174:    .word unk_804A178
unk_804A178:    .byte  0
    .byte 0x20
.endfunc // sub_804A14C

.func
.thumb_func
sub_804A17A:
    push {r4-r7,lr}
    ldr r5, off_804A260 // =unk_2001850 
    // memBlock
    add r0, r5, #0
    // size
    mov r1, #0x60 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    add r0, r5, #0
    add r0, #0
    mov r1, #0x20 
    mov r2, #0xe5
    mov r3, #0xe5
    lsl r3, r3, #8
    orr r2, r3
    bl sub_800096C
    mov r0, #0
    add r1, r5, #0
    add r1, #0
    bl sub_804A1FC
    add r0, r5, #0
    add r0, #0
    mov r1, #0xe6
    strb r1, [r0,#0x10] // (byte_2001860 - 0x2001850)
    add r0, r5, #0
    add r0, #0x20 
    mov r1, #0x20 
    mov r2, #0xe5
    mov r3, #0xe5
    lsl r3, r3, #8
    orr r2, r3
    bl sub_800096C
    mov r0, #1
    add r1, r5, #0
    add r1, #0x20 
    bl sub_804A1FC
    add r0, r5, #0
    add r0, #0x20 
    mov r1, #0xe6
    strb r1, [r0,#0x10] // (byte_2001880 - 0x2001870)
    pop {r4-r7,pc}
.endfunc // sub_804A17A

.func
.thumb_func
sub_804A1D0:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r5, off_804A260 // =unk_2001850 
    add r0, r5, #0
    add r0, #0x40 
    mov r1, #0x20 
    mov r2, #0xe5
    mov r3, #0xe5
    lsl r3, r3, #8
    orr r2, r3
    bl sub_800096C
    add r0, r7, #0
    add r1, r5, #0
    add r1, #0x40 
    bl sub_804A1FC
    add r0, r5, #0
    add r0, #0x40 
    mov r1, #0xe6
    strb r1, [r0,#0x10] // (byte_20018A0 - 0x2001890)
    pop {r4-r7,pc}
.endfunc // sub_804A1D0

.func
.thumb_func
sub_804A1FC:
    push {r4-r7,lr}
    ldr r4, off_804A22C // =byte_86CF4AC 
    lsl r0, r0, #1
    ldrh r0, [r4,r0]
    add r4, r4, r0
loc_804A206:
    ldrb r0, [r4]
    cmp r0, #0xe4
    blt loc_804A214
    beq loc_804A21A
    cmp r0, #0xe6
    beq locret_804A228
    b loc_804A224
loc_804A214:
    strb r0, [r1]
    add r4, #1
    b loc_804A224
loc_804A21A:
    strb r0, [r1]
    ldrb r0, [r4,#1]
    strb r0, [r1,#1]
    add r4, #2
    b loc_804A224
loc_804A224:
    add r1, #2
    b loc_804A206
locret_804A228:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804A22C:    .word byte_86CF4AC
.endfunc // sub_804A1FC

.func
.thumb_func
sub_804A230:
    push {r4-r7,lr}
    ldr r1, off_804A258 // =dword_804A25C 
    ldrb r1, [r1,r0]
    ldr r0, off_804A248 // =byte_200A290 
    add r0, #0x70 
    ldr r2, off_804A260 // =unk_2001850 
    add r1, r1, r2
    mov r2, #0x20 
    bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804A248:    .word byte_200A290
.endfunc // sub_804A230

.func
.thumb_func
sub_804A24C:
    push {r4-r7,lr}
    ldr r1, off_804A258 // =dword_804A25C 
    ldrb r1, [r1,r0]
    ldr r0, off_804A260 // =unk_2001850 
    add r0, r0, r1
    pop {r4-r7,pc}
off_804A258:    .word dword_804A25C
dword_804A25C:    .word 0x402000
off_804A260:    .word unk_2001850
unk_804A264:    .byte 0xB0
    .byte 0xC3
    .byte 0xB1
    .byte 0xC3
    .byte 0xB2
    .byte 0xC3
    .byte 0xB3
    .byte 0xC3
    .byte 0xB4
    .byte 0xC3
    .byte 0xB5
    .byte 0xC3
    .byte 0xB6
    .byte 0xC3
    .byte 0xB7
    .byte 0xC3
    .byte 0xB8
    .byte 0xC3
    .byte 0xB9
    .byte 0xC3
    .byte 0xBA
    .byte 0xC3
    .byte 0xBB
    .byte 0xC3
    .byte 0xBC
    .byte 0xC3
    .byte 0xBD
    .byte 0xC3
    .byte 0xBE
    .byte 0xC3
    .byte 0xBF
    .byte 0xC3
    .byte 0xC0
    .byte 0xC3
    .byte 0xC1
    .byte 0xC3
    .byte 0xC2
    .byte 0xC3
    .byte 0xC3
    .byte 0xC3
    .byte 0xC4
    .byte 0xC3
    .byte 0xC5
    .byte 0xC3
    .byte 0xC6
    .byte 0xC3
    .byte 0xC7
    .byte 0xC3
    .byte 0xC8
    .byte 0xC3
    .byte 0xC9
    .byte 0xC3
    .byte 0xCA
    .byte 0xC3
    .byte 0xCB
    .byte 0xC3
unk_804A29C:    .byte 0x48 
    .byte 0xC2
    .byte 0x44 
    .byte 0xC2
    .byte 0x40 
    .byte 0xC2
    .byte 0xFF
    .byte 0xFF
unk_804A2A4:    .byte 0x50 
    .byte 0xC2
    .byte 0x4F 
    .byte 0xC2
    .byte 0x4E 
    .byte 0xC2
    .byte 0xFF
    .byte 0xFF
unk_804A2AC:    .byte  6
    .byte  6
    .byte  6
    .byte 0xFF
unk_804A2B0:    .byte 0x16
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  1
    .byte  1
    .byte  0
    .byte 0x16
    .byte  2
    .byte  2
    .byte  0
    .byte  4
    .byte  3
    .byte  0
    .byte  2
    .byte  4
    .byte  4
    .byte  1
    .byte  2
    .byte  4
    .byte  5
    .byte  2
    .byte  2
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
.endfunc // sub_804A24C

.func
.thumb_func
sub_804A2CC:
    push {r5,lr}
    push {r0}
    bl sub_804A2E8
    pop {r0}
    ldr r5, off_804A300 // =unk_200AC80 
    str r0, [r5,#0x30] // (dword_200ACB0 - 0x200ac80)
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrh r0, [r1,#4]
    strh r0, [r1,#0xc]
    bl sub_8046664 // () -> void
    pop {r5,pc}
.endfunc // sub_804A2CC

.func
.thumb_func
sub_804A2E8:
    push {r5,lr}
    // memBlock
    ldr r0, off_804A300 // =unk_200AC80 
    // size
    mov r1, #0x58 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x34]
    // size
    mov r1, #0x80
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    pop {r5,pc}
    .byte 0, 0
off_804A300:    .word unk_200AC80
.endfunc // sub_804A2E8

cb_804A304:
    push {r4-r7,lr}
    mov r0, r8
    mov r1, r9
    mov r2, r12
    push {r0-r2}
    ldr r5, off_804A35C // =sSubmenu 
    ldr r0, off_804A338 // =off_804A33C 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    bl sub_804AFB8
    bl sub_804AFE4
    bl change_20013F0_800151C // () -> int
    pop {r0-r2}
    mov r8, r0
    mov r9, r1
    mov r12, r2
    pop {r4-r7,pc}
off_804A338:    .word off_804A33C
off_804A33C:    .word sub_804A360+1
    .word sub_804A3FC+1
    .word sub_804A460+1
    .word sub_804A4D4+1
    .word sub_804A460+1
    .word sub_804A514+1
    .word sub_804A54C+1
    .word unk_200AC80
off_804A35C:    .word sSubmenu
.func
.thumb_func
sub_804A360:
    push {lr}
    bl sub_80017AA
    bl sub_80017E0
    bl sub_800183C
    mov r0, #0x10
    bl sub_80015FC
    bl sub_8046664 // () -> void
    // memBlock
    ldr r0, off_804A3F0 // =word_202A020 
    // size
    ldr r1, off_804A3F4 // =0x3C0 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    bl sub_8120A88
    ldr r0, off_804A3EC // =unk_202A3E0 
    mov r1, #1
    bl sub_811FE7C
    strh r0, [r5,#0x28]
    add r1, r0, #0
    ldr r0, off_804A3EC // =unk_202A3E0 
    mov r2, #5
    mov r3, #4
    bl loc_8120018
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #5
    strb r0, [r1,#2]
    mov r0, #4
    strb r0, [r1,#3]
    bl sub_804A61C
.endfunc // sub_804A360

    mov r0, #0
    ldr r1, off_804A3EC // =unk_202A3E0 
    bl sub_8120CC8
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x13]
    strb r0, [r5,#0x15]
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_804A3E8 // =0x1F40 
    strh r1, [r0]
    mov r1, #0
    strh r1, [r0,#0x10]
    strh r1, [r0,#0x12]
    strh r1, [r0,#0x14]
    strh r1, [r0,#0x16]
    strh r1, [r0,#0x18]
    strh r1, [r0,#0x1a]
    bl sub_804AF84
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_804A3E8:    .word 0x1F40
off_804A3EC:    .word unk_202A3E0
off_804A3F0:    .word word_202A020
off_804A3F4:    .word 0x3C0
    .word unk_200AC80
.func
.thumb_func
sub_804A3FC:
    push {lr}
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_804A436
    mov r0, #0
    strb r0, [r5,#3]
    bl sub_804AAA4
    bne loc_804A44C
    bl sub_804AAD0
    bne loc_804A44C
    mov r0, #0x10
    bl sub_811F7EC
    beq loc_804A42C
    mov r0, #0x9c
    bl sound_play // () -> void
    mov r0, #0x18
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    b loc_804A44C
loc_804A42C:
    mov r0, #4
    strb r0, [r5,#3]
    bl sub_804AB10
    beq loc_804A436
loc_804A436:
    ldrh r0, [r5,#0x28]
    tst r0, r0
    beq loc_804A44C
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #7
    mov r2, #0
    mov r3, #0xa
    bl sub_811F7F8
loc_804A44C:
    bl sub_804A8F4
.endfunc // sub_804A3FC

    bl sub_804A7C0
    bl sub_804A9A0
    bl sub_804AA58
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_804A460:
    push {r4-r7,lr}
    ldr r7, off_804A4D0 // =unk_200AC80 
    bl sub_804A8F4
.endfunc // sub_804A460

    bl sub_804A7C0
    bl sub_804A9A0
    bl sub_804AA58
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_804A4CC
    bl sub_8046664 // () -> void
    bl sub_809E122
    bl sub_811F728
    bl sub_8120AB8
    ldrb r0, [r5]
    cmp r0, #0x10
    beq loc_804A4AA
    mov r0, #0
    str r0, [r7,#0x30]
    strh r0, [r7,#4]
    strh r0, [r7,#6]
    bl sub_8003962
    bl sub_8003AB2
    bl sub_800399A
    bl sub_8003AEA
    b loc_804A4CC
loc_804A4AA:
    bl sub_804A970
    bl sub_804BD00
    strh r0, [r7,#4]
    strh r1, [r7,#6]
    mov r2, #1
    bl sub_8021AEE
    bl sub_803F798
    mov r0, r10
    ldr r0, [r0,#0x3c]
    mov r1, #0xc
    strb r1, [r0,#0x16]
    mov r0, #1
    pop {r4-r7,pc}
loc_804A4CC:
    mov r0, #0
    pop {r4-r7,pc}
off_804A4D0:    .word unk_200AC80
.func
.thumb_func
sub_804A4D4:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    beq loc_804A50A
    mov r0, #0x20 
    bl chatbox_8045F3C
    beq loc_804A50A
    bl chatbox_8045F4C
    tst r0, r0
    beq loc_804A4FE
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#3]
    ldrh r0, [r5,#0x1e]
    bl sub_804AF20
    b loc_804A50A
loc_804A4FE:
    mov r0, #0x10
    strb r0, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
loc_804A50A:
    bl sub_804AA58
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_804A4D4

.func
.thumb_func
sub_804A514:
    push {lr}
    bl sub_804AAD0
    bne loc_804A53C
    bl sub_804AE04
    bne loc_804A534
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #7
    mov r2, #1
    ldrh r3, [r5,#0x34]
    bl sub_811FA22
    strh r0, [r5,#0x34]
loc_804A534:
    bl sub_804AE50
    bl sub_804AE68
loc_804A53C:
    bl sub_804AA58
    bl sub_804A8F4
.endfunc // sub_804A514

    bl sub_804A7C0
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_804A54C:
    push {lr}
    ldr r0, off_804A560 // =off_804A564 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_804AA58
    pop {pc}
    .byte 0, 0
off_804A560:    .word off_804A564
off_804A564:    .word sub_804A574+1
    .word sub_804A5B4+1
    .word sub_804A5D4+1
    .word sub_804A5EC+1
.endfunc // sub_804A54C

.func
.thumb_func
sub_804A574:
    push {lr}
    ldr r0, off_804A5AC // =unk_202A3E0 
    ldrh r2, [r5,#0x2a]
    ldrh r1, [r5,#0x2e]
    add r2, r2, r1
    mov r1, #0x20 
    mul r1, r2
    add r0, r0, r1
    ldr r2, [r0,#0x1c]
    lsl r0, r2, #0x10
    lsr r0, r0, #0x17
    mov r1, #0x7f
    and r1, r2
    mov r2, #0
    mov r3, #0
    bl sub_811980C
    ldr r0, dword_804A5B0 // =0xFFFFFFD8 
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#0x18]
    pop {pc}
    .balign 4, 0x00
off_804A5AC:    .word unk_202A3E0
dword_804A5B0:    .word 0xFFFFFFD8
.endfunc // sub_804A574

.func
.thumb_func
sub_804A5B4:
    push {lr}
    mov r1, #0x18
    ldrsh r0, [r5,r1]
    add r0, #0x10
    cmp r0, #0x28 
    ble loc_804A5C6
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0x28 
loc_804A5C6:
    strh r0, [r5,#0x18]
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_804A5B4

.func
.thumb_func
sub_804A5D4:
    push {lr}
    mov r0, #0xe2
    bl sub_811F7EC
    beq locret_804A5E8
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0x9e
    bl sound_play // () -> void
locret_804A5E8:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_804A5D4

.func
.thumb_func
sub_804A5EC:
    push {lr}
    mov r1, #0x18
    ldrsh r0, [r5,r1]
    sub r0, #0x10
    ldr r1, dword_804A618 // =0xFFFFFFD8 
    cmp r0, r1
    bge loc_804A60C
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0
    bl sub_811980C
    mov r0, #4
    strb r0, [r5]
    ldr r0, dword_804A618 // =0xFFFFFFD8 
loc_804A60C:
    strh r0, [r5,#0x18]
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    pop {pc}
dword_804A618:    .word 0xFFFFFFD8
.endfunc // sub_804A5EC

.func
.thumb_func
sub_804A61C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r5, [sp]
    ldr r4, off_804A6DC // =unk_20096E0 
    mov r6, #0
    mov r7, #0
    ldr r5, off_804A698 // =off_804A69C 
loc_804A62A:
    ldr r0, [r5,r7]
    add r7, #4
    ldr r1, [r5,r7]
    add r7, #4
    bl sub_811FB84
    str r0, [r4,r6]
    add r6, #4
    mov r1, #0
loc_804A63C:
    ldr r0, [r5,r7]
    str r0, [r4,r6]
    add r6, #4
    add r7, #4
    add r1, #1
    cmp r1, #2
    blt loc_804A63C
    cmp r7, #0x40 
    blt loc_804A62A
    mov r0, #0
    str r0, [r4,r6]
    // initRefs
    ldr r0, off_804A6DC // =unk_20096E0 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    // initRefs
    ldr r0, off_804A6E0 // =initRefs_804A6E4 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    ldr r7, [sp]
    // j
    mov r0, #0
    // i
    mov r1, #0
    // cpyOff
    mov r2, #1
    // tileRefs
    ldr r3, off_804A7A8 // =unk_2020A20 
    mov r4, #0x1e
    mov r5, #0x14
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    mov r1, #0x1e
    mov r0, #0
    // j
    sub r0, r0, r1
    // i
    mov r1, #2
    // cpyOff
    mov r2, #1
    // tileRefs
    ldr r3, off_804A79C // =unk_201CA20 
    mov r4, #0x3c 
    mov r5, #0x11
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    // j
    mov r0, #0x13
    // i
    mov r1, #2
    // cpyOff
    mov r2, #1
    // tileRefs
    ldr r3, off_804A7B4 // =unk_2035C8C 
    mov r4, #0xb
    mov r5, #0x11
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    add sp, sp, #4
    pop {r4-r7,pc}
off_804A698:    .word off_804A69C
off_804A69C:    .word unk_86C9108
    .word 0x2
    .word word_3001960
    .word 0x20
    .word dword_86C9B54
    .word 0x2
    .word unk_3001AC0
    .word 0x20
    .word comp_86C9AA4 + 1<<31
    .word 0x2
    .word unk_3001A80
    .word decomp_2013A00
    .word unk_872CF94
    .word 0x2
    .word unk_3001AE0
    .word 0x20
off_804A6DC:    .word unk_20096E0
off_804A6E0:    .word initRefs_804A6E4
initRefs_804A6E4:    .word comp_86C8054 + 1<<31
    .word 0x6000020
    .word 0x2013A00
    .word dword_86B7AE0
    .word 0x6004000
    .word 0x2800
    .word comp_86C9BD4 + 1<<31
    .word 0x6014800
    .word 0x2013A00
    .word comp_86C9D38 + 1<<31
    .word 0x6014980
    .word 0x2013A00
    .word comp_86C9CE4 + 1<<31
    .word 0x60149C0
    .word 0x2013A00
    .word unk_86C9D6C
    .word 0x30016D0
    .word 0x20
    .word comp_86C7764 + 1<<31
    .word 0x2034B6C
    .word 0x2013A00
    .word comp_86C96C0 + 1<<31
    .word 0x6006800
    .word 0x2013A00
    .word comp_86C9274 + 1<<31
    .word 0x6008020
    .word 0x2013A00
    .word comp_86C9668 + 1<<31
    .word 0x3001A20
    .word 0x2013A00
    .word comp_86CE9E8 + 1<<31
    .word 0x203486C
    .word 0x2013A00
    .word comp_86C980C + 1<<31
    .word 0x6006B80
    .word 0x2013A00
    .word comp_86DA1B8 + 1<<31
    .word 0x2028A20
    .word 0x2013A00
    .word comp_86C7980 + 1<<31
    .word 0x2024A20
    .word 0x2013A00
    .word comp_86C73D8 + 1<<31
    .word 0x2026A20
    .word 0x2013A00
    .word comp_86CE8AC + 1<<31
off_804A79C:    .word unk_201CA20
    .word decomp_2013A00
    .word comp_86C5190 + 1<<31
off_804A7A8:    .word unk_2020A20
    .word decomp_2013A00
    .word comp_86C526C + 1<<31
off_804A7B4:    .word unk_2035C8C
    .word decomp_2013A00
    .byte 0, 0, 0, 0
.endfunc // sub_804A61C

.func
.thumb_func
sub_804A7C0:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrh r0, [r7,#0x2e]
    ldr r1, off_804A8BC // =unk_202A3E0 
    ldr r2, off_804A8C0 // =unk_20345FC 
    mov r3, #0xb
    mov r5, #7
    bl sub_81200EC
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x21 
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A8C0 // =unk_20345FC 
    mov r4, #8
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldrh r0, [r7,#0x2e]
    ldr r1, off_804A8BC // =unk_202A3E0 
    ldr r2, off_804A8C4 // =unk_20346DC 
    ldr r3, off_804A8C8 // =unk_804A264 
    ldr r4, dword_804A8CC // =0x6007600 
    mov r5, #7
    bl sub_8120390
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x1f
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A8C4 // =unk_20346DC 
    mov r4, #2
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldrh r0, [r7,#0x2e]
    ldr r1, off_804A8BC // =unk_202A3E0 
    ldr r2, off_804A8D0 // =unk_2034714 
    mov r3, #0xa
    lsl r3, r3, #0xc
    ldr r4, off_804A8D4 // =0x35C 
    orr r3, r4
    ldr r4, dword_804A8D8 // =0x6006B80 
    mov r5, #7
    bl sub_81203E4
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x29 
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A8D0 // =unk_2034714 
    mov r4, #2
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldrh r0, [r7,#0x2e]
    ldr r1, off_804A8BC // =unk_202A3E0 
    ldr r2, off_804A8DC // =unk_203474C 
    mov r3, #0xb
    lsl r3, r3, #0xc
    ldr r4, dword_804A8E0 // =0x216 
    orr r3, r4
    mov r5, #7
    bl sub_8120458
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x2b 
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A8DC // =unk_203474C 
    mov r4, #1
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldrh r0, [r7,#0x2e]
    ldr r1, off_804A8BC // =unk_202A3E0 
    ldr r2, off_804A8E4 // =unk_2034768 
    mov r3, #9
    lsl r3, r3, #0xc
    ldr r4, dword_804A8E8 // =0x34F 
    orr r3, r4
    mov r5, #7
    bl sub_81204C4
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x2c 
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A8E4 // =unk_2034768 
    mov r4, #2
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldrh r0, [r7,#0x2e]
    ldr r1, off_804A8BC // =unk_202A3E0 
    ldr r2, off_804A8EC // =unk_20347A0 
    mov r3, #0xb
    lsl r3, r3, #0xc
    ldr r4, off_804A8F0 // =0x200 
    orr r3, r4
    mov r5, #7
    bl sub_8120618
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x2e 
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A8EC // =unk_20347A0 
    mov r4, #2
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804A8BC:    .word unk_202A3E0
off_804A8C0:    .word unk_20345FC
off_804A8C4:    .word unk_20346DC
off_804A8C8:    .word unk_804A264
dword_804A8CC:    .word 0x6007600
off_804A8D0:    .word unk_2034714
off_804A8D4:    .word 0x35C
dword_804A8D8:    .word 0x6006B80
off_804A8DC:    .word unk_203474C
dword_804A8E0:    .word 0x216
off_804A8E4:    .word unk_2034768
dword_804A8E8:    .word 0x34F
off_804A8EC:    .word unk_20347A0
off_804A8F0:    .word 0x200
.endfunc // sub_804A7C0

.func
.thumb_func
sub_804A8F4:
    push {r4-r7,lr}
    add r7, r5, #0
    ldrh r0, [r7,#0x24]
    ldr r1, off_804A95C // =word_202A020 
    ldr r2, off_804A960 // =unk_2034458 
    mov r3, #0xb
    ldr r5, off_804A96C // =unk_200AC80 
    ldr r5, [r5,#0x30] // (dword_200ACB0 - 0x200ac80)
    cmp r5, #7
    ble loc_804A90A
    mov r5, #7
loc_804A90A:
    bl sub_81200EC
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x32 
    // j
    sub r0, r0, r1
    // i
    mov r1, #4
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804A960 // =unk_2034458 
    mov r4, #8
    ldr r5, off_804A96C // =unk_200AC80 
    ldr r5, [r5,#0x30] // (dword_200ACB0 - 0x200ac80)
    cmp r5, #7
    ble loc_804A928
    mov r5, #7
loc_804A928:
    lsl r5, r5, #1
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_804A8F4

    ldrh r0, [r7,#0x24]
    ldr r1, off_804A95C // =word_202A020 
    ldr r2, off_804A964 // =unk_20345A8 
    mov r3, #0xb
    lsl r3, r3, #0xc
    ldr r4, dword_804A968 // =0x216 
    orr r3, r4
    mov r5, #7
    bl sub_8120458
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x3a 
    sub r0, r0, r1
    mov r1, #4
    mov r2, #2
    ldr r3, off_804A964 // =unk_20345A8 
    mov r4, #1
    mov r5, #0xe
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804A95C:    .word word_202A020
off_804A960:    .word unk_2034458
off_804A964:    .word unk_20345A8
dword_804A968:    .word 0x216
off_804A96C:    .word unk_200AC80
.func
.thumb_func
sub_804A970:
    push {r4-r7,lr}
    ldr r7, off_804A99C // =word_202A020 
    ldrh r6, [r5,#0x1e]
    mov r4, #0
loc_804A978:
    ldr r1, [r7,#0x1c]
    lsl r0, r1, #0x10
    mov r2, #0x7f
    and r1, r2
    lsr r0, r0, #0x17
    mov r2, #1
    bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
    mov r0, #9
    ldrh r1, [r7]
    bl sub_8048D60
    add r7, #0x20 
    add r4, #1
    cmp r4, r6
    blt loc_804A978
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804A99C:    .word word_202A020
.endfunc // sub_804A970

.func
.thumb_func
sub_804A9A0:
    push {r4-r7,lr}
    mov r0, #0xf0
    mov r1, #0x1e
    lsl r1, r1, #3
    sub r0, r0, r1
    mov r1, #0x20 
    mov r2, #0x2a 
    mov r3, #0x13
    ldr r4, off_804A9BC // =unk_804A29C 
    ldr r6, dword_804A9C0 // =0x40000000 
    bl sub_804A9F0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804A9BC:    .word unk_804A29C
dword_804A9C0:    .word 0x40000000
.endfunc // sub_804A9A0

    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_804A9E2
    ldr r0, off_804A9EC // =0xE0 
    mov r1, #0x1e
    lsl r1, r1, #3
    sub r0, r0, r1
    mov r1, #0x20 
    mov r2, #0
    mov r3, #0x12
    ldr r4, off_804A9E4 // =unk_804A2A4 
    ldr r6, dword_804A9E8 // =0x0 
    bl sub_804A9F0
locret_804A9E2:
    pop {r4-r7,pc}
off_804A9E4:    .word unk_804A2A4
dword_804A9E8:    .word 0x0
off_804A9EC:    .word 0xE0
.func
.thumb_func
sub_804A9F0:
    push {r4,lr}
    sub sp, sp, #0x1c
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    str r4, [sp,#0xc]
    str r6, [sp,#0x10]
    lsl r0, r0, #0x10
    ldr r1, [sp]
    ldr r3, [sp,#4]
    tst r3, r3
    bne loc_804AA0C
    mov r2, #0
    b loc_804AA0E
loc_804AA0C:
    ldrh r2, [r5,r3]
loc_804AA0E:
    mov r3, #0x10
    mul r2, r3
    add r1, r1, r2
    orr r0, r1
    ldr r1, dword_804AA50 // =0x20002 
    ldr r2, [sp,#8]
    ldrb r2, [r5,r2]
    str r2, [sp,#0x14]
    mov r3, #0xf
    and r2, r3
    ldr r3, [sp,#0xc]
    ldr r4, [sp,#0x10]
    bl sub_811FAF4
    ldr r1, [sp,#0x14]
    lsr r1, r1, #4
    sub r1, #1
    bne loc_804AA3C
    ldr r1, off_804AA54 // =unk_804A2AC 
    bl sub_8120CC8
    ldr r2, [sp,#8]
    strb r0, [r5,r2]
loc_804AA3C:
    ldr r2, [sp,#8]
    ldrb r0, [r5,r2]
    mov r3, #0xf
    and r0, r3
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r5,r2]
    add sp, sp, #0x1c
    pop {r4,pc}
    .byte 0, 0
dword_804AA50:    .word 0x20002
off_804AA54:    .word unk_804A2AC
.endfunc // sub_804A9F0

.func
.thumb_func
sub_804AA58:
    push {r4-r7,lr}
    ldr r0, dword_804AA70 // =0x182 
    mov r1, #0x1e
    lsl r1, r1, #3
    sub r0, r0, r1
    mov r1, #0x1c
    mov r2, #0x28 
    mov r3, #0x2e 
    bl sub_804AA74
    pop {r4-r7,pc}
    .byte 0, 0
dword_804AA70:    .word 0x182
.endfunc // sub_804AA58

.func
.thumb_func
sub_804AA74:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    lsl r0, r0, #0x10
    ldr r1, [sp]
    orr r0, r1
    ldr r1, dword_804AA9C // =0x20002 
    ldr r2, [sp,#4]
    ldrh r2, [r5,r2]
    ldr r3, [sp,#8]
    ldrh r3, [r5,r3]
    mov r4, #7
    ldr r6, dword_804AAA0 // =0xC24C 
    mov r7, #0x64 
    bl sub_811FA98
    add sp, sp, #0xc
    pop {r4-r7,pc}
dword_804AA9C:    .word 0x20002
dword_804AAA0:    .word 0xC24C
.endfunc // sub_804AA74

.func
.thumb_func
sub_804AAA4:
    push {lr}
    mov r0, #2
    bl sub_811F7EC
    beq locret_804AACC
    ldrh r0, [r5,#0x1e]
    tst r0, r0
    beq loc_804AABA
    bl sub_804AF20
    b locret_804AACC
loc_804AABA:
    mov r0, #0x68 
    bl sound_play // () -> void
    mov r0, #8
    strb r0, [r5]
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
locret_804AACC:
    pop {pc}
    .byte 0, 0
.endfunc // sub_804AAA4

.func
.thumb_func
sub_804AAD0:
    push {lr}
    mov r0, #8
    bl sub_811F7EC
    bne loc_804AAE8
    ldrb r0, [r5]
    cmp r0, #0x14
    bne loc_804AB0A
    mov r0, #2
    bl sub_811F7EC
    beq locret_804AB0E
loc_804AAE8:
    ldrb r0, [r5]
    cmp r0, #0x14
    bne loc_804AAFA
    mov r0, #4
    strb r0, [r5]
    mov r0, #0x83
    bl sound_play // () -> void
    b locret_804AB0E
loc_804AAFA:
    mov r0, #0x14
    strb r0, [r5]
    mov r0, #0
    strh r0, [r5,#0x34]
    mov r0, #0x81
    bl sound_play // () -> void
    b locret_804AB0E
loc_804AB0A:
    mov r0, #0
    tst r0, r0
locret_804AB0E:
    pop {pc}
.endfunc // sub_804AAD0

.func
.thumb_func
sub_804AB10:
    push {r4-r7,lr}
    mov r6, #0
    mov r0, #1
    bl sub_811F7EC
    beq loc_804AB44
    mov r6, #1
    mov r4, #0x44 
    add r2, r4, #0
    mov r3, #0
    ldrb r0, [r5,#3]
    lsr r0, r0, #2
    add r0, #1
    strb r0, [r5,r2]
    bl sub_804AB4C
    mov r0, #0x44 
    add r1, r0, #0
    add r2, r0, #1
    ldrb r0, [r5,r1]
    strb r0, [r5,r2]
    bl sub_804AB6C
    mov r0, #0x81
    bl sound_play // () -> void
loc_804AB44:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_804AB10

.func
.thumb_func
sub_804AB4C:
    push {r4,lr}
    ldrh r1, [r5,#0x2a]
    ldrh r2, [r5,#0x2e]
    cmp r0, #1
    bne loc_804AB5A
    ldrh r1, [r5,#0x20]
    ldrh r2, [r5,#0x24]
loc_804AB5A:
    str r0, [r5,#0x40]
    strh r1, [r5,#0x3c]
    strh r2, [r5,#0x3e]
    add r1, r1, r2
    mov r2, #2
    add r4, r4, r2
    strh r1, [r5,r4]
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_804AB4C

.func
.thumb_func
sub_804AB6C:
    push {r4-r7,lr}
    mov r4, #0x44 
    add r0, r4, #0
    ldrb r0, [r5,r0]
    lsl r0, r0, #2
    ldr r1, off_804ACAC // =dword_804ACB0 
    ldr r7, [r1,r0]
    add r0, r4, #2
    ldrh r2, [r5,r0]
    ldr r0, off_804ACB4 // =word_202A020 
    cmp r0, r7
    bne loc_804ABE0
    mov r0, #0x20 
    mul r0, r2
    add r7, r7, r0
    ldrh r0, [r7,#0x14]
    tst r0, r0
    bne loc_804AB98
    mov r0, #0x69 
    bl sound_play // () -> void
    b loc_804AC9E
loc_804AB98:
    ldrh r0, [r7,#0x1c]
    bl sub_804AD60
    tst r0, r0
    bne loc_804ABC0
    ldrh r0, [r5,#0x28]
    mov r1, #0x20 
    mul r1, r0
    ldr r0, off_804ACB8 // =unk_202A3E0 
    add r1, r1, r0
    add r0, r7, #0
    add r3, r0, #2
    mov r2, #1
    strh r2, [r3,#0x14]
    mov r2, #0x20 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    ldrh r0, [r5,#0x28]
    add r0, #1
    strh r0, [r5,#0x28]
loc_804ABC0:
    add r0, r7, #0
    mov r1, #0x20 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    ldrh r0, [r5,#0x1e]
    bl sub_804ACC8
    strb r0, [r5,#0x17]
    ldr r0, off_804ACC4 // =unk_200AC80 
    ldr r0, [r0,#0x30] // (dword_200ACB0 - 0x200ac80)
    ldrh r1, [r5,#0x1e]
    cmp r0, r1
    beq loc_804ABDA
loc_804ABDA:
    bl sub_804ADD0
    b loc_804AC9E
loc_804ABE0:
    mov r0, #0x20 
    mul r0, r2
    add r7, r7, r0
    ldr r2, [r7,#0x14]
    lsr r6, r2, #0x10
    tst r6, r6
    beq loc_804AC06
    ldr r0, off_804ACC4 // =unk_200AC80 
    ldr r4, [r0,#0x30] // (dword_200ACB0 - 0x200ac80)
    ldr r3, off_804ACB4 // =word_202A020 
    mov r1, #0
    mov r2, #0x20 
    mul r2, r4
loc_804ABFA:
    ldrh r0, [r3,r1]
    tst r0, r0
    beq loc_804AC0E
    add r1, #0x20 
    cmp r1, r2
    blt loc_804ABFA
loc_804AC06:
    mov r0, #0x69 
    bl sound_play // () -> void
    b loc_804AC9E
loc_804AC0E:
    add r4, r1, #0
    ldrh r0, [r5,#0x1e]
    add r0, #1
    strh r0, [r5,#0x1e]
    cmp r0, #7
    ble loc_804AC1E
    sub r0, #7
    strh r0, [r5,#0x24]
loc_804AC1E:
    sub r6, #1
    bne loc_804AC60
    add r0, r7, #0
    ldr r1, off_804ACB4 // =word_202A020 
    add r1, r1, r4
    mov r2, #0x20 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    ldrh r0, [r5,#0x1e]
    bl sub_804ACC8
    strb r0, [r5,#0x17]
    add r0, r7, #0
    add r0, #0x20 
    add r1, r7, #0
    ldrh r2, [r5,#0x2a]
    ldrh r3, [r5,#0x2e]
    add r3, r3, r2
    ldrh r2, [r5,#0x28]
    sub r2, #1
    strh r2, [r5,#0x28]
    sub r2, r2, r3
    tst r2, r2
    bne loc_804AC52
    bl sub_804AD98
loc_804AC52:
    bl sub_804ADE0
    bl sub_804ADB0
    bl sub_804ADD0
    b loc_804AC84
loc_804AC60:
    lsl r6, r6, #0x10
    ldr r2, [r7,#0x14]
    lsl r2, r2, #0x10
    lsr r2, r2, #0x10
    orr r6, r2
    str r6, [r7,#0x14]
    ldr r1, off_804ACB4 // =word_202A020 
    add r0, r7, #0
    add r1, r1, r4
    mov r2, #0x20 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    ldrh r0, [r5,#0x1e]
    bl sub_804ACC8
    strb r0, [r5,#0x17]
    bl sub_804ADD0
loc_804AC84:
    ldr r1, off_804ACC4 // =unk_200AC80 
    ldr r1, [r1,#0x30] // (dword_200ACB0 - 0x200ac80)
    ldrh r0, [r5,#0x1e]
    cmp r1, r0
    bgt loc_804AC9E
    mov r0, #2
    cmp r1, #3
    beq loc_804AC96
    mov r0, #8
loc_804AC96:
    bl sub_804AF10
    mov r0, #0xc
    strb r0, [r5]
loc_804AC9E:
    ldr r0, dword_804ACBC // =0x7FFF 
    str r0, [r5,#0x3c]
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x48]
    pop {r4-r7,pc}
off_804ACAC:    .word dword_804ACB0
dword_804ACB0:    .word 0x0
off_804ACB4:    .word word_202A020
off_804ACB8:    .word unk_202A3E0
dword_804ACBC:    .word 0x7FFF
    .word unk_2035C6C
off_804ACC4:    .word unk_200AC80
.endfunc // sub_804AB6C

.func
.thumb_func
sub_804ACC8:
    push {r4-r7,lr}
    sub sp, sp, #4
    mov r1, #0
    str r1, [sp]
    add r5, r0, #0
    mov r1, #0x20 
    mul r5, r1
    ldr r7, off_804AD5C // =word_202A020 
    add r5, r5, r7
    ldr r0, off_804AD54 // =unk_20343E0 
    ldr r1, off_804AD58 // =0x78 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    ldr r6, off_804AD54 // =unk_20343E0 
loc_804ACE4:
    mov r4, #0
    ldrh r0, [r7]
    tst r0, r0
    beq loc_804AD16
    ldr r2, [sp]
    add r2, #1
    str r2, [sp]
loc_804ACF2:
    ldrh r1, [r6,r4]
    tst r1, r1
    beq loc_804AD0C
    cmp r0, r1
    beq loc_804AD00
    add r4, #4
    b loc_804ACF2
loc_804AD00:
    add r4, #2
    ldrh r1, [r6,r4]
    add r1, #1
    strh r1, [r6,r4]
    add r4, #2
    b loc_804AD16
loc_804AD0C:
    strh r0, [r6,r4]
    add r4, #2
    mov r0, #1
    strb r0, [r6,r4]
    add r4, #2
loc_804AD16:
    add r7, #0x20 
    cmp r7, r5
    blt loc_804ACE4
    ldr r7, off_804AD5C // =word_202A020 
    ldr r6, off_804AD54 // =unk_20343E0 
loc_804AD20:
    mov r4, #0
    ldrh r0, [r7,#0x14]
    tst r0, r0
    beq loc_804AD46
loc_804AD28:
    ldrh r1, [r6,r4]
    tst r1, r1
    beq loc_804AD36
    cmp r0, r1
    beq loc_804AD36
    add r4, #4
    b loc_804AD28
loc_804AD36:
    add r4, #2
    ldrh r0, [r6,r4]
    lsl r0, r0, #0x10
    ldr r1, [r7,#0x14]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    orr r0, r1
    str r0, [r7,#0x14]
loc_804AD46:
    add r7, #0x20 
    cmp r7, r5
    blt loc_804AD20
    ldr r0, [sp]
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804AD54:    .word unk_20343E0
off_804AD58:    .word 0x78
off_804AD5C:    .word word_202A020
.endfunc // sub_804ACC8

.func
.thumb_func
sub_804AD60:
    push {r4-r7,lr}
    mov r4, #0
    ldrh r1, [r5,#0x28]
    tst r1, r1
    beq loc_804AD90
    mov r2, #0x20 
    mul r2, r1
    ldr r7, off_804AD94 // =unk_202A3E0 
    add r2, r2, r7
loc_804AD72:
    ldrh r1, [r7,#0x14]
    tst r1, r1
    beq loc_804AD90
    ldrh r1, [r7,#0x1c]
    cmp r0, r1
    bne loc_804AD8A
    add r7, #2
    ldrh r0, [r7,#0x14]
    add r0, #1
    strh r0, [r7,#0x14]
    sub r7, #2
    mov r4, #1
loc_804AD8A:
    add r7, #0x20 
    cmp r7, r2
    blt loc_804AD72
loc_804AD90:
    add r0, r4, #0
    pop {r4-r7,pc}
off_804AD94:    .word unk_202A3E0
.endfunc // sub_804AD60

.func
.thumb_func
sub_804AD98:
    push {r0-r2,lr}
    ldrh r0, [r5,#0x2a]
    sub r0, #1
    blt loc_804ADA4
    strh r0, [r5,#0x2a]
    b locret_804ADAC
loc_804ADA4:
    ldrh r0, [r5,#0x2e]
    sub r0, #1
    blt locret_804ADAC
    strh r0, [r5,#0x2e]
locret_804ADAC:
    pop {r0-r2,pc}
    .byte 0, 0
.endfunc // sub_804AD98

.func
.thumb_func
sub_804ADB0:
    push {lr}
    ldrh r1, [r5,#0x28]
    cmp r1, #7
    blt locret_804ADCE
    ldrh r0, [r5,#0x2e]
    add r0, #7
    cmp r0, r1
    ble locret_804ADCE
    sub r1, r0, r1
    ldrh r0, [r5,#0x2e]
    sub r0, r0, r1
    strh r0, [r5,#0x2e]
    ldrh r0, [r5,#0x2a]
    add r0, r0, r1
    strh r0, [r5,#0x2a]
locret_804ADCE:
    pop {pc}
.endfunc // sub_804ADB0

.func
.thumb_func
sub_804ADD0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    mov r1, #0xff
    strb r1, [r0]
    strb r1, [r0,#2]
    pop {pc}
    .byte 0, 0
.endfunc // sub_804ADD0

.func
.thumb_func
sub_804ADE0:
    push {r4-r7,lr}
    add r4, r1, #0
    add r6, r2, #0
    tst r2, r2
    beq loc_804ADF8
    mov r3, #0x20 
    mul r2, r3
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    mov r1, #0x20 
    mul r1, r6
    add r4, r4, r1
loc_804ADF8:
    add r0, r4, #0
    mov r1, #0x20 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_804ADE0

.func
.thumb_func
sub_804AE04:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #1
    bl sub_811F7EC
    beq loc_804AE44
    mov r0, #0x81
    bl sound_play // () -> void
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrh r2, [r5,#0x34]
    mov r1, #2
    mov r4, #3
    ldrb r3, [r0,r1]
    strb r2, [r0,r1]
    cmp r2, r3
    beq loc_804AE34
    ldr r1, dword_804AE48 // = 
    ldrb r3, [r1,r2]
    mov r1, #4
    eor r3, r1
    strb r3, [r0,r4]
    b loc_804AE3C
loc_804AE34:
    ldrb r3, [r0,r4]
    mov r1, #4
    eor r3, r1
    strb r3, [r0,r4]
loc_804AE3C:
    ldr r0, off_804AE4C // =unk_202A3E0 
    ldrh r1, [r5,#0x28]
    bl loc_8120018
loc_804AE44:
    add sp, sp, #8
    pop {r4-r7,pc}
dword_804AE48:    .word 0x30069A0
off_804AE4C:    .word unk_202A3E0
.endfunc // sub_804AE04

.func
.thumb_func
sub_804AE50:
    push {r4-r7,lr}
    // j
    mov r0, #0x15
    // i
    mov r1, #2
    // cpyOff
    mov r2, #0
    // tileRefs
    ldr r3, off_804AE64 // =unk_203486C 
    mov r4, #8
    mov r5, #0x11
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_804AE50

    pop {r4-r7,pc}
off_804AE64:    .word unk_203486C
.func
.thumb_func
sub_804AE68:
    push {r4-r7,lr}
    sub sp, sp, #4
    ldr r0, dword_804AEB0 // =0xA40000 
    ldrh r1, [r5,#0x34]
    mov r3, #0x10
    mul r1, r3
    add r1, #0x20 
    orr r0, r1
    ldr r1, dword_804AEB4 // =0x2 
    mov r2, #0x15
    ldrb r2, [r5,r2]
    str r2, [sp]
    mov r3, #0xf
    and r2, r3
    ldr r3, off_804AEB8 // =unk_804A29C 
    ldr r4, dword_804AEBC // =0x40000000 
    bl sub_811FAF4
    ldr r1, [sp]
    lsr r1, r1, #4
    sub r1, #1
    bne loc_804AE9E
    ldr r1, off_804AEC0 // =unk_804A2AC 
    bl sub_8120CC8
    mov r2, #0x15
    strb r0, [r5,r2]
loc_804AE9E:
    mov r2, #0x15
    ldrb r0, [r5,r2]
    mov r3, #0xf
    and r0, r2
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r5,r2]
    add sp, sp, #4
    pop {r4-r7,pc}
dword_804AEB0:    .word 0xA40000
dword_804AEB4:    .word 0x2
off_804AEB8:    .word unk_804A29C
dword_804AEBC:    .word 0x40000000
off_804AEC0:    .word unk_804A2AC
.endfunc // sub_804AE68

    push {r4,lr}
    tst r0, r0
    bne loc_804AEE6
    cmp r2, #5
    bne loc_804AED2
    mov r0, #0xf
    b loc_804AEFC
loc_804AED2:
    cmp r2, #0
    bne loc_804AEDA
    mov r0, #3
    b loc_804AEFC
loc_804AEDA:
    cmp r2, #1
    bne loc_804AEE2
    mov r0, #4
    b loc_804AEFC
loc_804AEE2:
    mov r0, #5
    b loc_804AEFC
loc_804AEE6:
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r1, [r4,#0x4c]
    cmp r2, #5
    bne loc_804AEF4
    mov r0, #0x10
    b loc_804AEFC
loc_804AEF4:
    mov r0, #7
    cmp r2, #1
    bne loc_804AEFC
    mov r0, #6
loc_804AEFC:
    bl sub_804AF10
    mov r0, #0x69 
    bl sound_play // () -> void
    ldrb r0, [r5,#3]
    strb r0, [r5,#0xd]
    mov r0, #8
    strb r0, [r5,#2]
    pop {r4,pc}
.func
.thumb_func
sub_804AF10:
    push {lr}
    add r1, r0, #0
    ldr r0, off_804AF1C // =scripts_86C580C 
    bl chatbox_803FD78 // (u16 *scriptArr, u8 scriptID) -> void
    pop {pc}
off_804AF1C:    .word scripts_86C580C
.endfunc // sub_804AF10

.func
.thumb_func
sub_804AF20:
    push {r4-r7,lr}
    add r7, r0, #0
    cmp r0, #7
    ble loc_804AF32
    sub r0, #7
    strh r0, [r5,#0x24]
    mov r0, #6
    strh r0, [r5,#0x20]
    b loc_804AF3A
loc_804AF32:
    sub r0, #1
    strh r0, [r5,#0x20]
    mov r0, #0
    strh r0, [r5,#0x24]
loc_804AF3A:
    mov r4, #0x44 
    add r2, r4, #0
    mov r3, #0
    ldrb r0, [r5,#3]
    lsr r0, r0, #2
    add r0, #1
    strb r0, [r5,r2]
    bl sub_804AB4C
    mov r0, #0x44 
    add r1, r0, #0
    add r2, r0, #1
    ldrb r0, [r5,r1]
    strb r0, [r5,r2]
    bl sub_804AB6C
    ldrh r0, [r5,#0x1e]
    sub r0, #1
    strh r0, [r5,#0x1e]
    cmp r7, #7
    ble loc_804AF6A
    ldrh r0, [r5,#0x24]
    sub r0, #1
    strh r0, [r5,#0x24]
loc_804AF6A:
    ldr r0, off_804AF80 // =unk_200AC80 
    ldr r0, [r0,#0x30] // (dword_200ACB0 - 0x200ac80)
    sub r0, #1
    ldrh r1, [r5,#0x1e]
    cmp r0, r1
    beq locret_804AF7C
    mov r0, #0x83
    bl sound_play // () -> void
locret_804AF7C:
    pop {r4-r7,pc}
    .byte 0, 0
off_804AF80:    .word unk_200AC80
.endfunc // sub_804AF20

.func
.thumb_func
sub_804AF84:
    push {r4-r7,lr}
    // a1
    ldr r0, off_804AFB0 // =unk_804A2B0 
    bl sub_80465A0 // (void *a1) -> void
    mov r6, #0
loc_804AF8E:
    add r0, r6, #0
    bl sub_80466C4
    beq loc_804AFA8
    tst r6, r6
    bne loc_804AF9C
    add r7, r1, #0
loc_804AF9C:
    add r5, r1, #0
    ldr r0, dword_804AFB4 // =0xFFFFFFD8 
    mov r1, #0x58 
    bl sub_800307C
    str r7, [r5,#0x14]
loc_804AFA8:
    add r6, #1
    cmp r6, #3
    blt loc_804AF8E
    pop {r4-r7,pc}
off_804AFB0:    .word unk_804A2B0
dword_804AFB4:    .word 0xFFFFFFD8
.endfunc // sub_804AF84

.func
.thumb_func
sub_804AFB8:
    push {r4-r7,lr}
    mov r0, #0xa
    ldr r1, off_804AFE0 // =unk_2034814 
    mov r2, #0xb
    mov r3, #0xc
    mov r4, #0x14
    bl sub_81202FC
    mov r2, #0x1e
    add r1, r2, #0
    mov r0, #0x1f
    // j
    sub r0, r0, r1
    // i
    mov r1, #2
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_804AFE0 // =unk_2034814 
    mov r4, #0x14
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_804AFB8

    pop {r4-r7,pc}
off_804AFE0:    .word unk_2034814
.func
.thumb_func
sub_804AFE4:
    push {lr}
    ldrh r0, [r5,#0x1e]
    ldr r1, off_804B004 // =unk_200AC80 
    ldr r1, [r1,#0x30] // (dword_200ACB0 - 0x200ac80)
    mov r2, #3
    bl sub_8117084
    ldr r0, off_804B000 // =0xCC 
    mov r1, #0x1b
    mov r2, #3
    bl sub_8116FDC
    pop {pc}
    .byte 0, 0
off_804B000:    .word 0xCC
off_804B004:    .word unk_200AC80
unk_804B008:    .byte 0xC0
    .byte 0x40 
    .byte  0
    .byte  0
byte_804B00C:    .byte 0x70, 0x60, 0x18, 0x10, 0x8
byte_804B011:    .byte 0x30, 0x48, 0x48, 0x30, 0x10, 0x0, 0x0
off_804B018:    .word byte_804B02C
    .word byte_804B031
    .word byte_804B036
    .word byte_804B03B
    .word byte_804B040
byte_804B02C:    .byte 0x0, 0x1, 0x2, 0x3, 0x4
byte_804B031:    .byte 0x1, 0x0, 0x2, 0x3, 0x4
byte_804B036:    .byte 0x2, 0x1, 0x0, 0x3, 0x4
byte_804B03B:    .byte 0x3, 0x2, 0x1, 0x0, 0x4
byte_804B040:    .byte 0x4, 0x3, 0x2, 0x1, 0x0, 0x0, 0x0, 0x0
off_804B048:    .word dword_804B064
    .word byte_804B062
    .word byte_804B060
    .word byte_804B05E
    .word byte_804B05C
byte_804B05C:    .byte 0xC0, 0x40
byte_804B05E:    .byte 0xA0, 0x60
byte_804B060:    .byte 0x80, 0x80
byte_804B062:    .byte 0x40, 0xC0
dword_804B064:    .word 0xFF00
byte_804B068:    .byte 0xC0, 0x40
byte_804B06A:    .byte 0x20, 0x20, 0x20, 0x20, 0x0, 0x0
byte_804B070:    .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1A, 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x4
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x5, 0x0, 0x1, 0x3, 0x12, 0x1A, 0x6, 0x0
    .byte 0x3, 0x5, 0xB, 0xFF, 0x9, 0x0, 0xB, 0xC, 0xD, 0x1A, 0xA, 0x0, 0x0
    .byte 0x1, 0x2, 0x1A, 0xC, 0x0, 0x0, 0x6, 0x11, 0xFF, 0xF, 0x0, 0x2, 0xC
    .byte 0x13, 0x1A, 0x13, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x14, 0x0, 0x5, 0x6, 0x7
    .byte 0x1A, 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF, 0x18, 0x0, 0x0, 0x5, 0xA, 0xFF
    .byte 0x19, 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1B, 0x0, 0x1, 0x4, 0x13, 0xFF, 0x1C
    .byte 0x0, 0x2, 0xB, 0x15, 0xFF, 0x1E, 0x0, 0x1, 0x11, 0x12, 0x1A, 0x25, 0x0
    .byte 0x1, 0x6, 0x12, 0xFF, 0x28, 0x0, 0x8, 0xA, 0xF, 0xFF, 0x2B, 0x0, 0x0
    .byte 0x11, 0x13, 0x1A, 0x2C, 0x0, 0x4, 0x6, 0x12, 0xFF, 0x36, 0x0, 0x1, 0xB
    .byte 0x11, 0x1A, 0x37, 0x0, 0x2, 0xA, 0x15, 0x1A, 0x39, 0x0, 0x9, 0xB, 0x10
    .byte 0x1A, 0x3D, 0x0, 0x2, 0x9, 0xF, 0xFF, 0x3E, 0x0, 0x5, 0xA, 0x13, 0xFF
    .byte 0x40, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x44, 0x0, 0x0, 0x5, 0x12, 0x1A, 0x45
    .byte 0x0, 0x0, 0xB, 0x11, 0x1A, 0x47, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x48, 0x0
    .byte 0x7, 0xB, 0x12, 0x1A, 0x49, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x59, 0x0, 0x0
    .byte 0x6, 0x13, 0x1A, 0x5A, 0x0, 0x2, 0x11, 0x14, 0x1A, 0x5B, 0x0, 0x9, 0xB
    .byte 0x15, 0x1A, 0x5C, 0x0, 0x4, 0x5, 0x6, 0xFF, 0x5D, 0x0, 0xB, 0xC, 0xD
    .byte 0xFF, 0x62, 0x0, 0x5, 0xA, 0xB, 0xFF, 0x6B, 0x0, 0x3, 0x4, 0x5, 0xFF
    .byte 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF, 0x74, 0x0, 0x9, 0xA, 0x13, 0xFF, 0x78
    .byte 0x0, 0x8, 0xA, 0x18, 0xFF, 0x79, 0x0, 0x3, 0xF, 0x14, 0xFF, 0x7B, 0x0
    .byte 0x9, 0xA, 0xB, 0xFF, 0x7C, 0x0, 0x2, 0x3, 0x4, 0xFF, 0x7E, 0x0, 0x5
    .byte 0x6, 0x11, 0xFF, 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0x83, 0x0, 0x0, 0x2, 0xF, 0x1A, 0x84, 0x0, 0x1, 0x6, 0x18
    .byte 0x1A, 0x8F, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6, 0x7, 0xFF
    .byte 0x92, 0x0, 0xF, 0x12, 0x19, 0x1A, 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A, 0x9B
    .byte 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C, 0x0, 0x2, 0xC, 0xF, 0x1A, 0x9D, 0x0
    .byte 0x7, 0xA, 0x15, 0x1A, 0xA2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1
    .byte 0x5, 0x12, 0x1A, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAA, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB1, 0x0, 0x1A, 0xFF, 0xFF
    .byte 0xFF, 0xB2, 0x0, 0x0, 0x5, 0x11, 0x1A, 0xB7, 0x0, 0x1A, 0xFF, 0xFF, 0xFF
    .byte 0xB8, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBE, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBF
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC2, 0x0
    .byte 0x1A, 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_804B21A:    .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1A, 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x4
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x5, 0x0, 0x1, 0x3, 0x12, 0x1A, 0x6, 0x0
    .byte 0x3, 0x5, 0xB, 0xFF, 0x9, 0x0, 0xB, 0xC, 0xD, 0x1A, 0xA, 0x0, 0x0
    .byte 0x1, 0x2, 0x1A, 0xC, 0x0, 0x0, 0x6, 0x11, 0xFF, 0xD, 0x0, 0xB, 0x12
    .byte 0x15, 0xFF, 0xF, 0x0, 0x2, 0xC, 0x13, 0x1A, 0x10, 0x0, 0x1, 0x4, 0x11
    .byte 0xFF, 0x13, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x14, 0x0, 0x5, 0x6, 0x7, 0x1A
    .byte 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF, 0x18, 0x0, 0x0, 0x5, 0xA, 0xFF, 0x19
    .byte 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1B, 0x0, 0x1, 0x4, 0x13, 0xFF, 0x1C, 0x0
    .byte 0x2, 0xB, 0x15, 0xFF, 0x1E, 0x0, 0x1, 0x11, 0x12, 0x1A, 0x1F, 0x0, 0x0
    .byte 0x4, 0x10, 0xFF, 0x20, 0x0, 0x2, 0xB, 0xF, 0xFF, 0x22, 0x0, 0x9, 0xB
    .byte 0x12, 0xFF, 0x23, 0x0, 0x0, 0x4, 0x9, 0xFF, 0x25, 0x0, 0x1, 0x6, 0x12
    .byte 0xFF, 0x26, 0x0, 0x2, 0x11, 0x15, 0xFF, 0x28, 0x0, 0x8, 0xA, 0xF, 0xFF
    .byte 0x29, 0x0, 0x4, 0x10, 0x19, 0xFF, 0x2B, 0x0, 0x0, 0x11, 0x13, 0x1A, 0x2C
    .byte 0x0, 0x4, 0x6, 0x12, 0xFF, 0x32, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x33, 0x0
    .byte 0x6, 0xC, 0x16, 0xFF, 0x34, 0x0, 0xB, 0x11, 0x13, 0xFF, 0x36, 0x0, 0x1
    .byte 0xB, 0x11, 0x1A, 0x37, 0x0, 0x2, 0xA, 0x15, 0x1A, 0x38, 0x0, 0x6, 0xC
    .byte 0xE, 0x1A, 0x3C, 0x0, 0x1, 0x5, 0xE, 0xFF, 0x3D, 0x0, 0x2, 0x9, 0xF
    .byte 0xFF, 0x3E, 0x0, 0x5, 0xA, 0x13, 0xFF, 0x40, 0x0, 0x9, 0xA, 0xB, 0xFF
    .byte 0x41, 0x0, 0x2, 0x3, 0x4, 0xFF, 0x44, 0x0, 0x0, 0x5, 0x12, 0x1A, 0x45
    .byte 0x0, 0x0, 0xB, 0x11, 0x1A, 0x47, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x48, 0x0
    .byte 0x7, 0xB, 0x12, 0x1A, 0x49, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x4A, 0x0, 0x1
    .byte 0x11, 0x16, 0xFF, 0x4B, 0x0, 0x1, 0xC, 0x15, 0xFF, 0x4C, 0x0, 0x5, 0xE
    .byte 0x19, 0xFF, 0x4D, 0x0, 0x0, 0x8, 0x18, 0xFF, 0x4E, 0x0, 0x4, 0xA, 0xD
    .byte 0xFF, 0x4F, 0x0, 0x7, 0x12, 0x16, 0xFF, 0x50, 0x0, 0x5, 0x9, 0x11, 0x1A
    .byte 0x51, 0x0, 0x1, 0xB, 0xF, 0xFF, 0x52, 0x0, 0xA, 0x15, 0x16, 0xFF, 0x54
    .byte 0x0, 0x0, 0xC, 0x13, 0xFF, 0x59, 0x0, 0x0, 0x6, 0x13, 0x1A, 0x5A, 0x0
    .byte 0x2, 0x11, 0x14, 0x1A, 0x5B, 0x0, 0x9, 0xB, 0x15, 0x1A, 0x5C, 0x0, 0x4
    .byte 0x5, 0x6, 0xFF, 0x5D, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x5F, 0x0, 0x1, 0x2
    .byte 0x3, 0xFF, 0x62, 0x0, 0x5, 0xA, 0xB, 0xFF, 0x63, 0x0, 0x4, 0xC, 0x15
    .byte 0xFF, 0x68, 0x0, 0x6, 0xA, 0x11, 0xFF, 0x69, 0x0, 0xE, 0x13, 0x18, 0xFF
    .byte 0x6B, 0x0, 0x3, 0x4, 0x5, 0xFF, 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF, 0x6E
    .byte 0x0, 0x7, 0xF, 0x15, 0xFF, 0x71, 0x0, 0x9, 0xE, 0x16, 0xFF, 0x74, 0x0
    .byte 0x9, 0xA, 0x13, 0xFF, 0x75, 0x0, 0x1, 0xB, 0x15, 0xFF, 0x77, 0x0, 0x0
    .byte 0x11, 0x16, 0x1A, 0x78, 0x0, 0x8, 0xA, 0x18, 0xFF, 0x79, 0x0, 0x3, 0xF
    .byte 0x14, 0xFF, 0x7B, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x7C, 0x0, 0x2, 0x3, 0x4
    .byte 0xFF, 0x7E, 0x0, 0x5, 0x6, 0x11, 0xFF, 0x7F, 0x0, 0x0, 0xB, 0x13, 0xFF
    .byte 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x83
    .byte 0x0, 0x0, 0x2, 0xF, 0x1A, 0x84, 0x0, 0x1, 0x6, 0x18, 0x1A, 0x86, 0x0
    .byte 0x7, 0xC, 0xB, 0xFF, 0x87, 0x0, 0x4, 0x8, 0xF, 0xFF, 0x8D, 0x0, 0x5
    .byte 0xB, 0x16, 0xFF, 0x8E, 0x0, 0xF, 0x13, 0x15, 0xFF, 0x8F, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6, 0x7, 0xFF, 0x91, 0x0, 0x0, 0x12, 0x13
    .byte 0xFF, 0x92, 0x0, 0xF, 0x12, 0x19, 0x1A, 0x93, 0x0, 0x0, 0x6, 0x12, 0x1A
    .byte 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A, 0x9B, 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C
    .byte 0x0, 0x2, 0xC, 0xF, 0x1A, 0x9D, 0x0, 0x7, 0xA, 0x15, 0x1A, 0x9E, 0x0
    .byte 0x5, 0xF, 0x12, 0xFF, 0x9F, 0x0, 0x9, 0xC, 0x13, 0xFF, 0xA2, 0x0, 0x1A
    .byte 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1, 0x5, 0x12, 0x1A, 0xA4, 0x0, 0x1, 0xC
    .byte 0x12, 0xFF, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA8, 0x0, 0x0, 0x1, 0x12
    .byte 0x1A, 0xAA, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF, 0xFF
    .byte 0xAC, 0x0, 0x0, 0x1, 0x6, 0x1A, 0xAD, 0x0, 0x4, 0xC, 0x11, 0xFF, 0xAE
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB1, 0x0
    .byte 0x1A, 0xFF, 0xFF, 0xFF, 0xB2, 0x0, 0x0, 0x5, 0x11, 0x1A, 0xB3, 0x0, 0x7
    .byte 0xE, 0x18, 0xFF, 0xB5, 0x0, 0x8, 0x10, 0x19, 0xFF, 0xB7, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0xB8, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB9, 0x0, 0x6, 0xB, 0x11
    .byte 0xFF, 0xBA, 0x0, 0x5, 0xB, 0x13, 0xFF, 0xBB, 0x0, 0x6, 0x11, 0x15, 0x1A
    .byte 0xBC, 0x0, 0x0, 0x11, 0x19, 0x1A, 0xBD, 0x0, 0x0, 0x5, 0x15, 0xFF, 0xBE
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0, 0x0
    .byte 0x1A, 0xFF, 0xFF, 0xFF, 0xC1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC2, 0x0, 0x1A
    .byte 0xFF, 0xFF, 0xFF, 0xC3, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC4, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0xC5, 0x0, 0x6, 0x12, 0x14, 0xFF, 0xC6, 0x0, 0x1, 0x6, 0x11
    .byte 0xFF, 0xC8, 0x0, 0x2, 0x3, 0x4, 0xFF, 0xCA, 0x0, 0xE, 0xF, 0x15, 0xFF
    .byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_804B52C:    .byte 0x1, 0x0, 0x0, 0x1, 0x2, 0x1A, 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x3
    .byte 0x0, 0x11, 0x12, 0x13, 0x1A, 0x4, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x5, 0x0
    .byte 0x1, 0x3, 0x12, 0x1A, 0x6, 0x0, 0x3, 0x5, 0xB, 0xFF, 0x9, 0x0, 0xB
    .byte 0xC, 0xD, 0x1A, 0xA, 0x0, 0x0, 0x1, 0x2, 0x1A, 0xC, 0x0, 0x0, 0x6
    .byte 0x11, 0xFF, 0xD, 0x0, 0xB, 0x12, 0x15, 0xFF, 0xF, 0x0, 0x2, 0xC, 0x13
    .byte 0x1A, 0x10, 0x0, 0x1, 0x4, 0x11, 0xFF, 0x14, 0x0, 0x5, 0x6, 0x7, 0x1A
    .byte 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF, 0x18, 0x0, 0x0, 0x5, 0xA, 0xFF, 0x19
    .byte 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1B, 0x0, 0x1, 0x4, 0x13, 0xFF, 0x1C, 0x0
    .byte 0x2, 0xB, 0x15, 0xFF, 0x1E, 0x0, 0x1, 0x11, 0x12, 0x1A, 0x1F, 0x0, 0x0
    .byte 0x4, 0x10, 0xFF, 0x20, 0x0, 0x2, 0xB, 0xF, 0xFF, 0x22, 0x0, 0x9, 0xB
    .byte 0x12, 0xFF, 0x23, 0x0, 0x0, 0x4, 0x9, 0xFF, 0x25, 0x0, 0x1, 0x6, 0x12
    .byte 0xFF, 0x26, 0x0, 0x2, 0x11, 0x15, 0xFF, 0x28, 0x0, 0x8, 0xA, 0xF, 0xFF
    .byte 0x29, 0x0, 0x4, 0x10, 0x19, 0xFF, 0x2B, 0x0, 0x0, 0x11, 0x13, 0x1A, 0x2C
    .byte 0x0, 0x4, 0x6, 0x12, 0xFF, 0x36, 0x0, 0x1, 0xB, 0x11, 0x1A, 0x37, 0x0
    .byte 0x2, 0xA, 0x15, 0x1A, 0x38, 0x0, 0x6, 0xC, 0xE, 0x1A, 0x39, 0x0, 0x9
    .byte 0xB, 0x10, 0x1A, 0x3D, 0x0, 0x2, 0x9, 0xF, 0xFF, 0x3E, 0x0, 0x5, 0xA
    .byte 0x13, 0xFF, 0x40, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x41, 0x0, 0x2, 0x3, 0x4
    .byte 0xFF, 0x47, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x48, 0x0, 0x7, 0xB, 0x12, 0x1A
    .byte 0x49, 0x0, 0x7, 0xB, 0x12, 0x1A, 0x4C, 0x0, 0x5, 0xE, 0x19, 0xFF, 0x4D
    .byte 0x0, 0x0, 0x8, 0x18, 0xFF, 0x59, 0x0, 0x0, 0x6, 0x13, 0x1A, 0x5A, 0x0
    .byte 0x2, 0x11, 0x14, 0x1A, 0x5B, 0x0, 0x9, 0xB, 0x15, 0x1A, 0x5C, 0x0, 0x4
    .byte 0x5, 0x6, 0xFF, 0x5D, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x5F, 0x0, 0x1, 0x2
    .byte 0x3, 0xFF, 0x60, 0x0, 0x3, 0x4, 0x5, 0xFF, 0x62, 0x0, 0x5, 0xA, 0xB
    .byte 0xFF, 0x63, 0x0, 0x4, 0xC, 0x15, 0xFF, 0x65, 0x0, 0x0, 0x6, 0xB, 0xFF
    .byte 0x68, 0x0, 0x6, 0xA, 0x11, 0xFF, 0x69, 0x0, 0xE, 0x13, 0x18, 0xFF, 0x6B
    .byte 0x0, 0x3, 0x4, 0x5, 0xFF, 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF, 0x6E, 0x0
    .byte 0x7, 0xF, 0x15, 0xFF, 0x6F, 0x0, 0x3, 0xC, 0x13, 0xFF, 0x71, 0x0, 0x9
    .byte 0xE, 0x16, 0xFF, 0x72, 0x0, 0xD, 0x14, 0x18, 0xFF, 0x74, 0x0, 0x9, 0xA
    .byte 0x13, 0xFF, 0x78, 0x0, 0x8, 0xA, 0x18, 0xFF, 0x79, 0x0, 0x3, 0xF, 0x14
    .byte 0xFF, 0x7B, 0x0, 0x9, 0xA, 0xB, 0xFF, 0x7C, 0x0, 0x2, 0x3, 0x4, 0xFF
    .byte 0x7E, 0x0, 0x5, 0x6, 0x11, 0xFF, 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x83, 0x0, 0x0, 0x2, 0xF, 0x1A, 0x84, 0x0
    .byte 0x1, 0x6, 0x18, 0x1A, 0x87, 0x0, 0x4, 0x8, 0xF, 0xFF, 0x88, 0x0, 0x7
    .byte 0xE, 0x15, 0xFF, 0x8F, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6
    .byte 0x7, 0xFF, 0x92, 0x0, 0xF, 0x12, 0x19, 0x1A, 0x93, 0x0, 0x0, 0x6, 0x12
    .byte 0x1A, 0x94, 0x0, 0x8, 0xE, 0x13, 0x1A, 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A
    .byte 0x9B, 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C, 0x0, 0x2, 0xC, 0xF, 0x1A, 0x9D
    .byte 0x0, 0x7, 0xA, 0x15, 0x1A, 0x9E, 0x0, 0x5, 0xF, 0x12, 0xFF, 0x9F, 0x0
    .byte 0x9, 0xC, 0x13, 0xFF, 0xA2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1
    .byte 0x5, 0x12, 0x1A, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAA, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAF, 0x0, 0x1A, 0xFF, 0xFF
    .byte 0xFF, 0xB1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB2, 0x0, 0x0, 0x5, 0x11, 0x1A
    .byte 0xB7, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB8, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBE
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xBF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0, 0x0
    .byte 0x1A, 0xFF, 0xFF, 0xFF, 0xC2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xDD, 0x0, 0x11
    .byte 0xFF, 0xFF, 0xFF, 0xF2, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xF5, 0x0, 0x13, 0xFF
    .byte 0xFF, 0xFF, 0xF8, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xFB, 0x0, 0x6, 0xFF, 0xFF
    .byte 0xFF, 0xFE, 0x0, 0x3, 0xFF, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0xFF
    .byte 0x4, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x7, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xA
    .byte 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xD, 0x1, 0x4, 0xFF, 0xFF, 0xFF, 0x0, 0x0
    .byte 0xFF, 0xFF, 0xFF, 0xFF
byte_804B7BA:    .byte 0x2, 0x0, 0xB, 0xC, 0xD, 0x1A, 0x3, 0x0, 0x11, 0x12, 0x13
    .byte 0x1A, 0x6, 0x0, 0x3, 0x5, 0xB, 0xFF, 0x7, 0x0, 0x0, 0x6
    .byte 0x11, 0xFF, 0xA, 0x0, 0x0, 0x1, 0x2, 0x1A, 0xB, 0x0, 0x10
    .byte 0x11, 0x12, 0x1A, 0xD, 0x0, 0xB, 0x12, 0x15, 0xFF, 0xE, 0x0
    .byte 0x1, 0xC, 0xF, 0xFF, 0x10, 0x0, 0x1, 0x4, 0x11, 0xFF, 0x13
    .byte 0x0, 0xB, 0xC, 0xD, 0x1A, 0x15, 0x0, 0x12, 0x13, 0x14, 0xFF
    .byte 0x16, 0x0, 0x2, 0x3, 0x4, 0xFF, 0x17, 0x0, 0xF, 0x10, 0x11
    .byte 0xFF, 0x19, 0x0, 0x6, 0xC, 0x19, 0xFF, 0x1A, 0x0, 0xC, 0x12
    .byte 0x18, 0xFF, 0x1C, 0x0, 0x2, 0xB, 0x15, 0xFF, 0x1D, 0x0, 0x6
    .byte 0x11, 0x12, 0xFF, 0x20, 0x0, 0x2, 0xB, 0xF, 0xFF, 0x21, 0x0
    .byte 0x1, 0x11, 0x15, 0xFF, 0x23, 0x0, 0x0, 0x4, 0x9, 0xFF, 0x24
    .byte 0x0, 0x0, 0x9, 0x12, 0xFF, 0x26, 0x0, 0x2, 0x11, 0x15, 0xFF
    .byte 0x27, 0x0, 0x0, 0x3, 0xC, 0xFF, 0x29, 0x0, 0x4, 0x10, 0x19
    .byte 0xFF, 0x2A, 0x0, 0x5, 0xD, 0x16, 0xFF, 0x2C, 0x0, 0x4, 0x6
    .byte 0x12, 0xFF, 0x2D, 0x0, 0x1, 0x5, 0xC, 0xFF, 0x2E, 0x0, 0x6
    .byte 0x11, 0x13, 0xFF, 0x2F, 0x0, 0x0, 0xB, 0x15, 0xFF, 0x30, 0x0
    .byte 0x7, 0xF, 0x12, 0xFF, 0x32, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x33
    .byte 0x0, 0x6, 0xC, 0x16, 0xFF, 0x34, 0x0, 0xB, 0x11, 0x13, 0xFF
    .byte 0x38, 0x0, 0x6, 0xC, 0xE, 0x1A, 0x39, 0x0, 0x9, 0xB, 0x10
    .byte 0x1A, 0x3A, 0x0, 0x6, 0xA, 0x11, 0xFF, 0x3B, 0x0, 0x7, 0xF
    .byte 0x12, 0xFF, 0x3C, 0x0, 0x1, 0x5, 0xE, 0xFF, 0x3E, 0x0, 0x5
    .byte 0xA, 0x13, 0xFF, 0x3F, 0x0, 0x0, 0xB, 0x14, 0xFF, 0x41, 0x0
    .byte 0x2, 0x3, 0x4, 0xFF, 0x42, 0x0, 0xF, 0x10, 0x11, 0xFF, 0x43
    .byte 0x0, 0x6, 0x12, 0x15, 0xFF, 0x4A, 0x0, 0x1, 0x11, 0x16, 0xFF
    .byte 0x4B, 0x0, 0x1, 0xC, 0x15, 0xFF, 0x4C, 0x0, 0x5, 0xE, 0x19
    .byte 0xFF, 0x4D, 0x0, 0x0, 0x8, 0x18, 0xFF, 0x4E, 0x0, 0x4, 0xA
    .byte 0xD, 0xFF, 0x4F, 0x0, 0x7, 0x12, 0x16, 0xFF, 0x50, 0x0, 0x5
    .byte 0x9, 0x11, 0x1A, 0x51, 0x0, 0x1, 0xB, 0xF, 0xFF, 0x52, 0x0
    .byte 0xA, 0x15, 0x16, 0xFF, 0x54, 0x0, 0x0, 0xC, 0x13, 0xFF, 0x56
    .byte 0x0, 0x7, 0xB, 0x10, 0xFF, 0x57, 0x0, 0x9, 0xC, 0x14, 0xFF
    .byte 0x5D, 0x0, 0xB, 0xC, 0xD, 0xFF, 0x5E, 0x0, 0x11, 0x12, 0x13
    .byte 0xFF, 0x60, 0x0, 0x3, 0x4, 0x5, 0xFF, 0x61, 0x0, 0x5, 0x6
    .byte 0x7, 0xFF, 0x63, 0x0, 0x4, 0xC, 0x15, 0xFF, 0x64, 0x0, 0x6
    .byte 0x12, 0x19, 0xFF, 0x65, 0x0, 0x0, 0x6, 0xB, 0xFF, 0x66, 0x0
    .byte 0x1, 0x11, 0x18, 0xFF, 0x69, 0x0, 0xE, 0x13, 0x18, 0xFF, 0x6A
    .byte 0x0, 0xD, 0x14, 0x19, 0xFF, 0x6C, 0x0, 0x11, 0x12, 0x13, 0xFF
    .byte 0x6D, 0x0, 0x0, 0x1, 0x2, 0xFF, 0x6F, 0x0, 0x3, 0xC, 0x13
    .byte 0xFF, 0x70, 0x0, 0x4, 0xE, 0x19, 0xFF, 0x72, 0x0, 0xD, 0x14
    .byte 0x18, 0xFF, 0x73, 0x0, 0x8, 0xA, 0x10, 0xFF, 0x75, 0x0, 0x1
    .byte 0xB, 0x15, 0xFF, 0x77, 0x0, 0x0, 0x11, 0x16, 0x1A, 0x79, 0x0
    .byte 0x3, 0xF, 0x14, 0xFF, 0x7A, 0x0, 0x7, 0xC, 0x15, 0xFF, 0x7C
    .byte 0x0, 0x2, 0x3, 0x4, 0xFF, 0x7D, 0x0, 0xB, 0xC, 0xD, 0xFF
    .byte 0x7E, 0x0, 0x5, 0x6, 0x11, 0xFF, 0x7F, 0x0, 0x0, 0xB, 0x13
    .byte 0xFF, 0x81, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x82, 0x0, 0x1A, 0xFF
    .byte 0xFF, 0xFF, 0x84, 0x0, 0x1, 0x6, 0x18, 0x1A, 0x85, 0x0, 0x4
    .byte 0x5, 0xE, 0x1A, 0x86, 0x0, 0x7, 0xC, 0xB, 0xFF, 0x88, 0x0
    .byte 0x7, 0xE, 0x15, 0xFF, 0x89, 0x0, 0x16, 0x18, 0x19, 0xFF, 0x8D
    .byte 0x0, 0x5, 0xB, 0x16, 0xFF, 0x8E, 0x0, 0xF, 0x13, 0x15, 0xFF
    .byte 0x8F, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0x90, 0x0, 0x5, 0x6, 0x7
    .byte 0xFF, 0x91, 0x0, 0x0, 0x12, 0x13, 0xFF, 0x92, 0x0, 0xF, 0x12
    .byte 0x19, 0x1A, 0x93, 0x0, 0x0, 0x6, 0x12, 0x1A, 0x94, 0x0, 0x8
    .byte 0xE, 0x13, 0x1A, 0x95, 0x0, 0x1, 0x11, 0x16, 0x1A, 0x96, 0x0
    .byte 0x5, 0xD, 0x12, 0x1A, 0x9A, 0x0, 0x0, 0x3, 0xB, 0x1A, 0x9B
    .byte 0x0, 0x4, 0xB, 0x10, 0x1A, 0x9C, 0x0, 0x2, 0xC, 0xF, 0x1A
    .byte 0x9D, 0x0, 0x7, 0xA, 0x15, 0x1A, 0x9E, 0x0, 0x5, 0xF, 0x12
    .byte 0xFF, 0x9F, 0x0, 0x9, 0xC, 0x13, 0xFF, 0xA0, 0x0, 0x8, 0x10
    .byte 0x19, 0xFF, 0xA2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA3, 0x0, 0x1
    .byte 0x5, 0x12, 0x1A, 0xA4, 0x0, 0x1, 0xC, 0x12, 0xFF, 0xA5, 0x0
    .byte 0x8, 0x10, 0x19, 0xFF, 0xA6, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xA7
    .byte 0x0, 0x0, 0xB, 0x11, 0xFF, 0xA8, 0x0, 0x0, 0x1, 0x12, 0x1A
    .byte 0xAA, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xAB, 0x0, 0x1A, 0xFF, 0xFF
    .byte 0xFF, 0xAC, 0x0, 0x0, 0x1, 0x6, 0x1A, 0xAD, 0x0, 0x4, 0xC
    .byte 0x11, 0xFF, 0xAF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB0, 0x0, 0xA
    .byte 0xF, 0x19, 0xFF, 0xB1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB2, 0x0
    .byte 0x0, 0x5, 0x11, 0x1A, 0xB3, 0x0, 0x7, 0xE, 0x18, 0xFF, 0xB4
    .byte 0x0, 0xA, 0x14, 0x16, 0xFF, 0xB5, 0x0, 0x8, 0x10, 0x19, 0xFF
    .byte 0xB7, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xB8, 0x0, 0x1A, 0xFF, 0xFF
    .byte 0xFF, 0xB9, 0x0, 0x6, 0xB, 0x11, 0xFF, 0xBA, 0x0, 0x5, 0xB
    .byte 0x13, 0xFF, 0xBB, 0x0, 0x6, 0x11, 0x15, 0x1A, 0xBC, 0x0, 0x0
    .byte 0x11, 0x19, 0x1A, 0xBD, 0x0, 0x0, 0x5, 0x15, 0xFF, 0xBE, 0x0
    .byte 0x1A, 0xFF, 0xFF, 0xFF, 0xBF, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC0
    .byte 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC1, 0x0, 0x1A, 0xFF, 0xFF, 0xFF
    .byte 0xC2, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xC5, 0x0, 0x6, 0x12, 0x14
    .byte 0xFF, 0xC6, 0x0, 0x1, 0x6, 0x11, 0xFF, 0xC8, 0x0, 0x2, 0x3
    .byte 0x4, 0xFF, 0xCA, 0x0, 0xE, 0xF, 0x15, 0xFF, 0xDD, 0x0, 0x11
    .byte 0xFF, 0xFF, 0xFF, 0xDE, 0x0, 0x11, 0xFF, 0xFF, 0xFF, 0xE0, 0x0
    .byte 0x1, 0xFF, 0xFF, 0xFF, 0xE1, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xF2
    .byte 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xF3, 0x0, 0x0, 0xFF, 0xFF, 0xFF
    .byte 0xF5, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF6, 0x0, 0x13, 0xFF, 0xFF
    .byte 0xFF, 0xF8, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF9, 0x0, 0x13, 0xFF
    .byte 0xFF, 0xFF, 0xFB, 0x0, 0x6, 0xFF, 0xFF, 0xFF, 0xFC, 0x0, 0x6
    .byte 0xFF, 0xFF, 0xFF, 0xFE, 0x0, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
    .byte 0x3, 0xFF, 0xFF, 0xFF, 0x1, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x2
    .byte 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x4, 0x1, 0x3, 0xFF, 0xFF, 0xFF
    .byte 0x5, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x7, 0x1, 0x2, 0xFF, 0xFF
    .byte 0xFF, 0x8, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xA, 0x1, 0x9, 0xFF
    .byte 0xFF, 0xFF, 0xB, 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xD, 0x1, 0x4
    .byte 0xFF, 0xFF, 0xFF, 0xE, 0x1, 0x4, 0xFF, 0xFF, 0xFF, 0x10, 0x1
    .byte 0x2, 0xFF, 0xFF, 0xFF, 0x11, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x0
    .byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_804BB92:    .byte 0x8, 0x0, 0x15, 0xFF, 0xFF, 0xFF, 0x11, 0x0, 0xD, 0x10, 0x16
    .byte 0xFF, 0x31, 0x0, 0x6, 0x13, 0x15, 0xFF, 0x35, 0x0, 0x6, 0x12
    .byte 0x15, 0xFF, 0x46, 0x0, 0x7, 0xD, 0xF, 0x1A, 0x53, 0x0, 0xD
    .byte 0xFF, 0xFF, 0xFF, 0x55, 0x0, 0xC, 0xFF, 0xFF, 0xFF, 0x58, 0x0
    .byte 0xD, 0x11, 0x18, 0xFF, 0x67, 0x0, 0x7, 0x9, 0x12, 0xFF, 0x76
    .byte 0x0, 0x8, 0xC, 0x16, 0xFF, 0x80, 0x0, 0xD, 0xE, 0x13, 0xFF
    .byte 0x8A, 0x0, 0xD, 0xFF, 0xFF, 0xFF, 0x8B, 0x0, 0x11, 0xFF, 0xFF
    .byte 0xFF, 0x8C, 0x0, 0x9, 0xFF, 0xFF, 0xFF, 0x97, 0x0, 0xE, 0xFF
    .byte 0xFF, 0xFF, 0x98, 0x0, 0xF, 0xFF, 0xFF, 0xFF, 0xA1, 0x0, 0x9
    .byte 0xE, 0x18, 0xFF, 0xA9, 0x0, 0x19, 0xFF, 0xFF, 0xFF, 0xB6, 0x0
    .byte 0x14, 0xFF, 0xFF, 0xFF, 0xC7, 0x0, 0x7, 0xD, 0x13, 0xFF, 0xC9
    .byte 0x0, 0xB, 0xC, 0xD, 0xFF, 0xDD, 0x0, 0x11, 0xFF, 0xFF, 0xFF
    .byte 0xDE, 0x0, 0x11, 0xFF, 0xFF, 0xFF, 0xDF, 0x0, 0x11, 0xFF, 0xFF
    .byte 0xFF, 0xE0, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xE1, 0x0, 0x1, 0xFF
    .byte 0xFF, 0xFF, 0xE2, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xF2, 0x0, 0x0
    .byte 0xFF, 0xFF, 0xFF, 0xF3, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xF4, 0x0
    .byte 0x0, 0xFF, 0xFF, 0xFF, 0xF5, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF6
    .byte 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF7, 0x0, 0x13, 0xFF, 0xFF, 0xFF
    .byte 0xF8, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xF9, 0x0, 0x13, 0xFF, 0xFF
    .byte 0xFF, 0xFA, 0x0, 0x13, 0xFF, 0xFF, 0xFF, 0xFB, 0x0, 0x6, 0xFF
    .byte 0xFF, 0xFF, 0xFC, 0x0, 0x6, 0xFF, 0xFF, 0xFF, 0xFD, 0x0, 0x6
    .byte 0xFF, 0xFF, 0xFF, 0xFE, 0x0, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
    .byte 0x3, 0xFF, 0xFF, 0xFF, 0x0, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x1
    .byte 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x2, 0x1, 0x1, 0xFF, 0xFF, 0xFF
    .byte 0x3, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0x4, 0x1, 0x3, 0xFF, 0xFF
    .byte 0xFF, 0x5, 0x1, 0x3, 0xFF, 0xFF, 0xFF, 0x6, 0x1, 0x3, 0xFF
    .byte 0xFF, 0xFF, 0x7, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x8, 0x1, 0x2
    .byte 0xFF, 0xFF, 0xFF, 0x9, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0xA, 0x1
    .byte 0x9, 0xFF, 0xFF, 0xFF, 0xB, 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xC
    .byte 0x1, 0x9, 0xFF, 0xFF, 0xFF, 0xD, 0x1, 0x4, 0xFF, 0xFF, 0xFF
    .byte 0xE, 0x1, 0x4, 0xFF, 0xFF, 0xFF, 0xF, 0x1, 0x4, 0xFF, 0xFF
    .byte 0xFF, 0x10, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x11, 0x1, 0x2, 0xFF
    .byte 0xFF, 0xFF, 0x12, 0x1, 0x2, 0xFF, 0xFF, 0xFF, 0x0, 0x0, 0xFF
    .byte 0xFF, 0xFF, 0xFF
.endfunc // sub_804AFE4

.func
.thumb_func
sub_804BD00:
    push {r4-r7,lr}
    ldr r5, off_804BD70 // =unk_200AC80 
    bl sub_804BFF0
    str r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
    str r1, [r5,#0x50] // (dword_200ACD0 - 0x200ac80)
    ldr r0, off_804BD74 // =unk_804B008 
    mov r1, #2
    bl sub_804BD7C
    cmp r0, #0
    bne loc_804BD26
loc_804BD18:
    ldr r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
    add r1, r5, #0
    add r1, #0x34 
    bl sub_804BDB4
    tst r0, r0
    bne loc_804BD34
loc_804BD26:
    ldr r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
    add r1, r5, #0
    add r1, #0x34 
    bl sub_804BE1C
    tst r0, r0
    beq loc_804BD18
loc_804BD34:
    ldr r0, [r5,#0x50] // (dword_200ACD0 - 0x200ac80)
    mov r1, #5
    bl sub_804BD7C
    add r2, r0, #0
    lsl r0, r0, #2
    ldr r7, off_804BD78 // =off_804B018 
    ldr r0, [r7,r0]
    add r1, r5, #0
    add r1, #0x34 
    bl sub_804BE88
    push {r0,r1}
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r2, [r0,#5]
    pop {r0,r1}
    push {r0,r1}
    bl sub_804BEEC
    pop {r0,r1}
    beq loc_804BD68
    ldr r2, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
    bl sub_804BF18
    b locret_804BD6E
loc_804BD68:
    ldr r0, [r5,#0x4c] // (dword_200ACCC - 0x200ac80)
    bl sub_804BF94
locret_804BD6E:
    pop {r4-r7,pc}
off_804BD70:    .word unk_200AC80
off_804BD74:    .word unk_804B008
off_804BD78:    .word off_804B018
.endfunc // sub_804BD00

.func
.thumb_func
sub_804BD7C:
    push {r5,lr}
    push {r0,r1}
    bl change_20013F0_800151C // () -> int
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    pop {r6,r7}
    sub r7, #1
    push {r6,r7}
    mov r1, #0
loc_804BD90:
    ldrb r3, [r6,r7]
    add r1, r1, r3
    sub r7, #1
    bge loc_804BD90
    push {r6}
    svc 6
    pop {r6}
    mov r2, #0
    pop {r6,r7}
    mov r0, #0
loc_804BDA4:
    ldrb r3, [r6,r2]
    add r0, r0, r3
    cmp r0, r1
    bge loc_804BDB0
    add r2, #1
    b loc_804BDA4
loc_804BDB0:
    add r0, r2, #0
    pop {r5,pc}
.endfunc // sub_804BD7C

.func
.thumb_func
sub_804BDB4:
    push {r5,lr}
    mov r2, r8
    mov r3, r9
    push {r2,r3}
    mov r2, #0
    str r2, [r1]
    str r2, [r1,#4]
    mov r8, r1
    mov r9, r0
    // memBlock
    ldr r0, off_804BEE4 // =dword_2035800 
    mov r1, #0x10
    lsl r1, r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r6, r9
    ldr r7, off_804BEE4 // =dword_2035800 
    mov r3, #0
loc_804BDD6:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_804BE0C
    push {r0,r3}
    ldr r1, dword_804BE84 // =0x1E20 
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r0,r3}
    beq loc_804BE06
    strh r0, [r7]
    strb r3, [r7,#2]
    push {r0,r1,r3,r6,r7}
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r2, [r0,#5]
    mov r4, r8
    ldrb r6, [r4,r2]
    add r6, #1
    strb r6, [r4,r2]
    pop {r0,r1,r3,r6,r7}
    strb r2, [r7,#3]
    add r7, #4
loc_804BE06:
    add r3, #1
    add r6, #6
    b loc_804BDD6
loc_804BE0C:
    ldr r6, off_804BEE4 // =dword_2035800 
    sub r0, r7, r6
    lsr r0, r0, #2
    str r0, [r5,#0x48]
    pop {r1,r2}
    mov r8, r1
    mov r9, r2
    pop {r5,pc}
.endfunc // sub_804BDB4

.func
.thumb_func
sub_804BE1C:
    push {r5,lr}
    mov r2, r8
    mov r7, r9
    push {r2,r7}
    mov r2, #0
    str r2, [r1]
    str r2, [r1,#4]
    mov r8, r1
    mov r9, r0
    // memBlock
    ldr r0, off_804BEE4 // =dword_2035800 
    mov r1, #0x10
    lsl r1, r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r6, r9
    ldr r7, off_804BEE4 // =dword_2035800 
loc_804BE3C:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_804BE72
    push {r0,r3,r6,r7}
    ldr r1, dword_804BE84 // =0x1E20 
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    pop {r0,r3,r6,r7}
    bne loc_804BE6C
    strh r0, [r7]
    strb r3, [r7,#2]
    push {r0,r1,r3,r6,r7}
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r2, [r0,#5]
    mov r4, r8
    ldrb r6, [r4,r2]
    add r6, #1
    strb r6, [r4,r2]
    pop {r0,r1,r3,r6,r7}
    strb r2, [r7,#3]
    add r7, #4
loc_804BE6C:
    add r3, #1
    add r6, #6
    b loc_804BE3C
loc_804BE72:
    ldr r6, off_804BEE4 // =dword_2035800 
    sub r0, r7, r6
    lsr r0, r0, #2
    str r0, [r5,#0x48]
    pop {r2,r7}
    mov r8, r2
    mov r9, r7
    pop {r5,pc}
    .balign 4, 0x00
dword_804BE84:    .word 0x1E20
.endfunc // sub_804BE1C

.func
.thumb_func
sub_804BE88:
    push {r5,lr}
    mov r7, r8
    push {r7}
    mov r7, #0
loc_804BE90:
    ldrb r3, [r0,r7]
    ldrb r4, [r1,r3]
    tst r4, r4
    bne loc_804BE9C
    add r7, #1
    b loc_804BE90
loc_804BE9C:
    mov r8, r3
    // memBlock
    ldr r0, off_804BEE8 // =dword_2034800 
    mov r1, #0x10
    lsl r1, r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r0, [r5,#0x48]
    mov r2, #0
    ldr r6, off_804BEE4 // =dword_2035800 
    ldr r7, off_804BEE8 // =dword_2034800 
loc_804BEB0:
    ldrb r3, [r6,#3]
    cmp r3, r8
    bne loc_804BEBE
    ldr r3, [r6]
    str r3, [r7]
    add r7, #4
    add r2, #1
loc_804BEBE:
    add r6, #4
    sub r0, #1
    bgt loc_804BEB0
    str r2, [r5,#0x48]
    bl change_20013F0_800151C // () -> int
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    ldr r1, [r5,#0x48]
    svc 6
    ldr r7, off_804BEE8 // =dword_2034800 
    lsl r0, r1, #2
    add r7, r7, r0
    ldrh r0, [r7]
    ldrb r1, [r7,#2]
    pop {r7}
    mov r8, r7
    pop {r5,pc}
    .balign 4, 0x00
off_804BEE4:    .word dword_2035800
off_804BEE8:    .word dword_2034800
.endfunc // sub_804BE88

.func
.thumb_func
sub_804BEEC:
    push {r5,lr}
    cmp r2, #3
    blt loc_804BF10
    bl sub_8021BD8
    cmp r0, #4
    blt loc_804BEFC
    mov r0, #4
loc_804BEFC:
    ldr r7, off_804BF14 // =off_804B048 
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    mov r1, #2
    bl sub_804BD7C
    tst r0, r0
    bne loc_804BF10
    mov r0, #0
    pop {r5,pc}
loc_804BF10:
    mov r0, #1
    pop {r5,pc}
off_804BF14:    .word off_804B048
.endfunc // sub_804BEEC

.func
.thumb_func
sub_804BF18:
    push {r0,r5,lr}
loc_804BF1A:
    ldrh r7, [r2]
    cmp r7, r0
    beq loc_804BF24
    add r2, #6
    b loc_804BF1A
loc_804BF24:
    add r7, r2, #0
    mov r2, #2
    mov r3, #0
    mov r4, #0
loc_804BF2C:
    ldrb r1, [r7,r2]
    cmp r1, #0xff
    beq loc_804BF56
    push {r0-r4,r7}
    bl sub_8021BC0
    tst r0, r0
    pop {r0-r4,r7}
    beq loc_804BF48
    add r6, r3, #0
    add r6, #0x38 
    strb r1, [r5,r6]
    add r3, #1
    b loc_804BF50
loc_804BF48:
    add r6, r4, #0
    add r6, #0x40 
    strb r1, [r5,r6]
    add r4, #1
loc_804BF50:
    add r2, #1
    cmp r2, #5
    ble loc_804BF2C
loc_804BF56:
    ldr r0, off_804BF8C // =byte_804B068 
    mov r1, #2
    push {r3,r4}
    bl sub_804BD7C
    pop {r3,r4}
    tst r0, r0
    beq loc_804BF78
    tst r3, r3
    beq loc_804BF7C
loc_804BF6A:
    ldr r0, off_804BF90 // =byte_804B06A 
    add r1, r3, #0
    bl sub_804BD7C
    add r0, #0x38 
    ldrb r1, [r5,r0]
    b locret_804BF88
loc_804BF78:
    tst r4, r4
    beq loc_804BF6A
loc_804BF7C:
    ldr r0, off_804BF90 // =byte_804B06A 
    add r1, r4, #0
    bl sub_804BD7C
    add r0, #0x40 
    ldrb r1, [r5,r0]
locret_804BF88:
    pop {r0,r5,pc}
    .balign 4, 0x00
off_804BF8C:    .word byte_804B068
off_804BF90:    .word byte_804B06A
.endfunc // sub_804BF18

.func
.thumb_func
sub_804BF94:
    push {r5,lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    // memBlock
    ldr r0, off_804BFEC // =dword_2035800 
    mov r1, #0x10
    lsl r1, r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r6, r8
    ldr r7, off_804BFEC // =dword_2035800 
loc_804BFAA:
    ldrh r0, [r6]
    tst r0, r0
    beq loc_804BFC8
    mov r1, #2
loc_804BFB2:
    ldrb r3, [r6,r1]
    cmp r3, #0xff
    beq loc_804BFC4
    strh r0, [r7]
    strb r3, [r7,#2]
    add r7, #4
    add r1, #1
    cmp r1, #5
    ble loc_804BFB2
loc_804BFC4:
    add r6, #6
    b loc_804BFAA
loc_804BFC8:
    ldr r6, off_804BFEC // =dword_2035800 
    sub r0, r7, r6
    lsr r0, r0, #2
    str r0, [r5,#0x48]
    bl change_20013F0_800151C // () -> int
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    ldr r1, [r5,#0x48]
    svc 6
    ldr r7, off_804BFEC // =dword_2035800 
    lsl r0, r1, #2
    add r7, r7, r0
    ldrh r0, [r7]
    ldrb r1, [r7,#2]
    pop {r7}
    mov r8, r7
    pop {r5,pc}
off_804BFEC:    .word dword_2035800
.endfunc // sub_804BF94

.func
.thumb_func
sub_804BFF0:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r1, [r3,#4]
    ldrb r2, [r3,#5]
    lsl r1, r1, #8
    orr r1, r2
    ldr r2, off_804C018 // =off_804C01C 
    mov r3, #0
loc_804C000:
    ldr r0, [r2]
    cmp r0, r1
    bne loc_804C00C
    ldr r0, [r2,#4]
    ldr r1, [r2,#8]
    b locret_804C014
loc_804C00C:
    add r2, #0xc
    add r3, #0xc
    cmp r3, #0x3c 
    blt loc_804C000
locret_804C014:
    mov pc, lr
    .balign 4, 0x00
off_804C018:    .word off_804C01C
off_804C01C:    .word 0x104
off_804C020:    .word byte_804B070
off_804C024:    .word byte_804B00C
    .word 0x501
    .word byte_804B21A
    .word byte_804B011
    .word 0x0
    .word byte_804B52C
    .word byte_804B011
    .word 0x400
    .word byte_804B7BA
    .word byte_804B011
    .word 0x9301
    .word byte_804BB92
    .word byte_804B011
    .word 0x4803B5F0
    .word 0x58407C29
    .word 0x470046FE
    .word 0xBDF0
    .word byte_804C06C
byte_804C06C:    .byte 0x8D, 0xC0, 0x4, 0x8, 0x1D, 0xC1, 0x4, 0x8, 0xF0, 0xB5, 0x4
    .byte 0x20, 0xFE, 0x21, 0xE3, 0xF7, 0x57, 0xF8, 0x54, 0x46, 0xA1, 0x68
    .byte 0x8, 0x88, 0x83, 0x4A, 0x90, 0x43, 0x8, 0x80, 0xF0, 0xBD
dword_804C08C:    .word 0x481DB5F0
    .word 0x4A1E491D
    .word 0xFD18F7B4
    .word 0x491E481D
    .word 0xF7B42220
    .word 0x4654FD13
    .word 0x481C68A1
    .word 0x20008108
    .word 0x828882C8
    .word 0x20446A21
    .word 0x203B7008
    .word 0x20007048
    .word 0x20107088
    .word 0x200A70C8
    .word 0x20007528
    .word 0x756874E8
    .word 0x75E875A8
    .word 0x20027468
    .word 0x20047628
    .word 0xF7E321FB
    .word 0xD006F843
    .word 0x21FE2004
    .word 0xF83EF7E3
    .word 0xF000D001
    .word 0xF000F8F1
    .word 0x2004F829
    .word 0x20047428
    .word 0xF7E321FE
    .word 0xF000F809
    .word 0xBDF0F80D
    .word 0x869D76C
    .word 0x600CC00
    .word 0xC0
    .word 0x869D74C
    .word 0x3001B00
    .word 0x1E09
dword_804C11C:    .word 0x2001B5F0
    .word 0xFD5EF0D2
    .word 0xF7EAD10D
    .word 0xD10AFF0B
    .word 0xFF14F7EA
    .word 0x2080D107
    .word 0xFF02F7F9
    .word 0xF000D103
    .word 0xF000F803
    .word 0xBDF0F8AB
    .word 0x4654B5F0
    .word 0x882068A4
    .word 0x43104A51
    .word 0x4E178020
    .word 0x28248AB0
    .word 0xF000DD02
    .word 0xE003F85B
    .word 0xDD1B2800
    .word 0xF86EF000
    .word 0xF834F000
    .word 0x7D287CEE
    .word 0x75283801
    .word 0x200AD107
    .word 0x2E077528
    .word 0x3601DA01
    .word 0x2600E000
    .word 0x200074EE
    .word 0x22022100
    .word 0x4B0700B6
    .word 0x2420599B
    .word 0xF7B52520
    .word 0xE005FB94
    .word 0x68A44654
    .word 0x70202004
    .word 0x746E2600
    .word 0xBDF0
    .word 0x804C1B4
    .word 0x2013960
    .word 0x869D82C
    .word 0x869E02C
    .word 0x869E82C
    .word 0x869E82C
    .word 0x869E82C
    .word 0x869E82C
    .word 0x869E82C
    .word 0x869F02C
    .word 0x480EB5F0
    .word 0x49097940
    .word 0x4A095C09
    .word 0x46545C12
    .word 0x8AA068A4
    .word 0x185B7D6B
    .word 0x18C0756B
    .word 0x8AE082A0
    .word 0x189B7DAB
    .word 0x18C075AB
    .word 0xBDF082E0
    .word 0x804C208
    .word 0x804C20C
    .word 0x404FCFC
    .word 0x4FCFC04
    .word 0x2013960
    .word 0x7E28B510
    .word 0x76283801
    .word 0x2002D110
    .word 0x46547628
    .word 0x78A06A24
    .word 0xDB022810
    .word 0x70202004
    .word 0x3001E006
    .word 0x78E070A0
    .word 0xD0012800
    .word 0x70E03801
    .word 0xBD10
    .word 0x7C6EB5F0
    .word 0xDC102E00
    .word 0x6A214654
    .word 0x281078E0
    .word 0x2044DA1D
    .word 0x203B7008
    .word 0x20107048
    .word 0x20007088
    .word 0x200270C8
    .word 0x36017628
    .word 0x7E28746E
    .word 0x76283801
    .word 0x2002D10D
    .word 0x46547628
    .word 0x78E06A24
    .word 0xDA062810
    .word 0x70E03001
    .word 0x280078A0
    .word 0x3801D001
    .word 0xBDF070A0
    .word 0x400
    .word 0x4B1BB520
    .word 0x73D87C28
    .word 0x74587C68
    .word 0x74D87CE8
    .word 0x75587D68
    .word 0x75987DE8
    .word 0x75D87E28
    .word 0x68924652
    .word 0x83588A90
    .word 0x83988AD0
    .word 0x6A124652
    .word 0x76187890
    .word 0x765878D0
    .word 0xBD20
    .word 0x4B0DB520
    .word 0x74287BD8
    .word 0x74687C58
    .word 0x74E87CD8
    .word 0x75687D58
    .word 0x75E87D98
    .word 0x76287DD8
    .word 0x68924652
    .word 0x82908B58
    .word 0x82D08B98
    .word 0x78D04652
    .word 0x7E186A12
    .word 0x7E587090
    .word 0xBD2070D0
    .word 0x2000AC0
    .word 0x4803B5F0
    .word 0x58407C29
    .word 0x470046FE
    .word 0xBDF0
    .word 0x804C320
    .word 0x804C349
    .word 0x804C3BD
    .word 0x4654B5F0
    .word 0x880868A1
    .word 0x43904A2E
    .word 0x48208008
    .word 0x46548148
    .word 0x20086A24
    .word 0xE03E7020
    .word 0xBDF0
    .word 0x4815B5F0
    .word 0x4A164915
    .word 0xFBBAF7B4
    .word 0x49164815
    .word 0xF7B42220
    .word 0x4654FBB5
    .word 0x481468A1
    .word 0x20008148
    .word 0x83088348
    .word 0x20486A21
    .word 0x20377008
    .word 0x20087048
    .word 0x20107088
    .word 0x200270C8
    .word 0x200074E8
    .word 0x22032100
    .word 0x24202300
    .word 0xF7B52520
    .word 0xF000FA9F
    .word 0x2004F817
    .word 0xF0007428
    .word 0xBDF0F80F
    .word 0x86A10D0
    .word 0x600CA00
    .word 0x320
    .word 0x86A10B0
    .word 0x3001B00
    .word 0x1F09
    .word 0x1F0B
    .word 0xF000B5F0
    .word 0xBDF0F801
    .word 0x4654B5F0
    .word 0x882068A4
    .word 0x43104A07
    .word 0x200C8020
    .word 0x22032100
    .word 0x24064B03
    .word 0xF7B5250C
    .word 0xE7FFFA70
    .word 0xBDF0
    .word 0x86A13F0
    .word 0x800
    .word 0xFF4A0000
    .word 0xFF460000
    .word 0xFFE00000
    .word 0x86A1940
    .word 0x106060
    .word 0x4F08B5F0
    .word 0x21147B28
    .word 0x183F4348
    .word 0x7C294802
    .word 0x46FE5840
    .word 0xBDF04700
    .word 0x804C420
    .word 0x804C43D
    .word 0x804C479
    .word 0x804C3F0
    .word 0x4654B5F0
    .word 0x880868A1
    .word 0x43904A1D
    .word 0xBDF08008
    .word 0x480AB5F0
    .word 0x4A0B490A
    .word 0xFB40F7B4
    .word 0x68A14654
    .word 0x81484809
    .word 0x69E14654
    .word 0x7248203F
    .word 0x72882017
    .word 0x74282004
    .word 0xF80AF000
    .word 0xBDF0
    .word 0x86A1480
    .word 0x600CB00
    .word 0x4C0
    .word 0x1F82
    .word 0x4654B5F0
    .word 0x880868A1
    .word 0x43104A0A
    .word 0x1C388008
    .word 0x687A6839
    .word 0x7B6868BB
    .word 0x1A1B0400
    .word 0x9100B083
    .word 0x93029201
    .word 0x68F94668
    .word 0x7C7B7C3A
    .word 0xF818F7B6
    .word 0xBDF0B003
    .word 0x4800
    .word 0x0
    .word unk_3001B60
    .word 0xFF09080C, 0x80001084, 0x4, 0x800014A5, 0x4, 0x800018C6
    .word 0x4, 0x800014A5, 0x4, 0x1, 0x0
    .word unk_3001750
    .word 0xFF09090C, 0x80001084, 0x4, 0x800014A5, 0x4, 0x800018C6
    .word 0x4, 0x800014A5, 0x4, 0x1, 0x4803B5F0, 0x58407C29
    .word 0x470046FE, 0xBDF0, 0x804C524, 0x804C53D, 0x804C5C1, 0x4654B5F0
    .word 0x880868A1, 0x43904A3A, 0xBDF08008, 0x4812B5F0, 0x58407B29, 0x4A144913
    .word 0x58D27B2B, 0xFABCF7B4, 0x7B294814, 0x49165840, 0xF7B42220, 0x4654FAB5
    .word 0x481468A1, 0xF7B58148, 0x7B28FA05, 0xD0054200, 0xF7B54811, 0x4811FAD3
    .word 0xFAD0F7B5, 0x74282004, 0xF81EF000, 0xBDF0, 0x804C58C, 0x86A1A80
    .word 0x86A2340, 0x600CF40, 0x804C59C, 0xA0, 0xA0, 0x804C5A8
    .word 0x86A1A60, 0x86A1A60, 0x3001B00, 0x1F09, 0x804C4B0, 0x804C4E0
    .word 0x4654B5F0, 0x882068A4, 0x43104A15, 0x480D8020, 0x58407B29, 0x470046FE
    .word 0x7B69480D, 0x46FE5840, 0x20004700, 0x22032100, 0x7B2C4B03, 0x2420591B
    .word 0xF7B52520, 0xBDF0F966, 0x804C5FC, 0x86A1B20, 0x86A23E0, 0x804C608
    .word 0x804C625, 0x804C659, 0x804C614, 0x804C669, 0x804C66D, 0x804C695
    .word 0x800, 0x4B0AB5F0, 0x6A404650, 0x49098800, 0x5E184008, 0x83201100
    .word 0x8AE08AA9, 0x1A0982A8, 0x2100DA00, 0x38028B60, 0x83601A40, 0xBDF0
    .word 0x80065E0, 0x1FE, 0x8B60B5F0, 0x8360380C, 0x300C8B20, 0xBDF08320
    .word 0xBDF0B5F0, 0x4802B5F0, 0xF828F000, 0xBDF0, 0x804C67C, 0x804C684
    .word 0x804C684, 0xC040E02, 0x8080A06, 0x40C060A, 0x10020E, 0x4804B5F0
    .word 0xF814F000, 0x42007B68, 0xF7B5D101, 0xBDF0FEEF, 0x804C6AC, 0x804C6B4
    .word 0x804C6B4, 0x40C020E, 0x808060A, 0xC040A06, 0x10000E02, 0x1C02B5F0
    .word 0x8C069A8, 0x58D27B2B, 0x18120040, 0x6A214654, 0x70082048, 0x70482037
    .word 0x70887810, 0x70C87850, 0x300169A8, 0x284061A8, 0x2000DB04, 0x736861A8
    .word 0xF892F7B5, 0xBDF0, 0x4803B5F0, 0x58407C29, 0x470046FE, 0xBDF0
    .word 0x804C714, 0x804C72D, 0x804C771, 0x4654B5F0, 0x880868A1, 0x43904A26
    .word 0xBDF08008, 0x480AB5F0, 0x4A0B490A, 0xF9C8F7B4, 0x490B480A, 0xF7B42220
    .word 0x4654F9C3, 0x480968A1, 0xF0008148, 0x2004F87B, 0xF0007428, 0xBDF0F80D
    .word 0x86A2C00, 0x600CF40, 0x80, 0x86A2BE0, 0x3001B00, 0x1F09
    .word 0x4654B5F0, 0x882068A4, 0x43104A11, 0x8B608020, 0x8360380C, 0x300C8B20
    .word 0x48098320, 0x58407B69, 0x470046FE, 0xF840F000, 0x21002000, 0x4B032203
    .word 0x25202420, 0xF88DF7B5, 0xBDF0, 0x86A2C80, 0x804C7B4, 0x804C7C5
    .word 0x804C7C9, 0x804C7ED, 0x800, 0xBDF0B5F0, 0x4802B5F0, 0xFF7AF7FF
    .word 0xBDF0, 0x804C7D8, 0x804C7DC, 0xC040E02, 0x8080A06, 0x40C060A
    .word 0x10020E, 0x4804B5F0, 0xFF68F7FF, 0x42007B68, 0xF7B5D101, 0xBDF0FE43
    .word 0x804C804, 0x804C808, 0x40C020E, 0x808060A, 0xC040A06, 0x10000E02
    .word 0x6968B5F0, 0xDB013801, 0xE00D6168, 0xFE7AF7B4, 0x40084908, 0x18404908
    .word 0x48086168, 0x5A407BA9, 0xD0014200, 0xFEC6F7B3, 0xBDF0, 0x2010B5F0
    .word 0xBDF06168, 0xFF, 0x12C, 0x804C858, 0x1D9, 0x0
    .word 0x10000, 0x4000, 0x8000, 0x800, 0x60000, 0x8000, 0x1C0000
    .word 0xFEC60000, 0x180000, 0xFF, 0x10000, 0x4000, 0x8000, 0x800
    .word 0x60000, 0x8000, 0x1380000, 0xFF100000, 0x180000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000, 0x1A00000, 0xFF0C0000
    .word 0x80000, 0xFF, 0x10000, 0x4000, 0x8000, 0x800, 0x60000
    .word 0x8000, 0x2180000, 0xC0000, 0x180000, 0xFF, 0x10000, 0x4000
    .word 0x8000, 0x800, 0x60000, 0x8000, 0xFFC20000, 0xFEE20000, 0x880000
    .word 0xFF, 0x10000, 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0x780000, 0xFDE00000, 0x80000, 0xFF, 0x10000, 0x4000, 0x8000
    .word 0x800, 0x60000, 0x8000, 0xFFA40000, 0xFE300000, 0x80000, 0xFF
    .word 0x10000, 0x4000, 0x8000, 0x800, 0x60000, 0x8000, 0x1300000
    .word 0xFE9A0000, 0x80000, 0xFF, 0x10000, 0x4000, 0x8000, 0x800
    .word 0x60000, 0x8000, 0xFF880000, 0xFEB40000, 0x380000, 0xFF, 0x10000
    .word 0x4000, 0x8000, 0x800, 0x60000, 0x8000, 0xFF8C0000, 0xFEB40000
    .word 0x280000, 0xFF, 0x10000, 0x4000, 0x8000, 0x800, 0x60000
    .word 0x8000, 0x1, 0x1, 0x80000, 0xFF, 0x10000, 0x4000
    .word 0x8000, 0x800, 0x60000, 0x8000, 0x1E80000, 0x140000, 0x100000
    .word 0xFF, 0x10000, 0x4000, 0x8000, 0x800, 0x60000, 0x8000
    .word 0xC0000, 0xFE500000, 0x500000, 0xFF, 0x10000, 0x4000, 0x8000
    .word 0x800, 0x60000, 0x8000, 0xC0000, 0xFE400000, 0x480000, 0xFF
    .word 0xB08AB5F0, 0x7B284F11, 0x43482128, 0x69B8183F, 0xD10C2801, 0x46691C38, 0xF7B32228
    .word 0x466FFF47, 0xFB7DF051, 0x61F961B8, 0x18896A39, 0x48036239, 0x58407C29, 0x470046FE
    .word 0xBDF0B00A, 0x804CAD0, 0x804CB0D, 0x804CB65, 0x804CBA1, 0x804C860, 0xF7B4B5F0
    .word 0x4651FE9D, 0x79086BC9, 0xF7B47949, 0x4651FE0B, 0x88086889, 0x43904A28, 0x48028008
    .word 0x470046FE, 0xBDF0, 0x8006A5D, 0x480EB5F0, 0x4A0F490E, 0xFFD8F7B3, 0x1497B69
    .word 0x1840480D, 0x2220490D, 0xFFD0F7B3, 0x68A14654, 0x8148480B, 0x83482000, 0x1C388308
    .word 0x46FE4909, 0x20044708, 0xF0007428, 0xBDF0F80F, 0x86A34C0, 0x600CFE0, 0x20
    .word 0x86A3480, 0x3001B00, 0x1F09, 0x8006921, 0x4654B5F0, 0x880868A1, 0x43104A0B
    .word 0xB4208008, 0x21002000, 0x4B062203, 0x2514241E, 0xFE9FF7B4, 0x4804BC20, 0x470046FE
    .word 0x2008D001, 0xBDF07428, 0x86A34E0, 0x8006991, 0x2800, 0xBDF0B5F0, 0x4803B5F0
    .word 0x58407C29, 0x470046FE, 0xBDF0, 0x804CBB8, 0x804CBDD, 0x804CC8F, 0x4654B5F0
    .word 0x880868A1, 0x43904A54, 0x48028008, 0xF7B48148, 0xBDF0FE25, 0x3F0B, 0x4811B5F0
    .word 0x4A124911, 0xFF70F7B3, 0x49124811, 0xF7B32220, 0x4654FF6B, 0x481068A1, 0x6A218148
    .word 0x70082048, 0x70482037, 0xFEB6F7B4, 0x7B29480C, 0x58400089, 0x470046FE, 0xF86CF000
    .word 0x74282004, 0xF837F000, 0xBDF0, 0x86A39B0, 0x600CFE0, 0x20, 0x86A3990
    .word 0x3001B00, 0x1F09, 0x804CC40, 0x804CC59, 0x804CC59, 0x804CC59, 0x804CC6F
    .word 0x804CC7F, 0x804CC7F, 0x2003B5F0, 0xFF86F7B4, 0x6A094651, 0x7088200C, 0x70C82010
    .word 0xB5F0BDF0, 0x6A094651, 0x7088200C, 0x70C82010, 0xB5F0BDF0, 0x6A094651, 0x70882008
    .word 0x70C82010, 0xB5F0BDF0, 0x7B294803, 0x58400089, 0x470046FE, 0xBDF0, 0x804CCA4
    .word 0x804CCBD, 0x804CCBD, 0x804CCBD, 0x804CCBD, 0x804CCC1, 0x804CCC1, 0xBDF0B5F0
    .word 0x4650B5F0, 0x88006A40, 0x4008210F, 0x5C084903, 0x6A094651, 0x20107088, 0xBDF070C8
    .word 0x804CCE0, 0x8080808, 0x8080808, 0x9090909, 0x9090909, 0x4654B5F0, 0x880868A1
    .word 0x43104A08, 0x20008008, 0x83088348, 0x21002000, 0x4B032203, 0x2514241E, 0xFDD7F7B4
    .word 0xBDF0, 0x86A39D0, 0x800, 0x4803B5F0, 0x58407C29, 0x470046FE, 0xBDF0
    .word 0x804CD34, 0x804CD5D, 0x804CDCD, 0x4654B5F0, 0x880868A1, 0x43904A47, 0x481F8008
    .word 0x46548148, 0x20086A24, 0xE03C7020, 0xBDF0, 0x4814B5F0, 0x4A154914, 0xFEB0F7B3
    .word 0x49154814, 0xF7B32220, 0x4654FEAB, 0x481368A1, 0x20008148, 0x83088348, 0x20486A21
    .word 0x20377008, 0x20107048, 0x20007088, 0x200070C8, 0x752874E8, 0x20027468, 0xF7B47568
    .word 0xF000FDE9, 0x2004F817, 0xF0007428, 0xBDF0F80F, 0x86A3EA0, 0x600CC00, 0xA0
    .word 0x86A3E80, 0x3001B00, 0x1F09, 0x1F0B, 0xF000B5F0, 0xBDF0F801, 0x4654B5F0
    .word 0x882068A4, 0x43104A21, 0x200B8020, 0xF7E221F0, 0xD001F9BD, 0xF826F000, 0xF80CF000
    .word 0x21002000, 0x4B032203, 0x25202420, 0xFD5FF7B4, 0xBDF0E7FF, 0x86A3F40, 0x4909B5F0
    .word 0x784A7809, 0x68A44654, 0x7CEB8B20, 0x74EB185B, 0x832018C0, 0x7D2B8B60, 0x752B189B
    .word 0x836018C0, 0xBDF0, 0x804CE38, 0x808, 0x7D68B5F0, 0x75683801, 0x2002D10D
    .word 0x46547568, 0x78E06A24, 0xDA062810, 0x70E03001, 0x280078A0, 0x3801D001, 0xBDF070A0
    .word 0x800
off_804CE68:    .word dword_804CE70
    .word off_804CE80
dword_804CE70:    .word 0x4140000, 0x0, 0x0, 0x0
off_804CE80:    .word unk_3000000
    .word 0, 0
    .byte 0, 0, 0, 0
.endfunc // sub_804BFF0

.func
.thumb_func
sub_804CE90:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_804CEEC // =off_804CE68 
    ldr r1, [r7,#0x14]
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
    bl loc_8030472
    ldr r0, off_804CEF0 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_804CEF8 // =off_804CEFC 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_804CF84
    ldr r0, off_804CEF4 // =off_804D0E4 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804CEEC:    .word off_804CE68
off_804CEF0:    .word unk_2037800
off_804CEF4:    .word off_804D0E4
off_804CEF8:    .word off_804CEFC
off_804CEFC:    .word dword_804CF1C
    .word dword_804CF20
    .word 0x804CF26, 0x804CF28, 0x804CF2A, 0x804CF2C, 0x804CF2E
    .word 0x804CF30
dword_804CF1C:    .word 0xFFFF1318
dword_804CF20:    .word 0x13180A1C, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .byte 0xFF, 0xFF
.endfunc // sub_804CE90

.func
.thumb_func
sub_804CF32:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_804CF40 // =off_804CF44 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_804CF40:    .word off_804CF44
off_804CF44:    .word dword_804CF64
    .word dword_804CF68
    .word dword_804CF6C
    .word dword_804CF70
    .word dword_804CF74
    .word dword_804CF78
    .word dword_804CF7C
    .word dword_804CF80
dword_804CF64:    .word 0xFFFFFFFF
dword_804CF68:    .word 0xFFFFFFFF
dword_804CF6C:    .word 0xFFFFFFFF
dword_804CF70:    .word 0xFFFFFFFF
dword_804CF74:    .word 0xFFFFFFFF
dword_804CF78:    .word 0xFFFFFFFF
dword_804CF7C:    .word 0xFFFFFFFF
dword_804CF80:    .word 0xFFFFFFFF
.endfunc // sub_804CF32

.func
.thumb_func
sub_804CF84:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_804CF98 // =off_804CF9C 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_804CF98:    .word off_804CF9C
    // <endpool> <endfile>
off_804CF9C:    .word dword_804CFBC
    .word dword_804CFD4
    .word dword_804D08C
    .word dword_804D090
    .word dword_804D094
    .word dword_804D098
    .word dword_804D09C
    .word dword_804D0A0
.endfunc // sub_804CF84

/*For debugging purposes, connect comment at any range!*/
