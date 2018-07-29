.include "asm21.inc"

.thumb
sub_8080D90:
    push {lr}
    ldr r0, [pc, #0x8080d9c-0x8080d92-2] // =dword_2009690
    mov r1, #8
    bl sub_80008B4
    pop {pc}
off_8080D9C:    .word dword_2009690
// end of function sub_8080D90

.thumb
sub_8080DA0:
    push {r4-r7,lr}
    bl sub_8081308
    add r4, r0, #0
    lsl r1, r4, #4
    ldr r7, [pc, #0x8080e30-0x8080daa-2] // =off_8080E34
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r6, [pc, #0x8080f94-0x8080dc4-4] // =off_8080F98
    lsl r1, r4, #2
    ldr r0, [r6,r1]
    bl sub_80304E8
    lsl r1, r4, #2
    ldr r0, [pc, #0x8080e2c-0x8080dd0-4] // =off_8081220
    ldr r0, [r0,r1]
    bl sub_8002354
    bl sub_802D234
    cmp r0, #1
    beq locret_8080DE8
    bl sub_803537C
    bl sub_8035424
locret_8080DE8:
    pop {r4-r7,pc}
// end of function sub_8080DA0

    push {r4-r7,lr}
    bl sub_808137C
    add r4, r0, #0
    lsl r1, r4, #4
    ldr r7, [pc, #0x8080e30-0x8080df4-4] // =off_8080E34
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r6, [pc, #0x8080f94-0x8080e0e-2] // =off_8080F98
    lsl r1, r4, #2
    ldr r0, [r6,r1]
    bl sub_80304E8
    lsl r1, r4, #2
    ldr r0, [pc, #0x8080e2c-0x8080e1a-2] // =off_8081220
    ldr r0, [r0,r1]
    bl sub_8002354
    bl sub_803537C
    bl sub_8035424
    pop {r4-r7,pc}
off_8080E2C:    .word off_8081220
off_8080E30:    .word off_8080E34
off_8080E34:    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word locret_8001AB4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019EC+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_8001A58+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_8001A58+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word locret_80019B0+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word locret_80019B0+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_8001A10+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_8001A34+1
    .word 0x3005CD9, 0x0
    .word locret_8001AB4+1
    .word loc_80019B4+1
    .word 0x3005CD9, 0x0
off_8080F94:    .word off_8080F98
off_8080F98:    .word off_8080FF0
    .word aSa
    .word 0x0
    .word off_8081028
    .word aA
    .word off_8081060
    .word off_808107C
    .word off_8081098
    .word off_80810B4
    .word aHpa
    .word off_80810EC
    .word aHpa_0
    .word aA_0
    .word aHpa_1
    .word aHpa_2
    .word off_8081178
    .word a6a
    .word off_80811B0
    .word aDda
    .word aHpa_3
    .word off_8081204
    .word a6a
off_8080FF0:    .word off_8614DE0
    .word 0x6000020, 0x8615028, 0x800, 0x86151BC, 0x3001960
    .word 0x20
aSa:    .byte 0x60, 0x53, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_86154A8
    .word 0x800, 0x86155E8, 0x3001960, 0x20
off_8081028:    .word off_861578C
    .word 0x6000020, 0x861595C, 0x800, 0x0, 0x0, 0x0
aA:    .byte 0x2C, 0x60, 0x61, 0x8, 0x20, 0x0
    .hword 0x600
    .word dword_8616264
    .word 0x800, 0x86163F4, 0x3001960, 0x20
off_8081060:    .word off_8615BA4
    .word 0x6000020, 0x8615D14, 0x800, 0x8615E88, 0x3001960
    .word 0x20
off_808107C:    .word off_8610B04
    .word 0x6000020, 0x8610C18, 0x800, 0x8610D64, 0x3001960
    .word 0x20
off_8081098:    .word off_8616598
    .word 0x6000020, 0x8616634, 0x800, 0x8616760, 0x3001960
    .word 0x20
off_80810B4:    .word off_8616598
    .word 0x6000020, 0x8616634, 0x800, 0x8616EC4, 0x3001960
    .word 0x20
aHpa:    .byte 0x68, 0x70, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8617190
    .word 0x800, 0x86172E4, 0x3001960, 0x20
off_80810EC:    .word off_86116C8
    .word 0x6000020, 0x861184C, 0x800, 0x86119C4, 0x3001960
    .word 0x20
aHpa_0:    .byte 0x68, 0x70, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8617190
    .word 0x800, 0x86185C8, 0x3001960, 0x20
aA_0:    .byte 0x28, 0x2A, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8612CF0
    .word 0x800, 0x8612E84, 0x3001960, 0x20
aHpa_1:    .byte 0x68, 0x70, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8617190
    .word 0x800, 0x861876C, 0x3001960, 0x20
aHpa_2:    .byte 0x68, 0x70, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8617190
    .word 0x800, 0x8618AB4, 0x3001960, 0x20
off_8081178:    .word dword_8618DFC
    .word 0x6000020, 0x8618E40, 0x800, 0x8618F50, 0x3001960
    .word 0x20
a6a:    .byte 0x8, 0x36, 0x61, 0x8, 0x20, 0x0
    .hword 0x600
    .word dword_8613AAC
    .word 0x800, 0x0, 0x0, 0x0
off_80811B0:    .word dword_8618DFC
    .word 0x6000020, 0x8618E40, 0x800, 0x8618910, 0x3001960
    .word 0x20
aDda:    .byte 0x44, 0x44, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8614A0C
    .word 0x800, 0x8614BB8, 0x3001960, 0x20
aHpa_3:    .byte 0x68, 0x70, 0x61, 0x8, 0x20
    .byte 0x0
    .hword 0x600
    .word dword_8617190
    .word 0x800, 0x8618C58, 0x3001960, 0x20
off_8081204:    .word off_8619174
    .word 0x6000020
    .word dword_8619474
    .word 0x800, 0x0, 0x0, 0x0
off_8081220:    .word dword_8081278
    .word dword_8081278
    .word 0x0
    .word off_808127C
    .word dword_8081284
    .word dword_8081284
    .word off_8081288
    .word off_8081290
    .word off_8081290
    .word off_8081298
    .word off_80812A0
    .word off_80812A8
    .word off_80812B0
    .word off_80812B8
    .word off_80812C0
    .word off_80812C8
    .word off_80812D0
    .word off_80812DC
    .word off_80812E4
    .word off_80812EC
    .word off_80812F4
    .word off_80812FC
dword_8081278:    .word 0xFFFFFFFF
off_808127C:    .word dword_806C1E0+0x2C
    .word 0xFFFFFFFF
dword_8081284:    .word 0xFFFFFFFF
off_8081288:    .word dword_807F604+0x8C
    .word 0xFFFFFFFF
off_8081290:    .word off_807FAC0
    .word 0xFFFFFFFF
off_8081298:    .word dword_807FAC4+0xD4
    .word 0xFFFFFFFF
off_80812A0:    .word dword_807F868+0x98
    .word 0xFFFFFFFF
off_80812A8:    .word dword_807FAC4+0x3C4
    .word 0xFFFFFFFF
off_80812B0:    .word dword_807FAC4+0x6B4
    .word 0xFFFFFFFF
off_80812B8:    .word dword_807FAC4+0x7E4
    .word 0xFFFFFFFF
off_80812C0:    .word dword_80802C4+0x2FC
    .word 0xFFFFFFFF
off_80812C8:    .word dword_80802C4+0x5EC
    .word 0xFFFFFFFF
off_80812D0:    .word dword_80802C4+0x614
    .word dword_806992C+0x1C4
    .word 0xFFFFFFFF
off_80812DC:    .word dword_80802C4+0x2D4
    .word 0xFFFFFFFF
off_80812E4:    .word off_806A810
    .word 0xFFFFFFFF
off_80812EC:    .word dword_80802C4+0x7DC
    .word 0xFFFFFFFF
off_80812F4:    .word off_807EB18
    .word 0xFFFFFFFF
off_80812FC:    .word dword_80802C4+0x614
    .word dword_806992C+0x354
    .word 0xFFFFFFFF
.thumb
sub_8081308:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x18]
    ldr r1, [r0,#0x3c]
    ldrb r0, [r1,#4]
    cmp r0, #0xff
    bne locret_808135C
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r1, [r0,#4]
    ldrb r0, [r0,#5]
    cmp r1, #0x80
    blt loc_808135E
    ldr r2, [pc, #0x8081398-0x8081322-2] // =pt_808139C
    sub r1, #0x80
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    tst r2, r2
    beq loc_808135E
    ldrb r0, [r2,r0]
    cmp r0, #0x10
    bne locret_808135C
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrh r1, [r1,#4]
    ldr r3, [pc, #0x8081364-0x808133a-2] // =word_8081368
loc_808133C:
    ldrh r2, [r3]
    tst r2, r2
    beq locret_808135C
    cmp r1, r2
    bne loc_8081358
    push {r0}
    ldrh r2, [r3,#2]
    add r0, r2, #0
    bl sub_802F168
    pop {r0}
    bne locret_808135C
    mov r0, #0x15
    b locret_808135C
loc_8081358:
    add r3, #4
    b loc_808133C
locret_808135C:
    pop {r4-r7,pc}
loc_808135E:
    mov r0, #7
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8081364:    .word word_8081368
word_8081368:    .hword 0x83
word_808136A:    .hword 0xBE1
    .word 0xBE20183, 0xBE30283, 0xFD20285, 0x0
// end of function sub_8081308

.thumb
sub_808137C:
    push {r4-r7,lr}
    cmp r1, #0x80
    blt loc_8081392
    ldr r2, [pc, #0x8081398-0x8081382-2] // =pt_808139C
    sub r1, #0x80
    lsl r1, r1, #2
    ldr r2, [r2,r1]
    tst r2, r2
    beq loc_8081392
    ldrb r0, [r2,r0]
    pop {r4-r7,pc}
loc_8081392:
    mov r0, #7
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8081398:    .word pt_808139C
// <endpool> <endfile>
pt_808139C:    .word dword_80813F8
    .word dword_80813FC
    .word dword_8081400
    .word dword_8081404
    .word 0x0
    .word dword_8081408
    .word 0x0
    .word 0x0
    .word dword_8081410
    .word 0x0
    .word 0x0
    .word 0x0
    .word dword_8081418
    .word dword_8081428
    .word 0x0
    .word 0x0
    .word dword_8081438
    .word dword_808143C
    .word dword_8081440
    .word dword_8081444
    .word dword_8081448
    .word dword_808144C
    .word dword_8081450
// end of function sub_808137C

/*For debugging purposes, connect comment at any range!*/
