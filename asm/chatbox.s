.include "chatbox.inc"

.func
.thumb_func
chatbox_uncomp_803FD08:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8040730
    ldr r1, [pc, #0x803fd30-0x803fd10-4] // =unk_202DA00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    bl sub_8040794
    ldr r1, [pc, #0x803fd34-0x803fd1a-2] // =unk_2033400
    bl SWI_LZ77UnCompReadNormalWrite8bit
    bl sub_80407C8
    ldr r1, [pc, #0x803fd38-0x803fd24-4] // =unk_202FA00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_803FD30:    .word unk_202DA00
off_803FD34:    .word unk_2033400
off_803FD38:    .word unk_202FA00
.endfunc // chatbox_uncomp_803FD08

.func
.thumb_func
chatbox_dead_uncomp_803FD3C:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_8040730
    ldr r1, [pc, #0x803fd50-0x803fd44-4] // =unk_2034A00
    bl SWI_LZ77UnCompReadNormalWrite8bit
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_803FD50:    .word unk_2034A00
.endfunc // chatbox_dead_uncomp_803FD3C

.func
.thumb_func
chatbox_uncomp_803FD54:
    push {r4-r7,lr}
    bl sub_8040794
    ldr r1, [pc, #0x803fd64-0x803fd5a-2] // =unk_2033400
    bl SWI_LZ77UnCompReadNormalWrite8bit
    mov r0, #0
    pop {r4-r7,pc}
off_803FD64:    .word unk_2033400
.endfunc // chatbox_uncomp_803FD54

.func
.thumb_func
chatbox_runScript_202da04:
    push {r4,r5,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x803fd74-0x803fd6c-4] // =unk_202DA04
    bl chatbox_runScript
    pop {r4,r5,pc}
off_803FD74:    .word unk_202DA04
.endfunc // chatbox_runScript_202da04

.func
.thumb_func
chatbox_803FD78:
    push {r4,r5,lr}
    bl chatbox_runScript
    ldr r0, [pc, #0x803fd90-0x803fd7e-2] // =unk_803FD94
    mov r1, r10
    ldr r1, [r1,#0x2c]
    add r1, #0x68 
    mov r2, #8
    bl sub_800092A
    pop {r4,r5,pc}
    .byte 0, 0
off_803FD90:    .word unk_803FD94
unk_803FD94:    .byte 0x7E 
    .byte 0
    .byte 0x83
    .byte 0
    .byte 0x7F 
    .byte 0
    .byte 0x81
    .byte 0
.endfunc // chatbox_803FD78

.func
.thumb_func
chatbox_803FD9C:
    push {r4,r5,lr}
    mov r4, #0
    b loc_803FDA8
    .balign 4, 0x00
loc_803FDA4:
    push {r4,r5,lr}
    mov r4, #1
loc_803FDA8:
    bl chatbox_runScript
    ldr r0, [pc, #0x803fdec-0x803fdac-4] // =dword_86BF480+1824
    ldr r1, [pc, #0x803fdf0-0x803fdae-2] // =0x600DC80
    ldr r2, [pc, #0x803fdf4-0x803fdb0-4] // =0x280
    bl loc_8000AC8
    cmp r4, #1
    beq loc_803FDC6
    ldr r0, [pc, #0x803fdfc-0x803fdba-2] // =dword_86BFE20
    ldr r1, [pc, #0x803fe00-0x803fdbc-4] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    b loc_803FDD0
loc_803FDC6:
    ldr r0, [pc, #0x803fe04-0x803fdc6-2] // =dword_86BFE20+32
    ldr r1, [pc, #0x803fe00-0x803fdc8-4] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
loc_803FDD0:
    ldr r0, [pc, #0x803fde0-0x803fdd0-4] // =dword_803FDE4
    mov r1, r10
    ldr r1, [r1,#0x2c] // Toolkit.chatbox
    add r1, #0x68 
    mov r2, #8
    bl sub_800092A
    pop {r4,r5,pc}
off_803FDE0:    .word dword_803FDE4
dword_803FDE4:    .word 0x83007E, 0x81007F
off_803FDEC:    .word dword_86BF480+0x720
dword_803FDF0:    .word 0x600DC80
off_803FDF4:    .word 0x280
    .word 0x380
off_803FDFC:    .word dword_86BFE20
off_803FE00:    .word unk_3001B40
off_803FE04:    .word dword_86BFE20+0x20
.endfunc // chatbox_803FD9C

.func
.thumb_func
chatbox_803FE08:
    push {r4,r5,lr}
    mov r4, #0
    b loc_803FE14
    .byte 0, 0
.endfunc // chatbox_803FE08

.func
.thumb_func
chatbox_803FE10:
    push {r4,r5,lr}
    mov r4, #1
loc_803FE14:
    bl chatbox_runScript
    ldr r0, [pc, #0x803fe58-0x803fe18-4] // =dword_86BFE20+1984
    ldr r1, [pc, #0x803fe5c-0x803fe1a-2] // =0x600DC80
    ldr r2, [pc, #0x803fe60-0x803fe1c-4] // =0x320
    bl loc_8000AC8
    cmp r4, #1
    beq loc_803FE32
    ldr r0, [pc, #0x803fe68-0x803fe26-2] // =dword_86C0900
    ldr r1, [pc, #0x803fe6c-0x803fe28-4] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    b loc_803FE3C
loc_803FE32:
    ldr r0, [pc, #0x803fe70-0x803fe32-2] // =dword_86C0900+32
    ldr r1, [pc, #0x803fe6c-0x803fe34-4] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
loc_803FE3C:
    ldr r0, [pc, #0x803fe4c-0x803fe3c-4] // =dword_803FE50
    mov r1, r10
    ldr r1, [r1,#0x2c]
    add r1, #0x68 
    mov r2, #8
    bl sub_800092A
    pop {r4,r5,pc}
off_803FE4C:    .word dword_803FE50
dword_803FE50:    .word 0x83007E, 0x81007F
off_803FE58:    .word dword_86BFE20+0x7C0
dword_803FE5C:    .word 0x600DC80
off_803FE60:    .word 0x320
    .word 0x380
off_803FE68:    .word dword_86C0900
off_803FE6C:    .word unk_3001B40
off_803FE70:    .word dword_86C0900+0x20
.endfunc // chatbox_803FE10

.func
.thumb_func
chatbox_803FE74:
    push {r4,r5,lr}
    bl chatbox_runScript
    ldr r0, [pc, #0x803fe9c-0x803fe7a-2] // =dword_84E0554
    ldr r1, [pc, #0x803fea0-0x803fe7c-4] // =0x600DC80
    ldr r2, [pc, #0x803fea4-0x803fe7e-2] // =0x6F8
    bl loc_8000AC8
    ldr r0, [pc, #0x803feac-0x803fe84-4] // =dword_84E0554
    ldr r1, [pc, #0x803feb0-0x803fe86-2] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    pop {r4,r5,pc}
    .word 0x803FE94, 0x83007E, 0x81007F
off_803FE9C:    .word dword_84E0554
dword_803FEA0:    .word 0x600DC80
off_803FEA4:    .word 0x6F8
    .word 0x380
off_803FEAC:    .word dword_84E0554
off_803FEB0:    .word unk_3001B40
.endfunc // chatbox_803FE74

.func
.thumb_func
chatbox_onUpdate_803FEB4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c] // Toolkit.chatbox
    ldrb r0, [r5]
    tst r0, r0
    bne loc_803FEC2
    pop {r4-r7,pc}
loc_803FEC2:
    ldr r0, [pc, #0x803ff28-0x803fec2-2] // =0x338
    bl sub_8045F2C
    mov r0, #0x40 
    bl sub_8045F3C
    bne loc_803FEE2
    mov r7, r10
    ldr r7, [r7,#0x4] // Toolkit.joystick
    ldrh r1, [r7]
    strh r1, [r5,#0x22] // ChatBoxPropreties.keyState
    ldrh r1, [r7,#0x2] // Joystick.IQR
    strh r1, [r5,#0x26] // ChatBoxPropreties.keysFlags
    ldrh r1, [r7,#0x4] // Joystick.keyPress
    strh r1, [r5,#0x24] // ChatBoxPropreties.keyPress
    b loc_803FEEA
loc_803FEE2:
    mov r0, #0
    strh r0, [r5,#0x22] // ChatBoxPropreties.keyState
    strh r0, [r5,#0x26] // ChatBoxPropreties.keysFlags
    strh r0, [r5,#0x24] // ChatBoxPropreties.keyPress
loc_803FEEA:
    mov r0, #1
    bl chatbox_maskFlags_3e
    bne loc_803FF04
    ldr r1, [r5,#0x78] // ChatBoxPropreties.unk_78
    cmp r1, #0
    beq loc_803FEFE
    sub r1, #1
    str r1, [r5,#0x78] // ChatBoxPropreties.unk_78
    b loc_803FF04
loc_803FEFE:
    bl chatbox_8040154
    b loc_803FF08
loc_803FF04:
    mov r0, #1
    strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
loc_803FF08:
    ldr r0, [pc, #0x803ff2c-0x803ff08-4] // =jt_803FF30
    ldrb r1, [r5,#0x11] // ChatBoxPropreties.bxoff_11
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x803ff38-0x803ff14-4] // =off_803FF3C
    ldr r1, [r0]
    ldrh r1, [r5,r1]
    tst r1, r1
    beq locret_803FF26
    push {r0-r5}
    bl sub_8040CD0
    pop {r0-r5}
locret_803FF26:
    pop {r4-r7,pc}
off_803FF28:    .word 0x338
off_803FF2C:    .word jt_803FF30
jt_803FF30:    .word loc_804005C+1
    .word chatbox_interpreteScriptChar+1
off_803FF38:    .word off_803FF3C
off_803FF3C:    .word 0x1D4
    .word 0x1D6, 0x1D8, 0x1E8, 0x1EC
.endfunc // chatbox_onUpdate_803FEB4

.func
.thumb_func
chatbox_interpreteScriptChar:
    push {lr}
    mov r0, #1
    strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
loc_803FF56:
    ldr r4, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
    ldrb r1, [r4]
    cmp r1, #0xe5
    bmi loc_803FF7C
    mov r0, #0
    ldrb r2, [r5,#0x9] // ChatBoxPropreties.bNumCharacterTyped
    cmp r2, #0
    bgt loc_803FFCC
    sub r1, #0xe5
    lsl r1, r1, #2
    ldr r2, [pc, #0x8040020-0x803ff6a-2] // =chatbox_jt_ctrl
    ldr r1, [r2,r1]
    mov lr, pc
    bx r1
    cmp r0, #2
    beq loc_803FF7A
    bl sub_8040C9C
loc_803FF7A:
    b loc_803FFD0
loc_803FF7C:
    mov r0, #1
    bl chatbox_clearFlags_3e
    mov r0, #0
    ldrb r2, [r5,#9]
    cmp r2, #0
    bgt loc_803FFCC
    ldrb r2, [r5,#0x8] // ChatBoxPropreties.typingSpeed
    strb r2, [r5,#0x9] // ChatBoxPropreties.bNumCharacterTyped
    mov r0, #0x40 
    bl chatbox_maskFlags_3e
    bne loc_803FF9E
    mov r2, #0x68 // ChatBoxPropreties.unk_68
    ldrh r0, [r5,r2]
    bl sound_play
loc_803FF9E:
    cmp r1, #0xe4
    beq loc_803FFB4
    ldr r6, [r5,#0x7c] // ChatBoxPropreties.unk_7C
    ldr r3, [pc, #0x8040038-0x803ffa4-4] // =loc_3006F8C+1
    mov lr, pc
    bx r3
    add r4, #1
    bl sub_8040C44
    mov r0, #1
    b loc_803FFD0
loc_803FFB4:
    ldrb r1, [r4,#1]
    add r1, #0xe4
    mov r0, #0
    ldr r6, [r5,#0x7c] // ChatBoxPropreties.unk_7C
    ldr r3, [pc, #0x8040038-0x803ffbc-4] // =loc_3006F8C+1
    mov lr, pc
    bx r3
    add r4, #2
    bl sub_8040C44
    mov r0, #1
    b loc_803FFD0
loc_803FFCC:
    sub r2, #1
    strb r2, [r5,#9]
loc_803FFD0:
    str r4, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
    tst r0, r0
    bne loc_803FF56
    ldr r0, [pc, #0x8040030-0x803ffd6-2] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_803FFE2
    bl chatbox_8040344
loc_803FFE2:
    mov r0, #0x80
    bl sub_8045F3C
    beq loc_8040016
    ldr r0, [pc, #0x8040030-0x803ffea-2] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_803FFF8
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_8040016
loc_803FFF8:
    ldrb r0, [r5,#0xf]
    mov r2, #0x3d // ChatBoxPropreties.unk_3D
    ldrb r1, [r5,r2]
    cmp r1, #2
loc_8040000:
    beq loc_8040012
    tst r0, r0
    beq loc_8040008
    ldrb r0, [r5,#2]
loc_8040008:
    ldr r1, [pc, #0x8040034-0x8040008-4] // =loc_30070B4+1
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#2]
loc_8040012:
    bl chatbox_804021C
loc_8040016:
    bl sub_8040B8C
    bl sub_804082C
    pop {pc}
off_8040020:    .word chatbox_jt_ctrl
    .word dword_8040028
dword_8040028:    .word 0x254D0B00, 0x44
off_8040030:    .word 0x100
off_8040034:    .word loc_30070B4+1
off_8040038:    .word loc_3006F8C+1
    .word dword_8040040
dword_8040040:    .word 0x254D0B00, 0x2A44, 0x8043CA4, 0x800, 0x138, 0x1F4
    .word 0x1F5
.endfunc // chatbox_interpreteScriptChar

loc_804005C:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#0x11]
    str r0, [r5,#0x74]
    mov r0, #1
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r0, [r5,#0xf]
    strb r0, [r5,#2]
    ldr r4, [r5,#0x2c]
loc_8040070:
    ldrb r1, [r4]
    cmp r1, #0xe5
    bmi loc_8040088
    sub r1, #0xe5
    lsl r1, r1, #2
    ldr r2, [pc, #0x8040120-0x804007a-2] // =chatbox_jt_ctrl
    ldr r1, [r2,r1]
    mov lr, pc
    bx r1
    bl sub_8040C9C
    b loc_80400B8
loc_8040088:
    ldr r0, [pc, #0x804014c-0x8040088-4] // =0x840
    bl sub_8040920
    cmp r1, #0xe4
    beq loc_80400A4
    mov r0, #0
    ldr r6, [r5,#0x7c]
    ldr r3, [pc, #0x8040138-0x8040096-2] // =loc_3006F8C+1
    mov lr, pc
    bx r3
    bl sub_8040C9C
    add r4, #1
    b loc_80400B8
loc_80400A4:
    ldrb r1, [r4,#1]
    add r1, #0xe4
    mov r0, #0
    ldr r6, [r5,#0x7c]
    ldr r3, [pc, #0x8040138-0x80400ac-4] // =loc_3006F8C+1
    mov lr, pc
    bx r3
    bl sub_8040C9C
    add r4, #2
loc_80400B8:
    str r4, [r5,#0x2c]
    ldrh r2, [r5,#0x3e]
    mov r3, #1
    and r2, r3
    ldr r3, [r5,#0x74]
    orr r3, r2
    cmp r3, #0
    beq loc_8040070
    ldrb r3, [r5,#0x11]
    add r3, r3, r2
    cmp r3, #0
    beq loc_8040070
    mov r0, #0x40 
    bl chatbox_clearFlags_3e
    ldr r0, [pc, #0x8040130-0x80400d6-2] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_80400E2
    bl chatbox_8040344
loc_80400E2:
    mov r0, #0x80
    bl sub_8045F3C
    beq loc_8040112
    ldr r0, [pc, #0x8040130-0x80400ea-2] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_80400F8
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_8040112
loc_80400F8:
    ldrb r0, [r5,#2]
    ldr r1, [pc, #0x8040134-0x80400fa-2] // =loc_30070B4+1
    mov lr, pc
    bx r1
    ldrb r0, [r5,#0xf]
    ldrb r1, [r5,#2]
    add r1, #1
    cmp r0, r1
    blt loc_804010E
    strb r1, [r5,#2]
    b loc_80400F8
loc_804010E:
    bl chatbox_804021C
loc_8040112:
    bl sub_8040B8C
    bl sub_804082C
    mov r0, #1
    strb r0, [r5,#0x11]
    pop {r4-r7,pc}
dword_8040120:    .word 0x8040E24
    .word dword_8040128
dword_8040128:    .word 0x254D0B00, 0x44
off_8040130:    .word 0x100
off_8040134:    .word loc_30070B4+1
off_8040138:    .word loc_3006F8C+1
    .word dword_8040140
dword_8040140:    .word 0x254D0B00, 0x2A44, 0x8043CA4
dword_804014C:    .word 0x840
    .word 0x138
.func
.thumb_func
chatbox_8040154:
    push {lr}
    mov r2, #2
    ldrh r1, [r5,#0x22] // ChatBoxPropreties.keyState
    tst r2, r1
    bne loc_804016E
    mov r2, #1
    ldrh r1, [r5,#0x26] // ChatBoxPropreties.keysFlags
    tst r2, r1
    bne loc_804016E
    ldrb r1, [r5,#8]
    tst r1, r1
    beq loc_804016E
    b locret_8040174
loc_804016E:
    mov r0, #0
    strb r0, [r5,#0x11]
    pop {pc}
locret_8040174:
    pop {pc}
.endfunc // chatbox_8040154

    mov r0, #1
    strb r0, [r5,#0x11]
    pop {pc}
    push {r4,r6,r7,lr}
    mov r1, r12
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r8
    push {r1}
    mov r1, r10
    push {r1}
    ldrb r0, [r5,#0x18]
    mov r10, r0
    ldrb r0, [r5,#0x19]
    mov r8, r0
    ldr r6, [pc, #0x80401f8-0x8040196-2] // =0xE2B8
    mov r12, r6
    ldr r6, [pc, #0x80401fc-0x804019a-2] // =dword_8040200
    mov r9, r6
    ldr r4, [pc, #0x804020c-0x804019e-2] // =dword_8040210
    mov r7, #0x8 // (dword_8040208 - 0x8040200)
loc_80401A2:
    mov r0, #5
loc_80401A4:
    push {r0}
    add r3, r0, #0
    mov r1, #0x20 
    mul r1, r3
    mov r2, r10
    add r1, r1, r2
    mov r0, r9
    ldr r0, [r0,r7]
    lsl r1, r1, #0x10
    orr r0, r1
    lsl r2, r7, #2
    mov r1, r8
    add r1, r1, r2
    orr r0, r1
    add r6, r4, #0
    ldr r6, [r6,r7]
    mov r1, r12
    mov r2, #6
    mul r2, r7
    lsl r2, r2, #1
    lsl r3, r6
    add r2, r2, r3
    add r1, r1, r2
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    pop {r0}
    sub r0, #1
    bge loc_80401A4
    sub r7, #4
    bge loc_80401A2
    pop {r1}
    mov r10, r1
    pop {r1}
    mov r8, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r12, r1
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_80401F8:    .word 0xE2B8
off_80401FC:    .word dword_8040200
dword_8040200:    .word 0x80004000, 0x80004000
dword_8040208:    .word 0x40004000
off_804020C:    .word dword_8040210
dword_8040210:    .word 0x3, 0x3
dword_8040218:    .word 0x2
.func
.thumb_func
chatbox_804021C:
    push {r4,r6,r7,lr}
    mov r1, r12
    push {r1}
    mov r1, r9
    push {r1}
    mov r1, r8
    push {r1}
    mov r1, r10
    push {r1}
    ldrb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
    mov r10, r0
    ldrb r0, [r5,#0x19] // ChatBoxPropreties.unk_19
    mov r9, r0
    ldr r0, [pc, #0x804030c-0x8040236-2] // =0xE2B8
    mov r12, r0
    ldr r0, [pc, #0x8040310-0x804023a-2] // =dword_8040314
    mov r8, r0
    mov r7, #0
loc_8040240:
    mov r6, #0
loc_8040242:
    push {r6}
    mov r0, #0x20 
    mul r0, r6
    mov r1, r10
    add r0, r0, r1
    mov r1, r8
    lsl r7, r7, #2
    ldr r1, [r1,r7]
    lsr r7, r7, #2
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x804033c-0x8040258-4] // =unk_8040340
    ldrb r1, [r1,r7]
    mov r2, r9
    add r1, r1, r2
    orr r0, r1
    mov r1, r12
    ldr r2, [pc, #0x8040320-0x8040264-4] // =dword_8040324
    mov r3, #8
    mul r3, r7
    add r3, r3, r6
    ldrb r4, [r2,r3]
    add r1, r1, r4
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    pop {r6}
    add r6, #1
    push {r6}
    mov r0, #0x20 
    mul r0, r6
    mov r1, r10
    add r0, r0, r1
    mov r1, r8
    lsl r7, r7, #2
    ldr r1, [r1,r7]
    lsr r7, r7, #2
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x804033c-0x8040292-2] // =unk_8040340
    ldrb r1, [r1,r7]
    mov r2, r9
    add r1, r1, r2
    orr r0, r1
    mov r1, r12
    ldr r2, [pc, #0x8040320-0x804029e-2] // =dword_8040324
    mov r3, #8
    mul r3, r7
    add r3, r3, r6
    ldrb r4, [r2,r3]
    add r1, r1, r4
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    pop {r6}
    add r6, #1
    push {r6}
    mov r0, #0x20 
    mul r0, r6
    mov r1, r10
    add r0, r0, r1
    mov r1, r8
    lsl r7, r7, #2
    ldr r1, [r1,r7]
    lsr r7, r7, #2
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, [pc, #0x804033c-0x80402cc-4] // =unk_8040340
    ldrb r1, [r1,r7]
    mov r2, r9
    add r1, r1, r2
    orr r0, r1
    mov r1, r12
    ldr r2, [pc, #0x8040320-0x80402d8-4] // =dword_8040324
    mov r3, #8
    mul r3, r7
    add r3, r3, r6
    ldrb r4, [r2,r3]
    add r1, r1, r4
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    pop {r6}
    add r6, #1
    cmp r6, #6
    bne loc_8040242
    add r7, #1
    cmp r7, #3
    bne loc_8040240
    pop {r1}
    mov r10, r1
    pop {r1}
    mov r8, r1
    pop {r1}
    mov r9, r1
    pop {r1}
    mov r12, r1
    pop {r4,r6,r7,pc}
dword_804030C:    .word 0xE2B8
off_8040310:    .word dword_8040314
dword_8040314:    .word 0x80004000, 0x80004000, 0x40004000
off_8040320:    .word dword_8040324
dword_8040324:    .word 0x18100800, 0x2820, 0x48403830, 0x5850, 0x6C686460
    .word 0x7470
off_804033C:    .word unk_8040340
unk_8040340:    .byte 0
    .byte 0x10
    .byte 0x20
    .byte 0
.endfunc // chatbox_804021C

.func
.thumb_func
chatbox_8040344:
    push {lr}
    ldr r3, [pc, #0x804036c-0x8040346-2] // =dword_8045CEC
    ldr r4, [pc, #0x8040370-0x8040348-4] // =0x1D2
    ldrb r4, [r5,r4]
    lsl r4, r4, #5
    ldrb r1, [r5,#0x10] // ChatBoxPropreties.chatboxOpenState
    lsl r1, r1, #2
    add r4, r4, r1
    ldr r3, [r3,r4]
    push {r5}
    ldrb r0, [r5,#0x1c] // ChatBoxPropreties.unk_1C
    ldrb r1, [r5,#0x1d] // ChatBoxPropreties.unk_1D
    mov r2, #0
    ldrb r4, [r5,#0x1e] // ChatBoxPropreties.unk_1E
    ldrb r5, [r5,#0x1f] // ChatBoxPropreties.unk_1F
    bl drawTiles
    pop {r5}
    pop {pc}
    .balign 4, 0x00
off_804036C:    .word dword_8045CEC
dword_8040370:    .word 0x1D2
.endfunc // chatbox_8040344

.func
.thumb_func
chatbox_runTrainScript:
    push {r4,r5,lr}
    add r1, r0, #0
    ldr r0, [pc, #0x8040380-0x8040378-4] // =unk_2034A04
    bl chatbox_runScript
    pop {r4,r5,pc}
off_8040380:    .word unk_2034A04
.endfunc // chatbox_runTrainScript

.func
.thumb_func
chatbox_runScript:
    push {r4-r6,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c] // Toolkit.chatbox
    ldr r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
    ldr r3, [r5,#0x50] // ChatBoxPropreties.unk_50
    ldr r4, [r5,#0x54] // ChatBoxPropreties.unk_54
    ldr r6, [r5,#0x58] // ChatBoxPropreties.unk_58
    push {r0-r3}
    mov r0, r10
// memBlock
    ldr r0, [r0,#0x2c] // ChatBoxPropreties.pScriptCursor
// numWords
    ldr r1, [pc, #0x80404a4-0x8040398-4] // =0x230
    bl CpuSet_ZeroFillWord
    pop {r0-r3}
    str r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
    str r3, [r5,#0x50] // ChatBoxPropreties.unk_50
    str r4, [r5,#0x54] // ChatBoxPropreties.unk_54
    str r6, [r5,#0x58] // ChatBoxPropreties.unk_58
    str r0, [r5,#0x30] // ChatBoxPropreties.pScriptArray
    strb r1, [r5,#1]
    mov r2, #0x9c // chatboxpropreties.chatpagestate+0x98
    strb r1, [r5,r2]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    str r0, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
    str r0, [r5,#0x34] // ChatBoxPropreties.pCurrScript
    mov r0, #1
    strb r0, [r5]
    mov r0, #2
    strb r0, [r5,#8]
    ldr r0, [pc, #0x804048c-0x80403c2-2] // =unk_200B2B0
    str r0, [r5,#0x38] // ChatBoxPropreties.unk_38
    mov r0, #1
    strb r0, [r5,#0xc] // ChatBoxPropreties.chatbox_y
    mov r0, #1
    str r0, [r5,#0x74] // ChatBoxPropreties.unk_74
    strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
    mov r0, #4
    str r0, [r5,#0x78] // ChatBoxPropreties.unk_78
    ldr r0, [pc, #0x8040490-0x80403d4-4] // =dword_8040494
    add r1, r5, #0
    add r1, #0x68 
    mov r2, #8
    bl sub_800092A
    mov r1, #0xc
    strb r1, [r5,#0x1d] // ChatBoxPropreties.unk_1D
    mov r2, #0x1e
    strb r2, [r5,#0x1e] // ChatBoxPropreties.unk_1E
    mov r3, #8
    strb r3, [r5,#0x1f] // ChatBoxPropreties.unk_1F
    mov r0, #0xe2
    strb r0, [r5,#0x1a] // ChatBoxPropreties.csrCoord
    mov r1, #0x8d
    strb r1, [r5,#0x1b] // ChatBoxPropreties.unk_1B
    mov r0, #0x33 
    strb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
    mov r0, #0x6c 
    strb r0, [r5,#0x19] // ChatBoxPropreties.unk_19
    mov r0, #0x19
    mov r1, #0x84 // ChatBoxPropreties.unk_84
    str r0, [r5,r1]
    mov r0, #0x80
    mov r1, #0x88 // ChatBoxPropreties.unk_88
    str r0, [r5,r1]
    mov r0, #2
    ldr r1, [pc, #0x80404a8-0x804040a-2] // =0x1F0
    strb r0, [r5,r1]
    ldr r1, [pc, #0x80404b4-0x804040e-2] // =0x1F1
    strb r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x80404ac-0x8040414-4] // =0x1F2
    strb r0, [r5,r1]
    ldr r1, [pc, #0x80404b0-0x8040418-4] // =0x1F3
    strb r0, [r5,r1]
    mov r0, #3
    ldr r1, [pc, #0x80404b8-0x804041e-2] // =0x1F4
    strb r0, [r5,r1]
    ldr r1, [pc, #0x80404bc-0x8040422-2] // =0x1F5
    strb r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x80404a0-0x8040428-4] // =dword_2009F38
    str r0, [r1]
    mov r0, #0x80
    bl sub_8045F1C
    bl chatbox_8045F60
    ldr r0, [pc, #0x804049c-0x8040436-2] // =0x100
    bl sub_8040920
    ldrb r0, [r5,#0x18]
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    mov r0, #0xd
    mov r2, #0x90
    str r0, [r5,r2]
    ldr r0, [pc, #0x804046c-0x804044a-2] // =dword_86BEB20
    ldr r1, [pc, #0x8040470-0x804044c-4] // =0x600DC80
    ldr r2, [pc, #0x8040474-0x804044e-2] // =0x160
    bl loc_8000AC8
    ldr r0, [pc, #0x804047c-0x8040454-4] // =dword_86BEC80
    ldr r1, [pc, #0x8040480-0x8040456-2] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    ldr r0, [pc, #0x8040484-0x804045e-2] // =dword_86B7AC0
    ldr r1, [pc, #0x8040488-0x8040460-4] // =unk_3001710
    mov r2, #0x20 
    bl sub_8000950
    pop {r4-r6,pc}
    .balign 4, 0x00
off_804046C:    .word dword_86BEB20
dword_8040470:    .word 0x600DC80
off_8040474:    .word 0x160
    .word 0x380
off_804047C:    .word dword_86BEC80
off_8040480:    .word unk_3001B40
off_8040484:    .word dword_86B7AC0
off_8040488:    .word unk_3001710
off_804048C:    .word unk_200B2B0
off_8040490:    .word dword_8040494
dword_8040494:    .word 0x680065
    .word 0x670066
off_804049C:    .word 0x100
off_80404A0:    .word dword_2009F38
off_80404A4:    .word 0x230
off_80404A8:    .word 0x1F0
dword_80404AC:    .word 0x1F2
dword_80404B0:    .word 0x1F3
off_80404B4:    .word 0x1F1
off_80404B8:    .word 0x1F4
off_80404BC:    .word 0x1F5
.endfunc // chatbox_runScript

.func
.thumb_func
chatbox_reqBBS_80404C0:
    push {r4-r6,lr}
    push {r2}
    mov r5, r10
    ldr r5, [r5,#0x2c] // Toolkit.chatbox
    ldr r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
    ldr r3, [r5,#0x50] // ChatBoxPropreties.unk_50
    ldr r4, [r5,#0x54] // ChatBoxPropreties.unk_54
    ldr r6, [r5,#0x58] // ChatBoxPropreties.unk_58
    push {r0-r3}
    mov r0, r10
// memBlock
    ldr r0, [r0,#0x2c]
// numWords
    ldr r1, [pc, #0x80405dc-0x80404d6-2] // =0x230
    bl CpuSet_ZeroFillWord
    pop {r0-r3}
    str r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
    str r3, [r5,#0x50] // ChatBoxPropreties.unk_50
    str r4, [r5,#0x54] // ChatBoxPropreties.unk_54
    str r6, [r5,#0x58] // ChatBoxPropreties.unk_58
    str r0, [r5,#0x30] // ChatBoxPropreties.pScriptArray
    strb r1, [r5,#1]
    mov r2, #0x9c
    strb r1, [r5,r2]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    str r0, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
    str r0, [r5,#0x34] // ChatBoxPropreties.pCurrScript
    mov r0, #1
    strb r0, [r5]
    mov r0, #2
    strb r0, [r5,#8]
    ldr r0, [pc, #0x80405c4-0x8040500-4] // =unk_200B2B0
    str r0, [r5,#0x38] // ChatBoxPropreties.unk_38
    mov r0, #1
    strb r0, [r5,#0xc]
    mov r0, #1
    str r0, [r5,#0x74] // ChatBoxPropreties.unk_74
    strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
    mov r0, #4
    str r0, [r5,#0x78] // ChatBoxPropreties.unk_78
    ldr r0, [pc, #0x80405c8-0x8040512-2] // =dword_80405CC
    add r1, r5, #0
    add r1, #0x68 
    mov r2, #8
    bl sub_800092A
    mov r1, #0xc
    strb r1, [r5,#0x1d] // ChatBoxPropreties.unk_1D
    mov r2, #0x1e
    strb r2, [r5,#0x1e] // ChatBoxPropreties.unk_1E
    mov r3, #8
    strb r3, [r5,#0x1f] // ChatBoxPropreties.unk_1F
    mov r0, #0xe2
    strb r0, [r5,#0x1a] // ChatBoxPropreties.csrCoord
    mov r1, #0x8d
    strb r1, [r5,#0x1b] // ChatBoxPropreties.unk_1B
    mov r0, #0x33 
    strb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
    mov r0, #0x6c 
    strb r0, [r5,#0x19] // ChatBoxPropreties.unk_19
    mov r0, #0x19
    mov r1, #0x84 // ChatBoxPropreties.unk_84
    str r0, [r5,r1]
    mov r0, #0x80
    mov r1, #0x88 // ChatBoxPropreties.unk_88
    str r0, [r5,r1]
    mov r0, #2
    ldr r1, [pc, #0x80405e0-0x8040548-4] // =0x1F0
    strb r0, [r5,r1]
    ldr r1, [pc, #0x80405ec-0x804054c-4] // =0x1F1
    strb r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x80405e4-0x8040552-2] // =0x1F2
    strb r0, [r5,r1]
    ldr r1, [pc, #0x80405e8-0x8040556-2] // =0x1F3
    strb r0, [r5,r1]
    mov r0, #3
    ldr r1, [pc, #0x80405f0-0x804055c-4] // =0x1F4
    strb r0, [r5,r1]
    ldr r1, [pc, #0x80405f4-0x8040560-4] // =0x1F5
    strb r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x80405d8-0x8040566-2] // =dword_2009F38
    str r0, [r1]
    mov r0, #0x80
    bl sub_8045F1C
    bl chatbox_8045F60
    ldr r0, [pc, #0x80405d4-0x8040574-4] // =0x100
    bl sub_8040920
    ldrb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    mov r0, #0xd
    mov r2, #0x90 // ChatBoxPropreties.unk_90
    str r0, [r5,r2]
    ldr r0, [pc, #0x80405a8-0x8040588-4] // =dword_86BEB20
    ldr r1, [pc, #0x80405ac-0x804058a-2] // =0x600DC80
    ldr r2, [pc, #0x80405b0-0x804058c-4] // =0x160
    bl loc_8000AC8
    ldr r0, [pc, #0x80405b4-0x8040592-2] // =dword_86BEC80
    ldr r1, [pc, #0x80405b8-0x8040594-4] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    pop {r0}
    ldr r1, [pc, #0x80405c0-0x804059e-2] // =unk_3001710
    mov r2, #0x20 
    bl sub_8000950
    pop {r4-r6,pc}
off_80405A8:    .word dword_86BEB20
dword_80405AC:    .word 0x600DC80
off_80405B0:    .word 0x160
off_80405B4:    .word dword_86BEC80
off_80405B8:    .word unk_3001B40
    .word 0x86B7AC0
off_80405C0:    .word unk_3001710
off_80405C4:    .word unk_200B2B0
off_80405C8:    .word dword_80405CC
dword_80405CC:    .word 0x680065
    .word 0x670066
off_80405D4:    .word 0x100
off_80405D8:    .word dword_2009F38
off_80405DC:    .word 0x230
off_80405E0:    .word 0x1F0
dword_80405E4:    .word 0x1F2
dword_80405E8:    .word 0x1F3
off_80405EC:    .word 0x1F1
off_80405F0:    .word 0x1F4
off_80405F4:    .word 0x1F5
.endfunc // chatbox_reqBBS_80404C0

.func
.thumb_func
dead_80405F8:
    push {r4-r6,lr}
    push {r2-r4}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    ldr r2, [r5,#0x4c]
    ldr r3, [r5,#0x50]
    ldr r4, [r5,#0x54]
    ldr r6, [r5,#0x58]
    push {r0-r3}
    mov r0, r10
// memBlock
    ldr r0, [r0,#0x2c]
// numWords
    ldr r1, [pc, #0x8040714-0x804060e-2] // =0x230
    bl CpuSet_ZeroFillWord
    pop {r0-r3}
    str r2, [r5,#0x4c]
    str r3, [r5,#0x50]
    str r4, [r5,#0x54]
    str r6, [r5,#0x58]
    str r0, [r5,#0x30]
    strb r1, [r5,#1]
    mov r2, #0x9c
    strb r1, [r5,r2]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    str r0, [r5,#0x2c]
    str r0, [r5,#0x34]
    mov r0, #1
    strb r0, [r5]
    mov r0, #2
    strb r0, [r5,#8]
    ldr r0, [pc, #0x80406fc-0x8040638-4] // =unk_200B2B0
    str r0, [r5,#0x38]
    mov r0, #1
    strb r0, [r5,#0xc]
    mov r0, #1
    str r0, [r5,#0x74]
    strb r0, [r5,#0x11]
    mov r0, #4
    str r0, [r5,#0x78]
    ldr r0, [pc, #0x8040700-0x804064a-2] // =dword_8040704
    add r1, r5, #0
    add r1, #0x68 
    mov r2, #8
    bl sub_800092A
    mov r1, #0xc
    strb r1, [r5,#0x1d]
    mov r2, #0x1e
    strb r2, [r5,#0x1e]
    mov r3, #8
    strb r3, [r5,#0x1f]
    mov r0, #0xe2
    strb r0, [r5,#0x1a]
    mov r1, #0x8d
    strb r1, [r5,#0x1b]
    mov r0, #0x33 
    strb r0, [r5,#0x18]
    mov r0, #0x6c 
    strb r0, [r5,#0x19]
    mov r0, #0x19
    mov r1, #0x84
    str r0, [r5,r1]
    mov r0, #0x80
    mov r1, #0x88
    str r0, [r5,r1]
    mov r0, #2
    ldr r1, [pc, #0x8040718-0x8040680-4] // =0x1F0
    strb r0, [r5,r1]
    ldr r1, [pc, #0x8040724-0x8040684-4] // =0x1F1
    strb r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x804071c-0x804068a-2] // =0x1F2
    strb r0, [r5,r1]
    ldr r1, [pc, #0x8040720-0x804068e-2] // =0x1F3
    strb r0, [r5,r1]
    mov r0, #3
    ldr r1, [pc, #0x8040728-0x8040694-4] // =0x1F4
    strb r0, [r5,r1]
    ldr r1, [pc, #0x804072c-0x8040698-4] // =0x1F5
    strb r0, [r5,r1]
    mov r0, #0
    ldr r1, [pc, #0x8040710-0x804069e-2] // =dword_2009F38
    str r0, [r1]
    mov r0, #0x80
    bl sub_8045F1C
    bl chatbox_8045F60
    ldr r0, [pc, #0x804070c-0x80406ac-4] // =0x100
    bl sub_8040920
    ldrb r0, [r5,#0x18]
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    mov r0, #0xd
    mov r2, #0x90
    str r0, [r5,r2]
    pop {r0,r2}
    ldr r1, [pc, #0x80406e4-0x80406c2-2] // =0x600DC80
    bl loc_8000AC8
    pop {r0}
    ldr r1, [pc, #0x80406f0-0x80406ca-2] // =unk_3001B40
    mov r2, #0x20 
    bl sub_8000950
    ldr r0, [pc, #0x80406f4-0x80406d2-2] // =dword_86B7AC0
    ldr r1, [pc, #0x80406f8-0x80406d4-4] // =unk_3001710
    mov r2, #0x20 
    bl sub_8000950
    pop {r4-r6,pc}
    .byte 0, 0
    .word 0x86BEB20
dword_80406E4:    .word 0x600DC80
    .word 0x160
    .word 0x86BEC80
off_80406F0:    .word unk_3001B40
off_80406F4:    .word dword_86B7AC0
off_80406F8:    .word unk_3001710
off_80406FC:    .word unk_200B2B0
off_8040700:    .word dword_8040704
dword_8040704:    .word 0x680065
    .word 0x670066
off_804070C:    .word 0x100
off_8040710:    .word dword_2009F38
off_8040714:    .word 0x230
off_8040718:    .word 0x1F0
dword_804071C:    .word 0x1F2
dword_8040720:    .word 0x1F3
off_8040724:    .word 0x1F1
off_8040728:    .word 0x1F4
off_804072C:    .word 0x1F5
.endfunc // dead_80405F8

.func
.thumb_func
sub_8040730:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r2, [r2,#8]
    mov r6, #0
    cmp r0, #0x80
    bmi loc_804074C
    mov r6, #4
    sub r0, #0x80
loc_804074C:
    ldr r5, [pc, #0x804076c-0x804074c-4] // =off_8040770
    lsl r4, r4, #3
    add r5, r5, r4
    ldr r3, [r5,r6]
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    tst r4, r4
    bne loc_8040764
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r3, [r3]
loc_8040764:
    lsl r2, r2, #2
    add r3, r3, r2
    ldr r0, [r3]
    pop {r4-r7,pc}
off_804076C:    .word off_8040770
off_8040770:    .word off_8044470
    .word off_80444C4
    .word off_80444A8
    .word off_804457C
    .word dword_8040784
dword_8040784:    .word 0x2500360, 0x1300240, 0x100120, 0x0
.endfunc // sub_8040730

.func
.thumb_func
sub_8040794:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    ldrb r2, [r2,#6]
    mov r6, #0
    cmp r0, #0x80
    bmi loc_80407AA
    mov r6, #4
    sub r0, #0x80
loc_80407AA:
    ldr r5, [pc, #0x80407bc-0x80407aa-2] // =off_80407C0
    ldr r3, [r5,r6]
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r0, [r3]
    pop {r4-r7,pc}
off_80407BC:    .word off_80407C0
off_80407C0:    .word off_804448C
    .word off_8044520
.endfunc // sub_8040794

.func
.thumb_func
sub_80407C8:
    push {r4-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r0, [r2,#4]
    ldrb r1, [r2,#5]
    mov r2, #4
    mov r6, #0
    cmp r0, #0x80
    bmi loc_80407DE
    mov r6, #4
    sub r0, #0x80
loc_80407DE:
    ldr r5, [pc, #0x80407f8-0x80407de-2] // =off_80407FC
    ldr r3, [r5,r6]
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r3, [r3]
    lsl r1, r1, #2
    add r3, r3, r1
    ldr r3, [r3]
    lsl r2, r2, #2
    add r3, r3, r2
    ldr r0, [r3]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80407F8:    .word off_80407FC
off_80407FC:    .word off_8044470
    .word off_80444C4
    .word dword_8040808
dword_8040808:    .word 0x4500460, 0x4300440, 0x4100420, 0x400
.endfunc // sub_80407C8

.func
.thumb_func
sub_8040818:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5]
    mov r0, #0xc8
    bl sub_8045F2C
    pop {r5,pc}
    .balign 4, 0x00
.endfunc // sub_8040818

.func
.thumb_func
sub_804082C:
    push {r4,r6,lr}
    mov r0, #0x20 
    bl chatbox_maskFlags_3e
    cmp r0, #0
    beq locret_8040886
    ldrb r4, [r5,#3]
    ldr r1, [pc, #0x8040894-0x804083a-2] // =off_8040898
    lsl r2, r4, #2
    ldr r6, [r1,r2]
    ldrb r0, [r5,#0x17]
    ldrb r0, [r6,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x8040888-0x8040846-2] // =dword_86A4740
    lsl r1, r4, #7
    mov r3, #3
    mul r1, r3
    add r2, r2, r1
    add r0, r0, r2
    ldr r1, [pc, #0x804088c-0x8040852-2] // =0x6017F00
    mov r2, #0x80
    bl loc_8000AC8
    ldrb r0, [r5,#0x1a]
    ldrb r1, [r5,#0x1b]
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#0x17]
    add r2, #1
    ldrb r1, [r6,r2]
    cmp r1, #0xff
    bne loc_8040870
    mov r2, #1
    ldrh r1, [r3]
loc_8040870:
    strb r2, [r5,#0x17]
    ldr r2, [pc, #0x8040890-0x8040872-2] // =0x40000000
    orr r0, r2
    ldr r1, [pc, #0x80408a0-0x8040876-2] // =0xE3F8
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #4
    bl sub_802FE28
locret_8040886:
    pop {r4,r6,pc}
off_8040888:    .word dword_86A4740
dword_804088C:    .word 0x6017F00
dword_8040890:    .word 0x40000000
off_8040894:    .word off_8040898
off_8040898:    .word dword_80408A4
    .word dword_80408A4
dword_80408A0:    .word 0xE3F8
dword_80408A4:    .word 0x0
    .word 0x1010000, 0x1010101, 0x2020202, 0xFF0202, 0x0, 0x0, 0x0
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 0xFF
.endfunc // sub_804082C

.func
.thumb_func
chatbox_80408D0:
    push {lr}
    strb r1, [r5,#1]
    ldr r0, [r5,#0x30]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    str r0, [r5,#0x2c]
    str r0, [r5,#0x34]
    add r4, r0, #0
    mov r1, #0
    strb r1, [r5,#4]
    str r1, [r5,#0x64]
    strb r1, [r5,#0x12]
    strb r1, [r5,#2]
    strb r1, [r5,#0x17]
    mov r0, #0x3d 
    strb r1, [r5,r0]
    mov r0, #0x80
    str r1, [r5,r0]
    mov r1, #1
    strb r1, [r5,#0x11]
    str r1, [r5,#0x74]
    ldrb r1, [r5,#8]
    ldrb r0, [r5,#0x18]
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    bl chatbox_8045F60
    ldr r0, [pc, #0x8040918-0x804090a-2] // =0x400
    ldr r1, [pc, #0x804091c-0x804090c-4] // =0x800
    orr r0, r1
    bl chatbox_clearFlags_3e
    pop {pc}
    .byte 0
    .byte 0
off_8040918:    .word 0x400
dword_804091C:    .word 0x800
.endfunc // chatbox_80408D0

.func
.thumb_func
sub_8040920:
    push {r1}
    ldrh r1, [r5,#0x3e]
    orr r1, r0
    strh r1, [r5,#0x3e]
    pop {r1}
    mov pc, lr
.endfunc // sub_8040920

.func
.thumb_func
chatbox_clearFlags_3e:
    push {r1}
    ldrh r1, [r5,#0x3e]
    bic r1, r0
    strh r1, [r5,#0x3e]
    pop {r1}
    mov pc, lr
.endfunc // chatbox_clearFlags_3e

.func
.thumb_func
chatbox_maskFlags_3e:
    push {r1}
    ldrh r1, [r5,#0x3e]
    and r0, r1
    pop {r1}
    mov pc, lr
    .balign 4, 0x00
loc_8040944:
    push {lr}
    ldrb r0, [r5,#0x16]
    ldr r1, [pc, #0x80409ac-0x8040948-4] // =dword_80409B0+2
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x80409a4-0x804094e-2] // =dword_86A48A0+32
    add r0, r0, r2
    ldr r1, [pc, #0x80409a8-0x8040952-2] // =0x6017F80
    mov r2, #0x80
    bl loc_8000AC8
    add r2, r5, #0
    add r2, #0x94
    ldrb r1, [r2]
    ldr r0, [r5,#0x70]
    add r0, r0, r1
    sub r0, #6
    ldrb r1, [r5,#0xf]
    mov r3, #0xe
    mul r1, r3
    ldrb r2, [r5,#0x19]
    add r1, r1, r2
    sub r1, #1
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#0x16]
    ldr r3, [pc, #0x80409ac-0x8040978-4] // =dword_80409B0+2
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_8040986
    mov r2, #1
    ldrh r1, [r3]
loc_8040986:
    strb r2, [r5,#0x16]
    ldr r2, [pc, #0x80409a0-0x8040988-4] // =0x40000000
    orr r0, r2
    ldr r1, [pc, #0x80409b0-0x804098c-4] // =0xE3FC
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #4
    bl sub_802FE28
    pop {pc}
    .byte 0, 0
dword_80409A0:    .word 0x40000000
off_80409A4:    .word dword_86A48A0+0x20
dword_80409A8:    .word 0x6017F80
off_80409AC:    .word dword_80409B0+2
dword_80409B0:    .word 0xE3FC
    .word 0x0
    .word 0x1010101
    .word 0x2020101
    .word 0x2020202
    .word 0xFF
.endfunc // chatbox_maskFlags_3e

.func
.thumb_func
sub_80409C8:
    push {lr}
    ldr r0, [pc, #0x80409d8-0x80409ca-2] // =dword_86A4A40
    ldr r1, [pc, #0x80409dc-0x80409cc-4] // =0x6017F80
    mov r2, #0x80
    bl loc_8000AC8
    pop {pc}
    .hword 0x0
off_80409D8:    .word dword_86A4A40
dword_80409DC:    .word 0x6017F80
.endfunc // sub_80409C8

.func
.thumb_func
sub_80409E0:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x16]
    ldr r1, [pc, #0x8040a7c-0x80409e4-4] // =unk_8040A80
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x8040a74-0x80409ea-2] // =dword_86A4A40
    add r0, r0, r2
    ldr r1, [pc, #0x8040a78-0x80409ee-2] // =0x6017F80
    mov r2, #0x80
    bl loc_8000AC8
    .byte 0x29 
    .byte 0x7E 
    .byte 0x28 
    .byte 0x6F 
    .byte 0x40 
    .byte 0x18
    .byte 4
    .byte 0x30 
    .byte 0xE9
    .byte 0x7C 
    .byte 0x80
    .byte 0x23 
    .byte 0xEB
    .byte 0x5C 
    .byte 1
    .byte 0x3B 
    .byte 0x99
    .byte 0x42 
    .byte 0
    .byte 0xD1
    .byte 7
    .byte 0x30 
    .byte 0xE9
    .byte 0x7B 
    .byte 0xE
    .byte 0x23 
    .byte 0x59 
    .byte 0x43 
    .byte 0x6A 
    .byte 0x7E 
    .byte 0x89
    .byte 0x18
    .byte 2
    .byte 0x39 
    .byte 0
    .byte 4
    .byte 8
    .byte 0x43 
    .byte 4
    .byte 0x1C
    .byte 0x20
    .byte 0xB4
    .byte 0x13
    .byte 0x4E 
    .byte 0x30 
    .byte 0x43 
    .byte 0x1B
    .byte 0x49 
    .byte 0
    .byte 0x22 
    .byte 0x92
    .byte 2
    .byte 0x11
    .byte 0x43 
    .byte 0
    .byte 0x22 
    .byte 1
    .byte 0x23 
    .byte 0xEF
    .byte 0xF7
    .byte 0xFA
    .byte 0xF9
    .byte 0x20
    .byte 0x1C
    .byte 8
    .byte 0x24 
    .byte 0xE9
    .byte 0x7C 
    .byte 0x80
    .byte 0x23 
    .byte 0xED
    .byte 0x5C 
    .byte 1
    .byte 0x3D 
    .byte 0xA9
    .byte 0x42 
    .byte 0
    .byte 0xD1
    .byte 0x12
    .byte 0x24 
    .byte 0x24 
    .byte 4
    .byte 0
    .byte 0x19
    .byte 0x30 
    .byte 0x43 
    .byte 0x12
    .byte 0x49 
    .byte 0
    .byte 0x26 
    .byte 0xB6
    .byte 2
    .byte 0x31 
    .byte 0x43 
    .byte 1
    .byte 0x23 
    .byte 0xEF
    .byte 0xF7
    .byte 0xE7
    .byte 0xF9
    .byte 0x20
    .byte 0xBC
    .byte 0xAA
    .byte 0x7D 
    .byte 7
    .byte 0x4B 
    .byte 1
    .byte 0x32 
    .byte 0x99
    .byte 0x5C 
    .byte 0xFF
    .byte 0x29 
    .byte 1
    .byte 0xD1
    .byte 1
    .byte 0x22 
    .byte 0x19
    .byte 0x88
    .byte 0xAA
    .byte 0x75 
    .byte 0x50 
    .byte 0xBD
    .byte 0
    .byte 0x80
    .byte 0
    .byte 0
off_8040A74:    .word dword_86A4A40
dword_8040A78:    .word 0x6017F80
off_8040A7C:    .word unk_8040A80
unk_8040A80:    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 1
    .byte 0xFF
    .byte 0
    .byte 0xFC
    .byte 0xE3
    .balign 4, 0x00
    .byte 0xFE
    .byte 0xE3
.endfunc // sub_80409E0

.func
.thumb_func
sub_8040A9A:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x16]
    ldr r1, [pc, #0x8040b1c-0x8040a9e-2] // =word_8040B20
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, [pc, #0x8040b14-0x8040aa4-4] // =dword_86A4A40
    add r0, r0, r2
    ldr r1, [pc, #0x8040b18-0x8040aa8-4] // =0x6017F80
    mov r2, #0x80
    bl loc_8000AC8
    ldrb r1, [r5,#0x18]
    ldr r0, [r5,#0x70]
    add r0, r0, r1
    add r0, #4
    ldrb r1, [r5,#0xf]
    mov r3, #0xe
    mul r1, r3
    ldrb r2, [r5,#0x19]
    add r1, r1, r2
    sub r1, #2
    lsl r0, r0, #0x10
    orr r0, r1
    add r4, r0, #0
    push {r5}
    ldr r6, [pc, #0x8040b10-0x8040acc-4] // =0x8000
    orr r0, r6
    ldr r1, [pc, #0x8040b34-0x8040ad0-4] // =0xE3FC
    mov r2, #0
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
    add r0, r4, #0
    mov r4, #0x16
    lsl r4, r4, #0x10
    add r0, r0, r4
    orr r0, r6
    ldr r1, [pc, #0x8040b38-0x8040aea-2] // =0xB520E3FE
    mov r6, #0
    lsl r6, r6, #0xa
    orr r1, r6
    mov r3, #1
    bl sub_802FE28
    pop {r5}
    ldrb r2, [r5,#0x16]
    ldr r3, [pc, #0x8040b1c-0x8040afc-4] // =word_8040B20
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_8040B0A
    mov r2, #1
    ldrh r1, [r3]
loc_8040B0A:
    strb r2, [r5,#0x16]
    pop {r4,r6,pc}
    .byte 0, 0
dword_8040B10:    .word 0x8000
off_8040B14:    .word dword_86A4A40
dword_8040B18:    .word 0x6017F80
off_8040B1C:    .word word_8040B20
word_8040B20:    .hword 0x0
    .word 0
    .byte 0, 0
    .word 0x1010100, 0x1010101, 0xFF0101
dword_8040B34:    .word 0xE3FC
dword_8040B38:    .word 0xB520E3FE
.endfunc // sub_8040A9A

    push {r5}
    ldr r2, [pc, #0x8040b88-0x8040b3e-2] // =0x1F8
    add r5, r5, r2
    push {r0,r1}
    bl sub_800275A
    pop {r0,r1}
    strb r1, [r5,#4]
    mov r1, #3
    strh r1, [r5,#0xa]
    mov r1, #0
    strb r1, [r5]
    mov r1, #6
    strb r1, [r5,#3]
    mov r0, #0
    strh r0, [r5,#0x14]
    pop {r7}
    ldrb r0, [r7,#0xa]
    cmp r0, #3
    bne loc_8040B66
    strb r0, [r5]
loc_8040B66:
    mov r2, #0x90
    ldr r0, [r7,r2]
    lsl r0, r0, #4
    strb r0, [r5,#0x15]
    bl sub_80026B6
    ldr r1, [pc, #0x8040b84-0x8040b72-2] // =0x3C0
    strh r1, [r5,#8]
    mov r1, #0x84
    ldr r1, [r7,r1]
    strh r1, [r5,#0xc]
    mov r1, #0x88
    ldr r1, [r7,r1]
    strb r1, [r5,#0xe]
    pop {r5,pc}
off_8040B84:    .word 0x3C0
off_8040B88:    .word 0x1F8
.func
.thumb_func
sub_8040B8C:
    push {r4-r6,lr}
    mov r0, #2
    bl chatbox_maskFlags_3e
    beq locret_8040C24
    ldr r0, [pc, #0x8040c30-0x8040b96-2] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_8040BA4
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne locret_8040C24
loc_8040BA4:
    ldr r6, [r5,#0x40]
    mov r0, #4
    bl chatbox_maskFlags_3e
    beq loc_8040BC4
    ldr r1, [pc, #0x8040c28-0x8040bae-2] // =0x421
    ldr r0, [r5,#0x40]
    sub r0, r0, r1
    add r4, r0, #0
    cmp r0, #0
    bge loc_8040BC2
    mov r4, #0
    mov r0, #4
    bl chatbox_clearFlags_3e
loc_8040BC2:
    b loc_8040BE2
loc_8040BC4:
    mov r0, #8
    bl chatbox_maskFlags_3e
    beq loc_8040BE4
    ldr r1, [pc, #0x8040c2c-0x8040bcc-4] // =0x842
    ldr r0, [r5,#0x40]
    add r0, r0, r1
    add r4, r0, #0
    mov r1, #0x1f
    and r0, r1
    cmp r0, #6
    bmi loc_8040BE2
    mov r0, #0xa
    bl chatbox_clearFlags_3e
loc_8040BE2:
    str r4, [r5,#0x40]
loc_8040BE4:
    add r7, r5, #0
    ldrb r3, [r5,#7]
    push {r5}
    push {r3}
    ldr r3, [pc, #0x8040c34-0x8040bec-4] // =0x1F8
    add r5, r5, r3
    pop {r3}
    strb r3, [r5,#4]
    ldr r1, [pc, #0x8040c38-0x8040bf4-4] // =0x1F2
    ldrb r1, [r7,r1]
    ldr r2, [pc, #0x8040c40-0x8040bf8-4] // =0x1F3
    ldrb r3, [r7,r2]
    cmp r1, r3
    beq loc_8040C0C
    strb r1, [r7,r2]
    ldr r1, [pc, #0x8040c3c-0x8040c02-2] // =0x1F0
    ldrb r1, [r7,r1]
    strb r1, [r5]
    bl sub_80026B6
loc_8040C0C:
    bl sub_80026D6
    strh r6, [r5,#6]
    pop {r7}
    bl sub_8002818
    bl sub_8002874
    mov r0, #0
    mov r1, #3
    bl sub_8002694
locret_8040C24:
    pop {r4-r6,pc}
    .balign 4, 0x00
off_8040C28:    .word 0x421
dword_8040C2C:    .word 0x842
off_8040C30:    .word 0x100
off_8040C34:    .word 0x1F8
dword_8040C38:    .word 0x1F2
off_8040C3C:    .word 0x1F0
dword_8040C40:    .word 0x1F3
.endfunc // sub_8040B8C

.func
.thumb_func
sub_8040C44:
    push {r0,r1,r4,r5,lr}
    mov r0, #0x10
    bl chatbox_maskFlags_3e
    bne loc_8040C64
    cmp r1, #0
    beq loc_8040C64
    cmp r1, #0x25 
    beq loc_8040C64
    cmp r1, #0x40 
    blt loc_8040C80
    cmp r1, #0x59 
    blt loc_8040C64
    cmp r1, #0x5d 
    blt loc_8040C80
    b loc_8040C64
loc_8040C64:
    mov r1, #0
    ldr r2, [pc, #0x8040c90-0x8040c66-2] // =0x1F2
    strb r1, [r5,r2]
    ldr r2, [pc, #0x8040c94-0x8040c6a-2] // =0x1F1
    ldrb r1, [r5,r2]
    cmp r1, #2
    bne loc_8040C74
    mov r1, #1
loc_8040C74:
    ldr r2, [pc, #0x8040c98-0x8040c74-4] // =0x1F0
    ldrb r3, [r5,r2]
    cmp r3, #3
    beq locret_8040C8E
    strb r1, [r5,r2]
    b locret_8040C8E
loc_8040C80:
    mov r1, #1
    ldr r2, [pc, #0x8040c90-0x8040c82-2] // =0x1F2
    strb r1, [r5,r2]
    ldr r2, [pc, #0x8040c94-0x8040c86-2] // =0x1F1
    ldrb r1, [r5,r2]
    ldr r2, [pc, #0x8040c98-0x8040c8a-2] // =0x1F0
    strb r1, [r5,r2]
locret_8040C8E:
    pop {r0,r1,r4,r5,pc}
dword_8040C90:    .word 0x1F2
off_8040C94:    .word 0x1F1
off_8040C98:    .word 0x1F0
.endfunc // sub_8040C44

.func
.thumb_func
sub_8040C9C:
    push {r0,r1,lr}
    mov r0, #0
    ldr r1, [pc, #0x8040cc8-0x8040ca0-4] // =0x1F0
    ldrb r1, [r5,r1]
    cmp r1, #0
    beq loc_8040CBC
    cmp r1, #3
    bne loc_8040CB0
    mov r0, #3
    b loc_8040CBC
loc_8040CB0:
    mov r0, #0
    ldr r1, [pc, #0x8040cc4-0x8040cb2-2] // =0x1F2
    strb r0, [r5,r1]
    ldr r1, [pc, #0x8040ccc-0x8040cb6-2] // =0x1F1
    ldrb r0, [r5,r1]
    mov r0, #1
loc_8040CBC:
    ldr r1, [pc, #0x8040cc8-0x8040cbc-4] // =0x1F0
    strb r0, [r5,r1]
    pop {r0,r1,pc}
    .balign 4, 0x00
dword_8040CC4:    .word 0x1F2
off_8040CC8:    .word 0x1F0
off_8040CCC:    .word 0x1F1
.endfunc // sub_8040C9C

.func
.thumb_func
sub_8040CD0:
    push {lr}
    ldr r7, [pc, #0x8040d44-0x8040cd2-2] // =dword_8040D48
    ldr r6, [r7]
    ldrh r6, [r5,r6]
    sub r6, #1
loc_8040CDA:
    ldr r4, [r7,#0xc] // (off_8040D54 - 0x8040d48)
    add r4, r4, r6
    ldrb r4, [r5,r4]
    mov r0, #4
    mul r4, r0
    ldr r0, [pc, #0x8040d58-0x8040ce4-4] // =dword_8045CEC+232
    ldr r4, [r0,r4]
    push {r4,r6,r7}
    ldr r0, [r4,#8]
    ldr r1, [r4,#0xc]
    ldr r2, [r4,#0x10]
    bl loc_8000AC8
.endfunc // sub_8040CD0

    ldr r0, [r4,#0x14]
    ldr r1, [r4,#0x18]
    ldr r2, [r4,#0x1c]
    bl loc_8000AC8
    pop {r4,r6,r7}
    push {r4,r6}
    ldr r0, [r7,#8]
    add r0, r0, r6
    ldrb r0, [r5,r0]
    mov r1, #0xe
    mul r0, r1
    ldrb r1, [r5,#0x19]
    add r0, r0, r1
    sub r0, #4
    ldr r1, [r7,#4]
    mov r2, #4
    mul r2, r6
    add r1, r1, r2
    ldr r1, [r5,r1]
    add r2, r5, #0
    add r2, #0x94
    ldrb r2, [r2]
    add r1, r1, r2
    ldr r2, [r4]
    orr r2, r0
    lsl r1, r1, #0x10
    orr r2, r1
    add r0, r2, #0
    ldr r1, [r4,#4]
    mov r2, #0
    mov r3, #4
    bl sub_802FE28
    pop {r4,r6}
    tst r6, r6
    beq locret_8040D42
    sub r6, #1
    b loc_8040CDA
locret_8040D42:
    pop {pc}
off_8040D44:    .word dword_8040D48
dword_8040D48:    .word 0x1D6
    .word 0x1D8
    .word 0x1E8
off_8040D54:    .word 0x1EC
off_8040D58:    .word dword_8045CEC+0xE8
.func
.thumb_func
sub_8040D5C:
    push {r2,r3,lr}
    cmp r0, #1
    bne loc_8040D64
    mov r7, #1
loc_8040D64:
    sub r0, #1
    lsl r0, r0, #2
    ldr r2, [pc, #0x8040d94-0x8040d68-4] // =unk_8040D98
    ldr r0, [r2,r0]
    mov r3, #0
loc_8040D6E:
    sub r1, r1, r0
    add r3, #1
    cmp r1, #0
    bge loc_8040D6E
    neg r1, r1
    sub r1, r1, r0
    neg r1, r1
    sub r3, #1
    add r0, r3, #0
    mov r3, #0xf
    tst r7, r3
    beq loc_8040D8A
    add r0, #1
    b locret_8040D92
loc_8040D8A:
    tst r0, r0
    beq locret_8040D92
    add r7, #1
    add r0, #1
locret_8040D92:
    pop {r2,r3,pc}
off_8040D94:    .word unk_8040D98
unk_8040D98:    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0xA
    .byte 0
    .byte 0
    .byte 0
    .byte 0x64 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xE8
    .byte 3
    .byte 0
    .byte 0
    .byte 0x10
    .byte 0x27 
    .byte 0
    .byte 0
    .byte 0xA0
    .byte 0x86
    .byte 1
    .byte 0
    .byte 0x40 
    .byte 0x42 
    .byte 0xF
    .byte 0
    .byte 0x80
    .byte 0x96
    .byte 0x98
    .byte 0
    .byte 0
    .byte 0xE1
    .byte 0xF5
    .byte 5
.endfunc // sub_8040D5C

.func
.thumb_func
sub_8040DBC:
    push {r0-r5,lr}
// memBlock
    ldr r0, [pc, #0x8040dd8-0x8040dbe-2] // =unk_200BEA0
// numWords
    mov r1, #0x40 
    mov r2, #0
loc_8040DC4:
    push {r0-r2}
    bl CpuSet_ZeroFillWord
    pop {r0-r2}
    add r0, #0x60 
    add r2, #1
    cmp r2, #0xd
    ble loc_8040DC4
    pop {r0-r5,pc}
    .byte 0
    .byte 0
off_8040DD8:    .word unk_200BEA0
.endfunc // sub_8040DBC

.func
.thumb_func
sub_8040DDC:
    push {r0-r5,lr}
    add r4, r0, #0
    mov r1, #0x10
    mul r4, r1
    lsr r4, r4, #1
// memBlock
    ldr r0, [pc, #0x8040e00-0x8040de6-2] // =unk_200BEA0
// numWords
    add r1, r4, #0
    mov r2, #0
loc_8040DEC:
    push {r0-r2}
    bl CpuSet_ZeroFillWord
    pop {r0-r2}
    add r0, #0x60 
    add r2, #1
    cmp r2, #0xd
    ble loc_8040DEC
    pop {r0-r5,pc}
    .hword 0x0
off_8040E00:    .word unk_200BEA0
    .word 0x420
    .word 0x540
    .word 0x1C05B520
    .word 0xF7FF2140
    .word 0xBD20FF17
    .word 0x1C05B520
    .word 0xFF3EF7FF
    .word 0xBD20
chatbox_jt_ctrl:    .word chatbox_8040E90+1
    .word chatbox_8040E98+1
    .word chatbox_8040EF4+1
    .word sub_8040F70+1
    .word sub_8041134+1
    .word sub_8041160+1
    .word sub_8041244+1
    .word sub_8041288+1
    .word sub_80412C8+1
    .word sub_80414A8+1
    .word chatbox_ho_804156C+1
    .word chatbox_8041ADC+1
    .word sub_8041BA4+1
    .word sub_8041BD8+1
    .word sub_8041C54+1
    .word sub_8041C84+1
    .word sub_8041CF4+1
    .word sub_8041DBC+1
    .word sub_8042830+1
    .word sub_8041E80+1
    .word sub_8042FD8+1
    .word sub_8041F68+1
    .word chatbox_8042388+1
    .word sub_8042610+1
    .word sub_8042290+1
    .word chatbox_ctrl_8042CF8+1
    .word chatbox_8043020+1
.endfunc // sub_8040DDC

.func
.thumb_func
chatbox_8040E90:
    add r4, #1
    mov r0, #2
    mov pc, lr
    .balign 4, 0x00
.endfunc // chatbox_8040E90

.func
.thumb_func
chatbox_8040E98:
    push {lr}
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_8040EB2
    sub r0, #1
    ldr r1, [pc, #0x8040ef0-0x8040ea2-2] // =0x140
    mov r2, #4
    mul r2, r0
    add r1, r1, r2
    ldr r4, [r5,r1]
    strb r0, [r5,#5]
    mov r0, #1
    pop {pc}
loc_8040EB2:
    mov r0, #1
    bl sub_8040920
    ldr r0, [pc, #0x8040eec-0x8040eb8-4] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_8040ECA
    bl chatbox_8041090
    tst r0, r0
    bne loc_8040EDC
    pop {pc}
loc_8040ECA:
    mov r0, #2
    bl chatbox_maskFlags_3e
    beq loc_8040EDC
    mov r0, #8
    bl sub_8040920
    mov r0, #0
    pop {pc}
loc_8040EDC:
    mov r0, #0x80
    bl sub_8045F2C
    mov r0, #0
    strb r0, [r5]
    strb r0, [r5,#4]
    mov r0, #0
    pop {pc}
off_8040EEC:    .word 0x100
off_8040EF0:    .word 0x140
.endfunc // chatbox_8040E98

.func
.thumb_func
chatbox_8040EF4:
    push {lr}
    ldr r0, [pc, #0x8040f6c-0x8040ef6-2] // =0x400
    bl sub_8040920
    mov r0, #0x21 
    bl sub_8040920
    mov r0, #0
    strb r0, [r5,#3]
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8040F1A
    cmp r0, #2
    beq loc_8040F2A
    mov r0, #5
    strh r0, [r5,#0xc]
    mov r0, #1
    strb r0, [r5,#4]
    b loc_8040F64
loc_8040F1A:
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    beq loc_8040F26
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8040F64
loc_8040F26:
    mov r0, #2
    strb r0, [r5,#4]
loc_8040F2A:
    mov r1, #3
    ldrb r2, [r4,#1]
    tst r2, r2
    beq loc_8040F34
    ldr r1, [pc, #0x8040f68-0x8040f32-2] // =0x3FF
loc_8040F34:
    ldrh r0, [r5,#0x26]
    tst r1, r0
    bne loc_8040F4E
    ldrh r0, [r5,#0x22]
    mov r1, #2
    tst r1, r0
    beq loc_8040F64
    ldrh r0, [r5,#0xc]
    cmp r0, #0xa
    bge loc_8040F4E
    add r0, #1
    strh r0, [r5,#0xc]
    b loc_8040F64
loc_8040F4E:
    mov r0, #0x21 
    bl chatbox_clearFlags_3e
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #1
    str r0, [r5,#0x74]
    add r4, #2
    mov r0, #0
    pop {pc}
loc_8040F64:
    mov r0, #0
    pop {pc}
dword_8040F68:    .word 0x3FF
off_8040F6C:    .word 0x400
.endfunc // chatbox_8040EF4

.func
.thumb_func
sub_8040F70:
    push {lr}
    ldr r0, [pc, #0x8040fd4-0x8040f72-2] // =off_8040FDC
    ldrb r1, [r4,#1]
    ldr r2, [pc, #0x8041024-0x8040f76-2] // =0x1D2
    cmp r1, #0x10
    blt loc_8040F82
    mov r3, #6
    strb r3, [r5,r2]
    b loc_8040FBC
loc_8040F82:
    cmp r1, #0xc
    blt loc_8040F8C
    mov r3, #5
    strb r3, [r5,r2]
    b loc_8040FBC
loc_8040F8C:
    cmp r1, #8
    blt loc_8040F96
    mov r3, #4
    strb r3, [r5,r2]
    b loc_8040FBC
loc_8040F96:
    cmp r1, #3
    bgt loc_8040FA0
    mov r3, #0
    strb r3, [r5,r2]
    b loc_8040FBC
loc_8040FA0:
    push {r0-r2}
    ldrb r3, [r4,#2]
    strb r3, [r5,r2]
    ldrb r3, [r4,#3]
    cmp r3, #0xff
    beq loc_8040FBA
    lsl r3, r3, #2
    ldr r0, [pc, #0x8040fd8-0x8040fae-2] // =dword_8045CEC+224
    add r0, r0, r3
    ldrh r1, [r0]
    ldrh r2, [r0,#2]
    strb r1, [r5,#0x1a]
    strb r2, [r5,#0x1b]
loc_8040FBA:
    pop {r0-r2}
loc_8040FBC:
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    tst r0, r0
    beq locret_8040FD0
    ldr r0, [pc, #0x8041028-0x8040fc8-4] // =dword_804102C
    ldrb r1, [r4,#1]
    ldrb r1, [r0,r1]
    add r4, r4, r1
locret_8040FD0:
    pop {pc}
    .balign 4, 0x00
off_8040FD4:    .word off_8040FDC
off_8040FD8:    .word dword_8045CEC+0xE0
off_8040FDC:    .word sub_804103E+1
    .word chatbox_8041090+1
    .word sub_80410F8+1
    .word chatbox_804110C+1
    .word sub_804103E+1
    .word chatbox_8041090+1
    .word sub_80410F8+1
    .word chatbox_804110C+1
    .word sub_804103E+1
    .word chatbox_8041090+1
    .word sub_80410F8+1
    .word chatbox_804110C+1
    .word sub_804103E+1
    .word chatbox_8041090+1
    .word sub_80410F8+1
    .word chatbox_804110C+1
    .word sub_80410F8+1
    .word chatbox_804110C+1
dword_8041024:    .word 0x1D2
off_8041028:    .word dword_804102C
dword_804102C:    .word 0x2020202
    .word 0x4040404
    .word 0x2020202
    .word 0x2020202
    .hword 0x202
.endfunc // sub_8040F70

.func
.thumb_func
sub_804103E:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    beq loc_804107A
    ldr r0, [pc, #0x804108c-0x804104c-4] // =0x100
    bl chatbox_clearFlags_3e
    ldrb r1, [r5,#0xc]
    tst r1, r1
    beq loc_8041060
    sub r1, #1
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_8041060:
    ldrb r0, [r5,#0x10]
    cmp r0, #0
    bne loc_8041068
    ldrb r0, [r5,#0x10]
loc_8041068:
    add r0, #1
    strb r0, [r5,#0x10]
    mov r2, #3
    cmp r0, r2
    beq loc_804107A
    mov r1, #0
    strb r1, [r5,#0xc]
loc_8041076:
    mov r0, #0
    pop {pc}
loc_804107A:
    mov r0, #4
    bl chatbox_maskFlags_3e
    bne loc_8041076
    mov r0, #1
    bl chatbox_clearFlags_3e
    mov r0, #1
    pop {pc}
off_804108C:    .word 0x100
.endfunc // sub_804103E

.func
.thumb_func
chatbox_8041090:
    push {lr}
    ldr r0, [pc, #0x80410f4-0x8041092-2] // =0x100
    bl chatbox_maskFlags_3e
    bne loc_80410F0
    mov r0, #1
    bl sub_8040920
    bl chatbox_8045F60
    mov r0, #8
    bl sub_8040920
    mov r0, #2
    bl chatbox_maskFlags_3e
    beq loc_80410B6
    mov r0, #0
    pop {pc}
loc_80410B6:
    ldrb r1, [r5,#0xc]
    tst r1, r1
    beq loc_80410C4
    sub r1, #1
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_80410C4:
    ldrb r0, [r5,#0x10]
    cmp r0, #3
    bne loc_80410CC
    ldrb r0, [r5,#0x10]
loc_80410CC:
    tst r0, r0
    beq loc_80410DC
    sub r0, #1
    strb r0, [r5,#0x10]
    mov r1, #0
    strb r1, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_80410DC:
    mov r1, #0
    strb r1, [r5,#0xc]
    mov r0, #9
    bl chatbox_clearFlags_3e
    ldr r0, [pc, #0x80410f4-0x80410e6-2] // =0x100
    bl sub_8040920
    mov r0, #1
    pop {pc}
loc_80410F0:
    mov r0, #0
    pop {pc}
off_80410F4:    .word 0x100
.endfunc // chatbox_8041090

.func
.thumb_func
sub_80410F8:
    push {lr}
    ldr r0, [pc, #0x8041108-0x80410fa-2] // =0x101
    bl chatbox_clearFlags_3e
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #1
    pop {pc}
off_8041108:    .word 0x101
.endfunc // sub_80410F8

.func
.thumb_func
chatbox_804110C:
    push {lr}
    mov r0, #1
    bl sub_8040920
    bl chatbox_8045F60
    mov r1, #0
    strb r1, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0x10]
    ldr r0, [pc, #0x8041130-0x8041120-4] // =0x100
    bl sub_8040920
    mov r0, #8
    bl chatbox_clearFlags_3e
    mov r0, #1
    pop {pc}
off_8041130:    .word 0x100
.endfunc // chatbox_804110C

.func
.thumb_func
sub_8041134:
    push {lr}
    ldrb r2, [r5,#0xf]
    add r2, #1
    strb r2, [r5,#0xf]
    mov r0, #0
    str r0, [r5,#0x70]
    cmp r2, #3
    bne loc_804114C
    mov r0, #1
    mov r2, #0x8c
    str r0, [r5,r2]
    b loc_8041156
loc_804114C:
    sub r2, #1
    lsl r3, r2, #2
    ldr r0, [pc, #0x804115c-0x8041150-4] // =dword_803FCE4
    ldr r0, [r0,r3]
    str r0, [r5,#0x7c]
loc_8041156:
    add r4, #1
    mov r0, #0
    pop {pc}
off_804115C:    .word dword_803FCE4
.endfunc // sub_8041134

.func
.thumb_func
sub_8041160:
    push {lr}
    ldr r2, [pc, #0x8041180-0x8041162-2] // =off_8041184
    ldrb r0, [r4,#1]
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    push {r5}
    mov lr, pc
    bx r2
    pop {r5}
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_8041180:    .word off_8041184
off_8041184:    .word sub_80411B0+1
    .word sub_80411BC+1
    .word sub_80411C8+1
    .word sub_80411E8+1
    .word sub_8041200+1
    .word 0x0
    .word sub_8041218+1
    .word sub_80411D4+1
    .word sub_80411E0+1
    .word sub_804122C+1
    .word sub_8041238+1
.endfunc // sub_8041160

.func
.thumb_func
sub_80411B0:
    push {lr}
    bl sub_802F114
    add r4, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80411B0

.func
.thumb_func
sub_80411BC:
    push {lr}
    bl sub_802F130
    add r4, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80411BC

.func
.thumb_func
sub_80411C8:
    push {lr}
    bl sub_802F14C
    add r4, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80411C8

.func
.thumb_func
sub_80411D4:
    push {lr}
    bl sub_802F238
    add r4, #4
    pop {pc}
    .byte 0, 0
.endfunc // sub_80411D4

.func
.thumb_func
sub_80411E0:
    push {lr}
    add r4, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80411E0

.func
.thumb_func
sub_80411E8:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    ldrb r1, [r4,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    add r2, r1, #0
    bl loc_802F182
    add r4, #5
    pop {pc}
.endfunc // sub_80411E8

.func
.thumb_func
sub_8041200:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    ldrb r1, [r4,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    add r2, r1, #0
    bl loc_802F1AC
    add r4, #5
    pop {pc}
.endfunc // sub_8041200

.func
.thumb_func
sub_8041218:
    push {lr}
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, #0x4c 
    ldr r0, [r5,r0]
    bl sub_802F114
    add r4, #3
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8041218

.func
.thumb_func
sub_804122C:
    push {lr}
    bl sub_813E5DC
    add r4, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_804122C

.func
.thumb_func
sub_8041238:
    push {lr}
    bl sub_813F9A0
    add r4, #4
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8041238

.func
.thumb_func
sub_8041244:
    push {lr}
    mov r0, #0x10
    bl sub_8040920
    mov r0, #0xa
    strh r0, [r5,#0xc]
    mov r1, #0x80
    ldr r0, [r5,r1]
    mov r2, #0xa0
    mov r3, #0x10
    mul r3, r0
    add r2, r2, r3
    ldrb r3, [r4,#1]
    strb r3, [r5,r2]
    add r2, #4
    ldrb r3, [r4,#2]
    strb r3, [r5,r2]
    add r2, #1
    ldrb r3, [r4,#3]
    strb r3, [r5,r2]
    add r2, #3
    ldr r3, [r5,#0x70]
    str r3, [r5,r2]
    add r0, #1
    str r0, [r5,r1]
    strb r0, [r5,#0x12]
    mov r0, #0
    strb r0, [r5,#0x13]
    add r2, #4
    ldrb r0, [r5,#0xf]
    strb r0, [r5,r2]
    mov r0, #1
    add r4, #4
    pop {pc}
.endfunc // sub_8041244

.func
.thumb_func
sub_8041288:
    push {lr}
    ldrb r2, [r4,#1]
    cmp r2, #1
    beq loc_80412AA
    ldrb r1, [r4,#2]
    mov r0, #8
    mul r0, r1
    ldr r2, [r5,#0x70]
    add r2, r2, r0
    str r2, [r5,#0x70]
    ldr r1, [r5,#0x7c]
    lsl r0, r0, #2
    add r1, r1, r0
    str r1, [r5,#0x7c]
    add r4, #3
    mov r0, #1
    pop {pc}
loc_80412AA:
    ldrb r0, [r4,#2]
    ldr r2, [r5,#0x70]
    add r2, r2, r0
    str r2, [r5,#0x70]
    ldr r1, [r5,#0x7c]
    lsl r0, r0, #2
    add r1, r1, r0
    str r1, [r5,#0x7c]
    add r4, #3
    mov r0, #1
    pop {pc}
    .byte 0xC4
    .byte 0x12
    .byte 4
    .byte 8
    .byte 3
    .byte 3
    .byte 0
    .byte 0
.endfunc // sub_8041288

.func
.thumb_func
sub_80412C8:
    push {r3,lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r7, r1, r2
    add r7, #4
    ldrh r0, [r5,r7]
    add r7, #4
    push {r7}
    ldrb r1, [r5,#0x4] // ChatBoxPropreties.chatPageState
    cmp r1, #2
    beq loc_804131E
    ldrh r1, [r5,#0x24] // ChatBoxPropreties.keyPress
    ldr r2, [pc, #0x8041480-0x80412ea-2] // =dword_8041484
    mov r3, #0xc
loc_80412EE:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_80412FE
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_804131E
    b loc_80412EE
loc_80412FE:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24] // ChatBoxPropreties.keyPress
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    strb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    cmp r0, r1
    beq loc_804131E
    mov r0, #0
    strh r0, [r5,#0xc] // ChatBoxPropreties.chatbox_y
    mov r2, #0x6c 
    ldrh r0, [r5,r2]
    bl sound_play
loc_804131E:
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    pop {r7}
    ldrb r0, [r5,#0x4] // ChatBoxPropreties.chatPageState
    cmp r0, #0
    beq loc_8041334
    ldrh r0, [r5,#0xc] // ChatBoxPropreties.chatbox_y
    cmp r0, #0
    ble loc_8041334
    sub r0, #1
    strh r0, [r5,#0xc] // ChatBoxPropreties.chatbox_y
    b loc_8041362
loc_8041334:
    ldrb r0, [r5,#0x4] // ChatBoxPropreties.chatPageState
    cmp r0, #1
    beq loc_8041354
    cmp r0, #2
    beq loc_804139A
    ldrb r0, [r4,#2]
    mov r1, #0xf
    and r0, r1
    beq loc_8041348
    strb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
loc_8041348:
    mov r0, #1
    strb r0, [r5,#0x4] // ChatBoxPropreties.chatPageState
    mov r0, #0x10
    bl sub_8040920
    b loc_8041384
loc_8041354:
    ldrh r0, [r5,#0x26] // ChatBoxPropreties.keysFlags
    mov r1, #1
    tst r0, r1
    bne loc_8041388
    mov r1, #2
    tst r0, r1
    bne loc_8041400
loc_8041362:
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r0, r1, r2
    add r0, #8
    ldr r1, [r5,r0]
    str r1, [r5,#0x70] // ChatBoxPropreties.unk_70
    add r0, #4
    ldrb r0, [r5,r0]
    ldrb r1, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
    strb r0, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
    push {r1}
    bl loc_8040944
    pop {r1}
    strb r1, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
loc_8041384:
    mov r0, #0
    pop {r3,pc}
loc_8041388:
    mov r0, #0x80
    bl chatbox_maskFlags_3e
    cmp r0, #0
    bne loc_804139A
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
loc_804139A:
    mov r0, #0x50 
    bl chatbox_clearFlags_3e
    mov r0, #7
    bl sub_8045F2C
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    bl sub_8045F1C
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    mov r1, #0x80
    ldrb r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    bne loc_80413C0
    mov r0, #0x10
    bl sub_8045F1C
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
loc_80413C0:
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    add r0, #3
    ldrb r0, [r4,r0]
    cmp r0, #0xff
    bne loc_80413E8
    ldrb r0, [r4,#1]
    ldrb r1, [r4,#2]
    add r4, r4, r0
    mov r2, #0x80
    tst r1, r2
    beq loc_80413EE
    bl chatbox_8045F60
    mov r1, #0
    str r1, [r5,#0x64] // ChatBoxPropreties.unk_64
    mov r1, #1
    str r1, [r5,#0x74] // ChatBoxPropreties.unk_74
    str r4, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
    str r4, [r5,#0x34] // ChatBoxPropreties.pCurrScript
    b loc_80413EE
loc_80413E8:
    add r1, r0, #0
    bl chatbox_80408D0
loc_80413EE:
    mov r0, #0
    strb r0, [r5,#4]
    mov r0, #4
    str r0, [r5,#0x78] // ChatBoxPropreties.unk_78
    mov r0, #0x20 
    bl sub_8045F1C
    mov r0, #0
    pop {r3,pc}
loc_8041400:
    ldrb r1, [r4,#2]
    mov r2, #0x20 
    tst r1, r2
    bne loc_8041468
    mov r2, #0x40 
    tst r1, r2
    bne loc_8041448
    ldr r0, [pc, #0x804147c-0x804140e-2] // =0x110
    bl sub_8045F1C
    mov r0, #7
    bl sub_8045F2C
    mov r0, #0x80 // ChatBoxPropreties.unk_80
    ldr r0, [r5,r0]
    strb r0, [r5,#0x12] // ChatBoxPropreties.unk_12
    sub r0, #1
    strb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    bl sub_8045F1C
    mov r0, #0x80
    bl chatbox_maskFlags_3e
    cmp r0, #0
    bne loc_804143A
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl sound_play
loc_804143A:
    mov r0, #2
    strb r0, [r5,#0x4] // ChatBoxPropreties.chatPageState
    mov r0, #3
    strh r0, [r5,#0xc] // ChatBoxPropreties.chatbox_y
    mov r0, #0x10
    bl chatbox_clearFlags_3e
loc_8041448:
    ldrb r0, [r5,#0x13] // ChatBoxPropreties.choiceCursorPos
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r0, r1, r2
    add r0, #0xc // ChatBoxPropreties.chatbox_y
    ldrb r0, [r5,r0]
    ldrb r1, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
    strb r0, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
    push {r1}
    bl loc_8040944
    pop {r1}
    strb r1, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
    mov r0, #0
    pop {r3,pc}
loc_8041468:
    ldr r0, [pc, #0x8041478-0x8041468-4] // =0x130
    bl sub_8045F1C
    ldrb r0, [r4,#1]
    ldrb r1, [r4,#2]
    add r4, r4, r0
    mov r0, #1
    pop {r3,pc}
off_8041478:    .word 0x130
off_804147C:    .word 0x110
off_8041480:    .word dword_8041484
dword_8041484:    .word 0x800040
    .word 0x100020
    .word 0x8041490
off_8041490:    .word loc_8040944+1
    .word sub_80409E0+1
    .word 0x100
    .word off_80414A0
off_80414A0:    .word dword_8070604+1
    .word 0xC0B0A09
.endfunc // sub_80412C8

.func
.thumb_func
sub_80414A8:
    push {lr}
    ldrb r1, [r4,#1]
    cmp r1, #0xff
    beq loc_8041500
    cmp r1, #2
    beq loc_8041510
    cmp r1, #3
    beq loc_804152A
    cmp r1, #4
    beq loc_8041546
    ldrb r0, [r5,#0x11]
    tst r0, r0
    bne loc_80414C8
    tst r1, r1
    beq loc_80414C8
    b loc_80414F0
loc_80414C8:
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    bne loc_80414E2
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    strh r0, [r5,#0xc]
    mov r0, #1
    strb r0, [r5,#4]
loc_80414E2:
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    beq loc_80414F0
    sub r0, #1
    strh r0, [r5,#0xc]
    mov r0, #0
    pop {pc}
loc_80414F0:
    mov r0, #1
    bl chatbox_clearFlags_3e
    mov r0, #0
    strb r0, [r5,#4]
    add r4, #4
    mov r0, #1
    pop {pc}
loc_8041500:
    mov r0, #1
    bl sub_8040920
    mov r0, #8
    bl sub_8045F1C
    mov r0, #0
    pop {pc}
loc_8041510:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    bne loc_80414F0
    mov r0, #1
    bl sub_8040920
    mov r0, #0
    pop {pc}
loc_804152A:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    mov r2, r10
    ldr r2, [r2,#0x10]
    add r2, #8
    add r2, r2, r0
    ldrb r0, [r2]
    cmp r0, r1
    beq loc_80414F0
    mov r0, #1
    bl sub_8040920
    mov r0, #0
    pop {pc}
loc_8041546:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    beq loc_80414F0
    mov r0, #1
    bl sub_8040920
    mov r0, #0
    pop {pc}
    .word 0x1F2
    .word 0x1F3
    .word 0x1F0
.endfunc // sub_80414A8

.func
.thumb_func
chatbox_ho_804156C:
    push {lr}
    ldr r0, [pc, #0x804157c-0x804156e-2] // =jt_ctrl_8041580
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_804157C:    .word jt_ctrl_8041580
jt_ctrl_8041580:    .word chatbox_804171C+1
    .word sub_8041748+1
    .word sub_80416C4+1
    .word sub_8041774+1
    .word sub_80416F0+1
    .word sub_80417A4+1
    .word sub_80417C0+1
    .word sub_80417E4+1
    .word sub_8041818+1
    .word sub_8041818+1
    .word sub_8042A9C+1
    .word sub_8042A9C+1
    .word sub_8042A9C+1
    .word sub_8042A9C+1
    .word sub_8042B38+1
    .word sub_8042B38+1
    .word sub_8042B38+1
    .word sub_8042B38+1
    .word sub_8042C18+1
    .word sub_8042C18+1
    .word sub_8042C18+1
    .word sub_8042C18+1
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word sub_80418CC+1
    .word sub_8043A5C+1
    .word sub_8043A5C+1
    .word sub_8043A5C+1
    .word sub_8043A5C+1
    .word 0x0
    .word sub_8041904+1
    .word sub_8041944+1
    .word sub_80419D0+1
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word sub_8041694+1
    .word sub_8041670+1
    .word sub_8041818+1
    .word sub_8041964+1
    .word 0x0
    .word 0x0
    .word sub_804198C+1
    .word sub_80419B4+1
    .word 0x0
    .word sub_80419F8+1
    .word sub_8041A28+1
    .word sub_8041A4C+1
    .word sub_8041A7C+1
    .word sub_8041A7C+1
    .word sub_8041A7C+1
    .word sub_8041A7C+1
    .word sub_8041A7C+1
    .word sub_8041A7C+1
    .word 0x0
    .word chatbox_8041ABC+1
.endfunc // chatbox_ho_804156C

.func
.thumb_func
sub_8041670:
    push {lr}
    ldr r0, [pc, #0x8041690-0x8041672-2] // =dword_8043C84
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    ldrb r1, [r1]
    cmp r1, #0xff
    beq loc_8041688
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041688:
    add r4, #3
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_8041690:    .word dword_8043C84
.endfunc // sub_8041670

.func
.thumb_func
sub_8041694:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r0, r1
    ldrb r1, [r4,#4]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    add r2, r1, #0
    bl loc_802F200
    bne loc_80416AE
    mov r2, #6
    b loc_80416B0
loc_80416AE:
    mov r2, #5
loc_80416B0:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_80416BE
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80416BE:
    add r4, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8041694

.func
.thumb_func
sub_80416C4:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r3, [r3,#5]
    mov r0, #5
    cmp r3, r1
    blt loc_80416DC
    cmp r3, r2
    bgt loc_80416DC
    mov r0, #4
loc_80416DC:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_80416EA
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80416EA:
    add r4, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80416C4

.func
.thumb_func
sub_80416F0:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r3, [r3,#4]
    mov r0, #5
    cmp r3, r1
    blt loc_8041708
    cmp r3, r2
    bgt loc_8041708
    mov r0, #4
loc_8041708:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_8041716
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041716:
    add r4, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80416F0

.func
.thumb_func
chatbox_804171C:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r2, [r4,#3]
    lsl r2, r2, #8
    orr r0, r2
    mov r2, #0
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168
    bne loc_8041732
    mov r2, #1
loc_8041732:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8041742
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041742:
    add r4, #6
    mov r0, #1
    pop {pc}
.endfunc // chatbox_804171C

.func
.thumb_func
sub_8041748:
    push {lr}
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r3, [r3,#6]
    mov r0, #5
    cmp r3, r1
    blt loc_8041760
    cmp r3, r2
    bgt loc_8041760
    mov r0, #4
loc_8041760:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_804176E
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_804176E:
    add r4, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_8041748

.func
.thumb_func
sub_8041774:
    push {lr}
    ldr r0, [pc, #0x80417a0-0x8041776-2] // =off_8043C64
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    ldrb r1, [r1]
    ldrb r2, [r4,#3]
    mov r0, #5
    cmp r1, r2
    bne loc_804178A
    mov r0, #4
loc_804178A:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_8041798
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041798:
    add r4, #6
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_80417A0:    .word off_8043C64
.endfunc // sub_8041774

.func
.thumb_func
sub_80417A4:
    push {lr}
    mov r0, #2
    mov r0, #3
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_80417B8
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80417B8:
    add r4, #4
    mov r0, #1
    pop {pc}
    .byte 0, 0
.endfunc // sub_80417A4

.func
.thumb_func
sub_80417C0:
    push {lr}
    bl sub_803F524
    bne loc_80417CC
    mov r0, #2
    b loc_80417CE
loc_80417CC:
    mov r0, #3
loc_80417CE:
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_80417DC
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80417DC:
    add r4, #4
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80417C0

.func
.thumb_func
sub_80417E4:
    push {lr}
    push {r4,r5}
    ldrb r0, [r4,#2]
    bl sub_803CE28
    pop {r4,r5}
    ldrb r1, [r4,#3]
    mov r2, #0
    cmp r0, r1
    beq loc_8041800
    add r2, #1
    cmp r0, r1
    bgt loc_8041800
    add r2, #1
loc_8041800:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8041810
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041810:
    add r4, #7
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80417E4

.func
.thumb_func
sub_8041818:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #9
    beq loc_804184C
    cmp r0, #0x2a 
    beq loc_804188A
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    bl sub_8021BC0
    pop {r4,r5}
    ldrb r1, [r4,#5]
    mov r2, #0
    cmp r0, r1
    beq loc_8041846
    add r2, #1
    cmp r0, r1
    bgt loc_8041846
    add r2, #1
loc_8041846:
    add r2, #6
    ldrb r1, [r4,r2]
    b loc_80418AE
loc_804184C:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    bl sub_8021BC0
    pop {r4,r5}
    push {r0,r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    bl sub_8021C02
    add r1, r0, #0
    pop {r0,r4,r5}
    sub r0, r0, r1
    ldrb r1, [r4,#5]
    mov r2, #0
    cmp r0, r1
    beq loc_8041884
    add r2, #1
    cmp r0, r1
    bgt loc_8041884
    add r2, #1
loc_8041884:
    add r2, #6
    ldrb r1, [r4,r2]
    b loc_80418AE
loc_804188A:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    bl sub_8021BD8
    pop {r4,r5}
    ldrb r1, [r4,#4]
    mov r2, #0
    cmp r0, r1
    beq loc_80418AA
    add r2, #1
    cmp r0, r1
    bgt loc_80418AA
    add r2, #1
loc_80418AA:
    add r2, #5
    ldrb r1, [r4,r2]
loc_80418AE:
    cmp r1, #0xff
    beq loc_80418BA
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80418BA:
    ldrb r0, [r4,#1]
    cmp r0, #0x2a 
    beq loc_80418C4
    add r4, #9
    b loc_80418C6
loc_80418C4:
    add r4, #8
loc_80418C6:
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8041818

.func
.thumb_func
sub_80418CC:
    push {r6,lr}
    ldrb r6, [r4,#3]
    mov r3, #0
    mov r2, #0
loc_80418D4:
    cmp r3, r6
    beq loc_80418EC
    ldrb r0, [r4,#2]
    add r0, r0, r3
    push {r2-r5}
    bl sub_803CE28
    pop {r2-r5}
    tst r0, r0
    bne loc_80418EE
    add r3, #1
    b loc_80418D4
loc_80418EC:
    mov r2, #1
loc_80418EE:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_80418FE
    bl chatbox_80408D0
    mov r0, #1
    pop {r6,pc}
loc_80418FE:
    add r4, #6
    mov r0, #1
    pop {r6,pc}
.endfunc // sub_80418CC

.func
.thumb_func
sub_8041904:
    push {r6,r7,lr}
    mov r7, #0
    ldrb r6, [r4,#3]
    mov r3, #0
    mov r2, #0
loc_804190E:
    cmp r3, r6
    beq loc_8041928
    ldrb r0, [r4,#2]
    add r0, r0, r3
    push {r2-r5}
    bl sub_803CE28
    pop {r2-r5}
    add r3, #1
    tst r0, r0
    beq loc_804190E
    add r7, #1
    b loc_804190E
loc_8041928:
    cmp r7, #2
    beq loc_804192E
    mov r2, #1
loc_804192E:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804193E
    bl chatbox_80408D0
    mov r0, #1
    pop {r6,r7,pc}
loc_804193E:
    add r4, #6
    mov r0, #1
    pop {r6,r7,pc}
.endfunc // sub_8041904

.func
.thumb_func
sub_8041944:
    push {r6,r7,lr}
    bl sub_800B6B0
    add r2, r0, #0
    add r2, #1
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804195C
    bl chatbox_80408D0
    mov r0, #1
    pop {r6,r7,pc}
loc_804195C:
    add r4, #6
    mov r0, #1
    pop {r6,r7,pc}
    .balign 4, 0x00
.endfunc // sub_8041944

.func
.thumb_func
sub_8041964:
    push {lr}
    mov r1, #6
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    add r2, r1, #0
    bl loc_802F200
    bne loc_8041976
    mov r2, #3
    b loc_8041978
loc_8041976:
    mov r2, #2
loc_8041978:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8041986
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041986:
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8041964

.func
.thumb_func
sub_804198C:
    push {lr}
    ldr r0, [pc, #0x80419b0-0x804198e-2] // =off_8043C64
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    ldrb r0, [r1]
    add r0, #3
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_80419A8
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80419A8:
    add r4, #0xf
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_80419B0:    .word off_8043C64
.endfunc // sub_804198C

.func
.thumb_func
sub_80419B4:
    push {lr}
    bl getPETNaviSelect
    add r0, #2
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_80419CA
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80419CA:
    add r4, #0xe
    mov r0, #1
    pop {pc}
.endfunc // sub_80419B4

.func
.thumb_func
sub_80419D0:
    push {lr}
    ldrb r0, [r4,#2]
    push {r4,r5}
    bl sub_8048C24
    pop {r4,r5}
    mov r1, #4
    tst r0, r0
    beq loc_80419E4
    mov r1, #3
loc_80419E4:
    ldrb r1, [r4,r1]
    cmp r1, #0xff
    beq loc_80419F2
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80419F2:
    add r4, #5
    mov r0, #1
    pop {pc}
.endfunc // sub_80419D0

.func
.thumb_func
sub_80419F8:
    push {lr}
    bl getPETNaviSelect
    mov r1, #0x3e 
    bl sub_80137FE
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    lsl r2, r2, #8
    orr r1, r2
    mov r3, #4
    cmp r0, r1
    bge loc_8041A14
    mov r3, #5
loc_8041A14:
    ldrb r1, [r4,r3]
    cmp r1, #0xff
    beq loc_8041A22
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041A22:
    add r4, #6
    mov r0, #1
    pop {pc}
.endfunc // sub_80419F8

.func
.thumb_func
sub_8041A28:
    push {lr}
    mov r0, #6
    bl sub_81207F8
    cmp r0, #0xc
    bge loc_8041A38
    ldrb r1, [r4,#3]
    b loc_8041A3A
loc_8041A38:
    ldrb r1, [r4,#2]
loc_8041A3A:
    cmp r1, #0xff
    beq loc_8041A46
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041A46:
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8041A28

.func
.thumb_func
sub_8041A4C:
    push {lr}
    ldrb r1, [r4,#2]
    ldr r2, [pc, #0x8041ab0-0x8041a50-4] // =dword_8041AB4
    ldrb r0, [r2,r1]
    bl sub_81207F8
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    mov r3, #6
    cmp r0, r1
    blt loc_8041A68
    cmp r0, r2
    bgt loc_8041A68
    mov r3, #5
loc_8041A68:
    ldrb r1, [r4,r3]
    cmp r1, #0xff
    beq loc_8041A76
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041A76:
    add r4, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8041A4C

.func
.thumb_func
sub_8041A7C:
    push {lr}
    ldrb r1, [r4,#1]
    sub r1, #0x34 
    ldr r2, [pc, #0x8041ab0-0x8041a82-2] // =dword_8041AB4
    ldrb r0, [r2,r1]
    bl sub_81207F8
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    mov r3, #5
    cmp r0, r1
    blt loc_8041A9A
    cmp r0, r2
    bgt loc_8041A9A
    mov r3, #4
loc_8041A9A:
    ldrb r1, [r4,r3]
    cmp r1, #0xff
    beq loc_8041AA8
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041AA8:
    add r4, #6
    mov r0, #1
    pop {pc}
    .byte 0, 0
off_8041AB0:    .word dword_8041AB4
dword_8041AB4:    .word 0x4020100, 0x605
.endfunc // sub_8041A7C

.func
.thumb_func
chatbox_8041ABC:
    push {lr}
    bl reqBBS_getTotalPointsIndex
    mov r1, #2
    add r0, r0, r1
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_8041AD4
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041AD4:
    add r4, #7
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // chatbox_8041ABC

.func
.thumb_func
chatbox_8041ADC:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #2
    beq loc_8041B8C
    cmp r0, #1
    beq loc_8041B76
    tst r0, r0
    bne loc_8041AFA
    ldrb r1, [r4,#2]
loc_8041AEE:
    cmp r1, #0xff
    beq loc_8041B9C
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041AFA:
    ldrb r0, [r4,#1]
    mov r1, #0x40 
    b loc_8041B00
loc_8041B00:
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r6, #3
    and r6, r0
    add r6, #2
loc_8041B0C:
    bl sub_800151C
    sub r6, #1
    bgt loc_8041B0C
    lsl r0, r0, #0x16
    lsr r0, r0, #0x16
    b loc_8041B1A
loc_8041B1A:
    ldrb r2, [r4,#1]
    lsr r6, r2, #7
    push {r0,r2}
    mov r0, #0x17
    mov r1, #9
    bl sub_802F164
    pop {r0,r2}
    bne loc_8041B2E
    mov r6, #0
loc_8041B2E:
    push {r2,r6}
    add r6, #2
    lsl r2, r2, #0x1a
    lsr r2, r2, #0x1a
    add r2, #2
    mov r1, #0
loc_8041B3A:
    ldrb r3, [r4,r2]
    add r1, r1, r3
    sub r2, #1
    cmp r2, r6
    bge loc_8041B3A
    svc 6
    pop {r2,r6}
    lsl r2, r2, #0x1a
    lsr r2, r2, #0x1a
    add r2, #2
    mov r3, #0
    mov r7, #2
    add r7, r7, r6
loc_8041B54:
    ldrb r0, [r4,r7]
    add r3, r3, r0
    cmp r3, r1
    bgt loc_8041B64
    add r7, #1
    cmp r7, r2
    ble loc_8041B54
    mov r7, #2
loc_8041B64:
    ldrb r2, [r4,#1]
    lsl r2, r2, #0x1a
    lsr r2, r2, #0x1a
    add r2, #1
    add r4, r4, r2
    ldrb r1, [r4,r7]
    add r4, r4, r2
    sub r4, #1
    b loc_8041AEE
loc_8041B76:
    mov r2, #0x9c
    ldrb r1, [r5,r2]
    cmp r1, #0xff
    beq loc_8041B86
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8041B86:
    add r4, #2
    mov r0, #1
    pop {pc}
loc_8041B8C:
    ldrb r1, [r4,#2]
    cmp r1, #0xff
    beq loc_8041B9C
    mov r2, #0x9c
    strb r1, [r5,r2]
    add r4, #3
    mov r0, #1
    pop {pc}
loc_8041B9C:
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // chatbox_8041ADC

.func
.thumb_func
sub_8041BA4:
    push {lr}
    ldrb r0, [r4,#2]
    strb r0, [r5,#8]
    add r1, r0, #1
    ldr r2, [pc, #0x8041bd4-0x8041bac-4] // =0x1F3
    strb r1, [r5,r2]
    cmp r0, #0
    bne loc_8041BC2
    mov r0, #1
    ldr r2, [pc, #0x8041bd4-0x8041bb6-2] // =0x1F3
    strb r0, [r5,r2]
    mov r0, #0x40 
    bl sub_8040920
    b loc_8041BC8
loc_8041BC2:
    ldr r0, [pc, #0x8041bd0-0x8041bc2-2] // =0x800
    bl sub_8040920
loc_8041BC8:
    add r4, #3
    mov r0, #1
    pop {pc}
    .byte 0, 0
dword_8041BD0:    .word 0x800
dword_8041BD4:    .word 0x1F3
.endfunc // sub_8041BA4

.func
.thumb_func
sub_8041BD8:
    push {lr}
    ldr r0, [pc, #0x8041c50-0x8041bda-2] // =0x200
    bl sub_8045F1C
    ldrb r2, [r5,#8]
    tst r2, r2
    beq loc_8041BF2
    mov r0, #1
    bl sub_8040920
    mov r0, #0x40 
    bl chatbox_clearFlags_3e
loc_8041BF2:
    ldr r0, [pc, #0x8041c3c-0x8041bf2-2] // =0x400
    ldr r1, [pc, #0x8041c40-0x8041bf4-4] // =0x800
    orr r0, r1
    bl chatbox_clearFlags_3e
    add r4, #1
    str r4, [r5,#0x34]
    mov r0, #0
    strb r0, [r5,#4]
    str r0, [r5,#0x64]
    strb r0, [r5,#0x12]
    strb r0, [r5,#2]
    strb r0, [r5,#0x17]
    mov r1, #0x3d 
    strb r0, [r5,r1]
    mov r1, #0x80
    str r0, [r5,r1]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #1
    strb r0, [r5,#0x11]
    str r0, [r5,#0x74]
    ldrb r0, [r5,#8]
    ldrb r0, [r5,#0x18]
    add r1, r5, #0
    add r1, #0x94
    strb r0, [r1]
    bl chatbox_8045F60
    mov r0, #0
    ldr r1, [pc, #0x8041c44-0x8041c2e-2] // =off_8041C48
    ldr r2, [r1]
    strh r0, [r5,r2]
    ldr r2, [r1,#0x4] // (dword_8041C4C - 0x8041c48)
    strh r0, [r5,r2]
    mov r0, #1
    pop {pc}
off_8041C3C:    .word 0x400
dword_8041C40:    .word 0x800
off_8041C44:    .word off_8041C48
off_8041C48:    .word 0x1D4
dword_8041C4C:    .word 0x1D6
off_8041C50:    .word 0x200
.endfunc // sub_8041BD8

.func
.thumb_func
sub_8041C54:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #0
    beq loc_8041C78
    cmp r0, #1
    beq loc_8041C6E
    cmp r0, #2
    beq loc_8041C64
loc_8041C64:
    ldrb r0, [r4,#2]
    bl sub_8045F1C
    add r4, #3
    b loc_8041C80
loc_8041C6E:
    mov r0, #0x40 
    bl sub_8045F2C
    add r4, #2
    b loc_8041C80
loc_8041C78:
    mov r0, #0x40 
    bl sub_8045F1C
    add r4, #2
loc_8041C80:
    mov r0, #1
    pop {pc}
.endfunc // sub_8041C54

.func
.thumb_func
sub_8041C84:
    push {lr}
    ldrb r0, [r4,#1]
    lsr r1, r0, #4
    lsl r1, r1, #4
    cmp r1, #0x10
    bne loc_8041C94
    bl sub_8041DF4
loc_8041C94:
    cmp r0, #0
    beq loc_8041CA0
    cmp r0, #1
    beq loc_8041CC6
    cmp r0, #2
    beq loc_8041CD8
loc_8041CA0:
    push {r4,r5}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_8041CB8
    ldr r0, [r5,#0x54]
    ldr r3, [pc, #0x8041cf0-0x8041cb0-4] // =0x72
    sub r1, r0, r3
    add r1, #1
    str r1, [r5,#0x4c]
loc_8041CB8:
    ldrb r1, [r4,#3]
    bl sub_803CD98
    pop {r4,r5}
    add r4, #4
    mov r0, #1
    pop {pc}
loc_8041CC6:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_803CE08
    pop {r4,r5}
    add r4, #4
    mov r0, #1
    pop {pc}
loc_8041CD8:
    push {r4,r5}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_803CDF8
    pop {r4,r5}
    add r4, #4
    mov r0, #1
    pop {pc}
dword_8041CF0:    .word 0x72
.endfunc // sub_8041C84

.func
.thumb_func
sub_8041CF4:
    push {lr}
    ldrb r0, [r4,#1]
    cmp r0, #1
    beq loc_8041D74
    cmp r0, #2
    beq loc_8041D7E
    cmp r0, #3
    beq loc_8041D86
    cmp r0, #4
    beq loc_8041D94
    mov r0, #2
    bl chatbox_maskFlags_3e
    bne loc_8041D28
    mov r0, #2
    bl sub_8040920
    mov r0, #4
    bl sub_8040920
    ldr r0, [pc, #0x8041db0-0x8041d1c-4] // =0x1000
    bl chatbox_maskFlags_3e
    bne loc_8041D28
    ldr r0, [pc, #0x8041da8-0x8041d24-4] // =0x18C6
    str r0, [r5,#0x40]
loc_8041D28:
    ldrb r0, [r4,#2]
    mov r1, #0
    ldr r2, [pc, #0x8041da0-0x8041d2c-4] // =byte_8044244
loc_8041D2E:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_8041D3E
    cmp r3, r0
    beq loc_8041D3C
    add r2, #2
    b loc_8041D2E
loc_8041D3C:
    ldrb r1, [r2,#1]
loc_8041D3E:
    strb r1, [r5,#7]
    ldr r1, [pc, #0x8041db4-0x8041d40-4] // =0x1F0
    ldrb r7, [r5,r1]
    cmp r7, #3
    beq loc_8041D4A
    mov r7, #0
loc_8041D4A:
    mov r1, #1
    ldr r2, [pc, #0x8041da4-0x8041d4c-4] // =byte_8044260
loc_8041D4E:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_8041D60
    cmp r3, r0
    beq loc_8041D5C
    add r2, #2
    b loc_8041D4E
loc_8041D5C:
    ldrb r7, [r2,#1]
    mov r1, #0
loc_8041D60:
    strb r1, [r5,#0x14]
    strb r7, [r5,#0xa]
    mov r3, #0x98
    strb r7, [r5,r3]
    mov r2, #0xff
    strb r2, [r5,#0xb]
    bl dword_8040B38+2
    add r4, #3
    b loc_8041D9C
loc_8041D74:
    mov r0, #2
    bl chatbox_clearFlags_3e
    add r4, #2
    b loc_8041D9C
loc_8041D7E:
    ldrb r0, [r4,#2]
    strb r0, [r5,#7]
    add r4, #3
    b loc_8041D9C
loc_8041D86:
    ldrb r0, [r4,#2]
    ldr r1, [pc, #0x8041db4-0x8041d88-4] // =0x1F0
    strb r0, [r5,r1]
    ldr r1, [pc, #0x8041db8-0x8041d8c-4] // =0x1F1
    strb r0, [r5,r1]
    add r4, #3
    b loc_8041D9C
loc_8041D94:
    ldrb r0, [r4,#2]
    mov r2, #0x90
    str r0, [r5,r2]
    add r4, #3
loc_8041D9C:
    mov r0, #1
    pop {pc}
off_8041DA0:    .word byte_8044244
off_8041DA4:    .word byte_8044260
dword_8041DA8:    .word 0x18C6
    .word i_joGameSubsysSel
dword_8041DB0:    .word 0x1000
off_8041DB4:    .word 0x1F0
off_8041DB8:    .word 0x1F1
.endfunc // sub_8041CF4

.func
.thumb_func
sub_8041DBC:
    push {lr}
    ldrb r0, [r4,#1]
    tst r0, r0
    bne loc_8041DD6
    ldrb r0, [r4,#2]
    lsl r0, r0, #5
    ldr r1, [pc, #0x8041dec-0x8041dc8-4] // =dword_86B7AA0
    add r0, r0, r1
    ldr r1, [pc, #0x8041df0-0x8041dcc-4] // =unk_3001710
    mov r2, #0x20 
    bl sub_8000950
    b loc_8041DE6
loc_8041DD6:
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, #0x4c 
    ldr r0, [r5,r0]
    ldr r1, [pc, #0x8041df0-0x8041dde-2] // =unk_3001710
    mov r2, #0x20 
    bl sub_8000950
loc_8041DE6:
    add r4, #3
    mov r0, #1
    pop {pc}
off_8041DEC:    .word dword_86B7AA0
off_8041DF0:    .word unk_3001710
.endfunc // sub_8041DBC

.func
.thumb_func
sub_8041DF4:
    sub r0, #0x10
    cmp r0, #0
    beq loc_8041E12
    cmp r0, #1
    beq loc_8041E40
    cmp r0, #2
    beq loc_8041E5A
    mov r0, #0x73 
    bl sound_play
    bl sub_811FFC0
    add r4, #2
    mov r0, #1
    pop {pc}
loc_8041E12:
    push {r4,r5}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldr r1, [pc, #0x8041e7c-0x8041e22-2] // =0xFFFF
    cmp r0, r1
    bne loc_8041E2A
    ldr r0, [r5,#0x54]
loc_8041E2A:
    ldrb r1, [r4,#4]
    cmp r1, #0xff
    bne loc_8041E32
    ldr r1, [r5,#0x58]
loc_8041E32:
    ldrb r2, [r4,#5]
    bl dword_8021AEC+2
    pop {r4,r5}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_8041E40:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#5]
    bl sub_8021B92
    pop {r4,r5}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_8041E5A:
    push {r4,r5}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#5]
    bl sub_8021B78
    pop {r4,r5}
    add r4, #6
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
dword_8041E7C:    .word 0xFFFF
.endfunc // sub_8041DF4

.func
.thumb_func
sub_8041E80:
    push {lr}
    ldr r0, [pc, #0x8041e90-0x8041e82-2] // =off_8041E94
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8041E90:    .word off_8041E94
off_8041E94:    .word sub_8041EB0+1
    .word sub_8041EE8+1
    .word sub_8041F10+1
    .word sub_8041F1C+1
    .word sub_8041F44+1
    .word sub_8041EE8+1
    .word sub_8041F44+1
.endfunc // sub_8041E80

.func
.thumb_func
sub_8041EB0:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_8041EC8
    bl sub_809E0B0
    mov r0, #1
    strb r0, [r5,#4]
    b loc_8041EE2
loc_8041EC8:
    bl sub_809E228
    cmp r0, #0
    bne loc_8041EE2
    bl sub_809E2B8
    bl sub_809E13C
    mov r0, #0
    strb r0, [r5,#4]
    add r4, #2
    mov r0, #1
    pop {pc}
loc_8041EE2:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8041EB0

.func
.thumb_func
sub_8041EE8:
    push {lr}
    mov r0, #1
    bl sub_8040920
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    add r1, r5, #0
    add r1, #0x3c 
    ldrb r2, [r7,#0x14]
    strb r2, [r1]
    ldrb r0, [r4,#2]
    cmp r0, #7
    bgt loc_8041F04
loc_8041F04:
    bl sub_809E14C
    add r4, #3
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // sub_8041EE8

.func
.thumb_func
sub_8041F10:
    push {lr}
    bl sub_809E122
    add r4, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_8041F10

.func
.thumb_func
sub_8041F1C:
    push {lr}
    mov r0, #1
    bl sub_8040920
    push {r5}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r5, [r0,#0x18]
    bl sub_8002DEA
    pop {r5}
    mov r1, #0x80
    and r1, r0
    bne loc_8041F3C
    mov r0, #0
    pop {pc}
loc_8041F3C:
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8041F1C

.func
.thumb_func
sub_8041F44:
    push {lr}
    mov r0, #1
    bl sub_8040920
    add r1, r5, #0
    add r1, #0x3c 
    ldrb r0, [r1]
    cmp r0, #7
    bgt loc_8041F5E
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    strb r0, [r7,#0x10]
loc_8041F5E:
    bl sub_809E14C
    add r4, #2
    mov r0, #0
    pop {pc}
.endfunc // sub_8041F44

.func
.thumb_func
sub_8041F68:
    push {lr}
    ldr r0, [pc, #0x8041f78-0x8041f6a-2] // =off_8041F7C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8041F78:    .word off_8041F7C
off_8041F7C:    .word sub_8041FB4+1
    .word sub_80420BC+1
    .word sub_8042124+1
    .word sub_8042128+1
    .word sub_8042128+1
    .word 0x0
    .word sub_8042184+1
    .word 0x0, 0x0, 0x0
    .word sub_80430A0+1
    .word sub_80421D8+1
    .word sub_804222C+1
    .word sub_804228C+1
.endfunc // sub_8041F68

.func
.thumb_func
sub_8041FB4:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x8042060-0x8041fbc-4] // =off_8042064
    ldrb r1, [r4,#2]
    ldrb r2, [r4,#3]
    cmp r2, #4
    bne loc_8041FCA
    mov r3, #0xf
    and r1, r3
loc_8041FCA:
    lsr r3, r2, #4
    tst r3, r3
    beq loc_8042014
    sub r3, #1
    lsl r3, r3, #2
    add r3, #0x4c 
    ldr r1, [r5,r3]
    cmp r2, #0x14
    bne loc_8041FE0
    mov r3, #0xf
    and r1, r3
loc_8041FE0:
    mov r3, #0xf
    lsl r3, r3, #8
    and r3, r1
    lsr r3, r3, #8
    add r2, r2, r3
    mov r3, #0xf
    and r3, r2
    cmp r3, #5
    beq loc_8041FFA
    cmp r3, #6
    beq loc_8041FFA
    mov r3, #0xff
    and r1, r3
loc_8041FFA:
    mov r3, #0xf
    add r7, r2, #0
    and r7, r3
    ldr r3, [pc, #0x804208c-0x8042000-4] // =dword_8042090
    lsl r6, r7, #2
    ldr r3, [r3,r6]
    sub r1, r1, r3
    cmp r7, #5
    beq loc_8042012
    cmp r7, #6
    beq loc_8042012
    b loc_8042014
loc_8042012:
    lsr r1, r1, #2
loc_8042014:
    mov r3, #0xf
    and r2, r3
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804217c-0x804202a-2] // =unk_200AFA0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl sub_8000920
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x80420b8-0x804204e-2] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {pc}
off_8042060:    .word off_8042064
off_8042064:    .word dword_873D9FC
    .word 0x86EA94C, 0x86EB354, 0x86EF71C, 0x86CF4AC, 0x873EA50
    .word 0x873EA50, 0x86EA94C, 0x87F2E38, 0x2025A04
off_804208C:    .word dword_8042090
dword_8042090:    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x90
    .word 0x90
    .word 0x0, 0x0, 0x0
off_80420B8:    .word 0x140
.endfunc // sub_8041FB4

.func
.thumb_func
sub_80420BC:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    bl getPETNaviSelect
    add r1, r0, #0
    ldr r0, [pc, #0x8042114-0x80420ca-2] // =off_8042118
    ldrb r2, [r4,#2]
    ldr r0, [r0,r2]
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x804217c-0x80420de-2] // =unk_200AFA0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl sub_8000920
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x8042120-0x8042102-2] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {pc}
off_8042114:    .word off_8042118
off_8042118:    .word dword_87F2E38
    .word dword_87F2ED0
off_8042120:    .word 0x140
.endfunc // sub_80420BC

.func
.thumb_func
sub_8042124:
    push {lr}
    pop {pc}
.endfunc // sub_8042124

.func
.thumb_func
sub_8042128:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r0, [r4,#3]
    tst r0, r0
    beq loc_8042140
    sub r0, #1
    lsl r0, r0, #2
    add r0, #0x4c 
    ldr r0, [r5,r0]
    b loc_8042148
loc_8042140:
    push {r1-r3}
    bl sub_803D06C
    pop {r1-r3}
loc_8042148:
    ldr r2, [pc, #0x804217c-0x8042148-4] // =unk_200AFA0
    ldrb r1, [r4,#3]
    lsl r1, r1, #6
    add r2, r2, r1
    ldrb r1, [r4,#2]
    bl sub_8042A14
    ldr r0, [pc, #0x804217c-0x8042156-2] // =unk_200AFA0
    ldrb r1, [r4,#3]
    lsl r1, r1, #6
    add r0, r0, r1
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x8042180-0x804216a-2] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {pc}
off_804217C:    .word unk_200AFA0
off_8042180:    .word 0x140
.endfunc // sub_8042128

.func
.thumb_func
sub_8042184:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x80421d4-0x804218c-4] // =off_8043C8C
    ldrb r1, [r4,#3]
    lsl r1, r1, #2
    ldr r1, [r0,r1]
    ldrh r0, [r1]
    ldr r2, [pc, #0x80421cc-0x8042196-2] // =unk_200AFA0
    mov r1, #1
    lsl r1, r1, #6
    add r2, r2, r1
    ldrb r1, [r4,#2]
    bl sub_8042A14
    ldr r0, [pc, #0x80421cc-0x80421a4-4] // =unk_200AFA0
    mov r1, #1
    lsl r1, r1, #6
    add r0, r0, r1
    str r0, [r5,#0x2c]
    add r4, #4
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x80421d0-0x80421b8-4] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_80421CC:    .word unk_200AFA0
off_80421D0:    .word 0x140
off_80421D4:    .word off_8043C8C
.endfunc // sub_8042184

.func
.thumb_func
sub_80421D8:
    push {r7,lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r3, [r4,#2]
    add r3, #0x4c 
    ldr r0, [r5,r3]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x8042284-0x80421ee-2] // =unk_200AFA0
    add r1, r1, r2
    push {r1}
    mov r2, #3
    bl sub_8000920
    pop {r0}
    mov r2, #0xe5
    strb r2, [r0,#3]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x8042228-0x8042216-2] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {r7,pc}
off_8042228:    .word 0x140
.endfunc // sub_80421D8

.func
.thumb_func
sub_804222C:
    push {r7,lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldrb r0, [r4,#2]
    lsl r0, r0, #3
    ldr r1, [pc, #0x8042288-0x8042238-4] // =dword_8043B0C+72
    add r0, r0, r1
    ldr r2, [r0,#4]
    push {r2}
    ldr r0, [r0]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x8042284-0x804224a-2] // =unk_200AFA0
    add r1, r1, r2
    pop {r2}
    push {r1}
    bl sub_800093C
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x8042280-0x804226e-2] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {r7,pc}
off_8042280:    .word 0x140
off_8042284:    .word unk_200AFA0
off_8042288:    .word dword_8043B0C+0x48
.endfunc // sub_804222C

.func
.thumb_func
sub_804228C:
    push {r7,lr}
    pop {r7,pc}
.endfunc // sub_804228C

.func
.thumb_func
sub_8042290:
    push {lr}
    ldr r0, [pc, #0x80422a0-0x8042292-2] // =off_80422A4
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_80422A0:    .word off_80422A4
off_80422A4:    .word sub_80422D4+1
    .word sub_80422E8+1
    .word sub_80422FC+1
    .word sub_804230C+1
    .word sub_804231C+1
    .word sub_8042328+1
    .word sub_80422D4+1
    .word sub_80422D4+1
    .word sub_8042340+1
    .word sub_8042350+1
    .word sub_8042360+1
    .word sub_8042370+1
.endfunc // sub_8042290

.func
.thumb_func
sub_80422D4:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    bl sound_play
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_80422D4

.func
.thumb_func
sub_80422E8:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    bl sub_80005D4
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_80422E8

.func
.thumb_func
sub_80422FC:
    push {lr}
    mov r0, #0x40 
    bl chatbox_clearFlags_3e
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80422FC

.func
.thumb_func
sub_804230C:
    push {lr}
    mov r0, #0x40 
    bl sub_8040920
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_804230C

.func
.thumb_func
sub_804231C:
    push {lr}
    bl sub_8000784
    add r4, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_804231C

.func
.thumb_func
sub_8042328:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_800068A
    mov r1, r10
    ldr r1, [r1,#0x3c]
    mov r0, #0x63 
    strb r0, [r1,#0xf]
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8042328

.func
.thumb_func
sub_8042340:
    push {lr}
    mov r0, #0x80
    bl chatbox_clearFlags_3e
    add r4, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
.endfunc // sub_8042340

.func
.thumb_func
sub_8042350:
    push {lr}
    mov r0, #0x80
    bl sub_8040920
    add r4, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
.endfunc // sub_8042350

.func
.thumb_func
sub_8042360:
    push {lr}
    bl sub_8036E44
    bl sub_8036E78
    add r4, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_8042360

.func
.thumb_func
sub_8042370:
    push {lr}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    mov r2, #0x1f
    push {r0}
    bl sub_80006A2
    pop {r0}
    add r4, #4
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8042370

.func
.thumb_func
chatbox_8042388:
    push {lr}
    ldr r0, [pc, #0x8042398-0x804238a-2] // =jt_804239C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8042398:    .word jt_804239C
jt_804239C:    .word chatbox_80423DC+1
    .word sub_8042418+1
    .word sub_804244C+1
    .word sub_804247C+1
    .word 0x0
    .word sub_80424BC+1
    .word sub_80424E0+1
    .word 0x0
    .word sub_804252C+1
    .word 0x0
    .word sub_8042580+1
    .word sub_80425A0+1
    .word 0x0
    .word sub_80425E0+1
    .word sub_80425C0+1
    .word chatbox_80425F0+1
.endfunc // chatbox_8042388

.func
.thumb_func
chatbox_80423DC:
    push {lr}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    add r0, r0, r4
    add r0, #3
    ldrb r2, [r0]
    ldrb r1, [r0,#1]
    lsl r1, r1, #8
    orr r2, r1
    ldrb r1, [r0,#2]
    lsl r1, r1, #0x10
    orr r2, r1
    ldrb r1, [r0,#3]
    lsl r1, r1, #0x18
    orr r2, r1
    add r0, r2, #0
    str r0, [r5,#0x4c]
    bl sub_803CFF8
    ldrb r0, [r4,#2]
    add r0, #1
    lsl r0, r0, #2
    add r4, r4, r0
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // chatbox_80423DC

.func
.thumb_func
sub_8042418:
    push {lr}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    lsl r0, r0, #1
    add r0, r0, r4
    add r0, #3
    mov r2, #1
    str r2, [r5,#0x54]
    ldrb r1, [r0,#1]
    str r1, [r5,#0x50]
    ldrb r0, [r0]
    str r0, [r5,#0x4c]
    push {r4}
    bl dword_8021AEC+2
    pop {r4}
    ldrb r0, [r4,#2]
    add r0, #1
    lsl r0, r0, #1
    add r4, r4, r0
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8042418

.func
.thumb_func
sub_804244C:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_804245C
    b loc_8042478
loc_804245C:
    push {r4,r5}
    mov r2, #0x1f
    bl sub_80AA5F4
    mov r1, #1
    bl sub_8005BC8
    mov r0, #0x2c 
    mov r1, #0x10
    bl engine_setScreeneffect
    pop {r4,r5}
    mov r0, #1
    strb r0, [r5,#4]
loc_8042478:
    mov r0, #0
    pop {pc}
.endfunc // sub_804244C

.func
.thumb_func
sub_804247C:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_804248C
    b loc_80424B6
loc_804248C:
    push {r4,r5,r7}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    lsl r1, r1, #8
    orr r0, r1
    add r7, r0, #0
    bl getBattleSettingsFromList0
    mov r1, #1
    bl sub_8005BC8
    add r0, r7, #0
    bl sub_803522E
    mov r0, #0x2c 
    mov r1, #0x10
    bl engine_setScreeneffect
    pop {r4,r5,r7}
    mov r0, #1
    strb r0, [r5,#4]
loc_80424B6:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_804247C

.func
.thumb_func
sub_80424BC:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80424CC
    b loc_80424DA
loc_80424CC:
    push {r4,r5}
    ldrb r0, [r4,#2]
    bl subsystem_launchShop
    pop {r4,r5}
    mov r0, #1
    strb r0, [r5,#4]
loc_80424DA:
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // sub_80424BC

.func
.thumb_func
sub_80424E0:
    push {lr}
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80424F0
    mov r0, #1
    bl sub_8040920
    b loc_8042526
loc_80424F0:
    ldrb r0, [r4,#2]
    cmp r0, #1
    beq loc_8042508
    bl subsystem_launchChipTrader
    bne loc_8042512
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #1
    bl sub_8040920
    b loc_8042526
loc_8042508:
    bl sub_803D0F4
    mov r1, #0xff
    cmp r0, #0xa
    bge loc_8042514
loc_8042512:
    ldrb r1, [r4,#3]
loc_8042514:
    cmp r1, #0xff
    beq loc_8042520
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8042520:
    add r4, #4
    mov r0, #1
    pop {pc}
loc_8042526:
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_80424E0

.func
.thumb_func
sub_804252C:
    push {lr}
    mov r0, #0x8a
    bl sound_play
    ldrb r7, [r4,#2]
    ldrb r0, [r4,#3]
    lsl r0, r0, #8
    orr r7, r0
    bl getPETNaviSelect
    add r6, r0, #0
    bl sub_80010D4
    add r1, r0, r7
    add r0, r6, #0
    bl sub_80010EC
    add r4, #4
    mov r0, #0
    pop {pc}
.endfunc // sub_804252C

    push {lr}
    mov r0, #0x73 
    bl sound_play
    bl sub_800151C
    ldrb r1, [r4,#2]
    and r1, r0
    add r0, r1, r4
    add r0, #3
    ldrb r0, [r0]
    str r0, [r5,#0x4c]
    mov r1, #1
    bl sub_803CD98
    ldrb r0, [r4,#2]
    add r0, #1
    add r4, r4, r0
    add r4, #3
    mov r0, #1
    pop {pc}
    .byte 0, 0
.func
.thumb_func
sub_8042580:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_8042590
    b loc_804259A
loc_8042590:
    ldrb r0, [r4,#2]
    bl subsystem_launchBBS
    mov r0, #1
    strb r0, [r5,#4]
loc_804259A:
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // sub_8042580

.func
.thumb_func
sub_80425A0:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80425B0
    b loc_80425BA
loc_80425B0:
    ldrb r0, [r4,#2]
    bl sub_8005EA2
    mov r0, #1
    strb r0, [r5,#4]
loc_80425BA:
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // sub_80425A0

.func
.thumb_func
sub_80425C0:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_80425D0
    b loc_80425DA
loc_80425D0:
    ldrb r0, [r4,#2]
    bl subsystem_launchReqBBS
    mov r0, #1
    strb r0, [r5,#4]
loc_80425DA:
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // sub_80425C0

.func
.thumb_func
sub_80425E0:
    push {lr}
    ldrb r0, [r4,#2]
    bl sub_8137718
    add r4, #3
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // sub_80425E0

.func
.thumb_func
chatbox_80425F0:
    push {lr}
    mov r0, #1
    bl sub_8040920
    ldrb r0, [r5,#4]
    cmp r0, #0
    beq loc_8042600
    b loc_804260A
loc_8042600:
    ldrb r0, [r4,#2]
    bl subsystem_launchMail
    mov r0, #1
    strb r0, [r5,#4]
loc_804260A:
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // chatbox_80425F0

.func
.thumb_func
sub_8042610:
    push {lr}
    ldr r0, [pc, #0x8042620-0x8042612-2] // =off_8042624
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8042620:    .word off_8042624
off_8042624:    .word sub_8042678+1
    .word 0
    .byte 0, 0, 0, 0
    .word sub_80426A8+1
    .word sub_80426C4+1
    .word sub_80426D4+1
    .word sub_80426E0+1
    .word 0x0
    .word sub_80426F4+1
    .word sub_804271C+1
    .word 0, 0, 0, 0
    .byte 0, 0, 0, 0
    .word sub_8042770+1
    .word sub_80427B4+1
    .word sub_80427E4+1
    .byte 0, 0, 0, 0
    .word sub_8042804+1
    .word sub_8042820+1
.endfunc // sub_8042610

.func
.thumb_func
sub_8042678:
    push {lr}
    push {r4}
    bl sub_803F798
    pop {r4}
    push {r0,r4}
    tst r0, r0
    bne loc_804268E
    mov r0, #0x74 
    bl sound_play
loc_804268E:
    pop {r0,r4}
    add r0, #2
    ldrb r1, [r4,r0]
    cmp r1, #0xff
    beq loc_80426A0
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80426A0:
    add r4, #5
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8042678

.func
.thumb_func
sub_80426A8:
    push {lr}
    ldrb r0, [r4,#2]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80426c0-0x80426ae-2] // =off_8043B00
    ldr r1, [r1,r0]
    ldrb r0, [r4,#3]
    mov lr, pc
    bx r1
    add r4, #4
.endfunc // sub_80426A8

    mov r0, #1
    pop {pc}
    .byte 0, 0
off_80426C0:    .word off_8043B00
.func
.thumb_func
sub_80426C4:
    push {lr}
    mov r0, #0xc
    mov r1, #0xc
    bl engine_setScreeneffect
    add r4, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_80426C4

.func
.thumb_func
sub_80426D4:
    push {lr}
    bl sub_813C030
    add r4, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_80426D4

.func
.thumb_func
sub_80426E0:
    push {lr}
    ldr r0, [pc, #0x80426f0-0x80426e2-2] // =0x1000
    bl sub_8040920
    add r4, #2
    mov r0, #1
    pop {pc}
    .byte 0, 0
dword_80426F0:    .word 0x1000
.endfunc // sub_80426E0

.func
.thumb_func
sub_80426F4:
    push {lr}
    mov r2, #0
    mov r0, #0
    mov r1, #0x22 
    bl sub_8013704
    cmp r0, #1
    beq loc_8042706
    mov r2, #1
loc_8042706:
    add r2, #2
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8042716
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8042716:
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_80426F4

.func
.thumb_func
sub_804271C:
    push {lr}
    mov r0, #1
    ldr r1, [pc, #0x8042758-0x8042720-4] // =off_804275C
    ldr r2, [r1]
    strh r0, [r5,r2]
    ldr r2, [r1,#0x4] // (dword_8042760 - 0x804275c)
    ldrh r0, [r5,r2]
    add r0, #1
    cmp r0, #4
    bgt loc_8042750
    strh r0, [r5,r2]
    sub r0, #1
    ldr r2, [r1,#0xc] // (off_8042768 - 0x804275c)
    add r2, r2, r0
    ldrb r3, [r5,#0xf]
    strb r3, [r5,r2]
    ldr r2, [r1,#0x10] // (off_804276C - 0x804275c)
    add r2, r2, r0
    ldrb r3, [r4,#2]
    strb r3, [r5,r2]
    mov r2, #4
    mul r0, r2
    ldr r2, [r1,#0x8] // (off_8042764 - 0x804275c)
    add r2, r2, r0
    ldr r3, [r5,#0x70]
    str r3, [r5,r2]
loc_8042750:
    add r4, #3
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_8042758:    .word off_804275C
off_804275C:    .word 0x1D4
dword_8042760:    .word 0x1D6
off_8042764:    .word 0x1D8
off_8042768:    .word 0x1E8
off_804276C:    .word 0x1EC
.endfunc // sub_804271C

.func
.thumb_func
sub_8042770:
    push {lr}
    ldrb r2, [r4,#2]
    push {r4,r5}
    push {r3}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    strb r2, [r3,#1]
    pop {r3}
    ldr r3, [pc, #0x80427ac-0x8042780-4] // =dword_80427B0
    ldrb r2, [r3,r2]
    ldr r5, [pc, #0x80427a8-0x8042784-4] // =byte_2009F40
    mov r0, #0x80
    mov r1, #0x18
    bl sub_80026E4
    mov r0, #0
    bl sprite_setAnimation
    bl sub_8002F90
    bl sprite_loadAnimationData_80026A4
.endfunc // sub_8042770

    bl anim_80026C4
    pop {r4,r5}
    add r4, #3
    mov r0, #1
    pop {pc}
off_80427A8:    .word byte_2009F40
off_80427AC:    .word dword_80427B0
dword_80427B0:    .word 0x37
.func
.thumb_func
sub_80427B4:
    push {lr}
    ldr r0, [pc, #0x8042a94-0x80427b6-2] // =sReqBBS_GUI
    ldr r1, [pc, #0x80427dc-0x80427b8-4] // =0xF
    ldr r2, [pc, #0x80427e0-0x80427ba-2] // =dword_813F380
    ldrb r1, [r0,r1]
    ldrb r1, [r2,r1]
    add r1, #1
    ldr r2, [pc, #0x80427d8-0x80427c2-2] // =0xD
    ldrb r3, [r0,r2]
    add r1, r1, r3
    cmp r1, #0x4b 
    ble loc_80427CE
    mov r1, #0x4b 
loc_80427CE:
    strb r1, [r0,r2]
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
dword_80427D8:    .word 0xD
dword_80427DC:    .word 0xF
off_80427E0:    .word dword_813F380
.endfunc // sub_80427B4

.func
.thumb_func
sub_80427E4:
    push {lr}
    ldr r0, [pc, #0x8042a98-0x80427e6-2] // =sReqBBS_GUI
    ldr r1, [pc, #0x80427fc-0x80427e8-4] // =0xF
    ldr r2, [pc, #0x8042800-0x80427ea-2] // =dword_813F380
    ldrb r1, [r0,r1]
    ldrb r1, [r2,r1]
    add r1, #1
    mov r2, #0x4c 
    str r1, [r5,r2]
    add r4, #2
    mov r0, #1
    pop {pc}
dword_80427FC:    .word 0xF
off_8042800:    .word dword_813F380
.endfunc // sub_80427E4

.func
.thumb_func
sub_8042804:
    push {lr}
    ldr r0, [pc, #0x8042818-0x8042806-2] // =sReqBBS_GUI
    ldr r1, [pc, #0x804281c-0x8042808-4] // =0xF
    ldrb r0, [r0,r1]
    bl reqBBS_81408B4
    add r4, #2
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_8042818:    .word sReqBBS_GUI
dword_804281C:    .word 0xF
.endfunc // sub_8042804

.func
.thumb_func
sub_8042820:
    push {lr}
    bl sub_809CA84
    mov r1, #0x4c 
    str r0, [r5,r1]
    add r4, #2
    mov r0, #1
    pop {pc}
.endfunc // sub_8042820

.func
.thumb_func
sub_8042830:
    push {lr}
    ldr r0, [pc, #0x8042840-0x8042832-2] // =loc_8042844
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8042840:    .word loc_8042844
.endfunc // sub_8042830

loc_8042844:
    cmp r0, #0x6d 
    lsr r4, r0, #0x20
    cmp r0, #0xb9
    lsr r4, r0, #0x20
    cmp r0, #0xc1
    lsr r4, r0, #0x20
    cmp r0, #0xe5
    lsr r4, r0, #0x20
    cmp r0, #0xed
    lsr r4, r0, #0x20
    cmp r0, #0xfd
    lsr r4, r0, #0x20
    cmp r1, #0x11
    lsr r4, r0, #0x20
    cmp r1, #0x3d 
    lsr r4, r0, #0x20
    cmp r1, #0x91
    lsr r4, r0, #0x20
    cmp r1, #0xd9
    lsr r4, r0, #0x20
    ldr r0, [pc, #0x804289c-0x804286c-4] // =dword_80428A0
    ldrb r3, [r4,#4]
    strb r3, [r5,#0x15]
    lsl r3, r3, #3
    add r0, r0, r3
    ldrb r1, [r4,#2]
    strb r1, [r5,#0x1c]
    ldr r2, [r0]
    strb r2, [r5,#0x1e]
    add r1, r1, r2
    sub r1, #2
    lsl r1, r1, #3
    strb r1, [r5,#0x1a]
    ldrb r1, [r4,#3]
    strb r1, [r5,#0x1d]
    ldr r2, [r0,#4]
    strb r2, [r5,#0x1f]
    add r1, r1, r2
    sub r1, #2
    lsl r1, r1, #3
    strb r1, [r5,#0x1b]
    add r4, #5
    mov r0, #1
    mov pc, lr
off_804289C:    .word dword_80428A0
dword_80428A0:    .word 0x1E, 0x8, 0x14, 0x8, 0x1E, 0x9, 0x20013402, 0x46F7, 0x762978A1
    .word 0x76A931AF, 0x766978E1, 0x7923220C, 0x1889435A, 0x7E2876E9, 0x31941C29, 0x34057008, 0x46F72001, 0x20013402
    .word 0x46F7, 0x76A978A1, 0x76E978E1, 0x20013404, 0x46F7, 0x208478A1, 0x78E15029, 0x50292088, 0x20013404
    .word 0x46F7, 0x200B78A1, 0x22F04348, 0x8521A12, 0x1812762A, 0x78E176AA, 0x4348200E, 0x1A1222A0, 0x766A0852
    .word 0x76EA1812, 0x20013404, 0x46F7, 0x26F0B5C0, 0x78A127B0, 0x200B3901, 0x21084348, 0x43512202, 0x1C321840
    .word 0x2002B401, 0xFFEEF7FD, 0x1C3AD000, 0x1A12BC01, 0x20020852, 0xFFE6F7FD, 0x7E29D101, 0x7E291A52, 0x30941C28
    .word 0x70031853, 0x520852, 0x6FE90092, 0x67E91889, 0x20013403, 0xBDC0, 0x26F0B5C0, 0x78A127B0, 0x4348200B
    .word 0x1C323008, 0x2002B401, 0xFFC8F7FD, 0x1C3AD000, 0x1A12BC01, 0x20020852, 0xFFC0F7FD, 0x7E29D101, 0x7E291A52
    .word 0x30941C28, 0x70031853, 0x6FE90092, 0x67E91889, 0x20013403, 0xBDC0, 0x2779B5C0, 0x78A13733, 0x200B3901
    .word 0x21084348, 0x43512202, 0x1C3A1840, 0x8521A12, 0x7E294690, 0x30941C28, 0x70031853, 0x520852, 0x6FE90092
    .word 0x67E91889, 0x20013403, 0xBDC0
.func
.thumb_func
sub_8042A14:
    push {r4,r5,lr}
    push {r1,r2}
    bl sub_8000C00
    mov r8, r0
    bl sub_8000C5C
    pop {r1,r2}
    mov r6, #0x40 
    tst r1, r6
    bne loc_8042A2E
    mov r6, #0
    b loc_8042A30
loc_8042A2E:
    mov r6, #1
loc_8042A30:
    mov r3, #0xf
    and r3, r1
    cmp r3, #0
    bne loc_8042A3A
    add r3, r0, #0
loc_8042A3A:
    sub r3, r3, r0
    mov r4, #0x80
    tst r1, r4
    bne loc_8042A64
    sub r4, r0, #1
    lsl r4, r4, #2
    mov r0, #0xf
loc_8042A48:
    mov r7, r8
    lsr r7, r4
    and r7, r0
    add r7, #1
    strb r7, [r2]
    add r2, #1
    sub r4, #4
    bge loc_8042A48
loc_8042A58:
    cmp r3, #0
    ble loc_8042A86
    sub r3, #1
    strb r6, [r2]
    add r2, #1
    b loc_8042A58
loc_8042A64:
    sub r4, r0, #1
    lsl r4, r4, #2
loc_8042A68:
    cmp r3, #0
    ble loc_8042A74
    sub r3, #1
    strb r6, [r2]
    add r2, #1
    b loc_8042A68
loc_8042A74:
    mov r0, #0xf
loc_8042A76:
    mov r7, r8
    lsr r7, r4
    and r7, r0
    add r7, #1
    strb r7, [r2]
    add r2, #1
    sub r4, #4
    bge loc_8042A76
loc_8042A86:
    mov r7, #0xe6
    strb r7, [r2]
    mov r7, #0
    strb r7, [r2,#1]
    mov r7, #0
    strb r7, [r2,#2]
    pop {r4,r5,pc}
off_8042A94:    .word sReqBBS_GUI
off_8042A98:    .word sReqBBS_GUI
.endfunc // sub_8042A14

.func
.thumb_func
sub_8042A9C:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0xa
    cmp r0, #0
    beq loc_8042AB0
    cmp r0, #1
    beq loc_8042AD6
    cmp r0, #2
    beq loc_8042AE8
    b loc_8042B08
loc_8042AB0:
    push {r4,r5}
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_8042ABA
    ldr r0, [r5,#0x54]
loc_8042ABA:
    ldrb r1, [r4,#3]
    bl sub_803CD98
    pop {r4,r5}
    cmp r0, #1
    beq loc_8042AD0
    push {r0}
    mov r0, #0x73 
    bl sound_play
    pop {r0}
loc_8042AD0:
    add r0, #4
    ldrb r1, [r4,r0]
    b loc_8042B26
loc_8042AD6:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_803CE08
    pop {r4,r5}
    add r0, #4
    ldrb r1, [r4,r0]
    b loc_8042B26
loc_8042AE8:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    bl sub_803CDF8
    pop {r4,r5}
    cmp r0, #1
    beq loc_8042B02
    push {r0}
    mov r0, #0x73 
    bl sound_play
    pop {r0}
loc_8042B02:
    add r4, #4
    mov r0, #1
    pop {pc}
loc_8042B08:
    push {r4,r5}
    ldrb r0, [r4,#2]
    bl sub_803CE28
    pop {r4,r5}
    ldrb r1, [r4,#3]
    mov r2, #0
    cmp r0, r1
    beq loc_8042B22
    add r2, #1
    cmp r0, r1
    bgt loc_8042B22
    add r2, #1
loc_8042B22:
    add r2, #4
    ldrb r1, [r4,r2]
loc_8042B26:
    cmp r1, #0xff
    beq loc_8042B32
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8042B32:
    add r4, #7
    mov r0, #1
    pop {pc}
.endfunc // sub_8042A9C

.func
.thumb_func
sub_8042B38:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0xe
    cmp r0, #0
    beq loc_8042B4C
    cmp r0, #1
    beq loc_8042B82
    cmp r0, #2
    beq loc_8042BA4
    b loc_8042BD0
loc_8042B4C:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    ldr r1, [pc, #0x8042c14-0x8042b62-2] // =0xFFFFFFFF
    cmp r0, r1
    bne loc_8042B6A
    ldr r0, [r5,#0x54]
loc_8042B6A:
    str r0, [r5,#0x54]
    bl sub_803CFF8
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl sound_play
    pop {r0}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8042C00
loc_8042B82:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_803D040
    pop {r4,r5}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8042C00
loc_8042BA4:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_803D02C
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl sound_play
    pop {r0}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_8042BD0:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    push {r0,r2,r3}
    bl sub_803D06C
    add r1, r0, #0
    pop {r0,r2,r3}
    mov r2, #0
    cmp r1, r0
    beq loc_8042BFC
    add r2, #1
    cmp r1, r0
    bgt loc_8042BFC
    add r2, #1
loc_8042BFC:
    add r2, #6
    ldrb r1, [r4,r2]
loc_8042C00:
    cmp r1, #0xff
    beq loc_8042C0C
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8042C0C:
    add r4, #9
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
dword_8042C14:    .word 0xFFFFFFFF
.endfunc // sub_8042B38

.func
.thumb_func
sub_8042C18:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0x12
    cmp r0, #0
    beq loc_8042C2C
    cmp r0, #1
    beq loc_8042C62
    cmp r0, #2
    beq loc_8042C84
    b loc_8042CB0
loc_8042C2C:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    ldr r1, [pc, #0x8042cf4-0x8042c42-2] // =0xFFFFFFFF
    cmp r0, r1
    bne loc_8042C4A
    ldr r0, [r5,#0x54]
loc_8042C4A:
    str r0, [r5,#0x54]
    bl sub_803D080
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl sound_play
    pop {r0}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8042CE0
loc_8042C62:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_803D0C8
    pop {r4,r5}
    add r0, #6
    ldrb r1, [r4,r0]
    b loc_8042CE0
loc_8042C84:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    bl sub_803D0B4
    pop {r4,r5}
    push {r0}
    mov r0, #0x73 
    bl sound_play
    pop {r0}
    add r4, #6
    mov r0, #1
    pop {pc}
loc_8042CB0:
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    ldrb r2, [r4,#4]
    ldrb r3, [r4,#5]
    lsl r1, r1, #8
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    push {r0,r2,r3}
    bl sub_803D0F4
    add r1, r0, #0
    pop {r0,r2,r3}
    mov r2, #0
    cmp r1, r0
    beq loc_8042CDC
    add r2, #1
    cmp r1, r0
    bgt loc_8042CDC
    add r2, #1
loc_8042CDC:
    add r2, #6
    ldrb r1, [r4,r2]
loc_8042CE0:
    cmp r1, #0xff
    beq loc_8042CEC
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8042CEC:
    add r4, #9
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
dword_8042CF4:    .word 0xFFFFFFFF
.endfunc // sub_8042C18

.func
.thumb_func
chatbox_ctrl_8042CF8:
    push {lr}
    ldr r0, [pc, #0x8042d08-0x8042cfa-2] // =jt_8042D0C
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8042D08:    .word jt_8042D0C
jt_8042D0C:    .word loc_804312C+1
    .word sub_8043164+1
    .word sub_80432C8+1
    .word sub_804330C+1
    .word sub_80436B0+1
    .word sub_80436E8+1
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word sub_80432C8+1
    .word sub_8042F84+1
    .word 0x0
    .word sub_80434E0+1
    .word sub_80438B4+1
    .word chatbox_80438EC+1
    .word 0x304C78A0
    .word 0x54292100
    .word 0x20013403
    .word 0x46F7
.endfunc // chatbox_ctrl_8042CF8

.func
.thumb_func
sub_8042D68:
    push {lr}
    mov r0, #1
    bl sub_8040920
    bl sub_8040DBC
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_8042D80
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8042DB6
loc_8042D80:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8042D96
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0x10
    bl sub_8040920
    b loc_8042DB6
loc_8042D96:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8042DBA
    mov r1, #8
    tst r0, r1
    beq loc_8042DB6
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    beq loc_8042DB6
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #8
    strb r0, [r5,#0x13]
loc_8042DB6:
    mov r0, #0
    pop {pc}
loc_8042DBA:
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    bne loc_8042DB6
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #7
    bl sub_8045F2C
    ldrb r0, [r5,#0x13]
    bl sub_8045F1C
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8045F1C
    add r4, #2
    mov r0, #0
    pop {pc}
.endfunc // sub_8042D68

    push {lr}
    mov r0, #1
    bl sub_8040920
    bl sub_8040DBC
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_8042E08
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8042E62
loc_8042E08:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8042E1E
    mov r0, #0
    strb r0, [r5,#0x13]
    mov r0, #1
    strb r0, [r5,#4]
    mov r0, #0x10
    bl sub_8040920
    b loc_8042E62
loc_8042E1E:
    ldrb r1, [r4,#1]
    cmp r1, #5
    beq loc_8042E38
    ldrh r0, [r5,#0x26]
    mov r1, #2
    tst r0, r1
    beq loc_8042E38
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r2, #4
    b loc_8042EB2
loc_8042E38:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8042E66
    mov r1, #8
    tst r0, r1
    beq loc_8042E62
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    beq loc_8042E62
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #0x80
    ldr r0, [r5,r0]
    sub r0, #1
    strb r0, [r5,#0x13]
loc_8042E62:
    mov r0, #0
    pop {pc}
loc_8042E66:
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    bne loc_8042E62
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8045F1C
    mov r2, #1
    ldrb r1, [r4,#1]
    cmp r1, #3
    bne loc_8042E9A
    bl sub_8042EC8
    tst r0, r0
    beq loc_8042EB0
    b loc_8042EA2
loc_8042E9A:
    bl sub_8042F10
    tst r0, r0
    beq loc_8042EB0
loc_8042EA2:
    push {r0-r3}
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
    pop {r0-r3}
    mov r2, #0
loc_8042EB0:
    add r2, #2
loc_8042EB2:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8042EC0
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8042EC0:
    add r4, #5
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_8042EC8:
    push {r1-r7,lr}
    mov r4, #0
    ldr r0, [r5,#0x4c]
    ldr r1, [r5,#0x54]
    mov r2, #4
    add r4, r4, r0
    ldr r0, [r5,#0x50]
    ldr r1, [r5,#0x58]
    mov r2, #3
    add r4, r4, r0
    str r4, [r5,#0x4c]
    mov r0, #0
    cmp r4, #7
    bne locret_8042EE6
    mov r0, #1
locret_8042EE6:
    pop {r1-r7,pc}
.endfunc // sub_8042EC8

.func
.thumb_func
sub_8042EE8:
    push {r1-r7,lr}
    lsl r0, r0, #3
    ldr r2, [pc, #0x8042f0c-0x8042eec-4] // =dword_8045CCC
    add r2, r2, r0
    mov r0, #0x4c 
    add r0, r0, r5
loc_8042EF4:
    ldrb r3, [r2]
    ldrb r4, [r0]
    cmp r3, r4
    bne loc_8042F08
    add r0, #1
    add r2, #1
    sub r1, #1
    bgt loc_8042EF4
    mov r0, #1
    b locret_8042F0A
loc_8042F08:
    mov r0, #0
locret_8042F0A:
    pop {r1-r7,pc}
off_8042F0C:    .word dword_8045CCC
.endfunc // sub_8042EE8

.func
.thumb_func
sub_8042F10:
    push {r2,lr}
    ldr r0, [r5,#0x4c]
    bl sub_8042F34
    add r3, r0, #0
    mov r0, #1
    ldr r2, [pc, #0x8042f30-0x8042f1c-4] // =dword_8044264
loc_8042F1E:
    ldr r1, [r2]
    tst r1, r1
    beq locret_8042F2E
    cmp r3, r1
    beq loc_8042F2C
    add r2, #4
    b loc_8042F1E
loc_8042F2C:
    mov r0, #0
locret_8042F2E:
    pop {r2,pc}
off_8042F30:    .word dword_8044264
.endfunc // sub_8042F10

.func
.thumb_func
sub_8042F34:
    push {r2}
    add r1, r0, #0
    mov r3, #0xff
    mov r2, #0
loc_8042F3C:
    and r1, r3
    lsr r1, r2
    tst r1, r1
    beq loc_8042F80
    cmp r1, #0x5e 
    bge loc_8042F4C
    add r1, #0x2f 
    b loc_8042F70
loc_8042F4C:
    cmp r1, #0x8f
    bne loc_8042F54
    mov r1, #0x2f 
    b loc_8042F70
loc_8042F54:
    cmp r1, #0x8a
    bne loc_8042F5C
    mov r1, #0xa5
    b loc_8042F70
loc_8042F5C:
    cmp r1, #0x89
    bne loc_8042F64
    mov r1, #0x2e 
    b loc_8042F70
loc_8042F64:
    cmp r1, #0x79 
    bne loc_8042F6C
    mov r1, #0x2d 
    b loc_8042F70
loc_8042F6C:
    sub r1, #0x1d
    b loc_8042F70
loc_8042F70:
    lsl r1, r2
    bic r0, r3
    orr r0, r1
    add r2, #8
    mov r3, #0xff
    lsl r3, r2
    add r1, r0, #0
    b loc_8042F3C
loc_8042F80:
    pop {r2}
    mov pc, lr
.endfunc // sub_8042F34

.func
.thumb_func
sub_8042F84:
    push {lr}
    pop {pc}
.endfunc // sub_8042F84

    push {r4-r6,lr}
    mov r5, r10
    ldr r5, [r5,#0x2c]
    mov r2, #0x1c
    mov r3, #0xf
    mov r4, #0
    mov r6, #0
loc_8042F96:
    add r1, r0, #0
    lsr r1, r2
    and r1, r3
    lsl r1, r4
    orr r6, r1
    add r4, #8
    sub r2, #4
    cmp r2, #0x10
    bge loc_8042F96
    str r6, [r5,#0x54]
    mov r4, #0
    mov r6, #0
loc_8042FAE:
    add r1, r0, #0
    lsr r1, r2
    and r1, r3
    lsl r1, r4
    orr r6, r1
    add r4, #8
    sub r2, #4
    bge loc_8042FAE
    str r6, [r5,#0x58]
    pop {r4-r6,pc}
    push {lr}
    ldr r0, [pc, #0x8042fd0-0x8042fc4-4] // =0x67625E6F
    str r0, [r5,#0x54]
    ldr r0, [pc, #0x8042fd4-0x8042fc8-4] // =0x687261
    str r0, [r5,#0x58]
    pop {pc}
    .byte 0, 0
dword_8042FD0:    .word 0x67625E6F
dword_8042FD4:    .word 0x687261
.func
.thumb_func
sub_8042FD8:
    push {lr}
    ldr r0, [pc, #0x8042fe8-0x8042fda-2] // =off_8042FEC
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8042FE8:    .word off_8042FEC
off_8042FEC:    .word sub_8042FF4+1
    .word sub_8043008+1
.endfunc // sub_8042FD8

.func
.thumb_func
sub_8042FF4:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x10]
    add r2, #8
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#3]
    strb r1, [r2,r0]
    add r4, #4
    mov r0, #1
    pop {pc}
.endfunc // sub_8042FF4

.func
.thumb_func
sub_8043008:
    ldr r0, [pc, #0x804301c-0x8043008-4] // =off_8043C64
    ldrb r1, [r4,#2]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r1, [r4,#3]
    strb r1, [r0]
    add r4, #4
    mov r0, #1
    mov pc, lr
    .balign 4, 0x00
off_804301C:    .word off_8043C64
.endfunc // sub_8043008

.func
.thumb_func
chatbox_8043020:
    push {lr}
    ldr r0, [pc, #0x8043030-0x8043022-2] // =off_8043034
    ldrb r1, [r4,#1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8043030:    .word off_8043034
off_8043034:    .word sub_80430A0+1
    .word sub_80430A0+1
.endfunc // chatbox_8043020

.func
.thumb_func
dead_804303C:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x8043084-0x8043044-4] // =off_8043088
    ldrb r2, [r4,#2]
    ldrb r1, [r4,#1]
    tst r1, r1
    beq loc_8043050
    add r2, #2
loc_8043050:
    mov r1, #0
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x8043128-0x804305e-2] // =unk_200AFA0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl sub_8000920
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    add r4, r0, #0
    mov r0, #1
    pop {pc}
    .balign 4, 0x00
off_8043084:    .word off_8043088
off_8043088:    .word unk_20018F0
    .word unk_200194C
    .word unk_20019A8
    .word unk_2001A04
    .word unk_2001A60
    .word unk_2001ABC
.endfunc // dead_804303C

.func
.thumb_func
sub_80430A0:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #1
    strb r0, [r5,#5]
    ldr r0, [pc, #0x80430f8-0x80430a8-4] // =dword_80430FC
    ldrb r2, [r4,#2]
    ldrb r1, [r4,#1]
    tst r1, r1
    beq loc_80430B4
    add r2, #2
loc_80430B4:
    mov r1, #0
    lsl r2, r2, #2
    ldr r0, [r0,r2]
    add r7, r5, #0
    add r7, #0x64 
    ldrh r2, [r7]
    lsl r2, r2, #6
    ldr r1, [pc, #0x8043128-0x80430c2-2] // =unk_200AFA0
    add r1, r1, r2
    push {r1}
    mov r2, #0x40 
    bl sub_8000920
    pop {r0}
    add r7, r5, #0
    add r7, #0x64 
    ldrh r1, [r7]
    add r1, #1
    strh r1, [r7]
    str r0, [r5,#0x2c]
    add r4, #3
    str r4, [r5,#0x44]
    push {r0}
    ldrb r0, [r5,#5]
    sub r0, #1
    ldr r1, [pc, #0x8043124-0x80430e6-2] // =0x140
    mov r2, #4
    mul r0, r2
    add r1, r1, r0
    str r4, [r5,r1]
    pop {r0}
    add r4, r0, #0
    mov r0, #1
    pop {pc}
off_80430F8:    .word dword_80430FC
dword_80430FC:    .word 0x2001186, 0x200119E, 0x20007D6, 0x200083A, 0x20018F4
    .word 0x2001950, 0x20019AC, 0x2001A08, 0x2001A64, 0x2001AC0
off_8043124:    .word 0x140
off_8043128:    .word unk_200AFA0
.endfunc // sub_80430A0

loc_804312C:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    mov r1, #0
    strb r1, [r5,r0]
    ldr r0, [pc, #0x804315c-0x8043134-4] // =0x1CC
    ldr r1, [r5,r0]
    mov r2, #0xc
    mul r2, r1
    add r1, #1
    str r1, [r5,r0]
    ldr r1, [pc, #0x8043160-0x8043140-4] // =0x154
    add r2, r2, r1
    ldrb r0, [r4,#2]
    strb r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x70]
    str r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x7c]
    str r0, [r5,r2]
    add r4, #3
    mov r0, #1
    mov pc, lr
    .balign 4, 0x00
off_804315C:    .word 0x1CC
off_8043160:    .word 0x154
.func
.thumb_func
sub_8043164:
    push {lr}
    mov r0, #0x11
    bl sub_8040920
    bl sub_8040DBC
    ldrb r0, [r5,#0x13]
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r7, r1, r2
    add r7, #4
    ldrh r0, [r5,r7]
    add r7, #4
    push {r0}
    ldr r1, [r5,r7]
    str r1, [r5,#0x70]
    ldrb r3, [r5,#0xf]
    sub r3, #2
    strb r3, [r5,#0xf]
    bl sub_80409E0
    ldrb r3, [r5,#0xf]
    add r3, #2
    strb r3, [r5,#0xf]
    pop {r0}
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x80432bc-0x804319a-2] // =word_80432C0
    mov r3, #0xc
loc_804319E:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_80431AE
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_80431CA
    b loc_804319E
loc_80431AE:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24]
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13]
    strb r0, [r5,#0x13]
    cmp r0, r1
    beq loc_80431CA
    mov r2, #0x6c 
    ldrh r0, [r5,r2]
    bl sound_play
loc_80431CA:
    ldrb r0, [r5,#0x13]
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    beq loc_8043208
    add r0, #0x4c 
    ldrb r3, [r5,r0]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    bne loc_80431EA
    mov r1, #0x40 
    tst r0, r1
    bne loc_80431F2
    b loc_8043208
loc_80431EA:
    sub r3, #1
    bge loc_80431FA
    mov r3, #9
    b loc_80431FA
loc_80431F2:
    add r3, #1
    cmp r3, #9
    ble loc_80431FA
    mov r3, #0
loc_80431FA:
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    ldrb r0, [r5,#0x13]
    add r0, #0x4c 
    strb r3, [r5,r0]
loc_8043208:
    ldr r0, [pc, #0x80432b8-0x8043208-4] // =0x154
    add r0, r0, r5
    mov r2, #0
loc_804320E:
    ldrb r1, [r0]
    add r1, #0x4c 
    ldrb r1, [r5,r1]
    add r1, #1
    push {r0-r7}
    ldr r6, [r0,#4]
    lsl r6, r6, #2
    mov r3, #2
    lsl r3, r3, #2
    ldr r0, [pc, #0x80432ac-0x8043220-4] // =dword_803FCE4
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x80432b0-0x8043228-4] // =loc_3007038+1
    mov lr, pc
    bx r3
.endfunc // sub_8043164

    pop {r0-r7}
    add r0, #0xc
    add r2, #1
    cmp r2, #8
    blt loc_804320E
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8043244
    mov r0, #1
    strb r0, [r5,#4]
    b loc_8043272
loc_8043244:
    ldrb r0, [r5,#0x11]
    tst r0, r0
    beq loc_8043252
    mov r0, #0
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
loc_8043252:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8043276
    mov r1, #8
    tst r0, r1
    beq loc_8043272
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    beq loc_8043272
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #8
    strb r0, [r5,#0x13]
loc_8043272:
    mov r0, #0
    pop {pc}
loc_8043276:
    ldrb r0, [r5,#0x13]
    cmp r0, #8
    bne loc_8043272
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #7
    bl sub_8045F2C
    ldrb r0, [r5,#0x13]
    bl sub_8045F1C
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8045F1C
    add r4, #2
    mov r0, #0
    pop {pc}
off_80432AC:    .word dword_803FCE4
off_80432B0:    .word loc_3007038+1
    .word 0x1CC
off_80432B8:    .word 0x154
off_80432BC:    .word word_80432C0
word_80432C0:    .hword 0x40
    .word 0x200080
    .hword 0x10
.func
.thumb_func
sub_80432C8:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    mov r1, #0
    ldrb r2, [r4,#1]
    cmp r2, #2
    beq loc_80432DC
    mov r1, #1
    cmp r2, #4
    beq loc_80432DC
    mov r1, #0
loc_80432DC:
    strb r1, [r5,r0]
    ldr r0, [pc, #0x8043304-0x80432de-2] // =0x1CC
    ldr r1, [r5,r0]
    mov r2, #0xc
    mul r2, r1
    add r1, #1
    str r1, [r5,r0]
    ldr r1, [pc, #0x8043308-0x80432ea-2] // =0x154
    add r2, r2, r1
    ldrb r0, [r4,#2]
    strb r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x70]
    str r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x7c]
    str r0, [r5,r2]
    add r4, #3
    mov r0, #1
    mov pc, lr
off_8043304:    .word 0x1CC
off_8043308:    .word 0x154
.endfunc // sub_80432C8

.func
.thumb_func
sub_804330C:
    push {lr}
    mov r0, #0x11
    bl sub_8040920
    bl sub_8040DBC
    ldrb r0, [r5,#0x13]
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r7, r1, r2
    add r7, #4
    ldrh r0, [r5,r7]
    add r7, #4
    push {r0}
    ldr r1, [r5,r7]
    str r1, [r5,#0x70]
    ldrb r3, [r5,#0xf]
    sub r3, #2
    strb r3, [r5,#0xf]
    bl sub_80409E0
    ldrb r3, [r5,#0xf]
    add r3, #2
    strb r3, [r5,#0xf]
    pop {r0}
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x80434d4-0x8043342-2] // =dword_80434D8
    mov r3, #0xc
loc_8043346:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_8043356
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_8043372
    b loc_8043346
loc_8043356:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24]
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13]
    strb r0, [r5,#0x13]
    cmp r0, r1
    beq loc_8043372
    mov r2, #0x6c 
    ldrh r0, [r5,r2]
    bl sound_play
loc_8043372:
    mov r0, #0x80
    ldrb r0, [r5,r0]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_80433BA
    ldrb r2, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    cmp r2, r1
    beq loc_80433BA
    add r2, #0x4c 
    ldrb r3, [r5,r2]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    bne loc_80433A0
    mov r1, #0x40 
    tst r0, r1
    bne loc_80433A8
    b loc_80433BA
loc_80433A0:
    sub r3, #1
    bge loc_80433B0
    mov r3, #9
    b loc_80433B0
loc_80433A8:
    add r3, #1
    cmp r3, #9
    ble loc_80433B0
    mov r3, #0
loc_80433B0:
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    strb r3, [r5,r2]
loc_80433BA:
    ldr r0, [pc, #0x80434d0-0x80433ba-2] // =0x154
    add r0, r0, r5
    mov r2, #0x80
    ldrb r2, [r5,r2]
    sub r2, #2
loc_80433C4:
    ldrb r1, [r0]
    add r1, #0x4c 
    ldrb r1, [r5,r1]
    add r1, #1
    push {r0-r7}
    ldr r6, [r0,#4]
    lsl r6, r6, #2
    mov r3, #2
    lsl r3, r3, #2
    ldr r0, [pc, #0x80434c4-0x80433d6-2] // =dword_803FCE4
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x80434c8-0x80433de-2] // =loc_3007038+1
    mov lr, pc
    bx r3
    pop {r0-r7}
    add r0, #0xc
    sub r2, #1
    bge loc_80433C4
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_80433F8
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8043456
loc_80433F8:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_8043404
    mov r0, #1
    strb r0, [r5,#4]
    b loc_8043456
loc_8043404:
    ldrb r0, [r5,#0x11]
    tst r0, r0
    beq loc_8043412
    mov r0, #0
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
loc_8043412:
    ldrb r1, [r4,#1]
    cmp r1, #5
    beq loc_804342C
    ldrh r0, [r5,#0x26]
    mov r1, #2
    tst r0, r1
    beq loc_804342C
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r2, #4
    b loc_80434A6
loc_804342C:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_804345A
    mov r1, #8
    tst r0, r1
    beq loc_8043456
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    beq loc_8043456
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #0x80
    ldr r0, [r5,r0]
    sub r0, #1
    strb r0, [r5,#0x13]
loc_8043456:
    mov r0, #0
    pop {pc}
loc_804345A:
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    bne loc_8043456
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8045F1C
    mov r2, #1
    ldrb r1, [r4,#1]
    cmp r1, #3
    bne loc_804348E
    bl sub_8042EC8
    tst r0, r0
    beq loc_80434A4
    b loc_8043496
loc_804348E:
    bl sub_8042F10
    tst r0, r0
    beq loc_80434A4
loc_8043496:
    push {r0-r3}
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
    pop {r0-r3}
    mov r2, #0
loc_80434A4:
    add r2, #2
loc_80434A6:
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #4
    str r0, [r5,#0x78]
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_80434BE
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_80434BE:
    add r4, #5
    mov r0, #0
    pop {pc}
off_80434C4:    .word dword_803FCE4
off_80434C8:    .word loc_3007038+1
    .word 0x1CC
off_80434D0:    .word 0x154
off_80434D4:    .word dword_80434D8
dword_80434D8:    .word 0x800040
    .word 0x100020
.endfunc // sub_804330C

.func
.thumb_func
sub_80434E0:
    push {lr}
    mov r0, #0x11
    bl sub_8040920
    mov r0, #0x80
    ldrb r0, [r5,r0]
    bl sub_8040DDC
    ldrb r0, [r5,#0x13]
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r7, r1, r2
    add r7, #4
    ldrh r0, [r5,r7]
    add r7, #4
    push {r0}
    ldr r1, [r5,r7]
    str r1, [r5,#0x70]
    ldrb r3, [r5,#0xf]
    sub r3, #2
    strb r3, [r5,#0xf]
    bl sub_80409E0
    ldrb r3, [r5,#0xf]
    add r3, #2
    strb r3, [r5,#0xf]
    pop {r0}
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x80436a4-0x804351a-2] // =word_80436A8
    mov r3, #0xc
loc_804351E:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_804352E
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_804354A
    b loc_804351E
loc_804352E:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24]
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13]
    strb r0, [r5,#0x13]
    cmp r0, r1
    beq loc_804354A
    mov r2, #0x6c 
    ldrh r0, [r5,r2]
    bl sound_play
loc_804354A:
    mov r0, #0x80
    ldrb r0, [r5,r0]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_8043592
    ldrb r2, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    cmp r2, r1
    beq loc_8043592
    add r2, #0x4c 
    ldrb r3, [r5,r2]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    bne loc_8043578
    mov r1, #0x40 
    tst r0, r1
    bne loc_8043580
    b loc_8043592
loc_8043578:
    sub r3, #1
    bge loc_8043588
    mov r3, #9
    b loc_8043588
loc_8043580:
    add r3, #1
    cmp r3, #9
    ble loc_8043588
    mov r3, #0
loc_8043588:
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    strb r3, [r5,r2]
loc_8043592:
    ldr r0, [pc, #0x80436a0-0x8043592-2] // =0x154
    add r0, r0, r5
    mov r2, #0x80
    ldrb r2, [r5,r2]
    sub r2, #2
loc_804359C:
    ldrb r1, [r0]
    add r1, #0x4c 
    ldrb r1, [r5,r1]
    add r1, #1
    push {r0-r7}
    ldr r6, [r0,#4]
    lsl r6, r6, #2
    mov r3, #2
    lsl r3, r3, #2
    ldr r0, [pc, #0x8043694-0x80435ae-2] // =dword_803FCE4
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x8043698-0x80435b6-2] // =loc_3007038+1
    mov lr, pc
    bx r3
.endfunc // sub_80434E0

    pop {r0-r7}
    add r0, #0xc
    sub r2, #1
    bge loc_804359C
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_80435D0
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_8043628
loc_80435D0:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_80435DC
    mov r0, #1
    strb r0, [r5,#4]
    b loc_8043628
loc_80435DC:
    ldrb r0, [r5,#0x11]
    tst r0, r0
    beq loc_80435EA
    mov r0, #0
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
loc_80435EA:
    ldrh r0, [r5,#0x26]
    mov r1, #2
    tst r0, r1
    beq loc_80435FE
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r2, #4
    b loc_8043674
loc_80435FE:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_804362C
    mov r1, #8
    tst r0, r1
    beq loc_8043628
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    beq loc_8043628
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #0x80
    ldr r0, [r5,r0]
    sub r0, #1
    strb r0, [r5,#0x13]
loc_8043628:
    mov r0, #0
    pop {pc}
loc_804362C:
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    bne loc_8043628
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8045F1C
    mov r2, #1
    ldrb r0, [r4,#5]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    bl sub_8042EE8
    tst r0, r0
    beq loc_8043672
    b loc_8043664
    beq loc_8043672
loc_8043664:
    push {r0-r3}
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
    pop {r0-r3}
    mov r2, #0
loc_8043672:
    add r2, #2
loc_8043674:
    mov r0, #0x11
    bl chatbox_clearFlags_3e
    mov r0, #4
    str r0, [r5,#0x78]
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804368C
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_804368C:
    add r4, #5
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8043694:    .word dword_803FCE4
off_8043698:    .word loc_3007038+1
    .word 0x1CC
off_80436A0:    .word 0x154
off_80436A4:    .word word_80436A8
word_80436A8:    .hword 0x40
    .word 0x200080
    .hword 0x10
.func
.thumb_func
sub_80436B0:
    ldrb r0, [r4,#2]
    lsl r0, r0, #1
    mov r1, #0x5e 
    add r0, #0x4c 
    strh r1, [r5,r0]
    ldr r0, [pc, #0x80436e0-0x80436ba-2] // =0x1CC
    ldr r1, [r5,r0]
    mov r2, #0xc
    mul r2, r1
    add r1, #1
    str r1, [r5,r0]
    ldr r1, [pc, #0x80436e4-0x80436c6-2] // =0x154
    add r2, r2, r1
    ldrb r0, [r4,#2]
    strb r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x70]
    str r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x7c]
    str r0, [r5,r2]
    add r4, #3
    mov r0, #1
    mov pc, lr
off_80436E0:    .word 0x1CC
off_80436E4:    .word 0x154
.endfunc // sub_80436B0

.func
.thumb_func
sub_80436E8:
    push {lr}
    mov r0, #0x11
    bl sub_8040920
    mov r0, #1
    strb r0, [r5,#2]
    mov r1, #0x3d 
    strb r0, [r5,r1]
    ldrb r0, [r5,#0x13]
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r7, r1, r2
    add r7, #4
    ldrh r0, [r5,r7]
    add r7, #4
    push {r7}
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x80438a4-0x804370c-4] // =0x80438A8
    mov r3, #0xc
loc_8043710:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_8043720
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_804373E
    b loc_8043710
loc_8043720:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24]
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13]
    strb r0, [r5,#0x13]
    add r7, r0, #0
    cmp r0, r1
    beq loc_804373E
    mov r2, #0x6c 
    ldrh r0, [r5,r2]
    bl sound_play
loc_804373E:
    pop {r7}
    ldr r1, [r5,r7]
    str r1, [r5,#0x70]
    ldrb r3, [r5,#0xf]
    sub r3, #1
    strb r3, [r5,#0xf]
    bl sub_80409E0
    ldrb r3, [r5,#0xf]
    add r3, #1
    strb r3, [r5,#0xf]
    mov r0, #0x80
    ldrb r0, [r5,r0]
    sub r0, #1
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_804379E
    mov r2, #0x80
    ldr r2, [r5,r2]
    sub r2, #1
    cmp r1, r2
    beq loc_804379E
    lsl r1, r1, #1
    add r1, #0x4c 
    ldrh r3, [r5,r1]
    add r2, r1, #0
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    bne loc_8043786
    mov r1, #0x40 
    tst r0, r1
    bne loc_8043792
    b loc_804379C
loc_8043786:
    add r3, #1
    ldr r0, [pc, #0x80438b0-0x8043788-4] // =0x1B9
    cmp r3, r0
    ble loc_804379C
    mov r3, #1
    b loc_804379C
loc_8043792:
    sub r3, #1
    cmp r3, #1
    bge loc_804379C
    ldr r3, [pc, #0x80438b0-0x8043798-4] // =0x1B9
    b loc_804379C
loc_804379C:
    strh r3, [r5,r2]
loc_804379E:
    ldr r0, [pc, #0x80438a0-0x804379e-2] // =0x154
    add r0, r0, r5
    mov r2, #0x80
    ldrb r2, [r5,r2]
    sub r2, #2
loc_80437A8:
    ldrb r1, [r0]
    lsl r1, r1, #1
    add r1, #0x4c 
    ldrh r1, [r5,r1]
    push {r0-r7}
    ldr r6, [r0,#4]
    lsl r6, r6, #2
    ldrb r3, [r5,#0xf]
    sub r3, #2
    lsl r3, r3, #2
    ldr r0, [pc, #0x8043894-0x80437bc-4] // =dword_803FCE4
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x8043898-0x80437c4-4] // =loc_3007038
    mov lr, pc
    bx r3
    pop {r0-r7}
    add r0, #0xc
    sub r2, #1
    bge loc_80437A8
    ldrh r0, [r5,#0xc]
    cmp r0, #0
    ble loc_80437DE
    sub r0, #1
    strh r0, [r5,#0xc]
    b loc_804382E
loc_80437DE:
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_80437EA
    mov r0, #1
    strb r0, [r5,#4]
    b loc_804382E
loc_80437EA:
    ldrb r1, [r4,#1]
    cmp r1, #5
    beq loc_8043804
    ldrh r0, [r5,#0x26]
    mov r1, #2
    tst r0, r1
    beq loc_8043804
    mov r1, #0x6a 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r2, #4
    b loc_804387E
loc_8043804:
    ldrh r0, [r5,#0x26]
    mov r1, #1
    tst r0, r1
    bne loc_8043832
    mov r1, #8
    tst r0, r1
    beq loc_804382E
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    beq loc_804382E
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    mov r0, #0x80
    ldr r0, [r5,r0]
    sub r0, #1
    strb r0, [r5,#0x13]
loc_804382E:
    mov r0, #0
    pop {pc}
loc_8043832:
    ldrb r0, [r5,#0x13]
    mov r1, #0x80
    ldr r1, [r5,r1]
    sub r1, #1
    cmp r0, r1
    bne loc_804382E
    mov r0, #0x10
    bl chatbox_clearFlags_3e
    mov r0, #0
    strb r0, [r5,#4]
    strh r0, [r5,#0xc]
    mov r0, #4
    str r0, [r5,#0x78]
    mov r0, #0x20 
    bl sub_8045F1C
    mov r2, #1
    ldrb r1, [r4,#1]
    cmp r1, #3
    bne loc_8043866
    bl sub_8042EC8
    tst r0, r0
    beq loc_804387C
    b loc_804386E
loc_8043866:
    bl sub_8042F10
    tst r0, r0
    beq loc_804387C
loc_804386E:
    push {r0-r3}
    mov r1, #0x6e 
    ldrh r0, [r5,r1]
    bl sound_play
    pop {r0-r3}
    mov r2, #0
loc_804387C:
    add r2, #2
loc_804387E:
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_804388C
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_804388C:
    add r4, #5
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_8043894:    .word dword_803FCE4
dword_8043898:    .word 0x3007039
    .word 0x1CC
    .word 0x154
    .word 0x80438A8
    .word 0x800040
    .word 0x100020
    .word 0x1B9
.endfunc // sub_80436E8

.func
.thumb_func
sub_80438B4:
    ldrb r0, [r4,#2]
    add r0, #0x4c 
    mov r1, #0
    strb r1, [r5,r0]
    ldr r0, [pc, #0x80438e4-0x80438bc-4] // =0x1CC
    ldr r1, [r5,r0]
    mov r2, #0xc
    mul r2, r1
    add r1, #1
    str r1, [r5,r0]
    ldr r1, [pc, #0x80438e8-0x80438c8-4] // =0x154
    add r2, r2, r1
    ldrb r0, [r4,#2]
    strb r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x70]
    str r0, [r5,r2]
    add r2, #4
    ldr r0, [r5,#0x7c]
    str r0, [r5,r2]
    add r4, #3
    mov r0, #1
    mov pc, lr
    .byte 0
    .byte 0
off_80438E4:    .word 0x1CC
off_80438E8:    .word 0x154
.endfunc // sub_80438B4

.func
.thumb_func
chatbox_80438EC:
    push {lr}
    mov r0, #0x11
    bl sub_8040920
    bl sub_8040DBC
    ldrb r0, [r5,#0x13]
    mov r1, #0xa0
    mov r2, #0x10
    mul r2, r0
    add r7, r1, r2
    add r7, #4
    ldrh r0, [r5,r7]
    add r7, #4
    push {r7}
    ldrh r1, [r5,#0x24]
    ldr r2, [pc, #0x8043a44-0x804390c-4] // =word_8043A48
    mov r3, #0xc
loc_8043910:
    ldrh r6, [r2]
    tst r6, r1
    bne loc_8043920
    add r2, #2
    sub r3, #4
    cmp r3, #0
    blt loc_804393C
    b loc_8043910
loc_8043920:
    mov r6, #0xf0
    bic r1, r6
    strh r1, [r5,#0x24]
    lsr r0, r3
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#0x13]
    strb r0, [r5,#0x13]
    cmp r0, r1
    beq loc_804393C
    mov r2, #0x6c 
    ldrh r0, [r5,r2]
    bl sound_play
loc_804393C:
    ldrb r0, [r5,#0x13]
    pop {r7}
    strb r0, [r5,#0x13]
    ldr r1, [r5,r7]
    str r1, [r5,#0x70]
    ldrb r3, [r5,#0xf]
    sub r3, #2
    strb r3, [r5,#0xf]
    bl sub_8040A9A
    ldrb r3, [r5,#0xf]
    add r3, #2
    strb r3, [r5,#0xf]
    ldrb r0, [r5,#0x13]
    add r0, #0x4c 
    ldrb r3, [r5,r0]
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #0x80
    tst r0, r1
    bne loc_8043970
    mov r1, #0x40 
    tst r0, r1
    bne loc_8043978
    b loc_804398E
loc_8043970:
    sub r3, #1
    bge loc_8043980
    mov r3, #3
    b loc_8043980
loc_8043978:
    add r3, #1
    cmp r3, #3
    ble loc_8043980
    mov r3, #0
loc_8043980:
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    bl sound_play
    ldrb r0, [r5,#0x13]
    add r0, #0x4c 
    strb r3, [r5,r0]
loc_804398E:
    ldr r0, [pc, #0x8043a40-0x804398e-2] // =0x154
    add r0, r0, r5
    mov r2, #0
    ldrb r1, [r0]
    cmp r1, #0
    bne loc_80439A4
    add r1, #0x4c 
    ldrb r1, [r5,r1]
    ldr r3, [pc, #0x8043a50-0x804399e-2] // =dword_8043A54
    ldrb r1, [r3,r1]
    b loc_80439A8
loc_80439A4:
    add r1, #0x4c 
    ldrb r1, [r5,r1]
loc_80439A8:
    add r1, #1
    push {r0-r7}
    ldr r6, [r0,#4]
    lsl r6, r6, #2
    mov r3, #2
    lsl r3, r3, #2
    ldr r0, [pc, #0x8043a34-0x80439b4-4] // =dword_803FCE4
    ldr r0, [r0,r3]
    add r6, r6, r0
    mov r0, #1
    ldr r3, [pc, #0x8043a38-0x80439bc-4] // =loc_3007038+1
    mov lr, pc
    bx r3
    .hword 0xBCFF
    .word 0x3201300C, 0x58EB4B1C, 0xDBE1429A, 0x28017928, 0x2001D002
    .word 0xE0117128, 0x42007C68, 0x2000D003, 0x213D70A8, 0x8CE85468
    .word 0x42082101, 0x2108D108, 0xD0034208, 0x5A68216C, 0xFDE6F7BC
    .word 0xBD002000, 0x5A68216E, 0xFDE0F7BC, 0xF7FC2011, 0x2007FF8D
    .word 0xFA8AF002, 0xF0027CE8, 0x2000FA7F, 0x81A87128, 0x67A82004
    .word 0xF0022020, 0x3402FA77, 0xBD002000
off_8043A34:    .word dword_803FCE4
off_8043A38:    .word loc_3007038+1
    .word 0x1CC
off_8043A40:    .word 0x154
off_8043A44:    .word word_8043A48
word_8043A48:    .hword 0x40
    .hword 0x80
    .word 0x100020
off_8043A50:    .word dword_8043A54
dword_8043A54:    .word 0x5030201, 0x0
.endfunc // chatbox_80438EC

.func
.thumb_func
sub_8043A5C:
    push {lr}
    ldrb r0, [r4,#1]
    sub r0, #0x1b
    cmp r0, #0
    beq loc_8043A70
    cmp r0, #1
    beq loc_8043A9A
    cmp r0, #2
    beq loc_8043AB0
    b loc_8043ACC
loc_8043A70:
    push {r4,r5}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    cmp r0, #0xff
    bne loc_8043A82
    ldr r0, [r5,#0x54]
    sub r0, #0x90
loc_8043A82:
    ldrb r1, [r4,#4]
    cmp r1, #0xff
    bne loc_8043A8A
    ldr r1, [r5,#0x58]
loc_8043A8A:
    ldrb r2, [r4,#3]
    add r0, #0x90
    bl sub_803D108
    pop {r4,r5}
    add r4, #5
    mov r0, #1
    pop {pc}
loc_8043A9A:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#3]
    add r0, #0x90
    bl sub_803D128
    pop {r4,r5}
    add r4, #5
    mov r0, #1
    pop {pc}
loc_8043AB0:
    push {r4,r5}
    mov r0, #0x73 
    bl sound_play
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#4]
    ldrb r2, [r4,#3]
    add r0, #0x90
    bl sub_803D118
    pop {r4,r5}
    add r4, #5
    mov r0, #1
    pop {pc}
loc_8043ACC:
    push {r4,r5}
    ldrb r0, [r4,#2]
    ldrb r1, [r4,#7]
    add r0, #0x90
    bl sub_803D138
    pop {r4,r5}
    ldrb r1, [r4,#3]
    mov r2, #0
    cmp r0, r1
    beq loc_8043AEA
    add r2, #1
    cmp r0, r1
    bgt loc_8043AEA
    add r2, #1
loc_8043AEA:
    add r2, #4
    ldrb r1, [r4,r2]
    cmp r1, #0xff
    beq loc_8043AFA
    bl chatbox_80408D0
    mov r0, #1
    pop {pc}
loc_8043AFA:
    add r4, #8
    mov r0, #1
    pop {pc}
off_8043B00:    .word sub_8033FC0+1
    .byte 0, 0, 0, 0
    .word sub_8003A64+1
dword_8043B0C:    .word 0x8001155, 0x8003915, 0x814187D, 0x8142135, 0x8048F89
    .word 0x814227B, 0x802D15F, 0x802D159, 0x813E661, 0x809E315
    .word 0x813FA25, 0x809FE5F, 0x80351B5, 0x8035135, 0x8120DF1
    .word 0x813C3AD, 0x803CEB9, 0x80AA86F, 0x200A2E0, 0x20
    .word 0x200A340, 0x20, 0x200A300, 0x20, 0x200A360
    .word 0x20, 0x202AA00, 0x20, 0x202AA20, 0x20
    .word 0x202AA40, 0x20, 0x202AA60, 0x20, 0x202AA80
    .word 0x20, 0x202AAA0, 0x20, 0x202AAC0, 0x20
    .word 0x202AAE0, 0x20, 0x202AE00, 0x20, 0x202AE20
    .word 0x20, 0x202AE40, 0x20, 0x202AE60, 0x20
    .word 0x202AE80, 0x20, 0x202AEA0, 0x20, 0x202AEC0
    .word 0x20, 0x202AEE0, 0x20, 0x202AB00, 0x20
    .word 0x202AF00, 0x20, 0x2001186, 0x18, 0x200119E
    .word 0x18, 0x20007D6, 0x64, 0x200083A, 0x64
    .word 0x201FD60, 0x20, 0x2009A80, 0x4, 0x2009A82
    .word 0x4, 0x2009A84, 0x4, 0x2009A86, 0x4
    .word 0x2009A88, 0x4, 0x2009A8A, 0x4, 0x2009A8C
    .word 0x4
off_8043C64:    .word unk_2011C54
    .word 0x2011C55, 0x2011C56, 0x2011C57, 0x200A293, 0x0, 0x0
    .word sSubmenu+0x20 // sSubmenu.unk_20
dword_8043C84:    .word 0x2011A9D, 0x0
off_8043C8C:    .word unk_2009A80
dword_8043C90:    .word 0x2009A82, 0x2009A84, 0x2009A86, 0x2009A88, 0x2009A8A
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x6080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x7080808
    .word 0x6080707, 0x6060707, 0x7080607, 0x7070707, 0x8070707
    .word 0x8080808, 0x8080808, 0xB0B0B08, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0x80B0B0B
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x6080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x7080808
    .word 0x6080707, 0x6060707, 0x7080607, 0x7070707, 0x8070707
    .word 0x8080808, 0x8080808, 0xB0B0B08, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0x80B0B0B
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0xB0B0B08, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B
    .word 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0xB0B0B0B, 0x80B0B0B
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x8080808
byte_8044244:    .byte 0x3D
byte_8044245:    .byte 0x3
    .hword 0x95C
    .word 0xF5E0C5D, 0x13F125F, 0x3570240, 0x1460144, 0x1310129
    .word 0xFFFF
byte_8044260:    .byte 0xFF
byte_8044261:    .byte 0xFF
    .balign 4, 0x00
dword_8044264:    .word 0x2D2D2D
    .word 0x535341, 0x4B4F43, 0x4B5546, 0x4B5646, 0x594147, 0x455244
    .word 0x50414A, 0x5A494A, 0x434F4B, 0x4D554B, 0x44534C, 0x544F50
    .word 0x584553, 0x544954, 0x504F57, 0x363636, 0x4B4B4B, 0x564948
    .word 0x4D5541, 0x544953, 0x5A5341, 0x4D5543, 0x4B4944, 0x474146
    .word 0x4B4F4B, 0x4D564B, 0x4D5641, 0x4D5643, 0x353541, 0x4B3043
    .word 0x5A314A, 0x43304B, 0x543050, 0x584535, 0x543154, 0x44354C
    .word 0x503057, 0x4B3144, 0x4B304B, 0x5A3541, 0x543153, 0x563148
    .word 0x0
    .word unk_200BEA0
    .word 0x20202020, 0x200C1A0, 0x20202020, 0x200BEB0, 0x20202020
    .word 0x200C1B0, 0x20202020, 0x200BEC0, 0x20202020, 0x200C1C0
    .word 0x20202020, 0x200BED0, 0x20202020, 0x200C1D0, 0x20202020
    .word 0x200BEE0, 0x20202020, 0x200C1E0, 0x20202020, 0x200BEF0
    .word 0x20202020, 0x200C1F0, 0x20202020, 0x0
    .word unk_200C1A0
    .word 0xA0202020
    .word unk_200C1B0
    .word 0xA0202020, 0x200C1C0, 0xA0202020, 0x200C1D0, 0xA0202020
    .word 0x200C1E0, 0xA0202020, 0x200C1F0, 0x20202020, 0x200C4A0
    .word 0x20202020
    .word unk_200C7A0
    .word 0x20202020
    .word unk_200C4B0
    .word 0x20202020, 0x200C7B0, 0x20202020, 0x200C4C0, 0x20202020
    .word unk_200C7C0
    .word 0x20202020
    .word unk_200C4D0
    .word 0x20202020, 0x200C7D0, 0x20202020, 0x200C4E0, 0x20202020
    .word unk_200C7E0
    .word 0x20202020
    .word unk_200C4F0
    .word 0x20202020
    .word unk_200C7F0
    .word 0x20202020
    .word 0x0
    .word unk_200C7A0
    .word 0xA0202020, 0x200C7B0, 0xA0202020, 0x200C7C0, 0xA0202020
    .word 0x200C7D0, 0xA0202020, 0x200C7E0, 0xA0202020, 0x200C7F0
    .word 0x20202020, 0x200CAA0, 0x20202020, 0x200CAB0, 0x20202020
    .word 0x200CAC0, 0x20202020, 0x200CAD0, 0x20202020, 0x200CAE0
    .word 0x20202020, 0x200CAF0, 0x20202020, 0x0
off_8044470:    .word off_80445D8
    .word off_8044620
    .word off_80446BC
    .word off_8044800
    .word off_804489C
    .word off_8044938
    .word off_80449B8
off_804448C:    .word off_8044608
    .word off_8044698
    .word off_80447C4
    .word off_8044878
    .word off_8044914
    .word off_8044998
    .word off_8044A48
off_80444A8:    .word off_8044610
    .word off_80446AC
    .word off_80447F0
    .word off_804488C
    .word off_8044928
    .word off_80449A8
    .word off_8044A60
off_80444C4:    .word off_8044A70
    .word off_8044AB8
    .word off_8044B1C
    .word off_8044B80
    .byte 0, 0, 0, 0
    .word off_8044BE4
    .word 0x0, 0x0
    .word off_8044C80
    .word 0x0, 0x0, 0x0
    .word off_8044D2C
    .word off_8044EFC
    .word 0x0, 0x0
    .word off_80450CC
    .word off_8045130
    .word off_8045194
    .word off_80451DC
    .word off_8045224
    .word off_8045288
    .word off_8045308
off_8044520:    .word off_8044AA0
    .word off_8044B00
    .word off_8044B64
    .word off_8044BC8
    .word 0x0
    .word off_8044C5C
    .word 0
    .byte 0, 0, 0, 0
    .word off_8044D00
    .word 0, 0
    .byte 0, 0, 0, 0
    .word off_8044EAC
    .word off_804507C
    .word 0
    .byte 0, 0, 0, 0
    .word off_8045114
    .word off_8045178
    .word off_80451C4
    .word off_804520C
    .word off_804526C
    .word off_80452E8
    .word off_8045350
off_804457C:    .word off_8044AA8
    .word off_8044B0C
    .word off_8044B70
    .word off_8044BD4
    .byte 0, 0, 0, 0
    .word off_8044C70
    .word 0x0, 0x0
    .word off_8044D1C
    .word 0x0, 0x0, 0x0
    .word off_8044EEC
    .word off_80450BC
    .word 0x0, 0x0
    .word off_8045120
    .word off_8045184
    .word off_80451CC
    .word off_8045214
    .word off_8045278
    .word off_80452F8
    .word off_804535C
off_80445D8:    .word off_80445E0
    .word off_80445F4
off_80445E0:    .word dword_8762F98
    .word dword_8762FE4
    .word dword_8762FF0
    .word dword_876381C
    .word dword_8763B24
off_80445F4:    .word dword_87643A8
    .word dword_87643B4
    .word dword_87643C0
    .word off_87643CC
    .word off_87643D8
off_8044608:    .word dword_87558D8
    .word off_8755C0C
off_8044610:    .word dword_873F008
    .word dword_873F028
    .word dword_873F048
    .word dword_873F430
off_8044620:    .word off_8044634
    .word off_8044648
    .word off_804465C
    .word off_8044670
    .word off_8044684
off_8044634:    .word dword_87643E4
    .word dword_8764FAC
    .word unk_87658F0
    .word dword_87666B4
    .word dword_8766BFC
off_8044648:    .word dword_87680AC
    .word dword_8768558
    .word dword_8768D28
    .word dword_8768EEC
    .word dword_8769148
off_804465C:    .word dword_87691D8
    .word dword_87691E4
    .word dword_8769264
    .word dword_8769270
    .word dword_876927C
off_8044670:    .word dword_87692AC
    .word off_87693BC
    .word off_87693C8
    .word off_87693D4
    .word dword_87693E0
off_8044684:    .word off_87694B4
    .word dword_87694C0
    .word dword_87698B0
    .word dword_8769BA8
    .word dword_8769DE8
off_8044698:    .word dword_8755C18
    .word dword_8756124
    .word unk_87565E8
    .word dword_8756AA4
    .word dword_8756C9C
off_80446AC:    .word dword_873F908
    .word dword_873FD64
    .word dword_874041C
    .word dword_8740974
off_80446BC:    .word off_80446E8
    .word off_80446FC
    .word off_8044710
    .word off_8044724
    .word off_8044738
    .word off_804474C
    .word off_8044760
    .word 0x8044774
    .word off_8044788
    .word off_804479C
    .word off_80447B0
off_80446E8:    .word dword_876A5B4
    .word dword_876B0DC
    .word dword_876B29C
    .word dword_876B5A4
    .word dword_876B7C4
off_80446FC:    .word dword_876B978
    .word dword_876BD54
    .word dword_876BF64
    .word dword_876C0DC
    .word dword_876C2A8
off_8044710:    .word dword_876C880
    .word dword_876CA38
    .word dword_876CBE8
    .word dword_876CD18
    .word dword_876CE60
off_8044724:    .word dword_876D154
    .word dword_876D378
    .word dword_876D48C
    .word dword_876D580
    .word dword_876D618
off_8044738:    .word dword_876D7E0
    .word dword_876DB88
    .word dword_876DE70
    .word dword_876E078
    .word dword_876E144
off_804474C:    .word dword_876E538
    .word dword_876E698
    .word dword_876E73C
    .word dword_876E874
    .word dword_876E900
off_8044760:    .word dword_876EE64
    .word dword_876F2EC
    .word dword_876F7E4
    .word dword_876FD30
    .word dword_876FE2C
    .word dword_8770084
    .word dword_87707EC
    .word dword_87709CC
    .word dword_8770D20
    .word dword_8770EC0
off_8044788:    .word dword_877125C
    .word dword_877125C
    .word dword_8771268
    .word dword_877129C
    .word off_87712BC
off_804479C:    .word dword_87712C8
    .word dword_87712C8
    .word dword_8771844
    .word dword_8771850
    .word dword_877185C
off_80447B0:    .word dword_8771FAC
    .word dword_8771FAC
    .word dword_8771FB8
    .word dword_8771FC4
    .word dword_8771FD0
off_80447C4:    .word dword_875752C
    .word dword_8757B7C
    .word dword_8758018
    .word dword_8758410
    .word dword_8758834
    .word dword_8758AF0
    .word dword_8758D98
    .word dword_875906C
    .word dword_8759480
    .word dword_8759870
    .word dword_8759C10
off_80447F0:    .word dword_8740E90
    .word dword_87414AC
    .word dword_8741D04
    .word dword_8742318
off_8044800:    .word aTWH0w07wLaw0ew
    .word aTWH0w07wLaw0ew+0x14
    .word aJwPlwXpwTwVw
    .word aJwPlwXpwTwVw+0x14
    .word off_8044864
aTWH0w07wLaw0ew:    .byte 0x74, 0x29, 0x77, 0x8, 0x68, 0x30, 0x77, 0x8, 0x30, 0x37, 0x77, 0x8, 0x6C, 0x41, 0x77, 0x8, 0x30, 0x45
    .byte 0x77, 0x8, 0x48, 0x4F, 0x77, 0x8, 0x8, 0x52, 0x77, 0x8, 0x7C, 0x56, 0x77, 0x8, 0x60, 0x5B, 0x77, 0x8
    .byte 0x0
    .byte 0x5E, 0x77, 0x8
aJwPlwXpwTwVw:    .byte 0x20, 0x6A, 0x77, 0x8, 0x50, 0x6C, 0x77, 0x8, 0x78, 0x70, 0x77, 0x8
    .byte 0x28, 0x74, 0x77, 0x8, 0x7C, 0x76, 0x77, 0x8, 0x0
    .byte 0x84, 0x77, 0x8
    .word dword_87786EC
    .word dword_8778810
    .word dword_87789F4
    .word dword_8778B40
off_8044864:    .word off_87792A8
    .word off_87792B4
    .word off_87792C0
    .word dword_87792CC
    .word dword_87792DC
off_8044878:    .word dword_8759EF8
    .word dword_875A2C4
    .word dword_875A918
    .word dword_875B064
    .word dword_875B30C
off_804488C:    .word dword_87428D4
    .word dword_8742D64
    .word dword_87433BC
    .word dword_87439D8
off_804489C:    .word off_80448B0
    .word off_80448C4
    .word off_80448D8
    .word off_80448EC
    .word off_8044900
off_80448B0:    .word dword_8779B1C
    .word dword_8779B1C
    .word dword_8779F28
    .word dword_877A4A8
    .word dword_877A7FC
off_80448C4:    .word dword_877C0FC
    .word dword_877C0FC
    .word dword_877C534
    .word dword_877C7A4
    .word dword_877C94C
off_80448D8:    .word dword_877CD94
    .word dword_877CD94
    .word dword_877D7D4
    .word unk_877D8CC
    .word dword_877DAB4
off_80448EC:    .word dword_877DF6C
    .word dword_877DF6C
    .word dword_877E03C
    .word dword_877E278
    .word dword_877E3DC
off_8044900:    .word off_877E554
    .word off_877E554
    .word off_877E560
    .word dword_877E56C
    .word dword_877E620
off_8044914:    .word dword_875B30C+0x1A4
    .word dword_875B30C+0x628
    .word dword_875BB0C+0x1A8
    .word dword_875BB0C+0x350
    .word dword_875BB0C+0x474
off_8044928:    .word dword_87439F8+0x574
    .word 0x8743F6C
    .word 0x87444C8
    .word 0x8744B38
off_8044938:    .word off_8044948
    .word off_804495C
    .word off_8044970
    .word off_8044984
off_8044948:    .word dword_877E668+0x770
    .word dword_877E668+0x770
    .word 0x877EDD8
    .word 0x877F460
    .word dword_877F594
off_804495C:    .word dword_8780104
    .word dword_8780104
    .word dword_8780104
    .word dword_8780724
    .word dword_87808D0
off_8044970:    .word dword_8781048
    .word dword_8781048
    .word dword_8781048
    .word dword_87813CC
    .word dword_8781564
off_8044984:    .word dword_8781784
    .word dword_8781784
    .word dword_8781784
    .word dword_8781B18
    .word dword_8781CB4
off_8044998:    .word dword_875BFD8
    .word unk_875C22C
    .word dword_875C4B8
    .word dword_875C83C
off_80449A8:    .word dword_8745100
    .word dword_8745100
    .word dword_8745100
    .word dword_874584C
off_80449B8:    .word off_80449D0
    .word off_80449E4
    .word off_80449F8
    .word off_8044A0C
    .word off_8044A20
    .word off_8044A34
off_80449D0:    .word dword_8781ED4
    .word dword_8781ED4
    .word dword_8781ED4
    .word dword_8781ED4
    .word dword_8781FE4
off_80449E4:    .word dword_8782048
    .word dword_8782048
    .word dword_8782048
    .word dword_8782048
    .word dword_878205C
off_80449F8:    .word dword_87821B4
    .word dword_87821B4
    .word dword_87821B4
    .word dword_87821B4
    .word off_87822E8
off_8044A0C:    .word dword_87822F4
    .word dword_87822F4
    .word dword_87822F4
    .word dword_87822F4
    .word off_8782414
off_8044A20:    .word dword_8782420
    .word dword_8782420
    .word dword_8782420
    .word dword_8782420
    .word dword_8782564
off_8044A34:    .word dword_87825B4
    .word dword_87825B4
    .word dword_87825B4
    .word dword_87825B4
    .word off_87825C0
off_8044A48:    .word dword_875CB68
    .word dword_875CE10
    .word dword_875CFC4
    .word dword_875D1FC
    .word dword_875D5E0
    .word off_875D774
off_8044A60:    .word dword_8745DEC
    .word dword_8745DEC
    .word dword_8745DEC
    .word dword_8745DEC
off_8044A70:    .word off_8044A78
    .word off_8044A8C
off_8044A78:    .word dword_8797310
    .word dword_879748C
    .word dword_8797498
    .word dword_87974A4
    .word dword_87974B0
off_8044A8C:    .word dword_87979CC
    .word dword_87979F0
    .word dword_87979FC
    .word dword_8797A08
    .word off_8797A14
off_8044AA0:    .word dword_875D780
    .word dword_875D800
off_8044AA8:    .word dword_87461A0
    .word unk_87462D0
    .word dword_87463F4
    .word dword_87464AC
off_8044AB8:    .word off_8044AC4
    .word off_8044AD8
    .word off_8044AEC
off_8044AC4:    .word dword_8797A20
    .word off_8797E70
    .word dword_8797E7C
    .word dword_8797E88
    .word dword_8797E94
off_8044AD8:    .word dword_87982AC
    .word off_87982B8
    .word dword_87982C4
    .word dword_87982D0
    .word dword_87982DC
off_8044AEC:    .word off_8798474
    .word off_8798480
    .word dword_879848C
    .word dword_8798498
    .word dword_87984A4
off_8044B00:    .word dword_875D974
    .word dword_875D9C0
    .word dword_875DA0C
off_8044B0C:    .word dword_87466F8
    .word dword_87469C4
    .word dword_8746A34
    .word dword_8746AE8
off_8044B1C:    .word off_8044B28
    .word off_8044B3C
    .word off_8044B50
off_8044B28:    .word dword_8798660
    .word dword_8798660
    .word dword_879896C
    .word dword_8798978
    .word dword_8798984
off_8044B3C:    .word dword_8798990
    .word dword_8798990
    .word dword_879899C
    .word dword_87989A8
    .word dword_87989B4
off_8044B50:    .word dword_87989C0
    .word dword_87989C0
    .word dword_87989CC
    .word dword_87989D8
    .word dword_87989E4
off_8044B64:    .word dword_875DA58
    .word dword_875DAB8
    .word dword_875DB18
off_8044B70:    .word dword_8746D34
    .word dword_8746D34
    .word dword_8746E38
    .word dword_8746EF0
off_8044B80:    .word off_8044B8C
    .word off_8044BA0
    .word off_8044BB4
off_8044B8C:    .word dword_8798B28
    .word dword_8798B28
    .word dword_8798B28
    .word dword_8798ED8
    .word dword_8798EE4
off_8044BA0:    .word off_87994A4
    .word off_87994A4
    .word off_87994A4
    .word dword_87994B0
    .word dword_87994BC
off_8044BB4:    .word off_879951C
    .word off_879951C
    .word off_879951C
    .word dword_8799528
    .word dword_8799534
off_8044BC8:    .word dword_875DBD8
    .word dword_875DC10
    .word dword_875DC48
off_8044BD4:    .word dword_874713C
    .word dword_874713C
    .word dword_874713C
    .word dword_8747228
off_8044BE4:    .word off_8044BF8
    .word off_8044C0C
    .word off_8044C20
    .word off_8044C34
    .word off_8044C48
off_8044BF8:    .word dword_8799708
    .word dword_8799708
    .word dword_8799708
    .word dword_8799708
    .word dword_8799AD4
off_8044C0C:    .word dword_8799AE0
    .word dword_8799AE0
    .word dword_8799AE0
    .word dword_8799AE0
    .word dword_8799E5C
off_8044C20:    .word dword_8799E68
    .word dword_8799E68
    .word dword_8799E68
    .word dword_8799E68
    .word dword_879A228
off_8044C34:    .word dword_879A28C
    .word dword_879A28C
    .word dword_879A28C
    .word dword_879A28C
    .word dword_879A63C
off_8044C48:    .word dword_879A648
    .word dword_879A648
    .word dword_879A648
    .word dword_879A648
    .word dword_879A654
off_8044C5C:    .word dword_875DC80
    .word dword_875DD4C
    .word dword_875DDF8
    .word dword_875DE80
    .word off_875DF20
off_8044C70:    .word dword_8747474
    .word dword_8747474
    .word dword_8747474
    .word dword_8747474
off_8044C80:    .word off_8044C9C
    .word off_8044CB0
    .word 0x0
    .word off_8044CC4
    .word 0x0
    .word off_8044CD8
    .word off_8044CEC
off_8044C9C:    .word dword_879A660
    .word dword_879A66C
    .word dword_879A6DC
    .word dword_879A6E8
    .word dword_879A704
off_8044CB0:    .word dword_879A764
    .word dword_879A770
    .word dword_879A77C
    .word dword_879AAB0
    .word dword_879AACC
off_8044CC4:    .word dword_879AF5C
    .word dword_879AF68
    .word dword_879B28C
    .word dword_879B298
    .word dword_879B2B4
off_8044CD8:    .word dword_879BF6C
    .word dword_879BF6C
    .word dword_879C700
    .word dword_879C70C
    .word dword_879C728
off_8044CEC:    .word dword_879D130
    .word dword_879D130
    .word dword_879D130
    .word dword_879D13C
    .word dword_879D158
off_8044D00:    .word dword_875DF2C
    .word dword_875DF38
    .word 0x0
    .word dword_875DF44
    .word 0x0
    .word dword_875DF50
    .word dword_875DF78
off_8044D1C:    .word unk_87477F4
    .word dword_8747D30
    .word dword_8748650
    .word dword_8748F44
off_8044D2C:    .word off_8044D6C
    .word off_8044D80
    .word off_8044D94
    .word off_8044DA8
    .word off_8044DBC
    .word off_8044DD0
    .word off_8044DE4
    .word off_8044DF8
    .word off_8044E0C
    .word off_8044E20
    .word off_8044E34
    .word off_8044E48
    .word off_8044E5C
    .word off_8044E70
    .word off_8044E84
    .word off_8044E98
off_8044D6C:    .word dword_879DA44
    .word dword_879DA50
    .word dword_879DA5C
    .word dword_879DA68
    .word dword_879DA74
off_8044D80:    .word dword_879E3D0
    .word dword_879E3D0
    .word dword_879E3DC
    .word dword_879E3E8
    .word dword_879E3F4
off_8044D94:    .word dword_879E4C4
    .word dword_879E574
    .word dword_879E580
    .word dword_879E58C
    .word dword_879E598
off_8044DA8:    .word off_879E62C
    .word dword_879E638
    .word dword_879E644
    .word dword_879E650
    .word dword_879E65C
off_8044DBC:    .word off_879EB78
    .word off_879EB84
    .word dword_879EB90
    .word dword_879EB9C
    .word dword_879EBA8
off_8044DD0:    .word off_879F194
    .word off_879F194
    .word dword_879F1A0
    .word dword_879F1AC
    .word dword_879F1B8
off_8044DE4:    .word off_879F5CC
    .word off_879F5D8
    .word dword_879F5E4
    .word dword_879F5F0
    .word dword_879F5FC
off_8044DF8:    .word dword_879F6A0
    .word dword_879F6A0
    .word dword_879F6A0
    .word dword_879F734
    .word dword_879F740
off_8044E0C:    .word dword_879FB18
    .word dword_879FB24
    .word dword_879FD9C
    .word dword_879FDA8
    .word dword_879FDB4
off_8044E20:    .word dword_87A00D8
    .word dword_87A00D8
    .word dword_87A0434
    .word dword_87A0440
    .word dword_87A044C
off_8044E34:    .word dword_87A04C0
    .word dword_87A04C0
    .word dword_87A04CC
    .word dword_87A04D8
    .word dword_87A04E4
off_8044E48:    .word dword_87A05E0
    .word dword_87A05E0
    .word dword_87A05E0
    .word dword_87A0698
    .word dword_87A06A4
off_8044E5C:    .word dword_87A0700
    .word dword_87A0700
    .word dword_87A0700
    .word dword_87A07D0
    .word dword_87A07DC
off_8044E70:    .word dword_87A0AA8
    .word dword_87A0AA8
    .word dword_87A0AA8
    .word dword_87A0B14
    .word dword_87A0B20
off_8044E84:    .word dword_87A0B88
    .word dword_87A0B88
    .word dword_87A0B88
    .word dword_87A0C18
    .word dword_87A0C24
off_8044E98:    .word dword_87A0EF4
    .word dword_87A0EF4
    .word dword_87A0EF4
    .word dword_87A0F00
    .word dword_87A0F0C
off_8044EAC:    .word dword_875DFA4
    .word dword_875DFB0
    .word dword_875DFBC
    .word dword_875DFC8
    .word dword_875DFD4
    .word dword_875DFE0
    .word dword_875DFEC
    .word dword_875DFF8
    .word dword_875E0F4
    .word dword_875E100
    .word off_875E36C
    .word dword_875E378
    .word dword_875E414
    .word dword_875E4AC
    .word dword_875E52C
    .word dword_875E5C4
off_8044EEC:    .word dword_8749514
    .word dword_8749C38
    .word dword_874A638
    .word dword_874B154
off_8044EFC:    .word off_8044F3C
    .word off_8044F50
    .word off_8044F64
    .word off_8044F78
    .word off_8044F8C
    .word off_8044FA0
    .word off_8044FB4
    .word off_8044FC8
    .word off_8044FDC
    .word off_8044FF0
    .word off_8045004
    .word off_8045018
    .word off_804502C
    .word off_8045040
    .word off_8045054
    .word off_8045068
off_8044F3C:    .word dword_87A0FB8
    .word dword_87A0FB8
    .word dword_87A0FB8
    .word dword_87A0FC4
    .word dword_87A0FD0
off_8044F50:    .word dword_87A1078
    .word dword_87A1078
    .word dword_87A1078
    .word dword_87A1084
    .word dword_87A1090
off_8044F64:    .word dword_87A1120
    .word dword_87A1120
    .word dword_87A112C
    .word dword_87A1138
    .word dword_87A1144
off_8044F78:    .word dword_87A1570
    .word dword_87A157C
    .word dword_87A1588
    .word dword_87A1594
    .word dword_87A15A0
off_8044F8C:    .word dword_87A1CC0
    .word dword_87A1CC0
    .word dword_87A1CCC
    .word dword_87A1CD8
    .word dword_87A1CE4
off_8044FA0:    .word dword_87A1EF4
    .word dword_87A1EF4
    .word dword_87A1F00
    .word dword_87A1F0C
    .word dword_87A1F18
off_8044FB4:    .word dword_87A243C
    .word dword_87A243C
    .word dword_87A2448
    .word dword_87A2454
    .word dword_87A2460
off_8044FC8:    .word dword_87A29B4
    .word dword_87A29B4
    .word dword_87A29C0
    .word dword_87A29CC
    .word dword_87A29D8
off_8044FDC:    .word dword_87A2B20
    .word dword_87A2B2C
    .word dword_87A2B38
    .word dword_87A2B44
    .word dword_87A2B50
off_8044FF0:    .word dword_87A2BEC
    .word dword_87A2BEC
    .word dword_87A2BEC
    .word dword_87A2BF8
    .word dword_87A2C04
off_8045004:    .word off_87A3168
    .word off_87A3168
    .word off_87A3168
    .word off_87A3174
    .word dword_87A3180
off_8045018:    .word dword_87A3624
    .word dword_87A3624
    .word dword_87A3624
    .word dword_87A3630
    .word dword_87A363C
off_804502C:    .word dword_87A36E8
    .word dword_87A36E8
    .word dword_87A36E8
    .word dword_87A36E8
    .word dword_87A36F4
off_8045040:    .word dword_87A377C
    .word dword_87A3788
    .word dword_87A3794
    .word dword_87A37A0
    .word dword_87A37AC
off_8045054:    .word dword_87A39FC
    .word dword_87A39FC
    .word dword_87A39FC
    .word dword_87A3A08
    .word dword_87A3A14
off_8045068:    .word dword_87A3AFC
    .word dword_87A3AFC
    .word dword_87A3AFC
    .word dword_87A3AFC
    .word dword_87A3B08
off_804507C:    .word dword_875E5D0
    .word dword_875E5DC
    .word dword_875E5E8
    .word dword_875E5F4
    .word dword_875E600
    .word dword_875E60C
    .word dword_875E618
    .word dword_875E624
    .word dword_875E630
    .word dword_875E63C
    .word dword_875E648
    .word dword_875E654
    .word dword_875E660
    .word dword_875E66C
    .word dword_875E678
    .word dword_875E684
off_80450BC:    .word dword_874B878
    .word dword_874BC34
    .word dword_874C5D0
    .word dword_874D038
off_80450CC:    .word off_80450D8
    .word off_80450EC
    .word off_8045100
off_80450D8:    .word dword_87825CC
    .word dword_8782FEC
    .word dword_8783ED0
    .word dword_878460C
    .word dword_8784908
off_80450EC:    .word dword_87859C0
    .word dword_8785FF4
    .word dword_8786694
    .word dword_8786C04
    .word dword_8786EA0
off_8045100:    .word dword_87876E4
    .word dword_8787C6C
    .word dword_8788390
    .word dword_8788F78
    .word dword_87892BC
off_8045114:    .word dword_875E690
    .word dword_875E8DC
    .word dword_875EA10
off_8045120:    .word dword_874D74C
    .word dword_874DCF0
    .word dword_874E6E0
    .word dword_874EFE0
off_8045130:    .word off_804513C
    .word unk_8045150
    .word off_8045164
off_804513C:    .word dword_8789780
    .word dword_8789A10
    .word dword_878A004
    .word dword_878A4E0
    .word dword_878A898
unk_8045150:    .byte 0x6C 
    .byte 0xB4
    .byte 0x78 
    .byte 8
    .byte 0x90
    .byte 0xB6
    .byte 0x78 
    .byte 8
    .byte 0x64 
    .byte 0xBC
    .byte 0x78 
    .byte 8
    .byte 0x14
    .byte 0xC2
    .byte 0x78 
    .byte 8
    .byte 0xC8
    .byte 0xC5
    .byte 0x78 
    .byte 8
off_8045164:    .word dword_878CE18
    .word dword_878D038
    .word dword_878D544
    .word dword_878DAD4
    .word dword_878DE08
off_8045178:    .word dword_875F038
    .word dword_875F424
    .word dword_875F838
off_8045184:    .word dword_874F5C4
    .word dword_874F980
    .word dword_87502B4
    .word dword_8750B80
off_8045194:    .word off_804519C
    .word off_80451B0
off_804519C:    .word dword_878E728
    .word dword_878E728
    .word dword_878EA40
    .word dword_878F110
    .word dword_878F364
off_80451B0:    .word dword_878FA4C
    .word dword_878FA4C
    .word dword_878FFC8
    .word dword_8790508
    .word dword_879073C
off_80451C4:    .word dword_875FAB8
    .word dword_875FF70
off_80451CC:    .word dword_8751150
    .word dword_8751150
    .word dword_87517E8
    .word dword_8752174
off_80451DC:    .word off_80451E4
    .word off_80451F8
off_80451E4:    .word dword_87913C8
    .word dword_87913C8
    .word dword_87913C8
    .word dword_8791604
    .word dword_87917D4
off_80451F8:    .word dword_8791878
    .word dword_8791878
    .word dword_8791878
    .word dword_8791A0C
    .word dword_8791A28
off_804520C:    .word dword_87601FC
    .word dword_87605E0
off_8045214:    .word dword_8752818
    .word dword_8752818
    .word dword_8752818
    .word dword_8752FBC
off_8045224:    .word off_8045230
    .word off_8045244
    .word off_8045258
off_8045230:    .word dword_8791AA8
    .word dword_8791AA8
    .word dword_8791AA8
    .word dword_87921F4
    .word dword_8792478
off_8045244:    .word dword_8793DCC
    .word dword_8793DCC
    .word dword_8793DCC
    .word dword_8794604
    .word dword_87948B8
off_8045258:    .word dword_8794EC0
    .word dword_8794EC0
    .word dword_8794EC0
    .word dword_8795234
    .word dword_87956C4
off_804526C:    .word dword_8760910
    .word dword_8760D38
    .word dword_8761234
off_8045278:    .word dword_875358C
    .word dword_875358C
    .word dword_875358C
    .word dword_8753F78
off_8045288:    .word off_8045298
    .word off_80452AC
    .word off_80452C0
    .word off_80452D4
off_8045298:    .word dword_8795A38
    .word dword_8795A38
    .word dword_8795A44
    .word dword_8795D58
    .word unk_8795E14
off_80452AC:    .word dword_8796494
    .word dword_8796494
    .word dword_87964A0
    .word dword_87964AC
    .word dword_87964C8
off_80452C0:    .word dword_8796940
    .word dword_8796940
    .word dword_879694C
    .word dword_87969DC
    .word dword_8796AE4
off_80452D4:    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
off_80452E8:    .word dword_8761698
    .word dword_87618C0
    .word dword_876210C
    .word dword_87A3B84
off_80452F8:    .word dword_8754620
    .word dword_8754620
    .word dword_8754674
    .word dword_87550BC
off_8045308:    .word off_8045314
    .word off_8045328
    .word off_804533C
off_8045314:    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
off_8045328:    .word dword_8797208
    .word dword_8797208
    .word dword_8797208
    .word dword_8797214
    .word dword_8797220
off_804533C:    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
    .word dword_87A3B84
off_8045350:    .word dword_87A3B84
    .word dword_8762434
    .word dword_87A3B84
off_804535C:    .word dword_87557A8
    .word dword_87557A8
    .word dword_87557A8
    .word dword_8755834
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2B9F2B8, 0xF2B9F2B9, 0xF2B9F2B9, 0xF2BBF2BA, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BDF2BC
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xFABCFEBD, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABDFABC
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2B9F2B8, 0xF2B9F2B9, 0xF2B9F2B9, 0xF2BBF2BA, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BDF2BC
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xFABCFEBD, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABDFABC
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2B9F2B8, 0xF2B9F2B9, 0xF2B9F2B9, 0xF2BBF2BA, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BDF2BC
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xFABCFEBD, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABDFABC
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2B9F2B8, 0xF2B9F2B9, 0xF2B9F2B9, 0xF2BBF2BA, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BDF2BC
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xFABCFEBD, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABDFABC
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2B9F2B8, 0xF2B9F2B9, 0xF2B9F2B9, 0xF2BBF2BA, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BDF2BC
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xF2BFF2BE, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF
    .word 0xFABCFEBD, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABDFABC
    .word 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0
    .word 0xF2C0F2C0, 0xF2C0F2C0, 0xF2C0F2C0, 0xF2B9F2B8, 0xF2B9F2B9
    .word 0xF2B9F2B9, 0xF2BBF2BA, 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BCF2BC
    .word 0xF2BCF2BC, 0xF2BCF2BC, 0xF2BDF2BC, 0xF2BFF2BE, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF, 0xF2BFF2BE, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF, 0xF2BFF2BE, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF, 0xF2BFF2BE, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF, 0xF2BFF2BE, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF, 0xF2BFF2BF
    .word 0xF2BFF2BF, 0xF2BFF2BF, 0xF6BEF2BF, 0xFABCFEBD, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC, 0xFABCFABC
    .word 0xFABCFABC, 0xFABCFABC, 0xFABDFABC
dword_8045CCC:    .word 0x30501, 0x0
    .word 0x40605, 0x0
    .word 0x20100, 0x0
    .word 0x90207, 0x0
dword_8045CEC:    .word 0x86BECA0, 0x86BEE80, 0x86BF060, 0x86BF240, 0x86BF240
    .word 0x86BF060, 0x86BEE80, 0x86BECA0, 0x86BF420, 0x86BF600
    .word 0x86BF7E0, 0x86BF9C0, 0x86BF9C0, 0x86BF7E0, 0x86BF600
    .word 0x86BF420, 0x86BECA0, 0x86BEE80, 0x86BF060, 0x86BF240
    .word 0x804590C, 0x8045A4C, 0x8045B8C, 0xFF, 0x201F070
    .word 0x201F070, 0x201F070, 0x201F070, 0x201F070, 0x201F070
    .word 0x201F070, 0x201F070, 0x86BFE60, 0x86C0040, 0x86C0220
    .word 0x86C0400, 0x86C0400, 0x86C0220, 0x86C0040, 0x86BFE60
    .word 0x84E0554, 0x84E0554, 0x84E0554, 0x84E0554, 0x84E0554
    .word 0x84E0554, 0x84E0554, 0x84E0554, 0x86C0940, 0x86C0940
    .word 0x86C0940, 0x86C0940, 0x86C0940, 0x86C0940, 0x86C0940
    .word 0x86C0940, 0x8D00E2, 0x8D00CA, 0x8045DF0, 0x8045E10
    .word 0x8045E30, 0x8045E50, 0x8045E70, 0x8045E90, 0x8045EB0
    .word 0x40000001, 0x8010, 0x86F2980, 0x6010200, 0x80
    .word 0x86F2960, 0x3001650, 0x20, 0x40000001, 0x8014
    .word 0x86F2A00, 0x6010280, 0x80, 0x86F2960, 0x3001650
    .word 0x20, 0x40000001, 0x8018, 0x86F2A80, 0x6010300
    .word 0x80, 0x86F2960, 0x3001650, 0x20, 0x40000001
    .word 0x801C, 0x86F2B00, 0x6010380, 0x80, 0x86F2960
    .word 0x3001650, 0x20, 0x40000001, 0x8020, 0x86F2B80
    .word 0x6010400, 0x80, 0x86F2960, 0x3001650, 0x20
    .word 0x40000001, 0x8024, 0x86F2C00, 0x6010480, 0x80
    .word 0x86F2960, 0x3001650, 0x20, 0x40000001, 0x8028
    .word 0x86F2C80, 0x6010500, 0x80, 0x86F2960, 0x3001650
    .word 0x20
.endfunc // sub_8043A5C

.func
.thumb_func
sub_8045ED0:
    push {r1,lr}
    ldr r1, [pc, #0x8045ed8-0x8045ed2-2] // =dword_8043C90+20
    ldrb r0, [r1,r0]
    pop {r1,pc}
off_8045ED8:    .word dword_8043C90+0x14
.endfunc // sub_8045ED0

.func
.thumb_func
sub_8045EDC:
    push {r2-r7,lr}
    mov r2, r10
    ldr r2, [r2,#0x2c]
    mov r3, #0x4c 
    lsl r0, r0, #2
    add r3, r3, r0
    str r1, [r2,r3]
    pop {r2-r7,pc}
.endfunc // sub_8045EDC

.func
.thumb_func
sub_8045EEC:
    push {r1-r7,lr}
    mov r1, r10
    ldr r1, [r1,#0x2c]
    mov r2, #0x4c 
    lsl r0, r0, #2
    add r2, r2, r0
    ldr r0, [r1,r2]
    pop {r1-r7,pc}
.endfunc // sub_8045EEC

.func
.thumb_func
sub_8045EFC:
    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r0, [r4,#0x4c]
    str r1, [r4,#0x50]
    str r2, [r4,#0x54]
    str r3, [r4,#0x58]
    pop {r4-r7,pc}
.endfunc // sub_8045EFC

    push {r4-r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x2c]
    ldr r0, [r4,#0x4c]
    ldr r1, [r4,#0x50]
    ldr r2, [r4,#0x54]
    ldr r3, [r4,#0x58]
    pop {r4-r7,pc}
.func
.thumb_func
sub_8045F1C:
    push {r1,r2}
    ldr r1, [pc, #0x8045f48-0x8045f1e-2] // =dword_2009F38
    ldr r2, [r1]
    orr r2, r0
    str r2, [r1]
    pop {r1,r2}
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_8045F1C

.func
.thumb_func
sub_8045F2C:
    push {r1,r2}
    ldr r1, [pc, #0x8045f48-0x8045f2e-2] // =dword_2009F38
    ldr r2, [r1]
    bic r2, r0
    str r2, [r1]
    pop {r1,r2}
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_8045F2C

.func
.thumb_func
sub_8045F3C:
    push {r1}
    ldr r1, [pc, #0x8045f48-0x8045f3e-2] // =dword_2009F38
    ldr r1, [r1]
    and r0, r1
    pop {r1}
    mov pc, lr
off_8045F48:    .word dword_2009F38
.endfunc // sub_8045F3C

.func
.thumb_func
sub_8045F4C:
    push {r1}
    ldr r1, [pc, #0x8045f5c-0x8045f4e-2] // =dword_2009F38
    ldr r1, [r1]
    mov r0, #7
    and r0, r1
    pop {r1}
    mov pc, lr
    .balign 4, 0x00
off_8045F5C:    .word dword_2009F38
.endfunc // sub_8045F4C

.func
.thumb_func
chatbox_8045F60:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x70]
    strb r0, [r5,#0xf]
    strb r0, [r5,#0xe]
    str r0, [r5,#0x7c]
    ldr r0, [pc, #0x8045f7c-0x8045f6c-4] // =unk_200BEA0
    ldr r1, [pc, #0x8045f80-0x8045f6e-2] // =0xF00
    bl sub_8000900
    ldr r0, [pc, #0x8045f88-0x8045f74-4] // =unk_200CDA0
    bl sub_8000900
    pop {pc}
off_8045F7C:    .word unk_200BEA0
off_8045F80:    .word 0xF00
    .word 0x6015700
off_8045F88:    .word unk_200CDA0
.endfunc // chatbox_8045F60

/*For debugging purposes, connect comment at any range!*/
