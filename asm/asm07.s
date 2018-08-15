.include "asm07.inc"

.func
.thumb_func
sub_805DF08:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_805DF64 // =off_805DD24 
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
    ldr r0, off_805DF68 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_805DF70 // =off_805DF74 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_805DFF0
    ldr r0, off_805DF6C // =off_805E1FC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_805DF64:    .word off_805DD24
off_805DF68:    .word unk_2037800
off_805DF6C:    .word off_805E1FC
off_805DF70:    .word off_805DF74
off_805DF74:    .word dword_805DF88
    .word dword_805DF90
    .word dword_805DF94
    .word 0x805DF9A, 0x805DFA0
dword_805DF88:    .word 0x2318131C, 0xFFFF9F1C
dword_805DF90:    .word 0xFFFF591C
dword_805DF94:    .word 0x601C5A1C, 0x5D1CFFFF, 0xFFFF621C
    .byte 0xFF, 0xFF
.endfunc // sub_805DF08

.func
.thumb_func
sub_805DFA2:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_805DFB0 // =off_805DFB4 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_805DFB0:    .word off_805DFB4
off_805DFB4:    .word off_805DFC8
    .word off_805DFD0
    .word off_805DFD8
    .word off_805DFE0
    .word off_805DFE8
off_805DFC8:    .word off_805DE28
    .word 0xFFFFFFFF
off_805DFD0:    .word dword_805DE2C+0x24
    .word 0xFFFFFFFF
off_805DFD8:    .word dword_805DE2C+0x4C
    .word 0xFFFFFFFF
off_805DFE0:    .word dword_805DE2C+0x7C
    .word 0xFFFFFFFF
off_805DFE8:    .word dword_805DE2C+0xAC
    .word 0xFFFFFFFF
.endfunc // sub_805DFA2

.func
.thumb_func
sub_805DFF0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_805E004 // =pt_805E008 
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
off_805E004:    .word pt_805E008
    // <endpool> <endfile>
pt_805E008:    .word dword_805E01C
    .word dword_805E084
    .word dword_805E09C
    .word dword_805E118
    .word dword_805E158
.endfunc // sub_805DFF0

/*For debugging purposes, connect comment at any range!*/
