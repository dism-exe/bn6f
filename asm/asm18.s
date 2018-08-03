.include "asm18.inc"

.func
.thumb_func
sub_807A8E0:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x807a938-0x807a8e4-4] // =off_8079F74
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_807A9CC
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
    ldr r0, [pc, #0x807a93c-0x807a918-4] // =unk_2037800
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x807a940-0x807a922-2] // =off_807A944
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08
    bl sub_807AAD6
    bl sub_8034FB8
    pop {r4-r7,pc}
off_807A938:    .word off_8079F74
off_807A93C:    .word unk_2037800
off_807A940:    .word off_807A944
off_807A944:    .word dword_807A950
    .word 0x807A95A, 0x807A964
dword_807A950:    .word 0x201C1F1C, 0x791C2B1C, 0x641CFFFF, 0x951C0E1C, 0xFFFF791C
    .word 0x7F1C7E1C, 0x1F1C801C, 0x39183818, 0xFFFF3A18
.endfunc // sub_807A8E0

.func
.thumb_func
sub_807A974:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x807a984-0x807a978-4] // =off_807A988
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .balign 4, 0x00
off_807A984:    .word off_807A988
off_807A988:    .word off_807A994
    .word off_807A9A0
    .word off_807A9B8
off_807A994:    .word off_807A080
    .word dword_807A084+0x2EC
    .word 0xFFFFFFFF
off_807A9A0:    .word off_807A080
    .word dword_807A084+0x33C
    .word dword_807A084+0x38C
    .word dword_807A084+0x3DC
    .word dword_807A084+0x42C
    .word 0xFFFFFFFF
off_807A9B8:    .word dword_807A084+0x45C
    .word dword_807A084+0x74C
    .word dword_807A084+0x77C
    .word dword_807A084+0x7CC
    .word 0xFFFFFFFF
.endfunc // sub_807A974

.func
.thumb_func
sub_807A9CC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x807aa30-0x807a9d6-2] // =off_807AA34
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, [pc, #0x807aa64-0x807a9f0-4] // =off_807AA68
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
.endfunc // sub_807A9CC

    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, [pc, #0x807aa30-0x807aa08-4] // =off_807AA34
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, [pc, #0x807aa64-0x807aa22-2] // =off_807AA68
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_8030540
    pop {r4-r7,pc}
off_807AA30:    .word off_807AA34
off_807AA34:    .word locret_8001AB4+1
    .word loc_80019D0+1
    .word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
    .word 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800
off_807AA64:    .word off_807AA68
off_807AA68:    .word off_807AA74
    .word off_807AA74
    .word off_807AA90
off_807AA74:    .word off_8617068
    .word 0x6008020, 0x8617190, 0x1800, 0x8618AB4, 0x3001960
    .word 0x20
off_807AA90:    .word off_8617068
    .word 0x6008020, 0x8617190, 0x1800, 0x8618C58, 0x3001960
    .word 0x20
loc_807AAAC:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, [pc, #0x807aac0-0x807aab6-2] // =off_807AAC4
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_807AAC0:    .word off_807AAC4
off_807AAC4:    .word locret_807AAD0+1
    .word locret_807AAD2+1
    .word locret_807AAD4+1
locret_807AAD0:
    mov pc, lr
locret_807AAD2:
    mov pc, lr
locret_807AAD4:
    mov pc, lr
.func
.thumb_func
sub_807AAD6:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x807aaec-0x807aae0-4] // =pt_807AAF0
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
    .balign 4, 0x00
off_807AAEC:    .word pt_807AAF0
// <endpool> <endfile>
pt_807AAF0:    .word dword_807AAFC
    .word dword_807AC18
    .word dword_807ACA8
.endfunc // sub_807AAD6

/*For debugging purposes, connect comment at any range!*/
