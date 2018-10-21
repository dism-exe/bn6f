.include "asm/asm33.inc"

.func
.thumb_func
sub_8123208:
	push {R4-R7,lr}
	bl getPETNaviSelect // () -> u8
	add r7, r0, #0
	ldr R4, off_81232FC // =word_200DCF0 
	mov r1, #0x42 
	add r0, r7, #0
	bl sub_80137FE
	ldrh R2, [R4]
	add r2, r2, r0
	add r0, r7, #0
	mov r1, #0x42 
	bl sub_80137E6
	mov R1, #1
	add r0, r7, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh R2, [R4,#0x2] // (word_200DCF2 - 0x200DCF0)
	add r2, r2, r0
	cmp R2, #4
	ble loc_8123238
	mov R2, #4
loc_8123238:
	add r0, r7, #0
	mov R1, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov R1, #2
	add r0, r7, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh R2, [R4,#0x8] // (word_200DCF8 - 0x200DCF0)
	add r2, r2, r0
	cmp R2, #4
	ble loc_8123252
	mov R2, #4
loc_8123252:
	add r0, r7, #0
	mov R1, #2
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov R1, #3
	add r0, r7, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh R2, [R4,#0xA] // (word_200DCFA - 0x200DCF0)
	add r2, r2, r0
	cmp R2, #4
	ble loc_812326C
	mov R2, #4
loc_812326C:
	add r0, r7, #0
	mov R1, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov R1, #0xB
	add r0, r7, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh R2, [R4,#0x4] // (word_200DCF4 - 0x200DCF0)
	add r2, r2, r0
	cmp R2, #0xA
	ble loc_8123286
	mov R2, #0xA
loc_8123286:
	add r0, r7, #0
	mov R1, #0xB
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov R1, #0xA
	add r0, r7, #0
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh R2, [R4,#0x6] // (word_200DCF6 - 0x200DCF0)
	add r2, r2, r0
	cmp R2, #8
	ble loc_81232A0
	mov R2, #8
loc_81232A0:
	add r0, r7, #0
	mov R1, #0xA
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	ldrh R2, [R4,#0xC] // (word_200DCFC - 0x200DCF0)
	tst R2, R2
	beq loc_81232B8
	add r0, r7, #0
	mov R1, #7
	mov r2, #0x30 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232B8:
	ldrh R2, [R4,#0xE] // (word_200DCFE - 0x200DCF0)
	tst R2, R2
	beq loc_81232C8
	add r0, r7, #0
	mov R1, #0x1C
	mov R2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232C8:
	ldrh R2, [R4,#0x10] // (word_200DD00 - 0x200DCF0)
	tst R2, R2
	beq loc_81232D8
	add r0, r7, #0
	mov R1, #0x1B
	mov R2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232D8:
	ldrh R2, [R4,#0x12] // (word_200DD02 - 0x200DCF0)
	tst R2, R2
	beq loc_81232E8
	add r0, r7, #0
	mov r1, #0x23 
	mov R2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232E8:
	ldrh R2, [R4,#0x14] // (word_200DD04 - 0x200DCF0)
	tst R2, R2
	beq locret_81232F8
	add r0, r7, #0
	mov R1, #7
	mov r2, #0x34 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
locret_81232F8:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_81232FC: .word word_200DCF0
.endfunc // sub_8123208

.func
.thumb_func
sub_8123300:
	push {r7,lr}
	sub sp, sp, #0xc
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	mov r7, #0x30 
	bl sub_8123360
	tst R0, R0
	beq loc_812331A
	bl getPETNaviSelect // () -> u8
	lsl r7, r0, #2
loc_812331A:
	ldr R1, [SP]
	// src
	ldr R0, [R1,R7]
	// dest
	ldr R1, [SP,#8]
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R1, [SP,#8]
	// src
	add r0, r1, #4
	ldr R2, [R1]
	lsr r2, r2, #8
	// halfwordCount
	sub R2, #4
	// dest
	ldr R1, [SP,#4]
	mov R3, #1
	tst R3, R2
	bne loc_8123344
	mov R3, #3
	tst R3, R2
	bne loc_812334A
	mov R3, #0x1F
	tst R3, R2
	bne loc_8123350
	b loc_8123356
loc_8123344:
	bl copyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	b loc_812335A
loc_812334A:
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	b loc_812335A
loc_8123350:
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	b loc_812335A
loc_8123356:
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
loc_812335A:
	add sp, sp, #0xc
	pop {r7,pc}
	.byte 0, 0
.endfunc // sub_8123300

.func
.thumb_func
sub_8123360:
	push {r4,lr}
	mov R4, #0
	bl getPETNaviSelect // () -> u8
	cmp R0, #0
	bne loc_8123376
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x2a 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8123390
loc_8123376:
	mov R4, #1
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#4]
	cmp R0, #0x80
	bge loc_8123390
	mov R4, #0
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x1D
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8123390
	mov R4, #1
loc_8123390:
	add r0, r4, #0
	pop {r4,pc}
dword_8123394: .word 0xC391C390, 0xC393C392, 0xC395C394, 0xC397C396, 0xC399C398
	.word 0xC39BC39A, 0xC39DC39C, 0xC39FC39E, 0xC3A1C3A0, 0xC3A3C3A2
	.word 0xC250, 0xC258, 0xC25A, 0xC262, 0xC244C240
	.word 0xFFFFC248, 0xFF060606, 0x1000405, 0xFFFFFFFF, 0x1010505
	.word 0xFFFFFFFF, 0x1010605, 0xFFFFFFFF, 0x3020015, 0xFFFFFFFF
	.word 0x4030015, 0xFFFFFFFF, 0x123, 0xFFFFFFFF
.endfunc // sub_8123360

.func
.thumb_func
sub_8123408:
	push {r4,lr}
	ldr R0, off_812342C // =unk_2037780 
	ldr R1, off_8123430 // =sSubmenu 
	add r4, r1, #0
	mov R2, #0x80
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R0, #0
	strb R0, [R4]
	mov R0, #0x10
	strb R0, [R4,#0x1] // (sSubmenu.jo_01 - 0x2009A30)
	mov R0, #0
	strb R0, [R4,#0x2] // (sSubmenu.unk_02 - 0x2009A30)
	mov R4, R10
	ldr R4, [R4]
	mov r0, #0x28 
	strb R0, [R4]
	pop {r4,pc}
off_812342C: .word unk_2037780
off_8123430: .word sSubmenu
.endfunc // sub_8123408

.func
.thumb_func
sub_8123434:
	push {lr}
	ldr R0, off_8123444 // =off_8123448 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8123444: .word off_8123448
off_8123448: .word sub_812345C+1
	.word loc_8123514+1
	.word sub_81237BC+1
	.word sub_812349C+1
	.word sub_81234DC+1
.endfunc // sub_8123434

.func
.thumb_func
sub_812345C:
	push {lr}
	mov R0, #1
	bl sub_81237E0
	bl chipFolder_initGfx_812386C
.endfunc // sub_812345C

	bl sub_8046664 // () -> void
	ldr R0, off_8123510 // =dword_8123394+108 
	bl sub_80465A0 // (void *a1) -> void
	bl sub_8123A80
	bl sub_8123AB8
	ldr R0, off_81234F0 // =unk_201D220 
	ldr R1, off_81234F4 // =dword_8123394+68 
	mov R2, #0x9D
	mov r3, #0x48 
	mov R4, #4
	bl sub_81352A0
	ldr R0, off_81234F0 // =unk_201D220 
	ldr R1, off_81234F8 // =off_81234FC 
	mov R2, #0x9D
	mov r3, #0x48 
	ldr R4, off_8123504 // =dword_8123508 
	bl sub_8135314
	bl sub_8123D24
	pop {pc}
.func
.thumb_func
sub_812349C:
	push {lr}
	mov R0, #0
	bl sub_81237E0
	bl chipFolder_initGfx_812386C
.endfunc // sub_812349C

	bl sub_8046664 // () -> void
	ldr R0, off_8123510 // =dword_8123394+108 
	bl sub_80465A0 // (void *a1) -> void
	bl sub_8123A80
	bl sub_8123AB8
	ldr R0, off_81234F0 // =unk_201D220 
	ldr R1, off_81234F4 // =dword_8123394+68 
	mov R2, #0x9D
	mov r3, #0x48 
	mov R4, #4
	bl sub_81352A0
	ldr R0, off_81234F0 // =unk_201D220 
	ldr R1, off_81234F8 // =off_81234FC 
	mov R2, #0x9D
	mov r3, #0x48 
	ldr R4, off_8123504 // =dword_8123508 
	bl sub_8135314
	bl sub_8123D24
	pop {pc}
.func
.thumb_func
sub_81234DC:
	push {lr}
	bl sub_812349C
.endfunc // sub_81234DC

	mov R0, #0
	bl sub_8123D54
	mov R0, #0x18
	strb R0, [R5,#2]
	pop {pc}
	.byte 0, 0
off_81234F0: .word unk_201D220
off_81234F4: .word dword_8123394+0x44
off_81234F8: .word off_81234FC
off_81234FC: .word dword_8123394+0x4C
	.word dword_8123394+0x54
off_8123504: .word dword_8123508
dword_8123508: .word 0x5, 0x6
off_8123510: .word dword_8123394+0x6C
loc_8123514:
	push {lr}
	ldr R0, off_8123538 // =off_812353C 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_8123A50
	bl sub_8123C98
	bl sub_8123E58
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {pc}
	.balign 4, 0x00
off_8123538: .word off_812353C
off_812353C: .word sub_8123558+1
	.word sub_81235A4+1
	.word sub_8123644+1
	.word sub_812365C+1
	.word sub_812377C+1
	.word sub_8123790+1
	.word sub_8123574+1
.func
.thumb_func
sub_8123558:
	push {lr}
	bl sub_8123BC0
	bl sub_8123BE0
	bl sub_8123C00
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8123570
	mov R0, #4
	strb R0, [R5,#2]
locret_8123570:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8123558

.func
.thumb_func
sub_8123574:
	push {lr}
	mov R0, #2
	strh R0, [R5,#0x20]
	bl sub_8123BC0
	bl sub_8123BE0
	bl sub_8123C00
	bl sub_8123D70
	mov R0, #1
	mov R1, #3
	bl sub_811B314
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81235A0
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
locret_81235A0:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8123574

.func
.thumb_func
sub_81235A4:
	push {lr}
	mov R0, #0xA
	bl sub_811F7EC
	beq loc_81235BC
	mov R0, #8
	bl sub_811FB64
	mov R0, #0x83
	bl sound_play // () -> void
	b loc_8123628
loc_81235BC:
	mov R0, #1
	bl sub_811F7EC
	beq loc_81235E8
	bl sub_8123E08
	bl sub_8123D54
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, #1
	mov R1, #3
	bl sub_811B314
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0
	strh R0, [R5,#0x20]
	b loc_8123628
loc_81235E8:
	mov R0, #0x1A
	strh R0, [R5,#0x1E]
	strh R0, [R5,#0x28]
	strh R0, [R5,#0x32]
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	ldrb R1, [R5,#0xC]
	ldr R2, off_812363C // =byte_8123640 
	ldrb R3, [R2,R1]
	mov R1, #1
	mov R2, #0
	bl sub_811F91C
	tst R0, R0
	bne loc_8123628
	mov R1, R10
	ldr R1, [R1,#0x40]
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	ldrb R1, [R1,#5]
	mov R2, #0
	ldrb R3, [R5,#0xC]
	bl sub_811FA0C
	ldrb R1, [R5,#0xC]
	cmp R0, R1
	beq loc_8123628
	strb R0, [R5,#0xC]
	bl sub_8123A80
loc_8123628:
	bl sub_8123AB8
.endfunc // sub_81235A4

	bl sub_8123BC0
	bl sub_8123BE0
	bl sub_8123C00
	pop {pc}
	.balign 4, 0x00
off_812363C: .word byte_8123640
byte_8123640: .byte 0x0, 0xA, 0x14, 0x0
.func
.thumb_func
sub_8123644:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812365A
	bl chatbox_8040818
	mov r0, #0x20 
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#1]
	strb R0, [R5,#2]
locret_812365A:
	pop {pc}
.endfunc // sub_8123644

.func
.thumb_func
sub_812365C:
	push {lr}
	ldr R0, off_812366C // =off_8123670 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812366C: .word off_8123670
off_8123670: .word sub_8123678+1
	.word sub_812368C+1
.endfunc // sub_812365C

.func
.thumb_func
sub_8123678:
	push {lr}
	mov R0, #0
	bl sub_81190F8
	beq locret_812368A
	mov R0, #4
	strb R0, [R5,#3]
	bl sub_8123D70
locret_812368A:
	pop {pc}
.endfunc // sub_8123678

.func
.thumb_func
sub_812368C:
	push {R4-R7,lr}
	mov R0, #2
	bl sub_811F7EC
	beq loc_81236B0
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #1
	mov R1, #0
	bl sub_811B314
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0
	bl sub_8119118
	b locret_8123760
loc_81236B0:
	mov R0, #1
	bl sub_811F7EC
	beq loc_812373E
	mov R0, #0x81
	bl sound_play // () -> void
	bl sub_8123E08
	lsl r0, r0, #2
	ldr R1, off_8123764 // =off_8123768 
	ldr R0, [R1,R0]
	ldrh R1, [R5,#0x20]
	ldrb R0, [R0,R1]
	strb R0, [R5,#2]
	cmp R0, #0xC
	bne loc_8123734
	ldrb R0, [R5,#0x14]
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r4, r0, #0
	ldrb R0, [R5,#0x14]
	mov r1, #0x2d 
	ldrb R2, [R5,#0xC]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov R0, #1
	bl sub_8120D10
	beq loc_812371A
	ldrb R0, [R5,#0x14]
	mov r1, #0x2d 
	add r2, r4, #0
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov R6, #8
	ldrb R0, [R5,#0xC]
	bl sub_8137884
	lsr r0, r0, #4
	cmp R0, #2
	blt loc_8123708
	mov R6, #9
loc_8123708:
	add r0, r6, #0
	bl sub_8123A40
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R0, #0
	bl sub_8119118
	b locret_8123760
loc_812371A:
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #1
	mov R1, #0
	bl sub_811B314
	ldr R0, dword_8123770 // =0x182 
	bl sound_play // () -> void
	mov R0, #0
	bl sub_8119118
	b locret_8123760
loc_8123734:
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812375C
loc_812373E:
	mov R4, #3
	bl sub_8123E08
	tst R0, R0
	beq loc_812374A
	mov R4, #1
loc_812374A:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	add r1, r4, #0
	mov R2, #1
	ldrh R3, [R5,#0x20]
	bl sub_811FA22
	strh R0, [R5,#0x20]
loc_812375C:
	bl sub_8123D70
locret_8123760:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8123764: .word off_8123768
off_8123768: .word dword_8123774
	.word dword_8123778
dword_8123770: .word 0x182
dword_8123774: .word 0x140C08
dword_8123778: .word 0xC
.endfunc // sub_812368C

.func
.thumb_func
sub_812377C:
	push {lr}
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_812378E
	mov R0, #4
	strb R0, [R5,#2]
	bl chatbox_8040818
locret_812378E:
	pop {pc}
.endfunc // sub_812377C

.func
.thumb_func
sub_8123790:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81237B4
	bl chatbox_8040818
	add r0, r5, #0
	ldr R1, off_81237B8 // =unk_2037780 
	mov R2, #0x80
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldrb R0, [R5,#0xC]
	bl sub_8049DDC
	// memBlock
	add r0, r5, #0
	// size
	mov R1, #0x80
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
locret_81237B4:
	pop {pc}
	.balign 4, 0x00
off_81237B8: .word unk_2037780
.endfunc // sub_8123790

.func
.thumb_func
sub_81237BC:
	push {lr}
	bl sub_8123A50
	bl sub_8123C98
.endfunc // sub_81237BC

	bl sub_8123E58
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81237DC
	bl sub_811F708
locret_81237DC:
	pop {pc}
	.byte 0, 0
.func
.thumb_func
sub_81237E0:
	push {r4,lr}
	add r4, r0, #0
	mov R0, #0
	strh R0, [R5,#0x24]
	strh R0, [R5,#0x26]
	strh R0, [R5,#0x2E]
	strh R0, [R5,#0x30]
	strh R0, [R5,#0x38]
	strh R0, [R5,#0x3A]
	str R1, [R5,#0x4C]
	strh R0, [R5,#0x20]
	strh R0, [R5,#0x22]
	strh R0, [R5,#0x2A]
	strh R0, [R5,#0x2C]
	strh R0, [R5,#0x34]
	strh R0, [R5,#0x36]
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
	strh R0, [R5,#0x18]
	mov R0, #0
	ldr R1, off_8123868 // =dword_8123394+64 
	bl sub_8120CC8
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,#0x12]
	bl getPETNaviSelect // () -> u8
	strb R0, [R5,#0x14]
	tst R4, R4
	beq loc_8123830
	bl sub_80017AA
	bl sub_80017E0
	ldrb R0, [R5,#0x14]
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb R0, [R5,#0xC]
loc_8123830:
	bl sub_800183C
	mov R0, #0x10
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_8123864 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	strb R0, [R5,#2]
	pop {r4,pc}
	.balign 4, 0x00
dword_8123864: .word 0x1F40
off_8123868: .word dword_8123394+0x40
.endfunc // sub_81237E0

.func
.thumb_func
chipFolder_initGfx_812386C:
	push {R4-R7,lr}
	ldr R4, off_812395C // =unk_20096E0 
	mov R6, #0
	mov R7, #0
	ldr R5, off_8123918 // =dword_812391C 
loc_8123876:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_8123888:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_8123888
	cmp r7, #0x40 
	blt loc_8123876
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_812395C // =unk_20096E0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// initRefs
	ldr R0, off_8123960 // =dword_8123964 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	ldr R0, off_81238E0 // =dword_81238E4 
	ldr R1, off_81238D8 // =unk_201C220 
	ldr R2, off_81238DC // =decomp_2013A00 
	bl sub_8123300
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_8123A28 // =unk_201BA20 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // chipFolder_initGfx_812386C

	mov R0, #9
	mov R1, #6
	mov R2, #1
	ldr R3, off_8123A34 // =unk_201BF20 
	mov R4, #0x14
	mov R5, #0xD
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_81238D8: .word unk_201C220
off_81238DC: .word decomp_2013A00
off_81238E0: .word dword_81238E4
dword_81238E4: .word 0x86CE724, 0x86CE77C, 0x86CE77C, 0x86CE77C, 0x86CE77C
	.word 0x86CE77C, 0x86CE77C, 0x86CE77C, 0x86CE77C, 0x86CE77C
	.word 0x86CE77C, 0x86CE724, 0x86CE77C
off_8123918: .word dword_812391C
dword_812391C: .word 0x86C9108, 0x2, 0x3001960, 0x20, 0x86C9B54, 0x2, 0x3001AC0
	.word 0x20, 0x886C9AA4, 0x2, 0x3001A80, 0x2013A00, 0x872CF94, 0x2
	.word 0x3001AE0, 0x20
off_812395C: .word unk_20096E0
off_8123960: .word dword_8123964
dword_8123964: .word comp_86CEC3C + 1<<31
	.word unk_201D884
	.word decomp_2013A00
	.word comp_86CDEA8 + 1<<31
	.word unk_201E284
	.word decomp_2013A00
	.word comp_86CE51C + 1<<31
	.word unk_2020484
	.word decomp_2013A00
	.word dword_86B7AE0
	.word 0x6004000
	.word 0x2800
	.word dword_86C9B54
	.word byte_30016B0
	.word 0x20
	.word comp_86C96C0 + 1<<31
	.word 0x6006800
	.word decomp_2013A00
	.word comp_86C980C + 1<<31
	.word 0x6006B80
	.word decomp_2013A00
	.word comp_86C9BD4 + 1<<31
	.word 0x6014800
	.word decomp_2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word decomp_2013A00
	.word comp_86CE63C + 1<<31
	.word 0x6014A00
	.word decomp_2013A00
	.word unk_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word comp_86C7E74 + 1<<31
	.word 0x6012800
	.word decomp_2013A00
	.word comp_86C7F70 + 1<<31
	.word 0x30015F0
	.word decomp_2013A00
	.word comp_86C7F98 + 1<<31
	.word 0x6012C00
	.word decomp_2013A00
	.word comp_86C8034 + 1<<31
	.word 0x3001630
	.word decomp_2013A00
	.word comp_86C8054 + 1<<31
	.word 0x6000020
	.word decomp_2013A00
	.word comp_86CDCE4 + 1<<31
off_8123A28: .word unk_201BA20
	.word decomp_2013A00
	.word comp_86CDE2C + 1<<31
off_8123A34: .word unk_201BF20
	.word decomp_2013A00
	.byte 0, 0, 0, 0
.func
.thumb_func
sub_8123A40:
	push {lr}
	add r1, r0, #0
	ldr R0, off_8123A4C // =unk_201C220 
	bl chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
	pop {pc}
off_8123A4C: .word unk_201C220
.endfunc // sub_8123A40

.func
.thumb_func
sub_8123A50:
	push {R4-R7,lr}
	ldrb R0, [R5,#0xC]
	ldr R1, off_8123A78 // =byte_8123A7C 
	ldrb R0, [R1,R0]
	ldrh R3, [R5,R0]
	ldr R0, dword_8123A74 // =0xDA003D 
	ldr R1, dword_8123A6C // =0x20002 
	mov R2, #0x1E
	mov R4, #5
	ldr R6, dword_8123A70 // =0xC24C 
	mov r7, #0x46 
	bl sub_811FA98
	pop {R4-R7,pc}
dword_8123A6C: .word 0x20002
dword_8123A70: .word 0xC24C
dword_8123A74: .word 0xDA003D
off_8123A78: .word byte_8123A7C
byte_8123A7C: .byte 0x24, 0x2E, 0x38, 0x0
.endfunc // sub_8123A50

.func
.thumb_func
sub_8123A80:
	push {r4,r6,lr}
	ldrb R0, [R5,#0xC]
	ldr R1, off_8123AB0 // =unk_201D220 
	mov R2, #1
	ldr R3, off_8123AB4 // =unk_20343E0 
	bl sub_811FCB8
	ldrb R0, [R5,#0xC]
	lsl r0, r0, #1
	mov r1, #0x56 
	add r1, r1, r0
	add r4, r1, #0
	ldrb R0, [R5,#0x14]
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r6, r0, #0
	add r1, r4, #1
	ldrb R0, [R5,#0x14]
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r0, r0, r6
	str R0, [R5,#0x64]
	pop {r4,r6,pc}
	.byte 0, 0
off_8123AB0: .word unk_201D220
off_8123AB4: .word unk_20343E0
.endfunc // sub_8123A80

.func
.thumb_func
sub_8123AB8:
	push {R4-R7,lr}
	add r7, r5, #0
	ldrb R0, [R7,#0xC]
	ldr R1, off_8123BB8 // =byte_8123BBC 
	ldrb R0, [R1,R0]
	ldrh R0, [R7,R0]
	ldr R1, off_8123B88 // =unk_201D220 
	ldr R2, off_8123B8C // =unk_201D6E0 
	mov R3, #0xB
	mov R5, #5
	bl sub_81200EC
	// j
	mov R0, #0xE
	// i
	mov R1, #8
	// cpyOff
	mov R2, #2
	// tileRefs
	ldr R3, off_8123B8C // =unk_201D6E0 
	mov R4, #8
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8123AB8

	ldrb R0, [R7,#0xC]
	ldr R1, off_8123BB8 // =byte_8123BBC 
	ldrb R0, [R1,R0]
	ldrh R0, [R7,R0]
	ldr R1, off_8123B88 // =unk_201D220 
	ldr R2, off_8123B90 // =unk_201D7C0 
	ldr R3, off_8123B94 // =dword_8123394 
	ldr R4, dword_8123B98 // =0x6007200 
	mov R5, #5
	bl sub_8120390
	mov R0, #0xC
	mov R1, #8
	mov R2, #2
	ldr R3, off_8123B90 // =unk_201D7C0 
	mov R4, #2
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb R0, [R7,#0xC]
	ldr R1, off_8123BB8 // =byte_8123BBC 
	ldrb R0, [R1,R0]
	ldrh R0, [R7,R0]
	ldr R1, off_8123B88 // =unk_201D220 
	ldr R2, off_8123B9C // =unk_201D7F8 
	mov R3, #0xA
	lsl r3, r3, #0xc
	ldr R4, off_8123BA0 // =0x35C 
	orr R3, R4
	ldr R4, dword_8123BA4 // =0x6006B80 
	mov R5, #5
	bl sub_81203E4
	mov R0, #0x16
	mov R1, #8
	mov R2, #2
	ldr R3, off_8123B9C // =unk_201D7F8 
	mov R4, #2
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb R0, [R7,#0xC]
	ldr R1, off_8123BB8 // =byte_8123BBC 
	ldrb R0, [R1,R0]
	ldrh R0, [R7,R0]
	ldr R1, off_8123B88 // =unk_201D220 
	ldr R2, off_8123BA8 // =unk_201D830 
	mov R3, #0xB
	lsl r3, r3, #0xc
	ldr R4, dword_8123BAC // =0x216 
	orr R3, R4
	mov R5, #5
	bl sub_8120458
	mov R0, #0x18
	mov R1, #8
	mov R2, #2
	ldr R3, off_8123BA8 // =unk_201D830 
	mov R4, #1
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb R0, [R7,#0xC]
	ldr R1, off_8123BB8 // =byte_8123BBC 
	ldrb R0, [R1,R0]
	ldrh R0, [R7,R0]
	ldr R1, off_8123B88 // =unk_201D220 
	ldr R2, off_8123BB0 // =unk_201D84C 
	mov R3, #9
	lsl r3, r3, #0xc
	ldr R4, dword_8123BB4 // =0x34F 
	orr R3, R4
	mov R5, #5
	bl sub_81204C4
	mov R0, #0x19
	mov R1, #8
	mov R2, #2
	ldr R3, off_8123BB0 // =unk_201D84C 
	mov R4, #2
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
off_8123B88: .word unk_201D220
off_8123B8C: .word unk_201D6E0
off_8123B90: .word unk_201D7C0
off_8123B94: .word dword_8123394
dword_8123B98: .word 0x6007200
off_8123B9C: .word unk_201D7F8
off_8123BA0: .word 0x35C
dword_8123BA4: .word 0x6006B80
off_8123BA8: .word unk_201D830
dword_8123BAC: .word 0x216
off_8123BB0: .word unk_201D84C
dword_8123BB4: .word 0x34F
off_8123BB8: .word byte_8123BBC
byte_8123BBC: .byte 0x24, 0x2E, 0x38, 0x0
.func
.thumb_func
sub_8123BC0:
	push {R4-R7,lr}
	ldr R0, off_8123BD8 // =byte_8123BDC 
	mov R1, #1
	ldr R2, off_8123BD4 // =dword_8123394+68 
	mov R3, #4
	mov R4, #0x1C
	bl sub_8123C20
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8123BD4: .word dword_8123394+0x44
off_8123BD8: .word byte_8123BDC
byte_8123BDC: .byte 0x2E, 0x2F, 0x30, 0x0
.endfunc // sub_8123BC0

.func
.thumb_func
sub_8123BE0:
	push {R4-R7,lr}
	ldr R0, off_8123BF8 // =byte_8123BFC 
	mov r1, #0x20 
	ldr R2, off_8123BF4 // =dword_8123394+76 
	mov R3, #5
	mov r4, #0x5c 
	mov R6, #0
	bl sub_8123C20
	pop {R4-R7,pc}
off_8123BF4: .word dword_8123394+0x4C
off_8123BF8: .word byte_8123BFC
byte_8123BFC: .byte 0x56, 0x58, 0x5A, 0x0
.endfunc // sub_8123BE0

.func
.thumb_func
sub_8123C00:
	push {R4-R7,lr}
	ldr R0, off_8123C18 // =byte_8123C1C 
	mov r1, #0x40 
	ldr R2, off_8123C14 // =dword_8123394+84 
	mov R3, #6
	mov r4, #0x60 
	mov R6, #1
	bl sub_8123C20
	pop {R4-R7,pc}
off_8123C14: .word dword_8123394+0x54
off_8123C18: .word byte_8123C1C
byte_8123C1C: .byte 0x57, 0x59, 0x5B, 0x0
.endfunc // sub_8123C00

.func
.thumb_func
sub_8123C20:
	push {lr}
	sub sp, sp, #0x18
	str R0, [SP]
	str R1, [SP,#4]
	str R2, [SP,#8]
	str R3, [SP,#0xC]
	str R4, [SP,#0x10]
	str R6, [SP,#0x14]
	ldrb R0, [R5,#0xC]
	ldr R1, [SP]
	ldrb R1, [R1,R0]
	ldrb R0, [R5,#0x14]
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp R0, #0xFF
	bne loc_8123C52
	ldr R0, [SP,#4]
	ldr R1, [R5,#0x4C]
	tst R0, R1
	beq loc_8123C92
	mov R0, #1
	ldr R1, [SP,#0xC]
	bl sub_81171F4
	b loc_8123C92
loc_8123C52:
	ldr R1, [SP,#0x10]
	strh R0, [R5,R1]
	ldr R0, [SP,#4]
	ldr R1, [R5,#0x4C]
	tst R0, R1
	bne loc_8123C6C
	// a1
	ldr R0, [SP,#8]
	bl sub_80465A0 // (void *a1) -> void
	ldr R0, [SP,#4]
	ldr R1, [R5,#0x4C]
	orr R1, R0
	str R1, [R5,#0x4C]
loc_8123C6C:
	mov r0, #0x24 
	ldrb R1, [R5,#0xC]
	mov R2, #0xA
	mul R1, R2
	add r0, r0, r1
	mov R1, #0x9D
	mov r2, #0x48 
	mov R4, #4
	ldr R6, [SP,#4]
	cmp R6, #1
	beq loc_8123C8C
	ldr R3, [SP,#0x14]
	ldr R7, [SP,#0xC]
	bl sub_8134930
	b loc_8123C92
loc_8123C8C:
	ldr R3, [SP,#0xC]
	bl sub_81348DC
loc_8123C92:
	add sp, sp, #0x18
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8123C20

.func
.thumb_func
sub_8123C98:
	push {R4-R7,lr}
	add r7, r5, #0
	mov R0, #3
	mov R1, #6
	mov R2, #2
	mov R3, #0
	mov R4, #0x17
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_8123C98

	ldrb R0, [R7,#0xC]
	ldrb R0, [R7,#0xC]
	bl sub_8137884
	lsr r0, r0, #4
	ldr R1, off_8123CE4 // =unk_20347D8 
	mov R2, #0xB
	mov R3, #1
	mov R4, #0xF
	bl sub_8120348
	mov R0, #0xB
	mov R1, #6
	mov R2, #2
	ldr R3, off_8123CE4 // =unk_20347D8 
	mov R4, #0xF
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb R0, [R7,#0x14]
	mov R1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldr R1, dword_8123CEC // =0x8160 
	ldr R2, dword_8123CF0 // =0xBA0037 
	bl sub_812053C
	pop {R4-R7,pc}
off_8123CE4: .word unk_20347D8
	.word unk_20018EC
dword_8123CEC: .word 0x8160
dword_8123CF0: .word 0xBA0037
	.word 0x7160, 0xA60037, 0x2024B510, 0x2248219D, 0x24042304
	.word 0xFDE8F010, 0xBD10, 0x1C07B5F0, 0x20241C0B, 0x2248219D
	.word 0xF0102404, 0xBDF0FE07
.func
.thumb_func
sub_8123D24:
	push {R4-R7,lr}
	mov R0, R10
	ldr R0, [R0,#0x40]
	ldrb R4, [R0,#5]
	mov R6, #0
loc_8123D2E:
	lsl r2, r6, #8
	ldrb R0, [R5,#0xC]
	cmp R0, R6
	bne loc_8123D3A
	mov R0, #1
	orr R2, R0
loc_8123D3A:
	mov R0, #1
	lsl r0, r0, #0x10
	orr R2, R0
	mov R0, #0x15
	mov R1, #7
	add r1, r1, r6
	bl sub_8046670
	add R6, #1
	cmp R6, R4
	blt loc_8123D2E
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_8123D24

.func
.thumb_func
sub_8123D54:
	push {lr}
	add r1, r0, #0
	ldr R0, off_8123D68 // =dword_8123394+92 
	tst R1, R1
	beq loc_8123D60
	// a1
	ldr R0, off_8123D6C // =dword_8123394+100 
loc_8123D60:
	bl sub_80465A0 // (void *a1) -> void
	pop {pc}
	.balign 4, 0x00
off_8123D68: .word dword_8123394+0x5C
off_8123D6C: .word dword_8123394+0x64
.endfunc // sub_8123D54

.func
.thumb_func
sub_8123D70:
	push {R4-R7,lr}
	bl sub_8123E08
	ldr R1, off_8123D8C // =dword_8123D90 
	lsl r0, r0, #2
	ldr R1, [R1,R0]
	mov R0, #0
	mov r2, #0x20 
	mov R3, #0x12
	ldr R4, off_8123DF8 // =dword_8123394+56 
	ldr R6, dword_8123E00 // =0x40000000 
	bl sub_8123D98
	pop {R4-R7,pc}
off_8123D8C: .word dword_8123D90
dword_8123D90: .word 0x4F, 0x55
.endfunc // sub_8123D70

.func
.thumb_func
sub_8123D98:
	push {r4,lr}
	sub sp, sp, #0x1c
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	str R4, [SP,#0xC]
	str R6, [SP,#0x10]
	lsl r0, r0, #0x10
	ldr R1, [SP]
	ldr R3, [SP,#4]
	tst R3, R3
	bne loc_8123DB4
	mov R2, #0
	b loc_8123DB6
loc_8123DB4:
	ldrh R2, [R5,R3]
loc_8123DB6:
	mov R3, #0x10
	mul R2, R3
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_8123DFC // =0x20005 
	ldr R2, [SP,#8]
	ldrb R2, [R5,R2]
	str R2, [SP,#0x14]
	mov R3, #0xF
	and R2, R3
	ldr R3, [SP,#0xC]
	ldr R4, [SP,#0x10]
	bl sub_811FAF4
	ldr R1, [SP,#0x14]
	lsr r1, r1, #4
	sub R1, #1
	bne loc_8123DE4
	ldr R1, off_8123E04 // =dword_8123394+64 
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_8123DE4:
	ldr R2, [SP,#8]
	ldrb R0, [R5,R2]
	mov R3, #0xF
	and R0, R3
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,R2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.balign 4, 0x00
off_8123DF8: .word dword_8123394+0x38
dword_8123DFC: .word 0x20005
dword_8123E00: .word 0x40000000
off_8123E04: .word dword_8123394+0x40
.endfunc // sub_8123D98

.func
.thumb_func
sub_8123E08:
	push {lr}
	mov R2, #0
	ldrb R1, [R5,#0xC]
	ldr R0, off_8123E20 // =unk_20018EC 
	ldrb R0, [R0,R1]
	mov r1, #0x20 
	and R0, R1
	beq loc_8123E1A
	mov R2, #1
loc_8123E1A:
	add r0, r2, #0
	pop {pc}
	.byte 0, 0
off_8123E20: .word unk_20018EC
.endfunc // sub_8123E08

	push {r4,lr}
	mov R4, #0
loc_8123E28:
	ldr R0, off_8123E48 // =dword_8123E4C 
	lsl r1, r4, #2
	ldr R0, [R0,R1]
	bl sub_80466C4
	beq loc_8123E40
	mov R0, #0
	ldrb R2, [R5,#0xC]
	cmp R2, R4
	bne loc_8123E3E
	mov R0, #1
loc_8123E3E:
	strb R0, [R1,#4]
loc_8123E40:
	add R4, #1
	cmp R4, #3
	blt loc_8123E28
	pop {r4,pc}
off_8123E48: .word dword_8123E4C
dword_8123E4C: .word 0x7, 0x8, 0x9
.func
.thumb_func
sub_8123E58:
	push {r4,r6,lr}
	ldrb R0, [R5,#0x14]
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	lsl r6, r0, #2
	ldrb R0, [R5,#0x11]
	tst R0, R0
	bne loc_8123E8C
	ldr R0, off_8123EC4 // =dword_8123EC8 
	ldr R0, [R0,R6]
	ldr R1, dword_8123ED4 // =0x20005 
	mov R2, #0
	ldr R3, off_8123ED8 // =dword_8123394+40 
	ldr R4, dword_8123EDC // =0x80004000 
	bl sub_811FAF4
	ldr R0, off_8123EE0 // =dword_8123EE4 
	ldr R0, [R0,R6]
	ldr R1, dword_8123EF0 // =0x20005 
	mov R2, #0
	ldr R3, off_8123EF4 // =dword_8123394+44 
	ldr R4, dword_8123EF8 // =0x8000 
	bl sub_811FAF4
	b loc_8123EAC
loc_8123E8C:
	ldr R0, off_8123EFC // =dword_8123F00 
	ldr R0, [R0,R6]
	ldr R1, dword_8123F0C // =0x20005 
	mov R2, #0
	ldr R3, off_8123F10 // =dword_8123394+48 
	ldr R4, dword_8123F14 // =0x80004000 
	bl sub_811FAF4
	ldr R0, off_8123F18 // =dword_8123F1C 
	ldr R0, [R0,R6]
	ldr R1, dword_8123F28 // =0x20005 
	mov R2, #0
	ldr R3, off_8123F2C // =dword_8123394+52 
	ldr R4, dword_8123F30 // =0x8000 
	bl sub_811FAF4
loc_8123EAC:
	ldrb R0, [R5,#0x10]
	add R0, #1
	cmp R0, #6
	blt loc_8123EBE
	ldrb R0, [R5,#0x11]
	mov R1, #1
	eor R0, R1
	strb R0, [R5,#0x11]
	mov R0, #0
loc_8123EBE:
	strb R0, [R5,#0x10]
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8123EC4: .word dword_8123EC8
dword_8123EC8: .word 0x1A000C, 0x62000C, 0xAA000C
dword_8123ED4: .word 0x20005
off_8123ED8: .word dword_8123394+0x28
dword_8123EDC: .word 0x80004000
off_8123EE0: .word dword_8123EE4
dword_8123EE4: .word 0x3A000C, 0x82000C, 0xCA000C
dword_8123EF0: .word 0x20005
off_8123EF4: .word dword_8123394+0x2C
dword_8123EF8: .word 0x8000
off_8123EFC: .word dword_8123F00
dword_8123F00: .word 0x1A000C, 0x62000C, 0xAA000C
dword_8123F0C: .word 0x20005
off_8123F10: .word dword_8123394+0x30
dword_8123F14: .word 0x80004000
off_8123F18: .word dword_8123F1C
dword_8123F1C: .word 0x3A000C, 0x82000C, 0xCA000C
dword_8123F28: .word 0x20005
off_8123F2C: .word dword_8123394+0x34
dword_8123F30: .word 0x8000
dword_8123F34: .word 0xC246C242, 0xFFFFC24A, 0xFF060606, 0xA, 0x1010A, 0x2020A
	.word 0x3030A, 0x4040A, 0x5050A, 0xFFFFFFFF
.endfunc // sub_8123E58

.func
.thumb_func
ho_8123F5C:
	push {lr}
	ldr R0, off_8123F6C // =jt_8123F70 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8123F6C: .word jt_8123F70
jt_8123F70: .word sub_8123F7C+1
	.word sub_812407C+1
	.word sub_8124350+1
.endfunc // ho_8123F5C

.func
.thumb_func
sub_8123F7C:
	push {R4-R7,lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #0x10
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_8124048 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8046664 // () -> void
	bl sub_8124384
	mov R0, #6
	strb R0, [R5,#0xC]
	bl subchip_initGfx_81243B0
	ldr R0, off_8124054 // =unk_201EC2C 
	mov R1, #8
	mov R2, #6
	ldr R3, dword_8124058 // =0x306200 
	bl sub_8120C94
	bl sub_81247EC
	bl sub_81245BC
	mov R0, #0
	strb R0, [R5,#0x14]
	strb R0, [R5,#0xD]
	strb R0, [R5,#0xF]
	strb R0, [R5,#0x11]
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	mov r1, #0x40 
	bl sub_80137FE
	strh R0, [R5,#0x18]
	add r0, r4, #0
	mov r1, #0x42 
	bl sub_80137FE
	strh R0, [R5,#0x1A]
	ldr R0, off_812404C // =unk_201EBDC 
	mov R1, #0xB
	mov R2, #3
	ldr R3, dword_8124050 // =0x30B380 
	bl sub_8120C94
	bl sub_812453C
	ldr R0, off_812405C // =unk_201EC8C 
	mov R1, #8
	mov R2, #1
	ldr R3, dword_8124060 // =0x306220 
	bl sub_8120C94
	ldr R0, off_8124064 // =unk_201ECAC 
	mov R1, #8
	mov R2, #1
	ldr R3, dword_8124068 // =0x306230 
	bl sub_8120C94
	ldr R0, off_812406C // =unk_201ECCC 
	mov R1, #8
	mov R2, #1
	ldr R3, dword_8124070 // =0x306240 
	bl sub_8120C94
	bl sub_8124870
	// a1
	ldr R0, a1 // =dword_8123F34+12 
	bl sub_80465A0 // (void *a1) -> void
	mov R0, #0
	ldr R1, off_8124078 // =dword_8123F34+8 
	bl sub_8120CC8
	strb R0, [R5,#0xD]
	strb R1, [R5,#0x12]
	pop {R4-R7,pc}
dword_8124048: .word 0x1F40
off_812404C: .word unk_201EBDC
dword_8124050: .word 0x30B380
off_8124054: .word unk_201EC2C
dword_8124058: .word 0x306200
off_812405C: .word unk_201EC8C
dword_8124060: .word 0x306220
off_8124064: .word unk_201ECAC
dword_8124068: .word 0x306230
off_812406C: .word unk_201ECCC
dword_8124070: .word 0x306240
a1: .word dword_8123F34+0xC
off_8124078: .word dword_8123F34+8
.endfunc // sub_8123F7C

.func
.thumb_func
sub_812407C:
	push {lr}
	ldr R0, off_812409C // =off_81240A0 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl sub_812453C
	bl sub_812475C
.endfunc // sub_812407C

	pop {pc}
	.balign 4, 0x00
off_812409C: .word off_81240A0
off_81240A0: .word sub_81240BC+1
	.word sub_81240D0+1
	.word sub_8124134+1
	.word sub_8124144+1
	.word sub_81242D8+1
	.word sub_8124308+1
	.word sub_8124340+1
.func
.thumb_func
sub_81240BC:
	push {lr}
	bl sub_81244EC
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81240CC
	mov R0, #4
	strb R0, [R5,#2]
locret_81240CC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_81240BC

.func
.thumb_func
sub_81240D0:
	push {lr}
	mov R0, #0xA
	bl sub_811F7EC
	beq loc_81240E2
	mov R0, #8
	bl sub_811FB64
	b loc_8124128
loc_81240E2:
	ldrb R0, [R5,#0xC]
	tst R0, R0
	beq loc_8124112
	mov R0, #1
	bl sub_811F7EC
	beq loc_8124112
	ldr R0, off_8124130 // =unk_201C400 
	ldrh R1, [R5,#0x14]
	lsl r1, r1, #1
	add R1, #1
	ldrb R0, [R0,R1]
	tst R0, R0
	bne loc_8124106
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_8124128
loc_8124106:
	bl loc_81245D4
	mov R0, #0x81
	bl sound_play // () -> void
	b loc_8124128
loc_8124112:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	ldrb R1, [R5,#0xC]
	cmp R1, #1
	ble loc_8124128
	mov R2, #1
	ldrh R3, [R5,#0x14]
	bl sub_811FA22
	strh R0, [R5,#0x14]
loc_8124128:
	bl sub_81244EC
	pop {pc}
	.byte 0, 0
off_8124130: .word unk_201C400
.endfunc // sub_81240D0

.func
.thumb_func
sub_8124134:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_8124142
	mov R0, #4
	strb R0, [R5,#2]
locret_8124142:
	pop {pc}
.endfunc // sub_8124134

.func
.thumb_func
sub_8124144:
	push {lr}
	ldrb R0, [R5,#0x11]
	mov R1, #1
	tst R0, R1
	bne loc_8124176
	mov R0, #0x80
	bl chatbox_8045F3C
	tst R0, R0
	beq locret_8124180
	mov R0, #0x10
	bl chatbox_8045F3C
	bne loc_8124170
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq locret_8124180
	bl chatbox_8045F4C
	tst R0, R0
	beq loc_8124176
loc_8124170:
	mov R0, #4
	strb R0, [R5,#2]
	b locret_8124180
loc_8124176:
	ldr R0, off_8124184 // =off_8124188 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
locret_8124180:
	pop {pc}
	.balign 4, 0x00
off_8124184: .word off_8124188
off_8124188: .word sub_81241A0+1
	.word sub_81241A0+1
	.word sub_8124230+1
	.word sub_812425C+1
	.word sub_812427C+1
	.word sub_81242AC+1
.endfunc // sub_8124144

.func
.thumb_func
sub_81241A0:
	push {R4-R7,lr}
	mov R4, #1
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #2
	tst R0, R1
	beq loc_81241B2
	ldrh R4, [R5,#0x16]
loc_81241B2:
	ldrb R0, [R5,#0x11]
	mov R1, #1
	tst R0, R1
	bne loc_81241C4
	orr R0, R1
	strb R0, [R5,#0x11]
	mov R0, #0x8A
	bl sound_play // () -> void
loc_81241C4:
	mov R7, #8
	add r1, r4, #0
	ldrh R0, [R5,#0x16]
	cmp R0, R1
	bgt loc_81241D2
	mov R0, #0x10
	strb R0, [R5,#2]
loc_81241D2:
	ldrh R0, [R5,#0x18]
	add r0, r0, r1
	ldrh R1, [R5,#0x1A]
	cmp R0, R1
	bgt loc_81241E6
	strh R0, [R5,#0x18]
	ldrh R0, [R5,#0x16]
	sub r0, r0, r4
	strh R0, [R5,#0x16]
	b loc_81241EE
loc_81241E6:
	strh R1, [R5,#0x18]
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R7, #9
loc_81241EE:
	mov R0, #0x10
	ldrb R1, [R5,#2]
	cmp R0, R1
	bne loc_8124204
	add r0, r7, #0
	bl sub_812474C
	ldrb R0, [R5,#0x11]
	mov R1, #1
	bic R0, R1
	strb R0, [R5,#0x11]
loc_8124204:
	push {r4,r6}
	ldr R0, off_8124228 // =unk_201C4B0 
	ldrh R1, [R5,#0x18]
	ldrh R2, [R5,#0x1A]
	ldr R3, dword_812422C // =0x3091E0 
	mov R4, #2
	mov R6, #3
	bl sub_8120900
.endfunc // sub_81241A0

	pop {r4,r6}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	ldrh R2, [R5,#0x18]
	bl sub_80137E6
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8124228: .word unk_201C4B0
dword_812422C: .word 0x3091E0
.func
.thumb_func
sub_8124230:
	push {r4,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0xA
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R4, R10
	ldr R4, [R4,#0x40]
	ldr R0, dword_8124258 // =0x1770 
	str R0, [R4,#0x24]
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrh R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xA
	bl sub_812474C
	pop {r4,pc}
	.balign 4, 0x00
dword_8124258: .word 0x1770
.endfunc // sub_8124230

.func
.thumb_func
sub_812425C:
	push {r4,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #9
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrh R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xA
	bl sub_812474C
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_812425C

.func
.thumb_func
sub_812427C:
	push {r4,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0xB
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R4, R10
	ldr R4, [R4,#0x40]
	ldr R0, dword_81242A8 // =0x1770 
	str R0, [R4,#0x28]
	ldr R0, [R4,#0x1C]
	str R0, [R4,#0x2C]
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrh R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xA
	bl sub_812474C
	pop {r4,pc}
	.balign 4, 0x00
dword_81242A8: .word 0x1770
.endfunc // sub_812427C

.func
.thumb_func
sub_81242AC:
	push {r4,r7,lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #8
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x14
	strb R0, [R5,#2]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrh R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xA
	bl sub_812474C
	mov R4, R10
	ldr R4, [R4,#0x3C]
	mov R0, #0xC
	strb R0, [R4,#0x16]
	mov R0, #0xFF
	strb R0, [R4,#0x17]
	pop {r4,r7,pc}
	.balign 4, 0x00
.endfunc // sub_81242AC

.func
.thumb_func
sub_81242D8:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	tst R0, R0
	bne loc_8124300
	mov R0, #4
	strb R0, [R5,#2]
	ldrh R0, [R5,#0x10]
	mov R1, #1
	bl sub_803CE08
	bl sub_8124384
	ldrb R0, [R5,#0xC]
	sub R0, #1
	ldrb R1, [R5,#0x14]
	cmp R0, R1
	bge loc_8124300
	strb R0, [R5,#0x14]
loc_8124300:
	bl sub_8124870
.endfunc // sub_81242D8

	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_8124308:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	bne locret_812433E
	ldrh R0, [R5,#0x10]
	mov R1, #1
	bl sub_803CE08
	bl sub_8124384
	ldrb R0, [R5,#0xC]
	sub R0, #1
	ldrb R1, [R5,#0x14]
	cmp R0, R1
	bge loc_812432A
	strb R0, [R5,#0x14]
loc_812432A:
	mov R0, #0xC
	mov R1, #0xC
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrb R0, [R5,#0x11]
	mov R1, #2
	orr R0, R1
	strb R0, [R5,#0x11]
	mov R0, #0x18
	strb R0, [R5,#2]
locret_812433E:
	pop {pc}
.endfunc // sub_8124308

.func
.thumb_func
sub_8124340:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812434C
	mov R0, #8
	strb R0, [R5,#1]
locret_812434C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_8124340

.func
.thumb_func
sub_8124350:
	push {lr}
	bl sub_81244EC
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8124380
	bl sub_8046664 // () -> void
	ldrb R0, [R5,#0x11]
	mov R1, #2
	tst R0, R1
	beq loc_812437C
	mov R0, #1
	bl sub_811EBF4
	bl sub_811F728
	b locret_8124380
loc_812437C:
	bl sub_811F708
locret_8124380:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8124350

.func
.thumb_func
sub_8124384:
	push {R4-R7,lr}
	ldr R0, off_81243AC // =unk_201C400 
	add r4, r0, #0
	mov R1, #0x10
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	mov R7, #0x80
	mov R3, #0
loc_8124394:
	add r0, r7, #0
	bl sub_803CE28
	mov R1, #0x80
	strb R7, [R4,R3]
	add R3, #1
	strb R0, [R4,R3]
	add R3, #1
	add R7, #1
	cmp R7, #0x85
	ble loc_8124394
	pop {R4-R7,pc}
off_81243AC: .word unk_201C400
.endfunc // sub_8124384

.func
.thumb_func
subchip_initGfx_81243B0:
	push {R4-R7,lr}
	ldr R4, off_8124480 // =unk_20096E0 
	mov R6, #0
	mov R7, #0
	ldr R5, off_812444C // =dword_8124450 
loc_81243BA:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_81243CC:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_81243CC
	cmp r7, #0x30 
	blt loc_81243BA
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_8124480 // =unk_20096E0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// initRefs
	ldr R0, off_8124484 // =dword_8124488 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	ldr R0, off_812440C // =dword_8124410 
	ldr R1, off_8124444 // =unk_201C100 
	ldr R2, off_8124448 // =decomp_2013A00 
	bl sub_8123300
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_8124498 // =unk_201BA00 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812440C: .word dword_8124410
dword_8124410: .word 0x86CF994, 0x86CFAF8, 0x86CFAF8, 0x86CFAF8, 0x86CFAF8
	.word 0x86CFAF8, 0x86CFAF8, 0x86CFAF8, 0x86CFAF8, 0x86CFAF8
	.word 0x86CFAF8, 0x86CF994, 0x86CFAF8
off_8124444: .word unk_201C100
off_8124448: .word decomp_2013A00
off_812444C: .word dword_8124450
dword_8124450: .word 0x86C9108, 0x2, 0x3001960, 0x20, 0x86C9AF4, 0x2, 0x3001AC0
	.word 0x20, 0x86C9B54, 0x2, 0x3001A20, 0x20
off_8124480: .word unk_20096E0
off_8124484: .word dword_8124488
dword_8124488: .word comp_86C8054 + 1<<31
	.word 0x6000020
	.word decomp_2013A00
	.word comp_86CF82C + 1<<31
off_8124498: .word unk_201BA00
	.word decomp_2013A00
	.word comp_86C9BD4 + 1<<31
	.word 0x6014840
	.word decomp_2013A00
	.word unk_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word comp_86C9148 + 1<<31
	.word 0x6003C00
	.word decomp_2013A00
	.word comp_86C9240 + 1<<31
	.word unk_3001A40
	.word decomp_2013A00
	.word comp_86CFC64 + 1<<31
	.word 0x6010000
	.word decomp_2013A00
	.word comp_86CFCFC + 1<<31
	.word byte_3001690
	.word decomp_2013A00
	.word 0x0
.endfunc // subchip_initGfx_81243B0

.func
.thumb_func
sub_81244EC:
	push {r4,lr}
	ldrb R1, [R5,#0xC]
	tst R1, R1
	beq locret_8124520
	ldr R0, dword_8124524 // =0x40000 
	ldrh R1, [R5,#0x14]
	mov R3, #0x10
	mul R1, R3
	ldr R2, off_8124528 // =0x30 
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_812452C // =0x10002 
	ldrb R2, [R5,#0xD]
	ldr R3, off_8124530 // =dword_8123F34 
	ldr R4, dword_8124534 // =0x40000000 
	bl sub_811FAF4
	ldrb R1, [R5,#0x12]
	sub R1, #1
	strb R1, [R5,#0x12]
	bne locret_8124520
	ldr R1, off_8124538 // =dword_8123F34+8 
	bl sub_8120CC8
	strb R0, [R5,#0xD]
	strb R1, [R5,#0x12]
locret_8124520:
	pop {r4,pc}
	.balign 4, 0x00
dword_8124524: .word 0x40000
off_8124528: .word 0x30
dword_812452C: .word 0x10002
off_8124530: .word dword_8123F34
dword_8124534: .word 0x40000000
off_8124538: .word dword_8123F34+8
.endfunc // sub_81244EC

.func
.thumb_func
sub_812453C:
	push {lr}
	mov R0, #0
	strb R0, [R5,#0xE]
	ldrb R0, [R5,#0xC]
	tst R0, R0
	beq loc_812456C
	ldrh R0, [R5,#0x14]
	lsl r0, r0, #1
	ldr R1, off_8124574 // =unk_201C400 
	ldrb R1, [R1,R0]
	sub R1, #0x80
	strb R1, [R5,#0xF]
	push {R4-R7}
	ldr R0, off_8124578 // =unk_201C100 
	ldr R2, off_812457C // =unk_201AA00 
	ldr R3, dword_8124580 // =0x6007000 
	mov R4, #0xB
	mov R5, #3
	ldr R6, off_8124584 // =dword_86A5D60 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R4-R7}
	strb R0, [R5,#0xE]
loc_812456C:
	bl sub_8124588
.endfunc // sub_812453C

	pop {pc}
	.balign 4, 0x00
off_8124574: .word unk_201C400
off_8124578: .word unk_201C100
off_812457C: .word unk_201AA00
dword_8124580: .word 0x6007000
off_8124584: .word dword_86A5D60
.func
.thumb_func
sub_8124588:
	push {R4-R7,lr}
	add r7, r5, #0
	ldrb R0, [R7,#0xE]
	tst R0, R0
	bne loc_81245A4
	mov R0, #0xF
	mov R1, #0xC
	mov R2, #2
	mov R3, #0
	mov R4, #0xB
	mov R5, #6
	bl sub_80018D0
	b locret_81245B4
loc_81245A4:
	// j
	mov R0, #0xF
	// i
	mov R1, #0xC
	// cpyOff
	mov R2, #2
	// tileRefs
	ldr R3, off_81245B8 // =unk_201EBDC 
	mov R4, #0xB
	mov R5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8124588

locret_81245B4:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_81245B8: .word unk_201EBDC
.func
.thumb_func
sub_81245BC:
	push {R4-R7,lr}
	// j
	mov R0, #2
	// i
	mov R1, #6
	// cpyOff
	mov R2, #2
	// tileRefs
	ldr R3, off_81245D0 // =unk_201EC2C 
	mov R4, #8
	mov R5, #0xC
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_81245BC

	pop {R4-R7,pc}
off_81245D0: .word unk_201EC2C
loc_81245D4:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#0x3C]
	ldrb R0, [R0,#4]
	cmp R0, #0x80
	blt loc_81245F8
	ldrh R0, [R5,#0x14]
	lsl r0, r0, #1
	ldr R1, off_8124604 // =unk_201C400 
	ldrb R0, [R1,R0]
	add r1, r0, #0
	sub R1, #0x80
	lsl r1, r1, #2
	ldr R2, off_8124608 // =off_812460C 
	ldr R2, [R2,R1]
	mov LR, PC
	bx r2
	pop {pc}
loc_81245F8:
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #6
	bl sub_812474C
	pop {pc}
off_8124604: .word unk_201C400
off_8124608: .word off_812460C
off_812460C: .word sub_8124624+1
	.word sub_8124624+1
	.word sub_8124660+1
	.word sub_812469C+1
	.word sub_81246D8+1
	.word sub_812471C+1
.func
.thumb_func
sub_8124624:
	push {r4,r7,lr}
	strb R0, [R5,#0x10]
	ldrh R0, [R5,#0x18]
	ldrh R7, [R5,#0x1A]
	cmp R0, R7
	beq loc_8124652
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov r1, #0x32 
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	cmp R0, #0x80
	beq loc_8124646
	add r1, r7, #0
loc_8124646:
	strh R1, [R5,#0x16]
	str R0, [R4,#0x4C]
	mov R0, #7
	bl sub_812474C
	b locret_812465C
loc_8124652:
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #6
	bl sub_812474C
locret_812465C:
	pop {r4,r7,pc}
	.byte 0, 0
.endfunc // sub_8124624

.func
.thumb_func
sub_8124660:
	push {r4,lr}
	strb R0, [R5,#0x10]
	mov R4, R10
	ldr R4, [R4,#0x40]
	ldr R0, [R4,#0x24]
	tst R0, R0
	bne loc_8124686
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #8
	strb R0, [R5,#3]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #7
	bl sub_812474C
	b locret_8124698
loc_8124686:
	mov R0, #8
	strb R0, [R5,#2]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xB
	bl sub_812474C
locret_8124698:
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_8124660

.func
.thumb_func
sub_812469C:
	push {r4,lr}
	strb R0, [R5,#0x10]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #9
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_81246C2
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0xC
	strb R0, [R5,#3]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #7
	bl sub_812474C
	b locret_81246D4
loc_81246C2:
	mov R0, #8
	strb R0, [R5,#2]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xB
	bl sub_812474C
locret_81246D4:
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_812469C

.func
.thumb_func
sub_81246D8:
	push {r4,lr}
	strb R0, [R5,#0x10]
	mov R4, R10
	ldr R4, [R4,#0x40]
	ldr R0, [R4,#0x28]
	tst R0, R0
	bne loc_8124708
	ldr R1, [R4,#0x1C]
	tst R1, R1
	beq loc_8124704
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #7
	bl sub_812474C
	b locret_812471A
loc_8124704:
	mov R0, #0xD
	b loc_8124712
loc_8124708:
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #0xB
loc_8124712:
	bl sub_812474C
	mov R0, #8
	strb R0, [R5,#2]
locret_812471A:
	pop {r4,pc}
.endfunc // sub_81246D8

.func
.thumb_func
sub_812471C:
	push {r4,r7,lr}
	strb R0, [R5,#0x10]
	bl sub_809F9BE
	tst R7, R7
	beq loc_8124740
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0x14
	strb R0, [R5,#3]
	mov R4, R10
	ldr R4, [R4,#0x2C]
	ldrb R0, [R5,#0x10]
	str R0, [R4,#0x4C]
	mov R0, #7
	bl sub_812474C
	b locret_812474A
loc_8124740:
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #0xC
	bl sub_812474C
locret_812474A:
	pop {r4,r7,pc}
.endfunc // sub_812471C

.func
.thumb_func
sub_812474C:
	push {lr}
	add r1, r0, #0
	ldr R0, off_8124758 // =unk_201C100 
	bl chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
	pop {pc}
off_8124758: .word unk_201C100
.endfunc // sub_812474C

.func
.thumb_func
sub_812475C:
	push {R4-R7,lr}
	mov R7, R10
	ldr R7, [R7,#0x40]
	ldr R0, [R7,#0x24]
	tst R0, R0
	beq loc_812477A
	// j
	mov R0, #0x15
	// i
	mov R1, #8
	// cpyOff
	mov R2, #2
	// tileRefs
	ldr R3, off_81247E0 // =unk_201EC8C 
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b loc_812478A
loc_812477A:
	mov R0, #0x15
	mov R1, #8
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_812475C

loc_812478A:
	mov R0, #0x17
	mov R1, #9
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_81247A6
	mov R0, #0x15
	mov R1, #5
	mov R2, #2
	ldr R3, off_81247E4 // =unk_201ECAC 
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b loc_81247B6
loc_81247A6:
	mov R0, #0x15
	mov R1, #5
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
loc_81247B6:
	ldr R0, [R7,#0x28]
	tst R0, R0
	beq loc_81247CE
	mov R0, #0x15
	mov R1, #2
	mov R2, #2
	ldr R3, off_81247E8 // =unk_201ECCC 
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_81247DE
loc_81247CE:
	mov R0, #0x15
	mov R1, #2
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
locret_81247DE:
	pop {R4-R7,pc}
off_81247E0: .word unk_201EC8C
off_81247E4: .word unk_201ECAC
off_81247E8: .word unk_201ECCC
.func
.thumb_func
sub_81247EC:
	push {R4-R7,lr}
	sub sp, sp, #4
	mov R4, #0
	str R4, [SP]
loc_81247F4:
	ldr R1, off_8124860 // =byte_8124864 
	lsl r0, r4, #1
	ldrh R1, [R1,R0]
	ldr R0, off_8124820 // =byte_873D9FC 
	lsl r4, r4, #2
	ldr R2, off_8124828 // =off_812482C 
	ldr R2, [R2,R4]
	ldr R3, off_8124844 // =dword_8124848 
	ldr R3, [R3,R4]
	mov R4, #8
	mov R5, #1
	ldr R6, off_8124824 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_81247EC

	ldr R4, [SP]
	add R4, #1
	str R4, [SP]
	cmp R4, #6
	blt loc_81247F4
	add sp, sp, #4
	pop {R4-R7,pc}
off_8124820: .word byte_873D9FC
off_8124824: .word dword_86B7AE0
off_8124828: .word off_812482C
off_812482C: .word unk_201C4DC
	.word unk_201CB5C
	.word unk_201D1DC
	.word unk_201D85C
	.word unk_201DEDC
	.word unk_201E55C
off_8124844: .word dword_8124848
dword_8124848: .word 0x6004000, 0x6004200, 0x6004400, 0x6004600, 0x6004800
	.word 0x6004A00
off_8124860: .word byte_8124864
byte_8124864: .byte 0x80, 0x0, 0x81, 0x0, 0x82, 0x0, 0x83, 0x0, 0x84, 0x0, 0x85
	.byte 0x0
.func
.thumb_func
sub_8124870:
	push {r4,r6,lr}
	ldr R0, dword_8124894 // =0x3071E0 
	ldrh R1, [R5,#0x18]
	ldrh R2, [R5,#0x1A]
	lsr r3, r2, #2
	cmp R3, R1
	blt loc_8124880
	ldr R0, dword_8124898 // =0x3081E0 
loc_8124880:
	add r3, r0, #0
	ldr R0, off_8124890 // =unk_201C4B0 
	mov R4, #2
	mov R6, #3
	bl sub_8120900
.endfunc // sub_8124870

	pop {r4,r6,pc}
	.byte 0, 0
off_8124890: .word unk_201C4B0
dword_8124894: .word 0x3071E0
dword_8124898: .word 0x3081E0
dword_812489C: .word 0xA082A080, 0xA086A084, 0xA08AA088, 0xA08EA08C, 0xA081A090
	.word 0xA085A083, 0xA089A087, 0xA08DA08B, 0xA091A08F, 0xA0A2A0A0
	.word 0xA0A6A0A4, 0xA0AAA0A8, 0xA0AEA0AC, 0xA0A1A0B0, 0xA0A5A0A3
	.word 0xA0A9A0A7, 0xA0ADA0AB, 0xA0B1A0AF, 0xA0C2A0C0, 0xA0C6A0C4
	.word 0xA0CAA0C8, 0xA0CEA0CC, 0xA0C1A0D0, 0xA0C5A0C3, 0xA0C9A0C7
	.word 0xA0CDA0CB, 0xA0D1A0CF, 0xA0E2A0E0, 0xA0E6A0E4, 0xA0EAA0E8
	.word 0xA0EEA0EC, 0xA0E1A0F0, 0xA0E5A0E3, 0xA0E9A0E7, 0xA0EDA0EB
	.word 0xA0F1A0EF, 0xA102A100, 0xA106A104, 0xA10AA108, 0xA10EA10C
	.word 0xA101A110, 0xA105A103, 0xA109A107, 0xA10DA10B, 0xA111A10F
	.word 0x0
	.word 0xA202, 0xA2030000, 0x0
	.word 0xA202, 0xA2030000, 0x0
	.word 0xA202, 0xA2030000, 0x0
	.word 0xA202, 0xA2030000, 0x0
	.word 0xA202, 0xA2030000, 0x0
	.word 0xA202, 0xA2030000, 0x0
dword_812499C: .word 0xA202, 0xA2030000, 0xC361C360, 0xC363C362, 0xC365C364
	.word 0xC367C366, 0xC369C368, 0xC36BC36A, 0xC36DC36C, 0xC36FC36E
	.word 0xC371C370, 0xC373C372, 0xC375C374, 0xC377C376, 0xC379C378
	.word 0xC37BC37A, 0xC381C380, 0xC383C382, 0xC385C384, 0xC387C386
	.word 0xC389C388, 0xC38BC38A, 0xC38DC38C, 0xC38FC38E, 0xC391C390
	.word 0xC393C392, 0xC395C394, 0xC397C396, 0xC399C398, 0xC39BC39A
	.word 0xC3A1C3A0, 0xC3A3C3A2, 0xC3A5C3A4, 0xC3A7C3A6, 0xC3A9C3A8
	.word 0xC3ABC3AA, 0xC3ADC3AC, 0xC3AFC3AE, 0xC3B1C3B0, 0xC3B3C3B2
	.word 0xC3B5C3B4, 0xC3B7C3B6, 0xC3B9C3B8, 0xC3BBC3BA, 0xC3C1C3C0
	.word 0xC3C3C3C2, 0xC3C5C3C4, 0xC3C7C3C6, 0xC3C9C3C8, 0xC3CBC3CA
	.word 0xC3CDC3CC, 0xC3CFC3CE, 0xC3D1C3D0, 0xC3D3C3D2, 0xC3D5C3D4
	.word 0xC3D7C3D6, 0xC3D9C3D8, 0xC3DBC3DA, 0xC244C240, 0xFFFFC248
	.word 0xC24FC250, 0xFFFFC24E, 0xFF060606, 0xC255C251, 0x606FFFF
	.word 0xFF, 0x1410140, 0x1430142, 0x1450144, 0x1470146
	.word 0x1490148, 0x14B014A, 0x14D014C, 0x14F014E, 0x1510150
	.word 0x1530152, 0x1550154, 0x1570156, 0x1590158, 0x15B015A
	.word 0x15C, 0x2000016, 0x2010116, 0x2020216, 0x404
	.word 0x10504, 0x20604, 0x1000704, 0x1010804, 0x1020904
	.word 0xFFFFFFFF, 0x1A, 0x1011A, 0x2021A, 0x3031A
	.word 0xFFFFFFFF
dword_8124B1C: .word 0x1010101, 0x1010101, 0x1010101, 0x3010303, 0x4030103
	.word 0x1010101, 0x1010101, 0x102
.func
.thumb_func
sub_8124B3C:
	push {lr}
	ldr R0, off_8124B4C // =off_8124B50 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8124B4C: .word off_8124B50
off_8124B50: .word sub_8124B5C+1
	.word sub_8124C30+1
	.word sub_8125254+1
.endfunc // sub_8124B3C

.func
.thumb_func
sub_8124B5C:
	push {lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #0x10
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_8124C24 // =0x7F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	mov R0, #0
	bl sub_8126818
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	bl sub_8125280
	bl sub_81254FC
.endfunc // sub_8124B5C

	mov R0, #0xA0
	str R0, [R5,#0x74]
	str R0, [R5,#0x78]
	mov R0, #0
	bl sub_81207F8
	str R0, [R5,#0x58]
	mov R0, #1
	bl sub_81207F8
	str R0, [R5,#0x5C]
	mov R0, #2
	bl sub_81207F8
	str R0, [R5,#0x60]
	mov R0, #5
	bl sub_81207F8
	str R0, [R5,#0x64]
	mov R1, #3
	ldr R0, [R5,#0x64]
	tst R0, R0
	beq loc_8124BCC
	mov R1, #4
loc_8124BCC:
	strb R1, [R5,#0xE]
	mov R0, #4
	bl sub_81207F8
	str R0, [R5,#0x68]
	bl sub_81258F8
	strh R0, [R5,#0x12]
	bl sub_8125994
	strh R0, [R5,#0x1C]
	bl sub_8125A6C
	strh R0, [R5,#0x26]
	bl sub_8125B3C
	strh R0, [R5,#0x30]
	bl sub_8125C08
	strh R0, [R5,#0x3A]
	bl sub_8046664 // () -> void
	ldr R0, off_8124C28 // =dword_812499C+324 
	bl sub_80465A0 // (void *a1) -> void
	bl sub_81252C0
	bl sub_8125D10
	bl sub_812546C
	mov R0, #0
	ldr R1, off_8124C2C // =dword_812499C+248 
	bl sub_8120CC8
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,#0xC]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	pop {pc}
dword_8124C24: .word 0x7F40
off_8124C28: .word dword_812499C+0x144
off_8124C2C: .word dword_812499C+0xF8
.func
.thumb_func
sub_8124C30:
	push {lr}
	ldr R0, off_8124C40 // =off_8124C44 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #0
.endfunc // sub_8124C30

	pop {pc}
off_8124C40: .word off_8124C44
off_8124C44: .word sub_8124C94+1
	.word sub_8124CE8+1
	.word sub_8124D30+1
	.word sub_8124D78+1
	.word sub_8124DCC+1
	.word sub_8124E24+1
	.word sub_8124E7C+1
	.word sub_8124ED4+1
	.word sub_8124F30+1
	.word sub_8124F8C+1
	.word sub_8124FE0+1
	.word sub_812503C+1
	.word sub_812509C+1
	.word sub_81250E0+1
	.word sub_8125104+1
	.word sub_8125128+1
	.word sub_812514C+1
	.word sub_8125170+1
	.word sub_8125198+1
	.word sub_81251F4+1
.func
.thumb_func
sub_8124C94:
	push {lr}
	mov R0, #0
	bl sub_8126818
	mov R0, #0
	mov R1, #1
	bl sub_811983C
	mov R0, #0
	strb R0, [R5,#0xD]
	ldrh R0, [R5,#0x14]
	strh R0, [R5,#0x16]
	ldrh R0, [R5,#0x18]
	strh R0, [R5,#0x1A]
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8124CBC
	mov R0, #0
	bl sub_8125594
loc_8124CBC:
	bl sub_8125444
	bl sub_8125D10
.endfunc // sub_8124C94

	bl sub_81264F4
	ldr R0, [R5,#0x58]
	ldrh R1, [R5,#0x12]
	mov R2, #4
	bl sub_8117084
	ldr R0, [R5,#0x5C]
	ldrh R1, [R5,#0x1C]
	mov R2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_8124CE8:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	sub R0, #2
	str R0, [R5,#0x74]
	mov R1, #0x8E
	cmp R0, R1
	bgt loc_8124D02
	str R1, [R5,#0x74]
	mov R0, #0xC
	strb R0, [R5,#2]
loc_8124D02:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125D10
.endfunc // sub_8124CE8

	bl sub_8125D94
	ldr R0, [R5,#0x58]
	ldrh R1, [R5,#0x12]
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124D26
	ldrh R1, [R5,#0x1C]
loc_8124D26:
	mov R2, #7
	bl sub_8117084
	pop {pc}
	.byte 0, 0
.func
.thumb_func
sub_8124D30:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	add R0, #2
	str R0, [R5,#0x74]
	mov R1, #0xA0
	cmp R0, R1
	blt loc_8124D4A
	str R1, [R5,#0x74]
	mov R0, #0
	strb R0, [R5,#2]
loc_8124D4A:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125D10
.endfunc // sub_8124D30

	bl sub_8125D94
	ldr R0, [R5,#0x58]
	ldrh R1, [R5,#0x12]
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124D6E
	ldrh R1, [R5,#0x1C]
loc_8124D6E:
	mov R2, #7
	bl sub_8117084
	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_8124D78:
	push {lr}
	mov R0, #0
	bl sub_8126818
	mov R0, #1
	mov R1, #1
	bl sub_811983C
	mov R0, #1
	strb R0, [R5,#0xD]
	ldrh R0, [R5,#0x1E]
	strh R0, [R5,#0x20]
	ldrh R0, [R5,#0x22]
	strh R0, [R5,#0x24]
	mov R0, #0xA
	bl sub_81255F8
	bl sub_8125444
	bl sub_8125D94
	bl sub_812650C
	ldr R0, [R5,#0x58]
	ldrh R1, [R5,#0x12]
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124DBA
	ldrh R1, [R5,#0x1C]
loc_8124DBA:
	mov R2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8124D78

.func
.thumb_func
sub_8124DCC:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	sub R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x7c 
	cmp R0, R1
	bgt loc_8124DE6
	str R1, [R5,#0x74]
	mov R0, #0x18
	strb R0, [R5,#2]
loc_8124DE6:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125D94
	bl sub_8125E78
	ldr R0, [R5,#0x58]
	ldrh R1, [R5,#0x12]
	ldr R2, [R5,#0x74]
	cmp R2, #0x86
	bgt loc_8124E0A
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8124E0A
	ldrh R1, [R5,#0x26]
loc_8124E0A:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124E1A
	ldrh R1, [R5,#0x1C]
loc_8124E1A:
	mov R2, #7
	bl sub_8117084
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8124DCC

.func
.thumb_func
sub_8124E24:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	add R0, #2
	str R0, [R5,#0x74]
	mov R1, #0x8E
	cmp R0, R1
	blt loc_8124E3E
	str R1, [R5,#0x74]
	mov R0, #0xC
	strb R0, [R5,#2]
loc_8124E3E:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125D94
	bl sub_8125E78
	ldr R0, [R5,#0x58]
	ldrh R1, [R5,#0x12]
	ldr R2, [R5,#0x74]
	cmp R2, #0x84
	bgt loc_8124E62
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8124E62
	ldrh R1, [R5,#0x26]
loc_8124E62:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124E72
	ldrh R1, [R5,#0x1C]
loc_8124E72:
	mov R2, #7
	bl sub_8117084
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8124E24

.func
.thumb_func
sub_8124E7C:
	push {lr}
	mov R0, #0
	bl sub_8126818
	mov R0, #2
	mov R1, #1
	bl sub_811983C
	mov R0, #2
	strb R0, [R5,#0xD]
	ldrh R0, [R5,#0x28]
	strh R0, [R5,#0x2A]
	ldrh R0, [R5,#0x2C]
	strh R0, [R5,#0x2E]
	mov R0, #0x14
	bl sub_8125678
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126524
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8124EB4
	ldrh R1, [R5,#0x26]
loc_8124EB4:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124EC4
	ldrh R1, [R5,#0x1C]
loc_8124EC4:
	mov R2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
.endfunc // sub_8124E7C

.func
.thumb_func
sub_8124ED4:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	sub R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x6a 
	cmp R0, R1
	bgt loc_8124EEE
	str R1, [R5,#0x74]
	mov r0, #0x24 
	strb R0, [R5,#2]
loc_8124EEE:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8125F5C
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124F08
	ldrh R1, [R5,#0x1C]
loc_8124F08:
	ldr R2, [R5,#0x74]
	cmp r2, #0x72 
	bgt loc_8124F18
	mov R1, #0
	ldr R0, [R5,#0x64]
	cmp R0, #0xF
	bne loc_8124F18
	ldrh R1, [R5,#0x30]
loc_8124F18:
	mov R2, #7
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8124F28
	ldrh R1, [R5,#0x26]
loc_8124F28:
	mov R2, #4
	bl sub_8117084
	pop {pc}
.endfunc // sub_8124ED4

.func
.thumb_func
sub_8124F30:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	add R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x7c 
	cmp R0, R1
	blt loc_8124F4A
	str R1, [R5,#0x74]
	mov R0, #0x18
	strb R0, [R5,#2]
loc_8124F4A:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8125F5C
	mov R1, #0
	ldr R0, [R5,#0x64]
	cmp R0, #0xF
	bne loc_8124F64
	ldrh R1, [R5,#0x30]
loc_8124F64:
	ldr R2, [R5,#0x74]
	cmp r2, #0x72 
	blt loc_8124F74
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8124F74
	ldrh R1, [R5,#0x1C]
loc_8124F74:
	mov R2, #7
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8124F84
	ldrh R1, [R5,#0x26]
loc_8124F84:
	mov R2, #4
	bl sub_8117084
	pop {pc}
.endfunc // sub_8124F30

.func
.thumb_func
sub_8124F8C:
	push {lr}
	mov R0, #0
	bl sub_8126818
	mov R0, #3
	strb R0, [R5,#0xD]
	ldrh R0, [R5,#0x32]
	strh R0, [R5,#0x34]
	ldrh R0, [R5,#0x36]
	strh R0, [R5,#0x38]
	mov R0, #0x1E
	bl sub_8125704
	bl sub_81268D8
	bl sub_8125444
	bl sub_8125F5C
	bl sub_812653C
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8124FC0
	ldrh R1, [R5,#0x26]
loc_8124FC0:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x64]
	cmp R0, #0xF
	bne loc_8124FD0
	ldrh R1, [R5,#0x30]
loc_8124FD0:
	mov R2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
.endfunc // sub_8124F8C

.func
.thumb_func
sub_8124FE0:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	sub R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x58 
	cmp R0, R1
	bgt loc_8124FFA
	str R1, [R5,#0x74]
	mov r0, #0x30 
	strb R0, [R5,#2]
loc_8124FFA:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125F5C
	bl sub_8126114
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8125014
	ldrh R1, [R5,#0x26]
loc_8125014:
	ldr R2, [R5,#0x74]
	cmp r2, #0x60 
	bgt loc_8125024
	mov R1, #0
	ldr R0, [R5,#0x68]
	cmp R0, #0x1D
	bne loc_8125024
	ldrh R1, [R5,#0x3A]
loc_8125024:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x64]
	cmp R0, #0xF
	bne loc_8125034
	ldrh R1, [R5,#0x30]
loc_8125034:
	mov R2, #7
	bl sub_8117084
	pop {pc}
.endfunc // sub_8124FE0

.func
.thumb_func
sub_812503C:
	push {lr}
	mov R0, #1
	bl sub_8126818
	ldr R0, [R5,#0x74]
	add R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x6a 
	cmp R0, R1
	blt loc_8125056
	str R1, [R5,#0x74]
	mov r0, #0x24 
	strb R0, [R5,#2]
loc_8125056:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125F5C
	bl sub_8126114
	mov R1, #0
	ldr R0, [R5,#0x68]
	cmp R0, #0x1D
	bne loc_8125070
	ldrh R1, [R5,#0x3A]
loc_8125070:
	ldr R2, [R5,#0x74]
	cmp r2, #0x60 
	blt loc_8125080
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8125080
	ldrh R1, [R5,#0x26]
loc_8125080:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x64]
	cmp R0, #0xF
	bne loc_8125090
	ldrh R1, [R5,#0x30]
loc_8125090:
	mov R2, #7
	bl sub_8117084
	bl sub_81267F0
	pop {pc}
.endfunc // sub_812503C

.func
.thumb_func
sub_812509C:
	push {lr}
	mov R0, #1
	bl sub_8126818
	mov R0, #4
	strb R0, [R5,#0xD]
	ldrh R0, [R5,#0x3C]
	strh R0, [R5,#0x3E]
	mov r1, #0x40 
	ldrh R0, [R5,R1]
	mov r1, #0x42 
	strh R0, [R5,R1]
	mov r0, #0x28 
	bl sub_8125784
	bl sub_8125444
	ldr R0, [R5,#0x64]
	tst R0, R0
	bne loc_81250CA
	bl sub_8126184
	b loc_81250CE
loc_81250CA:
	bl sub_8126114
loc_81250CE:
	bl sub_8126554
	bl sub_812674C
	bl sub_81267A8
	bl sub_81267F0
	pop {pc}
.endfunc // sub_812509C

.func
.thumb_func
sub_81250E0:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125D10
.endfunc // sub_81250E0

	bl sub_81264F4
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8125100
	mov R0, #8
	strb R0, [R5,#1]
locret_8125100:
	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_8125104:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125D94
	bl sub_812650C
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8125124
	mov R0, #8
	strb R0, [R5,#1]
locret_8125124:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8125104

.func
.thumb_func
sub_8125128:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126524
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8125148
	mov R0, #8
	strb R0, [R5,#1]
locret_8125148:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8125128

.func
.thumb_func
sub_812514C:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125F5C
	bl sub_812653C
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812516C
	mov R0, #8
	strb R0, [R5,#1]
locret_812516C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_812514C

.func
.thumb_func
sub_8125170:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8126114
	bl sub_8126554
	bl sub_81267F0
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8125194
	mov R0, #8
	strb R0, [R5,#1]
locret_8125194:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8125170

.func
.thumb_func
sub_8125198:
	push {lr}
	mov R0, #0
	bl sub_8126818
	ldr R0, [R5,#0x74]
	sub R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x6a 
	cmp R0, R1
	bgt loc_81251B2
	str R1, [R5,#0x74]
	mov r0, #0x30 
	strb R0, [R5,#2]
loc_81251B2:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126184
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_81251CC
	ldrh R1, [R5,#0x26]
loc_81251CC:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x68]
	cmp r0, #0x27 
	bne loc_81251DC
	ldrh R1, [R5,#0x1C]
loc_81251DC:
	ldr R2, [R5,#0x74]
	cmp r2, #0x60 
	bgt loc_81251EC
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp R0, #0x1D
	bne loc_81251EC
	ldrh R1, [R5,#0x3A]
loc_81251EC:
	mov R2, #7
	bl sub_8117084
	pop {pc}
.endfunc // sub_8125198

.func
.thumb_func
sub_81251F4:
	push {lr}
	mov R0, #1
	bl sub_8126818
	ldr R0, [R5,#0x74]
	add R0, #2
	str R0, [R5,#0x74]
	mov r1, #0x7c 
	cmp R0, R1
	blt loc_812520E
	str R1, [R5,#0x74]
	mov R0, #0x18
	strb R0, [R5,#2]
loc_812520E:
	mov R0, #0xFF
	str R0, [R5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126184
	mov R1, #0
	ldr R0, [R5,#0x60]
	cmp R0, #5
	bne loc_8125228
	ldrh R1, [R5,#0x26]
loc_8125228:
	mov R2, #4
	bl sub_8117084
	mov R1, #0
	ldr R0, [R5,#0x5C]
	cmp r0, #0x27 
	bne loc_8125238
	ldrh R1, [R5,#0x1C]
loc_8125238:
	ldr R2, [R5,#0x74]
	cmp r2, #0x72 
	bgt loc_8125248
	mov R1, #0
	ldr R0, [R5,#0x68]
	cmp R0, #0x1D
	bne loc_8125248
	ldrh R1, [R5,#0x3A]
loc_8125248:
	mov R2, #7
	bl sub_8117084
	bl sub_81267F0
	pop {pc}
.endfunc // sub_81251F4

.func
.thumb_func
sub_8125254:
	push {lr}
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8125276
	bl chatbox_8040818
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	mov R0, #0x17
	mov R1, #0x11
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #1
	b locret_812527C
loc_8125276:
	bl sub_811F708
	mov R0, #0
locret_812527C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_8125254

.func
.thumb_func
sub_8125280:
	push {R4-R7,lr}
	ldr R4, off_8125360 // =unk_2029000 
	mov R6, #0
	mov R7, #0
	ldr R5, off_812530C // =off_8125310 
loc_812528A:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_812529C:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_812529C
	cmp r7, #0x50 
	blt loc_812528A
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_8125360 // =unk_2029000 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// initRefs
	ldr R0, off_8125364 // =dword_8125368 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {R4-R7,pc}
.endfunc // sub_8125280

.func
.thumb_func
sub_81252C0:
	push {R4-R7,lr}
	add r7, r5, #0
	mov R0, #0
	mov R1, #2
	mov R2, #2
	mov R3, #0
	mov R4, #0x1E
	mov R5, #0x11
	bl sub_80018D0
.endfunc // sub_81252C0

	mov R0, #0
	mov R1, #2
	mov R2, #3
	mov R3, #0
	mov R4, #0x1E
	mov R5, #2
	bl sub_80018D0
	mov R0, #0
	mov R1, #0
	mov R2, #1
	ldr R3, off_8125378 // =unk_201BA20 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr R0, [R7,#0x74]
	sub R0, #0x95
	mov R1, #2
	mov R2, #2
	ldr R3, off_8125384 // =unk_201BF20 
	mov r4, #0x5b 
	mov R5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	.word 0xFFFFFFFF
off_812530C: .word off_8125310
off_8125310: .word byte_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001AA0
	.word 0x20
	.word dword_86C9B94
	.word 0x2
	.word unk_3001AC0
	.word 0x20
	.word comp_86C9AA4 + 1<<31
	.word 0x2
	.word unk_3001A60
	.word decomp_2013A00
	.word byte_872CF94
	.word 0x2
	.word unk_3001AE0
	.word 0x20
off_8125360: .word unk_2029000
off_8125364: .word dword_8125368
dword_8125368: .word comp_86C8054 + 1<<31
	.word 0x6000020
	.word decomp_2013A00
	.word comp_86D6C70 + 1<<31
off_8125378: .word unk_201BA20
	.word decomp_2013A00
	.word comp_86D6D50 + 1<<31
off_8125384: .word unk_201BF20
	.word decomp_2013A00
	.word comp_86C9BD4 + 1<<31
	.word 0x6014800
	.word decomp_2013A00
	.word comp_86C9C80 + 1<<31
	.word 0x60149C0
	.word decomp_2013A00
	.word comp_86C7DCC + 1<<31
	.word 0x6014A20
	.word decomp_2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word decomp_2013A00
	.word unk_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word dword_86B7AE0
	.word 0x6004000
	.word 0x2800
	.word comp_86C96C0 + 1<<31
	.word 0x6006800
	.word decomp_2013A00
	.word comp_86C7764 + 1<<31
	.word unk_2020500
	.word decomp_2013A00
	.word comp_86C73D8 + 1<<31
	.word unk_2020C00
	.word decomp_2013A00
	.word comp_86C7980 + 1<<31
	.word unk_2022C00
	.word decomp_2013A00
	.word comp_86C6B30 + 1<<31
	.word unk_2024C00
	.word decomp_2013A00
	.word comp_86C6FD0 + 1<<31
	.word unk_2026C00
	.word decomp_2013A00
	.word comp_86D6F30 + 1<<31
	.word unk_2028000
	.word decomp_2013A00
	.word dword_86C9BB4
	.word byte_30016B0
	.word 0x20
	.word comp_86D6EE4 + 1<<31
	.word unk_201CC20
	.word decomp_2013A00
	.word 0x0
.func
.thumb_func
sub_8125444:
	push {lr}
	bl sub_81265DC
	bl sub_8126630
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	ldr R0, [R5,#0x70]
	cmp R0, #0
	beq locret_8125468
	mov R0, #0
	str R0, [R5,#0x70]
	bl sub_81252C0
	bl sub_812546C
locret_8125468:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8125444

.func
.thumb_func
sub_812546C:
	push {r5,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x74]
	// j
	sub R0, #0x94
	// i
	mov R1, #2
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_81254E8 // =dword_812489C 
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_812546C

	ldr R0, [R7,#0x74]
	sub R0, #0x82
	mov R1, #2
	mov R2, #3
	ldr R3, off_81254EC // =dword_812489C+36 
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr R0, [R7,#0x74]
	sub r0, #0x70 
	mov R1, #2
	mov R2, #3
	ldr R3, off_81254F0 // =dword_812489C+72 
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr R0, [R7,#0x64]
	tst R0, R0
	bne loc_81254C0
	ldr R0, [R7,#0x74]
	sub r0, #0x5e 
	mov R1, #2
	mov R2, #3
	ldr R3, off_81254F8 // =dword_812489C+144 
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_81254E4
loc_81254C0:
	ldr R0, [R7,#0x74]
	sub r0, #0x5e 
	mov R1, #2
	mov R2, #3
	ldr R3, off_81254F4 // =dword_812489C+108 
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr R0, [R7,#0x74]
	sub r0, #0x4c 
	mov R1, #2
	mov R2, #3
	ldr R3, off_81254F8 // =dword_812489C+144 
	mov R4, #9
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81254E4:
	pop {r5,pc}
	.balign 4, 0x00
off_81254E8: .word dword_812489C
off_81254EC: .word dword_812489C+0x24
off_81254F0: .word dword_812489C+0x48
off_81254F4: .word dword_812489C+0x6C
off_81254F8: .word dword_812489C+0x90
.func
.thumb_func
sub_81254FC:
	push {R4-R7,lr}
	ldr R0, off_8125564 // =unk_201CC20 
	mov R1, #0
	ldr R2, off_812556C // =unk_2018A00 
	ldr R3, dword_8125580 // =0x6009000 
	mov R4, #9
	mov R5, #1
	ldr R6, off_8125568 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_81254FC

	ldr R0, off_8125564 // =unk_201CC20 
	mov R1, #1
	ldr R2, off_8125570 // =unk_2018E00 
	ldr R3, dword_8125584 // =0x6009400 
	mov R4, #9
	mov R5, #1
	ldr R6, off_8125568 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	ldr R0, off_8125564 // =unk_201CC20 
	mov R1, #2
	ldr R2, off_8125574 // =unk_2019200 
	ldr R3, dword_8125588 // =0x6009800 
	mov R4, #9
	mov R5, #1
	ldr R6, off_8125568 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	ldr R0, off_8125564 // =unk_201CC20 
	mov R1, #5
	ldr R2, off_8125578 // =unk_2019600 
	ldr R3, dword_812558C // =0x6009C00 
	mov R4, #9
	mov R5, #1
	ldr R6, off_8125568 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	ldr R0, off_8125564 // =unk_201CC20 
	mov R1, #3
	ldr R2, off_812557C // =byte_2019A00 
	ldr R3, dword_8125590 // =0x600A000 
	mov R4, #9
	mov R5, #1
	ldr R6, off_8125568 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R4-R7,pc}
off_8125564: .word unk_201CC20
off_8125568: .word dword_86B7AE0
off_812556C: .word unk_2018A00
off_8125570: .word unk_2018E00
off_8125574: .word unk_2019200
off_8125578: .word unk_2019600
off_812557C: .word byte_2019A00
dword_8125580: .word 0x6009000
dword_8125584: .word 0x6009400
dword_8125588: .word 0x6009800
dword_812558C: .word 0x6009C00
dword_8125590: .word 0x600A000
.func
.thumb_func
sub_8125594:
	push {R4-R7,lr}
	mov R8, R0
	mov R7, R10
	ldr R7, [R7,#4]
	ldrh R0, [R7,#2]
	mov R1, #0xA
	tst R1, R0
	beq loc_81255AC
	mov r0, #0x34 
	bl sub_812580C
	b locret_81255F2
loc_81255AC:
	ldrh R0, [R7,#4]
	mov R1, #0x10
	tst R1, R0
	beq loc_81255BE
	mov R0, #4
	strb R0, [R5,#2]
	bl sub_81258E8
	b locret_81255F2
loc_81255BE:
	ldrh R0, [R5,#0x12]
	tst R0, R0
	beq locret_81255F2
	ldrh R0, [R7,#4]
	ldrh R1, [R7]
	ldr R2, off_81255F4 // =0x300 
	tst R0, R2
	beq loc_81255DE
	mov R2, #0xC0
	bic R0, R2
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
	b locret_81255F2
loc_81255DE:
	tst R1, R2
	bne locret_81255F2
	mov R2, #0xC0
	tst R0, R2
	beq locret_81255F2
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
locret_81255F2:
	pop {R4-R7,pc}
off_81255F4: .word 0x300
.endfunc // sub_8125594

.func
.thumb_func
sub_81255F8:
	push {R4-R7,lr}
	mov R8, R0
	mov R7, R10
	ldr R7, [R7,#4]
	ldrh R0, [R7,#2]
	mov R1, #0xA
	tst R1, R0
	beq loc_8125610
	mov r0, #0x38 
	bl sub_812580C
	b locret_8125670
loc_8125610:
	ldrh R0, [R7,#4]
	mov R1, #0x10
	tst R1, R0
	beq loc_8125622
	mov R0, #0x10
	strb R0, [R5,#2]
	bl sub_81258E8
	b locret_8125670
loc_8125622:
	mov r1, #0x20 
	tst R1, R0
	beq loc_8125632
	mov R0, #8
	strb R0, [R5,#2]
	bl sub_81258E8
	b locret_8125670
loc_8125632:
	ldr R0, [R5,#0x5C]
	tst R0, R0
	beq locret_8125670
	ldrh R1, [R5,#0x1C]
	push {r1}
	strh R0, [R5,#0x1C]
	ldrh R0, [R7,#4]
	ldrh R1, [R7]
	ldr R2, off_8125674 // =0x300 
	tst R0, R2
	beq loc_8125658
	mov R2, #0xC0
	bic R0, R2
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
	b loc_812566C
loc_8125658:
	tst R1, R2
	bne loc_812566C
	mov R2, #0xC0
	tst R0, R2
	beq loc_812566C
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
loc_812566C:
	pop {r1}
	strh R1, [R5,#0x1C]
locret_8125670:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8125674: .word 0x300
.endfunc // sub_81255F8

.func
.thumb_func
sub_8125678:
	push {R4-R7,lr}
	mov R8, R0
	mov R7, R10
	ldr R7, [R7,#4]
	ldrh R0, [R7,#2]
	mov R1, #0xA
	tst R1, R0
	beq loc_8125690
	mov r0, #0x3c 
	bl sub_812580C
	b locret_81256FC
loc_8125690:
	ldrh R0, [R7,#4]
	mov R1, #0x10
	tst R1, R0
	beq loc_81256AE
	ldr R0, [R5,#0x64]
	tst R0, R0
	bne loc_81256A4
	mov r0, #0x48 
	strb R0, [R5,#2]
	b loc_81256A8
loc_81256A4:
	mov R0, #0x1C
	strb R0, [R5,#2]
loc_81256A8:
	bl sub_81258E8
	b locret_81256FC
loc_81256AE:
	mov r1, #0x20 
	tst R1, R0
	beq loc_81256BE
	mov R0, #0x14
	strb R0, [R5,#2]
	bl sub_81258E8
	b locret_81256FC
loc_81256BE:
	ldr R0, [R5,#0x60]
	tst R0, R0
	beq locret_81256FC
	ldrh R1, [R5,#0x26]
	push {r1}
	strh R0, [R5,#0x26]
	ldrh R0, [R7,#4]
	ldrh R1, [R7]
	ldr R2, off_8125700 // =0x300 
	tst R0, R2
	beq loc_81256E4
	mov R2, #0xC0
	bic R0, R2
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
	b loc_81256F8
loc_81256E4:
	tst R1, R2
	bne loc_81256F8
	mov R2, #0xC0
	tst R0, R2
	beq loc_81256F8
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
loc_81256F8:
	pop {r1}
	strh R1, [R5,#0x26]
locret_81256FC:
	pop {R4-R7,pc}
	.byte 0, 0
off_8125700: .word 0x300
.endfunc // sub_8125678

.func
.thumb_func
sub_8125704:
	push {R4-R7,lr}
	mov R8, R0
	mov R7, R10
	ldr R7, [R7,#4]
	ldrh R0, [R7,#2]
	mov R1, #0xA
	tst R1, R0
	beq loc_812571C
	mov r0, #0x40 
	bl sub_812580C
	b locret_812577C
loc_812571C:
	ldrh R0, [R7,#4]
	mov R1, #0x10
	tst R1, R0
	beq loc_812572E
	mov r0, #0x28 
	strb R0, [R5,#2]
	bl sub_81258E8
	b locret_812577C
loc_812572E:
	mov r1, #0x20 
	tst R1, R0
	beq loc_812573E
	mov r0, #0x20 
	strb R0, [R5,#2]
	bl sub_81258E8
	b locret_812577C
loc_812573E:
	ldr R0, [R5,#0x64]
	tst R0, R0
	beq locret_812577C
	ldrh R1, [R5,#0x30]
	push {r1}
	strh R0, [R5,#0x30]
	ldrh R0, [R7,#4]
	ldrh R1, [R7]
	ldr R2, off_8125780 // =0x300 
	tst R0, R2
	beq loc_8125764
	mov R2, #0xC0
	bic R0, R2
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
	b loc_8125778
loc_8125764:
	tst R1, R2
	bne loc_8125778
	mov R2, #0xC0
	tst R0, R2
	beq loc_8125778
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
loc_8125778:
	pop {r1}
	strh R1, [R5,#0x30]
locret_812577C:
	pop {R4-R7,pc}
	.byte 0, 0
off_8125780: .word 0x300
.endfunc // sub_8125704

.func
.thumb_func
sub_8125784:
	push {R4-R7,lr}
	mov R8, R0
	mov R7, R10
	ldr R7, [R7,#4]
	ldrh R0, [R7,#2]
	mov R1, #0xA
	tst R1, R0
	beq loc_812579C
	mov r0, #0x44 
	bl sub_812580C
	b locret_8125804
loc_812579C:
	mov R1, #1
	tst R1, R0
	beq loc_81257A8
	bl sub_81266E0
	b locret_8125804
loc_81257A8:
	ldrh R0, [R7,#4]
	mov r1, #0x20 
	tst R1, R0
	beq loc_81257C6
	ldr R0, [R5,#0x64]
	tst R0, R0
	bne loc_81257BC
	mov r0, #0x4c 
	strb R0, [R5,#2]
	b loc_81257C0
loc_81257BC:
	mov r0, #0x2c 
	strb R0, [R5,#2]
loc_81257C0:
	bl sub_81258E8
	b locret_8125804
loc_81257C6:
	ldr R0, [R5,#0x68]
	tst R0, R0
	beq locret_8125804
	ldrh R1, [R5,#0x3A]
	push {r1}
	strh R0, [R5,#0x3A]
	ldrh R0, [R7,#4]
	ldrh R1, [R7]
	ldr R2, off_8125808 // =0x300 
	tst R0, R2
	beq loc_81257EC
	mov R2, #0xC0
	bic R0, R2
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
	b loc_8125800
loc_81257EC:
	tst R1, R2
	bne loc_8125800
	mov R2, #0xC0
	tst R0, R2
	beq loc_8125800
	mov R1, #7
	mov R2, #0
	bl sub_8125820
	str R7, [R5,#0x70]
loc_8125800:
	pop {r1}
	strh R1, [R5,#0x3A]
locret_8125804:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8125808: .word 0x300
.endfunc // sub_8125784

.func
.thumb_func
sub_812580C:
	push {lr}
	strb R0, [R5,#2]
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {pc}
.endfunc // sub_812580C

.func
.thumb_func
sub_8125820:
	push {r5,lr}
	mov R12, R2
	sub R1, #1
	mov R9, R1
	mov R6, #0x12
	add R6, R8
	ldrh R6, [R5,R6]
	sub R6, #1
	mov R2, #0x14
	add R2, R8
	ldrh R2, [R5,R2]
	mov R3, #0x18
	add R3, R8
	ldrh R3, [R5,R3]
	mov R4, R9
	add R4, #1
	ldr R1, off_81258E0 // =0x200 
	tst R1, R0
	bne loc_8125866
	mov R4, #1
	mov r1, #0x40 
	tst R1, R0
	beq loc_812586E
	sub r2, r2, r4
	bge loc_812586E
	mov R2, #0
	mov R7, R12
	cmp R7, #0
	beq loc_8125866
	cmp R3, #0
	bne loc_8125866
	mov R2, R9
	mov R3, R9
	sub r3, r6, r3
	add R3, #1
loc_8125866:
	sub r3, r3, r4
	bgt loc_81258B2
	mov R3, #0
	b loc_81258B2
loc_812586E:
	mov R4, R9
	add R4, #1
	ldr R1, off_81258E4 // =0x100 
	tst R1, R0
	bne loc_812588E
	mov R4, #1
	mov R1, #0x80
	tst R1, R0
	beq loc_81258B2
	cmp R6, R9
	blt loc_8125886
	mov R6, R9
loc_8125886:
	add r2, r2, r4
	cmp R2, R6
	ble loc_81258B2
	add r2, r6, #0
loc_812588E:
	cmp R6, R9
	blt loc_81258B2
	mov R6, #0x12
	add R6, R8
	ldrh R6, [R5,R6]
	mov R0, R9
	sub r6, r6, r0
	sub R6, #1
	add r3, r3, r4
	cmp R3, R6
	ble loc_81258B2
	add r3, r6, #0
	mov R7, R12
	cmp R7, #0
	beq loc_81258B2
	mov R2, #0
	mov R3, #0
	b loc_81258B2
loc_81258B2:
	mov R4, #0x14
	add R4, R8
	ldrh R4, [R5,R4]
	cmp R2, R4
	bne loc_81258CA
	mov R4, #0x18
	add R4, R8
	ldrh R4, [R5,R4]
	cmp R3, R4
	bne loc_81258CA
	mov R7, #0
	b loc_81258D2
loc_81258CA:
	mov R0, #0x7F
	bl sound_play // () -> void
	mov R7, #0xFF
loc_81258D2:
	mov R0, #0x14
	add R0, R8
	strh R2, [R5,R0]
	mov R0, #0x18
	add R0, R8
	strh R3, [R5,R0]
	pop {r5,pc}
off_81258E0: .word 0x200
off_81258E4: .word 0x100
.endfunc // sub_8125820

.func
.thumb_func
sub_81258E8:
	push {lr}
	ldr R0, dword_81258F4 // =0x7A 
	bl sound_play // () -> void
	pop {pc}
	.balign 4, 0x00
dword_81258F4: .word 0x7A
.endfunc // sub_81258E8

.func
.thumb_func
sub_81258F8:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_8125984 // =unk_201DC20 
	// size
	ldr R1, off_8125988 // =0x320 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R4, #1
	mov R5, #0
	ldr R7, off_8125984 // =unk_201DC20 
loc_8125908:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#0x15]
	sub R6, #1
	ldrb R1, [R0,#9]
	mov r2, #0x40 
	tst R1, R2
	beq loc_8125978
	ldrb R1, [R0,#0x16]
	mov R2, #1
	tst R1, R2
	bne loc_8125978
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb R0, [R0,#7]
	mov R1, #0
	cmp R0, R1
	bne loc_8125978
	add R5, #1
	ldr R3, dword_8125CF8 // =0x1E20 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125944
	strh R4, [R6]
	mov R0, #0
	strb R0, [R6,#2]
	b loc_8125978
loc_8125944:
	ldr R3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125958
	strh R4, [R6]
	mov R0, #1
	strb R0, [R6,#2]
	b loc_8125978
loc_8125958:
	ldr R3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125978
	strh R4, [R6]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125974
	mov R0, #1
	b loc_8125976
loc_8125974:
	mov R0, #2
loc_8125976:
	strb R0, [R6,#2]
loc_8125978:
	add R4, #1
	ldr R0, dword_8125990 // =0x13F 
	cmp R4, R0
	ble loc_8125908
	add r0, r5, #0
	pop {R4-R7,pc}
off_8125984: .word unk_201DC20
off_8125988: .word 0x320
	.word unk_201E198
dword_8125990: .word 0x13F
.endfunc // sub_81258F8

.func
.thumb_func
sub_8125994:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_8125A60 // =dword_201E420 
	// size
	ldr R1, off_8125A64 // =0x578 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R4, #1
	mov R5, #0
	mov R6, #0
	ldr R7, off_8125A60 // =dword_201E420 
loc_81259A6:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#0x15]
	sub R6, #1
	lsl r6, r6, #2
	ldrb R1, [R0,#9]
	mov r2, #0x40 
	tst R1, R2
	beq loc_8125A26
	ldrb R1, [R0,#0x16]
	mov R2, #1
	tst R1, R2
	bne loc_8125A26
	add r2, r6, r7
	ldrb R0, [R0,#7]
	mov R1, #1
	cmp R0, R1
	bne loc_8125A26
	ldr R3, dword_8125CF8 // =0x1E20 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_81259E4
	add R5, #1
	strh R4, [R2]
	mov R0, #0
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125A26
loc_81259E4:
	ldr R3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_81259FC
	add R5, #1
	strh R4, [R2]
	mov R0, #1
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125A26
loc_81259FC:
	ldr R3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125A26
	add R5, #1
	strh R4, [R2]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125A1A
	mov R0, #1
	b loc_8125A1C
loc_8125A1A:
	mov R0, #2
loc_8125A1C:
	strb R0, [R2,#2]
	ldrh R0, [R2]
	tst R0, R0
	bne loc_8125A26
	add R6, #4
loc_8125A26:
	add R4, #1
	ldr R0, dword_8125CFC // =0x13F 
	cmp R4, R0
	ble loc_81259A6
	ldr R6, off_8125A60 // =dword_201E420 
	ldr R7, off_8125A68 // =unk_201E998 
	mov R4, #0
loc_8125A34:
	ldr R0, [R6]
	tst R0, R0
	bne loc_8125A52
	add r0, r6, #0
	add r1, r6, #4
loc_8125A3E:
	ldr R2, [R1]
	tst R2, R2
	beq loc_8125A4C
	str R2, [R0]
	mov R2, #0
	str R2, [R1]
	add R0, #4
loc_8125A4C:
	add R1, #4
	cmp R1, R7
	blt loc_8125A3E
loc_8125A52:
	add R6, #4
	add R4, #1
	ldr R0, dword_8125CFC // =0x13F 
	cmp R4, R0
	blt loc_8125A34
	add r0, r5, #0
	pop {R4-R7,pc}
off_8125A60: .word dword_201E420
off_8125A64: .word 0x578
off_8125A68: .word unk_201E998
.endfunc // sub_8125994

.func
.thumb_func
sub_8125A6C:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_8125B30 // =dword_201EC20 
	// size
	ldr R1, off_8125B34 // =0x578 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R4, #1
	mov R5, #0
	mov R6, #0
	ldr R7, off_8125B30 // =dword_201EC20 
loc_8125A7E:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#0x15]
	sub R6, #1
	lsl r6, r6, #2
	ldrb R1, [R0,#9]
	mov r2, #0x40 
	tst R1, R2
	beq loc_8125AF6
	add r2, r6, r7
	ldrb R0, [R0,#7]
	mov R1, #2
	cmp R0, R1
	bne loc_8125AF6
	ldr R3, dword_8125CF8 // =0x1E20 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125AB4
	add R5, #1
	strh R4, [R2]
	mov R0, #0
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125AF6
loc_8125AB4:
	ldr R3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125ACC
	add R5, #1
	strh R4, [R2]
	mov R0, #1
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125AF6
loc_8125ACC:
	ldr R3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125AF6
	add R5, #1
	strh R4, [R2]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125AEA
	mov R0, #1
	b loc_8125AEC
loc_8125AEA:
	mov R0, #2
loc_8125AEC:
	strb R0, [R2,#2]
	ldrh R0, [R2]
	tst R0, R0
	bne loc_8125AF6
	add R6, #4
loc_8125AF6:
	add R4, #1
	ldr R0, dword_8125CFC // =0x13F 
	cmp R4, R0
	ble loc_8125A7E
	ldr R6, off_8125B30 // =dword_201EC20 
	ldr R7, off_8125B38 // =unk_201F198 
	mov R4, #0
loc_8125B04:
	ldr R0, [R6]
	tst R0, R0
	bne loc_8125B22
	add r0, r6, #0
	add r1, r6, #4
loc_8125B0E:
	ldr R2, [R1]
	tst R2, R2
	beq loc_8125B1C
	str R2, [R0]
	mov R2, #0
	str R2, [R1]
	add R0, #4
loc_8125B1C:
	add R1, #4
	cmp R1, R7
	blt loc_8125B0E
loc_8125B22:
	add R6, #4
	add R4, #1
	ldr R0, dword_8125CFC // =0x13F 
	cmp R4, R0
	blt loc_8125B04
	add r0, r5, #0
	pop {R4-R7,pc}
off_8125B30: .word dword_201EC20
off_8125B34: .word 0x578
off_8125B38: .word unk_201F198
.endfunc // sub_8125A6C

.func
.thumb_func
sub_8125B3C:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_8125BFC // =dword_201F420 
	// size
	ldr R1, off_8125C00 // =0x578 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R4, #1
	mov R5, #0
	mov R6, #0
	ldr R7, off_8125BFC // =dword_201F420 
loc_8125B4E:
	// idx
	add r0, r4, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#0x15]
	sub R6, #1
	lsl r6, r6, #2
	ldrb R1, [R0,#9]
	mov r2, #0x40 
	tst R1, R2
	beq loc_8125BC0
	ldrb R1, [R0,#0x16]
	mov R2, #1
	tst R1, R2
	beq loc_8125BC0
	add r2, r6, r7
	ldr R3, dword_8125CF8 // =0x1E20 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125B84
	add R5, #1
	strh R4, [R2]
	mov R0, #0
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125BC0
loc_8125B84:
	ldr R3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125B9C
	add R5, #1
	strh R4, [R2]
	mov R0, #1
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125BC0
loc_8125B9C:
	ldr R3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125BC0
	add R5, #1
	strh R4, [R2]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125BBA
	mov R0, #1
	b loc_8125BBC
loc_8125BBA:
	mov R0, #2
loc_8125BBC:
	strb R0, [R2,#2]
	add R6, #4
loc_8125BC0:
	add R4, #1
	ldr R0, dword_8125CFC // =0x13F 
	cmp R4, R0
	ble loc_8125B4E
	ldr R6, off_8125BFC // =dword_201F420 
	ldr R7, off_8125C04 // =unk_201F998 
	mov R4, #0
loc_8125BCE:
	ldr R0, [R6]
	tst R0, R0
	bne loc_8125BEC
	add r0, r6, #0
	add r1, r6, #4
loc_8125BD8:
	ldr R2, [R1]
	tst R2, R2
	beq loc_8125BE6
	str R2, [R0]
	mov R2, #0
	str R2, [R1]
	add R0, #4
loc_8125BE6:
	add R1, #4
	cmp R1, R7
	blt loc_8125BD8
loc_8125BEC:
	add R6, #4
	add R4, #1
	ldr R0, dword_8125CFC // =0x13F 
	cmp R4, R0
	blt loc_8125BCE
	add r0, r5, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8125BFC: .word dword_201F420
off_8125C00: .word 0x578
off_8125C04: .word unk_201F998
.endfunc // sub_8125B3C

.func
.thumb_func
sub_8125C08:
	push {R4-R7,lr}
	// memBlock
	ldr R0, off_8125CE4 // =dword_201FC20 
	// size
	ldr R1, off_8125CE8 // =0x578 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R4, #0
	mov R5, #0
	mov R6, #0
	ldr R7, off_8125CE4 // =dword_201FC20 
loc_8125C1A:
	ldr R3, off_8125CF4 // =0x140 
	// idx
	add r0, r3, r4
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R6, [R0,#0x15]
	sub R6, #1
	lsl r6, r6, #2
	add r2, r6, r7
	ldrb R0, [R0,#7]
	mov R1, #4
	cmp R0, R1
	bne loc_8125CAA
	ldr R3, dword_8125D0C // =0x1F60 
	add r3, r3, r4
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125C4E
	add R5, #1
	ldr R3, off_8125CF4 // =0x140 
	add r3, r3, r4
	strh R3, [R2]
	mov R0, #0
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125CAA
loc_8125C4E:
	ldr R3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	ldr R0, dword_8125CF8 // =0x1E20 
	ldr R1, dword_8125D0C // =0x1F60 
	sub r1, r1, r0
	add r3, r3, r1
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125C72
	add R5, #1
	ldr R3, off_8125CF4 // =0x140 
	add r3, r3, r4
	strh R3, [R2]
	mov R0, #1
	strb R0, [R2,#2]
	add R6, #4
	b loc_8125CAA
loc_8125C72:
	ldr R3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	ldr R0, dword_8125CF8 // =0x1E20 
	ldr R1, dword_8125D0C // =0x1F60 
	sub r1, r1, r0
	add r3, r3, r1
	add r0, r3, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8125CAA
	add R5, #1
	ldr R3, off_8125CF4 // =0x140 
	add r3, r3, r4
	strh R3, [R2]
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125C9E
	mov R0, #1
	strb R0, [R2,#2]
	b loc_8125CA0
loc_8125C9E:
	mov R0, #2
loc_8125CA0:
	strb R0, [R2,#2]
	ldrh R0, [R2]
	tst R0, R0
	bne loc_8125CAA
	add R6, #4
loc_8125CAA:
	add R4, #1
	ldr R0, dword_8125D08 // =0x1E 
	cmp R4, R0
	ble loc_8125C1A
	ldr R6, off_8125CE4 // =dword_201FC20 
	ldr R7, off_8125CEC // =unk_2020198 
	mov R4, #0
loc_8125CB8:
	ldr R0, [R6]
	tst R0, R0
	bne loc_8125CD6
	add r0, r6, #0
	add r1, r6, #4
loc_8125CC2:
	ldr R2, [R1]
	tst R2, R2
	beq loc_8125CD0
	str R2, [R0]
	mov R2, #0
	str R2, [R1]
	add R0, #4
loc_8125CD0:
	add R1, #4
	cmp R1, R7
	blt loc_8125CC2
loc_8125CD6:
	add R6, #4
	add R4, #1
	ldr R0, dword_8125CF0 // =0x13F 
	cmp R4, R0
	blt loc_8125CB8
	add r0, r5, #0
	pop {R4-R7,pc}
off_8125CE4: .word dword_201FC20
off_8125CE8: .word 0x578
off_8125CEC: .word unk_2020198
dword_8125CF0: .word 0x13F
off_8125CF4: .word 0x140
dword_8125CF8: .word 0x1E20
dword_8125CFC: .word 0x13F
dword_8125D00: .word 0x2020
dword_8125D04: .word 0x2220
dword_8125D08: .word 0x1E
dword_8125D0C: .word 0x1F60
.endfunc // sub_8125C08

.func
.thumb_func
sub_8125D10:
	push {R4-R7,lr}
	add r7, r5, #0
	ldrh R0, [R7,#0x18]
	ldr R1, off_8125D84 // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub R0, #0xA0
	add R0, #0xC
	mov R1, #4
	ldr R2, off_8125D84 // =byte_2017A00 
	mov R3, #7
	bl sub_812625C
.endfunc // sub_8125D10

	ldrh R0, [R7,#0x18]
	ldr R1, off_8125D88 // =unk_201DC20 
	ldr R2, off_8125D84 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x70 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub R0, #0xA0
	add R0, #0x11
	mov R1, #4
	ldr R2, off_8125D84 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x18]
	ldr R1, off_8125D88 // =unk_201DC20 
	ldr R2, off_8125D84 // =byte_2017A00 
	ldr R3, off_8125D90 // =dword_812499C+8 
	ldr R4, dword_8125D8C // =0x6006C00 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub R0, #0xA0
	add R0, #0xF
	mov R1, #4
	ldr R2, off_8125D84 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x18]
	ldr R1, off_8125D88 // =unk_201DC20 
	ldr R2, off_8125D84 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub R0, #0xA0
	add R0, #0x19
	mov R1, #4
	ldr R2, off_8125D84 // =byte_2017A00 
	bl sub_81264E4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8125D84: .word byte_2017A00
off_8125D88: .word unk_201DC20
dword_8125D8C: .word 0x6006C00
off_8125D90: .word dword_812499C+8
.func
.thumb_func
sub_8125D94:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x5C]
	tst R0, R0
	beq locret_8125E64
	cmp r0, #0x27 
	bne loc_8125E10
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E68 // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #1
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	mov R3, #7
	bl sub_812625C
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E6C // =dword_201E420 
	ldr R2, off_8125E68 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x70 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #6
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E6C // =dword_201E420 
	ldr R2, off_8125E68 // =byte_2017A00 
	ldr R3, off_8125E74 // =dword_812499C+64 
	ldr R4, dword_8125E70 // =0x6007000 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #4
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E6C // =dword_201E420 
	ldr R2, off_8125E68 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #0xE
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	bl sub_81264E4
	b locret_8125E64
loc_8125E10:
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E6C // =dword_201E420 
	ldr R2, off_8125E68 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #3
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E6C // =dword_201E420 
	ldr R2, off_8125E68 // =byte_2017A00 
	ldr R3, off_8125E74 // =dword_812499C+64 
	ldr R4, dword_8125E70 // =0x6007000 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #1
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x22]
	ldr R1, off_8125E6C // =dword_201E420 
	ldr R2, off_8125E68 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub R0, #0x83
	add R0, #0xB
	mov R1, #4
	ldr R2, off_8125E68 // =byte_2017A00 
	bl sub_81264E4
locret_8125E64:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8125E68: .word byte_2017A00
off_8125E6C: .word dword_201E420
dword_8125E70: .word 0x6007000
off_8125E74: .word dword_812499C+0x40
.endfunc // sub_8125D94

.func
.thumb_func
sub_8125E78:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x60]
	tst R0, R0
	beq locret_8125F48
	cmp R0, #5
	bne loc_8125EF4
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F4C // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #1
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	mov R3, #5
	bl sub_812625C
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F50 // =dword_201EC20 
	ldr R2, off_8125F4C // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x70 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #6
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	mov R3, #0xA
	bl sub_8126404
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F50 // =dword_201EC20 
	ldr R2, off_8125F4C // =byte_2017A00 
	ldr R3, off_8125F58 // =dword_812499C+120 
	ldr R4, dword_8125F54 // =0x6007400 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #4
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F50 // =dword_201EC20 
	ldr R2, off_8125F4C // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #0xE
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	bl sub_81264E4
	b locret_8125F48
loc_8125EF4:
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F50 // =dword_201EC20 
	ldr R2, off_8125F4C // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #3
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	mov R3, #0xA
	bl sub_8126404
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F50 // =dword_201EC20 
	ldr R2, off_8125F4C // =byte_2017A00 
	ldr R3, off_8125F58 // =dword_812499C+120 
	ldr R4, dword_8125F54 // =0x6007400 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #1
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x2C]
	ldr R1, off_8125F50 // =dword_201EC20 
	ldr R2, off_8125F4C // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub r0, #0x71 
	add R0, #0xB
	mov R1, #4
	ldr R2, off_8125F4C // =byte_2017A00 
	bl sub_81264E4
locret_8125F48:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8125F4C: .word byte_2017A00
off_8125F50: .word dword_201EC20
dword_8125F54: .word 0x6007400
off_8125F58: .word dword_812499C+0x78
.endfunc // sub_8125E78

.func
.thumb_func
sub_8125F5C:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x64]
	tst R0, R0
	beq locret_812602C
	cmp R0, #0xF
	bne loc_8125FD8
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126104 // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #1
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #7
	bl sub_812625C
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #6
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	ldr R3, off_8126110 // =dword_812499C+176 
	ldr R4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #4
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #0xE
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
	b locret_812602C
loc_8125FD8:
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #3
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	ldr R3, off_8126110 // =dword_812499C+176 
	ldr R4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #1
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #0xB
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
locret_812602C:
	pop {R4-R7,pc}
	.byte 0, 0
.endfunc // sub_8125F5C

	push {R4-R7,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x64]
	tst R0, R0
	beq locret_8126100
	cmp R0, #0xF
	bne loc_81260AC
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126104 // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #1
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #7
	bl sub_812625C
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #6
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	ldr R3, off_8126110 // =dword_812499C+176 
	ldr R4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #4
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #0xE
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
	b locret_8126100
loc_81260AC:
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #3
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	ldr R3, off_8126110 // =dword_812499C+176 
	ldr R4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #1
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh R0, [R7,#0x36]
	ldr R1, off_8126108 // =dword_201F420 
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #0xB
	mov R1, #4
	ldr R2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
locret_8126100:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8126104: .word byte_2017A00
off_8126108: .word dword_201F420
dword_812610C: .word 0x6007800
off_8126110: .word dword_812499C+0xB0
.func
.thumb_func
sub_8126114:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x68]
	tst R0, R0
	beq locret_8126182
	cmp R0, #0x1D
	bne loc_8126160
	mov r0, #0x40 
	ldrh R0, [R7,R0]
	ldr R1, off_81261F4 // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #1
	mov R1, #4
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #7
	bl sub_812625C
	mov r0, #0x40 
	ldrh R0, [R7,R0]
	ldr R1, off_81261F8 // =dword_201FC20 
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x4d 
	add R0, #6
	mov R1, #4
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	b locret_8126182
loc_8126160:
	mov r0, #0x40 
	ldrh R0, [R7,R0]
	ldr R1, off_81261F8 // =dword_201FC20 
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x4c 
	add R0, #1
	mov R1, #4
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
locret_8126182:
	pop {R4-R7,pc}
.endfunc // sub_8126114

.func
.thumb_func
sub_8126184:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R0, [R7,#0x68]
	tst R0, R0
	beq locret_81261F2
	cmp R0, #0x1D
	bne loc_81261D0
	mov r0, #0x40 
	ldrh R0, [R7,R0]
	ldr R1, off_81261F4 // =byte_2017A00 
	bl sub_81261FC
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #1
	mov R1, #4
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #7
	bl sub_812625C
	mov r0, #0x40 
	ldrh R0, [R7,R0]
	ldr R1, off_81261F8 // =dword_201FC20 
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x5f 
	add R0, #6
	mov R1, #4
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
	b locret_81261F2
loc_81261D0:
	mov r0, #0x40 
	ldrh R0, [R7,R0]
	ldr R1, off_81261F8 // =dword_201FC20 
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xA
	mov R4, #0xB
	mov r5, #0x71 
	bl sub_812626C
	ldr R0, [R7,#0x74]
	sub r0, #0x5e 
	add R0, #1
	mov R1, #4
	ldr R2, off_81261F4 // =byte_2017A00 
	mov R3, #0xE
	bl sub_8126404
locret_81261F2:
	pop {R4-R7,pc}
off_81261F4: .word byte_2017A00
off_81261F8: .word dword_201FC20
.endfunc // sub_8126184

.func
.thumb_func
sub_81261FC:
	push {R4-R7,lr}
	sub sp, sp, #4
	push {r0,r1}
	// src
	ldr R0, off_8126254 // =dword_812489C+180 
	// halfwordCount
	mov r2, #0x54 
	bl CpuSet_copyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r5,r7}
	ldr R4, dword_8126258 // =0xA202 
	mov R6, #0
loc_8126210:
	mov R0, #0
	str R0, [SP]
	add r0, r5, #0
	add R0, #1
	bl sub_8000C00
	mov R2, #8
loc_812621E:
	add r3, r0, #0
	lsr R3, R2
	mov R1, #0xF
	and R1, R3
	ldr R3, [SP]
	tst R3, R3
	bne loc_8126234
	tst R1, R1
	beq loc_812623E
	mov R3, #1
	str R3, [SP]
loc_8126234:
	lsl r1, r1, #1
	add r1, r1, r4
	strh R1, [R7]
	add R1, #1
	strh R1, [R7,#6]
loc_812623E:
	add R7, #2
	sub R2, #4
	bge loc_812621E
	add R7, #6
	add R5, #1
	add R6, #1
	cmp R6, #7
	blt loc_8126210
	add sp, sp, #4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8126254: .word dword_812489C+0xB4
dword_8126258: .word 0xA202
.endfunc // sub_81261FC

.func
.thumb_func
sub_812625C:
	push {R4-R7,lr}
	lsl r5, r3, #1
	// tileRefs
	add r3, r2, #0
	// cpyOff
	mov R2, #2
	mov R4, #3
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_812625C

	pop {R4-R7,pc}
.func
.thumb_func
sub_812626C:
	push {R4-R7,lr}
	mov R6, R8
	mov R7, R9
	push {r6,r7}
	mov R8, R5
	lsr r5, r5, #4
	mov R9, R5
	mov R5, R8
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1c
	mov R8, R5
	ldr R6, off_81263CC // =0x200 
	lsl r3, r3, #0xc
	lsl r4, r4, #0xc
	orr R3, R6
	orr R4, R6
	sub sp, sp, #8
	str R3, [SP]
	str R4, [SP,#4]
	lsl r0, r0, #2
	add r5, r0, r1
	mov R3, #0x10
	add r3, r3, r2
	mov R4, #0
loc_812629C:
	ldr R6, [SP]
	ldr R0, off_81263B4 // =dword_81263B8 
	ldrh R1, [R5]
	tst R1, R1
	bne loc_81262B2
	mov R7, R8
	tst R7, R7
	bne loc_8126304
loc_81262AC:
	ldr R0, off_81263C0 // =off_81263C4 
	mov R1, #4
	b loc_81262EE
loc_81262B2:
	push {R0-R3}
	add r0, r1, #0
	bl sub_80070E6
	pop {R0-R3}
	beq loc_81262E6
	push {R0-R3}
	mov R2, R10
	ldr R2, [R2,#0x34]
	mov R0, #1
	ldr R1, [R2,#0x7C]
	orr R1, R0
	str R1, [R2,#0x7C]
	mov R0, #0
	str R0, [R2,#0x58]
	str R0, [R2,#0x5C]
	str R0, [R2,#0x60]
	str R0, [R2,#0x64]
	str R0, [R2,#0x68]
	strh R0, [R2,#0x12]
	strh R0, [R2,#0x1C]
	strh R0, [R2,#0x26]
	strh R0, [R2,#0x30]
	strh R0, [R2,#0x3A]
	pop {R0-R3}
	b loc_81262AC
loc_81262E6:
	ldrb R7, [R5,#2]
	cmp R7, #1
	ble loc_81262EE
	ldr R6, [SP,#4]
loc_81262EE:
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr R0, [R0,R7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #1
	ldrh R1, [R0,R1]
	add r0, r0, r1
	bl sub_81263D0
	b loc_812631A
loc_8126304:
	mov R1, #0
	str R1, [R2]
	str R1, [R2,#4]
	str R1, [R2,#8]
	str R1, [R2,#0xC]
	str R1, [R3]
	str R1, [R3,#4]
	str R1, [R3,#8]
	str R1, [R3,#0xC]
	add R2, #0x10
	add R3, #0x10
loc_812631A:
	add R5, #4
	add R2, #0x10
	add R3, #0x10
	add R4, #1
	mov R0, R9
	cmp R4, R0
	blt loc_812629C
	add sp, sp, #8
	pop {r6,r7}
	mov R8, R6
	mov R9, R7
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812626C

	push {R4-R7,lr}
	mov R7, R8
	push {r7}
	mov R8, R5
	ldr R6, off_81263CC // =0x200 
	lsl r3, r3, #0xc
	lsl r4, r4, #0xc
	orr R3, R6
	orr R4, R6
	sub sp, sp, #8
	str R3, [SP]
	str R4, [SP,#4]
	lsl r0, r0, #2
	add r5, r0, r1
	mov R3, #0x10
	add r3, r3, r2
	mov R4, #0
loc_8126356:
	ldr R6, [SP]
	ldr R0, off_81263B4 // =dword_81263B8 
	ldrh R1, [R5]
	tst R1, R1
	bne loc_812636C
	mov R7, R8
	tst R7, R7
	bne loc_812638A
	ldr R0, off_81263C0 // =off_81263C4 
	mov R1, #4
	b loc_8126374
loc_812636C:
	ldrb R7, [R5,#2]
	cmp R7, #1
	ble loc_8126374
	ldr R6, [SP,#4]
loc_8126374:
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr R0, [R0,R7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #1
	ldrh R1, [R0,R1]
	add r0, r0, r1
	bl sub_81263D0
	b loc_81263A0
loc_812638A:
	mov R1, #0
	str R1, [R2]
	str R1, [R2,#4]
	str R1, [R2,#8]
	str R1, [R2,#0xC]
	str R1, [R3]
	str R1, [R3,#4]
	str R1, [R3,#8]
	str R1, [R3,#0xC]
	add R2, #0x10
	add R3, #0x10
loc_81263A0:
	add R5, #4
	add R2, #0x10
	add R3, #0x10
	add R4, #1
	cmp R4, #5
	blt loc_8126356
	add sp, sp, #8
	pop {r7}
	mov R8, R7
	pop {R4-R7,pc}
off_81263B4: .word dword_81263B8
dword_81263B8: .word 0x86EA94C, 0x86EB354
off_81263C0: .word off_81263C4
off_81263C4: .word unk_201CC20
	.word unk_201CC20
off_81263CC: .word 0x200
.func
.thumb_func
sub_81263D0:
	push {R4-R7,lr}
	mov R7, #0
loc_81263D4:
	ldrb R1, [R0]
	cmp R1, #0xE5
	bge loc_81263F0
	lsl r1, r1, #1
	add r4, r6, #0
	add r4, r4, r1
	strh R4, [R2]
	add R4, #1
	strh R4, [R3]
	add R2, #2
	add R3, #2
	add R0, #1
	add R7, #1
	b loc_81263D4
loc_81263F0:
	cmp R7, #8
	bge locret_8126402
	mov R4, #0
	strh R4, [R2]
	strh R4, [R3]
	add R2, #2
	add R3, #2
	add R7, #1
	b loc_81263F0
locret_8126402:
	pop {R4-R7,pc}
.endfunc // sub_81263D0

.func
.thumb_func
sub_8126404:
	push {R4-R7,lr}
	mov r4, #0x7c 
	ldr R6, [R7,R4]
	mov R5, #1
	tst R6, R5
	beq loc_8126420
	add r6, r3, #0
	mov R3, #0
	mov R2, #2
	mov R4, #8
	add r5, r6, #0
	bl sub_80018D0
	b locret_812642E
loc_8126420:
	add r6, r3, #0
	// tileRefs
	add r3, r2, #0
	// cpyOff
	mov R2, #2
	mov R4, #8
	add r5, r6, #0
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8126404

locret_812642E:
	pop {R4-R7,pc}
.func
.thumb_func
sub_8126430:
	push {R4-R7,lr}
	push {R0-R2}
	add r0, r3, #0
	add r1, r2, #0
	mov r2, #0x38 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {R0-R2}
	lsl r0, r0, #2
	add r5, r0, r1
	mov R7, #0
	add r6, r4, #0
loc_8126448:
	// idx
	ldrh R0, [R5]
	tst R0, R0
	bne loc_8126456
	mov R4, #0
	str R4, [R2]
	str R4, [R2,#4]
	b loc_8126476
loc_8126456:
	ldrb R1, [R5,#2]
	tst R1, R1
	beq loc_8126464
	mov R4, #0
	str R4, [R2]
	str R4, [R2,#4]
	b loc_8126476
loc_8126464:
	push {r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldr R0, [R0,#0x20]
	add r1, r6, #0
	mov R2, #0x80
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r2}
loc_8126476:
	add R5, #4
	add R6, #0x80
	add R2, #8
	add R7, #1
	cmp R7, #7
	blt loc_8126448
	pop {R4-R7,pc}
.endfunc // sub_8126430

.func
.thumb_func
sub_8126484:
	push {R4-R7,lr}
	// tileRefs
	add r3, r2, #0
	// cpyOff
	mov R2, #2
	mov R4, #2
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8126484

	pop {R4-R7,pc}
.func
.thumb_func
sub_8126494:
	push {R4-R7,lr}
	lsl r0, r0, #2
	add r5, r0, r1
	ldr R6, dword_81264E0 // =0x8340 
	mov R7, #0
loc_812649E:
	// idx
	ldrh R0, [R5]
	tst R0, R0
	bne loc_81264B0
	mov R4, #0
	str R4, [R2]
	str R4, [R2,#4]
	str R4, [R2,#8]
	strh R4, [R2,#0xA]
	b loc_81264D2
loc_81264B0:
	push {r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r2}
	ldrb R0, [R0,#5]
	lsl r4, r0, #1
	add r0, r0, r4
	mov R4, #0
	strh R4, [R2]
	strh R4, [R2,#2]
	strh R4, [R2,#4]
	add r4, r6, r0
	strh R4, [R2,#6]
	add R4, #1
	strh R4, [R2,#8]
	add R4, #1
	strh R4, [R2,#0xA]
loc_81264D2:
	add R5, #4
	add R2, #0xC
	add R7, #1
	cmp R7, #7
	blt loc_812649E
	pop {R4-R7,pc}
	.byte 0, 0
dword_81264E0: .word 0x8340
.endfunc // sub_8126494

.func
.thumb_func
sub_81264E4:
	push {R4-R7,lr}
	// tileRefs
	add r3, r2, #0
	// cpyOff
	mov R2, #2
	mov R4, #3
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_81264E4

	pop {R4-R7,pc}
.func
.thumb_func
sub_81264F4:
	push {R4-R7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov R2, #0x14
	mov R3, #0xC
	ldr R4, off_812656C // =dword_812499C+232 
	ldr R6, dword_81265D4 // =0x40000000 
	ldr R7, off_81265D8 // =dword_812499C+248 
	bl sub_8126570
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_81264F4

.func
.thumb_func
sub_812650C:
	push {R4-R7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov R2, #0x1E
	mov R3, #0xC
	ldr R4, off_812656C // =dword_812499C+232 
	ldr R6, dword_81265D4 // =0x40000000 
	ldr R7, off_81265D8 // =dword_812499C+248 
	bl sub_8126570
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812650C

.func
.thumb_func
sub_8126524:
	push {R4-R7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x28 
	mov R3, #0xC
	ldr R4, off_812656C // =dword_812499C+232 
	ldr R6, dword_81265D4 // =0x40000000 
	ldr R7, off_81265D8 // =dword_812499C+248 
	bl sub_8126570
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_8126524

.func
.thumb_func
sub_812653C:
	push {R4-R7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x32 
	mov R3, #0xC
	ldr R4, off_812656C // =dword_812499C+232 
	ldr R6, dword_81265D4 // =0x40000000 
	ldr R7, off_81265D8 // =dword_812499C+248 
	bl sub_8126570
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812653C

.func
.thumb_func
sub_8126554:
	push {R4-R7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x3c 
	mov R3, #0xC
	ldr R4, off_812656C // =dword_812499C+232 
	ldr R6, dword_81265D4 // =0x40000000 
	ldr R7, off_81265D8 // =dword_812499C+248 
	bl sub_8126570
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812656C: .word dword_812499C+0xE8
.endfunc // sub_8126554

.func
.thumb_func
sub_8126570:
	push {r4,lr}
	sub sp, sp, #0x1c
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	str R4, [SP,#0xC]
	str R6, [SP,#0x10]
	lsl r0, r0, #0x10
	ldr R1, [SP]
	ldr R3, [SP,#4]
	tst R3, R3
	bne loc_812658C
	mov R2, #0
	b loc_812658E
loc_812658C:
	ldrh R2, [R5,R3]
loc_812658E:
	mov R3, #0x10
	mul R2, R3
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_81265D0 // =0x2 
	ldr R2, [SP,#8]
	ldrb R2, [R5,R2]
	str R2, [SP,#0x14]
	mov R3, #0xF
	and R2, R3
	ldr R3, [SP,#0xC]
	ldr R4, [SP,#0x10]
	bl sub_811FAF4
	ldr R1, [SP,#0x14]
	lsr r1, r1, #4
	sub R1, #1
	bne loc_81265BC
	add r1, r7, #0
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_81265BC:
	ldr R2, [SP,#8]
	ldrb R0, [R5,R2]
	mov R3, #0xF
	and R0, R3
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,R2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.byte 0, 0
dword_81265D0: .word 0x2
dword_81265D4: .word 0x40000000
off_81265D8: .word dword_812499C+0xF8
.endfunc // sub_8126570

.func
.thumb_func
sub_81265DC:
	push {R4-R7,lr}
	mov R7, #1
	mov R4, #4
loc_81265E2:
	ldr R0, off_8126618 // =off_812661C 
	lsl r1, r7, #2
	ldr R0, [R0,R1]
	mov r1, #0x74 
	ldr R1, [R5,R1]
	ldr R2, off_8126624 // =0x100 
	sub r1, r1, r2
	lsl r1, r1, #3
	add r0, r0, r1
	ldr R2, dword_8126628 // =0xFFFFFFD8 
	cmp R0, R2
	bge loc_8126606
	ldr R1, off_812662C // =0x120 
	add r0, r0, r1
	cmp R0, R2
	bge loc_8126606
	ldr R2, off_812662C // =0x120 
	add r0, r0, r2
loc_8126606:
	mov R1, #0x1B
	add r2, r4, #0
	bl sub_8116FDC
	add R4, #3
	sub R7, #1
	bge loc_81265E2
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8126618: .word off_812661C
off_812661C: .word 0x458
	.word 0x3C8
off_8126624: .word 0x100
dword_8126628: .word 0xFFFFFFD8
off_812662C: .word 0x120
.endfunc // sub_81265DC

.func
.thumb_func
sub_8126630:
	push {R4-R7,lr}
	ldrb R4, [R5,#0xD]
	cmp R4, #4
	beq loc_8126686
	mov R0, #0
	bl sub_80466C4
	beq locret_81266BE
	ldrb R0, [R1,#1]
	cmp R0, #0x16
	beq loc_8126652
	mov R0, #3
	bl sub_8046696
	// a1
	ldr R0, off_81266DC // =dword_812499C+324 
	bl sub_80465A0 // (void *a1) -> void
loc_8126652:
	lsl r2, r4, #2
	ldr R1, off_81266C0 // =off_81266C4 
	ldr R7, [R1,R2]
	mov R1, #0xA
	mul R1, R4
	add r4, r5, #0
	add r4, r4, r1
	ldrh R0, [R4,#0x14]
	ldrh R1, [R4,#0x18]
	add r0, r0, r1
	lsl r0, r0, #2
	ldrh R0, [R7,R0]
	mov R1, #0xFF
	mov R2, #0
	mov R3, #0
	bl sub_811980C
	mov r0, #0x2f 
	mov r1, #0x58 
	mov R2, #0
	bl sub_8119854
	mov R0, #0
	bl sub_8126818
	b locret_81266BE
loc_8126686:
	mov R0, #0
	bl sub_80466C4
	beq locret_81266BE
	ldrb R0, [R1,#1]
	cmp R0, #0x1A
	beq loc_812669A
	// a1
	ldr R0, off_81266D8 // =dword_812499C+364 
	bl sub_80465A0 // (void *a1) -> void
loc_812669A:
	ldr R2, off_81266D4 // =dword_201FC20 
	ldrh R0, [R5,#0x3C]
	mov r1, #0x40 
	ldrh R1, [R5,R1]
	add r0, r0, r1
	lsl r1, r0, #2
	ldrh R0, [R2,R1]
	add R1, #3
	ldrb R1, [R2,R1]
	mov R2, #0
	mov R3, #0
	bl sub_811A1F4
	mov r0, #0x2f 
	mov r1, #0x58 
	mov R2, #0
	bl sub_811A220
locret_81266BE:
	pop {R4-R7,pc}
off_81266C0: .word off_81266C4
off_81266C4: .word unk_201DC20
	.word dword_201E420
	.word dword_201EC20
	.word dword_201F420
off_81266D4: .word dword_201FC20
off_81266D8: .word dword_812499C+0x16C
off_81266DC: .word dword_812499C+0x144
.endfunc // sub_8126630

.func
.thumb_func
sub_81266E0:
	push {R4-R7,lr}
	sub sp, sp, #8
	mov r0, #0x40 
	ldrh R0, [R5,R0]
	ldrh R1, [R5,#0x3C]
	add r0, r0, r1
	lsl r2, r0, #2
	ldr R4, off_8126740 // =dword_201FC20 
	ldrb R1, [R4,R2]
	add R2, #3
	str R2, [SP]
	sub r0, r2, #1
	ldrb R0, [R4,R0]
	tst R0, R0
	bne loc_8126736
	ldrb R7, [R4,R2]
	str R7, [SP,#4]
	ldr R4, off_8126744 // =dword_812499C+264 
	mov R3, #0
loc_8126706:
	ldrh R2, [R4,R3]
	ldr R6, off_8126748 // =0x100 
	sub r2, r2, r6
	cmp R1, R2
	beq loc_8126716
	add R3, #2
	cmp r3, #0x3a 
	blt loc_8126706
loc_8126716:
	add R7, #1
	ldr R4, off_812673C // =dword_8124B1C 
	lsr r3, r3, #1
	ldrb R3, [R4,R3]
	cmp R7, R3
	blt loc_8126724
	mov R7, #0
loc_8126724:
	ldr R4, off_8126740 // =dword_201FC20 
	ldr R2, [SP]
	strb R7, [R4,R2]
	ldr R0, [SP,#4]
	cmp R0, R7
	beq loc_8126736
	mov R0, #0x80
	bl sound_play // () -> void
loc_8126736:
	add sp, sp, #8
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812673C: .word dword_8124B1C
off_8126740: .word dword_201FC20
off_8126744: .word dword_812499C+0x108
off_8126748: .word 0x100
.endfunc // sub_81266E0

.func
.thumb_func
sub_812674C:
	push {R4-R7,lr}
	ldrb R0, [R5,#0xD]
	tst R0, R0
	beq loc_8126772
	mov r0, #0x58 
	mov R1, #0x14
	mov R2, #0
	mov R3, #0xF
	ldr R4, off_8126788 // =dword_812499C+240 
	ldr R6, dword_8126794 // =0x10000000 
	ldr R7, off_8126798 // =dword_812499C+248 
	bl sub_8126570
	ldrb R0, [R5,#0xE]
	ldrb R1, [R5,#0xD]
	ldr R2, off_812679C // =dword_81267A0 
	ldrb R1, [R2,R1]
	cmp R1, R0
	bge locret_8126784
loc_8126772:
	mov R0, #0xE2
	mov R1, #0x14
	mov R2, #0
	mov R3, #0x10
	ldr R4, off_8126788 // =dword_812499C+240 
	ldr R6, dword_8126790 // =0x0 
	ldr R7, off_8126798 // =dword_812499C+248 
	bl sub_8126570
locret_8126784:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8126788: .word dword_812499C+0xF0
	.byte 0, 0, 0, 0
dword_8126790: .word 0x0
dword_8126794: .word 0x10000000
off_8126798: .word dword_812499C+0xF8
off_812679C: .word dword_81267A0
dword_81267A0: .word 0x3020100, 0x4
.endfunc // sub_812674C

.func
.thumb_func
sub_81267A8:
	push {R4-R7,lr}
	ldrb R0, [R5,#0xD]
	add r2, r0, #0
	mov R1, #0xA
	mul R0, R1
	add r7, r5, r0
	tst R2, R2
	beq loc_81267C6
	lsl r2, r2, #2
	mov r1, #0x58 
	add r2, r2, r1
	ldr R0, [R5,R2]
	cmp R0, #7
	bge loc_81267CC
	b locret_81267E4
loc_81267C6:
	ldrh R0, [R7,#0x12]
	cmp R0, #7
	blt locret_81267E4
loc_81267CC:
	mov R0, #0xE2
	lsl r0, r0, #0x10
	mov R1, #0x1A
	orr R0, R1
	ldr R1, dword_81267E8 // =0x0 
	ldrh R2, [R7,#0x12]
	ldrh R3, [R7,#0x18]
	mov R4, #7
	ldr R6, dword_81267EC // =0xC24C 
	mov r7, #0x6a 
	bl sub_811FA98
locret_81267E4:
	pop {R4-R7,pc}
	.balign 4, 0x00
dword_81267E8: .word 0x0
dword_81267EC: .word 0xC24C
.endfunc // sub_81267A8

.func
.thumb_func
sub_81267F0:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x3A]
	tst R0, R0
	beq locret_812680A
	mov r0, #0x43 
	mov R1, #0xE
	mov R2, #0
	mov R3, #0x11
	ldr R4, off_812680C // =dword_812499C+252 
	ldr R6, dword_8126810 // =0x40000000 
	ldr R7, dword_8126814 // =dword_812499C 
	bl sub_8126570
locret_812680A:
	pop {R4-R7,pc}
off_812680C: .word dword_812499C+0xFC
dword_8126810: .word 0x40000000
dword_8126814: .word 0x8124A9E
.endfunc // sub_81267F0

.func
.thumb_func
sub_8126818:
	push {R4-R7,lr}
	add r4, r0, #0
	mov R7, R10
	ldr R0, [R7,#0x1C]
	mov r1, #0x3f 
	strb R1, [R0,#8]
	mov r1, #0x22 
	strb R1, [R0,#9]
	mov r1, #0x32 
	strb R1, [R0,#0xA]
	mov r1, #0x58 
	strb R1, [R0,#1]
	mov R1, #0
	strb R1, [R0,#5]
	mov R1, #0xF0
	strb R1, [R0]
	mov R1, #0x9A
	strb R1, [R0,#4]
	tst R4, R4
	beq loc_812686A
	ldrh R2, [R5,#0x3A]
	tst R2, R2
	bne loc_8126858
	mov R1, #0xE
	strb R1, [R0,#3]
	mov R1, #0x11
	strb R1, [R0,#7]
	mov r1, #0x50 
	strb R1, [R0,#2]
	mov R1, #0x12
	strb R1, [R0,#6]
	b locret_812687A
loc_8126858:
	mov R1, #0xE
	strb R1, [R0,#3]
	mov R1, #0x11
	strb R1, [R0,#7]
	mov r1, #0x47 
	strb R1, [R0,#2]
	mov R1, #0x12
	strb R1, [R0,#6]
	b locret_812687A
loc_812686A:
	mov R1, #0xE
	strb R1, [R0,#3]
	mov R1, #0x10
	strb R1, [R0,#7]
	mov r1, #0x50 
	strb R1, [R0,#2]
	mov R1, #0x12
	strb R1, [R0,#6]
locret_812687A:
	pop {R4-R7,pc}
.endfunc // sub_8126818

	push {R4-R7,lr}
	mov R7, R10
	ldr R0, [R7,#0x1C]
	mov r1, #0x3f 
	strb R1, [R0,#8]
	mov r1, #0x32 
	strb R1, [R0,#9]
	mov r1, #0x32 
	strb R1, [R0,#0xA]
	ldrh R0, [R5,#0x3A]
	tst R0, R0
	bne loc_81268B6
	mov R1, #0
	strb R1, [R0,#1]
	mov R1, #0
	strb R1, [R0,#5]
	mov R1, #0xF0
	strb R1, [R0]
	mov R1, #0x9A
	strb R1, [R0,#4]
	mov R1, #0
	strb R1, [R0,#3]
	mov R1, #0
	strb R1, [R0,#7]
	mov R1, #0
	strb R1, [R0,#2]
	mov R1, #0x9A
	strb R1, [R0,#6]
	b locret_81268D6
loc_81268B6:
	mov R1, #0xA
	strb R1, [R0,#1]
	mov R1, #0
	strb R1, [R0,#5]
	mov R1, #0xF0
	strb R1, [R0]
	mov R1, #0x9A
	strb R1, [R0,#4]
	mov R1, #0
	strb R1, [R0,#3]
	mov R1, #0
	strb R1, [R0,#7]
	mov R1, #0xA
	strb R1, [R0,#2]
	mov R1, #0x9A
	strb R1, [R0,#6]
locret_81268D6:
	pop {R4-R7,pc}
.func
.thumb_func
sub_81268D8:
	push {lr}
	ldrh R0, [R5,#0x32]
	ldrh R1, [R5,#0x36]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr R1, off_81268F4 // =dword_201F420 
	// idx
	ldrh R0, [R1,R0]
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#7]
	mov R1, #1
	bl sub_811983C
	pop {pc}
off_81268F4: .word dword_201F420
dword_81268F8: .word 0xFF060606, 0xC24FC250, 0xFFFFC24E, 0xFFFF8220, 0xFFFF8228
	.word 0xC234C230, 0x606FFFF, 0xFF, 0x1200, 0x2204
	.word 0x3208, 0x420C, 0x5210, 0x6214, 0x72037201
	.word 0x72077205, 0x720B7209, 0x720F720D, 0x72137211, 0x72027215
	.word 0x72067204, 0x720A7208, 0x720E720C, 0x72127210, 0x72167214
	.word 0x72227220, 0x72267224, 0x722A7228, 0x722E722C, 0x72327230
	.word 0x72217234, 0x72257223, 0x72297227, 0x722D722B, 0x7231722F
	.word 0x72357233, 0x72427240, 0x72467244, 0x724A7248, 0x724E724C
	.word 0x72527250, 0x72417254, 0x72457243, 0x72497247, 0x724D724B
	.word 0x7251724F, 0x72557253, 0x72627260, 0x72667264, 0x726A7268
	.word 0x726E726C, 0x72727270, 0x72617274, 0x72657263, 0x72697267
	.word 0x726D726B, 0x7271726F, 0x72757273, 0x72827280, 0x72867284
	.word 0x728A7288, 0x728E728C, 0x72927290, 0x72817294, 0x72857283
	.word 0x72897287, 0x728D728B, 0x7291728F, 0x72957293, 0x72A272A0
	.word 0x72A672A4, 0x72AA72A8, 0x72AE72AC, 0x72B272B0, 0x72A172B4
	.word 0x72A572A3, 0x72A972A7, 0x72AD72AB, 0x72B172AF, 0x72B572B3
	.word 0x72C272C0, 0x72C672C4, 0x72CA72C8, 0x72CE72CC, 0x72D272D0
	.word 0x72C172D4, 0x72C572C3, 0x72C972C7, 0x72CD72CB, 0x72D172CF
	.word 0x72D572D3, 0x72E272E0, 0x72E672E4, 0x72EA72E8, 0x72EE72EC
	.word 0x72F272F0, 0x72E172F4, 0x72E572E3, 0x72E972E7, 0x72ED72EB
	.word 0x72F172EF, 0x72F572F3, 0x73027300, 0x73067304, 0x730A7308
	.word 0x730E730C, 0x73037301, 0x73077305, 0x730B7309, 0x730F730D
	.word 0x73127310, 0x73167314, 0x731A7318, 0x731E731C, 0x73137311
	.word 0x73177315, 0x731B7319, 0x731F731D, 0x73227320, 0x73267324
	.word 0x732A7328, 0x732E732C, 0x73237321, 0x73277325, 0x732B7329
	.word 0x732F732D, 0x73327330, 0x73367334, 0x733A7338, 0x733E733C
	.word 0x73337331, 0x73377335, 0x733B7339, 0x733F733D, 0x73627360
	.word 0x73617364, 0x73657363, 0x18, 0x125, 0x52A
	.word 0xFFFFFFFF, 0x200CB500, 0x20007028, 0x70A87068, 0xBD0070E8
	.word 0x2017B500, 0xF7082113, 0xF7FFFAE5, 0xBD00FFF1
.endfunc // sub_81268D8

.func
.thumb_func
sub_8126B4C:
	push {lr}
	ldr R0, off_8126B5C // =off_8126B60 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8126B5C: .word off_8126B60
off_8126B60: .word sub_8126B6C+1
	.word sub_8126CC0+1
	.word sub_8126FF0+1
.endfunc // sub_8126B4C

.func
.thumb_func
sub_8126B6C:
	push {R4-R7,lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #0x1A
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_8126CA8 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	bl sub_8046664 // () -> void
	bl sub_81270D0
	bl sub_8127800
	mov R0, #0
	strb R0, [R5,#0xC]
	strb R0, [R5,#0xD]
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x11]
	strh R0, [R5,#0x1E]
	strh R0, [R5,#0x24]
	strh R0, [R5,#0x20]
	strh R0, [R5,#0x2E]
	strh R0, [R5,#0x2A]
	strb R0, [R5,#0x1A]
	strb R0, [R5,#0x1B]
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1D]
	strh R0, [R5,#0x3A]
	mov R0, #0xFF
	strh R0, [R5,#0x26]
	ldr R0, dword_8126CAC // =0x1DA 
	strh R0, [R5,#0x32]
	mov R0, #1
	strh R0, [R5,#0x38]
	mov R0, #3
	strh R0, [R5,#0x28]
	mov R0, #0
	ldr R1, off_8126CBC // =dword_81268F8 
	bl sub_8120CC8
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,#0x13]
	strb R0, [R5,#0x12]
	str R0, [R5,#0x48]
	bl getPETNaviSelect // () -> u8
	add r4, r0, #0
	mov r1, #0x40 
	bl sub_80137FE
	strh R0, [R5,#0x34]
	add r0, r4, #0
	mov r1, #0x42 
	bl sub_80137FE
	strh R0, [R5,#0x36]
	bl getPETNaviSelect // () -> u8
	mov R1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb R0, [R5,#0x14]
	bl getPETNaviSelect // () -> u8
	mov R1, #0xB
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb R0, [R5,#0x15]
	bl getPETNaviSelect // () -> u8
	mov R1, #0xC
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb R0, [R5,#0x16]
	bl getPETNaviSelect // () -> u8
	cmp R0, #0
	bne loc_8126C38
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8126C3E
loc_8126C38:
	mov R4, #2
	strb R4, [R5,#0xF]
	b loc_8126C42
loc_8126C3E:
	mov R4, #2
	strb R4, [R5,#0xF]
loc_8126C42:
	mov R0, #0
	bl sub_8120D10
	beq loc_8126C50
	mov R0, #0x14
	strb R0, [R5,#2]
	b loc_8126C58
loc_8126C50:
	ldrb R0, [R5,#0x10]
	cmp R0, #2
	beq loc_8126C5E
	mov R1, #0
loc_8126C58:
	ldr R0, off_8126CB4 // =unk_201BF20 
	bl chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
loc_8126C5E:
	mov r0, #0x40 
	bl chatbox_8045F1C
	bl sub_812741C
.endfunc // sub_8126B6C

	bl sub_81275A8
	bl sub_81275C8
	bl sub_8127618
	bl sub_8127638
	bl sub_8127718
	bl sub_81277E0
	bl sub_81273B4
	bl sub_81273F0
	bl sub_8127060
	bl sub_8119C94
	add r0, #0x38 
	str R0, [R5,#0x40]
	add r1, #0x50 
	str R1, [R5,#0x44]
	ldr R0, off_8126CB0 // =dword_81268F8+548 
	bl sub_80465A0 // (void *a1) -> void
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {R4-R7,pc}
dword_8126CA8: .word 0x1F40
dword_8126CAC: .word 0x1DA
off_8126CB0: .word dword_81268F8+0x224
off_8126CB4: .word unk_201BF20
	.word 0xFFFFFFC0
off_8126CBC: .word dword_81268F8
.func
.thumb_func
sub_8126CC0:
	push {R4-R7,lr}
	ldrb R0, [R5,#0xD]
	strb R0, [R5,#0xE]
	ldr R0, off_8126DBC // =off_8126DC0 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_80465BC
	bl sub_81278D8
	ldr R1, [R5,#0x44]
.endfunc // sub_8126CC0

	mov R2, #0
	bl sub_8119BE8
	bl sub_81278D8
	ldr R1, [R5,#0x44]
	mov R2, #5
	bl sub_811BDFC
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	lsl r0, r0, #3
	ldr R1, [R5,#0x40]
	add r0, r0, r1
	ldr R1, [R5,#0x44]
	mov R2, #1
	bl sub_811B46C
	mov R7, #0
	bl getPETNaviSelect // () -> u8
	mov R1, #0xE
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp R0, #0xFF
	bne loc_8126D10
	mov R7, #1
loc_8126D10:
	bl getPETNaviSelect // () -> u8
	cmp R0, #0
	bne loc_8126D26
	mov R4, #1
	bl sub_8123360
	tst R0, R0
	bne loc_8126D24
	mov R4, #0
loc_8126D24:
	b loc_8126D32
loc_8126D26:
	mov R4, #1
	bl sub_8123360
	tst R0, R0
	bne loc_8126D32
	mov R4, #0
loc_8126D32:
	add r0, r4, #0
	mov R1, #0
	bl sub_8119C74
	add r0, r4, #0
	mov R1, #5
	bl sub_811BED4
	bl sub_8123360
	tst R0, R0
	bne loc_8126D4C
	mov R7, #0
loc_8126D4C:
	add r0, r7, #0
	mov R1, #1
	bl sub_811B48C
	b loc_8126D56
loc_8126D56:
	bl sub_80465F8 // () -> void
	bl sub_8123360
	tst R0, R0
	bne loc_8126D76
	push {r4,r6}
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	mov R1, #1
	add r4, r0, r1
	ldr R0, off_8126DE4 // =unk_201D720 
	mov R1, #0
	mov R2, #0
	ldr R3, dword_8126DE8 // =0x81E0 
	b loc_8126D92
loc_8126D76:
	push {r4,r6}
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	mov R1, #1
	add r4, r0, r1
	ldr R0, off_8126DE4 // =unk_201D720 
	ldrh R1, [R5,#0x34]
	ldrh R2, [R5,#0x36]
	lsr r3, r2, #2
	cmp R3, R1
	blt loc_8126D90
	ldr R3, dword_8126DEC // =0x91E0 
	b loc_8126D92
loc_8126D90:
	ldr R3, dword_8126DE8 // =0x81E0 
loc_8126D92:
	mov R6, #2
	bl sub_8120900
	pop {r4,r6}
	bl sub_8127060
	bl sub_81275A8
	bl sub_8127618
	bl sub_8127718
	bl sub_81277E0
	bl sub_81273B4
	bl sub_81273F0
	bl sub_8127374
	pop {R4-R7,pc}
off_8126DBC: .word off_8126DC0
off_8126DC0: .word sub_8126DF8+1
	.word sub_8126E10+1
	.word sub_8126E88+1
	.word sub_8126EA4+1
	.word sub_8126EC0+1
	.word sub_8126F40+1
	.word sub_8126F94+1
	.word sub_8126FA8+1
	.word loc_8126FC4+1
off_8126DE4: .word unk_201D720
dword_8126DE8: .word 0x81E0
dword_8126DEC: .word 0x91E0
	.word 0x220
	.word 0x50
.func
.thumb_func
sub_8126DF8:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8126E0A
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	mov R0, #4
	strb R0, [R5,#2]
loc_8126E0A:
	bl sub_81272C4
	pop {pc}
.endfunc // sub_8126DF8

.func
.thumb_func
sub_8126E10:
	push {r4,lr}
	mov R0, #0xA
	bl sub_811F7EC
	beq loc_8126E28
	mov R0, #8
	bl sub_811FB64
	mov r0, #0x40 
	bl chatbox_8045F1C
	b loc_8126E68
loc_8126E28:
	ldrb R0, [R5,#0x10]
	cmp R0, #2
	beq loc_8126E36
	mov R0, #0x80
	bl chatbox_8045F3C
	beq loc_8126E68
loc_8126E36:
	bl sub_8127264
	bne loc_8126E80
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	ldrb R1, [R5,#0xF]
	mov R2, #2
	ldrb R3, [R5,#0x10]
	bl sub_811FA0C
	ldrb R1, [R5,#0x10]
	strb R1, [R5,#0x11]
	cmp R0, R1
	beq loc_8126E68
	strb R0, [R5,#0x10]
	mov r0, #0x7a 
	bl sound_play // () -> void
	mov R0, #0x10
	strb R0, [R5,#2]
	mov r0, #0x40 
	bl chatbox_8045F1C
	b loc_8126E80
loc_8126E68:
	ldrb R3, [R5,#0x10]
	cmp R3, #1
	bne loc_8126E80
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov r1, #0x44 
	mov R2, #0
	mov R3, #0
	bl sub_811F7F8
	b loc_8126E80
loc_8126E80:
	bl sub_81272C4
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_8126E10

.func
.thumb_func
sub_8126E88:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8126E9C
	mov R1, #1
	ldr R0, [R5,#0xC]
	orr R0, R1
	str R0, [R5,#0xC]
	mov R1, #8
	strb R1, [R5,#1]
loc_8126E9C:
	bl sub_81272C4
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8126E88

.func
.thumb_func
sub_8126EA4:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8126EB8
	mov R1, #2
	ldr R0, [R5,#0xC]
	orr R0, R1
	str R0, [R5,#0xC]
	mov R1, #8
	strb R1, [R5,#1]
loc_8126EB8:
	bl sub_81272C4
	pop {pc}
	.byte 0, 0
.endfunc // sub_8126EA4

.func
.thumb_func
sub_8126EC0:
	push {R4-R7,lr}
	mov R0, #0xD
	ldrsb R1, [R5,R0]
	ldrb R2, [R5,#0x10]
	ldrb R3, [R5,#0x11]
	sub r3, r3, r2
	blt loc_8126ED2
	add R1, #2
	b loc_8126ED4
loc_8126ED2:
	sub R1, #2
loc_8126ED4:
	strb R1, [R5,R0]
	lsl r2, r2, #2
	ldr R0, off_8126F30 // =dword_8126F34 
	ldr R0, [R0,R2]
	cmp R0, R1
	bne loc_8126F0E
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	ldrb R0, [R5,#0x10]
	cmp R0, #2
	bne loc_8126EF2
	bl chatbox_8040818
	b loc_8126F0A
loc_8126EF2:
	mov R0, #0x80
	bl chatbox_8045F3C
	bne loc_8126F0A
	mov R0, #0
	bl sub_8120D10
	bne loc_8126F04
	mov R1, #0
loc_8126F04:
	add r0, r1, #0
	bl sub_81278C8
loc_8126F0A:
	mov R0, #4
	strb R0, [R5,#2]
loc_8126F0E:
	mov R0, #0
	mov R1, #2
	mov R2, #2
	mov R3, #0
	mov r4, #0x20 
	mov R5, #0xD
	bl sub_80018D0
.endfunc // sub_8126EC0

	mov R0, #0
	mov R1, #2
	mov R2, #3
	mov R3, #0
	mov r4, #0x20 
	mov R5, #0xA
	bl sub_80018D0
	pop {R4-R7,pc}
off_8126F30: .word dword_8126F34
dword_8126F34: .word 0x0
	.word 0xFFFFFFE0, 0xFFFFFFC0
.func
.thumb_func
sub_8126F40:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8126F88
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_8126F88
	ldrh R0, [R5,#0x3A]
	ldr R1, dword_8126F90 // =0x1010 
	cmp R0, R1
	bne loc_8126F70
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x18
	strb R0, [R5,#2]
	bl chatbox_8040818
	b locret_8126F88
loc_8126F70:
	mov R0, #4
	strb R0, [R5,#2]
	ldrb R0, [R5,#0x10]
	cmp R0, #2
	bne loc_8126F80
	bl chatbox_8040818
	b locret_8126F88
loc_8126F80:
	mov R1, #0
	ldr R0, off_8126F8C // =unk_201BF20 
	bl chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
locret_8126F88:
	pop {pc}
	.balign 4, 0x00
off_8126F8C: .word unk_201BF20
dword_8126F90: .word 0x1010
.endfunc // sub_8126F40

.func
.thumb_func
sub_8126F94:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8126FA4
	mov R0, #0
	strb R0, [R5,#1]
	strb R0, [R5,#2]
	strb R0, [R5,#3]
locret_8126FA4:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8126F94

.func
.thumb_func
sub_8126FA8:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8126FEC
	mov R0, #0
	strb R0, [R5,#1]
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	pop {pc}
	.balign 4, 0x00
	ldr R0, [R0,#0x7C]
	lsr r2, r2, #0x20
	lsl r1, r0, #8
	// <mkdata>
	.hword 0x0 // MOV R0, R0
loc_8126FC4:
	push {lr}
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_8126FEC
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	mov R0, #0x14
	strb R0, [R5,#2]
	mov r6, #0x35 
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #6
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8126FE6
	mov r6, #0x39 
loc_8126FE6:
	add r0, r6, #0
	bl sub_81278C8
locret_8126FEC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_8126FA8

.func
.thumb_func
sub_8126FF0:
	push {lr}
	bl sub_80465BC
	bl sub_8123360
	tst R0, R0
	bne loc_8127006
	mov R0, #0
	mov R1, #5
	bl sub_811BED4
loc_8127006:
	bl sub_80465F8 // () -> void
	bl sub_81272C4
	bl sub_8127374
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812705E
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	bl sub_81440D8 // static () -> void
	bl sub_8046664 // () -> void
	mov R0, #0x17
	mov R1, #0x13
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R1, #1
	ldr R2, [R5,#0xC]
	tst R2, R1
	beq loc_812703A
	mov r4, #0x24 
	b loc_8127042
loc_812703A:
	mov R1, #2
	tst R2, R1
	beq loc_812705A
	mov r4, #0x2c 
loc_8127042:
	bl chatbox_8040818
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	mov R0, R10
	// memBlock
	ldr R0, [R0,#0x34]
	// size
	mov R1, #0x80
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	strb R4, [R5]
	b locret_812705E
loc_812705A:
	bl sub_811F708
locret_812705E:
	pop {pc}
.endfunc // sub_8126FF0

.func
.thumb_func
sub_8127060:
	push {R4-R7,lr}
	add r7, r5, #0
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_8127198 // =unk_201BA20 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8127060

	mov R2, #0xD
	ldrsb R0, [R7,R2]
	mov R1, #0xF
	add r0, r0, r1
	mov R1, #2
	mov R2, #2
	ldr R3, off_81271A4 // =unk_201CF20 
	mov R4, #0xE
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R2, #0xD
	ldrsb R0, [R7,R2]
	mov r1, #0x22 
	add r0, r0, r1
	mov R1, #2
	mov R2, #2
	ldr R3, off_81271B0 // =unk_201D120 
	mov R4, #0xE
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R2, #0xD
	ldrsb R0, [R7,R2]
	mov r1, #0x30 
	add r0, r0, r1
	mov R1, #2
	mov R2, #2
	ldr R3, off_81271BC // =unk_201D320 
	mov R4, #0xD
	mov R5, #0xA
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R2, #0xD
	ldrsb R0, [R7,R2]
	mov R1, #1
	add r0, r0, r1
	mov R1, #4
	mov R2, #2
	ldr R3, off_81271C8 // =unk_201D520 
	mov R4, #0xC
	mov R5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	.byte 0, 0
.func
.thumb_func
sub_81270D0:
	push {R4-R7,lr}
	ldr R4, off_8127180 // =unk_20096E0 
	mov R6, #0
	mov R7, #0
	ldr R5, off_812715C // =off_8127160 
loc_81270DA:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_81270EC:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_81270EC
	cmp r7, #0x20 
	blt loc_81270DA
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_8127180 // =unk_20096E0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// initRefs
	ldr R0, off_8127184 // =dword_8127188 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	ldr R0, off_812711C // =off_8127120 
	ldr R1, off_8127154 // =unk_201BF20 
	ldr R2, off_8127158 // =decomp_2013A00 
	bl sub_8123300
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812711C: .word off_8127120
off_8127120: .word byte_86D7578
	.word byte_86D7578
	.word byte_86D7578
	.word byte_86D7578
	.word byte_86D7578
	.word byte_86D7578
	.word byte_86D78C0
	.word byte_86D7C24
	.word byte_86D7F74
	.word byte_86D82C4
	.word byte_86D860C
	.word byte_86D7578
	.word byte_86D894C
off_8127154: .word unk_201BF20
off_8127158: .word decomp_2013A00
off_812715C: .word off_8127160
off_8127160: .word byte_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001A40
	.word 0x20
off_8127180: .word unk_20096E0
off_8127184: .word dword_8127188
dword_8127188: .word comp_86C8054 + 1<<31
	.word 0x6000020
	.word decomp_2013A00
	.word comp_86D74B0 + 1<<31
off_8127198: .word unk_201BA20
	.word decomp_2013A00
	.word comp_86D737C + 1<<31
off_81271A4: .word unk_201CF20
	.word decomp_2013A00
	.word comp_86D73D4 + 1<<31
off_81271B0: .word unk_201D120
	.word decomp_2013A00
	.word comp_86D7424 + 1<<31
off_81271BC: .word unk_201D320
	.word decomp_2013A00
	.word comp_86D747C + 1<<31
off_81271C8: .word unk_201D520
	.word decomp_2013A00
	.word comp_86C9C80 + 1<<31
	.word 0x60149C0
	.word decomp_2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word decomp_2013A00
	.word unk_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word comp_86C9148 + 1<<31
	.word 0x6003C00
	.word decomp_2013A00
	.word comp_86C9240 + 1<<31
	.word unk_3001A60
	.word decomp_2013A00
	.word comp_86D8C80 + 1<<31
	.word unk_201D774
	.word decomp_2013A00
	.word comp_86D9D10 + 1<<31
	.word unk_201F294
	.word decomp_2013A00
	.word byte_86A5D40
	.word unk_3001A00
	.word 0x20
	.word dword_86CDBE4
	.word unk_30019E0
	.word 0x20
	.word byte_86C1F20
	.word byte_3001670
	.word 0x20
	.word byte_86C1F80
	.word 0x6011400
	.word 0x340
	.word comp_86C7764 + 1<<31
	.word unk_2022B94
	.word decomp_2013A00
	.word 0x0
.endfunc // sub_81270D0

.func
.thumb_func
sub_8127264:
	push {R4-R7,lr}
	mov R4, #0
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq loc_81272BE
	mov R7, #0
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0xF2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8127280
	mov R1, #1
	orr R7, R1
loc_8127280:
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0xF7
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_812728E
	mov R1, #2
	orr R7, R1
loc_812728E:
	cmp R7, #3
	bne loc_81272AA
	bl getPETNaviSelect // () -> u8
	cmp R0, #0
	beq loc_81272A4
	mov R0, #0xC
	mov R1, #0xC
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_81272B8
loc_81272A4:
	bl chatbox_8045F4C
	add r7, r0, #1
loc_81272AA:
	mov R0, #0xC
	mov R1, #0xC
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #8
	cmp R7, #1
	beq loc_81272BA
loc_81272B8:
	mov R0, #0xC
loc_81272BA:
	strb R0, [R5,#2]
	mov R4, #1
loc_81272BE:
	add r0, r4, #0
	tst R0, R0
	pop {R4-R7,pc}
.endfunc // sub_8127264

.func
.thumb_func
sub_81272C4:
	push {r4,lr}
	ldrb R0, [R5,#0x10]
	tst R0, R0
	beq loc_81272EA
	mov R0, #4
	mov r1, #0x34 
	mov R2, #0
	mov R3, #0x13
	ldr R6, dword_8127308 // =0x10000000 
	ldr R4, off_8127300 // =dword_81268F8+4 
	ldr R7, off_8127370 // =dword_81268F8 
	bl sub_812730C
	ldrb R0, [R5,#0xF]
	cmp R0, #2
	beq locret_81272FC
	ldrb R0, [R5,#0x10]
	cmp R0, #1
	bne locret_81272FC
loc_81272EA:
	mov R0, #0xE8
	mov r1, #0x34 
	mov R2, #0
	mov R3, #0x12
	ldr R6, dword_8127304 // =0x0 
	ldr R4, off_8127300 // =dword_81268F8+4 
	ldr R7, off_8127370 // =dword_81268F8 
	bl sub_812730C
locret_81272FC:
	pop {r4,pc}
	.byte 0, 0
off_8127300: .word dword_81268F8+4
dword_8127304: .word 0x0
dword_8127308: .word 0x10000000
.endfunc // sub_81272C4

.func
.thumb_func
sub_812730C:
	push {r4,lr}
	sub sp, sp, #0x1c
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	str R4, [SP,#0xC]
	str R6, [SP,#0x10]
	lsl r0, r0, #0x10
	ldr R1, [SP]
	ldr R3, [SP,#4]
	tst R3, R3
	bne loc_8127328
	mov R2, #0
	b loc_812732A
loc_8127328:
	ldrh R2, [R5,R3]
loc_812732A:
	mov R3, #0x10
	mul R2, R3
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_812736C // =0x20002 
	ldr R2, [SP,#8]
	ldrb R2, [R5,R2]
	str R2, [SP,#0x14]
	mov R3, #0xF
	and R2, R3
	ldr R3, [SP,#0xC]
	ldr R4, [SP,#0x10]
	bl sub_811FAF4
	ldr R1, [SP,#0x14]
	lsr r1, r1, #4
	sub R1, #1
	bne loc_8127358
	add r1, r7, #0
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_8127358:
	ldr R2, [SP,#8]
	ldrb R0, [R5,R2]
	mov R3, #0xF
	and R0, R3
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,R2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.balign 4, 0x00
dword_812736C: .word 0x20002
off_8127370: .word dword_81268F8
.endfunc // sub_812730C

.func
.thumb_func
sub_8127374:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x1E]
	cmp R0, #4
	blt locret_81273A6
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	mov R3, #0xE
	ldrsb R2, [R5,R3]
	sub r0, r0, r2
	lsl r0, r0, #3
	mov r2, #0x32 
	ldrsh R1, [R5,R2]
	add r0, r0, r1
	strh R0, [R5,R2]
	lsl r0, r0, #0x10
	mov R1, #0x14
	orr R0, R1
	ldr R1, dword_81273A8 // =0x20002 
	ldrh R2, [R5,#0x1E]
	ldrh R3, [R5,#0x24]
	mov R4, #4
	ldr R6, dword_81273AC // =0xC24C 
	mov r7, #0x34 
	bl sub_811FA98
locret_81273A6:
	pop {R4-R7,pc}
dword_81273A8: .word 0x20002
dword_81273AC: .word 0xC24C
	.word 0x1DA
.endfunc // sub_8127374

.func
.thumb_func
sub_81273B4:
	push {R4-R7,lr}
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_81273E2
	mov R6, R10
	ldr R6, [R6,#0x38]
	bl sub_8121198
	add R0, #1
	cmp R0, #0xF
	beq loc_81273D4
	str R0, [R6,#0xC]
	mov R0, #0x12
	b loc_81273D6
loc_81273D4:
	mov R0, #0x13
loc_81273D6:
	mov R1, #0
	ldr R2, dword_81273E4 // =0x600AC00 
	ldr R3, off_81273E8 // =unk_201BF20 
	ldr R4, off_81273EC // =unk_201A600 
	bl sub_8127578
locret_81273E2:
	pop {R4-R7,pc}
dword_81273E4: .word 0x600AC00
off_81273E8: .word unk_201BF20
off_81273EC: .word unk_201A600
.endfunc // sub_81273B4

.func
.thumb_func
sub_81273F0:
	push {R4-R7,lr}
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_8127414
	add r7, r5, #0
	mov R2, #0xD
	ldrsb R0, [R5,R2]
	mov R1, #2
	// j
	add r0, r0, r1
	// i
	mov R1, #9
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8127418 // =dword_81268F8+536 
	mov R4, #3
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_8127414:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8127418: .word dword_81268F8+0x218
.endfunc // sub_81273F0

.func
.thumb_func
sub_812741C:
	push {R4-R7,lr}
	mov R6, R10
	ldr R6, [R6,#0x38]
	bl getPETNaviSelect // () -> u8
	mov R1, #1
	bl sub_80137B6 // (int a1, int a2) -> u8
	add R0, #1
	str R0, [R6,#8]
	mov R0, #5
	mov R1, #0
	ldr R2, dword_81274E0 // =0x6008020 
	ldr R3, off_81274E4 // =unk_201BF20 
	ldr R4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	bl getPETNaviSelect // () -> u8
	mov R1, #2
	bl sub_80137B6 // (int a1, int a2) -> u8
	add R0, #1
	str R0, [R6,#8]
	mov R0, #6
	mov r1, #0x40 
	lsl r1, r1, #4
	sub r1, #0x20 
	ldr R2, dword_81274E0 // =0x6008020 
	ldr R3, off_81274E4 // =unk_201BF20 
	ldr R4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	bl getPETNaviSelect // () -> u8
	mov R1, #3
	bl sub_80137B6 // (int a1, int a2) -> u8
	add R0, #1
	str R0, [R6,#8]
	mov R0, #7
	mov R1, #0x80
	lsl r1, r1, #4
	sub r1, #0x20 
	ldr R2, dword_81274E0 // =0x6008020 
	ldr R3, off_81274E4 // =unk_201BF20 
	ldr R4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	bl getPETNaviSelect // () -> u8
	tst R0, R0
	bne loc_812749A
	bl sub_803F524
	beq loc_812749A
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_812749A
	mov r0, #0x51 
	b loc_81274CE
loc_812749A:
	bl getPETNaviSelect // () -> u8
	mov R1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp R0, #0
	beq loc_81274AE
	ldr R1, off_81274F4 // =byte_812756C 
	ldrb R0, [R1,R0]
	b loc_81274CE
loc_81274AE:
	bl getPETNaviSelect // () -> u8
	mov R1, #5
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov R3, #0
	ldr R1, off_81274EC // =byte_81274F8 
loc_81274BC:
	ldrb R2, [R1,R3]
	cmp R0, R2
	beq loc_81274CA
	add R3, #1
	cmp r3, #0x3a 
	blt loc_81274BC
	mov R3, #2
loc_81274CA:
	ldr R1, dword_81274F0 // =byte_81274F8 
	ldrb R0, [R1,R3]
loc_81274CE:
	mov R1, #0xC0
	lsl r1, r1, #4
	sub r1, #0x20 
	ldr R2, dword_81274E0 // =0x6008020 
	ldr R3, off_81274E4 // =unk_201BF20 
	ldr R4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
.endfunc // sub_812741C

	pop {R4-R7,pc}
dword_81274E0: .word 0x6008020
off_81274E4: .word unk_201BF20
off_81274E8: .word byte_2017A00
off_81274EC: .word byte_81274F8
dword_81274F0: .word 0x8127532
off_81274F4: .word byte_812756C
byte_81274F8: .byte 0x0, 0x1, 0x71, 0x72, 0x54, 0x55, 0x56, 0x57, 0x87, 0x78
	.byte 0x58, 0x59, 0x5A, 0x5B, 0x75, 0x5C, 0x5D, 0x7C, 0x85, 0x5E
	.byte 0x5F, 0x60, 0x61, 0x8D, 0x35, 0x7A, 0x62, 0x63, 0x7F, 0x64
	.byte 0x65, 0x66, 0x67, 0x68, 0x84, 0x73, 0x69, 0x91, 0x6A, 0x8A
	.byte 0x6B, 0x92, 0x6C, 0x6D, 0x6E, 0x93, 0x40, 0x41, 0x42, 0x43
	.byte 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x32, 0xC, 0xB
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B
	.byte 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x52
byte_812756C: .byte 0x46, 0x46, 0x4A, 0x49, 0x4D, 0x4E, 0x47, 0x4B, 0x48
	.byte 0x50, 0x4F, 0x52
.func
.thumb_func
sub_8127578:
	push {R4-R7,lr}
	ldr R6, off_81275A4 // =dword_86B7AE0 
	b loc_8127584
	.byte 0, 0
.endfunc // sub_8127578

.func
.thumb_func
sub_8127580:
	push {R4-R7,lr}
	ldr R6, off_81275A0 // =dword_86A5D60 
loc_8127584:
	add r7, r1, #0
	add r1, r0, #0
	add r0, r3, #0
	add r3, r2, #0
	add r2, r4, #0
	add r2, r2, r7
	add r3, r3, r7
	mov R4, #0xB
	mov R5, #2
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_8127580

	pop {R4-R7,pc}
	.byte 0, 0
off_81275A0: .word dword_86A5D60
off_81275A4: .word dword_86B7AE0
.func
.thumb_func
sub_81275A8:
	push {R4-R7,lr}
	mov R2, #0xD
	ldrsb R0, [R5,R2]
	mov R1, #0x11
	// j
	add r0, r0, r1
	// i
	mov R1, #3
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_81275C4 // =dword_81268F8+56 
	mov R4, #0xB
	mov R5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_81275A8

	pop {R4-R7,pc}
	.balign 4, 0x00
off_81275C4: .word dword_81268F8+0x38
.func
.thumb_func
sub_81275C8:
	push {R4-R7,lr}
	mov R6, R10
	ldr R6, [R6,#0x38]
	ldrb R0, [R5,#0x14]
	str R0, [R6,#8]
	mov R0, #8
	mov R1, #0
	ldr R2, dword_812760C // =0x6009000 
	ldr R3, off_8127610 // =unk_201BF20 
	ldr R4, off_8127614 // =unk_2018A00 
	bl sub_8127580
.endfunc // sub_81275C8

	ldrb R0, [R5,#0x15]
	str R0, [R6,#8]
	mov R0, #9
	mov r1, #0x40 
	lsl r1, r1, #4
	ldr R2, dword_812760C // =0x6009000 
	ldr R3, off_8127610 // =unk_201BF20 
	ldr R4, off_8127614 // =unk_2018A00 
	bl sub_8127580
	ldrb R0, [R5,#0x16]
	str R0, [R6,#8]
	mov R0, #0xA
	mov R1, #0x80
	lsl r1, r1, #4
	ldr R2, dword_812760C // =0x6009000 
	ldr R3, off_8127610 // =unk_201BF20 
	ldr R4, off_8127614 // =unk_2018A00 
	bl sub_8127580
	pop {R4-R7,pc}
	.balign 4, 0x00
dword_812760C: .word 0x6009000
off_8127610: .word unk_201BF20
off_8127614: .word unk_2018A00
.func
.thumb_func
sub_8127618:
	push {R4-R7,lr}
	add r7, r5, #0
	mov R2, #0xD
	ldrsb R0, [R5,R2]
	mov r1, #0x23 
	// j
	add r0, r0, r1
	// i
	mov R1, #3
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8127634 // =dword_81268F8+232 
	mov R4, #0xB
	mov R5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8127618

	pop {R4-R7,pc}
off_8127634: .word dword_81268F8+0xE8
.func
.thumb_func
sub_8127638:
	push {R4-R7,lr}
	ldr R0, off_8127708 // =byte_201D74C 
	add r6, r0, #0
	mov r1, #0x28 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr R0, off_8127714 // =unk_2024394 
	mov r1, #0x28 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	mov R4, #0
loc_812764E:
	add r0, r4, #0
	bl sub_813B9FC
	add r7, r0, #0
	ldrh R0, [R7]
	tst R0, R0
	beq loc_8127672
	add r7, r0, #0
	bl getPETNaviSelect // () -> u8
	cmp R0, #0
	bne loc_8127672
	add r0, r7, #0
	lsr r0, r0, #2
	strb R0, [R6,R4]
	ldrh R0, [R5,#0x1E]
	add R0, #1
	strh R0, [R5,#0x1E]
loc_8127672:
	add R4, #1
	cmp R4, #0x19
	blt loc_812764E
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_81276B6
loc_8127682:
	bl sub_81276E4
	add r7, r0, #0
	mov R2, #0
loc_812768A:
	ldr R1, [R7]
	mov R0, #1
	neg R0, R0
	cmp R1, R0
	beq loc_81276B6
	lsr r1, r1, #2
	add r1, #0x40 
	strb R1, [R6,R4]
	ldr R0, off_8127714 // =unk_2024394 
	strb R1, [R0,R2]
	add R2, #2
	add R7, #4
	ldr R1, [R7]
	ldr R0, off_8127714 // =unk_2024394 
	strh R1, [R0,R2]
	add R2, #2
	ldrh R0, [R5,#0x1E]
	add R0, #1
	strh R0, [R5,#0x1E]
	add R4, #1
	add R7, #4
	b loc_812768A
loc_81276B6:
	mov r0, #0x22 
	add r7, r6, r0
	mov R4, #0
loc_81276BC:
	ldrb R0, [R6]
	tst R0, R0
	bne loc_81276DA
	add r0, r6, #0
	add r1, r6, #1
loc_81276C6:
	ldrb R2, [R1]
	tst R2, R2
	beq loc_81276D4
	strb R2, [R0]
	mov R2, #0
	strb R2, [R1]
	add R0, #1
loc_81276D4:
	add R1, #1
	cmp R1, R7
	blt loc_81276C6
loc_81276DA:
	add R6, #1
	add R4, #1
	cmp r4, #0x22 
	blt loc_81276BC
	pop {R4-R7,pc}
.endfunc // sub_8127638

.func
.thumb_func
sub_81276E4:
	push {r4,lr}
	mov R1, R10
	ldr R1, [R1,#0x40]
	ldr R4, [R1,#0x30]
	bl getPETNaviSelect // () -> u8
	add r2, r0, #0
	lsl r0, r0, #1
	ldr R1, off_8127710 // =dword_81211B4 
	ldrh R1, [R1,R0]
	sub r4, r4, r1
	lsl r0, r2, #2
	ldr R1, off_812770C // =pt_8121200 
	ldr R1, [R1,R0]
	ldr R1, [R1]
	lsl r4, r4, #2
	ldr R0, [R1,R4]
	pop {r4,pc}
off_8127708: .word byte_201D74C
off_812770C: .word pt_8121200
off_8127710: .word dword_81211B4
off_8127714: .word unk_2024394
.endfunc // sub_81276E4

.func
.thumb_func
sub_8127718:
	push {R4-R7,lr}
	mov R6, #0
	ldrh R7, [R5,#0x24]
	ldrh R0, [R5,#0x26]
	cmp R7, R0
	beq locret_812774A
loc_8127724:
	ldr R3, off_8127758 // =byte_201D74C 
	ldrb R0, [R3,R7]
	cmp r0, #0x40 
	blt loc_8127730
	bl sub_8127760
loc_8127730:
	ldr R2, dword_812774C // =0x600A000 
	ldr R3, off_8127750 // =byte_873EA50 
	ldr R4, off_8127754 // =byte_2019A00 
	add r1, r6, #0
	bl sub_8127580
	add R7, #1
	mov r0, #0x20 
	lsl r0, r0, #4
	add r6, r6, r0
	ldr R2, off_812775C // =0x600 
	cmp R6, R2
	ble loc_8127724
locret_812774A:
	pop {R4-R7,pc}
dword_812774C: .word 0x600A000
off_8127750: .word byte_873EA50
off_8127754: .word byte_2019A00
off_8127758: .word byte_201D74C
off_812775C: .word 0x600
.endfunc // sub_8127718

.func
.thumb_func
sub_8127760:
	ldr R1, off_8127784 // =unk_2024394 
	mov R3, #0
loc_8127764:
	ldrh R2, [R1,R3]
	cmp R2, R0
	beq loc_8127772
	add R3, #4
	cmp r3, #0x20 
	blt loc_8127764
	mov R3, #0
loc_8127772:
	add R3, #2
	ldrh R2, [R1,R3]
	mov r1, #0x40 
	sub r3, r0, r1
	lsl r3, r3, #1
	mov r1, #0x50 
	add r3, r3, r1
	strh R2, [R5,R3]
	mov PC, LR
off_8127784: .word unk_2024394
.endfunc // sub_8127760

	push {R4-R7,lr}
	mov R6, #0
	ldrh R7, [R5,#0x24]
	ldrh R0, [R5,#0x26]
	cmp R7, R0
	beq locret_81277CA
loc_8127794:
	ldr R3, off_81277D8 // =byte_201D74C 
	ldr R0, [R3,R7]
	add R7, #4
	ldr R1, [R3,R7]
	mov r4, #0x40 
	sub r2, r0, r4
	blt loc_81277B0
	cmp R2, #2
	bgt loc_81277B0
	mov R3, R10
	ldr R3, [R3,#0x38]
	lsl r2, r2, #2
	add R2, #8
	str R1, [R3,R2]
loc_81277B0:
	ldr R2, dword_81277CC // =0x600A000 
	ldr R3, off_81277D0 // =byte_873EA50 
	ldr R4, off_81277D4 // =byte_2019A00 
	add r1, r6, #0
	bl sub_8127580
	add R7, #4
	mov r0, #0x20 
	lsl r0, r0, #4
	add r6, r6, r0
	ldr R2, off_81277DC // =0x600 
	cmp R6, R2
	ble loc_8127794
locret_81277CA:
	pop {R4-R7,pc}
dword_81277CC: .word 0x600A000
off_81277D0: .word byte_873EA50
off_81277D4: .word byte_2019A00
off_81277D8: .word byte_201D74C
off_81277DC: .word 0x600
.func
.thumb_func
sub_81277E0:
	push {R4-R7,lr}
	mov R2, #0xD
	ldrsb R0, [R5,R2]
	mov r1, #0x31 
	// j
	add r0, r0, r1
	// i
	mov R1, #3
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_81277FC // =dword_81268F8+408 
	mov R4, #8
	mov R5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_81277E0

	pop {R4-R7,pc}
	.balign 4, 0x00
off_81277FC: .word dword_81268F8+0x198
.func
.thumb_func
sub_8127800:
	push {R4-R7,lr}
	mov R5, #0
	mov R6, #0
loc_8127806:
	ldr R1, off_8127830 // =dword_8127834 
	ldr R0, [R1,R6]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_812781E
	ldr R1, off_8127878 // =off_812787C 
	ldr R0, [R1,R6]
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8127828
loc_812781E:
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0xF7
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_812782E
loc_8127828:
	add R6, #4
	cmp r6, #0x34 
	blt loc_8127806
locret_812782E:
	pop {R4-R7,pc}
off_8127830: .word dword_8127834
dword_8127834: .word 0x321, 0x327, 0x32D, 0x333, 0x339, 0x345, 0x34B, 0x351
	.word 0x357, 0x35D, 0x33F, 0x369, 0x303, 0x30F, 0x309, 0x315
	.word 0x31B
off_8127878: .word off_812787C
off_812787C: .word 0xAC
	.word 0xAD, 0xAE, 0xAF, 0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5
	.word 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE
.endfunc // sub_8127800

.func
.thumb_func
sub_81278C8:
	push {lr}
	add r1, r0, #0
	ldr R0, off_81278D4 // =unk_201BF20 
	bl chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
	pop {pc}
off_81278D4: .word unk_201BF20
.endfunc // sub_81278C8

.func
.thumb_func
sub_81278D8:
	push {lr}
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	lsl r0, r0, #3
	ldr R1, [R5,#0x40]
	add r0, r0, r1
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_81278D8

	push {R4-R7,lr}
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	lsl r0, r0, #3
	ldr R1, off_8127928 // =0x200 
	add r0, r0, r1
	lsl r0, r0, #0x10
	ldr R1, off_8127930 // =0x70 
	orr R0, R1
	ldr R1, dword_8127934 // =0x20002 
	mov R2, #0
	ldr R3, off_8127938 // =dword_81268F8+12 
	ldr R4, dword_8127940 // =0x80004000 
	bl sub_811FAF4
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	lsl r0, r0, #3
	ldr R1, off_812792C // =0x220 
	add r0, r0, r1
	lsl r0, r0, #0x10
	ldr R1, off_8127930 // =0x70 
	orr R0, R1
	ldr R1, dword_8127934 // =0x20002 
	mov R2, #0
	ldr R3, off_812793C // =dword_81268F8+16 
	ldr R4, dword_8127940 // =0x80004000 
	bl sub_811FAF4
	bl sub_8127944
	pop {R4-R7,pc}
off_8127928: .word 0x200
off_812792C: .word 0x220
off_8127930: .word 0x70
dword_8127934: .word 0x20002
off_8127938: .word dword_81268F8+0xC
off_812793C: .word dword_81268F8+0x10
dword_8127940: .word 0x80004000
.func
.thumb_func
sub_8127944:
	push {R4-R7,lr}
	mov R1, #0xD
	ldrsb R0, [R5,R1]
	lsl r0, r0, #3
	ldr R1, dword_8127970 // =0x22A 
	add r0, r0, r1
	ldr R1, dword_8127974 // =0x6E 
	mov R2, #0
	mov r3, #0x48 
	ldr R4, off_8127964 // =dword_81268F8+20 
	ldr R6, dword_8127968 // =0x40000000 
	ldr R7, dword_812796C // =dword_81268F8 
	bl sub_812730C
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8127964: .word dword_81268F8+0x14
dword_8127968: .word 0x40000000
dword_812796C: .word 0x8126912
dword_8127970: .word 0x22A
dword_8127974: .word 0x6E
dword_8127978: .word 0xC244C240, 0xFFFFC248, 0xFF060606, 0xB232B230, 0x606FFFF
	.word 0xFF
.endfunc // sub_8127944

.func
.thumb_func
sub_8127990:
	push {r4,lr}
	add r4, r0, #0
	bl sub_811F6C0
	tst R4, R4
	beq locret_81279A2
	ldr R1, off_81279A4 // =sSubmenu 
	mov R0, #1
	strb R0, [R1,#0xD] // (sSubmenu.unk_0D - 0x2009A30)
locret_81279A2:
	pop {r4,pc}
off_81279A4: .word sSubmenu
.endfunc // sub_8127990

.func
.thumb_func
sub_81279A8:
	push {R4-R7,lr}
	mov R7, #1
	ldr R0, off_81279F0 // =dword_2001140 
	ldr R4, [R0]
	tst R4, R4
	beq loc_81279E2
	mov R5, #0
loc_81279B6:
	ldr R1, off_81279E8 // =byte_2006530 
	ldrb R0, [R1,R5]
	add r6, r0, #0
	ldr R1, dword_81279EC // =0x1DA0 
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_81279DC
	mov R3, #4
	mul R3, R6
	ldr R2, off_81279F4 // =dword_812851C 
	add r2, r2, r3
	ldrb R0, [R2]
	mov R1, #0x80
	tst R0, R1
	beq loc_81279DC
	mov R7, #0
	b loc_81279E2
loc_81279DC:
	add R5, #1
	cmp R5, R4
	blt loc_81279B6
loc_81279E2:
	add r0, r7, #0
	tst R0, R0
	pop {R4-R7,pc}
off_81279E8: .word byte_2006530
dword_81279EC: .word 0x1DA0
off_81279F0: .word dword_2001140
off_81279F4: .word dword_812851C
.endfunc // sub_81279A8

menuControl_cb_email:
	push {r5,lr}
	ldr R5, off_8127A08 // =sSubmenu 
	ldr R0, off_8127A0C // =off_8127A10 
	ldrb R1, [R5,#0x1] // (sSubmenu.jo_01 - 0x2009A30)
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {r5,pc}
off_8127A08: .word sSubmenu
off_8127A0C: .word off_8127A10
off_8127A10: .word sub_8127A1C+1
	.word sub_8127ACC+1
	.word sub_8127C64+1
.func
.thumb_func
sub_8127A1C:
	push {lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #0x10
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_8127AB8 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8046664 // () -> void
	bl sub_8127CB8
.endfunc // sub_8127A1C

	ldr R0, off_8127ABC // =dword_2001140 
	ldr R0, [R0]
	strh R0, [R5,#0x1E]
	mov R0, #4
	strh R0, [R5,#0x28]
	mov R0, #0
	strh R0, [R5,#0x20]
	strh R0, [R5,#0x24]
	strh R0, [R5,#0x2A]
	strh R0, [R5,#0x2E]
	mov R0, #0xFF
	strh R0, [R5,#0x22]
	strh R0, [R5,#0x26]
	strh R0, [R5,#0x2C]
	strh R0, [R5,#0x30]
	mov R0, #0
	ldr R1, off_8127AC8 // =dword_8127978+8 
	bl sub_8120CC8
	strb R0, [R5,#0xC]
	strb R1, [R5,#0xE]
	strb R0, [R5,#0xF]
	strb R1, [R5,#0x10]
	bl sub_81283A0
	ldr R1, off_8127AC4 // =byte_2000FE0 
	mov R0, #7
	strb R0, [R1]
	mov R0, #4
	strb R0, [R1,#0x1] // (byte_2000FE1 - 0x2000FE0)
	bl sub_8128500
	bl sub_8128260
	bl sub_8127E9C
	bl sub_8128008
	bl sub_81281C0
	bl sub_81281E0
	bl sub_8128280
	pop {pc}
dword_8127AB8: .word 0x1F40
off_8127ABC: .word dword_2001140
	.word unk_2027570
off_8127AC4: .word byte_2000FE0
off_8127AC8: .word dword_8127978+8
.func
.thumb_func
sub_8127ACC:
	push {lr}
	ldr R0, off_8127AF4 // =off_8127AF8 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_81281E0
	bl sub_8127F54
	bl sub_8127FE4
	bl sub_8128280
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {pc}
	.balign 4, 0x00
off_8127AF4: .word off_8127AF8
off_8127AF8: .word sub_8127B08+1
	.word sub_8127B18+1
	.word sub_8127B94+1
	.word sub_8127BE4+1
.endfunc // sub_8127ACC

.func
.thumb_func
sub_8127B08:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8127B14
	mov R0, #4
	strb R0, [R5,#2]
locret_8127B14:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8127B08

.func
.thumb_func
sub_8127B18:
	push {lr}
	mov R0, #2
	bl sub_811F7EC
	beq loc_8127B2A
loc_8127B22:
	mov R0, #8
	bl sub_811FB64
	b locret_8127B8E
loc_8127B2A:
	mov R0, #1
	bl sub_811F7EC
	beq loc_8127B4C
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq loc_8127B22
	bl sub_8128318
	bl sub_8128008
	bl sub_81281C0
	mov R0, #0x81
	bl sound_play // () -> void
	b locret_8127B8E
loc_8127B4C:
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_8127B8E
	mov R0, #8
	bl sub_811F7EC
	beq loc_8127B72
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, #0
	ldr R1, off_8127B90 // =dword_8127978+8 
	bl sub_8120CC8
	strb R0, [R5,#0xF]
	strb R1, [R5,#0x10]
	b locret_8127B8E
loc_8127B72:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #4
	mov R2, #0
	mov R3, #0
	bl sub_811F7F8
	tst R0, R0
	beq locret_8127B8E
	bl sub_8128008
	bl sub_81281C0
locret_8127B8E:
	pop {pc}
off_8127B90: .word dword_8127978+8
.endfunc // sub_8127B18

.func
.thumb_func
sub_8127B94:
	push {r4,lr}
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_8127BD6
	ldr R2, off_8127BD8 // =dword_2027590 
	ldrh R0, [R5,#0x20]
	ldrh R1, [R5,#0x24]
	add r0, r0, r1
	mov r1, #0x20 
	mul R0, R1
	add r2, r2, r0
	ldr R4, [R2,#0x18]
	lsr r4, r4, #0x10
	ldr R0, dword_8127BE0 // =0x1D20 
	add r0, r0, r4
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	ldr R0, dword_8127BDC // =0x1DA0 
	add r0, r0, r4
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	bl sub_8128008
	bl sub_81281C0
	mov R4, #4
	strb R4, [R5,#2]
	mov R0, #1
	bl sub_8127ED4
locret_8127BD6:
	pop {r4,pc}
off_8127BD8: .word dword_2027590
dword_8127BDC: .word 0x1DA0
dword_8127BE0: .word 0x1D20
.endfunc // sub_8127B94

.func
.thumb_func
sub_8127BE4:
	push {lr}
	mov R0, #0xA
	bl sub_811F7EC
	beq loc_8127BFA
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0x83
	bl sound_play // () -> void
	b loc_8127C46
loc_8127BFA:
	mov R0, #1
	bl sub_811F7EC
	beq loc_8127C34
	mov R0, #0x81
	bl sound_play // () -> void
	ldrh R0, [R5,#0x2A]
	ldr R1, off_8127C50 // =dword_8127C54 
	ldrb R0, [R1,R0]
	ldr R2, off_8127C58 // =byte_2000FE0 
	ldrb R1, [R2]
	cmp R0, R1
	beq loc_8127C1E
	strb R0, [R2]
	mov R0, #0
	strb R0, [R2,#0x1] // (byte_2000FE1 - 0x2000FE0)
	b loc_8127C26
loc_8127C1E:
	ldrb R0, [R2,#0x1] // (byte_2000FE1 - 0x2000FE0)
	mov R1, #4
	eor R0, R1
	strb R0, [R2,#0x1] // (byte_2000FE1 - 0x2000FE0)
loc_8127C26:
	bl sub_8128500
	bl sub_8128008
	bl sub_81281C0
	b loc_8127C46
loc_8127C34:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #4
	mov R2, #1
	ldrh R3, [R5,#0x2A]
	bl sub_811FA22
	strh R0, [R5,#0x2A]
loc_8127C46:
	bl sub_8127F90
	bl sub_812848C
.endfunc // sub_8127BE4

	pop {pc}
off_8127C50: .word dword_8127C54
dword_8127C54: .word 0x7020300
off_8127C58: .word byte_2000FE0
	.word dword_2027590
	.word dword_2001140
.func
.thumb_func
sub_8127C64:
	push {lr}
	bl sub_81281E0
	bl sub_8127F54
	bl sub_8127FE4
	bl sub_8128280
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8127CB6
	bl sub_8046664 // () -> void
	bl sub_8127EF4
	mov R1, R10
	ldr R1, [R1,#0x3C]
	ldrb R3, [R5,#0xD]
	mov R2, #1
	tst R3, R2
	beq loc_8127C9C
	str R0, [R1,#0x78]
	b loc_8127C9E
loc_8127C9C:
	strb R0, [R1,#0x13]
loc_8127C9E:
	ldrb R0, [R5,#0xD]
	mov R1, #1
	tst R0, R1
	beq loc_8127CB2
	mov R0, #1
	bl sub_811EBF4
	bl sub_811F728
	b locret_8127CB6
loc_8127CB2:
	bl sub_811F708
locret_8127CB6:
	pop {pc}
.endfunc // sub_8127C64

.func
.thumb_func
sub_8127CB8:
	push {R4-R7,lr}
	sub sp, sp, #4
	ldrb R0, [R5,#0xD]
	str R0, [SP]
	ldr R4, off_8127DE8 // =unk_20096E0 
	mov R6, #0
	mov R7, #0
	ldr R5, off_8127DB4 // =dword_8127DB8 
loc_8127CC8:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_8127CDA:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_8127CDA
	cmp r7, #0x30 
	blt loc_8127CC8
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_8127DE8 // =unk_20096E0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// initRefs
	ldr R0, off_8127DEC // =dword_8127DF0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	ldr R0, off_8127D74 // =dword_8127D78 
	ldr R1, [SP]
	mov R2, #1
	tst R1, R2
	beq loc_8127D08
	// initRefs
	ldr R0, off_8127D94 // =dword_8127D98 
loc_8127D08:
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	ldr R0, off_8127D34 // =dword_8127D38 
	ldr R1, off_8127D6C // =unk_201BA00 
	ldr R2, off_8127D70 // =decomp_2013A00 
	bl sub_8123300
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	ldr R3, off_8127E0C // =unk_201C200 
	ldr R4, [SP]
	mov R5, #1
	tst R4, R5
	beq loc_8127D28
	// tileRefs
	ldr R3, off_8127E18 // =unk_2028690 
loc_8127D28:
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8127CB8

	add sp, sp, #4
	pop {R4-R7,pc}
off_8127D34: .word dword_8127D38
dword_8127D38: .word 0x86D0460, 0x86D0544, 0x86D0544, 0x86D0544, 0x86D0544
	.word 0x86D0544, 0x86D0544, 0x86D0544, 0x86D0544, 0x86D0544
	.word 0x86D0544, 0x86D0460, 0x86D0544
off_8127D6C: .word unk_201BA00
off_8127D70: .word decomp_2013A00
off_8127D74: .word dword_8127D78
dword_8127D78: .word 0x886C9668, 0x3001A20, 0x2013A00, 0x86C9108, 0x3001960
	.word 0x20, 0x0
off_8127D94: .word dword_8127D98
dword_8127D98: .word 0x886C9694, 0x3001A20, 0x2013A00, 0x86C9128, 0x3001960
	.word 0x20, 0x0
off_8127DB4: .word dword_8127DB8
dword_8127DB8: .word 0x86C9AF4, 0x2, 0x3001A40, 0x20, 0x86C9B34, 0x2, 0x3001A60
	.word 0x20, 0x86C9B14, 0x2, 0x3001A80, 0x20
off_8127DE8: .word unk_20096E0
off_8127DEC: .word dword_8127DF0
dword_8127DF0: .word 0x886D0614, 0x201C700, 0x2013A00, 0x886C8054, 0x6000020
	.word 0x2013A00, 0x886CFFA8
off_8127E0C: .word unk_201C200
	.word decomp_2013A00
	.word 0x886D00C0
off_8127E18: .word unk_2028690
	.word decomp_2013A00
	.word 0x886C9274, 0x6008020, 0x2013A00, 0x886D01DC, 0x2028590
	.word 0x2013A00, 0x886D02D4, 0x6014200, 0x2013A00, 0x886D0264
	.word 0x6014600, 0x2013A00, 0x886C9BD4, 0x6014800
	.word decomp_2013A00
	.word 0x886C9D38, 0x6014980, 0x2013A00, 0x886D3154, 0x2025700
	.word 0x2013A00, 0x886D0430, 0x3001690, 0x2013A00, 0x886D02BC
	.word 0x30016B0, 0x2013A00, 0x86C9D6C, 0x30016D0, 0x20
	.word 0x0
.func
.thumb_func
sub_8127E9C:
	push {r4,lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	bne loc_8127EA8
	mov R4, #2
	b loc_8127EC8
loc_8127EA8:
	bl sub_8127EF4
	mov R1, R10
	ldr R1, [R1,#0x3C]
	ldrb R3, [R5,#0xD]
	mov R2, #1
	tst R3, R2
	beq loc_8127EBC
	ldr R1, [R1,#0x78]
	b loc_8127EBE
loc_8127EBC:
	ldrb R1, [R1,#0x13]
loc_8127EBE:
	cmp R0, R1
	beq loc_8127EC6
	mov R4, #0
	b loc_8127EC8
loc_8127EC6:
	mov R4, #1
loc_8127EC8:
	add r0, r4, #0
	bl sub_8127ED4
	mov R0, #0
	strb R0, [R5,#2]
	pop {r4,pc}
.endfunc // sub_8127E9C

.func
.thumb_func
sub_8127ED4:
	push {lr}
	add r1, r0, #0
	ldr R0, off_8127EF0 // =unk_201BA00 
	ldrb R2, [R5,#0xD]
	mov R3, #1
	tst R2, R3
	beq loc_8127EEA
	add R1, #0xA
	bl loc_803FDA4 // (u16 *scriptArr, u8 scriptID) -> void
	b locret_8127EEE
loc_8127EEA:
	bl chatbox_runScript_803FD9C // (u16 *scriptArr, u8 scriptID) -> void
locret_8127EEE:
	pop {pc}
off_8127EF0: .word unk_201BA00
.endfunc // sub_8127ED4

.func
.thumb_func
sub_8127EF4:
	push {R4-R7,lr}
	ldr R6, dword_8127F48 // =0x1CA0 
	mov R4, #0
loc_8127EFA:
	add r0, r6, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8127F3A
	ldr R1, dword_8127F48 // =0x1CA0 
	sub r0, r6, r1
	ldr R7, dword_8127F4C // =0x1D20 
	add r7, r7, r0
	add r0, r7, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_8127F3A
	ldr R1, dword_8127F48 // =0x1CA0 
	sub r0, r6, r1
	mov R1, #4
	mul R0, R1
	ldr R1, off_8127F50 // =dword_812851C 
	add r0, r0, r1
	ldrb R0, [R0]
	mov R1, #0x80
	tst R0, R1
	beq loc_8127F30
	ldrb R0, [R5,#0xD]
	mov R1, #1
	tst R0, R1
	beq loc_8127F3A
	b loc_8127F38
loc_8127F30:
	ldrb R0, [R5,#0xD]
	mov R1, #1
	tst R0, R1
	bne loc_8127F3A
loc_8127F38:
	add R4, #1
loc_8127F3A:
	add R6, #1
	ldr R1, dword_8127F4C // =0x1D20 
	cmp R6, R1
	blt loc_8127EFA
	add r0, r4, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
dword_8127F48: .word 0x1CA0
dword_8127F4C: .word 0x1D20
off_8127F50: .word dword_812851C
.endfunc // sub_8127EF4

.func
.thumb_func
sub_8127F54:
	push {r4,lr}
	ldrb R1, [R5,#0x1E]
	tst R1, R1
	beq locret_8127F8E
	ldrb R0, [R5,#2]
	cmp R0, #0xC
	beq locret_8127F8E
	ldr R0, dword_8127FC0 // =0xE0000 
	ldrh R1, [R5,#0x20]
	mov R3, #0x10
	mul R1, R3
	ldr R2, dword_8127FC4 // =0x18 
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_8127FC8 // =0x20003 
	ldrb R2, [R5,#0xC]
	ldr R3, off_8127FCC // =dword_8127978 
	ldr R4, dword_8127FD0 // =0x40000000 
	bl sub_811FAF4
	ldrb R1, [R5,#0xE]
	sub R1, #1
	strb R1, [R5,#0xE]
	bne locret_8127F8E
	ldr R1, off_8127FD4 // =dword_8127978+8 
	bl sub_8120CC8
	strb R0, [R5,#0xC]
	strb R1, [R5,#0xE]
locret_8127F8E:
	pop {r4,pc}
.endfunc // sub_8127F54

.func
.thumb_func
sub_8127F90:
	push {r4,lr}
	ldr R0, dword_8127FD8 // =0x420000 
	ldrh R1, [R5,#0x2A]
	mov R3, #0x10
	mul R1, R3
	ldr R2, dword_8127FDC // =0x18 
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_8127FE0 // =0x3 
	ldrb R2, [R5,#0xF]
	ldr R3, off_8127FCC // =dword_8127978 
	ldr R4, dword_8127FD0 // =0x40000000 
	bl sub_811FAF4
	ldrb R1, [R5,#0x10]
	sub R1, #1
	strb R1, [R5,#0x10]
	bne locret_8127FBE
	ldr R1, off_8127FD4 // =dword_8127978+8 
	bl sub_8120CC8
	strb R0, [R5,#0xF]
	strb R1, [R5,#0x10]
locret_8127FBE:
	pop {r4,pc}
dword_8127FC0: .word 0xE0000
dword_8127FC4: .word 0x18
dword_8127FC8: .word 0x20003
off_8127FCC: .word dword_8127978
dword_8127FD0: .word 0x40000000
off_8127FD4: .word dword_8127978+8
dword_8127FD8: .word 0x420000
dword_8127FDC: .word 0x18
dword_8127FE0: .word 0x3
.endfunc // sub_8127F90

.func
.thumb_func
sub_8127FE4:
	push {R4-R7,lr}
	mov R0, #0xE1
	lsl r0, r0, #0x10
	mov R1, #0x14
	orr R0, R1
	ldr R1, dword_8128000 // =0x20002 
	ldrh R2, [R5,#0x1E]
	ldrh R3, [R5,#0x24]
	mov R4, #4
	ldr R6, dword_8128004 // =0x30CA4C 
	mov r7, #0x35 
	bl sub_811FA98
	pop {R4-R7,pc}
dword_8128000: .word 0x20002
dword_8128004: .word 0x30CA4C
.endfunc // sub_8127FE4

.func
.thumb_func
sub_8128008:
	push {R4-R7,lr}
	sub sp, sp, #8
	ldr R0, off_81280B0 // =0x201 
	ldrh R1, [R5,#0x1E]
	cmp R1, #4
	ble loc_8128016
	mov R1, #4
loc_8128016:
	bl sub_81280DC
	ldrh R6, [R5,#0x24]
	ldrh R4, [R5,#0x1E]
	tst R4, R4
	beq loc_81280A8
	cmp R4, #4
	ble loc_8128028
	mov R4, #4
loc_8128028:
	mov R3, #0
	add r7, r3, #0
loc_812802C:
	mov r1, #0x20 
	mul R1, R6
	ldr R0, off_81280AC // =dword_2027590 
	add r0, r0, r1
	str R0, [SP,#4]
	ldrb R1, [R0,#0x14]
	push {R3-R7}
	ldr R0, off_81280B4 // =unk_2025700 
	ldr R2, off_81280C0 // =byte_2017A20 
	add r2, r2, r7
	ldr R3, dword_81280C4 // =0x6004020 
	add r3, r3, r7
	mov R4, #0xB
	mov R5, #1
	ldr R6, off_81280BC // =dword_86A5D60 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R3-R7}
	ldr R0, [SP,#4]
	ldrb R1, [R0,#0x10]
	push {R3-R7}
	ldr R0, off_81280B4 // =unk_2025700 
	ldr R2, off_81280C8 // =unk_2017D20 
	add r2, r2, r7
	ldr R3, dword_81280CC // =0x6004320 
	add r3, r3, r7
	mov R4, #8
	.word 0x4E152501
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R3-R7}
	ldr R0, [SP,#4]
	ldr R1, [R0,#0x1C]
	lsr r1, r1, #0x10
	push {R3-R7}
	mov R0, R10
	ldr R0, [R0,#0x38]
	str R1, [R0,#8]
	ldr R0, off_81280B8 // =unk_201BA00 
	mov R1, #3
	ldr R2, off_81280D0 // =unk_2017F60 
	add r2, r2, r7
	ldr R3, dword_81280D4 // =0x6004560 
	add r3, r3, r7
	mov R4, #2
	mov R5, #1
	ldr R6, off_81280BC // =dword_86A5D60 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R3-R7}
	add R3, #1
	cmp R3, #4
	bge loc_81280A8
	add R6, #1
	ldr R7, off_81280D8 // =0x5C0 
	mul R7, R3
	cmp R3, R4
	blt loc_812802C
loc_81280A8:
	add sp, sp, #8
	pop {R4-R7,pc}
off_81280AC: .word dword_2027590
off_81280B0: .word 0x201
off_81280B4: .word unk_2025700
off_81280B8: .word unk_201BA00
off_81280BC: .word dword_86A5D60
off_81280C0: .word byte_2017A20
dword_81280C4: .word 0x6004020
off_81280C8: .word unk_2017D20
dword_81280CC: .word 0x6004320
off_81280D0: .word unk_2017F60
dword_81280D4: .word 0x6004560
off_81280D8: .word 0x5C0
.endfunc // sub_8128008

.func
.thumb_func
sub_81280DC:
	push {R4-R7,lr}
	sub sp, sp, #0x14
	str R0, [SP,#0xC]
	str R1, [SP,#8]
	mov R2, #7
	lsl r3, r2, #0xc
	str R3, [SP]
	ldr R0, off_812816C // =unk_2026700 
	ldr R1, off_8128184 // =0x170 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	ldr R1, [SP,#8]
	tst R1, R1
	beq loc_8128168
	mov R3, #0
	ldr R0, [SP,#0xC]
loc_81280FC:
	mov R4, #0
	ldr R7, off_812816C // =unk_2026700 
	ldr R1, off_8128180 // =0x5C 
	mul R1, R3
	add r7, r7, r1
	mov R6, #0x17
	lsl r6, r6, #1
	add r6, r6, r7
	ldr R2, [SP]
	bl sub_812818C
loc_8128112:
	add r1, r0, #0
	orr R1, R2
	strh R1, [R7,R4]
	add R0, #1
	add R1, #1
	strh R1, [R6,R4]
	add R0, #1
	add R4, #2
	ldr R1, dword_8128174 // =0x16 
	cmp R4, R1
	blt loc_8128112
	add R0, #2
	add R4, #2
loc_812812C:
	add r1, r0, #0
	ldr R2, dword_8128188 // =0x9000 
	orr R1, R2
	strh R1, [R7,R4]
	add R0, #1
	add R1, #1
	strh R1, [R6,R4]
	add R0, #1
	add R4, #2
	ldr R1, off_8128178 // =0x28 
	cmp R4, R1
	blt loc_812812C
	add R0, #2
	add R4, #2
loc_8128148:
	add r1, r0, #0
	ldr R2, [SP]
	orr R1, R2
	strh R1, [R7,R4]
	add R0, #1
	add R1, #1
	strh R1, [R6,R4]
	add R0, #1
	add R4, #2
	ldr R1, dword_812817C // =0x2E 
	cmp R4, R1
	blt loc_8128148
	add R3, #1
	ldr R1, [SP,#8]
	cmp R3, R1
	blt loc_81280FC
loc_8128168:
	add sp, sp, #0x14
	pop {R4-R7,pc}
off_812816C: .word unk_2026700
	.word 0xC8
dword_8128174: .word 0x16
off_8128178: .word 0x28
dword_812817C: .word 0x2E
off_8128180: .word 0x5C
off_8128184: .word 0x170
dword_8128188: .word 0x9000
.endfunc // sub_81280DC

.func
.thumb_func
sub_812818C:
	push {r0,r1,r3,r4,lr}
	add r4, r2, #0
	ldr R0, off_81281B4 // =dword_2027590 
	ldrh R1, [R5,#0x24]
	add r1, r1, r3
	mov r2, #0x20 
	mul R1, R2
	add r0, r0, r1
	ldr R0, [R0,#0x18]
	lsr r0, r0, #0x10
	ldr R1, dword_81281B8 // =0x1D20 
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_81281AE
	ldr R4, dword_81281BC // =0x8000 
loc_81281AE:
	add r2, r4, #0
	pop {r0,r1,r3,r4,pc}
	.balign 4, 0x00
off_81281B4: .word dword_2027590
dword_81281B8: .word 0x1D20
dword_81281BC: .word 0x8000
.endfunc // sub_812818C

.func
.thumb_func
sub_81281C0:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_81281D8
	// j
	mov R0, #5
	// i
	mov R1, #3
	// cpyOff
	mov R2, #2
	// tileRefs
	ldr R3, off_81281DC // =unk_2026700 
	mov R4, #0x17
	mov R5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81281D8:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_81281DC: .word unk_2026700
.endfunc // sub_81281C0

.func
.thumb_func
sub_81281E0:
	push {R4-R7,lr}
	sub sp, sp, #4
	mov R7, #0
	ldrh R6, [R5,#0x1E]
	tst R6, R6
	beq loc_812823C
	cmp R6, #4
	ble loc_81281F2
	mov R6, #4
loc_81281F2:
	ldrh R2, [R5,#0x24]
	add r2, r2, r7
	mov r1, #0x20 
	mul R1, R2
	ldr R0, off_8128240 // =dword_2027590 
	add r0, r0, r1
	str R0, [SP,#4]
	ldr R3, off_812824C // =byte_8128250 
	lsl r2, r7, #2
	ldrh R1, [R3,R2]
	add R2, #2
	ldrh R0, [R3,R2]
	lsl r4, r1, #0x10
	orr R4, R0
	ldr R0, [SP,#4]
	ldr R0, [R0]
	lsr r0, r0, #0x10
	mov R1, #0x80
	bic R0, R1
	lsl r0, r0, #2
	ldr R2, off_8128248 // =0x210 
	add r2, r2, r0
	ldr R0, dword_8128244 // =0x40000000 
	orr R0, R4
	mov R1, #0xA
	lsl r1, r1, #0xc
	orr R1, R2
	mov R2, #2
	lsl r2, r2, #0xa
	orr R1, R2
	mov R2, #0
	mov R3, #2
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add R7, #1
	cmp R7, R6
	blt loc_81281F2
loc_812823C:
	add sp, sp, #4
	pop {R4-R7,pc}
off_8128240: .word dword_2027590
dword_8128244: .word 0x40000000
off_8128248: .word 0x210
off_812824C: .word byte_8128250
byte_8128250: .byte 0x18, 0x0, 0x18, 0x0, 0x18, 0x0, 0x28, 0x0, 0x18, 0x0, 0x38
	.byte 0x0, 0x18, 0x0, 0x48, 0x0
.endfunc // sub_81281E0

.func
.thumb_func
sub_8128260:
	push {lr}
	ldr R0, off_8128274 // =unk_2026870 
	ldr R1, off_812827C // =0x100 
	ldr R2, off_8128278 // =dword_8127978+18 
	ldrb R2, [R2]
	lsl r2, r2, #8
	bl sub_800096C
	pop {pc}
	.balign 4, 0x00
off_8128274: .word unk_2026870
off_8128278: .word dword_8127978+0x12
off_812827C: .word 0x100
.endfunc // sub_8128260

.func
.thumb_func
sub_8128280:
	push {R4-R7,lr}
	ldrh R7, [R5,#0x24]
	ldrh R4, [R5,#0x1E]
	tst R4, R4
	beq locret_81282B6
	mov R5, #0
loc_812828C:
	ldr R6, off_81282B8 // =dword_2027590 
	add r2, r7, r5
	mov r1, #0x20 
	mul R2, R1
	add r6, r6, r2
	ldr R0, [R6,#0x18]
	lsr r0, r0, #0x10
	ldr R1, dword_81282BC // =0x1DA0 
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_81282AC
	add r0, r5, #0
	bl sub_81282C0
loc_81282AC:
	add R5, #1
	cmp R5, #4
	bge locret_81282B6
	cmp R5, R4
	blt loc_812828C
locret_81282B6:
	pop {R4-R7,pc}
off_81282B8: .word dword_2027590
dword_81282BC: .word 0x1DA0
.endfunc // sub_8128280

.func
.thumb_func
sub_81282C0:
	push {R4-R7,lr}
	lsl r7, r0, #1
	ldr R4, off_8128310 // =unk_2026870 
	ldrb R4, [R4,R7]
	ldr R1, dword_8128300 // =0x17 
	mov R2, #0x10
	mul R2, R0
	add r1, r1, r2
	ldr R0, dword_81282FC // =0x17 
	lsl r0, r0, #0x10
	orr R0, R1
	ldr R1, dword_8128304 // =0x10002 
	add r2, r4, #0
	ldr R3, off_8128308 // =dword_8127978+12 
	ldr R4, dword_812830C // =0x4000 
	bl sub_811FAF4
	ldr R4, off_8128310 // =unk_2026870 
	add r6, r7, #1
	ldrb R1, [R4,R6]
	sub R1, #1
	strb R1, [R4,R6]
	bne locret_81282F8
	ldr R1, dword_8128314 // =dword_8127978 
	bl sub_8120CC8
	strb R0, [R4,R7]
	strb R1, [R4,R6]
locret_81282F8:
	pop {R4-R7,pc}
	.balign 4, 0x00
dword_81282FC: .word 0x17
dword_8128300: .word 0x17
dword_8128304: .word 0x10002
off_8128308: .word dword_8127978+0xC
dword_812830C: .word 0x4000
off_8128310: .word unk_2026870
dword_8128314: .word 0x812798A
.endfunc // sub_81282C0

.func
.thumb_func
sub_8128318:
	push {r4,lr}
	ldr R4, off_812834C // =dword_2027590 
	ldrh R0, [R5,#0x20]
	ldrh R1, [R5,#0x24]
	add r0, r0, r1
	mov r1, #0x20 
	mul R0, R1
	add r4, r4, r0
	ldr R1, [R4,#0x18]
	lsr r4, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr R0, off_8128350 // =aIiijjjjkkkkkjj 
	ldrb R2, [R5,#0xD]
	mov R3, #1
	tst R2, R3
	beq loc_8128340
	bl chatbox_803FE10
	b loc_8128344
loc_8128340:
	bl chatbox_runScript_803FE08 // (u16 *scriptArr, u8 scriptID) -> void
loc_8128344:
	mov R0, #8
	strb R0, [R5,#2]
	pop {r4,pc}
	.balign 4, 0x00
off_812834C: .word dword_2027590
off_8128350: .word aIiijjjjkkkkkjj
.endfunc // sub_8128318

	mov R1, #1
	ldrb R0, [R5,#0xD]
	tst R0, R1
	mov PC, LR
	push {lr}
	ldrh R4, [R5,#0x1E]
	sub R4, #1
	ldr R6, off_812839C // =byte_2006530 
loc_8128364:
	ldrb R0, [R6,R4]
	ldr R1, dword_8128398 // =0x1D20 
	add r0, r0, r1
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_812837E
	sub R4, #1
	bgt loc_8128364
	mov R0, #0
	strh R0, [R5,#0x20]
	strh R0, [R5,#0x24]
	b locret_8128394
loc_812837E:
	cmp R4, #4
	bgt loc_812838A
	strh R4, [R5,#0x20]
	mov R0, #0
	strh R0, [R5,#0x24]
	b locret_8128394
loc_812838A:
	add R4, #1
	sub R4, #5
	strh R4, [R5,#0x24]
	mov R0, #4
	strh R0, [R5,#0x20]
locret_8128394:
	pop {pc}
	.balign 4, 0x00
dword_8128398: .word 0x1D20
off_812839C: .word byte_2006530
.func
.thumb_func
sub_81283A0:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	str R5, [SP,#4]
	ldr R0, off_8128474 // =dword_2027590 
	add r4, r0, #0
	ldr R1, dword_8128478 // =0x1000 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	bl sub_81284B4
	ldrb R2, [R5,#0xD]
	mov R3, #1
	tst R2, R3
	beq loc_81283BE
	add r1, r0, #0
loc_81283BE:
	str R1, [SP,#8]
	ldr R6, off_812847C // =dword_2001140 
	ldrb R6, [R6]
	tst R6, R6
	beq loc_812846E
	mov R0, #0
	strh R0, [R5,#0x1E]
	ldr R7, off_8128480 // =byte_2006530 
loc_81283CE:
	ldrb R0, [R7]
	str R0, [SP]
	mov R3, #4
	mul R3, R0
	ldr R2, off_8128484 // =dword_812851C 
	add r2, r2, r3
	ldrb R0, [R2]
	ldr R1, [SP,#4]
	ldrb R1, [R1,#0xD]
	mov R3, #1
	tst R1, R3
	beq loc_8128402
	mov R1, #0x80
	tst R0, R1
	beq loc_8128454
	ldr R1, [SP,#8]
	push {r0}
	add r5, r1, #0
	lsl r0, r5, #0x10
	orr R0, R5
	str R0, [R4,#0x1C]
	mvn R5, R5
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	pop {r0}
	b loc_812841C
loc_8128402:
	mov R1, #0x80
	tst R0, R1
	bne loc_8128454
	ldr R1, [SP,#8]
	push {r0}
	add r5, r1, #0
	lsl r0, r5, #0x10
	orr R0, R5
	str R0, [R4,#0x1C]
	mvn R5, R5
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	pop {r0}
loc_812841C:
	sub R1, #1
	str R1, [SP,#8]
	lsl r0, r0, #0x10
	orr R0, R5
	str R0, [R4]
	ldrb R0, [R2,#1]
	strb R0, [R4,#4]
	ldrb R0, [R2,#2]
	lsl r0, r0, #0x10
	orr R0, R5
	str R0, [R4,#8]
	ldrb R0, [R2,#3]
	lsl r0, r0, #0x10
	orr R0, R5
	str R0, [R4,#0xC]
	ldr R0, [SP]
	lsl r1, r0, #1
	strb R1, [R4,#0x10]
	add R1, #1
	strb R1, [R4,#0x14]
	lsl r1, r0, #0x10
	orr R1, R0
	str R1, [R4,#0x18]
	ldr R1, [SP,#4]
	ldrh R0, [R1,#0x1E]
	add R0, #1
	strh R0, [R1,#0x1E]
	add r4, #0x20 
loc_8128454:
	add R7, #1
	sub R6, #1
	bgt loc_81283CE
	ldr R0, off_8128488 // =byte_2000FE0 
	ldrb R2, [R0]
	ldrb R3, [R0,#0x1] // (byte_2000FE1 - 0x2000FE0)
	ldr R0, off_8128474 // =dword_2027590 
	ldr R1, [SP,#4]
	ldrh R1, [R1,#0x1E]
	tst R1, R1
	beq loc_812846E
	bl loc_8120018
loc_812846E:
	add sp, sp, #0xc
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8128474: .word dword_2027590
dword_8128478: .word 0x1000
off_812847C: .word dword_2001140
off_8128480: .word byte_2006530
off_8128484: .word dword_812851C
off_8128488: .word byte_2000FE0
.endfunc // sub_81283A0

.func
.thumb_func
sub_812848C:
	push {r4,r5,lr}
	// j
	mov R0, #9
	// i
	mov R1, #1
	// cpyOff
	mov R2, #0
	// tileRefs
	ldr R3, off_81284A0 // =unk_2028590 
	mov R4, #8
	mov R5, #0xB
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_812848C

	pop {r4,r5,pc}
off_81284A0: .word unk_2028590
.func
.thumb_func
sub_81284A4:
	ldr R0, off_81284B0 // =byte_2000FE0 
	mov R1, #7
	strb R1, [R0]
	mov R1, #4
	strb R1, [R0,#0x1] // (byte_2000FE1 - 0x2000FE0)
	mov PC, LR
off_81284B0: .word byte_2000FE0
.endfunc // sub_81284A4

.func
.thumb_func
sub_81284B4:
	push {R4-R7,lr}
	sub sp, sp, #8
	mov R0, #0
	str R0, [SP]
	str R0, [SP,#4]
	ldr R0, off_81284F4 // =dword_2001140 
	ldr R4, [R0]
	ldr R7, off_81284F8 // =byte_2006530 
loc_81284C4:
	ldrb R0, [R7]
	mov R3, #4
	mul R3, R0
	ldr R2, off_81284FC // =dword_812851C 
	add r2, r2, r3
	ldrb R0, [R2]
	mov R1, #0x80
	tst R1, R0
	beq loc_81284DE
	ldr R0, [SP]
	add R0, #1
	str R0, [SP]
	b loc_81284E4
loc_81284DE:
	ldr R0, [SP,#4]
	add R0, #1
	str R0, [SP,#4]
loc_81284E4:
	add R7, #1
	sub R4, #1
	bgt loc_81284C4
	ldr R0, [SP]
	ldr R1, [SP,#4]
	add sp, sp, #8
	pop {R4-R7,pc}
	.balign 4, 0x00
off_81284F4: .word dword_2001140
off_81284F8: .word byte_2006530
off_81284FC: .word dword_812851C
.endfunc // sub_81284B4

.func
.thumb_func
sub_8128500:
	push {lr}
	ldr R0, off_8128514 // =byte_2000FE0 
	ldrb R2, [R0]
	ldrb R3, [R0,#0x1] // (byte_2000FE1 - 0x2000FE0)
	ldr R0, off_8128518 // =dword_2027590 
	ldrh R1, [R5,#0x1E]
	bl loc_8120018
	pop {pc}
	.balign 4, 0x00
off_8128514: .word byte_2000FE0
off_8128518: .word dword_2027590
dword_812851C: .word 0x2A03FF04, 0x922FF00, 0x4E510303, 0x36040301, 0x20140483
	.word 0x260C0403, 0x10B0404, 0xE0404, 0x501B0404, 0x24110404
	.word 0x8210400, 0x3180404, 0x16520404, 0xB010401, 0x25130401
	.word 0x3E200401, 0x131F0401, 0x140D0401, 0xA000401, 0x43500401
	.word 0x48100401, 0x4B0A0401, 0x23190401, 0x121C0401, 0x4F450402
	.word 0x1A2D0402, 0x152B0402, 0x1D2F0402, 0x403D0402, 0x1F310402
	.word 0x46410402, 0x45400402, 0xE280402, 0x47420402, 0x2B340402
	.word 0x2C350402, 0x4A430402, 0x22320402, 0x413E0402, 0x6260402
	.word 0x7270402, 0x112A0402, 0x52470402, 0x37370402, 0x1B2E0402
	.word 0x51460402, 0x3A390402, 0x443F0402, 0x34360402, 0x29330402
	.word 0x1E300402, 0x192C0402, 0x3B3A0402, 0x4C440402, 0xF290402
	.word 0x3D3C0402, 0x39380402, 0x2250402, 0x3C3B0402, 0x38240403
	.word 0x56120404, 0xD1A0400, 0x271D0484, 0x54080484, 0x4D170484
	.word 0x28560484, 0x53070484, 0x4530484, 0x3F060484, 0x21150483
	.word 0x10540484, 0x55090484, 0x42160484, 0x1C550484, 0x5050484
	.word 0x491E0484, 0xC020401, 0x35230404, 0x324E0404, 0x334F0404
	.word 0x314D0404, 0x2F4B0404, 0x18480404, 0x2E4A0404, 0x2D490404
	.word 0x304C0404, 0x170F0404, 0xC242C242, 0xC242C242, 0xC242C242
	.word 0xC246C246, 0xC246C246, 0xC246C246, 0xC24AC24A, 0xC24AC24A
	.word 0xC24AC24A, 0xC2520000, 0xC252C252, 0xC252C252, 0xC251C252
	.word 0xC251C251, 0xC251C251, 0xC250C251, 0xC250C250, 0xC250C250
	.word 0xC250, 0x2030100, 0x7060405, 0xA0B0908, 0x100F0E0D
	.word 0x14131211, 0x1D1C1B1A, 0x1817161E, 0x2C2B2515, 0x302F2E2D
	.word 0x3B343231, 0x193E3D3C, 0x423A331F, 0x22453938, 0x413F3729
	.word 0x46352826, 0x40444336, 0x270C2A21, 0x47242320, 0x4B4A4948
	.word 0x4F4E4D4C, 0x53525150, 0x57565554, 0x5B5A5958, 0x5F5E5D5C
	.word 0x63626160, 0x67666564, 0x6B6A6968
.endfunc // sub_8128500

.func
.thumb_func
sub_8128730:
	push {lr}
	ldr R0, off_8128740 // =off_8128744 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.byte 0, 0
off_8128740: .word off_8128744
off_8128744: .word sub_8128750+1
	.word loc_81287B4+1
	.word sub_81288E4+1
.endfunc // sub_8128730

.func
.thumb_func
sub_8128750:
	push {lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #0x10
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_81287B0 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	bl sub_81288FC
.endfunc // sub_8128750

	mov R0, #0
	strb R0, [R5,#0xF]
	strb R0, [R5,#0x10]
	mov R0, #0xFF
	strh R0, [R5,#0x26]
	strh R0, [R5,#0x22]
	strb R0, [R5,#0xE]
	bl sub_81289C4
	bl sub_8128A44
	bl sub_8128AB0
	bl sub_8128B34
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
dword_81287B0: .word 0x1F40
loc_81287B4:
	push {lr}
	ldr R0, off_81287CC // =off_81287D0 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_8128C20
	bl sub_8128B34
	pop {pc}
	.balign 4, 0x00
off_81287CC: .word off_81287D0
off_81287D0: .word sub_81287DC+1
	.word sub_8128800+1
	.word sub_81288BC+1
.func
.thumb_func
sub_81287DC:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_81287E8
	mov R0, #4
	strb R0, [R5,#2]
loc_81287E8:
	bl sub_8128B4C
	bl sub_8128B98
	ldrh R0, [R5,#0x24]
	strh R0, [R5,#0x26]
	ldrh R0, [R5,#0x20]
	strh R0, [R5,#0x22]
	ldrb R0, [R5,#0xD]
	strb R0, [R5,#0xE]
	pop {pc}
	.byte 0, 0
.endfunc // sub_81287DC

.func
.thumb_func
sub_8128800:
	push {r7,lr}
	ldrh R0, [R5,#0x24]
	strh R0, [R5,#0x26]
	ldrh R0, [R5,#0x20]
	strh R0, [R5,#0x22]
	ldrb R0, [R5,#0xD]
	strb R0, [R5,#0xE]
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	bne loc_812881C
	mov R0, #0xA
	bl sub_811F7EC
	bne loc_812882C
loc_812881C:
	mov R0, #8
	bl chatbox_8045F3C
	beq loc_8128834
	mov R0, #0xA
	bl sub_811F7EC
	beq loc_8128834
loc_812882C:
	mov R0, #8
	bl sub_811FB64
	b loc_81288B0
loc_8128834:
	mov R1, #2
	ldrh R2, [R5,#0x1E]
	tst R2, R2
	beq loc_81288B0
	ldrh R0, [R5,#0x24]
	lsl r0, r0, #1
	ldrh R3, [R5,#0x20]
	lsl r3, r3, #1
	add r0, r0, r3
	sub r2, r2, r0
	cmp R2, #2
	bge loc_812884E
	mov R1, #1
loc_812884E:
	mov R2, #1
	ldrb R3, [R5,#0xD]
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	bl sub_811FA0C
	ldrb R1, [R5,#0xD]
	cmp R0, R1
	beq loc_8128866
	strb R0, [R5,#0xD]
	b loc_81288B0
loc_8128866:
	ldrh R7, [R5,#0x1E]
	add r0, r7, #1
	lsr r0, r0, #1
	strh R0, [R5,#0x1E]
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #4
	mov R2, #0
	mov R3, #0
	bl sub_811F7F8
	strh R7, [R5,#0x1E]
	tst R0, R0
	beq loc_81288A4
	ldrh R0, [R5,#0x24]
	lsl r0, r0, #1
	ldrh R1, [R5,#0x20]
	add R1, #1
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh R1, [R5,#0x1E]
	cmp R0, R1
	ble loc_812889A
	mov R0, #0
	strb R0, [R5,#0xD]
loc_812889A:
	bl sub_8128A44
	bl sub_8128AB0
	b loc_81288B0
loc_81288A4:
	mov R0, #1
	bl sub_811F7EC
	beq loc_81288B0
	bl sub_8128BF0
loc_81288B0:
	bl sub_8128B4C
	bl sub_8128B98
	pop {r7,pc}
	.balign 4, 0x00
.endfunc // sub_8128800

.func
.thumb_func
sub_81288BC:
	push {r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81288DE
	add r0, r5, #0
	ldr R1, off_81288E0 // =unk_2037780 
	mov R2, #0x80
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	// memBlock
	add r0, r5, #0
	// size
	mov R1, #0x80
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov r0, #0x30 
	strb R0, [R5]
	bl chatbox_8040818
locret_81288DE:
	pop {r7,pc}
off_81288E0: .word unk_2037780
.endfunc // sub_81288BC

.func
.thumb_func
sub_81288E4:
	push {lr}
	bl sub_8128B4C
	bl sub_8128C20
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81288F8
	bl sub_811F708
locret_81288F8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_81288E4

.func
.thumb_func
sub_81288FC:
	push {R4-R7,lr}
	ldr R4, off_8128970 // =unk_20096E0 
	mov R6, #0
	mov R7, #0
	ldr R5, off_812894C // =dword_8128950 
loc_8128906:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_8128918:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_8128918
	cmp r7, #0x20 
	blt loc_8128906
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_8128970 // =unk_20096E0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// initRefs
	ldr R0, off_8128974 // =dword_8128978 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_8128994 // =unk_201BA00 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_81288FC

	pop {R4-R7,pc}
off_812894C: .word dword_8128950
dword_8128950: .word 0x86C9108, 0x2, 0x3001960, 0x20, 0x86C9B54, 0x2, 0x3001A40
	.word 0x20
off_8128970: .word unk_20096E0
off_8128974: .word dword_8128978
dword_8128978: .word 0x886C8054, 0x6000020, 0x2013A00, 0x8873DE4C, 0x201C1B0
	.word 0x2013A00, 0x886D64F0
off_8128994: .word unk_201BA00
	.word decomp_2013A00
	.word 0x886C9BD4, 0x6014840, 0x2013A00, 0x886C9D38, 0x6014800
	.word decomp_2013A00
	.word 0x86C9D6C, 0x30016D0, 0x20, 0x0
.func
.thumb_func
sub_81289C4:
	push {R4-R7,lr}
	ldr R0, off_8128A24 // =word_201BF00 
	ldr R1, dword_8128A28 // =0xDE 
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	mov R6, #0
	mov R4, #0
loc_81289D2:
	ldr R7, off_8128A24 // =word_201BF00 
	add r0, r4, #0
	bl sub_803CE28
	beq loc_81289EC
	mov R1, #2
	ldr R2, off_8128A2C // =dword_812851C+424 
	ldrb R2, [R2,R4]
	mul R1, R2
	add r7, r7, r1
	strb R4, [R7]
	strb R0, [R7,#1]
	add R6, #1
loc_81289EC:
	add R4, #1
	cmp r4, #0x6f 
	ble loc_81289D2
	strh R6, [R5,#0x1E]
	ldr R6, off_8128A24 // =word_201BF00 
	ldr R7, dword_8128A34 // = 
	mov R4, #0
loc_81289FA:
	ldrh R0, [R6]
	tst R0, R0
	bne loc_8128A18
	add r0, r6, #0
	add r1, r6, #2
loc_8128A04:
	ldrh R2, [R1]
	tst R2, R2
	beq loc_8128A12
	strh R2, [R0]
	mov R2, #0
	strh R2, [R1]
	add R0, #2
loc_8128A12:
	add R1, #2
	cmp R1, R7
	blt loc_8128A04
loc_8128A18:
	add R6, #2
	add R4, #1
	ldr R0, dword_8128A30 // =0x6F 
	cmp R4, R0
	blt loc_81289FA
	pop {R4-R7,pc}
off_8128A24: .word word_201BF00
dword_8128A28: .word 0xDE
off_8128A2C: .word dword_812851C+0x1A8
dword_8128A30: .word 0x6F
dword_8128A34: .word 0x201BFDE
.endfunc // sub_81289C4

	push {lr}
	ldr R0, dword_8128AA0 // =0x6004020 
	mov r1, #0x20 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.func
.thumb_func
sub_8128A44:
	push {R4-R7,lr}
	ldr R0, off_8128A90 // =word_201BF00 
	ldr R7, off_8128A90 // =word_201BF00 
	ldrh R4, [R5,#0x24]
	lsl r4, r4, #1
	mov R6, #8
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_8128A8E
	sub r0, r0, r4
	cmp R0, #8
	bge loc_8128A5E
	add r6, r0, #0
loc_8128A5E:
	mov R5, #0
loc_8128A60:
	push {R4-R7}
	mov R1, #2
	mul R1, R4
	add r1, r1, r7
	ldrb R1, [R1]
	ldr R3, off_8128A9C // =0x280 
	mul R3, R5
	ldr R2, off_8128A98 // =byte_2017A00 
	add r2, r2, r3
	ldr R0, dword_8128AA0 // =0x6004020 
	add r3, r3, r0
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_8128AA4 // =dword_86A5D60 
	ldr R0, off_8128A94 // =byte_873D9FC 
	mov R7, #0
	bl render_graphicalText_8045F8C
	pop {R4-R7}
	add R4, #1
	add R5, #1
	sub R6, #1
	bne loc_8128A60
locret_8128A8E:
	pop {R4-R7,pc}
off_8128A90: .word word_201BF00
off_8128A94: .word byte_873D9FC
off_8128A98: .word byte_2017A00
off_8128A9C: .word 0x280
dword_8128AA0: .word 0x6004020
off_8128AA4: .word dword_86A5D60
	.word 0x1420, 0xB8
.endfunc // sub_8128A44

.func
.thumb_func
sub_8128AB0:
	push {R4-R7,lr}
	sub sp, sp, #4
	ldrh R1, [R5,#0x24]
	lsl r1, r1, #1
	ldrh R0, [R5,#0x1E]
	sub r0, r0, r1
	str R0, [SP]
	ldr R0, off_8128B24 // =unk_201C040 
	add r7, r0, #0
	ldr R1, off_8128B28 // =0x170 
	ldr R2, dword_8128B30 // =0x7200 
	bl sub_800096C
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq loc_8128B1E
	ldr R6, dword_8128B2C // =0x2E 
	add r6, r6, r7
	ldr R0, dword_8128B30 // =0x7200 
	add R0, #1
	mov R2, #4
loc_8128ADA:
	mov R4, #0
	mov R3, #0
loc_8128ADE:
	strh R0, [R7,R4]
	add R0, #1
	strh R0, [R6,R4]
	add R0, #1
	add R4, #2
	add R3, #2
	cmp R3, #0x14
	blt loc_8128ADE
	ldr R3, [SP]
	sub R3, #1
	beq loc_8128B1E
	str R3, [SP]
	add R4, #6
	mov R3, #0
loc_8128AFA:
	strh R0, [R7,R4]
	add R0, #1
	strh R0, [R6,R4]
	add R0, #1
	add R4, #2
	add R3, #2
	cmp R3, #0x14
	blt loc_8128AFA
	ldr R3, [SP]
	sub R3, #1
	beq loc_8128B1E
	str R3, [SP]
	ldr R1, dword_8128B2C // =0x2E 
	lsl r1, r1, #1
	add r7, r7, r1
	add r6, r6, r1
	sub R2, #1
	bne loc_8128ADA
loc_8128B1E:
	add sp, sp, #4
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8128B24: .word unk_201C040
off_8128B28: .word 0x170
dword_8128B2C: .word 0x2E
dword_8128B30: .word 0x7200
.endfunc // sub_8128AB0

.func
.thumb_func
sub_8128B34:
	push {R4-R7,lr}
	// j
	mov R0, #4
	// i
	mov R1, #3
	// cpyOff
	mov R2, #2
	// tileRefs
	ldr R3, off_8128B48 // =unk_201C040 
	mov R4, #0x17
	mov R5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8128B34

	pop {R4-R7,pc}
off_8128B48: .word unk_201C040
.func
.thumb_func
sub_8128B4C:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_8128B7C
	ldr R0, dword_8128B80 // =0x100000 
	ldrb R1, [R5,#0xD]
	mov R2, #1
	tst R1, R2
	beq loc_8128B62
	ldr R2, dword_8128B84 // =0x680000 
	add r0, r0, r2
loc_8128B62:
	ldrh R1, [R5,#0x20]
	mov R3, #0x10
	mul R1, R3
	ldr R2, dword_8128B88 // =0x18 
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_8128B8C // =0x20002 
	ldrb R2, [R5,#0xC]
	ldr R3, off_8128B90 // =dword_812851C+348 
	ldr R4, dword_8128B94 // =0x40000000 
	bl sub_811FAF4
	strb R0, [R5,#0xC]
locret_8128B7C:
	pop {R4-R7,pc}
	.byte 0, 0
dword_8128B80: .word 0x100000
dword_8128B84: .word 0x680000
dword_8128B88: .word 0x18
dword_8128B8C: .word 0x20002
off_8128B90: .word dword_812851C+0x15C
dword_8128B94: .word 0x40000000
.endfunc // sub_8128B4C

.func
.thumb_func
sub_8128B98:
	push {lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_8128BE4
	ldrb R0, [R5,#0xD]
	ldrb R1, [R5,#0xE]
	cmp R0, R1
	bne loc_8128BB8
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x26]
	cmp R0, R1
	bne loc_8128BB8
	ldrh R0, [R5,#0x20]
	ldrh R1, [R5,#0x22]
	cmp R0, R1
	beq locret_8128BE4
loc_8128BB8:
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x20]
	add r0, r0, r1
	lsl r0, r0, #1
	ldrb R1, [R5,#0xD]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr R1, off_8128BEC // =word_201BF00 
	ldrb R0, [R1,R0]
	cmp r0, #0x2c 
	bne loc_8128BDC
	push {r0}
	bl sub_803CE28
	mov R1, R10
	ldr R1, [R1,#0x2C]
	str R0, [R1,#0x4C]
	pop {r0}
loc_8128BDC:
	add r1, r0, #0
	ldr R0, off_8128BE8 // =unk_201C1B0 
	bl chatbox_803FD78 // (u16 *scriptArr, u8 scriptID) -> void
locret_8128BE4:
	pop {pc}
	.balign 4, 0x00
off_8128BE8: .word unk_201C1B0
off_8128BEC: .word word_201BF00
.endfunc // sub_8128B98

.func
.thumb_func
sub_8128BF0:
	push {lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_8128C1A
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x20]
	add r0, r0, r1
	lsl r0, r0, #1
	ldrb R1, [R5,#0xD]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr R1, off_8128C1C // =word_201BF00 
	ldrb R0, [R1,R0]
	cmp r0, #0x40 
	bne locret_8128C1A
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8128C1A:
	pop {pc}
off_8128C1C: .word word_201BF00
.endfunc // sub_8128BF0

.func
.thumb_func
sub_8128C20:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x1E]
	lsr r1, r0, #1
	lsl r2, r1, #1
	sub r2, r0, r2
	add r2, r2, r1
	mov R0, #0xE1
	lsl r0, r0, #0x10
	mov R1, #0x13
	orr R0, R1
	ldr R1, dword_8128C44 // =0x20002 
	ldrh R3, [R5,#0x24]
	mov R4, #4
	ldr R6, dword_8128C48 // =0xC240 
	mov r7, #0x37 
	bl sub_811FA98
	pop {R4-R7,pc}
dword_8128C44: .word 0x20002
dword_8128C48: .word 0xC240
.endfunc // sub_8128C20

	push {lr}
	ldrh R0, [R5,#0x24]
	tst R0, R0
	beq loc_8128C6A
	mov R0, #0xE3
	lsl r0, r0, #0x10
	mov R1, #0xD
	orr R0, R1
	ldr R1, dword_8128C98 // =0x20002 
	ldrb R2, [R5,#0xF]
	ldr R3, dword_8128C9C // =dword_812851C 
	ldr R4, dword_8128CA0 // =0x0 
	bl sub_811FAF4
	strb R0, [R5,#0xF]
loc_8128C6A:
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x1E]
	lsr r2, r1, #1
	lsl r3, r2, #1
	sub r1, r1, r3
	add r1, r1, r2
	sub R1, #4
	ble locret_8128C94
	cmp R0, R1
	bge locret_8128C94
	mov R0, #0xE3
	lsl r0, r0, #0x10
	mov r1, #0x55 
	orr R0, R1
	ldr R1, dword_8128C98 // =0x20002 
	ldrb R2, [R5,#0x10]
	ldr R3, dword_8128C9C // =dword_812851C 
	ldr R4, dword_8128CA4 // =0x20000000 
	bl sub_811FAF4
	strb R0, [R5,#0x10]
locret_8128C94:
	pop {pc}
	.balign 4, 0x00
dword_8128C98: .word 0x20002
dword_8128C9C: .word 0x812869E
dword_8128CA0: .word 0x0
dword_8128CA4: .word 0x20000000
dword_8128CA8: .word 0xB368B36C, 0xFFFFB364, 0x37, 0x141, 0xFFFFFFFF
loc_8128CBC:
	push {lr}
	ldr R0, off_8128CCC // =off_8128CD0 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8128CCC: .word off_8128CD0
off_8128CD0: .word sub_8128CD8+1
	.word sub_8128DCC+1
.func
.thumb_func
sub_8128CD8:
	push {R4-R7,lr}
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov R1, #0x97
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov R1, #0xAD
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #8
	bl sub_80015FC
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_8128D98 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	bl sub_8128F04
	ldr R0, off_8128D9C // =unk_201BB60 
	ldr R1, dword_8128DA0 // =0x9070 
	ldr R2, dword_8128DA4 // =0x6008E00 
	bl sub_802B4D4
	ldr R0, off_8128D9C // =unk_201BB60 
	ldr R1, dword_8128DBC // =0x9060 
	ldr R2, dword_8128DC0 // =0x6008C00 
	bl sub_8129104
	bl sub_8046664 // () -> void
	// a1
	ldr R0, off_8128DC8 // =dword_8128CA8+8 
	bl sub_80465A0 // (void *a1) -> void
	ldr R0, off_8128DB0 // =word_201BDB8 
	bl sub_802B2A0
	strh R0, [R5,#0x1E]
	tst R0, R0
	beq loc_8128D4A
	ldr R0, off_8128D9C // =unk_201BB60 
	ldr R1, dword_8128DA8 // =0x90D4 
	ldr R2, dword_8128DAC // =0x6009A80 
	bl sub_802B51C
loc_8128D4A:
	mov R0, #0
	ldr R1, off_8128DB4 // =dword_8129180 
	bl sub_8120CC8
	strb R0, [R5,#0xC]
	strb R1, [R5,#0xD]
	mov R0, #0
	strb R0, [R5,#0xF]
	mvn R0, R0
	strb R0, [R5,#0x10]
	strb R0, [R5,#0x10]
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq loc_8128D7C
	ldr R0, off_8128DB0 // =word_201BDB8 
	ldr R1, off_8128DB8 // =decomp_2013A00 
	bl sub_802B358
	ldr R0, off_8128DC4 // =unk_201BA00 
	ldr R1, off_8128DB0 // =word_201BDB8 
	bl sub_802B438
	ldr R0, off_8128DB0 // =word_201BDB8 
	bl sub_81290A4
loc_8128D7C:
	bl sub_8128F10
.endfunc // sub_8128CD8

	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #4
	strb R0, [R5,#1]
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
dword_8128D98: .word 0x1F40
off_8128D9C: .word unk_201BB60
dword_8128DA0: .word 0x9070
dword_8128DA4: .word 0x6008E00
dword_8128DA8: .word 0x90D4
dword_8128DAC: .word 0x6009A80
off_8128DB0: .word word_201BDB8
off_8128DB4: .word dword_8129180
off_8128DB8: .word decomp_2013A00
dword_8128DBC: .word 0x9060
dword_8128DC0: .word 0x6008C00
off_8128DC4: .word unk_201BA00
off_8128DC8: .word dword_8128CA8+8
.func
.thumb_func
sub_8128DCC:
	push {lr}
	ldr R0, off_8128DE4 // =off_8128DE8 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {pc}
	.balign 4, 0x00
off_8128DE4: .word off_8128DE8
off_8128DE8: .word sub_8128DF4+1
	.word sub_8128E2C+1
	.word sub_8128ED4+1
.endfunc // sub_8128DCC

.func
.thumb_func
sub_8128DF4:
	push {lr}
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_8128E14
	ldr R0, off_8128E28 // =word_201BDB8 
	ldrh R0, [R0]
	mov R1, #0
	push {r0}
	bl sub_811C2A8
	pop {r0}
	mov R1, #1
	bl sub_811DC88
	mov R0, #1
	strb R0, [R5,#3]
loc_8128E14:
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8128E1E
	mov R0, #4
	strb R0, [R5,#2]
loc_8128E1E:
	bl sub_8128FF0
	bl sub_812907C
	pop {pc}
off_8128E28: .word word_201BDB8
.endfunc // sub_8128DF4

.func
.thumb_func
sub_8128E2C:
	push {lr}
	ldrh R0, [R5,#0x24]
	strh R0, [R5,#0x26]
	ldrh R0, [R5,#0x20]
	strh R0, [R5,#0x22]
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #5
	mov R2, #0
	mov R3, #0
	bl sub_811F7F8
	tst R0, R0
	beq loc_8128EA4
	ldrh R0, [R5,#0x24]
	ldrh R1, [R5,#0x26]
	cmp R0, R1
	bne loc_8128E5C
	ldrh R0, [R5,#0x20]
	ldrh R1, [R5,#0x22]
	cmp R0, R1
	bne loc_8128E64
	b loc_8128EB8
loc_8128E5C:
	ldr R0, off_8128EC4 // =word_201BDB8 
	ldr R1, off_8128EC8 // =decomp_2013A00 
	bl sub_802B358
loc_8128E64:
	ldr R0, off_8128ED0 // =unk_201BA00 
	ldr R1, off_8128EC4 // =word_201BDB8 
	bl sub_802B438
	ldr R0, off_8128EC4 // =word_201BDB8 
	bl sub_81290A4
	ldr R0, off_8128EC4 // =word_201BDB8 
	ldrh R1, [R5,#0x24]
	ldrh R2, [R5,#0x20]
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh R0, [R0,R1]
	ldr R1, dword_8128ECC // =0xFFFF 
	cmp R0, R1
	bne loc_8128E92
	mov R0, #0
	bl sub_811C4D8
	mov R0, #1
	bl sub_811DF0C
	b loc_8128EB8
loc_8128E92:
	mov R1, #0
	push {r0}
	bl sub_811C2A8
	pop {r0}
	mov R1, #1
	bl sub_811DC88
	b loc_8128EB8
loc_8128EA4:
	mov R0, #2
	bl sub_811F7EC
	beq loc_8128EB8
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #8
	strb R0, [R5,#2]
loc_8128EB8:
	bl sub_8128FF0
	bl sub_812907C
	pop {pc}
	.balign 4, 0x00
off_8128EC4: .word word_201BDB8
off_8128EC8: .word decomp_2013A00
dword_8128ECC: .word 0xFFFF
off_8128ED0: .word unk_201BA00
.endfunc // sub_8128E2C

.func
.thumb_func
sub_8128ED4:
	push {lr}
	bl sub_8128FF0
	bl sub_812907C
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8128EFE
	ldr R0, off_8128F00 // =unk_2037780 
	add r1, r5, #0
	mov R2, #0x80
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R0, #0x14
	strb R0, [R5]
	mov R0, #0
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	bl chatbox_8040818
locret_8128EFE:
	pop {pc}
off_8128F00: .word unk_2037780
.endfunc // sub_8128ED4

.func
.thumb_func
sub_8128F04:
	push {lr}
	// initRefs
	ldr R0, off_8128F34 // =dword_8128F38 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_8128F04

.func
.thumb_func
sub_8128F10:
	push {R4-R7,lr}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #3
	// tileRefs
	ldr R3, off_8128F78 // =unk_201BB60 
	mov R4, #0xF
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_8128F10

	mov R0, #0
	mov R1, #0
	mov R2, #2
	ldr R3, off_8128F84 // =unk_201BDF8 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
off_8128F34: .word dword_8128F38
dword_8128F38: .word 0x886DD59C, 0x6008020, 0x2013A00, 0x886D6618, 0x6000020
	.word 0x2013A00, 0x86D6754, 0x3001960, 0x20, 0x886DDAD0
	.word 0x201BA00, 0x2013A00, 0x86D6954, 0x6008C00, 0x20
	.word 0x886DD9B4
off_8128F78: .word unk_201BB60
	.word decomp_2013A00
	.word 0x886D66A8
off_8128F84: .word unk_201BDF8
	.word decomp_2013A00
	.word 0x86DDB24, 0x3001A80, 0x20, 0x86C9D6C, 0x30016B0, 0x20
	.word 0x886C9BD4, 0x6016C80, 0x2013A00, 0x886C9D38, 0x6016E00, 0x2013A00
	.word 0x886DDB44, 0x6016E40, 0x2013A00, 0x886DDB7C, 0x6016E80, 0x2013A00
	.word 0x886D6974, 0x201C2F8, 0x2013A00, 0x86C9B54, 0x30019A0, 0x20
	.word 0x0
.func
.thumb_func
sub_8128FF0:
	push {R4-R7,lr}
	ldrh R0, [R5,#0x1E]
	tst R0, R0
	beq locret_812900A
	mov R0, #2
	mov R1, #0x12
	mov r2, #0x20 
	mov R3, #0xC
	ldr R4, off_812900C // =dword_8128CA8 
	ldr R6, dword_8129014 // =0x40000000 
	ldr R7, dword_8129010 // =0x10002 
	bl sub_8129018
locret_812900A:
	pop {R4-R7,pc}
off_812900C: .word dword_8128CA8
dword_8129010: .word 0x10002
dword_8129014: .word 0x40000000
.endfunc // sub_8128FF0

.func
.thumb_func
sub_8129018:
	push {R4-R7,lr}
	sub sp, sp, #0x1c
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	str R4, [SP,#0xC]
	str R6, [SP,#0x10]
	lsl r0, r0, #0x10
	ldr R1, [SP]
	ldr R3, [SP,#4]
	tst R3, R3
	bne loc_8129034
	mov R2, #0
	b loc_8129036
loc_8129034:
	ldrh R2, [R5,R3]
loc_8129036:
	mov R3, #0x10
	mul R2, R3
	add r1, r1, r2
	orr R0, R1
	add r1, r7, #0
	ldr R2, [SP,#8]
	ldrb R2, [R5,R2]
	str R2, [SP,#0x14]
	mov R3, #0xF
	and R2, R3
	ldr R3, [SP,#0xC]
	ldr R4, [SP,#0x10]
	bl sub_811FAF4
	ldr R1, [SP,#0x14]
	lsr r1, r1, #4
	sub R1, #1
	bne loc_8129064
	ldr R1, off_8129078 // =dword_8129180 
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_8129064:
	ldr R2, [SP,#8]
	ldrb R0, [R5,R2]
	mov R3, #0xF
	and R0, R3
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,R2]
	add sp, sp, #0x1c
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8129078: .word dword_8129180
.endfunc // sub_8129018

.func
.thumb_func
sub_812907C:
	push {R4-R7,lr}
	ldr R0, dword_8129098 // =0x62 
	mov R1, #0xC
	lsl r0, r0, #0x10
	orr R0, R1
	ldr R1, dword_812909C // =0x10002 
	ldrh R2, [R5,#0x1E]
	ldrh R3, [R5,#0x24]
	mov R4, #7
	ldr R6, dword_81290A0 // =0xB370 
	mov r7, #0x48 
	bl sub_811FA98
	pop {R4-R7,pc}
dword_8129098: .word 0x62
dword_812909C: .word 0x10002
dword_81290A0: .word 0xB370
.endfunc // sub_812907C

.func
.thumb_func
sub_81290A4:
	push {R4-R7,lr}
	ldrh R1, [R5,#0x24]
	ldrh R2, [R5,#0x20]
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh R1, [R0,R1]
	ldr R2, dword_8129100 // =0xFFFF 
	cmp R1, R2
	bne loc_81290C8
	mov R0, #0x10
	mov R1, #0xC
	mov R2, #3
	mov R3, #0
	mov R4, #0xA
	mov R5, #6
	bl sub_80018D0
	b locret_81290EA
loc_81290C8:
	ldr R0, off_81290EC // =unk_201C2F8 
	ldr R2, off_81290F0 // =unk_201B200 
	ldr R3, dword_81290F4 // =0x600B800 
	mov R4, #0xA
	mov R5, #3
	ldr R6, off_81290F8 // =dword_86A5D60 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_81290A4

	mov R0, #0x10
	mov R1, #0xC
	mov R2, #3
	ldr R3, off_81290FC // =byte_813565C 
	mov R4, #0xA
	mov R5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81290EA:
	pop {R4-R7,pc}
off_81290EC: .word unk_201C2F8
off_81290F0: .word unk_201B200
dword_81290F4: .word 0x600B800
off_81290F8: .word dword_86A5D60
off_81290FC: .word byte_813565C
dword_8129100: .word 0xFFFF
.func
.thumb_func
sub_8129104:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R1, [SP]
	add r7, r0, #0
	add R7, #0x16
	ldr R3, dword_8129138 // =0x1C2 
	add r7, r7, r3
	mov R1, #0x1E
	add r4, r7, r1
	mov R5, #0
loc_8129118:
	mov R6, #0
	ldr R3, [SP]
	push {r4,r7}
loc_812911E:
	strh R3, [R7]
	add R7, #2
	add R6, #1
	cmp R6, #3
	blt loc_812911E
	pop {r4,r7}
	mov R1, #0x1E
	add r7, r7, r1
	add R5, #1
	cmp R5, #3
	blt loc_8129118
	add sp, sp, #4
	pop {R4-R7,pc}
dword_8129138: .word 0x1C2
dword_812913C: .word 0x1C, 0x1011C, 0x1021C, 0x1031C, 0xFFFFFFFF, 0x1C
	.word 0xFFFFFFFF, 0xE, 0x1010E, 0x236, 0xFFFFFFFF, 0x3000E
	.word 0x2010E, 0x236, 0xFFFFFFFF
dword_8129178: .word 0xC244C240, 0xFFFFC248
dword_8129180: .word 0xFF060606
dword_8129184: .word 0xC238, 0xA392A390, 0xA396A394, 0xA39AA398, 0xA39EA39C
	.word 0xA3A2A3A0, 0xA393A391, 0xA397A395, 0xA39BA399, 0xA39FA39D
	.word 0xA3A3A3A1, 0xA3A6A3A4, 0xA3AAA3A8, 0xA3AEA3AC, 0xA3B2A3B0
	.word 0xA3B6A3B4, 0xA3A7A3A5, 0xA3ABA3A9, 0xA3AFA3AD, 0xA3B3A3B1
	.word 0xA3B7A3B5
.endfunc // sub_8129104

.func
.thumb_func
sub_81291D8:
	push {r5,lr}
	ldr R5, off_81291E4 // =sSubmenu 
	bl sub_812A76C
	pop {r5,pc}
	.balign 4, 0x00
off_81291E4: .word sSubmenu
.endfunc // sub_81291D8

.func
.thumb_func
sub_81291E8:
	push {lr}
	ldr R0, off_81291F8 // =off_81291FC 
	ldrb R1, [R5,#1]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.hword 0x0
off_81291F8: .word off_81291FC
off_81291FC: .word sub_8129248+1
	.word sub_81292A8+1
	.word sub_8129598+1
	.word sub_8129F04+1
	.word sub_812A76C+1
	.word sub_812A8A4+1
	.word sub_812B5C8+1
	.word byte_8130905
	.word sub_812B80C+1
	.word sub_812B874+1
	.word dword_812C258+105
	.word dword_812DA94+81
	.word dword_812EFDC+185
	.word sub_812ABEC+1
	.word sub_812AD04+1
	.word sub_812ADFC+1
	.word sub_812AEC8+1
	.word sub_812AEE0+1
	.word sub_812AF14+1
.endfunc // sub_81291E8

.func
.thumb_func
sub_8129248:
	push {R4-R7,lr}
	bl sub_80017AA
	bl sub_80017E0
	bl sub_800183C
	mov R0, #0x10
	bl sub_80015FC
	bl sub_8046664 // () -> void
	mov R7, R10
	ldr R0, [R7,#8]
	ldr R1, dword_81292A0 // =0x1F40 
	strh R1, [R0]
	mov R1, #0
	strh R1, [R0,#0x10]
	strh R1, [R0,#0x12]
	strh R1, [R0,#0x14]
	strh R1, [R0,#0x16]
	strh R1, [R0,#0x18]
	strh R1, [R0,#0x1A]
	bl sub_812AF18
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	ldr R1, off_812929C // =byte_200BC30 
	mov r0, #0x3c 
	strb R0, [R1,#0xC] // (byte_200BC3C - 0x200BC30)
	mov R0, #0
	ldr R1, off_81292A4 // =dword_8129180 
	bl sub_8120CC8
	strb R0, [R5,#0x17]
	strb R1, [R5,#0x18]
	mov R0, #0
	strb R0, [R5,#0x1B]
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812929C: .word byte_200BC30
dword_81292A0: .word 0x1F40
off_81292A4: .word dword_8129180
.endfunc // sub_8129248

.func
.thumb_func
sub_81292A8:
	push {lr}
	ldr R0, off_81292B8 // =off_81292BC 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_81292B8: .word off_81292BC
off_81292BC: .word sub_81292D8+1
	.word sub_812933C+1
	.word sub_8129400+1
	.word sub_8129454+1
	.word sub_812952C+1
	.word sub_812954C+1
	.word sub_812956C+1
.endfunc // sub_81292A8

.func
.thumb_func
sub_81292D8:
	push {r4,lr}
	bl sub_812B504
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129336
	bl sub_8046664 // () -> void
	mov R0, #4
	strb R0, [R5,#2]
	bl sub_803EBAC
	// a1
	ldr R0, off_8129338 // =dword_812913C+28 
	bl sub_80465A0 // (void *a1) -> void
	bl sub_812AFB0
	bl chatbox_8040818
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0
	strb R0, [R5,#0xE]
	mov r0, #0x5a 
	ldrb R1, [R5,#0xD]
	add r0, r0, r1
	add r4, r0, #0
	bl sub_8006DEC
	mov R1, #1
	tst R0, R1
	beq loc_8129324
	cmp r4, #0x5a 
	bne loc_8129330
	mov r4, #0x5f 
	b loc_8129330
loc_8129324:
	mov R1, #2
	tst R0, R1
	beq loc_8129330
	cmp r4, #0x5b 
	bne loc_8129330
	mov r4, #0x60 
loc_8129330:
	add r0, r4, #0
	bl sub_8132280
locret_8129336:
	pop {r4,pc}
off_8129338: .word dword_812913C+0x1C
.endfunc // sub_81292D8

.func
.thumb_func
sub_812933C:
	push {r4,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_81293E8
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #2
	mov R2, #1
	ldrb R3, [R5,#0xD]
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_8129388
	strb R0, [R5,#0xD]
	ldr R1, off_81293F8 // =dword_81293FC 
	ldrb R0, [R1,R0]
	add r4, r0, #0
	bl sub_8006DEC
	mov R1, #1
	tst R0, R1
	beq loc_8129374
	cmp r4, #0x5a 
	bne loc_8129374
	mov r4, #0x5f 
	b loc_8129380
loc_8129374:
	mov R1, #2
	tst R0, R1
	beq loc_8129380
	cmp r4, #0x5b 
	bne loc_8129380
	mov r4, #0x60 
loc_8129380:
	add r0, r4, #0
	bl sub_8132280
	b loc_81293E8
loc_8129388:
	mov R0, #1
	bl sub_811F7EC
	beq loc_81293B8
	mov R0, #0x81
	bl sound_play // () -> void
	ldrb R0, [R5,#0xD]
	tst R0, R0
	bne loc_81293D6
	mov R0, #0
	bl sub_803EA70
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	strb R0, [R5,#0xE]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_81293E8
loc_81293B8:
	mov R0, #2
	bl sub_811F7EC
	beq loc_81293E8
	mov R0, #0x83
loc_81293C2:
	bl sound_play // () -> void
	mov r0, #0x40 
	bl sub_811FB64
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_81293E8
loc_81293D6:
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #0
	mov r1, #0x21 
	strb R0, [R5,R1]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_81293E8:
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov R0, #0xD
	bl sub_812B29C
	pop {r4,pc}
off_81293F8: .word dword_81293FC
dword_81293FC: .word 0x5B5A
.endfunc // sub_812933C

.func
.thumb_func
sub_8129400:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8129438
	bl sub_8046664 // () -> void
	mov R0, #0
	strb R0, [R5,#0xD]
	mov R0, #0xC
	strb R0, [R5,#2]
	bl sub_803EBAC
	// a1
	ldr R0, off_8129448 // =dword_812913C+44 
	bl sub_80465A0 // (void *a1) -> void
	bl sub_812AFB0
	bl chatbox_8040818
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrb R0, [R5,#0xD]
	ldr R1, off_812944C // =byte_8129450 
	ldrb R0, [R1,R0]
	bl sub_8132280
loc_8129438:
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov R0, #0xD
	bl sub_812B29C
	pop {pc}
off_8129448: .word dword_812913C+0x2C
off_812944C: .word byte_8129450
byte_8129450: .byte 0x5D, 0x5D, 0x5C, 0x0
.endfunc // sub_8129400

.func
.thumb_func
sub_8129454:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8129514
	ldrb R0, [R5,#0xD]
	cmp R0, #2
	beq loc_8129480
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #2
	mov R2, #1
	ldrb R3, [R5,#0xD]
	add r4, r3, #0
	bl sub_811FA0C
	cmp R4, R0
	beq loc_8129480
	strb R0, [R5,#0xD]
	mov r1, #0x21 
	strb R0, [R5,R1]
	b loc_8129514
loc_8129480:
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #2
	mov R2, #1
	ldrb R3, [R5,#0xD]
	lsr r3, r3, #1
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_81294B2
	lsl r0, r0, #1
	strb R0, [R5,#0xD]
	tst R0, R0
	bne loc_81294A8
	mov r1, #0x21 
	ldrb R2, [R5,R1]
	add r2, r2, r0
	strb R2, [R5,#0xD]
loc_81294A8:
	ldr R1, off_8129524 // =byte_8129528 
	ldrb R0, [R1,R0]
	bl sub_8132280
	b loc_8129514
loc_81294B2:
	mov R0, #1
	bl sub_811F7EC
	beq loc_81294FA
	mov R0, #0x81
	bl sound_play // () -> void
	ldrb R0, [R5,#0xD]
	cmp R0, #1
	ble loc_81294D4
	mov R0, #0x14
	strb R0, [R5,#2]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_8129514
loc_81294D4:
	bl sub_813D960
	mov R0, #8
	ldrb R1, [R5,#0xD]
	tst R1, R1
	bne loc_81294E2
	mov R0, #4
loc_81294E2:
	bl sub_803EA70
	mov R0, #8
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_8129514
loc_81294FA:
	mov R0, #2
	bl sub_811F7EC
	beq loc_8129514
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0x18
	strb R0, [R5,#2]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_8129514:
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov R0, #0xD
	bl sub_812B288
	pop {pc}
off_8129524: .word byte_8129528
byte_8129528: .byte 0x5D, 0x5D, 0x5C, 0x0
.endfunc // sub_8129454

.func
.thumb_func
sub_812952C:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129548
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129548:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812952C

.func
.thumb_func
sub_812954C:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812956A
	bl chatbox_8040818
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #1
	bl sub_8048F9C
locret_812956A:
	pop {pc}
.endfunc // sub_812954C

.func
.thumb_func
sub_812956C:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129594
	mov R0, #0
	strb R0, [R5,#2]
	mov R0, #1
	strb R0, [R5,#0xD]
	bl sub_803EA60
	cmp R0, #0
	beq locret_8129594
	bl sub_8149644
	bl sub_8149568
locret_8129594:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812956C

.func
.thumb_func
sub_8129598:
	push {lr}
	ldrb R0, [R5,#2]
	tst R0, R0
	beq loc_81295A4
	bl sub_812B504
loc_81295A4:
	ldr R0, off_81295B0 // =off_81295B4 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
off_81295B0: .word off_81295B4
off_81295B4: .word sub_81295D8+1
	.word loc_8129658+1
	.word loc_81297DC+1
	.word loc_8129A98+1
	.word loc_8129918+1
	.word loc_8129C28+1
	.word loc_8129C28+1
	.word loc_8129C28+1
	.word sub_8129EE4+1
.endfunc // sub_8129598

.func
.thumb_func
sub_81295D8:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129650
	bl sub_803EA60
	cmp R0, #0
	ble loc_8129620
	bl sub_8049D42
	bne loc_8129620
	ldrb R1, [R5,#0x1B]
	mov R0, #4
	tst R0, R1
	beq loc_8129610
	mov R0, #4
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	b locret_8129650
loc_8129610:
	mov R0, #1
	bl sub_8048F9C
	mov R0, #4
	ldrb R1, [R5,#0x1B]
	orr R1, R0
	strb R1, [R5,#0x1B]
	b locret_8129650
loc_8129620:
	bl sub_812AFC8
	ldr R0, off_8129654 // =dword_812913C 
	bl sub_812B1DC
	mov R0, #0xE
	bl sub_812B2C4
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	bl sub_812B530
	mov R0, #1
	bl sub_8132280
	mov r0, #0x40 
	bl chatbox_8045F1C
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129650:
	pop {pc}
	.balign 4, 0x00
off_8129654: .word dword_812913C
.endfunc // sub_81295D8

loc_8129658:
	push {lr}
	ldr R0, off_812966C // =off_8129670 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #0xE
	bl sub_812B25C
	pop {pc}
off_812966C: .word off_8129670
off_8129670: .word sub_812968C+1
	.word sub_81296A0+1
	.word sub_81296D8+1
	.word sub_8129738+1
	.word sub_8129758+1
	.word sub_812977C+1
	.word sub_81297C0+1
.func
.thumb_func
sub_812968C:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812969E
	mov r0, #0x40 
	bl chatbox_8045F2C // (int a1) ->
	mov R0, #4
	strb R0, [R5,#3]
locret_812969E:
	pop {pc}
.endfunc // sub_812968C

.func
.thumb_func
sub_81296A0:
	push {lr}
	mov R0, #8
	bl chatbox_8045F3C
	beq loc_81296B4
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3FC
	b locret_81296D0
loc_81296B4:
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq locret_81296D0
	ldr R0, off_81296D4 // =0x110 
	bl chatbox_8045F3C
	beq locret_81296D0
	mov r0, #0x20 
	strb R0, [R5,#2]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_81296D0:
	pop {pc}
	.balign 4, 0x00
off_81296D4: .word 0x110
.endfunc // sub_81296A0

.func
.thumb_func
sub_81296D8:
	push {r4,lr}
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #3
	mov R2, #1
	ldrb R3, [R5,#0xE]
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_81296F8
	strb R0, [R5,#0xE]
	bl sub_812B3FC
	b locret_8129734
loc_81296F8:
	mov R0, #1
	bl sub_811F7EC
	beq loc_812971A
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, #0xC
	strb R0, [R5,#3]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	b locret_8129734
loc_812971A:
	mov R0, #2
	bl sub_811F7EC
	beq locret_8129734
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0x18
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129734:
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_81296D8

.func
.thumb_func
sub_8129738:
	push {lr}
	mov R0, #3
	bl sub_812B318
	tst R0, R0
	bne locret_8129754
	mov R0, #3
	strb R0, [R5,#0x1D]
	ldrb R0, [R5,#0xE]
	bl sub_81325E4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
locret_8129754:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8129738

.func
.thumb_func
sub_8129758:
	push {lr}
	ldrb R0, [R5,#0x1D]
	bl sub_812B318
	add r4, r2, #0
	tst R1, R1
	beq loc_812976A
	bl sub_812B218
loc_812976A:
	cmp R4, #3
	bne locret_812977A
	mov R0, #0x14
	strb R0, [R5,#3]
	mov R0, #0
	mov R1, #0
	bl sub_811A610
locret_812977A:
	pop {pc}
.endfunc // sub_8129758

.func
.thumb_func
sub_812977C:
	push {lr}
	mov R6, #0
	ldr R4, off_81297BC // =unk_20251A0 
loc_8129782:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_81297BA
	add R6, #4
	cmp R6, #0xC
	blt loc_8129782
	ldr R1, off_81297BC // =unk_20251A0 
	mov R6, #0
loc_812979A:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, #0xC
	blt loc_812979A
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3FC
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_81297BA:
	pop {pc}
off_81297BC: .word unk_20251A0
.endfunc // sub_812977C

.func
.thumb_func
sub_81297C0:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_81297D8
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
locret_81297D8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_81297C0

loc_81297DC:
	push {lr}
	ldr R0, off_81297F0 // =off_81297F4 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #0x12
	bl sub_812B25C
	pop {pc}
off_81297F0: .word off_81297F4
off_81297F4: .word sub_8129808+1
	.word sub_812982C+1
	.word sub_8129870+1
	.word sub_81298D4+1
	.word sub_81298F8+1
.func
.thumb_func
sub_8129808:
	push {r4,lr}
	ldrb R0, [R5,#0x1D]
	bl sub_812B318
	add r4, r2, #0
	tst R1, R1
	beq loc_812981A
	bl sub_812B218
loc_812981A:
	cmp R4, #3
	bne locret_812982A
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #1
	mov R1, #0
	bl sub_811A610
locret_812982A:
	pop {r4,pc}
.endfunc // sub_8129808

.func
.thumb_func
sub_812982C:
	push {lr}
	mov R6, #0
	ldr R4, off_812986C // =unk_20251A0 
loc_8129832:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_812986A
	add R6, #4
	cmp R6, #0xC
	blt loc_8129832
	ldr R1, off_812986C // =unk_20251A0 
	mov R6, #0
loc_812984A:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, #0xC
	blt loc_812984A
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B39C
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_812986A:
	pop {pc}
off_812986C: .word unk_20251A0
.endfunc // sub_812982C

.func
.thumb_func
sub_8129870:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #3
	mov R2, #1
	ldrb R3, [R5,#0x12]
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_8129890
	strb R0, [R5,#0x12]
	bl sub_812B39C
	b locret_81298D2
loc_8129890:
	mov R0, #1
	bl sub_811F7EC
	beq loc_81298B2
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, #0xC
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
	b locret_81298D2
loc_81298B2:
	mov R0, #2
	bl sub_811F7EC
	beq locret_81298D2
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
locret_81298D2:
	pop {pc}
.endfunc // sub_8129870

.func
.thumb_func
sub_81298D4:
	push {r4,lr}
	mov R0, #3
	bl sub_812B318
	tst R0, R0
	bne locret_81298F6
	mov R0, #3
	strb R0, [R5,#0x1D]
	mov R0, #2
	mov r1, #0x20 
	strb R0, [R5,R1]
	ldrb R0, [R5,#0x12]
	bl sub_81325F4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
locret_81298F6:
	pop {r4,pc}
.endfunc // sub_81298D4

.func
.thumb_func
sub_81298F8:
	push {lr}
	mov R0, #3
	bl sub_812B318
	tst R0, R0
	bne locret_8129916
	mov R0, #3
	strb R0, [R5,#0x1D]
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x12]
	strb R0, [R5,#0x13]
locret_8129916:
	pop {pc}
.endfunc // sub_81298F8

loc_8129918:
	push {lr}
	ldr R0, off_812992C // =off_8129930 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #0x12
	bl sub_812B25C
	pop {pc}
off_812992C: .word off_8129930
off_8129930: .word sub_8129948+1
	.word sub_812996C+1
	.word sub_81299B0+1
	.word sub_8129A20+1
	.word sub_8129A28+1
	.word sub_8129A54+1
.func
.thumb_func
sub_8129948:
	push {lr}
	ldrb R0, [R5,#0x1D]
	bl sub_812B318
	add r4, r2, #0
	tst R1, R1
	beq loc_812995A
	bl sub_812B218
loc_812995A:
	cmp R4, #3
	bne locret_812996A
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #3
	mov R1, #0
	bl sub_811A610
locret_812996A:
	pop {pc}
.endfunc // sub_8129948

.func
.thumb_func
sub_812996C:
	push {lr}
	mov R6, #0
	ldr R4, off_81299AC // =unk_20251A0 
loc_8129972:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_81299AA
	add R6, #4
	cmp R6, #0xC
	blt loc_8129972
	ldr R1, off_81299AC // =unk_20251A0 
	mov R6, #0
loc_812998A:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, #0xC
	blt loc_812998A
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3CC
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_81299AA:
	pop {pc}
off_81299AC: .word unk_20251A0
.endfunc // sub_812996C

.func
.thumb_func
sub_81299B0:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #3
	mov R2, #1
	ldrb R3, [R5,#0x12]
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_81299D0
	strb R0, [R5,#0x12]
	bl sub_812B3CC
	b locret_8129A1C
loc_81299D0:
	mov R0, #1
	bl sub_811F7EC
	beq loc_81299FC
	mov R0, #0x81
	bl sound_play // () -> void
	ldrb R0, [R5,#0x12]
	cmp R0, #1
	bne loc_81299F6
	// entryIdx
	mov R0, #0
	// byteFlagIdx
	mov R1, #0xF2
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_81299F6
	mov R0, #5
	bl sub_8132280
	b locret_8129A1C
loc_81299F6:
	bl sub_812B414
	b locret_8129A1C
loc_81299FC:
	mov R0, #2
	bl sub_811F7EC
	beq locret_8129A1C
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xC
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
locret_8129A1C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_81299B0

.func
.thumb_func
sub_8129A20:
	push {lr}
	bl sub_81298F8
	pop {pc}
.endfunc // sub_8129A20

.func
.thumb_func
sub_8129A28:
	push {lr}
	ldrb R0, [R5,#0x1D]
	bl sub_812B318
	add r4, r2, #0
	tst R1, R1
	beq loc_8129A3A
	bl sub_812B218
loc_8129A3A:
	cmp R4, #3
	bne locret_8129A52
	mov R0, #0x14
	strb R0, [R5,#3]
	mov R0, #3
	mov R1, #0
	bl sub_811A610
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129A52:
	pop {pc}
.endfunc // sub_8129A28

.func
.thumb_func
sub_8129A54:
	push {lr}
	mov R6, #0
	ldr R4, off_8129A94 // =unk_20251A0 
loc_8129A5A:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_8129A92
	add R6, #4
	cmp R6, #0xC
	blt loc_8129A5A
	ldr R1, off_8129A94 // =unk_20251A0 
	mov R6, #0
loc_8129A72:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, #0xC
	blt loc_8129A72
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3FC
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_8129A92:
	pop {pc}
off_8129A94: .word unk_20251A0
.endfunc // sub_8129A54

loc_8129A98:
	push {lr}
	ldr R0, off_8129AAC // =off_8129AB0 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #0x12
	bl sub_812B25C
	pop {pc}
off_8129AAC: .word off_8129AB0
off_8129AB0: .word sub_8129AC8+1
	.word sub_8129AF0+1
	.word sub_8129B34+1
	.word sub_8129B90+1
	.word sub_8129BB0+1
	.word sub_8129BDC+1
.func
.thumb_func
sub_8129AC8:
	push {r4,lr}
	ldrb R0, [R5,#0x1D]
	bl sub_812B318
	add r4, r2, #0
	tst R1, R1
	beq locret_8129AEC
	cmp R4, #2
	beq loc_8129AE0
	bl sub_812B218
	b locret_8129AEC
loc_8129AE0:
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #2
	mov R1, #0
	bl sub_811A610
locret_8129AEC:
	pop {r4,pc}
	.byte 0, 0
.endfunc // sub_8129AC8

.func
.thumb_func
sub_8129AF0:
	push {R4-R7,lr}
	mov R6, #0
	ldr R4, off_8129B30 // =unk_20251A0 
loc_8129AF6:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_8129B2E
	add R6, #4
	cmp R6, #8
	blt loc_8129AF6
	ldr R1, off_8129B30 // =unk_20251A0 
	mov R6, #0
loc_8129B0E:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, #8
	blt loc_8129B0E
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3B4
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_8129B2E:
	pop {R4-R7,pc}
off_8129B30: .word unk_20251A0
.endfunc // sub_8129AF0

.func
.thumb_func
sub_8129B34:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129B8E
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov R1, #2
	mov R2, #1
	ldrb R3, [R5,#0x12]
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_8129B5A
	strb R0, [R5,#0x12]
	bl sub_812B3B4
	b locret_8129B8E
loc_8129B5A:
	mov R0, #1
	bl sub_811F7EC
	beq loc_8129B6E
	mov R0, #0x81
	bl sound_play // () -> void
	bl sub_812B414
	b locret_8129B8E
loc_8129B6E:
	mov R0, #2
	bl sub_811F7EC
	beq locret_8129B8E
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xC
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
locret_8129B8E:
	pop {pc}
.endfunc // sub_8129B34

.func
.thumb_func
sub_8129B90:
	push {lr}
	mov R0, #2
	bl sub_812B318
	tst R0, R0
	bne locret_8129BAE
	mov R0, #3
	strb R0, [R5,#0x1D]
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x12]
	strb R0, [R5,#0x13]
locret_8129BAE:
	pop {pc}
.endfunc // sub_8129B90

.func
.thumb_func
sub_8129BB0:
	push {r4,lr}
	mov R4, #2
loc_8129BB4:
	bl sub_812B218
	sub R4, #1
	bgt loc_8129BB4
	mov R0, #0x14
	strb R0, [R5,#3]
	mov R1, #0x10
	ldrb R0, [R5,#0x1B]
	orr R0, R1
	strb R0, [R5,#0x1B]
	mov R0, #2
	mov R1, #0
	bl sub_811A610
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_8129BB0

.func
.thumb_func
sub_8129BDC:
	push {R4-R7,lr}
	mov R6, #0
	ldr R4, off_8129C24 // =unk_20251A0 
loc_8129BE2:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_8129C22
	add R6, #4
	cmp R6, #8
	blt loc_8129BE2
	ldr R1, off_8129C24 // =unk_20251A0 
	mov R6, #0
loc_8129BFA:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, #8
	blt loc_8129BFA
	mov R0, #8
	strb R0, [R5,#3]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_812B3B4
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_8129C22:
	pop {R4-R7,pc}
off_8129C24: .word unk_20251A0
.endfunc // sub_8129BDC

loc_8129C28:
	push {lr}
	ldr R0, off_8129C3C // =off_8129C40 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #0x13
	bl sub_812B25C
	pop {pc}
off_8129C3C: .word off_8129C40
off_8129C40: .word sub_8129C74+1
	.word sub_8129CB4+1
	.word sub_8129D00+1
	.word sub_8129D58+1
	.word sub_8129D78+1
	.word sub_8129DC4+1
	.word sub_8129E28+1
	.word sub_8129E54+1
	.word sub_8129D78+1
	.word sub_8129E7C+1
	.word sub_8129ECC+1
	.word sub_8129D78+1
	.word sub_8129DC4+1
.func
.thumb_func
sub_8129C74:
	push {r4,lr}
	ldrb R0, [R5,#0x1D]
	bl sub_812B318
	mov r3, #0x20 
	ldrb R0, [R5,R3]
	cmp R0, #2
	bne loc_8129C8A
	add r4, r2, #0
	tst R1, R1
	beq locret_8129CB2
loc_8129C8A:
	add r4, r2, #0
	cmp R4, R0
	beq loc_8129C96
	bl sub_812B218
	b locret_8129CB2
loc_8129C96:
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #4
	ldrb R1, [R5,#2]
	cmp R1, #0x14
	beq loc_8129CAC
	mov R0, #5
	ldrb R1, [R5,#2]
	cmp R1, #0x18
	beq loc_8129CAC
	mov R0, #7
loc_8129CAC:
	mov R1, #0
	bl sub_811A610
locret_8129CB2:
	pop {r4,pc}
.endfunc // sub_8129C74

.func
.thumb_func
sub_8129CB4:
	push {R4-R7,lr}
	mov r3, #0x20 
	ldrb R7, [R5,R3]
	lsl r7, r7, #2
	mov R6, #0
	ldr R4, off_8129CFC // =unk_20251A0 
loc_8129CC0:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_8129CF8
	add R6, #4
	cmp R6, R7
	blt loc_8129CC0
	ldr R1, off_8129CFC // =unk_20251A0 
	mov R6, #0
loc_8129CD8:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, R7
	blt loc_8129CD8
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3E4
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_8129CF8:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8129CFC: .word unk_20251A0
.endfunc // sub_8129CB4

.func
.thumb_func
sub_8129D00:
	push {lr}
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#2]
	mov r2, #0x20 
	ldrb R1, [R5,R2]
	mov R2, #1
	ldrb R3, [R5,#0x13]
	add r4, r3, #0
	bl sub_811FA22
	cmp R4, R0
	beq loc_8129D22
	strb R0, [R5,#0x13]
	bl sub_812B3E4
	b locret_8129D56
loc_8129D22:
	mov R0, #1
	bl sub_811F7EC
	beq loc_8129D36
	mov R0, #0x81
	bl sound_play // () -> void
	bl sub_812B414
	b locret_8129D56
loc_8129D36:
	mov R0, #2
	bl sub_811F7EC
	beq locret_8129D56
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xC
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
locret_8129D56:
	pop {pc}
.endfunc // sub_8129D00

.func
.thumb_func
sub_8129D58:
	push {lr}
	mov r3, #0x20 
	ldrb R0, [R5,R3]
	bl sub_812B318
	tst R0, R0
	bne locret_8129D76
	mov R0, #3
	strb R0, [R5,#0x1D]
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x13]
locret_8129D76:
	pop {pc}
.endfunc // sub_8129D58

.func
.thumb_func
sub_8129D78:
	push {r4,lr}
	mov r3, #0x20 
	ldrb R4, [R5,R3]
loc_8129D7E:
	bl sub_812B218
	sub R4, #1
	bgt loc_8129D7E
	mov R1, #0x14
	ldrb R0, [R5,#3]
	cmp r0, #0x2c 
	bne loc_8129D92
	mov r1, #0x30 
	b loc_8129D98
loc_8129D92:
	cmp r0, #0x20 
	bne loc_8129D98
	mov r1, #0x24 
loc_8129D98:
	strb R1, [R5,#3]
	mov R0, #4
	ldrb R1, [R5,#2]
	cmp R1, #0x14
	beq loc_8129DAC
	mov R0, #5
	ldrb R1, [R5,#2]
	cmp R1, #0x18
	beq loc_8129DAC
	mov R0, #7
loc_8129DAC:
	mov R1, #0
	bl sub_811A610
	mov R1, #0x10
	ldrb R0, [R5,#0x1B]
	orr R0, R1
	strb R0, [R5,#0x1B]
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4,pc}
.endfunc // sub_8129D78

.func
.thumb_func
sub_8129DC4:
	push {R4-R7,lr}
	bl sub_812B5AC
	mov r3, #0x20 
	ldrb R7, [R5,R3]
	lsl r7, r7, #2
	mov R6, #0
	ldr R4, off_8129E24 // =unk_20251A0 
loc_8129DD4:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_8129E20
	add R6, #4
	cmp R6, R7
	blt loc_8129DD4
	ldr R1, off_8129E24 // =unk_20251A0 
	mov R6, #0
loc_8129DEC:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, R7
	blt loc_8129DEC
	ldrb R0, [R5,#3]
	cmp r0, #0x30 
	bne loc_8129E14
	mov r0, #0x28 
	strb R0, [R5,#3]
	bl sub_812B3E4
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
	b loc_8129E18
loc_8129E14:
	mov R0, #0x18
	strb R0, [R5,#3]
loc_8129E18:
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129E20:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8129E24: .word unk_20251A0
.endfunc // sub_8129DC4

.func
.thumb_func
sub_8129E28:
	push {r4,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129E42
	ldrh R0, [R5,#0x22]
	mov R1, #0xFF
	and R0, R1
	ldr R1, off_8129E44 // =dword_8129E48 
	ldrb R0, [R1,R0]
	bl sub_8132280
	mov R0, #0x1C
	strb R0, [R5,#3]
locret_8129E42:
	pop {r4,pc}
off_8129E44: .word dword_8129E48
dword_8129E48: .word 0x52515000, 0x5300, 0x3000
.endfunc // sub_8129E28

.func
.thumb_func
sub_8129E54:
	push {lr}
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_8129E78
	ldrh R0, [R5,#0x22]
	mov R1, #0xFF
	and R0, R1
	cmp R0, #9
	beq locret_8129E78
	mov R0, #8
	strb R0, [R5,#3]
	bl sub_812B3E4
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_8129E78:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8129E54

.func
.thumb_func
sub_8129E7C:
	push {R4-R7,lr}
	bl sub_812B5AC
	mov r3, #0x20 
	ldrb R7, [R5,R3]
	lsl r7, r7, #2
	mov R6, #0
	ldr R4, off_8129EC8 // =unk_20251A0 
loc_8129E8C:
	ldr R0, [R4,R6]
	mov R1, #1
	lsl r1, r1, #0x1f
	bic R0, R1
	ldrb R0, [R0,#7]
	tst R0, R0
	bne locret_8129EC4
	add R6, #4
	cmp R6, R7
	blt loc_8129E8C
	ldr R1, off_8129EC8 // =unk_20251A0 
	mov R6, #0
loc_8129EA4:
	ldr R0, [R1,R6]
	mov R2, #1
	lsl r2, r2, #0x1f
	bic R0, R2
	str R0, [R1,R6]
	add R6, #4
	cmp R6, R7
	blt loc_8129EA4
	mov r0, #0x28 
	strb R0, [R5,#3]
	bl sub_812B3FC
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129EC4:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8129EC8: .word unk_20251A0
.endfunc // sub_8129E7C

.func
.thumb_func
sub_8129ECC:
	push {R4-R7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129EE0
	mov R0, #8
	strb R0, [R5,#3]
	mov R0, #1
	ldrb R1, [R5,#0x1B]
	bic R1, R0
	strb R1, [R5,#0x1B]
locret_8129EE0:
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_8129ECC

.func
.thumb_func
sub_8129EE4:
	push {lr}
	bl sub_812B504
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_8129F00
	mov R0, #4
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
locret_8129F00:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_8129EE4

.func
.thumb_func
sub_8129F04:
	push {lr}
	bl sub_803EA60
	ldr R1, off_8129F18 // =off_8129F1C 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	bl sub_812B26C
	pop {pc}
off_8129F18: .word off_8129F1C
off_8129F1C: .word sub_8129F28+1
	.word sub_8129FE0+1
	.word sub_8129FE0+1
.endfunc // sub_8129F04

.func
.thumb_func
sub_8129F28:
	push {lr}
	ldr R0, off_8129F3C // =off_8129F40 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_812B504
	pop {pc}
	.balign 4, 0x00
off_8129F3C: .word off_8129F40
off_8129F40: .word sub_8129F48+1
	.word sub_8129F88+1
.endfunc // sub_8129F28

.func
.thumb_func
sub_8129F48:
	push {lr}
	bl start_8000288
.endfunc // sub_8129F48

	mov R0, #4
	strb R0, [R5,#2]
	bl sub_803DE88
	bl sub_803DEAC
	mov R0, #0x10
	mov R1, #3
	mov R2, #2
	mov R3, #0
	bl sub_803DCE8
	bl sub_803EF60
	bl loc_803EA78
	ldr R0, dword_8129F80 // =0x42523545 
	ldr R1, dword_8129F84 // =0x2000 
	mov R2, #0
	bl sub_803DCD8
	bl sub_81322E8
	pop {pc}
	.byte 0, 0
dword_8129F80: .word 0x42523545
dword_8129F84: .word 0x2000
.func
.thumb_func
sub_8129F88:
	push {lr}
	bl sub_803EAE4
	cmp R0, #4
	bne loc_8129F98
	mov R0, #0
	strb R0, [R5,#2]
	b loc_8129F9C
loc_8129F98:
	cmp R0, #2
	beq loc_8129FCE
loc_8129F9C:
	mov R0, #2
	bl sub_811F7EC
	beq locret_8129FDC
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #8
	strb R0, [R5,#1]
	ldrb R0, [R5,#0xE]
	tst R0, R0
	bne loc_8129FC2
	ldrb R0, [R5,#0x12]
	bl sub_81325F4
	strb R0, [R5,#2]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8129FDC
loc_8129FC2:
	bl sub_81325E4
	strb R0, [R5,#2]
	mov R0, #4
	strb R0, [R5,#3]
	b locret_8129FDC
loc_8129FCE:
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strh R0, [R5,#0x28]
	bl sub_8132398
locret_8129FDC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_8129F88

.func
.thumb_func
sub_8129FE0:
	push {lr}
	ldr R0, off_8129FF0 // =off_8129FF4 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.byte 0, 0
off_8129FF0: .word off_8129FF4
off_8129FF4: .word sub_812A008+1
	.word sub_812A028+1
	.word sub_812A058+1
	.word sub_812A14C+1
	.word sub_812A0CC+1
.endfunc // sub_8129FE0

.func
.thumb_func
sub_812A008:
	push {lr}
	bl sub_812B504
	bl start_800027C
.endfunc // sub_812A008

	bl sub_81465BC
	tst R0, R0
	beq locret_812A026
	bl sub_803DE88
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #3
	strh R0, [R5,#0x28]
locret_812A026:
	pop {pc}
.func
.thumb_func
sub_812A028:
	push {lr}
	bl sub_812B504
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bne loc_812A048
	mov r0, #0x44 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	mov R0, #5
	strb R0, [R5,#0x10]
	mov r0, #0x5e 
	bl sub_8132280
loc_812A048:
	bl sub_813D648
	bne locret_812A056
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #8
	strb R0, [R5,#2]
locret_812A056:
	pop {pc}
.endfunc // sub_812A028

.func
.thumb_func
sub_812A058:
	push {r4,lr}
	bl sub_812B504
	bl sub_8146588
	bl sub_803EA60
	cmp R0, #8
	beq loc_812A088
	bl sub_8049D98
	ldr R0, off_812A0C4 // =unk_201FD20 
	ldr R1, off_812A0C8 // =unk_201FD40 
	bl sub_8049DA0
	ldr R0, off_812A0C4 // =unk_201FD20 
	bl sub_814695C
	bl sub_8049D7C
	add r1, r0, #0
	ldr R0, off_812A0C8 // =unk_201FD40 
	bl sub_81469BC
loc_812A088:
	bl sub_81465BC
	tst R0, R0
	bne loc_812A09C
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	b locret_812A0C2
loc_812A09C:
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_803EA60
	cmp R0, #8
	bne loc_812A0B8
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	strh R0, [R5,#0x24]
	b locret_812A0C2
loc_812A0B8:
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	strh R0, [R5,#0x24]
locret_812A0C2:
	pop {r4,pc}
off_812A0C4: .word unk_201FD20
off_812A0C8: .word unk_201FD40
.endfunc // sub_812A058

.func
.thumb_func
sub_812A0CC:
	push {lr}
	ldr R0, off_812A0DC // =off_812A0E0 
	ldrh R1, [R5,#0x24]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812A0DC: .word off_812A0E0
off_812A0E0: .word sub_812A0E8+1
	.word sub_812A134+1
.endfunc // sub_812A0CC

.func
.thumb_func
sub_812A0E8:
	push {lr}
	bl sub_812B504
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812A12A
	mov R0, #1
	bl sub_813D90C
	mov R0, #0xC
	mov R1, #3
	mov R2, #2
	mov R3, #0
	bl sub_803DCE8
	ldr R0, dword_812A12C // =0x42523545 
	ldr R1, dword_812A130 // =0x2000 
	mov R2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_803EF60
	mov R0, #0
	bl sub_8048F9C
	mov R1, R10
	ldr R1, [R1]
	mov r0, #0x28 
	strb R0, [R1]
	mov R0, #4
	strh R0, [R5,#0x24]
locret_812A12A:
	pop {pc}
dword_812A12C: .word 0x42523545
dword_812A130: .word 0x2000
.endfunc // sub_812A0E8

.func
.thumb_func
sub_812A134:
	push {lr}
	push {r5}
	ldr R5, off_812A148 // =byte_200A290 
	bl cb_8048FD4
	pop {r5}
	bl loc_812A1D4
	pop {pc}
	.balign 4, 0x00
off_812A148: .word byte_200A290
.endfunc // sub_812A134

.func
.thumb_func
sub_812A14C:
	push {lr}
	ldr R0, off_812A15C // =off_812A160 
	ldrh R1, [R5,#0x24]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812A15C: .word off_812A160
off_812A160: .word sub_812A168+1
	.word sub_812A1C4+1
.endfunc // sub_812A14C

.func
.thumb_func
sub_812A168:
	push {lr}
	bl sub_812B504
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812A1B6
	mov R0, #1
	bl sub_813D90C
	mov R0, #0xC
	mov R1, #3
	mov R2, #2
	mov R3, #0
	bl sub_803DCE8
	ldr R0, dword_812A1B8 // =0x42523545 
	ldr R1, dword_812A1BC // =0x2000 
	mov R2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_8132664
	bl sub_8132670
	ldr R1, off_812A1C0 // =byte_2023BC0 
	strb R0, [R1]
	bl sub_803EF60
	mov R0, #0
	bl sub_81326D4
	mov R1, R10
	ldr R1, [R1]
	mov r0, #0x28 
	strb R0, [R1]
	mov R0, #4
	strh R0, [R5,#0x24]
locret_812A1B6:
	pop {pc}
dword_812A1B8: .word 0x42523545
dword_812A1BC: .word 0x2000
off_812A1C0: .word byte_2023BC0
.endfunc // sub_812A168

.func
.thumb_func
sub_812A1C4:
	push {lr}
	bl loc_812A1D4
	bl sub_8132764
	pop {pc}
	.word byte_200A290
.endfunc // sub_812A1C4

loc_812A1D4:
	push {lr}
	bl sub_803C620
	tst R1, R1
	bne loc_812A200
	tst R0, R0
	beq loc_812A200
	cmp R0, #2
	beq loc_812A1F6
	mov r0, #0x30 
	bl sub_8132280
	mov r0, #0x48 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	pop {pc}
loc_812A1F6:
	bl sub_813D978
	bl sub_812B590
	pop {pc}
loc_812A200:
	bl sub_803EA60
	ldr R1, off_812A210 // =dword_812A214 
	ldr R1, [R1,R0]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_812A210: .word dword_812A214
dword_812A214: .word 0x0
	.word sub_812A224+1
	.word loc_812A4DC+1
	.word byte_200BC50
.func
.thumb_func
sub_812A224:
	push {lr}
	ldr R0, off_812A234 // =off_812A238 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812A234: .word off_812A238
off_812A238: .word sub_812A240+1
	.word sub_812A27C+1
.endfunc // sub_812A224

.func
.thumb_func
sub_812A240:
	push {lr}
	mov R0, #1
	bl sub_813D90C
	bl sub_8147350
	mov R0, #0xC
	mov R1, #3
	mov R2, #2
	mov R3, #0
	bl sub_803DCE8
	ldr R0, dword_812A274 // =0x42523545 
	ldr R1, dword_812A278 // =0x2000 
	mov R2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_803EF60
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0xC]
	pop {pc}
dword_812A274: .word 0x42523545
dword_812A278: .word 0x2000
.endfunc // sub_812A240

.func
.thumb_func
sub_812A27C:
	push {lr}
	bl sub_812B574
	ldr R1, off_812A290 // =off_812A294 
	ldrb R2, [R5,#0xC]
	ldr R1, [R1,R2]
	mov LR, PC
	bx r1
	pop {pc}
	.byte 0, 0
off_812A290: .word off_812A294
off_812A294: .word sub_812A2B4+1
	.word sub_812A2EC+1
	.word sub_812A350+1
	.word sub_812A3C8+1
	.word sub_812A3FC+1
	.word sub_812A424+1
	.word sub_812A494+1
	.word sub_812A4AC+1
.endfunc // sub_812A27C

.func
.thumb_func
sub_812A2B4:
	push {lr}
	mov r0, #0x40 
	bl sub_803CB18
	bne loc_812A2E4
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812A2E8
	mov R0, #2
	bl sub_811F7EC
	beq locret_812A2E8
	mov R0, #0x83
	bl sound_play // () -> void
	bl sub_813D978
	mov R0, #0x14
	strb R0, [R5,#0xC]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_812A2E8
loc_812A2E4:
	mov R0, #4
	strb R0, [R5,#0xC]
locret_812A2E8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812A2B4

.func
.thumb_func
sub_812A2EC:
	push {R4-R7,lr}
	bl sub_81468BC
	add r4, r0, #0
	cmp R0, #2
	blt locret_812A338
	bl sub_8049D98
	mov R0, #1
	bl sub_81468C8
	add r6, r0, #0
	mov R0, #1
	bl sub_81468E0
	add r7, r0, #0
	add r0, r6, #0
	ldr R1, off_812A340 // =unk_201FD60 
	add r2, r7, #0
	ldr R3, off_812A344 // =unk_201FD80 
	bl sub_8049DC4
	add r0, r7, #0
	bl sub_8146724
	ldrh R0, [R0]
	ldr R1, off_812A348 // =word_2023BB0 
	strh R0, [R1]
	add r0, r7, #0
	bl sub_8146738
	ldr R1, off_812A34C // =byte_2023BC8 
	strb R0, [R1]
	mov r0, #0x2e 
	bl sub_8132280
	mov R0, #8
	strb R0, [R5,#0xC]
locret_812A338:
	pop {R4-R7,pc}
	.balign 4, 0x00
	.word byte_200AF80
off_812A340: .word unk_201FD60
off_812A344: .word unk_201FD80
off_812A348: .word word_2023BB0
off_812A34C: .word byte_2023BC8
.endfunc // sub_812A2EC

.func
.thumb_func
sub_812A350:
	push {R4-R7,lr}
	bl sub_813D60C
	beq loc_812A360
	bl sub_81468BC
	cmp R0, #2
	bge loc_812A384
loc_812A360:
	mov r4, #0x29 
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #4
	beq loc_812A36E
	mov r4, #0x2f 
loc_812A36E:
	add r0, r4, #0
	bl sub_8132280
	mov R0, #4
	bl sub_803CB00
	mov R0, #0x18
	strb R0, [R5,#0xC]
	bl sub_813D978
	b locret_812A3B8
loc_812A384:
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq locret_812A3B8
	bl chatbox_8045F4C
	tst R0, R0
	beq loc_812A3AE
	mov R0, #4
	bl sub_803CB00
	mov R0, #0x18
	strb R0, [R5,#0xC]
	mov r0, #0x2a 
	bl sub_8132280
	ldr R0, off_812A3BC // =byte_200AF80 
	mov R1, #2
	bl sub_8146E5C
	b locret_812A3B8
loc_812A3AE:
	mov R0, #0xC
	strb R0, [R5,#0xC]
	mov R0, #4
	bl sub_803CB00
locret_812A3B8:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812A3BC: .word byte_200AF80
	.word unk_201FD20
	.word 0x110
.endfunc // sub_812A350

.func
.thumb_func
sub_812A3C8:
	push {lr}
	bl sub_813D60C
	bne loc_812A3E8
	bl sub_813D978
	mov r0, #0x3c 
	strb R0, [R5,#1]
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #5
	strb R0, [R5,#0x10]
	mov r0, #0x24 
	bl sub_8132280
	b locret_812A3F8
loc_812A3E8:
	mov R0, #0x10
	bl sub_803CB18
	beq locret_812A3F8
	mov R0, #0x1C
	strb R0, [R5,#0xC]
	mov R0, #8
	strh R0, [R5,#0x28]
locret_812A3F8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812A3C8

.func
.thumb_func
sub_812A3FC:
	push {lr}
	bl sub_813D60C
	bne locret_812A420
	mov R0, #0x80
	bl chatbox_8045F3C
	beq loc_812A414
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_812A420
loc_812A414:
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x14
	strb R0, [R5,#0xC]
locret_812A420:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812A3FC

.func
.thumb_func
sub_812A424:
	push {lr}
	bl sub_813D60C
	bne locret_812A488
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812A488
	mov R0, #0
	bl sub_811B010
	mov R0, #1
	bl sub_811B010
	bl sub_8129248
	bl sub_812AFC8
	bl sub_812B530
	mov R0, #8
	strb R0, [R5,#1]
	// memBlock
	ldr R0, off_812A48C // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0xE]
	tst R0, R0
	bne loc_812A470
	ldrb R0, [R5,#0x12]
	bl sub_81325F4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	b loc_812A47A
loc_812A470:
	bl sub_81325E4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
loc_812A47A:
	// a1
	ldr R0, off_812A490 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_812A488:
	pop {pc}
	.balign 4, 0x00
off_812A48C: .word unk_20251A0
off_812A490: .word dword_812913C+0x14
.endfunc // sub_812A424

.func
.thumb_func
sub_812A494:
	push {lr}
	bl sub_813D60C
	bne locret_812A4A8
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_812A4A8
	mov R0, #0x10
	strb R0, [R5,#0xC]
locret_812A4A8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812A494

.func
.thumb_func
sub_812A4AC:
	push {lr}
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bne locret_812A4DA
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strh R0, [R5,#0x28]
	bl sub_8132398
	bl loc_803EA78
	bl sub_803EA50
	tst R0, R0
	bne loc_812A4D6
	bl sub_8146E60
	b locret_812A4DA
loc_812A4D6:
	bl sub_8148540
locret_812A4DA:
	pop {pc}
.endfunc // sub_812A4AC

loc_812A4DC:
	push {lr}
	ldr R0, off_812A4F0 // =off_812A4F4 
	ldrb R1, [R5,#3]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	mov R0, #1
	bl sub_803CB0C
	pop {pc}
off_812A4F0: .word off_812A4F4
off_812A4F4: .word sub_812A4FC+1
	.word sub_812A540+1
.func
.thumb_func
sub_812A4FC:
	push {lr}
	mov R0, #1
	bl sub_813D90C
	bl sub_8147F98
	mov R0, #0xC
	mov R1, #3
	mov R2, #2
	mov R3, #0
	bl sub_803DCE8
	ldr R0, dword_812A538 // =0x42523545 
	ldr R1, dword_812A53C // =0x2000 
	mov R2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_803EF60
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0xC]
	mov R0, #1
	bl sub_803CB00
	pop {pc}
	.balign 4, 0x00
dword_812A538: .word 0x42523545
dword_812A53C: .word 0x2000
.endfunc // sub_812A4FC

.func
.thumb_func
sub_812A540:
	push {lr}
	bl sub_8148224
	ldr R1, off_812A554 // =off_812A558 
	ldrb R2, [R5,#0xC]
	ldr R1, [R1,R2]
	mov LR, PC
	bx r1
	pop {pc}
	.balign 4, 0x00
off_812A554: .word off_812A558
off_812A558: .word sub_812A574+1
	.word sub_812A5B4+1
	.word sub_812A5F8+1
	.word sub_812A67C+1
	.word sub_812A694+1
	.word sub_812A6F8+1
	.word sub_812A758+1
.endfunc // sub_812A540

.func
.thumb_func
sub_812A574:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_812A59C
	bl sub_8048FC4
	cmp R1, #0x1C
	bne loc_812A59C
	mov R0, #2
	bl sub_811F7EC
	beq loc_812A59C
	bl sub_813D978
	mov R0, #0x83
	bl sound_play // () -> void
	mov R0, #0xC
	strb R0, [R5,#0xC]
	b locret_812A5B2
loc_812A59C:
	mov R0, #2
	bl sub_803CB18
	beq locret_812A5B2
	bl sub_813D638
	beq locret_812A5B2
	mov R0, #4
	strb R0, [R5,#0xC]
	mov R0, #0
	strb R0, [R5,#0xD]
locret_812A5B2:
	pop {pc}
.endfunc // sub_812A574

.func
.thumb_func
sub_812A5B4:
	push {R4-R7,lr}
	bl sub_813D638
	add r4, r0, #0
	tst R4, R4
	bne loc_812A5C6
	mov R0, #0
	strb R0, [R5,#0xC]
	b locret_812A5F4
loc_812A5C6:
	mov R0, #4
	bl sub_803CB18
	beq loc_812A5D8
	mov R0, #8
	strb R0, [R5,#0xC]
	mov R0, #0
	strh R0, [R5,#0x28]
	b locret_812A5F4
loc_812A5D8:
	mov R0, #8
	bl sub_803CB18
	bne loc_812A5EE
	mov r0, #0x20 
	bl sub_803CB18
	beq locret_812A5F4
	mov R0, #0x83
	bl sub_803C28A
loc_812A5EE:
	mov R0, #0xC
	strb R0, [R5,#0xC]
	b locret_812A5F4
locret_812A5F4:
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812A5B4

.func
.thumb_func
sub_812A5F8:
	push {R4-R7,lr}
	mov R0, #8
	bl sub_803CB18
	beq loc_812A610
loc_812A602:
	mov R0, #0x14
	strb R0, [R5,#0xC]
	mov R0, #0x10
	bl sub_803CB18
	bne loc_812A628
	b loc_812A666
loc_812A610:
	mov R0, #0x10
	bl sub_803CB18
	bne loc_812A628
	mov r0, #0x20 
	bl sub_803CB18
	beq locret_812A676
	mov R0, #8
	bl sub_803CB0C
	b loc_812A602
loc_812A628:
	bl loc_803EA78
	bl sub_803EA50
	tst R0, R0
	bne loc_812A648
	bl sub_8147B24
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strh R0, [R5,#0x28]
	bl sub_8132398
	b loc_812A666
loc_812A648:
	bl sub_8148D24
	tst R0, R0
	beq loc_812A658
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	b loc_812A666
loc_812A658:
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strh R0, [R5,#0x28]
	bl sub_8132398
loc_812A666:
	bl sub_813D5D0
	add r6, r0, #0
	mov R4, #1
	bl sub_81469A0
	bl sub_81469E8
locret_812A676:
	pop {R4-R7,pc}
	.word byte_200BC50
.endfunc // sub_812A5F8

.func
.thumb_func
sub_812A67C:
	push {lr}
	bl sub_813D60C
	bne locret_812A690
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov R0, #0x10
	strb R0, [R5,#0xC]
locret_812A690:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812A67C

.func
.thumb_func
sub_812A694:
	push {lr}
	bl sub_813D60C
	bne locret_812A6EC
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812A6EC
	bl sub_8129248
	bl sub_812AFC8
	bl sub_812B530
	mov R0, #8
	strb R0, [R5,#1]
	// memBlock
	ldr R0, off_812A6F0 // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	mov R0, #0
	strb R0, [R5,#0x1C]
	strb R0, [R5,#0x1E]
	ldrb R0, [R5,#0xE]
	tst R0, R0
	bne loc_812A6D4
	ldrb R0, [R5,#0x12]
	bl sub_81325F4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	b loc_812A6DE
loc_812A6D4:
	bl sub_81325E4
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
loc_812A6DE:
	// a1
	ldr R0, off_812A6F4 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_812A6EC:
	pop {pc}
	.byte 0, 0
off_812A6F0: .word unk_20251A0
off_812A6F4: .word dword_812913C+0x14
.endfunc // sub_812A694

.func
.thumb_func
sub_812A6F8:
	push {lr}
	mov R0, #0x10
	bl sub_803CB18
	beq loc_812A74C
	bl loc_803EA78
	bl sub_803EA50
	tst R0, R0
	bne loc_812A722
	bl sub_8147B24
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strh R0, [R5,#0x28]
	bl sub_8132398
	b loc_812A742
loc_812A722:
	bl sub_8148D24
	tst R0, R0
	beq loc_812A732
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	b loc_812A742
loc_812A732:
	mov R0, #0x10
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strh R0, [R5,#0x28]
	bl sub_8132398
	b loc_812A742
loc_812A742:
	bl sub_81469A0
	bl sub_81469E8
	b locret_812A756
loc_812A74C:
	bl sub_813D60C
	bne locret_812A756
	mov R0, #0x18
	strb R0, [R5,#0xC]
locret_812A756:
	pop {pc}
.endfunc // sub_812A6F8

.func
.thumb_func
sub_812A758:
	push {lr}
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_812A76A
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0xC]
locret_812A76A:
	pop {pc}
.endfunc // sub_812A758

.func
.thumb_func
sub_812A76C:
	push {R4-R7,lr}
	bl sub_803EA60
	cmp R0, #8
	bne loc_812A77A
	bl sub_803C604
loc_812A77A:
	mov R0, #0
	strb R0, [R5,#0x10]
	bl sub_803EAE4
	add r4, r0, #0
	cmp R0, #4
	beq loc_812A866
	cmp R0, #1
	bne loc_812A7A2
	bl sub_803EA60
	cmp R0, #0
	beq loc_812A7A2
	ldrh R0, [R5,#0x28]
	add R0, #1
	strh R0, [R5,#0x28]
	ldr R1, off_812A8A0 // =0x168 
	cmp R0, R1
	blt loc_812A878
	b loc_812A866
loc_812A7A2:
	mov R0, #1
	strb R0, [R5,#0x10]
	mov R1, #0x10
	tst R4, R1
	beq loc_812A7AE
	b loc_812A7B8
loc_812A7AE:
	bl sub_81325CC
	mov R1, #0
	strh R1, [R5,#0x26]
	strh R1, [R0,#8]
loc_812A7B8:
	mov R1, #8
	tst R4, R1
	bne loc_812A878
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	ldr R1, dword_812A898 // =0xFFFFFFFF 
	cmp R0, R1
	beq loc_812A878
	mov R7, #0x10
	add r7, r7, r0
	mov R3, #8
loc_812A7D8:
	ldr R1, [R0,#4]
	ldr R2, [R6,#0x1C]
	cmp R1, R2
	bne loc_812A876
	lsr r3, r3, #1
	ldrh R1, [R0,#2]
	ldrh R2, [R6,#0xA]
	cmp R1, R2
	bne loc_812A7EC
	lsr r3, r3, #1
loc_812A7EC:
	add R0, #0x10
	cmp R0, R7
	ble loc_812A7D8
	tst R3, R3
	bne loc_812A842
	mov R0, #0x14
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#0x11]
	bl sub_8132290
	cmp R0, #0x18
	beq loc_812A814
	cmp R0, #0x1C
	beq loc_812A814
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0
	b loc_812A838
loc_812A814:
	mov R4, #0
	ldrb R0, [R5,#0x12]
	bl sub_81325F4
	cmp R0, #0x14
	beq loc_812A82A
	cmp R0, #0x18
	beq loc_812A828
	mov R4, #2
	b loc_812A82A
loc_812A828:
	mov R4, #1
loc_812A82A:
	add r0, r4, #0
	bl sub_81209DC
	lsl r1, r1, #8
	orr R0, R1
	strh R0, [R5,#0x2A]
	mov R0, #0
loc_812A838:
	strb R0, [R5,#3]
	mov r0, #0x28 
	bl sub_8132280
	b loc_812A876
loc_812A842:
	cmp R3, #1
	bgt loc_812A876
	mov R0, #2
	strb R0, [R5,#0x10]
	mov r0, #0x25 
	bl sub_8132280
	mov r1, #0x38 
	strb R1, [R5,#1]
	mov R1, #0
	strb R1, [R5,#2]
	mov R1, #0x10
	strh R1, [R5,#0x26]
	bl sub_803E8F8
	ldr R1, dword_812A89C // =0x2000 
	strh R1, [R0,#0xA]
	b loc_812A876
loc_812A866:
	mov r0, #0x24 
	bl sub_8132280
	mov r0, #0x3c 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
loc_812A876:
	b loc_812A878
loc_812A878:
	bl sub_812B26C
	bl sub_803EA60
	cmp R0, #0
	beq loc_812A88E
	mov R0, #0xDA
	mov R1, #2
	bl sub_803C59C
	b locret_812A892
loc_812A88E:
	bl sub_812B504
locret_812A892:
	pop {R4-R7,pc}
	.word byte_200A290
dword_812A898: .word 0xFFFFFFFF
dword_812A89C: .word 0x2000
off_812A8A0: .word 0x168
.endfunc // sub_812A76C

.func
.thumb_func
sub_812A8A4:
	push {lr}
	bl sub_803EA60
	cmp R0, #8
	bne loc_812A8B8
	push {r5}
	ldr R5, off_812A8DC // =byte_200A290 
	bl cb_8048FD4
	pop {r5}
loc_812A8B8:
	ldr R0, off_812A8E0 // =off_812A8E4 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_803EA60
	cmp R0, #0
	beq loc_812A8D4
	mov R0, #0xDA
	mov R1, #2
	bl sub_803C59C
	b locret_812A8D8
loc_812A8D4:
	bl sub_812B504
locret_812A8D8:
	pop {pc}
	.balign 4, 0x00
off_812A8DC: .word byte_200A290
off_812A8E0: .word off_812A8E4
off_812A8E4: .word sub_812A8EC+1
	.word sub_812AAC0+1
.endfunc // sub_812A8A4

.func
.thumb_func
sub_812A8EC:
	push {R4-R7,lr}
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #0x80
	bl chatbox_8045F3C
	tst R0, R0
	beq loc_812A94E
	mov R0, #0x10
	bl chatbox_8045F3C
	beq loc_812A90A
loc_812A904:
	mov R0, #1
	strb R0, [R5,#0x11]
	b loc_812A924
loc_812A90A:
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq loc_812A94E
	bl chatbox_8045F4C
	tst R0, R0
	bne loc_812A904
	mov r0, #0x23 
	bl sub_8132280
	mov R0, #0
	strb R0, [R5,#0x11]
loc_812A924:
	mov R1, #4
	ldrb R0, [R5,#0x11]
	tst R0, R0
	beq loc_812A92E
	mov R1, #8
loc_812A92E:
	cmp R1, #4
	bne loc_812A94C
	push {r1}
	bl sub_8120A38
	tst R0, R0
	bne loc_812A94A
	tst R1, R1
	bne loc_812A94A
	tst R3, R3
	bne loc_812A94A
	pop {r1}
	mov R1, #0x84
	b loc_812A94C
loc_812A94A:
	pop {r1}
loc_812A94C:
	strh R1, [R5,#0x26]
loc_812A94E:
	bl sub_803EAE4
	cmp R0, #4
	bne loc_812A958
	b loc_812AAAC
loc_812A958:
	cmp R0, #1
	bne loc_812A95E
	b loc_812AAB8
loc_812A95E:
	mov R0, #1
	strb R0, [R5,#0x10]
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812A96C
	b loc_812A978
loc_812A96C:
	bl sub_803EF7C
	ldrh R1, [R5,#0x2A]
	strh R1, [R0,#2]
	ldrh R1, [R5,#0x26]
	strh R1, [R0,#8]
loc_812A978:
	mov R1, #8
	tst R4, R1
	beq loc_812A980
	b loc_812AAB8
loc_812A980:
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, dword_812ABE8 // =0xFFFFFFFF 
	cmp R0, R1
	bne loc_812A998
	b loc_812AAB8
loc_812A998:
	mov R7, #0x10
	add r7, r7, r0
	add r0, r4, #0
	bl sub_8132538
	cmp R0, #2
	bgt loc_812A9DA
	mov r1, #0x38 
	strb R1, [R5,#1]
	mov R1, #0
	strb R1, [R5,#2]
	mov R1, #4
	strb R1, [R5,#0x10]
	cmp R0, #2
	bne loc_812A9BE
	mov r0, #0x2a 
	bl sub_8132280
	b loc_812AAB6
loc_812A9BE:
	mov R1, #3
	mov r2, #0x29 
	ldrh R0, [R5,#0x26]
	cmp R0, #8
	bne loc_812A9CC
	mov R1, #4
	mov r2, #0x2a 
loc_812A9CC:
	strb R1, [R5,#0x10]
	add r0, r2, #0
	bl sub_8132280
	mov R1, #0x10
	strh R1, [R5,#0x26]
	b loc_812AAB6
loc_812A9DA:
	cmp R0, #0xFF
	beq loc_812AAB6
	cmp R0, #4
	bne loc_812AAB6
	bl sub_803EA60
	cmp R0, #0
	bne loc_812AA14
	mov R0, #0x17
	mov r1, #0x22 
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_803F674
	cmp R1, #2
	bne loc_812AA04
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x22 
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	b loc_812AA14
loc_812AA04:
	cmp R1, #0
	bne loc_812AA10
	mov R0, #0
	bl sub_803F4EC
	b loc_812AA14
loc_812AA10:
	mov r0, #0x27 
	b loc_812AA68
loc_812AA14:
	bl sub_803EA60
	cmp R0, #0
	beq loc_812AA22
	mov R0, #0
	bl sub_803F4EC
loc_812AA22:
	ldrb R0, [R5,#0x13]
	cmp R0, #1
	bne loc_812AA7E
	mov R2, #0
	add r1, r4, #0
	ldrb R0, [R1,#8]
	cmp R0, #0x84
	bne loc_812AA36
	mov R3, #1
	orr R2, R3
loc_812AA36:
	add R1, #0x10
	ldrb R0, [R1,#8]
	cmp R0, #0x84
	bne loc_812AA42
	mov R3, #2
	orr R2, R3
loc_812AA42:
	tst R2, R2
	beq loc_812AA7E
	push {r2}
	bl sub_803DD60
	pop {r2}
	tst R0, R0
	beq loc_812AA5C
	mov R0, #2
	tst R0, R2
	bne loc_812AA66
	mov r0, #0x29 
	b loc_812AA68
loc_812AA5C:
	mov R0, #1
	tst R0, R2
	bne loc_812AA66
	mov r0, #0x29 
	b loc_812AA68
loc_812AA66:
	mov r0, #0x26 
loc_812AA68:
	bl sub_8132280
	mov r1, #0x38 
	strb R1, [R5,#1]
	mov R1, #0
	strb R1, [R5,#2]
	mov R1, #4
	strb R1, [R5,#0x10]
	mov R1, #0x10
	strh R1, [R5,#0x26]
	b loc_812AAB6
loc_812AA7E:
	bl sub_8132290
	strb R0, [R5,#1]
	cmp R0, #0x1C
	bne loc_812AA90
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812AA90:
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	strb R0, [R5,#0x1B]
	ldrh R0, [R4,#2]
	strh R0, [R5,#0x2A]
	b loc_812AAB6
	cmp R3, #1
	bgt loc_812AAB6
	mov R0, #2
	strb R0, [R5,#0x10]
	mov r0, #0x25 
	bl sub_8132280
loc_812AAAC:
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
loc_812AAB6:
	b loc_812AAB8
loc_812AAB8:
	bl sub_812B26C
	pop {R4-R7,pc}
	.byte 0, 0
.endfunc // sub_812A8EC

.func
.thumb_func
sub_812AAC0:
	push {R4-R7,lr}
	mov R0, #0
	strb R0, [R5,#0x10]
	mov R0, #0x80
	bl chatbox_8045F3C
	tst R0, R0
	beq loc_812AB04
	mov R0, #0x10
	bl chatbox_8045F3C
	beq loc_812AADE
loc_812AAD8:
	mov R0, #1
	strb R0, [R5,#0x11]
	b loc_812AAF8
loc_812AADE:
	mov r0, #0x20 
	bl chatbox_8045F3C
	beq loc_812AB04
	bl chatbox_8045F4C
	tst R0, R0
	bne loc_812AAD8
	mov r0, #0x23 
	bl sub_8132280
	mov R0, #0
	strb R0, [R5,#0x11]
loc_812AAF8:
	mov R1, #4
	ldrb R0, [R5,#0x11]
	tst R0, R0
	beq loc_812AB02
	mov R1, #8
loc_812AB02:
	strh R1, [R5,#0x26]
loc_812AB04:
	bl sub_803EAE4
	cmp R0, #4
	beq loc_812ABD6
	cmp R0, #1
	beq loc_812ABE2
	mov R0, #1
	strb R0, [R5,#0x10]
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812AB1E
	b loc_812AB26
loc_812AB1E:
	bl sub_81325CC
	ldrh R1, [R5,#0x26]
	strh R1, [R0,#8]
loc_812AB26:
	mov R1, #8
	tst R4, R1
	bne loc_812ABE2
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, dword_812ABE8 // =0xFFFFFFFF 
	cmp R0, R1
	beq loc_812ABE2
	mov R7, #0x10
	add r7, r7, r0
	mov R3, #8
loc_812AB48:
	ldr R1, [R0,#4]
	ldr R2, [R6,#0x1C]
	cmp R1, R2
	bne loc_812ABE0
	lsr r3, r3, #1
	ldrh R1, [R0,#2]
	ldrh R2, [R6,#0xA]
	cmp R1, R2
	bne loc_812AB5C
	lsr r3, r3, #1
loc_812AB5C:
	add R0, #0x10
	cmp R0, R7
	ble loc_812AB48
	tst R3, R3
	bne loc_812ABC8
	add r0, r4, #0
	bl sub_8132430
	cmp R0, #2
	bgt loc_812ABA4
	mov r1, #0x38 
	strb R1, [R5,#1]
	mov R1, #0
	strb R1, [R5,#2]
	mov R1, #4
	strb R1, [R5,#0x10]
	cmp R0, #2
	bne loc_812AB88
	mov r0, #0x2a 
	bl sub_8132280
	b loc_812ABE0
loc_812AB88:
	mov R1, #3
	mov r2, #0x29 
	ldrh R0, [R5,#0x26]
	cmp R0, #8
	bne loc_812AB96
	mov R1, #4
	mov r2, #0x2a 
loc_812AB96:
	strb R1, [R5,#0x10]
	add r0, r2, #0
	bl sub_8132280
	mov R1, #0x10
	strh R1, [R5,#0x26]
	b loc_812ABE0
loc_812ABA4:
	cmp R0, #0xFF
	beq loc_812ABE0
	cmp R0, #4
	bne loc_812ABE0
	bl sub_8132290
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	ldrb R0, [R5,#1]
	cmp r0, #0x28 
	blt loc_812ABE0
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812ABE0
loc_812ABC8:
	cmp R3, #1
	bgt loc_812ABE0
	mov R0, #2
	strb R0, [R5,#0x10]
	mov r0, #0x25 
	bl sub_8132280
loc_812ABD6:
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
loc_812ABE0:
	b loc_812ABE2
loc_812ABE2:
	bl sub_812B26C
	pop {R4-R7,pc}
dword_812ABE8: .word 0xFFFFFFFF
.endfunc // sub_812AAC0

.func
.thumb_func
sub_812ABEC:
	push {lr}
	ldr R0, off_812AC00 // =off_812AC04 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_812B26C
	pop {pc}
	.byte 0, 0
off_812AC00: .word off_812AC04
off_812AC04: .word sub_812AC1A+1
	.word sub_812AC80+1
	.word sub_812AC80+1
	.word sub_812ACF0+1
.endfunc // sub_812ABEC

.func
.thumb_func
sub_812AC14:
	push {R4-R7,lr}
	mov R7, #0xC
	b loc_812AC2A
.endfunc // sub_812AC14

.func
.thumb_func
sub_812AC1A:
	push {R4-R7,lr}
	bl sub_803EA60
	cmp R0, #8
	bne loc_812AC28
	bl sub_803C612
loc_812AC28:
	mov R7, #2
loc_812AC2A:
	bl sub_803EAE4
	add r4, r0, #0
	bl sub_803EA60
	cmp R0, #0
	beq loc_812AC56
	cmp R4, #4
	beq loc_812AC7A
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_812AC4C
	bl sub_803C754
	mov R0, #4
	strb R0, [R5,#3]
	b locret_812AC7E
loc_812AC4C:
	bl sub_813D60C
	tst R0, R0
	bne locret_812AC7E
	b loc_812AC7A
loc_812AC56:
	cmp R4, #4
	beq loc_812AC76
	cmp R4, #1
	beq loc_812AC76
	ldrb R0, [R5,#3]
	tst R0, R0
	bne loc_812AC6E
	bl sub_803DDA4
	mov R0, #4
	strb R0, [R5,#3]
	b locret_812AC7E
loc_812AC6E:
	bl sub_803DE24
	tst R0, R0
	bne locret_812AC7E
loc_812AC76:
	bl sub_81440D8 // static () -> void
loc_812AC7A:
	mov R0, #4
	strb R0, [R5,R7]
locret_812AC7E:
	pop {R4-R7,pc}
.endfunc // sub_812AC1A

.func
.thumb_func
sub_812AC80:
	push {r4,lr}
	ldrb R0, [R5,#2]
	cmp R0, #8
	beq loc_812ACB0
	mov r4, #0x24 
	bl sub_803EA60
	cmp R0, #0
	beq loc_812ACA6
	bl sub_8149644
	bl sub_8149568
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #2
	bne loc_812ACA6
	mov r4, #0x30 
loc_812ACA6:
	add r0, r4, #0
	bl sub_8132280
	mov R0, #8
	strb R0, [R5,#2]
loc_812ACB0:
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #2
	beq loc_812ACE0
	mov R0, #3
	bl sub_811F7EC
	beq loc_812ACE0
	bl sub_803EA60
	cmp R0, #0
	beq loc_812ACDC
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812ACE0
loc_812ACDC:
	bl sub_8132614
loc_812ACE0:
	bl sub_803EA60
	cmp R0, #8
	bne locret_812ACEC
	bl sub_803C612
locret_812ACEC:
	pop {r4,pc}
	.byte 0, 0
.endfunc // sub_812AC80

.func
.thumb_func
sub_812ACF0:
	push {lr}
	bl sub_812AE74
	bl sub_803EA60
	cmp R0, #8
	bne locret_812AD02
	bl sub_803C612
locret_812AD02:
	pop {pc}
.endfunc // sub_812ACF0

.func
.thumb_func
sub_812AD04:
	push {lr}
	bl sub_803EAE4
	cmp R0, #4
	beq loc_812ADD2
	cmp R0, #1
	bne loc_812AD14
	b loc_812ADDE
loc_812AD14:
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812AD1E
	b loc_812AD26
loc_812AD1E:
	bl sub_81325CC
	ldrh R1, [R5,#0x26]
	strh R1, [R0,#8]
loc_812AD26:
	mov R1, #8
	tst R4, R1
	bne loc_812ADDE
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, off_812AE2C // =off_812AE30 
	cmp R0, R1
	beq loc_812ADDE
	mov R7, #0x10
	add r7, r7, r0
	mov R3, #8
loc_812AD48:
	ldr R1, [R0,#4]
	ldr R2, [R6,#0x1C]
	cmp R1, R2
	bne loc_812ADDC
	lsr r3, r3, #1
	ldrh R1, [R0,#2]
	ldrh R2, [R6,#0xA]
	cmp R1, R2
	bne loc_812AD5C
	lsr r3, r3, #1
loc_812AD5C:
	add R0, #0x10
	cmp R0, R7
	ble loc_812AD48
	tst R3, R3
	bne loc_812ADDC
	ldrh R1, [R5,#0x26]
	cmp R1, #0x10
	bne loc_812AD9C
	bl sub_803DD60
	tst R0, R0
	beq loc_812AD88
	add r0, r4, #0
	bl sub_81325C0
	cmp R1, #0x10
	bne loc_812ADDC
	cmp R0, #0x10
	beq loc_812ADC6
	cmp R0, #8
	bne loc_812ADDC
	b loc_812ADC6
loc_812AD88:
	add r0, r4, #0
	bl sub_81325C0
	cmp R0, #0x10
	bne loc_812ADDC
	cmp R1, #0x10
	beq loc_812ADC6
	cmp R1, #8
	bne loc_812ADDC
	b loc_812ADC6
loc_812AD9C:
	cmp R1, #8
	bne loc_812ADDC
	bl sub_803DD60
	tst R0, R0
	beq loc_812ADB8
	add r0, r4, #0
	bl sub_81325C0
	cmp R0, #0x10
	bne loc_812ADDC
	cmp R1, #8
	bne loc_812ADDC
	b loc_812ADC6
loc_812ADB8:
	add r0, r4, #0
	bl sub_81325C0
	cmp R1, #0x10
	bne loc_812ADDC
	cmp R0, #8
	bne loc_812ADDC
loc_812ADC6:
	mov r0, #0x3c 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	b loc_812ADDC
loc_812ADD2:
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
loc_812ADDC:
	b loc_812ADDE
loc_812ADDE:
	bl sub_812B26C
	bl sub_803EA60
	cmp R0, #8
	bne loc_812ADF0
	bl sub_803C612
	b locret_812ADF8
loc_812ADF0:
	cmp R0, #0
	bne locret_812ADF8
	bl sub_812B504
locret_812ADF8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812AD04

.func
.thumb_func
sub_812ADFC:
	push {lr}
	bl sub_803EA60
	cmp R0, #8
	bne loc_812AE10
	ldrb R0, [R5,#2]
	tst R0, R0
	beq loc_812AE10
	bl sub_803C612
loc_812AE10:
	ldr R0, off_812AE2C // =off_812AE30 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_812B26C
	bl sub_803EA60
	cmp R0, #0
	bne locret_812AE2A
	bl sub_812B504
locret_812AE2A:
	pop {pc}
off_812AE2C: .word off_812AE30
off_812AE30: .word sub_812AC1A+1
	.word sub_812AE3C+1
	.word sub_812AE74+1
.endfunc // sub_812ADFC

.func
.thumb_func
sub_812AE3C:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	beq loc_812AE4E
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_812AE6C
loc_812AE4E:
	bl sub_803EA60
	cmp R0, #0
	beq loc_812AE68
	mov R0, #8
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_812AE6C
loc_812AE68:
	bl sub_8132614
locret_812AE6C:
	pop {pc}
	.byte 0, 0
	.word 0xFFFFFFFF
.endfunc // sub_812AE3C

.func
.thumb_func
sub_812AE74:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812AEBE
	bl sub_8129248
	bl sub_812B530
	bl chatbox_8040818
	bl sub_8132614
	mov R0, #0x10
	ldrb R1, [R5,#2]
	cmp R1, #0x14
	blt loc_812AE96
	mov r0, #0x2c 
loc_812AE96:
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1E]
	// memBlock
	ldr R0, off_812AEC0 // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr R0, off_812AEC4 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
	bl sub_803EA60
	cmp R0, #0
	beq locret_812AEBE
	bl sub_8149644
	bl sub_8149568
locret_812AEBE:
	pop {pc}
off_812AEC0: .word unk_20251A0
off_812AEC4: .word dword_812913C+0x14
.endfunc // sub_812AE74

.func
.thumb_func
sub_812AEC8:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812AEDC
	bl sub_811F708
locret_812AEDC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_812AEC8

.func
.thumb_func
sub_812AEE0:
	push {lr}
	ldr R0, off_812AEF4 // =off_812AEF8 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_812B26C
	pop {pc}
	.balign 4, 0x00
off_812AEF4: .word off_812AEF8
off_812AEF8: .word sub_812AEFC+1
.endfunc // sub_812AEE0

.func
.thumb_func
sub_812AEFC:
	push {lr}
	mov R0, #0x80
	bl chatbox_8045F3C
	beq loc_812AF0E
	mov R0, #8
	bl chatbox_8045F3C
	beq locret_812AF12
loc_812AF0E:
	bl sub_8132614
locret_812AF12:
	pop {pc}
.endfunc // sub_812AEFC

.func
.thumb_func
sub_812AF14:
	push {lr}
	pop {pc}
.endfunc // sub_812AF14

.func
.thumb_func
sub_812AF18:
	push {R4-R7,lr}
	bl sub_812AF3C
	// initRefs
	ldr R0, off_812B088 // =dword_812B08C 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	bl sub_812AF78
	bl sub_812AF84
	bl sub_812AF98
	bl sub_812AFA4
	bl chatbox_8040818
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812AF18

.func
.thumb_func
sub_812AF3C:
	push {R4-R7,lr}
	ldr R4, off_812B084 // =unk_201D020 
	mov R6, #0
	mov R7, #0
	ldr R5, off_812B020 // =dword_812B024 
loc_812AF46:
	ldr R0, [R5,R7]
	add R7, #4
	ldr R1, [R5,R7]
	add R7, #4
	bl sub_811FB84
	str R0, [R4,R6]
	add R6, #4
	mov R1, #0
loc_812AF58:
	ldr R0, [R5,R7]
	str R0, [R4,R6]
	add R6, #4
	add R7, #4
	add R1, #1
	cmp R1, #2
	blt loc_812AF58
	cmp r7, #0x60 
	blt loc_812AF46
	mov R0, #0
	str R0, [R4,R6]
	// initRefs
	ldr R0, off_812B084 // =unk_201D020 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812AF3C

.func
.thumb_func
sub_812AF78:
	push {lr}
	// initRefs
	ldr R0, off_812B0E4 // =dword_812B0E8 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812AF78

.func
.thumb_func
sub_812AF84:
	push {lr}
	// initRefs
	ldr R0, off_812B164 // =dword_812B168 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	ldr R0, off_812AFE0 // =dword_812AFE4 
	ldr R1, off_812B018 // =unk_201BA20 
	ldr R2, off_812B01C // =decomp_2013A00 
	bl sub_8123300
	pop {pc}
.endfunc // sub_812AF84

.func
.thumb_func
sub_812AF98:
	push {lr}
	// initRefs
	ldr R0, off_812B19C // =dword_812B1A0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812AF98

.func
.thumb_func
sub_812AFA4:
	push {lr}
	// initRefs
	ldr R0, off_812B1BC // =dword_812B1C0 
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	pop {pc}
	.byte 0, 0
.endfunc // sub_812AFA4

.func
.thumb_func
sub_812AFB0:
	push {R4-R7,lr}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_812B0CC // =unk_201FDA0 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_812AFB0

	bl sub_812B4AC
	pop {R4-R7,pc}
.func
.thumb_func
sub_812AFC8:
	push {R4-R7,lr}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_812B0C0 // =unk_201D120 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_812AFC8

	bl sub_812B430
	pop {R4-R7,pc}
off_812AFE0: .word dword_812AFE4
dword_812AFE4: .word 0x86DA1B8, 0x86DA1B8, 0x86DA1B8, 0x86DA1B8, 0x86DA1B8
	.word 0x86DA1B8, 0x86DA1B8, 0x86DA1B8, 0x86DA1B8, 0x86DA1B8
	.word 0x86DA1B8, 0x86DA1B8, 0x86DA1B8
off_812B018: .word unk_201BA20
off_812B01C: .word decomp_2013A00
off_812B020: .word dword_812B024
dword_812B024: .word 0x86C9108, 0x2, 0x3001960, 0x20, 0x86C9B54, 0x2, 0x3001AA0
	.word 0x20, 0x86C9B54, 0x2, 0x30016B0, 0x20, 0x886C9AA4, 0x2
	.word 0x3001A60, 0x2013A00, 0x872CF94, 0x2, 0x3001AE0, 0x20, 0x86C9AF4
	.word 0x2, 0x30019A0, 0x20
off_812B084: .word unk_201D020
off_812B088: .word dword_812B08C
dword_812B08C: .word 0x886D91FC, 0x2022AA0, 0x2013A00, 0x886D93E0, 0x20231A0
	.word 0x2013A00, 0x886DB208, 0x20251B0, 0x2013A00, 0x886DB9C4
	.word 0x20222A0, 0x2013A00, 0x886D9104
off_812B0C0: .word unk_201D120
	.word decomp_2013A00
	.word 0x886DB014
off_812B0CC: .word unk_201FDA0
	.word decomp_2013A00
	.word 0x886DB014, 0x201FDA0, 0x2013A00, 0x0
off_812B0E4: .word dword_812B0E8
dword_812B0E8: .word 0x886C8054, 0x6000020, 0x2013A00, 0x886C9BD4, 0x6014800
	.word decomp_2013A00
	.byte 0x6C 
	.byte 0x9D
	.byte 0x6C 
	.byte  8
	.byte 0xD0
	.byte 0x16
	.byte  0
	.byte  3
	.byte 0x20
	.byte  0
	.byte  0
	.byte  0
	.byte 0xE0
	.byte 0x7A 
	.byte 0x6B 
	.byte  8
	.byte  0
	.byte 0x40 
	.byte  0
	.byte  6
	.byte  0
	.byte 0x28 
	.byte  0
	.byte  0
	.byte 0xC0
	.byte 0x96
	.byte 0x6C 
	.byte 0x88
	.byte  0
	.byte 0x68 
	.byte  0
	.byte  6
	.byte  0
	.byte 0x3A 
	.byte  1
	.byte  2
	.byte 0xC
	.byte 0x98
	.byte 0x6C 
	.byte 0x88
	.byte 0x80
	.byte 0x6B 
	.byte  0
	.byte  6
	.byte  0
	.byte 0x3A 
	.byte  1
	.byte  2
	.byte 0xD4
	.byte 0x9B
	.byte 0x6C 
	.byte 0x88
	.byte  0
	.byte 0x48 
	.byte  1
	.byte  6
	.word decomp_2013A00
	.byte 0x38 
	.byte 0x9D
	.byte 0x6C 
	.byte 0x88
	.byte 0x80
	.byte 0x49 
	.byte  1
	.byte  6
	.byte  0
	.byte 0x3A 
	.byte  1
	.byte  2
	.byte 0x74 
	.byte 0x92
	.byte 0x6C 
	.byte 0x88
	.byte 0x20
	.byte 0x80
	.byte  0
	.byte  6
	.byte  0
	.byte 0x3A 
	.byte  1
	.byte  2
	.byte 0x68 
	.byte 0x96
	.byte 0x6C 
	.byte 0x88
	.byte 0x20
	.byte 0x1A
	.byte  0
	.byte  3
	.byte  0
	.byte 0x3A 
	.byte  1
	.byte  2
	.byte  0
	.byte  0
	.byte  0
	.byte  0
off_812B164: .word dword_812B168
dword_812B168: .word 0x886CE7D0, 0x201D620, 0x2013A00, 0x886CE8AC, 0x201DB20
	.word 0x2013A00, 0x886DC418, 0x201E420, 0x2013A00, 0x886CE9E8
	.word 0x20227A0, 0x2013A00, 0x0
off_812B19C: .word dword_812B1A0
dword_812B1A0: .word 0x886DCA9C, 0x201E920, 0x2013A00, 0x886DCBC8, 0x201EE20
	.word 0x2013A00, 0x0
off_812B1BC: .word dword_812B1C0
dword_812B1C0: .word 0x886DD0AC, 0x201F320, 0x2013A00, 0x886DD1CC, 0x201F820
	.word 0x2013A00, 0x0
.func
.thumb_func
sub_812B1DC:
	push {R4-R7,lr}
	add r4, r0, #0
	// memBlock
	ldr R0, off_812B258 // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	ldrh R2, [R4,#2]
	ldrb R1, [R4,#1]
	ldrb R0, [R4]
	bl sub_8046670
	add R4, #4
	mov R6, #0
loc_812B1F6:
	ldrh R2, [R4,#2]
	lsl r3, r6, #0x10
	orr R2, R3
	ldrb R1, [R4,#1]
	ldrb R0, [R4]
	bl sub_8046670
	ldr R1, off_812B258 // =unk_20251A0 
	lsl r2, r6, #2
	str R0, [R1,R2]
	add R6, #1
	add R4, #4
	ldrb R0, [R4]
	cmp R0, #0xFF
	bne loc_812B1F6
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812B1DC

.func
.thumb_func
sub_812B218:
	push {R4-R7,lr}
	ldrb R4, [R5,#0x1E]
	lsl r4, r4, #2
	ldr R6, off_812B258 // =unk_20251A0 
	ldr R0, [R6,R4]
	tst R0, R0
	bne locret_812B254
	lsr r1, r4, #2
	add R1, #1
	mov R0, #0x1C
	mov R2, #0
	lsl r2, r2, #8
	lsr r3, r4, #2
	lsl r3, r3, #0x10
	orr R2, R3
	mov R3, #1
	lsl r3, r3, #0x18
	orr R2, R3
	mov R3, #1
	orr R2, R3
	bl sub_8046670
	mov R1, #1
	lsl r1, r1, #0x1f
	orr R0, R1
	ldr R1, off_812B258 // =unk_20251A0 
	str R0, [R1,R4]
	ldrb R0, [R5,#0x1E]
	add R0, #1
	strb R0, [R5,#0x1E]
locret_812B254:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812B258: .word unk_20251A0
.endfunc // sub_812B218

.func
.thumb_func
sub_812B25C:
	push {lr}
	bl sub_812B2C4
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {pc}
.endfunc // sub_812B25C

.func
.thumb_func
sub_812B26C:
	push {r4,lr}
	mov R4, #0x13
	bl sub_8132290
	cmp R0, #0x18
	beq loc_812B27E
	cmp R0, #0x1C
	beq loc_812B27E
	mov R4, #0x12
loc_812B27E:
	add r0, r4, #0
	bl sub_812B25C
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_812B26C

.func
.thumb_func
sub_812B288:
	push {r4,r6,lr}
	add r6, r0, #0
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	tst R0, R1
	bne locret_812B2FC
	ldr R0, off_812B2BC // =0x78 
	ldrb R1, [R5,R6]
	lsr r1, r1, #1
	b loc_812B2AC
.endfunc // sub_812B288

.func
.thumb_func
sub_812B29C:
	push {r4,r6,lr}
	add r6, r0, #0
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	tst R0, R1
	bne locret_812B2FC
	ldr R0, off_812B2BC // =0x78 
	ldrb R1, [R5,R6]
loc_812B2AC:
	mov r3, #0x20 
	mul R1, R3
	ldr R2, off_812B2C0 // =0x28 
	add r1, r1, r2
	mov R2, #2
	bl sub_811C23C
	pop {r4,r6,pc}
off_812B2BC: .word 0x78
off_812B2C0: .word 0x28
.endfunc // sub_812B29C

.func
.thumb_func
sub_812B2C4:
	push {r4,r6,lr}
	add r6, r0, #0
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	tst R0, R1
	bne locret_812B2FC
	ldr R0, dword_812B30C // =0x80000 
	ldrb R1, [R5,R6]
	mov R3, #0x13
	mul R1, R3
	ldr R2, dword_812B310 // =0x1D 
	add r1, r1, r2
	orr R0, R1
	ldr R1, dword_812B314 // =0x20004 
	ldrb R2, [R5,#0x17]
	ldr R3, off_812B300 // =dword_8129178 
	ldr R4, dword_812B304 // =0x40000000 
	bl sub_811FAF4
	ldrb R1, [R5,#0x18]
	sub R1, #1
	strb R1, [R5,#0x18]
	bne locret_812B2FC
	ldr R1, off_812B308 // =dword_8129180 
	bl sub_8120CC8
	strb R0, [R5,#0x17]
	strb R1, [R5,#0x18]
locret_812B2FC:
	pop {r4,r6,pc}
	.byte 0, 0
off_812B300: .word dword_8129178
dword_812B304: .word 0x40000000
off_812B308: .word dword_8129180
dword_812B30C: .word 0x80000
dword_812B310: .word 0x1D
dword_812B314: .word 0x20004
.endfunc // sub_812B2C4

.func
.thumb_func
sub_812B318:
	push {R4-R7,lr}
	sub sp, sp, #8
	add r7, r0, #1
	mov R6, #1
	mov R0, #0
	str R0, [SP]
	str R0, [SP,#4]
	ldrb R0, [R5,#0x1C]
	add R0, #1
	strb R0, [R5,#0x1C]
	mov R4, #1
loc_812B32E:
	ldr R1, off_812B38C // =unk_20251A0 
	sub r0, r4, #1
	lsl r0, r0, #2
	ldr R1, [R1,R0]
	tst R1, R1
	bne loc_812B342
	ldr R0, [SP]
	add R0, #1
	str R0, [SP]
	b loc_812B370
loc_812B342:
	mov R0, #1
	lsl r0, r0, #0x1f
	tst R0, R1
	beq loc_812B352
	ldr R0, [SP,#4]
	add R0, #1
	str R0, [SP,#4]
	b loc_812B370
loc_812B352:
	mov R0, #1
	lsl r0, r0, #0x1f
	bic R1, R0
	mov R0, #0x10
	neg R0, R0
	bl sub_811A768
	tst R0, R0
	bne loc_812B370
	sub r0, r4, #1
	lsl r0, r0, #2
	ldr R1, off_812B38C // =unk_20251A0 
	mov R2, #0
	str R2, [R1,R0]
	mov R6, #0
loc_812B370:
	ldr R0, off_812B390 // =dword_812B394 
	ldrb R0, [R0,R4]
	ldrb R1, [R5,#0x1C]
	cmp R0, R1
	bge loc_812B380
	add R4, #1
	cmp R4, R7
	blt loc_812B32E
loc_812B380:
	ldr R1, [SP]
	ldr R2, [SP,#4]
	add sp, sp, #8
	add r0, r6, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812B38C: .word unk_20251A0
off_812B390: .word dword_812B394
dword_812B394: .word 0x9060300, 0xFF0C
.endfunc // sub_812B318

.func
.thumb_func
sub_812B39C:
	push {lr}
	ldrb R0, [R5,#0x12]
	ldr R1, off_812B3AC // =byte_812B3B0 
	ldrb R0, [R1,R0]
	bl sub_8132280
	pop {pc}
	.balign 4, 0x00
off_812B3AC: .word byte_812B3B0
byte_812B3B0: .byte 0x9, 0xA, 0xB, 0x0
.endfunc // sub_812B39C

.func
.thumb_func
sub_812B3B4:
	push {lr}
	ldrb R0, [R5,#0x12]
	ldr R1, off_812B3C4 // =dword_812B3C8 
	ldrb R0, [R1,R0]
	bl sub_8132280
	pop {pc}
	.balign 4, 0x00
off_812B3C4: .word dword_812B3C8
dword_812B3C8: .word 0xD0C
.endfunc // sub_812B3B4

.func
.thumb_func
sub_812B3CC:
	push {lr}
	ldrb R0, [R5,#0x12]
	ldr R1, off_812B3DC // =byte_812B3E0 
	ldrb R0, [R1,R0]
	bl sub_8132280
	pop {pc}
	.balign 4, 0x00
off_812B3DC: .word byte_812B3E0
byte_812B3E0: .byte 0xE, 0xF, 0x10, 0x0
.endfunc // sub_812B3CC

.func
.thumb_func
sub_812B3E4:
	push {lr}
	ldrb R0, [R5,#0x13]
	ldr R1, off_812B3F4 // =byte_812B3F8 
	ldrb R0, [R1,R0]
	bl sub_8132280
	pop {pc}
	.balign 4, 0x00
off_812B3F4: .word byte_812B3F8
byte_812B3F8: .byte 0x11, 0x12, 0x54, 0x0
.endfunc // sub_812B3E4

.func
.thumb_func
sub_812B3FC:
	push {lr}
	ldrb R0, [R5,#0xE]
	ldr R1, off_812B40C // =byte_812B410 
	ldrb R0, [R1,R0]
	bl sub_8132280
	pop {pc}
	.balign 4, 0x00
off_812B40C: .word byte_812B410
byte_812B410: .byte 0x6, 0x7, 0x8, 0x0
.endfunc // sub_812B3FC

.func
.thumb_func
sub_812B414:
	push {lr}
	mov R0, #0xC
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	ldrb R0, [R5,#0x1B]
	mov R1, #1
	orr R0, R1
	strb R0, [R5,#0x1B]
	mov r0, #0x23 
	bl sub_8132280
	pop {pc}
.endfunc // sub_812B414

.func
.thumb_func
sub_812B430:
	push {R4-R7,lr}
	ldr R0, off_812B48C // =unk_201BA20 
	mov r1, #0x20 
	ldr R2, off_812B494 // =byte_2017A00 
	ldr R3, dword_812B498 // =0x6007200 
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_812B490 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
.endfunc // sub_812B430

	mov R0, R10
	ldr R0, [R0,#0x40]
	ldrh R1, [R0,#8]
	ldrh R2, [R0,#0xA]
	mov R0, R10
	ldr R0, [R0,#0x38]
	str R1, [R0,#8]
	str R2, [R0,#0xC]
	ldr R0, off_812B48C // =unk_201BA20 
	mov r1, #0x21 
	ldr R2, off_812B49C // =unk_2017C80 
	ldr R3, dword_812B4A0 // =0x6007480 
	mov R4, #0xA
	mov R5, #1
	ldr R6, off_812B490 // =dword_86B7AE0 
	mov R7, #0
	bl render_graphicalText_8045F8C
	mov R0, #0x10
	mov R1, #4
	mov R2, #2
	ldr R3, off_812B4A4 // =dword_8129184+4 
	mov R4, #0xA
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #0x11
	mov R1, #6
	mov R2, #2
	ldr R3, off_812B4A8 // =dword_8129184+44 
	mov R4, #0xA
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
off_812B48C: .word unk_201BA20
off_812B490: .word dword_86B7AE0
off_812B494: .word byte_2017A00
dword_812B498: .word 0x6007200
off_812B49C: .word unk_2017C80
dword_812B4A0: .word 0x6007480
off_812B4A4: .word dword_8129184+4
off_812B4A8: .word dword_8129184+0x2C
.func
.thumb_func
sub_812B4AC:
	push {R4-R7,lr}
	mov R0, #0x10
	mov R1, #4
	mov R2, #2
	mov R3, #0
	mov R4, #0xA
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_812B4AC

	mov R0, #0x11
	mov R1, #6
	mov R2, #2
	mov R3, #0
	mov R4, #0xA
	mov R5, #2
	bl sub_80018D0
	pop {R4-R7,pc}
	push {R4-R7,lr}
	ldr R5, off_812B4F8 // =sSubmenu 
	bl sub_8129248
	bl sub_8132614
	mov R0, #0x10
	strb R0, [R5,#0x3] // (sSubmenu.unk_03 - 0x2009A30)
	mov R0, #0
	strb R0, [R5,#0x1E] // (sSubmenu.unk_1E - 0x2009A30)
	ldr R0, off_812B4FC // =unk_20251A0 
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	ldr R0, off_812B500 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
	pop {R4-R7,pc}
off_812B4F8: .word sSubmenu
off_812B4FC: .word unk_20251A0
off_812B500: .word dword_812913C+0x14
.func
.thumb_func
sub_812B504:
	push {r4,lr}
	ldrb R0, [R5,#0x1B]
	mov R1, #0x10
	tst R0, R1
	beq locret_812B51C
	ldr R0, dword_812B520 // =0xC80008 
	ldr R1, dword_812B524 // =0x20004 
	mov R2, #0
	ldr R3, off_812B528 // =dword_8129184 
	ldr R4, dword_812B52C // =0x80004000 
	bl sub_811FAF4
locret_812B51C:
	pop {r4,pc}
	.byte 0, 0
dword_812B520: .word 0xC80008
dword_812B524: .word 0x20004
off_812B528: .word dword_8129184
dword_812B52C: .word 0x80004000
.endfunc // sub_812B504

.func
.thumb_func
sub_812B530:
	push {lr}
	bl sub_803EA60
	ldr R1, off_812B558 // =dword_812B55C 
	// src
	ldr R0, [R1,R0]
	// dest
	ldr R1, off_812B568 // =decomp_2013A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr R0, off_812B568 // =decomp_2013A00 
	add R0, #4
	ldr R1, dword_812B56C // =0x6014700 
	ldr R2, off_812B570 // =0x100 
	bl loc_8000AC8
.endfunc // sub_812B530

	ldrb R0, [R5,#0x1B]
	mov R1, #0x10
	orr R0, R1
	strb R0, [R5,#0x1B]
	pop {pc}
	.balign 4, 0x00
off_812B558: .word dword_812B55C
dword_812B55C: .word 0x86D9B84, 0x86D9A00, 0x86D9AC4
off_812B568: .word decomp_2013A00
dword_812B56C: .word 0x6014700
off_812B570: .word 0x100
.func
.thumb_func
sub_812B574:
	push {lr}
	bl sub_803EA60
	cmp R0, #4
	beq loc_812B584
	bl sub_8148224
	b locret_812B58A
loc_812B584:
	ldr R0, off_812B58C // =byte_814FE94 
	bl sub_81475D4
locret_812B58A:
	pop {pc}
off_812B58C: .word byte_814FE94
.endfunc // sub_812B574

.func
.thumb_func
sub_812B590:
	push {r4,lr}
	bl sub_812B574
	mov r0, #0x2f 
	bl sub_8132280
	mov r0, #0x3c 
	strb R0, [R5,#1]
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #5
	strb R0, [R5,#0x10]
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_812B590

.func
.thumb_func
sub_812B5AC:
	push {lr}
	mov R0, #4
	ldrb R1, [R5,#2]
	cmp R1, #0x14
	beq loc_812B5C0
	mov R0, #5
	ldrb R1, [R5,#2]
	cmp R1, #0x18
	beq loc_812B5C0
	mov R0, #7
loc_812B5C0:
	mov R1, #0
	bl sub_811A610
	pop {pc}
.endfunc // sub_812B5AC

.func
.thumb_func
sub_812B5C8:
	push {r4,lr}
	bl sub_803EAE4
	ldr R4, off_812B800 // =byte_203F7D8 
	strb R0, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	ldr R0, off_812B5F0 // =off_812B5F4 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	bl sub_8132290
	cmp R0, #0x1C
	bne locret_812B5EC
	bl sub_80465BC
	bl sub_80465F8 // () -> void
locret_812B5EC:
	pop {r4,pc}
	.byte 0, 0
off_812B5F0: .word off_812B5F4
off_812B5F4: .word sub_812B608+1
	.word sub_812B640+1
	.word sub_812B698+1
	.word sub_812B708+1
	.word sub_812B758+1
.endfunc // sub_812B5C8

.func
.thumb_func
sub_812B608:
	push {R4-R7,lr}
	bl getPETNaviSelect // () -> u8
	strb R0, [R5,#0x1A]
	// entryIdx
	mov R0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_812B620
	mov R0, #0
	bl sub_80010BE
loc_812B620:
	ldrh R4, [R5,#0x2A]
	str R4, [R5,#0x44]
	add r0, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r1, r4, #8
	cmp R0, #0xC0
	bge locret_812B63E
	cmp R1, #0x16
	bge locret_812B63E
	bl sub_812B768
	mov R0, #4
	strb R0, [R5,#2]
	b locret_812B63E
locret_812B63E:
	pop {R4-R7,pc}
.endfunc // sub_812B608

.func
.thumb_func
sub_812B640:
	push {lr}
	ldr R1, off_812B804 // =byte_203F7D8 
	ldrb R0, [R1,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	cmp R0, #4
	bne loc_812B652
	mov R0, #2
	ldrb R1, [R5,#0x1B]
	orr R1, R0
	strb R1, [R5,#0x1B]
loc_812B652:
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812B696
	mov R0, #8
	strb R0, [R5,#2]
	bl sub_8046664 // () -> void
	bl chatbox_8040818
	mov r0, #0x21 
	bl sub_80035A2
	bl sub_8004702
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	bl sub_8006C22
	mov R0, #0x17
	mov r1, #0x2d 
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #0x17
	mov r1, #0x2f 
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl getBattleSettings_200AF60 // () -> BattleSettings*
	bl sub_80071D4
locret_812B696:
	pop {pc}
.endfunc // sub_812B640

.func
.thumb_func
sub_812B698:
	push {lr}
	mov R0, #2
	ldrb R1, [R5,#0x1B]
	tst R1, R0
	beq loc_812B6A8
	ldr R1, off_812B808 // =byte_203F7D8 
	mov R0, #4
	strb R0, [R1,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
loc_812B6A8:
	bl loc_8007800
	tst R0, R0
	bne locret_812B706
	strh R1, [R5,#0x22]
	cmp R1, #1
	bne loc_812B6C0
	bl sub_812B7C4
	bl sub_812B7E0
	b loc_812B6D8
loc_812B6C0:
	cmp R1, #2
	bne loc_812B6CA
	bl sub_812B7C4
	b loc_812B6D8
loc_812B6CA:
	cmp R1, #3
	bne loc_812B6D4
	bl sub_812B7C4
	b loc_812B6D8
loc_812B6D4:
	cmp R1, #5
	bne loc_812B6D8
loc_812B6D8:
	bl sub_8005F40
	bl sub_80024A2
	bl sub_8003962
	bl sub_8003AB2
	mov R0, #0xC
	strb R0, [R5,#2]
	ldrb R0, [R5,#0x1A]
	bl sub_80010BE
	bl sub_813C3AC
	bl sub_8036E78
	mov R0, #0x17
	mov r1, #0x22 
	bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_803F798
locret_812B706:
	pop {pc}
.endfunc // sub_812B698

.func
.thumb_func
sub_812B708:
	push {r4,lr}
	bl sub_803EA60
	cmp R0, #0
	beq loc_812B71A
	bl sub_8149644
	bl sub_8149568
loc_812B71A:
	ldrb R4, [R5,#0x1B]
	bl sub_8144240
	bl sub_8129248
	bl sub_812B530
	mov R0, #1
	bic R0, R4
	strb R0, [R5,#0x1B]
	bl sub_8132614
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1E]
	// memBlock
	ldr R0, off_812B750 // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
.endfunc // sub_812B708

	ldr R0, off_812B754 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
	pop {r4,pc}
	.byte 0, 0
off_812B750: .word unk_20251A0
off_812B754: .word dword_812913C+0x14
.func
.thumb_func
sub_812B758:
	push {r4,lr}
	ldr R4, [R5,#0x44]
	add r0, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r1, r4, #8
	pop {r4,pc}
	.balign 4, 0x00
.endfunc // sub_812B758

.func
.thumb_func
sub_812B768:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R1, [SP]
	bl getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
	bl copyBattleSettingsTo_200AF60 // (BattleSettings *src) -> void
	ldrb R0, [R5,#0x12]
	lsl r0, r0, #1
	ldrb R1, [R5,#0x13]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr R1, off_812B7A8 // =off_812B7AC 
	ldr R0, [R1,R0]
	tst R0, R0
	beq loc_812B792
	bl battleSettings_setFlags_unkSettings // (int mask) -> void
	ldr R0, [SP]
	bl battleSettings_setBackground // (u8 background) -> void
loc_812B792:
	mov r0, #0x2c 
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl musicGameState_8000784 // () -> void
	mov r0, #0x78 
	bl sound_play // () -> void
	add sp, sp, #4
	pop {R4-R7,pc}
off_812B7A8: .word off_812B7AC
off_812B7AC: .word 0x200
	.word 0x2, 0x600, 0x402, 0x200200, 0x200002
.endfunc // sub_812B768

.func
.thumb_func
sub_812B7C4:
	push {lr}
	ldrb R0, [R5,#0x13]
	cmp R0, #1
	bne locret_812B7DC
	mov R0, R10
	ldr R0, [R0,#0x40]
	ldrh R1, [R0,#8]
	add R1, #1
	ldr R2, dword_812B7FC // =0x3E7 
	cmp R1, R2
	bgt locret_812B7DC
	strh R1, [R0,#8]
locret_812B7DC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_812B7C4

.func
.thumb_func
sub_812B7E0:
	push {lr}
	ldrb R0, [R5,#0x13]
	cmp R0, #1
	bne locret_812B7F8
	mov R0, R10
	ldr R0, [R0,#0x40]
	ldrh R1, [R0,#0xA]
	add R1, #1
	ldr R2, dword_812B7FC // =0x3E7 
	cmp R1, R2
	bgt locret_812B7F8
	strh R1, [R0,#0xA]
locret_812B7F8:
	pop {pc}
	.balign 4, 0x00
dword_812B7FC: .word 0x3E7
off_812B800: .word byte_203F7D8
off_812B804: .word byte_203F7D8
off_812B808: .word byte_203F7D8
.endfunc // sub_812B7E0

.func
.thumb_func
sub_812B80C:
	push {lr}
	bl sub_803EA60
	cmp R0, #8
	bne loc_812B826
	ldrb R0, [R5,#2]
	cmp R0, #0x14
	bne loc_812B822
	ldrb R0, [R5,#3]
	cmp R0, #4
	beq loc_812B826
loc_812B822:
	bl sub_803C604
loc_812B826:
	ldr R0, off_812B854 // =off_812B858 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	ldrb R0, [R5,#2]
	cmp R0, #0x14
	bne loc_812B83C
	ldrb R0, [R5,#3]
	cmp R0, #4
	beq loc_812B842
loc_812B83C:
	mov R0, #0x12
	bl sub_812B25C
loc_812B842:
	bl sub_803EA60
	cmp R0, #0
	beq locret_812B852
	mov R0, #0xDA
	mov R1, #2
	bl sub_803C59C
locret_812B852:
	pop {pc}
off_812B854: .word off_812B858
off_812B858: .word sub_812B8DC+1
	.word sub_812B97C+1
	.word sub_812B9F8+1
	.word sub_812BB08+1
	.word sub_812BC14+1
	.word sub_812BF6C+1
	.word sub_812C07C+1
.endfunc // sub_812B80C

.func
.thumb_func
sub_812B874:
	push {lr}
	bl sub_803EA60
	cmp R0, #8
	bne loc_812B88E
	ldrb R0, [R5,#2]
	cmp R0, #0x14
	bne loc_812B88A
	ldrb R0, [R5,#3]
	cmp R0, #4
	beq loc_812B88E
loc_812B88A:
	bl sub_803C604
loc_812B88E:
	ldr R0, off_812B8BC // =off_812B8C0 
	ldrb R1, [R5,#2]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	ldrb R0, [R5,#2]
	cmp R0, #0x14
	bne loc_812B8A4
	ldrb R0, [R5,#3]
	cmp R0, #4
	beq loc_812B8AA
loc_812B8A4:
	mov R0, #0x12
	bl sub_812B25C
loc_812B8AA:
	bl sub_803EA60
	cmp R0, #0
	beq locret_812B8BA
	mov R0, #0xDA
	mov R1, #2
	bl sub_803C59C
locret_812B8BA:
	pop {pc}
off_812B8BC: .word off_812B8C0
off_812B8C0: .word sub_812B8DC+1
	.word sub_812B97C+1
	.word loc_812BA1C+1
	.word sub_812BB08+1
	.word sub_812BDC0+1
	.word sub_812BFF4+1
	.word sub_812C07C+1
.endfunc // sub_812B874

.func
.thumb_func
sub_812B8DC:
	push {R4-R7,lr}
	mov R0, #6
	strb R0, [R5,#0x10]
	bl sub_803EAE4
	cmp R0, #4
	beq loc_812B972
	cmp R0, #1
	beq locret_812B978
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812B8F8
	b loc_812B8FC
loc_812B8F8:
	bl loc_812C0CC
loc_812B8FC:
	mov R1, #8
	tst R4, R1
	bne locret_812B978
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, dword_812BAF0 // =0xFFFFFFFF 
	cmp R0, R1
	beq loc_812B976
	mov R7, #0x10
	add r7, r7, r4
	mov R3, #8
loc_812B91E:
	ldr R1, [R4,#4]
	ldr R2, [R6,#0x1C]
	cmp R1, R2
	bne loc_812B976
	lsr r3, r3, #1
	ldrh R1, [R4,#2]
	ldrh R2, [R6,#0xA]
	cmp R1, R2
	bne loc_812B976
	ldrh R1, [R4,#0xA]
	ldr R2, dword_812BAFC // =0x4321 
	cmp R1, R2
	bne loc_812B93E
	ldrh R1, [R4,#8]
	str R1, [R5,#0x34]
	lsr r3, r3, #1
loc_812B93E:
	add R4, #0x10
	cmp R4, R7
	ble loc_812B91E
	tst R3, R3
	bne loc_812B976
	mov R0, #8
	strb R0, [R5,#3]
	mov R0, #4
	strb R0, [R5,#2]
	mov R0, #0
	str R0, [R5,#0x38]
	str R0, [R5,#0x3C]
	mov R0, #0
	strh R0, [R5,#0x26]
	mov r0, #0x32 
	ldrb R1, [R5,#1]
	cmp r1, #0x20 
	beq loc_812B964
	mov r0, #0x35 
loc_812B964:
	bl sub_8132280
	ldr R0, off_812BAF4 // =unk_2033C00 
	ldr R1, dword_812BAF8 // =0x800 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	b loc_812B976
loc_812B972:
	bl sub_812C24C
loc_812B976:
	b locret_812B978
locret_812B978:
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812B8DC

.func
.thumb_func
sub_812B97C:
	push {R4-R7,lr}
	bl sub_803EAE4
	cmp R0, #4
	beq loc_812B9F0
	cmp R0, #1
	beq locret_812B9F6
	mov R0, #6
	strb R0, [R5,#0x10]
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812B998
	b loc_812B99C
loc_812B998:
	bl loc_812C0CC
loc_812B99C:
	mov R1, #8
	tst R4, R1
	bne locret_812B9F6
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, dword_812BAF0 // =0xFFFFFFFF 
	cmp R0, R1
	beq locret_812B9F6
	bl sub_803DD60
	tst R0, R0
	bne loc_812B9BC
	add R4, #0x10
loc_812B9BC:
	add r0, r4, #0
	ldrh R1, [R0,#2]
	ldr R2, dword_812BB00 // =0x8888 
	ldrh R3, [R5,#0x2E]
	add r2, r2, r3
	cmp R1, R2
	bne loc_812B9F4
	mov R1, #4
	add r0, r0, r1
	ldr R1, off_812BAF4 // =unk_2033C00 
	ldr R2, [R5,#0x3C]
	add r1, r1, r2
	add R2, #8
	str R2, [R5,#0x3C]
	mov R2, #8
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	bl sub_812C160
	ldr R0, [R5,#0x34]
	ldr R1, [R5,#0x3C]
	cmp R0, R1
	bne loc_812B9F4
	mov R0, #8
	strb R0, [R5,#2]
	b loc_812B9F4
loc_812B9F0:
	bl sub_812C24C
loc_812B9F4:
	b locret_812B9F6
locret_812B9F6:
	pop {R4-R7,pc}
.endfunc // sub_812B97C

.func
.thumb_func
sub_812B9F8:
	push {r7,lr}
	ldr R4, off_812BAF4 // =unk_2033C00 
	ldr R7, [R5,#0x34]
	sub R7, #8
	mov R3, #0
	mov R2, #0
loc_812BA04:
	ldrb R0, [R4,R3]
	add r2, r2, r0
	add R3, #1
	cmp R3, R7
	blt loc_812BA04
	mov R1, #8
	ldr R0, [R4,R3]
	cmp R0, R2
	bne loc_812BA18
	mov R1, #4
loc_812BA18:
	strh R1, [R5,#0x26]
	b loc_812BA4E
loc_812BA1C:
	push {r7,lr}
	ldr R4, off_812BAF4 // =unk_2033C00 
	ldr R7, [R5,#0x34]
	sub R7, #0xC
	mov R3, #0
	mov R2, #0
loc_812BA28:
	ldrb R0, [R4,R3]
	add r2, r2, r0
	add R3, #1
	cmp R3, R7
	blt loc_812BA28
	mov R1, #8
	ldr R0, [R4,#0x2C] // (dword_2033C2C - 0x2033C00)
	cmp R0, R2
	bne loc_812BA3C
	mov R1, #4
loc_812BA3C:
	cmp R1, #8
	beq loc_812BA4C
	mov R1, #8
	add R3, #4
	ldr R0, [R4,#0x30] // (dword_2033C30 - 0x2033C00)
	cmp R0, #1
	bne loc_812BA4C
	mov R1, #4
loc_812BA4C:
	strh R1, [R5,#0x26]
loc_812BA4E:
	bl sub_803EAE4
	cmp R0, #4
	beq loc_812BAE6
	cmp R0, #1
	beq locret_812BAEC
	mov R0, #6
	strb R0, [R5,#0x10]
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812BA68
	b loc_812BA70
loc_812BA68:
	bl sub_81325CC
	ldrh R1, [R5,#0x26]
	strh R1, [R0,#8]
loc_812BA70:
	mov R1, #8
	tst R4, R1
	bne locret_812BAEC
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, dword_812BAF0 // =0xFFFFFFFF 
	cmp R0, R1
	beq locret_812BAEC
	mov R7, #0x10
	add r7, r7, r0
	mov R3, #8
loc_812BA92:
	ldr R1, [R0,#4]
	ldr R2, [R6,#0x1C]
	cmp R1, R2
	bne loc_812BAEA
	lsr r3, r3, #1
	ldrh R1, [R0,#2]
	ldrh R2, [R6,#0xA]
	cmp R1, R2
	bne loc_812BAA6
	lsr r3, r3, #1
loc_812BAA6:
	add R0, #0x10
	cmp R0, R7
	ble loc_812BA92
	tst R3, R3
	bne loc_812BADE
	add r0, r4, #0
	bl sub_8132430
	cmp R0, #2
	bgt loc_812BAC8
	mov R1, #0xC
	strb R1, [R5,#2]
	mov R1, #0xF
	strb R1, [R5,#0x10]
	mov R1, #0x10
	strh R1, [R5,#0x26]
	b loc_812BAEA
loc_812BAC8:
	cmp R0, #0xFF
	beq loc_812BAEA
	cmp R0, #4
	bne loc_812BAEA
	mov R0, #0xC
	strb R0, [R5,#2]
	mov R1, #0x10
	strb R1, [R5,#0x10]
	mov r1, #0x20 
	strh R1, [R5,#0x26]
	b loc_812BAEA
loc_812BADE:
	cmp R3, #1
	bgt loc_812BAEA
	mov R0, #2
	strb R0, [R5,#0x10]
loc_812BAE6:
	bl sub_812C24C
loc_812BAEA:
	b locret_812BAEC
locret_812BAEC:
	pop {r7,pc}
	.byte 0, 0
dword_812BAF0: .word 0xFFFFFFFF
off_812BAF4: .word unk_2033C00
dword_812BAF8: .word 0x800
dword_812BAFC: .word 0x4321
dword_812BB00: .word 0x8888
	.word byte_200A290
.endfunc // sub_812B9F8

.func
.thumb_func
sub_812BB08:
	push {lr}
	bl sub_803EAE4
	cmp R0, #4
	beq loc_812BC06
	cmp R0, #1
	bne loc_812BB18
	b locret_812BC0C
loc_812BB18:
	add r4, r0, #0
	mov R1, #0x10
	tst R4, R1
	beq loc_812BB22
	b loc_812BB2A
loc_812BB22:
	bl sub_81325CC
	ldrh R1, [R5,#0x26]
	strh R1, [R0,#8]
loc_812BB2A:
	mov R1, #8
	tst R4, R1
	bne locret_812BC0C
	bl sub_803E8F8
	add r6, r0, #0
	bl sub_803EF74
	bl sub_81323B0
	add r4, r0, #0
	ldr R1, dword_812BC10 // =0xFFFFFFFF 
	cmp R0, R1
	beq locret_812BC0C
	mov R7, #0x10
	add r7, r7, r0
	mov R3, #8
loc_812BB4C:
	ldr R1, [R0,#4]
	ldr R2, [R6,#0x1C]
	cmp R1, R2
	bne loc_812BC0A
	lsr r3, r3, #1
	ldrh R1, [R0,#2]
	ldrh R2, [R6,#0xA]
	cmp R1, R2
	bne loc_812BB60
	lsr r3, r3, #1
loc_812BB60:
	add R0, #0x10
	cmp R0, R7
	ble loc_812BB4C
	tst R3, R3
	bne loc_812BBFE
	ldrh R1, [R5,#0x26]
	cmp R1, #0x10
	bne loc_812BBA0
	bl sub_803DD60
	tst R0, R0
	beq loc_812BB8C
	add r0, r4, #0
	bl sub_81325C0
	cmp R1, #0x10
	bne loc_812BC0A
	cmp R0, #0x10
	beq loc_812BBCA
	cmp R0, #8
	bne loc_812BC0A
	b loc_812BBCA
loc_812BB8C:
	add r0, r4, #0
	bl sub_81325C0
	cmp R0, #0x10
	bne loc_812BC0A
	cmp R1, #0x10
	beq loc_812BBCA
	cmp R1, #8
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBA0:
	cmp R1, #8
	bne loc_812BBD6
	bl sub_803DD60
	tst R0, R0
	beq loc_812BBBC
	add r0, r4, #0
	bl sub_81325C0
	cmp R0, #0x10
	bne loc_812BC0A
	cmp R1, #8
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBBC:
	add r0, r4, #0
	bl sub_81325C0
	cmp R1, #0x10
	bne loc_812BC0A
	cmp R0, #8
	bne loc_812BC0A
loc_812BBCA:
	mov R0, #0x10
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#0xC]
	strb R0, [R5,#3]
	b loc_812BC0A
loc_812BBD6:
	bl sub_803DD60
	tst R0, R0
	beq loc_812BBEE
	add r0, r4, #0
	bl sub_81325C0
	cmp r1, #0x20 
	bne loc_812BC0A
	cmp r0, #0x20 
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBEE:
	add r0, r4, #0
	bl sub_81325C0
	cmp r1, #0x20 
	bne loc_812BC0A
	cmp r0, #0x20 
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBFE:
	cmp R3, #1
	bgt loc_812BC0A
	mov R0, #2
	strb R0, [R5,#0x10]
loc_812BC06:
	bl sub_812C24C
loc_812BC0A:
	b locret_812BC0C
locret_812BC0C:
	pop {pc}
	.byte 0, 0
dword_812BC10: .word 0xFFFFFFFF
.endfunc // sub_812BB08

.func
.thumb_func
sub_812BC14:
	push {lr}
	ldr R0, off_812BC24 // =off_812BC28 
	ldrb R1, [R5,#0xC]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812BC24: .word off_812BC28
off_812BC28: .word sub_812AC14+1
	.word sub_812BC38+1
	.word sub_812BD34+1
	.word sub_812BD60+1
.endfunc // sub_812BC14

.func
.thumb_func
sub_812BC38:
	push {R4-R7,lr}
	ldrb R0, [R5,#0x10]
	cmp R0, #0xF
	bne loc_812BC4A
	mov R0, #8
	strb R0, [R5,#0xC]
	mov R0, #0x96
	strh R0, [R5,#0x28]
	b locret_812BD1E
loc_812BC4A:
	mov r0, #0x20 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr R0, R1
	mov R4, R10
	ldr R4, [R4,#0x44]
	lsr r1, r0, #3
	add r4, r4, r1
	mov r0, #0x22 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr R0, R1
	mov R6, R10
	ldr R6, [R6,#0x44]
	lsr r1, r0, #3
	add r6, r6, r1
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x40 
loc_812BC70:
	ldr R3, [R0]
	ldr R4, [R1]
	orr R3, R4
	str R3, [R1]
	add R0, #4
	add R1, #4
	sub R2, #4
	bgt loc_812BC70
	ldr R6, off_812BD20 // =unk_2033C00 
	// entryIdx
	mov r0, #0x20 
	// byteFlagIdx
	mov r1, #0x20 
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x20 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr R0, R1
	mov R4, R10
	ldr R4, [R4,#0x44]
	lsr r1, r0, #3
	add r4, r4, r1
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x40 
	bl CpuFastSet_byteCount // (u32 *src, u32 *dest, int byteCount) -> void
	mov R7, #0x12
	mov R6, #0
loc_812BCA8:
	// idx
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov r1, #0x40 
	tst R0, R1
	beq loc_812BCDA
	ldr R0, dword_812BD24 // =0x2020 
	add r0, r0, r6
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_812BCDA
	ldr R0, dword_812BD28 // =0x1E20 
	add r0, r0, r6
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	bne loc_812BCDA
	ldr R0, dword_812BD2C // =0x2220 
	add r0, r0, r6
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl isActiveFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> zf
	beq loc_812BCE4
loc_812BCDA:
	add R6, #1
	ldr R0, off_812BD30 // =0x200 
	cmp R6, R0
	blt loc_812BCA8
	mov R7, #0x11
loc_812BCE4:
	mov R0, #8
	strb R0, [R5,#0xC]
	strb R7, [R5,#0x10]
	mov R0, #0x96
	strh R0, [R5,#0x28]
	mov R6, #0
loc_812BCF0:
	// idx
	add r0, r6, #0
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	ldrb R0, [R0,#9]
	mov r1, #0x40 
	tst R0, R1
	bne loc_812BD08
	ldr R0, dword_812BD24 // =0x2020 
	add r0, r0, r6
	// <mkdata>
	.hword 0x1c00 // ADD R0, R0, #0
	bl clearFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
loc_812BD08:
	add R6, #1
	ldr R0, off_812BD30 // =0x200 
	cmp R6, R0
	blt loc_812BCF0
	bl sub_80070BC
	ldrb R0, [R5,#0x10]
	cmp R0, #0x11
	beq locret_812BD1E
	bl sub_803F798
locret_812BD1E:
	pop {R4-R7,pc}
off_812BD20: .word unk_2033C00
dword_812BD24: .word 0x2020
dword_812BD28: .word 0x1E20
dword_812BD2C: .word 0x2220
off_812BD30: .word 0x200
.endfunc // sub_812BC38

.func
.thumb_func
sub_812BD34:
	push {lr}
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bne locret_812BD5C
	mov r0, #0x34 
	ldrb R1, [R5,#0x10]
	cmp R1, #0x11
	beq loc_812BD54
	mov r0, #0x2c 
	cmp R1, #0xF
	beq loc_812BD54
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #0x33 
loc_812BD54:
	bl sub_8132280
	mov R0, #0xC
	strb R0, [R5,#0xC]
locret_812BD5C:
	pop {pc}
	.byte 0, 0
.endfunc // sub_812BD34

.func
.thumb_func
sub_812BD60:
	push {lr}
	mov R0, #3
	bl sub_811F7EC
	beq locret_812BDBC
	ldrb R0, [R5,#0x10]
	cmp R0, #0x11
	beq loc_812BD96
	cmp R0, #0xF
	beq loc_812BD96
	mov R0, #0x14
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_803EA60
	cmp R0, #0
	beq locret_812BDBC
	bl sub_8149644
	bl sub_8149568
	b locret_812BDBC
loc_812BD96:
	bl sub_803EA60
	cmp R0, #0
	beq loc_812BDB8
	mov R0, #0x18
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8149644
	bl sub_8149568
	b locret_812BDBC
loc_812BDB8:
	bl sub_8132614
locret_812BDBC:
	pop {pc}
	.byte 0, 0
.endfunc // sub_812BD60

.func
.thumb_func
sub_812BDC0:
	push {lr}
	ldr R0, off_812BDD0 // =off_812BDD4 
	ldrb R1, [R5,#0xC]
	ldr R0, [R0,R1]
	mov LR, PC
	bx r0
	pop {pc}
	.byte 0, 0
off_812BDD0: .word off_812BDD4
off_812BDD4: .word sub_812AC14+1
	.word sub_812BDE4+1
	.word sub_812BEEC+1
	.word sub_812BF10+1
.endfunc // sub_812BDC0

.func
.thumb_func
sub_812BDE4:
	push {R4-R7,lr}
	ldr R6, off_812BE40 // =unk_20018C0 
	ldr R4, off_812BE3C // =unk_2033C00 
	mov R3, #0
	mov R7, #0
loc_812BDEE:
	ldrh R0, [R4,R3]
	ldrh R1, [R6,R3]
	cmp R1, R0
	ble loc_812BE18
	strh R0, [R6,R3]
	lsl r0, r3, #1
	ldr R1, off_812BE44 // =off_812BE48 
	ldr R2, off_812BE98 // =dword_812BE9C 
	ldr R1, [R1,R0]
	ldr R2, [R2,R0]
	tst R1, R1
	beq loc_812BE18
	push {r3}
	// bitfield
	add r0, r1, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	// bitfield
	add r0, r2, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	pop {r3}
	mov R7, #1
loc_812BE18:
	add R3, #2
	cmp r3, #0x28 
	blt loc_812BDEE
	mov R0, #0x11
	tst R7, R7
	beq loc_812BE26
	mov R0, #0x12
loc_812BE26:
	strb R0, [R5,#0x10]
	mov R0, #8
	strb R0, [R5,#0xC]
	mov R0, #0x96
	strh R0, [R5,#0x28]
	ldrb R0, [R5,#0x10]
	cmp R0, #0x11
	beq locret_812BE3A
	bl sub_803F798
locret_812BE3A:
	pop {R4-R7,pc}
off_812BE3C: .word unk_2033C00
off_812BE40: .word unk_20018C0
off_812BE44: .word off_812BE48
off_812BE48: .word 0xAC
	.word 0xAD, 0xAE, 0xAF, 0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5
	.word 0xBC, 0xB7, 0xB6, 0xB9, 0xBA, 0xBB, 0xB8, 0xBD, 0x0
	.word 0x0
off_812BE98: .word dword_812BE9C
dword_812BE9C: .word 0xBF, 0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7
	.word 0xC8, 0xCF, 0xCA, 0xC9, 0xCC, 0xCD, 0xCE, 0xCB, 0xD0
	.word 0x0, 0x0
.endfunc // sub_812BDE4

.func
.thumb_func
sub_812BEEC:
	push {lr}
	ldrh R0, [R5,#0x28]
	sub R0, #1
	strh R0, [R5,#0x28]
	bne locret_812BF0E
	mov r0, #0x37 
	ldrb R1, [R5,#0x10]
	cmp R1, #0x11
	beq loc_812BF06
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #0x36 
loc_812BF06:
	bl sub_8132280
	mov R0, #0xC
	strb R0, [R5,#0xC]
locret_812BF0E:
	pop {pc}
.endfunc // sub_812BEEC

.func
.thumb_func
sub_812BF10:
	push {lr}
	mov R0, #3
	bl sub_811F7EC
	beq locret_812BF68
	ldrb R0, [R5,#0x10]
	cmp R0, #0x11
	beq loc_812BF42
	mov R0, #0x14
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_803EA60
	cmp R0, #0
	beq locret_812BF68
	bl sub_8149644
	bl sub_8149568
	b locret_812BF68
loc_812BF42:
	bl sub_803EA60
	cmp R0, #0
	beq loc_812BF64
	mov R0, #0x18
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#3]
	mov R0, #0xC
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8149644
	bl sub_8149568
	b locret_812BF68
loc_812BF64:
	bl sub_8132614
locret_812BF68:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812BF10

.func
.thumb_func
sub_812BF6C:
	push {lr}
	ldr R1, off_812BF7C // =off_812BF80 
	ldrb R0, [R5,#3]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812BF7C: .word off_812BF80
off_812BF80: .word sub_812BF88+1
	.word sub_812BFAC+1
.endfunc // sub_812BF6C

.func
.thumb_func
sub_812BF88:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812BFA8
	ldr R0, off_812BFE4 // =unk_2037780 
	ldr R1, off_812BFE8 // =0x80 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	bl chatbox_8040818
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x11
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
locret_812BFA8:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812BF88

.func
.thumb_func
sub_812BFAC:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R5, off_812BFE4 // =unk_2037780 
	bl sub_8124B3C
	tst R0, R0
	beq locret_812BFE2
	add r5, r7, #0
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1E]
	// memBlock
	ldr R0, off_812BFEC // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr R0, off_812BFF0 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
locret_812BFE2:
	pop {R4-R7,pc}
off_812BFE4: .word unk_2037780
off_812BFE8: .word 0x80
off_812BFEC: .word unk_20251A0
off_812BFF0: .word dword_812913C+0x14
.endfunc // sub_812BFAC

.func
.thumb_func
sub_812BFF4:
	push {lr}
	ldr R1, off_812C004 // =off_812C008 
	ldrb R0, [R5,#3]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812C004: .word off_812C008
off_812C008: .word sub_812C010+1
	.word sub_812C034+1
.endfunc // sub_812BFF4

.func
.thumb_func
sub_812C010:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812C030
	ldr R0, off_812C06C // =unk_2037780 
	ldr R1, off_812C070 // =0x80 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	bl chatbox_8040818
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov R1, #0x10
	bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov R0, #4
	strb R0, [R5,#3]
locret_812C030:
	pop {pc}
	.balign 4, 0x00
.endfunc // sub_812C010

.func
.thumb_func
sub_812C034:
	push {R4-R7,lr}
	add r7, r5, #0
	ldr R5, off_812C06C // =unk_2037780 
	bl loc_81378B4
	tst R0, R0
	beq locret_812C06A
	add r5, r7, #0
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1E]
	// memBlock
	ldr R0, off_812C074 // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr R0, off_812C078 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
locret_812C06A:
	pop {R4-R7,pc}
off_812C06C: .word unk_2037780
off_812C070: .word 0x80
off_812C074: .word unk_20251A0
off_812C078: .word dword_812913C+0x14
.endfunc // sub_812C034

.func
.thumb_func
sub_812C07C:
	push {lr}
	ldr R1, off_812C08C // =off_812C090 
	ldrb R0, [R5,#3]
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812C08C: .word off_812C090
off_812C090: .word sub_812C094+1
.endfunc // sub_812C07C

.func
.thumb_func
sub_812C094:
	push {lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq locret_812C0C2
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov R0, #0x10
	strb R0, [R5,#3]
	mov R0, #0
	strb R0, [R5,#0x1E]
	// memBlock
	ldr R0, off_812C0C4 // =unk_20251A0 
	// size
	mov R1, #0x10
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr R0, off_812C0C8 // =dword_812913C+20 
	bl sub_80465A0 // (void *a1) -> void
locret_812C0C2:
	pop {pc}
off_812C0C4: .word unk_20251A0
off_812C0C8: .word dword_812913C+0x14
.endfunc // sub_812C094

loc_812C0CC:
	push {lr}
	ldrb R0, [R5,#3]
	ldr R1, off_812C0DC // =off_812C0E0 
	ldr R0, [R1,R0]
	mov LR, PC
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812C0DC: .word off_812C0E0
off_812C0E0: .word sub_812C0EC+1
	.word sub_812C11C+1
	.word sub_812C140+1
.func
.thumb_func
sub_812C0EC:
	push {r7,lr}
	bl sub_81325CC
	add r7, r0, #0
	ldrb R1, [R5,#0x12]
	tst R1, R1
	beq loc_812C104
	ldr R0, off_812C18C // =unk_2034400 
	bl sub_812C21C
	ldr R1, off_812C184 // =0x30 
	b loc_812C10C
loc_812C104:
	ldr R0, off_812C18C // =unk_2034400 
	bl sub_812C194
	ldr R1, off_812C180 // =0x48 
loc_812C10C:
	strh R1, [R7,#8]
	ldr R1, dword_812C188 // =0x4321 
	strh R1, [R7,#0xA]
	mov R0, #4
	strb R0, [R5,#3]
	mov R0, #0
	str R0, [R5,#0x40]
	pop {r7,pc}
.endfunc // sub_812C0EC

.func
.thumb_func
sub_812C11C:
	push {r7,lr}
	bl sub_81325CC
	add r7, r0, #0
	ldrb R1, [R5,#0x12]
	tst R1, R1
	beq loc_812C12E
	ldr R1, off_812C184 // =0x30 
	b loc_812C130
loc_812C12E:
	ldr R1, off_812C180 // =0x48 
loc_812C130:
	strh R1, [R7,#8]
	ldr R1, dword_812C188 // =0x4321 
	strh R1, [R7,#0xA]
	mov R0, #0
	str R0, [R5,#0x40]
	strh R0, [R5,#0x2E]
	pop {r7,pc}
	.byte 0, 0
.endfunc // sub_812C11C

.func
.thumb_func
sub_812C140:
	push {lr}
	bl sub_803EF7C
	ldr R2, dword_812C190 // =0x8888 
	ldrh R1, [R5,#0x2E]
	add r2, r2, r1
	strh R2, [R0,#2]
	mov R1, #4
	add r1, r1, r0
	ldr R0, off_812C18C // =unk_2034400 
	ldr R2, [R5,#0x40]
	add r0, r0, r2
	mov R2, #8
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
.endfunc // sub_812C140

.func
.thumb_func
sub_812C160:
	push {lr}
	ldrh R1, [R5,#0x2E]
	add R1, #1
	strh R1, [R5,#0x2E]
	ldr R2, off_812C180 // =0x48 
	ldrb R1, [R5,#0x12]
	tst R1, R1
	beq loc_812C172
	ldr R2, off_812C184 // =0x30 
loc_812C172:
	ldr R1, [R5,#0x40]
	add R1, #8
	cmp R1, R2
	bge locret_812C17C
	str R1, [R5,#0x40]
locret_812C17C:
	pop {pc}
	.byte 0, 0
off_812C180: .word 0x48
off_812C184: .word 0x30
dword_812C188: .word 0x4321
off_812C18C: .word unk_2034400
dword_812C190: .word 0x8888
.endfunc // sub_812C160

.func
.thumb_func
sub_812C194:
	push {R4-R7,lr}
	add r7, r0, #0
	bl sub_800710A
	beq loc_812C1AE
	add r0, r7, #0
	ldr R1, off_812C218 // =0x40 
	add R1, #0x10
	mov R2, #0xF0
	and R1, R2
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	pop {R4-R7,pc}
loc_812C1AE:
	add r0, r7, #0
	ldr R1, off_812C218 // =0x40 
	add R1, #0x10
	mov R2, #0xF0
	and R1, R2
	bl clearBackwards_80008B4 // (void *mem, int size) -> void
	mov R0, #0x1E
	mov r1, #0x20 
	lsl r0, r0, #8
	orr R0, R1
	mov R3, R10
	ldr R3, [R3,#0x44]
	lsr r1, r0, #3
	add r3, r3, r1
	mov r0, #0x20 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr R0, R1
	mov R4, R10
	ldr R4, [R4,#0x44]
	lsr r1, r0, #3
	add r4, r4, r1
	sub sp, sp, #0xc
	str R4, [SP]
	mov r0, #0x22 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr R0, R1
	mov R4, R10
	ldr R4, [R4,#0x44]
	lsr r1, r0, #3
	add r4, r4, r1
	str R4, [SP,#4]
	mov R2, #0
	mov R5, #0
loc_812C1F6:
	ldrb R0, [R3,R2]
	ldr R4, [SP]
	ldrb R4, [R4,R2]
	orr R0, R4
	ldr R4, [SP,#4]
	ldrb R4, [R4,R2]
	orr R0, R4
	strb R0, [R7,R2]
	add r5, r5, r0
	add R2, #1
	ldr R1, off_812C218 // =0x40 
	cmp R2, R1
	blt loc_812C1F6
	str R5, [R7,R2]
	add sp, sp, #0xc
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812C218: .word 0x40
.endfunc // sub_812C194

.func
.thumb_func
sub_812C21C:
	push {R4-R7,lr}
	add r7, r0, #0
	ldr R0, off_812C248 // =unk_20018C0 
	add r1, r7, #0
	ldr R2, off_812C244 // =0x28 
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	mov R4, #0
	mov R1, #0
loc_812C22E:
	ldrb R0, [R7,R1]
	add r4, r4, r0
	add R1, #1
	cmp r1, #0x28 
	blt loc_812C22E
	mov r1, #0x2c 
	str R4, [R7,R1]
	add R1, #4
	mov R4, #1
	str R4, [R7,R1]
	pop {R4-R7,pc}
off_812C244: .word 0x28
off_812C248: .word unk_20018C0
.endfunc // sub_812C21C

.func
.thumb_func
sub_812C24C:
	mov r0, #0x34 
	strb R0, [R5,#1]
	mov R0, #0
	strb R0, [R5,#2]
	strb R0, [R5,#3]
	// <endpool> <endfile>
	mov PC, LR
.endfunc // sub_812C24C

/*For debugging purposes, connect comment at any range!*/
