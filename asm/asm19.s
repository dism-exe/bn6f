.include "asm19.inc"

.func
.thumb_func
sub_807CDEC:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x807ce44-0x807cdf0-4] // =off_807C82C
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_807CF24
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
    ldr r0, [pc, #0x807ce48-0x807ce24-4] // =unk_2037800
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x807ce4c-0x807ce2e-2] // =off_807CE50
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08
    bl sub_807CFFC
    bl sub_8034FB8
    pop {r4-r7,pc}
off_807CE44:    .word off_807C82C
off_807CE48:    .word unk_2037800
off_807CE4C:    .word off_807CE50
off_807CE50:    .word dword_807CE60
    .word dword_807CE68
    .word dword_807CE7C
    .word 0x807CE8A
dword_807CE60:    .word 0x721C711C, 0xFFFF5A18
dword_807CE68:    .word 0x1F1C0E1C, 0x721C201C, 0x9B1C4B1C, 0x9C1C931C, 0xFFFF5B18
dword_807CE7C:    .word 0x811C5F1C, 0x3818951C, 0x3A183918, 0x721CFFFF, 0xFFFF861C
.endfunc // sub_807CDEC

.func
.thumb_func
sub_807CE90:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x807cea0-0x807ce94-4] // =off_807CEA4
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .byte 0, 0
off_807CEA0:    .word off_807CEA4
off_807CEA4:    .word off_807CEB4
    .word off_807CED0
    .word off_807CEE4
    .word off_807CF10
off_807CEB4:    .word off_807C94C
    .word off_807C974
    .word dword_807C978+0x8C
    .word dword_807C978+0xDC
    .word dword_807C978+0x12C
    .word dword_807C978+0x154
    .word 0xFFFFFFFF
off_807CED0:    .word off_807C94C
    .word off_807C974
    .word dword_807C978+0x8C
    .word dword_807C978+0xDC
    .word 0xFFFFFFFF
off_807CEE4:    .word off_807C94C
    .word off_807C974
    .word dword_807C978+0x1A4
    .word dword_807C978+0x1F4
    .word dword_807C978+0x244
    .word dword_807C978+0x294
    .word dword_807C978+0x2BC
    .word dword_807C978+0x2E4
    .word dword_807C978+0x334
    .word dword_807C978+0x384
    .word 0xFFFFFFFF
off_807CF10:    .word off_807C94C
    .word off_807C974
    .word dword_807C978+0x3D4
    .word dword_807C978+0x424
    .word 0xFFFFFFFF
.endfunc // sub_807CE90

.func
.thumb_func
sub_807CF24:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x807cf58-0x807cf2e-2] // =off_807CF5C
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, [pc, #0x807cf9c-0x807cf48-4] // =off_807CFA0
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_807CF58:    .word off_807CF5C
off_807CF5C:    .word locret_8001AB4+1
    .word locret_80019B2+1
    .word 0x3005CD9, 0x800, 0x8001AB5, 0x80019B3, 0x3005CD9
    .word 0x800, 0x8001AB5, 0x80019B3, 0x3005CD9, 0x800
    .word 0x8001AB5, 0x80019B3, 0x3005CD9, 0x800
off_807CF9C:    .word off_807CFA0
off_807CFA0:    .word off_807CFB0
    .word off_807CFB0
    .word off_807CFB0
    .word off_807CFB0
off_807CFB0:    .word dword_8618DFC
    .word 0x6008020, 0x8618E40, 0x1800, 0x8618F50, 0x3001960
    .word 0x20
.endfunc // sub_807CF24

loc_807CFCC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x807cfe0-0x807cfd6-2] // =off_807CFE4
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_807CFE0:    .word off_807CFE4
off_807CFE4:    .word locret_807CFF4+1
    .word locret_807CFF6+1
    .word locret_807CFF8+1
    .word locret_807CFFA+1
locret_807CFF4:
    mov pc, lr
locret_807CFF6:
    mov pc, lr
locret_807CFF8:
    mov pc, lr
locret_807CFFA:
    mov pc, lr
.func
.thumb_func
sub_807CFFC:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x807d010-0x807d006-2] // =pt_807D014
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
off_807D010:    .word pt_807D014
// <endpool> <endfile>
pt_807D014:    .word dword_807D024
    .word dword_807D0B4
    .word dword_807D1A8
    .word dword_807D210
.endfunc // sub_807CFFC

/*For debugging purposes, connect comment at any range!*/
