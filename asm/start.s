.include "start.inc"

.arm
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
    ldr sp, [pc, #0x80001ec-0x80000d8-8] // =0x3007F60
    mov r0, #0x13
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001f0-0x80000e4-8] // =0x3007FE0
    mov r0, #0x1f
    msr cpsr_cf, r0
    ldr sp, [pc, #0x80001f4-0x80000f0-8] // =0x3007E00
    ldr r0, [pc, #0x80001f8-0x80000f4-8] // =loc_3007FFC
    ldr r1, [pc, #0x80001fc-0x80000f8-8] // =0x3005B00
    str r1, [r0]
    ldr r0, [pc, #0x8000200-0x8000100-8] // =GamePakWaitstateControl
    ldr r1, [pc, #0x8000204-0x8000104-8] // =0x45B4
    str r1, [r0]
    mov r0, #0x3000000
    mov r1, #0x7e00
    bl start_clearMemory
    mov r0, #0x2000000
    mov r1, #0x40000
    bl start_clearMemory
    mov r0, #0x6000000
    mov r1, #0x18000
    bl start_clearMemory
    mov r0, #0x7000000
    mov r1, #0x400
    bl start_clearMemory
    mov r0, #0x5000000
    mov r1, #0x400
    bl start_clearMemory
    ldr r0, [pc, #0x8000208-0x8000148-8] // =loc_81D6000
    ldr r1, [pc, #0x800020c-0x800014c-8] // =0x3005B00
    ldr r2, [pc, #0x8000210-0x8000150-8] // =0x1ED4
    bl start_copyMemory
    ldr r0, [pc, #0x8000214-0x8000158-8] // =CpuSet_toolKit+1
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x8000218-0x8000164-8] // =sub_8006C22+1
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x800021c-0x8000170-8] // =start_800023C+1
    mov lr, pc
    bx r0
    ldr r0, [pc, #0x8000220-0x800017c-8] // =byte_20081B0
    mov r1, #0
    strb r1, [r0]
    ldr r0, [pc, #0x8000224-0x8000188-8] // =dword_2009930
    mov r1, #1
    str r1, [r0]
    ldr r0, [pc, #0x8000228-0x8000194-8] // =dword_200A870
    mov r1, #0
    str r1, [r0]
    ldr r0, [pc, #0x800022c-0x80001a0-8] // =GeneralLCDStatus_STAT_LYC_
    mov r1, #8
    strh r1, [r0]
    ldr r0, [pc, #0x8000230-0x80001ac-8] // =KeyInterruptControl
    ldr r1, [pc, #0x8000234-0x80001b0-8] // =0x83FF
    strh r1, [r0]
    ldr r0, [pc, #0x8000238-0x80001b8-8] // =main_+1
    bx r0
    b start_
// end of function start_

.arm
start_clearMemory:
    mov r2, #0
loc_80001C8:
    subs r1, r1, #4
    str r2, [r0,r1]
    bne loc_80001C8
    bx lr
// end of function start_clearMemory

.arm
// size
start_copyMemory:
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
off_8000208:    .word loc_81D6000
dword_800020C:    .word 0x3005B00
dword_8000210:    .word 0x1ED4
off_8000214:    .word CpuSet_toolKit+1
off_8000218:    .word sub_8006C22+1
off_800021C:    .word start_800023C+1
off_8000220:    .word byte_20081B0
off_8000224:    .word dword_2009930
off_8000228:    .word dword_200A870
off_800022C:    .word GeneralLCDStatus_STAT_LYC_
off_8000230:    .word KeyInterruptControl
dword_8000234:    .word 0x83FF
off_8000238:    .word main_+1
// end of function start_copyMemory

.thumb
start_800023C:
    push {lr}
    ldr r0, [pc, #0x8000248-0x800023e-2] // =sub_3005DA0+1
    mov lr, pc
    bx r0
    pop {r0}
    bx r0
off_8000248:    .word sub_3005DA0+1
// end of function start_800023C

.thumb
start_800024C:
    push {lr}
    ldr r2, [pc, #0x8000258-0x800024e-2] // =sub_3005DD4+1
    mov lr, pc
    bx r2
    pop {r0}
    bx r0
off_8000258:    .word sub_3005DD4+1
// end of function start_800024C

.thumb
start_dead_800025C:
    push {lr}
    ldr r1, [pc, #0x8000274-0x800025e-2] // =loc_3005DEC+1
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
// end of function start_dead_800025C

.thumb
start_dead_8000268:
    push {lr}
    ldr r1, [pc, #0x8000278-0x800026a-2] // =loc_3005E02+1
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
off_8000274:    .word loc_3005DEC+1
off_8000278:    .word loc_3005E02+1
// end of function start_dead_8000268

.thumb
start_800027C:
    push {lr}
    ldr r1, [pc, #0x8000294-0x800027e-2] // =loc_3005E18
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
// end of function start_800027C

.thumb
start_8000288:
    push {lr}
    ldr r1, [pc, #0x8000298-0x800028a-2] // =loc_3005E2C+1
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
    .word 0x3005E19
off_8000298:    .word loc_3005E2C+1
// end of function start_8000288

.thumb
start_800029C:
    push {lr}
    ldr r1, [pc, #0x80002b4-0x800029e-2] // =loc_3005E60+1
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
// end of function start_800029C

.thumb
start_80002A8:
    push {lr}
    ldr r1, [pc, #0x80002b8-0x80002aa-2] // =loc_3005E6A+1
    mov lr, pc
    bx r1
    pop {r0}
    bx r0
off_80002B4:    .word loc_3005E60+1
off_80002B8:    .word loc_3005E6A+1
// end of function start_80002A8

/*For debugging purposes, connect comment at any range!*/
