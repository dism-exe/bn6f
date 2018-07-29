.include "asm02.inc"

.thumb
sub_8021AA4:
    ldr r1, [pc, #0x8021ab0-0x8021aa4-4] // =dword_8021DA8
    mov r2, #0x2c 
    mul r0, r2
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_8021AB0:    .word dword_8021DA8
// end of function sub_8021AA4

.thumb
sub_8021AB4:
    push {r4,r6,r7,lr}
    mov r2, #0x3c 
    mul r1, r2
    mov r3, r10
    ldr r3, [r3,#0x48]
    add r1, r1, r3
    mov r2, #0x3c 
    push {r1}
    bl sub_800093C
    pop {r7}
    mov r6, #0
loc_8021ACC:
    ldrh r0, [r7,r6]
    bl sub_8021AE0
    mov r2, #1
    bl sub_8021B2A
    add r6, #2
    cmp r6, #0x3c 
    blt loc_8021ACC
    pop {r4,r6,r7,pc}
// end of function sub_8021AB4

.thumb
sub_8021AE0:
    push {lr}
    lsr r1, r0, #9
    ldr r2, [pc, #0x8021aec-0x8021ae4-4] // =0xB51001FF
    and r0, r2
    pop {pc}
    .balign 4, 0x00
dword_8021AEC:    .word 0xB51001FF
// end of function sub_8021AE0

    push {r0-r2}
    bl sub_8006E70
    pop {r0-r2}
    tst r2, r2
    bne loc_8021B00
    mov r0, #0
    pop {r4,pc}
loc_8021B00:
    push {r0-r2}
    ldr r1, [pc, #0x8021b74-0x8021b02-2] // =0x1E20
    add r1, r1, r0
    add r0, r1, #0
    bl sub_802F114
    pop {r0-r2}
    push {r2}
    bl sub_8021C7C
    add r4, r3, #0
    pop {r2}
    bl sub_8021B5A
    push {r3}
    add r1, r4, #0
    bl sub_81376B8
    pop {r3}
    add r0, r3, #0
    pop {r4,pc}
.thumb
sub_8021B2A:
    push {lr}
    push {r0-r2}
    bl sub_8006E70
    pop {r0-r2}
    tst r2, r2
    bne loc_8021B3C
    mov r0, #0
    pop {pc}
loc_8021B3C:
    push {r0-r2}
    ldr r1, [pc, #0x8021b74-0x8021b3e-2] // =0x1E20
    add r1, r1, r0
    add r0, r1, #0
    bl sub_802F114
    pop {r0-r2}
    push {r2}
    bl sub_8021C7C
    pop {r2}
    bl sub_8021B5A
    add r0, r3, #0
    pop {pc}
// end of function sub_8021B2A

.thumb
sub_8021B5A:
    mov r3, #1
    ldrb r1, [r0]
    cmp r1, #0x63 
    beq loc_8021B6E
    mov r3, #0
    add r1, r1, r2
    cmp r1, #0x63 
    ble loc_8021B6E
    mov r1, #0x63 
    mov r3, #2
loc_8021B6E:
    strb r1, [r0]
    mov pc, lr
    .balign 4, 0x00
off_8021B74:    .word 0x1E20
// end of function sub_8021B5A

.thumb
sub_8021B78:
    push {lr}
    push {r0-r2}
    tst r2, r2
    beq loc_8021B84
    bl sub_8006E70
loc_8021B84:
    pop {r0-r2}
    push {r2}
    bl sub_8021C7C
    pop {r2}
    strb r2, [r0]
    pop {pc}
// end of function sub_8021B78

.thumb
sub_8021B92:
    push {r4,lr}
    push {r2}
    bl sub_8021C7C
    add r4, r3, #0
    pop {r2}
    mov r3, #1
    ldrb r1, [r0]
    tst r1, r1
    beq loc_8021BB0
    mov r3, #0
    sub r1, r1, r2
    bge loc_8021BB0
    mov r3, #2
    add r1, r1, r2
loc_8021BB0:
    strb r1, [r0]
    tst r1, r1
    bne loc_8021BBC
    push {r3}
    add r1, r4, #0
    pop {r3}
loc_8021BBC:
    add r0, r3, #0
    pop {r4,pc}
// end of function sub_8021B92

.thumb
sub_8021BC0:
    push {r4,lr}
    push {r0,r1}
    bl sub_8006EA4
    pop {r0,r1}
    bne loc_8021BD4
    bl sub_8021C7C
    ldrb r0, [r0]
    pop {r4,pc}
loc_8021BD4:
    mov r0, #0
    pop {r4,pc}
// end of function sub_8021BC0

.thumb
sub_8021BD8:
    push {r7,lr}
    push {r0}
    bl sub_8006E84
    pop {r0}
    bne loc_8021BFE
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r1, #0xc
    mul r1, r0
    add r7, r7, r1
    ldrb r0, [r7]
    ldrb r1, [r7,#1]
    add r0, r0, r1
    ldrb r1, [r7,#2]
    add r0, r0, r1
    ldrb r1, [r7,#3]
    add r0, r0, r1
    pop {r7,pc}
loc_8021BFE:
    mov r0, #0
    pop {r7,pc}
// end of function sub_8021BD8

.thumb
sub_8021C02:
    push {r4-r7,lr}
    sub sp, sp, #4
    push {r0,r1}
    mov r2, r10
    ldr r2, [r2,#0x40]
    pop {r0,r1}
    ldrb r2, [r2,#5]
    str r2, [sp]
    mov r4, #0
    mov r5, #0
loc_8021C16:
    mov r7, r10
    ldr r7, [r7,#0x48]
    ldr r6, [pc, #0x8021c60-0x8021c1a-2] // =unk_20018EC
    ldrb r3, [r6,r4]
    lsr r2, r3, #4
    mov r3, #0x3c 
    mul r3, r2
    add r3, r3, r7
    mov r2, #0
loc_8021C28:
    ldrh r7, [r3,r2]
    ldr r6, [pc, #0x8021c64-0x8021c2a-2] // =0x1F8
    and r6, r7
    lsr r7, r7, #9
    cmp r0, r6
    bne loc_8021C48
    cmp r1, r7
    bne loc_8021C48
    push {r0,r1}
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8006EA4
    pop {r0,r1}
    bne loc_8021C48
    add r5, #1
loc_8021C48:
    add r2, #2
    cmp r2, #0x3c 
    blt loc_8021C28
    add r4, #1
    ldr r2, [sp]
    sub r2, #1
    str r2, [sp]
    bne loc_8021C16
    add sp, sp, #4
    add r0, r5, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_8021C60:    .word unk_20018EC
dword_8021C64:    .word 0x1FF
// end of function sub_8021C02

.thumb
sub_8021C68:
    push {lr}
    mov r0, r10
// memBlock
    ldr r0, [r0,#0x4c]
// numWords
    ldr r1, [pc, #0x8021c78-0x8021c6e-2] // =0xF00
    bl CpuSet_ZeroFillWord
    pop {pc}
    .balign 4, 0x00
dword_8021C78:    .word 0xF00
// end of function sub_8021C68

.thumb
sub_8021C7C:
    push {r4,r7,lr}
    add r2, r0, #0
    push {r1,r2}
    bl sub_8021AA4
    pop {r1,r2}
    add r0, #0
    mov r3, #0
loc_8021C8C:
    ldrb r4, [r0,r3]
    cmp r1, r4
    beq loc_8021C9A
    add r3, #1
    cmp r3, #4
    blt loc_8021C8C
    mov r3, #0
loc_8021C9A:
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r1, #0xc
    mul r1, r2
    add r7, r7, r1
    add r0, r7, r3
    pop {r4,r7,pc}
// end of function sub_8021C7C

.thumb
sub_8021CA8:
    push {r4-r7,lr}
    mov r4, #0
    mov r5, #0
    mov r2, #0
loc_8021CB0:
    add r0, r2, #0
    push {r2}
    bl sub_8021AA4
    pop {r2}
    push {r0,r2}
    add r0, r2, #0
    bl sub_8006E84
    pop {r0,r2}
    bne loc_8021CF4
    mov r3, #0
loc_8021CC8:
    ldrb r6, [r0,r3]
    cmp r6, #0xff
    beq loc_8021CEE
    ldrb r7, [r0,#9]
    mov r1, #0x20 
    tst r7, r1
    bne loc_8021CEE
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r1, #0xc
    mul r1, r2
    add r7, r7, r1
    add r1, r7, r3
    ldrb r1, [r1]
    add r4, r4, r1
    ldrb r7, [r0,#7]
    cmp r7, #2
    bne loc_8021CEE
    add r5, r5, r1
loc_8021CEE:
    add r3, #1
    cmp r3, #4
    blt loc_8021CC8
loc_8021CF4:
    add r2, #1
    ldr r1, [pc, #0x8021d04-0x8021cf6-2] // =0x140
    cmp r2, r1
    blt loc_8021CB0
    add r0, r4, #0
    add r1, r5, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8021D04:    .word 0x140
// end of function sub_8021CA8

.thumb
sub_8021D08:
    push {lr}
    ldr r0, [pc, #0x8021d94-0x8021d0a-2] // =unk_203A0A0
    ldr r1, [pc, #0x8021d98-0x8021d0c-4] // =0x2E0
    bl sub_80008C0
    pop {pc}
// end of function sub_8021D08

.thumb
sub_8021D14:
    push {lr}
    ldr r2, [pc, #0x8021d9c-0x8021d16-2] // =0x170
    mul r2, r0
    ldr r0, [pc, #0x8021da0-0x8021d1a-2] // =unk_203A0A0
    add r0, r0, r2
    ldrb r2, [r0,r1]
    cmp r2, #0xff
    bge locret_8021D28
    add r2, #1
    strb r2, [r0,r1]
locret_8021D28:
    pop {pc}
// end of function sub_8021D14

    ldr r2, [pc, #0x8021d9c-0x8021d2a-2] // =0x170
    mul r2, r0
    ldr r0, [pc, #0x8021da4-0x8021d2e-2] // =unk_203A0A0
    add r0, r0, r2
    ldrb r0, [r0,r1]
    mov pc, lr
.thumb
sub_8021D36:
    push {lr}
    ldr r0, [pc, #0x8021d6c-0x8021d38-4] // =unk_2000AF0
    mov r1, #0x40 
    bl sub_80008C0
    ldr r0, [pc, #0x8021d80-0x8021d40-4] // =dword_8021D88
    ldr r1, [pc, #0x8021d70-0x8021d42-2] // =unk_2001184
    mov r2, #8
    bl sub_800093C
    ldr r0, [pc, #0x8021d80-0x8021d4a-2] // =dword_8021D88
    ldr r1, [pc, #0x8021d74-0x8021d4c-4] // =unk_200119C
    mov r2, #8
    bl sub_800093C
    ldr r0, [pc, #0x8021d84-0x8021d54-4] // =dword_8021D88
    ldr r1, [pc, #0x8021d78-0x8021d56-2] // =0x20007D6
    mov r2, #8
    bl sub_800093C
    ldr r0, [pc, #0x8021d84-0x8021d5e-2] // =dword_8021D88
    ldr r1, [pc, #0x8021d7c-0x8021d60-4] // =0x200083A
    mov r2, #8
    bl sub_800093C
    pop {pc}
    .balign 4, 0x00
off_8021D6C:    .word unk_2000AF0
off_8021D70:    .word unk_2001184
off_8021D74:    .word unk_200119C
dword_8021D78:    .word 0x20007D6
dword_8021D7C:    .word 0x200083A
off_8021D80:    .word dword_8021D88
dword_8021D84:    .word 0x8021D8A
// <endpool>
dword_8021D88:    .word 0x7E7E0002, 0xE67E7E, 0x0
// end of function sub_8021D36

off_8021D94:    .word unk_203A0A0
off_8021D98:    .word 0x2E0
off_8021D9C:    .word 0x170
off_8021DA0:    .word unk_203A0A0
// <endfile>
off_8021DA4:    .word unk_203A0A0
/*For debugging purposes, connect comment at any range!*/
