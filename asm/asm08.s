.include "asm08.inc"

.thumb
sub_806036C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x80603c8-0x8060370-4] // =off_8060184
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
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
    ldr r0, [pc, #0x80603cc-0x80603a0-4] // =unk_2037800
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x80603d4-0x80603aa-2] // =off_80603D8
    ldr r0, [r0,r1]
    bl sub_8002906
    bl sub_803FD08
    bl sub_806044C
    ldr r0, [pc, #0x80603d0-0x80603ba-2] // =off_80606BC
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80603C8:    .word off_8060184
off_80603CC:    .word unk_2037800
off_80603D0:    .word off_80606BC
off_80603D4:    .word off_80603D8
off_80603D8:    .word dword_80603E8
    .word 0x80603EE, 0x80603FC, 0x80603FE
dword_80603E8:    .word 0x2118131C, 0x6E1CFFFF, 0x411C581C, 0x911C901C, 0xFFFF4B1C
    .word 0x651CFFFF, 0x25182418
    .byte 0xFF, 0xFF
// end of function sub_806036C

.thumb
sub_8060406:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x8060414-0x806040a-2] // =off_8060418
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_8060414:    .word off_8060418
off_8060418:    .word off_8060428
    .word off_8060430
    .word off_806043C
    .word off_8060444
off_8060428:    .word off_8060284
    .word 0xFFFFFFFF
off_8060430:    .word dword_8060288+0x1C
    .word dword_8060288+0x44
    .word 0xFFFFFFFF
off_806043C:    .word dword_8060288+0x74
    .word 0xFFFFFFFF
off_8060444:    .word dword_8060288+0xA4
    .word 0xFFFFFFFF
// end of function sub_8060406

.thumb
sub_806044C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8060460-0x8060456-2] // =pt_8060464
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
off_8060460:    .word pt_8060464
// <endpool> <endfile>
pt_8060464:    .word dword_8060474
    .word dword_80604A0
    .word dword_80605E4
    .word dword_80605E8
// end of function sub_806044C

/*For debugging purposes, connect comment at any range!*/
