.include "main.inc"

.func
.thumb_func
main_:
    bl main_static_80004A4
    bl sub_8001514
    bl sub_803F4C8
    bl sub_803D1A8
main_gameRoutine:
    bl main_static_await_80003D0
    bl main_static_awaitFrame_80003A0
    bl sub_80007BE
    bl loc_80019A0
    bl render_800172C
    bl objRender_802FE0C
    bl objRender_8000A44
    bl getPalleteAndTransition_80023E0
    bl renderPalletes_8001808
    bl renderPalletesAndObjs_8002650
    bl handleObjSprites_800289C
    bl render_80015D0
    bl main_static_80003E4
    mov r0, r10
    ldr r0, [r0,#0x24] // Toolkit.currFrame
    ldrh r1, [r0]
    add r1, #1
    strh r1, [r0]
    bl sub_8000E10
    ldr r0, off_8000348 // =main_jt_subsystem 
    mov r1, r10
    ldr r1, [r1]
    ldrb r1, [r1]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_800154C
    bl isSameSubsystem // () -> zf
    beq loc_800032A
    bl subsystem_triggerTransition_800630A
loc_800032A:
    bl chatbox_main_onUpdate // () -> void
    bl cb_call_200A880
    bl PET_main_onUpdate
    ldr r0, off_8000344 // =loc_3006814+1 
    mov lr, pc
    bx r0
    bl main_static_8000454
    b main_gameRoutine
    .balign 4, 0x00
off_8000344:    .word loc_3006814+1
off_8000348:    .word main_jt_subsystem
main_jt_subsystem:    .word Load_cb_802F544+1
    .word cb_80050EC+1
    .word cb_jack_80341B6+1
    .word cb_8038AD0+1
    .word cb_803D1CA+1
    .word cb_803FB3C+1
    .word cb_80395A4+1
    .word cb_803CBA6+1
    .word cb_803CCD6+1
    .word reqBBS_cb_draw_813E0A4+1
    .word menuControl_cb_openSubmenu+1
    .word cb_8046CF8+1
    .word cb_8048FD4+1
    .word cb_804A304+1
    .word cb_81382AC+1
    .word 0x0
    .word 0x0
    .word reqBBS_cb_813F404+1
    .word menuControl_cb_email+1
    .word cb_8049E04+1
    .byte 0, 0, 0, 0
.endfunc // main_

.func
.thumb_func
main_static_awaitFrame_80003A0:
    push {lr}
loc_80003A2:
    ldr r0, off_80003CC // =GeneralLCDStatus_STAT_LYC_ 
    mov r2, #1
loc_80003A6:
    ldrh r1, [r0]
    tst r1, r2
    beq loc_80003A6
    ldr r0, off_80003C4 // =dword_200A870 
    ldr r2, [r0]
    ldr r1, off_80003C8 // =dword_2009930 
    ldr r1, [r1]
    cmp r2, r1
    blt loc_80003A2
    mov r1, #0
    str r1, [r0]
    pop {pc}
    .byte 0, 0
    .word dword_2009CC0
off_80003C4:    .word dword_200A870
off_80003C8:    .word dword_2009930
off_80003CC:    .word GeneralLCDStatus_STAT_LYC_
.endfunc // main_static_awaitFrame_80003A0

.func
.thumb_func
main_static_await_80003D0:
    push {lr}
    ldr r0, off_80003E0 // =GeneralLCDStatus_STAT_LYC_ 
    mov r2, #1
loc_80003D6:
    ldrh r1, [r0]
    tst r1, r2
    bne loc_80003D6
    pop {pc}
    .byte 0, 0
off_80003E0:    .word GeneralLCDStatus_STAT_LYC_
.endfunc // main_static_await_80003D0

.func
.thumb_func
main_static_80003E4:
    mov r7, r10
    ldr r0, [r7,#4]
    ldrb r7, [r0,#0x13]
    add r7, #1
    cmp r7, #4
    ble loc_80003F2
    mov r7, #0
loc_80003F2:
    strb r7, [r0,#0x13]
    ldr r4, off_800044C // =KeyStatus 
    ldrh r4, [r4]
    mvn r4, r4
    ldrh r5, [r0]
    strh r5, [r0,#6]
    ldr r3, dword_8000450 // =0x3FF 
    strh r4, [r0]
    add r6, r4, #0
    and r6, r5
    mov r1, #8
    mov r3, #0
loc_800040A:
    mov r2, #1
    lsl r2, r3
    and r2, r6
    beq loc_800042A
    ldrb r2, [r0,r1]
    cmp r2, #0x10
    bge loc_8000430
    add r2, #1
    strb r2, [r0,r1]
    cmp r2, #1
    beq loc_8000438
loc_8000420:
    mov r2, #1
    lsl r2, r3
    mvn r2, r2
    and r6, r2
    b loc_8000438
loc_800042A:
    mov r2, #0
    strb r2, [r0,r1]
    b loc_8000438
loc_8000430:
    ldrb r7, [r0,#0x13]
    cmp r7, #0
    beq loc_8000438
    b loc_8000420
loc_8000438:
    add r3, #1
    add r1, #1
    cmp r1, #0x12
    blt loc_800040A
    strh r6, [r0,#4]
    mvn r5, r5
    and r4, r5
    strh r4, [r0,#2]
    mov pc, lr
    .balign 4, 0x00
off_800044C:    .word KeyStatus
dword_8000450:    .word 0x3FF
.endfunc // main_static_80003E4

.func
.thumb_func
main_static_8000454:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq locret_80004A2
    bl sub_813D60C
    bne locret_80004A2
    mov r7, r10
    ldr r0, [r7]
    ldrb r0, [r0]
    cmp r0, #0x10
    beq locret_80004A2
    ldr r0, [r7,#4]
    ldrh r2, [r0,#2]
    ldrh r0, [r0]
    ldr r1, [r7]
    add r1, #4
    ldrb r4, [r1]
    sub r4, #1
    cmp r4, #0
    bgt loc_80004A0
    mov r4, #0
    mov r3, #0xf
    and r0, r3
    cmp r0, r3
    bne loc_80004A0
    and r2, r3
    tst r2, r2
    beq loc_80004A0
    push {r1}
    bl start_800023C // () -> void
    .byte 0
    .byte 0xF0
    .byte 6
    .byte 0xF8
    .byte 0x3F 
    .byte 0xF0
    .byte 0x16
    .byte 0xF8
    .byte 2
    .byte 0xBC
    .byte 0xA
    .byte 0x24 
loc_80004A0:
    strb r4, [r1]
locret_80004A2:
    pop {r4-r7,pc}
.endfunc // main_static_8000454

.func
.thumb_func
main_static_80004A4:
    mov r0, #1
    b loc_80004AA
    mov r0, #0
loc_80004AA:
    push {r5,lr}
    push {r0}
    bl CpuSet_toolKit
    bl sub_8006C22
    pop {r1}
    ldr r0, off_8000564 // =0x40 
    tst r1, r1
    beq loc_80004C0
    ldr r0, off_8000568 // =0xC0 
loc_80004C0:
    bl sub_8001778
    bl main_static_80017EC
    bl render_800172C
    bl sub_8001850
    bl main_static_8000570
    bl sub_80007B2
    bl sub_8001974
    bl sub_80024A2
    bl sub_8003962
    bl sub_8003AB2
    bl sub_80015B4
    bl sub_800260C
    bl sub_80027C4
    bl sub_802FDB0
    bl sub_8000A3C
    bl sub_803FCF0
    bl sub_802FF2C
    bl sub_8004DF0
    bl sub_8004D48
    bl sub_8036ED4
    bl sub_8036F24
    bl sub_8001AFC
    bl sub_8002368
    bl sub_8001820
    bl sub_800182E
    bl sub_80062EC
    bl sub_8006910
    bl sub_803DE5C
    bl sub_8144240
    bl sub_803EBC8
    bl sub_813D960
    bl sub_80071B4
    bl sub_804657C
    bl sub_80467D8
    ldr r0, off_800056C // =dword_2009930 
    mov r1, #1
    strh r1, [r0]
    mov r0, r10
    // memBlock
    ldr r0, [r0]
    // numWords
    mov r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    bl sub_803D1A8
    bl sub_803E900
    pop {r5,pc}
    .balign 4, 0x00
off_8000564:    .word 0x40
off_8000568:    .word 0xC0
off_800056C:    .word dword_2009930
.endfunc // main_static_80004A4

.func
.thumb_func
main_static_8000570:
    push {lr}
    bl sub_814E8A0
    ldr r0, dword_800059C // =0x93040D 
    bl sub_814EE2C
    mov r0, #8
    ldr r1, dword_80005A8 // =0x3005D79 
    bl start_800024C
    ldr r0, off_80005A0 // =GeneralLCDStatus_STAT_LYC_ 
    ldrh r1, [r0]
    mov r2, #0xff
    and r1, r2
    mov r2, #0x20 
    orr r1, r2
    mov r2, #0x50 
    lsl r2, r2, #8
    orr r1, r2
    strh r1, [r0]
    pop {pc}
    .balign 4, 0x00
dword_800059C:    .word 0x93040D
off_80005A0:    .word GeneralLCDStatus_STAT_LYC_
    .word dword_3000E70
dword_80005A8:    .word 0x3005D79
.endfunc // main_static_8000570

/*For debugging purposes, connect comment at any range!*/
