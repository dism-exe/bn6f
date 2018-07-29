.include "asm38.inc"

.thumb
sub_81D61DA:
    push {lr}
    ldr r0, [pc, #0x81d6220-0x81d61dc-4] // =sub_803EA68+1
    mov lr, pc
    bx r0
    add r1, r0, #0
    ldr r0, [pc, #0x81d620c-0x81d61e4-4] // =0x3005D10
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r0}
    mov lr, r0
// end of function sub_81D61DA

.thumb
sub_81D61F0:
    push {lr}
    bl sub_81D6224
    pop {r0}
    mov lr, r0
    ldr r0, [pc, #0x81d6204-0x81d61fa-2] // =dword_200A870
    ldr r1, [r0]
    add r1, #1
    str r1, [r0]
    bx lr
off_81D6204:    .word dword_200A870
    .word byte_20099D0
jt_81D620C:    .word 0x3005D10
    .word sub_803DE72+1
    .word sub_813D5DC+1
    .word sub_813D5DC+1
    .word sub_813D5DC+1
off_81D6220:    .word sub_803EA68+1
// end of function sub_81D61F0

.thumb
sub_81D6224:
    push {lr}
    ldr r1, [pc, #0x81d6268-0x81d6226-2] // =byte_20081B0
    ldrb r3, [r1]
    tst r3, r3
    beq locret_81D6264
    ldr r0, [pc, #0x81d626c-0x81d622e-2] // =DMA0SourceAddress
    ldr r1, [pc, #0x81d6270-0x81d6230-4] // =0x80000000
    ldr r2, [r0,#0x8] // (DMA0WordCount - 0x40000b0)
    bic r2, r1
    str r2, [r0,#0x8] // (DMA0WordCount - 0x40000b0)
    cmp r3, #0x80
    bne loc_81D6244
    ldr r1, [pc, #0x81d6268-0x81d623c-4] // =byte_20081B0
    mov r0, #0
    strb r0, [r1]
    b locret_81D6264
loc_81D6244:
    ldr r1, [pc, #0x81d6268-0x81d6244-4] // =byte_20081B0
    ldr r2, [r1,#0xc] // (dword_20081BC - 0x20081b0)
    str r2, [r0]
    ldr r2, [r1,#0x8] // (dword_20081B8 - 0x20081b0)
    str r2, [r0,#0x4] // (DMA0DestinationAddress - 0x40000b0)
    ldrb r2, [r1,#0x1] // (byte_20081B1 - 0x20081b0)
    ldrh r3, [r1,#0x2] // (word_20081B2 - 0x20081b0)
    lsl r3, r3, #0x10
    orr r2, r3
    str r2, [r0,#0x8] // (DMA0WordCount - 0x40000b0)
    ldr r2, [r1,#0x10] // (dword_20081C0 - 0x20081b0)
    ldr r0, [r1,#0x4] // (dword_20081B4 - 0x20081b0)
    ldr r1, [r1,#0xc] // (dword_20081BC - 0x20081b0)
    ldr r3, [pc, #0x81d6274-0x81d625e-2] // =sub_80068E0+1
    mov lr, pc
    bx r3
locret_81D6264:
    pop {pc}
    .balign 4, 0x00
off_81D6268:    .word byte_20081B0
off_81D626C:    .word DMA0SourceAddress
dword_81D6270:    .word 0x80000000
off_81D6274:    .word sub_80068E0+1
// end of function sub_81D6224

.thumb
sub_81D6278:
    push {lr}
    push {lr}
    ldr r0, [pc, #0x81d6294-0x81d627c-4] // =sub_80005C4+1
    mov lr, pc
    bx r0
    pop {r0}
    mov lr, r0
    ldr r0, [pc, #0x81d6290-0x81d6286-2] // =sub_80005AC+1
    mov lr, pc
    bx r0
    pop {r0}
    bx r0
off_81D6290:    .word sub_80005AC+1
off_81D6294:    .word sub_80005C4+1
// end of function sub_81D6278

.thumb
nullsub_24:
    bx lr
    .balign 4, 0x00
    .word dword_2009CC0
// end of function nullsub_24

.thumb
sub_81D62A0:
    push {r4-r7,lr}
    bl sub_81D6318
    ldr r4, [pc, #0x81d6354-0x81d62a6-2] // =InterruptMasterEnableRegister
    mov r0, #0
    strh r0, [r4]
    mov r0, #0
    ldr r1, [pc, #0x81d62cc-0x81d62ae-2] // =loc_3005CA0
    ldr r2, [pc, #0x81d62e8-0x81d62b0-4] // =dword_3000E70
loc_81D62B2:
    ldr r3, [r1]
    str r3, [r2]
    add r0, #1
    add r1, #4
    add r2, #4
    cmp r0, #0xe
    blt loc_81D62B2
    ldr r0, [pc, #0x81d6358-0x81d62c0-4] // =InterruptEnableRegister
    ldr r1, [pc, #0x81d62d0-0x81d62c2-2] // =0x2004
    strh r1, [r0]
    mov r0, #1
    strh r0, [r4]
    pop {r4-r7,pc}
off_81D62CC:    .word loc_3005CA0
dword_81D62D0:    .word 0x2005
// end of function sub_81D62A0

.thumb
sub_81D62D4:
    push {r4,lr}
    ldr r3, [pc, #0x81d6354-0x81d62d6-2] // =InterruptMasterEnableRegister
    ldrh r4, [r3]
    mov r2, #0
    strh r2, [r3]
    ldr r2, [pc, #0x81d62e8-0x81d62de-2] // =dword_3000E70
    str r1, [r2,r0]
    strh r4, [r3]
    pop {r4,pc}
    .balign 4, 0x00
off_81D62E8:    .word dword_3000E70
// end of function sub_81D62D4

.thumb
sub_81D62EC:
    push {r4,lr}
    ldr r3, [pc, #0x81d6354-0x81d62ee-2] // =InterruptMasterEnableRegister
    ldrh r4, [r3]
    mov r2, #0
    strh r2, [r3]
    ldr r1, [pc, #0x81d6358-0x81d62f6-2] // =InterruptEnableRegister
    ldrh r2, [r1]
    orr r2, r0
    strh r2, [r1]
    strh r4, [r3]
    pop {r4,pc}
// end of function sub_81D62EC

.thumb
sub_81D6302:
    push {r4,lr}
    ldr r3, [pc, #0x81d6354-0x81d6304-4] // =InterruptMasterEnableRegister
    ldrh r4, [r3]
    mov r2, #0
    strh r2, [r3]
    ldr r1, [pc, #0x81d6358-0x81d630c-4] // =InterruptEnableRegister
    ldrh r2, [r1]
    bic r2, r0
    strh r2, [r1]
    strh r4, [r3]
    pop {r4,pc}
// end of function sub_81D6302

.thumb
sub_81D6318:
    push {r4,lr}
    ldr r3, [pc, #0x81d6354-0x81d631a-2] // =InterruptMasterEnableRegister
    ldrh r4, [r3]
    mov r2, #0
    strh r2, [r3]
    ldr r1, [pc, #0x81d635c-0x81d6322-2] // =dword_3001D60
    mov r0, #0
    str r0, [r1]
    strh r4, [r3]
    pop {r4,pc}
// end of function sub_81D6318

.thumb
sub_81D632C:
    push {r4,lr}
    ldr r3, [pc, #0x81d6354-0x81d632e-2] // =InterruptMasterEnableRegister
    ldrh r4, [r3]
    mov r2, #0
    strh r2, [r3]
    ldr r1, [pc, #0x81d635c-0x81d6336-2] // =dword_3001D60
    mov r0, #1
    str r0, [r1]
    push {r3}
    mov r0, #0x18
    ldr r1, [pc, #0x81d6378-0x81d6340-4] // =sub_814469C+1
    bl sub_81D62D4
    mov r0, #0x1c
    ldr r1, [pc, #0x81d637c-0x81d6348-4] // =sub_81446AC+1
    bl sub_81D62D4
    pop {r3}
    strh r4, [r3]
    pop {r4,pc}
off_81D6354:    .word InterruptMasterEnableRegister
off_81D6358:    .word InterruptEnableRegister
off_81D635C:    .word dword_3001D60
// end of function sub_81D632C

.thumb
sub_81D6360:
    push {r4,lr}
    ldr r3, [pc, #0x81d6374-0x81d6362-2] // =InterruptMasterEnableRegister
    mov r2, #1
    strh r2, [r3]
    pop {r4,pc}
// end of function sub_81D6360

.thumb
sub_81D636A:
    push {r4,lr}
    ldr r3, [pc, #0x81d6374-0x81d636c-4] // =InterruptMasterEnableRegister
    mov r2, #0
    strh r2, [r3]
    pop {r4,pc}
off_81D6374:    .word InterruptMasterEnableRegister
off_81D6378:    .word sub_814469C+1
off_81D637C:    .word sub_81446AC+1
    .word 0x9000B081
    .word 0x6AB64656
    .word 0x18B602D2
    .word 0x186D1824
// end of function sub_81D636A

.thumb
sub_81D6390:
    mov r2, #0x1f
    mvn r2, r2
    add r7, r0, #0
    orr r7, r1
    tst r7, r2
    bne loc_81D63A6
    lsl r7, r0, #1
    lsl r2, r1, #6
    add r2, r2, r7
    ldrh r7, [r3]
    strh r7, [r6,r2]
loc_81D63A6:
    add r3, #2
    add r0, #1
    cmp r0, r4
    blt sub_81D6390
    ldr r0, [sp]
    add r1, #1
    cmp r1, r5
    blt sub_81D6390
    add sp, sp, #4
    mov pc, lr
// end of function sub_81D6390

    sub sp, sp, #4
    str r0, [sp]
    mov r6, r10
    ldr r6, [r6,#0x28]
    lsl r2, r2, #0xb
    add r6, r6, r2
    add r4, r4, r0
    add r5, r5, r1
loc_81D63CA:
    mov r2, #0x1f
    mvn r2, r2
    add r7, r0, #0
    orr r7, r1
    tst r7, r2
    bne loc_81D63DE
    lsl r7, r0, #1
    lsl r2, r1, #6
    add r2, r2, r7
    strh r3, [r6,r2]
loc_81D63DE:
    add r0, #1
    cmp r0, r4
    blt loc_81D63CA
    ldr r0, [sp]
    add r1, #1
    cmp r1, r5
    blt loc_81D63CA
    add sp, sp, #4
    mov pc, lr
.thumb
sub_81D63F0:
    push {r5,lr}
    cmp r6, #0
    ble locret_81D6418
    mov r12, r0
    ldr r1, [pc, #0x81d641c-0x81d63f8-4] // =0x3005F20
    ldr r2, [r1,r2]
    mov r9, r2
    ldr r2, [pc, #0x81d6428-0x81d63fe-2] // =0x7BDE
    ldr r3, [pc, #0x81d642c-0x81d6400-4] // =0x8420
    ldr r1, [pc, #0x81d6430-0x81d6402-2] // =0x3DEC
    mov r8, r1
    sub r6, #2
loc_81D6408:
    mov r0, r12
    ldrh r1, [r7,r6]
    mov r4, r9
    mov lr, pc
    bx r4
    strh r0, [r7,r6]
    sub r6, #2
    bge loc_81D6408
locret_81D6418:
    pop {r5,pc}
    .balign 4, 0x00
dword_81D641C:    .word 0x3005F20
    .word 0x3005F35, 0x3005F57
dword_81D6428:    .word 0x7BDE
dword_81D642C:    .word 0x8420
dword_81D6430:    .word 0x3DEF
// end of function sub_81D63F0

.thumb
sub_81D6434:
    add r4, r0, #0
    and r4, r1
    lsl r4, r4, #1
    add r5, r0, #0
    eor r5, r1
    and r5, r2
    add r4, r4, r5
    and r4, r3
    lsl r4, r4, #0x10
    lsr r4, r4, #0x15
    add r4, r8
    add r0, r0, r1
    mov r1, r8
    eor r4, r1
    sub r0, r0, r4
    orr r0, r4
    mov pc, lr
// end of function sub_81D6434

.thumb
sub_81D6456:
    mvn r5, r1
    add r4, r0, #0
    and r4, r5
    lsl r4, r4, #1
    eor r5, r0
    and r5, r2
    add r4, r4, r5
    and r4, r3
    lsl r4, r4, #0x10
    lsr r4, r4, #0x15
    add r4, r8
    mov r5, r8
    eor r4, r5
    orr r1, r4
    orr r0, r4
    sub r0, r1, r0
    mov pc, lr
// end of function sub_81D6456

.thumb
sub_81D6478:
    push {r5,lr}
    cmp r6, #0
    ble locret_81D64AA
    mov r12, r0
    ldr r1, [pc, #0x81d64ac-0x81d6480-4] // =0x3005FB0
    ldr r1, [r1,r2]
    mov r9, r1
    add r5, r2, #0
    mov r4, #0x1f
    mov r1, r12
    mov r2, r12
    mov r3, r12
    and r1, r4
    lsr r2, r2, #5
    and r2, r4
    lsr r3, r3, #0xa
    and r3, r4
    sub r6, #2
loc_81D649C:
    ldrh r5, [r7,r6]
    mov r4, r9
    mov lr, pc
    bx r4
    strh r0, [r7,r6]
    sub r6, #2
    bge loc_81D649C
locret_81D64AA:
    pop {r5,pc}
dword_81D64AC:    .word 0x3005FB0
    .word 0x0
    .word 0x0
// end of function sub_81D6478

.thumb
sub_81D64B8:
    ldrsh r1, [r0,r7]
    lsl r0, r0, #0xc
    ldrsh r3, [r7,r7]
    lsl r0, r0, #0xc
    mov r8, r5
    lsl r0, r5, #0x1b
    lsr r0, r0, #0x1b
    lsl r4, r5, #0x16
    lsr r4, r4, #0x1b
    lsl r5, r5, #0x11
    lsr r5, r5, #0x1b
    mov r12, r1
    mov r1, #0x1f
    sub r0, r1, r0
    sub r4, r1, r4
    sub r5, r1, r5
    mov r1, r12
    lsl r0, r0, #0xc
    lsl r4, r4, #0xc
    lsl r5, r5, #0xc
    mul r0, r1
    mul r4, r2
    mul r5, r3
    lsr r0, r0, #0x10
    lsr r4, r4, #0x10
    lsr r5, r5, #0x10
    lsl r4, r4, #5
    lsl r5, r5, #0xa
    orr r0, r4
    orr r0, r5
    mov r5, r8
    add r0, r5, r0
    mov pc, lr
// end of function sub_81D64B8

.thumb
sub_81D64FA:
    mov r8, r5
    lsl r0, r5, #0x1b
    lsr r0, r0, #0x1b
    lsl r4, r5, #0x16
    lsr r4, r4, #0x1b
    lsl r5, r5, #0x11
    lsr r5, r5, #0x1b
    lsl r0, r0, #0xc
    lsl r4, r4, #0xc
    lsl r5, r5, #0xc
    mul r0, r1
    mul r4, r2
    mul r5, r3
    lsr r0, r0, #0x10
    lsr r4, r4, #0x10
    lsr r5, r5, #0x10
    lsl r4, r4, #5
    lsl r5, r5, #0xa
    orr r0, r4
    orr r0, r5
    mov r5, r8
    sub r0, r5, r0
    mov pc, lr
// end of function sub_81D64FA

.thumb
sub_81D6528:
    push {r5,lr}
    ldrb r7, [r5,#2]
    lsr r7, r7, #4
    lsl r7, r7, #4
    add r5, r5, r7
    ldrb r1, [r5,#3]
    mov r2, #0x10
    bic r1, r2
    strb r1, [r5,#3]
    mov r2, #2
    tst r1, r2
    bne loc_81D6546
    mov r1, #0
    str r1, [r5,#0x24]
    b locret_81D65E2
loc_81D6546:
    ldr r1, [pc, #0x81d65e4-0x81d6546-2] // =0x30060E8
    lsl r0, r0, #2
    add r0, r0, r1
    ldr r0, [r0]
    ldrh r6, [r0]
    mov r8, r0
    ldr r7, [r5,#0x1c]
    ldr r7, [r7]
    ldr r1, [r5,#0x18]
    add r7, r7, r1
    mov r12, r7
    bl sub_81D66A8
    beq loc_81D65B8
    ldrh r2, [r5,#8]
    mov r0, r8
    ldrh r1, [r0]
    cmp r1, r2
    beq loc_81D6570
    mov r2, #0
    str r2, [r5,#0x24]
loc_81D6570:
    mov r4, r12
    ldr r4, [r4]
    lsr r4, r4, #5
    mov r0, r8
    bl sub_81D6904
    beq loc_81D658C
    ldrb r1, [r5,#3]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r5,#3]
    mov r2, #0
    str r2, [r5,#0x24]
    b locret_81D65E2
loc_81D658C:
    bl sub_81D66C8
    strh r1, [r5,#8]
    add r4, r4, r1
    strh r4, [r0]
    ldr r2, [r5,#0x24]
    mov r0, r12
    cmp r0, r2
    beq loc_81D65BE
    str r0, [r5,#0x24]
    mov r8, r5
    ldr r2, [r0]
    add r0, #4
    ldr r1, [pc, #0x81d6600-0x81d65a6-2] // =0x6010000
    ldrh r3, [r5,#8]
    lsl r3, r3, #5
    add r1, r1, r3
    ldr r7, [pc, #0x81d6604-0x81d65ae-2] // =loc_8000AC8+1
    mov lr, pc
    bx r7
    mov r5, r8
    b loc_81D65BE
loc_81D65B8:
    strh r0, [r5,#8]
    mov r0, r12
    str r0, [r5,#0x24]
loc_81D65BE:
    ldrb r1, [r5,#0x15]
    mov r2, #0xf0
    and r1, r2
    mov r2, #0xf0
    cmp r1, r2
    bge locret_81D65E2
    ldrb r1, [r5,#3]
    mov r2, #0x10
    tst r1, r2
    bne locret_81D65E2
    bl sub_81D6608
    ldrb r1, [r5,#0x15]
    mov r2, #0xf0
    bic r1, r2
    lsl r0, r0, #4
    orr r1, r0
    strb r1, [r5,#0x15]
locret_81D65E2:
    pop {r5,pc}
dword_81D65E4:    .word 0x30060E8
    .word dword_200F350
    .word dword_200F350
    .word dword_200F350
    .word dword_200F350
    .word dword_200F350
    .word dword_200F350
dword_81D6600:    .word 0x6010000
off_81D6604:    .word loc_8000AC8+1
// end of function sub_81D6528

.thumb
sub_81D6608:
    push {lr}
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#4]
    add r0, #4
    ldr r1, [r5,#0x18]
    add r0, r0, r1
    ldrb r1, [r5,#4]
    ldrb r2, [r5,#5]
    add r1, r1, r2
    lsl r1, r1, #5
    add r0, r0, r1
    ldrh r7, [r5,#6]
    tst r7, r7
    beq loc_81D6640
    ldr r7, [pc, #0x81d669c-0x81d6624-4] // =unk_3001750
    mov r2, #0x20 
loc_81D6628:
    sub r2, #4
    ldr r3, [r0,r2]
    str r3, [r7,r2]
    bne loc_81D6628
    ldrh r0, [r5,#6]
    lsr r2, r0, #0xf
    lsl r2, r2, #2
    mov r6, #0x20 
    push {r7}
    bl sub_81D63F0
    pop {r0}
loc_81D6640:
    mov r8, r5
    ldr r7, [pc, #0x81d66a0-0x81d6642-2] // =dword_200F340
    ldr r4, [r7]
    cmp r4, #0xf
    bge loc_81D6696
    ldr r5, [pc, #0x81d66a4-0x81d664a-2] // =unk_3001550
    mov r1, #0
loc_81D664E:
    cmp r1, r4
    bge loc_81D666A
    mov r6, #0x1c
loc_81D6654:
    ldr r2, [r5,r6]
    ldr r3, [r0,r6]
    cmp r2, r3
    bne loc_81D6664
    sub r6, #4
    bge loc_81D6654
    add r0, r1, #0
    b loc_81D6698
loc_81D6664:
    add r5, #0x20 
    add r1, #1
    b loc_81D664E
loc_81D666A:
    bl sub_81D6928
    tst r3, r3
    beq loc_81D6682
    mov r5, r8
    ldrb r1, [r5,#3]
    mov r2, #0x10
    orr r1, r2
    strb r1, [r5,#3]
    mov r2, #0
    str r2, [r5,#0x24]
    b loc_81D6698
loc_81D6682:
    mov r6, #0x1c
loc_81D6684:
    ldr r2, [r0,r6]
    str r2, [r5,r6]
    sub r6, #4
    bge loc_81D6684
    add r4, #1
    ldr r7, [pc, #0x81d66a0-0x81d668e-2] // =dword_200F340
    str r4, [r7]
    add r0, r1, #0
    b loc_81D6698
loc_81D6696:
    mov r0, #0xf
loc_81D6698:
    mov r5, r8
    pop {pc}
off_81D669C:    .word unk_3001750
off_81D66A0:    .word dword_200F340
off_81D66A4:    .word unk_3001550
// end of function sub_81D6608

.thumb
sub_81D66A8:
    ldr r1, [pc, #0x81d66e0-0x81d66a8-4] // =dword_20093A8
    ldr r1, [r1]
    ldr r2, [pc, #0x81d66e4-0x81d66ac-4] // =dword_200A890
loc_81D66AE:
    cmp r1, #0
    beq loc_81D66BE
    ldr r3, [r2]
    cmp r7, r3
    beq loc_81D66C2
    sub r1, #1
    add r2, #8
    b loc_81D66AE
loc_81D66BE:
    mov r0, #1
    mov pc, lr
loc_81D66C2:
    ldr r0, [r2,#4]
    mov r3, #0
    mov pc, lr
// end of function sub_81D66A8

.thumb
sub_81D66C8:
    ldr r2, [pc, #0x81d66e0-0x81d66c8-4] // =dword_20093A8
    ldr r3, [r2]
    add r3, #1
    str r3, [r2]
    sub r3, #1
    lsl r3, r3, #3
    ldr r2, [pc, #0x81d66e4-0x81d66d4-4] // =dword_200A890
    add r2, r2, r3
    str r7, [r2]
    str r6, [r2,#4]
    mov pc, lr
    .byte 0, 0
off_81D66E0:    .word dword_20093A8
off_81D66E4:    .word dword_200A890
// end of function sub_81D66C8

.thumb
sub_81D66E8:
    push {r5,lr}
    mov r1, r10
    push {r1}
    ldrb r6, [r5]
    push {r6}
    ldr r4, [pc, #0x81d6808-0x81d66f2-2] // =byte_20099CC
    ldrb r4, [r4]
    ldrb r7, [r5,#2]
    lsr r7, r7, #4
    lsl r7, r7, #4
    add r5, r5, r7
    ldr r2, [pc, #0x81d680c-0x81d66fe-2] // =byte_20098A8
    ldrb r2, [r2,#0x1] // (byte_20098A9 - 0x20098a8)
    ldr r3, [pc, #0x81d6810-0x81d6702-2] // =loc_3006314
    ldr r2, [r3,r2]
    mov lr, pc
    bx r2
    ldr r0, [pc, #0x81d6808-0x81d670a-2] // =byte_20099CC
    ldrb r0, [r0]
    mov r10, r0
    mov r12, r7
    pop {r7}
    mov r0, #8
    tst r0, r7
    bne loc_81D67A6
    ldrb r3, [r5,#3]
    mov r4, #1
    tst r3, r4
    bne loc_81D6724
    mov r12, r6
loc_81D6724:
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x10
    and r3, r2
    beq loc_81D6730
    mov r0, #1
loc_81D6730:
    mov r8, r0
    mov r0, #0
    ldrb r3, [r5,#0x13]
    mov r2, #0x20 
    and r3, r2
    beq loc_81D673E
    mov r0, #1
loc_81D673E:
    mov r9, r0
    ldr r3, [r5,#0x20]
    ldrb r2, [r3]
    lsl r2, r2, #2
loc_81D6746:
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r3, [r5,#0x18]
    add r3, r3, r0
    ldr r2, [r3,r2]
    add r2, r2, r3
    mov r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
loc_81D6758:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_81D67CC
    mov r3, #1
    ldrsb r3, [r2,r3]
    mov r0, r8
    tst r0, r0
    beq loc_81D676A
    neg r3, r3
loc_81D676A:
    add r3, r3, r1
    mov r0, r10
    sub r0, #0x40 
    cmp r3, r0
    blt loc_81D679E
    mov r0, r10
    add r0, #0xf0
    add r0, #0x41 
    cmp r3, r0
    bge loc_81D679E
    mov r3, #2
    ldrsb r3, [r2,r3]
    mov r0, r9
    tst r0, r0
    beq loc_81D678A
    neg r3, r3
loc_81D678A:
    add r3, r12
    mov r0, #0x20 
    neg r0, r0
    cmp r3, r0
    blt loc_81D679E
    mov r0, #0xa0
    add r0, #0x21 
    cmp r3, r0
    bge loc_81D679E
    orr r7, r4
loc_81D679E:
    mov r12, r6
    lsr r4, r4, #1
    add r2, #5
    b loc_81D6758
loc_81D67A6:
    mov r7, #0
    mov r0, r10
    sub r0, #0x40 
    cmp r1, r0
    blt loc_81D67CC
    mov r0, r10
    add r0, #0xf0
    add r0, #0x41 
    cmp r1, r0
    bge loc_81D67CC
    mov r0, #0x20 
    neg r0, r0
    cmp r6, r0
    blt loc_81D67CC
    mov r0, #0xa0
    add r0, #0x21 
    cmp r6, r0
    bge loc_81D67CC
    mov r7, #1
loc_81D67CC:
    ldrb r3, [r5,#3]
    mov r4, #4
    tst r3, r4
    bne loc_81D67F2
    add r6, r7, #0
    mov r4, #0x80
    lsl r4, r4, #0x18
    bic r6, r4
    mov r4, #8
    bic r3, r4
    tst r6, r6
    beq loc_81D67E6
    orr r3, r4
loc_81D67E6:
    mov r4, #2
    bic r3, r4
    tst r7, r7
    beq loc_81D67FC
    orr r3, r4
    b loc_81D67FC
loc_81D67F2:
    mov r4, #0xa
    bic r3, r4
    tst r7, r7
    beq loc_81D67FC
    orr r3, r4
loc_81D67FC:
    strb r3, [r5,#3]
    str r7, [r5,#0x28]
    pop {r1}
    mov r10, r1
    pop {r5,pc}
    .hword 0x0
off_81D6808:    .word byte_20099CC
off_81D680C:    .word byte_20098A8
off_81D6810:    .word loc_3006314
    .word loc_300631C+1
    .word loc_300638C+1
// end of function sub_81D66E8

.thumb
sub_81D681C:
    push {lr}
    mov r2, #4
    ldrb r3, [r5,#3]
    tst r2, r3
    bne loc_81D6836
    push {r0,r5}
    ldr r5, [pc, #0x81d6888-0x81d6828-4] // =sub_8031612+1
    mov lr, pc
    bx r5
    lsl r0, r0, #0x10
    mov r9, r0
    pop {r0,r5}
    b loc_81D683A
loc_81D6836:
    ldr r1, [r0,#8]
    mov r9, r1
loc_81D683A:
    mov r3, r10
    ldr r3, [r3,#0xc]
    ldr r1, [r0]
    ldr r4, [r3,#0x3c]
    sub r1, r1, r4
    mov r8, r1
    ldr r6, [r0,#4]
    ldr r4, [r3,#0x40]
    sub r6, r6, r4
    add r1, r1, r6
    asr r1, r1, #0x10
    add r1, #0x78 
    strh r1, [r5,#0xc]
    mov r2, r8
    sub r6, r6, r2
    asr r6, r6, #1
    add r7, r6, #0
    ldr r2, [r3,#0x44]
    mov r4, #0x80
    lsl r4, r4, #0x10
    add r2, r2, r4
    add r4, r2, r6
    asr r4, r4, #0x10
    strh r4, [r5,#0xa]
    ldr r4, [r0,#8]
    sub r6, r6, r4
    ldr r2, [r3,#0x44]
    add r6, r6, r2
    asr r6, r6, #0x10
    add r6, #0x52 
    strb r6, [r5,#0xe]
    mov r4, r9
    sub r7, r7, r4
    ldr r2, [r3,#0x44]
    add r7, r7, r2
    asr r7, r7, #0x10
    add r7, #0x52 
    strb r7, [r5,#0xf]
    pop {pc}
off_81D6888:    .word sub_8031612+1
// end of function sub_81D681C

.thumb
sub_81D688C:
    add r6, r4, #0
    mov r3, r10
    ldr r3, [r3,#0xc]
    mov r2, #2
    ldrsh r1, [r0,r2]
    ldr r4, [r3,#0x3c]
    ldr r7, [r3,#0x48]
    add r4, r4, r7
    asr r4, r4, #0x10
    sub r1, r1, r4
    tst r6, r6
    beq loc_81D68C4
    neg r1, r1
    ldrb r2, [r5,#0x16]
    mov r4, #2
    tst r2, r4
    bne loc_81D68C4
    ldrb r2, [r5,#0x16]
    mov r4, #0x10
    eor r2, r4
    mov r4, #0x30 
    and r2, r4
loc_81D68B8:
    ldrb r7, [r5,#0x13]
    mov r4, #0x30 
    bic r7, r4
    orr r7, r2
    strb r7, [r5,#0x13]
    b loc_81D68CC
loc_81D68C4:
    ldrb r2, [r5,#0x16]
    mov r4, #0x30 
    and r2, r4
    b loc_81D68B8
loc_81D68CC:
    add r1, #0x78 
    strh r1, [r5,#0xc]
    mov r2, #6
    ldrsh r6, [r0,r2]
    ldr r4, [r3,#0x40]
    asr r4, r4, #0x10
    sub r6, r6, r4
    add r6, #0x50 
    add r7, r6, #0
    strh r7, [r5,#0xa]
    mov r2, #0xa
    ldrsh r4, [r0,r2]
    ldr r2, [r3,#0x44]
    asr r2, r2, #0x10
    sub r4, r4, r2
    sub r6, r6, r4
    strb r6, [r5,#0xe]
    strb r7, [r5,#0xf]
    ldrb r3, [r5,#3]
    mov r2, #0x20 
    tst r2, r3
    beq loc_81D68FA
    strb r6, [r5,#0xf]
loc_81D68FA:
    mov r2, #4
    tst r2, r3
    beq locret_81D6902
    add r7, r6, #0
locret_81D6902:
    mov pc, lr
// end of function sub_81D688C

.thumb
sub_81D6904:
    push {lr}
    ldrh r3, [r0]
    ldr r2, [pc, #0x81d6920-0x81d6908-4] // =0x2F
    sub r3, r3, r2
    add r3, r3, r4
    ldr r2, [pc, #0x81d6924-0x81d690e-2] // =byte_20098A8
    ldrh r2, [r2,#0x2] // (word_20098AA - 0x20098a8)
    cmp r3, r2
    bge loc_81D691A
    mov r3, #0
    pop {pc}
loc_81D691A:
    mov r3, #1
    pop {pc}
    .byte 0, 0
off_81D6920:    .word 0x30
off_81D6924:    .word byte_20098A8
// end of function sub_81D6904

.thumb
sub_81D6928:
    push {lr}
    ldr r3, [pc, #0x81d693c-0x81d692a-2] // =byte_20098A8
    ldrb r3, [r3]
    cmp r1, r3
    bge loc_81D6936
    mov r3, #0
    pop {pc}
loc_81D6936:
    mov r3, #1
    pop {pc}
    .balign 4, 0x00
off_81D693C:    .word byte_20098A8
// end of function sub_81D6928

    push {lr}
    ldrb r7, [r5,#3]
    mov r2, #0x10
    tst r7, r2
    bne locret_81D6950
    mov r2, #2
    tst r7, r2
    bne loc_81D6952
locret_81D6950:
    pop {pc}
loc_81D6952:
    sub sp, sp, #0x1c
    str r0, [sp]
    str r1, [sp,#0x14]
    ldr r0, [pc, #0x81d6a90-0x81d6958-4] // =unk_3002400
    str r0, [sp,#0x10]
    mov r0, #0
    str r0, [sp,#0xc]
    ldr r0, [r5,#0x30]
    sub r0, #1
    str r0, [sp,#8]
    ldr r1, [r5,#0x20]
    ldrb r2, [r1]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r1, [r5,#0x18]
    add r1, r1, r0
    ldr r2, [r1,r2]
    add r2, r2, r1
    ldr r3, [r5,#0x28]
    str r3, [sp,#4]
    ldr r4, [r5,#0x2c]
    mvn r4, r4
    and r3, r4
    str r3, [r5,#0x28]
    ldrb r0, [r5,#0x16]
    mov r1, #0x40 
    bic r0, r1
    mov r1, #0x80
    and r1, r0
    lsr r1, r1, #1
    ldr r3, [pc, #0x81d6a8c-0x81d6990-4] // =dword_20096D0
    ldrb r3, [r3]
    orr r0, r3
    bic r0, r1
    strb r0, [r5,#0x16]
    ldrb r0, [r5,#3]
    mov r7, #1
    and r7, r0
    bne loc_81D69B0
    mov r1, #4
    tst r1, r0
    bne loc_81D69B0
    ldr r3, [r5,#0x28]
    lsl r3, r3, #1
    str r3, [r5,#0x28]
    b loc_81D6A62
loc_81D69B0:
    ldrb r3, [r2]
    cmp r3, #0xff
    beq loc_81D6A76
    ldr r6, [sp,#8]
    add r6, #1
    str r6, [sp,#8]
    ldr r3, [r5,#0x28]
    lsl r6, r3, #1
    str r6, [r5,#0x28]
    cmp r3, #0
    bge loc_81D6A62
    ldr r6, [r5,#0x10]
    ldrb r0, [r5,#0x16]
    mov r1, #0x40 
    and r1, r0
    lsl r1, r1, #6
    orr r6, r1
    bl sub_81D6A94
    mov r8, r1
    mov r9, r0
    add r3, r6, #0
    mov r0, #0xc
    ldrsh r0, [r5,r0]
    add r0, r8
    mov r4, #0x10
    lsl r4, r4, #4
    add r4, #0xff
    and r0, r4
    lsl r0, r0, #0x10
    orr r3, r0
    ldrb r4, [r2,#3]
    mov r0, #0xf0
    and r0, r4
    lsl r4, r4, #0x1e
    orr r3, r4
    lsl r0, r0, #0x16
    eor r3, r0
    mov r0, #0xe
    add r0, r0, r7
    ldrb r0, [r5,r0]
    add r0, r9
    mov r4, #0xff
    and r0, r4
    orr r3, r0
    ldrb r4, [r2,#4]
    lsl r1, r4, #0x1c
    lsr r1, r1, #0x1c
    lsl r1, r1, #0xe
    orr r3, r1
    ldrh r1, [r5,#0x14]
    ldr r0, [sp,#8]
    cmp r0, #0xff
    ble loc_81D6A28
    mov r4, #0xf0
    lsl r4, r4, #8
    bic r1, r4
    ldrb r4, [r0]
    lsl r4, r4, #0xc
    orr r1, r4
loc_81D6A28:
    ldrh r0, [r5,#8]
    ldrb r4, [r2]
    add r4, r4, r0
    orr r1, r4
    mov r8, r2
    mov r9, r5
    add r0, r3, #0
    ldr r2, [sp]
    add r2, r2, r7
    mov r12, r7
    mov r3, #0xa
    ldrsh r3, [r5,r3]
    ldr r4, [sp,#0x14]
    add r3, r3, r4
    lsl r7, r7, #5
    lsr r3, r7
    ldr r7, [sp,#0x10]
    str r0, [r7]
    strh r1, [r7,#4]
    strb r2, [r7,#6]
    strh r3, [r7,#8]
    add r7, #0xc
    str r7, [sp,#0x10]
    ldr r7, [sp,#0xc]
    add r7, #1
    str r7, [sp,#0xc]
    mov r7, r12
    mov r2, r8
    mov r5, r9
loc_81D6A62:
    add r2, #5
    ldrb r0, [r5,#3]
    mov r1, #0x20 
    tst r1, r0
    bne loc_81D69B0
    mov r7, #0
    mov r1, #0x40 
    tst r1, r0
    beq loc_81D69B0
    b loc_81D69B0
loc_81D6A76:
    ldr r0, [pc, #0x81d6a90-0x81d6a76-2] // =unk_3002400
    ldr r1, [sp,#0xc]
    tst r1, r1
    beq loc_81D6A82
    bl sub_81D6E20
loc_81D6A82:
    ldr r0, [sp,#4]
    str r0, [r5,#0x28]
    add sp, sp, #0x1c
    pop {pc}
    .balign 4, 0x00
off_81D6A8C:    .word dword_20096D0
off_81D6A90:    .word unk_3002400
.thumb
sub_81D6A94:
    mov r3, #3
    lsl r3, r3, #8
    and r3, r6
    bne loc_81D6AE6
    mov r8, r7
    mov r1, #1
    ldrsb r1, [r2,r1]
    mov r0, #2
    ldrsb r0, [r2,r0]
    ldrb r3, [r5,#0x13]
    mov r4, #0x10
    and r3, r4
    beq loc_81D6AC4
    neg r1, r1
    ldr r3, [pc, #0x81d6bec-0x81d6ab0-4] // =0x300670C
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r3, r3, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r3, [r3,r4]
    add r1, r1, r3
loc_81D6AC4:
    ldrb r3, [r5,#0x13]
    mov r4, #0x20 
    and r3, r4
    beq loc_81D6AE2
    neg r0, r0
    ldr r3, [pc, #0x81d6bf0-0x81d6ace-2] // =0x3006718
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r3, r3, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r3, [r3,r4]
    add r0, r0, r3
loc_81D6AE2:
    mov r7, r8
    mov pc, lr
loc_81D6AE6:
    ldrb r4, [r5,#0x13]
    mov r3, #0x3e 
    and r4, r3
    lsr r4, r4, #1
    mov r3, #0x20 
    lsl r3, r3, #0x18
    cmp r7, #1
    bne loc_81D6AFC
    add r6, r6, r3
    add r4, #0x10
    b loc_81D6AFE
loc_81D6AFC:
    bic r6, r3
loc_81D6AFE:
    mov r8, r6
    mov r9, r7
    mov r6, #0xc
    mul r4, r6
    ldr r6, [pc, #0x81d6c24-0x81d6b06-2] // =word_200A6F0
    add r6, r6, r4
    ldrb r1, [r6,#8]
    add r1, #0x40 
    mov r3, #0xff
    and r1, r3
    lsl r1, r1, #1
    mov r3, #1
    ldrsb r3, [r2,r3]
    ldr r0, [pc, #0x81d6be4-0x81d6b18-4] // =0x30066F4
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r3, r3, r4
    ldrb r0, [r6,#9]
    mul r3, r0
    ldr r0, [pc, #0x81d6c28-0x81d6b30-4] // =dword_80065D0+16
    ldrsh r0, [r0,r1]
    mul r3, r0
    mov r7, #2
    ldrsb r7, [r2,r7]
    ldr r0, [pc, #0x81d6be8-0x81d6b3a-2] // =0x3006700
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r7, r7, r4
    ldrb r0, [r6,#0xa]
    mul r7, r0
    ldr r0, [pc, #0x81d6c2c-0x81d6b52-2] // =dword_8006660
    ldrsh r0, [r0,r1]
    mul r7, r0
    add r3, r3, r7
    asr r3, r3, #0xc
    ldr r0, [pc, #0x81d6bec-0x81d6b5c-4] // =0x300670C
    ldrb r1, [r2,#4]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1a
    add r0, r0, r1
    ldrb r1, [r2,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    ldrsb r1, [r0,r1]
    add r3, r3, r1
    push {r3}
    ldrb r1, [r6,#8]
    add r1, #0x40 
    mov r3, #0xff
    and r1, r3
    lsl r1, r1, #1
    mov r3, #1
    ldrsb r3, [r2,r3]
    ldr r0, [pc, #0x81d6be4-0x81d6b80-4] // =0x30066F4
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r3, r3, r4
    ldrb r0, [r6,#9]
    mul r3, r0
    ldr r0, [pc, #0x81d6c2c-0x81d6b98-4] // =dword_8006660
    ldrsh r0, [r0,r1]
    neg r0, r0
    mul r3, r0
    mov r7, #2
    ldrsb r7, [r2,r7]
    ldr r0, [pc, #0x81d6be8-0x81d6ba4-4] // =0x3006700
    ldrb r4, [r2,#4]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1a
    add r0, r0, r4
    ldrb r4, [r2,#3]
    lsl r4, r4, #0x1c
    lsr r4, r4, #0x1c
    ldrsb r4, [r0,r4]
    sub r7, r7, r4
    ldrb r0, [r6,#0xa]
    mul r7, r0
    ldr r0, [pc, #0x81d6c28-0x81d6bbc-4] // =dword_80065D0+16
    ldrsh r0, [r0,r1]
    mul r7, r0
    add r3, r3, r7
    asr r3, r3, #0xc
    ldr r0, [pc, #0x81d6bf0-0x81d6bc6-2] // =0x3006718
    ldrb r1, [r2,#4]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1a
    add r0, r0, r1
    ldrb r1, [r2,#3]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    ldrsb r1, [r0,r1]
    add r3, r3, r1
    push {r3}
    pop {r0,r1}
    mov r6, r8
    mov r7, r9
    mov pc, lr
dword_81D6BE4:    .word 0x30066F4
dword_81D6BE8:    .word 0x3006700
dword_81D6BEC:    .word 0x300670C
dword_81D6BF0:    .word 0x3006718
    .word 0xE0F0F8FC, 0xE0F0F0F8, 0xF0F8FCFC, 0xE0F0F8FC, 0xF0F8FCFC
    .word 0xE0F0F0F8, 0xC0E0F0F8, 0xC0E0E0F0, 0xE0F0F8F8, 0xC0E0F0F8
    .word 0xE0F0F8F8, 0xC0E0E0F0
off_81D6C24:    .word word_200A6F0
off_81D6C28:    .word dword_80065D0+0x10
off_81D6C2C:    .word dword_8006660
// end of function sub_81D6A94

.thumb
sub_81D6C30:
    push {lr}
    ldrb r0, [r5,#3]
    mov r1, #0x80
    and r0, r1
    bne loc_81D6C5A
    ldr r1, [r5,#0x18]
    ldr r2, [r1]
    add r3, r2, r1
    str r3, [r5,#0x1c]
    ldrb r0, [r5]
    lsl r0, r0, #2
    ldr r2, [r3,#8]
    add r1, r1, r2
    ldr r2, [r1,r0]
    add r1, r1, r2
    str r1, [r5,#0x20]
    ldrb r2, [r1,#1]
    strb r2, [r5,#1]
    ldrb r2, [r1,#2]
    strb r2, [r5,#2]
    b loc_81D6C78
loc_81D6C5A:
    ldrb r0, [r5]
    lsl r0, r0, #2
    ldr r1, [r5,#0x18]
    ldr r2, [r1,r0]
    add r3, r2, r1
    str r3, [r5,#0x1c]
    ldr r2, [r3,#8]
    add r1, r1, r2
    ldr r2, [r1]
    add r1, r1, r2
    str r1, [r5,#0x20]
    ldrb r2, [r3,#0x10]
    strb r2, [r5,#1]
    ldrb r2, [r3,#0x12]
    strb r2, [r5,#2]
loc_81D6C78:
    ldr r1, [r5,#0x20]
    ldrb r2, [r1]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r1, [r5,#0x18]
    add r1, r1, r0
    ldr r2, [r1,r2]
    add r2, r2, r1
    ldrb r1, [r2,#4]
    lsr r1, r1, #4
    strb r1, [r5,#5]
    pop {pc}
// end of function sub_81D6C30

    push {r4,lr}
loc_81D6C94:
    ldrb r0, [r5,#1]
    sub r0, #1
    strb r0, [r5,#1]
    cmp r0, #0
    bge loc_81D6CF8
    ldrb r0, [r5,#3]
    mov r1, #0x80
    and r0, r1
    bne loc_81D6CC0
    ldr r1, [r5,#0x20]
    ldrb r0, [r1,#2]
    ldrb r4, [r1,#1]
    mov r2, #0x80
    tst r0, r2
    bne loc_81D6CE6
    add r1, #3
    str r1, [r5,#0x20]
    ldrb r2, [r1,#1]
    strb r2, [r5,#1]
    ldrb r2, [r1,#2]
    strb r2, [r5,#2]
    b loc_81D6CE4
loc_81D6CC0:
    ldr r3, [r5,#0x1c]
    ldrb r0, [r3,#0x12]
    ldrb r4, [r3,#0x10]
    mov r2, #0x80
    tst r0, r2
    bne loc_81D6CE6
    add r3, #0x14
    str r3, [r5,#0x1c]
    ldr r1, [r5,#0x18]
    ldr r2, [r3,#8]
    add r1, r1, r2
    ldr r2, [r1]
    add r1, r1, r2
    str r1, [r5,#0x20]
    ldrb r2, [r3,#0x10]
    strb r2, [r5,#1]
    ldrb r2, [r3,#0x12]
    strb r2, [r5,#2]
loc_81D6CE4:
    b loc_81D6C94
loc_81D6CE6:
    mov r2, #0x40 
    tst r0, r2
    bne loc_81D6CF2
    mov r4, #1
    strb r4, [r5,#1]
    b loc_81D6C94
loc_81D6CF2:
    bl sub_81D6C30
    b loc_81D6C94
loc_81D6CF8:
    ldr r1, [r5,#0x20]
    ldrb r2, [r1]
    lsl r2, r2, #2
    ldr r0, [r5,#0x1c]
    ldr r0, [r0,#0xc]
    ldr r1, [r5,#0x18]
    add r1, r1, r0
    ldr r2, [r1,r2]
    add r2, r2, r1
    ldrb r1, [r2,#4]
    lsr r1, r1, #4
    strb r1, [r5,#5]
    pop {r4,pc}
    .balign 4, 0x00
    push {r4-r7,lr}
    mov r0, r12
    push {r0}
    ldr r0, [pc, #0x81d6dc0-0x81d6d1a-2] // =dword_3001D70
    ldr r2, [pc, #0x81d6dc4-0x81d6d1c-4] // =unk_30025B0
    ldr r3, [pc, #0x81d6dc8-0x81d6d1e-2] // =unk_3002170
    ldr r6, [pc, #0x81d6dcc-0x81d6d20-4] // =dword_3002590
    ldr r7, [pc, #0x81d6dd0-0x81d6d22-2] // =unk_3001150
    mov r12, r7
loc_81D6D26:
    ldr r1, [r6]
    ldr r4, [r6,#4]
    add r4, r4, r1
loc_81D6D2C:
    sub r4, #1
    cmp r1, r4
    bgt loc_81D6D54
    ldrb r5, [r4]
    cmp r5, #0xff
    beq loc_81D6D2C
loc_81D6D38:
    cmp r0, r3
    bge loc_81D6D5A
    lsl r5, r5, #3
    mov r7, r12
    add r7, r7, r5
    ldr r5, [r7]
    str r5, [r0]
    ldrh r5, [r7,#4]
    strh r5, [r0,#4]
    add r0, #8
    ldrb r5, [r7,#7]
    cmp r5, #0xff
    beq loc_81D6D2C
    b loc_81D6D38
loc_81D6D54:
    add r6, #8
    cmp r6, r2
    blt loc_81D6D26
loc_81D6D5A:
    sub r2, r3, r0
    lsr r2, r2, #3
    ldr r4, [pc, #0x81d6dd4-0x81d6d5e-2] // =dword_200B1A8
    str r2, [r4]
    mov r2, #0xf0
    mov r4, #0xc
    lsl r4, r4, #8
loc_81D6D68:
    cmp r0, r3
    bge loc_81D6D74
    str r2, [r0]
    strh r4, [r0,#4]
    add r0, #8
    b loc_81D6D68
loc_81D6D74:
    ldr r0, [pc, #0x81d6dd8-0x81d6d74-4] // =word_200A6F0
    ldr r1, [pc, #0x81d6dc0-0x81d6d76-2] // =dword_3001D70
    mov r3, #0x20 
loc_81D6D7A:
    ldrh r4, [r0]
    strh r4, [r1,#6]
    ldrh r4, [r0,#2]
    strh r4, [r1,#0xe]
    ldrh r4, [r0,#4]
    strh r4, [r1,#0x16]
    ldrh r4, [r0,#6]
    strh r4, [r1,#0x1e]
    add r0, #0xc
    add r1, #0x20 
    sub r3, #1
    cmp r3, #0
    bgt loc_81D6D7A
    mov r2, #0
    mvn r2, r2
    ldr r5, [pc, #0x81d6ddc-0x81d6d98-4] // =off_802FD70
    mov r4, #4
    ldr r7, [pc, #0x81d6de0-0x81d6d9c-4] // =sub_800098C+1
    mov r12, r7
loc_81D6DA0:
    ldr r0, [r5]
    ldr r1, [r5,#0x4] // (dword_802FD74 - 0x802fd70)
    mov r7, r12
    mov lr, pc
    bx r7
    add r5, #8
    sub r4, #1
    cmp r4, #0
    bgt loc_81D6DA0
    ldr r0, [pc, #0x81d6de4-0x81d6db2-2] // =dword_3001950
    mov r1, #0
    str r1, [r0]
    pop {r0}
    mov r12, r0
    pop {r4-r7,pc}
    .byte 0, 0
off_81D6DC0:    .word dword_3001D70
off_81D6DC4:    .word unk_30025B0
off_81D6DC8:    .word unk_3002170
off_81D6DCC:    .word dword_3002590
off_81D6DD0:    .word unk_3001150
off_81D6DD4:    .word dword_200B1A8
off_81D6DD8:    .word word_200A6F0
off_81D6DDC:    .word off_802FD70
off_81D6DE0:    .word sub_800098C+1
off_81D6DE4:    .word dword_3001950
    push {r4-r7,lr}
    ldr r5, [pc, #0x81d6e94-0x81d6dea-2] // =dword_3001950
    ldr r6, [r5]
    cmp r6, #0x80
    bge locret_81D6E1E
    ldr r4, [pc, #0x81d6e9c-0x81d6df2-2] // =dword_3002590
    lsl r7, r2, #3
    add r4, r4, r7
    ldr r7, [r4,#4]
    cmp r3, r7
    bge locret_81D6E1E
    cmp r3, #0
    blt locret_81D6E1E
    ldr r4, [r4]
    add r4, r4, r3
    add r7, r6, #1
    str r7, [r5]
    ldrb r7, [r4]
    strb r6, [r4]
    lsl r6, r6, #3
    ldr r5, [pc, #0x81d6e98-0x81d6e10-4] // =unk_3001150
    add r5, r5, r6
    str r0, [r5]
    strh r1, [r5,#4]
    strb r7, [r5,#7]
    mov r0, #0xff
    strb r0, [r5,#6]
locret_81D6E1E:
    pop {r4-r7,pc}
.thumb
sub_81D6E20:
    push {r4-r7,lr}
    mov r4, r8
    mov r5, r9
    mov r6, r12
    push {r4-r6}
    sub sp, sp, #8
    ldr r5, [pc, #0x81d6e94-0x81d6e2c-4] // =dword_3001950
    ldr r6, [r5]
    mov r8, r5
    add r1, r1, r6
    cmp r1, #0x80
    bge loc_81D6E88
    sub r1, r1, r6
    ldr r3, [pc, #0x81d6e98-0x81d6e3a-2] // =unk_3001150
    mov r12, r3
loc_81D6E3E:
    str r0, [sp]
    str r1, [sp,#4]
    mov r3, #8
    ldrsh r3, [r0,r3]
    ldrb r2, [r0,#6]
    ldrh r1, [r0,#4]
    ldr r0, [r0]
    ldr r4, [pc, #0x81d6e9c-0x81d6e4c-4] // =dword_3002590
    lsl r7, r2, #3
    add r4, r4, r7
    ldr r7, [r4,#4]
    cmp r3, r7
    bge loc_81D6E88
    cmp r3, #0
    blt loc_81D6E88
    ldr r4, [r4]
    add r4, r4, r3
    add r7, r6, #1
    str r7, [r5]
    mov r9, r7
    ldrb r7, [r4]
    strb r6, [r4]
    lsl r6, r6, #3
    mov r5, r12
    add r5, r5, r6
    str r0, [r5]
    strh r1, [r5,#4]
    strb r7, [r5,#7]
    mov r0, #0xff
    strb r0, [r5,#6]
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r5, r8
    mov r6, r9
    add r0, #0xc
    sub r1, #1
    bgt loc_81D6E3E
loc_81D6E88:
    add sp, sp, #8
    pop {r4-r6}
    mov r8, r4
    mov r9, r5
    mov r12, r6
    pop {r4-r7,pc}
off_81D6E94:    .word dword_3001950
off_81D6E98:    .word unk_3001150
off_81D6E9C:    .word dword_3002590
    .word 0x40404, 0x4040004, 0x4644B5F0, 0x4656464D, 0xB4F04667
    .word 0x4682B089, 0x46914688, 0x45452501, 0x68DC3E, 0x1C451940
    .word 0xDDFA4545, 0x1C02E038, 0xDA354542, 0x46680151, 0xC9584451
    .word 0xC998C058, 0xC9C0C098, 0x1B53C0C0, 0x46943201, 0xDB1A2B00
    .word 0x844648, 0x18604669, 0x90086800, 0x46560158, 0x18A01982
    .word 0x9F086800, 0xDD0C42B8, 0x1491959, 0x1C104451, 0xC1C4C8C4
    .word 0xC1C4C8C4, 0xC144C844, 0x2B001B5B, 0x1959DAEA, 0x44510149
    .word 0xC88C4668, 0xC8D0C18C, 0xC80CC1D0, 0x4662C10C, 0xDBC94542
    .word 0x21031C28, 0x46FE4D33, 0x1C054728, 0xDCBE2800, 0xBCF0B009
    .word 0x46A946A0, 0x46BC46B2, 0xB5F0BDF0, 0x464D4644, 0x46674656
    .word 0xB089B4F0, 0x46884682, 0x25014691, 0xDC3E4545, 0x19400068
    .word 0x45451C45, 0xE038DDFA, 0x45421C02, 0x151DA35, 0x44514668
    .word 0xC058C958, 0xC098C998, 0xC0C0C9C0, 0x32011B53, 0x2B004694
    .word 0x4648DB1A, 0x46690084, 0x68001860, 0x1589008, 0x19824656
    .word 0x680018A0, 0x42B89F08, 0x1959DA0C, 0x44510149, 0xC8C41C10
    .word 0xC8C4C1C4, 0xC844C1C4, 0x1B5BC144, 0xDAEA2B00, 0x1491959
    .word 0x46684451, 0xC18CC88C, 0xC1D0C8D0, 0xC10CC80C, 0x45424662
    .word 0x1C28DBC9, 0x4D062103, 0x472846FE, 0x28001C05, 0xB009DCBE
    .word 0x46A0BCF0, 0x46B246A9, 0xBDF046BC
    .word sub_814DA9C+1
    .word 0x3006C39, 0x3006C3D, 0x3006F43, 0x3006F75, 0x3006C73
    .word 0x3006C8F, 0x0
    .word 0x3006CA9, 0x0
    .word 0x3006F21, 0x3006F25, 0x0
    .word 0x3006F49, 0x3006CD1, 0x0, 0x0
    .word 0x3006F5D, 0x3006F71, 0x0, 0x0, 0x0
    .word 0x3006DA5, 0x0, 0x0, 0x0, 0x0
    .word 0x3006E7D, 0x0
    .word 0x44444444, 0x88888888, 0xCCCCCCCC, 0x46B8B500, 0x6BBF4657
    .word 0x436C703C, 0x4644707C, 0x592D4D1B, 0x240063BD, 0x633C637C
    .word 0x25002400, 0xB40C46A9, 0x2B002301, 0x7801D01B, 0xDB0629E5
    .word 0x8939E5, 0x58794F0F, 0x470846FE, 0x29E4E7F3, 0xF000D006
    .word 0x3001F81F, 0x3701464F, 0xE7EA46B9, 0x31E47841, 0xF816F000
    .word 0x464F3002, 0x46B93701, 0xBC03E7E1, 0xD0034209, 0x4B031A12
    .word 0x471846FE, 0xBD004648
    .word 0x3006B18
    .word loc_8000AC8+1
    .word sub_80008B4+1
    .word 0x3006B84
// end of function sub_81D6E20

.thumb
sub_81D7118:
    push {r0,r6,lr}
    lsl r7, r1, #6
    add r6, r6, r7
    mov r0, r10
    ldr r0, [r0,#0x38]
    ldr r0, [r0,#0x38]
    mov r1, #0x3c 
loc_81D7126:
    ldr r7, [r6,r1]
    add r7, r7, r0
    str r7, [r2,r1]
    sub r1, #4
    bge loc_81D7126
    add r2, #0x40 
    add r4, #1
    add r5, #1
    pop {r0,r6,pc}
// end of function sub_81D7118

    add r0, #1
    mov pc, lr
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x38]
    ldr r1, [r4,#0x30]
    tst r1, r1
    beq loc_81D715E
    sub r1, #1
    str r1, [r4,#0x30]
    push {r0,r1}
    add r1, r4, #0
    add r1, #0x34 
    ldr r0, [r1]
    sub r0, #1
    str r0, [r1]
    pop {r0,r1}
    ldr r0, [r4,#0x2c]
    pop {pc}
loc_81D715E:
    ldrb r1, [r4,#1]
    mov r8, r1
loc_81D7162:
    cmp r5, r8
    bge loc_81D716E
    mov r1, #0
    bl sub_81D7118
    b loc_81D7162
loc_81D716E:
    mov r3, #0
    pop {pc}
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x38]
    ldrb r1, [r1]
    mov r8, r1
loc_81D717C:
    cmp r4, r8
    bge loc_81D7188
    mov r1, #0
    bl sub_81D7118
    b loc_81D717C
loc_81D7188:
    mov r4, #0
    add r0, #1
    pop {pc}
    push {lr}
    ldrb r1, [r0,#1]
    ldr r2, [pc, #0x81d719c-0x81d7192-2] // =0x5040404
    ldrb r1, [r2,r1]
    mov r4, #1
    add r0, r0, r1
    pop {pc}
dword_81D719C:    .word 0x5040404
    .word 0x4030005
    .word 0x40404
.thumb
sub_81D71A8:
    push {lr}
    ldrb r1, [r0,#1]
    cmp r1, #1
    beq loc_81D71B6
    add r0, #3
    mov r4, #1
    pop {pc}
loc_81D71B6:
    ldrb r1, [r0,#2]
    mov r2, r10
    ldr r2, [r2,#0x38]
    ldr r3, [r2,#0x3c]
    add r3, r3, r1
    str r3, [r2,#0x3c]
    lsl r1, r1, #2
    ldr r3, [r2,#0x1c]
    add r1, r1, r3
    str r1, [r2,#0x1c]
    add r0, #3
    mov r4, #1
    pop {pc}
// end of function sub_81D71A8

    push {r3,lr}
    push {r0,r2,r4-r6}
    ldrb r1, [r0,#1]
    mov r2, #0x80
    tst r1, r2
    beq loc_81D71E8
    bic r1, r2
    lsl r1, r1, #2
    ldr r2, [pc, #0x81d72a0-0x81d71e0-4] // =off_8043C8C
    ldr r2, [r2,r1]
    ldrh r0, [r2]
    b loc_81D71F2
loc_81D71E8:
    lsl r1, r1, #2
    add r1, #8
    mov r7, r10
    ldr r7, [r7,#0x38]
    ldr r0, [r7,r1]
loc_81D71F2:
    ldr r6, [pc, #0x81d7298-0x81d71f2-2] // =sub_8000C00+1
    mov lr, pc
    bx r6
    mov r8, r0
    ldr r6, [pc, #0x81d729c-0x81d71fa-2] // =sub_8000C5C+1
    mov lr, pc
    bx r6
    add r7, r0, #0
    sub r0, #1
    lsl r1, r0, #2
    pop {r0,r2,r4-r6}
    ldrb r3, [r0,#2]
    cmp r3, #0x80
    bge loc_81D724C
    sub r3, r3, r7
    mov r7, #0
    cmp r3, #0x40 
    blt loc_81D721A
    sub r3, #0x40 
    mov r7, #1
loc_81D721A:
    push {r0}
    push {r7}
    mov r0, #0xf
loc_81D7220:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_81D7118
    pop {r1}
    mov r7, r9
    add r7, #1
    mov r9, r7
    sub r1, #4
    bge loc_81D7220
    pop {r0}
loc_81D723E:
    cmp r3, #0
    ble loc_81D7292
    sub r3, #1
    add r1, r0, #0
    bl sub_81D7118
    b loc_81D723E
loc_81D724C:
    sub r3, #0x80
    sub r3, r3, r7
    push {r0,r1}
    mov r0, #0
    cmp r3, #0x40 
    blt loc_81D725C
    sub r3, #0x40 
    mov r0, #1
loc_81D725C:
    cmp r3, #0
    ble loc_81D7270
    sub r3, #1
    add r1, r0, #0
    bl sub_81D7118
    mov r7, r9
    add r7, #1
    mov r9, r7
    b loc_81D725C
loc_81D7270:
    pop {r0,r1}
    push {r0}
    mov r0, #0xf
loc_81D7276:
    mov r7, r8
    lsr r7, r1
    and r7, r0
    push {r1}
    mov r1, #1
    add r1, r1, r7
    bl sub_81D7118
    pop {r1}
    mov r7, r9
    add r7, #1
    mov r9, r7
    sub r1, #4
    bge loc_81D7276
loc_81D7292:
    pop {r0}
    add r0, #3
    pop {r3,pc}
off_81D7298:    .word sub_8000C00+1
off_81D729C:    .word sub_8000C5C+1
off_81D72A0:    .word off_8043C8C
    push {r3,r7,lr}
    ldr r1, [pc, #0x81d72b4-0x81d72a6-2] // =0x3006DB8
    ldrb r3, [r0,#1]
    lsl r3, r3, #2
    ldr r1, [r1,r3]
    mov lr, pc
    bx r1
    pop {r3,r7,pc}
dword_81D72B4:    .word 0x3006DB8
    .word 0x0
    .word 0x3006DC9, 0x3006E1D, 0x3006E1D, 0x4B54B5FE, 0x36016B1E
    .word 0x4E0F631E, 0xD27882, 0x687418B6, 0x1C1F6836, 0x683A3734
    .word 0x490C0192, 0xB4031889, 0x1C221C30, 0x4B08B408, 0x471846FE
    .word 0xBC41BC08, 0x37341C1F, 0x31016839, 0x629E6039, 0x62D83003
    .word 0xBDFE1C30
    .word 0x8043B54
    .word sub_8000920+1
    .word 0x200DD20
    push {r3,r7,lr}
    push {r0}
    ldrb r3, [r0,#2]
    ldrb r0, [r0,#3]
    sub r0, #1
    lsl r0, r0, #2
    mov r7, r10
    ldr r7, [r7,#0x38]
    add r7, #8
    add r7, r7, r0
    ldr r1, [r7]
    mov r0, #0xf
    mov r7, #0
    and r0, r3
    tst r0, r0
    bne loc_81D7340
    mov r0, #8
    mov r7, #0x10
loc_81D7340:
    push {r0}
    ldr r3, [pc, #0x81d7378-0x81d7342-2] // =sub_8040D5C+1
    mov lr, pc
    bx r3
    add r3, r1, #0
    add r1, r0, #0
    push {r7}
    mov r0, #0x10
    tst r7, r0
    beq loc_81D7358
    tst r1, r1
    beq loc_81D735C
loc_81D7358:
    bl sub_81D7118
loc_81D735C:
    add r1, r3, #0
    pop {r7}
    pop {r0}
    push {r7}
    mov r7, r9
    add r7, #1
    mov r9, r7
    pop {r7}
    sub r0, #1
    bne loc_81D7340
    pop {r0}
    add r0, #4
    pop {r3,r7,pc}
    .balign 4, 0x00
off_81D7378:    .word sub_8040D5C+1
    push {r3,r7,lr}
    ldr r1, [pc, #0x81d738c-0x81d737e-2] // =0x3006E90
    ldrb r3, [r0,#1]
    lsl r3, r3, #2
    ldr r1, [r1,r3]
    mov lr, pc
    bx r1
    pop {r3,r7,pc}
dword_81D738C:    .word 0x3006E90
    .word 0x3006E99, 0x3006E99, 0x4B20B5FE, 0x36016B1E, 0x4E11631E
    .word 0x78417882, 0xD0004209, 0x21003202, 0x58B60092, 0x37341C1F
    .word 0x192883A, 0x18894915, 0x1C30B403, 0xB4082240, 0x46FE4B13
    .word 0xBC084718, 0x1C1FBC41, 0x78393734, 0x70393101, 0x3003629E
    .word 0x1C3062D8, 0xBDFE
    .word 0x3006EEC
    .word 0x2001186, 0x200119E, 0x20007D6, 0x200083A, 0x20018F4
    .word 0x2001950, 0x20019AC, 0x2001A08, 0x2001A64, 0x2001AC0
    .word 0x200AFA0
    .word sub_8000920+1
    .word 0x200A220
    add r0, #4
    mov pc, lr
    push {r1-r5,r7,lr}
    mov r1, #1
    mov r1, #2
    ldrb r1, [r0,r1]
    cmp r1, #0xff
    beq loc_81D743E
    mov r7, r10
    ldr r7, [r7,#0x38]
    ldr r2, [r7,#0x40]
    lsl r1, r1, #1
    ldrh r1, [r2,r1]
    add r0, r2, r1
    pop {r1-r5,r7,pc}
loc_81D743E:
    add r0, #3
    pop {r1-r5,r7,pc}
    add r0, #2
    mov pc, lr
    .balign 4, 0x00
    ldrb r7, [r0,#1]
    ldr r1, [pc, #0x81d7454-0x81d744a-2] // =0x3006F58
    ldrb r1, [r7,r1]
    add r0, r0, r1
    mov pc, lr
    .balign 4, 0x00
dword_81D7454:    .word 0x3006F58
    .word 0x3, 0x49027847, 0x18405C79, 0x46F7, 0x3006F6C, 0x3030203
    .word 0x46F73003, 0x49027847, 0x18405C79, 0x46F7, 0x3006F84, 0x2020202
    .word 0x4040404, 0x4647B5F2, 0x4653464A, 0xB49C4664, 0x9744B23, 0x191A00A4
    .word 0x1B3300E4, 0x27604C1F, 0x193F434F, 0x5C644C1F, 0xB440B410, 0x19366F2E
    .word 0xBC40672E, 0x193600A4, 0x3C4067EE, 0x4E1B4264, 0xB65BAE, 0x59804818
    .word 0xBC404684, 0xB408260B, 0x68384663, 0x18C06879, 0x40A118C9, 0xBC0840E1
    .word 0xB404B450, 0x1AE42420, 0x1C066812, 0x4316409E, 0x409A1C0A, 0x431040E0
    .word 0xBC0440E1, 0x60506016, 0x37086091, 0x18122060, 0x3E01BC50, 0xBC9CDADF
    .word 0x469146B8, 0x46A4469A, 0xBDF2, 0x86ACD60, 0x200BEA0, 0x8043CA4
    .word 0x3006B84, 0x1D0, 0x4647B5F2, 0x4653464A, 0xB49C4664, 0x9744B19
    .word 0x191A00A4, 0x1B3300E4, 0x27604C15, 0x193F434F, 0x5C644C15, 0x3C4000A4
    .word 0x260B4264, 0x68796838, 0x40E140A1, 0xB404B450, 0x1AE42420, 0x1C066812
    .word 0x4316409E, 0x409A1C0A, 0x431040E0, 0xBC0440E1, 0x60506016, 0x37086091
    .word 0x18122060, 0x3E01BC50, 0xBC9CDAE4, 0x469146B8, 0x46A4469A, 0xBDF2
    .word 0x86ACD60, 0x200BEA0, 0x8043CA4, 0x4641B5F0, 0x4649B402, 0x4F4CB402
    .word 0x931C02, 0x58ED4D50, 0xD0062A00, 0xD0032A01, 0x1C9210D, 0xE000187F
    .word 0x682E3780, 0xD06E4236, 0x240046B0, 0x60386830, 0x60786E30, 0x683036C0
    .word 0x6E3060B8, 0x36C060F8, 0x61386830, 0x61786E30, 0x683036C0, 0x6E3061B8
    .word 0x464661F8, 0x21043604, 0x5C681909, 0x46B0183F, 0x68303401, 0x6E306038
    .word 0x36C06078, 0x60B86830, 0x60F86E30, 0x683036C0, 0x6E306138, 0x36C06178
    .word 0x61B86830, 0x61F86E30, 0x36044646, 0x19092104, 0x183F5C68, 0x340146B0
    .word 0x60386830, 0x60786E30, 0x683036C0, 0x6E3060B8, 0x36C060F8, 0x61386830
    .word 0x61786E30, 0x683036C0, 0x6E3061B8, 0x464661F8, 0x21043604, 0x5C681909
    .word 0x46B0183F, 0x68303401, 0x6E306038, 0x36C06078, 0x60B86830, 0x60F86E30
    .word 0x683036C0, 0x6E306138, 0x36C06178, 0x61B86830, 0x61F86E30, 0x36044646
    .word 0x19092104, 0x183F5C68, 0x350846B0, 0xBC02E78D, 0xBC024688, 0x480A4689
    .word 0x4A0B490A, 0x46FE4B0B, 0x46554718, 0x480A6AED, 0x46FE4B0A, 0x42004718
    .word 0x2002D002, 0x5468213D, 0xBDF0, 0x200BEA0, 0x200CDA0, 0x6015700
    .word 0xF00, 0x8000AC9, 0x400, 0x8040939, 0x300720C, 0x8044314
    .word 0x8044378, 0x804440C
loc_81D7718:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r2, [r6,#0x3c]
    ldr r3, [r6,#0x30]
    push {r2,r3}
    ldr r0, [pc, #0x81d7a04-0x81d7724-4] // =battle_isTimeStop+1
    mov lr, pc
    bx r0
    pop {r2,r3}
    beq loc_81D773E
    ldr r4, [pc, #0x81d7a08-0x81d772e-2] // =0x1000000
    tst r2, r4
    bne loc_81D773E
    ldr r1, [r7,#0x30]
    ldr r4, [pc, #0x81d7a0c-0x81d7736-2] // =0x10000
    tst r1, r4
    bne loc_81D773E
    pop {r4,r6,r7,pc}
loc_81D773E:
    ldr r0, [r7,#0x3c]
    ldr r4, [pc, #0x81d7a10-0x81d7740-4] // =0x201
    tst r0, r4
    beq loc_81D774E
    mov r1, #4
    tst r3, r1
    bne loc_81D774E
    pop {r4,r6,r7,pc}
loc_81D774E:
    mov r4, #4
    tst r0, r4
    beq loc_81D775C
    ldr r4, [pc, #0x81d7a14-0x81d7754-4] // =0x201
    tst r3, r4
    bne loc_81D775C
    pop {r4,r6,r7,pc}
loc_81D775C:
    ldr r4, [pc, #0x81d7a18-0x81d775c-4] // =0x201
    tst r0, r4
    beq loc_81D776A
    ldr r4, [pc, #0x81d7a1c-0x81d7762-2] // =0x201
    tst r3, r4
    bne loc_81D776A
    pop {r4,r6,r7,pc}
loc_81D776A:
    ldr r4, [pc, #0x81d7a20-0x81d776a-2] // =0x201
    tst r0, r4
    beq loc_81D7772
    pop {r4,r6,r7,pc}
loc_81D7772:
    mov r4, #0x20 
    tst r0, r4
    beq loc_81D7780
    mov r4, #0x80
    tst r3, r4
    bne loc_81D7780
    pop {r4,r6,r7,pc}
loc_81D7780:
    ldr r4, [pc, #0x81d7a10-0x81d7780-4] // =0x201
    tst r2, r4
    beq loc_81D7790
    ldr r3, [r7,#0x30]
    mov r1, #4
    tst r3, r1
    bne loc_81D7790
    pop {r4,r6,r7,pc}
loc_81D7790:
    mov r4, #4
    tst r2, r4
    beq loc_81D77A0
    ldr r3, [r7,#0x30]
    ldr r4, [pc, #0x81d7a14-0x81d7798-4] // =0x201
    tst r3, r4
    bne loc_81D77A0
    pop {r4,r6,r7,pc}
loc_81D77A0:
    ldr r4, [pc, #0x81d7a18-0x81d77a0-4] // =0x201
    tst r2, r4
    beq loc_81D77B0
    ldr r3, [r7,#0x30]
    ldr r4, [pc, #0x81d7a24-0x81d77a8-4] // =0x201
    tst r3, r4
    bne loc_81D77B0
    pop {r4,r6,r7,pc}
loc_81D77B0:
    ldr r4, [pc, #0x81d7a20-0x81d77b0-4] // =0x201
    tst r2, r4
    beq loc_81D77B8
    pop {r4,r6,r7,pc}
loc_81D77B8:
    mov r4, #0x20 
    tst r2, r4
    beq loc_81D77C8
    ldr r3, [r7,#0x30]
    mov r4, #0x80
    tst r3, r4
    bne loc_81D77C8
    pop {r4,r6,r7,pc}
loc_81D77C8:
    mov r4, #1
    tst r2, r4
    beq loc_81D780C
    ldr r1, [r7,#0x30]
    ldr r4, [pc, #0x81d7a28-0x81d77d0-4] // =0x201
    tst r1, r4
    bne loc_81D77DA
    mov r4, #2
    b loc_81D77DC
loc_81D77DA:
    ldr r4, [pc, #0x81d7a2c-0x81d77da-2] // =0x201
loc_81D77DC:
    tst r1, r4
    bne loc_81D780C
    mov r0, #1
    ldr r1, [r7,#0x70]
    orr r1, r0
    str r1, [r7,#0x70]
    ldr r3, [r7,#0x30]
    mov r2, #0x10
    bic r3, r2
    ldr r1, [pc, #0x81d7a30-0x81d77ee-2] // =0x201
    tst r3, r1
    bne loc_81D7804
    ldrb r2, [r7,#5]
    mov r0, #1
    lsl r0, r2
    ldrb r2, [r6,#3]
    orr r2, r0
    strb r2, [r6,#3]
    ldr r2, [pc, #0x81d7a34-0x81d7800-4] // =0x201
    orr r3, r2
loc_81D7804:
    ldr r2, [r6,#0x70]
    orr r2, r3
    str r2, [r6,#0x70]
    pop {r4,r6,r7,pc}
loc_81D780C:
    ldr r3, [r6,#0x30]
    ldr r4, [pc, #0x81d7a38-0x81d780e-2] // =0x201
    tst r3, r4
    beq loc_81D781E
    ldr r3, [r7,#0x30]
    ldr r4, [pc, #0x81d7a3c-0x81d7816-2] // =0x201
    tst r3, r4
    beq loc_81D781E
    pop {r4,r6,r7,pc}
loc_81D781E:
    ldr r3, [r6,#0x30]
    ldr r4, [pc, #0x81d7a3c-0x81d7820-4] // =0x201
    tst r3, r4
    beq loc_81D7830
    ldr r3, [r7,#0x30]
    ldr r4, [pc, #0x81d7a38-0x81d7828-4] // =0x201
    tst r3, r4
    beq loc_81D7830
    pop {r4,r6,r7,pc}
loc_81D7830:
    mov r4, #8
    tst r2, r4
    bne locret_81D7930
    ldr r3, [r7,#0x44]
    ldr r2, [r6,#0x7c]
    orr r2, r3
    str r2, [r6,#0x7c]
    ldr r3, [r7,#0x30]
    ldr r2, [r6,#0x70]
    orr r2, r3
    str r2, [r6,#0x70]
    add r4, r3, #0
    ldrb r2, [r7,#0x19]
    mov r1, #0x76 
    ldrb r0, [r6,r1]
    orr r0, r2
    strb r0, [r6,r1]
    ldrb r2, [r7,#0x10]
    cmp r2, #0
    beq loc_81D785A
    strb r2, [r6,#0x11]
loc_81D785A:
    bl sub_81D7960
    ldrb r2, [r7,#7]
    ldrb r0, [r6,#0xd]
    tst r0, r0
    beq loc_81D787A
    mov r0, #0x7f
    tst r2, r0
    beq loc_81D787A
    mov r0, #0x80
    tst r2, r0
    bne loc_81D787A
    mov r3, #0x40 
    ldr r1, [r6,#0x70]
    orr r1, r3
    str r1, [r6,#0x70]
loc_81D787A:
    mov r1, #0x80
    tst r1, r2
    bne loc_81D789E
    mov r3, #0x7f
    and r2, r3
    beq loc_81D789E
    ldrb r0, [r6,#0xd]
    tst r0, r0
    beq loc_81D7896
    mov r2, #1
    lsl r2, r2, #0xf
    mov r0, #0x90
    strh r2, [r6,r0]
    b loc_81D789E
loc_81D7896:
    mov r0, #0x90
    ldrh r3, [r6,r0]
    add r3, r3, r2
    strh r3, [r6,r0]
loc_81D789E:
    mov r0, #0x8e
    mov r3, #0x7f
    and r2, r3
    ldrh r3, [r6,r0]
    add r3, r3, r2
    strh r3, [r6,r0]
    lsr r4, r4, #9
    bcc loc_81D78B6
    mov r1, #0x92
    ldrh r3, [r6,r1]
    add r3, #1
    strh r3, [r6,r1]
loc_81D78B6:
    ldrb r2, [r7,#0xe]
    ldrb r3, [r6,#0xf]
    orr r3, r2
    strb r3, [r6,#0xf]
    mov r0, #0x12
    ldrh r1, [r7,r0]
    mov r2, #0xff
    and r2, r1
    beq loc_81D78CC
    mov r2, #0xa4
    strh r1, [r6,r2]
loc_81D78CC:
    mov r4, #1
    ldrb r0, [r6,#2]
    ldrb r1, [r7,#2]
    bl sub_81D7932
    add r4, r4, r0
    ldrb r0, [r6,#0x18]
    ldrb r1, [r7,#0x19]
    bl sub_81D79E2
    add r4, r4, r0
    mov r0, #0x75 
    sub r1, r4, #1
    strb r1, [r6,r0]
    bl sub_81D79BA
    add r4, r4, r0
    bl sub_81D79A2
    add r4, r4, r0
    mov r0, #0x74 
    sub r1, r4, #1
    strb r1, [r6,r0]
    ldrh r0, [r7,#0x2e]
    ldrb r1, [r7,#2]
    cmp r1, #3
    bne loc_81D790A
    mov r2, #0x78 
    ldrh r3, [r6,r2]
    add r3, r3, r0
    strh r3, [r6,r2]
loc_81D790A:
    mul r0, r4
    add r1, r1, r1
    add r1, #0x82
    ldrh r2, [r6,r1]
    add r2, r2, r0
    strh r2, [r6,r1]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_81D7B6C
    mov r2, #0x82
    ldrh r1, [r6,r2]
    add r1, r1, r0
    strh r1, [r6,r2]
    ldr r1, [r7,#0x64]
    mov r3, #0xa0
    ldr r2, [r6,r3]
    add r2, r2, r1
    str r2, [r6,r3]
locret_81D7930:
    pop {r4,r6,r7,pc}
.thumb
sub_81D7932:
    mov r2, #5
    mul r0, r2
    add r0, r0, r1
    ldr r1, [pc, #0x81d7940-0x81d7938-4] // =0x3007444
    ldrb r0, [r1,r0]
    mov pc, lr
    .byte 0, 0
dword_81D7940:    .word 0x3007444
    .byte 0, 0, 0, 0
    .word 0x1000000, 0x0
    .word 0x100
    .word 0x1000000, 0x100, 0x0
// end of function sub_81D7932

.thumb
sub_81D7960:
    push {lr}
    ldrb r0, [r6,#2]
    cmp r0, #2
    bne locret_81D79A0
    ldr r0, [r7,#0x30]
    ldr r1, [pc, #0x81d7a40-0x81d796a-2] // =0xC000000
    tst r0, r1
    beq locret_81D79A0
    ldr r0, [r6,#0x30]
    tst r0, r1
    bne locret_81D79A0
    ldrh r0, [r7,#0x28]
    cmp r0, #0
    bne locret_81D79A0
    ldr r0, [r6,#0x70]
    mov r1, #1
    tst r0, r1
    bne locret_81D79A0
    ldrb r0, [r7,#0xa]
    ldrb r1, [r7,#0xb]
    bl sub_81D7E58
    ldrb r0, [r0,#2]
    cmp r0, #7
    bne locret_81D79A0
    ldrb r0, [r7,#0xa]
    ldrb r1, [r7,#0xb]
    mov r2, #2
    bl sub_81D7EA4
    mov r0, #0x50 
    strb r0, [r7,#0x11]
locret_81D79A0:
    pop {pc}
// end of function sub_81D7960

.thumb
sub_81D79A2:
    push {r4,lr}
    mov r4, #0
    ldr r0, [r6,#0x3c]
    ldr r1, [pc, #0x81d7a44-0x81d79a8-4] // =0x80000000
    tst r0, r1
    beq loc_81D79B6
    ldrb r0, [r7,#2]
    cmp r0, #3
    bne loc_81D79B6
    mov r4, #1
loc_81D79B6:
    add r0, r4, #0
    pop {r4,pc}
// end of function sub_81D79A2

.thumb
sub_81D79BA:
    push {r4,r5,lr}
    mov r4, #0
    ldr r0, [r6,#0x3c]
    ldr r1, [pc, #0x81d7a0c-0x81d79c0-4] // =0x10000
    tst r0, r1
    beq loc_81D79DE
    ldr r0, [r6,#0x70]
    mov r1, #2
    tst r0, r1
    bne loc_81D79D4
    ldrb r0, [r7,#0x19]
    cmp r0, #0x10
    bne loc_81D79DE
loc_81D79D4:
    mov r4, #1
    ldr r5, [r6,#0x38]
    ldr r0, [pc, #0x81d7a48-0x81d79d8-4] // =sub_801A29A+1
    mov lr, pc
    bx r0
loc_81D79DE:
    add r0, r4, #0
    pop {r4,r5,pc}
// end of function sub_81D79BA

.thumb
sub_81D79E2:
    mov r2, #0
    tst r0, r1
    bne loc_81D79F8
    cmp r0, #0x80
    bne loc_81D79FE
    ldr r0, [r7,#0x30]
    ldr r1, [pc, #0x81d7a4c-0x81d79ee-2] // =0x2000
    tst r0, r1
    beq loc_81D79FE
    mov r2, #1
    b loc_81D79FE
loc_81D79F8:
    cmp r0, #0
    beq loc_81D79FE
    mov r2, #1
loc_81D79FE:
    add r0, r2, #0
    mov pc, lr
    .balign 4, 0x00
off_81D7A04:    .word battle_isTimeStop+1
dword_81D7A08:    .word 0x1000000
dword_81D7A0C:    .word 0x10000
dword_81D7A10:    .word 0x202, 0x1008, 0x800000, 0xC003000, 0x8000000, 0x3000
    .word 0x4000, 0x1002, 0xC005000, 0x20000, 0x100000, 0x8000
dword_81D7A40:    .word 0xC000000
dword_81D7A44:    .word 0x80000000
off_81D7A48:    .word sub_801A29A+1
dword_81D7A4C:    .word 0x2000
// end of function sub_81D79E2

    push {r4-r7,lr}
    sub sp, sp, #8
    ldr r5, [r5,#0x54]
    ldrb r1, [r5,#1]
    mov r2, #0x80
    tst r1, r2
    bne loc_81D7ABC
    lsl r1, r1, #2
    ldr r2, [pc, #0x81d7af8-0x81d7a60-4] // =off_8019B78
    ldr r4, [r2,r1]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    ldr r2, [pc, #0x81d7d9c-0x81d7a68-4] // =object_getFlipDirection+1
    mov lr, pc
    bx r2
    .hword 0x1C06
    .word 0x56202000, 0xD03D287F, 0x7AAA4370, 0x21011880, 0x7AEA5661
    .word 0x1C2A1889, 0x91019000, 0x46FE4BC4, 0xD0114718, 0x99019800
    .word 0xF972F000, 0x99019800, 0xF99EF000, 0x99019800, 0xF0001C2A
    .word 0x9800F827, 0x1C2A9901, 0xF8A8F000, 0xE7D93402
loc_81D7ABC:
    mov r7, #1
loc_81D7ABE:
    mov r6, #1
loc_81D7AC0:
    add r0, r6, #0
    add r1, r7, #0
    add r2, r5, #0
    bl sub_81D7D80
    beq loc_81D7AE8
    add r0, r6, #0
    add r1, r7, #0
    bl sub_81D7DE0
    add r0, r6, #0
    add r1, r7, #0
    add r2, r5, #0
    bl loc_81D7AFC
    add r0, r6, #0
    add r1, r7, #0
    add r2, r5, #0
    bl loc_81D7C08
loc_81D7AE8:
    add r6, #1
    cmp r6, #6
    ble loc_81D7AC0
    add r7, #1
    cmp r7, #3
    ble loc_81D7ABE
    add sp, sp, #8
    pop {r4-r7,pc}
off_81D7AF8:    .word off_8019B78
loc_81D7AFC:
    push {r4-r7,lr}
    push {r0-r2}
    ldr r0, [pc, #0x81d7da4-0x81d7b00-4] // =battle_isPaused+1
    mov lr, pc
    bx r0
    pop {r0-r2}
    bne locret_81D7B4A
    ldr r3, [pc, #0x81d7b4c-0x81d7b0a-2] // =unk_2034F60
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    add r5, r2, #0
    mov r6, r10
    ldr r6, [r6,#0x30]
    ldr r7, [r3,r0]
loc_81D7B1A:
    lsl r7, r7, #1
    bcs loc_81D7B22
    beq locret_81D7B4A
    b loc_81D7B46
loc_81D7B22:
    ldr r0, [r5,#0x68]
    ldr r1, [r6,#0x44]
    tst r0, r1
    bne loc_81D7B46
    orr r0, r1
    str r0, [r5,#0x68]
    ldr r0, [r6,#0x68]
    ldr r1, [r5,#0x44]
    orr r0, r1
    str r0, [r6,#0x68]
    add r0, r5, #0
    add r1, r6, #0
    bl sub_81D7B50
    add r0, r6, #0
    add r1, r5, #0
    bl sub_81D7B50
loc_81D7B46:
    add r6, #0xa8
    b loc_81D7B1A
locret_81D7B4A:
    pop {r4-r7,pc}
off_81D7B4C:    .word unk_2034F60
.thumb
sub_81D7B50:
    push {r6,r7,lr}
    ldr r2, [r0,#0x34]
    ldr r3, [r1,#0x30]
    tst r2, r3
    beq locret_81D7B6A
    add r6, r0, #0
    add r7, r1, #0
    bl loc_81D7718
    add r0, r6, #0
    add r1, r7, #0
    bl loc_81D7B92
locret_81D7B6A:
    pop {r6,r7,pc}
// end of function sub_81D7B50

.thumb
sub_81D7B6C:
    push {r4,lr}
    add r4, r1, #0
    ldrb r1, [r0,#0xb]
    ldrb r0, [r0,#0xa]
    bl sub_81D7E58
    ldrb r0, [r0,#2]
    ldrb r1, [r4,#2]
    cmp r1, #1
    bne loc_81D7B88
    cmp r0, #6
    bne loc_81D7B8E
    ldrh r0, [r4,#0x2e]
    pop {r4,pc}
loc_81D7B88:
    b loc_81D7B8E
    ldrh r0, [r4,#0x2e]
    pop {r4,pc}
loc_81D7B8E:
    mov r0, #0
    pop {r4,pc}
// end of function sub_81D7B6C

loc_81D7B92:
    push {r4,r6,r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    ldr r0, [pc, #0x81d7da8-0x81d7b98-4] // =battle_isTimeStop+1
    mov lr, pc
    bx r0
    ldr r2, [r6,#0x3c]
    beq loc_81D7BB2
    ldr r4, [pc, #0x81d7dac-0x81d7ba2-2] // =0x1000000
    tst r2, r4
    bne loc_81D7BB2
    ldr r1, [r7,#0x30]
    ldr r4, [pc, #0x81d7db0-0x81d7baa-2] // =0x1000000
    tst r1, r4
    bne loc_81D7BB2
    pop {r4,r6,r7,pc}
loc_81D7BB2:
    ldr r0, [r7,#0x3c]
    ldr r3, [r6,#0x30]
    mov r4, #0x20 
    tst r0, r4
    beq loc_81D7BC4
    mov r4, #0x80
    tst r3, r4
    bne loc_81D7BC4
    pop {r4,r6,r7,pc}
loc_81D7BC4:
    ldr r1, [r7,#0x30]
    ldr r2, [r6,#0x3c]
    mov r4, #0x20 
    tst r2, r4
    beq loc_81D7BD6
    mov r4, #0x80
    tst r1, r4
    bne loc_81D7BD6
    pop {r4,r6,r7,pc}
loc_81D7BD6:
    ldr r2, [r6,#0x6c]
    ldr r3, [r7,#0x30]
    orr r2, r3
    str r2, [r6,#0x6c]
    ldrb r2, [r7,#0x19]
    mov r1, #0x77 
    ldrb r0, [r6,r1]
    orr r0, r2
    strb r0, [r6,r1]
    ldrb r2, [r7,#2]
    add r2, r2, r2
    add r2, #0x94
    ldrh r3, [r7,#0x2e]
    ldrh r4, [r6,r2]
    add r4, r4, r3
    strh r4, [r6,r2]
    add r0, r6, #0
    add r1, r7, #0
    bl sub_81D7B6C
    mov r2, #0x94
    ldrh r1, [r6,r2]
    add r1, r1, r0
    strh r1, [r6,r2]
    pop {r4,r6,r7,pc}
loc_81D7C08:
    push {r4,r6,r7,lr}
    push {r0-r2}
    ldr r0, [pc, #0x81d7db4-0x81d7c0c-4] // =battle_isPaused+1
    mov lr, pc
    bx r0
    tst r0, r0
    pop {r0-r2}
    bne locret_81D7C74
    add r4, r2, #0
    add r6, r0, #0
    add r7, r1, #0
    bl sub_81D7E58
    tst r0, r0
    beq locret_81D7C74
    ldr r2, [r4,#0x30]
    ldr r1, [pc, #0x81d7c78-0x81d7c28-4] // =0xC000000
    tst r2, r1
    bne locret_81D7C74
    ldrb r0, [r0,#2]
    cmp r0, #6
    bne loc_81D7C46
    ldrb r0, [r4,#2]
    cmp r0, #1
    bne locret_81D7C74
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #2
    bl sub_81D7EA4
    pop {r4,r6,r7,pc}
loc_81D7C46:
    cmp r0, #8
    bne loc_81D7C5C
    ldrb r0, [r4,#2]
    cmp r0, #2
    bne locret_81D7C74
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #2
    bl sub_81D7EA4
    pop {r4,r6,r7,pc}
loc_81D7C5C:
    cmp r0, #9
    blt locret_81D7C74
    cmp r0, #0xc
    bgt locret_81D7C74
    ldrb r0, [r4,#2]
    cmp r0, #4
    bne locret_81D7C74
    add r0, r6, #0
    add r1, r7, #0
    mov r2, #2
    bl sub_81D7EA4
locret_81D7C74:
    pop {r4,r6,r7,pc}
    .balign 4, 0x00
dword_81D7C78:    .word 0xC000000
    push {r4-r7,lr}
    mov r3, r8
    push {r0}
    add r5, r0, #0
    ldrb r1, [r5,#1]
    mov r2, #0x80
    tst r1, r2
    bne loc_81D7CD6
    lsl r1, r1, #2
    ldr r2, [pc, #0x81d7d20-0x81d7c8e-2] // =off_8019B78
    ldr r4, [r2,r1]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    ldr r2, [pc, #0x81d7db8-0x81d7c96-2] // =object_getFlipDirection+1
    mov lr, pc
    bx r2
    add r6, r0, #0
loc_81D7C9E:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_81D7D1A
    mul r0, r6
    ldrb r2, [r5,#0xa]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldrb r2, [r5,#0xb]
    add r1, r1, r2
    add r7, r0, #0
    mov r8, r1
    ldr r3, [pc, #0x81d7dbc-0x81d7cb8-4] // =object_isValidPanel+1
    mov lr, pc
    bx r3
    beq loc_81D7CD2
    add r0, r7, #0
    mov r1, r8
    add r2, r5, #0
    bl sub_81D7D68
    add r0, r7, #0
    mov r1, r8
    bl sub_81D7DE0
loc_81D7CD2:
    add r4, #2
    b loc_81D7C9E
loc_81D7CD6:
    lsl r1, r1, #0x19
    lsr r1, r1, #0x16
    ldr r0, [pc, #0x81d7d24-0x81d7cda-2] // =dword_8019C34
    add r0, r0, r1
    ldr r2, [r0]
    ldr r3, [r0,#4]
    mov r7, #1
loc_81D7CE4:
    mov r6, #1
loc_81D7CE6:
    push {r2,r3}
    add r0, r6, #0
    add r1, r7, #0
    push {r4}
    ldr r4, [pc, #0x81d7dc0-0x81d7cee-2] // =object_checkPanelParameters+1
    mov lr, pc
    bx r4
    pop {r4}
    tst r0, r0
    beq loc_81D7D0C
    add r2, r5, #0
    add r0, r6, #0
    add r1, r7, #0
    bl sub_81D7D68
    add r0, r7, #0
    mov r1, r8
    bl sub_81D7DE0
loc_81D7D0C:
    pop {r2,r3}
    add r6, #1
    cmp r6, #6
    ble loc_81D7CE6
    add r7, #1
    cmp r7, #3
    ble loc_81D7CE4
loc_81D7D1A:
    pop {r0}
    mov r8, r0
    pop {r4-r7,pc}
off_81D7D20:    .word off_8019B78
off_81D7D24:    .word dword_8019C34
    push {r4-r6,lr}
    add r5, r0, #0
    ldrb r1, [r0,#1]
    lsl r1, r1, #2
    ldr r2, [pc, #0x81d7d64-0x81d7d30-4] // =off_8019B78
    ldr r4, [r2,r1]
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    ldr r2, [pc, #0x81d7dc4-0x81d7d38-4] // =sub_800E2C2+1
    mov lr, pc
    bx r2
    add r6, r0, #0
loc_81D7D40:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq locret_81D7D60
    mul r0, r6
    ldrb r2, [r5,#0xa]
    add r0, r0, r2
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldrb r2, [r5,#0xb]
    add r1, r1, r2
    add r2, r5, #0
    bl sub_81D7D80
    add r4, #2
    b loc_81D7D40
locret_81D7D60:
    pop {r4-r6,pc}
    .balign 4, 0x00
off_81D7D64:    .word off_8019B78
.thumb
sub_81D7D68:
    ldr r3, [pc, #0x81d7d7c-0x81d7d68-4] // =unk_2034F60
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [r3,r0]
    ldr r2, [r2,#0x44]
    orr r1, r2
    str r1, [r3,r0]
    mov pc, lr
    .balign 4, 0x00
off_81D7D7C:    .word unk_2034F60
// end of function sub_81D7D68

.thumb
sub_81D7D80:
    ldr r3, [pc, #0x81d7d98-0x81d7d80-4] // =unk_2034F60
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    add r3, r3, r0
    ldr r1, [r3]
    add r0, r1, #0
    ldr r2, [r2,#0x44]
    bic r1, r2
    str r1, [r3]
    tst r0, r2
    mov pc, lr
off_81D7D98:    .word unk_2034F60
off_81D7D9C:    .word object_getFlipDirection+1
    .word object_isValidPanel+1
off_81D7DA4:    .word battle_isPaused+1
off_81D7DA8:    .word battle_isTimeStop+1
dword_81D7DAC:    .word 0x1000000, 0x10000
off_81D7DB4:    .word battle_isPaused+1
off_81D7DB8:    .word object_getFlipDirection+1
off_81D7DBC:    .word object_isValidPanel+1
off_81D7DC0:    .word object_checkPanelParameters+1
off_81D7DC4:    .word sub_800E2C2+1
// end of function sub_81D7D80

    push {r4,r5,lr}
    mov r5, #4
loc_81D7DCC:
    mov r4, #7
loc_81D7DCE:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_81D7DE0
    sub r4, #1
    bgt loc_81D7DCE
    sub r5, #1
    bgt loc_81D7DCC
    pop {r4,r5,pc}
.thumb
sub_81D7DE0:
    push {r4-r7,lr}
    add r4, r0, #0
    add r5, r1, #0
    bl sub_81D7E58
    tst r0, r0
    beq locret_81D7E1C
    ldrb r1, [r0,#2]
    strb r1, [r0,#6]
    lsl r2, r1, #2
    ldr r3, [pc, #0x81d7e20-0x81d7df4-4] // =0x3007924
    ldr r3, [r3,r2]
    orr r1, r3
    ldrb r2, [r0,#3]
    strb r2, [r0,#7]
    lsl r2, r2, #5
    orr r1, r2
    ldr r2, [r0,#0x1c]
loc_81D7E04:
    tst r2, r2
    beq loc_81D7E0A
    mov r2, #0x80
loc_81D7E0A:
    orr r1, r2
    add r7, r0, #0
    add r6, r1, #0
    add r0, r4, #0
    add r1, r5, #0
    bl sub_81D7E78
    orr r6, r0
    str r6, [r7,#0x14]
locret_81D7E1C:
    pop {r4-r7,pc}
    .byte 0, 0
dword_81D7E20:    .word 0x3007924
    .byte 0
    .byte 0x80
    .byte 1
    .byte 0
    .byte 0
    .byte 0x40 
    .byte 1
    .byte 0
    .byte 0x10
    .byte 0
    .byte 1
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 1
    .byte 0
    .byte 0x10
    .byte 1
    .byte 1
    .byte 0
    .byte 0x10
    .byte 0x20
    .byte 1
    .byte 0
    .byte 0x10
    .byte 4
    .byte 1
    .byte 0
    .byte 0x10
    .byte 8
    .byte 1
    .byte 0
    .byte 0x10
    .byte 0x10
    .byte 1
    .byte 0
    .byte 0x10
    .byte 2
    .byte 1
    .byte 0
    .byte 0x10
    .byte 2
    .byte 1
    .byte 0
    .byte 0x10
    .byte 2
    .byte 1
    .byte 0
    .byte 0x10
    .byte 2
    .byte 1
    .byte 0
// end of function sub_81D7DE0

.thumb
sub_81D7E58:
    sub r3, r0, #1
    cmp r3, #6
    bcs loc_81D7E70
    sub r3, r1, #1
    cmp r3, #3
    bcs loc_81D7E70
    lsl r1, r1, #3
    add r1, r1, r0
    lsl r0, r1, #5
    ldr r1, [pc, #0x81d7e74-0x81d7e6a-2] // =byte_2039AE0
    add r0, r0, r1
    mov pc, lr
loc_81D7E70:
    mov r0, #0
    mov pc, lr
off_81D7E74:    .word byte_2039AE0
// end of function sub_81D7E58

.thumb
sub_81D7E78:
    lsl r1, r1, #3
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, [pc, #0x81d7ea0-0x81d7e7e-2] // =unk_2034F60
    ldr r2, [r0,r1]
    mov r1, r10
    ldr r1, [r1,#0x30]
    mov r0, #0
loc_81D7E88:
    lsl r2, r2, #1
    bcs loc_81D7E90
    beq locret_81D7E9C
    b loc_81D7E98
loc_81D7E90:
    ldr r3, [r1,#0x30]
    lsr r3, r3, #0x10
    lsl r3, r3, #0x10
    orr r0, r3
loc_81D7E98:
    add r1, #0xa8
    b loc_81D7E88
locret_81D7E9C:
    mov pc, lr
    .byte 0, 0
off_81D7EA0:    .word unk_2034F60
// end of function sub_81D7E78

.thumb
sub_81D7EA4:
    push {r4-r6,lr}
    add r4, r0, #0
    add r5, r1, #0
    add r6, r2, #0
    bl sub_81D7E58
    ldrb r3, [r0,#2]
    tst r3, r3
    beq locret_81D7ECE
    strb r6, [r0,#2]
    cmp r6, #9
    blt loc_81D7EC6
    cmp r6, #0xc
    bgt loc_81D7EC6
    ldr r1, [pc, #0x81d7ed0-0x81d7ec0-4] // =0x708
    strh r1, [r0,#0x12]
    b loc_81D7EC6
loc_81D7EC6:
    add r0, r4, #0
    add r1, r5, #0
    bl sub_81D7DE0
locret_81D7ECE:
    pop {r4-r6,pc}
dword_81D7ED0:    .word 0x708
    ldrb r3, [r0,#2]
    tst r3, r3
    beq locret_81D7EF2
    strb r6, [r0,#2]
    cmp r6, #9
    blt loc_81D7EEA
    cmp r6, #0xc
    bgt loc_81D7EEA
    ldr r1, [pc, #0x81d7ef4-0x81d7ee4-4] // =0x708
    strh r1, [r0,#0x12]
    b loc_81D7EEA
loc_81D7EEA:
    add r0, r4, #0
    add r1, r5, #0
    bl loc_81D7E04
locret_81D7EF2:
    pop {r4-r6,pc}
// <endpool> <endfile>
dword_81D7EF4:    .word 0x708
// end of function sub_81D7EA4

/*For debugging purposes, connect comment at any range!*/
