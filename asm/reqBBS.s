.include "reqBBS.inc"

.func
.thumb_func
reqBBS_813E07C:
    push {r4-r7,lr}
    push {r0}
    // memBlock
    ldr r0, off_813E0A0 // =reqBBS_bxo_2001150 
    // numWords
    mov r1, #0x2c 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r0}
    ldr r5, off_813E0A0 // =reqBBS_bxo_2001150 
    strb r0, [r5,#0x4] // (byte_2001154 - 0x2001150)
    ldr r2, off_813E09C // =off_813DF74 
    mov r1, #0x24 
    mul r0, r1
    add r0, r0, r2
    str r0, [r5,#0x28] // (dword_2001178 - 0x2001150)
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813E09C:    .word off_813DF74
off_813E0A0:    .word reqBBS_bxo_2001150
.endfunc // reqBBS_813E07C

.func
.thumb_func
reqBBS_cb_draw_813E0A4:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, off_813E0C4 // =reqBBS_bxo_2001150 
    ldr r0, off_813E0C8 // =reqBBS_jtDraw_813E0CC 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_813E0C4:    .word reqBBS_bxo_2001150
off_813E0C8:    .word reqBBS_jtDraw_813E0CC
reqBBS_jtDraw_813E0CC:    .word reqBBS_static_draw_813E0F8+1, reqBBS_draw_813E188+1, reqBBS_draw_813E1C8+1, reqBBS_draw_813E224+1
    .word reqBBS_draw_813E2AC+1, reqBBS_draw_813E33C+1, reqBBS_draw_813E398+1, reqBBS_draw_813E450+1
    .word reqBBS_draw_813E4AC+1, reqBBS_draw_813E4F4+1
    .word reqBBS_draw_813E3F4+1
.endfunc // reqBBS_cb_draw_813E0A4

.func
.thumb_func
// () -> int
reqBBS_static_draw_813E0F8:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
    strh r0, [r5,#0x20] // reqBBS_GUI.cursorPos
    strh r0, [r5,#0x24] // reqBBS_GUI.pagePos
    strh r0, [r5,#0x26] // reqBBS_GUI.RO_pagePos
    strb r0, [r5,#0x9] // reqBBS_GUI.animationTimer1
    strb r0, [r5,#0xb] // reqBBS_GUI.unk_0B
    bl reqBBS_static_813E6D0
    bl reqBBS_813E834
    bl reqBBS_813E890
    bl reqBBS_uncomp_813E5A0 // () -> void
    ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
    bl reqBBS_813E8CC
    bl reqBBS_813EEF4
    mov r7, r10
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x17
    bl sub_80015FC
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    // a1
    ldr r0, off_813E178 // =unk_813DBDC 
    bl sub_80465A0 // (void *a1) -> void
    ldrh r0, [r5,#0x1e] // reqBBS_GUI.totalNewRequests
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
    ldr r1, dword_813E17C // =0x5F40 
    strh r1, [r0]
    b loc_813E174
loc_813E15E:
    mov r0, #4
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    bl reqBBS_drawHeaderText
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813E180 // =0x5E40 
    strh r1, [r0]
    b loc_813E174
loc_813E174:
    mov r0, #0
    pop {pc}
off_813E178:    .word unk_813DBDC
dword_813E17C:    .word 0x5F40
dword_813E180:    .word 0x5E40
    .word 0x17A0
.endfunc // reqBBS_static_draw_813E0F8

.func
.thumb_func
// () -> int
reqBBS_draw_813E188:
    push {lr}
    ldr r0, dword_813E1C4 // =0x1F40 
    bl sub_8001778
    mov r7, r10
    ldr r7, [r7,#0x20] // Toolkit.unk_2009740
    ldrb r0, [r7,#6]
    cmp r0, #0
    ble loc_813E1A2
    sub r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
loc_813E1A2:
    ldrh r0, [r5,#0x20] // reqBBS_GUI.cursorPos
    strh r0, [r5,#0x22] // reqBBS_GUI.RO_cursorPos
    ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
    strh r0, [r5,#0x26] // reqBBS_GUI.RO_pagePos
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_813E1B6
    mov r0, #0
    bl reqBBS_static_813EC10
loc_813E1B6:
    bl reqBBS_813E534
    bl reqBBS_813EDE4
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_813E1C4:    .word 0x1F40
.endfunc // reqBBS_draw_813E188

.func
.thumb_func
reqBBS_draw_813E1C8:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813E220 // =0x1F40 
    strh r1, [r0]
    bl reqBBS_813E534
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_813E21C
    ldrb r0, [r5,#0x5] // reqBBS_GUI.numNewRequests
    ldr r1, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r1, [r1,#0x14] // reqbbs_gui.pad_10+4
    str r0, [r1]
    bl sub_809E122
    mov r0, r10
    ldr r0, [r0,#0x1c] // Toolkit.unk_200F3A0
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
.endfunc // reqBBS_draw_813E1C8

.func
.thumb_func
reqBBS_draw_813E224:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813E4A8 // =0x5F40 
    strh r1, [r0]
    mov r7, r10
    ldr r7, [r7,#0x20] // Toolkit.unk_2009740
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
    ldrb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
    sub r0, #1
    strb r0, [r5,#8]
    bgt loc_813E282
    mov r0, r10
    ldr r0, [r0,#0x2c]
    mov r1, #4
    str r1, [r0,#0x4c]
    ldrh r1, [r5,#0x24] // reqBBS_GUI.pagePos
    ldrh r2, [r5,#0x20] // reqBBS_GUI.cursorPos
    add r2, r2, r1
    ldr r7, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r0, [r7,#4]
    ldr r1, off_813E2A8 // =reqBBS_requestEntries_IDs 
    ldrb r1, [r1,r2]
    ldrb r2, [r5,#0x4] // reqBBS_GUI.unk_04
    lsl r2, r2, #2
    ldr r3, off_813E290 // =off_813E294 
    ldr r2, [r3,r2]
    bl chatbox_reqBBS_80404C0
    bl reqBBS_draw_chatbox
    bl reqBBS_drawHeaderText
    mov r0, #0x10
    strb r0, [r5]
loc_813E282:
    bl reqBBS_813E534
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
.endfunc // reqBBS_draw_813E224

.func
.thumb_func
reqBBS_draw_813E2AC:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20] // Toolkit.unk_2009740
    ldrb r0, [r7,#6]
    cmp r0, #0x40 
    bge loc_813E2C8
    add r0, #8
    strb r0, [r7,#6]
    lsr r0, r0, #4
    strb r0, [r7,#4]
    mov r7, r10
    ldr r0, [r7,#0x1c] // Toolkit.unk_200F3A0
    mov r1, #0x1b
    strb r1, [r0,#9]
loc_813E2C8:
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_813E320
    ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
    ldrh r1, [r5,#0x20] // reqBBS_GUI.cursorPos
    add r1, r1, r0
    ldr r0, off_813E338 // =reqBBS_requestEntries_IDs 
    ldr r2, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r2, [r2,#0xc]
    ldrb r0, [r0,r1]
    add r0, r0, r2
    mov r8, r0
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_813E2F6
    mov r0, r8
    bl loc_802F130 // (int a1, int a2) -> void
    ldrb r0, [r5,#5]
    add r0, #0
    strb r0, [r5,#5]
loc_813E2F6:
    bl chatbox_8040818
    bl reqBBS_813E834
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
    bl reqBBS_813E534
    bl reqBBS_813ED40
    mov r0, #0
    pop {pc}
loc_813E32C:
    bl reqBBS_813E534
    bl reqBBS_813E890
    mov r0, #0
    pop {pc}
off_813E338:    .word reqBBS_requestEntries_IDs
.endfunc // reqBBS_draw_813E2AC

.func
.thumb_func
reqBBS_draw_813E33C:
    push {lr}
    mov r7, r10
    ldr r7, [r7,#0x20] // Toolkit.unk_2009740
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
    ldrb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
    sub r0, #1
    strb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
    bgt loc_813E38E
    mov r0, #4
    strb r0, [r5]
    bl reqBBS_813E890
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
    bl reqBBS_813E534
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // reqBBS_draw_813E33C

.func
.thumb_func
reqBBS_draw_813E398:
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
    bl engine_isScreeneffectAnimating // () -> zf
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
    ldr r0, [r7,#0x1c] // Toolkit.unk_200F3A0
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
    bl reqBBS_813E534
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.endfunc // reqBBS_draw_813E398

.func
.thumb_func
reqBBS_draw_813E3F4:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#0x1c] // Toolkit.unk_200F3A0
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
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_813E446
    mov r7, r10
    ldr r7, [r7,#0x20] // Toolkit.unk_2009740
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
    bl reqBBS_813E534
    mov r0, #0
    pop {pc}
    .byte 0, 0
.endfunc // reqBBS_draw_813E3F4

.func
.thumb_func
reqBBS_draw_813E450:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813E4A8 // =0x5F40 
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
    ldr r0, off_813E4A4 // =reqBBS_dialogList 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    bl reqBBS_drawHeaderText
    mov r0, #0x20 
    strb r0, [r5]
loc_813E49A:
    bl reqBBS_813E534
.endfunc // reqBBS_draw_813E450

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_813E4A4:    .word reqBBS_dialogList
dword_813E4A8:    .word 0x5F40
.func
.thumb_func
reqBBS_draw_813E4AC:
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
    bl chatbox_8045F3C
    beq loc_813E4EC
    bl chatbox_8040818
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
    bl reqBBS_813E534
.endfunc // reqBBS_draw_813E4AC

    mov r0, #0
    pop {pc}
.func
.thumb_func
reqBBS_draw_813E4F4:
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
    bl reqBBS_813E890
loc_813E52A:
    bl reqBBS_813E534
.endfunc // reqBBS_draw_813E4F4

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
reqBBS_813E534:
    push {r5,lr}
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    ldrh r0, [r5,#0x24]
    bl reqBBS_813E8CC
    bl reqBBS_drawRequestBBS
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
    bl reqBBS_static_813EA94
    mov r0, #0xe4
    mov r1, #0x10
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_813E598 // =0x20002 
    ldrh r2, [r5,#0x1e]
    ldrh r3, [r5,#0x24]
    mov r4, #8
    ldr r6, dword_813E59C // =0xC000 
    mov r7, #0x7c 
    bl sub_811FA98
    pop {r5,pc}
dword_813E598:    .word 0x20002
dword_813E59C:    .word 0xC000
.endfunc // reqBBS_813E534

.func
.thumb_func
// () -> void
reqBBS_uncomp_813E5A0:
    push {r5,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #3
    ldr r3, off_813E5C8 // =dword_813DF7C+208 
    add r3, r3, r0
    push {r3}
    // src
    ldr r0, [r3]
    // dest
    ldr r1, off_813E5CC // =unk_2025A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r3}
    // src
    ldr r0, [r3,#4]
    // dest
    ldr r1, off_813E5D0 // =unk_2029A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    // src
    ldr r0, off_813E5D4 // =dword_87EE1AC 
    // dest
    ldr r1, off_813E5D8 // =unk_2033A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r5,pc}
off_813E5C8:    .word dword_813DF7C+0xD0
off_813E5CC:    .word unk_2025A00
off_813E5D0:    .word unk_2029A00
off_813E5D4:    .word dword_87EE1AC
off_813E5D8:    .word unk_2033A00
.endfunc // reqBBS_uncomp_813E5A0

.func
.thumb_func
reqBBS_813E5DC:
    push {r3,r7,lr}
    add r7, r0, #0
    mov r1, #2
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    add r0, r7, #0
    ldr r3, off_813E6A4 // =0x17A0 
    sub r0, r0, r3
    ldr r3, off_813E6A8 // =0x19A0 
    add r0, r0, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    ldr r1, off_813E6A4 // =0x17A0 
    sub r7, r7, r1
    lsr r3, r7, #6
    lsl r3, r3, #6
    ldr r2, off_813E6AC // =unk_2001400 
    add r2, r2, r3
    lsr r3, r3, #4
    ldr r1, off_813E6B0 // =unk_2000FC0 
    ldr r0, [r1,r3]
    lsl r7, r7, #0x1a
    lsr r7, r7, #0x1a
    strb r7, [r2,r0]
    add r0, #1
    str r0, [r1,r3]
    pop {r3,r7,pc}
.endfunc // reqBBS_813E5DC

.func
.thumb_func
reqBBS_813E616:
    push {lr}
    // mem
    ldr r0, off_813E6B4 // =unk_2001400 
    // byteCount
    ldr r1, byteCount // =0x200 
    // byte
    mov r2, #0x40 
    bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
    // memBlock
    ldr r0, off_813E6BC // =unk_2000FC0 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    // memBlock
    ldr r0, off_813E6C0 // =unk_2000FF0 
    // numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
.endfunc // reqBBS_813E616

.func
.thumb_func
reqBBS_dead_813E634:
    push {r4,lr}
    add r4, r0, #0
    lsl r0, r0, #6
    ldr r1, off_813E6C4 // =unk_2001400 
    // mem
    add r0, r0, r1
    // byteCount
    mov r1, #0x40 
    // byte
    mov r2, #0x40 
    bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
    lsl r0, r4, #2
    ldr r1, off_813E6C8 // =unk_2000FC0 
    // memBlock
    add r0, r0, r1
    // numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    lsl r0, r4, #2
    ldr r1, off_813E6CC // =unk_2000FF0 
    // memBlock
    add r0, r0, r1
    // numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r4,pc}
.endfunc // reqBBS_dead_813E634

.func
.thumb_func
reqBBS_dead_813E660:
    push {r4,r5,lr}
    ldr r3, off_813E688 // =dword_813E68C 
    mov r1, #0
loc_813E666:
    mov r2, #0
    lsl r1, r1, #2
loc_813E66A:
    ldr r0, [r3,r1]
    add r0, r0, r2
    push {r0-r3}
    bl reqBBS_813E5DC
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
byteCount:    .word 0x200
off_813E6BC:    .word unk_2000FC0
off_813E6C0:    .word unk_2000FF0
off_813E6C4:    .word unk_2001400
off_813E6C8:    .word unk_2000FC0
off_813E6CC:    .word unk_2000FF0
.endfunc // reqBBS_dead_813E660

.func
.thumb_func
reqBBS_static_813E6D0:
    push {r5,lr}
    bl sub_80017AA
    bl sub_80017E0
    // initRefs
    ldr r0, off_813E6F8 // =dword_813E6FC 
    bl decomp_initGfx_processArr_8000B30 // (u32 *initRefs) -> void
    ldrb r0, [r5,#4]
    ldr r1, off_813E754 // =off_813E758 
    lsl r0, r0, #2
    // initRefs
    ldr r0, [r1,r0]
    bl decomp_initGfx_processArr_8000B30 // (u32 *initRefs) -> void
    bl sub_800183C
    bl sub_8046664 // () -> void
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
.endfunc // reqBBS_static_813E6D0

.func
.thumb_func
reqBBS_813E834:
    push {r4-r7,lr}
    // mem
    ldr r0, off_813E88C // =reqBBS_requestEntries_IDs 
    // byteCount
    mov r1, #0x30 
    // byte
    mov r2, #0x2f 
    bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
    ldr r6, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r0, [r6,#0x10]
    ldr r0, [r0]
    strh r0, [r5,#0x1e] // reqBBS_GUI.totalNewRequests
    ldr r6, [r6,#0x18]
    ldr r7, off_813E88C // =reqBBS_requestEntries_IDs 
loc_813E84C:
    sub r0, #1
    blt loc_813E862
    ldrb r3, [r6,r0]
    strb r3, [r7]
    ldrb r2, [r5]
    tst r2, r2
    bne loc_813E85E
    bl reqBBS_813ED60
loc_813E85E:
    add r7, #1
    b loc_813E84C
loc_813E862:
    mov r0, #0
    ldr r1, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
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
    bl zf_802F168 // (int a1, int a2) -> zf
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
.endfunc // reqBBS_813E834

.func
.thumb_func
reqBBS_813E890:
    push {r4-r7,lr}
    add r7, r5, #0
    // j
    mov r0, #5
    // i
    mov r1, #3
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_813E8C8 // =unk_813DBE4 
    mov r4, #0x17
    mov r5, #0x10
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldr r3, [r7,#0x28]
    // tileRefs
    ldr r3, [r3,#0x1c]
    // j
    mov r0, #0
    // i
    mov r1, #0
    // cpyOff
    mov r2, #1
    mov r4, #0x1e
    mov r5, #0x14
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
    pop {r4-r7,pc}
off_813E8C8:    .word unk_813DBE4
.endfunc // reqBBS_813E890

.func
.thumb_func
reqBBS_813E8CC:
    push {r4-r7,lr}
    ldr r1, off_813E90C // =reqBBS_requestEntries_IDs 
    ldr r7, [r5,#0x28]
    ldr r7, [r7]
    add r5, r0, r1
    add r0, r7, #0
    mov r1, #0
    ldr r2, off_813E900 // =decomp_2013A00 
    ldr r3, dword_813E904 // =0x6004000 
    ldr r6, off_813E908 // =dword_86A5D60 
loc_813E8E0:
    push {r0-r3,r5,r6}
    ldrb r1, [r5,r1]
    mov r4, #0x17
    mov r5, #1
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r0-r3,r5,r6}
    mov r4, #0x80
    lsl r4, r4, #4
    add r2, r2, r4
    add r3, r3, r4
    add r1, #1
    cmp r1, #8
    blt loc_813E8E0
    pop {r4-r7,pc}
off_813E900:    .word decomp_2013A00
dword_813E904:    .word 0x6004000
off_813E908:    .word dword_86A5D60
off_813E90C:    .word reqBBS_requestEntries_IDs
.endfunc // reqBBS_813E8CC

.func
.thumb_func
reqBBS_dead_813E910:
    push {r4-r7,lr}
    ldr r0, off_813E97C // =unk_2018A04 
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
    ldr r4, off_813EA90 // =reqBBS_requestEntries_IDs 
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
    bl zf_802F168 // (int a1, int a2) -> zf
    pop {r3}
    beq loc_813E968
    push {r4-r7}
    mov r1, r10
    ldr r3, [r1,#0x24]
    ldrh r3, [r3]
    mov r7, #0x1f
    and r3, r7
    lsl r3, r3, #2
    ldr r0, off_813E988 // =dword_813E990 
    ldr r0, [r0,r3]
    mov r2, #8
    mul r2, r6
    ldr r1, off_813E97C // =unk_2018A04 
    str r0, [r1,r2]
    add r2, #4
    ldr r0, off_813E98C // =dword_813EA10 
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
    ldr r3, off_813E97C // =unk_2018A04 
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
.endfunc // reqBBS_dead_813E910

.func
.thumb_func
reqBBS_static_813EA94:
    push {r0-r7,lr}
    ldrh r7, [r5,#0x24] // reqBBS_GUI.pagePos
    mov r6, r10
    ldr r6, [r6,#0x24] // Toolkit.currFrame
    ldrh r6, [r6]
    mov r4, #0x1f
    and r4, r6
    lsl r4, r4, #2
    mov r6, #0
loc_813EAA6:
    ldr r3, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r3, [r3,#0xc]
    ldr r2, off_813EB08 // =reqBBS_requestEntries_IDs 
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_813EAD6
    push {r4-r7}
    // j
    mov r0, #2
    mov r1, #2
    mul r1, r6
    // i
    add r1, #3
    // cpyOff
    mov r2, #2
    ldr r3, off_813EB0C // =off_813EB10 
    // tileRefs
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
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
.endfunc // reqBBS_static_813EA94

    pop {r4-r7}
loc_813EAEE:
    add r6, #1
    cmp r6, #8
    bne loc_813EAA6
    mov r0, #0x13
    mov r1, #0
    mov r2, #2
    ldr r3, off_813EB0C // =off_813EB10 
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
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
.func
.thumb_func
reqBBS_static_813EC10:
    push {r4-r7,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_813EC26
    bl reqBBS_static_813EC54
    b locret_813EC4C
loc_813EC26:
    ldrh r1, [r5,#0x1e]
    cmp r1, #0
    beq locret_813EC4C
    mov r1, #1
    tst r1, r0
    beq loc_813EC38
    bl reqBBS_static_813EC6C
    b locret_813EC4C
loc_813EC38:
    ldrh r0, [r7,#4]
    ldr r1, off_813EC50 // =0x3C0 
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
.endfunc // reqBBS_static_813EC10

.func
.thumb_func
reqBBS_static_813EC54:
    push {lr}
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x68 
    bl sound_play // () -> void
    pop {pc}
    .balign 4, 0x00
.endfunc // reqBBS_static_813EC54

.func
.thumb_func
reqBBS_static_813EC6C:
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
    bl sound_play // () -> void
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
.endfunc // reqBBS_static_813EC6C

    pop {r5}
    bl reqBBS_drawHeaderText
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    pop {pc}
.func
.thumb_func
reqBBS_draw_chatbox:
    push {r4-r7,lr}
    // tileRefs
    ldr r3, off_813ECD4 // =unk_2018A04 
    // j
    mov r0, #2
    // i
    mov r1, #5
    // cpyOff
    mov r2, #1
    mov r4, #0x1a
    mov r5, #0xa
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
off_813ECD4:    .word unk_2018A04
.endfunc // reqBBS_draw_chatbox

.func
.thumb_func
reqBBS_dead_813ECD8:
    push {r4-r7,lr}
    ldr r3, off_813ECF0 // =unk_2018A04 
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
.endfunc // reqBBS_dead_813ECD8

.func
.thumb_func
dead_813ECF4:
    push {r4-r7,lr}
    // j
    mov r0, #3
    // i
    mov r1, #5
    // cpyOff
    mov r2, #1
    // tileRefs
    ldr r3, off_813ED08 // =unk_2018A04 
    mov r4, #0x18
    mov r5, #0xa
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
off_813ED08:    .word unk_2018A04
.endfunc // dead_813ECF4

.func
.thumb_func
reqBBS_drawHeaderText:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
    ldrh r1, [r5,#0x20] // reqBBS_GUI.cursorPos
    add r0, r0, r1
    ldr r1, off_813ED30 // =reqBBS_requestEntries_IDs 
    ldrb r1, [r1,r0]
    ldr r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r0, [r0]
    ldr r2, off_813ED34 // =unk_201B200 
    ldr r3, dword_813ED38 // =0x6008400 
    mov r4, #0x17
    mov r5, #1
    ldr r6, off_813ED3C // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
    .byte 0, 0
off_813ED30:    .word reqBBS_requestEntries_IDs
off_813ED34:    .word unk_201B200
dword_813ED38:    .word 0x6008400
off_813ED3C:    .word dword_86A5D60
.endfunc // reqBBS_drawHeaderText

.func
.thumb_func
reqBBS_813ED40:
    push {r4-r7,lr}
    ldr r0, off_813ED58 // =unk_813DEC4 
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_813ED58:    .word unk_813DEC4
.endfunc // reqBBS_813ED40

.func
.thumb_func
reqBBS_813ED5C:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // reqBBS_813ED5C

.func
.thumb_func
reqBBS_813ED60:
    push {r0,r4-r7,lr}
    ldrh r6, [r5,#0x1e]
    tst r6, r6
    beq locret_813ED90
    mov r0, #0
    ldr r1, off_813ED94 // =reqBBS_requestEntries_IDs 
    sub r7, r7, r1
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0xc]
    add r3, r3, r1
    add r0, r3, #0
    bl zf_802F168 // (int a1, int a2) -> zf
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
    strh r0, [r5,#0x20] // reqBBS_GUI.cursorPos
    strh r2, [r5,#0x24] // reqBBS_GUI.pagePos
    strh r2, [r5,#0x26] // reqBBS_GUI.RO_pagePos
locret_813ED90:
    pop {r0,r4-r7,pc}
    .balign 4, 0x00
off_813ED94:    .word reqBBS_requestEntries_IDs
.endfunc // reqBBS_813ED60

.func
.thumb_func
reqBBS_813ED98:
    push {r0-r7,lr}
    ldrh r7, [r5,#0x1e] // reqBBS_GUI.totalNewRequests
    ldrh r6, [r5,#0x20] // reqBBS_GUI.cursorPos
    ldrh r4, [r5,#0x24] // reqBBS_GUI.pagePos
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
.endfunc // reqBBS_813ED98

.func
.thumb_func
reqBBS_813EDE4:
    push {r0-r7,lr}
    ldrb r0, [r5,#9]
    ldr r1, off_813EE3C // =dword_813EE40+2 
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, off_813EE34 // =unk_201AA04 
    add r0, r0, r2
    ldr r1, dword_813EE38 // =0x6017F80 
    mov r2, #0x80
    bl loc_8000AC8
    ldrh r1, [r5,#0x20]
    mov r0, #3
    mov r3, #0x10
    mul r1, r3
    add r1, #0x18
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#9]
    ldr r3, off_813EE3C // =dword_813EE40+2 
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_813EE18
    mov r2, #1
    ldrh r1, [r3]
loc_813EE18:
    strb r2, [r5,#9]
    ldr r2, dword_813EE30 // =0x40000000 
    orr r0, r2
    ldr r1, dword_813EE40 // =0xC3FC 
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
.endfunc // reqBBS_813EDE4

.func
.thumb_func
reqBBS_813EE58:
    push {r5,lr}
    ldr r0, dword_813EEEC // =0x3FFFFFFF 
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
    ldr r5, off_813EEF0 // =byte_2008450 
    bl sub_8002FA6
    pop {r5,pc}
dword_813EEEC:    .word 0x3FFFFFFF
off_813EEF0:    .word byte_2008450
.endfunc // reqBBS_813EE58

.func
.thumb_func
reqBBS_813EEF4:
    push {r4-r7,lr}
    ldr r0, off_813EF10 // =reqBBS_dialogList 
    ldr r1, off_813EF20 // =dword_813EF24 
    ldrb r2, [r5,#4]
    ldrb r1, [r1,r2]
    ldr r2, off_813EF14 // =unk_201CA00 
    ldr r3, dword_813EF18 // =0x6003C00 
    mov r4, #0xc
    mov r5, #1
    ldr r6, off_813EF1C // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // reqBBS_813EEF4

    pop {r4-r7,pc}
off_813EF10:    .word reqBBS_dialogList
off_813EF14:    .word unk_201CA00
dword_813EF18:    .word 0x6003C00
off_813EF1C:    .word dword_86B7AE0
off_813EF20:    .word dword_813EF24
dword_813EF24:    .word 0x9080706, 0xA
.func
.thumb_func
reqBBS_drawRequestBBS:
    push {r4-r7,lr}
    // j
    mov r0, #1
    // i
    mov r1, #0
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_813EF40 // =dword_813DF44 
    mov r4, #0xc
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
off_813EF40:    .word dword_813DF44
reqBBS_entriesGfx:    .byte 0x35, 0x0, 0x0, 0xFF, 0xFF
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
reqBBS_textualPointers:    .word reqBBS_requestNames_textualData
    .word reqBBS_requestInfo_textOffsets
dword_813F354:    .word 0x1B60, 0x1BA0, 0x1BE0, 0x1C20
dword_813F364:    .word 0x1C60
    .word reqBBS_numRequestsSent
    .word unk_2000770
    .word reqBBS_requestEntriesList
    .word reqBBS_tile_data
off_813F378:    .word dword_87EE2F0
    .word dword_87EE5B0
dword_813F380:    .word 0x1000000, 0x1010000, 0x1000000, 0x1000002, 0x1010102
    .word 0x3030302, 0x2020103, 0x1000101, 0x20202, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0
.endfunc // reqBBS_drawRequestBBS

.func
.thumb_func
reqBBS_init_s_2005780:
    push {r4-r7,lr}
    push {r0}
    // memBlock
    ldr r0, off_813F400 // =sReqBBS_GUI 
    mov r1, #0xd // reqBBS_GUI.numPoints
    ldrb r1, [r0,r1]
    mov r2, #0xe // reqBBS_GUI.totalPointsIndex
    ldrb r2, [r0,r2]
    mov r3, #0xf // (sreqbbs_gui.unk_0f - 0x2005780)
    ldrb r3, [r0,r3]
    push {r1-r3}
    // numWords
    mov r1, #0x2c 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r1-r3}
    ldr r0, off_813F400 // =sReqBBS_GUI 
    mov r4, #0xd // reqBBS_GUI.numPoints
    strb r1, [r0,r4]
    mov r4, #0xe // reqBBS_GUI.totalPointsIndex
    strb r2, [r0,r4]
    mov r4, #0xf // reqBBS_GUI.unk_0F
    strb r3, [r0,r4]
    pop {r0}
    ldr r5, off_813F400 // =sReqBBS_GUI 
    strb r0, [r5,#0x4] // reqBBS_GUI.unk_04
    ldr r2, off_813F3FC // =reqBBS_textualPointers 
    mov r1, #0x2c 
    mul r0, r1
    add r0, r0, r2
    str r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    pop {r4-r7,pc}
off_813F3FC:    .word reqBBS_textualPointers
off_813F400:    .word sReqBBS_GUI
.endfunc // reqBBS_init_s_2005780

.func
.thumb_func
reqBBS_cb_813F404:
    push {r4-r7,lr}
    mov r1, r8
    mov r2, r9
    mov r3, r12
    push {r1-r3}
    ldr r5, off_813F424 // =sReqBBS_GUI 
    ldr r0, off_813F428 // =jt_813F42C 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r1-r3}
    mov r8, r1
    mov r9, r2
    mov r12, r3
    pop {r4-r7,pc}
off_813F424:    .word sReqBBS_GUI
off_813F428:    .word jt_813F42C
jt_813F42C:    .word reqBBS_813F474+1
    .word reqBBS_813F550+1
    .word reqBBS_813F590+1
    .word reqBBS_813F5EC+1
    .word reqBBS_813F65C+1
    .word reqBBS_813F6F8+1
    .word reqBBS_813F754+1
    .word reqBBS_813F80C+1
    .word reqBBS_813F868+1
    .word reqBBS_813F8B0+1
    .word reqBBS_813F7B0+1
    .word reqBBS_813FA54+1
    .word reqBBS_813FAB0+1
    .word reqBBS_813FB24+1
    .word reqBBS_813FBC0+1
    .word reqBBS_813FC30+1
    .word reqBBS_813FC8C+1
    .word reqBBS_813FD14+1
.endfunc // reqBBS_cb_813F404

.func
.thumb_func
reqBBS_813F474:
    push {lr}
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_813F4B6
    ldr r0, off_813F548 // =sReqBBS_GUI 
    ldr r1, dword_813F544 // =0xF 
    ldrb r2, [r0,r1]
    ldr r3, off_813F54C // =reqBBS_textualPointers 
    ldr r3, [r3,#0x18] // (dword_813F364 - 0x813f34c)
    add r2, r2, r3
    add r0, r2, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_813F4B6
    ldr r0, off_813F548 // =sReqBBS_GUI 
    ldr r1, dword_813F544 // =0xF 
    ldrb r2, [r0,r1]
    ldr r3, off_813F54C // =reqBBS_textualPointers 
    ldr r3, [r3,#0x14] // (dword_813F354+0xC - 0x813f34c)
    add r2, r2, r3
    // a1
    add r0, r2, #0
    bl sub_802F114 // (int a1) -> void
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F12C // (int a1, int a2) -> void
    ldr r0, off_813F548 // =sReqBBS_GUI 
    ldr r1, dword_813F544 // =0xF 
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
    bl reqBBS_813FDA8
    bl reqBBS_813FE54
    bl reqBBS_813FEB0
.endfunc // reqBBS_813F474

    bl reqBBS_copyTextDataToRAM
    ldrh r0, [r5,#0x24]
    bl reqBBS_renderRequestNames
    bl reqBBS_81405C0
    mov r7, r10
    bl sub_8001788
    bl sub_80017A0
    mov r0, #0x17
    bl sub_80015FC
    mov r0, #8
    mov r1, #0x10
    bl engine_setScreeneffect
    ldr r0, off_813F534 // =reqBBS_entriesGfx 
    bl sub_80465A0 // (void *a1) -> void
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
    ldr r1, dword_813F538 // =0x5F40 
    strh r1, [r0]
    b loc_813F530
loc_813F51A:
    mov r0, #4
    strb r0, [r5]
    mov r0, #5
    strb r0, [r5,#8]
    bl reqBBS_renderSelectedEntry_HeaderText
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813F53C // =0x5E40 
    strh r1, [r0]
    b loc_813F530
loc_813F530:
    mov r0, #0
    pop {pc}
off_813F534:    .word reqBBS_entriesGfx
dword_813F538:    .word 0x5F40
dword_813F53C:    .word 0x5E40
    .word 0x17A0
dword_813F544:    .word 0xF
off_813F548:    .word sReqBBS_GUI
off_813F54C:    .word reqBBS_textualPointers
.func
.thumb_func
reqBBS_813F550:
    push {lr}
    ldr r0, dword_813F58C // =0x1F40 
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
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_813F57E
    mov r0, #0
    bl reqBBS_8140358
loc_813F57E:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813F550

    bl reqBBS_animateCursor
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
dword_813F58C:    .word 0x1F40
.func
.thumb_func
reqBBS_813F590:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813F5E8 // =0x1F40 
    strh r1, [r0]
    bl reqBBS_813F8F0
.endfunc // reqBBS_813F590

    bl engine_isScreeneffectAnimating // () -> zf
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
.func
.thumb_func
reqBBS_813F5EC:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813F864 // =0x5F40 
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
    ldr r1, off_813F658 // =reqBBS_requestEntries_IDs 
    ldrb r1, [r1,r2]
    ldr r2, off_813F654 // =reqBBS_textualShades 
    bl chatbox_reqBBS_80404C0
    bl reqBBS_8140600
    bl reqBBS_drawChatbox_dup1
    bl reqBBS_renderSelectedEntry_HeaderText
    mov r0, #0x10
    strb r0, [r5]
loc_813F648:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813F5EC

    mov r0, #0
    pop {pc}
    .word 0x800
off_813F654:    .word reqBBS_textualShades
off_813F658:    .word reqBBS_requestEntries_IDs
.func
.thumb_func
reqBBS_813F65C:
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
    bl chatbox_8045F3C
    beq loc_813F6CE
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r1, r1, r0
    ldr r0, off_813F6EC // =reqBBS_requestEntries_IDs 
    ldr r2, [r5,#0x28]
    ldr r2, [r2,#0xc]
    ldrb r0, [r0,r1]
    add r0, r0, r2
    mov r8, r0
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_813F6A6
    mov r0, r8
    bl loc_802F130 // (int a1, int a2) -> void
    ldrb r0, [r5,#5]
    add r0, #0
    strb r0, [r5,#5]
loc_813F6A6:
    bl chatbox_8040818
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r1, off_813F6EC // =reqBBS_requestEntries_IDs 
    ldrb r0, [r1,r0]
    bl reqBBS_8140868
    tst r0, r0
    beq loc_813F6C0
    mov r1, #2
    b loc_813F6C2
loc_813F6C0:
    mov r1, #0x11
loc_813F6C2:
    ldr r0, off_813F6F4 // =reqBBS_dialogList 
    ldr r2, off_813F6F0 // =reqBBS_textualShades 
    bl chatbox_reqBBS_80404C0
    mov r0, #0x40 
    strb r0, [r5]
loc_813F6CE:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813F65C

    bl reqBBS_8140588
    bl reqBBS_81402CC
    mov r0, #0
    pop {pc}
    bl reqBBS_813F8F0
    bl reqBBS_813FEB0
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
off_813F6EC:    .word reqBBS_requestEntries_IDs
off_813F6F0:    .word reqBBS_textualShades
off_813F6F4:    .word reqBBS_dialogList
.func
.thumb_func
reqBBS_813F6F8:
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
    bl reqBBS_813FEB0
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
.endfunc // reqBBS_813F6F8

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
reqBBS_813F754:
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
    bl engine_isScreeneffectAnimating // () -> zf
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
.endfunc // reqBBS_813F754

    mov r0, #0
    pop {pc}
    .byte 0, 0
.func
.thumb_func
reqBBS_813F7B0:
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
    bl engine_isScreeneffectAnimating // () -> zf
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
.endfunc // reqBBS_813F7B0

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
reqBBS_813F80C:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813F864 // =0x5F40 
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
    ldr r0, off_813F860 // =reqBBS_dialogList 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    bl reqBBS_renderSelectedEntry_HeaderText
    mov r0, #0x20 
    strb r0, [r5]
loc_813F856:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813F80C

    mov r0, #0
    pop {pc}
    .byte 0, 0
off_813F860:    .word reqBBS_dialogList
dword_813F864:    .word 0x5F40
.func
.thumb_func
reqBBS_813F868:
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
    bl chatbox_8045F3C
    beq loc_813F8A8
    bl chatbox_8040818
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
.endfunc // reqBBS_813F868

    mov r0, #0
    pop {pc}
.func
.thumb_func
reqBBS_813F8B0:
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
    bl reqBBS_813FEB0
loc_813F8E6:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813F8B0

    mov r0, #0
    pop {pc}
    .byte 0, 0
.func
.thumb_func
reqBBS_813F8F0:
    push {r5,lr}
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    ldrh r0, [r5,#0x24]
    bl reqBBS_renderRequestNames
.endfunc // reqBBS_813F8F0

    bl reqBBS_81405E8
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
    bl reqBBS_anim_814004C
    bl reqBBS_renderRequestStatus
    bl reqBBS_renderRankStars
    mov r0, #0xe4
    mov r1, #0x10
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_813F95C // =0x20002 
    ldrh r2, [r5,#0x1e]
    ldrh r3, [r5,#0x24]
    mov r4, #8
    ldr r6, dword_813F960 // =0xC000 
    mov r7, #0x7c 
    bl sub_811FA98
    pop {r5,pc}
dword_813F95C:    .word 0x20002
dword_813F960:    .word 0xC000
.func
.thumb_func
reqBBS_copyTextDataToRAM:
    push {r5,lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #3
    ldr r3, off_813F98C // =off_813F378 
    add r3, r3, r0
    push {r3}
    // src
    ldr r0, [r3]
    // dest
    ldr r1, off_813F990 // =unk_2025A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r3}
    // src
    ldr r0, [r3,#4]
    // dest
    ldr r1, off_813F994 // =unk_2029A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    // src
    ldr r0, off_813F998 // =dword_87EFE14 
    // dest
    ldr r1, off_813F99C // =unk_2033A00 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    pop {r5,pc}
off_813F98C:    .word off_813F378
off_813F990:    .word unk_2025A00
off_813F994:    .word unk_2029A00
off_813F998:    .word dword_87EFE14
off_813F99C:    .word unk_2033A00
.endfunc // reqBBS_copyTextDataToRAM

.func
.thumb_func
reqBBS_813F9A0:
    push {r3,r7,lr}
    add r7, r0, #0
    mov r1, #2
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    add r0, r7, #0
    ldr r3, off_813FD74 // =0x1B60 
    sub r0, r0, r3
    ldr r3, off_813FD78 // =0x1BA0 
    add r0, r0, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    ldr r1, off_813FD74 // =0x1B60 
    sub r7, r7, r1
    lsr r3, r7, #6
    lsl r3, r3, #6
    ldr r2, off_813FD7C // =reqBBS_requestEntriesList 
    add r2, r2, r3
    lsr r3, r3, #4
    ldr r1, off_813FD80 // =reqBBS_numRequestsSent 
    ldr r0, [r1,r3]
    lsl r7, r7, #0x1a
    lsr r7, r7, #0x1a
    strb r7, [r2,r0]
    add r0, #1
    str r0, [r1,r3]
    pop {r3,r7,pc}
.endfunc // reqBBS_813F9A0

.func
.thumb_func
reqBBS_initMemory_813F9DA:
    push {lr}
    // mem
    ldr r0, off_813FD84 // =reqBBS_requestEntriesList 
    // byteCount
    mov r1, #0x80
    // byte
    mov r2, #0x80
    bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
    // memBlock
    ldr r0, off_813FD88 // =reqBBS_numRequestsSent 
    // numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    // memBlock
    ldr r0, off_813FD8C // =unk_2000770 
    // numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
.endfunc // reqBBS_initMemory_813F9DA

.func
.thumb_func
reqBBS_dead_initMemory_813F9F8:
    push {r4,lr}
    add r4, r0, #0
    lsl r0, r0, #7
    ldr r1, off_813FD90 // =reqBBS_requestEntriesList 
    // mem
    add r0, r0, r1
    // byteCount
    mov r1, #0x80
    // byte
    mov r2, #0x80
    bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
    lsl r0, r4, #2
    ldr r1, off_813FD94 // =reqBBS_numRequestsSent 
    // memBlock
    add r0, r0, r1
    // numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    lsl r0, r4, #2
    ldr r1, off_813FD98 // =unk_2000770 
    // memBlock
    add r0, r0, r1
    // numWords
    mov r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {r4,pc}
.endfunc // reqBBS_dead_initMemory_813F9F8

    push {r4,r5,lr}
    ldr r3, off_813FA4C // =dword_813FA50 
    mov r1, #0
loc_813FA2A:
    mov r2, #0
    lsl r1, r1, #2
loc_813FA2E:
    ldr r0, [r3,r1]
    add r0, r0, r2
    push {r0-r3}
    bl reqBBS_813F9A0
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
.func
.thumb_func
reqBBS_813FA54:
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
    bl engine_isScreeneffectAnimating // () -> zf
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
.endfunc // reqBBS_813FA54

    mov r0, #0
    pop {pc}
    .byte 0, 0
.func
.thumb_func
reqBBS_813FAB0:
    push {lr}
    mov r7, r10
    ldr r0, [r7,#8]
    ldr r1, dword_813FB14 // =0x5F40 
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
    ldr r0, off_813FD9C // =sChatbox 
    ldr r1, off_813FDA0 // =sReqBBS_GUI 
    ldr r2, dword_813FB1C // =0xF 
    ldr r3, off_813FB20 // =0x50 
    ldrb r1, [r1,r2]
    str r1, [r0,r3]
    ldr r0, off_813FB18 // =reqBBS_dialogList 
    mov r1, #6
    ldr r2, off_813FB10 // =reqBBS_textualShades 
    bl chatbox_reqBBS_80404C0
    bl reqBBS_drawSelectChatbox
    bl reqBBS_changeChatboxHeader
    mov r0, #0x34 
    strb r0, [r5]
loc_813FB02:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813FAB0

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word 0x800
off_813FB10:    .word reqBBS_textualShades
dword_813FB14:    .word 0x5F40
off_813FB18:    .word reqBBS_dialogList
dword_813FB1C:    .word 0xF
off_813FB20:    .word 0x50
.func
.thumb_func
reqBBS_813FB24:
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
    bl chatbox_8045F3C
    beq loc_813FB98
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_813FB6E
    ldr r0, off_813FBB4 // =reqBBS_requestInfo_textOffsets 
    ldr r1, off_813FDA4 // =sReqBBS_GUI 
    ldr r2, dword_813FBBC // =0xF 
    ldrb r1, [r1,r2]
    ldr r2, off_813FBB8 // =reqBBS_textualShades 
    bl chatbox_reqBBS_80404C0
    mov r0, #0x38 
    strb r0, [r5]
    bl reqBBS_drawChatbox_dup1
    bl reqBBS_setChatboxHeaderBasedOn_0F
    b loc_813FB98
loc_813FB6E:
    bl chatbox_8040818
    bl reqBBS_813FE54
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
    bl reqBBS_81405A4
    mov r0, #0
    pop {pc}
loc_813FBA4:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813FB24

    bl reqBBS_813FEB0
    mov r0, #0
    pop {pc}
    .word reqBBS_requestEntries_IDs
off_813FBB4:    .word reqBBS_requestInfo_textOffsets
off_813FBB8:    .word reqBBS_textualShades
dword_813FBBC:    .word 0xF
.func
.thumb_func
reqBBS_813FBC0:
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
    bl chatbox_8045F3C
    beq loc_813FC0E
    bl chatbox_8040818
    bl reqBBS_813FE54
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
    bl reqBBS_8140588
    bl reqBBS_814030C
    mov r0, #0
    pop {pc}
loc_813FC1E:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813FBC0

    bl reqBBS_813FEB0
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
    .word reqBBS_requestEntries_IDs
.func
.thumb_func
reqBBS_813FC30:
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
    bl reqBBS_813FEB0
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
.endfunc // reqBBS_813FC30

    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
reqBBS_813FC8C:
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
    bl reqBBS_81408F0
    tst r0, r0
    beq loc_813FCBE
    add r1, r0, #0
    ldr r0, off_813FD0C // =reqBBS_dialogList 
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
    mov r0, #0x44 
    strb r0, [r5]
    b loc_813FCF0
loc_813FCBE:
    mov r0, #8
    bl chatbox_8045F3C
    beq loc_813FCF0
    bl chatbox_8040818
    bl reqBBS_813FE54
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
    bl reqBBS_8140588
    bl reqBBS_81402CC
    mov r0, #0
    pop {pc}
loc_813FD00:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813FC8C

    bl reqBBS_813FEB0
    mov r0, #0
    pop {pc}
off_813FD0C:    .word reqBBS_dialogList
    .word reqBBS_requestEntries_IDs
.func
.thumb_func
reqBBS_813FD14:
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
    bl chatbox_8045F3C
    beq loc_813FD6C
    bl chatbox_8040818
    bl reqBBS_813FE54
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
    bl reqBBS_813FEB0
    mov r0, #0
    pop {pc}
loc_813FD6C:
    bl reqBBS_813F8F0
.endfunc // reqBBS_813FD14

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
off_813FD9C:    .word sChatbox
off_813FDA0:    .word sReqBBS_GUI
off_813FDA4:    .word sReqBBS_GUI
.func
.thumb_func
reqBBS_813FDA8:
    push {r5,lr}
    bl sub_80017AA
    bl sub_80017E0
    // initRefs
    ldr r0, off_813FDC8 // =dword_813FDCC 
    bl decomp_initGfx_processArr_8000B30 // (u32 *initRefs) -> void
    bl reqBBS_8140600
    bl sub_800183C
    bl sub_8046664 // () -> void
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
.endfunc // reqBBS_813FDA8

.func
.thumb_func
reqBBS_813FE54:
    push {r4-r7,lr}
    // mem
    ldr r0, off_813FEAC // =reqBBS_requestEntries_IDs 
    // byteCount
    mov r1, #0x30 
    // byte
    mov r2, #0x2f 
    bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
    ldr r6, [r5,#0x28]
    ldr r0, [r6,#0x1c]
    ldr r0, [r0]
    strh r0, [r5,#0x1e]
    ldr r6, [r6,#0x24]
    ldr r7, off_813FEAC // =reqBBS_requestEntries_IDs 
loc_813FE6C:
    sub r0, #1
    blt loc_813FE82
    ldrb r3, [r6,r0]
    strb r3, [r7]
    ldrb r2, [r5]
    tst r2, r2
    bne loc_813FE7E
    bl reqBBS_8140604
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
    bl zf_802F168 // (int a1, int a2) -> zf
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
.endfunc // reqBBS_813FE54

.func
.thumb_func
reqBBS_813FEB0:
    push {r4-r7,lr}
    add r7, r5, #0
    // j
    mov r0, #5
    // i
    mov r1, #3
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_813FEE8 // =unk_813EF4C 
    mov r4, #0x17
    mov r5, #0x10
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // reqBBS_813FEB0

    ldr r3, [r7,#0x28]
    ldr r3, [r3,#0x28]
    mov r0, #0
    mov r1, #0
    mov r2, #1
    mov r4, #0x1e
    mov r5, #0x14
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    mov r0, #0
    mov r1, #0
    mov r2, #3
    mov r3, #0
    mov r4, #0x1e
    mov r5, #0x14
    bl sub_80018D0
    pop {r4-r7,pc}
off_813FEE8:    .word unk_813EF4C
.func
.thumb_func
reqBBS_renderRequestNames:
    push {r4-r7,lr}
    ldr r1, off_813FF2C // =reqBBS_requestEntries_IDs 
    ldr r7, [r5,#0x28]
    ldr r7, [r7]
    add r5, r0, r1
    add r0, r7, #0
    mov r1, #0
    ldr r2, off_813FF20 // =decomp_2013A00 
    ldr r3, dword_813FF24 // =0x6004000 
    ldr r6, off_813FF28 // =dword_86A5D60 
loc_813FF00:
    push {r0-r3,r5,r6}
    ldrb r1, [r5,r1]
    mov r4, #0x17
    mov r5, #1
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r0-r3,r5,r6}
    mov r4, #0x80
    lsl r4, r4, #4
    add r2, r2, r4
    add r3, r3, r4
    add r1, #1
    cmp r1, #8
    blt loc_813FF00
    pop {r4-r7,pc}
off_813FF20:    .word decomp_2013A00
dword_813FF24:    .word 0x6004000
off_813FF28:    .word dword_86A5D60
off_813FF2C:    .word reqBBS_requestEntries_IDs
.endfunc // reqBBS_renderRequestNames

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
.func
.thumb_func
reqBBS_anim_814004C:
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
    ldr r2, off_81400C0 // =reqBBS_requestEntries_IDs 
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_814008E
    push {r4-r7}
    // j
    mov r0, #2
    mov r1, #2
    mul r1, r6
    // i
    add r1, #3
    // cpyOff
    mov r2, #2
    ldr r3, off_81400C4 // =pt_81400C8 
    // tileRefs
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
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
    pop {r4-r7}
loc_81400A6:
    add r6, #1
    cmp r6, #8
    bne loc_814005E
    // j
    mov r0, #0x15
    // i
    mov r1, #0
    // cpyOff
    mov r2, #2
    ldr r3, off_81400C4 // =pt_81400C8 
    // tileRefs
    ldr r3, [r3,r4]
    mov r4, #2
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r0-r7,pc}
off_81400C0:    .word reqBBS_requestEntries_IDs
off_81400C4:    .word pt_81400C8
pt_81400C8:    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140148
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
    .word dword_8140188
dword_8140148:    .word 0x810080, 0x830082, 0x830081, 0x840082, 0x830081
    .word 0x840082, 0x830081, 0x840082, 0x830081, 0x840082
    .word 0x830081, 0x840082, 0x830081, 0x840082, 0x830081
    .word 0x840082
dword_8140188:    .word 0x850084, 0x870086, 0x850084, 0x870086, 0x850084
    .word 0x870086, 0x850084, 0x870086, 0x850084, 0x870086
    .word 0x850084, 0x870086, 0x850084, 0x870086, 0x850084
    .word 0x870086
.endfunc // reqBBS_anim_814004C

.func
.thumb_func
reqBBS_renderRequestStatus:
    push {r4-r7,lr}
    ldrh r7, [r5,#0x24] // reqBBS_GUI.pagePos
    mov r6, #0
loc_81401CE:
    ldr r3, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r3, [r3,#0x14]
    ldr r2, off_8140230 // =reqBBS_requestEntries_IDs 
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_81401FC
    push {r4-r7}
    // j
    mov r0, #2
    mov r1, #2
    mul r1, r6
    // i
    add r1, #3
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_8140234 // =dword_8140238 
    mov r4, #2
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7}
    b loc_8140228
loc_81401FC:
    ldr r3, [r5,#0x28]
    ldr r3, [r3,#0x10]
    ldr r2, off_8140230 // =reqBBS_requestEntries_IDs 
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_8140228
    push {r4-r7}
    // j
    mov r0, #2
    mov r1, #2
    mul r1, r6
    // i
    add r1, #3
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_8140240 // =unk_8140244 
    mov r4, #2
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
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
.endfunc // reqBBS_renderRequestStatus

.func
.thumb_func
reqBBS_renderRankStars:
    push {r4-r7,lr}
    ldrh r7, [r5,#0x24] // reqBBS_GUI.pagePos
    mov r6, #0
loc_8140252:
    ldr r3, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r3, [r3,#8]
    ldr r2, off_81402BC // =reqBBS_requestEntries_IDs 
    add r1, r7, r6
    ldrb r2, [r2,r1]
    add r0, r2, r3
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
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
    ldr r0, off_81402C0 // =dword_813F380 
    ldr r1, off_81402BC // =reqBBS_requestEntries_IDs 
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
    // j
    sub r0, r0, r1
    mov r1, #2
    mul r1, r6
    // i
    add r1, #3
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_81402C4 // =unk_81402C8 
    mov r4, #1
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
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
.endfunc // reqBBS_renderRankStars

.func
.thumb_func
reqBBS_81402CC:
    push {r4-r7,lr}
    bl reqBBS_81408C8
    ldr r1, off_8140300 // =dword_813F380 
    ldrb r0, [r1,r0]
    add r0, #1
    tst r0, r0
    beq locret_81402FE
    mov r1, #0
loc_81402DE:
    push {r0,r1}
    push {r4-r7}
    mov r0, #0x1a
    // j
    sub r0, r0, r1
    // i
    mov r1, #6
    // cpyOff
    mov r2, #1
    // tileRefs
    ldr r3, off_8140304 // =unk_8140308 
    mov r4, #1
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
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
.endfunc // reqBBS_81402CC

.func
.thumb_func
reqBBS_814030C:
    push {r4-r7,lr}
    ldr r0, off_8140344 // =sReqBBS_GUI 
    ldr r1, dword_8140348 // =0xF 
    ldrb r0, [r0,r1]
    ldr r1, off_814034C // =dword_813F380 
    ldrb r0, [r1,r0]
    add r0, #1
    tst r0, r0
    beq locret_8140340
    mov r1, #0
loc_8140320:
    push {r0,r1}
    push {r4-r7}
    mov r0, #0x1a
    // j
    sub r0, r0, r1
    // i
    mov r1, #6
    // cpyOff
    mov r2, #1
    // tileRefs
    ldr r3, off_8140350 // =unk_8140354 
    mov r4, #1
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7}
    pop {r0,r1}
    add r1, #1
    cmp r1, r0
    bne loc_8140320
locret_8140340:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8140344:    .word sReqBBS_GUI
dword_8140348:    .word 0xF
off_814034C:    .word dword_813F380
off_8140350:    .word unk_8140354
unk_8140354:    .byte 0x92
    .byte 0x60 
    .byte 0x93
    .byte 0x60 
.endfunc // reqBBS_814030C

.func
.thumb_func
reqBBS_8140358:
    push {r4-r7,lr}
    mov r8, r0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r0, [r7,#2]
    mov r1, #2
    tst r1, r0
    beq loc_814036E
    bl reqBBS_81403A8
    b locret_81403A0
loc_814036E:
    ldrh r1, [r5,#0x1e]
    cmp r1, #0
    beq locret_81403A0
    mov r1, #4
    tst r1, r0
    beq loc_8140380
    bl reqBBS_8140414
    b locret_81403A0
loc_8140380:
    mov r1, #1
    tst r1, r0
    beq loc_814038C
    bl reqBBS_81403C0
    b locret_81403A0
loc_814038C:
    ldrh r0, [r7,#4]
    ldr r1, off_81403A4 // =0x3C0 
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
.endfunc // reqBBS_8140358

.func
.thumb_func
reqBBS_81403A8:
    push {lr}
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #8
    strb r0, [r5]
    mov r0, #0x68 
    bl sound_play // () -> void
    pop {pc}
    .byte 0, 0
.endfunc // reqBBS_81403A8

.func
.thumb_func
reqBBS_81403C0:
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
    bl sound_play // () -> void
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
.endfunc // reqBBS_81403C0

    pop {r5}
    bl reqBBS_renderSelectedEntry_HeaderText
    mov r7, r10
    ldr r7, [r7,#0x20]
    mov r0, #0xf7
    strb r0, [r7]
    mov r0, #0
    strb r0, [r7,#4]
    strb r0, [r7,#6]
    pop {pc}
.func
.thumb_func
reqBBS_8140414:
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
    bl sound_play // () -> void
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
.endfunc // reqBBS_8140414

    pop {r5}
    bl reqBBS_changeChatboxHeader
    ldr r0, off_8140488 // =sChatbox 
    ldr r2, dword_8140480 // =0xD 
    ldrb r1, [r5,r2]
    ldr r2, off_8140484 // =0x4C 
    str r1, [r0,r2]
    ldr r1, dword_814048C // =0xE 
    ldrb r0, [r5,r1]
    ldr r1, off_8140490 // =dword_8140494 
    ldrb r1, [r1,r0]
    ldr r0, off_8140488 // =sChatbox 
    ldr r2, off_814049C // =0x54 
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
off_8140488:    .word sChatbox
dword_814048C:    .word 0xE
off_8140490:    .word dword_8140494
dword_8140494:    .word 0x4B23190A, 0x4B
off_814049C:    .word 0x54
.func
.thumb_func
reqBBS_drawChatbox_dup1:
    push {r4-r7,lr}
    // tileRefs
    ldr r3, off_81404B4 // =unk_2018A04 
    // j
    mov r0, #2
    // i
    mov r1, #5
    // cpyOff
    mov r2, #1
    mov r4, #0x1a
    mov r5, #0xa
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4-r7,pc}
off_81404B4:    .word unk_2018A04
.endfunc // reqBBS_drawChatbox_dup1

.func
.thumb_func
reqBBS_drawSelectChatbox:
    push {r4-r7,lr}
    // tileRefs
    ldr r3, off_81404CC // =unk_201BA04 
    // j
    mov r0, #5
    // i
    mov r1, #5
    // cpyOff
    mov r2, #1
    mov r4, #0x14
    mov r5, #0xa
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // reqBBS_drawSelectChatbox

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
.func
.thumb_func
reqBBS_renderSelectedEntry_HeaderText:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
    ldrh r1, [r5,#0x20] // reqBBS_GUI.cursorPos
    add r0, r0, r1
    ldr r1, off_814050C // =reqBBS_requestEntries_IDs 
    ldrb r1, [r1,r0]
    ldr r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r0, [r0]
    ldr r2, off_8140510 // =unk_201B200 
    ldr r3, dword_8140514 // =0x6008400 
    mov r4, #0x17
    mov r5, #1
    ldr r6, off_8140518 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_814050C:    .word reqBBS_requestEntries_IDs
off_8140510:    .word unk_201B200
dword_8140514:    .word 0x6008400
off_8140518:    .word dword_86A5D60
.endfunc // reqBBS_renderSelectedEntry_HeaderText

.func
.thumb_func
reqBBS_setChatboxHeaderBasedOn_0F:
    push {r4-r7,lr}
    ldr r0, off_8140550 // =sReqBBS_GUI 
    ldr r1, dword_814054C // =0xF 
    ldrb r1, [r0,r1]
    ldr r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
    ldr r0, [r0]
    ldr r2, off_8140540 // =unk_201B200 
    ldr r3, dword_8140544 // =0x6008400 
    mov r4, #0x17
    mov r5, #1
    ldr r6, off_8140548 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word reqBBS_requestEntries_IDs
off_8140540:    .word unk_201B200
dword_8140544:    .word 0x6008400
off_8140548:    .word dword_86A5D60
dword_814054C:    .word 0xF
off_8140550:    .word sReqBBS_GUI
.endfunc // reqBBS_setChatboxHeaderBasedOn_0F

.func
.thumb_func
reqBBS_changeChatboxHeader:
    push {r4-r7,lr}
    bl reqBBS_getTotalPointsIndex
    mov r1, #8
    add r1, r1, r0
    ldr r0, off_8140574 // =reqBBS_dialogList 
    ldr r2, off_8140578 // =unk_201B200 
    ldr r3, dword_814057C // =0x6008400 
    mov r4, #0xc
    mov r5, #1
    ldr r6, off_8140580 // =dword_86ACD24+60 
    ldr r7, off_8140584 // =unk_201C200 
    bl sub_8045FC6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8140574:    .word reqBBS_dialogList
off_8140578:    .word unk_201B200
dword_814057C:    .word 0x6008400
off_8140580:    .word dword_86ACD24+0x3C
off_8140584:    .word unk_201C200
.endfunc // reqBBS_changeChatboxHeader

.func
.thumb_func
reqBBS_8140588:
    push {r4-r7,lr}
    ldr r0, off_81405A0 // =unk_813F22C 
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
.endfunc // reqBBS_8140588

    pop {r4-r7,pc}
    .byte 0, 0
off_81405A0:    .word unk_813F22C
.func
.thumb_func
reqBBS_81405A4:
    push {r4-r7,lr}
    ldr r0, off_81405BC // =asc_813F2AB+1 
    mov r1, #6
    lsl r1, r1, #6
    mov r2, r10
    ldr r2, [r2,#0x28]
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
.endfunc // reqBBS_81405A4

    pop {r4-r7,pc}
    .balign 4, 0x00
off_81405BC:    .word asc_813F2AB+1
.func
.thumb_func
reqBBS_81405C0:
    push {r4-r7,lr}
    ldr r0, off_81405D8 // =reqBBS_dialogList 
    mov r1, #0x12
    ldr r2, off_81405DC // =unk_201CA00 
    ldr r3, dword_81405E0 // =0x6003C00 
    mov r4, #8
    mov r5, #1
    ldr r6, off_81405E4 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // reqBBS_81405C0

    pop {r4-r7,pc}
off_81405D8:    .word reqBBS_dialogList
off_81405DC:    .word unk_201CA00
dword_81405E0:    .word 0x6003C00
off_81405E4:    .word dword_86B7AE0
.func
.thumb_func
reqBBS_81405E8:
    push {r4-r7,lr}
    // j
    mov r0, #0xa
    // i
    mov r1, #0
    // cpyOff
    mov r2, #2
    // tileRefs
    ldr r3, off_81405FC // =dword_813F32C 
    mov r4, #8
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // reqBBS_81405E8

    pop {r4-r7,pc}
off_81405FC:    .word dword_813F32C
.func
.thumb_func
reqBBS_8140600:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // reqBBS_8140600

.func
.thumb_func
reqBBS_8140604:
    push {r0,r4-r7,lr}
    ldrh r6, [r5,#0x1e]
    tst r6, r6
    beq locret_8140634
    mov r0, #0
    ldr r1, off_8140638 // =reqBBS_requestEntries_IDs 
    sub r7, r7, r1
    ldr r1, [r5,#0x28]
    ldr r1, [r1,#0xc]
    add r3, r3, r1
    add r0, r3, #0
    bl zf_802F168 // (int a1, int a2) -> zf
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
.endfunc // reqBBS_8140604

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
.func
.thumb_func
reqBBS_animateCursor:
    push {r0-r7,lr}
    ldrb r0, [r5,#0x9] // reqBBS_GUI.animationTimer1
    ldr r1, off_81406E0 // =dword_81406E4+2 
    ldrb r0, [r1,r0]
    lsl r0, r0, #7
    ldr r2, off_81406D8 // =unk_201AA04 
    add r0, r0, r2
    ldr r1, dword_81406DC // =0x6017F80 
    mov r2, #0x80
    bl loc_8000AC8
    ldrh r1, [r5,#0x20]
    mov r0, #3
    mov r3, #0x10
    mul r1, r3
    add r1, #0x18
    lsl r0, r0, #0x10
    orr r0, r1
    ldrb r2, [r5,#9]
    ldr r3, off_81406E0 // =dword_81406E4+2 
    add r2, #1
    ldrb r1, [r3,r2]
    cmp r1, #0xff
    bne loc_81406BC
    mov r2, #1
    ldrh r1, [r3]
loc_81406BC:
    strb r2, [r5,#9]
    ldr r2, dword_81406D4 // =0x40000000 
    orr r0, r2
    ldr r1, dword_81406E4 // =0xC3FC 
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
.endfunc // reqBBS_animateCursor

.func
.thumb_func
reqBBS_81406FC:
    push {r5,lr}
    ldr r0, dword_8140790 // =0x3FFFFFFF 
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
    ldr r5, off_8140794 // =byte_2008450 
    bl sub_8002FA6
    pop {r5,pc}
dword_8140790:    .word 0x3FFFFFFF
off_8140794:    .word byte_2008450
.endfunc // reqBBS_81406FC

.func
.thumb_func
reqBBS_getTotalPointsIndex:
    push {r4-r7,lr}
    ldr r0, off_81409A4 // =sReqBBS_GUI 
    ldr r1, dword_81407A4 // =0xE 
    ldrb r0, [r0,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407A4:    .word 0xE
.endfunc // reqBBS_getTotalPointsIndex

.func
.thumb_func
reqBBS_81407A8:
    push {r4-r7,lr}
    ldr r1, off_81409A8 // =sReqBBS_GUI 
    ldr r2, dword_81407B4 // =0xE 
    strb r0, [r1,r2]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407B4:    .word 0xE
.endfunc // reqBBS_81407A8

.func
.thumb_func
reqBBS_81407B8:
    push {r4-r7,lr}
    ldr r0, off_81409AC // =sReqBBS_GUI 
    ldr r1, dword_81407C4 // =0xD 
    ldrb r0, [r0,r1]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407C4:    .word 0xD
.endfunc // reqBBS_81407B8

.func
.thumb_func
reqBBS_81407C8:
    push {r4-r7,lr}
    ldr r1, off_81409B0 // =sReqBBS_GUI 
    ldr r2, dword_81407D4 // =0xD 
    strb r0, [r1,r2]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81407D4:    .word 0xD
.endfunc // reqBBS_81407C8

.func
.thumb_func
reqBBS_81407D8:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_8140814
    ldr r0, off_81409B4 // =sReqBBS_GUI 
    ldr r1, dword_8140820 // =0xF 
    ldrb r0, [r0,r1]
    bl reqBBS_814084C
    tst r0, r0
    beq loc_8140814
    ldr r0, off_81409B8 // =sReqBBS_GUI 
    ldr r1, dword_8140818 // =0xD 
    ldr r2, dword_814081C // =0xE 
    ldrb r1, [r0,r1]
    ldrb r2, [r0,r2]
    ldr r0, off_8140824 // =dword_8140828 
    ldrb r0, [r0,r2]
    tst r0, r0
    beq loc_8140814
    cmp r0, r1
    bgt loc_8140814
    add r2, #1
    ldr r0, off_81409BC // =sReqBBS_GUI 
    ldr r1, dword_814081C // =0xE 
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
.endfunc // reqBBS_81407D8

    push {r4-r7,lr}
    ldr r1, off_8140848 // =reqBBS_textualPointers 
    ldr r1, [r1,#0x10] // (dword_813F354+8 - 0x813f34c)
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_8140844
    mov r0, #1
    b locret_8140846
loc_8140844:
    mov r0, #0
locret_8140846:
    pop {r4-r7,pc}
off_8140848:    .word reqBBS_textualPointers
.func
.thumb_func
reqBBS_814084C:
    push {r4-r7,lr}
    ldr r1, off_8140864 // =reqBBS_textualPointers 
    ldr r1, [r1,#0x18] // (dword_813F364 - 0x813f34c)
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_8140860
    mov r0, #1
    b locret_8140862
loc_8140860:
    mov r0, #0
locret_8140862:
    pop {r4-r7,pc}
off_8140864:    .word reqBBS_textualPointers
.endfunc // reqBBS_814084C

.func
.thumb_func
reqBBS_8140868:
    push {r4-r7,lr}
    ldr r1, off_8140880 // =reqBBS_textualPointers 
    ldr r1, [r1,#0x14] // (dword_813F354+0xC - 0x813f34c)
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl zf_802F168 // (int a1, int a2) -> zf
    beq loc_814087C
    mov r0, #1
    b locret_814087E
loc_814087C:
    mov r0, #0
locret_814087E:
    pop {r4-r7,pc}
off_8140880:    .word reqBBS_textualPointers
.endfunc // reqBBS_8140868

.func
.thumb_func
reqBBS_8140884:
    push {r4-r7,lr}
    push {r0}
    bl reqBBS_getTotalPointsIndex
    pop {r2}
    ldr r1, off_81409C0 // =dword_813F380 
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
.endfunc // reqBBS_8140884

.func
.thumb_func
reqBBS_81408A0:
    push {r4-r7,lr}
    ldr r1, off_81408B0 // =reqBBS_textualPointers 
    ldr r1, [r1,#0x10] // (dword_813F354+8 - 0x813f34c)
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    pop {r4-r7,pc}
off_81408B0:    .word reqBBS_textualPointers
.endfunc // reqBBS_81408A0

.func
.thumb_func
reqBBS_81408B4:
    push {r4-r7,lr}
    ldr r1, off_81408C4 // =reqBBS_textualPointers 
    ldr r1, [r1,#24]
    add r0, r0, r1
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114 // (int a1) -> void
    pop {r4-r7,pc}
off_81408C4:    .word reqBBS_textualPointers
.endfunc // reqBBS_81408B4

.func
.thumb_func
reqBBS_81408C8:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x20]
    add r0, r0, r1
    ldr r1, off_81408D8 // =reqBBS_requestEntries_IDs 
    ldrb r0, [r1,r0]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81408D8:    .word reqBBS_requestEntries_IDs
.endfunc // reqBBS_81408C8

.func
.thumb_func
reqBBS_81408DC:
    push {r4-r7,lr}
    bl reqBBS_81408C8
    ldr r1, off_81409C4 // =sReqBBS_GUI 
    ldr r2, dword_81408EC // =0xF 
    strb r0, [r1,r2]
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81408EC:    .word 0xF
.endfunc // reqBBS_81408DC

.func
.thumb_func
reqBBS_81408F0:
    push {r4-r7,lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    beq loc_814095E
    mov r0, #0x20 
    bl chatbox_8045F3C
    beq loc_814096A
    ldr r0, off_8140970 // =0x110 
    bl chatbox_8045F3C
    bne loc_814096A
    bl reqBBS_81408C8
    bl reqBBS_8140868
    tst r0, r0
    bne loc_814095E
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F164 // (int a1, int a2) -> zf
    bne loc_8140962
    bl reqBBS_81408C8
    bl reqBBS_8140884
    tst r0, r0
    bne loc_8140966
    mov r0, #0x17
    mov r1, #0x1d
    bl sub_802F164 // (int a1, int a2) -> zf
    beq loc_814095A
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    bne loc_814095A
    mov r0, #0x17
    mov r1, #0x3a 
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x3c 
    bl sub_802F110
    bl reqBBS_81408C8
    bl reqBBS_81408A0
    bl reqBBS_81408DC
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
.endfunc // reqBBS_81408F0

.func
.thumb_func
reqBBS_8140974:
    push {r4-r7,lr}
    ldr r0, off_81409C8 // =sReqBBS_GUI 
    ldr r1, dword_8140980 // =0xF 
    ldrb r0, [r0,r1]
    pop {r4-r7,pc}
    .byte 0, 0
dword_8140980:    .word 0xF
.endfunc // reqBBS_8140974

.func
.thumb_func
reqBBS_8140984:
    push {r4-r7,lr}
    ldr r0, off_81409CC // =sReqBBS_GUI 
    mov r1, #0
    ldr r2, dword_8140998 // =0xD 
    strb r1, [r0,r2]
    ldr r2, dword_814099C // =0xE 
    strb r1, [r0,r2]
    ldr r2, dword_81409A0 // =0xF 
    strb r1, [r0,r2]
    pop {r4-r7,pc}
dword_8140998:    .word 0xD
dword_814099C:    .word 0xE
dword_81409A0:    .word 0xF
off_81409A4:    .word sReqBBS_GUI
off_81409A8:    .word sReqBBS_GUI
off_81409AC:    .word sReqBBS_GUI
off_81409B0:    .word sReqBBS_GUI
off_81409B4:    .word sReqBBS_GUI
off_81409B8:    .word sReqBBS_GUI
off_81409BC:    .word sReqBBS_GUI
off_81409C0:    .word dword_813F380
off_81409C4:    .word sReqBBS_GUI
off_81409C8:    .word sReqBBS_GUI
off_81409CC:    .word sReqBBS_GUI
.endfunc // reqBBS_8140984

.func
.thumb_func
reqBBS_81409D0:
    push {r6,lr}
    add r6, r0, #0
    bl sub_800151C
    mov r1, #0xff
    and r0, r1
    add r1, r6, #0
    svc 6
    add r0, r1, #0
    pop {r6,pc}
.endfunc // reqBBS_81409D0

.func
.thumb_func
reqBBS_81409E4:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    add r0, #0x1c
    bl sub_8031A7A
    pop {pc}
.endfunc // reqBBS_81409E4

.func
.thumb_func
reqBBS_81409F4:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#0xe]
    pop {pc}
    .byte 0, 0
.endfunc // reqBBS_81409F4

.func
.thumb_func
reqBBS_8140A00:
    push {lr}
    mov r0, #0x17
    mov r1, #0
    bl sub_802F110
    pop {pc}
.endfunc // reqBBS_8140A00

.func
.thumb_func
reqBBS_8140A0C:
    push {r4,r5,lr}
    mov r0, #0x17
    mov r1, #0
    bl sub_802F12C // (int a1, int a2) -> void
    mov r5, r10
    ldr r5, [r5,#0x40]
    mov r3, #0x14
    ldrh r0, [r5,r3]
    mov r3, #0x12
    strh r0, [r5,r3]
    pop {r4,r5,pc}
.endfunc // reqBBS_8140A0C

    push {lr}
    mov r0, #0x16
    mov r1, #0x40 
    mov r2, #0x40 
    bl sub_802F17E // (int a1, int a2) -> void
    mov r0, #0x16
    mov r1, #0xc0
    mov r2, #0x10
    bl sub_802F17E // (int a1, int a2) -> void
    mov r0, #0
    pop {pc}
    .byte 0, 0
    push {lr}
    mov r0, #0x16
    mov r1, #0xf3
    mov r2, #0xd
    bl sub_802F17E // (int a1, int a2) -> void
    mov r0, #0x16
    mov r1, #0xc0
    mov r2, #0x10
    bl sub_802F17E // (int a1, int a2) -> void
    mov r0, #0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
reqBBS_runDialog_8140A70:
    push {lr}
    ldr r2, off_8140A6C // =off_8140A70 
    lsl r0, r0, #2
    ldr r0, [r2,r0]
    bl chatbox_runScript // (u16 *scriptArr, u8 scriptID) -> void
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
.endfunc // reqBBS_runDialog_8140A70

/*For debugging purposes, connect comment at any range!*/
