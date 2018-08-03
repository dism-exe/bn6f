.include "asm09.inc"

.func
.thumb_func

sub_8062AB0:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, [pc, #0x8062b0c-0x8062ab4-4] // =off_8062728
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
    ldr r0, [pc, #0x8062b10-0x8062ae4-4] // =unk_2037800
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [pc, #0x8062b18-0x8062aee-2] // =off_8062B1C
    ldr r0, [r0,r1]
    bl sub_8002906
    bl sub_803FD08
    bl sub_8062BCC
    ldr r0, [pc, #0x8062b14-0x8062afe-2] // =off_8063008
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    str r0, [r5,#0x64]
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8062B0C:    .word off_8062728
off_8062B10:    .word unk_2037800
off_8062B14:    .word off_8063008
off_8062B18:    .word off_8062B1C
off_8062B1C:    .word dword_8062B34
    .word 0x8062B3E, 0x8062B4A, 0x8062B4E, 0x8062B52, 0x8062B58
dword_8062B34:    .word 0x761C701C, 0x781C771C, 0x8B1CFFFF, 0x38188C1C, 0x3A183918
    .word 0x351CFFFF, 0x7B1CFFFF, 0x651CFFFF, 0xFFFF201C, 0x831C851C
    .word 0x941C841C, 0xFFFF971C
.endfunc // sub_8062AB0

.func
.thumb_func

sub_8062B64:
    push {lr}
    lsl r1, r1, #2
    ldr r0, [pc, #0x8062b74-0x8062b68-4] // =off_8062B78
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .balign 4, 0x00
off_8062B74:    .word off_8062B78
off_8062B78:    .word off_8062B90
    .word off_8062B9C
    .word off_8062BA4
    .word off_8062BAC
    .word off_8062BB8
    .word off_8062BC4
off_8062B90:    .word dword_8062850+0x10
    .word dword_8062850+0x50
    .word 0xFFFFFFFF
off_8062B9C:    .word dword_8062850+0x90
    .word 0xFFFFFFFF
off_8062BA4:    .word dword_8062850+0xB8
    .word 0xFFFFFFFF
off_8062BAC:    .word dword_8062850+0x108
    .word dword_8062850+0x170
    .word 0xFFFFFFFF
off_8062BB8:    .word dword_8062850+0x1A0
    .word dword_8062850+0x1E0
    .word 0xFFFFFFFF
off_8062BC4:    .word dword_8062850+0x220
    .word 0xFFFFFFFF
.endfunc // sub_8062B64

.func
.thumb_func

sub_8062BCC:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, [pc, #0x8062be0-0x8062bd6-2] // =pt_8062BE4
    ldr r0, [r1,r0]
    bl loc_8003570
    pop {pc}
off_8062BE0:    .word pt_8062BE4
// <endpool> <endfile>
pt_8062BE4:    .word dword_8062BFC
    .word dword_8062DA4
    .word dword_8062DE4
    .word dword_8062E88
    .word dword_8062EB4
    .word dword_8062F1C
.endfunc // sub_8062BCC

/*For debugging purposes, connect comment at any range!*/
