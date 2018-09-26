.include "asm/asm32.inc"

.func
.thumb_func
sub_810D970:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_810D986
    mov r0, #0
    str r0, [r5,#0x6c]
    ldr r0, [r5,#0x68]
    cmp r0, #0
    beq loc_810D986
    bl sub_80C4072
loc_810D986:
    bl sub_80165C2
    pop {pc}
.endfunc // sub_810D970

.func
.thumb_func
sub_810D98C:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x6c]
    bl sub_810DCCE
    pop {pc}
.endfunc // sub_810D98C

    push {r4,r6,lr}
    bl sub_810DAF0
    cmp r0, #0
    bne locret_810D9AC
    ldr r1, off_810D9B0 // =off_810D9B4 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_810D9AC:
    pop {r4,r6,pc}
    .byte 0, 0
off_810D9B0:    .word off_810D9B4
off_810D9B4:    .word sub_810D9C4+1
    .word sub_810DA00+1
    .word sub_810DA24+1
    .word sub_810DAE4+1
.func
.thumb_func
sub_810D9C4:
    push {lr}
    bl sub_810DB88
    cmp r0, #0
    beq loc_810D9DC
    bl sub_810DC00
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    str r0, [r5,#0x70]
loc_810D9DC:
    ldrb r0, [r6,#6]
    add r0, #1
    cmp r0, #1
    blt loc_810D9E6
    mov r0, #0
loc_810D9E6:
    strb r0, [r6,#6]
    bne locret_810D9FE
    bl object_getFlag // () -> int
    ldr r1, dword_810DCE8 // =0x2000 
    tst r0, r1
    beq loc_810D9FA
    mov r0, #0xc
    strb r0, [r6]
    b locret_810D9FE
loc_810D9FA:
    mov r0, #4
    strb r0, [r6]
locret_810D9FE:
    pop {pc}
.endfunc // sub_810D9C4

.func
.thumb_func
sub_810DA00:
    push {lr}
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [r5,#0x64]
    bl sub_8109708
    cmp r0, #0
    beq loc_810DA1C
    mov r0, #0xc
    strb r0, [r6]
    b locret_810DA22
loc_810DA1C:
    strb r0, [r6,#2]
    mov r0, #8
    strb r0, [r6]
locret_810DA22:
    pop {pc}
.endfunc // sub_810DA00

.func
.thumb_func
sub_810DA24:
    push {lr}
    ldr r1, off_810DA40 // =off_810DA44 
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
off_810DA40:    .word off_810DA44
off_810DA44:    .word sub_810DA4C+1
    .word sub_810DAAA+1
.endfunc // sub_810DA24

.func
.thumb_func
sub_810DA4C:
    push {r4,lr}
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [r5,#0x64]
    bl sub_8109708
    cmp r0, #0
    beq loc_810DA68
    mov r0, #0xc
    strb r0, [r6]
    b locret_810DAA8
loc_810DA68:
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    add r4, r0, #0
    ldrb r0, [r4,#0x13]
    strb r0, [r6,#5]
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r1, r1, r0
    ldr r2, [r5,#0x60]
    mul r0, r2
    ldrb r2, [r5,#0x12]
    add r2, r2, r0
    cmp r1, r2
    blt loc_810DA92
    add r3, r1, #0
    add r1, r2, #0
    add r2, r3, #0
loc_810DA92:
    ldrb r3, [r4,#0x12]
    cmp r3, r1
    blt loc_810DAA0
    cmp r3, r2
    bgt loc_810DAA0
    ldrb r3, [r5,#0x12]
    b loc_810DAA2
loc_810DAA0:
    sub r3, r3, r0
loc_810DAA2:
    strb r3, [r6,#4]
    mov r0, #4
    strb r0, [r6,#2]
locret_810DAA8:
    pop {r4,pc}
.endfunc // sub_810DA4C

.func
.thumb_func
sub_810DAAA:
    push {lr}
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r2, [r5,#0x64]
    bl sub_8109708
    cmp r0, #0
    bne loc_810DADE
    bl object_getFlag // () -> int
    ldr r1, dword_810DCEC // =0xA000 
    tst r0, r1
    beq loc_810DAD0
    bl sub_810DB72
    b loc_810DAD4
loc_810DAD0:
    bl sub_810DB20
loc_810DAD4:
    cmp r0, #0
    beq loc_810DADE
    bl sub_810DC00
    b locret_810DAE2
loc_810DADE:
    mov r0, #0xc
    strb r0, [r6]
locret_810DAE2:
    pop {pc}
.endfunc // sub_810DAAA

.func
.thumb_func
sub_810DAE4:
    push {lr}
    bl sub_810DC4C
    mov r0, #0
    strb r0, [r6]
    pop {pc}
.endfunc // sub_810DAE4

.func
.thumb_func
sub_810DAF0:
    push {r4,r6,lr}
    mov r6, #0
    add r0, r5, #0
    bl sub_800ED90
    tst r3, r3
    beq loc_810DB1C
    lsl r4, r0, #0x17
    lsr r4, r4, #0x17
    bl sub_800A704
    ldr r1, off_810DCF0 // =0x12C 
    cmp r0, r1
    blt loc_810DB1C
    add r0, r4, #0
    bl sub_80126E4
    bl sub_8011680
    bl sub_800F322
    mov r6, #1
loc_810DB1C:
    add r0, r6, #0
    pop {r4,r6,pc}
.endfunc // sub_810DAF0

.func
.thumb_func
sub_810DB20:
    push {r4,r6,r7,lr}
    ldrb r0, [r6,#5]
    ldrb r1, [r5,#0x13]
    cmp r1, r0
    beq loc_810DB46
    blt loc_810DB30
    sub r1, #1
    b loc_810DB32
loc_810DB30:
    add r1, #1
loc_810DB32:
    ldrb r0, [r5,#0x12]
    ldr r3, off_810DCF4 // =dword_810DBF0 
    bl sub_81096FA
    push {r0,r1}
    bl object_checkPanelParameters
    cmp r0, #0
    pop {r0,r1}
    bne locret_810DB70
loc_810DB46:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r6,#4]
    cmp r0, r1
    beq loc_810DB54
    blt loc_810DB58
    sub r0, #1
    b loc_810DB5A
loc_810DB54:
    mov r0, #0
    b locret_810DB70
loc_810DB58:
    add r0, #1
loc_810DB5A:
    ldrb r1, [r5,#0x13]
    ldr r3, off_810DCF8 // =dword_810DBF0 
    bl sub_81096FA
    push {r0,r1}
    bl object_checkPanelParameters
    cmp r0, #0
    pop {r0,r1}
    bne locret_810DB70
    mov r0, #0
locret_810DB70:
    pop {r4,r6,r7,pc}
.endfunc // sub_810DB20

.func
.thumb_func
sub_810DB72:
    push {r4,r6,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r4, #0xa
    ldrb r6, [r5,#0x16]
    ldr r3, off_810DCFC // =dword_810DBF0 
    bl sub_81096FA
    bl sub_8015E46
    pop {r4,r6,pc}
.endfunc // sub_810DB72

.func
.thumb_func
sub_810DB88:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r4, #0xa
    ldrb r6, [r5,#0x16]
    ldr r3, off_810DD00 // =dword_810DBF0 
    bl sub_81096FA
    mov r7, sp
    bl sub_800D3FE
    cmp r0, #0
    beq loc_810DBE0
    cmp r0, #1
    beq loc_810DBCC
    ldr r1, [r5,#0x70]
    add r3, r0, #0
    mov r4, sp
loc_810DBAE:
    ldrb r2, [r4]
    cmp r2, r1
    bne loc_810DBC6
    sub r0, #1
    add r7, r4, #1
loc_810DBB8:
    ldrb r1, [r7]
    strb r1, [r4]
    add r4, #1
    add r7, #1
    sub r3, #1
    bne loc_810DBB8
    b loc_810DBCC
loc_810DBC6:
    add r4, #1
    sub r3, #1
    bne loc_810DBAE
loc_810DBCC:
    add r7, r0, #0
    bl sub_8001532
    add r1, r7, #0
    svc 6
    mov r0, sp
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_810DBE0:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
dword_810DBF0:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
.endfunc // sub_810DB88

.func
.thumb_func
sub_810DC00:
    push {lr}
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    mov r0, #1
    strb r0, [r7,#3]
    ldr r1, off_810DC30 // =dword_810DC34 
    ldrb r0, [r4,#0x16]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r7,#0x30]
    ldr r3, off_810DD04 // =dword_810DBF0 
    bl sub_81096FA
    str r2, [r7,#0x34]
    str r3, [r7,#0x38]
    mov r0, #0xa
    bl sub_8011680
    bl sub_8109804
    pop {pc}
    .word 0
    .byte 0, 0
off_810DC30:    .word dword_810DC34
dword_810DC34:    .word 0x8000, 0x9000, 0xA000, 0xB000, 0xC000, 0xD000
.endfunc // sub_810DC00

.func
.thumb_func
sub_810DC4C:
    push {lr}
    ldrb r2, [r4,#0x16]
    ldr r1, off_810DCB0 // =unk_810DCBC 
    ldrb r0, [r1,r2]
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    ldr r1, dword_810DCB4 // =0x810DCC2 
    ldrb r0, [r1,r2]
    strh r0, [r7,#0x10]
    ldr r1, off_810DCB8 // =unk_810DCC8 
    ldrb r0, [r1,r2]
    strh r0, [r7,#0x18]
    bl object_getFlag // () -> int
    ldr r1, dword_810DCEC // =0xA000 
    tst r0, r1
    beq loc_810DC74
    mov r0, #0x78 
    strh r0, [r7,#0x18]
loc_810DC74:
    bl object_getFlag // () -> int
    mov r2, #1
    mov r3, #1
    ldr r1, dword_810DD08 // =0x8000 
    tst r0, r1
    bne loc_810DC90
    mov r2, #3
    mov r3, #6
    ldr r1, dword_810DCE8 // =0x2000 
    tst r0, r1
    bne loc_810DC90
    ldr r2, [r5,#0x60]
    ldr r3, [r5,#0x64]
loc_810DC90:
    strb r2, [r7,#0xc]
    strb r3, [r7,#0xd]
    mov r0, #0x68 
    add r0, r0, r5
    str r0, [r7,#0x28]
    mov r0, #0x6c 
    add r0, r0, r5
    str r0, [r7,#0x30]
    mov r0, #0xb
    bl sub_8011680
    pop {pc}
    .word 0
    .byte 0, 0, 0, 0
off_810DCB0:    .word unk_810DCBC
dword_810DCB4:    .word 0x810DCC2
off_810DCB8:    .word unk_810DCC8
unk_810DCBC:    .byte 0x14
    .byte 0x28 
    .byte 0x50 
    .byte 0x64 
    .byte 0x3C 
    .byte 0x64 
    .byte 0x5A 
    .byte 0x78 
    .byte 0x96
    .byte 0xA0
    .byte 0x78 
    .byte 0xB4
unk_810DCC8:    .byte 0x78 
    .byte 0x64 
    .byte 0x50 
    .byte 0x3C 
    .byte 0x50 
    .byte 0x28 
.endfunc // sub_810DC4C

.func
.thumb_func
sub_810DCCE:
    push {r4,lr}
    ldr r0, [r5,#0x68]
    cmp r0, #0
    bne locret_810DCE6
    mov r0, #0
    mov r1, #0
    mov r2, #4
    mov r3, #0
    ldr r4, dword_810DD0C // =0x10B04 
    bl sub_80C4038
    str r0, [r5,#0x68]
locret_810DCE6:
    pop {r4,pc}
dword_810DCE8:    .word 0x2000
dword_810DCEC:    .word 0xA000
off_810DCF0:    .word 0x12C
off_810DCF4:    .word dword_810DBF0
off_810DCF8:    .word dword_810DBF0
off_810DCFC:    .word dword_810DBF0
off_810DD00:    .word dword_810DBF0
off_810DD04:    .word dword_810DBF0
dword_810DD08:    .word 0x8000
dword_810DD0C:    .word 0x10B04
dword_810DD10:    .word 0x30C04, 0x100000C, 0x8001096, 0x10C8003C, 0x500801
    .word 0x80210F0, 0x11180064, 0x780803, 0x80410C8, 0x11180064
    .word 0x8C0805
dword_810DD3C:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0x34A334A3, 0x34A334A3, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x34A334A3
    .word 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x0
.endfunc // sub_810DCCE

loc_810DE00:
    push {lr}
    bl sub_810E2EC
    cmp r0, #0xff
    beq loc_810DE1E
    strb r0, [r5,#0x10]
    mov r0, #8
    strb r0, [r6]
    bl sub_810DEC4
    bl sub_810E0D4
    bl loc_801171C
    b locret_810DE28
loc_810DE1E:
    ldr r1, off_810DE2C // =off_810DE30 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_810DE28:
    pop {pc}
    .balign 4, 0x00
off_810DE2C:    .word off_810DE30
off_810DE30:    .word sub_810DE3C+1
    .word sub_810DE96+1
    .word sub_81097BA+1
.func
.thumb_func
sub_810DE3C:
    push {r4,lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_810DE6A
    mov r0, #1
    strb r0, [r7,#1]
    mov r2, #0x7a 
    ldrb r0, [r5,r2]
    mov r2, #0x7b 
    ldrb r1, [r5,r2]
    lsl r0, r0, #4
    orr r0, r1
    strb r0, [r7,#0xc]
    ldrb r0, [r7,#0xc]
    bl sub_810DFD0
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    str r0, [r5,#0x70]
    str r0, [r5,#0x74]
loc_810DE6A:
    ldrh r0, [r7,#0x10]
    mov r1, #4
    tst r0, r1
    bne loc_810DE76
    bl sub_810DED2
loc_810DE76:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bne locret_810DE94
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x10
    bl object_setCounterTime
    ldrh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #4
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_810DE94:
    pop {r4,pc}
.endfunc // sub_810DE3C

.func
.thumb_func
sub_810DE96:
    push {r4,r6,lr}
    mov r0, #0
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_810DEAE
    mov r0, #1
    strb r0, [r7,#1]
    bl sub_810DF2E
    mov r0, #0xf7
    bl sound_play // () -> void
loc_810DEAE:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bne locret_810DEC2
    mov r0, #0
    strb r0, [r5,#0x10]
    bl sub_810DEC4
    bl sub_8011714
locret_810DEC2:
    pop {r4,r6,pc}
.endfunc // sub_810DE96

.func
.thumb_func
sub_810DEC4:
    push {r4,r6,lr}
    mov r0, #0
    strh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #0
    str r0, [r5,#0x60]
    pop {r4,r6,pc}
.endfunc // sub_810DEC4

.func
.thumb_func
sub_810DED2:
    push {r4-r7,lr}
    mov r2, #0x78 
    ldrb r0, [r5,r2]
    mov r2, #0x79 
    ldrb r1, [r5,r2]
    ldr r2, off_810DF94 // =off_810DF98 
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    mov r3, #0
loc_810DEE8:
    push {r2,r3}
    ldrb r0, [r7,#0xc]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r4, #2
    mul r4, r3
    ldrb r3, [r2,r4]
    add r4, #1
    ldrb r4, [r2,r4]
    add r1, r1, r3
    add r0, r0, r4
    add r3, r0, #0
    add r0, r1, #0
    add r1, r3, #0
    push {r0,r1}
    bl object_getFlipDirection_800E2CA // () -> int
    add r4, r0, #0
    ldrb r3, [r5,#0x16]
    ldrb r2, [r5,#0x17]
    eor r3, r2
    mov r2, #1
    pop {r0,r1}
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    bl sub_8109660
    pop {r2,r3}
    add r3, #1
    cmp r3, #4
    blt loc_810DEE8
    pop {r4-r7,pc}
.endfunc // sub_810DED2

.func
.thumb_func
sub_810DF2E:
    push {r4-r7,lr}
    mov r2, #0x78 
    ldrb r0, [r5,r2]
    mov r2, #0x79 
    ldrb r1, [r5,r2]
    ldr r2, off_810DF94 // =off_810DF98 
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    mov r3, #0
loc_810DF44:
    push {r2,r3}
    push {r3}
    ldrb r0, [r7,#0xc]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    mov r4, #2
    mul r4, r3
    ldrb r3, [r2,r4]
    add r4, #1
    ldrb r4, [r2,r4]
    add r1, r1, r3
    add r0, r0, r4
    add r3, r0, #0
    add r0, r1, #0
    add r1, r3, #0
    push {r0,r1}
    ldrh r0, [r7,#8]
    ldrh r1, [r7,#0xa]
    lsl r1, r1, #0x10
    orr r0, r1
    add r6, r0, #0
    pop {r0,r1}
    pop {r3}
    mov r2, #4
    mul r2, r3
    mov r3, #0x68 
    add r3, r3, r5
    add r3, r3, r2
    ldrb r2, [r5,#0xe]
    mov r4, #0x78 
    lsl r4, r4, #8
    bl sub_80D8400
    pop {r2,r3}
    add r3, #1
    cmp r3, #4
    blt loc_810DF44
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810DF94:    .word off_810DF98
off_810DF98:    .word off_810DFA0
    .word off_810DFA8
off_810DFA0:    .word dword_810DFB0
    .word dword_810DFB8
off_810DFA8:    .word dword_810DFC0
    .word dword_810DFC8
dword_810DFB0:    .word 0xFF000000, 0x1FF01
dword_810DFB8:    .word 0xFF0000, 0xFF00FFFF
dword_810DFC0:    .word 0x10000, 0x1000101
dword_810DFC8:    .word 0x1000000, 0xFF01FF
.endfunc // sub_810DF2E

.func
.thumb_func
sub_810DFD0:
    push {r4-r7,lr}
    push {r0}
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldrb r3, [r5,#0x16]
    mov r2, #1
    eor r2, r3
    mov r3, #5
    mul r2, r3
    add r2, #1
    cmp r2, r1
    beq loc_810E004
    push {r0,r1}
    bl object_getFlipDirection_800E2CA // () -> int
    pop {r1,r2}
    sub r0, r2, r0
    ldr r3, off_810E110 // =dword_810E090 
    bl sub_81096FA
    bl object_checkPanelParameters
    tst r0, r0
    bne loc_810E02A
    b loc_810E054
loc_810E004:
    pop {r0}
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r1, off_810E0A0 // =off_810E0A4 
    sub r0, #1
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    push {r0}
    bl change_20013F0_800151C // () -> int
    pop {r1}
    mov r2, #7
    and r0, r2
    ldrb r0, [r1,r0]
    ldrb r2, [r5,#0x16]
    mov r1, #1
    eor r1, r2
    b loc_810E086
loc_810E02A:
    pop {r0}
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r1, off_810E0A0 // =off_810E0A4 
    sub r0, #1
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    push {r0}
    bl change_20013F0_800151C // () -> int
    pop {r1}
    mov r2, #7
    and r0, r2
    ldrb r0, [r1,r0]
    ldrb r2, [r5,#0x16]
    mov r1, #1
    eor r1, r2
    sub r1, #1
    neg r1, r1
    b loc_810E086
loc_810E054:
    pop {r0}
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    ldr r1, off_810E0A0 // =off_810E0A4 
    sub r0, #1
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    push {r0}
    bl change_20013F0_800151C // () -> int
    pop {r1}
    mov r2, #7
    and r0, r2
    ldrb r0, [r1,r0]
    push {r0}
    ldr r0, off_810E0C8 // =unk_810E0CC 
    push {r0}
    bl change_20013F0_800151C // () -> int
    pop {r1}
    mov r2, #7
    and r0, r2
    ldrb r1, [r1,r0]
    pop {r0}
loc_810E086:
    mov r2, #0x78 
    strb r0, [r5,r2]
    mov r2, #0x79 
    strb r1, [r5,r2]
    pop {r4-r7,pc}
dword_810E090:    .word 0x0
    .word 0x20, 0x20, 0x0
off_810E0A0:    .word off_810E0A4
off_810E0A4:    .word dword_810E0B0
    .word dword_810E0B8
    .word dword_810E0C0
dword_810E0B0:    .word 0x1010101, 0x1010101
dword_810E0B8:    .word 0x1000100, 0x1000100
dword_810E0C0:    .word 0x0, 0x0
off_810E0C8:    .word unk_810E0CC
unk_810E0CC:    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  0
    .byte  1
.endfunc // sub_810DFD0

.func
.thumb_func
sub_810E0D4:
    push {r4-r7,lr}
    ldr r0, [r5,#0x68]
    tst r0, r0
    beq loc_810E0E4
    bl sub_80D842E
    mov r0, #0
    str r0, [r5,#0x68]
loc_810E0E4:
    ldr r0, [r5,#0x6c]
    tst r0, r0
    beq loc_810E0F2
    bl sub_80D842E
    mov r0, #0
    str r0, [r5,#0x6c]
loc_810E0F2:
    ldr r0, [r5,#0x70]
    tst r0, r0
    beq loc_810E100
    bl sub_80D842E
    mov r0, #0
    str r0, [r5,#0x70]
loc_810E100:
    ldr r0, [r5,#0x74]
    tst r0, r0
    beq locret_810E10E
    bl sub_80D842E
    mov r0, #0
    str r0, [r5,#0x74]
locret_810E10E:
    pop {r4-r7,pc}
off_810E110:    .word dword_810E090
    .word 0, 0
    .byte 0, 0, 0, 0
    .word sub_8016380+1
    .word sub_80165B8+1
    .word sub_810E37A+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_810E17A+1
    .word sub_81097B4+1
    .word loc_810DE00+1
    .word sub_8109952+1
    .word sub_8109804+1
dword_810E154:    .word 0x96825032, 0x9664, 0xA0A0A0A, 0xA0A, 0x78787878, 0x7878
    .word 0x1E1E2424, 0x181E, 0x78787878
.endfunc // sub_810E0D4

    ldrb r0, [r7,#1]
loc_810E17A:
    push {r4,r6,lr}
    mov r0, #0x66 
    ldrb r0, [r5,r0]
    tst r0, r0
    bne loc_810E18C
    bl sub_810E34A
    cmp r0, #0
    bne locret_810E1AA
loc_810E18C:
    bl sub_810E2EC
    cmp r0, #0xff
    beq loc_810E1A0
    strb r0, [r5,#0x10]
    bl sub_810E0D4
    mov r0, #8
    strb r0, [r6]
    b locret_810E1AA
loc_810E1A0:
    ldr r1, off_810E1AC // =off_810E1B0 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_810E1AA:
    pop {r4,r6,pc}
off_810E1AC:    .word off_810E1B0
off_810E1B0:    .word sub_810E1BC+1
    .word sub_810E1F0+1
    .word sub_810E262+1
.func
.thumb_func
sub_810E1BC:
    push {lr}
    mov r0, #0x66 
    ldrb r0, [r5,r0]
    cmp r0, #0
    bne locret_810E1EE
    ldrh r0, [r7,#0x10]
    add r0, #1
    strh r0, [r7,#0x10]
    mov r1, #0x7c 
    ldrh r1, [r5,r1]
    cmp r0, r1
    blt locret_810E1EE
    mov r0, #0
    strh r0, [r7,#0x10]
    mov r0, #0x60 
    mov r1, #0x43 
    mov r2, #0x48 
    bl sub_8109630
    cmp r0, #0
    bne locret_810E1EE
    mov r0, #1
    str r0, [r5,#0x60]
    mov r0, #4
    strb r0, [r6]
locret_810E1EE:
    pop {pc}
.endfunc // sub_810E1BC

.func
.thumb_func
sub_810E1F0:
    push {lr}
    ldrb r1, [r4,#0x16]
    ldr r0, off_810E3C0 // =dword_810E154+32 
    ldrb r0, [r0,r1]
    mov r2, #0x7c 
    strh r0, [r5,r2]
    ldr r0, off_810E3C4 // =dword_810E154+24 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    ldr r0, off_810E3C8 // =dword_810E154+32 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    ldr r0, off_810E3CC // =dword_810E154 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    ldr r0, off_810E3D0 // =dword_810E154+8 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0xa]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    str r0, [r7,#0x2c]
    tst r0, r0
    beq loc_810E25C
    bl object_getFlag // () -> int
    ldr r1, dword_810E3D4 // =0xA000 
    tst r0, r1
    beq loc_810E248
    bl sub_810E3A0
    tst r0, r0
    beq loc_810E25C
    mov r2, #0x7a 
    strb r0, [r5,r2]
    mov r2, #0x7b 
    strb r1, [r5,r2]
    mov r0, #0x7c 
    ldrh r1, [r5,r0]
    add r1, #0x3c 
    strh r1, [r5,r0]
    b loc_810E256
loc_810E248:
    ldr r0, [r7,#0x2c]
    ldrb r1, [r0,#0x12]
    ldrb r2, [r0,#0x13]
    mov r3, #0x7a 
    strb r1, [r5,r3]
    mov r3, #0x7b 
    strb r2, [r5,r3]
loc_810E256:
    mov r0, #0xa
    bl sub_8011680
loc_810E25C:
    mov r0, #0
    strb r0, [r6]
    pop {pc}
.endfunc // sub_810E1F0

.func
.thumb_func
sub_810E262:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_810E2A4
    mov r0, #0x64 
    ldrb r0, [r5,r0]
    tst r0, r0
    bne loc_810E280
    mov r0, #0x65 
    ldrb r0, [r5,r0]
    tst r0, r0
    bne loc_810E28C
    b locret_810E2A4
loc_810E280:
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #2
    mov r1, #0x66 
    strb r0, [r5,r1]
    b loc_810E296
loc_810E28C:
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0
    mov r1, #0x66 
    strb r0, [r5,r1]
loc_810E296:
    mov r0, #0
    mov r1, #0x64 
    strb r0, [r5,r1]
    mov r1, #0x65 
    strb r0, [r5,r1]
    mov r0, #0
    strb r0, [r6]
locret_810E2A4:
    pop {pc}
.endfunc // sub_810E262

.func
.thumb_func
sub_810E2A6:
    push {r4,lr}
    ldr r0, [r5,#0x54]
    ldr r0, [r0,#0x70]
    tst r0, r0
    beq locret_810E2E4
    ldr r1, dword_810E2E8 // =0xA00 
    tst r0, r1
    beq loc_810E2C8
    mov r1, #0x66 
    ldrb r0, [r5,r1]
    mov r1, #3
    and r0, r1
    bne locret_810E2E4
    mov r0, #1
    mov r1, #0x64 
    strb r0, [r5,r1]
    b locret_810E2E4
loc_810E2C8:
    mov r0, #0x67 
    ldrb r0, [r5,r0]
    tst r0, r0
    beq locret_810E2E4
    mov r1, #0x66 
    ldrb r0, [r5,r1]
    cmp r0, #0
    beq locret_810E2E4
    mov r1, #0x10
    and r0, r1
    bne locret_810E2E4
    mov r0, #1
    mov r1, #0x65 
    strb r0, [r5,r1]
locret_810E2E4:
    pop {r4,pc}
    .balign 4, 0x00
dword_810E2E8:    .word 0xA00
.endfunc // sub_810E2A6

.func
.thumb_func
sub_810E2EC:
    push {r4-r7,lr}
    mov r0, #0x64 
    ldrb r0, [r5,r0]
    tst r0, r0
    beq loc_810E30A
    mov r1, #0x66 
    ldrb r0, [r5,r1]
    mov r1, #1
    cmp r0, r1
    beq loc_810E332
    mov r0, #1
    mov r1, #0x66 
    strb r0, [r5,r1]
    mov r0, #1
    b locret_810E334
loc_810E30A:
    mov r0, #0x65 
    ldrb r0, [r5,r0]
    tst r0, r0
    beq loc_810E332
    mov r1, #0x66 
    ldrb r0, [r5,r1]
    mov r1, #0x10
    cmp r0, r1
    beq loc_810E332
    mov r0, #0x10
    mov r1, #0x66 
    strb r0, [r5,r1]
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x16]
    ldr r1, off_810E3D8 // =dword_810E154+32 
    ldrb r0, [r1,r0]
    mov r1, #0x7c 
    strh r0, [r5,r1]
    mov r0, #3
    b locret_810E334
loc_810E332:
    mov r0, #0xff
locret_810E334:
    pop {r4-r7,pc}
.endfunc // sub_810E2EC

.func
.thumb_func
sub_810E336:
    push {lr}
    mov r0, #1
    mov r1, #0x67 
    strb r0, [r5,r1]
    pop {pc}
.endfunc // sub_810E336

.func
.thumb_func
sub_810E340:
    push {lr}
    mov r0, #0
    mov r1, #0x67 
    strb r0, [r5,r1]
    pop {pc}
.endfunc // sub_810E340

.func
.thumb_func
sub_810E34A:
    push {r4,r6,lr}
    mov r6, #0
    add r0, r5, #0
    bl sub_800ED90
    tst r3, r3
    beq loc_810E376
    lsl r4, r0, #0x17
    lsr r4, r4, #0x17
    bl sub_800A704
    ldr r1, off_810E3DC // =0x12C 
    cmp r0, r1
    blt loc_810E376
    add r0, r4, #0
    bl sub_80126E4
    bl sub_8011680
    bl sub_800F322
    mov r6, #1
loc_810E376:
    add r0, r6, #0
    pop {r4,r6,pc}
.endfunc // sub_810E34A

.func
.thumb_func
sub_810E37A:
    push {r4-r7,lr}
    bl sub_810E0D4
    bl sub_80165C2
    pop {r4-r7,pc}
.endfunc // sub_810E37A

    push {r4-r7,lr}
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    str r0, [r5,#0x70]
    str r0, [r5,#0x74]
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x16]
    ldr r1, off_810E3E0 // =dword_810E154+32 
    ldrb r0, [r1,r0]
    mov r1, #0x7c 
    strh r0, [r5,r1]
    pop {r4-r7,pc}
.func
.thumb_func
sub_810E3A0:
    push {r4-r7,lr}
    ldr r3, off_810E3E4 // =dword_810E3B0 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_810E3A0

    pop {r4-r7,pc}
    .byte 0, 0
dword_810E3B0:    .word 0x20, 0x0, 0x0
    .word 0x20
off_810E3C0:    .word dword_810E154+0x20
off_810E3C4:    .word dword_810E154+0x18
off_810E3C8:    .word dword_810E154+0x20
off_810E3CC:    .word dword_810E154
off_810E3D0:    .word dword_810E154+8
dword_810E3D4:    .word 0xA000
off_810E3D8:    .word dword_810E154+0x20
off_810E3DC:    .word 0x12C
off_810E3E0:    .word dword_810E154+0x20
off_810E3E4:    .word dword_810E3B0
dword_810E3E8:    .word 0x30D04, 0x100000D, 0x8000064, 0x64000A, 0x280801
    .word 0x8020064, 0x640050, 0x780803, 0x8040064, 0x6400A0
    .word 0xC80805
dword_810E414:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x810E4E8, 0x810E4F1, 0x810E54F
    .word 0xF70BB550, 0xF70CFDBF, 0xF701F874, 0xF70FFE63, 0x2000FB9A
    .word 0x380176A8, 0x20008568, 0xF70C64E8, 0x1C28F971, 0xF94EF6F9
    .word 0xFC0CF70F, 0xFAE4F6FC, 0xFED3F6FF, 0x43444C9E, 0x7CE97CA8
    .word 0xFEA3F6FF, 0x1B011C0A, 0x24282300, 0x2034823C, 0x4E991940
    .word 0xFEF6F6F2, 0x64AA6428, 0x80382004, 0xB510BD50, 0x6B686C29
    .word 0x63681840, 0x6BE86CA9, 0x63E81840, 0x18094890, 0x8A3864A9
    .word 0x82383801, 0x7828D105, 0x43882102, 0x20087028, 0xBD1060A8
    .word 0x4903B5F0, 0x58097838, 0x470846FE, 0xBDF0, 0x810E590
    .word 0x810E5B1, 0x810E5F5, 0x810E63D, 0x810E667, 0x810E6D3
    .word 0x810E6E3, 0x810E6F7, 0x81097B5, 0x7CA8B5F0, 0xF70D7CE9
    .word 0x7CA8FAB1, 0xF0007CE9, 0x2077F8D9, 0x21785C28, 0x75B85C69
    .word 0x75F974A8, 0xF6FF74E9, 0xF70BFE63, 0x7CA8FD39, 0xF0007CE9
    .word 0x2003F8B2, 0xF0008238, 0x2004FAAC, 0x20007038, 0xBDF07078
    .word 0x7878B5F0, 0xD1112800, 0x38018A38, 0xDA1A8238, 0x70782001
    .word 0x30FF2085, 0xFFDEF6F1, 0x74292103, 0x42006E68, 0x2108D00F
    .word 0xE00C7401, 0xFBE3F6F4, 0x42082180, 0x2004D007, 0x8E787428
    .word 0x20088238, 0x20007038, 0xBDF07078, 0x8A38B5F0, 0x82383801
    .word 0x2105DA0C, 0x6E687429, 0xD0014200, 0x74012109, 0x82388EB8
    .word 0x7038200C, 0x70782000, 0xFA7CF000, 0xB5F0BDF0, 0x28088A38
    .word 0xB4F0D11B, 0x7CE97CA8, 0x68BE2202, 0x23004C4B, 0xF7B62703
    .word 0xBCF0FE74, 0x7CA8B4F0, 0x22327CE9, 0x7DAC2310, 0x407C7DEF
    .word 0xF70D2700, 0xBCF0FB51, 0xF7B56E68, 0x2000FCE8, 0x8A786668
    .word 0x82783001, 0xD1032804, 0x30FF2086, 0xFF8AF6F1, 0x38018A38
    .word 0xDA058238, 0x82782000, 0x70382010, 0x70782000, 0xFA46F000
    .word 0xB5F0BDF0, 0x82388B38, 0x70382014, 0x70782000, 0xB5F0BDF0
    .word 0x38018A38, 0xD1038238, 0x70382018, 0x70782000, 0xB5F0BDF0
    .word 0x7CE97CA8, 0xF83AF000, 0x5C282075, 0x5C692176, 0x74A875B8
    .word 0x74E975F9, 0xFDC4F6FF, 0xFC9AF70B, 0x7CE97CA8, 0xF813F000
    .word 0x7CE97CA8, 0xFA0FF70D, 0x5C282077, 0x5C692178, 0xFA09F70D
    .word 0x82388E38, 0x67E82000, 0x7038201C, 0x70782000, 0xB5F0BDF0
    .word 0x7DA8B403, 0x40487DE9, 0x1C020200, 0xB404BC03, 0xFD8DF6FF
    .word 0x1C011C0A, 0xBC012300, 0x43044C02, 0xFF45F7D1, 0xBDF0
    .word 0x15, 0xB403B5F0, 0x7DE97DA8, 0x2004048, 0xBC031C02
    .word 0xF6FFB404, 0x1C0AFD76, 0x23001C01, 0x4C02BC01, 0xF7D14304
    .word 0xBDF0FF2E, 0x14, 0xF00000, 0xFFFF8000, 0x405FF10
    .word 0x0
    .word sub_8016380+1
    .word sub_80165B8+1
    .word loc_810E8DA+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_810EA4E+1
    .word sub_81097BA+1
dword_810E7D8:    .word 0x810E4D5, 0x8109953, 0x810E57D, 0xA0064, 0xA0096
    .word 0xA00C8, 0xA00FA, 0xA0064, 0xA0096, 0x14141414
    .word 0x1414, 0x2A30363C, 0x18181E24, 0x18181818, 0x363C4248
    .word 0x2A30, 0x2A30363C, 0xB5101E24, 0x21002000, 0x23012200
    .word 0xF7B54C09, 0x6628FC05, 0x75C17DA9, 0xFC22F7B5, 0x21742000
    .word 0x20005468, 0xBD1067E8, 0x0, 0x0, 0x0
    .byte 0x10
    .byte 0x2D 
    .byte  1
    .byte  0
.func
.thumb_func
sub_810E854:
    push {lr}
    bl battle_isPaused
    bne loc_810E87E
    bl battle_isTimeStop
    bne loc_810E87E
    ldr r0, [r5,#0x70]
    add r0, #1
    cmp r0, #4
    blt loc_810E87C
    ldrh r0, [r5,#0x24]
    cmp r0, #0
    beq loc_810E87C
    ldrh r1, [r5,#0x26]
    cmp r0, r1
    bge loc_810E87A
    add r0, #1
    strh r0, [r5,#0x24]
loc_810E87A:
    mov r0, #0
loc_810E87C:
    str r0, [r5,#0x70]
loc_810E87E:
    ldr r0, [r5,#0x7c]
    tst r0, r0
    bne locret_810E8C6
    mov r1, #0
    ldrh r0, [r5,#0x24]
    cmp r0, #0x50 
    bgt loc_810E898
    mov r1, #1
    cmp r0, #0x1e
    bgt loc_810E898
    mov r1, #2
    cmp r0, #0
    beq locret_810E8C6
loc_810E898:
    ldr r0, off_810E8D0 // =dword_810E8D4 
    lsl r1, r1, #1
    ldrb r2, [r0,r1]
    add r1, #1
    ldrb r3, [r0,r1]
    strb r2, [r5,#0x10]
    cmp r3, #0xff
    beq loc_810E8B8
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq loc_810E8B2
    strb r3, [r0,#0x10]
    b locret_810E8C6
loc_810E8B2:
    bl sub_810EB42
    b locret_810E8C6
loc_810E8B8:
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq locret_810E8C6
    bl sub_80C4072
    mov r0, #0
    str r0, [r5,#0x64]
locret_810E8C6:
    pop {pc}
    .word 0
    .byte 0, 0, 0, 0
off_810E8D0:    .word dword_810E8D4
dword_810E8D4:    .word 0x601FF00
.endfunc // sub_810E854

    lsl r2, r0, #0x1c
loc_810E8DA:
    push {r4,r6,r7,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_810EC40 // =0x40000000 
    tst r0, r1
    bne loc_810E904
    bl battle_isTimeStop
    bne locret_810E90E
    bl battle_isPaused
    bne locret_810E90E
    ldr r0, [r5,#0x68]
    cmp r0, #0
    bne loc_810E90A
    ldr r1, off_810E910 // =off_810E914 
    ldrb r0, [r5,#0xa]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    b locret_810E90E
loc_810E904:
    bl sub_8016EC4
    b locret_810E90E
loc_810E90A:
    bl sub_80165C2
locret_810E90E:
    pop {r4,r6,r7,pc}
off_810E910:    .word off_810E914
off_810E914:    .word sub_810E928+1
    .word sub_810E97A+1
    .word sub_810E9B6+1
    .word sub_810E9D4+1
    .word sub_810EA3E+1
.func
.thumb_func
sub_810E928:
    push {lr}
    bl sub_801A074 // () -> void
    bl sub_801A5E2
    bl sub_801A284
    bl sub_801A29A
    bl sub_801A2B0
    bl sub_80101C4
    bl sub_801DC36
    mov r0, #0
    strb r0, [r5,#0x1a]
    sub r0, #1
    strh r0, [r5,#0x2a]
    mov r0, #0
    str r0, [r5,#0x4c]
    bl sub_801A7F4
    bl sub_802EF5C
    bl sub_802CDD0
    bl sub_810EB42
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
.endfunc // sub_810E928

    mov r0, #1
    str r0, [r5,#0x6c]
    ldr r0, dword_810EC44 // =0x100C00 
    bl object_clearFlag // (int bitfield) -> void
    mov r0, #4
    strh r0, [r5,#0xa]
    pop {pc}
.func
.thumb_func
sub_810E97A:
    push {r4,r7,lr}
    ldrb r0, [r5,#0xb]
    cmp r0, #0
    bne loc_810E99A
    mov r0, #1
    strb r0, [r5,#0xb]
    mov r0, #0x85
    add r0, #0xff
    bl sound_play // () -> void
    mov r1, #3
    strb r1, [r5,#0x10]
    ldr r0, [r5,#0x64]
    mov r1, #8
    strb r1, [r0,#0x10]
    b locret_810E9B4
loc_810E99A:
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_810E9B4
    mov r1, #4
    strb r1, [r5,#0x10]
    ldrb r1, [r4,#0x16]
    ldr r0, off_810EC48 // =dword_810E7D8+36 
    ldrb r0, [r0,r1]
    strh r0, [r5,#0x20]
    mov r0, #8
    strh r0, [r5,#0xa]
locret_810E9B4:
    pop {r4,r7,pc}
.endfunc // sub_810E97A

.func
.thumb_func
sub_810E9B6:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge locret_810E9D2
    mov r1, #5
    strb r1, [r5,#0x10]
    ldr r0, [r5,#0x64]
    mov r1, #9
    strb r1, [r0,#0x10]
    mov r0, #0x20 
    strh r0, [r5,#0x20]
    mov r0, #0xc
    strh r0, [r5,#0xa]
locret_810E9D2:
    pop {pc}
.endfunc // sub_810E9B6

.func
.thumb_func
sub_810E9D4:
    push {r4,r6,r7,lr}
    ldrh r0, [r5,#0x20]
    cmp r0, #8
    bne loc_810EA18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #2
    ldr r6, off_810EC4C // =dword_810E7D8+12 
    ldrb r3, [r4,#0x16]
    lsl r3, r3, #2
    ldr r6, [r6,r3]
    mov r4, #0x80
    lsl r4, r4, #0x10
    orr r6, r4
    ldr r4, dword_810EC50 // =0x482AFF10 
    mov r3, #0
    mov r7, #3
    bl sub_80C536A
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x32 
    mov r3, #0x10
    ldrb r4, [r5,#0x16]
    ldrb r7, [r5,#0x17]
    eor r4, r7
    mov r7, #0
    bl sub_801BD3C
    ldr r0, [r5,#0x64]
    bl sub_80C4072
    mov r0, #0
    str r0, [r5,#0x64]
loc_810EA18:
    ldrh r0, [r5,#0x20]
    cmp r0, #0x14
    bne loc_810EA26
    mov r0, #0x86
    add r0, #0xff
    bl sound_play // () -> void
loc_810EA26:
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bge loc_810EA38
    ldr r0, [r5,#0x60]
    bl sub_80C4072
    mov r0, #0x10
    strh r0, [r5,#0xa]
loc_810EA38:
    bl sub_810EB5C
    pop {r4,r6,r7,pc}
.endfunc // sub_810E9D4

.func
.thumb_func
sub_810EA3E:
    push {lr}
    mov r0, #1
    str r0, [r5,#0x68]
    bl sub_801DD34
    mov r0, #0
    strh r0, [r5,#0xa]
    pop {pc}
.endfunc // sub_810EA3E

loc_810EA4E:
    push {r4,r6,lr}
    ldr r1, off_810EA5C // =off_810EA60 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
off_810EA5C:    .word off_810EA60
off_810EA60:    .word sub_810EA70+1
    .word sub_810EAA2+1
    .word sub_810EAA6+1
    .word sub_810EADE+1
.func
.thumb_func
sub_810EA70:
    push {r4-r7,lr}
    ldrb r0, [r4,#0x16]
    tst r0, r0
    beq locret_810EAA0
    mov r1, #0x74 
    ldrb r0, [r5,r1]
    cmp r0, #3
    blt loc_810EA9C
    mov r0, #0
    strb r0, [r5,r1]
    mov r0, #0x7c 
    mov r1, #0x49 
    mov r2, #0x4e 
    bl sub_8109630
    cmp r0, #0
    bne loc_810EA9C
    mov r0, #1
    str r0, [r5,#0x7c]
    mov r0, #0xc
    strb r0, [r6]
    b locret_810EAA0
loc_810EA9C:
    mov r0, #8
    strb r0, [r6]
locret_810EAA0:
    pop {r4-r7,pc}
.endfunc // sub_810EA70

.func
.thumb_func
sub_810EAA2:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_810EAA2

.func
.thumb_func
sub_810EAA6:
    push {r4-r7,lr}
    mov r1, #0x74 
    ldrb r0, [r5,r1]
    add r0, #1
    strb r0, [r5,r1]
    ldr r0, off_810EC54 // =sub_810EB76+1 
    str r0, [r7,#0x28]
    ldr r0, off_810EC58 // =dword_810E7D8+44 
    ldrb r1, [r4,#0x16]
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0x14
    strb r0, [r7,#0xc]
    mov r0, #0x15
    strb r0, [r7,#0xd]
    mov r0, #3
    str r0, [r7,#0x30]
    str r0, [r7,#0x34]
    mov r0, #0xb
    bl sub_8011680
    bl sub_8109952
    mov r0, #0
    strb r0, [r6]
    pop {r4-r7,pc}
.endfunc // sub_810EAA6

.func
.thumb_func
sub_810EADE:
    push {r4-r7,lr}
    bl sub_810EBB0
.endfunc // sub_810EADE

    tst r0, r0
    beq loc_810EB2E
    mov r2, #0x77 
    strb r0, [r5,r2]
    mov r2, #0x78 
    strb r1, [r5,r2]
    bl sub_801BB1C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x75 
    strb r0, [r5,r2]
    mov r2, #0x76 
    strb r1, [r5,r2]
    ldrb r1, [r4,#0x16]
    ldr r0, dword_810EC5C // =dword_810E7D8 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x34]
    ldr r0, off_810EC60 // =dword_810E7D8+56 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    ldr r0, off_810EC64 // =dword_810E7D8+64 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x30]
    ldr r0, off_810EC68 // =dword_810E7D8+36 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x32]
    ldr r0, off_810EC6C // =dword_810E7D8+12 
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r7,#8]
    mov r0, #0xc
    bl sub_8011680
    mov r0, #0
    strb r0, [r6]
    b locret_810EB40
loc_810EB2E:
    mov r0, #0
    str r0, [r5,#0x7c]
    mov r0, #0x3c 
    strh r0, [r7,#0x10]
    mov r0, #0
    strb r0, [r6]
    mov r0, #9
    bl sub_8011680
locret_810EB40:
    pop {r4-r7,pc}
.func
.thumb_func
sub_810EB42:
    push {r4-r7,lr}
    ldr r0, [r5,#0x64]
    cmp r0, #0
    bne locret_810EB5A
    mov r0, #0
    mov r1, #0
    mov r2, #7
    mov r3, #0
    ldr r4, dword_810EC70 // =0x10D04 
    bl sub_80C4038
    str r0, [r5,#0x64]
locret_810EB5A:
    pop {r4-r7,pc}
.endfunc // sub_810EB42

.func
.thumb_func
sub_810EB5C:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x22]
    add r0, #1
    strh r0, [r5,#0x22]
    lsr r0, r0, #3
    bcs locret_810EB74
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x10
    mov r3, #0
    bl sub_8109660
locret_810EB74:
    pop {r4-r7,pc}
.endfunc // sub_810EB5C

.func
.thumb_func
sub_810EB76:
    push {r4-r7,lr}
    bl sub_810EB86
.endfunc // sub_810EB76

    tst r0, r0
    bne locret_810EB84
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
locret_810EB84:
    pop {r4-r7,pc}
.func
.thumb_func
sub_810EB86:
    push {r4-r7,lr}
    ldr r3, off_810EC74 // =dword_810EBA0 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_810EB86

    pop {r4-r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
dword_810EBA0:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
.func
.thumb_func
sub_810EBB0:
    push {r4-r7,lr}
    bl sub_810EBB8
.endfunc // sub_810EBB0

    pop {r4-r7,pc}
.func
.thumb_func
sub_810EBB8:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #2
    mov r2, #0
    mov r3, #0x20 
    bl sub_800D086
.endfunc // sub_810EBB8

    tst r0, r0
    beq locret_810EBDA
    ldr r3, off_810EC78 // =dword_810EC30 
    bl sub_81096FA
    ldr r4, off_810EBE0 // =dword_810EBE4 
    bl sub_8015D80
locret_810EBDA:
    pop {r4-r7,pc}
    .byte 0, 0, 0, 0
off_810EBE0:    .word dword_810EBE4
dword_810EBE4:    .word 0x100FF00, 0x1FF0101, 0xFFFFFF01, 0x7F, 0x7DA8B5F0
    .word 0x40482101, 0x22002102, 0xF6FE2320, 0x4200FA40, 0x4B1CD005
    .word 0xFD75F7FA, 0xF7074C03, 0xBDF0F8B5, 0x0, 0x0
    .word dword_810EC24
dword_810EC24:    .word 0x1FF0101, 0xFFFFFF01, 0x7F
dword_810EC30:    .word 0x10, 0xF880080, 0x10, 0xF880080
dword_810EC40:    .word 0x40000000
dword_810EC44:    .word 0x100C00
off_810EC48:    .word dword_810E7D8+0x24
off_810EC4C:    .word dword_810E7D8+0xC
dword_810EC50:    .word 0x482AFF10
off_810EC54:    .word sub_810EB76+1
off_810EC58:    .word dword_810E7D8+0x2C
dword_810EC5C:    .word 0x810E80A
off_810EC60:    .word dword_810E7D8+0x38
off_810EC64:    .word dword_810E7D8+0x40
off_810EC68:    .word dword_810E7D8+0x24
off_810EC6C:    .word dword_810E7D8+0xC
dword_810EC70:    .word 0x10D04
off_810EC74:    .word dword_810EBA0
off_810EC78:    .word dword_810EC30
    .word dword_810EC30
dword_810EC80:    .word 0x40E04, 0x100000E, 0x4002050, 0x20780050, 0x8C0401
    .word 0x40220C8, 0x20F000C8, 0x1040403, 0x40420AA, 0x20FA00C8
    .word 0x1040405
dword_810ECAC:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFF34B2, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x34B234B2
    .word 0x34B234B2, 0xFFFF34B3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0x34B234B2, 0x34B234B2, 0x34B234B2
    .word 0x34B234B2, 0x34B234B2, 0x34B234B2, 0x34B234B2, 0x34B234B2
    .word 0x34B334B3, 0x34B334B3, 0x34B334B3, 0x34B334B3, 0x34B334B3
    .word 0x34B334B3, 0x34B334B3, 0x34B334B3, 0x0
.func
.thumb_func
sub_810ED70:
    push {lr}
    ldr r0, [r7,#0x28]
    ldr r0, [r0]
    cmp r0, #0
    beq loc_810ED9C
    bl battle_isBattleOver
    tst r0, r0
    beq loc_810ED9C
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    bne loc_810ED9C
    ldrh r0, [r0,#0x24]
    tst r0, r0
    bne loc_810ED9C
    bl loc_801171C
    b locret_810EDA6
loc_810ED9C:
    ldr r1, off_810EDA8 // =off_810EDAC 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_810EDA6:
    pop {pc}
off_810EDA8:    .word off_810EDAC
off_810EDAC:    .word sub_810EDB8+1
    .word sub_810EE04+1
    .word sub_810EE3E+1
.endfunc // sub_810ED70

.func
.thumb_func
sub_810EDB8:
    push {lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_810EDE2
    mov r0, #1
    strb r0, [r7,#1]
    mov r0, #1
    lsl r0, r0, #0x16
    bl object_setFlag // (int a1) -> void
    ldrb r0, [r7,#0xe]
    mov r1, #4
    mul r0, r1
    add r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    bl object_setCounterTime
    mov r0, #0
    strb r0, [r7,#0xf]
    b locret_810EE02
loc_810EDE2:
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_810EE02
    ldrb r0, [r7,#0xc]
    sub r0, #1
    lsl r0, r0, #2
    ldr r1, off_810F004 // =off_810EFB0 
    ldr r0, [r1,r0]
    str r0, [r7,#0x34]
    ldrb r0, [r5,#0x10]
    add r0, #1
    strb r0, [r5,#0x10]
    mov r0, #4
    strh r0, [r7]
locret_810EE02:
    pop {pc}
.endfunc // sub_810EDB8

.func
.thumb_func
sub_810EE04:
    push {r4,r6,lr}
    bl sub_810EEDE
    b loc_810EE0C
loc_810EE0C:
    lsl r1, r1, #8
    orr r0, r1
    lsl r0, r0, #0x10
    ldr r4, [r7,#0x34]
    add r6, r4, #1
    str r6, [r7,#0x34]
    ldrb r4, [r4]
    lsl r4, r4, #8
    orr r4, r0
    ldrb r0, [r7,#0xd]
    orr r4, r0
    ldr r6, [r7,#8]
    bl sub_810EF40
    bl sub_80C59F6
    mov r0, #0x87
    add r0, #0xff
    bl sound_play // () -> void
    mov r0, #0xe
    strh r0, [r7,#0x10]
    mov r0, #8
    strh r0, [r7]
    pop {r4,r6,pc}
.endfunc // sub_810EE04

.func
.thumb_func
sub_810EE3E:
    push {lr}
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_810EE62
    ldrb r0, [r7,#0xc]
    sub r0, #1
    strb r0, [r7,#0xc]
    bne loc_810EE5E
    ldrb r0, [r7,#0xe]
    mov r1, #4
    mul r0, r1
    strb r0, [r5,#0x10]
    bl loc_801171C
    b locret_810EE62
loc_810EE5E:
    mov r0, #4
    strh r0, [r7]
locret_810EE62:
    pop {pc}
.endfunc // sub_810EE3E

.func
.thumb_func
sub_810EE64:
    push {lr}
    ldrb r0, [r7]
    cmp r0, #0
    bne loc_810EE7E
    mov r0, #1
    strb r0, [r7]
    mov r0, #3
    ldrb r1, [r7,#0xc]
    cmp r1, #1
    beq loc_810EE7A
    mov r0, #7
loc_810EE7A:
    strb r0, [r5,#0x10]
    b locret_810EE94
loc_810EE7E:
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_810EE94
    ldrb r0, [r7,#0xc]
    mov r1, #4
    mul r0, r1
    strb r0, [r5,#0x10]
    bl loc_801171C
locret_810EE94:
    pop {pc}
.endfunc // sub_810EE64

    push {r4,r6,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_810F008 // =0xA000 
    tst r0, r1
    bne loc_810EEC0
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    mov r4, #9
    ldrb r6, [r5,#0x16]
    ldr r3, off_810EF24 // =dword_810EF30 
    bl sub_81096FA
    bl sub_8015E46
    b locret_810EEDC
loc_810EEC0:
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    cmp r0, #0xa
    blt loc_810EECE
    ldr r3, off_810EF24 // =dword_810EF30 
loc_810EECE:
    ldr r3, off_810EF20 // =dword_810EF28 
    bl sub_81096FA
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8015C94
locret_810EEDC:
    pop {r4,r6,pc}
.func
.thumb_func
sub_810EEDE:
    push {r4,r6,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_810F008 // =0xA000 
    tst r0, r1
    bne loc_810EEFA
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    b locret_810EF16
loc_810EEFA:
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    cmp r0, #0xa
    blt loc_810EF08
    ldr r3, off_810EF24 // =dword_810EF30 
loc_810EF08:
    ldr r3, off_810EF20 // =dword_810EF28 
    bl sub_81096FA
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_8015C94
locret_810EF16:
    pop {r4,r6,pc}
    .word 0
    .byte 0, 0, 0, 0
off_810EF20:    .word dword_810EF28
off_810EF24:    .word dword_810EF30
dword_810EF28:    .word 0x10000, 0x20
dword_810EF30:    .word 0x10020, 0x0
    .word 0x10000, 0x20
.endfunc // sub_810EEDE

.func
.thumb_func
sub_810EF40:
    push {r4,lr}
    bl object_getFlipDirection_800E2CA // () -> int
    add r4, r0, #0
    bl sub_8001532
    mov r1, #0xe
    and r0, r1
    ldr r1, off_810EF70 // =dword_810EF74 
    add r0, r0, r1
    ldrb r2, [r7,#0xe]
    lsl r2, r2, #4
    add r0, r0, r2
    mov r3, #0
    ldrsb r3, [r0,r3]
    mul r3, r4
    lsl r3, r3, #0x10
    ldr r1, [r5,#0x34]
    add r1, r1, r3
    mov r3, #1
    ldrsb r3, [r0,r3]
    lsl r3, r3, #0x10
    ldr r2, [r5,#0x38]
    pop {r4,pc}
off_810EF70:    .word dword_810EF74
dword_810EF74:    .word 0x10040C00, 0x12FE1401, 0xFFE0E02, 0xDFC1300, 0x16021200
    .word 0x16FE1A01, 0x13FE1202, 0x11FC1700, 0x22FC1E00, 0x1EFE24FF
    .word 0x1BF81CFD, 0x17FC1FFA, 0x0, 0x0, 0x0
off_810EFB0:    .word dword_810EFD4
    .word 0x810EFD5, 0x810EFD7, 0x810EFDA, 0x810EFDE, 0x810EFE3
    .word 0x810EFE9, 0x810EFF0, 0x810EFF8
dword_810EFD4:    .word 0x1040008, 0x3010704, 0x2000705, 0x80604, 0x6050302
    .word 0x3020108, 0x8070604, 0x3020100, 0x7060504, 0x3020100
    .word 0x7060504, 0x8
off_810F004:    .word off_810EFB0
dword_810F008:    .word 0xA000
    .byte 0, 0, 0, 0
    .word sub_8016380+1
    .word sub_80165B8+1
    .word sub_80165C2+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_810F0C0+1
    .word loc_81097D6+1
    .word sub_810ED70+1
    .word sub_810EE64+1
.endfunc // sub_810EF40

    push {r4-r7,lr}
    ldrh r0, [r5,#0x24]
    str r0, [r5,#0x68]
    mov r0, #0
    ldr r1, off_810F084 // =off_810F088 
    ldrb r2, [r5,#0x16]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    mov r2, r10
    ldr r2, [r2,#0x18]
    add r1, r1, r2
    ldrb r2, [r5,#3]
    mov r3, #0
loc_810F05A:
    ldr r4, [r1]
    tst r4, r4
    beq loc_810F072
    ldrh r6, [r4,#0x28]
    cmp r6, #0x4f 
    blt loc_810F072
    cmp r6, #0x54 
    bgt loc_810F072
    ldrb r6, [r4,#3]
    cmp r2, r6
    ble loc_810F072
    add r3, #1
loc_810F072:
    add r0, #1
    add r1, #4
    cmp r0, #4
    blt loc_810F05A
    mov r0, #0x14
    mul r0, r3
    mov r1, #0x6c 
    strh r0, [r5,r1]
    pop {r4-r7,pc}
off_810F084:    .word off_810F088
off_810F088:    .word 0x80
    .word 0x90
.func
.thumb_func
sub_810F090:
    push {r4,lr}
    ldr r0, [r5,#0x54]
    mov r1, #0x82
    ldrh r1, [r0,r1]
    mov r2, #0x84
    ldrh r2, [r0,r2]
    add r1, r1, r2
    mov r2, #0x86
    ldrh r2, [r0,r2]
    add r1, r1, r2
    mov r2, #0x88
    ldrh r2, [r0,r2]
    add r1, r1, r2
    mov r2, #0x8a
    ldrh r2, [r0,r2]
    add r1, r1, r2
    tst r1, r1
    beq locret_810F0BE
    ldr r0, [r5,#0x60]
    cmp r0, #2
    beq locret_810F0BE
    mov r0, #1
    str r0, [r5,#0x64]
locret_810F0BE:
    pop {r4,pc}
.endfunc // sub_810F090

loc_810F0C0:
    push {r4,r6,lr}
    ldr r1, off_810F0D0 // =off_810F0D4 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .byte 0, 0
off_810F0D0:    .word off_810F0D4
off_810F0D4:    .word sub_810F0D8+1
.func
.thumb_func
sub_810F0D8:
    push {lr}
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq loc_810F0F4
    mov r0, #0
    str r0, [r5,#0x64]
    ldr r0, [r5,#0x60]
    add r0, #1
    str r0, [r5,#0x60]
    strb r0, [r7,#0xc]
    mov r0, #0xb
    bl sub_8011680
    b locret_810F178
loc_810F0F4:
    bl sub_810F1B6
    cmp r0, #0
    bne locret_810F178
    mov r1, #0x6c 
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    cmp r0, #0
    bgt locret_810F178
    mov r0, #0
    strh r0, [r5,r1]
    ldrb r0, [r6,#4]
    add r1, r0, #1
    strb r1, [r6,#4]
    cmp r0, #3
    blt loc_810F160
    mov r0, #0
    strb r0, [r6,#4]
    bl battle_isBattleOver
    tst r0, r0
    bne loc_810F160
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq loc_810F160
    ldrh r0, [r0,#0x24]
    tst r0, r0
    beq loc_810F160
    ldrb r0, [r4,#0x16]
    ldr r1, off_810F180 // =unk_810F18C 
    ldrb r0, [r1,r0]
    strh r0, [r7,#8]
    strh r0, [r7,#0xa]
    bl sub_810F1E6
    ldr r1, dword_810F184 // =0x810F192 
    ldrb r0, [r1,r0]
    strb r0, [r7,#0xc]
    ldrb r0, [r4,#0x16]
    strb r0, [r7,#0xd]
    ldr r0, [r5,#0x60]
    strb r0, [r7,#0xe]
    mov r0, #0x64 
    add r0, r0, r5
    str r0, [r7,#0x28]
    mov r0, #0xa
    bl sub_8011680
    b locret_810F178
loc_810F160:
    bl sub_810F1E6
    ldr r1, off_810F188 // =unk_810F1A4 
    ldrb r0, [r1,r0]
    strh r0, [r7,#0x10]
    mov r0, #0
    str r0, [r7,#0x2c]
    ldr r0, off_810F1F8 // =sub_810F1F2+1 
    str r0, [r7,#0x28]
    mov r0, #9
    bl sub_8011680
locret_810F178:
    pop {pc}
    .word 0
    .byte 0, 0
off_810F180:    .word unk_810F18C
dword_810F184:    .word 0x810F192
off_810F188:    .word unk_810F1A4
unk_810F18C:    .byte 0xA
    .byte 0x1E
    .byte 0x50 
    .byte 0x64 
    .byte 0x32 
    .byte 0x64 
    .byte  1
    .byte  1
    .byte  1
    .byte  1
    .byte  1
    .byte  1
    .byte  2
    .byte  2
    .byte  2
    .byte  2
    .byte  2
    .byte  2
    .byte  3
    .byte  3
    .byte  3
    .byte  3
    .byte  3
    .byte  3
unk_810F1A4:    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0x14
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte 0xA
    .byte  1
    .byte  1
    .byte  1
    .byte  1
    .byte  1
    .byte  1
.endfunc // sub_810F0D8

.func
.thumb_func
sub_810F1B6:
    push {r4,r6,lr}
    mov r6, #0
    add r0, r5, #0
    bl sub_800ED90
    tst r3, r3
    beq loc_810F1E2
    lsl r4, r0, #0x17
    lsr r4, r4, #0x17
    bl sub_800A704
    ldr r1, off_810F1FC // =0x12C 
    cmp r0, r1
    blt loc_810F1E2
    add r0, r4, #0
    bl sub_80126E4
    bl sub_8011680
    bl sub_800F322
    mov r6, #1
loc_810F1E2:
    add r0, r6, #0
    pop {r4,r6,pc}
.endfunc // sub_810F1B6

.func
.thumb_func
sub_810F1E6:
    ldr r1, [r5,#0x60]
    mov r0, #6
    mul r1, r0
    ldrb r0, [r4,#0x16]
    add r0, r0, r1
    mov pc, lr
.endfunc // sub_810F1E6

.func
.thumb_func
sub_810F1F2:
    ldr r0, [r5,#0x64]
    mov pc, lr
    .balign 4, 0x00
off_810F1F8:    .word sub_810F1F2+1
off_810F1FC:    .word 0x12C
dword_810F200:    .word 0x10F04, 0x100000F, 0x400203C, 0x2078000A, 0x140401
    .word 0x40220D2, 0x20F00028, 0x3C0403, 0x40420B4, 0x20F00028
    .word 0x3C0405
dword_810F22C:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x810F300, 0x810F311, 0x810F33D
    .word 0x810F377, 0x81097BB, 0x7878B500, 0xD1072800, 0x70782001
    .word 0xF6FF2010, 0x2001FB5D, 0xE0087428, 0xFD5FF6F3, 0x42082180
    .word 0x2002D003, 0x20047428, 0xBD008038, 0x7BB8B5D0, 0x20088238
    .word 0xF6FE8038, 0x7CA9FFC0, 0x7CE91840, 0x43080109, 0x681A6B7B
    .word 0xD0012A00, 0xE7FA3304, 0x6B3A6BF9, 0x6BBE7B7C, 0x43340236
    .word 0x6ABF68BE, 0xFBA2F7BC, 0xB500BDD0, 0x38018A38, 0xDA0C8238
    .word 0x38017B38, 0xD0027338, 0x80382004, 0x8B38E005, 0x20008238
    .word 0x200C7428, 0xBD008038, 0x8016381, 0x80165B9, 0x810F403
    .word 0x80166AF, 0x8016B03, 0x8016CE9, 0x8016B37, 0x8016B73
    .word 0x810F435, 0x81097BB, 0x810F2ED, 0x15000, 0x16000
    .word 0x17000, 0x18000, 0x19000, 0x1A000, 0x78642814
    .word 0x101783C, 0x1010101, 0x3030303, 0x18180303, 0x18181818
    .word 0xF7D6B500, 0x66A8FBB2, 0xB500BD00, 0x28007AA8, 0x6EE8D111
    .word 0xD0012800, 0xFB6FF7BC, 0x28006F28, 0xF7BCD001, 0x6F68FB6A
    .word 0xD0012800, 0xFB65F7BC, 0xF7D66EA8, 0xF707FBA0, 0xBD00F8C8
    .word 0x4903B550, 0x58097830, 0x470846FE, 0xBD50, 0x810F448
    .word 0x810F44D, 0x7DA3B500, 0x5CC0481D, 0x42816E29, 0x2900DA34
    .word 0x1A40D132, 0xF70A7338, 0x4919FE80, 0xD0014208, 0x73382001
    .word 0x5CC04817, 0x48177378, 0x81F85CC0, 0x5CC04816, 0x200A8138
    .word 0x9B8178, 0x58C04814, 0x206C6338, 0x63781940, 0x63B86E68
    .word 0x21033001, 0x66684008, 0x63F86EA8, 0x83382078, 0xFE5DF70A
    .word 0x4208490C, 0x8B38D002, 0x8338303C, 0x19402060, 0x200A62B8
    .word 0xF8DEF702, 0xBD00, 0x810F3EC, 0x8000, 0x810F3E6
    .word 0x810F3F2, 0x810F3E0, 0x810F3C8, 0x2000, 0x31004
    .word 0x10, 0x60010C8, 0x30E60064, 0x780601, 0x6022104
    .word 0x412C00AA, 0xBE0603, 0x60400FA, 0x12C0096, 0xC80605
dword_810F510:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x6D68B5F0, 0x42006F00
    .word 0x491FD01A, 0xD0174208, 0x217E4816, 0x895C69, 0xF0005840
    .word 0xF70AFE1A, 0x7DA0FD41, 0xD10B4200, 0x7CE97CA8, 0xF97CF6FD
    .word 0x42084916, 0x7CA8D004, 0x22027CE9, 0xFAFDF6FD, 0x78384902
    .word 0x46FE5809, 0xBDF04708, 0x810F620, 0x810F661, 0x810F6C5
    .word 0x810F771, 0x810F7ED, 0x810F899, 0x810F96D, 0x81097B5
    .word 0x810F640, 0x8, 0xA, 0x9, 0xB
    .word 0xD, 0xD, 0xC000000, 0x400, 0x7878B5F0
    .word 0xD1074200, 0x30FF20CA, 0xFFAEF6F0, 0x74282001, 0x70782001
    .word 0x5C68216E, 0x54683001, 0xD11A2828, 0x54682000, 0x7CE97CA8
    .word 0xF0004A0B, 0x2001FD6D, 0x20406728, 0xFD5BF70A, 0x2100207F
    .word 0xF70A5429, 0x4906FD60, 0xD0024208, 0x2101207F, 0x20045429
    .word 0x20007038, 0xBDF07078, 0x200000, 0xA000, 0x7878B510
    .word 0xD10B4200, 0x21002000, 0x74A875B8, 0x74E975F9, 0xFDE0F6FE
    .word 0xFCB6F70A, 0x70782001, 0xFCC6F70A, 0x21027828, 0x70284388
    .word 0x38018A38, 0xD0008238, 0xF000E039, 0x4200F97C, 0x75B8D031
    .word 0x75F974A8, 0xF6FE74E9, 0x8FE8FDC7, 0x87E83824, 0xFC9AF70A
    .word 0xF0002001, 0x7CA8FA77, 0x226C7CE9, 0x226D54A8, 0xF71D54A9
    .word 0x2806FD83, 0x2010D002, 0xF952F6FF, 0xF9B2F000, 0xF9F8F000
    .word 0xF6F020F7, 0x2001FF43, 0xFC98F70A, 0x21027828, 0x70284308
    .word 0xF8EEF707, 0x74282002, 0x80382008, 0x70782000, 0x2014E003
    .word 0x20008038, 0xBD107078, 0x6C68B5F0, 0x18096BA9, 0xF6FE63A9
    .word 0xF70AFD97, 0x7CA8FC65, 0x7DAB7CE9, 0x40537DEA, 0xF7F92201
    .word 0x2000FF67, 0xFA20F000, 0xFA4AF000, 0x5C282074, 0x40482101
    .word 0x43482103, 0x42887CE9, 0xE01CD000, 0x5C282067, 0xD0122800
    .word 0x21017DA8, 0x21054048, 0x30014348, 0x42887CA9, 0x2077D009
    .word 0x54292100, 0x67A86BA8, 0x8038200C, 0x70782000, 0xF000E005
    .word 0x2010FA60, 0x20008038, 0xBDF07078, 0x206EB5F0, 0x5C2A2175
    .word 0x542A3201, 0x429A5C6B, 0x1C10D01B, 0xF0001C19, 0x2174F923
    .word 0x4A1E5C69, 0x895C52, 0x58594B1E, 0x18804348, 0x6C287428
    .word 0x18096B69, 0xF0006369, 0xF6FEF91F, 0x2001FD41, 0xF9D4F000
    .word 0xF9FEF000, 0x2067E01A, 0x39015C29, 0x20745429, 0x22015C29
    .word 0x54294051, 0x42406C68, 0x7CA86468, 0xF6FE7CE9, 0x6368FD10
    .word 0x2100206E, 0x20F75429, 0xFEB4F6F0, 0x80382008, 0x70782000
    .word 0xFBEEF70A, 0x7CE97CA8, 0x7DEA7DAB, 0x22014053, 0xFEF0F7F9
    .word 0xBDF0, 0x810F888, 0x602, 0x810F890, 0x1
    .word 0xFFFFFFFF, 0x206EB5F0, 0x29005C29, 0x3901D017, 0x6C685429
    .word 0x18096BA9, 0xF6FE63A9, 0xF70AFCFD, 0x7CA8FBCB, 0x7DAB7CE9
    .word 0x40537DEA, 0xF7F92201, 0x2000FECD, 0xF986F000, 0xF9B0F000
    .word 0x7878E04B, 0xD1054200, 0x70782001, 0x5C282074, 0xF994F000
    .word 0xFBC6F70A, 0x21027828, 0x70284388, 0x5C29207C, 0xD0384209
    .word 0x54292100, 0xF92AF000, 0x66282000, 0x22646728, 0x75B85CA8
    .word 0x226574A8, 0x75F85CA8, 0xF6FE74E8, 0xF70AFCC1, 0x2000FB97
    .word 0x200163E8, 0xFBAAF70A, 0x21027828, 0x70284308, 0xF800F707
    .word 0xF70A2040, 0x2264FC11, 0x22655CA8, 0x4AE25CA9, 0xFBFAF000
    .word 0x5CA82264, 0x5CA92265, 0xF8F9F70C, 0x74282000, 0x82388B38
    .word 0x80382018, 0x70782000, 0xF70A2040, 0xBDF0FBF9, 0x7878B5F0
    .word 0xD1014200, 0x70782001, 0xFB7CF70A, 0x21027828, 0x70284388
    .word 0x2100207C, 0xF0005429, 0x2000F8E3, 0x67286628, 0x5CA82264
    .word 0x74A875B8, 0x5CA82265, 0x74E875F8, 0xFC7AF6FE, 0x63E82000
    .word 0xFB4EF70A, 0xF70A2001, 0x7828FB63, 0x43082102, 0x20407028
    .word 0xFBCCF70A, 0x5CA82264, 0x5CA92265, 0xF0004ABF, 0x2264FBB5
    .word 0x22655CA8, 0xF70C5CA9, 0x2000F8B4, 0x8B387428, 0x20188238
    .word 0x20008038, 0x20407078, 0xFBB4F70A, 0xB5F0BDF0, 0x5C28207F
    .word 0xD0054200, 0xF814F000, 0xD00F4200, 0xE00E2100, 0xFC5DF6FE
    .word 0x6AF81C04, 0xD0074200, 0x29008C81, 0x7C81DD04, 0x1C081B09
    .word 0xE0002100, 0xBDF02000, 0x4BA8B5F0, 0xFE63F7F9, 0xF92EF706
    .word 0xBDF0, 0x0
    .word 0x20, 0x20, 0x0
.endfunc // sub_810F1F2

.func
.thumb_func
sub_810FA4C:
    push {lr}
    push {r0}
    add r0, r1, #0
    mov r1, #5
    svc 6
    add r1, r0, #0
    pop {r0}
    svc 6
    cmp r0, #5
    bne locret_810FA62
    mov r0, #4
locret_810FA62:
    pop {pc}
.endfunc // sub_810FA4C

    push {r4-r7,lr}
    mov r0, #0x76 
    ldrb r1, [r5,r0]
    mov r2, #0x77 
    ldrb r3, [r5,r2]
    add r3, r3, r1
    strb r3, [r5,r2]
    lsl r3, r3, #1
    ldr r2, off_810FCD4 // =dword_80065D0+16 
    ldrh r0, [r2,r3]
    mov r1, #0xc
    mul r0, r1
    lsl r0, r0, #8
    mov r1, #0x74 
    ldrb r1, [r5,r1]
    lsl r1, r1, #2
    ldr r2, off_810FA94 // =unk_810FA98 
    ldr r1, [r2,r1]
    mul r0, r1
    ldr r1, [r5,#0x78]
    add r1, r1, r0
    str r1, [r5,#0x38]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810FA94:    .word unk_810FA98
unk_810FA98:    .byte  1
    .byte  0
    .byte  0
    .byte  0
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xF0
    .byte 0xB5
    .byte  0
    .byte 0x22 
    .byte 0x8C
    .byte 0x48 
    .byte 0xA1
    .byte 0x7D 
    .byte 0x89
    .byte  0
    .byte 0x40 
    .byte 0x18
    .byte  5
    .byte 0xB4
    .byte 0x83
    .byte 0x5C 
    .byte 0xB1
    .byte 0xF7
    .byte 0xA6
    .byte 0xFC
    .byte  5
    .byte 0xBC
    .byte  1
    .byte 0x32 
    .byte  4
    .byte 0x2A 
    .byte 0xF7
    .byte 0xD1
    .byte 0xF0
    .byte 0xBD
    .byte  0
    .byte  0
    .byte 0xC4
    .byte 0xFA
    .byte 0x10
    .byte  8
    .byte 0xFF
    .byte 0xFF
    .byte  7
    .byte  6
    .byte  3
    .byte  4
.func
.thumb_func
sub_810FACA:
    push {r4-r7,lr}
    push {r0,r1}
    mov r0, #0x7e 
    ldrb r0, [r5,r0]
    lsl r0, r0, #2
    ldr r4, off_810FAF8 // =unk_810FAFC 
    ldr r4, [r4,r0]
    push {r0}
    ldrh r0, [r7,#8]
    ldrh r1, [r7,#0xa]
    lsl r1, r1, #0x10
    orr r0, r1
    add r6, r0, #0
    ldrb r2, [r7,#2]
    pop {r3}
    ldr r7, off_810FB14 // =unk_810FB18 
    ldr r7, [r7,r3]
    mov r3, #0
    pop {r0,r1}
    bl sub_80C536A
    pop {r4-r7,pc}
    .byte  0
    .byte  0
off_810FAF8:    .word unk_810FAFC
unk_810FAFC:    .byte  1
    .byte  1
    .byte  5
    .byte  6
    .byte  1
    .byte  3
    .byte  5
    .byte  6
    .byte  1
    .byte  2
    .byte  5
    .byte  6
    .byte  1
    .byte  4
    .byte  5
    .byte  6
    .byte  1
    .byte  6
    .byte  5
    .byte  6
    .byte  1
    .byte  6
    .byte  5
    .byte  6
off_810FB14:    .word unk_810FB18
unk_810FB18:    .byte  3
    .byte  0
    .byte  0
    .byte  0
    .byte  1
    .byte 0x10
    .byte  0
    .byte  0
    .byte  3
    .byte  0
    .byte  0
    .byte  0
    .byte  3
    .byte  0
    .byte  0
    .byte  0
    .byte  3
    .byte  0
    .byte  0
    .byte  0
    .byte  3
    .byte  0
    .byte  0
    .byte  0
    .byte 0xF0
    .byte 0xB5
    .byte 0xA0
    .byte 0x7D 
    .byte 0x80
    .byte  0
    .byte 0x13
    .byte 0x49 
    .byte  9
    .byte 0x58 
    .byte 0xB
    .byte 0x4A 
    .byte 0x12
    .byte 0x58 
    .byte 0x18
    .byte 0x4B 
    .byte 0x1B
    .byte 0x58 
    .byte 0xA
    .byte 0xF7
    .byte 0x9E
    .byte 0xFA
    .byte 0xA0
    .byte 0x7D 
    .byte 0x80
    .byte  0
    .byte 0x1C
    .byte 0x49 
    .byte  8
    .byte 0x58 
    .byte 0xA
    .byte 0xF7
    .byte 0x83
    .byte 0xFB
    .byte 0xF0
    .byte 0xBD
    .byte 0xF0
    .byte 0xB5
    .byte 0x10
    .byte 0x21 
    .byte  2
    .byte 0x22 
    .byte  3
    .byte 0x23 
    .byte 0xA
    .byte 0xF7
    .byte 0x91
    .byte 0xFA
    .byte  0
    .byte 0x20
    .byte 0xA
    .byte 0xF7
    .byte 0x79 
    .byte 0xFB
    .byte 0xF0
    .byte 0xBD
    .byte 0x6C 
    .byte 0xFB
    .byte 0x10
    .byte  8
    .byte  2
    .byte  0
    .byte  0
    .byte  0
    .byte  2
    .byte  0
    .byte  0
    .byte  0
    .byte  2
    .byte  0
    .byte  0
    .byte  0
    .byte  2
    .byte  0
    .byte  0
    .byte  0
    .byte  2
    .byte  0
    .byte  0
    .byte  0
    .byte  2
    .byte  0
    .byte  0
    .byte  0
    .byte 0x88
    .byte 0xFB
    .byte 0x10
    .byte  8
    .byte 0x35 
    .byte  0
    .byte  0
    .byte  0
    .byte 0x35 
    .byte  0
    .byte  0
    .byte  0
    .byte 0x35 
    .byte  0
    .byte  0
    .byte  0
    .byte 0x35 
    .byte  0
    .byte  0
    .byte  0
    .byte 0x35 
    .byte  0
    .byte  0
    .byte  0
    .byte 0x35 
    .byte  0
    .byte  0
    .byte  0
    .byte 0xA4
    .byte 0xFB
    .byte 0x10
    .byte  8
    .byte  3
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .word 0x3, 0x3, 0x3, 0x3, 0x810FBC0, 0x0
    .word 0x10, 0x0, 0x0, 0x0, 0x0
.endfunc // sub_810FACA

    push {r4-r7,lr}
    tst r0, r0
    bne loc_810FBE8
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x44]
    add r1, r1, r2
    b loc_810FBF0
loc_810FBE8:
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x40]
    add r0, r0, r2
loc_810FBF0:
    mov r2, #0
    ldr r2, [r5,#0x3c]
    bl sub_800E258
    push {r0,r1}
    bl object_getPanelParameters
    ldr r1, dword_810FCDC // =0x800000 
    tst r0, r1
    pop {r0,r1}
    beq locret_810FC0A
    bl sub_810FACA
locret_810FC0A:
    pop {r4-r7,pc}
    push {r4-r7,lr}
    tst r0, r0
    beq locret_810FC2A
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    eor r0, r1
    lsl r0, r0, #8
    ldr r1, [r5,#0x34]
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    mov r3, #0
    ldr r4, dword_810FC2C // =0x2 
    orr r4, r0
    bl sub_80E05F6
locret_810FC2A:
    pop {r4-r7,pc}
dword_810FC2C:    .word 0x2
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x6c 
    ldrb r2, [r5,r2]
    mov r3, #0x6d 
    ldrb r3, [r5,r3]
    cmp r0, r2
    bne loc_810FC48
    cmp r1, r3
    bne loc_810FC48
    b locret_810FC66
loc_810FC48:
    mov r2, #0x6c 
    ldrb r0, [r5,r2]
    mov r2, #0x6d 
    ldrb r1, [r5,r2]
    bl sub_810FC68
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x6c 
    strb r0, [r5,r2]
    mov r2, #0x6d 
    strb r1, [r5,r2]
    mov r0, #1
    bl sub_801A07C
locret_810FC66:
    pop {r4-r7,pc}
.func
.thumb_func
sub_810FC68:
    push {r4-r7,lr}
    cmp r0, #0
    ble locret_810FC94
    cmp r0, #7
    bge locret_810FC94
    cmp r1, #0
    ble locret_810FC94
    cmp r1, #4
    bge locret_810FC94
    push {r0,r1}
    bl object_isPanelSolid
    tst r0, r0
    pop {r0,r1}
    beq locret_810FC94
    ldrb r2, [r4,#0x16]
    ldr r3, off_810FC98 // =dword_810FC9C 
    ldrb r2, [r3,r2]
    cmp r2, #0xff
    beq locret_810FC94
    bl object_setPanelType
locret_810FC94:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_810FC98:    .word dword_810FC9C
dword_810FC9C:    .word 0x607FFFF, 0xB5F00403, 0x5C282074, 0x49050080, 0x6C695808
    .word 0xDA002900, 0xDF064249, 0x5468216E, 0xBDF0, 0x810FCC4
    .word 0x400000, 0x100000, 0x200000, 0x810FA3C
off_810FCD4:    .word dword_80065D0+0x10
    .word unk_810FD58
dword_810FCDC:    .word 0x800000
    .word sub_8016380+1
    .word sub_80165B8+1
    .word sub_810FDF0+1
    .word sub_80166AE+1
    .word sub_810FD70+1
    .word sub_8016CE8+1
    .word sub_810FD90+1
    .word sub_810FDB0+1
    .word loc_810FDD0+1
    .word sub_81097B4+1
dword_810FD08:    .word 0x810F5D1, 0x8109953, 0x8109805, 0x3C3C3C3C, 0x50501E1E
    .word 0xC8643232, 0xA0A0A0A, 0xA0A, 0x3C3C3C3C, 0x1E1E
    .word 0x3C3C3C3C, 0x1E1E, 0x40000, 0x40000, 0x40000
    .word 0x40000, 0x40000, 0x40000, 0x1010101, 0x202
unk_810FD58:    .byte  8
    .byte 0x10
    .byte 0x18
    .byte 0x20
    .byte  8
    .byte 0x10
    .byte 0x18
    .byte 0x20
    .byte  8
    .byte 0x10
    .byte 0x18
    .byte 0x20
    .byte  8
    .byte 0x10
    .byte 0x18
    .byte 0x20
    .byte  8
    .byte 0x10
    .byte 0x18
    .byte 0x20
    .byte  8
    .byte 0x10
    .byte 0x18
    .byte 0x20
.endfunc // sub_810FC68

.func
.thumb_func
sub_810FD70:
    push {lr}
    ldr r0, [r5,#0x54]
    ldr r0, [r0,#0x70]
    tst r0, r0
    beq loc_810FD84
    ldr r1, dword_810FD8C // =0xC000000 
    tst r0, r1
    beq loc_810FD84
    bl sub_801A074 // () -> void
loc_810FD84:
    bl byte_8016B02
    pop {pc}
    .balign 4, 0x00
dword_810FD8C:    .word 0xC000000
.endfunc // sub_810FD70

.func
.thumb_func
sub_810FD90:
    push {lr}
    ldr r0, [r5,#0x54]
    ldr r0, [r0,#0x70]
    tst r0, r0
    beq loc_810FDA4
    ldr r1, dword_810FDAC // =0xC000000 
    tst r0, r1
    beq loc_810FDA4
    bl sub_801A074 // () -> void
loc_810FDA4:
    bl sub_8016B36
    pop {pc}
    .balign 4, 0x00
dword_810FDAC:    .word 0xC000000
.endfunc // sub_810FD90

.func
.thumb_func
sub_810FDB0:
    push {lr}
    ldr r0, [r5,#0x54]
    ldr r0, [r0,#0x70]
    tst r0, r0
    beq loc_810FDC4
    ldr r1, dword_810FDCC // =0xC000000 
    tst r0, r1
    beq loc_810FDC4
    bl sub_801A074 // () -> void
loc_810FDC4:
    bl sub_8016B72
    pop {pc}
    .balign 4, 0x00
dword_810FDCC:    .word 0xC000000
.endfunc // sub_810FDB0

loc_810FDD0:
    push {r4,r6,lr}
    ldr r1, off_810FDE0 // =off_810FDE4 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .byte 0, 0
off_810FDE0:    .word off_810FDE4
off_810FDE4:    .word sub_810FE18+1
    .word sub_810FE5C+1
    .word sub_810FF1C+1
.func
.thumb_func
sub_810FDF0:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_810FE0C
    bl object_getFlag // () -> int
    ldr r1, dword_810FE14 // =0x40000000 
    tst r0, r1
    beq loc_810FE0C
    ldr r0, [r5,#0x68]
    bl sub_80C10E8
    mov r0, #0
    str r0, [r5,#0x68]
loc_810FE0C:
    bl sub_80165C2
    pop {pc}
    .balign 4, 0x00
dword_810FE14:    .word 0x40000000
.endfunc // sub_810FDF0

.func
.thumb_func
sub_810FE18:
    push {r4-r7,lr}
    mov r0, #1
    bl sub_801A07C
    mov r0, #0x60 
    mov r1, #0x5b 
    mov r2, #0x60 
    bl sub_8109630
    cmp r0, #0
    bne locret_810FE5A
    mov r0, #0x7d 
    ldrb r1, [r5,r0]
    tst r1, r1
    beq loc_810FE3C
    mov r1, #0
    strb r1, [r5,r0]
    b loc_810FE48
loc_810FE3C:
    mov r0, #0x66 
    ldrb r1, [r5,r0]
    add r1, #1
    strb r1, [r5,r0]
    cmp r1, #2
    ble loc_810FE56
loc_810FE48:
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #1
    str r0, [r5,#0x60]
    mov r0, #4
    strb r0, [r6]
    b locret_810FE5A
loc_810FE56:
    mov r0, #8
    strb r0, [r6]
locret_810FE5A:
    pop {r4-r7,pc}
.endfunc // sub_810FE18

.func
.thumb_func
sub_810FE5C:
    push {lr}
    bl object_canMove
    beq loc_810FEF4
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x64 
    strb r0, [r5,r2]
    mov r2, #0x65 
    strb r1, [r5,r2]
    bl sub_801BB1C
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    str r0, [r7,#0x2c]
    ldrb r1, [r4,#0x16]
    ldr r0, off_810FF00 // =dword_810FD08+40 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    ldr r0, dword_810FF04 // =dword_810FD08 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    ldr r0, off_810FF08 // =dword_810FD08+48 
    lsl r2, r1, #2
    ldr r0, [r0,r2]
    str r0, [r5,#0x44]
    push {r1}
    add r2, r0, #0
    bl object_getFlipDirection_800E2CA // () -> int
    mul r0, r2
    str r0, [r5,#0x40]
    add r1, r2, #0
    ldr r0, dword_810FF0C // =0x280000 
    svc 6
    mov r1, #0x75 
    strb r0, [r5,r1]
    cmp r0, #0
    beq loc_810FEBA
    add r1, r0, #0
    mov r0, #0x80
    svc 6
    mov r1, #0x76 
    strb r0, [r5,r1]
loc_810FEBA:
    pop {r1}
    ldr r0, off_810FF10 // =dword_810FD08+72 
    mov r2, #0x67 
    ldrb r3, [r0,r1]
    strb r3, [r5,r2]
    mov r0, #0
    mov r2, #0x74 
    strb r0, [r5,r2]
    ldr r0, off_810FF14 // =dword_810FD08+24 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0xa]
    ldr r0, off_810FF18 // =dword_810FD08+32 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    mov r0, #0x40 
    bl object_setFlag // (int a1) -> void
    mov r0, #0xa
    bl sub_8011680
    mov r0, #0
    strb r0, [r7,#1]
    mov r1, #0x6e 
    strb r0, [r5,r1]
    mov r1, #0x6f 
    strb r0, [r5,r1]
    mov r0, #0
    strb r0, [r6]
    b locret_810FEFC
loc_810FEF4:
    mov r0, #0
    str r0, [r5,#0x60]
    mov r0, #0
    strb r0, [r6]
locret_810FEFC:
    pop {pc}
    .byte 0, 0
off_810FF00:    .word dword_810FD08+0x28
dword_810FF04:    .word 0x810FD1A
off_810FF08:    .word dword_810FD08+0x30
dword_810FF0C:    .word 0x280000
off_810FF10:    .word dword_810FD08+0x48
off_810FF14:    .word dword_810FD08+0x18
off_810FF18:    .word dword_810FD08+0x20
.endfunc // sub_810FE5C

.func
.thumb_func
sub_810FF1C:
    push {lr}
    ldr r0, off_8110274 // =sub_810FF68+1 
    str r0, [r7,#0x28]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    str r0, [r7,#0x2c]
    ldr r0, off_8110278 // =dword_810FD08+12 
    ldrb r1, [r4,#0x16]
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    bl object_getFlag // () -> int
    ldr r1, dword_811027C // =0x8000 
    tst r0, r1
    beq loc_810FF46
    ldrh r0, [r7,#0x18]
    add r0, #0x3c 
    strh r0, [r7,#0x18]
loc_810FF46:
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0x14
    strb r0, [r7,#0xc]
    mov r0, #0x15
    strb r0, [r7,#0xd]
    mov r0, #3
    str r0, [r7,#0x30]
    str r0, [r7,#0x34]
    mov r0, #0xb
    bl sub_8011680
    bl sub_8109952
    mov r0, #0
    strb r0, [r6]
    pop {pc}
.endfunc // sub_810FF1C

.func
.thumb_func
sub_810FF68:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
.endfunc // sub_810FF68

    bl sub_810FF9C
    tst r0, r0
    bne loc_810FF8E
    bl sub_810FFC4
    tst r0, r0
    bne loc_810FF8E
    bl sub_8110000
    tst r0, r0
    bne loc_810FF8E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_810FF8E:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    pop {r0,r1}
    pop {r4-r7,pc}
.func
.thumb_func
sub_810FF9C:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq locret_810FFC2
    push {r0}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_8110280 // =dword_8110098+8 
    bl sub_81096FA
    mov r4, #0x2c 
    ldrb r6, [r5,#0x16]
    pop {r5}
    bl sub_811000E
locret_810FFC2:
    pop {r4-r7,pc}
.endfunc // sub_810FF9C

.func
.thumb_func
sub_810FFC4:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq loc_810FFFC
    ldrb r0, [r0,#0x13]
    ldr r3, off_8110284 // =dword_8110098+8 
    bl sub_81096FA
    mov r7, sp
    bl sub_800CFA6
    tst r0, r0
    beq loc_810FFFC
    push {r0}
    bl sub_8001532
    pop {r1}
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_810FFFC:
    add sp, sp, #0x18
    pop {r4-r7,pc}
.endfunc // sub_810FFC4

.func
.thumb_func
sub_8110000:
    push {r4-r7,lr}
    ldr r3, off_8110288 // =dword_8110098+8 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_8110000

    pop {r4-r7,pc}
.func
.thumb_func
sub_811000E:
    push {r4-r7,lr}
    ldr r7, off_811001C // =off_8019B78 
    lsl r4, r4, #2
    ldr r4, [r7,r4]
    bl sub_8110020
    pop {r4-r7,pc}
off_811001C:    .word off_8019B78
.endfunc // sub_811000E

.func
.thumb_func
sub_8110020:
    push {r4-r7,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    add r0, r6, #0
    bl sub_800E2C2
    str r0, [sp,#0x2c]
    mov r6, #0
loc_8110036:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_8110078
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x2c]
    mul r0, r2
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    str r0, [sp,#0x30]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_8110074
    ldr r0, [sp,#0x34]
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_8110074
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    strb r0, [r1,r6]
    add r6, #1
loc_8110074:
    add r4, #2
    b loc_8110036
loc_8110078:
    add r2, r6, #0
    add r0, r6, #0
    beq loc_8110092
    bl sub_8001532
    add r1, r6, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r2, r6, #0
loc_8110092:
    add sp, sp, #0x38
    pop {r4-r7,pc}
    .hword 0x0
dword_8110098:    .word 0x0, 0x0, 0x0
    .word 0xF8800A0, 0x20, 0xF880080, 0x2000B5F0, 0x20006628
    .word 0x20006728, 0x5468217D, 0x7CE97CA8, 0x54A82264, 0x54A92265
    .word 0x21002066, 0x207E5429, 0x7D896DA9, 0xF7B05429, 0x66A8FFF5
.endfunc // sub_8110020

    pop {r4-r7,pc}
.func
.thumb_func
sub_81100E2:
    push {r4-r7,lr}
    ldr r0, [r5,#0x60]
    tst r0, r0
    bne locret_8110102
    ldr r0, off_8110104 // =dword_8110108 
    mov r1, #0x7e 
    ldrb r1, [r5,r1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldr r1, [r5,#0x54]
    ldrh r2, [r1,r0]
    cmp r2, #0
    beq locret_8110102
    mov r0, #0x7d 
    mov r1, #1
    strb r1, [r5,r0]
locret_8110102:
    pop {r4-r7,pc}
off_8110104:    .word dword_8110108
dword_8110108:    .word 0x86, 0x8A, 0x84, 0x88, 0xFFFFFFFF, 0xFFFFFFFF, 0x8110124
    .word 0x8, 0xA, 0x9, 0xB, 0xD, 0xD, 0x1C14B5F0
    .word 0x7DA8B403, 0x40487DE9, 0x1C020200, 0xB404BC03, 0xF891F6FE, 0x1C011C0A, 0xBC011C23
    .word 0x43044C02, 0xFA49F7D0, 0xBDF0, 0x15, 0x1C14B5F0, 0x7DA8B403, 0x40487DE9
    .word 0x1C020200, 0xB404BC03, 0xF879F6FE, 0x1C011C0A, 0xBC011C23, 0x43044C02, 0xFA31F7D0
    .word 0xBDF0, 0x14, 0xB082B5F0, 0x91007CA9, 0x91017CE9, 0x69B64656, 0x43482110
    .word 0x183630D0, 0x27002404, 0x422D6835, 0x7A28D021, 0xD01E2808, 0xF6FF8D28, 0x2802F869
    .word 0x2800D003, 0x2801D001, 0xF709D115, 0x492CFFC6, 0xD0104208, 0x7CE97CA8, 0xF000AB00
    .word 0x2F00F812, 0xB401D008, 0x7CF97CB8, 0xF000AB01, 0xBC02F80A, 0xDD004288, 0x36041C2F
    .word 0xD1D73C01, 0xB0021C38, 0x681ABDF0, 0x1C021A10, 0x685A4350, 0x1C0A1A51, 0x18404351
    .word 0xB5F046F7, 0x7DA8B401, 0x40487DE9, 0xB4010200, 0x7CE97CA8, 0xF81FF6FE, 0x1C011C0A
    .word 0xBC012300, 0x43044C03, 0x4304BC01, 0xF9D5F7D0, 0xBDF0, 0x0
.endfunc // sub_81100E2

    push {r4-r7,lr}
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x16]
    ldr r1, off_8110270 // =dword_810FD08+24 
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x2e]
    pop {r4-r7,pc}
    .word 0, 0, 0
    .byte 0, 0
off_8110270:    .word dword_810FD08+0x18
off_8110274:    .word sub_810FF68+1
off_8110278:    .word dword_810FD08+0xC
dword_811027C:    .word 0x8000
off_8110280:    .word dword_8110098+8
off_8110284:    .word dword_8110098+8
off_8110288:    .word dword_8110098+8
dword_811028C:    .word 0x800, 0x41104, 0x1000011, 0x8003064, 0x308C0050, 0x780801
    .word 0x80230B4, 0x30DC00B4, 0xDC0803, 0x80430B4, 0x30DC00B4, 0xFA0805
dword_81102BC:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x8110390, 0x81103A1, 0x8110417
    .word 0x811046B, 0x81104B3, 0x7878B510, 0xD1192800, 0x70782001
    .word 0x74282001, 0x19402034, 0x2445C80E, 0xF91DF7D0, 0x21014843
    .word 0x23002205, 0xF7B34C42, 0x6AB9FE37, 0x202F6008, 0xF6F030FF
    .word 0x208AF8FB, 0xF8F8F6F0, 0x28108A38, 0x2104DC0D, 0xD10A4208
    .word 0xFF6FF6FD, 0x18407CA9, 0x7DAA7CE9, 0x40537DEB, 0xF7F92208
    .word 0x8A38F931, 0x82383801, 0x201EDC06, 0xFAE8F6FE, 0x80382004
    .word 0xF801F000, 0xB550BD10, 0x6AB92006, 0x74086809, 0x74282002
    .word 0xF6FDB480, 0x7CA9FF50, 0x7CE91840, 0x8A7C68BE, 0x34010224
    .word 0x23002203, 0xF7C56B7F, 0xBC80FA27, 0x21002000, 0x23002204
    .word 0xF7B34C20, 0x6B79FDF3, 0x60083104, 0xFE1AF7B3, 0x30FF209B
    .word 0xF8B4F6F0, 0x80382008, 0xB500BD50, 0xFE7BF709, 0x3092101
    .word 0xD1074208, 0x68006B78, 0xD0032800, 0x38018A78, 0xDC138278
    .word 0x21006B78, 0x6ABA6001, 0x21006810, 0xF7B36011, 0x6B7AFDEC
    .word 0x68103204, 0x60112100, 0xFDE5F7B3, 0x74282003, 0x8038200C
    .word 0xB500BD00, 0xFC99F6F2, 0x42082180, 0x6B38D004, 0x60012100
    .word 0xF926F701, 0xBD00, 0x200000, 0x10011104, 0x8016381
    .word 0x80165B9, 0x8110519, 0x80166AF, 0x8016B03, 0x8016CE9
    .word 0x8016B37, 0x8016B73, 0x811055D, 0x81097BB, 0x811037D
    .word 0x64503C1E, 0xB4B46E46, 0xB4B4B4B4, 0x3C3C3C3C, 0x78783C3C
    .word 0x78787878, 0x7AA8B500, 0xD10F2800, 0x66A82000, 0x28006EE8
    .word 0xF7B3D003, 0x2000FDA2, 0x6E6866E8, 0xD0032800, 0xFD9BF7B3
    .word 0x66682000, 0xF83FF706, 0xB500BD00, 0x66A82000, 0x28006EE8
    .word 0xF7B3D003, 0x2000FD8E, 0xBD0066E8, 0x4903B550, 0x58097830
    .word 0x470846FE, 0xBD50, 0x8110570, 0x8110575, 0x78B0B500
    .word 0xD10D2800, 0x70B02001, 0x48237DA1, 0x81305C40, 0xFDEDF709
    .word 0x42084921, 0x8930D002, 0x81303078, 0x28006E28, 0x8930D11A
    .word 0xDC0A283C, 0x40082104, 0x7CA8D007, 0x7DAB7CE9, 0x40537DEA
    .word 0xF7F92201, 0x8930F853, 0x81303801, 0xF709DC22, 0x4914FDD0
    .word 0xD1034208, 0x21008CE8, 0xFEC6F6FD, 0x48117DA1, 0x81385C40
    .word 0x8178200A, 0x5C40480F, 0x480F8238, 0x82785C40, 0x19402060
    .word 0x20686338, 0x63781940, 0x19402064, 0x200A62B8, 0xF83EF701
    .word 0x70B02000
    pop {pc}
.func
.thumb_func
sub_811060A:
    mov r0, #1
    str r0, [r5,#0x60]
    mov pc, lr
dword_8110610:    .word 0x8110506, 0x2000, 0x8000, 0x8110500, 0x811050C, 0x8110512
    .word 0x31204, 0x1000012, 0x4003078, 0x30A0003C, 0x5A0401, 0x40230C8
    .word 0x30F00078, 0x960403, 0x40430B4, 0x31180078, 0xB40405
unk_8110654:    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
    .byte 0xFF
    .byte 0xFF, 0xFF, 0xFF
.endfunc // sub_811060A

loc_8110714:
    push {lr}
    ldr r1, off_8110724 // =off_8110728 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .balign 4, 0x00
off_8110724:    .word off_8110728
off_8110728:    .word sub_811072C+1
.func
.thumb_func
sub_811072C:
    push {lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq loc_8110794
    ldrh r1, [r0,#0x24]
    tst r1, r1
    beq loc_8110794
    ldrb r1, [r0,#0x13]
    ldrb r2, [r5,#0x13]
    cmp r1, r2
    bne loc_8110794
    push {r0}
    bl object_getFlipDirection_800E2CA // () -> int
    add r1, r0, #0
    pop {r0}
    ldrb r2, [r5,#0x12]
    ldrb r3, [r0,#0x12]
    sub r2, r3, r2
    mul r1, r2
    cmp r1, #0
    ble loc_8110794
    str r0, [r7,#0x2c]
    mov r0, #0x6c 
    mov r1, #0x67 
    mov r2, #0x6c 
    bl sub_8109630
    cmp r0, #0
    bne loc_8110794
    mov r0, #1
    str r0, [r5,#0x6c]
    bl sub_8110D18
    ldr r0, [r7,#0x2c]
    ldrb r1, [r0,#0x12]
    ldrb r2, [r0,#0x13]
    mov r0, #0x80
    strb r1, [r5,r0]
    mov r0, #0x81
    strb r2, [r5,r0]
    mov r0, #8
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    bl loc_801171C
    b locret_811079E
loc_8110794:
    ldrh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
locret_811079E:
    pop {pc}
.endfunc // sub_811072C

loc_81107A0:
    push {lr}
    ldr r1, off_81107B0 // =off_81107B4 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_81107B0:    .word off_81107B4
off_81107B4:    .word sub_81107BC+1
    .word sub_81107F2+1
.func
.thumb_func
sub_81107BC:
    push {r4,r6,r7,lr}
    ldrb r0, [r7,#0x16]
    ldrb r1, [r7,#0x17]
    ldr r2, [r7,#0x34]
    ldr r3, [r7,#0x38]
    bl object_checkPanelParameters
.endfunc // sub_81107BC

    cmp r0, #0
    beq loc_81107E8
    ldrb r0, [r7,#0x16]
    strb r0, [r5,#0x14]
    ldrb r1, [r7,#0x17]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #4
    strh r0, [r7]
    bl sub_8110840
    bl sub_81107F2
    b locret_81107F0
loc_81107E8:
    mov r0, #0
    strb r0, [r7,#0x1a]
    bl loc_801171C
locret_81107F0:
    pop {r4,r6,r7,pc}
.func
.thumb_func
sub_81107F2:
    push {lr}
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldrh r0, [r7,#0x10]
    ldrh r1, [r7,#0x12]
    cmp r0, r1
    bne loc_8110814
    bl sub_800E2AC
    bl sub_801A04C
loc_8110814:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_811083E
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C // () -> void
    bl sub_801A066
    mov r0, #1
    strb r0, [r7,#0x1a]
    ldrh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
locret_811083E:
    pop {pc}
.endfunc // sub_81107F2

.func
.thumb_func
sub_8110840:
    push {lr}
    ldrb r0, [r7,#0x17]
    ldrb r1, [r5,#0x13]
    sub r0, r0, r1
    ldr r1, [r7,#0x30]
    mul r1, r0
    beq loc_811085A
    str r1, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x40]
    mov r0, #0x18
    lsl r0, r0, #0x10
    b loc_811087E
loc_811085A:
    ldrb r0, [r7,#0x16]
    ldrb r1, [r5,#0x12]
    sub r0, r0, r1
    ldr r1, [r7,#0x30]
    mul r0, r1
    bne loc_8110874
    mov r0, #0
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    mov r0, #1
    strh r0, [r7,#0x10]
    strh r0, [r7,#0x12]
    b locret_8110888
loc_8110874:
    str r0, [r5,#0x40]
    mov r0, #0
    str r0, [r5,#0x44]
    mov r0, #0x28 
    lsl r0, r0, #0x10
loc_811087E:
    ldr r1, [r7,#0x30]
    svc 6
    strh r0, [r7,#0x10]
    lsr r0, r0, #1
    strh r0, [r7,#0x12]
locret_8110888:
    pop {pc}
.endfunc // sub_8110840

loc_811088A:
    push {r4-r7,lr}
    ldr r0, [r5,#0x54]
    ldr r0, [r0,#0x70]
    tst r0, r0
    beq loc_811089E
    ldr r1, dword_81108E0 // =0xC000000 
    tst r0, r1
    beq loc_811089E
    bl sub_801A074 // () -> void
loc_811089E:
    ldr r1, off_81108B0 // =off_81108B4 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    bl sub_8110D7C
    pop {r4-r7,pc}
    .byte 0, 0
off_81108B0:    .word off_81108B4
off_81108B4:    .word sub_81108E4+1
    .word sub_811095E+1
    .word sub_81109F6+1
    .word sub_8110A8E+1
    .word sub_8110AE4+1
    .word sub_8110B16+1
    .word sub_8110B38+1
    .word sub_8110B50+1
    .word sub_8110B70+1
    .word sub_8110C26+1
    .word sub_81097B4+1
dword_81108E0:    .word 0xC000000
.func
.thumb_func
sub_81108E4:
    push {r4-r7,lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_8110900
    ldrh r0, [r7,#0x34]
    strh r0, [r7,#0x10]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x82
    strb r0, [r5,r2]
    mov r2, #0x83
    strb r1, [r5,r2]
    mov r0, #1
    strb r0, [r7,#1]
loc_8110900:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bne locret_811095C
    bl object_getFlipDirection_800E2CA // () -> int
    add r2, r0, #0
    ldr r0, [r7,#0x2c]
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    sub r0, r0, r2
    bl object_isValidPanel
    tst r0, r0
    beq loc_811092E
    bl object_getFlipDirection_800E2CA // () -> int
    ldr r1, [r7,#0x2c]
    ldrb r2, [r1,#0x12]
    ldrb r3, [r1,#0x13]
    sub r0, r2, r0
    add r1, r3, #0
    b loc_811093E
loc_811092E:
    bl object_getFlipDirection_800E2CA // () -> int
    mov r1, #0x80
    ldrb r1, [r5,r1]
    mov r2, #0x81
    ldrb r2, [r5,r2]
    sub r0, r1, r0
    add r1, r2, #0
loc_811093E:
    mov r2, #0x7a 
    strb r0, [r5,r2]
    mov r2, #0x7b 
    strb r1, [r5,r2]
    bl sub_8110CC6
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl object_setFlag // (int a1) -> void
    mov r0, #4
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_811095C:
    pop {r4-r7,pc}
.endfunc // sub_81108E4

.func
.thumb_func
sub_811095E:
    push {r4-r7,lr}
    mov r1, #0x7c 
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    tst r0, r0
    blt loc_811097E
    bl sub_8110D34
    tst r0, r0
    bne loc_81109A6
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    b loc_811099C
loc_811097E:
    mov r2, #0x7a 
    ldrb r0, [r5,r2]
    ldrb r1, [r5,#0x13]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    mov r0, #8
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
loc_811099C:
    bl sub_800E2AC
    bl sub_801A04C
    b locret_81109F4
loc_81109A6:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_81110C8
    ldrh r0, [r7,#0x32]
    strh r0, [r7,#0x10]
    mov r2, #0x78 
    ldrb r0, [r5,r2]
    mov r2, #0x79 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_811109C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    mov r0, #0
    str r0, [r5,#0x6c]
    mov r0, #1
    bl sub_801A07C
    mov r0, #0x28 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_81109F4:
    pop {r4-r7,pc}
.endfunc // sub_811095E

.func
.thumb_func
sub_81109F6:
    push {r4-r7,lr}
    mov r1, #0x7e 
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    tst r0, r0
    blt loc_8110A16
    bl sub_8110D58
    tst r0, r0
    bne loc_8110A3E
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    b loc_8110A34
loc_8110A16:
    ldrb r0, [r5,#0x12]
    mov r2, #0x7b 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    mov r0, #0xc
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
loc_8110A34:
    bl sub_800E2AC
    bl sub_801A04C
    b locret_8110A8C
loc_8110A3E:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_81110C8
    ldrh r0, [r7,#0x32]
    strh r0, [r7,#0x10]
    mov r2, #0x78 
    ldrb r0, [r5,r2]
    mov r2, #0x79 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_811109C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    mov r0, #0
    str r0, [r5,#0x6c]
    mov r0, #1
    bl sub_801A07C
    mov r0, #0x28 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_8110A8C:
    pop {r4-r7,pc}
.endfunc // sub_81109F6

.func
.thumb_func
sub_8110A8E:
    push {r4-r7,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8110A9E
    ldrh r0, [r7,#0x36]
    strh r0, [r7,#0x10]
    mov r0, #1
    strb r0, [r7,#1]
loc_8110A9E:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bne loc_8110AC4
    mov r0, #0x10
    bl object_setCounterTime
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #1
    bl object_clearFlag // (int bitfield) -> void
    ldrh r0, [r7,#0xe]
    strh r0, [r7,#0x10]
    mov r0, #0x10
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
    b locret_8110AE2
loc_8110AC4:
    ldrh r0, [r7,#0x10]
    mov r1, #4
    tst r0, r1
    bne locret_8110AE2
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldrb r3, [r5,#0x16]
    ldrb r2, [r5,#0x17]
    eor r3, r2
    mov r2, #0x15
    bl sub_8109660
locret_8110AE2:
    pop {r4-r7,pc}
.endfunc // sub_8110A8E

.func
.thumb_func
sub_8110AE4:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8110B14
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x14
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    mov r2, #3
    mov r3, #0
    ldr r4, [r7,#0xc]
    ldr r6, [r7,#8]
    ldr r7, [r7,#0x28]
    bl sub_80D6B78
locret_8110B14:
    pop {r4-r7,pc}
.endfunc // sub_8110AE4

.func
.thumb_func
sub_8110B16:
    push {r4-r7,lr}
    ldrb r0, [r7,#1]
    tst r0, r0
    bne loc_8110B22
    mov r0, #1
    strb r0, [r7,#1]
loc_8110B22:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bne locret_8110B36
    ldrh r0, [r7,#0x30]
    strh r0, [r7,#0x10]
    mov r0, #0x18
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_8110B36:
    pop {r4-r7,pc}
.endfunc // sub_8110B16

.func
.thumb_func
sub_8110B38:
    push {r4-r7,lr}
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bne locret_8110B4E
    mov r0, #6
    strb r0, [r5,#0x10]
    mov r0, #0x1c
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_8110B4E:
    pop {r4-r7,pc}
.endfunc // sub_8110B38

.func
.thumb_func
sub_8110B50:
    push {r4-r7,lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8110B6E
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #1
    bl object_setFlag // (int a1) -> void
    mov r0, #0x20 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_8110B6E:
    pop {r4-r7,pc}
.endfunc // sub_8110B50

.func
.thumb_func
sub_8110B70:
    push {r4-r7,lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_8110B98
    mov r0, #0
    str r0, [r5,#0x6c]
    mov r0, #0x78 
    ldrb r1, [r5,r0]
    mov r0, #0x7a 
    strb r1, [r5,r0]
    mov r0, #0x79 
    ldrb r1, [r5,r0]
    mov r0, #0x7b 
    strb r1, [r5,r0]
    bl sub_8110CC6
    ldrh r0, [r7,#0x32]
    strh r0, [r7,#0x10]
    mov r0, #1
    strb r0, [r7,#1]
loc_8110B98:
    mov r1, #0x7e 
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    tst r0, r0
    blt loc_8110BB6
    bl sub_8110D58
    tst r0, r0
    bne loc_8110BDE
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x38]
    b loc_8110BD4
loc_8110BB6:
    ldrb r0, [r5,#0x12]
    mov r2, #0x7b 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    mov r0, #0x24 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
loc_8110BD4:
    bl sub_800E2AC
    bl sub_801A04C
    b locret_8110C24
loc_8110BDE:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_81110C8
    mov r2, #0x78 
    ldrb r0, [r5,r2]
    mov r2, #0x79 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_811109C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    mov r0, #1
    bl sub_801A07C
    mov r0, #0x28 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_8110C24:
    pop {r4-r7,pc}
.endfunc // sub_8110B70

.func
.thumb_func
sub_8110C26:
    push {r4-r7,lr}
    mov r1, #0x7c 
    ldrh r0, [r5,r1]
    sub r0, #1
    strh r0, [r5,r1]
    tst r0, r0
    blt loc_8110C46
    bl sub_8110D34
    tst r0, r0
    bne loc_8110C7E
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    b loc_8110C74
loc_8110C46:
    mov r2, #0x7a 
    ldrb r0, [r5,r2]
    mov r2, #0x7b 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
.endfunc // sub_8110C26

    mov r0, #1
    bl sub_801A07C
    mov r0, #0x28 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
loc_8110C74:
    bl sub_800E2AC
    bl sub_801A04C
    b locret_8110CC4
loc_8110C7E:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_81110C8
    mov r2, #0x78 
    ldrb r0, [r5,r2]
    mov r2, #0x79 
    ldrb r1, [r5,r2]
    strb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    strb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_811109C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    mov r0, #1
    bl sub_801A07C
    mov r0, #0x28 
    strh r0, [r7]
    mov r0, #0
    strb r0, [r7,#1]
locret_8110CC4:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8110CC6:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x7c 
    strh r0, [r5,r1]
    mov r1, #0x7e 
    strh r0, [r5,r1]
    ldr r0, off_8110DA4 // =dword_8110E0C 
    ldrb r1, [r4,#0x16]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    ldrb r0, [r5,#0x12]
    mov r1, #0x7a 
    ldrb r1, [r5,r1]
    sub r0, r1, r0
    ldr r1, [r5,#0x40]
    cmp r0, #0
    bge loc_8110CEE
    neg r1, r1
loc_8110CEE:
    str r1, [r5,#0x40]
    ldr r2, dword_8110DA8 // =0x280000 
    mul r0, r2
    svc 6
    mov r2, #0x7c 
    strh r0, [r5,r2]
    ldrb r0, [r5,#0x13]
    mov r1, #0x7b 
    ldrb r1, [r5,r1]
    sub r0, r1, r0
    ldr r1, [r5,#0x44]
    cmp r0, #0
    bge loc_8110D0A
    neg r1, r1
loc_8110D0A:
    str r1, [r5,#0x44]
    ldr r2, dword_8110DAC // =0x180000 
    mul r0, r2
    svc 6
    mov r2, #0x7e 
    strh r0, [r5,r2]
    pop {r4-r7,pc}
.endfunc // sub_8110CC6

.func
.thumb_func
sub_8110D18:
    push {r4-r7,lr}
    ldrh r0, [r5,#0x28]
    mov r1, #5
    ldrb r2, [r5,#0x16]
    ldrb r3, [r5,#0x17]
    bl sub_8018810
    lsl r3, r1, #0x10
    lsl r1, r0, #0x10
    mov r2, #0
    mov r4, #0
    bl sub_80E8124
    pop {r4-r7,pc}
.endfunc // sub_8110D18

.func
.thumb_func
sub_8110D34:
    push {r4-r7,lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    ldr r1, [r5,#0x38]
    mov r2, #0
    ldr r2, [r5,#0x3c]
    bl sub_800E258
    bl object_getPanelParameters
.endfunc // sub_8110D34

    ldr r1, dword_8110DB0 // =0x3800000 
    and r0, r1
    bne loc_8110D54
    mov r0, #0
    b locret_8110D56
loc_8110D54:
    mov r0, #1
locret_8110D56:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8110D58:
    push {r4-r7,lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x44]
    add r1, r1, r2
    mov r2, #0
    ldr r2, [r5,#0x3c]
    bl sub_800E258
    bl object_getPanelParameters
.endfunc // sub_8110D58

    ldr r1, dword_8110DB0 // =0x3800000 
    and r0, r1
    bne loc_8110D78
    mov r0, #0
    b locret_8110D7A
loc_8110D78:
    mov r0, #1
locret_8110D7A:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8110D7C:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x82
    ldrb r2, [r5,r2]
    mov r3, #0x83
    ldrb r3, [r5,r3]
    cmp r0, r2
    bne loc_8110D94
    cmp r1, r3
    bne loc_8110D94
    b locret_8110DA2
loc_8110D94:
    mov r2, #0x82
    strb r0, [r5,r2]
    mov r2, #0x83
    strb r1, [r5,r2]
    mov r0, #1
    bl sub_801A07C
locret_8110DA2:
    pop {r4-r7,pc}
off_8110DA4:    .word dword_8110E0C
dword_8110DA8:    .word 0x280000
dword_8110DAC:    .word 0x180000
dword_8110DB0:    .word 0x3800000
    .word 0, 0
    .byte 0, 0, 0, 0
    .word sub_8016380+1
    .word sub_80165B8+1
    .word sub_80165C2+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_8110E90+1
    .word sub_81097BA+1
    .word loc_8110714+1
    .word loc_811088A+1
    .word loc_81107A0+1
dword_8110DF4:    .word 0xC000, 0x20000, 0x28000, 0x30000, 0x20000, 0x30000
dword_8110E0C:    .word 0x70000, 0xA0000, 0xA0000, 0xA0000, 0xA0000, 0xA0000
    .word 0x20031000, 0x41033003, 0x12001100, 0x96825028, 0x9664, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
dword_8110E50:    .word 0x15181B1E, 0x1218, 0xC12181E, 0xC12, 0x2A30363C, 0x2430
    .word 0x15181B1E, 0x1218, 0x15181B1E, 0xB5001218, 0xF7092001, 0x2040F96A
    .word 0xF967F709, 0xFB55F6F0, 0x40082103, 0xBD0066A8
.endfunc // sub_8110D7C

loc_8110E90:
    push {r4,r6,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_81110F4 // =0xA000 
    tst r0, r1
    bne locret_8110EA6
    ldr r1, off_8110EA8 // =off_8110EAC 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_8110EA6:
    pop {r4,r6,pc}
off_8110EA8:    .word off_8110EAC
off_8110EAC:    .word loc_8110EB8+1
    .word sub_8110EF8+1
    .word sub_8110F36+1
loc_8110EB8:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x6c]
    mov r0, #1
    bl object_setFlag // (int a1) -> void
    ldr r1, off_8110ED0 // =off_8110ED4 
    ldrb r0, [r6,#2]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8110ED0:    .word off_8110ED4
off_8110ED4:    .word sub_8110ED8+1
.func
.thumb_func
sub_8110ED8:
    push {lr}
    bl sub_8110F8C
    tst r0, r0
    beq loc_8110EEC
    bl sub_8111030
    mov r0, #4
    strb r0, [r6]
    b locret_8110EF6
loc_8110EEC:
    mov r0, #0x50 
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
locret_8110EF6:
    pop {pc}
.endfunc // sub_8110ED8

.func
.thumb_func
sub_8110EF8:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x6c]
    mov r0, #1
    bl object_setFlag // (int a1) -> void
    mov r0, #0x6c 
    mov r1, #0x67 
    mov r2, #0x6c 
    bl sub_8109630
    cmp r0, #0
    bne loc_8110F2C
    ldrb r1, [r4,#0x16]
    ldr r0, off_81110F8 // =dword_8110E0C+52 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    ldr r0, off_81110FC // =dword_8110E0C+60 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    mov r0, #0x74 
    add r0, r0, r5
    str r0, [r7,#0x2c]
    mov r0, #0xa
    bl sub_8011680
loc_8110F2C:
    mov r0, #0
    strb r0, [r6]
    mov r0, #0
    strh r0, [r6,#2]
    pop {pc}
.endfunc // sub_8110EF8

.func
.thumb_func
sub_8110F36:
    push {lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x78 
    strb r0, [r5,r2]
    mov r2, #0x79 
    strb r1, [r5,r2]
    bl sub_801BB1C
.endfunc // sub_8110F36

    ldrb r1, [r4,#0x16]
    ldr r0, off_8111100 // =dword_8110E50+16 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0xe]
    ldr r0, off_8111104 // =dword_8110E50+24 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x30]
    ldr r0, off_8111108 // =dword_8110E50+32 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x32]
    ldr r0, off_811110C // =dword_8110E50 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x34]
    ldr r0, off_8111110 // =dword_8110E50+8 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x36]
    ldr r0, off_8111114 // =dword_8110E0C+36 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    ldr r0, off_8111118 // =dword_8110E0C+24 
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    strh r0, [r7,#0xc]
    mov r0, #0x70 
    add r0, r0, r5
    str r0, [r7,#0x28]
    mov r0, #0xb
    bl sub_8011680
    mov r0, #0
    strb r0, [r6]
    pop {pc}
.func
.thumb_func
sub_8110F8C:
    push {r4-r7,lr}
    bl sub_8110FA2
    tst r0, r0
    bne locret_8110FA0
    bl sub_8110FF4
    tst r0, r0
    bne locret_8110FA0
    b locret_8110FA0
locret_8110FA0:
    pop {r4-r7,pc}
.endfunc // sub_8110F8C

.func
.thumb_func
sub_8110FA2:
    push {r4-r7,lr}
    ldr r0, [r5,#0x68]
    ldr r1, off_8110FC0 // =off_8110FC4 
    lsl r0, r0, #2
    ldr r4, [r1,r0]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_811111C // =dword_8111020 
    bl sub_81096FA
    bl sub_8015D80
    pop {r4-r7,pc}
    .byte 0, 0, 0, 0
off_8110FC0:    .word off_8110FC4
off_8110FC4:    .word dword_8110FD4
    .word dword_8110FDC
    .word dword_8110FE4
    .word dword_8110FEC
dword_8110FD4:    .word 0x1FF00, 0x7F00FF
dword_8110FDC:    .word 0x10100, 0x7F00FF
dword_8110FE4:    .word 0x100FF00, 0x7F00FF
dword_8110FEC:    .word 0x100FF00, 0x7F0001
.endfunc // sub_8110FA2

.func
.thumb_func
sub_8110FF4:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_8111120 // =dword_8111020 
    bl sub_81096FA
    ldr r4, off_8111010 // =dword_8111014 
    bl sub_8015D80
    pop {r4-r7,pc}
    .word 0
    .byte 0, 0, 0, 0
off_8111010:    .word dword_8111014
dword_8111014:    .word 0x100FF00, 0x100FF, 0x7F
dword_8111020:    .word 0x0
    .word 0xF8800A0, 0x20, 0xF880080
.endfunc // sub_8110FF4

.func
.thumb_func
sub_8111030:
    push {lr}
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    mov r0, #1
    strb r0, [r7,#3]
    ldr r1, off_8111124 // =dword_8110DF4 
    ldrb r0, [r4,#0x16]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r7,#0x30]
    ldr r1, off_8111128 // =dword_8110E0C+44 
    ldrb r0, [r4,#0x16]
    ldrb r0, [r1,r0]
    strh r0, [r7,#0x18]
    mov r2, #0
    ldr r3, dword_811112C // =0xF880080 
    str r2, [r7,#0x34]
    str r3, [r7,#0x38]
    mov r0, #0x74 
    add r0, r0, r5
    str r0, [r7,#0x2c]
    bl object_getFlipDirection_800E2CA // () -> int
    add r2, r0, #0
    mov r3, #0
    ldrb r0, [r5,#0x12]
    ldrb r1, [r7,#0x16]
    cmp r0, r1
    beq loc_811107A
    sub r0, r1, r0
    mul r0, r2
    cmp r0, #0
    bgt loc_8111076
    mov r3, #2
    b loc_811108E
loc_8111076:
    mov r3, #3
    b loc_811108E
loc_811107A:
    ldrb r0, [r5,#0x13]
    ldrb r1, [r7,#0x17]
    cmp r0, r1
    beq loc_811108E
    sub r0, r1, r0
    cmp r0, #0
    bgt loc_811108C
    mov r3, #0
    b loc_811108E
loc_811108C:
    mov r3, #1
loc_811108E:
    str r3, [r5,#0x68]
    mov r0, #0xc
    bl sub_8011680
    bl loc_81107A0
    pop {pc}
.endfunc // sub_8111030

.func
.thumb_func
sub_811109C:
    push {r4-r7,lr}
    push {r0,r1}
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    eor r0, r1
    lsl r0, r0, #8
    add r2, r0, #0
    pop {r0,r1}
    push {r2}
    bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    pop {r0}
    ldr r4, dword_81110C4 // =0x15 
    orr r4, r0
    bl sub_80E05F6
    pop {r4-r7,pc}
dword_81110C4:    .word 0x15
.endfunc // sub_811109C

.func
.thumb_func
sub_81110C8:
    push {r4-r7,lr}
    push {r0,r1}
    ldrb r0, [r5,#0x16]
    ldrb r1, [r5,#0x17]
    eor r0, r1
    lsl r0, r0, #8
    add r2, r0, #0
    pop {r0,r1}
    push {r2}
    bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    pop {r0}
    ldr r4, dword_81110F0 // =0x14 
    orr r4, r0
    bl sub_80E05F6
    pop {r4-r7,pc}
dword_81110F0:    .word 0x14
dword_81110F4:    .word 0xA000
off_81110F8:    .word dword_8110E0C+0x34
off_81110FC:    .word dword_8110E0C+0x3C
off_8111100:    .word dword_8110E50+0x10
off_8111104:    .word dword_8110E50+0x18
off_8111108:    .word dword_8110E50+0x20
off_811110C:    .word dword_8110E50
off_8111110:    .word dword_8110E50+8
off_8111114:    .word dword_8110E0C+0x24
off_8111118:    .word dword_8110E0C+0x18
off_811111C:    .word dword_8111020
off_8111120:    .word dword_8111020
off_8111124:    .word dword_8110DF4
off_8111128:    .word dword_8110E0C+0x2C
dword_811112C:    .word 0xF880080
dword_8111130:    .word 0x11304, 0x1000013, 0x8000064, 0x96000A, 0x140801
    .word 0x80200C8, 0xFA001E, 0x280803, 0x80400AA, 0x10E001E
    .word 0x280805
dword_811115C:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B5F0, 0x58097838
    .word 0x470846FE, 0xBDF0, 0x8111230, 0x811123D, 0x811128D
    .word 0x81097B5, 0x8A38B510, 0x82383801, 0x2018D10E, 0xFBC8F6FD
    .word 0x5C282069, 0x5C08490C, 0x200B7428, 0x20048238, 0x20008038
    .word 0xE00D7078, 0x21048A38, 0xD1094208, 0x9017B38, 0xF400740
    .word 0x7DEA7DAB, 0x22014053, 0xF9F0F7F8, 0xBD10, 0x8111288
    .word 0x201, 0x7878B550, 0xD10A4200, 0x38018A38, 0xD1068238
    .word 0xF81EF000, 0xF6EF20B2, 0x2001F993, 0xF6F17078, 0x2180FD9E
    .word 0xD00D4208, 0x5C282069, 0x5C084906, 0x20007428, 0x20406628
    .word 0xFF4AF708, 0x82388B38, 0x80382008, 0xBD50, 0x81112D8
    .word 0x300, 0x8938B5F0, 0x4098979, 0x1C064308, 0x1C017B38
    .word 0x7400901, 0x4000F40, 0x4A0B0609, 0x5CD47DA3, 0x2127B7A
    .word 0x430C4304, 0xF6FC4314, 0x2110FFE0, 0x4004348, 0x18096B69
    .word 0x4122220, 0x189B6BEB, 0xF7C86BAA, 0xBDF0FCC1, 0x8111328
    .word 0x6050403, 0x807, 0x8016381, 0x80165B9, 0x80165C3
    .word 0x80166AF, 0x8016B03, 0x8016CE9, 0x8016B37, 0x8016B73
    .word 0x8111385, 0x81097B5, 0x811121D, 0x8109975, 0x8109805
    .word 0x60A0E12, 0xA0C, 0x1010101, 0x101, 0x6450321E
    .word 0x7832, 0xA0A0A0A, 0xA0A, 0x2169B550, 0x42005C68
    .word 0x2168D00B, 0x42005C68, 0x2001D107, 0x20785468, 0x20098238
    .word 0xF96EF700, 0x4903E004, 0x58097830, 0x470846FE, 0xBD50
    .word 0x81113B8, 0x81113C5, 0x81113DF, 0x8111439, 0x2067B500
    .word 0x29045C29, 0x2100DB04, 0x20045429, 0xE0017030, 0x70302008
    .word 0xB500BD00, 0xF8FFF6FD, 0x2060D020, 0x2272216D, 0xF920F7F8
    .word 0xD1192800, 0x20187DA1, 0x480D8338, 0x81385C40, 0x5C40480C
    .word 0x200C8178, 0xF0008238, 0x4200F962, 0x109D00A, 0x73384308
    .word 0x66282001, 0xF7082040, 0x200AFE98, 0xF92CF700, 0x70302000
    .word 0xBD00, 0x8111374, 0x811137C, 0x2067B500, 0x31015C29
    .word 0x29045429, 0xF000D005, 0x4200F83F, 0x481AD031, 0xF000E004
    .word 0x4200F90F, 0x4818D02B, 0x7DA862B8, 0x40482101, 0xFFC8F6FE
    .word 0x481562F8, 0x5C407DA1, 0x20038338, 0x201470F8, 0x20157338
    .word 0x20687378, 0x42005C28, 0x2003D004, 0x200373B8, 0xE00373F8
    .word 0x73B82000, 0x73F82004, 0x7DA1480A, 0x63385C40, 0x200B6378
    .word 0xF8ECF700, 0xFA64F7F8, 0x70302000, 0x2000E001, 0xBD007030
    .word 0x81114C9, 0x8111675, 0x811136C, 0x8111364, 0xF000B5F0
    .word 0x4200F810, 0xF000D106, 0x4200F82B, 0xF000D102, 0xE005F8B9
    .word 0xF97BF000, 0x54A82265, 0x54A92266, 0xB5F0BDF0, 0x2164480B
    .word 0x495C69, 0x31015642, 0x7CA85643, 0x18807CE9, 0x4BF318C9
    .word 0xF8F7F7F8, 0x7DAE2401, 0xFC99F704, 0xBDF0, 0x0
    .word 0x0
    .word dword_8111524
dword_8111524:    .word 0x1FF00, 0xFF0100, 0x7CE8B5F0, 0xD0052801, 0xD01F2802
    .word 0xD0532803, 0xE06C2000, 0x30017CE8, 0xF8E9F7F8, 0xD10B4200
    .word 0x7CE97CA8, 0x4BE13101, 0xF8D1F7F8, 0x7DAE2401, 0xFC73F704
    .word 0xD15A4200, 0x7CE97CA8, 0xF7F84BDC, 0x4C2CF8C6, 0xF7046864
    .word 0xE050FC05, 0x38017CE8, 0xF8CDF7F8, 0x7CE8D10E, 0xF7F83001
    .word 0xD115F8C8, 0x7CE97CA8, 0xF7F84BD3, 0x4C22F8B2, 0xF7046824
    .word 0xE03CFBF1, 0x7CE97CA8, 0x4BCF3101, 0xF8A7F7F8, 0x7DAE2401
    .word 0xFC49F704, 0xE030D00C, 0x7CE97CA8, 0x4BCA3901, 0xF89BF7F8
    .word 0x7DAE2401, 0xFC3DF704, 0xE024D000, 0x7CE97CA8, 0xF7F84BC5
    .word 0x4C11F890, 0xF7046864, 0xE01AFBCF, 0x38017CE8, 0xF897F7F8
    .word 0xD10B4200, 0x7CE97CA8, 0x4BBE3901, 0xF87FF7F8, 0x7DAE2401
    .word 0xFC21F704, 0xD1084200, 0x7CE97CA8, 0xF7F84BB9, 0x4C03F874
    .word 0xF7046864, 0xBDF0FBB3, 0x0
    .word off_8111624
off_8111624:    .word dword_8111630
    .word dword_8111640
    .byte 0, 0, 0, 0
dword_8111630:    .word 0x100FF00, 0x7F, 0x0, 0x0
dword_8111640:    .word 0x100FF, 0x7F, 0x0, 0x0
.endfunc // sub_81110C8

    push {r4-r7,lr}
    bl sub_8015C48
    tst r0, r0
    beq locret_8111672
    mov r2, #0x65 
    strb r0, [r5,r2]
    mov r2, #0x66 
    strb r1, [r5,r2]
    push {r0,r1}
    bl change_20013F0_800151C // () -> int
    mov r1, #3
    and r0, r1
    mov r1, #0x64 
    strb r0, [r5,r1]
    pop {r0,r1}
locret_8111672:
    pop {r4-r7,pc}
    push {r4-r7,lr}
    push {r5}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    push {r0}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
    mov r1, #2
    ldr r3, off_81118F8 // =dword_8111740 
    bl sub_81096FA
    mov r4, #0xf
    ldrb r6, [r5,#0x16]
    pop {r5}
    bl sub_8111750
    pop {r5}
    tst r0, r0
    beq loc_81116C4
    mov r2, #0x65 
    strb r0, [r5,r2]
    mov r2, #0x66 
    strb r1, [r5,r2]
    push {r0,r1}
    bl change_20013F0_800151C // () -> int
    mov r1, #3
    and r0, r1
    mov r1, #0x64 
    strb r0, [r5,r1]
    pop {r0,r1}
loc_81116C4:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    pop {r0,r1}
    pop {r4-r7,pc}
    push {r4-r7,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_81118FC // =0xA000 
    tst r0, r1
    beq loc_81116E4
    bl sub_8111726
    b locret_81116F2
loc_81116E4:
    ldr r0, off_8111700 // =off_8111704 
    mov r1, #0x69 
    ldrb r1, [r5,r1]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_81116F2:
    pop {r4-r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
off_8111700:    .word off_8111704
off_8111704:    .word sub_811170C+1
    .word sub_8111726+1
.func
.thumb_func
sub_811170C:
    push {r4-r7,lr}
    bl object_getFlipDirection_800E2CA // () -> int
    mov r1, #3
    mul r1, r0
    ldrb r0, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    tst r0, r0
    beq locret_8111724
    mov r2, #0
    strb r2, [r7,#0xd]
locret_8111724:
    pop {r4-r7,pc}
.endfunc // sub_811170C

.func
.thumb_func
sub_8111726:
    push {r4-r7,lr}
    ldr r3, off_8111900 // =dword_8111740 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_8111726

    tst r0, r0
    beq locret_811173A
    mov r2, #1
    strb r2, [r7,#0xd]
locret_811173A:
    pop {r4-r7,pc}
    .byte 0, 0, 0, 0
dword_8111740:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
.func
.thumb_func
sub_8111750:
    push {r4-r7,lr}
    ldr r7, off_8111760 // =off_8019B78 
    lsl r4, r4, #2
    ldr r4, [r7,r4]
    bl sub_8111764
    pop {r4-r7,pc}
    .byte 0, 0
off_8111760:    .word off_8019B78
.endfunc // sub_8111750

.func
.thumb_func
sub_8111764:
    push {r4-r7,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    add r0, r6, #0
    bl sub_800E2C2
    str r0, [sp,#0x2c]
    mov r6, #0
loc_811177A:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_81117BC
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x2c]
    mul r0, r2
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    str r0, [sp,#0x30]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_81117B8
    ldr r0, [sp,#0x34]
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_81117B8
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    strb r0, [r1,r6]
    add r6, #1
loc_81117B8:
    add r4, #2
    b loc_811177A
loc_81117BC:
    add r2, r6, #0
    add r0, r6, #0
    beq loc_81117D6
    bl sub_8001532
    add r1, r6, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r2, r6, #0
loc_81117D6:
    add sp, sp, #0x38
    pop {r4-r7,pc}
.endfunc // sub_8111764

    push {r4-r7,lr}
    push {r0,r1}
    mov r3, #0x65 
    ldrb r2, [r5,r3]
    mov r3, #0x66 
    ldrb r3, [r5,r3]
    sub r0, r0, r2
    sub r1, r1, r3
    mov r2, #0x64 
    cmp r0, #0
    beq loc_8111800
    cmp r0, #1
    beq loc_81117FA
    mov r0, #3
    strb r0, [r5,r2]
    b loc_8111812
loc_81117FA:
    mov r0, #1
    strb r0, [r5,r2]
    b loc_8111812
loc_8111800:
    cmp r1, #0
    beq loc_8111812
    cmp r1, #1
    beq loc_811180E
    mov r0, #0
    strb r0, [r5,r2]
    b loc_8111812
loc_811180E:
    mov r0, #2
    strb r0, [r5,r2]
loc_8111812:
    pop {r0,r1}
    pop {r4-r7,pc}
    push {r4,lr}
    mov r0, #0
    str r0, [r5,#0x60]
    bl change_20013F0_800151C // () -> int
    mov r1, #3
    and r0, r1
    mov r1, #0x64 
    strb r0, [r5,r1]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x65 
    strb r0, [r5,r2]
    mov r2, #0x66 
    strb r1, [r5,r2]
    mov r0, #0x67 
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #0
    mov r1, #0x68 
    strb r0, [r5,r1]
    mov r1, #0x69 
    strb r0, [r5,r1]
    pop {r4,pc}
.func
.thumb_func
sub_8111846:
    push {r4,lr}
    ldrh r0, [r5,#0x24]
    tst r0, r0
    beq locret_81118CC
    ldr r0, [r5,#0x54]
    ldr r0, [r0,#0x3c]
    ldr r1, dword_8111904 // =0x80000000 
    tst r0, r1
    bne locret_81118CC
    ldr r0, [r5,#0x54]
    ldr r1, [r0,#0x70]
    tst r1, r1
    beq locret_81118CC
    ldr r2, dword_81118D0 // =0xA00 
    tst r1, r2
    beq locret_81118CC
    mov r2, #0x69 
    ldrb r1, [r5,r2]
    tst r1, r1
    bne locret_81118CC
    ldrb r1, [r0,#0xf]
    mov r2, #0x14
    tst r1, r2
    bne loc_811187A
    mov r1, #0
    b loc_811187C
loc_811187A:
    mov r1, #1
loc_811187C:
    mov r2, #0
    bl sub_80BCB12
    mov r0, #0
    str r0, [r5,#0x60]
    mov r0, #0xc
    bl sub_801A176
    mov r0, #0
    strb r0, [r5,#0x1f]
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldr r0, dword_8111908 // =0x501040 
    bl object_clearFlag // (int bitfield) -> void
    bl loc_801171C
    ldr r0, [r5,#0x5c]
    cmp r0, #0
    beq loc_81118C2
    mov r0, #0
    str r0, [r5,#0x5c]
    ldr r0, [r5,#0x5c]
    tst r0, r0
    bne loc_81118C2
    ldr r0, [r5,#8]
    str r0, [r5,#0x5c]
loc_81118C2:
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #1
    mov r1, #0x69 
    strb r0, [r5,r1]
locret_81118CC:
    pop {r4,pc}
    .byte 0, 0
dword_81118D0:    .word 0xA00
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
    .word dword_8111740
off_81118F8:    .word dword_8111740
dword_81118FC:    .word 0xA000
off_8111900:    .word dword_8111740
dword_8111904:    .word 0x80000000
dword_8111908:    .word 0x501040
dword_811190C:    .word 0x31404, 0x1000014, 0x800408C, 0x40B40014, 0x280801
    .word 0x80240F0, 0x410E003C, 0x500803, 0x80440B4, 0x410E003C
    .word 0x640805
dword_8111938:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFF34A3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0x34A334A3, 0x34A334A3, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x34A334A3
    .word 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x0, 0x0
.endfunc // sub_8111846

loc_8111A00:
    push {lr}
    ldr r1, off_8111A10 // =off_8111A14 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8111A10:    .word off_8111A14
off_8111A14:    .word sub_8111A28+1
    .word sub_8111A72+1
    .word sub_8111A8C+1
    .word sub_8111AEC+1
    .word sub_81097DC+1
.func
.thumb_func
sub_8111A28:
    push {r4,r6,r7,lr}
    bl object_canMove
    beq loc_8111A68
    ldrb r0, [r7,#0x16]
    ldrb r1, [r7,#0x17]
    ldr r2, [r7,#0x34]
    ldr r3, [r7,#0x38]
    bl object_checkPanelParameters
    cmp r0, #0
    beq loc_8111A68
    ldrb r0, [r7,#0x16]
    strb r0, [r5,#0x14]
    ldrb r1, [r7,#0x17]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #0x40 
    bl object_setFlag // (int a1) -> void
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strb r0, [r7,#0xc]
    mov r0, #4
    strh r0, [r7]
    bl sub_8111B06
    bl sub_8111A72
    b locret_8111A70
loc_8111A68:
    mov r0, #0
    strb r0, [r7,#0x1a]
    bl sub_8011714
locret_8111A70:
    pop {r4,r6,r7,pc}
.endfunc // sub_8111A28

.func
.thumb_func
sub_8111A72:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8111A8A
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #8
    strh r0, [r7]
    bl sub_8111A8C
locret_8111A8A:
    pop {pc}
.endfunc // sub_8111A72

.func
.thumb_func
sub_8111A8C:
    push {lr}
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x38]
    add r0, r0, r1
    str r0, [r5,#0x38]
    ldrh r0, [r7,#0x10]
    ldrh r1, [r7,#0x12]
    cmp r0, r1
    bne loc_8111AAE
    bl sub_800E2AC
    bl sub_801A04C
loc_8111AAE:
    ldrh r0, [r7,#0x10]
    cmp r0, #4
    bne loc_8111AB8
    mov r0, #3
    strb r0, [r5,#0x10]
loc_8111AB8:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge locret_8111AEA
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
    bl sub_800E29C // () -> void
    bl sub_801A066
    mov r0, #0x40 
    bl object_clearFlag // (int bitfield) -> void
    mov r0, #1
    lsl r0, r0, #0x13
    bl object_setFlag // (int a1) -> void
    mov r0, #1
    strb r0, [r7,#0x1a]
    mov r0, #0xc
    strh r0, [r7]
locret_8111AEA:
    pop {pc}
.endfunc // sub_8111A8C

.func
.thumb_func
sub_8111AEC:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8111B04
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #0x10
    strh r0, [r7]
locret_8111B04:
    pop {pc}
.endfunc // sub_8111AEC

.func
.thumb_func
sub_8111B06:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    mov r1, #0x10
    strh r1, [r7,#0x10]
    lsr r0, r1, #1
    strh r0, [r7,#0x12]
    cmp r1, #0
    beq locret_8111B48
    ldrb r0, [r7,#0x17]
    ldrb r2, [r5,#0x13]
    sub r0, r0, r2
    beq loc_8111B30
    push {r0}
    mov r0, #0x18
    lsl r0, r0, #0x10
    svc 6
    pop {r1}
    mul r0, r1
    str r0, [r5,#0x44]
loc_8111B30:
    ldrb r0, [r7,#0x16]
    ldrb r2, [r5,#0x12]
    sub r0, r0, r2
    beq locret_8111B48
    push {r0}
    mov r0, #0x28 
    lsl r0, r0, #0x10
    mov r1, #0x10
    svc 6
    pop {r1}
    mul r0, r1
    str r0, [r5,#0x40]
locret_8111B48:
    pop {pc}
.endfunc // sub_8111B06

loc_8111B4A:
    push {lr}
    ldr r1, off_8111B58 // =off_8111B5C 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_8111B58:    .word off_8111B5C
off_8111B5C:    .word sub_8111B70+1
    .word sub_8111B88+1
    .word sub_8111BB2+1
    .word sub_8111BC8+1
    .word sub_81097BA+1
.func
.thumb_func
sub_8111B70:
    push {lr}
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r7,#0x12]
    mov r0, #1
    lsl r0, r0, #0x16
    bl object_setFlag // (int a1) -> void
    mov r0, #4
    strh r0, [r7]
    pop {pc}
.endfunc // sub_8111B70

.func
.thumb_func
sub_8111B88:
    push {lr}
    ldrh r0, [r7,#0x12]
    cmp r0, #0x11
    bne loc_8111B96
    mov r0, #0x14
    bl object_setCounterTime
loc_8111B96:
    ldrh r0, [r7,#0x12]
    sub r0, #1
    strh r0, [r7,#0x12]
    bge locret_8111BB0
    ldrb r0, [r7,#3]
    bl sub_8111BDE
    mov r0, #0x81
    add r0, #0xff
    bl sound_play // () -> void
    mov r0, #8
    strh r0, [r7]
locret_8111BB0:
    pop {pc}
.endfunc // sub_8111B88

.func
.thumb_func
sub_8111BB2:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8111BC6
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r7]
locret_8111BC6:
    pop {pc}
.endfunc // sub_8111BB2

.func
.thumb_func
sub_8111BC8:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8111BDC
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0x10
    strh r0, [r7]
locret_8111BDC:
    pop {pc}
.endfunc // sub_8111BC8

.func
.thumb_func
sub_8111BDE:
    push {r4,r6,lr}
    add r4, r0, #0
    mov r6, #0
    mov r0, #0
    strb r0, [r7,#0xc]
loc_8111BE8:
    add r0, r6, #0
    bl loc_8111BFE
    cmp r0, #0
    beq loc_8111BF6
    sub r4, #1
    beq locret_8111BFC
loc_8111BF6:
    add r6, #1
    cmp r6, #5
    blt loc_8111BE8
locret_8111BFC:
    pop {r4,r6,pc}
.endfunc // sub_8111BDE

loc_8111BFE:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x18
    lsl r0, r0, #2
    ldr r1, off_8111C70 // =off_8111C74 
    ldr r6, [r1,r0]
    mov r4, sp
    bl object_getFlag // () -> int
    ldr r1, dword_8111D90 // =0xA000 
    tst r0, r1
    beq loc_8111C1A
    bl sub_8111D28
    b loc_8111C1E
loc_8111C1A:
    mov lr, pc
    bx r6
loc_8111C1E:
    cmp r0, #0
    beq loc_8111C62
    add r4, r0, #0
    bl sub_8001532
    add r1, r4, #0
    svc 6
    mov r0, sp
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    lsl r4, r1, #8
    orr r4, r0
    lsl r4, r4, #8
    add r4, #0x28 
    lsl r4, r4, #8
    ldrb r0, [r7,#0x10]
    orr r4, r0
    bl object_getFlipDirection_800E2CA // () -> int
    ldr r6, dword_8111D94 // =0x30000 
    mul r6, r0
    ldr r1, [r5,#0x34]
    add r1, r1, r6
    ldr r2, [r5,#0x38]
    ldr r3, [r5,#0x3c]
    ldr r6, dword_8111D98 // =0xC0000 
    add r3, r3, r6
    ldr r6, [r7,#8]
    ldr r7, [r7,#0x28]
    bl sub_80C579E
    mov r0, #1
loc_8111C62:
    add sp, sp, #0x18
    pop {r4,r6,r7,pc}
    .word 0, 0
    .byte 0, 0
off_8111C70:    .word off_8111C74
off_8111C74:    .word sub_8111C88+1
    .word sub_8111CBA+1
    .word sub_8111CE0+1
    .word sub_8111D06+1
    .word sub_8111D46+1
.func
.thumb_func
sub_8111C88:
    push {r6,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    add r6, r0, #0
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    ldr r3, off_8111D9C // =off_8111D70 
    bl sub_81096FA
    bl object_checkPanelParameters
.endfunc // sub_8111C88

    cmp r0, #0
    beq locret_8111CB8
    ldrb r0, [r6,#0x12]
    ldrb r1, [r6,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    strb r0, [r4]
    ldrb r0, [r6,#0x12]
    strb r0, [r7,#0xc]
    mov r0, #1
locret_8111CB8:
    pop {r6,pc}
.func
.thumb_func
sub_8111CBA:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #5
    mul r0, r1
    add r0, #1
    ldrb r1, [r7,#0xc]
    cmp r0, r1
    bne loc_8111CD2
    mov r0, #0
    b locret_8111CDE
loc_8111CD2:
    ldr r3, off_8111DA0 // =off_8111D70 
    bl sub_81096FA
    add r7, r4, #0
    bl sub_800CFDC
locret_8111CDE:
    pop {r7,pc}
.endfunc // sub_8111CBA

.func
.thumb_func
sub_8111CE0:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    mov r1, #3
    mul r0, r1
    add r0, #2
    ldrb r1, [r7,#0xc]
    cmp r0, r1
    bne loc_8111CF8
    mov r0, #0
    b locret_8111D04
loc_8111CF8:
    ldr r3, off_8111DA4 // =off_8111D70 
    bl sub_81096FA
    add r7, r4, #0
    bl sub_800CFDC
locret_8111D04:
    pop {r7,pc}
.endfunc // sub_8111CE0

.func
.thumb_func
sub_8111D06:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    add r0, #3
    mov r1, #2
    ldr r3, off_8111DA8 // =off_8111D70 
    bl sub_81096FA
    add r7, r4, #0
    ldrb r6, [r5,#0x16]
    mov r4, #1
    eor r6, r4
    mov r4, #0x21 
    bl sub_800D3FE
    pop {r7,pc}
.endfunc // sub_8111D06

.func
.thumb_func
sub_8111D28:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
    mov r1, #2
    ldr r3, off_8111DAC // =off_8111D70 
    bl sub_81096FA
    add r7, r4, #0
    ldrb r6, [r5,#0x16]
    mov r4, #0x23 
    bl sub_800D3FE
    pop {r7,pc}
.endfunc // sub_8111D28

.func
.thumb_func
sub_8111D46:
    push {r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #5
    mul r0, r1
    add r0, #1
    mov r1, #2
    ldr r3, off_8111DB0 // =dword_8111D74+12 
    bl sub_81096FA
    add r7, r4, #0
    ldrb r6, [r5,#0x16]
    mov r4, #0x23 
    bl sub_800D3FE
    pop {r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
off_8111D70:    .word 0x30
dword_8111D74:    .word 0x3800000, 0x10, 0x3800020, 0x20, 0x3800000, 0x0
    .word 0x3800020
dword_8111D90:    .word 0xA000
dword_8111D94:    .word 0x30000
dword_8111D98:    .word 0xC0000
off_8111D9C:    .word off_8111D70
off_8111DA0:    .word off_8111D70
off_8111DA4:    .word off_8111D70
off_8111DA8:    .word off_8111D70
off_8111DAC:    .word off_8111D70
off_8111DB0:    .word dword_8111D74+0xC
    .word 0, 0
    .byte 0, 0, 0, 0
    .word sub_8016380+1
    .word sub_8111DF0+1
    .word sub_80165C2+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_8111DFC+1
    .word sub_81097BA+1
    .word loc_8111A00+1
    .word loc_8111B4A+1
.endfunc // sub_8111D46

.func
.thumb_func
sub_8111DF0:
    push {lr}
    mov r0, #1
    strh r0, [r6,#4]
    bl sub_80165B8
    pop {pc}
.endfunc // sub_8111DF0

loc_8111DFC:
    push {r4,r6,lr}
    ldr r1, off_8111E0C // =off_8111E10 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .balign 4, 0x00
off_8111E0C:    .word off_8111E10
off_8111E10:    .word sub_8111E14+1
.func
.thumb_func
sub_8111E14:
    push {lr}
    ldr r0, [r5,#0x60]
    cmp r0, #1
    bne loc_8111E20
    mov r0, #0
    str r0, [r5,#0x60]
loc_8111E20:
    bl sub_8111FAE
    cmp r0, #0
    bne locret_8111ED4
    ldrb r0, [r6,#4]
    cmp r0, #0
    bne loc_8111E8C
    bl sub_8111F70
    cmp r0, #0
    beq loc_8111E8C
    mov r0, #0x60 
    mov r1, #0x73 
    mov r2, #0x78 
    bl sub_8109630
    cmp r0, #2
    bge loc_8111E8C
    mov r0, #0xa
    strh r0, [r7,#0xa]
    ldrb r2, [r4,#0x16]
    ldr r1, dword_8111EEC // =0x8111F02 
    ldrb r0, [r1,r2]
    strh r0, [r7,#8]
    ldr r1, dword_8111EE4 // =0x8111EF6 
    ldrb r0, [r1,r2]
    strh r0, [r7,#0x10]
    ldr r1, off_8111EE8 // =unk_8111EFC 
    ldrb r0, [r1,r2]
    strh r0, [r7,#0x18]
    mov r0, #0x60 
    add r0, r0, r5
    str r0, [r7,#0x28]
    mov r0, #2
    ldrb r1, [r4,#0x16]
    cmp r1, #2
    blt loc_8111E6C
    mov r0, #3
loc_8111E6C:
    strb r0, [r7,#3]
    bl object_getFlag // () -> int
    ldr r1, dword_8111FE0 // =0xA000 
    tst r0, r1
    beq loc_8111E7C
    mov r0, #1
    strb r0, [r7,#3]
loc_8111E7C:
    mov r0, #0xb
    bl sub_8011680
    mov r0, #1
    strb r0, [r6,#4]
    mov r0, #1
    str r0, [r5,#0x60]
    b locret_8111ED4
loc_8111E8C:
    mov r0, #0
    strb r0, [r6,#4]
    bl sub_8111F08
    cmp r0, #0
    bne loc_8111E9C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_8111E9C:
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    ldr r3, off_8111FE4 // =dword_8111F60 
    bl sub_81096FA
    str r2, [r7,#0x34]
    str r3, [r7,#0x38]
    ldrb r0, [r4,#0x16]
    ldr r1, off_8111EE0 // =unk_8111EF0 
    ldrb r0, [r1,r0]
    strh r0, [r7,#0x18]
    bl object_getFlag // () -> int
    ldr r1, dword_8111FE8 // =0x8000 
    tst r0, r1
    beq loc_8111EC2
    ldrh r0, [r7,#0x18]
    add r0, #0x3c 
    strh r0, [r7,#0x18]
loc_8111EC2:
    mov r0, #0
    str r0, [r7,#0x2c]
    ldr r0, off_8111FEC // =sub_8111F94+1 
    str r0, [r7,#0x28]
    mov r0, #0xa
    bl sub_8011680
    bl loc_8111A00
locret_8111ED4:
    pop {pc}
    .word 0, 0
    .byte 0, 0
off_8111EE0:    .word unk_8111EF0
dword_8111EE4:    .word 0x8111EF6
off_8111EE8:    .word unk_8111EFC
dword_8111EEC:    .word 0x8111F02
unk_8111EF0:    .byte  1
    .byte  4
    .byte  3
    .byte  2
    .byte  3
    .byte  1
    .byte 0x19
    .byte 0x19
    .byte 0x19
    .byte 0x19
    .byte 0x19
    .byte 0x19
unk_8111EFC:    .byte 0x28 
    .byte 0x23 
    .byte 0x1E
    .byte 0x19
    .byte 0x1E
    .byte 0x14
    .byte 0x1E
    .byte 0x3C 
    .byte 0x64 
    .byte 0x78 
    .byte 0x46 
    .byte 0x82
.endfunc // sub_8111E14

.func
.thumb_func
sub_8111F08:
    push {r4,r7,lr}
    bl object_getFlipDirection_800E2CA // () -> int
    add r4, r0, #0
    ldrb r7, [r6,#5]
    cmp r7, #0
    bne loc_8111F22
    add r0, r4, #0
    bl sub_8111F38
    cmp r0, #0
    bne loc_8111F34
    mov r7, #1
loc_8111F22:
    neg r0, r4
    bl sub_8111F38
.endfunc // sub_8111F08

    cmp r0, #0
    bne loc_8111F34
    mov r7, #0
    add r0, r4, #0
    bl sub_8111F38
loc_8111F34:
    strb r7, [r6,#5]
    pop {r4,r7,pc}
.func
.thumb_func
sub_8111F38:
    push {lr}
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    push {r0,r1}
    ldr r3, off_8111FF0 // =dword_8111F60 
    bl sub_81096FA
    bl object_checkPanelParameters
.endfunc // sub_8111F38

    cmp r0, #0
    pop {r0,r1}
    bne locret_8111F54
    mov r0, #0
locret_8111F54:
    pop {pc}
    .word 0, 0
    .byte 0, 0
dword_8111F60:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
.func
.thumb_func
sub_8111F70:
    push {lr}
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl object_getPanelParameters
.endfunc // sub_8111F70

    mov r1, #0x20 
    and r1, r0
    mov r0, #1
    mov r3, #0x20 
    ldrb r2, [r5,#0x16]
    mul r2, r3
    cmp r1, r2
    bne locret_8111F92
    mov r0, #0
locret_8111F92:
    pop {pc}
.func
.thumb_func
sub_8111F94:
    push {lr}
    mov r0, #0x60 
    mov r1, #0x73 
    mov r2, #0x78 
    bl sub_8109630
    cmp r0, #2
    bge loc_8111FA8
    mov r0, #0
    b locret_8111FAC
loc_8111FA8:
    bl sub_8111F70
locret_8111FAC:
    pop {pc}
.endfunc // sub_8111F94

.func
.thumb_func
sub_8111FAE:
    push {r4,r6,lr}
    mov r6, #0
    add r0, r5, #0
    bl sub_800ED90
    tst r3, r3
    beq loc_8111FDA
    lsl r4, r0, #0x17
    lsr r4, r4, #0x17
    bl sub_800A704
    ldr r1, off_8111FF4 // =0x12C 
    cmp r0, r1
    blt loc_8111FDA
    add r0, r4, #0
    bl sub_80126E4
    bl sub_8011680
    bl sub_800F322
    mov r6, #1
loc_8111FDA:
    add r0, r6, #0
    pop {r4,r6,pc}
    .byte 0, 0
dword_8111FE0:    .word 0xA000
off_8111FE4:    .word dword_8111F60
dword_8111FE8:    .word 0x8000
off_8111FEC:    .word sub_8111F94+1
off_8111FF0:    .word dword_8111F60
off_8111FF4:    .word 0x12C
dword_8111FF8:    .word 0x11504, 0x1000015, 0x8004064, 0x40A00014, 0x280801
    .word 0x80240D2, 0x40F00050, 0x640803, 0x80440B4, 0x40F00050
    .word 0x780805
dword_8112024:    .word 0x34A334A3, 0x34A334A3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x34A334A3, 0x34A334A3
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0x34A334A3, 0x34A334A3, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x34A334A3
    .word 0x34A334A3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0x34A334A3, 0x34A334A3, 0x34A334A3
    .word 0x34A334A3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x34A334A3
    .word 0x34A334A3, 0x34A334A3, 0x34A334A3, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x81120F8, 0x8112105, 0x811219D
    .word 0x81097BB, 0x7878B510, 0xD1152800, 0x70782001, 0x7B397CE8
    .word 0xD00B2900, 0xD0092803, 0xD1012801, 0xE0052002, 0x6AF92002
    .word 0x29027CC9, 0x2003DD00, 0x200373F8, 0xE0097428, 0x28027C28
    .word 0xF6F0D106, 0x2180FE54, 0xD0014208, 0x74282003, 0x21048A38
    .word 0xD1154208, 0xF8B9F6FC, 0x7DAB1C04, 0x40537DEA, 0x7B382201
    .word 0xD0002800, 0x7CA82218, 0x7BF91900, 0xF7F7B40F, 0xBC0FFA75
    .word 0xD0011900, 0xDDF72806, 0x38018A38, 0xD1088238, 0x74282004
    .word 0xF6FC201E, 0x2000FC25, 0x20048238, 0xBD108038, 0x8A38B550
    .word 0x82383001, 0xD1182819, 0xF6FCB480, 0x7CA9F88E, 0x7BF91840
    .word 0x23082204, 0x68FC041B, 0xA240224, 0x6ABF68BE, 0xF93DF7BF
    .word 0x20A7BC80, 0xF6EE30FF, 0x20A8F9FD, 0xF6EE30FF, 0xF6F0F9F9
    .word 0x2180FE06, 0xD0034208, 0x82388B38, 0x80382008, 0xBD50
    .word 0x8016381, 0x80165B9, 0x80165C3, 0x80166AF, 0x8016B03
    .word 0x8016CE9, 0x8016B37, 0x8016B73, 0x8112279, 0x81097B5
    .word 0x81120E5, 0x8109953, 0x8109805, 0x40000, 0x40000
    .word 0x40000, 0x40000, 0x40000, 0x40000, 0x20000
    .word 0x30000, 0x40000, 0x50000, 0x30000, 0x60000
    .word 0x78644614, 0x6038C5A, 0xA0A0A0A, 0x1E242A30, 0x1818181E
    .word 0x12181212, 0x6060C12, 0x1212060C, 0x12121212, 0xF000B550
    .word 0x2800F9C1, 0x4903D104, 0x58097830, 0x470846FE, 0xBD50
    .word 0x8112294, 0x81122A1, 0x8112341, 0x811239B, 0xF707B500
    .word 0x49F7FF60, 0xD0054208, 0x60F149F6, 0x71302001, 0xE00C203C
    .word 0xF898F000, 0xD1132800, 0x60F149F2, 0x71302004, 0xF9BEF000
    .word 0x7DA049F0, 0x82385C08, 0xF6FF2009, 0x2004F9D3, 0x7CA87030
    .word 0x7CE96628, 0xE0286669, 0xF9A2F000, 0xF8F2F000, 0xD1062800
    .word 0x83382012, 0x62B848E6, 0xF9B3F000, 0x8930E01B, 0x81303001
    .word 0xDB18283C, 0x2179206C, 0xF7F7227E, 0x2800F98D, 0x2001D111
    .word 0x200566E8, 0x7DA88338, 0x40482101, 0xF866F6FE, 0x48DA62F8
    .word 0xF00062B8, 0x2008F998, 0x20007030, 0xBD008130, 0x7930B500
    .word 0x71303801, 0xF000D423, 0x2800F8EF, 0x75B8D01F, 0xB41075F9
    .word 0x7DEA7DAC, 0x7CAA4054, 0x7CEB662A, 0xF6FC666B, 0x66A8FB15
    .word 0x2001BC10, 0x68F170F8, 0x807DA0, 0x63385808, 0xF7F74BC7
    .word 0x637AF9BC, 0x200C63BB, 0xF97AF6FF, 0xFA3AF7F7, 0x2000E002
    .word 0xE7FF7030, 0xB500BD00, 0x28007EB8, 0x2000D102, 0xE01E66E8
    .word 0x60F97DA1, 0x5C4048BC, 0x48BC8238, 0x83385C40, 0x5C4048BB
    .word 0x48BB7378, 0x73B85C40, 0x5C4048BA, 0x200A8138, 0x206C8178
    .word 0x62B81940, 0x21017DA8, 0xF6FE4048, 0x62F8F80D, 0xF6FF200A
    .word 0x2000F94D, 0xBD007030, 0xB089B5D0, 0x23004AB0, 0xF6FAAF00
    .word 0x2800FD35, 0xF000D003, 0x2800F812, 0xF000D103, 0x2800F82E
    .word 0x1C04D009, 0xF88FF6EF, 0xDF061C21, 0x5C40A804, 0x7400901
    .word 0xB0090F40, 0xB5F0BDD0, 0xF6FB1C04, 0x1C06FF4E, 0xF7F74BA1
    .word 0x1C3DF962, 0xB4203510, 0x9017838, 0xF400740, 0xB40F1B80
    .word 0xFC1DF6FA, 0xBC0F2800, 0x109D003, 0x70284308, 0x37013501
    .word 0xD1ED3C01, 0x1A68BC02, 0xB5F0BDF0, 0x21011C38, 0x7DAB22AE
    .word 0xFBB0F6FC, 0xD02C1C06, 0xFF27F6FB, 0x20001C04, 0x20006238
    .word 0x1C3B61F8, 0x6819B408, 0xD01B42A9, 0x1B007C88, 0x4B897CC9
    .word 0xF92FF7F7, 0xF6FAB403, 0x2800FBF2, 0xD00FBC03, 0x8C92683A
    .word 0x429A69FB, 0xD002DB0A, 0x220061FA, 0x109623A, 0x6A3B4308
    .word 0x623A1C5A, 0x741819DB, 0x3304BC08, 0xD1DB3E01, 0xBDF06A38
    .word 0xF6FBB500, 0x7CA9FEF8, 0x7CE91840, 0xFA0AF6FA, 0x7DAA4976
    .word 0xD0002A00, 0x40084975, 0xB550BD00, 0x7DA81C04, 0x40487DE9
    .word 0x4B727CE1, 0xF8FBF7F7, 0xFDBFF6FA, 0x7CE1D00F, 0xF7F74B6F
    .word 0xB40FF8F4, 0xFBB7F6FA, 0xBC0F2800, 0x7DAED105, 0x40667DEC
    .word 0xF7032405, 0xBD50FC8E, 0x7CE8B5D0, 0xF8F3F7F7, 0xD0072800
    .word 0x6EAA4C11, 0x58A40092, 0xF80FF000, 0xD10B2800, 0x6EAA4C13
    .word 0x58A40092, 0xF807F000, 0xD1032800, 0x68244C0F, 0xF801F000
    .word 0xB500BDD0, 0x7CE97CA8, 0xF7F74B59, 0xF703F8C6, 0xBD00FC07
    .word 0x0, 0x0, 0x0
    .word off_8112584
off_8112584:    .word dword_81125B0
    .word 0x81125B5, 0x81125B8, 0x81125B0, 0x81125B0, 0x811259C
    .word 0x81125BB, 0x81125C4, 0x81125CB, 0x81125D2, 0x81125D9
dword_81125B0:    .word 0x100FF00, 0x7FFF007F, 0x7F0100, 0xFF0100FF, 0x7F000100
    .word 0xFFFF00, 0x7F0001, 0x100FF01, 0xFF007F00, 0xFF0100
    .word 0xFF007F, 0x7F000101, 0x10, 0xF8800A0, 0x30
    .word 0xF880080, 0x0
    .word 0x20, 0x20, 0x0
.endfunc // sub_8111FAE

    push {r4,r6,lr}
    mov r6, #0
    add r0, r5, #0
    bl sub_800ED90
    tst r3, r3
    beq loc_811262C
    lsl r4, r0, #0x17
    lsr r4, r4, #0x17
    bl sub_800A704
    ldr r1, off_81126D4 // =0x12C 
    cmp r0, r1
    blt loc_811262C
    add r0, r4, #0
    bl sub_80126E4
    bl sub_8011680
    bl sub_800F322
    mov r6, #1
loc_811262C:
    add r0, r6, #0
    pop {r4,r6,pc}
    push {r4,lr}
    mov r0, #0
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x70]
    cmp r0, #0
    beq locret_8112646
    ldr r0, [r5,#0x70]
    bl sub_80C4072
    mov r0, #0
    str r0, [r5,#0x70]
locret_8112646:
    pop {r4,pc}
    push {r4,lr}
    mov r0, #1
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x70]
    cmp r0, #0
    bne locret_8112664
    mov r0, #0
    mov r1, #0
    mov r2, #5
    mov r3, #0
    ldr r4, dword_81126D8 // =0x11504 
    bl sub_80C4038
    str r0, [r5,#0x70]
locret_8112664:
    pop {r4,pc}
    push {lr}
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0x12
    strb r0, [r7,#0xc]
    mov r0, #0x13
    strb r0, [r7,#0xd]
    mov r0, #3
    str r0, [r7,#0x30]
    str r0, [r7,#0x34]
    mov r0, #0xb
    bl sub_8011680
    pop {pc}
    .balign 4, 0x00
    .word 0xA000, 0x811223C, 0x8112224, 0x8112260, 0x81123ED
    .word 0x81124F3, 0x81125E0, 0x8112266, 0x811226C, 0x8112272
    .word 0x811225A, 0x8112254, 0x800000, 0x81125E0, 0x81125E0
    .word 0x8800000, 0x4800000, 0x81125F0, 0x81125E0, 0x81125E0
off_81126D4:    .word 0x12C
dword_81126D8:    .word 0x11504
dword_81126DC:    .word 0x11604, 0x1000016, 0x6004082, 0x40AA0005, 0x70601
    .word 0x60240D2, 0x40FA0009, 0xB0603, 0x60440C8, 0x40FA0009
    .word 0xF0605
dword_8112708:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x81127DC, 0x81127E9, 0x8112821
    .word 0x811288D, 0xF6FBB500, 0xD012FEFA, 0x46FE6AB8, 0x42004700
    .word 0x7528D00D, 0xF7097569, 0x2040F98D, 0xFCA5F707, 0x74282001
    .word 0x8238201E, 0x80382004, 0x2000E003, 0xF6FE76B8, 0xBD00FF7B
    .word 0x8A38B510, 0xDB132803, 0x2104D007, 0xD10F4208, 0x7D697D28
    .word 0xF9D0F6FA, 0x7D28E00A, 0xF6FB7D69, 0x1C0AFD1A, 0x23101C01
    .word 0x2415041B, 0xFED3F7CD, 0x38018A38, 0xD1188238, 0x19402034
    .word 0x2410C80E, 0x191B0424, 0xF7CD2414, 0x7D28FEC6, 0x7D6974A8
    .word 0xF70974E9, 0xF6FBF968, 0xF707FD11, 0xF7F6FBE7, 0x2003FF1C
    .word 0x20088238, 0xBD108038, 0x8A38B500, 0x82383801, 0x2040D10C
    .word 0xFC60F707, 0x4C02001, 0xFC57F707, 0x74282000, 0x76B82001
    .word 0xFF32F6FE, 0xB500BD00, 0x78384902, 0x46FE5809, 0xBD004708
    .word 0x81128C4, 0x81128DB, 0x81128FB, 0x8112929, 0x81097BB
    .word 0xFF1EF6FE, 0xB500BD00, 0xD1032800, 0x70782001, 0x74282001
    .word 0x38018A38, 0xD1038238, 0x74282002, 0x80382004, 0xB500BD00
    .word 0xFA75F6F0, 0x42082180, 0x2003D00F, 0x20007428, 0xF70773B8
    .word 0x4921FC2A, 0xD0024208, 0x73F82001, 0x2003E001, 0x200873F8
    .word 0xBD008038, 0x7878B500, 0xD1092800, 0x70782001, 0xF818F000
    .word 0x30FF20A9, 0xFE46F6ED, 0x82388A78, 0x38018A38, 0xD10C8238
    .word 0x30017BB8, 0x7BF973B8, 0xDB044288, 0x82388B38, 0x8038200C
    .word 0x2000E001, 0xBD007078, 0xF6FBB5D0, 0x7CA9FCAE, 0x7CE91840
    .word 0x19527B7A, 0x2B007BBB, 0x9BD002, 0x1AD318D2, 0x7BBE78FC
    .word 0x43340236, 0x7B3F68BE, 0xF7BF197F, 0xBDD0FA91, 0x2000
    .word 0x0
    .word sub_8016380+1
    .word sub_80165B8+1
    .word sub_8112A1E+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_8112A4A+1
    .word sub_81097BA+1
    .byte 0xC9
    .byte 0x27 
    .byte 0x11
    .byte  8
    .byte 0xB3
    .byte 0x28 
    .byte 0x11
    .byte  8
    .byte  5
    .byte 0xA
    .byte 0x14
    .byte 0x19
    .byte 0xF
    .byte 0x19
    .byte 0xFF
    .byte 0x78 
    .byte 0x5C 
    .byte 0x44 
    .byte 0x5C 
    .byte 0x2C 
    .byte 0x3C 
    .byte 0x30 
    .byte 0x24 
    .byte 0x18
    .byte 0x24 
    .byte 0x12
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
    .byte 0x1E
.func
.thumb_func
sub_81129EE:
    push {lr}
    ldrb r0, [r5,#9]
    cmp r0, #0xb
    beq locret_8112A1C
    ldr r0, [r5,#0x54]
    mov r1, #0x82
    ldrh r1, [r0,r1]
    mov r2, #0x84
    ldrh r2, [r0,r2]
    add r1, r1, r2
    mov r2, #0x86
    ldrh r2, [r0,r2]
    add r1, r1, r2
    mov r2, #0x88
    ldrh r2, [r0,r2]
    add r1, r1, r2
    mov r2, #0x8a
    ldrh r2, [r0,r2]
    add r1, r1, r2
    tst r1, r1
    beq locret_8112A1C
    mov r0, #1
    str r0, [r5,#0x60]
locret_8112A1C:
    pop {pc}
.endfunc // sub_81129EE

.func
.thumb_func
sub_8112A1E:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_8112A44
    ldr r0, [r5,#0x68]
    cmp r0, #0
    beq loc_8112A30
    bl sub_80D1EE8
loc_8112A30:
    ldr r0, [r5,#0x6c]
    cmp r0, #0
    beq loc_8112A3A
    bl sub_80D1EE8
loc_8112A3A:
    ldr r0, [r5,#0x70]
    cmp r0, #0
    beq loc_8112A44
    bl sub_80D1EE8
loc_8112A44:
    bl sub_80165C2
    pop {pc}
.endfunc // sub_8112A1E

loc_8112A4A:
    push {r4,r6,lr}
    ldr r1, off_8112A58 // =off_8112A5C 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
off_8112A58:    .word off_8112A5C
off_8112A5C:    .word sub_8112A64+1
    .word sub_8112A78+1
.func
.thumb_func
sub_8112A64:
    push {lr}
    ldr r1, dword_8112B70 // =0x81129D6 
    ldrb r0, [r4,#0x16]
    ldrb r0, [r1,r0]
    strh r0, [r6,#8]
    mov r0, #4
    strb r0, [r6]
    bl sub_8112A78
    pop {pc}
.endfunc // sub_8112A64

.func
.thumb_func
sub_8112A78:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x74]
    ldrh r0, [r6,#8]
    cmp r0, #0xff
    beq loc_8112A9A
    sub r0, #1
    strh r0, [r6,#8]
    bne loc_8112A9A
    ldr r0, off_8112B74 // =sub_8112B06+1 
    str r0, [r7,#0x28]
    mov r0, #0xa
    bl sub_8011680
    mov r0, #0
    strb r0, [r6]
    b locret_8112B04
loc_8112A9A:
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq locret_8112B04
    mov r0, #0
    str r0, [r5,#0x60]
    mov r0, #0x74 
    mov r1, #0x7f
    mov r2, #0x84
    bl sub_8109630
    cmp r0, #0
    bne locret_8112B04
    mov r0, #0x64 
    mov r1, #0x7f
    mov r2, #0x84
    bl sub_8109630
    cmp r0, #0
    bne locret_8112B04
    bl object_getFlag // () -> int
    ldr r1, dword_8112B78 // =0x8000 
    tst r0, r1
    bne locret_8112B04
    mov r0, #1
    str r0, [r5,#0x74]
    ldrb r1, [r4,#0x16]
    strb r1, [r7,#3]
    ldr r0, dword_8112B7C // =0x81129DC 
    ldrb r0, [r1,r0]
    strh r0, [r7,#0x10]
    ldr r0, dword_8112B80 // =0x81129E2 
    ldrb r0, [r1,r0]
    strh r0, [r7,#0x12]
    ldr r0, dword_8112B84 // =0x81129E8 
    ldrb r0, [r1,r0]
    strh r0, [r7,#0x18]
    ldr r0, dword_8112B88 // =0x81129D0 
    ldrb r0, [r1,r0]
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    mov r0, #0x64 
    strb r0, [r7,#0xc]
    mov r0, #0x68 
    strb r0, [r7,#0xd]
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    str r0, [r5,#0x70]
    mov r0, #0xb
    bl sub_8011680
locret_8112B04:
    pop {pc}
.endfunc // sub_8112A78

.func
.thumb_func
sub_8112B06:
    push {r4,r7,lr}
    sub sp, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
.endfunc // sub_8112B06

    ldrb r0, [r4,#0x13]
    ldr r3, off_8112B8C // =dword_8112B60 
    bl sub_81096FA
    add r7, sp, #0
    bl sub_800D45C
    tst r0, r0
    bne loc_8112B36
    ldrb r0, [r4,#0x13]
    ldr r3, off_8112B90 // =dword_8112B60 
    bl sub_81096FA
    add r7, sp, #0
    bl sub_800CEA0
    tst r0, r0
    beq loc_8112B4A
loc_8112B36:
    add r7, r0, #0
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
loc_8112B4A:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    pop {r0,r1}
    add sp, sp, #0x18
    pop {r4,r7,pc}
    .word 0
    .byte 0, 0
dword_8112B60:    .word 0x10000, 0xF8800A0, 0x10020, 0xF880080
dword_8112B70:    .word 0x81129D6
off_8112B74:    .word sub_8112B06+1
dword_8112B78:    .word 0x8000
dword_8112B7C:    .word 0x81129DC
dword_8112B80:    .word 0x81129E2
dword_8112B84:    .word 0x81129E8
dword_8112B88:    .word 0x81129D0
off_8112B8C:    .word dword_8112B60
off_8112B90:    .word dword_8112B60
dword_8112B94:    .word 0x11704, 0x1000017, 0x800003C, 0x8C000A, 0x140801
    .word 0x80200DC, 0xFA0028, 0x500803, 0x80400B4, 0xFA0028
    .word 0x640805
dword_8112BC0:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0x349B349B, 0x349B349B, 0x349B349B
    .word 0x349B349B, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0x349E349E, 0x349E349E, 0x349E349E, 0x349E349E, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x8112C94, 0x8112CA5, 0x8112CF5
    .word 0x8112D2B, 0x8112D61, 0x7878B510, 0xD1072800, 0x70782001
    .word 0x62B82000, 0x82387B38, 0x74282001, 0x38018A38, 0xDC168238
    .word 0x7DF97DB8, 0xFAD5F6FB, 0x1C011C0A, 0x41B230C, 0xF7CD2458
    .word 0x2800FC8E, 0x7B79D001, 0x62B88401, 0x82387B78, 0xF6ED20BD
    .word 0x2004FC6F, 0xBD108038, 0x8A38B510, 0x82383801, 0x2002DC14
    .word 0x20007428, 0x22002100, 0x4CD92300, 0xF994F7B1, 0xF7B16338
    .word 0x7BB9F9B8, 0x4351220A, 0x201E8401, 0xFE5CF6FB, 0x80382008
    .word 0xB500BD10, 0x28007878, 0x2001D105, 0xF0007078, 0x200AF8FD
    .word 0x8A388238, 0x82383801, 0x7BB8DC0B, 0x73B83801, 0x2000D002
    .word 0xE0047078, 0xF7B16B38, 0x200CF98C, 0xBD008038, 0x7878B510
    .word 0xD1032800, 0x70782001, 0x74282003, 0xF83BF6F0, 0x42082180
    .word 0x2000D003, 0xF6FE7428, 0xBD10FCC9, 0x8A78B500, 0x82783001
    .word 0x42082104, 0x7DB8D103, 0xF6F97DF9, 0xBD00FF1F, 0x4903B500
    .word 0x58097838, 0x470846FE, 0xBD00, 0x8112DB0, 0x8112DC1
    .word 0x8112E35, 0x8112E7D, 0x8112EC5, 0x7878B510, 0xD1072800
    .word 0x70782001, 0x62B82000, 0x82387B38, 0x74282001, 0x38018A38
    .word 0xDC188238, 0xF6FBB4C0, 0x1C04FA72, 0x7CE97CA8, 0xF7F64B0C
    .word 0xF6FAFC84, 0x6B3AF963, 0x41B230C, 0x26167B3C, 0x274C19F6
    .word 0xF7D0197F, 0xBCC0FF74, 0x200462B8, 0xBD108038, 0x0
    .word 0x0, 0x0
    .word dword_8112E24
dword_8112E24:    .word 0x10020, 0x0
    .word 0x10000, 0x20, 0x6CE8B500, 0xD11A2801, 0x74282002
    .word 0x62B82000, 0x21002000, 0x23002200, 0xF7B14C89, 0x6338F8F3
    .word 0xF917F7B1, 0x220A7BB9, 0x84014351, 0xFA33F6FB, 0x201E6378
    .word 0xFDB8F6FB, 0x80382008, 0x2800E003, 0x200CD101, 0xBD008038
    .word 0x7878B500, 0xD1052800, 0x70782001, 0xF854F000, 0x8238200A
    .word 0x38018A38, 0xDC148238, 0x38017BB8, 0xD00B73B8, 0x70782000
    .word 0xF829F000, 0xD10A2800, 0x42406B78, 0xF0006378, 0xE004F822
    .word 0xF7B16B38, 0x200CF8DA, 0xBD008038, 0x7878B510, 0xD1052800
    .word 0x70782001, 0x74282003, 0x82388B38, 0x28007C28, 0xF6EFD006
    .word 0x2180FF84, 0xD0014208, 0x74282000, 0x38018A38, 0xDC018238
    .word 0xFC0EF6FE, 0xB500BD10, 0x7DB86B79, 0x7DF91840, 0xF7F64B06
    .word 0xB403FBF8, 0xFEBBF6F9, 0xBC062800, 0x75B9D001, 0xBD0075FA
    .word 0x0
    .word dword_8112F24
dword_8112F24:    .word 0x10020, 0x0
dword_8112F2C:    .word 0x10000, 0x20, 0x7DB8B5D0, 0x240A7DF9, 0x7BFA0224
    .word 0x220018A4, 0x68BE2300, 0xF81CF7CD, 0xB500BDD0, 0x78384902
    .word 0x46FE5809, 0xBD004708, 0x8112F60, 0x8112F71, 0x8112FBB
    .word 0x8113003, 0x8113039, 0x7878B510, 0xD1062800, 0x70782001
    .word 0x62B82000, 0x74282001, 0xF6EFE018, 0x2180FF30, 0xD0134208
    .word 0x7CA8B4C0, 0x6B3A7CE9, 0x41B230C, 0x26017B3C, 0x43340236
    .word 0x19F62616, 0x197F274C, 0xFEA1F7D0, 0x62B8BCC0, 0x80382004
    .word 0xB500BD10, 0x28016CE8, 0x2002D11A, 0x20007428, 0x200062B8
    .word 0x22002100, 0x4C282300, 0xF830F7B1, 0xF7B16338, 0x7BB9F854
    .word 0x4351220A, 0xF6FB8401, 0x6378F970, 0xF6FB201E, 0x2008FCF5
    .word 0xE0038038, 0xD1012800, 0x8038200C, 0xB500BD00, 0x28007878
    .word 0x2001D105, 0xF7FF7078, 0x200AFF91, 0x8A388238, 0x82383801
    .word 0x7BB8DC0B, 0x73B83801, 0x2000D002, 0xE0047078, 0xF7B16B38
    .word 0x200CF820, 0xBD008038, 0x7878B510, 0xD1052800, 0x70782001
    .word 0x74282003, 0x82388B38, 0x28007C28, 0xF6EFD006, 0x2180FECA
    .word 0xD0014208, 0x74282000, 0x38018A38, 0xDC018238, 0xFB54F6FE
    .word 0xBD10, 0x2810, 0x12810, 0x8016381, 0x80165B9
    .word 0x80165C3, 0x80166AF, 0x81130E5, 0x81130F1, 0x81130FD
    .word 0x8113109, 0x8113125, 0x81097BB, 0x8112F4F, 0x8112D9D
    .word 0x30000, 0x15000, 0x40000, 0x25000, 0x45000
    .word 0x30000, 0x46321E0A, 0x18185A28, 0xC0C0C0C, 0xC0C1818
    .word 0x18180C12, 0x6180C0C, 0x7030503, 0x703, 0x1010101
    .word 0xF000B500, 0xF703F815, 0xBD00FD0A, 0xF000B500, 0xF703F80F
    .word 0xBD00FDF7, 0xF000B500, 0xF703F809, 0xBD00FD18, 0xF000B500
    .word 0xF703F803, 0xBD00FD30, 0x7DA0B500, 0x40082101, 0x2000D1FF
    .word 0xBD0064E8, 0xF000B550, 0x2800F857, 0xF707D109, 0x4935F81A
    .word 0xD1044208, 0x78304902, 0x46FE5809, 0xBD504708, 0x8113148
    .word 0x8113155, 0x8113163, 0x81131A3, 0x21017DA0, 0x804008
    .word 0x70303004, 0xB50046F7, 0xF7F67CE8, 0x2800FAD8, 0x7DA1D018
    .word 0x5C404826, 0x482673F8, 0x73B85C40, 0x5C404825, 0x48257338
    .word 0x76385C40, 0x5C404824, 0x200A8138, 0x898178, 0x58404822
    .word 0x200A6338, 0xFA70F6FE, 0xB500BD00, 0x481F7DA1, 0x73F85C40
    .word 0x5C40481E, 0x481E73B8, 0x73385C40, 0x5C40481D, 0x481D7638
    .word 0x81385C40, 0x8178200A, 0x481B0089, 0x63385840, 0xF6FE200B
    .word 0xBD00FA55, 0x2600B550, 0xF6FB1C28, 0x421BFDD7, 0x5C4D00E
    .word 0x8CA80DE4, 0x8498CE9, 0xDC074288, 0xF6FF1C20, 0xF6FEFA75
    .word 0xF6FCFA41, 0x2601F890, 0xBD501C30, 0xA000, 0x81130DE
    .word 0x81130D8, 0x81130C6, 0x81130D2, 0x81130C0, 0x81130A8
    .word 0x81130DE, 0x81130D8, 0x81130C6, 0x81130D2, 0x81130C0
    .word 0x81130A8, 0x11804, 0x1000018, 0x600008C, 0xB40014
    .word 0x280601, 0x60200FA, 0x118003C, 0x500603, 0x60400D2
    .word 0x136003C, 0x640605
dword_8113268:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0, 0x0
loc_8113330:
    push {lr}
    ldr r1, off_8113340 // =off_8113344 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_8113340:    .word off_8113344
off_8113344:    .word sub_8113350+1
    .word sub_811339A+1
    .word sub_81097B4+1
.func
.thumb_func
sub_8113350:
    push {r4,r6,r7,lr}
    bl object_canMove
    beq loc_8113394
    mov r0, #0x40 
    bl object_setFlag // (int a1) -> void
    ldrb r0, [r6,#4]
    cmp r0, #1
    bne loc_8113378
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #0xaa
    add r0, #0xff
    bl sound_play // () -> void
loc_8113378:
    bl object_getFlipDirection_800E2CA // () -> int
    ldr r1, [r7,#0x30]
    mul r0, r1
    str r0, [r5,#0x40]
    ldr r0, dword_81135C0 // =0x280000 
    svc 6
    strh r0, [r7,#0x10]
    strh r0, [r7,#0x12]
    mov r0, #4
    strh r0, [r7]
    bl sub_811339A
    b locret_8113398
loc_8113394:
    bl loc_801171C
locret_8113398:
    pop {r4,r6,r7,pc}
.endfunc // sub_8113350

.func
.thumb_func
sub_811339A:
    push {r4,lr}
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x70]
    ldr r1, dword_81135C4 // =0xC000000 
    tst r0, r1
    beq loc_81133AE
    ldrh r0, [r5,#0x12]
    str r0, [r7,#0x3c]
    bl sub_801A074 // () -> void
loc_81133AE:
    ldrh r0, [r5,#0x12]
    ldr r1, [r7,#0x3c]
    cmp r0, r1
    beq loc_81133BC
    mov r0, #1
    bl sub_801A07C
loc_81133BC:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    bl sub_800E2AC
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r2, [r7,#0x34]
    ldr r3, [r7,#0x38]
    cmp r0, #0
    beq loc_8113400
    cmp r0, #7
    beq loc_8113400
    bl object_checkPanelParameters
    cmp r0, #0
    bne loc_8113400
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    mov r4, #0x10
    lsl r4, r4, #0x10
    add r3, r3, r4
    mov r4, #0x14
    bl sub_80E05F6
    mov r0, #0x3c 
    strh r0, [r7,#0x10]
    mov r0, #0
    strb r0, [r6,#4]
    mov r0, #8
    strh r0, [r7]
    b loc_8113452
loc_8113400:
    bl sub_801A04C
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_811348C
    bl object_isCurrentPanelValid
    cmp r0, #0
    bne loc_8113440
    bl object_getFlipDirection_800E2CA // () -> int
    mov r1, #6
    mul r0, r1
    ldrb r1, [r5,#0x12]
    sub r1, r1, r0
    strb r1, [r5,#0x12]
    ldrb r0, [r6,#4]
    cmp r0, #1
    bne loc_811343C
    ldr r0, [r7,#0x2c]
    tst r0, r0
    beq loc_811343C
    ldr r1, [r5,#0x58]
    ldrb r1, [r1,#0x16]
    tst r1, r1
    beq loc_811343C
    ldrb r0, [r0,#0x13]
    strb r0, [r5,#0x13]
    b loc_8113440
loc_811343C:
    ldrb r0, [r5,#0x15]
    strb r0, [r5,#0x13]
loc_8113440:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x12]
    cmp r0, r1
    beq loc_8113452
    bl sub_800E29C // () -> void
    ldrh r0, [r7,#0x12]
    strh r0, [r7,#0x10]
    b locret_811348C
loc_8113452:
    ldrb r0, [r6,#4]
    cmp r0, #1
    bne loc_811345A
    b loc_8113466
loc_811345A:
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x12]
    ldrb r1, [r5,#0x15]
    strb r1, [r5,#0x13]
    bl sub_801BB46
loc_8113466:
    bl sub_800E29C // () -> void
    bl sub_801A066
    mov r0, #0x40 
    bl object_clearFlag // (int bitfield) -> void
    mov r0, #1
    lsl r0, r0, #0x13
    bl object_setFlag // (int a1) -> void
    mov r0, #1
    bl sub_801A07C
    ldrb r0, [r7]
    cmp r0, #8
    beq locret_811348C
    bl loc_801171C
locret_811348C:
    pop {r4,pc}
.endfunc // sub_811339A

loc_811348E:
    push {lr}
    ldr r1, off_811349C // =off_81134A0 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
off_811349C:    .word off_81134A0
off_81134A0:    .word sub_81134B0+1
    .word sub_8113510+1
    .word sub_81135A4+1
    .word sub_81097B4+1
.func
.thumb_func
sub_81134B0:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_81134C4
    mov r0, #1
    strb r0, [r7,#1]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #0x1e
    strh r0, [r7,#0x10]
loc_81134C4:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_811350E
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #9
    strh r0, [r7,#0x12]
    mov r0, #1
    strb r0, [r7,#0x17]
    bl object_getFlipDirection_800E2CA // () -> int
    add r4, r0, #0
    ldrb r6, [r5,#0x12]
    add r6, r6, r4
loc_81134E2:
    add r0, r6, #0
    ldrb r1, [r5,#0x16]
    bl sub_800D5F0
    cmp r0, #3
    beq loc_81134F2
    add r6, r6, r4
    b loc_81134E2
loc_81134F2:
    strb r6, [r7,#0x16]
    mov r0, #0x1e
    bl object_setCounterTime
    mov r0, #0
    mov r1, #0
    mov r2, #1
    mov r3, #0
    ldr r4, dword_81135C8 // =0x12810 
    bl sub_80C4038
    str r0, [r5,#0x68]
    mov r0, #4
    strh r0, [r7]
locret_811350E:
    pop {r4,r6,pc}
.endfunc // sub_81134B0

.func
.thumb_func
sub_8113510:
    push {r4,r6,lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_8113532
    mov r0, #1
    strb r0, [r7,#1]
    ldrb r0, [r7,#0x16]
    ldrb r1, [r7,#0x17]
    mov r2, #0
    mov r3, #0
    ldrb r4, [r7,#0xc]
    lsl r4, r4, #8
    ldr r6, [r7,#8]
    bl sub_80DFF84
    ldrb r0, [r7,#0xc]
    strh r0, [r7,#0x10]
loc_8113532:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bgt locret_8113588
    ldrh r0, [r7,#0x12]
    sub r0, #1
    strh r0, [r7,#0x12]
    beq loc_8113576
    bl object_getFlipDirection_800E2CA // () -> int
    ldrh r1, [r7,#0x12]
    mov r2, #8
    sub r2, r2, r1
    lsl r2, r2, #1
    ldr r1, off_8113590 // =dword_8113594 
    add r1, r1, r2
    mov r3, #0
    ldrsb r2, [r1,r3]
    mul r0, r2
    mov r3, #1
    ldrsb r1, [r1,r3]
    ldrb r2, [r7,#0x17]
    add r2, r2, r1
    strb r2, [r7,#0x17]
    ldrb r2, [r7,#0x16]
    add r2, r2, r0
    strb r2, [r7,#0x16]
    cmp r2, #1
    blt loc_8113576
    cmp r2, #6
    bgt loc_8113576
    mov r0, #0
    strb r0, [r7,#1]
    b locret_8113588
loc_8113576:
    mov r0, #3
    strb r0, [r5,#0x10]
    ldr r0, [r5,#0x68]
    bl sub_80C4072
    mov r0, #0
    str r0, [r5,#0x68]
    mov r0, #8
    strh r0, [r7]
locret_8113588:
    pop {r4,r6,pc}
    .word 0
    .byte 0, 0
off_8113590:    .word dword_8113594
dword_8113594:    .word 0x1000100, 0xFF000001, 0x1FF00, 0x1000100
.endfunc // sub_8113510

.func
.thumb_func
sub_81135A4:
    push {lr}
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_81135BC
    mov r0, #0
    strb r0, [r5,#0x10]
    ldrh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #0xc
    strh r0, [r7]
locret_81135BC:
    pop {pc}
    .byte 0, 0
dword_81135C0:    .word 0x280000
dword_81135C4:    .word 0xC000000
dword_81135C8:    .word 0x12810
    .word sub_8016380+1
    .word sub_80165B8+1
    .word sub_811363C+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_811365A+1
    .word sub_81097BA+1
    .word loc_8113330+1
    .word loc_811348E+1
dword_81135FC:    .word 0x25000, 0x26000, 0x27000, 0x28000, 0x29000, 0x30000
    .word 0x64502814, 0xA0C783C, 0x808080A, 0x2A30363C, 0xB5002430, 0xF7A52300
    .word 0x6628F9D7, 0x4002008, 0x200063E8, 0xBD0066A8
.endfunc // sub_81135A4

.func
.thumb_func
sub_811363C:
    push {lr}
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne loc_8113654
    ldr r0, [r5,#0x60]
    cmp r0, #0
    beq loc_8113654
    bl sub_80B8A0A
    ldr r0, [r5,#0x68]
    bl sub_80C4072
loc_8113654:
    bl sub_80165C2
    pop {pc}
.endfunc // sub_811363C

loc_811365A:
    push {r4,r6,lr}
    ldr r1, off_8113668 // =off_811366C 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
off_8113668:    .word off_811366C
off_811366C:    .word sub_8113674+1
    .word sub_811368A+1
.func
.thumb_func
sub_8113674:
    push {lr}
    ldrb r1, [r4,#0x16]
    ldr r0, off_8113730 // =dword_81135FC+36 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
    mov r0, #4
    strb r0, [r6]
    pop {pc}
.endfunc // sub_8113674

.func
.thumb_func
sub_811368A:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x64]
    ldrb r0, [r6,#4]
    cmp r0, #2
    blt loc_8113700
    mov r0, #0
    strb r0, [r6,#4]
    bl object_getFlag // () -> int
    ldr r1, dword_8113734 // =0x8000 
    tst r0, r1
    beq loc_81136A8
    ldrb r0, [r6,#4]
    b loc_8113700
loc_81136A8:
    bl object_getFlag // () -> int
    ldr r1, dword_8113738 // =0x2000 
    tst r0, r1
    beq loc_81136BE
    mov r0, #0x3c 
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
    b locret_811372C
loc_81136BE:
    mov r0, #0x64 
    mov r1, #0x8b
    mov r2, #0x90
    bl sub_8109630
    cmp r0, #0
    bne loc_81136F0
    mov r0, #1
    str r0, [r5,#0x64]
    ldrb r1, [r4,#0x16]
    ldr r0, dword_811373C // =dword_81135FC 
    ldrb r0, [r0,r1]
    strb r0, [r7,#0xc]
    ldr r0, off_8113740 // =dword_81135FC+36 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    ldr r0, off_8113744 // =dword_81135FC+24 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    mov r0, #0xa
    strh r0, [r7,#0xa]
    mov r0, #0xb
    bl sub_8011680
    b locret_811372C
loc_81136F0:
    ldrb r1, [r4,#0x16]
    ldr r0, off_8113748 // =dword_81135FC+36 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
    b locret_811372C
loc_8113700:
    add r0, #1
    strb r0, [r6,#4]
    mov r2, #0
    ldr r3, dword_811374C // =0x3800000 
    str r2, [r7,#0x34]
    str r3, [r7,#0x38]
    ldr r1, off_8113750 // =dword_81135FC 
    ldrb r0, [r4,#0x16]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r7,#0x30]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    str r0, [r7,#0x2c]
    mov r0, #0xa
    bl sub_8011680
    bl loc_8113330
locret_811372C:
    pop {pc}
    .byte 0, 0
off_8113730:    .word dword_81135FC+0x24
dword_8113734:    .word 0x8000
dword_8113738:    .word 0x2000
dword_811373C:    .word 0x811361A
off_8113740:    .word dword_81135FC+0x24
off_8113744:    .word dword_81135FC+0x18
off_8113748:    .word dword_81135FC+0x24
dword_811374C:    .word 0x3800000
off_8113750:    .word dword_81135FC
dword_8113754:    .word 0x21904, 0x1400019, 0xB4, 0xF00032, 0x640001, 0x2010E
    .word 0x12C0096, 0xC80003, 0x400F0, 0x12C0096, 0xC80005
dword_8113780:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B5F0, 0x58097838
    .word 0x470846FE, 0xBDF0, 0x8113854, 0x811387D, 0x811389F
    .word 0x81138D9, 0x8113911, 0x811393B, 0x8113985, 0x8113A1D
    .word 0x8113A77, 0x8113AB9, 0x81097B5, 0x7B38B5F0, 0x49030080
    .word 0x78005808, 0x20007038, 0xBDF07078, 0x8113894, 0x811389C
    .word 0x811389D, 0xB5101004, 0x42007878, 0x2001D108, 0x6EA87428
    .word 0xF7AC2107, 0x2001FC08, 0xE00E7078, 0xFA97F6EF, 0x42082180
    .word 0x2002D009, 0x6EA87428, 0xF7AC2108, 0x2008FBFA, 0x20008038
    .word 0xBD107078, 0x8A38B5F0, 0x82383801, 0x2018D115, 0xF87AF6FB
    .word 0x74282003, 0x21096EA8, 0xFBE7F7AC, 0xF9A8F000, 0xF958F000
    .word 0xF6EC20BA, 0x8B38FE65, 0x200C8238, 0x20008038, 0xBDF07078
    .word 0x8A38B5F0, 0x82383801, 0x2000D10E, 0x6EA87428, 0xF7AC2106
    .word 0x2001FBCE, 0x20408238, 0xFC16F706, 0x80382024, 0x70782000
    .word 0xB5F0BDF0, 0xF8F0F000, 0x226CD01B, 0x226D54A8, 0x200454A9
    .word 0x6EA87428, 0xF7AC210A, 0x206EFBB6, 0x54292100, 0x5429206F
    .word 0xF9B2F000, 0xF0006AF8, 0x20BDF98D, 0xFE2EF6EC, 0x80382014
    .word 0x70782000, 0x2020E003, 0x20008038, 0xBDF07078, 0x7878B5F0
    .word 0xD10C2800, 0xFA2DF6EF, 0x42082180, 0x206FD03D, 0x31015C29
    .word 0x29145429, 0x2001D137, 0x216E7078, 0x38015C68, 0x42005468
    .word 0xB401D014, 0x6C296B68, 0x63681840, 0x6C696BA8, 0x63A81840
    .word 0x2102BC01, 0xD0044008, 0xFBE1F000, 0xF7AC6EA8, 0xF706FBB0
    .word 0xE01AFB4D, 0x5CA8226C, 0x5CA9226D, 0x74A875B8, 0x74E975F9
    .word 0xFC56F6FA, 0xFB2CF706, 0x5C682167, 0xF6FB75E8, 0x206EFC64
    .word 0x54292100, 0xF7062001, 0x2018FB39, 0x20008038, 0xF6FA7078
    .word 0xF706FC4B, 0xBDF0FB19, 0x7878B5F0, 0xD1014200, 0x70782001
    .word 0x38018A38, 0xD1128238, 0xF6FA2010, 0x2005FFD3, 0x6EA87428
    .word 0xF7AC210B, 0x8B38FB40, 0x206E8238, 0x54292100, 0x8038201C
    .word 0x70782000, 0x8A38E00E, 0x42082104, 0xF6FAD10A, 0x7CA9FC34
    .word 0x7CE91840, 0x7DEA7DAB, 0x22014053, 0xFDF6F7F5, 0xB5F0BDF0
    .word 0x42007878, 0x206ED10E, 0x31015C29, 0x29035429, 0xF000D108
    .word 0xF000F8AF, 0x20B0F8C3, 0xFD9AF6EC, 0x70782001, 0xF9A5F6EF
    .word 0x42082180, 0x8A38D007, 0x82383801, 0x2020D103, 0x20008038
    .word 0xBDF07078, 0x2000B5F0, 0x20406628, 0xFB4CF706, 0x7DA1489B
    .word 0x83385C40, 0x20008238, 0x6EA87428, 0xF7AC2106, 0x7CA8FAF4
    .word 0xF0007CE9, 0x2264FB83, 0x75B85CA8, 0x226574A8, 0x75F85CA8
    .word 0xF6FA74E8, 0xF706FBD3, 0x2264FAA9, 0x22655CA8, 0xF0005CA9
    .word 0x2000FB5B, 0xF6FB75E8, 0x2264FBDC, 0x22655CA8, 0xF7085CA9
    .word 0x2024F816, 0xBDF08038, 0xF6FAB5F0, 0x4240FBD2, 0x6AFE1C04
    .word 0x42001C30, 0x8C80D022, 0xD01F2800, 0x7CF17CB0, 0xB4031900
    .word 0xFEDAF6F8, 0x42082110, 0x497BD003, 0xD1004208, 0xBC03E00C
    .word 0x7CF17CB0, 0xB4031B00, 0xFECCF6F8, 0x42082110, 0x4974D006
    .word 0xD1034208, 0xF000BC03, 0xE001F804, 0x2000BC03, 0xB5F0BDF0
    .word 0x6AFAB403, 0xD0114212, 0x2B008C93, 0x7C92D00E, 0xB4011A80
    .word 0xFB9BF6FA, 0xBC011C01, 0x28004348, 0x2000DC01, 0x2001E000
    .word 0x54682167, 0xBDF0BC03, 0x8938B5F0, 0x4098979, 0x1C064308
    .word 0x7DA97DA0, 0x2097DEA, 0x43080412, 0x1C044310, 0xFB7FF6FA
    .word 0x18407CA9, 0xF6FA7CE9, 0x4A59FB50, 0x6AFD78BB, 0xFB3FF7C9
    .word 0xBDF0, 0x707FF01, 0x3, 0x8938B5F0, 0x4098979
    .word 0x1C064308, 0xFB67F6FA, 0x18407CA9, 0x78BA7CE9, 0x4C022300
    .word 0xF7B14F02, 0xBDF0FBAE, 0x707FF01, 0x3, 0x7DA8B5F0
    .word 0x40487DE9, 0xB4010200, 0xFB51F6FA, 0x18407CA9, 0xF6FA7CE9
    .word 0x1C0AFB22, 0x23001C01, 0x4C02BC01, 0xF7CC4304, 0xBDF0FCDA
    .word 0x16, 0x7DA2B5F0, 0x4123210, 0x7DE97DA8, 0x2004048
    .word 0xB4014310, 0x7CE97CA8, 0xFB09F6FA, 0x1C011C0A, 0xBC012300
    .word 0x43044C04, 0xFCC1F7CC, 0xD0012800, 0xFCC9F7CC, 0xBDF0
    .word 0x55, 0x2800B5F0, 0x8C81D01B, 0xD0182900, 0x7DA8B401
    .word 0x40487DE9, 0x1C040200, 0x7CC1BC01, 0xF6FA7C80, 0x1C0AFAE8
    .word 0x4B251C01, 0x4C051C20, 0xF7CC4304, 0x2800FCA0, 0x226ED003
    .word 0x31205CA9, 0xBDF08401, 0x20056, 0x2000B5F0, 0x64686428
    .word 0x7CE97CA8, 0x5CEA236C, 0x5CEB236D, 0x1A591A10, 0xD0152800
    .word 0x28004A17, 0x4240DC01, 0x642A4252, 0x43502202, 0x54A8226E
    .word 0xD1012900, 0xE0052000, 0x43514A11, 0x1C081C02, 0xDF061C11
    .word 0xE00F6468, 0xD00A2900, 0x29004A0D, 0x4249DC01, 0x646A4252
    .word 0x43512202, 0x54A9226E, 0x2001E002, 0x5468216E, 0xBDF0
    .word 0x8113D84, 0xF800000, 0x1C0000, 0x110000, 0x140000
    .word 0x180000, 0xC0000, 0x8016381, 0x80165B9, 0x80165C3
    .word 0x80166AF, 0x8016B03, 0x8016CE9, 0x8016B37, 0x8016B73
    .word 0x8113DD9, 0x81097B5, 0x8113841, 0x8114215, 0x8109805
    .word 0x1212181E, 0xA0A0C18, 0xA0A0A0A, 0xB4967864, 0xC88C
    .word 0xA0A0A0A, 0xA0A, 0x1010101, 0x101, 0xC0C0C0C
    .word 0xC0C, 0x19191919, 0x1919, 0x2A30363C, 0x1E24
dword_8113DC0:    .word 0x15000, 0x16000, 0x17000, 0x18000, 0x19000, 0x20000
    .word 0x4903B550, 0x58097830, 0x470846FE, 0xBD50, 0x8113DEC, 0x8113DFD
    .word 0x8113E55, 0x8113EAD, 0x8113F11, 0xF706B5F0, 0x4913F9B2, 0xD1224208
    .word 0x21017DA8, 0xF0004048, 0x4200FA82, 0x2066D10A, 0x31015C29, 0x29035429
    .word 0x2100DB13, 0x20045429, 0xE0107030, 0x2060B401, 0x22962191, 0xFBFCF7F5
    .word 0xBC022800, 0x62F9D107, 0x66282001, 0x70302008, 0x200CE001, 0xBDF07030
    .word 0xA000, 0xF6FAB500, 0xD01CFBC4, 0x21017DA8, 0xF6FC4048, 0x62F8FAC9
    .word 0x480C7DA1, 0x83385C40, 0x5C40480B, 0x480B8138, 0x81785C40, 0x5C40480A
    .word 0x20008238, 0x20407338, 0xF963F706, 0xF6FD200A, 0x2000FBF7, 0x20007078
    .word 0xBD007030, 0x8113DB0, 0x8113D8A, 0x8113D98, 0x8113DA8, 0xF6FAB500
    .word 0xD01FFB98, 0x7CE97CA8, 0x54A82264, 0x54A92265, 0xFE2CF707, 0x480E7DA1
    .word 0x83385C40, 0x5C40480D, 0x480D8138, 0x81785C40, 0x5C40480C, 0x20018238
    .word 0x20407338, 0xF935F706, 0xF6FD200A, 0x2000FBC9, 0xE0017078, 0x66282000
    .word 0x70302000, 0xBD00, 0x8113DB8, 0x8113D90, 0x8113D98, 0x8113DA0
    .word 0x2000B500, 0x48107428, 0x7DA862B8, 0x40482101, 0xFA6AF6FC, 0x480D62F8
    .word 0x5C407DA1, 0x20028338, 0x201470F8, 0x20157338, 0x20037378, 0x63786338
    .word 0xF6FD200B, 0xF000FB9D, 0x2000F965, 0xE0017030, 0x70302000, 0xBD00
    .word 0x8113F95, 0x8113D84, 0x7CA8B5F0, 0xF7077CE9, 0xF000FDD9, 0x4200F829
    .word 0xF000D109, 0x4200F839, 0xF000D105, 0x4200F859, 0x7CA8D101, 0xB4037CE9
    .word 0x7CE97CA8, 0xFDDBF707, 0xBDF0BC03, 0x7CA8B5F0, 0xF7077CE9, 0xF000FDBF
    .word 0x4200F84F, 0xF000D105, 0x4200F85B, 0x7CA8D101, 0xB4037CE9, 0x7CE97CA8
    .word 0xFDC5F707, 0xBDF0BC03, 0x7DA8B5F0, 0x40482101, 0xFA16F6FC, 0xD00A4200
    .word 0x7CA8B401, 0x4BF37CE9, 0xFB8FF7F5, 0x7DAE242C, 0xF000BC20, 0xBDF0F847
    .word 0xB086B5F0, 0x21017DA8, 0xF6FC4048, 0x4200FA01, 0x7CC0D012, 0xF7F54BEA
    .word 0x466FFB7C, 0xFFCFF6F8, 0xD0094200, 0xF6EDB401, 0xBC02FA90, 0xA800DF06
    .word 0x9015C40, 0xF400740, 0xBDF0B006, 0x0, 0x0, 0x0
.endfunc // sub_811368A

    push {r4-r7,lr}
    ldr r3, off_81143AC // =dword_8114160 
    bl sub_81096FA
    bl sub_8015C94
    pop {r4-r7,pc}
    .byte 0, 0
    push {r4-r7,lr}
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    lsl r0, r0, #2
    ldr r4, off_81143B0 // =dword_8114100 
    ldr r4, [r4,r0]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_81143B4 // =dword_8114160 
    bl sub_81096FA
    bl sub_8015D80
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_81143B8 // =dword_8114160 
    bl sub_81096FA
    ldr r4, off_81143BC // =dword_8114150 
    bl sub_8015D80
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r7, off_8114084 // =off_8019B78 
    lsl r4, r4, #2
    ldr r4, [r7,r4]
    bl sub_8114088
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8114084:    .word off_8019B78
.func
.thumb_func
sub_8114088:
    push {r4-r7,lr}
    sub sp, sp, #0x38
    str r0, [sp,#0x1c]
    str r1, [sp,#0x20]
    str r2, [sp,#0x24]
    str r3, [sp,#0x28]
    add r0, r6, #0
    bl sub_800E2C2
    str r0, [sp,#0x2c]
    mov r6, #0
loc_811409E:
    mov r0, #0
    ldrsb r0, [r4,r0]
    cmp r0, #0x7f
    beq loc_81140E0
    mov r1, #1
    ldrsb r1, [r4,r1]
    ldr r2, [sp,#0x2c]
    mul r0, r2
    ldr r2, [sp,#0x1c]
    add r0, r0, r2
    str r0, [sp,#0x30]
    ldr r2, [sp,#0x20]
    add r1, r1, r2
    str r1, [sp,#0x34]
    ldr r2, [sp,#0x24]
    ldr r3, [sp,#0x28]
    bl object_checkPanelParameters
    tst r0, r0
    beq loc_81140DC
    ldr r0, [sp,#0x34]
    ldrb r1, [r5,#0x13]
    cmp r0, r1
    beq loc_81140DC
    ldr r0, [sp,#0x30]
    ldr r1, [sp,#0x34]
    lsl r1, r1, #4
    orr r0, r1
    add r1, sp, #0
    strb r0, [r1,r6]
    add r6, #1
loc_81140DC:
    add r4, #2
    b loc_811409E
loc_81140E0:
    add r2, r6, #0
    add r0, r6, #0
    beq loc_81140FA
    bl sub_8001532
    add r1, r6, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    add r2, r6, #0
loc_81140FA:
    add sp, sp, #0x38
    pop {r4-r7,pc}
    .byte 0, 0
dword_8114100:    .word 0x8114143, 0x8114146, 0x8114149, 0x8114143, 0x8114140
    .word 0x8114143, 0x8114146, 0x8114143, 0x8114143, 0x8114140
    .word 0x8114140, 0x8114149, 0x8114140, 0x8114140, 0x8114143
    .word 0x8114140, 0xFF7F0001, 0xFF007F00, 0x7F01007F, 0x0
dword_8114150:    .word 0xFF000100, 0xFF0001, 0x7F, 0x0
dword_8114160:    .word 0x10, 0xF8800A0, 0x30, 0xF880080, 0x2000B5F0, 0x7CA86628
    .word 0x22647CE9, 0x226554A8, 0x206654A9, 0x54292100, 0xF7AB2200, 0x66A8FF85
    .word 0xB5F0BDF0, 0xF95FF6FA, 0x48070604, 0x6B694304, 0x6BEB6BAA, 0x4F034E02
    .word 0xF927F7CF, 0xBDF0, 0x83E0, 0x1010008, 0x41904, 0xB403B5F0
    .word 0x7DE97DA8, 0x2004048, 0xBC031C02, 0xF6FAB404, 0x1C0AF852, 0x23001C01
    .word 0x4C02BC01, 0xF7CC4304, 0xBDF0FA0A, 0x15, 0xB403B5F0, 0x7DE97DA8
    .word 0x2004048, 0xBC031C02, 0xF6FAB404, 0x1C0AF83C, 0x23001C01, 0x4C02BC01
    .word 0xF7CC4304, 0xBDF0F9F4, 0x14, 0x4903B500, 0x58097838, 0x470846FE
    .word 0xBD00, 0x8114228, 0x8114239, 0x811427B, 0x81142F1, 0x81097BB
    .word 0xF6FAB500, 0xD017F9D2, 0x6AB96AF8, 0x470846FE, 0xD0114200, 0x75697528
    .word 0xFC64F707, 0xF7052040, 0x78F8FF7C, 0x42082101, 0x7BB8D001, 0x6B387428
    .word 0x20048238, 0xE0038038, 0x76B82000, 0xFA4EF6FD, 0xB510BD00, 0x28038A38
    .word 0x78F8D10E, 0x42082102, 0x7D28D00A, 0xF6F97D69, 0x1C0AFFF2, 0x23101C01
    .word 0x7B7C041B, 0xF9ABF7CC, 0x38018A38, 0xD1228238, 0x210278F8, 0xD0084208
    .word 0x19402034, 0x2410C80E, 0x191B0424, 0xF7CC7B3C, 0x7D28F99A, 0x7D6974A8
    .word 0xF70774E9, 0xF6F9FC3C, 0xF705FFE5, 0xF7F5FEBB, 0x78F8F9F0, 0x42082101
    .word 0x7BF8D001, 0x6B787428, 0x20088238, 0xBD108038, 0x8A38B500, 0x82383801
    .word 0x2040D10C, 0xFF2EF705, 0x4C02001, 0xFF25F705, 0x82388B38, 0x76B82001
    .word 0x8038200C, 0xB5F0BD00, 0x7CA9B082, 0x7CE99100, 0x46569101, 0x211069B6
    .word 0x30D04348, 0x24041836, 0x68352700, 0xD024422D, 0x28087A28, 0x8D28D021
    .word 0xFFACF6FA, 0xD0032802, 0xD0012800, 0xD1182801, 0xFF09F705, 0x4208491A
    .word 0x491AD013, 0xD1104208, 0x7CE97CA8, 0xF000AB00, 0x2F00F812, 0xB401D008
    .word 0x7CF97CB8, 0xF000AB01, 0xBC02F80A, 0xDD004288, 0x36041C2F, 0xD1D43C01
    .word 0xB0021C38, 0x681ABDF0, 0x1C021A10, 0x685A4350, 0x1C0A1A51, 0x18404351
    .word 0x46F7, 0x8114160, 0x8114160
off_81143AC:    .word dword_8114160
off_81143B0:    .word dword_8114100
off_81143B4:    .word dword_8114160
off_81143B8:    .word dword_8114160
off_81143BC:    .word dword_8114150
dword_81143C0:    .word 0x800, 0x200, 0x11A04, 0x120001A, 0x82, 0xAA003C, 0x500001
    .word 0x200FA, 0x118008C, 0xAA0003, 0x400C8, 0x1180064, 0xC80005
dword_81143F4:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x6D68B500, 0x42006F00
    .word 0x498ED004, 0xD0014208, 0xFDD6F705, 0x78384902, 0x46FE5809
    .word 0xBD004708, 0x81144D8, 0x81144E9, 0x811456B, 0x8114613
    .word 0x81146BD, 0x7878B5F0, 0xD1044200, 0x70782001, 0xF7052001
    .word 0x7CA8FDC1, 0xF6F87CE9, 0x2110F9FB, 0xD1034008, 0x21027828
    .word 0x70284388, 0x38018A38, 0xD1218238, 0x21002072, 0xF7185229
    .word 0x2806FE89, 0x201ED002, 0xFA58F6FA, 0x21014873, 0xFD42F000
    .word 0x82382000, 0x7CE97CA8, 0xF7A81C2A, 0x67E8FA2B, 0xF6EC20E1
    .word 0x7CA8F841, 0x22787CE9, 0x227954A8, 0x200454A9, 0xE0058038
    .word 0x21048A38, 0xD1014208, 0xF896F000, 0xB5F0BDF0, 0x5A292084
    .word 0x52293901, 0xDC062900, 0x52292100, 0xF7A86FE8, 0x2000FA1E
    .word 0x6B6867E8, 0x18406C29, 0x485C6368, 0x5A69216E, 0x490A09
    .word 0x49585A40, 0x43480C09, 0x63E80200, 0x5A682164, 0x5A692166
    .word 0xFCD1F000, 0x21683001, 0x42905C6A, 0x7428D001, 0x206C5468
    .word 0x216E5A28, 0x18805A6A, 0x21645268, 0x30015A68, 0x21665268
    .word 0x42885A69, 0x7CA8D112, 0x1C2A7CE9, 0xF9DAF7A8, 0x50682180
    .word 0x30FF20BF, 0xFFEEF6EB, 0x74282000, 0x63E82000, 0x82388B38
    .word 0x80382008, 0xFE54F6F9, 0xFD22F705, 0xF860F000, 0xFD0CF000
    .word 0xB5F0BDF0, 0x5A292084, 0x52293901, 0xDC062900, 0x52292100
    .word 0xF7A86FE8, 0x2000F9CA, 0x208667E8, 0x39015A29, 0x29005229
    .word 0x2100DC2B, 0x20805229, 0xF7A85828, 0x2000F9BC, 0x50682180
    .word 0x67682000, 0x5CA8226A, 0x5CA9226B, 0xFA75F707, 0x5CA8226A
    .word 0x5CA9226B, 0x74E974A8, 0xFE18F6F9, 0xFB62F709, 0x21027828
    .word 0x70284388, 0x21012061, 0xF7055429, 0x201EFCF9, 0x200C8238
    .word 0xF6F98038, 0xF705FE0F, 0xBDF0FCDD, 0xF6F9B5F0, 0x1C06FE18
    .word 0x7CA82400, 0x1C337CE9, 0x18C04363, 0x7DEA7DAB, 0x22014053
    .word 0xFFD6F7F4, 0x2C033401, 0xBDF0D1F1, 0x7828B5F0, 0x43882102
    .word 0xF7F57028, 0xBDF0F878, 0x7CA8B5F0, 0x22787CE9, 0x23795CAA
    .word 0x42905CEB, 0x4299D102, 0xE008D100, 0x7CE97CA8, 0x54A82278
    .word 0x54A92279, 0xF7052001, 0xBDF0FCC3, 0xC000000, 0x160000
    .word 0x80065E0, 0x0, 0x0, 0x0
    .word sub_8016380+1
    .word sub_8114FAA+1
    .word sub_80165C2+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_81147F4+1
    .word sub_8114EFC+1
dword_8114738:    .word 0x81144B5, 0x8109953, 0x8114E45, 0x1A001C, 0x160018
    .word 0x160016, 0x96785A3C, 0xB478, 0x281E140A, 0x321E
    .word 0x160018, 0x120014, 0x120012, 0x20181008, 0x7FFFF28
    .word 0x231C150E, 0xC06FFFF, 0xFF1E1812, 0x120C06FF, 0xFFFF1E18
    .word 0x18120C06, 0x6FFFF1E, 0x1E18120C, 0xFFFF, 0x18120C06
    .word 0x52A241E, 0x19140F0A, 0x804231E, 0x1814100C, 0xC08041C
    .word 0x1C181410, 0x100C0804, 0x41C1814, 0x14100C08, 0x1C18
    .word 0x280028, 0x230023, 0x1E001E, 0x1E001E, 0x1E001E
    .word 0x1E001E, 0x2A002A, 0x230023, 0x1C001C, 0x1C001C
    .word 0x1C001C, 0x1C001C
.endfunc // sub_8114088

loc_81147F4:
    push {r4-r7,lr}
    mov r0, #0x61 
    ldrb r1, [r5,r0]
    tst r1, r1
    beq loc_8114806
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_8114806:
    ldr r1, off_8114814 // =off_8114818 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8114814:    .word off_8114818
off_8114818:    .word sub_8114824+1
    .word loc_8114856+1
    .word sub_8114910+1
.func
.thumb_func
sub_8114824:
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x7c 
    mov r2, #0x80
    str r0, [r5,r1]
    str r0, [r5,r2]
    bl loc_8114CF2
    tst r0, r0
    beq loc_8114850
    mov r0, #0x74 
    mov r1, #0x97
    mov r2, #0x9c
    bl sub_8109630
    cmp r0, #0
    bne loc_8114850
    mov r0, #1
    str r0, [r5,#0x74]
    mov r0, #8
    strb r0, [r6]
    b locret_8114854
loc_8114850:
    mov r0, #4
    strb r0, [r6]
locret_8114854:
    pop {r4-r7,pc}
.endfunc // sub_8114824

loc_8114856:
    push {r4-r7,lr}
    .word 0x75E82000
    bl sub_81149E0
    tst r0, r0
    beq loc_81148EC
    ldrb r1, [r4,#0x16]
    lsl r1, r1, #2
    ldr r0, off_8114908 // =dword_8114738+140 
    add r0, r0, r1
    ldrh r1, [r0]
    mov r2, #0x84
    strh r1, [r5,r2]
    ldrh r1, [r0,#2]
    mov r2, #0x86
    strh r1, [r5,r2]
    ldrb r1, [r4,#0x16]
    ldr r0, off_811490C // =dword_8114738+24 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    ldr r0, off_8114900 // =dword_8114738+12 
    ldrb r1, [r4,#0x16]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    mov r1, #0x70 
    strh r0, [r5,r1]
    push {r4}
    mov r2, #0x62 
    ldrb r0, [r5,r2]
    mov r2, #0x63 
    ldrb r1, [r5,r2]
    bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    mov r0, #0x34 
    add r0, r0, r5
    mov r4, #0x70 
    ldrh r4, [r5,r4]
    bl sub_8114F6A
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    str r2, [r5,#0x48]
    mov r0, #0x6c 
    strh r3, [r5,r0]
    pop {r4}
    mov r0, #0
    mov r1, #0x64 
    strh r0, [r5,r1]
    mov r0, #0x70 
    ldrh r0, [r5,r0]
    mov r1, #0x66 
    strh r0, [r5,r1]
    mov r0, #0x6e 
    mov r1, #0
    strh r1, [r5,r0]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r1, #0x68 
    strb r0, [r5,r1]
    ldr r0, dword_8114904 // =0x160000 
    mov r1, #0
    bl sub_8114FB8
    mov r0, #0xc
    bl sub_8011680
    mov r0, #0
    strb r0, [r6]
    bl sub_8115028
    b loc_81148F0
loc_81148EC:
    mov r0, #0
    strb r0, [r6]
loc_81148F0:
    bl sub_800F2C6
    bl sub_8115074
    pop {r4-r7,pc}
    .word 0
    .byte 0, 0
off_8114900:    .word dword_8114738+0xC
dword_8114904:    .word 0x160000
off_8114908:    .word dword_8114738+0x8C
off_811490C:    .word dword_8114738+0x18
.func
.thumb_func
sub_8114910:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_8114AF0
    tst r0, r0
    beq loc_81149B4
    ldrb r1, [r4,#0x16]
    lsl r1, r1, #2
    ldr r0, off_81149DC // =dword_8114738+164 
    add r0, r0, r1
    ldrh r1, [r0]
    mov r2, #0x84
    strh r1, [r5,r2]
    ldrh r1, [r0,#2]
    mov r2, #0x86
    strh r1, [r5,r2]
    ldr r0, off_81149D8 // =dword_8114738+40 
    ldrb r1, [r4,#0x16]
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    mov r1, #0x70 
    strh r0, [r5,r1]
    push {r4}
    mov r2, #0x62 
    ldrb r0, [r5,r2]
    mov r2, #0x63 
    ldrb r1, [r5,r2]
    bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    mov r0, #0x34 
    add r0, r0, r5
    mov r4, #0x70 
    ldrh r4, [r5,r4]
    bl sub_8114F6A
    str r0, [r5,#0x40]
    str r1, [r5,#0x44]
    str r2, [r5,#0x48]
    mov r0, #0x6c 
    strh r3, [r5,r0]
    pop {r4}
    mov r0, #0
    mov r1, #0x64 
    strh r0, [r5,r1]
    mov r0, #0x70 
    ldrh r0, [r5,r0]
    mov r1, #0x66 
    strh r0, [r5,r1]
    mov r0, #0x6e 
    mov r1, #0
    strh r1, [r5,r0]
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r1, #0x68 
    strb r0, [r5,r1]
    ldrb r1, [r4,#0x16]
    mov r0, #0x5a 
    strh r0, [r7,#0x18]
    ldr r0, off_81149D0 // =dword_8114738+24 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    ldr r0, off_81149D4 // =dword_8114738+32 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0xa]
    mov r0, #0x14
    strh r0, [r7,#0x10]
    mov r0, #0
    strh r0, [r7,#0x12]
    bl sub_801A074 // () -> void
    mov r0, #0xa
    bl sub_8011680
    mov r0, #0
    strb r0, [r6]
    bl sub_8115028
    b loc_81149B8
loc_81149B4:
    mov r0, #0
    strb r0, [r6]
loc_81149B8:
    bl sub_800F2C6
    bl sub_8115074
    pop {r4-r7,pc}
    .word 0, 0, 0
    .byte 0, 0
off_81149D0:    .word dword_8114738+0x18
off_81149D4:    .word dword_8114738+0x20
off_81149D8:    .word dword_8114738+0x28
off_81149DC:    .word dword_8114738+0xA4
.endfunc // sub_8114910

.func
.thumb_func
sub_81149E0:
    push {r4-r7,lr}
    bl sub_8114A4A
.endfunc // sub_81149E0

    tst r0, r0
    bne loc_8114A02
    bl sub_8114A64
    tst r0, r0
    bne loc_8114A02
    bl sub_8114A84
    tst r0, r0
    bne loc_8114A02
    bl sub_8114AA4
    tst r0, r0
    beq locret_8114A48
loc_8114A02:
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_8114AC4
    tst r0, r0
    beq locret_8114A48
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x6a 
    strb r0, [r5,r2]
    mov r2, #0x6b 
    strb r1, [r5,r2]
    bl sub_801BB1C
    pop {r0,r1}
    mov r2, #0x62 
    strb r0, [r5,r2]
    mov r2, #0x63 
    strb r1, [r5,r2]
    push {r0,r1}
    bl sub_8114D74
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    add r2, r5, #0
    bl sub_80BC998
    str r0, [r5,#0x7c]
    mov r0, #0xe1
    bl sound_play // () -> void
    pop {r0,r1}
locret_8114A48:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8114A4A:
    push {r4-r7,lr}
    ldr r3, off_8114A60 // =dword_8114C30 
    bl sub_81096FA
    bl sub_8114C90
.endfunc // sub_8114A4A

    pop {r4-r7,pc}
    .word 0
    .byte 0, 0, 0, 0
off_8114A60:    .word dword_8114C30
.func
.thumb_func
sub_8114A64:
    push {r4-r7,lr}
    ldr r3, off_8114A80 // =dword_8114C30 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_8114A64

    pop {r4-r7,pc}
    .word 0, 0, 0
    .byte 0, 0
off_8114A80:    .word dword_8114C30
.func
.thumb_func
sub_8114A84:
    push {r4-r7,lr}
    ldr r3, off_8114AA0 // =dword_8114C40 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_8114A84

    pop {r4-r7,pc}
    .word 0, 0, 0
    .byte 0, 0
off_8114AA0:    .word dword_8114C40
.func
.thumb_func
sub_8114AA4:
    push {r4-r7,lr}
    ldr r3, off_8114AC0 // =dword_8114C50 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_8114AA4

    pop {r4-r7,pc}
    .word 0, 0, 0
    .byte 0, 0
off_8114AC0:    .word dword_8114C50
.func
.thumb_func
sub_8114AC4:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_8114AE0 // =dword_8114C60 
    bl sub_81096FA
    ldr r4, off_8114AE4 // =dword_8114AE8 
    bl sub_8015D80
    pop {r4-r7,pc}
    .word 0
    .byte 0, 0, 0, 0
off_8114AE0:    .word dword_8114C60
off_8114AE4:    .word dword_8114AE8
dword_8114AE8:    .word 0xFF0001, 0x7F
.endfunc // sub_8114AC4

.func
.thumb_func
sub_8114AF0:
    push {r4-r7,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_8114BB0 // =0x2000 
    tst r0, r1
    bne loc_8114B54
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq locret_8114BA2
    str r0, [r7,#0x2c]
    ldrb r2, [r0,#0x16]
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    bl sub_8114BB4
    tst r0, r0
    beq loc_8114B54
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x6a 
    strb r0, [r5,r2]
    mov r2, #0x6b 
    strb r1, [r5,r2]
    pop {r0,r1}
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    bl sub_8114D8E
    mov r2, #0x62 
    strb r0, [r5,r2]
    mov r2, #0x63 
    strb r1, [r5,r2]
    push {r0,r1}
    bl sub_8114DAC
    pop {r0,r1}
    b locret_8114BA2
loc_8114B54:
    bl sub_8114BF0
    tst r0, r0
    beq locret_8114BA2
    push {r0,r1}
    bl sub_8114C04
    tst r0, r0
    bne loc_8114B6C
    pop {r0,r1}
    mov r0, #0
    b locret_8114BA2
loc_8114B6C:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x6a 
    strb r0, [r5,r2]
    mov r2, #0x6b 
    strb r1, [r5,r2]
    pop {r0,r1}
    mov r2, #0x62 
    strb r0, [r5,r2]
    mov r2, #0x63 
    strb r1, [r5,r2]
    pop {r0,r1}
    push {r0,r1}
    strb r0, [r5,#0x12]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    bl sub_8114DAC
    pop {r0,r1}
locret_8114BA2:
    pop {r4-r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
dword_8114BB0:    .word 0x2000
.endfunc // sub_8114AF0

.func
.thumb_func
sub_8114BB4:
    push {r4-r7,lr}
    mov r3, #5
    mul r2, r3
    add r2, #1
    ldr r4, off_8114BE0 // =dword_8114BE4 
    cmp r0, r2
    bne loc_8114BC4
    ldr r4, off_8114BD0 // =dword_8114BD4 
loc_8114BC4:
    ldr r3, off_8114BEC // =dword_8114C70 
    bl sub_81096FA
    bl sub_8015D80
    pop {r4-r7,pc}
off_8114BD0:    .word dword_8114BD4
dword_8114BD4:    .word 0xFE0002, 0x7F, 0x0
off_8114BE0:    .word dword_8114BE4
dword_8114BE4:    .word 0xFF0001, 0x7F
off_8114BEC:    .word dword_8114C70
.endfunc // sub_8114BB4

.func
.thumb_func
sub_8114BF0:
    push {r4-r7,lr}
    ldr r3, off_8114C00 // =dword_8114C70 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_8114BF0

    pop {r4-r7,pc}
    .byte 0, 0
off_8114C00:    .word dword_8114C70
.func
.thumb_func
sub_8114C04:
    push {r4-r7,lr}
    ldr r3, off_8114C20 // =dword_8114C80 
    bl sub_81096FA
    ldr r4, off_8114C24 // =dword_8114C28 
    bl sub_8015D80
    pop {r4-r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
off_8114C20:    .word dword_8114C80
off_8114C24:    .word dword_8114C28
dword_8114C28:    .word 0xFE0002, 0x7F
dword_8114C30:    .word 0x0
    .word 0xF8800A0, 0x20, 0xF880080
dword_8114C40:    .word 0x800000, 0x20, 0x800020, 0x0
dword_8114C50:    .word 0x0
    .word 0x30
    .word 0x20, 0x10
dword_8114C60:    .word 0x0
    .word 0x20, 0x20, 0x0
dword_8114C70:    .word 0x0
    .word 0xC000000, 0x0
    .word 0xC000000
dword_8114C80:    .word 0x0, 0x0, 0x0, 0x0
.endfunc // sub_8114C04

.func
.thumb_func
sub_8114C90:
    push {r7,lr}
    sub sp, sp, #0x18
    add r7, sp, #0
    bl sub_8114CBC
.endfunc // sub_8114C90

    tst r0, r0
    beq loc_8114CB4
    add r7, r0, #0
    bl sub_8001532
    add r1, r7, #0
    svc 6
    add r0, sp, #0
    ldrb r0, [r0,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_8114CB8
loc_8114CB4:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
loc_8114CB8:
    add sp, sp, #0x18
    pop {r7,pc}
.func
.thumb_func
sub_8114CBC:
    push {r4,r6,lr}
    mov r6, #0
    mov r1, #3
loc_8114CC2:
    mov r0, #6
loc_8114CC4:
    push {r0-r3,r6,r7}
    bl object_getPanelParameters
.endfunc // sub_8114CBC

    add r4, r0, #0
    pop {r0-r3,r6,r7}
    tst r4, r3
    bne loc_8114CE6
    and r4, r2
    cmp r4, r2
    bne loc_8114CE6
    ldrb r4, [r5,#0x13]
    cmp r1, r4
    beq loc_8114CE6
    lsl r4, r1, #4
    orr r4, r0
    strb r4, [r7,r6]
    add r6, #1
loc_8114CE6:
    sub r0, #1
    bne loc_8114CC4
    sub r1, #1
    bne loc_8114CC2
    add r0, r6, #0
    pop {r4,r6,pc}
loc_8114CF2:
    push {r4-r7,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_811509C // =0x8000 
    tst r0, r1
    beq loc_8114D02
    mov r0, #0
    b locret_8114D0E
loc_8114D02:
    ldr r0, off_8114D10 // =off_8114D14 
    ldrb r1, [r4,#0x16]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_8114D0E:
    pop {r4-r7,pc}
off_8114D10:    .word off_8114D14
off_8114D14:    .word sub_8114D2C+1
    .word sub_8114D44+1
    .word sub_8114D2C+1
    .word sub_8114D44+1
    .word sub_8114D2C+1
    .word sub_8114D44+1
.func
.thumb_func
sub_8114D2C:
    push {r4-r7,lr}
    mov r0, #0
    mov r2, #0x69 
    ldrb r1, [r5,r2]
    add r1, #1
    strb r1, [r5,r2]
    cmp r1, #3
    ble locret_8114D42
    mov r1, #0
    strb r1, [r5,r2]
    mov r0, #1
locret_8114D42:
    pop {r4-r7,pc}
.endfunc // sub_8114D2C

.func
.thumb_func
sub_8114D44:
    push {r4-r7,lr}
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    ldr r1, off_8114D60 // =unk_8114D64 
    ldrb r0, [r1,r0]
    pop {r4-r7,pc}
    .word 0, 0
    .byte 0, 0, 0, 0
off_8114D60:    .word unk_8114D64
unk_8114D64:    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  1
    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  0
    .byte  1
    .byte  0
.endfunc // sub_8114D44

.func
.thumb_func
sub_8114D74:
    push {r4-r7,lr}
    bl object_getFlipDirection_800E2CA // () -> int
    mov r3, #0
    ldrb r1, [r5,#0x12]
    mov r2, #0x62 
    ldrb r2, [r5,r2]
    sub r1, r2, r1
    cmp r0, r1
    beq loc_8114D8A
    mov r3, #1
loc_8114D8A:
    strb r3, [r5,#0x17]
    pop {r4-r7,pc}
.endfunc // sub_8114D74

.func
.thumb_func
sub_8114D8E:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldr r1, [r7,#0x2c]
    ldrb r1, [r1,#0x12]
    sub r0, r1, r0
    cmp r0, #0
    bge loc_8114DA4
    ldrb r0, [r5,#0x12]
    sub r0, #2
    ldrb r1, [r5,#0x13]
    b locret_8114DAA
loc_8114DA4:
    ldrb r0, [r5,#0x12]
    add r0, #2
    ldrb r1, [r5,#0x13]
locret_8114DAA:
    pop {r4-r7,pc}
.endfunc // sub_8114D8E

.func
.thumb_func
sub_8114DAC:
    push {r4-r7,lr}
    mov r0, #0
    strb r0, [r5,#0x17]
    bl object_getFlipDirection_800E2CA // () -> int
    mov r3, #0
    ldrb r1, [r5,#0x12]
    mov r2, #0x62 
    ldrb r2, [r5,r2]
    sub r1, r2, r1
    asr r1, r1, #1
    cmp r0, r1
    beq loc_8114DC8
    mov r3, #1
loc_8114DC8:
    strb r3, [r5,#0x17]
    pop {r4-r7,pc}
.endfunc // sub_8114DAC

    push {r4-r7,lr}
    add r6, r0, #0
    add r7, r1, #0
    bl object_getPanelParameters
    mov r1, #0x10
    and r0, r1
    beq locret_8114DF0
    add r0, r6, #0
    add r1, r7, #0
    bl sub_800E276 // (int a1, int a2) -> (int n1, int n2)
    add r2, r1, #0
    add r1, r0, #0
    mov r3, #0
    mov r4, #0x50 
    bl sub_80E05F6
locret_8114DF0:
    pop {r4-r7,pc}
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0x84
    strh r0, [r5,r1]
    mov r1, #0x86
    strh r0, [r5,r1]
    mov r0, #0
    str r0, [r5,#0x74]
    mov r0, #0x69 
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #0x61 
    mov r1, #0
    ldrb r1, [r5,r0]
    mov r1, #0x3a 
    mov r2, #2
    mov r3, #3
    bl sub_801A082
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x6a 
    strb r0, [r5,r2]
    mov r2, #0x6b 
    strb r1, [r5,r2]
    mov r0, #0
    mov r1, #0x7c 
    mov r2, #0x80
    str r0, [r5,r1]
    str r0, [r5,r2]
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x16]
    ldr r1, off_8114E40 // =dword_8114738+32 
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x2e]
    pop {r4-r7,pc}
    .byte 0, 0
off_8114E40:    .word dword_8114738+0x20
    push {r4-r7,lr}
    mov r0, #0x84
    ldrh r1, [r5,r0]
    sub r1, #1
    strh r1, [r5,r0]
    cmp r1, #0
    bgt loc_8114E60
    mov r1, #0
    strh r1, [r5,r0]
    ldr r0, [r5,#0x7c]
    bl sub_80BC9BE
    mov r0, #0
    str r0, [r5,#0x7c]
loc_8114E60:
    mov r0, #1
    bl sub_801A07C
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x40]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, off_81150A0 // =dword_80065D0+16 
    mov r1, #0x6e 
    ldrh r1, [r5,r1]
    lsr r1, r1, #8
    lsl r1, r1, #1
    ldrh r0, [r0,r1]
    ldr r1, dword_81150A4 // =0x160000 
    lsr r1, r1, #0x10
    mul r0, r1
    lsl r0, r0, #8
    str r0, [r5,#0x3c]
    mov r1, #0x64 
    ldrh r0, [r5,r1]
    mov r1, #0x66 
    ldrh r1, [r5,r1]
    bl sub_8114F52
    add r0, #1
    mov r1, #0x68 
    ldrb r2, [r5,r1]
    cmp r0, r2
    beq loc_8114E9E
    strb r0, [r5,#0x10]
    strb r0, [r5,r1]
loc_8114E9E:
    mov r0, #0x6c 
    ldrh r0, [r5,r0]
    mov r1, #0x6e 
    ldrh r2, [r5,r1]
    add r0, r0, r2
    strh r0, [r5,r1]
    mov r1, #0x64 
    ldrh r0, [r5,r1]
    add r0, #1
    strh r0, [r5,r1]
    mov r1, #0x66 
    ldrh r1, [r5,r1]
    cmp r0, r1
    bne loc_8114EEE
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    add r2, r5, #0
    bl sub_80BC998
    mov r1, #0x80
    str r0, [r5,r1]
    mov r0, #0xbf
    add r0, #0xff
    bl sound_play // () -> void
    mov r0, #0
    strb r0, [r5,#0x10]
    mov r0, #0
    str r0, [r5,#0x3c]
    mov r0, #0x17
    strh r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
    mov r2, #0x6a 
    ldrb r0, [r5,r2]
    mov r2, #0x6b 
    ldrb r1, [r5,r2]
    bl sub_801BB46
loc_8114EEE:
    bl sub_800E2AC
    bl sub_801A04C
    bl sub_8115028
    pop {r4-r7,pc}
.func
.thumb_func
sub_8114EFC:
    push {r4-r7,lr}
    mov r0, #0x84
    ldrh r1, [r5,r0]
    sub r1, #1
    strh r1, [r5,r0]
    cmp r1, #0
    bgt loc_8114F18
    mov r1, #0
    strh r1, [r5,r0]
    ldr r0, [r5,#0x7c]
    bl sub_80BC9BE
    mov r0, #0
    str r0, [r5,#0x7c]
loc_8114F18:
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl object_getPanelParameters
.endfunc // sub_8114EFC

    mov r1, #0x10
    and r0, r1
    bne loc_8114F2E
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
loc_8114F2E:
    mov r0, #0x86
    ldrh r1, [r5,r0]
    sub r1, #1
    strh r1, [r5,r0]
    cmp r1, #0
    bgt locret_8114F50
    mov r1, #0
    strh r1, [r5,r0]
    mov r0, #0x80
    ldr r0, [r5,r0]
    bl sub_80BC9BE
    mov r0, #0
    mov r1, #0x80
    str r0, [r5,r1]
    bl sub_81097B4
locret_8114F50:
    pop {r4-r7,pc}
.func
.thumb_func
sub_8114F52:
    push {lr}
    push {r0}
    add r0, r1, #0
    mov r1, #4
    svc 6
    add r1, r0, #0
    pop {r0}
    svc 6
    cmp r0, #4
    bne locret_8114F68
    mov r0, #3
locret_8114F68:
    pop {pc}
.endfunc // sub_8114F52

.func
.thumb_func
sub_8114F6A:
    push {r5-r7,lr}
    ldr r5, [r0]
    sub r1, r1, r5
    ldr r5, [r0,#4]
    sub r2, r2, r5
    ldr r5, [r0,#8]
    sub r3, r3, r5
    push {r2,r3}
    add r0, r1, #0
    add r1, r4, #0
    svc 6
    pop {r2,r3}
    push {r0}
    push {r3}
    add r0, r2, #0
    add r1, r4, #0
    svc 6
    pop {r3}
    push {r0}
    add r0, r3, #0
    add r1, r4, #0
    svc 6
    push {r0}
    mov r0, #0x80
    lsl r0, r0, #8
    add r1, r4, #0
    svc 6
    add r3, r0, #0
    pop {r2}
    pop {r1}
    pop {r0}
    pop {r5-r7,pc}
.endfunc // sub_8114F6A

.func
.thumb_func
sub_8114FAA:
    push {r4-r7,lr}
    mov r0, #0x40 
    bl object_setFlag // (int a1) -> void
    bl sub_80165B8
    pop {r4-r7,pc}
.endfunc // sub_8114FAA

.func
.thumb_func
sub_8114FB8:
    push {r4-r7,lr}
    ldrb r2, [r4,#0x16]
    add r6, r0, #0
    add r7, r2, #0
    mov r0, #0
loc_8114FC2:
    push {r0,r1}
    ldr r2, off_811500C // =off_8115010 
    lsl r3, r1, #2
    ldr r2, [r2,r3]
    ldrb r4, [r2,r0]
    cmp r4, #0xff
    beq loc_8114FEC
    ldr r2, off_8115000 // =off_8115004 
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    mov r3, #7
    mul r3, r7
    add r3, r3, r0
    ldrb r3, [r2,r3]
    mov r0, #0x62 
    ldrb r0, [r5,r0]
    mov r1, #0x63 
    ldrb r1, [r5,r1]
    add r2, r7, #0
    bl sub_80BE6D8
loc_8114FEC:
    pop {r0,r1}
    add r0, #1
    cmp r0, #7
    blt loc_8114FC2
    pop {r4-r7,pc}
    .word 0, 0
    .byte 0, 0
off_8115000:    .word off_8115004
off_8115004:    .word dword_8114738+0x34
    .word dword_8114738+0x60
off_811500C:    .word off_8115010
off_8115010:    .word dword_8115018
    .word 0x811501F
dword_8115018:    .word 0x10000000, 0xFFFF01, 0x1000, 0x110
.endfunc // sub_8114FB8

.func
.thumb_func
sub_8115028:
    push {r4-r7,lr}
    ldr r0, [r5,#0x34]
    ldr r1, [r5,#0x38]
    ldr r2, [r5,#0x40]
    add r0, r0, r2
    ldr r2, [r5,#0x3c]
    bl sub_800E258
    push {r0,r1}
    bl object_getPanelParameters
.endfunc // sub_8115028

    ldr r1, dword_81150A8 // =0x800000 
    tst r0, r1
    pop {r0,r1}
    beq locret_811504A
    bl sub_811504C
locret_811504A:
    pop {r4-r7,pc}
.func
.thumb_func
sub_811504C:
    push {r4-r7,lr}
    push {r0,r1}
    ldr r4, dword_811506C // =0x605FF01 
    ldrh r0, [r7,#8]
    ldrh r1, [r7,#0xa]
    lsl r1, r1, #0x10
    orr r0, r1
    add r6, r0, #0
    ldrb r2, [r7,#2]
    ldr r7, dword_8115070 // =0x0 
    mov r3, #0
    pop {r0,r1}
    bl sub_80C536A
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811506C:    .word 0x605FF01
dword_8115070:    .word 0x0
.endfunc // sub_811504C

.func
.thumb_func
sub_8115074:
    push {r4-r7,lr}
    mov r0, #0x61 
    ldrb r1, [r5,r0]
    tst r1, r1
    beq locret_8115096
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #0
    mov r1, #0
    bl sub_801DC7C
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    bl sub_8016934
locret_8115096:
    pop {r4-r7,pc}
.endfunc // sub_8115074

.func
.thumb_func
sub_8115098:
    push {r4-r7,lr}
    pop {r4-r7,pc}
dword_811509C:    .word 0x8000
off_81150A0:    .word dword_80065D0+0x10
dword_81150A4:    .word 0x160000
dword_81150A8:    .word 0x800000
dword_81150AC:    .word 0x11B04, 0x100001B, 0x8000064, 0x820014, 0x320801
    .word 0x80200A0, 0xBE0078, 0x960803, 0x80400A0, 0xD20046
    .word 0xB40805
dword_81150D8:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0, 0x0
.endfunc // sub_8115098

loc_81151A0:
    push {lr}
    ldr r1, off_81151B0 // =off_81151B4 
    ldrb r0, [r7]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {pc}
    .byte 0, 0
off_81151B0:    .word off_81151B4
off_81151B4:    .word sub_81151CC+1
    .byte 0x3D 
    .byte 0x52 
    .byte 0x11
    .byte  8
    .byte 0x73 
    .byte 0x52 
    .byte 0x11
    .byte  8
    .byte 0x41 
    .byte 0x53 
    .byte 0x11
    .byte  8
    .byte 0x99
    .byte 0x53 
    .byte 0x11
    .byte  8
    .byte  5
    .byte 0x54 
    .byte 0x11
    .byte  8
.func
.thumb_func
sub_81151CC:
    push {lr}
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_81152CA
    mov r0, #1
    strb r0, [r7,#1]
    bl object_canMove
    bne loc_81151E4
    bl sub_8011714
    b locret_8115228
loc_81151E4:
    mov r1, #0x35 
    mov r2, #2
    mov r3, #3
    bl sub_801A082
    mov r0, #0x40 
    bl object_setFlag // (int a1) -> void
    mov r0, #1
    lsl r0, r0, #0x16
    bl object_setFlag // (int a1) -> void
    bl sub_802D234
    cmp r0, #6
    beq loc_811520A
    mov r0, #0x10
    bl object_setCounterTime
loc_811520A:
    ldrb r0, [r7,#0xc]
    ldr r1, off_8115230 // =loc_8115234 
    ldrb r0, [r1,r0]
    str r0, [r7,#0x34]
    mov r0, #2
    strb r0, [r5,#0x10]
    mov r0, #0xc
    strh r0, [r7,#0x10]
    mov r0, #1
    strb r0, [r7,#0xd]
    strb r0, [r7,#0xe]
    mov r0, #4
    strh r0, [r7]
    bl sub_8115492
locret_8115228:
    pop {pc}
    .word 0
    .byte 0, 0
off_8115230:    .word loc_8115234
loc_8115234:
    lsl r1, r0, #4
    lsl r2, r0, #0x18
    mov r0, #7
    lsr r0, r1, #0x20
    push {lr}
    bl sub_8115432
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge loc_811526C
    bl object_getFlipDirection_800E2CA // () -> int
    ldr r1, [r7,#0x30]
    mul r0, r1
    str r0, [r5,#0x40]
    ldrb r0, [r5,#0x12]
    strb r0, [r5,#0x14]
    ldrb r1, [r5,#0x13]
    strb r1, [r5,#0x15]
    bl sub_801BB1C
    mov r0, #0x88
    add r0, #0xff
    bl sound_play // () -> void
    mov r0, #8
    strh r0, [r7]
loc_811526C:
    bl sub_8115492
    pop {pc}
    push {lr}
    ldr r3, [r5,#0x54]
    ldr r0, [r3,#0x70]
    ldr r1, dword_81154D8 // =0xC000000 
    tst r0, r1
    beq loc_8115286
    ldrh r0, [r5,#0x12]
    str r0, [r7,#0x38]
    bl sub_801A074 // () -> void
loc_8115286:
    ldrh r0, [r5,#0x12]
    ldr r1, [r7,#0x38]
    cmp r0, r1
    beq loc_8115294
    mov r0, #1
    bl sub_801A07C
loc_8115294:
    ldrb r0, [r7,#1]
    cmp r0, #0
    bne loc_81152CA
    mov r0, #1
    strb r0, [r7,#1]
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldr r3, off_81154DC // =dword_8115330 
    bl sub_81096FA
    push {r0,r1}
    bl object_checkPanelParameters
    cmp r0, #0
    pop {r0,r1}
    beq loc_811531A
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    ldr r0, dword_81154E0 // =0x280000 
    ldr r1, [r7,#0x30]
    svc 6
    strh r0, [r7,#0x10]
    lsr r0, r0, #1
    strh r0, [r7,#0x12]
loc_81152CA:
    ldrb r0, [r7,#0xc]
    cmp r0, #1
    bne loc_81152D4
    bl sub_8115466
loc_81152D4:
    bl sub_81154B8
    bl sub_8115432
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldrh r0, [r7,#0x10]
    ldrh r1, [r7,#0x12]
    cmp r0, r1
    bne loc_81152F4
    bl sub_800E2AC
    bl sub_801A04C
loc_81152F4:
    ldrh r0, [r7,#0x10]
    sub r0, #1
    strh r0, [r7,#0x10]
    bge loc_8115322
    ldrb r0, [r7,#0x16]
    strb r0, [r5,#0x12]
    ldrb r1, [r7,#0x17]
    strb r1, [r5,#0x13]
    bl sub_800E29C // () -> void
    bl sub_801A066
    ldrb r0, [r7,#0xc]
    sub r0, #1
    strb r0, [r7,#0xc]
    beq loc_811531A
    mov r0, #0
    strb r0, [r7,#1]
    b loc_8115322
loc_811531A:
    ldrh r0, [r7,#0x18]
    strh r0, [r7,#0x10]
    mov r0, #0xc
    strh r0, [r7]
loc_8115322:
    bl sub_8115492
    pop {pc}
    .word 0
    .byte 0, 0, 0, 0
dword_8115330:    .word 0x10, 0x3800000, 0x10, 0x3800000, 0x6D6BB550, 0x49646F18
    .word 0xD0014208, 0xFE92F704, 0xF8B2F000, 0xF86DF000, 0x38018A38, 0xDA1A8238
    .word 0x7D697D28, 0xFF87F6F8, 0x1C011C0A, 0x241E2300, 0x2034823C, 0x4E5B1940
    .word 0xFFDAF6EB, 0x64AA6428, 0xFE78F704, 0xF7042001, 0x2004FEE9, 0x20107428
    .word 0xF0008038, 0xBD50F801, 0x6C29B500, 0x18406B68, 0x6CA96368, 0x18406BE8
    .word 0x484E63E8, 0x64A91809, 0xFF7CF6F8, 0xFE4AF704, 0x28088A38, 0x2005D101
    .word 0x8A387428, 0x82383801, 0x7D28DA1B, 0x7D6974A8, 0xF70674E9, 0x2000FBB8
    .word 0xF6F863E8, 0xF704FF5F, 0x2001FE35, 0xFE4AF704, 0xF7042040, 0x2001FEB7
    .word 0xF70404C0, 0xF000FEAE, 0x2018F826, 0x20148238, 0xBD008038, 0x7C28B500
    .word 0xD0062800, 0xFCEDF6ED, 0x42082180, 0x2000D001, 0x8A387428, 0x82383801
    .word 0x2101DA06, 0x23032202, 0xFE2BF704, 0xF972F6FC
.endfunc // sub_81151CC

    pop {pc}
.func
.thumb_func
sub_8115432:
    push {lr}
    ldrb r0, [r7,#0xd]
    sub r0, #1
    strb r0, [r7,#0xd]
    bne locret_8115444
    mov r0, #0x10
    strb r0, [r7,#0xd]
    bl sub_8115446
locret_8115444:
    pop {pc}
.endfunc // sub_8115432

.func
.thumb_func
sub_8115446:
    push {r4,lr}
    bl object_getFlipDirection_800E2CA // () -> int
    mov r4, #0xe
    lsl r4, r4, #0x10
    mul r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    sub r1, r1, r4
    ldr r4, dword_81154E8 // =0x80000 
    add r3, r3, r4
    mov r4, #1
    bl sub_80E05F6
    pop {r4,pc}
.endfunc // sub_8115446

.func
.thumb_func
sub_8115466:
    push {r4,lr}
    ldrb r0, [r7,#0xe]
    sub r0, #1
    strb r0, [r7,#0xe]
    bne locret_8115490
    mov r0, #4
    strb r0, [r7,#0xe]
    bl object_getFlipDirection_800E2CA // () -> int
    mov r4, #0xe
    lsl r4, r4, #0x10
    mul r4, r0
    mov r0, #0x34 
    add r0, r0, r5
    ldmia r0!, {r1-r3}
    add r1, r1, r4
    ldr r4, dword_81154E8 // =0x80000 
    add r3, r3, r4
    mov r4, #1
    bl sub_80E05F6
locret_8115490:
    pop {r4,pc}
.endfunc // sub_8115466

.func
.thumb_func
sub_8115492:
    push {lr}
    ldrb r0, [r7,#0xf]
    add r0, #1
    strb r0, [r7,#0xf]
    mov r1, #4
    tst r0, r1
    bne locret_81154B6
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x14]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    ldrb r3, [r5,#0x16]
    ldrb r2, [r5,#0x17]
    eor r3, r2
    ldr r2, [r7,#0x34]
    bl sub_8109660
locret_81154B6:
    pop {pc}
.endfunc // sub_8115492

.func
.thumb_func
sub_81154B8:
    push {lr}
    ldrb r0, [r5,#0x10]
    cmp r0, #2
    bne locret_81154D4
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_81154D4
    mov r0, #3
    strb r0, [r5,#0x10]
    mov r0, #1
    bl object_setFlag // (int a1) -> void
locret_81154D4:
    pop {pc}
    .balign 4, 0x00
dword_81154D8:    .word 0xC000000
off_81154DC:    .word dword_8115330
dword_81154E0:    .word 0x280000
    .word 0xFFFF6000
dword_81154E8:    .word 0x80000
    .byte 0, 0, 0, 0
    .word sub_8016380+1
    .word sub_811555C+1
    .word sub_80165C2+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_811557C+1
    .word sub_81097BA+1
    .word sub_8109804+1
    .word loc_81151A0+1
dword_8115520:    .word 0x7000, 0x8000, 0x9000, 0xA000, 0xB000, 0xC000, 0x80000
    .word 0x85000, 0x90000, 0xA5000, 0xB0000, 0xB5000, 0x1E1E1E1E, 0x4031E1E
    .word 0x5040404
.endfunc // sub_81154B8

.func
.thumb_func
sub_811555C:
    push {lr}
    ldr r0, [r5,#0x54]
    mov r1, #0xa
    strb r1, [r0,#7]
    bl sub_8001532
    mov r1, #2
    and r1, r0
    sub r1, #1
    str r1, [r5,#0x60]
    mov r0, #0
    mov r1, #0x6c 
    strh r0, [r5,r1]
    bl sub_80165B8
    pop {pc}
.endfunc // sub_811555C

loc_811557C:
    push {r4,r6,lr}
    ldr r1, off_811558C // =off_8115590 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .balign 4, 0x00
off_811558C:    .word off_8115590
off_8115590:    .word sub_8115598+1
    .word sub_8115654+1
.func
.thumb_func
sub_8115598:
    push {lr}
    mov r0, #0
    str r0, [r5,#0x68]
    bl object_getFlag // () -> int
    ldr r1, dword_81156E0 // =0xA000 
    tst r0, r1
    bne loc_81155EC
    mov r0, #0x68 
    mov r1, #0x9d
    mov r2, #0xa2
    bl sub_8109630
    ldrb r2, [r5,#0x13]
    mov r0, #1
    lsl r0, r2
    tst r0, r1
    bne loc_81155EC
    ldrb r0, [r5,#0x13]
    bl sub_810971A
    cmp r0, #0
    beq loc_81155EC
    ldrb r2, [r4,#0x16]
    ldr r1, dword_81156E4 // =dword_8115520 
    ldrb r0, [r1,r2]
    strb r0, [r7,#0xc]
    ldr r1, off_81156E8 // =dword_8115520+48 
    ldrb r0, [r1,r2]
    strh r0, [r7,#0x18]
    lsl r2, r2, #2
    ldr r1, off_81156EC // =dword_8115520+24 
    ldr r0, [r1,r2]
    str r0, [r7,#0x30]
    mov r0, #0xb
    bl sub_8011680
    mov r0, #1
    ldrb r1, [r5,#0x13]
    lsl r0, r1
    str r0, [r5,#0x68]
    b locret_8115652
loc_81155EC:
    mov r0, #0
    strb r0, [r7,#0x1a]
    bl object_getFlag // () -> int
    ldr r1, dword_81156E0 // =0xA000 
    tst r0, r1
    beq loc_8115614
    ldr r1, dword_81156F0 // =0x8000 
    tst r0, r1
    beq loc_811560A
    mov r0, #0
    mov r1, #0x6c 
    strh r0, [r5,r1]
    mov r0, #4
    strb r0, [r6]
loc_811560A:
    bl sub_81156AC
    cmp r0, #0
    beq loc_811564E
    b loc_811561C
loc_8115614:
    bl sub_8115668
    cmp r0, #0
    beq loc_811564E
loc_811561C:
    strb r0, [r7,#0x16]
    strb r1, [r7,#0x17]
    ldrb r2, [r5,#0x13]
    eor r2, r1
    str r2, [r5,#0x64]
    mov r0, #1
    strb r0, [r7,#3]
    ldr r1, off_81156F4 // =dword_8115520 
    ldrb r0, [r4,#0x16]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r7,#0x30]
    ldr r3, off_81156F8 // =dword_81156D0 
    bl sub_81096FA
    str r2, [r7,#0x34]
    str r3, [r7,#0x38]
    mov r0, #0xa
    bl sub_8011680
    bl sub_8109804
    mov r0, #1
    strb r0, [r5,#0x10]
    b locret_8115652
loc_811564E:
    mov r0, #0
    str r0, [r5,#0x64]
locret_8115652:
    pop {pc}
.endfunc // sub_8115598

.func
.thumb_func
sub_8115654:
    push {lr}
    mov r0, #0x6c 
    ldrh r1, [r5,r0]
    add r1, #1
    strh r1, [r5,r0]
    cmp r1, #0x3c 
    blt locret_8115666
    mov r0, #0
    strb r0, [r6]
locret_8115666:
    pop {pc}
.endfunc // sub_8115654

.func
.thumb_func
sub_8115668:
    push {lr}
    bl sub_811567E
.endfunc // sub_8115668

    cmp r0, #0
    bne locret_811567C
    ldr r0, [r5,#0x60]
    neg r0, r0
    str r0, [r5,#0x60]
    bl sub_811567E
locret_811567C:
    pop {pc}
.func
.thumb_func
sub_811567E:
    push {r4,r6,lr}
    ldr r0, [r5,#0x60]
    ldrb r1, [r5,#0x13]
    cmp r1, #2
    beq loc_8115690
    mov r0, #1
    cmp r1, #1
    beq loc_8115690
    sub r0, #2
loc_8115690:
    str r0, [r5,#0x60]
    add r1, r1, r0
    ldrb r0, [r5,#0x12]
    ldr r3, off_81156FC // =dword_81156D0 
    bl sub_81096FA
    push {r0,r1}
    bl object_checkPanelParameters
.endfunc // sub_811567E

    cmp r0, #0
    pop {r0,r1}
    bne locret_81156AA
    mov r0, #0
locret_81156AA:
    pop {r4,r6,pc}
.func
.thumb_func
sub_81156AC:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    ldr r3, off_8115700 // =dword_81156D0 
    bl sub_81096FA
    ldr r4, off_81156C0 // =dword_81156C4 
    bl sub_8015D80
    pop {r4-r7,pc}
off_81156C0:    .word dword_81156C4
dword_81156C4:    .word 0x100FF00, 0x7F, 0x0
dword_81156D0:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
dword_81156E0:    .word 0xA000
dword_81156E4:    .word 0x8115556
off_81156E8:    .word dword_8115520+0x30
off_81156EC:    .word dword_8115520+0x18
dword_81156F0:    .word 0x8000
off_81156F4:    .word dword_8115520
off_81156F8:    .word dword_81156D0
off_81156FC:    .word dword_81156D0
off_8115700:    .word dword_81156D0
dword_8115704:    .word 0x11C04, 0x100001C, 0x8000078, 0xA0001E, 0x3C0801
    .word 0x80200C8, 0xF0005A, 0x780803, 0x80400C8, 0xF0005A
    .word 0x960805
dword_8115730:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B500, 0x58097838
    .word 0x470846FE, 0xBD00, 0x8115804, 0x811581D, 0x8115877
    .word 0x81158A5, 0x81158C3, 0x81158DD, 0x81097BB, 0x7878B500
    .word 0xD1142800, 0x70782001, 0x74282001, 0xFC9BF704, 0x42084945
    .word 0xF000D006, 0x4200F878, 0x75B8D002, 0xE00475F9, 0x7C886AF9
    .word 0x75B87CC9, 0x8A3875F9, 0x82383801, 0x2002D10C, 0x203C7428
    .word 0xF8BEF6F9, 0x82388A78, 0x30FF2089, 0xFEB0F6EA, 0x80382004
    .word 0xF84BF000, 0xB510BD00, 0x38028A78, 0x42888A39, 0x8A38D1FF
    .word 0x82383801, 0x6AB8D109, 0x7DBA68B9, 0xF7A27DFB, 0x203FFF8B
    .word 0x20088238, 0xF0008038, 0xBD10F834, 0x8A38B500, 0xDB01283C
    .word 0xF82DF000, 0x38018A38, 0xD1038238, 0x74282003, 0x8038200C
    .word 0xB510BD00, 0xFA91F6ED, 0x42082180, 0x2004D005, 0x20037428
    .word 0x20108238, 0xBD108038, 0x8A38B500, 0x82383801, 0x6AB8D110
    .word 0xFF82F7A2, 0x74282000, 0x82388B38, 0xFC37F704, 0x42084913
    .word 0x8B38D002, 0x8238303C, 0x80382014, 0xB500BD00, 0x30017B38
    .word 0x21047338, 0xD1074208, 0x7DF97DB8, 0x7DEB7DAA, 0x22044053
    .word 0xFE9CF7F3, 0xB5F0BD00, 0xF7F34B07, 0xF700FEE4, 0xBDF0F9AF
    .word 0x20, 0x0, 0x0
dword_8115944:    .word 0x20, 0x2000, 0x8115938, 0x8016381, 0x80165B9, 0x81159C5
    .word 0x80166AF, 0x8016B03, 0x8016CE9, 0x8016B37, 0x8016B73, 0x8115A03
    .word 0x81097BB, 0x81157F1, 0x8109953, 0xA0032, 0xA0078, 0xA00C8
    .word 0xA00DC, 0xA0096, 0xA00DC, 0x64646464, 0x3C3C6464, 0x3C3C3C3C
    .word 0x6060606, 0xB4B40606, 0xB4B4B4B4, 0x6DA8B550, 0xA17D84, 0x58764E7F
    .word 0xFEE3F7A2, 0xBD506628, 0xF700B500, 0x68A8FDFC, 0xD1042808, 0x28006E28
    .word 0xF7A2D001, 0xBD00FEE6
.endfunc // sub_81156AC

.func
.thumb_func
sub_81159DC:
    push {lr}
    bl battle_isPaused
    bne locret_8115A00
    bl battle_isTimeStop
    bne locret_8115A00
    ldr r0, [r5,#0x64]
    cmp r0, #0
    beq locret_8115A00
    sub r0, #1
    str r0, [r5,#0x64]
    mov r1, #2
    tst r0, r1
    beq locret_8115A00
    mov r0, #0xf
    bl sub_8002ED0
locret_8115A00:
    pop {pc}
.endfunc // sub_81159DC

    push {r4,r6,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_8115BBC // =0x8000 
    tst r0, r1
    bne locret_8115A18
    ldr r1, off_8115A1C // =off_8115A20 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
locret_8115A18:
    pop {r4,r6,pc}
    .balign 4, 0x00
off_8115A1C:    .word off_8115A20
off_8115A20:    .word sub_8115A2C+1
    .word sub_8115A5C+1
    .word sub_8115A96+1
.func
.thumb_func
sub_8115A2C:
    push {lr}
    bl object_getFlipDirection_800E2CA // () -> int
    ldrb r1, [r5,#0x12]
    add r0, r0, r1
    ldrb r1, [r5,#0x13]
    bl object_getPanelParameters
.endfunc // sub_8115A2C

    ldr r1, off_8115BC0 // =start_ 
    ldrb r2, [r5,#0x16]
    cmp r2, #0
    beq loc_8115A46
    ldr r1, off_8115BC4 // =LCDControl 
loc_8115A46:
    mov r3, #4
    tst r0, r1
    beq loc_8115A4E
    mov r3, #8
loc_8115A4E:
    strb r3, [r6]
    mov r0, #0xf0
    str r0, [r7,#0x10]
    mov r0, #9
    bl sub_8011680
    pop {pc}
.func
.thumb_func
sub_8115A5C:
    push {lr}
    ldrb r1, [r4,#0x16]
    cmp r1, #0
    beq loc_8115A90
    ldr r0, off_8115BC8 // =dword_8115944+84 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0x12
    strb r0, [r7,#0xc]
    mov r0, #0x13
    strb r0, [r7,#0xd]
    ldr r0, off_8115BCC // =sub_8115AD0+1 
    cmp r1, #0
    bne loc_8115A7E
    ldr r0, off_8115BD0 // =sub_8015C48+1 
loc_8115A7E:
    str r0, [r7,#0x28]
    mov r0, #3
    str r0, [r7,#0x30]
    str r0, [r7,#0x34]
    mov r0, #0xb
    bl sub_8011680
    bl sub_8109952
loc_8115A90:
    mov r0, #8
    strb r0, [r6]
    pop {pc}
.endfunc // sub_8115A5C

.func
.thumb_func
sub_8115A96:
    push {lr}
    ldrb r1, [r4,#0x16]
    ldr r0, dword_8115BD4 // =dword_8115944 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    ldr r0, off_8115BD8 // =dword_8115944+96 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x12]
    ldr r0, dword_8115BDC // =dword_8115944 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    lsl r1, r1, #2
    ldr r0, off_8115BE0 // =dword_8115944+60 
    ldr r0, [r0,r1]
    str r0, [r7,#8]
    ldr r0, [r5,#0x60]
    str r0, [r7,#0x28]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    str r0, [r7,#0x2c]
    mov r0, #0xa
    bl sub_8011680
    mov r0, #4
    strb r0, [r6]
    pop {pc}
.endfunc // sub_8115A96

.func
.thumb_func
sub_8115AD0:
    push {r4,r6,r7,lr}
    sub sp, sp, #0x1c
    add r0, r7, #0
    mov r1, #1
    mov r2, #0xae
    ldrb r3, [r5,#0x16]
    bl object_getEnemyByNameRange
    add r6, r0, #0
    beq loc_8115B94
    bl object_getFlipDirection_800E2CA // () -> int
    add r4, r0, #0
    mov r0, #0
    str r0, [sp,#0x14]
    ldr r0, dword_8115BE4 // =0xFFFF 
    str r0, [sp,#0x10]
loc_8115AF2:
    ldr r1, [r7]
    cmp r1, r5
    beq loc_8115B30
    ldrb r0, [r1,#0x12]
    add r0, r0, r4
    ldrb r1, [r1,#0x13]
    ldr r3, off_8115BE8 // =dword_8115BA0 
    bl sub_81096FA
    push {r0,r1}
    bl object_checkPanelParameters
    cmp r0, #0
    pop {r0,r1}
    beq loc_8115B30
    ldr r2, [r7]
    ldrh r2, [r2,#0x24]
    ldr r3, [sp,#0x10]
    cmp r2, r3
    bgt loc_8115B30
    beq loc_8115B22
    str r2, [sp,#0x10]
    mov r2, #0
    str r2, [sp,#0x14]
loc_8115B22:
    lsl r1, r1, #4
    orr r0, r1
    ldr r3, [sp,#0x14]
    add r2, r3, #1
    str r2, [sp,#0x14]
    add r3, sp
    strb r0, [r3,#0x18]
loc_8115B30:
    add r7, #4
    sub r6, #1
    bne loc_8115AF2
    ldr r0, [sp,#0x14]
    cmp r0, #1
    blt loc_8115B94
    bgt loc_8115B4E
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    mov r1, sp
    ldrb r1, [r1,#0x18]
    sub r0, r0, r1
    beq loc_8115B98
loc_8115B4E:
    ldr r3, [sp,#0x14]
    add r4, sp, #0x18
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    lsl r1, r1, #4
    orr r0, r1
    add r6, r0, #0
loc_8115B5C:
    ldrb r0, [r4]
    cmp r0, r6
    bne loc_8115B7A
    ldr r0, [sp,#0x14]
    sub r0, #1
    str r0, [sp,#0x14]
    add r2, r4, #0
    push {r3}
loc_8115B6C:
    ldrb r0, [r2,#1]
    strb r0, [r2]
    add r2, #1
    sub r3, #1
    bne loc_8115B6C
    pop {r3}
    sub r4, #1
loc_8115B7A:
    add r4, #1
    sub r3, #1
    bne loc_8115B5C
    bl sub_8001532
    ldr r1, [sp,#0x14]
    svc 6
    add r2, sp, #0x18
    ldrb r0, [r2,r1]
    lsr r1, r0, #4
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1d
    b loc_8115B98
loc_8115B94:
    bl sub_8015C48
loc_8115B98:
    add sp, sp, #0x1c
    pop {r4,r6,r7,pc}
    .byte 0, 0, 0, 0
dword_8115BA0:    .word 0x10, 0xF8800A0, 0x30, 0xF880080
.endfunc // sub_8115AD0

.func
.thumb_func
sub_8115BB0:
    mov r0, #0x18
    str r0, [r5,#0x64]
    mov pc, lr
    .balign 4, 0x00
    .word dword_8115944+0x3C
dword_8115BBC:    .word 0x8000
off_8115BC0:    .word start_
off_8115BC4:    .word LCDControl
off_8115BC8:    .word dword_8115944+0x54
off_8115BCC:    .word sub_8115AD0+1
off_8115BD0:    .word sub_8015C48+1
dword_8115BD4:    .word 0x811599E
off_8115BD8:    .word dword_8115944+0x60
dword_8115BDC:    .word 0x81159AA
off_8115BE0:    .word dword_8115944+0x3C
dword_8115BE4:    .word 0xFFFF
off_8115BE8:    .word dword_8115BA0
dword_8115BEC:    .word 0x31D04, 0x100001D, 0x6000064, 0x8C0028, 0x3C0601
    .word 0x60200B4, 0xDC0050, 0x640603, 0x60400B4, 0x1040050
    .word 0x780605
dword_8115C18:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x4903B5F0, 0x58097838
    .word 0x470846FE, 0xBDF0, 0x8115CEC, 0x8115CF9, 0x8115D59
    .word 0x81097B5, 0x7878B510, 0xD1054200, 0x38018A78, 0xD1268278
    .word 0x70782001, 0x38018A38, 0xD1118238, 0xF6F82010, 0x2002FE61
    .word 0xF0007428, 0xF000F82A, 0x200BF83F, 0xF6EA30FF, 0x2004FC4F
    .word 0x20008038, 0xE00E7078, 0x21048A38, 0xD10A4208, 0xFAC3F6F8
    .word 0x18407CA9, 0x7DAB7CE9, 0x40537DEA, 0xF7F32204, 0xBD10FC85
    .word 0xF6EDB550, 0x2180F846, 0xD0074208, 0x66682000, 0x82388B38
    .word 0x74282004, 0x80382008, 0xB5F0BD50, 0x89798938, 0x43080409
    .word 0xF6F81C06, 0x7CA9FAA2, 0x7CE91840, 0x230078BA, 0x4F034C02
    .word 0xFAE9F7AF, 0xBDF0, 0x705FF04, 0x3, 0x7DA8B5F0
    .word 0x40487DE9, 0xB4010200, 0xFA8BF6F8, 0x18407CA9, 0xF6F87CE9
    .word 0x1C0AFA5C, 0x23001C01, 0x4C02BC01, 0xF7CA4304, 0xBDF0FC14
    .word 0x60216, 0x0, 0x0, 0x0
    .word sub_8016380+1
    .word sub_81162AE+1
    .word sub_80165C2+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_8115E4C+1
    .word sub_81097B4+1
dword_8115E08:    .word 0x8115CD9, 0x8109975, 0x8109805, 0x78643C28, 0x7850
    .word 0xA0A0A0A, 0xA0A, 0x1010101, 0x101, 0x1824303C
    .word 0x1818, 0x3040405, 0x303, 0x1E1E1E1E, 0x1E1E
    .word 0x1824303C, 0x1818
.endfunc // sub_8115BB0

loc_8115E4C:
    push {r4,r6,lr}
    ldr r1, off_8115E5C // =off_8115E60 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4,r6,pc}
    .balign 4, 0x00
off_8115E5C:    .word off_8115E60
off_8115E60:    .word loc_8115E6C+1
    .word sub_8115F2E+1
    .word sub_8115F74+1
loc_8115E6C:
    push {r4-r7,lr}
    mov r0, #0x60 
    ldr r1, off_8115E80 // =off_8115E84 
    ldrb r0, [r5,r0]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    pop {r4-r7,pc}
    .byte 0, 0, 0, 0
off_8115E80:    .word off_8115E84
off_8115E84:    .word sub_8115E94+1
    .word sub_8115EBC+1
    .word sub_8115EDC+1
    .word sub_8115EF4+1
.func
.thumb_func
sub_8115E94:
    push {r4-r7,lr}
    bl sub_801A074 // () -> void
    mov r0, #0x6b 
    ldrb r1, [r5,r0]
    add r1, #1
    strb r1, [r5,r0]
    cmp r1, #0x3c 
    bne locret_8115EBA
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #5
    strb r0, [r5,#0x10]
    mov r0, #0x44 
    add r0, #0xff
    bl sound_play // () -> void
    mov r0, #4
    str r0, [r5,#0x60]
locret_8115EBA:
    pop {r4-r7,pc}
.endfunc // sub_8115E94

.func
.thumb_func
sub_8115EBC:
    push {r4-r7,lr}
    bl sub_801A074 // () -> void
    bl sub_8002DEA
    mov r1, #0x80
    tst r0, r1
    beq locret_8115EDA
    mov r0, #4
    strb r0, [r5,#0x10]
    mov r0, #1
    bl sub_801A07C
    mov r0, #8
    str r0, [r5,#0x60]
locret_8115EDA:
    pop {r4-r7,pc}
.endfunc // sub_8115EBC

.func
.thumb_func
sub_8115EDC:
    push {r4-r7,lr}
    mov r0, #0x6b 
    ldrb r1, [r5,r0]
    add r1, #1
    strb r1, [r5,r0]
    cmp r1, #0x3c 
    bne locret_8115EF2
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #0xc
    str r0, [r5,#0x60]
locret_8115EF2:
    pop {r4-r7,pc}
.endfunc // sub_8115EDC

.func
.thumb_func
sub_8115EF4:
    push {r4-r7,lr}
    bl object_getFlag // () -> int
    ldr r1, dword_81162C0 // =0xA000 
    tst r0, r1
    beq loc_8115F08
    mov r0, #0x6b 
    mov r1, #0
    strb r1, [r5,r0]
    b loc_8115F24
loc_8115F08:
    mov r0, #0x6b 
    ldrb r1, [r5,r0]
    add r1, #1
    strb r1, [r5,r0]
    ldr r3, off_81162C4 // =dword_8115E08+44 
    ldrb r2, [r4,#0x16]
    ldrb r2, [r3,r2]
    cmp r1, r2
    ble loc_8115F24
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #4
    strb r0, [r6]
    b loc_8115F28
loc_8115F24:
    mov r0, #8
    strb r0, [r6]
loc_8115F28:
    bl sub_800F2C6
    pop {r4-r7,pc}
.endfunc // sub_8115EF4

.func
.thumb_func
sub_8115F2E:
    push {lr}
    mov r0, #0x64 
    mov r1, #0xa9
    mov r2, #0xae
    bl sub_8109630
    cmp r0, #0
    bne loc_8115F6E
    ldrb r1, [r4,#0x16]
    ldr r0, off_81162C8 // =dword_8115E08+60 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x18]
    ldr r0, off_81162CC // =dword_8115E08+12 
    ldrb r0, [r0,r1]
    strh r0, [r7,#8]
    ldr r0, off_81162D0 // =dword_8115E08+20 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0xa]
    ldr r0, off_81162D4 // =dword_8115E08+52 
    ldrb r0, [r0,r1]
    strh r0, [r7,#0x10]
    mov r0, #0x10
    strh r0, [r7,#0x12]
    mov r0, #1
    strb r0, [r5,#0x10]
    mov r0, #1
    str r0, [r5,#0x64]
    mov r0, #0xa
    bl sub_8011680
    mov r0, #0
    strb r0, [r7,#1]
loc_8115F6E:
    mov r0, #0
    strb r0, [r6]
    pop {pc}
.endfunc // sub_8115F2E

.func
.thumb_func
sub_8115F74:
    push {lr}
    mov r0, #4
    strb r0, [r5,#0x10]
    ldr r0, off_81162D8 // =sub_8115FCE+1 
    str r0, [r7,#0x28]
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    str r0, [r7,#0x2c]
    ldr r0, off_81162DC // =dword_8115E08+36 
    ldrb r1, [r4,#0x16]
    ldrb r0, [r0,r1]
    add r3, r0, #0
    bl object_getFlag // () -> int
    ldr r1, dword_81162C0 // =0xA000 
    tst r0, r1
    beq loc_8115F9E
    add r3, #0x3c 
loc_8115F9E:
    add r0, r3, #0
    strh r0, [r7,#0x18]
    mov r0, #2
    strb r0, [r7,#3]
    mov r0, #0x14
    strb r0, [r7,#0xc]
    mov r0, #0x15
    strb r0, [r7,#0xd]
    ldr r0, off_81162E0 // =dword_8115E08+28 
    ldrb r1, [r4,#0x16]
    ldrb r0, [r0,r1]
    str r0, [r7,#0x30]
    str r0, [r7,#0x34]
    mov r0, #0xb
    bl sub_8011680
    bl loc_8109974
    mov r0, #0
    strb r0, [r6]
    b locret_8115FCC
    mov r0, #0
    strb r0, [r6]
locret_8115FCC:
    pop {pc}
.endfunc // sub_8115F74

.func
.thumb_func
sub_8115FCE:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB1C
.endfunc // sub_8115FCE

    bl object_getFlag // () -> int
    ldr r1, dword_81162C0 // =0xA000 
    tst r0, r1
    beq loc_8116004
    bl sub_81160B0
    tst r0, r0
    bne loc_8115FF2
    mov r2, #0x69 
    ldrb r0, [r5,r2]
    mov r2, #0x6a 
    ldrb r1, [r5,r2]
loc_8115FF2:
    mov r2, #0x69 
    strb r0, [r5,r2]
    mov r2, #0x6a 
    strb r1, [r5,r2]
    push {r0,r1}
    mov r0, #0
    strb r0, [r5,#0x17]
    pop {r0,r1}
    b loc_8116036
loc_8116004:
    bl sub_8116044
    tst r0, r0
    bne loc_8116026
    bl sub_811606A
    tst r0, r0
    bne loc_8116026
    bl sub_8116090
    tst r0, r0
    bne loc_8116036
    mov r2, #0x69 
    ldrb r0, [r5,r2]
    mov r2, #0x6a 
    ldrb r1, [r5,r2]
    b loc_8116036
loc_8116026:
    bl sub_81161B0
    bl sub_8116210
    mov r2, #0x69 
    strb r0, [r5,r2]
    mov r2, #0x6a 
    strb r1, [r5,r2]
loc_8116036:
    push {r0,r1}
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    bl sub_801BB46
    pop {r0,r1}
    pop {r4-r7,pc}
.func
.thumb_func
sub_8116044:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    mov r1, #0x68 
    ldrb r1, [r5,r1]
    lsl r1, r1, #2
    ldr r4, off_81160C0 // =off_81160C4 
    ldr r4, [r4,r1]
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    ldr r3, off_81162E4 // =dword_8116190 
    bl sub_81096FA
    bl sub_8015D80
    pop {r4-r7,pc}
.endfunc // sub_8116044

.func
.thumb_func
sub_811606A:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    mov r1, #0x68 
    ldrb r1, [r5,r1]
    lsl r1, r1, #2
    ldr r4, off_81160DC // =off_81160E0 
    ldr r4, [r4,r1]
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    ldr r3, off_81162E8 // =dword_8116190 
    bl sub_81096FA
    bl sub_8015D80
    pop {r4-r7,pc}
.endfunc // sub_811606A

.func
.thumb_func
sub_8116090:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    ldrb r1, [r0,#0x13]
    ldrb r0, [r0,#0x12]
    ldr r3, off_81162EC // =dword_8116190 
    bl sub_81096FA
    ldr r4, off_81160F8 // =dword_8116180 
    bl sub_8015D80
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_8116090

.func
.thumb_func
sub_81160B0:
    push {r4-r7,lr}
    ldr r3, off_81162F0 // =dword_81161A0 
    bl sub_81096FA
    bl sub_8015C94
.endfunc // sub_81160B0

    pop {r4-r7,pc}
    .byte 0, 0
off_81160C0:    .word off_81160C4
off_81160C4:    .word dword_8116100
    .word dword_8116110
    .word dword_8116120
    .word dword_8116130
    .word dword_8116140
    .word dword_8116140
off_81160DC:    .word off_81160E0
off_81160E0:    .word dword_8116150
    .word dword_8116150
    .word dword_8116150
    .word dword_8116150
    .word dword_8116160
    .word dword_8116170
off_81160F8:    .word dword_8116180
    .byte 0, 0, 0, 0
dword_8116100:    .word 0x1FFFF01, 0x7F0101, 0x0, 0x0
dword_8116110:    .word 0x1FFFFFF, 0x7F0101, 0x0, 0x0
dword_8116120:    .word 0xFF01FFFF, 0x7F0101, 0x0, 0x0
dword_8116130:    .word 0xFF01FFFF, 0x7F01FF, 0x0, 0x0
dword_8116140:    .word 0xFF01FFFF, 0x10101FF, 0x7F, 0x0
dword_8116150:    .word 0x100FF, 0x7F, 0x0, 0x0
dword_8116160:    .word 0x7F00FF, 0x0, 0x0, 0x0
dword_8116170:    .word 0x7F0001, 0x0, 0x0, 0x0
dword_8116180:    .word 0xFF01FFFF, 0x10101FF, 0x100FF, 0x7F
dword_8116190:    .word 0x0
    .word 0xF880080, 0x0
    .word 0xF880080
dword_81161A0:    .word 0x0
    .word 0xF8800A0, 0x20, 0xF880080
.func
.thumb_func
sub_81161B0:
    push {r4-r7,lr}
    push {r0,r1}
    push {r0,r1}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    ldrb r2, [r0,#0x12]
    ldrb r3, [r0,#0x13]
    pop {r0,r1}
    sub r0, r0, r2
    sub r1, r1, r3
    push {r0,r1}
    bl sub_800E2C0
    add r2, r0, #0
    pop {r0,r1}
    mul r0, r2
    cmp r1, #0
    bne loc_81161EA
    cmp r0, #1
    bge loc_81161E4
    mov r0, #0
    strb r0, [r5,#0x17]
    b loc_811620C
loc_81161E4:
    mov r0, #1
    strb r0, [r5,#0x17]
    b loc_811620C
loc_81161EA:
    cmp r0, #1
    bge loc_81161FE
    cmp r1, #1
    bge loc_81161F8
    mov r0, #0
    strb r0, [r5,#0x17]
    b loc_811620C
loc_81161F8:
    mov r0, #0
    strb r0, [r5,#0x17]
    b loc_811620C
loc_81161FE:
    cmp r1, #1
    bge loc_8116208
    mov r0, #1
    strb r0, [r5,#0x17]
    b loc_811620C
loc_8116208:
    mov r0, #1
    strb r0, [r5,#0x17]
loc_811620C:
    pop {r0,r1}
    pop {r4-r7,pc}
.endfunc // sub_81161B0

.func
.thumb_func
sub_8116210:
    push {r4-r7,lr}
    push {r0,r1}
    bl sub_800E2C0
    push {r0}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    ldrb r2, [r0,#0x12]
    ldrb r3, [r0,#0x13]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    sub r0, r0, r2
    pop {r2}
    mul r0, r2
    sub r1, r1, r3
    cmp r1, #0
    bne loc_811624C
    cmp r0, #1
    bge loc_8116244
    mov r0, #4
    mov r1, #0x68 
    strb r0, [r5,r1]
    b loc_8116276
loc_8116244:
    mov r0, #5
    mov r1, #0x68 
    strb r0, [r5,r1]
    b loc_8116276
loc_811624C:
    cmp r0, #1
    bge loc_8116264
    cmp r1, #1
    bge loc_811625C
    mov r0, #0
    mov r1, #0x68 
    strb r0, [r5,r1]
    b loc_8116276
loc_811625C:
    mov r0, #2
    mov r1, #0x68 
    strb r0, [r5,r1]
    b loc_8116276
loc_8116264:
    cmp r1, #1
    bge loc_8116270
    mov r0, #1
    mov r1, #0x68 
    strb r0, [r5,r1]
    b loc_8116276
loc_8116270:
    mov r0, #3
    mov r1, #0x68 
    strb r0, [r5,r1]
loc_8116276:
    pop {r0,r1}
    pop {r4-r7,pc}
.endfunc // sub_8116210

    push {r4-r7,lr}
    mov r0, #0
    str r0, [r5,#0x64]
    bl change_20013F0_800151C // () -> int
    mov r1, #3
    and r0, r1
    mov r1, #0x68 
    strb r0, [r5,r1]
    ldrb r0, [r5,#0x12]
    ldrb r1, [r5,#0x13]
    mov r2, #0x69 
    strb r0, [r5,r2]
    mov r2, #0x6a 
    strb r1, [r5,r2]
    mov r0, #0x6b 
    mov r1, #0
    strb r1, [r5,r0]
    mov r0, #0
    str r0, [r5,#0x60]
    mov r0, #0x40 
    bl object_setFlag // (int a1) -> void
    pop {r4-r7,pc}
.func
.thumb_func
sub_81162AA:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_81162AA

.func
.thumb_func
sub_81162AE:
    push {r4-r7,lr}
    bl sub_80165B8
    ldr r0, dword_81162F4 // =0x800000 
    bl object_setFlag // (int a1) -> void
    bl sub_801A074 // () -> void
    pop {r4-r7,pc}
dword_81162C0:    .word 0xA000
off_81162C4:    .word dword_8115E08+0x2C
off_81162C8:    .word dword_8115E08+0x3C
off_81162CC:    .word dword_8115E08+0xC
off_81162D0:    .word dword_8115E08+0x14
off_81162D4:    .word dword_8115E08+0x34
off_81162D8:    .word sub_8115FCE+1
off_81162DC:    .word dword_8115E08+0x24
off_81162E0:    .word dword_8115E08+0x1C
off_81162E4:    .word dword_8116190
off_81162E8:    .word dword_8116190
off_81162EC:    .word dword_8116190
off_81162F0:    .word dword_81161A0
dword_81162F4:    .word 0x800000
dword_81162F8:    .word 0x11F04, 0x1F, 0x8000001, 0x1003C, 0x3C0801, 0x8020001
    .word 0x10078, 0x780803, 0x8040001, 0x100C8, 0xC80805, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0
    .word 0x0, 0x0
    .word sub_8116470+1
    .word sub_80165B8+1
    .word sub_811648C+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_811649E+1
.endfunc // sub_81162AE

.func
.thumb_func
sub_8116414:
    push {lr}
    bl sub_801A074 // () -> void
    mov r0, #7
    strb r0, [r5,#0x12]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    mov r0, #0
    mov r1, #0x60 
    strh r0, [r5,r1]
    mov r1, #0x62 
    strh r0, [r5,r1]
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x16]
    lsl r0, r0, #1
    ldr r1, off_8116458 // =dword_811645C 
    ldrh r0, [r1,r0]
    mov r2, #0x62 
    strh r0, [r5,r2]
    add r1, r0, #0
    ldr r0, dword_81165B8 // =0x4000 
    svc 6
    mov r1, #0x66 
    strh r0, [r5,r1]
    ldr r0, [r5,#0x58]
    ldrb r0, [r0,#0x16]
    lsl r0, r0, #1
    ldr r1, off_8116464 // =dword_8116468 
    ldrh r0, [r1,r0]
    mov r2, #0x64 
    strh r0, [r5,r2]
    pop {pc}
off_8116458:    .word dword_811645C
dword_811645C:    .word 0x3C0028
    .word 0x50
off_8116464:    .word dword_8116468
dword_8116468:    .word 0x5A0064
    .word 0x3C
.endfunc // sub_8116414

.func
.thumb_func
sub_8116470:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_811648A
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_811648A:
    pop {pc}
.endfunc // sub_8116470

.func
.thumb_func
sub_811648C:
    push {lr}
    bl sub_800A11C
    add r0, r5, #0
    bl sub_80077B4
    mov r0, #8
    str r0, [r5,#8]
    pop {pc}
.endfunc // sub_811648C

loc_811649E:
    push {r4-r7,lr}
    bl battle_isBattleOver
    tst r0, r0
    bne loc_81164CC
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq loc_81164CC
    ldrh r0, [r0,#0x24]
    tst r0, r0
    beq loc_81164CC
    ldr r4, [r5,#0x58]
    mov r6, #0x80
    add r6, r6, r4
    ldr r1, off_81164E4 // =off_81164E8 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
loc_81164CC:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #0x60 
    ldrh r0, [r5,r0]
    mov r1, #0x66 
    ldrh r1, [r5,r1]
    mul r0, r1
    bl sub_801DFA2
    pop {r4-r7,pc}
off_81164E4:    .word off_81164E8
off_81164E8:    .word sub_81164EC+1
.func
.thumb_func
sub_81164EC:
    push {r4-r7,lr}
    ldrb r0, [r6,#2]
    cmp r0, #0
    bne loc_8116502
    mov r0, #1
    strb r0, [r6,#2]
    mov r0, #0x64 
    ldrh r0, [r5,r0]
    strh r0, [r6,#8]
    bl sub_8116510
loc_8116502:
    ldrh r0, [r6,#8]
    sub r0, #1
    strh r0, [r6,#8]
    bne locret_811650E
    mov r0, #0
    strb r0, [r6,#2]
locret_811650E:
    pop {r4-r7,pc}
.endfunc // sub_81164EC

.func
.thumb_func
sub_8116510:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x16]
    mov r1, #1
    eor r0, r1
    bl sub_80103F8
    tst r0, r0
    beq locret_811654E
    push {r0}
    ldrb r0, [r4,#0x16]
    lsl r0, r0, #2
    ldr r1, off_8116550 // =off_8116554 
    ldr r0, [r1,r0]
    push {r0}
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    pop {r1}
    ldrb r0, [r1,r0]
    push {r0}
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    ldr r1, off_8116590 // =loc_8116594 
    ldrb r1, [r1,r0]
    pop {r0}
    pop {r2}
    bl sub_80DFAD6
locret_811654E:
    pop {r4-r7,pc}
off_8116550:    .word off_8116554
off_8116554:    .word dword_8116560
    .word dword_8116570
    .word dword_8116580
dword_8116560:    .word 0x30200, 0x2000302, 0x3020003, 0x30200
dword_8116570:    .word 0x30200, 0x2000302, 0x3020003, 0x30200
dword_8116580:    .word 0x4030200, 0x4030200, 0x4030200, 0x4030200
off_8116590:    .word loc_8116594
.endfunc // sub_8116510

loc_8116594:
    lsl r0, r0, #4
    // <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r0, #8
    lsl r0, r0, #4
    // <mkdata>
    .hword 0x2 // mov r2, r0
    lsl r1, r0, #8
    lsl r0, r0, #4
    // <mkdata>
    .hword 0x2 // mov r2, r0
    mov r0, #0x60 
    ldrh r0, [r5,r0]
    mov r1, #0x62 
    ldrh r1, [r5,r1]
    cmp r1, r0
    bgt locret_81165B4
    mov r0, #0
    strh r0, [r5,#0x24]
locret_81165B4:
    mov pc, lr
    .balign 4, 0x00
dword_81165B8:    .word 0x4000
dword_81165BC:    .word 0x11F04, 0x1F, 0x800001E, 0x32003C, 0x3C0801, 0x8020046
    .word 0x640078, 0x780803, 0x8040064, 0x6400C8, 0xC80805, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0
    .word 0x0
    .word sub_81166F2+1
    .word sub_80165B8+1
    .word sub_811670E+1
    .word sub_80166AE+1
    .word byte_8016B03
    .word sub_8016CE8+1
    .word sub_8016B36+1
    .word sub_8016B72+1
    .word loc_8116720+1
    push {lr}
    bl sub_801A074 // () -> void
    mov r0, #7
    strb r0, [r5,#0x12]
    bl sub_800E29C // () -> void
    bl sub_801A04C
    ldrh r1, [r5,#0x26]
    ldr r0, dword_8116888 // =0x4000 
    svc 6
    mov r1, #0x80
    strh r0, [r5,r1]
    pop {pc}
.func
.thumb_func
sub_81166F2:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    bl sub_800139A
    lsr r0, r0, #2
    bcc locret_811670C
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
locret_811670C:
    pop {pc}
.endfunc // sub_81166F2

.func
.thumb_func
sub_811670E:
    push {lr}
    bl sub_800A11C
    add r0, r5, #0
    bl sub_80077B4
    mov r0, #8
    str r0, [r5,#8]
    pop {pc}
.endfunc // sub_811670E

loc_8116720:
    push {r4,r6,lr}
    ldr r4, [r5,#0x58]
    mov r6, #0x80
    add r6, r6, r4
    ldr r1, off_8116750 // =off_8116754 
    ldrb r0, [r6]
    ldr r1, [r1,r0]
    mov lr, pc
    bx r1
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    ldrh r0, [r5,#0x24]
    ldrh r1, [r5,#0x26]
    mov r2, #0x80
    ldrh r2, [r5,r2]
    sub r1, r1, r0
    add r0, r1, #0
    mul r0, r2
    bl sub_801DFA2
    pop {r4,r6,pc}
    .byte 0, 0
off_8116750:    .word off_8116754
off_8116754:    .word sub_8116758+1
.func
.thumb_func
sub_8116758:
    push {lr}
    ldrb r0, [r6,#2]
    cmp r0, #0
    bne loc_811676C
    mov r0, #1
    strb r0, [r6,#2]
    mov r0, #0x1e
    strh r0, [r6,#8]
    bl sub_811677A
loc_811676C:
    ldrh r0, [r6,#8]
    sub r0, #1
    strh r0, [r6,#8]
    bne locret_8116778
    mov r0, #0
    strb r0, [r6,#2]
locret_8116778:
    pop {pc}
.endfunc // sub_8116758

.func
.thumb_func
sub_811677A:
    push {r4,r6,r7,lr}
    mov r0, #0x60 
    add r0, r0, r5
    mov r3, #8
loc_8116782:
    ldr r1, [r0]
    cmp r1, #0
    beq loc_8116790
    add r0, #4
    sub r3, #1
    bne loc_8116782
    b locret_81167B6
loc_8116790:
    add r7, r0, #0
    bl sub_81167D2
    ldr r4, off_81167C0 // =unk_81167C8 
    ldrb r4, [r4,r0]
    lsl r4, r4, #8
    orr r4, r0
    ldr r6, dword_81167C4 // =0x81167CD 
    ldrb r6, [r6,r0]
    ldr r2, dword_811688C // =0x10000 
    ldr r3, dword_8116890 // =0xF880080 
    bl sub_8015C94
    cmp r0, #0
    beq locret_81167B6
    mov r2, #0
    mov r3, #0
    bl sub_80D464A
locret_81167B6:
    pop {r4,r6,r7,pc}
    .word 0
    .byte 0, 0, 0, 0
off_81167C0:    .word unk_81167C8
dword_81167C4:    .word 0x81167CD
unk_81167C8:    .byte 0x78 
    .byte 0x64 
    .byte 0x5A 
    .byte 0x3C 
    .byte 0x5A 
    .byte 0x1E
    .byte 0x32 
    .byte 0x46 
    .byte 0x5A 
    .byte  0
.endfunc // sub_811677A

.func
.thumb_func
sub_81167D2:
    push {lr}
    bl sub_8116834
    cmp r0, #4
    beq locret_81167EE
    bl sub_8001532
    mov r1, #0xf
    and r0, r1
    ldrb r1, [r5,#4]
    lsl r1, r1, #4
    add r0, r0, r1
    ldr r1, off_81167F0 // =dword_81167F4 
    ldrb r0, [r1,r0]
locret_81167EE:
    pop {pc}
off_81167F0:    .word dword_81167F4
dword_81167F4:    .word 0x0, 0x0, 0x0, 0x0
    .word 0x1010101, 0x1010101, 0x0, 0x0
    .word 0x2020202, 0x2020202, 0x1010101, 0x0
    .word 0x3030303, 0x3030303, 0x1020202, 0x101
.endfunc // sub_81167D2

.func
.thumb_func
sub_8116834:
    push {r4,r6,r7,lr}
    mov r7, #0
    mov r0, #0x60 
    add r0, r0, r5
    mov r3, #8
    mov r4, #0
    mov r6, #0
loc_8116842:
    ldr r1, [r0]
    cmp r1, #0
    beq loc_8116858
    add r4, #1
    ldrb r2, [r1,#4]
    cmp r2, #4
    beq loc_8116874
    ldrb r1, [r1,#6]
    cmp r1, #1
    blt loc_8116858
    add r6, #1
loc_8116858:
    add r0, #4
    sub r3, #1
    bne loc_8116842
    cmp r4, #5
    blt loc_8116874
    cmp r6, #3
    blt loc_8116874
    bl sub_8001532
    mov r1, #7
    and r0, r1
    cmp r0, #4
    bne loc_8116874
    add r7, r0, #0
loc_8116874:
    add r0, r7, #0
    pop {r4,r6,r7,pc}
.endfunc // sub_8116834

.func
.thumb_func
sub_8116878:
    push {lr}
    ldrh r1, [r0,#0x24]
    cmp r1, #0
    ble locret_8116884
    sub r1, #1
    strh r1, [r0,#0x24]
locret_8116884:
    pop {pc}
    .balign 4, 0x00
dword_8116888:    .word 0x4000
dword_811688C:    .word 0x10000
dword_8116890:    .word 0xF880080
.endfunc // sub_8116878

.func
.thumb_func
sub_8116894:
    push {lr}
    ldr r0, off_81168A4 // =off_81168A8 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81168A4:    .word off_81168A8
off_81168A8:    .word sub_81168B4+1
    .word sub_8116904+1
    .word sub_811691C+1
.endfunc // sub_8116894

.func
.thumb_func
sub_81168B4:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x3e 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_81168B4

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_8116900 // =0x390 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xc8
    mov r1, #7
    bl sub_800307C
    bl sub_8116904
    pop {pc}
    .byte 0, 0
off_8116900:    .word 0x390
.func
.thumb_func
sub_8116904:
    push {lr}
    push {r5}
    ldr r5, off_8116918 // =reqBBS_bxo_2001150 
    bl reqBBS_813EE58
    pop {r5}
    bl sprite_update
.endfunc // sub_8116904

    pop {pc}
    .balign 4, 0x00
off_8116918:    .word reqBBS_bxo_2001150
.func
.thumb_func
sub_811691C:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811691C

.func
.thumb_func
sub_8116924:
    push {lr}
    ldr r0, off_8116934 // =off_8116938 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8116934:    .word off_8116938
off_8116938:    .word sub_8116944+1
    .word loc_81169B0+1
    .word sub_8116A3C+1
.endfunc // sub_8116924

.func
.thumb_func
sub_8116944:
    push {lr}
    mov r0, #1
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8116944

    bl sub_8002F90 // () -> void
    mov r0, #0xc
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, off_81169A4 // =0x2D4 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    mov r1, #1
    ldrb r2, [r5,#5]
    tst r2, r2
    beq loc_811698A
    mov r0, #8
    mov r1, #0x23 
loc_811698A:
    strb r0, [r5,#9]
    strb r1, [r5]
    ldr r0, off_81169A8 // =0xB0 
    ldr r1, off_81169AC // =0x40 
    bl sub_800307C
    mov r0, #0xff
    strb r0, [r5,#4]
    mov r0, #6
    strb r0, [r5,#0xc]
    bl loc_81169B0
    pop {pc}
off_81169A4:    .word 0x2D4
off_81169A8:    .word 0xB0
off_81169AC:    .word 0x40
loc_81169B0:
    push {r7,lr}
    ldr r7, off_81169C4 // =byte_200DF20 
    ldr r0, off_81169C8 // =off_81169CC 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {r7,pc}
off_81169C4:    .word byte_200DF20
off_81169C8:    .word off_81169CC
off_81169CC:    .word sub_81169D8+1
    .word sub_8116A04+1
    .word sub_8116A28+1
.func
.thumb_func
sub_81169D8:
    push {lr}
    mov r0, #0x10
    ldrsh r1, [r7,r0]
    tst r1, r1
    bne locret_8116A00
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_8116A00
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
locret_8116A00:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_81169D8

.func
.thumb_func
sub_8116A04:
    push {lr}
    bl sub_8002DEA
    mov r1, #0xc0
    tst r0, r1
    beq locret_8116A26
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    bl sub_8116A44
    mov r0, #8
    strb r0, [r5,#9]
locret_8116A26:
    pop {pc}
.endfunc // sub_8116A04

.func
.thumb_func
sub_8116A28:
    push {lr}
    ldrb r0, [r7]
    cmp r0, #8
    bne loc_8116A34
    mov r0, #8
    strb r0, [r5,#8]
loc_8116A34:
    bl sub_8116A44
.endfunc // sub_8116A28

    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_8116A3C:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8116A3C

.func
.thumb_func
sub_8116A44:
    push {r4-r7,lr}
    ldr r7, off_8116A90 // =dword_8116A94 
    mov r6, #0
loc_8116A4A:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_8116A98 - 0x8116a94)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
.endfunc // sub_8116A44

    add r7, #8
    add r6, #1
    cmp r6, #3
    blt loc_8116A4A
    ldr r7, off_8116AAC // =dword_8116AB0 
    mov r6, #0
loc_8116A62:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_8116AB4 - 0x8116ab0)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
    add r7, #8
    add r6, #1
    cmp r6, #3
    blt loc_8116A62
    ldr r7, off_8116AC8 // =dword_8116ACC 
    mov r6, #0
loc_8116A7A:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_8116AD0 - 0x8116acc)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
    add r7, #8
    add r6, #1
    cmp r6, #2
    blt loc_8116A7A
    pop {r4-r7,pc}
off_8116A90:    .word dword_8116A94
dword_8116A94:    .word 0x80904022
dword_8116A98:    .word 0xE280
    .byte 0x22 
    .byte 0x40 
    .byte 0xB0
    .byte 0x80
    .byte 0x88
    .byte 0xE2
    .balign 4, 0x00
    .byte 0x22 
    .byte 0x80
    .byte 0xD0
    .byte  0
    .byte 0x90
    .byte 0xE2
    .balign 4, 0x00
off_8116AAC:    .word dword_8116AB0
dword_8116AB0:    .word 0x80A0403A
dword_8116AB4:    .word 0xE292
    .byte 0x3A 
    .byte  0
    .byte 0xC0
    .byte 0x40 
    .byte 0x9A
    .byte 0xE2
    .byte 0, 0
    .byte 0x3A 
    .byte 0x80
    .byte 0xD0
    .byte  0
    .byte 0x9E
    .byte 0xE2
    .balign 4, 0x00
off_8116AC8:    .word dword_8116ACC
dword_8116ACC:    .word 0x80A84052
dword_8116AD0:    .word 0xE2A0
    .byte 0x52 
    .byte  0
    .byte 0xC8
    .byte 0x40 
    .byte 0xA8
    .byte 0xE2
    .balign 4, 0x00
loc_8116ADC:
    push {r7,lr}
    ldr r7, off_8116AFC // =byte_200DF20 
    ldr r0, off_8116AEC // =off_8116AF0 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r7,pc}
off_8116AEC:    .word off_8116AF0
off_8116AF0:    .word sub_8116B00+1
    .word sub_8116B9C+1
    .word sub_8116C38+1
off_8116AFC:    .word byte_200DF20
.func
.thumb_func
sub_8116B00:
    push {r4,lr}
    mov r0, #0x23 
    ldrb r1, [r5,#4]
    tst r1, r1
    beq loc_8116B0C
    mov r0, #0x43 
loc_8116B0C:
    strb r0, [r5]
    mov r0, #0
    bl loc_8002774 // (int a1, int a2) -> void
    ldrb r4, [r5,#4]
    cmp r4, #3
    bne loc_8116B24
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    beq loc_8116B24
    mov r4, #8
loc_8116B24:
    add r0, r4, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8116B00

    bl sub_8002F90 // () -> void
    mov r0, #0xd
    bl sub_800304A
    mov r0, #1
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, off_8116B8C // =off_8116B90 
    ldr r0, [r0]
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r1, #0x20 
    ldrb r0, [r5,#5]
    tst r0, r0
    beq loc_8116B76
    ldr r0, off_8116BE8 // =dword_8116BEC 
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    ldrb r1, [r0,r1]
    ldrb r3, [r7,#4]
    ldrb r2, [r5,#4]
    cmp r3, r2
    bne loc_8116B76
    mov r0, #0x1e
    b loc_8116B78
loc_8116B76:
    mov r0, #0x16
loc_8116B78:
    bl sub_800307C
    mov r0, #1
    strb r0, [r5,#0xd]
    mov r0, #0
    strb r0, [r5,#0xc]
    bl sub_8116B9C
    .byte 0x10
    .byte 0xBD
    .balign 4, 0x00
off_8116B8C:    .word off_8116B90
off_8116B90:    .word 0x350
    .word dword_8116B98
dword_8116B98:    .word 0x20
.func
.thumb_func
sub_8116B9C:
    push {lr}
    ldr r0, off_8116BB0 // =off_8116BB4 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .byte 0, 0
off_8116BB0:    .word off_8116BB4
off_8116BB4:    .word sub_8116BC0+1
    .word sub_8116BFC+1
    .word sub_8116C14+1
.endfunc // sub_8116B9C

.func
.thumb_func
sub_8116BC0:
    push {lr}
    mov r0, #0
    mov r1, #8
    bl sub_800308A
    bl sub_80030A8
    ldr r3, off_8116BE8 // =dword_8116BEC 
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r3, [r3,r2]
    cmp r3, r1
    bgt locret_8116BE4
    add r1, r3, #0
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#9]
locret_8116BE4:
    pop {pc}
    .balign 4, 0x00
off_8116BE8:    .word dword_8116BEC
dword_8116BEC:    .word 0x300020
    .word 0x500040
    .word 0x700060
    .word 0x900080
.endfunc // sub_8116BC0

.func
.thumb_func
sub_8116BFC:
    push {lr}
    bl sub_8116C40
    bl sub_8116C78
    ldrb r0, [r7]
    cmp r0, #8
    bne locret_8116C10
    mov r0, #8
    strb r0, [r5,#9]
locret_8116C10:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8116BFC

.func
.thumb_func
sub_8116C14:
    push {lr}
    mov r1, #0x10
    ldrsh r0, [r7,r1]
    lsl r0, r0, #3
    mov r1, #0
    bl sub_800308A
    bl sub_80030A8
    cmp r0, #0
    bge locret_8116C2E
    bl sub_804668A
locret_8116C2E:
    pop {pc}
    .word 0x8116C34, 0x20
.endfunc // sub_8116C14

.func
.thumb_func
sub_8116C38:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8116C38

.func
.thumb_func
sub_8116C40:
    push {r4-r6,lr}
    bl sub_8116CD4
    add r4, r0, #0
    mov r0, #0x16
    mov r1, #2
    neg r1, r1
    mov r3, #0
    ldrb r6, [r7,#4]
    ldrb r2, [r5,#4]
    cmp r6, r2
    bne loc_8116C5E
    mov r0, #0x1e
    mov r1, #2
    mov r3, #1
loc_8116C5E:
    ldrh r2, [r4,#0xc]
    add r2, r2, r1
    tst r3, r3
    beq loc_8116C6C
    cmp r2, r0
    bge loc_8116C72
    b loc_8116C70
loc_8116C6C:
    cmp r2, r0
    ble loc_8116C72
loc_8116C70:
    add r0, r2, #0
loc_8116C72:
    strh r0, [r4,#0xc]
    pop {r4-r6,pc}
    .balign 4, 0x00
.endfunc // sub_8116C40

.func
.thumb_func
sub_8116C78:
    push {r4-r6,lr}
    mov r4, #1
    mov r6, #0xd
    mov r2, #0
    ldrb r0, [r7,#4]
    ldrb r1, [r5,#4]
    cmp r0, r1
    bne loc_8116C8E
    mov r4, #0
    mov r6, #0xc
    mov r2, #1
loc_8116C8E:
    ldrb r0, [r5]
    mov r1, #0x40 
    bic r0, r1
    strb r0, [r5]
    tst r2, r2
    beq loc_8116CBA
    ldr r0, off_8116CC8 // =unk_8116CCC 
    ldrb r1, [r5,#0xc]
    lsl r1, r1, #2
    ldrb r6, [r0,r1]
    add r1, #1
    ldrb r4, [r0,r1]
    ldrb r2, [r5,#0xd]
    sub r2, #1
    strb r2, [r5,#0xd]
    bge loc_8116CBA
    add r1, #1
    ldrb r2, [r0,r1]
    strb r2, [r5,#0xc]
    add r1, #1
    ldrb r2, [r0,r1]
    strb r2, [r5,#0xd]
loc_8116CBA:
    add r0, r6, #0
    bl sub_800304A
    add r0, r4, #0
    bl sprite_setPallete // (int pallete) -> void
    pop {r4-r6,pc}
off_8116CC8:    .word unk_8116CCC
unk_8116CCC:    .byte 0xC
    .byte  0
    .byte  1
    .byte  8
    .byte 0xD
    .byte  1
    .byte  0
    .byte  8
.endfunc // sub_8116C78

.func
.thumb_func
sub_8116CD4:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .byte 0, 0
.endfunc // sub_8116CD4

.func
.thumb_func
sub_8116CE0:
    push {lr}
    ldr r0, off_8116CF0 // =off_8116CF4 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8116CF0:    .word off_8116CF4
off_8116CF4:    .word sub_8116D00+1
    .word sub_8116D6C+1
    .word sub_8116E08+1
.endfunc // sub_8116CE0

.func
.thumb_func
sub_8116D00:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #2
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8116D00

    bl sub_8002F90 // () -> void
    mov r0, #0xc
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, dword_8116D5C // =0x38B 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, dword_8116D60 // =0x11A 
    mov r2, #0
    ldrb r1, [r5,#5]
    tst r1, r1
    beq loc_8116D4E
    ldr r0, off_8116D68 // =0xAA 
    mov r2, #4
loc_8116D4E:
    strb r2, [r5,#9]
    ldr r1, dword_8116D64 // =0x97 
    bl sub_800307C
    bl sub_8116D6C
    .byte  0
    .byte 0xBD
dword_8116D5C:    .word 0x38B
dword_8116D60:    .word 0x11A
dword_8116D64:    .word 0x97
off_8116D68:    .word 0xAA
.func
.thumb_func
sub_8116D6C:
    push {lr}
    ldr r0, off_8116D80 // =off_8116D84 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .byte 0, 0
off_8116D80:    .word off_8116D84
off_8116D84:    .word sub_8116D90+1
    .word sub_8116DB4+1
    .word sub_8116DEC+1
.endfunc // sub_8116D6C

.func
.thumb_func
sub_8116D90:
    push {lr}
    mov r0, #0x10
    neg r0, r0
    mov r1, #0
    bl sub_800308A
    bl sub_80030A8
    mov r2, #0xaa
    cmp r0, r2
    bgt locret_8116DB0
    add r0, r2, #0
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#9]
locret_8116DB0:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8116D90

.func
.thumb_func
sub_8116DB4:
    push {r7,lr}
    mov r0, #0
    ldr r7, off_8116DE8 // =byte_200DF20 
    ldrb r3, [r7,#0x4] // (byte_200DF24 - 0x200df20)
    cmp r3, #8
    bne loc_8116DC2
    mov r0, #1
loc_8116DC2:
    strb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq loc_8116DD8
    strb r0, [r5,#0xd]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_8116DD8:
    bl sprite_update
.endfunc // sub_8116DB4

    ldrb r0, [r7]
    cmp r0, #8
    bne locret_8116DE6
    mov r0, #8
    strb r0, [r5,#9]
locret_8116DE6:
    pop {r7,pc}
off_8116DE8:    .word byte_200DF20
.func
.thumb_func
sub_8116DEC:
    push {lr}
    mov r0, #0x16
    mov r1, #0
    bl sub_800308A
    ldr r2, dword_8116E04 // =0x11A 
    cmp r0, r2
    blt locret_8116E00
    mov r0, #8
    strb r0, [r5,#8]
locret_8116E00:
    pop {pc}
    .balign 4, 0x00
dword_8116E04:    .word 0x11A
.endfunc // sub_8116DEC

.func
.thumb_func
sub_8116E08:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8116E08

.func
.thumb_func
sub_8116E10:
    push {lr}
    ldr r0, off_8116E20 // =off_8116E24 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8116E20:    .word off_8116E24
off_8116E24:    .word sub_8116E30+1
    .word sub_8116F34+1
    .word sub_8116FD4+1
.endfunc // sub_8116E10

.func
.thumb_func
sub_8116E30:
    push {lr}
    mov r0, #0x23 
    ldrb r4, [r5,#4]
    tst r4, r4
    beq loc_8116E3C
    mov r0, #0xa3
loc_8116E3C:
    strb r0, [r5]
    mov r0, #6
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r2, off_8116F08 // =off_8116F0C 
    ldr r1, [r2,r1]
    bl sub_8002770 // (int a1, int a2) -> void
    ldr r0, off_8116EAC // =dword_8116F18 
    ldrb r0, [r0,r4]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8116E30

    bl sub_8002F90 // () -> void
    ldr r0, dword_8116EB0 // =dword_8116F18 
    ldrb r0, [r0,r4]
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    ldr r0, off_8116EB4 // =dword_8116EB8 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0,r4]
    bl sub_8002E14
    ldr r0, off_8116EC4 // =off_8116EC8 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    lsl r2, r4, #2
    ldr r0, [r0,r2]
    bl sub_800306C
    ldr r0, off_8116EE8 // =off_8116EEC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0,r4]
    bl sub_800304A
    ldr r0, off_8116EF8 // =dword_8116EFC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0,r4]
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8116F34
    .byte  0
    .byte 0xBD
    .balign 4, 0x00
off_8116EAC:    .word dword_8116F18
dword_8116EB0:    .word 0x8116F1D
off_8116EB4:    .word dword_8116EB8
dword_8116EB8:    .word 0x8116F23, 0x8116F23, 0x8116F23
off_8116EC4:    .word off_8116EC8
off_8116EC8:    .word off_8116ED4
    .word off_8116ED4
    .word off_8116ED4
off_8116ED4:    .word 0x140
    .word 0x150
    .word 0x160
    .word 0x140
    .word 0x150
off_8116EE8:    .word off_8116EEC
off_8116EEC:    .word dword_8116F28
    .word dword_8116F28
    .word dword_8116F28
off_8116EF8:    .word dword_8116EFC
dword_8116EFC:    .word 0x8116F2D, 0x8116F2D, 0x8116F2D
off_8116F08:    .word off_8116F0C
off_8116F0C:    .word unk_2020500
    .word unk_2020500
    .word unk_2034B6C
dword_8116F18:    .word 0x1020200, 0x2, 0x2000000, 0x2020202
dword_8116F28:    .word 0xA0A0A0A
    .word 0x101000A
    .word 0x100
.func
.thumb_func
sub_8116F34:
    push {lr}
    ldr r0, off_8116F48 // =jt_8116F4C 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
off_8116F48:    .word jt_8116F4C
jt_8116F4C:    .word sub_8116F60+1
    .word sub_8116F8C+1
    .word sub_8116F9C+1
    .word sub_8116F60+1
    .word sub_8116F8C+1
.endfunc // sub_8116F34

.func
.thumb_func
sub_8116F60:
    push {lr}
    mov r0, #0
    ldrh r1, [r5,#0xe]
    tst r1, r1
    bne loc_8116F6C
    mov r0, #1
loc_8116F6C:
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8116F60

    bl sub_8002F90 // () -> void
    ldrb r0, [r5,#4]
    cmp r0, #3
    beq locret_8116F88
    ldrb r0, [r5,#5]
    tst r0, r0
    bne locret_8116F88
    bl sub_81170AC
locret_8116F88:
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_8116F8C:
    push {lr}
    bl sub_81170AC
    ldrh r0, [r5,#0xc]
    bl sub_81170C0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8116F8C

.func
.thumb_func
sub_8116F9C:
    push {lr}
    mov r0, #0xa3
    ldrh r1, [r5,#0xe]
    tst r1, r1
    bne loc_8116FA8
    mov r0, #1
loc_8116FA8:
    strb r0, [r5]
    bl sub_81170AC
    ldrh r0, [r5,#0xe]
    bl sub_81170C0
    ldr r0, off_8116FD0 // =sSubmenu 
    ldrb r0, [r0]
    cmp r0, #0x18
    beq loc_8116FC0
    cmp r0, #8
    bne locret_8116FCC
loc_8116FC0:
    bl sub_80030A8
    cmp r0, #0x38 
    bge locret_8116FCC
    mov r0, #1
    strb r0, [r5]
locret_8116FCC:
    pop {pc}
    .byte 0, 0
off_8116FD0:    .word sSubmenu
.endfunc // sub_8116F9C

.func
.thumb_func
sub_8116FD4:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8116FD4

.func
.thumb_func
sub_8116FDC:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    mov r0, #0
    str r0, [sp,#0xc]
    add r4, r2, #0
    add r7, r4, #3
loc_8116FEE:
    add r0, r4, #0
    bl sub_80466C4
    beq loc_811704A
    add r5, r1, #0
    ldr r3, [sp,#0xc]
    lsl r3, r3, #3
    ldr r2, off_811705C // =dword_8117060 
    ldr r6, [r2,r3]
    ldr r1, [sp,#8]
    cmp r1, r4
    beq loc_8117016
    ldrh r1, [r5,#0xe]
    tst r1, r1
    bne loc_8117016
    ldr r6, dword_811707C // =0xFFFFFFFD 
    ldrh r1, [r5,#0xc]
    cmp r1, #0xa
    bge loc_8117016
    ldr r6, dword_8117078 // =0xFFFFFFF9 
loc_8117016:
    ldr r0, [sp]
    add r0, r0, r6
    add r3, #4
    ldr r6, [r2,r3]
    ldr r1, [sp,#4]
    add r1, r1, r6
    bl sub_800307C
    ldr r0, [sp]
    cmp r0, #0x38 
    bge loc_8117042
    ldr r0, off_8117080 // =sSubmenu 
    ldrb r0, [r0]
    cmp r0, #0x18
    beq loc_8117038
    cmp r0, #8
    bne loc_8117042
loc_8117038:
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    b loc_811704A
loc_8117042:
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
loc_811704A:
    ldr r0, [sp,#0xc]
    add r0, #1
    str r0, [sp,#0xc]
    add r4, #1
    cmp r4, r7
    blt loc_8116FEE
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811705C:    .word dword_8117060
dword_8117060:    .word 0x0, 0x0
    .word 0xFFFFFFF3, 0x0
    .word 0xD, 0x0
dword_8117078:    .word 0xFFFFFFF9
dword_811707C:    .word 0xFFFFFFFD
off_8117080:    .word sSubmenu
.endfunc // sub_8116FDC

.func
.thumb_func
sub_8117084:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r4, r2, #0
    add r6, r2, #3
loc_8117090:
    add r0, r4, #0
    bl sub_80466C4
    beq loc_81170A6
    ldr r0, [sp]
    strh r0, [r1,#0xc]
    ldr r0, [sp,#4]
    strh r0, [r1,#0xe]
    add r4, #1
    cmp r4, r6
    blt loc_8117090
loc_81170A6:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8117084

.func
.thumb_func
sub_81170AC:
    push {lr}
    mov r0, #1
    ldrh r1, [r5,#0xc]
    ldrh r2, [r5,#0xe]
    cmp r1, r2
    bne loc_81170BA
    mov r0, #0
loc_81170BA:
    bl sprite_setPallete // (int pallete) -> void
    pop {pc}
.endfunc // sub_81170AC

.func
.thumb_func
sub_81170C0:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    mov r1, #0x64 
    svc 6
    str r0, [sp]
    add r0, r1, #0
    mov r1, #0xa
    svc 6
    str r0, [sp,#4]
    str r1, [sp,#8]
    ldr r0, dword_8117100 // =0x7FFFFE00 
    ldr r1, dword_8117104 // =0x80000000 
    ldr r2, [sp]
    lsr r1, r2
    bic r0, r1
    ldr r2, [sp,#4]
    tst r2, r2
    bne loc_81170EA
    ldr r1, [sp]
    tst r1, r1
    beq loc_81170F0
loc_81170EA:
    ldr r1, dword_8117108 // =0x10000000 
    lsr r1, r2
    bic r0, r1
loc_81170F0:
    ldr r2, [sp,#8]
    ldr r1, dword_811710C // =0x40000 
    lsr r1, r2
    bic r0, r1
    bl sub_8002FA6
    add sp, sp, #0x10
    pop {r4-r7,pc}
dword_8117100:    .word 0x7FFFFE00
dword_8117104:    .word 0x80000000
dword_8117108:    .word 0x10000000
dword_811710C:    .word 0x40000
.endfunc // sub_81170C0

.func
.thumb_func
sub_8117110:
    push {lr}
    ldr r0, off_8117120 // =off_8117124 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8117120:    .word off_8117124
off_8117124:    .word sub_8117130+1
    .word sub_81171B4+1
    .word sub_81171CC+1
.endfunc // sub_8117110

.func
.thumb_func
sub_8117130:
    push {lr}
    mov r0, #0x23 
    ldrb r1, [r5,#6]
    mov r2, #2
    tst r1, r2
    bne loc_811713E
    mov r0, #1
loc_811713E:
    strb r0, [r5]
    mov r0, #0xb
    ldr r1, off_81171A8 // =off_81171AC 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117130

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_8117194 // =off_8117198 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    mov r0, #0xa
    ldrb r1, [r5,#4]
    cmp r1, #2
    blt loc_811717E
    mov r0, #4
loc_811717E:
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_81171B4
    pop {pc}
    .balign 4, 0x00
off_8117194:    .word off_8117198
off_8117198:    .word 0x180
    .word 0x198
    .word 0x1B0
    .word 0x1C8
off_81171A8:    .word off_81171AC
off_81171AC:    .word unk_203526C
    .word unk_201D884
.func
.thumb_func
sub_81171B4:
    push {lr}
    mov r0, #0x23 
    ldrb r1, [r5,#6]
    mov r2, #2
    tst r1, r2
    bne loc_81171C2
    mov r0, #1
loc_81171C2:
    strb r0, [r5]
    bl sprite_update
.endfunc // sub_81171B4

    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_81171CC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81171CC

.func
.thumb_func
sub_81171D4:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_81171EE
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_81171EE:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_81171D4

.func
.thumb_func
sub_81171F4:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_8117214
    ldrb r2, [r1,#6]
    mov r3, #2
    ldr r0, [sp]
    tst r0, r0
    bne loc_8117210
    orr r2, r3
    b loc_8117212
loc_8117210:
    bic r2, r3
loc_8117212:
    strb r2, [r1,#6]
loc_8117214:
    add sp, sp, #8
    pop {r4-r7,pc}
.endfunc // sub_81171F4

.func
.thumb_func
sub_8117218:
    push {lr}
    ldr r0, off_8117228 // =off_811722C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8117228:    .word off_811722C
off_811722C:    .word sub_8117238+1
    .word sub_811727C+1
    .word sub_81172A6+1
.endfunc // sub_8117218

.func
.thumb_func
sub_8117238:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x18
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117238

    bl sub_8002F90 // () -> void
    mov r0, #8
    bl sub_800304A
    ldr r0, off_8117278 // =0x380 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    mov r0, #0
    mov r1, #0
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811727C
    pop {pc}
    .balign 4, 0x00
off_8117278:    .word 0x380
.func
.thumb_func
sub_811727C:
    push {lr}
    mov r4, #0x21 
    mov r0, #1
    ldrb r1, [r5,#4]
    lsl r0, r1
    bl sub_803C316
    beq loc_811729E
    mov r4, #0x23 
    mov r0, #0x19
    mov r1, #0x29 
    ldrb r2, [r5,#4]
    mov r3, #0x20 
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
loc_811729E:
    strb r4, [r5]
    bl sprite_update
.endfunc // sub_811727C

    pop {pc}
.func
.thumb_func
sub_81172A6:
    push {lr}
    bl sub_804668A
    pop {pc}
    .byte 0, 0
.endfunc // sub_81172A6

.func
.thumb_func
sub_81172B0:
    push {lr}
    ldr r0, off_81172C0 // =off_81172C4 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_81172C0:    .word off_81172C4
off_81172C4:    .word sub_81172D0+1
    .word sub_811734C+1
    .word sub_8117354+1
.endfunc // sub_81172B0

.func
.thumb_func
sub_81172D0:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    ldrb r0, [r5,#4]
    cmp r0, #0x1c
    beq loc_81172E2
    cmp r0, #0x1d
    beq loc_81172E6
    b loc_81172E8
loc_81172E2:
    ldr r1, off_8117344 // =unk_2032A04 
    b loc_81172E8
loc_81172E6:
    ldr r1, off_8117348 // =unk_2032A04 
loc_81172E8:
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#5]
    mov r1, #0x7f
    and r0, r1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_81172D0

    bl sub_8002F90 // () -> void
    ldrb r0, [r5,#3]
    add r0, #1
    bl sub_800304A
    ldrb r0, [r5,#3]
    lsl r0, r0, #6
    ldr r1, off_8117340 // =0x100 
    add r0, r0, r1
    bl sub_800306C
    mov r0, #3
    bl sub_8002E14
    mov r0, #4
    bl sub_8003060
    ldrb r0, [r5,#6]
    ldrb r1, [r5,#7]
    bl sub_800307C
    ldrb r0, [r5,#5]
    mov r1, #0x80
    tst r0, r1
    beq loc_8117334
    mov r0, #1
    bl sub_8002F5C
loc_8117334:
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811734C
    pop {pc}
    .byte 0, 0
off_8117340:    .word 0x100
off_8117344:    .word unk_2032A04
off_8117348:    .word unk_2032A04
.func
.thumb_func
sub_811734C:
    push {lr}
    bl sprite_update
.endfunc // sub_811734C

    pop {pc}
.func
.thumb_func
sub_8117354:
    push {lr}
    bl sub_804668A
    pop {pc}
dword_811735C:    .word 0x8117374, 0x811738C, 0x81173A4, 0x81173BC, 0x81173D4
    .word 0x81173EC, 0x280008, 0x10FFF6, 0x40000, 0x9
    .word 0xF7000F, 0xC0093, 0x500008, 0x10FFF1, 0x40000
    .word 0x7, 0xFA000F, 0xC0093, 0x6E0008, 0x10FFE7
    .word 0x40000, 0x13, 0xFD000F, 0xC0093, 0x910008
    .word 0x10FFD0, 0x40000, 0xE, 0x4000F, 0xC0093
    .word 0xB40008, 0x10FFF6, 0x40000, 0x8, 0xA000F
    .word 0xC0093, 0xD20008, 0x10FFE8, 0x40000, 0xA
    .word 0xD000F, 0xC0093
.endfunc // sub_8117354

.func
.thumb_func
sub_8117404:
    push {lr}
    ldr r0, off_8117414 // =off_8117418 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8117414:    .word off_8117418
off_8117418:    .word sub_8117424+1
    .word loc_8117488+1
    .word sub_81174B8+1
.endfunc // sub_8117404

.func
.thumb_func
sub_8117424:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0xc
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117424

    bl sub_8002F90 // () -> void
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x80
    mov r2, #0x80
    bl sprite_setScaleParameters
    mov r0, #5
    ldrb r1, [r5,#5]
    add r0, r0, r1
    bl sub_800304A
    ldrb r0, [r5,#5]
    lsl r0, r0, #4
    ldr r1, off_8117484 // =0x200 
    add r0, r0, r1
    bl sub_800306C
    mov r0, #3
    bl sub_8002E14
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    mov r1, #0
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_81175AC
    bl loc_8117488
    pop {pc}
off_8117484:    .word 0x200
loc_8117488:
    push {lr}
loc_811748A:
    bl sub_81175C4
    ldrh r0, [r0]
    ldr r1, off_81174A0 // =off_81174A4 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    bne loc_811748A
    bl sprite_update
    pop {pc}
off_81174A0:    .word off_81174A4
off_81174A4:    .word sub_81174C0+1
    .word sub_811753C+1
    .word sub_811756C+1
    .word sub_8117588+1
    .word sub_8117592+1
.func
.thumb_func
sub_81174B8:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81174B8

.func
.thumb_func
sub_81174C0:
    push {lr}
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_8117508
    mov r0, #1
    strb r0, [r5,#9]
    bl sub_81175C4
    ldrh r1, [r0,#2]
    str r1, [r5,#0x10]
    ldrh r1, [r0,#4]
    ldr r2, off_81175C8 // =dword_80065D0+16 
    lsl r3, r1, #1
    ldrsh r2, [r2,r3]
    str r2, [r5,#0x14]
    ldr r2, off_81175CC // =dword_8006660 
    lsl r3, r1, #1
    ldrsh r2, [r2,r3]
    str r2, [r5,#0x18]
    ldrh r1, [r0,#6]
    ldr r2, [r5,#0x14]
    lsl r2, r2, #4
    mul r2, r1
    str r2, [r5,#0x14]
    ldr r2, [r5,#0x18]
    lsl r2, r2, #4
    mul r2, r1
    str r2, [r5,#0x18]
    ldrh r0, [r0,#4]
    mov r1, #0x10
    lsl r1, r1, #4
    sub r0, r1, r0
    mov r1, #0x40 
    mov r2, #0x40 
    bl sprite_setScaleParameters
loc_8117508:
    bl sub_80030A8
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    ldr r3, [r5,#0x14]
    add r0, r0, r3
    ldr r3, [r5,#0x18]
    add r1, r1, r3
    asr r0, r0, #0x10
    asr r1, r1, #0x10
    bl sub_800307C
    ldr r0, [r5,#0x10]
    sub r0, #1
    str r0, [r5,#0x10]
    bge loc_8117538
    mov r0, #0
    strb r0, [r5,#9]
    str r0, [r5,#0x10]
    mov r0, #8
    bl sub_81175BC
    mov r0, #1
    pop {pc}
loc_8117538:
    mov r0, #0
    pop {pc}
.endfunc // sub_81174C0

.func
.thumb_func
sub_811753C:
    push {lr}
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_8117550
    mov r0, #1
    strb r0, [r5,#9]
    bl sub_81175C4
    ldrh r0, [r0,#2]
    str r0, [r5,#0x10]
loc_8117550:
    ldr r0, [r5,#0x10]
    sub r0, #1
    str r0, [r5,#0x10]
    bge loc_8117568
    mov r0, #0
    strb r0, [r5,#9]
    str r0, [r5,#0x10]
    mov r0, #4
    bl sub_81175BC
    mov r0, #1
    pop {pc}
loc_8117568:
    mov r0, #0
    pop {pc}
.endfunc // sub_811753C

.func
.thumb_func
sub_811756C:
    push {lr}
    bl sub_81175C4
    mov r2, #4
    ldrsh r1, [r0,r2]
    mov r2, #2
    ldrsh r0, [r0,r2]
    bl sub_800307C
    mov r0, #6
    bl sub_81175BC
    mov r0, #1
    pop {pc}
.endfunc // sub_811756C

.func
.thumb_func
sub_8117588:
    push {lr}
    bl sub_81175AC
    mov r0, #1
    pop {pc}
.endfunc // sub_8117588

.func
.thumb_func
sub_8117592:
    push {lr}
    bl sub_81175C4
    ldrh r0, [r0,#2]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117592

    mov r0, #4
    bl sub_81175BC
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_81175AC:
    ldrb r0, [r5,#5]
    ldr r1, off_81175B8 // =dword_811735C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r5,#0xc]
    mov pc, lr
off_81175B8:    .word dword_811735C
.endfunc // sub_81175AC

.func
.thumb_func
sub_81175BC:
    ldr r1, [r5,#0xc]
    add r0, r0, r1
    str r0, [r5,#0xc]
    mov pc, lr
.endfunc // sub_81175BC

.func
.thumb_func
sub_81175C4:
    ldr r0, [r5,#0xc]
    mov pc, lr
off_81175C8:    .word dword_80065D0+0x10
off_81175CC:    .word dword_8006660
.endfunc // sub_81175C4

.func
.thumb_func
sub_81175D0:
    push {lr}
    ldr r0, off_81175E0 // =off_81175E4 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_81175E0:    .word off_81175E4
off_81175E4:    .word sub_81175F0+1
    .word sub_8117680+1
    .word sub_8117688+1
.endfunc // sub_81175D0

.func
.thumb_func
sub_81175F0:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0xd
    ldr r1, off_8117638 // =unk_2016A04 
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_81175F0

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sub_800304A
    ldrb r0, [r5,#3]
    lsl r0, r0, #2
    ldr r1, off_811763C // =dword_8117640 
    ldr r0, [r1,r0]
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    ldrb r0, [r5,#5]
    ldrb r1, [r5,#6]
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8117680
    pop {pc}
    .balign 4, 0x00
off_8117638:    .word unk_2016A04
off_811763C:    .word dword_8117640
dword_8117640:    .word 0x20, 0x60, 0x70, 0x80, 0x90, 0xA0, 0xB0, 0xC0, 0xD0
    .word 0xE0, 0xF0, 0x100, 0x110, 0x120, 0x130, 0x140
.func
.thumb_func
sub_8117680:
    push {lr}
    bl sprite_update
.endfunc // sub_8117680

    pop {pc}
.func
.thumb_func
sub_8117688:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8117688

.func
.thumb_func
sub_8117690:
    push {lr}
    ldr r0, off_81176A0 // =off_81176A4 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_81176A0:    .word off_81176A4
off_81176A4:    .word sub_81176B0+1
    .word sub_81176C0+1
    .word sub_81176C8+1
.endfunc // sub_8117690

.func
.thumb_func
sub_81176B0:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_81176C0
    pop {pc}
.endfunc // sub_81176B0

.func
.thumb_func
sub_81176C0:
    push {lr}
    bl loc_81176D0
    pop {pc}
.endfunc // sub_81176C0

.func
.thumb_func
sub_81176C8:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81176C8

loc_81176D0:
    push {r4-r7,lr}
    ldr r3, off_8117720 // =dword_8117724 
    ldrb r2, [r5,#4]
    lsl r2, r2, #2
    ldrh r1, [r3,r2]
    add r2, #2
    ldrh r0, [r3,r2]
    lsl r4, r1, #0x10
    orr r4, r0
    mov r6, #0
loc_81176E4:
    ldr r0, off_811773C // =off_8117740 
    lsl r1, r6, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldr r2, dword_811771C // =0x0 
    orr r2, r0
    ldr r0, dword_8117718 // =0x0 
    orr r0, r4
    mov r1, #0xa
    lsl r1, r1, #0xc
    orr r1, r2
    mov r2, #2
    lsl r2, r2, #0xa
    orr r1, r2
    mov r2, #0
    mov r3, #3
    bl sub_802FE28
    mov r0, #8
    lsl r0, r0, #0x10
    add r4, r4, r0
    add r6, #1
    cmp r6, #3
    blt loc_81176E4
    pop {r4-r7,pc}
dword_8117718:    .word 0x0
dword_811771C:    .word 0x0
off_8117720:    .word dword_8117724
dword_8117724:    .word 0x330054
    .word 0x430054
    .word 0x530054
    .word 0x630054
    .word 0x730054
    .word 0x830054
off_811773C:    .word off_8117740
off_8117740:    .word sub_811774C+1
    .word loc_8117764+1
    .word sub_8117768+1
.func
.thumb_func
sub_811774C:
    ldr r0, off_8117760 // =unk_201C400 
    ldrb r1, [r5,#4]
    lsl r1, r1, #1
    add r1, #1
    ldrb r0, [r0,r1]
    cmp r0, #8
    ble locret_811775C
    mov r0, #8
locret_811775C:
    mov pc, lr
    .byte 0, 0
off_8117760:    .word unk_201C400
.endfunc // sub_811774C

loc_8117764:
    mov r0, #9
    mov pc, lr
.func
.thumb_func
sub_8117768:
    push {lr}
    mov r0, #0x75 
    bl sub_803CE28
    cmp r0, #4
    bge loc_8117778
    mov r0, #4
    b locret_811777E
loc_8117778:
    cmp r0, #8
    ble locret_811777E
    mov r0, #8
locret_811777E:
    pop {pc}
.endfunc // sub_8117768

.func
.thumb_func
sub_8117780:
    push {lr}
    ldr r6, off_81177A0 // =byte_2011C10 
    ldr r0, off_8117790 // =off_8117794 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8117790:    .word off_8117794
off_8117794:    .word sub_81177A4+1
    .word sub_81177EC+1
    .word sub_8117818+1
off_81177A0:    .word byte_2011C10
.endfunc // sub_8117780

.func
.thumb_func
sub_81177A4:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0xf
    ldr r1, off_81177E4 // =unk_202FA04 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    str r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #8
    bl sub_800304A
    ldr r0, off_81177E8 // =0x40 
    bl sub_800306C
    mov r0, #1
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_81177EC
    pop {pc}
off_81177E4:    .word unk_202FA04
off_81177E8:    .word 0x40
.endfunc // sub_81177A4

.func
.thumb_func
sub_81177EC:
    push {lr}
    mov r0, #0x78 
    mov r1, #0x40 
    bl sub_800307C
    bl sub_8117872
    bl sub_8117820
    bl sub_811788C
    ldr r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117812
    str r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
loc_8117812:
    bl sprite_update
.endfunc // sub_81177EC

    pop {pc}
.func
.thumb_func
sub_8117818:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8117818

.func
.thumb_func
sub_8117820:
    push {r4-r7,lr}
    bl sub_81178AC
    tst r0, r0
    beq loc_8117868
    sub r0, #0x90
    mov r1, #0
    bl loc_813B7A0
    add r7, r0, #0
    add r7, #8
    mov r4, #0
    mov r0, #0
    mvn r0, r0
    lsl r0, r0, #4
    lsr r0, r0, #4
    mov r2, #0x80
    lsl r2, r2, #0x14
    mov r6, #0
loc_8117846:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_811784E
    bic r0, r2
loc_811784E:
    lsr r2, r2, #1
    add r7, #1
    add r6, #1
    cmp r6, #5
    blt loc_811785C
    mov r6, #0
    add r7, #2
loc_811785C:
    add r4, #1
    cmp r4, #0x19
    blt loc_8117846
    bl sub_8002FA6
    pop {r4-r7,pc}
loc_8117868:
    mov r0, #0
    mvn r0, r0
    bl sub_8002FA6
    pop {r4-r7,pc}
.endfunc // sub_8117820

.func
.thumb_func
sub_8117872:
    push {r4-r7,lr}
    bl sub_81178AC
    tst r0, r0
    beq loc_8117886
    sub r0, #0x90
    bl sub_813B780
    ldrb r0, [r0,#3]
    sub r0, #1
loc_8117886:
    bl sprite_setPallete // (int pallete) -> void
    pop {r4-r7,pc}
.endfunc // sub_8117872

.func
.thumb_func
sub_811788C:
    push {r4-r7,lr}
    bl sub_81178AC
    mov r2, #0
    tst r0, r0
    beq loc_81178A8
    sub r0, #0x90
    bl sub_813B780
    mov r2, #0
    ldrb r1, [r0,#1]
    cmp r1, #0
    beq loc_81178A8
    mov r2, #1
loc_81178A8:
    add r0, r2, #0
    pop {r4-r7,pc}
.endfunc // sub_811788C

.func
.thumb_func
sub_81178AC:
    push {r4-r7,lr}
    ldr r7, off_81178D4 // =byte_2019A00 
    ldrh r0, [r6,#0x14]
    ldrh r1, [r6,#0x18]
    add r0, r0, r1
    mov r1, #8
    mul r0, r1
    add r7, r7, r0
    ldrb r0, [r7]
    cmp r0, #3
    bne loc_81178CE
    ldrh r0, [r7,#2]
    add r0, #0x90
    ldrh r1, [r7,#4]
    bl sub_803D148
    pop {r4-r7,pc}
loc_81178CE:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81178D4:    .word byte_2019A00
.endfunc // sub_81178AC

loc_81178D8:
    push {lr}
    ldr r7, off_81178F8 // =byte_2011C10 
    ldr r0, off_81178E8 // =off_81178EC 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81178E8:    .word off_81178EC
off_81178EC:    .word sub_81178FC+1
    .word sub_811794C+1
    .word sub_8117990+1
off_81178F8:    .word byte_2011C10
.func
.thumb_func
sub_81178FC:
    push {lr}
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0x10
    ldr r1, off_8117944 // =unk_2030204 
    bl loc_8002774 // (int a1, int a2) -> void
    bl sub_8117998
    strb r0, [r5,#5]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_81178FC

    bl sub_8002F90 // () -> void
    mov r0, #9
    ldrb r1, [r5,#4]
    add r0, r0, r1
    bl sub_800304A
    ldr r0, off_8117948 // =0x180 
    bl sub_800306C
    mov r0, #1
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811794C
    pop {pc}
    .balign 4, 0x00
off_8117944:    .word unk_2030204
off_8117948:    .word 0x180
.func
.thumb_func
sub_811794C:
    push {lr}
    mov r4, #0x23 
    bl sub_8047D84
    ldrb r1, [r0]
    cmp r1, #1
    bne loc_8117962
    ldrh r1, [r0,#2]
    cmp r1, #0x70 
    bne loc_8117962
    mov r4, #0x21 
loc_8117962:
    strb r4, [r5]
    ldrb r0, [r7,#8]
    sub r0, #0xc
    mov r1, #0x1e
    sub r0, r1, r0
    lsl r0, r0, #3
    add r0, #0x24 
    mov r1, #0x38 
    bl sub_800307C
    bl sub_8117998
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq loc_811798A
    strb r0, [r5,#5]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
loc_811798A:
    bl sprite_update
.endfunc // sub_811794C

    pop {pc}
.func
.thumb_func
sub_8117990:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8117990

.func
.thumb_func
sub_8117998:
    push {r4-r7,lr}
    bl sub_8047D84
    add r4, r0, #0
    mov r6, #0
    ldrb r0, [r4]
    sub r0, #1
    lsl r0, r0, #1
    ldrb r1, [r5,#4]
    add r0, r0, r1
    pop {r4-r7,pc}
.endfunc // sub_8117998

.func
.thumb_func
sub_81179AE:
    push {r4-r7,lr}
    ldr r7, off_81179DC // =byte_2011C10 
    bl sub_8047D84
    add r4, r0, #0
    ldrb r1, [r4]
    lsl r1, r1, #2
    ldr r0, off_81179C8 // =off_81179CC 
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81179C8:    .word off_81179CC
off_81179CC:    .word sub_81179E0+1
    .word sub_81179E4+1
    .word sub_8117A14+1
    .word sub_8117AB4+1
off_81179DC:    .word byte_2011C10
.endfunc // sub_81179AE

.func
.thumb_func
sub_81179E0:
    push {r4-r7,lr}
    pop {r4-r7,pc}
.endfunc // sub_81179E0

.func
.thumb_func
sub_81179E4:
    push {r4-r7,lr}
    ldrh r0, [r4,#2]
    bl sub_803CE28
    mov r2, r10
    ldr r2, [r2,#0x38]
    str r0, [r2,#8]
    ldr r0, [r7,#0x24]
    mov r1, #0x12
    ldr r2, off_8117A08 // =unk_2016200 
    ldr r3, dword_8117A0C // =0x6013520 
    mov r4, #2
    mov r5, #1
    ldr r6, off_8117A10 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_81179E4

    pop {r4-r7,pc}
off_8117A08:    .word unk_2016200
dword_8117A0C:    .word 0x6013520
off_8117A10:    .word dword_86A5D60
.func
.thumb_func
sub_8117A14:
    push {r4-r7,lr}
    ldr r6, off_8117A7C // =unk_2016300 
    add r0, r6, #0
    mov r1, #0x20 
    lsl r1, r1, #4
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    // idx
    ldrh r0, [r4,#2]
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r5, r0, #0
    ldrb r0, [r5]
    bl sub_8117A84
    ldrb r0, [r5,#1]
    bl sub_8117A84
    ldrb r0, [r5,#2]
    bl sub_8117A84
    ldrb r0, [r5,#3]
    bl sub_8117A84
    ldrh r4, [r4,#2]
    add r0, r4, #0
    ldrb r7, [r5]
    add r1, r7, #0
    bl sub_8117AA0
    add r0, r4, #0
    ldrb r7, [r5,#1]
    add r1, r7, #0
    bl sub_8117AA0
    add r0, r4, #0
    ldrb r7, [r5,#2]
    add r1, r7, #0
    bl sub_8117AA0
    add r0, r4, #0
    ldrb r7, [r5,#3]
    add r1, r7, #0
    bl sub_8117AA0
    ldr r0, off_8117A7C // =unk_2016300 
    ldr r1, dword_8117A80 // =0x6013B40 
    mov r2, #0x20 
    lsl r2, r2, #4
    bl loc_8000AC8
.endfunc // sub_8117A14

    pop {r4-r7,pc}
    .balign 4, 0x00
off_8117A7C:    .word unk_2016300
dword_8117A80:    .word 0x6013B40
.func
.thumb_func
sub_8117A84:
    push {lr}
    cmp r0, #0x1a
    bgt loc_8117A98
    lsl r0, r0, #6
    ldr r1, off_8117A9C // =unk_2031344 
    add r0, r0, r1
    add r1, r6, #0
    mov r2, #0x40 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
loc_8117A98:
    add r6, #0x40 
    pop {pc}
off_8117A9C:    .word unk_2031344
.endfunc // sub_8117A84

.func
.thumb_func
sub_8117AA0:
    push {lr}
    cmp r1, #0x1a
    bgt loc_8117AB0
    bl sub_8021BC0
    bl sub_8117B94
    pop {pc}
loc_8117AB0:
    add r6, #0x40 
    pop {pc}
.endfunc // sub_8117AA0

.func
.thumb_func
sub_8117AB4:
    push {r4-r7,lr}
    ldr r6, off_8117B34 // =unk_30016A8 
    bl sub_8117B5C
    ldrh r0, [r4,#2]
    bl sub_813B780
    add r7, r0, #0
    ldrb r0, [r7,#3]
    bl sub_8117B4A
    add r7, #0x10
    ldrb r0, [r7,#3]
    bl sub_8117B4A
    add r7, #0x10
    ldrb r0, [r7,#3]
    bl sub_8117B4A
    add r7, #0x10
    ldrb r0, [r7,#3]
    bl sub_8117B4A
    ldr r6, off_8117B2C // =unk_2016400 
    add r0, r6, #0
    mov r1, #0x10
    lsl r1, r1, #4
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    ldrh r0, [r4,#2]
    bl sub_813B780
    add r7, r0, #0
    ldrh r0, [r4,#2]
    ldrb r1, [r7,#3]
    bl sub_8117B38
    add r7, #0x10
    ldrh r0, [r4,#2]
    ldrb r1, [r7,#3]
    bl sub_8117B38
    add r7, #0x10
    ldrh r0, [r4,#2]
    ldrb r1, [r7,#3]
    bl sub_8117B38
    add r7, #0x10
    ldrh r0, [r4,#2]
    ldrb r1, [r7,#3]
    bl sub_8117B38
    ldr r0, off_8117B2C // =unk_2016400 
    ldr r1, dword_8117B30 // =0x6013C40 
    mov r2, #0x10
    lsl r2, r2, #4
    bl loc_8000AC8
.endfunc // sub_8117AB4

    pop {r4-r7,pc}
    .balign 4, 0x00
off_8117B2C:    .word unk_2016400
dword_8117B30:    .word 0x6013C40
off_8117B34:    .word unk_30016A8
.func
.thumb_func
sub_8117B38:
    push {lr}
    cmp r1, #0
    beq locret_8117B48
    add r0, #0x90
    bl sub_803D138
    bl sub_8117B94
locret_8117B48:
    pop {pc}
.endfunc // sub_8117B38

.func
.thumb_func
sub_8117B4A:
    push {lr}
    cmp r0, #0
    beq locret_8117B5A
    ldr r1, off_8117B74 // =dword_8117B78 
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    strh r0, [r6]
    add r6, #2
locret_8117B5A:
    pop {pc}
.endfunc // sub_8117B4A

.func
.thumb_func
sub_8117B5C:
    push {lr}
    ldr r1, off_8117B88 // =off_8117B8C 
    ldr r0, [r1]
    ldrh r0, [r0]
    strh r0, [r6]
    strh r0, [r6,#4]
    ldr r0, [r1,#0x4] // (off_8117B90 - 0x8117b8c)
    ldrh r0, [r0]
    strh r0, [r6,#2]
    strh r0, [r6,#6]
    pop {pc}
    .balign 4, 0x00
off_8117B74:    .word dword_8117B78
dword_8117B78:    .word 0x7FFF0000, 0x725F03DD, 0x7D48001C, 0xBA0
off_8117B88:    .word off_8117B8C
off_8117B8C:    .word word_3001684
off_8117B90:    .word word_3001686
.endfunc // sub_8117B5C

.func
.thumb_func
sub_8117B94:
    push {r7,lr}
    mov r1, #0xa
    svc 6
    add r7, r1, #0
    tst r0, r0
    beq loc_8117BAE
    lsl r0, r0, #5
    ldr r1, off_8117BC4 // =unk_2031204 
    add r0, r0, r1
    add r1, r6, #0
    mov r2, #0x20 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
loc_8117BAE:
    add r6, #0x20 
    lsl r0, r7, #5
    ldr r1, off_8117BC4 // =unk_2031204 
    add r0, r0, r1
    add r1, r6, #0
    mov r2, #0x20 
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    add r6, #0x20 
    pop {r7,pc}
    .balign 4, 0x00
off_8117BC4:    .word unk_2031204
.endfunc // sub_8117B94

.func
.thumb_func
sub_8117BC8:
    push {lr}
    ldr r0, off_8117BD8 // =off_8117BDC 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8117BD8:    .word off_8117BDC
off_8117BDC:    .word sub_8117BE8+1
    .word sub_8117C4C+1
    .word sub_8117CCC+1
.endfunc // sub_8117BC8

.func
.thumb_func
sub_8117BE8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0xa
    ldr r1, off_8117C3C // =unk_2034B6C 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117BE8

    bl sub_8002F90 // () -> void
    mov r0, #9
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_8117C40 // =0x170 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    ldr r0, off_8117C44 // =0xD4 
    ldr r1, dword_8117C48 // =0xC 
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    bl sub_8117C4C
    .byte  0
    .byte 0xBD
    .balign 4, 0x00
off_8117C3C:    .word unk_2034B6C
off_8117C40:    .word 0x170
off_8117C44:    .word 0xD4
dword_8117C48:    .word 0xC
.func
.thumb_func
sub_8117C4C:
    push {lr}
    ldr r0, off_8117C60 // =off_8117C64 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .byte 0, 0
off_8117C60:    .word off_8117C64
off_8117C64:    .word sub_8117C70+1
    .word sub_8117C9C+1
    .word sub_8117CC4+1
.endfunc // sub_8117C4C

.func
.thumb_func
sub_8117C70:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117C8C
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_8117C8C:
    bl sub_8002DEA
    mov r1, #0xc0
    tst r0, r1
    beq locret_8117C9A
    bl sub_8117CD4
locret_8117C9A:
    pop {pc}
.endfunc // sub_8117C70

.func
.thumb_func
sub_8117C9C:
    push {lr}
    mov r0, #1
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117CB4
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_8117CB4:
    bl sub_8002DEA
    mov r1, #0xc0
    tst r0, r1
    beq locret_8117CC2
    mov r0, #1
    strb r0, [r5]
locret_8117CC2:
    pop {pc}
.endfunc // sub_8117C9C

.func
.thumb_func
sub_8117CC4:
    push {lr}
    bl sub_8117CD4
    pop {pc}
.endfunc // sub_8117CC4

.func
.thumb_func
sub_8117CCC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8117CCC

.func
.thumb_func
sub_8117CD4:
    push {r7,lr}
    ldr r7, off_8117D00 // =sSubmenu 
    bl sub_81355D8
    beq loc_8117CE4
    bl sub_81312F4
    add r7, r0, #0
loc_8117CE4:
    mov r1, #0x18
    ldrsh r1, [r7,r1]
    lsl r1, r1, #0x13
    ldr r2, dword_8117D0C // =0xC08003 
    sub r2, r2, r1
    ldr r1, dword_8117D04 // =0x5140 
    ldrb r0, [r7,#0x17]
    ldrh r3, [r7,#0x1e]
    cmp r0, r3
    beq loc_8117CFA
    ldr r1, dword_8117D08 // =0x6140 
loc_8117CFA:
    bl sub_812068C
    pop {r7,pc}
off_8117D00:    .word sSubmenu
dword_8117D04:    .word 0x5140
dword_8117D08:    .word 0x6140
dword_8117D0C:    .word 0xC08003
.endfunc // sub_8117CD4

.func
.thumb_func
sub_8117D10:
    push {r4-r7,lr}
    add r6, r0, #0
    add r0, r1, #0
    bl sub_80466C4
    beq locret_8117D28
    tst r6, r6
    bne loc_8117D24
    mov r0, #0
    b loc_8117D26
loc_8117D24:
    mov r0, #4
loc_8117D26:
    strb r0, [r1,#9]
locret_8117D28:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8117D10

.func
.thumb_func
sub_8117D2C:
    push {lr}
    ldr r0, off_8117D3C // =off_8117D40 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8117D3C:    .word off_8117D40
off_8117D40:    .word sub_8117D4C+1
    .word loc_8117DC8+1
    .word sub_8117EC0+1
.endfunc // sub_8117D2C

.func
.thumb_func
sub_8117D4C:
    push {r4,lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x61 
    ldr r1, off_8117DBC // =unk_20251B0 
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    add r0, #5
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117D4C

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_8117DB0 // =off_8117DB4 
    ldrb r1, [r5,#3]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    ldr r0, off_8117DC0 // =loc_8117DC4 
    ldrb r1, [r5,#3]
    ldrb r0, [r0,r1]
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #0x78 
    mov r1, #0x28 
    ldrb r2, [r5,#3]
    mov r3, #0x20 
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_8117DC8
    pop {r4,pc}
    .byte 0, 0
off_8117DB0:    .word off_8117DB4
off_8117DB4:    .word 0x90
    .word 0xC0
off_8117DBC:    .word unk_20251B0
off_8117DC0:    .word loc_8117DC4
loc_8117DC4:
    lsl r2, r0, #0xc
    // <mkdata>
    .hword 0x4 // mov r4, r0
loc_8117DC8:
    push {lr}
    ldr r0, off_8117DD8 // =off_8117DDC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8117DD8:    .word off_8117DDC
off_8117DDC:    .word sub_8117DE0+1
.func
.thumb_func
sub_8117DE0:
    push {r7,lr}
    ldr r7, off_8117E1C // =sSubmenu 
    ldr r0, off_8117DFC // =off_8117E00 
    ldrb r1, [r7,#0x1] // (ssubmenu.jo_01 - 0x2009a30)
    cmp r1, #8
    bne loc_8117DF2
    bl sprite_update
    b locret_8117DFA
loc_8117DF2:
    ldrb r1, [r7,#0x2] // (ssubmenu.unk_02 - 0x2009a30)
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
locret_8117DFA:
    pop {r7,pc}
off_8117DFC:    .word off_8117E00
off_8117E00:    .word sub_8117E20+1
    .word sub_8117E20+1
    .word sub_8117E20+1
    .word sub_8117E60+1
    .word sub_8117E20+1
    .word sub_8117E60+1
    .word sub_8117E60+1
off_8117E1C:    .word sSubmenu
.endfunc // sub_8117DE0

.func
.thumb_func
sub_8117E20:
    push {lr}
    ldrb r0, [r7,#0xd]
    ldrb r1, [r5,#3]
    cmp r0, r1
    bne loc_8117E42
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117E5A
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    b loc_8117E5A
loc_8117E42:
    ldrb r0, [r5,#4]
    add r0, #5
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117E5A
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_8117E5A:
    bl sprite_update
.endfunc // sub_8117E20

    pop {pc}
.func
.thumb_func
sub_8117E60:
    push {lr}
    ldrb r0, [r7,#0xd]
    lsr r0, r0, #1
    ldrb r1, [r5,#3]
    cmp r0, r1
    bne loc_8117E92
    ldrb r0, [r5,#4]
    ldrb r1, [r7,#0xd]
    cmp r1, #2
    beq loc_8117E7C
    ldrb r1, [r7,#0xd]
    tst r1, r1
    beq loc_8117E7C
    add r0, #1
loc_8117E7C:
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117EBA
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    b loc_8117EBA
loc_8117E92:
    ldrb r0, [r5,#4]
    ldrb r1, [r7,#0xd]
    cmp r1, #2
    blt loc_8117EA4
    mov r1, #0x21 
    ldrb r1, [r7,r1]
    tst r1, r1
    beq loc_8117EA4
    add r0, #1
loc_8117EA4:
    add r0, #5
    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_8117EBA
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_8117EBA:
    bl sprite_update
.endfunc // sub_8117E60

    pop {pc}
.func
.thumb_func
sub_8117EC0:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8117EC0

.func
.thumb_func
sub_8117EC8:
    push {lr}
    ldr r0, off_8117ED8 // =off_8117EDC 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8117ED8:    .word off_8117EDC
off_8117EDC:    .word sub_8117EE8+1
    .word loc_8117F78+1
    .word sub_81180FC+1
.endfunc // sub_8117EC8

.func
.thumb_func
sub_8117EE8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x11
    ldr r1, off_8117F60 // =unk_201DD70 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8117EE8

    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_8117F40 // =off_8117F44 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0xb8
    ldr r3, off_8117F64 // =dword_8117F68 
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r1, [r3,r2]
    strh r1, [r5,#0x14]
    bl sub_800307C
    bl loc_8117F78
    pop {pc}
    .byte 0, 0
off_8117F40:    .word off_8117F44
off_8117F44:    .word 0x180
    .word 0x140
    .word 0x100
    .word 0xC0
    .word 0x80
    .word 0x40
    .byte 0, 0, 0, 0
off_8117F60:    .word unk_201DD70
off_8117F64:    .word dword_8117F68
dword_8117F68:    .word 0x8FFF6, 0x2C001A, 0x50003E, 0x62
loc_8117F78:
    push {lr}
    ldr r0, off_8117F90 // =off_8117F94 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8118234
    bl sprite_update
    pop {pc}
    .byte 0, 0
off_8117F90:    .word off_8117F94
off_8117F94:    .word sub_8117F9C+1
    .word loc_8117FC4+1
.func
.thumb_func
sub_8117F9C:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_8117FAA
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_8117FC2
loc_8117FAA:
    bl sub_8118104
    bl sub_8118134
    bl sub_81181DC
    bl sub_81182A4
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
locret_8117FC2:
    pop {pc}
.endfunc // sub_8117F9C

loc_8117FC4:
    push {lr}
    ldr r0, off_8117FDC // =off_8117FE0 
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_8118314
    ldrh r1, [r5,#0x14]
    strh r1, [r0,#0xe]
    pop {pc}
    .balign 4, 0x00
off_8117FDC:    .word off_8117FE0
off_8117FE0:    .word sub_8117FF8+1
    .word sub_811800C+1
    .word sub_8118030+1
    .word sub_811805C+1
    .word loc_8118098+1
    .word sub_81180E0+1
.func
.thumb_func
sub_8117FF8:
    push {lr}
    bl sub_81182A4
    ldrb r0, [r5,#0xa]
    cmp r0, #0
    bne locret_811800A
    ldr r0, off_8118310 // =sSubmenu 
    mov r1, #0
    strb r1, [r0,#0xd] // (ssubmenu.unk_0d - 0x2009a30)
locret_811800A:
    pop {pc}
.endfunc // sub_8117FF8

.func
.thumb_func
sub_811800C:
    push {lr}
    mov r4, #0x16
    ldrsh r0, [r5,r4]
    mov r6, #0x14
    ldrsh r1, [r5,r6]
    bl sub_8118320
    strh r0, [r5,r6]
    ldrsh r0, [r5,r4]
    ldrsh r1, [r5,r6]
    cmp r0, r1
    bne locret_811802C
    mov r0, #8
    strb r0, [r5,#0xa]
    mov r0, #2
    strh r0, [r5,#0x12]
locret_811802C:
    pop {pc}
    .byte 0, 0
.endfunc // sub_811800C

.func
.thumb_func
sub_8118030:
    push {lr}
    ldrh r0, [r5,#0x12]
    sub r0, #1
    strh r0, [r5,#0x12]
    bgt locret_811805A
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    mov r1, #0x14
    strh r0, [r5,r1]
    mov r0, #0
    strb r0, [r5,#0xa]
    ldr r0, off_8118310 // =sSubmenu 
    ldrb r1, [r0,#0xd] // (ssubmenu.unk_0d - 0x2009a30)
    lsr r1, r1, #1
    strb r1, [r0,#0xd] // (ssubmenu.unk_0d - 0x2009a30)
    bl sub_8118104
    bl sub_8118134
    bl sub_81181DC
locret_811805A:
    pop {pc}
.endfunc // sub_8118030

.func
.thumb_func
sub_811805C:
    push {lr}
    ldrb r2, [r5,#0x12]
    add r2, #0x30 
    cmp r2, #0xff
    blt loc_8118068
    mov r2, #0xff
loc_8118068:
    strb r2, [r5,#0x12]
    mov r0, #0
    mov r1, #0x40 
    bl sprite_setScaleParameters
    ldrb r0, [r5,#0x12]
    cmp r0, #0xff
    bne locret_81180DC
    mov r0, #0x10
    strb r0, [r5,#0xa]
    mov r3, #1
    ldr r2, off_8118310 // =sSubmenu 
    ldrh r0, [r2,#0x24] // (ssubmenu.unk_24 - 0x2009a30)
    ldrb r1, [r5,#3]
    add r0, r0, r1
    sub r0, #2
    blt loc_8118092
    ldrh r1, [r2,#0x1e] // (ssubmenu.unk_1e - 0x2009a30)
    cmp r0, r1
    bge loc_8118092
    mov r3, #0x23 
loc_8118092:
    strb r3, [r5]
    pop {pc}
    .balign 4, 0x00
loc_8118098:
    push {lr}
    ldrb r2, [r5,#0x12]
    sub r2, #0x30 
    cmp r2, #0x40 
    bgt loc_81180A4
    mov r2, #0x40 
loc_81180A4:
    strb r2, [r5,#0x12]
    mov r0, #0
    mov r1, #0x40 
    bl sprite_setScaleParameters
    ldrb r0, [r5,#0x12]
    cmp r0, #0x40 
    bne locret_81180DC
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    mov r1, #0x14
    strh r0, [r5,r1]
    mov r0, #0
    strb r0, [r5,#0xa]
    ldr r0, off_8118310 // =sSubmenu 
    mov r1, #0
    strb r1, [r0,#0xc] // (ssubmenu.unk_0c - 0x2009a30)
    bl sprite_makeUnscalable
    mov r0, #0
    bl sub_8002FA6
    bl sub_8118104
    bl sub_8118134
    bl sub_81181DC
locret_81180DC:
    pop {pc}
    .byte 0, 0
.endfunc // sub_811805C

.func
.thumb_func
sub_81180E0:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xa]
    bl sub_8118104
    bl sub_8118134
    bl sub_81181DC
    ldr r0, off_8118310 // =sSubmenu 
    mov r1, #0
    strb r1, [r0,#0xc] // (ssubmenu.unk_0c - 0x2009a30)
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_81180E0

.func
.thumb_func
sub_81180FC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81180FC

.func
.thumb_func
sub_8118104:
    push {lr}
    ldr r2, off_8118310 // =sSubmenu 
    ldrh r0, [r2,#0x24] // (ssubmenu.unk_24 - 0x2009a30)
    cmp r0, #1
    blt loc_8118110
    mov r0, #1
loc_8118110:
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt loc_811812C
    ldrh r0, [r2,#0x24] // (ssubmenu.unk_24 - 0x2009a30)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    ldrh r1, [r2,#0x1e] // (ssubmenu.unk_1e - 0x2009a30)
    cmp r0, r1
    bge loc_811812C
    mov r0, #0x23 
    strb r0, [r5]
    b locret_8118130
loc_811812C:
    mov r0, #1
    strb r0, [r5]
locret_8118130:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8118104

.func
.thumb_func
sub_8118134:
    push {r4-r7,lr}
    ldr r6, off_8118310 // =sSubmenu 
    ldrh r0, [r6,#0x24] // (ssubmenu.unk_24 - 0x2009a30)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt locret_811818A
    ldrh r1, [r6,#0x1e] // (ssubmenu.unk_1e - 0x2009a30)
    cmp r0, r1
    bge locret_811818A
    lsl r0, r0, #2
    ldr r1, off_811818C // =word_201DA80 
    add r1, r1, r0
    mov r4, #4
    ldrh r2, [r1]
    ldr r3, off_81181B8 // =0x14C 
    cmp r2, r3
    beq loc_8118162
    ldrh r2, [r1,#2]
    mov r4, #0
    tst r2, r2
    bne loc_8118162
    mov r4, #2
loc_8118162:
    strb r4, [r5,#0xe]
    mov r4, r10
    ldr r4, [r4,#0x38]
    str r2, [r4,#8]
    ldrh r1, [r1]
    sub r1, #0x90
    lsr r1, r1, #2
    ldr r0, off_8118194 // =dword_873EA50 
    ldrb r4, [r5,#4]
    lsl r4, r4, #2
    ldr r2, off_8118198 // =off_811819C 
    ldr r2, [r2,r4]
    ldr r3, off_81181BC // =unk_81181C0 
    ldr r3, [r3,r4]
    mov r4, #8
    mov r5, #1
    ldr r6, off_8118190 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
locret_811818A:
    pop {r4-r7,pc}
off_811818C:    .word word_201DA80
off_8118190:    .word dword_86B7AE0
off_8118194:    .word dword_873EA50
off_8118198:    .word off_811819C
off_811819C:    .word unk_2017A00
    .word unk_2017E00
    .word unk_2018200
    .word unk_2018600
    .word unk_2018A00
    .word unk_2018E00
    .word unk_2019200
off_81181B8:    .word 0x14C
off_81181BC:    .word unk_81181C0
unk_81181C0:    .byte 0xC0
    .byte 0x33 
    .byte  1
    .byte  6
    .byte 0xC0
    .byte 0x2B 
    .byte  1
    .byte  6
    .byte 0xC0
    .byte 0x23 
    .byte  1
    .byte  6
    .byte 0xC0
    .byte 0x1B
    .byte  1
    .byte  6
    .byte 0xC0
    .byte 0x13
    .byte  1
    .byte  6
    .byte 0xC0
    .byte 0xB
    .byte  1
    .byte  6
    .byte 0xC0
    .byte  3
    .byte  1
    .byte  6
.endfunc // sub_8118134

.func
.thumb_func
sub_81181DC:
    push {r4-r7,lr}
    ldr r6, off_8118310 // =sSubmenu 
    ldrh r0, [r6,#0x24] // (ssubmenu.unk_24 - 0x2009a30)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt locret_8118202
    ldrh r1, [r6,#0x1e] // (ssubmenu.unk_1e - 0x2009a30)
    cmp r0, r1
    bge locret_8118202
    lsl r0, r0, #2
    ldr r1, off_8118204 // =word_201DA80 
    add r0, r0, r1
    ldrh r1, [r0,#2]
    lsl r1, r1, #2
    ldr r0, off_8118208 // =unk_811820C 
    ldr r0, [r0,r1]
    bl sub_8002FA6
locret_8118202:
    pop {r4-r7,pc}
off_8118204:    .word word_201DA80
off_8118208:    .word unk_811820C
unk_811820C:    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte  0
    .byte 0xFE
    .byte  3
    .byte  0
    .byte  0
    .byte 0xFE
    .byte  0
    .byte  0
    .byte  0
    .byte 0x7E 
    .byte  1
    .byte  0
    .byte  0
    .byte 0xBE
    .byte  1
    .byte  0
    .byte  0
    .byte 0xDE
    .byte  1
    .byte  0
    .byte  0
    .byte 0xEE
    .byte  1
    .byte  0
    .byte  0
    .byte 0xF6
    .byte  1
    .byte  0
    .byte  0
    .byte 0xFA
    .byte  1
    .byte  0
    .byte  0
    .byte 0xFC
    .byte  1
    .byte  0
.endfunc // sub_81181DC

.func
.thumb_func
sub_8118234:
    push {r4-r7,lr}
    mov r4, #1
    mov r6, #0xa
    mov r7, #0
    ldr r2, off_8118310 // =sSubmenu 
    ldrb r0, [r2,#0x2] // (ssubmenu.unk_02 - 0x2009a30)
    cmp r0, #4
    bne loc_8118254
    ldrh r0, [r2,#0x20] // (ssubmenu.unk_20 - 0x2009a30)
    add r0, #2
    ldrb r1, [r5,#4]
    cmp r0, r1
    bne loc_8118254
    mov r4, #0
    mov r6, #9
    mov r7, #1
loc_8118254:
    ldrb r0, [r5]
    mov r1, #0x40 
    bic r0, r1
    strb r0, [r5]
    tst r7, r7
    beq loc_8118280
    ldr r0, off_8118298 // =unk_811829C 
    ldrb r1, [r5,#0xc]
    lsl r1, r1, #2
    ldrb r6, [r0,r1]
    add r1, #1
    ldrb r4, [r0,r1]
    ldrb r2, [r5,#0xd]
    sub r2, #1
    strb r2, [r5,#0xd]
    bge loc_8118280
    add r1, #1
    ldrb r2, [r0,r1]
    strb r2, [r5,#0xc]
    add r1, #1
    ldrb r2, [r0,r1]
    strb r2, [r5,#0xd]
loc_8118280:
    add r0, r6, #0
    ldrb r1, [r5,#0xe]
    lsr r1, r1, #1
    add r0, r0, r1
    bl sub_800304A
    add r0, r4, #0
    ldrb r1, [r5,#0xe]
    add r0, r0, r1
    bl sprite_setPallete // (int pallete) -> void
    pop {r4-r7,pc}
off_8118298:    .word unk_811829C
unk_811829C:    .byte  9
    .byte  0
    .byte  1
    .byte  8
    .byte 0xA
    .byte  1
    .byte  0
    .byte  8
.endfunc // sub_8118234

.func
.thumb_func
sub_81182A4:
    push {r4-r7,lr}
    bl sub_8118314
    add r3, r0, #0
    mov r7, #0
    ldr r0, off_8118310 // =sSubmenu 
    ldrb r4, [r0,#0xc] // (ssubmenu.unk_0c - 0x2009a30)
    tst r4, r4
    beq loc_81182FA
    cmp r4, #0x10
    bne loc_81182C2
    ldrh r0, [r3,#0xe]
    strh r0, [r5,#0x14]
    mov r7, #0x14
    b loc_81182FA
loc_81182C2:
    mov r0, #0xb8
    strh r0, [r3,#0xc]
    mov r1, #0xe
    ldrsh r0, [r3,r1]
    strh r0, [r5,#0x10]
    strh r0, [r5,#0x14]
    cmp r4, #0xc
    beq loc_81182DE
    ldr r1, off_8118300 // =dword_8118304 
    ldr r1, [r1,r4]
    add r0, r0, r1
    strh r0, [r5,#0x16]
    mov r7, #4
    b loc_81182FA
loc_81182DE:
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    strh r2, [r5,#0x12]
    bl sprite_setScaleParameters
    mov r0, #0xfc
    lsl r0, r0, #0x18
    mvn r0, r0
    bl sub_8002FA6
    mov r7, #0xc
loc_81182FA:
    strb r7, [r5,#0xa]
    pop {r4-r7,pc}
    .byte 0, 0
off_8118300:    .word dword_8118304
dword_8118304:    .word 0x0
    .word 0x12, 0xFFFFFFEE
off_8118310:    .word sSubmenu
.endfunc // sub_81182A4

.func
.thumb_func
sub_8118314:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .byte 0, 0
.endfunc // sub_8118314

.func
.thumb_func
sub_8118320:
    add r2, r0, #0
    sub r0, r1, r0
    cmp r0, #0
    blt loc_8118332
    lsr r0, r0, #1
    cmp r0, #1
    ble loc_8118340
    add r2, r2, r0
    b loc_8118340
loc_8118332:
    add r1, r0, #0
    neg r0, r0
    lsr r0, r0, #1
    cmp r0, #1
    ble loc_8118340
    asr r1, r1, #1
    add r2, r2, r1
loc_8118340:
    add r0, r2, #0
    mov pc, lr
.endfunc // sub_8118320

loc_8118344:
    push {lr}
    ldr r6, off_8118364 // =sSubmenu 
    ldr r0, off_8118354 // =off_8118358 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8118354:    .word off_8118358
off_8118358:    .word sub_8118368+1
    .word loc_81183C4+1
    .word sub_81185B8+1
off_8118364:    .word sSubmenu
.func
.thumb_func
sub_8118368:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x12
    ldr r1, off_81183C0 // =unk_201F6F0 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8118368

    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_81183BC // =0x1C0 
    bl sub_800306C
    mov r0, #1
    bl sub_8003060
    mov r0, #8
    bl sub_800304A
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xe6
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x14
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    mov r0, #0
    strb r0, [r5,#0xc]
    bl loc_81183C4
    pop {pc}
    .balign 4, 0x00
off_81183BC:    .word 0x1C0
off_81183C0:    .word unk_201F6F0
loc_81183C4:
    push {lr}
    ldr r0, off_81183E4 // =off_81183E8 
    ldrb r1, [r6,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_81185C0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_81183E4:    .word off_81183E8
off_81183E8:    .word sub_8118424+1
    .word sub_811842C+1
    .word sub_811847C+1
    .word sub_81184A8+1
    .word sub_81184C0+1
    .word sub_81184EC+1
    .word sub_8118510+1
    .word sub_81184A8+1
    .word sub_8118550+1
    .word sub_811857C+1
    .word sub_8118510+1
    .word sub_811842C+1
    .word sub_81185A8+1
    .word sub_811842C+1
    .word sub_81184A8+1
.func
.thumb_func
sub_8118424:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    pop {pc}
.endfunc // sub_8118424

.func
.thumb_func
sub_811842C:
    push {r4-r7,lr}
    mov r4, #1
    ldrb r0, [r6]
    cmp r0, #0x28 
    beq loc_811843E
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8118454
loc_811843E:
    ldrb r0, [r6,#0xc]
    cmp r0, #0xc
    beq loc_8118454
    ldrh r0, [r6,#0x20]
    ldrh r1, [r6,#0x24]
    add r0, r0, r1
    ldrh r1, [r6,#0x1e]
    sub r1, #1
    cmp r0, r1
    beq loc_8118454
    mov r4, #0x23 
loc_8118454:
    strb r4, [r5]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #0xe6
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x12
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    bl sub_8002CCE
    bl sub_8002EE8
    bl sub_81185E4
    bl sub_8118604
    pop {r4-r7,pc}
.endfunc // sub_811842C

.func
.thumb_func
sub_811847C:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_811848A
    mov r4, #0x23 
loc_811848A:
    mov r1, #2
    ldrb r0, [r6,#0x10]
    tst r0, r0
    bne loc_8118496
    mov r1, #0
    mov r4, #1
loc_8118496:
    strb r1, [r5,#0xc]
    strb r4, [r5]
    bl sub_81186A8
    bl sub_81185E4
    bl sub_8118604
    pop {r4-r7,pc}
.endfunc // sub_811847C

.func
.thumb_func
sub_81184A8:
    push {lr}
    mov r4, #1
    strb r4, [r5]
    mov r1, #0
    strb r1, [r5,#0xc]
    bl sub_8118744
    bl sub_81185E4
    bl sub_8118658
    pop {pc}
.endfunc // sub_81184A8

.func
.thumb_func
sub_81184C0:
    push {lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_81184CE
    mov r4, #0x23 
loc_81184CE:
    strb r4, [r5]
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #0xa
    bl sub_8002C7A
    bl sub_8002EE8
    bl sub_81186A8
    bl sub_81185E4
    bl sub_8118658
    pop {pc}
.endfunc // sub_81184C0

.func
.thumb_func
sub_81184EC:
    push {lr}
    mov r4, #0x23 
    mov r1, #0
    strb r1, [r5,#0xc]
    strb r4, [r5]
    mov r0, #0xa
    bl sub_8002C7A
    bl sub_8002EE8
    bl sub_81186A8
    bl sub_81185E4
    bl sub_8118658
    pop {pc}
    .byte 0, 0
.endfunc // sub_81184EC

.func
.thumb_func
sub_8118510:
    push {lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_811851E
    mov r4, #0x23 
loc_811851E:
    strb r4, [r5]
    mov r1, #0
    strb r1, [r5,#0xc]
    ldrb r0, [r6,#2]
    cmp r0, #0x28 
    bne loc_8118538
    mov r4, #0
    bl sub_8118794
    beq loc_8118534
    mov r4, #1
loc_8118534:
    strb r4, [r6,#0xd]
    b loc_8118544
loc_8118538:
    mov r4, #0
    bl sub_81186A8
    beq loc_8118542
    mov r4, #1
loc_8118542:
    strb r4, [r6,#0xd]
loc_8118544:
    bl sub_81185E4
    bl sub_8118658
    pop {pc}
    .byte 0, 0
.endfunc // sub_8118510

.func
.thumb_func
sub_8118550:
    push {lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_811855E
    mov r4, #0x23 
loc_811855E:
    strb r4, [r5]
    mov r0, #0
    strb r0, [r5,#0xc]
    mov r0, #0xa
    bl sub_8002C7A
    bl sub_8002EE8
    bl sub_811870C
    bl sub_81185E4
    bl sub_8118658
    pop {pc}
.endfunc // sub_8118550

.func
.thumb_func
sub_811857C:
    push {lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_811858A
    mov r4, #0x23 
loc_811858A:
    mov r1, #0
    strb r1, [r5,#0xc]
    strb r4, [r5]
    mov r0, #0xa
    bl sub_8002C7A
    bl sub_8002EE8
    bl sub_81186A8
    bl sub_81185E4
    bl sub_8118658
    pop {pc}
.endfunc // sub_811857C

.func
.thumb_func
sub_81185A8:
    push {lr}
    mov r0, #0x80
    bl chatbox_8045F3C
    beq locret_81185B6
    mov r0, #1
    strb r0, [r5]
locret_81185B6:
    pop {pc}
.endfunc // sub_81185A8

.func
.thumb_func
sub_81185B8:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81185B8

.func
.thumb_func
sub_81185C0:
    push {lr}
    ldrh r0, [r6,#0x3a]
    ldrh r1, [r6,#0x38]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_81186A4 // =word_201DA80 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    bl sub_813B780
    add r1, r0, #0
    ldrb r0, [r5,#0xc]
    ldrb r1, [r1,#1]
    cmp r1, #0
    beq locret_81185E2
    add r0, #1
locret_81185E2:
    pop {pc}
.endfunc // sub_81185C0

.func
.thumb_func
sub_81185E4:
    push {lr}
    ldrh r0, [r6,#0x3a]
    ldrh r1, [r6,#0x38]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_81186A4 // =word_201DA80 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    bl sub_813B780
    ldrb r0, [r0,#3]
    sub r0, #1
    bl sprite_setPallete // (int pallete) -> void
    pop {pc}
.endfunc // sub_81185E4

.func
.thumb_func
sub_8118604:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x3a]
    ldrh r1, [r6,#0x38]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_81186A4 // =word_201DA80 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    ldrb r1, [r6,#0xe]
    mov r2, #0
    bl loc_813B7A0
    add r7, r0, #0
    add r7, #8
    mov r4, #0
    mov r6, #0
    mov r0, #0
    mvn r0, r0
    lsl r0, r0, #1
    lsr r0, r0, #1
    mov r2, #0x80
    lsl r2, r2, #0x17
loc_8118632:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_811863A
    bic r0, r2
loc_811863A:
    lsr r2, r2, #1
    add r6, #1
    cmp r6, #5
    blt loc_8118648
    mov r6, #0
    add r7, #2
    add r4, #2
loc_8118648:
    add r7, #1
    add r4, #1
    cmp r4, #0x31 
    blt loc_8118632
    bl sub_8002FA6
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118604

.func
.thumb_func
sub_8118658:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x3a]
    ldrh r1, [r6,#0x38]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_81186A4 // =word_201DA80 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    ldrb r1, [r6,#0xe]
    bl loc_813B7A0
    add r7, r0, #0
    add r7, #8
    mov r4, #0
    mov r6, #0
    mov r0, #0
    mvn r0, r0
    mov r2, #0x80
    lsl r2, r2, #0x18
loc_8118680:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_8118688
    bic r0, r2
loc_8118688:
    lsr r2, r2, #1
    add r6, #1
    cmp r6, #5
    blt loc_8118696
    mov r6, #0
    add r7, #2
    add r4, #2
loc_8118696:
    add r7, #1
    add r4, #1
    cmp r4, #0x31 
    blt loc_8118680
    bl sub_8002FA6
    pop {r4-r7,pc}
off_81186A4:    .word word_201DA80
.endfunc // sub_8118658

.func
.thumb_func
sub_81186A8:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #0
    str r0, [sp,#4]
    bl sub_81187DC
    add r7, r0, #0
    ldr r4, off_8118738 // =dword_811873C 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x28]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    sub r0, #1
    str r0, [sp]
    ldrh r1, [r7,#0xc]
    bl sub_8118320
    strh r0, [r7,#0xc]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_81186E0
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_81186E0:
    ldrh r0, [r6,#0x2c]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    sub r0, #1
    str r0, [sp]
    ldrh r1, [r7,#0xe]
    bl sub_8118320
    strh r0, [r7,#0xe]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8118702
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_8118702:
    ldr r0, [sp,#4]
    cmp r0, #2
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_81186A8

.func
.thumb_func
sub_811870C:
    push {r4-r7,lr}
    bl sub_81187DC
    add r7, r0, #0
    ldr r4, off_8118738 // =dword_811873C 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x28]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x2c]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    strh r0, [r7,#0xe]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8118738:    .word dword_811873C
dword_811873C:    .word 0x260E2616, 0x1E0E
.endfunc // sub_811870C

.func
.thumb_func
sub_8118744:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #0
    str r0, [sp,#4]
    bl sub_81187DC
    add r7, r0, #0
    mov r0, #0xb6
    str r0, [sp]
    ldrh r1, [r7,#0xc]
    bl sub_8118320
    strh r0, [r7,#0xc]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_811876A
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_811876A:
    ldrh r0, [r6,#0x20]
    mov r1, #0x12
    mul r0, r1
    mov r1, #0x1b
    add r0, r0, r1
    str r0, [sp]
    ldrh r1, [r7,#0xe]
    bl sub_8118320
    strh r0, [r7,#0xe]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_811878A
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_811878A:
    ldr r0, [sp,#4]
    cmp r0, #2
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118744

.func
.thumb_func
sub_8118794:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #0
    str r0, [sp,#4]
    bl sub_81187DC
    add r7, r0, #0
    mov r0, #0xb6
    str r0, [sp]
    ldrh r1, [r7,#0xc]
    bl sub_8118320
    strh r0, [r7,#0xc]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_81187BA
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_81187BA:
    mov r0, #0x2f 
    str r0, [sp]
    ldrh r1, [r7,#0xe]
    bl sub_8118320
    strh r0, [r7,#0xe]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_81187D2
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_81187D2:
    ldr r0, [sp,#4]
    cmp r0, #2
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118794

.func
.thumb_func
sub_81187DC:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_81187DC

loc_81187E8:
    push {lr}
    ldr r6, off_8118808 // =sSubmenu 
    ldr r0, off_81187F8 // =off_81187FC 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_81187F8:    .word off_81187FC
off_81187FC:    .word sub_811880C+1
    .word loc_8118874+1
    .word sub_8118AA8+1
off_8118808:    .word sSubmenu
.func
.thumb_func
sub_811880C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x15
    ldr r1, off_8118870 // =unk_20218F0 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811880C

    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_811886C // =0x1D8 
    bl sub_800306C
    mov r0, #3
    bl sub_8003060
    mov r0, #7
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xff
    strb r0, [r5,#0xd]
    mov r0, #0x88
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x14
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    mov r0, #0
    strb r0, [r5,#0xc]
    bl loc_8118874
    pop {pc}
    .balign 4, 0x00
off_811886C:    .word 0x1D8
off_8118870:    .word unk_20218F0
loc_8118874:
    push {lr}
    ldrb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    ldr r0, off_811888C // =off_8118890 
    ldrb r1, [r6,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_811888C:    .word off_8118890
off_8118890:    .word sub_81188CC+1
    .word sub_81188EC+1
    .word sub_811891C+1
    .word sub_8118964+1
    .word sub_8118998+1
    .word sub_81189C0+1
    .word sub_8118A00+1
    .word sub_81189D4+1
    .word sub_81189E0+1
    .word sub_811891C+1
    .word sub_8118A2C+1
    .word sub_8118A58+1
    .word sub_8118A88+1
    .word sub_81188EC+1
    .word sub_81189D4+1
.func
.thumb_func
sub_81188CC:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    bl sub_8118AB0
    mov r0, #2
    strb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_81188E8
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_81188E8:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_81188CC

.func
.thumb_func
sub_81188EC:
    push {r4-r7,lr}
    mov r4, #0x23 
    strb r4, [r5]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #0x88
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x12
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    mov r0, #3
    strb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_8118918
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_8118918:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_81188EC

.func
.thumb_func
sub_811891C:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_811892A
    mov r4, #0x23 
loc_811892A:
    strb r4, [r5]
    mov r7, #0
    ldrb r0, [r6,#0x10]
    tst r0, r0
    beq loc_8118938
    mov r7, #2
    b loc_8118944
loc_8118938:
    ldrh r0, [r6,#0x28]
    ldrh r1, [r6,#0x2c]
    bl sub_813B9B4
    beq loc_8118944
    mov r7, #1
loc_8118944:
    strb r7, [r5,#0xc]
    mov r4, #0
    bl sub_8118AB0
    beq loc_8118950
    mov r4, #1
loc_8118950:
    strb r4, [r6,#0xd]
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_8118962
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_8118962:
    pop {r4-r7,pc}
.endfunc // sub_811891C

.func
.thumb_func
sub_8118964:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8118972
    mov r4, #0x23 
loc_8118972:
    strb r4, [r5]
    mov r1, #3
    strb r1, [r5,#0xc]
    mov r4, #0
    bl sub_8118B48
    beq loc_8118982
    mov r4, #1
loc_8118982:
    strb r4, [r6,#0xd]
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_8118994
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_8118994:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118964

.func
.thumb_func
sub_8118998:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    bl sub_8118AB0
    bne loc_81189A8
    mov r0, #1
    strb r0, [r6,#0xd]
loc_81189A8:
    mov r0, #4
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_81189BC
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_81189BC:
    pop {pc}
    .byte 0, 0
.endfunc // sub_8118998

.func
.thumb_func
sub_81189C0:
    push {lr}
    mov r4, #1
    strb r4, [r5]
    mov r4, #0
    bl sub_8118AB0
    beq loc_81189D0
    mov r4, #1
loc_81189D0:
    strb r4, [r6,#0xd]
    pop {pc}
.endfunc // sub_81189C0

.func
.thumb_func
sub_81189D4:
    push {r4-r7,lr}
    mov r4, #0x23 
    strb r4, [r5]
    bl sub_8118AB0
    pop {r4-r7,pc}
.endfunc // sub_81189D4

.func
.thumb_func
sub_81189E0:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #1
    strb r0, [r6,#0xd]
    mov r0, #2
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_81189FE
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_81189FE:
    pop {pc}
.endfunc // sub_81189E0

.func
.thumb_func
sub_8118A00:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8118A0E
    mov r4, #0x23 
loc_8118A0E:
    strb r4, [r5]
    mov r1, #2
    strb r1, [r5,#0xc]
    bl sub_8118AB0
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_8118A28
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_8118A28:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118A00

.func
.thumb_func
sub_8118A2C:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8118A3A
    mov r4, #0x23 
loc_8118A3A:
    strb r4, [r5]
    mov r1, #0
    strb r1, [r5,#0xc]
    bl sub_8118AB0
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_8118A54
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_8118A54:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118A2C

.func
.thumb_func
sub_8118A58:
    push {r4-r7,lr}
    mov r4, #1
    strb r4, [r5]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #0x88
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x12
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    mov r0, #3
    strb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq locret_8118A84
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
locret_8118A84:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118A58

.func
.thumb_func
sub_8118A88:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#0xc]
    ldrb r1, [r5,#0xd]
    cmp r0, r1
    beq loc_8118AA2
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
loc_8118AA2:
    bl sprite_update
.endfunc // sub_8118A88

    pop {pc}
.func
.thumb_func
sub_8118AA8:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8118AA8

.func
.thumb_func
sub_8118AB0:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #0
    str r0, [sp,#4]
    bl sub_8118B98
    add r7, r0, #0
    ldr r4, off_8118B3C // =dword_8118B40 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x28]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    str r0, [sp]
    ldrh r1, [r7,#0xc]
    bl sub_8118320
    strh r0, [r7,#0xc]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8118AE6
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_8118AE6:
    ldrh r0, [r6,#0x2c]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    str r0, [sp]
    ldrh r1, [r7,#0xe]
    bl sub_8118320
    strh r0, [r7,#0xe]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8118B06
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_8118B06:
    ldr r0, [sp,#4]
    cmp r0, #2
    add sp, sp, #8
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_8118AB0

    push {r4-r7,lr}
    bl sub_8118B98
    add r7, r0, #0
    ldr r4, off_8118B3C // =dword_8118B40 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x28]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    ldrh r0, [r6,#0x2c]
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    strh r0, [r7,#0xe]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8118B3C:    .word dword_8118B40
dword_8118B40:    .word 0x250D2515, 0x1D0D
.func
.thumb_func
sub_8118B48:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #0
    str r0, [sp,#4]
    bl sub_8118B98
    add r7, r0, #0
    mov r0, #0x88
    str r0, [sp]
    ldrh r1, [r7,#0xc]
    bl sub_8118320
    strh r0, [r7,#0xc]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8118B6E
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_8118B6E:
    ldrh r0, [r6,#0x20]
    mov r1, #0x12
    mul r0, r1
    mov r1, #0x1b
    add r0, r0, r1
    str r0, [sp]
    ldrh r1, [r7,#0xe]
    bl sub_8118320
    strh r0, [r7,#0xe]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8118B8E
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
loc_8118B8E:
    ldr r0, [sp,#4]
    cmp r0, #2
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8118B48

.func
.thumb_func
sub_8118B98:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_8118B98

loc_8118BA4:
    push {lr}
    ldr r6, off_8118BC4 // =sSubmenu 
    ldr r0, off_8118BB4 // =off_8118BB8 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8118BB4:    .word off_8118BB8
off_8118BB8:    .word sub_8118BC8+1
    .word sub_8118C2C+1
    .word sub_8118CEC+1
off_8118BC4:    .word sSubmenu
.func
.thumb_func
sub_8118BC8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x13
    ldr r1, off_8118C28 // =unk_2021FF0 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8118BC8

    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_8118C24 // =0x1E0 
    bl sub_800306C
    mov r0, #4
    bl sub_8003060
    mov r0, #6
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x80
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x14
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    mov r0, #0xff
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    bl sub_8118C2C
    .byte  0
    .byte 0xBD
    .balign 4, 0x00
off_8118C24:    .word 0x1E0
off_8118C28:    .word unk_2021FF0
.func
.thumb_func
sub_8118C2C:
    push {lr}
    ldrb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    ldr r0, off_8118C44 // =off_8118C48 
    ldrb r1, [r6,#2]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_8118C44:    .word off_8118C48
off_8118C48:    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C8C+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
    .word sub_8118C84+1
.endfunc // sub_8118C2C

.func
.thumb_func
sub_8118C84:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    pop {pc}
.endfunc // sub_8118C84

.func
.thumb_func
sub_8118C8C:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8118C9A
    mov r4, #0x43 
loc_8118C9A:
    ldrh r0, [r6,#0x28]
    ldrh r1, [r6,#0x2c]
    bl sub_813B9B4
    bne loc_8118CA6
    mov r4, #1
loc_8118CA6:
    strb r4, [r5]
    sub r0, #1
    blt loc_8118CD4
    bl sub_813B9FC
    ldrh r1, [r0]
    lsr r1, r1, #2
    ldrb r0, [r5,#0xd]
    cmp r1, r0
    beq loc_8118CD4
    strb r1, [r5,#0xc]
    push {r4-r7}
    ldr r0, off_8118CDC // =dword_873EA50 
    ldr r2, off_8118CE0 // =unk_2017A00 
    ldr r3, dword_8118CE8 // =0x6013C00 
    mov r4, #8
    mov r5, #1
    ldr r6, off_8118CE4 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r4-r7}
    strb r0, [r5,#0xe]
loc_8118CD4:
    bl sub_8118CF4
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8118CDC:    .word dword_873EA50
off_8118CE0:    .word unk_2017A00
off_8118CE4:    .word dword_86B7AE0
dword_8118CE8:    .word 0x6013C00
.endfunc // sub_8118C8C

.func
.thumb_func
sub_8118CEC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8118CEC

.func
.thumb_func
sub_8118CF4:
    push {r4-r7,lr}
    bl sub_8118D54
    add r7, r0, #0
    ldr r4, off_8118D48 // =dword_8118D4C 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x28]
    cmp r0, #0
    bgt loc_8118D0E
    mov r0, #1
    b loc_8118D16
loc_8118D0E:
    ldrh r0, [r6,#0x28]
    cmp r0, #4
    blt loc_8118D16
    mov r0, #4
loc_8118D16:
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    ldrb r2, [r5,#0xe]
    mov r1, #8
    sub r1, r1, r2
    lsr r1, r1, #1
    lsl r1, r1, #3
    add r0, r0, r1
    strh r0, [r7,#0xc]
    mov r2, #6
    ldrh r0, [r6,#0x2c]
    cmp r0, #6
    blt loc_8118D38
    mov r0, #4
    mov r2, #0x10
loc_8118D38:
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    add r0, r0, r2
    strh r0, [r7,#0xe]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8118D48:    .word dword_8118D4C
dword_8118D4C:    .word 0x260E2616, 0x1E0E
.endfunc // sub_8118CF4

.func
.thumb_func
sub_8118D54:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .byte 0, 0
.endfunc // sub_8118D54

loc_8118D60:
    push {lr}
    ldr r6, off_8118D80 // =sSubmenu 
    ldr r0, off_8118D70 // =off_8118D74 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8118D70:    .word off_8118D74
off_8118D74:    .word sub_8118D84+1
    .word sub_8118DE0+1
    .word sub_8118E1C+1
off_8118D80:    .word sSubmenu
.func
.thumb_func
sub_8118D84:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x14
    ldr r1, off_8118DDC // =unk_20222F0 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8118D84

    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_8118DD8 // =0x200 
    bl sub_800306C
    mov r0, #4
    bl sub_8003060
    mov r0, #5
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x80
    mov r1, #0x1b
    ldrh r2, [r6,#0x20]
    mov r3, #0x14
    mul r2, r3
    add r1, r1, r2
    bl sub_800307C
    bl sub_8118DE0
    .byte  0
    .byte 0xBD
off_8118DD8:    .word 0x200
off_8118DDC:    .word unk_20222F0
.func
.thumb_func
sub_8118DE0:
    push {lr}
    ldr r0, off_8118DF4 // =off_8118DF8 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_8118DF4:    .word off_8118DF8
off_8118DF8:    .word sub_8118DFC+1
.endfunc // sub_8118DE0

.func
.thumb_func
sub_8118DFC:
    push {lr}
    bl sub_8118E24
    ldr r0, off_8118E10 // =off_8118E14 
    ldrh r1, [r6,#0x30]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FA6
    pop {pc}
off_8118E10:    .word off_8118E14
off_8118E14:    .word start_
    .word 0x10000000
.endfunc // sub_8118DFC

.func
.thumb_func
sub_8118E1C:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8118E1C

.func
.thumb_func
sub_8118E24:
    push {r4-r7,lr}
    bl sub_8118E78
    add r7, r0, #0
    ldr r4, off_8118E6C // =dword_8118E70 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r4, r4, r0
    ldrh r0, [r6,#0x28]
    cmp r0, #0
    bgt loc_8118E3E
    mov r0, #1
    b loc_8118E46
loc_8118E3E:
    ldrh r0, [r6,#0x28]
    cmp r0, #6
    blt loc_8118E46
    mov r0, #5
loc_8118E46:
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4]
    add r0, r0, r1
    strh r0, [r7,#0xc]
    mov r2, #0x14
    ldrh r0, [r6,#0x2c]
    cmp r0, #5
    blt loc_8118E5C
    mov r2, #0x1e
    neg r2, r2
loc_8118E5C:
    mov r1, #0x14
    mul r0, r1
    ldrb r1, [r4,#1]
    add r0, r0, r1
    add r0, r0, r2
    strh r0, [r7,#0xe]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8118E6C:    .word dword_8118E70
dword_8118E70:    .word 0x260E2616, 0x1E0E
.endfunc // sub_8118E24

.func
.thumb_func
sub_8118E78:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_8118E78

loc_8118E84:
    push {lr}
    ldr r6, off_8118EA4 // =sSubmenu 
    ldr r0, off_8118E94 // =off_8118E98 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_8118E94:    .word off_8118E98
off_8118E98:    .word sub_8118EA8+1
    .word sub_8118F14+1
    .word sub_8118F1C+1
off_8118EA4:    .word sSubmenu
.func
.thumb_func
sub_8118EA8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x17
    ldr r1, off_8118F04 // =unk_20226F0 
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r6,#0xf]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8118EA8

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, off_8118F00 // =0x220 
    bl sub_800306C
    mov r0, #4
    bl sub_8003060
    mov r0, #4
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    bl sub_8002C52
    mov r0, #4
    strb r0, [r5,#8]
    ldr r2, off_8118F08 // =aOGGx 
    ldrb r0, [r6,#0xf]
    lsl r0, r0, #1
    add r2, r2, r0
    ldrb r0, [r2]
    ldrb r1, [r2,#1]
    bl sub_800307C
    bl sub_8118F14
    pop {pc}
off_8118F00:    .word 0x220
off_8118F04:    .word unk_20226F0
off_8118F08:    .word aOGGx
aOGGx:    .byte 0x4F, 0x60
    .byte 0x47, 0x60
    .byte 0x47, 0x58
    .byte 0x0
    .byte 0x0
.func
.thumb_func
sub_8118F14:
    push {lr}
    bl sprite_update
    pop {pc}
.endfunc // sub_8118F14

.func
.thumb_func
sub_8118F1C:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8118F1C

.func
.thumb_func
sub_8118F24:
    push {lr}
    ldr r0, off_8118F34 // =off_8118F38 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8118F34:    .word off_8118F38
off_8118F38:    .word sub_8118F44+1
    .word sub_8118FC0+1
    .word sub_81190D8+1
.endfunc // sub_8118F24

.func
.thumb_func
sub_8118F44:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #8
    ldr r1, off_8118F9C // =unk_201E284 
    bl loc_8002774 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8118F44

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, dword_8118F98 // =0x0 
    bl sub_800306C
    bl sub_81190E0
    mov r0, #4
    bl sub_8003060
    ldr r2, off_8118FA0 // =dword_8118FA4 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldrh r0, [r2,r1]
    add r1, #2
    ldrh r1, [r2,r1]
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8118FC0
    .byte  0
    .byte 0xBD
dword_8118F98:    .word 0x0
off_8118F9C:    .word unk_201E284
off_8118FA0:    .word dword_8118FA4
dword_8118FA4:    .word 0x200030
    .word 0x200078
    .word 0x2000C0, 0x62002A, 0x5A002A, 0x8118FBC, 0x100
.func
.thumb_func
sub_8118FC0:
    push {lr}
    ldr r1, off_8118FD4 // =off_8118FD8 
    ldrb r0, [r5,#6]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
off_8118FD4:    .word off_8118FD8
off_8118FD8:    .word sub_8118FE0+1
    .word sub_8118FE4+1
.endfunc // sub_8118FC0

.func
.thumb_func
sub_8118FE0:
    push {lr}
    pop {pc}
.endfunc // sub_8118FE0

.func
.thumb_func
sub_8118FE4:
    push {lr}
    ldr r1, off_811900C // =off_8119010 
    ldrb r0, [r5,#9]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    ldrb r0, [r5,#4]
.endfunc // sub_8118FE4

    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq locret_811900A
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    bl sub_81190E0
locret_811900A:
    pop {pc}
off_811900C:    .word off_8119010
off_8119010:    .word sub_8119018+1
    .word sub_8119084+1
.func
.thumb_func
sub_8119018:
    push {r4-r7,lr}
    mov r0, #4
    strb r0, [r5,#9]
    ldrb r1, [r5,#3]
    mov r0, #7
    sub r1, r1, r0
    lsl r3, r1, #2
    ldr r0, off_8119058 // =off_811905C 
    ldr r2, [r0,r3]
    ldr r0, off_8119068 // =dword_811906C 
    ldr r3, [r0,r3]
    add r0, r1, #0
    bl sub_8137884
    lsr r0, r0, #4
    bl sub_804A24C
    mov r4, #8
    mov r5, #1
    ldr r6, off_8119078 // =dword_86B7AE0 
    mov r7, #0
    ldr r1, off_811907C // =loc_3006B94+1 
    mov lr, pc
    bx r1
.endfunc // sub_8119018

    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_20347D8
    .word unk_20018EC
    .word unk_20065C0
off_8119058:    .word off_811905C
off_811905C:    .word unk_2017A00
    .word unk_2017C00
    .word unk_2017E00
off_8119068:    .word dword_811906C
dword_811906C:    .word 0x6012000, 0x6012200, 0x6012400
off_8119078:    .word dword_86B7AE0
off_811907C:    .word loc_3006B94+1
    .word unk_86CF4AC
.func
.thumb_func
sub_8119084:
    push {r4-r7,lr}
    ldr r4, off_81190B4 // =dword_81190B8 
    ldr r6, off_81190C8 // =dword_81190CC 
    ldrb r0, [r5,#3]
    mov r1, #7
    sub r0, r0, r1
    lsl r0, r0, #2
    ldr r6, [r6,r0]
    ldr r4, [r4,r0]
    mov r7, #8
loc_8119098:
    add r0, r4, #0
    add r1, r6, #0
    ldr r2, dword_81190C4 // =0x0 
    mov r3, #5
    bl sub_802FE28
.endfunc // sub_8119084

    mov r0, #8
    lsl r0, r0, #0x10
    add r4, r4, r0
    mov r0, #2
    add r6, r6, r0
    sub r7, #1
    bgt loc_8119098
    pop {r4-r7,pc}
off_81190B4:    .word dword_81190B8
dword_81190B8:    .word 0x108018, 0x588018, 0xA08018
dword_81190C4:    .word 0x0
off_81190C8:    .word dword_81190CC
dword_81190CC:    .word 0xB900, 0xB910, 0xB920
.func
.thumb_func
sub_81190D8:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81190D8

.func
.thumb_func
sub_81190E0:
    push {lr}
    ldr r0, off_81190F0 // =off_81190F4 
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    bl sub_800304A
    pop {pc}
    .byte 0, 0
off_81190F0:    .word off_81190F4
off_81190F4:    .word 0x100
.endfunc // sub_81190E0

.func
.thumb_func
sub_81190F8:
    push {r4,r5,lr}
    mov r4, #0
    bl sub_80466C4
    beq loc_8119110
    add r5, r1, #0
    bl sub_8002DEA
    mov r1, #0xc0
    tst r0, r1
    beq loc_8119110
    mov r4, #1
loc_8119110:
    add r0, r4, #0
    tst r0, r0
    pop {r4,r5,pc}
    .balign 4, 0x00
.endfunc // sub_81190F8

.func
.thumb_func
sub_8119118:
    push {lr}
    bl sub_80466C4
    beq locret_8119124
    mov r0, #8
    strb r0, [r1,#8]
locret_8119124:
    pop {pc}
    .balign 4, 0x00
off_8119128:    .word off_8119140
    .word off_811914C
    .word off_8119140
    .word off_8119140
    .word off_8119158
    .word off_8119164
off_8119140:    .word 0xB0
    .byte 0, 0, 0, 0
    .word 0x100
off_811914C:    .word 0xD0
    .word 0x20, 0x120
off_8119158:    .word 0x140
    .byte 0, 0, 0, 0
    .word 0x190
off_8119164:    .word 0x178
    .word 0x208
    .word 0x1C8
off_8119170:    .word dword_8119188
    .word dword_811918C
    .word dword_8119188
    .word dword_8119190
    .word dword_8119194
    .word asc_8119198
dword_8119188:    .word 0x1
dword_811918C:    .word 0x1
dword_8119190:    .word 0x2020203
dword_8119194:    .word 0x6060607
asc_8119198:    .byte 0x9, 0x8, 0x8, 0x8, 0x0
    .byte 0x9A, 0x1, 0x2
    .word unk_2033A00
    .word byte_2019A00
    .word unk_2017A00
    .word unk_2018200
    .word unk_2032D00
off_81191B4:    .word off_81191CC
    .word off_81191D8
    .word off_81191E4
    .word off_81191F0
    .word off_81191F0
    .word off_81191FC
off_81191CC:    .word unk_2026A20
    .word unk_2024A20
    .word unk_2026A20
off_81191D8:    .word unk_2035A04
    .word unk_2037A04
    .word unk_2035A04
off_81191E4:    .word unk_2020C00
    .word unk_2022C00
    .word unk_2020C00
off_81191F0:    .word unk_202E17C
    .word unk_202F57C
    .word unk_202E17C
off_81191FC:    .word unk_2036500
    .word unk_2034E00
    .word unk_2036500
off_8119208:    .word dword_8119220
    .word dword_8119224
    .word dword_8119220
    .word dword_8119220
    .word dword_8119220
    .word dword_8119224
dword_8119220:    .word 0x20202
dword_8119224:    .word 0x0
off_8119228:    .word dword_8119240
    .word dword_8119244
    .word dword_8119248
    .word dword_8119240
    .word dword_8119240
    .word dword_8119244
dword_8119240:    .word 0x1
dword_8119244:    .word 0x1
dword_8119248:    .word 0x2020203, 0x8119264, 0x8119284, 0x8119264, 0x81192A4
    .word 0x81192C4, 0x81192E4, 0x2030201, 0x20202, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x2030201, 0x20202, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_81192A4:    .word 0x4050403, 0x2040404, 0x2020202, 0x2020202, 0x2020202
    .word 0x2020202, 0x2020202, 0x2020202, 0x8090807, 0x6080808
    .word 0x6060606, 0x6060606, 0x6060606, 0x6060606, 0x6060606
    .word 0x6060606, 0xA0B0A09, 0x80A0A0A, 0x8080808, 0x8080808
    .word 0x8080808, 0x8080808, 0x8080808, 0x8080808, 0x811931C
    .word 0x8119320, 0x811931C, 0x8119324, 0x8119328, 0x811932C
    .word 0x2, 0x2, 0x4, 0x8, 0xA
    .word 0x8119348, 0x811934C, 0x8119348, 0x8119350, 0x8119354
    .word 0x8119358, 0x3, 0x3, 0x5, 0x9
    .word 0xB, 0x1, 0x0
.endfunc // sub_8119118

.func
.thumb_func
sub_8119364:
    push {lr}
    ldr r0, off_8119374 // =off_8119378 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8119374:    .word off_8119378
off_8119378:    .word sub_8119384+1
    .word loc_81196A0+1
    .word sub_8119804+1
.endfunc // sub_8119364

.func
.thumb_func
sub_8119384:
    push {lr}
    ldrb r1, [r5,#4]
    mov r2, #0x10
    tst r1, r2
    beq loc_8119396
    bic r1, r2
    strb r1, [r5,#4]
    mov r0, #1
    strb r0, [r5,#0xa]
loc_8119396:
    mov r0, #0x83
    ldrb r1, [r5,#4]
    cmp r1, #1
    bne loc_81193A0
    mov r0, #0x23 
loc_81193A0:
    strb r0, [r5]
    tst r1, r1
    bne loc_81193AA
    bl sub_81195E4
loc_81193AA:
    ldr r1, off_8119620 // =dword_8119624 
    ldrb r4, [r5,#4]
    ldrb r0, [r1,r4]
    lsl r2, r4, #2
    ldr r1, off_8119630 // =off_81191B4 
    ldrb r3, [r5,#5]
    lsl r3, r3, #2
    ldr r1, [r1,r3]
    ldr r1, [r1,r2]
    bl sub_8002770 // (int a1, int a2) -> void
    ldr r1, off_8119638 // =dword_811963C 
    ldrb r0, [r1,r4]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8119384

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r1, off_8119640 // =off_8119208 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    ldrb r0, [r1,r4]
    bl sub_8002E14
    ldr r1, off_8119628 // =off_8119128 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    lsl r0, r4, #2
    ldr r0, [r1,r0]
    bl sub_800306C
    ldr r1, off_8119634 // =off_8119170 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    ldrb r0, [r1,r4]
    bl sub_800304A
    ldr r0, off_8119644 // =off_8119228 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0,r4]
    bl sub_8003060
    tst r4, r4
    bne loc_8119420
    ldr r0, off_8119648 // =dword_8119248+4 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FEC
loc_8119420:
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xff
    strh r0, [r5,#0x10]
    strb r0, [r5,#0xd]
    strh r0, [r5,#0x1a]
    mov r0, #0
    strb r0, [r5,#0x13]
    bl loc_81196A0
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_8119438:
    push {r4-r7,lr}
    sub sp, sp, #4
    // idx
    ldrh r0, [r5,#0xe]
    tst r0, r0
    beq loc_811944E
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r7, r0, #0
    ldr r0, [r7,#0x24]
    tst r0, r0
    bne loc_8119454
loc_811944E:
    bl sub_81195E4
    b loc_811958E
loc_8119454:
    ldr r1, off_8119628 // =off_8119128 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r1, [r1]
    lsl r1, r1, #5
    ldr r2, dword_8119654 // =0x6010000 
    add r1, r1, r2
    str r1, [sp]
    push {r0,r1}
    add r0, r1, #0
    ldr r1, dword_8119664 // =0x800 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r0,r1}
    mov r2, #0xe0
    add r4, r2, #0
    mov r6, #0
loc_8119478:
    push {r0-r2}
    bl loc_8000AC8
    pop {r0-r2}
    add r0, r0, r4
    ldr r3, off_8119658 // =0x100 
    add r1, r1, r3
    add r6, #1
    cmp r6, #6
    blt loc_8119478
    ldr r1, off_8119634 // =off_8119170 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldrb r0, [r1]
    lsl r0, r0, #5
    ldr r1, off_811965C // =unk_3001550 
    add r1, r1, r0
    mov r2, #0x20 
    ldr r0, [r7,#0x28]
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
    ldrb r0, [r5,#0xc]
    mov r1, #0x40 
    mul r0, r1
    ldr r1, off_8119660 // =dword_86E2E98 
    add r0, r0, r1
    ldr r1, [sp]
    ldr r2, dword_8119664 // =0x800 
    add r1, r1, r2
    mov r2, #0x40 
    bl loc_8000AC8
    ldr r1, off_811964C // =dword_81192A4+96 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldrb r0, [r1]
    lsl r0, r0, #5
    ldr r1, off_811965C // =unk_3001550 
    add r1, r1, r0
    mov r2, #0x20 
    ldr r0, off_8119668 // =dword_86E587C 
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
    ldrb r0, [r7,#6]
    mov r1, #0x80
    mul r0, r1
    ldr r1, off_811966C // =dword_86E3B9C 
    add r0, r0, r1
    ldr r1, [sp]
    ldr r2, dword_8119670 // =0x840 
    add r1, r1, r2
    mov r2, #0x80
    bl loc_8000AC8
    ldr r1, off_8119650 // =dword_81192A4+140 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldrb r0, [r1]
    lsl r0, r0, #5
    ldr r1, off_811965C // =unk_3001550 
    add r1, r1, r0
    mov r2, #0x20 
    ldr r0, off_8119674 // =dword_86E43DC 
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
    ldrh r0, [r7,#0x1a]
    ldrb r1, [r7,#9]
    mov r2, #0x10
    tst r1, r2
    bne loc_8119550
    mov r2, #2
    tst r1, r2
    bne loc_8119520
    ldr r0, [sp]
    ldr r1, dword_8119680 // =0x8C0 
    add r0, r0, r1
    ldr r1, off_8119684 // =0xC0 
    add r1, #0x40 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    b loc_811955C
loc_8119520:
    ldr r1, off_8119678 // =0x3E8 
    cmp r0, r1
    ble loc_8119548
    ldrb r0, [r5,#0xa]
    tst r0, r0
    beq loc_8119542
    ldr r0, off_811969C // =sSubmenu 
    ldrb r1, [r0]
    cmp r1, #0x18
    bne loc_8119542
    ldrb r1, [r0,#0x1] // (ssubmenu.jo_01 - 0x2009a30)
    cmp r1, #0x1c
    bne loc_8119542
    ldrh r0, [r5,#0xe]
    bl sub_8010CE0
    b loc_8119548
loc_8119542:
    ldrh r0, [r5,#0xe]
    bl sub_8010C76
loc_8119548:
    ldr r1, [sp]
    bl sub_8119594
    b loc_811955C
loc_8119550:
    mov r0, #0xaa
    lsl r1, r0, #8
    orr r0, r1
    ldr r1, [sp]
    bl sub_8119594
loc_811955C:
    ldr r0, off_8119690 // =dword_86EDB54+1400 
    ldrh r1, [r5,#0xe]
    cmp r1, #0xff
    bgt loc_8119566
    ldr r0, off_811968C // =dword_86EB354+1380 
loc_8119566:
    mov r2, #0xff
    and r1, r2
    ldr r2, off_811962C // =asc_8119198+4 
    ldrb r3, [r5,#5]
    lsl r3, r3, #2
    ldr r2, [r2,r3]
    ldr r3, off_8119628 // =off_8119128 
    ldrb r4, [r5,#5]
    lsl r4, r4, #2
    ldr r3, [r3,r4]
    ldr r3, [r3,#8]
    lsl r3, r3, #5
    ldr r4, dword_8119654 // =0x6010000 
    add r3, r3, r4
    mov r4, #0xa
    mov r5, #3
    ldr r6, off_8119688 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
loc_811958E:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8119438

.func
.thumb_func
sub_8119594:
    push {r4-r7,lr}
    ldr r2, dword_8119680 // =0x8C0 
    add r1, r1, r2
    ldr r2, off_8119684 // =0xC0 
    add r7, r1, r2
    push {r0}
    add r0, r1, #0
    add r1, r2, #0
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r0}
    mov r1, #0xaa
    lsl r2, r1, #8
    orr r1, r2
    cmp r0, r1
    bne loc_81195BA
    mov r6, #3
    add r4, r0, #0
    b loc_81195C6
loc_81195BA:
    bl sub_8000C00
    add r4, r0, #0
    bl sub_8000C5C
    add r6, r0, #0
loc_81195C6:
    mov r0, #0xf
    and r0, r4
    lsr r4, r4, #4
    mov r2, #0x40 
    mul r0, r2
    ldr r1, off_811967C // =dword_86E411C 
    add r0, r0, r1
    add r1, r7, #0
    bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
    sub r7, #0x40 
    sub r6, #1
    bgt loc_81195C6
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8119594

.func
.thumb_func
sub_81195E4:
    push {lr}
    ldr r1, off_8119628 // =off_8119128 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r1, [r1]
    lsl r1, r1, #5
    ldr r2, dword_8119654 // =0x6010000 
    add r1, r1, r2
    push {r0,r1}
    add r0, r1, #0
    ldr r1, dword_8119694 // =0xA00 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r0,r1}
    ldr r1, off_8119628 // =off_8119128 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r1, [r1,#8]
    lsl r1, r1, #5
    ldr r2, dword_8119654 // =0x6010000 
    add r1, r1, r2
    push {r0,r1}
    add r0, r1, #0
    ldr r1, dword_8119698 // =0x780 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r0,r1}
    pop {pc}
off_8119620:    .word dword_8119624
dword_8119624:    .word 0x50705
off_8119628:    .word off_8119128
off_811962C:    .word asc_8119198+4
off_8119630:    .word off_81191B4
off_8119634:    .word off_8119170
off_8119638:    .word dword_811963C
dword_811963C:    .word 0x10000
off_8119640:    .word off_8119208
off_8119644:    .word off_8119228
off_8119648:    .word dword_8119248+4
off_811964C:    .word dword_81192A4+0x60
off_8119650:    .word dword_81192A4+0x8C
dword_8119654:    .word 0x6010000
off_8119658:    .word 0x100
off_811965C:    .word unk_3001550
off_8119660:    .word dword_86E2E98
dword_8119664:    .word 0x800
off_8119668:    .word dword_86E587C
off_811966C:    .word dword_86E3B9C
dword_8119670:    .word 0x840
off_8119674:    .word dword_86E43DC
off_8119678:    .word 0x3E8
off_811967C:    .word dword_86E411C
dword_8119680:    .word 0x8C0
off_8119684:    .word 0xC0
off_8119688:    .word dword_86A5D60
off_811968C:    .word dword_86EB354+0x564
off_8119690:    .word dword_86EDB54+0x578
dword_8119694:    .word 0xA00
dword_8119698:    .word 0x780
off_811969C:    .word sSubmenu
.endfunc // sub_81195E4

loc_81196A0:
    push {lr}
    ldr r0, off_81196B4 // =off_81196B8 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
off_81196B4:    .word off_81196B8
off_81196B8:    .word loc_81196C4+1
    .word sub_811979C+1
    .word sub_8119800+1
loc_81196C4:
    push {lr}
    ldr r0, off_81196D8 // =off_81196DC 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_81198E8
    pop {pc}
    .balign 4, 0x00
off_81196D8:    .word off_81196DC
off_81196DC:    .word sub_81196F0+1
    .word sub_8119730+1
    .word sub_811974C+1
    .word sub_811975C+1
    .word sub_811976C+1
.func
.thumb_func
sub_81196F0:
    push {r4-r7,lr}
    bl sub_8119880
    beq loc_811970A
    bl sub_8119438
    ldrh r0, [r5,#0xe]
    strh r0, [r5,#0x10]
    ldrb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    ldrh r0, [r5,#0x18]
    strh r0, [r5,#0x1a]
    b locret_811972C
loc_811970A:
    ldrh r4, [r5,#0xe]
    ldrb r6, [r5,#0xc]
    ldrh r3, [r5,#0x18]
    ldrh r1, [r5,#0x1a]
    cmp r3, r1
    bne loc_8119722
    ldrh r0, [r5,#0x10]
    cmp r4, r0
    bne loc_8119722
    ldrb r0, [r5,#0xd]
    cmp r6, r0
    beq locret_811972C
loc_8119722:
    strh r3, [r5,#0x1a]
    strh r4, [r5,#0x10]
    strb r6, [r5,#0xd]
    mov r0, #4
    strb r0, [r5,#9]
locret_811972C:
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_81196F0

.func
.thumb_func
sub_8119730:
    push {lr}
    mov r0, #0x90
    strb r0, [r5,#0x12]
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sprite_setScaleParameters
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_8119730

.func
.thumb_func
sub_811974C:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #0xc
    strb r0, [r5,#9]
    pop {pc}
.endfunc // sub_811974C

.func
.thumb_func
sub_811975C:
    push {lr}
    bl sub_8119438
    mov r0, #0x10
    strb r0, [r5,#9]
    bl sub_811976C
    pop {pc}
.endfunc // sub_811975C

.func
.thumb_func
sub_811976C:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    sub r0, #0x30 
    strb r0, [r5,#0x12]
    cmp r0, #0x40 
    bgt loc_811978E
    mov r0, #0xc0
    strb r0, [r5,#0x12]
    mov r0, #0
    strb r0, [r5,#9]
    bl sprite_makeUnscalable
    b locret_8119798
loc_811978E:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sprite_setScaleParameters
locret_8119798:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811976C

.func
.thumb_func
sub_811979C:
    push {lr}
    ldr r0, off_81197AC // =off_81197B0 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_81197AC:    .word off_81197B0
off_81197B0:    .word sub_81197B4+1
.endfunc // sub_811979C

.func
.thumb_func
sub_81197B4:
    push {r4-r7,lr}
    bl sub_81198B0
    bne loc_81197C6
    ldr r1, [r5,#0x14]
    ldrb r0, [r1]
    mov r1, #2
    tst r0, r1
    bne locret_81197F0
loc_81197C6:
    ldrh r4, [r5,#0xe]
    ldrb r6, [r5,#0xc]
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne loc_81197E8
    // idx
    add r0, r4, #0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r1, [r0,#9]
    mov r2, #0x20 
    tst r1, r2
    beq loc_81197E2
    mov r0, #3
    b loc_81197E8
loc_81197E2:
    ldrb r0, [r0,#7]
    ldr r1, off_81197F4 // =dword_81197F8 
    ldrb r0, [r1,r0]
loc_81197E8:
    bl sprite_setPallete // (int pallete) -> void
    strh r4, [r5,#0x10]
    strb r6, [r5,#0xd]
locret_81197F0:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_81197F4:    .word dword_81197F8
dword_81197F8:    .word 0x20100, 0x0
.endfunc // sub_81197B4

.func
.thumb_func
sub_8119800:
    push {lr}
    pop {pc}
.endfunc // sub_8119800

.func
.thumb_func
sub_8119804:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8119804

.func
.thumb_func
sub_811980C:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    add r4, r2, #0
    add r7, r4, #3
loc_811981C:
    add r0, r4, #0
    bl sub_80466C4
    beq loc_8119830
    ldr r0, [sp]
    strh r0, [r1,#0xe]
    ldr r0, [sp,#4]
    strb r0, [r1,#0xc]
    ldr r0, [sp,#0xc]
    strh r0, [r1,#0x18]
loc_8119830:
    add r4, #1
    cmp r4, r7
    blt loc_811981C
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811980C

.func
.thumb_func
sub_811983C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_811984E
    ldr r0, [sp]
    strb r0, [r1,#0x13]
loc_811984E:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811983C

.func
.thumb_func
sub_8119854:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r4, r2, #0
    add r7, r4, #3
loc_8119862:
    add r0, r4, #0
    bl sub_80466C4
    beq loc_8119874
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_8119874:
    add r4, #1
    cmp r4, r7
    blt loc_8119862
    add sp, sp, #0xc
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_8119854

.func
.thumb_func
sub_8119880:
    push {lr}
    ldrb r0, [r5,#5]
    ldr r1, off_81198AC // =dword_81192A4+184 
    ldrb r0, [r1,r0]
    beq locret_811989E
    ldr r6, off_81198A8 // =sSubmenu 
    bl sub_81355D8
    beq loc_8119898
    bl sub_81312F4
    add r6, r0, #0
loc_8119898:
    ldrb r0, [r6,#0xe]
    ldrb r1, [r6,#0xf]
    cmp r0, r1
locret_811989E:
    pop {pc}
.endfunc // sub_8119880

    mov r0, #1
    tst r0, r0
    pop {pc}
    .balign 4, 0x00
off_81198A8:    .word sSubmenu
off_81198AC:    .word dword_81192A4+0xB8
.func
.thumb_func
sub_81198B0:
    push {lr}
    ldrb r0, [r5,#5]
    cmp r0, #1
    beq loc_81198DE
    cmp r0, #2
    beq loc_81198DE
    cmp r0, #3
    beq loc_81198DE
    cmp r0, #4
    beq loc_81198DE
    cmp r0, #5
    beq loc_81198DE
    ldr r6, off_81198E4 // =sSubmenu 
    bl sub_81355D8
    beq loc_81198D6
    bl sub_81312F4
    add r6, r0, #0
loc_81198D6:
    ldrb r0, [r6,#0xe]
    ldrb r1, [r6,#0xf]
    cmp r0, r1
    pop {pc}
loc_81198DE:
    mov r0, #1
    tst r0, r0
    pop {pc}
off_81198E4:    .word sSubmenu
.endfunc // sub_81198B0

.func
.thumb_func
sub_81198E8:
    push {lr}
    ldr r0, dword_81198FC // =0x0 
    ldrb r1, [r5,#0xc]
    cmp r1, #0xff
    bne loc_81198F4
    ldr r0, dword_8119900 // =0x40000000 
loc_81198F4:
    bl sub_8002FA6
    pop {pc}
    .balign 4, 0x00
dword_81198FC:    .word 0x0
dword_8119900:    .word 0x40000000
.endfunc // sub_81198E8

loc_8119904:
    mov r1, #0xc0
    mov r1, #0xc2
    mov r1, #0xc4
    mov r1, #0xc6
    mov r1, #0xc8
    mov r1, #0xca
    mov r1, #0xcc
    mov r1, #0xce
    mov r1, #0xd0
    mov r1, #0xd2
    mov r1, #0xc1
    mov r1, #0xc3
    mov r1, #0xc5
    mov r1, #0xc7
    mov r1, #0xc9
    mov r1, #0xcb
    mov r1, #0xcd
    mov r1, #0xcf
    mov r1, #0xd1
    mov r1, #0xd3
loc_811992C:
    mov r1, #0xd4
    mov r1, #0xd5
    mov r1, #0xd6
    mov r1, #0xd7
    mov r1, #0xd8
    mov r1, #0xd9
    mov r1, #0xda
    mov r1, #0xdb
    mov r1, #0xdc
    mov r1, #0xdd
    mov r1, #0xde
    mov r1, #0xdf
    mov r1, #0xe0
    mov r1, #0xe1
    mov r1, #0xe2
    mov r1, #0xe3
    mov r1, #0xe4
    mov r1, #0xe5
    mov r1, #0xe6
    mov r1, #0xe7
    mov r1, #0xe8
    mov r1, #0xe9
    mov r1, #0xea
    mov r1, #0xeb
    mov r1, #0xec
    mov r1, #0xed
    mov r1, #0xee
    mov r1, #0xef
    mov r1, #0xf0
    mov r1, #0xf1
    mov r1, #0xf2
    mov r1, #0xf3
    mov r1, #0xf4
    mov r1, #0xf5
    mov r1, #0xf6
    mov r1, #0xf7
    mov r1, #0xf8
    mov r1, #0xf9
    mov r1, #0xfa
    mov r1, #0xfb
loc_811997C:
    push {lr}
    ldr r6, off_811999C // =sSubmenu 
    ldr r0, off_811998C // =off_8119990 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811998C:    .word off_8119990
off_8119990:    .word sub_81199A0+1
    .word sub_81199C0+1
    .word sub_81199DC+1
off_811999C:    .word sSubmenu
.func
.thumb_func
sub_81199A0:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0
    str r0, [r5,#0xc]
    str r0, [r5,#0x10]
    str r0, [r5,#0x14]
    str r0, [r5,#0x18]
    mov r0, #4
    strb r0, [r5,#8]
    ldrh r0, [r6,#0x1c]
    mvn r0, r0
    str r0, [r5,#0xc]
    bl sub_81199C0
.endfunc // sub_81199A0

    pop {pc}
.func
.thumb_func
sub_81199C0:
    push {lr}
    ldrb r0, [r6,#0x13]
    tst r0, r0
    bne loc_81199CE
    ldrh r0, [r6,#0x1c]
    cmp r0, #0xff
    beq loc_81199D2
loc_81199CE:
    bl sub_81199E4
loc_81199D2:
    mov r0, #0xff
    strh r0, [r6,#0x1c]
    bl sub_8119A48
.endfunc // sub_81199C0

    pop {pc}
.func
.thumb_func
sub_81199DC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_81199DC

.func
.thumb_func
sub_81199E4:
    push {r4-r7,lr}
    mov r0, #0
    str r0, [r5,#0x10]
    push {r5,r6}
    ldr r0, off_8119A3C // =unk_201D280 
    mov r1, #0xa
    ldrb r2, [r5,#4]
    tst r2, r2
    beq loc_81199F8
    ldrh r1, [r6,#0x1c]
loc_81199F8:
    ldr r2, off_8119A40 // =unk_201B200 
    ldr r3, dword_8119A44 // =0x600B800 
    mov r4, #0xa
    mov r5, #1
    ldr r6, off_8119A38 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_81199E4

    pop {r5,r6}
    push {r5,r6}
    ldr r0, off_8119A34 // =dword_873EA50 
    ldrh r1, [r6,#0x1c]
    ldr r2, off_8119A2C // =unk_201B480 
    ldr r3, dword_8119A30 // =0x600BA80 
    mov r4, #0xa
    mov r5, #1
    ldr r6, off_8119A38 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r5,r6}
    str r0, [r5,#0x14]
    mov r0, #0
    str r0, [r5,#0x18]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8119A2C:    .word unk_201B480
dword_8119A30:    .word 0x600BA80
off_8119A34:    .word dword_873EA50
off_8119A38:    .word dword_86A5D60
off_8119A3C:    .word unk_201D280
off_8119A40:    .word unk_201B200
dword_8119A44:    .word 0x600B800
.func
.thumb_func
sub_8119A48:
    push {r4-r7,lr}
    mov r2, #0x28 
    ldr r1, [r5,#0x10]
    add r1, #2
    str r1, [r5,#0x10]
    ldr r3, [r5,#0x14]
    lsl r3, r3, #2
    cmp r1, r3
    bge loc_8119A76
    add r2, r1, #0
    ldr r4, [r5,#0x18]
    add r4, #1
    str r4, [r5,#0x18]
    mov r3, #3
    and r4, r3
    bne loc_8119A76
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_8119A76
    mov r0, #0x7e 
    bl sound_play // () -> void
loc_8119A76:
    push {r2,r5}
    // j
    mov r0, #0x12
    // i
    mov r1, #0xd
    // cpyOff
    mov r2, #0
    // tileRefs
    ldr r3, off_8119A9C // =loc_8119904 
    mov r4, #0xa
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8119A48

    pop {r2,r5}
    ldrb r0, [r5,#4]
    tst r0, r0
    bne locret_8119A9A
    mov r0, #0x12
    mov r1, #0xf
    lsr r2, r2, #2
    bl sub_8119AA0
locret_8119A9A:
    pop {r4-r7,pc}
off_8119A9C:    .word loc_8119904
.func
.thumb_func
sub_8119AA0:
    push {r4-r7,lr}
    // tileRefs
    ldr r3, off_8119AC8 // =loc_811992C 
    mov r4, #0
loc_8119AA6:
    push {r0-r4}
    // cpyOff
    mov r2, #0
    mov r4, #1
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8119AA0

    pop {r0-r4}
    sub r2, #1
    bgt loc_8119ABA
    b locret_8119AC4
loc_8119ABA:
    add r0, #1
    add r3, #4
    add r4, #1
    cmp r4, #0xa
    blt loc_8119AA6
locret_8119AC4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8119AC8:    .word loc_811992C
.func
.thumb_func
sub_8119ACC:
    push {lr}
    ldr r0, off_8119ADC // =off_8119AE0 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8119ADC:    .word off_8119AE0
off_8119AE0:    .word sub_8119AEC+1
    .word sub_8119BD0+1
    .word sub_8119BE0+1
.endfunc // sub_8119ACC

.func
.thumb_func
sub_8119AEC:
    push {r4,lr}
    mov r4, #0x23 
    strb r4, [r5]
    bl getPETNaviSelect // () -> u8
    tst r0, r0
    beq loc_8119B02
    lsl r0, r0, #2
    ldr r1, off_8119B70 // =dword_8119B74 
    ldr r0, [r1,r0]
    b loc_8119B30
loc_8119B02:
    mov r0, #0
    mov r1, #0x17
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    bl sub_803F524
    beq loc_8119B22
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_8119B22
    mov r0, #0xc
    add r0, r0, r4
    b loc_8119B24
loc_8119B22:
    mov r0, #0
loc_8119B24:
    ldr r1, off_8119B70 // =dword_8119B74 
    lsl r0, r0, #2
    ldr r4, [r1,r0]
    add r0, r4, #0
    b loc_8119B30
    mov r0, #0x1b
loc_8119B30:
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8119AEC

    bl sub_8002F90 // () -> void
    bl sub_8119C08
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, dword_8119B6C // =0x0 
    bl sub_800306C
    mov r0, #0
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8119BD0
    pop {r4,pc}
dword_8119B6C:    .word 0x0
off_8119B70:    .word dword_8119B74
dword_8119B74:    .word 0x1B, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46
    .word 0x47, 0x48, 0x62, 0x5F, 0x54, 0x55, 0x56, 0x57, 0x58
    .word 0x59, 0x5A, 0x5B, 0x5C, 0x5D
.func
.thumb_func
sub_8119BD0:
    push {lr}
    bl sub_8119C08
    bl sprite_setPallete // (int pallete) -> void
    bl sprite_update
.endfunc // sub_8119BD0

    pop {pc}
.func
.thumb_func
sub_8119BE0:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8119BE0

.func
.thumb_func
sub_8119BE8:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_8119C02
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_8119C02:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8119BE8

.func
.thumb_func
sub_8119C08:
    push {r4-r7,lr}
    mov r4, #0
    mov r7, #0
    bl getPETNaviSelect // () -> u8
    tst r0, r0
    bne loc_8119C44
    bl sub_803F524
    beq loc_8119C20
    mov r0, #0
    b loc_8119C3C
loc_8119C20:
    mov r0, #0
    mov r1, #0x10
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r6, r0, #0
    tst r6, r6
    beq loc_8119C36
    lsl r1, r0, #2
    add r0, r0, r1
    add r0, #0x12
    b loc_8119C3C
loc_8119C36:
    add r0, r6, #0
    ldr r1, dword_8119C54 // =dword_8020354 
    ldrb r0, [r1,r0]
loc_8119C3C:
    bl sub_8119C58
    add r7, r0, #0
    b loc_8119C4C
loc_8119C44:
    mov r0, #0
    bl sub_8119C58
    add r7, r0, #0
loc_8119C4C:
    add r4, r4, r7
    add r0, r4, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8119C54:    .word 0x80203EA
.endfunc // sub_8119C08

.func
.thumb_func
sub_8119C58:
    push {r7,lr}
    add r7, r0, #0
    bl getPETNaviSelect // () -> u8
    mov r1, #0xe
    bl sub_80137B6 // (int a1, int a2) -> u8
    cmp r0, #0xff
    beq loc_8119C6E
    add r0, r7, #0
    b locret_8119C70
loc_8119C6E:
    add r0, r7, #4
locret_8119C70:
    pop {r7,pc}
    .balign 4, 0x00
.endfunc // sub_8119C58

.func
.thumb_func
sub_8119C74:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_8119C8E
    mov r0, #0x23 
    ldr r2, [sp]
    tst r2, r2
    bne loc_8119C8C
    mov r0, #1
loc_8119C8C:
    strb r0, [r1]
loc_8119C8E:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8119C74

.func
.thumb_func
sub_8119C94:
    push {r4,lr}
    bl getPETNaviSelect // () -> u8
    tst r0, r0
    bne loc_8119CB8
    mov r0, #0
    mov r1, #0x17
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    beq loc_8119CB6
    mov r0, #0x17
    add r4, r4, r0
loc_8119CB6:
    b loc_8119CBC
loc_8119CB8:
    mov r4, #0xb
    add r4, r4, r0
loc_8119CBC:
    lsl r4, r4, #2
    ldr r1, off_8119CC8 // =dword_8119CCC 
    ldrsh r0, [r1,r4]
    add r4, #2
    ldrsh r1, [r1,r4]
    pop {r4,pc}
off_8119CC8:    .word dword_8119CCC
dword_8119CCC:    .word 0x0
    .word 0x20000, 0x20000, 0x2FFFC, 0x0
    .word 0x40000, 0x20000, 0x0
    .word 0x20000, 0x40000, 0x0, 0x0
    .word 0x40000, 0x40000, 0xFFFC, 0x40000, 0x0
    .word 0x40000, 0x6FFFA, 0x80000, 0x20000, 0x0, 0x0, 0x0, 0x0
    .word 0x40000, 0x4FFFC, 0x40000, 0x0
    .word 0x60000, 0x0
    .word 0x60000, 0x60000, 0x0
.endfunc // sub_8119C94

.func
.thumb_func
sub_8119D54:
    push {lr}
    ldr r0, off_8119D64 // =off_8119D68 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_8119D64:    .word off_8119D68
off_8119D68:    .word sub_8119D74+1
    .word sub_8119DE8+1
    .word sub_8119E38+1
.endfunc // sub_8119D54

.func
.thumb_func
sub_8119D74:
    push {lr}
    mov r4, #0xa3
    strb r4, [r5]
    mov r0, #0x2d 
    ldr r1, off_8119DC0 // =unk_201D774 
    ldrb r2, [r5,#4]
    tst r2, r2
    beq loc_8119D86
    ldr r1, off_8119DC4 // =unk_2024A00 
loc_8119D86:
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8119D74

    bl sub_8002F90 // () -> void
    ldr r0, dword_8119DC8 // =0x0 
    bl sub_8002FEC
    mov r0, #2
    bl sub_8002E14
    ldr r0, dword_8119DBC // =0x20 
    bl sub_800306C
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_8119DE8
    pop {pc}
    .balign 4, 0x00
dword_8119DBC:    .word 0x20
off_8119DC0:    .word unk_201D774
off_8119DC4:    .word unk_2024A00
dword_8119DC8:    .word 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.func
.thumb_func
sub_8119DE8:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_80466C4
    add r6, r1, #0
    add r1, #0x20 
    ldrh r0, [r1,#0xc]
    ldrh r1, [r1,#0xe]
    bl sub_800307C
    ldrb r4, [r6]
    mov r1, #0x80
    orr r4, r1
    // entryIdx
    mov r0, #0x17
    // byteFlagIdx
    mov r1, #0x20 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_8119E1A
    b loc_8119E18
    // entryIdx
    mov r0, #0x17
    // byteFlagIdx
    mov r1, #0x23 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_8119E1A
loc_8119E18:
    mov r4, #1
loc_8119E1A:
    strb r4, [r5]
    add r0, r6, #0
    bl sprite_getMosaicScalingParameters
    bl sprite_setMosaicScalingParameters
    add r0, r6, #0
    bl sub_8002F3E
    bl loc_8002F02
    bl sprite_update
.endfunc // sub_8119DE8

    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_8119E38:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_8119E38

.func
.thumb_func
sub_8119E40:
    push {lr}
    ldr r0, off_8119E50 // =off_8119E54 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .byte 0, 0
off_8119E50:    .word off_8119E54
off_8119E54:    .word sub_8119E60+1
    .word loc_811A0A4+1
    .word sub_811A1EC+1
.endfunc // sub_8119E40

.func
.thumb_func
sub_8119E60:
    push {lr}
    mov r0, #0x83
    ldrb r1, [r5,#4]
    cmp r1, #1
    bne loc_8119E6C
    mov r0, #0x23 
loc_8119E6C:
    strb r0, [r5]
    tst r1, r1
    bne loc_8119E76
    bl sub_8119F88
loc_8119E76:
    ldr r1, off_8119FC4 // =dword_8119FC8 
    ldrb r4, [r5,#4]
    ldrb r0, [r1,r4]
    lsl r2, r4, #2
    ldr r1, off_8119FF4 // =off_8119FF8 
    ldrb r3, [r5,#5]
    lsl r3, r3, #2
    ldr r1, [r1,r3]
    ldr r1, [r1,r2]
    bl sub_8002770 // (int a1, int a2) -> void
    ldr r1, off_811A018 // =dword_811A01C 
    ldrb r0, [r1,r4]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_8119E60

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r1, off_811A020 // =dword_811A024 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldrb r0, [r1,r0]
    bl sub_8002E14
    ldr r1, off_8119FCC // =off_8119FD0 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    lsl r0, r4, #2
    ldr r0, [r1,r0]
    bl sub_800306C
    ldr r1, off_811A00C // =off_811A010 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r1, [r1,r0]
    ldrb r0, [r1,r4]
    bl sub_800304A
    ldr r0, off_811A028 // =off_811A02C 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0,r4]
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xff
    strh r0, [r5,#0x10]
    strb r0, [r5,#0xd]
    strh r0, [r5,#0x1a]
    bl loc_811A0A4
    pop {pc}
.func
.thumb_func
sub_8119EEC:
    push {r4-r7,lr}
    sub sp, sp, #4
    ldrh r0, [r5,#0xe]
    tst r0, r0
    beq loc_8119F12
    push {r0}
    bl sub_811A268
    pop {r0}
    tst r2, r2
    bne loc_8119F06
    tst r1, r1
    bne loc_8119F12
loc_8119F06:
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r7, r0, #0
    ldr r0, [r7,#0x24]
    tst r0, r0
    bne loc_8119F18
loc_8119F12:
    bl sub_8119F88
    b loc_8119F82
loc_8119F18:
    push {r5}
    ldr r0, off_811A094 // =unk_2028000 
    ldrh r1, [r5,#0xe]
    ldr r2, off_811A0A0 // =0x140 
    sub r1, r1, r2
    mov r2, #5
    mul r1, r2
    ldrb r2, [r5,#0xc]
    add r1, r1, r2
    ldr r2, off_8119FEC // =off_8119FF0 
    ldrb r3, [r5,#5]
    lsl r3, r3, #2
    ldr r2, [r2,r3]
    ldr r3, off_8119FCC // =off_8119FD0 
    ldrb r4, [r5,#5]
    lsl r4, r4, #2
    ldr r3, [r3,r4]
    ldr r3, [r3]
    lsl r3, r3, #5
    ldr r4, dword_811A04C // =0x6010000 
    add r3, r3, r4
    mov r4, #9
    mov r5, #5
    ldr r6, off_811A088 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
    pop {r5}
    ldr r0, off_811A090 // =dword_86EDB54+1400 
    ldrh r1, [r5,#0xe]
    cmp r1, #0xff
    bgt loc_8119F5A
    ldr r0, off_811A08C // =dword_86EB354+1380 
loc_8119F5A:
    mov r2, #0xff
    and r1, r2
    ldr r2, off_8119FE4 // =off_8119FE8 
    ldrb r3, [r5,#5]
    lsl r3, r3, #2
    ldr r2, [r2,r3]
    ldr r3, off_8119FCC // =off_8119FD0 
    ldrb r4, [r5,#5]
    lsl r4, r4, #2
    ldr r3, [r3,r4]
    ldr r3, [r3,#8]
    lsl r3, r3, #5
    ldr r4, dword_811A04C // =0x6010000 
    add r3, r3, r4
    mov r4, #9
    mov r5, #4
    ldr r6, off_811A084 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
loc_8119F82:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8119EEC

.func
.thumb_func
sub_8119F88:
    push {lr}
    ldr r1, off_8119FCC // =off_8119FD0 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r1, [r1]
    lsl r1, r1, #5
    ldr r2, dword_811A04C // =0x6010000 
    add r1, r1, r2
    push {r0,r1}
    add r0, r1, #0
    ldr r1, dword_811A098 // =0xA00 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r0,r1}
    ldr r1, off_8119FCC // =off_8119FD0 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r1, [r1,#8]
    lsl r1, r1, #5
    ldr r2, dword_811A04C // =0x6010000 
    add r1, r1, r2
    push {r0,r1}
    add r0, r1, #0
    ldr r1, dword_811A09C // =0x780 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {r0,r1}
    pop {pc}
off_8119FC4:    .word dword_8119FC8
dword_8119FC8:    .word 0x4040304
off_8119FCC:    .word off_8119FD0
off_8119FD0:    .word off_8119FD4
off_8119FD4:    .word 0xC0
    .word 0x0
    .word 0x170
    .word 0xF6
off_8119FE4:    .word off_8119FE8
off_8119FE8:    .word unk_201A800
off_8119FEC:    .word off_8119FF0
off_8119FF0:    .word unk_2019200
off_8119FF4:    .word off_8119FF8
off_8119FF8:    .word off_8119FFC
off_8119FFC:    .word unk_2026C00
    .word unk_2024C00
    .word unk_2026C00
    .word unk_2026C00
off_811A00C:    .word off_811A010
off_811A010:    .word dword_811A014
dword_811A014:    .word 0xB00000B
off_811A018:    .word dword_811A01C
dword_811A01C:    .word 0x1020000
off_811A020:    .word dword_811A024
dword_811A024:    .word 0x0
off_811A028:    .word off_811A02C
off_811A02C:    .word dword_811A030
dword_811A030:    .word 0x3020203, 0x811A038, 0x811A03C, 0x3000003, 0x811A044
    .word 0x811A048, 0x5000005
dword_811A04C:    .word 0x6010000
    .word 0x100
    .word 0x400
    .word unk_3001550
    .word 0x86E2E98, 0x800, 0x86E587C, 0x86E3B9C, 0x840, 0x86E43DC
    .word 0x3E7, 0x86E411C, 0x8C0, 0xC0
off_811A084:    .word dword_86A5D60
off_811A088:    .word dword_86B7AE0
off_811A08C:    .word dword_86EB354+0x564
off_811A090:    .word dword_86EDB54+0x578
off_811A094:    .word unk_2028000
dword_811A098:    .word 0xA00
dword_811A09C:    .word 0x780
off_811A0A0:    .word 0x140
.endfunc // sub_8119F88

loc_811A0A4:
    push {lr}
    ldr r0, off_811A0B8 // =off_811A0BC 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
off_811A0B8:    .word off_811A0BC
off_811A0BC:    .word sub_811A0CC+1
    .word loc_811A190+1
    .word sub_811A1E8+1
    .word sub_811A0CC+1
.func
.thumb_func
sub_811A0CC:
    push {lr}
    ldr r0, off_811A0DC // =off_811A0E0 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811A0DC:    .word off_811A0E0
off_811A0E0:    .word sub_811A0F4+1
    .word sub_811A11C+1
    .word sub_811A138+1
    .word sub_811A148+1
    .word sub_811A160+1
.endfunc // sub_811A0CC

.func
.thumb_func
sub_811A0F4:
    push {r4-r7,lr}
    ldrh r4, [r5,#0xe]
    ldrb r6, [r5,#0xc]
    ldrh r3, [r5,#0x18]
    ldrh r1, [r5,#0x1a]
    cmp r3, r1
    bne loc_811A10E
    ldrh r0, [r5,#0x10]
    cmp r4, r0
    bne loc_811A10E
    ldrb r0, [r5,#0xd]
    cmp r6, r0
    beq locret_811A118
loc_811A10E:
    strh r3, [r5,#0x1a]
    strh r4, [r5,#0x10]
    strb r6, [r5,#0xd]
    mov r0, #4
    strb r0, [r5,#9]
locret_811A118:
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811A0F4

.func
.thumb_func
sub_811A11C:
    push {lr}
    mov r0, #0x90
    strb r0, [r5,#0x12]
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x90
    mov r2, #0x40 
    bl sprite_setScaleParameters
    mov r0, #8
    strb r0, [r5,#9]
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811A11C

.func
.thumb_func
sub_811A138:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #0xc
    strb r0, [r5,#9]
    pop {pc}
.endfunc // sub_811A138

.func
.thumb_func
sub_811A148:
    push {lr}
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_811A154
    bl sub_8119EEC
loc_811A154:
    mov r0, #0x10
    strb r0, [r5,#9]
    bl sub_811A160
    pop {pc}
    .byte 0, 0
.endfunc // sub_811A148

.func
.thumb_func
sub_811A160:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#0x12]
    sub r0, #0x20 
    strb r0, [r5,#0x12]
    cmp r0, #0x40 
    bgt loc_811A182
    mov r0, #0xc0
    strb r0, [r5,#0x12]
    mov r0, #0
    strb r0, [r5,#9]
    bl sprite_makeUnscalable
    b locret_811A18C
loc_811A182:
    add r1, r0, #0
    mov r0, #0
    mov r2, #0x40 
    bl sprite_setScaleParameters
locret_811A18C:
    pop {pc}
    .byte 0, 0
.endfunc // sub_811A160

loc_811A190:
    push {lr}
    ldr r0, off_811A1A8 // =off_811A1AC 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_811A29C
    bl sub_811A2EC
    pop {pc}
    .balign 4, 0x00
off_811A1A8:    .word off_811A1AC
off_811A1AC:    .word sub_811A1B0+1
.func
.thumb_func
sub_811A1B0:
    push {lr}
    bl sub_811A24C
    bne loc_811A1C2
    ldr r1, [r5,#0x14]
    ldrb r0, [r1]
    mov r1, #2
    tst r0, r1
    bne locret_811A1DA
loc_811A1C2:
    ldrh r4, [r5,#0xe]
    ldrb r6, [r5,#0xc]
    // idx
    add r0, r4, #0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r0, [r0,#7]
    ldr r1, off_811A1DC // =dword_811A1E0 
    ldrb r0, [r1,r0]
    bl sprite_setPallete // (int pallete) -> void
    strh r4, [r5,#0x10]
    strb r6, [r5,#0xd]
locret_811A1DA:
    pop {pc}
off_811A1DC:    .word dword_811A1E0
dword_811A1E0:    .word 0x20100, 0x0
.endfunc // sub_811A1B0

.func
.thumb_func
sub_811A1E8:
    push {lr}
    pop {pc}
.endfunc // sub_811A1E8

.func
.thumb_func
sub_811A1EC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811A1EC

.func
.thumb_func
sub_811A1F4:
    push {r4,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    add r4, r2, #0
loc_811A202:
    add r0, r4, #0
    bl sub_80466C4
    beq loc_811A216
    ldr r0, [sp]
    strh r0, [r1,#0xe]
    ldr r0, [sp,#4]
    strb r0, [r1,#0xc]
    ldr r0, [sp,#0xc]
    strh r0, [r1,#0x18]
loc_811A216:
    add r4, #1
    cmp r4, #4
    blt loc_811A202
    add sp, sp, #0x10
    pop {r4,pc}
.endfunc // sub_811A1F4

.func
.thumb_func
sub_811A220:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r4, r2, #0
    add r7, r4, #4
loc_811A22E:
    add r0, r4, #0
    bl sub_80466C4
    beq loc_811A240
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811A240:
    add r4, #1
    cmp r4, r7
    blt loc_811A22E
    add sp, sp, #0xc
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811A220

.func
.thumb_func
sub_811A24C:
    push {lr}
    ldrb r0, [r5,#5]
    cmp r0, #2
    beq locret_811A260
    cmp r0, #3
    beq locret_811A260
    ldr r6, off_811A264 // =sSubmenu 
    ldrb r0, [r6,#0xe] // (ssubmenu.unk_0e - 0x2009a30)
    ldrb r1, [r6,#0xf] // (ssubmenu.unk_0f - 0x2009a30)
    cmp r0, r1
locret_811A260:
    pop {pc}
    .balign 4, 0x00
off_811A264:    .word sSubmenu
.endfunc // sub_811A24C

.func
.thumb_func
sub_811A268:
    push {r4-r7,lr}
    ldr r3, off_811A290 // =dword_201FC20 
    ldr r6, off_811A294 // =sSubmenu 
    ldrb r0, [r6]
    cmp r0, #8
    beq loc_811A276
    ldr r6, off_811A298 // =unk_2037780 
loc_811A276:
    mov r1, #0x40 
    ldrh r1, [r6,r1]
    mov r2, #0x3c 
    ldrh r2, [r6,r2]
    add r1, r1, r2
    lsl r1, r1, #2
    add r3, r3, r1
    ldrh r0, [r3]
    ldrb r1, [r3,#2]
    ldrb r2, [r3,#3]
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
off_811A290:    .word dword_201FC20
off_811A294:    .word sSubmenu
off_811A298:    .word unk_2037780
.endfunc // sub_811A268

.func
.thumb_func
sub_811A29C:
    push {r4-r7,lr}
    bl sub_811A268
    tst r0, r0
    beq loc_811A2CA
    tst r2, r2
    bne loc_811A2AE
    tst r1, r1
    bne loc_811A2CA
loc_811A2AE:
    ldr r4, off_811A334 // =0x140 
    sub r0, r0, r4
    ldr r4, off_811A2DC // =dword_8124B1C 
    ldrb r4, [r4,r0]
    bl sub_8002FB2
    ldr r1, dword_811A2E0 // =0x7E 
    orr r0, r1
    mov r2, #0x40 
    lsr r2, r4
    bic r0, r2
    bl sub_8002FA6
    pop {r4-r7,pc}
loc_811A2CA:
    bl sub_8002FB2
    ldr r1, dword_811A2E0 // =0x7E 
    bic r0, r1
    ldr r1, dword_811A2E4 // =0x3E 
    orr r0, r1
    bl sub_8002FA6
    pop {r4-r7,pc}
off_811A2DC:    .word dword_8124B1C
dword_811A2E0:    .word 0x7E
dword_811A2E4:    .word 0x3E
    .byte 0x9E
    .byte  7
    .byte  0
    .byte  0
.endfunc // sub_811A29C

.func
.thumb_func
sub_811A2EC:
    push {r4-r7,lr}
    bl sub_811A268
    tst r0, r0
    beq loc_811A316
    tst r2, r2
    bne loc_811A2FE
    tst r1, r1
    bne loc_811A316
loc_811A2FE:
    add r4, r2, #0
    add r4, #1
    bl sub_8002FB2
    ldr r1, dword_811A328 // =0x1FC0 
    orr r0, r1
    ldr r2, dword_811A330 // =0x1000 
    lsr r2, r4
    bic r0, r2
    bl sub_8002FA6
    pop {r4-r7,pc}
loc_811A316:
    bl sub_8002FB2
    ldr r1, dword_811A328 // =0x1FC0 
    bic r0, r1
    ldr r1, dword_811A32C // =0xF80 
    orr r0, r1
    bl sub_8002FA6
    pop {r4-r7,pc}
dword_811A328:    .word 0x1FC0
dword_811A32C:    .word 0xF80
dword_811A330:    .word 0x1000
off_811A334:    .word 0x140
.endfunc // sub_811A2EC

.func
.thumb_func
sub_811A338:
    push {lr}
    ldr r0, off_811A348 // =off_811A34C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811A348:    .word off_811A34C
off_811A34C:    .word sub_811A358+1
    .word sub_811A370+1
    .word sub_811A3A4+1
.endfunc // sub_811A338

.func
.thumb_func
sub_811A358:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811A3AC
.endfunc // sub_811A358

    mov r0, #0
    strb r0, [r5,#0xc]
    strb r0, [r5,#0xd]
    bl sub_811A370
    pop {pc}
    .byte 0, 0
.func
.thumb_func
sub_811A370:
    push {lr}
    ldrb r0, [r5,#0xc]
    add r0, #1
    strb r0, [r5,#0xc]
    cmp r0, #5
    blt loc_811A394
    mov r0, #0
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#0xd]
    add r0, #1
    cmp r0, #3
    blt loc_811A38A
    mov r0, #0
loc_811A38A:
    strb r0, [r5,#0xd]
    ldr r1, off_811A39C // =unk_811A3A0 
    ldrb r0, [r1,r0]
    bl sprite_setPallete // (int pallete) -> void
loc_811A394:
    bl sprite_update
.endfunc // sub_811A370

    pop {pc}
    .balign 4, 0x00
off_811A39C:    .word unk_811A3A0
unk_811A3A0:    .byte  0
    .byte  2
    .byte  1
    .byte  0
.func
.thumb_func
sub_811A3A4:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811A3A4

.func
.thumb_func
sub_811A3AC:
    push {r4,r5,lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x28 
    ldr r1, off_811A3EC // =unk_201D700 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811A3AC

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, dword_811A3E8 // =0x0 
    bl sub_800306C
    mov r0, #8
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    pop {r4,r5,pc}
dword_811A3E8:    .word 0x0
off_811A3EC:    .word unk_201D700
    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r4, r2, #0
    add r7, r4, #4
    add r0, r4, #0
    bl sub_80466C4
    beq loc_811A410
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811A410:
    add sp, sp, #0xc
    pop {r4-r7,pc}
.func
.thumb_func
sub_811A414:
    push {lr}
    ldr r0, off_811A424 // =off_811A428 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811A424:    .word off_811A428
off_811A428:    .word sub_811A434+1
    .word loc_811A4DC+1
    .word sub_811A5B4+1
.endfunc // sub_811A414

.func
.thumb_func
sub_811A434:
    push {r4-r7,lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r4, #0x24 
    ldr r7, off_811A4C8 // =unk_20231A0 
    ldr r0, off_811A4B4 // =sSubmenu 
    ldrb r0, [r0,#0x1] // (ssubmenu.jo_01 - 0x2009a30)
    cmp r0, #0x1c
    bne loc_811A448
    ldr r7, off_811A4D0 // =unk_20231A0 
loc_811A448:
    ldrb r2, [r5,#4]
    tst r2, r2
    beq loc_811A45C
    mov r4, #0x23 
    ldr r7, off_811A4CC // =unk_2022AA0 
    ldr r0, off_811A4B4 // =sSubmenu 
    ldrb r0, [r0,#0x1] // (ssubmenu.jo_01 - 0x2009a30)
    cmp r0, #0x1c
    bne loc_811A45C
    ldr r7, off_811A4D4 // =unk_2022AA0 
loc_811A45C:
    add r0, r4, #0
    add r1, r7, #0
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#5]
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811A434

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r1, off_811A4B8 // =dword_811A4BC 
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_800306C
    ldr r1, off_811A4C4 // =off_811A4D8 
    ldrb r0, [r5,#4]
    ldrb r0, [r1,r0]
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    bl sub_811A5BC
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_811A4AA
    bl loc_811A640
loc_811A4AA:
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_811A4DC
    pop {r4-r7,pc}
off_811A4B4:    .word sSubmenu
off_811A4B8:    .word dword_811A4BC
dword_811A4BC:    .word 0x0
    .word 0x20
off_811A4C4:    .word off_811A4D8
off_811A4C8:    .word unk_20231A0
off_811A4CC:    .word unk_2022AA0
off_811A4D0:    .word unk_20231A0
off_811A4D4:    .word unk_2022AA0
off_811A4D8:    .word 0x100
loc_811A4DC:
    push {lr}
    ldr r0, off_811A4F0 // =off_811A4F4 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
off_811A4F0:    .word off_811A4F4
off_811A4F4:    .word sub_811A4FC+1
    .word loc_811A500+1
.func
.thumb_func
sub_811A4FC:
    push {lr}
    pop {pc}
.endfunc // sub_811A4FC

loc_811A500:
    push {lr}
    ldr r0, off_811A510 // =off_811A514 
    ldrb r1, [r5,#7]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811A510:    .word off_811A514
off_811A514:    .word sub_811A51C+1
    .word sub_811A57C+1
.func
.thumb_func
sub_811A51C:
    push {r4-r7,lr}
    mov r7, #0
    mov r6, #0
loc_811A522:
    mov r4, #8
    mul r4, r7
    bl sub_80030A8
    sub r0, #0x20 
    sub r1, #9
    add r0, r0, r4
    cmp r0, #0
    blt loc_811A558
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_811A564 // =0x8000 
    orr r0, r1
    ldr r1, off_811A568 // =dword_811A56C 
    ldrb r2, [r5,#6]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    mov r2, #2
    lsl r2, r2, #0xa
    orr r1, r2
    mov r4, #2
    mul r4, r7
    add r1, r1, r4
    mov r2, #0
    mov r3, #4
    bl sub_802FE28
loc_811A558:
    add r7, #1
    add r6, #1
    cmp r6, #8
    blt loc_811A522
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811A564:    .word 0x8000
off_811A568:    .word dword_811A56C
dword_811A56C:    .word 0xB050, 0xB060, 0xB070, 0xB080
.endfunc // sub_811A51C

.func
.thumb_func
sub_811A57C:
    push {lr}
    mov r0, #0x10
    mov r1, #0
    bl sub_800308A
    bl sub_80030A8
    cmp r0, #0x3c 
    blt loc_811A5A0
    mov r0, #0x3c 
    ldr r1, off_811A5A8 // =a9l 
    ldrb r2, [r5,#6]
    lsl r2, r2, #1
    ldrh r1, [r1,r2]
    bl sub_800307C
    mov r0, #0
    strb r0, [r5,#7]
loc_811A5A0:
    bl sub_811A51C
    pop {pc}
    .balign 4, 0x00
off_811A5A8:    .word a9l
a9l:    .byte 0x26
    .byte  0
    .byte 0x39 
    .byte  0
    .byte 0x4C 
    .byte  0
    .byte 0x5F 
    .byte  0
.endfunc // sub_811A57C

.func
.thumb_func
sub_811A5B4:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811A5B4

.func
.thumb_func
sub_811A5BC:
    push {lr}
    ldr r3, off_811A5E4 // =unk_811A5FC 
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_811A5D0
    ldr r3, off_811A5E0 // =a9L 
    ldrb r0, [r5,#7]
    tst r0, r0
    beq loc_811A5D0
    ldr r3, off_811A5E8 // =unk_811A600 
loc_811A5D0:
    ldrb r2, [r5,#6]
    lsl r2, r2, #2
    ldrsh r0, [r3,r2]
    add r2, #2
    ldrsh r1, [r3,r2]
    bl sub_800307C
    pop {pc}
off_811A5E0:    .word a9L
off_811A5E4:    .word unk_811A5FC
off_811A5E8:    .word unk_811A600
a9L:    .byte 0x3C
    .byte  0
    .byte 0x26 
    .byte  0
    .byte 0x3C 
    .byte  0
    .byte 0x39 
    .byte  0
    .byte 0x3C 
    .byte  0
    .byte 0x4C 
    .byte  0
    .byte 0x3C 
    .byte  0
    .byte 0x5F 
    .byte  0
unk_811A5FC:    .byte 0x2C 
    .byte  0
    .hword 0x16
unk_811A600:    .byte 0xD0
    .byte 0xFF
    .byte 0x26 
    .byte  0
    .byte 0xD0
    .byte 0xFF
    .byte 0x39 
    .byte  0
    .byte 0xD0
    .byte 0xFF
    .byte 0x4C 
    .byte  0
    .byte 0xD0
    .byte 0xFF
    .byte 0x5F 
    .byte  0
.endfunc // sub_811A5BC

.func
.thumb_func
sub_811A610:
    push {r4,r5,lr}
    add r4, r0, #0
    add r0, r1, #0
    bl sub_80466C4
    beq locret_811A63C
    ldrb r0, [r1]
    mov r2, #8
    tst r0, r2
    bne locret_811A63C
    add r5, r1, #0
    ldrb r0, [r5,#0xc]
    cmp r4, r0
    beq locret_811A63C
    add r0, r4, #0
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
locret_811A63C:
    pop {r4,r5,pc}
    .byte  0
    .byte  0
.endfunc // sub_811A610

loc_811A640:
    push {r4-r7,lr}
    ldr r7, off_811A664 // =sSubmenu 
    ldrb r0, [r7,#0x1] // (ssubmenu.jo_01 - 0x2009a30)
    cmp r0, #0x1c
    bne loc_811A652
    ldrb r1, [r5,#6]
    bl sub_811A704
    b locret_811A662
loc_811A652:
    ldr r1, off_811A668 // =dword_811A66C 
    ldrb r0, [r7,#0x2] // (ssubmenu.unk_02 - 0x2009a30)
    ldr r0, [r1,r0]
    tst r0, r0
    beq locret_811A662
    ldrb r1, [r5,#6]
    mov lr, pc
    bx r0
locret_811A662:
    pop {r4-r7,pc}
off_811A664:    .word sSubmenu
off_811A668:    .word dword_811A66C
dword_811A66C:    .word 0x0
    .word sub_811A68C+1
    .word sub_811A6A0+1
    .word sub_811A6B4+1
    .word sub_811A6C8+1
    .word sub_811A6DC+1
    .word sub_811A6DC+1
    .word sub_811A6DC+1
.func
.thumb_func
sub_811A68C:
    push {lr}
    ldr r4, off_811A698 // =unk_811A69C 
    ldrb r0, [r4,r1]
    bl sub_811A718
.endfunc // sub_811A68C

    pop {pc}
off_811A698:    .word unk_811A69C
unk_811A69C:    .byte 0x13
    .byte 0x14
    .byte 0x15
    .byte  0
.func
.thumb_func
sub_811A6A0:
    push {lr}
    ldr r4, off_811A6AC // =unk_811A6B0 
    ldrb r0, [r4,r1]
    bl sub_811A718
.endfunc // sub_811A6A0

    pop {pc}
off_811A6AC:    .word unk_811A6B0
unk_811A6B0:    .byte 0x16
    .byte 0x17
    .byte 0x18
    .byte  0
.func
.thumb_func
sub_811A6B4:
    push {lr}
    ldr r4, off_811A6C0 // =dword_811A6C4 
    ldrb r0, [r4,r1]
    bl sub_811A718
.endfunc // sub_811A6B4

    pop {pc}
off_811A6C0:    .word dword_811A6C4
dword_811A6C4:    .word 0x1C1B
.func
.thumb_func
sub_811A6C8:
    push {lr}
    ldr r4, off_811A6D4 // =unk_811A6D8 
    ldrb r0, [r4,r1]
    bl sub_811A718
.endfunc // sub_811A6C8

    pop {pc}
off_811A6D4:    .word unk_811A6D8
unk_811A6D8:    .byte 0x1D
    .byte 0x1E
    .byte 0x1F
    .byte  0
.func
.thumb_func
sub_811A6DC:
    push {lr}
    cmp r1, #2
    bne loc_811A6F2
    ldrb r2, [r7,#0x1b]
    mov r3, #2
    tst r2, r3
    bne loc_811A6F2
    add r2, r1, #1
    ldr r4, off_811A6FC // =unk_811A700 
    ldrb r0, [r4,r2]
    b loc_811A6F6
loc_811A6F2:
    ldr r4, off_811A6FC // =unk_811A700 
    ldrb r0, [r4,r1]
loc_811A6F6:
    bl sub_811A718
.endfunc // sub_811A6DC

    pop {pc}
off_811A6FC:    .word unk_811A700
unk_811A700:    .byte 0x19
    .byte 0x1A
    .byte 0x2F 
    .byte 0x30 
.func
.thumb_func
sub_811A704:
    push {lr}
    ldr r4, off_811A710 // =unk_811A714 
    ldrb r0, [r4,r1]
    bl sub_811A718
.endfunc // sub_811A704

    pop {pc}
off_811A710:    .word unk_811A714
unk_811A714:    .byte 0x64 
    .byte 0x65 
    .byte 0x66 
    .byte  0
.func
.thumb_func
sub_811A718:
    push {r4-r7,lr}
    ldr r2, off_811A73C // =off_811A740 
    lsl r3, r1, #2
    ldr r2, [r2,r3]
    ldr r4, off_811A750 // =dword_811A754 
    ldr r3, [r4,r3]
    mov r4, #8
    mov r5, #1
    ldr r6, off_811A764 // =dword_86B7AE0 
    mov r7, #0
    add r1, r0, #0
    ldr r0, off_811A738 // =unk_201BA20 
    bl render_graphicalText_8045F8C
.endfunc // sub_811A718

    pop {r4-r7,pc}
    .balign 4, 0x00
off_811A738:    .word unk_201BA20
off_811A73C:    .word off_811A740
off_811A740:    .word unk_2017A00
    .word unk_2017C00
    .word unk_2017E00
    .word unk_2018000
off_811A750:    .word dword_811A754
dword_811A754:    .word 0x6010A00, 0x6010C00, 0x6010E00, 0x6011000
off_811A764:    .word dword_86B7AE0
.func
.thumb_func
sub_811A768:
    push {r4,r5,lr}
    mov r4, #1
    add r5, r1, #0
    mov r1, #0
    bl sub_800308A
    bl sub_80030A8
    ldr r1, dword_811A788 // =0xFFFFFFD0 
    cmp r0, r1
    bge loc_811A784
    mov r0, #8
    strb r0, [r5,#8]
    mov r4, #0
loc_811A784:
    add r0, r4, #0
    pop {r4,r5,pc}
dword_811A788:    .word 0xFFFFFFD0
.endfunc // sub_811A768

.func
.thumb_func
sub_811A78C:
    push {lr}
    ldr r0, off_811A79C // =off_811A7A0 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811A79C:    .word off_811A7A0
off_811A7A0:    .word sub_811A7AC+1
    .word sub_811A818+1
    .word sub_811A830+1
.endfunc // sub_811A78C

.func
.thumb_func
sub_811A7AC:
    push {lr}
    mov r4, #0x23 
    strb r4, [r5]
    ldr r1, off_811A804 // =unk_2022AA0 
    mov r0, #0x2a 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811A7AC

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811A800 // =0x1D0 
    bl sub_800306C
    mov r0, #0xa
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    ldrb r2, [r5,#4]
    ldr r1, off_811A808 // =dword_811A810 
    ldrb r0, [r1,r2]
    ldr r1, dword_811A80C // =dword_811A810 
    ldrb r1, [r1,r2]
    mov r2, #6
    bl sub_811A838
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811A818
    pop {pc}
off_811A800:    .word 0x1D0
off_811A804:    .word unk_2022AA0
off_811A808:    .word dword_811A810
dword_811A80C:    .word 0x811A813
dword_811A810:    .word 0x40ACB0BC, 0x4848
.func
.thumb_func
sub_811A818:
    push {r4,lr}
    mov r4, #0x23 
    mov r0, #0x80
    bl chatbox_8045F3C
    beq loc_811A826
    mov r4, #1
loc_811A826:
    strb r4, [r5]
    bl sprite_update
.endfunc // sub_811A818

    pop {r4,pc}
    .byte 0, 0
.func
.thumb_func
sub_811A830:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811A830

.func
.thumb_func
sub_811A838:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811A852
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811A852:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811A838

.func
.thumb_func
sub_811A858:
    push {lr}
    ldr r0, off_811A868 // =off_811A86C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811A868:    .word off_811A86C
off_811A86C:    .word sub_811A878+1
    .word sub_811A8D0+1
    .word sub_811A8EC+1
.endfunc // sub_811A858

.func
.thumb_func
sub_811A878:
    push {lr}
    mov r4, #0x23 
    strb r4, [r5]
    ldr r1, off_811A8CC // =unk_2022FA0 
    mov r0, #0x2b 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    mov r1, #6
    bl sub_811A940
.endfunc // sub_811A878

    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811A8C8 // =0x1D0 
    bl sub_800306C
    mov r0, #0xa
    bl sub_800304A
    mov r0, #4
    bl sub_8003060
    mov r0, #0x78 
    mov r1, #0x50 
    mov r2, #6
    bl sub_811A8F4
    mov r0, #0
    mov r1, #6
    bl sub_811A914
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811A8D0
    pop {pc}
off_811A8C8:    .word 0x1D0
off_811A8CC:    .word unk_2022FA0
.func
.thumb_func
sub_811A8D0:
    push {r4,r7,lr}
    ldrb r4, [r5]
    mov r7, #2
    mov r0, #0x80
    bl chatbox_8045F3C
    beq loc_811A8E2
    bic r4, r7
    b loc_811A8E4
loc_811A8E2:
    orr r4, r7
loc_811A8E4:
    strb r4, [r5]
    bl sprite_update
.endfunc // sub_811A8D0

    pop {r4,r7,pc}
.func
.thumb_func
sub_811A8EC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811A8EC

.func
.thumb_func
sub_811A8F4:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811A90E
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811A90E:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811A8F4

.func
.thumb_func
sub_811A914:
    push {r4-r7,lr}
    add r4, r0, #0
    add r0, r1, #0
    bl sub_80466C4
    add r5, r1, #0
    lsl r4, r4, #2
    ldr r1, off_811A934 // =dword_811A938 
    ldr r0, [r1,r4]
    bl sub_8002FA6
    ldrb r0, [r5]
    mov r1, #8
    tst r0, r1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811A934:    .word dword_811A938
dword_811A938:    .word 0x20000000
    .word 0x40000000
.endfunc // sub_811A914

.func
.thumb_func
sub_811A940:
    push {r4-r7,lr}
    add r4, r0, #0
    add r0, r1, #0
    bl sub_80466C4
    add r5, r1, #0
    add r0, r4, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811A940

    bl sub_8002F90 // () -> void
    cmp r4, #1
    bne locret_811A964
    mov r0, #0
    bl sub_8002FA6
locret_811A964:
    pop {r4-r7,pc}
    .balign 4, 0x00
    push {r4-r7,lr}
    bl sub_80466C4
    add r5, r1, #0
    bl sub_804668A
    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_811A978:
    push {lr}
    ldr r0, off_811A988 // =off_811A98C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811A988:    .word off_811A98C
off_811A98C:    .word sub_811A998+1
    .word sub_811AA14+1
    .word sub_811AB0C+1
.endfunc // sub_811A978

.func
.thumb_func
sub_811A998:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x26 
    ldr r1, off_811A9F0 // =unk_202488C 
    bl loc_8002774 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811A998

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, dword_811A9EC // =0x0 
    bl sub_800306C
    bl sub_811AB14
    mov r0, #4
    bl sub_8003060
    ldr r2, off_811A9F4 // =dword_811A9F8 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldrh r0, [r2,r1]
    add r1, #2
    ldrh r1, [r2,r1]
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811AA14
    pop {pc}
dword_811A9EC:    .word 0x0
off_811A9F0:    .word unk_202488C
off_811A9F4:    .word dword_811A9F8
dword_811A9F8:    .word 0x20003D, 0x200084, 0x2000CB, 0x62002A, 0x5A002A, 0x811AA10
    .word 0x100
.func
.thumb_func
sub_811AA14:
    push {lr}
    ldr r1, off_811AA40 // =off_811AA44 
    ldrb r0, [r5,#9]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    ldrb r0, [r5,#4]
.endfunc // sub_811AA14

    ldrb r1, [r5,#0xc]
    cmp r0, r1
    beq loc_811AA3A
    strb r0, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    bl sub_811AB14
loc_811AA3A:
    bl sprite_update
    pop {pc}
off_811AA40:    .word off_811AA44
off_811AA44:    .word sub_811AA4C+1
    .word sub_811AAB8+1
.func
.thumb_func
sub_811AA4C:
    push {r4-r7,lr}
    mov r0, #4
    strb r0, [r5,#9]
    ldrb r1, [r5,#3]
    mov r0, #0
    sub r1, r1, r0
    lsl r3, r1, #2
    ldr r0, off_811AA8C // =off_811AA90 
    ldr r2, [r0,r3]
    ldr r0, off_811AA9C // =dword_811AAA0 
    ldr r3, [r0,r3]
    add r0, r1, #0
    bl sub_8137884
    lsr r0, r0, #4
    bl sub_804A24C
    mov r4, #8
    mov r5, #1
    ldr r6, off_811AAAC // =dword_86B7AE0 
    mov r7, #0
    ldr r1, off_811AAB4 // =loc_3006B94+1 
    mov lr, pc
    bx r1
.endfunc // sub_811AA4C

    pop {r4-r7,pc}
    .byte 0, 0
    .word unk_20347D8
    .word word_2023FA0
    .word unk_86CF4AC
off_811AA8C:    .word off_811AA90
off_811AA90:    .word unk_2017E00
    .word unk_2018000
    .word unk_2018200
off_811AA9C:    .word dword_811AAA0
dword_811AAA0:    .word 0x6010600, 0x6010800, 0x6010A00
off_811AAAC:    .word dword_86B7AE0
    .word unk_20065C0
off_811AAB4:    .word loc_3006B94+1
.func
.thumb_func
sub_811AAB8:
    push {r4-r7,lr}
    ldr r4, off_811AAE8 // =dword_811AAEC 
    ldr r6, off_811AAFC // =dword_811AB00 
    ldrb r0, [r5,#3]
    mov r1, #0
    sub r0, r0, r1
    lsl r0, r0, #2
    ldr r6, [r6,r0]
    ldr r4, [r4,r0]
    mov r7, #8
loc_811AACC:
    add r0, r4, #0
    add r1, r6, #0
    ldr r2, dword_811AAF8 // =0x0 
    mov r3, #5
    bl sub_802FE28
.endfunc // sub_811AAB8

    mov r0, #8
    lsl r0, r0, #0x10
    add r4, r4, r0
    mov r0, #2
    add r6, r6, r0
    sub r7, #1
    bgt loc_811AACC
    pop {r4-r7,pc}
off_811AAE8:    .word dword_811AAEC
dword_811AAEC:    .word 0x1D8018, 0x648018, 0xAB8018
dword_811AAF8:    .word 0x0
off_811AAFC:    .word dword_811AB00
dword_811AB00:    .word 0xB830, 0xB840, 0xB850
.func
.thumb_func
sub_811AB0C:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811AB0C

.func
.thumb_func
sub_811AB14:
    push {lr}
    ldr r0, off_811AB24 // =off_811AB28 
    ldrb r1, [r5,#4]
    ldr r0, [r0,r1]
    bl sub_800304A
    pop {pc}
    .balign 4, 0x00
off_811AB24:    .word off_811AB28
off_811AB28:    .word 0x100
.endfunc // sub_811AB14

    push {r4,r5,lr}
    mov r4, #0
    bl sub_80466C4
    beq loc_811AB44
    add r5, r1, #0
    bl sub_8002DEA
    mov r1, #0xc0
    tst r0, r1
    beq loc_811AB44
    mov r4, #1
loc_811AB44:
    add r0, r4, #0
    tst r0, r0
    pop {r4,r5,pc}
    .balign 4, 0x00
    push {lr}
    bl sub_80466C4
    beq locret_811AB58
    mov r0, #8
    strb r0, [r1,#8]
locret_811AB58:
    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_811AB5C:
    push {lr}
    ldr r0, off_811AB6C // =off_811AB70 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811AB6C:    .word off_811AB70
off_811AB70:    .word sub_811AB7C+1
    .word sub_811ABC8+1
    .word sub_811ACFC+1
.endfunc // sub_811AB5C

.func
.thumb_func
sub_811AB7C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #8
    ldr r1, off_811ABC4 // =unk_2024E8C 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811AB7C

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, dword_811ABC0 // =0x0 
    bl sub_800306C
    mov r0, #0
    bl sub_800304A
    mov r0, #2
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811ABC8
    pop {pc}
dword_811ABC0:    .word 0x0
off_811ABC4:    .word unk_2024E8C
.func
.thumb_func
sub_811ABC8:
    push {lr}
    mov r0, #0x23 
    ldrh r1, [r5,#0xc]
    cmp r1, #0x80
    bne loc_811ABD4
    mov r0, #1
loc_811ABD4:
    strb r0, [r5]
    cmp r0, #1
    beq loc_811ABE4
    ldr r1, off_811ABEC // =off_811ABF0 
    ldrb r0, [r5,#9]
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
loc_811ABE4:
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_811ABEC:    .word off_811ABF0
off_811ABF0:    .word sub_811ABF8+1
    .word sub_811ACA8+1
.endfunc // sub_811ABC8

.func
.thumb_func
sub_811ABF8:
    push {r4-r7,lr}
    mov r0, #4
    strb r0, [r5,#9]
    ldr r4, off_811AC90 // =unk_202714C 
    bl sub_803DD60
    tst r0, r0
    beq loc_811AC0A
    ldr r4, off_811AC8C // =unk_20270EC 
loc_811AC0A:
    ldrh r1, [r5,#0xc]
    lsl r1, r1, #0x11
    lsr r1, r1, #0x11
    tst r1, r1
    bne loc_811AC18
    ldr r4, off_811AC98 // =dword_811AC9C 
    b loc_811AC40
loc_811AC18:
    ldrb r1, [r5,#3]
    mov r0, #0
    cmp r0, r1
    bne loc_811AC40
    ldrh r1, [r5,#0xc]
    lsl r1, r1, #0x11
    lsr r1, r1, #0x11
    sub r1, #1
    push {r1}
    add r0, r1, #0
    bl sub_8137884
    cmp r0, #0x22 
    pop {r1}
    blt loc_811AC38
    mov r1, #2
loc_811AC38:
    add r0, r1, #0
    bl sub_804A24C
    add r4, r0, #0
loc_811AC40:
    ldrb r1, [r5,#3]
    mov r0, #0
    sub r1, r1, r0
    lsl r3, r1, #2
    ldr r0, off_811AC68 // =off_811AC6C 
    ldr r2, [r0,r3]
    ldr r0, off_811AC78 // =dword_811AC7C 
    ldr r3, [r0,r3]
    add r0, r4, #0
    mov r4, #8
    mov r5, #1
    ldr r6, off_811AC88 // =dword_86B7AE0 
    mov r7, #0
    ldr r1, off_811AC94 // =loc_3006B94+1 
    mov lr, pc
    bx r1
.endfunc // sub_811ABF8

    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_86CF4AC
off_811AC68:    .word off_811AC6C
off_811AC6C:    .word unk_2017C00
    .word unk_2017E00
    .word unk_2018000
off_811AC78:    .word dword_811AC7C
dword_811AC7C:    .word 0x6012200, 0x6012400, 0x6012600
off_811AC88:    .word dword_86B7AE0
off_811AC8C:    .word unk_20270EC
off_811AC90:    .word unk_202714C
off_811AC94:    .word loc_3006B94+1
off_811AC98:    .word dword_811AC9C
dword_811AC9C:    .word 0x9898, 0x0
    .word 0xE6
.func
.thumb_func
sub_811ACA8:
    push {r4-r7,lr}
    bl sub_80030A8
    sub r0, #0x20 
    sub r1, #8
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r4, dword_811ACE4 // =0x8000 
    orr r4, r0
    ldr r6, off_811ACEC // =dword_811ACF0 
    ldrb r0, [r5,#3]
    mov r1, #0
    sub r0, r0, r1
    lsl r0, r0, #2
    ldr r6, [r6,r0]
    mov r7, #8
loc_811ACC8:
    add r0, r4, #0
    add r1, r6, #0
    ldr r2, dword_811ACE8 // =0x0 
    mov r3, #3
    bl sub_802FE28
.endfunc // sub_811ACA8

    mov r0, #8
    lsl r0, r0, #0x10
    add r4, r4, r0
    mov r0, #2
    add r6, r6, r0
    sub r7, #1
    bgt loc_811ACC8
    pop {r4-r7,pc}
dword_811ACE4:    .word 0x8000
dword_811ACE8:    .word 0x0
off_811ACEC:    .word dword_811ACF0
dword_811ACF0:    .word 0xB910, 0xB920, 0xB930
.func
.thumb_func
sub_811ACFC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811ACFC

.func
.thumb_func
sub_811AD04:
    push {r4-r7,lr}
    add r4, r0, #0
    add r0, r2, #0
    bl sub_80466C4
    beq locret_811AD16
    strh r4, [r1,#0xc]
    mov r0, #0
    strb r0, [r1,#9]
locret_811AD16:
    pop {r4-r7,pc}
.endfunc // sub_811AD04

    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811AD34
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811AD34:
    add sp, sp, #0xc
    pop {r4-r7,pc}
.func
.thumb_func
sub_811AD38:
    push {lr}
    ldr r0, off_811AD48 // =off_811AD4C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811AD48:    .word off_811AD4C
off_811AD4C:    .word sub_811AD58+1
    .word sub_811ADC0+1
    .word sub_811AE54+1
.endfunc // sub_811AD38

.func
.thumb_func
sub_811AD58:
    push {r4,lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x68 
    ldr r1, off_811ADB0 // =unk_2022FA0 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811AD58

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811ADAC // =0xA0 
    bl sub_800306C
    mov r0, #2
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r2, [r5,#3]
    ldr r1, off_811ADB4 // =aH 
    lsl r3, r2, #2
    ldrh r0, [r1,r3]
    add r3, #2
    ldrh r1, [r1,r3]
    bl sub_811AE5C
    bl sub_811ADC0
    .byte 0x10
    .byte 0xBD
off_811ADAC:    .word 0xA0
off_811ADB0:    .word unk_2022FA0
off_811ADB4:    .word aH
aH:    .byte 0x7E
    .byte  0
    .byte 0x24 
    .byte  0
    .byte 0x7E 
    .byte  0
    .byte 0x48 
    .byte  0
.func
.thumb_func
sub_811ADC0:
    push {lr}
    ldr r0, off_811ADF0 // =off_811ADF4 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    ldrb r0, [r5]
.endfunc // sub_811ADC0

    mov r1, #2
    tst r0, r1
    beq locret_811ADEC
    bl sub_811B104
    bl sub_811B14C
    bl sub_811B194
    bl sub_811B098
    bl sub_811B028
locret_811ADEC:
    pop {pc}
    .byte 0, 0
off_811ADF0:    .word off_811ADF4
off_811ADF4:    .word sub_811AE00+1
    .word sub_811AE04+1
    .word sub_811AE2C+1
.func
.thumb_func
sub_811AE00:
    push {lr}
    pop {pc}
.endfunc // sub_811AE00

.func
.thumb_func
sub_811AE04:
    push {lr}
    ldrb r2, [r5,#0x10]
    sub r2, #0x30 
    cmp r2, #0x40 
    bgt loc_811AE10
    mov r2, #0x40 
loc_811AE10:
    strb r2, [r5,#0x10]
    mov r0, #0
    mov r1, #0x40 
    bl sprite_setScaleParameters
    ldrb r0, [r5,#0x10]
    cmp r0, #0x40 
    bne locret_811AE28
    bl sprite_makeUnscalable
    mov r0, #0
    strb r0, [r5,#9]
locret_811AE28:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811AE04

.func
.thumb_func
sub_811AE2C:
    push {lr}
    ldrb r2, [r5,#0x10]
    add r2, #0x30 
    cmp r2, #0xff
    blt loc_811AE38
    mov r2, #0xff
loc_811AE38:
    strb r2, [r5,#0x10]
    mov r0, #0
    mov r1, #0x40 
    bl sprite_setScaleParameters
    ldrb r0, [r5,#0x10]
    cmp r0, #0xff
    bne locret_811AE50
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #1
    strb r0, [r5]
locret_811AE50:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811AE2C

.func
.thumb_func
sub_811AE54:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811AE54

.func
.thumb_func
sub_811AE5C:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811AE76
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811AE76:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811AE5C

.func
.thumb_func
sub_811AE7C:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_811AEF4
    add r5, r1, #0
    mov r1, #1
    ldr r0, [sp]
    tst r0, r0
    beq loc_811AEF2
    ldr r0, [sp,#4]
    lsl r0, r0, #2
    ldr r1, off_811AEF8 // =off_811AEFC 
    ldr r0, [r1,r0]
    ldrb r0, [r0]
    lsr r6, r0, #4
    mov r4, #0xf
    and r4, r0
    ldr r1, off_811AF04 // =dword_811AF08 
    lsl r4, r4, #2
    ldr r0, [r1,r4]
    ldr r1, off_811AF38 // =dword_811AF3C 
    ldr r2, [sp,#4]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r2, off_811AF44 // =0x80 
    bl loc_8000AC8
    ldr r1, off_811AF48 // =dword_811AF4C 
    ldr r0, [r1,r4]
    ldr r1, off_811AF7C // =off_811AF80 
    ldr r2, [sp,#4]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    mov r2, #0x20 
    bl loc_8000AC8
    ldr r1, off_811AF88 // =off_811AF8C 
    lsl r6, r6, #2
    ldr r0, [r1,r6]
    ldr r1, off_811AFB8 // =dword_811AFBC 
    ldr r2, [sp,#4]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    ldr r2, off_811AFD4 // =0x200 
    bl loc_8000AC8
    ldr r0, off_811AFD0 // =unk_86DC3F8 
    ldr r1, off_811AFC4 // =off_811AFC8 
    ldr r2, [sp,#4]
    lsl r2, r2, #2
    ldr r1, [r1,r2]
    mov r2, #0x20 
    bl loc_8000AC8
    mov r1, #0x23 
loc_811AEF2:
    strb r1, [r5]
loc_811AEF4:
    add sp, sp, #8
    pop {r4-r7,pc}
off_811AEF8:    .word off_811AEFC
off_811AEFC:    .word byte_2023BC0
    .word byte_2023BC8
off_811AF04:    .word dword_811AF08
dword_811AF08:    .word 0x86C14A0, 0x86C1520, 0x86C15A0, 0x86C1620, 0x86C16A0
    .word 0x86C1720, 0x86C1BA0, 0x86C1C20, 0x86C1CA0, 0x86C1D20
    .word 0x86C1DA0, 0x86C1EA0
off_811AF38:    .word dword_811AF3C
dword_811AF3C:    .word 0x6010E00, 0x6010F00
off_811AF44:    .word 0x80
off_811AF48:    .word dword_811AF4C
dword_811AF4C:    .word 0x86C0B20, 0x86C0B60, 0x86C0BA0, 0x86C0BE0, 0x86C0C20
    .word 0x86C0C60, 0x86C18E0, 0x86C1920, 0x86C1960, 0x86C19A0
    .word 0x86C19E0, 0x86C1A60
off_811AF7C:    .word off_811AF80
off_811AF80:    .word unk_30015B0
    .word unk_30015D0
off_811AF88:    .word off_811AF8C
off_811AF8C:    .word unk_202CA00
    .word unk_202CC00
    .word unk_202CE00
    .word unk_202D000
    .word unk_202D200
    .word unk_202D400
    .word unk_202D600
    .word unk_202D800
    .word unk_202DA00
    .word unk_202DC00
    .word unk_202DE00
off_811AFB8:    .word dword_811AFBC
dword_811AFBC:    .word 0x6011000, 0x6011200
off_811AFC4:    .word off_811AFC8
off_811AFC8:    .word unk_30015F0
    .word unk_3001610
off_811AFD0:    .word unk_86DC3F8
off_811AFD4:    .word 0x200
.endfunc // sub_811AE7C

    push {r4-r7,lr}
    bl sub_80466C4
    beq locret_811AFFA
    add r5, r1, #0
    mov r0, #0x23 
    strb r0, [r5]
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    strh r2, [r5,#0x10]
    bl sprite_setScaleParameters
    mov r0, #8
    strb r0, [r5,#9]
locret_811AFFA:
    pop {r4-r7,pc}
    push {r4-r7,lr}
    bl sub_80466C4
    beq locret_811B00E
    add r5, r1, #0
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#9]
locret_811B00E:
    pop {r4-r7,pc}
.func
.thumb_func
sub_811B010:
    push {r4-r7,lr}
    bl sub_80466C4
    beq locret_811B026
    add r5, r1, #0
    ldrb r0, [r5,#0x11]
    mov r1, #3
    tst r1, r0
    beq locret_811B026
    bl sprite_makeUnscalable
locret_811B026:
    pop {r4-r7,pc}
.endfunc // sub_811B010

.func
.thumb_func
sub_811B028:
    push {r4-r7,lr}
    sub sp, sp, #8
    ldr r0, off_811B070 // =off_811B074 
    ldrb r1, [r5,#3]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0]
    lsr r1, r0, #4
    mov r2, #0xf
    and r0, r2
    bl sub_80030A8
    str r0, [sp]
    str r1, [sp,#4]
    ldr r1, off_811B088 // =word_811B08C 
    mov r2, #0
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    ldr r2, [sp]
    add r0, r0, r2
    ldr r2, [sp,#4]
    add r1, r1, r2
    ldrb r2, [r5,#3]
    lsl r3, r2, #2
    ldr r5, off_811B07C // =off_811B080 
    ldr r5, [r5,r3]
    ldr r2, off_811B090 // =unk_811B094 
    lsr r3, r3, #2
    ldrb r2, [r2,r3]
    add r3, r5, #0
    bl sub_8132A50
.endfunc // sub_811B028

    add sp, sp, #8
    pop {r4-r7,pc}
    .byte 0, 0
off_811B070:    .word off_811B074
off_811B074:    .word byte_2023BC0
    .word byte_2023BC8
off_811B07C:    .word off_811B080
off_811B080:    .word 0x480
    .word 0x490
off_811B088:    .word word_811B08C
word_811B08C:    .hword 0x24
    .hword 0xFFEA
off_811B090:    .word unk_811B094
unk_811B094:    .byte  5
    .byte  6
    .byte  0
    .byte  0
.func
.thumb_func
sub_811B098:
    push {r4-r7,lr}
    sub sp, sp, #8
    ldr r0, off_811B0DC // =unk_811B0E0 
    ldrb r1, [r5,#3]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    ldrb r0, [r0]
    lsr r1, r0, #4
    mov r2, #0xf
    and r0, r2
    bl sub_80030A8
    str r0, [sp]
    str r1, [sp,#4]
    ldr r1, off_811B0F4 // =word_811B0F8 
    mov r2, #0
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    ldr r2, [sp]
    add r0, r0, r2
    ldr r2, [sp,#4]
    add r1, r1, r2
    ldrb r2, [r5,#3]
    lsl r3, r2, #2
    ldr r5, off_811B0E8 // =unk_811B0EC 
    ldr r5, [r5,r3]
    ldr r2, off_811B0FC // =unk_811B100 
    lsr r3, r3, #2
    ldrb r2, [r2,r3]
    bl dword_8132A9C+2
    add sp, sp, #8
    pop {r4-r7,pc}
off_811B0DC:    .word unk_811B0E0
unk_811B0E0:    .byte 0xC0
    .byte 0x3B 
    .byte  2
    .byte  2
    .byte 0xC8
    .byte 0x3B 
    .byte  2
    .byte  2
off_811B0E8:    .word unk_811B0EC
unk_811B0EC:    .byte 0x70 
    .byte  4
    .byte  0
    .byte  0
    .byte 0x78 
    .byte  4
    .byte  0
    .byte  0
off_811B0F4:    .word word_811B0F8
word_811B0F8:    .hword 0xFF93
    .byte 0xF8
    .byte 0xFF
off_811B0FC:    .word unk_811B100
unk_811B100:    .byte  3
    .byte  4
    .byte  0
    .byte  0
.endfunc // sub_811B098

.func
.thumb_func
sub_811B104:
    push {r4-r7,lr}
    sub sp, sp, #8
    bl sub_80030A8
    str r0, [sp]
    str r1, [sp,#4]
    ldr r1, off_811B144 // =word_811B148 
    mov r2, #0
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    ldr r2, [sp]
    add r0, r0, r2
    ldr r2, [sp,#4]
    add r1, r1, r2
    ldrb r2, [r5,#3]
    lsl r3, r2, #2
    ldr r5, off_811B138 // =unk_811B13C 
    ldr r5, [r5,r3]
    mov r2, #0
    mov r4, #5
    bl sub_81329C8
    add sp, sp, #8
    pop {r4-r7,pc}
    .byte  0
    .byte  0
off_811B138:    .word unk_811B13C
unk_811B13C:    .byte  0
    .byte  4
    .byte  0
    .byte  0
    .byte 0x40 
    .byte  4
    .byte  0
    .byte  0
off_811B144:    .word word_811B148
word_811B148:    .hword 0xFFA8
    .byte 0xFB
    .byte 0xFF
.endfunc // sub_811B104

.func
.thumb_func
sub_811B14C:
    push {r4-r7,lr}
    sub sp, sp, #8
    bl sub_80030A8
    str r0, [sp]
    str r1, [sp,#4]
    ldr r1, off_811B18C // =word_811B190 
    mov r2, #0
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    ldr r2, [sp]
    add r0, r0, r2
    ldr r2, [sp,#4]
    add r1, r1, r2
    ldrb r2, [r5,#3]
    lsl r3, r2, #2
    ldr r5, off_811B180 // =unk_811B184 
    ldr r5, [r5,r3]
    mov r2, #1
    mov r4, #9
    bl sub_81329C8
    add sp, sp, #8
    pop {r4-r7,pc}
    .byte  0
    .byte  0
off_811B180:    .word unk_811B184
unk_811B184:    .byte 0x10
    .byte  4
    .byte  0
    .byte  0
    .byte 0x50 
    .byte  4
    .byte  0
    .byte  0
off_811B18C:    .word word_811B190
word_811B190:    .hword 0xFFFE
    .byte 0xFB
    .byte 0xFF
.endfunc // sub_811B14C

.func
.thumb_func
sub_811B194:
    push {r4-r7,lr}
    sub sp, sp, #8
    bl sub_80030A8
    str r0, [sp]
    str r1, [sp,#4]
    ldr r1, off_811B1E4 // =word_811B1E8 
    mov r2, #0
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    ldr r2, [sp]
    add r0, r0, r2
    ldr r2, [sp,#4]
    add r1, r1, r2
    ldrb r2, [r5,#3]
    lsl r3, r2, #2
    ldr r5, off_811B1CC // =unk_811B1D0 
    ldr r5, [r5,r3]
    ldr r2, off_811B1D8 // =unk_811B1DC 
    ldr r3, [r2,r3]
    ldrh r3, [r3]
    mov r2, #0
    bl sub_8132A14
    .byte  2
    .byte 0xB0
    .byte 0xF0
    .byte 0xBD
    .byte  0
    .byte  0
off_811B1CC:    .word unk_811B1D0
unk_811B1D0:    .byte 0x30 
    .byte  4
    .byte  0
    .byte  0
    .byte 0x30 
    .byte  4
    .byte  0
    .byte  0
off_811B1D8:    .word unk_811B1DC
unk_811B1DC:    .byte 0xA0
    .byte 0x3B 
    .byte  2
    .byte  2
    .byte 0xB0
    .byte 0x3B 
    .byte  2
    .byte  2
off_811B1E4:    .word word_811B1E8
word_811B1E8:    .hword 0xFFA4
    .byte 0xF2
    .byte 0xFF
.endfunc // sub_811B194

.func
.thumb_func
sub_811B1EC:
    push {lr}
    ldr r0, off_811B1FC // =off_811B200 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811B1FC:    .word off_811B200
off_811B200:    .word sub_811B20C+1
    .word sub_811B284+1
    .word sub_811B290+1
.endfunc // sub_811B1EC

.func
.thumb_func
sub_811B20C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #9
    ldrb r2, [r5,#4]
    lsl r2, r2, #2
    ldr r1, off_811B274 // =off_811B278 
    ldr r1, [r1,r2]
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_811B232
    mov r0, #2
    ldr r1, off_811B280 // =unk_2037780 
    ldrb r1, [r1,#0xc] // (byte_203778C - 0x2037780)
    tst r1, r1
    bne loc_811B232
    mov r0, #1
loc_811B232:
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811B20C

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811B270 // =0x130 
    bl sub_800306C
    mov r0, #2
    bl sub_800304A
    mov r0, #5
    bl sub_8003060
    bl sub_811B298
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#0xc]
    bl sub_811B284
    pop {pc}
    .byte 0, 0
off_811B270:    .word 0x130
off_811B274:    .word off_811B278
off_811B278:    .word unk_2020484
    .word unk_202458C
off_811B280:    .word unk_2037780
.func
.thumb_func
sub_811B284:
    push {lr}
    bl sub_811B298
    bl sprite_update
.endfunc // sub_811B284

    pop {pc}
.func
.thumb_func
sub_811B290:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811B290

.func
.thumb_func
sub_811B298:
    push {r7,lr}
    ldr r7, off_811B2E0 // =off_811B2E4 
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r7, [r7,r0]
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_811B2C8
    ldrb r0, [r5,#0xc]
    ldrb r1, [r7,#0xc]
    cmp r0, r1
    beq loc_811B2C8
    mov r0, #2
    ldrb r1, [r7,#0xc]
    strb r1, [r5,#0xc]
    tst r1, r1
    bne loc_811B2BC
    mov r0, #1
loc_811B2BC:
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_811B2C8:
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r2, off_811B2EC // =off_811B2F0 
    ldr r2, [r2,r0]
    ldrb r1, [r7,#0xc]
    lsl r1, r1, #2
    ldr r0, [r2,r1]
    mov r1, #0x20 
    bl sub_800307C
    pop {r7,pc}
    .byte 0, 0
off_811B2E0:    .word off_811B2E4
off_811B2E4:    .word sSubmenu
    .word unk_2037780
off_811B2EC:    .word off_811B2F0
off_811B2F0:    .word off_811B2F8
    .word unk_811B304
off_811B2F8:    .word 0x30
    .word 0x78
    .word 0xC0
unk_811B304:    .byte 0xE
    .byte  0
    .byte  0
    .byte  0
    .byte 0x3D 
    .byte  0
    .byte  0
    .byte  0
    .byte 0x84
    .byte  0
    .byte  0
    .byte  0
    .byte 0xCB
    .byte  0
    .byte  0
    .byte  0
.endfunc // sub_811B298

.func
.thumb_func
sub_811B314:
    push {r4,r5,lr}
    add r4, r1, #0
    bl sub_80466C4
    beq locret_811B336
    ldrb r0, [r1]
    mov r2, #8
    tst r0, r2
    bne locret_811B336
    add r5, r1, #0
    add r0, r4, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
locret_811B336:
    pop {r4,r5,pc}
.endfunc // sub_811B314

loc_811B338:
    push {lr}
    ldr r6, off_811B358 // =sSubmenu 
    ldr r0, off_811B348 // =off_811B34C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811B348:    .word off_811B34C
off_811B34C:    .word sub_811B35C+1
    .word loc_811B3B0+1
    .word sub_811B3EC+1
off_811B358:    .word sSubmenu
.func
.thumb_func
sub_811B35C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x14
    ldr r1, off_811B3AC // =unk_2026A00 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811B35C

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, off_811B3A8 // =0x210 
    bl sub_800306C
    mov r0, #2
    bl sub_8003060
    mov r0, #0xa
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x20 
    mov r1, #0x50 
    bl sub_800307C
    bl loc_811B3B0
    pop {pc}
off_811B3A8:    .word 0x210
off_811B3AC:    .word unk_2026A00
loc_811B3B0:
    push {lr}
    ldr r0, off_811B3C4 // =off_811B3C8 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_811B3C4:    .word off_811B3C8
off_811B3C8:    .word sub_811B3CC+1
.func
.thumb_func
sub_811B3CC:
    push {lr}
    ldr r0, off_811B3DC // =dword_811B3E0 
    ldrh r1, [r6,#0x26]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8002FA6
    pop {pc}
off_811B3DC:    .word dword_811B3E0
dword_811B3E0:    .word 0x6000000, 0xC000000, 0xA000000
.endfunc // sub_811B3CC

.func
.thumb_func
sub_811B3EC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811B3EC

.func
.thumb_func
sub_811B3F4:
    push {lr}
    ldr r0, off_811B404 // =jt_811B408 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811B404:    .word jt_811B408
jt_811B408:    .word sub_811B414+1
    .word sub_811B45C+1
    .word sub_811B464+1
.endfunc // sub_811B3F4

.func
.thumb_func
sub_811B414:
    push {r4,lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x2c 
    bl sub_8002770 // (int a1, int a2) -> void
    bl sub_80101F8
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811B414

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811B458 // =0xC0 
    bl sub_800306C
    mov r0, #6
    bl sub_800304A
    mov r0, #4
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811B45C
    pop {r4,pc}
off_811B458:    .word 0xC0
.func
.thumb_func
sub_811B45C:
    push {lr}
    bl sprite_update
.endfunc // sub_811B45C

    pop {pc}
.func
.thumb_func
sub_811B464:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811B464

.func
.thumb_func
sub_811B46C:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811B486
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811B486:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811B46C

.func
.thumb_func
sub_811B48C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_811B4A6
    mov r0, #0x23 
    ldr r2, [sp]
    tst r2, r2
    bne loc_811B4A4
    mov r0, #1
loc_811B4A4:
    strb r0, [r1]
loc_811B4A6:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811B48C

.func
.thumb_func
sub_811B4AC:
    push {lr}
    ldr r0, off_811B4BC // =loc_811B4C0 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811B4BC:    .word loc_811B4C0
.endfunc // sub_811B4AC

loc_811B4C0:
    push {r0,r2,r3,r6,r7}
    lsr r1, r2, #0x20
    push {r0,r4-r6,lr}
    lsr r1, r2, #0x20
    .word sub_811B6D8+1
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x25 
    ldr r1, off_811B554 // =unk_2024290 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_811B52C // =off_811B530 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    ldrb r0, [r5,#4]
    mov r1, #0
    add r0, r0, r1
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    mov r0, #0xb0
    ldr r3, off_811B558 // =dword_811B55C 
    ldrb r2, [r5,#4]
    lsl r2, r2, #1
    ldrh r1, [r3,r2]
    strh r1, [r5,#0x14]
    bl sub_800307C
    bl loc_811B570
    pop {pc}
off_811B52C:    .word off_811B530
off_811B530:    .word 0x240
    .word 0x1F8
    .word 0x1B0
    .word 0x168
    .word 0x120
    .word 0xD8
    .word 0x90
    .word 0x48
    .word 0x0
off_811B554:    .word unk_2024290
off_811B558:    .word dword_811B55C
dword_811B55C:    .word 0x140002, 0x380026, 0x5C004A, 0x80006E, 0x92
loc_811B570:
    push {lr}
    ldr r0, off_811B588 // =jt_811B58C 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_811B8C8
    bl sprite_update
    pop {pc}
    .balign 4, 0x00
off_811B588:    .word jt_811B58C
jt_811B58C:    .word sub_811B594+1
    .word sub_811B5C0+1
.func
.thumb_func
sub_811B594:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_811B5A2
    mov r0, #4
    strb r0, [r5,#0xa]
    b locret_811B5BE
loc_811B5A2:
    bl sub_811B6E0
    bl sub_811B71C
    bl sub_811B7D4
    bl sub_811B814
    bl sub_811B914
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
locret_811B5BE:
    pop {pc}
.endfunc // sub_811B594

.func
.thumb_func
sub_811B5C0:
    push {lr}
    ldr r0, off_811B5D8 // =loc_811B5DC 
    ldrb r1, [r5,#0xa]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_811B984
    mov r2, #0x14
    ldrsh r1, [r5,r2]
    strh r1, [r0,#0xe]
    pop {pc}
off_811B5D8:    .word loc_811B5DC
.endfunc // sub_811B5C0

loc_811B5DC:
    push {r0,r2,r4-r7,lr}
    lsr r1, r2, #0x20
    push {r0,r2-r7,lr}
    lsr r1, r2, #0x20
    .word sub_811B620+1
    .word sub_811B648+1
    .word loc_811B66C+1
    .word sub_811B6B8+1
    push {lr}
    bl sub_811B914
    pop {pc}
    push {lr}
    mov r4, #0x16
    ldrsh r0, [r5,r4]
    mov r6, #0x14
    ldrsh r1, [r5,r6]
    bl sub_811B990
    strh r0, [r5,r6]
    ldrsh r0, [r5,r4]
    ldrsh r1, [r5,r6]
    cmp r0, r1
    bne locret_811B61C
    mov r0, #8
    strb r0, [r5,#0xa]
    mov r0, #2
    strh r0, [r5,#0x12]
locret_811B61C:
    pop {pc}
    .byte 0, 0
.func
.thumb_func
sub_811B620:
    push {lr}
    ldrh r0, [r5,#0x12]
    sub r0, #1
    strh r0, [r5,#0x12]
    bgt locret_811B646
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    mov r1, #0x14
    strh r0, [r5,r1]
    mov r0, #0
    strb r0, [r5,#0xa]
    bl sub_811B6E0
    bl sub_811B71C
    bl sub_811B7D4
    bl sub_811B814
locret_811B646:
    pop {pc}
.endfunc // sub_811B620

.func
.thumb_func
sub_811B648:
    push {lr}
    ldrb r2, [r5,#0x12]
    add r2, #0x30 
    cmp r2, #0xff
    blt loc_811B654
    mov r2, #0xff
loc_811B654:
    strb r2, [r5,#0x12]
    mov r0, #0
    mov r1, #0x40 
    bl sprite_setScaleParameters
    ldrb r0, [r5,#0x12]
    cmp r0, #0xff
    bne locret_811B6B4
    mov r0, #0x10
    strb r0, [r5,#0xa]
    pop {pc}
    .balign 4, 0x00
loc_811B66C:
    push {lr}
    ldrb r2, [r5,#0x12]
    sub r2, #0x30 
    cmp r2, #0x40 
    bgt loc_811B678
    mov r2, #0x40 
loc_811B678:
    strb r2, [r5,#0x12]
    mov r0, #0
    mov r1, #0x40 
    bl sprite_setScaleParameters
    ldrb r0, [r5,#0x12]
    cmp r0, #0x40 
    bne locret_811B6B4
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    mov r1, #0x14
    strh r0, [r5,r1]
    mov r0, #0
    strb r0, [r5,#0xa]
    ldr r0, off_811B980 // =unk_2037780 
    mov r1, #0
    strb r1, [r0,#0xc] // (byte_203778C - 0x2037780)
    bl sprite_makeUnscalable
    mov r0, #0
    bl sub_8002FA6
    bl sub_811B6E0
    bl sub_811B71C
    bl sub_811B7D4
    bl sub_811B814
locret_811B6B4:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811B648

.func
.thumb_func
sub_811B6B8:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xa]
    bl sub_811B6E0
    bl sub_811B71C
    bl sub_811B7D4
    bl sub_811B814
    ldr r0, off_811B980 // =unk_2037780 
    mov r1, #0
    strb r1, [r0,#0xc] // (byte_203778C - 0x2037780)
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811B6B8

.func
.thumb_func
sub_811B6D8:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811B6D8

.func
.thumb_func
sub_811B6E0:
    push {lr}
    ldr r2, off_811B980 // =unk_2037780 
    ldrh r0, [r2,#0x24] // (word_20377A4 - 0x2037780)
    cmp r0, #1
    blt loc_811B6EC
    mov r0, #1
loc_811B6EC:
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt loc_811B714
    ldrh r0, [r2,#0x24] // (word_20377A4 - 0x2037780)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    ldrh r1, [r2,#0x1e] // (word_203779E - 0x2037780)
    cmp r0, r1
    bge loc_811B714
    mov r2, #0x14
    ldrsh r1, [r5,r2]
    cmp r1, #0x14
    ble loc_811B714
    cmp r1, #0x80
    bgt loc_811B714
    mov r0, #0x23 
    strb r0, [r5]
    b locret_811B718
loc_811B714:
    mov r0, #1
    strb r0, [r5]
locret_811B718:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811B6E0

.func
.thumb_func
sub_811B71C:
    push {r4-r7,lr}
    ldr r6, off_811B980 // =unk_2037780 
    ldrh r0, [r6,#0x24] // (word_20377A4 - 0x2037780)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt locret_811B772
    ldrh r1, [r6,#0x1e] // (word_203779E - 0x2037780)
    cmp r0, r1
    bge locret_811B772
    lsl r0, r0, #2
    ldr r1, off_811B774 // =word_2023FA0 
    add r1, r1, r0
    mov r4, #4
    ldrh r2, [r1]
    ldr r3, off_811B7A8 // =0x14C 
    cmp r2, r3
    beq loc_811B74A
    ldrh r2, [r1,#2]
    mov r4, #0
    tst r2, r2
    bne loc_811B74A
    mov r4, #2
loc_811B74A:
    strb r4, [r5,#0xe]
    mov r4, r10
    ldr r4, [r4,#0x38]
    str r2, [r4,#8]
    ldrh r1, [r1]
    sub r1, #0x90
    lsr r1, r1, #2
    ldr r0, off_811B77C // =dword_873EA50 
    ldrb r4, [r5,#4]
    lsl r4, r4, #2
    ldr r2, off_811B780 // =off_811B784 
    ldr r2, [r2,r4]
    ldr r3, off_811B7AC // =unk_811B7B0 
    ldr r3, [r3,r4]
    mov r4, #8
    mov r5, #1
    ldr r6, off_811B778 // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
locret_811B772:
    pop {r4-r7,pc}
off_811B774:    .word word_2023FA0
off_811B778:    .word dword_86B7AE0
off_811B77C:    .word dword_873EA50
off_811B780:    .word off_811B784
off_811B784:    .word unk_2017A00
    .word unk_2017E00
    .word unk_2018200
    .word unk_2018600
    .word unk_2018A00
    .word unk_2018E00
    .word unk_2019200
    .word unk_2019600
    .word byte_2019A00
off_811B7A8:    .word 0x14C
off_811B7AC:    .word unk_811B7B0
unk_811B7B0:    .byte 0x80
    .byte 0x4E 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x45 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x3C 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x33 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x2A 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x21 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x18
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0xF
    .byte  1
    .byte  6
    .byte 0x80
    .byte  6
    .byte  1
    .byte  6
.endfunc // sub_811B71C

.func
.thumb_func
sub_811B7D4:
    push {r4-r7,lr}
    ldr r6, off_811B980 // =unk_2037780 
    ldrh r0, [r6,#0x24] // (word_20377A4 - 0x2037780)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt locret_811B812
    ldrh r1, [r6,#0x1e] // (word_203779E - 0x2037780)
    cmp r0, r1
    bge locret_811B812
    lsl r0, r0, #2
    ldr r1, off_811B868 // =word_2023FA0 
    add r0, r0, r1
    ldrh r1, [r0,#2]
    mov r0, r10
    ldr r0, [r0,#0x38]
    str r1, [r0,#8]
    mov r1, #0x46 
    ldrb r4, [r5,#4]
    lsl r4, r4, #2
    ldr r0, off_811B870 // =unk_201BA20 
    ldr r2, off_811B874 // =off_811B878 
    ldr r2, [r2,r4]
    ldr r3, off_811B8A0 // =unk_811B8A4 
    ldr r3, [r3,r4]
    mov r4, #1
    mov r5, #1
    ldr r6, off_811B86C // =dword_86B7AE0 
    mov r7, #0
    bl render_graphicalText_8045F8C
locret_811B812:
    pop {r4-r7,pc}
.endfunc // sub_811B7D4

.func
.thumb_func
sub_811B814:
    push {r4-r7,lr}
    ldr r6, off_811B980 // =unk_2037780 
    ldrh r0, [r6,#0x24] // (word_20377A4 - 0x2037780)
    ldrb r1, [r5,#4]
    add r0, r0, r1
    sub r0, #2
    blt locret_811B85C
    ldrh r1, [r6,#0x1e] // (word_203779E - 0x2037780)
    cmp r0, r1
    bge locret_811B85C
    lsl r0, r0, #2
    ldr r1, off_811B868 // =word_2023FA0 
    add r0, r0, r1
    ldrh r4, [r0]
    add r0, r4, #0
    sub r0, #0x90
    bne loc_811B840
    ldr r0, dword_811B860 // =0x100000 
    bl sub_8002FA6
    mov r0, #0
    b loc_811B84A
loc_811B840:
    push {r0}
    ldr r0, dword_811B864 // =0x0 
    bl sub_8002FA6
    pop {r0}
loc_811B84A:
    bl sub_813B780
    ldrb r0, [r0,#3]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
locret_811B85C:
    pop {r4-r7,pc}
    .byte 0, 0
dword_811B860:    .word 0x100000
dword_811B864:    .word 0x0
off_811B868:    .word word_2023FA0
off_811B86C:    .word dword_86B7AE0
off_811B870:    .word unk_201BA20
off_811B874:    .word off_811B878
off_811B878:    .word unk_2017C00
    .word unk_2018000
    .word unk_2018400
    .word unk_2018800
    .word unk_2018C00
    .word unk_2019000
    .word unk_2019400
    .word unk_2019800
    .word unk_2019C00
    .word 0x14C
off_811B8A0:    .word unk_811B8A4
unk_811B8A4:    .byte 0x80
    .byte 0x50 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x47 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x3E 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x35 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x2C 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x23 
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x1A
    .byte  1
    .byte  6
    .byte 0x80
    .byte 0x11
    .byte  1
    .byte  6
    .byte 0x80
    .byte  8
    .byte  1
    .byte  6
.endfunc // sub_811B814

.func
.thumb_func
sub_811B8C8:
    push {r4-r7,lr}
    bl sub_8002EE8
    ldr r4, off_811B980 // =unk_2037780 
    ldrh r0, [r4,#0x20] // (word_20377A0 - 0x2037780)
    add r0, #2
    ldrb r1, [r5,#4]
    cmp r0, r1
    bne loc_811B8F2
    ldr r7, off_811B900 // =dword_811B904 
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #0xf
    and r0, r1
    lsr r0, r0, #1
    lsl r0, r0, #1
    ldrh r0, [r7,r0]
    bl sub_8002ED0
    b locret_811B8F8
loc_811B8F2:
    ldr r0, dword_811B8FC // =0xA108 
    bl sub_8002ED0
locret_811B8F8:
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811B8FC:    .word 0xA108
off_811B900:    .word dword_811B904
dword_811B904:    .word 0x8420000, 0x8421084, 0x88428000, 0x88429084
.endfunc // sub_811B8C8

.func
.thumb_func
sub_811B914:
    push {r4-r7,lr}
    bl sub_811B984
    add r3, r0, #0
    mov r7, #0
    ldr r0, off_811B980 // =unk_2037780 
    ldrb r4, [r0,#0xc] // (byte_203778C - 0x2037780)
    tst r4, r4
    beq loc_811B96A
    cmp r4, #0x10
    bne loc_811B932
    ldrh r0, [r3,#0xe]
    strh r0, [r5,#0x14]
    mov r7, #0x14
    b loc_811B96A
loc_811B932:
    mov r0, #0xb0
    strh r0, [r3,#0xc]
    mov r1, #0xe
    ldrsh r0, [r3,r1]
    strh r0, [r5,#0x10]
    strh r0, [r5,#0x14]
    cmp r4, #0xc
    beq loc_811B94E
    ldr r1, off_811B970 // =dword_811B974 
    ldr r1, [r1,r4]
    add r0, r0, r1
    strh r0, [r5,#0x16]
    mov r7, #4
    b loc_811B96A
loc_811B94E:
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x40 
    mov r2, #0x40 
    strh r2, [r5,#0x12]
    bl sprite_setScaleParameters
    mov r0, #0xfc
    lsl r0, r0, #0x18
    mvn r0, r0
    bl sub_8002FA6
    mov r7, #0xc
loc_811B96A:
    strb r7, [r5,#0xa]
    pop {r4-r7,pc}
    .byte 0, 0
off_811B970:    .word dword_811B974
dword_811B974:    .word 0x0
    .word 0x12, 0xFFFFFFEE
off_811B980:    .word unk_2037780
.endfunc // sub_811B914

.func
.thumb_func
sub_811B984:
    ldrb r0, [r5,#2]
    lsr r0, r0, #4
    lsl r0, r0, #4
    add r0, r0, r5
    mov pc, lr
    .byte 0, 0
.endfunc // sub_811B984

.func
.thumb_func
sub_811B990:
    add r2, r0, #0
    sub r0, r1, r0
    cmp r0, #0
    blt loc_811B9A2
    lsr r0, r0, #1
    cmp r0, #1
    ble loc_811B9B0
    add r2, r2, r0
    b loc_811B9B0
loc_811B9A2:
    add r1, r0, #0
    neg r0, r0
    lsr r0, r0, #1
    cmp r0, #1
    ble loc_811B9B0
    asr r1, r1, #1
    add r2, r2, r1
loc_811B9B0:
    add r0, r2, #0
    mov pc, lr
dword_811B9B4:    .word 0x4E07B500
    .word 0x7A294802, 0x46FE5840, 0xBD004700
    .word off_811B9C8
off_811B9C8:    .word sub_811B9D8+1
    .word sub_811BA58+1
    .word sub_811BAEC+1
    .word unk_2037780
.endfunc // sub_811B990

.func
.thumb_func
sub_811B9D8:
    push {r4,lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x12
    ldr r1, off_811BA54 // =unk_2025AE8 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #6
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811B9D8

    bl sub_8002F90 // () -> void
    mov r0, #3
    bl sub_8002E14
    mov r0, #1
    bl sub_8003060
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_811BA1C
    ldr r1, off_811BA48 // =off_811BA4C 
    ldrb r0, [r5,#3]
    add r4, r0, #0
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_800306C
    add r0, r4, #0
    mov r1, #0xb
    add r0, r0, r1
    b loc_811BA28
loc_811BA1C:
    ldr r1, off_811BA48 // =off_811BA4C 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_800306C
    mov r0, #0xb
loc_811BA28:
    bl sub_800304A
    mov r0, #4
    strb r0, [r5,#8]
    mov r4, #4
    ldrb r0, [r5,#4]
    tst r0, r0
    bne loc_811BA3A
    mov r4, #0
loc_811BA3A:
    strb r4, [r5,#9]
    mov r0, #6
    strb r0, [r5,#0xc]
    bl sub_811BA58
    pop {r4,pc}
    .balign 4, 0x00
off_811BA48:    .word off_811BA4C
off_811BA4C:    .word 0x300
    .word 0x260
off_811BA54:    .word unk_2025AE8
.func
.thumb_func
sub_811BA58:
    push {lr}
    ldr r0, off_811BA7C // =off_811BA80 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r1, [r5,#9]
.endfunc // sub_811BA58

    cmp r1, #4
    beq loc_811BA76
    bl sub_811BAF4
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
loc_811BA76:
    bl sprite_update
    pop {pc}
off_811BA7C:    .word off_811BA80
off_811BA80:    .word sub_811BA88+1
    .word sub_811BAC4+1
.func
.thumb_func
sub_811BA88:
    push {r4-r7,lr}
    mov r4, #1
    mov r0, #0x80
    bl chatbox_8045F3C
    bne loc_811BAAC
    ldrb r0, [r6,#0xc]
    cmp r0, #0xc
    beq loc_811BAAC
    ldrh r0, [r6,#0x20]
    ldrh r1, [r6,#0x24]
    add r0, r0, r1
    tst r0, r0
    beq loc_811BAAC
    ldrh r1, [r6,#0x1e]
    cmp r0, r1
    beq loc_811BAAC
    mov r4, #0x23 
loc_811BAAC:
    strb r4, [r5]
    mov r0, #6
    strb r0, [r5,#0xc]
    bl sub_8002CCE
    bl sub_8002EE8
    bl sub_811BB30
    bl sub_811BB64
    pop {r4-r7,pc}
.endfunc // sub_811BA88

.func
.thumb_func
sub_811BAC4:
    push {lr}
    mov r1, #0x23 
    ldrh r0, [r5,#0xe]
    sub r0, #0x90
    tst r0, r0
    bne loc_811BAD2
    mov r1, #1
loc_811BAD2:
    strb r1, [r5]
    bl sub_811BB50
    bl sub_811BBB8
    bl sub_811BB18
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811BAC4

    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_811BAEC:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811BAEC

.func
.thumb_func
sub_811BAF4:
    push {lr}
    ldrh r0, [r6,#0x3c]
    ldrh r1, [r6,#0x3e]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_811BBB4 // =word_2023FA0 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    bl sub_813B780
    add r1, r0, #0
    ldrb r0, [r5,#0xc]
    ldrb r1, [r1,#1]
    cmp r1, #0
    beq locret_811BB16
    add r0, #1
locret_811BB16:
    pop {pc}
.endfunc // sub_811BAF4

.func
.thumb_func
sub_811BB18:
    push {lr}
    ldrh r0, [r5,#0xe]
    sub r0, #0x90
    bl sub_813B780
    add r1, r0, #0
    ldrb r0, [r5,#0xc]
    ldrb r1, [r1,#1]
    cmp r1, #0
    beq locret_811BB2E
    add r0, #1
locret_811BB2E:
    pop {pc}
.endfunc // sub_811BB18

.func
.thumb_func
sub_811BB30:
    push {lr}
    ldrh r0, [r6,#0x3e]
    ldrh r1, [r6,#0x3c]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_811BBB4 // =word_2023FA0 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    bl sub_813B780
    ldrb r0, [r0,#3]
    sub r0, #1
    bl sprite_setPallete // (int pallete) -> void
    pop {pc}
.endfunc // sub_811BB30

.func
.thumb_func
sub_811BB50:
    push {lr}
    ldrh r0, [r5,#0xe]
    sub r0, #0x90
    bl sub_813B780
    ldrb r0, [r0,#3]
    sub r0, #1
    bl sprite_setPallete // (int pallete) -> void
    pop {pc}
.endfunc // sub_811BB50

.func
.thumb_func
sub_811BB64:
    push {r4-r7,lr}
    ldrh r0, [r6,#0x3e]
    ldrh r1, [r6,#0x3c]
    add r0, r0, r1
    lsl r0, r0, #2
    ldr r1, off_811BBB4 // =word_2023FA0 
    add r0, r0, r1
    ldrh r0, [r0]
    sub r0, #0x90
    mov r1, #0
    mov r2, #0
    bl loc_813B7A0
    add r7, r0, #0
    add r7, #8
    mov r4, #0
    mov r6, #0
    mov r0, #0
    mvn r0, r0
    mov r2, #0x80
    lsl r2, r2, #0x14
loc_811BB8E:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_811BB96
    bic r0, r2
loc_811BB96:
    lsr r2, r2, #1
    add r6, #1
    cmp r6, #5
    blt loc_811BBA4
    mov r6, #0
    add r7, #2
    add r4, #2
loc_811BBA4:
    add r7, #1
    add r4, #1
    cmp r4, #0x31 
    blt loc_811BB8E
    bl sub_8002FA6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811BBB4:    .word word_2023FA0
.endfunc // sub_811BB64

.func
.thumb_func
sub_811BBB8:
    push {r4-r7,lr}
    ldrh r0, [r5,#0xe]
    sub r0, #0x90
    mov r1, #0
    mov r2, #0
    bl loc_813B7A0
    add r7, r0, #0
    add r7, #8
    mov r4, #0
    mov r6, #0
    mov r0, #0
    mvn r0, r0
    mov r2, #0x80
    lsl r2, r2, #0x14
loc_811BBD6:
    ldrb r3, [r7]
    tst r3, r3
    beq loc_811BBDE
    bic r0, r2
loc_811BBDE:
    lsr r2, r2, #1
    add r6, #1
    cmp r6, #5
    blt loc_811BBEC
    mov r6, #0
    add r7, #2
    add r4, #2
loc_811BBEC:
    add r7, #1
    add r4, #1
    cmp r4, #0x31 
    blt loc_811BBD6
    bl sub_8002FA6
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word word_2023FA0
.endfunc // sub_811BBB8

.func
.thumb_func
sub_811BC00:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811BC20
    ldr r0, [sp]
    strh r0, [r1,#0xe]
    ldr r0, [sp,#0xc]
    strh r0, [r1,#0x18]
    ldr r0, [sp,#4]
    strb r0, [r1,#9]
loc_811BC20:
    add sp, sp, #0x10
    pop {r4-r7,pc}
.endfunc // sub_811BC00

    push {r4-r7,lr}
    sub sp, sp, #0xc
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811BC40
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811BC40:
    add sp, sp, #0xc
    pop {r4-r7,pc}
.func
.thumb_func
sub_811BC44:
    push {lr}
    ldr r0, off_811BC54 // =off_811BC58 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811BC54:    .word off_811BC58
off_811BC58:    .word sub_811BC68+1
    .word sub_811BCD8+1
    .word sub_811BD34+1
    .word sub_811BD3C+1
.endfunc // sub_811BC44

.func
.thumb_func
sub_811BC68:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, off_811BCC8 // =off_811BCCC 
    ldr r1, [r1,r0]
    mov r0, #0x29 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #3
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811BC68

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811BCB8 // =off_811BCBC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    mov r0, #8
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811BD34
    pop {pc}
off_811BCB8:    .word off_811BCBC
off_811BCBC:    .word 0x140
    .word 0x180
    .word 0x1C0
off_811BCC8:    .word off_811BCCC
off_811BCCC:    .word unk_201F294
    .word unk_201F294
    .word unk_201F294
.func
.thumb_func
sub_811BCD8:
    push {r4-r7,lr}
    push {r5}
    ldrb r7, [r5,#5]
    ldr r4, off_811BD04 // =unk_811BD30 
    ldrb r1, [r4,r7]
    ldr r0, off_811BD08 // =unk_201BF20 
    ldr r2, off_811BD0C // =off_811BD10 
    lsl r7, r7, #2
    ldr r2, [r2,r7]
    ldr r3, off_811BD1C // =dword_811BD20 
    ldr r3, [r3,r7]
    mov r4, #9
    mov r5, #1
    ldr r6, off_811BD2C // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_811BCD8

    pop {r5}
    mov r0, #8
    strb r0, [r5,#8]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811BD04:    .word unk_811BD30
off_811BD08:    .word unk_201BF20
off_811BD0C:    .word off_811BD10
off_811BD10:    .word unk_201AA00
    .word byte_201AE00
    .word unk_201B200
off_811BD1C:    .word dword_811BD20
dword_811BD20:    .word 0x6012A00, 0x6013200, 0x6013A00
off_811BD2C:    .word dword_86A5D60
unk_811BD30:    .byte 0x3A 
    .byte 0x33 
    .byte 0x34 
    .byte  0
.func
.thumb_func
sub_811BD34:
    push {lr}
    bl sprite_update
.endfunc // sub_811BD34

    pop {pc}
.func
.thumb_func
sub_811BD3C:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811BD3C

    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811BD5E
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811BD5E:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_811BD64:
    push {r6,lr}
    mov r6, r10
    ldr r6, [r6,#0x34]
    ldr r0, off_811BD78 // =off_811BD7C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {r6,pc}
    .balign 4, 0x00
off_811BD78:    .word off_811BD7C
off_811BD7C:    .word sub_811BD88+1
    .word loc_811BDCC+1
    .word sub_811BDF4+1
.endfunc // sub_811BD64

.func
.thumb_func
sub_811BD88:
    push {r4,lr}
    mov r0, #1
    strb r0, [r5]
    bl getPETNaviSelect // () -> u8
    tst r0, r0
    bne loc_811BDB8
    mov r0, #0
    mov r1, #0x17
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    bl sub_803F524
    beq loc_811BDB4
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_811BDB4
    mov r1, #0x17
    add r4, r4, r1
loc_811BDB4:
    add r0, r4, #0
    b loc_811BDBC
loc_811BDB8:
    mov r1, #0xb
    add r0, r0, r1
loc_811BDBC:
    str r0, [r5,#0xc]
    bl sub_811BE1C
    mov r0, #4
    strb r0, [r5,#8]
    bl loc_811BDCC
    pop {r4,pc}
.endfunc // sub_811BD88

loc_811BDCC:
    push {lr}
    ldr r0, off_811BDE4 // =off_811BDE8 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_811BE90
    beq locret_811BDE2
    bl sprite_update
locret_811BDE2:
    pop {pc}
off_811BDE4:    .word off_811BDE8
off_811BDE8:    .word sub_811BDEC+1
.func
.thumb_func
sub_811BDEC:
    push {lr}
    bl sub_811BE9C
    pop {pc}
.endfunc // sub_811BDEC

.func
.thumb_func
sub_811BDF4:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811BDF4

.func
.thumb_func
sub_811BDFC:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811BE16
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811BE16:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811BDFC

.func
.thumb_func
sub_811BE1C:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldr r2, off_811BEFC // =dword_811BF94 
    ldrb r0, [r2,r0]
    tst r0, r0
    beq locret_811BE8E
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #4
    bl sub_800304A
    ldrb r1, [r5,#0xc]
    cmp r1, #0x17
    bne loc_811BE60
    bl getPETNaviSelect // () -> u8
    mov r1, #0xe
    bl sub_80137B6 // (int a1, int a2) -> u8
    cmp r0, #0xff
    bne loc_811BE5E
    mov r0, #0xc
    b loc_811BE64
loc_811BE5E:
    mov r1, #0x17
loc_811BE60:
    ldr r0, off_811BF08 // =dword_811BFD8 
    ldrb r0, [r0,r1]
loc_811BE64:
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811BEF8 // =0x120 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    ldrb r1, [r5,#0xc]
    ldr r0, dword_811BF04 // =0x811BFB6 
    ldrb r0, [r0,r1]
    bl sub_8003060
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r1, off_811BF00 // =dword_811BF0C 
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    bl sub_800307C
locret_811BE8E:
    pop {pc}
.endfunc // sub_811BE1C

.func
.thumb_func
sub_811BE90:
    ldr r0, [r5,#0xc]
    ldr r2, off_811BEFC // =dword_811BF94 
    ldrb r0, [r2,r0]
    tst r0, r0
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_811BE90

.func
.thumb_func
sub_811BE9C:
    push {lr}
    sub sp, sp, #8
    bl sub_80030A8
    str r0, [sp]
    str r1, [sp,#4]
    ldrb r2, [r5,#0xc]
    lsl r2, r2, #2
    ldr r1, off_811BF00 // =dword_811BF0C 
    ldrsh r0, [r1,r2]
    ldr r3, [sp]
    add r0, r0, r3
    add r2, #2
    ldrsh r1, [r1,r2]
    ldr r3, [sp,#4]
    add r1, r1, r3
    bl sub_800307C
    mov r1, #1
    ldr r2, off_811BEFC // =dword_811BF94 
    ldrb r0, [r5,#0xc]
    ldrb r0, [r2,r0]
    tst r0, r0
    beq loc_811BECE
    mov r1, #0x23 
loc_811BECE:
    strb r1, [r5]
    add sp, sp, #8
    pop {pc}
.endfunc // sub_811BE9C

.func
.thumb_func
sub_811BED4:
    push {r4-r7,lr}
    add r4, r0, #0
    add r0, r1, #0
    bl sub_80466C4
    beq locret_811BEF4
    mov r0, #1
    tst r4, r4
    beq loc_811BEF2
    ldr r2, off_811BEFC // =dword_811BF94 
    ldrb r3, [r1,#0xc]
    ldrb r3, [r2,r3]
    tst r3, r3
    beq loc_811BEF2
    mov r0, #0x23 
loc_811BEF2:
    strb r0, [r1]
locret_811BEF4:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811BEF8:    .word 0x120
off_811BEFC:    .word dword_811BF94
off_811BF00:    .word dword_811BF0C
dword_811BF04:    .word 0x811BFB6
off_811BF08:    .word dword_811BFD8
dword_811BF0C:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_811BF94:    .word 0x4E4D4C00
    .word 0x9150904F
    .word 0x925251, 0x49, 0x4A00, 0x5300004B, 0x0
    .word 0x53535300, 0x3005353, 0x3030303, 0x3030303, 0x30003
    .word 0x3000000, 0x20000, 0x0, 0x0, 0x0
dword_811BFD8:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x6000200, 0x0
.endfunc // sub_811BED4

    push {lr}
    ldr r0, off_811C00C // =off_811C010 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811C00C:    .word off_811C010
off_811C010:    .word sub_811C01C+1
    .word sub_811C07C+1
    .word sub_811C084+1
.func
.thumb_func
sub_811C01C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x34 
    bl loc_8002774 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    add r0, #8
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811C01C

    bl sub_8002F90 // () -> void
    ldr r0, off_811C070 // =0x1F8 
    bl sub_800306C
    mov r0, #0xb
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    ldr r1, off_811C074 // =unk_811C078 
    ldrb r0, [r5,#4]
    lsl r0, r0, #1
    add r1, r1, r0
    ldrb r0, [r1]
    ldrb r1, [r1,#1]
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811C07C
    pop {pc}
off_811C070:    .word 0x1F8
off_811C074:    .word unk_811C078
unk_811C078:    .byte 0x78 
    .byte 0x28 
    .byte 0x78 
    .byte 0x78 
.func
.thumb_func
sub_811C07C:
    push {lr}
    bl sprite_update
.endfunc // sub_811C07C

    pop {pc}
.func
.thumb_func
sub_811C084:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811C084

    push {lr}
    ldr r0, off_811C09C // =off_811C0A0 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811C09C:    .word off_811C0A0
off_811C0A0:    .word sub_811C0AC+1
    .word sub_811C0F8+1
    .word sub_811C10E+1
.func
.thumb_func
sub_811C0AC:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x3d 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #4
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    .hword 0xF6E6
    .word 0x480BFF65, 0xFFD0F6E6
    .word 0xF6E6200F
    .word 0x2000FFBC, 0xFFC4F6E6, 0xF6E62001, 0x2078FE9B, 0xF6E66869
    .word 0x2004FFCB, 0x20107228, 0xF0007128, 0xBD00F803
    .word 0x3C0
.endfunc // sub_811C0AC

.func
.thumb_func
sub_811C0F8:
    push {lr}
    bl sprite_update
.endfunc // sub_811C0F8

    ldrb r0, [r5,#4]
    sub r0, #1
    strb r0, [r5,#4]
    cmp r0, #0
    bgt locret_811C10C
    mov r0, #8
    strb r0, [r5,#8]
locret_811C10C:
    pop {pc}
.func
.thumb_func
sub_811C10E:
    push {lr}
    bl loc_8002676
    bl sub_804668A
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811C10E

    push {lr}
    ldr r0, off_811C12C // =off_811C130 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811C12C:    .word off_811C130
off_811C130:    .word sub_811C13C+1
    .word sub_811C18C+1
    .word sub_811C1A4+1
.func
.thumb_func
sub_811C13C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x3e 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811C13C

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_811C188 // =0x390 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xd8
    mov r1, #7
    bl sub_800307C
    bl sub_811C18C
    pop {pc}
    .balign 4, 0x00
off_811C188:    .word 0x390
.func
.thumb_func
sub_811C18C:
    push {lr}
    push {r5}
    ldr r5, off_811C1A0 // =sReqBBS_GUI 
    bl reqBBS_81406FC
    pop {r5}
    bl sprite_update
.endfunc // sub_811C18C

    pop {pc}
    .byte 0, 0
off_811C1A0:    .word sReqBBS_GUI
.func
.thumb_func
sub_811C1A4:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811C1A4

    push {lr}
    ldr r0, off_811C1BC // =off_811C1C0 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811C1BC:    .word off_811C1C0
off_811C1C0:    .word sub_811C1CC+1
    .word sub_811C22C+1
    .word sub_811C234+1
.func
.thumb_func
sub_811C1CC:
    push {r4,lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x69 
    ldr r1, off_811C220 // =unk_20222A0 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811C1CC

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811C21C // =0xF0 
    bl sub_800306C
    mov r0, #5
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, off_811C224 // =0x78 
    ldr r1, off_811C228 // =0x28 
    ldrb r2, [r5,#3]
    bl sub_811C23C
    bl sub_811C22C
    pop {r4,pc}
    .balign 4, 0x00
off_811C21C:    .word 0xF0
off_811C220:    .word unk_20222A0
off_811C224:    .word 0x78
off_811C228:    .word 0x28
.func
.thumb_func
sub_811C22C:
    push {lr}
    bl sprite_update
.endfunc // sub_811C22C

    pop {pc}
.func
.thumb_func
sub_811C234:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811C234

.func
.thumb_func
sub_811C23C:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811C256
    add r5, r1, #0
    ldr r0, [sp]
    ldr r1, [sp,#4]
    bl sub_800307C
loc_811C256:
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811C23C

    push {lr}
    ldr r0, off_811C26C // =off_811C270 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811C26C:    .word off_811C270
off_811C270:    .word sub_811C27C+1
    .word sub_811C298+1
    .word sub_811C2A0+1
.func
.thumb_func
sub_811C27C:
    push {r4,lr}
    mov r4, #1
    strb r4, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0xb0
    mov r1, #0x40 
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811C298
.endfunc // sub_811C27C

    pop {r4,pc}
.func
.thumb_func
sub_811C298:
    push {lr}
    bl sprite_update
.endfunc // sub_811C298

    pop {pc}
.func
.thumb_func
sub_811C2A0:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811C2A0

.func
.thumb_func
sub_811C2A8:
    push {r4,r5,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_811C316
    add r5, r1, #0
    mov r1, #0x23 
    strb r1, [r5]
    ldr r0, [sp]
    lsl r4, r0, #2
    ldr r1, off_811C3A0 // =dword_811C3A4 
    ldr r0, [r1,r4]
    lsl r0, r0, #1
    bcs loc_811C2CC
    lsr r0, r0, #1
    b loc_811C2D8
loc_811C2CC:
    lsr r0, r0, #1
    // dest
    ldr r1, off_811C39C // =unk_201D2F8 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r1, off_811C39C // =unk_201D2F8 
    add r1, #4
loc_811C2D8:
    ldr r0, off_811C320 // =dword_811C324 
    ldr r0, [r0,r4]
    bl sub_8002770 // (int a1, int a2) -> void
    lsr r1, r4, #2
    ldr r0, off_811C41C // =off_811C420 
    ldrb r0, [r0,r1]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, dword_811C31C // =0x0 
    bl sub_800306C
    mov r0, #0
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    lsr r0, r4, #2
    bl sub_811C440
loc_811C316:
    add sp, sp, #4
    pop {r4,r5,pc}
    .balign 4, 0x00
dword_811C31C:    .word 0x0
off_811C320:    .word dword_811C324
dword_811C324:    .word 0x0
    .word 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72
    .word 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B
    .word 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0x81, 0x82, 0x83, 0x84
    .word 0x85, 0x86
off_811C39C:    .word unk_201D2F8
off_811C3A0:    .word dword_811C3A4
dword_811C3A4:    .word 0x0
    .word 0x88241EC4, 0x88242E94, 0x8244164, 0x882455B0, 0x8246A24
    .word 0x882489C8, 0x882492FC, 0x88249C7C, 0x824AC94, 0x824B254
    .word 0x8824D23C, 0x8824DC7C, 0x824EAF4, 0x88252558, 0x82533F4
    .word 0x8253F88, 0x88257994, 0x8825859C, 0x88258FF8, 0x8825A0D8
    .word 0x8825AD90, 0x8825B860, 0x8825BFC4, 0x825C9AC, 0x8825DFB4
    .word 0x825F2C8, 0x8260F88, 0x88262CEC, 0x88263484
off_811C41C:    .word off_811C420
off_811C420:    .word timer_2000000
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x400
.endfunc // sub_811C2A8

.func
.thumb_func
sub_811C440:
    push {lr}
    lsl r2, r0, #2
    ldr r1, off_811C45C // =dword_811C460 
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    mov r2, #0xb0
    mov r3, #0x40 
    add r0, r0, r2
    add r1, r1, r3
    bl sub_800307C
    pop {pc}
    .balign 4, 0x00
off_811C45C:    .word dword_811C460
dword_811C460:    .word 0x0
    .word 0x80000, 0x80000, 0x80000, 0x80000, 0x80000, 0x80000
    .word 0x80000, 0x80000, 0x80000, 0x80000, 0x80000, 0x80000
    .word 0x80000, 0x80000, 0x80000, 0x80000, 0x40000, 0x80000
    .word 0xC0000, 0x80000, 0x80000, 0x80000, 0x80000, 0x80000
    .word 0x80006, 0x0, 0x0
    .byte  0
    .byte  0
    .byte  6
    .byte  0
    .byte  0
    .byte  0
    .byte 0x10
    .byte  0
.endfunc // sub_811C440

.func
.thumb_func
sub_811C4D8:
    push {lr}
    bl sub_80466C4
    beq locret_811C4E4
    mov r0, #1
    strb r0, [r1]
locret_811C4E4:
    pop {pc}
    .byte  0
    .byte  0
    .byte  0
    .byte 0xB5
    .byte  3
    .byte 0x48 
    .byte 0x29 
    .byte 0x7A 
    .byte 0x40 
    .byte 0x58 
    .byte 0xFE
    .byte 0x46 
    .byte  0
    .byte 0x47 
    .byte  0
    .byte 0xBD
    .byte  0
    .byte  0
    .byte 0xFC
    .byte 0xC4
    .byte 0x11
    .byte  8
    .byte  9
    .byte 0xC5
    .byte 0x11
    .byte  8
    .byte 0x2D 
    .byte 0xC5
    .byte 0x11
    .byte  8
    .byte 0x3D 
    .byte 0xC5
    .byte 0x11
    .byte  8
    .byte 0x10
    .byte 0xB5
    .byte  1
    .byte 0x24 
    .byte 0x2C 
    .byte 0x70 
    .byte  4
    .byte 0x20
    .byte 0x28 
    .byte 0x72 
    .byte 0x80
    .byte 0x20
    .byte 0x80
    .byte 0x21 
    .byte 0xE6
    .byte 0xF6
    .byte 0xB1
    .byte 0xFD
    .byte  4
    .byte 0x20
    .byte 0x28 
    .byte 0x72 
    .byte  0
    .byte 0x20
    .byte 0xA8
    .byte 0x74 
    .byte 0xE8
    .byte 0x74 
    .byte  0
    .byte 0xF0
    .byte  2
    .byte 0xF8
    .byte 0x10
    .byte 0xBD
    .byte  0
    .byte  0
    .byte  0
    .byte 0xB5
    .byte 0x29 
    .byte 0x78 
    .byte  2
    .byte 0x20
    .byte  8
    .byte 0x42 
    .byte  1
    .byte 0xD0
    .byte  0
    .byte 0xF0
    .byte 0x8D
    .byte 0xF8
    .byte  0
    .byte 0xBD
    .byte  0
    .byte 0xB5
    .byte 0x2A 
    .byte 0xF7
    .byte 0xA4
    .byte 0xF8
    .byte  0
    .byte 0xBD
    .byte 0x20
    .byte 0xB5
    .byte 0x2A 
    .byte 0xF7
    .byte 0xBD
    .byte 0xF8
    .byte  1
    .byte 0xD0
    .byte  1
    .byte 0x20
    .byte 0x88
    .byte 0x74 
    .byte 0x20
    .byte 0xBD
    .byte  0
    .byte  0
    .byte 0x30 
    .byte 0xB5
    .byte 0x81
    .byte 0xB0
    .byte  0
    .byte 0x90
    .byte  8
    .byte 0x1C
    .byte 0x2A 
    .byte 0xF7
    .byte 0xB2
    .byte 0xF8
    .byte 0x32 
    .byte 0xD0
    .byte 0xD
    .byte 0x1C
    .byte 0x23 
    .byte 0x21 
    .byte 0x29 
    .byte 0x70 
    .byte  0
    .byte 0x98
    .byte 0x84
    .byte  0
    .byte 0x22 
    .byte 0x49 
    .byte  8
    .byte 0x59 
    .byte 0x40 
    .byte  0
    .byte  1
    .byte 0xD2
    .byte 0x40 
    .byte  8
    .byte  5
    .byte 0xE0
    .byte 0x40 
    .byte  8
    .byte 0x1E
    .byte 0x49 
    .byte 0x31 
    .byte 0xF0
    .byte 0xA2
    .byte 0xF9
    .byte 0x1C
    .byte 0x49 
    .byte  4
    .byte 0x31 
    .byte 0x15
    .byte 0x48 
    .byte  0
    .byte 0x59 
    .byte 0xE6
    .byte 0xF6
    .byte 0xF2
    .byte 0xF8
    .byte 0xA1
    .byte  8
    .byte 0x20
    .byte 0x48 
    .byte 0x40 
    .byte 0x5C 
    .byte 0xE6
    .byte 0xF6
    .byte  7
    .byte 0xFC
    .byte 0xE6
    .byte 0xF6
    .byte 0x85
    .byte 0xF8
    .byte 0xE6
    .byte 0xF6
    .byte 0xF9
    .byte 0xFC
    .byte  0
    .byte 0x20
    .byte 0xE6
    .byte 0xF6
    .byte 0xEE
    .byte 0xFB
    .byte  2
    .byte 0x20
    .byte 0xE6
    .byte 0xF6
    .byte 0x35 
    .byte 0xFC
    .byte  8
    .byte 0x48 
    .byte  0
    .byte 0x59 
    .byte 0xE6
    .byte 0xF6
    .byte 0x5D 
    .byte 0xFD
    .byte 0x18
    .byte 0x48 
    .byte 0xA1
    .byte  8
    .byte 0x40 
    .byte 0x5C 
    .byte 0xE6
    .byte 0xF6
    .byte 0x47 
    .byte 0xFD
    .byte  3
    .byte 0x20
    .byte 0xE6
    .byte 0xF6
    .byte 0x4F 
    .byte 0xFD
    .byte 0xA0
    .byte  8
    .byte  0
    .byte 0xF0
    .byte 0x2C 
    .byte 0xF8
    .byte  1
    .byte 0xB0
    .byte 0x30 
    .byte 0xBD
    .byte 0xD0
    .byte 0xC5
    .byte 0x11
    .byte  8
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .word 0x20, 0x811C5E0, 0x0
    .word 0x87, 0x88, 0x87, 0x88, 0x2018A00, 0x811C5FC, 0x0
    .word 0x83BFD0C, 0x8430534, 0x83BFD0C, 0x8430534, 0x811C618
    .word 0x811C61B, 0xE0A00, 0x100, 0x82B500, 0x5E884905
    .word 0x5E893202, 0x23802280, 0x18C91880, 0xFD22F6E6, 0xBD00
    .word 0x811C640, 0x0
dword_811C644:    .word 0xFF80, 0x80, 0x80, 0xFF80, 0x7AE8B500, 0xD11D2800
    .word 0x30017CE8, 0xDB002806, 0x74E82000, 0x78E94B19, 0x585B0089, 0x4350220A
    .word 0x8818181B, 0x88588368, 0x889883E8, 0x88D882A8, 0x891882E8, 0xFB8CF6E6
    .word 0xF80AF6E6, 0xFC7EF6E6, 0x72E82001, 0x28017AE8, 0xF000D10B, 0xD00EF859
    .word 0x42007CA8, 0x2008D002, 0xE0087228, 0x72E82002, 0xF000E005, 0xD102F84D
    .word 0x72682000, 0xF0008168, 0xF000F85F, 0xF6E5F86B, 0xBD00FFFB, 0x811C6D4
    .word 0x811C6DC, 0x811C718, 0xFFD00070, 0xC000000, 0xFFD00014, 0xC000020
    .word 0x120000, 0x900120, 0xF400, 0xFFD00016, 0xB0A0020, 0x13035C
    .word 0x200120, 0x35CF4F6, 0xFFD00015, 0xB0A0090, 0x11FCA4, 0xFFD00090
    .word 0xC000000, 0x120000C, 0xF4000090, 0xE0000, 0x20FFD0, 0xC00
    .word 0x120000A, 0xF4F60090, 0xFFCA4, 0x90FFD0, 0xFCA40B0A, 0x1200009
    .word 0xF4F60020, 0xD035C, 0xF6E6B500, 0x4A07FCA7, 0xDB094290, 0xDB074291
    .word 0x42984B05, 0x4B05DC04, 0xDC014299, 0xBD002001, 0xBD002000, 0xFFFFFFE0
    .word 0x110, 0xC0, 0x221469A8, 0x1095EA9, 0x61A81840, 0x221669E8
    .word 0x1095EA9, 0x61E81840, 0x46F7, 0x8B68B500, 0xF6E68BE9, 0xBD00FC69
    .word 0x80018, 0x410075, 0x80000005, 0x10, 0x40004, 0x14
    .word 0x8C0014, 0x1300194, 0x1080090, 0x18000C, 0x7B0008, 0x4D
    .word 0x108000, 0x140000, 0x350000, 0x30006C, 0x800110, 0xC0105
    .word 0x80018, 0x460082, 0x80000005, 0x10, 0x20004, 0x14
    .word 0x5C0012, 0x1400190, 0x810090, 0x18000C, 0x850008, 0x50050
    .word 0x108000, 0x140000, 0x190000, 0x1900044, 0x950140, 0xC0075
    .word 0x80018, 0x500087, 0x80000005, 0x10, 0x14, 0x3F001B
    .word 0x1400190, 0x750095, 0x18000C, 0x810008, 0x50055, 0x108000
    .word 0x40000, 0x140000, 0x210000, 0x1400036, 0x600103, 0xC0090
    .word 0x80018, 0x5A0080, 0x80000005, 0x10, 0x14, 0x22002B
    .word 0x1060178, 0x410050, 0x18000C, 0x7A0008, 0x50050, 0x108000
    .word 0x140000, 0x1C0000, 0x1500010, 0x900130, 0xC0083, 0x80018
    .word 0x580079, 0x80000005, 0x10, 0x14, 0xC0026, 0x1200020
    .word 0x750100, 0x18000C, 0x730008, 0x5005A, 0x108000, 0x40000
    .word 0x140002, 0x140000, 0x16000F0, 0x790130, 0xC0106, 0x80018
    .word 0x560075, 0x80000005, 0x10, 0x14, 0xE60025, 0x1500025
    .word 0x750090, 0x18000C, 0x6E0008, 0x50052, 0x108000, 0x140000
    .word 0x150000, 0x8300D0, 0x900152, 0xC0071, 0x80018, 0x500073
    .word 0x80000000, 0x10, 0x14, 0xC00032, 0x1390020, 0x750100
    .word 0x18000C, 0x760008, 0x5004D, 0x108000, 0x40000, 0x140000
    .word 0x160000, 0x17000B0, 0x1000140, 0xC0076, 0x80018, 0x460071
    .word 0x80000005, 0x10, 0x14, 0xA0001B, 0x1430190, 0x650100
    .word 0xC, 0x811C7AC, 0x0
    .word dword_811C644+0x1B0
    .word 0x811C81A, 0x0
    .word 0x811C85E, 0x811C884, 0x811C8A6, 0x0
    .word 0x811C8EA, 0x0
    .word 0x811C932, 0x0
    .word 0x811C976, 0x0
.endfunc // sub_811C4D8

    push {lr}
    ldr r0, off_811CA0C // =off_811CA10 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811CA0C:    .word off_811CA10
off_811CA10:    .word sub_811CA1C+1
    .word sub_811CA94+1
    .word sub_811CAE4+1
.func
.thumb_func
sub_811CA1C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x89
    ldr r1, off_811CA90 // =unk_201BA04 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811CA1C

    bl sub_8002F90 // () -> void
    bl sprite_makeScalable
    mov r0, #0
    mov r1, #0x80
    mov r2, #0x80
    bl sprite_setScaleParameters
    mov r0, #0
    ldrb r1, [r5,#4]
    add r0, r0, r1
    bl sub_800304A
    ldrb r0, [r5,#4]
    mov r1, #0x30 
    mul r0, r1
    ldr r1, off_811CA8C // =0x80 
    add r0, r0, r1
    bl sub_800306C
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    mov r1, #0
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811CC4E
    tst r0, r0
    beq loc_811CA84
    bl sub_811CA94
    pop {pc}
loc_811CA84:
    bl sub_804668A
    pop {pc}
    .balign 4, 0x00
off_811CA8C:    .word 0x80
off_811CA90:    .word unk_201BA04
.func
.thumb_func
sub_811CA94:
    push {lr}
loc_811CA96:
    bl sub_811CC68
    ldrh r0, [r0]
    ldr r1, off_811CAC0 // =off_811CAC4 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    bne loc_811CA96
.endfunc // sub_811CA94

    ldrb r4, [r5]
    mov r1, #2
    bic r4, r1
    ldrh r0, [r5,#0x1a]
    ldr r2, dword_811CAE0 // =0x1150 
    cmp r0, r2
    blt loc_811CAB6
    orr r4, r1
loc_811CAB6:
    strb r4, [r5]
    bl sprite_update
    pop {pc}
    .byte 0, 0
off_811CAC0:    .word off_811CAC4
off_811CAC4:    .word sub_811CAEC+1
    .word sub_811CBA0+1
    .word sub_811CBD0+1
    .word sub_811CC02+1
    .word sub_811CC0C+1
    .word sub_811CC26+1
    .word sub_811CC3A+1
dword_811CAE0:    .word 0x1150
.func
.thumb_func
sub_811CAE4:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811CAE4

.func
.thumb_func
sub_811CAEC:
    push {lr}
    sub sp, sp, #0x10
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_811CB12
    mov r0, #1
    strb r0, [r5,#9]
    bl sub_811CC68
    ldrh r1, [r0,#2]
    str r1, [r5,#0x10]
    ldrh r1, [r0,#6]
    strh r1, [r5,#0x16]
    ldrh r1, [r0,#8]
    strh r1, [r5,#0x18]
    ldrh r1, [r0,#0xa]
    strh r1, [r5,#0x1c]
    ldrh r1, [r0,#0xc]
    strh r1, [r5,#0x1e]
loc_811CB12:
    bl sub_811CC68
    ldrh r1, [r0,#4]
    ldr r2, off_811CC6C // =dword_80065D0+16 
    lsl r3, r1, #1
    ldrsh r2, [r2,r3]
    str r2, [sp]
    ldr r2, off_811CC70 // =dword_8006660 
    lsl r3, r1, #1
    ldrsh r2, [r2,r3]
    str r2, [sp,#4]
    ldrh r1, [r5,#0x16]
    ldrh r2, [r5,#0x14]
    add r1, r1, r2
    strh r1, [r5,#0x14]
    ldr r2, [sp]
    mul r2, r1
    asr r2, r2, #4
    str r2, [sp]
    ldr r2, [sp,#4]
    mul r2, r1
    asr r2, r2, #4
    str r2, [sp,#4]
    mov r0, #0
    ldrh r1, [r5,#0x1c]
    ldrh r2, [r5,#0x1a]
    sub r2, r2, r1
    cmp r2, #0
    bge loc_811CB4E
    mov r2, #0
loc_811CB4E:
    strh r2, [r5,#0x1a]
    add r1, r2, #0
    lsr r1, r1, #8
    lsr r2, r2, #8
    bl sprite_setScaleParameters
    ldrh r1, [r5,#0x16]
    ldrh r2, [r5,#0x18]
    add r2, r2, r1
    strh r2, [r5,#0x16]
    ldrh r1, [r5,#0x1c]
    ldrh r2, [r5,#0x1e]
    add r2, r2, r1
    strh r2, [r5,#0x1c]
    bl sub_80030A8
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    ldr r3, [sp]
    add r0, r0, r3
    ldr r3, [sp,#4]
    add r1, r1, r3
    asr r0, r0, #0x10
    asr r1, r1, #0x10
    bl sub_800307C
    add sp, sp, #0x10
    ldr r0, [r5,#0x10]
    sub r0, #1
    str r0, [r5,#0x10]
    bge loc_811CB9C
    mov r0, #0
    strb r0, [r5,#9]
    str r0, [r5,#0x10]
    mov r0, #0xe
    bl sub_811CC60
    mov r0, #1
    pop {pc}
loc_811CB9C:
    mov r0, #0
    pop {pc}
.endfunc // sub_811CAEC

.func
.thumb_func
sub_811CBA0:
    push {lr}
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_811CBB4
    mov r0, #1
    strb r0, [r5,#9]
    bl sub_811CC68
    ldrh r0, [r0,#2]
    str r0, [r5,#0x10]
loc_811CBB4:
    ldr r0, [r5,#0x10]
    sub r0, #1
    str r0, [r5,#0x10]
    bge loc_811CBCC
    mov r0, #0
    strb r0, [r5,#9]
    str r0, [r5,#0x10]
    mov r0, #4
    bl sub_811CC60
    mov r0, #1
    pop {pc}
loc_811CBCC:
    mov r0, #0
    pop {pc}
.endfunc // sub_811CBA0

.func
.thumb_func
sub_811CBD0:
    push {lr}
    bl sub_811CC68
    mov r2, #4
    ldrsh r1, [r0,r2]
    mov r2, #2
    ldrsh r0, [r0,r2]
    bl sub_800307C
    bl sub_811CC68
    ldrh r1, [r0,#6]
    strh r1, [r5,#0x14]
    ldrh r1, [r0,#8]
    strh r1, [r5,#0x1a]
    mov r0, #0
    lsr r1, r1, #8
    add r2, r1, #0
    bl sprite_setScaleParameters
    mov r0, #0xa
    bl sub_811CC60
    mov r0, #1
    pop {pc}
.endfunc // sub_811CBD0

.func
.thumb_func
sub_811CC02:
    push {lr}
    bl sub_811CC4E
    mov r0, #1
    pop {pc}
.endfunc // sub_811CC02

.func
.thumb_func
sub_811CC0C:
    push {lr}
    bl sub_811CC68
    ldrh r0, [r0,#2]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811CC0C

    mov r0, #4
    bl sub_811CC60
    mov r0, #1
    pop {pc}
.func
.thumb_func
sub_811CC26:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    orr r0, r1
    strb r0, [r5]
    mov r0, #2
    bl sub_811CC60
    mov r0, #1
    pop {pc}
.endfunc // sub_811CC26

.func
.thumb_func
sub_811CC3A:
    push {lr}
    ldrb r0, [r5]
    mov r1, #2
    bic r0, r1
    strb r0, [r5]
    mov r0, #2
    bl sub_811CC60
    mov r0, #1
    pop {pc}
.endfunc // sub_811CC3A

.func
.thumb_func
sub_811CC4E:
    ldrb r0, [r5,#4]
    ldr r1, off_811CC5C // =dword_811C644+892 
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    str r0, [r5,#0xc]
    mov pc, lr
    .balign 4, 0x00
off_811CC5C:    .word dword_811C644+0x37C
.endfunc // sub_811CC4E

.func
.thumb_func
sub_811CC60:
    ldr r1, [r5,#0xc]
    add r0, r0, r1
    str r0, [r5,#0xc]
    mov pc, lr
.endfunc // sub_811CC60

.func
.thumb_func
sub_811CC68:
    ldr r0, [r5,#0xc]
    mov pc, lr
off_811CC6C:    .word dword_80065D0+0x10
off_811CC70:    .word dword_8006660
.endfunc // sub_811CC68

    push {lr}
    ldr r0, off_811CC84 // =off_811CC88 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811CC84:    .word off_811CC88
off_811CC88:    .word loc_811CC94+1
    .word loc_811CD08+1
    .word sub_811D2E0+1
loc_811CC94:
    push {r4,lr}
    mov r4, #1
    strb r4, [r5]
    mov r0, #4
    strb r0, [r5,#8]
    ldr r0, dword_811CCC4 // =0xFFFFFFF8 
    mov r1, #0x80
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#0x12]
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#4]
    lsl r0, r0, #2
    ldr r1, off_811CCCC // =off_811CCD0 
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    bl loc_811CD08
    pop {r4,pc}
    .balign 4, 0x00
dword_811CCC4:    .word 0xFFFFFFF8
    .word 0xF8
off_811CCCC:    .word off_811CCD0
off_811CCD0:    .word sub_811D2F8+1
    .word sub_811D464+1
    .word sub_811D410+1
    .word sub_811D6F4+1
    .word sub_811D7D0+1
    .word sub_811D464+1
    .word sub_811D954+1
    .word sub_811D2F8+1
    .word sub_811DA00+1
    .word sub_811D530+1
    .word sub_811D894+1
    .word sub_811DA94+1
    .word sub_811DAF0+1
    .word sub_811DB7C+1
loc_811CD08:
    push {lr}
    ldr r0, off_811CD24 // =off_811CD28 
    ldrb r1, [r5,#4]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r0, [r5,#7]
    tst r0, r0
    bne locret_811CD20
    bl sprite_update
locret_811CD20:
    pop {pc}
    .balign 4, 0x00
off_811CD24:    .word off_811CD28
off_811CD28:    .word sub_811CD60+1
    .word sub_811CD94+1
    .word sub_811CF94+1
    .word sub_811CD94+1
    .word sub_811CD60+1
    .word sub_811CD94+1
    .word sub_811CFA4+1
    .word sub_811D0AC+1
    .word sub_811D124+1
    .word sub_811D1B8+1
    .word sub_811D1B8+1
    .word sub_811D2C4+1
    .word sub_811D2C8+1
    .word sub_811D1B8+1
.func
.thumb_func
sub_811CD60:
    push {lr}
    ldrb r0, [r5,#9]
    tst r0, r0
    bne loc_811CD76
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq locret_811CD92
    strb r0, [r5,#0x12]
    mov r0, #1
    strb r0, [r5,#9]
    b locret_811CD92
loc_811CD76:
    mov r2, #2
    ldrb r0, [r5,#0x12]
    mov r1, #2
    and r1, r0
    beq loc_811CD82
    mov r2, #0
loc_811CD82:
    ldrb r1, [r5]
    eor r1, r2
    strb r1, [r5]
    sub r0, #1
    strb r0, [r5,#0x12]
    bne locret_811CD92
    mov r0, #8
    strb r0, [r5,#8]
locret_811CD92:
    pop {pc}
.endfunc // sub_811CD60

.func
.thumb_func
sub_811CD94:
    push {lr}
    ldr r0, off_811CDA4 // =off_811CDA8 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811CDA4:    .word off_811CDA8
off_811CDA8:    .word sub_811CDC8+1
    .word sub_811CDF4+1
    .word sub_811CE34+1
    .word sub_811CE64+1
    .word sub_811CE88+1
    .word sub_811CEC4+1
    .word sub_811CF44+1
    .word sub_811CF64+1
.endfunc // sub_811CD94

.func
.thumb_func
sub_811CDC8:
    push {lr}
    ldrb r0, [r5,#0xc]
    cmp r0, #0xf
    bne loc_811CDE0
    push {r0}
    ldrb r0, [r5,#4]
    cmp r0, #1
    bne loc_811CDDE
    mov r0, #0x8d
    bl sound_play // () -> void
loc_811CDDE:
    pop {r0}
loc_811CDE0:
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CDF2
    mov r0, #4
    strb r0, [r5,#9]
    bl sub_8002EE8
    mov r0, #0x20 
    strb r0, [r5,#0xc]
locret_811CDF2:
    pop {pc}
.endfunc // sub_811CDC8

.func
.thumb_func
sub_811CDF4:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CE2C
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_811CE14
    mov r1, #2
    ldrb r0, [r5]
    bic r0, r1
    strb r0, [r5]
    ldrb r0, [r5,#5]
    add r0, #5
    strb r0, [r5,#5]
    b loc_811CE18
loc_811CE14:
    bl sub_811D5F8
loc_811CE18:
    mov r0, #0xf
    strb r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#9]
    ldr r0, off_811CE30 // =0x1CD 
    bl sound_play // () -> void
    mov r0, #0xf7
    bl sound_play // () -> void
locret_811CE2C:
    pop {pc}
    .byte 0, 0
off_811CE30:    .word 0x1CD
.endfunc // sub_811CDF4

.func
.thumb_func
sub_811CE34:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CE62
    mov r0, #0x10
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#4]
    cmp r0, #1
    beq loc_811CE52
    mov r0, #0xc
    strb r0, [r5,#9]
    bl sub_811D6F4
    b locret_811CE62
loc_811CE52:
    mov r0, #0x1c
    strb r0, [r5,#9]
    bl sub_811DBD0
    mov r0, #0x10
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0xe]
locret_811CE62:
    pop {pc}
.endfunc // sub_811CE34

.func
.thumb_func
sub_811CE64:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CE80
    mov r0, #0x10
    strb r0, [r5,#9]
    bl sub_8002EE8
    mov r0, #0x14
    strb r0, [r5,#0xc]
    ldr r0, off_811CE84 // =0x100 
    bl sound_play // () -> void
locret_811CE80:
    pop {pc}
    .balign 4, 0x00
off_811CE84:    .word 0x100
.endfunc // sub_811CE64

.func
.thumb_func
sub_811CE88:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CEB4
    mov r0, #0x14
    strb r0, [r5,#9]
    mov r0, #0xa
    strb r0, [r5,#0xc]
    ldrb r0, [r5,#7]
    tst r0, r0
    bne locret_811CEB4
    ldr r1, off_811CEB8 // =dword_811CEBC 
    ldrb r0, [r5,#5]
    sub r0, #5
    ldrb r0, [r1,r0]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
locret_811CEB4:
    pop {pc}
    .balign 4, 0x00
off_811CEB8:    .word dword_811CEBC
dword_811CEBC:    .word 0x15131711, 0x19
.endfunc // sub_811CE88

.func
.thumb_func
sub_811CEC4:
    push {r4,lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CF1A
    ldrb r0, [r5,#7]
    tst r0, r0
    bne loc_811CEE8
    ldr r1, off_811CF1C // =dword_811CF3C 
    ldrb r0, [r5,#5]
    sub r0, #5
    ldrb r0, [r1,r0]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
loc_811CEE8:
    ldrb r0, [r5,#4]
    cmp r0, #5
    bne loc_811CF12
    mov r0, #0x10
    strb r0, [r5,#0xb]
    ldr r1, off_811CF20 // =dword_811CF28 
    ldrb r0, [r5,#5]
    sub r0, #5
    lsl r4, r0, #1
    ldrh r0, [r1,r4]
    bl sound_play // () -> void
    ldr r1, dword_811CF24 // =dword_811CF28 
    ldrh r0, [r1,r4]
    mov r1, #0xff
    lsl r2, r1, #8
    orr r1, r2
    cmp r0, r1
    beq loc_811CF12
    bl sound_play // () -> void
loc_811CF12:
    mov r0, #0x28 
    strb r0, [r5,#0xc]
    mov r0, #0x18
    strb r0, [r5,#9]
locret_811CF1A:
    pop {r4,pc}
off_811CF1C:    .word dword_811CF3C
off_811CF20:    .word dword_811CF28
dword_811CF24:    .word 0x811CF32
dword_811CF28:    .word 0xB700F4, 0x1BF00B8, 0xB800FF, 0xFFFFFFFF, 0xFFFF01C7
dword_811CF3C:    .word 0x16141812, 0x19
.endfunc // sub_811CEC4

.func
.thumb_func
sub_811CF44:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CF52
    mov r0, #8
    strb r0, [r5,#8]
locret_811CF52:
    pop {pc}
    .word 0x811CF58, 0xB700F4, 0x1BF00B8, 0xFF
.endfunc // sub_811CF44

.func
.thumb_func
sub_811CF64:
    push {lr}
    ldrb r0, [r5,#0xe]
    add r0, #2
    cmp r0, #0x1f
    blt loc_811CF70
    mov r0, #0x1f
loc_811CF70:
    strb r0, [r5,#0xe]
    ldrb r0, [r5,#0xc]
    sub r0, #1
    bgt loc_811CF7E
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
loc_811CF7E:
    strb r0, [r5,#0xc]
    ldrb r3, [r5,#0xe]
    add r0, r3, #0
    lsl r1, r3, #5
    orr r0, r1
    lsl r1, r3, #0xa
    orr r0, r1
    bl sub_8002ED0
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811CF64

.func
.thumb_func
sub_811CF94:
    push {lr}
    ldrb r0, [r5,#0x12]
    sub r0, #1
    strb r0, [r5,#0x12]
    bne locret_811CFA2
    mov r0, #8
    strb r0, [r5,#8]
locret_811CFA2:
    pop {pc}
.endfunc // sub_811CF94

.func
.thumb_func
sub_811CFA4:
    push {lr}
    ldr r0, off_811CFB4 // =off_811CFB8 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811CFB4:    .word off_811CFB8
off_811CFB8:    .word sub_811CFD0+1
    .word sub_811CFEC+1
    .word sub_811D020+1
    .word sub_811D058+1
    .word sub_811D080+1
    .word sub_811D0A8+1
.endfunc // sub_811CFA4

.func
.thumb_func
sub_811CFD0:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811CFE2
    ldr r0, dword_811CFE4 // =0x1E 
    strh r0, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#9]
locret_811CFE2:
    pop {pc}
dword_811CFE4:    .word 0x1E
    .word 0x40
.endfunc // sub_811CFD0

.func
.thumb_func
sub_811CFEC:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    ble loc_811CFF8
    strb r0, [r5,#0xc]
    bne locret_811D014
loc_811CFF8:
    ldr r0, dword_811D018 // =0xFFFF 
    bl sub_8002ED0
    mov r0, #0x1f
    strh r0, [r5,#0xe]
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #3
    strh r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#9]
    ldr r0, off_811D01C // =0x194 
    bl sound_play // () -> void
locret_811D014:
    pop {pc}
    .balign 4, 0x00
dword_811D018:    .word 0xFFFF
off_811D01C:    .word 0x194
.endfunc // sub_811CFEC

.func
.thumb_func
sub_811D020:
    push {lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D056
    ldrh r0, [r5,#0xe]
    sub r0, #1
    strh r0, [r5,#0xe]
    cmp r0, #0
    bne loc_811D03C
    mov r0, #0xc
    strb r0, [r5,#9]
    mov r0, #0x3c 
    b loc_811D03E
loc_811D03C:
    mov r0, #3
loc_811D03E:
    strh r0, [r5,#0xc]
    ldrb r3, [r5,#0xe]
    add r0, r3, #0
    lsl r1, r3, #5
    orr r0, r1
    lsl r1, r3, #0xa
    orr r0, r1
    mov r1, #1
    lsl r1, r1, #0xf
    orr r0, r1
    bl sub_8002ED0
locret_811D056:
    pop {pc}
.endfunc // sub_811D020

.func
.thumb_func
sub_811D058:
    push {lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D07C
    mov r0, #4
    ldrb r1, [r5,#0x10]
    add r0, r0, r1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #0xf
    strh r0, [r5,#0xc]
    mov r0, #0x10
    strb r0, [r5,#9]
locret_811D07C:
    pop {pc}
    .byte 0, 0
.endfunc // sub_811D058

.func
.thumb_func
sub_811D080:
    push {lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D0A4
    mov r0, #5
    ldrb r1, [r5,#0x10]
    add r0, r0, r1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #0x14
    strb r0, [r5,#9]
    mov r0, #0x32 
    strh r0, [r5,#0xc]
locret_811D0A4:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811D080

.func
.thumb_func
sub_811D0A8:
    push {lr}
    pop {pc}
.endfunc // sub_811D0A8

.func
.thumb_func
sub_811D0AC:
    push {lr}
    ldr r0, off_811D0BC // =off_811D0C0 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811D0BC:    .word off_811D0C0
off_811D0C0:    .word sub_811D0CC+1
    .word sub_811D0EC+1
    .word sub_811D120+1
.endfunc // sub_811D0AC

.func
.thumb_func
sub_811D0CC:
    push {lr}
    mov r0, #0x80
    mov r1, #0x80
    bl sub_800307C
    ldr r0, dword_811D0E8 // =0x10 
    strh r0, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0x76 
    bl sound_play // () -> void
    pop {pc}
    .balign 4, 0x00
dword_811D0E8:    .word 0x10
.endfunc // sub_811D0CC

.func
.thumb_func
sub_811D0EC:
    push {lr}
    ldrb r0, [r5,#0xc]
    sub r0, #1
    strb r0, [r5,#0xc]
    bne locret_811D11E
    mov r0, #0x8a
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #2
    bl sub_8002E14
    mov r0, #3
    bl sub_8003060
    mov r0, #0x1e
    strb r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#9]
locret_811D11E:
    pop {pc}
.endfunc // sub_811D0EC

.func
.thumb_func
sub_811D120:
    push {lr}
    pop {pc}
.endfunc // sub_811D120

.func
.thumb_func
sub_811D124:
    push {lr}
    ldr r0, off_811D134 // =off_811D138 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811D134:    .word off_811D138
off_811D138:    .word sub_811D148+1
    .word sub_811D15C+1
    .word sub_811D19C+1
    .word sub_811D1B4+1
.endfunc // sub_811D124

.func
.thumb_func
sub_811D148:
    push {lr}
    ldr r0, dword_811D158 // =0xCF 
    strh r0, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    pop {pc}
dword_811D158:    .word 0xCF
.endfunc // sub_811D148

.func
.thumb_func
sub_811D15C:
    push {r4,lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D18E
    ldrb r4, [r5,#0xa]
    ldr r1, off_811D190 // =unk_811D198 
    ldrh r0, [r1,r4]
    add r4, #2
    ldrh r1, [r1,r4]
    strh r1, [r5,#0xc]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    ldrb r0, [r5,#5]
    cmp r0, #0
    bne loc_811D18A
    ldr r0, dword_811D194 // =0x1C6 
    bl sound_play // () -> void
loc_811D18A:
    mov r0, #8
    strb r0, [r5,#9]
locret_811D18E:
    pop {r4,pc}
off_811D190:    .word unk_811D198
dword_811D194:    .word 0x1C6
unk_811D198:    .byte 0xC
    .byte  0
    .byte  7
    .byte  0
.endfunc // sub_811D15C

.func
.thumb_func
sub_811D19C:
    push {lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D1B2
    mov r0, #1
    strh r0, [r5,#0xc]
    mov r1, #4
    mov r1, #0xc
    strb r1, [r5,#9]
    strb r0, [r5,#0xa]
locret_811D1B2:
    pop {pc}
.endfunc // sub_811D19C

.func
.thumb_func
sub_811D1B4:
    push {lr}
    pop {pc}
.endfunc // sub_811D1B4

.func
.thumb_func
sub_811D1B8:
    push {lr}
    ldr r0, off_811D1C8 // =off_811D1CC 
    ldrb r1, [r5,#9]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811D1C8:    .word off_811D1CC
off_811D1CC:    .word sub_811D1DC+1
    .word sub_811D20C+1
    .word sub_811D248+1
    .word sub_811D2C0+1
.endfunc // sub_811D1B8

.func
.thumb_func
sub_811D1DC:
    push {lr}
    ldr r0, off_811D1F0 // =dword_811D1F4 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    strh r0, [r5,#0xc]
    mov r0, #4
    strb r0, [r5,#9]
    pop {pc}
    .byte 0, 0
off_811D1F0:    .word dword_811D1F4
dword_811D1F4:    .word 0x5, 0xA, 0xF, 0x14, 0x19, 0xA
.endfunc // sub_811D1DC

.func
.thumb_func
sub_811D20C:
    push {lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D238
    mov r0, #0xa
    strh r0, [r5,#0xc]
    ldr r1, off_811D23C // =dword_811D240 
    ldrb r0, [r5,#5]
    ldrb r0, [r1,r0]
    cmp r0, #0xff
    beq loc_811D234
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r1, #0x23 
    strb r1, [r5]
loc_811D234:
    mov r0, #8
    strb r0, [r5,#9]
locret_811D238:
    pop {pc}
    .balign 4, 0x00
off_811D23C:    .word dword_811D240
dword_811D240:    .word 0x15130011, 0xFF19
.endfunc // sub_811D20C

.func
.thumb_func
sub_811D248:
    push {r4,lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    strh r0, [r5,#0xc]
    bne locret_811D296
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, off_811D298 // =dword_811D2B8 
    ldrb r0, [r5,#5]
    ldrb r0, [r1,r0]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #0xc
    strb r0, [r5,#9]
    ldrb r0, [r5,#4]
    cmp r0, #9
    bne locret_811D296
    ldrb r0, [r5,#5]
    cmp r0, #5
    beq locret_811D296
    ldr r1, off_811D29C // =dword_811D2A4 
    ldrb r0, [r5,#5]
    lsl r4, r0, #1
    ldrh r0, [r1,r4]
    bl sound_play // () -> void
    ldr r1, dword_811D2A0 // =dword_811D2A4 
    ldrh r0, [r1,r4]
    mov r1, #0xff
    lsl r2, r1, #8
    orr r1, r2
    cmp r0, r1
    beq locret_811D296
    bl sound_play // () -> void
locret_811D296:
    pop {r4,pc}
off_811D298:    .word dword_811D2B8
off_811D29C:    .word dword_811D2A4
dword_811D2A0:    .word 0x811D2AE
dword_811D2A4:    .word 0xB700F4, 0x1BF00B8, 0xB800FF, 0xFFFFFFFF, 0xFFFF01C7
dword_811D2B8:    .word 0x16140B12, 0x1319
.endfunc // sub_811D248

.func
.thumb_func
sub_811D2C0:
    push {lr}
    pop {pc}
.endfunc // sub_811D2C0

.func
.thumb_func
sub_811D2C4:
    push {lr}
    pop {pc}
.endfunc // sub_811D2C4

.func
.thumb_func
sub_811D2C8:
    push {lr}
    ldrh r0, [r5,#0xc]
    tst r0, r0
    bne loc_811D2D6
    mov r1, #0x23 
    strb r1, [r5]
    b loc_811D2DA
loc_811D2D6:
    sub r0, #1
    strh r0, [r5,#0xc]
loc_811D2DA:
    bl sprite_update
.endfunc // sub_811D2C8

    pop {pc}
.func
.thumb_func
sub_811D2E0:
    push {lr}
    bl sub_804668A
    pop {pc}
.endfunc // sub_811D2E0

    push {r5,lr}
    bl sub_80466C4
    beq locret_811D2F6
    add r5, r1, #0
    bl sub_804668A
locret_811D2F6:
    pop {r5,pc}
.func
.thumb_func
sub_811D2F8:
    push {r4-r7,lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldrb r0, [r5,#5]
    lsl r4, r0, #2
    ldrb r0, [r5,#6]
    lsl r6, r0, #2
    ldr r1, off_811D3C4 // =off_811D3C8 
    ldr r0, [r1,r4]
    lsl r0, r0, #1
    bcs loc_811D312
    lsr r0, r0, #1
    b loc_811D320
loc_811D312:
    lsr r0, r0, #1
    ldr r1, off_811D3B8 // =off_811D3BC 
    ldr r7, [r1,r6]
    // dest
    add r1, r7, #0
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    add r1, r7, #4
loc_811D320:
    ldr r0, off_811D398 // =dword_811D39C 
    ldr r0, [r0,r4]
    bl sub_8002770 // (int a1, int a2) -> void
    lsr r1, r6, #2
    ldr r0, off_811D3E4 // =dword_811D404 
    ldrb r0, [r0,r1]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811D2F8

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811D38C // =dword_811D390 
    ldr r0, [r0,r6]
    bl sub_800306C
    lsr r1, r6, #2
    ldr r0, dword_811D3E8 // =dword_811D404 
    ldrb r0, [r0,r1]
    bl sub_800304A
    mov r0, #3
    bl sub_8003060
    ldr r1, off_811D3EC // =dword_811D3FC 
    ldrh r0, [r1,r6]
    add r2, r6, #2
    ldrh r1, [r1,r2]
    bl sub_811DC00
    strh r0, [r5,#0x1a]
    strh r1, [r5,#0x1e]
    bl sub_800307C
    ldr r1, off_811D3F0 // =off_811D3F4 
    ldr r0, [r1,r6]
    strh r0, [r5,#0x14]
    mov r0, #0
    strh r0, [r5,#0x16]
    mov r0, #0
    tst r6, r6
    beq loc_811D384
    mov r0, #1
loc_811D384:
    bl sub_8002F5C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811D38C:    .word dword_811D390
dword_811D390:    .word 0x0
    .word 0x80
off_811D398:    .word dword_811D39C
dword_811D39C:    .word 0x8A, 0x44, 0x45, 0x46, 0x47, 0x48, 0x19
off_811D3B8:    .word off_811D3BC
off_811D3BC:    .word unk_201AA00
    .word unk_201BA00
off_811D3C4:    .word off_811D3C8
off_811D3C8:    .word unk_81D8000
    .word 0x8296F40, 0x829D818, 0x82A5AF0, 0x82B0690, 0x82BA7BC
    .word 0x849B424
off_811D3E4:    .word dword_811D404
dword_811D3E8:    .word 0x811D40B
off_811D3EC:    .word dword_811D3FC
off_811D3F0:    .word off_811D3F4
off_811D3F4:    .word 0x700
    .word 0xFFFFF900
dword_811D3FC:    .word 0x80FFF8, 0x8000F8
dword_811D404:    .word 0x0, 0x0
    .word 0x1
.func
.thumb_func
sub_811D410:
    push {r4-r7,lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r0, dword_811D460 // =0x8E 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811D410

    bl sub_8002F90 // () -> void
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811D45C // =0x180 
    bl sub_800306C
    mov r0, #3
    bl sub_800304A
    mov r0, #5
    bl sub_8003060
    mov r0, #0x78 
    mov r1, #0x70 
    bl sub_811DC00
    bl sub_800307C
    mov r0, #0x15
    strb r0, [r5,#0x12]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811D45C:    .word 0x180
dword_811D460:    .word 0x8E
.func
.thumb_func
sub_811D464:
    push {r4-r7,lr}
    mov r1, #0x23 
    strb r1, [r5]
    ldr r1, off_811D4E4 // =dword_811D4E8 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_8002770 // (int a1, int a2) -> void
    ldr r1, off_811D514 // =dword_811D51C 
    ldrb r0, [r5,#5]
    ldrb r0, [r1,r0]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811D464

    bl sub_8002F90 // () -> void
    ldr r1, dword_811D518 // =0x811D526 
    ldrb r0, [r5,#5]
    ldrb r0, [r1,r0]
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #2
    bl sub_8002E14
    ldr r0, off_811D4DC // =0x100 
    ldrb r1, [r5,#4]
    cmp r1, #1
    beq loc_811D4A2
    ldr r0, off_811D4E0 // =0x200 
loc_811D4A2:
    bl sub_800306C
    mov r0, #2
    ldrb r1, [r5,#4]
    cmp r1, #1
    beq loc_811D4B0
    mov r0, #6
loc_811D4B0:
    bl sub_800304A
    mov r0, #4
    bl sub_8003060
    mov r0, #0x78 
    mov r1, #0x80
    bl sub_811DC00
    bl sub_800307C
    mov r0, #0x10
    ldrb r1, [r5,#4]
    cmp r1, #1
    beq loc_811D4D0
    mov r0, #0x11
loc_811D4D0:
    strb r0, [r5,#0xc]
    ldr r0, dword_811D510 // =0x7FFF 
    bl sub_8002ED0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811D4DC:    .word 0x100
off_811D4E0:    .word 0x200
off_811D4E4:    .word dword_811D4E8
dword_811D4E8:    .word 0x8A, 0x8A, 0x8A, 0x8A, 0x8A, 0x59, 0x5A, 0x5B, 0x5C
    .word 0x5D
dword_811D510:    .word 0x7FFF
off_811D514:    .word dword_811D51C
dword_811D518:    .word 0x811D526
dword_811D51C:    .word 0x0, 0x0
    .word 0x11050000, 0x150F0B, 0x0
.func
.thumb_func
sub_811D530:
    push {r4-r7,lr}
    mov r1, #1
    strb r1, [r5]
    ldr r1, off_811D5AC // =dword_811D5B0 
    ldrb r0, [r5,#5]
    lsl r0, r0, #2
    ldr r0, [r1,r0]
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811D530

    bl sub_8002F90 // () -> void
    ldr r1, dword_811D5CC // =dword_811D5E8 
    ldrb r0, [r5,#5]
    ldrb r0, [r1,r0]
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #3
    bl sub_8002E14
    ldr r0, off_811D594 // =off_811D598 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    ldr r0, off_811D5C4 // =dword_811D5E8 
    ldrb r1, [r5,#5]
    ldrb r0, [r0,r1]
    bl sub_800304A
    ldrb r1, [r5,#5]
    ldr r0, dword_811D5C8 // =dword_811D5E8 
    ldrb r0, [r0,r1]
    bl sub_8003060
    ldr r1, off_811D5D0 // =dword_811D5D4 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldrh r0, [r2,r1]
    add r1, #2
    ldrh r1, [r2,r1]
    bl sub_800307C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811D594:    .word off_811D598
off_811D598:    .word 0x80
    .word 0x100
    .word 0x180
    .word 0x200
    .word 0x280
off_811D5AC:    .word dword_811D5B0
dword_811D5B0:    .word 0x59, 0x5A, 0x5B, 0x5C, 0x5D
off_811D5C4:    .word dword_811D5E8
dword_811D5C8:    .word 0x811D5ED
dword_811D5CC:    .word 0x811D5F2
off_811D5D0:    .word dword_811D5D4
dword_811D5D4:    .word 0x5900A8, 0x8C0038, 0x55006D, 0x8F00B7, 0x610048
dword_811D5E8:    .word 0x8060402, 0x303030A, 0x203, 0x0
.func
.thumb_func
sub_811D5F8:
    push {r7,lr}
    // src
    ldr r0, off_811D62C // =dword_82FCA14 
    // dest
    ldr r1, off_811D630 // =unk_201AA00 
    add r7, r1, #0
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    add r1, r7, #4
    ldr r0, dword_811D628 // =0x8F 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811D5F8

    bl sub_8002F90 // () -> void
    mov r0, #0x80
    mov r1, #0x80
    bl sub_811DC00
    bl sub_800307C
    pop {r7,pc}
dword_811D628:    .word 0x8F
off_811D62C:    .word dword_82FCA14
off_811D630:    .word unk_201AA00
.func
.thumb_func
sub_811D634:
    push {r5,lr}
    sub sp, sp, #8
    str r0, [sp]
    str r1, [sp,#4]
    add r0, r2, #0
    bl sub_80466C4
    beq loc_811D64E
    add r5, r1, #0
    bl sub_811D6CC
    bl sub_811D6E8
loc_811D64E:
    add sp, sp, #8
    pop {r5,pc}
    .balign 4, 0x00
    .word dword_811D658
dword_811D658:    .word 0x0
    .word 0xFF80, 0x80, 0x80, 0xFF80
.endfunc // sub_811D634

.func
.thumb_func
sub_811D66C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    add r6, r1, #0
    bl sub_80466C4
    beq loc_811D692
    add r5, r1, #0
    ldr r0, [sp]
    mov r1, #0x32 
    lsl r1, r1, #1
    mul r0, r1
    svc 6
    tst r6, r6
    beq loc_811D690
    ldr r1, dword_811D698 // =0xFFFFFFFF 
    mul r0, r1
loc_811D690:
    strh r0, [r5,#0x14]
loc_811D692:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811D698:    .word 0xFFFFFFFF
.endfunc // sub_811D66C

.func
.thumb_func
sub_811D69C:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    add r6, r1, #0
    bl sub_80466C4
    beq loc_811D6C2
    add r5, r1, #0
    ldr r0, [sp]
    mov r1, #0x32 
    lsl r1, r1, #1
    mul r0, r1
    svc 6
    tst r6, r6
    beq loc_811D6C0
    ldr r1, dword_811D6C8 // =0xFFFFFFFF 
    mul r0, r1
loc_811D6C0:
    strh r0, [r5,#0x14]
loc_811D6C2:
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811D6C8:    .word 0xFFFFFFFF
.endfunc // sub_811D69C

.func
.thumb_func
sub_811D6CC:
    ldr r0, [r5,#0x18]
    mov r2, #0x14
    ldrsh r1, [r5,r2]
    lsl r1, r1, #8
    add r0, r0, r1
    str r0, [r5,#0x18]
    ldr r0, [r5,#0x1c]
    mov r2, #0x16
    ldrsh r1, [r5,r2]
    lsl r1, r1, #8
    add r0, r0, r1
    str r0, [r5,#0x1c]
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_811D6CC

.func
.thumb_func
sub_811D6E8:
    push {lr}
    ldrh r0, [r5,#0x1a]
    ldrh r1, [r5,#0x1e]
    bl sub_800307C
    pop {pc}
.endfunc // sub_811D6E8

.func
.thumb_func
sub_811D6F4:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrb r0, [r5,#5]
    ldr r2, off_811D774 // =dword_811D7B0 
    ldrb r0, [r2,r0]
    tst r0, r0
    bne loc_811D70A
    mov r0, #1
    strb r0, [r5,#7]
    b locret_811D76C
loc_811D70A:
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #4
    bl sub_800304A
    ldrb r1, [r5,#5]
    ldr r0, off_811D780 // =dword_811D7C4 
    ldrb r0, [r0,r1]
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811D770 // =0x1A0 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    ldrb r1, [r5,#5]
    ldr r0, dword_811D77C // =dword_811D7B0 
    ldrb r0, [r0,r1]
    bl sub_8003060
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r1, off_811D778 // =dword_811D788 
    ldrsh r0, [r1,r2]
    mov r3, #0x78 
    add r0, r0, r3
    add r2, #2
    ldrsh r1, [r1,r2]
    mov r3, #0x80
    add r1, r1, r3
    bl sub_811DC00
    bl sub_800307C
    mov r0, #0x10
    strb r0, [r5,#0xc]
    ldr r0, dword_811D784 // =0x7FFF 
    bl sub_8002ED0
locret_811D76C:
    pop {pc}
    .byte 0, 0
off_811D770:    .word 0x1A0
off_811D774:    .word dword_811D7B0
off_811D778:    .word dword_811D788
dword_811D77C:    .word 0x811D7BA
off_811D780:    .word dword_811D7C4
dword_811D784:    .word 0x7FFF
dword_811D788:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
dword_811D7B0:    .word 0x52519150, 0x53535392, 0x5055353, 0x50505, 0x0
dword_811D7C4:    .word 0x0
    .word 0x6040200, 0xA08
.endfunc // sub_811D6F4

.func
.thumb_func
sub_811D7D0:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrb r0, [r5,#5]
    ldr r2, off_811D85C // =dword_811D884 
    ldrb r0, [r2,r0]
    tst r0, r0
    bne loc_811D7E6
    mov r0, #1
    strb r0, [r5,#7]
    b locret_811D854
loc_811D7E6:
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    mov r0, #5
    bl sub_800304A
    ldrb r1, [r5,#5]
    ldr r0, dword_811D868 // =0x811D88E 
    ldrb r0, [r0,r1]
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811D858 // =0x1E0 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    ldrb r1, [r5,#5]
    ldr r0, off_811D864 // =off_811D888+1 
    ldrb r0, [r0,r1]
    bl sub_8003060
    ldrb r2, [r5,#6]
    lsl r2, r2, #2
    ldr r1, off_811D860 // =dword_811D87C 
    ldrh r0, [r1,r2]
    add r2, #2
    ldrh r1, [r1,r2]
    bl sub_811DC00
    strh r0, [r5,#0x1a]
    strh r1, [r5,#0x1e]
    bl sub_800307C
    ldrb r2, [r5,#6]
    lsl r2, r2, #2
    ldr r1, off_811D870 // =off_811D874 
    ldr r0, [r1,r2]
    strh r0, [r5,#0x14]
    mov r0, #0
    strh r0, [r5,#0x16]
    mov r0, #0
    tst r6, r6
    beq loc_811D850
    mov r0, #1
loc_811D850:
    bl sub_8002F5C
locret_811D854:
    pop {pc}
    .balign 4, 0x00
off_811D858:    .word 0x1E0
off_811D85C:    .word dword_811D884
off_811D860:    .word dword_811D87C
off_811D864:    .word off_811D888+1
dword_811D868:    .word 0x811D88E
    .word 0x7FFF
off_811D870:    .word off_811D874
off_811D874:    .word 0x700
    .word 0xFFFFF900
dword_811D87C:    .word 0x80FFF8, 0x8000F8
dword_811D884:    .word 0x4B00004A
off_811D888:    .word unk_2020200
    .word 0x202, 0x0
.endfunc // sub_811D7D0

.func
.thumb_func
sub_811D894:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldrb r0, [r5,#5]
    ldr r2, off_811D918 // =unk_811D940 
    ldrb r0, [r2,r0]
    tst r0, r0
    bne loc_811D8AA
    mov r0, #1
    strb r0, [r5,#7]
    b locret_811D8FC
loc_811D8AA:
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    ldr r0, dword_811D91C // =0x811D945 
    ldrb r1, [r5,#5]
    ldrb r0, [r0,r1]
    bl sub_800304A
    ldrb r1, [r5,#5]
    ldr r0, dword_811D924 // =0x811D94F 
    ldrb r0, [r0,r1]
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811D900 // =off_811D904 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    mov r0, #3
    bl sub_8002E14
    ldrb r1, [r5,#5]
    ldr r0, dword_811D920 // =0x811D94A 
    ldrb r0, [r0,r1]
    bl sub_8003060
    ldr r1, off_811D928 // =unk_811D92C 
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldrh r0, [r2,r1]
    add r1, #2
    ldrh r1, [r2,r1]
    bl sub_800307C
locret_811D8FC:
    pop {pc}
    .byte 0, 0
off_811D900:    .word off_811D904
off_811D904:    .word 0x300
    .word 0x320
    .word 0x340
    .word 0x360
    .word 0x380
off_811D918:    .word unk_811D940
dword_811D91C:    .word 0x811D945
dword_811D920:    .word 0x811D94A
dword_811D924:    .word 0x811D94F
off_811D928:    .word unk_811D92C
unk_811D92C:    .byte 0xA8
    .byte  0
    .byte 0x59 
    .byte  0
    .byte 0x38 
    .byte  0
    .byte 0x8C
    .byte  0
    .byte 0x6D 
    .byte  0
    .byte 0x55 
    .byte  0
    .byte 0xB7
    .byte  0
    .byte 0x8F
    .byte  0
    .byte 0x48 
    .byte  0
    .byte 0x61 
    .byte  0
unk_811D940:    .byte 0x53 
    .byte 0x53 
    .byte 0x53 
    .byte 0x53 
    .byte 0x53 
    .byte  3
    .byte  5
    .byte  7
    .byte  9
    .byte 0xB
    .byte  3
    .byte  3
    .byte  3
    .byte  3
    .byte  2
    .byte  2
    .byte  4
    .byte  6
    .byte  8
    .byte 0xA
.endfunc // sub_811D894

.func
.thumb_func
sub_811D954:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldr r1, off_811D9E8 // =unk_201AA00 
    add r1, #4
    ldr r0, dword_811D9D0 // =0x93 
    bl sub_8002770 // (int a1, int a2) -> void
    ldrb r1, [r5,#5]
    ldr r0, off_811D9DC // =dword_811D9F4 
    ldrb r0, [r0,r1]
    strb r0, [r5,#0x10]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811D954

    bl sub_8002F90 // () -> void
    ldr r0, off_811D9E4 // =dword_811D9F8 
    ldrb r1, [r5,#5]
    ldrb r0, [r0,r1]
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811D9B8 // =off_811D9BC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    ldrb r1, [r5,#5]
    ldr r0, off_811D9D8 // =dword_811D9F0 
    ldrb r0, [r0,r1]
    bl sub_8003060
    ldr r1, off_811D9D4 // =word_811D9EC 
    ldrh r0, [r1]
    strh r0, [r5,#0x1a]
    ldrh r1, [r1,#0x2] // (word_811D9EE - 0x811d9ec)
    strh r1, [r5,#0x1e]
    bl sub_800307C
    mov r0, #0x10
    strb r0, [r5,#0xc]
    pop {pc}
off_811D9B8:    .word off_811D9BC
off_811D9BC:    .word 0x80
    .word 0x100
    .word 0x1A0
    .word 0x220
    .word 0x2A0
dword_811D9D0:    .word 0x93
off_811D9D4:    .word word_811D9EC
off_811D9D8:    .word dword_811D9F0
off_811D9DC:    .word dword_811D9F4
    .word 0x7FFF
off_811D9E4:    .word dword_811D9F8
off_811D9E8:    .word unk_201AA00
word_811D9EC:    .hword 0x80
word_811D9EE:    .hword 0x60
dword_811D9F0:    .word 0x2020202
dword_811D9F4:    .word 0x1E140A00
dword_811D9F8:    .word 0x4030201, 0x5
.func
.thumb_func
sub_811DA00:
    push {lr}
    mov r1, #1
    strb r1, [r5]
    ldr r0, off_811DA70 // =dword_811DA74 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    tst r0, r0
    beq locret_811DA60
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #0x23 
    strb r1, [r5]
    ldrb r1, [r5,#5]
    ldr r0, off_811DA88 // =dword_811DA90 
    ldrb r0, [r0,r1]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    ldr r0, off_811DA64 // =dword_811DA68 
    ldrb r1, [r5,#5]
    ldrb r0, [r0,r1]
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811DA64 // =dword_811DA68 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_800306C
    mov r0, #3
    bl sub_8002E14
    ldrb r1, [r5,#5]
    ldr r0, dword_811DA80 // =0x811DA8E 
    ldrb r0, [r0,r1]
    bl sub_8003060
    mov r0, #0x80
    mov r1, #0x90
    bl sub_800307C
locret_811DA60:
    pop {pc}
    .balign 4, 0x00
off_811DA64:    .word dword_811DA68
dword_811DA68:    .word 0x0
    .word 0x40
off_811DA70:    .word dword_811DA74
dword_811DA74:    .word 0x5F, 0x53, 0x811DA8C
dword_811DA80:    .word 0x811DA8E
    .word 0x7FFF
off_811DA88:    .word dword_811DA90
    .word 0x4050100
dword_811DA90:    .word 0x0
.endfunc // sub_811DA00

.func
.thumb_func
sub_811DA94:
    push {lr}
    ldr r0, dword_811DAE8 // =0x96 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #0x23 
    strb r1, [r5]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811DA94

    bl sub_8002F90 // () -> void
    mov r0, #6
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811DAE4 // =0x320 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    mov r0, #1
    bl sub_8003060
    ldr r0, dword_811DAEC // =0x193 
    bl sound_play // () -> void
    mov r0, #0xf3
    bl sound_play // () -> void
    mov r0, #0xc0
    mov r1, #0x64 
    bl sub_800307C
    pop {pc}
    .balign 4, 0x00
off_811DAE4:    .word 0x320
dword_811DAE8:    .word 0x96
dword_811DAEC:    .word 0x193
.func
.thumb_func
sub_811DAF0:
    push {lr}
    ldr r0, dword_811DB50 // =0x97 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811DAF0

    bl sub_8002F90 // () -> void
    mov r0, #6
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811DB4C // =0x320 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    mov r0, #1
    bl sub_8003060
    ldrb r2, [r5,#5]
    lsl r2, r2, #2
    ldr r3, off_811DB54 // =dword_811DB58 
    ldr r1, [r3,r2]
    mov r0, #0xb0
    add r0, r0, r1
    add r2, #2
    ldr r2, [r3,r2]
    mov r1, #0x6c 
    add r1, r1, r2
    bl sub_800307C
    ldr r0, off_811DB70 // =off_811DB74 
    ldrb r2, [r5,#5]
    ldrb r0, [r0,r2]
    strh r0, [r5,#0xc]
    pop {pc}
    .balign 4, 0x00
off_811DB4C:    .word 0x320
dword_811DB50:    .word 0x97
off_811DB54:    .word dword_811DB58
dword_811DB58:    .word 0xE0010, 0x160022, 0x1E001A, 0x1A002A, 0x2A002A, 0x280020
off_811DB70:    .word off_811DB74
off_811DB74:    .word unk_2010100
    .word 0x202
.func
.thumb_func
sub_811DB7C:
    push {lr}
    ldr r0, dword_811DBC4 // =0x1E 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #1
    strb r1, [r5]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811DB7C

    bl sub_8002F90 // () -> void
    mov r0, #0xc
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    ldr r0, off_811DBC0 // =0x3A0 
    bl sub_800306C
    mov r0, #2
    bl sub_8002E14
    mov r0, #1
    bl sub_8003060
    ldr r0, off_811DBC8 // =0x38 
    ldr r1, off_811DBCC // =0x8C 
    bl sub_800307C
    pop {pc}
    .byte 0, 0
off_811DBC0:    .word 0x3A0
dword_811DBC4:    .word 0x1E
off_811DBC8:    .word 0x38
off_811DBCC:    .word 0x8C
.func
.thumb_func
sub_811DBD0:
    push {lr}
    ldrb r0, [r5,#5]
    add r0, #5
    strb r0, [r5,#5]
    ldr r2, [r5,#4]
    lsr r2, r2, #8
    lsl r2, r2, #8
    mov r0, #5
    orr r2, r0
    mov r0, #0x3a 
    mov r1, #6
    bl sub_8046670
    mov r1, #0xc
    strb r1, [r0,#9]
    pop {pc}
.endfunc // sub_811DBD0

.func
.thumb_func
sub_811DBF0:
    push {lr}
    bl sub_80466C4
    beq locret_811DBFC
    mov r0, #0xc
    strb r0, [r1,#0xc]
locret_811DBFC:
    pop {pc}
    .byte 0, 0
.endfunc // sub_811DBF0

.func
.thumb_func
sub_811DC00:
    push {r4,lr}
    ldr r2, off_811DC20 // =unk_811DC28 
    ldr r3, off_811DC24 // =byte_2011E40 
    ldrb r4, [r3,#0x2] // (byte_2011E42 - 0x2011e40)
    cmp r4, #4
    beq loc_811DC14
    cmp r4, #8
    beq loc_811DC14
    cmp r4, #0xc
    bne locret_811DC1C
loc_811DC14:
    ldrb r3, [r3,#0x6] // (byte_2011E46 - 0x2011e40)
    lsl r3, r3, #1
    ldrsh r2, [r2,r3]
    add r1, r1, r2
locret_811DC1C:
    pop {r4,pc}
    .byte 0, 0
off_811DC20:    .word unk_811DC28
off_811DC24:    .word byte_2011E40
unk_811DC28:    .byte 0x10
    .byte  0
    .byte 0xE0
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0xF0
    .byte 0xFF
    .byte 0xD0
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  0
    .byte 0xB5
    .byte  3
    .byte 0x48 
    .byte 0x29 
    .byte 0x7A 
    .byte 0x40 
    .byte 0x58 
    .byte 0xFE
    .byte 0x46 
    .byte  0
    .byte 0x47 
    .byte  0
    .byte 0xBD
    .byte  0
    .byte  0
    .byte 0x48 
    .byte 0xDC
    .byte 0x11
    .byte  8
    .byte 0x55 
    .byte 0xDC
    .byte 0x11
    .byte  8
    .byte 0x71 
    .byte 0xDC
    .byte 0x11
    .byte  8
    .byte 0x81
    .byte 0xDC
    .byte 0x11
    .byte  8
    .byte 0x10
    .byte 0xB5
    .byte  1
    .byte 0x24 
    .byte 0x2C 
    .byte 0x70 
    .byte  4
    .byte 0x20
    .byte 0x28 
    .byte 0x72 
    .byte 0xB0
    .byte 0x20
    .byte 0x40 
    .byte 0x21 
    .byte 0xE5
    .byte 0xF6
    .byte 0xB
    .byte 0xFA
    .byte  4
    .byte 0x20
    .byte 0x28 
    .byte 0x72 
    .byte  0
    .byte 0xF0
    .byte  1
    .byte 0xF8
    .byte 0x10
    .byte 0xBD
    .byte  0
    .byte 0xB5
    .byte  2
    .byte 0x21 
    .byte 0x28 
    .byte 0x78 
    .byte  8
    .byte 0x42 
    .byte  1
    .byte 0xD0
    .byte 0xE4
    .byte 0xF6
    .byte 0x23 
    .byte 0xFD
    .byte  0
    .byte 0xBD
    .byte  0
    .byte 0xB5
    .byte 0x28 
    .byte 0xF7
    .byte  2
    .byte 0xFD
    .byte  0
    .byte 0xBD
.endfunc // sub_811DC00

.func
.thumb_func
sub_811DC88:
    push {r4,r5,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r0, r1, #0
    bl sub_80466C4
    beq loc_811DD06
    add r5, r1, #0
    mov r1, #1
    strb r1, [r5]
    ldr r0, [sp]
    lsl r4, r0, #2
    ldr r1, off_811DD90 // =dword_811DD94 
    ldr r0, [r1,r4]
    tst r0, r0
    beq loc_811DD06
    lsl r0, r0, #1
    bcs loc_811DCB0
    lsr r0, r0, #1
    b loc_811DCBC
loc_811DCB0:
    lsr r0, r0, #1
    // dest
    ldr r1, off_811DD8C // =unk_20212F8 
    bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
    ldr r1, off_811DD8C // =unk_20212F8 
    add r1, #4
loc_811DCBC:
    ldr r0, off_811DD10 // =unk_811DD14 
    ldr r0, [r0,r4]
    bl sub_8002770 // (int a1, int a2) -> void
    mov r1, #0x23 
    strb r1, [r5]
    lsr r1, r4, #2
    ldr r0, off_811DE0C // =off_811DE18 
    ldrb r0, [r0,r1]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    lsr r1, r4, #2
    ldr r0, dword_811DE10+4 // =0x811DE54 
    ldrb r0, [r0,r1]
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8002E14
    ldr r0, off_811DD0C // =0x80 
    bl sub_800306C
    mov r0, #1
    bl sub_800304A
    ldr r0, dword_811DE10 // =0x811DE36 
    lsr r1, r4, #2
    ldrb r0, [r0,r1]
    bl sub_8003060
    lsr r0, r4, #2
    bl sub_811DE74
loc_811DD06:
    add sp, sp, #4
    pop {r4,r5,pc}
    .byte  0
    .byte  0
off_811DD0C:    .word 0x80
off_811DD10:    .word unk_811DD14
unk_811DD14:    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .word 0x6C
    .word 0x6D, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x9D, 0x0, 0x0, 0x0, 0x0
    .word 0x9E, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x9F, 0x0, 0x0
    .word 0xA0
    .word 0x0
off_811DD8C:    .word unk_20212F8
off_811DD90:    .word dword_811DD94
dword_811DD94:    .word 0x0, 0x0, 0x0
    .word 0x8244164, 0x882455B0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .byte 0x3C 
    .byte 0xD2
    .byte 0x24 
    .byte 0x88
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .word 0x8253F88, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    .word 0x8825DFB4, 0x0, 0x0
    .word 0x837D8E0, 0x0
off_811DE0C:    .word off_811DE18
dword_811DE10:    .word 0x811DE36, 0x811DE54
off_811DE18:    .word word_3000000
    .word 0x7, 0x4000000, 0x0
    .word 0x8, 0x0
    .word 0x600
    .word word_3000000
    .word 0x3030303, 0x3030303, 0x3030303, 0x3020303, 0x3030303
    .word 0x3030303, 0x3030303, 0x0, 0x0, 0x0
    .word 0x0
    .word 0x12, 0x0, 0x0, 0x0
.endfunc // sub_811DC88

.func
.thumb_func
sub_811DE74:
    push {lr}
    lsl r2, r0, #2
    ldr r1, off_811DE90 // =dword_811DE94 
    ldrsh r0, [r1,r2]
    add r2, #2
    ldrsh r1, [r1,r2]
    mov r2, #0xb0
    mov r3, #0x40 
    add r0, r0, r2
    add r1, r1, r3
    bl sub_800307C
    pop {pc}
    .byte 0, 0
off_811DE90:    .word dword_811DE94
dword_811DE94:    .word 0x0
    .word 0x80000, 0x80000, 0x80000, 0x80000, 0x80000, 0x80000
    .word 0x80000, 0x80000, 0x80000, 0x80000, 0x80000, 0x80000
    .word 0x80000, 0x80000, 0x80000, 0x80000, 0x40000, 0x80000
    .word 0xC0000, 0x80000, 0x80000, 0x80000, 0x80000, 0x80000
    .word 0x80006, 0x0, 0x0
    .byte  0
    .byte  0
    .byte  6
    .byte  0
    .byte  0
    .byte  0
    .byte 0x10
    .byte  0
.endfunc // sub_811DE74

.func
.thumb_func
sub_811DF0C:
    push {lr}
    bl sub_80466C4
    beq locret_811DF18
    mov r0, #1
    strb r0, [r1]
locret_811DF18:
    pop {pc}
    .byte  0
    .byte  0
.endfunc // sub_811DF0C

loc_811DF1C:
    push {lr}
    ldr r0, off_811DF2C // =off_811DF30 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    ldr r6, off_811DF3C // =unk_2000310 
    mov lr, pc
    bx r0
    pop {pc}
off_811DF2C:    .word off_811DF30
off_811DF30:    .word sub_811DF40+1
    .word sub_811DF94+1
    .word sub_811DFCC+1
off_811DF3C:    .word unk_2000310
.func
.thumb_func
sub_811DF40:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x3b 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811DF40

    bl sub_8002F90 // () -> void
    mov r0, #0xb
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8003060
    ldr r0, off_811DF90 // =0x270 
    bl sub_800306C
    mov r0, #1
    bl sub_8002E14
    mov r0, #0xd2
    mov r1, #0xa
    bl sub_800307C
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811DF94
    pop {pc}
    .byte 0, 0
off_811DF90:    .word 0x270
.func
.thumb_func
sub_811DF94:
    push {r4,lr}
    ldrb r0, [r6,#0xb]
    cmp r0, #0
    bne loc_811DFB0
    mov r0, #0xff
    strb r0, [r6,#4]
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
    b loc_811DFBA
loc_811DFB0:
    // entryIdx
    mov r0, #0xb
    // byteFlagIdx
    mov r1, #0xf2
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_811DFC0
loc_811DFBA:
    bl sub_811DFD4
    b loc_811DFC4
loc_811DFC0:
    bl sub_811E000
loc_811DFC4:
    bl sprite_update
.endfunc // sub_811DF94

    pop {r4,pc}
    .balign 4, 0x00
.func
.thumb_func
sub_811DFCC:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811DFCC

.func
.thumb_func
sub_811DFD4:
    push {lr}
    ldrb r0, [r6,#4]
    cmp r0, #0xff
    bne loc_811DFE6
    ldr r0, dword_811DFFC // =0x3F800000 
    str r0, [r6,#0x20]
    bl sub_8002FA6
    b locret_811DFF8
loc_811DFE6:
    mov r2, #0x1d
    sub r2, r2, r0
    mov r3, #1
    lsl r3, r2
    ldr r0, [r6,#0x20]
    bic r0, r3
    str r0, [r6,#0x20]
    bl sub_8002FA6
locret_811DFF8:
    pop {pc}
    .balign 4, 0x00
dword_811DFFC:    .word 0x3F800000
.endfunc // sub_811DFD4

.func
.thumb_func
sub_811E000:
    push {lr}
    ldrb r3, [r5,#9]
    cmp r3, #0
    bgt locret_811E020
    add r3, #1
    strb r3, [r5,#9]
    mov r0, #1
    bl sub_8002FA6
    mov r0, #1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
    bl sub_8002F90 // () -> void
locret_811E020:
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811E000

loc_811E024:
    push {lr}
    ldr r6, off_811E044 // =byte_2001010 
    ldr r0, off_811E034 // =off_811E038 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E034:    .word off_811E038
off_811E038:    .word sub_811E048+1
    .word sub_811E090+1
    .word sub_811E0B2+1
off_811E044:    .word byte_2001010
.func
.thumb_func
sub_811E048:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x31 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E048

    bl sub_8002F90 // () -> void
    mov r0, #0xb
    bl sub_800304A
    ldr r0, off_811E08C // =0x298 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #1
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E090
    pop {pc}
    .balign 4, 0x00
off_811E08C:    .word 0x298
.func
.thumb_func
sub_811E090:
    push {lr}
    ldrb r4, [r5]
    mov r1, #2
    ldrb r0, [r6,#0xe]
    tst r0, r0
    beq loc_811E0A0
    bic r4, r1
    b loc_811E0A2
loc_811E0A0:
    orr r4, r1
loc_811E0A2:
    strb r4, [r5]
    mov r0, #0xbc
    mov r1, #0xa
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E090

    pop {pc}
.func
.thumb_func
sub_811E0B2:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E0B2

.func
.thumb_func
sub_811E0BA:
    push {r4-r7,lr}
    // memBlock
    ldr r0, off_811E160 // =byte_2027200 
    add r7, r0, #0
    mov r1, #0xa
    lsl r1, r1, #5
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r1, off_811E164 // =byte_2001010 
    ldrb r4, [r1,#0x10] // (dword_2001020 - 0x2001010)
    cmp r4, #0
    beq loc_811E118
    mov r0, #0
    strb r0, [r1,#0x12] // (dword_2001020+2 - 0x2001010)
    mov r0, #0xc0
    cmp r4, #0x28 
    bge loc_811E0E2
    mov r0, #0xd0
    cmp r4, #0x14
    bge loc_811E0E2
    mov r0, #0xe0
loc_811E0E2:
    lsr r1, r0, #4
    mov r6, #0
loc_811E0E6:
    mov r2, #0
    cmp r6, r4
    bge loc_811E0F6
    add r2, r1, #0
    add r6, #1
    cmp r6, r4
    bge loc_811E0F6
    orr r2, r0
loc_811E0F6:
    strb r2, [r7]
    strb r2, [r7,#4]
    strb r2, [r7,#8]
    strb r2, [r7,#0xc]
    strb r2, [r7,#0x10]
    strb r2, [r7,#0x14]
    strb r2, [r7,#0x18]
    strb r2, [r7,#0x1c]
    add r7, #1
    add r6, #1
    mov r2, #7
    tst r6, r2
    bne loc_811E112
    add r7, #0x1c
loc_811E112:
    cmp r6, r4
    blt loc_811E0E6
    b loc_811E14C
loc_811E118:
    ldr r1, off_811E164 // =byte_2001010 
    ldrb r0, [r1,#0x12] // (dword_2001020+2 - 0x2001010)
    add r0, #1
    strb r0, [r1,#0x12] // (dword_2001020+2 - 0x2001010)
    mov r1, #0x3f 
    and r0, r1
    cmp r0, #0x20 
    blt loc_811E14C
    mov r0, #0xee
    mov r6, #0
loc_811E12C:
    strb r0, [r7]
    strb r0, [r7,#4]
    strb r0, [r7,#8]
    strb r0, [r7,#0xc]
    strb r0, [r7,#0x10]
    strb r0, [r7,#0x14]
    strb r0, [r7,#0x18]
    strb r0, [r7,#0x1c]
    add r7, #1
    add r6, #2
    mov r2, #7
    tst r6, r2
    bne loc_811E148
    add r7, #0x1c
loc_811E148:
    cmp r6, #0x50 
    blt loc_811E12C
loc_811E14C:
    ldr r0, off_811E160 // =byte_2027200 
    ldr r1, dword_811E15C // =0x6015580 
    mov r2, #0xa
    lsl r2, r2, #5
    bl loc_8000AC8
.endfunc // sub_811E0BA

    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811E15C:    .word 0x6015580
off_811E160:    .word byte_2027200
off_811E164:    .word byte_2001010
loc_811E168:
    push {lr}
    ldr r6, off_811E188 // =byte_2001010 
    ldr r0, off_811E178 // =off_811E17C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E178:    .word off_811E17C
off_811E17C:    .word sub_811E18C+1
    .word sub_811E1D4+1
    .word sub_811E1FA+1
off_811E188:    .word byte_2001010
.func
.thumb_func
sub_811E18C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x32 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E18C

    bl sub_8002F90 // () -> void
    mov r0, #0xa
    bl sub_800304A
    ldr r0, off_811E1D0 // =0x258 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #1
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E1D4
    pop {pc}
    .byte 0, 0
off_811E1D0:    .word 0x258
.func
.thumb_func
sub_811E1D4:
    push {lr}
    ldrb r4, [r5]
    mov r1, #2
    ldrb r0, [r6,#0xe]
    tst r0, r0
    beq loc_811E1E4
    bic r4, r1
    b loc_811E1E6
loc_811E1E4:
    orr r4, r1
loc_811E1E6:
    strb r4, [r5]
    bl sub_811E202
    mov r0, #0xcc
    mov r1, #0x1e
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E1D4

    pop {pc}
.func
.thumb_func
sub_811E1FA:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E1FA

.func
.thumb_func
sub_811E202:
    push {r4-r7,lr}
    ldr r7, dword_811E240 // =0x1FFFFFF8 
    bl sub_81418E4
    add r4, r1, #0
    mov r1, #0xa
    svc 6
    mov r2, #1
    lsl r2, r2, #0x1c
    lsr r2, r0
    bic r7, r2
    mov r2, #1
    lsl r2, r2, #0x19
    lsr r2, r1
    bic r7, r2
    add r0, r4, #0
    mov r1, #0xa
    svc 6
    mov r2, #1
    lsl r2, r2, #0xf
    lsr r2, r0
    bic r7, r2
    mov r2, #1
    lsl r2, r2, #0xc
    lsr r2, r1
    bic r7, r2
    add r0, r7, #0
    bl sub_8002FA6
    pop {r4-r7,pc}
    .byte 0, 0
dword_811E240:    .word 0x1FFFFFF8
    .word byte_2001010
.endfunc // sub_811E202

loc_811E248:
    push {lr}
    ldr r6, off_811E268 // =byte_2000780 
    ldr r0, off_811E258 // =off_811E25C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E258:    .word off_811E25C
off_811E25C:    .word sub_811E26C+1
    .word sub_811E2B4+1
    .word sub_811E30C+1
off_811E268:    .word byte_2000780
.func
.thumb_func
sub_811E26C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x33 
    bl loc_8002774 // (int a1, int a2) -> void
    ldrb r0, [r5,#4]
    strb r0, [r5,#5]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E26C

    bl sub_8002F90 // () -> void
    mov r0, #0xb
    bl sub_800304A
    ldr r0, off_811E2B0 // =0x290 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E2B4
    pop {pc}
off_811E2B0:    .word 0x290
.func
.thumb_func
sub_811E2B4:
    push {lr}
    ldrb r4, [r5]
    mov r1, #2
    ldrb r0, [r6,#0xd]
    tst r0, r0
    beq loc_811E2C4
    bic r4, r1
    b loc_811E2C6
loc_811E2C4:
    orr r4, r1
loc_811E2C6:
    strb r4, [r5]
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_811E2E4
    bl sub_81421D0
    add r0, #1
    ldrb r1, [r5,#5]
    cmp r0, r1
    beq loc_811E2E4
    strb r0, [r5,#5]
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
loc_811E2E4:
    mov r0, #0xdc
    mov r1, #0x24 
    push {r0,r1}
    ldr r0, off_811E308 // =dword_8089128 
    bl sub_8036F70
    pop {r0,r1}
    beq loc_811E2F8
    sub r0, #0x14
    add r1, #8
loc_811E2F8:
    bl sub_800307C
    bl sub_811E314
    bl sprite_update
.endfunc // sub_811E2B4

    pop {pc}
    .balign 4, 0x00
off_811E308:    .word dword_8089128
.func
.thumb_func
sub_811E30C:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E30C

.func
.thumb_func
sub_811E314:
    push {r4-r7,lr}
    ldr r7, dword_811E358 // =0xFFFFFFF 
    mov r0, #0
    bl sub_8142190
    mov r2, #1
    lsl r2, r2, #0x1b
    lsr r2, r0
    bic r7, r2
    mov r0, #1
    bl sub_8142190
    mov r2, #1
    lsl r2, r2, #0x14
    lsr r2, r0
    bic r7, r2
    mov r0, #2
    bl sub_8142190
    mov r2, #1
    lsl r2, r2, #0xd
    lsr r2, r0
    bic r7, r2
    mov r0, #3
    bl sub_8142190
    mov r2, #1
    lsl r2, r2, #6
    lsr r2, r0
    bic r7, r2
    add r0, r7, #0
    bl sub_8002FA6
    pop {r4-r7,pc}
dword_811E358:    .word 0xFFFFFFF
    .word byte_2000780
.endfunc // sub_811E314

loc_811E360:
    push {lr}
    ldr r6, off_811E380 // =byte_2000780 
    ldr r0, off_811E370 // =off_811E374 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E370:    .word off_811E374
off_811E374:    .word sub_811E384+1
    .word sub_811E3CC+1
    .word sub_811E40C+1
off_811E380:    .word byte_2000780
.func
.thumb_func
sub_811E384:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x36 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E384

    bl sub_8002F90 // () -> void
    mov r0, #0xa
    bl sub_800304A
    ldr r0, off_811E3C8 // =0x280 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E3CC
    pop {pc}
    .balign 4, 0x00
off_811E3C8:    .word 0x280
.func
.thumb_func
sub_811E3CC:
    push {lr}
    ldrb r4, [r5]
    mov r1, #2
    ldrb r0, [r6,#0xd]
    tst r0, r0
    beq loc_811E3DC
    bic r4, r1
    b loc_811E3DE
loc_811E3DC:
    orr r4, r1
loc_811E3DE:
    strb r4, [r5]
    bl sub_81421D0
    mov r1, #0x10
    mul r1, r0
    add r1, #0xc
    mov r0, #0xdc
    push {r0,r1}
    ldr r0, off_811E408 // =dword_8089128 
    bl sub_8036F70
    pop {r0,r1}
    beq loc_811E3FC
    sub r0, #0x14
    add r1, #8
loc_811E3FC:
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E3CC

    pop {pc}
    .balign 4, 0x00
off_811E408:    .word dword_8089128
.func
.thumb_func
sub_811E40C:
    push {lr}
    bl sub_80468E0
    pop {pc}
    .word byte_2000780
.endfunc // sub_811E40C

loc_811E418:
    push {lr}
    ldr r0, off_811E428 // =off_811E42C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811E428:    .word off_811E42C
off_811E42C:    .word sub_811E438+1
    .word sub_811E490+1
    .word sub_811E510+1
.func
.thumb_func
sub_811E438:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0xa1
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #1
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E438

    bl sub_8002F90 // () -> void
    ldr r0, off_811E488 // =0x280 
    bl sub_800306C
    mov r0, #0xc
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8003060
    mov r0, #2
    bl sub_8002E14
    bl sub_811E51C
    bl sub_811E548
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #1
    strb r0, [r5,#9]
    bl sub_811E490
    pop {pc}
    .balign 4, 0x00
off_811E488:    .word 0x280
    .word 0x180000
.func
.thumb_func
sub_811E490:
    push {lr}
    ldr r0, off_811E50C // =byte_2011E40 
    ldrb r0, [r0,#0x2] // (byte_2011E42 - 0x2011e40)
    cmp r0, #0x10
    blt loc_811E4AC
    ldrb r0, [r5,#9]
    cmp r0, #2
    beq loc_811E4A8
    mov r0, #2
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0x1c]
loc_811E4A8:
    bl sub_811E558
loc_811E4AC:
    ldrb r0, [r5,#9]
    cmp r0, #1
    beq loc_811E4E4
    ldr r0, [r5,#0x14]
    ldr r2, dword_811E500 // =0x8000 
    add r0, r0, r2
    str r0, [r5,#0x14]
    ldr r1, [r5,#0xc]
    sub r1, r1, r0
    str r1, [r5,#0xc]
    asr r1, r1, #0x10
    ldr r2, dword_811E504 // =0xFFFFFF58 
    cmp r1, r2
    bge loc_811E4F0
    ldrb r0, [r5,#9]
    cmp r0, #2
    bne loc_811E4D4
    mov r0, #8
    strb r0, [r5,#8]
    b loc_811E4F8
loc_811E4D4:
    bl sub_811E51C
    bl sub_811E548
    ldrb r0, [r5,#9]
    add r0, #1
    strb r0, [r5,#9]
    b loc_811E4F0
loc_811E4E4:
    ldrb r0, [r5,#7]
    sub r0, #1
    strb r0, [r5,#7]
    bne loc_811E4F0
    mov r0, #0
    strb r0, [r5,#9]
loc_811E4F0:
    ldrh r0, [r5,#0xe]
    ldrh r1, [r5,#0x12]
    bl sub_800307C
loc_811E4F8:
    bl sprite_update
.endfunc // sub_811E490

    pop {pc}
    .byte 0, 0
dword_811E500:    .word 0x8000
dword_811E504:    .word 0xFFFFFF58
    .word 0x15E
off_811E50C:    .word byte_2011E40
.func
.thumb_func
sub_811E510:
    push {lr}
    bl sub_811E558
    bl sprite_update
.endfunc // sub_811E510

    pop {pc}
.func
.thumb_func
sub_811E51C:
    push {lr}
    bl change_20013F0_800151C // () -> int
    mov r1, #0x1f
    and r0, r1
    mov r1, #0x20 
    ldrb r2, [r5,#3]
    mul r1, r2
    add r1, r1, r0
    add r1, #0x10
    ldr r0, dword_811E540 // =0x15E 
    strh r0, [r5,#0xe]
    strh r1, [r5,#0x12]
    bl sub_800307C
    ldr r0, dword_811E544 // =0x180000 
    str r0, [r5,#0x14]
    pop {pc}
dword_811E540:    .word 0x15E
dword_811E544:    .word 0x180000
.endfunc // sub_811E51C

.func
.thumb_func
sub_811E548:
    push {lr}
    bl change_20013F0_800151C // () -> int
    mov r1, #0x3f 
    and r0, r1
    strb r0, [r5,#7]
    pop {pc}
    .balign 4, 0x00
.endfunc // sub_811E548

.func
.thumb_func
sub_811E558:
    push {lr}
    ldrh r0, [r5,#0x1c]
    lsl r1, r0, #5
    lsl r2, r0, #0xa
    orr r1, r2
    orr r0, r1
    ldr r1, dword_811E578 // =0x8000 
    orr r0, r1
    bl sub_8002ED0
    ldrh r0, [r5,#0x1c]
    add r0, #1
    cmp r0, #0x20 
    bge locret_811E576
    strh r0, [r5,#0x1c]
locret_811E576:
    pop {pc}
dword_811E578:    .word 0x8000
.endfunc // sub_811E558

loc_811E57C:
    push {lr}
    ldr r0, off_811E58C // =off_811E590 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811E58C:    .word off_811E590
off_811E590:    .word sub_811E59C+1
    .word sub_811E5EC+1
    .word sub_811E5F8+1
.func
.thumb_func
sub_811E59C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x3a 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E59C

    bl sub_8002F90 // () -> void
    ldr r0, off_811E5E8 // =0x280 
    bl sub_800306C
    mov r0, #0xa
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0xd8
    mov r1, #0xe
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E5EC
    pop {pc}
    .balign 4, 0x00
off_811E5E8:    .word 0x280
.func
.thumb_func
sub_811E5EC:
    push {lr}
    bl sub_811E600
    bl sprite_update
.endfunc // sub_811E5EC

    pop {pc}
.func
.thumb_func
sub_811E5F8:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E5F8

.func
.thumb_func
sub_811E600:
    push {r4-r7,lr}
    ldr r7, dword_811E618 // =0x3FF00000 
    bl sub_8143198
    mov r2, #1
    lsl r2, r2, #0x1d
    lsr r2, r0
    bic r7, r2
    add r0, r7, #0
    bl sub_8002FA6
    pop {r4-r7,pc}
dword_811E618:    .word 0x3FF00000
.endfunc // sub_811E600

loc_811E61C:
    push {lr}
    ldr r0, off_811E62C // =off_811E630 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
    .balign 4, 0x00
off_811E62C:    .word off_811E630
off_811E630:    .word sub_811E63C+1
    .word sub_811E68C+1
    .word sub_811E698+1
.func
.thumb_func
sub_811E63C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x39 
    bl sub_8002770 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E63C

    bl sub_8002F90 // () -> void
    ldr r0, off_811E688 // =0x2A8 
    bl sub_800306C
    mov r0, #0xb
    bl sub_800304A
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0xdc
    mov r1, #0x2c 
    bl sub_800307C
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E68C
    pop {pc}
    .balign 4, 0x00
off_811E688:    .word 0x2A8
.func
.thumb_func
sub_811E68C:
    push {lr}
    bl sub_811E6A0
    bl sprite_update
.endfunc // sub_811E68C

    pop {pc}
.func
.thumb_func
sub_811E698:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E698

.func
.thumb_func
sub_811E6A0:
    push {r4-r7,lr}
    bl sub_81433DA
    ldr r1, off_811E6B4 // =dword_811E6B8 
    ldrb r0, [r1,r0]
    lsl r0, r0, #0x18
    bl sub_8002FA6
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811E6B4:    .word dword_811E6B8
dword_811E6B8:    .word 0xC1C3C7C, 0x4
.endfunc // sub_811E6A0

loc_811E6C0:
    push {lr}
    ldr r6, off_811E6E0 // =byte_2001010 
    ldr r0, off_811E6D0 // =off_811E6D4 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E6D0:    .word off_811E6D4
off_811E6D4:    .word sub_811E6E4+1
    .word sub_811E72C+1
    .word sub_811E73C+1
off_811E6E0:    .word byte_2001010
.func
.thumb_func
sub_811E6E4:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x63 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E6E4

    bl sub_8002F90 // () -> void
    mov r0, #0xb
    bl sub_800304A
    ldr r0, off_811E728 // =0x1F0 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E72C
    pop {pc}
    .balign 4, 0x00
off_811E728:    .word 0x1F0
.func
.thumb_func
sub_811E72C:
    push {lr}
    mov r0, #0x78 
    mov r1, #0x78 
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E72C

    pop {pc}
.func
.thumb_func
sub_811E73C:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E73C

.func
.thumb_func
sub_811E744:
    push {r4-r7,lr}
    // memBlock
    ldr r0, off_811E798 // =unk_2027000 
    mov r1, #0x34 
    lsl r1, r1, #4
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    bl sub_8144010
    add r6, r0, #0
    ldr r7, off_811E798 // =unk_2027000 
    mov r4, #0
loc_811E75A:
    ldr r0, off_811E79C // =dword_811E7A0 
    ldr r0, [r0,r4]
    cmp r6, #8
    bge loc_811E772
    lsl r1, r6, #2
    mov r2, #0x20 
    sub r1, r2, r1
    mov r2, #0
    mvn r2, r2
    lsr r2, r1
    and r0, r2
    mov r6, #8
loc_811E772:
    mov r3, #0
loc_811E774:
    str r0, [r7,r3]
    add r3, #4
    cmp r3, #0x28 
    blt loc_811E774
    sub r6, #8
    add r7, #0x40 
    add r4, #4
    cmp r4, #0x34 
    blt loc_811E75A
    ldr r0, off_811E798 // =unk_2027000 
    ldr r1, dword_811E794 // =0x6014180 
    mov r2, #0x34 
    lsl r2, r2, #4
    bl loc_8000AC4
.endfunc // sub_811E744

    pop {r4-r7,pc}
dword_811E794:    .word 0x6014180
off_811E798:    .word unk_2027000
off_811E79C:    .word dword_811E7A0
dword_811E7A0:    .word 0xAAAAAAAA, 0xAAAAAAAA, 0xAAAAAAAA, 0xBBBBBAAA, 0xBBBBBBBB
    .word 0xBBBBBBBB, 0xCCCBBBBB, 0xCCCCCCCC, 0xCCCCCCCC, 0xDDDDDDCC
    .word 0xDDDDDDDD, 0xEEEEEEDD, 0xEEEE
loc_811E7D4:
    push {lr}
    ldr r6, off_811E7F4 // =byte_2001010 
    ldr r0, off_811E7E4 // =off_811E7E8 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E7E4:    .word off_811E7E8
off_811E7E8:    .word sub_811E7F8+1
    .word sub_811E840+1
    .word sub_811E850+1
off_811E7F4:    .word byte_2001010
.func
.thumb_func
sub_811E7F8:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x64 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E7F8

    bl sub_8002F90 // () -> void
    mov r0, #0xb
    bl sub_800304A
    ldr r0, off_811E83C // =0x230 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E840
    pop {pc}
    .balign 4, 0x00
off_811E83C:    .word 0x230
.func
.thumb_func
sub_811E840:
    push {lr}
    mov r0, #0x78 
    mov r1, #0x78 
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E840

    pop {pc}
.func
.thumb_func
sub_811E850:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E850

loc_811E858:
    push {lr}
    ldr r6, off_811E878 // =byte_2001010 
    ldr r0, off_811E868 // =off_811E86C 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E868:    .word off_811E86C
off_811E86C:    .word sub_811E87C+1
    .word sub_811E8C4+1
    .word sub_811E8D8+1
off_811E878:    .word byte_2001010
.func
.thumb_func
sub_811E87C:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x65 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E87C

    bl sub_8002F90 // () -> void
    mov r0, #0xf
    bl sub_800304A
    ldr r0, off_811E8C0 // =0x290 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E8C4
    pop {pc}
    .byte 0, 0
off_811E8C0:    .word 0x290
.func
.thumb_func
sub_811E8C4:
    push {lr}
    bl sub_811E8E0
    mov r0, #0xe0
    mov r1, #0x3e 
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E8C4

    pop {pc}
.func
.thumb_func
sub_811E8D8:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E8D8

.func
.thumb_func
sub_811E8E0:
    push {r4-r7,lr}
    bl sub_8143F90
    lsr r0, r0, #0x10
    mov r1, #8
    svc 6
    ldr r7, off_811E8F8 // =dword_811E8FC 
    lsl r0, r0, #2
    ldr r0, [r7,r0]
    bl sub_8002FA6
    pop {r4-r7,pc}
off_811E8F8:    .word dword_811E8FC
dword_811E8FC:    .word 0xF0000000, 0xE0000000, 0xC0000000, 0x80000000, 0x0
    .word 0x0
.endfunc // sub_811E8E0

loc_811E914:
    push {lr}
    ldr r6, off_811E934 // =byte_2001010 
    ldr r0, off_811E924 // =off_811E928 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E924:    .word off_811E928
off_811E928:    .word sub_811E938+1
    .word sub_811E980+1
    .word sub_811E998+1
off_811E934:    .word byte_2001010
.func
.thumb_func
sub_811E938:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x66 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E938

    bl sub_8002F90 // () -> void
    mov r0, #0xf
    bl sub_800304A
    ldr r0, off_811E97C // =0x2A8 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811E980
    pop {pc}
    .balign 4, 0x00
off_811E97C:    .word 0x2A8
.func
.thumb_func
sub_811E980:
    push {lr}
    bl sub_8143F90
    lsr r2, r0, #0x10
    mov r0, #0xe0
    mov r1, #0x42 
    sub r1, r1, r2
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811E980

    pop {pc}
.func
.thumb_func
sub_811E998:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811E998

loc_811E9A0:
    push {lr}
    ldr r6, off_811E9C0 // =byte_2001010 
    ldr r0, off_811E9B0 // =off_811E9B4 
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    pop {pc}
off_811E9B0:    .word off_811E9B4
off_811E9B4:    .word sub_811E9C4+1
    .word sub_811EA0C+1
    .word sub_811EA20+1
off_811E9C0:    .word byte_2001010
.func
.thumb_func
sub_811E9C4:
    push {lr}
    mov r0, #0x23 
    strb r0, [r5]
    mov r0, #0x67 
    bl loc_8002774 // (int a1, int a2) -> void
    mov r0, #0
    bl sprite_setAnimation // (u8 a1) -> void
    bl sprite_loadAnimationData // () -> void
.endfunc // sub_811E9C4

    bl sub_8002F90 // () -> void
    mov r0, #0xf
    bl sub_800304A
    ldr r0, off_811EA08 // =0x250 
    bl sub_800306C
    mov r0, #0
    bl sub_8003060
    mov r0, #0
    bl sub_8002E14
    mov r0, #0
    bl sprite_setPallete // (int pallete) -> void
    mov r0, #4
    strb r0, [r5,#8]
    bl sub_811EA0C
    pop {pc}
    .balign 4, 0x00
off_811EA08:    .word 0x250
.func
.thumb_func
sub_811EA0C:
    push {lr}
    bl sub_811EA28
    mov r0, #0xce
    mov r1, #0xc
    bl sub_800307C
    bl sprite_update
.endfunc // sub_811EA0C

    pop {pc}
.func
.thumb_func
sub_811EA20:
    push {lr}
    bl sub_80468E0
    pop {pc}
.endfunc // sub_811EA20

.func
.thumb_func
sub_811EA28:
    push {r4-r7,lr}
    ldr r7, dword_811EA64 // =0x1FFFFFFF 
    bl sub_8143D4C
    add r4, r1, #0
    mov r1, #0xa
    svc 6
    mov r2, #1
    lsl r2, r2, #0x1c
    lsr r2, r0
    bic r7, r2
    mov r2, #1
    lsl r2, r2, #0x17
    lsr r2, r1
    bic r7, r2
    add r0, r4, #0
    mov r1, #0xa
    svc 6
    mov r2, #1
    lsl r2, r2, #0xd
    lsr r2, r0
    bic r7, r2
    mov r2, #1
    lsl r2, r2, #8
    lsr r2, r1
    bic r7, r2
    add r0, r7, #0
    bl sub_8002FA6
    pop {r4-r7,pc}
dword_811EA64:    .word 0x1FFFFFFF
dword_811EA68:    .word 0x4, 0x3001B60, 0xFF0E100C, 0x80000842, 0x1, 0x80001084
    .word 0x1, 0x800018C6, 0x1, 0x80002108, 0x1, 0x8000294A
    .word 0x1, 0x8000318C, 0x1, 0x800039CE, 0x1, 0x80004210
    .word 0x1, 0x0
dword_811EAB8:    .word 0x4, 0x3001750, 0xFF0B110C, 0x80000842, 0x1, 0x2, 0x811EA7C
    .word 0x4, 0x3001B60, 0xFF0E100C, 0x80004210, 0x1, 0x0
dword_811EAEC:    .word 0x4, 0x3001750, 0xFF0B110C, 0x80004210, 0x1, 0x0
dword_811EB04:    .word 0x4, 0x3001B60, 0xFF0E100C, 0x80004210, 0x1, 0x800039CE
    .word 0x1, 0x8000318C, 0x1, 0x8000294A, 0x1, 0x80002108
    .word 0x1, 0x800018C6, 0x1, 0x80001084, 0x1, 0x80000842
    .word 0x1, 0x80000000, 0x1, 0x0
dword_811EB5C:    .word 0x4, 0x3001750, 0xFF0B110C, 0x80004210, 0x1, 0x2, 0x811EB18
    .word 0x10001, 0x102, 0x10202, 0x20302, 0x30402, 0x40502, 0x50602
    .word 0x60702, 0x70802, 0xA03, 0xFFFFFFFF, 0x1000001, 0x1000102, 0x1010202
    .word 0x1020302, 0x1030402, 0x1040502, 0x1050602, 0x1060702, 0x1070802, 0x1000A03
    .word 0xFFFFFFFF, 0xC378C374, 0xC374C37C, 0x404FFFF, 0x40404
.endfunc // sub_811EA28

.func
.thumb_func
sub_811EBE0:
    ldr r2, off_811EC4C // =byte_200DF20 
    ldrb r1, [r2,#0x5] // (byte_200DF25 - 0x200df20)
    tst r1, r0
    mov pc, lr
.endfunc // sub_811EBE0

.func
.thumb_func
sub_811EBE8:
    ldr r2, off_811EC4C // =byte_200DF20 
    ldrb r1, [r2,#0x5] // (byte_200DF25 - 0x200df20)
    orr r1, r0
    strb r1, [r2,#0x5] // (byte_200DF25 - 0x200df20)
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_811EBE8

.func
.thumb_func
sub_811EBF4:
    ldr r2, off_811EC4C // =byte_200DF20 
    ldrb r1, [r2,#0x5] // (byte_200DF25 - 0x200df20)
    bic r1, r0
    strb r1, [r2,#0x5] // (byte_200DF25 - 0x200df20)
    mov pc, lr
    .byte 0, 0
.endfunc // sub_811EBF4

.func
.thumb_func
sub_811EC00:
    push {lr}
    // memBlock
    ldr r0, off_811EC4C // =byte_200DF20 
    add r4, r0, #0
    // size
    mov r1, #0x18
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    pop {pc}
    .byte 0, 0
.endfunc // sub_811EC00

.func
.thumb_func
sub_811EC10:
    push {r4,lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x34]
    // size
    mov r1, #0x80
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    // memBlock
    ldr r0, off_811EC4C // =byte_200DF20 
    add r4, r0, #0
    // size
    mov r1, #0x18
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r0, #1
    bl sub_811EBE8
    ldr r0, dword_811EC44 // =0xFFFFFFE0 
    strh r0, [r4,#0x10] // (word_200DF30 - 0x200df20)
    mov r0, #0
    ldr r1, dword_811EC48 // =dword_811EB5C 
    bl sub_8120CC8
    strb r0, [r4,#0xa] // (byte_200DF2A - 0x200df20)
    strb r1, [r4,#0xb] // (byte_200DF2B - 0x200df20)
    bl sub_8046664 // () -> void
    pop {r4,pc}
    .balign 4, 0x00
dword_811EC44:    .word 0xFFFFFFE0
dword_811EC48:    .word 0x811EBDA
off_811EC4C:    .word byte_200DF20
.endfunc // sub_811EC10

.func
.thumb_func
sub_811EC50:
    push {lr}
    bl sub_811EC68
    bl sub_811EFB8
.endfunc // sub_811EC50

    bl sub_811F014
    bl sub_811F050
    bl sub_811F08C
    pop {pc}
.func
.thumb_func
sub_811EC68:
    push {r4-r7,lr}
    ldr r4, off_811ECF4 // =unk_20096E0 
    mov r6, #0
    mov r7, #0
    ldr r5, off_811ECF8 // =dword_811ECFC 
loc_811EC72:
    ldr r0, [r5,r7]
    add r7, #4
    ldr r1, [r5,r7]
    add r7, #4
    bl sub_811FB84
    str r0, [r4,r6]
    add r6, #4
    mov r1, #0
loc_811EC84:
    ldr r0, [r5,r7]
    str r0, [r4,r6]
    add r6, #4
    add r7, #4
    add r1, #1
    cmp r1, #2
    blt loc_811EC84
    cmp r7, #0x20 
    blt loc_811EC72
    ldr r5, off_811ECB0 // =dword_811ECB4 
    mov r7, #0
loc_811EC9A:
    ldr r0, [r5,r7]
    str r0, [r4,r6]
    add r7, #4
    add r6, #4
    tst r0, r0
    bne loc_811EC9A
    // dataList
    ldr r0, off_811ECF4 // =unk_20096E0 
    bl decomp_initGfx_8000B8E // (u32 *dataRefs) -> void
    pop {r4-r7,pc}
    .byte 0, 0
off_811ECB0:    .word dword_811ECB4
dword_811ECB4:    .word 0x86C9DCC, 0x600D000, 0x340, 0x86CA10C, 0x600D340
    .word 0xB40, 0x86C9AF4, 0x3001710, 0x20, 0x86CD924
    .word 0x6016E80, 0x180, 0x86CD7C4, 0x6017000, 0x160
    .word 0x0
off_811ECF4:    .word unk_20096E0
off_811ECF8:    .word dword_811ECFC
dword_811ECFC:    .word 0x86C9D8C, 0x1, 0x3001B20, 0x20, 0x86C9DAC, 0x1, 0x3001B40
    .word 0x20
.endfunc // sub_811EC68

.func
.thumb_func
// () -> void
ho_811ED1C:
    push {r5,lr}
    ldr r5, off_811ED54 // =byte_200DF20 
    ldr r0, off_811ED38 // =jt_811ED3C 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    bl sub_80465BC
    bl sub_80465F8 // () -> void
    bl sub_811F508 // () -> void
    pop {r5,pc}
off_811ED38:    .word jt_811ED3C
jt_811ED3C:    .word sub_811ED58+1, sub_811EDB4+1, sub_811EE98+1, sub_811EED0+1
    .word sub_811EF0C+1, sub_811EF28+1
off_811ED54:    .word byte_200DF20
.endfunc // ho_811ED1C

.func
.thumb_func
// () -> void
sub_811ED58:
    push {lr}
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    add r0, #4
    strh r0, [r5,#0x10]
    blt loc_811ED8E
    ldr r0, off_811EDAC // =dword_811EA68 
    bl sub_8001B1C
    ldr r0, off_811EDB0 // =dword_811EAB8 
    bl sub_8001B1C
    mov r0, #0
    strh r0, [r5,#0x10]
    strb r0, [r5,#9]
    strb r0, [r5,#0xe]
    mov r0, #2
    strb r0, [r5,#0xd]
    mov r0, #4
    strb r0, [r5]
    // a1
    ldr r0, off_811EDA8 // =dword_811EB5C+28 
    bl sub_80465A0 // (void *a1) -> void
    bl sub_811F1B8
    bl sub_811F24C
loc_811ED8E:
    bl sub_811F0C8
    bl sub_811F11C
    bl copyTiles_PET_811EF70 // () -> void
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    cmp r0, #0
    blt locret_811EDA6
    bl copyTiles_onNaviSelect_811F54C // () -> void
locret_811EDA6:
    pop {pc}
off_811EDA8:    .word dword_811EB5C+0x1C
off_811EDAC:    .word dword_811EA68
off_811EDB0:    .word dword_811EAB8
.endfunc // sub_811ED58

.func
.thumb_func
sub_811EDB4:
    push {r4,lr}
    bl copyTiles_PET_811EF70 // () -> void
    bl copyTiles_onNaviSelect_811F54C // () -> void
    bl sub_811F24C
    mov r0, #0x10
    bl sub_8001B84
    bne loc_811EE82
    ldrb r0, [r5,#9]
    tst r0, r0
    beq loc_811EDD6
    sub r0, #1
    strb r0, [r5,#9]
    b loc_811EE82
loc_811EDD6:
    bl engine_isScreeneffectAnimating // () -> zf
    beq loc_811EE82
    mov r0, #0xa
    bl sub_811F7EC
    bne loc_811EDF2
    mov r0, #1
    bl sub_811F7EC
    beq loc_811EE34
    ldrb r0, [r5,#4]
    cmp r0, #8
    blt loc_811EE08
loc_811EDF2:
    mov r0, #8
    strb r0, [r5]
    mov r0, #1
    strb r0, [r5,#0xd]
    ldr r0, off_811EE90 // =dword_811EB04 
    bl sub_8001B1C
    ldr r0, off_811EE94 // =dword_811EB5C 
    bl sub_8001B1C
    b loc_811EE82
loc_811EE08:
    add r4, r0, #0
    // entryIdx
    mov r0, #0x17
    // byteFlagIdx
    mov r1, #6
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    beq loc_811EE24
    cmp r4, #6
    beq loc_811EE1C
    cmp r4, #7
    bne loc_811EE24
loc_811EE1C:
    mov r0, #0x69 
    bl sound_play // () -> void
    b loc_811EE34
loc_811EE24:
    mov r0, #0x81
    bl sound_play // () -> void
    mov r0, #0x10
    strb r0, [r5]
    mov r0, #4
    strb r0, [r5,#1]
    b loc_811EE82
loc_811EE34:
    ldrb r0, [r5,#4]
    cmp r0, #8
    blt loc_811EE52
    mov r0, #0xe0
    bl sub_811F7EC
    beq loc_811EE82
    mov r0, #0x7f
    bl sound_play // () -> void
    ldrb r0, [r5,#3]
    strb r0, [r5,#4]
    mov r0, #3
    strb r0, [r5,#9]
    b loc_811EE82
loc_811EE52:
    mov r0, #0x10
    bl sub_811F7EC
    beq loc_811EE70
    mov r0, #0x7f
    bl sound_play // () -> void
    ldrb r0, [r5,#4]
    strb r0, [r5,#3]
    mov r0, #8
    strb r0, [r5,#4]
    mov r0, #0
    strb r0, [r5,#6]
    strb r0, [r5,#7]
    b loc_811EE82
loc_811EE70:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0,#4]
    mov r1, #8
    mov r2, #1
    ldrb r3, [r5,#4]
    bl sub_811FA22
    strb r0, [r5,#4]
loc_811EE82:
    bl sub_811F1B8
    bl sub_811F0C8
    bl sub_811F11C
    pop {r4,pc}
off_811EE90:    .word dword_811EB04
off_811EE94:    .word dword_811EB5C
.endfunc // sub_811EDB4

.func
.thumb_func
sub_811EE98:
    push {lr}
    mov r1, #0x10
    ldrsh r0, [r5,r1]
    sub r0, #4
    strh r0, [r5,#0x10]
    ldr r1, dword_811EEC8 // =0xFFFFFFE0 
    cmp r0, r1
    bgt loc_811EEB6
    strh r1, [r5,#0x10]
    mov r0, #0x10
    bl sub_8001B84
    bne loc_811EEB6
    mov r0, #0xc
    strb r0, [r5]
loc_811EEB6:
    bl sub_811F0C8
    bl sub_811F11C
    bl copyTiles_PET_811EF70 // () -> void
.endfunc // sub_811EE98

    bl copyTiles_onNaviSelect_811F54C // () -> void
    pop {pc}
dword_811EEC8:    .word 0xFFFFFFE0
    .word 0x20
.func
.thumb_func
sub_811EED0:
    push {lr}
    bl sub_8001850
    bl sub_8033978
    mov r0, #1
    bl sub_811EBF4
    mov r0, #0x7c 
    bl sound_play // () -> void
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    beq loc_811EEF8
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    bne loc_811EEF8
loc_811EEF8:
    mov r0, #8
    strb r0, [r5,#1]
    bl sub_811F0C8
    bl sub_811F11C
    bl copyTiles_PET_811EF70 // () -> void
.endfunc // sub_811EED0

    pop {pc}
    .balign 4, 0x00
.func
.thumb_func
sub_811EF0C:
    push {lr}
    bl sub_811F1B8
.endfunc // sub_811EF0C

    bl sub_811F214
    bl sub_811F0C8
    bl sub_811F11C
    bl copyTiles_PET_811EF70 // () -> void
    bl copyTiles_onNaviSelect_811F54C // () -> void
    pop {pc}
.func
.thumb_func
sub_811EF28:
    push {lr}
    mov r0, #0
    strh r0, [r5,#0x10]
    bl sub_8046664 // () -> void
    // a1
    ldr r0, off_811EF64 // =dword_811EB5C+72 
    bl sub_80465A0 // (void *a1) -> void
    mov r0, #4
    strb r0, [r5]
    ldr r0, off_811EF68 // =dword_811EAB8+28 
    bl sub_8001B1C
    ldr r0, off_811EF6C // =dword_811EAEC 
    bl sub_8001B1C
    bl sub_811F1B8
.endfunc // sub_811EF28

    bl sub_811F214
    bl sub_811F0C8
    bl sub_811F11C
    bl copyTiles_PET_811EF70 // () -> void
    bl copyTiles_onNaviSelect_811F54C // () -> void
    pop {pc}
    .balign 4, 0x00
off_811EF64:    .word dword_811EB5C+0x48
off_811EF68:    .word dword_811EAB8+0x1C
off_811EF6C:    .word dword_811EAEC
.func
.thumb_func
// () -> void
// [disable] PET: (The PET graphics on top is gone)
copyTiles_PET_811EF70:
    push {r4,r5,r7,lr}
    add r7, r5, #0
    // i
    mov r1, #0
    mov r0, #0x10
    // j
    ldrsh r0, [r7,r0]
    // cpyOff
    mov r2, #0
    // tileRefs
    ldr r3, off_811EF88 // =PET_Gfx_tileRefs 
    mov r4, #0x1e
    mov r5, #0x14
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    pop {r4,r5,r7,pc}
off_811EF88:    .word PET_Gfx_tileRefs
.endfunc // copyTiles_PET_811EF70

.func
.thumb_func
sub_811EF8C:
    push {lr}
    // initRefs
    ldr r0, off_811EF98 // =off_811EF9C 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    pop {pc}
    .balign 4, 0x00
off_811EF98:    .word off_811EF9C
off_811EF9C:    .word unk_86CBB7C
    .word 0x6015000
    .word 0x5C0
    .word unk_86CC13C
    .word 0x60155C0
    .word 0x12D4
    .word 0x0
.endfunc // sub_811EF8C

.func
.thumb_func
sub_811EFB8:
    push {r4-r7,lr}
    mov r6, r10
    ldr r6, [r6,#0x38]
    bl sub_8123360
    tst r0, r0
    bne loc_811EFCE
    mov r0, #0
    str r0, [r6,#8]
    str r0, [r6,#0xc]
    b loc_811EFE6
loc_811EFCE:
    bl getPETNaviSelect // () -> u8
    add r4, r0, #0
    mov r1, #0x40 
    bl sub_80137FE
    str r0, [r6,#8]
    add r0, r4, #0
    mov r1, #0x42 
    bl sub_80137FE
    str r0, [r6,#0xc]
loc_811EFE6:
    ldr r0, off_811F0C0 // =unk_86CB360 
    mov r1, #0xf0
    ldr r2, off_811F008 // =unk_200BEA0 
    mov r3, #0
    mov r4, #9
    mov r5, #1
    ldr r6, off_811F0C4 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_811EFB8

    ldr r0, off_811F008 // =unk_200BEA0 
    ldr r1, off_811F010 // =unk_200CC20 
    ldr r2, dword_811F00C // =0x6015000 
    mov r3, #9
    bl sub_811F5DC
    pop {r4-r7,pc}
off_811F008:    .word unk_200BEA0
dword_811F00C:    .word 0x6015000
off_811F010:    .word unk_200CC20
.func
.thumb_func
sub_811F014:
    push {r4-r7,lr}
    bl sub_803D06C
    mov r6, r10
    ldr r6, [r6,#0x38]
    str r0, [r6,#8]
    ldr r0, off_811F0C0 // =unk_86CB360 
    mov r1, #0xf1
    ldr r2, off_811F044 // =unk_200C0E0 
    mov r3, #0
    mov r4, #7
    mov r5, #1
    ldr r6, off_811F0C4 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_811F014

    ldr r0, off_811F044 // =unk_200C0E0 
    ldr r1, off_811F04C // =unk_200CF20 
    ldr r2, dword_811F048 // =0x6015240 
    mov r3, #7
    bl sub_811F5DC
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811F044:    .word unk_200C0E0
dword_811F048:    .word 0x6015240
off_811F04C:    .word unk_200CF20
.func
.thumb_func
sub_811F050:
    push {r4-r7,lr}
    bl sub_803D0F4
    mov r6, r10
    ldr r6, [r6,#0x38]
    str r0, [r6,#8]
    ldr r0, off_811F0C0 // =unk_86CB360 
    mov r1, #0xf2
    ldr r2, off_811F080 // =unk_200C2A0 
    mov r3, #0
    mov r4, #6
    mov r5, #1
    ldr r6, off_811F0C4 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_811F050

    ldr r0, off_811F080 // =unk_200C2A0 
    ldr r1, off_811F088 // =unk_200D220 
    ldr r2, dword_811F084 // =0x6015400 
    mov r3, #6
    bl sub_811F5DC
    pop {r4-r7,pc}
    .byte 0, 0
off_811F080:    .word unk_200C2A0
dword_811F084:    .word 0x6015400
off_811F088:    .word unk_200D220
.func
.thumb_func
sub_811F08C:
    push {r4-r7,lr}
    bl sub_811F290
    add r1, r0, #0
    ldr r0, off_811F0C0 // =unk_86CB360 
    ldr r2, off_811F0B4 // =unk_200C620 
    mov r3, #0
    mov r4, #0xc
    mov r5, #1
    ldr r6, off_811F0C4 // =dword_86A5D60 
    mov r7, #0
    bl render_graphicalText_8045F8C
.endfunc // sub_811F08C

    ldr r0, off_811F0B4 // =unk_200C620 
    ldr r1, off_811F0BC // =unk_200C920 
    ldr r2, dword_811F0B8 // =0x6015780 
    mov r3, #0xc
    bl sub_811F5DC
    pop {r4-r7,pc}
off_811F0B4:    .word unk_200C620
dword_811F0B8:    .word 0x6015780
off_811F0BC:    .word unk_200C920
off_811F0C0:    .word unk_86CB360
off_811F0C4:    .word dword_86A5D60
.func
.thumb_func
sub_811F0C8:
    push {lr}
    ldrb r0, [r5,#4]
    cmp r0, #8
    beq loc_811F0DE
    ldr r1, off_811F0F4 // =off_811F0F8 
    mov r0, #0
    ldr r0, [r1,r0]
    ldrh r0, [r0,#0x4] // (word_811F110 - 0x811f10c)
    ldr r1, off_811F0F0 // =word_3001B2C 
    strh r0, [r1]
    b locret_811F0EE
loc_811F0DE:
    ldr r0, off_811F0F0 // =word_3001B2C 
    ldr r1, off_811F0F4 // =off_811F0F8 
    ldrb r2, [r5,#6]
    ldrb r3, [r5,#7]
    bl sub_811F184
    strb r0, [r5,#7]
    strb r1, [r5,#6]
locret_811F0EE:
    pop {pc}
off_811F0F0:    .word word_3001B2C
off_811F0F4:    .word off_811F0F8
off_811F0F8:    .word dword_811F10C
    .word dword_811F10C
    .word dword_811F10C
    .word dword_811F10C
    .word dword_811F10C
dword_811F10C:    .word 0x87BF4
word_811F110:    .hword 0x19A
    .hword 0x6
    .word 0x64ECB, 0x0
.endfunc // sub_811F0C8

.func
.thumb_func
sub_811F11C:
    push {r4,lr}
    ldr r4, off_811F154 // =dword_811F158 
    mov r0, #0
loc_811F122:
    ldr r2, [r4,r0]
    ldr r1, dword_811F17C // =0x537F 
    strh r1, [r2]
    add r0, #4
    cmp r0, #0x20 
    blt loc_811F122
    ldrb r0, [r5,#4]
    cmp r0, #8
    beq loc_811F13C
    lsl r0, r0, #2
    ldr r2, [r4,r0]
    ldr r1, dword_811F178 // =0x7BFE 
    strh r1, [r2]
loc_811F13C:
    // entryIdx
    mov r0, #0x17
    // byteFlagIdx
    mov r1, #6
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    beq locret_811F150
    ldr r2, [r4,#0x1c] // (off_811F174 - 0x811f158)
    ldr r1, dword_811F180 // =0x5A7A 
    strh r1, [r2]
    ldr r2, [r4,#0x18] // (off_811F170 - 0x811f158)
    strh r1, [r2]
locret_811F150:
    pop {r4,pc}
    .balign 4, 0x00
off_811F154:    .word dword_811F158
dword_811F158:    .word 0x3001B4A, 0x3001B4C, 0x3001B4E, 0x3001B50, 0x3001B52
    .word 0x3001B54
off_811F170:    .word word_3001B56
off_811F174:    .word word_3001B58
dword_811F178:    .word 0x7BFE
dword_811F17C:    .word 0x537F
dword_811F180:    .word 0x5A7A
.endfunc // sub_811F11C

.func
.thumb_func
sub_811F184:
    push {r4-r7,lr}
    sub r3, #1
    ble loc_811F190
    add r0, r3, #0
    add r1, r2, #0
    b locret_811F1B6
loc_811F190:
    add r7, r0, #0
    add r6, r1, #0
    add r4, r2, #0
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r3, [r1,#6]
    lsl r3, r3, #2
    ldr r6, [r6,r3]
    lsl r2, r2, #2
    ldrh r0, [r6,r2]
    tst r0, r0
    bne loc_811F1AE
    mov r2, #0
    add r4, r2, #0
    ldrh r0, [r6,r2]
loc_811F1AE:
    strh r0, [r7]
    add r2, #2
    ldrh r0, [r6,r2]
    add r1, r4, #1
locret_811F1B6:
    pop {r4-r7,pc}
.endfunc // sub_811F184

.func
.thumb_func
sub_811F1B8:
    push {r4-r7,lr}
    ldr r7, off_811F1EC // =dword_811F1F0 
    mov r6, #0
loc_811F1BE:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_811F1F4 - 0x811f1f0)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
.endfunc // sub_811F1B8

    add r7, #8
    add r6, #1
    cmp r6, #2
    blt loc_811F1BE
    ldr r7, off_811F200 // =dword_811F204 
    mov r6, #0
loc_811F1D6:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_811F208 - 0x811f204)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
    add r7, #8
    add r6, #1
    cmp r6, #2
    blt loc_811F1D6
    pop {r4-r7,pc}
off_811F1EC:    .word dword_811F1F0
dword_811F1F0:    .word 0x40044011
dword_811F1F4:    .word 0xC385
    .word 0x244011, 0xC389
off_811F200:    .word dword_811F204
dword_811F204:    .word 0x4078406E
dword_811F208:    .word 0xC380
    .word 0x98006E, 0xC384
.func
.thumb_func
sub_811F214:
    push {r4-r7,lr}
    ldr r7, off_811F230 // =dword_811F234 
    mov r6, #0
loc_811F21A:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_811F238 - 0x811f234)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
.endfunc // sub_811F214

    add r7, #8
    add r6, #1
    cmp r6, #3
    blt loc_811F21A
    pop {r4-r7,pc}
off_811F230:    .word dword_811F234
dword_811F234:    .word 0x80804076
dword_811F238:    .word 0xE2BC
    .word 0x80A04076, 0xE2C4, 0x80C04076, 0xE2CC
.func
.thumb_func
sub_811F24C:
    push {r4-r7,lr}
    // r5 = 0200DF20
    ldrb r0, [r5,#0xc]
    add r0, #1
    cmp r0, #3
    bgt loc_811F258
    strb r0, [r5,#0xc]
loc_811F258:
    ldr r7, off_811F274 // =dword_811F278 
    mov r6, #0
loc_811F25C:
    ldr r0, [r7]
    ldr r1, [r7,#0x4] // (dword_811F27C - 0x811f278)
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
    add r7, #8
    add r6, #1
    ldrb r0, [r5,#0xc]
    cmp r6, r0
    blt loc_811F25C
    pop {r4-r7,pc}
off_811F274:    .word dword_811F278
dword_811F278:    .word 0x80804076
dword_811F27C:    .word 0xE2BC
    .byte 0x76 
    .byte 0x40 
    .byte 0xA0
    .byte 0x80
    .byte 0xC4
    .byte 0xE2
    .balign 4, 0x00
    .byte 0x76 
    .byte 0x40 
    .byte 0xC0
    .byte 0x80
    .byte 0xCC
    .byte 0xE2
    .byte 0, 0
.endfunc // sub_811F24C

.func
.thumb_func
sub_811F290:
    push {lr}
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r0, [r2,#4]
    cmp r0, #0x80
    blt loc_811F2A0
    sub r0, #0x80
    add r0, #7
loc_811F2A0:
    ldrb r1, [r2,#5]
    lsl r0, r0, #2
    ldr r2, off_811F2AC // =off_811F2B0 
    ldr r2, [r2,r0]
    ldrb r0, [r2,r1]
    pop {pc}
off_811F2AC:    .word off_811F2B0
off_811F2B0:    .word dword_811F328
    .word dword_811F338
    .word dword_811F348
    .word dword_811F358
    .word dword_811F368
    .word dword_811F378
    .word dword_811F388
    .word dword_811F398
    .word dword_811F3A8
    .word dword_811F3B8
    .word dword_811F3C8
    .word dword_811F3D8
    .word dword_811F3E8
    .word dword_811F3F8
    .word dword_811F408
    .word dword_811F418
    .word dword_811F428
    .word dword_811F438
    .word dword_811F448
    .word dword_811F458
    .word dword_811F468
    .word dword_811F478
    .word dword_811F488
    .word dword_811F498
    .word dword_811F4A8
    .word dword_811F4B8
    .word dword_811F4C8
    .word dword_811F4D8
    .word dword_811F4E8
    .word unk_811F4F8
dword_811F328:    .word 0xFFFF0100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F338:    .word 0x5040302, 0xFFFFFF06, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F348:    .word 0xA090807, 0xE0D0C0B, 0xFF11100F, 0xFFFFFFFF
dword_811F358:    .word 0x15141312, 0xFFFFFF16, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F368:    .word 0x1A191817, 0xFFFFFF1B, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F378:    .word 0x1F1E1D1C, 0xFFFFFF20, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F388:    .word 0x24232221, 0xFFFFFF25, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F398:    .word 0xFFFF2726, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F3A8:    .word 0xFF2A2928, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F3B8:    .word 0xFF2D2C2B, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F3C8:    .word 0xFF302F2E, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F3D8:    .word 0xFF333231, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F3E8:    .word 0x37363534, 0xFFFFFF38, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F3F8:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F408:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F418:    .word 0x3C3B3A39, 0x403F3E3D, 0xFFFF4241, 0xFFFFFFFF
dword_811F428:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F438:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
    .word 0xFFFFFFFF
dword_811F448:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F458:    .word 0x46454443, 0x4A494847, 0x4E4D4C4B, 0x5251504F
dword_811F468:    .word 0x56555453, 0x5A595857, 0x5E5D5C5B, 0x6261605F
dword_811F478:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F488:    .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F498:    .word 0xFF656463, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F4A8:    .word 0xFF686766, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F4B8:    .word 0xFFFF6A69, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F4C8:    .word 0xFF6D6C6B, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F4D8:    .word 0xFF706F6E, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_811F4E8:    .word 0x74737271, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
unk_811F4F8:    .byte 0x75 
    .byte 0x76 
    .byte 0x77 
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
.endfunc // sub_811F290

.func
.thumb_func
// () -> void
sub_811F508:
    push {r4,lr}
    mov r0, #0x10
    lsl r0, r0, #0x10
    ldrh r1, [r5,#0x10]
    tst r1, r1
    bne locret_811F538
    mov r2, #0
    add r1, r1, r2
    orr r0, r1
    ldr r1, dword_811F53C // =0x0 
    ldrb r2, [r5,#0xa]
    ldr r3, off_811F540 // =dword_811EB5C+116 
    ldr r4, dword_811F544 // =0x40000000 
    bl sub_811FAF4
    ldrb r1, [r5,#0xb]
    sub r1, #1
    strb r1, [r5,#0xb]
    bne locret_811F538
    strb r0, [r5,#0xa]
    ldr r1, dword_811F544+4 // =dword_811EB5C 
    bl sub_8120CC8
    strb r1, [r5,#0xb]
locret_811F538:
    pop {r4,pc}
    .byte  0
    .byte  0
dword_811F53C:    .word 0x0
off_811F540:    .word dword_811EB5C+0x74
dword_811F544:    .word 0x40000000, 0x811EBDA
.endfunc // sub_811F508

.func
.thumb_func
// () -> void
copyTiles_onNaviSelect_811F54C:
    push {r4-r7,lr}
    sub sp, sp, #8
    mov r0, #0
    str r0, [sp,#4]
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    beq loc_811F560
    // if (naviSelect != 0)
    mov r0, #1
    str r0, [sp,#4]
loc_811F560:
    ldrb r0, [r5,#0xd]
    sub r0, #1
    strb r0, [r5,#0xd]
    bne loc_811F576
    mov r0, #2
    strb r0, [r5,#0xd]
    ldrb r0, [r5,#0xe]
    add r0, #1
    cmp r0, #8
    bge loc_811F576
    strb r0, [r5,#0xe]
loc_811F576:
    ldrb r0, [r5,#0xe]
    str r0, [sp]
    ldr r6, off_811F5B4 // =unk_811F5B8 
    add r7, r5, #0
loc_811F57E:
    mov r0, #0x10
    ldrsh r0, [r7,r0]
    // j
    add r0, #4
    mov r1, #3
    ldr r3, [sp]
    lsl r2, r3, #1
    // i
    add r1, r1, r2
    cmp r3, #3
    bne loc_811F598
    ldr r2, [sp,#4]
    tst r2, r2
    beq loc_811F598
    mov r3, #8
loc_811F598:
    lsl r3, r3, #2
    // tileRefs
    ldr r3, [r6,r3]
    // cpyOff
    mov r2, #0
    mov r4, #9
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
    ldr r3, [sp]
    sub r3, #1
    str r3, [sp]
    bge loc_811F57E
    add sp, sp, #8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811F5B4:    .word unk_811F5B8
unk_811F5B8:    .byte 0x1C
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0x40 
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0x64 
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0x88
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0xAC
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0xD0
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0xF4
    .byte 0xB2
    .byte 0x6C 
    .byte  8
    .byte 0x18
    .byte 0xB3
    .byte 0x6C 
    .byte  8
    .byte 0x3C 
    .byte 0xB3
    .byte 0x6C 
    .byte  8
.endfunc // copyTiles_onNaviSelect_811F54C

.func
.thumb_func
sub_811F5DC:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    str r1, [sp,#8]
    str r2, [sp,#0xc]
    str r3, [sp,#0x10]
    str r3, [sp,#0x14]
    mov r2, #0
    str r2, [sp]
    str r2, [sp,#4]
    add r6, r0, #0
    add r7, r1, #0
    mov r5, #0
    mov r4, #0
    mov r3, #0
loc_811F5F8:
    ldr r0, [sp,#0x14]
    sub r0, #4
    bge loc_811F66A
    ldr r0, [sp,#0x14]
    sub r0, #2
    bge loc_811F62C
    ldr r0, [sp,#0x14]
    sub r0, #1
    blt loc_811F6A8
    str r0, [sp,#0x14]
    mov r2, #0
loc_811F60E:
    ldr r0, [r6,r3]
    str r0, [r7,r4]
    add r4, #4
    add r3, #4
    add r2, #4
    cmp r2, #0x40 
    blt loc_811F60E
    mov r0, #0
    str r0, [sp,#4]
    mov r5, #0
    mov r3, #0x40 
    ldr r0, [sp]
    add r3, r3, r0
    str r3, [sp]
    b loc_811F5F8
loc_811F62C:
    str r0, [sp,#0x14]
loc_811F62E:
    mov r2, #0
loc_811F630:
    ldr r0, [r6,r3]
    str r0, [r7,r4]
    add r4, #4
    add r3, #4
    add r2, #4
    cmp r2, #0x20 
    blt loc_811F630
    add r3, #0x20 
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #2
    blt loc_811F62E
    ldr r0, [sp]
    mov r3, #0x20 
    add r3, r3, r0
    mov r0, #0
    str r0, [sp,#4]
    add r5, #1
    cmp r5, #2
    blt loc_811F62E
    mov r0, #0
    str r0, [sp,#4]
    mov r5, #0
    mov r3, #0x80
    ldr r0, [sp]
    add r3, r3, r0
    str r3, [sp]
    b loc_811F5F8
loc_811F66A:
    str r0, [sp,#0x14]
loc_811F66C:
    mov r2, #0
loc_811F66E:
    ldr r0, [r6,r3]
    str r0, [r7,r4]
    add r4, #4
    add r3, #4
    add r2, #4
    cmp r2, #0x20 
    blt loc_811F66E
    add r3, #0x20 
    ldr r0, [sp,#4]
    add r0, #1
    str r0, [sp,#4]
    cmp r0, #4
    blt loc_811F66C
    ldr r0, [sp]
    mov r3, #0x20 
    add r3, r3, r0
    mov r0, #0
    str r0, [sp,#4]
    add r5, #1
    cmp r5, #2
    blt loc_811F66C
    mov r0, #0
    str r0, [sp,#4]
    mov r5, #0
    ldr r3, off_811F6BC // =0x100 
    ldr r0, [sp]
    add r3, r3, r0
    str r3, [sp]
    b loc_811F5F8
loc_811F6A8:
    ldr r0, [sp,#8]
    ldr r1, [sp,#0xc]
    ldr r2, [sp,#0x10]
    mov r3, #0x40 
    mul r2, r3
    bl loc_8000AC8
.endfunc // sub_811F5DC

    add sp, sp, #0x18
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811F6BC:    .word 0x100
.func
.thumb_func
sub_811F6C0:
    push {r4,r5,lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x34]
    add r4, r0, #0
    // size
    mov r1, #0x80
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r5, off_811F704 // =byte_200DF20 
    ldrb r0, [r5,#0x4] // (byte_200DF24 - 0x200df20)
    lsl r0, r0, #2
    strb r0, [r4]
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrh r1, [r0,#4]
    strh r1, [r0,#0xc]
    pop {r4,r5,pc}
.endfunc // sub_811F6C0

.func
.thumb_func
sub_811F6E0:
    push {r4,r5,lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x34]
    add r4, r0, #0
    // size
    mov r1, #0x80
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r5, off_811F704 // =byte_200DF20 
    mov r0, #0x10
    strb r0, [r4]
    mov r0, #1
    strb r0, [r4,#0xd]
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrh r1, [r0,#4]
    strh r1, [r0,#0xc]
    pop {r4,r5,pc}
    .balign 4, 0x00
off_811F704:    .word byte_200DF20
.endfunc // sub_811F6E0

.func
.thumb_func
sub_811F708:
    push {lr}
    bl sub_811F728
    mov r0, r10
    ldr r0, [r0,#0x3c]
    mov r1, #8
    strb r1, [r0,#0x16]
    ldr r1, off_811F770 // =byte_200DF20 
    mov r0, #0x14
    strb r0, [r1]
    mov r0, #0
    strb r0, [r1,#0x1] // (byte_200DF21 - 0x200df20)
    strb r0, [r1,#0x8] // (byte_200DF28 - 0x200df20)
    mov r0, #3
    strb r0, [r1,#0x9] // (byte_200DF29 - 0x200df20)
    pop {pc}
.endfunc // sub_811F708

.func
.thumb_func
sub_811F728:
    push {lr}
    mov r0, r10
    ldr r0, [r0]
    mov r1, #4
    strb r1, [r0]
    mov r0, r10
    ldr r0, [r0,#0x3c]
    mov r1, #0
    strb r1, [r0]
    mov r0, r10
    ldr r0, [r0,#8]
    ldr r1, off_811F76C // =0x40 
    strh r1, [r0]
    mov r0, #6
    bl sub_80015FC
    bl sub_809F68C
    bl chatbox_8040818
    mov r0, #0x40 
    bl chatbox_8045F2C // (int a1) ->
    pop {pc}
.endfunc // sub_811F728

.func
.thumb_func
sub_811F758:
    push {lr}
    bl sub_8005524
.endfunc // sub_811F758

    mov r0, r10
    ldr r0, [r0,#0x34]
    mov r1, #0x18
    strb r1, [r0]
    bl sub_8129248
    pop {pc}
off_811F76C:    .word 0x40
off_811F770:    .word byte_200DF20
.func
.thumb_func
// () -> void
menuControl_cb_openSubmenu:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x34] // Toolkit.submenu
    ldr r0, off_811F79C // =jt_811F7A0 
    ldrb r1, [r5]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r0, [r5]
    cmp r0, #0x18
    bne loc_811F794
    ldrb r0, [r5,#1]
    cmp r0, #0x18
    beq locret_811F798
    cmp r0, #0x1c
    beq locret_811F798
loc_811F794:
    bl change_20013F0_800151C // () -> int
locret_811F798:
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811F79C:    .word jt_811F7A0
jt_811F7A0:    .word sub_8123434+1
    .word ho_8123F5C+1
    .word sub_8124B3C+1
    .word sub_8126B4C+1
    .word menuControl_cb_email+1
    .word sub_8128730+1
    .word sub_81291E8+1
    .word sub_8132B88+1
    .word sub_8133200+1
    .word sub_81356D4+1
    .word loc_8136DE0+1
    .word loc_81378B4+1
    .word loc_8128CBC+1
    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
.endfunc // menuControl_cb_openSubmenu

.func
.thumb_func
sub_811F7EC:
    mov r1, r10
    ldr r1, [r1,#4]
    ldrh r1, [r1,#2]
    tst r0, r1
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_811F7EC

.func
.thumb_func
sub_811F7F8:
    push {r4-r7,lr}
    mov r6, r8
    push {r6}
    sub sp, sp, #0xc
    str r1, [sp]
    str r2, [sp,#8]
    mov r4, #2
    bic r2, r4
    mov r4, #0
    str r4, [sp,#4]
    mov r4, #0xc0
    bic r1, r4
    mov r8, r3
    mov r12, r2
    sub r1, #1
    mov r9, r1
    mov r6, #0x1e
    add r6, r8
    ldrh r6, [r5,r6]
    sub r6, #1
    mov r2, #0x20 
    add r2, r8
    ldrh r2, [r5,r2]
    mov r3, #0x24 
    add r3, r8
    ldrh r3, [r5,r3]
    mov r4, r9
    add r4, #1
    ldr r1, [sp]
    lsr r1, r1, #7
    tst r1, r1
    bne loc_811F844
    ldr r1, off_811F914 // =0x200 
    tst r1, r0
    beq loc_811F844
    mov r1, #1
    str r1, [sp,#4]
    b loc_811F86E
loc_811F844:
    ldr r1, [sp]
    lsl r1, r1, #1
    lsr r1, r1, #7
    tst r1, r1
    bne loc_811F876
    mov r4, #1
    mov r1, #0x40 
    tst r1, r0
    beq loc_811F876
    sub r2, r2, r4
    bge loc_811F876
    mov r2, #0
    mov r7, r12
    cmp r7, #0
    beq loc_811F86E
    cmp r3, #0
    bne loc_811F86E
    mov r2, r9
    mov r3, r9
    sub r3, r6, r3
    add r3, #1
loc_811F86E:
    sub r3, r3, r4
    bgt loc_811F8D2
    mov r3, #0
    b loc_811F8D2
loc_811F876:
    mov r4, r9
    add r4, #1
    ldr r1, [sp]
    lsr r1, r1, #7
    tst r1, r1
    bne loc_811F88E
    ldr r1, off_811F918 // =0x100 
    tst r1, r0
    beq loc_811F88E
    mov r1, #1
    str r1, [sp,#4]
    b loc_811F8AE
loc_811F88E:
    ldr r1, [sp]
    lsl r1, r1, #1
    lsr r1, r1, #7
    tst r1, r1
    bne loc_811F8D2
    mov r4, #1
    mov r1, #0x80
    tst r1, r0
    beq loc_811F8D2
    cmp r6, r9
    blt loc_811F8A6
    mov r6, r9
loc_811F8A6:
    add r2, r2, r4
    cmp r2, r6
    ble loc_811F8D2
    add r2, r6, #0
loc_811F8AE:
    cmp r6, r9
    blt loc_811F8D2
    mov r6, #0x1e
    add r6, r8
    ldrh r6, [r5,r6]
    mov r0, r9
    sub r6, r6, r0
    sub r6, #1
    add r3, r3, r4
    cmp r3, r6
    ble loc_811F8D2
    add r3, r6, #0
    mov r7, r12
    cmp r7, #0
    beq loc_811F8D2
    mov r2, #0
    mov r3, #0
    b loc_811F8D2
loc_811F8D2:
    mov r4, #0x20 
    add r4, r8
    ldrh r4, [r5,r4]
    cmp r2, r4
    bne loc_811F8EA
    mov r4, #0x24 
    add r4, r8
    ldrh r4, [r5,r4]
    cmp r3, r4
    bne loc_811F8EA
    mov r7, #0
    b loc_811F8FA
loc_811F8EA:
    ldr r0, [sp,#8]
    mov r1, #2
    tst r0, r1
    bne loc_811F8F8
    mov r0, #0x7f
    bl sound_play // () -> void
loc_811F8F8:
    mov r7, #0xff
loc_811F8FA:
    mov r0, #0x20 
    add r0, r8
    strh r2, [r5,r0]
    mov r0, #0x24 
    add r0, r8
    strh r3, [r5,r0]
    ldr r1, [sp,#4]
    add sp, sp, #0xc
    pop {r0}
    mov r8, r0
    add r0, r7, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811F914:    .word 0x200
off_811F918:    .word 0x100
.endfunc // sub_811F7F8

.func
.thumb_func
sub_811F91C:
    push {r4-r7,lr}
    mov r6, r8
    push {r6}
    sub sp, sp, #4
    str r1, [sp]
    mov r4, #0x80
    bic r1, r4
    mov r8, r3
    mov r12, r2
    sub r1, #1
    mov r9, r1
    mov r6, #0x1e
    add r6, r8
    ldrh r6, [r5,r6]
    sub r6, #1
    mov r2, #0x20 
    add r2, r8
    ldrh r2, [r5,r2]
    mov r3, #0x24 
    add r3, r8
    ldrh r3, [r5,r3]
    mov r4, #4
    add r4, #1
    ldr r1, [sp]
    lsr r1, r1, #7
    tst r1, r1
    bne loc_811F958
    ldr r1, off_811FA04 // =0x200 
    tst r1, r0
    bne loc_811F978
loc_811F958:
    mov r4, #1
    mov r1, #0x40 
    tst r1, r0
    beq loc_811F980
    sub r2, r2, r4
    bge loc_811F980
    mov r2, #0
    mov r7, r12
    cmp r7, #0
    beq loc_811F978
    cmp r3, #0
    bne loc_811F978
    mov r2, r9
    mov r3, r9
    sub r3, r6, r3
    add r3, #1
loc_811F978:
    sub r3, r3, r4
    bgt loc_811F9CC
    mov r3, #0
    b loc_811F9CC
loc_811F980:
    mov r4, #4
    add r4, #1
    ldr r1, [sp]
    lsr r1, r1, #7
    tst r1, r1
    bne loc_811F992
    ldr r1, off_811FA08 // =0x100 
    tst r1, r0
    bne loc_811F9A8
loc_811F992:
    mov r4, #1
    mov r1, #0x80
    tst r1, r0
    beq loc_811F9CC
    cmp r6, r9
    blt loc_811F9A0
    mov r6, r9
loc_811F9A0:
    add r2, r2, r4
    cmp r2, r6
    ble loc_811F9CC
    add r2, r6, #0
loc_811F9A8:
    cmp r6, r9
    blt loc_811F9CC
    mov r6, #0x1e
    add r6, r8
    ldrh r6, [r5,r6]
    mov r0, r9
    sub r6, r6, r0
    sub r6, #1
    add r3, r3, r4
    cmp r3, r6
    ble loc_811F9CC
    add r3, r6, #0
    mov r7, r12
    cmp r7, #0
    beq loc_811F9CC
    mov r2, #0
    mov r3, #0
    b loc_811F9CC
loc_811F9CC:
    mov r4, #0x20 
    add r4, r8
    ldrh r4, [r5,r4]
    cmp r2, r4
    bne loc_811F9E4
    mov r4, #0x24 
    add r4, r8
    ldrh r4, [r5,r4]
    cmp r3, r4
    bne loc_811F9E4
    mov r7, #0
    b loc_811F9EC
loc_811F9E4:
    mov r0, #0x7f
    bl sound_play // () -> void
    mov r7, #0xff
loc_811F9EC:
    mov r0, #0x20 
    add r0, r8
    strh r2, [r5,r0]
    mov r0, #0x24 
    add r0, r8
    strh r3, [r5,r0]
    add sp, sp, #4
    pop {r0}
    mov r8, r0
    add r0, r7, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_811FA04:    .word 0x200
off_811FA08:    .word 0x100
.endfunc // sub_811F91C

.func
.thumb_func
sub_811FA0C:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r3, [sp,#8]
    mov r4, #0x20 
    str r4, [sp]
    mov r4, #0x10
    str r4, [sp,#4]
    str r2, [sp,#0xc]
    mov r4, #2
    bic r2, r4
    b loc_811FA36
.endfunc // sub_811FA0C

.func
.thumb_func
sub_811FA22:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r3, [sp,#8]
    mov r4, #0x40 
    str r4, [sp]
    mov r4, #0x80
    str r4, [sp,#4]
    str r2, [sp,#0xc]
    mov r4, #2
    bic r2, r4
loc_811FA36:
    add r4, r3, #0
    mov r6, #0
    ldr r3, [sp]
    tst r0, r3
    beq loc_811FA5C
    mov r6, #1
    sub r4, #1
    cmp r4, #0
    bge loc_811FA7E
    mov r6, #0
    tst r2, r2
    beq loc_811FA74
    mov r6, #1
    sub r4, r1, #1
    ldr r3, [sp,#8]
    cmp r4, r3
    bne loc_811FA7E
    mov r6, #0
    b loc_811FA7E
loc_811FA5C:
    ldr r3, [sp,#4]
    tst r0, r3
    beq loc_811FA7E
    mov r6, #1
    add r4, #1
    cmp r4, r1
    blt loc_811FA7E
    tst r2, r2
    bne loc_811FA74
    sub r4, #1
    mov r6, #0
    b loc_811FA90
loc_811FA74:
    mov r4, #0
    ldr r3, [sp,#8]
    cmp r4, r3
    beq loc_811FA90
    mov r6, #1
loc_811FA7E:
    tst r6, r6
    beq loc_811FA90
    ldr r0, [sp,#0xc]
    mov r1, #2
    tst r0, r1
    bne loc_811FA90
    mov r0, #0x7f
    bl sound_play // () -> void
loc_811FA90:
    add r0, r4, #0
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811FA22

.func
.thumb_func
sub_811FA98:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r6, [sp,#0xc]
    add r6, r1, #0
    lsr r6, r6, #0x10
    str r6, [sp]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r6, #0xff
    and r6, r1
    str r6, [sp,#8]
    lsr r1, r1, #8
    str r1, [sp,#4]
    cmp r0, #0
    blt loc_811FAEC
    cmp r2, r4
    ble loc_811FAEC
    sub r2, r2, r4
    push {r0,r1,r3}
    lsl r0, r7, #0x10
    lsl r1, r2, #4
    svc 6
    add r2, r0, #0
    pop {r0,r1,r3}
    mul r2, r3
    lsr r2, r2, #0xc
    lsl r1, r0, #0x10
    lsr r1, r1, #0x10
    add r1, r1, r2
    lsr r0, r0, #0x10
    lsl r0, r0, #0x10
    orr r0, r1
    ldr r1, dword_811FAF0 // =0x8000 
    orr r0, r1
    ldr r2, [sp]
    lsl r2, r2, #0xa
    ldr r1, [sp,#0xc]
    orr r1, r2
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    bl sub_802FE28
loc_811FAEC:
    add sp, sp, #0x10
    pop {r4-r7,pc}
dword_811FAF0:    .word 0x8000
.endfunc // sub_811FA98

.func
.thumb_func
sub_811FAF4:
    push {r4-r7,lr}
    sub sp, sp, #0xc
    add r6, r1, #0
    lsr r6, r6, #0x10
    str r6, [sp]
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    mov r7, #0xff
    and r7, r1
    str r7, [sp,#8]
    lsr r1, r1, #8
    str r1, [sp,#4]
    add r7, r2, #0
    lsl r7, r7, #1
    lsr r7, r7, #1
    cmp r0, #0
    blt loc_811FB5A
    orr r4, r0
    add r6, r4, #0
    lsr r0, r2, #0x1f
    beq loc_811FB2A
    mov r0, r10
    ldr r0, [r0,#0x24]
    ldrh r0, [r0]
    mov r1, #3
    tst r0, r1
    beq loc_811FB5A
loc_811FB2A:
    lsl r2, r2, #1
    ldrh r0, [r3,r2]
    ldr r1, dword_811FB60 // =0xFFFF 
    cmp r0, r1
    bne loc_811FB3A
    sub r2, #2
    ldrh r0, [r3,r2]
    b loc_811FB42
loc_811FB3A:
    tst r0, r0
    bne loc_811FB42
    ldr r0, [r3]
    mov r2, #0
loc_811FB42:
    add r7, r2, #0
    lsr r7, r7, #1
    add r7, #1
    ldr r2, [sp]
    lsl r2, r2, #0xa
    orr r0, r2
    add r1, r0, #0
    add r0, r6, #0
    ldr r2, [sp,#4]
    ldr r3, [sp,#8]
    bl sub_802FE28
loc_811FB5A:
    add r0, r7, #0
    add sp, sp, #0xc
    pop {r4-r7,pc}
dword_811FB60:    .word 0xFFFF
.endfunc // sub_811FAF4

.func
.thumb_func
sub_811FB64:
    push {lr}
    strb r0, [r5,#1]
    mov r0, #0x83
    bl sound_play // () -> void
    mov r0, #0xc
    mov r1, #0x10
    bl engine_setScreeneffect // (int a1, int a2) -> void
    pop {pc}
.endfunc // sub_811FB64

.func
.thumb_func
sub_811FB78:
    mov r1, r10
    ldr r1, [r1,#0x40]
    mov r0, #0
    strb r0, [r1,#6]
    mov pc, lr
    .balign 4, 0x00
.endfunc // sub_811FB78

.func
.thumb_func
sub_811FB84:
    push {r4-r7,lr}
    ldr r4, dword_811FC0C // =0xFFFFFFFF 
    lsl r1, r1, #2
    add r7, r1, #0
    ldr r3, off_811FBB8 // =off_811FBBC 
    ldr r3, [r3,r1]
    mov r6, #0
    mov r1, #0
loc_811FB94:
    ldr r2, [r3,r1]
    cmp r2, r0
    bne loc_811FBAC
    ldr r3, off_811FBD0 // =off_811FBD4 
    ldr r3, [r3,r7]
    ldr r3, [r3,r1]
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldrb r1, [r1,#6]
    lsl r1, r1, #2
    ldr r4, [r3,r1]
    b loc_811FBB4
loc_811FBAC:
    add r1, #4
    ldr r2, dword_811FC0C // =0xFFFFFFFF 
    cmp r2, r0
    bne loc_811FB94
loc_811FBB4:
    add r0, r4, #0
    pop {r4-r7,pc}
off_811FBB8:    .word off_811FBBC
off_811FBBC:    .word dword_811FBE8
    .word dword_811FC04
    .word dword_811FC20
    .word dword_811FC84
    .word dword_811FC94
off_811FBD0:    .word off_811FBD4
off_811FBD4:    .word off_811FBF4
    .word off_811FC10
    .word off_811FC44
    .word off_811FC8C
    .word off_811FC9C
dword_811FBE8:    .word 0x86C9D8C, 0x86C9DAC, 0xFFFFFFFF
off_811FBF4:    .word dword_811FBFC
    .word dword_811FC00
dword_811FBFC:    .word 0x86C9D8C
dword_811FC00:    .word 0x86C9DAC
dword_811FC04:    .word 0x86C9D8C, 0x86C9DAC
dword_811FC0C:    .word 0xFFFFFFFF
off_811FC10:    .word dword_811FC18
    .word dword_811FC1C
dword_811FC18:    .word 0x86C9D8C
dword_811FC1C:    .word 0x86C9DAC
dword_811FC20:    .word 0x86C9108, 0x86C9B54, 0x886C9AA4, 0x872CF94, 0x86C9AF4
    .word 0x86C9B14, 0x86C9B34, 0x86C9B94, 0xFFFFFFFF
off_811FC44:    .word dword_811FC64
    .word dword_811FC68
    .word dword_811FC6C
    .word dword_811FC70
    .word dword_811FC74
    .word dword_811FC78
    .word dword_811FC7C
    .word dword_811FC80
dword_811FC64:    .word 0x86C9108
dword_811FC68:    .word 0x86C9B54
dword_811FC6C:    .word 0x886C9AA4
dword_811FC70:    .word 0x872CF94
dword_811FC74:    .word 0x86C9AF4
dword_811FC78:    .word 0x86C9B14
dword_811FC7C:    .word 0x86C9B34
dword_811FC80:    .word 0x86C9B94
dword_811FC84:    .word 0x886D3CF4, 0xFFFFFFFF
off_811FC8C:    .word dword_811FC90
dword_811FC90:    .word 0x886D3CF4
dword_811FC94:    .word 0x86DAC40, 0xFFFFFFFF
off_811FC9C:    .word unk_811FCA0
unk_811FCA0:    .byte 0x40 
    .byte 0xAC
    .byte 0x6D 
    .byte  8
.endfunc // sub_811FB84

.func
.thumb_func
sub_811FCA4:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    str r2, [sp,#0x10]
    add r5, r1, #0
    str r5, [sp,#0xc]
    str r3, [sp,#0x14]
    add r7, r0, #0
    str r7, [sp,#8]
    b loc_811FCD0
    .balign 4, 0x00
.endfunc // sub_811FCA4

.func
.thumb_func
sub_811FCB8:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    str r2, [sp,#0x10]
    add r5, r1, #0
    str r5, [sp,#0xc]
    str r3, [sp,#0x14]
    mov r7, r10
    ldr r7, [r7,#0x48]
    mov r2, #0x3c 
    mul r0, r2
    add r7, r7, r0
    str r7, [sp,#8]
loc_811FCD0:
    add r0, r5, #0
    bl sub_811FE34
    ldr r0, [sp,#0x14]
    mov r1, #0x78 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
loc_811FCDE:
    ldrh r0, [r7]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    str r0, [sp]
    str r1, [sp,#4]
    lsl r4, r0, #7
    orr r4, r1
    ldr r1, [r5,#0x1c]
    orr r1, r4
    str r1, [r5,#0x1c]
    // idx
    ldr r0, [sp]
    tst r0, r0
    beq loc_811FDB0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r6, r0, #0
    mov r3, #0
    add r2, r0, #0
loc_811FD02:
    ldrb r1, [r2,r3]
    ldr r0, [sp,#4]
    cmp r1, r0
    beq loc_811FD12
    add r3, #1
    cmp r3, #3
    ble loc_811FD02
    b loc_811FDB0
loc_811FD12:
    ldr r2, [sp,#0x10]
    tst r2, r2
    bne loc_811FD22
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #1
    bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
loc_811FD22:
    ldrh r0, [r6,#0x1c]
    lsl r2, r0, #7
    ldr r3, [sp,#4]
    orr r3, r2
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r5]
    ldr r0, [sp,#4]
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r5,#8]
    add r4, r3, #0
    ldrh r0, [r6,#0x18]
    lsl r0, r0, #0x10
    orr r0, r4
    str r0, [r5,#4]
    ldrb r0, [r6,#6]
    bl sub_811FF54
    lsl r0, r0, #0x10
    orr r0, r4
    str r0, [r5,#0x10]
    ldrb r0, [r6,#8]
    lsl r0, r0, #0x10
    orr r0, r4
    str r0, [r5,#0x18]
    ldr r0, [sp]
    bl sub_811FF80
    lsl r0, r0, #0x10
    orr r0, r4
    str r0, [r5,#0xc]
    mov r0, #1
    lsl r0, r0, #0x10
    orr r0, r4
    str r0, [r5,#0x14]
    ldr r0, [sp,#0x14]
    bl sub_811FE48
    add r5, #0x20 
    add r7, #2
    ldr r0, off_811FE44 // =0x3C 
    ldr r1, [sp,#8]
    add r0, r0, r1
    cmp r7, r0
    blt loc_811FCDE
    mov r6, #0
    mov r4, #0
    ldr r5, [sp,#0xc]
loc_811FD84:
    ldr r7, [sp,#0x14]
loc_811FD86:
    ldrh r0, [r5,#0x1c]
    ldrh r1, [r7]
    cmp r0, r1
    beq loc_811FD92
    add r7, #4
    b loc_811FD86
loc_811FD92:
    ldrh r1, [r7,#2]
    lsl r1, r1, #0x10
    ldr r2, [r5,#0x14]
    lsl r2, r2, #0x10
    lsr r2, r2, #0x10
    orr r2, r1
    str r2, [r5,#0x14]
    add r5, #0x20 
    add r4, #1
    cmp r4, #0x1e
    blt loc_811FD84
    add sp, sp, #0x18
    mov r0, #0
    tst r0, r0
    pop {r4-r7,pc}
loc_811FDB0:
    add sp, sp, #0x18
    mov r0, #1
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_811FCB8

.func
.thumb_func
sub_811FDB8:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    add r4, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r6, [r0,#5]
    cmp r6, #1
    ble loc_811FE22
    mov r5, #0
    mov r7, r10
    ldr r7, [r7,#0x48]
    str r7, [sp,#8]
    str r7, [sp,#0x10]
loc_811FDD2:
    cmp r4, r5
    beq loc_811FE1C
    mov r0, #0x3c 
    mul r0, r5
    ldr r7, [sp,#0x10]
    add r7, r7, r0
    str r7, [sp,#8]
loc_811FDE0:
    ldrh r0, [r7]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    str r0, [sp]
    str r1, [sp,#4]
    tst r0, r0
    beq loc_811FE2A
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r2, r0, #0
    mov r3, #0
loc_811FDF6:
    ldrb r1, [r2,r3]
    ldr r0, [sp,#4]
    cmp r1, r0
    beq loc_811FE06
    add r3, #1
    cmp r3, #3
    ble loc_811FDF6
    b loc_811FE2A
loc_811FE06:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #1
    bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
    add r7, #2
    ldr r0, off_811FE44 // =0x3C 
    ldr r1, [sp,#8]
    add r0, r0, r1
    cmp r7, r0
    blt loc_811FDE0
loc_811FE1C:
    add r5, #1
    sub r6, #1
    bgt loc_811FDD2
loc_811FE22:
    add sp, sp, #0x14
    mov r0, #0
    tst r0, r0
    pop {r4-r7,pc}
loc_811FE2A:
    add sp, sp, #0x14
    mov r0, #1
    tst r0, r0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_811FDB8

.func
.thumb_func
sub_811FE34:
    push {lr}
    ldr r1, off_811FE40 // =0x3C0 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {pc}
    .byte 0, 0
off_811FE40:    .word 0x3C0
off_811FE44:    .word 0x3C
.endfunc // sub_811FE34

.func
.thumb_func
sub_811FE48:
    push {r4-r7,lr}
    add r4, r0, #0
    mov r3, #0
    ldrh r0, [r5,#0x1c]
loc_811FE50:
    ldrh r1, [r4,r3]
    tst r1, r1
    beq loc_811FE6C
    cmp r0, r1
    bne loc_811FE64
    add r3, #2
    ldrh r0, [r4,r3]
    add r0, #1
    strh r0, [r4,r3]
    b locret_811FE74
loc_811FE64:
    add r3, #4
    cmp r3, #0x78 
    blt loc_811FE50
    b locret_811FE74
loc_811FE6C:
    strh r0, [r4,r3]
    add r3, #2
    mov r0, #1
    strh r0, [r4,r3]
locret_811FE74:
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_20343E0
.endfunc // sub_811FE48

.func
.thumb_func
sub_811FE7C:
    push {r4-r7,lr}
    sub sp, sp, #0x18
    str r1, [sp,#0x14]
    str r0, [sp,#0x10]
    add r6, r0, #0
    bl sub_811FF6C
    mov r7, #1
loc_811FE8C:
    // idx
    add r0, r7, #0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r5, r0, #0
    mov r4, #0
    ldr r1, [sp,#0x14]
    tst r1, r1
    beq loc_811FEB0
    ldr r0, dword_811FF4C // =0x137 
    cmp r7, r0
    beq loc_811FF34
    ldrb r1, [r5,#7]
    cmp r1, #2
    beq loc_811FF34
    ldrb r1, [r5,#9]
    mov r0, #0x20 
    tst r1, r0
    bne loc_811FF34
loc_811FEB0:
    ldrb r1, [r5,#0x16]
    mov r0, #0x20 
    tst r1, r0
    bne loc_811FF34
    // searchItem
    ldrb r1, [r5,r4]
    str r1, [sp]
    cmp r1, #0xff
    beq loc_811FF2E
    // idx
    add r0, r7, #0
    bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
    ldrb r1, [r0]
    str r1, [sp,#4]
    tst r1, r1
    beq loc_811FF2E
    add r1, r3, #0
    bl sub_81376CC
    add r3, r7, #0
    str r3, [sp,#8]
    lsl r3, r3, #7
    ldr r1, [sp]
    orr r3, r1
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#0x1c]
    ldrh r3, [r5,#0x1c]
    lsl r3, r3, #7
    ldr r1, [sp]
    orr r3, r1
    ldrh r0, [r5,#0x1c]
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6]
    ldr r0, [sp]
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#8]
    ldrh r0, [r5,#0x18]
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#4]
    ldrb r0, [r5,#6]
    bl sub_811FF54
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#0x10]
    ldrb r0, [r5,#8]
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#0x18]
    ldr r0, [sp,#4]
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#0x14]
    ldr r0, [sp,#8]
    bl sub_811FF80
    lsl r0, r0, #0x10
    orr r0, r3
    str r0, [r6,#0xc]
    add r6, #0x20 
loc_811FF2E:
    add r4, #1
    cmp r4, #3
    ble loc_811FEB0
loc_811FF34:
    add r7, #1
    ldr r0, dword_811FF50 // =0x13A 
    cmp r7, r0
    ble loc_811FE8C
    ldr r1, [sp,#0x10]
    add sp, sp, #0x18
    add r0, r6, #0
    sub r0, r0, r1
    mov r1, #0x20 
    svc 6
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_811FF4C:    .word 0x137
dword_811FF50:    .word 0x13A
.endfunc // sub_811FE7C

.func
.thumb_func
sub_811FF54:
    push {lr}
    ldr r1, off_811FF5C // =unk_811FF60 
    ldrb r0, [r1,r0]
    pop {pc}
off_811FF5C:    .word unk_811FF60
unk_811FF60:    .byte  0
    .byte  1
    .byte  2
    .byte  3
    .byte  8
    .byte  4
    .byte  6
    .byte  7
    .byte  5
    .byte  9
    .byte 0xA
    .byte  0
.endfunc // sub_811FF54

.func
.thumb_func
sub_811FF6C:
    push {lr}
    ldr r1, dword_811FF78 // =0xA000 
    bl CpuFastSet_8000900 // (int a1, int a2) -> void
    pop {pc}
    .balign 4, 0x00
dword_811FF78:    .word 0xA000
    .word 0x13A
.endfunc // sub_811FF6C

.func
.thumb_func
sub_811FF80:
    push {r3,r4,lr}
    add r4, r0, #0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r1, [r0,#9]
    mov r3, #0x10
    and r1, r3
    bne loc_811FFB2
    ldrb r1, [r0,#9]
    mov r3, #2
    and r1, r3
    beq loc_811FFAC
    ldrh r2, [r0,#0x1a]
    ldr r1, dword_811FFBC // =0x3E7 
    cmp r2, r1
    ble loc_811FFA8
    add r0, r4, #0
    bl sub_8010C76
    add r2, r0, #0
loc_811FFA8:
    mov r1, #0
    b loc_811FFB6
loc_811FFAC:
    mov r2, #5
    mov r1, #0
    b loc_811FFB6
loc_811FFB2:
    mov r2, #1
    mov r1, #1
loc_811FFB6:
    add r0, r2, #0
    pop {r3,r4,pc}
    .balign 4, 0x00
dword_811FFBC:    .word 0x3E7
.endfunc // sub_811FF80

.func
.thumb_func
// () -> void
sub_811FFC0:
    push {r4-r7,lr}
    // idx
    mov r0, #1
loc_811FFC4:
    add r7, r0, #0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r5, r0, #0
    ldr r1, dword_8120010 // =0x136 
    cmp r7, r1
    bgt loc_811FFFC
    ldr r1, dword_812000C // =0x137 
    cmp r7, r1
    beq loc_811FFE6
    ldr r1, off_8120014 // =0x138 
    cmp r7, r1
    beq loc_811FFE6
    ldrb r0, [r5,#9]
    mov r1, #0x60 
    tst r0, r1
    beq loc_811FFFC
loc_811FFE6:
    mov r6, #3
loc_811FFE8:
    add r0, r7, #0
    ldrb r1, [r5,r6]
    cmp r1, #0xff
    beq loc_811FFF6
    mov r2, #0x5a 
    bl sub_8021AEE
loc_811FFF6:
    sub r6, #1
    cmp r6, #0
    bge loc_811FFE8
loc_811FFFC:
    add r0, r7, #0
    add r0, #1
    ldr r1, off_8120008 // =0x140 
    cmp r0, r1
    blt loc_811FFC4
    pop {r4-r7,pc}
off_8120008:    .word 0x140
dword_812000C:    .word 0x137
dword_8120010:    .word 0x136
off_8120014:    .word 0x138
.endfunc // sub_811FFC0

loc_8120018:
    push {lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    tst r3, r3
    bne loc_812004E
    add r7, r1, #0
    sub r7, #1
    lsl r2, r2, #2
loc_812002E:
    mov r6, #0x20 
    mul r6, r7
    add r1, r0, r6
    ldr r3, [r1,r2]
    add r4, r3, #0
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    tst r3, r3
    bne loc_8120048
    mvn r3, r3
    lsl r3, r3, #1
    lsr r3, r3, #1
    str r3, [r1,r2]
loc_8120048:
    sub r7, #1
    bge loc_812002E
    b loc_8120074
loc_812004E:
    add r7, r1, #0
    sub r7, #1
    lsl r2, r2, #2
loc_8120054:
    mov r6, #0x20 
    mul r6, r7
    add r1, r0, r6
    ldr r3, [r1,r2]
    add r4, r3, #0
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    mvn r3, r3
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    lsr r4, r4, #0x10
    lsl r4, r4, #0x10
    orr r3, r4
    str r3, [r1,r2]
    sub r7, #1
    bge loc_8120054
loc_8120074:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    ldr r4, off_81200DC // =dword_81200E0 
    ldr r4, [r4,r3]
    mov lr, pc
    bx r4
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    tst r3, r3
    bne loc_81200B2
    add r7, r1, #0
    sub r7, #1
    lsl r2, r2, #2
loc_8120096:
    mov r6, #0x20 
    mul r6, r7
    add r1, r0, r6
    ldr r3, [r1,r2]
    str r0, [sp,#0x10]
    ldr r0, dword_81200E8 // =0x7FFFFFFF 
    cmp r0, r3
    bne loc_81200AC
    ldr r0, [sp,#0x10]
    mov r3, #0
    str r3, [r1,r2]
loc_81200AC:
    sub r7, #1
    bge loc_8120096
    b loc_81200D8
loc_81200B2:
    add r7, r1, #0
    sub r7, #1
    lsl r2, r2, #2
loc_81200B8:
    mov r6, #0x20 
    mul r6, r7
    add r1, r0, r6
    ldr r3, [r1,r2]
    add r4, r3, #0
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    mvn r3, r3
    lsl r3, r3, #0x10
    lsr r3, r3, #0x10
    lsr r4, r4, #0x10
    lsl r4, r4, #0x10
    orr r3, r4
    str r3, [r1,r2]
    sub r7, #1
    bge loc_81200B8
loc_81200D8:
    add sp, sp, #0x14
    pop {pc}
off_81200DC:    .word dword_81200E0
dword_81200E0:    .word 0x30069A9, 0x3006A5F
dword_81200E8:    .word 0x7FFFFFFF
.func
.thumb_func
sub_81200EC:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r5, [sp,#4]
    ldr r6, off_8120180 // =0x200 
    lsl r3, r3, #0xc
    orr r3, r6
    str r3, [sp]
    mov r3, #0x20 
    mul r0, r3
    add r5, r0, r1
    mov r3, #0x10
    add r3, r3, r2
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
loc_812010A:
    ldrh r1, [r5,#0x1c]
    lsr r1, r1, #7
    tst r1, r1
    beq loc_812014E
    ldr r0, off_8120174 // =dword_8120178 
    push {r2}
    ldr r2, dword_8120184 // =0x137 
    cmp r1, r2
    beq loc_8120128
    ldr r2, off_8120188 // =0x139 
    cmp r1, r2
    bne loc_812012E
    ldr r0, dword_8120190 // =0x200119E 
    pop {r2}
    b loc_8120140
loc_8120128:
    ldr r0, dword_812018C // =0x2001186 
    pop {r2}
    b loc_8120140
loc_812012E:
    pop {r2}
    lsr r7, r1, #8
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
loc_8120140:
    ldr r4, [sp]
    push {r5}
    mov r5, #8
    bl sub_81202B4
    pop {r5}
    b loc_8120160
loc_812014E:
    push {r2,r3}
    add r0, r2, #0
    mov r1, #0x20 
    mov r2, #0
    bl sub_800098C
    pop {r2,r3}
    add r2, #0x10
    add r3, #0x10
loc_8120160:
    add r5, #0x20 
    add r2, #0x10
    add r3, #0x10
    add r6, #1
    ldr r0, [sp,#4]
    cmp r6, r0
    blt loc_812010A
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8120174:    .word dword_8120178
dword_8120178:    .word 0x86EA94C, 0x86EB354
off_8120180:    .word 0x200
dword_8120184:    .word 0x137
off_8120188:    .word 0x139
dword_812018C:    .word 0x2001186
dword_8120190:    .word 0x200119E
.endfunc // sub_81200EC

.func
.thumb_func
sub_8120194:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    str r5, [sp,#4]
    mov r6, #0
    str r6, [sp,#0x10]
    ldr r6, off_8120224 // =0x200 
    lsl r3, r3, #0xc
    orr r3, r6
    str r3, [sp]
    mov r3, #0x20 
    mul r0, r3
    add r5, r0, r1
    mov r3, #0x10
    add r3, r3, r2
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
loc_81201B6:
    ldrh r1, [r5,#0x1c]
    lsr r1, r1, #7
    tst r1, r1
    bne loc_81201E4
    ldr r0, [sp,#0x10]
    tst r0, r0
    beq loc_81201D8
    push {r2,r3}
    add r0, r2, #0
    mov r1, #0x20 
    mov r2, #0
    bl sub_800098C
    pop {r2,r3}
    add r2, #0x10
    add r3, #0x10
    b loc_8120202
loc_81201D8:
    mov r0, #1
    str r0, [sp,#0x10]
    ldr r0, off_8120214 // =dword_8120218 
    ldr r0, [r0,#0x8] // (off_8120220 - 0x8120218)
    mov r1, #0x31 
    b loc_81201F0
loc_81201E4:
    ldr r0, off_8120214 // =dword_8120218 
    lsr r7, r1, #8
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
loc_81201F0:
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    ldr r4, [sp]
    push {r5}
    mov r5, #8
    bl sub_81202B4
    pop {r5}
loc_8120202:
    add r5, #0x20 
    add r2, #0x10
    add r3, #0x10
    add r6, #1
    ldr r0, [sp,#4]
    cmp r6, r0
    blt loc_81201B6
    add sp, sp, #0x14
    pop {r4-r7,pc}
off_8120214:    .word dword_8120218
dword_8120218:    .word 0x86EA94C, 0x86EB354
off_8120220:    .word unk_201BA20
off_8120224:    .word 0x200
.endfunc // sub_8120194

.func
.thumb_func
sub_8120228:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    ldr r6, off_812027C // =0x200 
    lsl r3, r3, #0xc
    orr r3, r6
    str r3, [sp]
    mov r3, #0x10
    add r3, r3, r2
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
    add r1, r4, #0
    tst r1, r1
    bne loc_812024C
    ldr r0, off_812026C // =dword_8120270 
    ldr r0, [r0,#0x8] // (off_8120278 - 0x8120270)
    mov r1, #0x31 
    b loc_8120258
loc_812024C:
    ldr r0, off_812026C // =dword_8120270 
    lsr r7, r1, #8
    lsl r7, r7, #2
    ldr r0, [r0,r7]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
loc_8120258:
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    ldr r4, [sp]
    mov r5, #8
    bl sub_81202B4
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
off_812026C:    .word dword_8120270
dword_8120270:    .word 0x86EA94C, 0x86EB354
off_8120278:    .word unk_201BA20
off_812027C:    .word 0x200
.endfunc // sub_8120228

.func
.thumb_func
sub_8120280:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    ldr r6, off_81202B0 // =0x200 
    lsl r3, r3, #0xc
    orr r3, r6
    str r3, [sp]
    mov r3, #0x10
    add r3, r3, r2
    str r2, [sp,#8]
    str r3, [sp,#0xc]
    mov r6, #0
    add r1, r4, #0
    ldr r0, off_81202AC // =dword_873EA50 
    lsl r1, r1, #1
    ldrh r1, [r0,r1]
    add r0, r0, r1
    ldr r4, [sp]
    mov r5, #8
    bl sub_81202B4
    add sp, sp, #0x10
    pop {r4-r7,pc}
off_81202AC:    .word dword_873EA50
off_81202B0:    .word 0x200
.endfunc // sub_8120280

.func
.thumb_func
sub_81202B4:
    push {r4-r7,lr}
    mov r7, #0
loc_81202B8:
    ldrb r1, [r0]
    cmp r1, #0xe6
    bge loc_81202E2
    cmp r1, #0xe5
    beq loc_81202DE
    cmp r1, #0xe4
    bne loc_81202CC
    ldrb r6, [r0]
    lsl r6, r6, #8
    orr r1, r6
loc_81202CC:
    add r6, r4, #0
    lsl r1, r1, #1
    add r6, r6, r1
    strh r6, [r2]
    add r6, #1
    strh r6, [r3]
    add r2, #2
    add r3, #2
    add r7, #1
loc_81202DE:
    add r0, #1
    b loc_81202B8
loc_81202E2:
    add r6, r7, #0
loc_81202E4:
    cmp r7, r5
    bge loc_81202F6
    mov r4, #0
    strh r4, [r2]
    strh r4, [r3]
    add r2, #2
    add r3, #2
    add r7, #1
    b loc_81202E4
loc_81202F6:
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_81202B4

.func
.thumb_func
sub_81202FC:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    str r3, [sp,#0x10]
    sub r3, r4, r3
    str r3, [sp,#4]
    ldr r6, off_8120344 // =0x200 
    lsl r2, r2, #0xc
    orr r2, r6
    str r2, [sp]
    lsl r3, r4, #1
    add r3, r3, r1
    str r1, [sp,#8]
    add r2, r1, #0
    str r3, [sp,#0xc]
    ldr r4, [sp,#0x10]
    ldr r1, [sp]
loc_812031C:
    strh r1, [r2]
    strh r1, [r3]
    add r2, #2
    add r3, #2
    sub r4, #1
    bgt loc_812031C
    mov r6, #0
    ldr r1, off_8120340 // =unk_86CF4AC 
    lsl r0, r0, #1
    ldrh r0, [r1,r0]
    add r0, r0, r1
    ldr r4, [sp]
    ldr r5, [sp,#4]
    bl sub_81202B4
    add sp, sp, #0x14
    pop {r4-r7,pc}
    .byte 0, 0
off_8120340:    .word unk_86CF4AC
off_8120344:    .word 0x200
.endfunc // sub_81202FC

.func
.thumb_func
sub_8120348:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    str r3, [sp,#0x10]
    sub r3, r4, r3
    str r3, [sp,#4]
    ldr r6, off_812038C // =0x200 
    lsl r2, r2, #0xc
    orr r2, r6
    str r2, [sp]
    lsl r3, r4, #1
    add r3, r3, r1
    str r1, [sp,#8]
    add r2, r1, #0
    str r3, [sp,#0xc]
    ldr r4, [sp,#0x10]
    ldr r1, [sp]
loc_8120368:
    strh r1, [r2]
    strh r1, [r3]
    add r2, #2
    add r3, #2
    sub r4, #1
    bgt loc_8120368
    mov r6, #0
    bl sub_804A24C
    ldr r4, [sp]
    ldr r5, [sp,#4]
    bl sub_81202B4
    add sp, sp, #0x14
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_20065C0
off_812038C:    .word 0x200
.endfunc // sub_8120348

.func
.thumb_func
sub_8120390:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r5, [sp,#0xc]
    add r0, r3, #0
    add r1, r2, #0
    mov r2, #0x38 
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
    mov r5, #0x20 
    ldr r0, [sp]
    mul r0, r5
    ldr r1, [sp,#4]
    add r5, r0, r1
    mov r6, #0
    ldr r7, [sp,#8]
loc_81203B4:
    ldrh r0, [r5,#0x1c]
    lsr r0, r0, #7
    tst r0, r0
    beq loc_81203CC
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldr r0, [r0,#0x20]
    add r1, r4, #0
    mov r2, #0x80
    bl loc_8000AC4
    b loc_81203D2
loc_81203CC:
    mov r0, #0
    str r0, [r7]
    str r0, [r7,#4]
loc_81203D2:
    add r5, #0x20 
    add r4, #0x80
    add r7, #8
    add r6, #1
    ldr r0, [sp,#0xc]
    cmp r6, r0
    blt loc_81203B4
    add sp, sp, #0x10
    pop {r4-r7,pc}
.endfunc // sub_8120390

.func
.thumb_func
sub_81203E4:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0x10]
    str r5, [sp,#0xc]
    // memBlock
    add r0, r2, #0
    // size
    mov r1, #0x38 
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    mov r5, #0x20 
    ldr r0, [sp]
    mul r0, r5
    ldr r1, [sp,#4]
    add r5, r0, r1
    mov r6, #0
    ldr r7, [sp,#8]
loc_8120408:
    ldrh r0, [r5,#0x1c]
    lsr r0, r0, #7
    tst r0, r0
    beq loc_8120436
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r0, [r0,#6]
    bl sub_811FF54
    mov r1, #4
    mul r0, r1
    ldr r1, [sp,#0x10]
    add r1, r1, r0
    add r3, r1, #1
    lsl r3, r3, #0x10
    orr r3, r1
    lsl r2, r6, #2
    str r3, [r7,r2]
    add r2, #4
    ldr r1, dword_8120454 // =0x20002 
    add r3, r3, r1
    str r3, [r7,r2]
    b loc_8120440
loc_8120436:
    mov r0, #0
    lsl r2, r6, #2
    str r0, [r7,r2]
    add r2, #4
    str r0, [r7,r2]
loc_8120440:
    add r5, #0x20 
    add r4, #0x80
    add r7, #4
    add r6, #1
    ldr r0, [sp,#0xc]
    cmp r6, r0
    blt loc_8120408
    add sp, sp, #0x14
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8120454:    .word 0x20002
.endfunc // sub_81203E4

.func
.thumb_func
sub_8120458:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    str r0, [sp]
    str r1, [sp,#4]
    str r2, [sp,#8]
    str r3, [sp,#0x10]
    str r5, [sp,#0xc]
    add r0, r2, #0
    mov r1, #0xe
    bl sub_80008C0
    mov r5, #0x20 
    ldr r0, [sp]
    mul r0, r5
    ldr r1, [sp,#4]
    add r5, r0, r1
    mov r6, #0
    ldr r7, [sp,#8]
loc_812047C:
    ldrh r1, [r5,#0x1c]
    lsr r0, r1, #7
    tst r0, r0
    beq loc_81204AC
    mov r4, #0x7f
    and r4, r1
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    mov r2, #0
loc_812048E:
    ldrb r1, [r0,r2]
    cmp r1, r4
    beq loc_812049C
    add r2, #1
    cmp r2, #3
    ble loc_812048E
    b loc_81204AC
loc_812049C:
    lsl r4, r4, #1
    add r4, r4, r3
    lsl r0, r6, #2
    strh r4, [r7,r0]
    add r4, #1
    add r0, #2
    strh r4, [r7,r0]
    b loc_81204B6
loc_81204AC:
    mov r0, #0
    lsl r1, r6, #2
    strh r0, [r7,r1]
    add r1, #2
    strh r0, [r7,r1]
loc_81204B6:
    add r5, #0x20 
    add r6, #1
    ldr r0, [sp,#0xc]
    cmp r6, r0
    blt loc_812047C
    add sp, sp, #0x14
    pop {r4-r7,pc}
.endfunc // sub_8120458

.func
.thumb_func
sub_81204C4:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r5, [sp]
    mov r5, #0x20 
    mul r0, r5
    add r5, r0, r1
    mov r6, #0
    add r7, r2, #0
    add r4, r3, #0
loc_81204D6:
    ldrh r1, [r5,#0x1c]
    lsr r0, r1, #7
    tst r0, r0
    beq loc_81204EE
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r0, [r0,#8]
    add r1, r7, #0
    add r2, r4, #0
    bl sub_8120504
    b loc_81204F4
loc_81204EE:
    mov r0, #0
    str r0, [r7]
    str r0, [r7,#4]
loc_81204F4:
    add r5, #0x20 
    add r7, #8
    add r6, #1
    ldr r0, [sp]
    cmp r6, r0
    blt loc_81204D6
    add sp, sp, #4
    pop {r4-r7,pc}
.endfunc // sub_81204C4

.func
.thumb_func
sub_8120504:
    push {r4-r7,lr}
    add r7, r1, #0
    add r4, r2, #0
    mov r1, #0xa
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    tst r1, r1
    bne loc_812051C
    add r1, r1, r4
    b loc_8120520
loc_812051C:
    add r1, r1, r4
    add r1, #1
loc_8120520:
    add r0, r0, r4
    add r0, #1
    lsl r0, r0, #0x10
    orr r0, r1
    str r0, [r7]
    mov r0, #0xb
    add r1, r4, r0
    mov r2, #0xc
    add r0, r4, r2
    lsl r0, r0, #0x10
    orr r0, r1
    str r0, [r7,#4]
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8120504

.func
.thumb_func
sub_812053C:
    push {r4-r7,lr}
    add r4, r1, #0
    mov r3, #0
    bl sub_81205C0
    tst r0, r0
    blt locret_812055E
    ldr r1, dword_8120560 // =0xC0008000 
    bic r0, r1
    ldr r1, dword_8120564 // =0x4000 
    orr r0, r1
    mov r1, #0xc
    add r1, r1, r4
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
locret_812055E:
    pop {r4-r7,pc}
dword_8120560:    .word 0xC0008000
dword_8120564:    .word 0x4000
.endfunc // sub_812053C

    push {r4-r7,lr}
    add r6, r3, #0
    add r4, r1, #0
    mov r3, #0
    bl sub_81205C0
    add r7, r0, #0
    tst r0, r0
    blt loc_8120586
    mov r1, #0xb
    add r1, r1, r4
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
loc_8120586:
    lsl r1, r7, #0x10
    lsr r1, r1, #0x10
    asr r2, r7, #0x10
    add r2, #7
    lsl r2, r2, #0x10
    orr r2, r1
    add r0, r6, #0
    add r1, r4, #0
    mov r3, #0
    bl sub_81205C0
    tst r0, r0
    blt locret_81205B4
    ldr r1, dword_81205B8 // =0x0 
    bic r0, r1
    ldr r1, dword_81205BC // =0x4000 
    orr r0, r1
    mov r1, #0xc
    add r1, r1, r4
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
locret_81205B4:
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_81205B8:    .word 0x0
dword_81205BC:    .word 0x4000
.func
.thumb_func
sub_81205C0:
    push {r4-r7,lr}
    sub sp, sp, #8
    add r7, r2, #0
    add r4, r1, #0
    add r5, r3, #0
    mov r1, #0xa
    svc 6
    add r2, r0, #0
    str r1, [sp,#4]
    str r2, [sp]
    mov r6, #0
loc_81205D6:
    add r0, r7, #0
    tst r0, r0
    blt loc_81205F8
    mov r2, sp
    add r2, r2, r6
    ldr r1, [r2]
    cmp r6, #0
    bne loc_81205EA
    tst r1, r1
    beq loc_81205EC
loc_81205EA:
    add r1, #1
loc_81205EC:
    lsl r1, r5
    add r1, r1, r4
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
loc_81205F8:
    lsl r1, r7, #0x10
    lsr r1, r1, #0x10
    asr r7, r7, #0x10
    tst r5, r5
    bne loc_8120606
    add r7, #7
    b loc_8120608
loc_8120606:
    add r7, #8
loc_8120608:
    lsl r7, r7, #0x10
    orr r7, r1
    add r6, #4
    cmp r6, #8
    blt loc_81205D6
    add r0, r7, #0
    add sp, sp, #8
    pop {r4-r7,pc}
.endfunc // sub_81205C0

.func
.thumb_func
sub_8120618:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r5, [sp]
    mov r5, #0x20 
    mul r0, r5
    add r5, r0, r1
    mov r6, #0
    add r7, r2, #0
    add r4, r3, #0
loc_812062A:
    ldrh r1, [r5,#0x1c]
    lsr r0, r1, #7
    tst r0, r0
    beq loc_8120670
    ldr r0, [r5,#0x14]
    lsl r1, r0, #0x10
    lsr r1, r1, #0x10
    tst r1, r1
    beq loc_8120670
    lsr r0, r0, #0x10
    cmp r0, #0x63 
    ble loc_8120644
    mov r0, #0x63 
loc_8120644:
    mov r1, #0xa
    svc 6
    add r2, r0, #0
    add r0, r1, #0
    add r1, r2, #0
    tst r1, r1
    bne loc_8120656
    add r1, r1, r4
    b loc_812065C
loc_8120656:
    add r1, #1
    lsl r1, r1, #1
    add r1, r1, r4
loc_812065C:
    add r0, #1
    lsl r0, r0, #1
    add r0, r0, r4
    lsl r0, r0, #0x10
    orr r0, r1
    str r0, [r7]
    ldr r1, dword_8120688 // =0x10001 
    add r0, r0, r1
    str r0, [r7,#4]
    b loc_8120676
loc_8120670:
    mov r0, #0
    str r0, [r7]
    str r0, [r7,#4]
loc_8120676:
    add r5, #0x20 
    add r7, #8
    add r6, #1
    ldr r0, [sp]
    cmp r6, r0
    blt loc_812062A
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8120688:    .word 0x10001
.endfunc // sub_8120618

.func
.thumb_func
sub_812068C:
    push {r4-r7,lr}
    add r4, r1, #0
    add r6, r3, #0
    mov r3, #1
    bl sub_81205C0
    add r7, r0, #0
    tst r0, r0
    blt loc_81206AA
    mov r1, #0x16
    add r1, r1, r4
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
loc_81206AA:
    lsl r1, r7, #0x10
    lsr r1, r1, #0x10
    asr r2, r7, #0x10
    add r2, #8
    lsl r2, r2, #0x10
    orr r2, r1
    add r0, r6, #0
    add r1, r4, #0
    mov r3, #1
    bl sub_81205C0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_812068C

.func
.thumb_func
sub_81206C4:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r4, #0
    ldrh r5, [r5,#0x28]
    tst r5, r5
    beq locret_81206F6
    sub r0, r5, #1
    mov r1, #0x20 
    mul r0, r1
    add r7, r7, r0
loc_81206D8:
    ldr r2, [r7,#0x14]
    lsr r2, r2, #0x10
    ldr r1, [r7,#0x1c]
    lsl r1, r1, #0x10
    lsr r0, r1, #0x17
    tst r0, r0
    beq loc_81206EE
    lsl r1, r1, #9
    lsr r1, r1, #0x19
    bl sub_8021AEE
loc_81206EE:
    sub r7, #0x20 
    add r4, #1
    cmp r4, r5
    blt loc_81206D8
locret_81206F6:
    pop {r4-r7,pc}
.endfunc // sub_81206C4

.func
.thumb_func
sub_81206F8:
    push {r4-r7,lr}
    sub sp, sp, #4
    add r4, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x48]
    mov r2, #0x3c 
    mul r1, r2
    add r7, r7, r1
    mov r0, #0x1e
    mov r1, #0x20 
    mul r0, r1
    add r0, r0, r4
    str r0, [sp]
loc_8120712:
    ldr r1, [r4,#0x1c]
    lsl r1, r1, #0x10
    lsr r0, r1, #0x17
    lsl r1, r1, #9
    lsr r1, r1, #0x19
    tst r0, r0
    beq loc_8120732
    ldrb r2, [r5,#2]
    tst r2, r2
    bne loc_812072C
    lsl r3, r1, #9
    orr r3, r0
    strh r3, [r7]
loc_812072C:
    mov r2, #1
    bl sub_8021B2A
loc_8120732:
    add r7, #2
    add r4, #0x20 
    ldr r0, [sp]
    cmp r4, r0
    blt loc_8120712
    add sp, sp, #4
    pop {r4-r7,pc}
.endfunc // sub_81206F8

.func
.thumb_func
sub_8120740:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    add r4, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r6, [r0,#5]
    cmp r6, #1
    ble loc_81207A8
    mov r5, #0
loc_8120752:
    mov r7, r10
    ldr r7, [r7,#0x48]
    str r7, [sp,#8]
    cmp r4, r5
    beq loc_81207A2
    mov r0, #0x3c 
    mul r0, r5
    ldr r7, [sp,#8]
    add r7, r7, r0
    str r7, [sp,#8]
loc_8120766:
    ldrh r0, [r7]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    str r0, [sp]
    str r1, [sp,#4]
    tst r0, r0
    beq loc_81207B0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    add r2, r0, #0
    mov r3, #0
loc_812077C:
    ldrb r1, [r2,r3]
    ldr r0, [sp,#4]
    cmp r1, r0
    beq loc_812078C
    add r3, #1
    cmp r3, #3
    ble loc_812077C
    b loc_81207B0
loc_812078C:
    ldr r0, [sp]
    ldr r1, [sp,#4]
    mov r2, #1
    bl sub_8021B2A
    add r7, #2
    ldr r0, off_81207BC // =0x3C 
    ldr r1, [sp,#8]
    add r0, r0, r1
    cmp r7, r0
    blt loc_8120766
loc_81207A2:
    add r5, #1
    sub r6, #1
    bgt loc_8120752
loc_81207A8:
    add sp, sp, #0x10
    mov r0, #0
    tst r0, r0
    pop {r4-r7,pc}
loc_81207B0:
    add sp, sp, #0x10
    mov r0, #1
    tst r0, r0
    pop {r4-r7,pc}
    .word 0x3C0
off_81207BC:    .word 0x3C
    .word unk_20343E0
.endfunc // sub_8120740

.func
.thumb_func
sub_81207C4:
    push {r4-r7,lr}
    sub sp, sp, #4
    add r4, r0, #0
    add r7, r1, #0
    mov r0, #0x1e
    mov r1, #0x20 
    mul r0, r1
    add r0, r0, r4
    str r0, [sp]
loc_81207D6:
    ldr r1, [r4,#0x1c]
    lsl r1, r1, #0x10
    lsr r0, r1, #0x17
    lsl r1, r1, #9
    lsr r1, r1, #0x19
    tst r0, r0
    beq loc_81207EA
    lsl r3, r1, #9
    orr r3, r0
    strh r3, [r7]
loc_81207EA:
    add r7, #2
    add r4, #0x20 
    ldr r0, [sp]
    cmp r4, r0
    blt loc_81207D6
    add sp, sp, #4
    pop {r4-r7,pc}
.endfunc // sub_81207C4

.func
.thumb_func
sub_81207F8:
    push {r4-r7,lr}
    add r5, r0, #0
    ldr r4, off_812087C // =word_8120888 
    mov r6, #0
    mov r7, #0
loc_8120802:
    cmp r5, #4
    bne loc_8120808
    ldr r4, off_8120880 // =word_8120890 
loc_8120808:
    ldrh r0, [r4]
    add r0, r0, r7
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_812082C
    ldrh r0, [r4,#2]
    add r0, r0, r7
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_812082C
    ldrh r0, [r4,#4]
    add r0, r0, r7
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    beq loc_812086E
loc_812082C:
    cmp r5, #4
    bne loc_8120836
    ldr r1, off_8120884 // =0x140 
    add r0, r7, r1
    b loc_8120838
loc_8120836:
    // idx
    add r0, r7, #0
loc_8120838:
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    cmp r5, #6
    beq loc_8120856
    ldrb r1, [r0,#9]
    mov r2, #0x40 
    tst r1, r2
    beq loc_812086E
    cmp r5, #5
    bne loc_8120856
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    beq loc_812086E
    b loc_812086C
loc_8120856:
    ldrb r1, [r0,#9]
    mov r2, #0x20 
    tst r1, r2
    bne loc_812086C
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_812086E
    ldrb r0, [r0,#7]
    cmp r0, r5
    bne loc_812086E
loc_812086C:
    add r6, #1
loc_812086E:
    add r7, #1
    ldrh r0, [r4,#6]
    cmp r7, r0
    ble loc_8120802
    add r0, r6, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_812087C:    .word word_8120888
off_8120880:    .word word_8120890
off_8120884:    .word 0x140
word_8120888:    .hword 0x1E20
word_812088A:    .hword 0x2020
word_812088C:    .hword 0x2220
word_812088E:    .hword 0x13F
word_8120890:    .hword 0x1F60
word_8120892:    .hword 0x2160
word_8120894:    .hword 0x2360
word_8120896:    .hword 0x1E
.endfunc // sub_81207F8

.func
.thumb_func
sub_8120898:
    push {r4-r7,lr}
    add r5, r0, #0
    mov r6, #0
    mov r7, #1
loc_81208A0:
    // idx
    add r0, r7, #0
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r1, [r0,#9]
    mov r2, #0x20 
    tst r1, r2
    beq loc_81208B2
    cmp r5, #6
    beq loc_81208D8
loc_81208B2:
    mov r2, #0x40 
    tst r1, r2
    beq loc_81208F0
    cmp r5, #5
    blt loc_81208CA
    cmp r5, #6
    beq loc_81208CA
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    beq loc_81208F0
    b loc_81208D8
loc_81208CA:
    ldrb r1, [r0,#0x16]
    mov r2, #1
    tst r1, r2
    bne loc_81208F0
    ldrb r1, [r0,#7]
    cmp r1, r5
    bne loc_81208F0
loc_81208D8:
    push {r5}
    mov r5, #0
    add r4, r0, #0
loc_81208DE:
    ldrb r1, [r4,r5]
    add r0, r7, #0
    bl sub_8021BC0
    add r6, r6, r0
    add r5, #1
    cmp r5, #3
    ble loc_81208DE
    pop {r5}
loc_81208F0:
    add r7, #1
    ldr r0, dword_81208FC // =0x13F 
    cmp r7, r0
    ble loc_81208A0
    add r0, r6, #0
    pop {r4-r7,pc}
dword_81208FC:    .word 0x13F
.endfunc // sub_8120898

.func
.thumb_func
sub_8120900:
    push {r4-r7,lr}
    sub sp, sp, #0x14
    str r1, [sp]
    str r2, [sp,#4]
    str r3, [sp,#8]
    str r4, [sp,#0xc]
    str r6, [sp,#0x10]
    add r7, r0, #0
    mov r6, #0xb
    lsl r6, r6, #1
    add r6, r6, r7
    ldr r0, [sp]
    bl sub_8000C00
    str r0, [sp]
    ldr r0, [sp,#4]
    bl sub_8000C00
    str r0, [sp,#4]
    mov r4, #0
    ldr r0, [sp,#8]
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    add r4, #2
    mov r5, #0
    mov r2, #0xc
loc_8120936:
    ldr r0, [sp]
    mov r3, #0xf
    lsl r3, r2
    and r0, r3
    lsr r0, r2
    tst r0, r0
    bne loc_8120958
    tst r5, r5
    bne loc_8120958
    cmp r4, #8
    beq loc_8120958
    ldr r0, [sp,#8]
    add r0, #0x18
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    b loc_8120968
loc_8120958:
    ldr r1, [sp,#8]
    lsl r0, r0, #1
    add r0, #2
    add r0, r0, r1
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    mov r5, #1
loc_8120968:
    sub r2, #4
    add r4, #2
    cmp r4, #0xa
    blt loc_8120936
    ldr r0, [sp,#8]
    add r0, #0x16
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    add r4, #2
    mov r5, #0
    mov r2, #0xc
loc_8120980:
    ldr r0, [sp,#4]
    mov r3, #0xf
    lsl r3, r2
    and r0, r3
    lsr r0, r2
    tst r0, r0
    bne loc_81209A2
    tst r5, r5
    bne loc_81209A2
    cmp r4, #0x12
    beq loc_81209A2
    ldr r0, [sp,#8]
    add r0, #0x18
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    b loc_81209B2
loc_81209A2:
    ldr r1, [sp,#8]
    lsl r0, r0, #1
    add r0, #2
    add r0, r0, r1
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    mov r5, #1
loc_81209B2:
    sub r2, #4
    add r4, #2
    cmp r4, #0x14
    blt loc_8120980
    ldr r0, [sp,#8]
    mov r1, #1
    lsl r1, r1, #0xa
    orr r0, r1
    strh r0, [r7,r4]
    add r0, #1
    strh r0, [r6,r4]
    // j
    ldr r0, [sp,#0xc]
    // i
    ldr r1, [sp,#0x10]
    // cpyOff
    mov r2, #2
    // tileRefs
    add r3, r7, #0
    mov r4, #0xb
    mov r5, #2
    bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8120900

    add sp, sp, #0x14
    pop {r4-r7,pc}
.func
.thumb_func
sub_81209DC:
    push {r6,r7,lr}
    add r7, r0, #0
    ldr r1, off_8120A0C // =off_8120A14 
    lsl r0, r0, #2
    ldr r6, [r1,r0]
    bl rng_8001562
    add r1, r6, #0
    svc 6
    cmp r7, #2
    blt loc_81209F6
    mov r0, #0x60 
    add r1, r1, r0
loc_81209F6:
    add r6, r1, #0
    bl sub_8001532
    mov r1, #0x15 // (byte_8120A35 - 0x8120a20)
    svc 6
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    ldr r2, off_8120A10 // =dword_8120A20 
    ldrb r1, [r2,r1]
    pop {r6,r7,pc}
    .balign 4, 0x00
off_8120A0C:    .word off_8120A14
off_8120A10:    .word dword_8120A20
off_8120A14:    .word 0x44
    .word 0x60
    .word 0x44
dword_8120A20:    .word 0x3010100, 0x7060504, 0xB0A0908, 0xF0E0D0C, 0x13111110
    .byte 0x13
byte_8120A35:    .byte 0x0
    .balign 4, 0x00
.endfunc // sub_81209DC

.func
.thumb_func
sub_8120A38:
    push {r4-r7,lr}
    sub sp, sp, #0x10
    bl sub_8120A88
    mov r0, #0
    bl sub_8120898
    str r0, [sp]
    mov r0, #1
    bl sub_8120898
    str r0, [sp,#4]
    ldr r0, dword_8120A84 // =0x137 
    bl sub_8021BD8
    tst r0, r0
    beq loc_8120A60
    ldr r1, [sp,#8]
    sub r1, r1, r0
    str r1, [sp,#8]
loc_8120A60:
    mov r0, #2
    bl sub_8120898
    str r0, [sp,#8]
    mov r0, #5
    bl sub_8120898
    str r0, [sp,#0xc]
    bl sub_8120AB8
    ldr r0, [sp]
    ldr r1, [sp,#4]
    ldr r2, [sp,#8]
    ldr r3, [sp,#0xc]
    ldr r4, [sp,#0x10]
    add sp, sp, #0x10
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8120A84:    .word 0x137
.endfunc // sub_8120A38

.func
.thumb_func
sub_8120A88:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r4, [r0,#5]
loc_8120A90:
    mov r7, r10
    ldr r7, [r7,#0x48]
    mov r2, #0x3c 
    sub r0, r4, #1
    mul r0, r2
    add r7, r7, r0
    mov r6, #0
loc_8120A9E:
    ldrh r0, [r7,r6]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    mov r2, #1
    bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
    add r6, #2
    cmp r6, #0x3c 
    blt loc_8120A9E
    sub r4, #1
    bgt loc_8120A90
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8120A88

.func
.thumb_func
sub_8120AB8:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r4, [r0,#5]
loc_8120AC0:
    mov r7, r10
    ldr r7, [r7,#0x48]
    mov r2, #0x3c 
    sub r0, r4, #1
    mul r0, r2
    add r7, r7, r0
    mov r6, #0
loc_8120ACE:
    ldrh r0, [r7,r6]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    mov r2, #1
    bl sub_8021B2A
    add r6, #2
    cmp r6, #0x3c 
    blt loc_8120ACE
    sub r4, #1
    bgt loc_8120AC0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8120AB8

.func
.thumb_func
sub_8120AE8:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    bl getPETNaviSelect // () -> u8
    mov r1, #0x2d 
    bl sub_80137B6 // (int a1, int a2) -> u8
    mov r1, #0x3c 
    mul r0, r1
    mov r4, r10
    ldr r4, [r4,#0x48]
    add r4, r4, r0
    mov r7, #0
    mov r6, #0
loc_8120B06:
    ldrh r0, [r4,r7]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r0, [r0,#7]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8120B1A
    add r6, #1
loc_8120B1A:
    add r7, #2
    cmp r7, #0x3c 
    blt loc_8120B06
    add r0, r6, #0
    add sp, sp, #4
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8120AE8

.func
.thumb_func
sub_8120B28:
    push {r4-r7,lr}
    sub sp, sp, #4
    str r0, [sp]
    add r4, r1, #0
    mov r7, #0
    mov r6, #0
loc_8120B34:
    ldrh r0, [r4,r7]
    bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
    bl getChip_8021DA8 // (int chip_idx) -> ChipData*
    ldrb r0, [r0,#7]
    ldr r1, [sp]
    cmp r0, r1
    bne loc_8120B48
    add r6, #1
loc_8120B48:
    add r7, #2
    cmp r7, #0x3c 
    blt loc_8120B34
    add r0, r6, #0
    add sp, sp, #4
    pop {r4-r7,pc}
.endfunc // sub_8120B28

.func
.thumb_func
sub_8120B54:
    push {r4-r7,lr}
    bl sub_803F524
    beq loc_8120BA2
    bl sub_803F674
    cmp r0, #2
    blt loc_8120B74
    bl get_802D246 // () -> int
    mov r1, #8
    tst r0, r1
    bne loc_8120B74
    bl sub_8144D30
    b loc_8120BA2
loc_8120B74:
    ldr r5, off_8120BAC // =byte_200F360 
    mov r0, #4
    bl sub_803F740
    tst r1, r1
    bne loc_8120BA2
    ldr r4, off_8120BB0 // =dword_8120BB4 
    mov r6, #0
loc_8120B84:
    mov r3, #0
loc_8120B86:
    ldr r7, [r4,r6]
    add r7, r7, r3
    cmp r7, r2
    beq loc_8120B9C
    add r3, #1
    cmp r3, #0xf
    blt loc_8120B86
    add r6, #4
    cmp r6, #0x18
    blt loc_8120B84
    mov r6, #0x14
loc_8120B9C:
    ldr r0, off_8120BC8 // =dword_8120BCC 
    ldr r0, [r0,r6]
    pop {r4-r7,pc}
loc_8120BA2:
    mov r6, #0x14 // (dword_8120BE0 - 0x8120bcc)
    ldr r0, off_8120BC8 // =dword_8120BCC 
    ldr r0, [r0,r6]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8120BAC:    .word byte_200F360
off_8120BB0:    .word dword_8120BB4
dword_8120BB4:    .word 0x19B, 0x1AA, 0x1B9, 0x1C8, 0x1D7
off_8120BC8:    .word dword_8120BCC
dword_8120BCC:    .word 0x6, 0x7, 0x8, 0x9, 0xA
dword_8120BE0:    .word 0xFF
.endfunc // sub_8120B54

.func
.thumb_func
sub_8120BE4:
    push {r6,r7,lr}
    sub sp, sp, #0x14
    mov r0, #0
    mov r1, #9
    bl sub_80137B6 // (int a1, int a2) -> u8
    str r0, [sp]
    mov r0, #0
    mov r1, #0x2d 
    bl sub_80137B6 // (int a1, int a2) -> u8
    str r0, [sp,#4]
    mov r0, #0
    mov r1, #0x2e 
    bl sub_80137B6 // (int a1, int a2) -> u8
    str r0, [sp,#8]
    mov r0, #0
    mov r1, #0x2f 
    bl sub_80137B6 // (int a1, int a2) -> u8
    str r0, [sp,#0xc]
    mov r0, #0
    mov r1, #0x30 
    bl sub_80137B6 // (int a1, int a2) -> u8
    str r0, [sp,#0x10]
    bl getPETNaviSelect // () -> u8
    add r6, r0, #0
    mov r1, #9
    ldr r2, [sp]
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    add r0, r6, #0
    mov r1, #0x2d 
    ldr r2, [sp,#4]
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    add r0, r6, #0
    mov r1, #0x2e 
    ldr r2, [sp,#8]
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    add r0, r6, #0
    mov r1, #0x2f 
    ldr r2, [sp,#0xc]
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    add r0, r6, #0
    mov r1, #0x30 
    ldr r2, [sp,#0x10]
    bl navicust_801379E // (int a1, int a2, int a3) -> void
    add sp, sp, #0x14
    pop {r6,r7,pc}
.endfunc // sub_8120BE4

    push {r4-r7,lr}
    add r5, r0, #0
    ldr r4, off_8120C88 // =word_8120C8C 
    mov r6, #0
    mov r7, #1
    ldrh r0, [r4]
    add r0, r0, r5
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_8120C84
    ldrh r0, [r4,#0x2] // (word_8120C8E - 0x8120c8c)
    add r0, r0, r5
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_8120C84
    ldrh r0, [r4,#0x4] // (word_8120C90 - 0x8120c8c)
    add r0, r0, r5
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_8120C84
    mov r7, #0
loc_8120C84:
    add r0, r7, #0
    pop {r4-r7,pc}
off_8120C88:    .word word_8120C8C
word_8120C8C:    .hword 0x1E20
word_8120C8E:    .hword 0x2020
word_8120C90:    .hword 0x2220
    .balign 4, 0x00
.func
.thumb_func
sub_8120C94:
    push {r4-r7,lr}
    push {r0-r3}
    lsl r1, r1, #1
    mul r1, r2
    bl sub_80008C0
    pop {r0-r3}
    lsl r4, r1, #1
    add r6, r2, #0
    add r7, r0, #0
    mov r2, #0
loc_8120CAA:
    mov r0, #0
    add r1, r4, r0
loc_8120CAE:
    strh r3, [r7,r0]
    add r3, #1
    strh r3, [r7,r1]
    add r3, #1
    add r0, #2
    add r1, r4, r0
    cmp r0, r4
    blt loc_8120CAE
    add r7, r7, r1
    add r2, #1
    cmp r2, r6
    blt loc_8120CAA
    pop {r4-r7,pc}
.endfunc // sub_8120C94

.func
.thumb_func
sub_8120CC8:
    add r3, r0, #0
    add r2, r1, #0
    ldrb r1, [r2,r3]
    cmp r1, #0xff
    bne locret_8120CD6
    mov r0, #0
    ldrb r1, [r2,r0]
locret_8120CD6:
    mov pc, lr
.endfunc // sub_8120CC8

    push {r4-r7,lr}
    mov r7, #1
    mov r6, #0
    mov r0, #0
    mov r1, #0xb
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    mov r0, #1
    bl sub_8120AE8
    cmp r0, r4
    bgt loc_8120D08
    mov r0, #0
    mov r1, #0xc
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    mov r0, #2
    bl sub_8120AE8
    cmp r0, r4
    bgt loc_8120D08
    mov r7, #0
loc_8120D08:
    add r0, r7, #0
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
.func
.thumb_func
sub_8120D10:
    push {r4-r7,lr}
    sub sp, sp, #8
    str r0, [sp]
    bl getPETNaviSelect // () -> u8
    str r0, [sp,#4]
    mov r6, #0
    ldr r0, [sp,#4]
    mov r1, #0xb
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    mov r0, #1
    bl sub_8120AE8
    cmp r0, r4
    bgt loc_8120D46
    ldr r0, [sp,#4]
    mov r1, #0xc
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r4, r0, #0
    mov r0, #2
    bl sub_8120AE8
    cmp r0, r4
    ble loc_8120DA2
loc_8120D46:
    mov r6, #0xf
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#5]
    cmp r0, #1
    bne loc_8120D64
    mov r6, #0x10
    mov r0, #0x22 
    bl sub_8137718
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r2, [r0,#5]
    sub r2, #1
    b loc_8120D9A
loc_8120D64:
    mov r0, #0x22 
    bl sub_81377EC
    add r2, r0, #0
    cmp r2, #3
    bge loc_8120D8A
    ldr r0, [sp]
    tst r0, r0
    bne loc_8120D9A
    push {r2}
    add r0, r2, #0
    bl sub_8137890
    bl sub_8120DAC
    pop {r2}
    beq loc_8120D9A
    mov r6, #0x11
    b loc_8120D8C
loc_8120D8A:
    mov r6, #0x10
loc_8120D8C:
    mov r0, #0x22 
    bl sub_8137718
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r2, [r0,#5]
    sub r2, #1
loc_8120D9A:
    ldr r0, [sp,#4]
    mov r1, #0x2d 
    bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8120DA2:
    add sp, sp, #8
    add r1, r6, #0
    tst r1, r1
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8120D10

.func
.thumb_func
sub_8120DAC:
    push {r4-r7,lr}
    sub sp, sp, #4
    add r4, r0, #0
    mov r7, #1
    bl getPETNaviSelect // () -> u8
    str r0, [sp]
    mov r1, #0xb
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r6, r0, #0
    mov r0, #1
    add r1, r4, #0
    bl sub_8120B28
    cmp r0, r6
    bgt loc_8120DE6
    ldr r0, [sp]
    mov r1, #0xc
    bl sub_80137B6 // (int a1, int a2) -> u8
    add r6, r0, #0
    mov r0, #2
    add r1, r4, #0
    bl sub_8120B28
    cmp r0, r6
    bgt loc_8120DE6
    mov r7, #0
loc_8120DE6:
    add sp, sp, #4
    add r0, r7, #0
    tst r0, r0
    pop {r4-r7,pc}
    .byte 0, 0
.endfunc // sub_8120DAC

.func
.thumb_func
sub_8120DF0:
    push {r4-r7,lr}
    sub sp, sp, #0x40
    mov r7, sp
    add r4, r7, #0
    mov r6, #0
loc_8120DFA:
    ldr r0, off_81210C4 // =dword_81210C8 
    ldr r1, [r0,r6]
    ldr r2, dword_8121104 // =0xFFFFFFFF 
    cmp r1, r2
    beq loc_8120E22
    mov r0, r10
    ldr r0, [r0,#0x40]
    ldrb r0, [r0,#7]
    cmp r1, #0x40 
    bne loc_8120E16
    mov r1, #0x40 
    bl sub_80137FE
    b loc_8120E1A
loc_8120E16:
    bl sub_80137B6 // (int a1, int a2) -> u8
loc_8120E1A:
    str r0, [r7]
    add r7, #4
    add r6, #4
    b loc_8120DFA
loc_8120E22:
    bl getPETNaviSelect // () -> u8
    add r7, r0, #0
    cmp r7, #0
    bne loc_8120E56
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_8120E56
    add r7, r4, #0
    mov r6, #0
loc_8120E3A:
    ldr r1, off_81210C4 // =dword_81210C8 
    ldr r1, [r1,r6]
    ldr r2, dword_8121104 // =0xFFFFFFFF 
    cmp r1, #0x40 
    beq loc_8120E50
    cmp r1, r2
    beq loc_8120F3C
    ldr r2, [r7]
    mov r0, #0
    bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8120E50:
    add r7, #4
    add r6, #4
    b loc_8120E3A
loc_8120E56:
    add r0, r7, #0
    bl navicust_8014018 // (int idx_8014034) -> bool
    add r1, r7, #0
    bl init_8013B4E // (bool a1, int a2) -> void
    add r7, r4, #0
    mov r6, #0
loc_8120E66:
    bl getPETNaviSelect // () -> u8
    ldr r1, off_81210C4 // =dword_81210C8 
    ldr r1, [r1,r6]
    ldr r2, dword_8121104 // =0xFFFFFFFF 
    cmp r1, #0x40 
    bne loc_8120E7C
    ldr r2, [r7]
    bl sub_80137E6
    b loc_8120EA0
loc_8120E7C:
    cmp r1, r2
    beq loc_8120EA6
    cmp r1, #0xb
    beq loc_8120E8C
    cmp r1, #0xc
    beq loc_8120E8C
    cmp r1, #0xa
    bne loc_8120E9A
loc_8120E8C:
    push {r0,r1}
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    pop {r0,r1}
    bne loc_8120EA0
loc_8120E9A:
    ldr r2, [r7]
    bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_8120EA0:
    add r7, #4
    add r6, #4
    b loc_8120E66
loc_8120EA6:
    // entryIdx
    mov r0, #1
    // byteFlagIdx
    mov r1, #0x63 
    bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
    bne loc_8120EF2
    bl getPETNaviSelect // () -> u8
    cmp r0, #0
    beq loc_8120F3C
    add r4, r0, #0
    lsl r0, r0, #2
    ldr r1, off_8120F40 // =off_8120F44 
    ldr r2, [r1,r0]
    bl sub_8121108
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    add r6, r2, #0
    add r0, r4, #0
    mov r1, #0x42 
    bl sub_80137E6
    add r0, r4, #0
    mov r1, #0x3e 
    add r2, r6, #0
    bl sub_80137E6
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    bge loc_8120F3C
    add r2, r6, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137E6
    b loc_8120F3C
loc_8120EF2:
    bl getPETNaviSelect // () -> u8
    add r4, r0, #0
    lsl r0, r0, #2
    ldr r1, off_8120F40 // =off_8120F44 
    ldr r2, [r1,r0]
    bl sub_8121108
    lsl r0, r0, #2
    ldr r2, [r2,r0]
    add r6, r2, #0
    add r0, r4, #0
    mov r1, #0x42 
    bl sub_80137E6
    add r0, r4, #0
    mov r1, #0x3e 
    add r2, r6, #0
    bl sub_80137E6
    bl loc_8121154
    add r0, r4, #0
    mov r1, #0x42 
    bl sub_80137FE
    add r6, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    cmp r0, #0x80
    bge loc_8120F3C
    add r2, r6, #0
    add r0, r4, #0
    mov r1, #0x40 
    bl sub_80137E6
loc_8120F3C:
    add sp, sp, #0x40
    pop {r4-r7,pc}
off_8120F40:    .word off_8120F44
off_8120F44:    .word dword_8120F74
    .word off_8120F90
    .word off_8120FAC
    .word off_8120FC8
    .word off_8120FE4
    .word off_8121000
    .word off_812101C
    .word off_8121038
    .word off_8121054
    .word off_8121070
    .word off_812108C
    .word off_81210A8
dword_8120F74:    .word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8120F90:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_8120FAC:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_8120FC8:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_8120FE4:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x2BC
off_8121000:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_812101C:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_8121038:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_8121054:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_8121070:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_812108C:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_81210A8:    .word 0x12C
    .word 0x12C
    .word 0x12C
    .word 0x190
    .word 0x1F4
    .word 0x258
    .word 0x320
off_81210C4:    .word dword_81210C8
dword_81210C8:    .word 0x2D, 0x2E, 0x2F, 0x30, 0x9, 0x56, 0x57, 0x58, 0x59
    .word 0x5A, 0x5B, 0xB, 0xC, 0xA, 0x40
dword_8121104:    .word 0xFFFFFFFF
.endfunc // sub_8120DF0

.func
.thumb_func
sub_8121108:
    push {r2,r4,r6,lr}
    ldr r4, off_8121124 // =off_8121128 
    mov r6, #0x18
loc_812110E:
    ldr r0, [r4,r6]
    // <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
    bne loc_812111E
    sub r6, #4
    bge loc_812110E
    mov r6, #0
loc_812111E:
    lsr r0, r6, #2
    pop {r2,r4,r6,pc}
    .balign 4, 0x00
off_8121124:    .word off_8121128
off_8121128:    .word 0x400
    .word 0x500
    .word 0x600
    .word 0x800, 0xA00, 0xC00, 0xE00
.endfunc // sub_8121108

.func
.thumb_func
sub_8121144:
    push {r4-r7,lr}
    ldr r0, off_8121150 // =word_200DCF0 
    mov r1, #0x18
    bl sub_80008C0
    pop {r4-r7,pc}
off_8121150:    .word word_200DCF0
.endfunc // sub_8121144

loc_8121154:
    push {r4-r7,lr}
    bl sub_8121144
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r4, [r1,#0x30]
    bl getPETNaviSelect // () -> u8
    add r2, r0, #0
    lsl r0, r0, #1
    ldr r1, off_81211B0 // =dword_81211B4 
    ldrh r1, [r1,r0]
    sub r4, r4, r1
    lsl r0, r2, #2
    ldr r1, off_81211FC // =pt_8121200 
    ldr r1, [r1,r0]
    ldr r1, [r1]
    lsl r4, r4, #2
    ldr r4, [r1,r4]
loc_812117A:
    ldr r1, [r4]
    mov r2, #1
    neg r2, r2
    cmp r1, r2
    beq loc_8121192
    ldr r2, off_81211CC // =dword_81211D0 
    ldr r1, [r2,r1]
    ldr r0, [r4,#4]
    mov lr, pc
    bx r1
    add r4, #8
    b loc_812117A
loc_8121192:
    bl sub_8123208
    pop {r4-r7,pc}
.func
.thumb_func
sub_8121198:
    push {r4,lr}
    mov r1, r10
    ldr r1, [r1,#0x40]
    ldr r4, [r1,#0x30]
    bl getPETNaviSelect // () -> u8
    lsl r0, r0, #1
    ldr r1, off_81211B0 // =dword_81211B4 
    ldrh r1, [r1,r0]
    sub r0, r4, r1
    // <endpool>
    pop {r4,pc}
.endfunc // sub_8121198

    .byte 0, 0
off_81211B0:    .word dword_81211B4
dword_81211B4:    .word 0x1500141, 0x16E015F, 0x18C017D, 0x1AA019B, 0x1C801B9
    .word 0x1E601D7
off_81211CC:    .word dword_81211D0
dword_81211D0:    .word 0x8123199, 0x81231A5, 0x81231B1, 0x81231BD, 0x81231C9
    .word 0x81231D5, 0x81231E1, 0x81231E9, 0x81231F1, 0x81231F9
    .word 0x8123201
off_81211FC:    .word pt_8121200
pt_8121200:    .word off_8121230
    .word off_812148C
    .word off_8121748
    .word off_8121A2C
    .word off_8121C40
    .word off_8121EA4
    .word off_81220F8
    .word off_8122334
    .word off_8122618
    .word off_812291C
    .word off_8122BF8
    .word off_8122EBC
off_8121230:    .word off_8121234
off_8121234:    .word dword_8121270
    .word dword_812127C
    .word dword_8121288
    .word dword_812129C
    .word dword_81212B0
    .word dword_81212CC
    .word dword_81212E8
    .word dword_812130C
    .word dword_8121330
    .word dword_8121354
    .word dword_8121388
    .word dword_81213BC
    .word dword_81213F0
    .word dword_8121424
    // <endfile>
    .word dword_8121458
/*For debugging purposes, connect comment at any range!*/
