.include "asm/start.inc"

	arm_func_start start_
start_:
	b loc_80000D0
GameHeader: .word 0x51AEFF24, 0x21A29A69, 0xA82843D, 0xAD09E484, 0x988B2411
	.word 0x217F81C0, 0x19BE52A3, 0x20CE0993, 0x4A4A4610, 0xEC3127F8
	.word 0x33E8C758, 0xBFCEE382, 0x94DFF485, 0xC1094BCE, 0xC08A5694
	.word 0xFCA77213, 0x734D849F, 0x619ACAA3, 0x27A39758, 0x769803FC
	.word 0x61C71D23, 0x56AE0403, 0x8438BF, 0xFD0EA740, 0x3FE52FF
	.word 0xF130956F, 0x85C0FB97, 0x2580D660, 0x3BE63A9, 0xE2384E01
	.word 0xFF34A2F9, 0x44033EBB, 0xCB900078, 0x943A1188, 0x637CC065
	.word 0xAF3CF087, 0x8BE425D6, 0x72AC0A38, 0x7F8D421, 0x4147454D
	.word 0x364E414D, 0x5858465F, 0x45365242, 0x963830, 0x0
	.word 0x0, 0x5900, 0x0, 0x0, 0x0
	.word 0x0
loc_80000D0:
	mov r0, #0x12
	msr CPSR_cf, r0
	ldr r13, off_80001EC // =byte_3007F60 
	mov r0, #0x13
	msr CPSR_cf, r0
	ldr r13, off_80001F0 // =byte_3007FE0 
	mov r0, #0x1f
	msr CPSR_cf, r0
	ldr r13, off_80001F4 // =iStack 
	ldr r0, off_80001F8 // =byte_3007FFC 
	ldr r1, off_80001FC // =sub_3005B00 
	str r1, [r0]
	ldr r0, off_8000200 // =GamePakWaitstateControl 
	ldr r1, byte_8000204 // =0xb4 
	str r1, [r0]
	// mem
	mov r0, #0x3000000 // unk_3000000
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
	ldr r0, mem // =IWRAMRoutinesROMLocation 
	// dest
	ldr r1, off_800020C // =sub_3005B00 
	// size
	ldr r2, IWRAMRoutinesSize_p // =0x1ed4 
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
	ldr r0, off_8000220 // =byte_20081B0 
	mov r1, #0
	strb r1, [r0]
	ldr r0, off_8000224 // =dword_2009930 
	mov r1, #1
	str r1, [r0]
	ldr r0, off_8000228 // =dword_200A870 
	mov r1, #0
	str r1, [r0]
	ldr r0, off_800022C // =GeneralLCDStatus_STAT_LYC_ 
	mov r1, #8
	strh r1, [r0]
	ldr r0, off_8000230 // =KeyInterruptControl 
	ldr r1, byte_8000234 // =0xff 
	strh r1, [r0]
	ldr r0, off_8000238 // =main_+1 
	bx r0
	b start_
	arm_func_end start_

// (void *mem, int size) -> void
	arm_func_start start_clearMemory
start_clearMemory:
	mov r2, #0
loc_80001C8:
	subs r1, r1, #4
	str r2, [r0,r1]
	bne loc_80001C8
	bx lr
	arm_func_end start_clearMemory

// (void *src, void *dest, int size) -> void
	arm_func_start start_copyMemory
start_copyMemory:
	// size
	subs r2, r2, #4
	ldr r3, [r0,r2]
	str r3, [r1,r2]
	bne start_copyMemory
	bx lr
off_80001EC: .word byte_3007F60
off_80001F0: .word byte_3007FE0
off_80001F4: .word iStack
off_80001F8: .word byte_3007FFC
off_80001FC: .word 0x3005B00
off_8000200: .word GamePakWaitstateControl
byte_8000204: .byte 0xB4, 0x45, 0x0, 0x0
mem: .word 0x81D6000
off_800020C: .word 0x3005B00
IWRAMRoutinesSize_p: .word 0x1ED4
off_8000214: .word CpuSet_toolKit+1
off_8000218: .word sub_8006C22+1
off_800021C: .word start_800023C+1
off_8000220: .word byte_20081B0
off_8000224: .word dword_2009930
off_8000228: .word dword_200A870
off_800022C: .word GeneralLCDStatus_STAT_LYC_
off_8000230: .word KeyInterruptControl
byte_8000234: .byte 0xFF, 0x83, 0x0, 0x0
off_8000238: .word main_+1
	arm_func_end start_copyMemory

// () -> void
	thumb_func_start start_800023C
start_800023C:
	push {lr}
	ldr r0, off_8000248 // =sub_3005DA0 
	mov lr, pc
	bx r0
	pop {r0}
	bx r0
off_8000248: .word 0x3005DA1
	thumb_func_end start_800023C

	thumb_func_start start_800024C
start_800024C:
	push {lr}
	ldr r2, off_8000258 // =sub_3005DD4 
	mov lr, pc
	bx r2
	pop {r0}
	bx r0
off_8000258: .word 0x3005DD5
	thumb_func_end start_800024C

	thumb_local_start
start_dead_800025C:
	push {lr}
	ldr r1, off_8000274 // =sub_3005DEC 
	mov lr, pc
	bx r1
	pop {r0}
	bx r0
	thumb_func_end start_dead_800025C

	thumb_local_start
start_dead_8000268:
	push {lr}
	ldr r1, off_8000278 // =sub_3005E02 
	mov lr, pc
	bx r1
	pop {r0}
	bx r0
off_8000274: .word 0x3005DED
off_8000278: .word 0x3005E03
	thumb_func_end start_dead_8000268

	thumb_func_start start_800027C
start_800027C:
	push {lr}
	ldr r1, byte_8000294 // =0x19 
	mov lr, pc
	bx r1
	pop {r0}
	bx r0
	thumb_func_end start_800027C

	thumb_func_start start_8000288
start_8000288:
	push {lr}
	ldr r1, off_8000298 // =sub_3005E2C 
	mov lr, pc
	bx r1
	pop {r0}
	bx r0
byte_8000294: .byte 0x19, 0x5E, 0x0, 0x3
off_8000298: .word 0x3005E2D
	thumb_func_end start_8000288

	thumb_local_start
start_800029C:
	push {lr}
	ldr r1, off_80002B4 // =sub_3005E60 
	mov lr, pc
	bx r1
	pop {r0}
	bx r0
	thumb_func_end start_800029C

	thumb_local_start
start_80002A8:
	push {lr}
	ldr r1, off_80002B8 // =sub_3005E6A 
	mov lr, pc
	bx r1
	pop {r0}
	bx r0
off_80002B4: .word 0x3005E61
off_80002B8: .word 0x3005E6B
	thumb_func_end start_80002A8

/*For debugging purposes, connect comment at any range!*/
