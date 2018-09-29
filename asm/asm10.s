.include "asm/asm10.inc"

.func
.thumb_func
sub_80663D0:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_8066428 // =off_8066020 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_806649C
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
    ldr r0, off_806642C // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_8066430 // =off_8066434 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_8066540
    bl sub_8034FB8
    pop {r4-r7,pc}
off_8066428:    .word off_8066020
off_806642C:    .word unk_2037800
off_8066430:    .word off_8066434
off_8066434:    .word unk_806643C
    .word unk_8066446
unk_806643C:    .byte 0x1C
    .byte 0xB
    .byte 0x1C
    .byte 0xC
    .byte 0x1C
    .byte 0x1A
    .byte 0x1C
    .byte 0xE
    .byte 0xFF
    .byte 0xFF
unk_8066446:    .byte 0x1C
    .byte 0xB
    .byte 0x1C
    .byte 0xC
    .byte 0x1C
    .byte 0x1A
    .byte 0x1C
    .byte 0xE
    .byte 0xFF
    .byte 0xFF
.endfunc // sub_80663D0

.func
.thumb_func
sub_8066450:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_8066460 // =off_8066464 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .byte 0, 0
off_8066460:    .word off_8066464
off_8066464:    .word off_806646C
    .word off_8066484
off_806646C:    .word off_8066048
    .word unk_80662B8
    .word unk_80662E8
    .word unk_8066328
    .word unk_8066368
    .word 0xFFFFFFFF
off_8066484:    .word off_8066048
    .word unk_80662B8
    .word unk_80662E8
    .word unk_8066328
    .word unk_8066368
    .word 0xFFFFFFFF
.endfunc // sub_8066450

.func
.thumb_func
sub_806649C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_80664D0 // =off_80664D4 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_80664F4 // =off_80664F8 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .byte 0, 0
off_80664D0:    .word off_80664D4
off_80664D4:    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
off_80664F4:    .word off_80664F8
off_80664F8:    .word off_8066500
    .word off_8066500
off_8066500:    .word off_8610B04
    .word 0x6008020
    .word unk_8610C18
    .word 0x1800
    .word unk_8610D64
    .word word_3001960
    .word 0x20
.endfunc // sub_806649C

.func
.thumb_func
sub_806651C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_8066530 // =off_8066534 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_8066530:    .word off_8066534
off_8066534:    .word nullsub_29+1
    .word nullsub_30+1
.endfunc // sub_806651C

.func
.thumb_func
nullsub_29:
    mov pc, lr
.endfunc // nullsub_29

.func
.thumb_func
nullsub_30:
    mov pc, lr
.endfunc // nullsub_30

.func
.thumb_func
sub_8066540:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_8066554 // =off_8066558 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_8066554:    .word off_8066558
off_8066558:    .word dword_8066560
    .word dword_8066578
dword_8066560:    .word 0x305, 0x1220000, 0xFF540000, 0x0, 0x0
    .word 0xFF
dword_8066578:    .word 0x305, 0x220000, 0xFF940000, 0x0
    .word 0x1, 0x5, 0x620000, 0xFF700000, 0xFFC00000, 0x2B, 0xFF
off_80665A4:    .word asc_80665E8
    .word asc_8066754
off_80665AC:    .word unk_8066639
    .word unk_8066807
off_80665B4:    .word off_8066988
    .word off_8066E10
off_80665BC:    .word dword_80665C4
    .word dword_80665D4
dword_80665C4:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_80665D4:    .word 0xFFFF0100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x1010
asc_80665E8:    .byte 0x25, 0x3D, 0x3C, 0x8
    .byte 0x8, 0x0
    .byte 0, 0
    .word 0x4040200, 0x80665FD, 0x6663801, 0x34FF0308, 0x6663804
    .word 0xBAC2C08, 0xF02C0814, 0x2508140B, 0x8083D7D, 0x0
    .byte 0x16
    .byte  0
    .byte 0x34 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0xE9
    .byte  4
    .byte 0x38 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte 0x25 
    .byte 0xC5
    .byte 0x3D 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x38 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte 0x20
    .byte 0xFF
    .byte 0xE9
    .byte  4
    .byte  0
unk_8066639:    .byte  2
    .byte  0
    .byte 0xF
    .byte 0x45 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  2
    .byte  4
    .byte  4
    .byte 0x51 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x31 
    .byte  4
    .byte 0x73 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x32 
    .byte  4
    .byte 0x73 
    .byte 0x66 
    .byte  6
    .byte  8
    .byte 0x1F
    .byte 0xFF
    .byte 0x32 
    .byte  4
    .byte 0x26 
    .byte 0x48 
    .byte 0x2D 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x34 
    .byte  4
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0xD
    .byte 0x10
    .byte  0
    .byte 0xA4
    .byte 0x66 
    .byte  6
    .byte  8
    .byte 0x1F
    .byte 0xFF
    .byte 0x43 
    .byte  4
    .byte  5
    .byte 0xFF
    .byte 0x43 
    .byte  4
    .byte 0xA4
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x44 
    .byte  4
    .byte 0xA4
    .byte 0x66 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x68 
    .byte 0x3B 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x45 
    .byte  4
    .byte 0xCA
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x46 
    .byte  4
    .byte 0xCA
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x16
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x98
    .byte 0x3A 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x47 
    .byte  4
    .byte 0xF0
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x48 
    .byte  4
    .byte 0xF0
    .byte 0x66 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x16
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0xC8
    .byte 0x39 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x49 
    .byte  4
    .byte 0x16
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x4A 
    .byte  4
    .byte 0x16
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x16
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0xF8
    .byte 0x38 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0xEA
    .byte  4
    .byte 0x2C 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte  4
    .byte 0x3D 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xE9
    .byte  4
    .byte 0x42 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0x25 
    .byte 0x6D 
    .byte 0x3C 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte 0x25 
    .byte 0xF1
    .byte 0x3D 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x50 
    .byte 0x67 
    .byte  6
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
asc_8066754:    .byte 0x25, 0x3D, 0x3C, 0x8
    .byte 0x8, 0x0
    .balign 4, 0x00
    .word 0x4040200, 0x8066769, 0x667A401, 0x3EFF0308, 0x667A404
    .word 0xBAC2C08, 0xF02C0814, 0x2508140B, 0x8083D7D, 0x0
    .word 0x67A00016, 0xFF050806, 0x67A404E9, 0xC5250806, 0x8083D
    .word 0x1000000, 0x80667A4, 0x4E9FF20, 0xB00F0002, 0x1080667
    .word 0x8066806, 0xBC040402, 0x1080667, 0x8066806, 0x439FF05
    .word 0x80667E1, 0x43AFF03, 0x80667E1, 0x43AFF1F, 0x26FF041E
    .word 0x808310C, 0x0
    .byte  1
    .byte  6
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x3D 
    .byte  4
    .byte  6
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x3E 
    .byte  4
    .byte  6
    .byte 0x68 
    .byte  6
    .byte  8
    .byte 0x1F
    .byte 0xFF
    .byte 0x3E 
    .byte  4
    .byte 0x1E
    .byte 0xC
    .byte 0xFF
    .byte 0x26 
    .byte 0x10
    .byte 0x32 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte  6
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  0
unk_8066807:    .byte  2
    .byte  0
    .byte 0xF
    .byte 0x1A
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  2
    .byte 0x30 
    .byte 0x3F 
    .byte 0x52 
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  2
    .byte  4
    .byte  4
    .byte 0x26 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0xD
    .byte 0x10
    .byte  0
    .byte 0x4F 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x35 
    .byte  4
    .byte 0x4F 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x36 
    .byte  4
    .byte 0x4F 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte 0x1F
    .byte 0xFF
    .byte 0x36 
    .byte  4
    .byte 0x26 
    .byte 0xF8
    .byte 0x2E 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0xD
    .byte 0x11
    .byte  0
    .byte 0x78 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x3B 
    .byte  4
    .byte 0x78 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x3C 
    .byte  4
    .byte 0x78 
    .byte 0x68 
    .byte  6
    .byte  8
    .byte 0x1F
    .byte 0xFF
    .byte 0x3C 
    .byte  4
    .byte 0x26 
    .byte 0xA4
    .byte 0x31 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x3E 
    .byte  4
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x4B 
    .byte  4
    .byte 0xA6
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x4C 
    .byte  4
    .byte 0xA6
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x18
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x28 
    .byte 0x38 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x4D 
    .byte  4
    .byte 0xCC
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x4E 
    .byte  4
    .byte 0xCC
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x18
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x58 
    .byte 0x37 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x4F 
    .byte  4
    .byte 0xF2
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x50 
    .byte  4
    .byte 0xF2
    .byte 0x68 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x18
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x88
    .byte 0x36 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x51 
    .byte  4
    .byte 0x18
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x52 
    .byte  4
    .byte 0x18
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xFF
    .byte  4
    .byte 0x18
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0xB8
    .byte 0x35 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0xEA
    .byte  4
    .byte 0x2E 
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte  4
    .byte 0x3D 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0xE9
    .byte  4
    .byte 0x44 
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x25 
    .byte 0x6D 
    .byte 0x3C 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x25 
    .byte 0xF1
    .byte 0x3D 
    .byte  8
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  2
    .byte 0x32 
    .byte 0x32 
    .byte 0x5E 
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x7A 
    .byte  8
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  5
    .byte 0xFF
    .byte 0x1B
    .byte  8
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  3
    .byte 0xFF
    .byte 0x1C
    .byte  8
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x78 
    .byte 0x8C
    .byte  9
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x84
    .byte 0x69 
    .byte  6
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
off_8066988:    .word dword_80669B0
    .word 0x80669D3, 0x80669F8, 0x8066A1D, 0x8066A4E, 0x8066AA5
    .word 0x8066AB0, 0x8066ABB, 0x8066AC6, 0xFF
dword_80669B0:    .word 0x4460408, 0x80669D2, 0x3C170018, 0xC00A814, 0x16000001
    .word 0x11221330, 0x1021DC9E, 0x69C6020A, 0x8030806, 0xF7044804
    .word 0x18080669, 0x143C1701, 0x1080024, 0x2F160000, 0x22031013
    .word 0x21DC9E11, 0xE9020510, 0x3080669, 0x44A0408, 0x8066A1C
    .word 0x3C170218, 0x1000A814, 0x160000FF, 0x510132F, 0xDC9E1122
    .word 0x2081021, 0x8066A0E, 0xFF103B03, 0x8066A4D, 0x43C1708
    .word 0x6A3D0444, 0x3A140806, 0xFFA401, 0x20053800, 0x9F77005
    .word 0x14031808, 0xFFA40126, 0x3160000, 0x9F6CC36, 0x17080308
    .word 0x24243B3E, 0x8066AA4, 0x8C42423B, 0x3B08066A, 0x6A945351
    .word 0x24040806, 0x66A9C1C, 0x1BE40408, 0x8066A75, 0x1630403
    .word 0x8066AA4, 0xC814004C, 0xFF0A00, 0x36051600, 0x809F6CC
    .word 0x660A0A05, 0x308066A, 0x660C1A05, 0x308066A, 0x75111405
    .word 0x308066A, 0x2250803, 0x14E0291C, 0x314E045, 0x1C022508
    .word 0x4514E129, 0x80314E1, 0x291C0225, 0xE24514E2, 0x25080314
    .word 0xE3291C02, 0x14E34514, 0x3, 0x8066AF0, 0x8066B23
    .word 0x8066AA5, 0x8066AB0, 0x8066ABB, 0x8066AC6, 0xFF
    .word 0x37171F08, 0xB6012614, 0x160000FF, 0x3083F07, 0xDC601122
    .word 0x3F0A1021, 0x18160408, 0x3F80083C, 0x7160508, 0x1606083F
    .word 0x7083F2C, 0xCC360716, 0x80809F6, 0x143C171F, 0xFFA4013A
    .word 0x83D0000, 0x66B4D01, 0x150D1608, 0x16052005, 0x20011509
    .word 0x1083D05, 0x8066B4D, 0x66B2E02, 0x150D1608, 0x16031005
    .word 0x22141003, 0x21DC9E11, 0x11220A10, 0x1021DC9E, 0x2083C0A
    .word 0x1606083F, 0x7083F07, 0xCC360316, 0x809F6, 0x8066BA0
    .word 0x8066BCF, 0x8066C26, 0x8066C3E, 0x8066C63, 0x8066AA5
    .word 0x8066AB0, 0x8066ABB, 0x8066AC6, 0xFF, 0x37171F08
    .word 0xF000A414, 0x16000000, 0x1083F2A, 0x5A103416, 0x3F02083C
    .word 0x3160308, 0x1004083F, 0x3F011605, 0x5108008, 0xCC360716
    .word 0x80809F6, 0x143C171F, 0x10C00A8, 0x30160000, 0xF603083D
    .word 0x2208066B, 0x21DC9E11, 0xDC020A10, 0x3D08066B, 0x6BF60308
    .word 0x7160806, 0x1604083F, 0x20011509, 0x150F1602, 0x16052007
    .word 0x2005150D, 0x80083C02, 0x7150F16, 0x9160820, 0x2200115
    .word 0x7150F16, 0x83C0820, 0x25090305, 0xA4141C1A, 0xF000
    .word 0x3F011600, 0x28080108, 0x83F011E, 0x4080303, 0x6C620448
    .word 0x1180806, 0x24143C17, 0x10800, 0x132F1600, 0x11220310
    .word 0x1021DC9E, 0x6C540205, 0x8030806, 0x26143C17, 0xFFA401
    .word 0x36031600, 0x809F6CC, 0x8066C98, 0x8066CCE, 0x8066D25
    .word 0x8066D3D, 0x8066AA5, 0x8066AB0, 0x8066ABB, 0x8066AC6
    .word 0xFF, 0x37171F08, 0x4000E14, 0x16000001, 0x1083F29
    .word 0x5A103316, 0x3F02083C, 0x12140308, 0x10A00, 0x3F011600
    .word 0x5100408, 0x83F0316, 0x16051080, 0xF6CC3605, 0x1F080809
    .word 0x24143C17, 0x10800, 0x3D2F1600, 0x6CF50308, 0x11220806
    .word 0x1021DC9E, 0x6CDB020A, 0x83D0806, 0x66CF503, 0x3F051608
    .word 0xB160408, 0x2200315, 0x5150D16, 0x83C0420, 0x150F1680
    .word 0x16022007, 0x2005150D, 0x150F160A, 0x16022007, 0x2005150D
    .word 0x5083C05, 0x1A250903, 0xE141C, 0x104, 0x83F0016
    .word 0x1E280801, 0x3083F01, 0x3C170803, 0xA4012614, 0x160000FF
    .word 0xF6CC3603, 0x809, 0x8066D74, 0x8066DA3, 0x8066DE5
    .word 0x8066DFD, 0x8066AA5, 0x8066AB0, 0x8066ABB, 0x8066AC6
    .word 0xFF, 0x37171F08, 0x8009214, 0x160000FF, 0x1083F29
    .word 0x5A103316, 0x3F02083C, 0x92140308, 0xFF0C00, 0x3F011600
    .word 0x5100408, 0xCC360316, 0x80809F6, 0x143C171F, 0xFF1000A8
    .word 0x2F160000, 0xCA03083D, 0x2208066D, 0x21DC9E11, 0xB0020A10
    .word 0x3D08066D, 0x6DCA0308, 0x5160806, 0x1604083F, 0x2003150B
    .word 0x1509160C, 0x16032001, 0x2003150B, 0x5083C03, 0x1A250903
    .word 0x92141C, 0xFF08, 0x83F0016, 0x1E280801, 0x3083F01
    .word 0x3C170803, 0xA4012614, 0x160000FF, 0xF6CC3603, 0x809
off_8066E10:    .word unk_8066E38
    .word 0x8066E5D, 0x8066E79, 0x8066E9E, 0x8066EC1, 0x8066EE3
    .word 0x8066EEE, 0x8066EF9, 0x8066F04, 0xFF
unk_8066E38:    .byte  8
    .byte  4
    .byte 0x4C 
    .byte  4
    .byte 0x5C 
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0x18
    .byte  0
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0xC4
    .byte 0xFE
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2D 
    .byte 0x13
    .byte 0x10
    .byte  6
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte  3
    .byte  2
    .byte 0x4E 
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  3
    .byte  8
    .byte  4
    .byte 0x4E 
    .byte  4
    .byte 0x78 
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0x18
    .byte  1
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0x4A 
    .byte  1
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2F 
    .byte 0x13
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  3
    .byte  8
    .byte  4
    .byte 0x50 
    .byte  4
    .byte 0x9D
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0x18
    .byte  2
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0xA2
    .byte 0xFE
    .byte 0xAA
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2D 
    .byte 0x13
    .byte 0x10
    .byte  3
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte  5
    .byte  2
    .byte 0x8F
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  3
    .byte  8
    .byte  4
    .byte 0x52 
    .byte  4
    .byte 0xC0
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0x18
    .byte  3
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0x28 
    .byte  1
    .byte 0x2E 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x30 
    .byte 0x13
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte 0xA
    .byte  2
    .byte 0xB4
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  3
    .byte  8
    .byte 0x17
    .byte 0x51 
    .byte 0x3B 
    .byte  4
    .byte  4
    .byte 0xCB
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x3E 
    .byte  4
    .byte 0xE2
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xE
    .byte 0x13
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0x38 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  3
unk_8066EE3:    .byte  8
    .byte 0x25 
    .byte  2
    .byte 0x1C
    .byte 0x29 
    .byte 0xE8
    .byte 0x14
    .byte 0x45 
    .byte 0xE8
    .byte 0x14
    .byte  3
unk_8066EEE:    .byte  8
    .byte 0x25 
    .byte  2
    .byte 0x1C
    .byte 0x29 
    .byte 0xE9
    .byte 0x14
    .byte 0x45 
    .byte 0xE9
    .byte 0x14
    .byte  3
unk_8066EF9:    .byte  8
    .byte 0x25 
    .byte  2
    .byte 0x1C
    .byte 0x29 
    .byte 0xEA
    .byte 0x14
    .byte 0x45 
    .byte 0xEA
    .byte 0x14
    .byte  3
unk_8066F04:    .byte  8
    .byte 0x25 
    .byte  2
    .byte 0x1C
    .byte 0x29 
    .byte 0xEB
    .byte 0x14
    .byte 0x45 
    .byte 0xEB
    .byte 0x14
    .byte  3
    .byte  0
    .byte 0x34 
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0x5C 
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0x98
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xB0
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xE3
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xEE
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xF9
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x37 
    .byte 0x14
    .byte 0xE2
    .byte 0xFE
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2B 
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte 0x16
    .byte 0x35 
    .byte 0x10
    .byte 0x5A 
    .byte 0x3C 
    .byte  8
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x16
    .byte  5
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x10
    .byte 0x14
    .byte 0x16
    .byte  1
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0xC4
    .byte 0xFE
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2D 
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0x83
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte 0xA
    .byte  2
    .byte 0x69 
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0x83
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0x16
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x16
    .byte 0xB
    .byte 0x15
    .byte  3
    .byte 0x20
    .byte  1
    .byte 0x16
    .byte  9
    .byte 0x15
    .byte  1
    .byte 0x20
    .byte 0x12
    .byte 0x3C 
    .byte  8
    .byte  5
    .byte  3
    .byte  9
    .byte 0x25 
    .byte 0x1A
    .byte 0x1C
    .byte 0x14
    .byte 0xE2
    .byte 0xFE
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte  8
    .byte 0x28 
    .byte 0x1E
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte  3
    .byte  8
    .byte 0x17
    .byte 0x51 
    .byte 0xE
    .byte 0x13
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0x38 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  0
    .byte 0xE8
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0x10
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x4F 
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x67 
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0xE3
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xEE
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xF9
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x37 
    .byte 0x14
    .byte 0x2E 
    .byte  1
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x29 
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte 0x16
    .byte 0x33 
    .byte 0x10
    .byte 0x5A 
    .byte 0x3C 
    .byte  8
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x16
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x10
    .byte 0x14
    .byte 0x16
    .byte  5
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0x4A 
    .byte  1
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2F 
    .byte 0x3F 
    .byte  8
    .byte 0x80
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0x3A 
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte  5
    .byte  2
    .byte 0x20
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0x3A 
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x16
    .byte  5
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x16
    .byte 0xB
    .byte 0x15
    .byte  3
    .byte 0x20
    .byte  1
    .byte 0x16
    .byte 0xD
    .byte 0x15
    .byte  5
    .byte 0x20
    .byte 0x12
    .byte 0x3C 
    .byte  8
    .byte  5
    .byte  3
    .byte  9
    .byte 0x25 
    .byte 0x1A
    .byte 0x1C
    .byte 0x14
    .byte 0x2E 
    .byte  1
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte  0
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte  8
    .byte 0x28 
    .byte 0x1E
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte  3
    .byte  8
    .byte 0x17
    .byte 0x51 
    .byte 0xE
    .byte 0x13
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0x38 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  0
    .byte  0
    .byte 0xA0
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0xD6
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x27 
    .byte 0x71 
    .byte  6
    .byte  8
    .byte 0x3F 
    .byte 0x71 
    .byte  6
    .byte  8
    .byte 0xE3
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xEE
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xF9
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x37 
    .byte 0x14
    .byte 0xBC
    .byte 0xFE
    .byte 0xB0
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2B 
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte 0x16
    .byte 0x35 
    .byte 0x10
    .byte 0x5A 
    .byte 0x3C 
    .byte  8
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x14
    .byte 0xBC
    .byte 0xFE
    .byte 0xAA
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  5
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x10
    .byte  5
    .byte 0x16
    .byte  3
    .byte 0x3F 
    .byte  8
    .byte 0x80
    .byte 0x10
    .byte  5
    .byte 0x16
    .byte  1
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0xA2
    .byte 0xFE
    .byte 0xAA
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2D 
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0xFD
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte 0xA
    .byte  2
    .byte 0xE3
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0xFD
    .byte 0x70 
    .byte  6
    .byte  8
    .byte 0x16
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x16
    .byte 0xB
    .byte 0x15
    .byte  3
    .byte 0x20
    .byte  2
    .byte 0x16
    .byte  9
    .byte 0x15
    .byte  1
    .byte 0x20
    .byte  6
    .byte 0x16
    .byte 0xF
    .byte 0x15
    .byte  7
    .byte 0x20
    .byte  2
    .byte 0x3C 
    .byte  8
    .byte 0x80
    .byte 0x16
    .byte  9
    .byte 0x15
    .byte  1
    .byte 0x20
    .byte 0xA
    .byte 0x16
    .byte 0xF
    .byte 0x15
    .byte  7
    .byte 0x20
    .byte 0xA
    .byte 0x3C 
    .byte  8
    .byte  5
    .byte  3
    .byte  9
    .byte 0x25 
    .byte 0x1A
    .byte 0x1C
    .byte 0x14
    .byte 0xBC
    .byte 0xFE
    .byte 0xB0
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte  8
    .byte 0x28 
    .byte 0x1E
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte  3
    .byte  8
    .byte 0x17
    .byte 0x51 
    .byte 0xE
    .byte 0x13
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0x38 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  0
    .byte  0
    .byte 0x78 
    .byte 0x71 
    .byte  6
    .byte  8
    .byte 0xAE
    .byte 0x71 
    .byte  6
    .byte  8
    .byte  5
    .byte 0x72 
    .byte  6
    .byte  8
    .byte 0x1D
    .byte 0x72 
    .byte  6
    .byte  8
    .byte 0xE3
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xEE
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xF9
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x37 
    .byte 0x14
    .byte 0x24 
    .byte  1
    .byte 0x14
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x2A 
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte 0x16
    .byte 0x34 
    .byte 0x10
    .byte 0x5A 
    .byte 0x3C 
    .byte  8
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x14
    .byte 0x28 
    .byte  1
    .byte 0x14
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x10
    .byte  5
    .byte 0x16
    .byte  5
    .byte 0x3F 
    .byte  8
    .byte 0x80
    .byte 0x10
    .byte  5
    .byte 0x16
    .byte  7
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  8
    .byte 0x1F
    .byte 0x17
    .byte 0x3C 
    .byte 0x14
    .byte 0x28 
    .byte  1
    .byte 0x2E 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x30 
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0xD5
    .byte 0x71 
    .byte  6
    .byte  8
    .byte 0x22 
    .byte 0x11
    .byte 0x9E
    .byte 0xDC
    .byte 0x21 
    .byte 0x10
    .byte 0xA
    .byte  2
    .byte 0xBB
    .byte 0x71 
    .byte  6
    .byte  8
    .byte 0x3D 
    .byte  8
    .byte  3
    .byte 0xD5
    .byte 0x71 
    .byte  6
    .byte  8
    .byte 0x16
    .byte  7
    .byte 0x3F 
    .byte  8
    .byte  4
    .byte 0x16
    .byte 0xD
    .byte 0x15
    .byte  5
    .byte 0x20
    .byte  2
    .byte 0x16
    .byte 0xF
    .byte 0x15
    .byte  7
    .byte 0x20
    .byte  6
    .byte 0x16
    .byte  9
    .byte 0x15
    .byte  1
    .byte 0x20
    .byte  2
    .byte 0x3C 
    .byte  8
    .byte 0x80
    .byte 0x16
    .byte 0xF
    .byte 0x15
    .byte  7
    .byte 0x20
    .byte  8
    .byte 0x16
    .byte 0xD
    .byte 0x15
    .byte  5
    .byte 0x20
    .byte  4
    .byte 0x16
    .byte 0xF
    .byte 0x15
    .byte  7
    .byte 0x20
    .byte  4
    .byte 0x3C 
    .byte  8
    .byte  5
    .byte  3
    .byte  9
    .byte 0x25 
    .byte 0x1A
    .byte 0x1C
    .byte 0x14
    .byte 0x24 
    .byte  1
    .byte 0x14
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte  8
    .byte 0x28 
    .byte 0x1E
    .byte  1
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte  3
    .byte  8
    .byte 0x17
    .byte 0x51 
    .byte 0xE
    .byte 0x13
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0x38 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte 0x68 
    .byte 0x72 
    .byte  6
    .byte  8
    .byte 0x96
    .byte 0x72 
    .byte  6
    .byte  8
    .byte 0xBA
    .byte 0x72 
    .byte  6
    .byte  8
    .byte 0xDE
    .byte 0x72 
    .byte  6
    .byte  8
    .byte  2
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x26 
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x4A 
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x6E 
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x92
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0xE3
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xEE
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xF9
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x1F
    .byte 0x27 
    .byte 0x17
    .byte 0x37 
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0x28 
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte  7
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte 0x16
    .byte 0x17
    .byte 0x15
    .byte  7
    .byte 0x10
    .byte  6
    .byte 0x16
    .byte 0x17
    .byte 0x15
    .byte  7
    .byte  8
    .byte  3
    .byte 0x16
    .byte  7
    .byte 0x3C 
    .byte  8
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x1E
    .byte 0x16
    .byte 0x31 
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0xC
    .byte  0
    .byte 0xC6
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x18
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte  0
    .byte  0
    .byte 0xE0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x40 
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0xA
    .byte  0
    .byte 0xF6
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x20
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0x22 
    .byte  0
    .byte 0xC0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte  8
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0x20
    .byte  0
    .byte  0
    .byte  1
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x28 
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0x3C 
    .byte  0
    .byte 0xCA
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x30 
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0x3E 
    .byte  0
    .byte 0xE0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x10
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  9
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0x3A 
    .byte  0
    .byte 0xF8
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  2
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x10
    .byte 0x38 
    .byte  8
    .byte 0x16
    .byte  0
    .byte 0x28 
    .byte 0x7C 
    .byte  1
    .byte 0x32 
    .byte 0xB6
    .byte 0x73 
    .byte  6
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte 0x2B 
    .byte 0x10
    .byte 0x80
    .byte 0x2F 
    .byte  0
    .byte 0x70 
    .byte 0x70 
    .byte 0x33 
    .byte  2
    .byte 0x2B 
    .byte  8
    .byte 0x80
    .byte 0x2F 
    .byte  0
    .byte 0x50 
    .byte 0x50 
    .byte 0x33 
    .byte  2
    .byte 0x2B 
    .byte  4
    .byte 0x80
    .byte 0x2F 
    .byte  0
    .byte 0x30 
    .byte 0x30 
    .byte 0x33 
    .byte  2
    .byte 0x2B 
    .byte  0
    .byte 0x80
    .byte 0x2F 
    .byte  0
    .byte 0x40 
    .byte 0x40 
    .byte 0x33 
    .byte  2
    .byte 0x30 
    .byte 0x34 
    .byte 0x14
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0x40 
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0x5C 
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0x78 
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0x94
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0xB0
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0xCC
    .byte 0x74 
    .byte  6
    .byte  8
    .byte 0xE8
    .byte 0x74 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x75 
    .byte  6
    .byte  8
    .byte 0xE3
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xEE
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte 0xF9
    .byte 0x6E 
    .byte  6
    .byte  8
    .byte  4
    .byte 0x6F 
    .byte  6
    .byte  8
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x1F
    .byte 0x27 
    .byte 0x17
    .byte 0x37 
    .byte 0x14
    .byte 0x26 
    .byte  0
    .byte 0xE0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte 0x31 
    .byte 0x3F 
    .byte  8
    .byte  3
    .byte 0x16
    .byte  7
    .byte 0x10
    .byte 0x3C 
    .byte 0x16
    .byte  4
    .byte 0x3C 
    .byte  8
    .byte  4
    .byte 0x3F 
    .byte  8
    .byte  5
    .byte 0x16
    .byte 0x18
    .byte 0x2A 
    .byte 0xC0
    .byte 0x3C 
    .byte  8
    .byte  6
    .byte 0x3F 
    .byte  8
    .byte  7
    .byte 0x36 
    .word unk_809F6CC
    .byte  8
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xE
    .byte 0x1C
    .byte 0x14
    .byte 0xC
    .word 0xC600
    .word 0x3F001600
    .word 0x1100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0x141C0E
    .word 0xE000
    .word 0x3F001600
    .word 0x7100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0xA141C0E
    .word 0xF600
    .word 0x3F001600
    .word 0x4100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0x22141C0E
    .word 0xC000
    .word 0x3F001600
    .word 0x7100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0x20141C0E
    .word 0x10000
    .word 0x3F001600
    .word 0x3100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0x3C141C0E
    .word 0xCA00
    .word 0x3F001600
    .word 0x6100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0x3E141C0E
    .word 0xE000
    .word 0x3F001600
    .word 0x2100108
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x25271F08
    .word 0x3A141C0E
    .word 0xF800
    .word 0x3F001600
    .word 0xA100108
    .word 0x16017D28
    .word 0x3CC02A01
    .word 0x30208
    .word dword_8067540
    .word unk_8067556
    .word unk_8066EE3
    .word unk_8066EEE
    .word unk_8066EF9
    .word unk_8066F04
    .word 0xFF
dword_8067540:    .word 0x17271F08
    .word 0x261437
    .word 0xFF74
    .word unk_83F2C16
    .word 0xF6CC3601
    .byte  9
    .byte  8
unk_8067556:    .byte  8
    .byte 0x1F
    .word 0x14511727
    .word 0xFF380026
    .word 0x3160000
    .word 0x3601083F
    .word unk_809F6CC
    .word dword_80675A0
    .word unk_80675C6
    .word unk_80675DD
    .word unk_80675F7
    .word unk_806760E
    .word unk_806763A
    .word dword_806766C
    .word unk_80676BE
    .word unk_8066EE3
    .word unk_8066EEE
    .word unk_8066EF9
    .word unk_8066F04
    .word 0xFF
dword_80675A0:    .word 0x17271F08
    .word 0x261437
    .word 0xFF74
    .word unk_83F2C16
    .word 0x16141001
    .word 0x3083F31
    .word unk_83F2C16
    .word 0x2A282E07
    .word unk_83C09C0
    .byte  8
    .byte  3
unk_80675C6:    .byte  9
    .byte 0x1F
    .word 0x1C002527
    .word 0x74002614
    .word 0x160000FF
    .word 0x7083F00
    .word 0x9F88002
    .byte  8
unk_80675DD:    .byte  8
    .byte 0x1F
    .byte 0x27 
    .word 0x26145117
    .word 0xFF3800
    .word 0x3F031600
    .word 0x1B2E0308
    .word 0x3C09C02A
    .byte  8
    .byte  4
    .byte  3
unk_80675F7:    .byte  9
    .word 0x25271F
    .word 0x26141C
    .word 0xFF38
    .word unk_83F0016
    .word 0xF8800203
    .byte  9
    .byte  8
unk_806760E:    .byte  9
    .byte 0x1F
    .word 0x1C0E2527
    .word 0x66003E14
    .word 0x160000FF
    .word 0x1083F02
    .word 0x16080310
    .word 0x17C2800
    .word 0x6769832
    .word 0x5083F08
    .word 0x7D280310
    .word 0x2A011601
    .byte 0xC0
    .byte  3
unk_806763A:    .byte  9
    .byte 0x1F
    .word 0x1C0E2527
    .word 0x60002614
    .word 0x160000FF
    .word 0x1083F02
    .word 0x16080810
    .word 0x17C2800
    .word 0x6769832
    .word 0x2083C08
    .word 0x1005083F
    .word 0x17D2808
    .word 0xC02A0116
    .word 0x306083C
dword_806766C:    .word 0x25271F09
    .word 0xE141C0E
    .word 0xFF6400
    .word 0x3F021600
    .word 0x4100108
    .word 0x28001608
    .word 0x9832017C
    .word 0x3F080676
    .word 0x4100508
    .word 0x16017D28
    .word 0x3C02A01
    .word 0x2F80102B
    .word 0x33707000
    .word 0x80082B02
    .word 0x5050002F
    .word 0x42B0233
    .word 0x30002F80
    .word 0x2B023330
    .word 0x2F8000
    .word 0x2334040
    .byte 0x30 
    .byte 0x34 
unk_80676BE:    .byte  8
    .byte 0x1F
    .word 0x1C2C2527
    .word 0x38002614
    .word 0x160000FF
    .word 0x80083F00
    .word 0xDB32002E
    .word 0x3F080676
    .word 0x28030308
    .word 0x3B3301D7
    .word 0x676DB02
    .word 0x8
off_80676E8:    .word dword_80676F4
    .word dword_8067704
    .word dword_8067744
dword_80676F4:    .word 0x1000181, 0xFDF40000, 0x8C0000, 0x100000
dword_8067704:    .word 0x5000081, 0x11C0000, 0xFEE40000, 0x100000, 0x7000281
    .word 0x1340000, 0x1240000, 0x100000, 0x70C0181, 0x1240000
    .word 0x8C0000, 0x100000, 0x70C0181, 0xFEC40000, 0x8C0000
    .word 0x100000
dword_8067744:    .word 0x3000181, 0xFE440000, 0xFF760000, 0x100000
off_8067754:    .word dword_8611B68
    .word 0x6008040, 0x1320004, 0x8067784, 0x14, 0x80677E8, 0x14
    .word 0x806784C, 0x14, 0x80678B0, 0x14, 0x1, 0x0
    .word 0x20001, 0x40003, 0x5, 0x0
    .word 0x70006, 0x90008, 0xB000A, 0x7000C, 0x70006, 0xE000D
    .word 0x10000F, 0x120011, 0xE000D, 0xE000D, 0x140013, 0x160015
    .word 0x180017, 0x1A0019, 0x1C001B, 0x1E001D, 0x20001F, 0x220021
    .word 0x240023, 0x220025, 0x0
    .byte 0x26
    .byte  0
    .byte 0x27 
    .byte  0
    .byte 0x28 
    .byte  0
    .byte 0x29 
    .byte  0
    .byte 0x2A 
    .byte  0
    .byte  0
    .byte  0
    .word 0x0
a01234567232389:    .byte 0x2B, 0x0
    .byte 0x2C 
    .byte  0
    .byte 0x2D 
    .byte  0
    .byte 0x2E 
    .byte  0
    .byte 0x2F 
    .byte  0
    .byte 0x30 
    .byte  0
    .byte 0x31 
    .byte  0
    .byte 0x2C 
    .byte  0
    .byte 0x2B 
    .byte  0
    .byte 0x2C 
    .byte  0
    .byte 0x32 
    .byte  0
    .byte 0x33 
    .byte  0
    .byte 0x34 
    .byte  0
    .byte 0x35 
    .byte  0
    .byte 0x36 
    .byte  0
    .byte 0x37 
    .byte  0
    .byte 0x32 
    .byte  0
    .byte 0x33 
    .byte  0
    .byte 0x32 
    .byte  0
    .byte 0x33 
    .byte  0
    .byte 0x38 
    .byte  0
    .byte 0x39 
    .byte  0
    .byte 0x3A 
    .byte  0
    .byte 0x3B 
    .byte  0
    .byte 0x3C 
    .byte  0
    .byte 0x3D 
    .byte  0
    .byte 0x3E 
    .byte  0
    .byte 0x3F 
    .byte  0
    .byte 0x40 
    .byte  0
    .byte 0x41 
    .byte  0
    .byte 0x42 
    .byte  0
    .byte 0x43 
    .byte  0
    .byte 0x44 
    .byte  0
    .byte 0x45 
    .byte  0
    .byte 0x46 
    .byte  0
    .byte 0x47 
    .byte  0
    .byte 0x48 
    .byte  0
    .byte 0x49 
    .byte  0
    .byte 0x46 
    .byte  0
    .byte 0x47 
    .byte  0
    .byte  0
    .byte  0
    .byte 0, 0
    .word 0x20001, 0x4B004A, 0x4C, 0x0
    .word 0x60007, 0x90008, 0x4E004D, 0x6004F, 0x60007, 0xD000E
    .word 0x10000F, 0x120011, 0xD0050, 0xD000E, 0x510013, 0x160015
    .word 0x180017, 0x530052, 0x1B001C, 0x1E001D, 0x20001F, 0x250021
    .word 0x550054, 0x250022, 0x0
aV_3:    .byte 0x56, 0x0
    .byte 0x57 
    .byte  0
    .byte 0x58 
    .byte  0
    .byte 0x59 
    .byte  0
    .byte 0x5A 
    .byte  0
    .byte  0
    .byte  0
    .word 0x0
aAbcdef232ghijk:    .byte 0x2C, 0x0
    .byte 0x2B 
    .byte  0
    .byte 0x5B 
    .byte  0
    .byte 0x5C 
    .byte  0
    .byte 0x5D 
    .byte  0
    .byte 0x5E 
    .byte  0
    .byte 0x5F 
    .byte  0
    .byte 0x2B 
    .byte  0
    .byte 0x2C 
    .byte  0
    .byte 0x2B 
    .byte  0
    .byte 0x60 
    .byte  0
    .byte 0x61 
    .byte  0
    .byte 0x62 
    .byte  0
    .byte 0x63 
    .byte  0
    .byte 0x64 
    .byte  0
    .byte 0x65 
    .byte  0
    .byte 0x66 
    .byte  0
    .byte 0x32 
    .byte  0
    .byte 0x33 
    .byte  0
    .byte 0x32 
    .byte  0
    .byte 0x67 
    .byte  0
    .byte 0x68 
    .byte  0
    .byte 0x69 
    .byte  0
    .byte 0x6A 
    .byte  0
    .byte 0x6B 
    .byte  0
    .byte 0x6C 
    .byte  0
    .byte 0x6D 
    .byte  0
    .byte 0x6E 
    .byte  0
    .byte 0x41 
    .byte  0
    .byte 0x40 
    .byte  0
    .byte 0x6F 
    .byte  0
    .byte 0x70 
    .byte  0
    .byte 0x71 
    .byte  0
    .byte 0x72 
    .byte  0
    .byte 0x73 
    .byte  0
    .byte 0x46 
    .byte  0
    .byte 0x74 
    .byte  0
    .byte 0x75 
    .byte  0
    .byte 0x47 
    .byte  0
    .byte 0x46 
    .byte  0
off_8067914:    .word dword_859E6D0
    .word 0x6000020
    .word 0x2060104
    .word unk_8067974
    .word 0xC
    .word unk_8067980
    .word 0xC
    .word unk_806798C
    .word 0xC
    .word unk_8067998
    .word 0xC
    .word 0x1
off_8067944:    .word dword_859E6D0
    .byte 0xE0
    .byte  0
    .byte  0
    .byte  6
    .byte  4
    .byte  2
    .byte  6
    .byte  2
    .byte 0x80
    .byte 0x79 
    .byte  6
    .byte  8
    .byte 0xC
    .byte  0
    .byte  0
    .byte  0
    .byte 0x8C
    .byte 0x79 
    .byte  6
    .byte  8
    .byte 0xC
    .byte  0
    .byte  0
    .byte  0
    .byte 0x98
    .byte 0x79 
    .byte  6
    .byte  8
    .byte 0xC
    .byte  0
    .byte  0
    .byte  0
    .byte 0x74 
    .byte 0x79 
    .byte  6
    .byte  8
    .byte 0xC
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte  0
    .byte  0
    .byte  0
unk_8067974:    .byte  0
    .byte  0
    .byte  1
    .byte  0
    .byte  2
    .byte  0
    .byte  3
    .byte  0
    .byte  4
    .byte  0
    .byte  5
    .byte  0
unk_8067980:    .byte  6
    .byte  0
    .byte  7
    .byte  0
    .byte  8
    .byte  0
    .byte  9
    .byte  0
    .byte 0xA
    .byte  0
    .byte 0xB
    .byte  0
unk_806798C:    .byte 0xC
    .byte  0
    .byte 0xD
    .byte  0
    .byte 0xE
    .byte  0
    .byte 0xF
    .byte  0
    .byte 0x10
    .byte  0
    .byte 0x11
    .byte  0
unk_8067998:    .byte 0x12
    .byte  0
    .byte 0x13
    .byte  0
    .byte 0x14
    .byte  0
    .byte 0x15
    .byte  0
    .byte 0x16
    .byte  0
    .byte 0x17
    .byte  0
off_80679A4:    .word unk_3001980
    .word 0x20, 0xFFFF0300, 0x859E3B8, 0xA, 0x859E3D8, 0xA, 0x859E3F8
    .word 0xA, 0x859E418, 0xA, 0x1
off_80679D4:    .word unk_3001A60
    .word 0x20, 0xFFFF0400, 0x859E4A0, 0x18, 0x859E4C0, 0xC
    .word 0x859E4E0, 0xC, 0x859E500, 0x18, 0x859E4E0, 0xC
    .word 0x859E4C0, 0xC, 0x1
off_8067A14:    .word unk_3001A80
    .word 0x20, 0xFFFF0500, 0x859E524, 0x10, 0x859E544, 0x10
    .word 0x859E564, 0x10, 0x859E584, 0x10, 0x1
off_8067A44:    .word unk_3001AA0
    .word 0x20, 0xFFFF0600, 0x859E5A8, 0xA, 0x859E5C8, 0xA, 0x859E5E8
    .word 0xA, 0x1
off_8067A6C:    .word unk_3001AC0
    .word 0x20, 0xFFFF0700, 0x859E60C, 0x3C, 0x859E62C, 0x18
    .word 0x859E64C, 0x1E, 0x859E62C, 0xE, 0x1
off_8067A9C:    .word unk_3001AE0
    .word 0x20, 0xFFFF0800, 0x859E670, 0x3C, 0x859E690, 0xE
    .word 0x859E6B0, 0x1E, 0x859E690, 0x18, 0x1
off_8067ACC:    .word unk_3001A20
    .word 0x20, 0xFFFF0900, 0x859E43C, 0x17, 0x859E45C, 0x6, 0x859E43C
    .word 0x6, 0x859E45C, 0x6, 0x859E43C, 0x6, 0x859E45C, 0x6
    .word 0x859E43C, 0x6, 0x859E45C, 0x6, 0x859E43C, 0x18, 0x859E47C
    .word 0x6, 0x859E43C, 0x6, 0x859E47C, 0x6, 0x859E43C, 0x6
    .word 0x859E47C, 0x6, 0x859E43C, 0x6, 0x859E47C, 0x6, 0x1
.endfunc // sub_8066540

.func
.thumb_func
sub_8067B5C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_8067BB4 // =off_80676E8 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_8067C88
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
    ldr r0, off_8067BB8 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_8067BBC // =off_8067BC0 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_8067D46
    bl sub_8034FB8
    pop {r4-r7,pc}
off_8067BB4:    .word off_80676E8
off_8067BB8:    .word unk_2037800
off_8067BBC:    .word off_8067BC0
off_8067BC0:    .word dword_8067BCC
    .word dword_8067BD4
    .word dword_8067BDC
dword_8067BCC:    .word 0x461C451C, 0xFFFF2F1C
dword_8067BD4:    .word 0x461C451C, 0xFFFF2F1C
dword_8067BDC:    .word 0x461C451C, 0xFFFF2F1C
.endfunc // sub_8067B5C

.func
.thumb_func
sub_8067BE4:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_8067BF4 // =off_8067BF8 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .balign 4, 0x00
off_8067BF4:    .word off_8067BF8
off_8067BF8:    .word off_8067C04
    .word off_8067C30
    .word off_8067C5C
off_8067C04:    .word off_8067754
    .word off_8067914
    .word off_8067944
    .word off_80679A4
    .word off_80679D4
    .word off_8067A14
    .word off_8067A44
    .word off_8067A6C
    .word off_8067A9C
    .word off_8067ACC
    .word 0xFFFFFFFF
off_8067C30:    .word off_8067754
    .word off_8067914
    .word off_8067944
    .word off_80679A4
    .word off_80679D4
    .word off_8067A14
    .word off_8067A44
    .word off_8067A6C
    .word off_8067A9C
    .word off_8067ACC
    .word 0xFFFFFFFF
off_8067C5C:    .word off_8067754
    .word off_8067914
    .word off_8067944
    .word off_80679A4
    .word off_80679D4
    .word off_8067A14
    .word off_8067A44
    .word off_8067A6C
    .word off_8067A9C
    .word off_8067ACC
    .word 0xFFFFFFFF
.endfunc // sub_8067BE4

.func
.thumb_func
sub_8067C88:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_8067CBC // =off_8067CC0 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_8067CF0 // =off_8067CF4 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8067CBC:    .word off_8067CC0
off_8067CC0:    .word locret_8001AB4+1
    .word sub_8001A6A+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_8001A6A+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_8001A6A+1
    .word unk_3005CD9
    .word 0x800
off_8067CF0:    .word off_8067CF4
off_8067CF4:    .word off_8067D00
    .word off_8067D00
    .word off_8067D00
off_8067D00:    .word off_86116C8
    .word 0x6008020
    .word unk_861184C
    .word 0x1800
    .word unk_86119C4
    .word word_3001960
    .word 0x20
.endfunc // sub_8067C88

.func
.thumb_func
sub_8067D1C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_8067D30 // =off_8067D34 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_8067D30:    .word off_8067D34
off_8067D34:    .word locret_8067D40+1
    .word locret_8067D42+1
    .word locret_8067D44+1
.endfunc // sub_8067D1C

locret_8067D40:
    mov pc, lr
locret_8067D42:
    mov pc, lr
locret_8067D44:
    mov pc, lr
.func
.thumb_func
sub_8067D46:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_8067D5C // =pt_8067D60 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
    .balign 4, 0x00
off_8067D5C:    .word pt_8067D60
    // <endpool>
pt_8067D60:    .word dword_8067D6C
    .word dword_8067D84
    .word dword_8067D9C
.endfunc // sub_8067D46

dword_8067D6C:    .word 0x305, 0xDC0000, 0xFED60000, 0x100000, 0x4, 0xFF
dword_8067D84:    .word 0x305, 0xFE520000, 0xFF9C0000, 0x100000, 0x5, 0xFF
dword_8067D9C:    .word 0x305, 0x1420000, 0xFF7C0000, 0x100000, 0x6, 0x5, 0x1920000
    .word 0xFF2A0000, 0xFFB00000, 0x2C, 0xFF
off_8067DC8:    .word unk_8067E2C
    .word dword_8067F24
    .word dword_8067F74
off_8067DD4:    .word unk_8067E8D
    .word unk_8067F4F
    .word unk_8067FDF
off_8067DE0:    .word off_8068044
    .word off_8068400
    .word off_8068734
    // <endfile>
pt_8067DEC:    .word dword_8067DF8
    .word dword_8067E08
    .word dword_8067E18
/*For debugging purposes, connect comment at any range!*/
