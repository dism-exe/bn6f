.include "npc.inc"

.func
.thumb_func
npc_809E570:
    push {lr}
    ldr r7, off_809E58C // =jt_809E580 
    ldrb r0, [r5,#8]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .byte 0, 0
jt_809E580:    .word npc_809E590+1
    .word npc_809E5E2+1
    .word npc_809EADA+1
off_809E58C:    .word jt_809E580
.endfunc // npc_809E570

.func
.thumb_func
npc_809E590:
    push {lr}
    ldr r0, [r5,#0x60]
    bl sub_809F506
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x17]
    strb r0, [r5,#7]
    strb r0, [r5,#0x16]
    str r0, [r5,#0x60]
    str r0, [r5,#0x64]
    str r0, [r5,#0x50]
    str r0, [r5,#0x54]
    str r0, [r5,#0x58]
    strb r0, [r5,#0x11]
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x13]
    mov r0, #0xff
    strh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#0xd]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sprite_load
    bl sprite_loadAnimationData
    bl npc_809E5E2
    pop {pc}
.endfunc // npc_809E590

.func
.thumb_func
npc_809E5E2:
    push {lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_809E5F0
    bl sub_809F5FC
    b loc_809E658
loc_809E5F0:
    bl npc_809EBDC
    ldr r7, off_809E6C0 // =off_809E6A4 
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    mov r0, #0
    ldr r2, [r5,#0x60]
    mov r1, #8
    tst r2, r1
    beq loc_809E60A
    mov r0, #1
loc_809E60A:
    bl sub_8002F5C
    ldrh r0, [r5,#0x3c]
    ldrh r1, [r5,#0x3e]
    cmp r0, r1
    beq loc_809E648
    add r2, r0, #0
    mov r0, #0x80
    ldr r1, [r5,#0x78]
    bl sprite_load
    bl sprite_loadAnimationData
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    tst r0, r1
    bne loc_809E632
    bl sub_8002F90
    b loc_809E644
loc_809E632:
    ldr r0, [r5,#0x60]
    ldr r1, off_809E6C4 // =0x100 
    tst r0, r1
    beq loc_809E640
    bl sub_8002E3C
    b loc_809E644
loc_809E640:
    bl sub_8002E52
loc_809E644:
    mov r0, #0xff
    strb r0, [r5,#0x15]
loc_809E648:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    cmp r0, r1
    beq loc_809E658
    bl sprite_setAnimation
    bl sprite_loadAnimationData
loc_809E658:
    bl sprite_update
    ldrb r0, [r5,#0x16]
    bl sprite_setPallete
    ldr r0, [r5,#0x68]
    ldr r1, [r5,#0x6c]
    cmp r0, r1
    beq loc_809E66E
    bl sub_8002FA6
loc_809E66E:
    ldrb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    ldrh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    ldr r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    bl sub_809F526
    ldr r0, [r5,#0x64]
    tst r0, r0
    bne loc_809E690
    add r0, r5, #0
    add r0, #0x24 
    bl sub_8035694
loc_809E690:
    bl sub_8002E14
    ldr r0, [r5,#0x60]
    mov r1, #0x40 
    tst r0, r1
    beq locret_809E6A0
    bl sub_809F922
locret_809E6A0:
    pop {pc}
    .balign 4, 0x00
off_809E6A4:    .word sub_809E6C8+1
off_809E6A8:    .word npc_809E6DC+1
    .word npc_809E8CC+1
    .word npc_809EA3C+1
    .word sub_809EA74+1
    .word sub_809EA82+1
    .word npc_809EAA0+1
off_809E6C0:    .word off_809E6A4
off_809E6C4:    .word 0x100
.endfunc // npc_809E5E2

.func
.thumb_func
sub_809E6C8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_809E6D6
    bl sub_809F516
loc_809E6D6:
    bl npc_809EBF8
    pop {pc}
.endfunc // sub_809E6C8

.func
.thumb_func
npc_809E6DC:
    push {lr}
    ldr r7, off_809E700 // =jt_809E6F0 
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl npc_809EBF8
    pop {pc}
    .byte 0, 0
jt_809E6F0:    .word npc_809E704+1
    .word npc_809E7D8+1
    .word npc_809E84E+1
    .word npc_809E878+1
off_809E700:    .word jt_809E6F0
.endfunc // npc_809E6DC

.func
.thumb_func
npc_809E704:
    push {lr}
    ldr r7, off_809E7C4 // =unk_809E77E 
    ldrb r0, [r5,#0xe]
    lsl r0, r0, #2
    add r7, r7, r0
    ldr r0, [r5,#0x24]
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x70]
    ldr r0, [r5,#0x28]
    mov r3, #2
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x74]
    ldr r0, dword_809E7C8 // =0x80000 
    ldrb r1, [r5,#4]
    push {r5}
    bl SWI_Div
    pop {r5}
    ldr r1, dword_809E7D4 // =0xFFF 
    add r0, r0, r1
    lsr r0, r0, #0xc
    strh r0, [r5,#0x20]
    ldr r7, dword_809E7C0 // =0x809E79E 
    ldrb r0, [r5,#0xe]
    add r0, r0, r0
    add r7, r7, r0
    ldrb r4, [r5,#4]
    mov r3, #0
    ldrsb r1, [r7,r3]
    mul r1, r4
    lsl r1, r1, #0xc
    str r1, [r5,#0x40]
    mov r3, #1
    ldrsb r1, [r7,r3]
    mul r1, r4
    lsl r1, r1, #0xc
    str r1, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x24]
    add r0, r0, r1
    str r0, [r5,#0x30]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x28]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x2c]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_809F5B0
    pop {pc}
unk_809E77E:    .byte 0
    .byte 0
    .word 0x80000, 0x0, 0x0
    .word 0x8, 0xFFF80000, 0x0, 0x0
    .word 0xFFF8, 0x1, 0x100, 0xFF, 0x900FF00, 0xD000B00, 0x1000F00
    .word 0x5000300, 0x700
dword_809E7C0:    .word 0x809E79E
off_809E7C4:    .word unk_809E77E
dword_809E7C8:    .word 0x80000
    .byte 0xAE
    .byte 0xE7
    .byte 9
    .byte 8
    .byte 0xB6
    .byte 0xE7
    .hword 0x809
dword_809E7D4:    .word 0xFFF
npc_809E7D8:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #0x10
    tst r0, r1
    bne loc_809E7EA
    bl sub_809F638
    tst r0, r0
    bne loc_809E848
loc_809E7EA:
    ldr r0, [r5,#0x30]
    str r0, [r5,#0x24]
    ldr r0, [r5,#0x34]
    str r0, [r5,#0x28]
    ldr r0, [r5,#0x38]
    str r0, [r5,#0x2c]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_809E81A
    ldr r0, [r5,#0x70]
    str r0, [r5,#0x24]
    ldr r0, [r5,#0x74]
    str r0, [r5,#0x28]
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bne loc_809E814
    bl sub_809F516
    pop {pc}
loc_809E814:
    bl npc_809E704
    pop {pc}
loc_809E81A:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x30]
    add r0, r0, r1
    str r0, [r5,#0x30]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x60]
    mov r1, #0x20 
    lsl r1, r1, #4
    tst r0, r1
    bne loc_809E842
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    str r0, [r5,#0x38]
loc_809E842:
    bl sub_809F5B0
    pop {pc}
loc_809E848:
    bl sub_809F5B0
    pop {pc}
npc_809E84E:
    push {lr}
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    ldrb r2, [r5,#6]
    tst r0, r0
    beq loc_809E872
    sub r0, #1
    strb r0, [r5,#4]
    tst r1, r1
    bne loc_809E86A
    ldrh r1, [r5,#0x2e]
    add r1, r1, r2
    strh r1, [r5,#0x2e]
    b locret_809E870
loc_809E86A:
    ldrh r1, [r5,#0x2e]
    sub r1, r1, r2
    strh r1, [r5,#0x2e]
locret_809E870:
    pop {pc}
loc_809E872:
    bl sub_809F516
    pop {pc}
npc_809E878:
    push {lr}
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_809E8BA
    sub r0, #1
    strb r0, [r5,#4]
    ldr r0, off_809E8C0 // =dword_809E8C4 
    ldrb r1, [r5,#6]
    lsl r1, r1, #1
    ldrb r2, [r0,r1]
    add r1, #1
    ldrb r1, [r0,r1]
    ldrb r0, [r5,#7]
    tst r1, r1
    bne loc_809E89E
    ldrh r1, [r5,r2]
    add r1, r1, r0
    strh r1, [r5,r2]
    b loc_809E8A4
loc_809E89E:
    ldrh r1, [r5,r2]
    sub r1, r1, r0
    strh r1, [r5,r2]
loc_809E8A4:
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_809E8B2
    ldrh r1, [r5,#0x2e]
    add r1, #1
    strh r1, [r5,#0x2e]
    b locret_809E8B8
loc_809E8B2:
    ldrh r1, [r5,#0x2e]
    sub r1, #1
    strh r1, [r5,#0x2e]
locret_809E8B8:
    pop {pc}
loc_809E8BA:
    bl sub_809F516
    pop {pc}
off_809E8C0:    .word dword_809E8C4
dword_809E8C4:    .word 0x2A0026
    .word 0x12A0126
.endfunc // npc_809E704

.func
.thumb_func
npc_809E8CC:
    push {lr}
    ldr r7, off_809E8F8 // =jt_809E8E0 
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl npc_809EBF8
    pop {pc}
    .byte 0, 0
jt_809E8E0:    .word npc_809E8FC+1
    .word npc_809E916+1
    .word npc_809E944+1
    .word npc_809E95E+1
    .word npc_809E9C0+1
    .word npc_809E9DA+1
off_809E8F8:    .word jt_809E8E0
.endfunc // npc_809E8CC

.func
.thumb_func
npc_809E8FC:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
.endfunc // npc_809E8FC

.func
.thumb_func
npc_809E916:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    cmp r0, r2
    bpl loc_809E940
    str r2, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_809F516
    pop {pc}
loc_809E940:
    str r0, [r5,#0x2c]
    pop {pc}
.endfunc // npc_809E916

.func
.thumb_func
npc_809E944:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0xc
    strb r0, [r5,#0xa]
    pop {pc}
.endfunc // npc_809E944

.func
.thumb_func
npc_809E95E:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    push {r2}
    mov r3, #6
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r2, off_809E9B4 // =dword_809E9B8 
    ldrb r0, [r2,r3]
    add r3, #1
    ldrb r1, [r2,r3]
    mov r3, #7
    ldrb r2, [r5,r3]
    tst r1, r1
    beq loc_809E98C
    ldrh r1, [r5,r0]
    sub r1, r1, r2
    strh r1, [r5,r0]
    b loc_809E992
loc_809E98C:
    ldrh r1, [r5,r0]
    add r1, r1, r2
    strh r1, [r5,r0]
loc_809E992:
    pop {r2}
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    cmp r0, r2
    bpl loc_809E9B0
    str r2, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_809F516
    pop {pc}
loc_809E9B0:
    str r0, [r5,#0x2c]
    pop {pc}
off_809E9B4:    .word dword_809E9B8
dword_809E9B8:    .word 0x2A0026
    .word 0x12A0126
.endfunc // npc_809E95E

.func
.thumb_func
npc_809E9C0:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0x14
    strb r0, [r5,#0xa]
    pop {pc}
.endfunc // npc_809E9C0

.func
.thumb_func
npc_809E9DA:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    push {r2}
    mov r3, #6
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r2, off_809EA30 // =unk_809EA34 
    ldrb r0, [r2,r3]
    add r3, #1
    ldrb r1, [r2,r3]
    mov r3, #7
    ldrb r2, [r5,r3]
    tst r1, r1
    beq loc_809EA08
    ldrh r1, [r5,r0]
    sub r1, r1, r2
    strh r1, [r5,r0]
    b loc_809EA0E
loc_809EA08:
    ldrh r1, [r5,r0]
    add r1, r1, r2
    strh r1, [r5,r0]
loc_809EA0E:
    pop {r2}
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    cmp r0, #0
    bgt loc_809EA26
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_809F516
    pop {pc}
loc_809EA26:
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    str r0, [r5,#0x2c]
    pop {pc}
    .byte 0, 0
off_809EA30:    .word unk_809EA34
unk_809EA34:    .byte 0x26 
    .byte 0
    .byte 0x2A 
    .byte 0
    .byte 0x26 
    .byte 1
    .byte 0x2A 
    .byte 1
.endfunc // npc_809E9DA

.func
.thumb_func
npc_809EA3C:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_809EA4A
    mov r0, #4
    strb r0, [r5,#0xa]
    b loc_809EA6E
loc_809EA4A:
    mov r7, #0x80
    ldr r7, [r5,r7]
    mov r1, #0xc0
    tst r7, r1
    beq loc_809EA62
    bl sub_8002DEA
    tst r0, r7
    beq loc_809EA6E
    bl sub_809F516
    b loc_809EA6E
loc_809EA62:
    bl sub_8002DEA
    cmp r0, r7
    bne loc_809EA6E
    bl sub_809F516
loc_809EA6E:
    bl npc_809EBF8
    pop {pc}
.endfunc // npc_809EA3C

.func
.thumb_func
sub_809EA74:
    push {lr}
    ldr r7, [r5,#0x7c]
    mov lr, pc
    bx r7
    bl npc_809EBF8
    pop {pc}
.endfunc // sub_809EA74

.func
.thumb_func
sub_809EA82:
    push {r4,r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    mov r7, #0x80
    ldr r0, [r5,r7]
    mov r7, #0x84
    ldr r1, [r5,r7]
    ldrb r0, [r4,r0]
    cmp r0, r1
    bne loc_809EA9A
    bl sub_809F516
loc_809EA9A:
    bl npc_809EBF8
    pop {r4,r7,pc}
.endfunc // sub_809EA82

.func
.thumb_func
npc_809EAA0:
    push {r4,r7,lr}
    mov r7, #0x80
    ldr r0, [r5,r7]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_809EAD4
    bl sub_809F516
    mov r0, #1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sprite_load
    bl sprite_loadAnimationData
    bl sub_8004602
    bl npc_809F51E
loc_809EAD4:
    bl npc_809EBF8
    pop {r4,r7,pc}
.endfunc // npc_809EAA0

.func
.thumb_func
npc_809EADA:
    push {lr}
    ldr r7, off_809EB00 // =off_809EAFC 
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sprite_update
    bl sub_809F526
    ldr r0, [r5,#0x60]
    mov r1, #0x40 
    tst r0, r1
    beq locret_809EAFA
    bl sub_809F922
locret_809EAFA:
    pop {pc}
off_809EAFC:    .word sub_809EB04+1
off_809EB00:    .word off_809EAFC
.endfunc // npc_809EADA

.func
.thumb_func
sub_809EB04:
    push {lr}
    ldr r7, dword_809EB1C // =0x809EB14 
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .balign 4, 0x00
    .word npc_809EB20+1
    .byte 0xBD
    .byte 0xEB
    .byte 9
    .byte 8
dword_809EB1C:    .word 0x809EB14
.endfunc // sub_809EB04

.func
.thumb_func
npc_809EB20:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #2
    tst r0, r1
    bne loc_809EB54
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r0, [r7,#0x20]
    ldr r2, [r5,#0x28]
    sub r0, r0, r2
    ldr r1, [r7,#0x1c]
    ldr r2, [r5,#0x24]
    sub r1, r1, r2
    bl calcAngle_800117C
    add r0, #0x20 
    mov r1, #0xc0
    and r0, r1
    lsr r0, r0, #6
    lsl r0, r0, #1
    add r0, #1
    bl sprite_setAnimation
    bl sprite_loadAnimationData
loc_809EB54:
    ldr r2, [r5,#0x60]
    ldr r1, off_809EBB4 // =0x400 
    tst r2, r1
    beq loc_809EBA4
    ldr r1, dword_809EBB8 // =0x800 
    tst r2, r1
    beq loc_809EB76
    mov r7, r10
    ldr r7, [r7,#0x2c]
    mov r1, #0x90
    ldr r0, [r5,r1]
    str r0, [r7,#0x4c]
    bl sub_809FC96
    str r0, [r7,#0x54]
    str r1, [r7,#0x58]
    strb r2, [r5,#0x1c]
loc_809EB76:
    cmp r3, #8
    bne loc_809EB98
    cmp r0, #0x70 
    bne loc_809EB98
    push {r0,r1,r3-r7}
    bl getPETNaviSelect // () -> u8
    add r2, r0, #0
    pop {r0,r1,r3-r7}
    cmp r2, #0
    beq loc_809EB98
    mov r2, #0x94
    ldr r0, [r5,r2]
    mov r1, #0x78 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    b loc_809EBAA
loc_809EB98:
    mov r2, #0x94
    ldr r0, [r5,r2]
    ldrb r1, [r5,#0x1c]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    b loc_809EBAA
loc_809EBA4:
    ldrb r0, [r5,#0x1c]
    bl chatbox_runScript_202da04 // (u8 scriptID) -> void
loc_809EBAA:
    mov r0, #4
    strb r0, [r5,#0xa]
    bl npc_809EBBC
    pop {pc}
off_809EBB4:    .word 0x400
dword_809EBB8:    .word 0x800
.endfunc // npc_809EB20

.func
.thumb_func
npc_809EBBC:
    push {lr}
    mov r0, #0x17
    mov r1, #0x15
    bl sub_802F164 // (int a1, int a2) -> zf
    bne locret_809EBDA
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#0x10]
    tst r0, r0
    bne locret_809EBDA
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_809F612
locret_809EBDA:
    pop {pc}
.endfunc // npc_809EBBC

.func
.thumb_func
npc_809EBDC:
    push {lr}
loc_809EBDE:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne locret_809EBF6
    ldr r6, [r5,#0x4c]
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r7, off_809EC2C // =npc_jt_commands 
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    str r6, [r5,#0x4c]
    b loc_809EBDE
locret_809EBF6:
    pop {pc}
.endfunc // npc_809EBDC

.func
.thumb_func
npc_809EBF8:
    push {lr}
loc_809EBFA:
    ldrb r0, [r5,#0x1f]
    tst r0, r0
    bne loc_809EC16
    ldr r6, [r5,#0x5c]
    tst r6, r6
    beq locret_809EC1A
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r7, off_809EC2C // =npc_jt_commands 
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    str r6, [r5,#0x5c]
    b loc_809EBFA
loc_809EC16:
    bl npc_809EC1C
locret_809EC1A:
    pop {pc}
.endfunc // npc_809EBF8

.func
.thumb_func
npc_809EC1C:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_809EC2A
    mov r0, #0
    strb r0, [r5,#0x1f]
locret_809EC2A:
    pop {pc}
off_809EC2C:    .word npc_jt_commands
npc_jt_commands:    .word npc_00_terminateScript+1
    .word 0x0
    .word npc_809ED88+1
    .word npc_809ED94+1
    .word npc_809EDB2+1
    .word npc_809EDD0+1
    .word npc_809EDEE+1
    .word npc_809EE00+1
    .word npc_809EE12+1
    .word npc_809EE1A+1
    .word npc_809EE22+1
    .word npc_809EE2A+1
    .word npc_809EE32+1
    .word npc_809EE48+1
    .word npc_809EE56+1
    .word npc_809EE62+1
    .word npc_809EE6C+1
    .word npc_809EE82+1
    .word npc_809EE9C+1
    .word npc_809EEAA+1
    .word npc_809EEB6+1
    .word npc_809EEDA+1
    .word npc_809EEF8+1
    .word npc_809EF00+1
    .word npc_809EF40+1
    .word npc_809EF48+1
    .word npc_809EF50+1
    .word npc_809EF58+1
    .word npc_809EF60+1
    .word npc_809EF6E+1
    .word npc_809EF82+1
    .word npc_809EF9A+1
    .word npc_809EFA6+1
    .word npc_809EFB4+1
    .word npc_809EFC6+1
    .word npc_809EFD8+1
    .word npc_809EFFC+1
    .word npc_809F01C+1
    .word npc_809F030+1
    .word npc_809F03C+1
    .word npc_809F048+1
    .word npc_809F058+1
    .word dword_809F0E4+9
    .word dword_809F0E4+33
    .word 0x0
    .word sub_809F114+1
    .word sub_809F12C+1
    .word sub_809F138+1
    .word sub_809F150+1
    .word sub_809F15A+1
    .word sub_809F16E+1
    .word sub_809F17C+1
    .word loc_809F18E+1
    .word sub_809F198+1
    .word sub_809F1C6+1
    .word sub_809F1D8+1
    .word sub_809F218+1
    .word sub_809F23E+1
    .word loc_809F26A+1
    .word sub_809F270+1
    .word sub_809F292+1
    .word sub_809F2A2+1
    .word sub_809F2C0+1
    .word sub_809F2DE+1
    .word sub_809F2FC+1
    .word sub_809F30C+1
    .word 0x0
    .word 0x0
    .word sub_809F31C+1
    .word sub_809F338+1
    .word sub_809F354+1
    .word sub_809F36E+1
    .word sub_809F37E+1
    .word sub_809F388+1
    .word sub_809F392+1
    .word sub_809F3A6+1
    .word sub_809F3C0+1
    .word sub_809F3E8+1
    .word sub_809F3F6+1
    .word sub_809F418+1
    .word sub_809F438+1
    .word sub_809F45A+1
    .word sub_809F4B8+1
    .word npc_809F4EE+1
.endfunc // npc_809EC1C

.func
.thumb_func
npc_00_terminateScript:
    push {lr}
    bl npc_809F51E
    pop {pc}
.endfunc // npc_00_terminateScript

.func
.thumb_func
npc_809ED88:
    push {lr}
    add r0, r6, #1
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
.endfunc // npc_809ED88

.func
.thumb_func
npc_809ED94:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sprite_load
    bl sprite_loadAnimationData
.endfunc // npc_809ED94

    bl sub_8004602
    bl npc_809F51E
    pop {pc}
.func
.thumb_func
npc_809EDB2:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_809EDCC
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809EDCC:
    add r6, #7
    pop {pc}
.endfunc // npc_809EDB2

.func
.thumb_func
npc_809EDD0:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne loc_809EDEA
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809EDEA:
    add r6, #7
    pop {pc}
.endfunc // npc_809EDD0

.func
.thumb_func
npc_809EDEE:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    add r6, #3
    pop {pc}
.endfunc // npc_809EDEE

.func
.thumb_func
npc_809EE00:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl loc_802F130 // (int a1, int a2) -> void
    add r6, #3
    pop {pc}
.endfunc // npc_809EE00

.func
.thumb_func
npc_809EE12:
    mov r0, #3
    strb r0, [r5]
    add r6, #1
    mov pc, lr
.endfunc // npc_809EE12

npc_809EE1A:
    mov r0, #1
    strb r0, [r5]
    add r6, #1
    mov pc, lr
npc_809EE22:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0xc]
    add r6, #2
    mov pc, lr
npc_809EE2A:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0xd]
    add r6, #2
    mov pc, lr
npc_809EE32:
    mov r1, #1
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x11]
    mov r1, #2
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x12]
    mov r1, #3
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x13]
    add r6, #4
    mov pc, lr
npc_809EE48:
    mov r0, #1
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
npc_809EE56:
    mov r0, #1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
.func
.thumb_func
npc_809EE62:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x16]
    add r6, #2
    pop {pc}
.endfunc // npc_809EE62

.func
.thumb_func
npc_809EE6C:
    push {lr}
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x20]
    bl npc_809F51E
    add r6, #2
    pop {pc}
.endfunc // npc_809EE6C

.func
.thumb_func
npc_809EE82:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl npc_809F51E
    add r6, #3
    pop {pc}
.endfunc // npc_809EE82

npc_809EE9C:
    mov r0, #2
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
npc_809EEAA:
    mov r0, #2
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
.func
.thumb_func
npc_809EEB6:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
    add r0, r6, #3
    bl sub_809F64C
    lsl r0, r0, #0x10
    str r0, [r5,#0x28]
    add r0, r6, #5
    bl sub_809F64C
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    add r6, #7
    pop {pc}
.endfunc // npc_809EEB6

.func
.thumb_func
npc_809EEDA:
    push {lr}
    ldrb r2, [r6,#1]
    strb r2, [r5,#0xe]
    ldrb r2, [r6,#2]
    strb r2, [r5,#4]
    ldrb r2, [r6,#3]
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl npc_809F51E
    add r6, #4
    pop {pc}
.endfunc // npc_809EEDA

npc_809EEF8:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x14]
    add r6, #2
    mov pc, lr
npc_809EF00:
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x3c]
    mov r1, #0
    strb r1, [r5,#0x16]
    str r1, [r5,#0x68]
    ldr r1, off_809EF3C // =dword_809E530 
    mov r3, #0
loc_809EF0E:
    ldrb r2, [r1,r3]
    cmp r2, r0
    beq loc_809EF1C
    cmp r2, #0xff
    beq loc_809EF2A
    add r3, #3
    b loc_809EF0E
loc_809EF1C:
    add r3, #1
    ldrb r0, [r1,r3]
    lsl r0, r0, #0x18
    str r0, [r5,#0x68]
    add r3, #1
    ldrb r0, [r1,r3]
    strb r0, [r5,#0x16]
loc_809EF2A:
    mov r0, #0x18
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #2
    mov pc, lr
    .balign 4, 0x00
off_809EF3C:    .word dword_809E530
npc_809EF40:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    add r6, #2
    mov pc, lr
npc_809EF48:
    mov r0, #0
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
npc_809EF50:
    mov r0, #2
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
npc_809EF58:
    mov r0, #3
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
.func
.thumb_func
npc_809EF60:
    push {lr}
    add r0, r6, #1
    bl sub_809F656
    str r0, [r5,#0x68]
    add r6, #5
    pop {pc}
.endfunc // npc_809EF60

.func
.thumb_func
npc_809EF6E:
    push {lr}
    ldrb r0, [r6,#1]
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r5,#0x68]
    orr r0, r1
    str r0, [r5,#0x68]
    add r6, #2
    pop {pc}
.endfunc // npc_809EF6E

.func
.thumb_func
npc_809EF82:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r0, [r6,#1]
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    mvn r1, r1
    ldr r0, [r5,#0x68]
    and r0, r1
    str r0, [r5,#0x68]
    add r6, #2
    pop {pc}
.endfunc // npc_809EF82

npc_809EF9A:
    mov r0, #4
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
npc_809EFA6:
    mov r0, #4
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
.func
.thumb_func
npc_809EFB4:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    bl sub_8002F90
    add r6, #1
    pop {pc}
.endfunc // npc_809EFB4

.func
.thumb_func
npc_809EFC6:
    push {lr}
    ldr r0, off_809EFF4 // =0x180 
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    bl sub_8002E3C
    add r6, #1
    pop {pc}
.endfunc // npc_809EFC6

.func
.thumb_func
npc_809EFD8:
    push {lr}
    mov r0, #0x80
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    ldr r0, [r5,#0x60]
    ldr r1, off_809EFF8 // =0x100 
    bic r0, r1
    str r0, [r5,#0x60]
    bl sub_8002E52
    add r6, #1
    pop {pc}
    .balign 4, 0x00
off_809EFF4:    .word 0x180
off_809EFF8:    .word 0x100
.endfunc // npc_809EFD8

.func
.thumb_func
npc_809EFFC:
    push {lr}
    bl getPETNaviSelect // () -> u8
    ldr r1, off_809F018 // =unk_809D328 
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x3c]
    mov r0, #0x18
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #1
    pop {pc}
off_809F018:    .word unk_809D328
.endfunc // npc_809EFFC

npc_809F01C:
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x3c]
    ldrb r0, [r6,#2]
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #3
    mov pc, lr
npc_809F030:
    mov r0, #8
    ldr r1, [r5,#0x60]
    eor r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
npc_809F03C:
    mov r0, #0x10
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
.func
.thumb_func
npc_809F048:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    bl sound_play // () -> void
    add r6, #3
    pop {pc}
.endfunc // npc_809F048

.func
.thumb_func
npc_809F058:
    push {lr}
    mov r0, #0xc0
    lsl r0, r0, #4
    mov r1, #2
    orr r0, r1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r0, r6, #1
    bl sub_809F64C
    mov r1, #0x90
    str r0, [r5,r1]
    bl sub_809FC1C
    tst r0, r0
    beq loc_809F0BE
    ldr r4, off_809F0E0 // =dword_809F0E4 
    ldrb r4, [r4,r0]
    strb r4, [r5,#0x16]
    mov r4, #0x40 
    mul r4, r1
    ldr r1, [r5,#0x60]
    orr r1, r4
    str r1, [r5,#0x60]
    mov r3, #0xff
    strb r3, [r5,#0x1c]
    ldr r0, off_809F0DC // =dword_873D108 
    mov r1, #0x94
    str r0, [r5,r1]
    mov r1, #0
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
    mov r1, #2
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x28]
    mov r1, #4
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #2
    strb r0, [r5,#0x11]
    mov r0, #2
    neg r0, r0
    strb r0, [r5,#0x12]
    add r6, #3
    pop {pc}
loc_809F0BE:
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sprite_load
    bl sprite_loadAnimationData
.endfunc // npc_809F058

    bl sub_8004602
    bl npc_809F51E
    pop {pc}
    .balign 4, 0x00
off_809F0DC:    .word dword_873D108
off_809F0E0:    .word dword_809F0E4
dword_809F0E4:    .word 0x20000FF, 0xFF030102, 0x7870B500, 0x51E82780, 0x7268200C
    .word 0x81682000, 0xFA0FF000, 0xBD003602, 0x1C70B500, 0xFAA0F000
    .word 0xFEE0F763, 0xBD003603
.func
.thumb_func
sub_809F114:
    push {lr}
    bl sub_8002F2C
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    add r2, r0, r1
    tst r2, r2
    beq loc_809F128
    bl sub_8002EF6
loc_809F128:
    add r6, #3
    pop {pc}
.endfunc // sub_809F114

.func
.thumb_func
sub_809F12C:
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x14]
    mvn r0, r0
    strb r0, [r5,#0x15]
    add r6, #2
    mov pc, lr
.endfunc // sub_809F12C

.func
.thumb_func
sub_809F138:
    push {lr}
    bl sprite_makeUnscalable
    bl sprite_makeScalable
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r2, [r6,#3]
    bl sprite_setScaleParameters
    add r6, #4
    pop {pc}
.endfunc // sub_809F138

.func
.thumb_func
sub_809F150:
    push {lr}
    bl sprite_makeUnscalable
    add r6, #1
    pop {pc}
.endfunc // sub_809F150

.func
.thumb_func
sub_809F15A:
    push {lr}
    bl sub_8002CCE
    ldrb r0, [r6,#1]
    tst r0, r0
    beq loc_809F16A
    bl sub_8002C7A
loc_809F16A:
    add r6, #2
    pop {pc}
.endfunc // sub_809F15A

.func
.thumb_func
sub_809F16E:
    push {lr}
    add r0, r6, #1
    bl sub_809F656
    str r0, [r5,#0x5c]
    add r6, #5
    pop {pc}
.endfunc // sub_809F16E

.func
.thumb_func
sub_809F17C:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xb]
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x22]
    mov r0, #1
    strb r0, [r5,#0x1f]
    add r6, #2
    pop {pc}
.endfunc // sub_809F17C

loc_809F18E:
    mov r0, #0
    str r0, [r5,#0x5c]
    strh r0, [r5,#0x22]
    mov r6, #0
    mov pc, lr
.func
.thumb_func
sub_809F198:
    push {lr}
    mov r4, #0x8c
    add r0, r6, #5
    str r0, [r5,r4]
    add r0, r6, #1
    bl sub_809F656
    str r0, [r5,#0x7c]
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r2, #0x8c
    mov r1, #0x80
    mov r0, #0
loc_809F1B6:
    str r0, [r5,r1]
    add r1, #4
    cmp r1, r2
    ble loc_809F1B6
    bl npc_809F51E
    add r6, #5
    pop {pc}
.endfunc // sub_809F198

.func
.thumb_func
sub_809F1C6:
    push {lr}
    mov r4, #0x8c
    add r0, r6, #5
    str r0, [r5,r4]
    add r0, r6, #1
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
.endfunc // sub_809F1C6

.func
.thumb_func
sub_809F1D8:
    push {lr}
    mov r4, #0x8c
    mov r1, #9
    add r0, r6, r1
    str r0, [r5,r4]
    ldrb r2, [r6,#1]
    strb r2, [r5,#0xe]
    ldrb r2, [r6,#2]
    strb r2, [r5,#4]
    ldrb r2, [r6,#3]
    strb r2, [r5,#5]
    ldrb r2, [r6,#4]
    strh r2, [r5,#0x20]
    add r0, r6, #5
    bl sub_809F656
    str r0, [r5,#0x7c]
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r2, #0x8c
    mov r1, #0x80
    mov r0, #0
loc_809F208:
    str r0, [r5,r1]
    add r1, #4
    cmp r1, r2
    ble loc_809F208
    bl npc_809F51E
    add r6, #9
    pop {pc}
.endfunc // sub_809F1D8

.func
.thumb_func
sub_809F218:
    push {lr}
    mov r4, #0x8c
    mov r1, #8
    add r0, r6, r1
    str r0, [r5,r4]
    ldrb r2, [r6,#1]
    mov r4, #0x81
    strb r2, [r5,r4]
    ldrb r2, [r6,#2]
    mov r4, #0x82
    strb r2, [r5,r4]
    ldrb r2, [r6,#3]
    mov r4, #0x83
    strb r2, [r5,r4]
    add r0, r6, #4
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
.endfunc // sub_809F218

.func
.thumb_func
sub_809F23E:
    push {lr}
    ldrb r0, [r6,#1]
    mov r4, #0x81
    ldrb r2, [r5,r4]
    add r2, r2, r0
    mov r0, #7
    and r2, r0
    strb r2, [r5,#0xe]
    mov r4, #0x82
    ldrb r2, [r5,r4]
    strb r2, [r5,#4]
    mov r4, #0x83
    ldrb r2, [r5,r4]
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl npc_809F51E
    add r6, #2
    pop {pc}
.endfunc // sub_809F23E

loc_809F26A:
    mov r4, #0x8c
    ldr r6, [r5,r4]
    mov pc, lr
.func
.thumb_func
sub_809F270:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#6]
    ldrb r1, [r6,#1]
    cmp r0, r1
    blt loc_809F28E
    ldrb r2, [r6,#2]
    cmp r0, r2
    bgt loc_809F28E
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    b locret_809F290
loc_809F28E:
    add r6, #7
locret_809F290:
    pop {pc}
.endfunc // sub_809F270

.func
.thumb_func
sub_809F292:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    strb r1, [r4,r0]
    add r6, #3
    pop {pc}
.endfunc // sub_809F292

.func
.thumb_func
sub_809F2A2:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r0, [r4,r0]
    cmp r0, r1
    bne loc_809F2BC
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809F2BC:
    add r6, #7
    pop {pc}
.endfunc // sub_809F2A2

.func
.thumb_func
sub_809F2C0:
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r0, [r4,r0]
    cmp r0, r1
    beq loc_809F2DA
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809F2DA:
    add r6, #7
    pop {pc}
.endfunc // sub_809F2C0

.func
.thumb_func
sub_809F2DE:
    push {r7,lr}
    mov r0, #0x14
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#1]
    mov r7, #0x80
    str r0, [r5,r7]
    ldrb r0, [r6,#2]
    mov r7, #0x84
    str r0, [r5,r7]
    bl npc_809F51E
    add r6, #3
    pop {r7,pc}
.endfunc // sub_809F2DE

.func
.thumb_func
sub_809F2FC:
    push {lr}
    mov r0, #0x20 
    lsl r0, r0, #4
    ldr r1, [r5,#0x60]
    bic r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    pop {pc}
.endfunc // sub_809F2FC

.func
.thumb_func
sub_809F30C:
    push {lr}
    mov r0, #0x20 
    lsl r0, r0, #4
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    pop {pc}
.endfunc // sub_809F30C

.func
.thumb_func
sub_809F31C:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    ldr r0, off_809F6AC // =0x400 
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r0, r6, #2
    bl sub_809F656
    mov r1, #0x94
    str r0, [r5,r1]
    add r6, #6
    pop {pc}
.endfunc // sub_809F31C

.func
.thumb_func
sub_809F338:
    push {r7,lr}
    mov r0, #0x18
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    add r0, r6, #1
    bl sub_809F64C
    mov r7, #0x80
    str r0, [r5,r7]
    bl npc_809F51E
    add r6, #3
    pop {r7,pc}
.endfunc // sub_809F338

.func
.thumb_func
sub_809F354:
    push {lr}
    mov r7, r10
    ldr r4, [r7,#0x1c]
    ldr r7, off_809F4B4 // =aPfffff 
    bl sub_8002C68
    ldrb r0, [r6,#1]
    tst r0, r0
    bne loc_809F36A
    bl sub_8002C52
loc_809F36A:
    add r6, #2
    pop {pc}
.endfunc // sub_809F354

.func
.thumb_func
sub_809F36E:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    bl sound_bgmusic_play // (int a1) -> void
    add r6, #3
    pop {pc}
.endfunc // sub_809F36E

.func
.thumb_func
sub_809F37E:
    push {lr}
    bl sub_8003006
    add r6, #1
    pop {pc}
.endfunc // sub_809F37E

.func
.thumb_func
sub_809F388:
    push {lr}
    bl sub_8002E52
    add r6, #1
    pop {pc}
.endfunc // sub_809F388

.func
.thumb_func
sub_809F392:
    push {lr}
    add r0, r6, #2
    bl sub_809F64C
    add r1, r0, #0
    ldrb r0, [r6,#1]
    bl sub_80302A8
    add r6, #4
    pop {pc}
.endfunc // sub_809F392

.func
.thumb_func
sub_809F3A6:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r1, [r5,#0x14]
    cmp r1, r0
    bne loc_809F3B4
    add r6, #6
    pop {pc}
loc_809F3B4:
    add r6, #2
    add r0, r6, #0
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
.endfunc // sub_809F3A6

.func
.thumb_func
sub_809F3C0:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    ldr r0, off_809F6AC // =0x400 
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    ldr r3, off_809F3D8 // =unk_202FA04 
    mov r1, #0x94
    str r3, [r5,r1]
    add r6, #2
    pop {pc}
off_809F3D8:    .word unk_202FA04
    .word off_809F3E0
off_809F3E0:    .word off_8044470
    .word off_80444C4
.endfunc // sub_809F3C0

.func
.thumb_func
sub_809F3E8:
    push {lr}
    add r0, r6, #5
    bl sub_809F656
    add r6, r0, #0
    b locret_809F3F4
locret_809F3F4:
    pop {pc}
.endfunc // sub_809F3E8

.func
.thumb_func
sub_809F3F6:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    ldrb r0, [r6,#3]
    strb r0, [r5,#6]
    ldrb r0, [r6,#4]
    strb r0, [r5,#7]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #8
    strh r0, [r5,#0xa]
    bl npc_809F51E
    add r6, #5
    pop {pc}
.endfunc // sub_809F3F6

.func
.thumb_func
sub_809F418:
    push {lr}
    ldrb r2, [r6,#1]
    strb r2, [r5,#4]
    ldrb r2, [r6,#2]
    strb r2, [r5,#5]
    ldrb r2, [r6,#3]
    strb r2, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #8
    strh r0, [r5,#0xa]
    bl npc_809F51E
    add r6, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_809F418

.func
.thumb_func
sub_809F438:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    ldrb r0, [r6,#3]
    strb r0, [r5,#6]
    ldrb r0, [r6,#4]
    strb r0, [r5,#7]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    bl npc_809F51E
    add r6, #5
    pop {pc}
.endfunc // sub_809F438

.func
.thumb_func
sub_809F45A:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    bne loc_809F498
    add r0, r6, #1
    bl sub_809F64C
    bl sub_8143B88
    tst r1, r1
    beq loc_809F498
    strb r2, [r5,#0x1c]
    ldr r3, off_809F4B4 // =aPfffff 
    mov r2, #0x94
    str r3, [r5,r2]
    add r0, r1, #0
    bl sub_8143DBC
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    str r2, [r5,#0x2c]
    add r6, #3
    ldr r0, dword_809F6B0 // =0x1400 
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    pop {pc}
loc_809F498:
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sprite_load
    bl sprite_loadAnimationData
.endfunc // sub_809F45A

    bl sub_8004602
    bl npc_809F51E
    pop {pc}
off_809F4B4:    .word aPfffff
.func
.thumb_func
sub_809F4B8:
    push {lr}
    bl sub_8002DEA
    mov r0, #7
    and r0, r2
    add r0, #0x21 
    strb r0, [r5,#0x14]
    mvn r0, r0
    strb r0, [r5,#0x15]
    mov r0, #0x11
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    push {r5}
    mov r0, #0
    ldr r1, [r5,#0x24]
    ldr r2, [r5,#0x28]
    ldr r3, [r5,#0x2c]
    mov r4, #1
    bl sub_80047E0
    pop {r5}
    mov r0, #0x76 
    bl sound_play // () -> void
    add r6, #1
    pop {pc}
.endfunc // sub_809F4B8

.func
.thumb_func
npc_809F4EE:
    push {lr}
    bl sub_80062C8
    cmp r1, #0
    beq loc_809F502
    add r0, r6, #1
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809F502:
    add r6, #5
    pop {pc}
.endfunc // npc_809F4EE

.func
.thumb_func
sub_809F506:
    push {lr}
    str r0, [r5,#0x4c]
    mov r0, #0
    strb r0, [r5,#0x19]
    strb r0, [r5,#0x18]
    strb r0, [r5,#0x1f]
    str r0, [r5,#0x5c]
    pop {pc}
.endfunc // sub_809F506

.func
.thumb_func
sub_809F516:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0x19]
    pop {pc}
.endfunc // sub_809F516

.func
.thumb_func
npc_809F51E:
    push {lr}
    mov r0, #1
    strb r0, [r5,#0x19]
    pop {pc}
.endfunc // npc_809F51E

/*For debugging purposes, connect comment at any range!*/
