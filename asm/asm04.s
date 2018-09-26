.include "asm/asm04.inc"

.func
.thumb_func
sub_804E62C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_804E688 // =off_804E38C 
    ldr r1, [r7,#0x14] // Toolkit.unk_2011BB0
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
    ldr r0, off_804E68C // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_804E694 // =off_804E698 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_804E720
    ldr r0, off_804E690 // =off_804E9CC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_804E688:    .word off_804E38C
off_804E68C:    .word unk_2037800
off_804E690:    .word off_804E9CC
off_804E694:    .word off_804E698
off_804E698:    .word dword_804E6AC
    .word 0x804E6BE, 0x804E6C2, 0x804E6C6, 0x804E6C8
dword_804E6AC:    .word 0x151C111C, 0x511C161C, 0x2418131C, 0x1C182518, 0x71CFFFF
    .word 0x141CFFFF, 0xFFFFFFFF, 0x9D1C961C, 0xFFFF1C18
.endfunc // sub_804E62C

.func
.thumb_func
sub_804E6D0:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_804E6E0 // =off_804E6E4 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .byte 0, 0
off_804E6E0:    .word off_804E6E4
off_804E6E4:    .word dword_804E6F8
    .word off_804E6FC
    .word off_804E70C
    .word dword_804E714
    .word off_804E718
dword_804E6F8:    .word 0xFFFFFFFF
off_804E6FC:    .word off_804E450
    .word off_804E478
    .word off_804E4A0
    .word 0xFFFFFFFF
off_804E70C:    .word dword_804E5D4
    .word 0xFFFFFFFF
dword_804E714:    .word 0xFFFFFFFF
off_804E718:    .word unk_804E604
    .word 0xFFFFFFFF
.endfunc // sub_804E6D0

.func
.thumb_func
sub_804E720:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_804E734 // =off_804E738 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_804E734:    .word off_804E738
    // <endpool>
off_804E738:    .word dword_804E74C
.endfunc // sub_804E720

    .word dword_804E87C
    .word dword_804E8D0
    .word dword_804E8D4
    // <endfile>
    .word dword_804E8D8
/*For debugging purposes, connect comment at any range!*/
