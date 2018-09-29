.include "asm/asm06.inc"

.func
.thumb_func
sub_80595B8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_8059614 // =off_8059294 
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
    ldr r0, off_8059618 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_8059620 // =off_8059624 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_80596C8
    ldr r0, off_805961C // =off_8059DE8 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
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
.endfunc // sub_80595B8

.func
.thumb_func
sub_8059664:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_8059674 // =off_8059678 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .balign 4, 0x00
off_8059674:    .word off_8059678
off_8059678:    .word off_805968C
    .word off_80596A0
    .word off_80596AC
    .word off_80596B4
    .word off_80596BC
off_805968C:    .word off_8059378
    .word unk_80593B8
    .word unk_80593F8
    .word unk_8059438
    .word 0xFFFFFFFF
off_80596A0:    .word unk_8059468
    .word unk_80594A8
    .word 0xFFFFFFFF
off_80596AC:    .word unk_80594E8
    .word 0xFFFFFFFF
off_80596B4:    .word unk_8059528
    .word 0xFFFFFFFF
off_80596BC:    .word unk_8059558
    .word unk_8059588
    .word 0xFFFFFFFF
.endfunc // sub_8059664

.func
.thumb_func
sub_80596C8:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_80596DC // =off_80596E0 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_80596DC:    .word off_80596E0
    // <endpool> <endfile>
off_80596E0:    .word dword_80596F4
    .word dword_805975C
    .word dword_8059A58
    .word dword_8059C00
    .word dword_8059D30
.endfunc // sub_80596C8

/*For debugging purposes, connect comment at any range!*/
