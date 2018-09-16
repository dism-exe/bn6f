.include "asm17.inc"

.func
.thumb_func
sub_807931C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_8079374 // =off_80790A4 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_80793E8
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
    ldr r0, off_8079378 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_807937C // =off_8079380 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_807948C
    bl sub_8034FB8
    pop {r4-r7,pc}
off_8079374:    .word off_80790A4
off_8079378:    .word unk_2037800
off_807937C:    .word off_8079380
off_8079380:    .word dword_8079388
    .word dword_8079390
dword_8079388:    .word 0x201C0E1C, 0xFFFF4B1C
dword_8079390:    .word 0x5A180E1C, 0x991C5B18
    .byte 0xFF, 0xFF
.endfunc // sub_807931C

.func
.thumb_func
sub_807939A:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_80793A8 // =off_80793AC 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_80793A8:    .word off_80793AC
off_80793AC:    .word off_80793B4
    .word off_80793CC
off_80793B4:    .word off_80790EC
    .word off_807C974
    .word dword_80790F0+0x24
    .word dword_80790F0+0x74
    .word dword_80790F0+0xC4
    .word 0xFFFFFFFF
off_80793CC:    .word off_80790EC
    .word off_807C974
    .word dword_80790F0+0x114
    .word dword_80790F0+0x164
    .word dword_80790F0+0x1B4
    .word dword_80790F0+0x204
    .word 0xFFFFFFFF
.endfunc // sub_807939A

.func
.thumb_func
sub_80793E8:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_807941C // =off_8079420 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_8079440 // =off_8079444 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_807941C:    .word off_8079420
off_8079420:    .word locret_8001AB4+1
    .word locret_80019B2+1
    .word 0x3005CD9, 0x800, 0x8001AB5, 0x80019B3, 0x3005CD9
    .word 0x800
off_8079440:    .word off_8079444
off_8079444:    .word off_807944C
    .word off_807944C
off_807944C:    .word dword_8618DFC
    .word 0x6008020, 0x8618E40, 0x1800, 0x8618910, 0x3001960
    .word 0x20
.endfunc // sub_80793E8

loc_8079468:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_807947C // =off_8079480 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_807947C:    .word off_8079480
off_8079480:    .word locret_8079488+1
    .word locret_807948A+1
locret_8079488:
    mov pc, lr
locret_807948A:
    mov pc, lr
.func
.thumb_func
sub_807948C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_80794A0 // =pt_80794A4 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_80794A0:    .word pt_80794A4
    // <endpool> <endfile>
pt_80794A4:    .word dword_80794AC
    .word dword_80794EC
.endfunc // sub_807948C

/*For debugging purposes, connect comment at any range!*/
