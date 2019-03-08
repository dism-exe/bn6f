	.include "asm/asm33.inc"

	thumb_func_start sub_8123208
sub_8123208:
	push {r4-r7,lr}
	bl getPETNaviSelect // () -> u8
	mov r7, r0
	ldr r4, off_81232FC // =word_200DCF0 
	mov r1, #0x42 
	mov r0, r7
	bl sub_80137FE
	ldrh r2, [r4]
	add r2, r2, r0
	mov r0, r7
	mov r1, #0x42 
	bl sub_80137E6
	mov r1, #1
	mov r0, r7
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh r2, [r4,#0x2] // (word_200DCF2 - 0x200dcf0)
	add r2, r2, r0
	cmp r2, #4
	ble loc_8123238
	mov r2, #4
loc_8123238:
	mov r0, r7
	mov r1, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r1, #2
	mov r0, r7
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh r2, [r4,#0x8] // (word_200DCF8 - 0x200dcf0)
	add r2, r2, r0
	cmp r2, #4
	ble loc_8123252
	mov r2, #4
loc_8123252:
	mov r0, r7
	mov r1, #2
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r1, #3
	mov r0, r7
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh r2, [r4,#0xa] // (word_200DCFA - 0x200dcf0)
	add r2, r2, r0
	cmp r2, #4
	ble loc_812326C
	mov r2, #4
loc_812326C:
	mov r0, r7
	mov r1, #3
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r1, #0xb
	mov r0, r7
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh r2, [r4,#0x4] // (word_200DCF4 - 0x200dcf0)
	add r2, r2, r0
	cmp r2, #0xa
	ble loc_8123286
	mov r2, #0xa
loc_8123286:
	mov r0, r7
	mov r1, #0xb
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r1, #0xa
	mov r0, r7
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldrh r2, [r4,#0x6] // (word_200DCF6 - 0x200dcf0)
	add r2, r2, r0
	cmp r2, #8
	ble loc_81232A0
	mov r2, #8
loc_81232A0:
	mov r0, r7
	mov r1, #0xa
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	ldrh r2, [r4,#0xc] // (word_200DCFC - 0x200dcf0)
	tst r2, r2
	beq loc_81232B8
	mov r0, r7
	mov r1, #7
	mov r2, #0x30 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232B8:
	ldrh r2, [r4,#0xe] // (word_200DCFE - 0x200dcf0)
	tst r2, r2
	beq loc_81232C8
	mov r0, r7
	mov r1, #0x1c
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232C8:
	ldrh r2, [r4,#0x10] // (word_200DD00 - 0x200dcf0)
	tst r2, r2
	beq loc_81232D8
	mov r0, r7
	mov r1, #0x1b
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232D8:
	ldrh r2, [r4,#0x12] // (word_200DD02 - 0x200dcf0)
	tst r2, r2
	beq loc_81232E8
	mov r0, r7
	mov r1, #0x23 
	mov r2, #1
	bl navicust_801379E // (int a1, int a2, int a3) -> void
loc_81232E8:
	ldrh r2, [r4,#0x14] // (word_200DD04 - 0x200dcf0)
	tst r2, r2
	beq locret_81232F8
	mov r0, r7
	mov r1, #7
	mov r2, #0x34 
	bl navicust_801379E // (int a1, int a2, int a3) -> void
locret_81232F8:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81232FC: .word word_200DCF0
	thumb_func_end sub_8123208

	thumb_func_start sub_8123300
sub_8123300:
	push {r7,lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r7, #0x30 
	bl sub_8123360
	tst r0, r0
	beq loc_812331A
	bl getPETNaviSelect // () -> u8
	lsl r7, r0, #2
loc_812331A:
	ldr r1, [sp]
	// src
	ldr r0, [r1,r7]
	// dest
	ldr r1, [sp,#8]
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r1, [sp,#8]
	// src
	add r0, r1, #4
	ldr r2, [r1]
	lsr r2, r2, #8
	// halfwordCount
	sub r2, #4
	// dest
	ldr r1, [sp,#4]
	mov r3, #1
	tst r3, r2
	bne loc_8123344
	mov r3, #3
	tst r3, r2
	bne loc_812334A
	mov r3, #0x1f
	tst r3, r2
	bne loc_8123350
	b loc_8123356
loc_8123344:
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	b loc_812335A
loc_812334A:
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	b loc_812335A
loc_8123350:
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	b loc_812335A
loc_8123356:
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_812335A:
	add sp, sp, #0xc
	pop {r7,pc}
	.byte 0, 0
	thumb_func_end sub_8123300

	thumb_func_start sub_8123360
sub_8123360:
	push {r4,lr}
	mov r4, #0
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8123376
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x2a 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8123390
loc_8123376:
	mov r4, #1
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #0x80
	bge loc_8123390
	mov r4, #0
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x1d
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8123390
	mov r4, #1
loc_8123390:
	mov r0, r4
	pop {r4,pc}
byte_8123394: .byte 0x90, 0xC3, 0x91, 0xC3, 0x92, 0xC3, 0x93, 0xC3, 0x94
	.byte 0xC3, 0x95, 0xC3, 0x96, 0xC3, 0x97, 0xC3, 0x98, 0xC3
	.byte 0x99, 0xC3, 0x9A, 0xC3, 0x9B, 0xC3, 0x9C, 0xC3, 0x9D
	.byte 0xC3, 0x9E, 0xC3, 0x9F, 0xC3, 0xA0, 0xC3, 0xA1, 0xC3
	.byte 0xA2, 0xC3, 0xA3, 0xC3
dword_81233BC: .word 0xC250
dword_81233C0: .word 0xC258
dword_81233C4: .word 0xC25A
dword_81233C8: .word 0xC262
byte_81233CC: .byte 0x40, 0xC2, 0x44, 0xC2, 0x48, 0xC2, 0xFF, 0xFF
dword_81233D4: .word 0xFF060606
byte_81233D8: .byte 0x5, 0x4, 0x0, 0x1, 0xFF, 0xFF, 0xFF, 0xFF
byte_81233E0: .byte 0x5, 0x5, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0xFF
byte_81233E8: .byte 0x5, 0x6, 0x1, 0x1, 0xFF, 0xFF, 0xFF, 0xFF
byte_81233F0: .byte 0x15, 0x0, 0x2, 0x3, 0xFF, 0xFF, 0xFF, 0xFF
byte_81233F8: .byte 0x15, 0x0, 0x3, 0x4, 0xFF, 0xFF, 0xFF, 0xFF
byte_8123400: .byte 0x23, 0x1, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_8123360

	thumb_func_start sub_8123408
sub_8123408:
	push {r4,lr}
	ldr r0, off_812342C // =unk_2037780 
	ldr r1, off_8123430 // =sSubmenu 
	mov r4, r1
	mov r2, #0x80
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, #0
	strb r0, [r4]
	mov r0, #0x10
	strb r0, [r4,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	mov r0, #0
	strb r0, [r4,#0x2] // (sSubmenu.unk_02 - 0x2009a30)
	mov r4, r10
	ldr r4, [r4,#oToolkit_MainJumptableIndexPtr]
	mov r0, #0x28 
	strb r0, [r4]
	pop {r4,pc}
off_812342C: .word unk_2037780
off_8123430: .word sSubmenu
	thumb_func_end sub_8123408

	thumb_func_start HandleChipFolderMenu8123434
HandleChipFolderMenu8123434:
	push {lr}
	ldr r0, off_8123444 // =off_8123448 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8123444: .word off_8123448
off_8123448: .word sub_812345C+1
	.word sub_8123514+1
	.word sub_81237BC+1
	.word sub_812349C+1
	.word sub_81234DC+1
	thumb_func_end HandleChipFolderMenu8123434

	thumb_local_start
sub_812345C:
	push {lr}
	mov r0, #1
	bl sub_81237E0
	bl chipFolder_initGfx_812386C
	bl sub_8046664 // () -> void
	// a1
	ldr r0, off_8123510 // =byte_8123400
	bl sub_80465A0 // (void *a1) -> void
	bl sub_8123A80
	bl sub_8123AB8
	ldr r0, off_81234F0 // =unk_201D220 
	ldr r1, off_81234F4 // =byte_81233D8
	mov r2, #0x9d
	mov r3, #0x48 
	mov r4, #4
	bl sub_81352A0
	ldr r0, off_81234F0 // =unk_201D220 
	ldr r1, off_81234F8 // =off_81234FC 
	mov r2, #0x9d
	mov r3, #0x48 
	ldr r4, off_8123504 // =byte_8123508
	bl sub_8135314
	bl sub_8123D24
	pop {pc}
	thumb_func_end sub_812345C

	thumb_local_start
sub_812349C:
	push {lr}
	mov r0, #0
	bl sub_81237E0
	bl chipFolder_initGfx_812386C
	bl sub_8046664 // () -> void
	// a1
	ldr r0, off_8123510 // =byte_8123400
	bl sub_80465A0 // (void *a1) -> void
	bl sub_8123A80
	bl sub_8123AB8
	ldr r0, off_81234F0 // =unk_201D220 
	ldr r1, off_81234F4 // =byte_81233D8
	mov r2, #0x9d
	mov r3, #0x48 
	mov r4, #4
	bl sub_81352A0
	ldr r0, off_81234F0 // =unk_201D220 
	ldr r1, off_81234F8 // =off_81234FC 
	mov r2, #0x9d
	mov r3, #0x48 
	ldr r4, off_8123504 // =byte_8123508
	bl sub_8135314
	bl sub_8123D24
	pop {pc}
	thumb_func_end sub_812349C

	thumb_local_start
sub_81234DC:
	push {lr}
	bl sub_812349C
	mov r0, #0
	bl sub_8123D54
	mov r0, #0x18
	strb r0, [r5,#2]
	pop {pc}
	.byte 0, 0
off_81234F0: .word unk_201D220
off_81234F4: .word byte_81233D8
off_81234F8: .word off_81234FC
off_81234FC: .word byte_81233E0
	.word byte_81233E8
off_8123504: .word byte_8123508
byte_8123508: .byte 0x5, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0
off_8123510: .word byte_8123400
	thumb_func_end sub_81234DC

	thumb_local_start
sub_8123514:
	push {lr}
	ldr r0, off_8123538 // =off_812353C 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
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
	thumb_func_end sub_8123514

	thumb_local_start
sub_8123558:
	push {lr}
	bl sub_8123BC0
	bl sub_8123BE0
	bl sub_8123C00
	bl IsPaletteFadeActive // () -> zf
	beq locret_8123570
	mov r0, #4
	strb r0, [r5,#2]
locret_8123570:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8123558

	thumb_local_start
sub_8123574:
	push {lr}
	mov r0, #2
	strh r0, [r5,#0x20]
	bl sub_8123BC0
	bl sub_8123BE0
	bl sub_8123C00
	bl sub_8123D70
	mov r0, #1
	mov r1, #3
	bl sub_811B314
	bl IsPaletteFadeActive // () -> zf
	beq locret_81235A0
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
locret_81235A0:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8123574

	thumb_local_start
sub_81235A4:
	push {lr}
	mov r0, #0xa
	bl isJoystickIRQActive
	beq loc_81235BC
	mov r0, #8
	bl sub_811FB64
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_8123628
loc_81235BC:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_81235E8
	bl sub_8123E08
	bl sub_8123D54
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #1
	mov r1, #3
	bl sub_811B314
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	strh r0, [r5,#0x20]
	b loc_8123628
loc_81235E8:
	mov r0, #0x1a
	strh r0, [r5,#0x1e]
	strh r0, [r5,#0x28]
	strh r0, [r5,#0x32]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	ldrb r1, [r5,#0xc]
	ldr r2, off_812363C // =dword_8123640
	ldrb r3, [r2,r1]
	mov r1, #1
	mov r2, #0
	bl sub_811F91C
	tst r0, r0
	bne loc_8123628
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	ldrb r1, [r1,#5]
	mov r2, #0
	ldrb r3, [r5,#0xc]
	bl sub_811FA0C
	ldrb r1, [r5,#0xc]
	cmp r0, r1
	beq loc_8123628
	strb r0, [r5,#0xc]
	bl sub_8123A80
loc_8123628:
	bl sub_8123AB8
	bl sub_8123BC0
	bl sub_8123BE0
	bl sub_8123C00
	pop {pc}
	.balign 4, 0x00
off_812363C: .word dword_8123640
dword_8123640: .word 0x140A00
	thumb_func_end sub_81235A4

	thumb_local_start
sub_8123644:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812365A
	bl chatbox_8040818
	mov r0, #0x20 
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	strb r0, [r5,#2]
locret_812365A:
	pop {pc}
	thumb_func_end sub_8123644

	thumb_local_start
sub_812365C:
	push {lr}
	ldr r0, off_812366C // =off_8123670 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812366C: .word off_8123670
off_8123670: .word sub_8123678+1
	.word sub_812368C+1
	thumb_func_end sub_812365C

	thumb_local_start
sub_8123678:
	push {lr}
	mov r0, #0
	bl sub_81190F8
	beq locret_812368A
	mov r0, #4
	strb r0, [r5,#3]
	bl sub_8123D70
locret_812368A:
	pop {pc}
	thumb_func_end sub_8123678

	thumb_local_start
sub_812368C:
	push {r4-r7,lr}
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_81236B0
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #1
	mov r1, #0
	bl sub_811B314
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0
	bl sub_8119118
	b locret_8123760
loc_81236B0:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_812373E
	mov r0, #0x81
	bl sound_play // () -> void
	bl sub_8123E08
	lsl r0, r0, #2
	ldr r1, off_8123764 // =off_8123768 
	ldr r0, [r1,r0]
	ldrh r1, [r5,#0x20]
	ldrb r0, [r0,r1]
	strb r0, [r5,#2]
	cmp r0, #0xc
	bne loc_8123734
	ldrb r0, [r5,#0x14]
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r4, r0
	ldrb r0, [r5,#0x14]
	mov r1, #0x2d 
	ldrb r2, [r5,#0xc]
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r0, #1
	bl sub_8120D10
	beq loc_812371A
	ldrb r0, [r5,#0x14]
	mov r1, #0x2d 
	mov r2, r4
	bl navicust_801379E // (int a1, int a2, int a3) -> void
	mov r6, #8
	ldrb r0, [r5,#0xc]
	bl sub_8137884
	lsr r0, r0, #4
	cmp r0, #2
	blt loc_8123708
	mov r6, #9
loc_8123708:
	mov r0, r6
	bl sub_8123A40
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r0, #0
	bl sub_8119118
	b locret_8123760
loc_812371A:
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #1
	mov r1, #0
	bl sub_811B314
	ldr r0, dword_8123770 // =0x182 
	bl sound_play // () -> void
	mov r0, #0
	bl sub_8119118
	b locret_8123760
loc_8123734:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812375C
loc_812373E:
	mov r4, #3
	bl sub_8123E08
	tst r0, r0
	beq loc_812374A
	mov r4, #1
loc_812374A:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, r4
	mov r2, #1
	ldrh r3, [r5,#0x20]
	bl sub_811FA22
	strh r0, [r5,#0x20]
loc_812375C:
	bl sub_8123D70
locret_8123760:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8123764: .word off_8123768
off_8123768: .word dword_8123774
	.word dword_8123778
dword_8123770: .word 0x182
dword_8123774: .word 0x140C08
dword_8123778: .word 0xC
	thumb_func_end sub_812368C

	thumb_local_start
sub_812377C:
	push {lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812378E
	mov r0, #4
	strb r0, [r5,#2]
	bl chatbox_8040818
locret_812378E:
	pop {pc}
	thumb_func_end sub_812377C

	thumb_local_start
sub_8123790:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_81237B4
	bl chatbox_8040818
	mov r0, r5
	ldr r1, off_81237B8 // =unk_2037780 
	mov r2, #0x80
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldrb r0, [r5,#0xc]
	bl sub_8049DDC
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
locret_81237B4:
	pop {pc}
	.balign 4, 0x00
off_81237B8: .word unk_2037780
	thumb_func_end sub_8123790

	thumb_local_start
sub_81237BC:
	push {lr}
	bl sub_8123A50
	bl sub_8123C98
	bl sub_8123E58
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_81237DC
	bl sub_811F708
locret_81237DC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_81237BC

	thumb_local_start
sub_81237E0:
	push {r4,lr}
	mov r4, r0
	mov r0, #0
	strh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	strh r0, [r5,#0x2e]
	strh r0, [r5,#0x30]
	strh r0, [r5,#0x38]
	strh r0, [r5,#0x3a]
	str r1, [r5,#0x4c]
	strh r0, [r5,#0x20]
	strh r0, [r5,#0x22]
	strh r0, [r5,#0x2a]
	strh r0, [r5,#0x2c]
	strh r0, [r5,#0x34]
	strh r0, [r5,#0x36]
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	strh r0, [r5,#0x18]
	mov r0, #0
	ldr r1, off_8123868 // =dword_81233D4
	bl sub_8120CC8
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,#0x12]
	bl getPETNaviSelect // () -> u8
	strb r0, [r5,#0x14]
	tst r4, r4
	beq loc_8123830
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	ldrb r0, [r5,#0x14]
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb r0, [r5,#0xc]
loc_8123830:
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_8123864 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#2]
	pop {r4,pc}
	.balign 4, 0x00
dword_8123864: .word 0x1F40
off_8123868: .word dword_81233D4
	thumb_func_end sub_81237E0

	thumb_local_start
chipFolder_initGfx_812386C:
	push {r4-r7,lr}
	ldr r4, off_812395C // =unk_20096E0 
	mov r6, #0
	mov r7, #0
	ldr r5, off_8123918 // =off_812391C
loc_8123876:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_8123888:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_8123888
	cmp r7, #0x40 
	blt loc_8123876
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_812395C // =unk_20096E0 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_8123960 // =dword_8123964 
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r0, off_81238E0 // =off_81238E4
	ldr r1, off_81238D8 // =eTextScript201C220
	ldr r2, off_81238DC // =eDecompBuffer2013A00
	bl sub_8123300
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_8123A28 // =eTextScript201BA20
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r0, #9
	mov r1, #6
	mov r2, #1
	ldr r3, off_8123A34 // =eTextScript201BF20
	mov r4, #0x14
	mov r5, #0xd
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81238D8: .word eTextScript201C220
off_81238DC: .word eDecompBuffer2013A00
off_81238E0: .word off_81238E4
off_81238E4: .word comp_86CE724
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE77C
	.word comp_86CE724
	.word comp_86CE77C
off_8123918: .word off_812391C
off_812391C: .word dword_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001AC0
	.word 0x20
	.word comp_86C9AA4 + 1<<31
	.word 0x2
	.word unk_3001A80
	.word 0x2013A00
	.word byte_872CF94
	.word 0x2
	.word unk_3001AE0
	.word 0x20
off_812395C: .word unk_20096E0
off_8123960: .word dword_8123964
dword_8123964: .word 0x886CEC3C
	.word unk_201D884
	.word eDecompBuffer2013A00
	.word comp_86CDEA8 + 1<<31
	.word unk_201E284
	.word eDecompBuffer2013A00
	.word comp_86CE51C + 1<<31
	.word unk_2020484
	.word eDecompBuffer2013A00
	.word dword_86B7AE0
	.word 0x6004000
	.word 0x2800
	.word dword_86C9B54
	.word byte_30016B0
	.word 0x20
	.word comp_86C96C0 + 1<<31
	.word 0x6006800
	.word eDecompBuffer2013A00
	.word comp_86C980C + 1<<31
	.word 0x6006B80
	.word eDecompBuffer2013A00
	.word comp_86C9BD4 + 1<<31
	.word 0x6014800
	.word eDecompBuffer2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word eDecompBuffer2013A00
	.word comp_86CE63C + 1<<31
	.word 0x6014A00
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word comp_86C7E74 + 1<<31
	.word 0x6012800
	.word eDecompBuffer2013A00
	.word comp_86C7F70 + 1<<31
	.word 0x30015F0
	.word eDecompBuffer2013A00
	.word comp_86C7F98 + 1<<31
	.word 0x6012C00
	.word eDecompBuffer2013A00
	.word comp_86C8034 + 1<<31
	.word 0x3001630
	.word eDecompBuffer2013A00
	.word comp_86C8054 + 1<<31
	.word 0x6000020
	.word eDecompBuffer2013A00
	.word comp_86CDCE4 + 1<<31
off_8123A28: .word eTextScript201BA20
	.word eDecompBuffer2013A00
	.word comp_86CDE2C + 1<<31
off_8123A34: .word eTextScript201BF20
	.word eDecompBuffer2013A00
	.word 0x0
	thumb_func_end chipFolder_initGfx_812386C

	thumb_local_start
sub_8123A40:
	push {lr}
	mov r1, r0
	ldr r0, off_8123A4C // =eTextScript201C220
	bl chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
	pop {pc}
off_8123A4C: .word eTextScript201C220
	thumb_func_end sub_8123A40

	thumb_local_start
sub_8123A50:
	push {r4-r7,lr}
	ldrb r0, [r5,#0xc]
	ldr r1, off_8123A78 // =dword_8123A7C
	ldrb r0, [r1,r0]
	ldrh r3, [r5,r0]
	ldr r0, dword_8123A74 // =0xda003d 
	ldr r1, dword_8123A6C // =0x20002 
	mov r2, #0x1e
	mov r4, #5
	ldr r6, dword_8123A70 // =0xc24c 
	mov r7, #0x46 
	bl sub_811FA98
	pop {r4-r7,pc}
dword_8123A6C: .word 0x20002
dword_8123A70: .word 0xC24C
dword_8123A74: .word 0xDA003D
off_8123A78: .word dword_8123A7C
dword_8123A7C: .word 0x382E24
	thumb_func_end sub_8123A50

	thumb_local_start
sub_8123A80:
	push {r4,r6,lr}
	ldrb r0, [r5,#0xc]
	ldr r1, off_8123AB0 // =unk_201D220 
	mov r2, #1
	ldr r3, off_8123AB4 // =unk_20343E0 
	bl sub_811FCB8
	ldrb r0, [r5,#0xc]
	lsl r0, r0, #1
	mov r1, #0x56 
	add r1, r1, r0
	mov r4, r1
	ldrb r0, [r5,#0x14]
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r6, r0
	add r1, r4, #1
	ldrb r0, [r5,#0x14]
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r0, r0, r6
	str r0, [r5,#0x64]
	pop {r4,r6,pc}
	.byte 0, 0
off_8123AB0: .word unk_201D220
off_8123AB4: .word unk_20343E0
	thumb_func_end sub_8123A80

	thumb_local_start
sub_8123AB8:
	push {r4-r7,lr}
	mov r7, r5
	ldrb r0, [r7,#0xc]
	ldr r1, off_8123BB8 // =dword_8123BBC
	ldrb r0, [r1,r0]
	ldrh r0, [r7,r0]
	ldr r1, off_8123B88 // =unk_201D220 
	ldr r2, off_8123B8C // =unk_201D6E0 
	mov r3, #0xb
	mov r5, #5
	bl sub_81200EC
	// j
	mov r0, #0xe
	// i
	mov r1, #8
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_8123B8C // =unk_201D6E0 
	mov r4, #8
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#0xc]
	ldr r1, off_8123BB8 // =dword_8123BBC
	ldrb r0, [r1,r0]
	ldrh r0, [r7,r0]
	ldr r1, off_8123B88 // =unk_201D220 
	ldr r2, off_8123B90 // =unk_201D7C0 
	ldr r3, off_8123B94 // =byte_8123394
	ldr r4, dword_8123B98 // =0x6007200 
	mov r5, #5
	bl sub_8120390
	mov r0, #0xc
	mov r1, #8
	mov r2, #2
	ldr r3, off_8123B90 // =unk_201D7C0 
	mov r4, #2
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#0xc]
	ldr r1, off_8123BB8 // =dword_8123BBC
	ldrb r0, [r1,r0]
	ldrh r0, [r7,r0]
	ldr r1, off_8123B88 // =unk_201D220 
	ldr r2, off_8123B9C // =unk_201D7F8 
	mov r3, #0xa
	lsl r3, r3, #0xc
	ldr r4, off_8123BA0 // =0x35c 
	orr r3, r4
	ldr r4, dword_8123BA4 // =0x6006b80 
	mov r5, #5
	bl sub_81203E4
	mov r0, #0x16
	mov r1, #8
	mov r2, #2
	ldr r3, off_8123B9C // =unk_201D7F8 
	mov r4, #2
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#0xc]
	ldr r1, off_8123BB8 // =dword_8123BBC
	ldrb r0, [r1,r0]
	ldrh r0, [r7,r0]
	ldr r1, off_8123B88 // =unk_201D220 
	ldr r2, off_8123BA8 // =unk_201D830 
	mov r3, #0xb
	lsl r3, r3, #0xc
	ldr r4, dword_8123BAC // =0x216 
	orr r3, r4
	mov r5, #5
	bl sub_8120458
	mov r0, #0x18
	mov r1, #8
	mov r2, #2
	ldr r3, off_8123BA8 // =unk_201D830 
	mov r4, #1
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#0xc]
	ldr r1, off_8123BB8 // =dword_8123BBC
	ldrb r0, [r1,r0]
	ldrh r0, [r7,r0]
	ldr r1, off_8123B88 // =unk_201D220 
	ldr r2, off_8123BB0 // =unk_201D84C 
	mov r3, #9
	lsl r3, r3, #0xc
	ldr r4, dword_8123BB4 // =0x34f 
	orr r3, r4
	mov r5, #5
	bl sub_81204C4
	mov r0, #0x19
	mov r1, #8
	mov r2, #2
	ldr r3, off_8123BB0 // =unk_201D84C 
	mov r4, #2
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_8123B88: .word unk_201D220
off_8123B8C: .word unk_201D6E0
off_8123B90: .word unk_201D7C0
off_8123B94: .word byte_8123394
dword_8123B98: .word 0x6007200
off_8123B9C: .word unk_201D7F8
off_8123BA0: .word 0x35C
dword_8123BA4: .word 0x6006B80
off_8123BA8: .word unk_201D830
dword_8123BAC: .word 0x216
off_8123BB0: .word unk_201D84C
dword_8123BB4: .word 0x34F
off_8123BB8: .word dword_8123BBC
dword_8123BBC: .word 0x382E24
	thumb_func_end sub_8123AB8

	thumb_local_start
sub_8123BC0:
	push {r4-r7,lr}
	ldr r0, off_8123BD8 // =dword_8123BDC
	mov r1, #1
	ldr r2, off_8123BD4 // =byte_81233D8
	mov r3, #4
	mov r4, #0x1c
	bl sub_8123C20
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8123BD4: .word byte_81233D8
off_8123BD8: .word dword_8123BDC
dword_8123BDC: .word 0x302F2E
	thumb_func_end sub_8123BC0

	thumb_local_start
sub_8123BE0:
	push {r4-r7,lr}
	ldr r0, off_8123BF8 // =dword_8123BFC
	mov r1, #0x20 
	ldr r2, off_8123BF4 // =byte_81233E0
	mov r3, #5
	mov r4, #0x5c 
	mov r6, #0
	bl sub_8123C20
	pop {r4-r7,pc}
off_8123BF4: .word byte_81233E0
off_8123BF8: .word dword_8123BFC
dword_8123BFC: .word 0x5A5856
	thumb_func_end sub_8123BE0

	thumb_local_start
sub_8123C00:
	push {r4-r7,lr}
	ldr r0, off_8123C18 // =dword_8123C1C
	mov r1, #0x40 
	ldr r2, off_8123C14 // =byte_81233E8
	mov r3, #6
	mov r4, #0x60 
	mov r6, #1
	bl sub_8123C20
	pop {r4-r7,pc}
off_8123C14: .word byte_81233E8
off_8123C18: .word dword_8123C1C
dword_8123C1C: .word 0x5B5957
	thumb_func_end sub_8123C00

	thumb_local_start
sub_8123C20:
	push {lr}
	sub sp, sp, #0x18
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	str r3, [sp,#0xc]
	str r4, [sp,#0x10]
	str r6, [sp,#0x14]
	ldrb r0, [r5,#0xc]
	ldr r1, [sp]
	ldrb r1, [r1,r0]
	ldrb r0, [r5,#0x14]
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0xff
	bne loc_8123C52
	ldr r0, [sp,#4]
	ldr r1, [r5,#0x4c]
	tst r0, r1
	beq loc_8123C92
	mov r0, #1
	ldr r1, [sp,#0xc]
	bl sub_81171F4
	b loc_8123C92
loc_8123C52:
	ldr r1, [sp,#0x10]
	strh r0, [r5,r1]
	ldr r0, [sp,#4]
	ldr r1, [r5,#0x4c]
	tst r0, r1
	bne loc_8123C6C
	// a1
	ldr r0, [sp,#8]
	bl sub_80465A0 // (void *a1) -> void
	ldr r0, [sp,#4]
	ldr r1, [r5,#0x4c]
	orr r1, r0
	str r1, [r5,#0x4c]
loc_8123C6C:
	mov r0, #0x24 
	ldrb r1, [r5,#0xc]
	mov r2, #0xa
	mul r1, r2
	add r0, r0, r1
	mov r1, #0x9d
	mov r2, #0x48 
	mov r4, #4
	ldr r6, [sp,#4]
	cmp r6, #1
	beq loc_8123C8C
	ldr r3, [sp,#0x14]
	ldr r7, [sp,#0xc]
	bl sub_8134930
	b loc_8123C92
loc_8123C8C:
	ldr r3, [sp,#0xc]
	bl sub_81348DC
loc_8123C92:
	add sp, sp, #0x18
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8123C20

	thumb_local_start
sub_8123C98:
	push {r4-r7,lr}
	mov r7, r5
	mov r0, #3
	mov r1, #6
	mov r2, #2
	mov r3, #0
	mov r4, #0x17
	mov r5, #2
	bl sub_80018D0
	ldrb r0, [r7,#0xc]
	ldrb r0, [r7,#0xc]
	bl sub_8137884
	lsr r0, r0, #4
	ldr r1, off_8123CE4 // =unk_20347D8 
	mov r2, #0xb
	mov r3, #1
	mov r4, #0xf
	bl sub_8120348
	mov r0, #0xb
	mov r1, #6
	mov r2, #2
	ldr r3, off_8123CE4 // =unk_20347D8 
	mov r4, #0xf
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrb r0, [r7,#0x14]
	mov r1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	ldr r1, dword_8123CEC // =0x8160 
	ldr r2, byte_8123CF0 // =0x37
	bl sub_812053C
	pop {r4-r7,pc}
off_8123CE4: .word unk_20347D8
	.word unk_20018EC
dword_8123CEC: .word 0x8160
byte_8123CF0: .byte 0x37, 0x0, 0xBA, 0x0, 0x60, 0x71, 0x0, 0x0, 0x37, 0x0, 0xA6
	.byte 0x0
	thumb_func_end sub_8123C98

	thumb_local_start
sub_8123CFC:
	push {r4,lr}
	mov r0, #0x24
	mov r1, #0x9d
	mov r2, #0x48
	mov r3, #4
	mov r4, #4
	bl sub_81348DC
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8123CFC

	thumb_local_start
sub_8123D10:
	push {r4-r7,lr}
	mov r7, r0
	mov r3, r1
	mov r0, #0x24
	mov r1, #0x9d
	mov r2, #0x48
	mov r4, #4
	bl sub_8134930
	pop {r4-r7,pc}
	thumb_func_end sub_8123D10

	thumb_local_start
sub_8123D24:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrb r4, [r0,#5]
	mov r6, #0
loc_8123D2E:
	lsl r2, r6, #8
	ldrb r0, [r5,#0xc]
	cmp r0, r6
	bne loc_8123D3A
	mov r0, #1
	orr r2, r0
loc_8123D3A:
	mov r0, #1
	lsl r0, r0, #0x10
	orr r2, r0
	mov r0, #0x15
	mov r1, #7
	add r1, r1, r6
	bl sub_8046670
	add r6, #1
	cmp r6, r4
	blt loc_8123D2E
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8123D24

	thumb_local_start
sub_8123D54:
	push {lr}
	mov r1, r0
	ldr r0, off_8123D68 // =byte_81233F0
	tst r1, r1
	beq loc_8123D60
	// a1
	ldr r0, off_8123D6C // =byte_81233F8
loc_8123D60:
	bl sub_80465A0 // (void *a1) -> void
	pop {pc}
	.balign 4, 0x00
off_8123D68: .word byte_81233F0
off_8123D6C: .word byte_81233F8
	thumb_func_end sub_8123D54

	thumb_local_start
sub_8123D70:
	push {r4-r7,lr}
	bl sub_8123E08
	ldr r1, off_8123D8C // =byte_8123D90
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	mov r0, #0
	mov r2, #0x20 
	mov r3, #0x12
	ldr r4, off_8123DF8 // =byte_81233CC
	ldr r6, dword_8123E00 // =0x40000000 
	bl sub_8123D98
	pop {r4-r7,pc}
off_8123D8C: .word byte_8123D90
byte_8123D90: .byte 0x4F, 0x0, 0x0, 0x0, 0x55, 0x0, 0x0, 0x0
	thumb_func_end sub_8123D70

	thumb_local_start
sub_8123D98:
	push {r4,lr}
	sub sp, sp, #0x1c
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r6, [sp,#0x10]
	lsl r0, r0, #0x10
	ldr r1, [sp]
	ldr r3, [sp,#4]
	tst r3, r3
	bne loc_8123DB4
	mov r2, #0
	b loc_8123DB6
loc_8123DB4:
	ldrh r2, [r5,r3]
loc_8123DB6:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_8123DFC // =0x20005 
	ldr r2, [sp,#8]
	ldrb r2, [r5,r2]
	str r2, [sp,#0x14]
	mov r3, #0xf
	and r2, r3
	ldr r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	bl sub_811FAF4
	ldr r1, [sp,#0x14]
	lsr r1, r1, #4
	sub r1, #1
	bne loc_8123DE4
	ldr r1, off_8123E04 // =dword_81233D4
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_8123DE4:
	ldr r2, [sp,#8]
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r3
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.balign 4, 0x00
off_8123DF8: .word byte_81233CC
dword_8123DFC: .word 0x20005
dword_8123E00: .word 0x40000000
off_8123E04: .word dword_81233D4
	thumb_func_end sub_8123D98

	thumb_local_start
sub_8123E08:
	push {lr}
	mov r2, #0
	ldrb r1, [r5,#0xc]
	ldr r0, off_8123E20 // =unk_20018EC 
	ldrb r0, [r0,r1]
	mov r1, #0x20 
	and r0, r1
	beq loc_8123E1A
	mov r2, #1
loc_8123E1A:
	mov r0, r2
	pop {pc}
	.balign 4, 0x00
off_8123E20: .word unk_20018EC
	thumb_func_end sub_8123E08

	thumb_local_start
sub_8123E24:
	push {r4,lr}
	mov r4, #0
loc_8123E28:
	ldr r0, off_8123E48 // =byte_8123E4C
	lsl r1, r4, #2
	ldr r0, [r0,r1]
	bl getStructFrom2008450
	beq loc_8123E40
	mov r0, #0
	ldrb r2, [r5,#0xc]
	cmp r2, r4
	bne loc_8123E3E
	mov r0, #1
loc_8123E3E:
	strb r0, [r1,#4]
loc_8123E40:
	add r4, #1
	cmp r4, #3
	blt loc_8123E28
	pop {r4,pc}
off_8123E48: .word byte_8123E4C
byte_8123E4C: .byte 0x7, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0
	thumb_func_end sub_8123E24

	thumb_local_start
sub_8123E58:
	push {r4,r6,lr}
	ldrb r0, [r5,#0x14]
	mov r1, #0x2d 
	bl sub_80137B6 // (int a1, int a2) -> u8
	lsl r6, r0, #2
	ldrb r0, [r5,#0x11]
	tst r0, r0
	bne loc_8123E8C
	ldr r0, off_8123EC4 // =byte_8123EC8
	ldr r0, [r0,r6]
	ldr r1, dword_8123ED4 // =0x20005 
	mov r2, #0
	ldr r3, off_8123ED8 // =dword_81233BC
	ldr r4, dword_8123EDC // =0x80004000 
	bl sub_811FAF4
	ldr r0, off_8123EE0 // =byte_8123EE4
	ldr r0, [r0,r6]
	ldr r1, dword_8123EF0 // =0x20005 
	mov r2, #0
	ldr r3, off_8123EF4 // =dword_81233C0
	ldr r4, dword_8123EF8 // =0x8000 
	bl sub_811FAF4
	b loc_8123EAC
loc_8123E8C:
	ldr r0, off_8123EFC // =byte_8123F00
	ldr r0, [r0,r6]
	ldr r1, dword_8123F0C // =0x20005 
	mov r2, #0
	ldr r3, off_8123F10 // =dword_81233C4
	ldr r4, dword_8123F14 // =0x80004000 
	bl sub_811FAF4
	ldr r0, off_8123F18 // =byte_8123F1C
	ldr r0, [r0,r6]
	ldr r1, dword_8123F28 // =0x20005 
	mov r2, #0
	ldr r3, off_8123F2C // =dword_81233C8
	ldr r4, dword_8123F30 // =0x8000 
	bl sub_811FAF4
loc_8123EAC:
	ldrb r0, [r5,#0x10]
	add r0, #1
	cmp r0, #6
	blt loc_8123EBE
	ldrb r0, [r5,#0x11]
	mov r1, #1
	eor r0, r1
	strb r0, [r5,#0x11]
	mov r0, #0
loc_8123EBE:
	strb r0, [r5,#0x10]
	pop {r4,r6,pc}
	.balign 4, 0x00
off_8123EC4: .word byte_8123EC8
byte_8123EC8: .byte 0xC, 0x0, 0x1A, 0x0, 0xC, 0x0, 0x62, 0x0, 0xC, 0x0, 0xAA, 0x0
dword_8123ED4: .word 0x20005
off_8123ED8: .word dword_81233BC
dword_8123EDC: .word 0x80004000
off_8123EE0: .word byte_8123EE4
byte_8123EE4: .byte 0xC, 0x0, 0x3A, 0x0, 0xC, 0x0, 0x82, 0x0, 0xC, 0x0, 0xCA, 0x0
dword_8123EF0: .word 0x20005
off_8123EF4: .word dword_81233C0
dword_8123EF8: .word 0x8000
off_8123EFC: .word byte_8123F00
byte_8123F00: .byte 0xC, 0x0, 0x1A, 0x0, 0xC, 0x0, 0x62, 0x0, 0xC, 0x0, 0xAA, 0x0
dword_8123F0C: .word 0x20005
off_8123F10: .word dword_81233C4
dword_8123F14: .word 0x80004000
off_8123F18: .word byte_8123F1C
byte_8123F1C: .byte 0xC, 0x0, 0x3A, 0x0, 0xC, 0x0, 0x82, 0x0, 0xC, 0x0, 0xCA, 0x0
dword_8123F28: .word 0x20005
off_8123F2C: .word dword_81233C8
dword_8123F30: .word 0x8000
byte_8123F34: .byte 0x42, 0xC2, 0x46, 0xC2, 0x4A, 0xC2, 0xFF, 0xFF
dword_8123F3C: .word 0xFF060606
byte_8123F40: .byte 0xA, 0x0, 0x0, 0x0, 0xA, 0x1, 0x1, 0x0, 0xA, 0x2, 0x2, 0x0, 0xA, 0x3, 0x3
	.byte 0x0, 0xA, 0x4, 0x4, 0x0, 0xA, 0x5, 0x5, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_8123E58

	thumb_func_start HandleSubChipMenu8123F5C
HandleSubChipMenu8123F5C:
	push {lr}
	ldr r0, off_8123F6C // =jt_8123F70 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8123F6C: .word jt_8123F70
jt_8123F70: .word sub_8123F7C+1
	.word sub_812407C+1
	.word sub_8124350+1
	thumb_func_end HandleSubChipMenu8123F5C

	thumb_local_start
sub_8123F7C:
	push {r4-r7,lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_8124048 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8046664 // () -> void
	bl sub_8124384
	mov r0, #6
	strb r0, [r5,#0xc]
	bl subchip_initGfx_81243B0
	ldr r0, off_8124054 // =unk_201EC2C 
	mov r1, #8
	mov r2, #6
	ldr r3, dword_8124058 // =0x306200 
	bl sub_8120C94
	bl sub_81247EC
	bl sub_81245BC
	mov r0, #0
	strb r0, [r5,#0x14]
	strb r0, [r5,#0xd]
	strb r0, [r5,#0xf]
	strb r0, [r5,#0x11]
	bl getPETNaviSelect // () -> u8
	mov r4, r0
	mov r1, #0x40 
	bl sub_80137FE
	strh r0, [r5,#0x18]
	mov r0, r4
	mov r1, #0x42 
	bl sub_80137FE
	strh r0, [r5,#0x1a]
	ldr r0, off_812404C // =unk_201EBDC 
	mov r1, #0xb
	mov r2, #3
	ldr r3, dword_8124050 // =0x30b380 
	bl sub_8120C94
	bl sub_812453C
	ldr r0, off_812405C // =unk_201EC8C 
	mov r1, #8
	mov r2, #1
	ldr r3, dword_8124060 // =0x306220 
	bl sub_8120C94
	ldr r0, off_8124064 // =unk_201ECAC 
	mov r1, #8
	mov r2, #1
	ldr r3, dword_8124068 // =0x306230 
	bl sub_8120C94
	ldr r0, off_812406C // =unk_201ECCC 
	mov r1, #8
	mov r2, #1
	ldr r3, dword_8124070 // =0x306240 
	bl sub_8120C94
	bl sub_8124870
	// a1
	ldr r0, off_8124074 // =byte_8123F40
	bl sub_80465A0 // (void *a1) -> void
	mov r0, #0
	ldr r1, off_8124078 // =dword_8123F3C
	bl sub_8120CC8
	strb r0, [r5,#0xd]
	strb r1, [r5,#0x12]
	pop {r4-r7,pc}
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
off_8124074: .word byte_8123F40
off_8124078: .word dword_8123F3C
	thumb_func_end sub_8123F7C

	thumb_local_start
sub_812407C:
	push {lr}
	ldr r0, off_812409C // =off_81240A0 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl sub_812453C
	bl sub_812475C
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
	thumb_func_end sub_812407C

	thumb_local_start
sub_81240BC:
	push {lr}
	bl sub_81244EC
	bl IsPaletteFadeActive // () -> zf
	beq locret_81240CC
	mov r0, #4
	strb r0, [r5,#2]
locret_81240CC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_81240BC

	thumb_local_start
sub_81240D0:
	push {lr}
	mov r0, #0xa
	bl isJoystickIRQActive
	beq loc_81240E2
	mov r0, #8
	bl sub_811FB64
	b loc_8124128
loc_81240E2:
	ldrb r0, [r5,#0xc]
	tst r0, r0
	beq loc_8124112
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_8124112
	ldr r0, off_8124130 // =unk_201C400 
	ldrh r1, [r5,#0x14]
	lsl r1, r1, #1
	add r1, #1
	ldrb r0, [r0,r1]
	tst r0, r0
	bne loc_8124106
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_8124128
loc_8124106:
	bl sub_81245D4
	mov r0, #0x81
	bl sound_play // () -> void
	b loc_8124128
loc_8124112:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	ldrb r1, [r5,#0xc]
	cmp r1, #1
	ble loc_8124128
	mov r2, #1
	ldrh r3, [r5,#0x14]
	bl sub_811FA22
	strh r0, [r5,#0x14]
loc_8124128:
	bl sub_81244EC
	pop {pc}
	.byte 0, 0
off_8124130: .word unk_201C400
	thumb_func_end sub_81240D0

	thumb_local_start
sub_8124134:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne locret_8124142
	mov r0, #4
	strb r0, [r5,#2]
locret_8124142:
	pop {pc}
	thumb_func_end sub_8124134

	thumb_local_start
sub_8124144:
	push {lr}
	ldrb r0, [r5,#0x11]
	mov r1, #1
	tst r0, r1
	bne loc_8124176
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	tst r0, r0
	beq locret_8124180
	mov r0, #0x10
	bl chatbox_check_eFlags2009F38
	bne loc_8124170
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq locret_8124180
	bl chatbox_8045F4C
	tst r0, r0
	beq loc_8124176
loc_8124170:
	mov r0, #4
	strb r0, [r5,#2]
	b locret_8124180
loc_8124176:
	ldr r0, off_8124184 // =off_8124188 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
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
	thumb_func_end sub_8124144

	thumb_local_start
sub_81241A0:
	push {r4-r7,lr}
	mov r4, #1
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #JOYPAD_B
	tst r0, r1
	beq loc_81241B2
	ldrh r4, [r5,#0x16]
loc_81241B2:
	ldrb r0, [r5,#0x11]
	mov r1, #1
	tst r0, r1
	bne loc_81241C4
	orr r0, r1
	strb r0, [r5,#0x11]
	mov r0, #0x8a
	bl sound_play // () -> void
loc_81241C4:
	mov r7, #8
	mov r1, r4
	ldrh r0, [r5,#0x16]
	cmp r0, r1
	bgt loc_81241D2
	mov r0, #0x10
	strb r0, [r5,#2]
loc_81241D2:
	ldrh r0, [r5,#0x18]
	add r0, r0, r1
	ldrh r1, [r5,#0x1a]
	cmp r0, r1
	bgt loc_81241E6
	strh r0, [r5,#0x18]
	ldrh r0, [r5,#0x16]
	sub r0, r0, r4
	strh r0, [r5,#0x16]
	b loc_81241EE
loc_81241E6:
	strh r1, [r5,#0x18]
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r7, #9
loc_81241EE:
	mov r0, #0x10
	ldrb r1, [r5,#2]
	cmp r0, r1
	bne loc_8124204
	mov r0, r7
	bl sub_812474C
	ldrb r0, [r5,#0x11]
	mov r1, #1
	bic r0, r1
	strb r0, [r5,#0x11]
loc_8124204:
	push {r4,r6}
	ldr r0, off_8124228 // =unk_201C4B0 
	ldrh r1, [r5,#0x18]
	ldrh r2, [r5,#0x1a]
	ldr r3, dword_812422C // =0x3091e0 
	mov r4, #2
	mov r6, #3
	bl sub_8120900
	pop {r4,r6}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x40 
	ldrh r2, [r5,#0x18]
	bl sub_80137E6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8124228: .word unk_201C4B0
dword_812422C: .word 0x3091E0
	thumb_func_end sub_81241A0

	thumb_local_start
sub_8124230:
	push {r4,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0xa
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2001c04_Ptr]
	ldr r0, dword_8124258 // =0x1770 
	str r0, [r4,#0x24]
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrh r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xa
	bl sub_812474C
	pop {r4,pc}
	.balign 4, 0x00
dword_8124258: .word 0x1770
	thumb_func_end sub_8124230

	thumb_local_start
sub_812425C:
	push {r4,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #9
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrh r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xa
	bl sub_812474C
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_812425C

	thumb_local_start
sub_812427C:
	push {r4,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0xb
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2001c04_Ptr]
	ldr r0, dword_81242A8 // =0x1770 
	str r0, [r4,#0x28]
	ldr r0, [r4,#0x1c]
	str r0, [r4,#0x2c]
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrh r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xa
	bl sub_812474C
	pop {r4,pc}
	.balign 4, 0x00
dword_81242A8: .word 0x1770
	thumb_func_end sub_812427C

	thumb_local_start
sub_81242AC:
	push {r4,r7,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #8
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrh r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xa
	bl sub_812474C
	mov r4, r10
	ldr r4, [r4,#oToolkit_GameStatePtr]
	mov r0, #0xc
	strb r0, [r4,#oGameState_Unk_16]
	mov r0, #0xff
	strb r0, [r4,#oGameState_Unk_17]
	pop {r4,r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_81242AC

	thumb_local_start
sub_81242D8:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	tst r0, r0
	bne loc_8124300
	mov r0, #4
	strb r0, [r5,#2]
	ldrh r0, [r5,#0x10]
	mov r1, #1
	bl sub_803CE08
	bl sub_8124384
	ldrb r0, [r5,#0xc]
	sub r0, #1
	ldrb r1, [r5,#0x14]
	cmp r0, r1
	bge loc_8124300
	strb r0, [r5,#0x14]
loc_8124300:
	bl sub_8124870
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81242D8

	thumb_local_start
sub_8124308:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne locret_812433E
	ldrh r0, [r5,#0x10]
	mov r1, #1
	bl sub_803CE08
	bl sub_8124384
	ldrb r0, [r5,#0xc]
	sub r0, #1
	ldrb r1, [r5,#0x14]
	cmp r0, r1
	bge loc_812432A
	strb r0, [r5,#0x14]
loc_812432A:
	mov r0, #0xc
	mov r1, #0xc
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrb r0, [r5,#0x11]
	mov r1, #2
	orr r0, r1
	strb r0, [r5,#0x11]
	mov r0, #0x18
	strb r0, [r5,#2]
locret_812433E:
	pop {pc}
	thumb_func_end sub_8124308

	thumb_local_start
sub_8124340:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812434C
	mov r0, #8
	strb r0, [r5,#1]
locret_812434C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8124340

	thumb_local_start
sub_8124350:
	push {lr}
	bl sub_81244EC
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_8124380
	bl sub_8046664 // () -> void
	ldrb r0, [r5,#0x11]
	mov r1, #2
	tst r0, r1
	beq loc_812437C
	mov r0, #1
	bl sub_811EBF4
	bl sub_811F728
	b locret_8124380
loc_812437C:
	bl sub_811F708
locret_8124380:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8124350

	thumb_local_start
sub_8124384:
	push {r4-r7,lr}
	ldr r0, off_81243AC // =unk_201C400 
	mov r4, r0
	mov r1, #0x10
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r7, #0x80
	mov r3, #0
loc_8124394:
	mov r0, r7
	bl sub_803CE28
	mov r1, #0x80
	strb r7, [r4,r3]
	add r3, #1
	strb r0, [r4,r3]
	add r3, #1
	add r7, #1
	cmp r7, #0x85
	ble loc_8124394
	pop {r4-r7,pc}
off_81243AC: .word unk_201C400
	thumb_func_end sub_8124384

	thumb_local_start
subchip_initGfx_81243B0:
	push {r4-r7,lr}
	ldr r4, off_8124480 // =unk_20096E0 
	mov r6, #0
	mov r7, #0
	ldr r5, off_812444C // =off_8124450
loc_81243BA:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_81243CC:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_81243CC
	cmp r7, #0x30 
	blt loc_81243BA
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_8124480 // =unk_20096E0 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_8124484 // =byte_8124488
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r0, off_812440C // =off_8124410
	ldr r1, off_8124444 // =eTextScript201C100
	ldr r2, off_8124448 // =eDecompBuffer2013A00
	bl sub_8123300
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_8124498 // =eTextScript201BA00
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812440C: .word off_8124410
off_8124410: .word dword_86CF994
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CFAF8
	.word dword_86CF994
	.word dword_86CFAF8
off_8124444: .word eTextScript201C100
off_8124448: .word eDecompBuffer2013A00
off_812444C: .word off_8124450
off_8124450: .word dword_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9AF4
	.word 0x2
	.word unk_3001AC0
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001A20
	.word 0x20
off_8124480: .word unk_20096E0
off_8124484: .word byte_8124488
byte_8124488: .byte 0x54, 0x80, 0x6C, 0x88, 0x20, 0x0, 0x0, 0x6
	.word eDecompBuffer2013A00
	.word comp_86CF82C + 1<<31
off_8124498: .word eTextScript201BA00
	.word eDecompBuffer2013A00
	.word comp_86C9BD4 + 1<<31
	.word 0x6014840
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word comp_86C9148 + 1<<31
	.word 0x6003C00
	.word eDecompBuffer2013A00
	.word comp_86C9240 + 1<<31
	.word unk_3001A40
	.word eDecompBuffer2013A00
	.word comp_86CFC64 + 1<<31
	.word 0x6010000
	.word eDecompBuffer2013A00
	.word comp_86CFCFC + 1<<31
	.word byte_3001690
	.word eDecompBuffer2013A00
	.word 0x0
	thumb_func_end subchip_initGfx_81243B0

	thumb_local_start
sub_81244EC:
	push {r4,lr}
	ldrb r1, [r5,#0xc]
	tst r1, r1
	beq locret_8124520
	ldr r0, dword_8124524 // =0x40000 
	ldrh r1, [r5,#0x14]
	mov r3, #0x10
	mul r1, r3
	ldr r2, off_8124528 // =0x30 
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_812452C // =0x10002 
	ldrb r2, [r5,#0xd]
	ldr r3, off_8124530 // =byte_8123F34
	ldr r4, dword_8124534 // =0x40000000 
	bl sub_811FAF4
	ldrb r1, [r5,#0x12]
	sub r1, #1
	strb r1, [r5,#0x12]
	bne locret_8124520
	ldr r1, off_8124538 // =dword_8123F3C
	bl sub_8120CC8
	strb r0, [r5,#0xd]
	strb r1, [r5,#0x12]
locret_8124520:
	pop {r4,pc}
	.balign 4, 0x00
dword_8124524: .word 0x40000
off_8124528: .word 0x30
dword_812452C: .word 0x10002
off_8124530: .word byte_8123F34
dword_8124534: .word 0x40000000
off_8124538: .word dword_8123F3C
	thumb_func_end sub_81244EC

	thumb_local_start
sub_812453C:
	push {lr}
	mov r0, #0
	strb r0, [r5,#0xe]
	ldrb r0, [r5,#0xc]
	tst r0, r0
	beq loc_812456C
	ldrh r0, [r5,#0x14]
	lsl r0, r0, #1
	ldr r1, off_8124574 // =unk_201C400 
	ldrb r1, [r1,r0]
	sub r1, #0x80
	strb r1, [r5,#0xf]
	push {r4-r7}
	ldr r0, off_8124578 // =eTextScript201C100
	ldr r2, off_812457C // =unk_201AA00 
	ldr r3, dword_8124580 // =0x6007000 
	mov r4, #0xb
	mov r5, #3
	ldr r6, off_8124584 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7}
	strb r0, [r5,#0xe]
loc_812456C:
	bl sub_8124588
	pop {pc}
	.balign 4, 0x00
off_8124574: .word unk_201C400
off_8124578: .word eTextScript201C100
off_812457C: .word unk_201AA00
dword_8124580: .word 0x6007000
off_8124584: .word dword_86A5D60
	thumb_func_end sub_812453C

	thumb_local_start
sub_8124588:
	push {r4-r7,lr}
	mov r7, r5
	ldrb r0, [r7,#0xe]
	tst r0, r0
	bne loc_81245A4
	mov r0, #0xf
	mov r1, #0xc
	mov r2, #2
	mov r3, #0
	mov r4, #0xb
	mov r5, #6
	bl sub_80018D0
	b locret_81245B4
loc_81245A4:
	// j
	mov r0, #0xf
	// i
	mov r1, #0xc
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_81245B8 // =unk_201EBDC 
	mov r4, #0xb
	mov r5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81245B4:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81245B8: .word unk_201EBDC
	thumb_func_end sub_8124588

	thumb_local_start
sub_81245BC:
	push {r4-r7,lr}
	// j
	mov r0, #2
	// i
	mov r1, #6
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_81245D0 // =unk_201EC2C 
	mov r4, #8
	mov r5, #0xc
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_81245D0: .word unk_201EC2C
	thumb_func_end sub_81245BC

	thumb_local_start
sub_81245D4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #0x80
	blt loc_81245F8
	ldrh r0, [r5,#0x14]
	lsl r0, r0, #1
	ldr r1, off_8124604 // =unk_201C400 
	ldrb r0, [r1,r0]
	mov r1, r0
	sub r1, #0x80
	lsl r1, r1, #2
	ldr r2, off_8124608 // =off_812460C 
	ldr r2, [r2,r1]
	mov lr, pc
	bx r2
	pop {pc}
loc_81245F8:
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #6
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
	thumb_func_end sub_81245D4

	thumb_local_start
sub_8124624:
	push {r4,r7,lr}
	strb r0, [r5,#0x10]
	ldrh r0, [r5,#0x18]
	ldrh r7, [r5,#0x1a]
	cmp r0, r7
	beq loc_8124652
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r1, #0x32 
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	cmp r0, #0x80
	beq loc_8124646
	mov r1, r7
loc_8124646:
	strh r1, [r5,#0x16]
	str r0, [r4,#0x4c]
	mov r0, #7
	bl sub_812474C
	b locret_812465C
loc_8124652:
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #6
	bl sub_812474C
locret_812465C:
	pop {r4,r7,pc}
	.byte 0, 0
	thumb_func_end sub_8124624

	thumb_local_start
sub_8124660:
	push {r4,lr}
	strb r0, [r5,#0x10]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2001c04_Ptr]
	ldr r0, [r4,#0x24]
	tst r0, r0
	bne loc_8124686
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #8
	strb r0, [r5,#3]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #7
	bl sub_812474C
	b locret_8124698
loc_8124686:
	mov r0, #8
	strb r0, [r5,#2]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xb
	bl sub_812474C
locret_8124698:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8124660

	thumb_local_start
sub_812469C:
	push {r4,lr}
	strb r0, [r5,#0x10]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #9
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_81246C2
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0xc
	strb r0, [r5,#3]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #7
	bl sub_812474C
	b locret_81246D4
loc_81246C2:
	mov r0, #8
	strb r0, [r5,#2]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xb
	bl sub_812474C
locret_81246D4:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_812469C

	thumb_local_start
sub_81246D8:
	push {r4,lr}
	strb r0, [r5,#0x10]
	mov r4, r10
	ldr r4, [r4,#oToolkit_Unk2001c04_Ptr]
	ldr r0, [r4,#0x28]
	tst r0, r0
	bne loc_8124708
	ldr r1, [r4,#0x1c]
	tst r1, r1
	beq loc_8124704
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #7
	bl sub_812474C
	b locret_812471A
loc_8124704:
	mov r0, #0xd
	b loc_8124712
loc_8124708:
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #0xb
loc_8124712:
	bl sub_812474C
	mov r0, #8
	strb r0, [r5,#2]
locret_812471A:
	pop {r4,pc}
	thumb_func_end sub_81246D8

	thumb_local_start
sub_812471C:
	push {r4,r7,lr}
	strb r0, [r5,#0x10]
	bl sub_809F9BE
	tst r7, r7
	beq loc_8124740
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0x14
	strb r0, [r5,#3]
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldrb r0, [r5,#0x10]
	str r0, [r4,#0x4c]
	mov r0, #7
	bl sub_812474C
	b locret_812474A
loc_8124740:
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0xc
	bl sub_812474C
locret_812474A:
	pop {r4,r7,pc}
	thumb_func_end sub_812471C

	thumb_local_start
sub_812474C:
	push {lr}
	mov r1, r0
	ldr r0, off_8124758 // =eTextScript201C100
	bl chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
	pop {pc}
off_8124758: .word eTextScript201C100
	thumb_func_end sub_812474C

	thumb_local_start
sub_812475C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2001c04_Ptr]
	ldr r0, [r7,#0x24]
	tst r0, r0
	beq loc_812477A
	// j
	mov r0, #0x15
	// i
	mov r1, #8
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_81247E0 // =unk_201EC8C 
	mov r4, #8
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b loc_812478A
loc_812477A:
	mov r0, #0x15
	mov r1, #8
	mov r2, #2
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl sub_80018D0
loc_812478A:
	mov r0, #0x17
	mov r1, #9
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_81247A6
	mov r0, #0x15
	mov r1, #5
	mov r2, #2
	ldr r3, off_81247E4 // =unk_201ECAC 
	mov r4, #8
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b loc_81247B6
loc_81247A6:
	mov r0, #0x15
	mov r1, #5
	mov r2, #2
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl sub_80018D0
loc_81247B6:
	ldr r0, [r7,#0x28]
	tst r0, r0
	beq loc_81247CE
	mov r0, #0x15
	mov r1, #2
	mov r2, #2
	ldr r3, off_81247E8 // =unk_201ECCC 
	mov r4, #8
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_81247DE
loc_81247CE:
	mov r0, #0x15
	mov r1, #2
	mov r2, #2
	mov r3, #0
	mov r4, #8
	mov r5, #2
	bl sub_80018D0
locret_81247DE:
	pop {r4-r7,pc}
off_81247E0: .word unk_201EC8C
off_81247E4: .word unk_201ECAC
off_81247E8: .word unk_201ECCC
	thumb_func_end sub_812475C

	thumb_local_start
sub_81247EC:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r4, #0
	str r4, [sp]
loc_81247F4:
	ldr r1, off_8124860 // =byte_8124864 
	lsl r0, r4, #1
	ldrh r1, [r1,r0]
	ldr r0, off_8124820 // =byte_873D9FC 
	lsl r4, r4, #2
	ldr r2, off_8124828 // =off_812482C 
	ldr r2, [r2,r4]
	ldr r3, off_8124844 // =byte_8124848
	ldr r3, [r3,r4]
	mov r4, #8
	mov r5, #1
	ldr r6, off_8124824 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r4, [sp]
	add r4, #1
	str r4, [sp]
	cmp r4, #6
	blt loc_81247F4
	add sp, sp, #4
	pop {r4-r7,pc}
off_8124820: .word byte_873D9FC
off_8124824: .word dword_86B7AE0
off_8124828: .word off_812482C
off_812482C: .word unk_201C4DC
	.word unk_201CB5C
	.word unk_201D1DC
	.word unk_201D85C
	.word unk_201DEDC
	.word unk_201E55C
off_8124844: .word byte_8124848
byte_8124848: .byte 0x0, 0x40, 0x0, 0x6, 0x0, 0x42, 0x0, 0x6, 0x0, 0x44, 0x0, 0x6, 0x0, 0x46
	.byte 0x0, 0x6, 0x0, 0x48, 0x0, 0x6, 0x0, 0x4A, 0x0, 0x6
off_8124860: .word byte_8124864
byte_8124864: .byte 0x80, 0x0, 0x81, 0x0, 0x82, 0x0, 0x83, 0x0, 0x84, 0x0, 0x85
	.byte 0x0
	thumb_func_end sub_81247EC

	thumb_local_start
sub_8124870:
	push {r4,r6,lr}
	ldr r0, dword_8124894 // =0x3071e0 
	ldrh r1, [r5,#0x18]
	ldrh r2, [r5,#0x1a]
	lsr r3, r2, #2
	cmp r3, r1
	blt loc_8124880
	ldr r0, dword_8124898 // =0x3081e0 
loc_8124880:
	mov r3, r0
	ldr r0, off_8124890 // =unk_201C4B0 
	mov r4, #2
	mov r6, #3
	bl sub_8120900
	pop {r4,r6,pc}
	.byte 0, 0
off_8124890: .word unk_201C4B0
dword_8124894: .word 0x3071E0
dword_8124898: .word 0x3081E0
byte_812489C: .byte 0x80, 0xA0, 0x82, 0xA0, 0x84, 0xA0, 0x86, 0xA0, 0x88
	.byte 0xA0, 0x8A, 0xA0, 0x8C, 0xA0, 0x8E, 0xA0, 0x90, 0xA0
	.byte 0x81, 0xA0, 0x83, 0xA0, 0x85, 0xA0, 0x87, 0xA0, 0x89
	.byte 0xA0, 0x8B, 0xA0, 0x8D, 0xA0, 0x8F, 0xA0, 0x91, 0xA0
byte_81248C0: .byte 0xA0, 0xA0, 0xA2, 0xA0, 0xA4, 0xA0, 0xA6, 0xA0, 0xA8
	.byte 0xA0, 0xAA, 0xA0, 0xAC, 0xA0, 0xAE, 0xA0, 0xB0, 0xA0
	.byte 0xA1, 0xA0, 0xA3, 0xA0, 0xA5, 0xA0, 0xA7, 0xA0, 0xA9
	.byte 0xA0, 0xAB, 0xA0, 0xAD, 0xA0, 0xAF, 0xA0, 0xB1, 0xA0
byte_81248E4: .byte 0xC0, 0xA0, 0xC2, 0xA0, 0xC4, 0xA0, 0xC6, 0xA0, 0xC8
	.byte 0xA0, 0xCA, 0xA0, 0xCC, 0xA0, 0xCE, 0xA0, 0xD0, 0xA0
	.byte 0xC1, 0xA0, 0xC3, 0xA0, 0xC5, 0xA0, 0xC7, 0xA0, 0xC9
	.byte 0xA0, 0xCB, 0xA0, 0xCD, 0xA0, 0xCF, 0xA0, 0xD1, 0xA0
byte_8124908: .byte 0xE0, 0xA0, 0xE2, 0xA0, 0xE4, 0xA0, 0xE6, 0xA0, 0xE8
	.byte 0xA0, 0xEA, 0xA0, 0xEC, 0xA0, 0xEE, 0xA0, 0xF0, 0xA0
	.byte 0xE1, 0xA0, 0xE3, 0xA0, 0xE5, 0xA0, 0xE7, 0xA0, 0xE9
	.byte 0xA0, 0xEB, 0xA0, 0xED, 0xA0, 0xEF, 0xA0, 0xF1, 0xA0
byte_812492C: .byte 0x0, 0xA1, 0x2, 0xA1, 0x4, 0xA1, 0x6, 0xA1, 0x8, 0xA1, 0xA, 0xA1
	.byte 0xC, 0xA1, 0xE, 0xA1, 0x10, 0xA1, 0x1, 0xA1, 0x3, 0xA1, 0x5, 0xA1
	.byte 0x7, 0xA1, 0x9, 0xA1, 0xB, 0xA1, 0xD, 0xA1, 0xF, 0xA1, 0x11, 0xA1
byte_8124950: .byte 0x0, 0x0, 0x0, 0x0, 0x2, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x3, 0xA2, 0x0, 0x0, 0x0
	.byte 0x0, 0x2, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x3, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x2, 0xA2
	.byte 0x0, 0x0, 0x0, 0x0, 0x3, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x2, 0xA2, 0x0, 0x0, 0x0
	.byte 0x0, 0x3, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x2, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x3, 0xA2
	.byte 0x0, 0x0, 0x0, 0x0, 0x2, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x3, 0xA2, 0x0, 0x0, 0x0
	.byte 0x0, 0x2, 0xA2, 0x0, 0x0, 0x0, 0x0, 0x3, 0xA2
byte_81249A4: .byte 0x60, 0xC3, 0x61, 0xC3, 0x62, 0xC3, 0x63, 0xC3, 0x64
	.byte 0xC3, 0x65, 0xC3, 0x66, 0xC3, 0x67, 0xC3, 0x68, 0xC3
	.byte 0x69, 0xC3, 0x6A, 0xC3, 0x6B, 0xC3, 0x6C, 0xC3, 0x6D
	.byte 0xC3, 0x6E, 0xC3, 0x6F, 0xC3, 0x70, 0xC3, 0x71, 0xC3
	.byte 0x72, 0xC3, 0x73, 0xC3, 0x74, 0xC3, 0x75, 0xC3, 0x76
	.byte 0xC3, 0x77, 0xC3, 0x78, 0xC3, 0x79, 0xC3, 0x7A, 0xC3
	.byte 0x7B, 0xC3
byte_81249DC: .byte 0x80, 0xC3, 0x81, 0xC3, 0x82, 0xC3, 0x83, 0xC3, 0x84
	.byte 0xC3, 0x85, 0xC3, 0x86, 0xC3, 0x87, 0xC3, 0x88, 0xC3
	.byte 0x89, 0xC3, 0x8A, 0xC3, 0x8B, 0xC3, 0x8C, 0xC3, 0x8D
	.byte 0xC3, 0x8E, 0xC3, 0x8F, 0xC3, 0x90, 0xC3, 0x91, 0xC3
	.byte 0x92, 0xC3, 0x93, 0xC3, 0x94, 0xC3, 0x95, 0xC3, 0x96
	.byte 0xC3, 0x97, 0xC3, 0x98, 0xC3, 0x99, 0xC3, 0x9A, 0xC3
	.byte 0x9B, 0xC3
byte_8124A14: .byte 0xA0, 0xC3, 0xA1, 0xC3, 0xA2, 0xC3, 0xA3, 0xC3, 0xA4
	.byte 0xC3, 0xA5, 0xC3, 0xA6, 0xC3, 0xA7, 0xC3, 0xA8, 0xC3
	.byte 0xA9, 0xC3, 0xAA, 0xC3, 0xAB, 0xC3, 0xAC, 0xC3, 0xAD
	.byte 0xC3, 0xAE, 0xC3, 0xAF, 0xC3, 0xB0, 0xC3, 0xB1, 0xC3
	.byte 0xB2, 0xC3, 0xB3, 0xC3, 0xB4, 0xC3, 0xB5, 0xC3, 0xB6
	.byte 0xC3, 0xB7, 0xC3, 0xB8, 0xC3, 0xB9, 0xC3, 0xBA, 0xC3
	.byte 0xBB, 0xC3
byte_8124A4C: .byte 0xC0, 0xC3, 0xC1, 0xC3, 0xC2, 0xC3, 0xC3, 0xC3, 0xC4
	.byte 0xC3, 0xC5, 0xC3, 0xC6, 0xC3, 0xC7, 0xC3, 0xC8, 0xC3
	.byte 0xC9, 0xC3, 0xCA, 0xC3, 0xCB, 0xC3, 0xCC, 0xC3, 0xCD
	.byte 0xC3, 0xCE, 0xC3, 0xCF, 0xC3, 0xD0, 0xC3, 0xD1, 0xC3
	.byte 0xD2, 0xC3, 0xD3, 0xC3, 0xD4, 0xC3, 0xD5, 0xC3, 0xD6
	.byte 0xC3, 0xD7, 0xC3, 0xD8, 0xC3, 0xD9, 0xC3, 0xDA, 0xC3
	.byte 0xDB, 0xC3
byte_8124A84: .byte 0x40, 0xC2, 0x44, 0xC2, 0x48, 0xC2, 0xFF, 0xFF
byte_8124A8C: .byte 0x50, 0xC2, 0x4F, 0xC2, 0x4E, 0xC2, 0xFF, 0xFF
dword_8124A94: .word 0xFF060606
byte_8124A98: .byte 0x51, 0xC2, 0x55, 0xC2, 0xFF, 0xFF
byte_8124A9E: .byte 0x6, 0x6, 0xFF, 0x0, 0x0, 0x0
byte_8124AA4: .byte 0x40, 0x1, 0x41, 0x1, 0x42, 0x1, 0x43, 0x1, 0x44, 0x1, 0x45
	.byte 0x1, 0x46, 0x1, 0x47, 0x1, 0x48, 0x1, 0x49, 0x1, 0x4A, 0x1
	.byte 0x4B, 0x1, 0x4C, 0x1, 0x4D, 0x1, 0x4E, 0x1, 0x4F, 0x1, 0x50
	.byte 0x1, 0x51, 0x1, 0x52, 0x1, 0x53, 0x1, 0x54, 0x1, 0x55, 0x1
	.byte 0x56, 0x1, 0x57, 0x1, 0x58, 0x1, 0x59, 0x1, 0x5A, 0x1, 0x5B
	.byte 0x1, 0x5C, 0x1, 0x0, 0x0
byte_8124AE0: .byte 0x16, 0x0, 0x0, 0x2, 0x16, 0x1, 0x1, 0x2, 0x16, 0x2, 0x2, 0x2, 0x4, 0x4
	.byte 0x0, 0x0, 0x4, 0x5, 0x1, 0x0, 0x4, 0x6, 0x2, 0x0, 0x4, 0x7, 0x0, 0x1
	.byte 0x4, 0x8, 0x1, 0x1, 0x4, 0x9, 0x2, 0x1, 0xFF, 0xFF, 0xFF, 0xFF
byte_8124B08: .byte 0x1A, 0x0, 0x0, 0x0, 0x1A, 0x1, 0x1, 0x0, 0x1A, 0x2, 0x2, 0x0, 0x1A
	.byte 0x3, 0x3, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_8124B1C: .byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x3, 0x3, 0x1, 0x3, 0x3
	.byte 0x1, 0x3, 0x4, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x1, 0x0, 0x0
	thumb_func_end sub_8124870

	thumb_func_start HandleLibraryMenu8124B3C
HandleLibraryMenu8124B3C:
	push {lr}
	ldr r0, off_8124B4C // =off_8124B50 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8124B4C: .word off_8124B50
off_8124B50: .word sub_8124B5C+1
	.word sub_8124C30+1
	.word sub_8125254+1
	thumb_func_end HandleLibraryMenu8124B3C

	thumb_local_start
sub_8124B5C:
	push {lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_8124C24 // =0x7f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, #0
	bl sub_8126818
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	bl sub_8125280
	bl sub_81254FC
	mov r0, #0xa0
	str r0, [r5,#0x74]
	str r0, [r5,#0x78]
	mov r0, #0
	bl sub_81207F8
	str r0, [r5,#0x58]
	mov r0, #1
	bl sub_81207F8
	str r0, [r5,#0x5c]
	mov r0, #2
	bl sub_81207F8
	str r0, [r5,#0x60]
	mov r0, #5
	bl sub_81207F8
	str r0, [r5,#0x64]
	mov r1, #3
	ldr r0, [r5,#0x64]
	tst r0, r0
	beq loc_8124BCC
	mov r1, #4
loc_8124BCC:
	strb r1, [r5,#0xe]
	mov r0, #4
	bl sub_81207F8
	str r0, [r5,#0x68]
	bl sub_81258F8
	strh r0, [r5,#0x12]
	bl sub_8125994
	strh r0, [r5,#0x1c]
	bl sub_8125A6C
	strh r0, [r5,#0x26]
	bl sub_8125B3C
	strh r0, [r5,#0x30]
	bl sub_8125C08
	strh r0, [r5,#0x3a]
	bl sub_8046664 // () -> void
	// a1
	ldr r0, off_8124C28 // =byte_8124AE0
	bl sub_80465A0 // (void *a1) -> void
	bl sub_81252C0
	bl sub_8125D10
	bl sub_812546C
	mov r0, #0
	ldr r1, off_8124C2C // =dword_8124A94
	bl sub_8120CC8
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,#0xc]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0
	pop {pc}
dword_8124C24: .word 0x7F40
off_8124C28: .word byte_8124AE0
off_8124C2C: .word dword_8124A94
	thumb_func_end sub_8124B5C

	thumb_local_start
sub_8124C30:
	push {lr}
	ldr r0, off_8124C40 // =off_8124C44 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0
	thumb_func_end sub_8124C30

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
	thumb_local_start
sub_8124C94:
	push {lr}
	mov r0, #0
	bl sub_8126818
	mov r0, #0
	mov r1, #1
	bl sub_811983C
	mov r0, #0
	strb r0, [r5,#0xd]
	ldrh r0, [r5,#0x14]
	strh r0, [r5,#0x16]
	ldrh r0, [r5,#0x18]
	strh r0, [r5,#0x1a]
	bl IsPaletteFadeActive // () -> zf
	beq loc_8124CBC
	mov r0, #0
	bl sub_8125594
loc_8124CBC:
	bl sub_8125444
	bl sub_8125D10
	bl sub_81264F4
	ldr r0, [r5,#0x58]
	ldrh r1, [r5,#0x12]
	mov r2, #4
	bl sub_8117084
	ldr r0, [r5,#0x5c]
	ldrh r1, [r5,#0x1c]
	mov r2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8124C94

	thumb_local_start
sub_8124CE8:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	sub r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x8e
	cmp r0, r1
	bgt loc_8124D02
	str r1, [r5,#0x74]
	mov r0, #0xc
	strb r0, [r5,#2]
loc_8124D02:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125D10
	bl sub_8125D94
	ldr r0, [r5,#0x58]
	ldrh r1, [r5,#0x12]
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124D26
	ldrh r1, [r5,#0x1c]
loc_8124D26:
	mov r2, #7
	bl sub_8117084
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8124CE8

	thumb_local_start
sub_8124D30:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	mov r1, #0xa0
	cmp r0, r1
	blt loc_8124D4A
	str r1, [r5,#0x74]
	mov r0, #0
	strb r0, [r5,#2]
loc_8124D4A:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125D10
	bl sub_8125D94
	ldr r0, [r5,#0x58]
	ldrh r1, [r5,#0x12]
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124D6E
	ldrh r1, [r5,#0x1c]
loc_8124D6E:
	mov r2, #7
	bl sub_8117084
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8124D30

	thumb_local_start
sub_8124D78:
	push {lr}
	mov r0, #0
	bl sub_8126818
	mov r0, #1
	mov r1, #1
	bl sub_811983C
	mov r0, #1
	strb r0, [r5,#0xd]
	ldrh r0, [r5,#0x1e]
	strh r0, [r5,#0x20]
	ldrh r0, [r5,#0x22]
	strh r0, [r5,#0x24]
	mov r0, #0xa
	bl sub_81255F8
	bl sub_8125444
	bl sub_8125D94
	bl sub_812650C
	ldr r0, [r5,#0x58]
	ldrh r1, [r5,#0x12]
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124DBA
	ldrh r1, [r5,#0x1c]
loc_8124DBA:
	mov r2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8124D78

	thumb_local_start
sub_8124DCC:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	sub r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x7c 
	cmp r0, r1
	bgt loc_8124DE6
	str r1, [r5,#0x74]
	mov r0, #0x18
	strb r0, [r5,#2]
loc_8124DE6:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125D94
	bl sub_8125E78
	ldr r0, [r5,#0x58]
	ldrh r1, [r5,#0x12]
	ldr r2, [r5,#0x74]
	cmp r2, #0x86
	bgt loc_8124E0A
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8124E0A
	ldrh r1, [r5,#0x26]
loc_8124E0A:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124E1A
	ldrh r1, [r5,#0x1c]
loc_8124E1A:
	mov r2, #7
	bl sub_8117084
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8124DCC

	thumb_local_start
sub_8124E24:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x8e
	cmp r0, r1
	blt loc_8124E3E
	str r1, [r5,#0x74]
	mov r0, #0xc
	strb r0, [r5,#2]
loc_8124E3E:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125D94
	bl sub_8125E78
	ldr r0, [r5,#0x58]
	ldrh r1, [r5,#0x12]
	ldr r2, [r5,#0x74]
	cmp r2, #0x84
	bgt loc_8124E62
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8124E62
	ldrh r1, [r5,#0x26]
loc_8124E62:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124E72
	ldrh r1, [r5,#0x1c]
loc_8124E72:
	mov r2, #7
	bl sub_8117084
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8124E24

	thumb_local_start
sub_8124E7C:
	push {lr}
	mov r0, #0
	bl sub_8126818
	mov r0, #2
	mov r1, #1
	bl sub_811983C
	mov r0, #2
	strb r0, [r5,#0xd]
	ldrh r0, [r5,#0x28]
	strh r0, [r5,#0x2a]
	ldrh r0, [r5,#0x2c]
	strh r0, [r5,#0x2e]
	mov r0, #0x14
	bl sub_8125678
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126524
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8124EB4
	ldrh r1, [r5,#0x26]
loc_8124EB4:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124EC4
	ldrh r1, [r5,#0x1c]
loc_8124EC4:
	mov r2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
	thumb_func_end sub_8124E7C

	thumb_local_start
sub_8124ED4:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	sub r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x6a 
	cmp r0, r1
	bgt loc_8124EEE
	str r1, [r5,#0x74]
	mov r0, #0x24 
	strb r0, [r5,#2]
loc_8124EEE:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8125F5C
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124F08
	ldrh r1, [r5,#0x1c]
loc_8124F08:
	ldr r2, [r5,#0x74]
	cmp r2, #0x72 
	bgt loc_8124F18
	mov r1, #0
	ldr r0, [r5,#0x64]
	cmp r0, #0xf
	bne loc_8124F18
	ldrh r1, [r5,#0x30]
loc_8124F18:
	mov r2, #7
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8124F28
	ldrh r1, [r5,#0x26]
loc_8124F28:
	mov r2, #4
	bl sub_8117084
	pop {pc}
	thumb_func_end sub_8124ED4

	thumb_local_start
sub_8124F30:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x7c 
	cmp r0, r1
	blt loc_8124F4A
	str r1, [r5,#0x74]
	mov r0, #0x18
	strb r0, [r5,#2]
loc_8124F4A:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8125F5C
	mov r1, #0
	ldr r0, [r5,#0x64]
	cmp r0, #0xf
	bne loc_8124F64
	ldrh r1, [r5,#0x30]
loc_8124F64:
	ldr r2, [r5,#0x74]
	cmp r2, #0x72 
	blt loc_8124F74
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8124F74
	ldrh r1, [r5,#0x1c]
loc_8124F74:
	mov r2, #7
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8124F84
	ldrh r1, [r5,#0x26]
loc_8124F84:
	mov r2, #4
	bl sub_8117084
	pop {pc}
	thumb_func_end sub_8124F30

	thumb_local_start
sub_8124F8C:
	push {lr}
	mov r0, #0
	bl sub_8126818
	mov r0, #3
	strb r0, [r5,#0xd]
	ldrh r0, [r5,#0x32]
	strh r0, [r5,#0x34]
	ldrh r0, [r5,#0x36]
	strh r0, [r5,#0x38]
	mov r0, #0x1e
	bl sub_8125704
	bl sub_81268D8
	bl sub_8125444
	bl sub_8125F5C
	bl sub_812653C
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8124FC0
	ldrh r1, [r5,#0x26]
loc_8124FC0:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x64]
	cmp r0, #0xf
	bne loc_8124FD0
	ldrh r1, [r5,#0x30]
loc_8124FD0:
	mov r2, #7
	bl sub_8117084
	bl sub_812674C
	bl sub_81267A8
	pop {pc}
	thumb_func_end sub_8124F8C

	thumb_local_start
sub_8124FE0:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	sub r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x58 
	cmp r0, r1
	bgt loc_8124FFA
	str r1, [r5,#0x74]
	mov r0, #0x30 
	strb r0, [r5,#2]
loc_8124FFA:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125F5C
	bl sub_8126114
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8125014
	ldrh r1, [r5,#0x26]
loc_8125014:
	ldr r2, [r5,#0x74]
	cmp r2, #0x60 
	bgt loc_8125024
	mov r1, #0
	ldr r0, [r5,#0x68]
	cmp r0, #0x1d
	bne loc_8125024
	ldrh r1, [r5,#0x3a]
loc_8125024:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x64]
	cmp r0, #0xf
	bne loc_8125034
	ldrh r1, [r5,#0x30]
loc_8125034:
	mov r2, #7
	bl sub_8117084
	pop {pc}
	thumb_func_end sub_8124FE0

	thumb_local_start
sub_812503C:
	push {lr}
	mov r0, #1
	bl sub_8126818
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x6a 
	cmp r0, r1
	blt loc_8125056
	str r1, [r5,#0x74]
	mov r0, #0x24 
	strb r0, [r5,#2]
loc_8125056:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125F5C
	bl sub_8126114
	mov r1, #0
	ldr r0, [r5,#0x68]
	cmp r0, #0x1d
	bne loc_8125070
	ldrh r1, [r5,#0x3a]
loc_8125070:
	ldr r2, [r5,#0x74]
	cmp r2, #0x60 
	blt loc_8125080
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8125080
	ldrh r1, [r5,#0x26]
loc_8125080:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x64]
	cmp r0, #0xf
	bne loc_8125090
	ldrh r1, [r5,#0x30]
loc_8125090:
	mov r2, #7
	bl sub_8117084
	bl sub_81267F0
	pop {pc}
	thumb_func_end sub_812503C

	thumb_local_start
sub_812509C:
	push {lr}
	mov r0, #1
	bl sub_8126818
	mov r0, #4
	strb r0, [r5,#0xd]
	ldrh r0, [r5,#0x3c]
	strh r0, [r5,#0x3e]
	mov r1, #0x40 
	ldrh r0, [r5,r1]
	mov r1, #0x42 
	strh r0, [r5,r1]
	mov r0, #0x28 
	bl sub_8125784
	bl sub_8125444
	ldr r0, [r5,#0x64]
	tst r0, r0
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
	thumb_func_end sub_812509C

	thumb_local_start
sub_81250E0:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125D10
	bl sub_81264F4
	bl IsPaletteFadeActive // () -> zf
	beq locret_8125100
	mov r0, #8
	strb r0, [r5,#1]
locret_8125100:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81250E0

	thumb_local_start
sub_8125104:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125D94
	bl sub_812650C
	bl IsPaletteFadeActive // () -> zf
	beq locret_8125124
	mov r0, #8
	strb r0, [r5,#1]
locret_8125124:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8125104

	thumb_local_start
sub_8125128:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126524
	bl IsPaletteFadeActive // () -> zf
	beq locret_8125148
	mov r0, #8
	strb r0, [r5,#1]
locret_8125148:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8125128

	thumb_local_start
sub_812514C:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8125F5C
	bl sub_812653C
	bl IsPaletteFadeActive // () -> zf
	beq locret_812516C
	mov r0, #8
	strb r0, [r5,#1]
locret_812516C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812514C

	thumb_local_start
sub_8125170:
	push {lr}
	bl sub_812674C
	bl sub_81267A8
	bl sub_8125444
	bl sub_8126114
	bl sub_8126554
	bl sub_81267F0
	bl IsPaletteFadeActive // () -> zf
	beq locret_8125194
	mov r0, #8
	strb r0, [r5,#1]
locret_8125194:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8125170

	thumb_local_start
sub_8125198:
	push {lr}
	mov r0, #0
	bl sub_8126818
	ldr r0, [r5,#0x74]
	sub r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x6a 
	cmp r0, r1
	bgt loc_81251B2
	str r1, [r5,#0x74]
	mov r0, #0x30 
	strb r0, [r5,#2]
loc_81251B2:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126184
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_81251CC
	ldrh r1, [r5,#0x26]
loc_81251CC:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x68]
	cmp r0, #0x27 
	bne loc_81251DC
	ldrh r1, [r5,#0x1c]
loc_81251DC:
	ldr r2, [r5,#0x74]
	cmp r2, #0x60 
	bgt loc_81251EC
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x1d
	bne loc_81251EC
	ldrh r1, [r5,#0x3a]
loc_81251EC:
	mov r2, #7
	bl sub_8117084
	pop {pc}
	thumb_func_end sub_8125198

	thumb_local_start
sub_81251F4:
	push {lr}
	mov r0, #1
	bl sub_8126818
	ldr r0, [r5,#0x74]
	add r0, #2
	str r0, [r5,#0x74]
	mov r1, #0x7c 
	cmp r0, r1
	blt loc_812520E
	str r1, [r5,#0x74]
	mov r0, #0x18
	strb r0, [r5,#2]
loc_812520E:
	mov r0, #0xff
	str r0, [r5,#0x70]
	bl sub_8125444
	bl sub_8125E78
	bl sub_8126184
	mov r1, #0
	ldr r0, [r5,#0x60]
	cmp r0, #5
	bne loc_8125228
	ldrh r1, [r5,#0x26]
loc_8125228:
	mov r2, #4
	bl sub_8117084
	mov r1, #0
	ldr r0, [r5,#0x5c]
	cmp r0, #0x27 
	bne loc_8125238
	ldrh r1, [r5,#0x1c]
loc_8125238:
	ldr r2, [r5,#0x74]
	cmp r2, #0x72 
	bgt loc_8125248
	mov r1, #0
	ldr r0, [r5,#0x68]
	cmp r0, #0x1d
	bne loc_8125248
	ldrh r1, [r5,#0x3a]
loc_8125248:
	mov r2, #7
	bl sub_8117084
	bl sub_81267F0
	pop {pc}
	thumb_func_end sub_81251F4

	thumb_local_start
sub_8125254:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8125276
	bl chatbox_8040818
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #0x17
	mov r1, #0x11
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #1
	b locret_812527C
loc_8125276:
	bl sub_811F708
	mov r0, #0
locret_812527C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8125254

	thumb_local_start
sub_8125280:
	push {r4-r7,lr}
	ldr r4, off_8125360 // =unk_2029000 
	mov r6, #0
	mov r7, #0
	ldr r5, off_812530C // =off_8125310 
loc_812528A:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_812529C:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_812529C
	cmp r7, #0x50 
	blt loc_812528A
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_8125360 // =unk_2029000 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_8125364 // =byte_8125368
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_8125280

	thumb_local_start
sub_81252C0:
	push {r4-r7,lr}
	mov r7, r5
	mov r0, #0
	mov r1, #2
	mov r2, #2
	mov r3, #0
	mov r4, #0x1e
	mov r5, #0x11
	bl sub_80018D0
	mov r0, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #2
	bl sub_80018D0
	mov r0, #0
	mov r1, #0
	mov r2, #1
	ldr r3, off_8125378 // =eTextScript201BA20
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, [r7,#0x74]
	sub r0, #0x95
	mov r1, #2
	mov r2, #2
	ldr r3, off_8125384 // =eTextScript201BF20
	mov r4, #0x5b 
	mov r5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.word 0xFFFFFFFF
off_812530C: .word off_8125310
off_8125310: .word dword_86C9108
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
	.word eDecompBuffer2013A00
	.word byte_872CF94
	.word 0x2
	.word unk_3001AE0
	.word 0x20
off_8125360: .word unk_2029000
off_8125364: .word byte_8125368
byte_8125368: .byte 0x54, 0x80, 0x6C, 0x88, 0x20, 0x0, 0x0, 0x6
	.word eDecompBuffer2013A00
	.word comp_86D6C70 + 1<<31
off_8125378: .word eTextScript201BA20
	.word eDecompBuffer2013A00
	.word comp_86D6D50 + 1<<31
off_8125384: .word eTextScript201BF20
	.word eDecompBuffer2013A00
	.word comp_86C9BD4 + 1<<31
	.word 0x6014800
	.word eDecompBuffer2013A00
	.word comp_86C9C80 + 1<<31
	.word 0x60149C0
	.word eDecompBuffer2013A00
	.word comp_86C7DCC + 1<<31
	.word 0x6014A20
	.word eDecompBuffer2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word dword_86B7AE0
	.word 0x6004000
	.word 0x2800
	.word comp_86C96C0 + 1<<31
	.word 0x6006800
	.word eDecompBuffer2013A00
	.word comp_86C7764 + 1<<31
	.word unk_2020500
	.word eDecompBuffer2013A00
	.word comp_86C73D8 + 1<<31
	.word unk_2020C00
	.word eDecompBuffer2013A00
	.word comp_86C7980 + 1<<31
	.word byte_2022C00
	.word eDecompBuffer2013A00
	.word comp_86C6B30 + 1<<31
	.word unk_2024C00
	.word eDecompBuffer2013A00
	.word comp_86C6FD0 + 1<<31
	.word unk_2026C00
	.word eDecompBuffer2013A00
	.word comp_86D6F30 + 1<<31
	.word unk_2028000
	.word eDecompBuffer2013A00
	.word dword_86C9BB4
	.word byte_30016B0
	.word 0x20
	.word comp_86D6EE4 + 1<<31
	.word unk_201CC20
	.word eDecompBuffer2013A00
	.word 0x0
	thumb_func_end sub_81252C0

	thumb_local_start
sub_8125444:
	push {lr}
	bl sub_81265DC
	bl sub_8126630
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	ldr r0, [r5,#0x70]
	cmp r0, #0
	beq locret_8125468
	mov r0, #0
	str r0, [r5,#0x70]
	bl sub_81252C0
	bl sub_812546C
locret_8125468:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8125444

	thumb_local_start
sub_812546C:
	push {r5,lr}
	mov r7, r5
	ldr r0, [r7,#0x74]
	// j
	sub r0, #0x94
	// i
	mov r1, #2
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_81254E8 // =byte_812489C
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, [r7,#0x74]
	sub r0, #0x82
	mov r1, #2
	mov r2, #3
	ldr r3, off_81254EC // =byte_81248C0
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, [r7,#0x74]
	sub r0, #0x70 
	mov r1, #2
	mov r2, #3
	ldr r3, off_81254F0 // =byte_81248E4
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, [r7,#0x64]
	tst r0, r0
	bne loc_81254C0
	ldr r0, [r7,#0x74]
	sub r0, #0x5e 
	mov r1, #2
	mov r2, #3
	ldr r3, off_81254F8 // =byte_812492C
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	b locret_81254E4
loc_81254C0:
	ldr r0, [r7,#0x74]
	sub r0, #0x5e 
	mov r1, #2
	mov r2, #3
	ldr r3, off_81254F4 // =byte_8124908
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r0, [r7,#0x74]
	sub r0, #0x4c 
	mov r1, #2
	mov r2, #3
	ldr r3, off_81254F8 // =byte_812492C
	mov r4, #9
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81254E4:
	pop {r5,pc}
	.balign 4, 0x00
off_81254E8: .word byte_812489C
off_81254EC: .word byte_81248C0
off_81254F0: .word byte_81248E4
off_81254F4: .word byte_8124908
off_81254F8: .word byte_812492C
	thumb_func_end sub_812546C

	thumb_local_start
sub_81254FC:
	push {r4-r7,lr}
	ldr r0, off_8125564 // =unk_201CC20 
	mov r1, #0
	ldr r2, off_812556C // =unk_2018A00 
	ldr r3, dword_8125580 // =0x6009000 
	mov r4, #9
	mov r5, #1
	ldr r6, off_8125568 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_8125564 // =unk_201CC20 
	mov r1, #1
	ldr r2, off_8125570 // =unk_2018E00 
	ldr r3, dword_8125584 // =0x6009400 
	mov r4, #9
	mov r5, #1
	ldr r6, off_8125568 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_8125564 // =unk_201CC20 
	mov r1, #2
	ldr r2, off_8125574 // =unk_2019200 
	ldr r3, dword_8125588 // =0x6009800 
	mov r4, #9
	mov r5, #1
	ldr r6, off_8125568 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_8125564 // =unk_201CC20 
	mov r1, #5
	ldr r2, off_8125578 // =unk_2019600 
	ldr r3, dword_812558C // =0x6009c00 
	mov r4, #9
	mov r5, #1
	ldr r6, off_8125568 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	ldr r0, off_8125564 // =unk_201CC20 
	mov r1, #3
	ldr r2, off_812557C // =byte_2019A00 
	ldr r3, dword_8125590 // =0x600a000 
	mov r4, #9
	mov r5, #1
	ldr r6, off_8125568 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
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
	thumb_func_end sub_81254FC

	thumb_local_start
sub_8125594:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #JOYPAD_START | JOYPAD_B
	tst r1, r0
	beq loc_81255AC
	mov r0, #0x34 
	bl sub_812580C
	b locret_81255F2
loc_81255AC:
	ldrh r0, [r7,#4]
	mov r1, #0x10
	tst r1, r0
	beq loc_81255BE
	mov r0, #4
	strb r0, [r5,#2]
	bl sub_81258E8
	b locret_81255F2
loc_81255BE:
	ldrh r0, [r5,#0x12]
	tst r0, r0
	beq locret_81255F2
	ldrh r0, [r7,#4]
	ldrh r1, [r7]
	ldr r2, off_81255F4 // =0x300 
	tst r0, r2
	beq loc_81255DE
	mov r2, #0xc0
	bic r0, r2
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
	b locret_81255F2
loc_81255DE:
	tst r1, r2
	bne locret_81255F2
	mov r2, #0xc0
	tst r0, r2
	beq locret_81255F2
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
locret_81255F2:
	pop {r4-r7,pc}
off_81255F4: .word 0x300
	thumb_func_end sub_8125594

	thumb_local_start
sub_81255F8:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #JOYPAD_START | JOYPAD_B
	tst r1, r0
	beq loc_8125610
	mov r0, #0x38 
	bl sub_812580C
	b locret_8125670
loc_8125610:
	ldrh r0, [r7,#4]
	mov r1, #0x10
	tst r1, r0
	beq loc_8125622
	mov r0, #0x10
	strb r0, [r5,#2]
	bl sub_81258E8
	b locret_8125670
loc_8125622:
	mov r1, #0x20 
	tst r1, r0
	beq loc_8125632
	mov r0, #8
	strb r0, [r5,#2]
	bl sub_81258E8
	b locret_8125670
loc_8125632:
	ldr r0, [r5,#0x5c]
	tst r0, r0
	beq locret_8125670
	ldrh r1, [r5,#0x1c]
	push {r1}
	strh r0, [r5,#0x1c]
	ldrh r0, [r7,#4]
	ldrh r1, [r7]
	ldr r2, off_8125674 // =0x300 
	tst r0, r2
	beq loc_8125658
	mov r2, #0xc0
	bic r0, r2
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
	b loc_812566C
loc_8125658:
	tst r1, r2
	bne loc_812566C
	mov r2, #0xc0
	tst r0, r2
	beq loc_812566C
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
loc_812566C:
	pop {r1}
	strh r1, [r5,#0x1c]
locret_8125670:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8125674: .word 0x300
	thumb_func_end sub_81255F8

	thumb_local_start
sub_8125678:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #JOYPAD_START | JOYPAD_B
	tst r1, r0
	beq loc_8125690
	mov r0, #0x3c 
	bl sub_812580C
	b locret_81256FC
loc_8125690:
	ldrh r0, [r7,#4]
	mov r1, #0x10
	tst r1, r0
	beq loc_81256AE
	ldr r0, [r5,#0x64]
	tst r0, r0
	bne loc_81256A4
	mov r0, #0x48 
	strb r0, [r5,#2]
	b loc_81256A8
loc_81256A4:
	mov r0, #0x1c
	strb r0, [r5,#2]
loc_81256A8:
	bl sub_81258E8
	b locret_81256FC
loc_81256AE:
	mov r1, #0x20 
	tst r1, r0
	beq loc_81256BE
	mov r0, #0x14
	strb r0, [r5,#2]
	bl sub_81258E8
	b locret_81256FC
loc_81256BE:
	ldr r0, [r5,#0x60]
	tst r0, r0
	beq locret_81256FC
	ldrh r1, [r5,#0x26]
	push {r1}
	strh r0, [r5,#0x26]
	ldrh r0, [r7,#4]
	ldrh r1, [r7]
	ldr r2, off_8125700 // =0x300 
	tst r0, r2
	beq loc_81256E4
	mov r2, #0xc0
	bic r0, r2
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
	b loc_81256F8
loc_81256E4:
	tst r1, r2
	bne loc_81256F8
	mov r2, #0xc0
	tst r0, r2
	beq loc_81256F8
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
loc_81256F8:
	pop {r1}
	strh r1, [r5,#0x26]
locret_81256FC:
	pop {r4-r7,pc}
	.byte 0, 0
off_8125700: .word 0x300
	thumb_func_end sub_8125678

	thumb_local_start
sub_8125704:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #JOYPAD_START | JOYPAD_B
	tst r1, r0
	beq loc_812571C
	mov r0, #0x40 
	bl sub_812580C
	b locret_812577C
loc_812571C:
	ldrh r0, [r7,#4]
	mov r1, #0x10
	tst r1, r0
	beq loc_812572E
	mov r0, #0x28 
	strb r0, [r5,#2]
	bl sub_81258E8
	b locret_812577C
loc_812572E:
	mov r1, #0x20 
	tst r1, r0
	beq loc_812573E
	mov r0, #0x20 
	strb r0, [r5,#2]
	bl sub_81258E8
	b locret_812577C
loc_812573E:
	ldr r0, [r5,#0x64]
	tst r0, r0
	beq locret_812577C
	ldrh r1, [r5,#0x30]
	push {r1}
	strh r0, [r5,#0x30]
	ldrh r0, [r7,#4]
	ldrh r1, [r7]
	ldr r2, off_8125780 // =0x300 
	tst r0, r2
	beq loc_8125764
	mov r2, #0xc0
	bic r0, r2
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
	b loc_8125778
loc_8125764:
	tst r1, r2
	bne loc_8125778
	mov r2, #0xc0
	tst r0, r2
	beq loc_8125778
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
loc_8125778:
	pop {r1}
	strh r1, [r5,#0x30]
locret_812577C:
	pop {r4-r7,pc}
	.byte 0, 0
off_8125780: .word 0x300
	thumb_func_end sub_8125704

	thumb_local_start
sub_8125784:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #JOYPAD_START | JOYPAD_B
	tst r1, r0
	beq loc_812579C
	mov r0, #0x44 
	bl sub_812580C
	b locret_8125804
loc_812579C:
	mov r1, #1
	tst r1, r0
	beq loc_81257A8
	bl sub_81266E0
	b locret_8125804
loc_81257A8:
	ldrh r0, [r7,#4]
	mov r1, #0x20 
	tst r1, r0
	beq loc_81257C6
	ldr r0, [r5,#0x64]
	tst r0, r0
	bne loc_81257BC
	mov r0, #0x4c 
	strb r0, [r5,#2]
	b loc_81257C0
loc_81257BC:
	mov r0, #0x2c 
	strb r0, [r5,#2]
loc_81257C0:
	bl sub_81258E8
	b locret_8125804
loc_81257C6:
	ldr r0, [r5,#0x68]
	tst r0, r0
	beq locret_8125804
	ldrh r1, [r5,#0x3a]
	push {r1}
	strh r0, [r5,#0x3a]
	ldrh r0, [r7,#4]
	ldrh r1, [r7]
	ldr r2, off_8125808 // =0x300 
	tst r0, r2
	beq loc_81257EC
	mov r2, #0xc0
	bic r0, r2
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
	b loc_8125800
loc_81257EC:
	tst r1, r2
	bne loc_8125800
	mov r2, #0xc0
	tst r0, r2
	beq loc_8125800
	mov r1, #7
	mov r2, #0
	bl sub_8125820
	str r7, [r5,#0x70]
loc_8125800:
	pop {r1}
	strh r1, [r5,#0x3a]
locret_8125804:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8125808: .word 0x300
	thumb_func_end sub_8125784

	thumb_local_start
sub_812580C:
	push {lr}
	strb r0, [r5,#2]
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {pc}
	thumb_func_end sub_812580C

	thumb_local_start
sub_8125820:
	push {r5,lr}
	mov r12, r2
	sub r1, #1
	mov r9, r1
	mov r6, #0x12
	add r6, r8
	ldrh r6, [r5,r6]
	sub r6, #1
	mov r2, #0x14
	add r2, r8
	ldrh r2, [r5,r2]
	mov r3, #0x18
	add r3, r8
	ldrh r3, [r5,r3]
	mov r4, r9
	add r4, #1
	ldr r1, off_81258E0 // =0x200 
	tst r1, r0
	bne loc_8125866
	mov r4, #1
	mov r1, #0x40 
	tst r1, r0
	beq loc_812586E
	sub r2, r2, r4
	bge loc_812586E
	mov r2, #0
	mov r7, r12
	cmp r7, #0
	beq loc_8125866
	cmp r3, #0
	bne loc_8125866
	mov r2, r9
	mov r3, r9
	sub r3, r6, r3
	add r3, #1
loc_8125866:
	sub r3, r3, r4
	bgt loc_81258B2
	mov r3, #0
	b loc_81258B2
loc_812586E:
	mov r4, r9
	add r4, #1
	ldr r1, off_81258E4 // =0x100 
	tst r1, r0
	bne loc_812588E
	mov r4, #1
	mov r1, #0x80
	tst r1, r0
	beq loc_81258B2
	cmp r6, r9
	blt loc_8125886
	mov r6, r9
loc_8125886:
	add r2, r2, r4
	cmp r2, r6
	ble loc_81258B2
	mov r2, r6
loc_812588E:
	cmp r6, r9
	blt loc_81258B2
	mov r6, #0x12
	add r6, r8
	ldrh r6, [r5,r6]
	mov r0, r9
	sub r6, r6, r0
	sub r6, #1
	add r3, r3, r4
	cmp r3, r6
	ble loc_81258B2
	mov r3, r6
	mov r7, r12
	cmp r7, #0
	beq loc_81258B2
	mov r2, #0
	mov r3, #0
	b loc_81258B2
loc_81258B2:
	mov r4, #0x14
	add r4, r8
	ldrh r4, [r5,r4]
	cmp r2, r4
	bne loc_81258CA
	mov r4, #0x18
	add r4, r8
	ldrh r4, [r5,r4]
	cmp r3, r4
	bne loc_81258CA
	mov r7, #0
	b loc_81258D2
loc_81258CA:
	mov r0, #0x7f
	bl sound_play // () -> void
	mov r7, #0xff
loc_81258D2:
	mov r0, #0x14
	add r0, r8
	strh r2, [r5,r0]
	mov r0, #0x18
	add r0, r8
	strh r3, [r5,r0]
	pop {r5,pc}
off_81258E0: .word 0x200
off_81258E4: .word 0x100
	thumb_func_end sub_8125820

	thumb_local_start
sub_81258E8:
	push {lr}
	ldr r0, dword_81258F4 // =0x7a 
	bl sound_play // () -> void
	pop {pc}
	.balign 4, 0x00
dword_81258F4: .word 0x7A
	thumb_func_end sub_81258E8

	thumb_local_start
sub_81258F8:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8125984 // =unk_201DC20 
	// size
	ldr r1, off_8125988 // =0x320 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r4, #1
	mov r5, #0
	ldr r7, off_8125984 // =unk_201DC20 
loc_8125908:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#0x15]
	sub r6, #1
	ldrb r1, [r0,#9]
	mov r2, #0x40 
	tst r1, r2
	beq loc_8125978
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	bne loc_8125978
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r0, [r0,#7]
	mov r1, #0
	cmp r0, r1
	bne loc_8125978
	add r5, #1
	ldr r3, dword_8125CF8 // =0x1e20 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125944
	strh r4, [r6]
	mov r0, #0
	strb r0, [r6,#2]
	b loc_8125978
loc_8125944:
	ldr r3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125958
	strh r4, [r6]
	mov r0, #1
	strb r0, [r6,#2]
	b loc_8125978
loc_8125958:
	ldr r3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125978
	strh r4, [r6]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125974
	mov r0, #1
	b loc_8125976
loc_8125974:
	mov r0, #2
loc_8125976:
	strb r0, [r6,#2]
loc_8125978:
	add r4, #1
	ldr r0, dword_8125990 // =0x13f 
	cmp r4, r0
	ble loc_8125908
	mov r0, r5
	pop {r4-r7,pc}
off_8125984: .word unk_201DC20
off_8125988: .word 0x320
	.word unk_201E198
dword_8125990: .word 0x13F
	thumb_func_end sub_81258F8

	thumb_local_start
sub_8125994:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8125A60 // =dword_201E420 
	// size
	ldr r1, off_8125A64 // =0x578 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r4, #1
	mov r5, #0
	mov r6, #0
	ldr r7, off_8125A60 // =dword_201E420 
loc_81259A6:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#0x15]
	sub r6, #1
	lsl r6, r6, #2
	ldrb r1, [r0,#9]
	mov r2, #0x40 
	tst r1, r2
	beq loc_8125A26
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	bne loc_8125A26
	add r2, r6, r7
	ldrb r0, [r0,#7]
	mov r1, #1
	cmp r0, r1
	bne loc_8125A26
	ldr r3, dword_8125CF8 // =0x1e20 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81259E4
	add r5, #1
	strh r4, [r2]
	mov r0, #0
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125A26
loc_81259E4:
	ldr r3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81259FC
	add r5, #1
	strh r4, [r2]
	mov r0, #1
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125A26
loc_81259FC:
	ldr r3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125A26
	add r5, #1
	strh r4, [r2]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125A1A
	mov r0, #1
	b loc_8125A1C
loc_8125A1A:
	mov r0, #2
loc_8125A1C:
	strb r0, [r2,#2]
	ldrh r0, [r2]
	tst r0, r0
	bne loc_8125A26
	add r6, #4
loc_8125A26:
	add r4, #1
	ldr r0, dword_8125CFC // =0x13f 
	cmp r4, r0
	ble loc_81259A6
	ldr r6, off_8125A60 // =dword_201E420 
	ldr r7, off_8125A68 // =unk_201E998 
	mov r4, #0
loc_8125A34:
	ldr r0, [r6]
	tst r0, r0
	bne loc_8125A52
	mov r0, r6
	add r1, r6, #4
loc_8125A3E:
	ldr r2, [r1]
	tst r2, r2
	beq loc_8125A4C
	str r2, [r0]
	mov r2, #0
	str r2, [r1]
	add r0, #4
loc_8125A4C:
	add r1, #4
	cmp r1, r7
	blt loc_8125A3E
loc_8125A52:
	add r6, #4
	add r4, #1
	ldr r0, dword_8125CFC // =0x13f 
	cmp r4, r0
	blt loc_8125A34
	mov r0, r5
	pop {r4-r7,pc}
off_8125A60: .word dword_201E420
off_8125A64: .word 0x578
off_8125A68: .word unk_201E998
	thumb_func_end sub_8125994

	thumb_local_start
sub_8125A6C:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8125B30 // =dword_201EC20 
	// size
	ldr r1, off_8125B34 // =0x578 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r4, #1
	mov r5, #0
	mov r6, #0
	ldr r7, off_8125B30 // =dword_201EC20 
loc_8125A7E:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#0x15]
	sub r6, #1
	lsl r6, r6, #2
	ldrb r1, [r0,#9]
	mov r2, #0x40 
	tst r1, r2
	beq loc_8125AF6
	add r2, r6, r7
	ldrb r0, [r0,#7]
	mov r1, #2
	cmp r0, r1
	bne loc_8125AF6
	ldr r3, dword_8125CF8 // =0x1e20 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125AB4
	add r5, #1
	strh r4, [r2]
	mov r0, #0
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125AF6
loc_8125AB4:
	ldr r3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125ACC
	add r5, #1
	strh r4, [r2]
	mov r0, #1
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125AF6
loc_8125ACC:
	ldr r3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125AF6
	add r5, #1
	strh r4, [r2]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125AEA
	mov r0, #1
	b loc_8125AEC
loc_8125AEA:
	mov r0, #2
loc_8125AEC:
	strb r0, [r2,#2]
	ldrh r0, [r2]
	tst r0, r0
	bne loc_8125AF6
	add r6, #4
loc_8125AF6:
	add r4, #1
	ldr r0, dword_8125CFC // =0x13f 
	cmp r4, r0
	ble loc_8125A7E
	ldr r6, off_8125B30 // =dword_201EC20 
	ldr r7, off_8125B38 // =unk_201F198 
	mov r4, #0
loc_8125B04:
	ldr r0, [r6]
	tst r0, r0
	bne loc_8125B22
	mov r0, r6
	add r1, r6, #4
loc_8125B0E:
	ldr r2, [r1]
	tst r2, r2
	beq loc_8125B1C
	str r2, [r0]
	mov r2, #0
	str r2, [r1]
	add r0, #4
loc_8125B1C:
	add r1, #4
	cmp r1, r7
	blt loc_8125B0E
loc_8125B22:
	add r6, #4
	add r4, #1
	ldr r0, dword_8125CFC // =0x13f 
	cmp r4, r0
	blt loc_8125B04
	mov r0, r5
	pop {r4-r7,pc}
off_8125B30: .word dword_201EC20
off_8125B34: .word 0x578
off_8125B38: .word unk_201F198
	thumb_func_end sub_8125A6C

	thumb_local_start
sub_8125B3C:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8125BFC // =dword_201F420 
	// size
	ldr r1, off_8125C00 // =0x578 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r4, #1
	mov r5, #0
	mov r6, #0
	ldr r7, off_8125BFC // =dword_201F420 
loc_8125B4E:
	// idx
	mov r0, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#0x15]
	sub r6, #1
	lsl r6, r6, #2
	ldrb r1, [r0,#9]
	mov r2, #0x40 
	tst r1, r2
	beq loc_8125BC0
	ldrb r1, [r0,#0x16]
	mov r2, #1
	tst r1, r2
	beq loc_8125BC0
	add r2, r6, r7
	ldr r3, dword_8125CF8 // =0x1e20 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125B84
	add r5, #1
	strh r4, [r2]
	mov r0, #0
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125BC0
loc_8125B84:
	ldr r3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125B9C
	add r5, #1
	strh r4, [r2]
	mov r0, #1
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125BC0
loc_8125B9C:
	ldr r3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125BC0
	add r5, #1
	strh r4, [r2]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125BBA
	mov r0, #1
	b loc_8125BBC
loc_8125BBA:
	mov r0, #2
loc_8125BBC:
	strb r0, [r2,#2]
	add r6, #4
loc_8125BC0:
	add r4, #1
	ldr r0, dword_8125CFC // =0x13f 
	cmp r4, r0
	ble loc_8125B4E
	ldr r6, off_8125BFC // =dword_201F420 
	ldr r7, off_8125C04 // =unk_201F998 
	mov r4, #0
loc_8125BCE:
	ldr r0, [r6]
	tst r0, r0
	bne loc_8125BEC
	mov r0, r6
	add r1, r6, #4
loc_8125BD8:
	ldr r2, [r1]
	tst r2, r2
	beq loc_8125BE6
	str r2, [r0]
	mov r2, #0
	str r2, [r1]
	add r0, #4
loc_8125BE6:
	add r1, #4
	cmp r1, r7
	blt loc_8125BD8
loc_8125BEC:
	add r6, #4
	add r4, #1
	ldr r0, dword_8125CFC // =0x13f 
	cmp r4, r0
	blt loc_8125BCE
	mov r0, r5
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8125BFC: .word dword_201F420
off_8125C00: .word 0x578
off_8125C04: .word unk_201F998
	thumb_func_end sub_8125B3C

	thumb_local_start
sub_8125C08:
	push {r4-r7,lr}
	// memBlock
	ldr r0, off_8125CE4 // =dword_201FC20 
	// size
	ldr r1, off_8125CE8 // =0x578 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r4, #0
	mov r5, #0
	mov r6, #0
	ldr r7, off_8125CE4 // =dword_201FC20 
loc_8125C1A:
	ldr r3, off_8125CF4 // =0x140 
	// idx
	add r0, r3, r4
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r6, [r0,#0x15]
	sub r6, #1
	lsl r6, r6, #2
	add r2, r6, r7
	ldrb r0, [r0,#7]
	mov r1, #4
	cmp r0, r1
	bne loc_8125CAA
	ldr r3, dword_8125D0C // =0x1f60 
	add r3, r3, r4
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125C4E
	add r5, #1
	ldr r3, off_8125CF4 // =0x140 
	add r3, r3, r4
	strh r3, [r2]
	mov r0, #0
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125CAA
loc_8125C4E:
	ldr r3, dword_8125D04 // =0x2220 
	add r3, r3, r4
	ldr r0, dword_8125CF8 // =0x1e20 
	ldr r1, dword_8125D0C // =0x1f60 
	sub r1, r1, r0
	add r3, r3, r1
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125C72
	add r5, #1
	ldr r3, off_8125CF4 // =0x140 
	add r3, r3, r4
	strh r3, [r2]
	mov r0, #1
	strb r0, [r2,#2]
	add r6, #4
	b loc_8125CAA
loc_8125C72:
	ldr r3, dword_8125D00 // =0x2020 
	add r3, r3, r4
	ldr r0, dword_8125CF8 // =0x1e20 
	ldr r1, dword_8125D0C // =0x1f60 
	sub r1, r1, r0
	add r3, r3, r1
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8125CAA
	add r5, #1
	ldr r3, off_8125CF4 // =0x140 
	add r3, r3, r4
	strh r3, [r2]
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8125C9E
	mov r0, #1
	strb r0, [r2,#2]
	b loc_8125CA0
loc_8125C9E:
	mov r0, #2
loc_8125CA0:
	strb r0, [r2,#2]
	ldrh r0, [r2]
	tst r0, r0
	bne loc_8125CAA
	add r6, #4
loc_8125CAA:
	add r4, #1
	ldr r0, dword_8125D08 // =0x1e 
	cmp r4, r0
	ble loc_8125C1A
	ldr r6, off_8125CE4 // =dword_201FC20 
	ldr r7, off_8125CEC // =unk_2020198 
	mov r4, #0
loc_8125CB8:
	ldr r0, [r6]
	tst r0, r0
	bne loc_8125CD6
	mov r0, r6
	add r1, r6, #4
loc_8125CC2:
	ldr r2, [r1]
	tst r2, r2
	beq loc_8125CD0
	str r2, [r0]
	mov r2, #0
	str r2, [r1]
	add r0, #4
loc_8125CD0:
	add r1, #4
	cmp r1, r7
	blt loc_8125CC2
loc_8125CD6:
	add r6, #4
	add r4, #1
	ldr r0, dword_8125CF0 // =0x13f 
	cmp r4, r0
	blt loc_8125CB8
	mov r0, r5
	pop {r4-r7,pc}
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
	thumb_func_end sub_8125C08

	thumb_local_start
sub_8125D10:
	push {r4-r7,lr}
	mov r7, r5
	ldrh r0, [r7,#0x18]
	ldr r1, off_8125D84 // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0xa0
	add r0, #0xc
	mov r1, #4
	ldr r2, off_8125D84 // =byte_2017A00 
	mov r3, #7
	bl sub_812625C
	ldrh r0, [r7,#0x18]
	ldr r1, off_8125D88 // =unk_201DC20 
	ldr r2, off_8125D84 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x70 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0xa0
	add r0, #0x11
	mov r1, #4
	ldr r2, off_8125D84 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x18]
	ldr r1, off_8125D88 // =unk_201DC20 
	ldr r2, off_8125D84 // =byte_2017A00 
	ldr r3, off_8125D90 // =byte_81249A4
	ldr r4, dword_8125D8C // =0x6006c00 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0xa0
	add r0, #0xf
	mov r1, #4
	ldr r2, off_8125D84 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x18]
	ldr r1, off_8125D88 // =unk_201DC20 
	ldr r2, off_8125D84 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0xa0
	add r0, #0x19
	mov r1, #4
	ldr r2, off_8125D84 // =byte_2017A00 
	bl sub_81264E4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8125D84: .word byte_2017A00
off_8125D88: .word unk_201DC20
dword_8125D8C: .word 0x6006C00
off_8125D90: .word byte_81249A4
	thumb_func_end sub_8125D10

	thumb_local_start
sub_8125D94:
	push {r4-r7,lr}
	mov r7, r5
	ldr r0, [r7,#0x5c]
	tst r0, r0
	beq locret_8125E64
	cmp r0, #0x27 
	bne loc_8125E10
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E68 // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #1
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	mov r3, #7
	bl sub_812625C
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E6C // =dword_201E420 
	ldr r2, off_8125E68 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x70 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #6
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E6C // =dword_201E420 
	ldr r2, off_8125E68 // =byte_2017A00 
	ldr r3, off_8125E74 // =byte_81249DC
	ldr r4, dword_8125E70 // =0x6007000 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #4
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E6C // =dword_201E420 
	ldr r2, off_8125E68 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #0xe
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	bl sub_81264E4
	b locret_8125E64
loc_8125E10:
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E6C // =dword_201E420 
	ldr r2, off_8125E68 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #3
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E6C // =dword_201E420 
	ldr r2, off_8125E68 // =byte_2017A00 
	ldr r3, off_8125E74 // =byte_81249DC
	ldr r4, dword_8125E70 // =0x6007000 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #1
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x22]
	ldr r1, off_8125E6C // =dword_201E420 
	ldr r2, off_8125E68 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x83
	add r0, #0xb
	mov r1, #4
	ldr r2, off_8125E68 // =byte_2017A00 
	bl sub_81264E4
locret_8125E64:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8125E68: .word byte_2017A00
off_8125E6C: .word dword_201E420
dword_8125E70: .word 0x6007000
off_8125E74: .word byte_81249DC
	thumb_func_end sub_8125D94

	thumb_local_start
sub_8125E78:
	push {r4-r7,lr}
	mov r7, r5
	ldr r0, [r7,#0x60]
	tst r0, r0
	beq locret_8125F48
	cmp r0, #5
	bne loc_8125EF4
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F4C // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #1
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	mov r3, #5
	bl sub_812625C
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F50 // =dword_201EC20 
	ldr r2, off_8125F4C // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x70 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #6
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	mov r3, #0xa
	bl sub_8126404
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F50 // =dword_201EC20 
	ldr r2, off_8125F4C // =byte_2017A00 
	ldr r3, off_8125F58 // =byte_8124A14
	ldr r4, dword_8125F54 // =0x6007400 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #4
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F50 // =dword_201EC20 
	ldr r2, off_8125F4C // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #0xe
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	bl sub_81264E4
	b locret_8125F48
loc_8125EF4:
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F50 // =dword_201EC20 
	ldr r2, off_8125F4C // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #3
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	mov r3, #0xa
	bl sub_8126404
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F50 // =dword_201EC20 
	ldr r2, off_8125F4C // =byte_2017A00 
	ldr r3, off_8125F58 // =byte_8124A14
	ldr r4, dword_8125F54 // =0x6007400 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #1
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x2c]
	ldr r1, off_8125F50 // =dword_201EC20 
	ldr r2, off_8125F4C // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x71 
	add r0, #0xb
	mov r1, #4
	ldr r2, off_8125F4C // =byte_2017A00 
	bl sub_81264E4
locret_8125F48:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8125F4C: .word byte_2017A00
off_8125F50: .word dword_201EC20
dword_8125F54: .word 0x6007400
off_8125F58: .word byte_8124A14
	thumb_func_end sub_8125E78

	thumb_local_start
sub_8125F5C:
	push {r4-r7,lr}
	mov r7, r5
	ldr r0, [r7,#0x64]
	tst r0, r0
	beq locret_812602C
	cmp r0, #0xf
	bne loc_8125FD8
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126104 // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #1
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #7
	bl sub_812625C
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #6
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	ldr r3, off_8126110 // =byte_8124A4C
	ldr r4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #4
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #0xe
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
	b locret_812602C
loc_8125FD8:
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #3
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	ldr r3, off_8126110 // =byte_8124A4C
	ldr r4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #1
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #0xb
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
locret_812602C:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8125F5C

	thumb_local_start
sub_8126030:
	push {r4-r7,lr}
	mov r7, r5
	ldr r0, [r7,#0x64]
	tst r0, r0
	beq locret_8126100
	cmp r0, #0xf
	bne loc_81260AC
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126104 // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #1
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #7
	bl sub_812625C
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #6
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	ldr r3, off_8126110 // =byte_8124A4C
	ldr r4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #4
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #0xe
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
	b locret_8126100
loc_81260AC:
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #3
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	ldr r3, off_8126110 // =byte_8124A4C
	ldr r4, dword_812610C // =0x6007800 
	bl sub_8126430
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #1
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126484
	ldrh r0, [r7,#0x36]
	ldr r1, off_8126108 // =dword_201F420 
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_8126494
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #0xb
	mov r1, #4
	ldr r2, off_8126104 // =byte_2017A00 
	bl sub_81264E4
locret_8126100:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8126104: .word byte_2017A00
off_8126108: .word dword_201F420
dword_812610C: .word 0x6007800
off_8126110: .word byte_8124A4C
	thumb_func_end sub_8126030

	thumb_local_start
sub_8126114:
	push {r4-r7,lr}
	mov r7, r5
	ldr r0, [r7,#0x68]
	tst r0, r0
	beq locret_8126182
	cmp r0, #0x1d
	bne loc_8126160
	mov r0, #0x40 
	ldrh r0, [r7,r0]
	ldr r1, off_81261F4 // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #1
	mov r1, #4
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #7
	bl sub_812625C
	mov r0, #0x40 
	ldrh r0, [r7,r0]
	ldr r1, off_81261F8 // =dword_201FC20 
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x4d 
	add r0, #6
	mov r1, #4
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	b locret_8126182
loc_8126160:
	mov r0, #0x40 
	ldrh r0, [r7,r0]
	ldr r1, off_81261F8 // =dword_201FC20 
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x4c 
	add r0, #1
	mov r1, #4
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
locret_8126182:
	pop {r4-r7,pc}
	thumb_func_end sub_8126114

	thumb_local_start
sub_8126184:
	push {r4-r7,lr}
	mov r7, r5
	ldr r0, [r7,#0x68]
	tst r0, r0
	beq locret_81261F2
	cmp r0, #0x1d
	bne loc_81261D0
	mov r0, #0x40 
	ldrh r0, [r7,r0]
	ldr r1, off_81261F4 // =byte_2017A00 
	bl sub_81261FC
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #1
	mov r1, #4
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #7
	bl sub_812625C
	mov r0, #0x40 
	ldrh r0, [r7,r0]
	ldr r1, off_81261F8 // =dword_201FC20 
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x5f 
	add r0, #6
	mov r1, #4
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
	b locret_81261F2
loc_81261D0:
	mov r0, #0x40 
	ldrh r0, [r7,r0]
	ldr r1, off_81261F8 // =dword_201FC20 
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0x71 
	bl sub_812626C
	ldr r0, [r7,#0x74]
	sub r0, #0x5e 
	add r0, #1
	mov r1, #4
	ldr r2, off_81261F4 // =byte_2017A00 
	mov r3, #0xe
	bl sub_8126404
locret_81261F2:
	pop {r4-r7,pc}
off_81261F4: .word byte_2017A00
off_81261F8: .word dword_201FC20
	thumb_func_end sub_8126184

	thumb_local_start
sub_81261FC:
	push {r4-r7,lr}
	sub sp, sp, #4
	push {r0,r1}
	// src
	ldr r0, off_8126254 // =byte_8124950
	// halfwordCount
	mov r2, #0x54 
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r5,r7}
	ldr r4, dword_8126258 // =0xa202 
	mov r6, #0
loc_8126210:
	mov r0, #0
	str r0, [sp]
	mov r0, r5
	add r0, #1
	bl sub_8000C00
	mov r2, #8
loc_812621E:
	mov r3, r0
	lsr r3, r2
	mov r1, #0xf
	and r1, r3
	ldr r3, [sp]
	tst r3, r3
	bne loc_8126234
	tst r1, r1
	beq loc_812623E
	mov r3, #1
	str r3, [sp]
loc_8126234:
	lsl r1, r1, #1
	add r1, r1, r4
	strh r1, [r7]
	add r1, #1
	strh r1, [r7,#6]
loc_812623E:
	add r7, #2
	sub r2, #4
	bge loc_812621E
	add r7, #6
	add r5, #1
	add r6, #1
	cmp r6, #7
	blt loc_8126210
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8126254: .word byte_8124950
dword_8126258: .word 0xA202
	thumb_func_end sub_81261FC

	thumb_local_start
sub_812625C:
	push {r4-r7,lr}
	lsl r5, r3, #1
	// tileRefs
	mov r3, r2
	// cpyOff
	mov r2, #2
	mov r4, #3
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_812625C

	thumb_local_start
sub_812626C:
	push {r4-r7,lr}
	mov r6, r8
	mov r7, r9
	push {r6,r7}
	mov r8, r5
	lsr r5, r5, #4
	mov r9, r5
	mov r5, r8
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1c
	mov r8, r5
	ldr r6, off_81263CC // =0x200 
	lsl r3, r3, #0xc
	lsl r4, r4, #0xc
	orr r3, r6
	orr r4, r6
	sub sp, sp, #8
	str r3, [sp]
	str r4, [sp,#4]
	lsl r0, r0, #2
	add r5, r0, r1
	mov r3, #0x10
	add r3, r3, r2
	mov r4, #0
loc_812629C:
	ldr r6, [sp]
	ldr r0, off_81263B4 // =off_81263B8
	ldrh r1, [r5]
	tst r1, r1
	bne loc_81262B2
	mov r7, r8
	tst r7, r7
	bne loc_8126304
loc_81262AC:
	ldr r0, off_81263C0 // =off_81263C4 
	mov r1, #4
	b loc_81262EE
loc_81262B2:
	push {r0-r3}
	mov r0, r1
	bl sub_80070E6
	pop {r0-r3}
	beq loc_81262E6
	push {r0-r3}
	mov r2, r10
	ldr r2, [r2,#oToolkit_SubmenuPtr]
	mov r0, #1
	ldr r1, [r2,#0x7c]
	orr r1, r0
	str r1, [r2,#0x7c]
	mov r0, #0
	str r0, [r2,#0x58]
	str r0, [r2,#0x5c]
	str r0, [r2,#0x60]
	str r0, [r2,#0x64]
	str r0, [r2,#0x68]
	strh r0, [r2,#0x12]
	strh r0, [r2,#0x1c]
	strh r0, [r2,#0x26]
	strh r0, [r2,#0x30]
	strh r0, [r2,#0x3a]
	pop {r0-r3}
	b loc_81262AC
loc_81262E6:
	ldrb r7, [r5,#2]
	cmp r7, #1
	ble loc_81262EE
	ldr r6, [sp,#4]
loc_81262EE:
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr r0, [r0,r7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	bl sub_81263D0
	b loc_812631A
loc_8126304:
	mov r1, #0
	str r1, [r2]
	str r1, [r2,#4]
	str r1, [r2,#8]
	str r1, [r2,#0xc]
	str r1, [r3]
	str r1, [r3,#4]
	str r1, [r3,#8]
	str r1, [r3,#0xc]
	add r2, #0x10
	add r3, #0x10
loc_812631A:
	add r5, #4
	add r2, #0x10
	add r3, #0x10
	add r4, #1
	mov r0, r9
	cmp r4, r0
	blt loc_812629C
	add sp, sp, #8
	pop {r6,r7}
	mov r8, r6
	mov r9, r7
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812626C

	thumb_local_start
sub_8126334:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r5
	ldr r6, off_81263CC // =0x200 
	lsl r3, r3, #0xc
	lsl r4, r4, #0xc
	orr r3, r6
	orr r4, r6
	sub sp, sp, #8
	str r3, [sp]
	str r4, [sp,#4]
	lsl r0, r0, #2
	add r5, r0, r1
	mov r3, #0x10
	add r3, r3, r2
	mov r4, #0
loc_8126356:
	ldr r6, [sp]
	ldr r0, off_81263B4 // =off_81263B8
	ldrh r1, [r5]
	tst r1, r1
	bne loc_812636C
	mov r7, r8
	tst r7, r7
	bne loc_812638A
	ldr r0, off_81263C0 // =off_81263C4 
	mov r1, #4
	b loc_8126374
loc_812636C:
	ldrb r7, [r5,#2]
	cmp r7, #1
	ble loc_8126374
	ldr r6, [sp,#4]
loc_8126374:
	lsr r7, r1, #8
	lsl r7, r7, #2
	ldr r0, [r0,r7]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	bl sub_81263D0
	b loc_81263A0
loc_812638A:
	mov r1, #0
	str r1, [r2]
	str r1, [r2,#4]
	str r1, [r2,#8]
	str r1, [r2,#0xc]
	str r1, [r3]
	str r1, [r3,#4]
	str r1, [r3,#8]
	str r1, [r3,#0xc]
	add r2, #0x10
	add r3, #0x10
loc_81263A0:
	add r5, #4
	add r2, #0x10
	add r3, #0x10
	add r4, #1
	cmp r4, #5
	blt loc_8126356
	add sp, sp, #8
	pop {r7}
	mov r8, r7
	pop {r4-r7,pc}
off_81263B4: .word off_81263B8
off_81263B8: .word dword_86EA94C
	.word TextScriptEnemyNames86EB354
off_81263C0: .word off_81263C4
off_81263C4: .word unk_201CC20
	.word unk_201CC20
off_81263CC: .word 0x200
	thumb_func_end sub_8126334

	thumb_local_start
sub_81263D0:
	push {r4-r7,lr}
	mov r7, #0
loc_81263D4:
	ldrb r1, [r0]
	cmp r1, #0xe5
	bge loc_81263F0
	lsl r1, r1, #1
	mov r4, r6
	add r4, r4, r1
	strh r4, [r2]
	add r4, #1
	strh r4, [r3]
	add r2, #2
	add r3, #2
	add r0, #1
	add r7, #1
	b loc_81263D4
loc_81263F0:
	cmp r7, #8
	bge locret_8126402
	mov r4, #0
	strh r4, [r2]
	strh r4, [r3]
	add r2, #2
	add r3, #2
	add r7, #1
	b loc_81263F0
locret_8126402:
	pop {r4-r7,pc}
	thumb_func_end sub_81263D0

	thumb_local_start
sub_8126404:
	push {r4-r7,lr}
	mov r4, #0x7c 
	ldr r6, [r7,r4]
	mov r5, #1
	tst r6, r5
	beq loc_8126420
	mov r6, r3
	mov r3, #0
	mov r2, #2
	mov r4, #8
	mov r5, r6
	bl sub_80018D0
	b locret_812642E
loc_8126420:
	mov r6, r3
	// tileRefs
	mov r3, r2
	// cpyOff
	mov r2, #2
	mov r4, #8
	mov r5, r6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_812642E:
	pop {r4-r7,pc}
	thumb_func_end sub_8126404

	thumb_local_start
sub_8126430:
	push {r4-r7,lr}
	push {r0-r2}
	mov r0, r3
	mov r1, r2
	mov r2, #0x38 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r0-r2}
	lsl r0, r0, #2
	add r5, r0, r1
	mov r7, #0
	mov r6, r4
loc_8126448:
	// idx
	ldrh r0, [r5]
	tst r0, r0
	bne loc_8126456
	mov r4, #0
	str r4, [r2]
	str r4, [r2,#4]
	b loc_8126476
loc_8126456:
	ldrb r1, [r5,#2]
	tst r1, r1
	beq loc_8126464
	mov r4, #0
	str r4, [r2]
	str r4, [r2,#4]
	b loc_8126476
loc_8126464:
	push {r2}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldr r0, [r0,#0x20]
	mov r1, r6
	mov r2, #0x80
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r2}
loc_8126476:
	add r5, #4
	add r6, #0x80
	add r2, #8
	add r7, #1
	cmp r7, #7
	blt loc_8126448
	pop {r4-r7,pc}
	thumb_func_end sub_8126430

	thumb_local_start
sub_8126484:
	push {r4-r7,lr}
	// tileRefs
	mov r3, r2
	// cpyOff
	mov r2, #2
	mov r4, #2
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_8126484

	thumb_local_start
sub_8126494:
	push {r4-r7,lr}
	lsl r0, r0, #2
	add r5, r0, r1
	ldr r6, dword_81264E0 // =0x8340 
	mov r7, #0
loc_812649E:
	// idx
	ldrh r0, [r5]
	tst r0, r0
	bne loc_81264B0
	mov r4, #0
	str r4, [r2]
	str r4, [r2,#4]
	str r4, [r2,#8]
	strh r4, [r2,#0xa]
	b loc_81264D2
loc_81264B0:
	push {r2}
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	pop {r2}
	ldrb r0, [r0,#5]
	lsl r4, r0, #1
	add r0, r0, r4
	mov r4, #0
	strh r4, [r2]
	strh r4, [r2,#2]
	strh r4, [r2,#4]
	add r4, r6, r0
	strh r4, [r2,#6]
	add r4, #1
	strh r4, [r2,#8]
	add r4, #1
	strh r4, [r2,#0xa]
loc_81264D2:
	add r5, #4
	add r2, #0xc
	add r7, #1
	cmp r7, #7
	blt loc_812649E
	pop {r4-r7,pc}
	.byte 0, 0
dword_81264E0: .word 0x8340
	thumb_func_end sub_8126494

	thumb_local_start
sub_81264E4:
	push {r4-r7,lr}
	// tileRefs
	mov r3, r2
	// cpyOff
	mov r2, #2
	mov r4, #3
	mov r5, #0xe
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_81264E4

	thumb_local_start
sub_81264F4:
	push {r4-r7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x14
	mov r3, #0xc
	ldr r4, off_812656C // =byte_8124A84
	ldr r6, dword_81265D4 // =0x40000000 
	ldr r7, off_81265D8 // =dword_8124A94
	bl sub_8126570
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_81264F4

	thumb_local_start
sub_812650C:
	push {r4-r7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x1e
	mov r3, #0xc
	ldr r4, off_812656C // =byte_8124A84
	ldr r6, dword_81265D4 // =0x40000000 
	ldr r7, off_81265D8 // =dword_8124A94
	bl sub_8126570
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812650C

	thumb_local_start
sub_8126524:
	push {r4-r7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x28 
	mov r3, #0xc
	ldr r4, off_812656C // =byte_8124A84
	ldr r6, dword_81265D4 // =0x40000000 
	ldr r7, off_81265D8 // =dword_8124A94
	bl sub_8126570
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8126524

	thumb_local_start
sub_812653C:
	push {r4-r7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x32 
	mov r3, #0xc
	ldr r4, off_812656C // =byte_8124A84
	ldr r6, dword_81265D4 // =0x40000000 
	ldr r7, off_81265D8 // =dword_8124A94
	bl sub_8126570
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812653C

	thumb_local_start
sub_8126554:
	push {r4-r7,lr}
	mov r0, #0x5a 
	mov r1, #0x20 
	mov r2, #0x3c 
	mov r3, #0xc
	ldr r4, off_812656C // =byte_8124A84
	ldr r6, dword_81265D4 // =0x40000000 
	ldr r7, off_81265D8 // =dword_8124A94
	bl sub_8126570
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812656C: .word byte_8124A84
	thumb_func_end sub_8126554

	thumb_local_start
sub_8126570:
	push {r4,lr}
	sub sp, sp, #0x1c
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r6, [sp,#0x10]
	lsl r0, r0, #0x10
	ldr r1, [sp]
	ldr r3, [sp,#4]
	tst r3, r3
	bne loc_812658C
	mov r2, #0
	b loc_812658E
loc_812658C:
	ldrh r2, [r5,r3]
loc_812658E:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_81265D0 // =0x2 
	ldr r2, [sp,#8]
	ldrb r2, [r5,r2]
	str r2, [sp,#0x14]
	mov r3, #0xf
	and r2, r3
	ldr r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	bl sub_811FAF4
	ldr r1, [sp,#0x14]
	lsr r1, r1, #4
	sub r1, #1
	bne loc_81265BC
	mov r1, r7
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_81265BC:
	ldr r2, [sp,#8]
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r3
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.byte 0, 0
dword_81265D0: .word 0x2
dword_81265D4: .word 0x40000000
off_81265D8: .word dword_8124A94
	thumb_func_end sub_8126570

	thumb_local_start
sub_81265DC:
	push {r4-r7,lr}
	mov r7, #1
	mov r4, #4
loc_81265E2:
	ldr r0, off_8126618 // =off_812661C 
	lsl r1, r7, #2
	ldr r0, [r0,r1]
	mov r1, #0x74 
	ldr r1, [r5,r1]
	ldr r2, off_8126624 // =0x100 
	sub r1, r1, r2
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r2, dword_8126628 // =0xffffffd8 
	cmp r0, r2
	bge loc_8126606
	ldr r1, off_812662C // =0x120 
	add r0, r0, r1
	cmp r0, r2
	bge loc_8126606
	ldr r2, off_812662C // =0x120 
	add r0, r0, r2
loc_8126606:
	mov r1, #0x1b
	mov r2, r4
	bl sub_8116FDC
	add r4, #3
	sub r7, #1
	bge loc_81265E2
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8126618: .word off_812661C
off_812661C: .word 0x458
	.word 0x3C8
off_8126624: .word 0x100
dword_8126628: .word 0xFFFFFFD8
off_812662C: .word 0x120
	thumb_func_end sub_81265DC

	thumb_local_start
sub_8126630:
	push {r4-r7,lr}
	ldrb r4, [r5,#0xd]
	cmp r4, #4
	beq loc_8126686
	mov r0, #0
	bl getStructFrom2008450
	beq locret_81266BE
	ldrb r0, [r1,#1]
	cmp r0, #0x16
	beq loc_8126652
	mov r0, #3
	bl sub_8046696
	// a1
	ldr r0, off_81266DC // =byte_8124AE0
	bl sub_80465A0 // (void *a1) -> void
loc_8126652:
	lsl r2, r4, #2
	ldr r1, off_81266C0 // =off_81266C4 
	ldr r7, [r1,r2]
	mov r1, #0xa
	mul r1, r4
	mov r4, r5
	add r4, r4, r1
	ldrh r0, [r4,#0x14]
	ldrh r1, [r4,#0x18]
	add r0, r0, r1
	lsl r0, r0, #2
	ldrh r0, [r7,r0]
	mov r1, #0xff
	mov r2, #0
	mov r3, #0
	bl sub_811980C
	mov r0, #0x2f 
	mov r1, #0x58 
	mov r2, #0
	bl sub_8119854
	mov r0, #0
	bl sub_8126818
	b locret_81266BE
loc_8126686:
	mov r0, #0
	bl getStructFrom2008450
	beq locret_81266BE
	ldrb r0, [r1,#1]
	cmp r0, #0x1a
	beq loc_812669A
	// a1
	ldr r0, off_81266D8 // =byte_8124B08
	bl sub_80465A0 // (void *a1) -> void
loc_812669A:
	ldr r2, off_81266D4 // =dword_201FC20 
	ldrh r0, [r5,#0x3c]
	mov r1, #0x40 
	ldrh r1, [r5,r1]
	add r0, r0, r1
	lsl r1, r0, #2
	ldrh r0, [r2,r1]
	add r1, #3
	ldrb r1, [r2,r1]
	mov r2, #0
	mov r3, #0
	bl sub_811A1F4
	mov r0, #0x2f 
	mov r1, #0x58 
	mov r2, #0
	bl sub_811A220
locret_81266BE:
	pop {r4-r7,pc}
off_81266C0: .word off_81266C4
off_81266C4: .word unk_201DC20
	.word dword_201E420
	.word dword_201EC20
	.word dword_201F420
off_81266D4: .word dword_201FC20
off_81266D8: .word byte_8124B08
off_81266DC: .word byte_8124AE0
	thumb_func_end sub_8126630

	thumb_local_start
sub_81266E0:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0x40 
	ldrh r0, [r5,r0]
	ldrh r1, [r5,#0x3c]
	add r0, r0, r1
	lsl r2, r0, #2
	ldr r4, off_8126740 // =dword_201FC20 
	ldrb r1, [r4,r2]
	add r2, #3
	str r2, [sp]
	sub r0, r2, #1
	ldrb r0, [r4,r0]
	tst r0, r0
	bne loc_8126736
	ldrb r7, [r4,r2]
	str r7, [sp,#4]
	ldr r4, off_8126744 // =byte_8124AA4
	mov r3, #0
loc_8126706:
	ldrh r2, [r4,r3]
	ldr r6, off_8126748 // =0x100 
	sub r2, r2, r6
	cmp r1, r2
	beq loc_8126716
	add r3, #2
	cmp r3, #0x3a 
	blt loc_8126706
loc_8126716:
	add r7, #1
	ldr r4, off_812673C // =byte_8124B1C
	lsr r3, r3, #1
	ldrb r3, [r4,r3]
	cmp r7, r3
	blt loc_8126724
	mov r7, #0
loc_8126724:
	ldr r4, off_8126740 // =dword_201FC20 
	ldr r2, [sp]
	strb r7, [r4,r2]
	ldr r0, [sp,#4]
	cmp r0, r7
	beq loc_8126736
	mov r0, #0x80
	bl sound_play // () -> void
loc_8126736:
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812673C: .word byte_8124B1C
off_8126740: .word dword_201FC20
off_8126744: .word byte_8124AA4
off_8126748: .word 0x100
	thumb_func_end sub_81266E0

	thumb_local_start
sub_812674C:
	push {r4-r7,lr}
	ldrb r0, [r5,#0xd]
	tst r0, r0
	beq loc_8126772
	mov r0, #0x58 
	mov r1, #0x14
	mov r2, #0
	mov r3, #0xf
	ldr r4, off_8126788 // =byte_8124A8C
	ldr r6, dword_8126794 // =0x10000000 
	ldr r7, off_8126798 // =dword_8124A94
	bl sub_8126570
	ldrb r0, [r5,#0xe]
	ldrb r1, [r5,#0xd]
	ldr r2, off_812679C // =byte_81267A0
	ldrb r1, [r2,r1]
	cmp r1, r0
	bge locret_8126784
loc_8126772:
	mov r0, #0xe2
	mov r1, #0x14
	mov r2, #0
	mov r3, #0x10
	ldr r4, off_8126788 // =byte_8124A8C
	ldr r6, dword_8126790 // =0x0 
	ldr r7, off_8126798 // =dword_8124A94
	bl sub_8126570
locret_8126784:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8126788: .word byte_8124A8C
	.word 0x0
dword_8126790: .word 0x0
dword_8126794: .word 0x10000000
off_8126798: .word dword_8124A94
off_812679C: .word byte_81267A0
byte_81267A0: .byte 0x0, 0x1, 0x2, 0x3, 0x4, 0x0, 0x0, 0x0
	thumb_func_end sub_812674C

	thumb_local_start
sub_81267A8:
	push {r4-r7,lr}
	ldrb r0, [r5,#0xd]
	mov r2, r0
	mov r1, #0xa
	mul r0, r1
	add r7, r5, r0
	tst r2, r2
	beq loc_81267C6
	lsl r2, r2, #2
	mov r1, #0x58 
	add r2, r2, r1
	ldr r0, [r5,r2]
	cmp r0, #7
	bge loc_81267CC
	b locret_81267E4
loc_81267C6:
	ldrh r0, [r7,#0x12]
	cmp r0, #7
	blt locret_81267E4
loc_81267CC:
	mov r0, #0xe2
	lsl r0, r0, #0x10
	mov r1, #0x1a
	orr r0, r1
	ldr r1, dword_81267E8 // =0x0 
	ldrh r2, [r7,#0x12]
	ldrh r3, [r7,#0x18]
	mov r4, #7
	ldr r6, dword_81267EC // =0xc24c 
	mov r7, #0x6a 
	bl sub_811FA98
locret_81267E4:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81267E8: .word 0x0
dword_81267EC: .word 0xC24C
	thumb_func_end sub_81267A8

	thumb_local_start
sub_81267F0:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x3a]
	tst r0, r0
	beq locret_812680A
	mov r0, #0x43 
	mov r1, #0xe
	mov r2, #0
	mov r3, #0x11
	ldr r4, off_812680C // =byte_8124A98
	ldr r6, dword_8126810 // =0x40000000 
	ldr r7, off_8126814 // =byte_8124A9E
	bl sub_8126570
locret_812680A:
	pop {r4-r7,pc}
off_812680C: .word byte_8124A98
dword_8126810: .word 0x40000000
off_8126814: .word byte_8124A9E
	thumb_func_end sub_81267F0

	thumb_local_start
sub_8126818:
	push {r4-r7,lr}
	mov r4, r0
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x3f 
	strb r1, [r0,#8]
	mov r1, #0x22 
	strb r1, [r0,#9]
	mov r1, #0x32 
	strb r1, [r0,#0xa]
	mov r1, #0x58 
	strb r1, [r0,#1]
	mov r1, #0
	strb r1, [r0,#5]
	mov r1, #0xf0
	strb r1, [r0]
	mov r1, #0x9a
	strb r1, [r0,#4]
	tst r4, r4
	beq loc_812686A
	ldrh r2, [r5,#0x3a]
	tst r2, r2
	bne loc_8126858
	mov r1, #0xe
	strb r1, [r0,#3]
	mov r1, #0x11
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#2]
	mov r1, #0x12
	strb r1, [r0,#6]
	b locret_812687A
loc_8126858:
	mov r1, #0xe
	strb r1, [r0,#3]
	mov r1, #0x11
	strb r1, [r0,#7]
	mov r1, #0x47 
	strb r1, [r0,#2]
	mov r1, #0x12
	strb r1, [r0,#6]
	b locret_812687A
loc_812686A:
	mov r1, #0xe
	strb r1, [r0,#3]
	mov r1, #0x10
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#2]
	mov r1, #0x12
	strb r1, [r0,#6]
locret_812687A:
	pop {r4-r7,pc}
	thumb_func_end sub_8126818

	thumb_local_start
sub_812687C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, [r7,#0x1c]
	mov r1, #0x3f 
	strb r1, [r0,#8]
	mov r1, #0x32 
	strb r1, [r0,#9]
	mov r1, #0x32 
	strb r1, [r0,#0xa]
	ldrh r0, [r5,#0x3a]
	tst r0, r0
	bne loc_81268B6
	mov r1, #0
	strb r1, [r0,#1]
	mov r1, #0
	strb r1, [r0,#5]
	mov r1, #0xf0
	strb r1, [r0]
	mov r1, #0x9a
	strb r1, [r0,#4]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0
	strb r1, [r0,#7]
	mov r1, #0
	strb r1, [r0,#2]
	mov r1, #0x9a
	strb r1, [r0,#6]
	b locret_81268D6
loc_81268B6:
	mov r1, #0xa
	strb r1, [r0,#1]
	mov r1, #0
	strb r1, [r0,#5]
	mov r1, #0xf0
	strb r1, [r0]
	mov r1, #0x9a
	strb r1, [r0,#4]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0
	strb r1, [r0,#7]
	mov r1, #0xa
	strb r1, [r0,#2]
	mov r1, #0x9a
	strb r1, [r0,#6]
locret_81268D6:
	pop {r4-r7,pc}
	thumb_func_end sub_812687C

	thumb_local_start
sub_81268D8:
	push {lr}
	ldrh r0, [r5,#0x32]
	ldrh r1, [r5,#0x36]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_81268F4 // =dword_201F420 
	// idx
	ldrh r0, [r1,r0]
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#7]
	mov r1, #1
	bl sub_811983C
	pop {pc}
off_81268F4: .word dword_201F420
dword_81268F8: .word 0xFF060606
byte_81268FC: .byte 0x50, 0xC2, 0x4F, 0xC2, 0x4E, 0xC2, 0xFF, 0xFF
dword_8126904: .word 0xFFFF8220
dword_8126908: .word 0xFFFF8228
byte_812690C: .byte 0x30, 0xC2, 0x34, 0xC2, 0xFF, 0xFF
byte_8126912: .byte 0x6, 0x6, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x12, 0x0, 0x0, 0x4, 0x22, 0x0, 0x0
	.byte 0x8, 0x32, 0x0, 0x0, 0xC, 0x42, 0x0, 0x0, 0x10, 0x52, 0x0, 0x0, 0x14, 0x62
	.byte 0x0, 0x0
byte_8126930: .byte 0x1, 0x72, 0x3, 0x72, 0x5, 0x72, 0x7, 0x72, 0x9, 0x72, 0xB, 0x72
	.byte 0xD, 0x72, 0xF, 0x72, 0x11, 0x72, 0x13, 0x72, 0x15, 0x72, 0x2, 0x72
	.byte 0x4, 0x72, 0x6, 0x72, 0x8, 0x72, 0xA, 0x72, 0xC, 0x72, 0xE, 0x72
	.byte 0x10, 0x72, 0x12, 0x72, 0x14, 0x72, 0x16, 0x72, 0x20, 0x72, 0x22, 0x72
	.byte 0x24, 0x72, 0x26, 0x72, 0x28, 0x72, 0x2A, 0x72, 0x2C, 0x72, 0x2E, 0x72
	.byte 0x30, 0x72, 0x32, 0x72, 0x34, 0x72, 0x21, 0x72, 0x23, 0x72, 0x25, 0x72
	.byte 0x27, 0x72, 0x29, 0x72, 0x2B, 0x72, 0x2D, 0x72, 0x2F, 0x72, 0x31, 0x72
	.byte 0x33, 0x72, 0x35, 0x72, 0x40, 0x72, 0x42, 0x72, 0x44, 0x72, 0x46, 0x72
	.byte 0x48, 0x72, 0x4A, 0x72, 0x4C, 0x72, 0x4E, 0x72, 0x50, 0x72, 0x52, 0x72
	.byte 0x54, 0x72, 0x41, 0x72, 0x43, 0x72, 0x45, 0x72, 0x47, 0x72, 0x49, 0x72
	.byte 0x4B, 0x72, 0x4D, 0x72, 0x4F, 0x72, 0x51, 0x72, 0x53, 0x72, 0x55, 0x72
	.byte 0x60, 0x72, 0x62, 0x72, 0x64, 0x72, 0x66, 0x72, 0x68, 0x72, 0x6A, 0x72
	.byte 0x6C, 0x72, 0x6E, 0x72, 0x70, 0x72, 0x72, 0x72, 0x74, 0x72, 0x61, 0x72
	.byte 0x63, 0x72, 0x65, 0x72, 0x67, 0x72, 0x69, 0x72, 0x6B, 0x72, 0x6D, 0x72
	.byte 0x6F, 0x72, 0x71, 0x72, 0x73, 0x72, 0x75, 0x72
byte_81269E0: .byte 0x80, 0x72, 0x82, 0x72, 0x84, 0x72, 0x86, 0x72, 0x88
	.byte 0x72, 0x8A, 0x72, 0x8C, 0x72, 0x8E, 0x72, 0x90, 0x72
	.byte 0x92, 0x72, 0x94, 0x72, 0x81, 0x72, 0x83, 0x72, 0x85
	.byte 0x72, 0x87, 0x72, 0x89, 0x72, 0x8B, 0x72, 0x8D, 0x72
	.byte 0x8F, 0x72, 0x91, 0x72, 0x93, 0x72, 0x95, 0x72, 0xA0
	.byte 0x72, 0xA2, 0x72, 0xA4, 0x72, 0xA6, 0x72, 0xA8, 0x72
	.byte 0xAA, 0x72, 0xAC, 0x72, 0xAE, 0x72, 0xB0, 0x72, 0xB2
	.byte 0x72, 0xB4, 0x72, 0xA1, 0x72, 0xA3, 0x72, 0xA5, 0x72
	.byte 0xA7, 0x72, 0xA9, 0x72, 0xAB, 0x72, 0xAD, 0x72, 0xAF
	.byte 0x72, 0xB1, 0x72, 0xB3, 0x72, 0xB5, 0x72, 0xC0, 0x72
	.byte 0xC2, 0x72, 0xC4, 0x72, 0xC6, 0x72, 0xC8, 0x72, 0xCA
	.byte 0x72, 0xCC, 0x72, 0xCE, 0x72, 0xD0, 0x72, 0xD2, 0x72
	.byte 0xD4, 0x72, 0xC1, 0x72, 0xC3, 0x72, 0xC5, 0x72, 0xC7
	.byte 0x72, 0xC9, 0x72, 0xCB, 0x72, 0xCD, 0x72, 0xCF, 0x72
	.byte 0xD1, 0x72, 0xD3, 0x72, 0xD5, 0x72, 0xE0, 0x72, 0xE2
	.byte 0x72, 0xE4, 0x72, 0xE6, 0x72, 0xE8, 0x72, 0xEA, 0x72
	.byte 0xEC, 0x72, 0xEE, 0x72, 0xF0, 0x72, 0xF2, 0x72, 0xF4
	.byte 0x72, 0xE1, 0x72, 0xE3, 0x72, 0xE5, 0x72, 0xE7, 0x72
	.byte 0xE9, 0x72, 0xEB, 0x72, 0xED, 0x72, 0xEF, 0x72, 0xF1
	.byte 0x72, 0xF3, 0x72, 0xF5, 0x72
byte_8126A90: .byte 0x0, 0x73, 0x2, 0x73, 0x4, 0x73, 0x6, 0x73, 0x8, 0x73, 0xA, 0x73
	.byte 0xC, 0x73, 0xE, 0x73, 0x1, 0x73, 0x3, 0x73, 0x5, 0x73, 0x7, 0x73
	.byte 0x9, 0x73, 0xB, 0x73, 0xD, 0x73, 0xF, 0x73, 0x10, 0x73, 0x12, 0x73
	.byte 0x14, 0x73, 0x16, 0x73, 0x18, 0x73, 0x1A, 0x73, 0x1C, 0x73, 0x1E, 0x73
	.byte 0x11, 0x73, 0x13, 0x73, 0x15, 0x73, 0x17, 0x73, 0x19, 0x73, 0x1B, 0x73
	.byte 0x1D, 0x73, 0x1F, 0x73, 0x20, 0x73, 0x22, 0x73, 0x24, 0x73, 0x26, 0x73
	.byte 0x28, 0x73, 0x2A, 0x73, 0x2C, 0x73, 0x2E, 0x73, 0x21, 0x73, 0x23, 0x73
	.byte 0x25, 0x73, 0x27, 0x73, 0x29, 0x73, 0x2B, 0x73, 0x2D, 0x73, 0x2F, 0x73
	.byte 0x30, 0x73, 0x32, 0x73, 0x34, 0x73, 0x36, 0x73, 0x38, 0x73, 0x3A, 0x73
	.byte 0x3C, 0x73, 0x3E, 0x73, 0x31, 0x73, 0x33, 0x73, 0x35, 0x73, 0x37, 0x73
	.byte 0x39, 0x73, 0x3B, 0x73, 0x3D, 0x73, 0x3F, 0x73
byte_8126B10: .byte 0x60, 0x73, 0x62, 0x73, 0x64, 0x73, 0x61, 0x73, 0x63
	.byte 0x73, 0x65, 0x73
byte_8126B1C: .byte 0x18, 0x0, 0x0, 0x0, 0x25, 0x1, 0x0, 0x0, 0x2A, 0x5, 0x0, 0x0, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0x0, 0xB5, 0xC, 0x20, 0x28, 0x70, 0x0, 0x20, 0x68, 0x70
	.byte 0xA8, 0x70, 0xE8, 0x70, 0x0, 0xBD, 0x0, 0xB5, 0x17, 0x20, 0x13, 0x21, 0x8
	.byte 0xF7, 0xE5, 0xFA, 0xFF, 0xF7, 0xF1, 0xFF, 0x0, 0xBD
	thumb_func_end sub_81268D8

	thumb_func_start HandleMegaManStatusMenu8126B4C
HandleMegaManStatusMenu8126B4C:
	push {lr}
	ldr r0, off_8126B5C // =off_8126B60 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8126B5C: .word off_8126B60
off_8126B60: .word sub_8126B6C+1
	.word sub_8126CC0+1
	.word sub_8126FF0+1
	thumb_func_end HandleMegaManStatusMenu8126B4C

	thumb_local_start
sub_8126B6C:
	push {r4-r7,lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x1a
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_8126CA8 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	bl sub_8046664 // () -> void
	bl sub_81270D0
	bl sub_8127800
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#0xd]
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x11]
	strh r0, [r5,#0x1e]
	strh r0, [r5,#0x24]
	strh r0, [r5,#0x20]
	strh r0, [r5,#0x2e]
	strh r0, [r5,#0x2a]
	strb r0, [r5,#0x1a]
	strb r0, [r5,#0x1b]
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1d]
	strh r0, [r5,#0x3a]
	mov r0, #0xff
	strh r0, [r5,#0x26]
	ldr r0, dword_8126CAC // =0x1da 
	strh r0, [r5,#0x32]
	mov r0, #1
	strh r0, [r5,#0x38]
	mov r0, #3
	strh r0, [r5,#0x28]
	mov r0, #0
	ldr r1, off_8126CBC // =dword_81268F8
	bl sub_8120CC8
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,#0x13]
	strb r0, [r5,#0x12]
	str r0, [r5,#0x48]
	bl getPETNaviSelect // () -> u8
	mov r4, r0
	mov r1, #0x40 
	bl sub_80137FE
	strh r0, [r5,#0x34]
	mov r0, r4
	mov r1, #0x42 
	bl sub_80137FE
	strh r0, [r5,#0x36]
	bl getPETNaviSelect // () -> u8
	mov r1, #9
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb r0, [r5,#0x14]
	bl getPETNaviSelect // () -> u8
	mov r1, #0xb
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb r0, [r5,#0x15]
	bl getPETNaviSelect // () -> u8
	mov r1, #0xc
	bl sub_80137B6 // (int a1, int a2) -> u8
	strb r0, [r5,#0x16]
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8126C38
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8126C3E
loc_8126C38:
	mov r4, #2
	strb r4, [r5,#0xf]
	b loc_8126C42
loc_8126C3E:
	mov r4, #2
	strb r4, [r5,#0xf]
loc_8126C42:
	mov r0, #0
	bl sub_8120D10
	beq loc_8126C50
	mov r0, #0x14
	strb r0, [r5,#2]
	b loc_8126C58
loc_8126C50:
	ldrb r0, [r5,#0x10]
	cmp r0, #2
	beq loc_8126C5E
	mov r1, #0
loc_8126C58:
	ldr r0, off_8126CB4 // =eTextScript201BF20
	bl chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
loc_8126C5E:
	mov r0, #0x40 
	bl chatbox_set_eFlags2009F38
	bl sub_812741C
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
	str r0, [r5,#0x40]
	add r1, #0x50 
	str r1, [r5,#0x44]
	// a1
	ldr r0, off_8126CB0 // =byte_8126B1C
	bl sub_80465A0 // (void *a1) -> void
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4-r7,pc}
dword_8126CA8: .word 0x1F40
dword_8126CAC: .word 0x1DA
off_8126CB0: .word byte_8126B1C
off_8126CB4: .word eTextScript201BF20
	.word 0xFFFFFFC0
off_8126CBC: .word dword_81268F8
	thumb_func_end sub_8126B6C

	thumb_local_start
sub_8126CC0:
	push {r4-r7,lr}
	ldrb r0, [r5,#0xd]
	strb r0, [r5,#0xe]
	ldr r0, off_8126DBC // =off_8126DC0 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_81278D8
	ldr r1, [r5,#0x44]
	mov r2, #0
	bl sub_8119BE8
	bl sub_81278D8
	ldr r1, [r5,#0x44]
	mov r2, #5
	bl sub_811BDFC
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	lsl r0, r0, #3
	ldr r1, [r5,#0x40]
	add r0, r0, r1
	ldr r1, [r5,#0x44]
	mov r2, #1
	bl sub_811B46C
	mov r7, #0
	bl getPETNaviSelect // () -> u8
	mov r1, #0xe
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0xff
	bne loc_8126D10
	mov r7, #1
loc_8126D10:
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8126D26
	mov r4, #1
	bl sub_8123360
	tst r0, r0
	bne loc_8126D24
	mov r4, #0
loc_8126D24:
	b loc_8126D32
loc_8126D26:
	mov r4, #1
	bl sub_8123360
	tst r0, r0
	bne loc_8126D32
	mov r4, #0
loc_8126D32:
	mov r0, r4
	mov r1, #0
	bl sub_8119C74
	mov r0, r4
	mov r1, #5
	bl sub_811BED4
	bl sub_8123360
	tst r0, r0
	bne loc_8126D4C
	mov r7, #0
loc_8126D4C:
	mov r0, r7
	mov r1, #1
	bl sub_811B48C
	b loc_8126D56
loc_8126D56:
	bl sub_80465F8 // () -> void
	bl sub_8123360
	tst r0, r0
	bne loc_8126D76
	push {r4,r6}
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	mov r1, #1
	add r4, r0, r1
	ldr r0, off_8126DE4 // =unk_201D720 
	mov r1, #0
	mov r2, #0
	ldr r3, dword_8126DE8 // =0x81e0 
	b loc_8126D92
loc_8126D76:
	push {r4,r6}
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	mov r1, #1
	add r4, r0, r1
	ldr r0, off_8126DE4 // =unk_201D720 
	ldrh r1, [r5,#0x34]
	ldrh r2, [r5,#0x36]
	lsr r3, r2, #2
	cmp r3, r1
	blt loc_8126D90
	ldr r3, byte_8126DEC // =0xe0
	b loc_8126D92
loc_8126D90:
	ldr r3, dword_8126DE8 // =0x81e0 
loc_8126D92:
	mov r6, #2
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
	pop {r4-r7,pc}
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
byte_8126DEC: .byte 0xE0, 0x91, 0x0, 0x0, 0x20, 0x2, 0x0, 0x0, 0x50, 0x0, 0x0, 0x0
	thumb_func_end sub_8126CC0

	thumb_local_start
sub_8126DF8:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8126E0A
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #4
	strb r0, [r5,#2]
loc_8126E0A:
	bl sub_81272C4
	pop {pc}
	thumb_func_end sub_8126DF8

	thumb_local_start
sub_8126E10:
	push {r4,lr}
	mov r0, #0xa
	bl isJoystickIRQActive
	beq loc_8126E28
	mov r0, #8
	bl sub_811FB64
	mov r0, #0x40 
	bl chatbox_set_eFlags2009F38
	b loc_8126E68
loc_8126E28:
	ldrb r0, [r5,#0x10]
	cmp r0, #2
	beq loc_8126E36
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_8126E68
loc_8126E36:
	bl sub_8127264
	bne loc_8126E80
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	ldrb r1, [r5,#0xf]
	mov r2, #2
	ldrb r3, [r5,#0x10]
	bl sub_811FA0C
	ldrb r1, [r5,#0x10]
	strb r1, [r5,#0x11]
	cmp r0, r1
	beq loc_8126E68
	strb r0, [r5,#0x10]
	mov r0, #0x7a 
	bl sound_play // () -> void
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r0, #0x40 
	bl chatbox_set_eFlags2009F38
	b loc_8126E80
loc_8126E68:
	ldrb r3, [r5,#0x10]
	cmp r3, #1
	bne loc_8126E80
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x44 
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	b loc_8126E80
loc_8126E80:
	bl sub_81272C4
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8126E10

	thumb_local_start
sub_8126E88:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8126E9C
	mov r1, #1
	ldr r0, [r5,#0xc]
	orr r0, r1
	str r0, [r5,#0xc]
	mov r1, #8
	strb r1, [r5,#1]
loc_8126E9C:
	bl sub_81272C4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8126E88

	thumb_local_start
sub_8126EA4:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8126EB8
	mov r1, #2
	ldr r0, [r5,#0xc]
	orr r0, r1
	str r0, [r5,#0xc]
	mov r1, #8
	strb r1, [r5,#1]
loc_8126EB8:
	bl sub_81272C4
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8126EA4

	thumb_local_start
sub_8126EC0:
	push {r4-r7,lr}
	mov r0, #0xd
	ldrsb r1, [r5,r0]
	ldrb r2, [r5,#0x10]
	ldrb r3, [r5,#0x11]
	sub r3, r3, r2
	blt loc_8126ED2
	add r1, #2
	b loc_8126ED4
loc_8126ED2:
	sub r1, #2
loc_8126ED4:
	strb r1, [r5,r0]
	lsl r2, r2, #2
	ldr r0, off_8126F30 // =byte_8126F34
	ldr r0, [r0,r2]
	cmp r0, r1
	bne loc_8126F0E
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	ldrb r0, [r5,#0x10]
	cmp r0, #2
	bne loc_8126EF2
	bl chatbox_8040818
	b loc_8126F0A
loc_8126EF2:
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	bne loc_8126F0A
	mov r0, #0
	bl sub_8120D10
	bne loc_8126F04
	mov r1, #0
loc_8126F04:
	mov r0, r1
	bl sub_81278C8
loc_8126F0A:
	mov r0, #4
	strb r0, [r5,#2]
loc_8126F0E:
	mov r0, #0
	mov r1, #2
	mov r2, #2
	mov r3, #0
	mov r4, #0x20 
	mov r5, #0xd
	bl sub_80018D0
	mov r0, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r4, #0x20 
	mov r5, #0xa
	bl sub_80018D0
	pop {r4-r7,pc}
off_8126F30: .word byte_8126F34
byte_8126F34: .byte 0x0, 0x0, 0x0, 0x0, 0xE0, 0xFF, 0xFF, 0xFF, 0xC0, 0xFF, 0xFF
	.byte 0xFF
	thumb_func_end sub_8126EC0

	thumb_local_start
sub_8126F40:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8126F88
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_8126F88
	ldrh r0, [r5,#0x3a]
	ldr r1, dword_8126F90 // =0x1010 
	cmp r0, r1
	bne loc_8126F70
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x18
	strb r0, [r5,#2]
	bl chatbox_8040818
	b locret_8126F88
loc_8126F70:
	mov r0, #4
	strb r0, [r5,#2]
	ldrb r0, [r5,#0x10]
	cmp r0, #2
	bne loc_8126F80
	bl chatbox_8040818
	b locret_8126F88
loc_8126F80:
	mov r1, #0
	ldr r0, off_8126F8C // =eTextScript201BF20
	bl chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
locret_8126F88:
	pop {pc}
	.balign 4, 0x00
off_8126F8C: .word eTextScript201BF20
dword_8126F90: .word 0x1010
	thumb_func_end sub_8126F40

	thumb_local_start
sub_8126F94:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8126FA4
	mov r0, #0
	strb r0, [r5,#1]
	strb r0, [r5,#2]
	strb r0, [r5,#3]
locret_8126FA4:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8126F94

	thumb_local_start
sub_8126FA8:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8126FEC
	mov r0, #0
	strb r0, [r5,#1]
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	pop {pc}
	.balign 4, 0x00
	ldr r0, [r0,#0x7c]
	lsr r2, r2, #0x20
	lsl r1, r0, #8
	lsl r0, r0, #0
loc_8126FC4:
	push {lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_8126FEC
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r6, #0x35 
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #6
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8126FE6
	mov r6, #0x39 
loc_8126FE6:
	mov r0, r6
	bl sub_81278C8
locret_8126FEC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8126FA8

	thumb_local_start
sub_8126FF0:
	push {lr}
	bl sub_80465BC
	bl sub_8123360
	tst r0, r0
	bne loc_8127006
	mov r0, #0
	mov r1, #5
	bl sub_811BED4
loc_8127006:
	bl sub_80465F8 // () -> void
	bl sub_81272C4
	bl sub_8127374
	bl IsPaletteFadeActive // () -> zf
	beq locret_812705E
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	bl sub_81440D8 // static () -> void
	bl sub_8046664 // () -> void
	mov r0, #0x17
	mov r1, #0x13
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r1, #1
	ldr r2, [r5,#0xc]
	tst r2, r1
	beq loc_812703A
	mov r4, #0x24 
	b loc_8127042
loc_812703A:
	mov r1, #2
	tst r2, r1
	beq loc_812705A
	mov r4, #0x2c 
loc_8127042:
	bl chatbox_8040818
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_SubmenuPtr]
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	strb r4, [r5]
	b locret_812705E
loc_812705A:
	bl sub_811F708
locret_812705E:
	pop {pc}
	thumb_func_end sub_8126FF0

	thumb_local_start
sub_8127060:
	push {r4-r7,lr}
	mov r7, r5
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_8127198 // =eTextScript201BA20
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r2, #0xd
	ldrsb r0, [r7,r2]
	mov r1, #0xf
	add r0, r0, r1
	mov r1, #2
	mov r2, #2
	ldr r3, off_81271A4 // =unk_201CF20 
	mov r4, #0xe
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r2, #0xd
	ldrsb r0, [r7,r2]
	mov r1, #0x22 
	add r0, r0, r1
	mov r1, #2
	mov r2, #2
	ldr r3, off_81271B0 // =unk_201D120 
	mov r4, #0xe
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r2, #0xd
	ldrsb r0, [r7,r2]
	mov r1, #0x30 
	add r0, r0, r1
	mov r1, #2
	mov r2, #2
	ldr r3, off_81271BC // =unk_201D320 
	mov r4, #0xd
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r2, #0xd
	ldrsb r0, [r7,r2]
	mov r1, #1
	add r0, r0, r1
	mov r1, #4
	mov r2, #2
	ldr r3, off_81271C8 // =unk_201D520 
	mov r4, #0xc
	mov r5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_8127060

	thumb_local_start
sub_81270D0:
	push {r4-r7,lr}
	ldr r4, off_8127180 // =unk_20096E0 
	mov r6, #0
	mov r7, #0
	ldr r5, off_812715C // =off_8127160 
loc_81270DA:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_81270EC:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_81270EC
	cmp r7, #0x20 
	blt loc_81270DA
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_8127180 // =unk_20096E0 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_8127184 // =byte_8127188
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r0, off_812711C // =off_8127120 
	ldr r1, off_8127154 // =eTextScript201BF20
	ldr r2, off_8127158 // =eDecompBuffer2013A00
	bl sub_8123300
	pop {r4-r7,pc}
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
	.word TextScriptNaviCustAndFolders86D82C4
	.word byte_86D860C
	.word byte_86D7578
	.word byte_86D894C
off_8127154: .word eTextScript201BF20
off_8127158: .word eDecompBuffer2013A00
off_812715C: .word off_8127160
off_8127160: .word dword_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001A40
	.word 0x20
off_8127180: .word unk_20096E0
off_8127184: .word byte_8127188
byte_8127188: .byte 0x54, 0x80, 0x6C, 0x88, 0x20, 0x0, 0x0, 0x6
	.word eDecompBuffer2013A00
	.word comp_86D74B0 + 1<<31
off_8127198: .word eTextScript201BA20
	.word eDecompBuffer2013A00
	.word comp_86D737C + 1<<31
off_81271A4: .word unk_201CF20
	.word eDecompBuffer2013A00
	.word comp_86D73D4 + 1<<31
off_81271B0: .word unk_201D120
	.word eDecompBuffer2013A00
	.word comp_86D7424 + 1<<31
off_81271BC: .word unk_201D320
	.word eDecompBuffer2013A00
	.word comp_86D747C + 1<<31
off_81271C8: .word unk_201D520
	.word eDecompBuffer2013A00
	.word comp_86C9C80 + 1<<31
	.word 0x60149C0
	.word eDecompBuffer2013A00
	.word comp_86C9D38 + 1<<31
	.word 0x6014980
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word comp_86C9148 + 1<<31
	.word 0x6003C00
	.word eDecompBuffer2013A00
	.word comp_86C9240 + 1<<31
	.word unk_3001A60
	.word eDecompBuffer2013A00
	.word comp_86D8C80 + 1<<31
	.word unk_201D774
	.word eDecompBuffer2013A00
	.word comp_86D9D10 + 1<<31
	.word unk_201F294
	.word eDecompBuffer2013A00
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
	.word byte_2022B94
	.word eDecompBuffer2013A00
	.word 0x0
	thumb_func_end sub_81270D0

	thumb_local_start
sub_8127264:
	push {r4-r7,lr}
	mov r4, #0
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_81272BE
	mov r7, #0
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0xf2
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8127280
	mov r1, #1
	orr r7, r1
loc_8127280:
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0xf7
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_812728E
	mov r1, #2
	orr r7, r1
loc_812728E:
	cmp r7, #3
	bne loc_81272AA
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	beq loc_81272A4
	mov r0, #0xc
	mov r1, #0xc
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_81272B8
loc_81272A4:
	bl chatbox_8045F4C
	add r7, r0, #1
loc_81272AA:
	mov r0, #0xc
	mov r1, #0xc
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	cmp r7, #1
	beq loc_81272BA
loc_81272B8:
	mov r0, #0xc
loc_81272BA:
	strb r0, [r5,#2]
	mov r4, #1
loc_81272BE:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8127264

	thumb_local_start
sub_81272C4:
	push {r4,lr}
	ldrb r0, [r5,#0x10]
	tst r0, r0
	beq loc_81272EA
	mov r0, #4
	mov r1, #0x34 
	mov r2, #0
	mov r3, #0x13
	ldr r6, dword_8127308 // =0x10000000 
	ldr r4, off_8127300 // =byte_81268FC
	ldr r7, off_8127370 // =dword_81268F8
	bl sub_812730C
	ldrb r0, [r5,#0xf]
	cmp r0, #2
	beq locret_81272FC
	ldrb r0, [r5,#0x10]
	cmp r0, #1
	bne locret_81272FC
loc_81272EA:
	mov r0, #0xe8
	mov r1, #0x34 
	mov r2, #0
	mov r3, #0x12
	ldr r6, dword_8127304 // =0x0 
	ldr r4, off_8127300 // =byte_81268FC
	ldr r7, off_8127370 // =dword_81268F8
	bl sub_812730C
locret_81272FC:
	pop {r4,pc}
	.byte 0, 0
off_8127300: .word byte_81268FC
dword_8127304: .word 0x0
dword_8127308: .word 0x10000000
	thumb_func_end sub_81272C4

	thumb_local_start
sub_812730C:
	push {r4,lr}
	sub sp, sp, #0x1c
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r6, [sp,#0x10]
	lsl r0, r0, #0x10
	ldr r1, [sp]
	ldr r3, [sp,#4]
	tst r3, r3
	bne loc_8127328
	mov r2, #0
	b loc_812732A
loc_8127328:
	ldrh r2, [r5,r3]
loc_812732A:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_812736C // =0x20002 
	ldr r2, [sp,#8]
	ldrb r2, [r5,r2]
	str r2, [sp,#0x14]
	mov r3, #0xf
	and r2, r3
	ldr r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	bl sub_811FAF4
	ldr r1, [sp,#0x14]
	lsr r1, r1, #4
	sub r1, #1
	bne loc_8127358
	mov r1, r7
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_8127358:
	ldr r2, [sp,#8]
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r3
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #0x1c
	pop {r4,pc}
	.balign 4, 0x00
dword_812736C: .word 0x20002
off_8127370: .word dword_81268F8
	thumb_func_end sub_812730C

	thumb_local_start
sub_8127374:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x1e]
	cmp r0, #4
	blt locret_81273A6
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	mov r3, #0xe
	ldrsb r2, [r5,r3]
	sub r0, r0, r2
	lsl r0, r0, #3
	mov r2, #0x32 
	ldrsh r1, [r5,r2]
	add r0, r0, r1
	strh r0, [r5,r2]
	lsl r0, r0, #0x10
	mov r1, #0x14
	orr r0, r1
	ldr r1, dword_81273A8 // =0x20002 
	ldrh r2, [r5,#0x1e]
	ldrh r3, [r5,#0x24]
	mov r4, #4
	ldr r6, byte_81273AC // =0x4c
	mov r7, #0x34 
	bl sub_811FA98
locret_81273A6:
	pop {r4-r7,pc}
dword_81273A8: .word 0x20002
byte_81273AC: .byte 0x4C, 0xC2, 0x0, 0x0, 0xDA, 0x1, 0x0, 0x0
	thumb_func_end sub_8127374

	thumb_local_start
sub_81273B4:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_81273E2
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200a220_Ptr]
	bl sub_8121198
	add r0, #1
	cmp r0, #0xf
	beq loc_81273D4
	str r0, [r6,#0xc]
	mov r0, #0x12
	b loc_81273D6
loc_81273D4:
	mov r0, #0x13
loc_81273D6:
	mov r1, #0
	ldr r2, dword_81273E4 // =0x600ac00 
	ldr r3, off_81273E8 // =eTextScript201BF20
	ldr r4, off_81273EC // =unk_201A600 
	bl sub_8127578
locret_81273E2:
	pop {r4-r7,pc}
dword_81273E4: .word 0x600AC00
off_81273E8: .word eTextScript201BF20
off_81273EC: .word unk_201A600
	thumb_func_end sub_81273B4

	thumb_local_start
sub_81273F0:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq locret_8127414
	mov r7, r5
	mov r2, #0xd
	ldrsb r0, [r5,r2]
	mov r1, #2
	// j
	add r0, r0, r1
	// i
	mov r1, #9
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8127418 // =byte_8126B10
	mov r4, #3
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_8127414:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8127418: .word byte_8126B10
	thumb_func_end sub_81273F0

	thumb_local_start
sub_812741C:
	push {r4-r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200a220_Ptr]
	bl getPETNaviSelect // () -> u8
	mov r1, #1
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r0, #1
	str r0, [r6,#8]
	mov r0, #5
	mov r1, #0
	ldr r2, dword_81274E0 // =0x6008020 
	ldr r3, off_81274E4 // =eTextScript201BF20
	ldr r4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	bl getPETNaviSelect // () -> u8
	mov r1, #2
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r0, #1
	str r0, [r6,#8]
	mov r0, #6
	mov r1, #0x40 
	lsl r1, r1, #4
	sub r1, #0x20 
	ldr r2, dword_81274E0 // =0x6008020 
	ldr r3, off_81274E4 // =eTextScript201BF20
	ldr r4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	bl getPETNaviSelect // () -> u8
	mov r1, #3
	bl sub_80137B6 // (int a1, int a2) -> u8
	add r0, #1
	str r0, [r6,#8]
	mov r0, #7
	mov r1, #0x80
	lsl r1, r1, #4
	sub r1, #0x20 
	ldr r2, dword_81274E0 // =0x6008020 
	ldr r3, off_81274E4 // =eTextScript201BF20
	ldr r4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	bl getPETNaviSelect // () -> u8
	tst r0, r0
	bne loc_812749A
	bl notZero_eByte200AD04
	beq loc_812749A
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_812749A
	mov r0, #0x51 
	b loc_81274CE
loc_812749A:
	bl getPETNaviSelect // () -> u8
	mov r1, #0x17
	bl sub_80137B6 // (int a1, int a2) -> u8
	cmp r0, #0
	beq loc_81274AE
	ldr r1, off_81274F4 // =byte_812756C 
	ldrb r0, [r1,r0]
	b loc_81274CE
loc_81274AE:
	bl getPETNaviSelect // () -> u8
	mov r1, #5
	bl sub_80137B6 // (int a1, int a2) -> u8
	mov r3, #0
	ldr r1, off_81274EC // =byte_81274F8 
loc_81274BC:
	ldrb r2, [r1,r3]
	cmp r0, r2
	beq loc_81274CA
	add r3, #1
	cmp r3, #0x3a 
	blt loc_81274BC
	mov r3, #2
loc_81274CA:
	ldr r1, off_81274F0 // =byte_8127532
	ldrb r0, [r1,r3]
loc_81274CE:
	mov r1, #0xc0
	lsl r1, r1, #4
	sub r1, #0x20 
	ldr r2, dword_81274E0 // =0x6008020 
	ldr r3, off_81274E4 // =eTextScript201BF20
	ldr r4, off_81274E8 // =byte_2017A00 
	bl sub_8127578
	pop {r4-r7,pc}
dword_81274E0: .word 0x6008020
off_81274E4: .word eTextScript201BF20
off_81274E8: .word byte_2017A00
off_81274EC: .word byte_81274F8
off_81274F0: .word byte_8127532
off_81274F4: .word byte_812756C
byte_81274F8: .byte 0x0, 0x1, 0x71, 0x72, 0x54, 0x55, 0x56, 0x57, 0x87, 0x78
	.byte 0x58, 0x59, 0x5A, 0x5B, 0x75, 0x5C, 0x5D, 0x7C, 0x85, 0x5E
	.byte 0x5F, 0x60, 0x61, 0x8D, 0x35, 0x7A, 0x62, 0x63, 0x7F, 0x64
	.byte 0x65, 0x66, 0x67, 0x68, 0x84, 0x73, 0x69, 0x91, 0x6A, 0x8A
	.byte 0x6B, 0x92, 0x6C, 0x6D, 0x6E, 0x93, 0x40, 0x41, 0x42, 0x43
	.byte 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x32
byte_8127532: .byte 0xC, 0xB, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC, 0xC
	.byte 0xC, 0xC, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E
	.byte 0x4F, 0x50, 0x52
byte_812756C: .byte 0x46, 0x46, 0x4A, 0x49, 0x4D, 0x4E, 0x47, 0x4B, 0x48
	.byte 0x50, 0x4F, 0x52
	thumb_func_end sub_812741C

	thumb_local_start
sub_8127578:
	push {r4-r7,lr}
	ldr r6, off_81275A4 // =dword_86B7AE0 
	b loc_8127584
	.byte 0, 0
	thumb_func_end sub_8127578

	thumb_local_start
sub_8127580:
	push {r4-r7,lr}
	ldr r6, off_81275A0 // =dword_86A5D60 
loc_8127584:
	mov r7, r1
	mov r1, r0
	mov r0, r3
	mov r3, r2
	mov r2, r4
	add r2, r2, r7
	add r3, r3, r7
	mov r4, #0xb
	mov r5, #2
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
	.byte 0, 0
off_81275A0: .word dword_86A5D60
off_81275A4: .word dword_86B7AE0
	thumb_func_end sub_8127580

	thumb_local_start
sub_81275A8:
	push {r4-r7,lr}
	mov r2, #0xd
	ldrsb r0, [r5,r2]
	mov r1, #0x11
	// j
	add r0, r0, r1
	// i
	mov r1, #3
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_81275C4 // =byte_8126930
	mov r4, #0xb
	mov r5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81275C4: .word byte_8126930
	thumb_func_end sub_81275A8

	thumb_local_start
sub_81275C8:
	push {r4-r7,lr}
	mov r6, r10
	ldr r6, [r6,#oToolkit_Unk200a220_Ptr]
	ldrb r0, [r5,#0x14]
	str r0, [r6,#8]
	mov r0, #8
	mov r1, #0
	ldr r2, dword_812760C // =0x6009000 
	ldr r3, off_8127610 // =eTextScript201BF20
	ldr r4, off_8127614 // =unk_2018A00 
	bl sub_8127580
	ldrb r0, [r5,#0x15]
	str r0, [r6,#8]
	mov r0, #9
	mov r1, #0x40 
	lsl r1, r1, #4
	ldr r2, dword_812760C // =0x6009000 
	ldr r3, off_8127610 // =eTextScript201BF20
	ldr r4, off_8127614 // =unk_2018A00 
	bl sub_8127580
	ldrb r0, [r5,#0x16]
	str r0, [r6,#8]
	mov r0, #0xa
	mov r1, #0x80
	lsl r1, r1, #4
	ldr r2, dword_812760C // =0x6009000 
	ldr r3, off_8127610 // =eTextScript201BF20
	ldr r4, off_8127614 // =unk_2018A00 
	bl sub_8127580
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_812760C: .word 0x6009000
off_8127610: .word eTextScript201BF20
off_8127614: .word unk_2018A00
	thumb_func_end sub_81275C8

	thumb_local_start
sub_8127618:
	push {r4-r7,lr}
	mov r7, r5
	mov r2, #0xd
	ldrsb r0, [r5,r2]
	mov r1, #0x23 
	// j
	add r0, r0, r1
	// i
	mov r1, #3
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8127634 // =byte_81269E0
	mov r4, #0xb
	mov r5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_8127634: .word byte_81269E0
	thumb_func_end sub_8127618

	thumb_local_start
sub_8127638:
	push {r4-r7,lr}
	ldr r0, off_8127708 // =byte_201D74C 
	mov r6, r0
	mov r1, #0x28 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r0, off_8127714 // =unk_2024394 
	mov r1, #0x28 
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r4, #0
loc_812764E:
	mov r0, r4
	bl sub_813B9FC
	mov r7, r0
	ldrh r0, [r7]
	tst r0, r0
	beq loc_8127672
	mov r7, r0
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8127672
	mov r0, r7
	lsr r0, r0, #2
	strb r0, [r6,r4]
	ldrh r0, [r5,#0x1e]
	add r0, #1
	strh r0, [r5,#0x1e]
loc_8127672:
	add r4, #1
	cmp r4, #0x19
	blt loc_812764E
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_81276B6
loc_8127682:
	bl sub_81276E4
	mov r7, r0
	mov r2, #0
loc_812768A:
	ldr r1, [r7]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq loc_81276B6
	lsr r1, r1, #2
	add r1, #0x40 
	strb r1, [r6,r4]
	ldr r0, off_8127714 // =unk_2024394 
	strb r1, [r0,r2]
	add r2, #2
	add r7, #4
	ldr r1, [r7]
	ldr r0, off_8127714 // =unk_2024394 
	strh r1, [r0,r2]
	add r2, #2
	ldrh r0, [r5,#0x1e]
	add r0, #1
	strh r0, [r5,#0x1e]
	add r4, #1
	add r7, #4
	b loc_812768A
loc_81276B6:
	mov r0, #0x22 
	add r7, r6, r0
	mov r4, #0
loc_81276BC:
	ldrb r0, [r6]
	tst r0, r0
	bne loc_81276DA
	mov r0, r6
	add r1, r6, #1
loc_81276C6:
	ldrb r2, [r1]
	tst r2, r2
	beq loc_81276D4
	strb r2, [r0]
	mov r2, #0
	strb r2, [r1]
	add r0, #1
loc_81276D4:
	add r1, #1
	cmp r1, r7
	blt loc_81276C6
loc_81276DA:
	add r6, #1
	add r4, #1
	cmp r4, #0x22 
	blt loc_81276BC
	pop {r4-r7,pc}
	thumb_func_end sub_8127638

	thumb_local_start
sub_81276E4:
	push {r4,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_Unk2001c04_Ptr]
	ldr r4, [r1,#0x30]
	bl getPETNaviSelect // () -> u8
	mov r2, r0
	lsl r0, r0, #1
	ldr r1, off_8127710 // =byte_81211B4
	ldrh r1, [r1,r0]
	sub r4, r4, r1
	lsl r0, r2, #2
	ldr r1, off_812770C // =pt_8121200 
	ldr r1, [r1,r0]
	ldr r1, [r1]
	lsl r4, r4, #2
	ldr r0, [r1,r4]
	pop {r4,pc}
off_8127708: .word byte_201D74C
off_812770C: .word pt_8121200
off_8127710: .word byte_81211B4
off_8127714: .word unk_2024394
	thumb_func_end sub_81276E4

	thumb_local_start
sub_8127718:
	push {r4-r7,lr}
	mov r6, #0
	ldrh r7, [r5,#0x24]
	ldrh r0, [r5,#0x26]
	cmp r7, r0
	beq locret_812774A
loc_8127724:
	ldr r3, off_8127758 // =byte_201D74C 
	ldrb r0, [r3,r7]
	cmp r0, #0x40 
	blt loc_8127730
	bl sub_8127760
loc_8127730:
	ldr r2, dword_812774C // =0x600a000 
	ldr r3, off_8127750 // =byte_873EA50 
	ldr r4, off_8127754 // =byte_2019A00 
	mov r1, r6
	bl sub_8127580
	add r7, #1
	mov r0, #0x20 
	lsl r0, r0, #4
	add r6, r6, r0
	ldr r2, off_812775C // =0x600 
	cmp r6, r2
	ble loc_8127724
locret_812774A:
	pop {r4-r7,pc}
dword_812774C: .word 0x600A000
off_8127750: .word byte_873EA50
off_8127754: .word byte_2019A00
off_8127758: .word byte_201D74C
off_812775C: .word 0x600
	thumb_func_end sub_8127718

	thumb_local_start
sub_8127760:
	ldr r1, off_8127784 // =unk_2024394 
	mov r3, #0
loc_8127764:
	ldrh r2, [r1,r3]
	cmp r2, r0
	beq loc_8127772
	add r3, #4
	cmp r3, #0x20 
	blt loc_8127764
	mov r3, #0
loc_8127772:
	add r3, #2
	ldrh r2, [r1,r3]
	mov r1, #0x40 
	sub r3, r0, r1
	lsl r3, r3, #1
	mov r1, #0x50 
	add r3, r3, r1
	strh r2, [r5,r3]
	mov pc, lr
off_8127784: .word unk_2024394
	thumb_func_end sub_8127760

	thumb_local_start
sub_8127788:
	push {r4-r7,lr}
	mov r6, #0
	ldrh r7, [r5,#0x24]
	ldrh r0, [r5,#0x26]
	cmp r7, r0
	beq locret_81277CA
loc_8127794:
	ldr r3, off_81277D8 // =byte_201D74C 
	ldr r0, [r3,r7]
	add r7, #4
	ldr r1, [r3,r7]
	mov r4, #0x40 
	sub r2, r0, r4
	blt loc_81277B0
	cmp r2, #2
	bgt loc_81277B0
	mov r3, r10
	ldr r3, [r3,#0x38]
	lsl r2, r2, #2
	add r2, #8
	str r1, [r3,r2]
loc_81277B0:
	ldr r2, dword_81277CC // =0x600a000 
	ldr r3, off_81277D0 // =byte_873EA50 
	ldr r4, off_81277D4 // =byte_2019A00 
	mov r1, r6
	bl sub_8127580
	add r7, #4
	mov r0, #0x20 
	lsl r0, r0, #4
	add r6, r6, r0
	ldr r2, off_81277DC // =0x600 
	cmp r6, r2
	ble loc_8127794
locret_81277CA:
	pop {r4-r7,pc}
dword_81277CC: .word 0x600A000
off_81277D0: .word byte_873EA50
off_81277D4: .word byte_2019A00
off_81277D8: .word byte_201D74C
off_81277DC: .word 0x600
	thumb_func_end sub_8127788

	thumb_local_start
sub_81277E0:
	push {r4-r7,lr}
	mov r2, #0xd
	ldrsb r0, [r5,r2]
	mov r1, #0x31 
	// j
	add r0, r0, r1
	// i
	mov r1, #3
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_81277FC // =byte_8126A90
	mov r4, #8
	mov r5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81277FC: .word byte_8126A90
	thumb_func_end sub_81277E0

	thumb_local_start
sub_8127800:
	push {r4-r7,lr}
	mov r5, #0
	mov r6, #0
loc_8127806:
	ldr r1, off_8127830 // =byte_8127834
	ldr r0, [r1,r6]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_812781E
	ldr r1, off_8127878 // =off_812787C 
	ldr r0, [r1,r6]
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8127828
loc_812781E:
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0xf7
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b locret_812782E
loc_8127828:
	add r6, #4
	cmp r6, #0x34 
	blt loc_8127806
locret_812782E:
	pop {r4-r7,pc}
off_8127830: .word byte_8127834
byte_8127834: .byte 0x21, 0x3, 0x0, 0x0, 0x27, 0x3, 0x0, 0x0, 0x2D, 0x3, 0x0, 0x0, 0x33
	.byte 0x3, 0x0, 0x0, 0x39, 0x3, 0x0, 0x0, 0x45, 0x3, 0x0, 0x0, 0x4B, 0x3
	.byte 0x0, 0x0, 0x51, 0x3, 0x0, 0x0, 0x57, 0x3, 0x0, 0x0, 0x5D, 0x3, 0x0
	.byte 0x0, 0x3F, 0x3, 0x0, 0x0, 0x69, 0x3, 0x0, 0x0, 0x3, 0x3, 0x0, 0x0
	.byte 0xF, 0x3, 0x0, 0x0, 0x9, 0x3, 0x0, 0x0, 0x15, 0x3, 0x0, 0x0, 0x1B
	.byte 0x3, 0x0, 0x0
off_8127878: .word off_812787C
off_812787C: .word 0xAC
	.byte 0xAD, 0x0, 0x0, 0x0, 0xAE, 0x0, 0x0, 0x0, 0xAF, 0x0, 0x0, 0x0, 0xB0
	.byte 0x0, 0x0, 0x0, 0xB1, 0x0, 0x0, 0x0, 0xB2, 0x0, 0x0, 0x0, 0xB3, 0x0
	.byte 0x0, 0x0, 0xB4, 0x0, 0x0, 0x0, 0xB5, 0x0, 0x0, 0x0, 0xB6, 0x0, 0x0
	.byte 0x0, 0xB7, 0x0, 0x0, 0x0, 0xB8, 0x0, 0x0, 0x0, 0xB9, 0x0, 0x0, 0x0
	.byte 0xBA, 0x0, 0x0, 0x0, 0xBB, 0x0, 0x0, 0x0, 0xBC, 0x0, 0x0, 0x0, 0xBD
	.byte 0x0, 0x0, 0x0, 0xBE, 0x0, 0x0, 0x0
	thumb_func_end sub_8127800

	thumb_local_start
sub_81278C8:
	push {lr}
	mov r1, r0
	ldr r0, off_81278D4 // =eTextScript201BF20
	bl chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
	pop {pc}
off_81278D4: .word eTextScript201BF20
	thumb_func_end sub_81278C8

	thumb_local_start
sub_81278D8:
	push {lr}
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	lsl r0, r0, #3
	ldr r1, [r5,#0x40]
	add r0, r0, r1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81278D8

	thumb_local_start
sub_81278E8:
	push {r4-r7,lr}
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	lsl r0, r0, #3
	ldr r1, off_8127928 // =0x200 
	add r0, r0, r1
	lsl r0, r0, #0x10
	ldr r1, off_8127930 // =0x70 
	orr r0, r1
	ldr r1, dword_8127934 // =0x20002 
	mov r2, #0
	ldr r3, off_8127938 // =dword_8126904
	ldr r4, dword_8127940 // =0x80004000 
	bl sub_811FAF4
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	lsl r0, r0, #3
	ldr r1, off_812792C // =0x220 
	add r0, r0, r1
	lsl r0, r0, #0x10
	ldr r1, off_8127930 // =0x70 
	orr r0, r1
	ldr r1, dword_8127934 // =0x20002 
	mov r2, #0
	ldr r3, off_812793C // =dword_8126908
	ldr r4, dword_8127940 // =0x80004000 
	bl sub_811FAF4
	bl sub_8127944
	pop {r4-r7,pc}
off_8127928: .word 0x200
off_812792C: .word 0x220
off_8127930: .word 0x70
dword_8127934: .word 0x20002
off_8127938: .word dword_8126904
off_812793C: .word dword_8126908
dword_8127940: .word 0x80004000
	thumb_func_end sub_81278E8

	thumb_local_start
sub_8127944:
	push {r4-r7,lr}
	mov r1, #0xd
	ldrsb r0, [r5,r1]
	lsl r0, r0, #3
	ldr r1, dword_8127970 // =0x22a 
	add r0, r0, r1
	ldr r1, dword_8127974 // =0x6e 
	mov r2, #0
	mov r3, #0x48 
	ldr r4, off_8127964 // =byte_812690C
	ldr r6, dword_8127968 // =0x40000000 
	ldr r7, off_812796C // =byte_8126912
	bl sub_812730C
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8127964: .word byte_812690C
dword_8127968: .word 0x40000000
off_812796C: .word byte_8126912
dword_8127970: .word 0x22A
dword_8127974: .word 0x6E
byte_8127978: .byte 0x40, 0xC2, 0x44, 0xC2, 0x48, 0xC2, 0xFF, 0xFF
dword_8127980: .word 0xFF060606
byte_8127984: .byte 0x30, 0xB2, 0x32, 0xB2, 0xFF, 0xFF
byte_812798A: .byte 0x6, 0x6, 0xFF, 0x0, 0x0, 0x0
	thumb_func_end sub_8127944

	thumb_func_start sub_8127990
sub_8127990:
	push {r4,lr}
	mov r4, r0
	bl sub_811F6C0
	tst r4, r4
	beq locret_81279A2
	ldr r1, off_81279A4 // =sSubmenu 
	mov r0, #1
	strb r0, [r1,#0xd] // (sSubmenu.unk_0D - 0x2009a30)
locret_81279A2:
	pop {r4,pc}
off_81279A4: .word sSubmenu
	thumb_func_end sub_8127990

	thumb_func_start sub_81279A8
sub_81279A8:
	push {r4-r7,lr}
	mov r7, #1
	ldr r0, off_81279F0 // =dword_2001140 
	ldr r4, [r0]
	tst r4, r4
	beq loc_81279E2
	mov r5, #0
loc_81279B6:
	ldr r1, off_81279E8 // =byte_2006530 
	ldrb r0, [r1,r5]
	mov r6, r0
	ldr r1, dword_81279EC // =0x1da0 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81279DC
	mov r3, #4
	mul r3, r6
	ldr r2, off_81279F4 // =byte_812851C
	add r2, r2, r3
	ldrb r0, [r2]
	mov r1, #0x80
	tst r0, r1
	beq loc_81279DC
	mov r7, #0
	b loc_81279E2
loc_81279DC:
	add r5, #1
	cmp r5, r4
	blt loc_81279B6
loc_81279E2:
	mov r0, r7
	tst r0, r0
	pop {r4-r7,pc}
off_81279E8: .word byte_2006530
dword_81279EC: .word 0x1DA0
off_81279F0: .word dword_2001140
off_81279F4: .word byte_812851C
	thumb_func_end sub_81279A8

	thumb_func_start HandleEmailMenu81279F8
HandleEmailMenu81279F8:
	push {r5,lr}
	ldr r5, off_8127A08 // =sSubmenu 
	ldr r0, off_8127A0C // =off_8127A10 
	ldrb r1, [r5,#0x1] // (sSubmenu.jo_01 - 0x2009a30)
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r5,pc}
off_8127A08: .word sSubmenu
off_8127A0C: .word off_8127A10
off_8127A10: .word sub_8127A1C+1
	.word sub_8127ACC+1
	.word sub_8127C64+1
	thumb_func_end HandleEmailMenu81279F8

	thumb_local_start
sub_8127A1C:
	push {lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_8127AB8 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8046664 // () -> void
	bl sub_8127CB8
	ldr r0, off_8127ABC // =dword_2001140 
	ldr r0, [r0]
	strh r0, [r5,#0x1e]
	mov r0, #4
	strh r0, [r5,#0x28]
	mov r0, #0
	strh r0, [r5,#0x20]
	strh r0, [r5,#0x24]
	strh r0, [r5,#0x2a]
	strh r0, [r5,#0x2e]
	mov r0, #0xff
	strh r0, [r5,#0x22]
	strh r0, [r5,#0x26]
	strh r0, [r5,#0x2c]
	strh r0, [r5,#0x30]
	mov r0, #0
	ldr r1, off_8127AC8 // =dword_8127980
	bl sub_8120CC8
	strb r0, [r5,#0xc]
	strb r1, [r5,#0xe]
	strb r0, [r5,#0xf]
	strb r1, [r5,#0x10]
	bl sub_81283A0
	ldr r1, off_8127AC4 // =byte_2000FE0 
	mov r0, #7
	strb r0, [r1]
	mov r0, #4
	strb r0, [r1,#0x1] // (byte_2000FE1 - 0x2000fe0)
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
off_8127AC8: .word dword_8127980
	thumb_func_end sub_8127A1C

	thumb_local_start
sub_8127ACC:
	push {lr}
	ldr r0, off_8127AF4 // =off_8127AF8 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
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
	thumb_func_end sub_8127ACC

	thumb_local_start
sub_8127B08:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8127B14
	mov r0, #4
	strb r0, [r5,#2]
locret_8127B14:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8127B08

	thumb_local_start
sub_8127B18:
	push {lr}
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_8127B2A
loc_8127B22:
	mov r0, #8
	bl sub_811FB64
	b locret_8127B8E
loc_8127B2A:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_8127B4C
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_8127B22
	bl sub_8128318
	bl sub_8128008
	bl sub_81281C0
	mov r0, #0x81
	bl sound_play // () -> void
	b locret_8127B8E
loc_8127B4C:
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_8127B8E
	mov r0, #8
	bl isJoystickIRQActive
	beq loc_8127B72
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0
	ldr r1, off_8127B90 // =dword_8127980
	bl sub_8120CC8
	strb r0, [r5,#0xf]
	strb r1, [r5,#0x10]
	b locret_8127B8E
loc_8127B72:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #4
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	tst r0, r0
	beq locret_8127B8E
	bl sub_8128008
	bl sub_81281C0
locret_8127B8E:
	pop {pc}
off_8127B90: .word dword_8127980
	thumb_func_end sub_8127B18

	thumb_local_start
sub_8127B94:
	push {r4,lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_8127BD6
	ldr r2, off_8127BD8 // =dword_2027590 
	ldrh r0, [r5,#0x20]
	ldrh r1, [r5,#0x24]
	add r0, r0, r1
	mov r1, #0x20 
	mul r0, r1
	add r2, r2, r0
	ldr r4, [r2,#0x18]
	lsr r4, r4, #0x10
	ldr r0, dword_8127BE0 // =0x1d20 
	add r0, r0, r4
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	ldr r0, dword_8127BDC // =0x1da0 
	add r0, r0, r4
	mov r0, r0
	bl SetEventFlag
	bl sub_8128008
	bl sub_81281C0
	mov r4, #4
	strb r4, [r5,#2]
	mov r0, #1
	bl sub_8127ED4
locret_8127BD6:
	pop {r4,pc}
off_8127BD8: .word dword_2027590
dword_8127BDC: .word 0x1DA0
dword_8127BE0: .word 0x1D20
	thumb_func_end sub_8127B94

	thumb_local_start
sub_8127BE4:
	push {lr}
	mov r0, #0xa
	bl isJoystickIRQActive
	beq loc_8127BFA
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0x83
	bl sound_play // () -> void
	b loc_8127C46
loc_8127BFA:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_8127C34
	mov r0, #0x81
	bl sound_play // () -> void
	ldrh r0, [r5,#0x2a]
	ldr r1, off_8127C50 // =dword_8127C54 
	ldrb r0, [r1,r0]
	ldr r2, off_8127C58 // =byte_2000FE0 
	ldrb r1, [r2]
	cmp r0, r1
	beq loc_8127C1E
	strb r0, [r2]
	mov r0, #0
	strb r0, [r2,#0x1] // (byte_2000FE1 - 0x2000fe0)
	b loc_8127C26
loc_8127C1E:
	ldrb r0, [r2,#0x1] // (byte_2000FE1 - 0x2000fe0)
	mov r1, #4
	eor r0, r1
	strb r0, [r2,#0x1] // (byte_2000FE1 - 0x2000fe0)
loc_8127C26:
	bl sub_8128500
	bl sub_8128008
	bl sub_81281C0
	b loc_8127C46
loc_8127C34:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #4
	mov r2, #1
	ldrh r3, [r5,#0x2a]
	bl sub_811FA22
	strh r0, [r5,#0x2a]
loc_8127C46:
	bl sub_8127F90
	bl sub_812848C
	pop {pc}
off_8127C50: .word dword_8127C54
dword_8127C54: .word 0x7020300
off_8127C58: .word byte_2000FE0
	.word dword_2027590
	.word dword_2001140
	thumb_func_end sub_8127BE4

	thumb_local_start
sub_8127C64:
	push {lr}
	bl sub_81281E0
	bl sub_8127F54
	bl sub_8127FE4
	bl sub_8128280
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_8127CB6
	bl sub_8046664 // () -> void
	bl sub_8127EF4
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r3, [r5,#0xd]
	mov r2, #1
	tst r3, r2
	beq loc_8127C9C
	str r0, [r1,#0x78]
	b loc_8127C9E
loc_8127C9C:
	strb r0, [r1,#oGameState_Unk_13]
loc_8127C9E:
	ldrb r0, [r5,#0xd]
	mov r1, #1
	tst r0, r1
	beq loc_8127CB2
	mov r0, #1
	bl sub_811EBF4
	bl sub_811F728
	b locret_8127CB6
loc_8127CB2:
	bl sub_811F708
locret_8127CB6:
	pop {pc}
	thumb_func_end sub_8127C64

	thumb_local_start
sub_8127CB8:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldrb r0, [r5,#0xd]
	str r0, [sp]
	ldr r4, off_8127DE8 // =unk_20096E0 
	mov r6, #0
	mov r7, #0
	ldr r5, off_8127DB4 // =off_8127DB8
loc_8127CC8:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_8127CDA:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_8127CDA
	cmp r7, #0x30 
	blt loc_8127CC8
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_8127DE8 // =unk_20096E0 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_8127DEC // =byte_8127DF0
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r0, off_8127D74 // =off_8127D78
	ldr r1, [sp]
	mov r2, #1
	tst r1, r2
	beq loc_8127D08
	// initRefs
	ldr r0, off_8127D94 // =dword_8127D98 
loc_8127D08:
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r0, off_8127D34 // =byte_8127D38
	ldr r1, off_8127D6C // =eTextScript201BA00
	ldr r2, off_8127D70 // =eDecompBuffer2013A00
	bl sub_8123300
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	ldr r3, off_8127E0C // =unk_201C200 
	ldr r4, [sp]
	mov r5, #1
	tst r4, r5
	beq loc_8127D28
	// tileRefs
	ldr r3, off_8127E18 // =unk_2028690 
loc_8127D28:
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	add sp, sp, #4
	pop {r4-r7,pc}
off_8127D34: .word byte_8127D38
byte_8127D38: .byte 0x60, 0x4, 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8, 0x44, 0x5, 0x6D
	.byte 0x8, 0x44, 0x5, 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8, 0x44, 0x5
	.byte 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8, 0x44
	.byte 0x5, 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8
	.byte 0x60, 0x4, 0x6D, 0x8, 0x44, 0x5, 0x6D, 0x8
off_8127D6C: .word eTextScript201BA00
off_8127D70: .word eDecompBuffer2013A00
off_8127D74: .word off_8127D78
off_8127D78: .word 0x886C9668
	.word unk_3001A20
	.word 0x2013A00
	.word dword_86C9108
	.word byte_3001960
	.word 0x20
	.word 0x0
off_8127D94: .word dword_8127D98
dword_8127D98: .word 0x886C9694
	.word 0x3001A20
	.word 0x2013A00
	.word dword_86C9128
	.word byte_3001960
	.word 0x20
	.word 0x0
off_8127DB4: .word off_8127DB8
off_8127DB8: .word dword_86C9AF4
	.word 0x2
	.word unk_3001A40
	.word 0x20
	.word dword_86C9B34
	.word 0x2
	.word unk_3001A60
	.word 0x20
	.word dword_86C9B14
	.word 0x2
	.word unk_3001A80
	.word 0x20
off_8127DE8: .word unk_20096E0
off_8127DEC: .word byte_8127DF0
byte_8127DF0: .byte 0x14, 0x6, 0x6D, 0x88, 0x0, 0xC7, 0x1, 0x2, 0x0, 0x3A, 0x1, 0x2
	.byte 0x54, 0x80, 0x6C, 0x88, 0x20, 0x0, 0x0, 0x6, 0x0, 0x3A, 0x1, 0x2
	.byte 0xA8, 0xFF, 0x6C, 0x88
off_8127E0C: .word unk_201C200
	.word eDecompBuffer2013A00
	.word 0x886D00C0
off_8127E18: .word unk_2028690
	.word eDecompBuffer2013A00
	.byte 0x74, 0x92, 0x6C, 0x88, 0x20, 0x80, 0x0, 0x6, 0x0, 0x3A
	.byte 0x1, 0x2, 0xDC, 0x1, 0x6D, 0x88, 0x90, 0x85, 0x2, 0x2
	.byte 0x0, 0x3A, 0x1, 0x2, 0xD4, 0x2, 0x6D, 0x88, 0x0, 0x42
	.byte 0x1, 0x6, 0x0, 0x3A, 0x1, 0x2, 0x64, 0x2, 0x6D, 0x88
	.byte 0x0, 0x46, 0x1, 0x6, 0x0, 0x3A, 0x1, 0x2, 0xD4, 0x9B
	.byte 0x6C, 0x88, 0x0, 0x48, 0x1, 0x6
	.word eDecompBuffer2013A00
	.word 0x886C9D38
	.word 0x6014980
	.word eDecompBuffer2013A00
	.word 0x886D3154
	.word unk_2025700
	.word eDecompBuffer2013A00
	.word 0x886D0430
	.word byte_3001690
	.word eDecompBuffer2013A00
	.word 0x886D02BC
	.word byte_30016B0
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word 0x0
	thumb_func_end sub_8127CB8

	thumb_local_start
sub_8127E9C:
	push {r4,lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	bne loc_8127EA8
	mov r4, #2
	b loc_8127EC8
loc_8127EA8:
	bl sub_8127EF4
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r3, [r5,#0xd]
	mov r2, #1
	tst r3, r2
	beq loc_8127EBC
	ldr r1, [r1,#0x78]
	b loc_8127EBE
loc_8127EBC:
	ldrb r1, [r1,#0x13]
loc_8127EBE:
	cmp r0, r1
	beq loc_8127EC6
	mov r4, #0
	b loc_8127EC8
loc_8127EC6:
	mov r4, #1
loc_8127EC8:
	mov r0, r4
	bl sub_8127ED4
	mov r0, #0
	strb r0, [r5,#2]
	pop {r4,pc}
	thumb_func_end sub_8127E9C

	thumb_local_start
sub_8127ED4:
	push {lr}
	mov r1, r0
	ldr r0, off_8127EF0 // =eTextScript201BA00
	ldrb r2, [r5,#0xd]
	mov r3, #1
	tst r2, r3
	beq loc_8127EEA
	add r1, #0xa
	bl chatbox_runScript_803FDA4 // (void *textScript, u8 scriptIdx) -> void
	b locret_8127EEE
loc_8127EEA:
	bl chatbox_runScript_803FD9C // (void *textScript, u8 scriptIdx) -> void
locret_8127EEE:
	pop {pc}
off_8127EF0: .word eTextScript201BA00
	thumb_func_end sub_8127ED4

	thumb_local_start
sub_8127EF4:
	push {r4-r7,lr}
	ldr r6, dword_8127F48 // =0x1ca0 
	mov r4, #0
loc_8127EFA:
	mov r0, r6
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8127F3A
	ldr r1, dword_8127F48 // =0x1ca0 
	sub r0, r6, r1
	ldr r7, dword_8127F4C // =0x1d20 
	add r7, r7, r0
	mov r0, r7
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8127F3A
	ldr r1, dword_8127F48 // =0x1ca0 
	sub r0, r6, r1
	mov r1, #4
	mul r0, r1
	ldr r1, off_8127F50 // =byte_812851C
	add r0, r0, r1
	ldrb r0, [r0]
	mov r1, #0x80
	tst r0, r1
	beq loc_8127F30
	ldrb r0, [r5,#0xd]
	mov r1, #1
	tst r0, r1
	beq loc_8127F3A
	b loc_8127F38
loc_8127F30:
	ldrb r0, [r5,#0xd]
	mov r1, #1
	tst r0, r1
	bne loc_8127F3A
loc_8127F38:
	add r4, #1
loc_8127F3A:
	add r6, #1
	ldr r1, dword_8127F4C // =0x1d20 
	cmp r6, r1
	blt loc_8127EFA
	mov r0, r4
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8127F48: .word 0x1CA0
dword_8127F4C: .word 0x1D20
off_8127F50: .word byte_812851C
	thumb_func_end sub_8127EF4

	thumb_local_start
sub_8127F54:
	push {r4,lr}
	ldrb r1, [r5,#0x1e]
	tst r1, r1
	beq locret_8127F8E
	ldrb r0, [r5,#2]
	cmp r0, #0xc
	beq locret_8127F8E
	ldr r0, dword_8127FC0 // =0xe0000 
	ldrh r1, [r5,#0x20]
	mov r3, #0x10
	mul r1, r3
	ldr r2, dword_8127FC4 // =0x18 
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_8127FC8 // =0x20003 
	ldrb r2, [r5,#0xc]
	ldr r3, off_8127FCC // =byte_8127978
	ldr r4, dword_8127FD0 // =0x40000000 
	bl sub_811FAF4
	ldrb r1, [r5,#0xe]
	sub r1, #1
	strb r1, [r5,#0xe]
	bne locret_8127F8E
	ldr r1, off_8127FD4 // =dword_8127980
	bl sub_8120CC8
	strb r0, [r5,#0xc]
	strb r1, [r5,#0xe]
locret_8127F8E:
	pop {r4,pc}
	thumb_func_end sub_8127F54

	thumb_local_start
sub_8127F90:
	push {r4,lr}
	ldr r0, dword_8127FD8 // =0x420000 
	ldrh r1, [r5,#0x2a]
	mov r3, #0x10
	mul r1, r3
	ldr r2, dword_8127FDC // =0x18 
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_8127FE0 // =0x3 
	ldrb r2, [r5,#0xf]
	ldr r3, off_8127FCC // =byte_8127978
	ldr r4, dword_8127FD0 // =0x40000000 
	bl sub_811FAF4
	ldrb r1, [r5,#0x10]
	sub r1, #1
	strb r1, [r5,#0x10]
	bne locret_8127FBE
	ldr r1, off_8127FD4 // =dword_8127980
	bl sub_8120CC8
	strb r0, [r5,#0xf]
	strb r1, [r5,#0x10]
locret_8127FBE:
	pop {r4,pc}
dword_8127FC0: .word 0xE0000
dword_8127FC4: .word 0x18
dword_8127FC8: .word 0x20003
off_8127FCC: .word byte_8127978
dword_8127FD0: .word 0x40000000
off_8127FD4: .word dword_8127980
dword_8127FD8: .word 0x420000
dword_8127FDC: .word 0x18
dword_8127FE0: .word 0x3
	thumb_func_end sub_8127F90

	thumb_local_start
sub_8127FE4:
	push {r4-r7,lr}
	mov r0, #0xe1
	lsl r0, r0, #0x10
	mov r1, #0x14
	orr r0, r1
	ldr r1, dword_8128000 // =0x20002 
	ldrh r2, [r5,#0x1e]
	ldrh r3, [r5,#0x24]
	mov r4, #4
	ldr r6, dword_8128004 // =0x30ca4c 
	mov r7, #0x35 
	bl sub_811FA98
	pop {r4-r7,pc}
dword_8128000: .word 0x20002
dword_8128004: .word 0x30CA4C
	thumb_func_end sub_8127FE4

	thumb_local_start
sub_8128008:
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, off_81280B0 // =0x201 
	ldrh r1, [r5,#0x1e]
	cmp r1, #4
	ble loc_8128016
	mov r1, #4
loc_8128016:
	bl sub_81280DC
	ldrh r6, [r5,#0x24]
	ldrh r4, [r5,#0x1e]
	tst r4, r4
	beq loc_81280A8
	cmp r4, #4
	ble loc_8128028
	mov r4, #4
loc_8128028:
	mov r3, #0
	mov r7, r3
loc_812802C:
	mov r1, #0x20 
	mul r1, r6
	ldr r0, off_81280AC // =dword_2027590 
	add r0, r0, r1
	str r0, [sp,#4]
	ldrb r1, [r0,#0x14]
	push {r3-r7}
	ldr r0, off_81280B4 // =unk_2025700 
	ldr r2, off_81280C0 // =byte_2017A20 
	add r2, r2, r7
	ldr r3, dword_81280C4 // =0x6004020 
	add r3, r3, r7
	mov r4, #0xb
	mov r5, #1
	ldr r6, off_81280BC // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r3-r7}
	ldr r0, [sp,#4]
	ldrb r1, [r0,#0x10]
	push {r3-r7}
	ldr r0, off_81280B4 // =unk_2025700 
	ldr r2, off_81280C8 // =unk_2017D20 
	add r2, r2, r7
	ldr r3, dword_81280CC // =0x6004320 
	add r3, r3, r7
	mov r4, #8
	.word 0x4E152501
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r3-r7}
	ldr r0, [sp,#4]
	ldr r1, [r0,#0x1c]
	lsr r1, r1, #0x10
	push {r3-r7}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200a220_Ptr]
	str r1, [r0,#8]
	ldr r0, off_81280B8 // =eTextScript201BA00
	mov r1, #3
	ldr r2, off_81280D0 // =unk_2017F60 
	add r2, r2, r7
	ldr r3, dword_81280D4 // =0x6004560 
	add r3, r3, r7
	mov r4, #2
	mov r5, #1
	ldr r6, off_81280BC // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r3-r7}
	add r3, #1
	cmp r3, #4
	bge loc_81280A8
	add r6, #1
	ldr r7, off_81280D8 // =0x5c0 
	mul r7, r3
	cmp r3, r4
	blt loc_812802C
loc_81280A8:
	add sp, sp, #8
	pop {r4-r7,pc}
off_81280AC: .word dword_2027590
off_81280B0: .word 0x201
off_81280B4: .word unk_2025700
off_81280B8: .word eTextScript201BA00
off_81280BC: .word dword_86A5D60
off_81280C0: .word byte_2017A20
dword_81280C4: .word 0x6004020
off_81280C8: .word unk_2017D20
dword_81280CC: .word 0x6004320
off_81280D0: .word unk_2017F60
dword_81280D4: .word 0x6004560
off_81280D8: .word 0x5C0
	thumb_func_end sub_8128008

	thumb_local_start
sub_81280DC:
	push {r4-r7,lr}
	sub sp, sp, #0x14
	str r0, [sp,#0xc]
	str r1, [sp,#8]
	mov r2, #7
	lsl r3, r2, #0xc
	str r3, [sp]
	ldr r0, off_812816C // =unk_2026700 
	ldr r1, off_8128184 // =0x170 
	bl ZeroFillByByte // (void *mem, int size) -> void
	ldr r1, [sp,#8]
	tst r1, r1
	beq loc_8128168
	mov r3, #0
	ldr r0, [sp,#0xc]
loc_81280FC:
	mov r4, #0
	ldr r7, off_812816C // =unk_2026700 
	ldr r1, off_8128180 // =0x5c 
	mul r1, r3
	add r7, r7, r1
	mov r6, #0x17
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r2, [sp]
	bl sub_812818C
loc_8128112:
	mov r1, r0
	orr r1, r2
	strh r1, [r7,r4]
	add r0, #1
	add r1, #1
	strh r1, [r6,r4]
	add r0, #1
	add r4, #2
	ldr r1, dword_8128174 // =0x16 
	cmp r4, r1
	blt loc_8128112
	add r0, #2
	add r4, #2
loc_812812C:
	mov r1, r0
	ldr r2, dword_8128188 // =0x9000 
	orr r1, r2
	strh r1, [r7,r4]
	add r0, #1
	add r1, #1
	strh r1, [r6,r4]
	add r0, #1
	add r4, #2
	ldr r1, off_8128178 // =0x28 
	cmp r4, r1
	blt loc_812812C
	add r0, #2
	add r4, #2
loc_8128148:
	mov r1, r0
	ldr r2, [sp]
	orr r1, r2
	strh r1, [r7,r4]
	add r0, #1
	add r1, #1
	strh r1, [r6,r4]
	add r0, #1
	add r4, #2
	ldr r1, dword_812817C // =0x2e 
	cmp r4, r1
	blt loc_8128148
	add r3, #1
	ldr r1, [sp,#8]
	cmp r3, r1
	blt loc_81280FC
loc_8128168:
	add sp, sp, #0x14
	pop {r4-r7,pc}
off_812816C: .word unk_2026700
	.word 0xC8
dword_8128174: .word 0x16
off_8128178: .word 0x28
dword_812817C: .word 0x2E
off_8128180: .word 0x5C
off_8128184: .word 0x170
dword_8128188: .word 0x9000
	thumb_func_end sub_81280DC

	thumb_local_start
sub_812818C:
	push {r0,r1,r3,r4,lr}
	mov r4, r2
	ldr r0, off_81281B4 // =dword_2027590 
	ldrh r1, [r5,#0x24]
	add r1, r1, r3
	mov r2, #0x20 
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0,#0x18]
	lsr r0, r0, #0x10
	ldr r1, dword_81281B8 // =0x1d20 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81281AE
	ldr r4, dword_81281BC // =0x8000 
loc_81281AE:
	mov r2, r4
	pop {r0,r1,r3,r4,pc}
	.balign 4, 0x00
off_81281B4: .word dword_2027590
dword_81281B8: .word 0x1D20
dword_81281BC: .word 0x8000
	thumb_func_end sub_812818C

	thumb_local_start
sub_81281C0:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_81281D8
	// j
	mov r0, #5
	// i
	mov r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_81281DC // =unk_2026700 
	mov r4, #0x17
	mov r5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81281D8:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81281DC: .word unk_2026700
	thumb_func_end sub_81281C0

	thumb_local_start
sub_81281E0:
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, #0
	ldrh r6, [r5,#0x1e]
	tst r6, r6
	beq loc_812823C
	cmp r6, #4
	ble loc_81281F2
	mov r6, #4
loc_81281F2:
	ldrh r2, [r5,#0x24]
	add r2, r2, r7
	mov r1, #0x20 
	mul r1, r2
	ldr r0, off_8128240 // =dword_2027590 
	add r0, r0, r1
	str r0, [sp,#4]
	ldr r3, off_812824C // =byte_8128250 
	lsl r2, r7, #2
	ldrh r1, [r3,r2]
	add r2, #2
	ldrh r0, [r3,r2]
	lsl r4, r1, #0x10
	orr r4, r0
	ldr r0, [sp,#4]
	ldr r0, [r0]
	lsr r0, r0, #0x10
	mov r1, #0x80
	bic r0, r1
	lsl r0, r0, #2
	ldr r2, off_8128248 // =0x210 
	add r2, r2, r0
	ldr r0, dword_8128244 // =0x40000000 
	orr r0, r4
	mov r1, #0xa
	lsl r1, r1, #0xc
	orr r1, r2
	mov r2, #2
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #2
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	add r7, #1
	cmp r7, r6
	blt loc_81281F2
loc_812823C:
	add sp, sp, #4
	pop {r4-r7,pc}
off_8128240: .word dword_2027590
dword_8128244: .word 0x40000000
off_8128248: .word 0x210
off_812824C: .word byte_8128250
byte_8128250: .byte 0x18, 0x0, 0x18, 0x0, 0x18, 0x0, 0x28, 0x0, 0x18, 0x0, 0x38
	.byte 0x0, 0x18, 0x0, 0x48, 0x0
	thumb_func_end sub_81281E0

	thumb_local_start
sub_8128260:
	push {lr}
	ldr r0, off_8128274 // =unk_2026870 
	ldr r1, off_812827C // =0x100 
	ldr r2, off_8128278 // =byte_812798A
	ldrb r2, [r2]
	lsl r2, r2, #8
	bl HalfwordFill
	pop {pc}
	.balign 4, 0x00
off_8128274: .word unk_2026870
off_8128278: .word byte_812798A
off_812827C: .word 0x100
	thumb_func_end sub_8128260

	thumb_local_start
sub_8128280:
	push {r4-r7,lr}
	ldrh r7, [r5,#0x24]
	ldrh r4, [r5,#0x1e]
	tst r4, r4
	beq locret_81282B6
	mov r5, #0
loc_812828C:
	ldr r6, off_81282B8 // =dword_2027590 
	add r2, r7, r5
	mov r1, #0x20 
	mul r2, r1
	add r6, r6, r2
	ldr r0, [r6,#0x18]
	lsr r0, r0, #0x10
	ldr r1, dword_81282BC // =0x1da0 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_81282AC
	mov r0, r5
	bl sub_81282C0
loc_81282AC:
	add r5, #1
	cmp r5, #4
	bge locret_81282B6
	cmp r5, r4
	blt loc_812828C
locret_81282B6:
	pop {r4-r7,pc}
off_81282B8: .word dword_2027590
dword_81282BC: .word 0x1DA0
	thumb_func_end sub_8128280

	thumb_local_start
sub_81282C0:
	push {r4-r7,lr}
	lsl r7, r0, #1
	ldr r4, off_8128310 // =unk_2026870 
	ldrb r4, [r4,r7]
	ldr r1, dword_8128300 // =0x17 
	mov r2, #0x10
	mul r2, r0
	add r1, r1, r2
	ldr r0, dword_81282FC // =0x17 
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_8128304 // =0x10002 
	mov r2, r4
	ldr r3, off_8128308 // =byte_8127984
	ldr r4, dword_812830C // =0x4000 
	bl sub_811FAF4
	ldr r4, off_8128310 // =unk_2026870 
	add r6, r7, #1
	ldrb r1, [r4,r6]
	sub r1, #1
	strb r1, [r4,r6]
	bne locret_81282F8
	ldr r1, off_8128314 // =byte_812798A
	bl sub_8120CC8
	strb r0, [r4,r7]
	strb r1, [r4,r6]
locret_81282F8:
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81282FC: .word 0x17
dword_8128300: .word 0x17
dword_8128304: .word 0x10002
off_8128308: .word byte_8127984
dword_812830C: .word 0x4000
off_8128310: .word unk_2026870
off_8128314: .word byte_812798A
	thumb_func_end sub_81282C0

	thumb_local_start
sub_8128318:
	push {r4,lr}
	ldr r4, off_812834C // =dword_2027590 
	ldrh r0, [r5,#0x20]
	ldrh r1, [r5,#0x24]
	add r0, r0, r1
	mov r1, #0x20 
	mul r0, r1
	add r4, r4, r0
	ldr r1, [r4,#0x18]
	lsr r4, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	ldr r0, off_8128350 // =eTextScript201C700
	ldrb r2, [r5,#0xd]
	mov r3, #1
	tst r2, r3
	beq loc_8128340
	bl chatbox_runScript_803FE10
	b loc_8128344
loc_8128340:
	bl chatbox_runScript_803FE08 // (void *textScript, u8 scriptIdx) -> void
loc_8128344:
	mov r0, #8
	strb r0, [r5,#2]
	pop {r4,pc}
	.balign 4, 0x00
off_812834C: .word dword_2027590
off_8128350: .word eTextScript201C700
	thumb_func_end sub_8128318

	thumb_local_start
sub_8128354:
	mov r1, #1
	ldrb r0, [r5,#0xd]
	tst r0, r1
	mov pc, lr
	thumb_func_end sub_8128354

	thumb_local_start
sub_812835C:
	push {lr}
	ldrh r4, [r5,#0x1e]
	sub r4, #1
	ldr r6, off_812839C // =byte_2006530 
loc_8128364:
	ldrb r0, [r6,r4]
	ldr r1, dword_8128398 // =0x1d20 
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_812837E
	sub r4, #1
	bgt loc_8128364
	mov r0, #0
	strh r0, [r5,#0x20]
	strh r0, [r5,#0x24]
	b locret_8128394
loc_812837E:
	cmp r4, #4
	bgt loc_812838A
	strh r4, [r5,#0x20]
	mov r0, #0
	strh r0, [r5,#0x24]
	b locret_8128394
loc_812838A:
	add r4, #1
	sub r4, #5
	strh r4, [r5,#0x24]
	mov r0, #4
	strh r0, [r5,#0x20]
locret_8128394:
	pop {pc}
	.balign 4, 0x00
dword_8128398: .word 0x1D20
off_812839C: .word byte_2006530
	thumb_func_end sub_812835C

	thumb_local_start
sub_81283A0:
	push {r4-r7,lr}
	sub sp, sp, #0xc
	str r5, [sp,#4]
	ldr r0, off_8128474 // =dword_2027590 
	mov r4, r0
	ldr r1, dword_8128478 // =0x1000 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl sub_81284B4
	ldrb r2, [r5,#0xd]
	mov r3, #1
	tst r2, r3
	beq loc_81283BE
	mov r1, r0
loc_81283BE:
	str r1, [sp,#8]
	ldr r6, off_812847C // =dword_2001140 
	ldrb r6, [r6]
	tst r6, r6
	beq loc_812846E
	mov r0, #0
	strh r0, [r5,#0x1e]
	ldr r7, off_8128480 // =byte_2006530 
loc_81283CE:
	ldrb r0, [r7]
	str r0, [sp]
	mov r3, #4
	mul r3, r0
	ldr r2, off_8128484 // =byte_812851C
	add r2, r2, r3
	ldrb r0, [r2]
	ldr r1, [sp,#4]
	ldrb r1, [r1,#0xd]
	mov r3, #1
	tst r1, r3
	beq loc_8128402
	mov r1, #0x80
	tst r0, r1
	beq loc_8128454
	ldr r1, [sp,#8]
	push {r0}
	mov r5, r1
	lsl r0, r5, #0x10
	orr r0, r5
	str r0, [r4,#0x1c]
	mvn r5, r5
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	pop {r0}
	b loc_812841C
loc_8128402:
	mov r1, #0x80
	tst r0, r1
	bne loc_8128454
	ldr r1, [sp,#8]
	push {r0}
	mov r5, r1
	lsl r0, r5, #0x10
	orr r0, r5
	str r0, [r4,#0x1c]
	mvn r5, r5
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	pop {r0}
loc_812841C:
	sub r1, #1
	str r1, [sp,#8]
	lsl r0, r0, #0x10
	orr r0, r5
	str r0, [r4]
	ldrb r0, [r2,#1]
	strb r0, [r4,#4]
	ldrb r0, [r2,#2]
	lsl r0, r0, #0x10
	orr r0, r5
	str r0, [r4,#8]
	ldrb r0, [r2,#3]
	lsl r0, r0, #0x10
	orr r0, r5
	str r0, [r4,#0xc]
	ldr r0, [sp]
	lsl r1, r0, #1
	strb r1, [r4,#0x10]
	add r1, #1
	strb r1, [r4,#0x14]
	lsl r1, r0, #0x10
	orr r1, r0
	str r1, [r4,#0x18]
	ldr r1, [sp,#4]
	ldrh r0, [r1,#0x1e]
	add r0, #1
	strh r0, [r1,#0x1e]
	add r4, #0x20 
loc_8128454:
	add r7, #1
	sub r6, #1
	bgt loc_81283CE
	ldr r0, off_8128488 // =byte_2000FE0 
	ldrb r2, [r0]
	ldrb r3, [r0,#0x1] // (byte_2000FE1 - 0x2000fe0)
	ldr r0, off_8128474 // =dword_2027590 
	ldr r1, [sp,#4]
	ldrh r1, [r1,#0x1e]
	tst r1, r1
	beq loc_812846E
	bl sub_8120018
loc_812846E:
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8128474: .word dword_2027590
dword_8128478: .word 0x1000
off_812847C: .word dword_2001140
off_8128480: .word byte_2006530
off_8128484: .word byte_812851C
off_8128488: .word byte_2000FE0
	thumb_func_end sub_81283A0

	thumb_local_start
sub_812848C:
	push {r4,r5,lr}
	// j
	mov r0, #9
	// i
	mov r1, #1
	// cpyOff
	mov r2, #0
	// tileRefs
	ldr r3, off_81284A0 // =unk_2028590 
	mov r4, #8
	mov r5, #0xb
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4,r5,pc}
off_81284A0: .word unk_2028590
	thumb_func_end sub_812848C

	thumb_func_start sub_81284A4
sub_81284A4:
	ldr r0, off_81284B0 // =byte_2000FE0 
	mov r1, #7
	strb r1, [r0]
	mov r1, #4
	strb r1, [r0,#0x1] // (byte_2000FE1 - 0x2000fe0)
	mov pc, lr
off_81284B0: .word byte_2000FE0
	thumb_func_end sub_81284A4

	thumb_local_start
sub_81284B4:
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r0, #0
	str r0, [sp]
	str r0, [sp,#4]
	ldr r0, off_81284F4 // =dword_2001140 
	ldr r4, [r0]
	ldr r7, off_81284F8 // =byte_2006530 
loc_81284C4:
	ldrb r0, [r7]
	mov r3, #4
	mul r3, r0
	ldr r2, off_81284FC // =byte_812851C
	add r2, r2, r3
	ldrb r0, [r2]
	mov r1, #0x80
	tst r1, r0
	beq loc_81284DE
	ldr r0, [sp]
	add r0, #1
	str r0, [sp]
	b loc_81284E4
loc_81284DE:
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
loc_81284E4:
	add r7, #1
	sub r4, #1
	bgt loc_81284C4
	ldr r0, [sp]
	ldr r1, [sp,#4]
	add sp, sp, #8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81284F4: .word dword_2001140
off_81284F8: .word byte_2006530
off_81284FC: .word byte_812851C
	thumb_func_end sub_81284B4

	thumb_local_start
sub_8128500:
	push {lr}
	ldr r0, off_8128514 // =byte_2000FE0 
	ldrb r2, [r0]
	ldrb r3, [r0,#0x1] // (byte_2000FE1 - 0x2000fe0)
	ldr r0, off_8128518 // =dword_2027590 
	ldrh r1, [r5,#0x1e]
	bl sub_8120018
	pop {pc}
	.balign 4, 0x00
off_8128514: .word byte_2000FE0
off_8128518: .word dword_2027590
byte_812851C: .byte 0x4, 0xFF, 0x3, 0x2A, 0x0, 0xFF, 0x22, 0x9, 0x3, 0x3, 0x51, 0x4E
	.byte 0x1, 0x3, 0x4, 0x36, 0x83, 0x4, 0x14, 0x20, 0x3, 0x4, 0xC, 0x26
	.byte 0x4, 0x4, 0xB, 0x1, 0x4, 0x4, 0xE, 0x0, 0x4, 0x4, 0x1B, 0x50
	.byte 0x4, 0x4, 0x11, 0x24, 0x0, 0x4, 0x21, 0x8, 0x4, 0x4, 0x18, 0x3
	.byte 0x4, 0x4, 0x52, 0x16, 0x1, 0x4, 0x1, 0xB, 0x1, 0x4, 0x13, 0x25
	.byte 0x1, 0x4, 0x20, 0x3E, 0x1, 0x4, 0x1F, 0x13, 0x1, 0x4, 0xD, 0x14
	.byte 0x1, 0x4, 0x0, 0xA, 0x1, 0x4, 0x50, 0x43, 0x1, 0x4, 0x10, 0x48
	.byte 0x1, 0x4, 0xA, 0x4B, 0x1, 0x4, 0x19, 0x23, 0x1, 0x4, 0x1C, 0x12
	.byte 0x2, 0x4, 0x45, 0x4F, 0x2, 0x4, 0x2D, 0x1A, 0x2, 0x4, 0x2B, 0x15
	.byte 0x2, 0x4, 0x2F, 0x1D, 0x2, 0x4, 0x3D, 0x40, 0x2, 0x4, 0x31, 0x1F
	.byte 0x2, 0x4, 0x41, 0x46, 0x2, 0x4, 0x40, 0x45, 0x2, 0x4, 0x28, 0xE
	.byte 0x2, 0x4, 0x42, 0x47, 0x2, 0x4, 0x34, 0x2B, 0x2, 0x4, 0x35, 0x2C
	.byte 0x2, 0x4, 0x43, 0x4A, 0x2, 0x4, 0x32, 0x22, 0x2, 0x4, 0x3E, 0x41
	.byte 0x2, 0x4, 0x26, 0x6, 0x2, 0x4, 0x27, 0x7, 0x2, 0x4, 0x2A, 0x11
	.byte 0x2, 0x4, 0x47, 0x52, 0x2, 0x4, 0x37, 0x37, 0x2, 0x4, 0x2E, 0x1B
	.byte 0x2, 0x4, 0x46, 0x51, 0x2, 0x4, 0x39, 0x3A, 0x2, 0x4, 0x3F, 0x44
	.byte 0x2, 0x4, 0x36, 0x34, 0x2, 0x4, 0x33, 0x29, 0x2, 0x4, 0x30, 0x1E
	.byte 0x2, 0x4, 0x2C, 0x19, 0x2, 0x4, 0x3A, 0x3B, 0x2, 0x4, 0x44, 0x4C
	.byte 0x2, 0x4, 0x29, 0xF, 0x2, 0x4, 0x3C, 0x3D, 0x2, 0x4, 0x38, 0x39
	.byte 0x2, 0x4, 0x25, 0x2, 0x2, 0x4, 0x3B, 0x3C, 0x3, 0x4, 0x24, 0x38
	.byte 0x4, 0x4, 0x12, 0x56, 0x0, 0x4, 0x1A, 0xD, 0x84, 0x4, 0x1D, 0x27
	.byte 0x84, 0x4, 0x8, 0x54, 0x84, 0x4, 0x17, 0x4D, 0x84, 0x4, 0x56, 0x28
	.byte 0x84, 0x4, 0x7, 0x53, 0x84, 0x4, 0x53, 0x4, 0x84, 0x4, 0x6, 0x3F
	.byte 0x83, 0x4, 0x15, 0x21, 0x84, 0x4, 0x54, 0x10, 0x84, 0x4, 0x9, 0x55
	.byte 0x84, 0x4, 0x16, 0x42, 0x84, 0x4, 0x55, 0x1C, 0x84, 0x4, 0x5, 0x5
	.byte 0x84, 0x4, 0x1E, 0x49, 0x1, 0x4, 0x2, 0xC, 0x4, 0x4, 0x23, 0x35
	.byte 0x4, 0x4, 0x4E, 0x32, 0x4, 0x4, 0x4F, 0x33, 0x4, 0x4, 0x4D, 0x31
	.byte 0x4, 0x4, 0x4B, 0x2F, 0x4, 0x4, 0x48, 0x18, 0x4, 0x4, 0x4A, 0x2E
	.byte 0x4, 0x4, 0x49, 0x2D, 0x4, 0x4, 0x4C, 0x30, 0x4, 0x4, 0xF, 0x17
byte_8128678: .byte 0x42, 0xC2, 0x42, 0xC2, 0x42, 0xC2, 0x42, 0xC2, 0x42
	.byte 0xC2, 0x42, 0xC2, 0x46, 0xC2, 0x46, 0xC2, 0x46, 0xC2
	.byte 0x46, 0xC2, 0x46, 0xC2, 0x46, 0xC2, 0x4A, 0xC2, 0x4A
	.byte 0xC2, 0x4A, 0xC2, 0x4A, 0xC2, 0x4A, 0xC2, 0x4A, 0xC2
	.byte 0x0, 0x0
byte_812869E: .byte 0x52, 0xC2, 0x52, 0xC2, 0x52, 0xC2, 0x52, 0xC2, 0x52
	.byte 0xC2, 0x52, 0xC2, 0x51, 0xC2, 0x51, 0xC2, 0x51, 0xC2
	.byte 0x51, 0xC2, 0x51, 0xC2, 0x51, 0xC2, 0x50, 0xC2, 0x50
	.byte 0xC2, 0x50, 0xC2, 0x50, 0xC2, 0x50, 0xC2, 0x50, 0xC2
	.byte 0x0, 0x0
byte_81286C4: .byte 0x0, 0x1, 0x3, 0x2, 0x5, 0x4, 0x6, 0x7, 0x8, 0x9, 0xB, 0xA, 0xD, 0xE, 0xF
	.byte 0x10, 0x11, 0x12, 0x13, 0x14, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x16, 0x17, 0x18, 0x15, 0x25
	.byte 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x34, 0x3B, 0x3C, 0x3D, 0x3E, 0x19, 0x1F
	.byte 0x33, 0x3A, 0x42, 0x38, 0x39, 0x45, 0x22, 0x29, 0x37, 0x3F, 0x41, 0x26, 0x28, 0x35, 0x46
	.byte 0x36, 0x43, 0x44, 0x40, 0x21, 0x2A, 0xC, 0x27, 0x20, 0x23, 0x24, 0x47, 0x48, 0x49, 0x4A
	.byte 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59
	.byte 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68
	.byte 0x69, 0x6A, 0x6B
	thumb_func_end sub_8128500

	thumb_func_start HandleKeyItemMenu8128730
HandleKeyItemMenu8128730:
	push {lr}
	ldr r0, off_8128740 // =off_8128744 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_8128740: .word off_8128744
off_8128744: .word sub_8128750+1
	.word sub_81287B4+1
	.word sub_81288E4+1
	thumb_func_end HandleKeyItemMenu8128730

	thumb_local_start
sub_8128750:
	push {lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_81287B0 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	bl sub_81288FC
	mov r0, #0
	strb r0, [r5,#0xf]
	strb r0, [r5,#0x10]
	mov r0, #0xff
	strh r0, [r5,#0x26]
	strh r0, [r5,#0x22]
	strb r0, [r5,#0xe]
	bl sub_81289C4
	bl sub_8128A44
	bl sub_8128AB0
	bl sub_8128B34
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {pc}
	.byte 0, 0
dword_81287B0: .word 0x1F40
	thumb_func_end sub_8128750

	thumb_local_start
sub_81287B4:
	push {lr}
	ldr r0, off_81287CC // =off_81287D0 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_8128C20
	bl sub_8128B34
	pop {pc}
	.balign 4, 0x00
off_81287CC: .word off_81287D0
off_81287D0: .word sub_81287DC+1
	.word sub_8128800+1
	.word sub_81288BC+1
	thumb_func_end sub_81287B4

	thumb_local_start
sub_81287DC:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_81287E8
	mov r0, #4
	strb r0, [r5,#2]
loc_81287E8:
	bl sub_8128B4C
	bl sub_8128B98
	ldrh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	ldrh r0, [r5,#0x20]
	strh r0, [r5,#0x22]
	ldrb r0, [r5,#0xd]
	strb r0, [r5,#0xe]
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_81287DC

	thumb_local_start
sub_8128800:
	push {r7,lr}
	ldrh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	ldrh r0, [r5,#0x20]
	strh r0, [r5,#0x22]
	ldrb r0, [r5,#0xd]
	strb r0, [r5,#0xe]
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	bne loc_812881C
	mov r0, #0xa
	bl isJoystickIRQActive
	bne loc_812882C
loc_812881C:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_8128834
	mov r0, #0xa
	bl isJoystickIRQActive
	beq loc_8128834
loc_812882C:
	mov r0, #8
	bl sub_811FB64
	b loc_81288B0
loc_8128834:
	mov r1, #2
	ldrh r2, [r5,#0x1e]
	tst r2, r2
	beq loc_81288B0
	ldrh r0, [r5,#0x24]
	lsl r0, r0, #1
	ldrh r3, [r5,#0x20]
	lsl r3, r3, #1
	add r0, r0, r3
	sub r2, r2, r0
	cmp r2, #2
	bge loc_812884E
	mov r1, #1
loc_812884E:
	mov r2, #1
	ldrb r3, [r5,#0xd]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	bl sub_811FA0C
	ldrb r1, [r5,#0xd]
	cmp r0, r1
	beq loc_8128866
	strb r0, [r5,#0xd]
	b loc_81288B0
loc_8128866:
	ldrh r7, [r5,#0x1e]
	add r0, r7, #1
	lsr r0, r0, #1
	strh r0, [r5,#0x1e]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #4
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	strh r7, [r5,#0x1e]
	tst r0, r0
	beq loc_81288A4
	ldrh r0, [r5,#0x24]
	lsl r0, r0, #1
	ldrh r1, [r5,#0x20]
	add r1, #1
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r1, [r5,#0x1e]
	cmp r0, r1
	ble loc_812889A
	mov r0, #0
	strb r0, [r5,#0xd]
loc_812889A:
	bl sub_8128A44
	bl sub_8128AB0
	b loc_81288B0
loc_81288A4:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_81288B0
	bl sub_8128BF0
loc_81288B0:
	bl sub_8128B4C
	bl sub_8128B98
	pop {r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8128800

	thumb_local_start
sub_81288BC:
	push {r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_81288DE
	mov r0, r5
	ldr r1, off_81288E0 // =unk_2037780 
	mov r2, #0x80
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x80
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0x30 
	strb r0, [r5]
	bl chatbox_8040818
locret_81288DE:
	pop {r7,pc}
off_81288E0: .word unk_2037780
	thumb_func_end sub_81288BC

	thumb_local_start
sub_81288E4:
	push {lr}
	bl sub_8128B4C
	bl sub_8128C20
	bl IsPaletteFadeActive // () -> zf
	beq locret_81288F8
	bl sub_811F708
locret_81288F8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81288E4

	thumb_local_start
sub_81288FC:
	push {r4-r7,lr}
	ldr r4, off_8128970 // =unk_20096E0 
	mov r6, #0
	mov r7, #0
	ldr r5, off_812894C // =off_8128950
loc_8128906:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_8128918:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_8128918
	cmp r7, #0x20 
	blt loc_8128906
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_8128970 // =unk_20096E0 
	bl decompAndCopyData // (u32 *initRefs) -> void
	// initRefs
	ldr r0, off_8128974 // =byte_8128978
	bl decompAndCopyData // (u32 *initRefs) -> void
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_8128994 // =eTextScript201BA00
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_812894C: .word off_8128950
off_8128950: .word dword_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001A40
	.word 0x20
off_8128970: .word unk_20096E0
off_8128974: .word byte_8128978
byte_8128978: .byte 0x54, 0x80, 0x6C, 0x88, 0x20, 0x0, 0x0, 0x6, 0x0, 0x3A, 0x1
	.byte 0x2, 0x4C, 0xDE, 0x73, 0x88, 0xB0, 0xC1, 0x1, 0x2, 0x0, 0x3A
	.byte 0x1, 0x2, 0xF0, 0x64, 0x6D, 0x88
off_8128994: .word eTextScript201BA00
	.word eDecompBuffer2013A00
	.word 0x886C9BD4
	.word 0x6014840
	.word eDecompBuffer2013A00
	.word 0x886C9D38
	.word 0x6014800
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word 0x0
	thumb_func_end sub_81288FC

	thumb_local_start
sub_81289C4:
	push {r4-r7,lr}
	ldr r0, off_8128A24 // =eTextScript201BF00
	ldr r1, dword_8128A28 // =0xde 
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r6, #0
	mov r4, #0
loc_81289D2:
	ldr r7, off_8128A24 // =eTextScript201BF00
	mov r0, r4
	bl sub_803CE28
	beq loc_81289EC
	mov r1, #2
	ldr r2, off_8128A2C // =byte_81286C4
	ldrb r2, [r2,r4]
	mul r1, r2
	add r7, r7, r1
	strb r4, [r7]
	strb r0, [r7,#1]
	add r6, #1
loc_81289EC:
	add r4, #1
	cmp r4, #0x6f 
	ble loc_81289D2
	strh r6, [r5,#0x1e]
	ldr r6, off_8128A24 // =eTextScript201BF00
	ldr r7, byte_8128A34 // =0xde
	mov r4, #0
loc_81289FA:
	ldrh r0, [r6]
	tst r0, r0
	bne loc_8128A18
	mov r0, r6
	add r1, r6, #2
loc_8128A04:
	ldrh r2, [r1]
	tst r2, r2
	beq loc_8128A12
	strh r2, [r0]
	mov r2, #0
	strh r2, [r1]
	add r0, #2
loc_8128A12:
	add r1, #2
	cmp r1, r7
	blt loc_8128A04
loc_8128A18:
	add r6, #2
	add r4, #1
	ldr r0, dword_8128A30 // =0x6f 
	cmp r4, r0
	blt loc_81289FA
	pop {r4-r7,pc}
off_8128A24: .word eTextScript201BF00
dword_8128A28: .word 0xDE
off_8128A2C: .word byte_81286C4
dword_8128A30: .word 0x6F
byte_8128A34: .byte 0xDE, 0xBF, 0x1, 0x2, 0x0, 0xB5, 0x19, 0x48, 0x20, 0x21
	.byte 0xD7, 0xF6, 0x4F, 0xFF, 0x0, 0xBD
	thumb_func_end sub_81289C4

	thumb_local_start
sub_8128A44:
	push {r4-r7,lr}
	ldr r0, off_8128A90 // =eTextScript201BF00
	ldr r7, off_8128A90 // =eTextScript201BF00
	ldrh r4, [r5,#0x24]
	lsl r4, r4, #1
	mov r6, #8
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_8128A8E
	sub r0, r0, r4
	cmp r0, #8
	bge loc_8128A5E
	mov r6, r0
loc_8128A5E:
	mov r5, #0
loc_8128A60:
	push {r4-r7}
	mov r1, #2
	mul r1, r4
	add r1, r1, r7
	ldrb r1, [r1]
	ldr r3, off_8128A9C // =0x280 
	mul r3, r5
	ldr r2, off_8128A98 // =byte_2017A00 
	add r2, r2, r3
	ldr r0, dword_8128AA0 // =0x6004020 
	add r3, r3, r0
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_8128AA4 // =dword_86A5D60 
	ldr r0, off_8128A94 // =byte_873D9FC 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7}
	add r4, #1
	add r5, #1
	sub r6, #1
	bne loc_8128A60
locret_8128A8E:
	pop {r4-r7,pc}
off_8128A90: .word eTextScript201BF00
off_8128A94: .word byte_873D9FC
off_8128A98: .word byte_2017A00
off_8128A9C: .word 0x280
dword_8128AA0: .word 0x6004020
off_8128AA4: .word dword_86A5D60
	.byte 0x20, 0x14, 0x0, 0x0, 0xB8, 0x0, 0x0, 0x0
	thumb_func_end sub_8128A44

	thumb_local_start
sub_8128AB0:
	push {r4-r7,lr}
	sub sp, sp, #4
	ldrh r1, [r5,#0x24]
	lsl r1, r1, #1
	ldrh r0, [r5,#0x1e]
	sub r0, r0, r1
	str r0, [sp]
	ldr r0, off_8128B24 // =unk_201C040 
	mov r7, r0
	ldr r1, off_8128B28 // =0x170 
	ldr r2, dword_8128B30 // =0x7200 
	bl HalfwordFill
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_8128B1E
	ldr r6, dword_8128B2C // =0x2e 
	add r6, r6, r7
	ldr r0, dword_8128B30 // =0x7200 
	add r0, #1
	mov r2, #4
loc_8128ADA:
	mov r4, #0
	mov r3, #0
loc_8128ADE:
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	add r0, #1
	add r4, #2
	add r3, #2
	cmp r3, #0x14
	blt loc_8128ADE
	ldr r3, [sp]
	sub r3, #1
	beq loc_8128B1E
	str r3, [sp]
	add r4, #6
	mov r3, #0
loc_8128AFA:
	strh r0, [r7,r4]
	add r0, #1
	strh r0, [r6,r4]
	add r0, #1
	add r4, #2
	add r3, #2
	cmp r3, #0x14
	blt loc_8128AFA
	ldr r3, [sp]
	sub r3, #1
	beq loc_8128B1E
	str r3, [sp]
	ldr r1, dword_8128B2C // =0x2e 
	lsl r1, r1, #1
	add r7, r7, r1
	add r6, r6, r1
	sub r2, #1
	bne loc_8128ADA
loc_8128B1E:
	add sp, sp, #4
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8128B24: .word unk_201C040
off_8128B28: .word 0x170
dword_8128B2C: .word 0x2E
dword_8128B30: .word 0x7200
	thumb_func_end sub_8128AB0

	thumb_local_start
sub_8128B34:
	push {r4-r7,lr}
	// j
	mov r0, #4
	// i
	mov r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_8128B48 // =unk_201C040 
	mov r4, #0x17
	mov r5, #8
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_8128B48: .word unk_201C040
	thumb_func_end sub_8128B34

	thumb_local_start
sub_8128B4C:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_8128B7C
	ldr r0, dword_8128B80 // =0x100000 
	ldrb r1, [r5,#0xd]
	mov r2, #1
	tst r1, r2
	beq loc_8128B62
	ldr r2, dword_8128B84 // =0x680000 
	add r0, r0, r2
loc_8128B62:
	ldrh r1, [r5,#0x20]
	mov r3, #0x10
	mul r1, r3
	ldr r2, dword_8128B88 // =0x18 
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_8128B8C // =0x20002 
	ldrb r2, [r5,#0xc]
	ldr r3, off_8128B90 // =byte_8128678
	ldr r4, dword_8128B94 // =0x40000000 
	bl sub_811FAF4
	strb r0, [r5,#0xc]
locret_8128B7C:
	pop {r4-r7,pc}
	.byte 0, 0
dword_8128B80: .word 0x100000
dword_8128B84: .word 0x680000
dword_8128B88: .word 0x18
dword_8128B8C: .word 0x20002
off_8128B90: .word byte_8128678
dword_8128B94: .word 0x40000000
	thumb_func_end sub_8128B4C

	thumb_local_start
sub_8128B98:
	push {lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_8128BE4
	ldrb r0, [r5,#0xd]
	ldrb r1, [r5,#0xe]
	cmp r0, r1
	bne loc_8128BB8
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x26]
	cmp r0, r1
	bne loc_8128BB8
	ldrh r0, [r5,#0x20]
	ldrh r1, [r5,#0x22]
	cmp r0, r1
	beq locret_8128BE4
loc_8128BB8:
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r5,#0xd]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, off_8128BEC // =eTextScript201BF00
	ldrb r0, [r1,r0]
	cmp r0, #0x2c 
	bne loc_8128BDC
	push {r0}
	bl sub_803CE28
	mov r1, r10
	ldr r1, [r1,#oToolkit_ChatboxPtr]
	str r0, [r1,#0x4c]
	pop {r0}
loc_8128BDC:
	mov r1, r0
	ldr r0, off_8128BE8 // =unk_201C1B0 
	bl chatbox_runScript_803FD78 // (void *textScript, u8 scriptIdx) -> void
locret_8128BE4:
	pop {pc}
	.balign 4, 0x00
off_8128BE8: .word unk_201C1B0
off_8128BEC: .word eTextScript201BF00
	thumb_func_end sub_8128B98

	thumb_local_start
sub_8128BF0:
	push {lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_8128C1A
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r0, r0, r1
	lsl r0, r0, #1
	ldrb r1, [r5,#0xd]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, off_8128C1C // =eTextScript201BF00
	ldrb r0, [r1,r0]
	cmp r0, #0x40 
	bne locret_8128C1A
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8128C1A:
	pop {pc}
off_8128C1C: .word eTextScript201BF00
	thumb_func_end sub_8128BF0

	thumb_local_start
sub_8128C20:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x1e]
	lsr r1, r0, #1
	lsl r2, r1, #1
	sub r2, r0, r2
	add r2, r2, r1
	mov r0, #0xe1
	lsl r0, r0, #0x10
	mov r1, #0x13
	orr r0, r1
	ldr r1, dword_8128C44 // =0x20002 
	ldrh r3, [r5,#0x24]
	mov r4, #4
	ldr r6, byte_8128C48 // =0x40
	mov r7, #0x37 
	bl sub_811FA98
	pop {r4-r7,pc}
dword_8128C44: .word 0x20002
byte_8128C48: .byte 0x40, 0xC2, 0x0, 0x0, 0x0, 0xB5, 0xA8, 0x8C, 0x0, 0x42, 0xA
	.byte 0xD0, 0xE3, 0x20, 0x0, 0x4, 0xD, 0x21, 0x8, 0x43, 0xE, 0x49
	.byte 0xEA, 0x7B, 0xE, 0x4B, 0xF, 0x4C, 0xF6, 0xF7, 0x46, 0xFF, 0xE8
	.byte 0x73, 0xA8, 0x8C, 0xE9, 0x8B, 0x4A, 0x8, 0x53, 0x0, 0xC9, 0x1A
	.byte 0x89, 0x18, 0x4, 0x39, 0xC, 0xDD, 0x88, 0x42, 0xA, 0xDA, 0xE3
	.byte 0x20, 0x0, 0x4, 0x55, 0x21, 0x8, 0x43, 0x4, 0x49, 0x2A, 0x7C
	.byte 0x4, 0x4B, 0x5, 0x4C, 0xF6, 0xF7, 0x31, 0xFF, 0x28, 0x74, 0x0
	.byte 0xBD, 0x0, 0x0, 0x2, 0x0, 0x2, 0x0
	.word byte_812869E
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20
byte_8128CA8: .byte 0x6C, 0xB3, 0x68, 0xB3, 0x64, 0xB3, 0xFF, 0xFF
byte_8128CB0: .byte 0x37, 0x0, 0x0, 0x0, 0x41, 0x1, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
	thumb_func_end sub_8128C20

	thumb_func_start sub_8128CBC
sub_8128CBC:
	push {lr}
	ldr r0, off_8128CCC // =off_8128CD0 
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_8128CCC: .word off_8128CD0
off_8128CD0: .word sub_8128CD8+1
	.word sub_8128DCC+1
	thumb_func_end sub_8128CBC

	thumb_local_start
sub_8128CD8:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x97
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0xad
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #8
	bl sub_80015FC
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_8128D98 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	bl sub_8128F04
	ldr r0, off_8128D9C // =byte_201BB60
	ldr r1, dword_8128DA0 // =0x9070 
	ldr r2, dword_8128DA4 // =0x6008e00 
	bl sub_802B4D4
	ldr r0, off_8128D9C // =byte_201BB60
	ldr r1, dword_8128DBC // =0x9060 
	ldr r2, dword_8128DC0 // =0x6008c00 
	bl sub_8129104
	bl sub_8046664 // () -> void
	// a1
	ldr r0, off_8128DC8 // =byte_8128CB0
	bl sub_80465A0 // (void *a1) -> void
	ldr r0, off_8128DB0 // =byte_201BDB8
	bl sub_802B2A0
	strh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_8128D4A
	ldr r0, off_8128D9C // =byte_201BB60
	ldr r1, dword_8128DA8 // =0x90d4 
	ldr r2, dword_8128DAC // =0x6009a80 
	bl sub_802B51C
loc_8128D4A:
	mov r0, #0
	ldr r1, off_8128DB4 // =dword_8129180 
	bl sub_8120CC8
	strb r0, [r5,#0xc]
	strb r1, [r5,#0xd]
	mov r0, #0
	strb r0, [r5,#0xf]
	mvn r0, r0
	strb r0, [r5,#0x10]
	strb r0, [r5,#0x10]
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_8128D7C
	ldr r0, off_8128DB0 // =byte_201BDB8
	ldr r1, off_8128DB8 // =eDecompBuffer2013A00
	bl sub_802B358
	ldr r0, off_8128DC4 // =eTextScript201BA00
	ldr r1, off_8128DB0 // =byte_201BDB8
	bl sub_802B438
	ldr r0, off_8128DB0 // =byte_201BDB8
	bl sub_81290A4
loc_8128D7C:
	bl sub_8128F10
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #4
	strb r0, [r5,#1]
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_8128D98: .word 0x1F40
off_8128D9C: .word byte_201BB60
dword_8128DA0: .word 0x9070
dword_8128DA4: .word 0x6008E00
dword_8128DA8: .word 0x90D4
dword_8128DAC: .word 0x6009A80
off_8128DB0: .word byte_201BDB8
off_8128DB4: .word dword_8129180
off_8128DB8: .word eDecompBuffer2013A00
dword_8128DBC: .word 0x9060
dword_8128DC0: .word 0x6008C00
off_8128DC4: .word eTextScript201BA00
off_8128DC8: .word byte_8128CB0
	thumb_func_end sub_8128CD8

	thumb_local_start
sub_8128DCC:
	push {lr}
	ldr r0, off_8128DE4 // =off_8128DE8 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {pc}
	.balign 4, 0x00
off_8128DE4: .word off_8128DE8
off_8128DE8: .word sub_8128DF4+1
	.word sub_8128E2C+1
	.word sub_8128ED4+1
	thumb_func_end sub_8128DCC

	thumb_local_start
sub_8128DF4:
	push {lr}
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_8128E14
	ldr r0, off_8128E28 // =byte_201BDB8
	ldrh r0, [r0]
	mov r1, #0
	push {r0}
	bl sub_811C2A8
	pop {r0}
	mov r1, #1
	bl sub_811DC88
	mov r0, #1
	strb r0, [r5,#3]
loc_8128E14:
	bl IsPaletteFadeActive // () -> zf
	beq loc_8128E1E
	mov r0, #4
	strb r0, [r5,#2]
loc_8128E1E:
	bl sub_8128FF0
	bl sub_812907C
	pop {pc}
off_8128E28: .word byte_201BDB8
	thumb_func_end sub_8128DF4

	thumb_local_start
sub_8128E2C:
	push {lr}
	ldrh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	ldrh r0, [r5,#0x20]
	strh r0, [r5,#0x22]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	tst r0, r0
	beq loc_8128EA4
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x26]
	cmp r0, r1
	bne loc_8128E5C
	ldrh r0, [r5,#0x20]
	ldrh r1, [r5,#0x22]
	cmp r0, r1
	bne loc_8128E64
	b loc_8128EB8
loc_8128E5C:
	ldr r0, off_8128EC4 // =byte_201BDB8
	ldr r1, off_8128EC8 // =eDecompBuffer2013A00
	bl sub_802B358
loc_8128E64:
	ldr r0, off_8128ED0 // =eTextScript201BA00
	ldr r1, off_8128EC4 // =byte_201BDB8
	bl sub_802B438
	ldr r0, off_8128EC4 // =byte_201BDB8
	bl sub_81290A4
	ldr r0, off_8128EC4 // =byte_201BDB8
	ldrh r1, [r5,#0x24]
	ldrh r2, [r5,#0x20]
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh r0, [r0,r1]
	ldr r1, dword_8128ECC // =0xffff 
	cmp r0, r1
	bne loc_8128E92
	mov r0, #0
	bl sub_811C4D8
	mov r0, #1
	bl sub_811DF0C
	b loc_8128EB8
loc_8128E92:
	mov r1, #0
	push {r0}
	bl sub_811C2A8
	pop {r0}
	mov r1, #1
	bl sub_811DC88
	b loc_8128EB8
loc_8128EA4:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_8128EB8
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strb r0, [r5,#2]
loc_8128EB8:
	bl sub_8128FF0
	bl sub_812907C
	pop {pc}
	.balign 4, 0x00
off_8128EC4: .word byte_201BDB8
off_8128EC8: .word eDecompBuffer2013A00
dword_8128ECC: .word 0xFFFF
off_8128ED0: .word eTextScript201BA00
	thumb_func_end sub_8128E2C

	thumb_local_start
sub_8128ED4:
	push {lr}
	bl sub_8128FF0
	bl sub_812907C
	bl IsPaletteFadeActive // () -> zf
	beq locret_8128EFE
	ldr r0, off_8128F00 // =unk_2037780 
	mov r1, r5
	mov r2, #0x80
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r0, #0x14
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	bl chatbox_8040818
locret_8128EFE:
	pop {pc}
off_8128F00: .word unk_2037780
	thumb_func_end sub_8128ED4

	thumb_local_start
sub_8128F04:
	push {lr}
	// initRefs
	ldr r0, off_8128F34 // =byte_8128F38
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8128F04

	thumb_local_start
sub_8128F10:
	push {r4-r7,lr}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #3
	// tileRefs
	ldr r3, off_8128F78 // =byte_201BB60
	mov r4, #0xf
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r0, #0
	mov r1, #0
	mov r2, #2
	ldr r3, off_8128F84 // =byte_201BDF8
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_8128F34: .word byte_8128F38
byte_8128F38: .byte 0x9C, 0xD5, 0x6D, 0x88, 0x20, 0x80, 0x0, 0x6
	.word eDecompBuffer2013A00
	.word comp_86D6618 + 1<<31
	.word 0x6000020
	.word eDecompBuffer2013A00
	.word dword_86D6754
	.word 0x3001960
	.word 0x20
	.word comp_86DDAD0 + 1<<31
	.word 0x201BA00
	.word 0x2013A00
	.word dword_86D6954
	.word 0x6008C00
	.word 0x20
	.word comp_86DD9B4 + 1<<31
off_8128F78: .word byte_201BB60
	.word eDecompBuffer2013A00
	.word 0x886D66A8
off_8128F84: .word byte_201BDF8
	.word eDecompBuffer2013A00
	.word byte_86DDB24
	.word unk_3001A80
	.word 0x20
	.word byte_86C9D6C
	.word byte_30016B0
	.word 0x20
	.word 0x886C9BD4
	.word 0x6016C80
	.word eDecompBuffer2013A00
	.word 0x886C9D38
	.word 0x6016E00
	.word eDecompBuffer2013A00
	.word 0x886DDB44
	.word 0x6016E40
	.word eDecompBuffer2013A00
	.word 0x886DDB7C
	.word 0x6016E80
	.word eDecompBuffer2013A00
	.word 0x886D6974
	.word unk_201C2F8
	.word eDecompBuffer2013A00
	.word dword_86C9B54
	.word unk_30019A0
	.word 0x20
	.word 0x0
	thumb_func_end sub_8128F10

	thumb_local_start
sub_8128FF0:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq locret_812900A
	mov r0, #2
	mov r1, #0x12
	mov r2, #0x20 
	mov r3, #0xc
	ldr r4, off_812900C // =byte_8128CA8
	ldr r6, dword_8129014 // =0x40000000 
	ldr r7, dword_8129010 // =0x10002 
	bl sub_8129018
locret_812900A:
	pop {r4-r7,pc}
off_812900C: .word byte_8128CA8
dword_8129010: .word 0x10002
dword_8129014: .word 0x40000000
	thumb_func_end sub_8128FF0

	thumb_local_start
sub_8129018:
	push {r4-r7,lr}
	sub sp, sp, #0x1c
	str r1, [sp]
	str r2, [sp,#4]
	str r3, [sp,#8]
	str r4, [sp,#0xc]
	str r6, [sp,#0x10]
	lsl r0, r0, #0x10
	ldr r1, [sp]
	ldr r3, [sp,#4]
	tst r3, r3
	bne loc_8129034
	mov r2, #0
	b loc_8129036
loc_8129034:
	ldrh r2, [r5,r3]
loc_8129036:
	mov r3, #0x10
	mul r2, r3
	add r1, r1, r2
	orr r0, r1
	mov r1, r7
	ldr r2, [sp,#8]
	ldrb r2, [r5,r2]
	str r2, [sp,#0x14]
	mov r3, #0xf
	and r2, r3
	ldr r3, [sp,#0xc]
	ldr r4, [sp,#0x10]
	bl sub_811FAF4
	ldr r1, [sp,#0x14]
	lsr r1, r1, #4
	sub r1, #1
	bne loc_8129064
	ldr r1, off_8129078 // =dword_8129180 
	bl sub_8120CC8
	ldr r2, [sp,#8]
	strb r0, [r5,r2]
loc_8129064:
	ldr r2, [sp,#8]
	ldrb r0, [r5,r2]
	mov r3, #0xf
	and r0, r3
	lsl r1, r1, #4
	orr r0, r1
	strb r0, [r5,r2]
	add sp, sp, #0x1c
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8129078: .word dword_8129180
	thumb_func_end sub_8129018

	thumb_local_start
sub_812907C:
	push {r4-r7,lr}
	ldr r0, dword_8129098 // =0x62 
	mov r1, #0xc
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_812909C // =0x10002 
	ldrh r2, [r5,#0x1e]
	ldrh r3, [r5,#0x24]
	mov r4, #7
	ldr r6, dword_81290A0 // =0xb370 
	mov r7, #0x48 
	bl sub_811FA98
	pop {r4-r7,pc}
dword_8129098: .word 0x62
dword_812909C: .word 0x10002
dword_81290A0: .word 0xB370
	thumb_func_end sub_812907C

	thumb_local_start
sub_81290A4:
	push {r4-r7,lr}
	ldrh r1, [r5,#0x24]
	ldrh r2, [r5,#0x20]
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	ldr r2, dword_8129100 // =0xffff 
	cmp r1, r2
	bne loc_81290C8
	mov r0, #0x10
	mov r1, #0xc
	mov r2, #3
	mov r3, #0
	mov r4, #0xa
	mov r5, #6
	bl sub_80018D0
	b locret_81290EA
loc_81290C8:
	ldr r0, off_81290EC // =unk_201C2F8 
	ldr r2, off_81290F0 // =byte_201B200
	ldr r3, dword_81290F4 // =0x600b800 
	mov r4, #0xa
	mov r5, #3
	ldr r6, off_81290F8 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #0x10
	mov r1, #0xc
	mov r2, #3
	ldr r3, off_81290FC // =byte_813565C 
	mov r4, #0xa
	mov r5, #6
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
locret_81290EA:
	pop {r4-r7,pc}
off_81290EC: .word unk_201C2F8
off_81290F0: .word byte_201B200
dword_81290F4: .word 0x600B800
off_81290F8: .word dword_86A5D60
off_81290FC: .word byte_813565C
dword_8129100: .word 0xFFFF
	thumb_func_end sub_81290A4

	thumb_local_start
sub_8129104:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	mov r7, r0
	add r7, #0x16
	ldr r3, dword_8129138 // =0x1c2 
	add r7, r7, r3
	mov r1, #0x1e
	add r4, r7, r1
	mov r5, #0
loc_8129118:
	mov r6, #0
	ldr r3, [sp]
	push {r4,r7}
loc_812911E:
	strh r3, [r7]
	add r7, #2
	add r6, #1
	cmp r6, #3
	blt loc_812911E
	pop {r4,r7}
	mov r1, #0x1e
	add r7, r7, r1
	add r5, #1
	cmp r5, #3
	blt loc_8129118
	add sp, sp, #4
	pop {r4-r7,pc}
dword_8129138: .word 0x1C2
byte_812913C: .byte 0x1C, 0x0, 0x0, 0x0, 0x1C, 0x1, 0x1, 0x0, 0x1C, 0x2, 0x1, 0x0, 0x1C
	.byte 0x3, 0x1, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_8129150: .byte 0x1C, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF
byte_8129158: .byte 0xE, 0x0, 0x0, 0x0, 0xE, 0x1, 0x1, 0x0, 0x36, 0x2, 0x0, 0x0, 0xFF, 0xFF
	.byte 0xFF, 0xFF
byte_8129168: .byte 0xE, 0x0, 0x3, 0x0, 0xE, 0x1, 0x2, 0x0, 0x36, 0x2, 0x0, 0x0, 0xFF, 0xFF
	.byte 0xFF, 0xFF
byte_8129178: .byte 0x40, 0xC2, 0x44, 0xC2, 0x48, 0xC2, 0xFF, 0xFF
dword_8129180: .word 0xFF060606
dword_8129184: .word 0xC238
byte_8129188: .byte 0x90, 0xA3, 0x92, 0xA3, 0x94, 0xA3, 0x96, 0xA3, 0x98
	.byte 0xA3, 0x9A, 0xA3, 0x9C, 0xA3, 0x9E, 0xA3, 0xA0, 0xA3
	.byte 0xA2, 0xA3, 0x91, 0xA3, 0x93, 0xA3, 0x95, 0xA3, 0x97
	.byte 0xA3, 0x99, 0xA3, 0x9B, 0xA3, 0x9D, 0xA3, 0x9F, 0xA3
	.byte 0xA1, 0xA3, 0xA3, 0xA3
byte_81291B0: .byte 0xA4, 0xA3, 0xA6, 0xA3, 0xA8, 0xA3, 0xAA, 0xA3, 0xAC
	.byte 0xA3, 0xAE, 0xA3, 0xB0, 0xA3, 0xB2, 0xA3, 0xB4, 0xA3
	.byte 0xB6, 0xA3, 0xA5, 0xA3, 0xA7, 0xA3, 0xA9, 0xA3, 0xAB
	.byte 0xA3, 0xAD, 0xA3, 0xAF, 0xA3, 0xB1, 0xA3, 0xB3, 0xA3
	.byte 0xB5, 0xA3, 0xB7, 0xA3
	thumb_func_end sub_8129104

	thumb_func_start sub_81291D8
sub_81291D8:
	push {r5,lr}
	ldr r5, off_81291E4 // =sSubmenu 
	bl sub_812A76C
	pop {r5,pc}
	.balign 4, 0x00
off_81291E4: .word sSubmenu
	thumb_func_end sub_81291D8

	thumb_func_start HandleCommMenu81291E8
HandleCommMenu81291E8:
	push {lr}
	ldr r0, off_81291F8 // =CommMenuJumpTable81291FC
	ldrb r1, [r5,#1]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.hword 0x0
off_81291F8: .word CommMenuJumpTable81291FC
CommMenuJumpTable81291FC: .word sub_8129248+1
	.word sub_81292A8+1
	.word sub_8129598+1
	.word sub_8129F04+1
	.word sub_812A76C+1
	.word sub_812A8A4+1
	.word sub_812B5C8+1
	.word byte_8130905
	.word sub_812B80C+1
	.word sub_812B874+1
	.word sub_812C2C0+1
	.word sub_812DAE4+1
	.word sub_812F094+1
	.word sub_812ABEC+1
	.word sub_812AD04+1
	.word sub_812ADFC+1
	.word sub_812AEC8+1
	.word sub_812AEE0+1
	.word sub_812AF14+1
	thumb_func_end HandleCommMenu81291E8

	thumb_func_start sub_8129248
sub_8129248:
	push {r4-r7,lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	bl ZeroFillGFX30025c0
	mov r0, #0x10
	bl sub_80015FC
	bl sub_8046664 // () -> void
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_81292A0 // =0x1f40 
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0,#0x10]
	strh r1, [r0,#0x12]
	strh r1, [r0,#0x14]
	strh r1, [r0,#0x16]
	strh r1, [r0,#0x18]
	strh r1, [r0,#0x1a]
	bl sub_812AF18
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	ldr r1, off_812929C // =eStruct200BC30 
	mov r0, #0x3c 
	strb r0, [r1,#0xc] // (byte_200BC3C - 0x200bc30)
	mov r0, #0
	ldr r1, off_81292A4 // =dword_8129180 
	bl sub_8120CC8
	strb r0, [r5,#0x17]
	strb r1, [r5,#0x18]
	mov r0, #0
	strb r0, [r5,#0x1b]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812929C: .word eStruct200BC30
dword_81292A0: .word 0x1F40
off_81292A4: .word dword_8129180
	thumb_func_end sub_8129248

	thumb_local_start
sub_81292A8:
	push {lr}
	ldr r0, off_81292B8 // =off_81292BC 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
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
	thumb_func_end sub_81292A8

	thumb_local_start
sub_81292D8:
	push {r4,lr}
	bl sub_812B504
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129336
	bl sub_8046664 // () -> void
	mov r0, #4
	strb r0, [r5,#2]
	bl sub_803EBAC
	// a1
	ldr r0, off_8129338 // =byte_8129158
	bl sub_80465A0 // (void *a1) -> void
	bl sub_812AFB0
	bl chatbox_8040818
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0
	strb r0, [r5,#0xe]
	mov r0, #0x5a 
	ldrb r1, [r5,#0xd]
	add r0, r0, r1
	mov r4, r0
	bl sub_8006DEC
	mov r1, #1
	tst r0, r1
	beq loc_8129324
	cmp r4, #0x5a 
	bne loc_8129330
	mov r4, #0x5f 
	b loc_8129330
loc_8129324:
	mov r1, #2
	tst r0, r1
	beq loc_8129330
	cmp r4, #0x5b 
	bne loc_8129330
	mov r4, #0x60 
loc_8129330:
	mov r0, r4
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
locret_8129336:
	pop {r4,pc}
off_8129338: .word byte_8129158
	thumb_func_end sub_81292D8

	thumb_local_start
sub_812933C:
	push {r4,lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_81293E8
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0xd]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_8129388
	strb r0, [r5,#0xd]
	ldr r1, off_81293F8 // =dword_81293FC 
	ldrb r0, [r1,r0]
	mov r4, r0
	bl sub_8006DEC
	mov r1, #1
	tst r0, r1
	beq loc_8129374
	cmp r4, #0x5a 
	bne loc_8129374
	mov r4, #0x5f 
	b loc_8129380
loc_8129374:
	mov r1, #2
	tst r0, r1
	beq loc_8129380
	cmp r4, #0x5b 
	bne loc_8129380
	mov r4, #0x60 
loc_8129380:
	mov r0, r4
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b loc_81293E8
loc_8129388:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_81293B8
	mov r0, #0x81
	bl sound_play // () -> void
	ldrb r0, [r5,#0xd]
	tst r0, r0
	bne loc_81293D6
	mov r0, #0
	bl eStruct200BC30_setJumpOffset00
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	strb r0, [r5,#0xe]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_81293E8
loc_81293B8:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_81293E8
	mov r0, #0x83
loc_81293C2:
	bl sound_play // () -> void
	mov r0, #0x40 
	bl sub_811FB64
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_81293E8
loc_81293D6:
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0
	mov r1, #0x21 
	strb r0, [r5,r1]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_81293E8:
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov r0, #0xd
	bl sub_812B29C
	pop {r4,pc}
off_81293F8: .word dword_81293FC
dword_81293FC: .word 0x5B5A
	thumb_func_end sub_812933C

	thumb_local_start
sub_8129400:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8129438
	bl sub_8046664 // () -> void
	mov r0, #0
	strb r0, [r5,#0xd]
	mov r0, #0xc
	strb r0, [r5,#2]
	bl sub_803EBAC
	// a1
	ldr r0, off_8129448 // =byte_8129168
	bl sub_80465A0 // (void *a1) -> void
	bl sub_812AFB0
	bl chatbox_8040818
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldrb r0, [r5,#0xd]
	ldr r1, off_812944C // =dword_8129450
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
loc_8129438:
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov r0, #0xd
	bl sub_812B29C
	pop {pc}
off_8129448: .word byte_8129168
off_812944C: .word dword_8129450
dword_8129450: .word 0x5C5D5D
	thumb_func_end sub_8129400

	thumb_local_start
sub_8129454:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_8129514
	ldrb r0, [r5,#0xd]
	cmp r0, #2
	beq loc_8129480
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0xd]
	mov r4, r3
	bl sub_811FA0C
	cmp r4, r0
	beq loc_8129480
	strb r0, [r5,#0xd]
	mov r1, #0x21 
	strb r0, [r5,r1]
	b loc_8129514
loc_8129480:
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0xd]
	lsr r3, r3, #1
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_81294B2
	lsl r0, r0, #1
	strb r0, [r5,#0xd]
	tst r0, r0
	bne loc_81294A8
	mov r1, #0x21 
	ldrb r2, [r5,r1]
	add r2, r2, r0
	strb r2, [r5,#0xd]
loc_81294A8:
	ldr r1, off_8129524 // =dword_8129528
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b loc_8129514
loc_81294B2:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_81294FA
	mov r0, #0x81
	bl sound_play // () -> void
	ldrb r0, [r5,#0xd]
	cmp r0, #1
	ble loc_81294D4
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_8129514
loc_81294D4:
	bl sub_813D960
	mov r0, #8
	ldrb r1, [r5,#0xd]
	tst r1, r1
	bne loc_81294E2
	mov r0, #4
loc_81294E2:
	bl eStruct200BC30_setJumpOffset00
	mov r0, #8
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_8129514
loc_81294FA:
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_8129514
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_8129514:
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	mov r0, #0xd
	bl sub_812B288
	pop {pc}
off_8129524: .word dword_8129528
dword_8129528: .word 0x5C5D5D
	thumb_func_end sub_8129454

	thumb_local_start
sub_812952C:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129548
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129548:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812952C

	thumb_local_start
sub_812954C:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_812956A
	bl chatbox_8040818
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #1
	bl sub_8048F9C
locret_812956A:
	pop {pc}
	thumb_func_end sub_812954C

	thumb_local_start
sub_812956C:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129594
	mov r0, #0
	strb r0, [r5,#2]
	mov r0, #1
	strb r0, [r5,#0xd]
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_8129594
	bl sub_8149644
	bl sub_8149568
locret_8129594:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812956C

	thumb_local_start
sub_8129598:
	push {lr}
	ldrb r0, [r5,#2]
	tst r0, r0
	beq loc_81295A4
	bl sub_812B504
loc_81295A4:
	ldr r0, off_81295B0 // =off_81295B4 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_81295B0: .word off_81295B4
off_81295B4: .word sub_81295D8+1
	.word sub_8129658+1
	.word sub_81297DC+1
	.word sub_8129A98+1
	.word sub_8129918+1
	.word sub_8129C28+1
	.word sub_8129C28+1
	.word sub_8129C28+1
	.word sub_8129EE4+1
	thumb_func_end sub_8129598

	thumb_local_start
sub_81295D8:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129650
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	ble loc_8129620
	bl sub_8049D42
	bne loc_8129620
	ldrb r1, [r5,#0x1b]
	mov r0, #4
	tst r0, r1
	beq loc_8129610
	mov r0, #4
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	b locret_8129650
loc_8129610:
	mov r0, #1
	bl sub_8048F9C
	mov r0, #4
	ldrb r1, [r5,#0x1b]
	orr r1, r0
	strb r1, [r5,#0x1b]
	b locret_8129650
loc_8129620:
	bl sub_812AFC8
	ldr r0, off_8129654 // =byte_812913C
	bl sub_812B1DC
	mov r0, #0xe
	bl sub_812B2C4
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	bl sub_812B530
	mov r0, #1
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x40 
	bl chatbox_set_eFlags2009F38
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129650:
	pop {pc}
	.balign 4, 0x00
off_8129654: .word byte_812913C
	thumb_func_end sub_81295D8

	thumb_local_start
sub_8129658:
	push {lr}
	ldr r0, off_812966C // =off_8129670 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0xe
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
	thumb_func_end sub_8129658

	thumb_local_start
sub_812968C:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812969E
	mov r0, #0x40 
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #4
	strb r0, [r5,#3]
locret_812969E:
	pop {pc}
	thumb_func_end sub_812968C

	thumb_local_start
sub_81296A0:
	push {lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_81296B4
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3FC
	b locret_81296D0
loc_81296B4:
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq locret_81296D0
	ldr r0, off_81296D4 // =0x110 
	bl chatbox_check_eFlags2009F38
	beq locret_81296D0
	mov r0, #0x20 
	strb r0, [r5,#2]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_81296D0:
	pop {pc}
	.balign 4, 0x00
off_81296D4: .word 0x110
	thumb_func_end sub_81296A0

	thumb_local_start
sub_81296D8:
	push {r4,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #3
	mov r2, #1
	ldrb r3, [r5,#0xe]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_81296F8
	strb r0, [r5,#0xe]
	bl sub_812B3FC
	b locret_8129734
loc_81296F8:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_812971A
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0xc
	strb r0, [r5,#3]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	b locret_8129734
loc_812971A:
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_8129734
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0x18
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129734:
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_81296D8

	thumb_local_start
sub_8129738:
	push {lr}
	mov r0, #3
	bl sub_812B318
	tst r0, r0
	bne locret_8129754
	mov r0, #3
	strb r0, [r5,#0x1d]
	ldrb r0, [r5,#0xe]
	bl sub_81325E4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
locret_8129754:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8129738

	thumb_local_start
sub_8129758:
	push {lr}
	ldrb r0, [r5,#0x1d]
	bl sub_812B318
	mov r4, r2
	tst r1, r1
	beq loc_812976A
	bl sub_812B218
loc_812976A:
	cmp r4, #3
	bne locret_812977A
	mov r0, #0x14
	strb r0, [r5,#3]
	mov r0, #0
	mov r1, #0
	bl sub_811A610
locret_812977A:
	pop {pc}
	thumb_func_end sub_8129758

	thumb_local_start
sub_812977C:
	push {lr}
	mov r6, #0
	ldr r4, off_81297BC // =unk_20251A0 
loc_8129782:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_81297BA
	add r6, #4
	cmp r6, #0xc
	blt loc_8129782
	ldr r1, off_81297BC // =unk_20251A0 
	mov r6, #0
loc_812979A:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, #0xc
	blt loc_812979A
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3FC
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_81297BA:
	pop {pc}
off_81297BC: .word unk_20251A0
	thumb_func_end sub_812977C

	thumb_local_start
sub_81297C0:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_81297D8
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
locret_81297D8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_81297C0

	thumb_local_start
sub_81297DC:
	push {lr}
	ldr r0, off_81297F0 // =off_81297F4 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0x12
	bl sub_812B25C
	pop {pc}
off_81297F0: .word off_81297F4
off_81297F4: .word sub_8129808+1
	.word sub_812982C+1
	.word sub_8129870+1
	.word sub_81298D4+1
	.word sub_81298F8+1
	thumb_func_end sub_81297DC

	thumb_local_start
sub_8129808:
	push {r4,lr}
	ldrb r0, [r5,#0x1d]
	bl sub_812B318
	mov r4, r2
	tst r1, r1
	beq loc_812981A
	bl sub_812B218
loc_812981A:
	cmp r4, #3
	bne locret_812982A
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #1
	mov r1, #0
	bl sub_811A610
locret_812982A:
	pop {r4,pc}
	thumb_func_end sub_8129808

	thumb_local_start
sub_812982C:
	push {lr}
	mov r6, #0
	ldr r4, off_812986C // =unk_20251A0 
loc_8129832:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_812986A
	add r6, #4
	cmp r6, #0xc
	blt loc_8129832
	ldr r1, off_812986C // =unk_20251A0 
	mov r6, #0
loc_812984A:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, #0xc
	blt loc_812984A
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B39C
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_812986A:
	pop {pc}
off_812986C: .word unk_20251A0
	thumb_func_end sub_812982C

	thumb_local_start
sub_8129870:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #3
	mov r2, #1
	ldrb r3, [r5,#0x12]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_8129890
	strb r0, [r5,#0x12]
	bl sub_812B39C
	b locret_81298D2
loc_8129890:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_81298B2
	mov r0, #0x81
	bl sound_play // () -> void
	mov r0, #0xc
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
	b locret_81298D2
loc_81298B2:
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_81298D2
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
locret_81298D2:
	pop {pc}
	thumb_func_end sub_8129870

	thumb_local_start
sub_81298D4:
	push {r4,lr}
	mov r0, #3
	bl sub_812B318
	tst r0, r0
	bne locret_81298F6
	mov r0, #3
	strb r0, [r5,#0x1d]
	mov r0, #2
	mov r1, #0x20 
	strb r0, [r5,r1]
	ldrb r0, [r5,#0x12]
	bl sub_81325F4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
locret_81298F6:
	pop {r4,pc}
	thumb_func_end sub_81298D4

	thumb_local_start
sub_81298F8:
	push {lr}
	mov r0, #3
	bl sub_812B318
	tst r0, r0
	bne locret_8129916
	mov r0, #3
	strb r0, [r5,#0x1d]
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x12]
	strb r0, [r5,#0x13]
locret_8129916:
	pop {pc}
	thumb_func_end sub_81298F8

	thumb_local_start
sub_8129918:
	push {lr}
	ldr r0, off_812992C // =off_8129930 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0x12
	bl sub_812B25C
	pop {pc}
off_812992C: .word off_8129930
off_8129930: .word sub_8129948+1
	.word sub_812996C+1
	.word sub_81299B0+1
	.word sub_8129A20+1
	.word sub_8129A28+1
	.word sub_8129A54+1
	thumb_func_end sub_8129918

	thumb_local_start
sub_8129948:
	push {lr}
	ldrb r0, [r5,#0x1d]
	bl sub_812B318
	mov r4, r2
	tst r1, r1
	beq loc_812995A
	bl sub_812B218
loc_812995A:
	cmp r4, #3
	bne locret_812996A
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #3
	mov r1, #0
	bl sub_811A610
locret_812996A:
	pop {pc}
	thumb_func_end sub_8129948

	thumb_local_start
sub_812996C:
	push {lr}
	mov r6, #0
	ldr r4, off_81299AC // =unk_20251A0 
loc_8129972:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_81299AA
	add r6, #4
	cmp r6, #0xc
	blt loc_8129972
	ldr r1, off_81299AC // =unk_20251A0 
	mov r6, #0
loc_812998A:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, #0xc
	blt loc_812998A
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3CC
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_81299AA:
	pop {pc}
off_81299AC: .word unk_20251A0
	thumb_func_end sub_812996C

	thumb_local_start
sub_81299B0:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #3
	mov r2, #1
	ldrb r3, [r5,#0x12]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_81299D0
	strb r0, [r5,#0x12]
	bl sub_812B3CC
	b locret_8129A1C
loc_81299D0:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_81299FC
	mov r0, #0x81
	bl sound_play // () -> void
	ldrb r0, [r5,#0x12]
	cmp r0, #1
	bne loc_81299F6
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0xf2
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_81299F6
	mov r0, #5
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b locret_8129A1C
loc_81299F6:
	bl sub_812B414
	b locret_8129A1C
loc_81299FC:
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_8129A1C
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
locret_8129A1C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_81299B0

	thumb_local_start
sub_8129A20:
	push {lr}
	bl sub_81298F8
	pop {pc}
	thumb_func_end sub_8129A20

	thumb_local_start
sub_8129A28:
	push {lr}
	ldrb r0, [r5,#0x1d]
	bl sub_812B318
	mov r4, r2
	tst r1, r1
	beq loc_8129A3A
	bl sub_812B218
loc_8129A3A:
	cmp r4, #3
	bne locret_8129A52
	mov r0, #0x14
	strb r0, [r5,#3]
	mov r0, #3
	mov r1, #0
	bl sub_811A610
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129A52:
	pop {pc}
	thumb_func_end sub_8129A28

	thumb_local_start
sub_8129A54:
	push {lr}
	mov r6, #0
	ldr r4, off_8129A94 // =unk_20251A0 
loc_8129A5A:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_8129A92
	add r6, #4
	cmp r6, #0xc
	blt loc_8129A5A
	ldr r1, off_8129A94 // =unk_20251A0 
	mov r6, #0
loc_8129A72:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, #0xc
	blt loc_8129A72
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3FC
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_8129A92:
	pop {pc}
off_8129A94: .word unk_20251A0
	thumb_func_end sub_8129A54

	thumb_local_start
sub_8129A98:
	push {lr}
	ldr r0, off_8129AAC // =off_8129AB0 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0x12
	bl sub_812B25C
	pop {pc}
off_8129AAC: .word off_8129AB0
off_8129AB0: .word sub_8129AC8+1
	.word sub_8129AF0+1
	.word sub_8129B34+1
	.word sub_8129B90+1
	.word sub_8129BB0+1
	.word sub_8129BDC+1
	thumb_func_end sub_8129A98

	thumb_local_start
sub_8129AC8:
	push {r4,lr}
	ldrb r0, [r5,#0x1d]
	bl sub_812B318
	mov r4, r2
	tst r1, r1
	beq locret_8129AEC
	cmp r4, #2
	beq loc_8129AE0
	bl sub_812B218
	b locret_8129AEC
loc_8129AE0:
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #2
	mov r1, #0
	bl sub_811A610
locret_8129AEC:
	pop {r4,pc}
	.byte 0, 0
	thumb_func_end sub_8129AC8

	thumb_local_start
sub_8129AF0:
	push {r4-r7,lr}
	mov r6, #0
	ldr r4, off_8129B30 // =unk_20251A0 
loc_8129AF6:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_8129B2E
	add r6, #4
	cmp r6, #8
	blt loc_8129AF6
	ldr r1, off_8129B30 // =unk_20251A0 
	mov r6, #0
loc_8129B0E:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, #8
	blt loc_8129B0E
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3B4
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_8129B2E:
	pop {r4-r7,pc}
off_8129B30: .word unk_20251A0
	thumb_func_end sub_8129AF0

	thumb_local_start
sub_8129B34:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129B8E
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #2
	mov r2, #1
	ldrb r3, [r5,#0x12]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_8129B5A
	strb r0, [r5,#0x12]
	bl sub_812B3B4
	b locret_8129B8E
loc_8129B5A:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_8129B6E
	mov r0, #0x81
	bl sound_play // () -> void
	bl sub_812B414
	b locret_8129B8E
loc_8129B6E:
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_8129B8E
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
locret_8129B8E:
	pop {pc}
	thumb_func_end sub_8129B34

	thumb_local_start
sub_8129B90:
	push {lr}
	mov r0, #2
	bl sub_812B318
	tst r0, r0
	bne locret_8129BAE
	mov r0, #3
	strb r0, [r5,#0x1d]
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x12]
	strb r0, [r5,#0x13]
locret_8129BAE:
	pop {pc}
	thumb_func_end sub_8129B90

	thumb_local_start
sub_8129BB0:
	push {r4,lr}
	mov r4, #2
loc_8129BB4:
	bl sub_812B218
	sub r4, #1
	bgt loc_8129BB4
	mov r0, #0x14
	strb r0, [r5,#3]
	mov r1, #0x10
	ldrb r0, [r5,#0x1b]
	orr r0, r1
	strb r0, [r5,#0x1b]
	mov r0, #2
	mov r1, #0
	bl sub_811A610
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_8129BB0

	thumb_local_start
sub_8129BDC:
	push {r4-r7,lr}
	mov r6, #0
	ldr r4, off_8129C24 // =unk_20251A0 
loc_8129BE2:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_8129C22
	add r6, #4
	cmp r6, #8
	blt loc_8129BE2
	ldr r1, off_8129C24 // =unk_20251A0 
	mov r6, #0
loc_8129BFA:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, #8
	blt loc_8129BFA
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_812B3B4
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_8129C22:
	pop {r4-r7,pc}
off_8129C24: .word unk_20251A0
	thumb_func_end sub_8129BDC

	thumb_local_start
sub_8129C28:
	push {lr}
	ldr r0, off_8129C3C // =off_8129C40 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #0x13
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
	thumb_func_end sub_8129C28

	thumb_local_start
sub_8129C74:
	push {r4,lr}
	ldrb r0, [r5,#0x1d]
	bl sub_812B318
	mov r3, #0x20 
	ldrb r0, [r5,r3]
	cmp r0, #2
	bne loc_8129C8A
	mov r4, r2
	tst r1, r1
	beq locret_8129CB2
loc_8129C8A:
	mov r4, r2
	cmp r4, r0
	beq loc_8129C96
	bl sub_812B218
	b locret_8129CB2
loc_8129C96:
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #4
	ldrb r1, [r5,#2]
	cmp r1, #0x14
	beq loc_8129CAC
	mov r0, #5
	ldrb r1, [r5,#2]
	cmp r1, #0x18
	beq loc_8129CAC
	mov r0, #7
loc_8129CAC:
	mov r1, #0
	bl sub_811A610
locret_8129CB2:
	pop {r4,pc}
	thumb_func_end sub_8129C74

	thumb_local_start
sub_8129CB4:
	push {r4-r7,lr}
	mov r3, #0x20 
	ldrb r7, [r5,r3]
	lsl r7, r7, #2
	mov r6, #0
	ldr r4, off_8129CFC // =unk_20251A0 
loc_8129CC0:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_8129CF8
	add r6, #4
	cmp r6, r7
	blt loc_8129CC0
	ldr r1, off_8129CFC // =unk_20251A0 
	mov r6, #0
loc_8129CD8:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, r7
	blt loc_8129CD8
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3E4
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_8129CF8:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8129CFC: .word unk_20251A0
	thumb_func_end sub_8129CB4

	thumb_local_start
sub_8129D00:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r2, #0x20 
	ldrb r1, [r5,r2]
	mov r2, #1
	ldrb r3, [r5,#0x13]
	mov r4, r3
	bl sub_811FA22
	cmp r4, r0
	beq loc_8129D22
	strb r0, [r5,#0x13]
	bl sub_812B3E4
	b locret_8129D56
loc_8129D22:
	mov r0, #1
	bl isJoystickIRQActive
	beq loc_8129D36
	mov r0, #0x81
	bl sound_play // () -> void
	bl sub_812B414
	b locret_8129D56
loc_8129D36:
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_8129D56
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
locret_8129D56:
	pop {pc}
	thumb_func_end sub_8129D00

	thumb_local_start
sub_8129D58:
	push {lr}
	mov r3, #0x20 
	ldrb r0, [r5,r3]
	bl sub_812B318
	tst r0, r0
	bne locret_8129D76
	mov r0, #3
	strb r0, [r5,#0x1d]
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x13]
locret_8129D76:
	pop {pc}
	thumb_func_end sub_8129D58

	thumb_local_start
sub_8129D78:
	push {r4,lr}
	mov r3, #0x20 
	ldrb r4, [r5,r3]
loc_8129D7E:
	bl sub_812B218
	sub r4, #1
	bgt loc_8129D7E
	mov r1, #0x14
	ldrb r0, [r5,#3]
	cmp r0, #0x2c 
	bne loc_8129D92
	mov r1, #0x30 
	b loc_8129D98
loc_8129D92:
	cmp r0, #0x20 
	bne loc_8129D98
	mov r1, #0x24 
loc_8129D98:
	strb r1, [r5,#3]
	mov r0, #4
	ldrb r1, [r5,#2]
	cmp r1, #0x14
	beq loc_8129DAC
	mov r0, #5
	ldrb r1, [r5,#2]
	cmp r1, #0x18
	beq loc_8129DAC
	mov r0, #7
loc_8129DAC:
	mov r1, #0
	bl sub_811A610
	mov r1, #0x10
	ldrb r0, [r5,#0x1b]
	orr r0, r1
	strb r0, [r5,#0x1b]
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4,pc}
	thumb_func_end sub_8129D78

	thumb_local_start
sub_8129DC4:
	push {r4-r7,lr}
	bl sub_812B5AC
	mov r3, #0x20 
	ldrb r7, [r5,r3]
	lsl r7, r7, #2
	mov r6, #0
	ldr r4, off_8129E24 // =unk_20251A0 
loc_8129DD4:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_8129E20
	add r6, #4
	cmp r6, r7
	blt loc_8129DD4
	ldr r1, off_8129E24 // =unk_20251A0 
	mov r6, #0
loc_8129DEC:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, r7
	blt loc_8129DEC
	ldrb r0, [r5,#3]
	cmp r0, #0x30 
	bne loc_8129E14
	mov r0, #0x28 
	strb r0, [r5,#3]
	bl sub_812B3E4
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
	b loc_8129E18
loc_8129E14:
	mov r0, #0x18
	strb r0, [r5,#3]
loc_8129E18:
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129E20:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8129E24: .word unk_20251A0
	thumb_func_end sub_8129DC4

	thumb_local_start
sub_8129E28:
	push {r4,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129E42
	ldrh r0, [r5,#0x22]
	mov r1, #0xff
	and r0, r1
	ldr r1, off_8129E44 // =byte_8129E48
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x1c
	strb r0, [r5,#3]
locret_8129E42:
	pop {r4,pc}
off_8129E44: .word byte_8129E48
byte_8129E48: .byte 0x0, 0x50, 0x51, 0x52, 0x0, 0x53, 0x0, 0x0, 0x0, 0x30, 0x0, 0x0
	thumb_func_end sub_8129E28

	thumb_local_start
sub_8129E54:
	push {lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_8129E78
	ldrh r0, [r5,#0x22]
	mov r1, #0xff
	and r0, r1
	cmp r0, #9
	beq locret_8129E78
	mov r0, #8
	strb r0, [r5,#3]
	bl sub_812B3E4
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_8129E78:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8129E54

	thumb_local_start
sub_8129E7C:
	push {r4-r7,lr}
	bl sub_812B5AC
	mov r3, #0x20 
	ldrb r7, [r5,r3]
	lsl r7, r7, #2
	mov r6, #0
	ldr r4, off_8129EC8 // =unk_20251A0 
loc_8129E8C:
	ldr r0, [r4,r6]
	mov r1, #1
	lsl r1, r1, #0x1f
	bic r0, r1
	ldrb r0, [r0,#7]
	tst r0, r0
	bne locret_8129EC4
	add r6, #4
	cmp r6, r7
	blt loc_8129E8C
	ldr r1, off_8129EC8 // =unk_20251A0 
	mov r6, #0
loc_8129EA4:
	ldr r0, [r1,r6]
	mov r2, #1
	lsl r2, r2, #0x1f
	bic r0, r2
	str r0, [r1,r6]
	add r6, #4
	cmp r6, r7
	blt loc_8129EA4
	mov r0, #0x28 
	strb r0, [r5,#3]
	bl sub_812B3FC
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_8129EC4:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8129EC8: .word unk_20251A0
	thumb_func_end sub_8129E7C

	thumb_local_start
sub_8129ECC:
	push {r4-r7,lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129EE0
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #1
	ldrb r1, [r5,#0x1b]
	bic r1, r0
	strb r1, [r5,#0x1b]
locret_8129EE0:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_8129ECC

	thumb_local_start
sub_8129EE4:
	push {lr}
	bl sub_812B504
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_8129F00
	mov r0, #4
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
locret_8129F00:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_8129EE4

	thumb_local_start
sub_8129F04:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	ldr r1, off_8129F18 // =off_8129F1C 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	bl sub_812B26C
	pop {pc}
off_8129F18: .word off_8129F1C
off_8129F1C: .word sub_8129F28+1
	.word sub_8129FE0+1
	.word sub_8129FE0+1
	thumb_func_end sub_8129F04

	thumb_local_start
sub_8129F28:
	push {lr}
	ldr r0, off_8129F3C // =off_8129F40 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_812B504
	pop {pc}
	.balign 4, 0x00
off_8129F3C: .word off_8129F40
off_8129F40: .word sub_8129F48+1
	.word sub_8129F88+1
	thumb_func_end sub_8129F28

	thumb_local_start
sub_8129F48:
	push {lr}
	bl start_8000288
	mov r0, #4
	strb r0, [r5,#2]
	bl sub_803DE88
	bl sub_803DEAC
	mov r0, #0x10
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_803DCE8
	bl sub_803EF60
	bl sub_803EA78
	ldr r0, dword_8129F80 // =0x42523545 
	ldr r1, dword_8129F84 // =0x2000 
	mov r2, #0
	bl sub_803DCD8
	bl sub_81322E8
	pop {pc}
	.balign 4, 0x00
dword_8129F80: .word 0x42523545
dword_8129F84: .word 0x2000
	thumb_func_end sub_8129F48

	thumb_local_start
sub_8129F88:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	bne loc_8129F98
	mov r0, #0
	strb r0, [r5,#2]
	b loc_8129F9C
loc_8129F98:
	cmp r0, #2
	beq loc_8129FCE
loc_8129F9C:
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_8129FDC
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5,#1]
	ldrb r0, [r5,#0xe]
	tst r0, r0
	bne loc_8129FC2
	ldrb r0, [r5,#0x12]
	bl sub_81325F4
	strb r0, [r5,#2]
	mov r0, #4
	strb r0, [r5,#3]
	b locret_8129FDC
loc_8129FC2:
	bl sub_81325E4
	strb r0, [r5,#2]
	mov r0, #4
	strb r0, [r5,#3]
	b locret_8129FDC
loc_8129FCE:
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strh r0, [r5,#0x28]
	bl sub_8132398
locret_8129FDC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8129F88

	thumb_local_start
sub_8129FE0:
	push {lr}
	ldr r0, off_8129FF0 // =off_8129FF4 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_8129FF0: .word off_8129FF4
off_8129FF4: .word sub_812A008+1
	.word sub_812A028+1
	.word sub_812A058+1
	.word sub_812A14C+1
	.word sub_812A0CC+1
	thumb_func_end sub_8129FE0

	thumb_local_start
sub_812A008:
	push {lr}
	bl sub_812B504
	bl start_800027C
	thumb_func_end sub_812A008

	bl sub_81465BC
	tst r0, r0
	beq locret_812A026
	bl sub_803DE88
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #3
	strh r0, [r5,#0x28]
locret_812A026:
	pop {pc}
	thumb_local_start
sub_812A028:
	push {lr}
	bl sub_812B504
	ldrh r0, [r5,#0x28]
	sub r0, #1
	strh r0, [r5,#0x28]
	bne loc_812A048
	mov r0, #0x44 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	mov r0, #5
	strb r0, [r5,#0x10]
	mov r0, #0x5e 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
loc_812A048:
	bl sub_813D648
	bne locret_812A056
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #8
	strb r0, [r5,#2]
locret_812A056:
	pop {pc}
	thumb_func_end sub_812A028

	thumb_local_start
sub_812A058:
	push {r4,lr}
	bl sub_812B504
	bl sub_8146588
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	beq loc_812A088
	bl sub_8049D98
	ldr r0, off_812A0C4 // =unk_201FD20 
	ldr r1, off_812A0C8 // =unk_201FD40 
	bl sub_8049DA0
	ldr r0, off_812A0C4 // =unk_201FD20 
	bl sub_814695C
	bl sub_8049D7C
	mov r1, r0
	ldr r0, off_812A0C8 // =unk_201FD40 
	bl sub_81469BC
loc_812A088:
	bl sub_81465BC
	tst r0, r0
	bne loc_812A09C
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	b locret_812A0C2
loc_812A09C:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812A0B8
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	strh r0, [r5,#0x24]
	b locret_812A0C2
loc_812A0B8:
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	strh r0, [r5,#0x24]
locret_812A0C2:
	pop {r4,pc}
off_812A0C4: .word unk_201FD20
off_812A0C8: .word unk_201FD40
	thumb_func_end sub_812A058

	thumb_local_start
sub_812A0CC:
	push {lr}
	ldr r0, off_812A0DC // =off_812A0E0 
	ldrh r1, [r5,#0x24]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812A0DC: .word off_812A0E0
off_812A0E0: .word sub_812A0E8+1
	.word sub_812A134+1
	thumb_func_end sub_812A0CC

	thumb_local_start
sub_812A0E8:
	push {lr}
	bl sub_812B504
	bl IsPaletteFadeActive // () -> zf
	beq locret_812A12A
	mov r0, #1
	bl sub_813D90C
	mov r0, #0xc
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_803DCE8
	ldr r0, dword_812A12C // =0x42523545 
	ldr r1, dword_812A130 // =0x2000 
	mov r2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_803EF60
	mov r0, #0
	bl sub_8048F9C
	mov r1, r10
	ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
	mov r0, #0x28 
	strb r0, [r1]
	mov r0, #4
	strh r0, [r5,#0x24]
locret_812A12A:
	pop {pc}
dword_812A12C: .word 0x42523545
dword_812A130: .word 0x2000
	thumb_func_end sub_812A0E8

	thumb_local_start
sub_812A134:
	push {lr}
	push {r5}
	ldr r5, off_812A148 // =byte_200A290 
	bl cb_8048FD4
	pop {r5}
	bl sub_812A1D4
	pop {pc}
	.balign 4, 0x00
off_812A148: .word byte_200A290
	thumb_func_end sub_812A134

	thumb_local_start
sub_812A14C:
	push {lr}
	ldr r0, off_812A15C // =off_812A160 
	ldrh r1, [r5,#0x24]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812A15C: .word off_812A160
off_812A160: .word sub_812A168+1
	.word sub_812A1C4+1
	thumb_func_end sub_812A14C

	thumb_local_start
sub_812A168:
	push {lr}
	bl sub_812B504
	bl IsPaletteFadeActive // () -> zf
	beq locret_812A1B6
	mov r0, #1
	bl sub_813D90C
	mov r0, #0xc
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_803DCE8
	ldr r0, dword_812A1B8 // =0x42523545 
	ldr r1, dword_812A1BC // =0x2000 
	mov r2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_8132664
	bl sub_8132670
	ldr r1, off_812A1C0 // =byte_2023BC0 
	strb r0, [r1]
	bl sub_803EF60
	mov r0, #0
	bl sub_81326D4
	mov r1, r10
	ldr r1, [r1,#oToolkit_MainJumptableIndexPtr]
	mov r0, #0x28 
	strb r0, [r1]
	mov r0, #4
	strh r0, [r5,#0x24]
locret_812A1B6:
	pop {pc}
dword_812A1B8: .word 0x42523545
dword_812A1BC: .word 0x2000
off_812A1C0: .word byte_2023BC0
	thumb_func_end sub_812A168

	thumb_local_start
sub_812A1C4:
	push {lr}
	bl sub_812A1D4
	bl sub_8132764
	pop {pc}
	.word byte_200A290
	thumb_func_end sub_812A1C4

	thumb_local_start
sub_812A1D4:
	push {lr}
	bl sub_803C620
	tst r1, r1
	bne loc_812A200
	tst r0, r0
	beq loc_812A200
	cmp r0, #2
	beq loc_812A1F6
	mov r0, #0x30 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x48 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	pop {pc}
loc_812A1F6:
	bl sub_813D978
	bl sub_812B590
	pop {pc}
loc_812A200:
	bl eStruct200BC30_getJumpOffset00
	ldr r1, off_812A210 // =dword_812A214 
	ldr r1, [r1,r0]
	mov lr, pc
	bx r1
	pop {pc}
	.byte 0, 0
off_812A210: .word dword_812A214
dword_812A214: .word 0x0
	.word sub_812A224+1
	.word sub_812A4DC+1
	.word byte_200BC50
	thumb_func_end sub_812A1D4

	thumb_local_start
sub_812A224:
	push {lr}
	ldr r0, off_812A234 // =off_812A238 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812A234: .word off_812A238
off_812A238: .word sub_812A240+1
	.word sub_812A27C+1
	thumb_func_end sub_812A224

	thumb_local_start
sub_812A240:
	push {lr}
	mov r0, #1
	bl sub_813D90C
	bl sub_8147350
	mov r0, #0xc
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_803DCE8
	ldr r0, dword_812A274 // =0x42523545 
	ldr r1, dword_812A278 // =0x2000 
	mov r2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_803EF60
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0xc]
	pop {pc}
dword_812A274: .word 0x42523545
dword_812A278: .word 0x2000
	thumb_func_end sub_812A240

	thumb_local_start
sub_812A27C:
	push {lr}
	bl sub_812B574
	ldr r1, off_812A290 // =off_812A294 
	ldrb r2, [r5,#0xc]
	ldr r1, [r1,r2]
	mov lr, pc
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
	thumb_func_end sub_812A27C

	thumb_local_start
sub_812A2B4:
	push {lr}
	mov r0, #0x40 
	bl sub_803CB18
	bne loc_812A2E4
	bl IsPaletteFadeActive // () -> zf
	beq locret_812A2E8
	mov r0, #2
	bl isJoystickIRQActive
	beq locret_812A2E8
	mov r0, #0x83
	bl sound_play // () -> void
	bl sub_813D978
	mov r0, #0x14
	strb r0, [r5,#0xc]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_812A2E8
loc_812A2E4:
	mov r0, #4
	strb r0, [r5,#0xc]
locret_812A2E8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812A2B4

	thumb_local_start
sub_812A2EC:
	push {r4-r7,lr}
	bl sub_81468BC
	mov r4, r0
	cmp r0, #2
	blt locret_812A338
	bl sub_8049D98
	mov r0, #1
	bl sub_81468C8
	mov r6, r0
	mov r0, #1
	bl sub_81468E0
	mov r7, r0
	mov r0, r6
	ldr r1, off_812A340 // =unk_201FD60 
	mov r2, r7
	ldr r3, off_812A344 // =unk_201FD80 
	bl sub_8049DC4
	mov r0, r7
	bl sub_8146724
	ldrh r0, [r0]
	ldr r1, off_812A348 // =word_2023BB0 
	strh r0, [r1]
	mov r0, r7
	bl sub_8146738
	ldr r1, off_812A34C // =byte_2023BC8 
	strb r0, [r1]
	mov r0, #0x2e 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #8
	strb r0, [r5,#0xc]
locret_812A338:
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word byte_200AF80
off_812A340: .word unk_201FD60
off_812A344: .word unk_201FD80
off_812A348: .word word_2023BB0
off_812A34C: .word byte_2023BC8
	thumb_func_end sub_812A2EC

	thumb_local_start
sub_812A350:
	push {r4-r7,lr}
	bl sub_813D60C
	beq loc_812A360
	bl sub_81468BC
	cmp r0, #2
	bge loc_812A384
loc_812A360:
	mov r4, #0x29 
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #4
	beq loc_812A36E
	mov r4, #0x2f 
loc_812A36E:
	mov r0, r4
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #4
	bl sub_803CB00
	mov r0, #0x18
	strb r0, [r5,#0xc]
	bl sub_813D978
	b locret_812A3B8
loc_812A384:
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq locret_812A3B8
	bl chatbox_8045F4C
	tst r0, r0
	beq loc_812A3AE
	mov r0, #4
	bl sub_803CB00
	mov r0, #0x18
	strb r0, [r5,#0xc]
	mov r0, #0x2a 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	ldr r0, off_812A3BC // =byte_200AF80 
	mov r1, #2
	bl sub_8146E5C
	b locret_812A3B8
loc_812A3AE:
	mov r0, #0xc
	strb r0, [r5,#0xc]
	mov r0, #4
	bl sub_803CB00
locret_812A3B8:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812A3BC: .word byte_200AF80
	.word unk_201FD20
	.word 0x110
	thumb_func_end sub_812A350

	thumb_local_start
sub_812A3C8:
	push {lr}
	bl sub_813D60C
	bne loc_812A3E8
	bl sub_813D978
	mov r0, #0x3c 
	strb r0, [r5,#1]
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #5
	strb r0, [r5,#0x10]
	mov r0, #0x24 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b locret_812A3F8
loc_812A3E8:
	mov r0, #0x10
	bl sub_803CB18
	beq locret_812A3F8
	mov r0, #0x1c
	strb r0, [r5,#0xc]
	mov r0, #8
	strh r0, [r5,#0x28]
locret_812A3F8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812A3C8

	thumb_local_start
sub_812A3FC:
	push {lr}
	bl sub_813D60C
	bne locret_812A420
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_812A414
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812A420
loc_812A414:
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x14
	strb r0, [r5,#0xc]
locret_812A420:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812A3FC

	thumb_local_start
sub_812A424:
	push {lr}
	bl sub_813D60C
	bne locret_812A488
	bl IsPaletteFadeActive // () -> zf
	beq locret_812A488
	mov r0, #0
	bl sub_811B010
	mov r0, #1
	bl sub_811B010
	bl sub_8129248
	bl sub_812AFC8
	bl sub_812B530
	mov r0, #8
	strb r0, [r5,#1]
	// memBlock
	ldr r0, off_812A48C // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0xe]
	tst r0, r0
	bne loc_812A470
	ldrb r0, [r5,#0x12]
	bl sub_81325F4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	b loc_812A47A
loc_812A470:
	bl sub_81325E4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
loc_812A47A:
	// a1
	ldr r0, off_812A490 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_812A488:
	pop {pc}
	.balign 4, 0x00
off_812A48C: .word unk_20251A0
off_812A490: .word byte_8129150
	thumb_func_end sub_812A424

	thumb_local_start
sub_812A494:
	push {lr}
	bl sub_813D60C
	bne locret_812A4A8
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812A4A8
	mov r0, #0x10
	strb r0, [r5,#0xc]
locret_812A4A8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812A494

	thumb_local_start
sub_812A4AC:
	push {lr}
	ldrh r0, [r5,#0x28]
	sub r0, #1
	strh r0, [r5,#0x28]
	bne locret_812A4DA
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strh r0, [r5,#0x28]
	bl sub_8132398
	bl sub_803EA78
	bl sub_803EA50
	tst r0, r0
	bne loc_812A4D6
	bl sub_8146E60
	b locret_812A4DA
loc_812A4D6:
	bl sub_8148540
locret_812A4DA:
	pop {pc}
	thumb_func_end sub_812A4AC

	thumb_local_start
sub_812A4DC:
	push {lr}
	ldr r0, off_812A4F0 // =off_812A4F4 
	ldrb r1, [r5,#3]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	mov r0, #1
	bl sub_803CB0C
	pop {pc}
off_812A4F0: .word off_812A4F4
off_812A4F4: .word sub_812A4FC+1
	.word sub_812A540+1
	thumb_func_end sub_812A4DC

	thumb_local_start
sub_812A4FC:
	push {lr}
	mov r0, #1
	bl sub_813D90C
	bl sub_8147F98
	mov r0, #0xc
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_803DCE8
	ldr r0, dword_812A538 // =0x42523545 
	ldr r1, dword_812A53C // =0x2000 
	mov r2, #0
	bl sub_803DCD8
	bl sub_81322E8
	bl sub_803EF60
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0xc]
	mov r0, #1
	bl sub_803CB00
	pop {pc}
	.balign 4, 0x00
dword_812A538: .word 0x42523545
dword_812A53C: .word 0x2000
	thumb_func_end sub_812A4FC

	thumb_local_start
sub_812A540:
	push {lr}
	bl sub_8148224
	ldr r1, off_812A554 // =off_812A558 
	ldrb r2, [r5,#0xc]
	ldr r1, [r1,r2]
	mov lr, pc
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
	thumb_func_end sub_812A540

	thumb_local_start
sub_812A574:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq loc_812A59C
	bl sub_8048FC4
	cmp r1, #0x1c
	bne loc_812A59C
	mov r0, #2
	bl isJoystickIRQActive
	beq loc_812A59C
	bl sub_813D978
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #0xc
	strb r0, [r5,#0xc]
	b locret_812A5B2
loc_812A59C:
	mov r0, #2
	bl sub_803CB18
	beq locret_812A5B2
	bl sub_813D638
	beq locret_812A5B2
	mov r0, #4
	strb r0, [r5,#0xc]
	mov r0, #0
	strb r0, [r5,#0xd]
locret_812A5B2:
	pop {pc}
	thumb_func_end sub_812A574

	thumb_local_start
sub_812A5B4:
	push {r4-r7,lr}
	bl sub_813D638
	mov r4, r0
	tst r4, r4
	bne loc_812A5C6
	mov r0, #0
	strb r0, [r5,#0xc]
	b locret_812A5F4
loc_812A5C6:
	mov r0, #4
	bl sub_803CB18
	beq loc_812A5D8
	mov r0, #8
	strb r0, [r5,#0xc]
	mov r0, #0
	strh r0, [r5,#0x28]
	b locret_812A5F4
loc_812A5D8:
	mov r0, #8
	bl sub_803CB18
	bne loc_812A5EE
	mov r0, #0x20 
	bl sub_803CB18
	beq locret_812A5F4
	mov r0, #0x83
	bl sub_803C28A
loc_812A5EE:
	mov r0, #0xc
	strb r0, [r5,#0xc]
	b locret_812A5F4
locret_812A5F4:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812A5B4

	thumb_local_start
sub_812A5F8:
	push {r4-r7,lr}
	mov r0, #8
	bl sub_803CB18
	beq loc_812A610
loc_812A602:
	mov r0, #0x14
	strb r0, [r5,#0xc]
	mov r0, #0x10
	bl sub_803CB18
	bne loc_812A628
	b loc_812A666
loc_812A610:
	mov r0, #0x10
	bl sub_803CB18
	bne loc_812A628
	mov r0, #0x20 
	bl sub_803CB18
	beq locret_812A676
	mov r0, #8
	bl sub_803CB0C
	b loc_812A602
loc_812A628:
	bl sub_803EA78
	bl sub_803EA50
	tst r0, r0
	bne loc_812A648
	bl sub_8147B24
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strh r0, [r5,#0x28]
	bl sub_8132398
	b loc_812A666
loc_812A648:
	bl sub_8148D24
	tst r0, r0
	beq loc_812A658
	ldrh r0, [r5,#0x28]
	add r0, #1
	strh r0, [r5,#0x28]
	b loc_812A666
loc_812A658:
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strh r0, [r5,#0x28]
	bl sub_8132398
loc_812A666:
	bl sub_813D5D0
	mov r6, r0
	mov r4, #1
	bl sub_81469A0
	bl sub_81469E8
locret_812A676:
	pop {r4-r7,pc}
	.word byte_200BC50
	thumb_func_end sub_812A5F8

	thumb_local_start
sub_812A67C:
	push {lr}
	bl sub_813D60C
	bne locret_812A690
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x10
	strb r0, [r5,#0xc]
locret_812A690:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812A67C

	thumb_local_start
sub_812A694:
	push {lr}
	bl sub_813D60C
	bne locret_812A6EC
	bl IsPaletteFadeActive // () -> zf
	beq locret_812A6EC
	bl sub_8129248
	bl sub_812AFC8
	bl sub_812B530
	mov r0, #8
	strb r0, [r5,#1]
	// memBlock
	ldr r0, off_812A6F0 // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	mov r0, #0
	strb r0, [r5,#0x1c]
	strb r0, [r5,#0x1e]
	ldrb r0, [r5,#0xe]
	tst r0, r0
	bne loc_812A6D4
	ldrb r0, [r5,#0x12]
	bl sub_81325F4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	b loc_812A6DE
loc_812A6D4:
	bl sub_81325E4
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
loc_812A6DE:
	// a1
	ldr r0, off_812A6F4 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
locret_812A6EC:
	pop {pc}
	.byte 0, 0
off_812A6F0: .word unk_20251A0
off_812A6F4: .word byte_8129150
	thumb_func_end sub_812A694

	thumb_local_start
sub_812A6F8:
	push {lr}
	mov r0, #0x10
	bl sub_803CB18
	beq loc_812A74C
	bl sub_803EA78
	bl sub_803EA50
	tst r0, r0
	bne loc_812A722
	bl sub_8147B24
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strh r0, [r5,#0x28]
	bl sub_8132398
	b loc_812A742
loc_812A722:
	bl sub_8148D24
	tst r0, r0
	beq loc_812A732
	ldrh r0, [r5,#0x28]
	add r0, #1
	strh r0, [r5,#0x28]
	b loc_812A742
loc_812A732:
	mov r0, #0x10
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strh r0, [r5,#0x28]
	bl sub_8132398
	b loc_812A742
loc_812A742:
	bl sub_81469A0
	bl sub_81469E8
	b locret_812A756
loc_812A74C:
	bl sub_813D60C
	bne locret_812A756
	mov r0, #0x18
	strb r0, [r5,#0xc]
locret_812A756:
	pop {pc}
	thumb_func_end sub_812A6F8

	thumb_local_start
sub_812A758:
	push {lr}
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812A76A
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0xc]
locret_812A76A:
	pop {pc}
	thumb_func_end sub_812A758

	thumb_local_start
sub_812A76C:
	push {r4-r7,lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812A77A
	bl sub_803C604
loc_812A77A:
	mov r0, #0
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	mov r4, r0
	cmp r0, #4
	beq loc_812A866
	cmp r0, #1
	bne loc_812A7A2
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812A7A2
	ldrh r0, [r5,#0x28]
	add r0, #1
	strh r0, [r5,#0x28]
	ldr r1, off_812A8A0 // =0x168 
	cmp r0, r1
	blt loc_812A878
	b loc_812A866
loc_812A7A2:
	mov r0, #1
	strb r0, [r5,#0x10]
	mov r1, #0x10
	tst r4, r1
	beq loc_812A7AE
	b loc_812A7B8
loc_812A7AE:
	bl sub_81325CC
	mov r1, #0
	strh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812A7B8:
	mov r1, #8
	tst r4, r1
	bne loc_812A878
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	ldr r1, dword_812A898 // =0xffffffff 
	cmp r0, r1
	beq loc_812A878
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812A7D8:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812A876
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812A7EC
	lsr r3, r3, #1
loc_812A7EC:
	add r0, #0x10
	cmp r0, r7
	ble loc_812A7D8
	tst r3, r3
	bne loc_812A842
	mov r0, #0x14
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#0x11]
	bl sub_8132290
	cmp r0, #0x18
	beq loc_812A814
	cmp r0, #0x1c
	beq loc_812A814
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	b loc_812A838
loc_812A814:
	mov r4, #0
	ldrb r0, [r5,#0x12]
	bl sub_81325F4
	cmp r0, #0x14
	beq loc_812A82A
	cmp r0, #0x18
	beq loc_812A828
	mov r4, #2
	b loc_812A82A
loc_812A828:
	mov r4, #1
loc_812A82A:
	mov r0, r4
	bl sub_81209DC
	lsl r1, r1, #8
	orr r0, r1
	strh r0, [r5,#0x2a]
	mov r0, #0
loc_812A838:
	strb r0, [r5,#3]
	mov r0, #0x28 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b loc_812A876
loc_812A842:
	cmp r3, #1
	bgt loc_812A876
	mov r0, #2
	strb r0, [r5,#0x10]
	mov r0, #0x25 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r1, #0x38 
	strb r1, [r5,#1]
	mov r1, #0
	strb r1, [r5,#2]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	bl sub_803E8F8
	ldr r1, dword_812A89C // =0x2000 
	strh r1, [r0,#0xa]
	b loc_812A876
loc_812A866:
	mov r0, #0x24 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x3c 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
loc_812A876:
	b loc_812A878
loc_812A878:
	bl sub_812B26C
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812A88E
	mov r0, #0xda
	mov r1, #2
	bl sub_803C59C
	b locret_812A892
loc_812A88E:
	bl sub_812B504
locret_812A892:
	pop {r4-r7,pc}
	.word byte_200A290
dword_812A898: .word 0xFFFFFFFF
dword_812A89C: .word 0x2000
off_812A8A0: .word 0x168
	thumb_func_end sub_812A76C

	thumb_local_start
sub_812A8A4:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812A8B8
	push {r5}
	ldr r5, off_812A8DC // =byte_200A290 
	bl cb_8048FD4
	pop {r5}
loc_812A8B8:
	ldr r0, off_812A8E0 // =off_812A8E4 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812A8D4
	mov r0, #0xda
	mov r1, #2
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
	thumb_func_end sub_812A8A4

	thumb_local_start
sub_812A8EC:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#0x10]
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	tst r0, r0
	beq loc_812A94E
	mov r0, #0x10
	bl chatbox_check_eFlags2009F38
	beq loc_812A90A
loc_812A904:
	mov r0, #1
	strb r0, [r5,#0x11]
	b loc_812A924
loc_812A90A:
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_812A94E
	bl chatbox_8045F4C
	tst r0, r0
	bne loc_812A904
	mov r0, #0x23 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0
	strb r0, [r5,#0x11]
loc_812A924:
	mov r1, #4
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_812A92E
	mov r1, #8
loc_812A92E:
	cmp r1, #4
	bne loc_812A94C
	push {r1}
	bl sub_8120A38
	tst r0, r0
	bne loc_812A94A
	tst r1, r1
	bne loc_812A94A
	tst r3, r3
	bne loc_812A94A
	pop {r1}
	mov r1, #0x84
	b loc_812A94C
loc_812A94A:
	pop {r1}
loc_812A94C:
	strh r1, [r5,#0x26]
loc_812A94E:
	bl sub_803EAE4
	cmp r0, #4
	bne loc_812A958
	b loc_812AAAC
loc_812A958:
	cmp r0, #1
	bne loc_812A95E
	b loc_812AAB8
loc_812A95E:
	mov r0, #1
	strb r0, [r5,#0x10]
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812A96C
	b loc_812A978
loc_812A96C:
	bl sub_803EF7C
	ldrh r1, [r5,#0x2a]
	strh r1, [r0,#2]
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812A978:
	mov r1, #8
	tst r4, r1
	beq loc_812A980
	b loc_812AAB8
loc_812A980:
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812ABE8 // =0xffffffff 
	cmp r0, r1
	bne loc_812A998
	b loc_812AAB8
loc_812A998:
	mov r7, #0x10
	add r7, r7, r0
	mov r0, r4
	bl sub_8132538
	cmp r0, #2
	bgt loc_812A9DA
	mov r1, #0x38 
	strb r1, [r5,#1]
	mov r1, #0
	strb r1, [r5,#2]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	bne loc_812A9BE
	mov r0, #0x2a 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b loc_812AAB6
loc_812A9BE:
	mov r1, #3
	mov r2, #0x29 
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812A9CC
	mov r1, #4
	mov r2, #0x2a 
loc_812A9CC:
	strb r1, [r5,#0x10]
	mov r0, r2
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812AAB6
loc_812A9DA:
	cmp r0, #0xff
	beq loc_812AAB6
	cmp r0, #4
	bne loc_812AAB6
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne loc_812AA14
	mov r0, #0x17
	mov r1, #0x22 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_803F674
	cmp r1, #2
	bne loc_812AA04
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x22 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	b loc_812AA14
loc_812AA04:
	cmp r1, #0
	bne loc_812AA10
	mov r0, #0
	bl sub_803F4EC
	b loc_812AA14
loc_812AA10:
	mov r0, #0x27 
	b loc_812AA68
loc_812AA14:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812AA22
	mov r0, #0
	bl sub_803F4EC
loc_812AA22:
	ldrb r0, [r5,#0x13]
	cmp r0, #1
	bne loc_812AA7E
	mov r2, #0
	mov r1, r4
	ldrb r0, [r1,#8]
	cmp r0, #0x84
	bne loc_812AA36
	mov r3, #1
	orr r2, r3
loc_812AA36:
	add r1, #0x10
	ldrb r0, [r1,#8]
	cmp r0, #0x84
	bne loc_812AA42
	mov r3, #2
	orr r2, r3
loc_812AA42:
	tst r2, r2
	beq loc_812AA7E
	push {r2}
	bl sub_803DD60
	pop {r2}
	tst r0, r0
	beq loc_812AA5C
	mov r0, #2
	tst r0, r2
	bne loc_812AA66
	mov r0, #0x29 
	b loc_812AA68
loc_812AA5C:
	mov r0, #1
	tst r0, r2
	bne loc_812AA66
	mov r0, #0x29 
	b loc_812AA68
loc_812AA66:
	mov r0, #0x26 
loc_812AA68:
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r1, #0x38 
	strb r1, [r5,#1]
	mov r1, #0
	strb r1, [r5,#2]
	mov r1, #4
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812AAB6
loc_812AA7E:
	bl sub_8132290
	strb r0, [r5,#1]
	cmp r0, #0x1c
	bne loc_812AA90
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812AA90:
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	strb r0, [r5,#0x1b]
	ldrh r0, [r4,#2]
	strh r0, [r5,#0x2a]
	b loc_812AAB6
	cmp r3, #1
	bgt loc_812AAB6
	mov r0, #2
	strb r0, [r5,#0x10]
	mov r0, #0x25 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
loc_812AAAC:
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
loc_812AAB6:
	b loc_812AAB8
loc_812AAB8:
	bl sub_812B26C
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end sub_812A8EC

	thumb_local_start
sub_812AAC0:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#0x10]
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	tst r0, r0
	beq loc_812AB04
	mov r0, #0x10
	bl chatbox_check_eFlags2009F38
	beq loc_812AADE
loc_812AAD8:
	mov r0, #1
	strb r0, [r5,#0x11]
	b loc_812AAF8
loc_812AADE:
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_812AB04
	bl chatbox_8045F4C
	tst r0, r0
	bne loc_812AAD8
	mov r0, #0x23 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0
	strb r0, [r5,#0x11]
loc_812AAF8:
	mov r1, #4
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_812AB02
	mov r1, #8
loc_812AB02:
	strh r1, [r5,#0x26]
loc_812AB04:
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812ABD6
	cmp r0, #1
	beq loc_812ABE2
	mov r0, #1
	strb r0, [r5,#0x10]
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812AB1E
	b loc_812AB26
loc_812AB1E:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812AB26:
	mov r1, #8
	tst r4, r1
	bne loc_812ABE2
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812ABE8 // =0xffffffff 
	cmp r0, r1
	beq loc_812ABE2
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812AB48:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812ABE0
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812AB5C
	lsr r3, r3, #1
loc_812AB5C:
	add r0, #0x10
	cmp r0, r7
	ble loc_812AB48
	tst r3, r3
	bne loc_812ABC8
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812ABA4
	mov r1, #0x38 
	strb r1, [r5,#1]
	mov r1, #0
	strb r1, [r5,#2]
	mov r1, #4
	strb r1, [r5,#0x10]
	cmp r0, #2
	bne loc_812AB88
	mov r0, #0x2a 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	b loc_812ABE0
loc_812AB88:
	mov r1, #3
	mov r2, #0x29 
	ldrh r0, [r5,#0x26]
	cmp r0, #8
	bne loc_812AB96
	mov r1, #4
	mov r2, #0x2a 
loc_812AB96:
	strb r1, [r5,#0x10]
	mov r0, r2
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812ABE0
loc_812ABA4:
	cmp r0, #0xff
	beq loc_812ABE0
	cmp r0, #4
	bne loc_812ABE0
	bl sub_8132290
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	ldrb r0, [r5,#1]
	cmp r0, #0x28 
	blt loc_812ABE0
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812ABE0
loc_812ABC8:
	cmp r3, #1
	bgt loc_812ABE0
	mov r0, #2
	strb r0, [r5,#0x10]
	mov r0, #0x25 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
loc_812ABD6:
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
loc_812ABE0:
	b loc_812ABE2
loc_812ABE2:
	bl sub_812B26C
	pop {r4-r7,pc}
dword_812ABE8: .word 0xFFFFFFFF
	thumb_func_end sub_812AAC0

	thumb_local_start
sub_812ABEC:
	push {lr}
	ldr r0, off_812AC00 // =off_812AC04 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_812B26C
	pop {pc}
	.byte 0, 0
off_812AC00: .word off_812AC04
off_812AC04: .word sub_812AC1A+1
	.word sub_812AC80+1
	.word sub_812AC80+1
	.word sub_812ACF0+1
	thumb_func_end sub_812ABEC

	thumb_func_start sub_812AC14
sub_812AC14:
	push {r4-r7,lr}
	mov r7, #0xc
	b loc_812AC2A
	thumb_func_end sub_812AC14

	thumb_local_start
sub_812AC1A:
	push {r4-r7,lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812AC28
	bl sub_803C612
loc_812AC28:
	mov r7, #2
loc_812AC2A:
	bl sub_803EAE4
	mov r4, r0
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812AC56
	cmp r4, #4
	beq loc_812AC7A
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_812AC4C
	bl sub_803C754
	mov r0, #4
	strb r0, [r5,#3]
	b locret_812AC7E
loc_812AC4C:
	bl sub_813D60C
	tst r0, r0
	bne locret_812AC7E
	b loc_812AC7A
loc_812AC56:
	cmp r4, #4
	beq loc_812AC76
	cmp r4, #1
	beq loc_812AC76
	ldrb r0, [r5,#3]
	tst r0, r0
	bne loc_812AC6E
	bl sub_803DDA4
	mov r0, #4
	strb r0, [r5,#3]
	b locret_812AC7E
loc_812AC6E:
	bl sub_803DE24
	tst r0, r0
	bne locret_812AC7E
loc_812AC76:
	bl sub_81440D8 // static () -> void
loc_812AC7A:
	mov r0, #4
	strb r0, [r5,r7]
locret_812AC7E:
	pop {r4-r7,pc}
	thumb_func_end sub_812AC1A

	thumb_local_start
sub_812AC80:
	push {r4,lr}
	ldrb r0, [r5,#2]
	cmp r0, #8
	beq loc_812ACB0
	mov r4, #0x24 
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812ACA6
	bl sub_8149644
	bl sub_8149568
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #2
	bne loc_812ACA6
	mov r4, #0x30 
loc_812ACA6:
	mov r0, r4
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #8
	strb r0, [r5,#2]
loc_812ACB0:
	bl eStruct200BC30_getRef
	ldrb r0, [r0,#0xe]
	cmp r0, #2
	beq loc_812ACE0
	mov r0, #3
	bl isJoystickIRQActive
	beq loc_812ACE0
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812ACDC
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b loc_812ACE0
loc_812ACDC:
	bl sub_8132614
loc_812ACE0:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne locret_812ACEC
	bl sub_803C612
locret_812ACEC:
	pop {r4,pc}
	.byte 0, 0
	thumb_func_end sub_812AC80

	thumb_local_start
sub_812ACF0:
	push {lr}
	bl sub_812AE74
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne locret_812AD02
	bl sub_803C612
locret_812AD02:
	pop {pc}
	thumb_func_end sub_812ACF0

	thumb_local_start
sub_812AD04:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812ADD2
	cmp r0, #1
	bne loc_812AD14
	b loc_812ADDE
loc_812AD14:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812AD1E
	b loc_812AD26
loc_812AD1E:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812AD26:
	mov r1, #8
	tst r4, r1
	bne loc_812ADDE
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, off_812AE2C // =off_812AE30 
	cmp r0, r1
	beq loc_812ADDE
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812AD48:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812ADDC
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812AD5C
	lsr r3, r3, #1
loc_812AD5C:
	add r0, #0x10
	cmp r0, r7
	ble loc_812AD48
	tst r3, r3
	bne loc_812ADDC
	ldrh r1, [r5,#0x26]
	cmp r1, #0x10
	bne loc_812AD9C
	bl sub_803DD60
	tst r0, r0
	beq loc_812AD88
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812ADDC
	cmp r0, #0x10
	beq loc_812ADC6
	cmp r0, #8
	bne loc_812ADDC
	b loc_812ADC6
loc_812AD88:
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812ADDC
	cmp r1, #0x10
	beq loc_812ADC6
	cmp r1, #8
	bne loc_812ADDC
	b loc_812ADC6
loc_812AD9C:
	cmp r1, #8
	bne loc_812ADDC
	bl sub_803DD60
	tst r0, r0
	beq loc_812ADB8
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812ADDC
	cmp r1, #8
	bne loc_812ADDC
	b loc_812ADC6
loc_812ADB8:
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812ADDC
	cmp r0, #8
	bne loc_812ADDC
loc_812ADC6:
	mov r0, #0x3c 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	b loc_812ADDC
loc_812ADD2:
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
loc_812ADDC:
	b loc_812ADDE
loc_812ADDE:
	bl sub_812B26C
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812ADF0
	bl sub_803C612
	b locret_812ADF8
loc_812ADF0:
	cmp r0, #0
	bne locret_812ADF8
	bl sub_812B504
locret_812ADF8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812AD04

	thumb_local_start
sub_812ADFC:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812AE10
	ldrb r0, [r5,#2]
	tst r0, r0
	beq loc_812AE10
	bl sub_803C612
loc_812AE10:
	ldr r0, off_812AE2C // =off_812AE30 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_812B26C
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	bne locret_812AE2A
	bl sub_812B504
locret_812AE2A:
	pop {pc}
off_812AE2C: .word off_812AE30
off_812AE30: .word sub_812AC1A+1
	.word sub_812AE3C+1
	.word sub_812AE74+1
	thumb_func_end sub_812ADFC

	thumb_local_start
sub_812AE3C:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_812AE4E
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812AE6C
loc_812AE4E:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812AE68
	mov r0, #8
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	b locret_812AE6C
loc_812AE68:
	bl sub_8132614
locret_812AE6C:
	pop {pc}
	.byte 0, 0
	.word 0xFFFFFFFF
	thumb_func_end sub_812AE3C

	thumb_local_start
sub_812AE74:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812AEBE
	bl sub_8129248
	bl sub_812B530
	bl chatbox_8040818
	bl sub_8132614
	mov r0, #0x10
	ldrb r1, [r5,#2]
	cmp r1, #0x14
	blt loc_812AE96
	mov r0, #0x2c 
loc_812AE96:
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	// memBlock
	ldr r0, off_812AEC0 // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812AEC4 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812AEBE
	bl sub_8149644
	bl sub_8149568
locret_812AEBE:
	pop {pc}
off_812AEC0: .word unk_20251A0
off_812AEC4: .word byte_8129150
	thumb_func_end sub_812AE74

	thumb_local_start
sub_812AEC8:
	push {lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	bl IsPaletteFadeActive // () -> zf
	beq locret_812AEDC
	bl sub_811F708
locret_812AEDC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812AEC8

	thumb_local_start
sub_812AEE0:
	push {lr}
	ldr r0, off_812AEF4 // =off_812AEF8 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_812B26C
	pop {pc}
	.balign 4, 0x00
off_812AEF4: .word off_812AEF8
off_812AEF8: .word sub_812AEFC+1
	thumb_func_end sub_812AEE0

	thumb_local_start
sub_812AEFC:
	push {lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_812AF0E
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq locret_812AF12
loc_812AF0E:
	bl sub_8132614
locret_812AF12:
	pop {pc}
	thumb_func_end sub_812AEFC

	thumb_local_start
sub_812AF14:
	push {lr}
	pop {pc}
	thumb_func_end sub_812AF14

	thumb_local_start
sub_812AF18:
	push {r4-r7,lr}
	bl sub_812AF3C
	// initRefs
	ldr r0, off_812B088 // =off_812B08C
	bl decompAndCopyData // (u32 *initRefs) -> void
	bl sub_812AF78
	bl sub_812AF84
	bl sub_812AF98
	bl sub_812AFA4
	bl chatbox_8040818
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812AF18

	thumb_func_start sub_812AF3C
sub_812AF3C:
	push {r4-r7,lr}
	ldr r4, off_812B084 // =unk_201D020 
	mov r6, #0
	mov r7, #0
	ldr r5, off_812B020 // =off_812B024
loc_812AF46:
	ldr r0, [r5,r7]
	add r7, #4
	ldr r1, [r5,r7]
	add r7, #4
	bl sub_811FB84
	str r0, [r4,r6]
	add r6, #4
	mov r1, #0
loc_812AF58:
	ldr r0, [r5,r7]
	str r0, [r4,r6]
	add r6, #4
	add r7, #4
	add r1, #1
	cmp r1, #2
	blt loc_812AF58
	cmp r7, #0x60 
	blt loc_812AF46
	mov r0, #0
	str r0, [r4,r6]
	// initRefs
	ldr r0, off_812B084 // =unk_201D020 
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812AF3C

	thumb_func_start sub_812AF78
sub_812AF78:
	push {lr}
	// initRefs
	ldr r0, off_812B0E4 // =off_812B0E8
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812AF78

	thumb_func_start sub_812AF84
sub_812AF84:
	push {lr}
	// initRefs
	ldr r0, off_812B164 // =byte_812B168
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldr r0, off_812AFE0 // =off_812AFE4
	ldr r1, off_812B018 // =eTextScript201BA20
	ldr r2, off_812B01C // =eDecompBuffer2013A00
	bl sub_8123300
	pop {pc}
	thumb_func_end sub_812AF84

	thumb_func_start sub_812AF98
sub_812AF98:
	push {lr}
	// initRefs
	ldr r0, off_812B19C // =byte_812B1A0
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812AF98

	thumb_func_start sub_812AFA4
sub_812AFA4:
	push {lr}
	// initRefs
	ldr r0, off_812B1BC // =byte_812B1C0
	bl decompAndCopyData // (u32 *initRefs) -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812AFA4

	thumb_local_start
sub_812AFB0:
	push {r4-r7,lr}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_812B0CC // =unk_201FDA0 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	thumb_func_end sub_812AFB0

	bl sub_812B4AC
	pop {r4-r7,pc}
	thumb_func_start sub_812AFC8
sub_812AFC8:
	push {r4-r7,lr}
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_812B0C0 // =unk_201D120 
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	bl sub_812B430
	pop {r4-r7,pc}
off_812AFE0: .word off_812AFE4
off_812AFE4: .word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
	.word comp_86DA1B8
off_812B018: .word eTextScript201BA20
off_812B01C: .word eDecompBuffer2013A00
off_812B020: .word off_812B024
off_812B024: .word dword_86C9108
	.word 0x2
	.word byte_3001960
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word unk_3001AA0
	.word 0x20
	.word dword_86C9B54
	.word 0x2
	.word byte_30016B0
	.word 0x20
	.word 0x886C9AA4
	.word 0x2
	.word unk_3001A60
	.word eDecompBuffer2013A00
	.word byte_872CF94
	.word 0x2
	.word unk_3001AE0
	.word 0x20
	.word dword_86C9AF4
	.word 0x2
	.word unk_30019A0
	.word 0x20
off_812B084: .word unk_201D020
off_812B088: .word off_812B08C
off_812B08C: .word 0x886D91FC
	.word eGuiSprite2022AA0
	.word eDecompBuffer2013A00
	.word 0x886D93E0
	.word byte_20231A0
	.word eDecompBuffer2013A00
	.word 0x886DB208
	.word unk_20251B0
	.word eDecompBuffer2013A00
	.word 0x886DB9C4
	.word unk_20222A0
	.word eDecompBuffer2013A00
	.word 0x886D9104
off_812B0C0: .word unk_201D120
	.word eDecompBuffer2013A00
	.word 0x886DB014
off_812B0CC: .word unk_201FDA0
	.word eDecompBuffer2013A00
	.word 0x886DB014
	.word unk_201FDA0
	.word eDecompBuffer2013A00
	.word 0x0
off_812B0E4: .word off_812B0E8
off_812B0E8: .word 0x886C8054
	.word 0x6000020
	.word eDecompBuffer2013A00
	.word 0x886C9BD4
	.word 0x6014800
	.word eDecompBuffer2013A00
	.word byte_86C9D6C
	.byte 0xD0
	.byte 0x16
	.byte 0x0
	.byte 0x3
	.byte 0x20
	.byte 0x0
	.byte 0x0
	.byte 0x0
	.word dword_86B7AE0
	.byte 0x0
	.byte 0x40
	.byte 0x0
	.byte 0x6
	.byte 0x0
	.byte 0x28
	.byte 0x0
	.byte 0x0
	.byte 0xC0
	.byte 0x96
	.byte 0x6C
	.byte 0x88
	.byte 0x0
	.byte 0x68
	.byte 0x0
	.byte 0x6
	.byte 0x0
	.byte 0x3A
	.byte 0x1
	.byte 0x2
	.byte 0xC
	.byte 0x98
	.byte 0x6C
	.byte 0x88
	.byte 0x80
	.byte 0x6B
	.byte 0x0
	.byte 0x6
	.byte 0x0
	.byte 0x3A
	.byte 0x1
	.byte 0x2
	.byte 0xD4
	.byte 0x9B
	.byte 0x6C
	.byte 0x88
	.byte 0x0
	.byte 0x48
	.byte 0x1
	.byte 0x6
	.word eDecompBuffer2013A00
	.byte 0x38, 0x9D, 0x6C, 0x88, 0x80, 0x49, 0x1, 0x6, 0x0, 0x3A
	.byte 0x1, 0x2, 0x74, 0x92, 0x6C, 0x88, 0x20, 0x80, 0x0, 0x6
	.byte 0x0, 0x3A, 0x1, 0x2, 0x68, 0x96, 0x6C, 0x88, 0x20, 0x1A
	.byte 0x0, 0x3, 0x0, 0x3A, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0
off_812B164: .word byte_812B168
byte_812B168: .byte 0xD0, 0xE7, 0x6C, 0x88, 0x20, 0xD6, 0x1, 0x2, 0x0, 0x3A
	.byte 0x1, 0x2, 0xAC, 0xE8, 0x6C, 0x88, 0x20, 0xDB, 0x1, 0x2
	.byte 0x0, 0x3A, 0x1, 0x2, 0x18, 0xC4, 0x6D, 0x88, 0x20, 0xE4
	.byte 0x1, 0x2, 0x0, 0x3A, 0x1, 0x2, 0xE8, 0xE9, 0x6C, 0x88
	.byte 0xA0, 0x27, 0x2, 0x2, 0x0, 0x3A, 0x1, 0x2, 0x0, 0x0
	.byte 0x0, 0x0
off_812B19C: .word byte_812B1A0
byte_812B1A0: .byte 0x9C, 0xCA, 0x6D, 0x88, 0x20, 0xE9, 0x1, 0x2, 0x0, 0x3A
	.byte 0x1, 0x2, 0xC8, 0xCB, 0x6D, 0x88, 0x20, 0xEE, 0x1, 0x2
	.byte 0x0, 0x3A, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0
off_812B1BC: .word byte_812B1C0
byte_812B1C0: .byte 0xAC, 0xD0, 0x6D, 0x88, 0x20, 0xF3, 0x1, 0x2, 0x0, 0x3A
	.byte 0x1, 0x2, 0xCC, 0xD1, 0x6D, 0x88, 0x20, 0xF8, 0x1, 0x2
	.byte 0x0, 0x3A, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_812AFC8

	thumb_local_start
sub_812B1DC:
	push {r4-r7,lr}
	mov r4, r0
	// memBlock
	ldr r0, off_812B258 // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	ldrh r2, [r4,#2]
	ldrb r1, [r4,#1]
	ldrb r0, [r4]
	bl sub_8046670
	add r4, #4
	mov r6, #0
loc_812B1F6:
	ldrh r2, [r4,#2]
	lsl r3, r6, #0x10
	orr r2, r3
	ldrb r1, [r4,#1]
	ldrb r0, [r4]
	bl sub_8046670
	ldr r1, off_812B258 // =unk_20251A0 
	lsl r2, r6, #2
	str r0, [r1,r2]
	add r6, #1
	add r4, #4
	ldrb r0, [r4]
	cmp r0, #0xff
	bne loc_812B1F6
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812B1DC

	thumb_local_start
sub_812B218:
	push {r4-r7,lr}
	ldrb r4, [r5,#0x1e]
	lsl r4, r4, #2
	ldr r6, off_812B258 // =unk_20251A0 
	ldr r0, [r6,r4]
	tst r0, r0
	bne locret_812B254
	lsr r1, r4, #2
	add r1, #1
	mov r0, #0x1c
	mov r2, #0
	lsl r2, r2, #8
	lsr r3, r4, #2
	lsl r3, r3, #0x10
	orr r2, r3
	mov r3, #1
	lsl r3, r3, #0x18
	orr r2, r3
	mov r3, #1
	orr r2, r3
	bl sub_8046670
	mov r1, #1
	lsl r1, r1, #0x1f
	orr r0, r1
	ldr r1, off_812B258 // =unk_20251A0 
	str r0, [r1,r4]
	ldrb r0, [r5,#0x1e]
	add r0, #1
	strb r0, [r5,#0x1e]
locret_812B254:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812B258: .word unk_20251A0
	thumb_func_end sub_812B218

	thumb_local_start
sub_812B25C:
	push {lr}
	bl sub_812B2C4
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	pop {pc}
	thumb_func_end sub_812B25C

	thumb_local_start
sub_812B26C:
	push {r4,lr}
	mov r4, #0x13
	bl sub_8132290
	cmp r0, #0x18
	beq loc_812B27E
	cmp r0, #0x1c
	beq loc_812B27E
	mov r4, #0x12
loc_812B27E:
	mov r0, r4
	bl sub_812B25C
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_812B26C

	thumb_local_start
sub_812B288:
	push {r4,r6,lr}
	mov r6, r0
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	tst r0, r1
	bne locret_812B2FC
	ldr r0, off_812B2BC // =0x78 
	ldrb r1, [r5,r6]
	lsr r1, r1, #1
	b loc_812B2AC
	thumb_func_end sub_812B288

	thumb_local_start
sub_812B29C:
	push {r4,r6,lr}
	mov r6, r0
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	tst r0, r1
	bne locret_812B2FC
	ldr r0, off_812B2BC // =0x78 
	ldrb r1, [r5,r6]
loc_812B2AC:
	mov r3, #0x20 
	mul r1, r3
	ldr r2, off_812B2C0 // =0x28 
	add r1, r1, r2
	mov r2, #2
	bl sub_811C23C
	pop {r4,r6,pc}
off_812B2BC: .word 0x78
off_812B2C0: .word 0x28
	thumb_func_end sub_812B29C

	thumb_local_start
sub_812B2C4:
	push {r4,r6,lr}
	mov r6, r0
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	tst r0, r1
	bne locret_812B2FC
	ldr r0, dword_812B30C // =0x80000 
	ldrb r1, [r5,r6]
	mov r3, #0x13
	mul r1, r3
	ldr r2, dword_812B310 // =0x1d 
	add r1, r1, r2
	orr r0, r1
	ldr r1, dword_812B314 // =0x20004 
	ldrb r2, [r5,#0x17]
	ldr r3, off_812B300 // =byte_8129178
	ldr r4, dword_812B304 // =0x40000000 
	bl sub_811FAF4
	ldrb r1, [r5,#0x18]
	sub r1, #1
	strb r1, [r5,#0x18]
	bne locret_812B2FC
	ldr r1, off_812B308 // =dword_8129180 
	bl sub_8120CC8
	strb r0, [r5,#0x17]
	strb r1, [r5,#0x18]
locret_812B2FC:
	pop {r4,r6,pc}
	.byte 0, 0
off_812B300: .word byte_8129178
dword_812B304: .word 0x40000000
off_812B308: .word dword_8129180
dword_812B30C: .word 0x80000
dword_812B310: .word 0x1D
dword_812B314: .word 0x20004
	thumb_func_end sub_812B2C4

	thumb_local_start
sub_812B318:
	push {r4-r7,lr}
	sub sp, sp, #8
	add r7, r0, #1
	mov r6, #1
	mov r0, #0
	str r0, [sp]
	str r0, [sp,#4]
	ldrb r0, [r5,#0x1c]
	add r0, #1
	strb r0, [r5,#0x1c]
	mov r4, #1
loc_812B32E:
	ldr r1, off_812B38C // =unk_20251A0 
	sub r0, r4, #1
	lsl r0, r0, #2
	ldr r1, [r1,r0]
	tst r1, r1
	bne loc_812B342
	ldr r0, [sp]
	add r0, #1
	str r0, [sp]
	b loc_812B370
loc_812B342:
	mov r0, #1
	lsl r0, r0, #0x1f
	tst r0, r1
	beq loc_812B352
	ldr r0, [sp,#4]
	add r0, #1
	str r0, [sp,#4]
	b loc_812B370
loc_812B352:
	mov r0, #1
	lsl r0, r0, #0x1f
	bic r1, r0
	mov r0, #0x10
	neg r0, r0
	bl sub_811A768
	tst r0, r0
	bne loc_812B370
	sub r0, r4, #1
	lsl r0, r0, #2
	ldr r1, off_812B38C // =unk_20251A0 
	mov r2, #0
	str r2, [r1,r0]
	mov r6, #0
loc_812B370:
	ldr r0, off_812B390 // =byte_812B394
	ldrb r0, [r0,r4]
	ldrb r1, [r5,#0x1c]
	cmp r0, r1
	bge loc_812B380
	add r4, #1
	cmp r4, r7
	blt loc_812B32E
loc_812B380:
	ldr r1, [sp]
	ldr r2, [sp,#4]
	add sp, sp, #8
	mov r0, r6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812B38C: .word unk_20251A0
off_812B390: .word byte_812B394
byte_812B394: .byte 0x0, 0x3, 0x6, 0x9, 0xC, 0xFF, 0x0, 0x0
	thumb_func_end sub_812B318

	thumb_local_start
sub_812B39C:
	push {lr}
	ldrb r0, [r5,#0x12]
	ldr r1, off_812B3AC // =dword_812B3B0
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {pc}
	.balign 4, 0x00
off_812B3AC: .word dword_812B3B0
dword_812B3B0: .word 0xB0A09
	thumb_func_end sub_812B39C

	thumb_local_start
sub_812B3B4:
	push {lr}
	ldrb r0, [r5,#0x12]
	ldr r1, off_812B3C4 // =dword_812B3C8 
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {pc}
	.balign 4, 0x00
off_812B3C4: .word dword_812B3C8
dword_812B3C8: .word 0xD0C
	thumb_func_end sub_812B3B4

	thumb_local_start
sub_812B3CC:
	push {lr}
	ldrb r0, [r5,#0x12]
	ldr r1, off_812B3DC // =dword_812B3E0
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {pc}
	.balign 4, 0x00
off_812B3DC: .word dword_812B3E0
dword_812B3E0: .word 0x100F0E
	thumb_func_end sub_812B3CC

	thumb_local_start
sub_812B3E4:
	push {lr}
	ldrb r0, [r5,#0x13]
	ldr r1, off_812B3F4 // =dword_812B3F8
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {pc}
	.balign 4, 0x00
off_812B3F4: .word dword_812B3F8
dword_812B3F8: .word 0x541211
	thumb_func_end sub_812B3E4

	thumb_local_start
sub_812B3FC:
	push {lr}
	ldrb r0, [r5,#0xe]
	ldr r1, off_812B40C // =dword_812B410
	ldrb r0, [r1,r0]
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {pc}
	.balign 4, 0x00
off_812B40C: .word dword_812B410
dword_812B410: .word 0x80706
	thumb_func_end sub_812B3FC

	thumb_local_start
sub_812B414:
	push {lr}
	mov r0, #0xc
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	ldrb r0, [r5,#0x1b]
	mov r1, #1
	orr r0, r1
	strb r0, [r5,#0x1b]
	mov r0, #0x23 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	pop {pc}
	thumb_func_end sub_812B414

	thumb_local_start
sub_812B430:
	push {r4-r7,lr}
	ldr r0, off_812B48C // =eTextScript201BA20
	mov r1, #0x20 
	ldr r2, off_812B494 // =byte_2017A00 
	ldr r3, dword_812B498 // =0x6007200 
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_812B490 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, r10
	ldr r0, [r0,#0x40]
	ldrh r1, [r0,#8]
	ldrh r2, [r0,#0xa]
	mov r0, r10
	ldr r0, [r0,#0x38]
	str r1, [r0,#8]
	str r2, [r0,#0xc]
	ldr r0, off_812B48C // =eTextScript201BA20
	mov r1, #0x21 
	ldr r2, off_812B49C // =unk_2017C80 
	ldr r3, dword_812B4A0 // =0x6007480 
	mov r4, #0xa
	mov r5, #1
	ldr r6, off_812B490 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	mov r0, #0x10
	mov r1, #4
	mov r2, #2
	ldr r3, off_812B4A4 // =byte_8129188
	mov r4, #0xa
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r0, #0x11
	mov r1, #6
	mov r2, #2
	ldr r3, off_812B4A8 // =byte_81291B0
	mov r4, #0xa
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_812B48C: .word eTextScript201BA20
off_812B490: .word dword_86B7AE0
off_812B494: .word byte_2017A00
dword_812B498: .word 0x6007200
off_812B49C: .word unk_2017C80
dword_812B4A0: .word 0x6007480
off_812B4A4: .word byte_8129188
off_812B4A8: .word byte_81291B0
	thumb_func_end sub_812B430

	thumb_local_start
sub_812B4AC:
	push {r4-r7,lr}
	mov r0, #0x10
	mov r1, #4
	mov r2, #2
	mov r3, #0
	mov r4, #0xa
	mov r5, #2
	bl sub_80018D0
	mov r0, #0x11
	mov r1, #6
	mov r2, #2
	mov r3, #0
	mov r4, #0xa
	mov r5, #2
	bl sub_80018D0
	pop {r4-r7,pc}
	push {r4-r7,lr}
	ldr r5, off_812B4F8 // =sSubmenu 
	bl sub_8129248
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#0x3] // (sSubmenu.unk_03 - 0x2009a30)
	mov r0, #0
	strb r0, [r5,#0x1e] // (sSubmenu.unk_1E - 0x2009a30)
	ldr r0, off_812B4FC // =unk_20251A0 
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812B500 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
	pop {r4-r7,pc}
off_812B4F8: .word sSubmenu
off_812B4FC: .word unk_20251A0
off_812B500: .word byte_8129150
	thumb_func_end sub_812B4AC

	thumb_local_start
sub_812B504:
	push {r4,lr}
	ldrb r0, [r5,#0x1b]
	mov r1, #0x10
	tst r0, r1
	beq locret_812B51C
	ldr r0, dword_812B520 // =0xc80008 
	ldr r1, dword_812B524 // =0x20004 
	mov r2, #0
	ldr r3, off_812B528 // =dword_8129184 
	ldr r4, dword_812B52C // =0x80004000 
	bl sub_811FAF4
locret_812B51C:
	pop {r4,pc}
	.byte 0, 0
dword_812B520: .word 0xC80008
dword_812B524: .word 0x20004
off_812B528: .word dword_8129184
dword_812B52C: .word 0x80004000
	thumb_func_end sub_812B504

	thumb_func_start sub_812B530
sub_812B530:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	ldr r1, off_812B558 // =off_812B55C
	// src
	ldr r0, [r1,r0]
	// dest
	ldr r1, off_812B568 // =eDecompBuffer2013A00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, off_812B568 // =eDecompBuffer2013A00
	add r0, #4
	ldr r1, dword_812B56C // =0x6014700 
	ldr r2, off_812B570 // =0x100 
	bl sub_8000AC8
	ldrb r0, [r5,#0x1b]
	mov r1, #0x10
	orr r0, r1
	strb r0, [r5,#0x1b]
	pop {pc}
	.balign 4, 0x00
off_812B558: .word off_812B55C
off_812B55C: .word dword_86D9B84
	.word dword_86D9A00
	.word dword_86D9AC4
off_812B568: .word eDecompBuffer2013A00
dword_812B56C: .word 0x6014700
off_812B570: .word 0x100
	thumb_func_end sub_812B530

	thumb_local_start
sub_812B574:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #4
	beq loc_812B584
	bl sub_8148224
	b locret_812B58A
loc_812B584:
	ldr r0, off_812B58C // =dword_814FE94
	bl sub_81475D4
locret_812B58A:
	pop {pc}
off_812B58C: .word dword_814FE94
	thumb_func_end sub_812B574

	thumb_local_start
sub_812B590:
	push {r4,lr}
	bl sub_812B574
	mov r0, #0x2f 
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0x3c 
	strb r0, [r5,#1]
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #5
	strb r0, [r5,#0x10]
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_812B590

	thumb_local_start
sub_812B5AC:
	push {lr}
	mov r0, #4
	ldrb r1, [r5,#2]
	cmp r1, #0x14
	beq loc_812B5C0
	mov r0, #5
	ldrb r1, [r5,#2]
	cmp r1, #0x18
	beq loc_812B5C0
	mov r0, #7
loc_812B5C0:
	mov r1, #0
	bl sub_811A610
	pop {pc}
	thumb_func_end sub_812B5AC

	thumb_local_start
sub_812B5C8:
	push {r4,lr}
	bl sub_803EAE4
	ldr r4, off_812B800 // =eStruct203F7D8 
	strb r0, [r4,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	ldr r0, JumpTable812B5F4_p // =JumpTable812B5F4
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	bl sub_8132290
	cmp r0, #0x1c
	bne locret_812B5EC
	bl sub_80465BC
	bl sub_80465F8 // () -> void
locret_812B5EC:
	pop {r4,pc}
	.byte 0, 0
JumpTable812B5F4_p: .word JumpTable812B5F4
JumpTable812B5F4: .word sub_812B608+1
	.word sub_812B640+1
	.word sub_812B698+1
	.word sub_812B708+1
	.word sub_812B758+1
	thumb_func_end sub_812B5C8

	thumb_local_start
sub_812B608:
	push {r4-r7,lr}
	bl getPETNaviSelect // () -> u8
	strb r0, [r5,#0x1a]
	// entryIdx
	mov r0, #1
	// byteFlagIdx
	mov r1, #0x63 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_812B620
	mov r0, #0
	bl sub_80010BE
loc_812B620:
	ldrh r4, [r5,#0x2a]
	str r4, [r5,#0x44]
	mov r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r1, r4, #8
	cmp r0, #0xc0
	bge locret_812B63E
	cmp r1, #0x16
	bge locret_812B63E
	bl sub_812B768
	mov r0, #4
	strb r0, [r5,#2]
	b locret_812B63E
locret_812B63E:
	pop {r4-r7,pc}
	thumb_func_end sub_812B608

	thumb_local_start
sub_812B640:
	push {lr}
	ldr r1, off_812B804 // =eStruct203F7D8 
	ldrb r0, [r1,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
	cmp r0, #4
	bne loc_812B652
	mov r0, #2
	ldrb r1, [r5,#0x1b]
	orr r1, r0
	strb r1, [r5,#0x1b]
loc_812B652:
	bl IsPaletteFadeActive // () -> zf
	beq locret_812B696
	mov r0, #8
	strb r0, [r5,#2]
	bl sub_8046664 // () -> void
	bl chatbox_8040818
	mov r0, #0x21 
	bl sub_80035A2
	bl sub_8004702
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	bl RandomizeExtraToolkitPointers
	mov r0, #0x17
	mov r1, #0x2d 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x17
	mov r1, #0x2f 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl getBattleSettings_200AF60 // () -> BattleSettings*
	bl sub_80071D4
locret_812B696:
	pop {pc}
	thumb_func_end sub_812B640

	thumb_local_start
sub_812B698:
	push {lr}
	mov r0, #2
	ldrb r1, [r5,#0x1b]
	tst r1, r0
	beq loc_812B6A8
	ldr r1, off_812B808 // =eStruct203F7D8 
	mov r0, #4
	strb r0, [r1,#0x1] // (eStruct203F7D8+1 - 0x203f7d8)
loc_812B6A8:
	bl battle_8007800
	tst r0, r0
	bne locret_812B706
	strh r1, [r5,#0x22]
	cmp r1, #1
	bne loc_812B6C0
	bl sub_812B7C4
	bl sub_812B7E0
	b loc_812B6D8
loc_812B6C0:
	cmp r1, #2
	bne loc_812B6CA
	bl sub_812B7C4
	b loc_812B6D8
loc_812B6CA:
	cmp r1, #3
	bne loc_812B6D4
	bl sub_812B7C4
	b loc_812B6D8
loc_812B6D4:
	cmp r1, #5
	bne loc_812B6D8
loc_812B6D8:
	bl sub_8005F40
	bl zeroFill_80024A2
	bl sub_8003962
	bl zeroFill_8003AB2
	mov r0, #0xc
	strb r0, [r5,#2]
	ldrb r0, [r5,#0x1a]
	bl sub_80010BE
	bl sub_813C3AC
	bl sub_8036E78
	mov r0, #0x17
	mov r1, #0x22 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl sub_803F798
locret_812B706:
	pop {pc}
	thumb_func_end sub_812B698

	thumb_local_start
sub_812B708:
	push {r4,lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812B71A
	bl sub_8149644
	bl sub_8149568
loc_812B71A:
	ldrb r4, [r5,#0x1b]
	bl sub_8144240
	bl sub_8129248
	bl sub_812B530
	mov r0, #1
	bic r0, r4
	strb r0, [r5,#0x1b]
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	// memBlock
	ldr r0, off_812B750 // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	thumb_func_end sub_812B708

	ldr r0, off_812B754 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
	pop {r4,pc}
	.byte 0, 0
off_812B750: .word unk_20251A0
off_812B754: .word byte_8129150
	thumb_local_start
sub_812B758:
	push {r4,lr}
	ldr r4, [r5,#0x44]
	mov r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsr r1, r4, #8
	pop {r4,pc}
	.balign 4, 0x00
	thumb_func_end sub_812B758

	thumb_local_start
sub_812B768:
	push {r4-r7,lr}
	sub sp, sp, #4
	str r1, [sp]
	bl getBattleSettingsFromList1 // (int battleSettingsIdx) -> BattleSettings*
	bl copyBattleSettingsTo_200AF60 // (BattleSettings *src) -> void
	ldrb r0, [r5,#0x12]
	lsl r0, r0, #1
	ldrb r1, [r5,#0x13]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, off_812B7A8 // =off_812B7AC 
	ldr r0, [r1,r0]
	tst r0, r0
	beq loc_812B792
	bl battleSettings_setFlags_unkSettings // (int mask) -> void
	ldr r0, [sp]
	bl battleSettings_setBackground // (u8 background) -> void
loc_812B792:
	mov r0, #0x2c 
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl musicGameState_8000784 // () -> void
	mov r0, #0x78 
	bl sound_play // () -> void
	add sp, sp, #4
	pop {r4-r7,pc}
off_812B7A8: .word off_812B7AC
off_812B7AC: .word 0x200
	.byte 0x2, 0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x2, 0x4, 0x0, 0x0, 0x0, 0x2, 0x20, 0x0
	.byte 0x2, 0x0, 0x20, 0x0
	thumb_func_end sub_812B768

	thumb_local_start
sub_812B7C4:
	push {lr}
	ldrb r0, [r5,#0x13]
	cmp r0, #1
	bne locret_812B7DC
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrh r1, [r0,#8]
	add r1, #1
	ldr r2, dword_812B7FC // =0x3e7 
	cmp r1, r2
	bgt locret_812B7DC
	strh r1, [r0,#8]
locret_812B7DC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812B7C4

	thumb_local_start
sub_812B7E0:
	push {lr}
	ldrb r0, [r5,#0x13]
	cmp r0, #1
	bne locret_812B7F8
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2001c04_Ptr]
	ldrh r1, [r0,#0xa]
	add r1, #1
	ldr r2, dword_812B7FC // =0x3e7 
	cmp r1, r2
	bgt locret_812B7F8
	strh r1, [r0,#0xa]
locret_812B7F8:
	pop {pc}
	.balign 4, 0x00
dword_812B7FC: .word 0x3E7
off_812B800: .word eStruct203F7D8
off_812B804: .word eStruct203F7D8
off_812B808: .word eStruct203F7D8
	thumb_func_end sub_812B7E0

	thumb_local_start
sub_812B80C:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812B826
	ldrb r0, [r5,#2]
	cmp r0, #0x14
	bne loc_812B822
	ldrb r0, [r5,#3]
	cmp r0, #4
	beq loc_812B826
loc_812B822:
	bl sub_803C604
loc_812B826:
	ldr r0, off_812B854 // =off_812B858 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldrb r0, [r5,#2]
	cmp r0, #0x14
	bne loc_812B83C
	ldrb r0, [r5,#3]
	cmp r0, #4
	beq loc_812B842
loc_812B83C:
	mov r0, #0x12
	bl sub_812B25C
loc_812B842:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812B852
	mov r0, #0xda
	mov r1, #2
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
	thumb_func_end sub_812B80C

	thumb_local_start
sub_812B874:
	push {lr}
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #8
	bne loc_812B88E
	ldrb r0, [r5,#2]
	cmp r0, #0x14
	bne loc_812B88A
	ldrb r0, [r5,#3]
	cmp r0, #4
	beq loc_812B88E
loc_812B88A:
	bl sub_803C604
loc_812B88E:
	ldr r0, off_812B8BC // =off_812B8C0 
	ldrb r1, [r5,#2]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldrb r0, [r5,#2]
	cmp r0, #0x14
	bne loc_812B8A4
	ldrb r0, [r5,#3]
	cmp r0, #4
	beq loc_812B8AA
loc_812B8A4:
	mov r0, #0x12
	bl sub_812B25C
loc_812B8AA:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812B8BA
	mov r0, #0xda
	mov r1, #2
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
	thumb_func_end sub_812B874

	thumb_local_start
sub_812B8DC:
	push {r4-r7,lr}
	mov r0, #6
	strb r0, [r5,#0x10]
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812B972
	cmp r0, #1
	beq locret_812B978
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812B8F8
	b loc_812B8FC
loc_812B8F8:
	bl sub_812C0CC
loc_812B8FC:
	mov r1, #8
	tst r4, r1
	bne locret_812B978
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812BAF0 // =0xffffffff 
	cmp r0, r1
	beq loc_812B976
	mov r7, #0x10
	add r7, r7, r4
	mov r3, #8
loc_812B91E:
	ldr r1, [r4,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812B976
	lsr r3, r3, #1
	ldrh r1, [r4,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812B976
	ldrh r1, [r4,#0xa]
	ldr r2, dword_812BAFC // =0x4321 
	cmp r1, r2
	bne loc_812B93E
	ldrh r1, [r4,#8]
	str r1, [r5,#0x34]
	lsr r3, r3, #1
loc_812B93E:
	add r4, #0x10
	cmp r4, r7
	ble loc_812B91E
	tst r3, r3
	bne loc_812B976
	mov r0, #8
	strb r0, [r5,#3]
	mov r0, #4
	strb r0, [r5,#2]
	mov r0, #0
	str r0, [r5,#0x38]
	str r0, [r5,#0x3c]
	mov r0, #0
	strh r0, [r5,#0x26]
	mov r0, #0x32 
	ldrb r1, [r5,#1]
	cmp r1, #0x20 
	beq loc_812B964
	mov r0, #0x35 
loc_812B964:
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	ldr r0, off_812BAF4 // =unk_2033C00 
	ldr r1, dword_812BAF8 // =0x800 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	b loc_812B976
loc_812B972:
	bl sub_812C24C
loc_812B976:
	b locret_812B978
locret_812B978:
	pop {r4-r7,pc}
	.balign 4, 0x00
	thumb_func_end sub_812B8DC

	thumb_local_start
sub_812B97C:
	push {r4-r7,lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812B9F0
	cmp r0, #1
	beq locret_812B9F6
	mov r0, #6
	strb r0, [r5,#0x10]
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812B998
	b loc_812B99C
loc_812B998:
	bl sub_812C0CC
loc_812B99C:
	mov r1, #8
	tst r4, r1
	bne locret_812B9F6
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812BAF0 // =0xffffffff 
	cmp r0, r1
	beq locret_812B9F6
	bl sub_803DD60
	tst r0, r0
	bne loc_812B9BC
	add r4, #0x10
loc_812B9BC:
	mov r0, r4
	ldrh r1, [r0,#2]
	ldr r2, dword_812BB00 // =0x8888 
	ldrh r3, [r5,#0x2e]
	add r2, r2, r3
	cmp r1, r2
	bne loc_812B9F4
	mov r1, #4
	add r0, r0, r1
	ldr r1, off_812BAF4 // =unk_2033C00 
	ldr r2, [r5,#0x3c]
	add r1, r1, r2
	add r2, #8
	str r2, [r5,#0x3c]
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	bl sub_812C160
	ldr r0, [r5,#0x34]
	ldr r1, [r5,#0x3c]
	cmp r0, r1
	bne loc_812B9F4
	mov r0, #8
	strb r0, [r5,#2]
	b loc_812B9F4
loc_812B9F0:
	bl sub_812C24C
loc_812B9F4:
	b locret_812B9F6
locret_812B9F6:
	pop {r4-r7,pc}
	thumb_func_end sub_812B97C

	thumb_local_start
sub_812B9F8:
	push {r7,lr}
	ldr r4, off_812BAF4 // =unk_2033C00 
	ldr r7, [r5,#0x34]
	sub r7, #8
	mov r3, #0
	mov r2, #0
loc_812BA04:
	ldrb r0, [r4,r3]
	add r2, r2, r0
	add r3, #1
	cmp r3, r7
	blt loc_812BA04
	mov r1, #8
	ldr r0, [r4,r3]
	cmp r0, r2
	bne loc_812BA18
	mov r1, #4
loc_812BA18:
	strh r1, [r5,#0x26]
	b loc_812BA4E
loc_812BA1C:
	push {r7,lr}
	ldr r4, off_812BAF4 // =unk_2033C00 
	ldr r7, [r5,#0x34]
	sub r7, #0xc
	mov r3, #0
	mov r2, #0
loc_812BA28:
	ldrb r0, [r4,r3]
	add r2, r2, r0
	add r3, #1
	cmp r3, r7
	blt loc_812BA28
	mov r1, #8
	ldr r0, [r4,#0x2c] // (dword_2033C2C - 0x2033c00)
	cmp r0, r2
	bne loc_812BA3C
	mov r1, #4
loc_812BA3C:
	cmp r1, #8
	beq loc_812BA4C
	mov r1, #8
	add r3, #4
	ldr r0, [r4,#0x30] // (dword_2033C30 - 0x2033c00)
	cmp r0, #1
	bne loc_812BA4C
	mov r1, #4
loc_812BA4C:
	strh r1, [r5,#0x26]
loc_812BA4E:
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812BAE6
	cmp r0, #1
	beq locret_812BAEC
	mov r0, #6
	strb r0, [r5,#0x10]
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812BA68
	b loc_812BA70
loc_812BA68:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812BA70:
	mov r1, #8
	tst r4, r1
	bne locret_812BAEC
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812BAF0 // =0xffffffff 
	cmp r0, r1
	beq locret_812BAEC
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812BA92:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812BAEA
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812BAA6
	lsr r3, r3, #1
loc_812BAA6:
	add r0, #0x10
	cmp r0, r7
	ble loc_812BA92
	tst r3, r3
	bne loc_812BADE
	mov r0, r4
	bl sub_8132430
	cmp r0, #2
	bgt loc_812BAC8
	mov r1, #0xc
	strb r1, [r5,#2]
	mov r1, #0xf
	strb r1, [r5,#0x10]
	mov r1, #0x10
	strh r1, [r5,#0x26]
	b loc_812BAEA
loc_812BAC8:
	cmp r0, #0xff
	beq loc_812BAEA
	cmp r0, #4
	bne loc_812BAEA
	mov r0, #0xc
	strb r0, [r5,#2]
	mov r1, #0x10
	strb r1, [r5,#0x10]
	mov r1, #0x20 
	strh r1, [r5,#0x26]
	b loc_812BAEA
loc_812BADE:
	cmp r3, #1
	bgt loc_812BAEA
	mov r0, #2
	strb r0, [r5,#0x10]
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
	thumb_func_end sub_812B9F8

	thumb_local_start
sub_812BB08:
	push {lr}
	bl sub_803EAE4
	cmp r0, #4
	beq loc_812BC06
	cmp r0, #1
	bne loc_812BB18
	b locret_812BC0C
loc_812BB18:
	mov r4, r0
	mov r1, #0x10
	tst r4, r1
	beq loc_812BB22
	b loc_812BB2A
loc_812BB22:
	bl sub_81325CC
	ldrh r1, [r5,#0x26]
	strh r1, [r0,#8]
loc_812BB2A:
	mov r1, #8
	tst r4, r1
	bne locret_812BC0C
	bl sub_803E8F8
	mov r6, r0
	bl sub_803EF74
	bl sub_81323B0
	mov r4, r0
	ldr r1, dword_812BC10 // =0xffffffff 
	cmp r0, r1
	beq locret_812BC0C
	mov r7, #0x10
	add r7, r7, r0
	mov r3, #8
loc_812BB4C:
	ldr r1, [r0,#4]
	ldr r2, [r6,#0x1c]
	cmp r1, r2
	bne loc_812BC0A
	lsr r3, r3, #1
	ldrh r1, [r0,#2]
	ldrh r2, [r6,#0xa]
	cmp r1, r2
	bne loc_812BB60
	lsr r3, r3, #1
loc_812BB60:
	add r0, #0x10
	cmp r0, r7
	ble loc_812BB4C
	tst r3, r3
	bne loc_812BBFE
	ldrh r1, [r5,#0x26]
	cmp r1, #0x10
	bne loc_812BBA0
	bl sub_803DD60
	tst r0, r0
	beq loc_812BB8C
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812BC0A
	cmp r0, #0x10
	beq loc_812BBCA
	cmp r0, #8
	bne loc_812BC0A
	b loc_812BBCA
loc_812BB8C:
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812BC0A
	cmp r1, #0x10
	beq loc_812BBCA
	cmp r1, #8
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBA0:
	cmp r1, #8
	bne loc_812BBD6
	bl sub_803DD60
	tst r0, r0
	beq loc_812BBBC
	mov r0, r4
	bl sub_81325C0
	cmp r0, #0x10
	bne loc_812BC0A
	cmp r1, #8
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBBC:
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x10
	bne loc_812BC0A
	cmp r0, #8
	bne loc_812BC0A
loc_812BBCA:
	mov r0, #0x10
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#0xc]
	strb r0, [r5,#3]
	b loc_812BC0A
loc_812BBD6:
	bl sub_803DD60
	tst r0, r0
	beq loc_812BBEE
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x20 
	bne loc_812BC0A
	cmp r0, #0x20 
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBEE:
	mov r0, r4
	bl sub_81325C0
	cmp r1, #0x20 
	bne loc_812BC0A
	cmp r0, #0x20 
	bne loc_812BC0A
	b loc_812BBCA
loc_812BBFE:
	cmp r3, #1
	bgt loc_812BC0A
	mov r0, #2
	strb r0, [r5,#0x10]
loc_812BC06:
	bl sub_812C24C
loc_812BC0A:
	b locret_812BC0C
locret_812BC0C:
	pop {pc}
	.byte 0, 0
dword_812BC10: .word 0xFFFFFFFF
	thumb_func_end sub_812BB08

	thumb_local_start
sub_812BC14:
	push {lr}
	ldr r0, off_812BC24 // =off_812BC28 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812BC24: .word off_812BC28
off_812BC28: .word sub_812AC14+1
	.word sub_812BC38+1
	.word sub_812BD34+1
	.word sub_812BD60+1
	thumb_func_end sub_812BC14

	thumb_local_start
sub_812BC38:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x10]
	cmp r0, #0xf
	bne loc_812BC4A
	mov r0, #8
	strb r0, [r5,#0xc]
	mov r0, #0x96
	strh r0, [r5,#0x28]
	b locret_812BD1E
loc_812BC4A:
	mov r0, #0x20 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr r0, r1
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr]
	lsr r1, r0, #3
	add r4, r4, r1
	mov r0, #0x22 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr r0, r1
	mov r6, r10
	ldr r6, [r6,#oToolkit_EventFlagsPtr]
	lsr r1, r0, #3
	add r6, r6, r1
	mov r0, r4
	mov r1, r6
	mov r2, #0x40 
loc_812BC70:
	ldr r3, [r0]
	ldr r4, [r1]
	orr r3, r4
	str r3, [r1]
	add r0, #4
	add r1, #4
	sub r2, #4
	bgt loc_812BC70
	ldr r6, off_812BD20 // =unk_2033C00 
	// entryIdx
	mov r0, #0x20 
	// byteFlagIdx
	mov r1, #0x20 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0x20 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr r0, r1
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr]
	lsr r1, r0, #3
	add r4, r4, r1
	mov r0, r6
	mov r1, r4
	mov r2, #0x40 
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	mov r7, #0x12
	mov r6, #0
loc_812BCA8:
	// idx
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #0x40 
	tst r0, r1
	beq loc_812BCDA
	ldr r0, dword_812BD24 // =0x2020 
	add r0, r0, r6
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_812BCDA
	ldr r0, dword_812BD28 // =0x1e20 
	add r0, r0, r6
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_812BCDA
	ldr r0, dword_812BD2C // =0x2220 
	add r0, r0, r6
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_812BCE4
loc_812BCDA:
	add r6, #1
	ldr r0, off_812BD30 // =0x200 
	cmp r6, r0
	blt loc_812BCA8
	mov r7, #0x11
loc_812BCE4:
	mov r0, #8
	strb r0, [r5,#0xc]
	strb r7, [r5,#0x10]
	mov r0, #0x96
	strh r0, [r5,#0x28]
	mov r6, #0
loc_812BCF0:
	// idx
	mov r0, r6
	bl getChip8021DA8 // (int chip_idx) -> ChipData*
	ldrb r0, [r0,#9]
	mov r1, #0x40 
	tst r0, r1
	bne loc_812BD08
	ldr r0, dword_812BD24 // =0x2020 
	add r0, r0, r6
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
loc_812BD08:
	add r6, #1
	ldr r0, off_812BD30 // =0x200 
	cmp r6, r0
	blt loc_812BCF0
	bl sub_80070BC
	ldrb r0, [r5,#0x10]
	cmp r0, #0x11
	beq locret_812BD1E
	bl sub_803F798
locret_812BD1E:
	pop {r4-r7,pc}
off_812BD20: .word unk_2033C00
dword_812BD24: .word 0x2020
dword_812BD28: .word 0x1E20
dword_812BD2C: .word 0x2220
off_812BD30: .word 0x200
	thumb_func_end sub_812BC38

	thumb_local_start
sub_812BD34:
	push {lr}
	ldrh r0, [r5,#0x28]
	sub r0, #1
	strh r0, [r5,#0x28]
	bne locret_812BD5C
	mov r0, #0x34 
	ldrb r1, [r5,#0x10]
	cmp r1, #0x11
	beq loc_812BD54
	mov r0, #0x2c 
	cmp r1, #0xf
	beq loc_812BD54
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #0x33 
loc_812BD54:
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0xc
	strb r0, [r5,#0xc]
locret_812BD5C:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812BD34

	thumb_local_start
sub_812BD60:
	push {lr}
	mov r0, #3
	bl isJoystickIRQActive
	beq locret_812BDBC
	ldrb r0, [r5,#0x10]
	cmp r0, #0x11
	beq loc_812BD96
	cmp r0, #0xf
	beq loc_812BD96
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812BDBC
	bl sub_8149644
	bl sub_8149568
	b locret_812BDBC
loc_812BD96:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812BDB8
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8149644
	bl sub_8149568
	b locret_812BDBC
loc_812BDB8:
	bl sub_8132614
locret_812BDBC:
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_812BD60

	thumb_local_start
sub_812BDC0:
	push {lr}
	ldr r0, off_812BDD0 // =off_812BDD4 
	ldrb r1, [r5,#0xc]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
	.byte 0, 0
off_812BDD0: .word off_812BDD4
off_812BDD4: .word sub_812AC14+1
	.word sub_812BDE4+1
	.word sub_812BEEC+1
	.word sub_812BF10+1
	thumb_func_end sub_812BDC0

	thumb_local_start
sub_812BDE4:
	push {r4-r7,lr}
	ldr r6, off_812BE40 // =unk_20018C0 
	ldr r4, off_812BE3C // =unk_2033C00 
	mov r3, #0
	mov r7, #0
loc_812BDEE:
	ldrh r0, [r4,r3]
	ldrh r1, [r6,r3]
	cmp r1, r0
	ble loc_812BE18
	strh r0, [r6,r3]
	lsl r0, r3, #1
	ldr r1, off_812BE44 // =off_812BE48 
	ldr r2, off_812BE98 // =byte_812BE9C
	ldr r1, [r1,r0]
	ldr r2, [r2,r0]
	tst r1, r1
	beq loc_812BE18
	push {r3}
	// bitfield
	mov r0, r1
	bl SetEventFlag
	// bitfield
	mov r0, r2
	bl SetEventFlag
	pop {r3}
	mov r7, #1
loc_812BE18:
	add r3, #2
	cmp r3, #0x28 
	blt loc_812BDEE
	mov r0, #0x11
	tst r7, r7
	beq loc_812BE26
	mov r0, #0x12
loc_812BE26:
	strb r0, [r5,#0x10]
	mov r0, #8
	strb r0, [r5,#0xc]
	mov r0, #0x96
	strh r0, [r5,#0x28]
	ldrb r0, [r5,#0x10]
	cmp r0, #0x11
	beq locret_812BE3A
	bl sub_803F798
locret_812BE3A:
	pop {r4-r7,pc}
off_812BE3C: .word unk_2033C00
off_812BE40: .word unk_20018C0
off_812BE44: .word off_812BE48
off_812BE48: .word 0xAC
	.byte 0xAD, 0x0, 0x0, 0x0, 0xAE, 0x0, 0x0, 0x0, 0xAF, 0x0, 0x0, 0x0, 0xB0
	.byte 0x0, 0x0, 0x0, 0xB1, 0x0, 0x0, 0x0, 0xB2, 0x0, 0x0, 0x0, 0xB3, 0x0
	.byte 0x0, 0x0, 0xB4, 0x0, 0x0, 0x0, 0xB5, 0x0, 0x0, 0x0, 0xBC, 0x0, 0x0
	.byte 0x0, 0xB7, 0x0, 0x0, 0x0, 0xB6, 0x0, 0x0, 0x0, 0xB9, 0x0, 0x0, 0x0
	.byte 0xBA, 0x0, 0x0, 0x0, 0xBB, 0x0, 0x0, 0x0, 0xB8, 0x0, 0x0, 0x0, 0xBD
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_812BE98: .word byte_812BE9C
byte_812BE9C: .byte 0xBF, 0x0, 0x0, 0x0, 0xC0, 0x0, 0x0, 0x0, 0xC1, 0x0, 0x0, 0x0, 0xC2
	.byte 0x0, 0x0, 0x0, 0xC3, 0x0, 0x0, 0x0, 0xC4, 0x0, 0x0, 0x0, 0xC5, 0x0
	.byte 0x0, 0x0, 0xC6, 0x0, 0x0, 0x0, 0xC7, 0x0, 0x0, 0x0, 0xC8, 0x0, 0x0
	.byte 0x0, 0xCF, 0x0, 0x0, 0x0, 0xCA, 0x0, 0x0, 0x0, 0xC9, 0x0, 0x0, 0x0
	.byte 0xCC, 0x0, 0x0, 0x0, 0xCD, 0x0, 0x0, 0x0, 0xCE, 0x0, 0x0, 0x0, 0xCB
	.byte 0x0, 0x0, 0x0, 0xD0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0
	thumb_func_end sub_812BDE4

	thumb_local_start
sub_812BEEC:
	push {lr}
	ldrh r0, [r5,#0x28]
	sub r0, #1
	strh r0, [r5,#0x28]
	bne locret_812BF0E
	mov r0, #0x37 
	ldrb r1, [r5,#0x10]
	cmp r1, #0x11
	beq loc_812BF06
	mov r0, #0x73 
	bl sound_play // () -> void
	mov r0, #0x36 
loc_812BF06:
	bl chatbox_runScript_803FD9C_on_eTextScript201BA20
	mov r0, #0xc
	strb r0, [r5,#0xc]
locret_812BF0E:
	pop {pc}
	thumb_func_end sub_812BEEC

	thumb_local_start
sub_812BF10:
	push {lr}
	mov r0, #3
	bl isJoystickIRQActive
	beq locret_812BF68
	ldrb r0, [r5,#0x10]
	cmp r0, #0x11
	beq loc_812BF42
	mov r0, #0x14
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq locret_812BF68
	bl sub_8149644
	bl sub_8149568
	b locret_812BF68
loc_812BF42:
	bl eStruct200BC30_getJumpOffset00
	cmp r0, #0
	beq loc_812BF64
	mov r0, #0x18
	strb r0, [r5,#2]
	mov r0, #0
	strb r0, [r5,#3]
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	bl sub_8149644
	bl sub_8149568
	b locret_812BF68
loc_812BF64:
	bl sub_8132614
locret_812BF68:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812BF10

	thumb_local_start
sub_812BF6C:
	push {lr}
	ldr r1, off_812BF7C // =off_812BF80 
	ldrb r0, [r5,#3]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812BF7C: .word off_812BF80
off_812BF80: .word sub_812BF88+1
	.word sub_812BFAC+1
	thumb_func_end sub_812BF6C

	thumb_local_start
sub_812BF88:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812BFA8
	ldr r0, off_812BFE4 // =unk_2037780 
	ldr r1, off_812BFE8 // =0x80 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl chatbox_8040818
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x11
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #4
	strb r0, [r5,#3]
locret_812BFA8:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812BF88

	thumb_local_start
sub_812BFAC:
	push {r4-r7,lr}
	mov r7, r5
	ldr r5, off_812BFE4 // =unk_2037780 
	bl HandleLibraryMenu8124B3C
	tst r0, r0
	beq locret_812BFE2
	mov r5, r7
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	// memBlock
	ldr r0, off_812BFEC // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812BFF0 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
locret_812BFE2:
	pop {r4-r7,pc}
off_812BFE4: .word unk_2037780
off_812BFE8: .word 0x80
off_812BFEC: .word unk_20251A0
off_812BFF0: .word byte_8129150
	thumb_func_end sub_812BFAC

	thumb_local_start
sub_812BFF4:
	push {lr}
	ldr r1, off_812C004 // =off_812C008 
	ldrb r0, [r5,#3]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812C004: .word off_812C008
off_812C008: .word sub_812C010+1
	.word sub_812C034+1
	thumb_func_end sub_812BFF4

	thumb_local_start
sub_812C010:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812C030
	ldr r0, off_812C06C // =unk_2037780 
	ldr r1, off_812C070 // =0x80 
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	bl chatbox_8040818
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x10
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #4
	strb r0, [r5,#3]
locret_812C030:
	pop {pc}
	.balign 4, 0x00
	thumb_func_end sub_812C010

	thumb_local_start
sub_812C034:
	push {r4-r7,lr}
	mov r7, r5
	ldr r5, off_812C06C // =unk_2037780 
	bl sub_81378B4
	tst r0, r0
	beq locret_812C06A
	mov r5, r7
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	// memBlock
	ldr r0, off_812C074 // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812C078 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
locret_812C06A:
	pop {r4-r7,pc}
off_812C06C: .word unk_2037780
off_812C070: .word 0x80
off_812C074: .word unk_20251A0
off_812C078: .word byte_8129150
	thumb_func_end sub_812C034

	thumb_local_start
sub_812C07C:
	push {lr}
	ldr r1, off_812C08C // =off_812C090 
	ldrb r0, [r5,#3]
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812C08C: .word off_812C090
off_812C090: .word sub_812C094+1
	thumb_func_end sub_812C07C

	thumb_local_start
sub_812C094:
	push {lr}
	bl IsPaletteFadeActive // () -> zf
	beq locret_812C0C2
	bl sub_8129248
	bl sub_812B530
	bl sub_8132614
	mov r0, #0x10
	strb r0, [r5,#3]
	mov r0, #0
	strb r0, [r5,#0x1e]
	// memBlock
	ldr r0, off_812C0C4 // =unk_20251A0 
	// size
	mov r1, #0x10
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	bl sub_812AFC8
	// a1
	ldr r0, off_812C0C8 // =byte_8129150
	bl sub_80465A0 // (void *a1) -> void
locret_812C0C2:
	pop {pc}
off_812C0C4: .word unk_20251A0
off_812C0C8: .word byte_8129150
	thumb_func_end sub_812C094

	thumb_local_start
sub_812C0CC:
	push {lr}
	ldrb r0, [r5,#3]
	ldr r1, off_812C0DC // =off_812C0E0 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	pop {pc}
	.balign 4, 0x00
off_812C0DC: .word off_812C0E0
off_812C0E0: .word sub_812C0EC+1
	.word sub_812C11C+1
	.word sub_812C140+1
	thumb_func_end sub_812C0CC

	thumb_local_start
sub_812C0EC:
	push {r7,lr}
	bl sub_81325CC
	mov r7, r0
	ldrb r1, [r5,#0x12]
	tst r1, r1
	beq loc_812C104
	ldr r0, off_812C18C // =unk_2034400 
	bl sub_812C21C
	ldr r1, off_812C184 // =0x30 
	b loc_812C10C
loc_812C104:
	ldr r0, off_812C18C // =unk_2034400 
	bl sub_812C194
	ldr r1, off_812C180 // =0x48 
loc_812C10C:
	strh r1, [r7,#8]
	ldr r1, dword_812C188 // =0x4321 
	strh r1, [r7,#0xa]
	mov r0, #4
	strb r0, [r5,#3]
	mov r0, #0
	str r0, [r5,#0x40]
	pop {r7,pc}
	thumb_func_end sub_812C0EC

	thumb_local_start
sub_812C11C:
	push {r7,lr}
	bl sub_81325CC
	mov r7, r0
	ldrb r1, [r5,#0x12]
	tst r1, r1
	beq loc_812C12E
	ldr r1, off_812C184 // =0x30 
	b loc_812C130
loc_812C12E:
	ldr r1, off_812C180 // =0x48 
loc_812C130:
	strh r1, [r7,#8]
	ldr r1, dword_812C188 // =0x4321 
	strh r1, [r7,#0xa]
	mov r0, #0
	str r0, [r5,#0x40]
	strh r0, [r5,#0x2e]
	pop {r7,pc}
	.byte 0, 0
	thumb_func_end sub_812C11C

	thumb_local_start
sub_812C140:
	push {lr}
	bl sub_803EF7C
	ldr r2, dword_812C190 // =0x8888 
	ldrh r1, [r5,#0x2e]
	add r2, r2, r1
	strh r2, [r0,#2]
	mov r1, #4
	add r1, r1, r0
	ldr r0, off_812C18C // =unk_2034400 
	ldr r2, [r5,#0x40]
	add r0, r0, r2
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	thumb_func_end sub_812C140

	thumb_local_start
sub_812C160:
	push {lr}
	ldrh r1, [r5,#0x2e]
	add r1, #1
	strh r1, [r5,#0x2e]
	ldr r2, off_812C180 // =0x48 
	ldrb r1, [r5,#0x12]
	tst r1, r1
	beq loc_812C172
	ldr r2, off_812C184 // =0x30 
loc_812C172:
	ldr r1, [r5,#0x40]
	add r1, #8
	cmp r1, r2
	bge locret_812C17C
	str r1, [r5,#0x40]
locret_812C17C:
	pop {pc}
	.byte 0, 0
off_812C180: .word 0x48
off_812C184: .word 0x30
dword_812C188: .word 0x4321
off_812C18C: .word unk_2034400
dword_812C190: .word 0x8888
	thumb_func_end sub_812C160

	thumb_local_start
sub_812C194:
	push {r4-r7,lr}
	mov r7, r0
	bl sub_800710A
	beq loc_812C1AE
	mov r0, r7
	ldr r1, off_812C218 // =0x40 
	add r1, #0x10
	mov r2, #0xf0
	and r1, r2
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {r4-r7,pc}
loc_812C1AE:
	mov r0, r7
	ldr r1, off_812C218 // =0x40 
	add r1, #0x10
	mov r2, #0xf0
	and r1, r2
	bl ZeroFillByByte // (void *mem, int size) -> void
	mov r0, #0x1e
	mov r1, #0x20 
	lsl r0, r0, #8
	orr r0, r1
	mov r3, r10
	ldr r3, [r3,#oToolkit_EventFlagsPtr]
	lsr r1, r0, #3
	add r3, r3, r1
	mov r0, #0x20 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr r0, r1
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr]
	lsr r1, r0, #3
	add r4, r4, r1
	sub sp, sp, #0xc
	str r4, [sp]
	mov r0, #0x22 
	mov r1, #0x20 
	lsl r0, r0, #8
	orr r0, r1
	mov r4, r10
	ldr r4, [r4,#oToolkit_EventFlagsPtr]
	lsr r1, r0, #3
	add r4, r4, r1
	str r4, [sp,#4]
	mov r2, #0
	mov r5, #0
loc_812C1F6:
	ldrb r0, [r3,r2]
	ldr r4, [sp]
	ldrb r4, [r4,r2]
	orr r0, r4
	ldr r4, [sp,#4]
	ldrb r4, [r4,r2]
	orr r0, r4
	strb r0, [r7,r2]
	add r5, r5, r0
	add r2, #1
	ldr r1, off_812C218 // =0x40 
	cmp r2, r1
	blt loc_812C1F6
	str r5, [r7,r2]
	add sp, sp, #0xc
	pop {r4-r7,pc}
	.balign 4, 0x00
off_812C218: .word 0x40
	thumb_func_end sub_812C194

	thumb_local_start
sub_812C21C:
	push {r4-r7,lr}
	mov r7, r0
	ldr r0, off_812C248 // =unk_20018C0 
	mov r1, r7
	ldr r2, off_812C244 // =0x28 
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	mov r4, #0
	mov r1, #0
loc_812C22E:
	ldrb r0, [r7,r1]
	add r4, r4, r0
	add r1, #1
	cmp r1, #0x28 
	blt loc_812C22E
	mov r1, #0x2c 
	str r4, [r7,r1]
	add r1, #4
	mov r4, #1
	str r4, [r7,r1]
	pop {r4-r7,pc}
off_812C244: .word 0x28
off_812C248: .word unk_20018C0
	thumb_func_end sub_812C21C

	thumb_local_start
sub_812C24C:
	mov r0, #0x34 
	strb r0, [r5,#1]
	mov r0, #0
	strb r0, [r5,#2]
	strb r0, [r5,#3]
	// <endpool> <endfile>
	mov pc, lr
	thumb_func_end sub_812C24C

/*For debugging purposes, connect comment at any range!*/
