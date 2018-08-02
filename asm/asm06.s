.include "asm06.inc"

.func
 .thumb_func
.thumb
sub_80595B8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x8059614-0x80595bc-4] // =off_8059294
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
    ldr r0, [pc, #0x8059618-0x80595ec-4] // =unk_2037800
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8059620-0x80595f6-2] // =off_8059624
    ldr r0, [r0,r1]
    bl sub_8002906
    bl sub_803FD08
    bl sub_80596C8
    ldr r0, [pc, #0x805961c-0x8059606-2] // =off_8059DE8
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
.endfunc // sub_80595B8
    .balign 4, 0x00
off_8059614:    .word off_8059294
off_8059618:    .word unk_2037800
off_805961C:    .word off_8059DE8
off_8059620:    .word off_8059624
off_8059624:    .word dword_8059638
    .word 0x8059646, 0x805964E, 0x805965A, 0x8059662
dword_8059638:    .word 0x3E1C3D1C, 0x321C131C, 0x1B182F1C, 0x351CFFFF, 0x461C451C
    .word 0x351CFFFF, 0x2F1C4D1C, 0x1C182518, 0x351CFFFF, 0x481C401C
    .word 0xFFFFFFFF


.func
 .thumb_func
.thumb
sub_8059664:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x8059674-0x8059668-4] // =off_8059678
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
.endfunc // sub_8059664
    .balign 4, 0x00
off_8059674:    .word off_8059678
off_8059678:    .word off_805968C
    .word off_80596A0
    .word off_80596AC
    .word off_80596B4
    .word off_80596BC
off_805968C:    .word off_8059378
    .word dword_805937C+0x3C
    .word dword_805937C+0x7C
    .word dword_805937C+0xBC
    .word 0xFFFFFFFF
off_80596A0:    .word dword_805937C+0xEC
    .word dword_805937C+0x12C
    .word 0xFFFFFFFF
off_80596AC:    .word dword_805937C+0x16C
    .word 0xFFFFFFFF
off_80596B4:    .word dword_805937C+0x1AC
    .word 0xFFFFFFFF
off_80596BC:    .word dword_805937C+0x1DC
    .word dword_805937C+0x20C
    .word 0xFFFFFFFF


.func
 .thumb_func
.thumb
sub_80596C8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x80596dc-0x80596d2-2] // =off_80596E0
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
.endfunc // sub_80596C8
off_80596DC:    .word off_80596E0
// <endpool> <endfile>
off_80596E0:    .word dword_80596F4
    .word dword_805975C
    .word dword_8059A58
    .word dword_8059C00
    .word dword_8059D30


/*For debugging purposes, connect comment at any range!*/
