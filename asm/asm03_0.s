.include "asm03_0.inc"

.func
.thumb_func
sub_8026450:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    str r6, [sp]
    str r7, [sp,#4]
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    add r4, r2, #0
    bl sub_800E2CA
    add r6, r0, #0
loc_8026464:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_80264A2
    mul r0, r6
    ldr r2, [sp,#8]
    add r0, r0, r2
    bmi loc_802649E
    cmp r0, #6
    bgt loc_802649E
    add r1, r0, #0
    mul r1, r6
    ldr r2, [sp]
    mul r2, r6
    cmp r1, r2
    bgt loc_802649E
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0xc]
    add r1, r1, r2
    bmi loc_802649E
    cmp r1, #3
    bgt loc_802649E
    push {r0,r1}
    bl sub_800E680
    cmp r0, #0
    pop {r0,r1}
    bne loc_80264A4
loc_802649E:
    add r4, #2
    b loc_8026464
loc_80264A2:
    mov r0, #0
loc_80264A4:
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
.endfunc // sub_8026450

.func
.thumb_func
sub_80264A8:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    str r6, [sp]
    str r7, [sp,#4]
    str r0, [sp,#8]
    str r1, [sp,#0xc]
    add r4, r2, #0
    bl sub_800E2CA
    add r6, r0, #0
loc_80264BC:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_802650A
    mul r0, r6
    ldr r2, [sp,#8]
    add r0, r0, r2
    bmi loc_8026506
    cmp r0, #6
    bgt loc_8026506
    add r1, r0, #0
    mul r1, r6
    ldr r2, [sp]
    mul r2, r6
    cmp r1, r2
    bgt loc_8026506
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0xc]
    add r1, r1, r2
    bmi loc_8026506
    cmp r1, #3
    bgt loc_8026506
    push {r0,r1}
    bl sub_800E680
    cmp r0, #0
    pop {r0,r1}
    beq loc_8026506
    ldr r2, [sp]
    ldr r3, [sp,#4]
    push {r0,r1}
    bl sub_8026510
    cmp r0, #0
    pop {r0,r1}
    bne loc_802650C
loc_8026506:
    add r4, #2
    b loc_80264BC
loc_802650A:
    mov r0, #0
loc_802650C:
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
.endfunc // sub_80264A8

.func
.thumb_func
sub_8026510:
    push {r4,r6,r7,lr}
    add r6, r2, #0
    add r7, r3, #0
    push {r0,r1}
    bl sub_800E2CA
    add r4, r0, #0
    pop {r0,r1}
loc_8026520:
    push {r0,r1}
    ldr r3, off_8026540 // =dword_8026544 
    bl sub_81096FA
    bl object_checkPanelParameters
.endfunc // sub_8026510

    cmp r0, #0
    pop {r0,r1}
    beq loc_802653C
    add r0, r0, r4
    cmp r0, r6
    bne loc_8026520
    mov r0, #1
    b locret_802653E
loc_802653C:
    mov r0, #0
locret_802653E:
    pop {r4,r6,r7,pc}
off_8026540:    .word dword_8026544
dword_8026544:    .word 0x0
    .word 0x5800000, 0x0
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0xA
.func
.thumb_func
ho_8026554:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    cmp r0, #1
    blt loc_802656A
    cmp r0, #6
    bgt loc_802656A
    cmp r1, #1
    blt loc_802656A
    cmp r1, #3
    ble loc_802656C
loc_802656A:
    mov r2, #0
loc_802656C:
    lsl r2, r2, #2
    ldr r3, off_8026580 // =jt_8026584 
    ldr r2, [r3,r2]
    mov lr, pc
    bx r2
    pop {r6,r7,pc}
    .word 0
    .byte 0, 0, 0, 0
off_8026580:    .word jt_8026584
jt_8026584:    .word sub_802661C+1
    .word sub_8026622+1
    .word sub_8026650+1
    .word sub_802665A+1
    .word sub_8026668+1
    .word sub_8026672+1
    .word sub_802667C+1
    .word sub_802668A+1
    .word sub_8026694+1
    .word sub_802669E+1
    .word sub_80266AC+1
    .word sub_80266BA+1
    .word sub_80266DE+1
    .word sub_80266E8+1
    .word sub_80266F2+1
    .word sub_8026704+1
    .word sub_802670E+1
    .word sub_802671C+1
    .word sub_8026726+1
.endfunc // ho_8026554

.func
.thumb_func
sub_80265D0:
    push {r4,lr}
    push {r0}
    add r0, r6, #0
    ldr r4, off_80267E8 // =byte_8026735 
loc_80265D8:
    ldr r2, [sp]
    add r1, r7, #0
    bl sub_8026450
    cmp r0, #0
    bne loc_80265FA
    bl sub_800E2CA
    mov r1, #0
    ldrsb r1, [r4,r1]
    cmp r1, #0x7f
    beq loc_80265F8
    add r4, #1
    mul r0, r1
    add r0, r0, r6
    b loc_80265D8
loc_80265F8:
    mov r0, #0
loc_80265FA:
    add sp, sp, #4
    pop {r4,pc}
.endfunc // sub_80265D0

.func
.thumb_func
sub_80265FE:
    push {r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    mov r1, #2
    beq locret_802661A
    mov r1, #2
    push {r0,r1}
    bl sub_800E680
    cmp r0, #0
    pop {r0,r1}
    bne locret_802661A
    add r0, r6, #0
    add r1, r7, #0
locret_802661A:
    pop {r6,r7,pc}
.endfunc // sub_80265FE

.func
.thumb_func
sub_802661C:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov pc, lr
.endfunc // sub_802661C

.func
.thumb_func
sub_8026622:
    push {r4,lr}
    add r1, r7, #0
    ldr r2, off_80267EC // =dword_802673C 
    ldrb r3, [r5,#0x13]
    cmp r1, r3
    bne loc_8026630
    ldr r2, dword_80267F0 // =0x802673A 
loc_8026630:
    ldr r4, off_80267F4 // =byte_8026730 
loc_8026632:
    ldrb r0, [r5,#0x12]
    bl sub_8026450
    cmp r0, #0
    bne locret_802664E
    mov r1, #0
    ldrsb r1, [r4,r1]
    cmp r1, #0x7f
    beq locret_802664E
    add r4, #1
    add r1, r1, r7
    add r0, r6, #0
    ldr r2, off_80267F8 // =dword_802673C 
    b loc_8026632
locret_802664E:
    pop {r4,pc}
.endfunc // sub_8026622

.func
.thumb_func
sub_8026650:
    push {lr}
    ldr r0, dword_80267FC // =dword_802673C 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_8026650

.func
.thumb_func
sub_802665A:
    push {lr}
    ldr r0, dword_8026800 // =dword_802673C 
    bl sub_80265D0
    bl sub_80265FE
    pop {pc}
.endfunc // sub_802665A

.func
.thumb_func
sub_8026668:
    push {lr}
    ldr r0, dword_8026804 // =dword_802673C 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_8026668

.func
.thumb_func
sub_8026672:
    push {lr}
    ldr r0, dword_8026808 // =dword_802673C 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_8026672

.func
.thumb_func
sub_802667C:
    push {lr}
    ldr r0, dword_802680C // =dword_802673C 
    bl sub_80265D0
    bl sub_80265FE
    pop {pc}
.endfunc // sub_802667C

.func
.thumb_func
sub_802668A:
    push {lr}
    ldr r0, dword_8026810 // =dword_802673C 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_802668A

.func
.thumb_func
sub_8026694:
    push {lr}
    ldr r0, dword_8026814 // =dword_802673C 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_8026694

.func
.thumb_func
sub_802669E:
    push {lr}
    ldr r0, off_8026818 // =dword_8026794 
    bl sub_80265D0
    bl sub_80265FE
    pop {pc}
.endfunc // sub_802669E

.func
.thumb_func
sub_80266AC:
    push {lr}
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, dword_802681C // =dword_8026794 
    bl sub_80264A8
    pop {pc}
.endfunc // sub_80266AC

.func
.thumb_func
sub_80266BA:
    push {lr}
    mov r2, #0
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    eor r0, r1
    mov r1, #1
    eor r0, r1
    mov r1, #5
    mul r0, r1
    add r0, #1
    cmp r0, r6
    bne loc_80266D4
    mov r2, #2
loc_80266D4:
    ldr r0, dword_8026820 // =dword_8026794 
    add r0, r0, r2
    bl sub_80265D0
    pop {pc}
.endfunc // sub_80266BA

.func
.thumb_func
sub_80266DE:
    push {lr}
    ldr r0, dword_8026824 // =dword_8026794 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_80266DE

.func
.thumb_func
sub_80266E8:
    push {lr}
    ldr r0, dword_8026828 // =dword_8026794 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_80266E8

.func
.thumb_func
sub_80266F2:
    push {lr}
    add r0, r6, #0
    add r1, r7, #0
    ldr r2, dword_802682C // =dword_8026794 
    bl sub_8026450
    bl sub_80265FE
    pop {pc}
.endfunc // sub_80266F2

.func
.thumb_func
sub_8026704:
    push {lr}
    ldr r0, dword_8026830 // =dword_8026794 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_8026704

.func
.thumb_func
sub_802670E:
    push {lr}
    ldr r0, dword_8026834 // =dword_802673C 
    bl sub_80265D0
    bl sub_80265FE
    pop {pc}
.endfunc // sub_802670E

.func
.thumb_func
sub_802671C:
    push {lr}
    ldr r0, off_8026838 // =dword_80267CC 
    bl sub_80265D0
    pop {pc}
.endfunc // sub_802671C

.func
.thumb_func
sub_8026726:
    push {lr}
    ldr r0, dword_802683C // =dword_80267CC 
    bl sub_80265D0
    pop {pc}
byte_8026730:    .byte 0xFF
    .byte 0x1, 0xFE, 0x2
    .byte 0x7F
byte_8026735:    .byte 0xFF
    .hword 0xFDFE
    .word 0x17FFC
dword_802673C:    .word 0x10000, 0x200FF, 0x300FE, 0x400FD, 0x500FC, 0xFF7F00FB
    .word 0xFFFFFF00, 0xFFFF7F01, 0xFF01FF, 0xFF00FE7F, 0xFFFFFE00, 0xFF01FEFF
    .word 0xFD7F01, 0xFF00FE, 0xFFFEFFFD, 0x1FDFFFF, 0x1FF01FE, 0xFF00FF7F
    .word 0xFE01FFFF, 0xFEFFFE00, 0xFE7F01, 0x7F00FD7F
dword_8026794:    .word 0xFFFE00FE, 0xFB7F01FE, 0xFD00FC00, 0xFF00FE00, 0x7F00
    .word 0xFF7F00FE, 0xFF7F00, 0x1FEFFFE, 0x101FF01, 0xFC00FD7F
    .word 0xFDFFFD00, 0xFCFFFC01, 0xFE00FE01, 0x7F01FEFF
dword_80267CC:    .word 0xFFFE00FE, 0xFF01FE, 0xFF00FF7F, 0x1FFFF, 0x10100FF
    .word 0x10101FF, 0x7F00
off_80267E8:    .word byte_8026735
off_80267EC:    .word dword_802673C
dword_80267F0:    .word 0x802673A
off_80267F4:    .word byte_8026730
off_80267F8:    .word dword_802673C
dword_80267FC:    .word 0x8026753
dword_8026800:    .word 0x802675A
dword_8026804:    .word 0x8026761
dword_8026808:    .word 0x802676E
dword_802680C:    .word 0x8026781
dword_8026810:    .word 0x802678E
dword_8026814:    .word 0x8026791
off_8026818:    .word dword_8026794
dword_802681C:    .word 0x802679B
dword_8026820:    .word 0x80267A6
dword_8026824:    .word 0x80267AB
dword_8026828:    .word 0x80267AE
dword_802682C:    .word 0x802679B
dword_8026830:    .word 0x80267B9
dword_8026834:    .word 0x8026791
off_8026838:    .word dword_80267CC
dword_802683C:    .word 0x80267D5
.endfunc // sub_8026726

.func
.thumb_func
sub_8026840:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r0, [r2,#7]
    cmp r0, #0
    bne loc_8026858
    // memBlock
    ldr r0, off_80269CC // =dword_20349A0 
    // numWords
    mov r1, #0x14
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_802A210
loc_8026858:
    bl sub_801DF92
    ldr r0, dword_8026994 // =0x30172 
    bl sub_801DACC
    ldr r0, off_8026998 // =0x400 
    bl sub_801DACC
    ldr r0, dword_802699C // =0x20130 
    bl sub_801BED6
    mov r4, #0
    ldr r5, off_8026BF0 // =dword_20364C0 
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x29 
    bl sub_80136CC
    cmp r0, #0
    bne loc_8026898
    bl sub_8029F70
    tst r0, r0
    beq loc_8026898
    bl sub_802A564
    cmp r0, #5
    beq loc_8026898
    bl sub_8029EC8
    add r4, r0, #0
loc_8026898:
    ldr r0, off_80269A0 // =unk_86E625C 
    tst r4, r4
    beq loc_80268A0
    ldr r0, off_80269A4 // =unk_86E64B4 
loc_80268A0:
    ldr r1, off_80269C8 // =unk_2035000 
    ldr r2, off_80269A8 // =0x258 
    bl sub_8000950
    mov r2, #0x9b
    ldr r6, off_80269AC // =byte_8027B2C 
loc_80268AC:
    ldr r0, dword_80269B0 // =0xFFF 
    and r0, r2
    ldrb r2, [r6,#4]
    lsl r2, r2, #0xc
    orr r2, r0
    ldrb r0, [r6]
    ldrb r1, [r6,#1]
    ldrb r3, [r6,#2]
    ldrb r4, [r6,#3]
    ldrb r5, [r6,#5]
    bl sub_8027CCC
    add r6, #6
    ldrb r0, [r6]
    cmp r0, #0xff
    bne loc_80268AC
    // memBlock
    ldr r0, off_8026BF0 // =dword_20364C0 
    // numWords
    mov r1, #0x70 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    ldr r5, off_8026BF0 // =dword_20364C0 
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x29 
    bl sub_80136CC
    strb r0, [r5,#0x10] // (byte_20364D0 - 0x20364c0)
    strb r0, [r5,#0x11] // (byte_20364D1 - 0x20364c0)
    strb r0, [r5,#0x15] // (byte_20364D5 - 0x20364c0)
    mov r0, #0
    strh r0, [r5,#0x3a] // (word_20364FA - 0x20364c0)
    strh r0, [r5,#0x38] // (word_20364F8 - 0x20364c0)
    ldr r5, off_8026BF0 // =dword_20364C0 
    mov r1, #1
    strb r1, [r5,#0x4] // (dword_20364C4 - 0x20364c0)
    mov r0, #0xff
    strb r0, [r5,#0xc] // (byte_20364CC - 0x20364c0)
    bl sub_8029F70
    tst r0, r0
    beq loc_802690E
    bl sub_802A564
    cmp r0, #5
    beq loc_802690E
    bl sub_8029EF8
    strb r0, [r5,#0x18] // (dword_20364D8 - 0x20364c0)
loc_802690E:
    bl sub_802811C
    mov r0, #0x1a
    strb r0, [r5,#0x9] // (byte_20364C9 - 0x20364c0)
    mov r0, #0
    sub r0, #1
    strh r0, [r5,#0x20] // (word_20364E0 - 0x20364c0)
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r0, [r2,#7]
    add r1, r0, #1
    strb r1, [r2,#7]
    cmp r0, #0
    bne loc_8026936
    bl sub_802D234
    ldr r1, off_80269B8 // =dword_80269BC 
    ldrb r0, [r1,r0]
    strb r0, [r5,#0xc] // (byte_20364CC - 0x20364c0)
    b loc_802694C
loc_8026936:
    bl sub_802D234
    mov r1, #5
    cmp r0, r1
    bne loc_802694C
    bl sub_802A564
    tst r3, r3
    bne loc_802694C
    mov r0, #5
    strb r0, [r5,#0xc] // (byte_20364CC - 0x20364c0)
loc_802694C:
    bl sub_802A49C
    bl sub_802A40C
    bl sub_802945A
    bl sub_802A646
    bl sub_8027D58
    strb r0, [r5,#0x5] // (dword_20364C4+1 - 0x20364c0)
    bl sub_8027E2C
    mov r0, #1
    bl loc_8028250
    mov r1, #4
loc_802696E:
    ldr r0, dword_80269B4 // =0x1FF 
    push {r1}
    bl sub_80281D4
    ldr r0, [sp]
    mov r1, #0
    mov r2, #1
    bl sub_8029CD4
    pop {r1}
    sub r1, #1
    bpl loc_802696E
    bl sub_8028476
    bl sub_8015940
    bl sub_802A0EC
    pop {r4-r7,pc}
dword_8026994:    .word 0x30172
off_8026998:    .word 0x400
dword_802699C:    .word 0x20130
off_80269A0:    .word unk_86E625C
off_80269A4:    .word unk_86E64B4
off_80269A8:    .word 0x258
off_80269AC:    .word byte_8027B2C
dword_80269B0:    .word 0xFFF
dword_80269B4:    .word 0x1FF
off_80269B8:    .word dword_80269BC
dword_80269BC:    .word 0x100FFFF, 0xFFFF0302, 0xFFFFFF06
off_80269C8:    .word unk_2035000
off_80269CC:    .word dword_20349A0
.endfunc // sub_8026840

.func
.thumb_func
sub_80269D0:
    push {lr}
    mov r0, #0
    bl sub_800A9E2
    mov r1, #5
    and r0, r1
    beq locret_80269E0
    mov r0, #1
locret_80269E0:
    pop {pc}
.endfunc // sub_80269D0

.func
.thumb_func
sub_80269E2:
    push {r5,lr}
    mov r0, #0
    ldr r5, off_8026BF0 // =dword_20364C0 
    ldrb r1, [r5]
    cmp r1, #0
    beq loc_8026A24
    cmp r1, #8
    beq loc_8026A24
    ldrb r1, [r5,#0x1] // (dword_20364C0+1 - 0x20364c0)
    cmp r1, #0
    beq loc_8026A24
    cmp r1, #8
    beq loc_8026A24
    cmp r1, #4
    beq loc_8026A24
    cmp r1, #0xc
    beq loc_8026A24
    cmp r1, #0x2c 
    beq loc_8026A24
    cmp r1, #0x30 
    beq loc_8026A24
    cmp r1, #0x34 
    beq loc_8026A24
    cmp r1, #0x10
    beq loc_8026A24
    cmp r1, #0x14
    beq loc_8026A24
    cmp r1, #0x18
    beq loc_8026A24
    cmp r1, #0x1c
    beq loc_8026A24
    cmp r1, #0x20 
    bne locret_8026A26
loc_8026A24:
    mov r0, #1
locret_8026A26:
    pop {r5,pc}
.endfunc // sub_80269E2

loc_8026A28:
    push {r5,lr}
    ldr r5, off_8026BF0 // =dword_20364C0 
    ldr r1, off_8026A38 // =off_8026A3C 
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
off_8026A38:    .word off_8026A3C
off_8026A3C:    .word sub_8026A50+1
    .word loc_8026A88+1
    .word sub_8026A6C+1
    .word 0x100
    .word byte_200F360
.func
.thumb_func
sub_8026A50:
    push {lr}
    bl sub_802FE48
    strb r0, [r5,#0xe]
    add r3, r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    mov r0, #0
    bl sub_802FE7A
    mov r0, #4
    str r0, [r5]
    mov r0, #0
    pop {pc}
.endfunc // sub_8026A50

.func
.thumb_func
sub_8026A6C:
    push {lr}
    bl sub_8027D78
    ldrb r0, [r5,#0xe]
    bl sub_802FE6A
    bl sub_80062EC
    bl sub_802A3CC
    bl sub_802A0F8
    ldrb r0, [r5,#4]
    pop {pc}
.endfunc // sub_8026A6C

loc_8026A88:
    push {r5,lr}
    ldr r5, off_8026BF0 // =dword_20364C0 
    ldr r1, off_8026AA0 // =off_8026AA4 
    ldrb r0, [r5,#0x1] // (dword_20364C0+1 - 0x20364c0)
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_802A2B0
    mov r0, #0
    pop {r5,pc}
    .byte 0, 0
off_8026AA0:    .word off_8026AA4
off_8026AA4:    .word sub_8026B04+1
    .word sub_8026CCC+1
    .word sub_8026BF4+1
    .word sub_8026D06+1
    .word sub_8026DB0+1
    .word sub_8026DC4+1
    .word sub_8026E4C+1
    .word loc_8026E98+1
    .word sub_8026FC0+1
    .word sub_8027044+1
    .word sub_80271F8+1
    .word loc_802728C+1
    .word loc_80273A4+1
    .word sub_80273EC+1
    .word loc_8027406+1
    .word sub_802753E+1
    .word sub_8027548+1
    .word sub_80275EC+1
    .word sub_802770C+1
    .word sub_8027834+1
    .word sub_802790C+1
    .word sub_802794A+1
    .word sub_8026E78+1
    .word loc_8027A58+1
.func
.thumb_func
sub_8026B04:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8026B38
    mov r0, #0x79 
    bl sound_play
    mov r1, r10
    ldr r1, [r1,#8]
    mov r0, #0x78 
    strh r0, [r1,#0x18]
    mov r0, #0
    bl sub_801E71C
    mov r0, #0x80
    bl sub_801DACC
    mov r0, #0xf
    mov r1, #0
    bl sub_801E0A0
    mov r0, #0xf
    str r0, [r5,#0x44]
    mov r0, #0x78 
    str r0, [r5,#0x40]
    strb r0, [r5,#2]
loc_8026B38:
    ldr r0, [r5,#0x40]
    sub r0, #0xc
    push {r0,r4,r6,r7}
    mov r6, #4
    and r6, r0
    lsr r6, r6, #2
    add r6, #1
loc_8026B46:
    ldr r0, [r5,#0x44]
    sub r0, #1
    str r0, [r5,#0x44]
    ldr r4, off_8026DAC // =unk_2035000 
    lsl r0, r0, #1
    add r4, r4, r0
    lsr r0, r0, #1
    mov r1, #0
    mov r2, #3
    mov r7, #0x14
loc_8026B5A:
    push {r0,r1}
    ldrh r3, [r4]
    mov r2, #3
    bl sub_800187C
    pop {r0,r1}
    add r1, #1
    add r4, #0x1e
    sub r7, #1
    bne loc_8026B5A
    sub r6, #1
    bne loc_8026B46
    pop {r0,r4,r6,r7}
    push {r0}
    bl sub_802D234
    cmp r0, #1
    pop {r0}
    beq loc_8026B8C
    mov r2, r10
    ldr r2, [r2,#0xc]
    ldr r1, [r2,#0x34]
    ldr r3, dword_8026CC8 // =0x18000 
    sub r1, r1, r3
    str r1, [r2,#0x34]
loc_8026B8C:
    str r0, [r5,#0x40]
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1,#0x18]
    push {r0}
    add r1, r0, #0
    mov r0, #0x78 
    sub r0, r0, r1
    bl sub_801E71C
    pop {r0}
    cmp r0, #0
    bne loc_8026BE8
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    bne loc_8026BB6
    bl sub_801E574
    b loc_8026BC2
loc_8026BB6:
    mov r0, #0
    bl sub_8013FD0
    mov r0, #1
    bl sub_8013FD0
loc_8026BC2:
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq loc_8026BE0
    cmp r0, #5
    bne loc_8026BD6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #5
    bge loc_8026BE0
loc_8026BD6:
    mov r0, #0x2c 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b loc_8026BE8
loc_8026BE0:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_8026BE8:
    bl sub_8029C08
    pop {pc}
    .byte 0, 0
off_8026BF0:    .word dword_20364C0
.endfunc // sub_8026B04

.func
.thumb_func
sub_8026BF4:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8026C14
    str r0, [r5,#0x44]
    str r0, [r5,#0x40]
    mov r0, #1
    strb r0, [r5,#2]
    ldr r0, off_8026CC4 // =0x2000 
    bl sub_801DACC
    bl sub_8029D80
    mov r0, #4
    bl sub_800A9D6
loc_8026C14:
    ldr r0, [r5,#0x40]
    add r0, #0xc
    push {r0,r4-r7}
    add r7, r5, #0
    mov r6, #4
    and r6, r0
    lsr r6, r6, #2
    mov r0, #1
    eor r6, r0
    add r6, #1
loc_8026C28:
    ldr r0, [r7,#0x44]
    add r0, #1
    str r0, [r7,#0x44]
    // a1
    sub r0, #1
    // a2
    mov r1, #0
    // a3
    mov r2, #3
    ldr r3, off_8026C84 // =dword_8026C88 
    mov r4, #1
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_8026BF4

    sub r6, #1
    bne loc_8026C28
    pop {r0,r4-r7}
    push {r0}
    bl sub_802D234
    cmp r0, #1
    pop {r0}
    beq loc_8026C5C
    mov r2, r10
    ldr r2, [r2,#0xc]
    ldr r1, [r2,#0x34]
    ldr r3, dword_8026CC8 // =0x18000 
    add r1, r1, r3
    str r1, [r2,#0x34]
loc_8026C5C:
    str r0, [r5,#0x40]
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1,#0x18]
    push {r0}
    add r1, r0, #0
    mov r0, #0x78 
    sub r0, r0, r1
    bl sub_801E71C
    pop {r0}
    cmp r0, #0x78 
    bne loc_8026C7E
    ldrb r0, [r5,#0xb]
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
loc_8026C7E:
    bl sub_8029C08
    pop {pc}
off_8026C84:    .word dword_8026C88
dword_8026C88:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8026CC4:    .word 0x2000
dword_8026CC8:    .word 0x18000
.func
.thumb_func
sub_8026CCC:
    push {r7,lr}
    bl sub_802A220
    cmp r0, #0xff
    beq loc_8026CE6
    strh r0, [r5,#0x38]
    mov r0, #0x40 
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x40]
    b locret_8026D04
loc_8026CE6:
    mov r7, r10
    ldr r7, [r7,#4]
    bl loc_8028B74
    bl loc_8028820
    bl sub_8029C08
    bl sub_802899C
    bl sub_8029D34
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
locret_8026D04:
    pop {r7,pc}
.endfunc // sub_8026CCC

.func
.thumb_func
sub_8026D06:
    push {r4,r5,lr}
    mov r3, r10
    ldr r3, [r3,#8]
    ldrb r0, [r5,#2]
    cmp r0, #2
    beq loc_8026D9A
    cmp r0, #0
    bne loc_8026D46
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #0x78 
    strh r0, [r3,#0x18]
    mov r0, #0
    bl sub_801E71C
    ldr r0, off_8026DA8 // =0x2000 
    bl sub_801DACC
    bl sub_8029D80
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0xf
    mov r5, #0x14
    bl sub_80018D0
    mov r0, #0x80
    bl sound_play
    b locret_8026DA6
loc_8026D46:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    cmp r0, #0
    bne loc_8026D5C
    push {r3}
    bl sub_802A220
    pop {r3}
    cmp r0, #0xff
    beq locret_8026DA6
loc_8026D5C:
    mov r0, #2
    strb r0, [r5,#2]
    mov r0, #0
    strh r0, [r3,#0x18]
    mov r0, #0x78 
    bl sub_801E71C
    push {r4,r5}
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #3
    ldr r3, off_8026DAC // =unk_2035000 
    mov r4, #0xf
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r4,r5}
    bl sub_8029C08
    mov r0, #0x80
    bl sound_play
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    bne locret_8026DA6
    ldr r0, off_8026DA8 // =0x2000 
    bl sub_801DA48
    b locret_8026DA6
loc_8026D9A:
    bl sub_8029C08
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8026DA6:
    pop {r4,r5,pc}
off_8026DA8:    .word 0x2000
off_8026DAC:    .word unk_2035000
.endfunc // sub_8026D06

.func
.thumb_func
sub_8026DB0:
    push {lr}
    bl loc_802B734
    cmp r0, #0
    beq locret_8026DC2
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8026DC2:
    pop {pc}
.endfunc // sub_8026DB0

.func
.thumb_func
sub_8026DC4:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8026DEC
    bl sub_8027D78
    mov r0, #1
    strb r0, [r5,#2]
    bl sub_802A4FC
    bl sub_800B3A2
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    beq loc_8026DEC
    mov r0, #0
    bl sub_801E474
loc_8026DEC:
    ldr r0, dword_8026E44 // =0x56789123 
    bl sub_800B46C
    tst r0, r0
    beq locret_8026E40
    bl sub_800B460
    bl sub_800B3D8
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    beq loc_8026E14
    ldr r0, off_8026E48 // =0x1000 
    bl sub_801BED6
    ldr r0, off_8026E48 // =0x1000 
    bl sub_801DACC
loc_8026E14:
    mov r0, #2
    bl sub_801DA48
    mov r0, #2
    bl sub_801BECC
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq loc_8026E3C
    cmp r0, #3
    beq loc_8026E3C
    cmp r0, #4
    beq loc_8026E3C
    cmp r0, #5
    beq loc_8026E3C
    mov r0, #0x30 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8026E40
loc_8026E3C:
    mov r0, #8
    strb r0, [r5]
locret_8026E40:
    pop {pc}
    .balign 4, 0x00
dword_8026E44:    .word 0x56789123
off_8026E48:    .word 0x1000
.endfunc // sub_8026DC4

.func
.thumb_func
sub_8026E4C:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    beq loc_8026E64
    bl sub_802A220
    cmp r0, #0xff
    beq loc_8026E72
    bl chatbox_8040818
loc_8026E64:
    mov r0, #0x9e
    bl sound_play
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_8026E72:
    bl sub_8029C08
    pop {pc}
.endfunc // sub_8026E4C

.func
.thumb_func
sub_8026E78:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    bne loc_8026E92
    mov r0, #0x9e
    bl sound_play
    mov r0, #0x54 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_8026E92:
    bl sub_8029C08
    pop {pc}
.endfunc // sub_8026E78

loc_8026E98:
    push {r4,lr}
    mov r4, #0
    bl get_802D246 // () -> int
    ldr r1, dword_8027040 // =0x200000 
    tst r0, r1
    beq loc_8026EA8
    mov r4, #4
loc_8026EA8:
    ldr r1, off_8026EB8 // =off_8026EBC 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    pop {r4,pc}
off_8026EB8:    .word off_8026EBC
off_8026EBC:    .word sub_8026EC8+1
    .word sub_8026F1A+1
    .word sub_8026FAA+1
.func
.thumb_func
sub_8026EC8:
    push {lr}
    bl get_802D246 // () -> int
    mov r1, #0x20 
    tst r0, r1
    bne loc_8026F04
    mov r0, #8
    strh r0, [r5,#2]
    bl sub_802D234
    cmp r0, #5
    bne loc_8026EEA
    ldr r0, off_802702C // =off_8027BD0 
    mov r1, #0xc // (off_8027BDC - 0x8027bd0)
    ldr r0, [r0,r1]
    mov r1, #0x23 
    b loc_8026F0E
loc_8026EEA:
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq loc_8026EFE
    ldr r0, off_802702C // =off_8027BD0 
    ldrb r1, [r5,#0xc]
    lsl r2, r1, #2
    ldr r0, [r0,r2]
    ldr r2, off_8027030 // =dword_8027034 
    ldrb r1, [r2,r1]
    b loc_8026F0E
loc_8026EFE:
    mov r1, #3
    add r1, r1, r4
    b loc_8026F0C
loc_8026F04:
    mov r0, #4
    strh r0, [r5,#2]
    mov r1, #0
    add r1, r1, r4
loc_8026F0C:
    ldr r0, off_8027008 // =dword_86EF78C 
loc_8026F0E:
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #0x7b 
    bl sound_play
    pop {pc}
.endfunc // sub_8026EC8

.func
.thumb_func
sub_8026F1A:
    push {r4,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    beq loc_8026F34
    bl sub_802A220
    cmp r0, #0xff
    beq locret_8026FA8
    bl chatbox_8040818
    b loc_8026FA0
loc_8026F34:
    bl chatbox_8045F4C
    cmp r0, #1
    beq loc_8026FA0
    mov r0, #0xff
    ldr r1, off_802700C // =byte_20366C0 
    strb r0, [r1]
    bl sub_802D258
    add r4, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x3e 
    bl sub_80136E4
    add r0, #4
    mov r1, #5
    svc 6
    cmp r0, r4
    bgt loc_8026F8E
    mov r3, #8
    lsr r2, r0, #1
    add r0, r0, r2
    cmp r4, r0
    blt loc_8026F72
    sub r3, #4
    add r0, r0, r2
    cmp r4, r0
    blt loc_8026F72
    sub r3, #4
loc_8026F72:
    ldr r2, off_8027010 // =off_8027014 
    ldr r3, [r2,r3]
    ldr r1, off_802703C // =dword_20349A0 
    ldr r0, [r1,#0x8] // (dword_20349A8 - 0x20349a0)
    add r2, r0, #1
    str r2, [r1,#0x8] // (dword_20349A8 - 0x20349a0)
    ldrb r4, [r3,r0]
    bl sub_800154C
    mov r1, #1
    mov r2, #0xf
    and r0, r2
    cmp r0, r4
    bge loc_8026F92
loc_8026F8E:
    mov r0, #2
    strb r0, [r5,#4]
loc_8026F92:
    mov r0, #0x20 
    strb r0, [r5,#0xb]
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8026FA8
loc_8026FA0:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8026FA8:
    pop {r4,pc}
.endfunc // sub_8026F1A

.func
.thumb_func
sub_8026FAA:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    bne locret_8026FBE
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8026FBE:
    pop {pc}
.endfunc // sub_8026FAA

.func
.thumb_func
sub_8026FC0:
    push {r4,lr}
    mov r4, #0
    bl get_802D246 // () -> int
    ldr r1, dword_8027040 // =0x200000 
    tst r0, r1
    beq loc_8026FD0
    mov r4, #4
loc_8026FD0:
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8026FF2
    mov r0, #1
    strb r0, [r5,#2]
    bl sub_802A0EC
    mov r1, #1
    ldrb r0, [r5,#4]
    cmp r0, #2
    beq loc_8026FE8
    mov r1, #2
loc_8026FE8:
    add r1, r1, r4
    ldr r0, off_8027008 // =dword_86EF78C 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    b locret_8027004
loc_8026FF2:
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    bne locret_8027004
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8027004:
    pop {r4,pc}
    .balign 4, 0x00
off_8027008:    .word dword_86EF78C
off_802700C:    .word byte_20366C0
off_8027010:    .word off_8027014
off_8027014:    .word off_8027020
    .word 0x8027023, 0x8027026
off_8027020:    .word loc_80F0804
    .word 0xE0C0F0C, 0xF
off_802702C:    .word off_8027BD0
off_8027030:    .word dword_8027034
dword_8027034:    .word 0x230C0E0D, 0x62323
off_802703C:    .word dword_20349A0
dword_8027040:    .word 0x200000
.endfunc // sub_8026FC0

.func
.thumb_func
sub_8027044:
    push {lr}
    ldr r1, off_802705C // =off_8027060 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    bl sub_802899C
    pop {pc}
    .balign 4, 0x00
off_802705C:    .word off_8027060
off_8027060:    .word sub_802707C+1
    .word sub_80270D0+1
    .word sub_80270EA+1
    .word sub_8027118+1
    .word sub_8027134+1
    .word sub_8027150+1
    .word sub_80271C2+1
.endfunc // sub_8027044

.func
.thumb_func
sub_802707C:
    push {r4,lr}
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #0xb
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrb r0, [r4,#6]
    cmp r0, #0
    beq loc_8027094
    mov r0, #0xd
    b loc_8027096
loc_8027094:
    ldrb r0, [r4,#5]
loc_8027096:
    mov r1, #0x80
    mul r0, r1
    ldr r1, off_80270CC // =dword_8725894 
    add r0, r0, r1
    ldr r1, dword_80270C0 // =0x60172C0 
    mov r2, #0x80
    bl loc_8000AC8
.endfunc // sub_802707C

    ldrb r0, [r5,#8]
    mov r1, #0x10
    mul r0, r1
    add r0, #0x18
    str r0, [r5,#0x44]
    ldr r0, off_80270C4 // =unk_872CF94 
    ldr r1, off_80270C8 // =unk_30016F0 
    mov r2, #0x20 
    bl loc_8000AC8
    mov r0, #4
    strh r0, [r5,#2]
    pop {r4,pc}
dword_80270C0:    .word 0x60172C0
off_80270C4:    .word unk_872CF94
off_80270C8:    .word unk_30016F0
off_80270CC:    .word dword_8725894
.func
.thumb_func
sub_80270D0:
    push {lr}
    bl sub_80298D8
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x10
    blt locret_80270E8
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #8
    strh r0, [r5,#2]
locret_80270E8:
    pop {pc}
.endfunc // sub_80270D0

.func
.thumb_func
sub_80270EA:
    push {lr}
    ldr r0, [r5,#0x44]
    sub r0, #2
    str r0, [r5,#0x44]
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #8
    blt loc_8027112
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #0x34 
    mov r1, #0x20 
    bl engine_setScreeneffect
    mov r0, #0x91
    bl sound_play
    mov r0, #0xc
    strh r0, [r5,#2]
loc_8027112:
    bl sub_80298D8
    pop {pc}
.endfunc // sub_80270EA

.func
.thumb_func
sub_8027118:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne loc_802712E
    mov r0, #0x10
    strh r0, [r5,#2]
    mov r0, #0x30 
    mov r1, #0x20 
    bl engine_setScreeneffect
loc_802712E:
    bl sub_80298D8
    pop {pc}
.endfunc // sub_8027118

.func
.thumb_func
sub_8027134:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne loc_802714A
    mov r0, #4
    mov r1, #0x20 
    bl engine_setScreeneffect
    mov r0, #0x14
    strh r0, [r5,#2]
loc_802714A:
    bl sub_80298D8
    pop {pc}
.endfunc // sub_8027134

.func
.thumb_func
sub_8027150:
    push {r4,lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne loc_80271BC
    ldrb r3, [r5,#8]
    sub r3, #1
    mov r2, #0x48 
    add r2, r2, r3
    add r2, r2, r5
loc_8027164:
    cmp r3, #0
    beq loc_8027188
    sub r2, #1
    ldrb r0, [r2]
    strb r0, [r2,#1]
    push {r2,r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    add r1, r3, #0
    bl sub_80281D4
    pop {r2,r3}
    sub r3, #1
    b loc_8027164
loc_8027188:
    mov r0, #0xb
    strb r0, [r2]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #2
    strb r1, [r0,#7]
    ldrb r1, [r0,#6]
    cmp r1, #0
    beq loc_802719E
    mov r0, #0xd
    b loc_80271A0
loc_802719E:
    ldrb r0, [r0,#5]
loc_80271A0:
    mov r1, #0
    bl sub_80281E4
    bl sub_8028E32
    mov r0, #0
    mov r1, #0x20 
    bl engine_setScreeneffect
    mov r0, #0x92
    bl sound_play
    mov r0, #0x18
    strh r0, [r5,#2]
loc_80271BC:
    bl sub_80298D8
    pop {r4,pc}
.endfunc // sub_8027150

.func
.thumb_func
sub_80271C2:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_80271F2
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    ldrb r2, [r5,#0xc]
    cmp r2, #3
    bne locret_80271F2
    ldr r0, off_80271F4 // =off_8027BD0 
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov r1, #0xa
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #4
    strb r0, [r5,#0xd]
    mov r0, #0x34 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80271F2:
    pop {pc}
off_80271F4:    .word off_8027BD0
.endfunc // sub_80271C2

.func
.thumb_func
sub_80271F8:
    push {lr}
    ldr r1, off_8027210 // =off_8027214 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    bl sub_802899C
    pop {pc}
    .byte 0, 0
off_8027210:    .word off_8027214
off_8027214:    .word sub_802721C+1
    .word sub_802723A+1
.endfunc // sub_80271F8

.func
.thumb_func
sub_802721C:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    bl sub_8029788
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #2
    strb r1, [r0,#7]
    bl sub_8028E32
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_802721C

.func
.thumb_func
sub_802723A:
    push {lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    mov r1, #3
    and r1, r0
    bne locret_802728A
    lsr r0, r0, #2
    cmp r0, #8
    blt loc_802727A
    bl sub_802983C
    ldrb r0, [r5,#0x16]
    add r0, #1
    strb r0, [r5,#0x16]
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r2, #0
    ldrb r1, [r0,#4]
    sub r1, #1
    strb r1, [r0,#4]
    bne loc_802726A
    mov r2, #1
loc_802726A:
    strb r2, [r0,#7]
    bl sub_8028476
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b loc_802727E
loc_802727A:
    bl sub_8029688
loc_802727E:
    bl sub_8028E32
    mov r0, #0x14
    add r0, #0xff
    bl sound_play
locret_802728A:
    pop {pc}
.endfunc // sub_802723A

loc_802728C:
    push {r4,lr}
    ldr r4, [r5,#0x40]
    ldr r1, off_80272A0 // =off_80272A4 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    pop {r4,pc}
off_80272A0:    .word off_80272A4
off_80272A4:    .word sub_80272B8+1
    .word sub_80272D0+1
    .word sub_8027320+1
    .word sub_8027332+1
    .word sub_8027394+1
.func
.thumb_func
sub_80272B8:
    push {lr}
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #2
    ldr r1, off_80272CC // =off_8027BEC 
    ldr r0, [r1,r0]
    str r0, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
    .balign 4, 0x00
off_80272CC:    .word off_8027BEC
.endfunc // sub_80272B8

.func
.thumb_func
sub_80272D0:
    push {lr}
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_80272E6
    cmp r0, #1
    beq loc_80272FE
    cmp r0, #2
    beq loc_8027308
    mov r0, #0x10
    strh r0, [r5,#2]
    b locret_8027318
loc_80272E6:
    mov r0, #8
    strh r0, [r5,#2]
    ldr r0, off_802731C // =off_8027BD0 
    ldrb r1, [r5,#0xc]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r1, [r4,#1]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    add r4, #2
    str r4, [r5,#0x40]
    b locret_8027318
loc_80272FE:
    mov r0, #0xc
    strh r0, [r5,#2]
    mov r0, #0x50 
    str r0, [r5,#0x44]
    b locret_8027318
loc_8027308:
    ldrb r1, [r4,#1]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8015BEC
    add r4, #2
    str r4, [r5,#0x40]
locret_8027318:
    pop {pc}
    .balign 4, 0x00
off_802731C:    .word off_8027BD0
.endfunc // sub_80272D0

.func
.thumb_func
sub_8027320:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    bne locret_8027330
    mov r0, #4
    strh r0, [r5,#2]
locret_8027330:
    pop {pc}
.endfunc // sub_8027320

.func
.thumb_func
sub_8027332:
    push {lr}
    add r4, #1
loc_8027336:
    push {r4}
    ldrb r0, [r4,#2]
    mov r1, #0x80
    bic r0, r1
    lsl r0, r0, #2
    ldr r2, off_8027384 // =dword_8027388 
    ldr r2, [r2,r0]
    ldr r3, dword_8027390 // =0xB37A 
    ldrb r0, [r4]
    ldrb r1, [r4,#1]
    mov r4, #1
    bl sub_8001040
.endfunc // sub_8027332

    pop {r4}
    ldrb r0, [r4,#2]
    add r4, #3
    mov r1, #0x80
    tst r0, r1
    beq loc_8027336
    ldr r0, [r5,#0x44]
    sub r0, #1
    str r0, [r5,#0x44]
    beq loc_802737C
    cmp r0, #0x44 
    bgt locret_8027382
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r0, [r3,#2]
    mov r1, #1
    tst r0, r1
    bne loc_802737C
    ldrh r0, [r3,#4]
    mov r1, #2
    tst r0, r1
    beq locret_8027382
loc_802737C:
    str r4, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#2]
locret_8027382:
    pop {pc}
off_8027384:    .word dword_8027388
dword_8027388:    .word 0x40000000, 0x60000000
dword_8027390:    .word 0xB37A
.func
.thumb_func
sub_8027394:
    push {lr}
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    pop {pc}
    .word dword_20349A0
.endfunc // sub_8027394

loc_80273A4:
    push {r4,lr}
    ldr r4, [r5,#0x40]
    ldr r1, off_80273B4 // =off_80273B8 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,pc}
off_80273B4:    .word off_80273B8
off_80273B8:    .word sub_80273CC+1
    .word sub_80272D0+1
    .word sub_8027320+1
    .word sub_8027332+1
    .word sub_80273E4+1
.func
.thumb_func
sub_80273CC:
    push {lr}
    ldrb r0, [r5,#0xc]
    lsl r0, r0, #2
    ldr r1, off_80273E0 // =off_8027C84 
    ldr r0, [r1,r0]
    str r0, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
    .byte 0, 0
off_80273E0:    .word off_8027C84
.endfunc // sub_80273CC

.func
.thumb_func
sub_80273E4:
    push {lr}
    mov r0, #8
    strb r0, [r5]
    pop {pc}
.endfunc // sub_80273E4

.func
.thumb_func
sub_80273EC:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    bne loc_8027400
    ldrb r0, [r5,#0xd]
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_8027400:
    bl sub_8029C08
    pop {pc}
.endfunc // sub_80273EC

loc_8027406:
    push {r4,lr}
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldr r1, off_8027424 // =off_8027428 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    bl sub_802899C
    pop {r4,pc}
off_8027424:    .word off_8027428
off_8027428:    .word sub_8027434+1
    .word sub_8027458+1
    .word sub_802750C+1
.func
.thumb_func
sub_8027434:
    push {lr}
    mov r0, #0x18
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #0
    mov r1, #0x5f 
    strb r0, [r5,r1]
loc_8027444:
    ldr r1, dword_8027508 // =0xFFFF 
    mov r2, #0x60 
    add r2, r2, r5
    strh r1, [r2,r0]
    add r0, #2
    cmp r0, #0x10
    blt loc_8027444
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_8027434

.func
.thumb_func
sub_8027458:
    push {r4,r6,lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    mov r1, #0x19
    svc 6
    tst r1, r1
    bne loc_80274CE
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_80274F0
    add r0, #0x47 
    ldrb r0, [r5,r0]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_80274F0
    ldrb r1, [r0,#4]
    mov r2, #1
    tst r1, r2
    beq loc_802748E
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r1, #0
    strb r1, [r2,#0x17]
loc_802748E:
    ldr r2, [r0,#8]
    ldrh r0, [r2]
    ldr r3, dword_8027508 // =0xFFFF 
    strh r3, [r2]
    mov r1, #0x5f 
    ldrb r1, [r5,r1]
    lsl r2, r1, #1
    mov r3, #0x60 
    add r3, r3, r2
    strh r0, [r5,r3]
    add r1, #1
    mov r2, #0x5f 
    strb r1, [r5,r2]
    ldrb r1, [r5,#8]
    sub r1, #1
    strb r1, [r5,#8]
    ldr r0, dword_8027504 // =0x1FF 
    bl sub_80281D4
    ldrb r0, [r5,#8]
    mov r1, #0
    mov r2, #0
    bl sub_8029CD4
    bl sub_8028476
    mov r0, #0x97
    add r0, #0xff
    bl sound_play
    mov r0, #0x14
    str r0, [r5,#0x44]
loc_80274CE:
    ldr r0, [r5,#0x44]
    tst r0, r0
    beq loc_80274E4
    sub r0, #1
    str r0, [r5,#0x44]
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #3
    strb r1, [r0,#7]
    b locret_8027500
loc_80274E4:
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #0
    strb r1, [r0,#7]
    b locret_8027500
loc_80274F0:
    bl sub_802945A
    bl sub_80294E0
    bl sub_802A61A
    mov r0, #8
    strh r0, [r5,#2]
locret_8027500:
    pop {r4,r6,pc}
    .balign 4, 0x00
dword_8027504:    .word 0x1FF
dword_8027508:    .word 0xFFFF
.endfunc // sub_8027458

.func
.thumb_func
sub_802750C:
    push {lr}
    ldr r0, [r5,#0x30]
    add r0, #1
    str r0, [r5,#0x30]
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r2, #0
    ldrb r1, [r0,#4]
    sub r1, #1
    strb r1, [r0,#4]
    bne loc_8027526
    mov r2, #2
loc_8027526:
    strb r2, [r0,#7]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0x83
    add r0, #0xff
    bl sound_play
    bl sub_8028E32
    pop {pc}
.endfunc // sub_802750C

.func
.thumb_func
sub_802753E:
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov pc, lr
.endfunc // sub_802753E

.func
.thumb_func
sub_8027548:
    push {lr}
    ldr r1, off_8027560 // =off_8027564 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    bl sub_802899C
    pop {pc}
    .byte 0, 0
off_8027560:    .word off_8027564
off_8027564:    .word sub_8027574+1
    .word sub_8027580+1
    .word sub_802759E+1
    .word sub_80275D8+1
.endfunc // sub_8027548

.func
.thumb_func
sub_8027574:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_8027574

.func
.thumb_func
sub_8027580:
    push {lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x10
    blt locret_802759C
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #4
    mov r1, #0x20 
    bl engine_setScreeneffect
    mov r0, #8
    strh r0, [r5,#2]
locret_802759C:
    pop {pc}
.endfunc // sub_8027580

.func
.thumb_func
sub_802759E:
    push {r4,lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_80275D2
    mov r0, #0
    mov r1, #0x20 
    bl engine_setScreeneffect
    ldrh r0, [r5,#0x38]
    strh r0, [r5,#0x3a]
    ldrh r0, [r5,#0x3a]
    mov r1, #1
    lsl r1, r0
    ldr r3, off_80275D4 // =dword_20349A0 
    ldrh r0, [r3,#0xe] // (word_20349AE - 0x20349a0)
    orr r0, r1
    strh r0, [r3,#0xe] // (word_20349AE - 0x20349a0)
    ldrh r0, [r5,#0x3a]
    bl sub_802A0C8
    mov r0, #0x92
    bl sound_play
    mov r0, #0xc
    strh r0, [r5,#2]
locret_80275D2:
    pop {r4,pc}
off_80275D4:    .word dword_20349A0
.endfunc // sub_802759E

.func
.thumb_func
sub_80275D8:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_80275EA
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_80275EA:
    pop {pc}
.endfunc // sub_80275D8

.func
.thumb_func
sub_80275EC:
    push {lr}
    ldr r1, off_8027600 // =off_8027604 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    pop {pc}
    .byte 0, 0
off_8027600:    .word off_8027604
off_8027604:    .word sub_8027618+1
    .word sub_8027624+1
    .word sub_8027658+1
    .word sub_8027672+1
    .word sub_80276D6+1
.endfunc // sub_80275EC

.func
.thumb_func
sub_8027618:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_8027618

.func
.thumb_func
sub_8027624:
    push {lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x10
    blt locret_8027656
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #0x64 
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #1
    mov r1, #0x28 
    bl sub_80302B6
    mov r0, #0x94
    add r0, #0xff
    bl sound_play
    mov r0, #0xbc
    bl sound_play
    mov r0, #8
    strh r0, [r5,#2]
locret_8027656:
    pop {pc}
.endfunc // sub_8027624

.func
.thumb_func
sub_8027658:
    push {r4,r6,lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x32 
    blt locret_8027670
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_8027670
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8027670:
    pop {r4,r6,pc}
.endfunc // sub_8027658

.func
.thumb_func
sub_8027672:
    push {r4,r6,lr}
    mov r0, #0
    bl sub_802A040
    ldrb r3, [r5,#8]
    sub r3, #1
    mov r2, #0x48 
    add r2, r2, r3
    add r2, r2, r5
    ldrb r6, [r2]
loc_8027686:
    cmp r3, #0
    beq loc_80276AA
    sub r2, #1
    ldrb r0, [r2]
    strb r0, [r2,#1]
    push {r2,r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    add r1, r3, #0
    bl sub_80281D4
    pop {r2,r3}
    sub r3, #1
    b loc_8027686
loc_80276AA:
    mov r1, #0x48 
    add r1, r1, r5
    strb r6, [r1]
    add r0, r6, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r1, #0
    bl sub_80281D4
    bl sub_8028E32
    mov r0, #0x60 
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #0x10
    strh r0, [r5,#2]
    pop {r4,r6,pc}
.endfunc // sub_8027672

.func
.thumb_func
sub_80276D6:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_8027706
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    ldrb r2, [r5,#0xc]
    cmp r2, #3
    bne locret_8027706
    ldr r0, off_8027708 // =off_8027BD0 
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov r1, #0xa
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #4
    strb r0, [r5,#0xd]
    mov r0, #0x34 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8027706:
    pop {pc}
off_8027708:    .word off_8027BD0
.endfunc // sub_80276D6

.func
.thumb_func
sub_802770C:
    push {lr}
    ldr r1, off_8027720 // =off_8027724 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    pop {pc}
    .byte 0, 0
off_8027720:    .word off_8027724
off_8027724:    .word sub_8027738+1
    .word sub_802774C+1
    .word sub_802777C+1
    .word sub_8027796+1
    .word sub_8027806+1
.endfunc // sub_802770C

.func
.thumb_func
sub_8027738:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #1
    strb r0, [r5,#0xf]
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_8027738

.func
.thumb_func
sub_802774C:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #0x64 
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #1
    mov r1, #0x28 
    bl sub_80302B6
    mov r0, #0x94
    add r0, #0xff
    bl sound_play
    mov r0, #0x81
    bl sound_play
    mov r0, #0xbc
    bl sound_play
    mov r0, #8
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_802774C

.func
.thumb_func
sub_802777C:
    push {r4,r6,lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x32 
    blt locret_8027794
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_8027794
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8027794:
    pop {r4,r6,pc}
.endfunc // sub_802777C

.func
.thumb_func
sub_8027796:
    push {r4,r6,lr}
    mov r4, #0
    bl sub_802A564
    cmp r0, #1
    bne loc_80277A4
    mov r4, #0xc
loc_80277A4:
    add r0, r4, #0
    bl sub_802A040
    ldrb r3, [r5,#8]
    sub r3, #1
    mov r2, #0x48 
    add r2, r2, r3
    add r2, r2, r5
    ldrb r6, [r2]
loc_80277B6:
    cmp r3, #0
    beq loc_80277DA
    sub r2, #1
    ldrb r0, [r2]
    strb r0, [r2,#1]
    push {r2,r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    add r1, r3, #0
    bl sub_80281D4
    pop {r2,r3}
    sub r3, #1
    b loc_80277B6
loc_80277DA:
    mov r1, #0x48 
    add r1, r1, r5
    strb r6, [r1]
    bl sub_802A034
    mov r1, #0
    bl sub_80281D4
    mov r0, #0xb
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #2
    strb r1, [r0,#7]
    bl sub_8028E32
    mov r0, #0x60 
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #0x10
    strh r0, [r5,#2]
    pop {r4,r6,pc}
.endfunc // sub_8027796

.func
.thumb_func
sub_8027806:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_802782E
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    ldrb r2, [r5,#0xc]
    cmp r2, #3
    bne locret_802782E
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#0xd]
    mov r0, #0x2c 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_802782E:
    pop {pc}
    .word off_8027BD0
.endfunc // sub_8027806

.func
.thumb_func
sub_8027834:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_802784A
    str r0, [r5,#0x44]
    str r0, [r5,#0x40]
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #0x7a 
    bl sound_play
loc_802784A:
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x14
    bgt loc_80278C8
    mov r1, #3
    svc 6
    tst r1, r1
    bne loc_80278D6
    ldr r0, [r5,#0x44]
    cmp r0, #3
    bge loc_802786A
    lsl r0, r0, #2
    ldr r1, off_80278DC // =off_80278E0 
    ldr r0, [r1,r0]
    b loc_8027876
loc_802786A:
    ldrb r0, [r5,#0x18]
    sub r0, #1
    lsl r0, r0, #2
    add r0, #0xc
    ldr r1, off_80278DC // =off_80278E0 
    ldr r0, [r1,r0]
loc_8027876:
    ldr r1, off_8027B24 // =unk_2035000 
    ldr r2, off_8027900 // =0x258 
    bl sub_8000950
    push {r4-r6}
    mov r2, #0xe1
    ldr r6, off_8027904 // =byte_8027B4A 
loc_8027884:
    ldr r0, dword_8027908 // =0xFFF 
    and r0, r2
    ldrb r2, [r6,#4]
    lsl r2, r2, #0xc
    orr r2, r0
    ldrb r0, [r6]
    ldrb r1, [r6,#1]
    ldrb r3, [r6,#2]
    ldrb r4, [r6,#3]
    ldrb r5, [r6,#5]
    bl sub_8027CCC
    add r6, #6
    ldrb r0, [r6]
    cmp r0, #0xff
    bne loc_8027884
    pop {r4-r6}
    push {r4,r5}
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #3
    ldr r3, off_8027B24 // =unk_2035000 
    mov r4, #0xf
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r4,r5}
    ldr r0, [r5,#0x44]
    cmp r0, #3
    bge loc_80278C8
    ldr r0, [r5,#0x44]
    add r0, #1
    str r0, [r5,#0x44]
    b loc_80278D6
loc_80278C8:
    mov r0, #0x54 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    bl sub_802794A
    b locret_80278DA
loc_80278D6:
    bl sub_80279C8
locret_80278DA:
    pop {pc}
off_80278DC:    .word off_80278E0
off_80278E0:    .word unk_86E670C
    .word unk_86E6964
    .word unk_86E6BBC
    .word unk_86E6E14
    .word unk_86E706C
    .word unk_86E72C4
    .word unk_86E751C
    .word unk_86E7774
off_8027900:    .word 0x258
off_8027904:    .word byte_8027B4A
dword_8027908:    .word 0xFFF
.endfunc // sub_8027834

.func
.thumb_func
sub_802790C:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_8027922
    str r0, [r5,#0x44]
    str r0, [r5,#0x40]
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #0x7d 
    bl sound_play
loc_8027922:
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #5
    ble loc_8027940
    bl sub_80279FC
    bl sub_80279C8
    bl sub_8028476
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_8027940:
    bl sub_8029C08
    bl sub_802899C
    pop {pc}
.endfunc // sub_802790C

.func
.thumb_func
sub_802794A:
    push {r7,lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_802795C
    str r0, [r5,#0x44]
    str r0, [r5,#0x40]
    mov r0, #1
    strb r0, [r5,#2]
    b loc_8027964
loc_802795C:
    mov r7, r10
    ldr r7, [r7,#4]
    bl sub_8028A78
loc_8027964:
    bl sub_80279C8
    mov r4, #0
loc_802796A:
    ldrb r1, [r5,#0x1b]
    cmp r4, r1
    bne loc_802798A
    mov r2, #0
    ldr r1, dword_80279C4 // =0x55 
    add r1, r1, r4
    ldrb r0, [r5,r1]
    cmp r0, #0
    beq loc_802797E
    mov r2, #5
loc_802797E:
    ldr r1, off_80279C0 // =0x50 
    add r1, r1, r4
    ldrb r0, [r5,r1]
    add r0, r0, r2
    bl sub_8029EAC
loc_802798A:
    add r4, #1
    ldrb r2, [r5,#0x18]
    cmp r4, r2
    blt loc_802796A
    mov r0, #0
loc_8027994:
    mov r2, #2
    ldrb r1, [r5,#0x1b]
    cmp r0, r1
    bne loc_802799E
    mov r2, #0
loc_802799E:
    ldr r1, off_80279C0 // =0x50 
    add r1, r1, r0
    ldrb r1, [r5,r1]
    push {r0}
    bl sub_8029D94
    pop {r0}
    add r0, #1
    ldrb r2, [r5,#0x18]
    cmp r0, r2
    blt loc_8027994
    bl sub_80289E4
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    pop {r7,pc}
off_80279C0:    .word 0x50
dword_80279C4:    .word 0x55
.endfunc // sub_802794A

.func
.thumb_func
sub_80279C8:
    push {r4,lr}
    bl sub_8029C08
    bl sub_802899C
    bl sub_8029D34
    mov r4, #4
loc_80279D8:
    add r0, r4, #0
    mov r1, #0
    ldrb r2, [r5,#8]
    sub r2, #1
    cmp r0, r2
    bgt loc_80279E6
    mov r1, #1
loc_80279E6:
    mov r2, #0
    bl sub_8029CD4
    sub r4, #1
    bpl loc_80279D8
    bl sub_8028E32
    pop {r4,pc}
    .balign 4, 0x00
    .word 0x1FF
.endfunc // sub_80279C8

.func
.thumb_func
sub_80279FC:
    push {lr}
    ldr r0, off_8027A48 // =unk_86E64B4 
    ldr r1, off_8027B24 // =unk_2035000 
    ldr r2, off_8027A4C // =0x258 
    bl sub_8000950
    push {r4-r6}
    mov r2, #0x9b
    ldr r6, off_8027A50 // =byte_8027B2C 
loc_8027A0E:
    ldr r0, dword_8027A54 // =0xFFF 
    and r0, r2
    ldrb r2, [r6,#4]
    lsl r2, r2, #0xc
    orr r2, r0
    ldrb r0, [r6]
    ldrb r1, [r6,#1]
    ldrb r3, [r6,#2]
    ldrb r4, [r6,#3]
    ldrb r5, [r6,#5]
    bl sub_8027CCC
    add r6, #6
    ldrb r0, [r6]
    cmp r0, #0xff
    bne loc_8027A0E
    pop {r4-r6}
    push {r4,r5}
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #3
    ldr r3, off_8027B24 // =unk_2035000 
    mov r4, #0xf
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_80279FC

    pop {r4,r5}
    pop {pc}
    .balign 4, 0x00
off_8027A48:    .word unk_86E64B4
off_8027A4C:    .word 0x258
off_8027A50:    .word byte_8027B2C
dword_8027A54:    .word 0xFFF
loc_8027A58:
    push {lr}
    ldr r1, off_8027A70 // =off_8027A74 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8029C08
    bl sub_802899C
    pop {pc}
    .byte 0, 0
off_8027A70:    .word off_8027A74
off_8027A74:    .word sub_8027A84+1
    .word sub_8027A90+1
    .word sub_8027AAE+1
    .word sub_8027ADE+1
.func
.thumb_func
sub_8027A84:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #4
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_8027A84

.func
.thumb_func
sub_8027A90:
    push {lr}
    ldr r0, [r5,#0x40]
    add r0, #1
    str r0, [r5,#0x40]
    cmp r0, #0x10
    blt locret_8027AAC
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #4
    mov r1, #0x20 
    bl engine_setScreeneffect
    mov r0, #8
    strh r0, [r5,#2]
locret_8027AAC:
    pop {pc}
.endfunc // sub_8027A90

.func
.thumb_func
sub_8027AAE:
    push {r4,r6,lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_8027ADC
    mov r0, #0
    mov r1, #0x20 
    bl engine_setScreeneffect
    ldrb r0, [r5,#0x1a]
    bl sub_802A088
    bl sub_80279FC
    bl sub_80279C8
    bl sub_8028476
    mov r0, #0x92
    bl sound_play
    mov r0, #0xc
    strh r0, [r5,#2]
locret_8027ADC:
    pop {r4,r6,pc}
.endfunc // sub_8027AAE

.func
.thumb_func
sub_8027ADE:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_8027B1A
    bl sub_80279FC
    bl sub_80279C8
    bl sub_8028476
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    ldrb r2, [r5,#0xc]
    cmp r2, #6
    bne locret_8027B1A
    ldr r0, off_8027B1C // =off_8027BD0 
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    mov r1, #2
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #4
    strb r0, [r5,#0xd]
    mov r0, #0x34 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8027B1A:
    pop {pc}
off_8027B1C:    .word off_8027BD0
    .word dword_20364C0
off_8027B24:    .word unk_2035000
    .word dword_20349A0
byte_8027B2C:    .byte 0x2
byte_8027B2D:    .byte 0x1
byte_8027B2E:    .byte 0x8
byte_8027B2F:    .byte 0x2
byte_8027B30:    .byte 0x9
byte_8027B31:    .byte 0x1
    .hword 0x302
    .word 0xA0607, 0x2010902, 0x9030009, 0xB0202, 0x2030906
    .byte 0x9, 0x1
byte_8027B4A:    .byte 0x1
byte_8027B4B:    .byte 0xD
byte_8027B4C:    .byte 0x2
byte_8027B4D:    .byte 0x2
byte_8027B4E:    .byte 0xB
byte_8027B4F:    .byte 0x0
    .word 0x1020F01, 0xD030009, 0xB0202, 0x1020F03, 0xD050009
    .word 0xB0202, 0x1020F05, 0xD070009, 0xB0202, 0x1020F07
    .word 0xD090009, 0xB0202, 0x1020F09, 0x10010009, 0xB0202
    .word 0x1021201, 0x10030009, 0xB0202, 0x1021203, 0x10050009
    .word 0xB0202, 0x1021205, 0x10070009, 0xB0202, 0x1021207
    .word 0x10090009, 0xB0202, 0x1021209, 0x110B0009, 0x90204
    .word 0xA02030C, 0xFF000B
off_8027BD0:    .word dword_86F2E60
    .word dword_86F3868
    .word dword_86F3F5C
off_8027BDC:    .word dword_86F4498
    .word dword_86F4498
    .word dword_86F4498
    .word dword_86F53CC
off_8027BEC:    .word dword_8027C08
    .word dword_8027C38
    .word dword_8027C50
    .word dword_8027C64
    .word dword_8027C70
    .word dword_8027C7C
    .word dword_8027C80
dword_8027C08:    .word 0x78010000, 0x200804E, 0x80804001, 0x4A010300, 0x4008030
    .word 0x80564201, 0x8E010500, 0x88B60158, 0x1060081, 0x32007212
    .word 0x8008072, 0x3
dword_8027C38:    .word 0x12010000, 0x1008072, 0x80722201, 0x10010200, 0x7E20007E
    .word 0x3040080
dword_8027C50:    .word 0xA2010000, 0x3008020, 0xA201FF02, 0x4008020, 0x3
dword_8027C64:    .word 0x6A010000, 0x100817D, 0x3
dword_8027C70:    .word 0xA2010500, 0xA008020, 0x3
dword_8027C7C:    .word 0x31900
dword_8027C80:    .word 0x30100
off_8027C84:    .word dword_8027CA0
    .word 0x8027CB5, 0x8027CC4, 0x8027CC5, 0x8027CC6, 0x8027CC7
    .word 0x8027CC8
dword_8027CA0:    .word 0x2E011100, 0x1200800E, 0x80404801, 0x78011300
    .word 0x15008010
    .word 0x1100003, 0x8C00528C, 0x828C006A, 0x3110080, 0x3030303
    .word 0x3
.endfunc // sub_8027ADE

.func
.thumb_func
sub_8027CCC:
    push {r0,r1,r3-r7,lr}
    mov r6, #1
    cmp r5, #1
    bne loc_8027CD6
    mul r6, r4
loc_8027CD6:
    mov r5, #0x1e
    mul r1, r5
    lsl r0, r0, #1
    add r1, r1, r0
    ldr r0, off_8027D0C // =unk_2035000 
    add r1, r1, r0
    add r5, r3, #0
    add r7, r2, #0
loc_8027CE6:
    add r0, r1, #0
    add r3, r5, #0
    add r2, r7, #0
loc_8027CEC:
    strh r2, [r0]
    add r0, #2
    add r2, r2, r6
    sub r3, #1
    bne loc_8027CEC
    add r1, #0x1e
    cmp r6, #1
    beq loc_8027D04
    add r7, #1
    sub r2, r2, r6
    add r2, #1
    b loc_8027D06
loc_8027D04:
    add r7, r2, #0
loc_8027D06:
    sub r4, #1
    bne loc_8027CE6
    pop {r0,r1,r3-r7,pc}
off_8027D0C:    .word unk_2035000
.endfunc // sub_8027CCC

.func
.thumb_func
sub_8027D10:
    add r1, r0, #0
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r0, off_8027D28 // =off_8027D2C 
    cmp r1, #0xff
    ble loc_8027D22
    add r0, #4
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
loc_8027D22:
    ldr r0, [r0]
    mov pc, lr
    .balign 4, 0x00
off_8027D28:    .word off_8027D2C
off_8027D2C:    .word dword_86EA94C
off_8027D30:    .word dword_86EB354
.endfunc // sub_8027D10

.func
.thumb_func
sub_8027D34:
    add r1, r0, #0
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    ldr r0, off_8027D4C // =off_8027D50 
    cmp r1, #0xff
    ble loc_8027D46
    add r0, #4
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
loc_8027D46:
    ldr r0, [r0]
    mov pc, lr
    .balign 4, 0x00
off_8027D4C:    .word off_8027D50
off_8027D50:    .word dword_86EB354+0x564
off_8027D54:    .word dword_86EDB54+0x578
.endfunc // sub_8027D34

.func
.thumb_func
sub_8027D58:
    push {r4,lr}
    ldr r2, off_8027F0C // =word_203CDB0 
    ldr r1, dword_8027D74 // =0xFFFF 
    mov r3, #0x1e
loc_8027D60:
    ldrh r4, [r2]
    cmp r4, r1
    beq loc_8027D6C
    add r2, #2
    sub r3, #1
    bne loc_8027D60
loc_8027D6C:
    mov r0, #0x1e
    sub r0, r0, r3
    pop {r4,pc}
    .balign 4, 0x00
dword_8027D74:    .word 0xFFFF
.endfunc // sub_8027D58

.func
.thumb_func
sub_8027D78:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#8]
    mov r0, #0
    strh r0, [r1,#0x18]
    bl sub_801E71C
    mov r0, #0x80
    bl sub_801DACC
    mov r0, #0
    mov r1, #0
    bl sub_801E0A0
    ldr r0, off_8027E14 // =0x400 
    bl sub_801BECC
    ldr r0, off_8027E14 // =0x400 
    bl sub_801DA48
    bl sub_800A97A
    tst r0, r0
    bne locret_8027E10
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    bne loc_8027DD4
    bl sub_800A8F8
    cmp r0, #0
    beq loc_8027DC0
    bl sub_801DF0C
    b locret_8027E10
loc_8027DC0:
    bl sub_802D234
    cmp r0, #1
    bne loc_8027DCE
    bl sub_801DEEE
    b locret_8027E10
loc_8027DCE:
    bl sub_801DED0
    b locret_8027E10
loc_8027DD4:
    bl sub_800A8F8
    cmp r0, #0
    beq loc_8027DEA
    ldr r0, dword_8027E18 // =0x20000 
    bl sub_801DA48
    ldr r0, dword_8027E18 // =0x20000 
    bl sub_801BECC
    b locret_8027E10
loc_8027DEA:
    bl sub_801DF92
    bl sub_802D234
    cmp r0, #1
    bne loc_8027E04
    mov r0, #0x20 
    bl sub_801DA48
    mov r0, #0x20 
    bl sub_801BECC
    b locret_8027E10
loc_8027E04:
    mov r0, #0x10
    bl sub_801DA48
    mov r0, #0x10
    bl sub_801BECC
locret_8027E10:
    pop {pc}
    .balign 4, 0x00
off_8027E14:    .word 0x400
dword_8027E18:    .word 0x20000
.endfunc // sub_8027D78

.func
.thumb_func
// (int a1) -> void*
getLocOfActiveChips_8027E1C:
    mov r1, #0xc
    mul r0, r1
    ldr r1, off_8027E28 // =unk_20365C0 
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_8027E28:    .word unk_20365C0
.endfunc // getLocOfActiveChips_8027E1C

.func
.thumb_func
sub_8027E2C:
    push {r4,r6,r7,lr}
    mov r0, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    // numWords
    mov r1, #0x90
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_802A40C
    bl sub_8027E90
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x17]
    cmp r0, #0
    beq loc_8027E52
    mov r0, #1
    strb r0, [r4,#4]
loc_8027E52:
    ldrb r6, [r5,#6]
    bl sub_8027EE8
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    ldrb r1, [r5,#0x10]
    cmp r1, #0
    bne loc_8027E70
    ldrb r2, [r5,#0x15]
    cmp r1, r2
    beq loc_8027E70
    bl sub_8015B5C
    b loc_8027E74
loc_8027E70:
    bl sub_8015B54
loc_8027E74:
    add r7, r1, #0
    bl sub_8027F10
    bl sub_80280E0
    bl sub_80280A2
    bl sub_8027F42
    bl sub_8028050
    bl sub_802806C
    pop {r4,r6,r7,pc}
.endfunc // sub_8027E2C

.func
.thumb_func
sub_8027E90:
    push {r6,lr}
    mov r3, #0xc
    add r2, r4, #0
    ldr r1, off_8027EE4 // =dword_802A7CC 
loc_8027E98:
    ldr r0, [r1]
    str r0, [r2]
    mov r0, #0
    str r0, [r2,#4]
    str r0, [r2,#8]
    add r1, #4
    add r2, #0xc
    sub r3, #1
    bne loc_8027E98
    bl sub_802D234
    cmp r0, #1
    bne loc_8027EC2
    ldr r0, off_8028118 // =dword_20349A0 
    ldrb r0, [r0,#0x4] // (byte_20349A4 - 0x20349a0)
    cmp r0, #0
    bne locret_8027EE0
    mov r0, #3
    mov r1, #0x84
    strb r0, [r4,r1]
    b locret_8027EE0
loc_8027EC2:
    bl sub_8029FB4
    tst r0, r0
    beq locret_8027EE0
    mov r6, #1
    bl sub_802A57E
    tst r0, r0
    beq loc_8027ED6
    mov r6, #0
loc_8027ED6:
    mov r0, #2
    mov r1, #0x84
    strb r0, [r4,r1]
    mov r1, #0x8b
    strb r6, [r4,r1]
locret_8027EE0:
    pop {r6,pc}
    .balign 4, 0x00
off_8027EE4:    .word dword_802A7CC
.endfunc // sub_8027E90

.func
.thumb_func
sub_8027EE8:
    push {r4,r6,lr}
    ldrb r3, [r5,#5]
    cmp r3, #0
    beq locret_8027F0A
    cmp r6, #0
    beq locret_8027F0A
    cmp r3, r6
    blt loc_8027EFA
    add r3, r6, #0
loc_8027EFA:
    mov r2, #0
    ldr r1, off_8027F0C // =word_203CDB0 
loc_8027EFE:
    strb r2, [r4]
    str r1, [r4,#8]
    add r4, #0xc
    add r1, #2
    sub r3, #1
    bne loc_8027EFE
locret_8027F0A:
    pop {r4,r6,pc}
off_8027F0C:    .word word_203CDB0
.endfunc // sub_8027EE8

.func
.thumb_func
sub_8027F10:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    bne locret_8027F40
    cmp r7, #0xa
    beq loc_8027F20
    cmp r7, #0x16
    bne loc_8027F38
loc_8027F20:
    mov r0, #8
    mov r1, #0x60 
    add r1, r1, r4
    strb r0, [r1]
    mov r0, #9
    strb r0, [r1,#0xc]
    mov r0, #1
    ldr r2, [r5,#0x30]
    sub r0, r0, r2
    strb r0, [r1,#4]
    mov r0, #1
    strb r0, [r1,#7]
loc_8027F38:
    mov r0, #0xb
    strb r0, [r1,#3]
    mov r0, #7
    strb r0, [r1,#0xe]
locret_8027F40:
    pop {r4,r6,pc}
.endfunc // sub_8027F10

.func
.thumb_func
sub_8027F42:
    push {r4,r6,r7,lr}
    mov r6, #0xb
loc_8027F46:
    add r0, r6, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r7, r0, #0
    ldrb r0, [r7]
    cmp r0, #0xa
    beq loc_8027F64
    cmp r0, #0xb
    beq loc_8027F64
    bl sub_8027F6A
    bl sub_8027F84
    bl sub_8027FDC
loc_8027F64:
    sub r6, #1
    bpl loc_8027F46
    pop {r4,r6,r7,pc}
.endfunc // sub_8027F42

.func
.thumb_func
sub_8027F6A:
    push {r7,lr}
    ldrb r0, [r7,#1]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r0, [r0]
    mov r1, #0xff
    cmp r0, #0xa
    beq loc_8027F7E
    cmp r0, #0xb
    bne locret_8027F82
loc_8027F7E:
    mov r0, #0xff
    strb r0, [r7,#1]
locret_8027F82:
    pop {r7,pc}
.endfunc // sub_8027F6A

.func
.thumb_func
sub_8027F84:
    push {r6,r7,lr}
    ldrb r0, [r7,#2]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r0, [r0]
    mov r1, #0xff
    cmp r0, #0xa
    beq loc_8027F98
    cmp r0, #0xb
    bne locret_8027FC2
loc_8027F98:
    ldr r0, off_8027FC4 // =dword_802A7FC 
    cmp r6, #0xa
    beq loc_8027FB0
    cmp r6, #5
    blt loc_8027FB0
    ldr r0, off_8027FC8 // =dword_802A804 
    ldrb r1, [r7]
    cmp r1, #9
    beq loc_8027FAE
    cmp r1, #5
    bne loc_8027FB0
loc_8027FAE:
    sub r6, #1
loc_8027FB0:
    ldr r1, off_8027FCC // =dword_8027FD0 
    ldrb r1, [r1,r6]
    add r0, r0, r1
    bl sub_8028034
    cmp r0, r6
    bne loc_8027FC0
    mov r0, #0xff
loc_8027FC0:
    strb r0, [r7,#2]
locret_8027FC2:
    pop {r6,r7,pc}
off_8027FC4:    .word dword_802A7FC
off_8027FC8:    .word dword_802A804
off_8027FCC:    .word dword_8027FD0
dword_8027FD0:    .word 0x4050607, 0xF101102, 0x107
.endfunc // sub_8027F84

.func
.thumb_func
sub_8027FDC:
    push {r6,r7,lr}
    ldrb r0, [r7,#3]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r0, [r0]
    mov r1, #0xff
    cmp r0, #0xa
    beq loc_8027FF0
    cmp r0, #0xb
    bne locret_802801A
loc_8027FF0:
    ldr r0, dword_802801C // =dword_802A804 
    cmp r6, #0xa
    beq loc_8028008
    cmp r6, #5
    blt loc_8028008
    ldr r0, dword_8028020 // =dword_802A804 
    ldrb r1, [r7]
    cmp r1, #8
    beq loc_8028006
    cmp r1, #4
    bne loc_8028008
loc_8028006:
    add r6, #1
loc_8028008:
    ldr r1, off_8028024 // =dword_8028028 
    ldrb r1, [r1,r6]
    add r0, r0, r1
    bl sub_8028034
    cmp r0, r6
    bne loc_8028018
    mov r0, #0xff
loc_8028018:
    strb r0, [r7,#3]
locret_802801A:
    pop {r6,r7,pc}
dword_802801C:    .word 0x802A817
dword_8028020:    .word 0x802A81F
off_8028024:    .word dword_8028028
dword_8028028:    .word 0x5030201, 0x3020107, 0x504
.endfunc // sub_8027FDC

.func
.thumb_func
sub_8028034:
    push {r4,lr}
    add r4, r0, #0
loc_8028038:
    ldrb r0, [r4]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r0, [r0]
    cmp r0, #0xa
    beq loc_8028048
    cmp r0, #0xb
    bne loc_802804C
loc_8028048:
    add r4, #1
    b loc_8028038
loc_802804C:
    ldrb r0, [r4]
    pop {r4,pc}
.endfunc // sub_8028034

.func
.thumb_func
sub_8028050:
    push {r4,r6,lr}
    mov r6, #0
loc_8028054:
    ldrb r0, [r4]
    cmp r0, #0xa
    beq loc_802805E
    cmp r0, #0xb
    bne loc_8028068
loc_802805E:
    add r4, #0xc
    add r6, #1
    cmp r6, #0xc
    bne loc_8028054
    mov r6, #0xa
loc_8028068:
    strb r6, [r5,#7]
    pop {r4,r6,pc}
.endfunc // sub_8028050

.func
.thumb_func
sub_802806C:
    push {r4,r6,lr}
    ldrb r0, [r5,#7]
    cmp r0, #0
    bne locret_80280A0
    mov r6, #0
loc_8028076:
    ldrb r0, [r4]
    cmp r0, #0
    bne loc_8028094
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl sub_802A53C
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrb r0, [r0,#9]
    mov r1, #0x20 
    tst r0, r1
    bne loc_802809E
loc_8028094:
    add r4, #0xc
    add r6, #1
    cmp r6, #0xa
    bne loc_8028076
    b locret_80280A0
loc_802809E:
    strb r6, [r5,#7]
locret_80280A0:
    pop {r4,r6,pc}
.endfunc // sub_802806C

.func
.thumb_func
sub_80280A2:
    push {r4,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    beq locret_80280DA
    cmp r0, #0xb
    bgt locret_80280DA
    ldr r1, off_8028118 // =dword_20349A0 
    ldrh r1, [r1,#0xc] // (word_20349AC - 0x20349a0)
    mov r2, #1
    lsl r2, r0
    tst r1, r2
    bne locret_80280DA
    sub r0, #1
    lsl r0, r0, #1
    ldr r1, off_80280DC // =dword_802A828 
    add r4, r0, r1
    ldrh r0, [r4]
    strh r0, [r5,#0x22]
    mov r0, #9
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #0
    strb r1, [r0]
    mov r1, #0
    strb r1, [r0,#4]
    mov r1, #0x22 
    add r1, r1, r5
    str r1, [r0,#8]
locret_80280DA:
    pop {r4,pc}
off_80280DC:    .word dword_802A828
.endfunc // sub_80280A2

.func
.thumb_func
sub_80280E0:
    push {r4,lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    bne locret_8028114
    bl sub_802A5DA
    tst r0, r0
    beq locret_8028114
    mov r0, #4
    mov r1, #0x60 
    add r1, r1, r4
    strb r0, [r1]
    mov r0, #5
    strb r0, [r1,#0xc]
    mov r0, #1
    ldrb r2, [r5,#0x16]
    sub r0, r0, r2
    strb r0, [r1,#4]
    tst r0, r0
    bne loc_802810C
    mov r0, #1
    strb r0, [r1,#7]
loc_802810C:
    mov r0, #0xb
    strb r0, [r1,#3]
    mov r0, #7
    strb r0, [r1,#0xe]
locret_8028114:
    pop {r4,pc}
    .balign 4, 0x00
off_8028118:    .word dword_20349A0
.endfunc // sub_80280E0

.func
.thumb_func
sub_802811C:
    push {lr}
    // dataList
    ldr r0, off_8028154 // =off_802A744 
    bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
    ldrb r0, [r5,#0x10]
    bl sub_802812C
    pop {pc}
.endfunc // sub_802811C

.func
.thumb_func
sub_802812C:
    push {r4,lr}
    add r4, r0, #0
    bl sub_8028164
    ldr r1, dword_8028158 // =0x60170E0 
    mov r2, #0x40 
    bl loc_8000AC8
.endfunc // sub_802812C

    add r0, r0, r2
    ldr r1, dword_802815C // =0x6017160 
    bl loc_8000AC8
    add r0, r4, #0
    bl sub_8028172
    ldr r1, off_8028160 // =unk_30016B0 
    mov r2, #0x20 
    bl loc_8000AC8
    pop {r4,pc}
off_8028154:    .word off_802A744
dword_8028158:    .word 0x60170E0
dword_802815C:    .word 0x6017160
off_8028160:    .word unk_30016B0
.func
.thumb_func
sub_8028164:
    ldr r1, off_8028198 // =unk_802819C 
    ldrb r0, [r1,r0]
    mov r1, #0x80
    mul r0, r1
    ldr r1, off_8028180 // =dword_86F5834 
    add r0, r0, r1
    mov pc, lr
.endfunc // sub_8028164

.func
.thumb_func
sub_8028172:
    ldr r1, off_8028188 // =off_802818C 
    ldrb r0, [r1,r0]
    mov r1, #0x20 
    mul r0, r1
    ldr r1, off_8028184 // =dword_86E56FC 
    add r0, r0, r1
    mov pc, lr
off_8028180:    .word dword_86F5834
off_8028184:    .word dword_86E56FC
off_8028188:    .word off_802818C
off_802818C:    .word unk_2010100
    .word 0x1040003, 0x60205
off_8028198:    .word unk_802819C
unk_802819C:    .byte 0
    .byte 1
    .byte 2
    .byte 3
    .byte 4
    .byte 5
    .byte 1
    .byte 2
    .byte 3
    .byte 4
    .byte 5
    .byte 6
.endfunc // sub_8028172

.func
.thumb_func
sub_80281A8:
    push {r1,r2,lr}
    ldr r2, dword_80283AC // =0x1FF 
    and r0, r2
    cmp r0, r2
    bne loc_80281B6
    ldr r0, off_80281C0 // =dword_86E601C 
    pop {r1,r2,pc}
loc_80281B6:
    bl refIndex_8021DA8 // (int idx) -> void*
    ldr r0, [r0,#0x20]
    pop {r1,r2,pc}
    .byte 0, 0
off_80281C0:    .word dword_86E601C
.endfunc // sub_80281A8

.func
.thumb_func
sub_80281C4:
    push {r2,r3,lr}
    bl sub_80281A8
    mov r2, #0x80
    bl loc_8000AC8
.endfunc // sub_80281C4

    add r1, #0x80
    pop {r2,r3,pc}
.func
.thumb_func
sub_80281D4:
    push {r1,r2,lr}
    mov r2, #0x80
    mul r2, r1
    ldr r1, dword_80281FC // =0x600A4A0 
    add r1, r1, r2
    bl sub_80281C4
    pop {r1,r2,pc}
.endfunc // sub_80281D4

.func
.thumb_func
sub_80281E4:
    push {r1-r3,lr}
    mov r2, #0x80
    mul r1, r2
    ldr r3, dword_80281FC // =0x600A4A0 
    add r1, r1, r3
    mul r0, r2
    ldr r3, off_8028200 // =dword_8725894 
    add r0, r0, r3
    bl loc_8000AC8
.endfunc // sub_80281E4

    pop {r1-r3,pc}
    .balign 4, 0x00
dword_80281FC:    .word 0x600A4A0
off_8028200:    .word dword_8725894
.func
.thumb_func
sub_8028204:
    push {r2,r3,lr}
    bl sub_8028214
    mov r2, #0x40 
    bl loc_8000AC8
.endfunc // sub_8028204

    add r1, #0x40 
    pop {r2,r3,pc}
.func
.thumb_func
sub_8028214:
    push {r2,lr}
    cmp r0, #0x1b
    beq loc_802822A
    cmp r0, #0x1c
    beq loc_802822A
    blt loc_8028222
    mov r0, #0x1b
loc_8028222:
    lsl r0, r0, #6
    ldr r2, off_8028230 // =dword_86E591C 
    add r0, r0, r2
    pop {r2,pc}
loc_802822A:
    ldr r0, off_8028234 // =dword_802A678+136 
    pop {r2,pc}
    .byte 0, 0
off_8028230:    .word dword_86E591C
off_8028234:    .word dword_802A678+0x88
.endfunc // sub_8028214

.func
.thumb_func
sub_8028238:
    push {lr}
    mov r1, #0xc0
    mul r0, r1
    ldr r1, dword_802824C // =0x6009C20 
    add r1, r1, r0
    ldr r0, dword_80283AC // =0x1FF 
    bl sub_80281C4
    pop {pc}
    .balign 4, 0x00
dword_802824C:    .word 0x6009C20
.endfunc // sub_8028238

loc_8028250:
    push {r4-r7,lr}
    push {r0}
    mov r0, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    mov r7, #0xc
    ldr r1, dword_8028358 // =0x6009C20 
loc_8028260:
    ldrb r0, [r4]
    lsl r0, r0, #2
    ldr r2, off_802836C // =off_8028370 
    ldr r0, [r2,r0]
    mov lr, pc
    bx r0
    add r4, #0xc
    sub r7, #1
    bne loc_8028260
    pop {r0}
    cmp r0, #0
    bne loc_802827E
    bl sub_80283B0
    b locret_8028282
loc_802827E:
    bl sub_80283C8
locret_8028282:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8028284:
    push {r4,lr}
    ldrb r0, [r4,#7]
    cmp r0, #2
    bne loc_8028290
    ldr r0, dword_80283AC // =0x1FF 
    b loc_8028298
loc_8028290:
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
loc_8028298:
    bl sub_80281C4
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    lsr r0, r0, #9
    bl sub_8028204
    pop {r4,pc}
.endfunc // sub_8028284

.func
.thumb_func
nullsub_14:
    mov pc, lr
.endfunc // nullsub_14

.func
.thumb_func
sub_80282AE:
    push {lr}
    ldr r0, dword_80283A0 // =0x86E79CC 
    ldr r2, off_80283A4 // =0x100 
    ldrb r3, [r4,#7]
    cmp r3, #0
    beq loc_80282BC
    add r0, r0, r2
loc_80282BC:
    bl loc_8000AC8
    pop {pc}
.endfunc // sub_80282AE

.func
.thumb_func
sub_80282C2:
    push {lr}
    ldr r0, dword_80283A0 // =0x86E79CC 
    ldr r2, off_80283A4 // =0x100 
    add r0, r0, r2
    add r0, r0, r2
    bl loc_8000AC8
    pop {pc}
.endfunc // sub_80282C2

.func
.thumb_func
sub_80282D2:
    push {lr}
    ldr r0, off_802835C // =dword_86E441C 
    ldr r2, off_8028364 // =0x180 
    ldrb r3, [r4,#7]
    mul r3, r2
    add r0, r0, r3
    bl loc_8000AC8
    add r1, #0xc0
    add r1, #0xc0
    pop {pc}
.endfunc // sub_80282D2

.func
.thumb_func
sub_80282E8:
    push {lr}
    ldrb r0, [r4,#7]
    cmp r0, #2
    bne loc_80282F4
    ldr r0, dword_80283AC // =0x1FF 
    b loc_80282FC
loc_80282F4:
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
loc_80282FC:
    bl sub_80281C4
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    lsr r0, r0, #9
    bl sub_8028204
    pop {pc}
.endfunc // sub_80282E8

.func
.thumb_func
sub_8028310:
    push {lr}
    ldr r0, dword_80283AC // =0x1FF 
    bl sub_80281C4
    mov r0, #0x1d
    bl sub_8028204
    pop {pc}
.endfunc // sub_8028310

.func
.thumb_func
sub_8028320:
    push {lr}
    cmp r7, #1
    bne loc_8028334
    ldr r0, dword_80283A0 // =0x86E79CC 
    ldr r2, off_80283A8 // =0x300 
    add r0, r0, r2
    ldr r2, off_80283A4 // =0x100 
    bl loc_8000AC8
    b locret_802833E
loc_8028334:
    ldr r0, off_8028368 // =dword_802A678+136 
    mov r3, #3
    bl sub_802868C
    add r1, #0xc0
locret_802833E:
    pop {pc}
.endfunc // sub_8028320

.func
.thumb_func
sub_8028340:
    push {lr}
    ldr r0, off_8028360 // =dword_86E4D9C 
    ldr r2, off_8028364 // =0x180 
    ldrb r3, [r4,#7]
    mul r3, r2
    add r0, r0, r3
    bl loc_8000AC8
    add r1, #0xc0
    add r1, #0xc0
    pop {pc}
    .balign 4, 0x00
dword_8028358:    .word 0x6009C20
off_802835C:    .word dword_86E441C
off_8028360:    .word dword_86E4D9C
off_8028364:    .word 0x180
off_8028368:    .word dword_802A678+0x88
off_802836C:    .word off_8028370
off_8028370:    .word sub_8028284+1
    .word nullsub_14+1
    .word sub_80282AE+1
    .word sub_80282C2+1
    .word sub_80282D2+1
    .word nullsub_14+1
    .word sub_80282E8+1
    .word sub_80282E8+1
    .word sub_8028340+1
    .word nullsub_14+1
    .word sub_8028310+1
    .word sub_8028320+1
dword_80283A0:    .word 0x86E79CC
off_80283A4:    .word 0x100
off_80283A8:    .word 0x300
dword_80283AC:    .word 0x1FF
.endfunc // sub_8028340

.func
.thumb_func
sub_80283B0:
    push {r4,r5,lr}
    bl sub_80283C8
    // a1
    mov r0, #0
    // a2
    mov r1, #0xd
    // a3
    mov r2, #3
    ldr r3, dword_8028468 // =0x2035186 
    mov r4, #0xf
    mov r5, #6
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_80283B0

    pop {r4,r5,pc}
.func
.thumb_func
sub_80283C8:
    push {r4,r5,lr}
    mov r0, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r7, r0, #0
    mov r6, #0
loc_80283D4:
    mov r2, #0
    ldrb r0, [r7]
    cmp r0, #1
    beq loc_802842C
    cmp r0, #2
    beq loc_802842C
    cmp r0, #3
    beq loc_802842C
    cmp r0, #0xa
    beq loc_8028400
    cmp r0, #6
    beq loc_80283F8
    cmp r0, #7
    beq loc_80283F8
    cmp r0, #0
    beq loc_80283F8
    mov r2, #4
    b loc_8028400
loc_80283F8:
    ldrb r0, [r7,#7]
    cmp r0, #1
    bne loc_8028400
    mov r2, #2
loc_8028400:
    ldr r4, off_8028438 // =off_802843C 
    lsl r0, r6, #2
    ldr r4, [r4,r0]
    ldr r1, off_802846C // =dword_8028470 
    ldrh r2, [r1,r2]
    ldr r1, dword_8028464 // =0x3FF 
    ldrh r0, [r4]
    and r0, r1
    orr r0, r2
    strh r0, [r4]
    ldrh r0, [r4,#2]
    and r0, r1
    orr r0, r2
    strh r0, [r4,#2]
    ldrh r0, [r4,#0x1e]
    and r0, r1
    orr r0, r2
    strh r0, [r4,#0x1e]
    ldrh r0, [r4,#0x20]
    and r0, r1
    orr r0, r2
    strh r0, [r4,#0x20]
loc_802842C:
    add r7, #0xc
    add r6, #1
    cmp r6, #0xa
    blt loc_80283D4
    pop {r4,r5,pc}
    .balign 4, 0x00
off_8028438:    .word off_802843C
off_802843C:    .word unk_2035188
    .word unk_203518C
    .word unk_2035190
    .word unk_2035194
    .word unk_2035198
    .word 0x20351E2, 0x20351E6, 0x20351EA, 0x20351EE, 0x20351F2
dword_8028464:    .word 0x3FF
dword_8028468:    .word 0x2035186
off_802846C:    .word dword_8028470
dword_8028470:    .word 0xC000B000
    .byte 0
    .byte 0x90
.endfunc // sub_80283C8

.func
.thumb_func
sub_8028476:
    push {lr}
    ldrb r0, [r5,#7]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #0
    beq loc_80284AA
    cmp r1, #1
    beq loc_80284B8
    cmp r1, #2
    beq loc_80284BE
    cmp r1, #4
    beq loc_80284C4
    cmp r1, #5
    beq loc_80284C4
    cmp r1, #6
    beq loc_80284CA
    cmp r1, #7
    beq loc_80284CA
    cmp r1, #3
    beq loc_80284D4
    cmp r1, #8
    beq loc_80284DA
    cmp r1, #9
    beq loc_80284DA
    b locret_80284E0
loc_80284AA:
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    bl sub_80284E2
    b locret_80284E0
loc_80284B8:
    bl sub_80286D4
    b locret_80284E0
loc_80284BE:
    bl sub_802871C
    b locret_80284E0
loc_80284C4:
    bl sub_80287A4
    b locret_80284E0
loc_80284CA:
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl sub_80285FE
    b locret_80284E0
loc_80284D4:
    bl sub_8028754
    b locret_80284E0
loc_80284DA:
    bl sub_802877C
    b locret_80284E0
locret_80284E0:
    pop {pc}
.endfunc // sub_8028476

.func
.thumb_func
sub_80284E2:
    push {r4,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    push {r0-r7}
    bl sub_8027D10
    ldr r2, off_8028674 // =unk_203C4E0 
    ldr r3, dword_8028678 // =0x6009360 
    mov r4, #8
    mov r5, #1
    ldr r6, off_802867C // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
.endfunc // sub_80284E2

    pop {r0-r7}
    ldr r0, [sp]
    ldr r1, dword_8028688 // =0x1FF 
    and r0, r1
    push {r0}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    bl sub_80109A4
    str r0, [sp,#0x10]
    pop {r0}
    bl refIndex_8021DA8 // (int idx) -> void*
    str r0, [sp,#4]
    ldr r0, [r0,#0x24]
    cmp r0, #0
    beq loc_8028536
    ldr r1, dword_802865C // =0x6009560 
    ldr r2, off_8028660 // =0x540 
    bl loc_8000AC8
    ldr r0, [sp,#4]
    ldr r0, [r0,#0x28]
    ldr r1, off_8028664 // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
loc_8028536:
    ldr r1, [sp,#4]
    ldrb r0, [r1,#7]
    ldrb r1, [r1,#9]
    cmp r0, #2
    ble loc_8028544
    mov r0, #0
    b loc_802854C
loc_8028544:
    mov r2, #0x20 
    tst r1, r2
    beq loc_802854C
    mov r0, #3
loc_802854C:
    mov r2, #0x20 
    mul r0, r2
    ldr r1, off_8028818 // =dword_86E587C 
    add r0, r0, r1
    ldr r1, off_802881C // =unk_3001A80 
    bl loc_8000AC8
    ldr r0, [sp]
    lsr r0, r0, #9
    cmp r0, #0x1c
    bne loc_8028564
    mov r0, #0x1b
loc_8028564:
    mov r1, #0x40 
    mul r0, r1
    ldr r1, off_8028640 // =dword_86E2E98 
    add r0, r0, r1
    ldr r1, dword_8028644 // =0x6009AA0 
    mov r2, #0x40 
    bl loc_8000AC8
    ldr r0, [sp,#4]
    ldrb r1, [r0,#9]
    mov r2, #0x12
    and r1, r2
    str r1, [sp,#8]
    ldrb r0, [r0,#6]
    push {r0}
    mov r2, #0x80
    mul r0, r2
    ldr r1, off_8028648 // =dword_86E3598 
    add r0, r0, r1
    ldr r1, dword_802864C // =0x6009AE0 
    bl loc_8000AC8
    pop {r0}
    mov r2, #0xc
    mul r0, r2
    ldr r1, off_8028680 // =dword_86E3B18 
    add r0, r0, r1
    ldr r1, off_8028684 // =unk_3001AD4 
    bl loc_8000AC4
    ldr r0, [sp,#8]
    cmp r0, #0
    beq loc_80285C6
    ldr r0, [sp]
    cmp r0, #0x55 
    bne loc_80285B8
    mov r4, #0xaa
    lsl r4, r4, #4
    add r4, #0xa
    mov r0, #3
    str r0, [sp,#8]
    b loc_80285D4
loc_80285B8:
    ldr r0, [sp,#0xc]
    bl sub_8000C00
    add r4, r0, #0
    bl sub_8000C5C
    str r0, [sp,#8]
loc_80285C6:
    mov r3, #3
    sub r3, r3, r0
    beq loc_80285D4
    ldr r0, off_8028668 // =dword_802A678+72 
    ldr r1, dword_8028654 // =0x6009B60 
    bl sub_802868C
loc_80285D4:
    ldr r3, [sp,#8]
    cmp r3, #0
    beq loc_80285FA
    ldr r1, dword_8028658 // =0x6009BE0 
loc_80285DC:
    mov r0, #0xf
    and r0, r4
    lsr r4, r4, #4
    mov r2, #0x40 
    mul r0, r2
    ldr r2, off_8028650 // =dword_86E411C 
    add r0, r0, r2
    mov r2, #0x40 
    push {r3}
    bl loc_8000AC8
    pop {r3}
    sub r1, #0x40 
    sub r3, #1
    bne loc_80285DC
loc_80285FA:
    add sp, sp, #0x10
    pop {r4,pc}
.func
.thumb_func
sub_80285FE:
    push {r4,lr}
    push {r0-r7}
    bl sub_8027D10
    ldr r2, off_8028674 // =unk_203C4E0 
    ldr r3, dword_8028678 // =0x6009360 
    mov r4, #8
    mov r5, #1
    ldr r6, off_802867C // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
.endfunc // sub_80285FE

    pop {r0-r7}
    ldr r1, dword_8028688 // =0x1FF 
    and r0, r1
    bl refIndex_8021DA8 // (int idx) -> void*
    add r4, r0, #0
    ldr r0, [r0,#0x24]
    cmp r0, #0
    beq loc_802863A
    ldr r1, dword_802865C // =0x6009560 
    ldr r2, off_8028660 // =0x540 
    bl loc_8000AC8
    ldr r0, [r4,#0x28]
    ldr r1, off_8028664 // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
loc_802863A:
    bl sub_802869E
    pop {r4,pc}
off_8028640:    .word dword_86E2E98
dword_8028644:    .word 0x6009AA0
off_8028648:    .word dword_86E3598
dword_802864C:    .word 0x6009AE0
off_8028650:    .word dword_86E411C
dword_8028654:    .word 0x6009B60
dword_8028658:    .word 0x6009BE0
dword_802865C:    .word 0x6009560
off_8028660:    .word 0x540
off_8028664:    .word unk_3001AA0
off_8028668:    .word dword_802A678+0x48
    .word 0x802A680, 0x203C4E0
off_8028674:    .word unk_203C4E0
dword_8028678:    .word 0x6009360
off_802867C:    .word dword_86B7AE0
off_8028680:    .word dword_86E3B18
off_8028684:    .word unk_3001AD4
dword_8028688:    .word 0x1FF
.func
.thumb_func
sub_802868C:
    push {r0-r4,lr}
    add r4, r3, #0
    mov r2, #0x40 
loc_8028692:
    bl loc_8000AC8
.endfunc // sub_802868C

    add r1, r1, r2
    sub r4, #1
    bne loc_8028692
    pop {r0-r4,pc}
.func
.thumb_func
sub_802869E:
    push {lr}
    ldr r1, dword_80286C0 // =0x6009AA0 
    ldr r0, off_80286D0 // =dword_802A678+72 
    mov r3, #1
    bl sub_802868C
    ldr r1, dword_80286C4 // =0x6009AE0 
    ldr r0, off_80286CC // =dword_802A678+8 
    mov r3, #2
    bl sub_802868C
    ldr r1, dword_80286C8 // =0x6009B60 
    ldr r0, off_80286D0 // =dword_802A678+72 
    mov r3, #3
    bl sub_802868C
    pop {pc}
dword_80286C0:    .word 0x6009AA0
dword_80286C4:    .word 0x6009AE0
dword_80286C8:    .word 0x6009B60
off_80286CC:    .word dword_802A678+8
off_80286D0:    .word dword_802A678+0x48
.endfunc // sub_802869E

.func
.thumb_func
sub_80286D4:
    push {lr}
    bl sub_80287D2
    ldr r0, off_8028704 // =off_8028708 
    ldrb r1, [r5,#8]
    cmp r1, #0
    beq loc_80286E4
    mov r1, #4
loc_80286E4:
    push {r1}
    ldr r0, [r0,r1]
    ldr r1, dword_80287F0 // =0x6009560 
    ldr r2, off_80287F4 // =0x540 
    bl loc_8000AC8
.endfunc // sub_80286D4

    pop {r1}
    ldr r0, off_8028710 // =off_8028714 
    ldr r0, [r0,r1]
    ldr r1, off_80287FC // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
    bl sub_802869E
    pop {pc}
off_8028704:    .word off_8028708
off_8028708:    .word dword_8722AF4
    .word dword_87225B4
off_8028710:    .word off_8028714
off_8028714:    .word dword_8725874
    .word dword_87257F4
.func
.thumb_func
sub_802871C:
    push {lr}
    bl sub_80287D2
    ldr r0, off_802874C // =dword_8723034 
    ldr r1, dword_80287F0 // =0x6009560 
    ldr r2, off_80287F4 // =0x540 
    bl loc_8000AC8
.endfunc // sub_802871C

    mov r0, #0xb
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r0, [r0,#6]
    mov r1, #0x20 
    mul r1, r0
    ldr r0, off_8028750 // =dword_8725814 
    add r0, r0, r1
    ldr r1, off_80287FC // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
    bl sub_802869E
    pop {pc}
    .balign 4, 0x00
off_802874C:    .word dword_8723034
off_8028750:    .word dword_8725814
.func
.thumb_func
sub_8028754:
    push {lr}
    bl sub_80287D2
    ldr r0, off_8028774 // =dword_87225B4 
    ldr r1, dword_80287F0 // =0x6009560 
    ldr r2, off_80287F4 // =0x540 
    bl loc_8000AC8
.endfunc // sub_8028754

    ldr r0, off_8028778 // =dword_87257D4 
    ldr r1, off_80287FC // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
    bl sub_802869E
    pop {pc}
off_8028774:    .word dword_87225B4
off_8028778:    .word dword_87257D4
.func
.thumb_func
sub_802877C:
    push {lr}
    bl sub_80287D2
    ldr r0, off_802879C // =dword_8733E74 
    ldr r1, dword_80287F0 // =0x6009560 
    ldr r2, off_80287F4 // =0x540 
    bl loc_8000AC8
.endfunc // sub_802877C

    ldr r0, off_80287A0 // =dword_87343D4 
    ldr r1, off_80287FC // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
    bl sub_802869E
    pop {pc}
off_802879C:    .word dword_8733E74
off_80287A0:    .word dword_87343D4
.func
.thumb_func
sub_80287A4:
    push {lr}
    ldrb r1, [r0]
    cmp r1, #5
    bne loc_80287AE
    sub r0, #0xc
loc_80287AE:
    ldrb r0, [r0,#4]
    push {r0}
    bl sub_80287D2
    ldr r0, off_80287EC // =dword_8722AF4 
    ldr r1, dword_80287F0 // =0x6009560 
    ldr r2, off_80287F4 // =0x540 
    bl loc_8000AC8
.endfunc // sub_80287A4

    ldr r0, off_80287F8 // =dword_8725854 
    ldr r1, off_80287FC // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
    bl sub_802869E
    pop {r0}
    pop {pc}
.func
.thumb_func
sub_80287D2:
    push {lr}
    ldr r1, dword_8028808 // =0x6009360 
    ldr r0, off_802880C // =dword_802A678+72 
    mov r3, #8
    bl sub_802868C
    ldr r0, off_8028818 // =dword_86E587C 
    ldr r1, off_802881C // =unk_3001A80 
    mov r2, #0x20 
    bl loc_8000AC8
.endfunc // sub_80287D2

    pop {pc}
    .balign 4, 0x00
off_80287EC:    .word dword_8722AF4
dword_80287F0:    .word 0x6009560
off_80287F4:    .word 0x540
off_80287F8:    .word dword_8725854
off_80287FC:    .word unk_3001AA0
    .word 0x6009AA0, 0x802A6C0
dword_8028808:    .word 0x6009360
off_802880C:    .word dword_802A678+0x48
    .word dword_86E411C
    .word 0x6009BE0
off_8028818:    .word dword_86E587C
off_802881C:    .word unk_3001A80
loc_8028820:
    push {r4-r6,lr}
    ldrb r0, [r5,#7]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r0, [r0]
    lsl r0, r0, #2
    ldr r1, off_8028868 // =off_802886C 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    ldr r5, [r5,#0x40]
    mov r4, #1
    lsr r5, r5, #3
    and r5, r4
    sub r0, #3
    sub r1, #3
    lsl r0, r0, #0x10
    add r0, r0, r1
    add r4, r0, #0
    mov r2, #1
    mov r3, #0
    ldr r1, dword_8028864 // =0xB764 
    add r1, r1, r5
    lsl r5, r5, #4
    add r5, r5, r6
    mov r6, #0xc
loc_8028854:
    ldr r0, [r5,r6]
    add r0, r0, r4
    bl sub_8009FF8
    sub r6, #4
    bpl loc_8028854
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_8028864:    .word 0xB764
off_8028868:    .word off_802886C
off_802886C:    .word sub_8028894+1
    .word sub_80288D0+1
    .word sub_8028904+1
    .word sub_8028968+1
    .word sub_8028938+1
    .word sub_8028938+1
    .word sub_8028894+1
    .word sub_8028894+1
    .word sub_8028938+1
    .word sub_8028938+1
.func
.thumb_func
sub_8028894:
    push {lr}
    ldr r6, off_80288AC // =dword_80288B0 
    mov r1, #0
    ldrb r0, [r5,#7]
    cmp r0, #5
    blt loc_80288A4
    mov r1, #0x18
    sub r0, #5
loc_80288A4:
    lsl r0, r0, #4
    add r0, #8
    add r1, #0x68 
    pop {pc}
off_80288AC:    .word dword_80288B0
dword_80288B0:    .word 0x0
    .word 0x100E0000, 0x300E000E, 0x2000000E, 0x10001, 0x100C0001
    .word 0x300C000C, 0x2001000C
.endfunc // sub_8028894

.func
.thumb_func
sub_80288D0:
    push {lr}
    mov r0, #0x58 
    mov r1, #0x70 
    add r0, #3
    sub r1, #2
    ldr r6, off_80288E0 // =dword_80288E4 
    pop {pc}
    .byte 0, 0
off_80288E0:    .word dword_80288E4
dword_80288E4:    .word 0x10002
    .word 0x10160002
    .word 0x30160014
    .word 0x20010014
    .word 0x30004
    .word 0x10140004
    .word 0x30140012
    .word 0x20030012
.endfunc // sub_80288D0

.func
.thumb_func
sub_8028904:
    push {lr}
    mov r0, #0x58 
    mov r1, #0x88
    add r0, #3
    sub r1, #1
    ldr r6, off_8028914 // =dword_8028918 
    pop {pc}
    .balign 4, 0x00
off_8028914:    .word dword_8028918
dword_8028918:    .word 0x10002
    .word 0x10160002
    .word 0x3016000E
    .word 0x2001000E
    .word 0x20003
    .word 0x10150003
    .word 0x3015000D
    .word 0x2002000D
.endfunc // sub_8028904

.func
.thumb_func
sub_8028938:
    push {lr}
    mov r0, #0x38 
    mov r1, #0x80
    ldr r6, off_8028944 // =unk_8028948 
    pop {pc}
    .balign 4, 0x00
off_8028944:    .word unk_8028948
unk_8028948:    .byte 2
    .byte 0
    .byte 2
    .byte 0
    .byte 2
    .byte 0
    .byte 0x1C
    .byte 0x10
    .byte 0x14
    .byte 0
    .byte 0x1C
    .byte 0x30 
    .byte 0x14
    .byte 0
    .byte 2
    .byte 0x20
    .byte 4
    .byte 0
    .byte 4
    .byte 0
    .byte 4
    .byte 0
    .byte 0x1A
    .byte 0x10
    .byte 0x12
    .byte 0
    .byte 0x1A
    .byte 0x30 
    .byte 0x12
    .byte 0
    .byte 4
    .byte 0x20
.endfunc // sub_8028938

.func
.thumb_func
sub_8028968:
    push {lr}
    mov r0, #0x58 
    mov r1, #0x88
    add r0, #3
    sub r1, #2
    ldr r6, off_8028978 // =dword_802897C 
    pop {pc}
    .balign 4, 0x00
off_8028978:    .word dword_802897C
dword_802897C:    .word 0x20002
    .word 0x10160002
    .word 0x3016000E
    .word 0x2002000E
    .word 0x30003
    .word 0x10150003
    .word 0x3015000D
    .word 0x2003000D
.endfunc // sub_8028968

.func
.thumb_func
sub_802899C:
    push {r4-r6,lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x17]
    cmp r0, #0
    beq locret_80289CE
    ldr r5, [r5,#0x40]
    mov r4, #7
    and r4, r5
    bne loc_80289C2
    mov r3, #8
    and r3, r5
    lsl r3, r3, #6
    ldr r0, off_80289D8 // =dword_86E1238 
    ldr r1, dword_80289DC // =0x6016CC0 
    ldr r2, off_80289E0 // =0x200 
    add r0, r0, r3
    bl loc_8000AC8
loc_80289C2:
    ldr r0, dword_80289D0 // =0x80020064 
    ldr r1, dword_80289D4 // =0xB766 
    mov r2, #1
    mov r3, #0
    bl sub_8009FF8
locret_80289CE:
    pop {r4-r6,pc}
dword_80289D0:    .word 0x80020064
dword_80289D4:    .word 0xB766
off_80289D8:    .word dword_86E1238
dword_80289DC:    .word 0x6016CC0
off_80289E0:    .word 0x200
.endfunc // sub_802899C

.func
.thumb_func
sub_80289E4:
    push {r4-r6,lr}
    mov r0, #8
    mov r1, #8
    ldrb r2, [r5,#0x1b]
    mov r3, #0x10
    mul r2, r3
    add r1, r1, r2
    ldr r5, [r5,#0x40]
    mov r4, #1
    lsr r5, r5, #3
    and r5, r4
    sub r0, #3
    sub r1, #3
    lsl r0, r0, #0x10
    add r0, r0, r1
    add r4, r0, #0
    mov r2, #1
    mov r3, #0
    ldr r1, dword_8028A28 // =0xE792 
    add r1, r1, r5
    add r1, r1, r5
    ldr r5, off_8028A2C // =unk_8028A30 
    mov r6, #0
loc_8028A12:
    ldr r0, [r5,r6]
    add r0, r0, r4
    cmp r6, #0x10
    bne loc_8028A1C
    add r1, #1
loc_8028A1C:
    bl sub_8009FF8
    add r6, #4
    cmp r6, #0x48 
    blt loc_8028A12
    pop {r4-r6,pc}
dword_8028A28:    .word 0xE792
off_8028A2C:    .word unk_8028A30
unk_8028A30:    .byte 2
    .byte 0
    .byte 3
    .byte 0
    .byte 2
    .byte 0
    .byte 0x43 
    .byte 0x10
    .byte 0xC
    .byte 0
    .byte 0x43 
    .byte 0x30 
    .byte 0xC
    .byte 0
    .byte 3
    .byte 0x20
    .byte 2
    .byte 0
    .byte 0xB
    .byte 0
    .byte 2
    .byte 0
    .byte 0x13
    .byte 0
    .byte 2
    .byte 0
    .byte 0x1B
    .byte 0
    .byte 2
    .byte 0
    .byte 0x23 
    .byte 0
    .byte 2
    .byte 0
    .byte 0x2B 
    .byte 0
    .byte 2
    .byte 0
    .byte 0x33 
    .byte 0
    .byte 2
    .byte 0
    .byte 0x3B 
    .byte 0
    .byte 0xC
    .byte 0
    .byte 0xB
    .byte 0x20
    .byte 0xC
    .byte 0
    .byte 0x13
    .byte 0x20
    .byte 0xC
    .byte 0
    .byte 0x1B
    .byte 0x20
    .byte 0xC
    .byte 0
    .byte 0x23 
    .byte 0x20
    .byte 0xC
    .byte 0
    .byte 0x2B 
    .byte 0x20
    .byte 0xC
    .byte 0
    .byte 0x33 
    .byte 0x20
    .byte 0xC
    .byte 0
    .byte 0x3B 
    .byte 0x20
.endfunc // sub_80289E4

.func
.thumb_func
sub_8028A78:
    push {r4,lr}
    ldrb r4, [r5,#0x1b]
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne loc_8028B00
    ldrh r0, [r7,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_8028A98
    sub r4, #1
    cmp r4, #0
    bge loc_8028AAA
    ldrb r1, [r5,#0x18]
    sub r1, #1
    add r4, r1, #0
    b loc_8028AAA
loc_8028A98:
    mov r1, #0x80
    tst r0, r1
    beq loc_8028ABA
    add r4, #1
    ldrb r1, [r5,#0x18]
    sub r1, #1
    cmp r4, r1
    ble loc_8028AAA
    mov r4, #0
loc_8028AAA:
    strb r4, [r5,#0x1b]
    ldrb r0, [r5,#0x18]
    cmp r0, #1
    ble locret_8028B66
    mov r0, #0x7f
    bl sound_play
    b locret_8028B66
loc_8028ABA:
    ldrh r0, [r7,#2]
    mov r1, #1
    tst r0, r1
    beq loc_8028B00
    bl sub_80298F4
    cmp r0, #0
    bne locret_8028B66
    add r0, r4, #0
    ldr r1, dword_8028B70 // =0x55 
    add r1, r1, r0
    ldrb r0, [r5,r1]
    cmp r0, #1
    beq loc_8028AF8
    mov r0, #1
    strb r0, [r5,r1]
    add r0, r4, #0
    ldr r1, off_8028B6C // =0x50 
    add r1, r1, r0
    ldrb r0, [r5,r1]
    strb r0, [r5,#0x1a]
    mov r0, #1
    strb r0, [r5,#0x19]
    mov r0, #0x81
    bl sound_play
    mov r0, #0x5c 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8028B66
loc_8028AF8:
    mov r0, #0x69 
    bl sound_play
    b locret_8028B66
loc_8028B00:
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r0, r1
    beq loc_8028B1A
    bl sub_8029B1C
    cmp r0, #0
    bne locret_8028B66
    mov r0, #0x50 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8028B66
loc_8028B1A:
    mov r1, #8
    tst r0, r1
    beq loc_8028B34
    mov r1, #0xa
    strb r1, [r5,#7]
    mov r0, #0x50 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0x7f
    bl sound_play
    b locret_8028B66
loc_8028B34:
    mov r1, #4
    tst r0, r1
    beq loc_8028B3C
    b locret_8028B66
loc_8028B3C:
    ldr r1, off_8028CC4 // =0x100 
    tst r0, r1
    beq locret_8028B66
    ldrb r0, [r5,#7]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldr r0, off_8028B68 // =dword_86EF4D4 
    ldrb r1, [r5,#0x1b]
    ldr r2, off_8028B6C // =0x50 
    add r2, r2, r1
    ldrb r1, [r5,r2]
    add r1, #5
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #0x9c
    bl sound_play
    mov r0, #0x58 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8028B66:
    pop {r4,pc}
off_8028B68:    .word dword_86EF4D4
off_8028B6C:    .word 0x50
dword_8028B70:    .word 0x55
.endfunc // sub_8028A78

loc_8028B74:
    push {r4,lr}
    ldrb r0, [r5,#7]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrh r0, [r7,#4]
    mov r1, #0xc0
    tst r0, r1
    beq loc_8028BC2
    push {r0}
    bl sub_802D234
    cmp r0, #1
    pop {r0}
    beq loc_8028BBE
    ldrb r2, [r5,#0x10]
    cmp r2, #0
    bne loc_8028BBE
    ldrb r2, [r5,#0x17]
    tst r2, r2
    bne loc_8028BBE
    ldrb r2, [r5,#0x18]
    tst r2, r2
    beq loc_8028BBE
    mov r1, #0x40 
    tst r0, r1
    beq loc_8028BBE
    ldrb r0, [r5,#7]
    cmp r0, #0xa
    beq loc_8028BB4
    cmp r0, #4
    bgt loc_8028BBE
loc_8028BB4:
    mov r0, #0x4c 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8028C96
loc_8028BBE:
    ldrb r0, [r4,#1]
    b loc_8028BD4
loc_8028BC2:
    mov r1, #0x20 
    tst r0, r1
    beq loc_8028BCC
    ldrb r0, [r4,#2]
    b loc_8028BD4
loc_8028BCC:
    mov r1, #0x10
    tst r0, r1
    beq loc_8028BEC
    ldrb r0, [r4,#3]
loc_8028BD4:
    cmp r0, #0xff
    beq locret_8028C96
loc_8028BD8:
    ldrb r1, [r5,#7]
    cmp r0, r1
    beq loc_8028BE6
    strb r0, [r5,#7]
    mov r0, #0x7f
    bl sound_play
loc_8028BE6:
    bl sub_8028476
    b locret_8028C96
loc_8028BEC:
    ldrh r0, [r7,#2]
    mov r1, #1
    tst r0, r1
    beq loc_8028C18
    bl sub_80298F4
    cmp r0, #0
    bne locret_8028C96
    ldrb r0, [r4]
    lsl r0, r0, #2
    ldr r1, off_8028C98 // =off_8028C9C 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    cmp r0, #0
    bne locret_8028C96
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq locret_8028C96
    bl sub_8029A56
    b locret_8028C96
loc_8028C18:
    mov r1, #2
    tst r0, r1
    beq loc_8028C2C
    bl sub_8029B1C
    cmp r0, #0
    bne locret_8028C96
    bl sub_8029032
    b locret_8028C96
loc_8028C2C:
    mov r1, #8
    tst r0, r1
    beq loc_8028C36
    mov r0, #0xa
    b loc_8028BD8
loc_8028C36:
    mov r1, #4
    tst r0, r1
    beq loc_8028C46
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8028C96
loc_8028C46:
    ldr r1, off_8028CC4 // =0x100 
    tst r0, r1
    beq loc_8028C80
    ldrb r0, [r5,#7]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #6
    beq loc_8028C60
    cmp r1, #7
    beq loc_8028C60
    cmp r1, #0
    bne locret_8028C96
loc_8028C60:
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    bl sub_8027D34
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #0x9c
    bl sound_play
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8028C96
loc_8028C80:
    ldr r1, off_8028CC8 // =0x200 
    tst r0, r1
    beq locret_8028C96
    bl sub_802D234
    cmp r0, #1
    beq locret_8028C96
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8028C96:
    pop {r4,pc}
off_8028C98:    .word off_8028C9C
off_8028C9C:    .word sub_8028CCC+1
    .word sub_8028D3A+1
    .word sub_8028D6C+1
    .word sub_8028DBC+1
    .word sub_8028DD6+1
    .word sub_8028DD6+1
    .word locret_8028E30+1
    .word locret_8028E30+1
    .word sub_8028E04+1
    .word sub_8028E04+1
off_8028CC4:    .word 0x100
off_8028CC8:    .word 0x200
.func
.thumb_func
sub_8028CCC:
    push {lr}
    ldrb r0, [r4,#7]
    cmp r0, #0
    bne loc_8028D30
    ldrb r0, [r5,#8]
    cmp r0, #5
    bge loc_8028D30
    add r1, r0, #1
    strb r1, [r5,#8]
    add r0, #0x48 
    ldrb r1, [r5,#7]
    strb r1, [r5,r0]
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    ldrb r1, [r5,#8]
    sub r1, #1
    bl sub_80281D4
    ldrb r0, [r5,#8]
    sub r0, #1
    mov r1, #1
    mov r2, #0
    bl sub_8029CD4
    ldrb r0, [r5,#7]
    bl sub_8028238
    mov r0, #2
    strb r0, [r4,#7]
    bl sub_8028E32
    mov r0, #0x81
    bl sound_play
    mov r0, #1
    strb r0, [r5,#0xf]
    mov r0, #0
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl sub_802A00C
    tst r0, r0
    beq locret_8028D38
    mov r0, #0x44 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_8028D38
loc_8028D30:
    mov r0, #0x69 
    bl sound_play
    mov r0, #1
locret_8028D38:
    pop {pc}
.endfunc // sub_8028CCC

.func
.thumb_func
sub_8028D3A:
    push {lr}
    bl sub_8029110
    bl sub_80293F8
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8028D50
    bl sub_802937A
    b loc_8028D5A
loc_8028D50:
    ldrh r0, [r5,#0x3a]
    tst r0, r0
    beq loc_8028D5A
    bl sub_80293B0
loc_8028D5A:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0x82
    bl sound_play
    mov r0, #0
    pop {pc}
.endfunc // sub_8028D3A

.func
.thumb_func
sub_8028D6C:
    push {lr}
    ldrb r0, [r4,#7]
    cmp r0, #0
    bne loc_8028DB2
    ldrb r0, [r5,#8]
    cmp r0, #5
    bge loc_8028DB2
    add r1, r0, #1
    strb r1, [r5,#8]
    add r0, #0x48 
    ldrb r1, [r5,#7]
    strb r1, [r5,r0]
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl sub_802A034
    ldrb r1, [r5,#8]
    sub r1, #1
    bl sub_80281D4
    ldrb r0, [r5,#8]
    sub r0, #1
    mov r1, #1
    mov r2, #0
    bl sub_8029CD4
    mov r0, #0x81
    bl sound_play
    mov r0, #0x48 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0
    b locret_8028DBA
loc_8028DB2:
    mov r0, #0x69 
    bl sound_play
    mov r0, #1
locret_8028DBA:
    pop {pc}
.endfunc // sub_8028D6C

.func
.thumb_func
sub_8028DBC:
    push {lr}
    bl sub_800A7E2
    bl sub_802D064
    mov r1, #1
    strb r1, [r0,#8]
    ldr r0, off_8028F80 // =dword_20349A0 
    strb r1, [r0,#0x4] // (byte_20349A4 - 0x20349a0)
    bl sub_8028D3A
    mov r0, #0
    pop {pc}
.endfunc // sub_8028DBC

.func
.thumb_func
sub_8028DD6:
    push {lr}
    ldrb r1, [r4]
    cmp r1, #5
    bne loc_8028DE0
    sub r4, #0xc
loc_8028DE0:
    ldrb r0, [r4,#7]
    cmp r0, #0
    bne loc_8028DFA
    mov r0, #0x28 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0x83
    add r0, #0xff
    bl sound_play
    mov r0, #0
    b locret_8028E02
loc_8028DFA:
    mov r0, #0x69 
    bl sound_play
    mov r0, #1
locret_8028E02:
    pop {pc}
.endfunc // sub_8028DD6

.func
.thumb_func
sub_8028E04:
    push {r6,r7,lr}
    ldrb r1, [r4]
    cmp r1, #9
    bne loc_8028E0E
    sub r4, #0xc
loc_8028E0E:
    ldrb r0, [r4,#7]
    cmp r0, #0
    bne loc_8028E26
    mov r0, #0x81
    bl sound_play
    mov r0, #0x38 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0
    b locret_8028E2E
loc_8028E26:
    mov r0, #0x69 
    bl sound_play
    mov r0, #1
locret_8028E2E:
    pop {r6,r7,pc}
.endfunc // sub_8028E04

locret_8028E30:
    mov pc, lr
.func
.thumb_func
sub_8028E32:
    push {lr}
    bl sub_8028E4C
    bl updateCustomScreen_WhenUnselectingChip_8028EC8 // () -> void
    bl sub_8028F48
    bl sub_8028F84
    mov r0, #0
    bl loc_8028250
    pop {pc}
.endfunc // sub_8028E32

.func
.thumb_func
sub_8028E4C:
    push {r4,r6,r7,lr}
    mov r6, #0
    sub r6, #1
    mov r7, #0x1a
    mov r0, #0
    strb r0, [r5,#0xa]
    ldrb r3, [r5,#8]
    cmp r3, #0
    beq loc_8028EC2
    mov r4, #0x48 
loc_8028E60:
    push {r3}
    ldrb r0, [r5,r4]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    pop {r3}
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_8028EBC
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    lsr r1, r0, #9
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    push {r0}
    bl chipIDIs13f_8029FF4 // (int a1) -> bool
    tst r0, r0
    pop {r0}
    bne loc_8028EBC
    cmp r1, #0x1b
    blt loc_8028E96
    cmp r1, #0x1c
    bgt loc_8028E96
    strb r1, [r5,#0xa]
    b loc_8028EBC
loc_8028E96:
    cmp r1, #0x1a
    beq loc_8028EA8
    cmp r7, #0x1a
    beq loc_8028EA6
    cmp r7, r1
    beq loc_8028EA8
    mov r7, #0xff
    b loc_8028EA8
loc_8028EA6:
    add r7, r1, #0
loc_8028EA8:
    mov r1, #0
    sub r1, #1
    cmp r1, r6
    beq loc_8028EBA
    cmp r0, r6
    beq loc_8028EBC
    mov r6, #0
    sub r6, #2
    b loc_8028EBC
loc_8028EBA:
    add r6, r0, #0
loc_8028EBC:
    add r4, #1
    sub r3, #1
    bne loc_8028E60
loc_8028EC2:
    strh r6, [r5,#0x20]
    strb r7, [r5,#9]
    pop {r4,r6,r7,pc}
.endfunc // sub_8028E4C

.func
.thumb_func
// () -> void
updateCustomScreen_WhenUnselectingChip_8028EC8:
    push {r4,r6,r7,lr}
    mov r0, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    // save active chips
    add r4, r0, #0
    // max 10 in memory
    mov r3, #0xa
    // check if the slot contains a chip?
chipCodeSelectLoopStar_8028ED4:
    ldrb r0, [r4]
    cmp r0, #0
    bne chipCodeSelectLoopInc_8028F40
    // check if the chip is already selected
    ldrb r0, [r4,#7]
    cmp r0, #2
    beq chipCodeSelectLoopInc_8028F40
    // check number of selected chips
    ldrb r0, [r5,#8]
    cmp r0, #5
    bge notChipCodeSelect_8028F3C
    // load pointer
    // load chip data
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    // code
    lsr r1, r0, #9
    // ID
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    // assume chip can be selected
    mov r6, #0
    push {r0}
    bl chipIDIs13f_8029FF4 // (int a1) -> bool
    tst r0, r0
    pop {r0}
    bne isChipCodeSelect_8028F3E
    // codes 0x1b, 0x1c are special codes
    cmp r1, #0x1b
    blt chipCodeSelectNormal_8028F16
    cmp r1, #0x1c
    bgt chipCodeSelectNormal_8028F16
    // special active chip code
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    beq isChipCodeSelect_8028F3E
    // if the active code is not the special chip codoe
    // return false!
    cmp r0, r1
    bne notChipCodeSelect_8028F3C
    b isChipCodeSelect_8028F3E
chipCodeSelectNormal_8028F16:
    mov r7, #0x20 
    // r2 = active chip
    ldrsh r2, [r5,r7]
    mov r7, #0
    sub r7, #1
    // if active chip == -1: any chip works
    cmp r2, r7
    beq chipCodeSelectMonocode_8028F26
    // the only case chip code is ignores is
    // if all chips are the same type
    cmp r0, r2
    beq isChipCodeSelect_8028F3E
    // at this point, all chips are different?
    // if not monocode, can't be selected
chipCodeSelectMonocode_8028F26:
    ldrb r2, [r5,#9]
    cmp r2, #0xff
    beq notChipCodeSelect_8028F3C
    // check if all chips are (*) so far
    cmp r2, #0x1a
    bgt chipCodeSelectNotStar_8028F32
    beq isChipCodeSelect_8028F3E
    // check if selected chip is (*)
chipCodeSelectNotStar_8028F32:
    cmp r1, #0x1a
    bgt chipCodeSelectNotStar2_8028F38
    beq isChipCodeSelect_8028F3E
    // check if the selected chip has the same code as active code
chipCodeSelectNotStar2_8028F38:
    cmp r1, r2
    beq isChipCodeSelect_8028F3E
notChipCodeSelect_8028F3C:
    mov r6, #1
isChipCodeSelect_8028F3E:
    strb r6, [r4,#7]
    // increment loop
chipCodeSelectLoopInc_8028F40:
    add r4, #0xc
    sub r3, #1
    bne chipCodeSelectLoopStar_8028ED4
    pop {r4,r6,r7,pc}
.endfunc // updateCustomScreen_WhenUnselectingChip_8028EC8

.func
.thumb_func
sub_8028F48:
    push {r4,r6,r7,lr}
    mov r0, #0xb
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrb r0, [r4]
    cmp r0, #2
    bne locret_8028F7C
    ldrb r0, [r4,#7]
    cmp r0, #2
    beq locret_8028F7C
    ldrb r0, [r5,#8]
    cmp r0, #5
    bge loc_8028F78
    bl sub_802A57E
    tst r0, r0
    beq loc_8028F78
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne loc_8028F78
    mov r0, #0
    strb r0, [r4,#7]
    b locret_8028F7C
loc_8028F78:
    mov r0, #1
    strb r0, [r4,#7]
locret_8028F7C:
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_8028F80:    .word dword_20349A0
.endfunc // sub_8028F48

.func
.thumb_func
sub_8028F84:
    push {r4,r6,r7,lr}
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrb r0, [r4]
    cmp r0, #8
    bne locret_8028FBE
    ldrb r0, [r4,#7]
    cmp r0, #2
    beq locret_8028FBE
    ldrb r0, [r4,#7]
    cmp r0, #3
    beq loc_8028FBA
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_8028FBA
    add r0, #0x47 
    ldrb r0, [r5,r0]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_8028FBA
    mov r0, #0
    strb r0, [r4,#7]
    b locret_8028FBE
loc_8028FBA:
    mov r0, #1
    strb r0, [r4,#7]
locret_8028FBE:
    pop {r4,r6,r7,pc}
.endfunc // sub_8028F84

    push {r4,r6,r7,lr}
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrb r0, [r4]
    cmp r0, #6
    bne locret_8029030
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_802901C
    add r0, #0x47 
    ldrb r0, [r5,r0]
    add r7, r0, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_802901C
    ldrb r1, [r0,#5]
    cmp r1, #0
    bne loc_802901C
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    add r6, r0, #0
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrb r0, [r0,#9]
    mov r1, #2
    tst r0, r1
    beq loc_802901C
    ldrb r0, [r4,#7]
    cmp r0, #2
    beq loc_8029010
    mov r0, #0
    strb r0, [r4,#7]
loc_8029010:
    ldrb r0, [r4,#0x13]
    cmp r0, #2
    beq locret_8029030
    mov r0, #0
    strb r0, [r4,#0x13]
    b locret_8029030
loc_802901C:
    ldrb r0, [r4,#7]
    cmp r0, #2
    beq loc_8029026
    mov r0, #1
    strb r0, [r4,#7]
loc_8029026:
    ldrb r0, [r4,#0x13]
    cmp r0, #2
    beq locret_8029030
    mov r0, #1
    strb r0, [r4,#0x13]
locret_8029030:
    pop {r4,r6,r7,pc}
.func
.thumb_func
sub_8029032:
    push {r4,lr}
    ldrb r0, [r5,#8]
    cmp r0, #0
    bne loc_8029066
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne loc_8029048
    mov r0, #0x69 
    bl sound_play
    b locret_8029104
loc_8029048:
    ldrb r0, [r5,#0x1b]
    ldr r1, dword_802910C // =0x55 
    add r1, r1, r0
    mov r0, #0
    strb r0, [r5,r1]
    mov r0, #0
    strb r0, [r5,#0x1a]
    strb r0, [r5,#0x19]
    mov r0, #0xd3
    add r0, #0xff
    bl sound_play
    bl sub_802A0EC
    b loc_80290F6
loc_8029066:
    add r0, #0x47 
    ldrb r0, [r5,r0]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    add r4, r0, #0
    ldrb r0, [r4]
    cmp r0, #2
    bne loc_80290A4
    ldrb r1, [r5,#8]
    sub r1, #1
    strb r1, [r5,#8]
    ldr r0, dword_8029108 // =0x1FF 
    bl sub_80281D4
    ldrb r0, [r5,#8]
    mov r1, #0
    mov r2, #0
    bl sub_8029CD4
    bl sub_802A0EC
    mov r0, #0x83
    bl sound_play
    mov r0, #0xd3
    add r0, #0xff
    bl sound_play
    mov r0, #0
    strb r0, [r5,#0x17]
    b loc_80290F2
loc_80290A4:
    ldr r0, [r4,#8]
    ldrh r0, [r0]
    bl sub_802A00C
    tst r0, r0
    beq loc_80290C2
    mov r0, #0x83
    bl sound_play
    mov r0, #0xd3
    add r0, #0xff
    bl sound_play
    bl sub_802A0EC
loc_80290C2:
    ldrb r1, [r5,#8]
    sub r1, #1
    strb r1, [r5,#8]
    ldr r0, dword_8029108 // =0x1FF 
    bl sub_80281D4
    ldrb r0, [r5,#8]
    mov r1, #0
    mov r2, #0
    bl sub_8029CD4
    ldrb r0, [r4,#5]
    cmp r0, #0
    beq loc_80290F2
    mov r1, #0
    strb r1, [r4,#5]
    ldrb r1, [r4,#4]
    mov r2, #0x3e 
    bic r1, r2
    strb r1, [r4,#4]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    mov r1, #0
    strb r1, [r0,#7]
loc_80290F2:
    mov r0, #0
    strb r0, [r4,#7]
loc_80290F6:
    bl sub_8028E32
    bl sub_8028476
    mov r0, #0x83
    bl sound_play
locret_8029104:
    pop {r4,pc}
    .balign 4, 0x00
dword_8029108:    .word 0x1FF
dword_802910C:    .word 0x55
.endfunc // sub_8029032

.func
.thumb_func
sub_8029110:
    push {r4,r6,r7,lr}
    mov r0, #0x14
    strb r0, [r5,#0xb]
    // memBlock
    ldr r0, off_80293D4 // =dword_2033000 
    // numWords
    mov r1, #0x48 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    ldr r4, off_80293D4 // =dword_2033000 
    ldr r6, off_80293CC // =byte_20366C0 
    mov r3, #6
    mov r0, #0
    sub r0, #1
loc_8029128:
    strh r0, [r4]
    strh r0, [r6,#0x32]
    add r4, #2
    add r6, #2
    sub r3, #1
    bne loc_8029128
    ldr r4, off_80293D4 // =dword_2033000 
    ldrb r7, [r5,#8]
    cmp r7, #0
    beq loc_80291E6
    mov r6, #0x48 
    ldr r3, off_80293CC // =byte_20366C0 
loc_8029140:
    ldrb r0, [r5,r6]
    push {r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    pop {r3}
    ldrb r1, [r0]
    cmp r1, #2
    bne loc_8029156
    bl sub_8029344
    b loc_80291AC
loc_8029156:
    cmp r1, #0
    bne loc_802915E
    ldrb r1, [r0,#4]
    strh r1, [r4,#0x3c]
loc_802915E:
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    strh r0, [r3,#0x32]
    lsr r1, r0, #9
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    strh r0, [r4]
    strh r1, [r4,#0x30]
    ldr r1, off_80293D8 // =0x190 
    cmp r0, r1
    blt loc_802918C
    push {r0}
    sub r0, r0, r1
    add r0, #1
    mov r1, #1
    lsl r1, r0
    ldr r0, off_80293F4 // =dword_20349A0 
    ldrh r2, [r0,#0xc] // (word_20349AC - 0x20349a0)
    orr r2, r1
    strh r2, [r0,#0xc] // (word_20349AC - 0x20349a0)
    pop {r0}
loc_802918C:
    push {r3}
    push {r0}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    bl sub_80109A4
    strh r0, [r4,#0xc]
    pop {r0}
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrb r1, [r0,#6]
    strh r1, [r4,#0x24]
    pop {r3}
    add r4, #2
    add r3, #2
loc_80291AC:
    add r6, #1
    sub r7, #1
    bne loc_8029140
    ldr r0, off_80293CC // =byte_20366C0 
    add r0, #0x32 
    mov r1, #0
    bl loc_8029520
    cmp r0, #0
    beq loc_80291E2
    push {r0-r2}
    bl sub_8029328
    cmp r0, #0
    pop {r0-r2}
    bne loc_80291E2
    push {r0-r2}
    bl sub_80292CC
    pop {r0-r2}
    lsr r1, r1, #1
    ldr r3, off_80293CC // =byte_20366C0 
    add r3, #0x32 
    bl sub_802B6F2
    mov r0, #0x10
    strb r0, [r5,#0xb]
loc_80291E2:
    bl sub_8029224
loc_80291E6:
    ldr r2, off_80293D4 // =dword_2033000 
    ldr r6, off_80293CC // =byte_20366C0 
    ldr r4, off_80293D0 // =byte_20366FE 
    mov r0, #0
    ldrb r3, [r5,#8]
    cmp r3, #0
    bne loc_80291F6
    mov r0, #0xff
loc_80291F6:
    strb r0, [r6]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    sub r0, #1
    mov r3, #6
loc_8029202:
    ldrh r7, [r2]
    strh r7, [r6,#2]
    ldrh r7, [r2,#0xc]
    strh r7, [r6,#0xe]
    ldrh r7, [r2,#0x18]
    strh r7, [r6,#0x1a]
    mov r1, #0
    strh r1, [r6,#0x26]
    strb r0, [r4]
    ldrh r7, [r2,#0x3c]
    strb r7, [r4,#6]
    add r6, #2
    add r4, #1
    add r2, #2
    sub r3, #1
    bne loc_8029202
    pop {r4,r6,r7,pc}
.endfunc // sub_8029110

.func
.thumb_func
sub_8029224:
    push {r4,r6,r7,lr}
    ldr r4, off_80293D4 // =dword_2033000 
    add r4, #2
    mov r7, #0
    sub r7, #1
    mov r6, #0
loc_8029230:
    ldrsh r0, [r4,r6]
    cmp r0, r7
    beq locret_80292CA
    cmp r0, #0xc0
    beq loc_8029252
    cmp r0, #0xc1
    beq loc_802924C
    cmp r0, #0xc3
    beq loc_8029252
    cmp r0, #0xb8
    beq loc_8029252
    cmp r0, #0xb9
    beq loc_8029258
    b loc_80292C6
loc_802924C:
    mov r1, #4
    mov r2, #0
    b loc_802925C
loc_8029252:
    mov r1, #2
    mov r2, #0
    b loc_802925C
loc_8029258:
    mov r1, #2
    mov r2, #1
loc_802925C:
    sub r0, r4, #2
    // idx
    ldrh r0, [r0]
    push {r1,r2}
    bl refIndex_8021DA8 // (int idx) -> void*
    pop {r1,r2}
    ldrb r0, [r0,#9]
    tst r0, r1
    beq loc_80292C6
    tst r0, r2
    bne loc_80292C6
    ldrsh r0, [r4,r6]
    cmp r0, #0xb8
    beq loc_8029286
    cmp r0, #0xb9
    beq loc_8029292
    ldrh r0, [r4,#0xc]
    ldrh r1, [r4,#0x16]
    add r1, r1, r0
    strh r1, [r4,#0x16]
    b loc_802929C
loc_8029286:
    sub r0, r4, #2
    ldrh r1, [r0,#0x3c]
    mov r2, #2
    orr r1, r2
    strh r1, [r0,#0x3c]
    b loc_802929C
loc_8029292:
    sub r0, r4, #2
    ldrh r1, [r0,#0x3c]
    mov r2, #4
    orr r1, r2
    strh r1, [r0,#0x3c]
loc_802929C:
    ldrh r0, [r3,#0x3c]
    mov r1, #1
    and r1, r0
    ldrh r0, [r3,#0x3a]
    orr r0, r1
    strh r0, [r3,#0x3a]
    add r2, r4, #0
    add r3, r4, #2
loc_80292AC:
    ldrh r0, [r3,#0x3c]
    strh r0, [r2,#0x3c]
    ldrh r0, [r3,#0xc]
    strh r0, [r2,#0xc]
    ldrh r0, [r3,#0x24]
    strh r0, [r2,#0x24]
    ldrsh r0, [r3,r6]
    strh r0, [r2,r6]
    add r3, #2
    add r2, #2
    cmp r0, r7
    bne loc_80292AC
    sub r4, #2
loc_80292C6:
    add r4, #2
    b loc_8029230
locret_80292CA:
    pop {r4,r6,r7,pc}
.endfunc // sub_8029224

.func
.thumb_func
sub_80292CC:
    push {r4,r6,r7,lr}
    ldr r4, off_80293D4 // =dword_2033000 
    add r4, r4, r1
    lsl r3, r2, #1
    add r6, r4, r3
    sub r7, r2, #1
    strh r0, [r4]
    push {r0}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    bl sub_80109A4
    strh r0, [r4,#0xc]
    pop {r0}
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrb r1, [r0,#6]
    strh r1, [r4,#0x24]
    mov r2, #0x3e 
loc_80292F4:
    ldrh r0, [r4,r2]
    mov r1, #1
    and r1, r0
    ldrh r0, [r4,#0x3c]
    orr r0, r1
    strh r0, [r4,#0x3c]
    add r2, #2
    sub r7, #1
    bne loc_80292F4
    add r4, #2
    mov r7, #0
    sub r7, #1
    mov r1, #0
loc_802930E:
    ldrh r0, [r6,#0x3c]
    strh r0, [r4,#0x3c]
    ldrh r0, [r6,#0xc]
    strh r0, [r4,#0xc]
    ldrh r0, [r6,#0x24]
    strh r0, [r4,#0x24]
    ldrsh r0, [r6,r1]
    strh r0, [r4,r1]
    add r6, #2
    add r4, #2
    cmp r0, r7
    bne loc_802930E
    pop {r4,r6,r7,pc}
.endfunc // sub_80292CC

.func
.thumb_func
sub_8029328:
    push {r4,lr}
    ldr r4, off_80293D4 // =dword_2033000 
    add r4, r4, r1
    add r4, #0x3c 
    mov r3, #0xfe
    mov r0, #0
loc_8029334:
    ldrh r1, [r4]
    and r1, r3
    beq loc_802933C
    add r0, #1
loc_802933C:
    add r4, #2
    sub r2, #1
    bne loc_8029334
    pop {r4,pc}
.endfunc // sub_8029328

.func
.thumb_func
sub_8029344:
    push {r0-r4,r6,lr}
    mov r0, #0
    bl sub_802A11C
    add r6, r0, #0
    bl sub_802A564
    cmp r0, #1
    bne loc_802935A
    ldr r4, dword_80293E4 // =0x18 
    b loc_8029368
loc_802935A:
    cmp r1, #0
    bne loc_8029362
    ldr r4, dword_80293E0 // =0xC 
    b loc_8029368
loc_8029362:
    ldr r4, dword_80293EC // =0x12 
    sub r1, #6
    add r4, r4, r1
loc_8029368:
    add r0, r4, #0
    mov r1, #0
    add r2, r6, #0
    bl sub_8015952
    mov r0, #1
    ldr r1, off_80293F4 // =dword_20349A0 
    strb r0, [r1,#0x10] // (byte_20349B0 - 0x20349a0)
    pop {r0-r4,r6,pc}
.endfunc // sub_8029344

.func
.thumb_func
sub_802937A:
    push {r0-r4,lr}
    ldr r4, dword_80293E8 // =0x6 
    bl sub_802A564
    cmp r1, #0xb
    blt loc_8029388
    ldr r4, dword_80293EC // =0x12 
loc_8029388:
    mov r0, #1
    bl sub_802A11C
    add r2, r0, #0
    ldrb r0, [r5,#0x1a]
    add r0, r0, r4
    mov r1, #0
    bl sub_8015952
    ldrb r0, [r5,#0x1a]
    ldr r1, dword_80293E8 // =0x6 
    add r0, r0, r1
    sub r0, #1
    mov r3, #1
    lsl r3, r0
    ldr r2, off_80293F4 // =dword_20349A0 
    ldr r1, [r2]
    orr r1, r3
    str r1, [r2]
    pop {r0-r4,pc}
.endfunc // sub_802937A

.func
.thumb_func
sub_80293B0:
    push {r0-r4,lr}
    ldrh r0, [r5,#0x3a]
    sub r0, #1
    ldr r1, dword_80293F0 // =0xD 
    add r0, r0, r1
    mov r1, #0
    mov r2, #3
    bl sub_8015952
    ldrb r0, [r3,#5]
    add r0, #1
    strb r0, [r3,#5]
    pop {r0-r4,pc}
    .balign 4, 0x00
off_80293CC:    .word byte_20366C0
off_80293D0:    .word byte_20366FE
off_80293D4:    .word dword_2033000
off_80293D8:    .word 0x190
    .word byte_20349C0
dword_80293E0:    .word 0xC
dword_80293E4:    .word 0x18
dword_80293E8:    .word 0x6
dword_80293EC:    .word 0x12
dword_80293F0:    .word 0xD
off_80293F4:    .word dword_20349A0
.endfunc // sub_80293B0

.func
.thumb_func
sub_80293F8:
    push {r4,r6,r7,lr}
    mov r7, #0
    sub r7, #1
    ldrb r4, [r5,#8]
    cmp r4, #0
    beq locret_8029458
    mov r6, #0x48 
loc_8029406:
    ldrb r0, [r5,r6]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #2
    bne loc_8029426
    push {r0,r1}
    bl sub_802D234
    cmp r0, #1
    pop {r0,r1}
    bne loc_8029452
    ldrb r0, [r0,#4]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
loc_8029426:
    cmp r1, #0
    bne loc_8029452
    ldrb r1, [r0,#4]
    mov r2, #1
    tst r1, r2
    beq loc_802943A
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r1, #0
    strb r1, [r2,#0x17]
loc_802943A:
    ldr r0, [r0,#8]
    strh r7, [r0]
    mov r2, r10
    ldr r2, [r2,#0x18]
    mov r1, #0x44 
    ldrb r3, [r2,r1]
    tst r3, r3
    beq loc_8029452
    mov r1, #0x45 
    ldrb r3, [r2,r1]
    sub r3, #1
    strb r3, [r2,r1]
loc_8029452:
    add r6, #1
    sub r4, #1
    bne loc_8029406
locret_8029458:
    pop {r4,r6,r7,pc}
.endfunc // sub_80293F8

.func
.thumb_func
sub_802945A:
    push {r4,r6,r7,lr}
    ldr r3, off_8029510 // =word_203CDB0 
    mov r4, #0
    mov r6, #0
    mov r2, #0x1e
    mov r7, #0
    sub r7, #1
loc_8029468:
    ldrsh r0, [r3,r4]
    cmp r0, r7
    beq loc_8029474
    strh r0, [r3,r6]
    add r6, #2
    sub r2, #1
loc_8029474:
    add r4, #2
    cmp r4, #0x3c 
    blt loc_8029468
    cmp r2, #0
    beq locret_8029486
loc_802947E:
    strh r7, [r3,r6]
    add r6, #2
    sub r2, #1
    bne loc_802947E
locret_8029486:
    pop {r4,r6,r7,pc}
.endfunc // sub_802945A

    push {r4,r6,r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x18]
    mov r0, #0x44 
    ldrb r0, [r4,r0]
    tst r0, r0
    beq locret_80294DE
    mov r0, #0x45 
    ldrb r6, [r4,r0]
    ldrb r1, [r5,#6]
    sub r2, r1, #1
    cmp r6, r2
    beq loc_80294A8
    cmp r6, r2
    blt loc_80294D8
    b locret_80294DE
loc_80294A8:
    ldr r3, off_8029510 // =word_203CDB0 
    lsl r6, r6, #1
    add r3, r3, r6
    mov r7, #4
    ldrsh r0, [r3,r7]
    mov r1, #0
    sub r1, #1
    cmp r0, r1
    beq loc_80294D8
    mov r7, #0
    ldrsh r1, [r3,r7]
    mov r7, #2
    ldrsh r2, [r3,r7]
    mov r7, #0
    strh r0, [r3,r7]
    mov r7, #2
    strh r1, [r3,r7]
    mov r7, #4
    strh r2, [r3,r7]
    mov r0, #0x45 
    ldrb r1, [r4,r0]
    add r1, #1
    strb r1, [r4,r0]
    b locret_80294DE
loc_80294D8:
    mov r0, #0x44 
    mov r1, #0
    strb r1, [r4,r0]
locret_80294DE:
    pop {r4,r6,r7,pc}
.func
.thumb_func
sub_80294E0:
    push {r4,r6,r7,lr}
    mov r0, #0x5f 
    ldrb r6, [r5,r0]
loc_80294E6:
    ldr r3, off_8029510 // =word_203CDB0 
    mov r4, #0
    mov r7, #0
    sub r7, #1
loc_80294EE:
    ldrsh r1, [r3,r4]
    cmp r1, r7
    bne loc_8029502
    sub r1, r6, #1
    lsl r1, r1, #1
    mov r2, #0x60 
    add r2, r2, r1
    ldrh r0, [r5,r2]
    strh r0, [r3,r4]
    b loc_8029508
loc_8029502:
    add r4, #2
    cmp r4, #0x3c 
    blt loc_80294EE
loc_8029508:
    sub r6, #1
    cmp r6, #0
    bgt loc_80294E6
    pop {r4,r6,r7,pc}
off_8029510:    .word word_203CDB0
.endfunc // sub_80294E0

.func
.thumb_func
sub_8029514:
    push {r4-r7,lr}
    sub sp, sp, #0x20
    mov r7, sp
    mov r2, #1
    str r2, [r7,#0x1c]
    b loc_802952A
.endfunc // sub_8029514

loc_8029520:
    push {r4-r7,lr}
    sub sp, sp, #0x20
    mov r7, sp
    mov r2, #0
    str r2, [r7,#0x1c]
loc_802952A:
    str r1, [r7,#0x18]
    mov r4, #0
    sub r4, #1
    mov r5, #0
    mov r6, #0xa
loc_8029534:
    ldrsh r1, [r0,r5]
    cmp r1, r4
    beq loc_802954C
    lsr r2, r1, #9
    lsl r1, r1, #0x17
    lsr r1, r1, #0x17
    strh r1, [r7,r5]
    strh r2, [r7,r6]
    add r5, #2
    add r6, #2
    cmp r5, #0xa
    bne loc_8029534
loc_802954C:
    mov r0, #0
    lsr r5, r5, #1
    cmp r5, #3
    blt loc_80295B0
    mov r6, #0
loc_8029556:
    ldr r4, off_80295B4 // =off_802BCB0 
    ldr r0, [r7,#0x1c]
    cmp r0, #0
    beq loc_8029560
    ldr r4, off_80295B8 // =off_802BC60 
loc_8029560:
    ldr r3, [r4]
    cmp r3, #0
    beq loc_80295A6
    ldrb r2, [r3]
    cmp r5, r2
    blt loc_80295A2
    ldrb r0, [r3,#1]
    ldr r1, off_80295BC // =off_80295C0 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    cmp r0, #0
    beq loc_80295A2
    push {r1-r3}
    ldr r1, [r7,#0x18]
    bl sub_8029652
    pop {r1-r3}
    cmp r0, #0
    beq loc_80295A2
    push {r0-r3}
    ldr r0, [r7,#0x1c]
    cmp r0, #0
    pop {r0-r3}
    beq loc_802959C
    push {r0-r3}
    ldr r0, [r7,#0x18]
    cmp r0, #0
    pop {r0-r3}
    bne loc_80295B0
loc_802959C:
    bl sub_802963C
    b loc_80295B0
loc_80295A2:
    add r4, #4
    b loc_8029560
loc_80295A6:
    add r6, #2
    sub r5, #1
    cmp r5, #3
    bge loc_8029556
    mov r0, #0
loc_80295B0:
    add sp, sp, #0x20
    pop {r4-r7,pc}
off_80295B4:    .word off_802BCB0
off_80295B8:    .word off_802BC60
off_80295BC:    .word off_80295C0
off_80295C0:    .word sub_80295C8+1
    .word sub_802961A+1
.func
.thumb_func
sub_80295C8:
    push {r2,r4-r6,lr}
    add r5, r2, #0
    ldrh r1, [r3,#4]
loc_80295CE:
    ldrh r0, [r7,r6]
    cmp r0, r1
    bne loc_8029616
    add r6, #2
    sub r2, #1
    bne loc_80295CE
    mov r2, #0
    add r6, #8
    ldrh r0, [r7,r6]
    add r0, #1
loc_80295E2:
    ldrh r1, [r7,r6]
    cmp r1, #0x1a
    bne loc_80295FA
    cmp r2, #0
    bne loc_80295F6
    cmp r0, #0x1b
    bne loc_80295F6
    sub r0, r6, #2
    ldrh r0, [r7,r0]
    add r0, #2
loc_80295F6:
    sub r1, r0, #1
    add r2, #1
loc_80295FA:
    sub r0, #1
    cmp r0, r1
    bne loc_8029616
    sub r6, #2
    sub r5, #1
    bne loc_80295E2
    cmp r2, #1
    bgt loc_8029616
    cmp r0, #0
    blt loc_8029616
    ldrh r0, [r3,#2]
    add r1, r6, #0
    sub r1, #8
    b locret_8029618
loc_8029616:
    mov r0, #0
locret_8029618:
    pop {r2,r4-r6,pc}
.endfunc // sub_80295C8

.func
.thumb_func
sub_802961A:
    push {r2,r4,r7,lr}
    add r4, r3, #0
    add r4, #4
    add r7, r7, r6
loc_8029622:
    ldrh r0, [r7]
    ldrh r1, [r4]
    cmp r0, r1
    bne loc_8029638
    add r4, #2
    add r7, #2
    sub r2, #1
    bne loc_8029622
    ldrh r0, [r3,#2]
    add r1, r6, #0
    b locret_802963A
loc_8029638:
    mov r0, #0
locret_802963A:
    pop {r2,r4,r7,pc}
.endfunc // sub_802961A

.func
.thumb_func
sub_802963C:
    push {r0-r3,lr}
    bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
    ldr r1, off_802967C // =0x140 
    sub r0, r0, r1
    ldr r1, off_8029680 // =0x1F60 
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    pop {r0-r3,pc}
.endfunc // sub_802963C

.func
.thumb_func
sub_8029652:
    push {r4,lr}
    ldr r3, off_8029684 // =dword_203CA48 
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r2, off_802967C // =0x140 
    sub r2, r0, r2
    mov r1, #7
    and r1, r2
    lsr r2, r2, #3
    add r3, r3, r2
    ldrb r4, [r3]
    mov r2, #1
    lsl r2, r1
    tst r4, r2
    beq loc_8029674
    mov r0, #0
    b locret_8029678
loc_8029674:
    orr r4, r2
    strb r4, [r3]
locret_8029678:
    pop {r4,pc}
    .balign 4, 0x00
off_802967C:    .word 0x140
off_8029680:    .word 0x1F60
off_8029684:    .word dword_203CA48
.endfunc // sub_8029652

.func
.thumb_func
sub_8029688:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r1, r10
    ldr r1, [r1,#0x18]
    mov r0, #0x44 
    ldrb r0, [r1,r0]
    tst r0, r0
    beq loc_80296A2
    mov r0, #0x45 
    ldrb r0, [r1,r0]
    str r0, [sp]
loc_80296A2:
    ldr r7, off_8029784 // =dword_2033000 
    ldr r6, off_80298D4 // =word_203CDB0 
    ldrb r4, [r5,#6]
    cmp r4, #0
    beq loc_80296DE
    mov r3, #0
    mov r2, #0
loc_80296B0:
    add r0, r3, #0
    push {r2,r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    pop {r2,r3}
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_80296D8
    ldrb r1, [r0,#7]
    cmp r1, #2
    beq loc_80296D6
    ldrb r1, [r0,#4]
    mov r0, #1
    tst r1, r0
    bne loc_80296D6
    ldrh r0, [r6]
    strh r0, [r7]
    add r7, #2
    add r2, #1
loc_80296D6:
    add r6, #2
loc_80296D8:
    add r3, #1
    sub r4, #1
    bne loc_80296B0
loc_80296DE:
    ldrb r3, [r5,#5]
    ldrb r0, [r5,#6]
    sub r3, r3, r0
    bmi loc_802970C
    beq loc_802970C
loc_80296E8:
    ldr r0, [sp]
    tst r0, r0
    beq loc_80296FE
    lsl r0, r0, #1
    ldr r1, off_80298D4 // =word_203CDB0 
    add r0, r0, r1
    cmp r0, r6
    bne loc_80296FE
    add r6, #4
    sub r3, #2
    b loc_802970A
loc_80296FE:
    ldrh r0, [r6]
    strh r0, [r7]
    add r6, #2
    add r7, #2
    add r2, #1
    sub r3, #1
loc_802970A:
    bne loc_80296E8
loc_802970C:
    cmp r2, #0
    beq loc_802977E
    ldr r0, off_8029784 // =dword_2033000 
    add r7, r0, #0
    add r1, r2, #0
    bl sub_8000D12
    ldrb r4, [r5,#6]
    cmp r4, #0
    beq loc_8029750
    ldr r6, off_80298D4 // =word_203CDB0 
    mov r3, #0
loc_8029724:
    add r0, r3, #0
    push {r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    pop {r3}
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_802974A
    ldrb r1, [r0,#7]
    cmp r1, #2
    beq loc_8029748
    ldrb r1, [r0,#4]
    mov r0, #1
    tst r1, r0
    bne loc_8029748
    ldrh r0, [r7]
    strh r0, [r6]
    add r7, #2
loc_8029748:
    add r6, #2
loc_802974A:
    add r3, #1
    sub r4, #1
    bne loc_8029724
loc_8029750:
    ldrb r3, [r5,#5]
    ldrb r0, [r5,#6]
    sub r3, r3, r0
    bmi loc_802977E
    beq loc_802977E
loc_802975A:
    ldr r0, [sp]
    tst r0, r0
    beq loc_8029770
    lsl r0, r0, #1
    ldr r1, off_80298D4 // =word_203CDB0 
    add r0, r0, r1
    cmp r0, r6
    bne loc_8029770
    add r6, #4
    sub r3, #2
    b loc_802977C
loc_8029770:
    ldrh r0, [r7]
    strh r0, [r6]
    add r6, #2
    add r7, #2
    add r2, #1
    sub r3, #1
loc_802977C:
    bne loc_802975A
loc_802977E:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_8029784:    .word dword_2033000
.endfunc // sub_8029688

.func
.thumb_func
sub_8029788:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r1, r10
    ldr r1, [r1,#0x18]
    mov r0, #0x44 
    ldrb r0, [r1,r0]
    tst r0, r0
    beq loc_80297A2
    mov r0, #0x45 
    ldrb r0, [r1,r0]
    str r0, [sp]
loc_80297A2:
    ldr r7, off_80298C0 // =word_2036660 
    ldr r6, off_80298D4 // =word_203CDB0 
    mov r3, #0
    mov r2, #0
    ldrb r4, [r5,#6]
    cmp r4, #0
    beq loc_80297E0
loc_80297B0:
    add r0, r3, #0
    push {r2,r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    pop {r2,r3}
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_80297D8
    ldrb r1, [r0,#7]
    cmp r1, #2
    beq loc_80297D6
    ldrb r1, [r0,#4]
    mov r0, #1
    tst r1, r0
    bne loc_80297D6
    ldrh r0, [r6]
    strh r0, [r7]
    add r7, #2
    add r2, #1
loc_80297D6:
    add r6, #2
loc_80297D8:
    add r3, #1
    sub r4, #1
    bne loc_80297B0
    add r4, r2, #0
loc_80297E0:
    ldrb r3, [r5,#5]
    ldrb r0, [r5,#6]
    sub r3, r3, r0
    bmi loc_802980E
    beq loc_802980E
loc_80297EA:
    ldr r0, [sp]
    tst r0, r0
    beq loc_8029800
    lsl r0, r0, #1
    ldr r1, off_80298D4 // =word_203CDB0 
    add r0, r0, r1
    cmp r0, r6
    bne loc_8029800
    add r6, #4
    sub r3, #2
    b loc_802980C
loc_8029800:
    ldrh r0, [r6]
    strh r0, [r7]
    add r6, #2
    add r7, #2
    add r2, #1
    sub r3, #1
loc_802980C:
    bne loc_80297EA
loc_802980E:
    cmp r2, #0
    beq loc_8029838
    ldr r0, off_80298C0 // =word_2036660 
    push {r0,r2}
    ldr r1, off_80298C4 // =dword_80298C8 
    ldrb r3, [r1,r4]
    cmp r3, #0
    beq loc_802982A
    add r1, r4, #0
    add r2, r4, #0
    push {r3}
    bl sub_8000D12
    pop {r3}
loc_802982A:
    pop {r0,r2}
    sub r2, r2, r3
    lsl r3, r3, #1
    add r0, r0, r3
    add r1, r2, #0
    bl sub_8000D12
loc_8029838:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
.endfunc // sub_8029788

.func
.thumb_func
sub_802983C:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    mov r0, #0
    str r0, [sp]
    mov r1, r10
    ldr r1, [r1,#0x18]
    mov r0, #0x44 
    ldrb r0, [r1,r0]
    tst r0, r0
    beq loc_8029856
    mov r0, #0x45 
    ldrb r0, [r1,r0]
    str r0, [sp]
loc_8029856:
    ldr r7, off_80298C0 // =word_2036660 
    ldr r6, off_80298D4 // =word_203CDB0 
    ldrb r4, [r5,#6]
    cmp r4, #0
    beq loc_802988E
    mov r3, #0
loc_8029862:
    add r0, r3, #0
    push {r3}
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    pop {r3}
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_8029888
    ldrb r1, [r0,#7]
    cmp r1, #2
    beq loc_8029886
    ldrb r1, [r0,#4]
    mov r0, #1
    tst r1, r0
    bne loc_8029886
    ldrh r0, [r7]
    strh r0, [r6]
    add r7, #2
loc_8029886:
    add r6, #2
loc_8029888:
    add r3, #1
    sub r4, #1
    bne loc_8029862
loc_802988E:
    ldrb r3, [r5,#5]
    ldrb r0, [r5,#6]
    sub r3, r3, r0
    bmi loc_80298BC
    beq loc_80298BC
loc_8029898:
    ldr r0, [sp]
    tst r0, r0
    beq loc_80298AE
    lsl r0, r0, #1
    ldr r1, off_80298D4 // =word_203CDB0 
    add r0, r0, r1
    cmp r0, r6
    bne loc_80298AE
    add r6, #4
    sub r3, #2
    b loc_80298BA
loc_80298AE:
    ldrh r0, [r7]
    strh r0, [r6]
    add r6, #2
    add r7, #2
    add r2, #1
    sub r3, #1
loc_80298BA:
    bne loc_8029898
loc_80298BC:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
off_80298C0:    .word word_2036660
off_80298C4:    .word dword_80298C8
dword_80298C8:    .word 0x0, 0x0, 0x0
off_80298D4:    .word word_203CDB0
.endfunc // sub_802983C

.func
.thumb_func
sub_80298D8:
    push {lr}
    ldr r0, dword_80298EC // =0x40600000 
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    ldr r1, dword_80298F0 // =0xD796 
    mov r2, #1
    mov r3, #0
    bl sub_8009FF8
    pop {pc}
dword_80298EC:    .word 0x40600000
dword_80298F0:    .word 0xD796
.endfunc // sub_80298D8

.func
.thumb_func
sub_80298F4:
    push {lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq loc_80299B2
    cmp r0, #0
    beq loc_8029918
    cmp r0, #1
    beq loc_8029924
    cmp r0, #3
    beq loc_8029930
    cmp r0, #4
    beq loc_802993C
    cmp r0, #5
    beq loc_802993C
    cmp r0, #6
    beq loc_8029948
    mov r0, #0
    b locret_802996C
loc_8029918:
    bl sub_802996E
    cmp r0, #0
    beq locret_802996C
    add r1, r0, #0
    b loc_8029952
loc_8029924:
    bl sub_80299B6
    cmp r0, #0
    beq locret_802996C
    add r1, r0, #0
    b loc_8029952
loc_8029930:
    bl sub_80299FA
    cmp r0, #0
    beq locret_802996C
    add r1, r0, #0
    b loc_8029952
loc_802993C:
    bl sub_8029A1E
    cmp r0, #0
    beq locret_802996C
    add r1, r0, #0
    b loc_8029952
loc_8029948:
    bl sub_8029A36
    cmp r0, #0
    beq locret_802996C
    add r1, r0, #0
loc_8029952:
    ldr r0, off_8029C04 // =off_8027BD0 
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    ldrb r0, [r5,#1]
    strb r0, [r5,#0xd]
    mov r0, #0x34 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #1
locret_802996C:
    pop {pc}
.endfunc // sub_80298F4

.func
.thumb_func
sub_802996E:
    push {lr}
    ldrb r0, [r5,#7]
    cmp r0, #0xa
    bne loc_80299B2
    ldrb r0, [r5,#8]
    cmp r0, #0
    bne loc_8029980
    mov r0, #0xc
    b locret_80299B4
loc_8029980:
    cmp r0, #2
    bge loc_8029994
    mov r3, #0x48 
    ldrb r0, [r5,r3]
    cmp r0, #0
    beq loc_8029990
    cmp r0, #2
    bne loc_80299AE
loc_8029990:
    mov r0, #0xb
    b locret_80299B4
loc_8029994:
    mov r3, #0x48 
    add r3, r3, r5
    ldrb r0, [r3]
    ldrb r1, [r3,#1]
    cmp r0, r1
    blt loc_80299A6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
loc_80299A6:
    cmp r0, #0
    bne loc_80299AE
    cmp r1, #2
    beq loc_80299B2
loc_80299AE:
    mov r0, #0x17
    b locret_80299B4
loc_80299B2:
    mov r0, #0
locret_80299B4:
    pop {pc}
.endfunc // sub_802996E

.func
.thumb_func
sub_80299B6:
    push {lr}
    ldrb r0, [r5,#7]
    cmp r0, #0xa
    bne loc_80299F6
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_80299F2
    cmp r0, #1
    beq loc_80299E6
    mov r3, #0x48 
    ldrb r0, [r5,r3]
    add r3, #1
    ldrb r1, [r5,r3]
    cmp r0, #0
    bne loc_80299DA
    cmp r1, #1
    beq loc_80299F6
    b loc_80299EE
loc_80299DA:
    cmp r0, #1
    bne loc_80299F2
    cmp r1, #0
    bne loc_80299F2
    mov r0, #9
    b locret_80299F8
loc_80299E6:
    mov r3, #0x48 
    ldrb r0, [r5,r3]
    cmp r0, #0
    bne loc_80299F2
loc_80299EE:
    mov r0, #0xd
    b locret_80299F8
loc_80299F2:
    mov r0, #8
    b locret_80299F8
loc_80299F6:
    mov r0, #0
locret_80299F8:
    pop {pc}
.endfunc // sub_80299B6

.func
.thumb_func
sub_80299FA:
    push {lr}
    ldrb r0, [r5,#7]
    cmp r0, #0xa
    beq loc_8029A10
    cmp r0, #0xb
    beq loc_8029A1A
    ldrb r0, [r5,#0x17]
    tst r0, r0
    bne loc_8029A1A
    mov r0, #0x24 
    b locret_8029A1C
loc_8029A10:
    ldrb r0, [r5,#0x17]
    tst r0, r0
    bne loc_8029A1A
    mov r0, #0x25 
    b locret_8029A1C
loc_8029A1A:
    mov r0, #0
locret_8029A1C:
    pop {pc}
.endfunc // sub_80299FA

.func
.thumb_func
sub_8029A1E:
    push {lr}
    ldrb r0, [r5,#7]
    cmp r0, #0xb
    bne loc_8029A32
    bl sub_802A564
    tst r3, r3
    bne loc_8029A32
    mov r0, #0x26 
    b locret_8029A34
loc_8029A32:
    mov r0, #0
locret_8029A34:
    pop {pc}
.endfunc // sub_8029A1E

.func
.thumb_func
sub_8029A36:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#7]
    cmp r0, #1
    bne loc_8029A52
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne loc_8029A52
    ldrb r0, [r5,#1]
    cmp r0, #0x54 
    beq loc_8029A52
    mov r0, #4
    b locret_8029A54
loc_8029A52:
    mov r0, #0
locret_8029A54:
    pop {pc}
.endfunc // sub_8029A36

.func
.thumb_func
sub_8029A56:
    push {lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq locret_8029AA8
    cmp r0, #0
    beq loc_8029A6C
    cmp r0, #1
    beq loc_8029A78
    cmp r0, #3
    beq loc_8029A84
    b locret_8029AA8
loc_8029A6C:
    bl sub_8029AAA
    cmp r0, #0
    beq locret_8029AA8
    add r1, r0, #0
    b loc_8029A90
loc_8029A78:
    bl sub_8029ADA
    cmp r0, #0
    beq locret_8029AA8
    add r1, r0, #0
    b loc_8029A90
loc_8029A84:
    bl sub_8029B16
    cmp r0, #0
    beq locret_8029AA8
    add r1, r0, #0
    b loc_8029A90
loc_8029A90:
    ldr r0, off_8029C04 // =off_8027BD0 
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    ldrb r0, [r5,#1]
    strb r0, [r5,#0xd]
    mov r0, #0x34 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_8029AA8:
    pop {pc}
.endfunc // sub_8029A56

.func
.thumb_func
sub_8029AAA:
    push {lr}
    ldrb r0, [r5,#7]
    cmp r0, #0
    beq loc_8029AC4
    cmp r0, #2
    beq loc_8029AC4
    cmp r0, #0xa
    beq loc_8029AD2
    ldrb r0, [r5,#8]
    cmp r0, #2
    bgt loc_8029AD6
    mov r0, #0x16
    b locret_8029AD8
loc_8029AC4:
    ldrb r0, [r5,#8]
    cmp r0, #1
    bne loc_8029ACE
    mov r0, #9
    b locret_8029AD8
loc_8029ACE:
    mov r0, #0xe
    b locret_8029AD8
loc_8029AD2:
    mov r0, #0x10
    b locret_8029AD8
loc_8029AD6:
    mov r0, #0
locret_8029AD8:
    pop {pc}
.endfunc // sub_8029AAA

.func
.thumb_func
sub_8029ADA:
    push {lr}
    ldrb r0, [r5,#7]
    cmp r0, #0
    beq loc_8029AF4
    cmp r0, #1
    beq loc_8029AFE
    cmp r0, #0xa
    beq loc_8029B0E
    ldrb r0, [r5,#8]
    cmp r0, #2
    bge loc_8029B12
    mov r0, #7
    b locret_8029B14
loc_8029AF4:
    ldrb r0, [r5,#8]
    cmp r0, #1
    bne loc_8029B12
    mov r0, #5
    b locret_8029B14
loc_8029AFE:
    ldrb r0, [r5,#8]
    cmp r0, #2
    blt loc_8029B0A
    bne loc_8029B12
    mov r0, #0xa
    b locret_8029B14
loc_8029B0A:
    mov r0, #6
    b locret_8029B14
loc_8029B0E:
    mov r0, #0xf
    b locret_8029B14
loc_8029B12:
    mov r0, #0
locret_8029B14:
    pop {pc}
.endfunc // sub_8029ADA

.func
.thumb_func
sub_8029B16:
    push {lr}
    mov r0, #0
    pop {pc}
.endfunc // sub_8029B16

.func
.thumb_func
sub_8029B1C:
    push {lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #0xff
    beq loc_8029BA8
    cmp r0, #0
    beq loc_8029B3C
    cmp r0, #1
    beq loc_8029B48
    cmp r0, #3
    beq loc_8029B54
    cmp r0, #4
    beq loc_8029B54
    cmp r0, #6
    beq loc_8029B60
    mov r0, #0
    b locret_8029B84
loc_8029B3C:
    bl sub_8029B86
    cmp r0, #0
    beq locret_8029B84
    add r1, r0, #0
    b loc_8029B6A
loc_8029B48:
    bl sub_8029BAC
    cmp r0, #0
    beq locret_8029B84
    add r1, r0, #0
    b loc_8029B6A
loc_8029B54:
    bl sub_8029BD6
    cmp r0, #0
    beq locret_8029B84
    add r1, r0, #0
    b loc_8029B6A
loc_8029B60:
    bl sub_8029BE6
    cmp r0, #0
    beq locret_8029B84
    add r1, r0, #0
loc_8029B6A:
    ldr r0, off_8029C04 // =off_8027BD0 
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    ldrb r0, [r5,#1]
    strb r0, [r5,#0xd]
    mov r0, #0x34 
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #1
locret_8029B84:
    pop {pc}
.endfunc // sub_8029B1C

.func
.thumb_func
sub_8029B86:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_8029BA8
    cmp r0, #2
    bgt loc_8029BA8
    mov r3, #0x47 
    add r3, r3, r0
    ldrb r3, [r5,r3]
    cmp r3, #0
    beq loc_8029BA0
    cmp r3, #2
    bne loc_8029BA8
loc_8029BA0:
    mov r1, #5
    mul r0, r1
    add r0, #5
    b locret_8029BAA
loc_8029BA8:
    mov r0, #0
locret_8029BAA:
    pop {pc}
.endfunc // sub_8029B86

.func
.thumb_func
sub_8029BAC:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_8029BD2
    cmp r0, #2
    bgt loc_8029BD2
    mov r3, #0x47 
    add r3, r3, r0
    ldrb r3, [r5,r3]
    cmp r0, #1
    bne loc_8029BCA
    cmp r3, #0
    bne loc_8029BD2
    mov r0, #0xb
    b locret_8029BD4
loc_8029BCA:
    cmp r3, #1
    bne loc_8029BD2
    mov r0, #0xc
    b locret_8029BD4
loc_8029BD2:
    mov r0, #0
locret_8029BD4:
    pop {pc}
.endfunc // sub_8029BAC

.func
.thumb_func
sub_8029BD6:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #1
    bne loc_8029BE2
    mov r0, #0x27 
    b locret_8029BE4
loc_8029BE2:
    mov r0, #0
locret_8029BE4:
    pop {pc}
.endfunc // sub_8029BD6

.func
.thumb_func
sub_8029BE6:
    push {lr}
    ldrb r0, [r5,#8]
    cmp r0, #0
    bne loc_8029BFE
    ldrb r0, [r5,#0x19]
    tst r0, r0
    beq loc_8029BFE
    ldrb r0, [r5,#1]
    cmp r0, #0x54 
    beq loc_8029BFE
    mov r0, #5
    b locret_8029C00
loc_8029BFE:
    mov r0, #0
locret_8029C00:
    pop {pc}
    .balign 4, 0x00
off_8029C04:    .word off_8027BD0
.endfunc // sub_8029BE6

.func
.thumb_func
sub_8029C08:
    push {lr}
    ldrb r0, [r5,#1]
    cmp r0, #0x48 
    beq loc_8029C14
    cmp r0, #0x44 
    bne loc_8029C18
loc_8029C14:
    mov r1, #0
    b loc_8029C22
loc_8029C18:
    mov r1, r10
    ldr r1, [r1,#8]
    ldrh r1, [r1,#0x18]
    cmp r1, #0x67 
    bgt locret_8029C9A
loc_8029C22:
    mov r0, #0x57 
    sub r0, r0, r1
    ldr r1, dword_8029CA4 // =0x1FF 
    and r0, r1
    lsl r0, r0, #0x10
    ldr r1, dword_8029C9C // =0x800001FC 
    add r0, r0, r1
    ldrb r1, [r5,#0xf]
    cmp r1, #2
    blt loc_8029C46
    cmp r1, #6
    bgt loc_8029C46
    sub r0, #1
    cmp r1, #3
    blt loc_8029C46
    cmp r1, #4
    bgt loc_8029C46
    sub r0, #1
loc_8029C46:
    cmp r1, #5
    blt loc_8029C54
    cmp r1, #0xb
    bgt loc_8029C54
    mov r1, #1
    lsl r1, r1, #0x10
    add r0, r0, r1
loc_8029C54:
    cmp r1, #2
    blt loc_8029C62
    cmp r1, #3
    bgt loc_8029C62
    mov r1, #1
    lsl r1, r1, #0x10
    sub r0, r0, r1
loc_8029C62:
    ldrb r1, [r5,#0xe]
    lsl r1, r1, #0x19
    orr r0, r1
    ldr r1, dword_8029CA0 // =0xB782 
    mov r2, #1
    mov r3, #0
    bl sub_8009FF8
    ldrb r0, [r5,#0xf]
    cmp r0, #0
    beq locret_8029C9A
    cmp r0, #0x14
    blt loc_8029C82
    mov r0, #0
    strb r0, [r5,#0xf]
    b locret_8029C9A
loc_8029C82:
    add r1, r0, #1
    strb r1, [r5,#0xf]
    sub r0, #1
    ldr r1, off_8029CA8 // =dword_8029CAC 
    lsl r0, r0, #1
    add r2, r0, #1
    ldrb r2, [r1,r2]
    ldrb r0, [r1,r0]
    add r1, r2, #0
    ldrb r3, [r5,#0xe]
    bl sub_802FE7A
locret_8029C9A:
    pop {pc}
dword_8029C9C:    .word 0x800001FC
dword_8029CA0:    .word 0xB782
dword_8029CA4:    .word 0x1FF
off_8029CA8:    .word dword_8029CAC
dword_8029CAC:    .word 0x3C204000, 0x38603A40, 0x36A03780, 0x36C036B0, 0x38D837D0
    .word 0x3AE839E0, 0x3CF03BEC, 0x3EF83DF4, 0x40FE3FFB, 0x4000
.endfunc // sub_8029C08

.func
.thumb_func
sub_8029CD4:
    push {r4-r6,lr}
    mov r4, #0x89
    lsl r1, r1, #1
    add r4, r4, r1
    mov r1, #0x1e
    lsl r0, r0, #1
    add r0, #3
    mul r0, r1
    add r0, #0x16
    ldr r1, off_8029D30 // =unk_2035000 
    add r1, r1, r0
    ldr r3, off_8029D14 // =dword_8029D18 
    mov r5, #0
loc_8029CEE:
    ldrh r6, [r3,r5]
    add r5, #2
    ldrh r0, [r3,r5]
    add r5, #2
    add r0, r0, r4
    strh r0, [r1,r6]
    cmp r5, #0x10
    bne loc_8029CEE
    cmp r2, #0
    bne locret_8029D12
    // a1
    mov r0, #0
    // a2
    mov r1, #3
    // a3
    mov r2, #3
    ldr r3, dword_8029D28 // =0x203505A 
    mov r4, #0xf
    mov r5, #0xa
    bl drawTiles // (int a1, int a2, int a3) -> void
locret_8029D12:
    pop {r4-r6,pc}
off_8029D14:    .word dword_8029D18
dword_8029D18:    .word 0x90000000, 0x9001001E, 0x94000006, 0x94010024
dword_8029D28:    .word 0x203505A
    .word 0x3FF
off_8029D30:    .word unk_2035000
.endfunc // sub_8029CD4

.func
.thumb_func
sub_8029D34:
    push {r4,r5,lr}
    bl sub_800A97A
    cmp r0, #0
    beq locret_8029D5E
    ldr r0, [r5,#0x40]
    mov r1, #0x1f
    and r0, r1
    cmp r0, #0x1c
    blt loc_8029D4E
    bl sub_8029D80
    b locret_8029D5E
    // a1
loc_8029D4E:
    mov r0, #0xf
    // a2
    mov r1, #4
    // a3
    mov r2, #3
    ldr r3, off_8029D60 // =unk_8029D64 
    mov r4, #7
    mov r5, #2
    bl drawTiles // (int a1, int a2, int a3) -> void
locret_8029D5E:
    pop {r4,r5,pc}
off_8029D60:    .word unk_8029D64
unk_8029D64:    .byte 0x8D
    .byte 0x90
    .byte 0x8E
    .byte 0x90
    .byte 0x8F
    .byte 0x90
    .byte 0x90
    .byte 0x90
    .byte 0x91
    .byte 0x90
    .byte 0x92
    .byte 0x90
    .byte 0x93
    .byte 0x90
    .byte 0x94
    .byte 0x90
    .byte 0x95
    .byte 0x90
    .byte 0x96
    .byte 0x90
    .byte 0x97
    .byte 0x90
    .byte 0x98
    .byte 0x90
    .byte 0x99
    .byte 0x90
    .byte 0x9A
    .byte 0x90
.endfunc // sub_8029D34

.func
.thumb_func
sub_8029D80:
    push {r4,r5,lr}
    mov r0, #0xf
    mov r1, #4
    mov r2, #3
    mov r3, #0
    mov r4, #7
    mov r5, #2
    bl sub_80018D0
.endfunc // sub_8029D80

    pop {r4,r5,pc}
.func
.thumb_func
sub_8029D94:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    mov r0, #0
    cmp r2, #2
    blt loc_8029DA2
    mov r0, #5
loc_8029DA2:
    add r0, r0, r1
    ldr r1, off_8029DDC // =0x240 
    mul r0, r1
    ldr r1, off_8029DD8 // =dword_86E7DCC 
    add r0, r0, r1
    ldr r1, off_8029DDC // =0x240 
    add r2, r6, #0
    mul r1, r2
    ldr r2, dword_8029DE0 // =0x600A720 
    add r1, r1, r2
    ldr r2, off_8029DDC // =0x240 
    bl loc_8000AC8
.endfunc // sub_8029D94

    mov r0, #1
    mov r1, #1
    lsl r6, r6, #1
    add r1, r1, r6
    mov r2, #3
    ldr r3, off_8029DE4 // =unk_8029DF8 
    mov r4, #0x12
    mul r4, r6
    add r3, r3, r4
    mov r4, #9
    mov r5, #2
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r4-r7,pc}
off_8029DD8:    .word dword_86E7DCC
off_8029DDC:    .word 0x240
dword_8029DE0:    .word 0x600A720
off_8029DE4:    .word unk_8029DF8
    .word unk_8029E1C
    .word unk_8029E40
    .word unk_8029E64
    .word unk_8029E88
unk_8029DF8:    .byte 0x39 
    .byte 0xA1
    .byte 0x3A 
    .byte 0xA1
    .byte 0x3B 
    .byte 0xA1
    .byte 0x3C 
    .byte 0xA1
    .byte 0x3D 
    .byte 0xA1
    .byte 0x3E 
    .byte 0xA1
    .byte 0x3F 
    .byte 0xA1
    .byte 0x40 
    .byte 0xA1
    .byte 0x41 
    .byte 0xA1
    .byte 0x42 
    .byte 0xA1
    .byte 0x43 
    .byte 0xA1
    .byte 0x44 
    .byte 0xA1
    .byte 0x45 
    .byte 0xA1
    .byte 0x46 
    .byte 0xA1
    .byte 0x47 
    .byte 0xA1
    .byte 0x48 
    .byte 0xA1
    .byte 0x49 
    .byte 0xA1
    .byte 0x4A 
    .byte 0xA1
unk_8029E1C:    .byte 0x4B 
    .byte 0xA1
    .byte 0x4C 
    .byte 0xA1
    .byte 0x4D 
    .byte 0xA1
    .byte 0x4E 
    .byte 0xA1
    .byte 0x4F 
    .byte 0xA1
    .byte 0x50 
    .byte 0xA1
    .byte 0x51 
    .byte 0xA1
    .byte 0x52 
    .byte 0xA1
    .byte 0x53 
    .byte 0xA1
    .byte 0x54 
    .byte 0xA1
    .byte 0x55 
    .byte 0xA1
    .byte 0x56 
    .byte 0xA1
    .byte 0x57 
    .byte 0xA1
    .byte 0x58 
    .byte 0xA1
    .byte 0x59 
    .byte 0xA1
    .byte 0x5A 
    .byte 0xA1
    .byte 0x5B 
    .byte 0xA1
    .byte 0x5C 
    .byte 0xA1
unk_8029E40:    .byte 0x5D 
    .byte 0xA1
    .byte 0x5E 
    .byte 0xA1
    .byte 0x5F 
    .byte 0xA1
    .byte 0x60 
    .byte 0xA1
    .byte 0x61 
    .byte 0xA1
    .byte 0x62 
    .byte 0xA1
    .byte 0x63 
    .byte 0xA1
    .byte 0x64 
    .byte 0xA1
    .byte 0x65 
    .byte 0xA1
    .byte 0x66 
    .byte 0xA1
    .byte 0x67 
    .byte 0xA1
    .byte 0x68 
    .byte 0xA1
    .byte 0x69 
    .byte 0xA1
    .byte 0x6A 
    .byte 0xA1
    .byte 0x6B 
    .byte 0xA1
    .byte 0x6C 
    .byte 0xA1
    .byte 0x6D 
    .byte 0xA1
    .byte 0x6E 
    .byte 0xA1
unk_8029E64:    .byte 0x6F 
    .byte 0xA1
    .byte 0x70 
    .byte 0xA1
    .byte 0x71 
    .byte 0xA1
    .byte 0x72 
    .byte 0xA1
    .byte 0x73 
    .byte 0xA1
    .byte 0x74 
    .byte 0xA1
    .byte 0x75 
    .byte 0xA1
    .byte 0x76 
    .byte 0xA1
    .byte 0x77 
    .byte 0xA1
    .byte 0x78 
    .byte 0xA1
    .byte 0x79 
    .byte 0xA1
    .byte 0x7A 
    .byte 0xA1
    .byte 0x7B 
    .byte 0xA1
    .byte 0x7C 
    .byte 0xA1
    .byte 0x7D 
    .byte 0xA1
    .byte 0x7E 
    .byte 0xA1
    .byte 0x7F 
    .byte 0xA1
    .byte 0x80
    .byte 0xA1
unk_8029E88:    .byte 0x81
    .byte 0xA1
    .byte 0x82
    .byte 0xA1
    .byte 0x83
    .byte 0xA1
    .byte 0x84
    .byte 0xA1
    .byte 0x85
    .byte 0xA1
    .byte 0x86
    .byte 0xA1
    .byte 0x87
    .byte 0xA1
    .byte 0x88
    .byte 0xA1
    .byte 0x89
    .byte 0xA1
    .byte 0x8A
    .byte 0xA1
    .byte 0x8B
    .byte 0xA1
    .byte 0x8C
    .byte 0xA1
    .byte 0x8D
    .byte 0xA1
    .byte 0x8E
    .byte 0xA1
    .byte 0x8F
    .byte 0xA1
    .byte 0x90
    .byte 0xA1
    .byte 0x91
    .byte 0xA1
    .byte 0x92
    .byte 0xA1
.func
.thumb_func
sub_8029EAC:
    push {lr}
    mov r1, #0x20 
    mul r0, r1
    ldr r1, off_8029EC0 // =dword_86E944C 
    add r0, r0, r1
    ldr r1, off_8029EC4 // =unk_3001AA0 
    mov r2, #0x20 
    bl loc_8000AC8
.endfunc // sub_8029EAC

    pop {pc}
off_8029EC0:    .word dword_86E944C
off_8029EC4:    .word unk_3001AA0
.func
.thumb_func
sub_8029EC8:
    push {r4,r6,lr}
    mov r4, #0
    mov r6, #0
loc_8029ECE:
    add r0, r4, #0
    lsl r0, r0, #2
    ldr r1, off_8029F48 // =dword_8029F4C 
    ldr r0, [r1,r0]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_8029EEE
    ldr r3, off_8029F6C // =dword_20349A0 
    ldr r3, [r3]
    mov r0, #1
    lsl r0, r4
    lsl r0, r0, #5
    and r3, r0
    bne loc_8029EEE
    add r6, #1
loc_8029EEE:
    add r4, #1
    cmp r4, #5
    blt loc_8029ECE
    add r0, r6, #0
    pop {r4,r6,pc}
.endfunc // sub_8029EC8

.func
.thumb_func
sub_8029EF8:
    push {r4-r6,lr}
    mov r4, #0
    mov r6, #0
loc_8029EFE:
    add r0, r4, #0
    lsl r0, r0, #2
    ldr r1, off_8029F48 // =dword_8029F4C 
    ldr r0, [r1,r0]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_8029F3C
    ldr r3, off_8029F6C // =dword_20349A0 
    ldr r3, [r3]
    mov r0, #1
    lsl r0, r4
    lsl r0, r0, #5
    and r3, r0
    bne loc_8029F3C
    mov r0, #0
    mov r1, #0x17
    bl sub_80137B6
    ldr r1, dword_8029F68 // =0x6 
    add r1, r1, r4
    cmp r0, r1
    beq loc_8029F3C
    ldr r2, off_8029F60 // =0x50 
    add r2, r2, r6
    strb r4, [r5,r2]
    ldr r2, dword_8029F64 // =0x55 
    add r2, r2, r6
    mov r3, #0
    strb r3, [r5,r2]
    add r6, #1
loc_8029F3C:
    add r4, #1
    cmp r4, #5
    blt loc_8029EFE
    add r0, r6, #0
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8029F48:    .word dword_8029F4C
dword_8029F4C:    .word 0xE7
    .word 0xE8
    .word 0xE9
    .word 0xEA
    .word 0xEB
off_8029F60:    .word 0x50
dword_8029F64:    .word 0x55
dword_8029F68:    .word 0x6
off_8029F6C:    .word dword_20349A0
.endfunc // sub_8029EF8

.func
.thumb_func
sub_8029F70:
    push {r4,lr}
    mov r4, #0
    bl sub_802D234
    cmp r0, #8
    beq loc_8029FAA
    cmp r0, #0
    beq loc_8029F88
    cmp r0, #0xa
    beq loc_8029F88
    cmp r0, #0xb
    bne loc_8029FAC
loc_8029F88:
    bl get_802D246 // () -> int
    ldr r1, dword_8029FB0 // =0x200000 
    tst r0, r1
    bne loc_8029FAC
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8029FA4
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    beq loc_8029FAA
    b loc_8029FAC
loc_8029FA4:
    bl sub_802E09A
    bne loc_8029FAC
loc_8029FAA:
    mov r4, #1
loc_8029FAC:
    add r0, r4, #0
    pop {r4,pc}
dword_8029FB0:    .word 0x200000
.endfunc // sub_8029F70

.func
.thumb_func
sub_8029FB4:
    push {r4,lr}
    mov r4, #0
    bl sub_802D234
    cmp r0, #5
    beq loc_8029FEA
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    bne loc_8029FEC
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8029FEC
    bl sub_802E09A
    bne loc_8029FEC
    bl get_802D246 // () -> int
    ldr r1, dword_8029FF0 // =0x200000 
    tst r0, r1
    bne loc_8029FEC
    mov r0, #0
    mov r1, #0xe0
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8029FEC
loc_8029FEA:
    mov r4, #1
loc_8029FEC:
    add r0, r4, #0
    pop {r4,pc}
dword_8029FF0:    .word 0x200000
.endfunc // sub_8029FB4

.func
.thumb_func
// (int a1) -> bool
chipIDIs13f_8029FF4:
    push {r1-r7,lr}
    mov r3, #0
    ldr r1, off_802A028 // =dword_802A02C 
    ldr r2, [r1]
    cmp r0, r2
    beq loc_802A006
    ldr r2, [r1,#0x4] // (dword_802A030 - 0x802a02c)
    cmp r0, r2
    bne loc_802A008
loc_802A006:
    mov r3, #1
loc_802A008:
    add r0, r3, #0
    pop {r1-r7,pc}
.endfunc // chipIDIs13f_8029FF4

.func
.thumb_func
sub_802A00C:
    push {r1-r7,lr}
    mov r3, #0
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    ldr r1, off_802A028 // =dword_802A02C 
    ldr r2, [r1]
    cmp r0, r2
    beq loc_802A022
    ldr r2, [r1,#0x4] // (dword_802A030 - 0x802a02c)
    cmp r0, r2
    bne loc_802A024
loc_802A022:
    mov r3, #1
loc_802A024:
    add r0, r3, #0
    pop {r1-r7,pc}
off_802A028:    .word dword_802A02C
dword_802A02C:    .word 0x13F
dword_802A030:    .word 0x13F
.endfunc // sub_802A00C

.func
.thumb_func
sub_802A034:
    push {r1-r7,lr}
    ldr r0, dword_802A03C // =0x13F 
    pop {r1-r7,pc}
    .balign 4, 0x00
dword_802A03C:    .word 0x13F
.endfunc // sub_802A034

.func
.thumb_func
sub_802A040:
    push {r4,r6,r7,lr}
    ldr r1, dword_802A084 // =0xC 
    add r6, r0, r1
    tst r0, r0
    bne loc_802A072
    push {r5}
    ldr r5, off_802A114 // =byte_2035280 
    ldr r0, [r5,#0x48] // (dword_20352C8 - 0x2035280)
    ldrb r0, [r0,#0x16]
    ldrb r1, [r5,#0x17] // (byte_2035297 - 0x2035280)
    cmp r1, #0
    beq loc_802A064
    ldrb r1, [r5,#0x16] // (byte_2035296 - 0x2035280)
    cmp r1, #0
    bne loc_802A064
    bl sub_8015B54
    b loc_802A068
loc_802A064:
    bl sub_8015B5C
loc_802A068:
    pop {r5}
    cmp r1, #0
    beq loc_802A072
    ldr r2, dword_802A0E4 // =0xC 
    add r6, r1, r2
loc_802A072:
    push {r5}
    ldr r5, off_802A114 // =byte_2035280 
    add r0, r6, #0
    bl sub_801E660
    mov r2, #0x4c // (byte_20352CC - 0x2035280)
    strb r0, [r5,r2]
    pop {r5}
    pop {r4,r6,r7,pc}
dword_802A084:    .word 0xC
.endfunc // sub_802A040

.func
.thumb_func
sub_802A088:
    push {r4,r6,r7,lr}
    ldr r1, dword_802A0E0 // =0x6 
    add r6, r0, r1
    push {r5}
    ldr r5, off_802A114 // =byte_2035280 
    ldr r0, [r5,#0x48] // (dword_20352C8 - 0x2035280)
    ldrb r0, [r0,#0x16]
    ldrb r1, [r5,#0x17] // (byte_2035297 - 0x2035280)
    cmp r1, #0
    beq loc_802A0A8
    ldrb r1, [r5,#0x16] // (byte_2035296 - 0x2035280)
    cmp r1, #0
    bne loc_802A0A8
    bl sub_8015B54
    b loc_802A0AC
loc_802A0A8:
    bl sub_8015B5C
loc_802A0AC:
    pop {r5}
    cmp r1, #0xb
    blt loc_802A0B6
    ldr r2, dword_802A0E4 // =0xC 
    add r6, r6, r2
loc_802A0B6:
    push {r5}
    ldr r5, off_802A114 // =byte_2035280 
    add r0, r6, #0
    bl sub_801E660
    mov r2, #0x4c // (byte_20352CC - 0x2035280)
    strb r0, [r5,r2]
    pop {r5}
    pop {r4,r6,r7,pc}
.endfunc // sub_802A088

.func
.thumb_func
sub_802A0C8:
    push {lr}
    sub r0, #1
    ldr r1, dword_802A0E8 // =0xD 
    add r0, r0, r1
    push {r5}
    ldr r5, off_802A114 // =byte_2035280 
    bl sub_801E660
    mov r2, #0x4c // (byte_20352CC - 0x2035280)
    strb r0, [r5,r2]
    pop {r5}
    pop {pc}
dword_802A0E0:    .word 0x6
dword_802A0E4:    .word 0xC
dword_802A0E8:    .word 0xD
.endfunc // sub_802A0C8

.func
.thumb_func
sub_802A0EC:
    push {lr}
    ldr r0, off_802A114 // =byte_2035280 
    mov r1, #0
    mov r2, #0x4c // (byte_20352CC - 0x2035280)
    strb r1, [r0,r2]
    pop {pc}
.endfunc // sub_802A0EC

.func
.thumb_func
sub_802A0F8:
    push {lr}
    ldr r0, off_802A114 // =byte_2035280 
    mov r1, #0
    mov r2, #0x4c // (byte_20352CC - 0x2035280)
    ldrb r1, [r0,r2]
    tst r1, r1
    beq loc_802A10C
    ldr r0, dword_802A118 // =0x4000 
    bl sub_801DACC
loc_802A10C:
    bl sub_802A0EC
    pop {pc}
    .balign 4, 0x00
off_802A114:    .word byte_2035280
dword_802A118:    .word 0x4000
.endfunc // sub_802A0F8

.func
.thumb_func
sub_802A11C:
    push {r4,lr}
    ldr r1, off_802A144 // =dword_802A148 
    lsl r0, r0, #2
    ldr r4, [r1,r0]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x32 
    bl sub_80136D8
    add r0, r0, r4
    cmp r0, #9
    ble loc_802A13A
    mov r0, #9
    b locret_802A140
loc_802A13A:
    cmp r0, #0
    bge locret_802A140
    mov r0, #1
locret_802A140:
    pop {r4,pc}
    .balign 4, 0x00
off_802A144:    .word dword_802A148
dword_802A148:    .word 0x1, 0x3, 0x24FFB5D0, 0xF86EF003, 0xD12C2800, 0x79784F17
    .word 0xD02828FF, 0xFCF6F0F6, 0xD02428FF, 0x7C291C06, 0xD0204288, 0xD1042800
    .word 0xF865F003, 0x42082108, 0x7D69D118, 0xD0114288, 0x220189F9, 0x42114082
    .word 0xF003D111, 0x2108F858, 0xD1044208, 0x20001C30, 0xD0082800, 0x7978E006
    .word 0xDA042802, 0x20001C30, 0xD0002800, 0x1C201C34, 0xBDD0, 0x20349A0
    .word 0xB082B580, 0xF003466F, 0x2108F83E, 0xD1184208, 0x1C3821FF, 0x80418001
    .word 0x80C18081, 0xFBDCF7E0, 0x49098838, 0xDB0C4288, 0x42904A08, 0x1A40DC09
    .word 0xDF062106, 0x21013001, 0x4B2C4081, 0x430889D8, 0xB00281D8, 0xBD80
    .word 0x101, 0x142
.endfunc // sub_802A11C

.func
.thumb_func
sub_802A210:
    push {lr}
    ldrb r0, [r5,#0x15]
    cmp r0, #0
    beq locret_802A21E
    ldr r3, off_802A2AC // =dword_20349A0 
    mov r0, #0xff
    strb r0, [r3,#0x5] // (byte_20349A5 - 0x20349a0)
locret_802A21E:
    pop {pc}
.endfunc // sub_802A210

.func
.thumb_func
sub_802A220:
    push {r4,r6,r7,lr}
    mov r4, #0xff
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_802A2A2
    bl get_802D246 // () -> int
    ldr r1, dword_802A2A8 // =0x200000 
    tst r0, r1
    bne loc_802A2A2
    bl sub_802D234
    cmp r0, #0
    beq loc_802A248
    cmp r0, #0xa
    beq loc_802A248
    cmp r0, #0xb
    bne loc_802A2A2
loc_802A248:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x29 
    bl sub_80136CC
    cmp r0, #1
    blt loc_802A25C
    cmp r0, #0xb
    ble loc_802A2A2
loc_802A25C:
    ldr r7, off_802A2AC // =dword_20349A0 
    ldrb r0, [r7,#0x5] // (byte_20349A5 - 0x20349a0)
    cmp r0, #0xff
    beq loc_802A2A2
    bl sub_8120B54
    cmp r0, #0xff
    beq loc_802A2A2
    add r6, r0, #0
    ldrh r1, [r5,#0x3a]
    cmp r0, r1
    beq loc_802A2A2
    ldrh r1, [r7,#0xe] // (word_20349AE - 0x20349a0)
    mov r2, #1
    lsl r2, r0
    tst r1, r2
    bne loc_802A2A2
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    bne loc_802A292
    add r0, r6, #0
    mov r0, #1
    cmp r0, #0
    beq loc_802A2A2
    b loc_802A2A0
loc_802A292:
    ldrb r0, [r7,#0x5] // (byte_20349A5 - 0x20349a0)
    cmp r0, #2
    bge loc_802A2A2
    add r0, r6, #0
    mov r0, #1
    cmp r0, #0
    beq loc_802A2A2
loc_802A2A0:
    add r4, r6, #0
loc_802A2A2:
    add r0, r4, #0
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_802A2A8:    .word 0x200000
off_802A2AC:    .word dword_20349A0
.endfunc // sub_802A220

.func
.thumb_func
sub_802A2B0:
    push {lr}
    ldr r1, off_802A2D4 // =off_802A2D8 
    ldrb r0, [r5,#0x12]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0x14]
    add r0, #1
    mov r1, #0x3f 
    and r0, r1
    strb r0, [r5,#0x14]
    bne locret_802A2D2
    ldrb r0, [r5,#0x12]
    cmp r0, #0
    beq locret_802A2D2
    cmp r0, #3
    beq locret_802A2D2
locret_802A2D2:
    pop {pc}
off_802A2D4:    .word off_802A2D8
off_802A2D8:    .word sub_802A2E8+1
    .word sub_802A30C+1
    .word sub_802A33E+1
    .word sub_802A362+1
.endfunc // sub_802A2B0

.func
.thumb_func
sub_802A2E8:
    push {lr}
    bl sub_802A394
    cmp r0, #0
    beq locret_802A30A
    mov r0, #0x54 
    mov r1, #0xa
    bl engine_setScreeneffect
    mov r0, #0x5c 
    mov r1, #0xa
    bl loc_8006274
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #4
    strb r0, [r5,#0x12]
locret_802A30A:
    pop {pc}
.endfunc // sub_802A2E8

.func
.thumb_func
sub_802A30C:
    push {r4,lr}
    ldrb r4, [r5,#0x13]
    ldr r2, off_802A3E8 // =unk_802A3F4 
    ldrh r2, [r2,r4]
    ldr r1, dword_802A3F0 // =0xFFFF 
    mov r0, #0x1f
    bl sub_8000642
    ldr r2, off_802A3EC // =unk_802A400 
    ldrh r2, [r2,r4]
    ldr r1, dword_802A3F0 // =0xFFFF 
    mov r0, #0x16
    bl sub_8000642
    add r4, #2
    strb r4, [r5,#0x13]
    bl engine_isScreeneffectAnimating
    bl loc_80062FC
    cmp r0, #0
    bne locret_802A33C
    mov r0, #8
    strb r0, [r5,#0x12]
locret_802A33C:
    pop {r4,pc}
.endfunc // sub_802A30C

.func
.thumb_func
sub_802A33E:
    push {lr}
    bl sub_802A394
    cmp r0, #0
    bne locret_802A360
    mov r0, #0x50 
    mov r1, #0xa
    bl engine_setScreeneffect
    mov r0, #0x58 
    mov r1, #0xa
    bl loc_8006274
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0xc
    strb r0, [r5,#0x12]
locret_802A360:
    pop {pc}
.endfunc // sub_802A33E

.func
.thumb_func
sub_802A362:
    push {r4,lr}
    ldrb r4, [r5,#0x13]
    ldr r2, off_802A3EC // =unk_802A400 
    ldrh r2, [r2,r4]
    ldr r1, dword_802A3F0 // =0xFFFF 
    mov r0, #0x1f
    bl sub_8000642
    ldr r2, off_802A3E8 // =unk_802A3F4 
    ldrh r2, [r2,r4]
    ldr r1, dword_802A3F0 // =0xFFFF 
    mov r0, #0x16
    bl sub_8000642
    add r4, #2
    strb r4, [r5,#0x13]
    bl engine_isScreeneffectAnimating
    bl loc_80062FC
    cmp r0, #0
    bne locret_802A392
    mov r0, #0
    strb r0, [r5,#0x12]
locret_802A392:
    pop {r4,pc}
.endfunc // sub_802A362

.func
.thumb_func
sub_802A394:
    push {r4,lr}
    mov r4, #0
    ldrb r0, [r5,#1]
    cmp r0, #0x18
    beq loc_802A3A2
    cmp r0, #4
    bne loc_802A3C8
loc_802A3A2:
    ldrb r0, [r5,#7]
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_802A3C8
    ldr r0, [r0,#8]
    ldrh r0, [r0]
    bl getChipID_802A54E // (int a1) -> int
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrb r0, [r0,#9]
    mov r1, #0x20 
    tst r0, r1
    beq loc_802A3C8
    mov r4, #1
loc_802A3C8:
    add r0, r4, #0
    pop {r4,pc}
.endfunc // sub_802A394

.func
.thumb_func
sub_802A3CC:
    push {lr}
    mov r0, #0x1f
    ldr r1, dword_802A3F0 // =0xFFFF 
    mov r2, #0x80
    add r2, #0x80
    bl sub_8000642
    mov r0, #0x16
    ldr r1, dword_802A3F0 // =0xFFFF 
    mov r2, #0x80
    add r2, #0x80
    bl sub_8000642
    pop {pc}
off_802A3E8:    .word unk_802A3F4
off_802A3EC:    .word unk_802A400
dword_802A3F0:    .word 0xFFFF
unk_802A3F4:    .byte 0
    .byte 1
    .byte 0xE0
    .byte 0
    .byte 0xC0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0x80
    .byte 0
unk_802A400:    .byte 0x80
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0xC0
    .byte 0
    .byte 0xE0
    .byte 0
    .byte 0
    .byte 1
.endfunc // sub_802A3CC

.func
.thumb_func
sub_802A40C:
    push {r4,r6,r7,lr}
    mov r7, #0
    mov r6, r10
    ldr r6, [r6,#0x18]
    bl sub_802D234
    cmp r0, #2
    beq loc_802A42C
    cmp r0, #3
    beq loc_802A42C
    cmp r0, #4
    beq loc_802A42C
    cmp r0, #5
    beq loc_802A42C
    cmp r0, #8
    bne loc_802A430
loc_802A42C:
    mov r0, #5
    b loc_802A498
loc_802A430:
    ldrb r0, [r6,#0xd]
    bl sub_8015B54
    mov r4, #1
    cmp r1, #0xa
    beq loc_802A442
    cmp r1, #0x16
    beq loc_802A442
    mov r4, #0
loc_802A442:
    ldrb r0, [r6,#0xd]
    mov r1, #0xa
    bl sub_80136CC
    ldr r1, off_802A4F8 // =dword_20349A0 
    ldrb r1, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
    add r0, r0, r1
    cmp r0, #8
    ble loc_802A45A
    add r7, r0, #0
    sub r7, #8
    mov r0, #8
loc_802A45A:
    tst r4, r4
    bne loc_802A470
    push {r0}
    bl sub_802A5A0
    tst r0, r0
    pop {r0}
    beq loc_802A470
    mov r0, #0xa
    ldr r7, off_802A4F8 // =dword_20349A0 
    ldrb r7, [r7,#0x11] // (byte_20349B1 - 0x20349a0)
loc_802A470:
    push {r0}
    ldrb r0, [r6,#0xd]
    mov r1, #0x63 
    bl sub_80136CC
    add r1, r0, #0
    pop {r0}
    cmp r1, #0
    beq loc_802A498
    ldrb r2, [r6,#7]
    cmp r2, r1
    blt loc_802A498
    sub r2, r2, r1
    add r2, #1
    sub r7, r7, r2
    bpl loc_802A498
    add r0, r0, r7
    cmp r0, #2
    bge loc_802A498
    mov r0, #2
loc_802A498:
    strb r0, [r5,#6]
    pop {r4,r6,r7,pc}
.endfunc // sub_802A40C

.func
.thumb_func
sub_802A49C:
    push {lr}
    bl sub_802D234
    cmp r0, #2
    beq loc_802A4F0
    cmp r0, #3
    beq loc_802A4F0
    cmp r0, #4
    beq loc_802A4F0
    cmp r0, #5
    beq loc_802A4F0
    cmp r0, #8
    beq loc_802A4F0
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    bne loc_802A4F0
    ldrb r1, [r5,#0x15]
    cmp r0, r1
    bne loc_802A4CE
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8015B54
    b loc_802A4D8
loc_802A4CE:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_8015B5C
loc_802A4D8:
    cmp r1, #5
    beq loc_802A4E0
    cmp r1, #0x11
    bne loc_802A4F0
loc_802A4E0:
    ldr r1, off_802A4F8 // =dword_20349A0 
    ldrb r0, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
    add r0, #1
    cmp r0, #3
    ble loc_802A4EC
    mov r0, #3
loc_802A4EC:
    strb r0, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
    b locret_802A4F6
loc_802A4F0:
    ldr r1, off_802A4F8 // =dword_20349A0 
    mov r0, #0
    strb r0, [r1,#0x11] // (byte_20349B1 - 0x20349a0)
locret_802A4F6:
    pop {pc}
off_802A4F8:    .word dword_20349A0
.endfunc // sub_802A49C

.func
.thumb_func
sub_802A4FC:
    push {r4,r6,r7,lr}
    ldr r0, off_802A534 // =byte_20366C0 
    ldrb r0, [r0]
    cmp r0, #0xff
    beq locret_802A532
    ldr r4, off_802A534 // =byte_20366C0 
    mov r0, #0x32 
    add r4, r4, r0
    mov r6, #0xff
    lsl r6, r6, #8
    add r6, #0xff
    ldr r7, off_802A538 // =dword_20367E0 
loc_802A514:
    ldrh r0, [r4]
    cmp r0, r6
    beq locret_802A532
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrb r0, [r0,#7]
    cmp r0, #2
    bgt loc_802A52E
    ldrb r1, [r7,r0]
    add r1, #1
    strb r1, [r7,r0]
loc_802A52E:
    add r4, #2
    b loc_802A514
locret_802A532:
    pop {r4,r6,r7,pc}
off_802A534:    .word byte_20366C0
off_802A538:    .word dword_20367E0
.endfunc // sub_802A4FC

.func
.thumb_func
sub_802A53C:
    push {r1-r7,lr}
    add r4, r0, #0
    bl sub_800AFBA
    bne loc_802A54A
    add r0, r4, #0
    pop {r1-r7,pc}
loc_802A54A:
    ldr r0, dword_802A560 // =0x3785 
    pop {r1-r7,pc}
.endfunc // sub_802A53C

.func
.thumb_func
// (int a1) -> int
getChipID_802A54E:
    push {r1-r7,lr}
    add r4, r0, #0
    bl sub_800B022 // (int a1) ->
    bne loc_802A55C
    add r0, r4, #0
    pop {r1-r7,pc}
loc_802A55C:
    ldr r0, dword_802A560 // =0x3785 
    pop {r1-r7,pc}
dword_802A560:    .word 0x3785
.endfunc // getChipID_802A54E

.func
.thumb_func
sub_802A564:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    ldrb r1, [r5,#0x15]
    cmp r1, #0
    bne loc_802A578
    bl sub_8015B54
    b locret_802A57C
loc_802A578:
    bl sub_8015B5C
locret_802A57C:
    pop {pc}
.endfunc // sub_802A564

.func
.thumb_func
sub_802A57E:
    push {r4,lr}
    mov r4, #0
    bl sub_802A564
    cmp r0, #5
    beq loc_802A59C
    cmp r0, #1
    bne loc_802A596
    ldr r0, off_802A740 // =dword_20349A0 
    ldrb r0, [r0,#0x10] // (byte_20349B0 - 0x20349a0)
    tst r0, r0
    beq loc_802A59C
loc_802A596:
    cmp r1, #0xb
    bge loc_802A59C
    mov r4, #1
loc_802A59C:
    add r0, r4, #0
    pop {r4,pc}
.endfunc // sub_802A57E

.func
.thumb_func
sub_802A5A0:
    push {r4,lr}
    mov r4, #0
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #8
    beq loc_802A5D6
    bl sub_802D234
    cmp r0, #1
    beq loc_802A5D6
    cmp r0, #6
    beq loc_802A5D6
    cmp r0, #7
    beq loc_802A5D6
    cmp r0, #9
    beq loc_802A5D6
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x61 
    bl sub_80136CC
    cmp r0, #1
    bne loc_802A5D6
    mov r4, #1
loc_802A5D6:
    add r0, r4, #0
    pop {r4,pc}
.endfunc // sub_802A5A0

.func
.thumb_func
sub_802A5DA:
    push {r4,lr}
    mov r4, #0
    mov r0, #8
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0]
    cmp r1, #8
    beq loc_802A616
    bl sub_802D234
    cmp r0, #0
    beq loc_802A604
    cmp r0, #5
    beq loc_802A604
    cmp r0, #8
    beq loc_802A604
    cmp r0, #0xa
    beq loc_802A604
    cmp r0, #0xb
    beq loc_802A604
    b loc_802A616
loc_802A604:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r1, #0x60 
    bl sub_80136CC
    cmp r0, #1
    bne loc_802A616
    mov r4, #1
loc_802A616:
    add r0, r4, #0
    pop {r4,pc}
.endfunc // sub_802A5DA

.func
.thumb_func
sub_802A61A:
    push {r4,r6,lr}
    mov r4, #0
    bl sub_8027D58
    ldrb r1, [r5,#6]
    cmp r0, r1
    bge loc_802A62C
    add r6, r0, #0
    b loc_802A62E
loc_802A62C:
    add r6, r1, #0
loc_802A62E:
    add r0, r4, #0
    bl getLocOfActiveChips_8027E1C // (int a1) -> void*
    ldrb r1, [r0,#7]
    cmp r1, #2
    bne loc_802A63E
    mov r1, #0
    strb r1, [r0,#7]
loc_802A63E:
    add r4, #1
    cmp r4, r6
    blt loc_802A62E
    pop {r4,r6,pc}
.endfunc // sub_802A61A

.func
.thumb_func
sub_802A646:
    push {lr}
    mov r3, r10
    ldr r3, [r3,#0x18]
    mov r0, #0x44 
    ldrb r0, [r3,r0]
    tst r0, r0
    beq locret_802A664
    mov r0, #0x45 
    ldrb r0, [r3,r0]
    ldrb r1, [r5,#6]
    cmp r0, r1
    bge locret_802A664
    mov r0, #0x44 
    mov r1, #0
    strb r1, [r3,r0]
locret_802A664:
    pop {pc}
    .balign 4, 0x00
    .word dword_20364C0
    .word unk_2035000
    .word unk_20365C0
    .word word_203CDB0
dword_802A678:    .word 0x1FF, 0x6009C20, 0x77777777, 0x77777777, 0x77777777
    .word 0x77777777, 0x77777777, 0x77777777, 0x77777777, 0x77777777
    .word 0x77777777, 0x77777777, 0x77777777, 0x77777777, 0x77777777
    .word 0x77777777, 0x77777777, 0x77777777, 0x88888888, 0x88888888
    .word 0x88888888, 0x88888888, 0x88888888, 0x88888888, 0x88888888
    .word 0x88888888, 0x88888888, 0x88888888, 0x88888888, 0x88888888
    .word 0x88888888, 0x88888888, 0x88888888, 0x88888888, 0x11111111
    .word 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111
    .word 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111
    .word 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111
off_802A740:    .word dword_20349A0
off_802A744:    .word dword_86E55BC
    .word 0x6016C80, 0x40, 0x86E55FC, 0x6016F40, 0x100, 0x86E587C
    .word 0x3001A80, 0x20, 0x86E57FC, 0x6017240, 0x80, 0x86B7AE0
    .word 0x6017040, 0x40, 0x86B7AE0, 0x6017080, 0x40, 0x86B7AE0
    .word 0x60170C0, 0x20, 0x86B7AE0, 0x6017120, 0x40, 0x86B7AE0
    .word 0x60171A0, 0x40, 0x86B7AE0, 0x60171E0, 0x40, 0x86B7AE0
    .word 0x6017220, 0x20, 0x0
dword_802A7CC:    .word 0x10A050A
    .word 0x200060A, 0x301070A, 0x402080A, 0xA03090A, 0x60B000A
    .word 0x705010A, 0x806020A, 0x907030B, 0xB08040B, 0x40B01
    .word 0x5090A0B
dword_802A7FC:    .word 0x8030904, 0xA000102
dword_802A804:    .word 0x6070809, 0x70A0B05, 0x1020506, 0x60A0B00, 0xA0B05
    .word 0x8030201, 0x50A0904, 0x9080706, 0xA0B
dword_802A828:    .word 0x9910F90, 0x15932592, 0x1950594, 0x27972796, 0x7990D98
    .word 0x39A, 0xB368B36C, 0xFFFFB364, 0xB373B373, 0xB373B373
    .word 0xB373B373, 0xB372B372, 0xB372B372, 0xB372B372, 0xB3740000
    .byte 0x0, 0x0
.endfunc // sub_802A646

.func
.thumb_func
sub_802A866:
    push {lr}
    bl sub_802B298
    // numWords
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_802B298
    mov r1, #1
    strb r1, [r0,#7]
    pop {pc}
.endfunc // sub_802A866

loc_802A87C:
    push {r5,lr}
    bl sub_802B298
    add r5, r0, #0
    ldr r1, off_802A894 // =off_802A898 
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#4]
    pop {r5,pc}
    .balign 4, 0x00
off_802A894:    .word off_802A898
off_802A898:    .word sub_802A8A4+1
    .word sub_802A974+1
    .word sub_802A934+1
.func
.thumb_func
sub_802A8A4:
    push {lr}
    mov r0, #1
    mov r1, #0x97
    bl sub_802F110
    mov r0, #1
    mov r1, #0xad
    bl sub_802F110
    bl decomp_802B060
    ldr r0, off_802A918 // =unk_2035000 
    ldr r1, dword_802A91C // =0x9070 
    ldr r2, dword_802A920 // =0x6008E00 
    bl sub_802B4D4
    ldr r0, off_802A918 // =unk_2035000 
    ldr r1, dword_802A924 // =0x90D4 
    ldr r2, dword_802A928 // =0x6009A80 
    bl sub_802B51C
    ldr r0, off_802A914 // =unk_2031000 
    bl sub_802B2A0
    strh r0, [r5,#0x1e]
    mov r0, #0
    ldr r1, off_802A90C // =dword_8129180 
    bl sub_8120CC8
    strb r0, [r5,#0xc]
    strb r1, [r5,#0xd]
    mov r0, #0
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x12]
    mvn r0, r0
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    ldr r0, off_802A914 // =unk_2031000 
    ldr r1, off_802A92C // =unk_2032000 
    bl sub_802B358
.endfunc // sub_802A8A4

    ldr r0, off_802A930 // =unk_2030E60 
    ldr r1, off_802A914 // =unk_2031000 
    bl sub_802B438
    mov r0, #4
    str r0, [r5]
    ldr r0, dword_802A910 // =0x20000 
    bl sub_801DACC
    pop {pc}
    .balign 4, 0x00
off_802A90C:    .word dword_8129180
dword_802A910:    .word 0x20000
off_802A914:    .word unk_2031000
off_802A918:    .word unk_2035000
dword_802A91C:    .word 0x9070
dword_802A920:    .word 0x6008E00
dword_802A924:    .word 0x90D4
dword_802A928:    .word 0x6009A80
off_802A92C:    .word unk_2032000
off_802A930:    .word unk_2030E60
.func
.thumb_func
sub_802A934:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,#4]
    strb r2, [r1,#0x12]
    mov r0, #0x80
    add r0, r0, r1
    add r1, #0xd0
    lsl r2, r2, #2
    beq loc_802A966
    bl CpuSet_800093C
    ldr r0, dword_802A96C // =0x820080 
    bl sub_801DA48
    ldr r0, dword_802A96C // =0x820080 
    bl sub_801BECC
    ldr r0, dword_802A970 // =0x4 
    bl sub_801DACC
    mov r1, r10
    ldr r1, [r1,#8]
    mov r0, #0
    strh r0, [r1,#0x18]
loc_802A966:
    mov r0, #1
    strb r0, [r5,#4]
    pop {pc}
dword_802A96C:    .word 0x820080
dword_802A970:    .word 0x4
.endfunc // sub_802A934

.func
.thumb_func
sub_802A974:
    push {r5,lr}
    ldr r1, off_802A984 // =off_802A988 
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
    .balign 4, 0x00
off_802A984:    .word off_802A988
off_802A988:    .word sub_802A9B4+1
    .word sub_802A9D0+1
    .word sub_802ABD0+1
    .word sub_802ABF4+1
    .word sub_802AD84+1
    .word sub_802AE14+1
    .word sub_802AE5C+1
    .word sub_802AE84+1
    .word sub_802AEB8+1
    .word sub_802AED8+1
    .word sub_802ADFC+1
.endfunc // sub_802A974

.func
.thumb_func
sub_802A9B4:
    push {lr}
    bl sub_802AF6C
    bne locret_802A9CC
    mov r0, #4
    strb r0, [r5,#1]
    mov r1, #0
    ldrb r0, [r5,#0x10]
    cmp r0, #0xff
    beq loc_802A9CA
    mov r1, #1
loc_802A9CA:
    strb r1, [r5,#2]
locret_802A9CC:
    pop {pc}
    .byte 0, 0
.endfunc // sub_802A9B4

.func
.thumb_func
sub_802A9D0:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    ldrh r0, [r5,#0x20]
    strh r0, [r5,#0x22]
    ldrb r0, [r5,#2]
    tst r0, r0
    beq loc_802AA7C
    bl sub_802B0EC
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #1
    tst r0, r1
    beq loc_802AA0E
    ldrb r0, [r5,#0x10]
    cmp r0, #0xff
    bne loc_802A9FE
    mov r0, #0x69 
    bl sound_play
    b loc_802AB98
loc_802A9FE:
    mov r0, #0x82
    bl sound_play
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    b loc_802AA54
loc_802AA0E:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #2
    tst r0, r1
    beq loc_802AA54
    ldrb r0, [r5,#0x11]
    cmp r0, #0xff
    beq loc_802AA2A
    bl sub_802B5B0
    mov r0, #0xff
    strb r0, [r5,#0x11]
    b loc_802AA38
loc_802AA2A:
    ldrb r0, [r5,#0x10]
    cmp r0, #0xff
    beq loc_802AA38
    bl sub_802B5B0
    mov r0, #0xff
    strb r0, [r5,#0x10]
loc_802AA38:
    mov r0, #0
    strb r0, [r5,#2]
    ldr r0, off_802ABB4 // =unk_2031000 
    ldr r1, off_802ABB8 // =unk_2032000 
    bl sub_802B358
    ldr r0, off_802ABCC // =unk_2030E60 
    ldr r1, off_802ABB4 // =unk_2031000 
    bl sub_802B438
    mov r0, #0x83
    bl sound_play
    b loc_802AB98
loc_802AA54:
    ldrb r0, [r5,#0x10]
    cmp r0, #0xff
    beq loc_802AA62
    ldrb r0, [r5,#0x11]
    cmp r0, #0xff
    beq loc_802AA62
    b loc_802AB98
loc_802AA62:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x20 
    tst r0, r1
    bne loc_802AA70
    b loc_802AB98
loc_802AA70:
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #0x7f
    bl sound_play
    b loc_802AB98
loc_802AA7C:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    ldr r1, off_802ABC8 // =0x200 
    tst r0, r1
    beq loc_802AA9A
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0
    bl sub_802B5EC
    mov r0, #0x7b 
    bl sound_play
    b loc_802AB98
loc_802AA9A:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    ldr r1, off_802ABC4 // =0x100 
    tst r0, r1
    beq loc_802AAC8
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    lsl r0, r0, #1
    ldr r1, off_802ABB4 // =unk_2031000 
    ldrh r0, [r1,r0]
    ldr r1, dword_802ABBC // =0xFFFF 
    cmp r0, r1
    beq loc_802AB98
    bl sub_802B5DC
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #0x9c
    bl sound_play
    b loc_802AB98
loc_802AAC8:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x10
    tst r0, r1
    beq loc_802AAE0
    mov r0, #4
    strb r0, [r5,#2]
    mov r0, #0x7f
    bl sound_play
    b loc_802AB98
loc_802AAE0:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #5
    mov r2, #0
    mov r3, #0
    bl sub_811F7F8
    tst r0, r0
    beq loc_802AB20
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    cmp r0, r1
    bne loc_802AB0E
    ldrh r0, [r5,#0x20]
    ldrh r1, [r5,#0x22]
    cmp r0, r1
    beq loc_802AB98
    ldr r0, off_802ABCC // =unk_2030E60 
    ldr r1, off_802ABB4 // =unk_2031000 
    bl sub_802B438
    b loc_802AB98
loc_802AB0E:
    ldr r0, off_802ABB4 // =unk_2031000 
    ldr r1, off_802ABB8 // =unk_2032000 
    bl sub_802B358
    ldr r0, off_802ABCC // =unk_2030E60 
    ldr r1, off_802ABB4 // =unk_2031000 
    bl sub_802B438
    b loc_802AB98
loc_802AB20:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #1
    tst r0, r1
    beq loc_802AB94
    mov r3, #0x10
    ldrb r0, [r5,#0x10]
    cmp r0, #0xff
    beq loc_802AB36
    mov r3, #0x11
loc_802AB36:
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r7, off_802ABB4 // =unk_2031000 
    lsl r4, r0, #1
    ldrh r6, [r7,r4]
    ldr r2, dword_802ABBC // =0xFFFF 
    cmp r6, r2
    beq loc_802AB64
    ldr r7, off_802ABC0 // =dword_802B5FC 
    lsl r4, r6, #3
    add r4, #4
    ldrh r6, [r7,r4]
    ldrh r4, [r5,#0x12]
    add r4, r4, r6
    cmp r4, #0x32 
    bgt loc_802AB64
    ldrb r1, [r5,#0x10]
    cmp r0, r1
    beq loc_802AB64
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    bne loc_802AB6C
loc_802AB64:
    mov r0, #0x69 
    bl sound_play
    b loc_802AB98
loc_802AB6C:
    strb r0, [r5,r3]
    ldrb r0, [r5,#0x12]
    add r0, r0, r6
    strb r0, [r5,#0x12]
    cmp r3, #0x11
    bne loc_802AB7C
    mov r0, #4
    strb r0, [r5,#2]
loc_802AB7C:
    ldr r0, off_802ABB4 // =unk_2031000 
    ldr r1, off_802ABB8 // =unk_2032000 
    bl sub_802B358
    ldr r0, off_802ABCC // =unk_2030E60 
    ldr r1, off_802ABB4 // =unk_2031000 
    bl sub_802B438
    mov r0, #0x81
    bl sound_play
    b loc_802AB98
loc_802AB94:
    bl sub_802B560
loc_802AB98:
    mov r0, #0x10
    bl sub_802B15C
    mov r0, #0x11
    bl sub_802B15C
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802ABAE
    bl sub_802B1E4
loc_802ABAE:
    bl sub_802B270
    pop {r4-r7,pc}
off_802ABB4:    .word unk_2031000
off_802ABB8:    .word unk_2032000
dword_802ABBC:    .word 0xFFFF
off_802ABC0:    .word dword_802B5FC
off_802ABC4:    .word 0x100
off_802ABC8:    .word 0x200
off_802ABCC:    .word unk_2030E60
.endfunc // sub_802A9D0

.func
.thumb_func
sub_802ABD0:
    push {lr}
    bl sub_802AFD4
.endfunc // sub_802ABD0

    bne locret_802ABEC
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    strb r0, [r5,#3]
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #1
    ldr r1, off_802ABF0 // =unk_2031000 
    ldrh r0, [r1,r0]
    strb r0, [r5,#7]
locret_802ABEC:
    pop {pc}
    .byte 0, 0
off_802ABF0:    .word unk_2031000
.func
.thumb_func
sub_802ABF4:
    push {lr}
    ldr r1, off_802AC04 // =off_802AC08 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802AC04:    .word off_802AC08
off_802AC08:    .word sub_802AC10+1
    .word sub_802AC6E+1
.endfunc // sub_802ABF4

.func
.thumb_func
sub_802AC10:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0
    bne loc_802AC4E
    mov r0, #1
    strb r0, [r5,#3]
    ldrb r0, [r5,#5]
    cmp r0, #2
    blt loc_802AC2C
    mov r0, #0
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_802AC6C
loc_802AC2C:
    ldrb r0, [r5,#7]
    sub r0, #1
    mov r1, #6
    mul r0, r1
    add r0, #1
    bl sub_802AEEA
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    add r2, #0x30 
    str r0, [r5,r2]
    ldrb r2, [r5,#5]
    add r2, #0xa
    strb r1, [r5,r2]
    mov r0, #2
    strb r0, [r5,#8]
    strb r0, [r5,#9]
loc_802AC4E:
    bl sub_802AF38
    ldrb r1, [r0,#9]
    cmp r1, #1
    bne locret_802AC6C
    mov r1, #0
    strh r1, [r0,#0x12]
    bl sub_802AF28
    mov r0, #0x28 
    strb r0, [r5,#1]
    mov r0, #4
    strh r0, [r5,#2]
    mov r0, #8
    str r0, [r5,#0x3c]
locret_802AC6C:
    pop {pc}
.endfunc // sub_802AC10

.func
.thumb_func
sub_802AC6E:
    push {lr}
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r0, [r3,#4]
    mov r1, #0x40 
    tst r0, r1
    beq loc_802AC8C
    ldrb r1, [r5,#9]
    cmp r1, #1
    ble loc_802AC8C
    sub r1, #1
    strb r1, [r5,#9]
    bl sub_802B5D0
    b loc_802AD48
loc_802AC8C:
    mov r1, #0x80
    tst r0, r1
    beq loc_802ACA2
    ldrb r1, [r5,#9]
    cmp r1, #3
    bge loc_802ACA2
    add r1, #1
    strb r1, [r5,#9]
    bl sub_802B5D0
    b loc_802AD48
loc_802ACA2:
    mov r1, #0x20 
    tst r0, r1
    beq loc_802ACB8
    ldrb r1, [r5,#8]
    cmp r1, #1
    ble loc_802ACB8
    sub r1, #1
    strb r1, [r5,#8]
    bl sub_802B5D0
    b loc_802AD48
loc_802ACB8:
    mov r1, #0x10
    tst r0, r1
    beq loc_802ACCE
    ldrb r1, [r5,#8]
    cmp r1, #3
    bge loc_802ACCE
    add r1, #1
    strb r1, [r5,#8]
    bl sub_802B5D0
    b loc_802AD48
loc_802ACCE:
    mov r1, #1
    tst r0, r1
    beq loc_802AD34
    ldrb r0, [r5,#8]
    ldrb r1, [r5,#9]
    bl object_getPanelParameters
    ldr r1, dword_802AD6C // =0xF800000 
    tst r0, r1
    bne loc_802ACEA
    ldr r1, dword_802AD70 // =0x10 
    and r0, r1
    cmp r0, r1
    beq loc_802ACF2
loc_802ACEA:
    mov r0, #0x69 
    bl sound_play
    b loc_802AD48
loc_802ACF2:
    bl sub_802AF38
    bl sub_802AF28
    mov r0, #0x67 
    bl sound_play
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    cmp r0, #2
    blt loc_802AD1C
loc_802AD0A:
    ldr r0, off_802AD78 // =aTuDhr 
    mov r1, #0x28 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b loc_802AD48
loc_802AD1C:
    ldrb r0, [r5,#0x11]
    cmp r0, #0xff
    beq loc_802AD0A
    lsl r0, r0, #1
    ldr r1, off_802AD74 // =unk_2031000 
    ldrh r0, [r1,r0]
    strb r0, [r5,#7]
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b loc_802AD48
loc_802AD34:
    mov r1, #2
    tst r0, r1
    beq loc_802AD48
    mov r0, #0x68 
    bl sound_play
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_802AD48:
    ldr r0, dword_802AD80 // =0x2A0000 
    push {r0}
    mov r0, sp
    ldrb r1, [r5,#8]
    mov r2, #5
    mul r1, r2
    sub r1, #3
    strb r1, [r0]
    ldrb r1, [r5,#9]
    mov r2, #3
    mul r1, r2
    add r1, #7
    strb r1, [r0,#1]
    pop {r0}
    bl sub_802AF0E
    pop {pc}
    .balign 4, 0x00
dword_802AD6C:    .word 0xF800000
dword_802AD70:    .word 0x10
off_802AD74:    .word unk_2031000
off_802AD78:    .word aTuDhr
    .byte 0, 0, 0, 0
dword_802AD80:    .word 0x2A0000
.endfunc // sub_802AC6E

.func
.thumb_func
sub_802AD84:
    push {lr}
    ldrb r0, [r5,#3]
    cmp r0, #0
    bne loc_802ADB0
    mov r0, #1
    strb r0, [r5,#3]
    bl sub_802AF38
    add r5, r0, #0
    ldr r2, [r0,#0x58]
    mov r1, #1
    strb r1, [r2,#2]
    bl sub_800EC3C
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#8]
    sub r0, #1
    strb r0, [r1,#8]
    ldrb r0, [r1,#4]
    sub r0, #1
    strb r0, [r1,#4]
loc_802ADB0:
    bl sub_802AF38
    ldrb r1, [r0]
    cmp r1, #0
    bne locret_802ADF8
    ldrb r0, [r5,#5]
    add r0, #0xa
    ldrb r0, [r5,r0]
    cmp r0, #0
    beq loc_802ADC8
    bl sub_8002ADE
loc_802ADC8:
    ldrb r0, [r5,#5]
    tst r0, r0
    bne loc_802ADD8
    mov r0, #0
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_802ADF8
loc_802ADD8:
    sub r0, #1
    strb r0, [r5,#5]
    bl sub_802AF38
    ldrb r1, [r0,#0x12]
    strb r1, [r5,#8]
    ldrb r1, [r0,#0x13]
    strb r1, [r5,#9]
    mov r1, #0
    strh r1, [r0,#0x12]
    bl sub_802AF28
    mov r0, #0x28 
    strb r0, [r5,#1]
    mov r0, #8
    str r0, [r5,#0x3c]
locret_802ADF8:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_802AD84

.func
.thumb_func
sub_802ADFC:
    push {lr}
    ldr r0, [r5,#0x3c]
    sub r0, #1
    str r0, [r5,#0x3c]
    bne locret_802AE12
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #4
    strh r0, [r5,#2]
    bl sub_802AF0E
locret_802AE12:
    pop {pc}
.endfunc // sub_802ADFC

.func
.thumb_func
sub_802AE14:
    push {lr}
    mov r0, #0x20 
    bl chatbox_8045F3C
    beq locret_802AE5A
    bl chatbox_8045F4C
    tst r0, r0
    beq loc_802AE52
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bl sub_802AF38
    ldrb r1, [r0,#0x12]
    strb r1, [r5,#8]
    ldrb r1, [r0,#0x13]
    strb r1, [r5,#9]
    mov r1, #0
    strh r1, [r0,#0x12]
    bl sub_802AF28
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #4
    strh r0, [r5,#2]
    b loc_802AE56
loc_802AE52:
    mov r0, #8
    str r0, [r5]
loc_802AE56:
    bl chatbox_8040818
locret_802AE5A:
    pop {pc}
.endfunc // sub_802AE14

.func
.thumb_func
sub_802AE5C:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_802AE70
    mov r0, #0x9e
    bl sound_play
    mov r0, #4
    strb r0, [r5,#1]
loc_802AE70:
    mov r0, #0x10
    bl sub_802B15C
    mov r0, #0x11
    bl sub_802B15C
    bl sub_802B270
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_802AE5C

.func
.thumb_func
sub_802AE84:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_802AEA6
    bl chatbox_8045F4C
    tst r0, r0
    beq loc_802AE9C
    mov r0, #4
    strb r0, [r5,#1]
    b loc_802AEA6
loc_802AE9C:
    mov r0, #1
    bl sub_802B5EC
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_802AEA6:
    mov r0, #0x10
    bl sub_802B15C
    mov r0, #0x11
    bl sub_802B15C
    bl sub_802B270
    pop {pc}
.endfunc // sub_802AE84

.func
.thumb_func
sub_802AEB8:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_802AEC6
    mov r0, #0x24 
    strb r0, [r5,#1]
loc_802AEC6:
    mov r0, #0x10
    bl sub_802B15C
    mov r0, #0x11
    bl sub_802B15C
    bl sub_802B270
    pop {pc}
.endfunc // sub_802AEB8

.func
.thumb_func
sub_802AED8:
    push {lr}
    bl sub_802AFD4
.endfunc // sub_802AED8

    bne locret_802AEE8
    bl sub_800AABC
    mov r0, #8
    strb r0, [r5]
locret_802AEE8:
    pop {pc}
.func
.thumb_func
sub_802AEEA:
    push {r5-r7,lr}
    add r6, r0, #0
    bl sub_800F214
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    bl sub_8002A64
    add r7, r0, #0
    add r0, r6, #0
    mov r1, #2
    mov r2, #2
    mov r3, #0
    mov r5, #0
    bl sub_80076A0
    add r1, r7, #0
    pop {r5-r7,pc}
.endfunc // sub_802AEEA

.func
.thumb_func
sub_802AF0E:
    push {r5,lr}
    bl sub_802AF38
    ldrb r1, [r5,#8]
    strb r1, [r0,#0x12]
    strb r1, [r0,#0x14]
    ldrb r1, [r5,#9]
    strb r1, [r0,#0x13]
    strb r1, [r0,#0x15]
    add r5, r0, #0
    bl sub_800E29C
    pop {r5,pc}
.endfunc // sub_802AF0E

.func
.thumb_func
sub_802AF28:
    push {r5,lr}
    add r5, r0, #0
    ldr r0, dword_802AF34 // =0x80000 
    bl sub_801A16C
    pop {r5,pc}
dword_802AF34:    .word 0x80000
.endfunc // sub_802AF28

.func
.thumb_func
sub_802AF38:
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    add r0, #0x30 
    ldr r0, [r5,r0]
    mov pc, lr
.endfunc // sub_802AF38

    push {r5,lr}
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bl sub_802AF38
    add r5, r0, #0
    ldr r2, [r0,#0x58]
    mov r1, #1
    strb r1, [r2,#2]
    bl sub_800EC3C
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r0, [r1,#8]
    sub r0, #1
    strb r0, [r1,#8]
    ldrb r0, [r1,#4]
    sub r0, #1
    strb r0, [r1,#4]
    pop {r5,pc}
.func
.thumb_func
sub_802AF6C:
    push {r4-r7,lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802AF8C
    mov r1, r10
    ldr r1, [r1,#8]
    mov r0, #0x78 
    strh r0, [r1,#0x18]
    mov r0, #0x79 
    bl sound_play
    mov r0, #0xf
    str r0, [r5,#0x3c]
    mov r0, #0x78 
    str r0, [r5,#0x38]
    strb r0, [r5,#2]
loc_802AF8C:
    ldr r0, [r5,#0x38]
    sub r0, #0xc
    push {r0,r4,r6,r7}
    mov r6, #4
    and r6, r0
    lsr r6, r6, #2
    add r6, #1
loc_802AF9A:
    ldr r0, [r5,#0x3c]
    sub r0, #1
    str r0, [r5,#0x3c]
    ldr r4, off_802B08C // =unk_2035000 
    lsl r0, r0, #1
    add r4, r4, r0
    lsr r0, r0, #1
    mov r1, #0
    mov r2, #3
    mov r7, #0x14
loc_802AFAE:
    push {r0,r1}
    ldrh r3, [r4]
    mov r2, #3
    bl sub_800187C
    pop {r0,r1}
    add r1, #1
    add r4, #0x1e
    sub r7, #1
    bne loc_802AFAE
    sub r6, #1
    bne loc_802AF9A
    pop {r0,r4,r6,r7}
    str r0, [r5,#0x38]
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1,#0x18]
    cmp r0, #0
    pop {r4-r7,pc}
.endfunc // sub_802AF6C

.func
.thumb_func
sub_802AFD4:
    push {r4-r7,lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802AFE4
    str r0, [r5,#0x3c]
    str r0, [r5,#0x38]
    mov r0, #4
    strb r0, [r5,#2]
loc_802AFE4:
    ldr r0, [r5,#0x38]
    add r0, #0xc
    push {r0,r4-r7}
    add r7, r5, #0
    mov r6, #4
    and r6, r0
    lsr r6, r6, #2
    mov r0, #1
    eor r6, r0
    add r6, #1
loc_802AFF8:
    ldr r0, [r7,#0x3c]
    add r0, #1
    str r0, [r7,#0x3c]
    // a1
    sub r0, #1
    // a2
    mov r1, #0
    // a3
    mov r2, #3
    ldr r3, off_802B020 // =dword_802B024 
    mov r4, #1
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
    sub r6, #1
    bne loc_802AFF8
    pop {r0,r4-r7}
    str r0, [r5,#0x38]
    mov r1, r10
    ldr r1, [r1,#8]
    strh r0, [r1,#0x18]
    cmp r0, #0x78 
    pop {r4-r7,pc}
off_802B020:    .word dword_802B024
dword_802B024:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.endfunc // sub_802AFD4

.func
.thumb_func
decomp_802B060:
    push {lr}
    // a1; src: (*a1)<<1>>1, dest= (u32)a1[8]
    ldr r0, initRefs // =dword_802B070 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    pop {pc}
    .balign 4, 0x00
initRefs:    .word dword_802B070
dword_802B070:    .word 0x886DD59C, 0x6008020, 0x2032000, 0x886DDAD0, 0x2030E60
    .word 0x2032000, 0x886DD9B4
off_802B08C:    .word unk_2035000
    .word unk_2032000
    .word dword_86DDB24
    .word unk_3001A80
    .word 0x20, 0x86C9D6C, 0x30016B0, 0x20, 0x886C9BD4, 0x6016C80
    .word 0x2032000, 0x886C9D38, 0x6016E00, 0x2032000, 0x886DDB44, 0x6016E40
    .word 0x2032000, 0x886DDB7C, 0x6016E80, 0x2032000, 0x886D6974, 0x2030860
    .word 0x2032000, 0x0
.endfunc // decomp_802B060

.func
.thumb_func
sub_802B0EC:
    push {r4-r7,lr}
    mov r7, #4
    ldr r6, off_802B118 // =dword_802B11C 
loc_802B0F2:
    ldr r0, [r6]
    lsl r0, r0, #0x10
    ldr r1, [r6,#4]
    orr r0, r1
    ldr r1, dword_802B114 // =0x10002 
    ldrb r2, [r5,#0xf]
    ldr r3, off_802B110 // =dword_802A828+32 
    ldr r4, [r6,#8]
    bl sub_811FAF4
    add r6, #0x10
    sub r7, #1
    bgt loc_802B0F2
    strb r0, [r5,#0xf]
    pop {r4-r7,pc}
off_802B110:    .word dword_802A828+0x20
dword_802B114:    .word 0x10002
off_802B118:    .word dword_802B11C
dword_802B11C:    .word 0x56
dword_802B120:    .word 0x79
dword_802B124:    .word 0x0
    .word 0x0
    .word 0x6A, 0x79, 0x10000000, 0x0
    .word 0x56, 0x8A, 0x20000000, 0x0
    .word 0x6A, 0x8A, 0x30000000, 0x0
.endfunc // sub_802B0EC

.func
.thumb_func
sub_802B15C:
    push {r4-r7,lr}
    ldrb r2, [r5,r0]
    cmp r2, #0xff
    beq locret_802B194
    ldrh r0, [r5,#0x24]
    cmp r2, r0
    blt locret_802B194
    add r1, r0, #5
    cmp r2, r1
    bge locret_802B194
    sub r5, r2, r0
    lsl r5, r5, #4
    mov r7, #4
    ldr r6, off_802B1A0 // =dword_802B1A4 
loc_802B178:
    ldr r0, [r6]
    lsl r0, r0, #0x10
    ldr r1, [r6,#4]
    add r1, r1, r5
    orr r0, r1
    ldr r1, dword_802B19C // =0x10002 
    mov r2, #0
    ldr r3, dword_802B198 // =dword_802A828 
    ldr r4, [r6,#8]
    bl sub_811FAF4
    add r6, #0x10
    sub r7, #1
    bgt loc_802B178
locret_802B194:
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_802B198:    .word 0x802A862
dword_802B19C:    .word 0x10002
off_802B1A0:    .word dword_802B1A4
dword_802B1A4:    .word 0xC
dword_802B1A8:    .word 0xF
dword_802B1AC:    .word 0x4000
    .word 0x0
    .word 0x4E, 0xF, 0x10004000, 0x0
    .word 0xC, 0x1B, 0x20004000, 0x0
    .word 0x4E, 0x1B, 0x30004000, 0x0
.endfunc // sub_802B15C

.func
.thumb_func
sub_802B1E4:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x1e]
    tst r0, r0
    beq locret_802B1FE
    mov r0, #2
    mov r1, #0x12
    mov r2, #0x20 
    mov r3, #0xc
    ldr r4, off_802B200 // =dword_802A828+24 
    ldr r6, dword_802B208 // =0x40000000 
    ldr r7, dword_802B204 // =0x10002 
    bl sub_802B20C
locret_802B1FE:
    pop {r4-r7,pc}
off_802B200:    .word dword_802A828+0x18
dword_802B204:    .word 0x10002
dword_802B208:    .word 0x40000000
.endfunc // sub_802B1E4

.func
.thumb_func
sub_802B20C:
    push {r4-r7,lr}
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
    bne loc_802B228
    mov r2, #0
    b loc_802B22A
loc_802B228:
    ldrh r2, [r5,r3]
loc_802B22A:
    mov r3, #0x10
    mul r2, r3
    add r1, r1, r2
    orr r0, r1
    add r1, r7, #0
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
    bne loc_802B258
    ldr r1, off_802B26C // =dword_8129180 
    bl sub_8120CC8
    ldr r2, [sp,#8]
    strb r0, [r5,r2]
loc_802B258:
    ldr r2, [sp,#8]
    ldrb r0, [r5,r2]
    mov r3, #0xf
    and r0, r3
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r5,r2]
    add sp, sp, #0x1c
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802B26C:    .word dword_8129180
.endfunc // sub_802B20C

.func
.thumb_func
sub_802B270:
    push {r4-r7,lr}
    ldr r0, dword_802B28C // =0x62 
    mov r1, #0xc
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_802B290 // =0x10002 
    ldrh r2, [r5,#0x1e]
    ldrh r3, [r5,#0x24]
    mov r4, #7
    ldr r6, dword_802B294 // =0xB370 
    mov r7, #0x48 
    bl sub_811FA98
    pop {r4-r7,pc}
dword_802B28C:    .word 0x62
dword_802B290:    .word 0x10002
dword_802B294:    .word 0xB370
.endfunc // sub_802B270

.func
.thumb_func
sub_802B298:
    ldr r0, off_802B29C // =dword_20364C0 
    mov pc, lr
off_802B29C:    .word dword_20364C0
.endfunc // sub_802B298

.func
.thumb_func
sub_802B2A0:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r1, dword_802B350 // =0x1B 
    lsl r1, r1, #1
    mov r2, #0xff
    bl initMemblockToByte
    mov r6, #0
    mov r4, #0
loc_802B2B2:
    ldr r0, off_802B2DC // =dword_802B2E0 
    lsl r1, r4, #2
    ldr r0, [r0,r1]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_802B2CE
    ldr r1, dword_802B354 // =0x197 
    ldr r0, off_802B2DC // =dword_802B2E0 
    lsl r2, r4, #2
    ldr r0, [r0,r2]
    sub r0, r0, r1
    add r0, #1
    strh r0, [r7,r6]
loc_802B2CE:
    add r6, #2
    add r4, #1
    ldr r0, dword_802B350 // =0x1B 
    cmp r4, r0
    blt loc_802B2B2
    lsr r0, r6, #1
    pop {r4-r7,pc}
off_802B2DC:    .word dword_802B2E0
dword_802B2E0:    .word 0x197, 0x198, 0x199, 0x19A, 0x19B, 0x19C, 0x19D, 0x19E
    .word 0x19F, 0x1A1, 0x1A2, 0x1A4, 0x1A5, 0x1A6, 0x1A7, 0x1A8
    .word 0x1A9, 0x1AA, 0x1AB, 0x1AC, 0x1AD, 0x1AE, 0x1AF, 0x1B0
    .word 0x1B1, 0x1B2, 0x1B3, 0x1B4
dword_802B350:    .word 0x1B
dword_802B354:    .word 0x197
.endfunc // sub_802B2A0

.func
.thumb_func
sub_802B358:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r1, [sp,#4]
    add r4, r0, #0
    mov r6, #0
    str r6, [sp]
loc_802B364:
    mov r7, #8
    ldrh r0, [r5,#0x24]
    add r6, r6, r0
    ldrb r1, [r5,#0x10]
    cmp r1, #0xff
    beq loc_802B380
    cmp r6, r1
    beq loc_802B37E
    ldrb r1, [r5,#0x11]
    cmp r1, #0xff
    beq loc_802B380
    cmp r6, r1
    bne loc_802B380
loc_802B37E:
    mov r7, #0xc
loc_802B380:
    lsl r6, r6, #1
    ldrh r0, [r4,r6]
    ldr r1, dword_802B3E0 // =0xFFFF 
    cmp r0, r1
    bne loc_802B392
    mov r1, #0x29 
    ldr r0, off_802B3DC // =aTuDhr 
    mov r7, #0xc
    b loc_802B3AC
loc_802B392:
    lsl r2, r0, #3
    add r2, #4
    ldr r1, off_802B3D8 // =dword_802B5FC 
    ldrh r1, [r1,r2]
    ldrb r2, [r5,#0x12]
    add r1, r1, r2
    cmp r1, #0x32 
    ble loc_802B3A4
    mov r7, #0xc
loc_802B3A4:
    lsl r0, r0, #1
    ldr r1, off_802B3F4 // =dword_802B3F8 
    ldrh r1, [r1,r0]
    ldr r0, off_802B3F0 // =dword_86F047C 
loc_802B3AC:
    ldr r6, [sp]
    mov r2, #0x28 
    lsl r2, r2, #4
    mul r6, r2
    ldr r2, [sp,#4]
    push {r4-r7}
    add r2, r2, r6
    ldr r3, dword_802B3E8 // =0x6008E00 
    add r3, r3, r6
    mov r4, #0xa
    mov r5, #1
    ldr r6, off_802B3E4 // =dword_86B7AE0 
    bl render_graphicalText_8045F8C
.endfunc // sub_802B358

    pop {r4-r7}
    ldr r6, [sp]
    add r6, #1
    str r6, [sp]
    cmp r6, #5
    blt loc_802B364
    add sp, sp, #8
    pop {r4-r7,pc}
off_802B3D8:    .word dword_802B5FC
off_802B3DC:    .word aTuDhr
dword_802B3E0:    .word 0xFFFF
off_802B3E4:    .word dword_86B7AE0
dword_802B3E8:    .word 0x6008E00
    .word unk_2032000
off_802B3F0:    .word dword_86F047C
off_802B3F4:    .word dword_802B3F8
dword_802B3F8:    .word 0x10000, 0xD0007, 0x190013, 0x25001F, 0x31002B, 0x3D0037
    .word 0x490043, 0x55004F, 0x61005B, 0x6D0067, 0x790073, 0x85007F
    .word 0x91008B, 0x9D0097, 0xA900A3, 0x1F00AF
.func
.thumb_func
sub_802B438:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    str r0, [sp,#0x10]
    str r1, [sp,#0x14]
    mov r0, #0
    str r0, [sp,#4]
    str r0, [sp]
    str r0, [sp,#0xc]
loc_802B448:
    ldr r4, [sp,#0x14]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r1, r1, r0
    lsl r1, r1, #1
    ldrh r0, [r4,r1]
    ldr r1, dword_802B4D0 // =0xFFFF 
    cmp r0, r1
    bne loc_802B45E
    mov r0, #0
    b loc_802B46E
loc_802B45E:
    lsl r1, r0, #3
    ldr r2, [sp,#4]
    lsl r2, r2, #1
    add r1, r1, r2
    ldr r4, off_802B4C8 // =dword_802B5FC 
    ldrh r0, [r4,r1]
    bl sub_8000C00
loc_802B46E:
    add r7, r0, #0
    mov r6, #0x10
loc_802B472:
    mov r1, #0x20 
    sub r1, r1, r6
    add r2, r7, #0
    lsl r2, r1
    lsr r2, r1
    sub r6, #4
    lsr r2, r6
    tst r2, r2
    bne loc_802B492
    ldr r0, [sp,#0xc]
    tst r0, r0
    bne loc_802B492
    tst r6, r6
    beq loc_802B492
    mov r2, #0xa
    b loc_802B496
loc_802B492:
    mov r0, #1
    str r0, [sp,#0xc]
loc_802B496:
    mov r0, #0x20 
    mul r0, r2
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    ldr r1, dword_802B4CC // =0x6009A80 
    ldr r3, [sp]
    mov r2, #0x20 
    mul r3, r2
    add r1, r1, r3
    bl loc_8000AC4
.endfunc // sub_802B438

    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    cmp r6, #0
    bgt loc_802B472
    mov r0, #0
    str r0, [sp,#0xc]
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #3
    blt loc_802B448
    add sp, sp, #0x18
    pop {r4-r7,pc}
off_802B4C8:    .word dword_802B5FC
dword_802B4CC:    .word 0x6009A80
dword_802B4D0:    .word 0xFFFF
.func
.thumb_func
sub_802B4D4:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    add r7, r0, #0
    add r7, #4
    add r7, #0x3c 
    mov r1, #0x1e
    add r4, r7, r1
    add r0, r2, #0
    ldr r1, off_802B518 // =0xC80 
    bl sub_8000900 // (int a1, int a2) -> void
    mov r5, #5
loc_802B4EE:
    mov r6, #0
    ldr r3, [sp]
    push {r4,r7}
loc_802B4F4:
    strh r3, [r7]
    add r3, #1
    strh r3, [r4]
    add r3, #1
    add r7, #2
    add r4, #2
    add r6, #1
    cmp r6, #0xa
    blt loc_802B4F4
    pop {r4,r7}
    str r3, [sp]
    add r7, #0x3c 
    add r4, #0x3c 
    sub r5, #1
    bgt loc_802B4EE
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802B518:    .word 0xC80
.endfunc // sub_802B4D4

.func
.thumb_func
sub_802B51C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r1, [sp]
    add r7, r0, #0
    add r7, #0xa
    ldr r3, off_802B55C // =0x1A4 
    add r7, r7, r3
    mov r1, #0x1e
    add r4, r7, r1
    mov r5, #3
loc_802B530:
    mov r6, #0
    ldr r3, [sp]
    push {r4,r7}
loc_802B536:
    strh r3, [r7]
    add r3, #1
    add r7, #2
    add r6, #1
    cmp r6, #4
    blt loc_802B536
    pop {r4,r7}
    str r3, [sp]
    add r7, #0x3c 
    sub r5, #1
    cmp r5, #1
    bgt loc_802B530
    sub r7, #2
    tst r5, r5
    bne loc_802B530
    add sp, sp, #4
    pop {r4-r7,pc}
    .word 0x180
off_802B55C:    .word 0x1A4
.endfunc // sub_802B51C

.func
.thumb_func
sub_802B560:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #2
    tst r0, r1
    beq locret_802B5A2
    mov r1, #0x11
    ldrb r0, [r5,r1]
    cmp r0, #0xff
    bne loc_802B57E
    mov r1, #0x10
    ldrb r0, [r5,r1]
    cmp r0, #0xff
    beq locret_802B5A2
loc_802B57E:
    push {r1}
    ldrb r0, [r5,r1]
    bl sub_802B5B0
    pop {r1}
    mov r0, #0xff
    strb r0, [r5,r1]
    ldr r0, off_802B5A4 // =unk_2031000 
    ldr r1, off_802B5A8 // =unk_2032000 
    bl sub_802B358
    ldr r0, off_802B5AC // =unk_2030E60 
    ldr r1, off_802B5A4 // =unk_2031000 
    bl sub_802B438
    mov r0, #0x83
    bl sound_play
locret_802B5A2:
    pop {pc}
off_802B5A4:    .word unk_2031000
off_802B5A8:    .word unk_2032000
off_802B5AC:    .word unk_2030E60
.endfunc // sub_802B560

.func
.thumb_func
sub_802B5B0:
    lsl r0, r0, #1
    ldr r1, off_802B5C8 // =unk_2031000 
    ldrh r0, [r1,r0]
    lsl r0, r0, #3
    add r0, #4
    ldr r1, off_802B5CC // =dword_802B5FC 
    ldrh r0, [r1,r0]
    ldrb r1, [r5,#0x12]
    sub r1, r1, r0
    strb r1, [r5,#0x12]
    mov pc, lr
    .balign 4, 0x00
off_802B5C8:    .word unk_2031000
off_802B5CC:    .word dword_802B5FC
.endfunc // sub_802B5B0

.func
.thumb_func
sub_802B5D0:
    push {lr}
    mov r0, #0x66 
    bl sound_play
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_802B5D0

.func
.thumb_func
sub_802B5DC:
    push {lr}
    add r1, r0, #0
    ldr r0, off_802B5E8 // =unk_2030860 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    pop {pc}
off_802B5E8:    .word unk_2030860
.endfunc // sub_802B5DC

.func
.thumb_func
sub_802B5EC:
    push {lr}
    add r1, r0, #0
    ldr r0, off_802B5F8 // =dword_86EF78C 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    pop {pc}
off_802B5F8:    .word dword_86EF78C
    // this looks like text
dword_802B5FC:    .word 0x0
    .word 0x0
    .word 0xA0028
    .word 0xA
    .word 0x140046
    .word 0xA
    .word 0x280082
    .word 0x14
    .word 0x1E005A
    .word 0x14
    .word 0x320064
    .word 0x1E
    .word 0x140050
    .word 0xA
    .byte 0x82
    .byte 0
    .byte 0x46 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 0xA
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0xC8
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0xA
    .byte 0
    .byte 0
    .byte 0
    .byte 0x82
    .byte 0
    .byte 5
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0xA
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x3C 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0x14
    .byte 0
    .byte 0
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0x1E
    .byte 0
    .byte 0
    .byte 0
.endfunc // sub_802B5EC

.func
.thumb_func
sub_802B6EC:
    push {r4-r7,lr}
    mov r6, #1
    b loc_802B6F6
.endfunc // sub_802B6EC

.func
.thumb_func
sub_802B6F2:
    push {r4-r7,lr}
    mov r6, #0
loc_802B6F6:
    push {r0-r3}
    // memBlock
    ldr r0, off_802BA44 // =word_2036660 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r7, #0
    cmp r6, #0
    beq loc_802B708
    mov r7, #0x1c
loc_802B708:
    lsl r7, r7, #9
    pop {r0-r3}
    ldr r5, off_802BA44 // =word_2036660 
    strh r0, [r5,#0x4] // (word_2036664 - 0x2036660)
    strb r1, [r5,#0x6] // (byte_2036666 - 0x2036660)
    strb r2, [r5,#0x7] // (byte_2036667 - 0x2036660)
    add r6, r5, #0
    add r6, #0x14
    mov r1, #0
    sub r1, #1
    mov r4, #0xff
    mov r2, #0
loc_802B720:
    add r4, #1
    ldrsh r0, [r3,r2]
    orr r0, r7
    strh r0, [r6]
    add r3, #2
    add r6, #2
    cmp r0, r1
    bne loc_802B720
    strb r4, [r5,#0x8] // (byte_2036668 - 0x2036660)
    pop {r4-r7,pc}
.endfunc // sub_802B6F2

loc_802B734:
    push {r5,lr}
    ldr r5, off_802BA44 // =word_2036660 
    ldr r0, [r5,#0xc] // (dword_203666C - 0x2036660)
    add r0, #1
    str r0, [r5,#0xc] // (dword_203666C - 0x2036660)
    ldr r1, off_802B74C // =off_802B750 
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r5,pc}
    .balign 4, 0x00
off_802B74C:    .word off_802B750
off_802B750:    .word sub_802B75C+1
    .word loc_802B76C+1
    .word sub_802B766+1
.func
.thumb_func
sub_802B75C:
    push {lr}
    mov r0, #4
    str r0, [r5]
    mov r0, #0
    pop {pc}
.endfunc // sub_802B75C

.func
.thumb_func
sub_802B766:
    push {lr}
    mov r0, #1
    pop {pc}
.endfunc // sub_802B766

loc_802B76C:
    push {r5,lr}
    ldr r5, off_802BA44 // =word_2036660 
    ldr r1, off_802B780 // =off_802B784 
    ldrb r0, [r5,#0x1] // (word_2036660+1 - 0x2036660)
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    mov r0, #0
    pop {r5,pc}
    .byte 0, 0
off_802B780:    .word off_802B784
off_802B784:    .word sub_802B7A0+1
    .word sub_802B7E0+1
    .word sub_802B80C+1
    .word sub_802B8E0+1
    .word sub_802B920+1
    .word sub_802B9B8+1
    .word sub_802B9D4+1
.func
.thumb_func
sub_802B7A0:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_802B7BC
    mov r0, #1
    strb r0, [r5,#2]
    mov r0, #0
    bl sub_802B9FE
    mov r0, #0x14
    mov r1, #8
    bl engine_setScreeneffect
    b locret_802B7DE
loc_802B7BC:
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_802B7DE
    mov r0, #0x24 
    ldrb r1, [r5,#7]
    cmp r1, #0
    bne loc_802B7CE
    mov r0, #0x34 
loc_802B7CE:
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x10]
locret_802B7DE:
    pop {pc}
.endfunc // sub_802B7A0

.func
.thumb_func
sub_802B7E0:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0
    bne loc_802B7F4
    bl sub_801E754
    cmp r0, #2
    bne locret_802B80A
    mov r0, #1
    strb r0, [r5,#2]
loc_802B7F4:
    ldr r0, [r5,#0x10]
    add r0, #1
    cmp r0, #0x14
    blt loc_802B808
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0xc]
loc_802B808:
    str r0, [r5,#0x10]
locret_802B80A:
    pop {pc}
.endfunc // sub_802B7E0

.func
.thumb_func
sub_802B80C:
    push {lr}
    bl sub_802B9E4
    ldr r0, [r5,#0x10]
    add r1, r0, #1
    str r1, [r5,#0x10]
    mov r1, #7
    tst r0, r1
    bne locret_802B8AE
    add r3, r0, #0
    lsr r0, r0, #2
    add r0, #0x14
    ldrh r0, [r5,r0]
    push {r0-r7}
    bl sub_8027D10
    ldr r2, off_802B990 // =0x48 
    mul r2, r3
    ldr r3, dword_802B9A4 // =0x6009560 
    add r3, r3, r2
    ldr r2, off_802B9A0 // =unk_203C4E0 
    mov r4, #9
    mov r5, #1
    ldr r6, off_802B9A8 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r0-r7}
    push {r3-r7}
    lsl r2, r0, #0x17
    lsr r2, r2, #0x17
    ldr r1, off_802B99C // =0x160 
    cmp r2, r1
    bge loc_802B86A
    lsr r1, r0, #9
    ldr r0, off_802B9AC // =aBdfhjlnprtvxzB 
    ldr r2, off_802B990 // =0x48 
    mul r2, r3
    ldr r3, dword_802B9B4 // =0x6009760 
    add r3, r3, r2
    ldr r2, off_802B9B0 // =unk_203C6E0 
    mov r4, #1
    mov r5, #1
    ldr r6, off_802B9A8 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
loc_802B86A:
    pop {r3-r7}
    ldr r0, [r5,#0x10]
    lsr r0, r0, #3
    ldrb r1, [r5,#6]
    cmp r0, r1
    blt loc_802B888
    sub r0, r0, r1
    ldrb r1, [r5,#7]
    cmp r0, r1
    bge loc_802B888
    mov r0, #0x91
    bl sound_play
    ldr r0, dword_802B998 // =0xA0AB 
    b loc_802B88A
loc_802B888:
    ldr r0, dword_802B994 // =0xD0AB 
loc_802B88A:
    mov r2, #0x12
    lsr r3, r3, #3
    mul r2, r3
    add r0, r0, r2
    ldr r1, [r5,#0x10]
    lsr r1, r1, #3
    bl sub_802B8B0
    ldr r0, [r5,#0x10]
    lsr r0, r0, #3
    add r0, #1
    ldrb r1, [r5,#8]
    cmp r0, r1
    blt locret_802B8AE
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    str r0, [r5,#0x10]
locret_802B8AE:
    pop {pc}
.endfunc // sub_802B80C

.func
.thumb_func
sub_802B8B0:
    push {r4,r5,lr}
    sub sp, sp, #0x24
    mov r2, sp
    mov r3, #9
loc_802B8B8:
    strh r0, [r2]
    add r0, #1
    strh r0, [r2,#0x12]
    add r0, #1
    add r2, #2
    sub r3, #1
    bne loc_802B8B8
    mov r3, sp
    mov r0, #3
    mul r1, r0
    add r1, #5
    bl sub_802BA18
    mov r2, #3
    mov r4, #9
    mov r5, #2
    bl sub_802BA24
    add sp, sp, #0x24
    pop {r4,r5,pc}
.endfunc // sub_802B8B0

.func
.thumb_func
sub_802B8E0:
    push {lr}
    bl sub_802B9E4
    ldr r0, [r5,#0x10]
    add r0, #1
    str r0, [r5,#0x10]
    cmp r0, #0x18
    blt locret_802B91E
    push {r4-r7}
    ldrb r1, [r5,#6]
    mov r0, #3
    mul r1, r0
    add r1, #5
    ldrb r5, [r5,#7]
    mul r5, r0
    sub r5, #1
    ldr r0, off_802BA44 // =word_2036660 
    bl sub_802BA18
    mov r2, #3
    mov r3, #0
    mov r4, #9
    bl sub_802BA34
    pop {r4-r7}
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0
    str r0, [r5,#0x10]
locret_802B91E:
    pop {pc}
.endfunc // sub_802B8E0

.func
.thumb_func
sub_802B920:
    push {lr}
    bl sub_802B9E4
    ldr r0, [r5,#0x10]
    add r0, #1
    str r0, [r5,#0x10]
    cmp r0, #0x60 
    bge loc_802B96E
    cmp r0, #0x10
    bne locret_802B98C
    ldr r0, dword_802B998 // =0xA0AB 
    mov r2, #0x12
    ldrb r1, [r5,#6]
    mul r2, r1
    add r0, r0, r2
    bl sub_802B8B0
    push {r4-r7}
    ldrh r0, [r5,#4]
    bl sub_8027D10
    ldr r2, off_802B990 // =0x48 
    ldrb r3, [r5,#6]
    lsl r3, r3, #3
    mul r2, r3
    ldr r3, dword_802B9A4 // =0x6009560 
    add r3, r3, r2
    ldr r2, off_802B9A0 // =unk_203C4E0 
    mov r4, #9
    mov r5, #1
    ldr r6, off_802B9A8 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r4-r7}
    mov r0, #0x92
    bl sound_play
    b locret_802B98C
loc_802B96E:
    mov r0, #0x14
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    bl sub_801E780
    bl sub_802BA18
    mov r1, #5
    mov r2, #3
    mov r3, #0
    mov r4, #9
    mov r5, #0xe
    bl sub_802BA34
locret_802B98C:
    pop {pc}
    .byte 0, 0
off_802B990:    .word 0x48
dword_802B994:    .word 0xD0AB
dword_802B998:    .word 0xA0AB
off_802B99C:    .word 0x160
off_802B9A0:    .word unk_203C4E0
dword_802B9A4:    .word 0x6009560
off_802B9A8:    .word dword_86B7AE0
off_802B9AC:    .word aBdfhjlnprtvxzB
off_802B9B0:    .word unk_203C6E0
dword_802B9B4:    .word 0x6009760
.endfunc // sub_802B920

.func
.thumb_func
sub_802B9B8:
    push {lr}
    bl sub_801E754
    cmp r0, #0
    bne locret_802B9D2
    mov r0, #0x18
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    mov r0, #0x10
    mov r1, #8
    bl engine_setScreeneffect
locret_802B9D2:
    pop {pc}
.endfunc // sub_802B9B8

.func
.thumb_func
sub_802B9D4:
    push {lr}
    bl engine_isScreeneffectAnimating
    cmp r0, #0
    bne locret_802B9E2
    mov r0, #8
    str r0, [r5]
locret_802B9E2:
    pop {pc}
.endfunc // sub_802B9D4

.func
.thumb_func
sub_802B9E4:
    push {r0,r1,lr}
    ldr r0, [r5,#0xc]
    mov r1, #3
    tst r0, r1
    bne locret_802B9FC
    lsr r0, r0, #4
    and r0, r1
    cmp r0, #3
    bne loc_802B9F8
    mov r0, #1
loc_802B9F8:
    bl sub_802B9FE
locret_802B9FC:
    pop {r0,r1,pc}
.endfunc // sub_802B9E4

.func
.thumb_func
sub_802B9FE:
    push {r1-r3,lr}
    lsl r0, r0, #3
    ldr r1, off_802BA10 // =dword_802BA48 
    add r0, r0, r1
    ldr r1, off_802BA14 // =unk_3001AA0 
    mov r2, #8
    bl loc_8000AC8
.endfunc // sub_802B9FE

    pop {r1-r3,pc}
off_802BA10:    .word dword_802BA48
off_802BA14:    .word unk_3001AA0
.func
.thumb_func
sub_802BA18:
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r0, [r0,#0x18]
    asr r0, r0, #3
    add r0, #1
    mov pc, lr
.endfunc // sub_802BA18

.func
.thumb_func
sub_802BA24:
    push {r6,lr}
    ldr r6, off_802BA44 // =word_2036660 
    ldrb r6, [r6,#0x7] // (byte_2036667 - 0x2036660)
    cmp r6, #0
    beq locret_802BA32
    bl drawTiles // (int a1, int a2, int a3) -> void
locret_802BA32:
    pop {r6,pc}
.endfunc // sub_802BA24

.func
.thumb_func
sub_802BA34:
    push {r6,lr}
    ldr r6, off_802BA44 // =word_2036660 
    ldrb r6, [r6,#0x7] // (byte_2036667 - 0x2036660)
    cmp r6, #0
    beq locret_802BA42
    bl sub_80018D0
locret_802BA42:
    pop {r6,pc}
off_802BA44:    .word word_2036660
dword_802BA48:    .word 0x7FFF0000, 0x14A5, 0x43F00000, 0x14A5, 0x421F0000
    .word 0x14A5, 0x1530403, 0x480047, 0x4030049, 0x470153
    .word 0x4B004A, 0x1560403, 0x460046, 0x4030098, 0xBA0157
    .word 0xBB00BC, 0x14E0403, 0x230022, 0x4030024, 0x4A0158
    .word 0xE2004B, 0x1590403, 0x960096, 0x403012D, 0x960159
    .word 0x1320096, 0x15B0403, 0xC3008B, 0x40300B9, 0xE2015C
    .word 0x11000BA, 0x15C0403, 0xBA0112, 0x40300E0, 0x116015D
    .word 0x1180117, 0x15A0404, 0x3F006D, 0x270024, 0x1400003
    .word 0x30001, 0x20141, 0x1420003, 0x30003, 0x170151
    .word 0x1430003, 0x30014, 0x150144, 0x1450003, 0x30016
    .word 0x6B0146, 0x1470003, 0x3006C, 0x6D0148, 0x1520003
    .word 0x30009, 0xA0152, 0x1520003, 0x3000B, 0x320155
    .word 0x1540003, 0x30013, 0x90014F, 0x14F0003, 0x300C8
    .word 0xC9014F, 0x1490003, 0x3005C, 0x5D014A, 0x14B0003
    .word 0x3005E, 0x40014C, 0x14C0003, 0x30041, 0x42014C
    .word 0x14D0003, 0x3007B, 0x7C014D, 0x14D0003, 0x3007D
    .word 0x5F0150, 0x1500003, 0x30060, 0x610150, 0x1400403
    .word 0x10001, 0x403000C, 0x20141, 0xD0002, 0x1420403
    .word 0x30003, 0x403000E, 0x140143, 0x6E0014, 0x1440403
    .word 0x150015, 0x403006F, 0x160145, 0x700016, 0x1460403
    .word 0x6B006B, 0x403002E, 0x6C0147, 0x2E006C, 0x1480403
    .word 0x6D006D, 0x403002E, 0x5C0149, 0x5005C, 0x14A0403
    .word 0x5D005D, 0x4030006, 0x5E014B, 0x7005E, 0x14C0403
    .word 0x410040, 0x4030042, 0x7B014D, 0x7D007C, 0x14F0403
    .word 0xC80090, 0x40300C9, 0x5F0150, 0x610060, 0x1510403
    .word 0x170017, 0x4030030, 0x90152, 0xB000A, 0x1550403
    .word 0x320032, 0x4030033, 0x130154, 0x4A0013
off_802BC60:    .word dword_802BA48+0x150
    .word 0x802BBA2, 0x802BBAC, 0x802BBB6, 0x802BBC0, 0x802BBCA
    .word 0x802BBD4, 0x802BBDE, 0x802BBE8, 0x802BBF2, 0x802BBFC
    .word 0x802BC06, 0x802BC10, 0x802BC1A, 0x802BC24, 0x802BC2E
    .word 0x802BC38, 0x802BC42, 0x802BC4C, 0x802BC56
off_802BCB0:    .word dword_802BA48+0x18
    .word 0x802BA6A, 0x802BA74, 0x802BA7E, 0x802BA88, 0x802BA92
    .word 0x802BA9C, 0x802BAA6, 0x802BAB0, 0x802BABA, 0x802BAC4
    .word 0x802BACE, 0x802BAD8, 0x802BAE4, 0x802BAEA, 0x802BAF0
    .word 0x802BAF6, 0x802BAFC, 0x802BB02, 0x802BB08, 0x802BB0E
    .word 0x802BB14, 0x802BB1A, 0x802BB20, 0x802BB26, 0x802BB2C
    .word 0x802BB32, 0x802BB38, 0x802BB3E, 0x802BB44, 0x802BB4A
    .word 0x802BB50, 0x802BB56, 0x802BB5C, 0x802BB62, 0x802BB68
    .word 0x802BB6E, 0x802BB74, 0x802BB7A, 0x802BB80, 0x802BB86
    .word 0x802BB8C, 0x802BB92, 0x0
.endfunc // sub_802BA34

loc_802BD60:
    push {r5,lr}
    ldr r5, off_802BDAC // =dword_20364C0 
    mov r0, #1
    strb r0, [r5,#0x5] // (dword_20364C4+1 - 0x20364c0)
    bl sub_802C8EA
    str r0, [r5,#0x18] // (dword_20364D8 - 0x20364c0)
    ldrb r0, [r5,#0x6] // (dword_20364C4+2 - 0x20364c0)
    strb r0, [r5,#0x7] // (dword_20364C4+3 - 0x20364c0)
    ldr r1, off_802BD9C // =off_802BDA0 
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    push {r5}
    mov r1, #0x6 // (dword_20364C4+2 - 0x20364c0)
    ldrsb r0, [r5,r1]
    mov r1, #2
    mov r2, #3
    ldr r3, off_802BDB0 // =unk_2034B30 
    mov r4, #0x18
    mov r5, #0x12
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r5}
    bl sub_802C460
    ldrb r0, [r5,#5]
    pop {r5,pc}
    .balign 4, 0x00
off_802BD9C:    .word off_802BDA0
off_802BDA0:    .word sub_802BDB4+1
    .word sub_802BDC0+1
    .word sub_802C348+1
off_802BDAC:    .word dword_20364C0
off_802BDB0:    .word unk_2034B30
.func
.thumb_func
sub_802BDB4:
    push {lr}
    bl sub_802C97E
    mov r0, #4
    str r0, [r5]
    pop {pc}
.endfunc // sub_802BDB4

.func
.thumb_func
sub_802BDC0:
    push {lr}
    ldr r1, off_802BDD8 // =off_802BDDC 
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_802C85C
    bl sub_802CA5C
    pop {pc}
    .balign 4, 0x00
off_802BDD8:    .word off_802BDDC
off_802BDDC:    .word sub_802BDF0+1
    .word sub_802BE90+1
    .word sub_802C280+1
    .word sub_802C2D0+1
    .word sub_802C328+1
.endfunc // sub_802BDC0

.func
.thumb_func
sub_802BDF0:
    push {lr}
    ldr r1, off_802BE00 // =off_802BE04 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_802BE00:    .word off_802BE04
off_802BE04:    .word sub_802BE0C+1
    .word sub_802BE36+1
.endfunc // sub_802BDF0

.func
.thumb_func
sub_802BE0C:
    push {r4,r5,lr}
    push {r5}
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #6
    mov r5, #2
    bl sub_80018D0
.endfunc // sub_802BE0C

    pop {r5}
    mov r3, r10
    ldr r3, [r3,#8]
    mov r0, #0
    strh r0, [r3,#0x18]
    mov r1, #0
    bl sub_801E0A0
    mov r0, #4
    strh r0, [r5,#2]
    pop {r4,r5,pc}
.func
.thumb_func
sub_802BE36:
    push {lr}
    mov r1, #6
    ldrsb r0, [r5,r1]
    add r0, #2
    strb r0, [r5,#6]
    cmp r0, #3
    blt loc_802BE50
    mov r0, #3
    strb r0, [r5,#6]
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
loc_802BE50:
    ldrb r0, [r5,#4]
    cmp r0, #2
    beq locret_802BE66
    mov r1, #0
    ldr r0, [r5,#0x1c]
    ldrb r1, [r5,#0xe]
    bl sub_802C4E8
    ldrb r0, [r5,#8]
    bl sub_802C6EC
locret_802BE66:
    pop {pc}
    .word 0x802BE6C, 0x500, 0x1200, 0x3600, 0x3000, 0x4000, 0x5000
    .word 0x3000, 0x4500, 0x10000
.endfunc // sub_802BE36

.func
.thumb_func
sub_802BE90:
    push {lr}
    ldr r1, off_802BEA0 // =off_802BEA4 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_802BEA0:    .word off_802BEA4
off_802BEA4:    .word sub_802BEB4+1
    .word sub_802BF4C+1
    .word sub_802C170+1
    .word sub_802C1D4+1
.endfunc // sub_802BE90

.func
.thumb_func
sub_802BEB4:
    push {lr}
    ldr r1, off_802BEC4 // =off_802BEC8 
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802BEC4:    .word off_802BEC8
off_802BEC8:    .word sub_802BED4+1
    .word sub_802BEFC+1
    .word sub_802BF0C+1
.endfunc // sub_802BEB4

.func
.thumb_func
sub_802BED4:
    push {lr}
    bl sub_802C8D4
    tst r0, r0
    bne loc_802BEE8
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b locret_802BEFA
loc_802BEE8:
    strh r0, [r5,#0x10]
    mov r0, #1
    ldrb r1, [r5,#0xc]
    tst r1, r1
    bne loc_802BEF4
    mov r0, #0x1e
loc_802BEF4:
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
locret_802BEFA:
    pop {pc}
.endfunc // sub_802BED4

.func
.thumb_func
sub_802BEFC:
    push {lr}
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_802BF0A
    mov r0, #8
    strb r0, [r5,#3]
locret_802BF0A:
    pop {pc}
.endfunc // sub_802BEFC

.func
.thumb_func
sub_802BF0C:
    push {lr}
    ldr r7, off_802BF48 // =dword_2036820 
    ldrh r0, [r7,#0x4] // (dword_2036824 - 0x2036820)
    add r7, #8
    ldrh r1, [r7,#0x4] // (dword_203682C - 0x2036828)
    orr r0, r1
    mov r1, #1
    tst r0, r1
    beq loc_802BF34
    ldrb r0, [r5,#0xc]
    cmp r0, #1
    ble loc_802BF28
    mov r0, #0xc
    b loc_802BF2A
loc_802BF28:
    mov r0, #4
loc_802BF2A:
    strh r0, [r5,#2]
    mov r0, #0
    bl sub_802C810
    b locret_802BF44
loc_802BF34:
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r0, [r7]
    mov r1, #8
    and r0, r1
    lsr r0, r0, #3
    bl sub_802C810
locret_802BF44:
    pop {pc}
    .balign 4, 0x00
off_802BF48:    .word dword_2036820
.endfunc // sub_802BF0C

.func
.thumb_func
sub_802BF4C:
    push {lr}
    ldr r1, off_802BF5C // =off_802BF60 
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802BF5C:    .word off_802BF60
off_802BF60:    .word sub_802BF6C+1
    .word sub_802C044+1
    .word sub_802C0A4+1
.endfunc // sub_802BF4C

.func
.thumb_func
sub_802BF6C:
    push {lr}
    mov r0, #0
    ldr r7, off_802C01C // =unk_2035320 
loc_802BF72:
    strb r0, [r7,r0]
    add r0, #1
    cmp r0, #0x2a 
    bmi loc_802BF72
    add r0, r7, #0
    mov r1, #0x2a 
    mov r2, #0x2a 
    bl sub_8000C72
    ldrh r0, [r5,#0x10]
    ldr r1, dword_802C040 // =0xFFFF 
    cmp r0, r1
    beq loc_802BFC0
    bl sub_802C54C
    tst r0, r0
    bne loc_802BFA2
    // idx
    add r0, r1, #0
    bl refIndex_8021DA8 // (int idx) -> void*
    add r7, r0, #0
    ldr r0, [r7,#0x24]
    ldr r1, [r7,#0x28]
    b loc_802BFE4
loc_802BFA2:
    cmp r0, #1
    bne loc_802BFAC
    ldr r0, off_802C014 // =dword_8732E54 
    ldr r1, off_802C018 // =dword_8733394 
    b loc_802BFE4
loc_802BFAC:
    cmp r0, #2
    bne loc_802BFC0
    tst r1, r1
    beq loc_802BFBA
    ldr r0, off_802C020 // =dword_87333B4 
    ldr r1, off_802C024 // =dword_87338F4 
    b loc_802BFE4
loc_802BFBA:
    ldr r0, off_802C028 // =dword_8733914 
    ldr r1, off_802C02C // =dword_8733E54 
    b loc_802BFE4
loc_802BFC0:
    cmp r0, #3
    bne loc_802BFE0
    mov r2, #0
    cmp r1, #1
    ble loc_802BFD8
    mov r2, #0x20 
    cmp r1, #2
    ble loc_802BFD8
    mov r2, #0x40 
    cmp r1, #3
    ble loc_802BFD8
    mov r2, #0x60 
loc_802BFD8:
    ldr r0, off_802C03C // =dword_87343F4 
    ldr r1, off_802C038 // =dword_8734934 
    add r1, r1, r2
    b loc_802BFE4
loc_802BFE0:
    ldr r0, off_802C030 // =dword_8733E74 
    ldr r1, off_802C034 // =dword_87343B4 
loc_802BFE4:
    push {r5}
    push {r1}
    ldr r1, dword_802C00C // =0x600BD00 
    mov r2, #0x2a 
    lsl r2, r2, #6
    bl loc_8000AC8
.endfunc // sub_802BF6C

    pop {r1}
    add r0, r1, #0
    ldr r1, off_802C010 // =unk_3001AE0 
    mov r2, #0x20 
    bl loc_8000AC8
    pop {r5}
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
    pop {pc}
    .balign 4, 0x00
dword_802C00C:    .word 0x600BD00
off_802C010:    .word unk_3001AE0
off_802C014:    .word dword_8732E54
off_802C018:    .word dword_8733394
off_802C01C:    .word unk_2035320
off_802C020:    .word dword_87333B4
off_802C024:    .word dword_87338F4
off_802C028:    .word dword_8733914
off_802C02C:    .word dword_8733E54
off_802C030:    .word dword_8733E74
off_802C034:    .word dword_87343B4
off_802C038:    .word dword_8734934
off_802C03C:    .word dword_87343F4
dword_802C040:    .word 0xFFFF
.func
.thumb_func
sub_802C044:
    push {lr}
    sub sp, sp, #0x74
    mov r6, sp
    add r0, r6, #4
    bl sub_802C588
    ldrb r0, [r5,#0xb]
    cmp r0, #0x2a 
    bmi loc_802C060
    mov r0, #8
    strb r0, [r5,#3]
    mov r0, #0x1e
    strb r0, [r5,#0xb]
    b loc_802C09A
loc_802C060:
    push {r0,r5}
    ldr r7, off_802C0A0 // =unk_2035320 
    ldrb r0, [r7,r0]
    lsl r1, r0, #1
    add r1, #4
    ldrh r1, [r6,r1]
    strh r1, [r6]
    mov r1, #7
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    add r0, #0xe
    add r1, #0xa
    add r2, r6, #0
    mov r3, #1
    mov r4, #1
    bl sub_802C4B6
    pop {r0,r5}
    add r0, #1
    strb r0, [r5,#0xb]
    mov r1, #3
    and r0, r1
    cmp r0, #3
    bne loc_802C09A
    mov r0, #0x7e 
    bl sound_play
loc_802C09A:
    add sp, sp, #0x74
    pop {pc}
    .byte 0, 0
off_802C0A0:    .word unk_2035320
.endfunc // sub_802C044

.func
.thumb_func
sub_802C0A4:
    push {lr}
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_802C160
    ldrh r0, [r5,#0x10]
    ldr r1, dword_802C164 // =0xFFFF 
    cmp r0, r1
    beq loc_802C15C
    bl sub_802C54C
    tst r0, r0
    bne loc_802C114
    // idx
    add r0, r1, #0
    add r1, r2, #0
    mov r2, #1
    push {r0,r1}
    ldrb r3, [r5,#4]
    cmp r3, #2
    beq loc_802C106
    push {r0-r2,r4,r6,r7}
    add r4, r1, #0
    ldr r1, dword_802C16C // =0x136 
    cmp r0, r1
    bgt loc_802C0E2
    bl refIndex_8021DA8 // (int idx) -> void*
    ldr r1, [r0]
    ldr r2, dword_802C168 // =0xFFFFFFFF 
    cmp r1, r2
    bne loc_802C0E6
loc_802C0E2:
    pop {r0-r2,r4,r6,r7}
    b loc_802C106
loc_802C0E6:
    ldrb r1, [r0]
    cmp r1, r4
    beq loc_802C0FE
    ldrb r1, [r0,#1]
    cmp r1, r4
    beq loc_802C0FE
    ldrb r1, [r0,#2]
    cmp r1, r4
    beq loc_802C0FE
    ldrb r1, [r0,#3]
    cmp r1, r4
    bne loc_802C0E2
loc_802C0FE:
    pop {r0-r2,r4,r6,r7}
    push {r0}
    pop {r0}
    b loc_802C106
loc_802C106:
    pop {r0,r1}
    bl sub_802C75C
    mov r0, #0x96
    bl sound_play
    b loc_802C15C
loc_802C114:
    cmp r0, #1
    bne loc_802C12A
    add r0, r1, #0
    push {r0}
    pop {r0}
    bl sub_802C5B0
    mov r0, #0x95
    bl sound_play
    b loc_802C15C
loc_802C12A:
    cmp r0, #2
    bne loc_802C148
    add r0, r1, #0
    bl sub_802C646
    mov r0, #0x95
    bl sound_play
    mov r0, #0x1e
    strb r0, [r5,#0xb]
    mov r0, #8
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#3]
    b locret_802C160
loc_802C148:
    cmp r0, #3
    bne loc_802C15C
    add r0, r1, #0
    push {r0}
    pop {r0}
    bl sub_802C5E6
    mov r0, #0x95
    bl sound_play
loc_802C15C:
    mov r0, #0
    strh r0, [r5,#2]
locret_802C160:
    pop {pc}
    .balign 4, 0x00
dword_802C164:    .word 0xFFFF
dword_802C168:    .word 0xFFFFFFFF
dword_802C16C:    .word 0x136
.endfunc // sub_802C0A4

.func
.thumb_func
sub_802C170:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_802C1B8
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_802C1CC
    ldrh r0, [r5,#0x10]
    bl sub_802C54C
    add r0, r1, #0
    push {r0,r5}
    mov r7, r10
    ldr r7, [r7,#0x18]
    push {r0}
    bl sub_80103EC
    add r5, r0, #0
    pop {r0}
    tst r0, r0
    bne loc_802C1A2
    ldrh r0, [r5,#0x26]
    strh r0, [r5,#0x24]
    b loc_802C1A6
loc_802C1A2:
    bl object_addHP
loc_802C1A6:
    mov r0, #0x8a
    bl sound_play
    ldrh r0, [r5,#0x24]
    strh r0, [r7,#0x34]
    pop {r0,r5}
    mov r0, #4
    strb r0, [r5,#3]
    b locret_802C1CC
loc_802C1B8:
    ldr r7, [r5,#0x18]
    ldrh r0, [r7,#4]
    add r7, #8
    ldrh r1, [r7,#4]
    orr r0, r1
    mov r1, #9
    tst r0, r1
    beq loc_802C1C8
loc_802C1C8:
    mov r0, #0
    strh r0, [r5,#2]
locret_802C1CC:
    pop {pc}
    .byte 0, 0
    .word byte_2035280
.endfunc // sub_802C170

.func
.thumb_func
sub_802C1D4:
    push {lr}
    ldr r1, off_802C1E4 // =off_802C1E8 
    ldrb r0, [r5,#3]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802C1E4:    .word off_802C1E8
off_802C1E8:    .word sub_802C1F0+1
    .word sub_802C218+1
.endfunc // sub_802C1D4

.func
.thumb_func
sub_802C1F0:
    push {lr}
    mov r0, #0
    ldr r7, off_802C214 // =unk_2035320 
loc_802C1F6:
    strb r0, [r7,r0]
    add r0, #1
    cmp r0, #0x2a 
    bmi loc_802C1F6
    add r0, r7, #0
    mov r1, #0x2a 
    mov r2, #0x2a 
    bl sub_8000C72
    mov r0, #0
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
    pop {pc}
    .balign 4, 0x00
off_802C214:    .word unk_2035320
.endfunc // sub_802C1F0

.func
.thumb_func
sub_802C218:
    push {lr}
    sub sp, sp, #0x74
    mov r6, sp
    add r0, r6, #4
    bl sub_802C59C
    b loc_802C22C
    ldrb r0, [r5,#0xb]
    cmp r0, #0x2a 
    bmi loc_802C244
loc_802C22C:
    mov r0, #0xe
    mov r1, #0xa
    add r2, r6, #4
    mov r3, #7
    mov r4, #6
    bl sub_802C4B6
    mov r0, #4
    strh r0, [r5,#2]
    mov r0, #0x1e
    strb r0, [r5,#0xb]
    b loc_802C278
loc_802C244:
    push {r0,r5}
    ldr r7, off_802C27C // =unk_2035320 
    ldrb r0, [r7,r0]
    lsl r1, r0, #1
    add r1, #4
    ldrh r1, [r6,r1]
    strh r1, [r6]
    mov r1, #7
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    add r0, #0xe
    add r1, #9
    add r2, r6, #0
    mov r3, #1
    mov r4, #1
    bl sub_802C4B6
    pop {r0,r5}
    add r0, #1
    strb r0, [r5,#0xb]
    mov r1, #3
    and r0, r1
    cmp r0, #3
    bne loc_802C278
loc_802C278:
    add sp, sp, #0x74
    pop {pc}
off_802C27C:    .word unk_2035320
.endfunc // sub_802C218

.func
.thumb_func
sub_802C280:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_802C2A2
    ldr r7, off_802C2CC // =dword_2036820 
    ldrh r0, [r7,#0x4] // (dword_2036824 - 0x2036820)
    add r7, #8
    ldrh r1, [r7,#0x4] // (dword_203682C - 0x2036828)
    orr r0, r1
    mov r1, #9
    tst r0, r1
    beq locret_802C2C8
    mov r0, #0x14
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#3]
    b locret_802C2C8
loc_802C2A2:
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bne locret_802C2C8
    mov r0, #0
    mov r1, #0xa
    bl sub_800AB3A
    cmp r0, #0
    beq loc_802C2C0
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    b loc_802C4B2
loc_802C2C0:
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_802C2C8:
    pop {pc}
    .balign 4, 0x00
off_802C2CC:    .word dword_2036820
.endfunc // sub_802C280

.func
.thumb_func
sub_802C2D0:
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #1
    beq loc_802C2FA
    mov r1, #6
    ldrsb r0, [r5,r1]
    add r0, #2
    strb r0, [r5,#6]
    cmp r0, #0x1e
    blt locret_802C320
    mov r0, #0
    mov r1, #0xa
    bl sub_800AB3A
    add r1, r0, #0
    ldr r0, off_802C324 // =aF_0 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #1
    strb r0, [r5,#2]
    b locret_802C320
loc_802C2FA:
    push {r5}
    mov r0, #0x1d
    mov r1, #2
    mov r2, #3
    mov r3, #0
    mov r4, #1
    mov r5, #0x12
    bl sub_80018D0
    pop {r5}
    mov r0, #0x80
    bl chatbox_8045F3C
    cmp r0, #0
    bne locret_802C320
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_802C320:
    pop {pc}
    .balign 4, 0x00
off_802C324:    .word aF_0
.endfunc // sub_802C2D0

.func
.thumb_func
sub_802C328:
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_802C33C
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#3]
loc_802C33C:
    bl engine_isScreeneffectAnimating
    beq locret_802C346
    mov r0, #8
    str r0, [r5]
locret_802C346:
    pop {pc}
.endfunc // sub_802C328

.func
.thumb_func
sub_802C348:
    mov r0, #0
    strb r0, [r5,#5]
    mov pc, lr
.endfunc // sub_802C348

.func
.thumb_func
sub_802C34E:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    mov r2, #0xc
    mul r1, r2
    add r0, r0, r1
    add r4, r0, #0
    ldr r0, off_802C3F4 // =dword_20364C0 
    add r7, r0, #0
    mov r1, #0x20 
    bl sub_80008B4
    ldrb r0, [r4]
    strb r0, [r7,#0x4] // (dword_20364C4 - 0x20364c0)
    ldrb r0, [r4,#1]
    strb r0, [r7,#0x8] // (byte_20364C8 - 0x20364c0)
    ldrb r0, [r4,#3]
    strb r0, [r7,#0xd] // (byte_20364CD - 0x20364c0)
    ldr r0, [r4,#4]
    str r0, [r7,#0x1c] // (dword_20364DC - 0x20364c0)
    ldr r0, [r4,#8]
    str r0, [r7,#0x14] // (unk_20364D4 - 0x20364c0)
    ldrh r0, [r7,#0x14] // (unk_20364D4 - 0x20364c0)
    bl sub_800B6CE
    ldrh r0, [r7,#0x16] // (word_20364D6 - 0x20364c0)
    bl sub_800B6DA
    mov r1, #0xe2
    strb r1, [r7,#0x6] // (dword_20364C4+2 - 0x20364c0)
    ldrb r0, [r7,#0x4] // (dword_20364C4 - 0x20364c0)
    ldr r6, off_802C430 // =off_802C434 
    lsl r1, r0, #2
    ldr r0, [r6,r1]
    ldr r1, off_802C440 // =unk_2034B30 
    mov r2, #0x36 
    lsl r2, r2, #4
    bl sub_8000950
    ldrb r0, [r7,#0x4] // (dword_20364C4 - 0x20364c0)
    ldr r7, off_802C3F8 // =off_802C3FC 
    mov r1, #0xc
    mul r1, r0
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl loc_8000AC8
.endfunc // sub_802C34E

    mov r0, #0
    mov r1, #0x60 
    mul r0, r1
    ldr r7, off_802C420 // =off_802C424 
    ldr r1, [r7]
    add r0, r0, r1
    ldr r1, [r7,#0x4] // (off_802C428 - 0x802c424)
    ldr r2, [r7,#0x8] // (off_802C42C - 0x802c424)
    bl loc_8000AC8
    ldr r7, off_802C444 // =aTS 
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (unk_802C44C - 0x802c448)
    ldr r2, [r7,#0x8] // (off_802C450 - 0x802c448)
    bl loc_8000AC8
    bl getPETNaviSelect
    bl sub_8028164
    ldr r1, dword_802C458 // =0x6014000 
    mov r2, #0x80
    bl loc_8000AC8
    bl getPETNaviSelect
    bl sub_8028172
    ldr r1, off_802C45C // =unk_30016B0 
    mov r2, #0x20 
    bl loc_8000AC8
    pop {r4-r7,pc}
off_802C3F4:    .word dword_20364C0
off_802C3F8:    .word off_802C3FC
off_802C3FC:    .word dword_872F3F4
    .word 0x6008020, 0xE60, 0x8730254, 0x6008020, 0xF00, 0x8731154
    .word 0x6008020, 0xCA0
off_802C420:    .word off_802C424
off_802C424:    .word dword_8732814
off_802C428:    .word unk_3001A80
off_802C42C:    .word 0x60
off_802C430:    .word off_802C434
off_802C434:    .word dword_8731DF4
    .word dword_8732154
    .word dword_87324B4
off_802C440:    .word unk_2034B30
off_802C444:    .word aTS
aTS:    .word dword_8732874
unk_802C44C:    .byte 0
    .byte 0x94, 0x0, 0x6
off_802C450:    .word 0x5E0
    .word 0xFFFF
dword_802C458:    .word 0x6014000
off_802C45C:    .word unk_30016B0
.func
.thumb_func
sub_802C460:
    push {r4,r5,lr}
    mov r0, #6
    ldrsb r0, [r5,r0]
    mov r1, #7
    ldrsb r1, [r5,r1]
    cmp r0, r1
    beq locret_802C48E
    bgt loc_802C476
    sub r4, r1, r0
    add r0, #0x18
    b loc_802C47A
loc_802C476:
    sub r4, r0, r1
    add r0, r1, #0
loc_802C47A:
    mov r1, #2
    mov r5, #0x12
    bl sub_802C490
    tst r2, r2
    beq locret_802C48E
    mov r2, #3
    mov r3, #0
    bl sub_80018D0
locret_802C48E:
    pop {r4,r5,pc}
.endfunc // sub_802C460

.func
.thumb_func
sub_802C490:
    push {r6,lr}
    mov r6, #0
    add r2, r0, r4
    cmp r0, #0x1d
    bgt loc_802C4B2
    cmp r0, #0
    bge loc_802C4A0
    mov r0, #0
loc_802C4A0:
    cmp r2, #0
    blt loc_802C4B2
    cmp r2, #0x1d
    ble loc_802C4AA
    mov r2, #0x1d
loc_802C4AA:
    sub r4, r2, r0
    tst r4, r4
    beq loc_802C4B2
    mov r6, #1
loc_802C4B2:
    add r2, r6, #0
    pop {r6,pc}
.endfunc // sub_802C490

.func
.thumb_func
sub_802C4B6:
    push {r5-r7,lr}
    ldr r7, off_802C4E4 // =unk_2034B30 
    mov r5, #0x18
    mul r1, r5
    add r0, r0, r1
    add r0, r0, r0
    add r7, r7, r0
    add r5, r7, #0
    mov r1, #0
loc_802C4C8:
    mov r0, #0
loc_802C4CA:
    ldrh r6, [r2]
    strh r6, [r7]
    add r7, #2
    add r2, #2
    add r0, #1
    cmp r0, r3
    bne loc_802C4CA
    add r5, #0x30 
    add r7, r5, #0
    add r1, #1
    cmp r1, r4
    bne loc_802C4C8
    pop {r5-r7,pc}
off_802C4E4:    .word unk_2034B30
.endfunc // sub_802C4B6

.func
.thumb_func
sub_802C4E8:
    push {r5,lr}
    sub sp, sp, #4
    mov r6, sp
    push {r1}
    bl sub_8000D84
    ldr r1, dword_802C548 // =0x95999 
    cmp r0, r1
    ble loc_802C4FC
    add r0, r1, #0
loc_802C4FC:
    pop {r1}
    add r1, #9
    lsl r1, r1, #0xc
    ldr r4, off_802C544 // =0xA0 
    orr r4, r1
    mov r3, #0
    ldr r7, off_802C540 // =dword_802C538 
loc_802C50A:
    mov r1, #0xf
    and r1, r0
    add r1, r1, r1
    add r2, r4, #0
    add r2, r2, r1
    strh r2, [r6]
    add r2, #1
    strh r2, [r6,#2]
    push {r0,r3,r4,r6,r7}
    ldrb r0, [r7,r3]
    mov r1, #4
    add r2, r6, #0
    mov r3, #1
    mov r4, #2
    bl sub_802C4B6
    pop {r0,r3,r4,r6,r7}
    lsr r0, r0, #4
    add r3, #1
    cmp r3, #5
    bmi loc_802C50A
    add sp, sp, #4
    pop {r5,pc}
dword_802C538:    .word 0x10111314, 0xE
off_802C540:    .word dword_802C538
off_802C544:    .word 0xA0
dword_802C548:    .word 0x95999
.endfunc // sub_802C4E8

.func
.thumb_func
sub_802C54C:
    ldr r1, dword_802C584 // =0xFFFF 
    cmp r0, r1
    beq loc_802C580
    lsr r1, r0, #0xe
    bne loc_802C560
    lsr r2, r0, #9
    lsl r1, r0, #0x17
    lsr r1, r1, #0x17
    mov r0, #0
    b locret_802C582
loc_802C560:
    cmp r1, #1
    bne loc_802C56C
    lsl r1, r0, #0x12
    lsr r1, r1, #0x12
    mov r0, #1
    b locret_802C582
loc_802C56C:
    cmp r1, #2
    bne loc_802C578
    lsl r1, r0, #0x12
    lsr r1, r1, #0x12
    mov r0, #2
    b locret_802C582
loc_802C578:
    lsl r1, r0, #0x12
    lsr r1, r1, #0x12
    mov r0, #3
    b locret_802C582
loc_802C580:
    mov r0, #0xff
locret_802C582:
    mov pc, lr
dword_802C584:    .word 0xFFFF
.endfunc // sub_802C54C

.func
.thumb_func
sub_802C588:
    ldr r1, dword_802C598 // =0xC1E8 
    mov r2, #0x2a 
loc_802C58C:
    strh r1, [r0]
    add r1, #1
    add r0, #2
    sub r2, #1
    bne loc_802C58C
    mov pc, lr
dword_802C598:    .word 0xC1E8
.endfunc // sub_802C588

.func
.thumb_func
sub_802C59C:
    ldr r1, dword_802C5AC // =0x90C6 
    mov r2, #0x2a 
loc_802C5A0:
    strh r1, [r0]
    add r0, #2
    sub r2, #1
    bne loc_802C5A0
    mov pc, lr
    .balign 4, 0x00
dword_802C5AC:    .word 0x90C6
.endfunc // sub_802C59C

.func
.thumb_func
sub_802C5B0:
    push {r4-r7,lr}
    sub sp, sp, #0x70
    mov r6, sp
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#8]
    push {r6}
    ldr r0, off_802C6AC // =aTuDhr 
    mov r1, #5
    ldr r2, off_802C6A8 // =unk_2035320 
    ldr r3, dword_802C6B4 // =0x600BA80 
    mov r4, #0xa
    mov r5, #1
    ldr r6, off_802C6B0 // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
.endfunc // sub_802C5B0

    mov r0, #2
    mov r1, #0xc
    ldr r2, off_802C6C0 // =dword_802C6C4 
    mov r3, #0xa
    mov r4, #2
    bl sub_802C4B6
    pop {r6}
    add sp, sp, #0x70
    pop {r4-r7,pc}
.func
.thumb_func
sub_802C5E6:
    push {r5,lr}
    sub sp, sp, #8
    tst r0, r0
    bne loc_802C5F4
    mov r0, #4
    str r0, [sp,#4]
    b loc_802C61C
loc_802C5F4:
    str r0, [sp]
    bl sub_8000C00
    bl sub_8000C5C
    str r0, [sp,#4]
    ldr r0, [sp]
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#8]
    ldr r0, off_802C6AC // =aTuDhr 
    mov r1, #6
    ldr r2, off_802C6BC // =unk_20354E0 
    ldr r3, dword_802C6B8 // =0x600BC40 
    mov r4, #3
    mov r5, #1
    ldr r6, off_802C6B0 // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
loc_802C61C:
    ldr r0, [sp,#4]
    mov r1, #1
    ldr r2, off_802C6A8 // =unk_2035320 
    ldr r3, dword_802C6B4 // =0x600BA80 
    mov r4, #0xa
    sub r4, r4, r0
    mov r5, #1
    ldr r6, off_802C6B0 // =dword_86B7AE0 
    mov r7, #8
    ldr r0, off_802C6AC // =aTuDhr 
    bl render_graphicalText_8045F8C
.endfunc // sub_802C5E6

    mov r0, #2
    mov r1, #0xc
    ldr r2, off_802C6C0 // =dword_802C6C4 
    mov r3, #0xa
    mov r4, #2
    bl sub_802C4B6
    add sp, sp, #8
    pop {r5,pc}
.func
.thumb_func
sub_802C646:
    push {r5,lr}
    sub sp, sp, #8
    tst r0, r0
    bne loc_802C654
    mov r0, #4
    str r0, [sp,#4]
    b loc_802C67C
loc_802C654:
    str r0, [sp]
    bl sub_8000C00
    bl sub_8000C5C
    str r0, [sp,#4]
    ldr r0, [sp]
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r0, [r7,#8]
    ldr r0, off_802C6AC // =aTuDhr 
    mov r1, #6
    ldr r2, off_802C6BC // =unk_20354E0 
    ldr r3, dword_802C6B8 // =0x600BC40 
    mov r4, #3
    mov r5, #1
    ldr r6, off_802C6B0 // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
loc_802C67C:
    ldr r0, [sp,#4]
    add r1, r0, #6
    ldr r2, off_802C6A8 // =unk_2035320 
    ldr r3, dword_802C6B4 // =0x600BA80 
    mov r4, #0xa
    sub r4, r4, r0
    mov r5, #1
    ldr r6, off_802C6B0 // =dword_86B7AE0 
    mov r7, #8
    ldr r0, off_802C6AC // =aTuDhr 
    bl render_graphicalText_8045F8C
.endfunc // sub_802C646

    mov r0, #2
    mov r1, #0xc
    ldr r2, off_802C6C0 // =dword_802C6C4 
    mov r3, #0xa
    mov r4, #2
    bl sub_802C4B6
    add sp, sp, #8
    pop {r5,pc}
    .balign 4, 0x00
off_802C6A8:    .word unk_2035320
off_802C6AC:    .word aTuDhr
off_802C6B0:    .word dword_86B7AE0
dword_802C6B4:    .word 0x600BA80
dword_802C6B8:    .word 0x600BC40
off_802C6BC:    .word unk_20354E0
off_802C6C0:    .word dword_802C6C4
dword_802C6C4:    .word 0x91D691D4
    .word 0x91DA91D8
    .word 0x91DE91DC
    .word 0x91E291E0
    .word 0x91E691E4
    .word 0x91D791D5
    .word 0x91DB91D9
    .word 0x91DF91DD
    .word 0x91E391E1
    .word 0x91E791E5
.func
.thumb_func
sub_802C6EC:
    push {r4-r6,lr}
    sub sp, sp, #0x1c
    cmp r0, #0xb
    ble loc_802C6F6
    mov r0, #0xb
loc_802C6F6:
    str r0, [sp,#0x14]
    ldr r0, dword_802C758 // =0x90A0 
    add r0, #0x14
    mov r3, #5
    add r2, sp, #0
loc_802C700:
    strh r0, [r2]
    add r1, r0, #1
    strh r1, [r2,#0xa]
    add r2, #2
    sub r3, #1
    bgt loc_802C700
    mov r4, #8
    add r4, sp
    ldr r6, dword_802C758 // =0x90A0 
    ldr r0, [sp,#0x14]
    cmp r0, #0xb
    blt loc_802C724
    mov r1, #1
    lsl r1, r1, #0xc
    add r6, r6, r1
    mov r5, #0xb
    mov r0, #1
    b loc_802C72E
loc_802C724:
    bl sub_8000C00
    add r5, r0, #0
    bl sub_8000C5C
loc_802C72E:
    mov r1, #0xf
    and r1, r5
    add r1, r1, r1
    add r1, r1, r6
    strh r1, [r4]
    add r2, r1, #1
    strh r2, [r4,#0xa]
    lsr r5, r5, #4
    sub r4, #2
    sub r0, #1
    bgt loc_802C72E
    mov r0, #0x10
    mov r1, #6
    add r2, sp, #0
    mov r3, #5
    mov r4, #2
    bl sub_802C4B6
    add sp, sp, #0x1c
    pop {r4-r6,pc}
    .balign 4, 0x00
dword_802C758:    .word 0x90A0
.endfunc // sub_802C6EC

.func
.thumb_func
sub_802C75C:
    push {r5,lr}
    sub sp, sp, #0x70
    mov r6, sp
    push {r0,r1,r6}
    mov r1, #0xff
    and r1, r0
    lsr r0, r0, #8
    lsl r0, r0, #2
    ldr r2, off_802C7C0 // =off_802C7C4 
    ldr r0, [r2,r0]
    ldr r2, off_802C7CC // =unk_2035320 
    ldr r3, dword_802C7D0 // =0x600BA80 
    mov r4, #8
    mov r5, #1
    ldr r6, off_802C7D4 // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
.endfunc // sub_802C75C

    mov r0, #2
    mov r1, #0xc
    ldr r2, off_802C7E8 // =unk_802C7EC 
    mov r3, #9
    mov r4, #2
    bl sub_802C4B6
    pop {r0,r1,r6}
    push {r0,r1,r6}
    ldr r2, dword_802C7E0 // =0x91E4 
    strh r2, [r6]
    add r2, #1
    strh r2, [r6,#2]
    mov r0, #0xb
    mov r1, #0xc
    add r2, r6, #0
    mov r3, #1
    mov r4, #2
    bl sub_802C4B6
    pop {r0,r1,r6}
    ldr r0, off_802C7D8 // =a8Bdfhjlnprtvxz 
    ldr r2, off_802C7E4 // =unk_2035520 
    ldr r3, dword_802C7DC // =0x600BC80 
    mov r4, #1
    mov r5, #1
    ldr r6, off_802C7D4 // =dword_86B7AE0 
    mov r7, #8
    bl render_graphicalText_8045F8C
    add sp, sp, #0x70
    pop {r5,pc}
off_802C7C0:    .word off_802C7C4
off_802C7C4:    .word dword_86EA94C
    .word dword_86EB354
off_802C7CC:    .word unk_2035320
dword_802C7D0:    .word 0x600BA80
off_802C7D4:    .word dword_86B7AE0
off_802C7D8:    .word a8Bdfhjlnprtvxz
dword_802C7DC:    .word 0x600BC80
dword_802C7E0:    .word 0x91E4
off_802C7E4:    .word unk_2035520
off_802C7E8:    .word unk_802C7EC
unk_802C7EC:    .byte 0xD4
    .byte 0x91
    .byte 0xD6
    .byte 0x91
    .byte 0xD8
    .byte 0x91
    .byte 0xDA
    .byte 0x91
    .byte 0xDC
    .byte 0x91
    .byte 0xDE
    .byte 0x91
    .byte 0xE0
    .byte 0x91
    .byte 0xE2
    .byte 0x91
    .byte 0xC5
    .byte 0x90
    .byte 0xD5
    .byte 0x91
    .byte 0xD7
    .byte 0x91
    .byte 0xD9
    .byte 0x91
    .byte 0xDB
    .byte 0x91
    .byte 0xDD
    .byte 0x91
    .byte 0xDF
    .byte 0x91
    .byte 0xE1
    .byte 0x91
    .byte 0xE3
    .byte 0x91
    .byte 0xC5
    .byte 0x90
.func
.thumb_func
sub_802C810:
    push {r5,lr}
    ldr r2, off_802C828 // =off_802C82C 
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov r0, #2
    mov r1, #0xe
    mov r3, #0xa
    mov r4, #1
    bl sub_802C4B6
    pop {r5,pc}
    .balign 4, 0x00
off_802C828:    .word off_802C82C
off_802C82C:    .word unk_802C834
    .word unk_802C848
unk_802C834:    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
    .byte 0xC4
    .byte 0x90
unk_802C848:    .byte 0xBA
    .byte 0x90
    .byte 0xBB
    .byte 0x90
    .byte 0xBC
    .byte 0x90
    .byte 0xBD
    .byte 0x90
    .byte 0xBE
    .byte 0x90
    .byte 0xBF
    .byte 0x90
    .byte 0xC0
    .byte 0x90
    .byte 0xC1
    .byte 0x90
    .byte 0xC2
    .byte 0x90
    .byte 0xC3
    .byte 0x90
.endfunc // sub_802C810

.func
.thumb_func
sub_802C85C:
    push {lr}
    ldrb r0, [r5,#0xf]
    tst r0, r0
    beq locret_802C882
    mov r7, r10
    ldr r7, [r7,#0x24]
    ldrh r0, [r7]
    mov r1, #0x10
    and r0, r1
    lsr r0, r0, #4
    lsl r0, r0, #2
    ldr r2, off_802C884 // =off_802C888 
    ldr r2, [r2,r0]
    mov r0, #0xa
    mov r1, #4
    mov r3, #4
    mov r4, #2
    bl sub_802C4B6
locret_802C882:
    pop {pc}
off_802C884:    .word off_802C888
off_802C888:    .word loc_802C890
    .word loc_802C8A0
.endfunc // sub_802C85C

loc_802C890:
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d0]
    str r0, [sp,#0x2d4]
    str r0, [sp,#0x2d4]
    str r0, [sp,#0x2d4]
    str r0, [sp,#0x2d4]
loc_802C8A0:
    str r0, [sp,#0x31c]
    str r0, [sp,#0x320]
    str r0, [sp,#0x324]
    str r0, [sp,#0x328]
    str r0, [sp,#0x32c]
    str r0, [sp,#0x330]
    str r0, [sp,#0x334]
    str r0, [sp,#0x338]
    push {lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#8]
    bl sub_8001532
    lsr r0, r0, #8
    ldr r1, [sp,#8]
    svc 6
    mov r0, #0
    ldr r7, [sp]
loc_802C8C6:
    ldrb r2, [r7,r0]
    sub r1, r1, r2
    blt loc_802C8D0
    add r0, #1
    b loc_802C8C6
loc_802C8D0:
    add sp, sp, #0xc
    pop {pc}
.func
.thumb_func
sub_802C8D4:
    mov r0, #0
    ldrb r1, [r5,#0xc]
    ldrb r2, [r5,#0xd]
    cmp r1, r2
    bge locret_802C8E8
    add r2, r1, r1
    add r2, #0x14
    ldrh r0, [r5,r2]
    add r1, #1
    strb r1, [r5,#0xc]
locret_802C8E8:
    mov pc, lr
.endfunc // sub_802C8D4

.func
.thumb_func
sub_802C8EA:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r2, [r1,#0xd]
    mov r1, #8
    mul r2, r1
    ldr r0, off_802CAFC // =dword_2036820 
    add r0, r0, r2
    mov pc, lr
.endfunc // sub_802C8EA

.func
.thumb_func
sub_802C8FA:
    push {r5-r7,lr}
    add r7, r0, #0
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    bne loc_802C90C
    mov r0, #0
    b loc_802C91A
loc_802C90C:
    bl sub_800A832
    add r2, r0, #0
    mov r0, #1
    cmp r2, #1
    beq loc_802C91A
    mov r0, #2
loc_802C91A:
    strb r0, [r7]
    bl sub_800A704
    str r0, [r7,#4]
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x1e]
    strb r0, [r7,#1]
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    bne loc_802C960
    bl sub_80103EC
    add r5, r0, #0
    ldrb r2, [r5,#0x16]
    mov r1, #1
    eor r2, r1
    lsl r0, r2, #3
    add r0, #0x4c 
    mov r6, r10
    ldr r6, [r6,#0x18]
    add r0, r0, r6
    add r2, #8
    ldrb r1, [r6,r2]
    ldrb r2, [r7,#1]
    ldrh r3, [r5,#0x24]
    ldrh r4, [r5,#0x26]
    ldrb r5, [r5,#0x16]
    bl sub_80AA8E0
    strh r0, [r7,#8]
    strh r1, [r7,#0xa]
    b loc_802C96C
loc_802C960:
    ldrb r0, [r7,#1]
    bl sub_80AAC8C
    strh r0, [r7,#8]
    mov r1, #0
    strh r1, [r7,#0xa]
loc_802C96C:
    mov r2, #0
    tst r0, r0
    beq loc_802C974
    add r2, #1
loc_802C974:
    tst r1, r1
    beq loc_802C97A
    add r2, #1
loc_802C97A:
    strb r2, [r7,#3]
    pop {r5-r7,pc}
.endfunc // sub_802C8FA

.func
.thumb_func
sub_802C97E:
    push {r4,lr}
    mov r4, #0
    bl sub_800A7E2
    bl sub_802CA1E
    cmp r0, #0xff
    beq loc_802C9B2
    mov r4, #2
    ldr r1, off_802CB00 // =unk_20018C0 
    add r0, r0, r0
    ldrh r2, [r1,r0]
    ldr r3, [r5,#0x1c]
    cmp r3, r2
    bge loc_802C99E
    b loc_802C9AE
loc_802C99E:
    mov r4, #1
    ldr r1, off_802CB04 // =unk_2000260 
    ldrh r2, [r1,r0]
    ldr r3, [r5,#0x1c]
    cmp r3, r2
    blt loc_802C9AE
    mov r4, #0
    b loc_802C9B2
loc_802C9AE:
    mov r0, #1
    strb r0, [r5,#0xf]
loc_802C9B2:
    add r0, r4, #0
    strb r0, [r5,#0xe]
    pop {r4,pc}
.endfunc // sub_802C97E

.func
.thumb_func
sub_802C9B8:
    push {r4,lr}
    bl sub_800A704
    add r4, r0, #0
    bl sub_800A7E2
    bl sub_802CA1E
    cmp r0, #0xff
    beq locret_802C9E8
    ldr r1, off_802CB08 // =unk_20018C0 
    add r0, r0, r0
    ldrh r2, [r1,r0]
    cmp r4, r2
    bge loc_802C9DE
    strh r4, [r1,r0]
    ldr r1, off_802CB0C // =unk_2000260 
    strh r4, [r1,r0]
    b locret_802C9E8
loc_802C9DE:
    ldr r1, off_802CB10 // =unk_2000260 
    ldrh r2, [r1,r0]
    cmp r4, r2
    bge locret_802C9E8
    strh r4, [r1,r0]
locret_802C9E8:
    pop {r4,pc}
.endfunc // sub_802C9B8

.func
.thumb_func
sub_802C9EA:
    push {lr}
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    beq locret_802CA1C
    ldr r6, off_802CB14 // =unk_203526C 
    ldr r7, off_802CB18 // =unk_2035260 
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x10]
    tst r0, r0
    beq loc_802CA08
    ldr r6, off_802CB1C // =unk_2035260 
    ldr r7, off_802CB20 // =unk_203526C 
loc_802CA08:
    ldr r0, [r6,#8]
    str r0, [r7,#8]
    ldrh r0, [r6,#8]
    ldr r1, dword_802CB24 // =0xFFFF 
    cmp r0, r1
    bne locret_802CA1C
    ldrb r0, [r7,#1]
    bl sub_80AABA4
    strh r0, [r7,#8]
locret_802CA1C:
    pop {pc}
.endfunc // sub_802C9EA

.func
.thumb_func
sub_802CA1E:
    push {r4,r5,lr}
    mov r1, #1
    eor r0, r1
    mov r1, #8
    mul r0, r1
    add r0, #0x4c 
    mov r5, r10
    ldr r5, [r5,#0x18]
    add r5, r5, r0
    mov r4, #0
loc_802CA32:
    ldrh r0, [r5]
    bl sub_80182B4
    ldrb r1, [r0,#1]
    cmp r1, #1
    bne loc_802CA50
    ldrb r1, [r0,#2]
    cmp r1, #0x14
    bge loc_802CA50
    ldrb r1, [r0]
    cmp r1, #2
    bne loc_802CA50
    ldrb r0, [r0,#2]
    sub r0, #1
    pop {r4,r5,pc}
loc_802CA50:
    add r5, #2
    add r4, #1
    cmp r4, #4
    blt loc_802CA32
    mov r0, #0xff
    pop {r4,r5,pc}
.endfunc // sub_802CA1E

.func
.thumb_func
sub_802CA5C:
    push {lr}
    mov r0, #6
    ldrsb r0, [r5,r0]
    lsl r0, r0, #3
    add r0, #0xd
    ldr r1, dword_802CB28 // =0x1FF 
    and r0, r1
    lsl r0, r0, #0x10
    add r0, #0x15
    ldr r1, dword_802CB2C // =0xFFFF00FF 
    and r0, r1
    ldr r1, dword_802CB30 // =0x40000000 
    add r0, r0, r1
    ldr r1, dword_802CB34 // =0xB200 
    mov r2, #0
    mov r3, #0
    bl sub_8009FF8
    pop {pc}
.endfunc // sub_802CA5C

.func
.thumb_func
sub_802CA82:
    push {r4,lr}
    bl sub_800B6D4
    cmp r0, #0
    beq loc_802CA94
    bl sub_802C54C
    bl sub_802CAA6
loc_802CA94:
    bl sub_800B6E0
    cmp r0, #0
    beq locret_802CAA4
    bl sub_802C54C
    bl sub_802CAA6
locret_802CAA4:
    pop {r4,pc}
.endfunc // sub_802CA82

.func
.thumb_func
sub_802CAA6:
    push {lr}
    cmp r0, #0
    bne loc_802CADE
    add r0, r1, #0
    add r1, r2, #0
    mov r2, #1
    push {r0-r2}
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    beq loc_802CACE
    bl sub_800A832
    cmp r0, #1
    beq loc_802CACE
    cmp r0, #2
    beq loc_802CAD6
    pop {r0-r2}
    pop {pc}
loc_802CACE:
    pop {r0-r2}
    bl dword_8021AEC+2
    pop {pc}
loc_802CAD6:
    pop {r0-r2}
    bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
    pop {pc}
loc_802CADE:
    cmp r0, #1
    bne loc_802CAEA
    add r0, r1, #0
    bl sub_803CFF8
    pop {pc}
loc_802CAEA:
    cmp r0, #2
    bne loc_802CAF0
    pop {pc}
loc_802CAF0:
    cmp r0, #3
    bne locret_802CAFA
    add r0, r1, #0
    bl sub_803D080
locret_802CAFA:
    pop {pc}
off_802CAFC:    .word dword_2036820
off_802CB00:    .word unk_20018C0
off_802CB04:    .word unk_2000260
off_802CB08:    .word unk_20018C0
off_802CB0C:    .word unk_2000260
off_802CB10:    .word unk_2000260
off_802CB14:    .word unk_203526C
off_802CB18:    .word unk_2035260
off_802CB1C:    .word unk_2035260
off_802CB20:    .word unk_203526C
dword_802CB24:    .word 0xFFFF
dword_802CB28:    .word 0x1FF
dword_802CB2C:    .word 0xFFFF00FF
dword_802CB30:    .word 0x40000000
dword_802CB34:    .word 0xB200
.endfunc // sub_802CAA6

.func
.thumb_func
sub_802CB38:
    push {r4,r6,r7,lr}
    ldr r7, off_802CB74 // =dword_203EAD0 
    strh r0, [r7,#0x8] // (word_203EAD8 - 0x203ead0)
    strh r1, [r7,#0xa] // (word_203EADA - 0x203ead0)
    mov r2, #0xff
    cmp r0, r1
    beq loc_802CB4E
    mov r2, #0
    cmp r0, r1
    blt loc_802CB4E
    mov r2, #1
loc_802CB4E:
    strb r2, [r5,#0x10]
    mov r4, #3
    cmp r2, #0xff
    beq loc_802CB66
    add r6, r2, #0
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    mov r4, #2
    eor r0, r6
    beq loc_802CB66
    mov r4, #1
loc_802CB66:
    strb r4, [r7,#0x7] // (byte_203EAD7 - 0x203ead0)
    mov r0, #0
    str r0, [r7]
    strh r0, [r7,#0xc] // (word_203EADC - 0x203ead0)
    strh r0, [r7,#0xe] // (word_203EADE - 0x203ead0)
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_802CB74:    .word dword_203EAD0
.endfunc // sub_802CB38

loc_802CB78:
    push {r5,lr}
    ldr r5, off_802CBA0 // =dword_203EAD0 
    mov r0, #1
    strb r0, [r5,#0x4] // (byte_203EAD4 - 0x203ead0)
    ldr r1, off_802CB90 // =off_802CB94 
    ldrb r0, [r5]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0x4] // (byte_203EAD4 - 0x203ead0)
    ldrb r1, [r5,#0x7] // (byte_203EAD7 - 0x203ead0)
    pop {r5,pc}
off_802CB90:    .word off_802CB94
off_802CB94:    .word sub_802CBA4+1
    .word sub_802CBAC+1
    .word sub_802CCAE+1
off_802CBA0:    .word dword_203EAD0
.func
.thumb_func
sub_802CBA4:
    push {lr}
    mov r0, #4
    str r0, [r5]
    pop {pc}
.endfunc // sub_802CBA4

.func
.thumb_func
sub_802CBAC:
    push {lr}
    ldr r1, off_802CBBC // =off_802CBC0 
    ldrb r0, [r5,#1]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802CBBC:    .word off_802CBC0
off_802CBC0:    .word sub_802CBCC+1
    .word loc_802CBF2+1
    .word sub_802CC8C+1
.endfunc // sub_802CBAC

.func
.thumb_func
sub_802CBCC:
    push {lr}
    ldrh r1, [r5,#8]
    ldrh r2, [r5,#0xa]
    mov r3, r10
    ldr r3, [r3,#0x18]
    ldrb r3, [r3,#0xd]
    tst r3, r3
    beq loc_802CBE2
    add r3, r2, #0
    add r2, r1, #0
    add r1, r3, #0
loc_802CBE2:
    mov r0, #0x28 
    bl loc_801E792
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
    pop {pc}
.endfunc // sub_802CBCC

loc_802CBF2:
    push {lr}
    ldr r1, off_802CC00 // =loc_802CC04 
    ldrb r0, [r5,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_802CC00:    .word loc_802CC04
loc_802CC04:
    ldmia r4, {r0,r4}
    lsr r2, r0, #0x20
    ldmia r4, {r0,r1,r3,r4}
    lsr r2, r0, #0x20
    ldmia r4, {r0,r4,r6}
    lsr r2, r0, #0x20
    mov r0, #0x3c 
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#2]
    mov pc, lr
    push {lr}
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    beq loc_802CC3E
    bl sub_8001532
    add r4, r0, #0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    ldr r1, dword_802CC4C // =0x270E 
    svc 6
    strh r1, [r5,#0xc]
    lsr r0, r4, #0x10
    ldr r1, dword_802CC4C // =0x270E 
    svc 6
    strh r1, [r5,#0xe]
    b loc_802CC42
loc_802CC3E:
    mov r0, #8
    strh r0, [r5,#2]
loc_802CC42:
    ldrh r0, [r5,#0xc]
    ldrh r1, [r5,#0xe]
    bl sub_801E914
    pop {pc}
dword_802CC4C:    .word 0x270E
    push {lr}
    ldrb r0, [r5,#3]
    tst r0, r0
    bne loc_802CC60
    mov r0, #0x78 
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#3]
loc_802CC60:
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    beq loc_802CC82
    ldrh r0, [r5,#8]
    ldrh r1, [r5,#0xa]
    mov r2, r10
    ldr r2, [r2,#0x18]
    ldrb r2, [r2,#0xd]
    tst r2, r2
    beq loc_802CC7C
    add r2, r1, #0
    add r1, r0, #0
    add r0, r2, #0
loc_802CC7C:
    bl sub_801E914
    b locret_802CC8A
loc_802CC82:
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strh r0, [r5,#2]
locret_802CC8A:
    pop {pc}
.func
.thumb_func
sub_802CC8C:
    push {lr}
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802CCA0
    bl sub_801E780
    mov r0, #0x1e
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#2]
loc_802CCA0:
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bne locret_802CCAC
    mov r0, #8
    str r0, [r5]
locret_802CCAC:
    pop {pc}
.endfunc // sub_802CC8C

.func
.thumb_func
sub_802CCAE:
    mov r0, #0
    strb r0, [r5,#4]
    mov pc, lr
off_802CCB4:    .word sub_80E07E0+1
    .word sub_80E7546+1
    .word sub_80E2F24+1
    .word sub_80E2566+1
    .word sub_80E3B50+1
    .word sub_80E2B5A+1
    .word sub_80E46B6+1
    .word sub_80E7464+1
    .word sub_80E3128+1
    .word sub_80E5EA8+1
    .word sub_80E3242+1
    .word sub_80E349E+1
    .word sub_80E59C6+1
    .word sub_80E5F78+1
    .word sub_80E67E6+1
    .word sub_80E2D76+1
    .word sub_80E4288+1
    .word sub_80E4164+1
    .word sub_80E76D4+1
    .word sub_80E7600+1
    .word sub_80E353E+1
    .word sub_80E7008+1
    .word sub_80E7FBA+1
    .word sub_80E70A6+1
    .word sub_80E723E+1
    .word sub_80E24B8+1
    .word sub_80E49A2+1
    .word sub_80E64E8+1
    .word sub_80E7CA8+1
    .word sub_80E7F16+1
    .word sub_80E8058+1
    .word sub_80E81B4+1
    .word sub_80E8BC0+1
    .word sub_80E8ADC+1
    .word 0x0, 0x0
    .word sub_80E91B8+1
    .word sub_80E943E+1
    .word sub_80E979C+1
    .word 0x0, 0x0
    .word sub_80E92EE+1
off_802CD5C:    .word sub_80C0DD8+1
    .word sub_80C2A4C+1
    .word sub_80B921A+1
    .word sub_80B9432+1
    .word sub_80BA1B0+1
    .word sub_80BB7F6+1
    .word sub_80BBAC6+1
    .word sub_80B9750+1
    .word sub_80B999A+1
    .word sub_80B9F0E+1
    .word sub_80BBDE8+1
    .word sub_80BC0DA+1
    .word sub_80B9014+1
    .word sub_80B9B6E+1
    .word sub_80BA660+1
    .word sub_80BA920+1
    .word sub_80BAE16+1
    .word sub_80B84EC+1
    .word 0x0, 0x0
    .word sub_80BD9A2+1
    .word sub_80BE3E8+1
    .word sub_80BF160+1
    .word sub_80EA11C+1
    .word sub_80BFCD0+1
    .word sub_80BF6AE+1
    .word sub_80C3B30+1
    .word sub_80C3E98+1
    .word sub_80C2F96+1
.endfunc // sub_802CCAE

.func
.thumb_func
sub_802CDD0:
    ldr r0, off_802CE50 // =dword_203CFB0 
    ldrb r1, [r5,#0x16]
    tst r1, r1
    beq loc_802CDDA
    add r0, #0xc
loc_802CDDA:
    ldr r1, [r0,#8]
    cmp r1, r5
    bne locret_802CDE4
    mov r1, #0
    str r1, [r0,#8]
locret_802CDE4:
    mov pc, lr
.endfunc // sub_802CDD0

.func
.thumb_func
sub_802CDE6:
    ldr r0, off_802CE50 // =dword_203CFB0 
    ldrb r1, [r5,#0x16]
    tst r1, r1
    bne loc_802CDF0
    add r0, #0xc
loc_802CDF0:
    ldr r1, [r0,#4]
    cmp r1, r5
    bne locret_802CDFC
    mov r1, #0
    str r1, [r0,#4]
    str r1, [r0,#8]
locret_802CDFC:
    mov pc, lr
.endfunc // sub_802CDE6

.func
.thumb_func
sub_802CDFE:
    ldr r0, off_802CE50 // =dword_203CFB0 
    ldr r1, [r0]
    lsl r1, r1, #0x10
    str r1, [r0]
    add r0, #0xc
    ldr r1, [r0]
    lsl r1, r1, #0x10
    str r1, [r0]
    mov pc, lr
.endfunc // sub_802CDFE

.func
.thumb_func
sub_802CE10:
    ldr r1, off_802CE50 // =dword_203CFB0 
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_802CE1A
    add r1, #0xc
loc_802CE1A:
    ldr r2, [r1,#8]
    cmp r5, r2
    bne loc_802CE26
    ldrh r3, [r1,#2]
    add r0, r0, r3
    mov pc, lr
loc_802CE26:
    ldrh r3, [r1]
    cmp r0, r3
    bls locret_802CE2E
    strh r0, [r1]
locret_802CE2E:
    mov pc, lr
.endfunc // sub_802CE10

.func
.thumb_func
sub_802CE30:
    ldr r0, off_802CE50 // =dword_203CFB0 
    ldrb r1, [r5,#0x16]
    tst r1, r1
    bne loc_802CE3A
    add r0, #0xc
loc_802CE3A:
    ldr r1, [r0,#4]
    cmp r1, r5
    bne loc_802CE4A
    ldr r1, [r0,#8]
    tst r1, r1
    beq loc_802CE4A
    mov r0, #1
    mov pc, lr
loc_802CE4A:
    mov r0, #0
    mov pc, lr
    .byte 0, 0
off_802CE50:    .word dword_203CFB0
.endfunc // sub_802CE30

.func
.thumb_func
sub_802CE54:
    push {lr}
    // memBlock
    ldr r0, off_802D020 // =unk_2036720 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
.endfunc // sub_802CE54

.func
.thumb_func
sub_802CE60:
    mov r1, r10
    ldr r1, [r1,#0x18]
    ldrb r1, [r1,#0xd]
    eor r0, r1
    mov r1, #0x10
    mul r0, r1
    ldr r1, off_802D024 // =unk_2036720 
    add r0, r0, r1
    ldr r1, [r0,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    mov pc, lr
.endfunc // sub_802CE60

.func
.thumb_func
sub_802CE78:
    mov r1, #0x10
    mul r0, r1
    ldr r1, off_802D028 // =unk_2036720 
    add r0, r0, r1
    ldr r3, [r0,#8]
    ldr r1, [r0,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    mov pc, lr
.endfunc // sub_802CE78

.func
.thumb_func
sub_802CE8A:
    push {r4-r6,lr}
    add r6, r2, #0
    add r5, r3, #0
    ldrb r2, [r0,#0x16]
    mov r3, #0x10
    mul r2, r3
    ldr r3, off_802D02C // =unk_2036720 
    add r3, r3, r2
    strh r1, [r3]
    str r6, [r3,#4]
    strh r5, [r3,#2]
    str r0, [r3,#8]
    str r4, [r3,#0xc]
    pop {r4-r6,pc}
.endfunc // sub_802CE8A

.func
.thumb_func
sub_802CEA6:
    mov r1, #0x10
    mul r1, r0
    ldr r0, off_802D030 // =unk_2036720 
    add r0, r0, r1
    mov r1, #0
    strh r1, [r0]
    strh r1, [r0,#4]
    strh r1, [r0,#2]
    str r1, [r0,#8]
    ldr r1, [r0,#0xc]
    tst r1, r1
    beq locret_802CEC6
    mov r2, #1
    strb r2, [r1,#5]
    mov r1, #0
    str r1, [r0,#0xc]
locret_802CEC6:
    mov pc, lr
.endfunc // sub_802CEA6

.func
.thumb_func
sub_802CEC8:
    push {lr}
    ldr r4, off_802D034 // =unk_2036720 
    ldr r0, [r4,#0x8] // (dword_2036728 - 0x2036720)
    tst r0, r0
    beq loc_802CEDE
    ldrh r1, [r0,#0x24]
    tst r1, r1
    bne loc_802CEDE
    ldrb r0, [r0,#0x16]
    bl sub_802CEA6
loc_802CEDE:
    add r4, #0x10
    ldr r0, [r4,#0x8] // (dword_2036738 - 0x2036730)
    tst r0, r0
    beq locret_802CEF2
    ldrh r1, [r0,#0x24]
    tst r1, r1
    bne locret_802CEF2
    ldrb r0, [r0,#0x16]
    bl sub_802CEA6
locret_802CEF2:
    pop {pc}
.endfunc // sub_802CEC8

.func
.thumb_func
sub_802CEF4:
    push {r4,r6,r7,lr}
    ldr r4, [r5,#0x54]
    bl sub_801032C
    ldr r1, dword_802D038 // =0x200000 
    tst r0, r1
    beq loc_802CF30
    mov r1, #0x84
    ldrh r1, [r4,r1]
    cmp r1, #0
    bne loc_802CF30
    mov r0, #0x82
    add r0, r0, r4
    ldrh r2, [r0]
    ldrh r1, [r0,#4]
    orr r2, r1
    ldrh r1, [r0,#6]
    orr r2, r1
    ldrh r1, [r0,#8]
    orr r2, r1
    cmp r2, #0
    beq loc_802CFB8
    ldr r3, [r5,#0x58]
    add r3, #0xa0
    mov r0, #1
    str r0, [r3,#0x30]
    mov r0, #0x6e 
    bl sound_play
    b loc_802CFB8
loc_802CF30:
    mov r6, #0xa
    ldrb r0, [r5,#0x16]
    bl sub_802CE78
    add r7, r0, #0
    cmp r0, #0xbb
    beq loc_802CF56
    ldr r1, dword_802D03C // =0x157 
    cmp r0, r1
    beq loc_802CF56
    push {r0}
    bl sub_801032C
    ldr r1, off_802D040 // =0x800 
    tst r0, r1
    pop {r0}
    beq loc_802CF96
    mov r7, #0xbb
    mov r6, #1
loc_802CF56:
    bl sub_800FFFE
    ldr r1, dword_802D044 // =0x8200 
    tst r0, r1
    bne loc_802CFB8
    ldr r0, [r4,#0x70]
    ldr r1, dword_802D048 // =0xFF800000 
    tst r0, r1
    beq locret_802CFF6
    mov r0, #0x82
    add r0, r0, r4
    ldrh r2, [r0]
    ldrh r1, [r0,#2]
    add r2, r2, r1
    ldrh r1, [r0,#4]
    add r2, r2, r1
    ldrh r1, [r0,#6]
    add r2, r2, r1
    ldrh r1, [r0,#8]
    add r2, r2, r1
    cmp r2, r6
    bge loc_802CF88
    cmp r6, #1
    beq loc_802CFB8
    b locret_802CFF6
loc_802CF88:
    ldr r0, off_802D04C // =0x200 
    cmp r7, #0xbb
    beq loc_802CF90
    ldr r0, dword_802D050 // =0x8000 
loc_802CF90:
    bl sub_800FFE4
    b loc_802CFB8
loc_802CF96:
    cmp r0, #0xbc
    bne locret_802CFF6
    bl sub_800FFFE
    ldr r1, off_802D054 // =0x400 
    tst r0, r1
    bne loc_802CFB8
    ldr r0, [r4,#0x70]
    ldr r1, off_802D058 // =0x2000 
    tst r0, r1
    beq locret_802CFF6
    ldr r1, dword_802D05C // =0x20000 
    tst r0, r1
    bne locret_802CFF6
    ldr r0, off_802D054 // =0x400 
    bl sub_800FFE4
loc_802CFB8:
    mov r0, #0
    mov r1, #0x82
    add r1, r1, r4
    strh r0, [r1]
    strh r0, [r1,#2]
    strh r0, [r1,#4]
    strh r0, [r1,#6]
    strh r0, [r1,#8]
    mov r1, #0x8e
    strh r0, [r4,r1]
    mov r1, #0x90
    strh r0, [r4,r1]
    mov r1, #0x92
    strh r0, [r4,r1]
    mov r1, #0x74 
    str r0, [r4,r1]
    strb r0, [r4,#0xf]
    strb r0, [r4,#0x11]
    mov r1, #0xa4
    strh r0, [r4,r1]
    strh r0, [r4,#0x1c]
    strh r0, [r4,#0x2a]
    strh r0, [r4,#0x2c]
    mov r1, #0x40 
    ldr r0, [r4,#0x70]
    bic r0, r1
    str r0, [r4,#0x70]
    ldr r1, dword_802D060 // =0x301BE 
    ldr r0, [r4,#0x40]
    bic r0, r1
    str r0, [r4,#0x40]
locret_802CFF6:
    pop {r4,r6,r7,pc}
.endfunc // sub_802CEF4

.func
.thumb_func
sub_802CFF8:
    push {r4,lr}
    ldr r4, [r5,#0x54]
    mov r1, #0x76 
    ldrb r0, [r4,r1]
    mov r1, #0x40 
    tst r0, r1
    beq locret_802D01C
    ldrb r0, [r5,#0x16]
    bl sub_802CE78
    cmp r0, #0
    beq locret_802D01C
    ldrb r0, [r5,#0x16]
    bl sub_802CEA6
    mov r0, #0x8e
    bl sound_play
locret_802D01C:
    pop {r4,pc}
    .byte 0, 0
off_802D020:    .word unk_2036720
off_802D024:    .word unk_2036720
off_802D028:    .word unk_2036720
off_802D02C:    .word unk_2036720
off_802D030:    .word unk_2036720
off_802D034:    .word unk_2036720
dword_802D038:    .word 0x200000
dword_802D03C:    .word 0x157
off_802D040:    .word 0x800
dword_802D044:    .word 0x8200
dword_802D048:    .word 0xFF800000
off_802D04C:    .word 0x200
dword_802D050:    .word 0x8000
off_802D054:    .word 0x400
off_802D058:    .word 0x2000
dword_802D05C:    .word 0x20000
dword_802D060:    .word 0x301BE
.endfunc // sub_802CFF8

.func
.thumb_func
sub_802D064:
    mov r1, #0x20 
    mul r0, r1
    ldr r1, off_802D214 // =unk_203C4A0 
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
.endfunc // sub_802D064

.func
.thumb_func
sub_802D070:
    push {lr}
    bl sub_802D064
    push {r0}
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r3}
    mov r0, #0
    strb r0, [r3,#0x10]
    mov r0, #0x64 
    strb r0, [r3,#0xd]
    strb r0, [r3,#0xf]
    pop {pc}
.endfunc // sub_802D070

.func
.thumb_func
sub_802D08C:
    push {lr}
    bl sub_802D064
    mov r1, #0
    strb r1, [r0,#0x10]
    mov r1, #0x64 
    strb r1, [r0,#0xd]
    strb r1, [r0,#0xf]
    pop {pc}
.endfunc // sub_802D08C

    push {r4,r6,lr}
    add r6, r0, #0
    add r4, r1, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r3, #0x10
    lsl r3, r3, #0x10
    mul r3, r4
    add r0, r4, #0
    add r0, r6, #0
    mov r1, #7
    bl sub_800AB46
    pop {r4,r6,pc}
    push {lr}
    bl sub_802D064
    mov r1, #0
    str r1, [r0]
    str r1, [r0,#4]
    pop {pc}
    push {r4,r7,lr}
    sub sp, sp, #0x10
    bl sub_802D064
    add r7, r0, #0
    bl sub_800A7E2
    bl sub_80103BC
    add r2, r0, #0
    ldrh r0, [r2,#0x24]
    mov r1, #0x64 
    mul r0, r1
    ldrh r1, [r2,#0x26]
    sub r2, r1, #1
    add r0, r0, r2
    svc 6
    strb r0, [r7,#0xc]
    bl sub_800A7E2
    mov r3, #1
    eor r3, r0
    ldr r1, dword_802D218 // =0x17F 
    ldr r2, dword_802D218 // =0x17F 
    add r0, sp, #0
    bl object_getEnemyByNameRange
    tst r0, r0
    beq loc_802D112
    ldr r2, [sp]
    ldrh r0, [r2,#0x24]
    mov r1, #0x64 
    mul r0, r1
    ldrh r1, [r2,#0x26]
    sub r2, r1, #1
    add r0, r0, r2
    svc 6
loc_802D112:
    strb r0, [r7,#0xe]
    add sp, sp, #0x10
    pop {r4,r7,pc}
    push {r6,r7,lr}
    bl sub_802D064
    add r7, r0, #0
    bl sub_800A856
    mov r1, #0
    cmp r0, #0
    beq loc_802D138
    mov r1, #1
    cmp r0, #2
    beq loc_802D138
    mov r1, #2
    cmp r0, #1
    beq loc_802D138
    mov r1, #0
loc_802D138:
    strb r1, [r7,#0x11]
    strb r1, [r7,#0x10]
    bl sub_800A70C
    strh r0, [r7,#0x14]
    pop {r6,r7,pc}
    push {lr}
    bl sub_802D064
    mov r1, #0
    strb r1, [r0,#8]
    pop {pc}
.func
.thumb_func
sub_802D150:
    ldr r1, off_802D21C // =dword_2006740 
    mov r0, #0
    str r0, [r1]
    mov pc, lr
.endfunc // sub_802D150

.func
.thumb_func
sub_802D158:
    ldr r1, off_802D220 // =dword_2006740 
    str r0, [r1]
    mov pc, lr
.endfunc // sub_802D158

.func
.thumb_func
sub_802D15E:
    ldr r1, off_802D224 // =dword_2006740 
    ldr r0, [r1]
    mov pc, lr
.endfunc // sub_802D15E

    ldr r1, off_802D228 // =dword_2006740 
    ldr r2, [r1]
    add r2, r2, r0
    ldr r3, dword_802D22C // =0xF423F 
    cmp r2, r3
    ble loc_802D172
    add r2, r3, #0
loc_802D172:
    str r2, [r1]
    mov pc, lr
    ldr r1, off_802D230 // =dword_2006740 
    ldr r2, [r1]
    sub r2, r2, r0
    bge loc_802D180
    mov r2, #0
loc_802D180:
    str r2, [r1]
    mov pc, lr
    push {r4,r7,lr}
    add r4, r0, #0
    mov r7, #0
    bl sub_800A832
    cmp r0, #1
    bne loc_802D194
    add r7, #0xa
loc_802D194:
    add r0, r4, #0
    mov r1, #9
    bl sub_800AB3A
    tst r0, r0
    beq loc_802D1A2
    add r7, #0xa
loc_802D1A2:
    add r0, r4, #0
    mov r1, #7
    bl sub_800AB3A
    mov r1, #2
    mul r0, r1
    add r7, r7, r0
    add r0, r7, #0
    pop {r4,r7,pc}
.func
.thumb_func
sub_802D1B4:
    push {lr}
    bl sub_802D064
    ldrb r0, [r0,#0xd]
    pop {pc}
.endfunc // sub_802D1B4

.func
.thumb_func
sub_802D1BE:
    push {lr}
    bl sub_802D064
    ldrb r0, [r0,#0xf]
    pop {pc}
.endfunc // sub_802D1BE

    push {r4,r5,lr}
    mov r1, #0xc
    mul r0, r1
    add r0, #0x84
    mov r4, r10
    ldr r4, [r4,#0x18]
    add r4, r4, r0
    mov r5, #0
loc_802D1D8:
    ldr r0, [r4]
    tst r0, r0
    beq loc_802D1E2
    bl sub_800EC3C
loc_802D1E2:
    add r4, #4
    add r5, #1
    cmp r5, #3
    blt loc_802D1D8
    pop {r4,r5,pc}
    push {lr}
    bl sub_800A7E2
    bl sub_802D064
    ldrb r1, [r0,#0x12]
    cmp r1, #0
    bne loc_802D1FE
    pop {pc}
loc_802D1FE:
    cmp r1, #2
    bne loc_802D208
    mov r2, #0
    strb r2, [r0,#0xd]
    pop {pc}
loc_802D208:
    cmp r1, #1
    bne locret_802D212
    mov r2, #0
    strb r2, [r0,#0xf]
    pop {pc}
locret_802D212:
    pop {pc}
off_802D214:    .word unk_203C4A0
dword_802D218:    .word 0x17F
off_802D21C:    .word dword_2006740
off_802D220:    .word dword_2006740
off_802D224:    .word dword_2006740
off_802D228:    .word dword_2006740
dword_802D22C:    .word 0xF423F
off_802D230:    .word dword_2006740
.func
.thumb_func
sub_802D234:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    bl sub_802D242
    pop {pc}
.endfunc // sub_802D234

.func
.thumb_func
sub_802D242:
    ldrb r0, [r0,#3]
    mov pc, lr
.endfunc // sub_802D242

.func
.thumb_func
// () -> int
get_802D246:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18] // Toolkit.unk_2034880
    ldr r0, [r0,#0x3c]
    bl sub_802D254 // () -> int
    pop {pc}
.endfunc // get_802D246

.func
.thumb_func
// () -> int
sub_802D254:
    ldr r0, [r0,#8]
    mov pc, lr
.endfunc // sub_802D254

.func
.thumb_func
sub_802D258:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    bl sub_802D266
    pop {pc}
.endfunc // sub_802D258

.func
.thumb_func
sub_802D266:
    ldrb r0, [r0,#1]
    mov pc, lr
.endfunc // sub_802D266

.func
.thumb_func
sub_802D26A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x3c]
    bl sub_802D278
    pop {pc}
.endfunc // sub_802D26A

.func
.thumb_func
sub_802D278:
    ldrb r0, [r0,#6]
    mov pc, lr
.endfunc // sub_802D278

.func
.thumb_func
sub_802D27C:
    ldr r0, off_802D2E4 // =unk_200AF60 
    mov pc, lr
.endfunc // sub_802D27C

.func
.thumb_func
sub_802D280:
    push {lr}
    ldr r1, off_802D2E8 // =unk_200AF60 
    mov r2, #0x10
    bl CpuSet_800093C
    pop {pc}
.endfunc // sub_802D280

.func
.thumb_func
sub_802D28C:
    ldr r1, off_802D2EC // =unk_200AF60 
    ldr r2, [r1,#0x8] // (dword_200AF68 - 0x200af60)
    orr r2, r0
    str r2, [r1,#0x8] // (dword_200AF68 - 0x200af60)
    mov pc, lr
.endfunc // sub_802D28C

    ldr r1, off_802D2F0 // =unk_200AF60 
    ldr r2, [r1,#0x8] // (dword_200AF68 - 0x200af60)
    bic r2, r0
    str r2, [r1,#0x8] // (dword_200AF68 - 0x200af60)
    mov pc, lr
.func
.thumb_func
sub_802D2A0:
    ldr r1, off_802D2F4 // =unk_200AF60 
    ldr r0, [r1,#0x8] // (dword_200AF68 - 0x200af60)
    mov pc, lr
.endfunc // sub_802D2A0

.func
.thumb_func
sub_802D2A6:
    ldr r1, off_802D2F8 // =unk_200AF60 
    str r0, [r1,#0x8] // (dword_200AF68 - 0x200af60)
    mov pc, lr
.endfunc // sub_802D2A6

.func
.thumb_func
sub_802D2AC:
    ldr r1, off_802D2FC // =unk_200AF60 
    strb r0, [r1,#0x4] // (byte_200AF64 - 0x200af60)
    mov pc, lr
.endfunc // sub_802D2AC

.func
.thumb_func
sub_802D2B2:
    push {r4,r6,r7,lr}
    bl sub_802D2A0
    add r4, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x18]
    ldrb r0, [r7,#0x1a]
    sub r0, #1
    add r0, r0, r0
    ldr r6, off_802D300 // =dword_203CA50 
    add r6, r6, r0
    ldrb r0, [r6]
    bl getBattleSettingsFromList1
    bl sub_802D280
    add r0, r4, #0
    bl sub_802D2A6
    ldrb r0, [r6,#1]
    bl sub_802D2AC
    bl sub_802D27C
    pop {r4,r6,r7,pc}
off_802D2E4:    .word unk_200AF60
off_802D2E8:    .word unk_200AF60
off_802D2EC:    .word unk_200AF60
off_802D2F0:    .word unk_200AF60
off_802D2F4:    .word unk_200AF60
off_802D2F8:    .word unk_200AF60
off_802D2FC:    .word unk_200AF60
off_802D300:    .word dword_203CA50
    .word 0, 0
    .byte 0, 0, 0, 0
.endfunc // sub_802D2B2

.func
.thumb_func
sub_802D310:
    ldr r0, [r5,#0x58]
    sub r0, #0xf
    add r0, #0xff
    mov r1, #0
    str r1, [r0]
    str r1, [r0,#4]
    str r1, [r0,#8]
    str r1, [r0,#0xc]
    mov pc, lr
.endfunc // sub_802D310

loc_802D322:
    push {r4,r6,r7,lr}
    ldr r6, [r5,#0x58]
    sub r6, #0xf
    add r6, #0xff
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    ldrb r0, [r6,#8]
    cmp r0, #0
    bne loc_802D33C
    mov r0, #1
    strb r0, [r6,#8]
    mov r0, #8
    strh r0, [r6]
loc_802D33C:
    ldr r1, off_802D348 // =off_802D34C 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,r7,pc}
off_802D348:    .word off_802D34C
off_802D34C:    .word sub_802D358+1
    .word sub_802D3A8+1
    .word sub_802D3CA+1
.func
.thumb_func
sub_802D358:
    push {r4,lr}
    ldrh r0, [r6,#4]
    cmp r0, #3
    bgt loc_802D37A
    bl sub_80E164A
    ldrb r2, [r5,#0x16]
    bl sub_80E7486
    add r4, r0, #0
    beq loc_802D37A
    ldr r0, [r4,#0x54]
    ldr r0, [r0,#0x3c]
    mov r1, #1
    lsl r1, r1, #9
    tst r0, r1
    bne loc_802D3A0
loc_802D37A:
    bl sub_8010004
    ldr r3, dword_802D628 // =0xFFFF 
    cmp r0, r3
    beq loc_802D3A0
    mov r0, #4
    bl sub_800FFE4
    bl sub_800FB54
    ldr r3, dword_802D628 // =0xFFFF 
    cmp r0, r3
    beq loc_802D3A0
    mov r0, #0
    strh r0, [r6,#4]
    mov r0, #8
    strh r0, [r6]
    mov r0, #1
    b locret_802D3A6
loc_802D3A0:
    mov r0, #4
    strh r0, [r6]
    mov r0, #0
locret_802D3A6:
    pop {r4,pc}
.endfunc // sub_802D358

.func
.thumb_func
sub_802D3A8:
    push {lr}
    mov r0, #8
    strh r0, [r6]
    ldrh r0, [r6,#4]
    cmp r0, #2
    bgt loc_802D3BE
    ldrb r0, [r5,#0x13]
    bl sub_810971A
    cmp r0, #0
    beq loc_802D3C6
loc_802D3BE:
    mov r0, #0
    strh r0, [r6,#4]
    mov r0, #2
    b locret_802D3C8
loc_802D3C6:
    mov r0, #0
locret_802D3C8:
    pop {pc}
.endfunc // sub_802D3A8

.func
.thumb_func
sub_802D3CA:
    push {lr}
    bl object_getFlag
    ldr r3, off_802D62C // =dword_802D410 
    mov r1, #0x10
    tst r0, r1
    beq loc_802D3DA
    ldr r3, off_802D630 // =dword_802D410+16 
loc_802D3DA:
    bl sub_81096FA
    bl sub_802D430
.endfunc // sub_802D3CA

    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    mov r0, #0
    str r0, [r7,#0x2c]
    str r0, [r7,#0x30]
    mov r1, #8
    mov r2, #2
    mov r0, #5
    bl sub_80116AE
    ldrh r0, [r6,#4]
    add r0, #1
    strh r0, [r6,#4]
    mov r0, #0
    strh r0, [r6]
    mov r0, #3
    pop {pc}
    .word 0, 0
    .byte 0, 0, 0, 0
dword_802D410:    .word 0x10, 0xF8800A0, 0x30, 0xF880080, 0x0
    .word 0xF8800A0, 0x20, 0xF880080
.func
.thumb_func
sub_802D430:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x20
    str r2, [sp]
    str r3, [sp,#4]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
.endfunc // sub_802D430

    add r7, sp, #8
    mov r4, #1
    mov r6, #0
loc_802D446:
    add r0, r4, #0
    bl sub_810971A
    cmp r0, #0
    beq loc_802D46C
    ldr r2, [sp]
    ldr r3, [sp,#4]
    push {r4}
    mov r4, #0
    bl sub_8015CC0
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r7]
    cmp r0, #0
    beq loc_802D468
    add r6, #1
loc_802D468:
    add r7, #1
    pop {r4}
loc_802D46C:
    add r4, #1
    cmp r4, #3
    ble loc_802D446
    cmp r6, #0
    bne loc_802D4A4
    add r7, sp, #8
    mov r4, #1
    mov r6, #0
loc_802D47C:
    add r0, r4, #0
    bl sub_810971A
    cmp r0, #0
    beq loc_802D494
    add r0, r4, #0
    ldr r2, [sp]
    ldr r3, [sp,#4]
    bl sub_800D012
    add r6, r6, r0
    add r7, r7, r0
loc_802D494:
    add r4, #1
    cmp r4, #3
    ble loc_802D47C
    cmp r6, #0
    bne loc_802D4A4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    b loc_802D4B6
loc_802D4A4:
    bl sub_8001532
    add r1, r6, #0
    svc 6
    add r0, sp, #8
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_802D4B6:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    pop {r0,r1}
    add sp, sp, #0x20
    pop {r4,r6,r7,pc}
loc_802D4C6:
    push {r4,r6,r7,lr}
    ldr r6, [r5,#0x58]
    sub r6, #0xf
    add r6, #0xff
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    ldr r1, off_802D4E0 // =off_802D4E4 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,r7,pc}
    .byte 0, 0
off_802D4E0:    .word off_802D4E4
off_802D4E4:    .word sub_802D4F0+1
    .word sub_802D588+1
    .word sub_802D3CA+1
.func
.thumb_func
sub_802D4F0:
    push {r4,lr}
    ldrb r0, [r6,#8]
    cmp r0, #0
    bne loc_802D504
    mov r0, #1
    strb r0, [r6,#8]
    mov r0, #0x83
    add r0, #0xff
    bl sound_play
loc_802D504:
    ldrh r0, [r6,#4]
    cmp r0, #3
    bgt loc_802D524
    bl sub_80E164A
    ldrb r2, [r5,#0x16]
    bl sub_80E7486
    add r4, r0, #0
    beq loc_802D524
    ldr r0, [r4,#0x54]
    ldr r0, [r0,#0x3c]
    mov r1, #1
    lsl r1, r1, #9
    tst r0, r1
    bne loc_802D56C
loc_802D524:
    mov r0, #0
    strh r0, [r6,#4]
    bl sub_802D5A8
    strh r0, [r7,#0x14]
    bl refIndex_8021DA8 // (int idx) -> void*
    add r4, r0, #0
    ldrb r1, [r4,#0xc]
    strb r1, [r7,#3]
    ldr r1, [r4,#0x10]
    str r1, [r7,#0xc]
    ldrh r1, [r4,#0x1a]
    strh r1, [r7,#8]
    ldrb r1, [r4,#0xa]
    mov r0, #0x80
    orr r1, r0
    strh r1, [r7,#0xa]
    ldrh r0, [r7,#0x14]
    ldr r1, dword_802D634 // =0x153 
    cmp r0, r1
    bne loc_802D55A
    // idx
    mov r0, #0x52 
    bl refIndex_8021DA8 // (int idx) -> void*
    ldrh r1, [r0,#0x1a]
    strh r1, [r7,#8]
loc_802D55A:
    ldrb r0, [r4,#0xb]
    bl loc_8011694
    ldrb r0, [r4,#0xf]
    strb r0, [r7,#0x1d]
    mov r0, #8
    strh r0, [r6]
    mov r0, #1
    b locret_802D586
loc_802D56C:
    mov r0, #4
    strh r0, [r6]
    mov r1, #0x2c 
    bl sub_8013774
    mov r1, #6
    cmp r0, #0xb
    beq loc_802D580
    cmp r0, #0xc
    bne loc_802D582
loc_802D580:
    mov r0, #2
loc_802D582:
    strh r0, [r6,#6]
    mov r0, #0
locret_802D586:
    pop {r4,pc}
.endfunc // sub_802D4F0

.func
.thumb_func
sub_802D588:
    push {lr}
    ldrb r0, [r5,#0x13]
    bl sub_810971A
.endfunc // sub_802D588

    cmp r0, #0
    beq loc_802D5A0
    ldrh r0, [r6,#6]
    sub r0, #1
    strh r0, [r6,#6]
    beq loc_802D5A0
    mov r0, #2
    b locret_802D5A6
loc_802D5A0:
    mov r0, #8
    strh r0, [r6]
    mov r0, #0
locret_802D5A6:
    pop {pc}
.func
.thumb_func
sub_802D5A8:
    push {r4,r6,lr}
    mov r1, #0x3e 
    bl sub_8013790
    mov r1, #0x64 
    svc 6
    mov r1, #0
    cmp r0, #1
    ble loc_802D5C2
    sub r1, r0, #1
    cmp r1, #9
    ble loc_802D5C2
    mov r1, #9
loc_802D5C2:
    add r6, r1, #0
    mov r0, #6
    mul r0, r1
    ldr r4, off_802D5E0 // =dword_802D5E4 
    add r4, r4, r0
    bl sub_8001532
    mov r1, #3
    cmp r6, #9
    bne loc_802D5D8
    mov r1, #6
loc_802D5D8:
    svc 6
    lsl r1, r1, #1
    ldrh r0, [r4,r1]
    pop {r4,r6,pc}
off_802D5E0:    .word dword_802D5E4
dword_802D5E4:    .word 0x360001, 0x10048, 0x480037, 0x380002, 0xC0049, 0x4C0015
    .word 0x190003, 0xD004D, 0x4E0020, 0x290010, 0xE004F, 0x540034
    .word 0x32000E, 0x160153, 0x21001A, 0x8002A, 0x153
dword_802D628:    .word 0xFFFF
off_802D62C:    .word dword_802D410
off_802D630:    .word dword_802D410+0x10
dword_802D634:    .word 0x153
.endfunc // sub_802D5A8

.func
.thumb_func
sub_802D638:
    push {lr}
    // memBlock
    ldr r0, off_802D68C // =unk_2000070 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
.endfunc // sub_802D638

.func
.thumb_func
sub_802D644:
    ldr r1, off_802D690 // =unk_2000070 
    ldrb r2, [r1,r0]
    add r2, #1
    cmp r2, #0xff
    bgt locret_802D650
    strb r2, [r1,r0]
locret_802D650:
    mov pc, lr
.endfunc // sub_802D644

.func
.thumb_func
sub_802D652:
    ldr r1, off_802D694 // =unk_2000070 
    ldrb r0, [r1,r0]
    mov pc, lr
.endfunc // sub_802D652

    ldr r2, off_802D698 // =unk_2000070 
    strb r1, [r2,r0]
    mov pc, lr
.func
.thumb_func
sub_802D65E:
    push {r4,lr}
    add r4, r0, #0
    mov r0, #1
    mov r1, #0xd8
    bl sub_802F164 // (int a1, int a2) -> zf
    beq locret_802D68A
    ldr r1, dword_802D69C // =0x196 
    add r1, r1, r4
    add r0, r1, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne locret_802D68A
    cmp r4, #0xd
    beq locret_802D68A
    cmp r4, #0xa
    beq locret_802D68A
    mov r0, #0
    mov r1, #0xa
    add r2, r4, #0
    bl sub_800AB2E
locret_802D68A:
    pop {r4,pc}
off_802D68C:    .word unk_2000070
off_802D690:    .word unk_2000070
off_802D694:    .word unk_2000070
off_802D698:    .word unk_2000070
dword_802D69C:    .word 0x196
.endfunc // sub_802D65E

.func
.thumb_func
sub_802D6A0:
    push {r5-r7,lr}
    ldr r5, off_802D6C0 // =dword_203C970 
    mov r0, #0
    str r0, [r5]
    mov r0, #0
    bl sub_80103BC
    str r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
    mov r0, #1
    bl sub_80103BC
    str r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
    mov r0, #1
    strb r0, [r5,#0x4] // (byte_203C974 - 0x203c970)
    pop {r5-r7,pc}
    .byte 0, 0
off_802D6C0:    .word dword_203C970
.endfunc // sub_802D6A0

.func
.thumb_func
sub_802D6C4:
    push {r5,lr}
    ldr r5, off_802D710 // =dword_203C970 
    ldrb r0, [r5,#0x3] // (dword_203C970+3 - 0x203c970)
    tst r0, r0
    bne loc_802D6F4
    ldr r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
    bl sub_802DD1E
    tst r0, r0
    beq loc_802D6DE
    ldr r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
    bl sub_802DD10
loc_802D6DE:
    ldr r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
    bl sub_802DD1E
    tst r0, r0
    beq loc_802D6EE
    ldr r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
    bl sub_802DD10
loc_802D6EE:
    mov r0, #4
    strb r0, [r5,#0x3] // (dword_203C970+3 - 0x203c970)
    b loc_802D70C
loc_802D6F4:
    ldr r0, [r5,#0x8] // (dword_203C978 - 0x203c970)
    bl sub_802DD4A
    tst r0, r0
    bne loc_802D70C
    ldr r0, [r5,#0xc] // (dword_203C97C - 0x203c970)
    bl sub_802DD4A
    tst r0, r0
    bne loc_802D70C
    mov r0, #0
    strb r0, [r5,#0x4] // (byte_203C974 - 0x203c970)
loc_802D70C:
    ldrb r0, [r5,#0x4] // (byte_203C974 - 0x203c970)
    pop {r5,pc}
off_802D710:    .word dword_203C970
.endfunc // sub_802D6C4

loc_802D714:
    push {lr}
    ldr r1, off_802D728 // =off_802D72C 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_801BCD0
    pop {pc}
    .balign 4, 0x00
off_802D728:    .word off_802D72C
off_802D72C:    .word sub_802D738+1
    .word sub_802D7A0+1
    .word sub_802D8F0+1
.func
.thumb_func
sub_802D738:
    push {lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802D78A
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    mov r0, #0
    str r0, [r5,#0x3c]
    bl sub_801A04C
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    ldr r0, dword_802D798 // =0x1C41 
    bl object_clearFlag
    ldr r1, dword_802D79C // =0x10 
    bl sub_801A176
    mov r0, #4
    bl sub_800F2B6
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    mov r0, #1
    bl sub_801A07C
    mov r0, #4
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802D78A:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_802D796
    mov r0, #4
    strh r0, [r7]
locret_802D796:
    pop {pc}
dword_802D798:    .word 0x1C41
dword_802D79C:    .word 0x10
.endfunc // sub_802D738

.func
.thumb_func
sub_802D7A0:
    push {r4,lr}
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011384
    bl sub_8011020
    bl sub_80143A6
    ldrb r0, [r5,#0x16]
    mov r1, #0x29 
    bl sub_801382E
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    cmp r0, r1
    bne loc_802D7E8
    ldrh r2, [r5,#0x24]
    mov r1, #0x40 
    bl sub_8013764
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    ldrb r1, [r5,#0x16]
    mov r2, #0x64 
    mul r2, r1
    ldr r1, off_802D8EC // =unk_2034A60 
    add r1, r1, r2
    mov r2, #0x64 
    bl CpuSet_800093C
loc_802D7E8:
    ldr r4, [r5,#0x58]
    ldrb r0, [r5,#0x16]
    mov r1, #0x29 
    bl sub_801382E
    push {r0}
    ldrb r0, [r5,#0x16]
    bl sub_802DCCC
    pop {r1}
    cmp r0, r1
    bne loc_802D81A
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    add r1, r0, #0
    ldrb r0, [r5,#0x16]
    mov r2, #0x64 
    mul r2, r0
    ldr r0, off_802D8EC // =unk_2034A60 
    add r0, r0, r2
    mov r2, #0x64 
    bl CpuSet_800093C
    b loc_802D822
loc_802D81A:
    add r1, r0, #0
    ldrb r0, [r5,#0x16]
    bl loc_8013B64
loc_802D822:
    bl sub_801393A
    ldrb r0, [r5,#0x16]
    mov r1, #0x29 
    bl sub_80136CC
    strb r0, [r4,#1]
    add r0, #0xff
    add r0, #0xa1
    strh r0, [r5,#0x28]
    mov r1, #0x2c 
    bl sub_8013774
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sprite_load
    bl sprite_loadAnimationData
.endfunc // sub_802D7A0

    bl sub_8002E3C
    mov r0, #3
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData
    bl sub_801002C
    bl sprite_setPallete
    bl sub_800E456
    bl sub_8002F5C
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_802D88C
    mov r1, #0x2c 
    bl sub_8013774
    bl loc_8011268
    b loc_802D890
loc_802D88C:
    bl sub_8010DD0
loc_802D890:
    bl sub_800F378
    bl sub_801A264
    bl sub_80143A6
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    bne loc_802D8B8
    mov r1, #0x42 
    bl sub_8013790
    push {r0}
    mov r1, #0x40 
    bl sub_8013790
    pop {r1}
    b loc_802D8C0
loc_802D8B8:
    ldrb r1, [r5,#0x16]
    bl sub_802DD70
    add r1, r0, #0
loc_802D8C0:
    strh r0, [r5,#0x24]
    strh r1, [r5,#0x26]
    mov r0, #1
    bl sub_801E0D0
    bl sub_801DBD4
    bl sub_800EA0E
    ldr r0, off_802DCA4 // =start_ 
    bl object_clearFlag
    bl sub_801086C
    bl loc_8014216
    bl sub_800EB08
    mov r0, #8
    strh r0, [r7]
    pop {r4,pc}
    .balign 4, 0x00
off_802D8EC:    .word unk_2034A60
.func
.thumb_func
sub_802D8F0:
    push {lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802D900
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802D900:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_802D924
    mov r0, #0
    bl sub_801E0D0
    ldr r0, dword_802DCA8 // =0x4000 
    bl sub_8010312
    ldr r0, off_802DCAC // =0x1800 
    bl sub_801031C
    ldr r0, dword_802DCB0 // =0x8600 
    bl sub_800FFEE
    bl sub_8011714
locret_802D924:
    pop {pc}
.endfunc // sub_802D8F0

loc_802D926:
    push {lr}
    ldr r1, off_802D940 // =off_802D944 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r7,#3]
    cmp r0, #0
    bne locret_802D93C
    bl sub_801BCD0
locret_802D93C:
    pop {pc}
    .byte 0, 0
off_802D940:    .word off_802D944
off_802D944:    .word sub_802D950+1
    .word sub_802D9B0+1
    .word sub_802DA78+1
.func
.thumb_func
sub_802D950:
    push {lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802D9A2
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    mov r0, #0
    str r0, [r5,#0x3c]
    bl sub_801A04C
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    ldr r0, dword_802DCB4 // =0x1C41 
    bl object_clearFlag
    mov r1, #0x10
    bl sub_801A176
    mov r0, #4
    bl sub_800F2B6
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldr r1, [r5,#0x58]
    mov r0, #0
    str r0, [r1,#0x5c]
    mov r0, #4
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802D9A2:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_802D9AE
    mov r0, #4
    strh r0, [r7]
locret_802D9AE:
    pop {pc}
.endfunc // sub_802D950

.func
.thumb_func
sub_802D9B0:
    push {r4,lr}
    bl sub_8011020
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    add r1, r0, #0
    ldrb r0, [r5,#0x16]
    mov r2, #0x64 
    mul r2, r0
    ldr r0, off_802DCB8 // =unk_2034A60 
    add r0, r0, r2
    mov r2, #0x64 
    bl CpuSet_800093C
    ldr r4, [r5,#0x58]
    ldrb r0, [r5,#0x16]
    mov r1, #0x29 
    bl sub_80136CC
    strb r0, [r4,#1]
    add r0, #0xff
    add r0, #0xa1
    strh r0, [r5,#0x28]
    mov r1, #0x2c 
    bl sub_8013774
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sprite_load
    bl sprite_loadAnimationData
.endfunc // sub_802D9B0

    bl sub_8002E3C
    mov r0, #3
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData
    bl sub_801002C
    bl sprite_setPallete
    bl sub_800E456
    bl sub_8002F5C
    bl sub_8010DD0
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    bl loc_8011268
    bl sub_801A264
    bl sub_80144C0
    bl loc_80143B4
    mov r1, #0x40 
    bl sub_8013790
    strh r0, [r5,#0x24]
    mov r1, #0x42 
    bl sub_8013790
    strh r0, [r5,#0x26]
    mov r0, #1
    bl sub_801E0D0
    bl sub_801DBD4
    ldrb r0, [r5,#0x16]
    bl sub_80108FC
    bl sub_800EA0E
    ldr r0, off_802DCA4 // =start_ 
    bl object_clearFlag
    bl sub_801086C
    bl loc_8014216
    bl sub_800EB08
    mov r0, #8
    strh r0, [r7]
    pop {r4,pc}
.func
.thumb_func
sub_802DA78:
    push {lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802DA88
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802DA88:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_802DAA6
    mov r0, #0
    bl sub_801E0D0
    ldr r0, dword_802DCBC // =0x6800 
    bl sub_801031C
    ldr r0, dword_802DCC0 // =0x4008600 
    bl sub_800FFEE
    bl sub_8011714
locret_802DAA6:
    pop {pc}
.endfunc // sub_802DA78

    push {lr}
    ldr r1, off_802DAB8 // =off_802DABC 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_802DAB8:    .word off_802DABC
off_802DABC:    .word sub_802DACC+1
    .word sub_802DB58+1
    .word sub_802DB80+1
    .word sub_802DC66+1
.func
.thumb_func
sub_802DACC:
    push {lr}
    bl sprite_forceWhitePallete
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802DB4A
    mov r0, #4
    bl battle_setFlags
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C
    mov r0, #0
    str r0, [r5,#0x3c]
    bl sub_801A04C
    bl sub_800F46C
    strb r0, [r5,#0x17]
    bl sub_800F2C6
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB1C
    bl sub_801A074
    ldr r0, dword_802DCB4 // =0x1C41 
    bl object_clearFlag
    mov r1, #0x10
    bl sub_801A176
    mov r0, #2
    bl sub_800F2B6
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #3
    bl sub_80E05F6
    bl sub_80E05F6
    mov r0, #0
    str r0, [r5,#0x4c]
    ldr r1, [r5,#0x58]
    str r0, [r1,#0x68]
    ldr r1, [r5,#0x58]
    mov r0, #0
    str r0, [r1,#0x5c]
    mov r0, #0x6c 
    bl sound_play
    mov r0, #0xa
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802DB4A:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_802DB56
    mov r0, #4
    strh r0, [r7]
locret_802DB56:
    pop {pc}
.endfunc // sub_802DACC

.func
.thumb_func
sub_802DB58:
    push {lr}
    bl sprite_forceWhitePallete
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802DB72
    mov r0, #4
    bl sub_800F2B6
    mov r0, #4
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802DB72:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_802DB7E
    mov r0, #8
    strh r0, [r7]
locret_802DB7E:
    pop {pc}
.endfunc // sub_802DB58

.func
.thumb_func
sub_802DB80:
    push {r4,lr}
    bl sub_8011020
    ldrb r0, [r5,#0x16]
    bl sub_8013682
    add r1, r0, #0
    ldrb r0, [r5,#0x16]
    mov r2, #0x64 
    mul r2, r0
    ldr r0, off_802DCC4 // =unk_2034A60 
    add r0, r0, r2
    mov r2, #0x64 
    bl CpuSet_800093C
    ldr r4, [r5,#0x58]
    ldrb r0, [r5,#0x16]
    mov r1, #0x29 
    bl sub_80136CC
    strb r0, [r4,#1]
    add r0, #0xff
    add r0, #0xa1
    strh r0, [r5,#0x28]
    mov r1, #0x2c 
    bl sub_8013774
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    bl sub_800FC9E
    mov r0, #0x80
    bl sprite_load
    bl sprite_loadAnimationData
.endfunc // sub_802DB80

    bl sub_8002E3C
    mov r0, #3
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x10]
    bl sprite_setAnimation
    bl sprite_loadAnimationData
    bl sub_801002C
    bl sprite_setPallete
    bl sub_800E456
    bl sub_8002F5C
    bl sub_8010DD0
    mov r1, #0x2c 
    bl sub_8013774
    mov r2, #0
    bl loc_8011268
    bl sub_801A264
    bl sub_80144C0
    bl loc_80143B4
    mov r1, #0x40 
    bl sub_8013790
    strh r0, [r5,#0x24]
    mov r1, #0x42 
    bl sub_8013790
    strh r0, [r5,#0x26]
    mov r0, #1
    bl sub_801E0D0
    bl sub_801DBD4
    ldrb r0, [r5,#0x16]
    bl sub_80108FC
    bl sub_800EA0E
    bl sub_801A66C
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    bl sub_801BB46
    ldr r0, off_802DCA4 // =start_ 
    bl object_clearFlag
    bl sub_801086C
    bl loc_8014216
    bl sub_800EB08
    ldrb r0, [r5,#0x16]
    bl battle_networkInvert
    tst r0, r0
    beq loc_802DC60
    mov r0, #0
    mov r1, #0
    bl sub_801DC7C
loc_802DC60:
    mov r0, #0xc
    strh r0, [r7]
    pop {r4,pc}
.func
.thumb_func
sub_802DC66:
    push {lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_802DC7C
    mov r0, #1
    bl sub_801A07C
    mov r0, #4
    strh r0, [r7,#0x10]
    mov r0, #4
    strb r0, [r7,#1]
loc_802DC7C:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_802DCA0
    mov r0, #0
    bl sub_801E0D0
    ldr r0, dword_802DCBC // =0x6800 
    bl sub_801031C
    ldr r0, dword_802DCC8 // =0xC008600 
    bl sub_800FFEE
    mov r0, #4
    bl battle_clearFlags
    bl sub_8011714
locret_802DCA0:
    pop {pc}
    .balign 4, 0x00
off_802DCA4:    .word start_
dword_802DCA8:    .word 0x4000
off_802DCAC:    .word 0x1800
dword_802DCB0:    .word 0x8600
dword_802DCB4:    .word 0x1C41
off_802DCB8:    .word unk_2034A60
dword_802DCBC:    .word 0x6800
dword_802DCC0:    .word 0x4008600
off_802DCC4:    .word unk_2034A60
dword_802DCC8:    .word 0xC008600
.endfunc // sub_802DC66

.func
.thumb_func
sub_802DCCC:
    mov r1, #0x10
    mul r0, r1
    ldr r1, off_802DE40 // =unk_203A980 
    add r1, r1, r0
    ldrb r0, [r1,#4]
    mov pc, lr
.endfunc // sub_802DCCC

    ldr r1, off_802DE44 // =byte_203CED0 
    strb r0, [r1,#0x4] // (byte_203CED4 - 0x203ced0)
    mov pc, lr
.func
.thumb_func
sub_802DCDE:
    push {r5,lr}
    add r5, r0, #0
    beq locret_802DCEA
    ldr r0, off_802DE48 // =LCDControl 
    bl sub_800FFE4
locret_802DCEA:
    pop {r5,pc}
.endfunc // sub_802DCDE

.func
.thumb_func
sub_802DCEC:
    push {r5,r7,lr}
    mov r7, #0
    add r5, r0, #0
    beq loc_802DD0C
    mov r7, #1
    bl sub_801032C
    ldr r1, off_802DE4C // =0x1000 
    tst r0, r1
    bne loc_802DD0C
    bl sub_800FFFE
    ldr r1, off_802DE48 // =LCDControl 
    tst r0, r1
    bne loc_802DD0C
    mov r7, #0
loc_802DD0C:
    add r0, r7, #0
    pop {r5,r7,pc}
.endfunc // sub_802DCEC

.func
.thumb_func
sub_802DD10:
    push {r5,lr}
    add r5, r0, #0
    beq locret_802DD1C
    ldr r0, off_802DE50 // =start_ 
    bl sub_800FFE4
locret_802DD1C:
    pop {r5,pc}
.endfunc // sub_802DD10

.func
.thumb_func
sub_802DD1E:
    push {r5,r7,lr}
    mov r7, #0
    add r5, r0, #0
    beq loc_802DD26
loc_802DD26:
    add r0, r7, #0
    pop {r5,r7,pc}
.endfunc // sub_802DD1E

.func
.thumb_func
sub_802DD2A:
    push {r7,lr}
    mov r7, #0
    mov r1, #0x29 
    bl sub_8013774
    cmp r0, #0
    beq loc_802DD46
    bl sub_801032C
    ldr r1, dword_802DE54 // =0x4000 
    tst r0, r1
    beq loc_802DD46
    ldr r1, off_802DE58 // =0x2000 
    mov r7, #1
loc_802DD46:
    add r0, r7, #0
    pop {r7,pc}
.endfunc // sub_802DD2A

.func
.thumb_func
sub_802DD4A:
    push {r5,lr}
    add r5, r0, #0
    beq locret_802DD60
    bl sub_801032C
    mov r2, #0
    ldr r1, off_802DE58 // =0x2000 
    tst r0, r1
    beq loc_802DD5E
    mov r2, #1
loc_802DD5E:
    add r0, r2, #0
locret_802DD60:
    pop {r5,pc}
.endfunc // sub_802DD4A

    ldr r1, [r0,#0x58]
    ldrb r2, [r1,#0x18]
    tst r2, r2
    beq locret_802DD6E
    sub r2, #1
    strb r2, [r1,#0x18]
locret_802DD6E:
    mov pc, lr
.func
.thumb_func
sub_802DD70:
    push {r4,lr}
    mov r4, #0xe
    mul r4, r0
    add r0, r1, #0
    add r0, r0, r0
    add r4, r4, r0
    ldr r1, off_802DD84 // =dword_802DD88 
    ldrh r0, [r1,r4]
    pop {r4,pc}
    .balign 4, 0x00
off_802DD84:    .word dword_802DD88
dword_802DD88:    .word 0x3E703E7, 0x3E703E7, 0x3E703E7, 0x6403E7, 0xB40096
    .word 0xE600C8, 0x12C00FA, 0x820082, 0x960082, 0xC800B4
    .word 0x9600FA, 0x960096, 0x960096, 0xE600B4, 0x960096
    .word 0x960096, 0xC800B4, 0xC800FA, 0xFA00C8, 0x12C0118
    .word 0x1C2014A, 0x960096, 0x960096, 0x960096, 0x6400C8
    .word 0xB40096, 0xE600C8, 0x12C00FA, 0x960064, 0x960082
    .word 0xC800B4, 0xB400FA, 0xB400B4, 0xB400B4, 0xE600B4
    .word 0x960096, 0x960096, 0xC800B4, 0xC800FA, 0xFA00C8
    .word 0x12C0118, 0x1C2014A, 0x960096, 0x960096, 0x960096
    .word 0xC8
off_802DE40:    .word unk_203A980
off_802DE44:    .word byte_203CED0
off_802DE48:    .word LCDControl
off_802DE4C:    .word 0x1000
off_802DE50:    .word start_
dword_802DE54:    .word 0x4000
off_802DE58:    .word 0x2000
.endfunc // sub_802DD70

.func
.thumb_func
sub_802DE5C:
    push {lr}
    bl sub_802E09A
    beq locret_802DE70
    mov r0, #0
    bl sub_802E2C4
    mov r0, #1
    bl sub_802E2C4
locret_802DE70:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_802DE5C

    push {r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    add r7, r0, #0
    ldrb r0, [r7,#1]
    tst r0, r0
    beq loc_802DEA0
    sub r0, #1
    strb r0, [r7,#1]
    add r2, r7, #2
    mov r3, #0
loc_802DE8C:
    ldrh r0, [r2,#2]
    strh r0, [r2]
    ldrh r0, [r2,#0xe]
    strh r0, [r2,#0xc]
    ldrh r0, [r2,#0x1a]
    strh r0, [r2,#0x18]
    add r2, #2
    add r3, #1
    cmp r3, #5
    blt loc_802DE8C
loc_802DEA0:
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    mov r1, #1
    mov r2, #0x53 
    strb r1, [r0,r2]
    pop {r7,pc}
    push {r4,lr}
    ldr r4, dword_802DED0 // =0xFFFF 
    ldr r1, [r5,#0x58]
    ldrb r1, [r1,#0x19]
    tst r1, r1
    bne loc_802DECC
    bl object_getFlag
    ldr r1, off_802DED4 // =0x1000 
    tst r0, r1
    bne loc_802DECC
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    ldrh r4, [r0,#2]
loc_802DECC:
    add r0, r4, #0
    pop {r4,pc}
dword_802DED0:    .word 0xFFFF
off_802DED4:    .word 0x1000
    push {r4,r6,r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r6, r0, #0
    ldrb r0, [r5,#0x16]
    bl sub_8010018
    ldrh r2, [r0,#0x1a]
    ldrh r1, [r0,#0xe]
    ldrh r0, [r0,#2]
    ldr r3, dword_802DF30 // =0xFFFF 
    cmp r0, r3
    beq locret_802DF2E
    push {r0}
    add r7, r2, #0
    bl refIndex_8021DA8 // (int idx) -> void*
    add r4, r0, #0
    ldrb r0, [r4,#9]
    mov r1, #2
    tst r0, r1
    beq loc_802DF14
    ldrh r3, [r6,#0x36]
    add r7, r7, r3
    mov r1, #4
    tst r0, r1
    beq loc_802DF14
    ldrh r3, [r6,#0x38]
    add r7, r7, r3
loc_802DF14:
    add r2, r7, #0
    pop {r0}
    push {r0,r2}
    ldrb r1, [r5,#0x16]
    bl sub_80109A4
    add r1, r0, #0
    pop {r0,r2}
    push {r0-r2}
    bl refIndex_8021DA8 // (int idx) -> void*
    add r3, r0, #0
    pop {r0-r2}
locret_802DF2E:
    pop {r4,r6,r7,pc}
dword_802DF30:    .word 0xFFFF
    push {r4,r7,lr}
    push {r1,r2}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    strh r0, [r7,#0x14]
    bl refIndex_8021DA8 // (int idx) -> void*
    add r4, r0, #0
    pop {r1,r2}
    strh r1, [r7,#8]
    strh r2, [r7,#6]
    ldrb r1, [r0,#0xa]
    strh r1, [r7,#0xa]
    ldrh r1, [r0,#4]
    strh r1, [r7,#2]
    ldr r1, [r0,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r0,#0xc]
    strb r1, [r7,#3]
    ldrb r1, [r0,#0x14]
    strb r1, [r7,#5]
    mov r1, #0
    strh r1, [r7]
    strb r1, [r7,#4]
    ldrb r0, [r0,#0xb]
    bl sub_8011680
    mov r0, #0x40 
    bl sub_801DACC
    ldrb r0, [r5,#0x16]
    ldrh r1, [r7,#0x14]
    bl sub_8021D14
    ldrb r0, [r4,#9]
    mov r1, #4
    tst r0, r1
    beq locret_802DF8A
    ldrb r0, [r5,#0x16]
    mov r1, #6
    mov r2, #1
    bl sub_800AB46
locret_802DF8A:
    pop {r4,r7,pc}
    push {r7,lr}
    push {r1,r2}
    ldr r7, [r5,#0x58]
    add r7, #0xa0
    strh r0, [r7,#0x14]
    bl refIndex_8021DA8 // (int idx) -> void*
    pop {r1,r2}
    strh r1, [r7,#8]
    strh r2, [r7,#6]
    ldrb r1, [r0,#0xa]
    strh r1, [r7,#0xa]
    ldrh r1, [r0,#4]
    strh r1, [r7,#2]
    ldr r1, [r0,#0x10]
    str r1, [r7,#0xc]
    ldrb r1, [r0,#0xc]
    strb r1, [r7,#3]
    ldrb r1, [r0,#0x14]
    strb r1, [r7,#5]
    mov r1, #0
    strh r1, [r7]
    strb r1, [r7,#4]
    ldrb r0, [r0,#0xb]
    bl sub_8011680
    mov r0, #0x40 
    bl sub_801DACC
    pop {r7,pc}
.func
.thumb_func
sub_802DFC8:
    push {r4,lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r4, r0, #0
    mov r1, #0xe8
    // numWords
    add r1, r1, r1
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_800A8F8
    beq locret_802DFFA
    mov r0, #1
    strb r0, [r4]
    mov r0, #0xff
    strb r0, [r4,#0xb]
    mov r0, #1
    strb r0, [r4,#0x10]
    ldrb r0, [r5,#0x12]
    strb r0, [r4,#0x11]
    mov r0, #3
    strb r0, [r4,#0xe]
    ldrb r0, [r5,#0x16]
    bl sub_802E07C
locret_802DFFA:
    pop {r4,pc}
.endfunc // sub_802DFC8

.func
.thumb_func
sub_802DFFC:
    push {r4,lr}
    // memBlock
    ldr r0, off_802E208 // =unk_2036120 
    mov r1, #0xe8
    lsl r1, r1, #2
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    ldr r0, off_802E20C // =sBtlPlayer 
    ldr r1, off_802E210 // =unk_20362F0 
    str r0, [r1,#0x44] // (dword_2036334 - 0x20362f0)
    bl sub_802E544
    pop {r4,pc}
.endfunc // sub_802DFFC

.func
.thumb_func
sub_802E014:
    push {r4,lr}
    // memBlock
    ldr r0, off_802E214 // =unk_2036120 
    // numWords
    mov r1, #0x60 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    // memBlock
    ldr r0, off_802E218 // =unk_20362F0 
    // numWords
    mov r1, #0x60 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    ldr r0, off_802E21C // =sBtlPlayer 
    ldr r1, off_802E220 // =unk_20362F0 
    str r0, [r1,#0x44] // (dword_2036334 - 0x20362f0)
    bl sub_802E544
    pop {r4,pc}
.endfunc // sub_802E014

.func
.thumb_func
sub_802E032:
    push {lr}
    push {r1}
    bl sub_802E070
    pop {r1}
    add r2, r0, #0
    ldrh r0, [r2,#0x28]
    add r0, r0, r1
    ldr r1, dword_802E224 // =0x4000 
    cmp r0, r1
    ble loc_802E04A
    add r0, r1, #0
loc_802E04A:
    strh r0, [r2,#0x28]
    pop {pc}
.endfunc // sub_802E032

.func
.thumb_func
sub_802E04E:
    push {lr}
    push {r1}
    bl sub_802E070
    pop {r1}
    add r2, r0, #0
    ldrh r0, [r2,#0x28]
    sub r0, r0, r1
    bge loc_802E062
    mov r0, #0
loc_802E062:
    strh r0, [r2,#0x28]
    pop {pc}
.endfunc // sub_802E04E

.func
.thumb_func
sub_802E066:
    push {lr}
    bl sub_802E070
    ldrh r0, [r0,#0x28]
    pop {pc}
.endfunc // sub_802E066

.func
.thumb_func
sub_802E070:
    mov r1, #0xe8
    add r1, r1, r1
    mul r0, r1
    ldr r1, off_802E228 // =unk_2036120 
    add r0, r0, r1
    mov pc, lr
.endfunc // sub_802E070

.func
.thumb_func
sub_802E07C:
    push {lr}
    bl sub_802E070
    mov r1, #0
    strb r1, [r0,#3]
    strh r1, [r0,#0x2a]
    mov r2, #0x50 
    strb r1, [r0,r2]
    mvn r1, r1
    str r1, [r0,#0x18]
    str r1, [r0,#0x1c]
    str r1, [r0,#0x20]
    mov r1, #0xb4
    strb r1, [r0,#2]
    pop {pc}
.endfunc // sub_802E07C

.func
.thumb_func
sub_802E09A:
    push {lr}
    bl battle_getFlags
    mov r1, #0x40 
    and r0, r1
    pop {pc}
.endfunc // sub_802E09A

    push {lr}
    bl sub_8001532
    mov r4, #7
    and r4, r0
    mov r1, #0x29 
    bl sub_8013774
    ldr r1, off_802E0C0 // =dword_802E0C4 
    ldrb r0, [r1,r0]
    add r0, r0, r4
    pop {pc}
    .byte 0, 0
off_802E0C0:    .word dword_802E0C4
dword_802E0C4:    .word 0xA1E050C, 0x3140F05, 0xA1E1E14, 0x28, 0x6DAFB580
    .word 0xB40737A0, 0xF7E52129, 0x1C03FB49, 0x75B8BC07, 0x833A75F9
    .word 0x70F82002, 0xF7E32010, 0xF0BCFACD, 0xBD80FFA9, 0x75F975B8
    .word 0x2002833A, 0x203F70F8, 0xFAC2F7E3, 0xF892F0BD
    pop {r7,pc}
.func
.thumb_func
sub_802E112:
    push {lr}
    bl sub_802D234
    cmp r0, #1
    beq locret_802E154
    cmp r0, #7
    beq locret_802E154
    cmp r0, #9
    beq locret_802E154
    cmp r0, #6
    beq locret_802E154
    bl get_802D246 // () -> int
    ldr r1, dword_802E22C // =0x200000 
    tst r0, r1
    bne locret_802E154
    bl sub_803F524
    cmp r0, #0
    bne loc_802E14E
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    beq locret_802E154
    mov r0, #0x17
    mov r1, #0x22 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq locret_802E154
loc_802E14E:
    mov r0, #0x40 
    bl battle_setFlags
locret_802E154:
    pop {pc}
.endfunc // sub_802E112

.func
.thumb_func
sub_802E156:
    push {r4,lr}
    bl sub_802E09A
    beq locret_802E170
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    bl sub_802E070
    add r4, r0, #0
    ldrh r0, [r0,#0x28]
    bl sub_801DFA2
locret_802E170:
    pop {r4,pc}
    .balign 4, 0x00
    .word unk_802E180
    .word 0x802E187, 0x802E1A2
unk_802E180:    .byte 0xD
    .byte 0x2, 0x25, 0x30
    .byte 0x34 
    .byte 0x78, 0x0, 0x19
    .byte 2
a04x04x04x04x04:    .byte 0x25, 0x30
    .byte 0x34, 0x78
    .byte 0xA, 0x25
    .byte 0x30, 0x34
    .byte 0x78, 0xA
    .byte 0x25, 0x30
    .byte 0x34, 0x78
    .byte 0xA, 0x25
    .byte 0x30, 0x34
    .byte 0x78, 0xA
    .byte 0x25, 0x30
    .byte 0x34, 0x78
    .byte 0x0
    .hword 0x814
a02x02x04x:    .byte 0x25, 0x30, 0x32, 0x78
    .byte 0x2C, 0x25, 0x30, 0x32
    .byte 0x78, 0x2C, 0x25, 0x30
    .byte 0x34, 0x78, 0x0
    .byte 0x0
.endfunc // sub_802E156

.func
.thumb_func
sub_802E1B4:
    ldr r2, off_802E230 // =0x139 
    cmp r0, r2
    ble locret_802E1BC
    mov r0, #0
locret_802E1BC:
    mov pc, lr
.endfunc // sub_802E1B4

.func
.thumb_func
sub_802E1BE:
    push {r7,lr}
    ldr r7, off_802E234 // =0x1E0 
    bl sub_800A8F8
    tst r0, r0
    beq loc_802E1CC
    ldr r7, off_802E238 // =0x168 
loc_802E1CC:
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    strb r4, [r0,#0xb]
    strh r7, [r0,#0x2e]
    pop {r7,pc}
.endfunc // sub_802E1BE

.func
.thumb_func
sub_802E1D8:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    ldrh r1, [r0,#0x30]
    cmp r1, #0
    beq locret_802E1EA
    sub r1, #1
    strh r1, [r0,#0x30]
locret_802E1EA:
    pop {pc}
.endfunc // sub_802E1D8

.func
.thumb_func
sub_802E1EC:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    mov r1, #0
    mov r2, #0x40 
    strb r1, [r0,r2]
    mov r2, #0x41 
    strb r1, [r0,r2]
    ldr r0, dword_802E23C // =0x1F00000 
    bl sub_800FFEE
    pop {pc}
    .balign 4, 0x00
off_802E208:    .word unk_2036120
off_802E20C:    .word sBtlPlayer
off_802E210:    .word unk_20362F0
off_802E214:    .word unk_2036120
off_802E218:    .word unk_20362F0
off_802E21C:    .word sBtlPlayer
off_802E220:    .word unk_20362F0
dword_802E224:    .word 0x4000
off_802E228:    .word unk_2036120
dword_802E22C:    .word 0x200000
off_802E230:    .word 0x139
off_802E234:    .word 0x1E0
off_802E238:    .word 0x168
dword_802E23C:    .word 0x1F00000
.endfunc // sub_802E1EC

.func
.thumb_func
sub_802E240:
    push {lr}
    lsl r0, r0, #2
    ldr r1, off_802E25C // =off_802E260 
    // src
    ldr r0, [r1,r0]
    // dest
    ldr r1, off_802E280 // =unk_2008170 
    // mode
    mov r2, #0x3c 
    bl CpuSet_800092A // (void *src, void *dest, int mode) -> void
    pop {pc}
.endfunc // sub_802E240

    lsl r0, r0, #2
    ldr r1, off_802E25C // =off_802E260 
    ldr r0, [r1,r0]
    mov pc, lr
    .balign 4, 0x00
off_802E25C:    .word off_802E260
off_802E260:    .word dword_8021550+0x12C
    .word dword_8021550+0x2D0
    .word dword_8021550+0x30C
    .word dword_8021550+0x348
    .word dword_8021550+0x384
    .word dword_8021550+0x3C0
    .word dword_8021550+0x3FC
    .word dword_8021550+0x438
off_802E280:    .word unk_2008170
    lsl r0, r0, #2
    ldr r1, off_802E28C // =off_802E290 
    ldr r0, [r1,r0]
    mov pc, lr
off_802E28C:    .word off_802E290
off_802E290:    .word dword_8021550+0x12C
    .word dword_8021550+0x168
    .word dword_8021550+0x1A4
    .word dword_8021550+0x1E0
    .word dword_8021550+0x21C
    .word dword_8021550+0x258
    .word dword_8021550+0x294
    .word dword_8021550+0x2D0
    .word dword_8021550+0x30C
    .word dword_8021550+0x348
    .word dword_8021550+0x384
    .word dword_8021550+0x3C0
    .word dword_8021550+0x3FC
.func
.thumb_func
sub_802E2C4:
    push {r4-r7,lr}
    sub sp, sp, #4
    add r6, r0, #0
    bl sub_802E070
    add r7, r0, #0
    ldrb r0, [r7]
    tst r0, r0
    bne loc_802E2D8
    b loc_802E40A
loc_802E2D8:
    add r0, r6, #0
    bl sub_802E558
    str r1, [sp]
    ldr r1, dword_802E428 // =0x1FF 
    and r0, r1
    strh r0, [r7,#0x24]
    bl battle_isPaused
    tst r0, r0
    beq loc_802E2F0
    b loc_802E406
loc_802E2F0:
    bl battle_isTimeStop
    beq loc_802E2F8
    b loc_802E406
loc_802E2F8:
    add r0, r6, #0
    bl sub_802E69C
    add r1, r0, #0
    add r0, r6, #0
    bl sub_802E032
    bl battle_isBattleOver
    tst r0, r0
    beq loc_802E310
    b loc_802E406
loc_802E310:
    mov r4, #1
    mov r0, #0x50 
    ldrb r0, [r7,r0]
    tst r0, r0
    bne loc_802E31C
    mov r4, #0
loc_802E31C:
    ldrh r0, [r7,#0x24]
    tst r0, r0
    bne loc_802E324
    b loc_802E406
loc_802E324:
    ldrh r1, [r7,#0x26]
    cmp r0, r1
    bne loc_802E32C
    b loc_802E406
    // idx
loc_802E32C:
    ldrh r0, [r7,#0x24]
    bl refIndex_8021DA8 // (int idx) -> void*
    add r5, r0, #0
    tst r4, r4
    bne loc_802E396
    ldrb r0, [r5,#9]
    mov r1, #0x20 
    tst r0, r1
    beq loc_802E344
    mov r0, #1
    b loc_802E346
loc_802E344:
    ldrb r0, [r5,#7]
loc_802E346:
    add r0, r0, r0
    ldr r1, off_802E414 // =dword_802E430 
    ldrh r2, [r1,r0]
    ldrh r1, [r7,#0x28]
    cmp r1, r2
    blt loc_802E37A
    ldr r0, [sp]
    cmp r0, #0
    bne loc_802E366
    add r0, r6, #0
    ldrh r1, [r7,#0x24]
    bl sub_802E82A
    cmp r0, #0xff
    bne loc_802E366
    b loc_802E37A
loc_802E366:
    ldrh r1, [r7,#0x24]
    add r0, r6, #0
    ldr r2, [sp]
    bl sub_802E62A
    tst r0, r0
    beq loc_802E37A
    b loc_802E406
    mov r1, #0
    b loc_802E37C
loc_802E37A:
    mov r1, #1
loc_802E37C:
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0xd]
    cmp r0, r6
    bne loc_802E406
    tst r1, r1
    beq loc_802E390
    mov r0, #0x69 
    bl sound_play
loc_802E390:
    bl sub_801EC44
    b loc_802E406
loc_802E396:
    ldrh r0, [r7,#0x28]
    ldr r1, off_802E418 // =0x1500 
    cmp r0, r1
    blt loc_802E37A
    ldr r2, [sp]
    cmp r2, #0
    bne loc_802E3C2
    add r0, r6, #0
    ldrh r1, [r7,#0x24]
    bl sub_802E830
    cmp r0, #0xff
    beq loc_802E406
    push {r0}
    add r0, r6, #0
    bl battle_networkInvert
    tst r0, r0
    pop {r0}
    bne loc_802E3C2
    bl sub_801E2BA
loc_802E3C2:
    ldrh r1, [r7,#0x24]
    add r0, r6, #0
    ldr r2, [sp]
    bl sub_802E5FC
    push {r4}
    add r0, r6, #0
    bl battle_networkInvert
    add r1, r0, #0
    mov r0, #0x18
    add r0, r0, r7
    add r4, r6, #0
    bl sub_8029514
    pop {r4}
    strh r0, [r7,#0x2a]
    strb r1, [r7,#4]
    strb r2, [r7,#5]
    tst r0, r0
    beq loc_802E402
    add r0, r6, #0
    ldrh r1, [r7,#0x2a]
    ldr r2, [sp]
    bl sub_802E62A
    add r0, r6, #0
    bl sub_802E07C
    mov r0, #0
    strh r0, [r7,#0x28]
    b loc_802E406
loc_802E402:
    mov r0, #0xb4
    strb r0, [r7,#2]
loc_802E406:
    ldrh r0, [r7,#0x24]
    strh r0, [r7,#0x26]
loc_802E40A:
    add r0, r6, #0
    bl sub_802E790
    add sp, sp, #4
    pop {r4-r7,pc}
off_802E414:    .word dword_802E430
off_802E418:    .word 0x1500
    .word 0x802E43A, 0x4, 0x8
dword_802E428:    .word 0x1FF
    .word unk_200F3C4
dword_802E430:    .word 0x2A001500, 0xFFFF4000, 0x101FFFF, 0x1
.endfunc // sub_802E2C4

.func
.thumb_func
sub_802E440:
    push {lr}
    bl sub_802E490
    ldrh r0, [r0]
    pop {pc}
.endfunc // sub_802E440

.func
.thumb_func
sub_802E44A:
    push {lr}
    bl sub_802E490
    ldrh r0, [r0,#2]
    pop {pc}
.endfunc // sub_802E44A

.func
.thumb_func
sub_802E454:
    push {lr}
    bl sub_802E490
    ldrh r0, [r0,#4]
    pop {pc}
.endfunc // sub_802E454

.func
.thumb_func
sub_802E45E:
    push {r4,r5,lr}
    add r4, r1, #0
    bl sub_802E490
    add r5, r0, #0
    add r0, #6
    mov r1, #0x3c 
    ldr r2, dword_802E48C // =0xFFFF 
    bl sub_800096C
    ldrh r0, [r4]
    strh r0, [r5]
    ldrh r0, [r4,#2]
    strh r0, [r5,#2]
    ldrh r0, [r4,#4]
    strh r0, [r5,#4]
    // src
    add r0, r4, #6
    // dest
    add r1, r5, #6
    // mode
    mov r2, #0x36 
    bl CpuSet_800092A // (void *src, void *dest, int mode) -> void
    pop {r4,r5,pc}
    .balign 4, 0x00
dword_802E48C:    .word 0xFFFF
.endfunc // sub_802E45E

.func
.thumb_func
sub_802E490:
    mov r1, #0x42 
    mul r0, r1
    ldr r1, off_802E49C // =unk_203CA80 
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
off_802E49C:    .word unk_203CA80
.endfunc // sub_802E490

    push {r6,lr}
    ldr r1, [r5,#0x58]
    mov r0, #0
    strb r0, [r1,#0x1e]
    bl sub_8012EA8
    ldr r0, dword_802E4B4 // =0x40000 
    bl sub_800FFEE
    pop {r6,pc}
dword_802E4B4:    .word 0x40000
.func
.thumb_func
sub_802E4B8:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r7, r0, #0
    mov r0, #0x50 
    ldrb r0, [r7,r0]
    tst r0, r0
    beq loc_802E4CE
    mov r0, #9
    pop {r7,pc}
loc_802E4CE:
    mov r1, #0x54 
    ldrb r0, [r7,r1]
    tst r0, r0
    beq loc_802E4DA
    mov r0, #0xd
    pop {r7,pc}
loc_802E4DA:
    mov r0, #1
    pop {r7,pc}
    .byte 0, 0
    .byte 0
    .byte 0xA0
    .byte 0
    .byte 0
.endfunc // sub_802E4B8

.func
.thumb_func
sub_802E4E4:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r7, r0, #0
    bl sub_800FFFE
    ldr r1, off_802E534 // =timer_2000000 
    tst r0, r1
    beq loc_802E508
    add r0, r1, #0
    bl sub_800FFEE
    mov r0, #1
    mov r1, #0x50 
    strb r0, [r7,r1]
    bl sub_802E1EC
loc_802E508:
    bl sub_800FFFE
    ldr r1, dword_802E538 // =0x20000000 
    tst r0, r1
    beq locret_802E530
    add r0, r1, #0
    bl sub_800FFEE
    mov r0, #1
    mov r1, #0x54 
    strb r0, [r7,r1]
    bl sub_802E1EC
    ldr r0, off_802E53C // =0x1E0 
    strh r0, [r7,#0x30]
    ldr r0, dword_802E540 // =0xFFFF 
    bl object_setInvulnerableTime
    bl sub_802D310
locret_802E530:
    pop {r7,pc}
    .byte 0
    .byte 0
off_802E534:    .word timer_2000000
dword_802E538:    .word 0x20000000
off_802E53C:    .word 0x1E0
dword_802E540:    .word 0xFFFF
.endfunc // sub_802E4E4

.func
.thumb_func
sub_802E544:
    push {lr}
    ldr r0, off_802E554 // =unk_20000A0 
    mov r1, #0x71 
    add r1, #0xff
    bl sub_80008B4
    pop {pc}
    .balign 4, 0x00
off_802E554:    .word unk_20000A0
.endfunc // sub_802E544

.func
.thumb_func
sub_802E558:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    bl sub_802E070
    ldrh r0, [r7,#0x2c]
    ldr r1, dword_802E584 // =0xFFFF 
    cmp r0, r1
    beq loc_802E574
    bl sub_802E1B4
    tst r0, r0
    beq loc_802E574
    mov r1, #0
    pop {r4,r6,r7,pc}
loc_802E574:
    mov r1, #0x4c 
    ldrb r0, [r7,r1]
    tst r0, r0
    bne loc_802E57C
loc_802E57C:
    mov r0, #0
    pop {r4,r6,r7,pc}
.endfunc // sub_802E558

    mov r0, #0
    pop {r4,r6,r7,pc}
dword_802E584:    .word 0xFFFF
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    bl sub_8010018
    add r7, r0, #0
    ldr r0, [sp]
    bl sub_802E070
    add r6, r0, #0
    ldr r0, [sp,#4]
    bl refIndex_8021DA8 // (int idx) -> void*
    add r4, r0, #0
    ldrb r0, [r7,#1]
    cmp r0, #5
    bge loc_802E5CA
    add r0, r0, r0
    add r0, #2
    add r5, r7, r0
    ldr r0, [sp,#4]
    strh r0, [r5]
    ldrh r1, [r4,#0x1a]
    strh r1, [r5,#0xc]
    mov r0, #0
    strh r0, [r5,#0x18]
    strh r0, [r5,#0x24]
    ldrb r0, [r7,#1]
    add r0, #1
    strb r0, [r7,#1]
    b loc_802E5CE
loc_802E5CA:
    mov r0, #0
    b loc_802E5F4
loc_802E5CE:
    ldr r0, [sp]
    ldr r1, [sp,#8]
    bl sub_802E674
    ldr r0, [sp]
    tst r0, r0
    bne loc_802E5F2
    ldr r0, [sp,#8]
    cmp r0, #0
    bne loc_802E5F2
    ldr r0, off_802E5F8 // =0x2020 
    ldr r1, [sp,#4]
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    bl sub_80070BC
loc_802E5F2:
    mov r0, #1
loc_802E5F4:
    add sp, sp, #0xc
    pop {r4-r7,pc}
off_802E5F8:    .word 0x2020
.func
.thumb_func
sub_802E5FC:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    bl sub_802E070
    ldrb r1, [r0,#3]
    cmp r1, #5
    bge loc_802E626
    add r1, r1, r1
    add r1, #0x18
    strh r5, [r0,r1]
    ldrb r1, [r0,#3]
    add r1, #1
    strb r1, [r0,#3]
    add r0, r4, #0
    add r1, r6, #0
    bl sub_802E674
    mov r0, #1
    b locret_802E628
loc_802E626:
    mov r0, #0
locret_802E628:
    pop {r4-r6,pc}
.endfunc // sub_802E5FC

.func
.thumb_func
sub_802E62A:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    ldr r0, [sp]
    bl sub_802E070
    ldr r1, [sp,#4]
    strh r1, [r0,#0x34]
    ldr r0, [sp]
    tst r0, r0
    bne loc_802E65A
    ldr r0, [sp,#8]
    cmp r0, #0
    bne loc_802E65A
    ldr r0, off_802E670 // =0x2020 
    ldr r1, [sp,#4]
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    bl sub_80070BC
loc_802E65A:
    ldr r0, [sp]
    bl sub_80103BC
    add r5, r0, #0
    ldr r0, dword_802E944 // =0x10000 
    bl sub_800FFE4
    mov r0, #1
    add sp, sp, #0xc
    pop {r4-r7,pc}
    .byte 0, 0
off_802E670:    .word 0x2020
.endfunc // sub_802E62A

.func
.thumb_func
sub_802E674:
    push {r7,lr}
    add r7, r1, #0
    tst r1, r1
    beq locret_802E696
    bl sub_802E490
    ldr r2, dword_802E698 // =0xFFFF 
    sub r7, #1
    add r7, r7, r7
    add r7, #0
    ldrh r1, [r0,#6]
    strh r1, [r0,r7]
    strh r2, [r0,#6]
    add r0, #6
    mov r1, #0x1e
    bl sub_8000EB6
locret_802E696:
    pop {r7,pc}
dword_802E698:    .word 0xFFFF
.endfunc // sub_802E674

.func
.thumb_func
sub_802E69C:
    push {lr}
    mov r0, #0x50 
    ldrb r0, [r7,r0]
    tst r0, r0
    bne locret_802E6D4
    ldrb r1, [r7,#6]
    cmp r1, #1
    beq locret_802E6D4
    ldrh r0, [r7,#0x28]
    ldr r1, off_802E6D8 // =word_802E6DC 
    mov r3, #0
loc_802E6B2:
    ldrh r2, [r1]
    cmp r0, r2
    blt loc_802E6C0
    add r1, #4
    add r3, #1
    cmp r3, #3
    blt loc_802E6B2
loc_802E6C0:
    ldrh r0, [r1,#2]
    ldrh r1, [r7,#0x3a]
    tst r1, r1
    beq loc_802E6CA
    add r0, r0, r0
loc_802E6CA:
    ldrh r1, [r7,#0x3c]
    tst r1, r1
    beq locret_802E6D4
    add r0, #1
    lsr r0, r0, #1
locret_802E6D4:
    pop {pc}
    .balign 4, 0x00
off_802E6D8:    .word word_802E6DC
word_802E6DC:    .hword 0x1500
word_802E6DE:    .hword 0x19
    .byte 0
    .byte 0x29 
    .byte 0x19
    .byte 0
    .byte 0
    .byte 0x40 
    .byte 0xC
    .byte 0
    .byte 0
    .byte 0x40 
    .byte 0xC
    .byte 0
.endfunc // sub_802E69C

.func
.thumb_func
sub_802E6EC:
    push {r5-r7,lr}
    sub sp, sp, #0x3c
    bl sub_802E490
    add r7, r0, #0
    add r0, sp, #0
    mov r1, #0x3c 
    ldr r2, dword_802E948 // =0xFFFF 
    bl sub_800096C
    add r6, sp, #0
    ldr r2, dword_802E948 // =0xFFFF 
    mov r3, #0
    ldrh r0, [r7]
    cmp r0, r2
    beq loc_802E712
    add r1, r3, r3
    strh r0, [r6,r1]
    add r3, #1
loc_802E712:
    ldrh r0, [r7,#2]
    cmp r0, r2
    beq loc_802E71E
    add r1, r3, r3
    strh r0, [r6,r1]
    add r3, #1
loc_802E71E:
    ldrh r0, [r7,#4]
    cmp r0, r2
    beq loc_802E72A
    add r1, r3, r3
    strh r0, [r6,r1]
    add r3, #1
loc_802E72A:
    add r5, r7, #6
loc_802E72C:
    ldrh r0, [r5]
    cmp r0, r2
    beq loc_802E73C
    add r1, r3, r3
    strh r0, [r6,r1]
    add r3, #1
    add r5, #2
    b loc_802E72C
loc_802E73C:
    tst r3, r3
    beq loc_802E78C
    add r0, sp, #0
    add r1, r3, #0
    add r2, r3, #0
    push {r3}
    bl sub_8000CDA
    pop {r3}
    add r6, sp, #0
    ldr r2, dword_802E948 // =0xFFFF 
    ldrh r0, [r7]
    cmp r0, r2
    beq loc_802E760
    ldrh r0, [r6]
    strh r0, [r7]
    add r6, #2
    sub r3, #1
loc_802E760:
    ldrh r0, [r7,#2]
    cmp r0, r2
    beq loc_802E76E
    ldrh r0, [r6]
    strh r0, [r7,#2]
    add r6, #2
    sub r3, #1
loc_802E76E:
    ldrh r0, [r7,#4]
    cmp r0, r2
    beq loc_802E77C
    ldrh r0, [r6]
    strh r0, [r7,#4]
    add r6, #2
    sub r3, #1
loc_802E77C:
    add r5, r7, #6
loc_802E77E:
    ldrh r0, [r6]
    sub r3, #1
    blt loc_802E78C
    strh r0, [r5]
    add r5, #2
    add r6, #2
    b loc_802E77E
loc_802E78C:
    add sp, sp, #0x3c
    pop {r5-r7,pc}
.endfunc // sub_802E6EC

.func
.thumb_func
sub_802E790:
    push {r6,r7,lr}
    add r6, r0, #0
    bl sub_802E070
    add r7, r0, #0
    bl battle_isBattleOver
    tst r0, r0
    bne locret_802E828
    mov r1, #0x4c 
    ldrb r0, [r7,r1]
    tst r0, r0
    beq locret_802E828
    mov r1, #0x4d 
    ldrb r0, [r7,r1]
    tst r0, r0
    bne loc_802E7E2
    add r0, r6, #0
    bl battle_networkInvert
    tst r0, r0
    bne loc_802E7C8
    ldr r0, dword_802E94C // =0x80000 
    bl sub_801BED6
    ldr r0, dword_802E94C // =0x80000 
    bl sub_801BEC2
loc_802E7C8:
    add r0, r6, #0
    bl battle_networkInvert
    tst r0, r0
    bne loc_802E7D6
    bl sub_801E408
loc_802E7D6:
    mov r0, #0x32 
    mov r1, #0x4e 
    strb r0, [r7,r1]
    mov r0, #1
    mov r1, #0x4d 
    strb r0, [r7,r1]
loc_802E7E2:
    mov r1, #0x4e 
    ldrb r0, [r7,r1]
    sub r0, #1
    strb r0, [r7,r1]
    blt loc_802E80C
    mov r1, #0xa
    svc 6
    cmp r1, #9
    bne locret_802E828
    add r0, r6, #0
    bl sub_802E6EC
    add r0, r6, #0
    bl battle_networkInvert
    tst r0, r0
    bne locret_802E80A
    mov r0, #0x80
    bl sound_play
locret_802E80A:
    pop {r6,r7,pc}
loc_802E80C:
    add r0, r6, #0
    bl battle_networkInvert
    tst r0, r0
    bne loc_802E822
    ldr r0, dword_802E94C // =0x80000 
    bl sub_801BECC
    ldr r0, dword_802E94C // =0x80000 
    bl sub_801BEB8
loc_802E822:
    mov r0, #0
    mov r1, #0x4c 
    strb r0, [r7,r1]
locret_802E828:
    pop {r6,r7,pc}
.endfunc // sub_802E790

.func
.thumb_func
sub_802E82A:
    push {r4-r7,lr}
    mov r7, #0
    b loc_802E834
.endfunc // sub_802E82A

.func
.thumb_func
sub_802E830:
    push {r4-r7,lr}
    mov r7, #1
loc_802E834:
    add r4, r0, #0
    add r5, r1, #0
    // idx
    add r0, r1, #0
    bl refIndex_8021DA8 // (int idx) -> void*
    add r6, r0, #0
    add r0, r4, #0
    bl sub_802E070
    add r0, #0x60 
    ldrb r2, [r0,r5]
    ldrb r1, [r6,#0x1e]
    cmp r2, r1
    bge loc_802E85C
    add r2, #1
    cmp r7, #0
    beq loc_802E858
    strb r2, [r0,r5]
loc_802E858:
    sub r0, r1, r2
    pop {r4-r7,pc}
loc_802E85C:
    mov r0, #0xff
    pop {r4-r7,pc}
.endfunc // sub_802E830

    push {lr}
    bl sub_802E070
    mov r1, #0x4c 
    ldrb r0, [r0,r1]
    pop {pc}
    push {r4,r5,lr}
    ldr r5, dword_802E948 // =0xFFFF 
    add r4, r0, #0
    bl sub_802E440
    cmp r0, r5
    bne loc_802E892
    add r0, r4, #0
    bl sub_802E44A
    cmp r0, r5
    bne loc_802E892
    add r0, r4, #0
    bl sub_802E454
    cmp r0, r5
    bne loc_802E892
    mov r0, #0
    pop {r4,r5,pc}
loc_802E892:
    mov r0, #1
    pop {r4,r5,pc}
    push {lr}
    ldr r0, off_802E950 // =unk_2000370 
    mov r1, #0x71 
    add r1, #0xff
    bl sub_80008B4
    pop {pc}
    push {r6,r7,lr}
    ldr r2, off_802E954 // =0x170 
    mul r2, r0
    ldr r0, off_802E958 // =unk_203A0A0 
    add r0, r0, r2
    ldr r6, dword_802E948 // =0xFFFF 
    mov r7, #0
    mov r2, #0
loc_802E8B4:
    ldrb r1, [r0,r2]
    tst r1, r1
    beq loc_802E8D2
    cmp r1, r7
    blt loc_802E8D2
    bgt loc_802E8CE
    push {r0-r2}
    bl sub_800154C
    lsr r3, r0, #0x1c
    lsr r0, r3
    pop {r0-r2}
    bcc loc_802E8D2
loc_802E8CE:
    add r6, r2, #0
    add r7, r1, #0
loc_802E8D2:
    add r2, #1
    ldr r3, off_802E954 // =0x170 
    cmp r2, r3
    blt loc_802E8B4
    add r0, r6, #0
    pop {r6,r7,pc}
    push {r4,r5,lr}
    mov r4, #0
    mov r5, #0
    bl sub_802E490
    ldr r2, dword_802E948 // =0xFFFF 
loc_802E8EA:
    ldrh r1, [r0]
    cmp r1, r2
    beq loc_802E8F2
    add r4, #1
loc_802E8F2:
    add r0, #2
    add r5, #1
    cmp r5, #0x21 
    blt loc_802E8EA
    add r0, r4, #0
    pop {r4,r5,pc}
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    add r5, r2, #0
    add r0, r2, #0
    bl sub_800E2C2
    add r4, r0, #0
loc_802E90E:
    add r6, r6, r4
    add r0, r6, #0
    add r1, r7, #0
    bl object_isValidPanel
    beq loc_802E92E
    add r0, r6, #0
    add r1, r7, #0
    bl object_getPanelParameters
    lsl r1, r5, #2
    ldr r2, off_802E938 // =off_802E93C 
    ldr r1, [r2,r1]
    tst r0, r1
    bne loc_802E932
    b loc_802E90E
loc_802E92E:
    mov r0, #0
    pop {r4-r7,pc}
loc_802E932:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802E938:    .word off_802E93C
off_802E93C:    .word LCDControl
    .word start_
dword_802E944:    .word 0x10000
dword_802E948:    .word 0xFFFF
dword_802E94C:    .word 0x80000
off_802E950:    .word unk_2000370
off_802E954:    .word 0x170
off_802E958:    .word unk_203A0A0
    push {r4,r6,r7,lr}
    add r7, r0, #0
    mov r1, #0x29 
    bl sub_8013774
    add r4, r0, #0
    ldr r6, [r5,#0x58]
    add r6, #0xa0
    bl sub_800A8F8
    tst r0, r0
    bne loc_802E978
    ldr r1, off_802E9D4 // =off_802E9D8 
    b loc_802E97A
loc_802E978:
    ldr r1, off_802EA04 // =off_802EA08 
loc_802E97A:
    lsl r0, r7, #2
    ldr r1, [r1,r0]
    lsl r0, r4, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    push {r0}
    push {r0}
    mov r1, #0x3c 
    bl sub_8013774
    ldr r2, off_802E9E4 // =off_802E9E8 
    lsl r1, r7, #2
    ldr r2, [r1,r2]
    add r1, r4, r4
    ldrh r1, [r2,r1]
    pop {r2}
    cmp r2, #2
    bne loc_802E9A8
    tst r0, r0
    beq loc_802E9AA
    mov r1, #0xa
    b loc_802E9AA
loc_802E9A8:
    lsl r1, r0
loc_802E9AA:
    strh r1, [r6,#8]
    ldr r2, off_802E9F4 // =dword_802E9F8 
    lsl r1, r7, #2
    ldr r2, [r1,r2]
    ldrb r1, [r2,r4]
    mov r0, #0x80
    tst r1, r0
    bne loc_802E9C4
    lsl r1, r1, #8
    ldrb r0, [r5,#0x16]
    bl sub_802E032
    b loc_802E9D0
loc_802E9C4:
    mov r0, #0x7f
    and r1, r0
    lsl r1, r1, #8
    ldrb r0, [r5,#0x16]
    bl sub_802E04E
loc_802E9D0:
    pop {r0}
    pop {r4,r6,r7,pc}
off_802E9D4:    .word off_802E9D8
off_802E9D8:    .word off_802EA14
    .word off_802EA7C
    .word off_802EAB0
off_802E9E4:    .word off_802E9E8
off_802E9E8:    .word dword_802EAE4
    .word 0x802EAFE, 0x802EB18
off_802E9F4:    .word dword_802E9F8
dword_802E9F8:    .word 0x802EB32, 0x802EB3F, 0x802EB4C
off_802EA04:    .word off_802EA08
off_802EA08:    .word off_802EA48
    .word off_802EA7C
    .word off_802EAB0
off_802EA14:    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
off_802EA48:    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
    .word loc_802EB5C+1
off_802EA7C:    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EBA8+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
    .word sub_802EB60+1
off_802EAB0:    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
    .word sub_802EB80+1
dword_802EAE4:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x10000, 0x30001, 0x10002, 0x20002, 0x10000, 0x20003
    .word 0x30001, 0x50000, 0x1E, 0xA0002, 0xA000A, 0xA0000
    .word 0x5000A, 0xA, 0x0, 0x0
    .word timer_2000000
    .word 0x2020202, 0x2850202, 0x2020202, 0xA0A85, 0x50A0A0A
    .word 0xA0A0A85, 0xA
loc_802EB5C:
    mov r0, #0
    mov pc, lr
.func
.thumb_func
sub_802EB60:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    mov r0, #0
    str r0, [r6,#0xc]
    mov r0, #0x11
    bl sub_8011680
    mov r0, #2
    pop {pc}
.endfunc // sub_802EB60

.func
.thumb_func
sub_802EB80:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #3
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strh r0, [r6,#8]
    ldr r0, off_802EBA4 // =0x23C 
    str r0, [r6,#0xc]
    mov r0, #0x2b 
    bl sub_8011680
    mov r0, #1
    pop {pc}
off_802EBA4:    .word 0x23C
.endfunc // sub_802EB80

.func
.thumb_func
sub_802EBA8:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #3
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strh r0, [r6,#8]
    ldr r0, off_802EBCC // =0x13C 
    str r0, [r6,#0xc]
    mov r0, #0x2b 
    bl sub_8011680
    mov r0, #1
    pop {pc}
off_802EBCC:    .word 0x13C
.endfunc // sub_802EBA8

    push {r6,lr}
    mov r1, #2
    mov r2, #4
    bl sub_8013754
    ldr r6, [r5,#0x58]
    add r6, #0xa0
    bl sub_802ECFE
    pop {r6,pc}
    push {r6,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #2
    bl sub_8013816
    add r2, r0, #0
    mov r1, #2
    bl sub_8013754
    ldr r6, [r5,#0x58]
    add r6, #0xa0
    bl sub_802ECFE
    pop {r6,pc}
    push {r4,r6,r7,lr}
    add r7, r0, #0
    mov r1, #0x29 
    bl sub_8013774
    add r4, r0, #0
    mov r2, #4
    mov r1, #2
    bl sub_8013754
    ldr r6, [r5,#0x58]
    add r6, #0xa0
    ldr r1, off_802EC28 // =off_802EC2C 
    lsl r0, r7, #2
    ldr r1, [r1,r0]
    lsl r0, r4, #2
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,r7,pc}
off_802EC28:    .word off_802EC2C
off_802EC2C:    .word off_802EC3C
    .word off_802EC6C
    .word off_802EC9C
    .word off_802ECCC
off_802EC3C:    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
    .word sub_802ECFE+1
off_802EC6C:    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
    .word sub_802EDBC+1
off_802EC9C:    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
    .word sub_802ED8A+1
off_802ECCC:    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    .word sub_802EDE8+1
    mov pc, lr
.func
.thumb_func
sub_802ECFE:
    push {lr}
    bl sub_8013D5E
    cmp r0, #0
    beq loc_802ED0E
    bl sub_802ED68
    pop {pc}
loc_802ED0E:
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    mov r0, #0
    str r0, [r6,#0xc]
    mov r1, #0x29 
    bl sub_8013774
    ldr r1, off_802ED4C // =unk_802ED5C 
    ldrb r0, [r1,r0]
    strh r0, [r6,#8]
    mov r1, #0x29 
    bl sub_8013774
    ldr r1, off_802ED48 // =unk_802ED50 
    ldrb r0, [r0,r1]
    bl sub_802EEA2
    mov r0, #0x11
    bl sub_8011680
    mov r0, #0
    mov r1, #0
    pop {pc}
off_802ED48:    .word unk_802ED50
off_802ED4C:    .word unk_802ED5C
unk_802ED50:    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
    .byte 2
unk_802ED5C:    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
    .byte 3
.endfunc // sub_802ECFE

.func
.thumb_func
sub_802ED68:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strh r0, [r6,#8]
    str r0, [r6,#0xc]
    mov r0, #0x33 
    bl sub_8011680
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_802ED68

.func
.thumb_func
sub_802ED8A:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #3
    strb r0, [r6,#3]
    mov r0, #0
    strb r0, [r6,#4]
    strb r0, [r6,#5]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strh r0, [r6,#8]
    ldr r0, off_802EDB8 // =0x23C 
    str r0, [r6,#0xc]
    mov r0, #0x8b
    bl sub_802EEA2
    mov r0, #0x2b 
    bl sub_8011680
    mov r0, #1
    mov r1, #0
    pop {pc}
    .balign 4, 0x00
off_802EDB8:    .word 0x23C
.endfunc // sub_802ED8A

.func
.thumb_func
sub_802EDBC:
    push {lr}
    mov r0, #0
    strb r0, [r6,#2]
    mov r0, #0
    strb r0, [r6,#3]
    strb r0, [r6,#4]
    strh r0, [r6,#6]
    strh r0, [r6,#0xa]
    strb r0, [r6,#5]
    mov r0, #0
    str r0, [r6,#0xc]
    mov r0, #0x28 
    strh r0, [r6,#8]
    mov r0, #0xa
    bl sub_802EEA2
    mov r0, #0x16
    bl sub_8011680
    mov r0, #1
    mov r1, #0
    pop {pc}
.endfunc // sub_802EDBC

.func
.thumb_func
sub_802EDE8:
    push {lr}
    pop {pc}
.endfunc // sub_802EDE8

    push {lr}
    mov r0, #0x8c
    strh r0, [r6,#8]
    mov r0, #0x94
    strh r0, [r6,#0xa]
    mov r0, #0
    str r0, [r6,#0xc]
    mov r0, #1
    strb r0, [r6,#3]
    mov r0, #1
    strb r0, [r6,#4]
    mov r0, #0x13
    bl sub_8011680
    mov r0, #0x95
    bl sub_802EEA2
    mov r0, #1
    mov r1, #0
    pop {pc}
    push {lr}
    pop {pc}
    push {lr}
    bl sub_8001532
    mov r4, #7
    and r4, r0
    mov r1, #0x29 
    bl sub_8013774
    ldr r1, off_802EE30 // =dword_802EE34 
    ldrb r0, [r1,r0]
    add r0, r0, r4
    pop {pc}
off_802EE30:    .word dword_802EE34
dword_802EE34:    .word 0x0, 0x0, 0x0
    push {lr}
    cmp r0, #3
    beq loc_802EE5C
    push {r0}
    mov r1, #0x29 
    bl sub_8013774
    pop {r1}
    mov r2, #3
    mul r0, r2
    add r0, r0, r1
    ldr r1, off_802EE60 // =off_802EE64 
    ldrb r0, [r1,r0]
    pop {pc}
loc_802EE5C:
    mov r0, #0
    pop {pc}
off_802EE60:    .word off_802EE64
off_802EE64:    .word 0x3C00
    .word 0x3C00003C, 0x3C0000, 0x3C00, 0x3C00003C, 0x3C0000
    .word 0x3C00, 0x3C00003C, 0x3C0000, 0xB403B500, 0xF7E4213C
    .word 0xBC06FC71, 0xD0024200, 0xD1004209, 0x1C102208
    pop {pc}
.func
.thumb_func
sub_802EEA2:
    push {lr}
    mov r1, #0x80
    tst r0, r1
    bne loc_802EEB4
    lsl r1, r0, #8
    ldrb r0, [r5,#0x16]
    bl sub_802E032
    b locret_802EEC0
loc_802EEB4:
    mov r1, #0x7f
    and r1, r0
    lsl r1, r1, #8
    ldrb r0, [r5,#0x16]
    bl sub_802E04E
locret_802EEC0:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_802EEA2

    push {r4,r7,lr}
    sub sp, sp, #8
    ldrb r0, [r5,#0x16]
    bl sub_802EFEE
    add r7, r0, #0
    beq loc_802EF44
    bl sub_800E2C0
    neg r4, r0
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    ldrb r1, [r0,#0xe]
    mul r1, r4
    ldrb r0, [r7,#0x12]
    add r0, r0, r1
    ldrb r1, [r7,#0x13]
    str r0, [sp]
    str r1, [sp,#4]
    bl sub_800C90A
    tst r0, r0
    beq loc_802EF00
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_802EFD8
    beq loc_802EF18
    b loc_802EF12
loc_802EF00:
    mov r1, #0
    ldr r0, [sp]
    cmp r0, #1
    bgt loc_802EF0A
    mov r1, #1
loc_802EF0A:
    ldrb r0, [r5,#0x16]
    eor r0, r1
    beq loc_802EF18
    b loc_802EF2E
loc_802EF12:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    b loc_802EF3A
loc_802EF18:
    ldrb r0, [r5,#0x16]
    ldr r3, off_802EF48 // =dword_802EF4C 
    lsl r2, r0, #3
    add r3, r3, r2
    ldr r2, [r3]
    ldr r3, [r3,#4]
    ldr r1, [sp,#4]
    bl sub_800D086
    ldr r1, [sp,#4]
    b loc_802EF44
loc_802EF2E:
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
    str r0, [sp]
    ldr r1, [sp,#4]
loc_802EF3A:
    bl sub_802EFD8
    beq loc_802EF44
    ldr r0, [sp]
    ldr r1, [sp,#4]
loc_802EF44:
    add sp, sp, #8
    pop {r4,r7,pc}
off_802EF48:    .word dword_802EF4C
dword_802EF4C:    .word 0x0
    .word 0x20, 0x20, 0x0
.func
.thumb_func
sub_802EF5C:
    push {lr}
    bl sub_800A8F8
    cmp r0, #0
    beq locret_802EF72
    mov r0, #0
    bl sub_802EF74
    mov r0, #1
    bl sub_802EF74
locret_802EF72:
    pop {pc}
.endfunc // sub_802EF5C

.func
.thumb_func
sub_802EF74:
    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    bl sub_800A8F8
    cmp r0, #0
    beq loc_802EFD4
    mov r4, #4
    mov r7, #0
    ldr r0, [sp]
    mov r1, #1
    eor r0, r1
    bl sub_802EFEE
    tst r0, r0
    beq loc_802EFD4
    cmp r0, r5
    bne loc_802EFD4
    ldr r0, [sp]
    lsl r0, r0, #4
    add r0, #0x80
    mov r1, r10
    ldr r1, [r1,#0x18]
    add r0, r0, r1
loc_802EFA4:
    ldr r6, [r0]
    tst r6, r6
    beq loc_802EFC0
    tst r7, r7
    bne loc_802EFB2
    add r7, r6, #0
    b loc_802EFC0
loc_802EFB2:
    push {r0}
    add r0, r6, #0
    add r1, r7, #0
    bl sub_802F006
    add r7, r0, #0
    pop {r0}
loc_802EFC0:
    add r0, #4
    sub r4, #1
    bgt loc_802EFA4
    ldr r0, [sp]
    mov r1, #1
    eor r0, r1
    add r1, r7, #0
    bl sub_802EFF8
    add r0, r7, #0
loc_802EFD4:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
.endfunc // sub_802EF74

.func
.thumb_func
sub_802EFD8:
    push {lr}
    bl sub_800C90A
.endfunc // sub_802EFD8

    ldrb r1, [r0,#3]
    ldrb r0, [r5,#0x16]
    cmp r0, r1
    beq loc_802EFEA
    mov r0, #0
    pop {pc}
loc_802EFEA:
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_802EFEE:
    push {lr}
    bl sub_802E070
    ldr r0, [r0,#0x44]
    pop {pc}
.endfunc // sub_802EFEE

.func
.thumb_func
sub_802EFF8:
    push {lr}
    push {r1}
    bl sub_802E070
    pop {r1}
    str r1, [r0,#0x44]
    pop {pc}
.endfunc // sub_802EFF8

.func
.thumb_func
sub_802F006:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103BC
    add r5, r0, #0
    beq loc_802F05E
    bl sub_800E2C0
    ldrb r2, [r5,#0x12]
    add r2, r2, r0
    ldrb r0, [r6,#0x12]
    sub r0, r0, r2
    ldrb r1, [r7,#0x12]
    sub r1, r1, r2
    ldrb r2, [r5,#0x16]
    tst r2, r2
    beq loc_802F034
    neg r0, r0
    neg r1, r1
loc_802F034:
    cmp r0, r1
    bcc loc_802F05E
    bhi loc_802F062
    ldrb r2, [r5,#0x13]
    ldrb r0, [r6,#0x13]
    sub r0, r0, r2
    cmp r0, #0
    bge loc_802F046
    neg r0, r0
loc_802F046:
    ldrb r1, [r7,#0x13]
    sub r1, r1, r2
    cmp r1, #0
    bge loc_802F050
    neg r1, r1
loc_802F050:
    cmp r0, r1
    blt loc_802F05E
    bgt loc_802F062
    ldrb r0, [r6,#0x13]
    ldrb r1, [r7,#0x13]
    cmp r0, r1
    bge loc_802F062
loc_802F05E:
    add r0, r6, #0
    pop {r4-r7,pc}
loc_802F062:
    add r0, r7, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_802F006

.func
.thumb_func
sub_802F068:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    add r7, r0, #0
    ldrb r0, [r7,#2]
    tst r0, r0
    beq loc_802F07E
    sub r0, #1
    strb r0, [r7,#2]
    bne locret_802F082
loc_802F07E:
    bl sub_802F084
locret_802F082:
    pop {r7,pc}
.endfunc // sub_802F068

.func
.thumb_func
sub_802F084:
    push {lr}
    ldrb r0, [r5,#0x16]
    bl sub_802E070
    ldrb r1, [r0,#3]
    tst r1, r1
    beq loc_802F096
    mov r1, #0
    strh r1, [r0,#0x28]
loc_802F096:
    ldrb r0, [r5,#0x16]
    bl sub_802E07C
    ldr r0, off_802F0A4 // =timer_2000000 
    bl sub_800FFEE
    pop {pc}
off_802F0A4:    .word timer_2000000
dword_802F0A8:    .word 0x3E803E8, 0x44C044C, 0x51404B0, 0x3E80384, 0x3E804B0
    .word 0x514044C, 0x384
.endfunc // sub_802F084

.func
.thumb_func
sub_802F0C4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x44]
    ldr r1, off_802F0D4 // =0x4EC 
    bl sub_80008C0
    pop {pc}
    .balign 4, 0x00
off_802F0D4:    .word 0x4EC
.endfunc // sub_802F0C4

.func
.thumb_func
sub_802F0D8:
    push {lr}
    ldr r0, dword_802F0EC // =0x2DE 
    mov r1, r10
    ldr r1, [r1,#0x44]
    add r0, r0, r1
    ldr r1, dword_802F0F0 // =0x2 
    bl sub_80008C0
    pop {pc}
    .balign 4, 0x00
dword_802F0EC:    .word 0x2DE
dword_802F0F0:    .word 0x2
.endfunc // sub_802F0D8

.func
.thumb_func
sub_802F0F4:
    push {lr}
    ldr r0, off_802F108 // =0x2C8 
    mov r1, r10
    ldr r1, [r1,#0x44]
    add r0, r0, r1
    ldr r1, dword_802F10C // =0x16 
    bl sub_80008C0
    pop {pc}
    .balign 4, 0x00
off_802F108:    .word 0x2C8
dword_802F10C:    .word 0x16
.endfunc // sub_802F0F4

.func
.thumb_func
sub_802F110:
    lsl r0, r0, #8
    orr r0, r1
.endfunc // sub_802F110

.func
.thumb_func
// (int a1) -> void
sub_802F114:
    mov r3, r10
    ldr r3, [r3,#0x44] // Toolkit.unk_2001C88
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    orr r0, r1
    strb r0, [r3]
    mov pc, lr
.endfunc // sub_802F114

.func
.thumb_func
// (int a1, int a2) -> void
sub_802F12C:
    lsl r0, r0, #8
    orr r0, r1
loc_802F130:
    mov r3, r10
    ldr r3, [r3,#0x44] // Toolkit.unk_2001C88
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    bic r0, r1
    strb r0, [r3]
    mov pc, lr
.endfunc // sub_802F12C

.func
.thumb_func
sub_802F148:
    lsl r0, r0, #8
    orr r0, r1
.endfunc // sub_802F148

.func
.thumb_func
// (int a1) -> void
sub_802F14C:
    mov r3, r10
    ldr r3, [r3,#0x44] // Toolkit.unk_2001C88
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    eor r0, r1
    strb r0, [r3]
    mov pc, lr
.endfunc // sub_802F14C

.func
.thumb_func
// (int a1, int a2) -> zf
sub_802F164:
    lsl r0, r0, #8
    orr r0, r1
zf_802F168:
    mov r3, r10
    ldr r3, [r3,#0x44] // Toolkit.unk_2001C88
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    tst r0, r1
    mov pc, lr
.endfunc // sub_802F164

.func
.thumb_func
// (int a1, int a2) -> void
sub_802F17E:
    lsl r0, r0, #8
    orr r0, r1
loc_802F182:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x44] // Toolkit.unk_2001C88
    add r5, r0, #0
loc_802F18A:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    orr r0, r1
    strb r0, [r3]
    add r5, #1
    sub r2, #1
    bgt loc_802F18A
    pop {r4,r5,pc}
.endfunc // sub_802F17E

.func
.thumb_func
// (int a3, int a2) -> void
sub_802F1A8:
    lsl r0, r0, #8
    orr r0, r1
loc_802F1AC:
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x44] // Toolkit.unk_2001C88
    add r5, r0, #0
loc_802F1B4:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    bic r0, r1
    strb r0, [r3]
    add r5, #1
    sub r2, #1
    bgt loc_802F1B4
    pop {r4,r5,pc}
.endfunc // sub_802F1A8

    lsl r0, r0, #8
    orr r0, r1
    push {r4,r5,lr}
    mov r4, r10
    ldr r4, [r4,#0x44]
    add r5, r0, #0
loc_802F1DE:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    eor r0, r1
    strb r0, [r3]
    add r5, #1
    sub r2, #1
    bgt loc_802F1DE
    pop {r4,r5,pc}
.func
.thumb_func
// (int a3, int a2) ->
sub_802F1FC:
    lsl r0, r0, #8
    orr r0, r1
loc_802F200:
    push {r4-r7,lr}
    add r7, r2, #0
    mov r4, r10
    ldr r4, [r4,#0x44]
    add r5, r0, #0
    mov r6, #0
loc_802F20C:
    add r3, r4, #0
    add r0, r5, #0
    lsr r1, r0, #3
    add r3, r3, r1
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r1, #0x80
    lsr r1, r0
    ldrb r0, [r3]
    tst r0, r1
    beq loc_802F224
    add r6, #1
loc_802F224:
    add r5, #1
    sub r2, #1
    bgt loc_802F20C
    mov r0, #0
    cmp r6, r7
    bne loc_802F232
    mov r0, #1
loc_802F232:
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_802F1FC

.func
.thumb_func
sub_802F238:
    push {r4,r6,r7,lr}
    add r7, r0, #0
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    add r0, r7, #0
    add r0, #0x80
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    ldr r1, off_802F2C4 // =0x1CA0 
    sub r7, r7, r1
    ldr r2, off_802F2DC // =byte_2006530 
    ldr r6, off_802F2E0 // =dword_2001140 
    ldr r0, [r6]
    add r4, r0, #0
    tst r4, r4
    beq loc_802F268
    sub r1, r0, #1
loc_802F25E:
    ldrb r3, [r2,r1]
    strb r3, [r2,r0]
    sub r0, #1
    sub r1, #1
    bge loc_802F25E
loc_802F268:
    strb r7, [r2]
    add r4, #1
    str r4, [r6]
    pop {r4,r6,r7,pc}
.endfunc // sub_802F238

    push {r4,r6,r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    ldr r1, off_802F2C4 // =0x1CA0 
    sub r7, r0, r1
    ldr r6, off_802F2E0 // =dword_2001140 
    ldr r1, [r6]
    ldr r2, off_802F2DC // =byte_2006530 
loc_802F280:
    ldrb r0, [r2]
    cmp r0, r7
    beq loc_802F28E
    add r2, #1
    sub r1, #1
    bgt loc_802F280
    b loc_802F2BC
loc_802F28E:
    cmp r1, #1
    ble loc_802F29E
    add r3, r2, #1
    ldrb r0, [r3]
    strb r0, [r2]
    add r2, #1
    sub r1, #1
    b loc_802F28E
loc_802F29E:
    mov r0, #0x80
    strb r0, [r2]
    ldrb r0, [r6]
    sub r0, #1
    str r0, [r6]
    ldr r0, [sp]
    add r7, r0, #0
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl loc_802F130 // (int a1, int a2) -> void
    add r0, r7, #0
    add r0, #0x80
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl loc_802F130 // (int a1, int a2) -> void
loc_802F2BC:
    add sp, sp, #4
    pop {r4,r6,r7,pc}
    .word 0x1D20
off_802F2C4:    .word 0x1CA0
.func
.thumb_func
sub_802F2C8:
    push {lr}
    ldr r0, off_802F2DC // =byte_2006530 
    mov r1, #0x80
    mov r2, #0x80
    bl initMemblockToByte
    ldr r0, off_802F2E0 // =dword_2001140 
    mov r1, #0
    str r1, [r0]
    pop {pc}
off_802F2DC:    .word byte_2006530
off_802F2E0:    .word dword_2001140
dword_802F2E4:    .word 0x4, 0x3001B60, 0xFF0E000C, 0x80000842, 0x1, 0x80001084
    .word 0x1, 0x800018C6, 0x1, 0x80002108, 0x1, 0x8000294A
    .word 0x1, 0x8000318C, 0x1, 0x800039CE, 0x1, 0x80004210
    .word 0x1, 0x0
unk_802F334:    .byte 4
    .byte 0
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0x17
    .byte 0
    .byte 3
    .byte 0xC
    .byte 1
    .byte 1
    .byte 0xFF
    .byte 0x42 
    .byte 8
    .byte 0
    .byte 0x80
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF8
    .byte 0xF2
    .byte 2
    .byte 8
unk_802F350:    .byte 0x40 
    .byte 0x1A
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 4
    .byte 0xFF
    .byte 0xFF
    .byte 0xB4
    .byte 0x93
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x93
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x93
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x34 
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x93
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x93
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
unk_802F3A0:    .byte 0x60 
    .byte 0x1A
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0xFF
    .byte 0xFF
    .byte 0x54 
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x74 
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x94
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x94
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x74 
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
unk_802F3F0:    .byte 0x80
    .byte 0x1A
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 6
    .byte 0xFF
    .byte 0xFF
    .byte 0xF4
    .byte 0x94
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x34 
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x54 
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x74 
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x54 
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x34 
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
unk_802F440:    .byte 0xA0
    .byte 0x1A
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 7
    .byte 0xFF
    .byte 0xFF
    .byte 0x94
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x96
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0x95
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
unk_802F490:    .byte 0
    .byte 0x1B
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 8
    .byte 0xFF
    .byte 0xFF
    .byte 0xD4
    .byte 0x96
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x96
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x34 
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x54 
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x34 
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x14
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x96
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
unk_802F4E0:    .byte 0x20
    .byte 0x1B
    .byte 0
    .byte 3
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 9
    .byte 0xFF
    .byte 0xFF
    .byte 0x74 
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0x94
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xF4
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 0x24 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB4
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 0x94
    .byte 0x97
    .byte 0x7F 
    .byte 8
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
.endfunc // sub_802F2C8

.func
.thumb_func
sub_802F530:
    push {lr}
    // memBlock
    ldr r0, off_802F570 // =sStartScr 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0
    strb r0, [r1]
    pop {pc}
.endfunc // sub_802F530

.func
.thumb_func
Load_ho_802F544:
    push {r4-r7,lr}
    bl sub_803E938
    ldr r5, off_802F570 // =sStartScr 
    ldr r0, off_802F55C // =jt_802F560 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800151C
    pop {r4-r7,pc}
off_802F55C:    .word jt_802F560
jt_802F560:    .word startScreen_802F574+1, sub_802F60C+1, ho_802F63C+1, sub_802F756+1
off_802F570:    .word sStartScr
.endfunc // Load_ho_802F544

.func
.thumb_func
startScreen_802F574:
    push {lr}
    mov r0, #0xb
    bl sub_80015FC
    ldr r0, off_802F7E4 // =0x1140 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl startScreen_initGfx_802FCC0
    mov r0, #0xc
    mov r1, #0xff
    bl engine_setScreeneffect
    bl sub_8000784
    ldr r0, off_802F5EC // =pt_802F5F0 
    bl sub_8002354
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#2]
    bl sub_803FA42
    bl sub_803F838
    bne loc_802F5BE
    mov r0, #1
    strb r0, [r5,#2]
    bl sub_8000EE4
    strb r0, [r5,#0xc]
    strh r1, [r5,#0xa]
loc_802F5BE:
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802F5D4
    mov r6, #0
    mov r7, #1
    bl sub_803E930
    beq loc_802F5E2
    mov r0, #0
    mov r7, #2
    b loc_802F5E2
loc_802F5D4:
    mov r6, #1
    mov r7, #2
    bl sub_803E930
    beq loc_802F5E2
    mov r6, #1
    mov r7, #3
loc_802F5E2:
    strb r6, [r5,#8]
    strb r7, [r5,#9]
    mov r0, #0
    strb r0, [r5,#3]
    pop {pc}
off_802F5EC:    .word pt_802F5F0
pt_802F5F0:    .word unk_802F350
    .word unk_802F3A0
    .word unk_802F3F0
    .word unk_802F440
    .word unk_802F490
    .word unk_802F4E0
    .word 0xFFFFFFFF
.endfunc // startScreen_802F574

.func
.thumb_func
sub_802F60C:
    push {lr}
    ldr r0, off_802F61C // =off_802F620 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_802F61C:    .word off_802F620
off_802F620:    .word sub_802F624+1
.endfunc // sub_802F60C

.func
.thumb_func
sub_802F624:
    push {lr}
    ldr r0, dword_802F638 // =0x1741 
    bl sub_8001778
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    pop {pc}
    .balign 4, 0x00
dword_802F638:    .word 0x1741
.endfunc // sub_802F624

.func
.thumb_func
// () -> void
ho_802F63C:
    push {lr}
    ldr r0, off_802F650 // =jt_802F654 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_802FB10 // () -> void
    pop {pc}
    .byte 0, 0
off_802F650:    .word jt_802F654
jt_802F654:    .word sub_802F668+1
    .word sub_802F6A4+1
    .word sub_802F6B2+1
    .word sub_802F704+1
    .word sub_802F710+1
.endfunc // ho_802F63C

.func
.thumb_func
sub_802F668:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    ldr r0, dword_802F69C // =0xA46 
    strh r0, [r5,#4]
    mov r0, #1
    bl sub_80005F2
    mov r0, #0xa
    bl sub_80015FC
    ldr r0, off_802F6A0 // =0x1340 
    bl sub_8001778
    mov r0, #0
    strb r0, [r5,#6]
    bl sub_802FD3C
.endfunc // sub_802F668

    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#1]
    pop {pc}
dword_802F69C:    .word 0xA46
off_802F6A0:    .word 0x1340
.func
.thumb_func
sub_802F6A4:
    push {r4,lr}
    bl engine_isScreeneffectAnimating
    beq locret_802F6B0
    mov r0, #8
    strb r0, [r5,#1]
locret_802F6B0:
    pop {r4,pc}
.endfunc // sub_802F6A4

.func
.thumb_func
sub_802F6B2:
    push {r4,lr}
    ldrh r0, [r5,#4]
    cmp r0, #0
    bgt loc_802F6C8
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    b locret_802F6FA
loc_802F6C8:
    sub r0, #1
    strh r0, [r5,#4]
    ldr r1, off_802F6FC // =0x12C 
    cmp r0, r1
    bne loc_802F6E0
    push {r0,r5}
    mov r0, #0x1f
    mov r1, #0x10
    bl sub_800068A
    pop {r0,r5}
    b locret_802F6FA
loc_802F6E0:
    ldrh r0, [r5,#4]
    ldr r1, dword_802F700 // =0xA0A 
    cmp r0, r1
    bge locret_802F6FA
    bl sub_803E928
    bne locret_802F6FA
    bl sub_802FD54
    bl sub_802F7E8
    bl sub_802F88E
locret_802F6FA:
    pop {r4,pc}
off_802F6FC:    .word 0x12C
dword_802F700:    .word 0xA0A
.endfunc // sub_802F6B2

.func
.thumb_func
sub_802F704:
    push {lr}
    bl sub_802F81C
    bl sub_802F8D8
.endfunc // sub_802F704

    pop {pc}
.func
.thumb_func
sub_802F710:
    push {lr}
    ldrh r0, [r5,#4]
    cmp r0, #0
    ble loc_802F71C
    bl sub_802F8D8
loc_802F71C:
    bl engine_isScreeneffectAnimating
    beq locret_802F754
    ldrh r0, [r5,#4]
    cmp r0, #0
    ble loc_802F72E
    mov r0, #0xc
    strh r0, [r5]
    b locret_802F754
loc_802F72E:
    bl sub_8001AFC
    bl sub_80023A8
    bl loc_803D1AC
    bl sub_81440D8
    bl sub_813D960
    bl sub_803F4C8
    mov r0, #0
    bl sub_803F6B0
    bl loc_803F512
    bl sub_803E900
locret_802F754:
    pop {pc}
.endfunc // sub_802F710

.func
.thumb_func
sub_802F756:
    push {lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, off_802F7E4 // =0x1140 
    bl sub_8001778
    bl sub_813D960
    ldrb r0, [r5,#8]
    cmp r0, #0
    beq loc_802F776
    cmp r0, #1
    beq loc_802F79A
    b loc_802F7B6
loc_802F776:
    bl sub_800260C
    bl sub_8004DF0
    bl sub_8004D48
    bl sub_81440D8
    bl sub_8149644
    ldrb r0, [r5,#2]
    tst r0, r0
    beq locret_802F7E0
    mov r0, #0x17
    mov r1, #4
    bl sub_802F110
    b locret_802F7E0
loc_802F79A:
    ldrb r0, [r5,#2]
    tst r0, r0
    beq loc_802F7B6
    bl sub_8004D48
    mov r0, #0x17
    mov r1, #4
    bl sub_802F110
    bl sub_81440D8
    bl sub_8149644
    b locret_802F7E0
loc_802F7B6:
    mov r0, #0
    bl sub_813D90C
    bl sub_8004D48
    bl sub_8039570
    bl sub_803EBAC
    mov r0, #0xc
    bl sub_803EA70
    ldrb r0, [r5,#2]
    tst r0, r0
    beq loc_802F7DC
    mov r0, #0x17
    mov r1, #4
    bl sub_802F110
loc_802F7DC:
    bl sub_81440D8
locret_802F7E0:
    pop {pc}
    .balign 4, 0x00
off_802F7E4:    .word 0x1140
.endfunc // sub_802F756

.func
.thumb_func
sub_802F7E8:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#4]
    ldrh r0, [r0,#2]
    mov r1, #8
    tst r1, r0
    beq locret_802F810
    bl sub_813D960
    mov r0, #0xc
    strb r0, [r5,#1]
    mov r0, #0x67 
    bl sound_play
    ldr r0, off_802F814 // =dword_802F2E4 
    bl sub_8001B1C
    ldr r0, off_802F818 // =unk_802F334 
    bl sub_8001B1C
locret_802F810:
    pop {pc}
    .balign 4, 0x00
off_802F814:    .word dword_802F2E4
off_802F818:    .word unk_802F334
.endfunc // sub_802F7E8

.func
.thumb_func
sub_802F81C:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #9
    tst r1, r0
    beq loc_802F848
    bl engine_isScreeneffectAnimating
    beq locret_802F88C
    bl sub_8000784
    mov r0, #0x9d
    bl sound_play
    mov r0, #0x10
    strb r0, [r5,#1]
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    b locret_802F88C
loc_802F848:
    ldrh r0, [r7,#4]
    mov r1, #0x40 
    tst r1, r0
    beq loc_802F86A
    ldrb r0, [r5,#8]
    add r1, r0, #0
    sub r0, #1
    bge loc_802F85C
    ldrb r0, [r5,#9]
    sub r0, #1
loc_802F85C:
    strb r0, [r5,#8]
    cmp r0, r1
    beq locret_802F88C
    mov r0, #0x66 
    bl sound_play
    b locret_802F88C
loc_802F86A:
    ldrh r0, [r7,#4]
    mov r1, #0x80
    tst r1, r0
    beq locret_802F88C
    ldrb r0, [r5,#8]
    add r1, r0, #0
    add r0, #1
    ldrb r2, [r5,#9]
    cmp r0, r2
    blt loc_802F880
    mov r0, #0
loc_802F880:
    strb r0, [r5,#8]
    cmp r0, r1
    beq locret_802F88C
    mov r0, #0x66 
    bl sound_play
locret_802F88C:
    pop {pc}
.endfunc // sub_802F81C

.func
.thumb_func
sub_802F88E:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0x3f 
    and r0, r1
    cmp r0, #0x20 
    bgt locret_802F8A4
    ldr r0, off_802F8A8 // =dword_802F8AC 
    bl sub_8001158 // () -> void
locret_802F8A4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802F8A8:    .word dword_802F8AC
dword_802F8AC:    .word 0x80344078, 0x2001, 0x80544078, 0x2009, 0x80744078
    .word 0x2011, 0x80944078, 0x2019, 0xB48078, 0x2021
    .word 0x0
.endfunc // sub_802F88E

.func
.thumb_func
sub_802F8D8:
    push {r4-r7,lr}
    ldrb r0, [r5,#6]
    add r0, #1
    cmp r0, #0x12
    blt loc_802F8E4
    mov r0, #0
loc_802F8E4:
    strb r0, [r5,#6]
    ldrb r0, [r5,#7]
    add r0, #1
    cmp r0, #0x40 
    blt loc_802F8F0
    mov r0, #0
loc_802F8F0:
    strb r0, [r5,#7]
    ldrb r0, [r5,#6]
    lsl r0, r0, #1
    ldr r1, off_802F96C // =dword_802F970 
    ldrh r1, [r1,r0]
    ldrb r2, [r5,#8]
    lsl r2, r2, #2
    ldr r0, off_802F95C // =dword_802F960 
    ldr r0, [r0,r2]
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
.endfunc // sub_802F8D8

    ldrb r0, [r5,#8]
    bl sub_802F994
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_802F924
    bl sub_803F524
    bne loc_802F936
    bl sub_803E930
    beq loc_802F936
    b loc_802F936
loc_802F924:
    ldrb r0, [r5,#8]
    bl sub_802F9EC
    bl sub_803F524
    bne loc_802F936
    bl sub_803E930
    beq loc_802F936
loc_802F936:
    bl sub_802FC9C
    bl sub_802FC70
    bl sub_802FB64
    bl sub_802FB90
    bl sub_802FBB4
    bl sub_802FBD8
    bl sub_802FBFC
    bl sub_802FC28
    bl sub_802FC4C
    pop {r4-r7,pc}
off_802F95C:    .word dword_802F960
dword_802F960:    .word 0x40490071, 0x40490080, 0x40490091
off_802F96C:    .word dword_802F970
dword_802F970:    .word 0x11401140
    .word 0x11401140
    .word 0x11401140
    .word 0x11441144
    .word 0x11441144
    .word 0x11441144
    .word 0x11481148
    .word 0x11481148
    .word 0x11481148
.func
.thumb_func
sub_802F994:
    push {r4-r7,lr}
    ldr r1, off_802F9A4 // =off_802F9A8 
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    bl sub_8001158 // () -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802F9A4:    .word off_802F9A8
off_802F9A8:    .word dword_802F9B4
    .word dword_802F9D0
    .word dword_802F9D0
dword_802F9B4:    .word 0x80584070, 0x3023, 0x80784070, 0x302B, 0x40980070
    .word 0x3033, 0x0
dword_802F9D0:    .word 0x80584070, 0x4023, 0x80784070, 0x402B, 0x40980070
    .word 0x4033, 0x0
.endfunc // sub_802F994

.func
.thumb_func
sub_802F9EC:
    push {r4-r7,lr}
    ldr r1, off_802F9FC // =off_802FA00 
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    bl sub_8001158 // () -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802F9FC:    .word off_802FA00
off_802FA00:    .word dword_802FA28
    .word dword_802FA0C
    .word dword_802FA28
dword_802FA0C:    .word 0x8058407F, 0x3037, 0x8078407F, 0x303F, 0x4098007F
    .word 0x3047, 0x0
dword_802FA28:    .word 0x8058407F, 0x4037, 0x8078407F, 0x403F, 0x4098007F
    .word 0x4047, 0x0
.endfunc // sub_802F9EC

    push {r4-r7,lr}
    ldrb r1, [r5,#9]
    cmp r1, #3
    blt loc_802FA58
    ldr r1, off_802FA70 // =off_802FA74 
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    bl sub_8001158 // () -> void
    b locret_802FA62
loc_802FA58:
    ldr r1, off_802FA64 // =off_802FA68 
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    bl sub_8001158 // () -> void
locret_802FA62:
    pop {r4-r7,pc}
off_802FA64:    .word off_802FA68
off_802FA68:    .word dword_802FAEC
    .word dword_802FAC8
off_802FA70:    .word off_802FA74
off_802FA74:    .word dword_802FAA4
    .word dword_802FAA4
    .word dword_802FA80
dword_802FA80:    .word 0x80584080, 0x304B, 0x80784080, 0x3053, 0x40980080
    .word 0x305B, 0xA88080, 0x305F, 0x0
dword_802FAA4:    .word 0x80584080, 0x404B, 0x80784080, 0x4053, 0x40980080
    .word 0x405B, 0xA88080, 0x405F, 0x0
dword_802FAC8:    .word 0x80584070, 0x304B, 0x80784070, 0x3053, 0x40980070
    .word 0x305B, 0xA88070, 0x305F, 0x0
dword_802FAEC:    .word 0x80584070, 0x404B, 0x80784070, 0x4053, 0x40980070
    .word 0x405B, 0xA88070, 0x405F, 0x0
.func
.thumb_func
// () -> void
sub_802FB10:
    push {r4-r7,lr}
    ldr r0, off_802FB1C // =dword_802FB20 
    bl sub_8001158 // () -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802FB1C:    .word dword_802FB20
dword_802FB20:    .word 0x8000007E, 0x6180, 0x8020007E, 0x6190, 0x8040007E
    .word 0x61A0, 0x8060007E, 0x61B0, 0x8080007E, 0x61C0
    .word 0x80A0007E, 0x61D0, 0x80C0007E, 0x61E0, 0x80E0007E
    .word 0x61F0, 0x0
.endfunc // sub_802FB10

.func
.thumb_func
sub_802FB64:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #0x80
    tst r0, r1
    beq locret_802FB74
    ldr r0, off_802FB78 // =dword_802FB7C 
    bl sub_8001158 // () -> void
locret_802FB74:
    pop {pc}
    .balign 4, 0x00
off_802FB78:    .word dword_802FB7C
dword_802FB7C:    .word 0x80044002, 0x9280, 0x40044012, 0x9288, 0x0
.endfunc // sub_802FB64

.func
.thumb_func
sub_802FB90:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #0x40 
    tst r0, r1
    beq locret_802FBA0
    ldr r0, off_802FBA4 // =dword_802FBA8 
    bl sub_8001158 // () -> void
locret_802FBA0:
    pop {pc}
    .balign 4, 0x00
off_802FBA4:    .word dword_802FBA8
dword_802FBA8:    .word 0x802C4004, 0x8220, 0x0
.endfunc // sub_802FB90

.func
.thumb_func
sub_802FBB4:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #0x20 
    tst r0, r1
    beq locret_802FBC4
    ldr r0, off_802FBC8 // =dword_802FBCC 
    bl sub_8001158 // () -> void
locret_802FBC4:
    pop {pc}
    .balign 4, 0x00
off_802FBC8:    .word dword_802FBCC
dword_802FBCC:    .word 0x80544004, 0x8230, 0x0
.endfunc // sub_802FBB4

.func
.thumb_func
sub_802FBD8:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #0x10
    tst r0, r1
    beq locret_802FBE8
    ldr r0, off_802FBEC // =dword_802FBF0 
    bl sub_8001158 // () -> void
locret_802FBE8:
    pop {pc}
    .balign 4, 0x00
off_802FBEC:    .word dword_802FBF0
dword_802FBF0:    .word 0x807C4004, 0x8240, 0x0
.endfunc // sub_802FBD8

.func
.thumb_func
sub_802FBFC:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #8
    tst r0, r1
    beq locret_802FC0C
    ldr r0, off_802FC10 // =dword_802FC14 
    bl sub_8001158 // () -> void
locret_802FC0C:
    pop {pc}
    .byte 0, 0
off_802FC10:    .word dword_802FC14
dword_802FC14:    .word 0x808E4014, 0x7210, 0x408E4024, 0x7218, 0x0
.endfunc // sub_802FBFC

.func
.thumb_func
sub_802FC28:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #4
    tst r0, r1
    beq locret_802FC38
    ldr r0, off_802FC3C // =dword_802FC40 
    bl sub_8001158 // () -> void
locret_802FC38:
    pop {pc}
    .balign 4, 0x00
off_802FC3C:    .word dword_802FC40
dword_802FC40:    .word 0x80A44004, 0x8250, 0x0
.endfunc // sub_802FC28

.func
.thumb_func
sub_802FC4C:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #2
    tst r0, r1
    beq locret_802FC5C
    ldr r0, off_802FC60 // =dword_802FC64 
    bl sub_8001158 // () -> void
locret_802FC5C:
    pop {pc}
    .byte 0, 0
off_802FC60:    .word dword_802FC64
dword_802FC64:    .word 0x80CC4004, 0x8260, 0x0
.endfunc // sub_802FC4C

.func
.thumb_func
sub_802FC70:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #0x10
    lsl r1, r1, #4
    tst r0, r1
    beq locret_802FC82
    ldr r0, off_802FC84 // =dword_802FC88 
    bl sub_8001158 // () -> void
locret_802FC82:
    pop {pc}
off_802FC84:    .word dword_802FC88
dword_802FC88:    .word 0x80404014, 0x7200, 0x40404024, 0x7208, 0x0
.endfunc // sub_802FC70

.func
.thumb_func
sub_802FC9C:
    push {lr}
    ldrh r0, [r5,#0xa]
    mov r1, #0x20 
    lsl r1, r1, #4
    tst r0, r1
    beq locret_802FCAE
    ldr r0, off_802FCB0 // =dword_802FCB4 
    bl sub_8001158 // () -> void
locret_802FCAE:
    pop {pc}
off_802FCB0:    .word dword_802FCB4
dword_802FCB4:    .word 0x806C4016, 0xA270, 0x0
.endfunc // sub_802FC9C

.func
.thumb_func
startScreen_initGfx_802FCC0:
    push {r4-r7,lr}
    bl sub_80017AA
    // dataList
    ldr r0, off_802FCD4 // =dword_802FCD8 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    bl sub_800183C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802FCD4:    .word dword_802FCD8
dword_802FCD8:    .word 0x887F36A0, 0x6013000, 0x2013A00, 0x87F40F4, 0x3001610
    .word 0xA0, 0x887F3370, 0x6010020, 0x2013A00, 0x87F3620
    .word 0x3001590, 0x80, 0x887F4394, 0x6000000, 0x2013A00
    .word 0x87F4194, 0x3001960, 0x1C0, 0x86A48C0, 0x6012800
    .word 0x180, 0x86A5500, 0x3001570, 0x20, 0x0
.endfunc // startScreen_initGfx_802FCC0

.func
.thumb_func
sub_802FD3C:
    push {r5,lr}
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #1
    ldr r3, off_802FD50 // =dword_87F8EB0 
    mov r4, #0x20 
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_802FD3C

    pop {r5,pc}
off_802FD50:    .word dword_87F8EB0
.func
.thumb_func
sub_802FD54:
    push {r4-r7,lr}
    bl sub_803E930
    beq locret_802FD68
    mov r1, #2
    ldrb r0, [r5,#2]
    tst r0, r0
    beq loc_802FD66
    mov r1, #3
loc_802FD66:
    strb r1, [r5,#9]
locret_802FD68:
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word byte_200B1A0
off_802FD70:    .word unk_30025B0
dword_802FD74:    .word 0x8
    .word unk_3002580
dword_802FD7C:    .word 0x4, 0x3000EB0, 0x2A0, 0x3002170, 0x4, 0x30025B0, 0x8, 0x3002580
    .word 0x4, 0x3000EB0, 0xE0, 0x3002170, 0x4
.endfunc // sub_802FD54

.func
.thumb_func
sub_802FDB0:
    mov r0, #0
    b loc_802FDB6
loc_802FDB4:
    mov r0, #4
loc_802FDB6:
    ldr r1, off_802FDF0 // =off_802FDF4 
    ldr r0, [r1,r0]
    push {r4,lr}
    add r4, r0, #0
    ldr r1, off_802FE08 // =dword_3002590 
    mov r2, #0x20 
    bl CpuSet_800093C
    mov r2, #0
    mvn r2, r2
    add r3, r4, #0
    mov r4, #4
loc_802FDCE:
    ldr r0, [r3]
    ldr r1, [r3,#4]
    bl sub_800098C
    add r3, #8
    sub r4, #1
    cmp r4, #0
    bgt loc_802FDCE
    ldr r0, off_802FE04 // =unk_3001150 
    ldr r1, off_802FDFC // =0x400 
    bl sub_8000900 // (int a1, int a2) -> void
    ldr r0, off_802FE00 // =dword_3001950 
    mov r1, #0
    str r1, [r0]
    pop {r4,pc}
    .byte 0, 0
off_802FDF0:    .word off_802FDF4
off_802FDF4:    .word off_802FD70
    .word dword_802FD7C+0x14
off_802FDFC:    .word 0x400
off_802FE00:    .word dword_3001950
off_802FE04:    .word unk_3001150
off_802FE08:    .word dword_3002590
.endfunc // sub_802FDB0

.func
.thumb_func
objRender_802FE0C:
    push {lr}
    ldr r0, off_802FE1C // =dword_3001D70 
    ldr r1, dword_802FE20 // =0x7000000 
    ldr r2, off_802FE24 // =0x400 
    bl sub_8000950
    pop {pc}
    .balign 4, 0x00
off_802FE1C:    .word dword_3001D70
dword_802FE20:    .word 0x7000000
off_802FE24:    .word 0x400
.endfunc // objRender_802FE0C

.func
.thumb_func
sub_802FE28:
    push {r4,lr}
    ldr r4, off_802FE34 // =loc_30068E8+1 
    mov lr, pc
    bx r4
.endfunc // sub_802FE28

    pop {r4,pc}
    .balign 4, 0x00
off_802FE34:    .word loc_30068E8+1
    push {r4,lr}
    ldr r4, off_802FE44 // =sub_3006920+1 
    mov lr, pc
    bx r4
    pop {r4,pc}
    .balign 4, 0x00
off_802FE44:    .word sub_3006920+1
.func
.thumb_func
sub_802FE48:
    ldr r3, off_802FF44 // =dword_2009A2C 
    ldr r1, [r3]
    mov r2, #0x80
    lsl r2, r2, #0x18
    mov r0, #0
loc_802FE52:
    tst r1, r2
    beq loc_802FE60
    lsr r2, r2, #1
    add r0, #1
    cmp r0, #0x10
    bge loc_802FE66
    b loc_802FE52
loc_802FE60:
    orr r1, r2
    str r1, [r3]
    mov pc, lr
loc_802FE66:
    mov r0, #0xff
    mov pc, lr
.endfunc // sub_802FE48

.func
.thumb_func
sub_802FE6A:
    ldr r3, off_802FF44 // =dword_2009A2C 
    ldr r1, [r3]
    mov r2, #0x80
    lsl r2, r2, #0x18
    lsr r2, r0
    bic r1, r2
    str r1, [r3]
    mov pc, lr
.endfunc // sub_802FE6A

.func
.thumb_func
sub_802FE7A:
    push {r4-r7,lr}
    lsr r1, r1, #2
    lsr r2, r2, #2
    push {r0-r2}
    ldr r0, off_802FF48 // =word_200A6F0 
    add r6, r0, #0
    mov r1, #0xc
    mul r1, r3
    add r0, r0, r1
    add r3, #0x10
    mov r1, #0xc
    mul r1, r3
    add r6, r6, r1
    mov r5, #0
    mov r2, #0
    strb r2, [r6,#8]
    pop {r2}
    strb r2, [r0,#8]
    lsl r2, r2, #1
    pop {r3}
    add r7, r3, #0
    bl sub_802FF10
    strb r3, [r0,#9]
    add r3, r7, #0
    ldr r1, off_802FF0C // =dword_8006660 
    ldrsh r4, [r1,r5]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6]
    ldrsh r4, [r1,r2]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0]
    ldr r1, off_802FF08 // =dword_80065D0+16 
    ldrsh r4, [r1,r5]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6,#2]
    ldrsh r4, [r1,r2]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0,#2]
    pop {r3}
    add r7, r3, #0
    bl sub_802FF10
    strb r3, [r0,#0xa]
    add r3, r7, #0
    ldr r1, off_802FF0C // =dword_8006660 
    ldrsh r4, [r1,r5]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6,#6]
    ldrsh r4, [r1,r2]
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0,#6]
    ldr r1, off_802FF08 // =dword_80065D0+16 
    ldrsh r4, [r1,r5]
    neg r4, r4
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r6,#4]
    ldrsh r4, [r1,r2]
    neg r4, r4
    mul r4, r3
    lsr r4, r4, #4
    strh r4, [r0,#4]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_802FF08:    .word dword_80065D0+0x10
off_802FF0C:    .word dword_8006660
.endfunc // sub_802FE7A

.func
.thumb_func
sub_802FF10:
    push {r1,r2}
    mov r1, #0x10
    lsl r1, r1, #4
    mov r2, #0
    cmp r3, #0
    beq loc_802FF26
loc_802FF1C:
    cmp r1, r3
    blt loc_802FF26
    sub r1, r1, r3
    add r2, #1
    b loc_802FF1C
loc_802FF26:
    add r3, r2, #0
    pop {r1,r2}
    mov pc, lr
.endfunc // sub_802FF10

.func
.thumb_func
sub_802FF2C:
    push {lr}
    ldr r0, off_802FF44 // =dword_2009A2C 
    mov r1, #0
    str r1, [r0]
    ldr r0, off_802FF48 // =word_200A6F0 
    ldr r1, off_802FF40 // =0x180 
    bl sub_8000900 // (int a1, int a2) -> void
    pop {pc}
    .byte 0, 0
off_802FF40:    .word 0x180
off_802FF44:    .word dword_2009A2C
off_802FF48:    .word word_200A6F0
.endfunc // sub_802FF2C

.func
.thumb_func
sub_802FF4C:
    push {r5-r7,lr}
    mov r5, r8
    mov r6, r9
    mov r7, r12
    push {r5-r7}
    push {r3,r4}
    push {r0-r2}
    mov r5, r10
    ldr r5, [r5,#0xc]
    ldrb r0, [r5,#3]
    ldr r1, [r5,#0x14]
    push {r0,r1,r5}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0xc]
    // numWords
    mov r1, #0x4c 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r0,r1,r5}
    strb r0, [r5,#3]
    str r1, [r5,#0x14]
    ldr r0, off_802FFF0 // =byte_200BE70 
    ldrb r3, [r0]
    sub r3, #0x1e
    lsl r3, r3, #0x12
    str r3, [r5,#0x1c]
    neg r3, r3
    str r3, [r5,#0x18]
    ldrb r3, [r0,#0x1] // (byte_200BE71 - 0x200be70)
    sub r3, #0x14
    lsl r3, r3, #0x12
    str r3, [r5,#0x20]
    neg r3, r3
    str r3, [r5,#0x24]
    pop {r1-r3}
    str r1, [r5,#0x30]
    str r2, [r5,#0x34]
    str r3, [r5,#0x38]
    mov r1, #0
    strh r1, [r5,#4]
    strh r1, [r5,#6]
    pop {r0,r1}
    cmp r0, #0xf0
    bge loc_802FFB8
    cmp r0, #0xe0
    bge loc_802FFBC
    cmp r0, #0xd0
    bge loc_802FFC0
    cmp r0, #0x80
    bge loc_802FFB2
    ldr r3, off_802FFE8 // =off_8033770 
    b loc_802FFC4
loc_802FFB2:
    ldr r3, off_802FFEC // =dword_803378C 
    sub r0, #0x80
    b loc_802FFC4
loc_802FFB8:
    mov r0, #8
    b loc_802FFCA
loc_802FFBC:
    mov r0, #0xc
    b loc_802FFCA
loc_802FFC0:
    mov r0, #0x10
    b loc_802FFCA
loc_802FFC4:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    ldr r0, [r3,r1]
loc_802FFCA:
    strb r0, [r5,#2]
    bl sub_80301E8
    bl sub_8030054
    bl loc_80302D0
    bl sub_803011A
    pop {r5-r7}
    mov r8, r5
    mov r9, r6
    mov r12, r7
    pop {r5-r7,pc}
    .balign 4, 0x00
off_802FFE8:    .word off_8033770
off_802FFEC:    .word dword_803378C
off_802FFF0:    .word byte_200BE70
.endfunc // sub_802FF4C

loc_802FFF4:
    push {r4-r7,lr}
    mov r0, r8
    mov r1, r9
    mov r2, r12
    push {r0-r2}
    mov r5, r10
    ldr r5, [r5,#0xc]
    ldr r0, off_8030030 // =off_8030034 
    ldrb r1, [r5,#3]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    .hword 0xF000
    .word 0xF000F8EB, 0x4809F81F, 0x584078A9, 0x470046FE, 0xF87BF000
    .word 0x4680BC07, 0x46944689, 0xBDF0
off_8030030:    .word off_8030034
off_8030034:    .word nullsub_7+1
    .word sub_8030126+1
    .word 0x8030040
    .word sub_8030136+1
    .word sub_8030136+1
    .word sub_8030158+1
    .word sub_8030194+1
    .word sub_8030136+1
.func
.thumb_func
sub_8030054:
    push {lr}
    ldr r0, off_8030064 // =loc_8030068 
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8030064:    .word loc_8030068
.endfunc // sub_8030054

loc_8030068:
    lsl r5, r7, #1
    lsr r3, r0, #0x20
    lsl r5, r7, #1
    lsr r3, r0, #0x20
    lsl r5, r5, #2
    lsr r3, r0, #0x20
    lsl r5, r0, #4
    lsr r3, r0, #0x20
    lsl r5, r7, #1
    lsr r3, r0, #0x20
    mov r1, #0
    ldr r4, [r5,#0x3c]
    sub r1, r1, r4
    mov r6, #0
    ldr r4, [r5,#0x40]
    sub r6, r6, r4
    add r7, r6, #0
    mov r8, r1
    add r1, r1, r6
    asr r1, r1, #0x10
    neg r1, r1
    strh r1, [r5,#4]
    add r6, r7, #0
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    mov r4, #0
    sub r6, r6, r4
    ldr r2, [r5,#0x44]
    add r6, r6, r2
    asr r6, r6, #0x10
    neg r6, r6
    strh r6, [r5,#6]
    mov pc, lr
    ldr r1, [r5,#0x3c]
    ldr r2, [r5,#0x18]
    cmp r1, r2
    bge loc_80300B6
    add r1, r2, #0
loc_80300B6:
    ldr r2, [r5,#0x1c]
    cmp r1, r2
    ble loc_80300BE
    add r1, r2, #0
loc_80300BE:
    str r1, [r5,#0x3c]
    asr r1, r1, #0x10
    strh r1, [r5,#4]
    ldr r6, [r5,#0x44]
    ldr r4, [r5,#0x40]
    ldr r2, [r5,#0x24]
    add r2, r2, r6
    cmp r4, r2
    bge loc_80300D2
    add r4, r2, #0
loc_80300D2:
    ldr r2, [r5,#0x20]
    add r2, r2, r6
    cmp r4, r2
    ble loc_80300DC
    add r4, r2, #0
loc_80300DC:
    str r4, [r5,#0x40]
    add r6, r4, #0
    ldr r4, [r5,#0x44]
    ldr r2, [r5,#0x24]
    add r2, r2, r6
    str r2, [r5,#0x2c]
    cmp r4, r2
    bge loc_80300EE
    add r4, r2, #0
loc_80300EE:
    ldr r2, [r5,#0x20]
    add r2, r2, r6
    str r2, [r5,#0x28]
    cmp r4, r2
    ble loc_80300FA
    add r4, r2, #0
loc_80300FA:
    str r4, [r5,#0x44]
    sub r6, r6, r4
    asr r6, r6, #0x10
    strh r6, [r5,#6]
    mov pc, lr
    ldr r4, [r5,#0x3c]
    asr r4, r4, #0x10
    add r4, #0x80
    add r4, #8
    strh r4, [r5,#4]
    ldr r4, [r5,#0x40]
    asr r4, r4, #0x10
    add r4, #0x80
    add r4, #0x30 
    strh r4, [r5,#6]
    mov pc, lr
.func
.thumb_func
sub_803011A:
    ldrh r1, [r5,#4]
    strh r1, [r5,#8]
    ldrh r1, [r5,#6]
    strh r1, [r5,#0xa]
    mov pc, lr
.endfunc // sub_803011A

.func
.thumb_func
nullsub_7:
    mov pc, lr
.endfunc // nullsub_7

.func
.thumb_func
sub_8030126:
    ldr r7, [r5,#0x14]
    ldr r2, [r7]
    str r2, [r5,#0x30]
    ldr r2, [r7,#4]
    str r2, [r5,#0x34]
    ldr r2, [r7,#8]
    str r2, [r5,#0x38]
    mov pc, lr
.endfunc // sub_8030126

.func
.thumb_func
sub_8030136:
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#8]
    sub r1, r1, r2
    ldrh r4, [r5,#6]
    ldrh r2, [r5,#0xa]
    sub r4, r4, r2
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x10]
    add r6, r6, r1
    ldrh r7, [r0,#0x12]
    add r7, r7, r4
    strh r6, [r0,#0x10]
    strh r7, [r0,#0x12]
    strh r6, [r0,#0x14]
    strh r7, [r0,#0x16]
    mov pc, lr
.endfunc // sub_8030136

.func
.thumb_func
sub_8030158:
    push {r4-r7,lr}
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#8]
    sub r1, r1, r2
    ldrh r4, [r5,#6]
    ldrh r2, [r5,#0xa]
    sub r4, r4, r2
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x14]
    add r6, r6, r1
    ldrh r7, [r0,#0x16]
    add r7, r7, r4
    strh r6, [r0,#0x14]
    strh r7, [r0,#0x16]
    push {r1,r4}
    bl sub_80269E2
    pop {r1,r4}
    tst r0, r0
    bne locret_8030192
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x18]
    add r6, r6, r1
    ldrh r7, [r0,#0x1a]
    add r7, r7, r4
    strh r6, [r0,#0x18]
    strh r7, [r0,#0x1a]
locret_8030192:
    pop {r4-r7,pc}
.endfunc // sub_8030158

.func
.thumb_func
sub_8030194:
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#8]
    sub r1, r1, r2
    ldrh r4, [r5,#6]
    ldrh r2, [r5,#0xa]
    sub r4, r4, r2
    mov r0, r10
    ldr r0, [r0,#8]
    ldrh r6, [r0,#0x10]
    add r6, r6, r1
    ldrh r7, [r0,#0x12]
    add r7, r7, r4
    strh r6, [r0,#0x10]
    strh r7, [r0,#0x12]
    mov pc, lr
.endfunc // sub_8030194

.func
.thumb_func
sub_80301B2:
    mov r2, r10
    ldr r2, [r2,#0xc]
    strb r0, [r2,#3]
    str r1, [r2,#0x14]
    mov pc, lr
.endfunc // sub_80301B2

    mov r2, r10
    ldr r2, [r2,#0xc]
    mov r0, #1
    strb r0, [r2,#3]
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r1, [r1,#0x18]
    add r1, #0x1c
    str r1, [r2,#0x14]
    mov pc, lr
.func
.thumb_func
sub_80301D0:
    mov r3, r10
    ldr r3, [r3,#0xc]
    ldr r0, [r3,#0x30]
    ldr r1, [r3,#0x34]
    ldr r2, [r3,#0x38]
    mov pc, lr
.endfunc // sub_80301D0

.func
.thumb_func
sub_80301DC:
    mov r3, r10
    ldr r3, [r3,#0xc]
    str r0, [r3,#0x30]
    str r1, [r3,#0x34]
    str r2, [r3,#0x38]
    mov pc, lr
.endfunc // sub_80301DC

.func
.thumb_func
sub_80301E8:
    push {lr}
    bl sub_80269D0
    tst r0, r0
    bne loc_8030200
    bl sub_800A7D0
    beq loc_8030200
    bl sub_800A0A4
    tst r0, r0
    beq loc_8030214
loc_8030200:
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    beq loc_8030214
    ldrh r6, [r5,#0xe]
    lsl r6, r6, #3
    ldr r7, off_8030280 // =dword_8030284 
    add r7, r7, r6
    sub r1, r0, #1
    strh r1, [r5,#0xc]
    b loc_8030226
loc_8030214:
    ldrh r0, [r5,#0x10]
    cmp r0, #0
    beq loc_8030266
    ldrh r6, [r5,#0x12]
    lsl r6, r6, #3
    ldr r7, off_8030280 // =dword_8030284 
    add r7, r7, r6
    sub r1, r0, #1
    strh r1, [r5,#0x10]
loc_8030226:
    bl sub_800154C
    ldr r2, [r7]
    and r0, r2
    lsl r0, r0, #0x10
    ldr r2, [r7,#4]
    sub r0, r0, r2
    ldr r2, [r5,#0x30]
    add r2, r2, r0
    str r2, [r5,#0x3c]
    mov r4, #0
    str r4, [r5,#0x48]
    ldr r4, off_803027C // =sCamera+76 
    ldrb r4, [r4]
    tst r4, r4
    beq loc_803024C
    neg r0, r0
    lsl r0, r0, #1
    str r0, [r5,#0x48]
loc_803024C:
    bl sub_800154C
    ldr r2, [r7]
    and r0, r2
    lsl r0, r0, #0x10
    ldr r2, [r7,#4]
    sub r0, r0, r2
    ldr r2, [r5,#0x34]
    add r2, r2, r0
    str r2, [r5,#0x40]
    ldr r2, [r5,#0x38]
    str r2, [r5,#0x44]
    pop {pc}
loc_8030266:
    mov r2, #0
    strh r2, [r5,#0xe]
    ldr r2, [r5,#0x30]
    str r2, [r5,#0x3c]
    ldr r2, [r5,#0x34]
    str r2, [r5,#0x40]
    ldr r2, [r5,#0x38]
    str r2, [r5,#0x44]
    mov r2, #0
    str r2, [r5,#0x48]
    pop {pc}
off_803027C:    .word sCamera+0x4C // sCamera.unk_4C
off_8030280:    .word dword_8030284
dword_8030284:    .word 0x1, 0x10000, 0x3, 0x20000, 0x7, 0x40000, 0xF, 0x80000, 0x21002000
.endfunc // sub_80301E8

.func
.thumb_func
sub_80302A8:
    mov r2, r10
    ldr r2, [r2,#0xc]
    strh r0, [r2,#0xe]
    strh r1, [r2,#0xc]
    mov pc, lr
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0x21 
.endfunc // sub_80302A8

.func
.thumb_func
sub_80302B6:
    mov r2, r10
    ldr r2, [r2,#0xc]
    strh r0, [r2,#0x12]
    strh r1, [r2,#0x10]
    mov pc, lr
.endfunc // sub_80302B6

.func
.thumb_func
sub_80302C0:
    mov r2, r10
    ldr r2, [r2,#0xc]
    ldrh r3, [r2,#0xe]
    cmp r0, r3
    blt locret_80302CE
    strh r0, [r2,#0xe]
    strh r1, [r2,#0xc]
locret_80302CE:
    mov pc, lr
.endfunc // sub_80302C0

loc_80302D0:
    push {lr}
    ldr r0, off_80302E0 // =loc_80302E4 
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_80302E0:    .word loc_80302E4
loc_80302E4:
    lsl r1, r7, #0xb
    lsr r3, r0, #0x20
    lsl r7, r2, #0xc
    lsr r3, r0, #0x20
    lsl r7, r6, #0xc
    lsr r3, r0, #0x20
    lsl r7, r3, #0xd
    lsr r3, r0, #0x20
    lsl r3, r7, #0xd
    lsr r3, r0, #0x20
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
loc_8030308:
    strh r1, [r3,#0x14]
    strh r1, [r3,#0x18]
    and r2, r4
    strh r2, [r3,#0x12]
    strh r2, [r3,#0x16]
    strh r2, [r3,#0x1a]
    mov pc, lr
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x14]
    and r2, r4
    strh r2, [r3,#0x12]
    strh r2, [r3,#0x16]
    mov r1, #0
    strh r1, [r3,#0x18]
    strh r1, [r3,#0x1a]
    mov pc, lr
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    and r1, r4
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x14]
    strh r1, [r3,#0x18]
    and r2, r4
    strh r2, [r3,#0x12]
    strh r2, [r3,#0x16]
    strh r2, [r3,#0x1a]
    mov r1, #0
    strh r1, [r3,#0x10]
    strh r1, [r3,#0x12]
    strh r1, [r3,#0x18]
    strh r1, [r3,#0x1a]
    mov pc, lr
    mov r7, r10
    ldr r5, [r7,#0xc]
    ldrh r1, [r5,#4]
    ldrh r2, [r5,#6]
    ldr r3, [r7,#8]
    mov r4, #0xff
    lsl r4, r4, #1
    add r4, #1
    and r1, r4
    strh r1, [r3,#0x10]
    sub r2, #8
    and r2, r4
    strh r2, [r3,#0x12]
    mov pc, lr
    mov pc, lr
.func
.thumb_func
sub_803037C:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    ldr r5, off_80305E0 // =byte_200BE70 
    cmp r0, #0x80
    bge loc_8030392
    ldr r3, off_80303D8 // =off_80329A8 
    ldr r4, off_80303DC // =off_8032F6C 
    b loc_8030398
loc_8030392:
    ldr r3, off_80303E0 // =off_80329C4 
    ldr r4, off_80303E4 // =off_8032F88 
    sub r0, #0x80
loc_8030398:
    lsl r0, r0, #2
    ldr r3, [r3,r0]
    mov r2, #0xc
    mul r2, r1
    add r3, r3, r2
    str r3, [r5,#0x8] // (dword_200BE78 - 0x200be70)
    ldr r4, [r4,r0]
    mov r2, #0xc
    mul r2, r1
    add r4, r4, r2
    ldr r2, [r4]
    str r2, [r5,#0x18] // (dword_200BE88 - 0x200be70)
    ldr r2, [r4,#4]
    str r2, [r5,#0x1c] // (dword_200BE8C - 0x200be70)
    ldr r2, [r4,#8]
    str r2, [r5,#0x20] // (dword_200BE90 - 0x200be70)
    ldr r0, [r3,#8]
    ldr r1, off_803057C // =word_2013A00 
    ldrb r2, [r0]
    strb r2, [r5]
    ldrb r2, [r0,#1]
    strb r2, [r5,#0x1] // (byte_200BE71 - 0x200be70)
    ldr r2, [r3,#4]
    str r2, [r5,#0x10] // (dword_200BE80 - 0x200be70)
    ldr r2, [r3]
    str r2, [r5,#0x14] // (dword_200BE84 - 0x200be70)
    str r1, [r5,#0xc] // (dword_200BE7C - 0x200be70)
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_80303D8:    .word off_80329A8
off_80303DC:    .word off_8032F6C
off_80303E0:    .word off_80329C4
off_80303E4:    .word off_8032F88
.endfunc // sub_803037C

.func
.thumb_func
sub_80303E8:
    ldr r1, off_80305E0 // =byte_200BE70 
    mov r0, #0x20 
    strb r0, [r1]
    strb r0, [r1,#0x1] // (byte_200BE71 - 0x200be70)
    mov pc, lr
.endfunc // sub_80303E8

.func
.thumb_func
sub_80303F2:
    ldr r1, off_80305E0 // =byte_200BE70 
    mov r0, #0x40 
    strb r0, [r1]
    strb r0, [r1,#0x1] // (byte_200BE71 - 0x200be70)
    mov pc, lr
.endfunc // sub_80303F2

    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    push {r4,r5}
    add r5, r0, #0
    mov r1, #0
    ldr r4, [r5]
    sub r1, r1, r4
    mov r6, #0
    ldr r4, [r5,#4]
    sub r6, r6, r4
    add r7, r6, #0
    mov r8, r1
    add r1, r1, r6
    asr r1, r1, #0x10
    neg r1, r1
    add r6, r7, #0
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    mov r4, #0
    sub r6, r6, r4
    ldr r2, [r5,#8]
    add r6, r6, r2
    asr r6, r6, #0x10
    neg r6, r6
    ldr r5, off_80305E0 // =byte_200BE70 
    asr r1, r1, #3
    asr r6, r6, #3
    ldrb r2, [r5]
    lsr r2, r2, #1
    ldrb r3, [r5,#0x1] // (byte_200BE71 - 0x200be70)
    lsr r3, r3, #1
    add r1, r1, r2
    add r6, r6, r3
    cmp r1, #0
    bge loc_8030448
    b loc_8030468
loc_8030448:
    ldrb r2, [r5]
    cmp r1, r2
    blt loc_8030450
    b loc_8030468
loc_8030450:
    cmp r6, #0
    bge loc_8030456
    b loc_8030468
loc_8030456:
    ldrb r3, [r5,#0x1] // (byte_200BE71 - 0x200be70)
    cmp r6, r3
    blt loc_803045E
    b loc_8030468
loc_803045E:
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    mov r0, #0
    pop {r4-r7,pc}
loc_8030468:
    pop {r4,r5}
    mov r8, r4
    mov r9, r5
    mov r0, #1
    pop {r4-r7,pc}
loc_8030472:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, off_80305E0 // =byte_200BE70 
    ldr r0, [r5,#0x10] // (dword_200BE80 - 0x200be70)
    mov r2, #0xd
    lsl r2, r2, #5
    add r0, #4
    ldr r1, off_80304E0 // =word_3001960 
    bl sub_8000950
    mov r0, #0
    ldr r7, [r5,#0x14] // (dword_200BE84 - 0x200be70)
    add r6, r7, #0
loc_8030492:
    push {r0,r6}
    ldr r0, [r7,#4]
    add r0, r0, r6
    ldr r1, off_803057C // =word_2013A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, off_803057C // =word_2013A00 
    ldr r1, [r7,#8]
    ldr r2, dword_80304E4 // =0x6000000 
    add r1, r1, r2
    ldr r2, [r7]
    lsl r2, r2, #2
    bl sub_8000950
    add r7, #0xc
    pop {r0,r6}
    add r0, #1
    cmp r0, #2
    blt loc_8030492
    ldr r3, [r5,#0x8] // (dword_200BE78 - 0x200be70)
    ldr r0, [r3,#8]
    ldr r1, off_803057C // =word_2013A00 
    mov r2, #0xc
    push {r0,r1}
    bl CpuSet_800093C
    pop {r0,r1}
    add r0, #0xc
    add r1, #0xc
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, [r5,#0x1c] // (dword_200BE8C - 0x200be70)
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_80304E0:    .word word_3001960
dword_80304E4:    .word 0x6000000
.func
.thumb_func
sub_80304E8:
    push {r4-r7,lr}
    add r5, r0, #0
    ldr r0, [r5,#0x10]
    tst r0, r0
    beq loc_80304FC
    add r0, #4
    ldr r1, [r5,#0x14]
    ldr r2, [r5,#0x18]
    bl loc_8000AC8
loc_80304FC:
    ldr r7, [r5]
    tst r7, r7
    beq locret_803053A
    ldr r0, [r7,#4]
    // src
    add r0, r0, r7
    // dest
    ldr r1, src // =unk_2034A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, src // =unk_2034A00 
    ldr r1, [r5,#4]
    ldr r2, [r7]
    lsl r2, r2, #2
    bl sub_8000950
    ldr r0, [r5,#8]
    // dest
    ldr r1, src // =unk_2034A00 
    // src
    add r0, #0xc
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, src // =unk_2034A00 
    ldr r1, [r5,#0xc]
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    ldr r3, [r5,#8]
    ldrb r2, [r3]
    ldrb r3, [r3,#1]
    mul r2, r3
    lsl r2, r2, #1
    bl sub_8000950
locret_803053A:
    pop {r4-r7,pc}
src:    .word unk_2034A00
.endfunc // sub_80304E8

.func
.thumb_func
sub_8030540:
    push {r4-r7,lr}
    add r5, r0, #0
    ldr r0, [r5,#0x10]
    tst r0, r0
    beq loc_8030554
    add r0, #4
    ldr r1, [r5,#0x14]
    ldr r2, [r5,#0x18]
    bl loc_8000AC8
loc_8030554:
    ldr r0, [r5,#8]
    // dest
    ldr r1, off_8030578 // =unk_2034A00 
    // src
    add r0, #0xc
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, off_8030578 // =unk_2034A00 
    ldr r1, [r5,#0xc]
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    ldr r3, [r5,#8]
    ldrb r2, [r3]
    ldrb r3, [r3,#1]
    mul r2, r3
    lsl r2, r2, #1
    bl loc_8000AC8
.endfunc // sub_8030540

    pop {r4-r7,pc}
off_8030578:    .word unk_2034A00
off_803057C:    .word word_2013A00
.func
.thumb_func
sub_8030580:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    mov r3, r10
    ldr r3, [r3,#0xc]
    ldr r5, off_80305E0 // =byte_200BE70 
    mov r4, #4
    ldrsh r0, [r3,r4]
    mov r4, #6
    ldrsh r1, [r3,r4]
    asr r0, r0, #3
    asr r1, r1, #3
    mov r4, #0x4 // (word_200BE74 - 0x200be70)
    ldrsh r2, [r5,r4]
    cmp r0, r2
    beq loc_80305BC
    bgt loc_80305B2
    sub r2, r2, r0
    push {r0,r1}
    bl loc_803066E
    pop {r0,r1}
    b loc_80305BC
loc_80305B2:
    sub r2, r0, r2
    push {r0,r1}
    bl loc_80306C8
    pop {r0,r1}
loc_80305BC:
    mov r4, #0x6 // (word_200BE76 - 0x200be70)
    ldrsh r2, [r5,r4]
    cmp r1, r2
    beq loc_80305D4
    bgt loc_80305CE
    sub r2, r2, r1
    bl loc_8030722
    b loc_80305D4
loc_80305CE:
    sub r2, r1, r2
    bl loc_803077C
loc_80305D4:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
    .byte 0, 0
off_80305E0:    .word byte_200BE70
.endfunc // sub_8030580

.func
.thumb_func
sub_80305E4:
    cmp r0, #0
    bge loc_80305EA
    b loc_8030622
loc_80305EA:
    ldrb r6, [r5]
    cmp r0, r6
    blt loc_80305F2
    b loc_8030622
loc_80305F2:
    cmp r1, #0
    bge loc_80305F8
    b loc_8030622
loc_80305F8:
    ldrb r6, [r5,#1]
    cmp r1, r6
    blt loc_8030600
    b loc_8030622
loc_8030600:
    ldr r3, [r5,#0xc]
    mov r4, #8
    ldrb r7, [r5]
    lsl r7, r7, #1
loc_8030608:
    ldr r2, [r3,r4]
    add r2, r2, r3
    lsl r6, r0, #1
    add r2, r2, r6
    add r6, r1, #0
    mul r6, r7
    ldrh r2, [r2,r6]
    push {r2}
    sub r4, #4
    cmp r4, #0
    bgt loc_8030608
    pop {r0,r1}
    mov pc, lr
loc_8030622:
    mov r0, #0
    mov r1, #0
    b loc_8030600
.endfunc // sub_80305E4

.func
.thumb_func
sub_8030628:
    push {r0,r1}
    mov r2, #1
loc_803062C:
    pop {r0}
    mov r7, r10
    ldr r7, [r7,#0x28]
    lsl r6, r2, #0xb
    add r7, r7, r6
    lsl r6, r3, #1
    add r7, r7, r6
    lsl r6, r4, #6
    strh r0, [r7,r6]
    add r2, #1
    cmp r2, #2
    ble loc_803062C
    mov pc, lr
.endfunc // sub_8030628

    mov r2, #2
    mov r7, r10
    ldr r7, [r7,#0x28]
    lsl r6, r2, #0xb
    add r7, r7, r6
    lsl r6, r3, #1
    add r7, r7, r6
    lsl r6, r4, #6
    strh r1, [r7,r6]
    mov pc, lr
    mov r2, #1
    mov r7, r10
    ldr r7, [r7,#0x28]
    lsl r6, r2, #0xb
    add r7, r7, r6
    lsl r6, r3, #1
    add r7, r7, r6
    lsl r6, r4, #6
    strh r1, [r7,r6]
    mov pc, lr
loc_803066E:
    push {lr}
    strh r0, [r5,#4]
    cmp r2, #5
    blt loc_803067E
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_80306C6
loc_803067E:
    push {r1}
    mov r7, #0
loc_8030682:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_80305E4
    mov r4, r9
    mov r3, r8
    sub r3, #0x20 
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r1, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_8030682
    pop {r1}
    add r0, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_803067E
locret_80306C6:
    pop {pc}
loc_80306C8:
    push {lr}
    strh r0, [r5,#4]
    cmp r2, #5
    blt loc_80306D8
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_8030720
loc_80306D8:
    push {r1}
    mov r7, #0
loc_80306DC:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    add r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_80305E4
    mov r4, r9
    mov r3, r8
    add r3, #0x1e
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r1, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_80306DC
    pop {r1}
    sub r0, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_80306D8
locret_8030720:
    pop {pc}
loc_8030722:
    push {lr}
    strh r1, [r5,#6]
    cmp r2, #5
    blt loc_8030732
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_803077A
loc_8030732:
    push {r0}
    mov r7, #0
loc_8030736:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_80305E4
    mov r4, r9
    mov r3, r8
    sub r4, #0x20 
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r0, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_8030736
    pop {r0}
    add r1, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_8030732
locret_803077A:
    pop {pc}
loc_803077C:
    push {lr}
    strh r1, [r5,#6]
    cmp r2, #5
    blt loc_803078C
    ldr r3, [r5,#0x20]
    mov lr, pc
    bx r3
    b locret_80307D4
loc_803078C:
    push {r0}
    mov r7, #0
loc_8030790:
    push {r2,r7}
    mov r8, r0
    mov r9, r1
    sub r0, #0xf
    add r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    bl sub_80305E4
    mov r4, r9
    mov r3, r8
    add r4, #0x14
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    pop {r2,r7}
    mov r0, r8
    mov r1, r9
    add r0, #1
    add r7, #1
    cmp r7, #0x20 
    blt loc_8030790
    pop {r0}
    sub r1, #1
    sub r2, #1
    cmp r2, #0
    bgt loc_803078C
locret_80307D4:
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80307D8:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    mov r3, r10
    ldr r3, [r3,#0xc]
    mov r4, #4
    ldrsh r0, [r3,r4]
    mov r4, #6
    ldrsh r1, [r3,r4]
    asr r0, r0, #3
    asr r1, r1, #3
    ldr r5, off_8030804 // =byte_200BE70 
    bl sub_803086C
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8030804:    .word byte_200BE70
.endfunc // sub_80307D8

.func
.thumb_func
sub_8030808:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0xc]
    mov r1, #4
    ldrsh r3, [r0,r1]
    mov r1, #6
    ldrsh r4, [r0,r1]
    asr r3, r3, #3
    asr r4, r4, #3
    strh r3, [r5,#4]
    strh r4, [r5,#6]
    mov r1, #0
loc_8030820:
    push {r3}
    mov r0, #0
loc_8030824:
    push {r0,r1}
    add r0, r3, #0
    add r1, r4, #0
    sub r0, #0xf
    sub r1, #0xa
    ldrb r6, [r5]
    lsr r6, r6, #1
    ldrb r7, [r5,#1]
    lsr r7, r7, #1
    add r0, r0, r6
    add r1, r1, r7
    mov r8, r3
    mov r9, r4
    bl sub_80305E4
    mov r3, r8
    mov r4, r9
    mov r6, #0x1f
    and r3, r6
    and r4, r6
    ldr r6, [r5,#0x18]
    mov lr, pc
    bx r6
    mov r3, r8
    mov r4, r9
    add r3, #1
    pop {r0,r1}
    add r0, #1
    cmp r0, #0x20 
    blt loc_8030824
    pop {r3}
    add r4, #1
    add r1, #1
    cmp r1, #0x20 
    blt loc_8030820
    pop {pc}
.endfunc // sub_8030808

.func
.thumb_func
sub_803086C:
    push {r4-r7,lr}
    mov r8, r0
    mov r9, r1
    ldr r4, [r5,#0xc]
    ldr r0, [r4,#4]
    add r0, r0, r4
    mov r1, #1
    ldrb r2, [r5]
    ldrb r3, [r5,#1]
    bl sub_8030892
    ldr r0, [r4,#8]
    add r0, r0, r4
    mov r1, #2
    ldrb r2, [r5]
    ldrb r3, [r5,#1]
    bl sub_8030892
    pop {r4-r7,pc}
.endfunc // sub_803086C

.func
.thumb_func
sub_8030892:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r2, [sp]
    str r3, [sp,#4]
    add r7, r0, #0
    add r6, r1, #0
    mov r5, #0
loc_80308A0:
    mov r0, r8
    mov r1, r9
    add r1, r1, r5
    sub r0, #0xf
    sub r1, #0xa
    ldr r2, [sp]
    lsr r2, r2, #1
    ldr r3, [sp,#4]
    lsr r3, r3, #1
    add r0, r0, r2
    add r1, r1, r3
    blt loc_80308E0
    ldr r2, [sp,#4]
    cmp r1, r2
    bge loc_80308E0
    ldr r2, [sp]
    lsl r2, r2, #1
    lsl r0, r0, #1
    mul r2, r1
    add r3, r0, r2
    mov r0, r8
    mov r1, r9
    add r1, r1, r5
    mov r2, #0x1f
    and r0, r2
    and r1, r2
    add r2, r6, #0
    add r3, r3, r7
    mov r4, #0x20 
    bl sub_80018E0
    b loc_80308FA
loc_80308E0:
    push {r5}
    mov r0, #0
    mov r1, r9
    add r1, r1, r5
    mov r2, #0x1f
    and r1, r2
    add r2, r6, #0
    mov r3, #0
    mov r4, #0x20 
    mov r5, #1
    bl sub_80018D0
    pop {r5}
loc_80308FA:
    add r5, #1
    cmp r5, #0x20 
    blt loc_80308A0
    add sp, sp, #8
    pop {r4-r7,pc}
off_8030904:    .word sub_804CE90+1
    .word sub_804E62C+1
    .word sub_8052688+1
    .word sub_80595B8+1
    .word sub_805DF08+1
    .word sub_806036C+1
    .word sub_8062AB0+1
off_8030920:    .word sub_804CF32+1
    .word sub_804E6D0+1
    .word sub_8052764+1
    .word sub_8059664+1
    .word sub_805DFA2+1
    .word sub_8060406+1
    .word sub_8062B64+1
off_803093C:    .word sub_80663D0+1
    .word sub_8067B5C+1
    .word sub_8069038+1
    .word sub_8069FE8+1
    .word locret_80309FC+1
    .word sub_806AA00+1
    .word locret_80309FC+1
    .word locret_80309FC+1
    .word sub_806C23C+1
    .word locret_80309FC+1
    .word locret_80309FC+1
    .word locret_80309FC+1
    .word sub_806D8F8+1
    .word sub_806FC08+1
    .word locret_80309FC+1
    .word locret_80309FC+1
    .word sub_8071B50+1
    .word sub_807544C+1
    .word sub_8077D00+1
    .word sub_807931C+1
    .word sub_807A8E0+1
    .word sub_807CDEC+1
    .word sub_807ECD0+1
off_8030998:    .word sub_8066450+1
    .word sub_8067BE4+1
    .word sub_80690C2+1
    .word sub_806A070+1
    .word locret_80309FE+1
    .word sub_806AAAA+1
    .word locret_80309FE+1
    .word locret_80309FE+1
    .word sub_806C2E2+1
    .word locret_80309FE+1
    .word locret_80309FE+1
    .word locret_80309FE+1
    .word sub_806D9FC+1
    .word sub_806FCF8+1
    .word locret_80309FE+1
    .word locret_80309FE+1
    .word sub_8071BE4+1
    .word sub_80754E2+1
    .word sub_8077D8A+1
    .word sub_807939A+1
    .word sub_807A974+1
    .word sub_807CE90+1
    .word sub_807ED6C+1
off_80309F4:    .word locret_80309FC+1
off_80309F8:    .word locret_80309FE+1
.endfunc // sub_8030892

locret_80309FC:
    mov pc, lr
locret_80309FE:
    mov pc, lr
loc_8030A00:
    push {lr}
    cmp r0, #0xf0
    bge loc_8030A14
    cmp r0, #0x80
    bge loc_8030A0E
    ldr r1, off_8030A24 // =off_8030904 
    b loc_8030A18
loc_8030A0E:
    ldr r1, off_8030A28 // =off_803093C 
    sub r0, #0x80
    b loc_8030A18
loc_8030A14:
    ldr r1, off_8030A2C // =off_80309F4 
    sub r0, #0xf0
loc_8030A18:
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8030A24:    .word off_8030904
off_8030A28:    .word off_803093C
off_8030A2C:    .word off_80309F4
.func
.thumb_func
sub_8030A30:
    push {lr}
    cmp r0, #0xf0
    bge loc_8030A44
    cmp r0, #0x80
    bge loc_8030A3E
    ldr r2, off_8030A54 // =off_8030920 
    b loc_8030A48
loc_8030A3E:
    ldr r2, off_8030A58 // =off_8030998 
    sub r0, #0x80
    b loc_8030A48
loc_8030A44:
    ldr r2, off_8030A5C // =off_80309F8 
    sub r0, #0xf0
loc_8030A48:
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov lr, pc
    bx r2
    pop {pc}
    .balign 4, 0x00
off_8030A54:    .word off_8030920
off_8030A58:    .word off_8030998
off_8030A5C:    .word off_80309F8
.endfunc // sub_8030A30

.func
.thumb_func
sub_8030A60:
    push {r4-r6,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c] // Toolkit.gamestate
    ldr r1, [r4,#0x20] // GameState.unk_20
    cmp r0, r1
    beq locret_8030A8A
    str r0, [r4,#0x20] // GameState.unk_20
    push {r0}
    mov r0, #4
    bl sub_80035A2
    pop {r0}
    mov r1, #0
loc_8030A7A:
    ldr r2, [r0]
    cmp r2, #0xff
    beq locret_8030A8A
    bl sub_8030A8C
    add r1, #1
    add r0, #4
    b loc_8030A7A
locret_8030A8A:
    pop {r4-r6,pc}
.endfunc // sub_8030A60

.func
.thumb_func
sub_8030A8C:
    push {lr}
    push {r0-r2}
    mov r0, #0
    bl sub_80045C0
    pop {r0-r2}
    tst r5, r5
    beq locret_8030AA0
    strb r1, [r5,#0x10]
    str r2, [r5,#0x60]
locret_8030AA0:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8030A8C

.func
.thumb_func
sub_8030AA4:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    cmp r0, #0x80
    bge loc_8030AB6
    ldr r3, off_8030B00 // =pt_8033530 
    b loc_8030ABA
loc_8030AB6:
    ldr r3, off_8030B04 // =pt_803354C 
    sub r0, #0x80
loc_8030ABA:
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r0, [r3]
    push {r0}
    // src
    add r0, #0x10
    // dest
    ldr r1, off_8030B08 // =unk_2027A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r6}
    ldr r7, off_8030B08 // =unk_2027A00 
    ldr r0, [r6]
    add r0, r0, r7
    bl sub_8030B0C
    ldr r0, [r6,#4]
    add r0, r0, r7
    bl sub_8031600
    ldr r0, [r6,#8]
    add r0, r0, r7
    bl sub_803189C
    ldr r0, [r6,#0xc]
    add r0, r0, r7
    bl sub_8031A68
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
    .byte 0, 0
off_8030B00:    .word pt_8033530
off_8030B04:    .word pt_803354C
off_8030B08:    .word unk_2027A00
.endfunc // sub_8030AA4

.func
.thumb_func
sub_8030B0C:
    ldr r5, off_8030E10 // =dword_2011D10 
    ldr r1, [r0]
    strh r1, [r5,#0x4] // (word_2011D14 - 0x2011d10)
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#0x8] // (byte_2011D18 - 0x2011d10)
    strb r0, [r5,#0x9] // (byte_2011D19 - 0x2011d10)
    mov pc, lr
.endfunc // sub_8030B0C

.func
.thumb_func
sub_8030B1E:
    push {lr}
    ldrh r2, [r5,#4]
    cmp r2, #0
    beq loc_8030B66
    mov r2, #0
    ldrh r3, [r5,#4]
    ldr r6, [r5]
    mov r8, r6
loc_8030B2E:
    add r4, r2, r3
    lsr r4, r4, #1
    lsl r7, r4, #2
    mov r6, r8
    add r6, r6, r7
    ldrh r7, [r6]
    cmp r1, r7
    beq loc_8030B4C
    bgt loc_8030B44
    add r3, r4, #0
    b loc_8030B48
loc_8030B44:
    add r2, r4, #0
    add r2, #1
loc_8030B48:
    cmp r2, r3
    blt loc_8030B2E
loc_8030B4C:
    cmp r1, r7
    bne loc_8030B66
    ldr r2, [r5]
loc_8030B52:
    sub r6, #4
    cmp r6, r2
    blt loc_8030B60
    ldrh r7, [r6]
    cmp r1, r7
    bne loc_8030B60
    b loc_8030B52
loc_8030B60:
    add r6, #4
    add r2, r6, #0
    pop {pc}
loc_8030B66:
    mov r2, #0
    pop {pc}
.endfunc // sub_8030B1E

.func
.thumb_func
sub_8030B6A:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    ldr r5, off_8030E10 // =dword_2011D10 
    ldr r2, off_8030C38 // =dword_200F3D0 
    str r0, [r2]
    mov r4, #0
    mov r12, r4
    strb r4, [r5,#0xb] // (byte_2011D1B - 0x2011d10)
loc_8030B80:
    add r1, r5, #0
    add r1, #0x18
    str r1, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
    mov r1, #0
    strb r1, [r5,#0xa] // (byte_2011D1A - 0x2011d10)
    neg r1, r1
    strh r1, [r5,#0x6] // (word_2011D16 - 0x2011d10)
    bl sub_8030CAC
    mov r2, #0x18
    add r2, r2, r5
    str r2, [r5,#0x10] // (dword_2011D20 - 0x2011d10)
loc_8030B98:
    ldr r1, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
    cmp r2, r1
    beq loc_8030C0E
    ldrh r1, [r2]
    bl sub_8030B1E
    cmp r2, #0
    bne loc_8030BB0
loc_8030BA8:
    ldr r2, [r5,#0x10] // (dword_2011D20 - 0x2011d10)
    add r2, #0x10
    str r2, [r5,#0x10] // (dword_2011D20 - 0x2011d10)
    b loc_8030B98
loc_8030BB0:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_8030BA8
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r3, [r0,r6]
    cmp r3, r4
    blt loc_8030C0A
    ldrb r6, [r7,#2]
    add r4, r4, r6
    cmp r3, r4
    bgt loc_8030C0A
    ldrb r6, [r7,#1]
    strb r6, [r5,#0xc] // (byte_2011D1C - 0x2011d10)
    mov r4, #0x80
    tst r6, r4
    beq loc_8030BEE
    push {r0-r2}
    mov r4, #0x7f
    and r6, r4
    ldr r0, dword_8030CA8 // =0x1640 
    add r0, r0, r6
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    pop {r0-r2}
    bne loc_8030C0A
loc_8030BEE:
    ldrb r6, [r7,#3]
    lsl r6, r6, #2
    ldr r4, off_8030C3C // =dword_8030C40 
    add r4, r4, r6
    ldr r4, [r4]
    mov lr, pc
    bx r4
    ldrb r4, [r5,#0xb] // (byte_2011D1B - 0x2011d10)
    add r4, r4, r3
    strb r4, [r5,#0xb] // (byte_2011D1B - 0x2011d10)
    cmp r4, #4
    bge loc_8030C1A
    cmp r3, #0
    bne loc_8030B80
loc_8030C0A:
    add r2, #4
    b loc_8030BB0
loc_8030C0E:
    mov r0, r12
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
loc_8030C1A:
    ldr r0, off_8030C38 // =dword_200F3D0 
    ldr r0, [r0]
    ldr r6, [r0,#0xc]
    str r6, [r0]
    ldr r6, [r0,#0x10]
    str r6, [r0,#4]
    ldr r6, [r0,#0x14]
    str r6, [r0,#8]
    mov r0, #0
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8030C38:    .word dword_200F3D0
off_8030C3C:    .word dword_8030C40
dword_8030C40:    .word 0x0
    .word sub_8031388+1
    .word sub_80313B0+1
    .word sub_80313D4+1
    .word sub_80313FC+1
    .word sub_8031420+1
    .word sub_8031478+1
    .word sub_80314CC+1
    .word sub_8031520+1
    .word sub_80311F4+1
    .word sub_803123E+1
    .word sub_8031264+1
    .word sub_803128E+1
    .word sub_80312D0+1
    .word sub_8031302+1
    .word sub_8031330+1
    .word sub_803135E+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_8030CA8:    .word 0x1640
.endfunc // sub_8030B6A

.func
.thumb_func
sub_8030CAC:
    push {lr}
    push {r0,r5}
    mov r2, #0xe
    ldrsh r4, [r0,r2]
    mov r2, #0x12
    ldrsh r7, [r0,r2]
    bl sub_8030DA2
    mov r2, #2
    ldrsh r1, [r0,r2]
    mov r2, #0xe
    ldrsh r2, [r0,r2]
    sub r1, r1, r2
    add r6, r1, #0
    cmp r6, #0
    bge loc_8030CCE
    neg r6, r6
loc_8030CCE:
    mov r3, #6
    ldrsh r2, [r0,r3]
    mov r3, #0x12
    ldrsh r3, [r0,r3]
    sub r2, r2, r3
    add r7, r2, #0
    cmp r7, #0
    bge loc_8030CE0
    neg r7, r7
loc_8030CE0:
    cmp r6, r7
    bgt loc_8030CEC
    blt loc_8030D28
    cmp r1, #0
    bne loc_8030D64
    b loc_8030D92
loc_8030CEC:
    mov r3, #0xe
    ldrsh r4, [r0,r3]
    mov r3, #2
    ldrsh r6, [r0,r3]
    mov r3, #0x12
    ldrsh r7, [r0,r3]
    mov r3, #1
    mov r0, #1
    cmp r1, #0
    bge loc_8030D04
    neg r3, r3
    neg r1, r1
loc_8030D04:
    cmp r2, #0
    bge loc_8030D0C
    neg r0, r0
    neg r2, r2
loc_8030D0C:
    mvn r5, r1
loc_8030D0E:
    add r4, r4, r3
    cmp r4, r6
    beq loc_8030D92
    add r5, r5, r2
    add r5, r5, r2
    cmp r5, r1
    blt loc_8030D22
    add r7, r7, r0
    sub r5, r5, r1
    sub r5, r5, r1
loc_8030D22:
    bl sub_8030DA2
    b loc_8030D0E
loc_8030D28:
    mov r3, #0x12
    ldrsh r7, [r0,r3]
    mov r3, #6
    ldrsh r6, [r0,r3]
    mov r3, #0xe
    ldrsh r4, [r0,r3]
    mov r3, #1
    mov r0, #1
    cmp r1, #0
    bge loc_8030D40
    neg r3, r3
    neg r1, r1
loc_8030D40:
    cmp r2, #0
    bge loc_8030D48
    neg r0, r0
    neg r2, r2
loc_8030D48:
    mvn r5, r2
loc_8030D4A:
    add r7, r7, r0
    cmp r7, r6
    beq loc_8030D92
    add r5, r5, r1
    add r5, r5, r1
    cmp r5, r2
    blt loc_8030D5E
    add r4, r4, r3
    sub r5, r5, r2
    sub r5, r5, r2
loc_8030D5E:
    bl sub_8030DA2
    b loc_8030D4A
loc_8030D64:
    mov r3, #0x12
    ldrsh r7, [r0,r3]
    mov r3, #6
    ldrsh r6, [r0,r3]
    mov r3, #0xe
    ldrsh r4, [r0,r3]
    mov r3, #1
    mov r0, #1
    cmp r1, #0
    bge loc_8030D7C
    neg r3, r3
    neg r1, r1
loc_8030D7C:
    cmp r2, #0
    bge loc_8030D84
    neg r0, r0
    neg r2, r2
loc_8030D84:
    add r7, r7, r0
    cmp r7, r6
    beq loc_8030D92
    add r4, r4, r3
    bl sub_8030DA2
    b loc_8030D84
loc_8030D92:
    pop {r0,r5}
    mov r2, #2
    ldrsh r4, [r0,r2]
    mov r2, #6
    ldrsh r7, [r0,r2]
    bl sub_8030DA2
    pop {pc}
.endfunc // sub_8030CAC

.func
.thumb_func
sub_8030DA2:
    sub sp, sp, #0x10
    str r0, [sp]
    str r5, [sp,#4]
    str r4, [sp,#8]
    str r7, [sp,#0xc]
    asr r4, r4, #3
    asr r7, r7, #3
    ldr r5, off_8030E10 // =dword_2011D10 
    ldrb r0, [r5,#0x9] // (byte_2011D19 - 0x2011d10)
    lsr r0, r0, #1
    add r7, r7, r0
    ldrb r0, [r5,#0x8] // (byte_2011D18 - 0x2011d10)
    lsr r0, r0, #1
    add r4, r4, r0
    lsl r0, r0, #1
    mul r7, r0
    add r7, r7, r4
    ldrh r0, [r5,#0x6] // (word_2011D16 - 0x2011d10)
    cmp r0, r7
    beq loc_8030E02
    ldrb r0, [r5,#0xa] // (byte_2011D1A - 0x2011d10)
    add r4, r0, #1
    cmp r4, #0x10
    bge loc_8030E02
    strh r7, [r5,#0x6] // (word_2011D16 - 0x2011d10)
    strb r4, [r5,#0xa] // (byte_2011D1A - 0x2011d10)
    ldr r4, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
    add r4, #0x10
    str r4, [r5,#0x14] // (dword_2011D24 - 0x2011d10)
    mov r4, #0x10
    mul r4, r0
    add r4, #0x18
    add r5, r5, r4
    strh r7, [r5]
    ldr r4, [sp,#8]
    ldr r7, [sp,#0xc]
    mov r0, #7
    mov r8, r4
    bic r4, r0
    str r4, [r5,#4]
    add r4, r7, #0
    bic r4, r0
    str r4, [r5,#8]
    mov r4, r8
    ldr r0, [sp]
    ldr r5, [sp,#4]
    add sp, sp, #0x10
    mov pc, lr
loc_8030E02:
    ldr r0, [sp]
    ldr r5, [sp,#4]
    ldr r4, [sp,#8]
    ldr r7, [sp,#0xc]
    add sp, sp, #0x10
    mov pc, lr
    .byte 0, 0
off_8030E10:    .word dword_2011D10
.endfunc // sub_8030DA2

.func
.thumb_func
sub_8030E14:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_8030E86
    mov r3, r8
    cmp r3, #1
    beq loc_8030E4C
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    blt loc_8030E86
loc_8030E4C:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8030E86:
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_8030E14

.func
.thumb_func
sub_8030E8C:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_8030EFE
    mov r3, r8
    cmp r3, #1
    beq loc_8030EC4
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    blt loc_8030EFE
loc_8030EC4:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8030EFE:
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_8030E8C

.func
.thumb_func
sub_8030F04:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_8030F76
    mov r3, r8
    cmp r3, #1
    beq loc_8030F3C
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bgt loc_8030F76
loc_8030F3C:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8030F76:
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_8030F04

.func
.thumb_func
sub_8030F7C:
    push {lr}
    mov r8, r6
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_8030FEE
    mov r3, r8
    cmp r3, #1
    beq loc_8030FB4
    ldr r3, [r0,#0xc]
    ldr r4, [r0,#0x10]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bgt loc_8030FEE
loc_8030FB4:
    ldr r3, [r0]
    mul r3, r6
    add r3, r3, r2
    neg r3, r3
    add r4, r7, #0
    push {r6,r7}
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0,#4]
    sub r4, r7, r4
    mov r8, r4
    pop {r6,r7}
    ldr r3, [r0,#4]
    mul r3, r7
    add r3, r3, r2
    neg r3, r3
    add r4, r6, #0
    add r6, r3, #0
    add r7, r4, #0
    bl sub_8031048
    ldr r4, [r0]
    sub r4, r7, r4
    mov r9, r4
    mov r0, r9
    mov r1, r8
    pop {pc}
loc_8030FEE:
    mov r0, #0
    mov r1, #0
    pop {pc}
    .word 0x8031004, 0x8031015, 0x8031026, 0x8031037, 0x30300D00
    .word 0x253A5820, 0x59205838, 0x5838253A, 0x300E0000, 0x3A582031
    .word 0x20583825, 0x38253A59, 0xF000058, 0x58203230, 0x5838253A
    .word 0x253A5920, 0x5838, 0x20333010, 0x38253A58, 0x3A592058
    .word 0x583825
.endfunc // sub_8030F7C

.func
.thumb_func
sub_8031048:
    push {r2,r3,lr}
    mov r2, #0
    mov r3, #0
    cmp r7, #0
    beq loc_803106C
    cmp r6, #0
    bge loc_803105A
    neg r6, r6
    mvn r3, r3
loc_803105A:
    cmp r7, #0
    bge loc_8031062
    neg r7, r7
    mvn r3, r3
loc_8031062:
    cmp r6, r7
    blt loc_803106C
    sub r6, r6, r7
    add r2, #1
    b loc_8031062
loc_803106C:
    add r7, r2, #0
    cmp r3, #0
    beq locret_8031076
    neg r7, r7
    neg r6, r6
locret_8031076:
    pop {r2,r3,pc}
.endfunc // sub_8031048

    push {r2,r3,lr}
    mov r2, #0
    mov r3, #0
    cmp r7, #0
    beq loc_803109C
    cmp r6, #0
    bge loc_803108A
    neg r6, r6
    mvn r3, r3
loc_803108A:
    cmp r7, #0
    bge loc_8031092
    neg r7, r7
    mvn r3, r3
loc_8031092:
    cmp r6, r7
    blt loc_803109C
    sub r6, r6, r7
    add r2, #1
    b loc_8031092
loc_803109C:
    lsr r7, r7, #1
    cmp r6, r7
    blt loc_80310A4
    add r2, #1
loc_80310A4:
    add r7, r2, #0
    cmp r3, #0
    beq locret_80310AE
    neg r7, r7
    neg r6, r6
locret_80310AE:
    pop {r2,r3,pc}
.func
.thumb_func
sub_80310B0:
    push {lr}
    lsl r0, r0, #0xe
    lsl r1, r1, #0xe
    mov r3, #1
    cmp r0, #0
    beq loc_80310BE
    b loc_80310C6
loc_80310BE:
    cmp r1, #0
    beq loc_80310C4
    b loc_80310C6
loc_80310C4:
    mov r3, #0
loc_80310C6:
    cmp r3, #0
    beq locret_80310E4
    ldr r5, off_80310E8 // =dword_200F3D0 
    ldr r5, [r5]
    ldr r4, off_80311F0 // =dword_200F3E0 
    ldr r6, [r5]
    add r6, r6, r0
    ldr r2, [r4,#0x18] // (dword_200F3F8 - 0x200f3e0)
    add r6, r6, r2
    str r6, [r5]
    ldr r6, [r5,#4]
    add r6, r6, r1
    ldr r2, [r4,#0x1c] // (dword_200F3FC - 0x200f3e0)
    add r6, r6, r2
    str r6, [r5,#4]
locret_80310E4:
    pop {pc}
    .balign 4, 0x00
off_80310E8:    .word dword_200F3D0
.endfunc // sub_80310B0

.func
.thumb_func
sub_80310EC:
    push {lr}
    ldr r4, [r5,#0x10]
    ldr r2, [r4,#4]
    lsl r2, r2, #2
    ldr r5, [r4,#8]
    lsl r5, r5, #2
    ldr r7, [r6]
    ldr r3, [r0,#0x18]
    add r7, r7, r3
    asr r7, r7, #0xe
    sub r7, r7, r2
    str r7, [r0]
    ldr r7, [r6,#4]
    ldr r3, [r0,#0x1c]
    add r7, r7, r3
    asr r7, r7, #0xe
    sub r7, r7, r5
    str r7, [r0,#4]
    ldr r7, [r6,#0xc]
    asr r7, r7, #0xe
    sub r7, r7, r2
    str r7, [r0,#0xc]
    ldr r7, [r6,#0x10]
    asr r7, r7, #0xe
    sub r7, r7, r5
    str r7, [r0,#0x10]
    pop {pc}
.endfunc // sub_80310EC

.func
.thumb_func
sub_8031122:
    push {lr}
    add r6, r0, #0
    ldr r0, off_80311F0 // =dword_200F3E0 
    mov r2, #0
    mov r3, #0
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    bl sub_80310EC
    pop {pc}
.endfunc // sub_8031122

.func
.thumb_func
sub_8031136:
    push {lr}
    add r6, r0, #0
    ldr r0, off_80311F0 // =dword_200F3E0 
    ldr r2, [r6,#0xc]
    ldr r7, [r6]
    sub r7, r7, r2
    str r7, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    ldr r2, [r6,#0x10]
    ldr r7, [r6,#4]
    sub r7, r7, r2
    str r7, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    ldr r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    ldr r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    cmp r2, #0
    bgt loc_8031158
    blt loc_8031168
    b loc_8031168
loc_8031158:
    cmp r3, #0
    bgt loc_803115E
    b loc_8031168
loc_803115E:
    cmp r2, r3
    bne loc_8031168
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    b loc_8031170
loc_8031168:
    mov r2, #0
    mov r3, #0
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
loc_8031170:
    bl sub_80310EC
    pop {pc}
.endfunc // sub_8031136

.func
.thumb_func
sub_8031176:
    push {lr}
    add r6, r0, #0
    ldr r0, off_80311F0 // =dword_200F3E0 
    ldr r2, [r6,#0xc]
    ldr r7, [r6]
    sub r7, r7, r2
    str r7, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    ldr r2, [r6,#0x10]
    ldr r7, [r6,#4]
    sub r7, r7, r2
    str r7, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    ldr r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    ldr r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    cmp r2, #0
    bgt loc_80311A8
    blt loc_8031198
    b loc_80311A8
loc_8031198:
    cmp r3, #0
    blt loc_803119E
    b loc_80311A8
loc_803119E:
    cmp r2, r3
    bne loc_80311A8
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    b loc_80311B0
loc_80311A8:
    mov r2, #0
    mov r3, #0
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
loc_80311B0:
    bl sub_80310EC
    pop {pc}
.endfunc // sub_8031176

.func
.thumb_func
sub_80311B6:
    push {lr}
    add r6, r0, #0
    ldr r0, off_80311F0 // =dword_200F3E0 
    ldr r2, [r6,#0xc]
    ldr r7, [r6]
    sub r7, r7, r2
    str r7, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    ldr r2, [r6,#0x10]
    ldr r7, [r6,#4]
    sub r7, r7, r2
    str r7, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    ldr r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    ldr r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    cmp r2, #0
    beq loc_80311DA
    cmp r3, #0
    beq loc_80311DA
    b loc_80311E0
loc_80311DA:
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
    b loc_80311E8
loc_80311E0:
    mov r2, #0
    mov r3, #0
    str r2, [r0,#0x18] // (dword_200F3F8 - 0x200f3e0)
    str r3, [r0,#0x1c] // (dword_200F3FC - 0x200f3e0)
loc_80311E8:
    bl sub_80310EC
    pop {pc}
    .byte 0, 0
off_80311F0:    .word dword_200F3E0
.endfunc // sub_80311B6

.func
.thumb_func
sub_80311F4:
    push {lr}
    push {r0-r2,r5}
    bl sub_8031122
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    bl sub_8031570
    mov r3, #0
    cmp r0, #0
    beq loc_8031234
    pop {r0-r2,r5}
    push {r0-r2,r5}
    bl sub_80311B6
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    mov r6, #1
    bl sub_8030E14
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    neg r1, r1
    lsr r1, r1, #1
    neg r1, r1
    bl sub_80310B0
loc_8031234:
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_80311F4

.func
.thumb_func
sub_803123E:
    push {r0-r2,r5,lr}
    bl sub_8031122
    mov r2, #0
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8030E8C
    lsr r0, r0, #1
    asr r1, r1, #1
    bl sub_80310B0
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_803123E

.func
.thumb_func
sub_8031264:
    push {r0-r2,r5,lr}
    bl sub_8031122
    mov r2, #0
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8030F04
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    lsr r1, r1, #1
    bl sub_80310B0
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_8031264

.func
.thumb_func
sub_803128E:
    push {lr}
    push {r0-r2,r5}
    bl sub_8031122
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    bl sub_80315DC
    mov r3, #0
    cmp r0, #0
    beq loc_80312C6
    pop {r0-r2,r5}
    push {r0-r2,r5}
    bl sub_80311B6
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    mov r6, #1
    bl sub_8030F7C
    lsr r0, r0, #1
    lsr r1, r1, #1
    bl sub_80310B0
loc_80312C6:
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_803128E

.func
.thumb_func
sub_80312D0:
    push {r0-r2,r5,lr}
    bl sub_80311B6
    mov r2, #0
    mov r4, #0x20 
    sub r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    sub r5, #0x20 
    mov r6, #1
    bl sub_8030E14
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    neg r1, r1
    lsr r1, r1, #1
    neg r1, r1
    bl sub_80310B0
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_80312D0

.func
.thumb_func
sub_8031302:
    push {r0-r2,r5,lr}
    bl sub_8031122
    mov r2, #0
    mov r4, #0
    sub r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    sub r5, #0x20 
    mov r6, #1
    bl sub_8030E8C
    lsr r0, r0, #1
    neg r1, r1
    lsr r1, r1, #1
    neg r1, r1
    bl sub_80310B0
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_8031302

.func
.thumb_func
sub_8031330:
    push {r0-r2,r5,lr}
    bl sub_8031122
    mov r2, #0
    mov r4, #0
    add r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    add r5, #0x20 
    mov r6, #1
    bl sub_8030F04
    neg r0, r0
    lsr r0, r0, #1
    neg r0, r0
    lsr r1, r1, #1
    bl sub_80310B0
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_8031330

.func
.thumb_func
sub_803135E:
    push {r0-r2,r5,lr}
    bl sub_80311B6
    mov r2, #0
    mov r4, #0x20 
    add r4, #0x20 
    mov r3, #0x20 
    mov r5, #0
    add r5, #0x20 
    mov r6, #1
    bl sub_8030F7C
    lsr r0, r0, #1
    lsr r1, r1, #1
    bl sub_80310B0
    mov r0, r12
    mov r1, #3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_803135E

.func
.thumb_func
sub_8031388:
    push {r0-r2,r5,lr}
    bl sub_8031136
    mov r2, #0
    sub r2, #1
    mov r4, #0x20 
    mov r3, #0
    sub r3, #1
    mov r5, #0
    mov r6, #1
    bl sub_8030E14
    mov r1, #0
    bl sub_80310B0
    mov r0, r12
    mov r1, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_8031388

.func
.thumb_func
sub_80313B0:
    push {r0-r2,r5,lr}
    bl sub_8031176
    mov r2, #0x20 
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8030E8C
    mov r1, #0
    bl sub_80310B0
    mov r0, r12
    mov r1, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_80313B0

.func
.thumb_func
sub_80313D4:
    push {r0-r2,r5,lr}
    bl sub_8031136
    mov r2, #0x20 
    mov r4, #0
    sub r4, #1
    mov r3, #0
    mov r5, #0
    sub r5, #1
    mov r6, #1
    bl sub_8030F04
    mov r0, #0
    bl sub_80310B0
    mov r0, r12
    mov r1, #2
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_80313D4

.func
.thumb_func
sub_80313FC:
    push {r0-r2,r5,lr}
    bl sub_8031176
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #1
    bl sub_8030F7C
    mov r0, #0
    bl sub_80310B0
    mov r0, r12
    mov r1, #2
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5,pc}
.endfunc // sub_80313FC

.func
.thumb_func
sub_8031420:
    push {lr}
    push {r0-r2,r5}
    bl sub_8031136
    mov r2, #0
    sub r2, #1
    mov r4, #0x20 
    mov r3, #0
    sub r3, #1
    mov r5, #0
    mov r6, #0
    bl sub_8030E14
    mov r1, #0
    bl sub_80310B0
    mov r0, r12
    // <mkdata>
    .hword 0x19 // mov r1, r3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_8031476
    push {r0-r2,r5}
    bl sub_8031136
    mov r2, #0x20 
    mov r4, #0
    sub r4, #1
    mov r3, #0
    mov r5, #0
    sub r5, #1
    mov r6, #0
    bl sub_8030F04
    mov r0, #0
    bl sub_80310B0
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_8031476:
    pop {pc}
.endfunc // sub_8031420

.func
.thumb_func
sub_8031478:
    push {lr}
    push {r0-r2,r5}
    bl sub_8031176
    mov r2, #0x20 
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8030E8C
    mov r1, #0
    bl sub_80310B0
    mov r0, r12
    // <mkdata>
    .hword 0x19 // mov r1, r3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_80314CA
    push {r0-r2,r5}
    bl sub_8031136
    mov r2, #0x20 
    mov r4, #0
    sub r4, #1
    mov r3, #0
    mov r5, #0
    sub r5, #1
    mov r6, #0
    bl sub_8030F04
    mov r0, #0
    bl sub_80310B0
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_80314CA:
    pop {pc}
.endfunc // sub_8031478

.func
.thumb_func
sub_80314CC:
    push {lr}
    push {r0-r2,r5}
    bl sub_8031136
    mov r2, #0
    sub r2, #1
    mov r4, #0x20 
    mov r3, #0
    sub r3, #1
    mov r5, #0
    mov r6, #0
    bl sub_8030E14
    mov r1, #0
    bl sub_80310B0
    mov r0, r12
    // <mkdata>
    .hword 0x19 // mov r1, r3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_803151E
    push {r0-r2,r5}
    bl sub_8031176
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8030F7C
    mov r0, #0
    bl sub_80310B0
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_803151E:
    pop {pc}
.endfunc // sub_80314CC

.func
.thumb_func
sub_8031520:
    push {lr}
    push {r0-r2,r5}
    bl sub_8031176
    mov r2, #0x20 
    mov r4, #0
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8030E8C
    mov r1, #0
    bl sub_80310B0
    mov r0, r12
    // <mkdata>
    .hword 0x19 // mov r1, r3
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
    cmp r3, #1
    beq locret_803156E
    push {r0-r2,r5}
    bl sub_8031176
    mov r2, #0
    mov r4, #0x20 
    mov r3, #0x20 
    mov r5, #0x20 
    mov r6, #0
    bl sub_8030F7C
    mov r0, #0
    bl sub_80310B0
    mov r0, r12
    lsl r1, r3, #1
    orr r0, r1
    mov r12, r0
    pop {r0-r2,r5}
locret_803156E:
    pop {pc}
.endfunc // sub_8031520

.func
.thumb_func
sub_8031570:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_8031590
    mov r0, #1
    mov pc, lr
loc_8031590:
    mov r0, #0
    mov pc, lr
.endfunc // sub_8031570

.func
.thumb_func
sub_8031594:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    bge loc_80315B4
    mov r0, #1
    mov pc, lr
loc_80315B4:
    mov r0, #0
    mov pc, lr
.endfunc // sub_8031594

.func
.thumb_func
sub_80315B8:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_80315D8
    mov r0, #1
    mov pc, lr
loc_80315D8:
    mov r0, #0
    mov pc, lr
.endfunc // sub_80315B8

.func
.thumb_func
sub_80315DC:
    sub r6, r5, r4
    sub r7, r2, r3
    mul r3, r4
    mul r2, r5
    sub r2, r3, r2
    ldr r3, [r0]
    ldr r4, [r0,#4]
    add r5, r2, #0
    mul r3, r6
    mul r4, r7
    add r3, r3, r4
    add r5, r5, r3
    cmp r5, #0
    ble loc_80315FC
    mov r0, #1
    mov pc, lr
loc_80315FC:
    mov r0, #0
    mov pc, lr
.endfunc // sub_80315DC

.func
.thumb_func
sub_8031600:
    ldr r5, off_8031780 // =dword_2011A20 
    ldr r1, [r0]
    strh r1, [r5,#0x4] // (word_2011A24 - 0x2011a20)
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#0x6] // (byte_2011A26 - 0x2011a20)
    strb r0, [r5,#0x7] // (byte_2011A27 - 0x2011a20)
    mov pc, lr
.endfunc // sub_8031600

.func
.thumb_func
sub_8031612:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    ldr r5, off_8031780 // =dword_2011A20 
    ldr r2, off_8031688 // =dword_200F3D0 
    str r0, [r2]
    bl sub_80316F8
    bl sub_8030B1E
    cmp r2, #0
    beq loc_8031678
    mov r3, #0
loc_8031630:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_8031658
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r6, [r0,r6]
    cmp r6, r4
    blt loc_803165E
    cmp r3, #0
    beq loc_8031654
    mov r6, #0
    ldrsb r6, [r3,r6]
    cmp r6, r4
    bgt loc_803165E
loc_8031654:
    add r3, r7, #0
    b loc_803165E
loc_8031658:
    cmp r3, #0
    beq loc_8031678
    b loc_8031662
loc_803165E:
    add r2, #4
    b loc_8031630
loc_8031662:
    str r3, [r5,#0x14] // (dword_2011A34 - 0x2011a20)
    ldrb r6, [r3,#3]
    cmp r6, #0xff
    beq loc_8031678
    lsl r6, r6, #2
    ldr r4, off_803168C // =dword_8031690 
    add r4, r4, r6
    ldr r4, [r4]
    mov lr, pc
    bx r4
    b loc_803167C
loc_8031678:
    mov r0, #0
    mov r1, #0
loc_803167C:
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8031688:    .word dword_200F3D0
off_803168C:    .word dword_8031690
dword_8031690:    .word 0x0
    .word sub_803178A+1
    .word sub_80317A6+1
    .word sub_80317C2+1
    .word sub_80317DE+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word sub_80317FA+1
    .word sub_8031808+1
    .word sub_803182A+1
    .word sub_8031852+1
    .word sub_8031874+1
    .word 0x0, 0x0, 0x0, 0x0
.endfunc // sub_8031612

.func
.thumb_func
sub_80316F8:
    mov r2, #2
    ldrsh r1, [r0,r2]
    mov r2, #6
    ldrsh r2, [r0,r2]
    asr r1, r1, #3
    asr r2, r2, #3
    ldrb r3, [r5,#7]
    lsr r3, r3, #1
    add r2, r2, r3
    ldrb r3, [r5,#6]
    lsr r3, r3, #1
    add r1, r1, r3
    lsl r3, r3, #1
    mul r2, r3
    add r2, r2, r1
    strh r2, [r5,#8]
    mov r2, #2
    ldrsh r1, [r0,r2]
    mov r2, #6
    ldrsh r2, [r0,r2]
    mov r3, #7
    bic r1, r3
    str r1, [r5,#0xc]
    bic r2, r3
    str r2, [r5,#0x10]
    ldrh r1, [r5,#8]
    mov pc, lr
.endfunc // sub_80316F8

.func
.thumb_func
sub_803172E:
    add r6, r0, #0
    ldr r0, off_803175C // =dword_200F3E0 
    ldr r2, [r5,#0xc]
    lsl r2, r2, #1
    ldr r5, [r5,#0x10]
    lsl r5, r5, #1
    ldr r7, [r6]
    asr r7, r7, #0xf
    sub r7, r7, r2
    str r7, [r0]
    ldr r7, [r6,#4]
    asr r7, r7, #0xf
    sub r7, r7, r5
    str r7, [r0,#0x4] // (dword_200F3E4 - 0x200f3e0)
    ldr r7, [r6,#0xc]
    asr r7, r7, #0xf
    sub r7, r7, r2
    str r7, [r0,#0xc] // (dword_200F3EC - 0x200f3e0)
    ldr r7, [r6,#0x10]
    asr r7, r7, #0xf
    sub r7, r7, r5
    str r7, [r0,#0x10] // (dword_200F3F0 - 0x200f3e0)
    mov pc, lr
off_803175C:    .word dword_200F3E0
.endfunc // sub_803172E

.func
.thumb_func
sub_8031760:
    ldr r5, off_8031780 // =dword_2011A20 
    cmp r0, #1
    beq loc_8031768
    b loc_8031774
loc_8031768:
    ldr r2, [r5,#0x14] // (dword_2011A34 - 0x2011a20)
    mov r0, #0
    ldrsb r0, [r2,r0]
    ldrb r1, [r2,#2]
    ldrb r3, [r2,#1]
    mov pc, lr
loc_8031774:
    ldr r2, [r5,#0x14] // (dword_2011A34 - 0x2011a20)
    mov r0, #0
    ldrsb r0, [r2,r0]
    mov r1, #0
    ldrb r3, [r2,#1]
    mov pc, lr
off_8031780:    .word dword_2011A20
.endfunc // sub_8031760

    push {lr}
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_803178A:
    push {lr}
    bl sub_803172E
    mov r2, #4
    mov r4, #0
    mov r3, #4
    mov r5, #0x10
    bl sub_8031594
    bl sub_8031760
    add r0, r0, r1
    mov r1, #0
    pop {pc}
.endfunc // sub_803178A

.func
.thumb_func
sub_80317A6:
    push {lr}
    bl sub_803172E
    mov r2, #8
    mov r4, #0
    mov r3, #8
    mov r5, #0x10
    bl sub_80315B8
    bl sub_8031760
    add r0, r0, r1
    mov r1, #0
    pop {pc}
.endfunc // sub_80317A6

.func
.thumb_func
sub_80317C2:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #8
    mov r3, #0x10
    mov r5, #8
    bl sub_80315B8
    bl sub_8031760
    add r0, r0, r1
    mov r1, #0
    pop {pc}
.endfunc // sub_80317C2

.func
.thumb_func
sub_80317DE:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0xc
    mov r3, #0x10
    mov r5, #0xc
    bl sub_8031594
    bl sub_8031760
    add r0, r0, r1
    mov r1, #0
    pop {pc}
.endfunc // sub_80317DE

.func
.thumb_func
sub_80317FA:
    push {lr}
    mov r0, #1
    bl sub_8031760
    add r0, r0, r1
    mov r1, #0
    pop {pc}
.endfunc // sub_80317FA

.func
.thumb_func
sub_8031808:
    push {lr}
    bl sub_803172E
    push {r0}
    mov r0, #1
    bl sub_8031760
    add r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1]
    asr r2, r3
    sub r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
.endfunc // sub_8031808

.func
.thumb_func
sub_803182A:
    push {lr}
    bl sub_803172E
    push {r0}
    mov r0, #1
    bl sub_8031760
    add r0, r0, r1
    mov r1, #8
    asr r1, r3
    sub r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1]
    asr r2, r3
    add r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
.endfunc // sub_803182A

.func
.thumb_func
sub_8031852:
    push {lr}
    bl sub_803172E
    push {r0}
    mov r0, #1
    bl sub_8031760
    add r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1,#4]
    asr r2, r3
    sub r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
.endfunc // sub_8031852

.func
.thumb_func
sub_8031874:
    push {lr}
    bl sub_803172E
    push {r0}
    mov r0, #1
    bl sub_8031760
    add r0, r0, r1
    mov r1, #8
    asr r1, r3
    sub r0, r0, r1
    lsl r0, r0, #1
    pop {r1}
    ldr r2, [r1,#4]
    asr r2, r3
    add r0, r0, r2
    asr r0, r0, #1
    mov r1, #2
    lsr r1, r3
    pop {pc}
.endfunc // sub_8031874

.func
.thumb_func
sub_803189C:
    ldr r5, off_8031994 // =dword_2013940 
    ldr r1, [r0]
    strh r1, [r5,#0x4] // (word_2013944 - 0x2013940)
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#0x6] // (byte_2013946 - 0x2013940)
    strb r0, [r5,#0x7] // (byte_2013947 - 0x2013940)
    mov pc, lr
    .byte 0, 0
.endfunc // sub_803189C

loc_80318B0:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, off_8031994 // =dword_2013940 
    ldr r2, off_8031910 // =dword_200F3D0 
    str r0, [r2]
    bl sub_80316F8
    bl sub_8030B1E
    cmp r2, #0
    beq loc_8031904
loc_80318CC:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_8031904
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r6, [r0,r6]
    cmp r6, r4
    blt loc_80318EE
    ldrb r3, [r7,#2]
    add r4, r4, r3
    cmp r6, r4
    bgt loc_80318EE
    b loc_80318F2
loc_80318EE:
    add r2, #4
    b loc_80318CC
loc_80318F2:
    str r7, [r5,#0x14] // (dword_2013954 - 0x2013940)
    ldrb r6, [r7,#3]
    lsl r6, r6, #2
    ldr r4, off_8031914 // =dword_8031918 
    add r4, r4, r6
    ldr r4, [r4]
    mov lr, pc
    bx r4
    b loc_8031906
loc_8031904:
    mov r0, #2
loc_8031906:
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_8031910:    .word dword_200F3D0
off_8031914:    .word dword_8031918
dword_8031918:    .word 0x0
    .word sub_803199E+1
    .word sub_80319B6+1
    .word sub_80319CE+1
    .word sub_80319E6+1
    .word 0x0, 0x0, 0x0, 0x0
    .word sub_80319FE+1
    .word sub_8031A16+1
    .word sub_8031A2E+1
    .word sub_8031A46+1
    .word 0x0, 0x0, 0x0, 0x0
    .word sub_8031A5E+1
    .word 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0
.func
.thumb_func
sub_8031980:
    push {lr}
    ldr r5, off_8031994 // =dword_2013940 
    cmp r0, #1
    beq loc_803198A
    b loc_803198E
loc_803198A:
    mov r0, #3
    pop {pc}
loc_803198E:
    mov r0, #2
    pop {pc}
    .balign 4, 0x00
off_8031994:    .word dword_2013940
.endfunc // sub_8031980

    push {lr}
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_803199E:
    push {lr}
    bl sub_803172E
    mov r2, #4
    mov r4, #0
    mov r3, #4
    mov r5, #0x10
    bl sub_8031594
    bl sub_8031980
    pop {pc}
.endfunc // sub_803199E

.func
.thumb_func
sub_80319B6:
    push {lr}
    bl sub_803172E
    mov r2, #8
    mov r4, #0
    mov r3, #8
    mov r5, #0x10
    bl sub_80315B8
    bl sub_8031980
    pop {pc}
.endfunc // sub_80319B6

.func
.thumb_func
sub_80319CE:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #8
    mov r3, #0x10
    mov r5, #8
    bl sub_80315B8
    bl sub_8031980
    pop {pc}
.endfunc // sub_80319CE

.func
.thumb_func
sub_80319E6:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0xc
    mov r3, #0x10
    mov r5, #0xc
    bl sub_8031594
    bl sub_8031980
    pop {pc}
.endfunc // sub_80319E6

.func
.thumb_func
sub_80319FE:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0x10
    mov r3, #0x10
    mov r5, #0
    bl sub_8031570
    bl sub_8031980
    pop {pc}
.endfunc // sub_80319FE

.func
.thumb_func
sub_8031A16:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0
    mov r3, #0x10
    mov r5, #0x10
    bl sub_8031594
    bl sub_8031980
    pop {pc}
.endfunc // sub_8031A16

.func
.thumb_func
sub_8031A2E:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0
    mov r3, #0x10
    mov r5, #0x10
    bl sub_80315B8
    bl sub_8031980
    pop {pc}
.endfunc // sub_8031A2E

.func
.thumb_func
sub_8031A46:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0x10
    mov r3, #0x10
    mov r5, #0
    bl sub_80315DC
    bl sub_8031980
    pop {pc}
.endfunc // sub_8031A46

.func
.thumb_func
sub_8031A5E:
    push {lr}
    mov r0, #1
    bl sub_8031980
    pop {pc}
.endfunc // sub_8031A5E

.func
.thumb_func
sub_8031A68:
    ldr r5, off_8031B90 // =dword_2013920 
    ldr r1, [r0]
    strh r1, [r5,#0x4] // (word_2013924 - 0x2013920)
    add r0, #4
    str r0, [r5]
    mov r0, #0xfe
    strb r0, [r5,#0x6] // (byte_2013926 - 0x2013920)
    strb r0, [r5,#0x7] // (byte_2013927 - 0x2013920)
    mov pc, lr
.endfunc // sub_8031A68

.func
.thumb_func
sub_8031A7A:
    push {r4-r7,lr}
    mov r3, r8
    mov r4, r9
    mov r5, r12
    push {r3-r5}
    ldr r5, off_8031B90 // =dword_2013920 
    ldr r2, off_8031B08 // =dword_200F3D0 
    str r0, [r2]
    bl sub_80316F8
    bl sub_8030B1E
    cmp r2, #0
    beq loc_8031AF6
loc_8031A96:
    ldrh r4, [r2]
    cmp r1, r4
    bne loc_8031AF6
    ldrh r7, [r2,#2]
    ldr r4, [r5]
    add r7, r7, r4
    mov r4, #0
    ldrsb r4, [r7,r4]
    mov r6, #0xa
    ldrsh r6, [r0,r6]
    cmp r6, r4
    blt loc_8031AB8
    ldrb r3, [r7,#2]
    add r4, r4, r3
    cmp r6, r4
    bgt loc_8031AB8
    b loc_8031ABC
loc_8031AB8:
    add r2, #4
    b loc_8031A96
loc_8031ABC:
    str r7, [r5,#0x14] // (dword_2013934 - 0x2013920)
    ldrb r6, [r7,#3]
    mov r12, r6
    lsl r6, r6, #2
    ldr r4, off_8031B0C // =dword_8031B10 
    add r4, r4, r6
    ldr r4, [r4]
    push {r0-r2}
    mov lr, pc
    bx r4
    add r3, r0, #0
    tst r0, r0
    pop {r0-r2}
    beq loc_8031AB8
    add r0, r3, #0
    add r1, r3, #0
    mov r2, r12
    cmp r0, #0xe
    bgt loc_8031AFC
    push {r0-r2}
    ldr r1, dword_8031B78 // =0x16EF 
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    pop {r0-r2}
    bne loc_8031AFC
    mov r0, #0
    b loc_8031AFC
loc_8031AF6:
    mov r0, #0
    mov r1, #0
    mov r2, #0
loc_8031AFC:
    pop {r3-r5}
    mov r8, r3
    mov r9, r4
    mov r12, r5
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8031B08:    .word dword_200F3D0
off_8031B0C:    .word dword_8031B10
dword_8031B10:    .word 0x0
    .word sub_8031B9A+1
    .word sub_8031BB2+1
    .word sub_8031BCA+1
    .word sub_8031BE2+1
    .word 0x0, 0x0, 0x0, 0x0
    .word sub_8031BFA+1
    .word sub_8031C12+1
    .word sub_8031C2A+1
    .word sub_8031C42+1
    .word 0x0, 0x0, 0x0, 0x0
    .word sub_8031C5A+1
    .word sub_8031C5A+1
    .word sub_8031C5A+1
    .word sub_8031C5A+1
    .word sub_8031C5A+1
    .word sub_8031C64+1
    .word sub_8031C7C+1
    .word sub_8031C94+1
    .word sub_8031CAC+1
dword_8031B78:    .word 0x16EF
.endfunc // sub_8031A7A

.func
.thumb_func
sub_8031B7C:
    ldr r5, off_8031B90 // =dword_2013920 
    cmp r0, #1
    beq loc_8031B84
    b loc_8031B8A
loc_8031B84:
    ldr r2, [r5,#0x14] // (dword_2013934 - 0x2013920)
    ldrb r0, [r2,#1]
    mov pc, lr
loc_8031B8A:
    mov r0, #0
    mov pc, lr
    .byte 0, 0
off_8031B90:    .word dword_2013920
.endfunc // sub_8031B7C

.func
.thumb_func
sub_8031B94:
    push {lr}
    mov r0, #0
    pop {pc}
.endfunc // sub_8031B94

.func
.thumb_func
sub_8031B9A:
    push {lr}
    bl sub_803172E
    mov r2, #4
    mov r4, #0
    mov r3, #4
    mov r5, #0x10
    bl sub_8031594
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031B9A

.func
.thumb_func
sub_8031BB2:
    push {lr}
    bl sub_803172E
    mov r2, #8
    mov r4, #0
    mov r3, #8
    mov r5, #0x10
    bl sub_80315B8
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031BB2

.func
.thumb_func
sub_8031BCA:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #8
    mov r3, #0x10
    mov r5, #8
    bl sub_80315B8
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031BCA

.func
.thumb_func
sub_8031BE2:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0xc
    mov r3, #0x10
    mov r5, #0xc
    bl sub_8031594
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031BE2

.func
.thumb_func
sub_8031BFA:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0x10
    mov r3, #0x10
    mov r5, #0
    bl sub_8031570
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031BFA

.func
.thumb_func
sub_8031C12:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0
    mov r3, #0x10
    mov r5, #0x10
    bl sub_8031594
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C12

.func
.thumb_func
sub_8031C2A:
    push {lr}
    bl sub_803172E
    mov r2, #1
    mov r4, #1
    mov r3, #0x10
    mov r5, #0x10
    bl sub_80315B8
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C2A

.func
.thumb_func
sub_8031C42:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0xe
    mov r3, #0xe
    mov r5, #0
    bl sub_80315DC
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C42

.func
.thumb_func
sub_8031C5A:
    push {lr}
    mov r0, #1
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C5A

.func
.thumb_func
sub_8031C64:
    push {lr}
    bl sub_803172E
    mov r2, #2
    mov r4, #0
    mov r3, #2
    mov r5, #0x10
    bl sub_8031594
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C64

.func
.thumb_func
sub_8031C7C:
    push {lr}
    bl sub_803172E
    mov r2, #0xe
    mov r4, #0
    mov r3, #0xe
    mov r5, #0x10
    bl sub_80315B8
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C7C

.func
.thumb_func
sub_8031C94:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #2
    mov r3, #0x10
    mov r5, #2
    bl sub_80315B8
    bl sub_8031B7C
    pop {pc}
.endfunc // sub_8031C94

.func
.thumb_func
sub_8031CAC:
    push {lr}
    bl sub_803172E
    mov r2, #0
    mov r4, #0xe
    mov r3, #0x10
    mov r5, #0xe
    bl sub_8031594
    bl sub_8031B7C
    // <endpool>
    pop {pc}
.endfunc // sub_8031CAC

dword_8031CC4:    .word 0x8031CEC, 0x8031D24, 0x8031DA4, 0x8031E00, 0x8031FA4
    .word 0x8032114, 0x8032194, 0x8032314, 0x8032598, 0x803271C
    .word 0x81D8000, 0x81DF420, 0x81E7CC8, 0x81F1414, 0x81FA9E8
    .word 0x8204108, 0x820CD4C, 0x8214808, 0x821C354, 0x8223C48
    .word 0x822CC50, 0x8233728, 0x823B768, 0x84E0554, 0x84E0554
    .word 0x88241EC4
    .word 0x88242E94
    .word 0x8244164, 0x882455B0, 0x8246A24, 0x882489C8, 0x882492FC
    .word 0x88249C7C, 0x824AC94, 0x824B254, 0x8824D23C, 0x8824DC7C
    .word 0x824EAF4, 0x88252558, 0x82533F4, 0x8253F88, 0x88257994
    .word 0x8825859C, 0x88258FF8, 0x8825A0D8, 0x8825AD90, 0x8825B860
    .word 0x8825BFC4, 0x825C9AC, 0x8825DFB4, 0x825F2C8, 0x8260F88
    .word 0x88262CEC, 0x88263484, 0x84E0554, 0x882647E4, 0x84E0554
    .word 0x8264FA0, 0x826FAF0, 0x8278EBC, 0x828324C, 0x828F18C
    .word 0x8296F40, 0x829D818, 0x82A5AF0, 0x82B0690, 0x82BA7BC
    .word 0x82C7550, 0x882CED74, 0x882D2AC8, 0x882D6FE4, 0x882DABC8
    .word 0x882DD9A8, 0x84E0554, 0x882E0114, 0x882E4050, 0x884E0C4C
    .word 0x882E8470, 0x884E0C4C, 0x82EFE48, 0x82F39C0, 0x82F569C
    .word 0x82F6ECC, 0x82F9CCC, 0x882FCA14, 0x82FE378, 0x82FE704
    .word 0x82FF95C, 0x8300CFC, 0x8300F70, 0x8303A34, 0x830451C
    .word 0x8304700, 0x8308700, 0x884E0C4C, 0x830902C, 0x830A308
    .word 0x830D494, 0x830E44C, 0x830F144, 0x8311288, 0x83124E8
    .word 0x8312FB4, 0x83138C4, 0x831530C, 0x831661C, 0x8317340
    .word 0x8318920, 0x83195F0, 0x8319B5C, 0x831C8A4, 0x831CAF8
    .word 0x831E67C, 0x831E8C0, 0x831EA40, 0x831FA84, 0x831FCF0
    .word 0x84E0554, 0x832154C, 0x8322920, 0x83234D4, 0x8323728
    .word 0x83241F4, 0x83245E8, 0x83249B0, 0x8324E14, 0x8325038
    .word 0x83255C0, 0x8325C94, 0x84E0554, 0x8325EF4, 0x83262C0
    .word 0x8326724, 0x83279C0, 0x8329D28, 0x832C418, 0x84E0554
    .word 0x84E0554, 0x832E9C8, 0x832F0C8, 0x832F8C8, 0x84E0554
    .word 0x84E0554, 0x8330A30, 0x8330FA8, 0x84E0554, 0x83317F0
    .word 0x83322B8, 0x8332484, 0x84E0554, 0x8333350, 0x88333CC8
    .word 0x84E0554, 0x84E0554, 0x88334B0C, 0x883353F4, 0x8336320
    .word 0x84E0554, 0x8336D54, 0x88338170, 0x8338F18, 0x833BE68
    .word 0x833F3A0, 0x8342AC4, 0x8345C50, 0x84E0554, 0x84E0554
    .word 0x8348E80, 0x83497CC, 0x84E0554, 0x84E0554, 0x834A108
    .word 0x834A580, 0x834AE94, 0x834B2D0, 0x834B6A4, 0x834BBF0
    .word 0x834BEB8, 0x834C6F0, 0x8834FC40, 0x84E0554, 0x884E0C4C
    .word 0x8350628, 0x884E0C4C, 0x8350888, 0x8351FA8, 0x8352360
    .word 0x83536BC, 0x84E0554, 0x83547A4, 0x8354D0C, 0x8354EF0
    .word 0x8355D50, 0x835613C, 0x83566F4, 0x8357308, 0x8357B10
    .word 0x8359644, 0x835AD9C, 0x835B938, 0x835C4B0, 0x835C794
    .word 0x835CA2C, 0x835E264, 0x84E0554, 0x84E0554, 0x835F424
    .word 0x83607D0, 0x84E0554, 0x83611FC, 0x8367848, 0x8368F54
    .word 0x836B6A8, 0x836B818, 0x84E0554, 0x836C668, 0x836E034
    .word 0x836EA90, 0x836EDB8, 0x8370D6C, 0x8371274, 0x8371C50
    .word 0x8372410, 0x8372F34, 0x83732AC, 0x8373AFC, 0x8373D70
    .word 0x8376364, 0x8376A24, 0x8377834, 0x8377AF4, 0x8379D44
    .word 0x837D8E0, 0x837EB4C, 0x837F2E0, 0x84E0554, 0x837FD98
    .word 0x84E0554, 0x84E0554, 0x83805D4, 0x8381340, 0x83822F0
    .word 0x84E0554, 0x8382928, 0x8383698, 0x8385354, 0x84E0554
    .word 0x84E0554, 0x8385648, 0x83864F4, 0x8387244, 0x8387E4C
    .word 0x838849C, 0x838A9A8, 0x8838B160, 0x8838B438, 0x838B930
    .word 0x84E0554, 0x838C3C8, 0x838C864, 0x838E194, 0x838E74C
    .word 0x838EC00, 0x83908A4, 0x8390F44, 0x8390FC4, 0x8391E40
    .word 0x839247C, 0x83930E0, 0x8395034, 0x8395660, 0x8396650
    .word 0x84E0554, 0x83971C0, 0x8398048, 0x84E0554, 0x8399578
    .word 0x839AAB8, 0x839B9C0, 0x839CCDC, 0x83A000C, 0x83A0DA8
    .word 0x83A5E30, 0x83A67AC, 0x83A9190, 0x83AC1A8, 0x83AC430
    .word 0x83ACF48, 0x83AD870, 0x83AE2B4, 0x83AF658, 0x83B00F8
    .word 0x84E0554, 0x83B0A90, 0x83B2494, 0x83B3BF4, 0x83B440C
    .word 0x83B4AE4, 0x83B5F44, 0x84E0554, 0x83B92B4, 0x84E0554
    .word 0x83BA940, 0x83BB440, 0x83BC3B0, 0x83BCC70, 0x83BD228
    .word 0x83BE6B0, 0x83BFD0C, 0x83CD574, 0x83CFF28, 0x83D346C
    .word 0x83D604C, 0x83D91C0, 0x83DD0A8, 0x84E0554, 0x83E0108
    .word 0x83E1EEC, 0x83E1EEC, 0x83E2B48, 0x83E55F8, 0x83E7F4C
    .word 0x83EB980, 0x83EEF14, 0x83F37C4, 0x83F6824, 0x83FA130
    .word 0x883FDF7C, 0x83FEC68, 0x83D91C0, 0x8402FA0, 0x8406044
    .word 0x84069EC, 0x8408360, 0x8408DB4, 0x8840A4BC, 0x8840AC00
    .word 0x840B3A4, 0x884E0C4C, 0x8840F4F4, 0x884E0C4C, 0x884105EC
    .word 0x884E0C4C, 0x88410A18, 0x884114E8, 0x884119D0, 0x884E0C4C
    .word 0x884E0C4C, 0x84E0554, 0x84E0554, 0x8411E90, 0x8415A90
    .word 0x8419440, 0x841C9C4, 0x84201AC, 0x8424C78, 0x84E0554
    .word 0x84E0554, 0x842A630, 0x842DAC0, 0x884E0C4C, 0x84E0554
    .word 0x884E0C4C, 0x8430534, 0x8843A5AC, 0x8843AE88, 0x8843B99C
    .word 0x843C234, 0x8442164, 0x8442164, 0x8445E00, 0x8445E00
    .word 0x8445E00, 0x8445E00, 0x8445E00, 0x844BF80, 0x844BF80
    .word 0x8453D90, 0x8453D90, 0x84E0554, 0x8456ABC, 0x84E0554
    .word 0x845F138, 0x84E0554, 0x8468940, 0x846FD50, 0x8477574
    .word 0x84E0554, 0x84E0554, 0x8481548, 0x848334C, 0x8485F74
    .word 0x848FCEC, 0x88495434, 0x8495B88, 0x8445E00, 0x84E0554
    .word 0x8497CF8, 0x88499CF0, 0x8849AAD0, 0x8442164, 0x8442164
    .word 0x8442164, 0x8442164, 0x849B424, 0x849BA28, 0x849D164
    .word 0x849E54C, 0x849FBC0, 0x84E0554, 0x884A03B8, 0x884A0920
    .word 0x884A0DCC, 0x884A1458, 0x884A1B14, 0x884A1E30, 0x884A225C
    .word 0x84E0554, 0x884A24CC, 0x84A3048, 0x884A3708, 0x884A3B44
    .word 0x884A3E08, 0x884A40E0, 0x884A47F0, 0x884A4F0C, 0x884A502C
    .word 0x84A53C4, 0x84A599C, 0x884A642C, 0x884A6D14, 0x884A71A0
    .word 0x884A74A4, 0x884A77A4, 0x884A7A14, 0x884A7FA4, 0x884A8524
    .word 0x84E0554, 0x84A8AC0, 0x884A8F68, 0x884A914C, 0x884A96B8
    .word 0x84A97A8, 0x884AA028, 0x884AA640, 0x884AAC80, 0x884AAE70
    .word 0x884AAF18, 0x84AB2D0, 0x84AB680, 0x84ADD6C, 0x884AE340
    .word 0x84AF710, 0x84B1BA0, 0x884B42EC, 0x84B4838, 0x84B5238
    .word 0x884B5734, 0x84B5C18, 0x84B62AC, 0x884B6744, 0x84B7414
    .word 0x84B8BB4, 0x84BA414, 0x84BA7A8, 0x884BADF8, 0x884BB07C
    .word 0x84E0554, 0x884BB704, 0x884BBA74, 0x84BC0C8, 0x884BC4D0
    .word 0x84BC854, 0x884BD3FC, 0x884BD83C, 0x84BDDD4, 0x884BE924
    .word 0x884BECDC, 0x884BEF4C, 0x884BF174, 0x84BF6F8, 0x884C0150
    .word 0x84C0298, 0x84C2D34, 0x84E0554, 0x884C3C90, 0x884C3F54
    .word 0x884C43AC, 0x84C5194, 0x84C832C, 0x884C8DEC, 0x84C90B4
    .word 0x884CA1BC, 0x884CA74C, 0x884CA9E8, 0x884E0C4C, 0x884CAD70
    .word 0x884CB0F4, 0x884CB3A8, 0x884CB638, 0x884CB930, 0x884E0C4C
    .word 0x884CBC1C, 0x884CBDE8, 0x884CC308, 0x884CC8AC, 0x884CD83C
    .word 0x884CDCE8, 0x884CDE24, 0x84CDF74, 0x884CF9D8, 0x884CFC7C
    .word 0x884D014C, 0x884E0C4C, 0x884D230C, 0x884D26BC, 0x884D2820
    .word 0x884D2A54, 0x884D3998, 0x884E0C4C, 0x884E0C4C, 0x84D3DBC
    .word 0x884D4AC4, 0x884D4CC8, 0x884D4FF0, 0x884D5764, 0x884D5C94
    .word 0x884D5DF0, 0x884D6370, 0x84E0554, 0x884D66B8, 0x884D6908
    .word 0x884D6BF0, 0x884D6E50, 0x884D701C, 0x884D77D8, 0x884D84E4
    .word 0x884D9344, 0x884E0C4C
dword_8032530:    .word 0x84E0554, 0x884D9954, 0x884DA604, 0x84E0554, 0x884DAD14
    .word 0x884DB04C, 0x884DB1CC, 0x884DB8F8, 0x884DBD30, 0x884DC2B0
    .word 0x884DCBD8, 0x84E0554, 0x884DD20C, 0x884DD40C, 0x884E0C4C
    .word 0x884DDDB8, 0x884DDF94, 0x884DE328, 0x884DE598, 0x884E0C4C
    .word 0x884DE728, 0x884DEFD8, 0x884DF674, 0x84DF96C, 0x884E00A0
    .word 0x84E0554, 0x84E0E68, 0x84E15F0, 0x84E1CD0, 0x84E24E0
    .word 0x84E2B40, 0x84E3200, 0x84E3820, 0x84FAB88, 0x84E3E80
    .word 0x84E44CC, 0x84E4AAC, 0x84E4FC8, 0x84E55C8, 0x84E5C4C
    .word 0x84E6244, 0x84E6804, 0x84E6EA4, 0x84E74E0, 0x84E7B00
    .word 0x84E8120, 0x84E8800, 0x84E8E60, 0x84E9460, 0x84E9A18
    .word 0x84EA01C, 0x84EA61C, 0x84EACDC, 0x84EB328, 0x84EBA48
    .word 0x84EBFE4, 0x84FAB88, 0x84EC644, 0x84FAB88, 0x84ECD24
    .word 0x84FAB88, 0x84ED4B4, 0x84EDA70, 0x84EE048, 0x84FAB88
    .word 0x84FAB88, 0x84FAB88, 0x84FAB88, 0x84EE7FC, 0x84EEFDC
    .word 0x84EF69C, 0x84EFB78, 0x84F0094, 0x84F070C, 0x84FAB88
    .word 0x84FAB88, 0x84F0CC4, 0x84F13D0, 0x84FAB88, 0x84FAB88
    .word 0x84FAB88, 0x84F1B3C, 0x84F223C, 0x84F2908, 0x84F3100
    .word 0x84F362C, 0x84F3B08, 0x84F3B08, 0x84F4324, 0x84F4324
    .word 0x84F4324, 0x84F4868, 0x84F4DD4, 0x84F5340, 0x84F5340
    .word 0x84F57A4, 0x84F57A4, 0x84FAB88, 0x84F5CE0, 0x84FAB88
    .word 0x84F6354, 0x84FAB88, 0x84F68C0, 0x84F6F84, 0x84F75A8
    .word 0x84FAB88, 0x84FAB88, 0x84F7C44, 0x84F81B0, 0x84F8754
    .word 0x84F8E10, 0x84F9534, 0x84F9978, 0x84F4324, 0x84FAB88
    .word 0x84F9E48, 0x84FA28C, 0x84FA744, 0x84F3B08, 0x84F3B08
    .word 0x84F3B08, 0x84F3B08, 0x84FAB88, 0x86CBB7C, 0x86CC13C
    .word 0x86CD410, 0x886C6B30, 0x886C6FD0, 0x886C73D8, 0x886C7764
    .word 0x886C7980, 0x886CDEA8, 0x886CE51C, 0x886CEAA8, 0x886CEC3C
    .word 0x84E0554, 0x884E0C4C, 0x886CFD1C, 0x887F0664, 0x887F0834
    .word 0x886D471C, 0x886D497C, 0x886D4FC4, 0x886D5070, 0x886D5224
    .word 0x884E0C4C, 0x886D54F4, 0x84E0554, 0x849B424, 0x81D8000
    .word 0x81D8000, 0x884E0C4C, 0x884E0C4C, 0x82F6ECC, 0x884E0C4C
    .word 0x884E0C4C, 0x884E0C4C, 0x884E0C4C, 0x886D91FC, 0x886D93E0
    .word 0x886DCCF0, 0x886DD328, 0x84E0554, 0x886D9C40, 0x886D9D10
    .word 0x886DC518, 0x886DC688, 0x83B5F44, 0x886D8C80, 0x84E0554
    .word 0x84E0554, 0x8264FA0, 0x87DC190, 0x87DC5F0, 0x87DD248
    .word 0x84E0554, 0x84E0554, 0x87DDB7C, 0x84E0554, 0x84E0554
    .word 0x87E069C, 0x87E0854, 0x87E0E44, 0x84E0554, 0x8379D44
    .word 0x87E6E20, 0x8264FA0, 0x826FAF0, 0x8278EBC, 0x828324C
    .word 0x828F18C, 0x8296F40, 0x829D818, 0x82A5AF0, 0x82B0690
    .word 0x82BA7BC, 0x83611FC, 0x836EA90, 0x838EC00, 0x82F9CCC
    .word 0x8338F18, 0x833BE68, 0x8342AC4, 0x8319B5C, 0x833F3A0
    .word 0x834C6F0, 0x8300F70, 0x81DF420, 0x81E7CC8, 0x81F1414
    .word 0x81FA9E8, 0x8204108, 0x820CD4C, 0x8214808, 0x821C354
    .word 0x8223C48, 0x822CC50, 0x8233728, 0x823B768, 0x884E0C4C
    .word 0x886DB208, 0x82C7550, 0x87E1D84, 0x87E24F4, 0x87E1894
    .word 0x87E1AD4, 0x87E2860, 0x886DBB0C, 0x886DB9C4, 0x88241EC4
    .word 0x88242E94, 0x8244164, 0x882455B0, 0x8246A24, 0x882489C8
    .word 0x882492FC, 0x88249C7C, 0x824AC94, 0x824B254, 0x8824D23C
    .word 0x8824DC7C, 0x824EAF4, 0x88252558, 0x82533F4, 0x8253F88
    .word 0x88257994, 0x8825859C, 0x88258FF8, 0x8825A0D8, 0x8825AD90
    .word 0x8825B860, 0x8825BFC4, 0x825C9AC, 0x8825DFB4, 0x825F2C8
    .word 0x8260F88, 0x88262CEC, 0x88263484, 0x83BFD0C, 0x8430534
    .word 0x886C33B4, 0x81D8000, 0x884E0C4C, 0x884E0C4C, 0x884E0C4C
    .word 0x839CCDC, 0x882FCA14, 0x8345C50, 0x8304700, 0x830A308
    .word 0x882E8470, 0x828F18C, 0x8355D50, 0x838849C, 0x8318920
    .word 0x839B9C0, 0x8351FA8, 0x88241EC4, 0x8399578, 0x83AE2B4
    .word 0x8824D23C, 0x8253F88, 0x8825DFB4, 0x837D8E0, 0x838E194
    .word 0x83A9190
off_80329A8:    .word dword_8032A20
    .word unk_8032A38
    .word unk_8032A74
    .word dword_8032AF8
    .word dword_8032B34
    .word dword_8032B70
    .word dword_8032BA0
off_80329C4:    .word off_8032BE8
    .word off_8032C00
    .word dword_8032C24
    .word off_8032C48
    .byte 0, 0, 0, 0
    .word off_8032C6C
    .word 0x0, 0x0
    .word off_8032CA8
    .word 0x0, 0x0, 0x0
    .word off_8032CFC
    .word off_8032DBC
    .word 0x0, 0x0
    .word off_8032E7C
    .word off_8032EA0
    .word off_8032EC4
    .word off_8032EDC
    .word off_8032EF4
    .word off_8032F18
    .word off_8032F48
dword_8032A20:    .word 0x84FAFCC, 0x84FF308, 0x84FF4AC, 0x8500F1C, 0x8503098
    .word 0x850323C
unk_8032A38:    .byte 0x90
    .byte 0x3C 
    .byte 0x50 
    .byte 8
    .byte 0xF8
    .byte 0x77 
    .byte 0x50 
    .byte 8
    .byte 0x9C
    .byte 0x79 
    .byte 0x50 
    .byte 8
    .byte 0x54 
    .byte 0x93
    .byte 0x50 
    .byte 8
    .byte 0xC0
    .byte 0xC2
    .byte 0x50 
    .byte 8
    .byte 0x64 
    .byte 0xC4
    .byte 0x50 
    .byte 8
    .byte 0x34 
    .byte 0xE1
    .byte 0x50 
    .byte 8
    .byte 0xCC
    .byte 5
    .byte 0x51 
    .byte 8
    .byte 0x70 
    .byte 7
    .byte 0x51 
    .byte 8
    .byte 0x54 
    .byte 0xD
    .byte 0x51 
    .byte 8
    .byte 0x40 
    .byte 0x1C
    .byte 0x51 
    .byte 8
    .byte 0xE4
    .byte 0x1D
    .byte 0x51 
    .byte 8
    .byte 0xAC
    .byte 0x20
    .byte 0x51 
    .byte 8
    .byte 0x94
    .byte 0x53 
    .byte 0x51 
    .byte 8
    .byte 0x38 
    .byte 0x55 
    .byte 0x51 
    .byte 8
unk_8032A74:    .byte 0xE0
    .byte 0x62 
    .byte 0x51 
    .byte 8
    .byte 0x64 
    .byte 0x9D
    .byte 0x51 
    .byte 8
    .byte 0xAC
    .byte 0xA0
    .byte 0x51 
    .byte 8
    .byte 0xE0
    .byte 0x62 
    .byte 0x51 
    .byte 8
    .byte 0xB0
    .byte 0xAD
    .byte 0x51 
    .byte 8
    .byte 0xAC
    .byte 0xA0
    .byte 0x51 
    .byte 8
    .byte 0xE0
    .byte 0x62 
    .byte 0x51 
    .byte 8
    .byte 0x64 
    .byte 0x9D
    .byte 0x51 
    .byte 8
    .byte 0xB8
    .byte 0xAF
    .byte 0x51 
    .byte 8
    .byte 0xE0
    .byte 0x62 
    .byte 0x51 
    .byte 8
    .byte 0xB0
    .byte 0xAD
    .byte 0x51 
    .byte 8
    .byte 0xB8
    .byte 0xAF
    .byte 0x51 
    .byte 8
    .byte 0x60 
    .byte 0xBC
    .byte 0x51 
    .byte 8
    .byte 0xD4
    .byte 0xD8
    .byte 0x51 
    .byte 8
    .byte 0x78 
    .byte 0xDA
    .byte 0x51 
    .byte 8
    .byte 0x60 
    .byte 0xBC
    .byte 0x51 
    .byte 8
    .byte 8
    .byte 0xEC
    .byte 0x51 
    .byte 8
    .byte 0x78 
    .byte 0xDA
    .byte 0x51 
    .byte 8
    .byte 0xAC
    .byte 0xED
    .byte 0x51 
    .byte 8
    .byte 0x3C 
    .byte 0x21 
    .byte 0x52 
    .byte 8
    .byte 0xE0
    .byte 0x22 
    .byte 0x52 
    .byte 8
    .byte 0xC
    .byte 0x36 
    .byte 0x52 
    .byte 8
    .byte 0x38 
    .byte 0x69 
    .byte 0x52 
    .byte 8
    .byte 0xDC
    .byte 0x6A 
    .byte 0x52 
    .byte 8
    .byte 0x88
    .byte 0x7B 
    .byte 0x52 
    .byte 8
    .byte 0xDC
    .byte 0xB5
    .byte 0x52 
    .byte 8
    .byte 0x24 
    .byte 0xB9
    .byte 0x52 
    .byte 8
    .byte 0x60 
    .byte 0xC5
    .byte 0x52 
    .byte 8
    .byte 0xDC
    .byte 0xE5
    .byte 0x52 
    .byte 8
    .byte 0x80
    .byte 0xE7
    .byte 0x52 
    .byte 8
    .byte 0x60 
    .byte 0xC5
    .byte 0x52 
    .byte 8
    .byte 0xA0
    .byte 0xEF
    .byte 0x52 
    .byte 8
    .byte 0x80
    .byte 0xE7
    .byte 0x52 
    .byte 8
dword_8032AF8:    .word 0x852F144, 0x85330DC, 0x8533280, 0x8535488, 0x85387FC
    .word 0x85389A0, 0x853A5F8, 0x853DEC4, 0x853E068, 0x853FFD4
    .word 0x8542FC8, 0x854316C, 0x8545468, 0x8547C24, 0x8547DC8
dword_8032B34:    .word 0x85495B4, 0x854D26C, 0x854D410, 0x8550B90, 0x8552F78
    .word 0x855311C, 0x8554160, 0x8557210, 0x85573B4, 0x8558498
    .word 0x8559ECC, 0x855A070, 0x855B17C, 0x855DBC0, 0x855DD64
dword_8032B70:    .word 0x855EE14, 0x85621EC, 0x8562390, 0x8564358, 0x8566F74
    .word 0x8567118, 0x8569DFC, 0x856D0FC, 0x856D2A0, 0x856E4F8
    .word 0x8570BBC, 0x8570D60
dword_8032BA0:    .word 0x8572DEC, 0x8576500, 0x85766A4, 0x8579340, 0x857B5E4
    .word 0x857B788, 0x857D8D0, 0x8580D64, 0x8580F08, 0x8582308
    .word 0x8585ED0, 0x8586074, 0x85878F4, 0x858AAE0, 0x858AC84
    .word 0x858CDA4, 0x858E380, 0x858E524
off_8032BE8:    .word dword_858F110
    .word off_8592304
    .word dword_85924A8
    .word dword_858F110
    .word off_8592304
    .word dword_8594D80
off_8032C00:    .word dword_8598328
    .word 0x859B428
    .word 0x859B5CC
    .word 0x8598328
    .word 0x859B428
    .word 0x859E9D0
    .word 0x8598328
    .word 0x859B428
    .word 0x85A2198
dword_8032C24:    .word 0x85A5590
    .word 0x85A8B04
    .word 0x85A8CA8
    .word 0x85A5590
    .word 0x85A8B04
    .word 0x85ABE34
    .word 0x85A5590
    .word 0x85A8B04
    .word dword_85AEFA8
off_8032C48:    .word dword_85B22DC
    .word off_85B5D28
    .word dword_85B5ECC
    .word dword_85B22DC
    .word off_85B5D28
    .word dword_85B86C8
    .word dword_85B22DC
    .word off_85B5D28
    .word dword_85BB3D0
off_8032C6C:    .word dword_8598328
    .byte 0x28 
    .byte 0xB4
    .byte 0x59 
    .byte 8
    .byte 0x50 
    .byte 0xE3
    .byte 0x5B 
    .byte 8
    .byte 0x90
    .byte 0x55 
    .byte 0x5A 
    .byte 8
    .byte 4
    .byte 0x8B
    .byte 0x5A 
    .byte 8
    .byte 0xE0
    .byte 0x18
    .byte 0x5C 
    .byte 8
    .byte 0xDC
    .byte 0x22 
    .byte 0x5B 
    .byte 8
    .byte 0x28 
    .byte 0x5D 
    .byte 0x5B 
    .byte 8
    .byte 0x50 
    .byte 0x47 
    .hword 0x85C
    .word dword_858F110
    .word off_8592304
    .word dword_85C7AA0
    .word dword_85CB0A8
    .word off_85CD6B4
    .word dword_85CD858
off_8032CA8:    .word off_85D0894
    .word off_85D183C
    .word dword_85D19E0
    .word off_85D2EE0
    .word off_85D2850
    .word dword_85D44B0
    .word 0x0, 0x0, 0x0
    .word off_85D2EE0
    .word off_85D29F4
    .word dword_85D44B0
    .word 0x0, 0x0, 0x0
    .word off_85D2EE0
    .word off_85D2B98
    .word dword_85D44B0
    .word off_85D2EE0
    .word off_85D2D3C
    .word dword_85D44B0
off_8032CFC:    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D430C
    .word dword_85D44B0
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D430C
    .word dword_85D44B0
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D430C
    .word dword_85D44B0
off_8032DBC:    .word off_85D2EE0
    .word off_85D430C
    .word dword_85D44B0
    .word off_85D2EE0
    .word off_85D430C
    .word dword_85D44B0
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D430C
    .word dword_85D44B0
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
    .word off_85D2EE0
    .word off_85D35B8
    .word dword_85D375C
off_8032E7C:    .word dword_85D4E48
    .word off_85D895C
    .word dword_85D8B00
    .word dword_85D4E48
    .word off_85D895C
    .word dword_85DB160
    .word dword_85D4E48
    .word off_85DDB74
    .word dword_85DDD18
off_8032EA0:    .word dword_85D4E48
    .word off_85E0670
    .word dword_85E0814
    .word dword_85D4E48
    .word off_85E0670
    .word dword_85E2F90
    .word dword_85D4E48
    .word off_85E0670
    .word dword_85E519C
off_8032EC4:    .word dword_85D4E48
    .word off_85E79D0
    .word dword_85E7B74
    .word dword_85D4E48
    .word off_85EAD2C
    .word dword_85EAED0
off_8032EDC:    .word dword_85FEF08
    .word off_85EE2A4
    .word dword_85EE448
    .word dword_85FEF08
    .word off_85EE2A4
    .word dword_85F1B20
off_8032EF4:    .word dword_85D4E48
    .word off_85F4D84
    .word dword_85F4F28
    .word dword_85D4E48
    .word off_85F4D84
    .word dword_85F7C58
    .word dword_85D4E48
    .word off_85FB848
    .word dword_85FB9EC
off_8032F18:    .word dword_85FEF08
    .word off_8602590
    .word dword_8602734
    .word dword_85FEF08
    .word off_8602590
    .word dword_8606438
    .word dword_85FEF08
    .word off_8602590
    .word dword_8609770
    .word dword_85FEF08
    .word off_8602590
    .word 0x84E0554
off_8032F48:    .word dword_85FEF08
    .word off_860D678
    .word 0x84E0554, 0x85FEF08, 0x860D678, 0x860DDD0, 0x85FEF08
    .word 0x860D678, 0x84E0554
off_8032F6C:    .word off_8032FE4
    .word off_8032FFC
    .word off_8033038
    .word off_80330BC
    .word off_80330F8
    .word off_8033134
    .word off_8033164
off_8032F88:    .word off_80331AC
    .word off_80331C4
    .word off_80331E8
    .word off_803320C
    .word 0x0
    .word off_8033230
    .word 0x0, 0x0
    .word off_803326C
    .word 0x0, 0x0, 0x0
    .word jt_big_80332C0
    .word 0x8033380, 0x0, 0x0
    .word 0x8033440, 0x8033464, 0x8033488, 0x80334A0, 0x80334B8
    .word 0x80334DC, 0x803350C
off_8032FE4:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_8032FFC:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_8033038:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_80330BC:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_80330F8:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_8033134:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_8033164:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_80331AC:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_80331C4:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_80331E8:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_803320C:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_8033230:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
off_803326C:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word 0x0, 0x0, 0x0
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
jt_big_80332C0:    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
    .word sub_8030628+1
    .word sub_8030808+1
    .word sub_803086C+1
pt_8033530:    .word pt_803354C+92
    .word pt_803354C+104
    .word pt_803354C+124
    .word off_80335F4
    .word unk_8033608
    .word off_803361C
    .word off_803362C
pt_803354C:    .word off_8033644
    .word off_803364C
    .word off_8033658
    .word off_8033664
    .word 0x0
    .word off_8033670
    .word 0x0
    .word 0x0
    .word unk_8033684
    .word 0x0
    .word 0x0
    .word 0x0
    .word off_80336A0
    .word off_80336E0
    .word 0x0
    .word 0x0
    .word off_8033720
    .word dword_803372C
    .word dword_803372C+12
    .word dword_803372C+20
    .word dword_803372C+28
    .word dword_803372C+40
    .word dword_803372C+56
    .word dword_8619B90+64
    .word dword_861ABD4+432
    .word comp_861AD94+1416
    .word dword_861B320+24
    .word dword_861C344+1068
    .word comp_861C780+1232
    .word comp_861C780+1896
    .word comp_861C780+2268
    .word comp_861C780+3416
    .word comp_861C780+3416
    .word comp_861C780+3416
    .word comp_861C780+3416
    .word dword_861D87C+2032
    .word dword_861D87C+2032
    .byte 0xD4
    .byte 0xE6
    .hword 0x861
    .word dword_861F710
    .word dword_8620350
    .word dword_8620A9C
    .word dword_8620A9C
off_80335F4:    .word dword_8620E58
    .byte 0xFC
    .byte 0x2C 
    .byte 0x62 
    .byte 8
    .byte 0xF0
    .byte 0x46 
    .byte 0x62 
    .byte 8
    .byte 0x10
    .byte 0x5B 
    .byte 0x62 
    .byte 8
    .byte 0xF8
    .byte 0x7D 
    .byte 0x62 
    .byte 8
unk_8033608:    .byte 0x68 
    .byte 0x89
    .byte 0x62 
    .byte 8
    .byte 8
    .byte 0xAB
    .byte 0x62 
    .byte 8
    .word dword_862B6E0
    .word dword_862C160
    .word dword_862C978
off_803361C:    .word dword_862D0A0
    .word dword_862E15C
    .word dword_863168C
    .word dword_8632288
off_803362C:    .word dword_8633084
    .word dword_8634E64
    .word dword_8635EB4
    .word dword_8636A7C
    .word dword_86376B4
    .word dword_8638E70
off_8033644:    .word dword_863951C
    .word dword_863B234
off_803364C:    .word dword_863D1A4
    .word dword_863F830
    .word dword_8642B34
off_8033658:    .word dword_86460FC
    .word dword_86475CC
    .word dword_8648BA8
off_8033664:    .word dword_864A484
    .word dword_864D860
    .word dword_8651B2C
off_8033670:    .word dword_8656C0C
    .word dword_865A08C
    .word dword_865B77C
    .word dword_8660604
    .byte 0x6C 
    .byte 0x29 
    .byte 0x66 
    .byte 8
unk_8033684:    .byte 0x6C 
    .byte 0x44 
    .byte 0x66 
    .byte 8
    .byte 4
    .byte 0x4F 
    .byte 0x66 
    .byte 8
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 4
    .byte 0x4F 
    .byte 0x66 
    .byte 8
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 4
    .byte 0x4F 
    .byte 0x66 
    .byte 8
    .word dword_8664F04
off_80336A0:    .word dword_8664988
    .word dword_8664F04
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 4
    .byte 0x4F 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .byte 0x88
    .byte 0x49 
    .byte 0x66 
    .byte 8
    .word dword_8664F04
off_80336E0:    .word dword_8664F04
    .word dword_8664F04
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664F04
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
    .word dword_8664988
off_8033720:    .word dword_8665548
    .word dword_8667820
    .word dword_866B038
dword_803372C:    .word 0x866D090, 0x8671A74, 0x8673418, 0x8675094, 0x8678F4C
    .word 0x867D85C, 0x8680690, 0x868316C, 0x8687DCC, 0x868CB78
    .word 0x868EBA0, 0x8691154, 0x8694FB4, 0x84E0554, 0x84E0554
    .word 0x8699EDC, 0x84E0554
off_8033770:    .word dword_80337E8
    .word 0x80337EA, 0x80337EF, 0x80337FA, 0x80337FF, 0x8033804
    .word 0x8033808
dword_803378C:    .word 0x803380E, 0x8033810, 0x8033813, 0x8033816, 0x0
    .word 0x8033819, 0x0, 0x0
    .word 0x803381E, 0x0, 0x0, 0x0
    .word 0x8033825, 0x8033835, 0x0, 0x0
    .word 0x8033845, 0x8033848, 0x803384B, 0x803384D, 0x803384F
    .word 0x8033852, 0x8033856
dword_80337E8:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x4040000, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x4000404, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x4040404, 0x4040404, 0x4040404, 0x4040404, 0x4040404
    .word 0x4040404, 0x4040404, 0x4040404, 0x4040404, 0x4
off_803385C:    .word dword_80338D4
    .word 0x80338D6, 0x80338DB, 0x80338E6, 0x80338EB, 0x80338F0
    .word 0x80338F4
dword_8033878:    .word 0x80338FA, 0x80338FC, 0x80338FF, 0x8033902, 0x0
    .word 0x8033905, 0x0, 0x0
    .word 0x803390A, 0x0, 0x0, 0x0
    .word 0x8033911, 0x8033921, 0x0, 0x0
    .word 0x8033931, 0x8033934, 0x8033937, 0x8033939, 0x803393B
    .word 0x803393E, 0x8033942
dword_80338D4:    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060606
    .word 0x6060706
    .word 0x5050606
    .word 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5000505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5
.func
.thumb_func
sub_8033948:
    push {r4-r7,lr}
    ldr r5, off_8033A78 // =unk_2011E30 
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    bge loc_8033964
    mov r7, #1
    strb r7, [r5,#0x4] // (byte_2011E34 - 0x2011e30)
    b loc_8033972
loc_8033964:
    bl getPETNaviSelect
    bl sub_80010D4
    strh r0, [r5,#0x8] // (word_2011E38 - 0x2011e30)
    mov r0, #1
    strb r0, [r5,#0x4] // (byte_2011E34 - 0x2011e30)
loc_8033972:
    bl sub_8033978
    pop {r4-r7,pc}
.endfunc // sub_8033948

.func
.thumb_func
sub_8033978:
    push {r4-r7,lr}
    ldr r5, off_8033A78 // =unk_2011E30 
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    bge loc_8033998
    ldr r0, off_80339B0 // =dword_86C0D20 
    ldr r1, dword_80339B4 // =0x6017200 
    ldr r2, off_80339B8 // =0x100 
    bl loc_8000AC8
    mov r0, #0
    bl sub_8033DA0
    pop {r4-r7,pc}
loc_8033998:
    ldr r0, off_80339C0 // =unk_86C1F80 
    ldr r1, dword_80339B4 // =0x6017200 
    ldr r2, off_80339C4 // =0x340 
    bl loc_8000AC8
.endfunc // sub_8033978

    ldr r0, off_80339C8 // =dword_86C1DC8+344 
    ldr r1, off_80339BC // =unk_30016D0 
    mov r2, #0x20 
    bl loc_8000AC8
    pop {r4-r7,pc}
    .byte 0, 0
off_80339B0:    .word dword_86C0D20
dword_80339B4:    .word 0x6017200
off_80339B8:    .word 0x100
off_80339BC:    .word unk_30016D0
off_80339C0:    .word unk_86C1F80
off_80339C4:    .word 0x340
off_80339C8:    .word dword_86C1DC8+0x158
loc_80339CC:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_811EBE0
    bne locret_8033A16
    ldr r5, off_8033A78 // =unk_2011E30 
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    cmp r1, #0x80
    bge loc_8033A0A
    ldrb r4, [r5,#0x4] // (byte_2011E34 - 0x2011e30)
    cmp r4, #0
    beq loc_8033A00
    lsl r4, r4, #3
    mov r0, #0x17
    mov r1, #0x29 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_80339FE
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8033A00
loc_80339FE:
    sub r4, #4
loc_8033A00:
    ldr r0, off_8033A18 // =off_8033A1C 
    ldr r0, [r0,r4]
    mov lr, pc
    bx r0
    b locret_8033A16
loc_8033A0A:
    ldr r0, off_8033A48 // =off_8033A4C 
    ldrb r1, [r5,#0x4] // (byte_2011E34 - 0x2011e30)
    lsl r1, r1, #3
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_8033A16:
    pop {r4-r7,pc}
off_8033A18:    .word off_8033A1C
off_8033A1C:    .word sub_8033A7C+1
    .word sub_8033A80+1
    .word sub_8033A96+1
    .word sub_8033AB0+1
    .word sub_8033AC4+1
    .word sub_8033ADC+1
    .word sub_8033AF0+1
    .word sub_8033A96+1
    .word sub_8033A96+1
    .word sub_8033A80+1
    .word sub_8033A80+1
off_8033A48:    .word off_8033A4C
off_8033A4C:    .word sub_8033B08+1
    .word sub_8033B0C+1
    .word sub_8033B1E+1
    .word sub_8033B30+1
    .word sub_8033B46+1
    .word sub_8033B5C+1
    .word sub_8033B6E+1
    .word sub_8033B1E+1
    .word sub_8033B1E+1
    .word sub_8033B0C+1
    .word sub_8033B0C+1
off_8033A78:    .word unk_2011E30
.func
.thumb_func
sub_8033A7C:
    push {lr}
    pop {pc}
.endfunc // sub_8033A7C

.func
.thumb_func
sub_8033A80:
    push {lr}
    mov r0, #0
    bl sub_8033B80
.endfunc // sub_8033A80

    mov r0, #0
    bl sub_8033F80
    mov r0, #0
    bl sub_8033DA0
    pop {pc}
.func
.thumb_func
sub_8033A96:
    push {lr}
    mov r0, #0
    bl sub_8033B80
.endfunc // sub_8033A96

    mov r0, #0
    bl sub_8033F80
    bl sub_8033BE8
    mov r0, #0
    bl sub_8033DA0
    pop {pc}
.func
.thumb_func
sub_8033AB0:
    push {lr}
    mov r0, #0
    bl sub_8033B80
.endfunc // sub_8033AB0

    mov r0, #0
    bl sub_8033F80
    bl sub_8033C68
    pop {pc}
.func
.thumb_func
sub_8033AC4:
    push {lr}
    mov r0, #0
    bl sub_8033B80
.endfunc // sub_8033AC4

    mov r0, #0
    bl sub_8033F80
    bl sub_8033C68
    bl sub_8033BE8
    pop {pc}
.func
.thumb_func
sub_8033ADC:
    push {lr}
    mov r0, #1
    bl sub_8033B80
.endfunc // sub_8033ADC

    mov r0, #0
    bl sub_8033F80
    bl sub_8033CF0
    pop {pc}
.func
.thumb_func
sub_8033AF0:
    push {lr}
    mov r0, #1
    bl sub_8033B80
.endfunc // sub_8033AF0

    mov r0, #0
    bl sub_8033F80
    bl sub_8033CF0
    bl sub_8033BE8
    pop {pc}
.func
.thumb_func
sub_8033B08:
    push {lr}
    pop {pc}
.endfunc // sub_8033B08

.func
.thumb_func
sub_8033B0C:
    push {lr}
    bl sub_8033E0C
.endfunc // sub_8033B0C

    mov r0, #1
    bl sub_8033F80
    bl sub_8033EE8
    pop {pc}
.func
.thumb_func
sub_8033B1E:
    push {lr}
    bl sub_8033E0C
.endfunc // sub_8033B1E

    mov r0, #1
    bl sub_8033F80
    bl sub_8033EE8
    pop {pc}
.func
.thumb_func
sub_8033B30:
    push {lr}
    bl sub_8033E0C
.endfunc // sub_8033B30

    mov r0, #1
    bl sub_8033F80
    bl sub_8033D88
    bl sub_8033EE8
    pop {pc}
.func
.thumb_func
sub_8033B46:
    push {lr}
    bl sub_8033E0C
.endfunc // sub_8033B46

    mov r0, #1
    bl sub_8033F80
    bl sub_8033D88
    bl sub_8033EE8
    pop {pc}
.func
.thumb_func
sub_8033B5C:
    push {lr}
    bl sub_8033E0C
.endfunc // sub_8033B5C

    mov r0, #1
    bl sub_8033F80
    bl sub_8033EE8
    pop {pc}
.func
.thumb_func
sub_8033B6E:
    push {lr}
    bl sub_8033E0C
.endfunc // sub_8033B6E

    mov r0, #1
    bl sub_8033F80
    bl sub_8033EE8
    pop {pc}
.func
.thumb_func
sub_8033B80:
    push {lr}
    mov r2, #0x18
    mul r2, r0
    ldrb r0, [r5,#5]
    add r0, r0, r2
    ldr r1, off_8033BB4 // =dword_8033BB8 
    ldrb r1, [r1,r0]
    ldr r0, dword_8033BAC // =0x80028003 
    lsl r1, r1, #0x10
    add r0, r0, r1
    ldr r1, dword_8033BB0 // =0xC790 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
.endfunc // sub_8033B80

    ldrb r0, [r5,#5]
    add r0, #1
    cmp r0, #0x18
    blt loc_8033BA8
    mov r0, #0
loc_8033BA8:
    strb r0, [r5,#5]
    pop {pc}
dword_8033BAC:    .word 0x80028003
dword_8033BB0:    .word 0xC790
off_8033BB4:    .word dword_8033BB8
dword_8033BB8:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .byte 0
    .byte 1
    .byte 2
    .byte 3
    .byte 2
    .byte 1
    .byte 0
    .byte 1
    .byte 2
    .byte 3
    .byte 2
    .byte 1
    .byte 0
    .byte 1
    .byte 2
    .byte 3
    .byte 2
    .byte 1
    .byte 0
    .byte 1
    .byte 2
    .byte 3
    .byte 2
    .byte 1
.func
.thumb_func
sub_8033BE8:
    push {lr}
    bl getPETNaviSelect
    add r4, r0, #0
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8033C02
    bl sub_803F524
    beq loc_8033C02
    mov r4, #0xc
loc_8033C02:
    ldr r1, off_8033C20 // =dword_8033C24 
    lsl r4, r4, #2
    ldr r0, [r1,r4]
    ldr r1, dword_8033C58 // =0x6017380 
    ldr r2, off_8033C5C // =0x80 
    bl loc_8000AC4
.endfunc // sub_8033BE8

    ldr r0, dword_8033C60 // =0x40120006 
    ldr r1, dword_8033C64 // =0xC79C 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    pop {pc}
    .byte 0, 0
off_8033C20:    .word dword_8033C24
dword_8033C24:    .word 0x86C1B20, 0x86C1BA0, 0x86C1C20, 0x86C1CA0, 0x86C1D20
    .word 0x86C1DA0, 0x86C1BA0, 0x86C1C20, 0x86C1CA0, 0x86C1D20
    .word 0x86C1DA0, 0x86C1EA0, 0x86C1E20
dword_8033C58:    .word 0x6017380
off_8033C5C:    .word 0x80
dword_8033C60:    .word 0x40120006
dword_8033C64:    .word 0xC79C
.func
.thumb_func
sub_8033C68:
    push {lr}
    ldrb r0, [r5,#6]
    ldr r1, off_8033D28 // =dword_8033D2C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    ldr r1, dword_8033CD8 // =0x6017400 
    ldr r2, off_8033CDC // =0x100 
    bl loc_8000AC4
.endfunc // sub_8033C68

    ldrb r0, [r5,#6]
    ldr r1, off_8033CC0 // =dword_8033CC4 
    ldrb r0, [r1,r0]
    bl sub_8033DA0
    ldrb r0, [r5,#6]
    add r0, #1
    cmp r0, #0x12
    blt loc_8033C8E
    mov r0, #0
loc_8033C8E:
    strb r0, [r5,#6]
    ldr r0, dword_8033CE4 // =0x801740FD 
    ldr r1, dword_8033CE8 // =0xC7A0 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    ldr r0, dword_8033CEC // =0xA017400D 
    ldr r1, dword_8033CE8 // =0xC7A0 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    ldrb r0, [r5,#7]
    sub r0, #1
    bgt loc_8033CBA
    mov r0, #0x9a
    bl sound_play
    mov r0, #0x60 
    strb r0, [r5,#7]
    b locret_8033CBC
loc_8033CBA:
    strb r0, [r5,#7]
locret_8033CBC:
    pop {pc}
    .byte 0, 0
off_8033CC0:    .word dword_8033CC4
dword_8033CC4:    .word 0x20000000, 0x2020, 0x20202000, 0x20000000, 0x2020
dword_8033CD8:    .word 0x6017400
off_8033CDC:    .word 0x100
    .word unk_30016D0
dword_8033CE4:    .word 0x801740FD
dword_8033CE8:    .word 0xC7A0
dword_8033CEC:    .word 0xA017400D
.func
.thumb_func
sub_8033CF0:
    push {lr}
    ldrb r0, [r5,#6]
    ldr r1, off_8033D28 // =dword_8033D2C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    ldr r1, dword_8033D74 // =0x6017400 
    ldr r2, off_8033D78 // =0x100 
    bl loc_8000AC8
.endfunc // sub_8033CF0

    ldrb r0, [r5,#6]
    add r0, #1
    cmp r0, #0x12
    blt loc_8033D0C
    mov r0, #0
loc_8033D0C:
    strb r0, [r5,#6]
    ldr r0, dword_8033D7C // =0x801740FD 
    ldr r1, dword_8033D80 // =0xC7A0 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    ldr r0, dword_8033D84 // =0xA017400D 
    ldr r1, dword_8033D80 // =0xC7A0 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    pop {pc}
off_8033D28:    .word dword_8033D2C
dword_8033D2C:    .word 0x86C0EA0, 0x86C0EA0, 0x86C0EA0, 0x86C0FA0, 0x86C0FA0
    .word 0x86C0FA0, 0x86C10A0, 0x86C10A0, 0x86C10A0, 0x86C11A0
    .word 0x86C11A0, 0x86C11A0, 0x86C12A0, 0x86C12A0, 0x86C12A0
    .word 0x86C13A0, 0x86C13A0, 0x86C13A0
dword_8033D74:    .word 0x6017400
off_8033D78:    .word 0x100
dword_8033D7C:    .word 0x801740FD
dword_8033D80:    .word 0xC7A0
dword_8033D84:    .word 0xA017400D
.func
.thumb_func
sub_8033D88:
    push {lr}
    ldrb r0, [r5,#7]
    sub r0, #1
    bgt loc_8033D9C
    mov r0, #0x9a
    bl sound_play
    mov r0, #0x60 
    strb r0, [r5,#7]
    b locret_8033D9E
loc_8033D9C:
    strb r0, [r5,#7]
locret_8033D9E:
    pop {pc}
.endfunc // sub_8033D88

.func
.thumb_func
sub_8033DA0:
    push {r4-r7,lr}
    add r6, r0, #0
    bl getPETNaviSelect
    add r4, r0, #0
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8033DBC
    bl sub_803F524
    beq loc_8033DBC
    mov r4, #0xc
loc_8033DBC:
    ldr r0, off_8033DD0 // =dword_8033DD4 
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    add r0, r0, r6
    ldr r1, off_8033E08 // =unk_30016D0 
    mov r2, #0x20 
    bl loc_8000AC8
.endfunc // sub_8033DA0

    pop {r4-r7,pc}
    .byte 0, 0
off_8033DD0:    .word dword_8033DD4
dword_8033DD4:    .word 0x86C18A0, 0x86C18E0, 0x86C1920, 0x86C1960, 0x86C19A0
    .word 0x86C19E0, 0x86C18E0, 0x86C1920, 0x86C1960, 0x86C19A0
    .word 0x86C19E0, 0x86C1A60, 0x86C1A20
off_8033E08:    .word unk_30016D0
.func
.thumb_func
sub_8033E0C:
    push {r5,lr}
    mov r0, #0x17
    mov r1, #0x32 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8033E6A
    bl getPETNaviSelect
    bl sub_80010D4
    add r1, r0, #0
    ldrh r0, [r5,#8]
    mov r6, #0
    cmp r1, r0
    beq loc_8033E42
    bgt loc_8033E38
    mov r6, #1
    sub r0, #4
    cmp r0, r1
    bge loc_8033E42
    add r0, r1, #0
    b loc_8033E42
loc_8033E38:
    mov r6, #2
    add r0, #4
    cmp r0, r1
    blt loc_8033E42
    add r0, r1, #0
loc_8033E42:
    strh r0, [r5,#8]
    bl getPETNaviSelect
    bl sub_80010D4
    lsr r1, r1, #2
    tst r6, r6
    bne loc_8033E5C
    mov r2, #0x20 
    cmp r0, r1
    ble loc_8033E5E
    mov r2, #0
    b loc_8033E5E
loc_8033E5C:
    lsl r2, r6, #5
loc_8033E5E:
    ldr r0, off_8033ED0 // =dword_86C1DC8+344 
    add r0, r0, r2
    ldr r1, off_8033ED4 // =unk_30016D0 
    mov r2, #0x20 
    bl sub_8000950
loc_8033E6A:
    ldrh r0, [r5,#8]
    bl sub_8000C00
    add r2, r0, #0
    mov r4, #0
    mov r8, r4
    mov r7, #0xc
    mov r0, #8
loc_8033E7A:
    push {r0,r2,r7}
    lsr r2, r7
    mov r1, #0xf
    and r2, r1
    ldr r1, dword_8033ED8 // =0x8000 
    lsl r0, r0, #0x10
    orr r0, r1
    tst r2, r2
    bne loc_8033E9A
    mov r4, r8
    tst r4, r4
    bne loc_8033E9E
    tst r7, r7
    beq loc_8033E9E
    mov r2, #0xb
    b loc_8033E9E
loc_8033E9A:
    mov r4, #1
    mov r8, r4
loc_8033E9E:
    lsl r2, r2, #1
    ldr r1, dword_8033EDC // =0xC792 
    add r1, r1, r2
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
.endfunc // sub_8033E0C

    pop {r0,r2,r7}
    add r0, #8
    sub r7, #4
    bge loc_8033E7A
    ldr r0, dword_8033ED8 // =0x8000 
    ldr r1, dword_8033EE0 // =0xC790 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    ldr r0, dword_8033EE4 // =0x10288000 
    ldr r1, dword_8033EE0 // =0xC790 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
    pop {r5,pc}
    .byte 0, 0
off_8033ED0:    .word dword_86C1DC8+0x158
off_8033ED4:    .word unk_30016D0
dword_8033ED8:    .word 0x8000
dword_8033EDC:    .word 0xC792
dword_8033EE0:    .word 0xC790
dword_8033EE4:    .word 0x10288000
.func
.thumb_func
sub_8033EE8:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x31 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8033EFC
    bl sub_8036F36
    cmp r0, #1
    bgt locret_8033F32
loc_8033EFC:
    bl sub_811F290
    add r1, r0, #0
    ldr r0, off_8033F34 // =loc_86CB360 
    ldr r2, off_8033F38 // =unk_2027400 
    ldr r3, dword_8033F3C // =0x600D000 
    mov r4, #0xb
    mov r5, #1
    ldr r6, off_8033F40 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
    add r4, r0, #0
    ldr r0, off_8033F44 // =dword_86BEAE0 
    ldr r1, off_8033F48 // =unk_3001B20 
    mov r2, #0x20 
    bl sub_8000950
    mov r0, #0x1e
    // a1
    sub r0, r0, r4
    // a2
    mov r1, #0x12
    // a3
    mov r2, #0
    ldr r3, off_8033F4C // =dword_8033F50 
    mov r4, #0xc
    mov r5, #2
    bl drawTiles // (int a1, int a2, int a3) -> void
locret_8033F32:
    pop {r4-r7,pc}
off_8033F34:    .word loc_86CB360
off_8033F38:    .word unk_2027400
dword_8033F3C:    .word 0x600D000
off_8033F40:    .word dword_86B7AE0
off_8033F44:    .word dword_86BEAE0
off_8033F48:    .word unk_3001B20
off_8033F4C:    .word dword_8033F50
dword_8033F50:    .word 0xE282E280
    .word 0xE286E284
    .word 0xE28AE288
    .word 0xE28EE28C
    .word 0xE292E290
    .byte 0x94
    .byte 0xE2
    .hword 0xE296
    .byte 0x81
    .byte 0xE2
    .byte 0x83
    .byte 0xE2
    .byte 0x85
    .byte 0xE2
    .byte 0x87
    .byte 0xE2
    .byte 0x89
    .byte 0xE2
    .byte 0x8B
    .byte 0xE2
    .byte 0x8D
    .byte 0xE2
    .hword 0xE28F
    .byte 0x91
    .byte 0xE2
    .byte 0x93
    .byte 0xE2
    .byte 0x95
    .byte 0xE2
    .byte 0x97
    .byte 0xE2
.endfunc // sub_8033EE8

.func
.thumb_func
sub_8033F80:
    push {r4-r7,lr}
    add r4, r0, #0
    bl sub_803F524
    beq locret_8033FA4
    ldr r0, off_8033FA8 // =dword_86C1AA0 
    ldr r1, dword_8033FAC // =0x6017580 
    mov r2, #0x80
    bl loc_8000AC8
    ldr r0, off_8033FB0 // =dword_8033FB4 
    lsl r4, r4, #2
    ldr r0, [r0,r4]
    ldr r1, dword_8033FBC // =0xC7AC 
    mov r2, #1
    mov r3, #0
    bl sub_802FE28
locret_8033FA4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8033FA8:    .word dword_86C1AA0
dword_8033FAC:    .word 0x6017580
off_8033FB0:    .word dword_8033FB4
dword_8033FB4:    .word 0x40240006, 0x40300000
dword_8033FBC:    .word 0xC7AC
.endfunc // sub_8033F80

.func
.thumb_func
sub_8033FC0:
    push {r5,lr}
    ldr r5, off_8033FD8 // =unk_2011E30 
    mov r1, #0
    strb r1, [r5,#0x7] // (byte_2011E37 - 0x2011e30)
    strb r0, [r5,#0x4] // (byte_2011E34 - 0x2011e30)
    cmp r0, #3
    bne locret_8033FD4
    mov r0, #0x9b
    bl sound_play
locret_8033FD4:
    pop {r5,pc}
    .balign 4, 0x00
off_8033FD8:    .word unk_2011E30
.endfunc // sub_8033FC0

.func
.thumb_func
sub_8033FDC:
    push {r4-r7,lr}
    bl sub_813C3AC
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    mov r1, #0x27 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x17
    mov r1, #0x21 
    bl sub_802F12C // (int a1, int a2) -> void
    bl sub_809F9DC
    bl sub_803CEB8
    mov r0, #0x17
    mov r1, #0x24 
    bl sub_802F110
    mov r0, #5
    mov r1, #0xdf
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #6
    mov r1, #0x8e
    bl sub_802F110
    mov r0, #6
    mov r1, #0x8f
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #7
    mov r1, #0x40 
    bl sub_802F110
    mov r0, #2
    mov r1, #0x25 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #2
    mov r1, #0x24 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_803405A
    mov r0, #1
    mov r1, #0x2a 
    mov r2, #0xa
    bl sub_802F1A8 // (int a3, int a2) -> void
    mov r0, #1
    mov r1, #0x8e
    mov r2, #9
    bl sub_802F1A8 // (int a3, int a2) -> void
    b loc_8034064
loc_803405A:
    mov r0, #1
    mov r1, #0x8e
    mov r2, #9
    bl sub_802F17E // (int a1, int a2) -> void
loc_8034064:
    bl sub_80141AC
    bl sub_8015C32
    bl sub_800A908
    mov r0, #0x17
    mov r1, #0
    bl sub_802F12C // (int a1, int a2) -> void
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    strh r0, [r7,#0x12]
    strh r0, [r7,#0x14]
    mov r0, #0
    bl sub_8001172
    mov r0, #0
    mov r1, #0x79 
    bl sub_802F110
    mov r0, #0x10
    mov r1, #6
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x10
    mov r1, #9
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x10
    mov r1, #0xa
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x10
    mov r1, #0x1c
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    mov r1, #0xbc
    mov r2, #0xc
    bl sub_802F1A8 // (int a3, int a2) -> void
    mov r0, #1
    mov r1, #0xc8
    mov r2, #6
    bl sub_802F1A8 // (int a3, int a2) -> void
    mov r0, #1
    mov r1, #0xce
    mov r2, #6
    bl sub_802F17E // (int a1, int a2) -> void
    mov r0, #0x10
    mov r1, #8
    bl sub_802F164 // (int a1, int a2) -> zf
    beq locret_80340F4
    mov r0, #0x10
    mov r1, #0x1c
    bl sub_802F110
    mov r0, #1
    mov r1, #0xc8
    mov r2, #6
    bl sub_802F17E // (int a1, int a2) -> void
    mov r0, #1
    mov r1, #0xce
    mov r2, #6
    bl sub_802F1A8 // (int a3, int a2) -> void
locret_80340F4:
    pop {r4-r7,pc}
.endfunc // sub_8033FDC

.func
.thumb_func
sub_80340F6:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#6]
    cmp r0, #0x80
    bne loc_8034108
    mov r0, #0
    bl sub_8035354
loc_8034108:
    mov r0, #1
    mov r1, #0x63 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_803412A
    bl sub_80010C6
    mov r0, #0
    bl sub_80010BE
    bl sub_8120DF0
    bl sub_813C3AC
    bl sub_80010C6
    b loc_803412E
loc_803412A:
    bl sub_813C3AC
loc_803412E:
    mov r0, #0x17
    mov r1, #0x2a 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034140
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F110
loc_8034140:
    bl sub_803CEB8
    mov r0, r10
    ldr r0, [r0,#0x40]
    mov r2, #0
    str r2, [r0,#0x24]
    str r2, [r0,#0x28]
    mov r0, #0x17
    mov r1, #0xa
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x17
    mov r1, #0xb
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x17
    mov r1, #9
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #4
    mov r1, #0xe9
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #5
    mov r1, #0xf2
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #5
    mov r1, #0xdf
    bl sub_802F110
    bl sub_80351C8
    mov r0, #0x17
    mov r1, #0x21 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x17
    mov r1, #0
    bl sub_802F12C // (int a1, int a2) -> void
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    strh r0, [r7,#0x12]
    strh r0, [r7,#0x14]
    bl sub_80141AC
    bl sub_8015C32
    bl sub_800A908
    pop {r4-r7,pc}
.endfunc // sub_80340F6

.func
.thumb_func
sub_80341AA:
    push {lr}
    // memBlock
    ldr r0, off_80341F4 // =byte_2011A40 
    // numWords
    mov r1, #0xc
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
.endfunc // sub_80341AA

.func
.thumb_func
ho_jackIn_80341B6:
    push {r4-r7,lr}
    ldr r5, off_80341F4 // =byte_2011A40 
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r0, [r2,#4]
    cmp r0, #0x80
    bge loc_80341C8
    ldr r0, off_80341D4 // =off_80341DC 
    b loc_80341CA
loc_80341C8:
    ldr r0, off_80341D8 // =off_80341E8 
loc_80341CA:
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_80341D4:    .word off_80341DC
off_80341D8:    .word off_80341E8
off_80341DC:    .word sub_80341F8+1
    .word ho_8034218+1
    .word sub_803423C+1
off_80341E8:    .word sub_80342DC+1
    .word sub_80342E4+1
    .word sub_80342EC+1
off_80341F4:    .word byte_2011A40
.endfunc // ho_jackIn_80341B6

.func
.thumb_func
sub_80341F8:
    push {lr}
    mov r0, #4
    strb r0, [r5]
    ldr r0, off_8034214 // =0x40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0xf
    bl sound_bgmusic_play // (int a1) -> void
    pop {pc}
off_8034214:    .word 0x40
.endfunc // sub_80341F8

.func
.thumb_func
// () -> void
ho_8034218:
    push {lr}
    ldr r0, off_803422C // =jt_8034230 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#8]
    add r0, #1
    str r0, [r5,#8]
    pop {pc}
off_803422C:    .word jt_8034230
jt_8034230:    .word sub_8034268+1
    .word sub_80342A4+1
    .word sub_80342C6+1
.endfunc // ho_8034218

.func
.thumb_func
sub_803423C:
    push {lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    bl sub_80017AA
    bl sub_800183C
    bl sub_8006910
    mov r7, r10
    ldr r0, [r7,#0x3c]
    mov r1, #0
    strb r1, [r0,#0x16]
    bl sub_8005C04
    bl sub_8033FDC
    bl sub_8000784
    pop {pc}
.endfunc // sub_803423C

.func
.thumb_func
// () -> void
sub_8034268:
    push {lr}
    mov r0, #9
    bl sub_80015FC
    bl sub_80017AA
    bl sub_800183C
    bl decompJackInAnimationGfx_8034314 // () -> void
    ldr r0, dword_803429C // =0x1341 
    bl sub_8001778
    ldr r0, off_80342A0 // =0x50 
    strh r0, [r5,#4]
    mov r0, #0
    str r0, [r5,#8]
    mov r0, #0
    mov r1, #4
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5,#1]
    bl sub_80343B0 // () -> void
    pop {pc}
dword_803429C:    .word 0x1341
off_80342A0:    .word 0x50
.endfunc // sub_8034268

.func
.thumb_func
sub_80342A4:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq loc_80342C0
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bgt loc_80342C0
    mov r0, #4
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5,#1]
loc_80342C0:
    bl sub_80343B0 // () -> void
    pop {pc}
.endfunc // sub_80342A4

.func
.thumb_func
sub_80342C6:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq loc_80342D6
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_80342D6:
    bl sub_80343B0 // () -> void
    pop {pc}
.endfunc // sub_80342C6

.func
.thumb_func
sub_80342DC:
    push {lr}
    mov r0, #4
    strb r0, [r5]
    pop {pc}
.endfunc // sub_80342DC

.func
.thumb_func
sub_80342E4:
    push {lr}
    mov r0, #8
    strb r0, [r5]
    pop {pc}
.endfunc // sub_80342E4

.func
.thumb_func
sub_80342EC:
    push {lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    bl sub_80017AA
    bl sub_800183C
    mov r7, r10
    ldr r0, [r7,#0x3c]
    mov r1, #0
    strb r1, [r0,#0x16]
    mov r1, #0x10
    strb r1, [r0,#0x17]
    bl sub_8005C04
    bl sub_80340F6
    pop {pc}
.endfunc // sub_80342EC

.func
.thumb_func
// () -> void
// [break] jack-in
decompJackInAnimationGfx_8034314:
    push {r4-r7,lr}
    // dataList
    ldr r0, off_8034334 // =dword_8034338 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    ldr r3, off_80343FC // =off_8034400 
    mov r0, #0
    strb r0, [r5,#3]
    ldr r0, [r3,#0x8] // (dword_8034408 - 0x8034400)
    strh r0, [r5,#6]
    bl sub_8046664 // () -> void
    // a1
    ldr r0, off_803436C // =dword_8034370 
    bl sub_80465A0 // (void *a1) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8034334:    .word dword_8034338
    // src: x<<1>>1 = 86c23a0
dword_8034338:    .word 0x886C23A0
    .word 0x6000020
    .word word_2013A00
    .word 0x886C2E2C
    .word 0x0
    .word unk_2017A00
    .word 0x886C33B4
    .word 0x0
    // decomp dest
    .word 0x201BA00
    .word 0x86C22C0
    .word 0x3001960
    .word 0x20
    .word 0x0
off_803436C:    .word dword_8034370
dword_8034370:    .word 0x39, 0x10139, 0x20239, 0x30339, 0x40439, 0x50539
    .word 0x60639, 0x70739, 0x80839, 0x90939, 0xA0A39, 0xB0B39
    .word 0xC0C39, 0xD0D39, 0xE0E39, 0xFFFFFFFF
.endfunc // decompJackInAnimationGfx_8034314

.func
.thumb_func
// () -> void
sub_80343B0:
    push {r4-r7,lr}
    ldr r7, off_80343FC // =off_8034400 
    ldrb r0, [r5,#3]
    add r3, r7, r0
    ldrh r1, [r5,#6]
    sub r1, #1
    bgt loc_80343D0
    ldr r2, [r3,#0xc]
    tst r2, r2
    bne loc_80343CA
    mov r0, #0
    ldr r1, [r7,#0x8] // (dword_8034408 - 0x8034400)
    b loc_80343D0
loc_80343CA:
    add r0, #0xc
    add r3, r7, r0
    ldr r1, [r3,#8]
loc_80343D0:
    strb r0, [r5,#3]
    strh r1, [r5,#6]
    add r7, r3, #0
    ldr r0, [r7,#4]
    ldr r1, off_8034458 // =word_3001960 
    mov r2, #0x20 
    bl loc_8000AC4
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #1
    ldr r3, off_803445C // =unk_2017A04 
    mov r4, #0x20 
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80343FC:    .word off_8034400
off_8034400:    .word unk_2017A04
    .word 0x86C22C0
dword_8034408:    .word 0x2
    .word unk_2017A04
    .word unk_86C22E0
    .word 0x2, 0x2017A04, 0x86C2300, 0x2, 0x2017A04, 0x86C2320, 0x2
    .word 0x2017A04, 0x86C2340, 0x2, 0x2017A04, 0x86C2360, 0x2, 0x2017A04
    .word 0x86C2380, 0x2
    .byte 0
    .byte 0
    .byte 0
    .byte 0
off_8034458:    .word word_3001960
off_803445C:    .word unk_2017A04
unk_8034460:    .byte 0x91
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
unk_803446C:    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
unk_8034474:    .byte 0
    .byte 0
    .byte 0
    .byte 0
unk_8034478:    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .hword 0xFF74
    .word 0x1C20000, 0xFEAC0000
    .byte 0
    .byte 0
    .byte 0x28 
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0xD4
    .byte 0xFE
    .byte 0
    .byte 0
    .byte 0xBA
    .byte 0
    .byte 0
    .byte 0
    .byte 0x60 
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 0x20
    .byte 1
    .byte 0x83
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x3, 0xFE700000, 0x10E0000, 0xFEDE0000, 0x1B80000, 0x283
    .word 0x0, 0x0
    .word 0x3, 0xFEC00000, 0x1400000, 0xFECA0000, 0x1AE0000, 0x295
    .word 0x0, 0x0
    .word 0x3, 0x640000, 0x1FE0000, 0xFF060000, 0x1540000, 0x295
    .word 0x0, 0x0
    .word 0x3, 0xFE520000, 0xFED40000, 0xFFEC0000, 0xC80000, 0x295
    .word 0x400000, 0x400000, 0x3, 0xFF3C0000, 0x820000, 0xFF880000
    .word 0xFFBA0000, 0x295, 0x400000, 0x400000, 0x3, 0xFF7E0000
    .word 0x4A0000, 0xFFCE0000, 0xFFEC0000, 0x285, 0x0, 0x0
    .word 0x3, 0xFE840000, 0x1540000, 0xFE980000, 0xFFBA0000, 0x285
    .word 0x0, 0x0
    .word 0x3, 0xFE840000, 0x640000, 0xFFBA0000, 0x3C0000, 0x285
    .word 0x0, 0x0
    .word 0x3, 0xFE840000, 0x1540000, 0x3C0000, 0x1AE0000, 0xFFFFFFFF
off_80345E4:    .word off_804D0A4
    .word off_804D0AC
    .word off_804E92C
    .word dword_804E940
    .word off_8052D88
    .word dword_8052DB4
    .word off_8059D48
    .word dword_8059D5C
    .word off_805E15C
    .word off_805E170
    .word off_806063C
    .word off_806064C
    .word off_8062F48
    .word off_8062F60
off_803461C:    .word off_804D0BC
    .word off_804E968
    .word off_8052E0C
    .word off_8059D84
    .word off_805E198
    .word off_806066C
    .word off_8062F90
NPCList_maps00:    .word off_804D0B4
    .word off_804E954
    .word off_8052DE0
    .word off_8059D70
    .word off_805E184
    .word off_806065C
    .word off_8062F78
off_8034654:    .word sub_804CF84+1
    .word sub_804E720+1
    .word sub_80527F0+1
    .word sub_80596C8+1
    .word sub_805DFF0+1
    .word sub_806044C+1
    .word sub_8062BCC+1
off_8034670:    .word off_80665A4
    .word dword_80665AC
    .word off_8067DC8
    .word dword_8067DD4
    .word off_80692F8
    .word dword_8069304
    .word off_806A260
    .word dword_806A26C
    .word 0x0, 0x0
    .word off_806AE08
    .word off_806AE1C
    .word 0x0, 0x0, 0x0, 0x0
    .word off_806C7B0
    .word dword_806C7CC
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word off_806DFB0
    .word dword_806DFF0
    .word off_807022C
    .word dword_807026C
    .word 0x0, 0x0, 0x0, 0x0
    .word off_8071EB0
    .word dword_8071EBC
    .word off_80758A0
    .word off_80758AC
    .word off_8078104
    .word dword_807810C
    .word off_807952C
    .word off_8079534
    .word off_807ADEC
    .word dword_807ADF8
    .word off_807D2F0
    .word off_807D300
    .word dword_807F1F8
    .word dword_807F204
off_8034728:    .word off_80665BC
    .word pt_8067DEC
    .word off_806931C
    .word off_806A284
    .word 0x0
    .word off_806AE44
    .word 0x0, 0x0
    .word off_806C804
    .word 0x0, 0x0, 0x0
    .word off_806E070
    .word off_80702EC
    .word 0x0, 0x0
    .word off_8071ED4
    .word off_80758C4
    .word off_807811C
    .word off_8079544
    .word off_807AE10
    .word off_807D320
    .word off_807F21C
off_8034784:    .word loc_806651C+1
    .word loc_8067D1C+1
    .word loc_80691D4+1
    .word loc_806A1B4+1
    .byte 0, 0, 0, 0
    .word loc_806ACC0+1
    .word 0x0, 0x0
    .word loc_806C4B0+1
    .word 0x0, 0x0, 0x0
    .word loc_806DC0C+1
    .word loc_806FF08+1
    .word 0x0, 0x0
    .word loc_8071CC4+1
    .word loc_80755C4+1
    .word loc_8077E60+1
    .word loc_8079468+1
    .word loc_807AAAC+1
    .word loc_807CFCC+1
    .word loc_807EE68+1
NPCList_maps80:    .word off_80665B4
    .word off_8067DE0
    .word off_8069310
    .word off_806A278
    .word 0x0
    .word off_806AE30
    .word 0
    .byte 0, 0, 0, 0
    .word off_806C7E8
    .word 0, 0
    .byte 0, 0, 0, 0
    .word off_806E030
    .word off_80702AC
    .word 0
    .byte 0, 0, 0, 0
    .word off_8071EC8
    .word off_80758B8
    .word off_8078114
    .word off_807953C
    .word off_807AE04
    .word off_807D310
    .word dword_807F210
off_803483C:    .word sub_8066540+1
    .word sub_8067D46+1
    .word sub_80691FE+1
    .word sub_806A1DE+1
    .byte 0, 0, 0, 0
    .word sub_806AD00+1
    .word 0x0, 0x0
    .word sub_806C59C+1
    .word 0x0, 0x0, 0x0
    .word sub_806DCD4+1
    .word sub_806FFDA+1
    .word 0x0, 0x0
    .word sub_8071CEE+1
    .word sub_80755EE+1
    .word sub_8077E84+1
    .word sub_807948C+1
    .word sub_807AAD6+1
    .word sub_807CFFC+1
    .word sub_807EE92+1
off_8034898:    .word sub_806649C+1
    .word sub_8067C88+1
    .word sub_8069140+1
    .word sub_806A120+1
    .word 0x0
    .word sub_806AB94+1
    .word 0x0, 0x0
    .word sub_806C35C+1
    .word 0x0, 0x0, 0x0
    .word sub_806DA58+1
    .word sub_806FD54+1
    .word 0x0, 0x0
    .word sub_8071C30+1
    .word sub_8075530+1
    .word sub_8077DE0+1
    .word sub_80793E8+1
    .word sub_807A9CC+1
    .word sub_807CF24+1
    .word sub_807EDD4+1
    .word dword_8034908
dword_80348F8:    .word 0xFFFFFFFF, 0x8034908, 0x8034920, 0xFFFFFFFF
dword_8034908:    .word 0xC, 0x3001B60, 0xFF0E0F0C, 0x80004210, 0x1, 0x0
    .word 0xC, 0x3001750, 0xFF0C0E0C, 0x80004210, 0x1, 0x0
off_8034938:    .word dword_8034944
    .word dword_803495C
    .word 0xFFFFFFFF
dword_8034944:    .word 0x8, 0x3001B60, 0xFF0E0F0C, 0x80004210, 0x1, 0x0
dword_803495C:    .word 0x8, 0x3001750, 0xFF0C0E0C, 0x80004210, 0x1, 0x0
    .word dword_803497C
    .word 0xFFFFFFFF
dword_803497C:    .word 0xC, 0x3001B60, 0xFF010F0C, 0x80004210, 0x1, 0x0
    .word dword_803499C
    .word 0xFFFFFFFF
dword_803499C:    .word 0xC, 0x3001B60, 0xFF010F0C, 0x80001084, 0x2, 0x80002108
    .word 0x2, 0x8000318C, 0x2, 0x80004210, 0x2, 0x0
dword_80349CC:    .word 0x4, 0x3001B60, 0xFF0D0C0C, 0x80003180, 0x1E, 0x800035A0
    .word 0x1E, 0x800039C0, 0x1E, 0x80003DE0, 0x1E, 0x80004200
    .word 0x1E, 0x80003DE0, 0x1E, 0x800039C0, 0x1E, 0x800035A0
    .word 0x1E, 0x1, 0x4, 0x3001750, 0xFF0A0D0C, 0x80000C60
    .word 0x1E, 0x80001080, 0x1E, 0x800014A0, 0x1E, 0x800018C0
    .word 0x1E, 0x80001CE0, 0x1E, 0x800018C0, 0x1E, 0x800014A0
    .word 0x1E, 0x80001080, 0x1E, 0x1, 0x4, 0x3001B60
    .word 0xFF0D0C0C, 0x800039C0, 0x4, 0x80003180, 0x4, 0x80002940
    .word 0x4, 0x80002100, 0x4, 0x800018C0, 0x4, 0x80001080
    .word 0x4, 0x80000840, 0x4, 0x80000000, 0x4, 0x0
    .word 0x4, 0x3001750, 0xFF0A0D0C, 0x800014A0, 0x4, 0x80001080
    .word 0x4, 0x80000C60, 0x4, 0x80000840, 0x4, 0x80000420
    .word 0x4, 0x80000000, 0x4, 0x0
dword_8034AFC:    .word 0x4, 0x3001B60, 0xFF01080C, 0x80003180, 0x1E, 0x800035A0
    .word 0x1E, 0x800039C0, 0x1E, 0x80003DE0, 0x1E, 0x80004200
    .word 0x1E, 0x80003DE0, 0x1E, 0x800039C0, 0x1E, 0x800035A0
    .word 0x1E, 0x1
.endfunc // sub_80343B0

.func
.thumb_func
sub_8034B4C:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    push {r0,r1}
    // memBlock
    ldr r0, off_8034BB4 // =unk_2011EA0 
    // numWords
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_8036E44
    bl sub_8035028
    bl sub_80350A8
    bl npc_getMapSpriteScriptOffsets
    pop {r0,r1}
    push {r0,r1}
    bl sub_803537C
    bl sub_80353DA
    pop {r0,r1}
    cmp r0, #0x80
    bge loc_8034B86
    ldr r4, off_8034BAC // =off_80345E4 
    b loc_8034B8A
loc_8034B86:
    ldr r4, off_8034BB0 // =off_8034670 
    sub r0, #0x80
loc_8034B8A:
    lsl r0, r0, #3
    lsl r3, r1, #2
    add r4, r4, r0
    ldr r0, [r4]
    ldr r1, [r4,#4]
    ldr r0, [r0,r3]
    ldr r1, [r1,r3]
    bl sub_803600E
    bl sub_8036E78
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8034BAC:    .word off_80345E4
off_8034BB0:    .word off_8034670
off_8034BB4:    .word unk_2011EA0
.endfunc // sub_8034B4C

.func
.thumb_func
sub_8034BB8:
    push {r4-r7,lr}
    mov r2, r8
    mov r3, r9
    mov r4, r12
    push {r2-r4}
    bl sub_8036F36
    bne loc_8034BFE
    bl sub_8036040
    bl sub_809C968
    bl sub_8034C6E
    beq loc_8034BFE
    bl sub_8034EF0
    bl sub_8034F68
    bl sub_80350BC
    bl sub_8034DB0
    bl sub_8034CB6
    bl sub_8034D7C
    bl sub_8035274
    bl sub_8035054
    bl sub_8035084
    bl sub_809CF2C
loc_8034BFE:
    bl loc_8036064
    bl sub_8036F36
    beq loc_8034C2C
    bl loc_803851C
    mov r0, #7
    mov r1, #0x42 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #7
    mov r1, #0x43 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #9
    mov r1, #0x62 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #9
    mov r1, #0x63 
    bl sub_802F12C // (int a1, int a2) -> void
loc_8034C2C:
    pop {r2-r4}
    mov r8, r2
    mov r9, r3
    mov r12, r4
    pop {r4-r7,pc}
.endfunc // sub_8034BB8

.func
.thumb_func
sub_8034C36:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8034C6A
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034C6A
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034C6A
    bl sub_809E462
    bne loc_8034C6A
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8034C6A
    bl sub_8036F36
    bne loc_8034C6A
    mov r0, #1
    pop {r4-r7,pc}
loc_8034C6A:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8034C36

.func
.thumb_func
sub_8034C6E:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8034C98
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034C98
    bl sub_809E462
    bne loc_8034C98
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8034C98
    bl sub_8036F36
    bne loc_8034C98
    mov r0, #1
    pop {r4-r7,pc}
loc_8034C98:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8034C6E

.func
.thumb_func
sub_8034C9C:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034CB2
    bl sub_8036F36
    bne loc_8034CB2
    mov r0, #1
    pop {r4-r7,pc}
loc_8034CB2:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8034C9C

.func
.thumb_func
sub_8034CB6:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq loc_8034D52
    mov r7, r10
    ldr r2, [r7,#4]
    ldrh r2, [r2,#2]
    ldr r3, off_8034D5C // =0x100 
    tst r3, r2
    beq loc_8034D52
    mov r0, #0x17
    mov r1, #0x27 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034D52
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrh r4, [r7,#4]
    ldrb r7, [r7,#4]
    cmp r7, #0x80
    bge loc_8034D4C
    ldr r3, off_8034D68 // =dword_8034D6C 
loc_8034CE2:
    ldr r0, [r3]
    mov r6, #0
    cmp r0, #0xff
    beq loc_8034CF6
    cmp r0, r4
    bne loc_8034CF2
    ldr r6, [r3,#4]
    b loc_8034CF6
loc_8034CF2:
    add r3, #8
    b loc_8034CE2
loc_8034CF6:
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    sub sp, sp, #0xc
    ldr r0, [r7,#0x1c]
    ldr r1, [r7,#0x20]
    ldr r2, [r7,#0x24]
    str r0, [sp]
    str r1, [sp,#4]
    add r2, r2, r6
    str r2, [sp,#8]
    mov r0, sp
    bl sub_8031A7A
    add sp, sp, #0xc
    sub r0, #0x40 
    blt loc_8034D44
    cmp r0, #0x18
    bge loc_8034D44
    add r4, r0, #0
    ldr r2, off_8034D58 // =0x16D0 
    add r0, r0, r2
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne loc_8034D44
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x64]
    ldrb r1, [r7,r4]
    cmp r1, #0xff
    beq loc_8034D44
    lsl r4, r4, #8
    orr r1, r4
    ldr r0, off_8034D60 // =dword_8098824 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_8034D44:
    mov r0, #0x69 
    bl sound_play
    b loc_8034D52
loc_8034D4C:
    ldr r0, off_8034D64 // =dword_80988E4 
    bl sub_8036E90
loc_8034D52:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8034D58:    .word 0x16D0
off_8034D5C:    .word 0x100
off_8034D60:    .word dword_8098824
off_8034D64:    .word dword_80988E4
off_8034D68:    .word dword_8034D6C
dword_8034D6C:    .word 0x602
dword_8034D70:    .word 0xC0000
    .word 0xFF, 0xFF
.endfunc // sub_8034CB6

.func
.thumb_func
sub_8034D7C:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq loc_8034DA4
    mov r7, r10
    ldr r2, [r7,#4]
    ldrh r2, [r2,#2]
    ldr r3, off_8034DA8 // =0x200 
    tst r3, r2
    beq loc_8034DA4
    mov r0, #0x17
    mov r1, #0x28 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034DA4
    ldr r0, dword_8034DAC // =unk_80991F4 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_8034DA4:
    mov r0, #1
    pop {r4-r7,pc}
off_8034DA8:    .word 0x200
dword_8034DAC:    .word 0x80991F4
.endfunc // sub_8034D7C

.func
.thumb_func
sub_8034DB0:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq loc_8034E22
    ldr r7, off_8034E28 // =unk_200AC80 
    ldrh r0, [r7,#0x4] // (word_200AC84 - 0x200ac80)
    cmp r0, #0
    beq loc_8034DCA
    ldr r0, off_8034E30 // =dword_809A898+16 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_8034DCA:
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r4, [r7,#0xe]
    tst r4, r4
    beq loc_8034E22
    mov r1, #0
    bl sub_8034E3C
    bne loc_8034DEE
    mov r1, #0
    bl sub_8034E88
    bne loc_8034DEE
    ldr r0, off_8034E2C // =dword_8099EA0 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_8034DEE:
    mov r1, #1
    bl sub_8034E3C
    bne loc_8034E08
    mov r1, #1
    bl sub_8034E88
    bne loc_8034E08
    ldr r0, off_8034E34 // =dword_809AA24+16 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_8034E08:
    mov r1, #2
    bl sub_8034E3C
    bne loc_8034E22
    mov r1, #2
    bl sub_8034E88
    bne loc_8034E22
    ldr r0, off_8034E38 // =unk_809CAD8 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_8034E22:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8034E28:    .word unk_200AC80
off_8034E2C:    .word dword_8099EA0
off_8034E30:    .word dword_809A898+0x10
off_8034E34:    .word dword_809AA24+0x10
off_8034E38:    .word unk_809CAD8
.endfunc // sub_8034DB0

.func
.thumb_func
sub_8034E3C:
    push {r4,r6,lr}
    mov r4, #0
    ldr r0, off_8034E60 // =off_8034E64 
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov r2, #0
    ldrh r6, [r7,#4]
    ldr r1, dword_8034E70 // =0xFFFF 
loc_8034E4C:
    ldrh r3, [r0,r2]
    cmp r3, r6
    beq loc_8034E5A
    add r2, #2
    cmp r3, r1
    bne loc_8034E4C
    mov r4, #1
loc_8034E5A:
    add r0, r2, #0
    tst r4, r4
    pop {r4,r6,pc}
off_8034E60:    .word off_8034E64
off_8034E64:    .word dword_8034E74
    .word dword_8034E80
    .word dword_8034E84
dword_8034E70:    .word 0xFFFF
dword_8034E74:    .word 0x1050401, 0x40000, 0x910193
dword_8034E80:    .word 0xFFFF0401
dword_8034E84:    .word 0xFFFF0401
.endfunc // sub_8034E3C

.func
.thumb_func
sub_8034E88:
    push {r6,r7,lr}
    add r7, r1, #0
    add r6, r0, #0
    ldr r2, off_8034ED8 // =off_8034EDC 
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    tst r1, r1
    bne loc_8034EB6
    cmp r6, #6
    bne loc_8034EAC
    mov r0, #0xe
    mov r1, #0
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8034EAC
    mov r1, #1
    tst r1, r1
    b locret_8034ED6
loc_8034EAC:
    cmp r6, #0xa
    bne loc_8034EB6
    mov r1, #1
    tst r1, r1
    b locret_8034ED6
loc_8034EB6:
    add r0, r6, #0
    lsr r0, r0, #1
    ldrb r1, [r2,r0]
    cmp r1, r4
    bne locret_8034ED6
    cmp r6, #8
    bne loc_8034ECE
    mov r0, #0
    mov r1, #0x84
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8034ED2
loc_8034ECE:
    mov r1, #0
    b loc_8034ED4
loc_8034ED2:
    mov r1, #1
loc_8034ED4:
    tst r1, r1
locret_8034ED6:
    pop {r6,r7,pc}
off_8034ED8:    .word off_8034EDC
off_8034EDC:    .word dword_8034EE8
    .word 0x8034EEE, 0x8034EEF
dword_8034EE8:    .word 0xF8F8FBF7, 0xF8F9F4F4
.endfunc // sub_8034E88

.func
.thumb_func
sub_8034EF0:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq locret_8034F56
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r4, [r4,#0xe]
    tst r4, r4
    beq locret_8034F56
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r6, [r7,#4]
    ldrb r7, [r7,#5]
    cmp r6, #0x96
    bne loc_8034F22
    cmp r7, #1
    bne loc_8034F22
    add r0, r4, #0
    sub r0, #0x60 
    blt loc_8034F22
    cmp r0, #0x10
    bge loc_8034F22
    add r0, #0x10
    add r4, r0, #0
    b loc_8034F3E
loc_8034F22:
    sub r4, #0xf0
    blt locret_8034F56
    cmp r4, #0x10
    bge locret_8034F56
    ldr r0, off_8034F58 // =0x16C0 
    add r0, r0, r4
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne locret_8034F56
    cmp r6, #0x80
    bge loc_8034F3E
    ldr r1, off_8034F5C // =off_803461C 
    b loc_8034F42
loc_8034F3E:
    ldr r1, off_8034F60 // =off_8034728 
    sub r6, #0x80
loc_8034F42:
    lsl r6, r6, #2
    lsl r7, r7, #2
    ldr r1, [r1,r6]
    ldr r1, [r1,r7]
    ldrb r1, [r1,r4]
    cmp r1, #0xff
    beq locret_8034F56
    ldr r0, off_8034F64 // =dword_80982A8+176 
    bl sub_8036E90
locret_8034F56:
    pop {r4-r7,pc}
off_8034F58:    .word 0x16C0
off_8034F5C:    .word off_803461C
off_8034F60:    .word off_8034728
off_8034F64:    .word dword_80982A8+0xB0
.endfunc // sub_8034EF0

.func
.thumb_func
sub_8034F68:
    push {r4-r7,lr}
    bl sub_8036F36
    bne locret_8034FA8
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r0, [r5,#0x18]
    add r0, #0x1c
    bl sub_8031A7A
    add r4, r1, #0
    cmp r4, #1
    blt locret_8034FA8
    cmp r4, #0xf
    bgt locret_8034FA8
    ldr r1, off_8034FAC // =0x16F0 
    add r1, r1, r4
    add r0, r1, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq locret_8034FA8
    mov r0, #4
    mul r0, r4
    ldr r3, off_8034FB4 // =unk_2011EA0 
    add r3, r3, r0
    ldrb r0, [r3]
    tst r0, r0
    beq locret_8034FA8
    ldr r0, off_8034FB0 // =dword_80982A8+220 
    ldr r1, [r3]
    bl sub_8036E90
locret_8034FA8:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8034FAC:    .word 0x16F0
off_8034FB0:    .word dword_80982A8+0xDC
off_8034FB4:    .word unk_2011EA0
.endfunc // sub_8034F68

.func
.thumb_func
sub_8034FB8:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r1, [r4,#5]
    ldrb r2, [r4,#0xd]
    cmp r1, r2
    bne loc_8034FCE
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#0xc]
    cmp r1, r2
    beq loc_8035004
loc_8034FCE:
    mov r0, #0x17
    mov r1, #3
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8035004
    bl sub_8036F36
    bne loc_8035004
    ldr r4, off_8035020 // =dword_809895C 
    mov r0, #1
    mov r1, #0x27 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8034FEC
    ldr r4, dword_8035024 // =0x80989C1 
loc_8034FEC:
    add r0, r4, #0
    bl sub_8036E90
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    mov r1, #0x27 
    bl sub_802F12C // (int a1, int a2) -> void
    pop {r4-r7,pc}
loc_8035004:
    mov r0, #0x17
    mov r1, #3
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0x17
    mov r1, #0x24 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    mov r1, #0x27 
    bl sub_802F12C // (int a1, int a2) -> void
    pop {r4-r7,pc}
    .byte 0, 0
off_8035020:    .word dword_809895C
dword_8035024:    .word 0x80989C1
.endfunc // sub_8034FB8

.func
.thumb_func
sub_8035028:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r0, [r5,#0x44]
    lsr r1, r0, #8
    mov r2, #0xff
    and r0, r2
    ldrb r7, [r5,#4]
    cmp r7, #0x80
    blt locret_803504C
    sub r7, #0x80
    lsl r7, r7, #2
    ldr r6, off_8035050 // =off_8034784 
    ldr r6, [r6,r7]
    tst r6, r6
    beq locret_803504C
    mov lr, pc
    bx r6
locret_803504C:
    pop {r4-r7,pc}
    .byte 0, 0
off_8035050:    .word off_8034784
.endfunc // sub_8035028

.func
.thumb_func
sub_8035054:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq loc_803507A
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#0x12]
    cmp r0, #0xff
    beq loc_803507A
    mov r0, #0x17
    mov r1, #0x1a
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_803507A
    ldr r0, off_8035080 // =dword_809AE50+24 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_803507A:
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
off_8035080:    .word dword_809AE50+0x18
.endfunc // sub_8035054

.func
.thumb_func
sub_8035084:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq loc_803509E
    bl sub_8035756
    beq loc_803509E
    add r1, r0, #0
    ldr r0, off_80350A4 // =dword_8098B40+120 
    bl sub_8036E90
    mov r0, #0
    pop {r4-r7,pc}
loc_803509E:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80350A4:    .word dword_8098B40+0x78
.endfunc // sub_8035084

.func
.thumb_func
sub_80350A8:
    push {r5,lr}
    bl sub_809E064
    mov r0, #1
    add r1, r5, #0
    add r1, #0x1c
    bl sub_80301B2
    pop {r5,pc}
    .balign 4, 0x00
.endfunc // sub_80350A8

.func
.thumb_func
sub_80350BC:
    push {r4,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    blt loc_8035126
    bl sub_8034C9C
    beq loc_8035126
    mov r0, #0x17
    mov r1, #8
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_80350E2
    ldr r0, off_8035130 // =dword_8099E04 
    bl sub_8036E90
    mov r0, #0
    pop {r4,pc}
loc_80350E2:
    mov r4, r10
    ldr r4, [r4,#0x40]
    mov r0, #0x17
    mov r1, #0xa
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8035102
    ldr r0, [r4,#0x24]
    tst r0, r0
    bne loc_8035102
    mov r0, #0x17
    mov r1, #0xa
    bl sub_802F12C // (int a1, int a2) -> void
    mov r1, #1
    b loc_803511C
loc_8035102:
    mov r0, #0x17
    mov r1, #0xb
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8035126
    ldr r0, [r4,#0x28]
    tst r0, r0
    bne loc_8035126
    mov r0, #0x17
    mov r1, #0xb
    bl sub_802F12C // (int a1, int a2) -> void
    mov r1, #0
loc_803511C:
    ldr r0, off_803512C // =dword_8099DC0 
    bl sub_8036E90
    mov r0, #0
    pop {r4,pc}
loc_8035126:
    mov r0, #1
    pop {r4,pc}
    .balign 4, 0x00
off_803512C:    .word dword_8099DC0
off_8035130:    .word dword_8099E04
.endfunc // sub_80350BC

.func
.thumb_func
npc_getMapSpriteScriptOffsets:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x21 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne locret_8035160
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#4]
    ldrb r1, [r3,#5]
    cmp r0, #0x80
    bge loc_8035150
    ldr r2, off_8035164 // =NPCList_maps00 
    b loc_8035154
loc_8035150:
    ldr r2, off_8035168 // =NPCList_maps80 
    sub r0, #0x80
    // area
loc_8035154:
    lsl r0, r0, #2
    // subarea
    lsl r1, r1, #2
    ldr r2, [r2,r0]
    ldr r0, [r2,r1]
    bl sub_8030A60
locret_8035160:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8035164:    .word NPCList_maps00
off_8035168:    .word NPCList_maps80
.endfunc // npc_getMapSpriteScriptOffsets

.func
.thumb_func
sub_803516C:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#4]
    cmp r0, #0x80
    bge loc_803517C
    ldr r2, off_803518C // =off_8034654 
    b loc_8035180
loc_803517C:
    ldr r2, off_8035190 // =off_803483C 
    sub r0, #0x80
loc_8035180:
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov lr, pc
    bx r2
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803518C:    .word off_8034654
off_8035190:    .word off_803483C
.endfunc // sub_803516C

.func
.thumb_func
sub_8035194:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#4]
    cmp r0, #0x80
    bge loc_80351A2
    b locret_80351AE
loc_80351A2:
    ldr r2, off_80351B0 // =off_8034898 
    sub r0, #0x80
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    mov lr, pc
    bx r2
locret_80351AE:
    pop {r4-r7,pc}
off_80351B0:    .word off_8034898
.endfunc // sub_8035194

    push {r4-r7,lr}
    ldr r0, off_80351C0 // =dword_80351C4 
    bl sub_8030A60
    pop {r4-r7,pc}
    .byte 0, 0
off_80351C0:    .word dword_80351C4
dword_80351C4:    .word 0xFF
.func
.thumb_func
sub_80351C8:
    push {r4-r7,lr}
    ldr r4, off_80351E8 // =word_80351EC 
loc_80351CC:
    ldrh r0, [r4]
    tst r0, r0
    beq locret_80351E6
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_80351E2
    ldrh r0, [r4,#2]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
loc_80351E2:
    add r4, #4
    b loc_80351CC
locret_80351E6:
    pop {r4-r7,pc}
off_80351E8:    .word word_80351EC
word_80351EC:    .hword 0x343
word_80351EE:    .hword 0x104
    .byte 0x49 
    .byte 3
    .byte 5
    .byte 1
    .byte 0x4F 
    .byte 3
    .byte 6
    .byte 1
    .byte 0x55 
    .byte 3
    .byte 7
    .byte 1
    .byte 0x5B 
    .byte 3
    .byte 8
    .byte 1
    .byte 0x67 
    .byte 3
    .byte 9
    .byte 1
    .byte 0x61 
    .byte 3
    .byte 0xA
    .byte 1
    .byte 0x1A
    .byte 2
    .byte 0x12
    .byte 2
    .byte 0x1B
    .byte 2
    .byte 0x13
    .byte 2
    .byte 0x1C
    .byte 2
    .byte 0x14
    .byte 2
    .byte 0x1D
    .byte 2
    .byte 0x15
    .byte 2
    .byte 0x1E
    .byte 2
    .byte 0x16
    .byte 2
    .byte 0x1F
    .byte 2
    .byte 0x18
    .byte 2
    .byte 0x20
    .byte 2
    .byte 0x17
    .byte 2
    .byte 0x21 
    .byte 2
    .byte 0x19
    .byte 2
    .byte 0x21 
    .byte 2
    .byte 0x22 
    .byte 2
    .byte 0
    .byte 0
.endfunc // sub_80351C8

.func
.thumb_func
sub_803522E:
    push {r4-r7,lr}
    ldr r4, off_803524C // =word_8035250 
    add r7, r0, #0
loc_8035234:
    ldrh r1, [r4]
    cmp r1, #0xff
    beq locret_803524A
    cmp r7, r1
    bne loc_8035246
    ldrh r1, [r4,#2]
    // a1
    add r0, r1, #0
    bl sub_802F114 // (int a1) -> void
loc_8035246:
    add r4, #4
    b loc_8035234
locret_803524A:
    pop {r4-r7,pc}
off_803524C:    .word word_8035250
word_8035250:    .hword 0x1
word_8035252:    .hword 0x21A
    .byte 2
    .byte 0
    .byte 0x1B
    .byte 2
    .byte 3
    .byte 0
    .byte 0x1C
    .byte 2
    .byte 4
    .byte 0
    .byte 0x1D
    .byte 2
    .byte 5
    .byte 0
    .byte 0x1E
    .byte 2
    .byte 6
    .byte 0
    .byte 0x1F
    .byte 2
    .byte 7
    .byte 0
    .byte 0x20
    .byte 2
    .byte 0x8D
    .byte 0
    .byte 0x21 
    .byte 2
    .byte 0xFF
    .byte 0
    .byte 0xFF
    .byte 0
.endfunc // sub_803522E

.func
.thumb_func
sub_8035274:
    push {r4-r7,lr}
    bl sub_8034C9C
    beq locret_80352D4
    mov r0, #0x17
    mov r1, #0
    bl sub_802F164 // (int a1, int a2) -> zf
    bne locret_80352D4
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    blt locret_80352D4
    ldr r0, [r7,#0x18]
    add r0, #0x1c
    bl sub_8031A7A
    add r6, r0, #0
    cmp r6, #0xd0
    blt locret_80352D4
    cmp r6, #0xef
    bgt locret_80352D4
    ldr r4, off_80352D8 // =word_80352DC 
    ldr r5, off_8035308 // =dword_803530C 
loc_80352A6:
    ldrh r0, [r4]
    tst r0, r0
    beq locret_80352D4
    cmp r0, r6
    bne loc_80352CE
    ldrh r7, [r4,#2]
    add r0, r7, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_80352CE
    ldrh r7, [r4,#4]
    add r0, r7, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne loc_80352CE
    ldr r0, off_8035328 // =dword_8098DD0+744 
    ldr r1, [r5]
    bl sub_8036E90
    b locret_80352D4
loc_80352CE:
    add r4, #6
    add r5, #4
    b loc_80352A6
locret_80352D4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80352D8:    .word word_80352DC
word_80352DC:    .hword 0xD0
word_80352DE:    .hword 0x104
word_80352E0:    .hword 0x21A
    .hword 0xD1
    .word 0x21B0105, 0x10600D2, 0xD3021C, 0x21D0107, 0x10800D4
    .word 0xD5021E, 0x21F0109, 0x10A00D6, 0x220
off_8035308:    .word dword_803530C
dword_803530C:    .word 0x1FF0001
    .word 0x1FF0002, 0x1FF0003, 0x1FF0004, 0x1FF0005, 0x1FF0006
    .word 0x1FF0007
off_8035328:    .word dword_8098DD0+0x2E8
.endfunc // sub_8035274

.func
.thumb_func
sub_803532C:
    push {r4-r7,lr}
    ldr r6, off_8035350 // =byte_8037694 
    ldr r7, off_8035378 // =byte_20010F0 
    mov r3, #0
loc_8035334:
    ldrb r0, [r6]
    ldrb r1, [r6,#1]
    strb r0, [r7]
    add r6, #2
    add r7, #1
    add r3, #1
    cmp r3, #0x19
    blt loc_8035334
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r0, #0
    strb r0, [r7,#6]
    pop {r4-r7,pc}
    .byte 0, 0
off_8035350:    .word byte_8037694
.endfunc // sub_803532C

.func
.thumb_func
sub_8035354:
    push {r4-r7,lr}
    ldr r6, off_8035378 // =byte_20010F0 
    add r6, r6, r0
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r6]
    strb r0, [r7,#6]
    pop {r4-r7,pc}
.endfunc // sub_8035354

.func
.thumb_func
sub_8035364:
    push {r4-r7,lr}
    ldr r6, off_8035378 // =byte_20010F0 
    add r6, r6, r0
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#6]
    strb r0, [r6]
    mov r0, #0xff
    strb r0, [r7,#6]
    pop {r4-r7,pc}
off_8035378:    .word byte_20010F0
.endfunc // sub_8035364

.func
.thumb_func
sub_803537C:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x28 
    bl sub_802F12C // (int a1, int a2) -> void
    ldr r4, off_80353B4 // =word_80353B8 
    mov r6, r10
    ldr r6, [r6,#0x3c]
    ldrh r6, [r6,#4]
loc_803538E:
    ldrh r0, [r4]
    tst r0, r0
    beq locret_80353B0
    cmp r0, r6
    bne loc_80353AC
    ldrh r0, [r4,#2]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_80353AC
    mov r0, #0
    mov r1, #0x28 
    bl sub_802F110
    b locret_80353B0
loc_80353AC:
    add r4, #4
    b loc_803538E
locret_80353B0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80353B4:    .word word_80353B8
word_80353B8:    .hword 0x90
word_80353BA:    .hword 0x29
    .word 0x2A0190, 0x2B0290, 0x2C0091, 0x2D0191, 0x2E0291, 0x2F0093
    .word 0x300193
    .byte 0x0, 0x0
.endfunc // sub_803537C

.func
.thumb_func
sub_80353DA:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x28 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_80353EC
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
loc_80353EC:
    ldr r0, off_80353F8 // =off_80353FC 
    bl sub_8002354
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80353F8:    .word off_80353FC
off_80353FC:    .word dword_80349CC
    .word dword_80349CC+0x50
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
.endfunc // sub_80353DA

.func
.thumb_func
sub_8035408:
    push {r4-r7,lr}
    ldr r0, off_8035414 // =unk_8035418 
    bl sub_8002354
    mov r0, #0
    pop {r4-r7,pc}
off_8035414:    .word unk_8035418
unk_8035418:    .byte 0x6C 
    .byte 0x4A 
    .byte 3
    .byte 8
    .byte 0xBC
    .byte 0x4A 
    .byte 3
    .byte 8
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
.endfunc // sub_8035408

.func
.thumb_func
sub_8035424:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x28 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq locret_8035440
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    bne locret_8035440
    ldr r0, off_8035444 // =off_8035448 
    bl sub_8002354
locret_8035440:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8035444:    .word off_8035448
off_8035448:    .word dword_8034AFC
    .word 0xFFFFFFFF, 0x4903B5F0, 0x58080080, 0xF88AF7CE, 0xBDF02000
    .word 0x8035464, 0x803546C, 0x80354D4, 0x805, 0x0
    .word 0x0, 0x0
    .word 0x3A1C32, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C33, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C34, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C35, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C36, 0xFF, 0x805, 0x0, 0x0, 0x0
    .word 0x23A1C42, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C43, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C44, 0x805, 0x0, 0x0, 0x0
    .word 0x13C1C45, 0x805, 0x0, 0x0, 0x0
    .byte 0x46 
    .byte 0x1C
    .byte 0x3C 
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 0
.endfunc // sub_8035424

.func
.thumb_func
sub_803553C:
    push {r4-r7,lr}
    bl sub_80355A8
    mov r0, #6
    mov r1, #0x7b 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8035554
    mov r0, #6
    mov r1, #0x82
    bl sub_802F110
loc_8035554:
    mov r0, #8
    mov r1, #0x56 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8035566
    mov r0, #8
    mov r1, #0x5f 
    bl sub_802F110
loc_8035566:
    mov r0, #0xa
    mov r1, #0x44 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8035578
    mov r0, #0xa
    mov r1, #0xba
    bl sub_802F110
loc_8035578:
    mov r0, #0xc
    mov r1, #0x6d 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_803558A
    mov r0, #0xc
    mov r1, #0xdc
    bl sub_802F110
loc_803558A:
    mov r0, #0xc
    mov r1, #0xa7
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_803559C
    mov r0, #0xc
    mov r1, #0xe0
    bl sub_802F110
loc_803559C:
    mov r0, #1
    mov r1, #0x20 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803553C

.func
.thumb_func
sub_80355A8:
    push {r4-r7,lr}
    mov r0, #6
    mov r1, #0x82
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #8
    mov r1, #0x5f 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0xa
    mov r1, #0xba
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0xc
    mov r1, #0xdc
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #0xc
    mov r1, #0xe0
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    mov r1, #0x20 
    bl sub_802F110
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_80355A8

    ldr r1, off_80355E8 // =dword_80984C8 
    mov r2, #0x14
    mul r2, r0
    add r0, r1, r2
    mov pc, lr
off_80355E8:    .word dword_80984C8
.func
.thumb_func
sub_80355EC:
    push {r4-r7,lr}
    ldr r4, off_8035628 // =word_803562C 
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    ldrh r1, [r7,#4]
    cmp r0, #0x80
    blt loc_80355FE
    ldr r1, [r7,#0x44]
loc_80355FE:
    ldrb r3, [r4]
    cmp r3, #0xff
    beq loc_803561A
    ldrh r3, [r4]
    cmp r3, r1
    beq loc_803560E
    add r4, #2
    b loc_80355FE
loc_803560E:
    mov r0, #0
    mov r1, #0x22 
    mov r2, #1
    bl sub_80136F0
    pop {r4-r7,pc}
loc_803561A:
    mov r0, #0
    mov r1, #0x22 
    mov r2, #0
    bl sub_80136F0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8035628:    .word word_803562C
word_803562C:    .hword 0x0
    .hword 0x1
    .word 0x2030003, 0x40303, 0x1050005, 0xFFFF0006, 0x4C0AB5F0
    .word 0x6BFF4657, 0x42008820, 0x88B9D00C, 0xD0014288, 0xE7F73404
    .word 0x1C008860, 0xFD84F7F9, 0x4808D002, 0xFE76F7CC, 0xBDF0
    .word 0x8035670, 0x48D0002, 0x4900402, 0x4910502, 0x4920702
    .word 0x0
    .word off_8035688
off_8035688:    .word dword_80525C0
    .word dword_80525DC
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
.endfunc // sub_80355EC

.func
.thumb_func
sub_8035694:
    push {r4-r7,lr}
    add r5, r0, #0
    ldr r7, off_80356E8 // =unk_8034460 
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrh r4, [r4,#4]
loc_80356A0:
    ldr r0, [r7]
    cmp r0, #0
    blt loc_80356E0
    cmp r0, r4
    bne loc_80356DC
    ldr r0, [r7,#0xc]
    ldr r1, [r5]
    ldr r2, [r7,#0x10]
    ldr r3, [r7,#0x14]
    cmp r2, r3
    beq loc_80356CC
    cmp r1, r2
    blt loc_80356DC
    cmp r1, r3
    bgt loc_80356DC
    ldr r1, [r5,#4]
    ldr r2, [r7,#0x18]
    ldr r3, [r7,#0x1c]
    cmp r1, r2
    blt loc_80356DC
    cmp r1, r3
    bgt loc_80356DC
loc_80356CC:
    ldr r1, [r5,#8]
    ldr r2, [r7,#4]
    ldr r3, [r7,#8]
    cmp r1, r2
    blt loc_80356DC
    cmp r1, r3
    bgt loc_80356DC
    pop {r4-r7,pc}
loc_80356DC:
    add r7, #0x20 
    b loc_80356A0
loc_80356E0:
    add r0, r5, #0
    bl loc_80318B0
    pop {r4-r7,pc}
off_80356E8:    .word unk_8034460
.endfunc // sub_8035694

.func
.thumb_func
sub_80356EC:
    push {r4-r7,lr}
    // memBlock
    ldr r0, off_8035784 // =dword_2000DC0 
    // numWords
    ldr r1, off_8035788 // =0x100 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r4-r7,pc}
.endfunc // sub_80356EC

.func
.thumb_func
sub_80356F8:
    push {r4-r7,lr}
    ldr r5, off_8035784 // =dword_2000DC0 
    mov r4, #0
loc_80356FE:
    ldr r3, [r5]
    tst r3, r3
    bne loc_803570A
    str r0, [r5,#4]
    str r1, [r5]
    b locret_8035712
loc_803570A:
    add r5, #8
    add r4, #1
    cmp r4, #0x20 
    blt loc_80356FE
locret_8035712:
    pop {r4-r7,pc}
.endfunc // sub_80356F8

    push {r4-r7,lr}
    ldr r5, off_8035784 // =dword_2000DC0 
    mov r4, #0
loc_803571A:
    ldr r3, [r5]
    tst r3, r3
    beq loc_803572E
    ldrb r1, [r5,#6]
    cmp r0, r1
    bne loc_803572E
    mov r0, #0
    str r0, [r5,#4]
    str r0, [r5]
    b locret_8035736
loc_803572E:
    add r5, #8
    add r4, #1
    cmp r4, #0x20 
    blt loc_803571A
locret_8035736:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8035738:
    push {r4-r7,lr}
    ldr r5, off_8035784 // =dword_2000DC0 
    mov r4, #0
loc_803573E:
    ldr r3, [r5,#4]
    tst r3, r3
    beq loc_803574C
    ldr r3, [r5]
    sub r3, #1
    blt locret_8035754
    str r3, [r5]
loc_803574C:
    add r5, #8
    add r4, #1
    cmp r4, #0x20 
    blt loc_803573E
locret_8035754:
    pop {r4-r7,pc}
.endfunc // sub_8035738

.func
.thumb_func
sub_8035756:
    push {r4-r7,lr}
    ldr r5, off_8035784 // =dword_2000DC0 
    mov r4, #0
loc_803575C:
    ldr r3, [r5,#4]
    tst r3, r3
    beq loc_8035772
    ldr r3, [r5]
    tst r3, r3
    bne loc_8035772
    ldr r0, [r5,#4]
    mov r1, #0
    str r1, [r5,#4]
    str r1, [r5]
    b loc_803577E
loc_8035772:
    str r3, [r5]
    add r5, #8
    add r4, #1
    cmp r4, #0x20 
    blt loc_803575C
    mov r0, #0
loc_803577E:
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8035784:    .word dword_2000DC0
off_8035788:    .word 0x100
.endfunc // sub_8035756

.func
.thumb_func
sub_803578C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [r7]
    mov r1, #4
    strb r1, [r0]
    ldr r0, [r7,#0x3c]
    mov r1, #0
    strb r1, [r0,#4]
    mov r1, #0
    strb r1, [r0,#5]
    mov r1, #0
    strb r1, [r0]
    mov r1, #0x65 
    strb r1, [r0,#6]
    mov r1, #0x62 
    strb r1, [r0,#7]
    pop {r4-r7,pc}
.endfunc // sub_803578C

    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r3, [r3,#0xe]
    tst r3, r3
    beq loc_80357E8
    ldr r7, off_80357EC // =byte_80357F0 
loc_80357BC:
    ldrb r0, [r7]
    tst r0, r0
    beq loc_80357CA
    cmp r0, r3
    beq loc_80357E8
    add r7, #1
    b loc_80357BC
loc_80357CA:
    cmp r3, #0x30 
    blt loc_80357E4
    cmp r3, #0x33 
    bgt loc_80357E4
    add r0, r3, #0
    bl sub_809CA40
    bne loc_80357E8
    mov r0, #0x2c 
    bl sub_803CE28
    tst r0, r0
    beq loc_80357E8
loc_80357E4:
    mov r0, #1
    pop {r4-r7,pc}
loc_80357E8:
    mov r0, #0
    pop {r4-r7,pc}
off_80357EC:    .word byte_80357F0
byte_80357F0:    .byte 0x3C
    .byte 0x3D, 0x3E, 0x3F
    .word 0x13121110, 0x17161514, 0x1B1A1918, 0x1F1E1D1C, 0x0
off_8035808:    .word loc_8035920+1
    .word sub_8035924+1
    .word sub_8035932+1
    .word sub_8035962+1
    .word sub_8035992+1
    .word sub_80359BE+1
    .word sub_80359EE+1
    .word sub_8035A1A+1
    .word sub_8035A74+1
    .word sub_8035AAA+1
    .word sub_803793A+1
    .word sub_803795C+1
    .word sub_8035AFA+1
    .word sub_8035B44+1
    .word sub_8035B8E+1
    .word sub_8035BB2+1
    .word sub_803797E+1
    .word sub_80379A0+1
    .word sub_8035BD6+1
    .word sub_8035BFE+1
    .word sub_8035C26+1
    .word sub_8035C4A+1
    .word sub_8035C6E+1
    .word sub_8035CA0+1
    .word sub_8035CD6+1
    .word sub_8035CF8+1
    .word sub_8035D1A+1
    .word sub_8035D34+1
    .word sub_8035D4E+1
    .word sub_8035D6A+1
    .word sub_8035D98+1
    .word sub_8035DB4+1
    .word sub_8035DD6+1
    .word sub_8035DF8+1
    .word sub_8035E16+1
    .word sub_8035E34+1
    .word sub_8035E54+1
    .word loc_8035E74+1
    .word 0x8035E8F, 0x8035EAB, 0x8035EC3, 0x8035EDB, 0x8035EF3
    .word 0x8035F0F, 0x8035F2B, 0x8035F3F, 0x8035F53, 0x8035F6B
    .word 0x80380B5, 0x80380C9, 0x80380EB, 0x803810F, 0x8038133
    .word 0x803813F, 0x8035F99, 0x0
    .word sub_80381FA+1
    .word sub_803821E+1
    .word sub_8035FBA+1
    .word sub_803827A+1
    .word sub_803828E+1
    .word sub_803829A+1
    .word sub_80382AE+1
    .byte 0, 0, 0, 0
    .word sub_8035FDE+1
    .word sub_80382BA+1
    .word sub_8038322+1
    .word sub_8038346+1
    .word sub_8038484+1
    .word sub_80384A8+1
loc_8035920:
    mov r0, #0
    mov pc, lr
.func
.thumb_func
sub_8035924:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_8035924

.func
.thumb_func
sub_8035932:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#6]
    mov r6, #1
    bl sub_8036094
    add r1, r4, #0
    mov r6, #2
    bl sub_8036094
    cmp r0, r1
    blt loc_803595C
    cmp r0, r4
    bgt loc_803595C
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_803595C:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035932

.func
.thumb_func
sub_8035962:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8035972
    ldrh r4, [r5,r4]
    b loc_8035978
loc_8035972:
    mov r6, #2
    bl sub_80360A8
loc_8035978:
    add r0, r4, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_803598C
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_803598C:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_8035962

.func
.thumb_func
sub_8035992:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r1, r4, #0
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    add r2, r1, #0
    bl loc_802F200 // (int a3, int a2) ->
    beq loc_80359B8
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_80359B8:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_8035992

.func
.thumb_func
sub_80359BE:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_80359CE
    ldrh r4, [r5,r4]
    b loc_80359D4
loc_80359CE:
    mov r6, #2
    bl sub_80360A8
loc_80359D4:
    add r0, r4, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne loc_80359E8
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_80359E8:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_80359BE

.func
.thumb_func
sub_80359EE:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r1, r4, #0
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    add r2, r1, #0
    bl loc_802F200 // (int a3, int a2) ->
    bne loc_8035A14
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035A14:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_80359EE

.func
.thumb_func
sub_8035A1A:
    push {lr}
    mov r6, #2
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #6
    bl sub_80360C8
    add r1, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_8035A4A
    cmp r4, #2
    beq loc_8035A5A
    mov r6, #0xa
    bl sub_8036094
    ldrb r0, [r0]
    cmp r0, r4
    beq loc_8035A6E
    mov r4, #0xb
    b loc_8035A68
loc_8035A4A:
    mov r6, #0xa
    bl sub_80360A8
    ldrh r0, [r0]
    cmp r0, r4
    beq loc_8035A6E
    mov r4, #0xc
    b loc_8035A68
loc_8035A5A:
    mov r6, #0xa
    bl sub_80360C8
    ldr r0, [r0]
    cmp r0, r4
    beq loc_8035A6E
    mov r4, #0xe
loc_8035A68:
    add r7, r7, r4
    mov r0, #1
    pop {pc}
loc_8035A6E:
    add r7, r1, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_8035A1A

.func
.thumb_func
sub_8035A74:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    bl sub_803CE28
    mov r6, #2
    bl sub_8036094
    add r1, r4, #0
    mov r6, #3
    bl sub_8036094
    cmp r0, r1
    blt loc_8035AA4
    cmp r0, r4
    bgt loc_8035AA4
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035AA4:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_8035A74

.func
.thumb_func
sub_8035AAA:
    push {lr}
    mov r6, #3
    bl sub_8036094
    cmp r4, #0xff
    bne loc_8035AC4
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    bl sub_8021BD8
    b loc_8035AD2
loc_8035AC4:
    add r1, r4, #0
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    bl sub_8021BC0
loc_8035AD2:
    mov r6, #4
    bl sub_8036094
    add r1, r4, #0
    mov r6, #5
    bl sub_8036094
    cmp r0, r1
    blt loc_8035AF4
    cmp r0, r4
    bgt loc_8035AF4
    mov r6, #6
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035AF4:
    add r7, #0xa
    mov r0, #1
    pop {pc}
.endfunc // sub_8035AAA

.func
.thumb_func
sub_8035AFA:
    push {lr}
    mov r6, #2
    bl sub_803609C
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldr r0, [r3,#0x1c]
    ldr r1, [r3,#0x20]
    ldr r2, [r3,#0x24]
    lsl r4, r4, #0x10
    add r2, r2, r4
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, sp
    bl sub_8031A7A
    add sp, sp, #0xc
    tst r0, r0
    bne loc_8035B28
    add r0, r1, #0
loc_8035B28:
    mov r6, #1
    bl sub_8036094
    cmp r0, r4
    bne loc_8035B3E
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035B3E:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035AFA

.func
.thumb_func
sub_8035B44:
    push {lr}
    mov r6, #2
    bl sub_803609C
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldr r0, [r3,#0x1c]
    ldr r1, [r3,#0x20]
    ldr r2, [r3,#0x24]
    lsl r4, r4, #0x10
    add r2, r2, r4
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, sp
    bl sub_8031A7A
    add sp, sp, #0xc
    tst r0, r0
    bne loc_8035B72
    add r0, r1, #0
loc_8035B72:
    mov r6, #1
    bl sub_8036094
    cmp r0, r4
    beq loc_8035B88
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035B88:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035B44

.func
.thumb_func
sub_8035B8E:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#0xe]
    mov r6, #1
    bl sub_8036094
    cmp r0, r4
    bne loc_8035BAC
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035BAC:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_8035B8E

.func
.thumb_func
sub_8035BB2:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#0xe]
    mov r6, #1
    bl sub_8036094
    cmp r0, r4
    beq loc_8035BD0
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035BD0:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_8035BB2

.func
.thumb_func
sub_8035BD6:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x24]
    asr r0, r0, #0x10
    mov r6, #1
    bl sub_80360B6
    cmp r0, r4
    bne loc_8035BF8
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035BF8:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035BD6

.func
.thumb_func
sub_8035BFE:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldr r0, [r0,#0x24]
    asr r0, r0, #0x10
    mov r6, #1
    bl sub_80360B6
    cmp r0, r4
    beq loc_8035C20
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035C20:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035BFE

.func
.thumb_func
sub_8035C26:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x44]
    mov r6, #1
    bl sub_80360A8
    cmp r0, r4
    bne loc_8035C44
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035C44:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035C26

.func
.thumb_func
sub_8035C4A:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x44]
    mov r6, #1
    bl sub_80360A8
    cmp r0, r4
    beq loc_8035C68
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035C68:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8035C4A

.func
.thumb_func
sub_8035C6E:
    push {lr}
    mov r6, #1
    bl sub_8036094
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrh r0, [r1,#4]
    ldrh r1, [r1,#0xc]
    cmp r4, #1
    beq loc_8035C88
    cmp r0, r1
    bne loc_8035C8E
    b loc_8035C9A
loc_8035C88:
    cmp r0, r1
    beq loc_8035C8E
    b loc_8035C9A
loc_8035C8E:
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035C9A:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_8035C6E

.func
.thumb_func
sub_8035CA0:
    push {lr}
    mov r0, #0
    mov r1, #0x4c 
    bl sub_8013704
    cmp r0, #1
    beq loc_8035CBE
    cmp r0, #2
    beq loc_8035CCA
    mov r6, #1
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035CBE:
    mov r6, #5
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035CCA:
    mov r6, #9
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_8035CA0

.func
.thumb_func
sub_8035CD6:
    push {lr}
    bl sub_800B734
    mov r6, #1
    bl sub_8036094
    cmp r0, r4
    bne loc_8035CF2
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035CF2:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_8035CD6

.func
.thumb_func
sub_8035CF8:
    push {lr}
    bl sub_800B734
    mov r6, #1
    bl sub_8036094
    cmp r0, r4
    beq loc_8035D14
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8035D14:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_8035CF8

.func
.thumb_func
sub_8035D1A:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    bl engine_isScreeneffectAnimating
    beq loc_8035D2E
    add r7, #5
    mov r0, #1
    pop {pc}
loc_8035D2E:
    add r7, r4, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_8035D1A

.func
.thumb_func
sub_8035D34:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    bl sub_80024C0
    bne loc_8035D48
    add r7, #5
    mov r0, #1
    pop {pc}
loc_8035D48:
    add r7, r4, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_8035D34

.func
.thumb_func
sub_8035D4E:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    mov r0, #1
    bl sub_811EBE0
    bne loc_8035D64
    add r7, #5
    mov r0, #1
    pop {pc}
loc_8035D64:
    add r7, r4, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_8035D4E

.func
.thumb_func
sub_8035D6A:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8035D7E
    ldrb r0, [r5,r4]
    add r4, #1
    ldrb r1, [r5,r4]
    b loc_8035D8E
loc_8035D7E:
    mov r6, #2
    bl sub_8036094
    add r0, r4, #0
    mov r6, #3
    bl sub_8036094
    add r1, r4, #0
loc_8035D8E:
    bl engine_setScreeneffect
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8035D6A

.func
.thumb_func
sub_8035D98:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x3c]
    mov r6, #1
    bl sub_8036094
    strb r4, [r1,#0x16]
    mov r6, #2
    bl sub_8036094
    strb r4, [r1,#0x17]
    add r7, #3
    mov r0, #1
    pop {pc}
.endfunc // sub_8035D98

.func
.thumb_func
sub_8035DB4:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8035DC4
    ldrh r4, [r5,r4]
    b loc_8035DCA
loc_8035DC4:
    mov r6, #2
    bl sub_80360A8
    // a1
loc_8035DCA:
    add r0, r4, #0
    bl sub_802F114 // (int a1) -> void
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8035DB4

.func
.thumb_func
sub_8035DD6:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8035DE6
    ldrh r4, [r5,r4]
    b loc_8035DEC
loc_8035DE6:
    mov r6, #2
    bl sub_80360A8
loc_8035DEC:
    add r0, r4, #0
    bl loc_802F130 // (int a1, int a2) -> void
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8035DD6

.func
.thumb_func
sub_8035DF8:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r1, r4, #0
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    add r2, r1, #0
    bl loc_802F182 // (int a1, int a2) -> void
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8035DF8

.func
.thumb_func
sub_8035E16:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r1, r4, #0
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    add r2, r1, #0
    bl loc_802F1AC // (int a3, int a2) -> void
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8035E16

.func
.thumb_func
sub_8035E34:
    push {lr}
    mov r6, #1
    bl sub_80360C8
loc_8035E3C:
    mov r1, #0
    ldrsh r0, [r4,r1]
    cmp r0, #0
    blt loc_8035E4E
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    add r4, #2
    b loc_8035E3C
loc_8035E4E:
    add r7, #5
    mov r0, #1
    pop {pc}
.endfunc // sub_8035E34

.func
.thumb_func
sub_8035E54:
    push {lr}
    mov r6, #1
    bl sub_80360C8
loc_8035E5C:
    mov r1, #0
    ldrsh r0, [r4,r1]
    cmp r0, #0
    blt loc_8035E6E
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl loc_802F130 // (int a1, int a2) -> void
    add r4, #2
    b loc_8035E5C
loc_8035E6E:
    add r7, #5
    mov r0, #1
    pop {pc}
.endfunc // sub_8035E54

loc_8035E74:
    push {lr}
    mov r6, #5
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #1
    bl sub_80360C8
    mov lr, pc
    bx r4
    add r7, #9
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #5
    bl sub_80360C8
    add r1, r4, #0
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    bl sub_8036E90
    add r7, #9
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #5
    bl sub_8036094
    strb r4, [r0]
    add r7, #6
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #5
    bl sub_80360A8
    strh r4, [r0]
    add r7, #7
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #5
    bl sub_80360C8
    str r4, [r0]
    add r7, #9
    mov r0, #1
    pop {pc}
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    mov r6, #1
    bl sub_8036094
    add r0, r0, r4
    mov r6, #2
    bl sub_8036094
    strb r4, [r0]
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    mov r6, #1
    bl sub_8036094
    add r0, r0, r4
    mov r6, #2
    bl sub_8036094
    strb r4, [r0]
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    bl sub_8001B1C
    add r7, #5
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    bl sub_8002354
    add r7, #5
    mov r0, #1
    pop {pc}
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#4]
    ldrb r1, [r1,#5]
    bl sub_8030A30
    bl sub_8035194
    add r7, #1
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    cmp r0, #0xff
    beq loc_8035F7A
    b loc_8035F8E
loc_8035F7A:
    mov r4, #0
loc_8035F7C:
    add r0, r4, #0
    bl sub_8001B6C
    add r4, #1
    cmp r4, #0x12
    blt loc_8035F7C
    add r7, #2
    mov r0, #1
    pop {pc}
loc_8035F8E:
    bl sub_8001B6C
    add r7, #2
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8035FA8
    ldrb r0, [r5,r4]
    b loc_8035FB0
loc_8035FA8:
    mov r6, #2
    bl sub_8036094
    add r0, r4, #0
loc_8035FB0:
    bl sub_8033FC0
    add r7, #3
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_8035FBA:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_8035FD4
    mov r6, #2
    bl sub_80360C8
    str r4, [r5,#0x10]
    add r7, #6
    mov r0, #1
    pop {pc}
loc_8035FD4:
    mov r0, #0
    str r0, [r5,#0x10]
    add r7, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_8035FBA

.func
.thumb_func
sub_8035FDE:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_8035FFC
    mov r6, #2
    bl sub_80360C8
    add r0, r4, #0
    bl loc_8003570
    add r7, #6
    mov r0, #1
    pop {pc}
loc_8035FFC:
    mov r6, #2
    bl sub_8036094
    add r0, r4, #0
    bl sub_80035A2
    add r7, #3
    mov r0, #1
    pop {pc}
.endfunc // sub_8035FDE

.func
.thumb_func
sub_803600E:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    add r4, r0, #0
    add r6, r1, #0
    ldr r5, off_8036090 // =unk_2011E60 
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #0x14
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    str r4, [r5,#0x8] // (dword_2011E68 - 0x2011e60)
    str r6, [r5,#0xc] // (dword_2011E6C - 0x2011e60)
    ldr r6, off_803608C // =off_8035808 
    mov r12, r6
    add r7, r4, #0
loc_803602C:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_803602C
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
.endfunc // sub_803600E

.func
.thumb_func
sub_8036040:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    ldr r5, off_8036090 // =unk_2011E60 
    ldr r0, [r5,#0xc] // (dword_2011E6C - 0x2011e60)
    ldr r6, off_803608C // =off_8035808 
    mov r12, r6
    add r7, r0, #0
loc_8036050:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_8036050
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
.endfunc // sub_8036040

loc_8036064:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    ldr r5, off_8036090 // =unk_2011E60 
    ldr r0, [r5,#0x10] // (dword_2011E70 - 0x2011e60)
    tst r0, r0
    beq loc_8036086
    ldr r6, off_803608C // =off_8035808 
    mov r12, r6
    add r7, r0, #0
loc_8036078:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_8036078
loc_8036086:
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
off_803608C:    .word off_8035808
off_8036090:    .word unk_2011E60
.func
.thumb_func
sub_8036094:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7]
    pop {r7,pc}
.endfunc // sub_8036094

.func
.thumb_func
sub_803609C:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7]
    lsl r4, r4, #0x18
    asr r4, r4, #0x18
    pop {r7,pc}
.endfunc // sub_803609C

.func
.thumb_func
sub_80360A8:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7,#1]
    ldrb r6, [r7]
    lsl r4, r4, #8
    orr r4, r6
    pop {r7,pc}
.endfunc // sub_80360A8

.func
.thumb_func
sub_80360B6:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7,#1]
    ldrb r6, [r7]
    lsl r4, r4, #8
    orr r4, r6
    lsl r4, r4, #0x10
    asr r4, r4, #0x10
    pop {r7,pc}
.endfunc // sub_80360B6

.func
.thumb_func
sub_80360C8:
    push {r7,lr}
    add r7, r7, r6
    ldrb r4, [r7,#3]
    ldrb r6, [r7,#2]
    lsl r4, r4, #8
    orr r4, r6
    ldrb r6, [r7,#1]
    lsl r4, r4, #8
    orr r4, r6
    ldrb r6, [r7]
    lsl r4, r4, #8
    orr r4, r6
    pop {r7,pc}
    .balign 4, 0x00
off_80360E4:    .word dword_80362A4
    .word dword_80362EC
    .word dword_80362A4
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_8036334
    .word dword_8036394
    .word dword_8036334
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_80363F4
    .word dword_8036454
    .word dword_80364B4
    .word dword_8036514
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_8036574
    .word dword_80365FC
    .word dword_8036684
    .word dword_8036574
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_803670C
    .word dword_80367AC
    .word dword_803670C
    .word dword_803684C
    .word dword_80368EC
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_803698C
    .word dword_8036A34
    .word dword_8036ADC
    .word dword_8036B84
    .word dword_8036C2C
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word dword_8036CD4
    .word dword_8036D8C
    .word dword_8036CD4
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_80362A4:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF90, 0x8071F10, 0xFFFFFF88, 0x806C870
    .word 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80
    .word 0x80665E4, 0xFFFFFFFF, 0xFFFFFFFF
dword_80362EC:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF90, 0x8071F10, 0xFFFFFF88, 0x806C870
    .word 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80
    .word 0x80665E4, 0xFFFFFFFF, 0xFFFFFFFF
dword_8036334:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF90, 0x8071F10
    .word 0xFFFFFF91, 0x8075900, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C
    .word 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4
    .word 0xFFFFFF81, 0x8067E28, 0xFFFFFFFF, 0xFFFFFFFF
dword_8036394:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E29, 0xFFFFFF90, 0x8071F10
    .word 0xFFFFFF91, 0x8075900, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C
    .word 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4
    .word 0xFFFFFF81, 0x8067E28, 0xFFFFFFFF, 0xFFFFFFFF
dword_80363F4:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF90, 0x8071F10
    .word 0xFFFFFF91, 0x8075900, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C
    .word 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4
    .word 0xFFFFFF81, 0x8067E28, 0xFFFFFFFF, 0xFFFFFFFF
dword_8036454:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF90, 0x8071F13
    .word 0xFFFFFF91, 0x8075903, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C
    .word 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4
    .word 0xFFFFFF81, 0x8067E28, 0xFFFFFFFF, 0xFFFFFFFF
dword_80364B4:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA1C, 0xFFFFFF02
    .word 0x8052F82, 0xFFFFFF03, 0x8059E2E, 0xFFFFFF90, 0x8071F10
    .word 0xFFFFFF91, 0x8075900, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C
    .word 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4
    .word 0xFFFFFF81, 0x8067E28, 0xFFFFFFFF, 0xFFFFFFFF
dword_8036514:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF90, 0x8071F10
    .word 0xFFFFFF91, 0x8075900, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C
    .word 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4
    .word 0xFFFFFF81, 0x8067E28, 0xFFFFFFFF, 0xFFFFFFFF
dword_8036574:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF04, 0x805E238
    .word 0xFFFFFF90, 0x8071F10, 0xFFFFFF91, 0x8075900, 0xFFFFFF92
    .word 0x8078144, 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268
    .word 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D
    .word 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28
    .word 0xFFFFFF82, 0x8069358, 0xFFFFFFFF, 0xFFFFFFFF
dword_80365FC:    .word 0xFFFFFF00, 0x804D100, 0xFFFFFF01, 0x804EA1C, 0xFFFFFF02
    .word 0x8052F82, 0xFFFFFF03, 0x8059E2E, 0xFFFFFF04, 0x805E242
    .word 0xFFFFFF90, 0x8071F10, 0xFFFFFF91, 0x8075900, 0xFFFFFF92
    .word 0x8078144, 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268
    .word 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D
    .word 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28
    .word 0xFFFFFF82, 0x8069358, 0xFFFFFFFF, 0xFFFFFFFF
dword_8036684:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF04, 0x805E23D
    .word 0xFFFFFF90, 0x8071F10, 0xFFFFFF91, 0x8075900, 0xFFFFFF92
    .word 0x8078144, 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268
    .word 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D
    .word 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28
    .word 0xFFFFFF82, 0x8069358, 0xFFFFFFFF, 0xFFFFFFFF
dword_803670C:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF04, 0x805E238
    .word 0xFFFFFF05, 0x80606EC, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF94, 0x807AE4C
    .word 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268, 0xFFFFFF88
    .word 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C
    .word 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28, 0xFFFFFF82
    .word 0x8069358, 0xFFFFFF83, 0x806A2C0, 0xFFFFFFFF, 0xFFFFFFFF
dword_80367AC:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF04, 0x805E23D
    .word 0xFFFFFF05, 0x80606F0, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF94, 0x807AE4C
    .word 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268, 0xFFFFFF88
    .word 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C
    .word 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28, 0xFFFFFF82
    .word 0x8069358, 0xFFFFFF83, 0x806A2C0, 0xFFFFFFFF, 0xFFFFFFFF
dword_803684C:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA21, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF04, 0x805E238
    .word 0xFFFFFF05, 0x80606EC, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF94, 0x807AE4C
    .word 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268, 0xFFFFFF88
    .word 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C
    .word 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28, 0xFFFFFF82
    .word 0x8069358, 0xFFFFFF83, 0x806A2C0, 0xFFFFFFFF, 0xFFFFFFFF
dword_80368EC:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF04, 0x805E23D
    .word 0xFFFFFF05, 0x80606F8, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF94, 0x807AE4C
    .word 0xFFFFFF95, 0x807D370, 0xFFFFFF96, 0x807F268, 0xFFFFFF88
    .word 0x806C870, 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C
    .word 0xFFFFFF80, 0x80665E4, 0xFFFFFF81, 0x8067E28, 0xFFFFFF82
    .word 0x8069358, 0xFFFFFF83, 0x806A2C0, 0xFFFFFFFF, 0xFFFFFFFF
dword_803698C:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF04, 0x805E238
    .word 0xFFFFFF05, 0x80606EC, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF93, 0x807956C
    .word 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95, 0x807D370, 0xFFFFFF96
    .word 0x807F268, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0
    .word 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81
    .word 0x8067E28, 0xFFFFFF82, 0x8069358, 0xFFFFFF83, 0x806A2C0
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_8036A34:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA0D, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF04, 0x805E23D
    .word 0xFFFFFF05, 0x80606F0, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF93, 0x807956C
    .word 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95, 0x807D370, 0xFFFFFF96
    .word 0x807F268, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0
    .word 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81
    .word 0x8067E28, 0xFFFFFF82, 0x8069358, 0xFFFFFF83, 0x806A2C0
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_8036ADC:    .word 0xFFFFFF00, 0x804D100, 0xFFFFFF01, 0x804EA1C, 0xFFFFFF02
    .word 0x8052F82, 0xFFFFFF03, 0x8059E2E, 0xFFFFFF04, 0x805E242
    .word 0xFFFFFF05, 0x80606F4, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF93, 0x807956C
    .word 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95, 0x807D370, 0xFFFFFF96
    .word 0x807F268, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0
    .word 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81
    .word 0x8067E28, 0xFFFFFF82, 0x8069358, 0xFFFFFF83, 0x806A2C0
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_8036B84:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF04, 0x805E23D
    .word 0xFFFFFF05, 0x80606F0, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF93, 0x807956C
    .word 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95, 0x807D370, 0xFFFFFF96
    .word 0x807F268, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0
    .word 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81
    .word 0x8067E28, 0xFFFFFF82, 0x8069358, 0xFFFFFF83, 0x806A2C0
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_8036C2C:    .word 0xFFFFFF00, 0x804D100, 0xFFFFFF01, 0x804EA1C, 0xFFFFFF02
    .word 0x8052F82, 0xFFFFFF03, 0x8059E2E, 0xFFFFFF04, 0x805E242
    .word 0xFFFFFF05, 0x80606F4, 0xFFFFFF90, 0x8071F10, 0xFFFFFF91
    .word 0x8075900, 0xFFFFFF92, 0x8078144, 0xFFFFFF93, 0x807956E
    .word 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95, 0x807D370, 0xFFFFFF96
    .word 0x807F268, 0xFFFFFF88, 0x806C870, 0xFFFFFF8C, 0x806E1B0
    .word 0xFFFFFF8D, 0x807042C, 0xFFFFFF80, 0x80665E4, 0xFFFFFF81
    .word 0x8067E28, 0xFFFFFF82, 0x8069358, 0xFFFFFF83, 0x806A2C0
    .word 0xFFFFFFFF, 0xFFFFFFFF
dword_8036CD4:    .word 0xFFFFFF00, 0x804D0FE, 0xFFFFFF01, 0x804EA12, 0xFFFFFF02
    .word 0x8052F77, 0xFFFFFF03, 0x8059E29, 0xFFFFFF04, 0x805E23D
    .word 0xFFFFFF05, 0x80606F0, 0xFFFFFF06, 0x8063056, 0xFFFFFF90
    .word 0x8071F10, 0xFFFFFF91, 0x8075900, 0xFFFFFF92, 0x8078144
    .word 0xFFFFFF93, 0x807956C, 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95
    .word 0x807D370, 0xFFFFFF96, 0x807F268, 0xFFFFFF88, 0x806C870
    .word 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80
    .word 0x80665E4, 0xFFFFFF81, 0x8067E28, 0xFFFFFF82, 0x8069358
    .word 0xFFFFFF83, 0x806A2C0, 0xFFFFFF85, 0x806AEA8, 0xFFFFFFFF
    .word 0xFFFFFFFF
dword_8036D8C:    .word 0xFFFFFF00, 0x804D0FC, 0xFFFFFF01, 0x804EA08, 0xFFFFFF02
    .word 0x8052F6C, 0xFFFFFF03, 0x8059E24, 0xFFFFFF04, 0x805E238
    .word 0xFFFFFF05, 0x80606EC, 0xFFFFFF06, 0x8063050, 0xFFFFFF90
    .word 0x8071F10, 0xFFFFFF91, 0x8075900, 0xFFFFFF92, 0x8078144
    .word 0xFFFFFF93, 0x807956C, 0xFFFFFF94, 0x807AE4C, 0xFFFFFF95
    .word 0x807D370, 0xFFFFFF96, 0x807F268, 0xFFFFFF88, 0x806C870
    .word 0xFFFFFF8C, 0x806E1B0, 0xFFFFFF8D, 0x807042C, 0xFFFFFF80
    .word 0x80665E4, 0xFFFFFF81, 0x8067E28, 0xFFFFFF82, 0x8069358
    .word 0xFFFFFF83, 0x806A2C0, 0xFFFFFF85, 0x806AEA8, 0xFFFFFFFF
    .word 0xFFFFFFFF
.endfunc // sub_80360C8

.func
.thumb_func
sub_8036E44:
    push {r4-r7,lr}
    ldr r7, off_8036E74 // =off_80360E4 
    mov r0, r10
    ldr r6, [r0,#0x3c]
    ldr r4, [r0,#0x40]
    ldrb r1, [r6,#4]
    ldrb r2, [r6,#5]
    ldrb r0, [r6,#7]
    lsl r0, r0, #2
    ldr r7, [r7,r0]
loc_8036E58:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq loc_8036E6E
    cmp r0, r1
    bne loc_8036E6A
    ldr r7, [r7,#4]
    ldrb r0, [r7,r2]
    strb r0, [r4,#4]
    b locret_8036E72
loc_8036E6A:
    add r7, #8
    b loc_8036E58
loc_8036E6E:
    mov r0, #0x63 
    strb r0, [r4,#4]
locret_8036E72:
    pop {r4-r7,pc}
off_8036E74:    .word off_80360E4
.endfunc // sub_8036E44

.func
.thumb_func
sub_8036E78:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#4]
    bl sound_bgmusic_play // (int a1) -> void
    pop {r4-r7,pc}
.endfunc // sub_8036E78

    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    strb r0, [r1,#4]
    pop {r4-r7,pc}
.func
.thumb_func
sub_8036E90:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x10]
    push {r0,r1}
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #0x90
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r0,r1}
    str r0, [r5,#0x1c]
    str r0, [r5,#0x40]
    str r1, [r5,#4]
    ldr r0, off_8036F20 // =dword_8037690 
    str r0, [r5,#0x20]
    str r0, [r5,#0x24]
    str r0, [r5,#0x28]
    ldr r0, off_8036EBC // =unk_202DA04 
    str r0, [r5,#0x30]
    ldr r0, off_8036EC0 // =off_8036EC4 
    str r0, [r5,#0x34]
    pop {r5,pc}
    .balign 4, 0x00
off_8036EBC:    .word unk_202DA04
off_8036EC0:    .word off_8036EC4
off_8036EC4:    .word LCDControl
    .word 0x0, 0x0, 0x0
.endfunc // sub_8036E90

.func
.thumb_func
sub_8036ED4:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x10]
    mov r0, #1
    str r0, [r1,#0x1c]
    ldr r0, off_8036F20 // =dword_8037690 
    str r0, [r1,#0x20]
    str r0, [r1,#0x24]
    str r0, [r1,#0x28]
    mov r0, #0
    str r0, [r1,#0x38]
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #0
    strh r0, [r1,#0x12]
    strh r0, [r1,#0x14]
    mov r0, #0x17
    mov r1, #0x31 
    bl sub_802F12C // (int a1, int a2) -> void
    pop {r4-r7,pc}
.endfunc // sub_8036ED4

.func
.thumb_func
sub_8036EFE:
    push {r4-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x10]
    mov r0, #1
    str r0, [r1,#0x1c]
    ldr r0, off_8036F20 // =dword_8037690 
    str r0, [r1,#0x20]
    str r0, [r1,#0x24]
    str r0, [r1,#0x28]
    mov r0, #0
    str r0, [r1,#0x38]
    mov r0, #0x17
    mov r1, #0x31 
    bl sub_802F12C // (int a1, int a2) -> void
    pop {r4-r7,pc}
    .byte 0, 0
off_8036F20:    .word dword_8037690
.endfunc // sub_8036EFE

.func
.thumb_func
sub_8036F24:
    mov r1, r10
    ldr r1, [r1,#0x10]
    ldr r0, [r1,#0x1c]
    cmp r0, #1
    bne locret_8036F34
    mov r0, #0
    str r0, [r1,#0x1c]
    str r0, [r1,#0x40]
locret_8036F34:
    mov pc, lr
.endfunc // sub_8036F24

.func
.thumb_func
sub_8036F36:
    mov r0, r10
    ldr r0, [r0,#0x10]
    ldr r0, [r0,#0x1c]
    tst r0, r0
    mov pc, lr
.endfunc // sub_8036F36

.func
.thumb_func
sub_8036F40:
    mov r0, r10
    ldr r0, [r0,#0x10]
    mov r2, #1
    ldr r0, [r0,#0x40]
    ldr r1, off_8036F54 // =unk_80991F4 
    cmp r0, r1
    beq loc_8036F50
    mov r2, #0
loc_8036F50:
    tst r2, r2
    mov pc, lr
off_8036F54:    .word unk_80991F4
.endfunc // sub_8036F40

.func
.thumb_func
sub_8036F58:
    mov r0, r10
    ldr r0, [r0,#0x10]
    mov r2, #1
    ldr r0, [r0,#0x40]
    ldr r1, off_8036F6C // =dword_80988E4 
    cmp r0, r1
    beq loc_8036F68
    mov r2, #0
loc_8036F68:
    tst r2, r2
    mov pc, lr
off_8036F6C:    .word dword_80988E4
.endfunc // sub_8036F58

.func
.thumb_func
sub_8036F70:
    mov r1, r10
    ldr r1, [r1,#0x10]
    mov r2, #1
    ldr r1, [r1,#0x40]
    cmp r1, r0
    beq loc_8036F7E
    mov r2, #0
loc_8036F7E:
    add r0, r2, #0
    tst r0, r0
    mov pc, lr
.endfunc // sub_8036F70

.func
.thumb_func
sub_8036F84:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_8036F96
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #4
    tst r0, r1
locret_8036F96:
    pop {r4-r7,pc}
.endfunc // sub_8036F84

.func
.thumb_func
sub_8036F98:
    push {lr}
    ldr r1, off_8036FD4 // =dword_2011BD0 
    str r0, [r1]
    mov r0, #0
    str r0, [r1,#0x4] // (dword_2011BD4 - 0x2011bd0)
    mov r0, #0
    bl sub_80301B2
    pop {pc}
.endfunc // sub_8036F98

.func
.thumb_func
sub_8036FAA:
    push {lr}
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r1, [r1,#0x18]
    add r1, #0x1c
    bl sub_80301B2
    pop {pc}
.endfunc // sub_8036FAA

loc_8036FBC:
    push {r4-r7,lr}
    ldr r5, off_8036FD4 // =dword_2011BD0 
    ldr r1, [r5]
    ldrb r2, [r1]
    ldr r0, off_8036FD8 // =off_8036FDC 
    add r0, r0, r2
    ldr r0, [r0]
    mov lr, pc
    bx r0
    str r1, [r5]
    tst r0, r0
    pop {r4-r7,pc}
off_8036FD4:    .word dword_2011BD0
off_8036FD8:    .word off_8036FDC
off_8036FDC:    .word sub_8037030+1
    .word sub_803705A+1
    .word sub_80370B4+1
    .word sub_80370B8+1
    .word sub_80370E4+1
    .word sub_8037104+1
    .word sub_8037196+1
    .word sub_8037260+1
    .word sub_80372A2+1
    .word sub_80372EC+1
    .word sub_8037332+1
    .word sub_8037352+1
    .word sub_803736A+1
    .word sub_8037380+1
    .word sub_8037396+1
    .word sub_80373B6+1
    .word sub_80373CC+1
    .word sub_80373E4+1
    .word sub_80373FC+1
    .word sub_803741C+1
    .word sub_8037432+1
.func
.thumb_func
sub_8037030:
    push {lr}
    mov r0, #1
    bl sub_803746E
    lsl r2, r0, #0xc
    mov r0, #3
    bl sub_803746E
    lsl r3, r0, #0xc
    mov r0, #5
    bl sub_803746E
    lsl r4, r0, #0xc
    mov r6, r10
    ldr r6, [r6,#0xc]
    str r2, [r6,#0x30]
    str r3, [r6,#0x34]
    str r4, [r6,#0x38]
    mov r0, #1
    add r1, #7
    pop {pc}
.endfunc // sub_8037030

.func
.thumb_func
sub_803705A:
    push {lr}
    ldrb r0, [r5,#6]
    cmp r0, #0
    bne loc_803706E
    mov r0, #1
    strb r0, [r5,#6]
    mov r0, #1
    bl sub_8037460
    strh r0, [r5,#4]
loc_803706E:
    mov r6, r10
    ldr r6, [r6,#0xc]
    mov r0, #3
    bl sub_803746E
    lsl r0, r0, #8
    ldr r3, [r6,#0x30]
    add r0, r0, r3
    str r0, [r6,#0x30]
    mov r0, #5
    bl sub_803746E
    lsl r0, r0, #8
    ldr r3, [r6,#0x34]
    add r0, r0, r3
    str r0, [r6,#0x34]
    mov r0, #7
    bl sub_803746E
    lsl r0, r0, #8
    ldr r3, [r6,#0x38]
    add r0, r0, r3
    str r0, [r6,#0x38]
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    cmp r0, #0
    bgt loc_80370B0
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #1
    add r1, #9
    pop {pc}
loc_80370B0:
    mov r0, #1
    pop {pc}
.endfunc // sub_803705A

.func
.thumb_func
sub_80370B4:
    mov r0, #0
    mov pc, lr
.endfunc // sub_80370B4

.func
.thumb_func
sub_80370B8:
    push {lr}
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne loc_80370CC
    mov r2, #1
    strb r2, [r5,#6]
    mov r0, #1
    bl sub_8037460
    strh r0, [r5,#4]
loc_80370CC:
    ldrh r2, [r5,#4]
    sub r2, #1
    strh r2, [r5,#4]
    cmp r2, #0
    bge loc_80370E0
    mov r2, #0
    strb r2, [r5,#6]
    mov r0, #1
    add r1, #3
    pop {pc}
loc_80370E0:
    mov r0, #1
    pop {pc}
.endfunc // sub_80370B8

.func
.thumb_func
sub_80370E4:
    push {lr}
    push {r1}
    mov r0, #2
    bl sub_803744C
    add r4, r0, #0
    mov r0, #1
    bl sub_803744C
    add r1, r4, #0
    bl sub_80302A8
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
.endfunc // sub_80370E4

.func
.thumb_func
sub_8037104:
    push {lr}
    mov r7, r10
    ldr r6, [r7,#0xc]
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r2, [r6,#0x30]
    ldr r3, [r7,#0x1c]
    sub r3, r3, r2
    bl sub_8037162
    add r3, r3, r2
    str r3, [r6,#0x30]
    ldr r2, [r6,#0x34]
    ldr r3, [r7,#0x20]
    sub r3, r3, r2
    bl sub_8037162
    add r3, r3, r2
    str r3, [r6,#0x34]
    ldr r2, [r6,#0x38]
    ldr r3, [r7,#0x24]
    sub r3, r3, r2
    bl sub_8037162
    add r3, r3, r2
    str r3, [r6,#0x38]
    ldr r0, [r6,#0x30]
    ldr r2, [r7,#0x1c]
    cmp r0, r2
    bne loc_8037152
    ldr r0, [r6,#0x34]
    ldr r2, [r7,#0x20]
    cmp r0, r2
    bne loc_8037152
    ldr r0, [r6,#0x38]
    ldr r2, [r7,#0x24]
    cmp r0, r2
    bne loc_8037152
    b loc_8037156
loc_8037152:
    mov r0, #1
    pop {pc}
loc_8037156:
    mov r2, #0
    strb r2, [r5,#6]
    strh r2, [r5,#4]
    mov r0, #1
    add r1, #1
    pop {pc}
.endfunc // sub_8037104

.func
.thumb_func
sub_8037162:
    mov r4, #0x10
    lsl r4, r4, #0x10
    cmp r3, #0
    bge loc_8037182
    neg r3, r3
    add r0, r3, #0
    lsr r3, r3, #4
    cmp r3, r4
    ble loc_8037176
    add r3, r4, #0
loc_8037176:
    lsr r4, r4, #9
    cmp r3, r4
    bge loc_803717E
    add r3, r0, #0
loc_803717E:
    neg r3, r3
    mov pc, lr
loc_8037182:
    add r0, r3, #0
    lsr r3, r3, #4
    cmp r3, r4
    ble loc_803718C
    add r3, r4, #0
loc_803718C:
    lsr r4, r4, #9
    cmp r3, r4
    bge locret_8037194
    add r3, r0, #0
locret_8037194:
    mov pc, lr
.endfunc // sub_8037162

.func
.thumb_func
sub_8037196:
    push {lr}
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne loc_80371E8
    push {r0-r3}
    mov r2, #1
    strb r2, [r5,#6]
    mov r0, #1
    bl sub_803746E
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    mov r0, #3
    bl sub_803746E
    lsl r0, r0, #0x10
    str r0, [r5,#0x18]
    mov r0, #5
    bl sub_803746E
    lsl r0, r0, #0x10
    str r0, [r5,#0x1c]
loc_80371C2:
    mov r0, #7
    bl sub_8037460
    add r1, r0, #0
    strh r1, [r5,#4]
    mov r0, #0x40 
    lsl r0, r0, #8
    svc 6
    str r0, [r5,#0x20]
    mov r0, #0x40 
    lsl r0, r0, #8
    sub r0, r0, r1
    strh r0, [r5,#4]
    bl sub_80301D0
    str r0, [r5,#8]
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    pop {r0-r3}
loc_80371E8:
    push {r0-r3}
    ldr r7, off_803725C // =dword_80065D0+16 
    ldrh r3, [r5,#4]
    ldr r4, [r5,#0x20]
    sub r4, r3, r4
    ble loc_8037242
    strh r4, [r5,#4]
    lsr r4, r4, #8
    mov r3, #0x40 
    sub r4, r3, r4
    lsl r4, r4, #1
    ldr r0, off_803725C // =dword_80065D0+16 
    ldrsh r4, [r0,r4]
    ldr r0, [r5,#0x14]
    ldr r1, [r5,#8]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r4
    push {r0}
    ldr r0, [r5,#0x18]
    ldr r1, [r5,#0xc]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r4
    push {r0}
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x10]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r4
    push {r0}
    pop {r2}
    ldr r3, [r5,#0x10]
    add r2, r2, r3
    pop {r1}
    ldr r3, [r5,#0xc]
    add r1, r1, r3
    pop {r0}
    ldr r3, [r5,#8]
    add r0, r0, r3
    bl sub_80301DC
    pop {r0-r3}
    mov r0, #1
    pop {pc}
loc_8037242:
    ldr r0, [r5,#0x14]
    ldr r1, [r5,#0x18]
    ldr r2, [r5,#0x1c]
    bl sub_80301DC
    pop {r0-r3}
    mov r2, #0
    strb r2, [r5,#6]
    strh r2, [r5,#4]
    mov r0, #1
    add r1, #9
    pop {pc}
    .balign 4, 0x00
off_803725C:    .word dword_80065D0+0x10
.endfunc // sub_8037196

.func
.thumb_func
sub_8037260:
    push {lr}
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne loc_80372A0
    push {r0-r3}
    mov r2, #1
    strb r2, [r5,#6]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    mov r0, #1
    bl sub_803746E
    lsl r0, r0, #0x10
    ldr r3, [r7,#0x1c]
    add r0, r0, r3
    str r0, [r5,#0x14]
    mov r0, #3
    bl sub_803746E
    lsl r0, r0, #0x10
    ldr r3, [r7,#0x20]
    add r0, r0, r3
    str r0, [r5,#0x18]
    mov r0, #5
    bl sub_803746E
    lsl r0, r0, #0x10
    ldr r3, [r7,#0x24]
    add r0, r0, r3
    str r0, [r5,#0x1c]
    b loc_80371C2
loc_80372A0:
    b loc_80371E8
.endfunc // sub_8037260

.func
.thumb_func
sub_80372A2:
    push {lr}
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne loc_80372CC
    push {r0-r3}
    mov r2, #1
    strb r2, [r5,#6]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    push {r0-r3}
    bl sub_81421E0
    bl sub_8142868
    str r0, [r5,#0x14]
    str r1, [r5,#0x18]
    ldr r2, [r7,#0x24]
    str r2, [r5,#0x1c]
    pop {r0-r3}
    b loc_80371C2
loc_80372CC:
    push {r0-r3}
    ldr r0, [r5,#0x14]
    ldr r1, [r5,#8]
    cmp r0, r1
    bne loc_80372E8
    ldr r0, [r5,#0x18]
    ldr r1, [r5,#0xc]
    cmp r0, r1
    bne loc_80372E8
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    bne loc_80372E8
    b loc_8037242
loc_80372E8:
    pop {r0-r3}
    b loc_80371E8
.endfunc // sub_80372A2

.func
.thumb_func
sub_80372EC:
    push {lr}
    ldrb r2, [r5,#6]
    cmp r2, #0
    bne loc_8037312
    push {r0-r3}
    mov r2, #1
    strb r2, [r5,#6]
    push {r0-r3}
    mov r7, r10
    ldr r7, [r7,#0x10]
    ldr r7, [r7,#4]
    ldr r0, [r7,#0xc]
    ldr r1, [r7,#0x10]
    ldr r2, [r7,#0x14]
    str r0, [r5,#0x14]
    str r1, [r5,#0x18]
    str r2, [r5,#0x1c]
    pop {r0-r3}
    b loc_80371C2
loc_8037312:
    push {r0-r3}
    ldr r0, [r5,#0x14]
    ldr r1, [r5,#8]
    cmp r0, r1
    bne loc_803732E
    ldr r0, [r5,#0x18]
    ldr r1, [r5,#0xc]
    cmp r0, r1
    bne loc_803732E
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x10]
    cmp r0, r1
    bne loc_803732E
    b loc_8037242
loc_803732E:
    pop {r0-r3}
    b loc_80371E8
.endfunc // sub_80372EC

.func
.thumb_func
sub_8037332:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_803744C
    add r4, r0, #0
    mov r0, #2
    bl sub_8037480
    add r1, r4, #0
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    pop {r1}
    mov r0, #1
    add r1, #6
    pop {pc}
.endfunc // sub_8037332

.func
.thumb_func
sub_8037352:
    push {lr}
    push {r1}
    mov r0, #0x80
    bl chatbox_8045F3C
    pop {r1}
    bne loc_8037366
    mov r0, #1
    add r1, #1
    pop {pc}
loc_8037366:
    mov r0, #1
    pop {pc}
.endfunc // sub_8037352

.func
.thumb_func
sub_803736A:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_8037480
    bl sub_8001B1C
    pop {r1}
    mov r0, #1
    add r1, #5
    pop {pc}
.endfunc // sub_803736A

.func
.thumb_func
sub_8037380:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_803744C
    bl sub_8001B6C
    pop {r1}
    mov r0, #1
    add r1, #2
    pop {pc}
.endfunc // sub_8037380

.func
.thumb_func
sub_8037396:
    push {lr}
    push {r1}
    mov r0, #2
    bl sub_803744C
    add r4, r0, #0
    mov r0, #1
    bl sub_803744C
    add r1, r4, #0
    bl engine_setScreeneffect
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
.endfunc // sub_8037396

.func
.thumb_func
sub_80373B6:
    push {lr}
    push {r1}
    bl engine_isScreeneffectAnimating
    pop {r1}
    beq loc_80373C8
    mov r0, #1
    add r1, #1
    pop {pc}
loc_80373C8:
    mov r0, #1
    pop {pc}
.endfunc // sub_80373B6

.func
.thumb_func
sub_80373CC:
    push {lr}
    push {r1,r5}
    mov r0, #1
    bl sub_8037460
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    pop {r1,r5}
    mov r0, #1
    add r1, #3
    pop {pc}
.endfunc // sub_80373CC

.func
.thumb_func
sub_80373E4:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_8037460
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl loc_802F130 // (int a1, int a2) -> void
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
.endfunc // sub_80373E4

.func
.thumb_func
sub_80373FC:
    push {lr}
    push {r1}
    mov r0, #2
    bl sub_803744C
    add r4, r0, #0
    mov r0, #1
    bl sub_803744C
    add r1, r4, #0
    bl sub_800068A
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
.endfunc // sub_80373FC

.func
.thumb_func
sub_803741C:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_8037460
    bl sound_bgmusic_play // (int a1) -> void
    pop {r1}
    mov r0, #1
    add r1, #3
    pop {pc}
.endfunc // sub_803741C

.func
.thumb_func
sub_8037432:
    push {lr}
    push {r1}
    mov r0, #1
    bl sub_8037480
    add r1, r0, #0
    mov r0, #1
    bl sub_80301B2
    pop {r1}
    mov r0, #1
    add r1, #5
    pop {pc}
.endfunc // sub_8037432

.func
.thumb_func
sub_803744C:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3]
    pop {r1-r3,pc}
.endfunc // sub_803744C

    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3]
    lsl r0, r0, #0x18
    asr r0, r0, #0x18
    pop {r1-r3,pc}
.func
.thumb_func
sub_8037460:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3,#1]
    ldrb r2, [r3]
    lsl r0, r0, #8
    orr r0, r2
    pop {r1-r3,pc}
.endfunc // sub_8037460

.func
.thumb_func
sub_803746E:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3,#1]
    ldrb r2, [r3]
    lsl r0, r0, #8
    orr r0, r2
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    pop {r1-r3,pc}
.endfunc // sub_803746E

.func
.thumb_func
sub_8037480:
    push {r1-r3,lr}
    add r3, r1, r0
    ldrb r0, [r3,#3]
    ldrb r2, [r3,#2]
    lsl r0, r0, #8
    orr r0, r2
    ldrb r2, [r3,#1]
    lsl r0, r0, #8
    orr r0, r2
    ldrb r2, [r3]
    lsl r0, r0, #8
    orr r0, r2
    pop {r1-r3,pc}
    .balign 4, 0x00
off_803749C:    .word sub_80376C4+1
    .word sub_80376DC+1
    .word sub_80376F4+1
    .word sub_8037740+1
    .word sub_8037790+1
    .word sub_80377B6+1
    .word sub_80377D0+1
    .word sub_80377E4+1
    .word sub_80377F6+1
    .word sub_8037808+1
    .word sub_8037826+1
    .word sub_8037840+1
    .word sub_8037852+1
    .word sub_8037866+1
    .word sub_8037880+1
    .word sub_803789A+1
    .word sub_80378AC+1
    .word sub_80378BE+1
    .word sub_80378C2+1
    .word sub_80378EE+1
    .word sub_8037904+1
    .word sub_8035924+1
    .word sub_8035932+1
    .word sub_8035962+1
    .word sub_8035992+1
    .word sub_80359BE+1
    .word sub_80359EE+1
    .word sub_8035A1A+1
    .word sub_8037914+1
    .word sub_8035A74+1
    .word sub_8035AAA+1
    .word sub_803793A+1
    .word sub_803795C+1
    .word sub_8035AFA+1
    .word sub_8035B44+1
    .word sub_803797E+1
    .word sub_80379A0+1
    .word sub_80379C2+1
    .word sub_80379E4+1
    .word sub_8035D6A+1
    .word sub_8035D98+1
    .word sub_8035DB4+1
    .word sub_8035DD6+1
    .word sub_8035DF8+1
    .word sub_8035E16+1
    .word sub_8035E34+1
    .word sub_8035E54+1
    .word 0x8035EAB, 0x8035EC3, 0x8035EDB, 0x8035EF3, 0x8035F0F
    .word 0x8037A07, 0x8037A2B, 0x8035F2B, 0x8035F3F, 0x8035F53
    .word 0x8035F6B, 0x8037A43, 0x8037A71, 0x8037A7D, 0x8037AA1
    .word 0x8037AB7, 0x8037B09, 0x8037B6D, 0x8037BB5, 0x8037C45
    .word 0x8037CC5, 0x8037CE5, 0x8037CF9, 0x8037D81, 0x8037DAD
    .word 0x8037DE1, 0x8037E19, 0x8037FB9, 0x8038029, 0x8038041
    .word 0x80380B5, 0x80380C9, 0x80380EB, 0x803810F, 0x8038133
    .word 0x803813F, 0x8035F99, 0x803816B, 0x80381A1, 0x80381E1
    .word 0x0
    .word sub_80381FA+1
    .word sub_803821E+1
    .word sub_803822A+1
    .word sub_8038246+1
    .word sub_8038256+1
    .word sub_803825E+1
    .word sub_8038266+1
    .word sub_803826E+1
    .word sub_803827A+1
    .word sub_803828E+1
    .word sub_803829A+1
    .word sub_80382AE+1
    .word 0x0, 0x0, 0x0
    .word sub_80382BA+1
    .word sub_80382DE+1
    .word sub_80382F2+1
    .word sub_80382FE+1
    .word sub_8038322+1
    .word sub_8038346+1
    .word 0x0, 0x0
    .word sub_8038362+1
    .word sub_8038386+1
    .word 0x0, 0x0
    .word sub_80383AA+1
    .word sub_80383DE+1
    .word sub_8038412+1
    .word sub_803843C+1
    .word sub_8038466+1
    .word sub_8038484+1
    .word sub_80384A8+1
    .word sub_80384D0+1
    .word sub_80384DC+1
    .word sub_80384F8+1
dword_8037690:    .word 0x11
byte_8037694:    .byte 0x0
byte_8037695:    .byte 0xFF
    .hword 0xFFFF
    .word 0xFF34FF48, 0xFF57FF54, 0xFF4BFFFF, 0xFF56FF35, 0xFFFFFF55
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF
.endfunc // sub_8037480

.func
.thumb_func
sub_80376C4:
    push {lr}
    mov r0, #0x17
    mov r1, #0x41 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_80376D4
    bl sub_813C3AC
loc_80376D4:
    bl sub_8036EFE
    mov r0, #0
    pop {pc}
.endfunc // sub_80376C4

.func
.thumb_func
sub_80376DC:
    push {lr}
    mov r0, #0x17
    mov r1, #0x41 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_80376EC
    bl sub_813C3AC
loc_80376EC:
    bl sub_8036ED4
    mov r0, #0
    pop {pc}
.endfunc // sub_80376DC

.func
.thumb_func
sub_80376F4:
    push {lr}
    ldrb r0, [r5,#0x12]
    add r0, #0
    bl sub_80385E0
    bne loc_8037722
    ldrb r0, [r5,#0x12]
    add r0, #0
    bl sub_80385C0
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8037716
    ldrb r4, [r5,r4]
    b loc_803771C
loc_8037716:
    mov r6, #2
    bl sub_8036094
loc_803771C:
    ldrb r1, [r5,#0x12]
    add r1, #0xc
    strb r4, [r5,r1]
loc_8037722:
    ldrb r1, [r5,#0x12]
    add r1, #0xc
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    bge loc_803773C
    ldrb r0, [r5,#0x12]
    add r0, #0
    bl sub_80385D0
    add r7, #3
    mov r0, #1
    pop {pc}
loc_803773C:
    mov r0, #0
    pop {pc}
.endfunc // sub_80376F4

.func
.thumb_func
sub_8037740:
    push {lr}
    ldrb r0, [r5,#0x12]
    add r0, #4
    bl sub_80385E0
    bne loc_8037770
    ldrb r0, [r5,#0x12]
    add r0, #4
    bl sub_80385C0
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8037762
    ldrh r4, [r5,r4]
    b loc_8037768
loc_8037762:
    mov r6, #2
    bl sub_80360A8
loc_8037768:
    ldrb r1, [r5,#0x12]
    lsl r1, r1, #1
    add r1, #0x14
    strh r4, [r5,r1]
loc_8037770:
    ldrb r1, [r5,#0x12]
    lsl r1, r1, #1
    add r1, #0x14
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    bge loc_803778C
    ldrb r0, [r5,#0x12]
    add r0, #4
    bl sub_80385D0
    add r7, #4
    mov r0, #1
    pop {pc}
loc_803778C:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037740

.func
.thumb_func
sub_8037790:
    push {lr}
    mov r6, #1
    bl sub_8036094
    mov r0, #0x80
    and r0, r4
    bl chatbox_8045F3C
    beq loc_80377AC
    mov r0, #0x38 
    and r0, r4
    bl chatbox_8045F3C
    beq loc_80377B2
loc_80377AC:
    add r7, #2
    mov r0, #1
    pop {pc}
loc_80377B2:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037790

.func
.thumb_func
sub_80377B6:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl sub_809E434
    cmp r0, r4
    bne loc_80377CC
    add r7, #2
    mov r0, #1
    pop {pc}
loc_80377CC:
    mov r0, #0
    pop {pc}
.endfunc // sub_80377B6

.func
.thumb_func
sub_80377D0:
    push {lr}
    bl sub_809E228
    cmp r0, #0
    bne loc_80377E0
    add r7, #1
    mov r0, #1
    pop {pc}
loc_80377E0:
    mov r0, #0
    pop {pc}
.endfunc // sub_80377D0

.func
.thumb_func
sub_80377E4:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq loc_80377F2
    add r7, #1
    mov r0, #1
    pop {pc}
loc_80377F2:
    mov r0, #0
    pop {pc}
.endfunc // sub_80377E4

.func
.thumb_func
sub_80377F6:
    push {lr}
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne loc_8037804
    add r7, #1
    mov r0, #1
    pop {pc}
loc_8037804:
    mov r0, #0
    pop {pc}
.endfunc // sub_80377F6

.func
.thumb_func
sub_8037808:
    push {lr}
    mov r6, #1
    bl sub_8036094
    ldrb r0, [r5,r4]
    mov r6, #2
    bl sub_8036094
    cmp r0, r4
    bne loc_8037822
    add r7, #3
    mov r0, #1
    pop {pc}
loc_8037822:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037808

.func
.thumb_func
sub_8037826:
    push {lr}
    mov r6, #1
    bl sub_8036094
    ldr r0, [r5,r4]
    ldrb r0, [r0]
    cmp r0, #0x11
    bne loc_803783C
    add r7, #2
    mov r0, #1
    pop {pc}
loc_803783C:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037826

.func
.thumb_func
sub_8037840:
    push {lr}
    bl sub_80024C0
    bne loc_803784E
    add r7, #1
    mov r0, #1
    pop {pc}
loc_803784E:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037840

.func
.thumb_func
sub_8037852:
    push {lr}
    mov r0, #1
    bl sub_811EBE0
    bne loc_8037862
    add r7, #1
    mov r0, #1
    pop {pc}
loc_8037862:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037852

.func
.thumb_func
sub_8037866:
    push {lr}
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_803787C
    add r7, #3
    mov r0, #1
    pop {pc}
loc_803787C:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037866

.func
.thumb_func
sub_8037880:
    push {lr}
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne loc_8037896
    add r7, #3
    mov r0, #1
    pop {pc}
loc_8037896:
    mov r0, #0
    pop {pc}
.endfunc // sub_8037880

.func
.thumb_func
sub_803789A:
    push {lr}
    bl sub_80039CC
    bne loc_80378A8
    add r7, #1
    mov r0, #1
    pop {pc}
loc_80378A8:
    mov r0, #0
    pop {pc}
.endfunc // sub_803789A

.func
.thumb_func
sub_80378AC:
    push {lr}
    bl sub_8003B1C
    bne loc_80378BA
    add r7, #1
    mov r0, #1
    pop {pc}
loc_80378BA:
    mov r0, #0
    pop {pc}
.endfunc // sub_80378AC

.func
.thumb_func
sub_80378BE:
    mov r0, #0
    mov pc, lr
.endfunc // sub_80378BE

.func
.thumb_func
sub_80378C2:
    push {lr}
    mov r6, #2
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #1
    bl sub_8036094
    str r0, [r5,r4]
    sub r4, #0x1c
    lsr r4, r4, #2
    add r0, r4, #0
    add r0, #0
    bl sub_80385D0
    add r0, r4, #0
    add r0, #4
    bl sub_80385D0
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80378C2

.func
.thumb_func
sub_80378EE:
    push {lr}
    ldr r0, off_8037900 // =dword_8037690 
    mov r6, #1
    bl sub_8036094
    str r0, [r5,r4]
    add r7, #2
    mov r0, #1
    pop {pc}
off_8037900:    .word dword_8037690
.endfunc // sub_80378EE

.func
.thumb_func
sub_8037904:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    str r4, [r5,#0x38]
    add r7, #5
    mov r0, #1
    pop {pc}
.endfunc // sub_8037904

.func
.thumb_func
sub_8037914:
    push {lr}
    mov r6, #1
    bl sub_8036094
    ldrb r0, [r5,r4]
    mov r6, #2
    bl sub_8036094
    cmp r0, r4
    bne loc_8037934
    mov r6, #3
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8037934:
    add r7, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8037914

.func
.thumb_func
sub_803793A:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl sub_800B6B0
    cmp r0, r4
    bne loc_8037956
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8037956:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_803793A

.func
.thumb_func
sub_803795C:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl sub_800B6B0
    cmp r0, r4
    beq loc_8037978
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8037978:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_803795C

.func
.thumb_func
sub_803797E:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl getPETNaviSelect
    cmp r0, r4
    bne loc_803799A
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_803799A:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_803797E

.func
.thumb_func
sub_80379A0:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl getPETNaviSelect
    cmp r0, r4
    beq loc_80379BC
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_80379BC:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80379A0

.func
.thumb_func
sub_80379C2:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl sub_8000EE4
    cmp r0, r4
    bne loc_80379DE
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_80379DE:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80379C2

.func
.thumb_func
sub_80379E4:
    push {lr}
    mov r6, #1
    bl sub_8036094
    bl sub_8000EE4
    cmp r0, r4
    beq loc_8037A00
    mov r6, #2
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8037A00:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80379E4

    push {lr}
    mov r6, #1
    bl sub_8036094
    lsl r0, r4, #2
    add r0, #0x44 
    mov r6, #2
    bl sub_8036094
    ldr r0, [r5,r0]
    add r0, r0, r4
    mov r6, #3
    bl sub_8036094
    strb r4, [r0]
    add r7, #4
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #2
    bl sub_8036094
    add r0, r4, #0
    mov r6, #1
    bl sub_8036094
    strb r0, [r5,r4]
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8037A5C
    ldr r0, [r5,#0x30]
    ldrb r1, [r5,r4]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    add r7, #2
    mov r0, #1
    pop {pc}
loc_8037A5C:
    mov r6, #2
    bl sub_8036094
    add r1, r4, #0
    ldr r0, [r5,#0x30]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    bl chatbox_8040818
    add r7, #1
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #2
    bl sub_8036094
    add r0, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_8037A96
    bl chatbox_8045F1C
    b loc_8037A9A
loc_8037A96:
    bl chatbox_8045F2C
loc_8037A9A:
    add r7, #3
    mov r0, #1
    pop {pc}
    push {lr}
    bl chatbox_8045F4C
    lsl r0, r0, #2
    add r0, #1
    add r6, r0, #0
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    cmp r0, #0
    bge loc_8037AC8
    bl sub_8037AD0
loc_8037AC8:
    str r0, [r5,#0x30]
    add r7, #5
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_8037AD0:
    push {lr}
    cmp r0, #0
    bge locret_8037AE4
    lsl r0, r0, #1
    lsr r0, r0, #1
    // dest
    ldr r1, off_8037AE8 // =unk_2034A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, off_8037AE8 // =unk_2034A00 
    add r0, #4
locret_8037AE4:
    pop {pc}
    .balign 4, 0x00
off_8037AE8:    .word unk_2034A00
.endfunc // sub_8037AD0

    push {lr}
    cmp r0, #0
    bge locret_8037B00
    lsl r0, r0, #1
    lsr r0, r0, #1
    ldr r1, off_8037B04 // =unk_2033400 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r0, off_8037B04 // =unk_2033400 
    add r0, #4
locret_8037B00:
    pop {pc}
    .balign 4, 0x00
off_8037B04:    .word unk_2033400
    push {lr}
    mov r6, #1
    bl sub_8036094
    ldr r0, off_8037B20 // =off_8037B24 
    ldr r0, [r0,r4]
    mov lr, pc
    bx r0
    add r7, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_8037B20:    .word off_8037B24
off_8037B24:    .word sub_809E0B0+1
    .word sub_809E122+1
    .word loc_809E0FC+1
    .word loc_809E114+1
    .word sub_809E230+1
    .word sub_809E23C+1
    .word sub_809E248+1
    .word sub_809E254+1
    .word loc_809E26A+1
    .word sub_809E276+1
    .word sub_809E284+1
    .word sub_809E292+1
    .word sub_809E442+1
    .word sub_809E452+1
    .word sub_809E4AE+1
    .word sub_809E4BC+1
    .word sub_809E312+1
    .word sub_803CEB8+1
    push {lr}
    mov r6, #1
    bl sub_8036094
    ldr r3, off_8037B98 // =off_8037B9C 
    ldr r3, [r3,r4]
    mov r6, #2
    bl sub_8036094
    cmp r4, #0xff
    beq loc_8037B86
    ldrb r4, [r5,r4]
    b loc_8037B8C
loc_8037B86:
    mov r6, #3
    bl sub_8036094
loc_8037B8C:
    add r0, r4, #0
    mov lr, pc
    bx r3
    add r7, #4
    mov r0, #1
    pop {pc}
off_8037B98:    .word off_8037B9C
off_8037B9C:    .word loc_809E260+1
    .word sub_809E2AE+1
    .word sub_809E2A0+1
    .word sub_809E4A0+1
    .word 0x809E2FF, 0x809E315, 0x2601B500, 0xFA6CF7FE, 0xDB022C08
    .word 0x42007CA8, 0x2008D031, 0xFD0AF000, 0x2008D10D, 0xFCF6F000
    .word 0xF7FE2602, 0x2CFFFA5D, 0x5D2CD001, 0x2603E002, 0xFA56F7FE
    .word 0x2604742C, 0xFA63F7FE, 0x26061C20, 0xFA5FF7FE, 0x26081C21
    .word 0xFA5BF7FE, 0x3001C22, 0x3120309, 0xF7FE2601, 0x4B08FA43
    .word 0x46FE591B, 0x7C284718, 0x74283801, 0x2008DC05, 0xFCD6F000
    .word 0x2001370A, 0x2000BD00, 0xBD00, 0x8037C34, 0x809E1A5
    .word 0x809E189, 0x809E1FB, 0x809E1D9, 0x7CA8B500, 0xD02E4200
    .word 0xFB34F066, 0x20081C03, 0xFCC4F000, 0x2008D10D, 0xFCB0F000
    .word 0xF7FE2601, 0x2CFFFA17, 0x5D2CD001, 0x2602E002, 0xFA10F7FE
    .word 0x2603742C, 0xFA1DF7FE, 0x2001C20, 0x4C0B1C01, 0x56E2005B
    .word 0x33014350, 0x435156E2, 0xF0662200, 0x7C28FAB2, 0x74283801
    .word 0x2008DC05, 0xFC96F000, 0x20013705, 0x2000BD00, 0xBD00
    .word 0x8037CB4, 0x10F010, 0x10000808, 0xF010F0, 0xF000F8F8
    .word 0x2602B500, 0xF9E4F7FE, 0x26011C20, 0xF9E0F7FE, 0xD0002CFF
    .word 0xF0665D28, 0x3703FA9D, 0xBD002001, 0x2601B500, 0xF9EEF7FE
    .word 0xF0661C20, 0x3705FBD2, 0xBD002001, 0x2601B500, 0xF9CAF7FE
    .word 0xD0022C00, 0xD0112C01, 0x2602E015, 0xF9C2F7FE, 0x26031C20
    .word 0xF9BEF7FE, 0x26041C21, 0xF9BAF7FE, 0xF0661C22, 0x3705FAD1
    .word 0xBD002001, 0xFAC9F066, 0x20013702, 0x2009BD00, 0xFC52F000
    .word 0x2009D106, 0xFC3EF000, 0xF7FE2602, 0x746CF9A5, 0xF7FE2603
    .word 0x1C20F9A5, 0xF7FE2604, 0x1C21F9A1, 0xF7FE2605, 0x1C22F99D
    .word 0xFABAF066, 0x38017C68, 0xDC057468, 0xF0002009, 0x3706FC2D
    .word 0xBD002001, 0xBD002000, 0x2601B500, 0xF986F7FE, 0xD0012C00
    .word 0xD0082C01, 0xF7FE2602, 0x1C20F989, 0xFAADF066, 0x20013704
    .word 0xF066BD00, 0x3702FAA7, 0xBD002001, 0x2602B500, 0xF970F7FE
    .word 0xD0012CFF, 0xE0025D2C, 0xF7FE2603, 0x1C20F969, 0xF7FE2601
    .word 0x2C00F965, 0x1C04D003, 0xFA72F066, 0xF0661900, 0x3704F9B1
    .word 0xBD002001, 0x2601B500, 0xF956F7FE, 0x434420D8, 0x18244809
    .word 0x6AA16A60, 0xF0666AE2, 0x7D20F9D5, 0xF99EF066, 0xF7FE2602
    .word 0x1C20F947, 0xFA51F066, 0x20013703, 0xBD00, 0x20057B0
    .word 0x2601B500, 0xF93AF7FE, 0x21F01C20, 0x88A4021, 0x589B4B02
    .word 0x471846FE, 0xBD00, 0x8037E38, 0x8037E4D, 0x8037E97
    .word 0x8037EFB, 0x8037F6F, 0x8037F91, 0x210FB500, 0xA4400C
    .word 0xB4203444, 0x2602192D, 0xF91AF7FE, 0x26031C20, 0xF920F7FE
    .word 0x26051C21, 0xF91CF7FE, 0x26071C22, 0xF918F7FE, 0x26091C23
    .word 0xF924F7FE, 0x4120409, 0x1C2E041B, 0xFCAAF7CC, 0xBC206035
    .word 0x2001370D, 0xB500BD00, 0x400C210F, 0x344400A4, 0x192DB420
    .word 0xF983F066, 0x9000B083, 0x92029101, 0xF7FE2603, 0x1C21F8F9
    .word 0xF7FE2605, 0x1C22F8F5, 0xF7FE2607, 0x1C23F8F1, 0x4120409
    .word 0x9C00041B, 0x9C011909, 0x9C021912, 0xB003191B, 0xF7FE2602
    .word 0x1C20F8D9, 0xF7FE2609, 0x1C2EF8EF, 0xFC78F7CC, 0xBC206035
    .word 0x2001370D, 0xB500BD00, 0x400C210F, 0x344400A4, 0x192DB420
    .word 0xF7FE2602, 0x21D8F8C3, 0x4C284361, 0x6A601864, 0x6AE26AA1
    .word 0x9000B083, 0x92029101, 0xF7FE2604, 0x1C21F8BF, 0xF7FE2606
    .word 0x1C22F8BB, 0xF7FE2608, 0x1C23F8B7, 0x4120409, 0x9C00041B
    .word 0x9C011909, 0x9C021912, 0xB003191B, 0xF7FE2603, 0x1C20F89F
    .word 0xF7FE260A, 0x1C2EF8B5, 0xFC3EF7CC, 0xBC206035, 0x2001370E
    .word 0xB500BD00, 0x400C210F, 0x344400A4, 0x592DB420, 0xD003422D
    .word 0x51282000, 0xFC95F7CC, 0x3702BC20, 0xBD002001, 0x2444B500
    .word 0x42005928, 0x2100D006, 0xB4205129, 0xF7CC1C05, 0xBC20FC86
    .word 0x2C6C3404, 0x3702DDF2, 0xBD002001, 0x20057B0, 0x2601B500
    .word 0xF86AF7FE, 0xD0102C01, 0xD0172C02, 0xD01E2C03, 0xD0212C04
    .word 0xD0242C05, 0xF7FE2602, 0x1C20F877, 0xFAC8F7CB, 0x20013706
    .word 0x2602BD00, 0xF854F7FE, 0xF7CB1C20, 0x3703FAD8, 0xBD002001
    .word 0xF7FE2602, 0x1C20F865, 0xFD2EF7F8, 0x20013706, 0xF7FDBD00
    .word 0x3702F893, 0xBD002001, 0xF8AAF7FD, 0x20013702, 0xF7FDBD00
    .word 0x3702F8C9, 0xBD002001, 0x2601B500, 0xF84CF7FE, 0x472046FE
    .word 0x3705D102, 0xBD002001, 0xBD002000, 0x2601B500, 0xF826F7FE
    .word 0x20401C23, 0xD1234203, 0x42032020, 0x2603D127, 0xF836F7FE
    .word 0x20801C22, 0xD0004203, 0x20016B6A, 0xD10A4203, 0x21001C10
    .word 0xF7FE2602, 0x1C22F80F, 0xFF42F7CD, 0x20013707, 0x1C10BD00
    .word 0x26022100, 0xF804F7FE, 0xF7CD1C22, 0x3707FF41, 0xBD002001
    .word 0xFF4BF7CD, 0xFF30F7CD, 0x20013702, 0x2602BD00, 0xF80EF7FE
    .word 0x3706636C, 0xBD002001, 0x2601B500, 0xFFF6F7FD, 0xF7C81C20
    .word 0x3703FA85, 0xBD002001, 0x2601B500, 0xFFF3F7FD, 0xDA042C00
    .word 0xFEB6F7FE, 0xFECEF7FE, 0x1C20E002, 0xFA78F7C8, 0x20013703
    .word 0xB500BD00, 0xF7FD2601, 0x1C20FFDB, 0xF7FD2603, 0x1C21FFCD
    .word 0xF7FD2604, 0x1C22FFC9, 0xFACDF7C8, 0x20013705, 0xB500BD00
    .word 0xF7FD2601, 0x1C21FFBF, 0xF7FD2602, 0x1C20FFBB, 0xFAB3F7C8
    .word 0x6BC94651, 0x73C82063, 0x20013703, 0xB500BD00, 0xFB26F7C8
    .word 0x20013701, 0xB500BD00, 0xF7FD2602, 0x1C20FFA7, 0xF7FD2603
    .word 0x1C21FFA3, 0xF7FD2601, 0x2C01FF9F, 0xF004D002, 0xE001FE1D
    .word 0xFE52F004, 0x20013704, 0xB500BD00, 0xF7FD2601, 0x2C00FF91
    .word 0x2602D10B, 0xFFA6F7FD, 0x1C2063EC, 0xFF0AF7FE, 0x74E82001
    .word 0x20013706, 0x2000BD00, 0xF7FE63E8, 0x2000FF0A, 0x370274E8
    .word 0xBD002001, 0x4650B500, 0x79006BC0, 0xDA032880, 0xFFFEF7DB
    .word 0xFD3FF7DD, 0xF7FD2601, 0x1C20FF77, 0xFAAFF7D2, 0xF7CD2101
    .word 0x2601FD01, 0xFF6EF7FD, 0xF7FD1C20, 0x202CF82E, 0xF7CE2110
    .word 0x3703F84B, 0xBD002001, 0xF072B500, 0x2101F9FF, 0xFCEEF7CD
    .word 0x2110202C, 0xF83EF7CE, 0x20013701
    pop {pc}
.func
.thumb_func
sub_80381FA:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #5
    bl sub_80360C8
    add r1, r4, #0
    mov r6, #9
    bl sub_80360C8
    add r2, r4, #0
    bl sub_8002468
    add r7, #0xd
    mov r0, #1
    pop {pc}
.endfunc // sub_80381FA

.func
.thumb_func
sub_803821E:
    push {lr}
    bl sub_8002484
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_803821E

.func
.thumb_func
sub_803822A:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    mov r6, #2
    bl sub_8036094
    add r1, r4, #0
    bl sub_80302A8
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_803822A

.func
.thumb_func
sub_8038246:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    add r7, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_8038246

.func
.thumb_func
sub_8038256:
    push {lr}
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_8038256

.func
.thumb_func
sub_803825E:
    push {lr}
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_803825E

.func
.thumb_func
sub_8038266:
    push {lr}
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_8038266

.func
.thumb_func
sub_803826E:
    push {lr}
    bl sub_8001974
.endfunc // sub_803826E

    add r7, #1
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_803827A:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    bl sub_8003914
    add r7, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_803827A

.func
.thumb_func
sub_803828E:
    push {lr}
    bl sub_8003940
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_803828E

.func
.thumb_func
sub_803829A:
    push {lr}
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    bl sub_8003A64
    add r7, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_803829A

.func
.thumb_func
sub_80382AE:
    push {lr}
    bl loc_8003A90
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_80382AE

.func
.thumb_func
sub_80382BA:
    push {lr}
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #3
    bl sub_8036094
    add r6, r0, #0
loc_80382CC:
    add r0, r6, #0
    bl reqBBS_813E5DC
    add r6, #1
    sub r4, #1
    bgt loc_80382CC
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_80382BA

.func
.thumb_func
sub_80382DE:
    push {lr}
    mov r6, #1
    bl sub_80360A8
    // idx_2008A0
    add r0, r4, #0
    bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
    add r7, #3
    mov r0, #1
    pop {pc}
.endfunc // sub_80382DE

.func
.thumb_func
sub_80382F2:
    push {lr}
    bl sub_80340F6
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_80382F2

.func
.thumb_func
sub_80382FE:
    push {lr}
    bl sub_80010C6
    mov r6, #1
    bl sub_8036094
    add r0, r4, #0
    bl sub_80010BE
    bl sub_8120DF0
    bl sub_813C3AC
    bl sub_803CEB8
    add r7, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_80382FE

.func
.thumb_func
sub_8038322:
    push {lr}
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #3
    bl sub_8036094
    add r6, r0, #0
loc_8038334:
    add r0, r6, #0
    bl sub_802F238
    add r6, #1
    sub r4, #1
    bgt loc_8038334
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8038322

.func
.thumb_func
sub_8038346:
    push {lr}
    mov r6, #1
    bl sub_80360C8
    add r0, r4, #0
    mov r6, #5
    bl sub_80360C8
    add r1, r4, #0
    bl sub_80356F8
    add r7, #9
    mov r0, #1
    pop {pc}
.endfunc // sub_8038346

.func
.thumb_func
sub_8038362:
    push {lr}
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_803837C
    bl sub_803CFF8
    b loc_8038380
loc_803837C:
    bl sub_803D040
loc_8038380:
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8038362

.func
.thumb_func
sub_8038386:
    push {lr}
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_80383A0
    bl sub_803D080
    b loc_80383A4
loc_80383A0:
    bl sub_803D0C8
loc_80383A4:
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8038386

.func
.thumb_func
sub_80383AA:
    push {lr}
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #4
    bl sub_8036094
    add r1, r4, #0
    mov r6, #5
    bl sub_8036094
    add r2, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_80383D4
    bl dword_8021AEC+2
    b loc_80383D8
loc_80383D4:
    bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
loc_80383D8:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80383AA

.func
.thumb_func
sub_80383DE:
    push {lr}
    mov r6, #2
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #4
    bl sub_8036094
    add r1, r4, #0
    mov r6, #5
    bl sub_8036094
    add r2, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_8038408
    bl sub_803D108
    b loc_803840C
loc_8038408:
    bl sub_803D128
loc_803840C:
    add r7, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80383DE

.func
.thumb_func
sub_8038412:
    push {lr}
    ldr r3, off_8038438 // =unk_2011E60 
    mov r6, #1
    bl sub_8036094
    cmp r4, #1
    beq loc_803842E
    mov r6, #2
    bl sub_80360C8
    str r4, [r3,#0x10]
    add r7, #6
    mov r0, #1
    pop {pc}
loc_803842E:
    mov r0, #0
    str r0, [r3,#0x10]
    add r7, #2
    mov r0, #1
    pop {pc}
off_8038438:    .word unk_2011E60
.endfunc // sub_8038412

.func
.thumb_func
sub_803843C:
    push {lr}
    mov r3, r10
    ldr r2, [r3,#0x3c]
    mov r6, #2
    bl sub_8036094
    add r0, r4, #0
    mov r6, #1
    bl sub_8036094
    cmp r4, #0
    beq loc_8038456
    b loc_803845C
loc_8038456:
    bl sub_8035364
    b loc_8038460
loc_803845C:
    bl sub_8035354
loc_8038460:
    add r7, #3
    mov r0, #1
    pop {pc}
.endfunc // sub_803843C

.func
.thumb_func
sub_8038466:
    push {lr}
    mov r6, #1
    bl sub_8036094
    cmp r4, #0
    beq loc_8038474
    b loc_803847A
loc_8038474:
    bl sub_803553C
    b loc_803847E
loc_803847A:
    bl sub_80355A8
loc_803847E:
    add r7, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_8038466

.func
.thumb_func
sub_8038484:
    push {lr}
    mov r6, #1
    bl sub_80360A8
    add r0, r4, #0
    mov r6, #3
    bl sub_8036094
    add r6, r0, #0
loc_8038496:
    add r0, r6, #0
    bl reqBBS_813F9A0
    add r6, #1
    sub r4, #1
    bgt loc_8038496
    add r7, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8038484

.func
.thumb_func
sub_80384A8:
    push {lr}
    mov r0, #0x2c 
    bl sub_803CE28
    beq loc_80384CA
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #1
    tst r0, r1
    beq loc_80384CA
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_80384CA:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_80384A8

.func
.thumb_func
sub_80384D0:
    push {lr}
    bl sub_80141AC
    add r7, #1
    mov r0, #1
    pop {pc}
.endfunc // sub_80384D0

.func
.thumb_func
sub_80384DC:
    push {lr}
    bl reqBBS_getTotalPointsIndex
    cmp r0, #4
    bne loc_80384F2
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_80384F2:
    add r7, #8
    mov r0, #1
    pop {pc}
.endfunc // sub_80384DC

.func
.thumb_func
sub_80384F8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge loc_8038510
    mov r6, #4
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
loc_8038510:
    mov r6, #8
    bl sub_80360C8
    add r7, r4, #0
    mov r0, #1
    pop {pc}
.endfunc // sub_80384F8

loc_803851C:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r12
    push {r4,r5}
    mov r5, r10
    ldr r5, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#0x12]
    mov r0, #0x1c
    mov r8, r0
loc_8038530:
    ldr r6, off_80385B8 // =off_803749C 
    mov r12, r6
    mov r7, r8
    ldr r7, [r5,r7]
loc_8038538:
    mov r6, r12
    ldrb r0, [r7]
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    mov lr, pc
    bx r0
    bne loc_8038538
    ldrb r0, [r5,#0x12]
    add r0, #0x1 // (algn_3FC+1 - 0x3fc)
    strb r0, [r5,#0x12]
    mov r0, r8
    ldr r1, [r5,r0]
    cmp r1, #1
    beq loc_8038556
    str r7, [r5,r0]
loc_8038556:
    add r0, #4
    mov r8, r0
    cmp r0, #0x28 
    ble loc_8038530
    ldr r0, [r5,#0x3c]
    tst r0, r0
    beq loc_803856A
    bl loc_8036FBC
    strb r0, [r5,#0x13]
loc_803856A:
    bl sub_8036F84
    beq loc_80385AE
    ldr r0, [r5,#0x38]
    tst r0, r0
    beq loc_80385AE
    str r0, [r5,#0x1c]
    ldr r0, off_80385BC // =dword_8037690 
    mov r0, #0
    str r0, [r5,#0x38]
    mov r0, #0
    bl sub_80385D0
    mov r0, #1
    bl sub_80385D0
    mov r0, #2
    bl sub_80385D0
    mov r0, #3
    bl sub_80385D0
    mov r0, #4
    bl sub_80385D0
    mov r0, #5
    bl sub_80385D0
    mov r0, #6
    bl sub_80385D0
    mov r0, #7
    bl sub_80385D0
loc_80385AE:
    pop {r4,r5}
    mov r8, r4
    mov r12, r5
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80385B8:    .word off_803749C
off_80385BC:    .word dword_8037690
.func
.thumb_func
sub_80385C0:
    push {r1}
    mov r1, #1
    lsl r1, r0
    ldr r0, [r5,#0x2c]
    orr r0, r1
    str r0, [r5,#0x2c]
    pop {r1}
    mov pc, lr
.endfunc // sub_80385C0

.func
.thumb_func
sub_80385D0:
    push {r1}
    mov r1, #1
    lsl r1, r0
    ldr r0, [r5,#0x2c]
    bic r0, r1
    str r0, [r5,#0x2c]
    pop {r1}
    mov pc, lr
.endfunc // sub_80385D0

.func
.thumb_func
sub_80385E0:
    push {r1}
    mov r1, #1
    lsl r1, r0
    ldr r0, [r5,#0x2c]
    tst r0, r1
    pop {r1}
    mov pc, lr
    .byte 0, 0
.endfunc // sub_80385E0

.func
.thumb_func
sub_80385F0:
    push {r4-r7,lr}
    ldr r5, off_8038618 // =byte_2011E40 
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0xc
    strb r0, [r1]
    pop {r4-r7,pc}
.endfunc // sub_80385F0

    push {r4-r7,lr}
    ldr r5, off_8038618 // =byte_2011E40 
    ldr r0, off_803861C // =off_8038620 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8038618:    .word byte_2011E40
off_803861C:    .word off_8038620
off_8038620:    .word sub_8038630+1
    .word sub_8038674+1
    .word sub_803868C+1
    .word sub_80386B2+1
.func
.thumb_func
sub_8038630:
    push {r4-r7,lr}
    bl chatbox_8040818
    mov r0, #0xd
    bl sub_80015FC
    ldr r0, dword_8038670 // =0x1340 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl sub_8005F40
.endfunc // sub_8038630

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_80386CC
    mov r0, #0x63 
    bl sub_80005F2
    mov r0, #8
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5]
    pop {r4-r7,pc}
    .byte 0, 0
dword_8038670:    .word 0x1340
.func
.thumb_func
sub_8038674:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_8038684
    ldr r0, off_8038688 // =0xB4 
    strh r0, [r5,#4]
    mov r0, #8
    strb r0, [r5]
locret_8038684:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8038688:    .word 0xB4
.endfunc // sub_8038674

.func
.thumb_func
sub_803868C:
    push {r4-r7,lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    blt loc_8038698
    strh r0, [r5,#4]
    b locret_80386B0
loc_8038698:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #0xb
    tst r1, r0
    beq locret_80386B0
    mov r0, #0xc
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #0xc
    strb r0, [r5]
locret_80386B0:
    pop {r4-r7,pc}
.endfunc // sub_803868C

.func
.thumb_func
sub_80386B2:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_80386C4
    ldr r0, off_80386C8 // =0x40 
    bl sub_8001778
    bl loc_803D1AC
locret_80386C4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80386C8:    .word 0x40
.endfunc // sub_80386B2

.func
.thumb_func
sub_80386CC:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    // dataList
    ldr r0, off_80386E0 // =dword_80386E4 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    pop {r4-r7,pc}
    .byte 0, 0
off_80386E0:    .word dword_80386E4
dword_80386E4:    .word 0x0
dword_80386E8:    .word 0x6, 0x106, 0x206, 0x306, 0x406, 0xFFFFFFFF, 0x42824280
    .word 0x42864284, 0x428A4288, 0x428E428C, 0x42924290, 0x42964294, 0x429A4298, 0x429E429C
    .word 0x42A242A0, 0x42A642A4, 0x42AA42A8, 0x428142AC, 0x42854283, 0x42894287, 0x428D428B
    .word 0x4291428F, 0x42954293, 0x42994297, 0x429D429B, 0x42A1429F, 0x42A542A3, 0x42A942A7
    .word 0x42AD42AB, 0x8, 0x3001B60, 0xFF0B000C, 0x80004210, 0x6, 0x80000000
    .word 0x6, 0x0
    .word 0x8, 0x3001750, 0xFF0C010C, 0x80004210, 0x6, 0x80000000
    .word 0x6, 0x0
    .word 0x8, 0x3001B60, 0xFF0B000C, 0x80004210, 0x4, 0x80000000
    .word 0xC, 0x80004210, 0x4, 0x80000000, 0xC, 0x0
    .word 0x8, 0x3001750, 0xFF0C010C, 0x80004200, 0x4, 0x80000000
    .word 0xC, 0x80004210, 0x4, 0x80000000, 0xC, 0x0
dword_80387FC:    .word 0x8, 0x3001B60, 0xFF0B000C, 0x80003DEF, 0xC, 0x800039CE
    .word 0xC, 0x800035AD, 0xC, 0x8000318C, 0xC, 0x80002D6B
    .word 0xC, 0x8000294A, 0xC, 0x80002529, 0xC, 0x80002108
    .word 0xC, 0x80001CE7, 0xC, 0x800018C6, 0xC, 0x800014A5
    .word 0xC, 0x80001084, 0xC, 0x80000C63, 0xC, 0x80000842
    .word 0xC, 0x80000421, 0xC, 0x80000000, 0xC, 0x0
dword_803888C:    .word 0x8, 0x3001750, 0xFF0C010C, 0x80003DEF, 0xC, 0x800039CE
    .word 0xC, 0x800035AD, 0xC, 0x8000318C, 0xC, 0x80002D6B
    .word 0xC, 0x8000294A, 0xC, 0x80002529, 0xC, 0x80002108
    .word 0xC, 0x80001CE7, 0xC, 0x800018C6, 0xC, 0x800014A5
    .word 0xC, 0x80001084, 0xC, 0x80000C63, 0xC, 0x80000842
    .word 0xC, 0x80000421, 0xC, 0x80000000, 0xC, 0x0
dword_803891C:    .word 0x8, 0x3001B60, 0xFF0B000C, 0x80000002, 0x1, 0x80000004
    .word 0x1, 0x80000006, 0x1, 0x80000008, 0x1, 0x8000000A
    .word 0x1, 0x8000042C, 0x1, 0x8000084E, 0x1, 0x80000C70
    .word 0x1, 0x80001090, 0x1, 0x800014B0, 0x1, 0x800018D0
    .word 0x1, 0x80002110, 0x1, 0x80002950, 0x1, 0x80003190
    .word 0x1, 0x800039D0, 0x1, 0x80004210, 0x1, 0x0
dword_80389AC:    .word 0x8, 0x3001750, 0xFF0C010C, 0x80000002, 0x1, 0x80000004
    .word 0x1, 0x80000006, 0x1, 0x80000008, 0x1, 0x8000000A
    .word 0x1, 0x8000042C, 0x1, 0x8000084E, 0x1, 0x80000C70
    .word 0x1, 0x80001090, 0x1, 0x800014B0, 0x1, 0x800018D0
    .word 0x1, 0x80002110, 0x1, 0x80002950, 0x1, 0x80003190
    .word 0x1, 0x800039D0, 0x1, 0x80004210, 0x1, 0x0
dword_8038A3C:    .word 0x8, 0x3001B60, 0xFF0B000C, 0x80004210, 0x3, 0x0
    .word 0x8, 0x3001750, 0xFF0C010C, 0x80004210, 0x3, 0x0
dword_8038A6C:    .word 0x8, 0x3001B60, 0xFF0B000C, 0x80000000, 0x3, 0x0
dword_8038A84:    .word 0x8, 0x3001750, 0xFF0C010C, 0x80000000, 0x3, 0x0
.endfunc // sub_80386CC

.func
.thumb_func
sub_8038A9C:
    push {lr}
    bl sub_8000EE4
    ldr r2, dword_8038ACC // =0xF6 
    and r1, r2
    cmp r1, r2
    bne loc_8038ABC
    // memBlock
    ldr r0, off_8038B00 // =byte_2011E40 
    // numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r0, r10
    ldr r0, [r0]
    mov r1, #0xc
    strb r1, [r0]
    b locret_8038AC6
loc_8038ABC:
    ldr r0, off_8038AC8 // =0x40 
    bl sub_8001778
    bl loc_803D1AC
locret_8038AC6:
    pop {pc}
off_8038AC8:    .word 0x40
dword_8038ACC:    .word 0xF6
.endfunc // sub_8038A9C

cb_8038AD0:
    push {lr}
    ldr r5, off_8038B00 // =byte_2011E40 
    ldr r0, off_8038AF0 // =off_8038AF4 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8046818
    bl sub_8046854
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    pop {pc}
off_8038AF0:    .word off_8038AF4
off_8038AF4:    .word sub_8038B04+1
    .word sub_8038B64+1
    .word sub_8038F0C+1
off_8038B00:    .word byte_2011E40
.func
.thumb_func
sub_8038B04:
    push {lr}
    bl sub_80017AA
    bl sub_80017E0
    bl sub_800183C
    mov r0, #0x14
    bl sub_80015FC
    ldr r0, dword_8038B5C // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl sub_8005F40
.endfunc // sub_8038B04

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_8038F30
    bl sub_8038F74
    bl sub_80468BA
    bl sub_8046664 // () -> void
    ldr r0, off_8038B60 // =dword_80386E8 
    bl sub_80467FC
    bl chatbox_8040818
    mov r0, #8
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5]
    pop {pc}
    .balign 4, 0x00
dword_8038B5C:    .word 0x1F40
off_8038B60:    .word dword_80386E8
.func
.thumb_func
sub_8038B64:
    push {lr}
    ldr r0, off_8038B74 // =off_8038B78 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8038B74:    .word off_8038B78
off_8038B78:    .word sub_8038B80+1
    .word sub_8038B9C+1
.endfunc // sub_8038B64

.func
.thumb_func
sub_8038B80:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq locret_8038B98
    mov r0, #4
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #0x78 
    strh r0, [r5,#4]
    mov r0, #0
    strb r0, [r5,#6]
locret_8038B98:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8038B80

.func
.thumb_func
sub_8038B9C:
    push {lr}
    ldr r0, off_8038BAC // =off_8038BB0 
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8038BAC:    .word off_8038BB0
off_8038BB0:    .word sub_8038BEC+1
    .word sub_8038C10+1
    .word sub_8038C78+1
    .word sub_8038CF4+1
    .word sub_8038D7C+1
    .word sub_8038D94+1
    .word sub_8038DB0+1
    .word loc_8038DC8+1
    .word sub_8038DE0+1
    .word sub_8038E14+1
    .word sub_8038E48+1
    .word sub_8038E5C+1
    .word sub_8038E78+1
    .word sub_8038EAC+1
    .word sub_8038EDC+1
.endfunc // sub_8038B9C

.func
.thumb_func
sub_8038BEC:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038C08
    mov r0, #4
    strb r0, [r5,#2]
    mov r0, #0xa
    strh r0, [r5,#4]
    ldrb r0, [r5,#6]
    bl sub_8038FB4
    ldr r0, off_8038C0C // =0x700 
    str r0, [r5,#8]
locret_8038C08:
    pop {pc}
    .balign 4, 0x00
off_8038C0C:    .word 0x700
.endfunc // sub_8038BEC

.func
.thumb_func
sub_8038C10:
    push {lr}
    ldr r0, [r5,#8]
    ldr r1, off_8038C74 // =0x80 
    add r0, r0, r1
    str r0, [r5,#8]
    add r4, r0, #0
    mov r1, #0
    bl sub_811D66C
    add r0, r4, #0
    mov r1, #1
    bl sub_811D66C
    add r0, r4, #0
    mov r1, #2
    bl sub_811D66C
    mov r2, #0
    bl sub_811D634
    mov r2, #1
    bl sub_811D634
    mov r2, #2
    bl sub_811D634
    ldrh r0, [r5,#4]
    cmp r0, #9
    bne loc_8038C54
    push {r0}
    mov r0, #0x8c
    bl sound_play
    pop {r0}
loc_8038C54:
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038C6C
    mov r0, #8
    strb r0, [r5,#2]
    bl sub_8039074
    ldr r0, off_8038C70 // =dword_80386E8+116 
    bl sub_8001B1C
    mov r0, #4
    strh r0, [r5,#4]
locret_8038C6C:
    pop {pc}
    .byte 0, 0
off_8038C70:    .word dword_80386E8+0x74
off_8038C74:    .word 0x80
.endfunc // sub_8038C10

.func
.thumb_func
sub_8038C78:
    push {r4,lr}
    ldr r0, [r5,#8]
    mov r1, #0
    lsl r1, r1, #4
    cmp r0, r1
    ble loc_8038C8C
    ldr r1, off_8038CF0 // =0xC0 
    sub r0, r0, r1
    str r0, [r5,#8]
    b loc_8038CA2
loc_8038C8C:
    mov r0, #0
    bl sub_811DBF0
    mov r0, #1
    bl sub_811DBF0
    mov r0, #2
    bl sub_811DBF0
    mov r0, #0
    lsl r0, r0, #4
loc_8038CA2:
    add r4, r0, #0
    mov r1, #0
    bl sub_811D69C
    add r0, r4, #0
    mov r1, #1
    bl sub_811D69C
    add r0, r4, #0
    mov r1, #2
    bl sub_811D69C
    mov r2, #0
    bl sub_811D634
    mov r2, #1
    bl sub_811D634
    mov r2, #2
    bl sub_811D634
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038CE8
    mov r0, #0xc
    strb r0, [r5,#2]
    mov r0, #0x77 
    bl sound_play
    ldrb r0, [r5,#6]
    bl sub_8039084
    ldr r0, dword_8038CEC // =0x95 
    strh r0, [r5,#4]
locret_8038CE8:
    pop {r4,pc}
    .balign 4, 0x00
dword_8038CEC:    .word 0x95
off_8038CF0:    .word 0xC0
.endfunc // sub_8038C78

.func
.thumb_func
sub_8038CF4:
    push {lr}
    ldr r0, [r5,#8]
    mov r1, #0
    lsl r1, r1, #4
    cmp r0, r1
    ble loc_8038D08
    ldr r1, off_8038D78 // =0xC0 
    sub r0, r0, r1
    str r0, [r5,#8]
    b loc_8038D1E
loc_8038D08:
    mov r0, #0
    bl sub_811DBF0
    mov r0, #1
    bl sub_811DBF0
    mov r0, #2
    bl sub_811DBF0
    mov r0, #0
    lsl r0, r0, #4
loc_8038D1E:
    add r4, r0, #0
    mov r1, #0
    bl sub_811D69C
    add r0, r4, #0
    mov r1, #1
    bl sub_811D69C
    add r0, r4, #0
    mov r1, #2
    bl sub_811D69C
    mov r2, #0
    bl sub_811D634
    mov r2, #1
    bl sub_811D634
    mov r2, #2
    bl sub_811D634
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038D70
    ldrb r0, [r5,#6]
    add r0, #1
    cmp r0, #5
    blt loc_8038D66
    bl sub_8046664 // () -> void
    mov r0, #0x10
    strb r0, [r5,#2]
    mov r0, #0x14
    strh r0, [r5,#4]
    b locret_8038D70
loc_8038D66:
    strb r0, [r5,#6]
    mov r0, #0
    strb r0, [r5,#2]
    mov r0, #0xa
    strh r0, [r5,#4]
locret_8038D70:
    pop {pc}
    .balign 4, 0x00
    .word 0x95
off_8038D78:    .word 0xC0
.endfunc // sub_8038CF4

.func
.thumb_func
sub_8038D7C:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038D92
    mov r0, #0x14
    strb r0, [r5,#2]
    mov r0, #0x2e 
    strh r0, [r5,#4]
    bl sub_8039024
locret_8038D92:
    pop {pc}
.endfunc // sub_8038D7C

.func
.thumb_func
sub_8038D94:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038DAA
    ldr r0, off_8038DAC // =0x99 
    strh r0, [r5,#4]
    mov r0, #0x18
    strb r0, [r5,#2]
    bl sub_80468BA
locret_8038DAA:
    pop {pc}
off_8038DAC:    .word 0x99
.endfunc // sub_8038D94

.func
.thumb_func
sub_8038DB0:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038DDE
    ldr r0, dword_8038DC4 // =0xF 
    strh r0, [r5,#4]
    mov r0, #0x1c
    strb r0, [r5,#2]
    pop {pc}
dword_8038DC4:    .word 0xF
loc_8038DC8:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038DDE
    mov r0, #0x32 
    strh r0, [r5,#4]
    mov r0, #0x20 
    strb r0, [r5,#2]
    bl sub_803916C
locret_8038DDE:
    pop {pc}
.endfunc // sub_8038DB0

.func
.thumb_func
sub_8038DE0:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038E04
    ldr r0, off_8038E10 // =0x100 
    bl sound_play
    ldr r0, off_8038E08 // =dword_803891C 
    bl sub_8001B1C
    ldr r0, off_8038E0C // =dword_80389AC 
    bl sub_8001B1C
    mov r0, #0x2e 
    strh r0, [r5,#4]
    mov r0, #0x24 
    strb r0, [r5,#2]
locret_8038E04:
    pop {pc}
    .balign 4, 0x00
off_8038E08:    .word dword_803891C
off_8038E0C:    .word dword_80389AC
off_8038E10:    .word 0x100
.endfunc // sub_8038DE0

.func
.thumb_func
sub_8038E14:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038E3A
    ldr r0, off_8038E3C // =dword_80387FC 
    bl sub_8001B1C
    ldr r0, off_8038E40 // =dword_803888C 
    bl sub_8001B1C
    bl sub_8046664 // () -> void
    bl sub_80390D8
    mov r0, #0x28 
    strb r0, [r5,#2]
    ldr r0, dword_8038E44 // =0xD6 
    strh r0, [r5,#4]
locret_8038E3A:
    pop {pc}
off_8038E3C:    .word dword_80387FC
off_8038E40:    .word dword_803888C
dword_8038E44:    .word 0xD6
.endfunc // sub_8038E14

.func
.thumb_func
sub_8038E48:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038E5A
    mov r0, #4
    strh r0, [r5,#4]
    mov r0, #0x2c 
    strb r0, [r5,#2]
locret_8038E5A:
    pop {pc}
.endfunc // sub_8038E48

.func
.thumb_func
sub_8038E5C:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038E72
    bl sub_80390F8
    ldr r0, off_8038E74 // =0x2D 
    strh r0, [r5,#4]
    mov r0, #0x30 
    strb r0, [r5,#2]
locret_8038E72:
    pop {pc}
off_8038E74:    .word 0x2D
.endfunc // sub_8038E5C

.func
.thumb_func
sub_8038E78:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne locret_8038EA0
    bl sub_8039180
    ldr r0, off_8038EA4 // =dword_80389AC 
    bl sub_8001B1C
    ldr r0, off_8038EA8 // =dword_8038A3C 
    bl sub_8001B1C
    mov r0, #0x34 
    strb r0, [r5,#2]
    mov r0, #6
    strh r0, [r5,#4]
    mov r0, #0xd7
    bl sound_play
locret_8038EA0:
    pop {pc}
    .balign 4, 0x00
off_8038EA4:    .word dword_80389AC
off_8038EA8:    .word dword_8038A3C
.endfunc // sub_8038E78

.func
.thumb_func
sub_8038EAC:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    bne loc_8038ECE
    bl sub_8038F74
    ldr r0, off_8038ED4 // =dword_8038A6C 
    bl sub_8001B1C
    ldr r0, off_8038ED8 // =dword_8038A84 
    bl sub_8001B1C
    mov r0, #0x38 
    strb r0, [r5,#2]
    mov r0, #6
    strh r0, [r5,#4]
loc_8038ECE:
    bl sub_8039198
    pop {pc}
off_8038ED4:    .word dword_8038A6C
off_8038ED8:    .word dword_8038A84
.endfunc // sub_8038EAC

.func
.thumb_func
sub_8038EDC:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    blt loc_8038EE6
    strh r0, [r5,#4]
loc_8038EE6:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    ldr r1, dword_8038F08 // =0x3FF 
    tst r0, r1
    beq loc_8038EFE
    mov r0, #0xc
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
loc_8038EFE:
    bl sub_8038F9C
.endfunc // sub_8038EDC

    bl sub_8039198
    pop {pc}
dword_8038F08:    .word 0x3FF
.func
.thumb_func
sub_8038F0C:
    push {lr}
    bl sub_8039198
    bl engine_isScreeneffectAnimating
    beq locret_8038F2A
    bl loc_803D1AC
    bl sub_803F4C8
    bl sub_803E900
    ldr r0, off_8038F2C // =0x40 
    bl sub_8001778
locret_8038F2A:
    pop {pc}
off_8038F2C:    .word 0x40
.endfunc // sub_8038F0C

.func
.thumb_func
sub_8038F30:
    push {lr}
    // dataList
    ldr r0, off_8038F3C // =dword_8038F40 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    pop {pc}
    .balign 4, 0x00
off_8038F3C:    .word dword_8038F40
dword_8038F40:    .word 0x86BEAE0, 0x30019E0, 0x20, 0x887E4500, 0x6004000
    .word 0x2013A00, 0x87E4FE0, 0x30019A0, 0x40, 0x887E5020
    .word 0x2018A00, 0x2013A00, 0x0
.endfunc // sub_8038F30

.func
.thumb_func
sub_8038F74:
    push {r4-r7,lr}
    ldr r0, off_8038F8C // =dword_873B9E0 
    mov r1, #0x28 
    ldr r2, off_8038F90 // =word_2013A00 
    ldr r3, dword_8038F94 // =0x6005000 
    mov r4, #0x20 
    mov r5, #2
    ldr r6, off_8038F98 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_8038F74

    pop {r4-r7,pc}
off_8038F8C:    .word dword_873B9E0
off_8038F90:    .word word_2013A00
dword_8038F94:    .word 0x6005000
off_8038F98:    .word dword_86B7AE0
.func
.thumb_func
sub_8038F9C:
    push {r4-r7,lr}
    // a1
    mov r0, #3
    // a2
    mov r1, #8
    // a3
    mov r2, #3
    ldr r3, off_8038FB0 // =dword_80386E8+24 
    mov r4, #0x17
    mov r5, #2
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_8038F9C

    pop {r4-r7,pc}
off_8038FB0:    .word dword_80386E8+0x18
.func
.thumb_func
sub_8038FB4:
    push {r4,r7,lr}
    lsl r7, r0, #3
    mov r4, #1
loc_8038FBA:
    ldr r0, off_8038FE0 // =dword_8038FE4 
    add r0, r0, r7
    lsl r1, r4, #2
    ldr r2, [r0,r1]
    mov r0, #0x3a 
    add r1, r4, #0
    bl sub_8046670
    sub r4, #1
    bge loc_8038FBA
    mov r0, #0x3a 
    mov r1, #2
    ldr r2, off_803900C // =unk_8039010 
    lsr r7, r7, #1
    ldr r2, [r2,r7]
    bl sub_8046670
    pop {r4,r7,pc}
    .byte 0, 0
off_8038FE0:    .word dword_8038FE4
dword_8038FE4:    .word 0x0
    .word 0x10100, 0x0
    .word 0x10200, 0x0
    .word 0x10300, 0x0
    .word 0x10400, 0x0
    .word 0x10500
off_803900C:    .word unk_8039010
unk_8039010:    .byte 4
    .byte 0
    .byte 1
    .byte 0
    .byte 4
    .byte 1
    .byte 1
    .byte 0
    .byte 4
    .byte 2
    .byte 1
    .byte 0
    .byte 4
    .byte 3
    .byte 1
    .byte 0
    .byte 4
    .byte 4
    .byte 1
    .byte 0
.endfunc // sub_8038FB4

.func
.thumb_func
sub_8039024:
    push {r4,lr}
    ldr r2, dword_8039050 // =0x607 
    mov r0, #0x3a 
    mov r1, #0
    bl sub_8046670
    mov r4, #4
loc_8039032:
    mov r0, #0x3a 
    ldr r2, off_8039054 // =dword_8039058 
    sub r1, r4, #1
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    add r1, r4, #0
    bl sub_8046670
    sub r4, #1
    bgt loc_8039032
    // src
    ldr r0, dest // =dword_82E8388+232 
    // dest
    ldr r1, off_8039070 // =unk_201AA00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r4,pc}
dword_8039050:    .word 0x607
off_8039054:    .word dword_8039058
dword_8039058:    .word 0x6, 0x106, 0x206, 0x306, 0x406
dest:    .word dword_82E8388+0xE8
off_8039070:    .word unk_201AA00
.endfunc // sub_8039024

.func
.thumb_func
sub_8039074:
    push {lr}
    mov r0, #0x3a 
    mov r1, #3
    mov r2, #2
    bl sub_8046670
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8039074

.func
.thumb_func
sub_8039084:
    push {r4,lr}
    add r4, r0, #0
    lsl r0, r0, #2
    ldr r1, off_80390A8 // =dword_80390AC 
    ldr r2, [r1,r0]
    mov r0, #0x3a 
    mov r1, #4
    bl sub_8046670
    add r0, r4, #0
    lsl r0, r0, #2
    ldr r1, off_80390C0 // =dword_80390C4 
    ldr r2, [r1,r0]
    mov r0, #0x3a 
    mov r1, #5
    bl sub_8046670
    pop {r4,pc}
off_80390A8:    .word dword_80390AC
dword_80390AC:    .word 0x1, 0x101, 0x201, 0x301, 0x401
off_80390C0:    .word dword_80390C4
dword_80390C4:    .word 0x3, 0x103, 0x203, 0x303, 0x403
.endfunc // sub_8039084

.func
.thumb_func
sub_80390D8:
    push {lr}
    ldr r2, dword_80390F0 // =0x8 
    mov r0, #0x3a 
    mov r1, #0
    bl sub_8046670
    ldr r2, off_80390F4 // =0x108 
    mov r0, #0x3a 
    mov r1, #1
    bl sub_8046670
    pop {pc}
dword_80390F0:    .word 0x8
off_80390F4:    .word 0x108
.endfunc // sub_80390D8

.func
.thumb_func
sub_80390F8:
    push {r4,lr}
    mov r4, #4
loc_80390FC:
    ldr r2, off_8039138 // =dword_803913C 
    lsl r1, r4, #2
    ldr r2, [r2,r1]
    mov r0, #0x3a 
    mov r1, #3
    lsl r3, r4, #1
    add r1, r1, r3
    bl sub_8046670
    ldr r2, off_8039150 // =dword_8039154 
    lsl r1, r4, #2
    ldr r2, [r2,r1]
    mov r0, #0x3a 
    mov r1, #3
    lsl r3, r4, #1
    sub r3, #1
    add r1, r1, r3
    bl sub_8046670
    cmp r4, #1
    bne loc_8039130
    mov r0, #0x3a 
    mov r1, #0xc
    ldr r2, dword_8039168 // =0x50D 
    bl sub_8046670
loc_8039130:
    sub r4, #1
    bge loc_80390FC
    pop {r4,pc}
    .balign 4, 0x00
off_8039138:    .word dword_803913C
dword_803913C:    .word 0x9, 0x209, 0x409, 0x109, 0x309
off_8039150:    .word dword_8039154
dword_8039154:    .word 0xA, 0x20A, 0x40A, 0x10A, 0x30A
dword_8039168:    .word 0x50D
.endfunc // sub_80390F8

.func
.thumb_func
sub_803916C:
    push {lr}
    ldr r2, dword_803917C // =0xB 
    mov r0, #0x3a 
    mov r1, #6
    bl sub_8046670
    pop {pc}
    .balign 4, 0x00
dword_803917C:    .word 0xB
.endfunc // sub_803916C

.func
.thumb_func
sub_8039180:
    push {r4-r7,lr}
    // a1
    mov r0, #0
    // a2
    mov r1, #0xf
    // a3
    mov r2, #2
    ldr r3, off_8039194 // =unk_2018A00 
    mov r4, #0x20 
    mov r5, #5
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_8039180

    pop {r4-r7,pc}
off_8039194:    .word unk_2018A00
.func
.thumb_func
sub_8039198:
    push {lr}
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#0x14]
    sub r0, #9
    strh r0, [r3,#0x14]
    pop {pc}
    .balign 4, 0x00
dword_80391A8:    .word 0x5050500, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050201, 0x3050505
    .word 0x5050505, 0x7060504, 0xA090805, 0xE0D0C0B, 0x511100F
    .word 0x5050505, 0x14131205, 0x18171615, 0x1C1B1A19, 0x201F1E1D
    .word 0x24232221, 0x28272625, 0x52B2A29, 0x5050505, 0x2E2D2C05
    .word 0x3231302F, 0x36353433, 0x3A393837, 0x3E3D3C3B, 0x4241403F
    .word 0x5454443, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x5050505
    .word 0x5050505, 0x5050505, 0x5050505, 0x5050505, 0x8
    .word 0x3001B80, 0xFF0B000C, 0x80001084, 0x2, 0x80002108
    .word 0x2, 0x8000318C, 0x2, 0x80004210, 0x2
    .word 0x0
dword_80392D8:    .word 0x8, 0x3001B80, 0xFF0B000C, 0x8000318C, 0x2, 0x80002108
    .word 0x2, 0x80001084, 0x2, 0x80000000, 0x1, 0x0
off_8039308:    .word unk_3001AE0
    .word 0x20, 0xFFFF0100, 0x87E672C, 0x1E, 0x84E0C4C, 0x1, 0x84E0C6C
    .word 0x1, 0x84E0C8C, 0x1, 0x84E0CAC, 0x1, 0x84E0CCC, 0x1
    .word 0x84E0CEC, 0x1, 0x0
dword_8039350:    .word 0xFF, 0xFF, 0xFFFF0310, 0xFFFFFFFF, 0x1E, 0x8D, 0x1
    .word 0x0
off_8039370:    .word unk_30019C0
    .word 0x20, 0xFFFF0200, 0x87E66EC, 0xA, 0x87E660C, 0x1, 0x0
dword_8039390:    .word 0xFF000006, 0xFF010106, 0xFF020206, 0xFF030306, 0xFFFFFFFF
    .word 0x1, 0x1E, 0x4, 0x76, 0x0
    .word 0x7, 0x0
    .word 0x4E200019, 0x1, 0xA, 0x0
    .word 0x7, 0x1, 0x4E20001A, 0x1, 0xA, 0x0
    .word 0x7, 0x1, 0x4E200A1A, 0x0
    .word 0x7, 0x2, 0x4E20001E, 0x1, 0x1E, 0x4, 0x76, 0x0
    .word 0x7, 0x3, 0x4ED00019, 0x1, 0xA, 0x0
    .word 0x7, 0x4, 0x4ED0801C, 0x1, 0xA
    .word 0x0
    .word 0x7, 0x4, 0x4ED0831C, 0x0
    .word 0x7, 0x5, 0x4ED0881C, 0x1, 0x3C, 0x4, 0xD7, 0x3, 0x4, 0xFF, 0x1
    .word 0x2, 0x3, 0x0
    .word 0x20, 0x1, 0x14, 0x4, 0xD7, 0x3, 0x4, 0xFF, 0x1, 0x1, 0x3, 0x0
dword_80394C0:    .word 0xFF, 0x1, 0x5, 0x0
dword_80394D0:    .word 0x7, 0x0
dword_80394D8:    .word 0x4E200A1A, 0x0
    .word 0x7, 0x1, 0x4E20001E, 0x0
    .word 0x7, 0x2, 0x4ED0831C, 0x0
    .word 0x7, 0x3, 0x4ED0881C, 0x0
    .word 0x8, 0x4, 0x1D, 0x0
    .word 0x8, 0x5, 0x11D, 0x0
    .word 0x8, 0x6, 0x21D, 0x0
    .word 0x8, 0x7, 0x31D, 0x0
    .word 0x8, 0x8, 0x41D
    .word 0x0
    .word 0x8, 0x9, 0x51D, 0x2
.endfunc // sub_8039198

.func
.thumb_func
sub_8039570:
    push {r4-r7,lr}
    mov r4, #0
    mov r6, #0
    b loc_803957E
loc_8039578:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r6, #1
loc_803957E:
    ldr r5, off_80395E0 // =byte_200A290 
    // memBlock
    add r0, r5, #0
    // numWords
    ldr r1, off_80395A0 // =0x1B0 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0x18
    strb r0, [r1]
    strb r4, [r5,#0x14] // (byte_200A2A4 - 0x200a290)
    strb r6, [r5,#0x17] // (byte_200A2A7 - 0x200a290)
    mov r0, #8
    strh r0, [r5,#0x24] // (word_200A2B4 - 0x200a290)
    mov r0, #0xb
    strh r0, [r5,#0x26] // (word_200A2B6 - 0x200a290)
    pop {r4-r7,pc}
    .byte 0, 0
off_80395A0:    .word 0x1B0
.endfunc // sub_8039570

cb_80395A4:
    push {r4-r7,lr}
    ldr r5, off_80395E0 // =byte_200A290 
    ldr r0, off_80395C4 // =off_80395C8 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800A7D0
    bne locret_80395C0
    mov r0, #0xda
    mov r1, #2
    bl sub_803C59C
locret_80395C0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80395C4:    .word off_80395C8
off_80395C8:    .word sub_80395E4+1
    .word sub_8039630+1
    .word loc_8039658+1
    .word loc_80399CE+1
    .word sub_803A690+1
    .word sub_803B160+1
off_80395E0:    .word byte_200A290
.func
.thumb_func
sub_80395E4:
    push {r4-r7,lr}
    bl sub_803FA42
    bl chatbox_8040818
    ldr r0, off_803962C // =0x40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x11
    bl sub_80015FC
    bl sub_8005F40
.endfunc // sub_80395E4

    bl sub_803B216
    bl sub_803BEC0
    bl sub_803BA28
    mov r0, #0x22 
    bl sub_80005F2
    mov r6, #8
    mov r7, #0
    bl sub_803C3E0
    bne loc_8039626
    mov r6, #0x10
    mov r7, #0
loc_8039626:
    strb r6, [r5]
    strb r7, [r5,#1]
    pop {r4-r7,pc}
off_803962C:    .word 0x40
.func
.thumb_func
sub_8039630:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_8039652
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    bl chatbox_8040818
    bl sub_802F530
    ldr r0, off_8039654 // =0x40 
    bl sub_8001778
locret_8039652:
    pop {r4-r7,pc}
off_8039654:    .word 0x40
.endfunc // sub_8039630

loc_8039658:
    push {r4-r7,lr}
    ldr r0, off_8039670 // =off_8039674 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    pop {r4-r7,pc}
    .byte 0, 0
off_8039670:    .word off_8039674
off_8039674:    .word sub_8039694+1
    .word sub_803970C+1
    .word sub_8039734+1
    .word sub_80397DC+1
    .word sub_80397F6+1
    .word sub_8039816+1
    .word sub_8039830+1
    .word loc_8039846+1
.func
.thumb_func
sub_8039694:
    push {r4-r7,lr}
    bl sub_8005F40
.endfunc // sub_8039694

    bl sub_800183C
    ldr r0, dword_8039708 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl sub_802FF2C
    mov r0, #0x11
    bl sub_80015FC
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_803B216
    bl sub_803C2EC
    bl sub_8046664 // () -> void
    bl chatbox_8040818
    mov r0, #3
    strb r0, [r5,#5]
    ldrb r0, [r5,#0x14]
    tst r0, r0
    bne loc_80396F8
    ldrb r0, [r5,#0x17]
    tst r0, r0
    bne loc_80396E8
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    b locret_8039706
loc_80396E8:
    bl sub_803993A
    ldrb r0, [r5,#4]
    bl sub_803BB2C
    mov r0, #8
    strb r0, [r5,#1]
    b locret_8039706
loc_80396F8:
    bl sub_803993A
    ldrb r0, [r5,#0x14]
    bl sub_803BB2C
    mov r0, #4
    strb r0, [r5,#1]
locret_8039706:
    pop {r4-r7,pc}
dword_8039708:    .word 0x1F40
.func
.thumb_func
sub_803970C:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803972A
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_803972A
    mov r0, #0
    strb r0, [r5,#0x14]
    mov r0, #0
    bl sub_803BB2C
    mov r0, #8
    strb r0, [r5,#1]
loc_803972A:
    bl sub_803B880
.endfunc // sub_803970C

    bl sub_803C2F0
    pop {r4-r7,pc}
.func
.thumb_func
sub_8039734:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_80397A8
    bl sub_803995C
    cmp r0, #1
    beq loc_8039794
    cmp r0, #2
    beq loc_803974E
    cmp r0, #3
    beq loc_803974E
    b loc_80397A8
loc_803974E:
    mov r0, #0x67 
    bl sound_play
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_803976C
    cmp r0, #2
    beq loc_8039780
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_80397A8
loc_803976C:
    mov r0, #0x67 
    bl sound_play
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_80397A8
loc_8039780:
    mov r0, #0x67 
    bl sound_play
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x14
    strb r0, [r5,#1]
    b loc_80397A8
loc_8039794:
    mov r0, #0x68 
    bl sound_play
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x18
    strb r0, [r5,#1]
    b loc_80397A8
loc_80397A8:
    bl sub_80397BC
.endfunc // sub_8039734

    ldrb r0, [r5,#4]
    ldrb r1, [r5,#6]
    cmp r0, r1
    beq locret_80397BA
    add r0, #0
    bl sub_803BB2C
locret_80397BA:
    pop {r4-r7,pc}
.func
.thumb_func
sub_80397BC:
    push {r4-r7,lr}
    bl sub_803B880
.endfunc // sub_80397BC

    bl sub_803C2F0
    mov r0, #0x38 
    ldrb r1, [r5,#4]
    mov r2, #0x10
    mul r1, r2
    add r1, #0x1c
    mov r2, #1
    mov r3, #0
    mov r4, #0
    bl sub_803BC02
    pop {r4-r7,pc}
.func
.thumb_func
sub_80397DC:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_80397F0
    bl sub_802FF2C
    mov r0, #0xc
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_80397F0:
    bl sub_80397BC
.endfunc // sub_80397DC

    pop {r4-r7,pc}
.func
.thumb_func
sub_80397F6:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8039810
    bl sub_802FF2C
    mov r0, #0
    strb r0, [r5,#8]
    strb r0, [r5,#0xa]
    mov r0, #0x10
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_8039810:
    bl sub_80397BC
.endfunc // sub_80397F6

    pop {r4-r7,pc}
.func
.thumb_func
sub_8039816:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803982A
    bl sub_802FF2C
    mov r0, #0x14
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803982A:
    bl sub_80397BC
.endfunc // sub_8039816

    pop {r4-r7,pc}
.func
.thumb_func
sub_8039830:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8039840
    bl sub_802FF2C
    mov r0, #4
    strb r0, [r5]
loc_8039840:
    bl sub_80397BC
.endfunc // sub_8039830

    pop {r4-r7,pc}
loc_8039846:
    push {r4-r7,lr}
    ldr r0, off_8039854 // =off_8039858 
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_8039854:    .word off_8039858
off_8039858:    .word sub_8039864+1
    .word sub_8039888+1
    .word sub_80398B0+1
.func
.thumb_func
sub_8039864:
    push {r4-r7,lr}
    ldr r0, dword_8039880 // =0x1240 
    bl sub_8001778
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0
    bl sub_803BB7C
    ldr r0, off_8039884 // =dword_8039390+20 
    str r0, [r5,#0x2c]
    mov r0, #4
    strb r0, [r5,#2]
    pop {r4-r7,pc}
dword_8039880:    .word 0x1240
off_8039884:    .word dword_8039390+0x14
.endfunc // sub_8039864

.func
.thumb_func
sub_8039888:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #4
    tst r0, r1
    bne loc_803989C
    bl sub_80398DC
    bne locret_80398AE
loc_803989C:
    mov r0, #4
    mov r1, #0xff
    bl engine_setScreeneffect
    mov r0, #0xd7
    bl sound_play
    mov r0, #8
    strb r0, [r5,#2]
locret_80398AE:
    pop {r4-r7,pc}
.endfunc // sub_8039888

.func
.thumb_func
sub_80398B0:
    push {r4-r7,lr}
    ldr r0, dword_80398D8 // =0x1F40 
    bl sub_8001778
    ldrb r0, [r5,#4]
    bl sub_803BB2C
    bl sub_8046664 // () -> void
    bl sub_803993A
    mov r0, #0
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5,#1]
    mov r0, #0
    strb r0, [r5,#2]
    pop {r4-r7,pc}
dword_80398D8:    .word 0x1F40
.endfunc // sub_80398B0

.func
.thumb_func
sub_80398DC:
    push {r4-r7,lr}
    mov r4, #1
    ldr r7, [r5,#0x2c]
    bl sub_803BB80
    beq loc_8039932
loc_80398E8:
    ldr r0, [r7]
    cmp r0, #0
    beq loc_8039900
    cmp r0, #1
    beq loc_803990E
    cmp r0, #2
    beq loc_8039918
    cmp r0, #3
    beq loc_803991C
    cmp r0, #4
    beq loc_8039928
    b loc_8039918
loc_8039900:
    ldr r0, [r7,#4]
    ldr r1, [r7,#8]
    ldr r2, [r7,#0xc]
    bl sub_8046670
    add r7, #0x10
    b loc_80398E8
loc_803990E:
    ldr r0, [r7,#4]
    bl sub_803BB7C
    add r7, #8
    b loc_8039932
loc_8039918:
    mov r4, #0
    b loc_8039932
loc_803991C:
    ldr r0, [r7,#4]
    ldr r1, [r7,#8]
    bl engine_setScreeneffect
    add r7, #0xc
    b loc_80398E8
loc_8039928:
    ldr r0, [r7,#4]
    bl sound_play
    add r7, #8
    b loc_80398E8
loc_8039932:
    str r7, [r5,#0x2c]
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_80398DC

.func
.thumb_func
sub_803993A:
    push {r4-r7,lr}
    ldr r7, off_8039958 // =dword_80394C0+12 
    bl sub_8046664 // () -> void
loc_8039942:
    ldr r0, [r7]
    cmp r0, #2
    beq locret_8039956
    ldr r0, [r7,#4]
    ldr r1, [r7,#8]
    ldr r2, [r7,#0xc]
    bl sub_8046670
    add r7, #0x10
    b loc_8039942
locret_8039956:
    pop {r4-r7,pc}
off_8039958:    .word dword_80394C0+0xC
.endfunc // sub_803993A

.func
.thumb_func
sub_803995C:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    strb r0, [r5,#6]
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r7, [r7,#2]
    mov r4, #0
    mov r0, #2
    tst r0, r7
    beq loc_8039974
    mov r4, #1
    b loc_80399C8
loc_8039974:
    mov r0, #1
    tst r0, r7
    beq loc_803997E
    mov r4, #2
    b loc_80399C8
loc_803997E:
    mov r0, #8
    tst r0, r7
    beq loc_8039988
    mov r4, #3
    b loc_80399C8
loc_8039988:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r7, [r7,#4]
    mov r0, #0x40 
    tst r0, r7
    beq loc_80399AA
    mov r0, #0x66 
    bl sound_play
    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    bge loc_80399C8
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#4]
    b loc_80399C8
loc_80399AA:
    mov r0, #0x80
    tst r0, r7
    beq loc_80399C8
    mov r0, #0x66 
    bl sound_play
    ldrb r0, [r5,#4]
    add r0, #1
    strb r0, [r5,#4]
    ldrb r1, [r5,#5]
    cmp r0, r1
    blt loc_80399C8
    mov r0, #0
    strb r0, [r5,#4]
    b loc_80399C8
loc_80399C8:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_803995C

loc_80399CE:
    push {r4-r7,lr}
    ldr r0, off_80399E4 // =off_80399E8 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_803CB78
    bl sub_803C530
    pop {r4-r7,pc}
off_80399E4:    .word off_80399E8
off_80399E8:    .word sub_8039A58+1
    .word sub_8039AB8+1
    .word sub_8039AE4+1
    .word sub_8039B0A+1
    .word sub_8039B60+1
    .word sub_8039B82+1
    .word sub_8039B98+1
    .word sub_8039BC0+1
    .word sub_8039C14+1
    .word loc_8039C32+1
    .word sub_8039D08+1
    .word sub_8039D66+1
    .word sub_8039D9A+1
    .word sub_8039DB4+1
    .word sub_8039E2C+1
    .word sub_8039E80+1
    .word sub_8039EBA+1
    .word loc_8039ECC+1
    .word sub_8039F78+1
    .word sub_8039FEC+1
    .word sub_803A03A+1
    .word sub_803A054+1
    .word sub_803A06C+1
    .word sub_803A086+1
    .word sub_803A0A4+1
    .word sub_803A0BE+1
    .word sub_803A0D4+1
    .word sub_803A0EE+1
.func
.thumb_func
sub_8039A58:
    push {r4-r7,lr}
    ldr r0, dword_8039AB0 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x12
    bl sub_80015FC
    bl sub_803B2E4
    bl chatbox_8040818
    mov r0, #2
    bl sub_803BE30
    bl sub_8046664 // () -> void
    // a1
    ldr r0, off_8039AB4 // =dword_8039390 
    bl sub_80465A0 // (void *a1) -> void
    bl sub_803C40C
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
    .byte 0, 0
dword_8039AB0:    .word 0x1F40
off_8039AB4:    .word dword_8039390
.endfunc // sub_8039A58

.func
.thumb_func
sub_8039AB8:
    push {r4-r7,lr}
    bl sub_81465BC
    tst r0, r0
    bne loc_8039ADA
    bl sub_803C320
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_8039ADE
loc_8039ADA:
    mov r0, #8
    strb r0, [r5,#1]
loc_8039ADE:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039AB8

.func
.thumb_func
sub_8039AE4:
    push {r4-r7,lr}
    bl sub_813D648
    beq loc_8039B00
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_8039B04
loc_8039B00:
    mov r0, #0xc
    strb r0, [r5,#1]
loc_8039B04:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039AE4

.func
.thumb_func
sub_8039B0A:
    push {r4-r7,lr}
    bl sub_8146588
    add r0, r5, #0
    add r0, #0xf0
    bl sub_814695C
    bl sub_803C418
    add r1, r0, #0
    mov r0, #0x80
    lsl r0, r0, #1
    add r0, r0, r5
    bl sub_81469BC
    bl sub_81465BC
    tst r0, r0
    bne loc_8039B48
    bl sub_803C320
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_8039B5A
loc_8039B48:
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0xa
    bl sub_803BB2C
    mov r0, #0x18
    strb r0, [r5,#1]
loc_8039B5A:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039B0A

.func
.thumb_func
sub_8039B60:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8039B7C
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8039B7C
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x14
    strb r0, [r5,#1]
loc_8039B7C:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039B60

.func
.thumb_func
sub_8039B82:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8039B92
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_8039B92:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039B82

.func
.thumb_func
sub_8039B98:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8039BBA
    bl sub_803A524
    bne loc_8039BBA
    bl sub_803C320
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0x1e
    bl sub_803BB7C
    mov r0, #0
    bl sub_803BB90
loc_8039BBA:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039B98

.func
.thumb_func
sub_8039BC0:
    push {r4-r7,lr}
    bl sub_803A558
    bne loc_8039C0E
    bl sub_803BB80
    beq loc_8039C0E
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #2
    tst r0, r1
    beq loc_8039BE6
    mov r0, #0x68 
    bl sub_803C28A
    mov r0, #0x68 
    strb r0, [r5,#1]
    b loc_8039C0E
loc_8039BE6:
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8039C0E
    bl sub_803BB94
    beq loc_8039C0E
    bl sub_803C558
    mov r0, #0x1e
    bl sub_803BB90
    bl sub_813D638
    beq loc_8039C0E
    mov r0, #0xb
    bl sub_803BB2C
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_8039C0E:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039BC0

.func
.thumb_func
sub_8039C14:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8039C2C
    mov r0, #0
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xb]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #0x24 
    strb r0, [r5,#1]
loc_8039C2C:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_8039C14

loc_8039C32:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_803CB00
    bl sub_803A558
    bne loc_8039C7C
    mov r0, #2
    bl sub_803CB18
    bne loc_8039C7C
    bl sub_813D638
    bne loc_8039C6A
    bl sub_803C320
    mov r0, #0x1c
    strb r0, [r5,#1]
    mov r0, #0x1e
    bl sub_803BB7C
    mov r0, #0
    bl sub_803BB90
    mov r0, #0xe
    bl sub_803BB2C
    b loc_8039C7C
loc_8039C6A:
    mov r0, #0x66 
    bl sub_803A5F4
    beq loc_8039C7C
    ldr r1, off_8039C88 // =dword_8039C8C 
    lsl r0, r0, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
loc_8039C7C:
    bl sub_803A104
    mov r0, #1
    bl sub_803CB0C
    pop {r4-r7,pc}
off_8039C88:    .word dword_8039C8C
dword_8039C8C:    .word 0x0
    .word sub_8039C9C+1
    .word sub_8039CB4+1
    .word sub_8039CB4+1
.func
.thumb_func
sub_8039C9C:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_803CB18
    bne loc_8039CB0
    mov r0, #0x68 
    bl sub_803C28A
    mov r0, #0x60 
    strb r0, [r5,#1]
loc_8039CB0:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8039C9C

.func
.thumb_func
sub_8039CB4:
    push {r4-r7,lr}
    bl sub_813D638
    add r2, r0, #0
    ldrb r0, [r5,#0xe]
    ldrb r1, [r5,#0xb]
    add r0, r0, r1
    cmp r0, r2
    bge loc_8039CF4
    bl sub_803C440
    add r2, r1, #0
    push {r0,r1}
    ldr r1, off_8039D00 // =unk_202AB00 
    ldr r3, off_8039D04 // =unk_202AF00 
    bl sub_803C150
    pop {r2,r3}
    ldr r0, off_8039D00 // =unk_202AB00 
    ldr r1, off_8039D04 // =unk_202AF00 
    bl sub_803C2AA
    mov r0, #0xc
    bl sub_803BB2C
    mov r0, #0x28 
    strb r0, [r5,#1]
    mov r0, #0x67 
    bl sound_play
    mov r0, #1
    pop {r4-r7,pc}
loc_8039CF4:
    mov r0, #0x69 
    bl sound_play
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_8039D00:    .word unk_202AB00
off_8039D04:    .word unk_202AF00
.endfunc // sub_8039CB4

.func
.thumb_func
sub_8039D08:
    push {r4-r7,lr}
    bl sub_803A558
    bne loc_8039D60
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8039D60
    bl chatbox_8045F4C
    cmp r0, #0
    bne loc_8039D54
    bl sub_813D638
    add r2, r0, #0
    ldrb r0, [r5,#0xe]
    ldrb r1, [r5,#0xb]
    add r0, r0, r1
    cmp r0, r2
    bge loc_8039D54
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
    b loc_8039D60
loc_8039D54:
    mov r0, #0xb
    bl sub_803BB2C
    mov r0, #0x30 
    strb r0, [r5,#1]
    b loc_8039D60
loc_8039D60:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039D08

.func
.thumb_func
sub_8039D66:
    push {r4-r7,lr}
    bl sub_803A558
    bne loc_8039D94
    mov r0, #0x40 
    bl sub_803CB18
    bne loc_8039D94
    mov r0, #8
    bl sub_803CB18
    bne loc_8039D8E
    bl sub_803A252
    mov r0, #0xb
    bl sub_803BB2C
    mov r0, #0x34 
    strb r0, [r5,#1]
    b loc_8039D94
loc_8039D8E:
    mov r0, #0x48 
    strb r0, [r5,#1]
    b loc_8039D94
loc_8039D94:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039D66

.func
.thumb_func
sub_8039D9A:
    push {r4-r7,lr}
    bl sub_803A558
    bne loc_8039DAE
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8039DAE
    mov r0, #0x24 
    strb r0, [r5,#1]
loc_8039DAE:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039D9A

.func
.thumb_func
sub_8039DB4:
    push {r4-r7,lr}
    bl sub_803A558
    beq loc_8039DD4
    bl sub_814656C
    tst r0, r0
    bne loc_8039E26
    bl sub_803A25C
    mov r0, #0xf
    bl sub_803BB2C
    mov r0, #0x38 
    strb r0, [r5,#1]
    b loc_8039E26
loc_8039DD4:
    mov r0, #8
    bl sub_803CB18
    bne loc_8039DEC
    bl sub_803C330
    beq loc_8039DF2
    bl sub_803C2A0
    mov r0, #0x20 
    bl sub_803CB00
loc_8039DEC:
    mov r0, #0x48 
    strb r0, [r5,#1]
    b loc_8039E26
loc_8039DF2:
    mov r0, #0x10
    bl sub_803CB18
    beq loc_8039E26
    mov r0, #0x10
    lsl r0, r0, #4
    bl sub_803CB0C
    bl sub_8146CFC
    mov r0, #0
    bl sub_802D070
    bl sub_8147B24
    mov r0, #0x2c 
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_8000784
    mov r0, #0x78 
    bl sound_play
    mov r0, #0x3c 
    strb r0, [r5,#1]
loc_8039E26:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039DB4

.func
.thumb_func
sub_8039E2C:
    push {r4-r7,lr}
    bl sub_803A58C
    beq loc_8039E7A
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_8039E7A
    bl sub_8146588
    add r0, r5, #0
    add r0, #0xf0
    bl sub_814695C
    bl sub_803C418
    add r1, r0, #0
    mov r0, #0x80
    lsl r0, r0, #1
    add r0, r0, r5
    bl sub_81469BC
    bl sub_81465BC
    tst r0, r0
    bne loc_8039E70
    bl sub_803C320
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_8039E7A
loc_8039E70:
    mov r0, #0xa
    bl sub_803BB2C
    mov r0, #0x18
    strb r0, [r5,#1]
loc_8039E7A:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039E2C

.func
.thumb_func
sub_8039E80:
    push {r4-r7,lr}
    bl sub_803C620
    bl engine_isScreeneffectAnimating
    beq loc_8039EB4
    bl chatbox_8040818
    bl sub_8001850
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    bl sub_8006C22
    mov r0, #0
    bl getBattleSettingsFromList0
    bl sub_80071D4
    mov r0, #0x40 
    strb r0, [r5,#1]
    pop {r4-r7,pc}
loc_8039EB4:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039E80

.func
.thumb_func
sub_8039EBA:
    push {r4-r7,lr}
    bl loc_8007800
    bne locret_8039ECA
    strb r1, [r5,#0x14]
    strb r2, [r5,#0x15]
    mov r0, #0x44 
    strb r0, [r5,#1]
locret_8039ECA:
    pop {r4-r7,pc}
.endfunc // sub_8039EBA

loc_8039ECC:
    push {r4-r7,lr}
    ldr r0, off_8039EE0 // =dword_8039EE4 
    ldrb r1, [r5,#0x14]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_803F9E4
    pop {r4-r7,pc}
off_8039EE0:    .word dword_8039EE4
dword_8039EE4:    .word 0x0
    .word sub_8039F10+1
    .word sub_8039F24+1
    .word sub_8039F38+1
    .word sub_8039F48+1
    .word sub_8039F58+1
    .word 0x0, 0x0, 0x0
    .word sub_8039F62+1
    .word sub_8039F6A+1
.func
.thumb_func
sub_8039F10:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_803C3B6
    mov r0, #0x50 
    ldrb r1, [r5,#0x15]
    add r0, r0, r1
    bl loc_8039578
    pop {r4-r7,pc}
.endfunc // sub_8039F10

.func
.thumb_func
sub_8039F24:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803C3B6
    mov r0, #0x52 
    ldrb r1, [r5,#0x15]
    add r0, r0, r1
    bl loc_8039578
    pop {r4-r7,pc}
.endfunc // sub_8039F24

.func
.thumb_func
sub_8039F38:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803C3B6
    mov r0, #0x54 
    bl loc_8039578
    pop {r4-r7,pc}
.endfunc // sub_8039F38

.func
.thumb_func
sub_8039F48:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803C3B6
    mov r0, #0x55 
    bl loc_8039578
    pop {r4-r7,pc}
.endfunc // sub_8039F48

.func
.thumb_func
sub_8039F58:
    push {r4-r7,lr}
    mov r0, #0x56 
    bl loc_8039578
    pop {r4-r7,pc}
.endfunc // sub_8039F58

.func
.thumb_func
sub_8039F62:
    push {r4-r7,lr}
    bl sub_803CCC0
    pop {r4-r7,pc}
.endfunc // sub_8039F62

.func
.thumb_func
sub_8039F6A:
    push {r4-r7,lr}
    ldr r0, off_8039F74 // =sub_8039570+1 
    bl sub_803CB8C
    pop {r4-r7,pc}
off_8039F74:    .word sub_8039570+1
.endfunc // sub_8039F6A

.func
.thumb_func
sub_8039F78:
    push {r4-r7,lr}
    bl sub_803A58C
    push {r0}
    mov r0, #0x10
    bl sub_803CB18
    pop {r0}
    bne loc_8039FBA
    tst r0, r0
    beq loc_8039FE6
    bl sub_803A25C
    mov r0, #0x68 
    bl sound_play
    mov r4, #0xf
    mov r0, #0x80
    bl sub_803CB18
    bne loc_8039FAE
    mov r4, #0x10
    mov r0, #0x20 
    bl sub_803CB18
    bne loc_8039FAE
    mov r4, #0x11
loc_8039FAE:
    add r0, r4, #0
    bl sub_803BB2C
    mov r0, #0x4c 
    strb r0, [r5,#1]
    b loc_8039FE6
loc_8039FBA:
    mov r0, #0x10
    lsl r0, r0, #4
    bl sub_803CB0C
    bl sub_8146CFC
    mov r0, #0
    bl sub_802D070
    bl sub_8147B24
    mov r0, #0x2c 
    mov r1, #0x10
    bl engine_setScreeneffect
    bl sub_8000784
    mov r0, #0x78 
    bl sound_play
    mov r0, #0x3c 
    strb r0, [r5,#1]
loc_8039FE6:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039F78

.func
.thumb_func
sub_8039FEC:
    push {r4-r7,lr}
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_803A034
    bl sub_8146588
    add r0, r5, #0
    add r0, #0xf0
    bl sub_814695C
    bl sub_803C418
    add r1, r0, #0
    mov r0, #0x80
    lsl r0, r0, #1
    add r0, r0, r5
    bl sub_81469BC
    bl sub_81465BC
    tst r0, r0
    bne loc_803A02A
    bl sub_803C320
    mov r0, #0x13
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    b loc_803A034
loc_803A02A:
    mov r0, #0xa
    bl sub_803BB2C
    mov r0, #0x18
    strb r0, [r5,#1]
loc_803A034:
    bl sub_803A104
    pop {r4-r7,pc}
.endfunc // sub_8039FEC

.func
.thumb_func
sub_803A03A:
    push {r4-r7,lr}
    bl sub_803A5DC
    beq loc_803A04E
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x54 
    strb r0, [r5,#1]
loc_803A04E:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A03A

.func
.thumb_func
sub_803A054:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803A066
    bl sub_8001850
    bl sub_803CCC0
    pop {r4-r7,pc}
loc_803A066:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A054

.func
.thumb_func
sub_803A06C:
    push {r4-r7,lr}
    bl sub_803A58C
    beq loc_803A080
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x5c 
    strb r0, [r5,#1]
loc_803A080:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A06C

.func
.thumb_func
sub_803A086:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803A09A
    bl sub_8001850
    ldr r0, off_803A0A0 // =sub_8039570+1 
    bl sub_803CB8C
    pop {r4-r7,pc}
loc_803A09A:
    bl sub_803A1B0
    pop {r4-r7,pc}
off_803A0A0:    .word sub_8039570+1
.endfunc // sub_803A086

.func
.thumb_func
sub_803A0A4:
    push {r4-r7,lr}
    bl sub_803A58C
    beq loc_803A0B8
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x64 
    strb r0, [r5,#1]
loc_803A0B8:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A0A4

.func
.thumb_func
sub_803A0BE:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803A0CE
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803A0CE:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A0BE

.func
.thumb_func
sub_803A0D4:
    push {r4-r7,lr}
    bl sub_803A58C
    beq loc_803A0E8
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x6c 
    strb r0, [r5,#1]
loc_803A0E8:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A0D4

.func
.thumb_func
sub_803A0EE:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803A0FE
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803A0FE:
    bl sub_803A1B0
    pop {r4-r7,pc}
.endfunc // sub_803A0EE

.func
.thumb_func
sub_803A104:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_803A112
    bl loc_803A2A4
    beq locret_803A184
loc_803A112:
    bl sub_803A214
    mov r6, #0
loc_803A118:
    bl sub_813D638
    cmp r6, r0
    bge loc_803A176
    ldrb r0, [r5,#0xb]
    add r0, r0, r6
    bl sub_803C440
    add r7, r1, #0
    add r3, r0, #0
    mov r0, #0x24 
    mov r1, #0x23 
    add r0, #3
    mov r2, #0x20 
    mul r2, r6
    add r1, r1, r2
    mov r2, #6
    ldrh r4, [r5,#0x24]
    bl sub_803B814
    mov r0, #0x7b 
    mov r1, #0x23 
    mov r2, #0x20 
    mul r2, r6
    add r1, r1, r2
    mov r2, #7
    add r3, r7, #0
    ldrh r4, [r5,#0x26]
    bl sub_803B814
    add r0, r7, #0
    bl sub_8146728
    add r3, r0, #0
    mov r0, #0x21 
    mov r1, #0x1a
    mov r2, #0x20 
    mul r2, r6
    add r1, r1, r2
    mov r2, #4
    bl sub_803B9C0
    add r0, r6, #0
    mov r1, #1
    bl sub_803A238
    b loc_803A17A
loc_803A176:
    bl sub_803A1D8
loc_803A17A:
    add r6, #1
    cmp r6, #4
    blt loc_803A118
    bl sub_803A186
locret_803A184:
    pop {r4-r7,pc}
.endfunc // sub_803A104

.func
.thumb_func
sub_803A186:
    push {r4-r7,lr}
    mov r4, #0
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803A194
    mov r4, #1
loc_803A194:
    mov r0, #4
    mov r1, #0x21 
    ldrb r2, [r5,#0xe]
    mov r3, #0x20 
    mul r3, r2
    add r1, r1, r3
    add r2, r4, #0
    bl sub_803BBA4
.endfunc // sub_803A186

    bl sub_80465BC
    bl sub_80465F8 // () -> void
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A1B0:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_803A1BE
    bl loc_803A2A4
    beq locret_803A1D6
loc_803A1BE:
    bl sub_803A214
    mov r6, #0
loc_803A1C4:
    bl sub_803A1D8
    add r6, #1
    cmp r6, #4
    blt loc_803A1C4
    bl sub_80465BC
    bl sub_80465F8 // () -> void
locret_803A1D6:
    pop {r4-r7,pc}
.endfunc // sub_803A1B0

.func
.thumb_func
sub_803A1D8:
    push {r4-r7,lr}
    bl sub_803C458
    add r7, r1, #0
    add r3, r0, #0
    mov r0, #0x24 
    mov r1, #0x23 
    add r0, #3
    mov r2, #0x20 
    mul r2, r6
    add r1, r1, r2
    mov r2, #6
    ldrh r4, [r5,#0x24]
    bl sub_803B814
    mov r0, #0x7b 
    mov r1, #0x23 
    mov r2, #0x20 
    mul r2, r6
    add r1, r1, r2
    mov r2, #7
    add r3, r7, #0
    ldrh r4, [r5,#0x26]
    bl sub_803B814
    add r0, r6, #0
    mov r1, #0
    bl sub_803A238
    pop {r4-r7,pc}
.endfunc // sub_803A1D8

.func
.thumb_func
sub_803A214:
    push {r4-r7,lr}
    mov r3, #0xf0
    add r3, r3, r5
    mov r0, #0x43 
    mov r1, #2
    mov r2, #0xa
    ldrh r4, [r5,#0x24]
    bl sub_803B814
    bl sub_803C418
    add r3, r0, #0
    mov r0, #0x1a
    mov r1, #7
    mov r2, #4
    bl sub_803B9C0
.endfunc // sub_803A214

    pop {r4-r7,pc}
.func
.thumb_func
sub_803A238:
    push {r4-r7,lr}
    mov r2, #1
    lsl r2, r0
    tst r1, r1
    bne loc_803A24A
    add r0, r2, #0
    bl sub_803C30C
    b locret_803A250
loc_803A24A:
    add r0, r2, #0
    bl sub_803C302
locret_803A250:
    pop {r4-r7,pc}
.endfunc // sub_803A238

.func
.thumb_func
sub_803A252:
    mov r0, #1
    strb r0, [r5,#0x18]
    mov r0, #0
    strb r0, [r5,#2]
    mov pc, lr
.endfunc // sub_803A252

.func
.thumb_func
sub_803A25C:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#0x18]
    ldr r0, dword_803A298 // =0x1F40 
    bl sub_8001778
    mov r0, #0
    bl sub_8001B6C
    mov r0, #1
    bl sub_8001B6C
    mov r0, #4
    bl sub_803B91C
    mov r0, #5
    bl sub_803B91C
    mov r7, r10
    ldr r7, [r7,#8]
    mov r0, #0
    strh r0, [r7,#0x14]
    strh r0, [r7,#0x18]
    ldr r0, off_803A29C // =byte_87E672C 
    ldr r1, off_803A2A0 // =unk_3001AE0 
    mov r2, #0x20 
    bl sub_8000950
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803A298:    .word 0x1F40
off_803A29C:    .word byte_87E672C
off_803A2A0:    .word unk_3001AE0
.endfunc // sub_803A25C

loc_803A2A4:
    push {r4-r7,lr}
    ldr r0, off_803A2B4 // =off_803A2B8 
    ldrb r1, [r5,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    tst r0, r0
    pop {r4-r7,pc}
off_803A2B4:    .word off_803A2B8
off_803A2B8:    .word sub_803A2CC+1
    .word sub_803A334+1
    .word sub_803A39C+1
    .word sub_803A3C4+1
    .word sub_803A410+1
.func
.thumb_func
sub_803A2CC:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803A31C
    ldr r0, dword_803A324 // =0x7F40 
    bl sub_8001778
    mov r3, r10
    ldr r3, [r3,#0x1c]
    mov r0, #0
    strb r0, [r3,#1]
    mov r0, #0
    strb r0, [r3,#5]
    mov r0, #0xf0
    strb r0, [r3]
    mov r0, #0x61 
    strb r0, [r3,#4]
    mov r0, #0
    strb r0, [r3,#3]
    mov r0, #0x40 
    strb r0, [r3,#7]
    mov r0, #0xf0
    strb r0, [r3,#2]
    mov r0, #0xa1
    strb r0, [r3,#6]
    mov r0, #0x1f
    strb r0, [r3,#8]
    strb r0, [r3,#9]
    mov r0, #0x11
    strb r0, [r3,#0xa]
    ldr r0, off_803A328 // =dword_80391A8+256 
    bl sub_8001B1C
    ldr r0, off_803A32C // =word_87E672E 
    ldrh r0, [r0]
    ldr r1, off_803A330 // =word_3001960 
    strh r0, [r1]
    mov r0, #4
    strb r0, [r5,#2]
loc_803A31C:
    bl sub_803A186
.endfunc // sub_803A2CC

    mov r0, #1
    pop {r4-r7,pc}
dword_803A324:    .word 0x7F40
off_803A328:    .word dword_80391A8+0x100
off_803A32C:    .word word_87E672E
off_803A330:    .word word_3001960
.func
.thumb_func
sub_803A334:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x1c]
    ldrb r0, [r3,#5]
    add r0, #0x30 
    strb r0, [r3,#5]
    ldrb r0, [r3,#4]
    sub r0, #0x30 
    strb r0, [r3,#4]
    ldrb r0, [r3,#7]
    add r0, #0x30 
    strb r0, [r3,#7]
    ldrb r0, [r3,#6]
    sub r0, #0x30 
    strb r0, [r3,#6]
    cmp r0, #0x71 
    bne loc_803A394
    mov r0, #6
    bl sub_803B91C
    push {r4-r7}
    mov r0, #0
    mov r1, #0
    mov r2, #2
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
    pop {r4-r7}
    bl sub_803A422
    mov r0, #0
    strb r0, [r5,#0x19]
    strb r0, [r5,#0x1b]
    mov r0, #0xf
    strb r0, [r5,#0x1a]
    mov r0, #8
    strb r0, [r5,#2]
    b loc_803A398
loc_803A394:
    bl sub_803A186
.endfunc // sub_803A334

loc_803A398:
    mov r0, #0
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A39C:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x1a]
    sub r0, #1
    strb r0, [r5,#0x1a]
    bgt loc_803A3B6
    ldr r0, off_803A3C0 // =dword_80392D8 
    bl sub_8001B1C
    mov r0, #0xb7
    bl sound_play
    mov r0, #0xc
    strb r0, [r5,#2]
loc_803A3B6:
    bl sub_803A422
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_803A3C0:    .word dword_80392D8
.endfunc // sub_803A39C

.func
.thumb_func
sub_803A3C4:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#0x1c]
    ldrb r0, [r3,#5]
    sub r0, #8
    strb r0, [r3,#5]
    ldrb r0, [r3,#4]
    add r0, #8
    strb r0, [r3,#4]
    ldrb r0, [r3,#7]
    sub r0, #8
    strb r0, [r3,#7]
    ldrb r0, [r3,#6]
    add r0, #8
    strb r0, [r3,#6]
    cmp r0, #0x91
    bne loc_803A3FC
    ldr r0, dword_803A404 // =0x1F40 
    bl sub_8001778
    ldr r0, off_803A408 // =off_8039308 
    bl sub_8001B1C
    ldr r0, off_803A40C // =dword_8039350 
    bl sub_8001B1C
    mov r0, #0x10
    strb r0, [r5,#2]
loc_803A3FC:
    bl sub_803A422
    mov r0, #0
    pop {r4-r7,pc}
dword_803A404:    .word 0x1F40
off_803A408:    .word off_8039308
off_803A40C:    .word dword_8039350
.endfunc // sub_803A3C4

.func
.thumb_func
sub_803A410:
    push {r4-r7,lr}
    bl sub_803A422
    bl sub_803A470
.endfunc // sub_803A410

    bl sub_803A4D0
    mov r0, #0
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A422:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x19]
    sub r0, #1
    strb r0, [r5,#0x19]
    mov r7, #0
loc_803A42C:
    ldrb r0, [r5,#0x19]
    mov r1, #4
    add r1, r1, r7
    mov r2, #1
    ldr r3, off_803A468 // =unk_202A204 
    lsl r4, r7, #6
    add r3, r3, r4
    mov r4, #0x20 
    bl sub_80018E0
    add r7, #1
    cmp r7, #4
    blt loc_803A42C
    mov r7, #0
loc_803A448:
    ldrb r0, [r5,#0x19]
    mov r1, #0x20 
    sub r0, r1, r0
    mov r1, #0xc
    add r1, r1, r7
    mov r2, #1
    ldr r3, off_803A46C // =unk_202A604 
    lsl r4, r7, #6
    add r3, r3, r4
    mov r4, #0x20 
    bl sub_80018E0
    add r7, #1
    cmp r7, #4
    blt loc_803A448
    pop {r4-r7,pc}
off_803A468:    .word unk_202A204
off_803A46C:    .word unk_202A604
.endfunc // sub_803A422

.func
.thumb_func
sub_803A470:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#8]
    ldrb r0, [r5,#0x1b]
    add r0, #0xc
    mov r1, #0x78 
    cmp r0, r1
    ble loc_803A482
    add r0, r1, #0
loc_803A482:
    strb r0, [r5,#0x1b]
    mov r1, #7
    and r1, r0
    neg r1, r1
    add r1, #8
    strh r1, [r7,#0x14]
    push {r5}
    sub r0, #0x70 
    asr r0, r0, #3
    // a2
    mov r1, #4
    // a3
    mov r2, #2
    ldr r3, off_803A4C8 // =reqBBS_requestInfo_textOffsets 
    mov r4, #0xe
    mov r5, #4
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_803A470

    pop {r5}
    ldrb r0, [r5,#0x1b]
    mov r1, #0x70 
    sub r0, r1, r0
    add r0, #0x90
    mov r1, #7
    and r1, r0
    neg r1, r1
    add r1, #8
    strh r1, [r7,#0x18]
    asr r0, r0, #3
    mov r1, #0xc
    mov r2, #3
    ldr r3, off_803A4CC // =unk_2029E04 
    mov r4, #0xe
    mov r5, #4
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r4-r7,pc}
off_803A4C8:    .word reqBBS_requestInfo_textOffsets
off_803A4CC:    .word unk_2029E04
.func
.thumb_func
sub_803A4D0:
    push {r4-r7,lr}
    mov r3, #0xf0
    add r3, r3, r5
    mov r0, #8
    mov r1, #0x13
    mov r2, #6
    ldrh r4, [r5,#0x24]
    bl sub_803B814
    bl sub_803C418
    add r3, r0, #0
    mov r0, #0x58 
    mov r1, #0x18
    mov r2, #4
    bl sub_803BA00
.endfunc // sub_803A4D0

    ldr r7, off_803A51C // =0x110 
    add r7, r7, r5
    mov r0, #0xa8
    mov r1, #0x83
    mov r2, #6
    add r3, r7, #0
    ldrh r4, [r5,#0x24]
    bl sub_803B814
    ldr r7, off_803A520 // =0x120 
    add r7, r7, r5
    add r0, r7, #0
    bl sub_8146728
    add r3, r0, #0
    mov r0, #0x80
    mov r1, #0x88
    mov r2, #4
    bl sub_803BA00
    pop {r4-r7,pc}
off_803A51C:    .word 0x110
off_803A520:    .word 0x120
.func
.thumb_func
sub_803A524:
    push {r4-r7,lr}
    bl sub_803C620
    add r4, r0, #0
    tst r1, r1
    bne loc_803A546
    tst r0, r0
    beq loc_803A546
    bl sub_813D978
    ldr r3, off_803A550 // =unk_803A554 
    ldrb r0, [r3,r4]
    strb r0, [r5,#1]
    bl sub_8147F98
    mov r0, #1
    pop {r4-r7,pc}
loc_803A546:
    bl sub_8147F98
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_803A550:    .word unk_803A554
unk_803A554:    .byte 0
    .byte 0x50 
    .byte 0x58 
    .byte 0
.endfunc // sub_803A524

.func
.thumb_func
sub_803A558:
    push {r4-r7,lr}
    bl sub_803C620
    add r4, r0, #0
    tst r1, r1
    bne loc_803A584
    tst r0, r0
    beq loc_803A584
    bl sub_813D978
    ldr r3, off_803A5C0 // =dword_803A5C4 
    lsl r4, r4, #3
    add r3, r3, r4
    ldr r0, [r3]
    strb r0, [r5,#1]
    ldr r0, [r3,#4]
    mov lr, pc
    bx r0
    bl sub_8148214
    mov r0, #1
    pop {r4-r7,pc}
loc_803A584:
    bl sub_8148214
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803A558

.func
.thumb_func
sub_803A58C:
    push {r4-r7,lr}
    bl sub_803C620
    add r4, r0, #0
    tst r1, r1
    bne loc_803A5B6
    cmp r0, #1
    beq loc_803A5A6
    bl sub_813D60C
    bne loc_803A5B6
    mov r0, #1
    pop {r4-r7,pc}
loc_803A5A6:
    ldr r3, off_803A5C0 // =dword_803A5C4 
    lsl r4, r4, #3
    add r3, r3, r4
    ldr r0, [r3]
    strb r0, [r5,#1]
    ldr r0, [r3,#4]
    mov lr, pc
    bx r0
loc_803A5B6:
    bl sub_8148214
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_803A5C0:    .word dword_803A5C4
dword_803A5C4:    .word 0x0
    .word sub_803C34E+1
    .word 0x50
    .word sub_813D750+1
    .word 0x58
    .word sub_803C34E+1
.endfunc // sub_803A58C

.func
.thumb_func
sub_803A5DC:
    push {r4-r7,lr}
    bl sub_803C620
    bl sub_813D60C
    bne loc_803A5EC
    mov r0, #1
    pop {r4-r7,pc}
loc_803A5EC:
    bl sub_8148214
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803A5DC

.func
.thumb_func
sub_803A5F4:
    push {r4-r7,lr}
    add r6, r0, #0
    ldrb r0, [r5,#0xb]
    strb r0, [r5,#0xd]
    ldrb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r7, [r7,#2]
    mov r4, #0
    mov r0, #2
    tst r0, r7
    beq loc_803A612
    mov r4, #1
    b loc_803A674
loc_803A612:
    mov r0, #1
    tst r0, r7
    beq loc_803A61C
    mov r4, #2
    b loc_803A674
loc_803A61C:
    mov r0, #8
    tst r0, r7
    beq loc_803A626
    mov r4, #3
    b loc_803A674
loc_803A626:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r7, [r7,#4]
    mov r0, #0x40 
    tst r0, r7
    beq loc_803A64C
    ldrb r0, [r5,#0xe]
    sub r0, #1
    strb r0, [r5,#0xe]
    bge loc_803A674
    mov r0, #0
    strb r0, [r5,#0xe]
    ldrb r0, [r5,#0xb]
    sub r0, #1
    strb r0, [r5,#0xb]
    bge loc_803A674
    mov r0, #0
    strb r0, [r5,#0xb]
    b loc_803A674
loc_803A64C:
    mov r0, #0x80
    tst r0, r7
    beq loc_803A674
    ldrb r0, [r5,#0xe]
    add r0, #1
    strb r0, [r5,#0xe]
    cmp r0, #4
    blt loc_803A674
    mov r0, #3
    strb r0, [r5,#0xe]
    ldrb r1, [r5,#0xb]
    add r1, #1
    strb r1, [r5,#0xb]
    ldrb r2, [r5,#0xc]
    sub r2, r2, r0
    cmp r1, r2
    blt loc_803A674
    sub r2, #1
    strb r2, [r5,#0xb]
    b loc_803A674
loc_803A674:
    ldrb r0, [r5,#0xe]
    ldrb r1, [r5,#0xf]
    cmp r0, r1
    bne loc_803A684
    ldrb r0, [r5,#0xb]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq loc_803A68A
loc_803A684:
    add r0, r6, #0
    bl sound_play
loc_803A68A:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_803A5F4

.func
.thumb_func
sub_803A690:
    push {r4-r7,lr}
    ldr r0, off_803A6A0 // =off_803A6A4 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_803A6A0:    .word off_803A6A4
off_803A6A4:    .word sub_803A6E4+1
    .word sub_803A79A+1
    .word sub_803A9CC+1
    .word sub_803A9E6+1
    .word sub_803AC02+1
    .word sub_803AC2C+1
    .word sub_803AC56+1
    .word sub_803AC78+1
    .word sub_803ACA2+1
    .word sub_803ACB2+1
    .word sub_803ACC6+1
    .word sub_803AEE6+1
    .word sub_803AF1C+1
    .word sub_803AF46+1
    .word sub_803AF70+1
    .word sub_803AF90+1
.endfunc // sub_803A690

.func
.thumb_func
sub_803A6E4:
    push {r4-r7,lr}
    ldr r0, dword_803A73C // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x13
    bl sub_80015FC
    bl sub_803B3C8
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0
    strb r0, [r5,#8]
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x1c]
    strb r0, [r5,#0x1d]
    strb r0, [r5,#0x13]
    bl sub_803BEC0
    bl sub_803BA28
    bl sub_803A740
    bl sub_803A752
.endfunc // sub_803A6E4

    bl sub_803A764
    mov r0, #0
    bl sub_803BE30
    mov r0, #1
    bl sub_803BE30
    bl chatbox_8040818
    mov r0, #4
    strb r0, [r5,#1]
    pop {r4-r7,pc}
dword_803A73C:    .word 0x1F40
.func
.thumb_func
sub_803A740:
    push {r4-r7,lr}
    mov r4, #4
loc_803A744:
    add r0, r4, #0
    bl sub_803B522
    add r4, #1
    cmp r4, #9
    ble loc_803A744
    pop {r4-r7,pc}
.endfunc // sub_803A740

.func
.thumb_func
sub_803A752:
    push {r4-r7,lr}
    mov r4, #4
loc_803A756:
    add r0, r4, #0
    bl sub_803B674
    add r4, #1
    cmp r4, #0xf
    ble loc_803A756
    pop {r4-r7,pc}
.endfunc // sub_803A752

.func
.thumb_func
sub_803A764:
    push {r4-r7,lr}
    mov r4, #0x1d
loc_803A768:
    add r0, r4, #0
    bl sub_803B674
.endfunc // sub_803A764

    add r4, #1
    cmp r4, #0x20 
    ble loc_803A768
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A776:
    push {r4-r7,lr}
    mov r4, #0x10
loc_803A77A:
    add r0, r4, #0
    bl sub_803B674
.endfunc // sub_803A776

    add r4, #1
    cmp r4, #0x1b
    ble loc_803A77A
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A788:
    push {r4-r7,lr}
    mov r4, #0x21 
loc_803A78C:
    add r0, r4, #0
    bl sub_803B674
.endfunc // sub_803A788

    add r4, #1
    cmp r4, #0x25 
    ble loc_803A78C
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A79A:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803A7B2
    mov r0, #0x14
    bl sub_803BB2C
    mov r0, #0xf
    bl sub_803BB7C
    mov r0, #8
    strb r0, [r5,#1]
loc_803A7B2:
    bl sub_803A820
.endfunc // sub_803A79A

    pop {r4-r7,pc}
.func
.thumb_func
sub_803A7B8:
    push {r4-r7,lr}
    bl sub_803BA64
    bl sub_803BA74
    mov r0, #0
    bl sub_803BAE2
    mov r0, #0xa
    bl sub_803B522
    mov r0, #0x26 
    bl sub_803B674
.endfunc // sub_803A7B8

    mov r0, #0xb
    bl sub_803B522
    mov r0, #0x27 
    bl sub_803B674
    mov r0, #0
    bl sub_803A8B4
    bl sub_803A8E2
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A7EC:
    push {r4-r7,lr}
    bl sub_803BA64
    bl sub_803BA74
    mov r0, #1
    bl sub_803BAE2
    mov r0, #0xa
    bl sub_803B522
    mov r0, #0x26 
    bl sub_803B674
.endfunc // sub_803A7EC

    mov r0, #0xb
    bl sub_803B522
    mov r0, #0x27 
    bl sub_803B674
    mov r0, #0
    bl sub_803A8B4
    bl sub_803A8E2
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A820:
    push {r4-r7,lr}
    bl sub_803BA64
    bl sub_803BA74
    mov r0, #0xa
    bl sub_803B522
    mov r0, #0x26 
    bl sub_803B674
.endfunc // sub_803A820

    mov r0, #0xb
    bl sub_803B522
    mov r0, #0x27 
    bl sub_803B674
    mov r0, #0
    bl sub_803A8B4
    bl sub_803A8E2
    pop {r4-r7,pc}
.func
.thumb_func
sub_803A84E:
    mov r0, #1
    strb r0, [r5,#0x1e]
    mov r0, #0
    strb r0, [r5,#0x1c]
    mov r0, #0
    strb r0, [r5,#2]
    mov pc, lr
.endfunc // sub_803A84E

.func
.thumb_func
sub_803A85C:
    mov r0, #1
    strb r0, [r5,#0x1e]
    mov r0, #0
    strb r0, [r5,#0x1c]
    mov r0, #4
    strb r0, [r5,#2]
    mov pc, lr
.endfunc // sub_803A85C

.func
.thumb_func
sub_803A86A:
    mov r0, #1
    strb r0, [r5,#0x1f]
    mov r0, #0
    strb r0, [r5,#0x1d]
    mov r0, #0
    strb r0, [r5,#2]
    mov pc, lr
.endfunc // sub_803A86A

.func
.thumb_func
sub_803A878:
    mov r0, #1
    strb r0, [r5,#0x1f]
    mov r0, #0
    strb r0, [r5,#0x1d]
    mov r0, #4
    strb r0, [r5,#2]
    mov pc, lr
.endfunc // sub_803A878

.func
.thumb_func
sub_803A886:
    ldrb r2, [r5,r0]
    tst r2, r2
    beq locret_803A8B2
    ldrb r2, [r5,r1]
    sub r2, #1
    strb r2, [r5,r1]
    bgt locret_803A8B2
    ldrb r6, [r5,r0]
    add r6, #1
    strb r6, [r5,r0]
    lsl r6, r6, #3
    ldr r3, off_803A90C // =off_803A910 
    add r3, r3, r6
    ldr r2, [r3]
    tst r2, r2
    bne loc_803A8AE
    mov r2, #0
    strb r2, [r5,r0]
    strb r2, [r5,r1]
    b locret_803A8B2
loc_803A8AE:
    ldr r2, [r3,#4]
    strb r2, [r5,r1]
locret_803A8B2:
    mov pc, lr
.endfunc // sub_803A886

.func
.thumb_func
sub_803A8B4:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r0, #0x1e
    mov r1, #0x1c
    bl sub_803A886
    ldrb r6, [r5,#0x1e]
    ldr r3, off_803A90C // =off_803A910 
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_803A8CC
    ldr r3, off_803A95C // =off_803A960 
    // a1
loc_803A8CC:
    mov r0, #1
    mov r1, #1
    // a2
    add r1, r1, r4
    // a3
    mov r2, #0
    lsl r6, r6, #3
    ldr r3, [r3,r6]
    mov r4, #2
    mov r5, #2
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_803A8B4

    pop {r4-r7,pc}
.func
.thumb_func
sub_803A8E2:
    push {r4-r7,lr}
    mov r0, #0x1f
    mov r1, #0x1d
    bl sub_803A886
    ldrb r7, [r5,#0x1f]
    ldr r3, off_803A90C // =off_803A910 
    ldrb r0, [r5,#2]
    tst r0, r0
    bne loc_803A8F8
    ldr r3, off_803A95C // =off_803A960 
    // a1
loc_803A8F8:
    mov r0, #1
    // a2
    mov r1, #4
    // a3
    mov r2, #0
    lsl r7, r7, #3
    ldr r3, [r3,r7]
    mov r4, #2
    mov r5, #2
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_803A8E2

    pop {r4-r7,pc}
off_803A90C:    .word off_803A910
off_803A910:    .word unk_803A9AC
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x803A9C4, 0x1, 0x803A9BC
    .word 0x1, 0x803A9B4, 0x1, 0x803A9AC, 0x2, 0x803A9C4
    .word 0x2, 0x803A9BC, 0x2, 0x803A9B4, 0x2, 0x0
off_803A95C:    .word off_803A960
off_803A960:    .word unk_803A9AC
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x803A9B4, 0x1, 0x803A9BC
    .word 0x1, 0x803A9C4, 0x1, 0x803A9AC, 0x2, 0x803A9B4
    .word 0x2, 0x803A9BC, 0x2, 0x803A9C4, 0x2, 0x0
unk_803A9AC:    .byte 0xB0
    .byte 0x42 
    .byte 0xB1
    .byte 0x42 
    .byte 0xB2
    .byte 0x42 
    .byte 0xB3
    .byte 0x42 
    .byte 0xB4
    .byte 0x42 
    .byte 0xB5
    .byte 0x42 
    .byte 0xB6
    .byte 0x42 
    .byte 0xB7
    .byte 0x42 
    .byte 0xB8
    .byte 0x42 
    .byte 0xB9
    .byte 0x42 
    .byte 0xBA
    .byte 0x42 
    .byte 0xBB
    .byte 0x42 
    .byte 0xBC
    .byte 0x42 
    .byte 0xBD
    .byte 0x42 
    .byte 0xBE
    .byte 0x42 
    .byte 0xBF
    .byte 0x42 
.func
.thumb_func
sub_803A9CC:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803A9E0
    bl sub_803BB80
    beq loc_803A9E0
    mov r0, #0xc
    strb r0, [r5,#1]
loc_803A9E0:
    bl sub_803A820
.endfunc // sub_803A9CC

    pop {r4-r7,pc}
.func
.thumb_func
sub_803A9E6:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803AFC2
    beq loc_803A9FA
    ldr r1, off_803AA08 // =dword_803AA0C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_803A9FA:
    bl sub_803A7B8
.endfunc // sub_803A9E6

    mov r0, #0
    bl sub_803BC7C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803AA08:    .word dword_803AA0C
dword_803AA0C:    .word 0x0
    .word sub_803AA24+1
    .word loc_803AA40+1
    .word sub_803ABF4+1
    .word sub_803AB6C+1
    .word sub_803AB94+1
.func
.thumb_func
sub_803AA24:
    push {r4-r7,lr}
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C068
    beq locret_803AA3E
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x83
    bl sound_play
    bl sub_803A84E
locret_803AA3E:
    pop {r4-r7,pc}
.endfunc // sub_803AA24

loc_803AA40:
    push {r4-r7,lr}
    ldrb r0, [r5,#8]
    mov r1, #0
    cmp r0, #0x3f 
    beq loc_803AA70
    add r1, #4
    cmp r0, #0x40 
    beq loc_803AA70
    add r1, #4
    cmp r0, #0x3c 
    beq loc_803AA70
    add r1, #4
    cmp r0, #0x3a 
    beq loc_803AA70
    add r1, #4
    cmp r0, #0x3b 
    beq loc_803AA70
    add r1, #4
    cmp r0, #0x3d 
    beq loc_803AA70
    add r1, #4
    cmp r0, #0x3e 
    beq loc_803AA70
    add r1, #4
loc_803AA70:
    ldr r0, off_803AA7C // =off_803AA80 
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803AA7C:    .word off_803AA80
off_803AA80:    .word sub_803AAA0+1
    .word sub_803AAD8+1
    .word sub_803AAF6+1
    .word sub_803AB20+1
    .word sub_803AB46+1
    .word sub_803AB6C+1
    .word sub_803AB94+1
    .word sub_803ABB4+1
.func
.thumb_func
sub_803AAA0:
    push {r4-r7,lr}
    mov r0, #0x30 
    bl sub_803C248
    bne loc_803AAC6
    mov r0, #0x81
    bl sound_play
    mov r0, #0x16
    bl sub_803BB2C
    mov r0, #0x30 
    mov r1, #0x70 
    mov r2, #0x20 
    bl sub_803C0F6
    mov r0, #0x18
    strb r0, [r5,#1]
    pop {r4-r7,pc}
loc_803AAC6:
    mov r0, #0x69 
    bl sound_play
    mov r0, #0x14
    bl sub_803BB2C
    mov r0, #0x1c
    strb r0, [r5,#1]
    pop {r4-r7,pc}
.endfunc // sub_803AAA0

.func
.thumb_func
sub_803AAD8:
    push {r4-r7,lr}
    mov r0, #0x81
    bl sound_play
    mov r4, #0x1a
    bl sub_803C3E0
    beq loc_803AAEA
    mov r4, #0x18
loc_803AAEA:
    add r0, r4, #0
    bl sub_803BB2C
    mov r0, #0x10
    strb r0, [r5,#1]
    pop {r4-r7,pc}
.endfunc // sub_803AAD8

.func
.thumb_func
sub_803AAF6:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sound_play
    ldrb r0, [r5,#0x12]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#0x12]
    cmp r0, #0
    beq loc_803AB0C
    b loc_803AB16
loc_803AB0C:
    bl sub_803A752
    bl sub_803A764
    b locret_803AB1E
loc_803AB16:
    bl sub_803A776
.endfunc // sub_803AAF6

    bl sub_803A788
locret_803AB1E:
    pop {r4-r7,pc}
.func
.thumb_func
sub_803AB20:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x30 
    mov r2, #0x10
    bl sub_803BFA0
    beq loc_803AB3E
    mov r0, #0x20 
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    bl sub_803A85C
    pop {r4-r7,pc}
loc_803AB3E:
    mov r0, #0x69 
    bl sound_play
    pop {r4-r7,pc}
.endfunc // sub_803AB20

.func
.thumb_func
sub_803AB46:
    push {r4-r7,lr}
    mov r0, #1
    mov r1, #0x30 
    mov r2, #0x10
    bl sub_803BFA0
    beq loc_803AB64
    mov r0, #0x20 
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    bl sub_803A85C
    pop {r4-r7,pc}
loc_803AB64:
    mov r0, #0x69 
    bl sound_play
    pop {r4-r7,pc}
.endfunc // sub_803AB46

.func
.thumb_func
sub_803AB6C:
    push {r4-r7,lr}
    ldrb r4, [r5,#0x10]
    ldrh r1, [r5,#0x24]
    add r0, r4, #1
    cmp r0, r1
    bgt loc_803AB8E
    strb r0, [r5,#0x10]
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C040
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    pop {r4-r7,pc}
loc_803AB8E:
    bl sub_803ABDC
    pop {r4-r7,pc}
.endfunc // sub_803AB6C

.func
.thumb_func
sub_803AB94:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x10]
    sub r0, #1
    blt locret_803ABB2
    strb r0, [r5,#0x10]
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C0BE
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    b locret_803ABB2
locret_803ABB2:
    pop {r4-r7,pc}
.endfunc // sub_803AB94

.func
.thumb_func
sub_803ABB4:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x10]
    ldrh r1, [r5,#0x24]
    cmp r0, r1
    bge loc_803ABD6
    mov r0, #0x81
    bl sound_play
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803BF70
    bl sub_803A85C
    pop {r4-r7,pc}
loc_803ABD6:
    bl sub_803ABDC
    pop {r4-r7,pc}
.endfunc // sub_803ABB4

.func
.thumb_func
sub_803ABDC:
    push {r4-r7,lr}
    ldrb r0, [r5,#8]
    cmp r0, #0x3f 
    beq locret_803ABF2
    mov r0, #0x80
    bl sound_play
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x3f 
    strb r0, [r5,#8]
locret_803ABF2:
    pop {r4-r7,pc}
.endfunc // sub_803ABDC

.func
.thumb_func
sub_803ABF4:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sound_play
    mov r0, #0x3f 
    strb r0, [r5,#8]
    pop {r4-r7,pc}
.endfunc // sub_803ABF4

.func
.thumb_func
sub_803AC02:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803AC26
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_803AC1A
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_803AC26
loc_803AC1A:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x14
    strb r0, [r5,#1]
loc_803AC26:
    bl sub_803A820
.endfunc // sub_803AC02

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AC2C:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803AC50
    bl sub_803BA28
    bl sub_803C3E0
    beq loc_803AC48
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    b loc_803AC50
loc_803AC48:
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803AC50:
    bl sub_803A820
.endfunc // sub_803AC2C

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AC56:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803AC72
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_803AC6E
    mov r0, #0xc
    strb r0, [r5,#1]
    b loc_803AC72
loc_803AC6E:
    mov r0, #0x20 
    strb r0, [r5,#1]
loc_803AC72:
    bl sub_803A820
.endfunc // sub_803AC56

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AC78:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803AC9C
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
loc_803AC9C:
    bl sub_803A820
.endfunc // sub_803AC78

    pop {r4-r7,pc}
.func
.thumb_func
sub_803ACA2:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#8]
    mov r0, #0x24 
    strb r0, [r5,#1]
    bl sub_803A820
.endfunc // sub_803ACA2

    pop {r4-r7,pc}
.func
.thumb_func
sub_803ACB2:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803ACC0
    mov r0, #0x28 
    strb r0, [r5,#1]
loc_803ACC0:
    bl sub_803A820
.endfunc // sub_803ACB2

    pop {r4-r7,pc}
.func
.thumb_func
sub_803ACC6:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_803AFC2
    beq loc_803ACDA
    ldr r1, off_803ACE8 // =dword_803ACEC 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_803ACDA:
    bl sub_803A7EC
.endfunc // sub_803ACC6

    mov r0, #0
    bl sub_803BC7C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803ACE8:    .word dword_803ACEC
dword_803ACEC:    .word 0x0
    .word sub_803AD04+1
    .word loc_803AD20+1
    .word sub_803AED8+1
    .word sub_803AE50+1
    .word sub_803AE78+1
.func
.thumb_func
sub_803AD04:
    push {r4-r7,lr}
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C068
    beq locret_803AD1E
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x83
    bl sound_play
    bl sub_803A86A
locret_803AD1E:
    pop {r4-r7,pc}
.endfunc // sub_803AD04

loc_803AD20:
    push {r4-r7,lr}
    ldrb r0, [r5,#8]
    mov r1, #0
    cmp r0, #0x3f 
    beq loc_803AD50
    add r1, #4
    cmp r0, #0x40 
    beq loc_803AD50
    add r1, #4
    cmp r0, #0x3c 
    beq loc_803AD50
    add r1, #4
    cmp r0, #0x3a 
    beq loc_803AD50
    add r1, #4
    cmp r0, #0x3b 
    beq loc_803AD50
    add r1, #4
    cmp r0, #0x3d 
    beq loc_803AD50
    add r1, #4
    cmp r0, #0x3e 
    beq loc_803AD50
    add r1, #4
loc_803AD50:
    ldr r0, off_803AD5C // =off_803AD60 
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803AD5C:    .word off_803AD60
off_803AD60:    .word sub_803AD80+1
    .word sub_803ADB8+1
    .word sub_803ADDA+1
    .word sub_803AE04+1
    .word sub_803AE2A+1
    .word sub_803AE50+1
    .word sub_803AE78+1
    .word sub_803AE98+1
.func
.thumb_func
sub_803AD80:
    push {r4-r7,lr}
    mov r0, #0x90
    bl sub_803C248
    bne loc_803ADA6
    mov r0, #0x81
    bl sound_play
    mov r0, #0x17
    bl sub_803BB2C
    mov r0, #0x90
    mov r1, #0xd0
    mov r2, #0x20 
    bl sub_803C0F6
    mov r0, #0x34 
    strb r0, [r5,#1]
    pop {r4-r7,pc}
loc_803ADA6:
    mov r0, #0x69 
    bl sound_play
    mov r0, #0x15
    bl sub_803BB2C
    mov r0, #0x38 
    strb r0, [r5,#1]
    pop {r4-r7,pc}
.endfunc // sub_803AD80

.func
.thumb_func
sub_803ADB8:
    push {r4-r7,lr}
    mov r0, #0x81
    bl sound_play
    mov r4, #0x1b
    bl sub_803C3E0
    beq loc_803ADCA
    mov r4, #0x19
loc_803ADCA:
    add r0, r4, #0
    bl sub_803BB2C
    mov r0, #0
    strb r0, [r5,#3]
    mov r0, #0x2c 
    strb r0, [r5,#1]
    pop {r4-r7,pc}
.endfunc // sub_803ADB8

.func
.thumb_func
sub_803ADDA:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sound_play
    ldrb r0, [r5,#0x12]
    mov r1, #1
    eor r0, r1
    strb r0, [r5,#0x12]
    cmp r0, #0
    beq loc_803ADF0
    b loc_803ADFA
loc_803ADF0:
    bl sub_803A752
    bl sub_803A764
    b locret_803AE02
loc_803ADFA:
    bl sub_803A776
.endfunc // sub_803ADDA

    bl sub_803A788
locret_803AE02:
    pop {r4-r7,pc}
.func
.thumb_func
sub_803AE04:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x11
    bl sub_803BFA0
    beq loc_803AE22
    mov r0, #0x20 
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    bl sub_803A878
    pop {r4-r7,pc}
loc_803AE22:
    mov r0, #0x69 
    bl sound_play
    pop {r4-r7,pc}
.endfunc // sub_803AE04

.func
.thumb_func
sub_803AE2A:
    push {r4-r7,lr}
    mov r0, #1
    mov r1, #0x90
    mov r2, #0x11
    bl sub_803BFA0
    beq loc_803AE48
    mov r0, #0x20 
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    bl sub_803A878
    pop {r4-r7,pc}
loc_803AE48:
    mov r0, #0x69 
    bl sound_play
    pop {r4-r7,pc}
.endfunc // sub_803AE2A

.func
.thumb_func
sub_803AE50:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x11]
    add r0, #1
    ldrh r1, [r5,#0x26]
    cmp r0, r1
    bgt loc_803AE72
    strb r0, [r5,#0x11]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C040
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    pop {r4-r7,pc}
loc_803AE72:
    bl sub_803AEC0
    pop {r4-r7,pc}
.endfunc // sub_803AE50

.func
.thumb_func
sub_803AE78:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x11]
    sub r0, #1
    blt locret_803AE96
    strb r0, [r5,#0x11]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C0BE
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x80
    bl sound_play
    b locret_803AE96
locret_803AE96:
    pop {r4-r7,pc}
.endfunc // sub_803AE78

.func
.thumb_func
sub_803AE98:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x11]
    ldrh r1, [r5,#0x26]
    cmp r0, r1
    bge loc_803AEBA
    mov r0, #0x81
    bl sound_play
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803BF70
    bl sub_803A878
    pop {r4-r7,pc}
loc_803AEBA:
    bl sub_803AEC0
    pop {r4-r7,pc}
.endfunc // sub_803AE98

.func
.thumb_func
sub_803AEC0:
    push {r4-r7,lr}
    ldrb r0, [r5,#8]
    cmp r0, #0x3f 
    beq locret_803AED6
    mov r0, #0x80
    bl sound_play
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x3f 
    strb r0, [r5,#8]
locret_803AED6:
    pop {r4-r7,pc}
.endfunc // sub_803AEC0

.func
.thumb_func
sub_803AED8:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sound_play
    mov r0, #0x3f 
    strb r0, [r5,#8]
    pop {r4-r7,pc}
.endfunc // sub_803AED8

.func
.thumb_func
sub_803AEE6:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803AF16
    ldrb r0, [r5,#3]
    cmp r0, #1
    beq loc_803AF12
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_803AF04
    mov r0, #0x28 
    strb r0, [r5,#1]
    b loc_803AF16
loc_803AF04:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x30 
    strb r0, [r5,#1]
    b loc_803AF16
loc_803AF12:
    mov r0, #0xc
    strb r0, [r5,#1]
loc_803AF16:
    bl sub_803A820
.endfunc // sub_803AEE6

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AF1C:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803AF40
    bl sub_803BA28
    bl sub_803C3E0
    beq loc_803AF38
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
    b loc_803AF40
loc_803AF38:
    mov r0, #4
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803AF40:
    bl sub_803A820
.endfunc // sub_803AF1C

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AF46:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803AF6A
    bl chatbox_8045F4C
    cmp r0, #0
    beq loc_803AF5E
    mov r0, #0x28 
    strb r0, [r5,#1]
    b loc_803AF6A
loc_803AF5E:
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x3c 
    strb r0, [r5,#1]
loc_803AF6A:
    bl sub_803A820
.endfunc // sub_803AF46

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AF70:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_803AF8A
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C0BE
    mov r0, #0x28 
    strb r0, [r5,#1]
loc_803AF8A:
    bl sub_803A820
.endfunc // sub_803AF70

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AF90:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803AFBC
    mov r4, #0
    bl sub_803C3E0
    beq loc_803AFA2
    mov r4, #1
loc_803AFA2:
    strb r4, [r5,#4]
    bl sub_803C40C
    bl sub_803C3E8
    bl sub_803C3D8
    bl sub_803F9E4
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803AFBC:
    bl sub_803A820
.endfunc // sub_803AF90

    pop {r4-r7,pc}
.func
.thumb_func
sub_803AFC2:
    push {r4-r7,lr}
    lsl r6, r0, #2
    ldrb r0, [r5,#8]
    strb r0, [r5,#9]
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r3, [r7,#2]
    ldrh r7, [r7,#4]
    mov r4, #0
    mov r0, #2
    tst r0, r7
    beq loc_803AFDE
    mov r4, #1
    b loc_803B03A
loc_803AFDE:
    mov r0, #1
    tst r0, r7
    beq loc_803AFE8
    mov r4, #2
    b loc_803B03A
loc_803AFE8:
    mov r0, #8
    tst r0, r3
    beq loc_803AFF2
    mov r4, #3
    b loc_803B03A
loc_803AFF2:
    mov r0, #0x10
    lsl r0, r0, #4
    tst r0, r7
    beq loc_803AFFE
    mov r4, #4
    b loc_803B03A
loc_803AFFE:
    mov r0, #0x20 
    lsl r0, r0, #4
    tst r0, r7
    beq loc_803B00A
    mov r4, #5
    b loc_803B03A
loc_803B00A:
    mov r0, #0xf0
    tst r0, r7
    beq loc_803B03A
    mov r3, #0
    mov r0, #0x40 
    tst r0, r7
    bne loc_803B02A
    mov r3, #1
    mov r0, #0x80
    tst r0, r7
    bne loc_803B02A
    mov r3, #2
    mov r0, #0x20 
    tst r0, r7
    bne loc_803B02A
    mov r3, #3
loc_803B02A:
    ldr r0, off_803B050 // =off_803B054 
    ldr r0, [r0,r6]
    ldrb r1, [r5,#8]
    lsl r1, r1, #2
    add r0, r0, r1
    ldrb r0, [r0,r3]
    strb r0, [r5,#8]
    b loc_803B03A
loc_803B03A:
    ldrb r0, [r5,#8]
    ldrb r1, [r5,#9]
    cmp r0, r1
    beq loc_803B048
    mov r0, #0x7f
    bl sound_play
loc_803B048:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
off_803B050:    .word off_803B054
off_803B054:    .word unk_803B05C
    .word unk_803B05C
unk_803B05C:    .byte 0x19
    .byte 5
    .byte 0x3D 
    .byte 1
    .byte 0x15
    .byte 6
    .byte 0
    .byte 2
    .byte 0x16
    .byte 7
    .byte 1
    .byte 3
    .byte 0x17
    .byte 8
    .byte 2
    .byte 4
    .byte 0x18
    .byte 9
    .byte 3
    .byte 0x1E
    .byte 0
    .byte 0xA
    .byte 0x3E 
    .byte 6
    .byte 1
    .byte 0xB
    .byte 5
    .byte 7
    .byte 2
    .byte 0xC
    .byte 6
    .byte 8
    .byte 3
    .byte 0xD
    .byte 7
    .byte 9
    .byte 4
    .byte 0xE
    .byte 8
    .byte 0x23 
    .byte 5
    .byte 0xF
    .byte 0x3F 
    .byte 0xB
    .byte 6
    .byte 0x10
    .byte 0xA
    .byte 0xC
    .byte 7
    .byte 0x11
    .byte 0xB
    .byte 0xD
    .byte 8
    .byte 0x12
    .byte 0xC
    .byte 0xE
    .byte 9
    .byte 0x13
    .byte 0xD
    .byte 0x28 
    .byte 0xA
    .byte 0x14
    .byte 0x40 
    .byte 0x10
    .byte 0xB
    .byte 0x15
    .byte 0xF
    .byte 0x11
    .byte 0xC
    .byte 0x16
    .byte 0x10
    .byte 0x12
    .byte 0xD
    .byte 0x17
    .byte 0x11
    .byte 0x13
    .byte 0xE
    .byte 0x18
    .byte 0x12
    .byte 0x2D 
    .byte 0xF
    .byte 0x19
    .byte 0x36 
    .byte 0x15
    .byte 0x10
    .byte 1
    .byte 0x14
    .byte 0x16
    .byte 0x11
    .byte 2
    .byte 0x15
    .byte 0x17
    .byte 0x12
    .byte 3
    .byte 0x16
    .byte 0x18
    .byte 0x13
    .byte 4
    .byte 0x17
    .byte 0x32 
    .byte 0x14
    .byte 0
    .byte 0x37 
    .byte 0x37 
    .byte 0x15
    .byte 1
    .byte 0x19
    .byte 0x1B
    .byte 0x16
    .byte 2
    .byte 0x1A
    .byte 0x1C
    .byte 0x17
    .byte 3
    .byte 0x1B
    .byte 0x1D
    .byte 0x18
    .byte 4
    .byte 0x1C
    .byte 0x37 
    .byte 0x37 
    .byte 0x23 
    .byte 4
    .byte 0x1F
    .byte 0x33 
    .byte 0x24 
    .byte 0x1E
    .byte 0x20
    .byte 0x34 
    .byte 0x25 
    .byte 0x1F
    .byte 0x21 
    .byte 0x35 
    .byte 0x26 
    .byte 0x20
    .byte 0x22 
    .byte 0x36 
    .byte 0x27 
    .byte 0x21 
    .byte 0x3D 
    .byte 0x1E
    .byte 0x28 
    .byte 9
    .byte 0x24 
    .byte 0x1F
    .byte 0x29 
    .byte 0x23 
    .byte 0x25 
    .byte 0x20
    .byte 0x2A 
    .byte 0x24 
    .byte 0x26 
    .byte 0x21 
    .byte 0x2B 
    .byte 0x25 
    .byte 0x27 
    .byte 0x22 
    .byte 0x2C 
    .byte 0x26 
    .byte 0x3E 
    .byte 0x23 
    .byte 0x2D 
    .byte 0xE
    .byte 0x29 
    .byte 0x24 
    .byte 0x2E 
    .byte 0x28 
    .byte 0x2A 
    .byte 0x25 
    .byte 0x2F 
    .byte 0x29 
    .byte 0x2B 
    .byte 0x26 
    .byte 0x30 
    .byte 0x2A 
    .byte 0x2C 
    .byte 0x27 
    .byte 0x31 
    .byte 0x2B 
    .byte 0x3F 
    .byte 0x28 
    .byte 0x32 
    .byte 0x13
    .byte 0x2E 
    .byte 0x29 
    .byte 0x33 
    .byte 0x2D 
    .byte 0x2F 
    .byte 0x2A 
    .byte 0x34 
    .byte 0x2E 
    .byte 0x30 
    .byte 0x2B 
    .byte 0x35 
    .byte 0x2F 
    .byte 0x31 
    .byte 0x2C 
    .byte 0x36 
    .byte 0x30 
    .byte 0x40 
    .byte 0x2D 
    .byte 0x37 
    .byte 0x18
    .byte 0x33 
    .byte 0x2E 
    .byte 0x1F
    .byte 0x32 
    .byte 0x34 
    .byte 0x2F 
    .byte 0x20
    .byte 0x33 
    .byte 0x35 
    .byte 0x30 
    .byte 0x21 
    .byte 0x34 
    .byte 0x36 
    .byte 0x31 
    .byte 0x22 
    .byte 0x35 
    .byte 0x14
    .byte 0x32 
    .byte 0x1E
    .byte 0x19
    .byte 0x19
    .byte 0x33 
    .byte 0x1F
    .byte 0x37 
    .byte 0x39 
    .byte 0x34 
    .byte 0x20
    .byte 0x38 
    .byte 0x19
    .byte 0x35 
    .byte 0x21 
    .byte 0x39 
    .byte 0x3B 
    .byte 0x36 
    .byte 0x22 
    .byte 0x3A 
    .byte 0x19
    .byte 0x40 
    .byte 0x3D 
    .byte 0x22 
    .byte 0
    .byte 0x40 
    .byte 0x3E 
    .byte 0x22 
    .byte 0
    .byte 0x3D 
    .byte 0x3F 
    .byte 0x27 
    .byte 5
    .byte 0x3E 
    .byte 0x40 
    .byte 0x2C 
    .byte 0xA
    .byte 0x3F 
    .byte 0x3D 
    .byte 0x31 
    .byte 0xF
.endfunc // sub_803AFC2

.func
.thumb_func
sub_803B160:
    push {r4-r7,lr}
    ldr r0, off_803B170 // =off_803B174 
    ldrb r1, [r5,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_803B170:    .word off_803B174
off_803B174:    .word sub_803B184+1
    .word sub_803B1C4+1
    .word sub_803B1D6+1
    .word sub_803B1F8+1
.endfunc // sub_803B160

.func
.thumb_func
sub_803B184:
    push {r4-r7,lr}
    ldr r0, dword_803B1C0 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x14
    bl sub_80015FC
    mov r3, r10
    ldr r3, [r3,#8]
    mov r0, #4
    strh r0, [r3,#0x12]
    strh r0, [r3,#0x16]
    strh r0, [r3,#0x1a]
    bl sub_803B45C
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0x5a 
    bl sub_803BB2C
    mov r0, #4
    strb r0, [r5,#1]
    pop {r4-r7,pc}
    .byte 0, 0
dword_803B1C0:    .word 0x1F40
.endfunc // sub_803B184

.func
.thumb_func
sub_803B1C4:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803B1D0
    mov r0, #8
    strb r0, [r5,#1]
loc_803B1D0:
    bl sub_803B518
    pop {r4-r7,pc}
.endfunc // sub_803B1C4

.func
.thumb_func
sub_803B1D6:
    push {r4-r7,lr}
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_803B1F2
    mov r0, #0x68 
    bl sound_play
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0xc
    strb r0, [r5,#1]
loc_803B1F2:
    bl sub_803B518
    pop {r4-r7,pc}
.endfunc // sub_803B1D6

.func
.thumb_func
sub_803B1F8:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_803B210
    bl chatbox_8040818
    mov r0, #2
    strb r0, [r5,#4]
    mov r0, #8
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#1]
loc_803B210:
    bl sub_803B518
    pop {r4-r7,pc}
.endfunc // sub_803B1F8

.func
.thumb_func
sub_803B216:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // dataList
    ldr r0, off_803B240 // =dword_803B244 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    mov r0, #0
    bl sub_803B91C
    mov r0, #1
    bl sub_803B91C
    mov r0, #2
    bl sub_803B91C
    pop {r4-r7,pc}
    .byte 0, 0
off_803B240:    .word dword_803B244
dword_803B244:    .word 0x887E4500, 0x6004000, 0x2027A00, 0x884E0C4C, 0x6000020
    .word 0x2027A00, 0x884E0C4C, 0x0
    .word unk_2028200
    .word 0x887E5020, 0x0
    .word unk_2028A00
    .word 0x884E0C4C, 0x0
    .word unk_2029200
    .word dword_87E4FE0
    .word unk_30019A0
    .word 0x40
    .word 0x84E0554, 0x3001960, 0x40, 0x884E0C4C, 0x6011000
    .word 0x2027A00, 0x86A4D40, 0x6010020, 0x240, 0x86A4A40
    .word 0x6010300, 0x100, 0x86A5500, 0x3001550, 0x20
    .word 0x87E5000, 0x30016D0, 0x20, 0x884E0C4C, 0x0
    .word unk_2032A00
    .word 0x0
.endfunc // sub_803B216

.func
.thumb_func
sub_803B2E4:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // dataList
    ldr r0, off_803B30C // =dword_803B310 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    mov r0, #4
    bl sub_803B91C
    mov r0, #5
    bl sub_803B91C
    mov r0, #0
    strb r0, [r5,#0x18]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803B30C:    .word dword_803B310
dword_803B310:    .word 0x887E57BC, 0x6004000, 0x2027A00, 0x884E0C4C, 0x6000020
    .word 0x2027A00, 0x887E6840, 0x0
    .word unk_2028200
    .word 0x887E674C, 0x0
    .word unk_2028A00
    .word 0x884E0C4C, 0x0
    .word unk_2029200
    .word 0x884E0C4C, 0x0
    .word unk_2029A00
    .word 0x884E0C4C, 0x0
    .word unk_2029E00
    .word 0x884E0C4C, 0x0
    .word unk_202A200
    .word 0x884E0C4C, 0x0
    .word unk_202A600
    .word dword_87E660C
    .word unk_30019C0
    .word 0x140
    .word 0x84E0554, 0x3001980, 0x40, 0x86A5180, 0x6010020, 0x180
    .word 0x887E6924, 0x6010280, 0x2027A00, 0x86A5500, 0x3001550, 0x20
    .word 0x87E660C, 0x30015D0, 0x120, 0x0
.endfunc // sub_803B2E4

.func
.thumb_func
sub_803B3C8:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // dataList
    ldr r0, off_803B400 // =dword_803B404 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
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
off_803B400:    .word dword_803B404
dword_803B404:    .word 0x887E50D4, 0x6004000, 0x2027A00, 0x887E5550, 0x0
    .word unk_2028200
    .word 0x887E56A0, 0x600D600, 0x2027A00, 0x87E54B0, 0x3001980
    .word 0xA0, 0x86A4D40, 0x6010020, 0x240, 0x86A4A40
    .word 0x6010300, 0x100, 0x86A5500, 0x3001550, 0x20
    .word 0x0
.endfunc // sub_803B3C8

.func
.thumb_func
sub_803B45C:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    bl sub_8001850
    // dataList
    ldr r0, off_803B48C // =dword_803B490 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    mov r0, #7
    bl sub_803B91C
    mov r0, #8
    bl sub_803B91C
    mov r0, #9
    bl sub_803B91C
    mov r0, #0xa
    bl sub_803B91C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803B48C:    .word dword_803B490
dword_803B490:    .word 0x887E57BC, 0x6004000, 0x2027A00, 0x884E0C4C, 0x600C000
    .word 0x2027A00, 0x884E0C4C, 0x0
    .word unk_2028A00
    .word 0x884E0C4C, 0x0
    .word unk_2029200
    .word 0x884E0C4C, 0x0
    .word unk_2029A00
    .word 0x884E0C4C, 0x0
    .word unk_2029E00
    .word dword_87E660C
    .word unk_30019C0
    .word 0x140
    .word 0x84E0554, 0x3001A40, 0x40, 0x86A4D40, 0x6010020, 0x240
    .word 0x86A4A40, 0x6010300, 0x100, 0x86A5500, 0x3001550, 0x20
    .word 0x0
.endfunc // sub_803B45C

.func
.thumb_func
sub_803B518:
    push {r4-r7,lr}
    mov r0, #0xa
    bl sub_803B91C
    pop {r4-r7,pc}
.endfunc // sub_803B518

.func
.thumb_func
sub_803B522:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r1, [r7,#8]
    str r2, [r7,#0xc]
    str r3, [r7,#0x10]
    str r4, [r7,#0x14]
    ldr r7, off_803B570 // =dword_803B574 
    mov r1, #0x10
    mul r0, r1
    add r7, r7, r0
    ldr r0, off_803B634 // =dword_87E36F8 
    ldrb r1, [r7]
    ldrb r2, [r7,#3]
    lsl r2, r2, #0x10
    orr r1, r2
    ldr r2, [r7,#4]
    ldr r3, [r7,#0xc]
    ldrb r4, [r7,#1]
    ldrb r5, [r7,#2]
    ldr r6, off_803B638 // =dword_86ACD24+60 
    ldr r7, [r7,#8]
    mov r0, r8
    cmp r0, #0xa
    bge loc_803B562
    ldr r0, off_803B634 // =dword_87E36F8 
    bl sub_8045FC6
    b loc_803B568
loc_803B562:
    ldr r0, off_803B634 // =dword_87E36F8 
    bl loc_8045FE4
loc_803B568:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
    .byte 0, 0
off_803B570:    .word dword_803B574
dword_803B574:    .word 0x1071E, 0x202CA00, 0x202CE00, 0x6004000, 0x1071F
    .word 0x202D200, 0x202D600, 0x6004400, 0x10820, 0x202DA00
    .word 0x202DE00, 0x6004800, 0x10721, 0x202E200, 0x202E600
    .word 0x6004C00, 0x10432, 0x202CA00, 0x202CC00, 0x600C000
    .word 0x10433, 0x202CE00, 0x202D000, 0x600C200, 0x10334
    .word 0x202D200, 0x202D400, 0x600C400, 0x10335, 0x202D600
    .word 0x202D800, 0x600C600, 0x10336, 0x202DA00, 0x202DC00
    .word 0x600C800, 0x10337, 0x202DE00, 0x202E000, 0x600CA00
    .word 0x10738, 0x202DA00, 0x202EA00, 0x600CC00, 0x10B39
    .word 0x202DE00, 0x202EE00, 0x600D000
off_803B634:    .word dword_87E36F8
off_803B638:    .word dword_86ACD24+0x3C
.endfunc // sub_803B522

    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x38]
    str r1, [r7,#8]
    str r2, [r7,#0xc]
    str r3, [r7,#0x10]
    str r4, [r7,#0x14]
    ldr r7, off_803B668 // =off_803B66C 
    mov r1, #0xc
    mul r0, r1
    add r7, r7, r0
    ldr r0, off_803B66C // =dword_87E36F8 
    ldrb r1, [r7]
    ldr r2, [r7,#4]
    ldr r3, [r7,#8]
    ldrb r4, [r7,#1]
    ldrb r5, [r7,#2]
    ldr r6, off_803B670 // =dword_86A5D60 
    ldrb r7, [r7,#3]
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
off_803B668:    .word off_803B66C
off_803B66C:    .word dword_87E36F8
off_803B670:    .word dword_86A5D60
.func
.thumb_func
sub_803B674:
    push {r4-r7,lr}
    ldr r7, off_803B6A8 // =unk_803B6AC 
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldrh r0, [r7]
    ldrb r1, [r7,#2]
    ldrb r2, [r7,#3]
    ldrb r3, [r7,#4]
    ldr r4, off_803B6A4 // =unk_2030A00 
    bl sub_8001930
    // a1
    ldrb r0, [r7,#5]
    // a2
    ldrb r1, [r7,#6]
    // a3
    ldrb r2, [r7,#7]
    add r3, r4, #0
    ldrb r4, [r7,#3]
    lsl r4, r4, #1
    ldrb r5, [r7,#4]
    lsl r5, r5, #1
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_803B674

    pop {r4-r7,pc}
    .balign 4, 0x00
off_803B6A4:    .word unk_2030A00
off_803B6A8:    .word unk_803B6AC
unk_803B6AC:    .byte 0
    .byte 2
    .byte 8
    .byte 6
    .byte 1
    .byte 4
    .byte 4
    .byte 2
    .byte 0x20
    .byte 2
    .byte 8
    .byte 5
    .byte 1
    .byte 0x10
    .byte 4
    .byte 2
    .byte 0x40 
    .byte 2
    .byte 8
    .byte 7
    .byte 1
    .byte 0xA
    .byte 7
    .byte 2
    .byte 0x60 
    .byte 2
    .byte 8
    .byte 7
    .byte 1
    .byte 0xA
    .byte 9
    .byte 2
    .byte 1
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 7
    .byte 3
    .byte 0x15
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 9
    .byte 3
    .byte 0x29 
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0xB
    .byte 3
    .byte 0x3D 
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0xD
    .byte 3
    .byte 0x51 
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0xF
    .byte 3
    .byte 0x65 
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0x11
    .byte 3
    .byte 0x79 
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 7
    .byte 3
    .byte 0x8D
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 9
    .byte 3
    .byte 0xA1
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0xB
    .byte 3
    .byte 0xB5
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0xD
    .byte 3
    .byte 0xC9
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0xF
    .byte 3
    .byte 0xDD
    .byte 0
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0x11
    .byte 3
    .byte 1
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 7
    .byte 3
    .byte 0x15
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 9
    .byte 3
    .byte 0x29 
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0xB
    .byte 3
    .byte 0x3D 
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0xD
    .byte 3
    .byte 0x51 
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0xF
    .byte 3
    .byte 0x65 
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 1
    .byte 0x11
    .byte 3
    .byte 0x79 
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 7
    .byte 3
    .byte 0x8D
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 9
    .byte 3
    .byte 0xA1
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0xB
    .byte 3
    .byte 0xB5
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0xD
    .byte 3
    .byte 0xC9
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0xF
    .byte 3
    .byte 0xDD
    .byte 1
    .byte 3
    .byte 5
    .byte 1
    .byte 0xC
    .byte 0x11
    .byte 3
    .byte 0x10
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 5
    .byte 3
    .byte 0x20
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 7
    .byte 3
    .byte 0x30 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 9
    .byte 3
    .byte 0x40 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xB
    .byte 3
    .byte 0x50 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xD
    .byte 3
    .byte 0
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 7
    .byte 3
    .byte 0x20
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 9
    .byte 3
    .byte 0x30 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xB
    .byte 3
    .byte 0x40 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xD
    .byte 3
    .byte 0x50 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xF
    .byte 3
    .byte 0x60 
    .byte 2
    .byte 2
    .byte 5
    .byte 1
    .byte 8
    .byte 1
    .byte 2
    .byte 0x80
    .byte 2
    .byte 2
    .byte 0xB
    .byte 1
    .byte 8
    .byte 4
    .byte 2
    .byte 0x60 
    .byte 2
    .byte 2
    .byte 7
    .byte 1
    .byte 8
    .byte 2
    .byte 2
    .byte 0x20
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 7
    .byte 3
    .byte 0x30 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 9
    .byte 3
    .byte 0x40 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xB
    .byte 3
    .byte 0x50 
    .byte 2
    .byte 5
    .byte 3
    .byte 1
    .byte 0x17
    .byte 0xD
    .byte 3
.func
.thumb_func
sub_803B814:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    lsl r2, r2, #0xc
    ldr r0, off_803B874 // =0x420 
    orr r2, r0
    str r2, [sp,#8]
    add r7, r3, #0
    ldr r6, dword_803B870 // =0x40001000 
loc_803B828:
    sub r4, #1
    blt loc_803B86C
    ldrb r0, [r7]
    tst r0, r0
    beq loc_803B86C
    ldr r2, [sp]
    add r1, r2, #0
    ldr r3, off_803B878 // =dword_80391A8 
    ldrb r3, [r3,r0]
    lsl r3, r3, #3
    ldr r0, off_803B87C // =byte_2027200 
    add r0, #2
    ldrb r0, [r0,r3]
    bl chatbox_8045ED0
    add r1, r1, r0
    str r1, [sp]
    lsl r0, r2, #0x10
    ldr r1, [sp,#4]
    orr r0, r1
    ldr r1, dword_803B870 // =0x40001000 
    orr r0, r1
    ldr r1, [sp,#8]
    ldr r2, off_803B878 // =dword_80391A8 
    ldrb r3, [r7]
    ldrb r2, [r2,r3]
    lsl r2, r2, #2
    add r1, r1, r2
    mov r2, #2
    mov r3, #7
    bl sub_802FE28
    add r7, #1
    b loc_803B828
loc_803B86C:
    add sp, sp, #0xc
    pop {r4-r7,pc}
dword_803B870:    .word 0x40001000
off_803B874:    .word 0x420
off_803B878:    .word dword_80391A8
off_803B87C:    .word byte_2027200
.endfunc // sub_803B814

.func
.thumb_func
sub_803B880:
    push {r4-r7,lr}
    mov r6, #0xf
    mov r7, #0
    bl sub_803C398
    bl sub_8000C00
    add r4, r0, #0
    lsr r2, r4, #8
    and r2, r6
    add r7, r7, r2
    beq loc_803B8A0
    mov r0, #0x68 
    mov r1, #0x50 
    bl sub_803B8F8
loc_803B8A0:
    lsr r2, r4, #4
    and r2, r6
    add r7, r7, r2
    beq loc_803B8B0
    mov r0, #0x70 
    mov r1, #0x50 
    bl sub_803B8F8
    // <mkdata>
loc_803B8B0:
    .hword 0x22 // mov r2, r4
    and r2, r6
    mov r0, #0x78 
    mov r1, #0x50 
    bl sub_803B8F8
    mov r7, #0
    bl sub_803C398
    add r0, r1, #0
    bl sub_8000C00
    add r4, r0, #0
    lsr r2, r4, #8
    and r2, r6
    add r7, r7, r2
    beq loc_803B8DA
    mov r0, #0x94
    mov r1, #0x50 
    bl sub_803B8F8
loc_803B8DA:
    lsr r2, r4, #4
    and r2, r6
    add r7, r7, r2
    beq loc_803B8EA
    mov r0, #0x9c
    mov r1, #0x50 
    bl sub_803B8F8
    // <mkdata>
loc_803B8EA:
    .hword 0x22 // mov r2, r4
    and r2, r6
    mov r0, #0xa4
    mov r1, #0x50 
    bl sub_803B8F8
    pop {r4-r7,pc}
.endfunc // sub_803B880

.func
.thumb_func
sub_803B8F8:
    push {r4-r7,lr}
    lsl r4, r2, #1
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_803B914 // =0x9000 
    orr r0, r1
    ldr r1, dword_803B918 // =0xC080 
    add r1, r1, r4
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
.endfunc // sub_803B8F8

    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803B914:    .word 0x9000
dword_803B918:    .word 0xC080
.func
.thumb_func
sub_803B91C:
    push {r4-r7,lr}
    ldr r3, off_803B938 // =off_803B93C 
    mov r1, #0xc
    mul r0, r1
    add r3, r3, r0
    ldrb r0, [r3,#5]
    ldrb r1, [r3,#6]
    ldrb r2, [r3,#4]
    ldrb r4, [r3,#7]
    ldrb r5, [r3,#8]
    ldr r3, [r3]
    bl sub_8001890
    pop {r4-r7,pc}
off_803B938:    .word off_803B93C
off_803B93C:    .word unk_2028204
    .word 0x1E000003, 0xFFFFFF14, 0x2028A04, 0x20080002, 0xFFFFFF05
    .word 0x2029204, 0x1E000001, 0xFFFFFF20, 0x2028204, 0x1E000001
    .word 0xFFFFFF14, 0x2028204, 0x1E000002, 0xFFFFFF14, 0x2028A04
    .word 0x1E000003, 0xFFFFFF14, 0x2029204, 0x1E000001, 0xFFFFFF14
    .word 0x2028A04, 0x1E000001, 0xFFFFFF14, 0x2029204, 0x1E000002
    .word 0xFFFFFF14, 0x2029A04, 0x1E000003, 0xFFFFFF14, 0x2029E04
    .word 0x1E000000, 0xFFFFFF02
.endfunc // sub_803B91C

.func
.thumb_func
sub_803B9C0:
    push {r4-r7,lr}
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r4, dword_803B9F8 // =0x1000 
    add r4, r4, r0
    ldr r5, off_803B9FC // =0x414 
    lsl r2, r2, #0xc
    orr r5, r2
    add r0, r3, #0
    bl sub_8000C00
    add r6, r0, #0
    mov r7, #0x1c
loc_803B9DA:
    add r0, r4, #0
    lsl r1, r7, #0x10
    add r0, r0, r1
    add r1, r5, #0
    mov r2, #0xf
    and r2, r6
    add r1, r1, r2
    mov r2, #2
    mov r3, #7
    bl sub_802FE28
.endfunc // sub_803B9C0

    lsr r6, r6, #4
    sub r7, #7
    bge loc_803B9DA
    pop {r4-r7,pc}
dword_803B9F8:    .word 0x1000
off_803B9FC:    .word 0x414
.func
.thumb_func
sub_803BA00:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_803B9C0
.endfunc // sub_803BA00

    pop {r0,r1}
    sub r0, #0xc
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_803BA20 // =0x5000 
    orr r0, r1
    ldr r1, dword_803BA24 // =0x41E 
    mov r2, #2
    mov r3, #7
    bl sub_802FE28
    pop {r4-r7,pc}
dword_803BA20:    .word 0x5000
dword_803BA24:    .word 0x41E
.func
.thumb_func
sub_803BA28:
    push {r4-r7,lr}
    ldr r7, off_803BA60 // =word_2006770 
    mov r0, #8
    add r0, r0, r7
    add r1, r5, #0
    add r1, #0x30 
    mov r2, #0x20 
    bl copyMemory // (void *src, void* dest, int size) -> void
    mov r0, #0x28 
    add r0, r0, r7
    add r1, r5, #0
    add r1, #0x90
    mov r2, #0x20 
    bl copyMemory // (void *src, void* dest, int size) -> void
    mov r0, #0x10
    mov r1, #0x30 
    bl sub_803C132
    strb r0, [r5,#0x10]
    mov r0, #0x11
    mov r1, #0x90
    bl sub_803C132
    strb r0, [r5,#0x11]
    pop {r4-r7,pc}
    .byte 0, 0
off_803BA60:    .word word_2006770
.endfunc // sub_803BA28

.func
.thumb_func
sub_803BA64:
    push {r4-r7,lr}
    mov r0, #0x30 
    mov r1, #0x50 
    mov r2, #0x20 
    mov r3, #0x10
    bl sub_803BA84
    pop {r4-r7,pc}
.endfunc // sub_803BA64

.func
.thumb_func
sub_803BA74:
    push {r4-r7,lr}
    mov r0, #0x90
    mov r1, #0xb0
    mov r2, #0x20 
    mov r3, #0x11
    bl sub_803BA84
    pop {r4-r7,pc}
.endfunc // sub_803BA74

.func
.thumb_func
sub_803BA84:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r1, [sp]
    str r3, [sp,#4]
    add r0, r0, r5
    add r1, r1, r5
    bl copyMemory // (void *src, void* dest, int size) -> void
    ldr r7, [sp]
    add r7, r7, r5
    mov r4, #0
loc_803BA9A:
    ldrb r0, [r7,r4]
    cmp r0, #0xe6
    beq loc_803BAA4
    add r4, #2
    b loc_803BA9A
loc_803BAA4:
    ldr r7, [sp]
    add r7, r7, r5
    ldr r6, [sp,#4]
    ldrb r6, [r5,r6]
    lsl r6, r6, #1
loc_803BAAE:
    cmp r4, r6
    ble loc_803BAC8
    sub r4, #2
    blt loc_803BAC8
    ldrb r0, [r7,r4]
    cmp r0, #0xe5
    bne loc_803BAC8
    add r1, r7, r4
    mov r0, #0xb2
    strb r0, [r1]
    mov r0, #0xe5
    strb r0, [r1,#1]
    b loc_803BAAE
loc_803BAC8:
    sub r4, #2
    blt loc_803BADE
    ldrb r0, [r7,r4]
    cmp r0, #0xe5
    bne loc_803BAC8
    add r1, r7, r4
    mov r0, #0xb2
    strb r0, [r1]
    mov r0, #0xe5
    strb r0, [r1,#1]
    b loc_803BAC8
loc_803BADE:
    add sp, sp, #8
    pop {r4-r7,pc}
.endfunc // sub_803BA84

.func
.thumb_func
sub_803BAE2:
    push {r4-r7,lr}
    ldr r4, off_803BB24 // =unk_803BB28 
    lsl r0, r0, #1
    add r4, r4, r0
    ldrb r0, [r5,#0x13]
    add r0, #1
    strb r0, [r5,#0x13]
    mov r1, #0x3f 
    and r0, r1
    cmp r0, #0x20 
    bge locret_803BB20
    ldrb r0, [r4]
    ldrb r1, [r4,#1]
    add r7, r5, #0
    add r7, r7, r0
    ldrb r4, [r5,r1]
    lsl r4, r4, #1
    ldrb r0, [r7,r4]
    cmp r0, #0xe6
    beq loc_803BB16
    add r1, r7, r4
    mov r0, #0x9f
    strb r0, [r1]
    mov r0, #0xe5
    strb r0, [r1,#1]
    b locret_803BB20
loc_803BB16:
    add r7, r7, r4
    mov r0, #0x25 
    strb r0, [r7]
    mov r0, #0xe6
    strb r0, [r7,#1]
locret_803BB20:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803BB24:    .word unk_803BB28
unk_803BB28:    .byte 0x50 
    .byte 0x10
    .byte 0xB0
    .byte 0x11
.endfunc // sub_803BAE2

.func
.thumb_func
sub_803BB2C:
    push {r4-r7,lr}
    add r1, r0, #0
    mov r3, r10
    ldr r3, [r3]
    ldrb r3, [r3]
    cmp r3, #0x28 
    beq loc_803BB4A
    cmp r3, #0x30 
    beq loc_803BB4A
    cmp r3, #0x4c 
    beq loc_803BB52
    ldr r0, off_803BB68 // =dword_87E36F8 
    bl chatbox_803FE74
    b locret_803BB64
loc_803BB4A:
    ldr r0, off_803BB6C // =aV 
    bl chatbox_803FD9C
    b locret_803BB64
loc_803BB52:
    push {r1}
    bl sub_8123360
    lsl r1, r0, #2
    ldr r0, off_803BB70 // =off_803BB74 
    ldr r0, [r0,r1]
    pop {r1}
    bl chatbox_803FD9C
locret_803BB64:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803BB68:    .word dword_87E36F8
off_803BB6C:    .word aV
off_803BB70:    .word off_803BB74
off_803BB74:    .word aZz
    .word aLlllllllllllll
.endfunc // sub_803BB2C

.func
.thumb_func
sub_803BB7C:
    str r0, [r5,#0x28]
    mov pc, lr
.endfunc // sub_803BB7C

.func
.thumb_func
sub_803BB80:
    ldr r0, [r5,#0x28]
    sub r0, #1
    blt loc_803BB8C
    str r0, [r5,#0x28]
    mov r0, #0
    mov pc, lr
loc_803BB8C:
    mov r0, #1
    mov pc, lr
.endfunc // sub_803BB80

.func
.thumb_func
sub_803BB90:
    str r0, [r5,#0x2c]
    mov pc, lr
.endfunc // sub_803BB90

.func
.thumb_func
sub_803BB94:
    ldr r0, [r5,#0x2c]
    sub r0, #1
    blt loc_803BBA0
    str r0, [r5,#0x2c]
    mov r0, #0
    mov pc, lr
loc_803BBA0:
    mov r0, #1
    mov pc, lr
.endfunc // sub_803BB94

.func
.thumb_func
sub_803BBA4:
    push {r4-r7,lr}
    add r4, r2, #0
    lsl r0, r0, #0x10
    orr r1, r0
    ldr r0, dword_803BBD4 // =0x40001000 
    orr r0, r1
    ldrb r2, [r5,#7]
    lsl r2, r2, #1
    ldr r1, off_803BBD8 // =unk_803BBDC 
    ldrh r1, [r1,r2]
    ldr r2, unk_803BC00
    orr r1, r2
    mov r2, #2
    mov r3, #7
    bl sub_802FE28
.endfunc // sub_803BBA4

    ldrb r0, [r5,#7]
    add r0, r0, r4
    cmp r0, #0x12
    blt loc_803BBCE
    mov r0, #0
loc_803BBCE:
    strb r0, [r5,#7]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803BBD4:    .word 0x40001000
off_803BBD8:    .word unk_803BBDC
unk_803BBDC:    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 9
    .byte 0
    .byte 9
    .byte 0
    .byte 9
    .byte 0
    .byte 9
    .byte 0
    .byte 9
    .byte 0
    .byte 9
    .byte 0
unk_803BC00:    .byte 0
    .byte 8
.func
.thumb_func
sub_803BC02:
    push {r4-r7,lr}
    lsl r7, r4, #0xa
    add r4, r3, #0
    push {r2}
    lsl r0, r0, #0x10
    orr r1, r0
    ldr r0, dword_803BC4C // =0x40001000 
    orr r0, r1
    ldr r6, dword_803BC50 // =0x9000 
    orr r6, r1
    ldrb r2, [r5,#7]
    lsl r2, r2, #1
    ldr r1, off_803BC54 // =unk_803BC58 
    ldrh r1, [r1,r2]
    orr r1, r7
    add r7, r1, #4
    add r2, r4, #0
    mov r3, #0
    bl sub_802FE28
.endfunc // sub_803BC02

    mov r2, #0x10
    lsl r2, r2, #0x10
    add r0, r6, r2
    add r1, r7, #0
    add r2, r4, #0
    mov r3, #0
    bl sub_802FE28
    pop {r2}
    ldrb r0, [r5,#7]
    add r0, r0, r2
    cmp r0, #0x12
    blt loc_803BC46
    mov r0, #0
loc_803BC46:
    strb r0, [r5,#7]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803BC4C:    .word 0x40001000
dword_803BC50:    .word 0x9000
off_803BC54:    .word unk_803BC58
unk_803BC58:    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 7
    .byte 0
    .byte 7
    .byte 0
    .byte 7
    .byte 0
    .byte 7
    .byte 0
    .byte 7
    .byte 0
    .byte 7
    .byte 0
    .byte 0xD
    .byte 0
    .byte 0xD
    .byte 0
    .byte 0xD
    .byte 0
    .byte 0xD
    .byte 0
    .byte 0xD
    .byte 0
    .byte 0xD
    .byte 0
.func
.thumb_func
sub_803BC7C:
    push {r4-r7,lr}
    ldrb r1, [r5,#8]
    tst r0, r0
    beq loc_803BC8A
    cmp r1, #0x3c 
    blt loc_803BC8A
    add r1, #5
loc_803BC8A:
    ldr r4, off_803BD14 // =dword_803BD18 
    lsl r0, r1, #2
    add r4, r4, r0
    ldrb r0, [r4]
    lsl r0, r0, #0x10
    ldrb r6, [r4,#1]
    orr r6, r0
    ldr r0, dword_803BCD8 // =0x9000 
    orr r0, r6
    ldrb r2, [r5,#0xa]
    lsl r2, r2, #1
    ldr r1, off_803BCE0 // =dword_803BCE4 
    ldrh r1, [r1,r2]
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
.endfunc // sub_803BC7C

    ldr r0, dword_803BCDC // =0x9000 
    orr r0, r6
    ldrb r1, [r4,#2]
    lsl r1, r1, #0x10
    add r0, r0, r1
    ldrb r2, [r5,#0xa]
    lsl r2, r2, #1
    ldr r1, off_803BCE0 // =dword_803BCE4 
    ldrh r1, [r1,r2]
    add r1, #2
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
    ldrb r0, [r5,#0xa]
    add r0, #1
    cmp r0, #0x18
    blt loc_803BCD2
    mov r0, #0
loc_803BCD2:
    strb r0, [r5,#0xa]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803BCD8:    .word 0x9000
dword_803BCDC:    .word 0x9000
off_803BCE0:    .word dword_803BCE4
dword_803BCE4:    .word 0x180018, 0x180018, 0x180018, 0x180018, 0x180018, 0x180018
    .word 0x1C001C, 0x1C001C, 0x1C001C, 0x1C001C, 0x1C001C, 0x1C001C
off_803BD14:    .word dword_803BD18
dword_803BD18:    .word 0xFF0C3805, 0xFF0C3815, 0xFF0C3825, 0xFF0C3835, 0xFF0C3845
    .word 0xFF0C4805, 0xFF0C4815, 0xFF0C4825, 0xFF0C4835, 0xFF0C4845
    .word 0xFF0C5805, 0xFF0C5815, 0xFF0C5825, 0xFF0C5835, 0xFF0C5845
    .word 0xFF0C6805, 0xFF0C6815, 0xFF0C6825, 0xFF0C6835, 0xFF0C6845
    .word 0xFF0C7805, 0xFF0C7815, 0xFF0C7825, 0xFF0C7835, 0xFF0C7845
    .word 0xFF0C8805, 0xFF0C8815, 0xFF0C8825, 0xFF0C8835, 0xFF0C8845
    .word 0xFF0C385D, 0xFF0C386D, 0xFF0C387D, 0xFF0C388D, 0xFF0C389D
    .word 0xFF0C485D, 0xFF0C486D, 0xFF0C487D, 0xFF0C488D, 0xFF0C489D
    .word 0xFF0C585D, 0xFF0C586D, 0xFF0C587D, 0xFF0C588D, 0xFF0C589D
    .word 0xFF0C685D, 0xFF0C686D, 0xFF0C687D, 0xFF0C688D, 0xFF0C689D
    .word 0xFF0C785D, 0xFF0C786D, 0xFF0C787D, 0xFF0C788D, 0xFF0C789D
    .word 0xFF0C885D, 0xFF0C886D, 0xFF0C887D, 0xFF0C888D, 0xFF0C889D
    .word 0xFF2D38B7, 0xFF2038B7, 0xFF1F48B7, 0xFF1258B7, 0xFF1868B7
    .word 0xFF2D38B7, 0xFF2038B7, 0xFF1F48B7, 0xFF1258B7, 0xFF1868B7
.func
.thumb_func
sub_803BE30:
    push {r4-r7,lr}
    mov r1, #0x10
    mul r0, r1
    ldr r1, off_803BE88 // =off_803BE8C 
    add r0, r0, r1
    ldr r4, [r0]
    ldr r6, [r0,#4]
    ldr r1, [r0,#0xc]
    ldr r0, [r0,#8]
    sub sp, sp, #0x10
    str r4, [sp]
    str r6, [sp,#4]
    str r1, [sp,#0xc]
    str r0, [sp,#8]
loc_803BE4C:
    ldrb r0, [r4,#2]
    cmp r0, #0xe6
    beq loc_803BE78
    ldr r3, [sp,#8]
    push {r4-r7}
    add r0, r4, #0
    mov r1, #0
    lsl r1, r1, #0x10
    add r2, r6, #0
    mov r4, #0x20 
    lsl r4, r4, #8
    add r2, r2, r4
    add r7, r6, #0
    mov r4, #1
    mov r5, #1
    ldr r6, off_803BEBC // =dword_86ACD24+60 
    bl loc_8045FD0
    pop {r4-r7}
    add r4, #8
    add r6, #0x80
    b loc_803BE4C
loc_803BE78:
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    ldr r2, [sp,#0xc]
    bl loc_8000AC8
.endfunc // sub_803BE30

    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803BE88:    .word off_803BE8C
off_803BE8C:    .word unk_2024A00
    .word unk_2032A00
    .word 0x6008020, 0x1FE0, 0x2024E00, 0x2036A00, 0x600A020
    .word 0x1FE0, 0x2027200, 0x2032A00, 0x6010400, 0x5300
off_803BEBC:    .word dword_86ACD24+0x3C
.func
.thumb_func
sub_803BEC0:
    push {r4-r7,lr}
    ldr r6, off_803BF14 // =off_803BF18 
loc_803BEC4:
    ldr r4, [r6]
    tst r4, r4
    beq locret_803BF12
    ldr r1, [r6,#4]
    ldr r7, off_803BF6C // =dword_87E36F8 
    lsl r1, r1, #1
    ldrh r1, [r7,r1]
    add r7, r7, r1
loc_803BED4:
    ldrb r0, [r7]
    cmp r0, #0xe6
    beq loc_803BF0A
    cmp r0, #0xe4
    beq loc_803BEF4
    mov r0, #2
    strh r0, [r4]
    ldrb r0, [r7]
    strb r0, [r4,#2]
    mov r0, #0xe5
    strb r0, [r4,#3]
    mov r0, #0xe6
    strb r0, [r4,#4]
    add r7, #1
    add r4, #8
    b loc_803BED4
loc_803BEF4:
    mov r0, #2
    strh r0, [r4]
    ldrb r0, [r7]
    ldrb r1, [r7,#1]
    strb r0, [r4,#2]
    strb r1, [r4,#3]
    mov r0, #0xe6
    strb r0, [r4,#4]
    add r7, #2
    add r4, #8
    b loc_803BED4
loc_803BF0A:
    mov r0, #0xe6
    strb r0, [r4,#2]
    add r6, #8
    b loc_803BEC4
locret_803BF12:
    pop {r4-r7,pc}
off_803BF14:    .word off_803BF18
off_803BF18:    .word unk_2024A00
off_803BF1C:    .word 0x28
    .word unk_2024E00
    .word 0x29, 0x2025200, 0x2A, 0x2025600, 0x2B, 0x2025A00
    .word 0x2C, 0x2025E00, 0x2D, 0x2026200, 0x2E, 0x2026600
    .word 0x2F, 0x2026A00, 0x30, 0x2027200, 0x31, 0x0
off_803BF6C:    .word dword_87E36F8
.endfunc // sub_803BEC0

.func
.thumb_func
sub_803BF70:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r4, off_803BF9C // =off_803C208 
    ldrb r0, [r5,#0x12]
    mov r1, #0x10
    mul r0, r1
    ldr r4, [r4,r0]
    ldrb r0, [r5,#8]
    mov r1, #8
    mul r0, r1
    add r4, r4, r0
    ldrh r4, [r4,#2]
    ldrb r0, [r5,r6]
    lsl r0, r0, #1
    add r1, r5, #0
    add r1, r1, r7
    strh r4, [r0,r1]
    ldrb r0, [r5,r6]
    add r0, #1
    strb r0, [r5,r6]
    pop {r4-r7,pc}
off_803BF9C:    .word off_803C208
.endfunc // sub_803BF70

.func
.thumb_func
sub_803BFA0:
    push {r4-r7,lr}
    lsl r6, r0, #2
    add r1, r1, r5
    ldrb r0, [r5,r2]
    lsl r0, r0, #1
    add r0, r0, r1
    ldrb r3, [r0]
    cmp r3, #0xe5
    beq loc_803BFBA
    cmp r3, #0
    beq loc_803BFBA
    cmp r3, #0xe6
    bne loc_803BFC4
loc_803BFBA:
    ldrb r0, [r5,r2]
    sub r0, #1
    blt loc_803BFD6
    lsl r0, r0, #1
    add r0, r0, r1
loc_803BFC4:
    add r7, r0, #0
    ldrh r4, [r7]
    ldr r1, off_803BFDC // =off_803BFE0 
    ldr r1, [r1,r6]
    bl sub_803BFE8
    ldrh r0, [r7]
    cmp r0, r4
    pop {r4-r7,pc}
loc_803BFD6:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803BFDC:    .word off_803BFE0
off_803BFE0:    .word dword_803C228
    .word dword_803C238
.endfunc // sub_803BFA0

.func
.thumb_func
sub_803BFE8:
    push {r4-r7,lr}
    ldr r4, off_803C014 // =off_803C208 
    add r6, r0, #0
    add r7, r1, #0
loc_803BFF0:
    ldrb r0, [r7]
    cmp r0, #0xff
    beq locret_803C012
    ldr r0, [r4,r0]
    ldrh r1, [r6]
    bl sub_803C018
    cmp r0, #0xff
    beq loc_803C00E
    ldrb r1, [r7,#1]
    ldr r1, [r4,r1]
    add r2, r6, #0
    bl sub_803C034
    b locret_803C012
loc_803C00E:
    add r7, #2
    b loc_803BFF0
locret_803C012:
    pop {r4-r7,pc}
off_803C014:    .word off_803C208
.endfunc // sub_803BFE8

.func
.thumb_func
sub_803C018:
    mov r3, #0
loc_803C01A:
    ldrb r2, [r0,#2]
    cmp r2, #0xe6
    beq loc_803C030
    ldrh r2, [r0,#2]
    cmp r1, r2
    beq loc_803C02C
    add r3, #1
    add r0, #8
    b loc_803C01A
loc_803C02C:
    add r0, r3, #0
    mov pc, lr
loc_803C030:
    mov r0, #0xff
    mov pc, lr
.endfunc // sub_803C018

.func
.thumb_func
sub_803C034:
    mov r3, #8
    mul r0, r3
    add r1, r1, r0
    ldrh r0, [r1,#2]
    strh r0, [r2]
    mov pc, lr
.endfunc // sub_803C034

.func
.thumb_func
sub_803C040:
    push {r4-r7,lr}
    mov r4, #0
    ldrb r6, [r5,r0]
    lsl r6, r6, #1
    add r3, r5, r1
loc_803C04A:
    cmp r4, r6
    bge locret_803C066
    ldrb r0, [r3]
    cmp r0, #0xe6
    beq locret_803C066
    cmp r0, #0xe5
    bne loc_803C060
    mov r0, #0
    strb r0, [r3]
    mov r0, #0xe5
    strb r0, [r3,#1]
loc_803C060:
    add r3, #2
    add r4, #2
    b loc_803C04A
locret_803C066:
    pop {r4-r7,pc}
.endfunc // sub_803C040

.func
.thumb_func
sub_803C068:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    mov r4, #1
    ldrb r0, [r5,r6]
    lsl r0, r0, #1
    add r1, r5, #0
    add r1, r1, r7
    add r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xe5
    beq loc_803C088
    cmp r1, #0
    beq loc_803C088
    cmp r1, #0xe6
    bne loc_803C09E
loc_803C088:
    ldrb r0, [r5,r6]
    sub r0, #1
    bge loc_803C092
    mov r0, #0
    mov r4, #0
loc_803C092:
    strb r0, [r5,r6]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_803C0BE
    b loc_803C0B8
loc_803C09E:
    mov r2, #0
    strb r2, [r0]
    mov r2, #0xe5
    strb r2, [r0,#1]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_803C0BE
    ldrb r0, [r5,r6]
    sub r0, #1
    bge loc_803C0B6
    mov r0, #0
loc_803C0B6:
    strb r0, [r5,r6]
loc_803C0B8:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_803C068

.func
.thumb_func
sub_803C0BE:
    push {r4-r7,lr}
    mov r4, #0
    ldrb r6, [r5,r0]
    lsl r6, r6, #1
    add r3, r5, r1
    mov r4, #0
loc_803C0CA:
    ldrb r0, [r3,r4]
    cmp r0, #0xe6
    beq loc_803C0D4
    add r4, #2
    b loc_803C0CA
loc_803C0D4:
    cmp r4, r6
    blt locret_803C0F4
    ldrb r0, [r3,r4]
    cmp r0, #0xe6
    beq loc_803C0F0
    cmp r0, #0
    beq loc_803C0E6
    cmp r0, #0xe5
    bne locret_803C0F4
loc_803C0E6:
    add r1, r3, r4
    mov r0, #0xe5
    strb r0, [r1]
    mov r0, #0xe5
    strb r0, [r1,#1]
loc_803C0F0:
    sub r4, #2
    b loc_803C0D4
locret_803C0F4:
    pop {r4-r7,pc}
.endfunc // sub_803C0BE

.func
.thumb_func
sub_803C0F6:
    push {r4-r7,lr}
    add r4, r1, #0
    add r0, r0, r5
    add r1, r1, r5
    bl copyMemory // (void *src, void* dest, int size) -> void
    add r3, r5, r4
    mov r4, #0
loc_803C106:
    ldrb r0, [r3,r4]
    cmp r0, #0xe6
    beq loc_803C110
    add r4, #2
    b loc_803C106
loc_803C110:
    cmp r4, #0
    blt locret_803C130
    ldrb r0, [r3,r4]
    cmp r0, #0xe6
    beq loc_803C12C
    cmp r0, #0
    beq loc_803C122
    cmp r0, #0xe5
    bne locret_803C130
loc_803C122:
    add r1, r3, r4
    mov r0, #0xe5
    strb r0, [r1]
    mov r0, #0xe5
    strb r0, [r1,#1]
loc_803C12C:
    sub r4, #2
    b loc_803C110
locret_803C130:
    pop {r4-r7,pc}
.endfunc // sub_803C0F6

.func
.thumb_func
sub_803C132:
    push {r4-r7,lr}
    mov r4, #0
    ldrb r6, [r5,r0]
    lsl r6, r6, #1
    add r3, r5, r1
loc_803C13C:
    ldrb r0, [r3]
    cmp r0, #0xe6
    beq loc_803C14C
    cmp r0, #0xe5
    beq loc_803C14C
    add r4, #1
    add r3, #2
    b loc_803C13C
loc_803C14C:
    add r0, r4, #0
    pop {r4-r7,pc}
.endfunc // sub_803C132

.func
.thumb_func
sub_803C150:
    push {r4-r7,lr}
    push {r2,r3}
    ldrh r2, [r5,#0x24]
    mov r3, #0x20 
    bl sub_803C168
    pop {r0,r1}
    ldrh r2, [r5,#0x26]
    mov r3, #0x20 
    bl sub_803C168
    pop {r4-r7,pc}
.endfunc // sub_803C150

.func
.thumb_func
sub_803C168:
    push {r4-r7,lr}
    push {r0-r2}
    add r0, r1, #0
    add r1, r3, #0
    mov r2, #0xe5
    lsl r3, r2, #8
    orr r2, r3
    bl sub_800096C
    pop {r0-r2}
    push {r0-r2}
    mov r0, #0xe6
    lsl r2, r2, #1
    strb r0, [r1,r2]
    pop {r0-r2}
    ldr r7, off_803C1A4 // =unk_2026A00 
    add r7, #2
loc_803C18A:
    ldrb r3, [r0]
    tst r3, r3
    beq locret_803C1A0
    mov r4, #8
    mul r4, r3
    ldrh r3, [r7,r4]
    strh r3, [r1]
    add r0, #1
    add r1, #2
    sub r2, #1
    bgt loc_803C18A
locret_803C1A0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803C1A4:    .word unk_2026A00
.endfunc // sub_803C168

.func
.thumb_func
sub_803C1A8:
    push {r4-r7,lr}
    push {r2,r3}
    ldrh r2, [r5,#0x24]
    bl sub_803C1BC
    pop {r0,r1}
    ldrh r2, [r5,#0x26]
    bl sub_803C1BC
    pop {r4-r7,pc}
.endfunc // sub_803C1A8

.func
.thumb_func
sub_803C1BC:
    push {r4-r7,lr}
    mov r4, #0
    str r4, [r0]
    str r4, [r0,#4]
    str r4, [r0,#8]
    str r4, [r0,#0xc]
    ldr r7, off_803C204 // =unk_2026A00 
    add r7, #2
loc_803C1CC:
    ldrb r3, [r1]
    cmp r3, #0xe6
    beq locret_803C200
    cmp r3, #0xe5
    beq locret_803C200
    cmp r3, #0
    beq loc_803C1EE
    ldrh r3, [r1]
    mov r4, #0
loc_803C1DE:
    ldrb r6, [r7,r4]
    cmp r6, #0xe6
    beq loc_803C1EE
    ldrh r6, [r7,r4]
    add r4, #8
    cmp r3, r6
    bne loc_803C1DE
    b loc_803C1F2
loc_803C1EE:
    mov r4, #0x21 
    lsl r4, r4, #3
loc_803C1F2:
    lsr r4, r4, #3
    sub r4, #1
    strb r4, [r0]
    add r0, #1
    add r1, #2
    sub r2, #1
    bgt loc_803C1CC
locret_803C200:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803C204:    .word unk_2026A00
off_803C208:    .word unk_2024A00
    .word unk_2025200
    .word unk_2025A00
    .word unk_2026200
    .word unk_2024E00
    .word unk_2025600
    .word unk_2025E00
    .word unk_2026600
dword_803C228:    .word 0x40400, 0x14100408, 0x14181014, 0xFF
dword_803C238:    .word 0xC040800, 0x18100008, 0x10181C14, 0xFF
.endfunc // sub_803C1BC

.func
.thumb_func
sub_803C248:
    push {r4-r7,lr}
    add r3, r5, #0
    add r3, r3, r0
    mov r4, #1
loc_803C250:
    ldrb r0, [r3]
    add r3, #2
    cmp r0, #0xe6
    beq loc_803C264
    cmp r0, #0xe5
    beq loc_803C250
    cmp r0, #0
    beq loc_803C250
    mov r4, #0
    b loc_803C264
loc_803C264:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_803C248

.func
.thumb_func
sub_803C26A:
    push {r4-r7,lr}
    mov r0, #0x4c 
    lsl r0, r0, #2
    add r0, r0, r5
    mov r1, #4
    lsl r1, r1, #2
    bl sub_80008B4
    mov r0, #0x54 
    lsl r0, r0, #2
    add r0, r0, r5
    mov r1, #4
    lsl r1, r1, #2
    bl sub_80008B4
    pop {r4-r7,pc}
.endfunc // sub_803C26A

.func
.thumb_func
sub_803C28A:
    push {r4-r7,lr}
    add r6, r0, #0
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    add r0, r6, #0
    bl sound_play
    pop {r4-r7,pc}
.endfunc // sub_803C28A

.func
.thumb_func
sub_803C2A0:
    push {r4-r7,lr}
    mov r0, #8
    bl sub_803CB00
    pop {r4-r7,pc}
.endfunc // sub_803C2A0

.func
.thumb_func
sub_803C2AA:
    push {r4-r7,lr}
    add r4, r1, #0
    add r6, r2, #0
    add r7, r3, #0
    ldr r1, off_803C2DC // =unk_200A400 
    mov r2, #0x20 
    bl copyMemory // (void *src, void* dest, int size) -> void
    add r0, r4, #0
    ldr r1, off_803C2E0 // =unk_200A420 
    mov r2, #0x20 
    bl copyMemory // (void *src, void* dest, int size) -> void
    add r0, r6, #0
    ldr r1, off_803C2E4 // =unk_200A3A0 
    mov r2, #0x10
    bl copyMemory // (void *src, void* dest, int size) -> void
    add r0, r7, #0
    ldr r1, off_803C2E8 // =unk_200A3B0 
    mov r2, #0x10
    bl copyMemory // (void *src, void* dest, int size) -> void
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803C2DC:    .word unk_200A400
off_803C2E0:    .word unk_200A420
off_803C2E4:    .word unk_200A3A0
off_803C2E8:    .word unk_200A3B0
.endfunc // sub_803C2AA

.func
.thumb_func
sub_803C2EC:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_803C2EC

.func
.thumb_func
sub_803C2F0:
    push {r4-r7,lr}
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#0x14]
    add r0, #0xa
    strh r0, [r3,#0x14]
    pop {r4-r7,pc}
.endfunc // sub_803C2F0

    push {r4-r7,lr}
    pop {r4-r7,pc}
.func
.thumb_func
sub_803C302:
    ldr r2, off_803C32C // =byte_200A290 
    ldrh r1, [r2,#0x20] // (word_200A2B0 - 0x200a290)
    orr r1, r0
    strh r1, [r2,#0x20] // (word_200A2B0 - 0x200a290)
    mov pc, lr
.endfunc // sub_803C302

.func
.thumb_func
sub_803C30C:
    ldr r2, off_803C32C // =byte_200A290 
    ldrh r1, [r2,#0x20] // (word_200A2B0 - 0x200a290)
    bic r1, r0
    strh r1, [r2,#0x20] // (word_200A2B0 - 0x200a290)
    mov pc, lr
.endfunc // sub_803C30C

.func
.thumb_func
sub_803C316:
    push {lr}
    ldr r2, off_803C32C // =byte_200A290 
    ldrh r1, [r2,#0x20] // (word_200A2B0 - 0x200a290)
    tst r1, r0
    pop {pc}
.endfunc // sub_803C316

.func
.thumb_func
sub_803C320:
    ldr r2, off_803C32C // =byte_200A290 
    mov r0, #0
    strh r0, [r2,#0x20] // (word_200A2B0 - 0x200a290)
    strb r0, [r2,#0x16] // (byte_200A2A6 - 0x200a290)
    mov pc, lr
    .balign 4, 0x00
off_803C32C:    .word byte_200A290
.endfunc // sub_803C320

.func
.thumb_func
sub_803C330:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_803CB18
    bne loc_803C34A
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#2]
    mov r1, #2
    tst r0, r1
    beq loc_803C34A
    mov r0, #1
    pop {r4-r7,pc}
loc_803C34A:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803C330

.func
.thumb_func
sub_803C34E:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_803C34E

.func
.thumb_func
sub_803C352:
    push {r4-r7,lr}
    ldr r5, off_803C430 // =word_2006770 
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #0x48 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
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
    strb r1, [r0,#0x10] // (byte_2006788 - 0x2006778)
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
    strb r1, [r0,#0x16] // (byte_20067AE - 0x2006798)
    bl sub_802D150
    pop {r4-r7,pc}
.endfunc // sub_803C352

.func
.thumb_func
sub_803C398:
    ldr r3, off_803C430 // =word_2006770 
    ldr r1, dword_803C3D4 // =0x3E7 
    ldrh r2, [r3,#0x4] // (word_2006774 - 0x2006770)
    cmp r2, r1
    ble loc_803C3A4
    add r2, r1, #0
loc_803C3A4:
    strh r2, [r3,#0x4] // (word_2006774 - 0x2006770)
    ldrh r2, [r3,#0x6] // (word_2006776 - 0x2006770)
    cmp r2, r1
    ble loc_803C3AE
    add r2, r1, #0
loc_803C3AE:
    strh r2, [r3,#0x6] // (word_2006776 - 0x2006770)
    ldrh r0, [r3,#0x4] // (word_2006774 - 0x2006770)
    ldrh r1, [r3,#0x6] // (word_2006776 - 0x2006770)
    mov pc, lr
.endfunc // sub_803C398

.func
.thumb_func
sub_803C3B6:
    ldr r3, off_803C430 // =word_2006770 
    ldr r1, dword_803C3D4 // =0x3E7 
    ldrh r2, [r3,#0x4] // (word_2006774 - 0x2006770)
    add r2, #1
    cmp r2, r1
    ble loc_803C3C4
    add r2, r1, #0
loc_803C3C4:
    strh r2, [r3,#0x4] // (word_2006774 - 0x2006770)
    ldrh r2, [r3,#0x6] // (word_2006776 - 0x2006770)
    add r2, r2, r0
    cmp r2, r1
    ble loc_803C3D0
    add r2, r1, #0
loc_803C3D0:
    strh r2, [r3,#0x6] // (word_2006776 - 0x2006770)
    mov pc, lr
dword_803C3D4:    .word 0x3E7
.endfunc // sub_803C3B6

.func
.thumb_func
sub_803C3D8:
    ldr r0, off_803C430 // =word_2006770 
    mov r1, #1
    strb r1, [r0,#0x2] // (byte_2006772 - 0x2006770)
    mov pc, lr
.endfunc // sub_803C3D8

.func
.thumb_func
sub_803C3E0:
    ldr r0, off_803C430 // =word_2006770 
    ldrb r0, [r0,#0x2] // (byte_2006772 - 0x2006770)
    tst r0, r0
    mov pc, lr
.endfunc // sub_803C3E0

.func
.thumb_func
sub_803C3E8:
    push {r4-r7,lr}
    ldr r0, off_803C408 // =byte_200A290 
    add r0, #0x70 
    ldr r1, off_803C430 // =word_2006770 
    add r1, #8
    mov r2, #0x20 
    bl copyMemory // (void *src, void* dest, int size) -> void
    ldr r0, off_803C408 // =byte_200A290 
    add r0, #0xd0
    ldr r1, off_803C430 // =word_2006770 
    add r1, #0x28 
    mov r2, #0x20 
    bl copyMemory // (void *src, void* dest, int size) -> void
    pop {r4-r7,pc}
off_803C408:    .word byte_200A290
.endfunc // sub_803C3E8

.func
.thumb_func
sub_803C40C:
    push {r4-r7,lr}
    bl sub_800151C
    ldr r1, off_803C430 // =word_2006770 
    strh r0, [r1]
    pop {r4-r7,pc}
.endfunc // sub_803C40C

.func
.thumb_func
sub_803C418:
    push {r4-r7,lr}
    ldr r1, off_803C430 // =word_2006770 
    ldrh r0, [r1]
    mov r3, r10
    ldr r3, [r3]
    ldrb r3, [r3]
    cmp r3, #0x18
    beq locret_803C42C
    bl sub_8049D7C
locret_803C42C:
    pop {r4-r7,pc}
    .byte 0, 0
off_803C430:    .word word_2006770
.endfunc // sub_803C418

.func
.thumb_func
sub_803C434:
    lsl r0, r0, #2
    ldr r3, off_803C460 // =unk_200A3C0 
    str r1, [r3,r0]
    ldr r3, off_803C464 // =unk_200A3E0 
    str r2, [r3,r0]
    mov pc, lr
.endfunc // sub_803C434

.func
.thumb_func
sub_803C440:
    lsl r0, r0, #2
    ldr r3, off_803C464 // =unk_200A3E0 
    ldr r1, [r3,r0]
    ldr r3, off_803C460 // =unk_200A3C0 
    ldr r0, [r3,r0]
    tst r0, r0
    bne loc_803C450
    ldr r0, off_803C468 // =dword_803C46C 
loc_803C450:
    tst r1, r1
    bne locret_803C456
    ldr r1, off_803C478 // =dword_803C47C 
locret_803C456:
    mov pc, lr
.endfunc // sub_803C440

.func
.thumb_func
sub_803C458:
    ldr r0, off_803C468 // =dword_803C46C 
    ldr r1, off_803C478 // =dword_803C47C 
    mov pc, lr
    .byte 0, 0
off_803C460:    .word unk_200A3C0
off_803C464:    .word unk_200A3E0
off_803C468:    .word dword_803C46C
dword_803C46C:    .word 0x5050505, 0x5050505, 0x0
off_803C478:    .word dword_803C47C
dword_803C47C:    .word 0x5050505, 0x5050505, 0x50505, 0x0
.endfunc // sub_803C458

    push {r4-r7,lr}
    ldr r5, off_803C4AC // =byte_200A290 
    mov r4, #0xfe
    mov r0, #8
    bl sub_803CB18
    bne loc_803C4A6
    mov r4, #0xff
    mov r0, #4
    bl sub_803CB18
    beq loc_803C4A6
    ldrb r4, [r5,#0x16] // (byte_200A2A6 - 0x200a290)
loc_803C4A6:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
off_803C4AC:    .word byte_200A290
    push {r4-r7,lr}
    ldr r5, off_803C4BC // =byte_200A290 
    mov r0, #0x10
    bl sub_803CB00
    pop {r4-r7,pc}
off_803C4BC:    .word byte_200A290
    ldr r0, off_803C4CC // =unk_2006778 
    ldr r1, off_803C4D0 // =unk_2006798 
    ldr r2, off_803C4D4 // =unk_200A400 
    ldr r3, off_803C4D8 // =unk_200A420 
    mov pc, lr
    .balign 4, 0x00
off_803C4CC:    .word unk_2006778
off_803C4D0:    .word unk_2006798
off_803C4D4:    .word unk_200A400
off_803C4D8:    .word unk_200A420
    push {r4-r7,lr}
    ldr r5, off_803C510 // =byte_200A290 
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, off_803C510 // =byte_200A290 
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    mov r0, #0x80
    bl sub_803CB00
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, off_803C510 // =byte_200A290 
    mov r0, #8
    bl sub_803CB18
    pop {r4-r7,pc}
    .byte 0, 0
off_803C510:    .word byte_200A290
.func
.thumb_func
sub_803C514:
    push {r4-r7,lr}
    ldr r5, off_803C52C // =byte_200A290 
    mov r4, #0
    mov r0, #0x10
    lsl r0, r0, #4
    bl sub_803CB18
    beq loc_803C526
    mov r4, #1
loc_803C526:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
off_803C52C:    .word byte_200A290
.endfunc // sub_803C514

.func
.thumb_func
sub_803C530:
    push {r4-r7,lr}
    ldr r5, off_803C54C // =byte_200A290 
    mov r4, #0
    ldr r0, off_803C554 // =0x200 
    bl sub_803CB18
    beq loc_803C546
    ldr r0, off_803C550 // =off_8039370 
    bl sub_8001B1C
    mov r4, #1
loc_803C546:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
off_803C54C:    .word byte_200A290
off_803C550:    .word off_8039370
off_803C554:    .word 0x200
.endfunc // sub_803C530

.func
.thumb_func
sub_803C558:
    push {r4-r7,lr}
    bl sub_803C26A
    bl sub_81467A0
    pop {r4-r7,pc}
.endfunc // sub_803C558

    push {r4-r7,lr}
    ldr r5, off_803C57C // =byte_200A290 
    mov r0, #2
    bl sub_803CB00
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, off_803C57C // =byte_200A290 
    mov r0, #2
    bl sub_803CB0C
    pop {r4-r7,pc}
off_803C57C:    .word byte_200A290
    push {r4-r7,lr}
    ldr r5, off_803C598 // =byte_200A290 
    mov r0, #0x40 
    bl sub_803CB00
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r5, off_803C598 // =byte_200A290 
    mov r0, #0x40 
    bl sub_803CB0C
    pop {r4-r7,pc}
off_803C598:    .word byte_200A290
.func
.thumb_func
sub_803C59C:
    push {r4-r7,lr}
    ldr r5, off_803C600 // =byte_200BC60 
    push {r0,r1}
    bl sub_8146BF4
    pop {r0,r1}
    beq locret_803C5EC
    push {r0,r1}
    bl sub_8146BB8
    sub r0, #1
    strb r0, [r5,#0x1] // (byte_200BC61 - 0x200bc60)
    pop {r0,r1}
    lsl r0, r0, #0x10
    orr r1, r0
    ldr r0, dword_803C5F0 // =0x40000000 
    orr r0, r1
    ldr r1, dword_803C5F4 // =0xE3F4 
    mov r2, #0
    mov r3, #0
    bl sub_802FE28
    ldrb r0, [r5]
    add r0, #1
    strb r0, [r5]
    lsr r0, r0, #4
    mov r1, #3
    and r0, r1
    ldrb r1, [r5,#0x1] // (byte_200BC61 - 0x200bc60)
    cmp r0, r1
    ble loc_803C5DE
    mov r0, #0
    strb r0, [r5]
loc_803C5DE:
    lsl r0, r0, #7
    ldr r1, off_803C5F8 // =dword_86A5300 
    add r0, r0, r1
    ldr r1, dword_803C5FC // =0x6017E80 
    mov r2, #0x80
    bl loc_8000AC8
locret_803C5EC:
    pop {r4-r7,pc}
    .byte 0, 0
dword_803C5F0:    .word 0x40000000
dword_803C5F4:    .word 0xE3F4
off_803C5F8:    .word dword_86A5300
dword_803C5FC:    .word 0x6017E80
off_803C600:    .word byte_200BC60
.endfunc // sub_803C59C

.func
.thumb_func
sub_803C604:
    push {r4-r7,lr}
    ldr r5, off_803C61C // =byte_200A290 
    bl sub_803A104
    bl sub_8049BC0
    pop {r4-r7,pc}
.endfunc // sub_803C604

.func
.thumb_func
sub_803C612:
    push {r4-r7,lr}
    ldr r5, off_803C61C // =byte_200A290 
    bl sub_803A1B0
    pop {r4-r7,pc}
off_803C61C:    .word byte_200A290
.endfunc // sub_803C612

.func
.thumb_func
sub_803C620:
    push {r4-r7,lr}
    mov r0, #2
    bl sub_803CB0C
    mov r0, #0x40 
    bl sub_803CB0C
    ldr r7, off_803C648 // =byte_200BC50 
    ldrb r0, [r7]
    mov r1, #0
    tst r0, r0
    beq loc_803C642
    lsl r0, r0, #2
    ldr r1, off_803C64C // =dword_803C650 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_803C642:
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803C648:    .word byte_200BC50
off_803C64C:    .word dword_803C650
dword_803C650:    .word 0x0
    .word sub_803C6A8+1
    .word sub_803C6C0+1
    .word sub_803C6D8+1
    .word sub_803C6F4+1
    .word loc_803C702+1
    .word sub_803C76C+1
    .word loc_803C790+1
    .word sub_803C83A+1
    .word sub_803C842+1
    .word sub_803C84A+1
    .word sub_803C85C+1
    .word loc_803C86A+1
    .word sub_803C94C+1
    .word sub_803C97C+1
    .word sub_803C9A4+1
    .word sub_803C9B6+1
    .word loc_803C9BE+1
    .word loc_803CA2C+1
    .word sub_803C94C+1
    .word sub_803C94C+1
    .word sub_803C754+1
.endfunc // sub_803C620

.func
.thumb_func
sub_803C6A8:
    push {lr}
    ldr r0, off_803C6BC // =0x34 
    bl sub_813D9A0
    mov r0, #0
    bl sub_813D934
    mov r0, #1
    mov r1, #0
    pop {pc}
off_803C6BC:    .word 0x34
.endfunc // sub_803C6A8

.func
.thumb_func
sub_803C6C0:
    push {lr}
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    mov r0, #0x80
    bl sub_803CB00
    mov r0, #1
    mov r1, #1
    pop {pc}
.endfunc // sub_803C6C0

.func
.thumb_func
sub_803C6D8:
    push {lr}
    bl sub_814A828
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    mov r0, #0x80
    bl sub_803CB00
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_803C6D8

.func
.thumb_func
sub_803C6F4:
    push {lr}
    ldr r0, dword_803CAB4 // =0x33 
    bl sub_813D9A0
    mov r0, #1
    mov r1, #0
    pop {pc}
.endfunc // sub_803C6F4

loc_803C702:
    push {lr}
    ldrb r0, [r7,#2]
    lsl r0, r0, #2
    ldr r1, off_803C714 // =off_803C718 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    tst r0, r0
    pop {pc}
off_803C714:    .word off_803C718
off_803C718:    .word sub_803C720+1
    .word sub_803C730+1
.func
.thumb_func
sub_803C720:
    push {lr}
    mov r0, #0xc8
    strh r0, [r7,#0xa]
    mov r0, #1
    strb r0, [r7,#2]
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_803C720

.func
.thumb_func
sub_803C730:
    push {lr}
    ldrh r0, [r7,#0xa]
    sub r0, #1
    strh r0, [r7,#0xa]
    bne loc_803C74A
    ldr r0, dword_803C750 // =0x9 
    bl sub_813D9A0
    mov r0, #0
    strb r0, [r7]
    mov r0, #1
    mov r1, #0
    pop {pc}
loc_803C74A:
    mov r0, #0
    mov r1, #0
    pop {pc}
dword_803C750:    .word 0x9
.endfunc // sub_803C730

.func
.thumb_func
sub_803C754:
    push {lr}
    ldr r0, dword_803C768 // =0x32 
    bl sub_813D9A0
    mov r0, #0
    strb r0, [r7]
    mov r0, #1
    mov r1, #0
    pop {pc}
    .balign 4, 0x00
dword_803C768:    .word 0x32
.endfunc // sub_803C754

.func
.thumb_func
sub_803C76C:
    push {lr}
    mov r0, #2
    bl sub_803CB00
    bl sub_814665C
    bl sub_814673C
    mov r0, #0
    strb r0, [r7,#3]
    ldr r0, off_803C78C // =0x12C 
    strh r0, [r7,#0xa]
    mov r0, #0
    mov r1, #0
    pop {pc}
    .balign 4, 0x00
off_803C78C:    .word 0x12C
.endfunc // sub_803C76C

loc_803C790:
    push {lr}
    ldr r1, off_803C7A8 // =off_803C7AC 
    ldrb r0, [r7,#3]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    mov r0, #0
    mov r1, #0
    pop {pc}
    .balign 4, 0x00
    .byte 0x88
    .byte 2
    .byte 1
    .byte 2
off_803C7A8:    .word off_803C7AC
off_803C7AC:    .word sub_803C7B4+1
    .word sub_803C7E8+1
.func
.thumb_func
sub_803C7B4:
    push {lr}
    bl sub_803CB44
    beq loc_803C7C0
    bl sub_81467A0
loc_803C7C0:
    ldr r1, off_803C7E0 // =byte_2010288 
    ldrb r1, [r1]
    tst r1, r1
    beq locret_803C7DE
    bl sub_803CB24
    cmp r0, #0xff
    beq locret_803C7DE
    mov r0, #4
    strb r0, [r7,#3]
    ldr r0, off_803C7E4 // =0xB4 
    strh r0, [r7,#0xa]
    mov r0, #0x40 
    bl sub_803CB00
locret_803C7DE:
    pop {pc}
off_803C7E0:    .word byte_2010288
off_803C7E4:    .word 0xB4
.endfunc // sub_803C7B4

.func
.thumb_func
sub_803C7E8:
    push {lr}
    bl sub_803CB24
    cmp r0, #0xff
    beq locret_803C838
    cmp r0, #0xfe
    beq loc_803C7FE
    bl sub_8146808
    cmp r0, #4
    bne loc_803C81E
loc_803C7FE:
    mov r0, #0x40 
    bl sub_803CB00
    ldrh r0, [r7,#0xa]
    sub r0, #1
    strh r0, [r7,#0xa]
    bne locret_803C838
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    mov r0, #0x80
    bl sub_803CB00
    b locret_803C838
loc_803C81E:
    bl sub_8146888
    tst r0, r0
    bne locret_803C838
    mov r0, #0
    bl sub_813D934
    mov r0, #0
    strb r0, [r7,#3]
    bl sub_8146CFC
    bl sub_813DA84
locret_803C838:
    pop {pc}
.endfunc // sub_803C7E8

.func
.thumb_func
sub_803C83A:
    push {lr}
    mov r0, #1
    mov r1, #0
    pop {pc}
.endfunc // sub_803C83A

.func
.thumb_func
sub_803C842:
    push {lr}
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_803C842

.func
.thumb_func
sub_803C84A:
    push {lr}
    bl sub_81468F4
    add r4, r0, #0
    bl sub_814690C
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_803C84A

.func
.thumb_func
sub_803C85C:
    push {lr}
    mov r0, #2
    bl sub_803CB00
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_803C85C

loc_803C86A:
    push {lr}
    ldr r1, off_803C878 // =off_803C87C 
    ldrb r0, [r7,#3]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_803C878:    .word off_803C87C
off_803C87C:    .word sub_803C888+1
    .word sub_803C8B4+1
    .word sub_803C8E8+1
.func
.thumb_func
sub_803C888:
    push {lr}
    ldr r0, off_803C944 // =byte_200AF80 
    mov r1, #4
    str r1, [r0,#0x14] // (dword_200AF94 - 0x200af80)
    ldr r1, off_803C948 // =unk_200FE70 
    str r1, [r0,#0xc] // (dword_200AF8C - 0x200af80)
    bl sub_8146D40
    tst r0, r0
    bne loc_803C8AC
    mov r0, #0x40 
    bl sub_803CB00
    mov r0, #2
    bl sub_803CB0C
    mov r0, #4
    strb r0, [r7,#3]
loc_803C8AC:
    bl sub_803C90C
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_803C888

.func
.thumb_func
sub_803C8B4:
    push {r4,lr}
    ldr r0, off_803C944 // =byte_200AF80 
    add r4, r0, #0
    bl sub_8146D98
    ldrb r0, [r4,#0x1] // (byte_200AF81 - 0x200af80)
    cmp r0, #1
    bne loc_803C8E0
    ldr r0, [r4,#0xc] // (dword_200AF8C - 0x200af80)
    ldrb r0, [r0]
    tst r0, r0
    beq loc_803C8E0
    add r0, r4, #0
    mov r1, #1
    bl sub_8146E5C
    mov r0, #0x22 
    bl sub_813D9A0
    mov r0, #0
    bl sub_813D934
loc_803C8E0:
    bl sub_803C90C
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_803C8B4

.func
.thumb_func
sub_803C8E8:
    push {r4,lr}
    ldr r4, off_803C944 // =byte_200AF80 
    add r0, r4, #0
    bl sub_8146D98
    ldrb r0, [r4,#0x1] // (byte_200AF81 - 0x200af80)
    cmp r0, #1
    bne loc_803C906
    ldr r0, [r4,#0xc] // (dword_200AF8C - 0x200af80)
    ldrb r0, [r0]
    tst r0, r0
    beq loc_803C906
    bl sub_813D978
    b locret_803C90A
loc_803C906:
    bl sub_803C90C
locret_803C90A:
    pop {r4,pc}
.endfunc // sub_803C8E8

.func
.thumb_func
sub_803C90C:
    push {lr}
    ldr r0, off_803C940 // =byte_2010280 
    ldrb r0, [r0]
    tst r0, r0
    beq loc_803C91E
    bl sub_8146938
    tst r0, r0
    beq loc_803C926
loc_803C91E:
    mov r0, #2
    mov r1, #0
    pop {pc}
    b loc_803C938
loc_803C926:
    mov r0, #4
    bl sub_803CB18
    beq loc_803C938
    mov r0, #0x22 
    bl sub_813D9A0
    mov r0, #8
    strb r0, [r7,#3]
loc_803C938:
    mov r0, #0
    mov r1, #0
    pop {pc}
    .byte 0, 0
off_803C940:    .word byte_2010280
off_803C944:    .word byte_200AF80
off_803C948:    .word unk_200FE70
.endfunc // sub_803C90C

.func
.thumb_func
sub_803C94C:
    push {lr}
    bl sub_800A7D0
    bne loc_803C966
    ldr r0, dword_803C978 // =0x1 
    bl sub_813D9A0
    mov r0, #0
    bl sub_813D934
    mov r0, #1
    mov r1, #0
    pop {pc}
loc_803C966:
    bl sub_813D978
    mov r0, #0
    bl sub_813D934
    mov r0, #1
    mov r1, #0
    pop {pc}
    .balign 4, 0x00
dword_803C978:    .word 0x1
.endfunc // sub_803C94C

.func
.thumb_func
sub_803C97C:
    push {r4,lr}
    ldr r0, off_803C9A0 // =byte_200AF80 
    ldrb r0, [r0,#0x4] // (byte_200AF84 - 0x200af80)
    bl sub_8146918
    add r4, r0, #0
    bl sub_814690C
    cmp r4, r0
    blt loc_803C99A
    bl sub_813D978
    mov r0, #2
    mov r1, #0
    pop {r4,pc}
loc_803C99A:
    mov r0, #0
    mov r1, #0
    pop {r4,pc}
off_803C9A0:    .word byte_200AF80
.endfunc // sub_803C97C

.func
.thumb_func
sub_803C9A4:
    push {lr}
    bl sub_813D978
    mov r0, #0
    bl sub_813D934
    mov r0, #1
    mov r1, #0
    pop {pc}
.endfunc // sub_803C9A4

.func
.thumb_func
sub_803C9B6:
    push {lr}
    mov r0, #0
    mov r1, #0
    pop {pc}
.endfunc // sub_803C9B6

loc_803C9BE:
    push {lr}
    ldr r1, off_803C9D0 // =off_803C9D4 
    ldrb r0, [r7,#3]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    mov r0, #0
    mov r1, #0
    pop {pc}
off_803C9D0:    .word off_803C9D4
off_803C9D4:    .word sub_803C9DC+1
    .word sub_803CA10+1
.func
.thumb_func
sub_803C9DC:
    push {lr}
    mov r0, #8
    bl sub_803CB18
    beq locret_803CA04
    ldr r4, off_803CA08 // =byte_2010144 
    // memBlock
    add r0, r4, #0
    // numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r0, #1
    strb r0, [r4]
    ldr r1, off_803CA0C // =byte_200AF80 
    mov r0, #4
    strb r0, [r1,#0x10] // (byte_200AF90 - 0x200af80)
    str r4, [r1,#0x8] // (dword_200AF88 - 0x200af80)
    bl sub_8146D20
    mov r0, #4
    strb r0, [r7,#3]
locret_803CA04:
    pop {pc}
    .balign 4, 0x00
off_803CA08:    .word byte_2010144
off_803CA0C:    .word byte_200AF80
.endfunc // sub_803C9DC

.func
.thumb_func
sub_803CA10:
    push {lr}
    ldr r4, off_803CA28 // =byte_200AF80 
    add r0, r4, #0
    bl sub_8146C20
    ldrb r0, [r4,#0x2] // (byte_200AF82 - 0x200af80)
    tst r0, r0
    bne locret_803CA24
    mov r0, #1
    strb r0, [r4,#0x5] // (byte_200AF85 - 0x200af80)
locret_803CA24:
    pop {pc}
    .balign 4, 0x00
off_803CA28:    .word byte_200AF80
.endfunc // sub_803CA10

loc_803CA2C:
    push {lr}
    ldr r0, off_803CA60 // =byte_200AF80 
    ldrb r0, [r0,#0x5] // (byte_200AF85 - 0x200af80)
    tst r0, r0
    beq loc_803CA42
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
    b loc_803CA4C
loc_803CA42:
    ldr r1, off_803CA54 // =off_803CA58 
    ldrb r0, [r7,#3]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_803CA4C:
    mov r0, #0
    mov r1, #0
    pop {pc}
    .balign 4, 0x00
off_803CA54:    .word off_803CA58
off_803CA58:    .word sub_803CA64+1
    .word sub_803CA90+1
off_803CA60:    .word byte_200AF80
.func
.thumb_func
sub_803CA64:
    push {lr}
    ldr r4, off_803CAAC // =byte_2010144 
    // memBlock
    add r0, r4, #0
    // numWords
    mov r1, #0x10
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r0, #1
    strb r0, [r4]
    ldr r1, off_803CAB0 // =byte_200AF80 
    mov r0, #4
    strb r0, [r1,#0x10] // (byte_200AF90 - 0x200af80)
    str r4, [r1,#0x8] // (dword_200AF88 - 0x200af80)
    bl sub_8146D20
    tst r0, r0
    beq loc_803CA88
    bl sub_803CA90
loc_803CA88:
    mov r0, #4
    strb r0, [r7,#3]
    pop {pc}
    .byte 0, 0
.endfunc // sub_803CA64

.func
.thumb_func
sub_803CA90:
    push {r4,lr}
    ldr r4, off_803CAB0 // =byte_200AF80 
    add r0, r4, #0
    bl sub_8146C20
    ldrb r0, [r4,#0x2] // (byte_200AF82 - 0x200af80)
    tst r0, r0
    bne locret_803CAAA
    bl sub_813D978
    mov r0, #8
    bl sub_803CB00
locret_803CAAA:
    pop {r4,pc}
off_803CAAC:    .word byte_2010144
off_803CAB0:    .word byte_200AF80
dword_803CAB4:    .word 0x33
    .byte 5
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 1
    .byte 0x20
    .byte 0
    .byte 0x21 
    .byte 0
    .byte 0xBD
.endfunc // sub_803CA90

.func
.thumb_func
sub_803CAC4:
    push {r4-r7,lr}
    bl sub_813D638
    add r6, r0, #0
    tst r6, r6
    beq locret_803CAF4
    mov r4, #0
loc_803CAD2:
    add r0, r4, #0
    bl sub_81466E4
    push {r0}
    add r0, r4, #0
    bl sub_8146714
    pop {r1}
    push {r0-r3}
    add r2, r0, #0
    add r0, r4, #0
    bl sub_803C434
    pop {r0-r3}
    add r4, #1
    sub r6, #1
    bne loc_803CAD2
locret_803CAF4:
    pop {r4-r7,pc}
    .byte 0
    .byte 0
.endfunc // sub_803CAC4

.func
.thumb_func
sub_803CAF8:
    ldr r3, off_803CB20 // =byte_200BC50 
    ldr r0, [r3,#0xc] // (dword_200BC5C - 0x200bc50)
    mov pc, lr
    .byte 0
    .byte 0
.endfunc // sub_803CAF8

.func
.thumb_func
sub_803CB00:
    ldr r3, off_803CB20 // =byte_200BC50 
    ldr r1, [r3,#0xc] // (dword_200BC5C - 0x200bc50)
    orr r1, r0
    str r1, [r3,#0xc] // (dword_200BC5C - 0x200bc50)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803CB00

.func
.thumb_func
sub_803CB0C:
    ldr r3, off_803CB20 // =byte_200BC50 
    ldr r1, [r3,#0xc] // (dword_200BC5C - 0x200bc50)
    bic r1, r0
    str r1, [r3,#0xc] // (dword_200BC5C - 0x200bc50)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803CB0C

.func
.thumb_func
sub_803CB18:
    ldr r3, off_803CB20 // =byte_200BC50 
    ldr r1, [r3,#0xc] // (dword_200BC5C - 0x200bc50)
    tst r1, r0
    mov pc, lr
off_803CB20:    .word byte_200BC50
.endfunc // sub_803CB18

.func
.thumb_func
sub_803CB24:
    push {r4,lr}
    mov r4, #0xfe
    mov r0, #8
    bl sub_803CB18
    bne loc_803CB3C
    mov r4, #0xff
    mov r0, #4
    bl sub_803CB18
    beq loc_803CB3C
    ldrb r4, [r7,#6]
loc_803CB3C:
    add r0, r4, #0
    tst r0, r0
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_803CB24

.func
.thumb_func
sub_803CB44:
    push {r4,r7,lr}
    ldr r0, off_803CB74 // =0x200 
    bl sub_803CB0C
    mov r4, #0
    mov r0, #1
    bl sub_803CB18
    beq loc_803CB6C
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #0x30 
    lsl r1, r1, #4
    tst r0, r1
    beq loc_803CB6C
    ldr r0, off_803CB74 // =0x200 
    bl sub_803CB00
    mov r4, #1
loc_803CB6C:
    add r0, r4, #0
    tst r0, r0
    pop {r4,r7,pc}
    .balign 4, 0x00
off_803CB74:    .word 0x200
.endfunc // sub_803CB44

.func
.thumb_func
sub_803CB78:
    push {lr}
    ldr r1, off_803CB88 // =byte_200BC50 
    ldrb r0, [r1]
    cmp r0, #7
    bne locret_803CB86
    bl sub_803CAC4
locret_803CB86:
    pop {pc}
off_803CB88:    .word byte_200BC50
.endfunc // sub_803CB78

.func
.thumb_func
sub_803CB8C:
    push {r4-r7,lr}
    ldr r5, off_803CBB8 // =byte_2008978 
    add r4, r0, #0
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    str r4, [r5,#0x4] // (dword_200897C - 0x2008978)
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0x1c
    strb r0, [r1]
    pop {r4-r7,pc}
.endfunc // sub_803CB8C

cb_803CBA6:
    push {r4-r7,lr}
    ldr r5, off_803CBB8 // =byte_2008978 
    ldr r0, off_803CBBC // =off_803CBC0 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803CBB8:    .word byte_2008978
off_803CBBC:    .word off_803CBC0
off_803CBC0:    .word sub_803CBD0+1
    .word sub_803CC14+1
    .word sub_803CC28+1
    .word sub_803CC40+1
.func
.thumb_func
sub_803CBD0:
    push {r4-r7,lr}
    bl chatbox_8040818
    mov r0, #0x15
    bl sub_80015FC
    ldr r0, dword_803CC10 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl sub_8005F40
.endfunc // sub_803CBD0

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_803CC60
    mov r0, #0x63 
    bl sub_80005F2
    mov r0, #8
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5]
    pop {r4-r7,pc}
    .byte 0, 0
dword_803CC10:    .word 0x1F40
.func
.thumb_func
sub_803CC14:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_803CC26
    mov r0, #0xb
    bl sub_803CCB0
    mov r0, #8
    strb r0, [r5]
locret_803CC26:
    pop {r4-r7,pc}
.endfunc // sub_803CC14

.func
.thumb_func
sub_803CC28:
    push {r4-r7,lr}
    mov r0, #8
    bl chatbox_8045F3C
    beq locret_803CC3E
    mov r0, #0xc
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #0xc
    strb r0, [r5]
locret_803CC3E:
    pop {r4-r7,pc}
.endfunc // sub_803CC28

.func
.thumb_func
sub_803CC40:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_803CC58
    bl chatbox_8040818
    ldr r0, off_803CC5C // =0x40 
    bl sub_8001778
    ldr r0, [r5,#4]
    mov lr, pc
    bx r0
locret_803CC58:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803CC5C:    .word 0x40
.endfunc // sub_803CC40

.func
.thumb_func
sub_803CC60:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    // dataList
    ldr r0, off_803CC84 // =dword_803CC88 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #1
    ldr r3, off_803CC9C // =unk_2017A00 
    add r3, #4
    mov r4, #0x1e
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_803CC60

    pop {r4-r7,pc}
off_803CC84:    .word dword_803CC88
dword_803CC88:    .word 0x887E6980, 0x6000020, 0x2013A00, 0x887E6BFC, 0x0
off_803CC9C:    .word unk_2017A00
    .word dword_87E6BDC
    .word word_3001960
    .word 0x20, 0x0
.func
.thumb_func
sub_803CCB0:
    push {r4-r7,lr}
    add r1, r0, #0
    ldr r0, off_803CCBC // =dword_873B9E0 
    bl chatbox_803FD9C
    pop {r4-r7,pc}
off_803CCBC:    .word dword_873B9E0
.endfunc // sub_803CCB0

.func
.thumb_func
sub_803CCC0:
    push {r4-r7,lr}
    ldr r5, off_803CCE8 // =byte_2009790 
    // memBlock
    add r0, r5, #0
    // numWords
    mov r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0x20 
    strb r0, [r1]
    pop {r4-r7,pc}
.endfunc // sub_803CCC0

cb_803CCD6:
    push {r4-r7,lr}
    ldr r5, off_803CCE8 // =byte_2009790 
    ldr r0, off_803CCEC // =off_803CCF0 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803CCE8:    .word byte_2009790
off_803CCEC:    .word off_803CCF0
off_803CCF0:    .word sub_803CCFC+1
    .word sub_803CD40+1
    .word sub_803CD54+1
.func
.thumb_func
sub_803CCFC:
    push {r4-r7,lr}
    bl chatbox_8040818
    mov r0, #0x16
    bl sub_80015FC
    ldr r0, dword_803CD3C // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl sub_8005F40
.endfunc // sub_803CCFC

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_803CD58
    mov r0, #0x63 
    bl sub_80005F2
    mov r0, #8
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_803CD3C:    .word 0x1F40
.func
.thumb_func
sub_803CD40:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_803CD52
    mov r0, #0xa
    bl sub_803CD64
    mov r0, #8
    strb r0, [r5]
locret_803CD52:
    pop {r4-r7,pc}
.endfunc // sub_803CD40

.func
.thumb_func
sub_803CD54:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_803CD54

.func
.thumb_func
sub_803CD58:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    pop {r4-r7,pc}
.endfunc // sub_803CD58

.func
.thumb_func
sub_803CD64:
    push {r4-r7,lr}
    add r1, r0, #0
    ldr r0, off_803CD70 // =dword_873B9E0 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    pop {r4-r7,pc}
off_803CD70:    .word dword_873B9E0
.endfunc // sub_803CD64

.func
.thumb_func
sub_803CD74:
    push {r4-r7,lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x50]
    // numWords
    ldr r1, off_803CD94 // =0x190 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r0, #0x75 
    mov r1, #4
    bl sub_803CDF8
    mov r0, #0
    mov r1, #1
    bl sub_803CDF8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803CD94:    .word 0x190
.endfunc // sub_803CD74

.func
.thumb_func
sub_803CD98:
    push {r4-r7,lr}
    push {r0,r1}
    bl load_8006E3C
    pop {r0,r1}
    mov r2, r10
    ldr r2, [r2,#0x50] // Toolkit.unk_2003134
    mov r6, #0xff
    cmp r0, #0x80
    blt loc_803CDB6
    cmp r0, #0x85
    bgt loc_803CDB6
    mov r4, #0x75 
    ldrb r6, [r2,r4]
    b loc_803CDC4
loc_803CDB6:
    cmp r0, #0x71 
    bne loc_803CDBE
    mov r6, #2
    b loc_803CDC4
loc_803CDBE:
    cmp r0, #0x90
    blt loc_803CDC4
    mov r6, #9
loc_803CDC4:
    ldrb r4, [r2,r0]
    mov r3, #1
    cmp r4, r6
    beq loc_803CDD8
    mov r3, #0
    add r4, r4, r1
    cmp r4, r6
    ble loc_803CDD8
    mov r3, #2
    add r4, r6, #0
loc_803CDD8:
    strb r4, [r2,r0]
    push {r0-r3}
    cmp r0, #0x71 
    bne loc_803CDE4
    bl sub_813C3AC
loc_803CDE4:
    pop {r0-r3}
    add r4, r0, #0
    add r0, r3, #0
    push {r0}
    bl sub_803CF3C
    bl sub_803CFB0
    pop {r0}
    pop {r4-r7,pc}
.endfunc // sub_803CD98

.func
.thumb_func
sub_803CDF8:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x50]
    mov r3, #0
    strb r3, [r2,r0]
    bl sub_803CD98
    pop {pc}
.endfunc // sub_803CDF8

.func
.thumb_func
sub_803CE08:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x50]
    ldrb r4, [r2,r0]
    mov r3, #1
    tst r4, r4
    beq loc_803CE20
    mov r3, #0
    sub r4, r4, r1
    bge loc_803CE20
    mov r3, #2
    add r4, r4, r1
loc_803CE20:
    strb r4, [r2,r0]
    add r0, r3, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803CE08

.func
.thumb_func
sub_803CE28:
    push {lr}
    push {r0}
    bl sub_8006E50
    pop {r0}
    bne loc_803CE3E
    mov r1, r10
    ldr r1, [r1,#0x50]
    ldrb r0, [r1,r0]
    tst r0, r0
    pop {pc}
loc_803CE3E:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_803CE28

.func
.thumb_func
sub_803CE44:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    bge locret_803CEB4
    mov r0, #0
    add r4, r0, #0
    add r4, r0, #0
    mov r1, #0x3e 
    bl sub_80137FE
    add r7, r0, #0
    mov r2, r10
    ldr r2, [r2,#0x68]
    ldrh r2, [r2]
    add r2, r2, r7
    add r7, r2, #0
    mov r0, #0
    mov r1, #0x42 
    add r2, r7, #0
    bl sub_80137E6
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F164 // (int a1, int a2) -> zf
    beq locret_803CEB4
    mov r0, #0
    mov r1, #0x40 
    add r2, r7, #0
    bl sub_80137E6
    bl getPETNaviSelect
    cmp r0, #0
    beq locret_803CEB4
    bl getPETNaviSelect
    add r4, r0, #0
    mov r1, #0x3e 
    bl sub_80137FE
    add r7, r0, #0
    bl getPETNaviSelect
    mov r1, #0x42 
    add r2, r7, #0
    bl sub_80137E6
    bl getPETNaviSelect
    mov r1, #0x40 
    add r2, r7, #0
    bl sub_80137E6
locret_803CEB4:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803CE44

.func
.thumb_func
sub_803CEB8:
    push {r4-r7,lr}
    bl getPETNaviSelect
    add r4, r0, #0
    mov r1, #0x42 
    bl sub_80137FE
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137E6
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803CEB8

.func
.thumb_func
sub_803CED4:
    push {r4,r6,r7,lr}
    bl getPETNaviSelect
    add r4, r0, #0
    mov r1, #0x3e 
    bl sub_80137FE
    add r7, r0, #0
    mov r2, r10
    ldr r2, [r2,#0x68]
    ldrh r2, [r2]
    add r2, r2, r7
    add r7, r2, #0
    add r0, r4, #0
    mov r1, #0x42 
    bl sub_80137E6
    pop {r4,r6,r7,pc}
.endfunc // sub_803CED4

    push {r4-r7,lr}
    add r4, r0, #0
    mov r1, #0x42 
    bl sub_80137FE
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137E6
    pop {r4-r7,pc}
    .byte 0, 0
    push {r4,r6,r7,lr}
    bl getPETNaviSelect
    add r4, r0, #0
    mov r1, #0x3e 
    bl sub_80137FE
    add r7, r0, #0
    mov r2, r10
    ldr r2, [r2,#0x68]
    ldrh r2, [r2]
    add r2, r2, r7
    add r7, r2, #0
    cmp r7, #1
    bge loc_803CF30
    mov r7, #1
loc_803CF30:
    add r0, r4, #0
    mov r1, #0x42 
    add r2, r7, #0
    bl sub_80137E6
    pop {r4,r6,r7,pc}
.func
.thumb_func
sub_803CF3C:
    push {r4-r7,lr}
    cmp r4, #0x70 
    bne locret_803CFAE
    mov r7, #0x14
    mul r7, r1
    mov r0, #0
    add r4, r0, #0
    mov r1, #0x3e 
    bl sub_80137FE
    add r0, r0, r7
    ldr r1, off_803CF70 // =0x3E8 
    cmp r0, r1
    ble loc_803CF5A
    add r0, r1, #0
loc_803CF5A:
    add r2, r0, #0
    add r6, r2, #0
    add r0, r4, #0
    mov r1, #0x3e 
    bl sub_80137E6
    add r0, r6, #0
    add r1, r7, #0
    bl sub_803CF74
    pop {r4-r7,pc}
off_803CF70:    .word 0x3E8
.endfunc // sub_803CF3C

.func
.thumb_func
sub_803CF74:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl getPETNaviSelect
    add r4, r0, #0
    bl sub_813C3AC
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137FE
    add r7, r7, r0
    add r0, r4, #0
    mov r1, #0x40 
    add r2, r7, #0
    bl sub_80137E6
    add r0, r4, #0
    mov r1, #0x42 
    bl sub_80137FE
    cmp r0, r7
    bge locret_803CFAE
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137E6
locret_803CFAE:
    pop {r4-r7,pc}
.endfunc // sub_803CF74

.func
.thumb_func
sub_803CFB0:
    push {r4-r7,lr}
    mov r0, #0
    add r4, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x50]
    mov r6, #0x72 
    add r6, r6, r7
    ldrb r0, [r6]
    mov r6, #0x73 
    add r6, r6, r7
    ldrb r1, [r6]
    lsl r1, r1, #1
    mov r6, #0x74 
    add r6, r6, r7
    ldrb r2, [r6]
    lsl r3, r2, #1
    add r2, r2, r3
    add r0, r0, r1
    add r0, r0, r2
    add r0, #4
    cmp r0, #0x63 
    ble loc_803CFDE
    mov r0, #0x63 
loc_803CFDE:
    add r2, r0, #0
    add r6, r2, #0
    add r0, r4, #0
    mov r1, #9
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    bl getPETNaviSelect
    add r2, r6, #0
    mov r1, #9
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    pop {r4-r7,pc}
.endfunc // sub_803CFB0

.func
.thumb_func
sub_803CFF8:
    push {r4-r7,lr}
    bl sub_8006F78
    bne loc_803D024
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldr r1, [r2,#0x5c]
    ldr r4, dword_803D028 // =0xF423F 
    mov r3, #1
    cmp r1, r4
    beq loc_803D01A
    mov r3, #0
    add r1, r1, r0
    cmp r1, r4
    ble loc_803D01A
    mov r3, #2
    add r1, r4, #0
loc_803D01A:
    str r1, [r2,#0x5c]
    add r0, r3, #0
    bl sub_8006F54
    pop {r4-r7,pc}
loc_803D024:
    mov r0, #1
    pop {r4-r7,pc}
dword_803D028:    .word 0xF423F
.endfunc // sub_803CFF8

.func
.thumb_func
sub_803D02C:
    push {lr}
    bl sub_8006F78
    bne locret_803D03E
    mov r1, r10
    ldr r1, [r1,#0x3c]
    str r0, [r1,#0x5c]
    bl sub_8006F54
locret_803D03E:
    pop {pc}
.endfunc // sub_803D02C

.func
.thumb_func
sub_803D040:
    push {lr}
    bl sub_8006F78
    bne loc_803D068
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldr r1, [r2,#0x5c]
    mov r3, #1
    tst r1, r1
    beq loc_803D05E
    mov r3, #0
    sub r1, r1, r0
    bge loc_803D05E
    mov r3, #2
    add r1, r1, r0
loc_803D05E:
    str r1, [r2,#0x5c]
    add r0, r3, #0
    bl sub_8006F54
    pop {pc}
loc_803D068:
    mov r0, #2
    pop {pc}
.endfunc // sub_803D040

.func
.thumb_func
sub_803D06C:
    push {lr}
    bl sub_8006F78
    bne loc_803D07C
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r0, [r1,#0x5c]
    pop {pc}
loc_803D07C:
    mov r0, #0
    pop {pc}
.endfunc // sub_803D06C

.func
.thumb_func
sub_803D080:
    push {r4-r7,lr}
    bl sub_8006FD0
    bne loc_803D0AC
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldr r1, [r2,#0x60]
    ldr r4, dword_803D0B0 // =0x270F 
    mov r3, #1
    cmp r1, r4
    beq loc_803D0A2
    mov r3, #0
    add r1, r1, r0
    cmp r1, r4
    ble loc_803D0A2
    mov r3, #2
    add r1, r4, #0
loc_803D0A2:
    str r1, [r2,#0x60]
    add r0, r3, #0
    bl sub_8006FAC
    pop {r4-r7,pc}
loc_803D0AC:
    mov r0, #1
    pop {r4-r7,pc}
dword_803D0B0:    .word 0x270F
.endfunc // sub_803D080

.func
.thumb_func
sub_803D0B4:
    push {lr}
    bl sub_8006FD0
    bne locret_803D0C6
    mov r1, r10
    ldr r1, [r1,#0x3c]
    str r0, [r1,#0x60]
    bl sub_8006FAC
locret_803D0C6:
    pop {pc}
.endfunc // sub_803D0B4

.func
.thumb_func
sub_803D0C8:
    push {lr}
    bl sub_8006FD0
    bne loc_803D0F0
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldr r1, [r2,#0x60]
    mov r3, #1
    tst r1, r1
    beq loc_803D0E6
    mov r3, #0
    sub r1, r1, r0
    bge loc_803D0E6
    mov r3, #2
    add r1, r1, r0
loc_803D0E6:
    str r1, [r2,#0x60]
    add r0, r3, #0
    bl sub_8006FAC
    pop {pc}
loc_803D0F0:
    mov r0, #2
    pop {pc}
.endfunc // sub_803D0C8

.func
.thumb_func
sub_803D0F4:
    push {lr}
    bl sub_8006FD0
    bne loc_803D104
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r0, [r1,#0x60]
    pop {pc}
loc_803D104:
    mov r0, #0
    pop {pc}
.endfunc // sub_803D0F4

.func
.thumb_func
sub_803D108:
    push {r4,lr}
    add r4, r2, #0
    bl sub_803D148
    add r1, r4, #0
    bl sub_803CD98
    pop {r4,pc}
.endfunc // sub_803D108

.func
.thumb_func
sub_803D118:
    push {r4,lr}
    add r4, r2, #0
    bl sub_803D148
    add r1, r4, #0
    bl sub_803CDF8
    pop {r4,pc}
.endfunc // sub_803D118

.func
.thumb_func
sub_803D128:
    push {r4,lr}
    add r4, r2, #0
    bl sub_803D148
    add r1, r4, #0
    bl sub_803CE08
    pop {r4,pc}
.endfunc // sub_803D128

.func
.thumb_func
sub_803D138:
    push {r4,lr}
    add r4, r2, #0
    bl sub_803D148
    bl sub_803CE28
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_803D138

.func
.thumb_func
sub_803D148:
    push {r4-r7,lr}
    sub r0, #0x90
    mov r6, #0
    add r4, r0, #0
    add r5, r1, #0
loc_803D152:
    add r0, r4, r6
    bl sub_813B780
    add r7, r0, #0
    ldrb r0, [r7,#3]
    cmp r0, r5
    beq loc_803D16A
    add r6, #1
    cmp r6, #4
    blt loc_803D152
    mov r0, #0
    b locret_803D16E
loc_803D16A:
    add r0, r4, r6
    add r0, #0x90
locret_803D16E:
    pop {r4-r7,pc}
.endfunc // sub_803D148

    push {r4,lr}
    add r4, r2, #0
    bl sub_803D180
    bl sub_803CE28
    pop {r4,pc}
    .byte 0, 0
.func
.thumb_func
sub_803D180:
    push {r4-r7,lr}
    sub r0, #0x90
    mov r6, #0
    add r4, r0, #0
    mov r5, #0
loc_803D18A:
    add r0, r4, r6
    bl sub_813B780
    add r7, r0, #0
    ldrb r0, [r7,#3]
    cmp r0, r5
    bne loc_803D1A2
    add r6, #1
    cmp r6, #4
    blt loc_803D18A
    mov r0, #0
    b locret_803D1A6
loc_803D1A2:
    add r0, r4, r6
    add r0, #0x90
locret_803D1A6:
    pop {r4-r7,pc}
.endfunc // sub_803D180

.func
.thumb_func
sub_803D1A8:
    mov r0, #1
    b loc_803D1AE
loc_803D1AC:
    mov r0, #0
loc_803D1AE:
    push {r4-r7,lr}
    push {r0}
    // memBlock
    ldr r0, off_803D1F8 // =byte_2011800 
    // numWords
    mov r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r0}
    ldr r1, off_803D1F8 // =byte_2011800 
    strb r0, [r1,#0x5] // (byte_2011805 - 0x2011800)
    mov r1, r10
    ldr r1, [r1]
    mov r0, #0x10
    strb r0, [r1]
    pop {r4-r7,pc}
.endfunc // sub_803D1A8

cb_803D1CA:
    push {r4-r7,lr}
    ldr r5, off_803D1F8 // =byte_2011800 
    ldr r0, off_803D1E0 // =off_803D1E4 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_803E938
    pop {r4-r7,pc}
    .byte 0, 0
off_803D1E0:    .word off_803D1E4
off_803D1E4:    .word sub_803D1FC+1
    .word sub_803D24C+1
    .word sub_803D274+1
    .word sub_803D298+1
    .word sub_803D2A6+1
off_803D1F8:    .word byte_2011800
.func
.thumb_func
sub_803D1FC:
    push {lr}
    mov r0, #0xe
    bl sub_80015FC
    mov r4, #0xc
    ldr r0, off_803D244 // =0x40 
    ldrb r1, [r5,#5]
    tst r1, r1
    beq loc_803D212
    mov r4, #4
    ldr r0, off_803D248 // =0xC0 
loc_803D212:
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    add r0, r4, #0
    mov r1, #0xff
    bl engine_setScreeneffect
    bl sub_8005F40
.endfunc // sub_803D1FC

    bl sub_8005F6C
    bl sub_80027C4
    bl sub_803D2B8
    mov r0, #0x63 
    bl sub_80005F2
    mov r0, #4
    strb r0, [r5]
    pop {pc}
    .balign 4, 0x00
off_803D244:    .word 0x40
off_803D248:    .word 0xC0
.func
.thumb_func
sub_803D24C:
    push {lr}
    ldr r0, dword_803D270 // =0x1F40 
    bl sub_8001778
    mov r0, #8
    ldrb r1, [r5,#5]
    tst r1, r1
    beq loc_803D25E
    mov r0, #0
loc_803D25E:
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #0xb4
    strb r0, [r5,#4]
    mov r0, #8
    strb r0, [r5]
    pop {pc}
    .byte 0, 0
dword_803D270:    .word 0x1F40
.endfunc // sub_803D24C

.func
.thumb_func
sub_803D274:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq locret_803D292
    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    cmp r0, #0
    bgt locret_803D292
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #0xc
    strb r0, [r5]
locret_803D292:
    pop {pc}
    .word 0x3FF
.endfunc // sub_803D274

.func
.thumb_func
sub_803D298:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq locret_803D2A4
    mov r0, #0x10
    strb r0, [r5]
locret_803D2A4:
    pop {pc}
.endfunc // sub_803D298

.func
.thumb_func
sub_803D2A6:
    push {lr}
    ldr r0, off_803D2B4 // =0x40 
    bl sub_8001778
    bl sub_802F530
    pop {pc}
off_803D2B4:    .word 0x40
.endfunc // sub_803D2A6

.func
.thumb_func
sub_803D2B8:
    push {r4-r7,lr}
    bl sub_80017AA
    bl sub_800183C
    // dataList
    ldr r0, off_803D2EC // =dword_803D2F0 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #1
    ldr r3, off_803D304 // =word_2013A00 
    add r3, #4
    mov r4, #0x20 
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
.endfunc // sub_803D2B8

    mov r0, #8
    mov r1, #0x11
    mov r2, #2
    ldr r3, off_803D330 // =dword_86C41B4 
    mov r4, #0xe
    mov r5, #1
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r4-r7,pc}
off_803D2EC:    .word dword_803D2F0
dword_803D2F0:    .word 0x886C3528, 0x6000020, 0x2014A00
    .word 0x886C3E94
    .word 0x0
off_803D304:    .word word_2013A00
    .word 0x86C3C94, 0x3001960, 0x20, 0x86C3FD4, 0x6001000, 0x1C0
    .word 0x86C4194, 0x3001980, 0x20, 0x0
off_803D330:    .word dword_86C41B4
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x10000, 0x30002, 0x50004, 0x70006, 0x90008, 0xB000A
    .word 0xD000C, 0xF000E, 0x110010, 0x130012, 0x150014, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0
    .word 0x170016, 0x190018, 0x1B001A, 0x1D001C, 0x1F001E, 0x210020
    .word 0x230022, 0x250024, 0x270026, 0x290028, 0x2B002A, 0x2D002C
    .word 0x2F002E, 0x310030, 0x330032, 0x350034, 0x370036, 0x390038
    .word 0x3B003A, 0x3C, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
    .word 0x20001, 0x40003, 0x60005, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x20001, 0x40003, 0x60005, 0x80007, 0xA0009, 0xC000B
    .word 0xE000D, 0x10000F, 0x120011, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0
    .word 0x130000, 0x14, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x14, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x10000, 0x30002, 0x50004, 0x70006, 0x90008, 0xB000A
    .word 0xC, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0
off_803DC78:    .word word_2036780
    .word unk_20399F0
    .word unk_2039A00
    .word 0x4, 0x200B1B0, 0x201DE74, 0x201E674, 0x0
    .word dword_200B1B0
    .word unk_2009450
    .word unk_2009460
    .word 0x4, 0x200B1B0, 0x201BA00, 0x201BA10, 0x0
    .word dword_200B1B0
    .word unk_201BA00
    .word unk_201BA10
    .byte 0, 0, 0, 0
    .word dword_200B1B0
    .word unk_201F320
    .word unk_201F5A0
    .byte 0, 0, 0, 0
.func
.thumb_func
sub_803DCD8:
    push {r4-r7,lr}
    ldr r7, off_803DCE4 // =sCamera+80 
    str r0, [r7,#0x1c] // (scamera.pad_6a+2 - 0x20099d0)
    strh r1, [r7,#0xa] // (scamera.pad_59+1 - 0x20099d0)
    strh r2, [r7,#0xe] // (scamera.pad_5e - 0x20099d0)
    pop {r4-r7,pc}
off_803DCE4:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803DCD8

.func
.thumb_func
sub_803DCE8:
    push {r4-r7,lr}
    ldr r7, off_803DD5C // =sCamera+80 
    str r0, [r7,#0x20] // (scamera.unk_70 - 0x20099d0)
    str r0, [r7,#0x24] // (scamera.unk_74 - 0x20099d0)
    strb r2, [r7,#0x3] // (scamera.unk_53 - 0x20099d0)
    strb r3, [r7,#0x2] // (scamera.unk_52 - 0x20099d0)
    ldr r0, off_803DD58 // =off_803DC78 
    lsl r1, r1, #4
    add r0, r0, r1
    ldr r1, [r0]
    str r1, [r7,#0x34] // (scamera.unk_84 - 0x20099d0)
    ldr r1, [r0,#4]
    str r1, [r7,#0x38] // (scamera.unk_88 - 0x20099d0)
    ldr r1, [r0,#8]
    str r1, [r7,#0x3c] // (scamera.unk_8c - 0x20099d0)
    ldrb r1, [r0,#0xc]
    strb r1, [r7]
    strb r1, [r7,#0x1] // (scamera.unk_51 - 0x20099d0)
    mov r1, #0
    strb r1, [r7,#0x5] // (scamera.unk_55 - 0x20099d0)
    strb r1, [r7,#0x8] // (scamera.unk_58 - 0x20099d0)
    strh r1, [r7,#0x18] // (scamera.unk_68 - 0x20099d0)
    mvn r1, r1
    strh r1, [r7,#0x10] // (scamera.unk_60 - 0x20099d0)
    strh r1, [r7,#0x12] // (scamera.unk_62 - 0x20099d0)
    strh r1, [r7,#0x14] // (scamera.unk_64 - 0x20099d0)
    strh r1, [r7,#0x16] // (scamera.unk_66 - 0x20099d0)
    ldr r0, [r7,#0x38] // (scamera.unk_88 - 0x20099d0)
    ldr r1, [r7,#0x24] // (scamera.unk_74 - 0x20099d0)
    bl sub_80008B4
    ldr r0, [r7,#0x3c] // (scamera.unk_8c - 0x20099d0)
    ldr r1, [r7,#0x24] // (scamera.unk_74 - 0x20099d0)
    bl sub_80008B4
    pop {r4-r7,pc}
.endfunc // sub_803DCE8

.func
.thumb_func
sub_803DD30:
    push {r7,lr}
    bl sub_803EA60
    add r1, r0, #0
    cmp r1, #0
    beq loc_803DD48
    mov r0, #0
    cmp r1, #4
    beq loc_803DD52
    mov r0, #1
    cmp r1, #8
    beq loc_803DD52
loc_803DD48:
    ldr r7, off_803DD5C // =sCamera+80 
    ldr r0, [r7,#0x48] // (dword_2009A18 - 0x20099d0)
    mov r1, #3
    and r0, r1
    // <mkdata>
    .hword 0x0 // mov r0, r0
loc_803DD52:
    tst r0, r0
    pop {r7,pc}
    .balign 4, 0x00
off_803DD58:    .word off_803DC78
off_803DD5C:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803DD30

.func
.thumb_func
sub_803DD60:
    push {r7,lr}
    bl sub_803EA60
    add r1, r0, #0
    cmp r0, #0
    beq loc_803DD76
    mov r0, #0
    cmp r1, #4
    beq locret_803DD86
    cmp r1, #8
    beq loc_803DD84
loc_803DD76:
    ldr r7, off_803DD88 // =sCamera+80 
    ldr r0, [r7,#0x48] // (dword_2009A18 - 0x20099d0)
    mov r1, #3
    and r0, r1
    // <mkdata>
    .hword 0x0 // mov r0, r0
    tst r0, r0
    beq locret_803DD86
loc_803DD84:
    mov r0, #1
locret_803DD86:
    pop {r7,pc}
off_803DD88:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803DD60

    push {r7,lr}
    ldr r7, off_803DDA0 // =sCamera+80 
    mov r0, #8
    strb r0, [r7]
    strb r0, [r7,#0x1] // (scamera.unk_51 - 0x20099d0)
    mov r0, #0x10
    strh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    mov r0, #0
    strb r0, [r7,#0x8] // (scamera.unk_58 - 0x20099d0)
    pop {r7,pc}
off_803DDA0:    .word sCamera+0x50 // sCamera.unk_50
.func
.thumb_func
sub_803DDA4:
    push {r7,lr}
    ldr r7, off_803DDBC // =sCamera+80 
    mov r0, #0x10
    strb r0, [r7]
    mov r0, #0xc
    strb r0, [r7,#0x1] // (scamera.unk_51 - 0x20099d0)
    mov r0, #0x10
    strh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    mov r0, #0
    strb r0, [r7,#0x8] // (scamera.unk_58 - 0x20099d0)
    pop {r7,pc}
    .balign 4, 0x00
off_803DDBC:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803DDA4

    push {r7,lr}
    ldr r7, off_803DDD0 // =sCamera+80 
    mov r0, #8
    strb r0, [r7]
    mov r0, #0x10
    strh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    pop {r7,pc}
    .byte 0, 0
off_803DDD0:    .word sCamera+0x50 // sCamera.unk_50
    push {r7,lr}
    mov r1, #1
    ldr r7, off_803DDE8 // =sCamera+80 
    ldrh r0, [r7,#0xe] // (scamera.pad_5e - 0x20099d0)
    cmp r0, #2
    blt loc_803DDE2
    mov r1, #0
loc_803DDE2:
    add r0, r1, #0
    pop {r7,pc}
    .balign 4, 0x00
off_803DDE8:    .word sCamera+0x50 // sCamera.unk_50
    push {r4,r7,lr}
    mov r4, #1
    ldr r7, off_803DE20 // =sCamera+80 
    ldrb r0, [r7,#0x1] // (scamera.unk_51 - 0x20099d0)
    cmp r0, #8
    bne loc_803DE1A
    ldrb r0, [r7]
    cmp r0, #8
    bne loc_803DE1A
    ldr r0, [r7,#0x48] // (dword_2009A18 - 0x20099d0)
    bl sub_803DFAC
    mov r1, #0x7f
    and r1, r0
    beq loc_803DE12
    ldrh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    cmp r0, #8
    blt loc_803DE18
    b loc_803DE1A
loc_803DE12:
    ldrh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    tst r0, r0
    bne loc_803DE1A
loc_803DE18:
    mov r4, #0
loc_803DE1A:
    add r0, r4, #0
    pop {r4,r7,pc}
    .byte 0, 0
off_803DE20:    .word sCamera+0x50 // sCamera.unk_50
.func
.thumb_func
sub_803DE24:
    push {r4,r7,lr}
    mov r4, #1
    ldr r7, off_803DE58 // =sCamera+80 
    ldrb r0, [r7,#0x1] // (scamera.unk_51 - 0x20099d0)
    cmp r0, #0xc
    bne loc_803DE52
    ldrb r0, [r7]
    cmp r0, #0x10
    bne loc_803DE52
    ldr r0, [r7,#0x48] // (dword_2009A18 - 0x20099d0)
    bl sub_803DFAC
    mov r1, #0x7f
    and r1, r0
    beq loc_803DE4A
    ldrh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    cmp r0, #8
    blt loc_803DE50
    b loc_803DE52
loc_803DE4A:
    ldrh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    tst r0, r0
    bne loc_803DE52
loc_803DE50:
    mov r4, #0
loc_803DE52:
    add r0, r4, #0
    pop {r4,r7,pc}
    .balign 4, 0x00
off_803DE58:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803DE24

.func
.thumb_func
sub_803DE5C:
    push {lr}
    ldr r0, off_803DE84 // =sJoystick+20 
    mov r1, #1
    str r1, [r0]
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_803DE5C

    push {lr}
    ldr r0, off_803DE84 // =sJoystick+20 
    mov r1, #0
    str r1, [r0]
    pop {pc}
.func
.thumb_func
sub_803DE72:
    push {lr}
    ldr r0, off_803DE84 // =sJoystick+20 
    ldr r0, [r0]
    tst r0, r0
    beq locret_803DE80
    bl sub_81445F8
locret_803DE80:
    pop {pc}
    .balign 4, 0x00
off_803DE84:    .word sJoystick+0x14 // sJoystick.unk_14
.endfunc // sub_803DE72

.func
.thumb_func
sub_803DE88:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r0, off_803DF9C // =sCamera+80 
    add r6, r0, #0
    mov r1, #0x58 
    bl sub_80008C0
    ldr r0, off_803DFA0 // =byte_200DD10 
    mov r1, #0x10
    bl sub_80008C0
    ldr r0, off_803DFA4 // =unk_2009480 
    mov r1, #0x40 
    bl sub_80008C0
    str r4, [r6,#0x58] // (dword_2009A28 - 0x20099d0)
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803DE88

.func
.thumb_func
sub_803DEAC:
    push {r4-r7,lr}
    bl sub_8144240
    pop {r4-r7,pc}
.endfunc // sub_803DEAC

.func
.thumb_func
sub_803DEB4:
    push {r4-r7,lr}
    mov r6, #1
    ldr r7, off_803DF9C // =sCamera+80 
    add r0, r7, #6
    ldr r1, off_803DFA0 // =byte_200DD10 
    ldr r2, off_803DFA4 // =unk_2009480 
    bl sub_8144250
    str r0, [r7,#0x48] // (dword_2009A18 - 0x20099d0)
    push {r0}
    bl sub_8144CE0
    cmp r0, #5
    pop {r0}
    bne loc_803DED6
    mov r6, #4
    b loc_803DF96
loc_803DED6:
    sub sp, sp, #0x10
    str r0, [sp]
    bl sub_8144CE0
    cmp r0, #1
    bne loc_803DEFE
    mov r0, #0x17
    mov r1, #0x2f 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_803DEF8
    ldrh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    tst r0, r0
    beq loc_803DEF8
    sub r0, #1
    strh r0, [r7,#0xc] // (scamera.unk_5c - 0x20099d0)
    b loc_803DF16
loc_803DEF8:
    mov r1, #1
    strb r1, [r7,#0x6] // (scamera.pad_56 - 0x20099d0)
    b loc_803DF16
loc_803DEFE:
    cmp r0, #2
    bne loc_803DF16
    ldrb r2, [r7,#0x7] // (scamera.pad_56+1 - 0x20099d0)
    cmp r2, #2
    bne loc_803DF0E
    mov r0, #0xff
    strb r0, [r7,#0x7] // (scamera.pad_56+1 - 0x20099d0)
    b loc_803DF16
loc_803DF0E:
    strb r0, [r7,#0x7] // (scamera.pad_56+1 - 0x20099d0)
    mov r1, #1
    strb r1, [r7,#0x6] // (scamera.pad_56 - 0x20099d0)
    b loc_803DF16
loc_803DF16:
    ldr r0, [sp]
    mov r1, #3
    and r0, r1
    // <mkdata>
    .hword 0x0 // mov r0, r0
    str r0, [sp,#4]
    ldr r0, [sp]
    mov r1, #0x1c
    and r0, r1
    lsr r0, r0, #2
    str r0, [sp,#8]
    strb r0, [r7,#0x4] // (scamera.pad_54 - 0x20099d0)
    ldr r0, [sp]
    mov r1, #0x20 
    and r0, r1
    beq loc_803DF7E
    ldr r0, [sp,#8]
    cmp r0, #2
    blt loc_803DF42
    ldr r0, [sp]
    mov r1, #0x40 
    and r0, r1
    bne loc_803DF50
loc_803DF42:
    ldr r0, [sp]
    mov r1, #0x20 
    lsl r1, r1, #0x10
    and r0, r1
    beq loc_803DF86
    mov r6, #4
    b loc_803DF86
loc_803DF50:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    bl sub_803E018
    add r6, r0, #0
    cmp r6, #2
    bne loc_803DF86
    ldr r7, [sp,#8]
    bl loc_803E200
    tst r0, r0
    beq loc_803DF86
    cmp r0, #2
    bne loc_803DF72
    mov r6, #0x20 
    b loc_803DF86
loc_803DF72:
    cmp r0, #0x20 
    bne loc_803DF7A
    mov r6, #4
    b loc_803DF86
loc_803DF7A:
    mov r6, #8
    b loc_803DF86
loc_803DF7E:
    ldr r0, [sp]
    mov r1, #0x40 
    and r0, r1
    bne loc_803DF50
loc_803DF86:
    add sp, sp, #0x10
    cmp r6, #4
    bne loc_803DF96
    ldr r0, off_803DF9C // =sCamera+80 
    ldrb r1, [r0,#0x5] // (scamera.unk_55 - 0x20099d0)
    tst r1, r1
    beq loc_803DF96
    mov r6, #4
loc_803DF96:
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803DF9C:    .word sCamera+0x50 // sCamera.unk_50
off_803DFA0:    .word byte_200DD10
off_803DFA4:    .word unk_2009480
    .word byte_200F460
.endfunc // sub_803DEB4

.func
.thumb_func
sub_803DFAC:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r6, #0
    mov r1, #1
    lsl r1, r1, #8
    and r1, r4
    beq loc_803DFBE
    mov r0, #0x80
    orr r6, r0
loc_803DFBE:
    mov r1, #0x40 
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803DFCA
    mov r0, #0x40 
    orr r6, r0
loc_803DFCA:
    mov r1, #2
loc_803DFCC:
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803DFD6
    mov r0, #2
    orr r6, r0
loc_803DFD6:
    mov r1, #1
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803DFE2
    mov r0, #1
    orr r6, r0
loc_803DFE2:
    mov r1, #4
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803DFEE
    mov r0, #4
    orr r6, r0
loc_803DFEE:
    mov r1, #8
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803DFFA
    mov r0, #8
    orr r6, r0
loc_803DFFA:
    mov r1, #0x10
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803E006
    mov r0, #0x10
    orr r6, r0
loc_803E006:
    mov r1, #0x20 
    lsl r1, r1, #0x10
    and r1, r4
    beq loc_803E012
    mov r0, #0x20 
    orr r6, r0
loc_803E012:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_803DFAC

.func
.thumb_func
sub_803E018:
    push {r4-r7,lr}
    push {r0}
    bl ho_803E114
    pop {r0}
    bl sub_803DFAC
    mov r1, #0x7f
    and r1, r0
    bne loc_803E036
    mov r1, #0x80
    and r1, r0
    beq loc_803E03A
    mov r6, #8
    b loc_803E04A
loc_803E036:
    mov r6, #4
    b loc_803E04A
loc_803E03A:
    mov r6, #2
    mov r0, #4
    bl sub_803E7A4
    tst r1, r1
    bne loc_803E04A
    bl sub_803E7D8
loc_803E04A:
    add r0, r6, #0
    pop {r4-r7,pc}
    .byte 0, 0
    .word unk_2009940
    .word dword_803E088
    .byte 0x91
    .byte 0xE0
    .byte 3
    .byte 8
    .byte 0x9E
    .byte 0xE0
    .byte 3
    .byte 8
    .byte 0xA9
    .byte 0xE0
    .byte 3
    .byte 8
    .byte 0xB3
    .byte 0xE0
    .byte 3
    .byte 8
    .byte 0xBC
    .byte 0xE0
    .byte 3
    .byte 8
    .byte 0xC8
    .byte 0xE0
    .byte 3
    .byte 8
    .byte 0xD5
    .byte 0xE0
    .hword 0x803
    .word 0x803E0DF, 0x803E0EA, 0x803E0F4, 0x803E0FE, 0x803E108
dword_803E088:    .word 0x44490314
    .word 0x29442528
    .word 0x50041400
    .word 0x554E204C
    .word 0x4425284D
    .word 0x2140029
    .word 0x204F4953
    .word 0x54494157
    .word 0x53021400
    .word 0x4F204F49
    .word 0x14004646
    .word 0x4F495302
    .word 0x4E4F20
    .word 0x49530214
    .word 0x5245204F
    .word 0x524F52
    .word 0x49530214
    .word 0x5245204F
    .word 0x32524F52
    .word 0x530A1400
    .word 0x78303A54
    .word 0x14005825
    .word 0x4F4E5205
    .word 0x2578303A
    .word 0xD140058
    .word 0x56434552
    .word 0x58253A
    .word 0x45520E14
    .word 0x253A5643
    .word 0xF140058
    .word 0x56434552
    .word 0x58253A
    .word 0x3A53060A
    .word 0x522C4425
    .word 0x44253A
.endfunc // sub_803E018

.func
.thumb_func
ho_803E114:
    push {r4-r7,lr}
    mov r0, r8
    mov r3, r9
    push {r0,r3}
    ldr r5, off_803E14C // =byte_200DD10 
    ldr r7, off_803E150 // =sCamera+80 
    ldr r1, off_803E134 // =jt_803E138 
    ldrb r0, [r7]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r0,r3}
    mov r8, r0
    mov r9, r3
    pop {r4-r7,pc}
    .hword 0x0
off_803E134:    .word jt_803E138
jt_803E138:    .word sub_803E154+1
    .word sub_803E16C+1
    .word sub_803E1C0+1
    .word sub_803E1E0+1
    .word loc_803E1D0+1
off_803E14C:    .word byte_200DD10
off_803E150:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // ho_803E114

.func
.thumb_func
sub_803E154:
    push {lr}
    ldr r0, [r7,#0x1c]
    str r0, [r5,#4]
    ldrh r0, [r7,#0xa]
    strh r0, [r5,#2]
    ldr r0, [r7,#0x44]
    str r0, [r5,#0xc]
    ldr r0, [r7,#0x20]
    str r0, [r5,#8]
    mov r0, #0x60 
    strh r0, [r5]
    pop {pc}
.endfunc // sub_803E154

.func
.thumb_func
sub_803E16C:
    push {lr}
    ldrb r0, [r7,#2]
    lsl r0, r0, #2
    ldr r1, off_803E17C // =unk_803E180 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_803E17C:    .word unk_803E180
unk_803E180:    .byte 0x99
    .byte 0xE1
    .byte 3
    .byte 8
    .byte 0xAD
    .byte 0xE1
    .hword 0x803
    .word sub_803E1AC+1
    .word sub_803E1AC+1
    .word sub_803E1AC+1
    .word sub_803E198+1
.endfunc // sub_803E16C

.func
.thumb_func
sub_803E198:
    push {lr}
    ldr r0, [r7,#0x34]
    mov r4, #0x10
    mov r2, #0
loc_803E1A0:
    ldrh r3, [r0,r2]
    strh r3, [r5,r2]
    add r2, #2
    cmp r2, r4
    blt loc_803E1A0
    pop {pc}
.endfunc // sub_803E198

.func
.thumb_func
sub_803E1AC:
    push {lr}
    ldr r0, [r7,#0x34]
    mov r4, #0x10
    mov r2, #0
loc_803E1B4:
    ldrh r3, [r0,r2]
    strh r3, [r5,r2]
    add r2, #2
    cmp r2, r4
    blt loc_803E1B4
    pop {pc}
.endfunc // sub_803E1AC

.func
.thumb_func
sub_803E1C0:
    push {lr}
    ldrh r0, [r7,#0xa]
    strh r0, [r5,#2]
    ldr r0, [r7,#0x1c]
    str r0, [r5,#4]
    mov r0, #0x62 
    strh r0, [r5]
    pop {pc}
.endfunc // sub_803E1C0

loc_803E1D0:
    push {lr}
    ldrh r0, [r7,#0xa]
    .word 0x69F88068
    .word 0x20626068
    .word 0xBD008128
.func
.thumb_func
sub_803E1E0:
    push {lr}
    ldr r0, [r7,#0x54]
    sub r0, #1
    str r0, [r7,#0x54]
    bne loc_803E1EE
    mov r0, #4
    strb r0, [r7]
loc_803E1EE:
    ldr r0, [r7,#0x34]
    mov r4, #0x10
    mov r2, #0
loc_803E1F4:
    mov r3, #0
    strh r3, [r5,r2]
    add r2, #2
    cmp r2, r4
    blt loc_803E1F4
    pop {pc}
.endfunc // sub_803E1E0

loc_803E200:
    push {r4-r7,lr}
    ldr r5, off_803E22C // =unk_2009480 
    ldr r6, off_803E230 // =sCamera+80 
    mov r0, #1
    strb r0, [r6,#0x5] // (scamera.unk_55 - 0x20099d0)
    ldr r1, off_803E218 // =unk_803E21C 
    ldrb r0, [r6,#0x1] // (scamera.unk_51 - 0x20099d0)
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803E218:    .word unk_803E21C
unk_803E21C:    .byte 0x35 
    .byte 0xE2
    .byte 3
    .byte 8
    .byte 0x65 
    .byte 0xE5
    .byte 3
    .byte 8
    .byte 0xF9
    .byte 0xE6
    .byte 3
    .byte 8
    .byte 0x41 
    .byte 0xE7
    .hword 0x803
off_803E22C:    .word unk_2009480
off_803E230:    .word sCamera+0x50 // sCamera.unk_50
    push {lr}
    ldrb r0, [r6,#2]
    lsl r0, r0, #2
    ldr r1, off_803E244 // =off_803E248 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_803E244:    .word off_803E248
off_803E248:    .word sub_803E260+1
    .word loc_803E268+1
    .word loc_803E40C+1
    .word loc_803E548+1
    .word loc_803E548+1
    .word sub_803E260+1
.func
.thumb_func
sub_803E260:
    push {lr}
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_803E260

loc_803E268:
    push {r4-r7,lr}
    .byte 0x3
    .hword 0x604C
    .byte 0x78, 0x3, 0x49
    .word 0x46FE5808, 0xBDF04700, 0x200F360, 0x803E280, 0x803E289
    .word 0x803E34D, 0x2302B500, 0x43432004, 0x9300B084, 0x95029401
    .word 0xF0009603, 0xDC47FAF7, 0x1C3A1C2C, 0x43592100, 0x28625A60
    .word 0x2860D03B, 0x3402D13E, 0xDCF73A01, 0x1C3A1C2C, 0x43592101
    .word 0x26004D1F, 0x5BAB5A60, 0xB4024003, 0x428B491A, 0xD004BC02
    .word 0x4919B402, 0xBC02428B, 0x3402D128, 0x3A013602, 0x9901DCEE
    .word 0x9D028088, 0x1C2C9E03, 0x21021C3A, 0x43599B00, 0x5A60B402
    .word 0x5A6118C9, 0x43080409, 0x428869F1, 0x490FD004, 0xD0014288
    .word 0xE00DBC02, 0x3402BC02, 0xDCED3A01, 0x81F02001, 0x2000B004
    .word 0x2008BD00, 0xF0007030, 0xE7F7FAB7, 0x2001B004, 0xBD00
    .word 0x2000, 0x1000, 0x803E344, 0x10002000, 0x4252424A
    .word 0x2302B500, 0x43432004, 0x9300B084, 0x95029401, 0x1C2C9603
    .word 0x21001C3A, 0x5A604359, 0xD0432862, 0xD1462860, 0x3A013402
    .word 0x1C2CDCF7, 0x21011C3A, 0x5A604359, 0x40184B20, 0x3402D03B
    .word 0xDCF83A01, 0x1C3A1C2C, 0x9B002102, 0xB4024359, 0x18C95A60
    .word 0x4095A61, 0x69F14308, 0xD0044288, 0x42884917, 0xBC02D001
    .word 0xBC02E025, 0x3A013402, 0x1C2CDCED, 0x43592104, 0x5A603402
    .word 0x5A6118C9, 0x43080409, 0x1C2C6230, 0x43592106, 0x5A603402
    .word 0x5A6118C9, 0x43080409, 0x78706430, 0x70703004, 0x20027030
    .word 0xB00481F0, 0xBD002000, 0x70302008, 0xFA50F000, 0xB004E7F7
    .word 0xBD002001, 0x1010, 0x4252424A
loc_803E40C:
    push {r4-r7,lr}
    ldr r4, off_803E41C // =byte_200F360 
    ldrb r0, [r4,#0x1] // (byte_200F361 - 0x200f360)
    ldr r1, off_803E420 // =off_803E424 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_803E41C:    .word byte_200F360
off_803E420:    .word off_803E424
off_803E424:    .word sub_803E428+1
.func
.thumb_func
sub_803E428:
    push {r4-r7,lr}
    mov r3, #2
    mov r0, #4
    mul r3, r0
    sub sp, sp, #0x14
    str r7, [sp]
    str r4, [sp,#4]
    str r5, [sp,#8]
    str r6, [sp,#0xc]
    str r3, [sp,#0x10]
    mov r4, #0
    mov r7, #0
loc_803E440:
    add r0, r4, #0
    bl sub_8144D04
    cmp r0, #1
    bne loc_803E44C
    add r7, #1
loc_803E44C:
    cmp r0, #0
    beq loc_803E534
    add r4, #1
    ldr r0, [sp]
    cmp r4, r0
    blt loc_803E440
    cmp r7, #2
    bne loc_803E534
    ldr r7, [sp]
    add r4, r5, #0
    mov r1, #0
    ldr r3, [sp,#0x10]
    mul r1, r3
    mov r2, #0
loc_803E468:
    add r0, r2, #0
    add r0, #1
    bl sub_803E78C
    beq loc_803E47C
    ldrh r0, [r4,r1]
    cmp r0, #0x62 
    beq loc_803E52A
    cmp r0, #0x60 
    bne loc_803E534
loc_803E47C:
    add r4, #2
    add r2, #1
    cmp r2, r7
    blt loc_803E468
    add r4, r5, #0
    mov r1, #2
    ldr r3, [sp,#0x10]
    mul r1, r3
    mov r2, #0
loc_803E48E:
    add r0, r2, #0
    add r0, #1
    bl sub_803E78C
    beq loc_803E4AC
    push {r1}
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [r6,#0x1c]
    cmp r0, r1
    pop {r1}
    bne loc_803E534
loc_803E4AC:
    add r4, #2
    add r2, #1
    cmp r2, r7
    blt loc_803E48E
    add r4, r5, #0
    add r2, r7, #0
    mov r1, #1
    ldr r3, [sp,#0x10]
    mul r1, r3
    mov r2, #0
loc_803E4C0:
    add r0, r2, #0
    add r0, #1
    bl sub_803E78C
    beq loc_803E4D2
    ldrh r0, [r4,r1]
    ldrh r3, [r6,#0xa]
    cmp r0, r3
    bne loc_803E53A
loc_803E4D2:
    add r4, #2
    add r2, #1
    cmp r2, r7
    blt loc_803E4C0
    add r4, r5, #0
    mov r1, #4
    ldr r3, [sp,#0x10]
    mul r1, r3
    add r0, r4, #0
    bl sub_803E8B4
    add r4, r0, #0
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r6,#0x20]
    add r4, r5, #0
    mov r1, #6
    ldr r3, [sp,#0x10]
    mul r1, r3
    add r0, r4, #0
    bl sub_803E8B4
    add r4, r0, #0
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r6,#0x40]
    ldrb r0, [r6,#1]
    add r0, #4
    strb r0, [r6,#1]
    strb r0, [r6]
    mov r0, #2
    strh r0, [r6,#0xe]
    mov r0, #0
    strh r0, [r6,#0x1c]
    str r0, [r6,#0x30]
    add sp, sp, #0x14
    mov r0, #0
    pop {r4-r7,pc}
loc_803E52A:
    mov r0, #8
    strb r0, [r6]
    bl sub_803E89C
    b loc_803E4C0
loc_803E534:
    add sp, sp, #0x14
    mov r0, #1
    pop {r4-r7,pc}
loc_803E53A:
    add sp, sp, #0x14
    mov r0, #2
    pop {r4-r7,pc}
.endfunc // sub_803E428

    b loc_803DFCC
    lsr r3, r0, #0x20
    mov r0, #0
    asr r0, r2, #0x20
loc_803E548:
    push {r4-r7,lr}
    ldr r4, off_803E558 // =byte_200F360 
    ldrb r0, [r4,#0x1] // (byte_200F361 - 0x200f360)
    ldr r1, off_803E55C // =off_803E560 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_803E558:    .word byte_200F360
off_803E55C:    .word off_803E560
off_803E560:    .word sub_803E428+1
    push {lr}
    ldrb r0, [r6,#2]
    lsl r0, r0, #2
    ldr r1, off_803E574 // =off_803E578 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
off_803E574:    .word off_803E578
off_803E578:    .word sub_803E590+1
    .word sub_803E598+1
    .word sub_803E628+1
    .word sub_803E590+1
    .word sub_803E6A2+1
    .word sub_803E69C+1
.func
.thumb_func
sub_803E590:
    push {r4-r7,lr}
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803E590

.func
.thumb_func
sub_803E598:
    push {r4-r7,lr}
    ldr r4, off_803E604 // =byte_200F360 
    ldrb r0, [r4]
    tst r0, r0
    bne loc_803E5FE
    add r5, #2
    ldrb r0, [r4,#0x2] // (byte_200F362 - 0x200f360)
    tst r0, r0
    bne loc_803E5BC
    ldrh r2, [r5]
    cmp r2, #0x61 
    bne loc_803E5FE
    mov r0, #1
    strb r0, [r4,#0x2] // (byte_200F362 - 0x200f360)
    mov r0, #0
    str r0, [r4,#0x8] // (dword_200F368 - 0x200f360)
    mov r0, #0
    str r0, [r6,#0x28]
loc_803E5BC:
    mov r1, #0x38 
    add r1, r1, r6
    ldr r2, [r1]
    mov r1, #0xe
    ldr r7, [r6,#0x28]
    mov r3, #2
    mov r0, #4
    mul r3, r0
    add r5, r5, r3
loc_803E5CE:
    bl sub_803E608
    add r5, r5, r3
    add r7, #2
    sub r1, #2
    bgt loc_803E5CE
    str r7, [r6,#0x28]
    ldr r0, [r6,#0x20]
    cmp r7, r0
    blt loc_803E5FE
    ldr r0, [r6,#0x40]
    ldr r1, [r4,#0x8] // (dword_200F368 - 0x200f360)
    cmp r0, r1
    beq loc_803E5F6
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #4
    strh r0, [r6,#0xe]
    mov r0, #0x20 
    pop {r4-r7,pc}
loc_803E5F6:
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #4
    strh r0, [r6,#0xe]
loc_803E5FE:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803E604:    .word byte_200F360
.endfunc // sub_803E598

.func
.thumb_func
sub_803E608:
    push {r0-r7,lr}
    mov r3, #0
    ldr r0, [r6,#0x28]
    tst r0, r0
    bne loc_803E614
    ldrb r0, [r5,r3]
loc_803E614:
    ldrb r0, [r5,r3]
    strb r0, [r2,r7]
    ldr r1, [r4,#8]
    add r1, r1, r0
    str r1, [r4,#8]
    add r7, #1
    add r3, #1
    cmp r3, #2
    blt loc_803E614
    pop {r0-r7,pc}
.endfunc // sub_803E608

.func
.thumb_func
sub_803E628:
    push {r4-r7,lr}
    add r0, r5, #0
    bl sub_803E8B4
    add r5, r0, #0
    ldr r7, off_803E698 // =byte_200F360 
    ldrb r0, [r7,#0x2] // (byte_200F362 - 0x200f360)
    tst r0, r0
    bne loc_803E64E
    ldrh r2, [r5]
    cmp r2, #0x61 
    beq loc_803E644
    mov r0, #0
    b locret_803E696
loc_803E644:
    mov r0, #1
    strb r0, [r7,#0x2] // (byte_200F362 - 0x200f360)
    mov r0, #0
    str r0, [r7,#0x8] // (dword_200F368 - 0x200f360)
    str r0, [r6,#0x28]
loc_803E64E:
    mov r4, #0x38 
    bl sub_803DD30
    tst r0, r0
    beq loc_803E65A
    mov r4, #0x3c 
loc_803E65A:
    add r1, r4, r6
    ldr r2, [r1]
    mov r1, #0xe
    ldr r7, [r6,#0x28]
    mov r3, #2
    mov r0, #4
    mul r3, r0
    add r5, r5, r3
    ldr r4, off_803E698 // =byte_200F360 
loc_803E66C:
    bl sub_803E608
    add r5, r5, r3
    add r7, #2
    sub r1, #2
    bgt loc_803E66C
    mov r2, #0
    str r7, [r6,#0x28]
    ldr r0, [r6,#0x20]
    cmp r7, r0
    blt loc_803E694
    ldr r0, [r6,#0x40]
    ldr r1, [r4,#0x8] // (dword_200F368 - 0x200f360)
    cmp r0, r1
    beq loc_803E68C
    mov r2, #0x20 
loc_803E68C:
    mov r0, #8
    strb r0, [r6,#1]
    mov r0, #4
    strh r0, [r6,#0xe]
loc_803E694:
    add r0, r2, #0
locret_803E696:
    pop {r4-r7,pc}
off_803E698:    .word byte_200F360
.endfunc // sub_803E628

.func
.thumb_func
sub_803E69C:
    push {r4-r7,lr}
    nop 
    b loc_803E6A4
.endfunc // sub_803E69C

.func
.thumb_func
sub_803E6A2:
    push {r4-r7,lr}
loc_803E6A4:
    sub sp, sp, #0x10
    mov r0, #0
    str r0, [sp]
    str r0, [sp,#4]
    str r0, [sp,#8]
    mov r1, #0
    mov r2, #4
loc_803E6B2:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    bl sub_803E78C
    beq loc_803E6CA
    cmp r2, #4
    bne loc_803E6C6
    str r1, [sp,#4]
    b loc_803E6C8
loc_803E6C6:
    str r1, [sp,#8]
loc_803E6C8:
    add r2, #4
loc_803E6CA:
    add r1, #2
    cmp r1, #8
    blt loc_803E6B2
    ldr r3, [r6,#0x38]
    ldr r4, [r6,#0x3c]
    ldr r7, [r6,#0x20]
    mov r0, #2
    mov r1, #4
    mul r0, r1
loc_803E6DC:
    ldr r1, [sp,#4]
    ldrh r2, [r5,r1]
    strh r2, [r3]
    ldr r1, [sp,#8]
    ldrh r2, [r5,r1]
    strh r2, [r4]
    add r5, r5, r0
    add r3, #2
    add r4, #2
    sub r7, #2
    bgt loc_803E6DC
    add sp, sp, #0x10
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803E6A2

    push {lr}
    sub sp, sp, #0x10
    mov r0, #0
    str r0, [sp]
    ldrb r0, [r6,#8]
    tst r0, r0
    bne loc_803E72E
    mov r3, #2
    mov r1, #4
    mul r3, r1
loc_803E70C:
    add r2, r5, #0
    ldr r0, [sp]
    add r0, #1
    bl sub_803E78C
    beq loc_803E71E
    ldrh r0, [r2]
    cmp r0, #0x62 
    bne loc_803E738
loc_803E71E:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    add r5, #2
    sub r7, #1
    bgt loc_803E70C
    mov r0, #1
    strb r0, [r6,#8]
loc_803E72E:
    ldrh r0, [r6,#0xc]
    tst r0, r0
    beq loc_803E738
    sub r0, #1
    strh r0, [r6,#0xc]
loc_803E738:
    add sp, sp, #0x10
    mov r0, #0
    pop {pc}
    .byte 0, 0
    push {lr}
    sub sp, sp, #0x10
    mov r0, #0
    str r0, [sp]
    ldrb r0, [r6,#8]
    tst r0, r0
    bne loc_803E77C
    mov r3, #2
    mov r1, #4
    mul r3, r1
loc_803E754:
    add r2, r5, #0
    ldr r0, [sp]
    add r0, #1
    bl sub_803E78C
    beq loc_803E76C
    mov r1, #8
    mov r0, #4
    mul r1, r0
    ldrh r0, [r2,r1]
    cmp r0, #0x62 
    bne loc_803E786
loc_803E76C:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    add r5, #2
    sub r7, #1
    bgt loc_803E754
    mov r0, #1
    strb r0, [r6,#8]
loc_803E77C:
    ldrh r0, [r6,#0xc]
    tst r0, r0
    beq loc_803E786
    sub r0, #1
    strh r0, [r6,#0xc]
loc_803E786:
    add sp, sp, #0x10
    mov r0, #0
    pop {pc}
.func
.thumb_func
sub_803E78C:
    push {r0-r3,lr}
    sub r0, #1
    bl sub_8144D04
    cmp r0, #2
    beq locret_803E7A0
    cmp r0, #0xff
    beq locret_803E7A0
    mov r0, #1
    tst r0, r0
locret_803E7A0:
    pop {r0-r3,pc}
    .balign 4, 0x00
.endfunc // sub_803E78C

.func
.thumb_func
sub_803E7A4:
    push {r4-r7,lr}
    add r7, r0, #0
    bl sub_803DD30
    ldr r1, off_803E7C8 // =dword_803E7D4 
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    beq loc_803E7C2
    mov r1, #8
    mul r1, r7
    add r1, r1, r0
    ldr r0, off_803E7CC // =unk_2009940 
    ldrh r0, [r0,r1]
    mov r1, #0
    b locret_803E7C6
loc_803E7C2:
    mov r1, #1
    mov r0, #0
locret_803E7C6:
    pop {r4-r7,pc}
off_803E7C8:    .word dword_803E7D4
off_803E7CC:    .word unk_2009940
    .word sCamera+0x50 // sCamera.unk_50
dword_803E7D4:    .word 0x4FFFF02
.endfunc // sub_803E7A4

.func
.thumb_func
sub_803E7D8:
    push {r7,lr}
    ldrh r1, [r7,#0x14]
    cmp r0, r1
    beq loc_803E7E6
    strh r0, [r7,#0x14]
    mov r1, #0
    strh r1, [r7,#0x18]
loc_803E7E6:
    ldrh r1, [r7,#0x18]
    cmp r1, #8
    beq loc_803E7F2
    add r1, #1
    strh r1, [r7,#0x18]
    b locret_803E80A
loc_803E7F2:
    ldrh r1, [r7,#0x12]
    tst r1, r1
    bne loc_803E800
    strh r0, [r7,#0x16]
    strh r0, [r7,#0x10]
    strh r0, [r7,#0x12]
    b locret_803E80A
loc_803E800:
    ldrh r1, [r7,#0x10]
    strh r1, [r7,#0x12]
    strh r0, [r7,#0x10]
    mov r0, #0
    strh r0, [r7,#0x16]
locret_803E80A:
    pop {r7,pc}
.endfunc // sub_803E7D8

    push {r0-r7,lr}
    bl sub_800A7D0
    beq locret_803E826
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldrb r0, [r0]
    cmp r0, #4
    bne locret_803E826
    tst r2, r2
    bne locret_803E826
    mov r2, #0xc
    strb r2, [r6]
locret_803E826:
    pop {r0-r7,pc}
.func
.thumb_func
sub_803E828:
    push {r0-r2,r7,lr}
    ldrb r1, [r5,#0xe]
    cmp r1, #5
    ble loc_803E832
    b loc_803E838
loc_803E832:
    ldrb r2, [r5,#0xf]
    cmp r2, #5
    ble locret_803E84A
loc_803E838:
    ldr r7, off_803E84C // =sCamera+80 
    add r0, r1, #0
    cmp r1, r2
    bge loc_803E842
    add r0, r2, #0
loc_803E842:
    add r0, #8
    str r0, [r7,#0x54] // (dword_2009A24 - 0x20099d0)
    mov r0, #0xc
    strb r0, [r7]
locret_803E84A:
    pop {r0-r2,r7,pc}
off_803E84C:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803E828

.func
.thumb_func
sub_803E850:
    push {r0-r2,r7,lr}
    ldrb r1, [r5,#0xe]
    cmp r1, #5
    ble loc_803E85A
    b loc_803E860
loc_803E85A:
    ldrb r2, [r5,#0xf]
    cmp r2, #5
    ble locret_803E87A
loc_803E860:
    ldr r7, off_803E87C // =sCamera+80 
    add r0, r1, #0
    cmp r1, r2
    bge loc_803E86A
    add r0, r2, #0
loc_803E86A:
    add r0, #8
    ldr r1, [r7,#0x54] // (dword_2009A24 - 0x20099d0)
    cmp r0, r1
    bge loc_803E874
    add r0, r1, #0
loc_803E874:
    str r0, [r7,#0x54] // (dword_2009A24 - 0x20099d0)
    mov r0, #0xc
    strb r0, [r7]
locret_803E87A:
    pop {r0-r2,r7,pc}
off_803E87C:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803E850

.func
.thumb_func
sub_803E880:
    push {lr}
    mov r1, #8
    strb r1, [r0]
    mov r1, #0x10
    strh r1, [r0,#0xc]
    pop {pc}
.endfunc // sub_803E880

    push {lr}
    ldr r2, off_803E898 // =sCamera+80 
    ldrb r0, [r2,#0x4] // (scamera.pad_54 - 0x20099d0)
    ldrb r1, [r2,#0x3] // (scamera.unk_53 - 0x20099d0)
    cmp r0, r1
    pop {pc}
off_803E898:    .word sCamera+0x50 // sCamera.unk_50
.func
.thumb_func
sub_803E89C:
    push {lr}
    ldr r6, off_803E8B0 // =sCamera+80 
    mov r0, #0
    strh r0, [r6,#0xe] // (scamera.pad_5e - 0x20099d0)
    mov r0, #8
    strb r0, [r6,#0x1] // (scamera.unk_51 - 0x20099d0)
    add r0, r6, #0
    bl sub_803E880
    pop {pc}
off_803E8B0:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803E89C

.func
.thumb_func
sub_803E8B4:
    push {r1-r7,lr}
    add r7, r0, #0
    mov r6, #1
loc_803E8BA:
    add r0, r6, #0
    bl sub_803E78C
    beq loc_803E8CC
    bl sub_803DD30
    sub r1, r6, #1
    cmp r0, r1
    bne loc_803E8D4
loc_803E8CC:
    add r6, #1
    cmp r6, #4
    ble loc_803E8BA
    b loc_803E8D8
loc_803E8D4:
    lsl r1, r1, #1
    add r7, r7, r1
loc_803E8D8:
    add r0, r7, #0
    pop {r1-r7,pc}
.endfunc // sub_803E8B4

.func
.thumb_func
sub_803E8DC:
    ldr r0, off_803E8EC // =sCamera+80 
    ldr r0, [r0,#0x24] // (scamera.unk_74 - 0x20099d0)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803E8DC

    ldr r0, off_803E8EC // =sCamera+80 
    ldrb r0, [r0]
    mov pc, lr
    .balign 4, 0x00
off_803E8EC:    .word sCamera+0x50 // sCamera.unk_50
    push {lr}
    mov r0, #0
    tst r0, r0
    pop {pc}
.func
.thumb_func
sub_803E8F8:
    ldr r0, off_803E8FC // =sCamera+80 
    mov pc, lr
off_803E8FC:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803E8F8

.func
.thumb_func
sub_803E900:
    push {r4,lr}
    ldr r0, off_803E960 // =byte_200B1A0 
    add r4, r0, #0
    mov r1, #8
    bl sub_80008B4
    mov r0, #0xb4
    strb r0, [r4,#0x3] // (byte_200B1A3 - 0x200b1a0)
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_803E900

.func
.thumb_func
sub_803E914:
    push {r4,lr}
    ldr r0, off_803E960 // =byte_200B1A0 
    add r4, r0, #0
    mov r1, #8
    bl sub_80008B4
    mov r0, #1
    strb r0, [r4,#0x3] // (byte_200B1A3 - 0x200b1a0)
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_803E914

.func
.thumb_func
sub_803E928:
    ldr r0, off_803E960 // =byte_200B1A0 
    ldrb r0, [r0]
    cmp r0, #2
    mov pc, lr
.endfunc // sub_803E928

.func
.thumb_func
sub_803E930:
    mov r0, #0
    tst r0, r0
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803E930

.func
.thumb_func
sub_803E938:
    push {r4,lr}
    ldr r4, off_803E960 // =byte_200B1A0 
    ldrb r0, [r4]
    cmp r0, #1
    beq loc_803E94C
    cmp r0, #2
    beq loc_803E958
    bl sub_803E964
    b locret_803E95C
loc_803E94C:
    bl sub_803E978
    bne locret_803E95C
    mov r0, #2
    strb r0, [r4]
    b locret_803E95C
loc_803E958:
    bl sub_803EA1C
locret_803E95C:
    pop {r4,pc}
    .byte 0, 0
off_803E960:    .word byte_200B1A0
.endfunc // sub_803E938

.func
.thumb_func
sub_803E964:
    push {r4-r7,lr}
    ldr r5, off_803EA14 // =byte_200B1A0 
    ldrb r0, [r5,#0x3] // (byte_200B1A3 - 0x200b1a0)
    sub r0, #1
    strb r0, [r5,#0x3] // (byte_200B1A3 - 0x200b1a0)
    bne locret_803E974
    mov r0, #1
    strb r0, [r5]
locret_803E974:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803E964

.func
.thumb_func
sub_803E978:
    push {r4-r7,lr}
    ldr r5, off_803EA14 // =byte_200B1A0 
    mov r6, #1
    bl sub_803E930
    bne loc_803EA0A
    bl sub_813DA94
    tst r0, r0
    bne loc_803E9A8
    bl sub_813D60C
    beq loc_803EA0A
    cmp r0, #1
    beq loc_803E99C
    bl sub_8149644
    b loc_803E9A8
loc_803E99C:
    bl sub_8149644
    mov r0, #1
    strb r0, [r5,#0x2] // (byte_200B1A2 - 0x200b1a0)
    mov r6, #0
    b loc_803EA0A
loc_803E9A8:
    bl sub_803F524
    bne loc_803E9C8
    ldrb r0, [r5,#0x1] // (byte_200B1A1 - 0x200b1a0)
    tst r0, r0
    bne loc_803E9C8
    mov r0, #1
    strb r0, [r5,#0x1] // (byte_200B1A1 - 0x200b1a0)
    bl sub_803F4C8
    mov r0, #0
    bl sub_803F6B0
    bl sub_803F50C
    b loc_803EA0A
loc_803E9C8:
    mov r6, #0
    mov r4, #1
    bl sub_803F560
    beq loc_803E9E6
    mov r6, #1
    mov r4, #0
    ldr r1, off_803EA18 // =byte_200AD04 
    ldrh r0, [r1,#0x2] // (word_200AD06 - 0x200ad04)
    tst r0, r0
    beq loc_803E9E4
    sub r0, #1
    strh r0, [r1,#0x2] // (word_200AD06 - 0x200ad04)
    b loc_803EA0A
loc_803E9E4:
    mov r6, #0
loc_803E9E6:
    add r0, r4, #0
    bl sub_803F4EC
    tst r4, r4
    beq loc_803EA0A
    mov r0, #1
    mov r1, #0xe3
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_803EA0A
    mov r0, #0
    mov r1, #0x7a 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x7b 
    bl sub_802F12C // (int a1, int a2) -> void
loc_803EA0A:
    add r0, r6, #0
    tst r0, r0
    pop {r4-r7,pc}
    .word sCamera+0x50 // sCamera.unk_50
off_803EA14:    .word byte_200B1A0
off_803EA18:    .word byte_200AD04
.endfunc // sub_803E978

.func
.thumb_func
sub_803EA1C:
    push {r4-r7,lr}
    bl sub_803F524
    beq locret_803EA28
    bl sub_803F560
locret_803EA28:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803EA1C

.func
.thumb_func
sub_803EA2C:
    push {lr}
    mov r0, #0
    ldr r1, off_803EA3C // =sCamera+80 
    ldrb r1, [r1]
    cmp r1, #0xc
    bne locret_803EA3A
    mov r0, #1
locret_803EA3A:
    pop {pc}
off_803EA3C:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803EA2C

    ldr r1, off_803EBF8 // =byte_200BC30 
    ldrb r0, [r1,#0x2] // (byte_200BC32 - 0x200bc30)
    mov pc, lr
    .balign 4, 0x00
.func
.thumb_func
sub_803EA48:
    ldr r1, off_803EBF8 // =byte_200BC30 
    strb r0, [r1,#0x2] // (byte_200BC32 - 0x200bc30)
    mov pc, lr
    .byte 0, 0
.endfunc // sub_803EA48

.func
.thumb_func
sub_803EA50:
    ldr r1, off_803EBF8 // =byte_200BC30 
    ldrb r0, [r1,#0x1] // (byte_200BC31 - 0x200bc30)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803EA50

.func
.thumb_func
sub_803EA58:
    ldr r1, off_803EBF8 // =byte_200BC30 
    strb r0, [r1,#0x1] // (byte_200BC31 - 0x200bc30)
    mov pc, lr
    .byte 0, 0
.endfunc // sub_803EA58

.func
.thumb_func
sub_803EA60:
    ldr r1, off_803EBF8 // =byte_200BC30 
    ldrb r0, [r1]
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803EA60

.func
.thumb_func
sub_803EA68:
    push {lr}
    bl sub_803EA60
    pop {pc}
.endfunc // sub_803EA68

.func
.thumb_func
sub_803EA70:
    ldr r1, off_803EBF8 // =byte_200BC30 
    strb r0, [r1]
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803EA70

loc_803EA78:
    push {r4-r7,lr}
    ldr r5, off_803EBF8 // =byte_200BC30 
    ldrb r0, [r5]
    ldr r1, off_803EA88 // =off_803EA8C 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_803EA88:    .word off_803EA8C
off_803EA8C:    .word sub_803EA98+1
    .word sub_803EABC+1
    .word sub_803EAD0+1
.func
.thumb_func
sub_803EA98:
    push {lr}
    bl sub_803EFCC
    ldr r0, off_803EAB8 // =byte_200F360 
    mov r1, #0x20 
    bl sub_80008C0
    ldr r0, off_803EAB0 // =dword_200F444 
    ldr r1, dword_803EAB4 // =0xA6C0 
    str r1, [r0]
    pop {pc}
    .byte 0, 0
off_803EAB0:    .word dword_200F444
dword_803EAB4:    .word 0xA6C0
off_803EAB8:    .word byte_200F360
.endfunc // sub_803EA98

.func
.thumb_func
sub_803EABC:
    push {lr}
    bl sub_8146CFC
    bl sub_803EFCC
    mov r0, #1
    bl sub_803EA58
    pop {pc}
    .byte 0, 0
.endfunc // sub_803EABC

.func
.thumb_func
sub_803EAD0:
    push {lr}
    bl sub_8146CFC
    bl sub_803EFCC
    mov r0, #1
    bl sub_803EA58
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_803EAD0

.func
.thumb_func
sub_803EAE4:
    push {r4-r7,lr}
    ldr r5, off_803EBF8 // =byte_200BC30 
    ldrb r0, [r5]
    ldr r1, off_803EAF4 // =off_803EAF8 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_803EAF4:    .word off_803EAF8
off_803EAF8:    .word sub_803EB04+1
    .word sub_803EB14+1
    .word sub_803EB60+1
.endfunc // sub_803EAE4

.func
.thumb_func
sub_803EB04:
    push {lr}
    bl sub_803DEB4
    cmp r0, #2
    bne locret_803EB12
    bl loc_803ED1C
locret_803EB12:
    pop {pc}
.endfunc // sub_803EB04

.func
.thumb_func
sub_803EB14:
    push {r4,lr}
    mov r4, #0
    bl sub_803C620
    tst r1, r1
    bne loc_803EB2E
    tst r0, r0
    beq loc_803EB2E
    cmp r0, #2
    beq loc_803EB2C
    mov r0, #2
    strb r0, [r5,#0xe]
loc_803EB2C:
    mov r4, #4
loc_803EB2E:
    ldrb r0, [r5,#1]
    tst r0, r0
    bne loc_803EB3A
    bl sub_8146E78
    b loc_803EB46
loc_803EB3A:
    bl sub_8148884
    cmp r4, #4
    bne loc_803EB46
    add r0, r4, #0
    b locret_803EB5E
loc_803EB46:
    bl loc_803EBFC
    push {r0}
    bl sub_803EFA0
    pop {r0}
    beq locret_803EB5E
    bl sub_803EBF4
    mov r1, #8
    strb r1, [r0,#0xe]
    mov r0, #4
locret_803EB5E:
    pop {r4,pc}
.endfunc // sub_803EB14

.func
.thumb_func
sub_803EB60:
    push {r4,lr}
    mov r4, #0
    bl sub_803C620
    tst r1, r1
    bne loc_803EB7A
    tst r0, r0
    beq loc_803EB7A
    cmp r0, #2
    beq loc_803EB78
    mov r0, #2
    strb r0, [r5,#0xe]
loc_803EB78:
    mov r4, #4
loc_803EB7A:
    ldrb r0, [r5,#1]
    tst r0, r0
    bne loc_803EB86
    bl sub_8147B3C
    b loc_803EB92
loc_803EB86:
    bl sub_8148FC0
    cmp r4, #4
    bne loc_803EB92
    add r0, r4, #0
    b locret_803EBAA
loc_803EB92:
    bl loc_803EBFC
    push {r0}
    bl sub_803EFA0
    pop {r0}
    beq locret_803EBAA
    bl sub_803EBF4
    mov r1, #8
    strb r1, [r0,#0xe]
    mov r0, #4
locret_803EBAA:
    pop {r4,pc}
.endfunc // sub_803EB60

.func
.thumb_func
sub_803EBAC:
    push {lr}
    // memBlock
    ldr r0, off_803EBF8 // =byte_200BC30 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
.endfunc // sub_803EBAC

.func
.thumb_func
sub_803EBB8:
    push {lr}
    ldr r0, off_803EBF8 // =byte_200BC30 
    mov r1, #2
    add r0, r0, r1
    mov r1, #0x20 
    bl sub_80008B4
    pop {pc}
.endfunc // sub_803EBB8

.func
.thumb_func
sub_803EBC8:
    push {lr}
    ldr r0, off_803EBE0 // =dword_200B1B0 
    bl sub_803EF84
    // memBlock
    ldr r0, off_803EBF8 // =byte_200BC30 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_803EF60
    pop {pc}
    .byte 0, 0
off_803EBE0:    .word dword_200B1B0
.endfunc // sub_803EBC8

.func
.thumb_func
sub_803EBE4:
    ldr r1, off_803EBF8 // =byte_200BC30 
    strb r0, [r1,#0x5] // (byte_200BC35 - 0x200bc30)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803EBE4

    ldr r1, off_803EBF8 // =byte_200BC30 
    ldrb r0, [r1,#0x5] // (byte_200BC35 - 0x200bc30)
    mov pc, lr
    .balign 4, 0x00
.func
.thumb_func
sub_803EBF4:
    ldr r0, off_803EBF8 // =byte_200BC30 
    mov pc, lr
off_803EBF8:    .word byte_200BC30
.endfunc // sub_803EBF4

loc_803EBFC:
    push {r4-r7,lr}
    ldr r5, off_803EC18 // =byte_200BC30 
    ldr r0, off_803EC0C // =off_803EC10 
    ldrb r1, [r5,#0x5] // (byte_200BC35 - 0x200bc30)
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_803EC0C:    .word off_803EC10
off_803EC10:    .word sub_803EC1C+1
    .word sub_803EC54+1
off_803EC18:    .word byte_200BC30
.func
.thumb_func
sub_803EC1C:
    push {r4-r7,lr}
    mov r7, #1
    mov r0, #0x10
    bl sub_803CB18
    beq loc_803EC50
    bl sub_803F3A8
    tst r0, r0
    bne loc_803EC34
    mov r0, #4
    strb r0, [r5,#5]
loc_803EC34:
    bl sub_803F06C
    tst r1, r1
    beq loc_803EC3C
loc_803EC3C:
    bl sub_803EF7C
    add r1, r0, #0
    ldr r0, dword_803ED18 // =0xFE 
    strh r0, [r1]
    bl sub_803EF7C
    mov r1, #0x10
    bl sub_803F00C
loc_803EC50:
    add r0, r7, #0
    pop {r4-r7,pc}
.endfunc // sub_803EC1C

.func
.thumb_func
sub_803EC54:
    push {r4-r7,lr}
    mov r7, #8
    bl sub_803F158
    strb r1, [r5,#9]
    tst r1, r1
    beq loc_803EC68
    cmp r1, #2
    beq loc_803EC7C
    b loc_803EC68
loc_803EC68:
    mov r7, #2
    bl sub_803E8DC
    add r1, r0, #0
    bl sub_803EF74
    bl sub_803F118
    bl sub_803EFFC
loc_803EC7C:
    bl sub_803F3D8
    tst r0, r0
    beq loc_803ECA6
    cmp r0, #2
    bne loc_803ECA6
    add r4, r2, #0
    bl sub_803EA60
    cmp r0, #4
    bne loc_803EC9C
    tst r4, r4
    beq loc_803ECA6
    mov r0, #0x10
    orr r7, r0
    b loc_803ECEE
loc_803EC9C:
    tst r4, r4
    bne loc_803ECA6
    mov r0, #0x10
    orr r7, r0
    b loc_803ECEE
loc_803ECA6:
    bl sub_803F06C
    tst r1, r1
    beq loc_803ECBA
    cmp r1, #2
    bne loc_803ECB4
    b loc_803ECC6
loc_803ECB4:
    mov r0, #0x10
    orr r7, r0
    b loc_803ECF8
loc_803ECBA:
    ldrb r0, [r5,#9]
    cmp r0, #1
    bne loc_803ECC6
    mov r0, #0x10
    orr r7, r0
    b loc_803ECF8
loc_803ECC6:
    bl sub_803EF7C
    add r4, r0, #0
    bl sub_813D91C
    tst r0, r0
    bne loc_803ECDE
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    strb r0, [r4,#1]
    b loc_803ECE6
loc_803ECDE:
    ldrb r0, [r5,#8]
    add r0, #1
    strb r0, [r5,#8]
    strb r0, [r4,#1]
loc_803ECE6:
    mov r0, r10
    ldr r0, [r0,#4]
    mov r0, #0xfc
    strb r0, [r4]
loc_803ECEE:
    bl sub_803EF7C
    mov r1, #0x10
    bl sub_803F00C
loc_803ECF8:
    add r0, r7, #0
    pop {r4-r7,pc}
.endfunc // sub_803EC54

.func
.thumb_func
sub_803ECFC:
    push {lr}
    bl sub_803EF7C
    add r1, r0, #0
    ldr r0, dword_803ED18 // =0xFE 
    strh r0, [r1]
    bl sub_803EF7C
    mov r1, #0x10
    bl sub_803F00C
    pop {pc}
    .word dword_200B1B0
dword_803ED18:    .word 0xFE
.endfunc // sub_803ECFC

loc_803ED1C:
    push {r4-r7,lr}
    add r7, r0, #0
    ldr r5, off_803ED48 // =byte_200BC30 
    ldr r0, off_803ED3C // =off_803ED40 
    ldrb r1, [r5,#0x5] // (byte_200BC35 - 0x200bc30)
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_803ED38
    cmp r0, #4
    bne loc_803ED38
    add r7, r0, #0
loc_803ED38:
    add r0, r7, #0
    pop {r4-r7,pc}
off_803ED3C:    .word off_803ED40
off_803ED40:    .word sub_803ED4C+1
    .word sub_803EE98+1
off_803ED48:    .word byte_200BC30
.func
.thumb_func
sub_803ED4C:
    push {r4-r7,lr}
    ldr r5, off_803EE84 // =unk_2009480 
    ldr r6, off_803EE88 // =sCamera+80 
    ldrb r7, [r6,#0x4] // (scamera.pad_54 - 0x20099d0)
    mov r3, #2
    mov r0, #4
    mul r3, r0
    sub sp, sp, #0x14
    str r7, [sp]
    str r4, [sp,#4]
    str r5, [sp,#8]
    str r6, [sp,#0xc]
    str r3, [sp,#0x10]
    mov r4, #0
    mov r7, #0
loc_803ED6A:
    add r0, r4, #0
    bl sub_8144D04
    cmp r0, #1
    bne loc_803ED76
    add r7, #1
loc_803ED76:
    cmp r0, #0
    beq loc_803EE6A
    add r4, #1
    ldr r0, [sp]
    cmp r4, r0
    blt loc_803ED6A
    cmp r7, #2
    bne loc_803EE6A
    ldr r7, [sp]
    add r4, r5, #0
    mov r1, #0
    ldr r3, [sp,#0x10]
    mul r1, r3
loc_803ED90:
    mov r2, #0
loc_803ED92:
    add r0, r2, #0
    add r0, #1
    bl sub_803E78C
    beq loc_803EDA6
    ldrh r0, [r4,r1]
    cmp r0, #0x62 
    beq loc_803EE60
    cmp r0, #0x60 
    bne loc_803EE6A
loc_803EDA6:
    add r4, #2
    add r2, #1
    cmp r2, r7
    blt loc_803ED92
    add r4, r5, #0
    mov r1, #2
    ldr r3, [sp,#0x10]
    mul r1, r3
    mov r2, #0
loc_803EDB8:
    add r0, r2, #0
    add r0, #1
    bl sub_803E78C
    beq loc_803EDD6
    push {r1}
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    ldr r1, [r6,#0x1c] // (scamera.pad_6a+2 - 0x20099d0)
    cmp r0, r1
    pop {r1}
    bne loc_803EE6A
loc_803EDD6:
    add r4, #2
    add r2, #1
    cmp r2, r7
    blt loc_803EDB8
    add r4, r5, #0
    mov r1, #4
    ldr r3, [sp,#0x10]
    mul r1, r3
    add r0, r4, #0
    bl sub_803E8B4
    add r4, r0, #0
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r6,#0x20] // (scamera.unk_70 - 0x20099d0)
    ldr r1, dword_803EE8C // =0x800 
    cmp r0, r1
    bne loc_803EE08
    ldr r0, off_803EE90 // =sSubmenu 
    ldrb r0, [r0]
    cmp r0, #0xc
    bne loc_803EE6A
loc_803EE08:
    add r4, r5, #0
    mov r1, #1
    ldr r3, [sp,#0x10]
    mul r1, r3
    add r0, r4, #0
    bl sub_803E8B4
    add r4, r0, #0
    ldrh r0, [r4,r1]
    ldr r1, dword_803EE94 // =0x1000 
    tst r0, r1
    beq loc_803EE28
    ldr r0, off_803EE90 // =sSubmenu 
    ldrb r0, [r0]
    cmp r0, #0xc
    bne loc_803EE6A
loc_803EE28:
    add r4, r5, #0
    mov r1, #6
    ldr r3, [sp,#0x10]
    mul r1, r3
    add r0, r4, #0
    bl sub_803E8B4
    add r4, r0, #0
    ldrh r0, [r4,r1]
    add r1, r1, r3
    ldrh r1, [r4,r1]
    lsl r1, r1, #0x10
    orr r0, r1
    str r0, [r6,#0x40] // (dword_2009A10 - 0x20099d0)
    ldrb r0, [r6,#0x1] // (scamera.unk_51 - 0x20099d0)
    add r0, #4
    strb r0, [r6,#0x1] // (scamera.unk_51 - 0x20099d0)
    strb r0, [r6]
    mov r0, #2
    strh r0, [r6,#0xe] // (scamera.pad_5e - 0x20099d0)
    mov r0, #0
    str r0, [r6,#0x30] // (scamera.pad_78+8 - 0x20099d0)
    mov r0, #4
    bl sub_803EBE4
    add sp, sp, #0x14
    mov r0, #2
    pop {r4-r7,pc}
loc_803EE60:
    mov r0, #8
    strb r0, [r6]
    bl sub_803E89C
    b loc_803EDB8
loc_803EE6A:
    add sp, sp, #0x14
    mov r0, #2
    bl sub_803EA48
    mov r0, #4
    pop {r4-r7,pc}
.endfunc // sub_803ED4C

    add sp, sp, #0x14
    mov r0, #8
    bl sub_803EA48
    mov r0, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803EE84:    .word unk_2009480
off_803EE88:    .word sCamera+0x50 // sCamera.unk_50
dword_803EE8C:    .word 0x800
off_803EE90:    .word sSubmenu
dword_803EE94:    .word 0x1000
.func
.thumb_func
sub_803EE98:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    ldr r6, off_803EF44 // =sCamera+80 
    ldr r5, off_803EF40 // =unk_2009480 
    mov r0, #0
    str r0, [sp]
    str r0, [sp,#4]
    str r0, [sp,#8]
    str r7, [sp,#0xc]
    mov r1, #0
    mov r2, #4
loc_803EEAE:
    ldr r0, [sp]
    add r0, #1
    str r0, [sp]
    bl sub_803E78C
    beq loc_803EEC6
    cmp r2, #4
    bne loc_803EEC2
    str r1, [sp,#4]
    b loc_803EEC4
loc_803EEC2:
    str r1, [sp,#8]
loc_803EEC4:
    add r2, #4
loc_803EEC6:
    add r1, #2
    cmp r1, #8
    blt loc_803EEAE
    ldr r3, [r6,#0x38] // (scamera.unk_88 - 0x20099d0)
    ldr r4, [r6,#0x3c] // (scamera.unk_8c - 0x20099d0)
    ldr r7, [r6,#0x20] // (scamera.unk_70 - 0x20099d0)
    mov r0, #2
    mov r1, #4
    mul r0, r1
loc_803EED8:
    ldr r1, [sp,#4]
    ldrh r2, [r5,r1]
    strh r2, [r3]
    ldr r1, [sp,#8]
    ldrh r2, [r5,r1]
    strh r2, [r4]
    add r5, r5, r0
    add r3, #2
    add r4, #2
    sub r7, #2
    bgt loc_803EED8
    ldr r0, [r6,#0x38] // (scamera.unk_88 - 0x20099d0)
    ldrb r0, [r0]
    mov r1, #0xfc
    and r0, r1
    cmp r0, #0xfc
    bne loc_803EF00
    ldr r5, [r6,#0x38] // (scamera.unk_88 - 0x20099d0)
    bl sub_803E828
loc_803EF00:
    ldr r0, [r6,#0x3c] // (scamera.unk_8c - 0x20099d0)
    ldrb r0, [r0]
    mov r1, #0xfc
    and r0, r1
    cmp r0, #0xfc
    bne loc_803EF12
    ldr r5, [r6,#0x3c] // (scamera.unk_8c - 0x20099d0)
    bl sub_803E850
loc_803EF12:
    bl sub_803EF7C
    add r4, r0, #0
    bl sub_8144D18
    strb r0, [r4,#0xe]
    bl sub_8144D24
    strb r0, [r4,#0xf]
    bl sub_803EBF4
    add r1, r0, #0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0]
    lsr r0, r0, #8
    strb r0, [r4]
    ldrb r0, [r1,#7]
    add r0, #1
    strb r0, [r1,#7]
    strb r0, [r4,#1]
    add sp, sp, #0x14
    pop {r4-r7,pc}
off_803EF40:    .word unk_2009480
off_803EF44:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803EE98

.func
.thumb_func
sub_803EF48:
    push {r0-r2,lr}
    ldr r1, off_803EF5C // =byte_200BC30 
    ldrb r2, [r1,#0xd] // (byte_200BC3D - 0x200bc30)
    orr r2, r0
    strb r2, [r1,#0xd] // (byte_200BC3D - 0x200bc30)
    pop {r0-r2,pc}
.endfunc // sub_803EF48

    push {lr}
    ldr r1, off_803EF5C // =byte_200BC30 
    ldrb r0, [r1,#0xd] // (byte_200BC3D - 0x200bc30)
    pop {pc}
off_803EF5C:    .word byte_200BC30
.func
.thumb_func
sub_803EF60:
    push {lr}
    bl sub_803EF7C
    ldr r1, off_803EF70 // =0x100 
    bl sub_8000900 // (int a1, int a2) -> void
    pop {pc}
    .byte 0, 0
off_803EF70:    .word 0x100
.endfunc // sub_803EF60

.func
.thumb_func
sub_803EF74:
    ldr r0, off_803EF8C // =sCamera+80 
    ldr r0, [r0,#0x38] // (scamera.unk_88 - 0x20099d0)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803EF74

.func
.thumb_func
sub_803EF7C:
    ldr r0, off_803EF8C // =sCamera+80 
    ldr r0, [r0,#0x34] // (scamera.unk_84 - 0x20099d0)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803EF7C

.func
.thumb_func
sub_803EF84:
    ldr r1, off_803EF8C // =sCamera+80 
    str r0, [r1,#0x34] // (scamera.unk_84 - 0x20099d0)
    mov pc, lr
    .balign 4, 0x00
off_803EF8C:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803EF84

    push {lr}
    ldr r0, off_803EF9C // =unk_200F380 
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
off_803EF9C:    .word unk_200F380
.func
.thumb_func
sub_803EFA0:
    push {r4-r7,lr}
    mov r4, #1
    mov r7, #0
loc_803EFA6:
    ldr r1, off_803EFC4 // =word_2010420 
    lsl r2, r7, #1
    add r1, r1, r2
    ldrh r0, [r1]
    ldr r2, off_803EFC8 // =0x168 
    cmp r0, r2
    bge loc_803EFBC
    add r7, #1
    cmp r7, #4
    blt loc_803EFA6
    mov r4, #0
loc_803EFBC:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803EFC4:    .word word_2010420
off_803EFC8:    .word 0x168
.endfunc // sub_803EFA0

.func
.thumb_func
sub_803EFCC:
    push {lr}
    // memBlock
    ldr r0, off_803F268 // =byte_200AC20 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    // memBlock
    ldr r0, off_803F260 // =unk_2009AC0 
    // numWords
    mov r1, #0x40 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    // memBlock
    ldr r0, off_803F264 // =unk_200BC70 
    // numWords
    ldr r1, off_803EFF8 // =0x200 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    // memBlock
    ldr r0, off_803F258 // =unk_200A010 
    // numWords
    ldr r1, off_803EFF8 // =0x200 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
    .word 0x1500, 0x1500
off_803EFF8:    .word 0x200
.endfunc // sub_803EFCC

.func
.thumb_func
sub_803EFFC:
    ldr r0, off_803F268 // =byte_200AC20 
    mov r1, #1
    strb r1, [r0,#0x7] // (byte_200AC27 - 0x200ac20)
    mov pc, lr
.endfunc // sub_803EFFC

    ldr r1, off_803F268 // =byte_200AC20 
    ldrb r0, [r1,#0x7] // (byte_200AC27 - 0x200ac20)
    tst r0, r0
    mov pc, lr
.func
.thumb_func
sub_803F00C:
    push {r4-r7,lr}
    add r7, r1, #0
    ldr r1, off_803F260 // =unk_2009AC0 
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r4, [r5]
    mov r2, #0x40 
    mul r2, r4
    add r1, r1, r2
    add r6, r1, #0
    add r2, r7, #0
    bl CpuSet_800093C
    add r4, #1
    mov r0, #7
    and r4, r0
    strb r4, [r5]
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_803F00C

.func
.thumb_func
sub_803F030:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r3, off_803F268 // =byte_200AC20 
    ldrb r4, [r3,#0x2] // (byte_200AC22 - 0x200ac20)
    ldrb r5, [r3]
    cmp r5, r4
    bne loc_803F044
    mov r1, #1
    b loc_803F058
loc_803F044:
    ldr r1, off_803F260 // =unk_2009AC0 
    mov r2, #0x40 
    mul r2, r4
    add r1, r1, r2
    add r0, r1, #0
    add r1, r6, #0
    add r2, r7, #0
    bl CpuSet_800093C
    mov r1, #0
loc_803F058:
    add r0, r1, #0
    pop {r4-r7,pc}
.endfunc // sub_803F030

.func
.thumb_func
sub_803F05C:
    push {r5,lr}
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r0, [r5,#0x2] // (byte_200AC22 - 0x200ac20)
    add r0, #1
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x2] // (byte_200AC22 - 0x200ac20)
    pop {r5,pc}
.endfunc // sub_803F05C

.func
.thumb_func
sub_803F06C:
    push {r5,lr}
    mov r3, #0
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r0, [r5]
    ldrb r1, [r5,#0x2] // (byte_200AC22 - 0x200ac20)
    sub r0, r0, r1
    bgt loc_803F084
    bne loc_803F080
    mov r3, #2
    b loc_803F08A
loc_803F080:
    mov r1, #8
    add r0, r0, r1
loc_803F084:
    cmp r0, #2
    blt loc_803F08A
    mov r3, #1
loc_803F08A:
    add r1, r3, #0
    pop {r5,pc}
    .byte 0, 0
.endfunc // sub_803F06C

    push {r5,lr}
    ldr r0, off_803F260 // =unk_2009AC0 
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r1, [r5]
    ldrb r2, [r5,#0x2] // (byte_200AC22 - 0x200ac20)
    sub r2, #1
    mov r1, #7
    and r2, r1
    strb r2, [r5,#0x2] // (byte_200AC22 - 0x200ac20)
    pop {r5,pc}
.func
.thumb_func
sub_803F0A4:
    push {r4-r7,lr}
    add r7, r0, #0
    add r6, r1, #0
    add r5, r2, #0
    ldrb r1, [r0]
    tst r1, r1
    beq loc_803F0B8
    ldrb r1, [r0,#0xc]
    tst r1, r1
    bne loc_803F0C2
loc_803F0B8:
    push {r0}
    mov r0, #1
    bl sub_803EF48
    pop {r0}
loc_803F0C2:
    add r1, r3, #0
    ldrb r4, [r5,#3]
    mov r2, #0x40 
    mul r2, r4
    add r1, r1, r2
    add r2, r6, #0
    bl sub_8000950
    add r4, #1
    mov r1, #7
    and r4, r1
    strb r4, [r5,#3]
    ldrh r0, [r5,#8]
    add r0, #1
    strh r0, [r5,#8]
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word 0xFE
.endfunc // sub_803F0A4

.func
.thumb_func
sub_803F0E8:
    push {r4-r7,lr}
    add r7, r1, #0
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r4, [r5,#0x3] // (byte_200AC23 - 0x200ac20)
    add r6, r4, #0
    mov r2, #0x40 
    mul r6, r2
    ldr r2, off_803F264 // =unk_200BC70 
    add r6, r6, r2
    add r1, r6, #0
    mov r2, #0xc
    bl CpuSet_800093C
    add r0, r7, #0
    add r1, r6, #0
    add r1, #0xc
    mov r2, #0xc
    bl CpuSet_800093C
    add r4, #1
    mov r1, #7
    and r4, r1
    strb r4, [r5,#0x3] // (byte_200AC23 - 0x200ac20)
    pop {r4-r7,pc}
.endfunc // sub_803F0E8

.func
.thumb_func
sub_803F118:
    push {r4-r7,lr}
    add r6, r1, #0
    add r7, r0, #0
    ldr r0, off_803F264 // =unk_200BC70 
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r4, [r5,#0x1] // (byte_200AC21 - 0x200ac20)
    mov r2, #0x40 
    mul r2, r4
    add r0, r0, r2
    add r0, #0
    add r1, r7, #0
    add r2, r6, #0
    bl CpuSet_800093C
    add r7, #0x10
    ldr r0, off_803F264 // =unk_200BC70 
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r4, [r5,#0x1] // (byte_200AC21 - 0x200ac20)
    mov r2, #0x40 
    mul r2, r4
    add r0, r0, r2
    add r0, #0xc
    add r1, r7, #0
    add r2, r6, #0
    bl CpuSet_800093C
    add r4, #1
    mov r1, #7
    and r4, r1
    strb r4, [r5,#0x1] // (byte_200AC21 - 0x200ac20)
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803F118

.func
.thumb_func
sub_803F158:
    push {r5,lr}
    mov r3, #0
    ldr r5, off_803F268 // =byte_200AC20 
    ldrb r0, [r5,#0x3] // (byte_200AC23 - 0x200ac20)
    ldrb r1, [r5,#0x1] // (byte_200AC21 - 0x200ac20)
    sub r0, r0, r1
    bgt loc_803F170
    bne loc_803F16C
    mov r3, #2
    b loc_803F176
loc_803F16C:
    mov r1, #8
    add r0, r0, r1
loc_803F170:
    cmp r0, #6
    blt loc_803F176
    mov r3, #1
loc_803F176:
    add r1, r3, #0
    pop {r5,pc}
    .balign 4, 0x00
.endfunc // sub_803F158

.func
.thumb_func
sub_803F17C:
    push {r4-r7,lr}
    mov r7, #0x20 
    add r6, r0, #0
    mov r2, #0
loc_803F184:
    ldrb r1, [r0,r2]
    tst r1, r1
    beq loc_803F1B8
    ldrb r1, [r0,r2]
    ldr r3, dword_803F1BC // =0xFE 
    cmp r1, r3
    bne loc_803F19A
    add r2, #0xc
    cmp r2, #0xc
    ble loc_803F184
    b loc_803F1B8
loc_803F19A:
    mov r7, #0
    ldr r1, off_803F258 // =unk_200A010 
    ldr r5, off_803F25C // =unk_200AC30 
    ldrb r4, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
    sub r4, #1
    mov r2, #7
    and r4, r2
    mov r2, #0x40 
    mul r4, r2
    add r4, r4, r1
    add r0, r6, #0
    add r1, r4, #0
    bl sub_803F1C0
    add r7, r0, #0
loc_803F1B8:
    add r0, r7, #0
    pop {r4-r7,pc}
dword_803F1BC:    .word 0xFE
.endfunc // sub_803F17C

.func
.thumb_func
sub_803F1C0:
    push {r4-r7,lr}
    mov r7, #0
    add r6, r0, #0
    add r4, r1, #0
    mov r5, #0
    mov r2, #0
    add r2, #1
loc_803F1CE:
    ldrb r0, [r4,r2]
    ldrb r1, [r6,r2]
    add r0, #1
    mov r3, #0xff
    and r0, r3
    cmp r0, r1
    beq loc_803F1F2
    sub r0, #1
    and r0, r3
    cmp r0, r1
    bne loc_803F1EC
    mov r0, #4
    lsl r0, r5
    orr r7, r0
    b loc_803F1F2
loc_803F1EC:
    mov r0, #1
    lsl r0, r5
    orr r7, r0
loc_803F1F2:
    add r5, #1
    add r2, #0xc
    cmp r2, #0xd
    ble loc_803F1CE
    mov r2, #0
    add r2, #1
    ldrb r0, [r6,r2]
    mov r2, #0xc
    add r2, #1
    ldrb r1, [r6,r2]
    cmp r0, r1
    beq loc_803F20E
    mov r0, #0x10
    orr r7, r0
loc_803F20E:
    add r0, r7, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_803F1C0

.func
.thumb_func
sub_803F214:
    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    tst r2, r2
    beq loc_803F230
    mov r1, #1
    add r1, #0xc
    ldrb r0, [r7,r1]
    mov r1, #1
    add r1, #0
    ldrb r1, [r6,r1]
    sub r0, r0, r1
    beq loc_803F240
    b loc_803F244
loc_803F230:
    mov r1, #1
    add r1, #0
    ldrb r0, [r7,r1]
    mov r1, #1
    add r1, #0xc
    ldrb r1, [r6,r1]
    sub r0, r0, r1
    bne loc_803F244
loc_803F240:
    mov r0, #0
    b locret_803F254
loc_803F244:
    blt loc_803F24A
loc_803F246:
    mov r0, #1
    b locret_803F254
loc_803F24A:
    mov r1, #0xff
    and r0, r1
    cmp r0, #7
    blt loc_803F246
    mov r0, #2
locret_803F254:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803F258:    .word unk_200A010
off_803F25C:    .word unk_200AC30
off_803F260:    .word unk_2009AC0
off_803F264:    .word unk_200BC70
off_803F268:    .word byte_200AC20
.endfunc // sub_803F214

.func
.thumb_func
sub_803F26C:
    push {r4-r7,lr}
    add r7, r0, #0
    add r4, r2, #0
    ldr r5, off_803F4B8 // =unk_200AC30 
    ldrb r0, [r5,#0x4] // (byte_200AC34 - 0x200ac30)
    tst r0, r0
    beq loc_803F31A
    bl sub_803F460
    tst r0, r0
    bne locret_803F322
    ldrb r6, [r5,#0x5] // (byte_200AC35 - 0x200ac30)
    mov r1, #0x40 
    mul r6, r1
    ldr r1, off_803F4B4 // =unk_200A010 
    add r6, r6, r1
    ldr r0, off_803F4C4 // =byte_200AC20 
    ldrb r0, [r0,#0x3] // (byte_200AC23 - 0x200ac20)
    sub r0, #1
    mov r1, #7
    and r0, r1
    mov r1, #0x40 
    mul r0, r1
    ldr r1, off_803F4C0 // =unk_200BC70 
    add r1, r1, r0
    mov r4, #0
    add r0, r6, #0
    bl sub_803F1C0
    mov r1, #5
    and r1, r0
    beq loc_803F2AE
    mov r4, #1
loc_803F2AE:
    add r0, r7, #0
    add r1, r6, #0
    add r2, r4, #0
    bl sub_803F214
    tst r0, r0
    bne loc_803F2F6
    tst r4, r4
    beq loc_803F2CA
    mov r0, #0
    add r0, r0, r7
    mov r1, #0xc
    add r1, r1, r6
    b loc_803F2D2
loc_803F2CA:
    mov r0, #0
    add r0, r0, r6
    mov r1, #0xc
    add r1, r1, r7
loc_803F2D2:
    bl sub_803F0E8
    mov r1, #1
    add r1, #0
    ldrb r0, [r7,r1]
    mov r1, #1
    add r1, #0xc
    ldrb r1, [r7,r1]
    cmp r0, r1
    bne loc_803F2EA
    bl sub_803F324
loc_803F2EA:
    ldrb r0, [r5,#0x5] // (byte_200AC35 - 0x200ac30)
    add r0, #1
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x5] // (byte_200AC35 - 0x200ac30)
    b locret_803F322
loc_803F2F6:
    ldrb r0, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
    sub r0, #1
    mov r1, #7
    and r0, r1
    add r4, r0, #0
    mov r1, #0x40 
    mul r0, r1
    ldr r1, off_803F4B4 // =unk_200A010 
    add r0, r0, r1
    add r1, r7, #0
    bl sub_803F1C0
    mov r1, #0xc
    and r1, r0
    cmp r1, #0xc
    bne loc_803F318
    strb r4, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
loc_803F318:
    b locret_803F322
loc_803F31A:
    ldrb r0, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
    strb r0, [r5,#0x5] // (byte_200AC35 - 0x200ac30)
    mov r0, #1
    strb r0, [r5,#0x4] // (byte_200AC34 - 0x200ac30)
locret_803F322:
    pop {r4-r7,pc}
.endfunc // sub_803F26C

.func
.thumb_func
sub_803F324:
    ldr r1, off_803F4B8 // =unk_200AC30 
    ldrb r0, [r1,#0x4] // (byte_200AC34 - 0x200ac30)
    tst r0, r0
    beq locret_803F330
    mov r0, #0
    strb r0, [r1,#0x4] // (byte_200AC34 - 0x200ac30)
locret_803F330:
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_803F324

.func
.thumb_func
sub_803F334:
    push {r4-r7,lr}
    add r7, r0, #0
    add r6, r1, #0
    bl sub_803F17C
    tst r0, r0
    bne loc_803F360
    add r0, r7, #0
    add r1, r6, #0
    ldr r2, off_803F4C4 // =byte_200AC20 
    ldr r3, off_803F4C0 // =unk_200BC70 
    bl sub_803F0A4
    add r0, r7, #0
    add r1, r6, #0
    ldr r2, off_803F4B8 // =unk_200AC30 
    ldr r3, off_803F4B4 // =unk_200A010 
    bl sub_803F0A4
    bl sub_803F324
    b locret_803F3A6
loc_803F360:
    mov r1, #0x1c
    and r1, r0
    tst r1, r1
    beq loc_803F37C
    add r0, r7, #0
    bl sub_803F26C
    add r0, r7, #0
    add r1, r6, #0
    ldr r2, off_803F4B8 // =unk_200AC30 
    ldr r3, off_803F4B4 // =unk_200A010 
    bl sub_803F0A4
    b locret_803F3A6
loc_803F37C:
    mov r1, #3
    and r1, r0
    beq loc_803F39A
    push {r0}
    mov r0, #2
    bl sub_803EF48
    pop {r0}
    add r0, r7, #0
    add r1, r6, #0
    ldr r2, off_803F4B8 // =unk_200AC30 
    ldr r3, off_803F4B4 // =unk_200A010 
    bl sub_803F0A4
    b locret_803F3A6
loc_803F39A:
    add r0, r7, #0
    add r1, r6, #0
    ldr r2, off_803F4B8 // =unk_200AC30 
    ldr r3, off_803F4B4 // =unk_200A010 
    bl sub_803F0A4
locret_803F3A6:
    pop {r4-r7,pc}
.endfunc // sub_803F334

.func
.thumb_func
sub_803F3A8:
    push {r4-r7,lr}
    ldr r0, off_803F4B4 // =unk_200A010 
    ldr r5, off_803F4B8 // =unk_200AC30 
    ldrb r4, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
    mov r2, #0x40 
    mul r2, r4
    add r0, r0, r2
    mov r7, #0
    add r3, r0, #0
    mov r4, #1
loc_803F3BC:
    mov r0, #0xc
    mul r0, r7
    ldrh r1, [r3,r0]
    ldr r2, dword_803F3D4 // =0xFE 
    cmp r1, r2
    bne loc_803F3D0
    add r7, #1
    cmp r7, #2
    blt loc_803F3BC
    mov r4, #0
loc_803F3D0:
    add r0, r4, #0
    pop {r4-r7,pc}
dword_803F3D4:    .word 0xFE
.endfunc // sub_803F3A8

.func
.thumb_func
sub_803F3D8:
    push {r4-r7,lr}
    mov r4, #0
    ldr r5, off_803F4B8 // =unk_200AC30 
    ldrb r0, [r5,#0x4] // (byte_200AC34 - 0x200ac30)
    tst r0, r0
    beq loc_803F45C
    mov r4, #1
    ldrb r0, [r5,#0x5] // (byte_200AC35 - 0x200ac30)
    ldrb r1, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
    sub r1, r1, r0
    bge loc_803F3F0
    add r1, #8
loc_803F3F0:
    cmp r1, #3
    blt loc_803F45C
    push {r1}
    ldr r0, off_803F4B4 // =unk_200A010 
    ldrb r6, [r5,#0x5] // (byte_200AC35 - 0x200ac30)
    mov r2, #0x40 
    mul r6, r2
    add r6, r6, r0
    ldr r0, off_803F4C4 // =byte_200AC20 
    ldrb r7, [r0,#0x1] // (byte_200AC21 - 0x200ac20)
    sub r7, #1
    mov r1, #7
    and r7, r1
    mov r1, #0x40 
    mul r7, r1
    ldr r1, off_803F4C0 // =unk_200BC70 
    add r7, r7, r1
    mov r1, #1
    add r1, #0
    ldrb r0, [r7,r1]
    add r0, #1
    mov r1, #0xff
    and r0, r1
    mov r2, #1
    mov r3, #1
    add r3, #0
    ldrb r1, [r6,r3]
    cmp r0, r1
    beq loc_803F42C
    mov r2, #0
loc_803F42C:
    ldr r0, off_803F4B4 // =unk_200A010 
    ldrb r6, [r5,#0x3] // (byte_200AC33 - 0x200ac30)
    sub r6, #1
    mov r1, #7
    and r6, r1
    mov r1, #0x40 
    mul r6, r1
    add r6, r6, r0
    mov r3, #1
    add r3, #0
    ldrb r0, [r6,r3]
    mov r3, #1
    add r3, #0xc
    ldrb r1, [r6,r3]
    sub r0, r0, r1
    bge loc_803F450
    mvn r0, r0
    add r0, #1
loc_803F450:
    cmp r0, #1
    pop {r1}
    bne loc_803F45A
    mov r4, #1
    b loc_803F45C
loc_803F45A:
    mov r4, #2
loc_803F45C:
    add r0, r4, #0
    pop {r4-r7,pc}
.endfunc // sub_803F3D8

.func
.thumb_func
sub_803F460:
    push {r4-r7,lr}
loc_803F462:
    ldrb r6, [r5,#5]
    mov r1, #0x40 
    mul r6, r1
    ldr r1, off_803F4B4 // =unk_200A010 
    add r6, r6, r1
    ldr r0, off_803F4C4 // =byte_200AC20 
    ldrb r7, [r0,#0x3] // (byte_200AC23 - 0x200ac20)
    sub r7, #1
    mov r1, #7
    and r7, r1
    mov r1, #0x40 
    mul r7, r1
    ldr r1, off_803F4C0 // =unk_200BC70 
    add r7, r7, r1
    ldrb r0, [r6,#1]
    ldrb r1, [r7,#1]
    add r1, #1
    mov r2, #0xff
    and r1, r2
    cmp r0, r1
    beq loc_803F4B0
    ldrb r0, [r6,#0xd]
    ldrb r1, [r7,#0xd]
    add r1, #1
    mov r2, #0xff
    and r1, r2
    cmp r0, r1
    beq loc_803F4B0
    ldrb r0, [r5,#5]
    add r0, #1
    mov r1, #7
    and r0, r1
    ldrb r1, [r5,#3]
    cmp r0, r1
    bne loc_803F4AC
    mov r0, #1
    b locret_803F4B2
loc_803F4AC:
    strb r0, [r5,#5]
    b loc_803F462
loc_803F4B0:
    mov r0, #0
locret_803F4B2:
    pop {r4-r7,pc}
off_803F4B4:    .word unk_200A010
off_803F4B8:    .word unk_200AC30
    .word unk_2009AC0
off_803F4C0:    .word unk_200BC70
off_803F4C4:    .word byte_200AC20
.endfunc // sub_803F460

.func
.thumb_func
sub_803F4C8:
    push {lr}
    ldr r0, off_803F55C // =byte_200AD04 
    mov r1, #4
    bl sub_80008B4
    pop {pc}
.endfunc // sub_803F4C8

    push {lr}
    mov r2, #0
    ldr r0, off_803F55C // =byte_200AD04 
    ldrb r1, [r0,#0x1] // (byte_200AD05 - 0x200ad04)
    tst r1, r1
    beq loc_803F4E6
    ldrb r1, [r0]
    tst r1, r1
    bne loc_803F4E8
loc_803F4E6:
    mov r2, #1
loc_803F4E8:
    tst r2, r2
    pop {pc}
.func
.thumb_func
sub_803F4EC:
    push {lr}
    ldr r1, off_803F55C // =byte_200AD04 
    strb r0, [r1]
    pop {pc}
.endfunc // sub_803F4EC

    push {lr}
    ldr r1, off_803F55C // =byte_200AD04 
    mov r0, #1
    strb r0, [r1,#0x1] // (byte_200AD05 - 0x200ad04)
    pop {pc}
    .byte 0, 0
.func
.thumb_func
sub_803F500:
    push {lr}
    ldr r1, off_803F55C // =byte_200AD04 
    mov r0, #0xb4
    strh r0, [r1,#0x2] // (word_200AD06 - 0x200ad04)
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_803F500

.func
.thumb_func
sub_803F50C:
    push {lr}
    ldr r0, off_803F520 // =0x78 
    b loc_803F516
loc_803F512:
    push {lr}
    ldr r0, off_803F51C // =0xF0 
loc_803F516:
    ldr r1, off_803F55C // =byte_200AD04 
    strh r0, [r1,#0x2] // (word_200AD06 - 0x200ad04)
    pop {pc}
off_803F51C:    .word 0xF0
off_803F520:    .word 0x78
.endfunc // sub_803F50C

.func
.thumb_func
sub_803F524:
    push {lr}
    ldr r1, off_803F55C // =byte_200AD04 
    ldrb r0, [r1]
    tst r0, r0
    pop {pc}
    .byte 0, 0
.endfunc // sub_803F524

.func
.thumb_func
sub_803F530:
    push {r4,r6,lr}
    mov r6, #0
    bl sub_803F524
    beq loc_803F558
    mov r4, #1
    bl sub_803F560
    beq loc_803F552
    mov r4, #0
    mov r6, #1
    ldr r1, off_803F55C // =byte_200AD04 
    ldrh r0, [r1,#0x2] // (word_200AD06 - 0x200ad04)
    sub r0, #1
    strh r0, [r1,#0x2] // (word_200AD06 - 0x200ad04)
    bne loc_803F558
    mov r6, #0
loc_803F552:
    add r0, r4, #0
    bl sub_803F4EC
loc_803F558:
    tst r6, r6
    pop {r4,r6,pc}
off_803F55C:    .word byte_200AD04
.endfunc // sub_803F530

.func
.thumb_func
sub_803F560:
    push {r4,r6,r7,lr}
    mov r6, #0xff
    bl sub_803DEB4
    cmp r0, #2
    beq loc_803F574
    cmp r0, #4
    beq loc_803F5A6
    mov r6, #0x80
    b loc_803F5A6
loc_803F574:
    mov r0, #0
    mov r1, #1
    bl sub_813DB24
    cmp r0, #0xff
    bne loc_803F586
    add r1, r2, #0
    mov r0, #1
    b loc_803F5A6
loc_803F586:
    mov r7, #0
loc_803F588:
    add r0, r7, #0
    bl sub_8144D04
    cmp r0, #2
    bne loc_803F59C
    cmp r7, #1
    beq loc_803F59A
    cmp r7, #3
    bne loc_803F59C
loc_803F59A:
    mov r6, #0
loc_803F59C:
    add r4, #1
    add r7, #1
    cmp r7, #4
    blt loc_803F588
    mov r1, #0
loc_803F5A6:
    add r0, r6, #0
    tst r0, r0
    pop {r4,r6,r7,pc}
    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803F560

    push {r4,lr}
    ldrb r2, [r5,#0xc]
    mov r1, #8
    tst r2, r1
    beq locret_803F5F2
    ldrb r0, [r5,#0xc]
    mov r1, #0x10
    tst r0, r1
    bne locret_803F5F2
    mov r0, #0x40 
    ldrh r0, [r5,r0]
    ldr r1, off_803F5F4 // =unk_803F5FC 
    mov r2, #0
loc_803F5CA:
    ldrh r3, [r1,r2]
    cmp r3, r0
    beq loc_803F5DA
    add r2, #2
    cmp r2, #0x1a
    blt loc_803F5CA
    mov r0, #0xff
    b locret_803F5F2
loc_803F5DA:
    ldr r1, dword_803F5F8 // =0x127 
    sub r0, r3, r1
    ldrh r1, [r5,#0x3e]
    cmp r0, r1
    beq locret_803F5F2
    strh r0, [r5,#0x3e]
    ldrb r1, [r5,#0xc]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r5,#0xc]
    mov r1, #0x1e
    strh r1, [r5,#0x3c]
locret_803F5F2:
    pop {r4,pc}
off_803F5F4:    .word unk_803F5FC
dword_803F5F8:    .word 0x127
unk_803F5FC:    .byte 0x27 
    .byte 1
    .byte 0x28 
    .byte 1
    .byte 0x29 
    .byte 1
    .byte 0x2A 
    .byte 1
    .byte 0x2B 
    .byte 1
    .byte 0x2C 
    .byte 1
    .byte 0x2D 
    .byte 1
    .byte 0x2E 
    .byte 1
    .byte 0x2F 
    .byte 1
    .byte 0x30 
    .byte 1
    .byte 0x31 
    .byte 1
    .byte 0x32 
    .byte 1
    .byte 0x33 
    .byte 1
    .byte 0
    .byte 0
.func
.thumb_func
sub_803F618:
    push {r0-r7,lr}
    ldr r4, dword_803F774+4
    mov r3, #4
    lsl r3, r3, #1
    mul r2, r3
    lsl r1, r1, #1
    add r1, r1, r2
    strh r0, [r4,r1]
    pop {r0-r7,pc}
    .byte 0
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 0
    .byte 0x20
    .byte 0xD
    .byte 0x21 
    .byte 0x6A 
    .byte 0x5C 
    .byte 1
    .byte 0x2A 
    .byte 0
    .byte 0xD1
    .byte 1
    .byte 0x30 
    .byte 1
    .byte 0x31 
    .byte 0x10
    .byte 0x29 
    .byte 0xF8
    .byte 0xDD
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x10
    .byte 0xB5
    .byte 0
    .byte 0xF0
    .byte 0xD
    .byte 0xF8
    .byte 5
    .byte 0x4C 
    .byte 0xA0
    .byte 0x42 
    .byte 5
    .byte 0xD0
    .byte 0xA1
    .byte 0x42 
    .byte 3
    .byte 0xD0
    .byte 0xA2
    .byte 0x42 
    .byte 1
    .byte 0xD0
    .byte 0xA3
    .byte 0x42 
    .byte 0xFF
    .byte 0xD0
    .byte 0x10
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0xC0
    .byte 0xA6
    .byte 0
    .byte 0
    .byte 0x80
    .byte 0xB5
    .byte 0x45 
    .byte 0x4F 
    .byte 0x38 
    .byte 0x88
    .byte 0x79 
    .byte 0x88
    .byte 0xBA
    .byte 0x88
    .byte 0xFB
    .byte 0x88
    .byte 0x80
    .byte 0xBD
    .byte 0
    .byte 0
.endfunc // sub_803F618

.func
.thumb_func
sub_803F674:
    push {r4-r7,lr}
    ldr r7, off_803F6AC // =sCamera+80 
    ldr r0, [r7,#0x48] // (dword_2009A18 - 0x20099d0)
    mov r1, #0x1c
    and r0, r1
    lsr r0, r0, #2
    add r6, r0, #0
    mov r4, #0
    mov r5, #0
    mov r7, #0
loc_803F688:
    cmp r7, r6
    beq loc_803F6A4
    add r0, r7, #0
    bl sub_8144D04
    cmp r0, #2
    beq loc_803F69E
    cmp r0, #1
    bne loc_803F6A0
    add r4, #1
    b loc_803F6A0
loc_803F69E:
    add r5, #1
loc_803F6A0:
    add r7, #1
    b loc_803F688
loc_803F6A4:
    add r0, r4, #0
    add r1, r5, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803F6AC:    .word sCamera+0x50 // sCamera.unk_50
.endfunc // sub_803F674

.func
.thumb_func
sub_803F6B0:
    push {r4,r5,lr}
    add r4, r0, #0
    ldr r0, off_803F73C // =byte_200F360 
    mov r1, #0x20 
    bl sub_80008C0
    bl start_8000288
.endfunc // sub_803F6B0

    mov r0, #0
    bl sub_803DE88
    bl sub_803DEAC
    mov r0, #0x10
    mov r1, #2
    mov r2, #4
    mov r3, #4
    bl sub_803DCE8
    mov r0, #0
    mov r1, #0
    ldr r2, off_803F730 // =dword_803F734 
    lsl r4, r4, #2
    ldr r2, [r2,r4]
    bl byte_813DBC0
    ldr r0, off_803F738 // =sCamera+80 
    mov r1, #0x3c 
    strh r1, [r0,#0xc] // (scamera.unk_5c - 0x20099d0)
    mov r0, #0x17
    mov r1, #0x2f 
    bl sub_802F110
    pop {r4,r5,pc}
    push {r4,r5,lr}
    add r4, r0, #0
    ldr r0, off_803F73C // =byte_200F360 
    mov r1, #0x20 
    bl sub_80008C0
    mov r0, #0
    bl sub_803DE88
    mov r0, #0x10
    mov r1, #2
    mov r2, #4
    mov r3, #4
    bl sub_803DCE8
    mov r0, #0
    mov r1, #0
    ldr r2, off_803F730 // =dword_803F734 
    lsl r4, r4, #2
    ldr r2, [r2,r4]
    bl byte_813DBC0
    ldr r0, off_803F738 // =sCamera+80 
    mov r1, #0x3c 
    strh r1, [r0,#0xc] // (scamera.unk_5c - 0x20099d0)
    mov r0, #0x17
    mov r1, #0x2f 
    bl sub_802F110
    pop {r4,r5,pc}
off_803F730:    .word dword_803F734
dword_803F734:    .word 0x4000
off_803F738:    .word sCamera+0x50 // sCamera.unk_50
off_803F73C:    .word byte_200F360
.func
.thumb_func
sub_803F740:
    push {r4-r7,lr}
    add r7, r0, #0
    bl sub_803DD30
    ldr r1, off_803F768 // =dword_803F774 
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    beq loc_803F760
    mov r1, #8
    mul r1, r7
    add r1, r1, r0
    ldr r7, off_803F770 // =sCamera+80 
    ldrh r2, [r7,#0x10] // (scamera.unk_60 - 0x20099d0)
    ldrh r0, [r7,#0x16] // (scamera.unk_66 - 0x20099d0)
    mov r1, #0
    b locret_803F764
loc_803F760:
    mov r1, #1
    mov r0, #0
locret_803F764:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_803F768:    .word dword_803F774
    .word unk_2009940
off_803F770:    .word sCamera+0x50 // sCamera.unk_50
dword_803F774:    .word 0x4FFFF02, 0x2009940, 0x2009940
exe6_timestamp:    .byte 0x52, 0x45, 0x58, 0x45, 0x36
    .byte 0x20, 0x46, 0x20, 0x32, 0x30
    .byte 0x30, 0x36, 0x30, 0x31, 0x31
    .byte 0x30, 0x61, 0x20, 0x55, 0x53
    .byte 0x0
    .byte 0x0, 0x0, 0x0
.endfunc // sub_803F740

.func
.thumb_func
sub_803F798:
    push {r1-r7,lr}
    mov r4, #0
    b loc_803F7A2
.endfunc // sub_803F798

.func
.thumb_func
sub_803F79E:
    push {r1-r7,lr}
    mov r4, #1
loc_803F7A2:
    bl sub_803FAB4
    bne loc_803F808
    tst r4, r4
    bne loc_803F7C2
    mov r7, r10
    ldr r6, [r7,#0x3c]
    ldr r7, [r6,#0x18]
    ldr r0, [r7,#0x1c]
    str r0, [r6,#0x24]
    ldr r0, [r7,#0x20]
    str r0, [r6,#0x28]
    ldr r0, [r7,#0x24]
    str r0, [r6,#0x2c]
    ldrb r0, [r7,#0x10]
    str r0, [r6,#0x30]
loc_803F7C2:
    bl save_8006E26
    bl sub_803F8B2
    bl sub_803F894
    bl sub_803FB04
    ldr r0, off_803F888 // =timer_2000000 
    ldr r1, dword_803F890 // =0x6710 
    bl sub_8006DF6
    mov r7, #0
loc_803F7DC:
    ldr r0, off_803F888 // =timer_2000000 
    ldr r1, dword_803F88C // =0xE000100 
    ldr r2, dword_803F890 // =0x6710 
    push {r0-r2}
    bl sub_814D954
    pop {r0-r2}
    push {r0-r3,r7}
    bl sub_814D9C4
    add r4, r0, #0
    pop {r0-r3,r7}
    tst r4, r4
    beq loc_803F814
    add r7, #1
    cmp r7, #3
    blt loc_803F7DC
    push {r0-r2}
    add r1, r2, #0
    bl save_8006E0E
    pop {r0-r2}
loc_803F808:
    mov r0, #0x17
    mov r1, #4
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    pop {r1-r7,pc}
loc_803F814:
    push {r0-r2}
    add r1, r2, #0
    bl save_8006E0E
    pop {r0-r2}
    mov r4, r10
    ldr r4, [r4,#0x40]
    ldr r4, [r4,#0x68]
    bl sub_803F894
    cmp r0, r4
    bne loc_803F7C2
    mov r0, #0x17
    mov r1, #4
    bl sub_802F110
    mov r0, #0
    pop {r1-r7,pc}
.endfunc // sub_803F79E

.func
.thumb_func
sub_803F838:
    push {r1-r7,lr}
    ldr r0, dword_803F88C // =0xE000100 
    ldr r1, off_803F888 // =timer_2000000 
    ldr r2, dword_803F890 // =0x6710 
    push {r0-r3}
    bl sub_814D8F0
    pop {r0-r3}
    push {r0-r2}
    add r0, r1, #0
    add r1, r2, #0
    bl save_8006E0E
    pop {r0-r2}
    bl sub_8006C6C
    bl sub_803F8C4
    bne loc_803F870
    bl sub_803F8F4
    bne loc_803F870
    mov r4, #0
    mov r0, #0x17
    mov r1, #4
    bl sub_802F110
    b loc_803F87E
loc_803F870:
    mov r4, #1
    mov r0, #0x17
    mov r1, #4
    bl sub_802F12C // (int a1, int a2) -> void
    bl sub_8001514
loc_803F87E:
    bl sub_8006C22
    add r0, r4, #0
    tst r0, r0
    pop {r1-r7,pc}
off_803F888:    .word timer_2000000
dword_803F88C:    .word 0xE000100
dword_803F890:    .word 0x6710
.endfunc // sub_803F838

.func
.thumb_func
sub_803F894:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    mov r0, #0
    str r0, [r7,#0x68]
    mov r0, #0
    ldr r1, off_803F8EC // =timer_2000000 
    ldr r2, dword_803F8F0 // =0x670F 
loc_803F8A4:
    ldrb r3, [r1,r2]
    add r0, r0, r3
    sub r2, #1
    bge loc_803F8A4
    add r0, #0x18
    str r0, [r7,#0x68]
    pop {r1-r7,pc}
.endfunc // sub_803F894

.func
.thumb_func
sub_803F8B2:
    push {lr}
    ldr r0, off_803F914 // =exe6_timestamp 
    mov r1, r10
    ldr r1, [r1,#0x40]
    add r1, #0x6c 
    mov r2, #0x14
    bl copyMemory // (void *src, void* dest, int size) -> void
    pop {pc}
.endfunc // sub_803F8B2

.func
.thumb_func
sub_803F8C4:
    push {r1-r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldr r6, [r7,#0x68]
    mov r0, #0
    str r0, [r7,#0x68]
    mov r0, #0
    ldr r1, off_803F8EC // =timer_2000000 
    ldr r2, dword_803F8F0 // =0x670F 
loc_803F8D6:
    ldrb r3, [r1,r2]
    add r0, r0, r3
    sub r2, #1
    bge loc_803F8D6
    add r0, #0x18
    cmp r0, r6
    bne loc_803F8E8
    mov r0, #0
    pop {r1-r7,pc}
loc_803F8E8:
    mov r0, #1
    pop {r1-r7,pc}
off_803F8EC:    .word timer_2000000
dword_803F8F0:    .word 0x670F
.endfunc // sub_803F8C4

.func
.thumb_func
sub_803F8F4:
    push {r1-r7,lr}
    ldr r0, off_803F914 // =exe6_timestamp 
    mov r1, r10
    ldr r1, [r1,#0x40]
    add r1, #0x6c 
    mov r2, #0x13
loc_803F900:
    ldrb r3, [r1,r2]
    ldrb r4, [r0,r2]
    cmp r3, r4
    bne loc_803F910
    sub r2, #1
    bge loc_803F900
    mov r0, #0
    pop {r1-r7,pc}
loc_803F910:
    mov r0, #1
    pop {r1-r7,pc}
off_803F914:    .word exe6_timestamp
.endfunc // sub_803F8F4

    push {r1-r7,lr}
    ldr r0, off_803F9E0 // =exe6_timestamp 
    ldr r1, off_803F9CC // =unk_2006720 
    mov r2, #0x14
    bl copyMemory // (void *src, void* dest, int size) -> void
    ldr r0, off_803F9D4 // =unk_2006710 
    ldr r1, off_803F9DC // =0x28 
    mov r2, #0
    ldr r3, off_803F9D0 // =dword_2006714 
    str r2, [r3]
loc_803F92E:
    sub r1, #1
    blt loc_803F938
    ldrb r4, [r0,r1]
    add r2, r2, r4
    b loc_803F92E
loc_803F938:
    str r2, [r3]
    mov r7, #0
loc_803F93C:
    ldr r0, off_803F9D4 // =unk_2006710 
    ldr r1, dword_803F9D8 // =0xE007E00 
    ldr r2, off_803F9DC // =0x28 
    push {r0-r2}
    bl sub_814D954
    pop {r0-r2}
    push {r0-r3,r7}
    bl sub_814D9C4
    add r4, r0, #0
    pop {r0-r3,r7}
    tst r4, r4
    beq loc_803F96A
    add r7, #1
    cmp r7, #3
    blt loc_803F93C
    mov r0, #0x17
    mov r1, #0x2e 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    pop {r1-r7,pc}
loc_803F96A:
    mov r0, #0x17
    mov r1, #0x2e 
    bl sub_802F110
    mov r0, #0
    pop {r1-r7,pc}
    push {r1-r7,lr}
    ldr r0, dword_803F9D8 // =0xE007E00 
    ldr r1, off_803F9D4 // =unk_2006710 
    ldr r2, off_803F9DC // =0x28 
    push {r0-r3}
    bl sub_814D8F0
    pop {r0-r3}
    ldr r0, off_803F9E0 // =exe6_timestamp 
    ldr r1, off_803F9CC // =unk_2006720 
    mov r2, #0
loc_803F98C:
    ldrb r3, [r0,r2]
    ldrb r4, [r1,r2]
    cmp r3, r4
    bne loc_803F9C0
    add r2, #1
    cmp r2, #0x14
    blt loc_803F98C
    ldr r0, off_803F9D4 // =unk_2006710 
    ldr r1, off_803F9DC // =0x28 
    mov r2, #0
    ldr r4, off_803F9D0 // =dword_2006714 
    ldr r3, [r4]
    str r2, [r4]
loc_803F9A6:
    sub r1, #1
    blt loc_803F9B0
    ldrb r4, [r0,r1]
    add r2, r2, r4
    b loc_803F9A6
loc_803F9B0:
    cmp r2, r3
    bne loc_803F9C0
    mov r0, #0x17
    mov r1, #0x2e 
    bl sub_802F110
    mov r0, #0
    pop {r1-r7,pc}
loc_803F9C0:
    mov r0, #0x17
    mov r1, #0x2e 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    pop {r1-r7,pc}
off_803F9CC:    .word unk_2006720
off_803F9D0:    .word dword_2006714
off_803F9D4:    .word unk_2006710
dword_803F9D8:    .word 0xE007E00
off_803F9DC:    .word 0x28
off_803F9E0:    .word exe6_timestamp
.func
.thumb_func
sub_803F9E4:
    push {r1-r7,lr}
    ldr r0, off_803FAB0 // =exe6_timestamp 
    ldr r1, off_803FA9C // =unk_2006750 
    mov r2, #0x14
    bl copyMemory // (void *src, void* dest, int size) -> void
    ldr r0, off_803FAA4 // =dword_2006740 
    ldr r1, off_803FAAC // =0x78 
    mov r2, #0
    ldr r3, off_803FAA0 // =dword_2006744 
    str r2, [r3]
loc_803F9FA:
    sub r1, #1
    blt loc_803FA04
    ldrb r4, [r0,r1]
    add r2, r2, r4
    b loc_803F9FA
loc_803FA04:
    str r2, [r3]
    mov r7, #0
loc_803FA08:
    ldr r0, off_803FAA4 // =dword_2006740 
    ldr r1, dword_803FAA8 // =0xE007E80 
    ldr r2, off_803FAAC // =0x78 
    push {r0-r2}
    bl sub_814D954
    pop {r0-r2}
    push {r0-r3,r7}
    bl sub_814D9C4
    add r4, r0, #0
    pop {r0-r3,r7}
    tst r4, r4
    beq loc_803FA36
    add r7, #1
    cmp r7, #3
    blt loc_803FA08
    mov r0, #0x17
    mov r1, #0x37 
    bl sub_802F12C // (int a1, int a2) -> void
    mov r0, #1
    pop {r1-r7,pc}
loc_803FA36:
    mov r0, #0x17
    mov r1, #0x37 
    bl sub_802F110
    mov r0, #0
    pop {r1-r7,pc}
.endfunc // sub_803F9E4

.func
.thumb_func
sub_803FA42:
    push {r1-r7,lr}
    ldr r0, dword_803FAA8 // =0xE007E80 
    ldr r1, off_803FAA4 // =dword_2006740 
    ldr r2, off_803FAAC // =0x78 
    push {r0-r3}
    bl sub_814D8F0
    pop {r0-r3}
    ldr r0, off_803FAB0 // =exe6_timestamp 
    ldr r1, off_803FA9C // =unk_2006750 
    mov r2, #0
loc_803FA58:
    ldrb r3, [r0,r2]
    ldrb r4, [r1,r2]
    cmp r3, r4
    bne loc_803FA8C
    add r2, #1
    cmp r2, #0x14
    blt loc_803FA58
    ldr r0, off_803FAA4 // =dword_2006740 
    ldr r1, off_803FAAC // =0x78 
    mov r2, #0
    ldr r4, off_803FAA0 // =dword_2006744 
    ldr r3, [r4]
    str r2, [r4]
loc_803FA72:
    sub r1, #1
    blt loc_803FA7C
    ldrb r4, [r0,r1]
    add r2, r2, r4
    b loc_803FA72
loc_803FA7C:
    cmp r2, r3
    bne loc_803FA8C
    mov r0, #0x17
    mov r1, #0x37 
    bl sub_802F110
    mov r0, #0
    pop {r1-r7,pc}
loc_803FA8C:
    mov r0, #0x17
    mov r1, #0x37 
    bl sub_802F12C // (int a1, int a2) -> void
    bl sub_803C352
    mov r0, #1
    pop {r1-r7,pc}
off_803FA9C:    .word unk_2006750
off_803FAA0:    .word dword_2006744
off_803FAA4:    .word dword_2006740
dword_803FAA8:    .word 0xE007E80
off_803FAAC:    .word 0x78
off_803FAB0:    .word exe6_timestamp
.endfunc // sub_803FA42

.func
.thumb_func
sub_803FAB4:
    push {r4-r7,lr}
    mov r7, #0
    mov r6, #0
loc_803FABA:
    bl sub_803FAEE
    ldr r0, off_803FB1C // =dword_20067C0 
    ldr r1, dword_803FB20 // =0xE007F80 
    ldr r2, off_803FB24 // =0x80 
    push {r0-r2}
    bl sub_814D954
    pop {r0-r2}
    push {r0-r3,r6,r7}
    bl sub_814D9C4
    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r4
    bne loc_803FADC
    add r6, #1
loc_803FADC:
    add r7, #1
    cmp r7, #3
    blt loc_803FABA
    cmp r6, #3
    bge loc_803FAEA
    mov r0, #1
    pop {r4-r7,pc}
loc_803FAEA:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_803FAB4

.func
.thumb_func
sub_803FAEE:
    push {r4-r7,lr}
    mov r7, #0
    ldr r6, off_803FB24 // =0x80 
    ldr r4, off_803FB18 // =dword_20067C0 
loc_803FAF6:
    bl sub_800151C
    str r0, [r4,r7]
    add r7, #4
    cmp r7, r6
    blt loc_803FAF6
    pop {r4-r7,pc}
.endfunc // sub_803FAEE

.func
.thumb_func
sub_803FB04:
    push {r0-r7,lr}
    ldr r4, off_803FB18 // =dword_20067C0 
    str r0, [r4]
    ldr r0, off_803FB1C // =dword_20067C0 
    ldr r1, dword_803FB20 // =0xE007F80 
    ldr r2, off_803FB24 // =0x80 
    bl sub_814D954
    pop {r0-r7,pc}
    .balign 4, 0x00
off_803FB18:    .word dword_20067C0
off_803FB1C:    .word dword_20067C0
dword_803FB20:    .word 0xE007F80
off_803FB24:    .word 0x80
.endfunc // sub_803FB04

.func
.thumb_func
sub_803FB28:
    push {lr}
    // memBlock
    ldr r0, off_803FB60 // =byte_200F348 
    // numWords
    mov r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r0, r10
    ldr r0, [r0]
    mov r1, #0x14
    strb r1, [r0]
    pop {pc}
.endfunc // sub_803FB28

cb_803FB3C:
    push {r4-r7,lr}
    ldr r5, off_803FB60 // =byte_200F348 
    ldr r0, off_803FB50 // =off_803FB54 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_803FC14
    pop {r4-r7,pc}
off_803FB50:    .word off_803FB54
off_803FB54:    .word sub_803FB64+1
    .word sub_803FB9C+1
    .word sub_803FBC2+1
off_803FB60:    .word byte_200F348
.func
.thumb_func
sub_803FB64:
    push {lr}
    bl chatbox_8040818
    mov r0, #0xf
    bl sub_80015FC
    bl sub_803FC64
.endfunc // sub_803FB64

    ldr r0, dword_803FB98 // =0x1F40 
    bl sub_8001778
    bl sub_8001788
    bl sub_80017A0
    bl sub_803FBE8
    mov r0, #8
    mov r1, #0x20 
    bl engine_setScreeneffect
    mov r0, #4
    strb r0, [r5]
    mov r0, #0xb4
    strh r0, [r5,#4]
    pop {pc}
dword_803FB98:    .word 0x1F40
.func
.thumb_func
sub_803FB9C:
    push {lr}
    ldrh r0, [r5,#4]
    sub r0, #1
    strh r0, [r5,#4]
    beq loc_803FBB4
    mov r1, #0xaf
    cmp r0, r1
    bne locret_803FBC0
    mov r0, #0x1b
    bl sound_bgmusic_play // (int a1) -> void
    b locret_803FBC0
loc_803FBB4:
    mov r0, #0xc
    mov r1, #8
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
locret_803FBC0:
    pop {pc}
.endfunc // sub_803FB9C

.func
.thumb_func
sub_803FBC2:
    push {lr}
    bl engine_isScreeneffectAnimating
    beq locret_803FBE0
    bl sub_8006910
    bl sub_802F530
    bl sub_803F4C8
    bl sub_803E914
    ldr r0, off_803FBE4 // =0x40 
    bl sub_8001778
locret_803FBE0:
    pop {pc}
    .balign 4, 0x00
off_803FBE4:    .word 0x40
.endfunc // sub_803FBC2

.func
.thumb_func
sub_803FBE8:
    push {lr}
    ldr r0, off_803FCE0 // =word_2013A00 
    ldr r1, off_803FC0C // =BG1X_Offset 
    mov r2, #1
    ldr r3, dword_803FC10 // =0xA2400000 
    bl sub_80068EC
    ldr r3, off_803FCE0 // =word_2013A00 
    mov r2, #0
    mov r1, #0xa0
    lsl r1, r1, #1
    mov r0, #0
loc_803FC00:
    str r0, [r3,r2]
    add r2, #4
    cmp r2, r1
    blt loc_803FC00
    pop {pc}
    .balign 4, 0x00
off_803FC0C:    .word BG1X_Offset
dword_803FC10:    .word 0xA2400000
.endfunc // sub_803FBE8

.func
.thumb_func
sub_803FC14:
    push {r4,r6,r7,lr}
    mov r3, r10
    ldr r3, [r3,#8]
    ldrh r0, [r3,#0x10]
    sub r0, #4
    strh r0, [r3,#0x10]
    ldr r3, off_803FCE0 // =word_2013A00 
    mov r2, #0xa0
    lsl r2, r2, #1
    mov r4, #4
    mov r6, #0
    mov r7, #0
loc_803FC2C:
    strh r0, [r3,r6]
    add r6, #2
    cmp r6, r2
    bge locret_803FC48
    sub r4, #1
    bgt loc_803FC2C
    ldrh r0, [r3,r6]
    ldr r1, off_803FC4C // =off_803FC50 
    ldrb r1, [r1,r7]
    sub r0, r0, r1
    mov r4, #8
    add r7, #1
    cmp r7, #0x14
    ble loc_803FC2C
locret_803FC48:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
off_803FC4C:    .word off_803FC50
off_803FC50:    .word loc_80C1008
    .byte 0x10
    .byte 0xC
    .byte 8
    .byte 0x10
    .byte 0xC
    .byte 8
    .byte 0x10
    .byte 0xC
    .byte 8
    .byte 0x10
    .byte 0xC
    .byte 8
    .byte 0x10
    .byte 0xC
    .byte 8
    .byte 0x10
.endfunc // sub_803FC14

.func
.thumb_func
sub_803FC64:
    push {r5,lr}
    bl sub_8005F40
    bl sub_8005F6C
    bl sub_80027C4
    // dataList
    ldr r0, off_803FCA0 // =dword_803FCA4 
    bl decomp_initGfx_8000B30 // (u32 *dataList) -> void
    bl sub_800183C
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #1
    ldr r3, off_803FCDC // =unk_2018A04 
    mov r4, #0x20 
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
    // a1
    mov r0, #0
    // a2
    mov r1, #0
    // a3
    mov r2, #2
    ldr r3, off_803FCD8 // =unk_2017A04 
    mov r4, #0x1e
    mov r5, #0x14
    bl drawTiles // (int a1, int a2, int a3) -> void
    pop {r5,pc}
    .byte 0, 0
off_803FCA0:    .word dword_803FCA4
dword_803FCA4:    .word 0x886C41D0, 0x6000000, 0x2013A00, 0x86C4660, 0x3001960
    .word 0x20, 0x886C4490, 0x0
    .word unk_2017A00
    .word 0x886C45A8, 0x0
    .word unk_2018A00
    .byte 0, 0, 0, 0
off_803FCD8:    .word unk_2017A04
off_803FCDC:    .word unk_2018A04
off_803FCE0:    .word word_2013A00
dword_803FCE4:    .word 0x2A00, 0x5400, 0x0
.endfunc // sub_803FC64

.func
.thumb_func
sub_803FCF0:
    push {lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x2c]
    // numWords
    ldr r1, off_803FD04 // =0x230 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    mov r0, #0xc8
    bl chatbox_8045F2C
    pop {pc}
off_803FD04:    .word 0x230
.endfunc // sub_803FCF0

/*For debugging purposes, connect comment at any range!*/
