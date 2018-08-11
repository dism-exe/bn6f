.include "asm05.inc"

.func
.thumb_func
sub_8052688:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_80526E4 // =off_8052244 
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
    bl sub_802FF4C // (int a1, int a2) ->
    bl loc_8030472
    ldr r0, off_80526E8 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_80526F0 // =off_80526F4 
    ldr r0, [r0,r1]
    bl decomp_8002906 // (int a1) -> bool
    bl chatbox_decomp_currMap_gameProgress_803FD08 // () -> int
    bl sub_80527F0
    ldr r0, off_80526EC // =off_8052EE8 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_80526E4:    .word off_8052244
off_80526E8:    .word unk_2037800
off_80526EC:    .word off_8052EE8
off_80526F0:    .word off_80526F4
off_80526F4:    .word dword_8052720
    .word 0x805272A, 0x805272E, 0x8052732, 0x8052736, 0x805273E
    .word 0x8052744, 0x8052748, 0x8052754, 0x805275C, 0x8052760
dword_8052720:    .word 0x101C091C, 0x231C191C, 0x91CFFFF, 0x91CFFFF, 0x91CFFFF
    .word 0x101CFFFF, 0x2318251C, 0x101CFFFF, 0xFFFF251C, 0xFFFF2A1C
    .word 0x81C241C, 0x231C101C, 0xFFFF1F18, 0x7A1C431C, 0xFFFF1C18
    .word 0xFFFF1F18, 0xFFFF2418
.endfunc // sub_8052688

.func
.thumb_func
sub_8052764:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_8052774 // =off_8052778 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .balign 4, 0x00
off_8052774:    .word off_8052778
off_8052778:    .word off_80527A4
    .word off_80527AC
    .word off_80527B4
    .word off_80527BC
    .word off_80527C4
    .word off_80527CC
    .word off_80527D4
    .word off_80527DC
    .word dword_80527E4
    .word dword_80527E8
    .word dword_80527EC
off_80527A4:    .word off_8052480
    .word 0xFFFFFFFF
off_80527AC:    .word off_80524C0
    .word 0xFFFFFFFF
off_80527B4:    .word off_8052480
    .word 0xFFFFFFFF
off_80527BC:    .word off_80524C0
    .word 0xFFFFFFFF
off_80527C4:    .word dword_80524C4+0x24
    .word 0xFFFFFFFF
off_80527CC:    .word dword_80524C4+0x24
    .word 0xFFFFFFFF
off_80527D4:    .word dword_80524C4+0x4C
    .word 0xFFFFFFFF
off_80527DC:    .word dword_80524C4+0x74
    .word 0xFFFFFFFF
dword_80527E4:    .word 0xFFFFFFFF
dword_80527E8:    .word 0xFFFFFFFF
dword_80527EC:    .word 0xFFFFFFFF
.endfunc // sub_8052764

.func
.thumb_func
sub_80527F0:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_8052804 // =off_8052808 
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
off_8052804:    .word off_8052808
off_8052808:    .word dword_8052834
    .word dword_80529B4
    .word dword_8052A6C
    .word dword_8052B24
    .word dword_8052BDC
    .word dword_8052BE0
    .word dword_8052BE4
    .word dword_8052C10
    .word dword_8052D54
    .word dword_8052D80
    // <endpool> <endfile>
    .word dword_8052D84
.endfunc // sub_80527F0

/*For debugging purposes, connect comment at any range!*/
