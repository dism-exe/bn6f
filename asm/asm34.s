.include "asm34.inc"

.thumb
sub_812D378:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x812d3a0-0x812d380-4] // =unk_201D620
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018C2
    mov r0, #0x1e
    neg r0, r0
    mov r1, #2
    mov r2, #1
    ldr r3, [pc, #0x812d3a4-0x812d392-2] // =unk_201DB20
    mov r4, #0x3c 
    mov r5, #0x11
    bl sub_80018C2
    pop {r4-r7,pc}
    .byte 0, 0
off_812D3A0:    .word unk_201D620
off_812D3A4:    .word unk_201DB20
// end of function sub_812D378

    push {lr}
    ldr r0, [pc, #0x812d3dc-0x812d3aa-2] // =word_2023FA0
    mov r1, #0x20 
    bl sub_8000900
    bl sub_8120A88
    ldr r0, [pc, #0x812d3e0-0x812d3b6-2] // =unk_2023FC0
    mov r1, #1
    bl sub_811FE7C
    add r0, #1
    strh r0, [r7,#0x28]
    add r1, r0, #0
    ldr r0, [pc, #0x812d3e0-0x812d3c4-4] // =unk_2023FC0
    mov r2, #5
    mov r3, #4
    bl loc_8120018
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #5
    strb r0, [r1,#2]
    mov r0, #4
    strb r0, [r1,#3]
    pop {pc}
off_812D3DC:    .word word_2023FA0
off_812D3E0:    .word unk_2023FC0
    push {r4-r7,lr}
    bl sub_812D6F8
    add r7, r0, #0
    ldrh r0, [r7,#0x2e]
    ldr r1, [pc, #0x812d4c4-0x812d3ee-2] // =word_2023FA0
    ldr r2, [pc, #0x812d4c8-0x812d3f0-4] // =unk_202DFA0
    mov r3, #0xa
    mov r5, #7
    bl sub_8120194
    mov r0, #3
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x812d4c8-0x812d400-4] // =unk_202DFA0
    mov r4, #8
    mov r5, #0xe
    bl sub_80018C2
    ldrh r0, [r7,#0x2e]
    ldr r1, [pc, #0x812d4c4-0x812d40c-4] // =word_2023FA0
    ldr r2, [pc, #0x812d4cc-0x812d40e-2] // =unk_202E080
    ldr r3, [pc, #0x812d4d0-0x812d410-4] // =dword_812C258+48
    ldr r4, [pc, #0x812d4d4-0x812d412-2] // =0x6007600
    mov r5, #7
    bl sub_8120390
    mov r0, #1
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x812d4cc-0x812d420-4] // =unk_202E080
    mov r4, #2
    mov r5, #0xe
    bl sub_80018C2
    ldrh r0, [r7,#0x2e]
    ldr r1, [pc, #0x812d4c4-0x812d42c-4] // =word_2023FA0
    ldr r2, [pc, #0x812d4d8-0x812d42e-2] // =unk_202E0B8
    mov r3, #9
    lsl r3, r3, #0xc
    ldr r4, [pc, #0x812d4dc-0x812d434-4] // =0x35C
    orr r3, r4
    ldr r4, [pc, #0x812d4e0-0x812d438-4] // =0x6006B80
    mov r5, #7
    bl sub_81203E4
    mov r0, #0xb
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x812d4d8-0x812d446-2] // =unk_202E0B8
    mov r4, #2
    mov r5, #0xe
    bl sub_80018C2
    ldrh r0, [r7,#0x2e]
    ldr r1, [pc, #0x812d4c4-0x812d452-2] // =word_2023FA0
    ldr r2, [pc, #0x812d4e4-0x812d454-4] // =unk_202E0F0
    mov r3, #0xa
    lsl r3, r3, #0xc
    ldr r4, [pc, #0x812d4e8-0x812d45a-2] // =0x214
    orr r3, r4
    mov r5, #7
    bl sub_8120458
    mov r0, #0xd
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x812d4e4-0x812d46a-2] // =unk_202E0F0
    mov r4, #1
    mov r5, #0xe
    bl sub_80018C2
    ldrh r0, [r7,#0x2e]
    ldr r1, [pc, #0x812d4c4-0x812d476-2] // =word_2023FA0
    ldr r2, [pc, #0x812d4ec-0x812d478-4] // =unk_202E10C
    mov r3, #8
    lsl r3, r3, #0xc
    ldr r4, [pc, #0x812d4f0-0x812d47e-2] // =0x34C
    orr r3, r4
    mov r5, #7
    bl sub_81204C4
    mov r0, #0xe
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x812d4ec-0x812d48e-2] // =unk_202E10C
    mov r4, #2
    mov r5, #0xe
    bl sub_80018C2
    ldrh r0, [r7,#0x2e]
    ldr r1, [pc, #0x812d4c4-0x812d49a-2] // =word_2023FA0
    ldr r2, [pc, #0x812d4f4-0x812d49c-4] // =unk_202E144
    mov r3, #0xa
    lsl r3, r3, #0xc
    ldr r4, [pc, #0x812d4f8-0x812d4a2-2] // =0x0
    orr r3, r4
    mov r5, #7
    bl sub_8120618
    mov r0, #0x10
    mov r1, #4
    mov r2, #2
    ldr r3, [pc, #0x812d4f4-0x812d4b2-2] // =unk_202E144
    mov r4, #2
    mov r5, #0xe
    bl sub_80018C2
    bl sub_812D5EC
    pop {r4-r7,pc}
    .balign 4, 0x00
off_812D4C4:    .word word_2023FA0
off_812D4C8:    .word unk_202DFA0
off_812D4CC:    .word unk_202E080
off_812D4D0:    .word dword_812C258+0x30
dword_812D4D4:    .word 0x6007600
off_812D4D8:    .word unk_202E0B8
off_812D4DC:    .word 0x35C
dword_812D4E0:    .word 0x6006B80
off_812D4E4:    .word unk_202E0F0
dword_812D4E8:    .word 0x216
off_812D4EC:    .word unk_202E10C
dword_812D4F0:    .word 0x34F
off_812D4F4:    .word unk_202E144
unk_812D4F8:    .byte 0
    .byte 2
    .byte 0
    .byte 0
.thumb
sub_812D4FC:
    push {r4-r7,lr}
    bl sub_812D6F8
    add r5, r0, #0
    mov r0, #2
    mov r1, #0x20 
    mov r2, #0x2a 
    mov r3, #0x13
    ldr r4, [pc, #0x812d51c-0x812d50c-4] // =dword_8129178
    ldr r6, [pc, #0x812d524-0x812d50e-2] // =0x40000000
    ldr r7, [pc, #0x812d520-0x812d510-4] // =0x20002
    bl sub_812D600
    bl sub_812D9F0
    pop {r4-r7,pc}
off_812D51C:    .word dword_8129178
dword_812D520:    .word 0x20002
dword_812D524:    .word 0x40000000
// end of function sub_812D4FC

    push {r4-r7,lr}
    mov r2, #0xc6
    b loc_812D532
.thumb
sub_812D52E:
    push {r4-r7,lr}
    mov r2, #0x30 
loc_812D532:
    mov r1, #0
    push {r1,r2}
    add r0, r1, #0
    bl sub_80466C4
    pop {r1,r2}
    bne locret_812D546
    ldr r0, [pc, #0x812d548-0x812d540-4] // =dword_812C258
    bl sub_812D56C
locret_812D546:
    pop {r4-r7,pc}
off_812D548:    .word dword_812C258
// end of function sub_812D52E

.thumb
sub_812D54C:
    push {r4-r7,lr}
    mov r1, #3
    push {r1}
    add r0, r1, #0
    bl sub_80466C4
    pop {r1}
    bne locret_812D564
    mov r2, #0xc0
    ldr r0, [pc, #0x812d568-0x812d55e-2] // =dword_812C258+16
    bl sub_812D56C
locret_812D564:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_812D568:    .word dword_812C258+0x10
// end of function sub_812D54C

.thumb
sub_812D56C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r2, [sp]
    add r6, r1, #0
    add r4, r6, #2
    bl sub_80465A0
loc_812D57A:
    add r0, r6, #0
    bl sub_80466C4
    beq loc_812D594
    tst r6, r6
    bne loc_812D588
    add r7, r1, #0
loc_812D588:
    add r5, r1, #0
    ldr r0, [sp]
    mov r1, #0x58 
    bl sub_800307C
    str r7, [r5,#0x14]
loc_812D594:
    add r6, #1
    cmp r6, r4
    ble loc_812D57A
    add sp, sp, #4
    pop {r4-r7,pc}
    .byte 0, 0
// end of function sub_812D56C

.thumb
sub_812D5A0:
    push {r4-r7,lr}
    bl sub_812D6F8
    add r5, r0, #0
    ldr r0, [pc, #0x812d5cc-0x812d5a8-4] // =word_2023FA0
    ldrh r4, [r5,#0x2a]
    ldrh r1, [r5,#0x2e]
    add r4, r4, r1
    mov r1, #0x20 
    mul r1, r4
    add r0, r0, r1
    ldr r2, [r0,#0x1c]
    lsl r0, r2, #0x10
    lsr r0, r0, #0x17
    mov r1, #0x7f
    and r1, r2
    mov r2, #0
    add r3, r4, #0
    bl sub_811980C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_812D5CC:    .word word_2023FA0
// end of function sub_812D5A0

.thumb
sub_812D5D0:
    push {r4-r7,lr}
    add r3, r2, #0
    add r2, r1, #0
    add r1, r0, #0
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    add r4, r0, #0
    lsl r1, r1, #0x11
    lsr r1, r1, #0x1a
    bl sub_811980C
    add r0, r4, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_812D5D0

.thumb
sub_812D5EC:
    push {r4-r7,lr}
    bl sub_812D6F8
    add r7, r0, #0
    mov r0, #0xc6
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    pop {r4-r7,pc}
// end of function sub_812D5EC

.thumb
sub_812D600:
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
    bne loc_812D61C
    mov r2, #0
    b loc_812D61E
loc_812D61C:
    ldrh r2, [r5,r3]
loc_812D61E:
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
    bne loc_812D64C
    ldr r1, [pc, #0x812d664-0x812d642-2] // =dword_8129180
    bl sub_8120CC8
    ldr r2, [sp,#8]
    strb r0, [r5,r2]
loc_812D64C:
    ldr r2, [sp,#8]
    ldrb r0, [r5,r2]
    mov r3, #0xf
    and r0, r3
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r5,r2]
    add sp, sp, #0x1c
    pop {r4-r7,pc}
    .byte 0, 0
    .word dword_8129178
off_812D664:    .word dword_8129180
// end of function sub_812D600

.thumb
sub_812D668:
    push {r4-r7,lr}
    bl sub_812D6F8
    add r5, r0, #0
    mov r0, #0xa4
    mov r1, #0x20 
    mov r2, #0x34 
    mov r3, #0x15
    ldr r4, [pc, #0x812d684-0x812d678-4] // =dword_8129178
    ldr r6, [pc, #0x812d68c-0x812d67a-2] // =0x40000000
    ldr r7, [pc, #0x812d688-0x812d67c-4] // =0x0
    bl sub_812D600
    pop {r4-r7,pc}
off_812D684:    .word dword_8129178
dword_812D688:    .word 0x2
dword_812D68C:    .word 0x40000000
// end of function sub_812D668

    push {r4-r7,lr}
    bl sub_812D6F8
    add r7, r0, #0
    ldrh r0, [r7,#0x28]
    tst r0, r0
    beq loc_812D6C4
    ldrh r0, [r5,#0x26]
    cmp r0, #4
    beq locret_812D6F4
    cmp r0, #8
    beq locret_812D6F4
    bl sub_812D700
    bne locret_812D6F4
    push {r5,r7}
    add r5, r7, #0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #7
    mov r2, #0
    mov r3, #0xa
    bl sub_811F7F8
    pop {r5,r7}
loc_812D6C4:
    mov r0, #2
    bl sub_811F7EC
    bne loc_812D6DC
    mov r0, #1
    bl sub_811F7EC
    beq locret_812D6F4
    mov r1, #4
    ldrb r0, [r5,#0x11]
    tst r0, r0
    beq loc_812D6E6
loc_812D6DC:
    ldrb r1, [r5,#0x1b]
    mov r0, #1
    orr r1, r0
    strb r1, [r5,#0x1b]
    mov r1, #8
loc_812D6E6:
    strh r1, [r5,#0x26]
    mov r0, #0x81
    cmp r1, #4
    beq loc_812D6F0
    mov r0, #0x83
loc_812D6F0:
    bl sound_play
locret_812D6F4:
    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_812D6F8:
    ldr r0, [pc, #0x812d6fc-0x812d6f8-4] // =unk_2037780
    mov pc, lr
off_812D6FC:    .word unk_2037780
// end of function sub_812D6F8

.thumb
sub_812D700:
    push {r7,lr}
    bl sub_812D6F8
    add r7, r0, #0
    mov r0, #8
    bl sub_811F7EC
    bne loc_812D71E
    ldrb r0, [r5,#2]
    cmp r0, #0x20 
    bne loc_812D742
    mov r0, #2
    bl sub_811F7EC
    beq locret_812D746
loc_812D71E:
    ldrb r0, [r5,#2]
    cmp r0, #0x20 
    bne loc_812D730
    ldrb r0, [r7,#0xd]
    strb r0, [r5,#2]
    mov r0, #0x83
    bl sound_play
    b locret_812D746
loc_812D730:
    strb r0, [r7,#0xd]
    mov r0, #0x20 
    strb r0, [r5,#2]
    mov r0, #0
    strh r0, [r7,#0x34]
    mov r0, #0x81
    bl sound_play
    b locret_812D746
loc_812D742:
    mov r0, #0
    tst r0, r0
locret_812D746:
    pop {r7,pc}
// end of function sub_812D700

    push {r7,lr}
    bl sub_812D6F8
    add r7, r0, #0
    bl sub_812D700
    bne locret_812D776
    bl sub_812D7A4
    bne loc_812D76E
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #7
    mov r2, #1
    ldrh r3, [r7,#0x34]
    bl sub_811FA22
    strh r0, [r7,#0x34]
loc_812D76E:
    bl sub_812D78C
    bl sub_812D668
locret_812D776:
    pop {r7,pc}
    push {lr}
    ldrb r0, [r5,#2]
    cmp r0, #0x20 
    bne locret_812D788
    bl sub_812D78C
    bl sub_812D668
locret_812D788:
    pop {pc}
    .balign 4, 0x00
.thumb
sub_812D78C:
    push {r4-r7,lr}
    mov r0, #0x15
    mov r1, #2
    mov r2, #0
    ldr r3, [pc, #0x812d7a0-0x812d794-4] // =unk_20227A0
    mov r4, #8
    mov r5, #0x11
    bl sub_80018C2
// end of function sub_812D78C

    pop {r4-r7,pc}
off_812D7A0:    .word unk_20227A0
.thumb
sub_812D7A4:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r5, [sp]
    bl sub_812D6F8
    add r5, r0, #0
    mov r0, #1
    bl sub_811F7EC
    bne loc_812D7BA
    b loc_812D800
loc_812D7BA:
    mov r0, #0x81
    bl sound_play
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrh r2, [r5,#0x34]
    mov r1, #2
    mov r4, #3
    ldrb r3, [r0,r1]
    strb r2, [r0,r1]
    cmp r2, r3
    beq loc_812D7DE
    ldr r1, [pc, #0x812d808-0x812d7d2-2] // =0x30069A0
    ldrb r3, [r1,r2]
    mov r1, #4
    eor r3, r1
    strb r3, [r0,r4]
    b loc_812D7E6
loc_812D7DE:
    ldrb r3, [r0,r4]
    mov r1, #4
    eor r3, r1
    strb r3, [r0,r4]
loc_812D7E6:
    ldr r0, [pc, #0x812d80c-0x812d7e6-2] // =unk_2023FC0
    ldrh r1, [r5,#0x28]
    sub r1, #1
    beq loc_812D7F6
    bl loc_8120018
    bl sub_812D5A0
loc_812D7F6:
    mov r6, #0
    mov r7, #0
    mov r0, #1
    tst r0, r0
    b loc_812D804
loc_812D800:
    mov r0, #0
    tst r0, r0
loc_812D804:
    add sp, sp, #4
    pop {r4-r7,pc}
dword_812D808:    .word 0x30069A0
off_812D80C:    .word unk_2023FC0
    .word 0x64
// end of function sub_812D7A4

    push {lr}
    bl sub_812D6F8
    ldr r1, [r0,#0x6c]
    tst r1, r1
    beq locret_812D82E
    sub r1, #1
    str r1, [r0,#0x6c]
    bne locret_812D82E
    bl sub_8040818
    mov r0, #0
    tst r0, r0
locret_812D82E:
    pop {pc}
    push {lr}
    bl sub_812D6F8
    ldr r1, [r0,#0x6c]
    tst r1, r1
    pop {pc}
    push {lr}
    ldr r0, [r5,#0x6c]
    tst r0, r0
    bne locret_812D84E
    ldr r0, [pc, #0x812d850-0x812d844-4] // =0x64
    str r0, [r5,#0x6c]
    mov r0, #0x41 
    bl sub_8132280
locret_812D84E:
    pop {pc}
off_812D850:    .word 0x64
    push {lr}
    bl sub_812D6F8
    add r1, r0, #0
    ldrh r0, [r1,#0x2e]
    ldrh r2, [r1,#0x2a]
    add r0, r0, r2
    ldr r1, [pc, #0x812d87c-0x812d862-2] // =word_2023FA0
    lsl r0, r0, #5
    add r1, r1, r0
    ldrh r0, [r1,#0x1c]
    lsr r1, r0, #7
    mov r2, #0x7f
    and r0, r2
    lsl r0, r0, #9
    orr r0, r1
    mov r2, #0x80
    lsl r2, r2, #8
    orr r0, r2
    pop {pc}
off_812D87C:    .word word_2023FA0
    push {lr}
    bl sub_80062C8
    cmp r0, #0xc
    bne loc_812D892
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
loc_812D892:
    ldrb r0, [r5,#2]
    strb r0, [r5,#0x16]
    mov r0, #0x1c
    strb r0, [r5,#2]
    mov r0, #0
    strb r0, [r5,#0xc]
    strb r0, [r5,#3]
    ldrb r1, [r5,#0x1b]
    mov r0, #1
    tst r1, r0
    bne loc_812D8BC
    mov r1, #0x40 
    bl sub_803EBF4
    ldrb r0, [r0,#0xe]
    cmp r0, #2
    bne loc_812D8B6
    mov r1, #0x30 
loc_812D8B6:
    add r0, r1, #0
    bl sub_8132280
loc_812D8BC:
    ldrb r0, [r5,#0x16]
    cmp r0, #0
    beq locret_812D8C6
    bl sub_8120AB8
locret_812D8C6:
    pop {pc}
    push {r4-r7,lr}
    add r7, r5, #0
    bl sub_800183C
    bl sub_8046664
    mov r0, #0
    mov r1, #0
    mov r2, #1
    ldr r3, [pc, #0x812d914-0x812d8da-2] // =dword_201E420
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018C2
    add r5, r7, #0
    bl sub_812D52E
    ldrh r0, [r5,#0x2a]
    mov r1, #0
    mov r2, #0
    bl sub_812D5D0
    mov r1, #0
    bl sub_812D934
    mov r0, #0
    bl sub_812D954
    bl sub_812D54C
    mov r0, #0
    mov r1, #3
    mov r2, #0
    bl sub_812D5D0
    bl sub_812D91C
    pop {r4-r7,pc}
off_812D914:    .word dword_201E420
    .word dword_812C258+0x20
.thumb
sub_812D91C:
    push {lr}
    ldr r0, [pc, #0x812d92c-0x812d91e-2] // =dword_812C258+32
    b loc_812D926
    push {lr}
    ldr r0, [pc, #0x812d930-0x812d924-4] // =dword_812C258+40
loc_812D926:
    bl sub_80465A0
    pop {pc}
off_812D92C:    .word dword_812C258+0x20
off_812D930:    .word dword_812C258+0x28
// end of function sub_812D91C

.thumb
sub_812D934:
    push {r4,lr}
    lsl r1, r1, #2
    add r4, r0, #0
    ldr r2, [pc, #0x812d948-0x812d93a-2] // =off_812D94C
    ldr r2, [r2,r1]
    mov r3, #0xa
    bl sub_8120228
    pop {r4,pc}
    .balign 4, 0x00
off_812D948:    .word off_812D94C
off_812D94C:    .word unk_202DFA0
    .word unk_202DFC0
// end of function sub_812D934

.thumb
sub_812D954:
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x812d9d0-0x812d958-4] // =off_812D9D4
    ldr r3, [r1,r0]
    ldr r1, [pc, #0x812d9dc-0x812d95c-4] // =dword_812D9E0
    ldr r4, [r1,r0]
    tst r0, r0
    beq loc_812D96E
    ldrh r2, [r5,#0x30]
    mov r1, #8
    sub r1, r1, r2
    add r7, r4, r1
    b loc_812D970
loc_812D96E:
    add r7, r4, #0
loc_812D970:
    ldr r1, [pc, #0x812d9dc-0x812d970-4] // =dword_812D9E0
    add r0, #8
    ldr r6, [r1,r0]
    push {r3}
    add r0, r4, #0
    add r1, r6, #0
    mov r2, #2
    mov r3, #0
    mov r4, #8
    mov r5, #2
    bl sub_80018D0
// end of function sub_812D954

    pop {r3}
    add r0, r7, #0
    add r1, r6, #0
    mov r2, #2
    mov r4, #8
    mov r5, #2
    bl sub_80018C2
    pop {r4-r7,pc}
    .balign 4, 0x00
    push {r4-r7,lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x812d9d0-0x812d9a0-4] // =off_812D9D4
    ldr r3, [r1,r0]
    ldr r1, [pc, #0x812d9dc-0x812d9a4-4] // =dword_812D9E0
    ldr r4, [r1,r0]
    tst r0, r0
    beq loc_812D9B6
    ldrh r2, [r5,#0x30]
    mov r1, #8
    sub r1, r1, r2
    add r7, r4, r1
    b loc_812D9B8
loc_812D9B6:
    add r7, r4, #0
loc_812D9B8:
    ldr r1, [pc, #0x812d9dc-0x812d9b8-4] // =dword_812D9E0
    add r0, #8
    ldr r6, [r1,r0]
    add r0, r4, #0
    add r1, r6, #0
    mov r2, #2
    mov r3, #0
    mov r4, #8
    mov r5, #2
    bl sub_80018D0
    pop {r4-r7,pc}
off_812D9D0:    .word off_812D9D4
off_812D9D4:    .word unk_202DFA0
    .word unk_202DFC0
off_812D9DC:    .word dword_812D9E0
dword_812D9E0:    .word 0xB, 0xB, 0x6, 0xD
.thumb
sub_812D9F0:
    push {r4-r7,lr}
    bl sub_812D6F8
    add r5, r0, #0
    ldr r0, [pc, #0x812da30-0x812d9f8-4] // =0x92
    mov r1, #0x1c
    mov r2, #0x28 
    mov r3, #0x2e 
    bl sub_812DA08
    pop {r4-r7,pc}
    .balign 4, 0x00
// end of function sub_812D9F0

.thumb
sub_812DA08:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    lsl r0, r0, #0x10
    ldr r1, [sp]
    orr r0, r1
    ldr r1, [pc, #0x812da34-0x812da18-4] // =0x20002
    ldr r2, [sp,#4]
    ldrh r2, [r5,r2]
    ldr r3, [sp,#8]
    ldrh r3, [r5,r3]
    mov r4, #7
    ldr r6, [pc, #0x812da38-0x812da24-4] // =0xC24C
    mov r7, #0x64 
    bl sub_811FA98
    add sp, sp, #0xc
    pop {r4-r7,pc}
dword_812DA30:    .word 0x92
dword_812DA34:    .word 0x20002
dword_812DA38:    .word 0xC24C
// end of function sub_812DA08

.thumb
sub_812DA3C:
    push {lr}
    mov r0, #6
    bl sub_80466C4
    bne locret_812DA4A
    bl sub_812D4FC
locret_812DA4A:
    pop {pc}
// end of function sub_812DA3C

.thumb
sub_812DA4C:
    push {lr}
    strb r0, [r5,#0x1f]
    mov r0, #0x30 
    strb r0, [r5,#2]
    mov r0, #0x41 
    bl sub_8132280
    mov r0, #0xf0
    strh r0, [r5,#0x28]
    pop {pc}
// end of function sub_812DA4C

.thumb
sub_812DA60:
    push {r0,lr}
    bl sub_80062C8
    cmp r0, #0xc
    bne loc_812DA72
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
loc_812DA72:
    bl sub_803EA60
    cmp r0, #0
    bne loc_812DA80
    bl sub_81440D8
    b loc_812DA84
loc_812DA80:
    bl sub_803C754
loc_812DA84:
    mov r1, #0x1c
    strb r1, [r5,#2]
    mov r1, #0
    strb r1, [r5,#0xc]
    strb r1, [r5,#3]
    bl sub_8120AB8
// <endpool> <endfile>
    pop {r0,pc}
// end of function sub_812DA60

/*For debugging purposes, connect comment at any range!*/
