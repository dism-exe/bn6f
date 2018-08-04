.include "asm29.inc"

.func
.thumb_func
ho_80A4984:
    push {lr}
    ldr r7, [pc, #0x80a49ac-0x80a4986-2] // =dword_80A3A44
    ldrb r1, [r5,#4]
    mov r2, #0x10
    mul r1, r2
    add r7, r7, r1
    ldr r0, [pc, #0x80a499c-0x80a4990-4] // =jt_80A49A0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A499C:    .word jt_80A49A0
jt_80A49A0:    .word sub_80A49B0+1
    .word sub_80A4A08+1
    .word sub_80A4A90+1
off_80A49AC:    .word dword_80A3A44
.endfunc // ho_80A4984

.func
.thumb_func
sub_80A49B0:
    push {lr}
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_80026E4
    ldrb r0, [r7,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A49B0

    bl sub_8002F90
    ldrb r0, [r7,#3]
    cmp r0, #0xff
    bne loc_80A49E8
    ldr r6, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    str r6, [r5,#0x14]
loc_80A49E8:
    bl sub_8002E14
    ldr r0, [r7,#4]
    bl sub_8002FA6
    ldrb r0, [r7,#8]
    bl sprite_setPallete
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#6]
    strb r0, [r5,#7]
    bl sub_80A4A08
    pop {pc}
.func
.thumb_func
sub_80A4A08:
    push {lr}
    mov r0, #0
    strb r0, [r5,#7]
    mov r6, #1
    strb r6, [r5]
    ldrh r0, [r7,#0xc]
    tst r0, r0
    beq loc_80A4A1E
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
loc_80A4A1E:
    ldrh r0, [r7,#0xe]
    tst r0, r0
    beq loc_80A4A2A
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
loc_80A4A2A:
    ldrh r3, [r7,#0xa]
    tst r3, r3
    beq loc_80A4A38
    add r0, r3, #0
    bl zf_802F168
    beq loc_80A4A74
loc_80A4A38:
    mov r0, #1
    strb r0, [r5,#7]
    mov r6, #3
    strb r6, [r5]
    ldrh r0, [r7,#0xc]
    tst r0, r0
    beq loc_80A4A4C
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
loc_80A4A4C:
    ldrh r0, [r7,#0xe]
    tst r0, r0
    beq loc_80A4A58
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
loc_80A4A58:
    ldrb r4, [r7,#9]
    mov r0, #0x17
    mov r1, #0x1c
    bl sub_802F164
    bne loc_80A4A66
    ldrb r4, [r7,#8]
loc_80A4A66:
    cmp r4, #0xff
    bne loc_80A4A6E
    bl sub_8002DB0
loc_80A4A6E:
    add r0, r4, #0
    bl sprite_setPallete
loc_80A4A74:
    ldrb r0, [r5,#6]
    ldrb r1, [r5,#7]
    tst r0, r1
    beq loc_80A4A8A
    ldrb r0, [r5,#7]
    strb r0, [r5,#6]
    ldrb r0, [r7,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
loc_80A4A8A:
    bl anim_80026C4
.endfunc // sub_80A4A08

    pop {pc}
.func
.thumb_func
sub_80A4A90:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A4A90

loc_80A4A98:
    push {lr}
    ldr r0, [pc, #0x80a4aa8-0x80a4a9a-2] // =off_80A4AAC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A4AA8:    .word off_80A4AAC
off_80A4AAC:    .word sub_80A4AB8+1
    .word sub_80A4ACC+1
    .word sub_80A4BD4+1
.func
.thumb_func
sub_80A4AB8:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x24]
    ldrb r0, [r5,#6]
    str r0, [r5,#0x28]
    bl sub_80A4ACC
    pop {pc}
.endfunc // sub_80A4AB8

.func
.thumb_func
sub_80A4ACC:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [r5,#0x24]
    sub r0, #1
    ble loc_80A4ADC
    str r0, [r5,#0x24]
    b loc_80A4B7A
loc_80A4ADC:
    ldrb r0, [r5,#5]
    str r0, [r5,#0x24]
    ldrb r7, [r5,#7]
    mov r1, #0xc0
    and r1, r7
    mov r0, #0x3f 
    and r7, r0
    ldr r0, [pc, #0x80a4b84-0x80a4aea-2] // =off_80A4B88
    lsr r1, r1, #3
    add r0, r0, r1
    ldr r1, [r0,#4]
    ldr r0, [r0]
    mul r7, r1
    add r7, r7, r0
    bl sub_8001532
    mov r1, #8
    svc 6
    mov r0, #6
    mul r0, r1
    ldr r4, [pc, #0x80a4ba0-0x80a4b04-4] // =dword_80A4BA4
    add r4, r4, r0
    bl sub_8001532
    add r6, r0, #0
    mov r8, r5
    mov r0, #0
    ldrsh r1, [r4,r0]
    mov r0, #2
    ldrsh r2, [r4,r0]
    mov r0, #4
    ldrsh r3, [r4,r0]
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r1, r1, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r2, r2, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r3, r3, r4
    lsr r6, r6, #8
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    ldr r0, [r7]
    ldr r6, [r7,#4]
    ldr r7, [r7,#8]
    add r1, r1, r0
    add r2, r2, r6
    add r3, r3, r7
    ldr r0, [r5,#0xc]
    ldr r6, [r5,#0x10]
    ldr r7, [r5,#0x14]
    add r1, r1, r0
    add r2, r2, r6
    add r3, r3, r7
    ldr r4, [pc, #0x80a4b80-0x80a4b58-4] // =0x140000
    mov r0, #2
    bl sub_80047E0
    mov r5, r8
    ldr r0, [r5,#0x28]
    sub r0, #1
    ble loc_80A4B6C
    str r0, [r5,#0x28]
    b loc_80A4B7A
loc_80A4B6C:
    ldrb r0, [r5,#6]
    str r0, [r5,#0x28]
    tst r0, r0
    beq loc_80A4B7A
    mov r0, #0x70 
    bl sound_play
loc_80A4B7A:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
dword_80A4B80:    .word 0x140000
off_80A4B84:    .word off_80A4B88
off_80A4B88:    .word sReqBBS_GUI+0x54 // sReqBBS_GUI.unk_54
    .word 0xD8
    .word dword_2009F5C
    .word 0xC8
    .word dword_2011EEC
    .word 0x78
off_80A4BA0:    .word dword_80A4BA4
dword_80A4BA4:    .word 0xFFF4FFF4, 0xFFF00008, 0x80000, 0xCFFF4, 0x8, 0x8FFF0
    .word 0x100000, 0xC0008, 0x8FFF4, 0x10, 0xC0008, 0x8000C
.endfunc // sub_80A4ACC

.func
.thumb_func
sub_80A4BD4:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A4BD4

loc_80A4BDC:
    push {lr}
    ldr r0, [pc, #0x80a4bec-0x80a4bde-2] // =off_80A4BF0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A4BEC:    .word off_80A4BF0
off_80A4BF0:    .word sub_80A4BFC+1
    .word sub_80A4C46+1
    .word sub_80A4C5C+1
.func
.thumb_func
sub_80A4BFC:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    ldrb r1, [r5,#6]
    ldrb r2, [r5,#7]
    bl sub_80026E4
    ldr r6, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    str r6, [r5,#0x14]
    bl sub_8002E14
    ldrb r0, [r5,#4]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A4BFC

    bl sub_8002F90
    ldrb r0, [r5,#5]
    bl sprite_setPallete
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A4C46
    pop {pc}
.func
.thumb_func
sub_80A4C46:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A4C56
    mov r0, #8
    strb r0, [r5,#8]
loc_80A4C56:
    bl anim_80026C4
.endfunc // sub_80A4C46

    pop {pc}
.func
.thumb_func
sub_80A4C5C:
    push {lr}
    bl sub_80048B2
    pop {pc}
dword_80A4C64:    .word 0x164004E7, 0xE1C16C0, 0x100, 0x17DFF03, 0x164004E8
    .word 0xE1C16C0, 0x100, 0x17DFF03, 0x1640046D, 0x31C16C0
    .word 0x380000, 0x74FF02, 0x16400483, 0x31C16C0, 0x380101
    .word 0x74FF02, 0x164005EE, 0x31C16C0, 0x380000, 0x74FF02
    .word 0x164005EF, 0x31C16C0, 0x380101, 0x74FF02, 0x164005F0
    .word 0x31C16C0, 0x380101, 0x74FF02, 0x16400031, 0x31C16C2
    .word 0x380000, 0x74FF02, 0x16410032, 0x31C16C1, 0x380202
    .word 0x74FF02, 0x16410073, 0x11C16C4, 0x100, 0x74FF02
    .word 0x16420074, 0x31C16C5, 0x101, 0x74FF02, 0x16410075
    .word 0x31C16C3, 0x0
    .word 0x74FF03, 0x16410078, 0x31C16C5, 0x380101, 0x74FF02
    .word 0x164009F6, 0x31C16C0, 0x380000, 0x74FF02, 0x164109F7
    .word 0x31C16C1, 0x380000, 0x74FF02, 0x164209F8, 0x31C16C2
    .word 0x380000, 0x74FF02, 0x164009F9, 0x31C16C0, 0x380000
    .word 0x74FF02, 0x164109FA, 0x31C16C1, 0x380000, 0x74FF02
    .word 0x164209FB, 0x31C16C2, 0x380000, 0x74FF02, 0x164009FC
    .word 0x31C16C0, 0x380000, 0x74FF02, 0x164109FD, 0x31C16C1
    .word 0x380101, 0x74FF02, 0x164209FE, 0x31C16C2, 0x380101
    .word 0x74FF02, 0x164307F0, 0xE1C16C6, 0x1000100, 0x74FF03
    .word 0x164107F1, 0xE1C16C3, 0x1000100, 0x74FF03, 0x164307F2
    .word 0xE1C16C7, 0x1000100, 0x74FF03, 0x164207F3, 0xE1C16C5
    .word 0x1000100, 0x74FF02, 0x164307F4, 0xE1C16C3, 0x1000100
    .word 0x74FF02, 0x164007F5, 0xE1C16C4, 0x1000100, 0x74FF02
    .word 0x1640087D, 0x31C16C1, 0x380000, 0x74FF02, 0x16400BFD
    .word 0x201C16C0, 0x201, 0x74FF03, 0x16400BFE, 0x201C16C0
    .word 0x201, 0x74FF03, 0x16400BFF, 0x201C16C0, 0x201
    .word 0x74FF03, 0x16410AB4, 0x4B1C16C6, 0x100, 0xFFFFFF02
    .word 0x16420AB5, 0x901C16C7, 0x100, 0xFFFFFF02, 0x16420AB5
    .word 0x911C16C7, 0x100, 0xFFFFFF02, 0x16430AB6, 0x581C16C8
    .word 0x100, 0xFFFFFF02, 0x16430AB6, 0x581C16C8, 0x0
    .word 0xFFFFFF02, 0x16440AB7, 0x411C16C9, 0x100, 0xFFFFFF02
    .word 0x16400CD7, 0x31C16C0, 0x380000, 0x74FF02, 0x16410CD8
    .word 0x31C16C1, 0x380101, 0x74FF02, 0x16400CD9, 0x31C16C0
    .word 0x380000, 0x74FF03, 0x16410CDA, 0x31C16C1, 0x380101
    .word 0x74FF02, 0x164007F6, 0xE1C16C1, 0x1000100, 0x74FF02
    .word 0x164007F7, 0xE1C16C1, 0x1000100, 0x74FF02, 0x16400CE6
    .word 0x31C16C2, 0x380303, 0x74FF02, 0x16400FF9, 0x31C16C0
    .word 0x380101, 0x74FF02, 0x16400FFA, 0x31C16C0, 0x380101
    .word 0x74FF02, 0x16410FFB, 0x31C16C1, 0x380101, 0x74FF02
    .word 0x16420FFC, 0x31C16C2, 0x380000, 0x74FF02, 0x16430FFD
    .word 0x31C16C3, 0x380000, 0x74FF02, 0x16400FFE, 0x201C16C0
    .word 0x201, 0x74FF03, 0x16400FFF, 0xE1C16C0, 0x1000100
    .word 0x17DFF03, 0x16400136, 0x31C16C2, 0x380000, 0x74FF02
    .word 0x16400137, 0x8C1C16C4, 0x0
    .word 0x74FF02, 0x16440164, 0x250C16C6, 0x201, 0x74FF03
    .word 0x16420173, 0x4B1C16C2, 0x100, 0x74FF02, 0x16410169
    .word 0x1F1C16C2, 0x0
    .word 0x74FF02, 0x16400076, 0x31C16C5, 0x0
    .word 0x74FF02, 0x16420174, 0x4B1C16C3, 0x100, 0x74FF02
    .word 0x16410178, 0x201C16C2, 0x0
    .word 0x74FF02, 0x1641016E, 0xE1C16C2, 0x100, 0x74FF02, 0x16420079
    .word 0x31C16C3, 0x380000, 0x74FF02, 0x16410179, 0x201C16C4, 0x0
    .word 0x74FF03, 0x1642016A, 0x1F1C16C5, 0x0
    .word 0x74FF02, 0x1642016F, 0xE1C16C1, 0x100, 0x74FF02, 0x16430165
    .word 0x250C16C2, 0x201, 0x74FF02, 0x16410077, 0x31C16C7, 0x303
    .word 0x74FF02, 0x16410166, 0x250C16C3, 0x201, 0x74FF02, 0x1642016B
    .word 0x1F1C16C4, 0x0
    .word 0x74FF02, 0x1643017A, 0x201C16C5, 0x0
    .word 0x74FF03, 0x16440175, 0x4B1C16C6, 0x100, 0x74FF02
    .word 0x16450170, 0xE1C16C7, 0x100, 0x74FF02, 0x16400176
    .word 0x4B1C16C2, 0x100, 0x74FF02, 0x16410167, 0x250C16C3
    .word 0x201, 0x74FF02, 0x16420171, 0xE1C16C4, 0x100
    .word 0x74FF02, 0x1643017B, 0x201C16C5, 0x0
    .word 0x74FF03, 0x1644016C, 0x1F1C16C6, 0x0
    .word 0x74FF02, 0x1640017C, 0x201C16C1, 0x0
    .word 0x74FF02, 0x1641016D, 0x1F1C16C2, 0x0
    .word 0x74FF02, 0x16420168, 0x250C16C3, 0x201, 0x74FF02
    .word 0x16430172, 0xE1C16C4, 0x100, 0x74FF02, 0x16440177
    .word 0x4B1C16C5, 0x100, 0x74FF02, 0x16400086, 0x11C16C4
    .word 0x100, 0x74FF02, 0x16450082, 0x31C16CD, 0x380101
    .word 0x74FF02, 0x16450083, 0x31C16CD, 0x380000, 0x74FF02
    .word 0x16460085, 0x31C16CE, 0x380000, 0x74FF02
.endfunc // sub_80A4C5C

loc_80A51C4:
    push {lr}
    ldr r7, [pc, #0x80a51f4-0x80a51c6-2] // =dword_80A4C64
    mov r0, #0x10
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80a51dc-0x80a51d0-4] // =off_80A51E0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A51DC:    .word off_80A51E0
off_80A51E0:    .word sub_80A51F8+1
    .word sub_80A5268+1
    .word sub_80A52E4+1
    .word sub_80A5304+1
    .word sub_80A5350+1
off_80A51F4:    .word dword_80A4C64
.func
.thumb_func
sub_80A51F8:
    push {lr}
    ldrh r0, [r7]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    beq loc_80A524E
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    ldrb r1, [r7,#6]
    ldrb r2, [r7,#7]
    bl sub_80026E4
    ldrb r0, [r7,#0xc]
    bl sub_8002E14
    ldrb r0, [r7,#8]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    ldrb r0, [r7,#0xa]
    lsl r0, r0, #0x18
    bl sub_8002FA6
    ldrb r0, [r7,#0xb]
    bl sprite_setPallete
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    ldrh r0, [r7,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A5268
    pop {pc}
loc_80A524E:
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    ldrh r0, [r7,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #0x10
    strb r0, [r5,#8]
    bl sub_80A5350
    pop {pc}
.endfunc // sub_80A51F8

.func
.thumb_func
sub_80A5268:
    push {lr}
    ldrh r0, [r7]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    bne loc_80A52DA
    bl sub_80062C8
    lsr r0, r0, #2
    mov r1, #1
    tst r0, r1
    bne loc_80A52B0
    ldrb r0, [r7,#7]
    cmp r0, #1
    bne loc_80A52A4
    ldrb r1, [r7,#8]
    ldrb r0, [r7,#9]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    ldrh r0, [r7,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #0xc
    strb r0, [r5,#8]
    b loc_80A52DA
loc_80A52A4:
    ldrh r0, [r7,#0xe]
    ldr r1, [pc, #0x80a52e0-0x80a52a6-2] // =0xFFFF
    cmp r0, r1
    beq loc_80A52B0
    bl sound_play
loc_80A52B0:
    ldrh r0, [r7,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    ldrb r1, [r7,#8]
    ldrb r0, [r7,#9]
    cmp r0, r1
    bne loc_80A52CE
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #0x10
    strb r0, [r5,#8]
    b loc_80A52DA
loc_80A52CE:
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    mov r0, #8
    strb r0, [r5,#8]
loc_80A52DA:
    bl anim_80026C4
.endfunc // sub_80A5268

    pop {pc}
dword_80A52E0:    .word 0xFFFF
.func
.thumb_func
sub_80A52E4:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A52FC
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #0x10
    strb r0, [r5,#8]
loc_80A52FC:
    bl anim_80026C4
.endfunc // sub_80A52E4

    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A5304:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A531E
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #0x10
    strb r0, [r5,#8]
    b loc_80A5346
loc_80A531E:
    ldr r1, [r5,#0x24]
    add r1, #1
    str r1, [r5,#0x24]
    cmp r1, #0x32 
    bne loc_80A5330
    ldr r0, [pc, #0x80a534c-0x80a5328-4] // =0x14C
    bl sound_play
    b loc_80A5346
loc_80A5330:
    cmp r1, #0x4a 
    bne loc_80A533C
    mov r0, #0xe6
    bl sound_play
    b loc_80A5346
loc_80A533C:
    cmp r1, #0x5d 
    bne loc_80A5346
    mov r0, #0x99
    bl sound_play
loc_80A5346:
    bl anim_80026C4
.endfunc // sub_80A5304

    pop {pc}
off_80A534C:    .word 0x14C
.func
.thumb_func
sub_80A5350:
    push {lr}
    bl sub_80048B2
    pop {pc}
dword_80A5358:    .word 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C
    .word 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C
    .word 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xC1C, 0xFF10FF20, 0xFF90FF20
    .word 0x10FF20, 0x10FFA0, 0x90FFA0, 0x110FFA0, 0xFF100020, 0xFF900020, 0xFF9000A0, 0x9000A0
    .word 0xFF900120, 0xFF30FEA0, 0x30FEA0, 0xB0FF20, 0xFEB0FFA0, 0xFF30FFA0, 0x30FFA0, 0x130FFA0
    .word 0x300020, 0xFFD000A0, 0xD000A0, 0xFEB00120, 0x400170, 0xFF4000F0, 0x4000D0, 0xFFE0FFF0
    .word 0x1000010, 0x100FF10, 0xFF40FEF0, 0xFE90
.endfunc // sub_80A5350

loc_80A5428:
    push {lr}
    ldr r0, [pc, #0x80a5438-0x80a542a-2] // =off_80A543C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A5438:    .word off_80A543C
off_80A543C:    .word sub_80A5448+1
    .word sub_80A5494+1
    .word sub_80A549C+1
.func
.thumb_func
sub_80A5448:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    bl sub_80A54A4
    add r7, r0, #0
    add r4, r1, #0
    ldrh r0, [r4]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x14]
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_80026E4
    ldrb r0, [r7,#2]
    strb r0, [r5,#5]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A5448

    bl sub_8002F90
    mov r0, #2
    bl sub_8002E14
    ldrb r0, [r7,#3]
    strb r0, [r5,#5]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A5494
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A5494:
    push {lr}
    bl anim_80026C4
.endfunc // sub_80A5494

    pop {pc}
.func
.thumb_func
sub_80A549C:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A549C

.func
.thumb_func
sub_80A54A4:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r0, [r4,#4]
    cmp r0, #0x85
    bne loc_80A54B4
    mov r2, #2
    b loc_80A54B6
loc_80A54B4:
    ldrb r2, [r4,#5]
loc_80A54B6:
    lsl r2, r2, #2
    ldrb r3, [r5,#4]
    mov r0, #4
    mul r3, r0
    ldr r4, [pc, #0x80a54d0-0x80a54be-2] // =off_80A54D8
    ldr r0, [r4,r2]
    add r0, r0, r3
    ldr r4, [pc, #0x80a54d4-0x80a54c4-4] // =off_80A54E4
    ldr r1, [r4,r2]
    add r1, r1, r3
    b locret_80A54CC
locret_80A54CC:
    pop {r4,pc}
    .byte 0, 0
off_80A54D0:    .word off_80A54D8
off_80A54D4:    .word off_80A54E4
off_80A54D8:    .word dword_80A5358
    .word dword_80A5358+0x2C
    .word dword_80A5358+0x2C
off_80A54E4:    .word dword_80A5358+0x58
    .word dword_80A5358+0x84
    .word dword_80A5358+0xB0
.endfunc // sub_80A54A4

loc_80A54F0:
    push {lr}
    ldr r6, [pc, #0x80a5510-0x80a54f2-2] // =unk_2013960
    ldr r0, [pc, #0x80a5500-0x80a54f4-4] // =off_80A5504
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A5500:    .word off_80A5504
off_80A5504:    .word sub_80A5514+1
    .word sub_80A5588+1
    .word sub_80A55CC+1
off_80A5510:    .word unk_2013960
.func
.thumb_func
sub_80A5514:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x85
    bne loc_80A5528
    mov r2, #0x4e 
    b loc_80A552A
loc_80A5528:
    mov r2, #0xb
loc_80A552A:
    mov r0, #0x80
    mov r1, #0x1c
    bl sub_80026E4
    ldrb r0, [r6,#5]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A5514

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    mov r0, #0
    strb r0, [r5,#5]
    strb r0, [r5,#6]
    mov r0, #0x12
    str r0, [r5,#0x2c]
    ldrb r0, [r6,#5]
    strb r0, [r5,#7]
    ldrb r1, [r5,#4]
    mov r2, #1
    and r1, r2
    bne loc_80A557A
    ldr r0, [pc, #0x80a568c-0x80a556a-2] // =0x17F
    bl sound_play
    ldrb r0, [r5,#4]
    cmp r0, #0
    bne loc_80A557A
    mov r0, #0xa
    strb r0, [r6,#0xf]
loc_80A557A:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A5588
    pop {r4-r7,pc}
    .word 0x17F
.func
.thumb_func
sub_80A5588:
    push {lr}
    bl sub_8036F40
    bne locret_80A55CA
    bl sub_8036F58
    bne locret_80A55CA
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_80A55CA
    bl sub_809E462
    bne locret_80A55CA
    bl sub_80A55D4
    mov r0, #4
    mov r1, #0xea
    bl sub_802F164
    bne loc_80A55C6
    mov r0, #4
    mov r1, #0xeb
    bl sub_802F164
    bne loc_80A55C6
    ldrb r0, [r6,#8]
    cmp r0, #2
    beq loc_80A55C6
    bl sub_80A5744
loc_80A55C6:
    bl anim_80026C4
locret_80A55CA:
    pop {pc}
.endfunc // sub_80A5588

.func
.thumb_func
sub_80A55CC:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A55CC

.func
.thumb_func
sub_80A55D4:
    push {r4-r7,lr}
    ldr r0, [r5,#0x2c]
    sub r0, #1
    str r0, [r5,#0x2c]
    bne loc_80A55E6
    mov r0, #0x12
    str r0, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5,#6]
loc_80A55E6:
    ldrb r0, [r5,#6]
    cmp r0, #1
    beq locret_80A5674
    bl sub_80A5764
    add r4, r0, #0
    ldrb r3, [r5,#7]
    cmp r3, #0
    bne loc_80A5600
    ldr r0, [r5,#0xc]
    add r0, r0, r4
    str r0, [r5,#0xc]
    b loc_80A561E
loc_80A5600:
    cmp r3, #1
    bne loc_80A560C
    ldr r0, [r5,#0x10]
    add r0, r0, r4
    str r0, [r5,#0x10]
    b loc_80A561E
loc_80A560C:
    cmp r3, #2
    bne loc_80A5618
    ldr r0, [r5,#0xc]
    sub r0, r0, r4
    str r0, [r5,#0xc]
    b loc_80A561E
loc_80A5618:
    ldr r0, [r5,#0x10]
    sub r0, r0, r4
    str r0, [r5,#0x10]
loc_80A561E:
    bl sub_80A5690
    cmp r0, #1
    beq loc_80A5632
    add r0, r5, #0
    add r0, #0xc
    bl sub_8003694
    cmp r2, #0
    bne loc_80A5670
loc_80A5632:
    mov r0, #4
    mov r1, #0xeb
    bl sub_802F164
    bne loc_80A5642
    ldrb r0, [r6,#8]
    cmp r0, #2
    bne loc_80A5648
loc_80A5642:
    mov r0, #8
    strb r0, [r5,#8]
    b locret_80A5674
loc_80A5648:
    ldrb r0, [r5,#5]
    cmp r0, #0
    beq locret_80A5674
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    mov r0, #0
    strb r0, [r5,#5]
    mov r0, #1
    strb r0, [r5,#6]
    ldrb r0, [r6,#0xf]
    cmp r0, #0
    bne locret_80A5674
    ldr r0, [pc, #0x80a568c-0x80a5664-4] // =0x17F
    bl sound_play
    mov r0, #0xa
    strb r0, [r6,#0xf]
    b locret_80A5674
loc_80A5670:
    mov r0, #1
    strb r0, [r5,#5]
locret_80A5674:
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word dword_80A567C
dword_80A567C:    .word 0xC0000, 0xA2000, 0xB0000, 0xA8000
dword_80A568C:    .word 0x17F
.endfunc // sub_80A55D4

.func
.thumb_func
sub_80A5690:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    cmp r1, #0x85
    bne loc_80A56A0
    mov r0, #2
    b loc_80A56A2
loc_80A56A0:
    ldrb r0, [r0,#5]
loc_80A56A2:
    add r2, r0, #0
    lsl r0, r0, #2
    ldr r4, [pc, #0x80a570c-0x80a56a6-2] // =off_80A5714
    ldr r4, [r4,r0]
    ldr r1, [pc, #0x80a5710-0x80a56aa-2] // =unk_80A5720
    ldrb r1, [r1,r2]
    strb r1, [r5,#6]
    mov r7, #0
loc_80A56B2:
    add r0, r7, #0
    mov r1, #4
    mul r1, r0
    add r1, r1, r4
    mov r2, #0
    ldrsh r0, [r1,r2]
    sub r0, #8
    lsl r0, r0, #0x10
    mov r2, #2
    ldrsh r1, [r1,r2]
    add r1, #8
    lsl r1, r1, #0x10
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    cmp r0, r2
    blt loc_80A56D6
    sub r0, r0, r2
    b loc_80A56D8
loc_80A56D6:
    sub r0, r2, r0
loc_80A56D8:
    cmp r1, r3
    blt loc_80A56E0
    sub r1, r1, r3
    b loc_80A56E2
loc_80A56E0:
    sub r1, r3, r1
loc_80A56E2:
    push {r0,r1}
    bl sub_80A5724
    add r2, r0, #0
    add r3, r1, #0
    pop {r0,r1}
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    cmp r0, r2
    bgt loc_80A56FE
    cmp r1, r3
    bgt loc_80A56FE
    mov r0, #1
    b locret_80A5708
loc_80A56FE:
    add r7, #1
    ldrb r0, [r5,#6]
    cmp r7, r0
    blt loc_80A56B2
    mov r0, #0
locret_80A5708:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A570C:    .word off_80A5714
off_80A5710:    .word unk_80A5720
off_80A5714:    .word dword_80A5358+0x58
    .word dword_80A5358+0x84
    .word dword_80A5358+0xB0
unk_80A5720:    .byte 0xB
    .byte 0xB
    .byte 8
    .byte 0
.endfunc // sub_80A5690

.func
.thumb_func
sub_80A5724:
    push {r4,lr}
    ldrb r3, [r6,#5]
    ldr r2, [pc, #0x80a5734-0x80a5728-4] // =unk_80A573C
    ldrb r0, [r2,r3]
    ldr r2, [pc, #0x80a5738-0x80a572c-4] // =unk_80A5740
    ldrb r1, [r2,r3]
    pop {r4,pc}
    .balign 4, 0x00
off_80A5734:    .word unk_80A573C
off_80A5738:    .word unk_80A5740
unk_80A573C:    .byte 0xC
    .byte 0x20
    .byte 0xC
    .byte 0x18
unk_80A5740:    .byte 0x20
    .byte 0xC
    .byte 0x20
    .byte 0xC
.endfunc // sub_80A5724

.func
.thumb_func
sub_80A5744:
    push {r4,lr}
    ldrb r0, [r5,#5]
    cmp r0, #0
    beq locret_80A5760
    bl reqBBS_81409E4
    sub r0, #0xc0
    ldrb r1, [r6,#5]
    cmp r0, r1
    beq locret_80A5760
    mov r0, #4
    mov r1, #0xea
    bl sub_802F110
locret_80A5760:
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A5744

.func
.thumb_func
sub_80A5764:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x85
    bne loc_80A5774
    ldr r7, [pc, #0x80a5788-0x80a5770-4] // =dword_80A579C
    b loc_80A5776
loc_80A5774:
    ldr r7, [pc, #0x80a5784-0x80a5774-4] // =dword_80A578C
loc_80A5776:
    mov r0, #4
    bl reqBBS_81409D0
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A5784:    .word dword_80A578C
off_80A5788:    .word dword_80A579C
dword_80A578C:    .word 0xC0000, 0xA2000, 0xB0000, 0xA8000
dword_80A579C:    .word 0x80000, 0x62000, 0x70000, 0x68000
.endfunc // sub_80A5764

loc_80A57AC:
    push {lr}
    ldr r6, [pc, #0x80a57cc-0x80a57ae-2] // =unk_2011A90
    ldr r0, [pc, #0x80a57bc-0x80a57b0-4] // =off_80A57C0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A57BC:    .word off_80A57C0
off_80A57C0:    .word sub_80A57D0+1
    .word sub_80A5828+1
    .word sub_80A5888+1
off_80A57CC:    .word unk_2011A90
.func
.thumb_func
sub_80A57D0:
    push {r4-r7,lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0x3c 
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A57D0

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete
    bl sub_80A5890
    mov r0, #0
    str r0, [r5,#0x30]
    strb r0, [r5,#6]
    strb r0, [r5,#9]
    mov r0, #1
    ldrb r0, [r5,#7]
    mov r0, #5
    mov r1, #0xf2
    bl sub_802F164
    beq loc_80A581E
    bl sub_80A5A1C
loc_80A581E:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A5828
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A5828:
    push {r4-r7,lr}
    ldrb r0, [r6,#7]
    cmp r0, #0
    beq loc_80A5870
    cmp r0, #3
    beq loc_80A5876
    cmp r0, #1
    bne loc_80A586A
    ldrb r4, [r5,#9]
    cmp r4, #0
    bne loc_80A5858
    mov r1, #0x88
    ldr r0, [r6,r1]
    str r0, [r5,#0xc]
    add r1, #4
    ldr r0, [r6,r1]
    str r0, [r5,#0x10]
    add r1, #4
    ldr r0, [r6,r1]
    str r0, [r5,#0x14]
    mov r0, #3
    strb r0, [r5]
    add r4, #1
    strb r4, [r5,#9]
loc_80A5858:
    bl sub_80A58E0
    cmp r0, #0
    bne loc_80A587E
    mov r0, #0
    strb r0, [r6,#7]
    mov r4, #0
    strb r4, [r5,#9]
    b loc_80A5870
loc_80A586A:
    bl sub_80A58AC
    b loc_80A587E
loc_80A5870:
    bl sub_80A5890
    b loc_80A587E
loc_80A5876:
    mov r0, #1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r6,#7]
loc_80A587E:
    bl sub_80A5A5C
    bl anim_80026C4
.endfunc // sub_80A5828

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A5888:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A5888

.func
.thumb_func
sub_80A5890:
    push {lr}
    mov r3, #0x7c 
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    bl sub_80A5974
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A5890

.func
.thumb_func
sub_80A58AC:
    push {r4-r7,lr}
    mov r3, #0x88
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    str r2, [r5,#0x2c]
    ldr r0, [pc, #0x80a58dc-0x80a58c0-4] // =0x10000
    bl sub_80A58F4
    cmp r0, #1
    beq locret_80A58D8
    mov r0, #0
    strb r0, [r6,#7]
    bl sub_80A5954
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
locret_80A58D8:
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A58DC:    .word 0x10000
.endfunc // sub_80A58AC

.func
.thumb_func
sub_80A58E0:
    push {r4-r7,lr}
    mov r4, #0
    bl sub_80A5954
    bl sub_80A596C
    bl sub_80A59B8
    add r2, r0, #0
    b loc_80A58FA
.endfunc // sub_80A58E0

.func
.thumb_func
sub_80A58F4:
    push {r4-r7,lr}
    mov r4, #0
    add r2, r0, #0
loc_80A58FA:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x24]
    cmp r0, r1
    beq loc_80A591E
    bgt loc_80A5910
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A591E
    add r0, r0, r2
    mov r4, #1
    b loc_80A591A
loc_80A5910:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A591E
    sub r0, r0, r2
    mov r4, #1
loc_80A591A:
    str r0, [r5,#0xc]
    strb r4, [r5,#6]
loc_80A591E:
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x28]
    cmp r0, r1
    beq loc_80A594E
    bgt loc_80A5934
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A594E
    add r0, r0, r2
    mov r4, #1
    b loc_80A593E
loc_80A5934:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A594E
    sub r0, r0, r2
    mov r4, #1
loc_80A593E:
    str r0, [r5,#0x10]
    mov r0, #0xc
    add r0, r0, r5
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    str r0, [r5,#0x20]
loc_80A594E:
    add r0, r4, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A58F4

.func
.thumb_func
sub_80A5954:
    push {lr}
    mov r3, #0x7c 
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    str r2, [r5,#0x2c]
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A5954

.func
.thumb_func
sub_80A596C:
    push {r4,lr}
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    b loc_80A597A
.endfunc // sub_80A596C

.func
.thumb_func
sub_80A5974:
    push {r4,lr}
    bl sub_809E1AE
loc_80A597A:
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    beq locret_80A59AA
    b loc_80A598E
loc_80A598C:
    push {r4,lr}
loc_80A598E:
    add r4, r0, #0
    ldr r0, [pc, #0x80a59ac-0x80a5990-4] // =dword_80A59B0
    ldrb r0, [r0,r4]
    add r4, r0, #0
    ldr r1, [r5,#0x30]
    cmp r0, r1
    beq locret_80A59AA
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    str r4, [r5,#0x30]
locret_80A59AA:
    pop {r4,pc}
off_80A59AC:    .word dword_80A59B0
dword_80A59B0:    .word 0x6000202, 0x4
.endfunc // sub_80A5974

.func
.thumb_func
sub_80A59B8:
    push {r4,lr}
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl calcAngle_800117C
    mov r1, #0
    cmp r0, #0x20 
    beq loc_80A59D4
    cmp r0, #0xa0
    bne loc_80A59D6
loc_80A59D4:
    mov r1, #1
loc_80A59D6:
    lsl r1, r1, #2
    add r4, r1, #0
    mov r3, r10
    ldr r3, [r3,#4]
    ldrh r3, [r3]
    mov r2, #0xf
    and r3, r2
    cmp r3, #2
    beq loc_80A59FA
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    bne loc_80A59FA
    add r1, r4, #0
    ldr r0, [pc, #0x80a5a04-0x80a59f4-4] // =dword_80A5A0C
    ldr r0, [r0,r1]
    b locret_80A5A02
loc_80A59FA:
    add r1, r4, #0
    ldr r0, [pc, #0x80a5a08-0x80a59fc-4] // =dword_80A5A14
    ldr r0, [r0,r1]
    str r0, [r5,#0x34]
locret_80A5A02:
    pop {r4,pc}
off_80A5A04:    .word dword_80A5A0C
off_80A5A08:    .word dword_80A5A14
dword_80A5A0C:    .word 0x10000, 0x8000
dword_80A5A14:    .word 0x20000, 0x10000
.endfunc // sub_80A59B8

.func
.thumb_func
sub_80A5A1C:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a5a68-0x80a5a1e-2] // =byte_2000EC0
    mov r3, #0xc8 // (dword_2000F88 - 0x2000ec0)
    ldr r0, [r7,r3]
    add r3, #4
    ldr r1, [r7,r3]
    add r3, #4
    ldr r2, [r7,r3]
    str r0, [r5,#0xc]
    str r0, [r5,#0x24]
    str r1, [r5,#0x10]
    str r1, [r5,#0x28]
    str r2, [r5,#0x14]
    str r2, [r5,#0x2c]
    bl sub_809E1AE
    mov r4, #0xc8 // (dword_2000F88 - 0x2000ec0)
    ldr r2, [r7,r4]
    add r4, #4
    ldr r3, [r7,r4]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    bl loc_80A598C
    mov r0, #3
    strb r0, [r5]
    ldrb r0, [r7]
    strb r0, [r5,#9]
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A5A1C

.func
.thumb_func
sub_80A5A5C:
    push {lr}
    ldr r1, [pc, #0x80a5a68-0x80a5a5e-2] // =byte_2000EC0
    ldrb r0, [r5,#9]
    strb r0, [r1]
    pop {pc}
    .balign 4, 0x00
off_80A5A68:    .word byte_2000EC0
dword_80A5A6C:    .word 0x86014A, 0x50010, 0x14600C8, 0x1050010, 0xFFE6FF08
    .word 0x2030010, 0x18C00A2, 0x3050010, 0xFF4EFF62, 0x4030010
    .word 0xFE4E00A2, 0x5030010, 0x18C00B2, 0x6050010, 0x1ACFF34
    .word 0x7050010, 0xFF8EFEB2, 0x8030010, 0xFE0EFF92, 0x9030010
    .word 0x168FEB8, 0x32030010, 0xA8FDD8, 0x33030010, 0xFDC80076
    .word 0x34030010
.endfunc // sub_80A5A5C

loc_80A5AD4:
    push {lr}
    ldr r6, [pc, #0x80a5af4-0x80a5ad6-2] // =unk_2011A90
    ldr r0, [pc, #0x80a5ae4-0x80a5ad8-4] // =off_80A5AE8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A5AE4:    .word off_80A5AE8
off_80A5AE8:    .word sub_80A5AF8+1
    .word sub_80A5B70+1
    .word sub_80A5C6C+1
off_80A5AF4:    .word unk_2011A90
.func
.thumb_func
sub_80A5AF8:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    bl sub_80A5D0C
    cmp r0, #0
    beq locret_80A5B6C
    add r4, r0, #0
    ldrh r0, [r4]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    ldrh r0, [r4,#4]
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0x3c 
    bl sub_80026E4
    ldrh r0, [r4,#6]
    strb r0, [r5,#5]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [r5,#0x34]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    ldrb r0, [r4,#7]
    strb r0, [r5,#6]
    mov r0, #1
    strb r0, [r5,#7]
    mov r0, #0
    str r0, [r5,#0x24]
    bl sub_80A5F84
    mov r0, #5
    mov r1, #0xf2
    bl sub_802F164
    beq loc_80A5B64
    bl sub_80A5FD0
loc_80A5B64:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A5B70
locret_80A5B6C:
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_80A5AF8

.func
.thumb_func
sub_80A5B70:
    push {r4-r7,lr}
    ldrb r4, [r6,#5]
    cmp r4, #0
    beq loc_80A5B82
    cmp r4, #3
    beq loc_80A5C5E
    ldr r0, [r5,#0x24]
    cmp r0, #1
    beq loc_80A5C22
loc_80A5B82:
    ldrb r0, [r5,#7]
    cmp r0, #0
    beq loc_80A5C62
    ldrb r7, [r5,#9]
    cmp r7, #0
    bgt loc_80A5BB0
    bl sub_80A5C74
    cmp r0, #0
    beq loc_80A5C62
    ldr r0, [r5,#0x24]
    cmp r0, #0
    beq loc_80A5C62
    mov r0, #0x17
    mov r1, #7
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x28 
    bl sub_802F110
    add r7, #1
    strb r7, [r5,#9]
loc_80A5BB0:
    bl sub_80A5C9C
    cmp r0, #1
    beq loc_80A5BDA
    cmp r0, #2
    beq loc_80A5C62
    bl sub_80A5CF0
    mov r0, #0
    str r0, [r5,#0x24]
    mov r7, #0
    strb r7, [r5,#9]
    mov r0, #0x17
    mov r1, #7
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x28 
    bl sub_802F12C
    b loc_80A5C62
loc_80A5BDA:
    mov r7, #0
    strb r7, [r5,#9]
    ldrb r0, [r6,#6]
    strb r0, [r6,#8]
    ldrb r0, [r5,#6]
    strb r0, [r6,#6]
    add r0, #1
    strb r0, [r6,#0xd]
    mov r1, #0x88
    ldr r0, [r5,#0xc]
    str r0, [r6,r1]
    add r1, #4
    ldr r0, [r5,#0x10]
    str r0, [r6,r1]
    add r1, #4
    ldr r0, [r5,#0x14]
    str r0, [r6,r1]
    mov r0, #5
    mov r1, #0xf2
    bl sub_802F164
    bne loc_80A5C18
    mov r0, #5
    mov r1, #0xf3
    bl sub_802F110
    bl sub_80A5E8C
    bl reqBBS_8140A00
    b loc_80A5C62
loc_80A5C18:
    mov r0, #5
    mov r1, #0xf4
    bl sub_802F110
    b loc_80A5C62
loc_80A5C22:
    mov r0, #0x17
    mov r1, #7
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x28 
    bl sub_802F12C
    cmp r4, #1
    bne loc_80A5C48
    mov r0, #1
    strb r0, [r5]
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #0
    strb r0, [r6,#5]
    mov r0, #0
    str r0, [r5,#0x24]
    b loc_80A5C62
loc_80A5C48:
    cmp r4, #2
    bne loc_80A5C62
    bl sub_80A5D48
    cmp r0, #1
    beq loc_80A5C62
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #0
    strb r0, [r6,#5]
    b loc_80A5C62
loc_80A5C5E:
    bl sub_80A5EC8
loc_80A5C62:
    bl sub_80A6014
    bl anim_80026C4
.endfunc // sub_80A5B70

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A5C6C:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A5C6C

.func
.thumb_func
sub_80A5C74:
    push {r4-r7,lr}
    mov r4, #0
    bl reqBBS_81409F4
    cmp r0, #0xc0
    blt loc_80A5C98
    add r7, r0, #0
    mov r0, #0xc
    add r0, r0, r5
    bl sub_8031A7A
    add r1, r0, #0
    mov r4, #0
    cmp r7, r1
    bne loc_80A5C98
    mov r4, #1
    str r4, [r5,#0x24]
    b loc_80A5C98
loc_80A5C98:
    add r0, r4, #0
    pop {r4-r7,pc}
.endfunc // sub_80A5C74

.func
.thumb_func
sub_80A5C9C:
    push {r4-r7,lr}
    ldrb r4, [r5,#0xa]
    cmp r4, #0
    bgt loc_80A5CBE
    bl sub_80A5CE4
    bl sub_809E0B0
    bl sub_80A5E44
    mov r0, #0
    ldrb r1, [r5,#6]
    bl reqBBS_runDialog_8140A70
    add r4, #1
    strb r4, [r5,#0xa]
    b loc_80A5CDE
loc_80A5CBE:
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A5CDE
    bl sub_8045F4C
    mov r4, #0
    cmp r0, #0
    bne loc_80A5CD2
    mov r4, #1
loc_80A5CD2:
    mov r1, #0
    strb r1, [r5,#0xa]
    bl sub_809E122
    add r0, r4, #0
    b locret_80A5CE0
loc_80A5CDE:
    mov r0, #2
locret_80A5CE0:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A5C9C

.func
.thumb_func
sub_80A5CE4:
    push {r4-r7,lr}
    bl sub_809E1AE
    bl sub_80A5E08
    pop {r4-r7,pc}
.endfunc // sub_80A5CE4

.func
.thumb_func
sub_80A5CF0:
    push {r4,lr}
    ldrb r0, [r5,#5]
    ldr r1, [r5,#0x34]
    cmp r0, r1
    beq locret_80A5D0A
    add r4, r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    str r4, [r5,#0x34]
locret_80A5D0A:
    pop {r4,pc}
.endfunc // sub_80A5CF0

.func
.thumb_func
sub_80A5D0C:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r0, [r4,#4]
    cmp r0, #0x81
    beq loc_80A5D1C
    mov r2, #3
    b loc_80A5D1E
loc_80A5D1C:
    ldrb r2, [r4,#5]
loc_80A5D1E:
    lsl r2, r2, #2
    ldrb r3, [r5,#4]
    mov r0, #8
    mul r3, r0
    ldr r4, [pc, #0x80a5d34-0x80a5d26-2] // =off_80A5D38
    ldr r0, [r4,r2]
    add r0, r0, r3
    b locret_80A5D30
    mov r0, #0
locret_80A5D30:
    pop {r4,pc}
    .balign 4, 0x00
off_80A5D34:    .word off_80A5D38
off_80A5D38:    .word dword_80A5A6C
    .word dword_80A5A6C+0x18
    .word dword_80A5A6C+0x30
    .word dword_80A5A6C+0x50
.endfunc // sub_80A5D0C

.func
.thumb_func
sub_80A5D48:
    push {r4-r7,lr}
    bl sub_80A5D80
    add r1, r0, #0
    mov r0, #1
    cmp r1, #0
    bne locret_80A5D7E
    mov r3, #0x88
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    ldrb r0, [r6,#8]
    strb r0, [r5,#6]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x34]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r0, #0
locret_80A5D7E:
    pop {r4-r7,pc}
.endfunc // sub_80A5D48

.func
.thumb_func
sub_80A5D80:
    push {r4-r7,lr}
    bl sub_80A5DE8
    bl sub_80A5E00
    mov r4, #0
    ldr r2, [pc, #0x80a5de4-0x80a5d8c-4] // =0x10000
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x28]
    cmp r0, r1
    beq loc_80A5DB0
    bgt loc_80A5DA4
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A5DB0
    add r0, r0, r2
    mov r4, #1
    b loc_80A5DAE
loc_80A5DA4:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A5DB0
    sub r0, r0, r2
    mov r4, #1
loc_80A5DAE:
    str r0, [r5,#0xc]
loc_80A5DB0:
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x2c]
    cmp r0, r1
    beq loc_80A5DE0
    bgt loc_80A5DC6
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A5DE0
    add r0, r0, r2
    mov r4, #1
    b loc_80A5DD0
loc_80A5DC6:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A5DE0
    sub r0, r0, r2
    mov r4, #1
loc_80A5DD0:
    str r0, [r5,#0x10]
    mov r0, #0xc
    add r0, r0, r5
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    str r0, [r5,#0x20]
loc_80A5DE0:
    add r0, r4, #0
    pop {r4-r7,pc}
dword_80A5DE4:    .word 0x10000
.endfunc // sub_80A5D80

.func
.thumb_func
sub_80A5DE8:
    push {lr}
    mov r3, #0x7c 
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0x28]
    str r1, [r5,#0x2c]
    str r2, [r5,#0x30]
    pop {pc}
    .byte 0, 0
.endfunc // sub_80A5DE8

.func
.thumb_func
sub_80A5E00:
    push {r4,lr}
    ldr r0, [r5,#0x28]
    ldr r1, [r5,#0x2c]
    b loc_80A5E0A
.endfunc // sub_80A5E00

.func
.thumb_func
sub_80A5E08:
    push {r4,lr}
loc_80A5E0A:
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    beq locret_80A5E36
    add r4, r0, #0
    ldr r0, [pc, #0x80a5e38-0x80a5e1c-4] // =dword_80A5E3C
    ldrb r0, [r0,r4]
    add r4, r0, #0
    ldr r1, [r5,#0x34]
    cmp r0, r1
    beq locret_80A5E36
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    str r4, [r5,#0x34]
locret_80A5E36:
    pop {r4,pc}
off_80A5E38:    .word dword_80A5E3C
dword_80A5E3C:    .word 0x6000202, 0x4
.endfunc // sub_80A5E08

.func
.thumb_func
sub_80A5E44:
    push {r4,lr}
    bl sub_809E1AE
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    beq locret_80A5E70
    add r4, r0, #0
    ldr r0, [pc, #0x80a5e74-0x80a5e60-4] // =dword_80A5E7C
    ldrb r0, [r0,r4]
    bl sub_809E13C
    ldr r0, [pc, #0x80a5e78-0x80a5e68-4] // =dword_80A5E84
    ldrb r0, [r0,r4]
    bl sub_809E2AE
locret_80A5E70:
    pop {r4,pc}
    .balign 4, 0x00
off_80A5E74:    .word dword_80A5E7C
off_80A5E78:    .word dword_80A5E84
dword_80A5E7C:    .word 0x7010303, 0x5
dword_80A5E84:    .word 0x7010303, 0x5
.endfunc // sub_80A5E44

.func
.thumb_func
sub_80A5E8C:
    push {r4,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80a5eb4-0x80a5e92-2] // =dword_80A5EB8
    ldr r0, [r1,r0]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    pop {r4,pc}
    .byte 0, 0
.endfunc // sub_80A5E8C

.func
.thumb_func
sub_80A5EA0:
    push {r4,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80a5eb4-0x80a5ea6-2] // =dword_80A5EB8
    ldr r0, [r1,r0]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    pop {r4,pc}
    .balign 4, 0x00
off_80A5EB4:    .word dword_80A5EB8
dword_80A5EB8:    .word 0x1641, 0x1642, 0x1643, 0x1644
.endfunc // sub_80A5EA0

.func
.thumb_func
sub_80A5EC8:
    push {r4,lr}
    mov r0, #5
    mov r1, #0xf1
    bl sub_802F164
    bne locret_80A5F46
    bl sub_80A5F84
    cmp r0, #0
    bne loc_80A5EE2
    bl sub_80A5E8C
    b locret_80A5F46
loc_80A5EE2:
    ldrb r0, [r5,#7]
    cmp r0, #0
    bne loc_80A5F3C
    ldrb r4, [r5,#0xb]
    cmp r4, #0
    bgt loc_80A5F12
    mov r0, #5
    mov r1, #0xe0
    bl sub_802F110
    bl sub_80A5F68
    mov r0, #3
    strb r0, [r5]
    ldrb r0, [r5,#5]
    add r0, #0x19
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    add r4, #1
    strb r4, [r5,#0xb]
loc_80A5F12:
    mov r0, #5
    mov r1, #0xe0
    bl sub_802F164
    bne locret_80A5F46
    ldrb r0, [r5,#5]
    str r0, [r5,#0x34]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r4, #0
    strb r4, [r5,#0xb]
    mov r0, #0
    strb r0, [r6,#5]
    mov r0, #1
    strb r0, [r5,#7]
    bl sub_80A5EA0
loc_80A5F3C:
    bl sub_80A5D0C
    add r4, r0, #0
    ldrb r0, [r4,#7]
    strb r0, [r5,#6]
locret_80A5F46:
    pop {r4,pc}
.endfunc // sub_80A5EC8

    push {r4,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r2, [r0,#4]
    cmp r2, #0x81
    beq loc_80A5F58
    mov r0, #0x3 // (byte_80A5F67 - 0x80a5f64)
    b loc_80A5F5A
loc_80A5F58:
    ldrb r0, [r0,#5]
loc_80A5F5A:
    ldr r1, [pc, #0x80a5f60-0x80a5f5a-2] // =byte_80A5F64
    ldrb r0, [r1,r0]
    pop {r4,pc}
off_80A5F60:    .word byte_80A5F64
byte_80A5F64:    .byte 0x2, 0x2, 0x3
byte_80A5F67:    .byte 0x2
.func
.thumb_func
sub_80A5F68:
    push {lr}
    push {r5}
    mov r0, #0x14
    ldr r1, [r5,#0xc]
    ldr r2, [r5,#0x10]
    ldr r3, [r5,#0x14]
    bl sub_80047E0
    pop {r5}
    mov r0, #0x76 
    bl sound_play
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A5F68

.func
.thumb_func
sub_80A5F84:
    push {r4,lr}
    ldrb r0, [r5,#6]
    cmp r0, #0x32 
    blt loc_80A5F8E
    sub r0, #0x28 
loc_80A5F8E:
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a5fb0-0x80a5f90-4] // =dword_80A5FB4
    ldrh r2, [r1,r0]
    mov r4, #1
    add r0, r2, #0
    bl zf_802F168
    beq loc_80A5FAA
    mov r0, #1
    strb r0, [r5]
    bl sub_80A5E8C
    mov r4, #0
    strb r4, [r5,#7]
loc_80A5FAA:
    add r0, r4, #0
    pop {r4,pc}
    .byte 0, 0
off_80A5FB0:    .word dword_80A5FB4
dword_80A5FB4:    .word 0x5F605F5, 0x5F805F7, 0x5FA05F9, 0x5FC05FB, 0x5FE05FD
    .word 0xFC30FC2, 0xFC4
.endfunc // sub_80A5F84

.func
.thumb_func
sub_80A5FD0:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a604c-0x80a5fd2-2] // =byte_2000EC0
    mov r1, #0xa
    ldrb r4, [r5,#4]
    add r1, r1, r4
    ldrb r0, [r7,r1]
    str r0, [r5,#0x24]
    mov r1, #0xe
    add r1, r1, r4
    ldrb r0, [r7,r1]
    strb r0, [r5,#7]
    cmp r0, #0
    bne loc_80A5FF2
    mov r0, #1
    strb r0, [r5]
    bl sub_80A5E8C
loc_80A5FF2:
    mov r1, #0x12
    add r1, r1, r4
    ldrb r0, [r7,r1]
    strb r0, [r5,#6]
    mov r0, #0xd4 // (dword_2000F94 - 0x2000ec0)
    ldr r2, [r7,r0]
    mov r1, #0x88
    str r2, [r6,r1]
    mov r1, #0xd8 // (dword_2000F98 - 0x2000ec0)
    ldr r2, [r7,r1]
    mov r0, #0x8c
    str r2, [r6,r0]
    mov r1, #0xdc // (dword_2000F9C - 0x2000ec0)
    ldr r2, [r7,r1]
    mov r0, #0x90
    str r2, [r6,r0]
    pop {r4-r7,pc}
.endfunc // sub_80A5FD0

.func
.thumb_func
sub_80A6014:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a604c-0x80a6016-2] // =byte_2000EC0
    ldr r0, [r5,#0x24]
    mov r1, #0xa
    ldrb r4, [r5,#4]
    add r1, r1, r4
    strb r0, [r7,r1]
    ldrb r0, [r5,#7]
    mov r1, #0xe
    add r1, r1, r4
    strb r0, [r7,r1]
    ldrb r0, [r5,#6]
    mov r1, #0x12
    add r1, r1, r4
    strb r0, [r7,r1]
    mov r0, #0x88
    ldr r2, [r6,r0]
    mov r1, #0xd4 // (dword_2000F94 - 0x2000ec0)
    str r2, [r7,r1]
    mov r0, #0x8c
    ldr r2, [r6,r0]
    mov r1, #0xd8 // (dword_2000F98 - 0x2000ec0)
    str r2, [r7,r1]
    mov r0, #0x90
    ldr r2, [r6,r0]
    mov r1, #0xdc // (dword_2000F9C - 0x2000ec0)
    str r2, [r7,r1]
    pop {r4-r7,pc}
off_80A604C:    .word byte_2000EC0
off_80A6050:    .word dword_80A61BC
    .word dword_80A6224
    .word dword_80A628C
    .word dword_80A62F4
    .word dword_80A635C
    .word dword_80A63C4
    .word dword_80A61D8
    .word dword_80A6240
    .word dword_80A62A8
    .word dword_80A6310
    .word dword_80A6378
    .word dword_80A63E0
    .word dword_80A61FC
    .word dword_80A6264
    .word dword_80A62CC
    .word dword_80A6334
    .word dword_80A639C
    .word dword_80A6404
    .word dword_80A642C
dword_80A609C:    .word 0x80A6512, 0x80A6436, 0x80A651C, 0x80A6440, 0x80A6526
    .word 0x80A6458, 0x80A6530, 0x80A6462, 0x80A646C, 0x80A6476
    .word 0x80A6480, 0x80A6544, 0x80A654E, 0x80A6558, 0x80A6562
    .word 0x80A648A, 0x80A64A2, 0x80A64BA, 0x80A64D2, 0x80A656C
    .word 0x80A6576, 0x80A6580, 0x80A658A, 0x80A64EA, 0x80A64F4
    .word 0x80A64FE, 0x80A6508, 0x80A6594, 0x80A65A8, 0x80A65BC
    .word 0x80A65D0, 0x80A65E4, 0x80A65EE, 0x80A65F8, 0x80A6602
    .word 0x80A660C, 0x80A6616, 0x80A6620, 0x80A662A, 0x80A6634
    .word 0x80A663E, 0x80A6648, 0x80A6676, 0x80A6694, 0x80A66B2
    .word 0x80A66D0, 0x80A66EE, 0x80A6706, 0x80A6710, 0x80A671A
    .word 0x80A6724, 0x80A672E, 0x80A6738, 0x80A674E, 0x80A6766
    .word 0x80A677E, 0x80A6796, 0x80A67AE, 0x80A67C2, 0x80A67D6
    .word 0x80A67EA, 0x80A67FE, 0x80A6816, 0x80A682E, 0x80A6846
    .word 0x80A6874, 0x80A6898, 0x80A68CC, 0x80A691E, 0x80A69AC
    .word 0x80A69E0, 0x80A69EA
dword_80A61BC:    .word 0x195003C, 0x180008, 0x10FF22, 0x20, 0x180000, 0x18FF22
    .word 0x480040
dword_80A61D8:    .word 0x180008, 0x18FF22, 0x780004, 0x196003C, 0x10020, 0x180000
    .word 0x2BFEEE, 0x380010, 0x48001C
dword_80A61FC:    .word 0xFFC00008, 0x1C0002, 0x20, 0x140004, 0x105003C, 0x20020
    .word 0x200028, 0xFFF40006, 0x380010, 0x48001C
dword_80A6224:    .word 0x195003C, 0x320008, 0x10FF26, 0x20, 0x320000, 0x18FF26
    .word 0x480040
dword_80A6240:    .word 0x320008, 0x18FF26, 0x880004, 0x196003C, 0x10020, 0x1C0000
    .word 0x28FEEE, 0x380010, 0x48001C
dword_80A6264:    .word 0xFFC20008, 0x1C0004, 0x20, 0x140004, 0x105003C, 0x20020
    .word 0x200028, 0xFFF40006, 0x380010, 0x48001C
dword_80A628C:    .word 0x195003C, 0x3A0008, 0x10FF36, 0x20, 0x3A0000, 0x18FF36
    .word 0x480040
dword_80A62A8:    .word 0x3A0008, 0x18FF36, 0x800004, 0x196003C, 0x10020, 0x1B0000
    .word 0x2AFEEE, 0x380010, 0x48001C
dword_80A62CC:    .word 0xFFC10008, 0x1C0000, 0x20, 0x140004, 0x105003C, 0x20020
    .word 0x200028, 0xFFF40006, 0x380010, 0x48001C
dword_80A62F4:    .word 0x195003C, 0xFFFC0008, 0x10FF2C, 0x20, 0xFFFC0000
    .word 0x18FF2C, 0x480040
dword_80A6310:    .word 0xFFFC0008, 0x18FF2C, 0x8C0004, 0x196003C, 0x10020
    .word 0x1A0000, 0x2BFEEE, 0x380010, 0x48001C
dword_80A6334:    .word 0xFFC20008, 0x1C0003, 0x20, 0x140004, 0x105003C, 0x20020
    .word 0x200028, 0xFFF40006, 0x380010, 0x48001C
dword_80A635C:    .word 0x195003C, 0x240008, 0x10FF3E, 0x20, 0x240000, 0x18FF3E
    .word 0x480040
dword_80A6378:    .word 0x240008, 0x18FF3E, 0x920004, 0x196003C, 0x10020, 0x190000
    .word 0x29FEEE, 0x380010, 0x48001C
dword_80A639C:    .word 0xFFC00008, 0x1C0001, 0x20, 0x140004, 0x105003C, 0x20020
    .word 0x200028, 0xFFF40006, 0x380010, 0x48001C
dword_80A63C4:    .word 0x195003C, 0xE0008, 0x10FF3C, 0x20, 0xE0000, 0x18FF3C
    .word 0x480040
dword_80A63E0:    .word 0xE0008, 0x18FF3C, 0x980004, 0x196003C, 0x10020, 0x1A0000
    .word 0x28FEEE, 0x380010, 0x48001C
dword_80A6404:    .word 0xFFC00008, 0x1C0002, 0x20, 0x140004, 0x105003C, 0x20020
    .word 0x200028, 0xFFF40006, 0x380010, 0x48001C
dword_80A642C:    .word 0x40008, 0xFFF4, 0x80048, 0xFFF40004, 0x480000, 0x40008
    .word 0xFFF4, 0x30020, 0xFFCC0000, 0x180008, 0x480080, 0x40008
    .word 0xFFF4, 0x80048, 0x4FFF8, 0x480004, 0xFFF80008, 0x8FFE4
    .word 0x80048, 0xFFDC0014, 0x480018, 0x140008, 0x180004, 0x80048
    .word 0x4FFF8, 0x200004, 0x3, 0x8FFCC, 0x800018, 0x80048
    .word 0xFFE4FFF8, 0x200008, 0x3, 0x8FFCC, 0x800018, 0x80048
    .word 0xFFDC0014, 0x200018, 0x3, 0x8FFCC, 0x800018, 0x80048
    .word 0x40014, 0x200018, 0x3, 0x8FFCC, 0x800018, 0x80048
    .word 0x4FFF8, 0x480004, 0xFFF80008, 0x8FFE4, 0x80048, 0xFFDC0014
    .word 0x480018, 0x140008, 0x180004, 0x80048, 0x200004, 0x480000
    .word 0x40008, 0x20, 0x80048, 0x200004, 0x480000, 0x40008
    .word 0x1C, 0x40000, 0x8, 0x480080, 0xFFF80008, 0x40030
    .word 0x80048, 0x10FFF8, 0x480004, 0x140008, 0x140008, 0x80048
    .word 0x300014, 0x480018, 0xFFF80008, 0x40030, 0x80048, 0x10FFF8
    .word 0x480004, 0x140008, 0x140008, 0x80048, 0x300014, 0x480018
    .word 0xFFF80008, 0x40030, 0xFFF80000, 0x40018, 0x480080, 0xFFF80008
    .word 0x40010, 0xFFF80000, 0x4FFF8, 0x480080, 0x140008, 0x140008
    .word 0x140000, 0x14FFF0, 0x480080, 0x140008, 0x180030, 0x140000
    .word 0x180018, 0x480080, 0x40008, 0x8, 0x80048, 0x18FFF8
    .word 0x480004, 0xFFF80008, 0x8FFF8, 0x80048, 0xFFF00014, 0x480018
    .word 0x140008, 0x180018, 0x80048, 0x680138, 0x480004, 0x12C0008
    .word 0x80078, 0x80048, 0x58012C, 0x48000C, 0x1480008, 0x1C0050
    .word 0x80048, 0x780148, 0x48001C, 0x1380008, 0x40068, 0x60020
    .word 0x1300000, 0x40068, 0x240040, 0x140004, 0x60020, 0x1280000
    .word 0x40064, 0x240040, 0x3C0048, 0x80161, 0x78012C, 0x200008
    .word 0x3, 0x6400FC, 0x800008, 0x480038, 0x161003C, 0x12C0008
    .word 0xC0058, 0x30020, 0xFC0000, 0x80064, 0x380080, 0x3C0048
    .word 0x80161, 0x500148, 0x20001C, 0x3, 0x6400FC, 0x800008
    .word 0x480038, 0x161003C, 0x1480008, 0x1C0078, 0x30020, 0xFC0000
    .word 0x80064, 0x380080, 0x80048, 0x640128, 0x200004, 0x4
    .word 0x64010A, 0x800004, 0x80048, 0x680138, 0x480004, 0x1280008
    .word 0x80074, 0x80048, 0x740148, 0x48000C, 0x1500008, 0x1C0058
    .word 0x80048, 0x580128, 0x48001C, 0x20000C, 0x280005, 0x60020
    .word 0x20FFFD, 0x1C0038, 0x80048, 0x26001A, 0x200000, 0x7
    .word 0x26001A, 0x40010, 0x80048, 0x16004C, 0x200000, 0x7
    .word 0x16004C, 0x40010, 0x80048, 0xFFFC0026, 0x200000, 0x7
    .word 0xFFFC0026, 0x40010, 0x80048, 0x42003E, 0x200000, 0x7
    .word 0x42003E, 0x40010, 0x80048, 0x26001A, 0x10, 0x1E0030
    .word 0x200010, 0x80048, 0x16004C, 0x10, 0x1C003E, 0x200010
    .word 0x80048, 0xFFFC0026, 0x10, 0x140034, 0x200010, 0x80048
    .word 0x42003E, 0x10, 0x240038, 0x200010, 0x80048, 0x24002E
    .word 0x200000, 0x7, 0x24002E, 0x40010, 0x80048, 0x24002A
    .word 0x200000, 0x7, 0x14002A, 0x40010, 0x80048, 0x240042
    .word 0x200000, 0x7, 0x2A003C, 0x40010, 0x180048, 0xC000C0
    .word 0x40004, 0x600018, 0x40060, 0x180004, 0x380038, 0x40004
    .word 0x400018, 0x40040, 0x1C0004, 0x240030, 0xA0004, 0x600018
    .word 0x40060, 0x180002, 0xA000A0, 0x20004, 0xE00018, 0x400E0
    .word 0x240002, 0x60004, 0x600018, 0x40060, 0x180002, 0x800080
    .word 0x20004, 0xA00018, 0x400A0, 0x180002, 0xC000C0, 0x20004
    .word 0xE00018, 0x2400E0, 0x140004, 0x440018, 0x40044, 0x180008
    .word 0x480048, 0x80004, 0x4C0018, 0x4004C, 0x180008, 0x500050
    .word 0x80004, 0x540018, 0x40054, 0x180008, 0x580058, 0x80004
    .word 0x5C0018, 0x4005C, 0x180008, 0x600060, 0x40024, 0x180014
    .word 0x440044, 0x60004, 0x480018, 0x40048, 0x180006, 0x4C004C
    .word 0x60004, 0x500018, 0x40050, 0x180006, 0x540054, 0x60004
    .word 0x580018, 0x40058, 0x180006, 0x5C005C, 0x60004, 0x600018
    .word 0x40060, 0x180006, 0x640064, 0x60004, 0x680018, 0x40068
    .word 0x180006, 0x6C006C, 0x60004, 0x700018, 0x40070, 0x180006
    .word 0x740074, 0x60004, 0x780018, 0x240078, 0x30004, 0x500018
    .word 0x40050, 0x180003, 0x600060, 0x30004, 0x700018, 0x40070
    .word 0x180003, 0x800080, 0x30004, 0x900018, 0x240090, 0x16C003C
    .word 0x100004, 0x400010, 0x40008, 0x400002, 0x4000A, 0x400002
    .word 0x4000C, 0x400002, 0x4000E, 0x400002, 0x40010, 0x440002
    .hword 0x24
.endfunc // sub_80A6014

.func
.thumb_func
sub_80A6A16:
    push {lr}
    ldr r0, [pc, #0x80a6a24-0x80a6a18-4] // =a5jCjK
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A6A24:    .word a5jCjK
a5jCjK:    .byte 0x35, 0x6A
    .byte 0xA, 0x8
    .byte 0x63, 0x6A
    .byte 0xA, 0x8
    .byte 0x9, 0x6B
    .byte 0xA, 0x8
    .byte 0x0
    .word 0x282003B5, 0x69208070, 0x5B79AA79, 0xE8FE50F7, 0xADF75C79
    .word 0x2BF75BF9
    .byte 0xFE
    .hword 0xF75C
    .word 0x2004FA9F
aR:    .byte 0x28, 0x72, 0x24, 0x26
    .byte 0x0
    .byte 0xF0, 0xFA, 0xF9
.endfunc // sub_80A6A16

    bl loc_80A6A62
    pop {pc}
loc_80A6A62:
    push {lr}
    .byte 0x9, 0x24, 0x24, 0x26, 0x3C
    .byte 0x27, 0x0
    .byte 0xF0
    .word 0x8800FA05, 0x58084911, 0x470046FE, 0x240AD1F7
    .byte 0x28, 0x26
    .byte 0x3E, 0x27
    .byte 0x0
    .byte 0xF0, 0xFA, 0xF9
    .word 0xD0054200, 0x490B8800, 0x46FE5808, 0xD1F54700, 0x1C28696C
    .word 0xF78A300C, 0x400FDBA, 0x1C286168, 0xF78E300C, 0x616CFDF5
    .word 0xF9B2F75C, 0xFE08F75B, 0xBD00
    .word off_80A6ABC
off_80A6ABC:    .word sub_80A6B10+1
    .word sub_80A6CA4+1
    .word sub_80A6CD4+1
    .word sub_80A6CFC+1
    .word sub_80A6D38+1
    .word sub_80A6D42+1
    .word sub_80A6D5C+1
    .word sub_80A6D7A+1
    .word sub_80A6D8A+1
    .word sub_80A6DAC+1
    .word sub_80A6BD8+1
    .word sub_80A6DC6+1
    .word sub_80A6DDC+1
    .word sub_80A6DEC+1
    .word sub_80A6DFC+1
    .word sub_80A6E0C+1
    .word sub_80A6E22+1
    .word sub_80A6E3A+1
    .word sub_80A6E4A+1
    push {lr}
    bl sub_80048B2
    pop {pc}
.func
.thumb_func
sub_80A6B10:
    push {lr}
    ldrb r2, [r5,r4]
    cmp r2, #0
    bne loc_80A6B5C
    push {r0-r3}
    mov r2, #1
    strb r2, [r5,r4]
    bl sub_80A6E78
    mov r2, #2
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x18]
    mov r2, #4
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x1c]
    mov r2, #6
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x20]
    ldrh r1, [r0,#8]
    strh r1, [r5,r7]
    mov r0, #0x40 
    lsl r0, r0, #8
    svc 6
    str r0, [r5,#0x38]
    mov r0, #0x40 
    lsl r0, r0, #8
    sub r0, r0, r1
    strh r0, [r5,r7]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    ldr r2, [r5,#0x14]
    str r0, [r5,#0x2c]
    str r1, [r5,#0x30]
    str r2, [r5,#0x34]
    pop {r0-r3}
loc_80A6B5C:
    push {r0-r3}
    ldrh r3, [r5,r7]
    ldr r2, [r5,#0x38]
    sub r2, r3, r2
    ble loc_80A6BB6
    strh r2, [r5,r7]
    lsr r2, r2, #8
    mov r3, #0x40 
    sub r2, r3, r2
    lsl r2, r2, #1
    ldr r0, [pc, #0x80a6bd4-0x80a6b70-4] // =dword_80065D0+16
    ldrsh r2, [r0,r2]
    ldr r0, [r5,#0x18]
    ldr r1, [r5,#0x2c]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r2
    push {r0}
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x30]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r2
    push {r0}
    ldr r0, [r5,#0x20]
    ldr r1, [r5,#0x34]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r2
    push {r0}
    pop {r2}
    ldr r3, [r5,#0x34]
    add r2, r2, r3
    pop {r1}
    ldr r3, [r5,#0x30]
    add r1, r1, r3
    pop {r0}
    ldr r3, [r5,#0x2c]
    add r0, r0, r3
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    pop {r0-r3}
    mov r0, #0
    pop {pc}
loc_80A6BB6:
    ldr r0, [r5,#0x18]
    ldr r1, [r5,#0x1c]
    ldr r2, [r5,#0x20]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    pop {r0-r3}
    mov r2, #0
    strb r2, [r5,r4]
    strh r2, [r5,r7]
    mov r0, #0xa
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
off_80A6BD4:    .word dword_80065D0+0x10
.endfunc // sub_80A6B10

.func
.thumb_func
sub_80A6BD8:
    push {lr}
    ldrb r2, [r5,r4]
    cmp r2, #0
    bne loc_80A6C3C
    push {r0-r3}
    mov r2, #1
    strb r2, [r5,r4]
    bl sub_80A6E78
    mov r2, #2
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x18]
    mov r2, #4
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x1c]
    mov r2, #6
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0xe
    str r1, [r5,#0x20]
    ldrh r1, [r0,#8]
    strh r1, [r5,r7]
    mov r0, #0x40 
    lsl r0, r0, #8
    svc 6
    str r0, [r5,#0x38]
    mov r0, #0x40 
    lsl r0, r0, #8
    sub r0, r0, r1
    strh r0, [r5,r7]
    mov r0, #0
    str r0, [r5,#0x34]
    bl sub_80A6E78
    ldrh r1, [r0,#8]
    ldr r0, [r5,#0xc]
    ldr r2, [r5,#0x18]
    sub r0, r2, r0
    svc 6
    str r0, [r5,#0x2c]
    bl sub_80A6E78
    ldrh r1, [r0,#8]
    ldr r0, [r5,#0x10]
    ldr r2, [r5,#0x1c]
    sub r0, r2, r0
    svc 6
    str r0, [r5,#0x30]
    pop {r0-r3}
loc_80A6C3C:
    push {r0-r3}
    ldrh r3, [r5,r7]
    ldr r2, [r5,#0x38]
    sub r2, r3, r2
    ble loc_80A6C7E
    strh r2, [r5,r7]
    lsr r2, r2, #8
    mov r3, #0x40 
    sub r2, r3, r2
    lsr r2, r2, #1
    lsl r2, r2, #1
    ldr r0, [pc, #0x80a6ca0-0x80a6c52-2] // =dword_80065D0+16
    ldrsh r2, [r0,r2]
    lsl r2, r2, #1
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x30]
    add r0, r0, r1
    str r0, [r5,#0x10]
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x14]
    add r0, r0, r1
    str r0, [r5,#0x14]
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x20]
    add r0, r0, r1
    str r0, [r5,#0x34]
    pop {r0-r3}
    mov r0, #0
    pop {pc}
loc_80A6C7E:
    ldr r0, [r5,#0x18]
    ldr r1, [r5,#0x1c]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x14]
    add r0, r0, r1
    str r0, [r5,#0x14]
    pop {r0-r3}
    mov r2, #0
    strb r2, [r5,r4]
    strh r2, [r5,r7]
    mov r0, #0xa
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
off_80A6CA0:    .word dword_80065D0+0x10
.endfunc // sub_80A6BD8

.func
.thumb_func
sub_80A6CA4:
    push {lr}
    ldrb r0, [r5,r4]
    tst r0, r0
    bne loc_80A6CB8
    mov r0, #1
    strb r0, [r5,r4]
    bl sub_80A6E78
    ldrh r0, [r0,#2]
    strh r0, [r5,r7]
loc_80A6CB8:
    ldrh r0, [r5,r7]
    sub r0, #1
    strh r0, [r5,r7]
    bge loc_80A6CD0
    mov r0, #0
    strb r0, [r5,r4]
    strh r0, [r5,r7]
    mov r0, #4
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
loc_80A6CD0:
    mov r0, #0
    pop {pc}
.endfunc // sub_80A6CA4

.func
.thumb_func
sub_80A6CD4:
    push {lr}
    bl sub_80A6E78
    mov r2, #2
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0xc]
    mov r2, #4
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x10]
    mov r2, #6
    ldrsh r1, [r0,r2]
    lsl r1, r1, #0x10
    str r1, [r5,#0x14]
    mov r0, #8
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6CD4

.func
.thumb_func
sub_80A6CFC:
    push {lr}
    push {r0}
    bl getPETNaviSelect
    ldr r2, [pc, #0x80a6d34-0x80a6d04-4] // =unk_809D328
    ldrb r2, [r2,r0]
    mov r0, #0x80
    mov r1, #0x18
    bl sub_80026E4
    mov r0, #1
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A6CFC

    bl sub_8002E52
    bl sub_809E1AE
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    pop {r0}
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
dword_80A6D34:    .word 0x809D328
.func
.thumb_func
sub_80A6D38:
    push {lr}
    bl sub_80A6E50
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6D38

.func
.thumb_func
sub_80A6D42:
    push {lr}
    bl sub_80A6E78
    ldrh r0, [r0,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A6D42

    mov r0, #4
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_80A6D5C:
    push {lr}
    bl sub_8002D14
    bl sub_80A6E78
    ldrh r2, [r0,#4]
    ldrh r1, [r0,#2]
    mov r0, #0
    bl sub_8002C24
    mov r0, #6
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6D5C

.func
.thumb_func
sub_80A6D7A:
    push {lr}
    bl sprite_makeUnscalable
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6D7A

.func
.thumb_func
sub_80A6D8A:
    push {lr}
    bl sub_80A6E78
    ldrh r0, [r0,#2]
    strb r0, [r5,#5]
    ldr r1, [pc, #0x80a6da8-0x80a6d94-4] // =dword_80A609C+256
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r5,#0x28]
    mov r0, #4
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80A6DA8:    .word dword_80A609C+0x100
.endfunc // sub_80A6D8A

.func
.thumb_func
sub_80A6DAC:
    push {lr}
    mov r0, #0
    strb r0, [r5,#5]
    str r0, [r5,#0x28]
    cmp r6, #0x24 
    bne loc_80A6DC2
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
loc_80A6DC2:
    mov r0, #0
    pop {pc}
.endfunc // sub_80A6DAC

.func
.thumb_func
sub_80A6DC6:
    push {lr}
    bl sub_80A6E78
    ldrh r0, [r0,#2]
    bl sub_8002C7A
    mov r0, #4
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6DC6

.func
.thumb_func
sub_80A6DDC:
    push {lr}
    bl sub_8002CCE
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6DDC

.func
.thumb_func
sub_80A6DEC:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6DEC

.func
.thumb_func
sub_80A6DFC:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6DFC

.func
.thumb_func
sub_80A6E0C:
    push {lr}
    bl sub_80A6E78
    ldrh r0, [r0,#2]
    bl sound_play
    mov r0, #4
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6E0C

.func
.thumb_func
sub_80A6E22:
    push {lr}
    bl sub_80A6E78
    ldrb r0, [r0,#2]
    add r1, r0, #0
    bl sub_8002EF6
    mov r0, #4
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6E22

.func
.thumb_func
sub_80A6E3A:
    push {lr}
    bl sub_8002F2C
    mov r0, #2
    bl sub_80A6E70
    mov r0, #1
    pop {pc}
.endfunc // sub_80A6E3A

.func
.thumb_func
sub_80A6E4A:
    push {lr}
    mov r0, #0
    pop {pc}
.endfunc // sub_80A6E4A

.func
.thumb_func
sub_80A6E50:
    cmp r6, #0x24 
    bne loc_80A6E5A
    ldrb r0, [r5,#4]
    ldr r1, [pc, #0x80a6e68-0x80a6e56-2] // =off_80A6050
    b loc_80A6E5E
loc_80A6E5A:
    ldrb r0, [r5,#5]
    ldr r1, [pc, #0x80a6e6c-0x80a6e5c-4] // =dword_80A609C+256
loc_80A6E5E:
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r5,r6]
    mov pc, lr
    .balign 4, 0x00
off_80A6E68:    .word off_80A6050
off_80A6E6C:    .word dword_80A609C+0x100
.endfunc // sub_80A6E50

.func
.thumb_func
sub_80A6E70:
    ldr r1, [r5,r6]
    add r0, r0, r1
    str r0, [r5,r6]
    mov pc, lr
.endfunc // sub_80A6E70

.func
.thumb_func
sub_80A6E78:
    ldr r0, [r5,r6]
    mov pc, lr
dword_80A6E7C:    .word 0xFF4800E6, 0xFFAE0044, 0x8CFF94, 0x8EFF14, 0xFE6EFF72
    .word 0xFE260078, 0xFFE4001A
.endfunc // sub_80A6E78

loc_80A6E98:
    push {lr}
    ldr r6, [pc, #0x80a6eb8-0x80a6e9a-2] // =unk_2011A90
    ldr r0, [pc, #0x80a6ea8-0x80a6e9c-4] // =off_80A6EAC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A6EA8:    .word off_80A6EAC
off_80A6EAC:    .word sub_80A6EBC+1
    .word sub_80A6F2C+1
    .word sub_80A6F70+1
off_80A6EB8:    .word unk_2011A90
.func
.thumb_func
sub_80A6EBC:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x2f 
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A6EBC

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #1
    bl sprite_setPallete
    bl sub_80A70C0
    cmp r0, #0
    beq loc_80A6F66
    add r4, r0, #0
    ldrh r0, [r4]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x14]
    mov r0, #0
    str r0, [r5,#0x2c]
    str r0, [r5,#0x34]
    strb r0, [r5,#6]
    mov r0, #0x11
    str r0, [r5,#0x38]
    mov r0, #5
    mov r1, #0xe5
    bl sub_802F164
    beq loc_80A6F20
    bl sub_80A7208
loc_80A6F20:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A6F2C
    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A6F2C:
    push {r4-r7,lr}
    bl sub_8036F40
    bne loc_80A6F66
    bl sub_8036F58
    bne loc_80A6F66
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A6F66
    ldrb r0, [r6,#9]
    cmp r0, #0
    beq loc_80A6F5E
    cmp r0, #1
    bne loc_80A6F5E
    ldr r0, [r5,#0x34]
    cmp r0, #0
    beq loc_80A6F58
    bl sub_80A7160
    b loc_80A6F66
loc_80A6F58:
    mov r0, #8
    strb r0, [r5,#8]
    b loc_80A6F66
loc_80A6F5E:
    bl sub_80A6F78
    bl sub_80A70FC
loc_80A6F66:
    bl anim_80026C4
.endfunc // sub_80A6F2C

    bl sub_80A7238
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A6F70:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A6F70

.func
.thumb_func
sub_80A6F78:
    push {r4-r7,lr}
    bl sub_80A6FDC
    bl sub_80A704C
    bl sub_80A708C
    add r2, r0, #0
    mov r4, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x24]
    cmp r0, r1
    beq loc_80A6FAC
    bgt loc_80A6FA0
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A6FAC
    add r0, r0, r2
    mov r4, #1
    b loc_80A6FAA
loc_80A6FA0:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A6FAC
    sub r0, r0, r2
    mov r4, #1
loc_80A6FAA:
    str r0, [r5,#0xc]
loc_80A6FAC:
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0x28]
    cmp r0, r1
    beq loc_80A6FCE
    bgt loc_80A6FC2
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A6FCE
    add r0, r0, r2
    mov r4, #1
    b loc_80A6FCC
loc_80A6FC2:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A6FCE
    sub r0, r0, r2
    mov r4, #1
loc_80A6FCC:
    str r0, [r5,#0x10]
loc_80A6FCE:
    cmp r4, #0
    bne locret_80A6FD8
    ldrb r0, [r5,#6]
    add r0, #1
    strb r0, [r5,#6]
locret_80A6FD8:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A6F78

.func
.thumb_func
sub_80A6FDC:
    push {lr}
loc_80A6FDE:
    ldr r2, [pc, #0x80a700c-0x80a6fde-2] // =off_80A7010
    ldrb r3, [r5,#5]
    lsl r3, r3, #2
    ldr r2, [r2,r3]
    ldrb r3, [r5,#4]
    lsl r3, r3, #2
    ldr r2, [r2,r3]
    ldrb r3, [r5,#6]
    lsl r3, r3, #2
    add r2, r2, r3
    ldrh r0, [r2]
    cmp r0, #0xff
    bne loc_80A6FFE
    mov r0, #0
    strb r0, [r5,#6]
    b loc_80A6FDE
loc_80A6FFE:
    ldrh r1, [r2,#2]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    pop {pc}
    .balign 4, 0x00
off_80A700C:    .word off_80A7010
off_80A7010:    .word off_80A7020
    .word off_80A702C
    .word off_80A7038
    .word off_80A7044
off_80A7020:    .word dword_8140C68
    .word dword_8140C7C
    .word dword_8140C90
off_80A702C:    .word dword_8140CA4
    .word dword_8140CB8
    .word dword_8140CCC
off_80A7038:    .word dword_8140CE0
    .word dword_8140CF4
    .word dword_8140D10
off_80A7044:    .word dword_8140D1C
    .word dword_8140D58
.endfunc // sub_80A6FDC

.func
.thumb_func
sub_80A704C:
    push {r4,lr}
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    beq locret_80A707E
    add r4, r0, #0
    ldr r0, [pc, #0x80a7080-0x80a7064-4] // =dword_80A7084
    ldrb r0, [r0,r4]
    add r4, r0, #0
    ldr r1, [r5,#0x2c]
    cmp r0, r1
    beq locret_80A707E
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    str r4, [r5,#0x2c]
locret_80A707E:
    pop {r4,pc}
off_80A7080:    .word dword_80A7084
dword_80A7084:    .word 0x3000101, 0x2
.endfunc // sub_80A704C

.func
.thumb_func
sub_80A708C:
    push {r4,lr}
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl calcAngle_800117C
    mov r1, #0
    cmp r0, #0x20 
    beq loc_80A70A8
    cmp r0, #0xa0
    bne loc_80A70AA
loc_80A70A8:
    mov r1, #1
loc_80A70AA:
    lsl r1, r1, #2
    ldr r0, [pc, #0x80a70b4-0x80a70ac-4] // =dword_80A70B8
    ldr r0, [r0,r1]
    str r0, [r5,#0x30]
    pop {r4,pc}
off_80A70B4:    .word dword_80A70B8
dword_80A70B8:    .word 0x1C000, 0x10000
.endfunc // sub_80A708C

.func
.thumb_func
sub_80A70C0:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r0, [r4,#4]
    cmp r0, #0x81
    beq loc_80A70D0
    mov r2, #3
    b loc_80A70D2
loc_80A70D0:
    ldrb r2, [r4,#5]
loc_80A70D2:
    strb r2, [r5,#5]
    lsl r2, r2, #2
    ldrb r3, [r5,#4]
    mov r0, #4
    mul r3, r0
    ldr r4, [pc, #0x80a70e8-0x80a70dc-4] // =off_80A70EC
    ldr r0, [r4,r2]
    add r0, r0, r3
    b locret_80A70E6
    mov r0, #0
locret_80A70E6:
    pop {r4,pc}
off_80A70E8:    .word off_80A70EC
off_80A70EC:    .word dword_80A6E7C
    .word dword_80A6E7C+4
    .word dword_80A6E7C+8
    .word dword_80A6E7C+0x14
.endfunc // sub_80A70C0

.func
.thumb_func
sub_80A70FC:
    push {r4-r7,lr}
    mov r0, #5
    mov r1, #0xf1
    bl sub_802F164
    bne locret_80A715C
    bl sub_809E1AE
    cmp r2, #0
    bne loc_80A712E
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r4, #0x12
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne loc_80A712E
    mov r2, #0x7c 
    add r2, #8
    ldr r3, [r6,r2]
    cmp r3, #0
    beq loc_80A7150
loc_80A712E:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r2, #0x7c 
    add r2, #8
    ldr r3, [r6,r2]
    cmp r3, #0
    bne locret_80A715C
    mov r4, #0x7c 
    ldr r2, [r6,r4]
    add r4, #4
    ldr r3, [r6,r4]
    mov r4, #0x12
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne locret_80A715C
loc_80A7150:
    mov r0, #5
    mov r1, #0xf1
    bl sub_802F110
    mov r0, #1
    str r0, [r5,#0x34]
locret_80A715C:
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_80A70FC

.func
.thumb_func
sub_80A7160:
    push {r4-r7,lr}
    ldrb r4, [r5,#9]
    cmp r4, #0
    bgt loc_80A717E
    ldr r0, [r5,#0x2c]
    add r0, #0xa
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    add r4, #1
    strb r4, [r5,#9]
    b locret_80A71E8
loc_80A717E:
    cmp r4, #1
    bgt loc_80A7190
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_80A71E8
    add r4, #1
    strb r4, [r5,#9]
loc_80A7190:
    cmp r4, #2
    bgt loc_80A71C0
    mov r3, #0x7c 
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    mov r0, #9
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r0, #0xe1
    bl sound_play
    add r4, #1
    strb r4, [r5,#9]
    b locret_80A71E8
loc_80A71C0:
    mov r0, #3
    strb r0, [r6,#7]
    bl sub_80A71EC
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_80A71E8
    mov r0, #3
    strb r0, [r6,#5]
    bl reqBBS_8140A0C
    mov r0, #0
    strb r0, [r5,#9]
    str r0, [r5,#0x34]
    mov r0, #2
    strb r0, [r6,#9]
    bl sub_80A6F70
locret_80A71E8:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A7160

.func
.thumb_func
sub_80A71EC:
    push {r4-r7,lr}
    ldr r0, [r5,#0x38]
    cmp r0, #0
    beq locret_80A7204
    cmp r0, #1
    bne loc_80A71FE
    mov r0, #0xe2
    bl sound_play
loc_80A71FE:
    sub r0, #1
    str r0, [r5,#0x38]
    b locret_80A7204
locret_80A7204:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A71EC

.func
.thumb_func
sub_80A7208:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a7268-0x80a720a-2] // =byte_2000EC0
    ldrb r0, [r7,#0x16] // (byte_2000ED6 - 0x2000ec0)
    strb r0, [r5,#5]
    ldrb r3, [r5,#4]
    mov r1, #0x17
    add r0, r1, r3
    ldrb r2, [r7,r0]
    strb r2, [r5,#6]
    mov r1, #0x26 
    add r0, r1, r3
    ldrb r2, [r7,r0]
    str r2, [r5,#0x34]
    mov r1, #0x2c 
    lsl r3, r3, #2
    add r1, r1, r3
    ldr r2, [r7,r1]
    str r2, [r5,#0xc]
    mov r1, #0x44 
    add r1, r1, r3
    ldr r2, [r7,r1]
    str r2, [r5,#0x10]
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A7208

.func
.thumb_func
sub_80A7238:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a7268-0x80a723a-2] // =byte_2000EC0
    ldrb r0, [r5,#5]
    strb r0, [r7,#0x16] // (byte_2000ED6 - 0x2000ec0)
    ldrb r3, [r5,#4]
    mov r1, #0x17
    add r0, r1, r3
    ldrb r2, [r5,#6]
    strb r2, [r7,r0]
    mov r1, #0x26 
    add r0, r1, r3
    ldr r2, [r5,#0x34]
    strb r2, [r7,r0]
    ldr r2, [r5,#0xc]
    mov r1, #0x2c 
    lsl r3, r3, #2
    add r1, r1, r3
    str r2, [r7,r1]
    ldr r2, [r5,#0x10]
    mov r1, #0x44 
    add r1, r1, r3
    str r2, [r7,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7268:    .word byte_2000EC0
dword_80A726C:    .word 0xFFC6FF9C, 0xD000000, 0xC6005E, 0x11010002, 0x1E00C2
    .word 0x26000001, 0xFE6AFFC4, 0x15010001, 0xFEC40032, 0x3C010001
    .word 0x4C0032, 0x46000000, 0xFFE6FEBA, 0x11000000, 0x64FF5A
    .word 0x1A000002, 0xE6FFBA, 0x40000000
.endfunc // sub_80A7238

loc_80A72B4:
    push {lr}
    ldr r6, [pc, #0x80a72d4-0x80a72b6-2] // =unk_2011A90
    ldr r0, [pc, #0x80a72c4-0x80a72b8-4] // =off_80A72C8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A72C4:    .word off_80A72C8
off_80A72C8:    .word sub_80A72D8+1
    .word sub_80A7354+1
    .word sub_80A7398+1
off_80A72D4:    .word unk_2011A90
.func
.thumb_func
sub_80A72D8:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    bl sub_80A75A4
    add r4, r0, #0
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x2f 
    bl sub_80026E4
    ldrh r0, [r4,#4]
    strb r0, [r5,#5]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A72D8

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete
    ldrh r0, [r4]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x14]
    ldrb r0, [r4,#6]
    str r0, [r5,#0x2c]
    ldrb r0, [r4,#7]
    str r0, [r5,#0x30]
    bl sub_80A7514
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #0x11
    str r0, [r5,#0x34]
    mov r0, #5
    mov r1, #0xe5
    bl sub_802F164
    beq loc_80A7342
    bl sub_80A76E8
loc_80A7342:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A7354
    mov r0, #5
    mov r1, #0xff
    bl sub_802F110
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7354:
    push {r4-r7,lr}
    bl sub_8036F40
    bne loc_80A738E
    bl sub_8036F58
    bne loc_80A738E
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A738E
    ldrb r0, [r6,#9]
    cmp r0, #0
    beq loc_80A7386
    cmp r0, #1
    bne loc_80A7386
    ldr r0, [r5,#0x24]
    cmp r0, #0
    beq loc_80A7380
    bl sub_80A7640
    b loc_80A738E
loc_80A7380:
    mov r0, #8
    strb r0, [r5,#8]
    b loc_80A738E
loc_80A7386:
    bl sub_80A73A0
    bl sub_80A75DC
loc_80A738E:
    bl anim_80026C4
.endfunc // sub_80A7354

    bl sub_80A775C
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7398:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A7398

.func
.thumb_func
sub_80A73A0:
    push {r4-r7,lr}
    add r0, r5, #0
    add r0, #0xc
    bl sub_8003694
    mov r0, #0
    cmp r2, #0
    beq loc_80A73B8
    ldrb r1, [r5,#6]
    cmp r1, #3
    blt loc_80A73B8
    mov r0, #1
loc_80A73B8:
    strb r0, [r5,#7]
    bl sub_80A743C
    cmp r0, #1
    bne loc_80A73E4
    ldrb r0, [r5,#6]
    add r0, #1
    strb r0, [r5,#6]
    ldrb r0, [r5,#7]
    cmp r0, #0
    bne loc_80A73D8
    bl sub_80A7454
    bl sub_80A7514
    b loc_80A73E4
loc_80A73D8:
    bl sub_80A74A8
    bl sub_80A7514
    mov r0, #0
    strb r0, [r5,#6]
loc_80A73E4:
    bl sub_80A7590
    add r2, r0, #0
    ldr r6, [r5,#0x18]
    ldr r7, [r5,#0x1c]
    ldrb r4, [r5,#5]
    cmp r4, #0
    bne loc_80A7402
    ldr r0, [r5,#0xc]
    add r0, r0, r2
    cmp r0, r6
    bge loc_80A73FE
    b loc_80A7434
loc_80A73FE:
    add r0, r6, #0
    b loc_80A7434
loc_80A7402:
    cmp r4, #1
    bne loc_80A7414
    ldr r0, [r5,#0x10]
    add r0, r0, r2
    cmp r0, r7
    bge loc_80A7410
    b loc_80A7438
loc_80A7410:
    add r0, r7, #0
    b loc_80A7438
loc_80A7414:
    cmp r4, #2
    bne loc_80A7426
    ldr r0, [r5,#0xc]
    sub r0, r0, r2
    cmp r0, r6
    ble loc_80A7422
    b loc_80A7434
loc_80A7422:
    add r0, r6, #0
    b loc_80A7434
loc_80A7426:
    ldr r0, [r5,#0x10]
    sub r0, r0, r2
    cmp r0, r7
    ble loc_80A7430
    b loc_80A7438
loc_80A7430:
    add r0, r7, #0
    b loc_80A7438
loc_80A7434:
    str r0, [r5,#0xc]
    b locret_80A743A
loc_80A7438:
    str r0, [r5,#0x10]
locret_80A743A:
    pop {r4-r7,pc}
.endfunc // sub_80A73A0

.func
.thumb_func
sub_80A743C:
    push {lr}
    mov r0, #0
    ldr r1, [r5,#0x18]
    ldr r2, [r5,#0xc]
    cmp r1, r2
    bne locret_80A7452
    ldr r1, [r5,#0x1c]
    ldr r2, [r5,#0x10]
    cmp r1, r2
    bne locret_80A7452
    mov r0, #1
locret_80A7452:
    pop {pc}
.endfunc // sub_80A743C

.func
.thumb_func
sub_80A7454:
    push {r4-r7,lr}
    bl sub_809E1AE
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    bne loc_80A746E
    ldrb r4, [r5,#5]
    b loc_80A7472
loc_80A746E:
    add r4, r0, #0
    sub r4, #1
loc_80A7472:
    lsl r4, r4, #1
    bl sub_80A7528
    add r7, r0, #0
loc_80A747A:
    ldrb r0, [r7,r4]
    add r4, #1
    ldrb r1, [r7,r4]
    cmp r4, #7
    bne loc_80A7488
    mov r4, #0
    b loc_80A748A
loc_80A7488:
    add r4, #1
loc_80A748A:
    cmp r0, #0xff
    beq loc_80A747A
    add r4, r0, #0
    str r1, [r5,#0x30]
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq locret_80A74A6
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    strb r4, [r5,#5]
locret_80A74A6:
    pop {r4-r7,pc}
.endfunc // sub_80A7454

.func
.thumb_func
sub_80A74A8:
    push {r4-r7,lr}
    ldrb r4, [r5,#5]
    bl sub_80A7528
    add r7, r0, #0
    add r2, r4, #0
    lsl r2, r2, #1
    ldrb r0, [r7,r2]
    add r2, #1
    ldrb r1, [r7,r2]
    cmp r0, #0xff
    bne loc_80A74FA
    bl sub_809E1AE
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    beq loc_80A74DC
    cmp r0, #4
    blt loc_80A74DE
    mov r0, #1
    b loc_80A74E0
loc_80A74DC:
    add r0, r4, #0
loc_80A74DE:
    add r0, #1
loc_80A74E0:
    add r4, r0, #0
    sub r4, #1
    lsl r4, r4, #1
loc_80A74E6:
    ldrb r0, [r7,r4]
    add r4, #1
    ldrb r1, [r7,r4]
    cmp r4, #7
    bne loc_80A74F4
    mov r4, #0
    b loc_80A74F6
loc_80A74F4:
    add r4, #1
loc_80A74F6:
    cmp r0, #0xff
    beq loc_80A74E6
loc_80A74FA:
    add r4, r0, #0
    str r1, [r5,#0x30]
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq locret_80A7512
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    strb r4, [r5,#5]
locret_80A7512:
    pop {r4-r7,pc}
.endfunc // sub_80A74A8

.func
.thumb_func
sub_80A7514:
    push {r4,lr}
    bl sub_80A755C
    ldrh r1, [r0]
    ldrh r2, [r0,#2]
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    str r1, [r5,#0x18]
    str r2, [r5,#0x1c]
    pop {r4,pc}
.endfunc // sub_80A7514

.func
.thumb_func
sub_80A7528:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#4]
    cmp r0, #0x81
    beq loc_80A7538
    mov r3, #3
    b loc_80A753A
loc_80A7538:
    ldrb r3, [r3,#5]
loc_80A753A:
    lsl r3, r3, #2
    ldr r2, [pc, #0x80a7548-0x80a753c-4] // =off_80A754C
    ldr r2, [r2,r3]
    ldr r1, [r5,#0x30]
    lsl r1, r1, #3
    add r0, r1, r2
    pop {r4,pc}
off_80A7548:    .word off_80A754C
off_80A754C:    .word dword_8140D6C
    .word dword_8140E6C
    .word dword_8140FBC
    .word dword_814122C
.endfunc // sub_80A7528

.func
.thumb_func
sub_80A755C:
    push {r4,lr}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#4]
    cmp r0, #0x81
    beq loc_80A756C
    mov r3, #3
    b loc_80A756E
loc_80A756C:
    ldrb r3, [r3,#5]
loc_80A756E:
    lsl r3, r3, #2
    ldr r2, [pc, #0x80a757c-0x80a7570-4] // =off_80A7580
    ldr r2, [r2,r3]
    ldr r1, [r5,#0x30]
    lsl r1, r1, #2
    add r0, r1, r2
    pop {r4,pc}
off_80A757C:    .word off_80A7580
off_80A7580:    .word dword_81414CC
    .word dword_814154C
    .word dword_81415F4
    .word dword_814172C
.endfunc // sub_80A755C

.func
.thumb_func
sub_80A7590:
    push {r4,lr}
    ldr r1, [r5,#0x2c]
    lsl r1, r1, #2
    ldr r0, [pc, #0x80a75a0-0x80a7596-2] // =dword_8140C60
    ldr r0, [r0,r1]
    str r0, [r5,#0x28]
    pop {r4,pc}
    .byte 0, 0
off_80A75A0:    .word dword_8140C60
.endfunc // sub_80A7590

.func
.thumb_func
sub_80A75A4:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r0, [r4,#4]
    cmp r0, #0x81
    beq loc_80A75B4
    mov r2, #3
    b loc_80A75B6
loc_80A75B4:
    ldrb r2, [r4,#5]
loc_80A75B6:
    lsl r2, r2, #2
    ldrb r3, [r5,#4]
    mov r0, #8
    mul r3, r0
    ldr r4, [pc, #0x80a75c8-0x80a75be-2] // =off_80A75CC
    ldr r0, [r4,r2]
    add r0, r0, r3
    pop {r4,pc}
    .balign 4, 0x00
off_80A75C8:    .word off_80A75CC
off_80A75CC:    .word dword_80A726C
    .word dword_80A726C+0x10
    .word dword_80A726C+0x20
    .word dword_80A726C+0x30
.endfunc // sub_80A75A4

.func
.thumb_func
sub_80A75DC:
    push {r4-r7,lr}
    mov r0, #5
    mov r1, #0xf1
    bl sub_802F164
    bne locret_80A763C
    bl sub_809E1AE
    cmp r2, #0
    bne loc_80A760E
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r4, #0x12
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne loc_80A760E
    mov r2, #0x7c 
    add r2, #8
    ldr r3, [r6,r2]
    cmp r3, #0
    beq loc_80A7630
loc_80A760E:
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r2, #0x7c 
    add r2, #8
    ldr r3, [r6,r2]
    cmp r3, #0
    bne locret_80A763C
    mov r4, #0x7c 
    ldr r2, [r6,r4]
    add r4, #4
    ldr r3, [r6,r4]
    mov r4, #0x12
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne locret_80A763C
loc_80A7630:
    mov r0, #5
    mov r1, #0xf1
    bl sub_802F110
    mov r0, #1
    str r0, [r5,#0x24]
locret_80A763C:
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_80A75DC

.func
.thumb_func
sub_80A7640:
    push {r4-r7,lr}
    ldrb r4, [r5,#9]
    cmp r4, #0
    bgt loc_80A765E
    ldrb r0, [r5,#5]
    add r0, #0xa
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    add r4, #1
    strb r4, [r5,#9]
    b locret_80A76C8
loc_80A765E:
    cmp r4, #1
    bgt loc_80A7670
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_80A76C8
    add r4, #1
    strb r4, [r5,#9]
loc_80A7670:
    cmp r4, #2
    bgt loc_80A76A0
    mov r3, #0x7c 
    ldr r0, [r6,r3]
    add r3, #4
    ldr r1, [r6,r3]
    add r3, #4
    ldr r2, [r6,r3]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    mov r0, #9
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r0, #0xe1
    bl sound_play
    add r4, #1
    strb r4, [r5,#9]
    b locret_80A76C8
loc_80A76A0:
    mov r0, #3
    strb r0, [r6,#7]
    bl sub_80A76CC
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_80A76C8
    mov r0, #3
    strb r0, [r6,#5]
    bl reqBBS_8140A0C
    mov r0, #0
    strb r0, [r5,#9]
    str r0, [r5,#0x24]
    mov r0, #2
    strb r0, [r6,#9]
    bl sub_80A7398
locret_80A76C8:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A7640

.func
.thumb_func
sub_80A76CC:
    push {r4-r7,lr}
    ldr r0, [r5,#0x34]
    cmp r0, #0
    beq locret_80A76E4
    cmp r0, #1
    bne loc_80A76DE
    mov r0, #0xe2
    bl sound_play
loc_80A76DE:
    sub r0, #1
    str r0, [r5,#0x34]
    b locret_80A76E4
locret_80A76E4:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A76CC

.func
.thumb_func
sub_80A76E8:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a77a4-0x80a76ea-2] // =byte_2000EC0
    ldrb r3, [r5,#4]
    ldrb r4, [r7,#0x6] // (byte_2000EC6 - 0x2000ec0)
    mov r1, #0x1a
    add r1, r1, r3
    ldrb r0, [r7,r1]
    str r0, [r5,#0x2c]
    mov r1, #0x1d
    add r1, r1, r3
    ldrb r0, [r7,r1]
    strb r0, [r5,#5]
    mov r1, #0x20 
    add r1, r1, r3
    ldrb r0, [r7,r1]
    strb r0, [r5,#6]
    mov r1, #0x23 
    add r1, r1, r3
    ldrb r0, [r7,r1]
    str r0, [r5,#0x30]
    add r4, r4, r3
    mov r1, #0x26 
    add r1, r1, r4
    ldrb r0, [r7,r1]
    str r0, [r5,#0x24]
    lsl r4, r4, #2
    mov r1, #0x2c 
    add r1, r1, r4
    ldr r0, [r7,r1]
    str r0, [r5,#0xc]
    mov r1, #0x44 
    add r1, r1, r4
    ldr r0, [r7,r1]
    str r0, [r5,#0x10]
    bl sub_80A7514
    ldrb r0, [r5,#5]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A76E8

    bl sub_8002F90
    mov r2, #1
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r1, [r1,#4]
    cmp r1, #0x81
    beq loc_80A774C
    mov r2, #2
loc_80A774C:
    ldrb r0, [r5,#4]
    cmp r0, r2
    bne locret_80A775A
    mov r0, #5
    mov r1, #0xe5
    bl sub_802F12C
locret_80A775A:
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A775C:
    push {r4-r7,lr}
    ldr r7, [pc, #0x80a77a4-0x80a775e-2] // =byte_2000EC0
    ldrb r3, [r5,#4]
    ldrb r4, [r6,#0xa]
    mov r1, #0x1a
    add r1, r1, r3
    ldr r0, [r5,#0x2c]
    strb r0, [r7,r1]
    mov r1, #0x1d
    add r1, r1, r3
    ldrb r0, [r5,#5]
    strb r0, [r7,r1]
    mov r1, #0x20 
    add r1, r1, r3
    ldrb r0, [r5,#6]
    strb r0, [r7,r1]
    mov r1, #0x23 
    add r1, r1, r3
    ldr r0, [r5,#0x30]
    strb r0, [r7,r1]
    add r4, r4, r3
    mov r1, #0x26 
    add r1, r1, r4
    ldr r0, [r5,#0x24]
    strb r0, [r7,r1]
    lsl r4, r4, #2
    mov r1, #0x2c 
    add r1, r1, r4
    ldr r0, [r5,#0xc]
    str r0, [r7,r1]
    mov r1, #0x44 
    add r1, r1, r4
    ldr r0, [r5,#0x10]
    str r0, [r7,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A77A4:    .word byte_2000EC0
.endfunc // sub_80A775C

loc_80A77A8:
    push {lr}
    ldr r0, [pc, #0x80a77b8-0x80a77aa-2] // =off_80A77BC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A77B8:    .word off_80A77BC
off_80A77BC:    .word sub_80A77C8+1
    .word sub_80A77FC+1
    .word sub_80A7812+1
.func
.thumb_func
sub_80A77C8:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    ldrb r2, [r5,#7]
    bl sub_80026E4
    ldrb r0, [r5,#4]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A77C8

    bl sub_8002F90
    ldrb r0, [r5,#5]
    bl sprite_setPallete
    ldrb r0, [r5,#6]
    bl sub_8002E14
    mov r0, #4
    strb r0, [r5,#8]
    bl anim_80026C4
    pop {pc}
.func
.thumb_func
sub_80A77FC:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A780C
    mov r0, #8
    strb r0, [r5,#8]
loc_80A780C:
    bl anim_80026C4
.endfunc // sub_80A77FC

    pop {pc}
.func
.thumb_func
sub_80A7812:
    push {lr}
    bl sub_80048B2
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A7812

loc_80A781C:
    push {lr}
    ldr r0, [pc, #0x80a782c-0x80a781e-2] // =off_80A7830
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A782C:    .word off_80A7830
off_80A7830:    .word sub_80A783C+1
    .word sub_80A786C+1
    .word sub_80A78AE+1
.func
.thumb_func
sub_80A783C:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x47 
    bl sub_80026E4
    ldrb r0, [r5,#4]
    strb r1, [r5,#5]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A783C

    bl sub_8002F90
    mov r0, #0
    bl sprite_setPallete
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A786C
    pop {pc}
.func
.thumb_func
sub_80A786C:
    push {lr}
    bl sub_809BA14
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    strb r3, [r5,#4]
    add r0, r4, #0
    cmp r0, #0
    beq loc_80A7888
    mov r4, #3
    cmp r0, #0x10
    beq loc_80A788A
    b loc_80A788E
loc_80A7888:
    mov r4, #1
loc_80A788A:
    bl sub_8002CCE
loc_80A788E:
    strb r4, [r5]
    mov r0, #2
    bl sub_8002E14
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq loc_80A78A6
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
loc_80A78A6:
    strb r0, [r5,#5]
    bl anim_80026C4
.endfunc // sub_80A786C

    pop {pc}
.func
.thumb_func
sub_80A78AE:
    push {lr}
    bl sub_80048B2
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A78AE

loc_80A78B8:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    bl sub_8142068
    ldr r0, [pc, #0x80a78cc-0x80a78c0-4] // =off_80A78D0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_80A78CC:    .word off_80A78D0
off_80A78D0:    .word sub_80A78E0+1
    .word loc_80A7912+1
    .word sub_80A796C+1
    .word sub_80A79D4+1
.func
.thumb_func
sub_80A78E0:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x49 
    bl sub_80026E4
    ldrb r0, [r6,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A78E0

    bl sub_8002F90
    mov r0, #2
    bl sub_8002E14
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_80A7912
    pop {r4-r7,pc}
loc_80A7912:
    push {r4-r7,lr}
    ldr r0, [r6,#8]
    str r0, [r5,#0xc]
    ldr r0, [r6,#0xc]
    str r0, [r5,#0x10]
    ldr r0, [r6,#0x10]
    str r0, [r5,#0x14]
loc_80A7920:
    ldrb r0, [r5,#4]
    bl sub_8142050
    ldrb r0, [r6]
    add r7, r7, r0
    ldrb r1, [r7]
    ldr r0, [pc, #0x80a794c-0x80a792c-4] // =off_80A7950
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bne loc_80A7920
    bl sub_80A7BC0
    ldr r0, [r5,#0xc]
    str r0, [r6,#8]
    ldr r0, [r5,#0x10]
    str r0, [r6,#0xc]
    ldr r0, [r5,#0x14]
    str r0, [r6,#0x10]
    bl anim_80026C4
    pop {r4-r7,pc}
off_80A794C:    .word off_80A7950
off_80A7950:    .word sub_80A79DC+1
    .word sub_80A7A40+1
    .word sub_80A7AA4+1
    .word sub_80A7AD4+1
    .word sub_80A7AE0+1
    .word sub_80A7AFA+1
    .word sub_80A7B32+1
.func
.thumb_func
sub_80A796C:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r3, [pc, #0x80a79ac-0x80a7972-2] // =dword_80A79B0
    ldrb r3, [r3,r0]
    cmp r3, #0xff
    beq loc_80A799C
    lsl r3, r3, #0x10
    ldr r0, [r5,#0x14]
    add r0, r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80a79c0-0x80a7986-2] // =unk_80A79C4
    ldrb r0, [r1,r0]
// <mkdata>
    .hword 0x1 // mov r1, r0
// <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #0xa
    orr r0, r1
    orr r0, r2
    bl sub_8002ED0
    b loc_80A79A0
loc_80A799C:
    bl sub_80048B2
loc_80A79A0:
    ldr r0, [r5,#0x24]
    add r0, #1
    str r0, [r5,#0x24]
    bl anim_80026C4
.endfunc // sub_80A796C

    pop {r4-r7,pc}
off_80A79AC:    .word dword_80A79B0
dword_80A79B0:    .word 0x3040404, 0x102, 0x0
    .word 0xFF000000
off_80A79C0:    .word unk_80A79C4
unk_80A79C4:    .byte 4
    .byte 6
    .byte 8
    .byte 0xA
    .byte 0xC
    .byte 0xE
    .byte 0x10
    .byte 0x12
    .byte 0x14
    .byte 0x16
    .byte 0x18
    .byte 0x1A
    .byte 0x1C
    .byte 0x1E
    .byte 0x1F
    .byte 0x1F
.func
.thumb_func
sub_80A79D4:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A79D4

.func
.thumb_func
sub_80A79DC:
    push {r4-r7,lr}
    ldrb r0, [r7,#1]
    strb r0, [r6,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A79DC

    ldr r3, [pc, #0x80a7a34-0x80a79ea-2] // =off_80A7A38
    ldrb r1, [r6,#2]
    lsl r1, r1, #1
    add r3, r3, r1
    mov r0, #0
    ldrsb r0, [r3,r0]
    mov r1, #1
    ldrsb r1, [r3,r1]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    ldrb r2, [r7,#3]
    mul r0, r2
    mul r1, r2
    ldr r2, [r5,#0xc]
    add r0, r0, r2
    ldr r2, [r5,#0x10]
    add r1, r1, r2
    str r0, [r6,#0x1c]
    str r1, [r6,#0x20]
    ldrb r1, [r7,#2]
    mov r0, #0x40 
    lsl r0, r0, #8
    svc 6
    str r0, [r6,#0x24]
    mov r0, #0x40 
    lsl r0, r0, #8
    sub r0, r0, r1
    strh r0, [r6,#6]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    str r0, [r6,#0x14]
    str r1, [r6,#0x18]
    mov r0, #4
    bl sub_80A7BA2
    mov r0, #1
    pop {r4-r7,pc}
off_80A7A34:    .word off_80A7A38
off_80A7A38:    .word dword_8000004+4
    .word 0xF80000F8
.func
.thumb_func
sub_80A7A40:
    push {r4-r7,lr}
    bl sub_80A7C58
    bne loc_80A7A88
    ldr r7, [pc, #0x80a7aa0-0x80a7a48-4] // =dword_80065D0+16
    ldrh r3, [r6,#6]
    ldr r4, [r6,#0x24]
    sub r4, r3, r4
    ble loc_80A7A8C
    strh r4, [r6,#6]
    lsr r4, r4, #8
    mov r3, #0x40 
    sub r4, r3, r4
    lsl r4, r4, #1
    ldr r0, [pc, #0x80a7aa0-0x80a7a5c-4] // =dword_80065D0+16
    ldrsh r4, [r0,r4]
    ldr r0, [r6,#0x1c]
    ldr r1, [r6,#0x14]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r4
    push {r0}
    ldr r0, [r6,#0x20]
    ldr r1, [r6,#0x18]
    sub r0, r0, r1
    asr r0, r0, #8
    mul r0, r4
    push {r0}
    pop {r1}
    ldr r3, [r6,#0x18]
    add r1, r1, r3
    pop {r0}
    ldr r3, [r6,#0x14]
    add r0, r0, r3
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
loc_80A7A88:
    mov r0, #0
    pop {r4-r7,pc}
loc_80A7A8C:
    ldr r0, [r6,#0x1c]
    ldr r1, [r6,#0x20]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    mov r0, #1
    bl sub_80A7BA2
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
off_80A7AA0:    .word dword_80065D0+0x10
.endfunc // sub_80A7A40

.func
.thumb_func
sub_80A7AA4:
    push {r4-r7,lr}
    bl sub_80A7C58
    bne loc_80A7AD0
    ldrb r0, [r6,#3]
    tst r0, r0
    bne loc_80A7ABA
    ldrb r0, [r7,#1]
    strh r0, [r6,#4]
    mov r0, #1
    strb r0, [r6,#3]
loc_80A7ABA:
    ldrh r0, [r6,#4]
    sub r0, #1
    strh r0, [r6,#4]
    bge loc_80A7AD0
    mov r0, #0
    strb r0, [r6,#3]
    mov r0, #2
    bl sub_80A7BA2
    mov r0, #1
    pop {r4-r7,pc}
loc_80A7AD0:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_80A7AA4

.func
.thumb_func
sub_80A7AD4:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_80A7B9E
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_80A7AD4

.func
.thumb_func
sub_80A7AE0:
    push {r4-r7,lr}
    add r0, r7, #1
    bl sub_80A7B7A
    add r4, r1, #0
    ldrb r0, [r5,#4]
    bl sub_8142050
    sub r0, r4, r7
    bl sub_80A7B9E
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_80A7AE0

.func
.thumb_func
sub_80A7AFA:
    push {r4-r7,lr}
    add r0, r7, #1
    bl sub_80A7B90
    lsl r1, r1, #0x10
    str r1, [r5,#0xc]
    add r0, r7, #3
    bl sub_80A7B90
    lsl r1, r1, #0x10
    str r1, [r5,#0x10]
    bl sub_81420B0
    str r0, [r5,#0x14]
    add r0, r7, #5
    bl sub_80A7B90
    add r0, r1, #0
    strb r0, [r6,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A7AFA

    mov r0, #7
    bl sub_80A7BA2
    mov r0, #1
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7B32:
    push {r4-r7,lr}
    bl sub_80A7C58
    bne loc_80A7B76
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r4, [r4,#0x18]
    ldr r0, [r5,#0x14]
    ldr r1, [r4,#0x24]
    bne loc_80A7B76
    ldr r0, [r5,#0xc]
    ldr r1, [r4,#0x1c]
    sub r0, r0, r1
    ldr r2, [r5,#0x10]
    ldr r3, [r4,#0x20]
    sub r2, r2, r3
    asr r0, r0, #0x10
    add r1, r0, #0
    asr r2, r2, #0x10
    add r3, r2, #0
    mul r0, r1
    mul r2, r3
    add r0, r0, r2
    ldrb r1, [r7,#1]
    add r2, r1, #0
    mul r2, r1
    add r2, r2, r2
    cmp r0, r2
    bge loc_80A7B76
    mov r0, #2
    bl sub_80A7BA2
    mov r0, #1
    pop {r4-r7,pc}
loc_80A7B76:
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_80A7B32

.func
.thumb_func
sub_80A7B7A:
    ldrb r1, [r0]
    ldrb r2, [r0,#1]
    lsl r2, r2, #8
    orr r1, r2
    ldrb r2, [r0,#2]
    lsl r2, r2, #0x10
    orr r1, r2
    ldrb r2, [r0,#3]
    lsl r2, r2, #0x18
    orr r1, r2
    mov pc, lr
.endfunc // sub_80A7B7A

.func
.thumb_func
sub_80A7B90:
    ldrb r1, [r0]
    ldrb r2, [r0,#1]
    lsl r2, r2, #8
    orr r1, r2
    lsl r1, r1, #0x10
    asr r1, r1, #0x10
    mov pc, lr
.endfunc // sub_80A7B90

.func
.thumb_func
sub_80A7B9E:
    strb r0, [r6]
    mov pc, lr
.endfunc // sub_80A7B9E

.func
.thumb_func
sub_80A7BA2:
    ldrb r1, [r6]
    add r1, r1, r0
    strb r1, [r6]
    mov pc, lr
.endfunc // sub_80A7BA2

    ldrb r1, [r6,#1]
    orr r1, r0
    strb r1, [r6,#1]
    mov pc, lr
    ldrb r1, [r6,#1]
    bic r1, r0
    strb r1, [r6,#1]
    mov pc, lr
    ldrb r1, [r6,#1]
    tst r1, r0
    mov pc, lr
.func
.thumb_func
sub_80A7BC0:
    push {r4-r7,lr}
    bl sub_80A7C58
    bne locret_80A7C3C
    ldr r4, [pc, #0x80a7c40-0x80a7bc8-4] // =dword_80A7C44
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r0, [r5,#0x14]
    ldr r1, [r7,#0x24]
    cmp r0, r1
    bne locret_80A7C3C
    ldr r0, [r4]
    ldr r1, [r4,#0x4] // (dword_80A7C48 - 0x80a7c44)
    ldr r2, [r7,#0x1c]
    ldr r3, [r7,#0x20]
    add r2, r2, r0
    add r3, r3, r1
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    sub r2, r2, r0
    blt locret_80A7C3C
    sub r3, r3, r1
    blt locret_80A7C3C
    ldr r0, [r4,#0x8] // (dword_80A7C4C - 0x80a7c44)
    ldr r1, [r4,#0xc] // (dword_80A7C50 - 0x80a7c44)
    cmp r2, r0
    bgt locret_80A7C3C
    cmp r3, r1
    bgt locret_80A7C3C
    ldrb r0, [r5,#4]
    bl sub_81420F0
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0x73 
    bl sound_play
    bl sub_81418F0
    bl sub_81418E4
    add r4, r2, #0
    bl sub_8142080
    bl sub_81420C8
    cmp r0, r4
    bne locret_80A7C3C
    mov r0, #0x17
    mov r1, #0x31 
    bl sub_802F110
    bl sub_8142080
    add r1, r0, #0
    ldr r0, [pc, #0x80a7c54-0x80a7c36-2] // =dword_8089D64+116
    bl sub_8036E90
locret_80A7C3C:
    pop {r4-r7,pc}
    .byte 0, 0
off_80A7C40:    .word dword_80A7C44
dword_80A7C44:    .word 0x80000
dword_80A7C48:    .word 0x80000
dword_80A7C4C:    .word 0x100000
dword_80A7C50:    .word 0x100000
off_80A7C54:    .word dword_8089D64+0x74
.endfunc // sub_80A7BC0

.func
.thumb_func
sub_80A7C58:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A7C7E
    bl sub_8036F36
    bne loc_80A7C7E
    bl sub_809E462
    bne loc_80A7C7E
    bl engine_isScreeneffectAnimating
    beq loc_80A7C7E
    bl sub_809E3A2
    beq loc_80A7C7E
    mov r4, #0
loc_80A7C7E:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_80A7C58

loc_80A7C84:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a7c94-0x80a7c86-2] // =off_80A7C98
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7C94:    .word off_80A7C98
off_80A7C98:    .word sub_80A7CA4+1
    .word sub_80A7CEA+1
    .word sub_80A7CF6+1
.func
.thumb_func
sub_80A7CA4:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x4b 
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A7CA4

    bl sub_8002F90
    mov r0, #2
    bl sub_8002E14
    mov r0, #1
    bl sprite_setPallete
    push {r4-r7}
    mov r0, #0
    ldr r1, [r5,#0xc]
    ldr r2, [r5,#0x10]
    ldr r3, [r5,#0x14]
    mov r4, #0x7a 
    bl sub_80047E0
    pop {r4-r7}
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A7CEA
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7CEA:
    push {r4-r7,lr}
    bl sub_80A7CFE
    bl anim_80026C4
.endfunc // sub_80A7CEA

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7CF6:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A7CF6

.func
.thumb_func
sub_80A7CFE:
    push {r4-r7,lr}
    ldr r4, [pc, #0x80a7d74-0x80a7d00-4] // =dword_80A7D78
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r0, [r4]
    ldr r1, [r4,#0x4] // (dword_80A7D7C - 0x80a7d78)
    ldr r2, [r7,#0x1c]
    ldr r3, [r7,#0x20]
    add r2, r2, r0
    add r3, r3, r1
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    sub r2, r2, r0
    blt locret_80A7D70
    sub r3, r3, r1
    blt locret_80A7D70
    ldr r0, [r4,#0x8] // (dword_80A7D80 - 0x80a7d78)
    ldr r1, [r4,#0xc] // (dword_80A7D84 - 0x80a7d78)
    cmp r2, r0
    bgt locret_80A7D70
    cmp r3, r1
    bgt locret_80A7D70
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_80A7D70
    bl sub_8036F36
    bne locret_80A7D70
    bl sub_809E462
    bne locret_80A7D70
    bl engine_isScreeneffectAnimating
    beq locret_80A7D70
    mov r0, #0x17
    mov r1, #0x31 
    bl sub_802F110
    ldr r4, [r7,#0x24]
    ldr r0, [r5,#0x14]
    cmp r0, r4
    bne loc_80A7D60
    ldr r0, [pc, #0x80a7d88-0x80a7d56-2] // =dword_8089DF4+80
    add r1, r5, #0
    bl sub_8036E90
    b locret_80A7D70
loc_80A7D60:
    bl sub_81420B0
    cmp r0, r4
    bne locret_80A7D70
    ldr r0, [pc, #0x80a7d8c-0x80a7d68-4] // =dword_8089DF4+484
    add r1, r5, #0
    bl sub_8036E90
locret_80A7D70:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7D74:    .word dword_80A7D78
dword_80A7D78:    .word 0xE0000
dword_80A7D7C:    .word 0xE0000
dword_80A7D80:    .word 0x1C0000
dword_80A7D84:    .word 0x1C0000
off_80A7D88:    .word dword_8089DF4+0x50
off_80A7D8C:    .word dword_8089DF4+0x1E4
.endfunc // sub_80A7CFE

loc_80A7D90:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    bl sub_81428C2
    add r7, r0, #0
    ldr r0, [pc, #0x80a7da8-0x80a7d9a-2] // =off_80A7DAC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7DA8:    .word off_80A7DAC
off_80A7DAC:    .word sub_80A7DB8+1
    .word sub_80A7E14+1
    .word sub_80A7E0C+1
.func
.thumb_func
sub_80A7DB8:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x4e 
    bl sub_80026E4
    ldrb r0, [r7,#3]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    .byte 0x5B 
    .byte 0xF7
    .byte 0xDD
    .byte 0xF8
    .byte 0
    .byte 0xF0
    .byte 0x23 
    .byte 0xF9
    .byte 0xB8
    .byte 0x88
    .byte 0x9A
    .byte 0xF0
    .byte 0x44 
    .byte 0xFD
    .byte 0xE8
    .byte 0x60 
    .byte 0x29 
    .byte 0x61 
    .byte 0xFA
    .byte 0x22 
    .byte 0x12
    .byte 4
    .byte 0x6A 
    .byte 0x61 
    .byte 0x28 
    .byte 0x1C
    .byte 0xC
    .byte 0x30 
    .byte 0x89
    .byte 0xF7
    .byte 0x10
    .byte 0xFC
    .byte 0
    .byte 4
    .byte 0x68 
    .byte 0x61 
    .byte 0x28 
    .byte 0x1C
    .byte 0xC
    .byte 0x30 
    .byte 0x8D
    .byte 0xF7
    .byte 0x4B 
    .byte 0xFC
    .byte 0x5B 
    .byte 0xF7
    .byte 9
    .byte 0xF8
    .byte 4
    .byte 0x20
    .byte 0x28 
    .byte 0x72 
    .byte 0
    .byte 0xF0
    .byte 5
    .byte 0xF8
    .byte 0xF0
    .byte 0xBD
.endfunc // sub_80A7DB8

.func
.thumb_func
sub_80A7E0C:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A7E0C

.func
.thumb_func
sub_80A7E14:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a7e28-0x80a7e16-2] // =off_80A7E2C
    ldrb r1, [r7,#6]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl anim_80026C4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7E28:    .word off_80A7E2C
off_80A7E2C:    .word sub_80A7E44+1
    .word sub_80A7E4C+1
    .word loc_80A7EDA+1
    .word sub_80A7F58+1
    .word sub_80A8006+1
    .word sub_80A800A+1
.endfunc // sub_80A7E14

.func
.thumb_func
sub_80A7E44:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#9]
    pop {r4-r7,pc}
.endfunc // sub_80A7E44

.func
.thumb_func
sub_80A7E4C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a7e5c-0x80a7e4e-2] // =off_80A7E60
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7E5C:    .word off_80A7E60
off_80A7E60:    .word sub_80A7E6C+1
    .word sub_80A7EA4+1
    .word sub_80A7EBE+1
.endfunc // sub_80A7E4C

.func
.thumb_func
sub_80A7E6C:
    push {r4-r7,lr}
    ldrb r0, [r7,#3]
    add r0, #4
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A7E6C

    mov r0, #0x1e
    str r0, [r5,#0x24]
    mov r6, #1
    bl sub_809E2B8
    bl sub_80A8038
    ldrb r1, [r7,#3]
    cmp r0, r1
    bne loc_80A7E90
    ldrb r6, [r7,#2]
loc_80A7E90:
    ldrb r0, [r7,#2]
    sub r0, r0, r6
    strb r0, [r7,#2]
    cmp r0, #0
    ble loc_80A7E9E
    bl sub_80A8020
loc_80A7E9E:
    mov r0, #4
    strb r0, [r5,#9]
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7EA4:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    sub r0, #1
    str r0, [r5,#0x24]
    bgt locret_80A7EBC
    ldrb r0, [r7,#3]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    mov r0, #8
    strb r0, [r5,#9]
locret_80A7EBC:
    pop {r4-r7,pc}
.endfunc // sub_80A7EA4

.func
.thumb_func
sub_80A7EBE:
    push {r4-r7,lr}
    ldrb r0, [r7,#2]
    cmp r0, #0
    bgt loc_80A7ED0
    mov r0, #8
    strb r0, [r7,#6]
    mov r0, #0
    strb r0, [r5,#9]
    b locret_80A7ED8
loc_80A7ED0:
    mov r0, #0
    strb r0, [r7,#6]
    mov r0, #0
    strb r0, [r5,#9]
locret_80A7ED8:
    pop {r4-r7,pc}
.endfunc // sub_80A7EBE

loc_80A7EDA:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a7ee8-0x80a7edc-4] // =off_80A7EEC
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
off_80A7EE8:    .word off_80A7EEC
off_80A7EEC:    .word sub_80A7EF8+1
    .word sub_80A7F14+1
    .word sub_80A7F26+1
.func
.thumb_func
sub_80A7EF8:
    push {r4-r7,lr}
    ldrb r0, [r7,#3]
    add r0, #0xc
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A7EF8

    mov r0, #0x7e 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    strb r0, [r5,#9]
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7F14:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_80A7F24
    mov r0, #8
    strb r0, [r5,#9]
locret_80A7F24:
    pop {r4-r7,pc}
.endfunc // sub_80A7F14

.func
.thumb_func
sub_80A7F26:
    push {r4-r7,lr}
    mov r0, #0
    strh r0, [r7,#4]
    mov r0, #0
    strb r0, [r7,#6]
    mov r0, #0
    ldrb r0, [r5,#4]
    bl sub_81427A4
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    bl sub_8142184
    ldr r0, [pc, #0x80a7f54-0x80a7f42-2] // =0x1650
    ldrb r1, [r5,#4]
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    bl sub_80048B2
    pop {r4-r7,pc}
dword_80A7F54:    .word 0x1650
.endfunc // sub_80A7F26

.func
.thumb_func
sub_80A7F58:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a7f68-0x80a7f5a-2] // =off_80A7F6C
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A7F68:    .word off_80A7F6C
off_80A7F6C:    .word sub_80A7F78+1
    .word sub_80A7FAC+1
    .word sub_80A7FD4+1
.endfunc // sub_80A7F58

.func
.thumb_func
sub_80A7F78:
    push {r4-r7,lr}
    ldrb r0, [r7,#2]
    bl sub_8142204
    bl sub_8142990
    add r4, r0, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    bl sub_8142816
    add r1, r4, #0
    bl sub_8142896
    bl sub_80A8038
    strb r0, [r5,#7]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A7F78

    mov r0, #0x1e
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#9]
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A7FAC:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    sub r0, #1
    str r0, [r5,#0x24]
    bgt locret_80A7FD2
    ldrb r0, [r5,#7]
    add r0, #8
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    mov r0, #0x2b 
    add r0, #0xff
    bl sound_play
    mov r0, #4
    str r0, [r5,#0x24]
    mov r0, #8
    strb r0, [r5,#9]
locret_80A7FD2:
    pop {r4-r7,pc}
.endfunc // sub_80A7FAC

.func
.thumb_func
sub_80A7FD4:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_80A8004
    mov r0, #0x2b 
    add r0, #0xff
    bl sound_play
    ldr r0, [r5,#0x24]
    sub r0, #1
    str r0, [r5,#0x24]
    bge locret_80A8004
    ldrb r0, [r5,#7]
    add r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    mov r0, #0x10
    strb r0, [r7,#6]
    mov r0, #0
    strb r0, [r5,#9]
locret_80A8004:
    pop {r4-r7,pc}
.endfunc // sub_80A7FD4

.func
.thumb_func
sub_80A8006:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_80A8006

.func
.thumb_func
sub_80A800A:
    push {r4-r7,lr}
    ldrb r0, [r7,#3]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A800A

    mov r0, #0
    strb r0, [r7,#6]
    mov r0, #0
    strb r0, [r5,#9]
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A8020:
    push {r4-r7,lr}
    ldrb r0, [r7,#2]
    ldr r1, [pc, #0x80a8030-0x80a8024-4] // =off_80A8034
    ldrb r0, [r1,r0]
    bl sprite_setPallete
    pop {r4-r7,pc}
    .byte 0, 0
off_80A8030:    .word off_80A8034
off_80A8034:    .word unk_2010000
.endfunc // sub_80A8020

.func
.thumb_func
sub_80A8038:
    push {r4-r7,lr}
    ldr r1, [pc, #0x80a8040-0x80a803a-2] // =dword_80A8044
    ldrb r0, [r1,r0]
    pop {r4-r7,pc}
off_80A8040:    .word dword_80A8044
dword_80A8044:    .word 0x1FF00FF, 0x3FF02FF, 0x82FEEE, 0xFFC0, 0xC2FF0E, 0xFFC0
    .word 0x42002E, 0xFFC0, 0x62006E, 0xFFC0, 0xFF82018E, 0xFFC0
    .word 0xFF22016E, 0xFFC0, 0xFF4201AE, 0xFFC0, 0xFFCAFF66, 0xFFC0
    .word 0xFF6AFF86, 0xFFC0, 0xFF2AFF86, 0xFFC0, 0xFFEA0086, 0xFFC0
    .word 0xFF8A00A6, 0xFFC0, 0xFF4A00C6, 0xFFC0, 0xFFCA01A6, 0xFFC0
    .word 0xFF6A0186, 0xFFC0, 0xFF2A01A6, 0xFFC0, 0xAFFE6, 0xFFC0
    .word 0xCA0026, 0xFFC0, 0x6A0026, 0xFFC0, 0xCA00E6, 0xFFC0
    .word 0x8A00E6, 0xFFC0, 0x4A0126, 0xFFC0, 0xFFAA0126, 0xFFC0
    .word 0xFF8A00E6, 0xFFC0, 0xFF6A0126, 0xFFC0, 0x13A0036, 0xFFC0
    .word 0x13AFFF6, 0xFFC0, 0xFA0016, 0xFFC0, 0x3A00B6, 0xFFC0
    .word 0x1A0036, 0xFFC0, 0xFFDA00B6, 0xFFC0, 0xFF9AFF36, 0xFFC0
    .word 0xFF7AFF76, 0xFFC0, 0xFF5AFFB6, 0xFFC0, 0xFE9AFFF6, 0xFFC0
    .word 0xFE7A0036, 0xFFC0, 0xFE3A0016, 0xFFC0, 0x9F609F6, 0x9F709F7
    .word 0x9F809F8, 0x9F909F8, 0x9F909F9, 0x9FA09FA, 0x9FB09FA, 0x9FB09FB
    .word 0x9FC09FC, 0x9FD09FC, 0x9FD09FD, 0x9FE09FE, 0xFFA09FE, 0xFFA0FFA
    .word 0xFFB0FFB, 0xFFC0FFB, 0xFFC0FFC, 0xFFD0FFD, 0x9DD0FFD, 0x9DF09DE
    .word 0x9E109E0, 0x9E309E2, 0x9E509E4, 0x9E709E6, 0x9E909E8, 0x9EB09EA
    .word 0x9ED09EC, 0x9EF09EE, 0x9F109F0, 0x9F309F2, 0x9F509F4, 0xFC70FC6
    .word 0xFC90FC8, 0xFCB0FCA, 0xFCD0FCC, 0xFCF0FCE, 0xFD10FD0
.endfunc // sub_80A8038

loc_80A8208:
    push {lr}
    ldr r6, [pc, #0x80a8228-0x80a820a-2] // =unk_2000B40
    ldr r0, [pc, #0x80a8218-0x80a820c-4] // =off_80A821C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A8218:    .word off_80A821C
off_80A821C:    .word sub_80A822C+1
    .word sub_80A827C+1
    .word sub_80A829C+1
off_80A8228:    .word unk_2000B40
.func
.thumb_func
sub_80A822C:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x56 
    bl sub_80026E4
    bl sub_80A8324
    bl sub_80A82DC
    strb r0, [r5,#5]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A822C

    bl sub_8002F90
    mov r0, #2
    bl sub_8002E14
    bl sub_80A82A4
    add r4, r0, #0
    ldrh r0, [r4]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    ldrh r0, [r4,#4]
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A827C
    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A827C:
    push {r4-r7,lr}
    bl sub_80A82DC
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq loc_80A8294
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
loc_80A8294:
    bl anim_80026C4
.endfunc // sub_80A827C

    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A829C:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A829C

.func
.thumb_func
sub_80A82A4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    cmp r1, #0x85
    bne loc_80A82B4
    mov r1, #3
    b loc_80A82B6
loc_80A82B4:
    ldrb r1, [r0,#5]
loc_80A82B6:
    lsl r1, r1, #2
    ldr r2, [pc, #0x80a82c8-0x80a82b8-4] // =off_80A82CC
    ldr r0, [r2,r1]
    ldrb r2, [r5,#4]
    mov r3, #8
    mul r2, r3
    add r0, r0, r2
    pop {pc}
    .balign 4, 0x00
off_80A82C8:    .word off_80A82CC
off_80A82CC:    .word dword_80A8044+8
    .word dword_80A8044+0x40
    .word dword_80A8044+0x88
    .word dword_80A8044+0xD0
.endfunc // sub_80A82A4

.func
.thumb_func
sub_80A82DC:
    push {r4,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    cmp r1, #0x85
    bne loc_80A82EC
    mov r1, #3
    b loc_80A82EE
loc_80A82EC:
    ldrb r1, [r0,#5]
loc_80A82EE:
    lsl r1, r1, #2
    ldr r2, [pc, #0x80a8310-0x80a82f0-4] // =unk_80A8314
    ldr r0, [r2,r1]
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r3, [r0,r2]
    mov r4, #0
    add r0, r3, #0
    bl zf_802F168
    beq loc_80A830C
    mov r4, #1
    mov r0, #3
    bl sub_8002E14
loc_80A830C:
    add r0, r4, #0
    pop {r4,pc}
off_80A8310:    .word unk_80A8314
unk_80A8314:    .byte 0xBE
    .byte 0x81
    .byte 0xA
    .byte 8
    .byte 0xCC
    .byte 0x81
    .byte 0xA
    .byte 8
    .byte 0xDE
    .byte 0x81
    .byte 0xA
    .byte 8
    .byte 0xF0
    .byte 0x81
    .byte 0xA
    .byte 8
.endfunc // sub_80A82DC

.func
.thumb_func
sub_80A8324:
    push {r4-r7,lr}
    mov r0, #9
    mov r1, #0xd6
    bl sub_802F164
    beq locret_80A8368
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r4, [r0,#4]
    cmp r4, #0x85
    bne loc_80A833E
    mov r4, #3
    b loc_80A8340
loc_80A833E:
    ldrb r4, [r0,#5]
loc_80A8340:
    lsl r4, r4, #2
    ldrb r6, [r5,#4]
    lsl r6, r6, #1
    ldr r2, [pc, #0x80a836c-0x80a8346-2] // =off_80A8374
    ldr r0, [r2,r4]
    ldrh r7, [r0,r6]
    ldr r2, [pc, #0x80a8370-0x80a834c-4] // =loc_80A8384
    ldr r0, [r2,r4]
    ldrh r6, [r0,r6]
    add r0, r7, #0
    bl zf_802F168
    bne loc_80A8362
    add r0, r6, #0
    bl sub_802F114
    b locret_80A8368
loc_80A8362:
    add r0, r6, #0
    bl sub_802F130
locret_80A8368:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A836C:    .word off_80A8374
off_80A8370:    .word loc_80A8384
off_80A8374:    .word dword_80A8044+0x130
.endfunc // sub_80A8324

    strh r2, [r0,#0xc]
    lsr r2, r1, #0x20
    strh r4, [r2,#0xc]
    lsr r2, r1, #0x20
    strh r6, [r4,#0xc]
    lsr r2, r1, #0x20
loc_80A8384:
    strh r6, [r7,#0xc]
    lsr r2, r1, #0x20
    strh r4, [r1,#0xe]
    lsr r2, r1, #0x20
    strh r6, [r3,#0xe]
    lsr r2, r1, #0x20
    strh r0, [r6,#0xe]
    lsr r2, r1, #0x20
loc_80A8394:
    push {lr}
    ldr r6, [pc, #0x80a83b4-0x80a8396-2] // =unk_2000B40
    ldr r0, [pc, #0x80a83a4-0x80a8398-4] // =off_80A83A8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A83A4:    .word off_80A83A8
off_80A83A8:    .word sub_80A83B8+1
    .word sub_80A8424+1
    .word sub_80A8484+1
off_80A83B4:    .word unk_2000B40
.func
.thumb_func
sub_80A83B8:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x52 
    bl sub_80026E4
    bl sub_80A84C4
    bl sub_80A8548
    ldrb r0, [r5,#4]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A83B8

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #9
    mov r1, #0xff
    bl sub_802F12C
    mov r0, #9
    mov r1, #0xd7
    bl sub_802F164
    beq loc_80A8418
    ldrh r0, [r6,#0x16]
    ldrh r1, [r6,#0x18]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    mov r2, #0
    str r2, [r5,#0x14]
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #9
    mov r1, #0xd7
    bl sub_802F12C
loc_80A8418:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A8424
    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A8424:
    push {r4-r7,lr}
    mov r0, #9
    mov r1, #0xff
    bl sub_802F164
    beq loc_80A843A
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #1
    strb r0, [r5,#7]
    b loc_80A8478
loc_80A843A:
    bl sub_8036F36
    bne loc_80A8478
    bl sub_809E462
    bne loc_80A8478
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A8478
    mov r0, #9
    mov r1, #0xd4
    bl sub_802F164
    bne loc_80A8478
    mov r0, #1
    bl sub_811EBE0
    bne loc_80A8478
    ldrb r4, [r5,#9]
    cmp r4, #0
    bgt loc_80A8470
    bl sub_80A856C
    bne loc_80A8478
    add r4, #1
    strb r4, [r5,#9]
loc_80A8470:
    bl sub_80A85B4
    bl sub_80A860C
loc_80A8478:
    bl sub_80A8644
    bl anim_80026C4
.endfunc // sub_80A8424

    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A8484:
    push {lr}
    ldr r0, [pc, #0x80a84c0-0x80a8486-2] // =dword_808C684+200
    bl sub_8036F70
    bne locret_80A84BC
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    bne locret_80A84BC
    mov r0, #0
    bl sub_8001172
    mov r0, #9
    mov r1, #0xd8
    bl sub_802F12C
    mov r0, #9
    mov r1, #0xff
    bl sub_802F12C
    mov r0, #9
    mov r1, #0xd9
    bl sub_802F12C
    bl reqBBS_8140A0C
    bl sub_80048B2
locret_80A84BC:
    pop {pc}
    .byte 0, 0
off_80A84C0:    .word dword_808C684+0xC8
.endfunc // sub_80A8484

.func
.thumb_func
sub_80A84C4:
    push {r4-r7,lr}
    bl sub_80A84FC
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a84f4-0x80a84cc-4] // =dword_8006660
    ldrsh r4, [r1,r0]
    ldr r1, [pc, #0x80a84f8-0x80a84d0-4] // =dword_80065D0+16
    ldrsh r6, [r1,r0]
    mov r7, #0x60 
    lsl r7, r7, #8
    mul r4, r7
    mul r6, r7
    bl sub_809E1AE
    add r0, r0, r4
    add r1, r1, r6
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    mov r3, #0x80
    lsl r3, r3, #0x10
    add r2, r2, r3
    str r2, [r5,#0x14]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A84F4:    .word dword_8006660
off_80A84F8:    .word dword_80065D0+0x10
.endfunc // sub_80A84C4

.func
.thumb_func
sub_80A84FC:
    push {lr}
    mov r0, #8
    bl reqBBS_81409D0
    add r1, r0, #0
    ldr r2, [pc, #0x80a850c-0x80a8506-2] // =dword_80A8510
    ldrb r0, [r2,r0]
    pop {pc}
off_80A850C:    .word dword_80A8510
dword_80A8510:    .word 0x7F3F1F00, 0xFFDFBF9F
.endfunc // sub_80A84FC

.func
.thumb_func
sub_80A8518:
    push {r4,lr}
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_800118A
    cmp r0, #0
    beq loc_80A8536
    add r4, r0, #0
    ldr r0, [pc, #0x80a853c-0x80a8530-4] // =dword_80A8540
    ldrb r0, [r0,r4]
    b locret_80A8538
loc_80A8536:
    ldrb r0, [r5,#4]
locret_80A8538:
    pop {r4,pc}
    .balign 4, 0x00
off_80A853C:    .word dword_80A8540
dword_80A8540:    .word 0x3000101, 0x2
.endfunc // sub_80A8518

.func
.thumb_func
sub_80A8548:
    push {r4,lr}
    ldrh r0, [r6,#0x1a]
    ldrh r1, [r6,#0x1c]
    bl sub_80A8518
    add r4, r0, #0
    ldrb r1, [r5,#4]
    cmp r0, r1
    beq locret_80A8568
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    strb r4, [r5,#4]
locret_80A8568:
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A8548

.func
.thumb_func
sub_80A856C:
    push {lr}
    mov r1, #4
    lsl r1, r1, #0x10
    ldr r0, [r5,#0x14]
    sub r0, r0, r1
    str r0, [r5,#0x14]
    cmp r0, #0
    bgt locret_80A857E
    mov r0, #0
locret_80A857E:
    pop {pc}
.endfunc // sub_80A856C

.func
.thumb_func
sub_80A8580:
    push {r4,lr}
    mov r4, #0
    ldrh r0, [r6,#0x1a]
    ldrh r1, [r6,#0x1c]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    ldr r2, [r5,#0xc]
    ldr r3, [r5,#0x10]
    sub r0, r0, r2
    sub r1, r1, r3
    bl calcAngle_800117C
    cmp r0, #0x20 
    beq loc_80A85A0
    cmp r0, #0xa0
    bne loc_80A85A2
loc_80A85A0:
    mov r4, #4
loc_80A85A2:
    ldr r1, [pc, #0x80a85a8-0x80a85a2-2] // =unk_80A85AC
    ldr r0, [r1,r4]
    pop {r4,pc}
off_80A85A8:    .word unk_80A85AC
unk_80A85AC:    .byte 0
    .byte 0x40 
    .byte 2
    .byte 0
    .byte 0
    .byte 0x20
    .byte 1
    .byte 0
.endfunc // sub_80A8580

.func
.thumb_func
sub_80A85B4:
    push {r4-r7,lr}
    mov r4, #0
    bl sub_80A8548
    bl sub_80A8580
    add r2, r0, #0
    ldr r0, [r5,#0xc]
    ldrh r1, [r6,#0x1a]
    lsl r1, r1, #0x10
    cmp r0, r1
    beq loc_80A85E4
    bgt loc_80A85D8
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A85E4
    add r0, r0, r2
    b loc_80A85E0
loc_80A85D8:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A85E4
    sub r0, r0, r2
loc_80A85E0:
    mov r4, #1
    str r0, [r5,#0xc]
loc_80A85E4:
    ldr r0, [r5,#0x10]
    ldrh r1, [r6,#0x1c]
    lsl r1, r1, #0x10
    cmp r0, r1
    beq loc_80A8608
    bgt loc_80A85FC
    sub r3, r1, r0
    cmp r3, r2
    blt loc_80A8608
    add r0, r0, r2
    mov r4, #1
    b loc_80A8604
loc_80A85FC:
    sub r3, r0, r1
    cmp r3, r2
    blt loc_80A8608
    sub r0, r0, r2
loc_80A8604:
    mov r4, #1
    str r0, [r5,#0x10]
loc_80A8608:
    str r4, [r6,#0xc]
    pop {r4-r7,pc}
.endfunc // sub_80A85B4

.func
.thumb_func
sub_80A860C:
    push {r4,lr}
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164
    bne locret_80A8640
    bl sub_809E1AE
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r4, #8
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne locret_80A8640
    mov r0, #9
    mov r1, #0xd9
    bl sub_802F110
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0x50 
    strb r0, [r5,#7]
locret_80A8640:
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A860C

.func
.thumb_func
sub_80A8644:
    push {r4,lr}
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    asr r0, r0, #0x10
    asr r1, r1, #0x10
    strh r0, [r6,#0x16]
    strh r1, [r6,#0x18]
    pop {r4,pc}
.endfunc // sub_80A8644

loc_80A8654:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a8664-0x80a8656-2] // =off_80A8668
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A8664:    .word off_80A8668
off_80A8668:    .word sub_80A8674+1
    .word sub_80A86A0+1
    .word sub_80A86AC+1
.func
.thumb_func
sub_80A8674:
    push {r4-r7,lr}
    bl sub_80A86B4
    mov r0, #0x80
    mov r1, #0x10
    mov r2, #0x27 
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A8674

    bl sub_8002F90
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    str r0, [r5,#0x24]
    bl sub_80A86A0
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A86A0:
    push {r4-r7,lr}
    bl sub_80A86B4
    bl anim_80026C4
.endfunc // sub_80A86A0

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A86AC:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A86AC

.func
.thumb_func
sub_80A86B4:
    push {r4-r7,lr}
    mov r4, #1
    bl sub_81421D8
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r6, r0, #0
    tst r0, r0
    beq loc_80A86EA
    bl sub_81421D0
    bl sub_8142190
    beq loc_80A86EA
    mov r4, #3
    ldrb r0, [r5,#4]
    cmp r0, #0
    bne loc_80A86EA
    ldr r0, [r5,#0x24]
    tst r0, r0
    bne loc_80A86EA
    mov r0, #1
    str r0, [r5,#0x24]
    mov r0, #0xbd
    bl sound_play
loc_80A86EA:
    strb r4, [r5]
    add r0, r6, #0
    bl sub_8142868
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    bl sub_809E1AE
    str r2, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    ldr r2, [r5,#0x14]
    mov r0, #0xc
    lsl r0, r0, #0x10
    add r0, r0, r2
    str r0, [r5,#0x14]
    mov r4, #4
    add r0, r6, #0
    bl sub_8142B04
    beq loc_80A871E
    mov r4, #5
loc_80A871E:
    add r0, r4, #0
    bl sprite_setPallete
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A86B4

loc_80A8728:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a8738-0x80a872a-2] // =off_80A873C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A8738:    .word off_80A873C
off_80A873C:    .word sub_80A8748+1
    .word sub_80A87D2+1
    .word sub_80A87E8+1
.func
.thumb_func
sub_80A8748:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_80A8754
    bl sub_81421D0
loc_80A8754:
    add r6, r0, #0
    ldr r7, [pc, #0x80a87ac-0x80a8756-2] // =dword_80A87B0
    lsl r0, r0, #2
    add r7, r7, r0
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    ldrb r1, [r7]
    ldrb r2, [r7,#1]
    bl sub_80026E4
    ldrb r0, [r7,#2]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A8748

    bl sub_8002F90
    bl sub_809E1AE
    str r2, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    ldr r0, [r5,#0x14]
    ldrb r1, [r7,#3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x14]
    ldr r0, [pc, #0x80a87c4-0x80a8794-4] // =dword_80A87C8
    lsl r6, r6, #1
    ldrh r0, [r0,r6]
    tst r0, r0
    beq loc_80A87A2
    bl sound_play
loc_80A87A2:
    mov r0, #4
    strb r0, [r5,#8]
    bl anim_80026C4
    pop {r4-r7,pc}
off_80A87AC:    .word dword_80A87B0
dword_80A87B0:    .word 0x14F1C, 0x4F1C, 0x24F1C, 0x10000414, 0x8000414
off_80A87C4:    .word dword_80A87C8
dword_80A87C8:    .word 0xB000FA, 0xAF010A
    .byte 0x0, 0x0
.func
.thumb_func
sub_80A87D2:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A87E2
    mov r0, #8
    strb r0, [r5,#8]
loc_80A87E2:
    bl anim_80026C4
.endfunc // sub_80A87D2

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A87E8:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A87E8

loc_80A87F0:
    push {lr}
    ldr r6, [pc, #0x80a8810-0x80a87f2-2] // =unk_2011A90
    ldr r0, [pc, #0x80a8800-0x80a87f4-4] // =off_80A8804
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A8800:    .word off_80A8804
off_80A8804:    .word loc_80A8814+1
    .word sub_80A8848+1
    .word sub_80A8860+1
off_80A8810:    .word unk_2011A90
loc_80A8814:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0
    bl sub_80026E4
    .word 0xF75A2000
    .word 0xF759FABD
    .word 0xF75AFF3B, 0x1C28FBAF, 0xF78C300C, 0xF75AFF2D, 0x2004FAEB
    .word 0xF0007228, 0xBDF0F801
.func
.thumb_func
sub_80A8848:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A8858
    mov r0, #8
    strb r0, [r5,#8]
loc_80A8858:
    bl anim_80026C4
.endfunc // sub_80A8848

    pop {r4-r7,pc}
    .byte 0, 0
.func
.thumb_func
sub_80A8860:
    push {lr}
    mov r0, #5
    mov r1, #0xe0
    bl sub_802F12C
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A8860

loc_80A8870:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a8880-0x80a8872-2] // =off_80A8884
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A8880:    .word off_80A8884
off_80A8884:    .word sub_80A8894+1
    .word sub_80A88E2+1
    .word sub_80A8918+1
    .word sub_80A8980+1
.func
.thumb_func
sub_80A8894:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    ldr r2, [pc, #0x80a88dc-0x80a889e-2] // =unk_80A88E0
    ldrb r3, [r5,#5]
    ldrb r2, [r2,r3]
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A8894

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #0
    str r0, [r5,#0x28]
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    str r0, [r5,#0x2c]
    str r1, [r5,#0x30]
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A88E2
    pop {r4-r7,pc}
off_80A88DC:    .word unk_80A88E0
unk_80A88E0:    .byte 0x67 
    .byte 0x68 
.func
.thumb_func
sub_80A88E2:
    push {r4-r7,lr}
    bl sub_80A8988
    push {r4-r7}
    mov r6, #0x28 
    add r6, r6, r5
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    ldr r2, [r5,#0x14]
    ldr r3, [pc, #0x80a890c-0x80a88f4-4] // =0x80A
    ldr r4, [pc, #0x80a8910-0x80a88f6-2] // =0x40000
    ldr r5, [pc, #0x80a8914-0x80a88f8-4] // =0x10000
    bl sub_80037AC
    pop {r4-r7}
    mov r0, #0
    str r0, [r5,#0x28]
    bl anim_80026C4
.endfunc // sub_80A88E2

    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A890C:    .word 0x80A
dword_80A8910:    .word 0x40000
dword_80A8914:    .word 0x10000
.func
.thumb_func
sub_80A8918:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r3, [pc, #0x80a8958-0x80a891e-2] // =dword_80A895C
    ldrb r3, [r3,r0]
    cmp r3, #0xff
    beq loc_80A8948
    lsl r3, r3, #0x10
    ldr r0, [r5,#0x14]
    add r0, r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80a896c-0x80a8932-2] // =unk_80A8970
    ldrb r0, [r1,r0]
// <mkdata>
    .hword 0x1 // mov r1, r0
// <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #0xa
    orr r0, r1
    orr r0, r2
    bl sub_8002ED0
    b loc_80A894C
loc_80A8948:
    bl sub_80048B2
loc_80A894C:
    ldr r0, [r5,#0x24]
    add r0, #1
    str r0, [r5,#0x24]
    bl anim_80026C4
.endfunc // sub_80A8918

    pop {r4-r7,pc}
off_80A8958:    .word dword_80A895C
dword_80A895C:    .word 0x3040404, 0x102, 0x0
    .word 0xFF000000
off_80A896C:    .word unk_80A8970
unk_80A8970:    .byte 4
    .byte 6
    .byte 8
    .byte 0xA
    .byte 0xC
    .byte 0xE
    .byte 0x10
    .byte 0x12
    .byte 0x14
    .byte 0x16
    .byte 0x18
    .byte 0x1A
    .byte 0x1C
    .byte 0x1E
    .byte 0x1F
    .byte 0x1F
.func
.thumb_func
sub_80A8980:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A8980

.func
.thumb_func
sub_80A8988:
    push {r4-r7,lr}
    ldr r0, [r5,#0x28]
    ldr r1, [pc, #0x80a89d8-0x80a898c-4] // =0x10000
    tst r0, r1
    beq locret_80A89D6
    ldrb r0, [r5,#5]
    tst r0, r0
    bne loc_80A89B4
    bl sub_8002E52
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r5,#4]
    bl sub_81430B6
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    b locret_80A89D6
loc_80A89B4:
    bl sub_8002E52
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0xa5
    add r0, #0xff
    bl sound_play
    ldrb r0, [r5,#4]
    bl sub_81430B6
    add r0, r1, #0
    bl sub_802F114
    mov r0, #1
    bl sub_81433E4
locret_80A89D6:
    pop {r4-r7,pc}
dword_80A89D8:    .word 0x10000
.endfunc // sub_80A8988

loc_80A89DC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a89ec-0x80a89de-2] // =off_80A89F0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A89EC:    .word off_80A89F0
off_80A89F0:    .word sub_80A89FC+1
    .word sub_80A8A50+1
    .word sub_80A8A74+1
.func
.thumb_func
sub_80A89FC:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6a 
    bl sub_80026E4
    ldrb r0, [r5,#4]
    add r0, #0x10
    lsr r0, r0, #5
    mov r1, #7
    and r0, r1
    ldr r1, [pc, #0x80a8a44-0x80a8a16-2] // =unk_80A8A48
    ldrb r0, [r1,r0]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A89FC

    bl sub_8002F90
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A8A7C
    bl sub_80A8A7C
    bl sub_80A8A7C
    bl sub_80A8A7C
    bl sub_80A8A50
    pop {r4-r7,pc}
off_80A8A44:    .word unk_80A8A48
unk_80A8A48:    .byte 3
    .byte 2
    .byte 1
    .byte 0
    .byte 7
    .byte 6
    .byte 5
    .byte 4
.func
.thumb_func
sub_80A8A50:
    push {r4-r7,lr}
    bl sub_80A8A7C
    mov r1, #6
    ldrsh r0, [r5,r1]
    cmp r0, #0
    bgt loc_80A8A62
    bl sub_80048B2
loc_80A8A62:
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    bl anim_80026C4
.endfunc // sub_80A8A50

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A8A74:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A8A74

.func
.thumb_func
sub_80A8A7C:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a8aac-0x80a8a82-2] // =dword_80065D0+16
    ldr r2, [pc, #0x80a8ab0-0x80a8a84-4] // =dword_8006660
    ldrsh r1, [r1,r0]
    ldrsh r2, [r2,r0]
    ldrb r0, [r5,#5]
    mul r1, r0
    mul r2, r0
    lsl r1, r1, #6
    lsl r2, r2, #6
    ldr r0, [r5,#0xc]
    add r0, r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    add r0, r0, r2
    str r0, [r5,#0x10]
    mov r1, #6
    ldrsh r0, [r5,r1]
    sub r0, #1
    blt locret_80A8AAA
    strh r0, [r5,r1]
locret_80A8AAA:
    pop {r4-r7,pc}
off_80A8AAC:    .word dword_80065D0+0x10
off_80A8AB0:    .word dword_8006660
.endfunc // sub_80A8A7C

loc_80A8AB4:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    bl sub_81431F8
    add r7, r0, #0
    ldr r0, [r7,#8]
    ldr r1, [r7,#0xc]
    ldr r2, [r7,#0x10]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    ldr r0, [pc, #0x80a8ae4-0x80a8aca-2] // =off_80A8AE8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    ldr r2, [r5,#0x14]
    str r0, [r7,#8]
    str r1, [r7,#0xc]
    str r2, [r7,#0x10]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A8AE4:    .word off_80A8AE8
off_80A8AE8:    .word sub_80A8AF4+1
    .word sub_80A8B2C+1
    .word sub_80A8B24+1
.func
.thumb_func
sub_80A8AF4:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x66 
    bl sub_80026E4
    bl sub_80A8C7C
    strb r0, [r5,#7]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A8AF4

    bl sub_8002F90
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A8B2C
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A8B24:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A8B24

.func
.thumb_func
sub_80A8B2C:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a8b3c-0x80a8b2e-2] // =off_80A8B40
    ldrb r1, [r7,#1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A8B3C:    .word off_80A8B40
off_80A8B40:    .word sub_80A8B4C+1
    .word sub_80A8BBC+1
    .word sub_80A8C08+1
.endfunc // sub_80A8B2C

.func
.thumb_func
sub_80A8B4C:
    push {r4-r7,lr}
    bl sub_80A8DF0
    bne loc_80A8BA8
    bl sub_80A8DB0
    bl sub_80A8D42
    bl sub_80A8CCC
    ldr r0, [pc, #0x80a8bb8-0x80a8b60-4] // =0x85
    bl sub_80A8D02
    lsr r0, r0, #8
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a8bb0-0x80a8b6e-2] // =dword_8006660
    ldr r2, [pc, #0x80a8bb4-0x80a8b70-4] // =dword_80065D0+16
    ldrsh r1, [r1,r0]
    ldrsh r2, [r2,r0]
    mov r0, #8
    mul r1, r0
    mul r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #5
    ldr r0, [r5,#0xc]
    sub r0, r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    sub r0, r0, r2
    str r0, [r5,#0x10]
    bl sub_809E1AE
    mov r0, #0x14
    lsl r0, r0, #0x10
    add r0, r0, r2
    str r0, [r5,#0x14]
    bl sub_80A8C98
    bl sub_80A8C7C
    bl sub_80A8CB8
    bl sub_80A8D7C
loc_80A8BA8:
    bl anim_80026C4
.endfunc // sub_80A8B4C

    pop {r4-r7,pc}
    .byte 0, 0
off_80A8BB0:    .word dword_8006660
off_80A8BB4:    .word dword_80065D0+0x10
dword_80A8BB8:    .word 0x85
.func
.thumb_func
sub_80A8BBC:
    push {r4-r7,lr}
    bl sub_80A8DF0
    bne loc_80A8BFC
    bl sub_80A8DB0
    ldr r0, [pc, #0x80a8c04-0x80a8bc8-4] // =0x400
    bl sub_80A8D02
    ldr r0, [pc, #0x80a8c04-0x80a8bce-2] // =0x400
    lsl r1, r1, #8
    cmp r1, #0
    bge loc_80A8BD8
    neg r1, r1
loc_80A8BD8:
    cmp r1, r0
    bgt loc_80A8BEC
    mov r0, #0
    strb r0, [r7,#1]
    ldrb r0, [r5,#4]
    bl sub_8143204
    ldrb r0, [r5,#4]
    bl sub_8143220
loc_80A8BEC:
    bl sub_80A8C98
    bl sub_80A8C7C
    bl sub_80A8CB8
    bl sub_80A8D7C
loc_80A8BFC:
    bl anim_80026C4
.endfunc // sub_80A8BBC

    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A8C04:    .word 0x400
.func
.thumb_func
sub_80A8C08:
    push {r4-r7,lr}
    bl sub_80A8DF0
    bne loc_80A8C6C
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldr r2, [r0,#0x20]
    ldr r3, [r0,#0x1c]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    sub r0, r0, r2
    sub r1, r1, r3
    bl calcAngle_800117C
    lsl r0, r0, #8
    lsr r0, r0, #8
    mov r1, #0xff
    and r0, r1
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a8c74-0x80a8c30-4] // =dword_8006660
    ldr r2, [pc, #0x80a8c78-0x80a8c32-2] // =dword_80065D0+16
    ldrsh r1, [r1,r0]
    ldrsh r2, [r2,r0]
    mov r0, #0x80
    mul r1, r0
    mul r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #5
    ldr r0, [r5,#0xc]
    add r0, r0, r1
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x10]
    add r0, r0, r2
    str r0, [r5,#0x10]
    bl sub_809E1AE
    mov r0, #0x14
    lsl r0, r0, #0x10
    add r0, r0, r2
    str r0, [r5,#0x14]
    bl sub_8002E04
    bne loc_80A8C68
    mov r0, #0
    strb r0, [r7]
    bl sub_80048B2
loc_80A8C68:
    bl sub_80A8C98
loc_80A8C6C:
    bl anim_80026C4
.endfunc // sub_80A8C08

    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A8C74:    .word dword_8006660
off_80A8C78:    .word dword_80065D0+0x10
.func
.thumb_func
sub_80A8C7C:
    push {r4-r7,lr}
    ldrh r0, [r7,#4]
    lsr r0, r0, #8
    add r0, #0x20 
    lsr r0, r0, #6
    mov r1, #3
    and r0, r1
    ldr r1, [pc, #0x80a8c90-0x80a8c8a-2] // =unk_80A8C94
    ldrb r0, [r1,r0]
    pop {r4-r7,pc}
off_80A8C90:    .word unk_80A8C94
unk_80A8C94:    .byte 2
    .byte 3
    .byte 0
    .byte 1
.endfunc // sub_80A8C7C

.func
.thumb_func
sub_80A8C98:
    push {r4-r7,lr}
    ldr r4, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    str r4, [r5,#0x14]
    bl sub_8002E14
    pop {r4-r7,pc}
.endfunc // sub_80A8C98

.func
.thumb_func
sub_80A8CB8:
    push {r4-r7,lr}
    ldrb r1, [r5,#7]
    cmp r0, r1
    beq locret_80A8CCA
    strb r0, [r5,#7]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
locret_80A8CCA:
    pop {r4-r7,pc}
.endfunc // sub_80A8CB8

.func
.thumb_func
sub_80A8CCC:
    push {r4-r7,lr}
    ldrb r0, [r7]
    cmp r0, #2
    bne loc_80A8CFA
    ldrh r0, [r7,#2]
    sub r0, #1
    strh r0, [r7,#2]
    bgt locret_80A8D00
    bl sub_800151C
    mov r1, #0x60 
    svc 6
    lsl r6, r1, #8
    bl sub_800151C
    mov r1, #7
    and r0, r1
    cmp r0, #4
    bge loc_80A8CF4
    neg r6, r6
loc_80A8CF4:
    ldrh r0, [r7,#4]
    add r0, r0, r6
    strh r0, [r7,#4]
loc_80A8CFA:
    ldrb r0, [r5,#4]
    bl sub_8143220
locret_80A8D00:
    pop {r4-r7,pc}
.endfunc // sub_80A8CCC

.func
.thumb_func
sub_80A8D02:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldr r2, [r0,#0x20]
    ldr r3, [r0,#0x1c]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    sub r0, r0, r2
    sub r1, r1, r3
    bl calcAngle_800117C
    lsl r0, r0, #8
    ldrh r1, [r7,#4]
    sub r0, r0, r1
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add r1, r0, #0
    cmp r1, #0
    bge loc_80A8D2E
    neg r1, r1
loc_80A8D2E:
    cmp r1, r4
    ble loc_80A8D34
    add r1, r4, #0
loc_80A8D34:
    cmp r0, #0
    bge loc_80A8D3A
    neg r1, r1
loc_80A8D3A:
    ldrh r0, [r7,#4]
    add r0, r0, r1
    strh r0, [r7,#4]
    pop {r4-r7,pc}
.endfunc // sub_80A8D02

.func
.thumb_func
sub_80A8D42:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldr r2, [r0,#0x20]
    ldr r3, [r0,#0x1c]
    ldr r0, [r5,#0x10]
    ldr r1, [r5,#0xc]
    sub r0, r0, r2
    sub r1, r1, r3
    bl sub_80014D4
    ldr r1, [pc, #0x80a8d78-0x80a8d5a-2] // =0x14
    lsl r1, r1, #0x10
    cmp r0, r1
    bge loc_80A8D70
    ldrh r0, [r7,#6]
    sub r0, #1
    strh r0, [r7,#6]
    bgt locret_80A8D76
    mov r0, #4
    strb r0, [r7,#1]
    b locret_80A8D76
loc_80A8D70:
    ldrb r0, [r5,#4]
    bl sub_8143204
locret_80A8D76:
    pop {r4-r7,pc}
dword_80A8D78:    .word 0x14
.endfunc // sub_80A8D42

.func
.thumb_func
sub_80A8D7C:
    push {r4-r7,lr}
    push {r4-r7}
    mov r6, #0x24 
    add r6, r6, r5
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    ldr r2, [r5,#0x14]
    mov r3, #0x14
    lsl r3, r3, #0x10
    sub r2, r2, r3
    ldr r3, [pc, #0x80a8da4-0x80a8d90-4] // =0x808
    ldr r4, [pc, #0x80a8da8-0x80a8d92-2] // =0x40000
    ldr r5, [pc, #0x80a8dac-0x80a8d94-4] // =0x10000
    bl sub_80037AC
    pop {r4-r7}
    mov r0, #0
    str r0, [r5,#0x24]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A8DA4:    .word 0x808
dword_80A8DA8:    .word 0x40000
dword_80A8DAC:    .word 0x10000
.endfunc // sub_80A8D7C

.func
.thumb_func
sub_80A8DB0:
    push {r4-r7,lr}
    bl sub_8034C36
    beq locret_80A8DE6
    bl sub_8002E04
    beq loc_80A8E0A
    ldr r0, [r5,#0x24]
    ldr r1, [pc, #0x80a8de8-0x80a8dc0-4] // =0x10000
    tst r0, r1
    beq locret_80A8DE6
    bl sub_8143088
    add r1, r0, #0
    ldr r0, [pc, #0x80a8dec-0x80a8dcc-4] // =0x808C315
    bl sub_8036E90
    mov r0, #0x23 
    add r0, #0xff
    bl sound_play
    ldrb r0, [r5,#4]
    bl sub_8143204
    ldrb r0, [r5,#4]
    bl sub_8143220
locret_80A8DE6:
    pop {r4-r7,pc}
dword_80A8DE8:    .word 0x10000
dword_80A8DEC:    .word 0x808C315
.endfunc // sub_80A8DB0

.func
.thumb_func
sub_80A8DF0:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A8E18
    ldr r0, [pc, #0x80a8e20-0x80a8dfc-4] // =0x808C2F0
    bl sub_8036F70
    bne loc_80A8E0A
    bl sub_8036F36
    bne loc_80A8E18
loc_80A8E0A:
    bl sub_809E462
    bne loc_80A8E18
    bl engine_isScreeneffectAnimating
    beq loc_80A8E18
    mov r4, #0
loc_80A8E18:
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
dword_80A8E20:    .word 0x808C2F0
    .word 0x20000, 0x10000, 0x78003C, 0x3CFF9E, 0x20000, 0x10000
    .word 0x78003C, 0xA00028, 0x20000, 0x10000, 0x8C0028, 0x8EFF06
    .word 0x40000, 0x20000, 0x780028, 0xFF9CFFD4, 0x30000, 0x18000
    .word 0x780028, 0x158FF7E
.endfunc // sub_80A8DF0

loc_80A8E74:
    push {lr}
    ldr r6, [pc, #0x80a8e98-0x80a8e76-2] // =unk_2000310
    ldr r0, [pc, #0x80a8e84-0x80a8e78-4] // =off_80A8E88
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A8E84:    .word off_80A8E88
off_80A8E88:    .word sub_80A8E9C+1
    .word sub_80A8F08+1
    .word sub_80A8FA0+1
    .word sub_80A8FE4+1
off_80A8E98:    .word unk_2000310
.func
.thumb_func
sub_80A8E9C:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6c 
    bl sub_80026E4
    mov r0, #0x18
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A8E9C

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    bl sub_80A90B0
    mov r0, #0xb
    mov r1, #0xfb
    bl sub_802F164
    beq loc_80A8EEA
    bl sub_80A91D4
    beq loc_80A8EE4
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80A8FFC
    pop {r4-r7,pc}
loc_80A8EE4:
    bl sub_80A9268
    b loc_80A8EF8
loc_80A8EEA:
    mov r0, #0
    mov r1, #0x28 
    strb r0, [r5,r1]
    strb r0, [r5,#9]
    mov r0, #1
    mov r1, #0x24 
    strb r0, [r5,r1]
loc_80A8EF8:
    bl sub_80A908C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A8F08
    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A8F08:
    push {r4-r7,lr}
    mov r0, #0xb
    mov r1, #0xef
    bl sub_802F164
    beq loc_80A8F1E
    mov r0, #8
    strb r0, [r5,#8]
    bl sub_80A8FA0
    b loc_80A8F3A
loc_80A8F1E:
    bl sub_8036F40
    bne loc_80A8F3A
    bl sub_8036F58
    bne loc_80A8F3A
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80A8F3A
    bl sub_80A8F48
    bl sub_80A91A4
loc_80A8F3A:
    bl sub_80A91F4
    bl anim_80026C4
.endfunc // sub_80A8F08

    bl sub_80A9218
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A8F48:
    push {r4-r7,lr}
    ldrb r4, [r5,#9]
    cmp r4, #0
    bgt loc_80A8F90
    mov r1, #0x24 
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    beq loc_80A8F72
    bl sub_80A9038
    bl sub_80A90CC
    beq locret_80A8F9E
    mov r0, #0x26 
    ldrb r0, [r5,r0]
    mov r1, #0x24 
    strb r0, [r5,r1]
    bl sub_80A90E4
    b locret_80A8F9E
loc_80A8F72:
    mov r0, #0x26 
    ldrb r0, [r5,r0]
    mov r1, #0x24 
    strb r0, [r5,r1]
    bl sub_80A9004
    bl sub_80A9150
    beq locret_80A8F9E
    add r4, #1
    strb r4, [r5,#9]
    mov r0, #0x27 
    ldrb r0, [r5,r0]
    mov r1, #0x25 
    strb r0, [r5,r1]
loc_80A8F90:
    mov r1, #0x25 
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    bne locret_80A8F9E
    mov r4, #0
    strb r4, [r5,#9]
locret_80A8F9E:
    pop {r4-r7,pc}
.endfunc // sub_80A8F48

.func
.thumb_func
sub_80A8FA0:
    push {lr}
    bl sub_80A91D4
    beq loc_80A8FC6
    mov r0, #0x19
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r0, #0xc
    strb r0, [r5,#8]
    ldr r0, [pc, #0x80a8fe0-0x80a8fba-2] // =0x160
    bl sound_play
    bl sub_80A8FE4
    b loc_80A8FD8
loc_80A8FC6:
    mov r0, #0xb
    mov r1, #0xef
    bl sub_802F164
    bne loc_80A8FD8
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A8F08
loc_80A8FD8:
    bl anim_80026C4
.endfunc // sub_80A8FA0

    pop {pc}
    .byte 0, 0
off_80A8FE0:    .word 0x160
.func
.thumb_func
sub_80A8FE4:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A8FF4
    bl sub_80048B2
loc_80A8FF4:
    bl anim_80026C4
.endfunc // sub_80A8FE4

    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A8FFC:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A8FFC

.func
.thumb_func
sub_80A9004:
    push {lr}
    mov r0, #8
    bl reqBBS_81409D0
    mov r1, #0x31 
    mov r3, #0x19
    ldrb r2, [r5,#4]
    add r1, r1, r2
    add r3, r3, r2
    ldrb r2, [r6,r1]
    strb r3, [r6,r3]
    cmp r0, r2
    bne loc_80A9028
    cmp r0, #7
    blt loc_80A9026
    mov r0, #0
    b loc_80A9028
loc_80A9026:
    add r0, #1
loc_80A9028:
    strb r0, [r6,r1]
    strb r0, [r5,#5]
    mov r1, #0x28 
    ldrb r0, [r5,r1]
    add r0, #1
    strb r0, [r5,r1]
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A9004

.func
.thumb_func
sub_80A9038:
    push {r4,lr}
    ldr r4, [r5,#0x2c]
    ldrb r0, [r5,#5]
    ldr r1, [r5,#0xc]
    ldr r2, [r5,#0x10]
    cmp r0, #0
    bne loc_80A904C
    add r1, r1, r4
    sub r2, r2, r4
    b loc_80A9086
loc_80A904C:
    cmp r0, #1
    bne loc_80A9054
    add r1, r1, r4
    b loc_80A9086
loc_80A9054:
    cmp r0, #3
    bne loc_80A905C
    add r2, r2, r4
    b loc_80A9086
loc_80A905C:
    cmp r0, #4
    bne loc_80A9066
    sub r1, r1, r4
    add r2, r2, r4
    b loc_80A9086
loc_80A9066:
    cmp r0, #5
    bne loc_80A906E
    sub r1, r1, r4
    b loc_80A9086
loc_80A906E:
    cmp r0, #7
    bne loc_80A9076
    sub r2, r2, r4
    b loc_80A9086
loc_80A9076:
    ldr r4, [r5,#0x30]
    cmp r0, #2
    bne loc_80A9082
    add r1, r1, r4
    add r2, r2, r4
    b loc_80A9086
loc_80A9082:
    sub r1, r1, r4
    sub r2, r2, r4
loc_80A9086:
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    pop {r4,pc}
.endfunc // sub_80A9038

.func
.thumb_func
sub_80A908C:
    push {r7,lr}
    bl sub_80A916C
    add r7, r0, #0
    ldr r0, [r7]
    str r0, [r5,#0x2c]
    lsr r0, r0, #1
    str r0, [r5,#0x30]
    ldrh r0, [r7,#4]
    mov r1, #0x26 
    strb r0, [r5,r1]
    ldrh r0, [r7,#6]
    mov r1, #0x27 
    strb r0, [r5,r1]
    ldrh r0, [r7,#0xc]
    strb r0, [r5,#7]
    pop {r7,pc}
    .byte 0, 0
.endfunc // sub_80A908C

.func
.thumb_func
sub_80A90B0:
    push {r7,lr}
    bl sub_80A916C
    add r7, r0, #0
    ldrh r0, [r7,#8]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r7,#0xa]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    mov r0, #0x40 
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    pop {r7,pc}
.endfunc // sub_80A90B0

.func
.thumb_func
sub_80A90CC:
    push {r4,lr}
    mov r4, #0
    mov r0, #0xc
    add r0, r0, r5
    bl sub_8031A7A
    cmp r0, #0xc0
    bne loc_80A90DE
    mov r4, #1
loc_80A90DE:
    add r0, r4, #0
    tst r0, r0
    pop {r4,pc}
.endfunc // sub_80A90CC

.func
.thumb_func
sub_80A90E4:
    push {r4-r7,lr}
    ldrb r4, [r5,#4]
loc_80A90E8:
    mov r0, #8
    bl reqBBS_81409D0
    ldrb r1, [r5,#5]
    strb r1, [r5,#6]
    cmp r0, r1
    beq loc_80A90E8
    strb r0, [r5,#5]
    ldr r0, [r5,#0xc]
    str r0, [r5,#0x18]
    ldr r0, [r5,#0x10]
    str r0, [r5,#0x1c]
    bl sub_80A9038
    bl sub_80A90CC
    beq loc_80A9118
    ldr r0, [r5,#0x18]
    str r0, [r5,#0xc]
    ldr r0, [r5,#0x1c]
    str r0, [r5,#0x10]
    ldrb r1, [r5,#6]
    strb r1, [r5,#5]
    b loc_80A90E8
loc_80A9118:
    ldrb r0, [r5,#5]
    mov r1, #0x19
    ldrb r2, [r5,#4]
    add r1, r1, r2
    ldrb r1, [r6,r1]
    cmp r0, r1
    bne loc_80A9132
    cmp r0, #7
    beq loc_80A912E
    add r0, #1
    b loc_80A912E
loc_80A912E:
    mov r0, #0
    ldrb r0, [r5,#5]
loc_80A9132:
    mov r1, #0x31 
    mov r2, #0x19
    ldrb r3, [r5,#4]
    add r1, r1, r3
    add r2, r2, r3
    ldrb r0, [r6,r1]
    strb r0, [r6,r2]
    ldrb r0, [r5,#6]
    strb r0, [r6,r1]
    mov r1, #0x28 
    ldrb r0, [r5,r1]
    add r0, #1
    strb r0, [r5,r1]
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_80A90E4

.func
.thumb_func
sub_80A9150:
    push {lr}
    mov r3, #0
    mov r1, #0x28 
    ldrb r0, [r5,r1]
    ldrb r2, [r5,#7]
    cmp r0, r2
    blt loc_80A9164
    mov r3, #1
    mov r0, #0
    strb r0, [r5,r1]
loc_80A9164:
    add r0, r3, #0
    tst r0, r0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A9150

.func
.thumb_func
sub_80A916C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    cmp r1, #0x85
    bne loc_80A917C
    mov r1, #3
    b loc_80A917E
loc_80A917C:
    ldrb r1, [r0,#5]
loc_80A917E:
    lsl r1, r1, #2
    ldr r2, [pc, #0x80a9190-0x80a9180-4] // =off_80A9194
    ldr r0, [r2,r1]
    ldrb r2, [r5,#4]
    mov r3, #0x10
    mul r2, r3
    add r0, r0, r2
    pop {pc}
    .byte 0, 0
off_80A9190:    .word off_80A9194
off_80A9194:    .word dword_81436B4
    .word dword_81436C4
    .word dword_81436E4
    .word dword_8143704
.endfunc // sub_80A916C

.func
.thumb_func
sub_80A91A4:
    push {r4,lr}
    mov r0, #0xb
    mov r1, #0xe4
    bl sub_802F164
    beq locret_80A91D0
    bl sub_809E1AE
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r4, #0x14
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne locret_80A91D0
    mov r0, #0xb
    mov r1, #0xe6
    bl sub_802F110
locret_80A91D0:
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A91A4

.func
.thumb_func
sub_80A91D4:
    push {lr}
    ldr r0, [pc, #0x80a91e8-0x80a91d6-2] // =dword_80A91EC
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    pop {pc}
    .balign 4, 0x00
off_80A91E8:    .word dword_80A91EC
dword_80A91EC:    .word 0xBEA0BE9, 0xBEB
.endfunc // sub_80A91D4

.func
.thumb_func
sub_80A91F4:
    push {lr}
    mov r0, #0xb
    mov r1, #0xe6
    bl sub_802F164
    beq loc_80A9208
    mov r0, #1
    bl sub_8002E14
    b locret_80A9214
loc_80A9208:
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
locret_80A9214:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80A91F4

.func
.thumb_func
sub_80A9218:
    push {r4,lr}
    ldrb r4, [r5,#4]
    ldrb r0, [r5,#9]
    mov r1, #0x28 
    add r1, r1, r4
    strb r0, [r6,r1]
    ldrb r0, [r5,#5]
    mov r1, #0x31 
    add r1, r1, r4
    strb r0, [r6,r1]
    mov r1, #0x24 
    ldrb r0, [r5,r1]
    mov r1, #0x37 
    add r1, r1, r4
    strb r0, [r6,r1]
    mov r1, #0x25 
    ldrb r0, [r5,r1]
    mov r1, #0x3a 
    add r1, r1, r4
    strb r0, [r6,r1]
    mov r1, #0x28 
    ldrb r0, [r5,r1]
    mov r1, #0x3d 
    add r1, r1, r4
    strb r0, [r6,r1]
    ldr r0, [r5,#0xc]
    asr r0, r0, #0x10
    mov r1, #0x40 
    add r2, r4, #0
    lsl r2, r2, #1
    add r1, r1, r2
    strh r0, [r6,r1]
    ldr r0, [r5,#0x10]
    asr r0, r0, #0x10
    mov r1, #0x46 
    add r2, r4, #0
    lsl r2, r2, #1
    add r1, r1, r2
    strh r0, [r6,r1]
    pop {r4,pc}
.endfunc // sub_80A9218

.func
.thumb_func
sub_80A9268:
    push {r4,lr}
    ldrb r4, [r5,#4]
    mov r1, #0x28 
    add r1, r1, r4
    ldrb r0, [r6,r1]
    strb r0, [r5,#9]
    mov r1, #0x31 
    add r1, r1, r4
    ldrb r0, [r6,r1]
    strb r0, [r5,#5]
    mov r1, #0x37 
    add r1, r1, r4
    ldrb r0, [r6,r1]
    mov r1, #0x24 
    strb r0, [r5,r1]
    mov r1, #0x3a 
    add r1, r1, r4
    ldrb r0, [r6,r1]
    mov r1, #0x25 
    strb r0, [r5,r1]
    mov r1, #0x3d 
    add r1, r1, r4
    ldrb r0, [r6,r1]
    mov r1, #0x28 
    strb r0, [r5,r1]
    mov r1, #0x40 
    add r2, r4, #0
    lsl r2, r2, #1
    add r1, r1, r2
    ldrsh r0, [r6,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    mov r1, #0x46 
    add r2, r4, #0
    lsl r2, r2, #1
    add r1, r1, r2
    ldrsh r0, [r6,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    pop {r4,pc}
.endfunc // sub_80A9268

loc_80A92B8:
    push {lr}
    ldr r6, [pc, #0x80a92dc-0x80a92ba-2] // =unk_2000310
    ldr r0, [pc, #0x80a92c8-0x80a92bc-4] // =off_80A92CC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A92C8:    .word off_80A92CC
off_80A92CC:    .word sub_80A92E0+1
    .word sub_80A931C+1
    .word sub_80A9360+1
    .word sub_80A93D0+1
off_80A92DC:    .word unk_2000310
.func
.thumb_func
sub_80A92E0:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6c 
    bl sub_80026E4
    ldrb r0, [r5,#4]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A92E0

    bl sub_8002F90
    ldrb r0, [r5,#5]
    bl sub_8002E14
    ldrb r0, [r6,#0x1c]
    bl sprite_setPallete
    mov r0, #0
    strb r0, [r5,#6]
    strb r0, [r5,#7]
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A931C
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A931C:
    push {r4-r7,lr}
    mov r0, #0xb
    mov r1, #0xe6
    bl sub_802F164
    beq loc_80A933E
    mov r0, #3
    bl sub_8002E14
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0x6b 
    bl sound_play
    bl sub_80A9360
    b loc_80A935A
loc_80A933E:
    mov r0, #0xb
    mov r1, #0xe4
    bl sub_802F164
    beq loc_80A9352
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80A93D0
    b loc_80A935A
loc_80A9352:
    bl sub_80A93D8
    bl sub_80A93E8
loc_80A935A:
    bl anim_80026C4
.endfunc // sub_80A931C

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A9360:
    push {r4-r7,lr}
    bl sub_80A93D8
    bl sub_80A937C
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    bl anim_80026C4
.endfunc // sub_80A9360

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A937C:
    push {lr}
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r3, [pc, #0x80a93bc-0x80a9382-2] // =dword_80A93C0
    ldrb r3, [r3,r0]
    cmp r3, #0xff
    beq loc_80A93A4
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80a93bc-0x80a938e-2] // =dword_80A93C0
    ldrb r0, [r1,r0]
// <mkdata>
    .hword 0x1 // mov r1, r0
// <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #0xa
    orr r0, r1
    orr r0, r2
    bl sub_8002ED0
    b loc_80A93B4
loc_80A93A4:
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80A93D0
    mov r0, #0xb
    mov r1, #0xe7
    bl sub_802F110
loc_80A93B4:
    ldr r0, [r5,#0x24]
    add r0, #1
    str r0, [r5,#0x24]
    pop {pc}
off_80A93BC:    .word dword_80A93C0
dword_80A93C0:    .word 0xA080604, 0x12100E0C, 0x1A181614, 0xFF1F1E1C
.endfunc // sub_80A937C

.func
.thumb_func
sub_80A93D0:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A93D0

.func
.thumb_func
sub_80A93D8:
    push {lr}
    ldr r0, [pc, #0x80a93e4-0x80a93da-2] // =0xE000000
    bl sub_8002FA6
    pop {pc}
    .balign 4, 0x00
dword_80A93E4:    .word 0xE000000
.endfunc // sub_80A93D8

.func
.thumb_func
sub_80A93E8:
    push {lr}
    ldrb r0, [r5,#6]
    cmp r0, #0
    bne loc_80A9410
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    cmp r0, #0x18
    blt loc_80A9404
    mov r0, #1
    strb r0, [r5,#6]
    mov r0, #0
    strb r0, [r5,#7]
    b locret_80A942E
loc_80A9404:
    mov r0, #1
    lsl r0, r0, #0xe
    ldr r1, [r5,#0x14]
    sub r1, r1, r0
    str r1, [r5,#0x14]
    b locret_80A942E
loc_80A9410:
    ldrb r0, [r5,#7]
    add r0, #1
    strb r0, [r5,#7]
    cmp r0, #0x18
    blt loc_80A9424
    mov r0, #0
    strb r0, [r5,#6]
    mov r0, #0
    strb r0, [r5,#7]
    b locret_80A942E
loc_80A9424:
    mov r0, #1
    lsl r0, r0, #0xe
    ldr r1, [r5,#0x14]
    add r1, r1, r0
    str r1, [r5,#0x14]
locret_80A942E:
    pop {pc}
.endfunc // sub_80A93E8

loc_80A9430:
    push {lr}
    ldr r6, [pc, #0x80a9454-0x80a9432-2] // =unk_2000310
    ldr r0, [pc, #0x80a9440-0x80a9434-4] // =off_80A9444
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A9440:    .word off_80A9444
off_80A9444:    .word sub_80A9458+1
    .word sub_80A94DC+1
    .word sub_80A94F8+1
    .word sub_80A9568+1
off_80A9454:    .word unk_2000310
.func
.thumb_func
sub_80A9458:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6b 
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9458

    bl sub_8002F90
    mov r0, #2
    bl sub_8002E14
    bl sub_80A9570
    add r4, r0, #0
    ldrh r0, [r4]
    lsl r0, r0, #0x10
    str r0, [r5,#0xc]
    ldrh r0, [r4,#2]
    lsl r0, r0, #0x10
    str r0, [r5,#0x10]
    ldrh r0, [r4,#4]
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    ldrb r0, [r4,#7]
    strb r0, [r5,#4]
    bl sprite_setPallete
    ldrb r0, [r4,#6]
    strb r0, [r5,#7]
    cmp r0, #0
    beq loc_80A94AC
    bl sub_8002E3C
    bl sub_80A95EC
loc_80A94AC:
    mov r0, #0xb
    mov r1, #0xfc
    bl sub_802F12C
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #0xb
    mov r1, #0xfb
    bl sub_802F164
    beq loc_80A94D2
    bl sub_80A9628
    beq loc_80A94D2
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80A9568
    pop {r4-r7,pc}
loc_80A94D2:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A94DC
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A94DC:
    push {r4-r7,lr}
    mov r0, #0xb
    mov r1, #0xfc
    bl sub_802F164
    bne loc_80A94EC
    bl sub_80A95A8
loc_80A94EC:
    bl sub_80A95EC
    bl anim_80026C4
.endfunc // sub_80A94DC

    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_80A94F8:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r3, [pc, #0x80a9540-0x80a94fe-2] // =dword_80A9544
    ldrb r3, [r3,r0]
    cmp r3, #0xff
    beq loc_80A9528
    lsl r3, r3, #0x10
    ldr r0, [r5,#0x14]
    add r0, r0, r3
    str r0, [r5,#0x14]
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80a9554-0x80a9512-2] // =unk_80A9558
    ldrb r0, [r1,r0]
// <mkdata>
    .hword 0x1 // mov r1, r0
// <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #0xa
    orr r0, r1
    orr r0, r2
    bl sub_8002ED0
    b loc_80A9534
loc_80A9528:
    mov r0, #0xb
    mov r1, #0xfc
    bl sub_802F12C
    bl sub_80A9568
loc_80A9534:
    ldr r0, [r5,#0x24]
    add r0, #1
    str r0, [r5,#0x24]
    bl anim_80026C4
.endfunc // sub_80A94F8

    pop {r4-r7,pc}
off_80A9540:    .word dword_80A9544
dword_80A9544:    .word 0x3040404, 0x102, 0x0
    .word 0xFF000000
off_80A9554:    .word unk_80A9558
unk_80A9558:    .byte 4
    .byte 6
    .byte 8
    .byte 0xA
    .byte 0xC
    .byte 0xE
    .byte 0x10
    .byte 0x12
    .byte 0x14
    .byte 0x16
    .byte 0x18
    .byte 0x1A
    .byte 0x1C
    .byte 0x1E
    .byte 0x1F
    .byte 0x1F
.func
.thumb_func
sub_80A9568:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A9568

.func
.thumb_func
sub_80A9570:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    cmp r1, #0x85
    bne loc_80A9580
    mov r1, #3
    b loc_80A9582
loc_80A9580:
    ldrb r1, [r0,#5]
loc_80A9582:
    lsl r1, r1, #2
    ldr r2, [pc, #0x80a9594-0x80a9584-4] // =off_80A9598
    ldr r0, [r2,r1]
    ldrb r2, [r5,#4]
    mov r3, #8
    mul r2, r3
    add r0, r0, r2
    pop {pc}
    .balign 4, 0x00
off_80A9594:    .word off_80A9598
off_80A9598:    .word dword_8143724
    .word dword_814375C
    .word dword_8143794
    .word dword_81437CC
.endfunc // sub_80A9570

.func
.thumb_func
sub_80A95A8:
    push {r4,lr}
    bl sub_809E1AE
    ldr r3, [r5,#0x14]
    cmp r2, r3
    bne locret_80A95E6
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r4, #0xc
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne locret_80A95E6
    mov r0, #0xb
    mov r1, #0xfc
    bl sub_802F110
    ldrb r0, [r5,#4]
    strb r0, [r6,#4]
    bl sub_80A9614
    bl sub_8002E52
    mov r0, #8
    strb r0, [r5,#8]
    ldr r0, [pc, #0x80a95e8-0x80a95e0-4] // =0x1A4
    bl sound_play
locret_80A95E6:
    pop {r4,pc}
off_80A95E8:    .word 0x1A4
.endfunc // sub_80A95A8

.func
.thumb_func
sub_80A95EC:
    push {r4,lr}
    ldrb r0, [r5,#7]
    cmp r0, #0
    beq locret_80A9610
    bl sub_809E1AE
    cmp r2, #0
    bne loc_80A9604
    mov r0, #3
    bl sub_8002E14
    b locret_80A9610
loc_80A9604:
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
locret_80A9610:
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A95EC

.func
.thumb_func
sub_80A9614:
    push {r4,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a9644-0x80a961a-2] // =dword_80A9648
    ldrh r0, [r1,r0]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A9614

.func
.thumb_func
sub_80A9628:
    push {r4,lr}
    mov r4, #0
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    ldr r1, [pc, #0x80a9644-0x80a9630-4] // =dword_80A9648
    ldrh r0, [r1,r0]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    beq loc_80A963E
    mov r4, #1
loc_80A963E:
    add r0, r4, #0
    tst r0, r0
    pop {r4,pc}
off_80A9644:    .word dword_80A9648
dword_80A9648:    .word 0xBF50BF4, 0xBF70BF6, 0xBF90BF8, 0xBFA
.endfunc // sub_80A9628

loc_80A9658:
    push {lr}
    ldr r6, [pc, #0x80a967c-0x80a965a-2] // =unk_2000310
    ldr r0, [pc, #0x80a9668-0x80a965c-4] // =off_80A966C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A9668:    .word off_80A966C
off_80A966C:    .word sub_80A9680+1
    .word sub_80A96C8+1
    .word sub_80A96F0+1
    .word sub_80A96FC+1
off_80A967C:    .word unk_2000310
.func
.thumb_func
sub_80A9680:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x6b 
    bl sub_80026E4
    mov r0, #8
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9680

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #0
    str r0, [r5,#0x24]
    bl sub_80A97F4
    ldr r0, [pc, #0x80a96c4-0x80a96b2-2] // =0x1B3
    bl sound_play
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A96C8
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A96C4:    .word 0x1B3
.func
.thumb_func
sub_80A96C8:
    push {r4-r7,lr}
    bl sub_80A979C
    bl sub_80A971C
    beq loc_80A96EA
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #7
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    bl sub_80A974C
loc_80A96EA:
    bl anim_80026C4
.endfunc // sub_80A96C8

    pop {r4-r7,pc}
.func
.thumb_func
sub_80A96F0:
    push {lr}
    bl sub_80A974C
.endfunc // sub_80A96F0

    bl anim_80026C4
    pop {pc}
.func
.thumb_func
sub_80A96FC:
    push {lr}
    bl sub_80048B2
    mov r0, #0xb
    mov r1, #0xe8
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #7
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x39 
    bl sub_802F12C
    pop {pc}
.endfunc // sub_80A96FC

.func
.thumb_func
sub_80A971C:
    push {r4,lr}
    mov r4, #0
    mov r0, #0xb
    mov r1, #0xe5
    bl sub_802F164
    beq loc_80A9744
    mov r0, #0xb
    mov r1, #0xe8
    bl sub_802F164
    bne loc_80A9744
    ldrb r0, [r6,#6]
    mov r1, #0x19
    cmp r0, r1
    blt loc_80A9746
    sub r0, r0, r1
    ldrb r1, [r5,#4]
    cmp r0, r1
    bne loc_80A9746
loc_80A9744:
    mov r4, #1
loc_80A9746:
    add r0, r4, #0
    tst r0, r0
    pop {r4,pc}
.endfunc // sub_80A971C

.func
.thumb_func
sub_80A974C:
    push {lr}
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r3, [pc, #0x80a9788-0x80a9752-2] // =dword_80A978C
    ldrb r3, [r3,r0]
    cmp r3, #0xff
    beq loc_80A9774
    ldr r0, [r5,#0x24]
    lsr r0, r0, #1
    ldr r1, [pc, #0x80a9788-0x80a975e-2] // =dword_80A978C
    ldrb r0, [r1,r0]
// <mkdata>
    .hword 0x1 // mov r1, r0
// <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r1, #5
    lsl r2, r2, #0xa
    orr r0, r1
    orr r0, r2
    bl sub_8002ED0
    b loc_80A977C
loc_80A9774:
    mov r0, #0xc
    strb r0, [r5,#8]
    bl sub_80A96FC
loc_80A977C:
    ldr r0, [r5,#0x24]
    add r0, #1
    str r0, [r5,#0x24]
    bl anim_80026C4
.endfunc // sub_80A974C

    pop {pc}
off_80A9788:    .word dword_80A978C
dword_80A978C:    .word 0xA080604, 0x12100E0C, 0x1A181614, 0xFF1F1E1C
.func
.thumb_func
sub_80A979C:
    push {r4,lr}
    mov r0, #0xb
    mov r1, #0xe8
    bl sub_802F164
    bne locret_80A97F0
    ldrb r0, [r6,#6]
    cmp r0, #5
    blt locret_80A97F0
    mov r3, #0
    ldrb r2, [r5,#4]
    ldrb r0, [r6,#6]
    mov r1, #0x19
    cmp r0, r1
    blt loc_80A97BC
    sub r3, r0, r1
loc_80A97BC:
    cmp r2, r3
    bne locret_80A97F0
    mov r0, #0xb
    mov r1, #0xe4
    bl sub_802F164
    beq locret_80A97F0
    bl sub_809E1AE
    add r2, r0, #0
    add r3, r1, #0
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    mov r4, #0x12
    lsl r4, r4, #0x10
    bl sub_80011D6
    cmp r0, #1
    bne locret_80A97F0
    mov r0, #0xb
    mov r1, #0xe8
    bl sub_802F110
    mov r0, #0xd7
    bl sound_play
locret_80A97F0:
    pop {r4,pc}
    .balign 4, 0x00
.endfunc // sub_80A979C

.func
.thumb_func
sub_80A97F4:
    push {r4-r7,lr}
    ldr r6, [pc, #0x80a9820-0x80a97f6-2] // =unk_2011B30
    ldrb r4, [r5,#4]
    mov r3, #0x19
    cmp r4, r3
    blt loc_80A9808
    add r0, r4, #0
    add r1, r3, #0
    svc 6
    add r4, r1, #0
loc_80A9808:
    lsl r4, r4, #1
    ldr r0, [r5,#0xc]
    asr r0, r0, #0x10
    mov r2, #0
    add r2, r2, r4
    strh r0, [r6,r2]
    ldr r0, [r5,#0x10]
    asr r0, r0, #0x10
    mov r2, #0x3c 
    add r2, r2, r4
    strh r0, [r6,r2]
    pop {r4-r7,pc}
off_80A9820:    .word unk_2011B30
.endfunc // sub_80A97F4

loc_80A9824:
    push {lr}
    ldr r0, [pc, #0x80a9834-0x80a9826-2] // =off_80A9838
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A9834:    .word off_80A9838
off_80A9838:    .word sub_80A9844+1
    .word sub_80A9858+1
    .word sub_80A98CC+1
.func
.thumb_func
sub_80A9844:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x24]
    ldrb r0, [r5,#6]
    str r0, [r5,#0x28]
    bl sub_80A9858
    pop {pc}
.endfunc // sub_80A9844

.func
.thumb_func
sub_80A9858:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [r5,#0x24]
    sub r0, #1
    ble loc_80A9868
    str r0, [r5,#0x24]
    b loc_80A98BE
loc_80A9868:
    ldrb r0, [r5,#5]
    str r0, [r5,#0x24]
    bl sub_8001532
    add r6, r0, #0
    mov r8, r5
    mov r1, #0xe
    ldrsh r1, [r5,r1]
    mov r2, #0x12
    ldrsh r2, [r5,r2]
    mov r3, #0x16
    ldrsh r3, [r5,r3]
    ldr r4, [pc, #0x80a98c4-0x80a9880-4] // =byte_200A6A0
    ldrb r0, [r4,#0xd] // (dword_200A6AC+1 - 0x200a6a0)
    sub r3, r3, r0
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r1, r1, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r2, r2, r4
    lsr r6, r6, #8
    mov r0, #2
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    ldr r4, [pc, #0x80a98c8-0x80a98a2-2] // =0x140000
    bl sub_80047E0
    mov r5, r8
    ldr r0, [r5,#0x28]
    sub r0, #1
    ble loc_80A98B4
    str r0, [r5,#0x28]
    b loc_80A98BE
loc_80A98B4:
    ldrb r0, [r5,#6]
    str r0, [r5,#0x28]
    mov r0, #0x70 
    bl sound_play
loc_80A98BE:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
off_80A98C4:    .word byte_200A6A0
dword_80A98C8:    .word 0x140000
.endfunc // sub_80A9858

.func
.thumb_func
sub_80A98CC:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A98CC

loc_80A98D4:
    push {lr}
    ldr r0, [pc, #0x80a98e4-0x80a98d6-2] // =off_80A98E8
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A98E4:    .word off_80A98E8
off_80A98E8:    .word sub_80A98F4+1
    .word sub_80A9908+1
    .word sub_80A9A04+1
.func
.thumb_func
sub_80A98F4:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#5]
    str r0, [r5,#0x24]
    ldrb r0, [r5,#6]
    str r0, [r5,#0x28]
    bl sub_80A9908
    pop {pc}
.endfunc // sub_80A98F4

.func
.thumb_func
sub_80A9908:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [r5,#0x24]
    sub r0, #1
    ble loc_80A9918
    str r0, [r5,#0x24]
    b loc_80A998C
loc_80A9918:
    ldrb r0, [r5,#5]
    str r0, [r5,#0x24]
    bl sub_8001532
    mov r1, #8
    svc 6
    mov r0, #6
    mul r0, r1
    ldr r4, [pc, #0x80a9998-0x80a9928-4] // =off_80A999C
    ldrb r1, [r5,#4]
    ldr r4, [r4,r1]
    add r4, r4, r0
    bl sub_8001532
    add r6, r0, #0
    mov r8, r5
    mov r0, #0
    ldrsh r1, [r4,r0]
    mov r0, #2
    ldrsh r2, [r4,r0]
    mov r0, #4
    ldrsh r3, [r4,r0]
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r1, r1, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r2, r2, r4
    lsr r6, r6, #8
    mov r4, #0xf
    and r4, r6
    sub r4, #7
    add r3, r3, r4
    lsr r6, r6, #8
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x10
    ldr r0, [r5,#0xc]
    ldr r6, [r5,#0x10]
    ldr r7, [r5,#0x14]
    add r1, r1, r0
    add r2, r2, r6
    add r3, r3, r7
    ldr r4, [pc, #0x80a9994-0x80a9974-4] // =0x2140001
    mov r0, #0x20 
    bl sub_80047E0
    mov r5, r8
    ldr r0, [r5,#0x28]
    sub r0, #1
    ble loc_80A9988
    str r0, [r5,#0x28]
    b loc_80A998C
loc_80A9988:
    ldrb r0, [r5,#6]
    str r0, [r5,#0x28]
loc_80A998C:
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_80A9994:    .word 0x2140001
off_80A9998:    .word off_80A999C
off_80A999C:    .word dword_80A99A4
    .word dword_80A99D4
dword_80A99A4:    .word 0xFFF4FFF4, 0xFFF00008, 0x80000, 0xCFFF4, 0x8, 0x8FFF0
    .word 0x100000, 0xC0008, 0x8FFF4, 0x10, 0xC0008, 0x8000C
dword_80A99D4:    .word 0xFFFFFFFF, 0xFFFE0004, 0x40000, 0x1FFFF, 0x4, 0x4FFFE
    .word 0x20000, 0x10004, 0x4FFFF, 0x2, 0x10004, 0x40001
.endfunc // sub_80A9908

.func
.thumb_func
sub_80A9A04:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A9A04

loc_80A9A0C:
    push {lr}
    ldr r0, [pc, #0x80a9a1c-0x80a9a0e-2] // =off_80A9A20
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A9A1C:    .word off_80A9A20
off_80A9A20:    .word sub_80A9A2C+1
    .word sub_80A9A76+1
    .word sub_80A9A96+1
.func
.thumb_func
sub_80A9A2C:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    ldrb r1, [r5,#6]
    ldrb r2, [r5,#7]
    bl sub_80026E4
    ldr r6, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    str r6, [r5,#0x14]
    bl sub_8002E14
    ldrb r0, [r5,#4]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9A2C

    bl sub_8002F90
    ldrb r0, [r5,#5]
    bl sprite_setPallete
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A9A76
    pop {pc}
.func
.thumb_func
sub_80A9A76:
    push {lr}
    ldr r0, [r5,#0x14]
    mov r1, #2
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x14]
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A9A90
    mov r0, #8
    strb r0, [r5,#8]
loc_80A9A90:
    bl anim_80026C4
.endfunc // sub_80A9A76

    pop {pc}
.func
.thumb_func
sub_80A9A96:
    push {lr}
    bl sub_80048B2
    pop {pc}
    .byte 0, 0
dword_80A9AA0:    .word 0x16BF012A, 0x9E1C018E, 0x505, 0x17D0103, 0x16BF012A
    .word 0x9E1C018E, 0x505, 0x17D0103, 0x16BF012B, 0x9E1C018F
    .word 0x505, 0x17D0102, 0x16BF012C, 0x9E1C0190, 0x505
    .word 0x17D00FF, 0x16BF012D, 0x9E1C0191, 0x505, 0x17D00FF
    .word 0x16BE012E, 0x9E1C0192, 0x505, 0x17D01FF, 0x16BE012E
    .word 0x9E1C0192, 0x505, 0x17D01FF, 0x16BE012E, 0x9E1C0192
    .word 0x505, 0x17D01FF, 0x16BF012F, 0x9E1C0193, 0x505
    .word 0x17D00FF, 0x16BF012F, 0x9E1C0193, 0x505, 0x17D00FF
    .word 0x16BF0130, 0x9E1C0194, 0x505, 0x17D00FF, 0x16BF0131
    .word 0x9E1C0195, 0x505, 0x17D01FF, 0x16BF0132, 0x9E1C0196
    .word 0x505, 0x17D00FF
.endfunc // sub_80A9A96

loc_80A9B70:
    push {lr}
    ldr r7, [pc, #0x80a9b98-0x80a9b72-2] // =dword_80A9AA0
    mov r0, #0x10
    ldrb r1, [r5,#4]
    mul r0, r1
    add r7, r7, r0
    ldr r0, [pc, #0x80a9b88-0x80a9b7c-4] // =off_80A9B8C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80A9B88:    .word off_80A9B8C
off_80A9B8C:    .word sub_80A9B9C+1
    .word sub_80A9C26+1
    .word sub_80A9CA6+1
off_80A9B98:    .word dword_80A9AA0
.func
.thumb_func
sub_80A9B9C:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0
    str r0, [r5,#0x24]
    ldrh r0, [r7]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    bne loc_80A9BBE
    mov r0, #1
    strb r0, [r5]
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    b loc_80A9BCE
loc_80A9BBE:
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    ldrh r0, [r7,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
loc_80A9BCE:
    mov r0, #0x80
    ldrb r1, [r7,#6]
    ldrb r2, [r7,#7]
    bl sub_80026E4
    ldrb r0, [r7,#0xc]
    cmp r0, #0xff
    bne loc_80A9BF6
    ldr r6, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    str r6, [r5,#0x14]
loc_80A9BF6:
    bl sub_8002E14
    ldrb r0, [r7,#8]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9B9C

    bl sub_8002F90
    ldrb r0, [r7,#0xa]
    lsl r0, r0, #0x18
    bl sub_8002FA6
    ldrb r0, [r7,#0xb]
    bl sprite_setPallete
    ldrb r0, [r7,#0xd]
    bl sub_8002F5C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A9C26
    pop {pc}
.func
.thumb_func
sub_80A9C26:
    push {lr}
    ldrh r0, [r7]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    bne loc_80A9C40
    mov r0, #1
    strb r0, [r5]
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    b loc_80A9C54
loc_80A9C40:
    mov r0, #3
    strb r0, [r5]
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    ldrh r0, [r7,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
loc_80A9C54:
    ldrh r0, [r7]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    beq loc_80A9CA0
    bl sub_80A9CAE
    tst r0, r0
    beq loc_80A9C88
    ldr r0, [r5,#0x24]
    tst r0, r0
    bne loc_80A9CA0
    mov r0, #1
    str r0, [r5,#0x24]
    mov r0, #3
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r0, #0xd9
    add r0, #0xff
    bl sound_play
    b loc_80A9CA0
loc_80A9C88:
    ldr r0, [r5,#0x24]
    tst r0, r0
    beq loc_80A9CA0
    mov r0, #5
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    mov r0, #0
    str r0, [r5,#0x24]
loc_80A9CA0:
    bl anim_80026C4
.endfunc // sub_80A9C26

    pop {pc}
.func
.thumb_func
sub_80A9CA6:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A9CA6

.func
.thumb_func
sub_80A9CAE:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a9cf8-0x80a9cb0-4] // =byte_2009F40
    ldr r0, [r0,#0x24] // (dword_2009F64 - 0x2009f40)
    ldr r1, [r5,#0x14]
    ldr r2, [pc, #0x80a9cfc-0x80a9cb6-2] // =dword_80A9D00
    ldr r2, [r2,#0x8] // (dword_80A9D08 - 0x80a9d00)
    add r1, r1, r2
    cmp r0, r1
    bne loc_80A9CF4
    ldr r0, [pc, #0x80a9cf8-0x80a9cc0-4] // =byte_2009F40
    ldr r1, [r0,#0x20] // (pCoords - 0x2009f40)
    ldr r0, [r0,#0x1c] // (dword_2009F5C - 0x2009f40)
    ldr r2, [r5,#0xc]
    ldr r3, [pc, #0x80a9cfc-0x80a9cc8-4] // =dword_80A9D00
    ldr r3, [r3]
    add r2, r2, r3
    ldr r3, [r5,#0x10]
    ldr r4, [pc, #0x80a9cfc-0x80a9cd0-4] // =dword_80A9D00
    ldr r4, [r4,#0x4] // (dword_80A9D04 - 0x80a9d00)
    add r3, r3, r4
    sub r0, r0, r2
    sub r1, r1, r3
    cmp r0, #0
    bge loc_80A9CE0
    neg r0, r0
loc_80A9CE0:
    cmp r1, #0
    bge loc_80A9CE6
    neg r1, r1
loc_80A9CE6:
    ldr r2, [pc, #0x80a9d0c-0x80a9ce6-2] // =0x100000
    cmp r0, r2
    bgt loc_80A9CF4
    cmp r1, r2
    bgt loc_80A9CF4
    mov r0, #1
    b locret_80A9CF6
loc_80A9CF4:
    mov r0, #0
locret_80A9CF6:
    pop {r4-r7,pc}
off_80A9CF8:    .word byte_2009F40
off_80A9CFC:    .word dword_80A9D00
dword_80A9D00:    .word 0xFFC00000
dword_80A9D04:    .word 0x400000
dword_80A9D08:    .word 0x400000
dword_80A9D0C:    .word 0x100000
.endfunc // sub_80A9CAE

loc_80A9D10:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a9d20-0x80a9d12-2] // =off_80A9D24
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80A9D20:    .word off_80A9D24
off_80A9D24:    .word sub_80A9D30+1
    .word loc_80A9D86+1
    .word sub_80A9DB8+1
.func
.thumb_func
sub_80A9D30:
    push {r4-r7,lr}
    mov r0, #1
    strb r0, [r5]
    bl sub_809C890
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    str r3, [r5,#0x14]
    str r1, [r5,#0x30]
    str r2, [r5,#0x34]
    str r3, [r5,#0x38]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x9e
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9D30

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #0
    strh r0, [r5,#0x24]
    strh r0, [r5,#0x26]
    ldr r0, [pc, #0x80a9ec0-0x80a9d70-4] // =0x2AAAA
    str r0, [r5,#0x28]
    ldr r0, [pc, #0x80a9ec4-0x80a9d74-4] // =0x16C1
    str r0, [r5,#0x2c]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl loc_80A9D86
    pop {r4-r7,pc}
loc_80A9D86:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    ldr r0, [pc, #0x80a9da0-0x80a9d8c-4] // =off_80A9DA4
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl anim_80026C4
    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
off_80A9DA0:    .word off_80A9DA4
off_80A9DA4:    .word sub_80A9DC0+1
    .word sub_80A9DFE+1
    .word sub_80A9E48+1
    .word sub_80A9E5E+1
    .word sub_80A9EB6+1
.func
.thumb_func
sub_80A9DB8:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80A9DB8

.func
.thumb_func
sub_80A9DC0:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    add r0, #1
    strh r0, [r5,#0x24]
    cmp r0, #5
    beq loc_80A9DD2
    cmp r0, #0x1e
    blt locret_80A9DFC
    b loc_80A9DD8
loc_80A9DD2:
    mov r0, #3
    strb r0, [r5]
    b locret_80A9DFC
loc_80A9DD8:
    mov r0, #0
    strh r0, [r5,#0x24]
    mov r0, #1
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_80A9DF8
    mov r0, #0x24 
    add r0, #0xff
    bl sound_play
loc_80A9DF8:
    mov r0, #4
    strb r0, [r5,#9]
locret_80A9DFC:
    pop {r4-r7,pc}
.endfunc // sub_80A9DC0

.func
.thumb_func
sub_80A9DFE:
    push {r4-r7,lr}
    ldr r0, [r5,#0x14]
    ldr r1, [r5,#0x28]
    add r0, r0, r1
    str r0, [r5,#0x14]
    ldr r0, [r5,#0x28]
    ldr r1, [r5,#0x2c]
    sub r0, r0, r1
    str r0, [r5,#0x28]
    ldrh r0, [r5,#0x24]
    add r0, #1
    strh r0, [r5,#0x24]
    cmp r0, #0xc
    beq loc_80A9E20
    cmp r0, #0x1e
    blt locret_80A9E46
    b loc_80A9E3E
loc_80A9E20:
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_80A9E2E
    mov r0, #0x36 
    add r0, #0xff
    bl sound_play
loc_80A9E2E:
    mov r0, #2
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    b locret_80A9E46
loc_80A9E3E:
    mov r0, #0
    strh r0, [r5,#0x24]
    mov r0, #8
    strb r0, [r5,#9]
locret_80A9E46:
    pop {r4-r7,pc}
.endfunc // sub_80A9DFE

.func
.thumb_func
sub_80A9E48:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    add r0, #1
    strh r0, [r5,#0x24]
    cmp r0, #8
    blt locret_80A9E5C
    mov r0, #0
    strh r0, [r5,#0x24]
    mov r0, #0xc
    strb r0, [r5,#9]
locret_80A9E5C:
    pop {r4-r7,pc}
.endfunc // sub_80A9E48

.func
.thumb_func
sub_80A9E5E:
    push {r4-r7,lr}
    ldr r0, [r5,#0x14]
    ldr r1, [r5,#0x28]
    add r0, r0, r1
    str r0, [r5,#0x14]
    ldr r0, [r5,#0x28]
    ldr r1, [r5,#0x2c]
    sub r0, r0, r1
    str r0, [r5,#0x28]
    ldrh r0, [r5,#0x24]
    add r0, #1
    strh r0, [r5,#0x24]
    cmp r0, #0x1e
    ble locret_80A9EB4
    mov r0, #0
    strh r0, [r5,#0x24]
    ldrb r0, [r5,#5]
    bl sub_8002F5C
    mov r0, #5
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    bl sub_809C940
    ldr r1, [r5,#0x30]
    ldr r2, [r5,#0x34]
    ldr r3, [r5,#0x38]
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    str r3, [r5,#0x14]
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_80A9EB0
    mov r0, #0xae
    add r0, #0xff
    bl sound_play
loc_80A9EB0:
    mov r0, #0x10
    strb r0, [r5,#9]
locret_80A9EB4:
    pop {r4-r7,pc}
.endfunc // sub_80A9E5E

.func
.thumb_func
sub_80A9EB6:
    push {r4-r7,lr}
    mov r0, #1
    ldr r1, [pc, #0x80a9ec8-0x80a9eba-2] // =unk_2011C50
    strb r0, [r1,#0x8] // (byte_2011C58 - 0x2011c50)
    pop {r4-r7,pc}
dword_80A9EC0:    .word 0x2AAAA
dword_80A9EC4:    .word 0x16C1
off_80A9EC8:    .word unk_2011C50
.endfunc // sub_80A9EB6

loc_80A9ECC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80a9edc-0x80a9ece-2] // =off_80A9EE0
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80A9EDC:    .word off_80A9EE0
off_80A9EE0:    .word sub_80A9EEC+1
    .word sub_80A9F30+1
    .word sub_80A9F4E+1
.func
.thumb_func
sub_80A9EEC:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    bl sub_809C890
    str r1, [r5,#0xc]
    str r2, [r5,#0x10]
    str r3, [r5,#0x14]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9EEC

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #0x76 
    bl sound_play
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A9F30
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A9F30:
    push {r4-r7,lr}
    mov r4, r8
    push {r4}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80A9F44
    mov r0, #8
    strb r0, [r5,#8]
loc_80A9F44:
    bl anim_80026C4
.endfunc // sub_80A9F30

    pop {r4}
    mov r8, r4
    pop {r4-r7,pc}
.func
.thumb_func
sub_80A9F4E:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_80A9F4E

loc_80A9F58:
    push {lr}
    ldr r0, [pc, #0x80a9f68-0x80a9f5a-2] // =off_80A9F6C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80A9F68:    .word off_80A9F6C
off_80A9F6C:    .word sub_80A9F78+1
    .word sub_80A9FB8+1
    .word sub_80A9FFC+1
.func
.thumb_func
sub_80A9F78:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    ldrb r2, [r5,#5]
    bl sub_80026E4
    ldrb r0, [r5,#6]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80A9F78

    bl sub_8002F90
    ldrb r0, [r5,#7]
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete
    ldrb r0, [r5,#4]
    bl sub_80AA04C
    str r0, [r5,#0x14]
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80A9FB8
    pop {pc}
.func
.thumb_func
sub_80A9FB8:
    push {lr}
    mov r4, #1
    ldrb r0, [r5,#4]
    bl sub_80AA04C
    ldr r1, [r5,#0x14]
    cmp r0, r1
    beq loc_80A9FD8
    bge loc_80A9FD0
    neg r4, r4
    lsl r4, r4, #0x10
    b loc_80A9FD4
loc_80A9FD0:
    mov r4, #1
    lsl r4, r4, #0x10
loc_80A9FD4:
    add r1, r1, r4
    str r1, [r5,#0x14]
loc_80A9FD8:
    ldrb r0, [r5,#4]
    cmp r0, #8
    bne loc_80A9FF6
    mov r0, #0x16
    mov r1, #0x40 
    bl sub_802F110
    ldr r0, [r5,#0x14]
    lsr r0, r0, #0x10
    cmp r0, #0x20 
    beq loc_80A9FF6
    mov r0, #0x16
    mov r1, #0x40 
    bl sub_802F12C
loc_80A9FF6:
    bl anim_80026C4
.endfunc // sub_80A9FB8

    pop {pc}
.func
.thumb_func
sub_80A9FFC:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80A9FFC

.func
.thumb_func
sub_80AA004:
    push {r4-r7,lr}
    ldr r1, [pc, #0x80aa018-0x80aa006-2] // =dword_80AA01C
    lsl r0, r0, #4
    add r0, r0, r1
    ldr r1, [pc, #0x80aa054-0x80aa00c-4] // =unk_2001130
    mov r2, #0x10
    bl sub_8000920
    mov r0, #0
    pop {r4-r7,pc}
off_80AA018:    .word dword_80AA01C
dword_80AA01C:    .word 0x102AF00C, 0x4504804, 0xFFFFFF50, 0xFFFFFFFF, 0x20202020
    .word 0x20202020
    .word 0xFFFFFF20
    .word 0xFFFFFFFF, 0x102A2020, 0x4504804, 0xFFFFFF50, 0xFFFFFFFF
.endfunc // sub_80AA004

.func
.thumb_func
sub_80AA04C:
    ldr r1, [pc, #0x80aa054-0x80aa04c-4] // =unk_2001130
    ldrsb r0, [r1,r0]
    lsl r0, r0, #0x10
    mov pc, lr
off_80AA054:    .word unk_2001130
.endfunc // sub_80AA04C

loc_80AA058:
    push {lr}
    ldr r0, [pc, #0x80aa068-0x80aa05a-2] // =off_80AA06C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80AA068:    .word off_80AA06C
off_80AA06C:    .word sub_80AA078+1
    .word sub_80AA0B8+1
    .word sub_80AA0FC+1
.func
.thumb_func
sub_80AA078:
    push {lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    ldrb r2, [r5,#5]
    bl sub_80026E4
    ldrb r0, [r5,#6]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80AA078

    bl sub_8002E52
    ldrb r0, [r5,#7]
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete
    ldrb r0, [r5,#4]
    bl sub_80AA134
    str r0, [r5,#0x14]
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AA0B8
    pop {pc}
.func
.thumb_func
sub_80AA0B8:
    push {lr}
    mov r4, #1
    ldrb r0, [r5,#4]
    bl sub_80AA134
    ldr r1, [r5,#0x14]
    cmp r0, r1
    beq loc_80AA0D8
    bge loc_80AA0D0
    neg r4, r4
    lsl r4, r4, #0x10
    b loc_80AA0D4
loc_80AA0D0:
    mov r4, #1
    lsl r4, r4, #0x10
loc_80AA0D4:
    add r1, r1, r4
    str r1, [r5,#0x14]
loc_80AA0D8:
    ldrb r0, [r5,#4]
    cmp r0, #0
    bne loc_80AA0F6
    mov r0, #0x16
    mov r1, #0x40 
    bl sub_802F110
    ldr r0, [r5,#0x14]
    lsr r0, r0, #0x10
    cmp r0, #0x20 
    beq loc_80AA0F6
    mov r0, #0x16
    mov r1, #0x40 
    bl sub_802F12C
loc_80AA0F6:
    bl anim_80026C4
.endfunc // sub_80AA0B8

    pop {pc}
.func
.thumb_func
sub_80AA0FC:
    push {lr}
    bl sub_80048B2
    pop {pc}
.endfunc // sub_80AA0FC

.func
.thumb_func
sub_80AA104:
    push {r4-r7,lr}
    ldr r1, [pc, #0x80aa118-0x80aa106-2] // =dword_80AA11C
    lsl r0, r0, #3
    add r0, r0, r1
    ldr r1, [pc, #0x80aa13c-0x80aa10c-4] // =unk_20018B0
    mov r2, #8
    bl sub_8000920
    mov r0, #0
    pop {r4-r7,pc}
off_80AA118:    .word dword_80AA11C
dword_80AA11C:    .word 0x70506878, 0xFFFFFFFF, 0x20202020, 0xFFFFFFFF, 0x70506878
    .word 0xFFFFFFFF
.endfunc // sub_80AA104

.func
.thumb_func
sub_80AA134:
    ldr r1, [pc, #0x80aa13c-0x80aa134-4] // =unk_20018B0
    ldrsb r0, [r1,r0]
    lsl r0, r0, #0x10
    mov pc, lr
off_80AA13C:    .word unk_20018B0
.endfunc // sub_80AA134

loc_80AA140:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80aa150-0x80aa142-2] // =off_80AA154
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80AA150:    .word off_80AA154
off_80AA154:    .word sub_80AA160+1
    .word sub_80AA194+1
    .word sub_80AA1C8+1
.func
.thumb_func
sub_80AA160:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x82
    bl sub_80026E4
    mov r0, #2
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80AA160

    bl sub_8002F90
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AA194
    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA194:
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    bl sub_8143B5E
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    beq loc_80AA1C2
    mov r0, #1
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    mov r0, #2
    mov r1, #0x14
    bl sub_80302A8
    mov r0, #0x7c 
    add r0, #0xff
    bl sound_play
    mov r0, #8
    strb r0, [r5,#8]
loc_80AA1C2:
    bl anim_80026C4
.endfunc // sub_80AA194

    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA1C8:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80AA1D8
    bl sub_80048B2
loc_80AA1D8:
    bl anim_80026C4
.endfunc // sub_80AA1C8

    pop {r4-r7,pc}
    .byte 0, 0
loc_80AA1E0:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80aa1f0-0x80aa1e2-2] // =off_80AA1F4
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .byte 0, 0
off_80AA1F0:    .word off_80AA1F4
off_80AA1F4:    .word sub_80AA204+1
    .word sub_80AA248+1
    .word sub_80AA282+1
    .word sub_80AA2A8+1
.func
.thumb_func
sub_80AA204:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x82
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80AA204

    bl sub_8002E3C
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    ldr r0, [r5,#0xc]
    ldr r1, [r5,#0x10]
    ldr r2, [r5,#0x14]
    str r0, [r5,#0x28]
    str r1, [r5,#0x2c]
    str r2, [r5,#0x30]
    mov r0, #0
    str r0, [r5,#0x24]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AA248
    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA248:
    push {r4-r7,lr}
    ldr r0, [r5,#0x14]
    mov r1, #5
    lsl r1, r1, #0x10
    sub r0, r0, r1
    str r0, [r5,#0x14]
    bge loc_80AA27C
    mov r0, #0
    str r0, [r5,#0x14]
    mov r0, #1
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    mov r0, #1
    mov r1, #0xa
    bl sub_80302A8
    mov r0, #0xda
    bl sound_play
    mov r0, #0xc0
    bl sound_play
    mov r0, #8
    strb r0, [r5,#8]
loc_80AA27C:
    bl anim_80026C4
.endfunc // sub_80AA248

    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA282:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq loc_80AA2A2
    mov r0, #1
    strb r0, [r5]
    bl sub_800151C
    mov r1, #0x1f
    and r0, r1
    add r0, #8
    str r0, [r5,#0x24]
    mov r0, #0xc
    strb r0, [r5,#8]
loc_80AA2A2:
    bl anim_80026C4
.endfunc // sub_80AA282

    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA2A8:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    sub r0, #1
    str r0, [r5,#0x24]
    bgt loc_80AA2D0
    mov r0, #3
    strb r0, [r5]
    mov r0, #0
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    ldr r0, [r5,#0x28]
    ldr r1, [r5,#0x2c]
    ldr r2, [r5,#0x30]
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#8]
loc_80AA2D0:
    bl anim_80026C4
.endfunc // sub_80AA2A8

    pop {r4-r7,pc}
    .balign 4, 0x00
loc_80AA2D8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80aa2e8-0x80aa2da-2] // =off_80AA2EC
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80AA2E8:    .word off_80AA2EC
off_80AA2EC:    .word sub_80AA2F8+1
    .word sub_80AA322+1
    .word sub_80AA36C+1
.func
.thumb_func
sub_80AA2F8:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x98
    bl sub_80026E4
    mov r0, #0
    strb r0, [r5,#4]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_80AA2F8

    bl sub_8002F90
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AA322
    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA322:
    push {r4-r7,lr}
    mov r4, #1
    bl sub_81279A8
    bne loc_80AA33E
    ldr r0, [pc, #0x80aa364-0x80aa32c-4] // =dword_808850C+8
    bl sub_8036F70
    bne loc_80AA33E
    ldr r0, [pc, #0x80aa368-0x80aa334-4] // =dword_80886B8+80
    bl sub_8036F70
    bne loc_80AA33E
    mov r4, #3
loc_80AA33E:
    strb r4, [r5]
    ldr r7, [pc, #0x80aa360-0x80aa340-4] // =sReqBBS_GUI+48
    ldr r0, [r7,#0x24] // (sreqbbs_gui.unk_54 - 0x20057b0)
    ldr r1, [r7,#0x28] // (sreqbbs_gui.unk_58 - 0x20057b0)
    ldr r2, [r7,#0x2c] // (sreqbbs_gui.unk_5c - 0x20057b0)
    str r0, [r5,#0xc]
    str r1, [r5,#0x10]
    str r2, [r5,#0x14]
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    bl anim_80026C4
.endfunc // sub_80AA322

    pop {r4-r7,pc}
off_80AA360:    .word sReqBBS_GUI+0x30 // sReqBBS_GUI.unk_30
off_80AA364:    .word dword_808850C+8
off_80AA368:    .word dword_80886B8+0x50
.func
.thumb_func
sub_80AA36C:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80AA36C

loc_80AA374:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80aa384-0x80aa376-2] // =off_80AA388
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80AA384:    .word off_80AA388
off_80AA388:    .word sub_80AA394+1
    .word sub_80AA402+1
    .word sub_80AA4B8+1
.func
.thumb_func
sub_80AA394:
    push {r4-r7,lr}
    mov r0, #3
    strb r0, [r5]
    mov r4, #0
    mov r0, #0x17
    mov r1, #0x29 
    bl sub_802F164
    bne loc_80AA3A8
    mov r4, #2
loc_80AA3A8:
    strb r4, [r5,#5]
    mov r0, #0
    bl sub_80AA3C2
    mov r0, #0x5a 
    str r0, [r5,#0x24]
    mov r0, #1
    str r0, [r5,#0x28]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_80AA402
.endfunc // sub_80AA394

    pop {r4-r7,pc}
.func
.thumb_func
sub_80AA3C2:
    push {r5-r7,lr}
    ldr r4, [pc, #0x80aa42c-0x80aa3c4-4] // =dword_80AA430
    lsl r0, r0, #3
    add r4, r4, r0
    ldrb r0, [r5,#5]
    add r6, r4, r0
    mov r0, #0x80
    ldrb r1, [r6]
    cmp r1, #0xff
    beq locret_80AA400
    ldrb r2, [r6,#1]
    bl sub_80026E4
    ldrb r0, [r5,#4]
    ldrb r1, [r6]
    cmp r1, #0x18
    beq loc_80AA3E6
    lsr r0, r0, #1
loc_80AA3E6:
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002E3C
    add r0, r5, #0
    add r0, #0xc
    bl sub_8035694
    bl sub_8002E14
    ldrb r1, [r4,#4]
locret_80AA400:
    pop {r5-r7,pc}
.endfunc // sub_80AA3C2

.func
.thumb_func
sub_80AA402:
    push {r4-r7,lr}
    ldr r0, [r5,#0x24]
    sub r0, #1
    str r0, [r5,#0x24]
    bge loc_80AA426
    ldr r0, [r5,#0x28]
    bl sub_80AA3C2
    cmp r1, #0xff
    beq loc_80AA424
    mov r0, #0xcf
    add r0, #0xff
    bl sound_play
    ldr r0, [r5,#0x28]
    add r0, #1
    str r0, [r5,#0x28]
loc_80AA424:
    str r1, [r5,#0x24]
loc_80AA426:
    bl anim_80026C4
.endfunc // sub_80AA402

    pop {r4-r7,pc}
off_80AA42C:    .word dword_80AA430
dword_80AA430:    .word 0x171C3718, 0xFFFFFF14, 0x3718171C, 0xFFFFFF0A, 0x171C3718
    .word 0xFFFFFF0A, 0x3718171C, 0xFFFFFF0A, 0x171C3718, 0xFFFFFF05
    .word 0x3718171C, 0xFFFFFF05, 0x171C3718, 0xFFFFFF05, 0x3718171C
    .word 0xFFFFFF05, 0x171C3718, 0xFFFFFF05, 0x3718171C, 0xFFFFFF05
    .word 0x171C3718, 0xFFFFFF05, 0x3718171C, 0xFFFFFF05, 0x171C3718
    .word 0xFFFFFF05, 0x3718171C, 0xFFFFFF05, 0x171C3718, 0xFFFFFF05
    .word 0x3718171C, 0xFFFFFF05, 0xFFFFFFFF, 0xFFFFFFFF
.func
.thumb_func
sub_80AA4B8:
    push {r4-r7,lr}
    bl sub_80048B2
    pop {r4-r7,pc}
.endfunc // sub_80AA4B8

.func
.thumb_func
sub_80AA4C0:
    push {r4,r6,r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r6, r10
    ldr r6, [r6,#0x40]
    mov r0, #0
    ldrb r3, [r7,#4]
    cmp r3, #0x80
    bpl loc_80AA4D4
    b loc_80AA5DC
loc_80AA4D4:
    sub r3, #0x80
    ldrh r1, [r6,#0x12]
    ldrh r2, [r6,#0x14]
    sub r1, r1, r2
    cmp r1, #0x40 
    bmi loc_80AA5DC
    add r1, r1, r2
    strh r1, [r6,#0x14]
    ldrb r2, [r7,#5]
    lsl r3, r3, #4
    add r3, r3, r2
    ldr r4, [pc, #0x80aa874-0x80aa4ea-2] // =dword_8020CE4
    ldrb r2, [r4,r3]
    cmp r2, #7
    beq loc_80AA5DC
    push {r0}
    add r4, r2, #0
    bl getPETNaviSelect
    mov r1, #0x28 
    bl sub_80137B6
    tst r0, r0
    beq loc_80AA506
    mov r4, #0
loc_80AA506:
    add r2, r4, #0
    pop {r0}
    ldrh r3, [r6,#0x12]
    lsr r3, r3, #6
    cmp r3, #0x11
    bmi loc_80AA514
    mov r3, #0x10
loc_80AA514:
    ldr r4, [pc, #0x80aa878-0x80aa514-4] // =dword_8020C5C
    lsl r3, r3, #3
    add r4, r4, r3
    ldrb r3, [r4,r2]
    push {r0,r3}
    bl sub_800151C
    add r2, r0, #0
    pop {r0,r3}
    mov r1, #0x1f
    and r2, r1
    cmp r2, r3
    bge loc_80AA5DC
    ldr r1, [r6,#0x28]
    tst r1, r1
    beq loc_80AA54E
    bl sub_8001532
    lsr r0, r0, #1
    bcs loc_80AA54E
    ldr r0, [r6,#0x2c]
    tst r0, r0
    beq loc_80AA54E
    add r1, r0, #0
    lsr r1, r1, #0x18
    cmp r1, #8
    bne loc_80AA54E
    str r0, [r7,#0x1c]
    b loc_80AA5DC
loc_80AA54E:
    ldr r1, [pc, #0x80aa87c-0x80aa54e-2] // =dword_2000B30
    ldrh r0, [r1,#0x2] // (dword_2000B30+2 - 0x2000b30)
    cmp r0, #0
    bne loc_80AA56E
    ldrh r0, [r1]
    cmp r0, #8
    blt loc_80AA56E
    mov r2, #0x40 
    bl sub_80AA5F4
    tst r0, r0
    beq loc_80AA56E
    ldr r1, [pc, #0x80aa880-0x80aa566-2] // =dword_2000B30
    mov r2, #1
    strh r2, [r1,#0x2] // (dword_2000B30+2 - 0x2000b30)
    b loc_80AA59E
loc_80AA56E:
    bl sub_8001532
    mov r1, #0xc
    svc 6
    cmp r1, #6
    bne loc_80AA584
    mov r2, #0x20 
    bl sub_80AA5F4
    tst r0, r0
    bne loc_80AA59E
loc_80AA584:
    bl getPETNaviSelect
    mov r1, #0x27 
    bl sub_80137B6
    add r2, r0, #0
    bl sub_80AA5F4
    tst r0, r0
    bne loc_80AA59E
    mov r2, #0x1f
    bl sub_80AA5F4
loc_80AA59E:
    str r0, [r7,#0x1c]
    ldr r1, [r6,#0x24]
    tst r1, r1
    bne loc_80AA5B8
    push {r0}
    bl getPETNaviSelect
    mov r1, #0x1e
    bl sub_80137B6
    tst r0, r0
    pop {r0}
    beq loc_80AA5DC
loc_80AA5B8:
    push {r0}
    bl sub_802D266
    add r4, r0, #0
    bl getPETNaviSelect
    mov r1, #0x3e 
    bl sub_80137FE
    add r0, #4
    mov r1, #5
    svc 6
    cmp r0, r4
    pop {r0}
    ble loc_80AA5DC
    mov r0, #0
    strh r0, [r6,#0x12]
    strh r0, [r6,#0x14]
loc_80AA5DC:
    tst r0, r0
    pop {r4,r6,r7,pc}
    .word dword_8020CE4
.endfunc // sub_80AA4C0

    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r2, #0x1f
    bl sub_80AA5F4
    str r0, [r7,#0x1c]
    pop {r7,pc}
.func
.thumb_func
sub_80AA5F4:
    push {r4-r7,lr}
    sub sp, sp, #0xec
    str r2, [sp,#0xe8]
    mov r0, #6
    mov r1, #0x7f
    bl sub_802F164
    beq loc_80AA608
    ldr r3, [pc, #0x80aa698-0x80aa604-4] // =off_8020178
    b loc_80AA626
loc_80AA608:
    mov r0, #6
    mov r1, #0x80
    bl sub_802F164
    beq loc_80AA616
    ldr r3, [pc, #0x80aa69c-0x80aa612-2] // =off_8020180
    b loc_80AA626
loc_80AA616:
    mov r0, #6
    mov r1, #0x81
    bl sub_802F164
    beq loc_80AA624
    ldr r3, [pc, #0x80aa6a0-0x80aa620-4] // =off_8020188
    b loc_80AA626
loc_80AA624:
    ldr r3, [pc, #0x80aa694-0x80aa624-4] // =off_8020170
loc_80AA626:
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldrb r0, [r4,#4]
    ldrb r1, [r4,#5]
    cmp r0, #0x80
    blt loc_80AA636
    sub r0, #0x80
    add r3, #4
loc_80AA636:
    ldr r3, [r3]
    lsl r0, r0, #2
    ldr r0, [r3,r0]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    add r7, r0, #0
    mov r4, #0
    add r5, sp, #0
    ldr r6, [sp,#0xe8]
loc_80AA648:
    ldrb r1, [r7]
    cmp r1, #0xff
    beq loc_80AA670
    ldrb r0, [r7,#7]
    bl loc_80AA6A4
    tst r0, r0
    beq loc_80AA66C
    add r0, r7, #0
    bl sub_80AA824
    tst r0, r6
    beq loc_80AA66C
    add r4, #1
    mov r1, #1
    strh r1, [r5]
    str r7, [r5,#4]
    add r5, #8
loc_80AA66C:
    add r7, #0x10
    b loc_80AA648
loc_80AA670:
    tst r4, r4
    bne loc_80AA678
    mov r0, #0
    b loc_80AA68E
loc_80AA678:
    ldr r0, [pc, #0x80aa884-0x80aa678-4] // =iCurrFrame
    ldrh r0, [r0]
    add r1, r4, #0
    svc 6
    add r5, sp, #0
loc_80AA682:
    ldrh r0, [r5]
    sub r1, r1, r0
    blt loc_80AA68C
    add r5, #8
    b loc_80AA682
loc_80AA68C:
    ldr r0, [r5,#4]
loc_80AA68E:
    add sp, sp, #0xec
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80AA694:    .word off_8020170
off_80AA698:    .word off_8020178
off_80AA69C:    .word off_8020180
off_80AA6A0:    .word off_8020188
.endfunc // sub_80AA5F4

loc_80AA6A4:
    push {lr}
    lsl r0, r0, #2
    ldr r1, [pc, #0x80aa6b4-0x80aa6a8-4] // =off_80AA6B8
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_80AA6B4:    .word off_80AA6B8
off_80AA6B8:    .word loc_80AA6E8+1
    .word sub_80AA6EC+1
    .hword 0xa757 // adr r7, loc_80AA820
    lsr r2, r1, #0x20
    .hword 0xa765 // adr r7, loc_80AA85C
    lsr r2, r1, #0x20
    .hword 0xa779 // adr r7, loc_80AA8B0
    lsr r2, r1, #0x20
    .hword 0xa78d // adr r7, loc_80AA904
    lsr r2, r1, #0x20
    .hword 0xa7ad // adr r7, loc_80AA988
    lsr r2, r1, #0x20
    .hword 0xa7c1 // adr r7, loc_80AA9DC
    lsr r2, r1, #0x20
    .hword 0xa7d5 // adr r7, loc_80AAA30
    lsr r2, r1, #0x20
    .hword 0xa7e9 // adr r7, loc_80AAA84
    lsr r2, r1, #0x20
    .hword 0xa7fd // adr r7, loc_80AAAD8
    lsr r2, r1, #0x20
    add r0, sp, #0x44
    lsr r2, r1, #0x20
loc_80AA6E8:
    mov r0, #1
    mov pc, lr
.func
.thumb_func
sub_80AA6EC:
    push {r4-r7,lr}
    mov r6, #0
    mov r0, #1
    mov r1, #0xd8
    bl sub_802F164
    beq loc_80AA746
    mov r4, #0
    mov r5, #0
    ldr r7, [r7,#0xc]
loc_80AA700:
    ldrb r0, [r7]
    mov r1, #1
    bic r0, r1
    cmp r0, #0xf0
    beq loc_80AA730
    cmp r0, #0x10
    bne loc_80AA72C
    ldrb r0, [r7,#2]
    ldrb r1, [r7,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x14
    add r0, r0, r1
    bl sub_80182B4
    ldrb r1, [r0,#1]
    cmp r1, #0
    bne loc_80AA72C
    ldrb r1, [r0]
    cmp r1, #4
    blt loc_80AA72C
    add r5, r1, #0
    ldrb r4, [r0,#2]
loc_80AA72C:
    add r7, #4
    b loc_80AA700
loc_80AA730:
    cmp r5, #4
    blt loc_80AA746
    add r0, r4, #0
    bl sub_802D652
    ldr r1, [pc, #0x80aa750-0x80aa73a-2] // =loc_80AA754
    sub r5, #4
    ldrb r1, [r1,r5]
    cmp r0, r1
    blt loc_80AA746
    mov r6, #1
loc_80AA746:
    add r0, r6, #0
    pop {r4-r7,pc}
    .word 0
    .byte 0, 0
off_80AA750:    .word loc_80AA754
.endfunc // sub_80AA6EC

loc_80AA754:
    mov r0, #0x10
    mov r0, #0
    ldr r1, [pc, #0x80aa888-0x80aa758-4] // =dword_2000B30
    ldrh r2, [r1]
    cmp r2, #8
    blt locret_80AA762
    mov r0, #1
locret_80AA762:
    mov pc, lr
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x12
    bl sub_802F164
    beq loc_80AA774
    mov r4, #1
loc_80AA774:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x13
    bl sub_802F164
    beq loc_80AA788
    mov r4, #1
loc_80AA788:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x14
    bl sub_802F164
    beq loc_80AA7A8
    bl sub_8001532
    mov r1, #0xff
    and r0, r1
    cmp r0, #0xc0
    bgt loc_80AA7A8
    mov r4, #1
loc_80AA7A8:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x15
    bl sub_802F164
    beq loc_80AA7BC
    mov r4, #1
loc_80AA7BC:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x16
    bl sub_802F164
    beq loc_80AA7D0
    mov r4, #1
loc_80AA7D0:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x17
    bl sub_802F164
    beq loc_80AA7E4
    mov r4, #1
loc_80AA7E4:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x18
    bl sub_802F164
    beq loc_80AA7F8
    mov r4, #1
loc_80AA7F8:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x19
    bl sub_802F164
    beq loc_80AA80C
    mov r4, #1
loc_80AA80C:
    add r0, r4, #0
    pop {r4,pc}
    push {r4,lr}
    mov r4, #0
    mov r0, #2
    mov r1, #0x22 
    bl sub_802F164
    beq loc_80AA820
    mov r4, #1
loc_80AA820:
    add r0, r4, #0
    pop {r4,pc}
.func
.thumb_func
sub_80AA824:
    push {r4,r6,r7,lr}
    mov r7, #0
    ldr r6, [r0,#0xc]
    ldrb r1, [r0,#7]
    cmp r1, #2
    bne loc_80AA832
    mov r7, #0x40 
loc_80AA832:
    ldrb r0, [r6]
    mov r1, #0xf0
    and r0, r1
    cmp r0, #0xf0
    beq loc_80AA86A
    cmp r0, #0x10
    bne loc_80AA866
    ldrb r0, [r6,#2]
    ldrb r3, [r6,#3]
    lsl r3, r3, #0x1c
    lsr r3, r3, #0x14
    add r0, r0, r3
    bl sub_800F23C
    ldrh r1, [r0]
    lsr r1, r1, #0xc
    mov r2, #0xf
    and r1, r2
    mov r2, #1
    lsl r2, r1
    orr r7, r2
loc_80AA85C:
    ldrb r1, [r0,#2]
    cmp r1, #4
    blt loc_80AA866
    mov r0, #0x20 
    b locret_80AA86C
loc_80AA866:
    add r6, #4
    b loc_80AA832
loc_80AA86A:
    add r0, r7, #0
locret_80AA86C:
    pop {r4,r6,r7,pc}
.endfunc // sub_80AA824

    push {r4,lr}
    pop {r4,pc}
    .balign 4, 0x00
off_80AA874:    .word dword_8020CE4
off_80AA878:    .word dword_8020C5C
off_80AA87C:    .word dword_2000B30
off_80AA880:    .word dword_2000B30
off_80AA884:    .word iCurrFrame
off_80AA888:    .word dword_2000B30
.func
.thumb_func
sub_80AA88C:
    push {r4-r7,lr}
    sub sp, sp, #8
    bl sub_8001532
    add r7, r0, #0
    mov r0, #0
    str r0, [sp]
    mov r4, r10
    ldr r4, [r4,#0x18]
    add r4, #0x90
    mov r6, #0
loc_80AA8A2:
    ldr r5, [r4]
    tst r5, r5
    beq loc_80AA8C2
    ldrh r0, [r5,#0x28]
    bl sub_80AED50
    lsr r7, r7, #4
loc_80AA8B0:
    mov r1, #0x1e
    and r1, r7
    lsr r7, r7, #5
    ldrh r0, [r0,r1]
    ldr r1, [pc, #0x80aa8dc-0x80aa8b8-4] // =0xFFFF
    cmp r0, r1
    beq loc_80AA8C2
    str r5, [sp]
    str r0, [sp,#4]
loc_80AA8C2:
    add r4, #4
    add r6, #1
    cmp r6, #4
    blt loc_80AA8A2
    ldr r0, [sp]
    tst r0, r0
    beq loc_80AA8D8
    ldr r1, [sp,#4]
    strh r1, [r0,#0x2a]
    mov r1, #1
    strb r1, [r0,#0x1a]
loc_80AA8D8:
    add sp, sp, #8
    pop {r4-r7,pc}
dword_80AA8DC:    .word 0xFFFF
.endfunc // sub_80AA88C

.func
.thumb_func
sub_80AA8E0:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x2c
    mov r7, #0
    str r7, [sp,#0x1c]
    str r7, [sp,#0x20]
    tst r1, r1
    beq loc_80AA908
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    str r4, [sp,#0x10]
    str r5, [sp,#0x14]
    bl sub_80AA910
    str r0, [sp,#0x1c]
    mov r0, r10
    ldr r0, [r0,#0x18]
loc_80AA904:
    ldrh r0, [r0,#0x36]
    str r0, [sp,#0x20]
loc_80AA908:
    ldr r0, [sp,#0x1c]
    ldr r1, [sp,#0x20]
    add sp, sp, #0x2c
    pop {r4,r6,r7,pc}
.endfunc // sub_80AA8E0

.func
.thumb_func
sub_80AA910:
    push {r4-r7,lr}
    sub sp, sp, #0x2c
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    str r4, [sp,#0x10]
    str r5, [sp,#0x14]
    ldr r0, [sp,#0x14]
    mov r1, #0x26 
    bl sub_80136CC
    mov r1, #1
    tst r0, r1
    beq loc_80AA946
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #0
    bl sub_80AAA3C
    bl sub_80AAE98
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x10]
    bl sub_80AAB04
    b loc_80AAA18
loc_80AA946:
    mov r1, #2
    tst r0, r1
    bne loc_80AA96C
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #0
    bl sub_80AAA3C
    bl sub_80AAE98
    add r4, r0, #0
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x10]
    mov r3, #0
    bl sub_80AAA98
    ldrh r0, [r4,r0]
    b loc_80AAA18
loc_80AA96C:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #1
    bl sub_80AAA3C
    tst r0, r0
    beq loc_80AAA04
    bl sub_80AAE98
    add r4, r0, #0
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x10]
    mov r3, #2
loc_80AA988:
    bl sub_80AAA98
    cmp r0, #0x14
    blt loc_80AA994
    add r4, #0x14
    sub r0, #0x14
loc_80AA994:
    add r7, r0, #0
    add r2, r7, #0
loc_80AA998:
    add r5, r4, r2
    mov r0, #0
    str r0, [sp,#0x28]
    mov r3, #0
loc_80AA9A0:
    ldrh r0, [r5]
    lsr r1, r0, #0xe
    bne loc_80AA9B8
    add r1, sp, #0x24
    ldr r0, [sp,#0x28]
    add r0, r0, r0
    add r1, r1, r0
    ldrh r0, [r5]
    strh r0, [r1]
    ldr r0, [sp,#0x28]
    add r0, #1
    str r0, [sp,#0x28]
loc_80AA9B8:
    sub r5, #2
    add r3, #1
    cmp r3, #2
    blt loc_80AA9A0
    ldr r0, [sp,#0x28]
    tst r0, r0
    bne loc_80AAA0A
    sub r2, #4
    bge loc_80AA998
    add r2, r7, #0
    cmp r2, #0x12
    bge loc_80AAA04
loc_80AA9D0:
    add r5, r4, r2
    mov r0, #0
    str r0, [sp,#0x28]
    mov r3, #0
loc_80AA9D8:
    ldrh r0, [r5]
    lsr r1, r0, #0xe
loc_80AA9DC:
    bne loc_80AA9F0
    add r1, sp, #0x24
    ldr r0, [sp,#0x28]
    add r0, r0, r0
    add r1, r1, r0
    ldrh r0, [r5]
    strh r0, [r1]
    ldr r0, [sp,#0x28]
    add r0, #1
    str r0, [sp,#0x28]
loc_80AA9F0:
    sub r5, #2
    add r3, #1
    cmp r3, #2
    blt loc_80AA9D8
    ldr r0, [sp,#0x28]
    tst r0, r0
    bne loc_80AAA0A
    add r2, #4
    cmp r2, #0x14
    blt loc_80AA9D0
loc_80AAA04:
    mov r0, #0
    sub r0, #1
    b loc_80AAA18
loc_80AAA0A:
    bl sub_8001532
    ldr r1, [sp,#0x28]
    svc 6
    add r0, sp, #0x24
    add r1, r1, r1
    ldrh r0, [r0,r1]
loc_80AAA18:
    add sp, sp, #0x2c
    pop {r4-r7,pc}
.endfunc // sub_80AA910

.func
.thumb_func
sub_80AAA1C:
    push {r4,lr}
    bl sub_80AAE98
    add r3, r0, #0
    mov r0, #0
    mov r4, #0
loc_80AAA28:
    ldrh r1, [r3]
    lsr r1, r1, #0xe
    mov r2, #1
    lsl r2, r1
loc_80AAA30:
    orr r0, r2
    add r3, #2
    add r4, #1
    cmp r4, #0x14
    blt loc_80AAA28
    pop {r4,pc}
.endfunc // sub_80AAA1C

.func
.thumb_func
sub_80AAA3C:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    add r4, r0, #0
    add r5, r1, #0
    tst r2, r2
    bne loc_80AAA56
    bl sub_8001532
    add r1, r5, #0
    svc 6
    add r1, r1, r1
    ldrh r0, [r4,r1]
    b loc_80AAA94
loc_80AAA56:
    mov r2, #0
    str r2, [sp,#8]
    mov r6, #0
    mov r7, sp
loc_80AAA5E:
    add r1, r6, r6
    ldrh r0, [r4,r1]
    str r0, [sp,#4]
    bl sub_80AAA1C
    mov r1, #1
    tst r0, r1
    beq loc_80AAA7A
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    add r2, r1, r1
    strh r0, [r7,r2]
    add r1, #1
    str r1, [sp,#8]
loc_80AAA7A:
    add r6, #1
    cmp r6, r5
    blt loc_80AAA5E
    ldr r0, [sp,#8]
    tst r0, r0
loc_80AAA84:
    beq loc_80AAA94
    bl sub_8001532
    ldr r1, [sp,#8]
    svc 6
    mov r0, sp
    add r1, r1, r1
    ldrh r0, [r0,r1]
loc_80AAA94:
    add sp, sp, #0xc
    pop {r4-r7,pc}
.endfunc // sub_80AAA3C

.func
.thumb_func
sub_80AAA98:
    push {r4,lr}
    sub sp, sp, #0x18
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r4, r3, #0
    mov r0, #0x14
    lsr r2, r2, #3
    add r3, r2, r2
    add r3, r3, r2
    cmp r1, r3
    ble loc_80AAAB2
    mov r0, #0
loc_80AAAB2:
    str r0, [sp,#0x14]
    bl sub_8001532
    lsr r0, r0, #8
    mov r1, #1
    and r1, r0
    add r1, r1, r1
    str r1, [sp,#0xc]
    lsr r0, r0, #8
    mov r1, #0xf
    and r1, r0
    str r1, [sp,#0x10]
    cmp r4, #0
    bne loc_80AAAE4
loc_80AAACE:
    ldr r0, [sp]
    lsl r0, r0, #4
    ldr r1, [sp,#0x10]
    add r0, r0, r1
    ldr r1, [pc, #0x80aab00-0x80aaad6-2] // =dword_8020B9C
loc_80AAAD8:
    ldrb r0, [r1,r0]
    ldr r1, [sp,#0xc]
    add r0, r0, r1
    ldr r1, [sp,#0x14]
    add r0, r0, r1
    b loc_80AAAFC
loc_80AAAE4:
    cmp r4, #1
    bne loc_80AAAF0
    ldr r0, [sp,#0xc]
    ldr r1, [sp,#0x14]
    add r0, r0, r1
    b loc_80AAAFC
loc_80AAAF0:
    cmp r4, #2
    bne loc_80AAAFA
    mov r0, #2
    str r0, [sp,#0xc]
    b loc_80AAACE
loc_80AAAFA:
    b loc_80AAAFA
loc_80AAAFC:
    add sp, sp, #0x18
    pop {r4,pc}
off_80AAB00:    .word dword_8020B9C
.endfunc // sub_80AAA98

.func
.thumb_func
sub_80AAB04:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x28
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, #0x14
    lsr r2, r2, #3
    add r3, r2, r2
    add r3, r3, r2
    cmp r1, r3
    ble loc_80AAB1C
    mov r0, #0
loc_80AAB1C:
    ldr r1, [sp]
    add r0, r0, r1
    str r0, [sp]
    mov r4, #0
    mov r6, #0
    ldr r7, [sp]
loc_80AAB28:
    ldrh r0, [r7]
    add r1, r0, #0
    lsr r1, r1, #0xe
    cmp r1, #1
    bne loc_80AAB3A
    add r1, sp, #0xc
    add r2, r6, r6
    strh r0, [r1,r2]
    add r6, #1
loc_80AAB3A:
    add r7, #2
    add r4, #1
    cmp r4, #0xa
    blt loc_80AAB28
    tst r6, r6
    bne loc_80AAB56
    bl sub_8001532
    mov r1, #1
    and r0, r1
    add r0, r0, r0
    ldr r1, [sp]
    ldrh r0, [r1,r0]
    b loc_80AAB64
loc_80AAB56:
    bl sub_8001532
    add r1, r6, #0
    svc 6
    add r0, sp, #0xc
    add r1, r1, r1
    ldrh r0, [r0,r1]
loc_80AAB64:
    add sp, sp, #0x28
    pop {r4,r6,r7,pc}
.endfunc // sub_80AAB04

.func
.thumb_func
sub_80AAB68:
    push {r4,lr}
    add r4, r0, #0
    bl sub_800151C
    mov r1, #0xf
    and r1, r0
    add r0, r4, #0
    ldr r2, [pc, #0x80aab84-0x80aab76-2] // =dword_8020B9C
    lsl r0, r0, #4
    add r2, r2, r0
    ldrb r1, [r2,r1]
    lsr r0, r1, #2
    pop {r4,pc}
    .balign 4, 0x00
off_80AAB84:    .word dword_8020B9C
.endfunc // sub_80AAB68

.func
.thumb_func
sub_80AAB88:
    push {r5-r7,lr}
    mov r3, #0
    add r5, r2, #0
    add r6, r0, #0
    add r7, r1, #0
loc_80AAB92:
    ldrb r0, [r6,r3]
    ldrb r1, [r7,r3]
    orr r0, r1
    mvn r0, r0
    strb r0, [r5,r3]
    add r3, #1
    cmp r3, #0x28 
    blt loc_80AAB92
    pop {r5-r7,pc}
.endfunc // sub_80AAB88

.func
.thumb_func
sub_80AABA4:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    bl sub_80AAB68
    str r0, [sp]
    mov r4, #0
    str r4, [sp,#4]
    str r4, [sp,#8]
    ldr r5, [pc, #0x80aac78-0x80aabb4-4] // =unk_2036750
    ldr r6, [pc, #0x80aac80-0x80aabb6-2] // =dword_2033000
loc_80AABB8:
    lsr r0, r4, #3
    ldrb r0, [r5,r0]
    mov r1, #7
    and r1, r4
    mov r2, #0x80
    lsr r2, r1
    tst r0, r2
    beq loc_80AABEA
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#9]
    mov r2, #8
    tst r1, r2
    beq loc_80AABEA
    ldrb r1, [r0,#5]
    add r2, sp, #4
    ldrb r3, [r2,r1]
    lsl r7, r1, #8
    add r7, r7, r6
    add r3, r3, r3
    strh r4, [r7,r3]
    lsr r3, r3, #1
    add r3, #1
    strb r3, [r2,r1]
loc_80AABEA:
    ldr r0, [pc, #0x80aac7c-0x80aabea-2] // =0x140
    add r4, #1
    cmp r4, r0
    blt loc_80AABB8
    ldr r0, [sp,#4]
    ldr r1, [sp,#8]
    orr r0, r1
    beq loc_80AAC70
    ldr r1, [sp]
loc_80AABFC:
    add r2, sp, #4
    ldrb r0, [r2,r1]
    tst r0, r0
    bne loc_80AAC1E
    sub r1, #1
    bge loc_80AABFC
    ldr r1, [sp]
loc_80AAC0A:
    add r1, #4
    mov r2, sp
    add r2, r2, r1
    ldrb r0, [r2]
    tst r0, r0
    bne loc_80AAC1E
    add r1, #1
    cmp r1, #5
    blt loc_80AAC0A
loc_80AAC1C:
    b loc_80AAC1C
loc_80AAC1E:
    str r1, [sp]
    bl sub_8001532
    mov r2, sp
    ldr r1, [sp]
    add r1, #4
    ldrb r1, [r2,r1]
    svc 6
    ldr r0, [sp]
    lsl r0, r0, #8
    add r6, r6, r0
    add r1, r1, r1
    ldrh r0, [r6,r1]
    str r0, [sp,#0xc]
    bl sub_8021AA4
    mov r2, #0
    mov r3, #0
loc_80AAC42:
    ldrb r1, [r0,r3]
    cmp r1, #0x1a
    beq loc_80AAC54
    cmp r1, #0xff
    beq loc_80AAC54
    add r2, #1
    add r3, #1
    cmp r3, #4
    blt loc_80AAC42
loc_80AAC54:
    add r4, r2, #0
    add r5, r0, #0
    mov r0, #0x1a
    tst r2, r2
    beq loc_80AAC68
    bl sub_8001532
    add r1, r4, #0
    svc 6
    ldrb r0, [r5,r1]
loc_80AAC68:
    ldr r1, [sp,#0xc]
    lsl r0, r0, #9
    orr r0, r1
    b loc_80AAC72
loc_80AAC70:
    ldr r0, [pc, #0x80aac88-0x80aac70-4] // =0x201
loc_80AAC72:
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80AAC78:    .word unk_2036750
off_80AAC7C:    .word 0x140
off_80AAC80:    .word dword_2033000
    .word 0x2201
off_80AAC88:    .word 0x201
.endfunc // sub_80AABA4

.func
.thumb_func
sub_80AAC8C:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    bl sub_8001532
    mov r1, #0xff
    and r0, r1
    cmp r0, #8
    bge loc_80AACAA
    bl sub_80AAE36
    tst r0, r0
    bne loc_80AACAA
    ldr r0, [pc, #0x80aad00-0x80aaca6-2] // =0xFFFF
    b loc_80AACF8
loc_80AACAA:
    bl sub_80AADA6
    add r0, sp, #4
    bl sub_80AAD70
    ldr r0, [sp]
    bl sub_80AAB68
    add r1, r0, r0
    add r4, sp, #4
    mov r2, #0
    add r3, r1, #0
loc_80AACC2:
    ldrh r0, [r4,r1]
    tst r0, r0
    bne loc_80AACE2
    tst r2, r2
    beq loc_80AACD8
    add r1, #2
    cmp r1, #0xa
    ble loc_80AACC2
    mov r0, #0
    mov r1, #0
    b loc_80AACF4
loc_80AACD8:
    sub r1, #2
    bge loc_80AACC2
    mov r2, #1
    add r1, r3, #0
    b loc_80AACC2
loc_80AACE2:
    add r4, r0, #0
    lsr r6, r1, #1
    bl sub_8001532
    add r1, r4, #0
    svc 6
    add r0, r6, #0
    bl sub_80AAD04
loc_80AACF4:
    lsl r1, r1, #9
    orr r0, r1
loc_80AACF8:
    add sp, sp, #0x10
    pop {r4,r6,r7,pc}
    .word dword_8020B9C
dword_80AAD00:    .word 0xFFFF
.endfunc // sub_80AAC8C

.func
.thumb_func
sub_80AAD04:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    ldr r6, [pc, #0x80aae6c-0x80aad08-4] // =dword_203300C
    add r7, r0, #0
    add r4, r1, #0
    mov r5, #1
loc_80AAD10:
    ldr r0, [r6]
    tst r0, r0
    beq loc_80AAD26
    add r0, r5, #0
    bl sub_8021AA4
    ldrb r1, [r0,#5]
    cmp r1, r7
    bne loc_80AAD26
    sub r4, #1
    blt loc_80AAD30
loc_80AAD26:
    add r6, #0xc
    add r5, #1
    ldr r1, [pc, #0x80aae70-0x80aad2a-2] // =0x140
    cmp r5, r1
    blt loc_80AAD10
loc_80AAD30:
    str r0, [sp]
    str r5, [sp,#4]
    ldr r6, [pc, #0x80aae74-0x80aad34-4] // =dword_2033000
    mov r0, #0xc
    mul r0, r5
    add r6, r6, r0
    add r4, sp, #0xc
    mov r1, #0
    mov r3, #0
loc_80AAD42:
    ldrb r0, [r6,r3]
    tst r0, r0
    beq loc_80AAD4E
    strb r3, [r4]
    add r4, #1
    add r1, #1
loc_80AAD4E:
    add r3, #1
    cmp r3, #4
    bmi loc_80AAD42
    str r1, [sp,#8]
    bl sub_8001532
    ldr r1, [sp,#8]
    svc 6
    add r4, sp, #0xc
    ldrb r0, [r4,r1]
    mov r1, #0
    add r1, r1, r0
    ldr r7, [sp]
    ldrb r1, [r7,r1]
    ldr r0, [sp,#4]
    add sp, sp, #0x14
    pop {r4-r7,pc}
.endfunc // sub_80AAD04

.func
.thumb_func
sub_80AAD70:
    push {r4,r6,r7,lr}
    mov r1, #0
    str r1, [r0]
    str r1, [r0,#4]
    str r1, [r0,#8]
    add r7, r0, #0
    ldr r6, [pc, #0x80aae78-0x80aad7c-4] // =dword_203300C
    mov r4, #1
loc_80AAD80:
    ldr r0, [r6]
    tst r0, r0
    beq loc_80AAD9A
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#5]
    cmp r1, #0xff
    beq loc_80AAD9A
    add r1, r1, r1
    ldrh r0, [r7,r1]
    add r0, #1
    strh r0, [r7,r1]
loc_80AAD9A:
    add r6, #0xc
    add r4, #1
    ldr r3, [pc, #0x80aae70-0x80aad9e-2] // =0x140
    cmp r4, r3
    blt loc_80AAD80
    pop {r4,r6,r7,pc}
.endfunc // sub_80AAD70

.func
.thumb_func
sub_80AADA6:
    push {r4,r6,r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    mov r7, r10
    ldr r7, [r7,#0x48]
    mov r4, #0x1e
    mul r4, r0
loc_80AADB6:
    ldrh r0, [r7]
    lsr r1, r0, #9
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r2, #1
    bl sub_8021B92
    add r7, #2
    sub r4, #1
    bne loc_80AADB6
    mov r0, r10
    ldr r0, [r0,#0x4c]
    ldr r1, [pc, #0x80aae7c-0x80aadce-2] // =dword_2033000
    ldr r2, [pc, #0x80aae80-0x80aadd0-4] // =0xF00
    bl sub_800093C
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    mov r7, r10
    ldr r7, [r7,#0x48]
    mov r4, #0x1e
    mul r4, r0
loc_80AADE4:
    ldrh r0, [r7]
    lsr r1, r0, #9
    lsl r0, r0, #0x17
    lsr r0, r0, #0x17
    mov r2, #1
    bl sub_8021B2A
    add r7, #2
    sub r4, #1
    bne loc_80AADE4
    mov r4, #0
    ldr r7, [pc, #0x80aae84-0x80aadfa-2] // =dword_2033000
loc_80AADFC:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r1, [r0,#7]
    cmp r1, #2
    beq loc_80AAE24
    ldrb r1, [r0,#9]
    mov r2, #0x20 
    tst r1, r2
    bne loc_80AAE24
    ldr r1, [pc, #0x80aae88-0x80aae10-4] // =0x137
    cmp r4, r1
    beq loc_80AAE24
    ldr r1, [pc, #0x80aae8c-0x80aae16-2] // =0x138
    cmp r4, r1
    beq loc_80AAE24
    ldr r1, [pc, #0x80aae90-0x80aae1c-4] // =0x139
    cmp r4, r1
    beq loc_80AAE24
    b loc_80AAE28
loc_80AAE24:
    mov r0, #0
    str r0, [r7]
loc_80AAE28:
    add r7, #0xc
    add r4, #1
    mov r0, #0xa0
    add r0, r0, r0
    cmp r4, r0
    blt loc_80AADFC
    pop {r4,r6,r7,pc}
.endfunc // sub_80AADA6

.func
.thumb_func
sub_80AAE36:
    push {r4,r7,lr}
    mov r4, #1
    ldr r7, [pc, #0x80aae94-0x80aae3a-2] // =unk_2036750
loc_80AAE3C:
    add r0, r4, #0
    bl sub_8021AA4
    ldrb r0, [r0,#9]
    mov r1, #8
    tst r0, r1
    beq loc_80AAE5A
    lsr r0, r4, #3
    mov r1, #7
    and r1, r4
    mov r2, #0x80
    lsr r2, r1
    ldrb r0, [r7,r0]
    tst r0, r2
    bne loc_80AAE66
loc_80AAE5A:
    ldr r0, [pc, #0x80aae70-0x80aae5a-2] // =0x140
    add r4, #1
    cmp r4, r0
    blt loc_80AAE3C
    mov r0, #1
    b locret_80AAE68
loc_80AAE66:
    mov r0, #0
locret_80AAE68:
    pop {r4,r7,pc}
    .balign 4, 0x00
off_80AAE6C:    .word dword_203300C
off_80AAE70:    .word 0x140
off_80AAE74:    .word dword_2033000
off_80AAE78:    .word dword_203300C
off_80AAE7C:    .word dword_2033000
off_80AAE80:    .word 0xF00
off_80AAE84:    .word dword_2033000
dword_80AAE88:    .word 0x137
off_80AAE8C:    .word 0x138
off_80AAE90:    .word 0x139
off_80AAE94:    .word unk_2036750
.endfunc // sub_80AAE36

.func
.thumb_func
sub_80AAE98:
    ldr r2, [pc, #0x80aaea4-0x80aae98-4] // =dword_80AAEA8
    mov r1, #0x28 
    mul r0, r1
    add r0, r0, r2
    mov pc, lr
    .balign 4, 0x00
// <endpool> <endfile>
off_80AAEA4:    .word dword_80AAEA8
.endfunc // sub_80AAE98

/*For debugging purposes, connect comment at any range!*/
