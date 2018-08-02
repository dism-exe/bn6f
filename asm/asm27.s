.include "asm27.inc"

.func
 .thumb_func
.thumb
sub_80946C4:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80946d0-0x80946c6-2] // =dword_80946D4
    bl sub_8000B30
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_80946C4
off_80946D0:    .word dword_80946D4
dword_80946D4:    .word 0x8857CCC8, 0x600C000, 0x2024400, 0x8857D43C, 0x0
    .word unk_2025400
    .word 0x8857D63C, 0x0
    .word unk_2026400
    .word dword_857CC88
    .word unk_3001B00
    .word 0x40
    .byte 0, 0, 0, 0


.func
 .thumb_func
.thumb
sub_8094708:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8094774-0x809470a-2] // =unk_2025404
    bl sub_8094738
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8094708


.func
 .thumb_func
.thumb
sub_8094714:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8094778-0x8094716-2] // =unk_2026404
    bl sub_8094738
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8094714


.func
 .thumb_func
.thumb
sub_8094720:
    push {r4-r7,lr}
// memBlock
    ldr r0, [pc, #0x8094778-0x8094722-2] // =unk_2026404
    mov r1, #0x10
    lsl r1, r1, #8
    bl CpuSet_ZeroFillWord
    ldr r0, [pc, #0x8094778-0x809472c-4] // =unk_2026404
    bl sub_8094738
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8094720
    .balign 4, 0x00


.func
 .thumb_func
.thumb
sub_8094738:
    push {r4-r7,lr}
    ldr r5, [pc, #0x809477c-0x809473a-2] // =byte_200BE70
    ldr r7, [r5,#0xc] // (dword_200BE7C - 0x200be70)
    ldr r1, [r7,#8]
    add r7, r7, r1
    ldrb r6, [r5]
    lsl r6, r6, #1
    add r7, #0x42 
    mov r1, #0x2b 
    mul r1, r6
    add r7, r7, r1
    add r5, r0, #0
    mov r4, #0
loc_8094752:
    mov r0, #0x64 
    mul r0, r4
    add r0, r0, r5
    add r1, r4, #0
    mul r1, r6
    add r1, r1, r7
    mov r2, #0x64 
    bl sub_800092A
    add r4, #1
    cmp r4, #0x22 
    blt loc_8094752
    bl sub_80307D8
    mov r0, #0
// <endpool>
    pop {r4-r7,pc}
.endfunc // sub_8094738


    .balign 4, 0x00
off_8094774:    .word unk_2025404
// <endfile>
off_8094778:    .word unk_2026404
/*For debugging purposes, connect comment at any range!*/
