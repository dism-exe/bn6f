.include "asm/asm27.inc"

.func
.thumb_func
sub_80946C4:
    push {r4-r7,lr}
    // initRefs
    ldr r0, off_80946D0 // =initRefs_80946D4 
    bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
    mov r0, #0
    pop {r4-r7,pc}
off_80946D0:    .word initRefs_80946D4
initRefs_80946D4:    .word comp_857CCC8 + 1<<31
    .word 0x600C000
    .word unk_2024400
    .word comp_857D43C + 1<<31
    .word 0x0
    .word unk_2025400
    .word comp_857D63C + 1<<31
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .word unk_2026400
    .word unk_857CC88
    .word unk_3001B00
    .word 0x40
    .byte 0, 0, 0, 0
.endfunc // sub_80946C4

.func
.thumb_func
sub_8094708:
    push {r4-r7,lr}
    ldr r0, off_8094774 // =unk_2025404 
    bl sub_8094738
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8094708

.func
.thumb_func
sub_8094714:
    push {r4-r7,lr}
    ldr r0, off_8094778 // =unk_2026404 
    bl sub_8094738
    mov r0, #0
    pop {r4-r7,pc}
.endfunc // sub_8094714

.func
.thumb_func
sub_8094720:
    push {r4-r7,lr}
    // memBlock
    ldr r0, off_8094778 // =unk_2026404 
    mov r1, #0x10
    lsl r1, r1, #8
    bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
    ldr r0, off_8094778 // =unk_2026404 
    bl sub_8094738
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.endfunc // sub_8094720

.func
.thumb_func
sub_8094738:
    push {r4-r7,lr}
    ldr r5, off_809477C // =byte_200BE70 
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
    // src
    add r0, r0, r5
    add r1, r4, #0
    mul r1, r6
    // dest
    add r1, r1, r7
    // halfwordCount
    mov r2, #0x64 
    bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
    add r4, #1
    cmp r4, #0x22 
    blt loc_8094752
    bl sub_80307D8
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8094774:    .word unk_2025404
off_8094778:    .word unk_2026404
    // <endpool> <endfile>
off_809477C:    .word byte_200BE70
.endfunc // sub_8094738

/*For debugging purposes, connect comment at any range!*/
