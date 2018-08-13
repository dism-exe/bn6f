.include "asm02.inc"

.func
.thumb_func
// (int idx) -> void*
refIndex_8021DA8:
    ldr r1, off_8021AB0 // =dword_8021DA8 
    mov r2, #44
    mul r0, r2
    add r0, r0, r1
    mov pc, lr
    .byte 0, 0
off_8021AB0:    .word dword_8021DA8
.endfunc // refIndex_8021DA8

.func
.thumb_func
sub_8021AB4:
    push {r4,r6,r7,lr}
    mov r2, #0x3c 
    mul r1, r2
    mov r3, r10
    ldr r3, [r3,#0x48]
    // dest
    add r1, r1, r3
    // wordCount
    mov r2, #0x3c 
    push {r1}
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
    pop {r7}
    mov r6, #0
loc_8021ACC:
    ldrh r0, [r7,r6]
    bl sub_8021AE0
    mov r2, #1
    bl sub_8021B2A
    add r6, #2
    cmp r6, #0x3c 
    blt loc_8021ACC
    pop {r4,r6,r7,pc}
.endfunc // sub_8021AB4

.func
.thumb_func
sub_8021AE0:
    push {lr}
    lsr r1, r0, #9
    ldr r2, dword_8021AEC // =0xB51001FF 
    and r0, r2
    pop {pc}
    .balign 4, 0x00
dword_8021AEC:    .word 0xB51001FF
.endfunc // sub_8021AE0

    push {r0-r2}
    bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
    pop {r0-r2}
    tst r2, r2
    bne loc_8021B00
    mov r0, #0
    pop {r4,pc}
loc_8021B00:
    push {r0-r2}
    ldr r1, off_8021B74 // =0x1E20 
    add r1, r1, r0
    add r0, r1, #0
    bl sub_802F114 // (int a1) -> void
    pop {r0-r2}
    push {r2}
    bl computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
    add r4, r3, #0
    pop {r2}
    bl sub_8021B5A
    push {r3}
    add r1, r4, #0
    bl sub_81376B8
    pop {r3}
    add r0, r3, #0
    pop {r4,pc}
.func
.thumb_func
sub_8021B2A:
    push {lr}
    push {r0-r2}
    bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
    pop {r0-r2}
    tst r2, r2
    bne loc_8021B3C
    mov r0, #0
    pop {pc}
loc_8021B3C:
    push {r0-r2}
    ldr r1, off_8021B74 // =0x1E20 
    add r1, r1, r0
    // a1
    add r0, r1, #0
    bl sub_802F114 // (int a1) -> void
    pop {r0-r2}
    push {r2}
    bl computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
    pop {r2}
    bl sub_8021B5A
    add r0, r3, #0
    pop {pc}
.endfunc // sub_8021B2A

.func
.thumb_func
sub_8021B5A:
    mov r3, #1
    ldrb r1, [r0]
    cmp r1, #0x63 
    beq loc_8021B6E
    mov r3, #0
    add r1, r1, r2
    cmp r1, #0x63 
    ble loc_8021B6E
    mov r1, #0x63 
    mov r3, #2
loc_8021B6E:
    strb r1, [r0]
    mov pc, lr
    .balign 4, 0x00
off_8021B74:    .word 0x1E20
.endfunc // sub_8021B5A

.func
.thumb_func
// (int idx, int searchItem, int off) -> void*
// [break (E7FE)]
//   When getting an item; like from mayl, or when loading shops
sub_8021B78:
    push {lr}
    push {r0-r2}
    tst r2, r2
    beq loc_8021B84
    bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
loc_8021B84:
    pop {r0-r2}
    push {r2}
    bl computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
    pop {r2}
    strb r2, [r0]
    // return itemRef
    pop {pc}
.endfunc // sub_8021B78

.func
.thumb_func
// (int idx, int searchItem, int off) -> void*
sub_8021B92:
    push {r4,lr}
    push {r2}
    bl computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
    add r4, r3, #0
    pop {r2}
    mov r3, #1
    ldrb r1, [r0]
    tst r1, r1
    beq loc_8021BB0
    mov r3, #0
    sub r1, r1, r2
    bge loc_8021BB0
    mov r3, #2
    add r1, r1, r2
loc_8021BB0:
    strb r1, [r0]
    tst r1, r1
    bne loc_8021BBC
    push {r3}
    add r1, r4, #0
    pop {r3}
loc_8021BBC:
    add r0, r3, #0
    pop {r4,pc}
.endfunc // sub_8021B92

.func
.thumb_func
sub_8021BC0:
    push {r4,lr}
    push {r0,r1}
    bl sub_8006EA4
    pop {r0,r1}
    bne loc_8021BD4
    bl computeItemRef_Toolkit_unk4C // (int idx, int searchItem, int off) -> void*
    ldrb r0, [r0]
    pop {r4,pc}
loc_8021BD4:
    mov r0, #0
    pop {r4,pc}
.endfunc // sub_8021BC0

.func
.thumb_func
sub_8021BD8:
    push {r7,lr}
    push {r0}
    bl sub_8006E84
    pop {r0}
    bne loc_8021BFE
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r1, #0xc
    mul r1, r0
    add r7, r7, r1
    ldrb r0, [r7]
    ldrb r1, [r7,#1]
    add r0, r0, r1
    ldrb r1, [r7,#2]
    add r0, r0, r1
    ldrb r1, [r7,#3]
    add r0, r0, r1
    pop {r7,pc}
loc_8021BFE:
    mov r0, #0
    pop {r7,pc}
.endfunc // sub_8021BD8

.func
.thumb_func
sub_8021C02:
    push {r4-r7,lr}
    sub sp, sp, #4
    push {r0,r1}
    mov r2, r10
    ldr r2, [r2,#0x40]
    pop {r0,r1}
    ldrb r2, [r2,#5]
    str r2, [sp]
    mov r4, #0
    mov r5, #0
loc_8021C16:
    mov r7, r10
    ldr r7, [r7,#0x48]
    ldr r6, off_8021C60 // =unk_20018EC 
    ldrb r3, [r6,r4]
    lsr r2, r3, #4
    mov r3, #0x3c 
    mul r3, r2
    add r3, r3, r7
    mov r2, #0
loc_8021C28:
    ldrh r7, [r3,r2]
    ldr r6, dword_8021C64 // =0x1FF 
    and r6, r7
    lsr r7, r7, #9
    cmp r0, r6
    bne loc_8021C48
    cmp r1, r7
    bne loc_8021C48
    push {r0,r1}
    add r0, r6, #0
    add r1, r7, #0
    bl sub_8006EA4
    pop {r0,r1}
    bne loc_8021C48
    add r5, #1
loc_8021C48:
    add r2, #2
    cmp r2, #0x3c 
    blt loc_8021C28
    add r4, #1
    ldr r2, [sp]
    sub r2, #1
    str r2, [sp]
    bne loc_8021C16
    add sp, sp, #4
    add r0, r5, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_8021C60:    .word unk_20018EC
dword_8021C64:    .word 0x1FF
.endfunc // sub_8021C02

.func
.thumb_func
sub_8021C68:
    push {lr}
    mov r0, r10
    // memBlock
    ldr r0, [r0,#0x4c]
    // numWords
    ldr r1, dword_8021C78 // =0xF00 
    bl CpuSet_ZeroFillWord // (void *memBlock, unsigned int numWords) -> void
    pop {pc}
    .balign 4, 0x00
dword_8021C78:    .word 0xF00
.endfunc // sub_8021C68

.func
.thumb_func
// (int idx, int searchItem, int off) -> void*
computeItemRef_Toolkit_unk4C:
    push {r4,r7,lr}
    add r2, r0, #0
    push {r1,r2}
    bl refIndex_8021DA8 // (int idx) -> void*
    pop {r1,r2}
    add r0, #0
    mov r3, #0
loc_8021C8C:
    // index of r1_searchItem in r0_ptr or 0
    ldrb r4, [r0,r3]
    cmp r1, r4
    beq loc_8021C9A
    add r3, #1
    cmp r3, #4
    // for 4 items
    blt loc_8021C8C
    mov r3, #0
loc_8021C9A:
    mov r7, r10
    ldr r7, [r7,#0x4c] // Toolkit.unk_2002230
    mov r1, #12
    mul r1, r2
    add r7, r7, r1
    add r0, r7, r3
    // return Toolkit.unk_4C + (12*r2_off) + r3_itemIdx
    pop {r4,r7,pc}
.endfunc // computeItemRef_Toolkit_unk4C

.func
.thumb_func
sub_8021CA8:
    push {r4-r7,lr}
    mov r4, #0
    mov r5, #0
    mov r2, #0
loc_8021CB0:
    // idx
    add r0, r2, #0
    push {r2}
    bl refIndex_8021DA8 // (int idx) -> void*
    pop {r2}
    push {r0,r2}
    add r0, r2, #0
    bl sub_8006E84
    pop {r0,r2}
    bne loc_8021CF4
    mov r3, #0
loc_8021CC8:
    ldrb r6, [r0,r3]
    cmp r6, #0xff
    beq loc_8021CEE
    ldrb r7, [r0,#9]
    mov r1, #0x20 
    tst r7, r1
    bne loc_8021CEE
    mov r7, r10
    ldr r7, [r7,#0x4c]
    mov r1, #0xc
    mul r1, r2
    add r7, r7, r1
    add r1, r7, r3
    ldrb r1, [r1]
    add r4, r4, r1
    ldrb r7, [r0,#7]
    cmp r7, #2
    bne loc_8021CEE
    add r5, r5, r1
loc_8021CEE:
    add r3, #1
    cmp r3, #4
    blt loc_8021CC8
loc_8021CF4:
    add r2, #1
    ldr r1, off_8021D04 // =0x140 
    cmp r2, r1
    blt loc_8021CB0
    add r0, r4, #0
    add r1, r5, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8021D04:    .word 0x140
.endfunc // sub_8021CA8

.func
.thumb_func
sub_8021D08:
    push {lr}
    ldr r0, off_8021D94 // =unk_203A0A0 
    ldr r1, off_8021D98 // =0x2E0 
    bl sub_80008C0
    pop {pc}
.endfunc // sub_8021D08

.func
.thumb_func
sub_8021D14:
    push {lr}
    ldr r2, off_8021D9C // =0x170 
    mul r2, r0
    ldr r0, off_8021DA0 // =unk_203A0A0 
    add r0, r0, r2
    ldrb r2, [r0,r1]
    cmp r2, #0xff
    bge locret_8021D28
    add r2, #1
    strb r2, [r0,r1]
locret_8021D28:
    pop {pc}
.endfunc // sub_8021D14

    ldr r2, off_8021D9C // =0x170 
    mul r2, r0
    ldr r0, off_8021DA4 // =unk_203A0A0 
    add r0, r0, r2
    ldrb r0, [r0,r1]
    mov pc, lr
.func
.thumb_func
sub_8021D36:
    push {lr}
    ldr r0, off_8021D6C // =unk_2000AF0 
    mov r1, #0x40 
    bl sub_80008C0
    // src
    ldr r0, off_8021D80 // =dword_8021D88 
    // dest
    ldr r1, off_8021D70 // =unk_2001184 
    // wordCount
    mov r2, #8
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
    // src
    ldr r0, off_8021D80 // =dword_8021D88 
    // dest
    ldr r1, off_8021D74 // =unk_200119C 
    // wordCount
    mov r2, #8
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
    // src
    ldr r0, off_8021D84 // =dword_8021D88+2 
    // dest
    ldr r1, off_8021D78 // =unk_20007D6 
    // wordCount
    mov r2, #8
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
    // src
    ldr r0, off_8021D84 // =dword_8021D88+2 
    // dest
    ldr r1, off_8021D7C // =unk_200083A 
    // wordCount
    mov r2, #8
    bl CpuSet_copyWords // (u32 *src, u32 *dest, int wordCount) -> void
    pop {pc}
    .balign 4, 0x00
off_8021D6C:    .word unk_2000AF0
off_8021D70:    .word unk_2001184
off_8021D74:    .word unk_200119C
off_8021D78:    .word unk_20007D6
off_8021D7C:    .word unk_200083A
off_8021D80:    .word dword_8021D88
off_8021D84:    .word dword_8021D88+2
    // <endpool>
dword_8021D88:    .word 0x7E7E0002, 0xE67E7E, 0x0
.endfunc // sub_8021D36

off_8021D94:    .word unk_203A0A0
off_8021D98:    .word 0x2E0
off_8021D9C:    .word 0x170
off_8021DA0:    .word unk_203A0A0
    // <endfile>
off_8021DA4:    .word unk_203A0A0
/*For debugging purposes, connect comment at any range!*/
