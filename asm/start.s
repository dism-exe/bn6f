.include "start.inc"

.func
start_:
    b loc_80000D0
dword_8000004:    .word 0x51AEFF24, 0x21A29A69, 0xA82843D, 0xAD09E484, 0x988B2411
    .word 0x217F81C0, 0x19BE52A3, 0x20CE0993, 0x4A4A4610, 0xEC3127F8
    .word 0x33E8C758, 0xBFCEE382, 0x94DFF485, 0xC1094BCE, 0xC08A5694
    .word 0xFCA77213, 0x734D849F, 0x619ACAA3, 0x27A39758, 0x769803FC
    .word 0x61C71D23, 0x56AE0403, 0x8438BF, 0xFD0EA740, 0x3FE52FF
    .word 0xF130956F, 0x85C0FB97, 0x2580D660, 0x3BE63A9, 0xE2384E01
    .word 0xFF34A2F9, 0x44033EBB, 0xCB900078, 0x943A1188, 0x637CC065
    .word 0xAF3CF087, 0x8BE425D6, 0x72AC0A38, 0x7F8D421, 0x4147454D
    .word 0x364E414D, 0x5858465F, 0x45365242, 0x963830, 0x0
    .word 0x0
    .word 0x5900, 0x0, 0x0, 0x0, 0x0
loc_80000D0:
    mov r0, #0x12
    msr cpsr_cf, r0
    ldr r13, dword_80001EC // =0x3007F60 
    mov r0, #0x13
    msr cpsr_cf, r0
    ldr r13, dword_80001F0 // =0x3007FE0 
    mov r0, #0x1f
    msr cpsr_cf, r0
    ldr r13, dword_80001F4 // =0x3007E00 
    ldr r0, off_80001F8 // =loc_3007FFC 
    ldr r1, dword_80001FC // =loc_3005B00 
    str r1, [r0]
    ldr r0, off_8000200 // =GamePakWaitstateControl 
    ldr r1, dword_8000204 // =0x45B4 
    str r1, [r0]
    // mem
    mov r0, #0x3000000 // word_3000000
    // size
    mov r1, #0x7e00
    bl start_clearMemory // (void *mem, int size) -> void
    // mem
    mov r0, #0x2000000 // timer_2000000
    // size
    mov r1, #0x40000
    bl start_clearMemory // (void *mem, int size) -> void
    // mem
    mov r0, #0x6000000
    // size
    mov r1, #0x18000
    bl start_clearMemory // (void *mem, int size) -> void
    // mem
    mov r0, #0x7000000
    // size
    mov r1, #0x400
    bl start_clearMemory // (void *mem, int size) -> void
    // mem
    mov r0, #0x5000000
    // size
    mov r1, #0x400
    bl start_clearMemory // (void *mem, int size) -> void
    // src
    ldr r0, mem // =loc_81D6000 
    // dest
    ldr r1, a2 // =loc_3005B00 
    // size
    ldr r2, size // =0x1ED4 
    bl start_copyMemory // (void *src, void *dest, int size) -> void
    ldr r0, off_8000214 // =CpuSet_toolKit+1 
    mov lr, pc
    bx r0
    ldr r0, off_8000218 // =sub_8006C22+1 
    mov lr, pc
    bx r0
    ldr r0, off_800021C // =start_800023C+1 
    mov lr, pc
    bx r0
    .byte 0x9C
    .byte  0
    .byte 0x9F
    .byte 0xE5
    .byte  0
    .byte 0x10
    .byte 0xA0
    .byte 0xE3
    .byte  0
    .byte 0x10
    .byte 0xC0
    .byte 0xE5
    .byte 0x94
    .byte  0
    .byte 0x9F
    .byte 0xE5
    .byte  1
    .byte 0x10
    .byte 0xA0
    .byte 0xE3
    .byte  0
    .byte 0x10
    .byte 0x80
    .byte 0xE5
    .byte 0x8C
    .byte  0
    .byte 0x9F
    .byte 0xE5
    .byte  0
    .byte 0x10
    .byte 0xA0
    .byte 0xE3
    .byte  0
    .byte 0x10
    .byte 0x80
    .byte 0xE5
    .byte 0x84
    .byte  0
    .byte 0x9F
    .byte 0xE5
    .byte  8
    .byte 0x10
    .byte 0xA0
    .byte 0xE3
    .byte 0xB0
    .byte 0x10
    .byte 0xC0
    .byte 0xE1
    .byte 0x7C 
    .byte  0
    .byte 0x9F
    .byte 0xE5
    .byte 0x7C 
    .byte 0x10
    .byte 0x9F
    .byte 0xE5
    .byte 0xB0
    .byte 0x10
    .byte 0xC0
    .byte 0xE1
    .byte 0x78 
    .byte  0
    .byte 0x9F
    .byte 0xE5
    .byte 0x10
    .byte 0xFF
    .byte 0x2F 
    .byte 0xE1
    b start_
.endfunc // start_

.func
// (void *mem, int size) -> void
start_clearMemory:
    mov r2, #0
loc_80001C8:
    subs r1, r1, #4
    str r2, [r0,r1]
    bne loc_80001C8
    bx lr
.endfunc // start_clearMemory

.func
// (void *src, void *dest, int size) -> void
start_copyMemory:
    // size
    subs r2, r2, #4
    ldr r3, [r0,r2]
    str r3, [r1,r2]
    bne start_copyMemory
    bx lr
dword_80001EC:    .word 0x3007F60
dword_80001F0:    .word 0x3007FE0
dword_80001F4:    .word 0x3007E00
off_80001F8:    .word loc_3007FFC
dword_80001FC:    .word 0x3005B00
off_8000200:    .word GamePakWaitstateControl
dword_8000204:    .word 0x45B4
mem:    .word loc_81D6000
a2:    .word loc_3005B00
size:    .word 0x1ED4
off_8000214:    .word CpuSet_toolKit+1
off_8000218:    .word sub_8006C22+1
off_800021C:    .word start_800023C+1
    .word byte_20081B0
    .word dword_2009930
    .word dword_200A870
    .word GeneralLCDStatus_STAT_LYC_
    .word KeyInterruptControl
    .word 0x83FF
    .word main_+1
.endfunc // start_copyMemory

.func
.thumb_func
// () -> void
start_800023C:
    push {lr}
    ldr r0, off_8000248 // =sub_3005DA0+1 
    mov lr, pc
    bx r0
    pop {r0}
    bx r0
off_8000248:    .word sub_3005DA0+1
.endfunc // start_800023C

.func
.thumb_func
start_800024C:
    push {lr}
    ldr r2, off_8000258 // =sub_3005DD4+1 
    mov lr, pc
    bx r2
    pop {r0}
    bx r0
off_8000258:    .word sub_3005DD4+1
.endfunc // start_800024C

.func
.thumb_func
start_dead_800025C:
    push {lr}
    ldr r1, off_8000274 // =sub_3005DEC+1 
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
.endfunc // start_dead_800025C

.func
.thumb_func
start_dead_8000268:
    push {lr}
    ldr r1, off_8000278 // =sub_3005E02+1 
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
off_8000274:    .word sub_3005DEC+1
off_8000278:    .word sub_3005E02+1
.endfunc // start_dead_8000268

.func
.thumb_func
start_800027C:
    push {lr}
    ldr r1, dword_8000294 // =sub_3005E18 
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
.endfunc // start_800027C

.func
.thumb_func
start_8000288:
    push {lr}
    ldr r1, off_8000298 // =sub_3005E2C+1 
    mov lr, pc
    bx r1
    .byte  1
    .byte 0xBC
    .byte  0
    .byte 0x47 
dword_8000294:    .word 0x3005E19
off_8000298:    .word sub_3005E2C+1
.endfunc // start_8000288

.func
.thumb_func
start_800029C:
    push {lr}
    ldr r1, off_80002B4 // =loc_3005E60+1 
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
.endfunc // start_800029C

.func
.thumb_func
start_80002A8:
    push {lr}
    ldr r1, off_80002B8 // =loc_3005E6A+1 
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
off_80002B4:    .word loc_3005E60+1
off_80002B8:    .word loc_3005E6A+1
.endfunc // start_80002A8

/*For debugging purposes, connect comment at any range!*/
